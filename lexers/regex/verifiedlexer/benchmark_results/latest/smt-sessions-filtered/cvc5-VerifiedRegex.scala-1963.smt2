; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!99500 () Bool)

(assert start!99500)

(declare-fun b!1146988 () Bool)

(assert (=> b!1146988 true))

(declare-fun res!515915 () Bool)

(declare-fun e!733206 () Bool)

(assert (=> start!99500 (=> (not res!515915) (not e!733206))))

(declare-datatypes ((List!11081 0))(
  ( (Nil!11057) (Cons!11057 (h!16458 (_ BitVec 16)) (t!108113 List!11081)) )
))
(declare-datatypes ((TokenValue!1972 0))(
  ( (FloatLiteralValue!3944 (text!14249 List!11081)) (TokenValueExt!1971 (__x!7659 Int)) (Broken!9860 (value!62293 List!11081)) (Object!1995) (End!1972) (Def!1972) (Underscore!1972) (Match!1972) (Else!1972) (Error!1972) (Case!1972) (If!1972) (Extends!1972) (Abstract!1972) (Class!1972) (Val!1972) (DelimiterValue!3944 (del!2032 List!11081)) (KeywordValue!1978 (value!62294 List!11081)) (CommentValue!3944 (value!62295 List!11081)) (WhitespaceValue!3944 (value!62296 List!11081)) (IndentationValue!1972 (value!62297 List!11081)) (String!13449) (Int32!1972) (Broken!9861 (value!62298 List!11081)) (Boolean!1973) (Unit!17025) (OperatorValue!1975 (op!2032 List!11081)) (IdentifierValue!3944 (value!62299 List!11081)) (IdentifierValue!3945 (value!62300 List!11081)) (WhitespaceValue!3945 (value!62301 List!11081)) (True!3944) (False!3944) (Broken!9862 (value!62302 List!11081)) (Broken!9863 (value!62303 List!11081)) (True!3945) (RightBrace!1972) (RightBracket!1972) (Colon!1972) (Null!1972) (Comma!1972) (LeftBracket!1972) (False!3945) (LeftBrace!1972) (ImaginaryLiteralValue!1972 (text!14250 List!11081)) (StringLiteralValue!5916 (value!62304 List!11081)) (EOFValue!1972 (value!62305 List!11081)) (IdentValue!1972 (value!62306 List!11081)) (DelimiterValue!3945 (value!62307 List!11081)) (DedentValue!1972 (value!62308 List!11081)) (NewLineValue!1972 (value!62309 List!11081)) (IntegerValue!5916 (value!62310 (_ BitVec 32)) (text!14251 List!11081)) (IntegerValue!5917 (value!62311 Int) (text!14252 List!11081)) (Times!1972) (Or!1972) (Equal!1972) (Minus!1972) (Broken!9864 (value!62312 List!11081)) (And!1972) (Div!1972) (LessEqual!1972) (Mod!1972) (Concat!5148) (Not!1972) (Plus!1972) (SpaceValue!1972 (value!62313 List!11081)) (IntegerValue!5918 (value!62314 Int) (text!14253 List!11081)) (StringLiteralValue!5917 (text!14254 List!11081)) (FloatLiteralValue!3945 (text!14255 List!11081)) (BytesLiteralValue!1972 (value!62315 List!11081)) (CommentValue!3945 (value!62316 List!11081)) (StringLiteralValue!5918 (value!62317 List!11081)) (ErrorTokenValue!1972 (msg!2033 List!11081)) )
))
(declare-datatypes ((Regex!3176 0))(
  ( (ElementMatch!3176 (c!192590 (_ BitVec 16))) (Concat!5149 (regOne!6864 Regex!3176) (regTwo!6864 Regex!3176)) (EmptyExpr!3176) (Star!3176 (reg!3505 Regex!3176)) (EmptyLang!3176) (Union!3176 (regOne!6865 Regex!3176) (regTwo!6865 Regex!3176)) )
))
(declare-datatypes ((String!13450 0))(
  ( (String!13451 (value!62318 String)) )
))
(declare-datatypes ((IArray!7121 0))(
  ( (IArray!7122 (innerList!3618 List!11081)) )
))
(declare-datatypes ((Conc!3558 0))(
  ( (Node!3558 (left!9619 Conc!3558) (right!9949 Conc!3558) (csize!7346 Int) (cheight!3769 Int)) (Leaf!5522 (xs!6259 IArray!7121) (csize!7347 Int)) (Empty!3558) )
))
(declare-datatypes ((BalanceConc!7138 0))(
  ( (BalanceConc!7139 (c!192591 Conc!3558)) )
))
(declare-datatypes ((TokenValueInjection!3644 0))(
  ( (TokenValueInjection!3645 (toValue!3003 Int) (toChars!2862 Int)) )
))
(declare-datatypes ((Rule!3612 0))(
  ( (Rule!3613 (regex!1906 Regex!3176) (tag!2168 String!13450) (isSeparator!1906 Bool) (transformation!1906 TokenValueInjection!3644)) )
))
(declare-datatypes ((Token!3474 0))(
  ( (Token!3475 (value!62319 TokenValue!1972) (rule!3327 Rule!3612) (size!8688 Int) (originalCharacters!2460 List!11081)) )
))
(declare-datatypes ((List!11082 0))(
  ( (Nil!11058) (Cons!11058 (h!16459 Token!3474) (t!108114 List!11082)) )
))
(declare-datatypes ((IArray!7123 0))(
  ( (IArray!7124 (innerList!3619 List!11082)) )
))
(declare-datatypes ((Conc!3559 0))(
  ( (Node!3559 (left!9620 Conc!3559) (right!9950 Conc!3559) (csize!7348 Int) (cheight!3770 Int)) (Leaf!5523 (xs!6260 IArray!7123) (csize!7349 Int)) (Empty!3559) )
))
(declare-datatypes ((List!11083 0))(
  ( (Nil!11059) (Cons!11059 (h!16460 Rule!3612) (t!108115 List!11083)) )
))
(declare-datatypes ((BalanceConc!7140 0))(
  ( (BalanceConc!7141 (c!192592 Conc!3559)) )
))
(declare-datatypes ((PrintableTokens!498 0))(
  ( (PrintableTokens!499 (rules!9333 List!11083) (tokens!1495 BalanceConc!7140)) )
))
(declare-fun pt!21 () PrintableTokens!498)

(declare-fun size!108 () Int)

(declare-fun size!8689 (PrintableTokens!498) Int)

(assert (=> start!99500 (= res!515915 (= (size!8689 pt!21) size!108))))

(assert (=> start!99500 e!733206))

(declare-fun e!733202 () Bool)

(declare-fun inv!14450 (PrintableTokens!498) Bool)

(assert (=> start!99500 (and (inv!14450 pt!21) e!733202)))

(assert (=> start!99500 true))

(declare-datatypes ((List!11084 0))(
  ( (Nil!11060) (Cons!11060 (h!16461 Int) (t!108116 List!11084)) )
))
(declare-datatypes ((IArray!7125 0))(
  ( (IArray!7126 (innerList!3620 List!11084)) )
))
(declare-datatypes ((Conc!3560 0))(
  ( (Node!3560 (left!9621 Conc!3560) (right!9951 Conc!3560) (csize!7350 Int) (cheight!3771 Int)) (Leaf!5524 (xs!6261 IArray!7125) (csize!7351 Int)) (Empty!3560) )
))
(declare-datatypes ((BalanceConc!7142 0))(
  ( (BalanceConc!7143 (c!192593 Conc!3560)) )
))
(declare-fun indices!2 () BalanceConc!7142)

(declare-fun e!733204 () Bool)

(declare-fun inv!14451 (BalanceConc!7142) Bool)

(assert (=> start!99500 (and (inv!14451 indices!2) e!733204)))

(declare-datatypes ((List!11085 0))(
  ( (Nil!11061) (Cons!11061 (h!16462 PrintableTokens!498) (t!108117 List!11085)) )
))
(declare-datatypes ((IArray!7127 0))(
  ( (IArray!7128 (innerList!3621 List!11085)) )
))
(declare-datatypes ((Conc!3561 0))(
  ( (Node!3561 (left!9622 Conc!3561) (right!9952 Conc!3561) (csize!7352 Int) (cheight!3772 Int)) (Leaf!5525 (xs!6262 IArray!7127) (csize!7353 Int)) (Empty!3561) )
))
(declare-datatypes ((BalanceConc!7144 0))(
  ( (BalanceConc!7145 (c!192594 Conc!3561)) )
))
(declare-fun acc!225 () BalanceConc!7144)

(declare-fun e!733205 () Bool)

(declare-fun inv!14452 (BalanceConc!7144) Bool)

(assert (=> start!99500 (and (inv!14452 acc!225) e!733205)))

(declare-fun b!1146986 () Bool)

(declare-fun res!515916 () Bool)

(assert (=> b!1146986 (=> (not res!515916) (not e!733206))))

(declare-fun lambda!46161 () Int)

(declare-fun forall!2766 (BalanceConc!7144 Int) Bool)

(assert (=> b!1146986 (= res!515916 (forall!2766 acc!225 lambda!46161))))

(declare-fun b!1146987 () Bool)

(declare-fun res!515913 () Bool)

(assert (=> b!1146987 (=> (not res!515913) (not e!733206))))

(declare-fun usesJsonRules!0 (PrintableTokens!498) Bool)

(assert (=> b!1146987 (= res!515913 (usesJsonRules!0 pt!21))))

(declare-fun res!515914 () Bool)

(assert (=> b!1146988 (=> (not res!515914) (not e!733206))))

(declare-fun lambda!46160 () Int)

(declare-fun forall!2767 (BalanceConc!7142 Int) Bool)

(assert (=> b!1146988 (= res!515914 (forall!2767 indices!2 lambda!46160))))

(declare-fun b!1146989 () Bool)

(declare-fun tp!332088 () Bool)

(declare-fun inv!14453 (Conc!3560) Bool)

(assert (=> b!1146989 (= e!733204 (and (inv!14453 (c!192593 indices!2)) tp!332088))))

(declare-fun b!1146990 () Bool)

(declare-fun tp!332089 () Bool)

(declare-fun e!733203 () Bool)

(declare-fun inv!14454 (BalanceConc!7140) Bool)

(assert (=> b!1146990 (= e!733202 (and tp!332089 (inv!14454 (tokens!1495 pt!21)) e!733203))))

(declare-fun b!1146991 () Bool)

(declare-fun tp!332090 () Bool)

(declare-fun inv!14455 (Conc!3559) Bool)

(assert (=> b!1146991 (= e!733203 (and (inv!14455 (c!192592 (tokens!1495 pt!21))) tp!332090))))

(declare-fun b!1146992 () Bool)

(declare-fun tp!332087 () Bool)

(declare-fun inv!14456 (Conc!3561) Bool)

(assert (=> b!1146992 (= e!733205 (and (inv!14456 (c!192594 acc!225)) tp!332087))))

(declare-fun b!1146993 () Bool)

(declare-fun size!8690 (BalanceConc!7142) Int)

(assert (=> b!1146993 (= e!733206 (< (size!8690 indices!2) 0))))

(assert (= (and start!99500 res!515915) b!1146988))

(assert (= (and b!1146988 res!515914) b!1146987))

(assert (= (and b!1146987 res!515913) b!1146986))

(assert (= (and b!1146986 res!515916) b!1146993))

(assert (= b!1146990 b!1146991))

(assert (= start!99500 b!1146990))

(assert (= start!99500 b!1146989))

(assert (= start!99500 b!1146992))

(declare-fun m!1308767 () Bool)

(assert (=> start!99500 m!1308767))

(declare-fun m!1308769 () Bool)

(assert (=> start!99500 m!1308769))

(declare-fun m!1308771 () Bool)

(assert (=> start!99500 m!1308771))

(declare-fun m!1308773 () Bool)

(assert (=> start!99500 m!1308773))

(declare-fun m!1308775 () Bool)

(assert (=> b!1146988 m!1308775))

(declare-fun m!1308777 () Bool)

(assert (=> b!1146993 m!1308777))

(declare-fun m!1308779 () Bool)

(assert (=> b!1146989 m!1308779))

(declare-fun m!1308781 () Bool)

(assert (=> b!1146991 m!1308781))

(declare-fun m!1308783 () Bool)

(assert (=> b!1146992 m!1308783))

(declare-fun m!1308785 () Bool)

(assert (=> b!1146990 m!1308785))

(declare-fun m!1308787 () Bool)

(assert (=> b!1146986 m!1308787))

(declare-fun m!1308789 () Bool)

(assert (=> b!1146987 m!1308789))

(push 1)

(assert (not start!99500))

(assert (not b!1146989))

(assert (not b!1146992))

(assert (not b!1146990))

(assert (not b!1146993))

(assert (not b!1146988))

(assert (not b!1146986))

(assert (not b!1146991))

(assert (not b!1146987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!326518 () Bool)

(declare-fun isBalanced!999 (Conc!3559) Bool)

(assert (=> d!326518 (= (inv!14454 (tokens!1495 pt!21)) (isBalanced!999 (c!192592 (tokens!1495 pt!21))))))

(declare-fun bs!281214 () Bool)

(assert (= bs!281214 d!326518))

(declare-fun m!1308817 () Bool)

(assert (=> bs!281214 m!1308817))

(assert (=> b!1146990 d!326518))

(declare-fun d!326522 () Bool)

(declare-fun c!192602 () Bool)

(assert (=> d!326522 (= c!192602 (is-Node!3560 (c!192593 indices!2)))))

(declare-fun e!733226 () Bool)

(assert (=> d!326522 (= (inv!14453 (c!192593 indices!2)) e!733226)))

(declare-fun b!1147031 () Bool)

(declare-fun inv!14464 (Conc!3560) Bool)

(assert (=> b!1147031 (= e!733226 (inv!14464 (c!192593 indices!2)))))

(declare-fun b!1147032 () Bool)

(declare-fun e!733227 () Bool)

(assert (=> b!1147032 (= e!733226 e!733227)))

(declare-fun res!515931 () Bool)

(assert (=> b!1147032 (= res!515931 (not (is-Leaf!5524 (c!192593 indices!2))))))

(assert (=> b!1147032 (=> res!515931 e!733227)))

(declare-fun b!1147033 () Bool)

(declare-fun inv!14465 (Conc!3560) Bool)

(assert (=> b!1147033 (= e!733227 (inv!14465 (c!192593 indices!2)))))

(assert (= (and d!326522 c!192602) b!1147031))

(assert (= (and d!326522 (not c!192602)) b!1147032))

(assert (= (and b!1147032 (not res!515931)) b!1147033))

(declare-fun m!1308819 () Bool)

(assert (=> b!1147031 m!1308819))

(declare-fun m!1308821 () Bool)

(assert (=> b!1147033 m!1308821))

(assert (=> b!1146989 d!326522))

(declare-fun d!326524 () Bool)

(declare-fun lt!389000 () Bool)

(declare-fun forall!2770 (List!11084 Int) Bool)

(declare-fun list!4063 (BalanceConc!7142) List!11084)

(assert (=> d!326524 (= lt!389000 (forall!2770 (list!4063 indices!2) lambda!46160))))

(declare-fun forall!2771 (Conc!3560 Int) Bool)

(assert (=> d!326524 (= lt!389000 (forall!2771 (c!192593 indices!2) lambda!46160))))

(assert (=> d!326524 (= (forall!2767 indices!2 lambda!46160) lt!389000)))

(declare-fun bs!281215 () Bool)

(assert (= bs!281215 d!326524))

(declare-fun m!1308827 () Bool)

(assert (=> bs!281215 m!1308827))

(assert (=> bs!281215 m!1308827))

(declare-fun m!1308829 () Bool)

(assert (=> bs!281215 m!1308829))

(declare-fun m!1308831 () Bool)

(assert (=> bs!281215 m!1308831))

(assert (=> b!1146988 d!326524))

(declare-fun d!326528 () Bool)

(declare-fun lt!389003 () Int)

(declare-fun size!8694 (List!11084) Int)

(assert (=> d!326528 (= lt!389003 (size!8694 (list!4063 indices!2)))))

(declare-fun size!8695 (Conc!3560) Int)

(assert (=> d!326528 (= lt!389003 (size!8695 (c!192593 indices!2)))))

(assert (=> d!326528 (= (size!8690 indices!2) lt!389003)))

(declare-fun bs!281216 () Bool)

(assert (= bs!281216 d!326528))

(assert (=> bs!281216 m!1308827))

(assert (=> bs!281216 m!1308827))

(declare-fun m!1308833 () Bool)

(assert (=> bs!281216 m!1308833))

(declare-fun m!1308835 () Bool)

(assert (=> bs!281216 m!1308835))

(assert (=> b!1146993 d!326528))

(declare-fun d!326530 () Bool)

(declare-datatypes ((JsonLexer!328 0))(
  ( (JsonLexer!329) )
))
(declare-fun rules!109 (JsonLexer!328) List!11083)

(assert (=> d!326530 (= (usesJsonRules!0 pt!21) (= (rules!9333 pt!21) (rules!109 JsonLexer!329)))))

(declare-fun bs!281219 () Bool)

(assert (= bs!281219 d!326530))

(declare-fun m!1308845 () Bool)

(assert (=> bs!281219 m!1308845))

(assert (=> b!1146987 d!326530))

(declare-fun d!326536 () Bool)

(declare-fun size!8696 (BalanceConc!7140) Int)

(assert (=> d!326536 (= (size!8689 pt!21) (size!8696 (tokens!1495 pt!21)))))

(declare-fun bs!281220 () Bool)

(assert (= bs!281220 d!326536))

(declare-fun m!1308847 () Bool)

(assert (=> bs!281220 m!1308847))

(assert (=> start!99500 d!326536))

(declare-fun d!326538 () Bool)

(declare-fun res!515941 () Bool)

(declare-fun e!733236 () Bool)

(assert (=> d!326538 (=> (not res!515941) (not e!733236))))

(declare-fun isEmpty!6867 (List!11083) Bool)

(assert (=> d!326538 (= res!515941 (not (isEmpty!6867 (rules!9333 pt!21))))))

(assert (=> d!326538 (= (inv!14450 pt!21) e!733236)))

(declare-fun b!1147046 () Bool)

(declare-fun res!515942 () Bool)

(assert (=> b!1147046 (=> (not res!515942) (not e!733236))))

(declare-datatypes ((LexerInterface!1605 0))(
  ( (LexerInterfaceExt!1602 (__x!7661 Int)) (Lexer!1603) )
))
(declare-fun rulesInvariant!1479 (LexerInterface!1605 List!11083) Bool)

(assert (=> b!1147046 (= res!515942 (rulesInvariant!1479 Lexer!1603 (rules!9333 pt!21)))))

(declare-fun b!1147047 () Bool)

(declare-fun res!515943 () Bool)

(assert (=> b!1147047 (=> (not res!515943) (not e!733236))))

(declare-fun rulesProduceEachTokenIndividually!647 (LexerInterface!1605 List!11083 BalanceConc!7140) Bool)

(assert (=> b!1147047 (= res!515943 (rulesProduceEachTokenIndividually!647 Lexer!1603 (rules!9333 pt!21) (tokens!1495 pt!21)))))

(declare-fun b!1147048 () Bool)

(declare-fun separableTokens!74 (LexerInterface!1605 BalanceConc!7140 List!11083) Bool)

(assert (=> b!1147048 (= e!733236 (separableTokens!74 Lexer!1603 (tokens!1495 pt!21) (rules!9333 pt!21)))))

(assert (= (and d!326538 res!515941) b!1147046))

(assert (= (and b!1147046 res!515942) b!1147047))

(assert (= (and b!1147047 res!515943) b!1147048))

(declare-fun m!1308849 () Bool)

(assert (=> d!326538 m!1308849))

(declare-fun m!1308851 () Bool)

(assert (=> b!1147046 m!1308851))

(declare-fun m!1308853 () Bool)

(assert (=> b!1147047 m!1308853))

(declare-fun m!1308855 () Bool)

(assert (=> b!1147048 m!1308855))

(assert (=> start!99500 d!326538))

(declare-fun d!326540 () Bool)

(declare-fun isBalanced!1000 (Conc!3560) Bool)

(assert (=> d!326540 (= (inv!14451 indices!2) (isBalanced!1000 (c!192593 indices!2)))))

(declare-fun bs!281221 () Bool)

(assert (= bs!281221 d!326540))

(declare-fun m!1308857 () Bool)

(assert (=> bs!281221 m!1308857))

(assert (=> start!99500 d!326540))

(declare-fun d!326542 () Bool)

(declare-fun isBalanced!1001 (Conc!3561) Bool)

(assert (=> d!326542 (= (inv!14452 acc!225) (isBalanced!1001 (c!192594 acc!225)))))

(declare-fun bs!281222 () Bool)

(assert (= bs!281222 d!326542))

(declare-fun m!1308859 () Bool)

(assert (=> bs!281222 m!1308859))

(assert (=> start!99500 d!326542))

(declare-fun d!326544 () Bool)

(declare-fun c!192608 () Bool)

(assert (=> d!326544 (= c!192608 (is-Node!3561 (c!192594 acc!225)))))

(declare-fun e!733241 () Bool)

(assert (=> d!326544 (= (inv!14456 (c!192594 acc!225)) e!733241)))

(declare-fun b!1147055 () Bool)

(declare-fun inv!14466 (Conc!3561) Bool)

(assert (=> b!1147055 (= e!733241 (inv!14466 (c!192594 acc!225)))))

(declare-fun b!1147056 () Bool)

(declare-fun e!733242 () Bool)

(assert (=> b!1147056 (= e!733241 e!733242)))

(declare-fun res!515946 () Bool)

(assert (=> b!1147056 (= res!515946 (not (is-Leaf!5525 (c!192594 acc!225))))))

(assert (=> b!1147056 (=> res!515946 e!733242)))

(declare-fun b!1147057 () Bool)

(declare-fun inv!14467 (Conc!3561) Bool)

(assert (=> b!1147057 (= e!733242 (inv!14467 (c!192594 acc!225)))))

(assert (= (and d!326544 c!192608) b!1147055))

(assert (= (and d!326544 (not c!192608)) b!1147056))

(assert (= (and b!1147056 (not res!515946)) b!1147057))

(declare-fun m!1308861 () Bool)

(assert (=> b!1147055 m!1308861))

(declare-fun m!1308863 () Bool)

(assert (=> b!1147057 m!1308863))

(assert (=> b!1146992 d!326544))

(declare-fun d!326546 () Bool)

(declare-fun lt!389009 () Bool)

(declare-fun forall!2772 (List!11085 Int) Bool)

(declare-fun list!4064 (BalanceConc!7144) List!11085)

(assert (=> d!326546 (= lt!389009 (forall!2772 (list!4064 acc!225) lambda!46161))))

(declare-fun forall!2773 (Conc!3561 Int) Bool)

(assert (=> d!326546 (= lt!389009 (forall!2773 (c!192594 acc!225) lambda!46161))))

(assert (=> d!326546 (= (forall!2766 acc!225 lambda!46161) lt!389009)))

(declare-fun bs!281223 () Bool)

(assert (= bs!281223 d!326546))

(declare-fun m!1308865 () Bool)

(assert (=> bs!281223 m!1308865))

(assert (=> bs!281223 m!1308865))

(declare-fun m!1308867 () Bool)

(assert (=> bs!281223 m!1308867))

(declare-fun m!1308869 () Bool)

(assert (=> bs!281223 m!1308869))

(assert (=> b!1146986 d!326546))

(declare-fun d!326548 () Bool)

(declare-fun c!192611 () Bool)

(assert (=> d!326548 (= c!192611 (is-Node!3559 (c!192592 (tokens!1495 pt!21))))))

(declare-fun e!733247 () Bool)

(assert (=> d!326548 (= (inv!14455 (c!192592 (tokens!1495 pt!21))) e!733247)))

(declare-fun b!1147064 () Bool)

(declare-fun inv!14468 (Conc!3559) Bool)

(assert (=> b!1147064 (= e!733247 (inv!14468 (c!192592 (tokens!1495 pt!21))))))

(declare-fun b!1147065 () Bool)

(declare-fun e!733248 () Bool)

(assert (=> b!1147065 (= e!733247 e!733248)))

(declare-fun res!515949 () Bool)

(assert (=> b!1147065 (= res!515949 (not (is-Leaf!5523 (c!192592 (tokens!1495 pt!21)))))))

(assert (=> b!1147065 (=> res!515949 e!733248)))

(declare-fun b!1147066 () Bool)

(declare-fun inv!14469 (Conc!3559) Bool)

(assert (=> b!1147066 (= e!733248 (inv!14469 (c!192592 (tokens!1495 pt!21))))))

(assert (= (and d!326548 c!192611) b!1147064))

(assert (= (and d!326548 (not c!192611)) b!1147065))

(assert (= (and b!1147065 (not res!515949)) b!1147066))

(declare-fun m!1308871 () Bool)

(assert (=> b!1147064 m!1308871))

(declare-fun m!1308873 () Bool)

(assert (=> b!1147066 m!1308873))

(assert (=> b!1146991 d!326548))

(declare-fun b!1147077 () Bool)

(declare-fun b_free!27521 () Bool)

(declare-fun b_next!28225 () Bool)

(assert (=> b!1147077 (= b_free!27521 (not b_next!28225))))

(declare-fun tp!332111 () Bool)

(declare-fun b_and!80309 () Bool)

(assert (=> b!1147077 (= tp!332111 b_and!80309)))

(declare-fun b_free!27523 () Bool)

(declare-fun b_next!28227 () Bool)

(assert (=> b!1147077 (= b_free!27523 (not b_next!28227))))

(declare-fun tp!332110 () Bool)

(declare-fun b_and!80311 () Bool)

(assert (=> b!1147077 (= tp!332110 b_and!80311)))

(declare-fun e!733257 () Bool)

(assert (=> b!1147077 (= e!733257 (and tp!332111 tp!332110))))

(declare-fun b!1147076 () Bool)

(declare-fun e!733259 () Bool)

(declare-fun inv!14447 (String!13450) Bool)

(declare-fun inv!14470 (TokenValueInjection!3644) Bool)

(assert (=> b!1147076 (= e!733259 (and (inv!14447 (tag!2168 (h!16460 (rules!9333 pt!21)))) (inv!14470 (transformation!1906 (h!16460 (rules!9333 pt!21)))) e!733257))))

(declare-fun b!1147075 () Bool)

(declare-fun e!733260 () Bool)

(declare-fun tp!332109 () Bool)

(assert (=> b!1147075 (= e!733260 (and e!733259 tp!332109))))

(assert (=> b!1146990 (= tp!332089 e!733260)))

(assert (= b!1147076 b!1147077))

(assert (= b!1147075 b!1147076))

(assert (= (and b!1146990 (is-Cons!11059 (rules!9333 pt!21))) b!1147075))

(declare-fun m!1308875 () Bool)

(assert (=> b!1147076 m!1308875))

(declare-fun m!1308877 () Bool)

(assert (=> b!1147076 m!1308877))

(declare-fun e!733265 () Bool)

(declare-fun b!1147084 () Bool)

(declare-fun tp!332117 () Bool)

(declare-fun tp!332116 () Bool)

(assert (=> b!1147084 (= e!733265 (and (inv!14453 (left!9621 (c!192593 indices!2))) tp!332116 (inv!14453 (right!9951 (c!192593 indices!2))) tp!332117))))

(declare-fun b!1147085 () Bool)

(declare-fun inv!14471 (IArray!7125) Bool)

(assert (=> b!1147085 (= e!733265 (inv!14471 (xs!6261 (c!192593 indices!2))))))

(assert (=> b!1146989 (= tp!332088 (and (inv!14453 (c!192593 indices!2)) e!733265))))

(assert (= (and b!1146989 (is-Node!3560 (c!192593 indices!2))) b!1147084))

(assert (= (and b!1146989 (is-Leaf!5524 (c!192593 indices!2))) b!1147085))

(declare-fun m!1308879 () Bool)

(assert (=> b!1147084 m!1308879))

(declare-fun m!1308881 () Bool)

(assert (=> b!1147084 m!1308881))

(declare-fun m!1308883 () Bool)

(assert (=> b!1147085 m!1308883))

(assert (=> b!1146989 m!1308779))

(declare-fun e!733272 () Bool)

(declare-fun tp!332125 () Bool)

(declare-fun b!1147094 () Bool)

(declare-fun tp!332126 () Bool)

(assert (=> b!1147094 (= e!733272 (and (inv!14456 (left!9622 (c!192594 acc!225))) tp!332125 (inv!14456 (right!9952 (c!192594 acc!225))) tp!332126))))

(declare-fun b!1147096 () Bool)

(declare-fun e!733271 () Bool)

(declare-fun tp!332124 () Bool)

(assert (=> b!1147096 (= e!733271 tp!332124)))

(declare-fun b!1147095 () Bool)

(declare-fun inv!14472 (IArray!7127) Bool)

(assert (=> b!1147095 (= e!733272 (and (inv!14472 (xs!6262 (c!192594 acc!225))) e!733271))))

(assert (=> b!1146992 (= tp!332087 (and (inv!14456 (c!192594 acc!225)) e!733272))))

(assert (= (and b!1146992 (is-Node!3561 (c!192594 acc!225))) b!1147094))

(assert (= b!1147095 b!1147096))

(assert (= (and b!1146992 (is-Leaf!5525 (c!192594 acc!225))) b!1147095))

(declare-fun m!1308885 () Bool)

(assert (=> b!1147094 m!1308885))

(declare-fun m!1308887 () Bool)

(assert (=> b!1147094 m!1308887))

(declare-fun m!1308889 () Bool)

(assert (=> b!1147095 m!1308889))

(assert (=> b!1146992 m!1308783))

(declare-fun tp!332135 () Bool)

(declare-fun b!1147105 () Bool)

(declare-fun e!733277 () Bool)

(declare-fun tp!332134 () Bool)

(assert (=> b!1147105 (= e!733277 (and (inv!14455 (left!9620 (c!192592 (tokens!1495 pt!21)))) tp!332135 (inv!14455 (right!9950 (c!192592 (tokens!1495 pt!21)))) tp!332134))))

(declare-fun b!1147107 () Bool)

(declare-fun e!733278 () Bool)

(declare-fun tp!332133 () Bool)

(assert (=> b!1147107 (= e!733278 tp!332133)))

(declare-fun b!1147106 () Bool)

(declare-fun inv!14473 (IArray!7123) Bool)

(assert (=> b!1147106 (= e!733277 (and (inv!14473 (xs!6260 (c!192592 (tokens!1495 pt!21)))) e!733278))))

(assert (=> b!1146991 (= tp!332090 (and (inv!14455 (c!192592 (tokens!1495 pt!21))) e!733277))))

(assert (= (and b!1146991 (is-Node!3559 (c!192592 (tokens!1495 pt!21)))) b!1147105))

(assert (= b!1147106 b!1147107))

(assert (= (and b!1146991 (is-Leaf!5523 (c!192592 (tokens!1495 pt!21)))) b!1147106))

(declare-fun m!1308891 () Bool)

(assert (=> b!1147105 m!1308891))

(declare-fun m!1308893 () Bool)

(assert (=> b!1147105 m!1308893))

(declare-fun m!1308895 () Bool)

(assert (=> b!1147106 m!1308895))

(assert (=> b!1146991 m!1308781))

(push 1)

(assert (not b!1146992))

(assert (not b!1147095))

(assert (not d!326538))

(assert (not d!326542))

(assert (not b!1147075))

(assert (not b!1147084))

(assert (not b!1147046))

(assert (not b!1147107))

(assert (not b!1147055))

(assert (not b!1147096))

(assert (not b!1146991))

(assert b_and!80311)

(assert (not d!326546))

(assert (not b!1147094))

(assert (not d!326518))

(assert (not b!1147033))

(assert (not b!1147048))

(assert (not b!1146989))

(assert (not b!1147047))

(assert (not b!1147064))

(assert b_and!80309)

(assert (not b!1147106))

(assert (not b!1147031))

(assert (not d!326536))

(assert (not d!326528))

(assert (not b_next!28225))

(assert (not b!1147105))

(assert (not b!1147057))

(assert (not d!326540))

(assert (not b!1147085))

(assert (not d!326524))

(assert (not b!1147066))

(assert (not b_next!28227))

(assert (not d!326530))

(assert (not b!1147076))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80311)

(assert b_and!80309)

(assert (not b_next!28225))

(assert (not b_next!28227))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!326558 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!34 (LexerInterface!1605 BalanceConc!7140 Int List!11083) Bool)

(assert (=> d!326558 (= (separableTokens!74 Lexer!1603 (tokens!1495 pt!21) (rules!9333 pt!21)) (tokensListTwoByTwoPredicateSeparable!34 Lexer!1603 (tokens!1495 pt!21) 0 (rules!9333 pt!21)))))

(declare-fun bs!281229 () Bool)

(assert (= bs!281229 d!326558))

(declare-fun m!1308951 () Bool)

(assert (=> bs!281229 m!1308951))

(assert (=> b!1147048 d!326558))

(declare-fun b!1147231 () Bool)

(declare-fun e!733353 () Bool)

(assert (=> b!1147231 (= e!733353 true)))

(declare-fun b!1147230 () Bool)

(declare-fun e!733352 () Bool)

(assert (=> b!1147230 (= e!733352 e!733353)))

(declare-fun b!1147229 () Bool)

(declare-fun e!733351 () Bool)

(assert (=> b!1147229 (= e!733351 e!733352)))

(declare-fun d!326566 () Bool)

(assert (=> d!326566 e!733351))

(assert (= b!1147230 b!1147231))

(assert (= b!1147229 b!1147230))

(assert (= (and d!326566 (is-Cons!11059 (rules!9333 pt!21))) b!1147229))

(declare-fun order!6763 () Int)

(declare-fun order!6765 () Int)

(declare-fun lambda!46172 () Int)

(declare-fun dynLambda!4893 (Int Int) Int)

(declare-fun dynLambda!4894 (Int Int) Int)

(assert (=> b!1147231 (< (dynLambda!4893 order!6763 (toValue!3003 (transformation!1906 (h!16460 (rules!9333 pt!21))))) (dynLambda!4894 order!6765 lambda!46172))))

(declare-fun order!6767 () Int)

(declare-fun dynLambda!4895 (Int Int) Int)

(assert (=> b!1147231 (< (dynLambda!4895 order!6767 (toChars!2862 (transformation!1906 (h!16460 (rules!9333 pt!21))))) (dynLambda!4894 order!6765 lambda!46172))))

(assert (=> d!326566 true))

(declare-fun e!733344 () Bool)

(assert (=> d!326566 e!733344))

(declare-fun res!516009 () Bool)

(assert (=> d!326566 (=> (not res!516009) (not e!733344))))

(declare-fun lt!389021 () Bool)

(declare-fun forall!2778 (List!11082 Int) Bool)

(declare-fun list!4067 (BalanceConc!7140) List!11082)

(assert (=> d!326566 (= res!516009 (= lt!389021 (forall!2778 (list!4067 (tokens!1495 pt!21)) lambda!46172)))))

(declare-fun forall!2779 (BalanceConc!7140 Int) Bool)

(assert (=> d!326566 (= lt!389021 (forall!2779 (tokens!1495 pt!21) lambda!46172))))

(assert (=> d!326566 (not (isEmpty!6867 (rules!9333 pt!21)))))

(assert (=> d!326566 (= (rulesProduceEachTokenIndividually!647 Lexer!1603 (rules!9333 pt!21) (tokens!1495 pt!21)) lt!389021)))

(declare-fun b!1147220 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!480 (LexerInterface!1605 List!11083 List!11082) Bool)

(assert (=> b!1147220 (= e!733344 (= lt!389021 (rulesProduceEachTokenIndividuallyList!480 Lexer!1603 (rules!9333 pt!21) (list!4067 (tokens!1495 pt!21)))))))

(assert (= (and d!326566 res!516009) b!1147220))

(declare-fun m!1308989 () Bool)

(assert (=> d!326566 m!1308989))

(assert (=> d!326566 m!1308989))

(declare-fun m!1308991 () Bool)

(assert (=> d!326566 m!1308991))

(declare-fun m!1308993 () Bool)

(assert (=> d!326566 m!1308993))

(assert (=> d!326566 m!1308849))

(assert (=> b!1147220 m!1308989))

(assert (=> b!1147220 m!1308989))

(declare-fun m!1308995 () Bool)

(assert (=> b!1147220 m!1308995))

(assert (=> b!1147047 d!326566))

(declare-fun d!326586 () Bool)

(declare-fun res!516016 () Bool)

(declare-fun e!733356 () Bool)

(assert (=> d!326586 (=> (not res!516016) (not e!733356))))

(declare-fun size!8700 (Conc!3559) Int)

(assert (=> d!326586 (= res!516016 (= (csize!7348 (c!192592 (tokens!1495 pt!21))) (+ (size!8700 (left!9620 (c!192592 (tokens!1495 pt!21)))) (size!8700 (right!9950 (c!192592 (tokens!1495 pt!21)))))))))

(assert (=> d!326586 (= (inv!14468 (c!192592 (tokens!1495 pt!21))) e!733356)))

(declare-fun b!1147240 () Bool)

(declare-fun res!516017 () Bool)

(assert (=> b!1147240 (=> (not res!516017) (not e!733356))))

(assert (=> b!1147240 (= res!516017 (and (not (= (left!9620 (c!192592 (tokens!1495 pt!21))) Empty!3559)) (not (= (right!9950 (c!192592 (tokens!1495 pt!21))) Empty!3559))))))

(declare-fun b!1147241 () Bool)

(declare-fun res!516018 () Bool)

(assert (=> b!1147241 (=> (not res!516018) (not e!733356))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!482 (Conc!3559) Int)

(assert (=> b!1147241 (= res!516018 (= (cheight!3770 (c!192592 (tokens!1495 pt!21))) (+ (max!0 (height!482 (left!9620 (c!192592 (tokens!1495 pt!21)))) (height!482 (right!9950 (c!192592 (tokens!1495 pt!21))))) 1)))))

(declare-fun b!1147242 () Bool)

(assert (=> b!1147242 (= e!733356 (<= 0 (cheight!3770 (c!192592 (tokens!1495 pt!21)))))))

(assert (= (and d!326586 res!516016) b!1147240))

(assert (= (and b!1147240 res!516017) b!1147241))

(assert (= (and b!1147241 res!516018) b!1147242))

(declare-fun m!1308997 () Bool)

(assert (=> d!326586 m!1308997))

(declare-fun m!1308999 () Bool)

(assert (=> d!326586 m!1308999))

(declare-fun m!1309001 () Bool)

(assert (=> b!1147241 m!1309001))

(declare-fun m!1309003 () Bool)

(assert (=> b!1147241 m!1309003))

(assert (=> b!1147241 m!1309001))

(assert (=> b!1147241 m!1309003))

(declare-fun m!1309005 () Bool)

(assert (=> b!1147241 m!1309005))

(assert (=> b!1147064 d!326586))

(declare-fun d!326588 () Bool)

(declare-fun res!516023 () Bool)

(declare-fun e!733361 () Bool)

(assert (=> d!326588 (=> res!516023 e!733361)))

(assert (=> d!326588 (= res!516023 (is-Nil!11060 (list!4063 indices!2)))))

(assert (=> d!326588 (= (forall!2770 (list!4063 indices!2) lambda!46160) e!733361)))

(declare-fun b!1147247 () Bool)

(declare-fun e!733362 () Bool)

(assert (=> b!1147247 (= e!733361 e!733362)))

(declare-fun res!516024 () Bool)

(assert (=> b!1147247 (=> (not res!516024) (not e!733362))))

(declare-fun dynLambda!4896 (Int Int) Bool)

(assert (=> b!1147247 (= res!516024 (dynLambda!4896 lambda!46160 (h!16461 (list!4063 indices!2))))))

(declare-fun b!1147248 () Bool)

(assert (=> b!1147248 (= e!733362 (forall!2770 (t!108116 (list!4063 indices!2)) lambda!46160))))

(assert (= (and d!326588 (not res!516023)) b!1147247))

(assert (= (and b!1147247 res!516024) b!1147248))

(declare-fun b_lambda!34159 () Bool)

(assert (=> (not b_lambda!34159) (not b!1147247)))

(declare-fun m!1309007 () Bool)

(assert (=> b!1147247 m!1309007))

(declare-fun m!1309009 () Bool)

(assert (=> b!1147248 m!1309009))

(assert (=> d!326524 d!326588))

(declare-fun d!326590 () Bool)

(declare-fun list!4068 (Conc!3560) List!11084)

(assert (=> d!326590 (= (list!4063 indices!2) (list!4068 (c!192593 indices!2)))))

(declare-fun bs!281231 () Bool)

(assert (= bs!281231 d!326590))

(declare-fun m!1309011 () Bool)

(assert (=> bs!281231 m!1309011))

(assert (=> d!326524 d!326590))

(declare-fun b!1147259 () Bool)

(declare-fun e!733370 () Bool)

(declare-fun e!733369 () Bool)

(assert (=> b!1147259 (= e!733370 e!733369)))

(declare-datatypes ((Unit!17027 0))(
  ( (Unit!17028) )
))
(declare-fun lt!389026 () Unit!17027)

(declare-fun lemmaForallConcat!106 (List!11084 List!11084 Int) Unit!17027)

(assert (=> b!1147259 (= lt!389026 (lemmaForallConcat!106 (list!4068 (left!9621 (c!192593 indices!2))) (list!4068 (right!9951 (c!192593 indices!2))) lambda!46160))))

(declare-fun res!516029 () Bool)

(assert (=> b!1147259 (= res!516029 (forall!2771 (left!9621 (c!192593 indices!2)) lambda!46160))))

(assert (=> b!1147259 (=> (not res!516029) (not e!733369))))

(declare-fun d!326592 () Bool)

(declare-fun lt!389027 () Bool)

(assert (=> d!326592 (= lt!389027 (forall!2770 (list!4068 (c!192593 indices!2)) lambda!46160))))

(declare-fun e!733371 () Bool)

(assert (=> d!326592 (= lt!389027 e!733371)))

(declare-fun res!516030 () Bool)

(assert (=> d!326592 (=> res!516030 e!733371)))

(assert (=> d!326592 (= res!516030 (is-Empty!3560 (c!192593 indices!2)))))

(assert (=> d!326592 (= (forall!2771 (c!192593 indices!2) lambda!46160) lt!389027)))

(declare-fun b!1147260 () Bool)

(assert (=> b!1147260 (= e!733369 (forall!2771 (right!9951 (c!192593 indices!2)) lambda!46160))))

(declare-fun b!1147258 () Bool)

(declare-fun forall!2780 (IArray!7125 Int) Bool)

(assert (=> b!1147258 (= e!733370 (forall!2780 (xs!6261 (c!192593 indices!2)) lambda!46160))))

(declare-fun b!1147257 () Bool)

(assert (=> b!1147257 (= e!733371 e!733370)))

(declare-fun c!192620 () Bool)

(assert (=> b!1147257 (= c!192620 (is-Leaf!5524 (c!192593 indices!2)))))

(assert (= (and d!326592 (not res!516030)) b!1147257))

(assert (= (and b!1147257 c!192620) b!1147258))

(assert (= (and b!1147257 (not c!192620)) b!1147259))

(assert (= (and b!1147259 res!516029) b!1147260))

(declare-fun m!1309013 () Bool)

(assert (=> b!1147259 m!1309013))

(declare-fun m!1309015 () Bool)

(assert (=> b!1147259 m!1309015))

(assert (=> b!1147259 m!1309013))

(assert (=> b!1147259 m!1309015))

(declare-fun m!1309017 () Bool)

(assert (=> b!1147259 m!1309017))

(declare-fun m!1309019 () Bool)

(assert (=> b!1147259 m!1309019))

(assert (=> d!326592 m!1309011))

(assert (=> d!326592 m!1309011))

(declare-fun m!1309021 () Bool)

(assert (=> d!326592 m!1309021))

(declare-fun m!1309023 () Bool)

(assert (=> b!1147260 m!1309023))

(declare-fun m!1309025 () Bool)

(assert (=> b!1147258 m!1309025))

(assert (=> d!326524 d!326592))

(declare-fun d!326594 () Bool)

(assert (=> d!326594 (= (inv!14447 (tag!2168 (h!16460 (rules!9333 pt!21)))) (= (mod (str.len (value!62318 (tag!2168 (h!16460 (rules!9333 pt!21))))) 2) 0))))

(assert (=> b!1147076 d!326594))

(declare-fun d!326596 () Bool)

(declare-fun res!516033 () Bool)

(declare-fun e!733374 () Bool)

(assert (=> d!326596 (=> (not res!516033) (not e!733374))))

(declare-fun semiInverseModEq!726 (Int Int) Bool)

(assert (=> d!326596 (= res!516033 (semiInverseModEq!726 (toChars!2862 (transformation!1906 (h!16460 (rules!9333 pt!21)))) (toValue!3003 (transformation!1906 (h!16460 (rules!9333 pt!21))))))))

(assert (=> d!326596 (= (inv!14470 (transformation!1906 (h!16460 (rules!9333 pt!21)))) e!733374)))

(declare-fun b!1147263 () Bool)

(declare-fun equivClasses!693 (Int Int) Bool)

(assert (=> b!1147263 (= e!733374 (equivClasses!693 (toChars!2862 (transformation!1906 (h!16460 (rules!9333 pt!21)))) (toValue!3003 (transformation!1906 (h!16460 (rules!9333 pt!21))))))))

(assert (= (and d!326596 res!516033) b!1147263))

(declare-fun m!1309027 () Bool)

(assert (=> d!326596 m!1309027))

(declare-fun m!1309029 () Bool)

(assert (=> b!1147263 m!1309029))

(assert (=> b!1147076 d!326596))

(declare-fun d!326598 () Bool)

(declare-fun res!516038 () Bool)

(declare-fun e!733377 () Bool)

(assert (=> d!326598 (=> (not res!516038) (not e!733377))))

(declare-fun size!8701 (List!11085) Int)

(declare-fun list!4069 (IArray!7127) List!11085)

(assert (=> d!326598 (= res!516038 (<= (size!8701 (list!4069 (xs!6262 (c!192594 acc!225)))) 512))))

(assert (=> d!326598 (= (inv!14467 (c!192594 acc!225)) e!733377)))

(declare-fun b!1147268 () Bool)

(declare-fun res!516039 () Bool)

(assert (=> b!1147268 (=> (not res!516039) (not e!733377))))

(assert (=> b!1147268 (= res!516039 (= (csize!7353 (c!192594 acc!225)) (size!8701 (list!4069 (xs!6262 (c!192594 acc!225))))))))

(declare-fun b!1147269 () Bool)

(assert (=> b!1147269 (= e!733377 (and (> (csize!7353 (c!192594 acc!225)) 0) (<= (csize!7353 (c!192594 acc!225)) 512)))))

(assert (= (and d!326598 res!516038) b!1147268))

(assert (= (and b!1147268 res!516039) b!1147269))

(declare-fun m!1309031 () Bool)

(assert (=> d!326598 m!1309031))

(assert (=> d!326598 m!1309031))

(declare-fun m!1309033 () Bool)

(assert (=> d!326598 m!1309033))

(assert (=> b!1147268 m!1309031))

(assert (=> b!1147268 m!1309031))

(assert (=> b!1147268 m!1309033))

(assert (=> b!1147057 d!326598))

(declare-fun d!326600 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!328) Rule!3612)

(declare-fun integerLiteralRule!0 (JsonLexer!328) Rule!3612)

(declare-fun floatLiteralRule!0 (JsonLexer!328) Rule!3612)

(declare-fun trueRule!0 (JsonLexer!328) Rule!3612)

(declare-fun falseRule!0 (JsonLexer!328) Rule!3612)

(declare-fun nullRule!0 (JsonLexer!328) Rule!3612)

(declare-fun jsonstringRule!0 (JsonLexer!328) Rule!3612)

(declare-fun lBraceRule!0 (JsonLexer!328) Rule!3612)

(declare-fun rBraceRule!0 (JsonLexer!328) Rule!3612)

(declare-fun lBracketRule!0 (JsonLexer!328) Rule!3612)

(declare-fun rBracketRule!0 (JsonLexer!328) Rule!3612)

(declare-fun colonRule!0 (JsonLexer!328) Rule!3612)

(declare-fun commaRule!0 (JsonLexer!328) Rule!3612)

(declare-fun eofRule!0 (JsonLexer!328) Rule!3612)

(assert (=> d!326600 (= (rules!109 JsonLexer!329) (Cons!11059 (whitespaceRule!0 JsonLexer!329) (Cons!11059 (integerLiteralRule!0 JsonLexer!329) (Cons!11059 (floatLiteralRule!0 JsonLexer!329) (Cons!11059 (trueRule!0 JsonLexer!329) (Cons!11059 (falseRule!0 JsonLexer!329) (Cons!11059 (nullRule!0 JsonLexer!329) (Cons!11059 (jsonstringRule!0 JsonLexer!329) (Cons!11059 (lBraceRule!0 JsonLexer!329) (Cons!11059 (rBraceRule!0 JsonLexer!329) (Cons!11059 (lBracketRule!0 JsonLexer!329) (Cons!11059 (rBracketRule!0 JsonLexer!329) (Cons!11059 (colonRule!0 JsonLexer!329) (Cons!11059 (commaRule!0 JsonLexer!329) (Cons!11059 (eofRule!0 JsonLexer!329) Nil!11059)))))))))))))))))

(declare-fun bs!281232 () Bool)

(assert (= bs!281232 d!326600))

(declare-fun m!1309035 () Bool)

(assert (=> bs!281232 m!1309035))

(declare-fun m!1309037 () Bool)

(assert (=> bs!281232 m!1309037))

(declare-fun m!1309039 () Bool)

(assert (=> bs!281232 m!1309039))

(declare-fun m!1309041 () Bool)

(assert (=> bs!281232 m!1309041))

(declare-fun m!1309043 () Bool)

(assert (=> bs!281232 m!1309043))

(declare-fun m!1309045 () Bool)

(assert (=> bs!281232 m!1309045))

(declare-fun m!1309047 () Bool)

(assert (=> bs!281232 m!1309047))

(declare-fun m!1309049 () Bool)

(assert (=> bs!281232 m!1309049))

(declare-fun m!1309051 () Bool)

(assert (=> bs!281232 m!1309051))

(declare-fun m!1309053 () Bool)

(assert (=> bs!281232 m!1309053))

(declare-fun m!1309055 () Bool)

(assert (=> bs!281232 m!1309055))

(declare-fun m!1309057 () Bool)

(assert (=> bs!281232 m!1309057))

(declare-fun m!1309059 () Bool)

(assert (=> bs!281232 m!1309059))

(declare-fun m!1309061 () Bool)

(assert (=> bs!281232 m!1309061))

(assert (=> d!326530 d!326600))

(declare-fun d!326602 () Bool)

(declare-fun res!516046 () Bool)

(declare-fun e!733380 () Bool)

(assert (=> d!326602 (=> (not res!516046) (not e!733380))))

(declare-fun size!8702 (Conc!3561) Int)

(assert (=> d!326602 (= res!516046 (= (csize!7352 (c!192594 acc!225)) (+ (size!8702 (left!9622 (c!192594 acc!225))) (size!8702 (right!9952 (c!192594 acc!225))))))))

(assert (=> d!326602 (= (inv!14466 (c!192594 acc!225)) e!733380)))

(declare-fun b!1147276 () Bool)

(declare-fun res!516047 () Bool)

(assert (=> b!1147276 (=> (not res!516047) (not e!733380))))

(assert (=> b!1147276 (= res!516047 (and (not (= (left!9622 (c!192594 acc!225)) Empty!3561)) (not (= (right!9952 (c!192594 acc!225)) Empty!3561))))))

(declare-fun b!1147277 () Bool)

(declare-fun res!516048 () Bool)

(assert (=> b!1147277 (=> (not res!516048) (not e!733380))))

(declare-fun height!483 (Conc!3561) Int)

(assert (=> b!1147277 (= res!516048 (= (cheight!3772 (c!192594 acc!225)) (+ (max!0 (height!483 (left!9622 (c!192594 acc!225))) (height!483 (right!9952 (c!192594 acc!225)))) 1)))))

(declare-fun b!1147278 () Bool)

(assert (=> b!1147278 (= e!733380 (<= 0 (cheight!3772 (c!192594 acc!225))))))

(assert (= (and d!326602 res!516046) b!1147276))

(assert (= (and b!1147276 res!516047) b!1147277))

(assert (= (and b!1147277 res!516048) b!1147278))

(declare-fun m!1309063 () Bool)

(assert (=> d!326602 m!1309063))

(declare-fun m!1309065 () Bool)

(assert (=> d!326602 m!1309065))

(declare-fun m!1309067 () Bool)

(assert (=> b!1147277 m!1309067))

(declare-fun m!1309069 () Bool)

(assert (=> b!1147277 m!1309069))

(assert (=> b!1147277 m!1309067))

(assert (=> b!1147277 m!1309069))

(declare-fun m!1309071 () Bool)

(assert (=> b!1147277 m!1309071))

(assert (=> b!1147055 d!326602))

(declare-fun d!326604 () Bool)

(assert (=> d!326604 (= (inv!14471 (xs!6261 (c!192593 indices!2))) (<= (size!8694 (innerList!3620 (xs!6261 (c!192593 indices!2)))) 2147483647))))

(declare-fun bs!281233 () Bool)

(assert (= bs!281233 d!326604))

(declare-fun m!1309073 () Bool)

(assert (=> bs!281233 m!1309073))

(assert (=> b!1147085 d!326604))

(declare-fun d!326606 () Bool)

(declare-fun c!192621 () Bool)

(assert (=> d!326606 (= c!192621 (is-Node!3560 (left!9621 (c!192593 indices!2))))))

(declare-fun e!733381 () Bool)

(assert (=> d!326606 (= (inv!14453 (left!9621 (c!192593 indices!2))) e!733381)))

(declare-fun b!1147279 () Bool)

(assert (=> b!1147279 (= e!733381 (inv!14464 (left!9621 (c!192593 indices!2))))))

(declare-fun b!1147280 () Bool)

(declare-fun e!733382 () Bool)

(assert (=> b!1147280 (= e!733381 e!733382)))

(declare-fun res!516049 () Bool)

(assert (=> b!1147280 (= res!516049 (not (is-Leaf!5524 (left!9621 (c!192593 indices!2)))))))

(assert (=> b!1147280 (=> res!516049 e!733382)))

(declare-fun b!1147281 () Bool)

(assert (=> b!1147281 (= e!733382 (inv!14465 (left!9621 (c!192593 indices!2))))))

(assert (= (and d!326606 c!192621) b!1147279))

(assert (= (and d!326606 (not c!192621)) b!1147280))

(assert (= (and b!1147280 (not res!516049)) b!1147281))

(declare-fun m!1309075 () Bool)

(assert (=> b!1147279 m!1309075))

(declare-fun m!1309077 () Bool)

(assert (=> b!1147281 m!1309077))

(assert (=> b!1147084 d!326606))

(declare-fun d!326608 () Bool)

(declare-fun c!192622 () Bool)

(assert (=> d!326608 (= c!192622 (is-Node!3560 (right!9951 (c!192593 indices!2))))))

(declare-fun e!733383 () Bool)

(assert (=> d!326608 (= (inv!14453 (right!9951 (c!192593 indices!2))) e!733383)))

(declare-fun b!1147282 () Bool)

(assert (=> b!1147282 (= e!733383 (inv!14464 (right!9951 (c!192593 indices!2))))))

(declare-fun b!1147283 () Bool)

(declare-fun e!733384 () Bool)

(assert (=> b!1147283 (= e!733383 e!733384)))

(declare-fun res!516050 () Bool)

(assert (=> b!1147283 (= res!516050 (not (is-Leaf!5524 (right!9951 (c!192593 indices!2)))))))

(assert (=> b!1147283 (=> res!516050 e!733384)))

(declare-fun b!1147284 () Bool)

(assert (=> b!1147284 (= e!733384 (inv!14465 (right!9951 (c!192593 indices!2))))))

(assert (= (and d!326608 c!192622) b!1147282))

(assert (= (and d!326608 (not c!192622)) b!1147283))

(assert (= (and b!1147283 (not res!516050)) b!1147284))

(declare-fun m!1309079 () Bool)

(assert (=> b!1147282 m!1309079))

(declare-fun m!1309081 () Bool)

(assert (=> b!1147284 m!1309081))

(assert (=> b!1147084 d!326608))

(declare-fun d!326610 () Bool)

(declare-fun lt!389030 () Int)

(assert (=> d!326610 (>= lt!389030 0)))

(declare-fun e!733387 () Int)

(assert (=> d!326610 (= lt!389030 e!733387)))

(declare-fun c!192625 () Bool)

(assert (=> d!326610 (= c!192625 (is-Nil!11060 (list!4063 indices!2)))))

(assert (=> d!326610 (= (size!8694 (list!4063 indices!2)) lt!389030)))

(declare-fun b!1147289 () Bool)

(assert (=> b!1147289 (= e!733387 0)))

(declare-fun b!1147290 () Bool)

(assert (=> b!1147290 (= e!733387 (+ 1 (size!8694 (t!108116 (list!4063 indices!2)))))))

(assert (= (and d!326610 c!192625) b!1147289))

(assert (= (and d!326610 (not c!192625)) b!1147290))

(declare-fun m!1309085 () Bool)

(assert (=> b!1147290 m!1309085))

(assert (=> d!326528 d!326610))

(assert (=> d!326528 d!326590))

(declare-fun d!326614 () Bool)

(declare-fun lt!389033 () Int)

(assert (=> d!326614 (= lt!389033 (size!8694 (list!4068 (c!192593 indices!2))))))

(assert (=> d!326614 (= lt!389033 (ite (is-Empty!3560 (c!192593 indices!2)) 0 (ite (is-Leaf!5524 (c!192593 indices!2)) (csize!7351 (c!192593 indices!2)) (csize!7350 (c!192593 indices!2)))))))

(assert (=> d!326614 (= (size!8695 (c!192593 indices!2)) lt!389033)))

(declare-fun bs!281235 () Bool)

(assert (= bs!281235 d!326614))

(assert (=> bs!281235 m!1309011))

(assert (=> bs!281235 m!1309011))

(declare-fun m!1309087 () Bool)

(assert (=> bs!281235 m!1309087))

(assert (=> d!326528 d!326614))

(assert (=> b!1146989 d!326522))

(declare-fun d!326616 () Bool)

(declare-fun res!516055 () Bool)

(declare-fun e!733390 () Bool)

(assert (=> d!326616 (=> (not res!516055) (not e!733390))))

(declare-fun list!4070 (IArray!7125) List!11084)

(assert (=> d!326616 (= res!516055 (<= (size!8694 (list!4070 (xs!6261 (c!192593 indices!2)))) 512))))

(assert (=> d!326616 (= (inv!14465 (c!192593 indices!2)) e!733390)))

(declare-fun b!1147295 () Bool)

(declare-fun res!516056 () Bool)

(assert (=> b!1147295 (=> (not res!516056) (not e!733390))))

(assert (=> b!1147295 (= res!516056 (= (csize!7351 (c!192593 indices!2)) (size!8694 (list!4070 (xs!6261 (c!192593 indices!2))))))))

(declare-fun b!1147296 () Bool)

(assert (=> b!1147296 (= e!733390 (and (> (csize!7351 (c!192593 indices!2)) 0) (<= (csize!7351 (c!192593 indices!2)) 512)))))

(assert (= (and d!326616 res!516055) b!1147295))

(assert (= (and b!1147295 res!516056) b!1147296))

(declare-fun m!1309089 () Bool)

(assert (=> d!326616 m!1309089))

(assert (=> d!326616 m!1309089))

(declare-fun m!1309091 () Bool)

(assert (=> d!326616 m!1309091))

(assert (=> b!1147295 m!1309089))

(assert (=> b!1147295 m!1309089))

(assert (=> b!1147295 m!1309091))

(assert (=> b!1147033 d!326616))

(declare-fun d!326618 () Bool)

(declare-fun res!516061 () Bool)

(declare-fun e!733395 () Bool)

(assert (=> d!326618 (=> res!516061 e!733395)))

(assert (=> d!326618 (= res!516061 (is-Nil!11061 (list!4064 acc!225)))))

(assert (=> d!326618 (= (forall!2772 (list!4064 acc!225) lambda!46161) e!733395)))

(declare-fun b!1147301 () Bool)

(declare-fun e!733396 () Bool)

(assert (=> b!1147301 (= e!733395 e!733396)))

(declare-fun res!516062 () Bool)

(assert (=> b!1147301 (=> (not res!516062) (not e!733396))))

(declare-fun dynLambda!4897 (Int PrintableTokens!498) Bool)

(assert (=> b!1147301 (= res!516062 (dynLambda!4897 lambda!46161 (h!16462 (list!4064 acc!225))))))

(declare-fun b!1147302 () Bool)

(assert (=> b!1147302 (= e!733396 (forall!2772 (t!108117 (list!4064 acc!225)) lambda!46161))))

(assert (= (and d!326618 (not res!516061)) b!1147301))

(assert (= (and b!1147301 res!516062) b!1147302))

(declare-fun b_lambda!34161 () Bool)

(assert (=> (not b_lambda!34161) (not b!1147301)))

(declare-fun m!1309093 () Bool)

(assert (=> b!1147301 m!1309093))

(declare-fun m!1309095 () Bool)

(assert (=> b!1147302 m!1309095))

(assert (=> d!326546 d!326618))

(declare-fun d!326620 () Bool)

(declare-fun list!4071 (Conc!3561) List!11085)

(assert (=> d!326620 (= (list!4064 acc!225) (list!4071 (c!192594 acc!225)))))

(declare-fun bs!281236 () Bool)

(assert (= bs!281236 d!326620))

(declare-fun m!1309097 () Bool)

(assert (=> bs!281236 m!1309097))

(assert (=> d!326546 d!326620))

(declare-fun b!1147313 () Bool)

(declare-fun e!733405 () Bool)

(declare-fun e!733403 () Bool)

(assert (=> b!1147313 (= e!733405 e!733403)))

(declare-fun lt!389038 () Unit!17027)

(declare-fun lemmaForallConcat!107 (List!11085 List!11085 Int) Unit!17027)

(assert (=> b!1147313 (= lt!389038 (lemmaForallConcat!107 (list!4071 (left!9622 (c!192594 acc!225))) (list!4071 (right!9952 (c!192594 acc!225))) lambda!46161))))

(declare-fun res!516068 () Bool)

(assert (=> b!1147313 (= res!516068 (forall!2773 (left!9622 (c!192594 acc!225)) lambda!46161))))

(assert (=> b!1147313 (=> (not res!516068) (not e!733403))))

(declare-fun d!326622 () Bool)

(declare-fun lt!389039 () Bool)

(assert (=> d!326622 (= lt!389039 (forall!2772 (list!4071 (c!192594 acc!225)) lambda!46161))))

(declare-fun e!733404 () Bool)

(assert (=> d!326622 (= lt!389039 e!733404)))

(declare-fun res!516067 () Bool)

(assert (=> d!326622 (=> res!516067 e!733404)))

(assert (=> d!326622 (= res!516067 (is-Empty!3561 (c!192594 acc!225)))))

(assert (=> d!326622 (= (forall!2773 (c!192594 acc!225) lambda!46161) lt!389039)))

(declare-fun b!1147312 () Bool)

(declare-fun forall!2781 (IArray!7127 Int) Bool)

(assert (=> b!1147312 (= e!733405 (forall!2781 (xs!6262 (c!192594 acc!225)) lambda!46161))))

(declare-fun b!1147314 () Bool)

(assert (=> b!1147314 (= e!733403 (forall!2773 (right!9952 (c!192594 acc!225)) lambda!46161))))

(declare-fun b!1147311 () Bool)

(assert (=> b!1147311 (= e!733404 e!733405)))

(declare-fun c!192628 () Bool)

(assert (=> b!1147311 (= c!192628 (is-Leaf!5525 (c!192594 acc!225)))))

(assert (= (and d!326622 (not res!516067)) b!1147311))

(assert (= (and b!1147311 c!192628) b!1147312))

(assert (= (and b!1147311 (not c!192628)) b!1147313))

(assert (= (and b!1147313 res!516068) b!1147314))

(declare-fun m!1309099 () Bool)

(assert (=> b!1147313 m!1309099))

(declare-fun m!1309101 () Bool)

(assert (=> b!1147313 m!1309101))

(assert (=> b!1147313 m!1309099))

(assert (=> b!1147313 m!1309101))

(declare-fun m!1309103 () Bool)

(assert (=> b!1147313 m!1309103))

(declare-fun m!1309105 () Bool)

(assert (=> b!1147313 m!1309105))

(assert (=> d!326622 m!1309097))

(assert (=> d!326622 m!1309097))

(declare-fun m!1309107 () Bool)

(assert (=> d!326622 m!1309107))

(declare-fun m!1309109 () Bool)

(assert (=> b!1147312 m!1309109))

(declare-fun m!1309111 () Bool)

(assert (=> b!1147314 m!1309111))

(assert (=> d!326546 d!326622))

(declare-fun d!326624 () Bool)

(declare-fun size!8703 (List!11082) Int)

(assert (=> d!326624 (= (inv!14473 (xs!6260 (c!192592 (tokens!1495 pt!21)))) (<= (size!8703 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21))))) 2147483647))))

(declare-fun bs!281237 () Bool)

(assert (= bs!281237 d!326624))

(declare-fun m!1309113 () Bool)

(assert (=> bs!281237 m!1309113))

(assert (=> b!1147106 d!326624))

(declare-fun b!1147327 () Bool)

(declare-fun e!733411 () Bool)

(declare-fun e!733410 () Bool)

(assert (=> b!1147327 (= e!733411 e!733410)))

(declare-fun res!516081 () Bool)

(assert (=> b!1147327 (=> (not res!516081) (not e!733410))))

(assert (=> b!1147327 (= res!516081 (<= (- 1) (- (height!482 (left!9620 (c!192592 (tokens!1495 pt!21)))) (height!482 (right!9950 (c!192592 (tokens!1495 pt!21)))))))))

(declare-fun b!1147328 () Bool)

(declare-fun res!516085 () Bool)

(assert (=> b!1147328 (=> (not res!516085) (not e!733410))))

(assert (=> b!1147328 (= res!516085 (isBalanced!999 (right!9950 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun d!326626 () Bool)

(declare-fun res!516082 () Bool)

(assert (=> d!326626 (=> res!516082 e!733411)))

(assert (=> d!326626 (= res!516082 (not (is-Node!3559 (c!192592 (tokens!1495 pt!21)))))))

(assert (=> d!326626 (= (isBalanced!999 (c!192592 (tokens!1495 pt!21))) e!733411)))

(declare-fun b!1147329 () Bool)

(declare-fun res!516086 () Bool)

(assert (=> b!1147329 (=> (not res!516086) (not e!733410))))

(declare-fun isEmpty!6869 (Conc!3559) Bool)

(assert (=> b!1147329 (= res!516086 (not (isEmpty!6869 (left!9620 (c!192592 (tokens!1495 pt!21))))))))

(declare-fun b!1147330 () Bool)

(declare-fun res!516084 () Bool)

(assert (=> b!1147330 (=> (not res!516084) (not e!733410))))

(assert (=> b!1147330 (= res!516084 (isBalanced!999 (left!9620 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun b!1147331 () Bool)

(assert (=> b!1147331 (= e!733410 (not (isEmpty!6869 (right!9950 (c!192592 (tokens!1495 pt!21))))))))

(declare-fun b!1147332 () Bool)

(declare-fun res!516083 () Bool)

(assert (=> b!1147332 (=> (not res!516083) (not e!733410))))

(assert (=> b!1147332 (= res!516083 (<= (- (height!482 (left!9620 (c!192592 (tokens!1495 pt!21)))) (height!482 (right!9950 (c!192592 (tokens!1495 pt!21))))) 1))))

(assert (= (and d!326626 (not res!516082)) b!1147327))

(assert (= (and b!1147327 res!516081) b!1147332))

(assert (= (and b!1147332 res!516083) b!1147330))

(assert (= (and b!1147330 res!516084) b!1147328))

(assert (= (and b!1147328 res!516085) b!1147329))

(assert (= (and b!1147329 res!516086) b!1147331))

(declare-fun m!1309115 () Bool)

(assert (=> b!1147331 m!1309115))

(declare-fun m!1309117 () Bool)

(assert (=> b!1147329 m!1309117))

(assert (=> b!1147332 m!1309001))

(assert (=> b!1147332 m!1309003))

(assert (=> b!1147327 m!1309001))

(assert (=> b!1147327 m!1309003))

(declare-fun m!1309119 () Bool)

(assert (=> b!1147328 m!1309119))

(declare-fun m!1309121 () Bool)

(assert (=> b!1147330 m!1309121))

(assert (=> d!326518 d!326626))

(declare-fun d!326628 () Bool)

(declare-fun res!516093 () Bool)

(declare-fun e!733414 () Bool)

(assert (=> d!326628 (=> (not res!516093) (not e!733414))))

(assert (=> d!326628 (= res!516093 (= (csize!7350 (c!192593 indices!2)) (+ (size!8695 (left!9621 (c!192593 indices!2))) (size!8695 (right!9951 (c!192593 indices!2))))))))

(assert (=> d!326628 (= (inv!14464 (c!192593 indices!2)) e!733414)))

(declare-fun b!1147339 () Bool)

(declare-fun res!516094 () Bool)

(assert (=> b!1147339 (=> (not res!516094) (not e!733414))))

(assert (=> b!1147339 (= res!516094 (and (not (= (left!9621 (c!192593 indices!2)) Empty!3560)) (not (= (right!9951 (c!192593 indices!2)) Empty!3560))))))

(declare-fun b!1147340 () Bool)

(declare-fun res!516095 () Bool)

(assert (=> b!1147340 (=> (not res!516095) (not e!733414))))

(declare-fun height!484 (Conc!3560) Int)

(assert (=> b!1147340 (= res!516095 (= (cheight!3771 (c!192593 indices!2)) (+ (max!0 (height!484 (left!9621 (c!192593 indices!2))) (height!484 (right!9951 (c!192593 indices!2)))) 1)))))

(declare-fun b!1147341 () Bool)

(assert (=> b!1147341 (= e!733414 (<= 0 (cheight!3771 (c!192593 indices!2))))))

(assert (= (and d!326628 res!516093) b!1147339))

(assert (= (and b!1147339 res!516094) b!1147340))

(assert (= (and b!1147340 res!516095) b!1147341))

(declare-fun m!1309123 () Bool)

(assert (=> d!326628 m!1309123))

(declare-fun m!1309125 () Bool)

(assert (=> d!326628 m!1309125))

(declare-fun m!1309127 () Bool)

(assert (=> b!1147340 m!1309127))

(declare-fun m!1309129 () Bool)

(assert (=> b!1147340 m!1309129))

(assert (=> b!1147340 m!1309127))

(assert (=> b!1147340 m!1309129))

(declare-fun m!1309131 () Bool)

(assert (=> b!1147340 m!1309131))

(assert (=> b!1147031 d!326628))

(declare-fun d!326630 () Bool)

(declare-fun c!192629 () Bool)

(assert (=> d!326630 (= c!192629 (is-Node!3559 (left!9620 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun e!733415 () Bool)

(assert (=> d!326630 (= (inv!14455 (left!9620 (c!192592 (tokens!1495 pt!21)))) e!733415)))

(declare-fun b!1147342 () Bool)

(assert (=> b!1147342 (= e!733415 (inv!14468 (left!9620 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun b!1147343 () Bool)

(declare-fun e!733416 () Bool)

(assert (=> b!1147343 (= e!733415 e!733416)))

(declare-fun res!516096 () Bool)

(assert (=> b!1147343 (= res!516096 (not (is-Leaf!5523 (left!9620 (c!192592 (tokens!1495 pt!21))))))))

(assert (=> b!1147343 (=> res!516096 e!733416)))

(declare-fun b!1147344 () Bool)

(assert (=> b!1147344 (= e!733416 (inv!14469 (left!9620 (c!192592 (tokens!1495 pt!21)))))))

(assert (= (and d!326630 c!192629) b!1147342))

(assert (= (and d!326630 (not c!192629)) b!1147343))

(assert (= (and b!1147343 (not res!516096)) b!1147344))

(declare-fun m!1309133 () Bool)

(assert (=> b!1147342 m!1309133))

(declare-fun m!1309135 () Bool)

(assert (=> b!1147344 m!1309135))

(assert (=> b!1147105 d!326630))

(declare-fun d!326632 () Bool)

(declare-fun c!192630 () Bool)

(assert (=> d!326632 (= c!192630 (is-Node!3559 (right!9950 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun e!733417 () Bool)

(assert (=> d!326632 (= (inv!14455 (right!9950 (c!192592 (tokens!1495 pt!21)))) e!733417)))

(declare-fun b!1147345 () Bool)

(assert (=> b!1147345 (= e!733417 (inv!14468 (right!9950 (c!192592 (tokens!1495 pt!21)))))))

(declare-fun b!1147346 () Bool)

(declare-fun e!733418 () Bool)

(assert (=> b!1147346 (= e!733417 e!733418)))

(declare-fun res!516097 () Bool)

(assert (=> b!1147346 (= res!516097 (not (is-Leaf!5523 (right!9950 (c!192592 (tokens!1495 pt!21))))))))

(assert (=> b!1147346 (=> res!516097 e!733418)))

(declare-fun b!1147347 () Bool)

(assert (=> b!1147347 (= e!733418 (inv!14469 (right!9950 (c!192592 (tokens!1495 pt!21)))))))

(assert (= (and d!326632 c!192630) b!1147345))

(assert (= (and d!326632 (not c!192630)) b!1147346))

(assert (= (and b!1147346 (not res!516097)) b!1147347))

(declare-fun m!1309137 () Bool)

(assert (=> b!1147345 m!1309137))

(declare-fun m!1309139 () Bool)

(assert (=> b!1147347 m!1309139))

(assert (=> b!1147105 d!326632))

(declare-fun d!326634 () Bool)

(declare-fun lt!389042 () Int)

(assert (=> d!326634 (= lt!389042 (size!8703 (list!4067 (tokens!1495 pt!21))))))

(assert (=> d!326634 (= lt!389042 (size!8700 (c!192592 (tokens!1495 pt!21))))))

(assert (=> d!326634 (= (size!8696 (tokens!1495 pt!21)) lt!389042)))

(declare-fun bs!281240 () Bool)

(assert (= bs!281240 d!326634))

(assert (=> bs!281240 m!1308989))

(assert (=> bs!281240 m!1308989))

(declare-fun m!1309171 () Bool)

(assert (=> bs!281240 m!1309171))

(declare-fun m!1309173 () Bool)

(assert (=> bs!281240 m!1309173))

(assert (=> d!326536 d!326634))

(declare-fun d!326640 () Bool)

(declare-fun res!516108 () Bool)

(declare-fun e!733427 () Bool)

(assert (=> d!326640 (=> (not res!516108) (not e!733427))))

(declare-fun list!4072 (IArray!7123) List!11082)

(assert (=> d!326640 (= res!516108 (<= (size!8703 (list!4072 (xs!6260 (c!192592 (tokens!1495 pt!21))))) 512))))

(assert (=> d!326640 (= (inv!14469 (c!192592 (tokens!1495 pt!21))) e!733427)))

(declare-fun b!1147358 () Bool)

(declare-fun res!516109 () Bool)

(assert (=> b!1147358 (=> (not res!516109) (not e!733427))))

(assert (=> b!1147358 (= res!516109 (= (csize!7349 (c!192592 (tokens!1495 pt!21))) (size!8703 (list!4072 (xs!6260 (c!192592 (tokens!1495 pt!21)))))))))

(declare-fun b!1147359 () Bool)

(assert (=> b!1147359 (= e!733427 (and (> (csize!7349 (c!192592 (tokens!1495 pt!21))) 0) (<= (csize!7349 (c!192592 (tokens!1495 pt!21))) 512)))))

(assert (= (and d!326640 res!516108) b!1147358))

(assert (= (and b!1147358 res!516109) b!1147359))

(declare-fun m!1309179 () Bool)

(assert (=> d!326640 m!1309179))

(assert (=> d!326640 m!1309179))

(declare-fun m!1309181 () Bool)

(assert (=> d!326640 m!1309181))

(assert (=> b!1147358 m!1309179))

(assert (=> b!1147358 m!1309179))

(assert (=> b!1147358 m!1309181))

(assert (=> b!1147066 d!326640))

(declare-fun b!1147378 () Bool)

(declare-fun res!516128 () Bool)

(declare-fun e!733436 () Bool)

(assert (=> b!1147378 (=> (not res!516128) (not e!733436))))

(assert (=> b!1147378 (= res!516128 (isBalanced!1000 (right!9951 (c!192593 indices!2))))))

(declare-fun b!1147379 () Bool)

(declare-fun res!516125 () Bool)

(assert (=> b!1147379 (=> (not res!516125) (not e!733436))))

(declare-fun isEmpty!6870 (Conc!3560) Bool)

(assert (=> b!1147379 (= res!516125 (not (isEmpty!6870 (left!9621 (c!192593 indices!2)))))))

(declare-fun d!326644 () Bool)

(declare-fun res!516129 () Bool)

(declare-fun e!733437 () Bool)

(assert (=> d!326644 (=> res!516129 e!733437)))

(assert (=> d!326644 (= res!516129 (not (is-Node!3560 (c!192593 indices!2))))))

(assert (=> d!326644 (= (isBalanced!1000 (c!192593 indices!2)) e!733437)))

(declare-fun b!1147380 () Bool)

(assert (=> b!1147380 (= e!733436 (not (isEmpty!6870 (right!9951 (c!192593 indices!2)))))))

(declare-fun b!1147381 () Bool)

(declare-fun res!516124 () Bool)

(assert (=> b!1147381 (=> (not res!516124) (not e!733436))))

(assert (=> b!1147381 (= res!516124 (<= (- (height!484 (left!9621 (c!192593 indices!2))) (height!484 (right!9951 (c!192593 indices!2)))) 1))))

(declare-fun b!1147382 () Bool)

(assert (=> b!1147382 (= e!733437 e!733436)))

(declare-fun res!516127 () Bool)

(assert (=> b!1147382 (=> (not res!516127) (not e!733436))))

(assert (=> b!1147382 (= res!516127 (<= (- 1) (- (height!484 (left!9621 (c!192593 indices!2))) (height!484 (right!9951 (c!192593 indices!2))))))))

(declare-fun b!1147383 () Bool)

(declare-fun res!516126 () Bool)

(assert (=> b!1147383 (=> (not res!516126) (not e!733436))))

(assert (=> b!1147383 (= res!516126 (isBalanced!1000 (left!9621 (c!192593 indices!2))))))

(assert (= (and d!326644 (not res!516129)) b!1147382))

(assert (= (and b!1147382 res!516127) b!1147381))

(assert (= (and b!1147381 res!516124) b!1147383))

(assert (= (and b!1147383 res!516126) b!1147378))

(assert (= (and b!1147378 res!516128) b!1147379))

(assert (= (and b!1147379 res!516125) b!1147380))

(declare-fun m!1309185 () Bool)

(assert (=> b!1147383 m!1309185))

(declare-fun m!1309187 () Bool)

(assert (=> b!1147380 m!1309187))

(declare-fun m!1309189 () Bool)

(assert (=> b!1147378 m!1309189))

(assert (=> b!1147381 m!1309127))

(assert (=> b!1147381 m!1309129))

(assert (=> b!1147382 m!1309127))

(assert (=> b!1147382 m!1309129))

(declare-fun m!1309191 () Bool)

(assert (=> b!1147379 m!1309191))

(assert (=> d!326540 d!326644))

(declare-fun d!326648 () Bool)

(assert (=> d!326648 (= (inv!14472 (xs!6262 (c!192594 acc!225))) (<= (size!8701 (innerList!3621 (xs!6262 (c!192594 acc!225)))) 2147483647))))

(declare-fun bs!281242 () Bool)

(assert (= bs!281242 d!326648))

(declare-fun m!1309193 () Bool)

(assert (=> bs!281242 m!1309193))

(assert (=> b!1147095 d!326648))

(declare-fun d!326650 () Bool)

(declare-fun res!516136 () Bool)

(declare-fun e!733445 () Bool)

(assert (=> d!326650 (=> (not res!516136) (not e!733445))))

(declare-fun rulesValid!657 (LexerInterface!1605 List!11083) Bool)

(assert (=> d!326650 (= res!516136 (rulesValid!657 Lexer!1603 (rules!9333 pt!21)))))

(assert (=> d!326650 (= (rulesInvariant!1479 Lexer!1603 (rules!9333 pt!21)) e!733445)))

(declare-fun b!1147392 () Bool)

(declare-datatypes ((List!11091 0))(
  ( (Nil!11067) (Cons!11067 (h!16468 String!13450) (t!108173 List!11091)) )
))
(declare-fun noDuplicateTag!657 (LexerInterface!1605 List!11083 List!11091) Bool)

(assert (=> b!1147392 (= e!733445 (noDuplicateTag!657 Lexer!1603 (rules!9333 pt!21) Nil!11067))))

(assert (= (and d!326650 res!516136) b!1147392))

(declare-fun m!1309209 () Bool)

(assert (=> d!326650 m!1309209))

(declare-fun m!1309211 () Bool)

(assert (=> b!1147392 m!1309211))

(assert (=> b!1147046 d!326650))

(declare-fun d!326654 () Bool)

(assert (=> d!326654 (= (isEmpty!6867 (rules!9333 pt!21)) (is-Nil!11059 (rules!9333 pt!21)))))

(assert (=> d!326538 d!326654))

(declare-fun b!1147405 () Bool)

(declare-fun res!516153 () Bool)

(declare-fun e!733451 () Bool)

(assert (=> b!1147405 (=> (not res!516153) (not e!733451))))

(assert (=> b!1147405 (= res!516153 (isBalanced!1001 (right!9952 (c!192594 acc!225))))))

(declare-fun b!1147406 () Bool)

(declare-fun res!516150 () Bool)

(assert (=> b!1147406 (=> (not res!516150) (not e!733451))))

(assert (=> b!1147406 (= res!516150 (<= (- (height!483 (left!9622 (c!192594 acc!225))) (height!483 (right!9952 (c!192594 acc!225)))) 1))))

(declare-fun b!1147407 () Bool)

(declare-fun res!516149 () Bool)

(assert (=> b!1147407 (=> (not res!516149) (not e!733451))))

(declare-fun isEmpty!6872 (Conc!3561) Bool)

(assert (=> b!1147407 (= res!516149 (not (isEmpty!6872 (left!9622 (c!192594 acc!225)))))))

(declare-fun b!1147408 () Bool)

(declare-fun e!733450 () Bool)

(assert (=> b!1147408 (= e!733450 e!733451)))

(declare-fun res!516151 () Bool)

(assert (=> b!1147408 (=> (not res!516151) (not e!733451))))

(assert (=> b!1147408 (= res!516151 (<= (- 1) (- (height!483 (left!9622 (c!192594 acc!225))) (height!483 (right!9952 (c!192594 acc!225))))))))

(declare-fun d!326656 () Bool)

(declare-fun res!516154 () Bool)

(assert (=> d!326656 (=> res!516154 e!733450)))

(assert (=> d!326656 (= res!516154 (not (is-Node!3561 (c!192594 acc!225))))))

(assert (=> d!326656 (= (isBalanced!1001 (c!192594 acc!225)) e!733450)))

(declare-fun b!1147409 () Bool)

(assert (=> b!1147409 (= e!733451 (not (isEmpty!6872 (right!9952 (c!192594 acc!225)))))))

(declare-fun b!1147410 () Bool)

(declare-fun res!516152 () Bool)

(assert (=> b!1147410 (=> (not res!516152) (not e!733451))))

(assert (=> b!1147410 (= res!516152 (isBalanced!1001 (left!9622 (c!192594 acc!225))))))

(assert (= (and d!326656 (not res!516154)) b!1147408))

(assert (= (and b!1147408 res!516151) b!1147406))

(assert (= (and b!1147406 res!516150) b!1147410))

(assert (= (and b!1147410 res!516152) b!1147405))

(assert (= (and b!1147405 res!516153) b!1147407))

(assert (= (and b!1147407 res!516149) b!1147409))

(assert (=> b!1147406 m!1309067))

(assert (=> b!1147406 m!1309069))

(assert (=> b!1147408 m!1309067))

(assert (=> b!1147408 m!1309069))

(declare-fun m!1309213 () Bool)

(assert (=> b!1147410 m!1309213))

(declare-fun m!1309215 () Bool)

(assert (=> b!1147407 m!1309215))

(declare-fun m!1309217 () Bool)

(assert (=> b!1147405 m!1309217))

(declare-fun m!1309219 () Bool)

(assert (=> b!1147409 m!1309219))

(assert (=> d!326542 d!326656))

(declare-fun d!326658 () Bool)

(declare-fun c!192634 () Bool)

(assert (=> d!326658 (= c!192634 (is-Node!3561 (left!9622 (c!192594 acc!225))))))

(declare-fun e!733452 () Bool)

(assert (=> d!326658 (= (inv!14456 (left!9622 (c!192594 acc!225))) e!733452)))

(declare-fun b!1147411 () Bool)

(assert (=> b!1147411 (= e!733452 (inv!14466 (left!9622 (c!192594 acc!225))))))

(declare-fun b!1147412 () Bool)

(declare-fun e!733453 () Bool)

(assert (=> b!1147412 (= e!733452 e!733453)))

(declare-fun res!516155 () Bool)

(assert (=> b!1147412 (= res!516155 (not (is-Leaf!5525 (left!9622 (c!192594 acc!225)))))))

(assert (=> b!1147412 (=> res!516155 e!733453)))

(declare-fun b!1147413 () Bool)

(assert (=> b!1147413 (= e!733453 (inv!14467 (left!9622 (c!192594 acc!225))))))

(assert (= (and d!326658 c!192634) b!1147411))

(assert (= (and d!326658 (not c!192634)) b!1147412))

(assert (= (and b!1147412 (not res!516155)) b!1147413))

(declare-fun m!1309221 () Bool)

(assert (=> b!1147411 m!1309221))

(declare-fun m!1309223 () Bool)

(assert (=> b!1147413 m!1309223))

(assert (=> b!1147094 d!326658))

(declare-fun d!326660 () Bool)

(declare-fun c!192635 () Bool)

(assert (=> d!326660 (= c!192635 (is-Node!3561 (right!9952 (c!192594 acc!225))))))

(declare-fun e!733454 () Bool)

(assert (=> d!326660 (= (inv!14456 (right!9952 (c!192594 acc!225))) e!733454)))

(declare-fun b!1147414 () Bool)

(assert (=> b!1147414 (= e!733454 (inv!14466 (right!9952 (c!192594 acc!225))))))

(declare-fun b!1147415 () Bool)

(declare-fun e!733455 () Bool)

(assert (=> b!1147415 (= e!733454 e!733455)))

(declare-fun res!516156 () Bool)

(assert (=> b!1147415 (= res!516156 (not (is-Leaf!5525 (right!9952 (c!192594 acc!225)))))))

(assert (=> b!1147415 (=> res!516156 e!733455)))

(declare-fun b!1147416 () Bool)

(assert (=> b!1147416 (= e!733455 (inv!14467 (right!9952 (c!192594 acc!225))))))

(assert (= (and d!326660 c!192635) b!1147414))

(assert (= (and d!326660 (not c!192635)) b!1147415))

(assert (= (and b!1147415 (not res!516156)) b!1147416))

(declare-fun m!1309225 () Bool)

(assert (=> b!1147414 m!1309225))

(declare-fun m!1309227 () Bool)

(assert (=> b!1147416 m!1309227))

(assert (=> b!1147094 d!326660))

(assert (=> b!1146992 d!326544))

(assert (=> b!1146991 d!326548))

(declare-fun b!1147427 () Bool)

(declare-fun e!733462 () Bool)

(declare-fun tp!332177 () Bool)

(assert (=> b!1147427 (= e!733462 (and (inv!14455 (c!192592 (tokens!1495 (h!16462 (innerList!3621 (xs!6262 (c!192594 acc!225))))))) tp!332177))))

(declare-fun e!733464 () Bool)

(declare-fun tp!332175 () Bool)

(declare-fun b!1147426 () Bool)

(assert (=> b!1147426 (= e!733464 (and tp!332175 (inv!14454 (tokens!1495 (h!16462 (innerList!3621 (xs!6262 (c!192594 acc!225)))))) e!733462))))

(declare-fun tp!332176 () Bool)

(declare-fun e!733463 () Bool)

(declare-fun b!1147425 () Bool)

(assert (=> b!1147425 (= e!733463 (and (inv!14450 (h!16462 (innerList!3621 (xs!6262 (c!192594 acc!225))))) e!733464 tp!332176))))

(assert (=> b!1147096 (= tp!332124 e!733463)))

(assert (= b!1147426 b!1147427))

(assert (= b!1147425 b!1147426))

(assert (= (and b!1147096 (is-Cons!11061 (innerList!3621 (xs!6262 (c!192594 acc!225))))) b!1147425))

(declare-fun m!1309229 () Bool)

(assert (=> b!1147427 m!1309229))

(declare-fun m!1309231 () Bool)

(assert (=> b!1147426 m!1309231))

(declare-fun m!1309233 () Bool)

(assert (=> b!1147425 m!1309233))

(declare-fun b!1147441 () Bool)

(declare-fun b_free!27529 () Bool)

(declare-fun b_next!28233 () Bool)

(assert (=> b!1147441 (= b_free!27529 (not b_next!28233))))

(declare-fun tp!332186 () Bool)

(declare-fun b_and!80317 () Bool)

(assert (=> b!1147441 (= tp!332186 b_and!80317)))

(declare-fun b_free!27531 () Bool)

(declare-fun b_next!28235 () Bool)

(assert (=> b!1147441 (= b_free!27531 (not b_next!28235))))

(declare-fun tp!332185 () Bool)

(declare-fun b_and!80319 () Bool)

(assert (=> b!1147441 (= tp!332185 b_and!80319)))

(declare-fun e!733478 () Bool)

(assert (=> b!1147441 (= e!733478 (and tp!332186 tp!332185))))

(declare-fun b!1147439 () Bool)

(declare-fun e!733482 () Bool)

(declare-fun e!733480 () Bool)

(declare-fun inv!21 (TokenValue!1972) Bool)

(assert (=> b!1147439 (= e!733482 (and (inv!21 (value!62319 (h!16459 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21))))))) e!733480))))

(declare-fun tp!332184 () Bool)

(declare-fun b!1147438 () Bool)

(declare-fun e!733481 () Bool)

(declare-fun inv!14484 (Token!3474) Bool)

(assert (=> b!1147438 (= e!733481 (and (inv!14484 (h!16459 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21)))))) e!733482 tp!332184))))

(assert (=> b!1147107 (= tp!332133 e!733481)))

(declare-fun b!1147440 () Bool)

(assert (=> b!1147440 (= e!733480 (and (inv!14447 (tag!2168 (rule!3327 (h!16459 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21)))))))) (inv!14470 (transformation!1906 (rule!3327 (h!16459 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21)))))))) e!733478))))

(assert (= b!1147440 b!1147441))

(assert (= b!1147439 b!1147440))

(assert (= b!1147438 b!1147439))

(assert (= (and b!1147107 (is-Cons!11058 (innerList!3619 (xs!6260 (c!192592 (tokens!1495 pt!21)))))) b!1147438))

(declare-fun m!1309235 () Bool)

(assert (=> b!1147439 m!1309235))

(declare-fun m!1309237 () Bool)

(assert (=> b!1147438 m!1309237))

(declare-fun m!1309239 () Bool)

(assert (=> b!1147440 m!1309239))

(declare-fun m!1309241 () Bool)

(assert (=> b!1147440 m!1309241))

(declare-fun e!733484 () Bool)

(declare-fun tp!332189 () Bool)

(declare-fun b!1147442 () Bool)

(declare-fun tp!332188 () Bool)

(assert (=> b!1147442 (= e!733484 (and (inv!14456 (left!9622 (left!9622 (c!192594 acc!225)))) tp!332188 (inv!14456 (right!9952 (left!9622 (c!192594 acc!225)))) tp!332189))))

(declare-fun b!1147444 () Bool)

(declare-fun e!733483 () Bool)

(declare-fun tp!332187 () Bool)

(assert (=> b!1147444 (= e!733483 tp!332187)))

(declare-fun b!1147443 () Bool)

(assert (=> b!1147443 (= e!733484 (and (inv!14472 (xs!6262 (left!9622 (c!192594 acc!225)))) e!733483))))

(assert (=> b!1147094 (= tp!332125 (and (inv!14456 (left!9622 (c!192594 acc!225))) e!733484))))

(assert (= (and b!1147094 (is-Node!3561 (left!9622 (c!192594 acc!225)))) b!1147442))

(assert (= b!1147443 b!1147444))

(assert (= (and b!1147094 (is-Leaf!5525 (left!9622 (c!192594 acc!225)))) b!1147443))

(declare-fun m!1309243 () Bool)

(assert (=> b!1147442 m!1309243))

(declare-fun m!1309245 () Bool)

(assert (=> b!1147442 m!1309245))

(declare-fun m!1309247 () Bool)

(assert (=> b!1147443 m!1309247))

(assert (=> b!1147094 m!1308885))

(declare-fun tp!332191 () Bool)

(declare-fun e!733486 () Bool)

(declare-fun tp!332192 () Bool)

(declare-fun b!1147445 () Bool)

(assert (=> b!1147445 (= e!733486 (and (inv!14456 (left!9622 (right!9952 (c!192594 acc!225)))) tp!332191 (inv!14456 (right!9952 (right!9952 (c!192594 acc!225)))) tp!332192))))

(declare-fun b!1147447 () Bool)

(declare-fun e!733485 () Bool)

(declare-fun tp!332190 () Bool)

(assert (=> b!1147447 (= e!733485 tp!332190)))

(declare-fun b!1147446 () Bool)

(assert (=> b!1147446 (= e!733486 (and (inv!14472 (xs!6262 (right!9952 (c!192594 acc!225)))) e!733485))))

(assert (=> b!1147094 (= tp!332126 (and (inv!14456 (right!9952 (c!192594 acc!225))) e!733486))))

(assert (= (and b!1147094 (is-Node!3561 (right!9952 (c!192594 acc!225)))) b!1147445))

(assert (= b!1147446 b!1147447))

(assert (= (and b!1147094 (is-Leaf!5525 (right!9952 (c!192594 acc!225)))) b!1147446))

(declare-fun m!1309249 () Bool)

(assert (=> b!1147445 m!1309249))

(declare-fun m!1309251 () Bool)

(assert (=> b!1147445 m!1309251))

(declare-fun m!1309253 () Bool)

(assert (=> b!1147446 m!1309253))

(assert (=> b!1147094 m!1308887))

(declare-fun b!1147450 () Bool)

(declare-fun b_free!27533 () Bool)

(declare-fun b_next!28237 () Bool)

(assert (=> b!1147450 (= b_free!27533 (not b_next!28237))))

(declare-fun tp!332195 () Bool)

(declare-fun b_and!80321 () Bool)

(assert (=> b!1147450 (= tp!332195 b_and!80321)))

(declare-fun b_free!27535 () Bool)

(declare-fun b_next!28239 () Bool)

(assert (=> b!1147450 (= b_free!27535 (not b_next!28239))))

(declare-fun tp!332194 () Bool)

(declare-fun b_and!80323 () Bool)

(assert (=> b!1147450 (= tp!332194 b_and!80323)))

(declare-fun e!733487 () Bool)

(assert (=> b!1147450 (= e!733487 (and tp!332195 tp!332194))))

(declare-fun b!1147449 () Bool)

(declare-fun e!733489 () Bool)

(assert (=> b!1147449 (= e!733489 (and (inv!14447 (tag!2168 (h!16460 (t!108115 (rules!9333 pt!21))))) (inv!14470 (transformation!1906 (h!16460 (t!108115 (rules!9333 pt!21))))) e!733487))))

(declare-fun b!1147448 () Bool)

(declare-fun e!733490 () Bool)

(declare-fun tp!332193 () Bool)

(assert (=> b!1147448 (= e!733490 (and e!733489 tp!332193))))

(assert (=> b!1147075 (= tp!332109 e!733490)))

(assert (= b!1147449 b!1147450))

(assert (= b!1147448 b!1147449))

(assert (= (and b!1147075 (is-Cons!11059 (t!108115 (rules!9333 pt!21)))) b!1147448))

(declare-fun m!1309255 () Bool)

(assert (=> b!1147449 m!1309255))

(declare-fun m!1309257 () Bool)

(assert (=> b!1147449 m!1309257))

(declare-fun b!1147451 () Bool)

(declare-fun tp!332197 () Bool)

(declare-fun e!733491 () Bool)

(declare-fun tp!332198 () Bool)

(assert (=> b!1147451 (= e!733491 (and (inv!14455 (left!9620 (left!9620 (c!192592 (tokens!1495 pt!21))))) tp!332198 (inv!14455 (right!9950 (left!9620 (c!192592 (tokens!1495 pt!21))))) tp!332197))))

(declare-fun b!1147453 () Bool)

(declare-fun e!733492 () Bool)

(declare-fun tp!332196 () Bool)

(assert (=> b!1147453 (= e!733492 tp!332196)))

(declare-fun b!1147452 () Bool)

(assert (=> b!1147452 (= e!733491 (and (inv!14473 (xs!6260 (left!9620 (c!192592 (tokens!1495 pt!21))))) e!733492))))

(assert (=> b!1147105 (= tp!332135 (and (inv!14455 (left!9620 (c!192592 (tokens!1495 pt!21)))) e!733491))))

(assert (= (and b!1147105 (is-Node!3559 (left!9620 (c!192592 (tokens!1495 pt!21))))) b!1147451))

(assert (= b!1147452 b!1147453))

(assert (= (and b!1147105 (is-Leaf!5523 (left!9620 (c!192592 (tokens!1495 pt!21))))) b!1147452))

(declare-fun m!1309259 () Bool)

(assert (=> b!1147451 m!1309259))

(declare-fun m!1309261 () Bool)

(assert (=> b!1147451 m!1309261))

(declare-fun m!1309263 () Bool)

(assert (=> b!1147452 m!1309263))

(assert (=> b!1147105 m!1308891))

(declare-fun tp!332200 () Bool)

(declare-fun tp!332201 () Bool)

(declare-fun b!1147454 () Bool)

(declare-fun e!733493 () Bool)

(assert (=> b!1147454 (= e!733493 (and (inv!14455 (left!9620 (right!9950 (c!192592 (tokens!1495 pt!21))))) tp!332201 (inv!14455 (right!9950 (right!9950 (c!192592 (tokens!1495 pt!21))))) tp!332200))))

(declare-fun b!1147456 () Bool)

(declare-fun e!733494 () Bool)

(declare-fun tp!332199 () Bool)

(assert (=> b!1147456 (= e!733494 tp!332199)))

(declare-fun b!1147455 () Bool)

(assert (=> b!1147455 (= e!733493 (and (inv!14473 (xs!6260 (right!9950 (c!192592 (tokens!1495 pt!21))))) e!733494))))

(assert (=> b!1147105 (= tp!332134 (and (inv!14455 (right!9950 (c!192592 (tokens!1495 pt!21)))) e!733493))))

(assert (= (and b!1147105 (is-Node!3559 (right!9950 (c!192592 (tokens!1495 pt!21))))) b!1147454))

(assert (= b!1147455 b!1147456))

(assert (= (and b!1147105 (is-Leaf!5523 (right!9950 (c!192592 (tokens!1495 pt!21))))) b!1147455))

(declare-fun m!1309265 () Bool)

(assert (=> b!1147454 m!1309265))

(declare-fun m!1309267 () Bool)

(assert (=> b!1147454 m!1309267))

(declare-fun m!1309269 () Bool)

(assert (=> b!1147455 m!1309269))

(assert (=> b!1147105 m!1308893))

(declare-fun tp!332203 () Bool)

(declare-fun e!733495 () Bool)

(declare-fun b!1147457 () Bool)

(declare-fun tp!332202 () Bool)

(assert (=> b!1147457 (= e!733495 (and (inv!14453 (left!9621 (left!9621 (c!192593 indices!2)))) tp!332202 (inv!14453 (right!9951 (left!9621 (c!192593 indices!2)))) tp!332203))))

(declare-fun b!1147458 () Bool)

(assert (=> b!1147458 (= e!733495 (inv!14471 (xs!6261 (left!9621 (c!192593 indices!2)))))))

(assert (=> b!1147084 (= tp!332116 (and (inv!14453 (left!9621 (c!192593 indices!2))) e!733495))))

(assert (= (and b!1147084 (is-Node!3560 (left!9621 (c!192593 indices!2)))) b!1147457))

(assert (= (and b!1147084 (is-Leaf!5524 (left!9621 (c!192593 indices!2)))) b!1147458))

(declare-fun m!1309271 () Bool)

(assert (=> b!1147457 m!1309271))

(declare-fun m!1309273 () Bool)

(assert (=> b!1147457 m!1309273))

(declare-fun m!1309275 () Bool)

(assert (=> b!1147458 m!1309275))

(assert (=> b!1147084 m!1308879))

(declare-fun b!1147459 () Bool)

(declare-fun tp!332204 () Bool)

(declare-fun tp!332205 () Bool)

(declare-fun e!733497 () Bool)

(assert (=> b!1147459 (= e!733497 (and (inv!14453 (left!9621 (right!9951 (c!192593 indices!2)))) tp!332204 (inv!14453 (right!9951 (right!9951 (c!192593 indices!2)))) tp!332205))))

(declare-fun b!1147460 () Bool)

(assert (=> b!1147460 (= e!733497 (inv!14471 (xs!6261 (right!9951 (c!192593 indices!2)))))))

(assert (=> b!1147084 (= tp!332117 (and (inv!14453 (right!9951 (c!192593 indices!2))) e!733497))))

(assert (= (and b!1147084 (is-Node!3560 (right!9951 (c!192593 indices!2)))) b!1147459))

(assert (= (and b!1147084 (is-Leaf!5524 (right!9951 (c!192593 indices!2)))) b!1147460))

(declare-fun m!1309277 () Bool)

(assert (=> b!1147459 m!1309277))

(declare-fun m!1309279 () Bool)

(assert (=> b!1147459 m!1309279))

(declare-fun m!1309281 () Bool)

(assert (=> b!1147460 m!1309281))

(assert (=> b!1147084 m!1308881))

(declare-fun b_lambda!34165 () Bool)

(assert (= b_lambda!34161 (or b!1146986 b_lambda!34165)))

(declare-fun bs!281243 () Bool)

(declare-fun d!326662 () Bool)

(assert (= bs!281243 (and d!326662 b!1146986)))

(assert (=> bs!281243 (= (dynLambda!4897 lambda!46161 (h!16462 (list!4064 acc!225))) (usesJsonRules!0 (h!16462 (list!4064 acc!225))))))

(declare-fun m!1309283 () Bool)

(assert (=> bs!281243 m!1309283))

(assert (=> b!1147301 d!326662))

(declare-fun b_lambda!34167 () Bool)

(assert (= b_lambda!34159 (or b!1146988 b_lambda!34167)))

(declare-fun bs!281244 () Bool)

(declare-fun d!326664 () Bool)

(assert (= bs!281244 (and d!326664 b!1146988)))

(assert (=> bs!281244 (= (dynLambda!4896 lambda!46160 (h!16461 (list!4063 indices!2))) (and (<= 0 (h!16461 (list!4063 indices!2))) (< (h!16461 (list!4063 indices!2)) size!108)))))

(assert (=> b!1147247 d!326664))

(push 1)

(assert (not b!1147456))

(assert (not b!1147427))

(assert (not b!1147458))

(assert b_and!80323)

(assert (not b!1147414))

(assert (not b!1147094))

(assert (not d!326648))

(assert (not b!1147439))

(assert (not b!1147248))

(assert (not b!1147328))

(assert (not d!326596))

(assert (not b!1147426))

(assert (not d!326624))

(assert (not b!1147330))

(assert b_and!80309)

(assert (not b!1147425))

(assert (not b!1147443))

(assert (not d!326650))

(assert (not b!1147440))

(assert (not b!1147451))

(assert (not b!1147329))

(assert (not b!1147290))

(assert b_and!80319)

(assert (not b_next!28237))

(assert (not d!326640))

(assert (not b_next!28233))

(assert (not d!326586))

(assert (not b!1147314))

(assert (not b!1147448))

(assert (not b!1147327))

(assert (not b!1147454))

(assert (not b!1147382))

(assert b_and!80321)

(assert (not b!1147460))

(assert (not b!1147241))

(assert (not b!1147410))

(assert (not b_next!28235))

(assert (not b!1147381))

(assert (not d!326592))

(assert (not b!1147259))

(assert (not b!1147281))

(assert (not b!1147258))

(assert (not b!1147084))

(assert (not b!1147408))

(assert (not b!1147442))

(assert (not b!1147220))

(assert (not b!1147284))

(assert (not b!1147413))

(assert (not b_next!28225))

(assert (not b!1147105))

(assert (not b!1147392))

(assert (not b!1147444))

(assert (not b_lambda!34165))

(assert (not b!1147452))

(assert (not b!1147345))

(assert (not b!1147380))

(assert (not b!1147447))

(assert (not b!1147312))

(assert (not d!326634))

(assert (not b!1147379))

(assert (not b!1147411))

(assert (not b!1147457))

(assert (not b!1147347))

(assert (not b!1147453))

(assert (not d!326590))

(assert (not b!1147459))

(assert (not d!326598))

(assert (not b!1147416))

(assert (not b!1147340))

(assert (not d!326616))

(assert (not b!1147406))

(assert (not b!1147331))

(assert (not b!1147229))

(assert (not b!1147302))

(assert b_and!80317)

(assert (not b!1147344))

(assert (not b!1147332))

(assert (not b!1147455))

(assert (not b!1147438))

(assert (not b!1147277))

(assert (not b_next!28227))

(assert (not b!1147279))

(assert (not b!1147383))

(assert (not d!326620))

(assert (not b_next!28239))

(assert (not d!326600))

(assert (not b!1147358))

(assert (not b!1147405))

(assert (not d!326614))

(assert (not d!326566))

(assert (not d!326628))

(assert (not b_lambda!34167))

(assert (not b!1147449))

(assert (not bs!281243))

(assert (not b!1147446))

(assert (not b!1147407))

(assert (not b!1147342))

(assert (not d!326602))

(assert (not b!1147282))

(assert (not b!1147378))

(assert (not b!1147409))

(assert (not b!1147260))

(assert (not b!1147268))

(assert (not d!326558))

(assert (not d!326604))

(assert (not d!326622))

(assert (not b!1147445))

(assert (not b!1147295))

(assert (not b!1147313))

(assert b_and!80311)

(assert (not b!1147263))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80323)

(assert b_and!80309)

(assert (not b_next!28233))

(assert b_and!80321)

(assert (not b_next!28235))

(assert (not b_next!28225))

(assert b_and!80317)

(assert (not b_next!28227))

(assert (not b_next!28239))

(assert b_and!80311)

(assert b_and!80319)

(assert (not b_next!28237))

(check-sat)

(pop 1)

