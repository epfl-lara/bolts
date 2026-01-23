; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100948 () Bool)

(assert start!100948)

(declare-fun b!1156429 () Bool)

(declare-fun e!739691 () Bool)

(assert (=> b!1156429 (= e!739691 true)))

(declare-fun b!1156428 () Bool)

(declare-fun e!739690 () Bool)

(assert (=> b!1156428 (= e!739690 e!739691)))

(declare-fun b!1156421 () Bool)

(assert (=> b!1156421 e!739690))

(assert (= b!1156428 b!1156429))

(assert (= b!1156421 b!1156428))

(declare-fun b!1156413 () Bool)

(declare-fun e!739681 () Bool)

(declare-fun e!739684 () Bool)

(assert (=> b!1156413 (= e!739681 e!739684)))

(declare-fun res!520434 () Bool)

(assert (=> b!1156413 (=> (not res!520434) (not e!739684))))

(declare-datatypes ((List!11278 0))(
  ( (Nil!11254) (Cons!11254 (h!16655 (_ BitVec 16)) (t!109047 List!11278)) )
))
(declare-datatypes ((TokenValue!2014 0))(
  ( (FloatLiteralValue!4028 (text!14543 List!11278)) (TokenValueExt!2013 (__x!7739 Int)) (Broken!10070 (value!63490 List!11278)) (Object!2037) (End!2014) (Def!2014) (Underscore!2014) (Match!2014) (Else!2014) (Error!2014) (Case!2014) (If!2014) (Extends!2014) (Abstract!2014) (Class!2014) (Val!2014) (DelimiterValue!4028 (del!2074 List!11278)) (KeywordValue!2020 (value!63491 List!11278)) (CommentValue!4028 (value!63492 List!11278)) (WhitespaceValue!4028 (value!63493 List!11278)) (IndentationValue!2014 (value!63494 List!11278)) (String!13659) (Int32!2014) (Broken!10071 (value!63495 List!11278)) (Boolean!2015) (Unit!17280) (OperatorValue!2017 (op!2074 List!11278)) (IdentifierValue!4028 (value!63496 List!11278)) (IdentifierValue!4029 (value!63497 List!11278)) (WhitespaceValue!4029 (value!63498 List!11278)) (True!4028) (False!4028) (Broken!10072 (value!63499 List!11278)) (Broken!10073 (value!63500 List!11278)) (True!4029) (RightBrace!2014) (RightBracket!2014) (Colon!2014) (Null!2014) (Comma!2014) (LeftBracket!2014) (False!4029) (LeftBrace!2014) (ImaginaryLiteralValue!2014 (text!14544 List!11278)) (StringLiteralValue!6042 (value!63501 List!11278)) (EOFValue!2014 (value!63502 List!11278)) (IdentValue!2014 (value!63503 List!11278)) (DelimiterValue!4029 (value!63504 List!11278)) (DedentValue!2014 (value!63505 List!11278)) (NewLineValue!2014 (value!63506 List!11278)) (IntegerValue!6042 (value!63507 (_ BitVec 32)) (text!14545 List!11278)) (IntegerValue!6043 (value!63508 Int) (text!14546 List!11278)) (Times!2014) (Or!2014) (Equal!2014) (Minus!2014) (Broken!10074 (value!63509 List!11278)) (And!2014) (Div!2014) (LessEqual!2014) (Mod!2014) (Concat!5232) (Not!2014) (Plus!2014) (SpaceValue!2014 (value!63510 List!11278)) (IntegerValue!6044 (value!63511 Int) (text!14547 List!11278)) (StringLiteralValue!6043 (text!14548 List!11278)) (FloatLiteralValue!4029 (text!14549 List!11278)) (BytesLiteralValue!2014 (value!63512 List!11278)) (CommentValue!4029 (value!63513 List!11278)) (StringLiteralValue!6044 (value!63514 List!11278)) (ErrorTokenValue!2014 (msg!2075 List!11278)) )
))
(declare-datatypes ((C!6754 0))(
  ( (C!6755 (val!3633 Int)) )
))
(declare-datatypes ((Regex!3218 0))(
  ( (ElementMatch!3218 (c!194059 C!6754)) (Concat!5233 (regOne!6948 Regex!3218) (regTwo!6948 Regex!3218)) (EmptyExpr!3218) (Star!3218 (reg!3547 Regex!3218)) (EmptyLang!3218) (Union!3218 (regOne!6949 Regex!3218) (regTwo!6949 Regex!3218)) )
))
(declare-datatypes ((String!13660 0))(
  ( (String!13661 (value!63515 String)) )
))
(declare-datatypes ((List!11279 0))(
  ( (Nil!11255) (Cons!11255 (h!16656 C!6754) (t!109048 List!11279)) )
))
(declare-datatypes ((IArray!7321 0))(
  ( (IArray!7322 (innerList!3718 List!11279)) )
))
(declare-datatypes ((Conc!3658 0))(
  ( (Node!3658 (left!9812 Conc!3658) (right!10142 Conc!3658) (csize!7546 Int) (cheight!3869 Int)) (Leaf!5643 (xs!6363 IArray!7321) (csize!7547 Int)) (Empty!3658) )
))
(declare-datatypes ((BalanceConc!7338 0))(
  ( (BalanceConc!7339 (c!194060 Conc!3658)) )
))
(declare-datatypes ((TokenValueInjection!3728 0))(
  ( (TokenValueInjection!3729 (toValue!3049 Int) (toChars!2908 Int)) )
))
(declare-datatypes ((Rule!3696 0))(
  ( (Rule!3697 (regex!1948 Regex!3218) (tag!2210 String!13660) (isSeparator!1948 Bool) (transformation!1948 TokenValueInjection!3728)) )
))
(declare-datatypes ((Token!3558 0))(
  ( (Token!3559 (value!63516 TokenValue!2014) (rule!3369 Rule!3696) (size!8854 Int) (originalCharacters!2502 List!11279)) )
))
(declare-datatypes ((List!11280 0))(
  ( (Nil!11256) (Cons!11256 (h!16657 Token!3558) (t!109049 List!11280)) )
))
(declare-datatypes ((List!11281 0))(
  ( (Nil!11257) (Cons!11257 (h!16658 Rule!3696) (t!109050 List!11281)) )
))
(declare-datatypes ((IArray!7323 0))(
  ( (IArray!7324 (innerList!3719 List!11280)) )
))
(declare-datatypes ((Conc!3659 0))(
  ( (Node!3659 (left!9813 Conc!3659) (right!10143 Conc!3659) (csize!7548 Int) (cheight!3870 Int)) (Leaf!5644 (xs!6364 IArray!7323) (csize!7549 Int)) (Empty!3659) )
))
(declare-datatypes ((BalanceConc!7340 0))(
  ( (BalanceConc!7341 (c!194061 Conc!3659)) )
))
(declare-datatypes ((PrintableTokens!582 0))(
  ( (PrintableTokens!583 (rules!9425 List!11281) (tokens!1547 BalanceConc!7340)) )
))
(declare-fun thiss!10527 () PrintableTokens!582)

(declare-datatypes ((LexerInterface!1643 0))(
  ( (LexerInterfaceExt!1640 (__x!7740 Int)) (Lexer!1641) )
))
(declare-fun rulesInvariant!1517 (LexerInterface!1643 List!11281) Bool)

(assert (=> b!1156413 (= res!520434 (rulesInvariant!1517 Lexer!1641 (rules!9425 thiss!10527)))))

(declare-datatypes ((Unit!17281 0))(
  ( (Unit!17282) )
))
(declare-fun lt!393131 () Unit!17281)

(declare-fun lemmaInvariant!135 (PrintableTokens!582) Unit!17281)

(assert (=> b!1156413 (= lt!393131 (lemmaInvariant!135 thiss!10527))))

(declare-fun res!520438 () Bool)

(assert (=> start!100948 (=> (not res!520438) (not e!739681))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100948 (= res!520438 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100948 e!739681))

(assert (=> start!100948 true))

(declare-fun e!739678 () Bool)

(declare-fun inv!14781 (PrintableTokens!582) Bool)

(assert (=> start!100948 (and (inv!14781 thiss!10527) e!739678)))

(declare-fun b!1156414 () Bool)

(declare-fun e!739682 () Bool)

(declare-fun lt!393128 () List!11280)

(declare-fun rulesProduceEachTokenIndividuallyList!511 (LexerInterface!1643 List!11281 List!11280) Bool)

(assert (=> b!1156414 (= e!739682 (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (t!109049 lt!393128)))))

(declare-fun b!1156415 () Bool)

(declare-fun res!520435 () Bool)

(assert (=> b!1156415 (=> (not res!520435) (not e!739681))))

(declare-fun size!8855 (BalanceConc!7340) Int)

(assert (=> b!1156415 (= res!520435 (<= to!267 (size!8855 (tokens!1547 thiss!10527))))))

(declare-fun e!739683 () Bool)

(declare-fun tp!333216 () Bool)

(declare-fun b!1156416 () Bool)

(declare-fun inv!14782 (BalanceConc!7340) Bool)

(assert (=> b!1156416 (= e!739678 (and tp!333216 (inv!14782 (tokens!1547 thiss!10527)) e!739683))))

(declare-fun b!1156417 () Bool)

(declare-fun tp!333215 () Bool)

(declare-fun inv!14783 (Conc!3659) Bool)

(assert (=> b!1156417 (= e!739683 (and (inv!14783 (c!194061 (tokens!1547 thiss!10527))) tp!333215))))

(declare-fun lt!393129 () BalanceConc!7340)

(declare-fun e!739685 () Bool)

(declare-fun b!1156418 () Bool)

(declare-fun lambda!46694 () Int)

(declare-fun rulesProduceEachTokenIndividually!682 (LexerInterface!1643 List!11281 BalanceConc!7340) Bool)

(declare-fun forall!2885 (BalanceConc!7340 Int) Bool)

(assert (=> b!1156418 (= e!739685 (= (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) lt!393129) (forall!2885 lt!393129 lambda!46694)))))

(declare-fun b!1156419 () Bool)

(declare-fun e!739680 () Bool)

(declare-fun isEmpty!6931 (List!11281) Bool)

(assert (=> b!1156419 (= e!739680 (not (isEmpty!6931 (rules!9425 thiss!10527))))))

(assert (=> b!1156419 e!739685))

(declare-fun res!520437 () Bool)

(assert (=> b!1156419 (=> (not res!520437) (not e!739685))))

(declare-fun lt!393130 () List!11280)

(declare-fun forall!2886 (List!11280 Int) Bool)

(assert (=> b!1156419 (= res!520437 (forall!2886 lt!393130 lambda!46694))))

(declare-fun lt!393127 () Unit!17281)

(declare-fun lemmaForallSubseq!96 (List!11280 List!11280 Int) Unit!17281)

(assert (=> b!1156419 (= lt!393127 (lemmaForallSubseq!96 lt!393130 lt!393128 lambda!46694))))

(declare-fun list!4148 (BalanceConc!7340) List!11280)

(assert (=> b!1156419 (= lt!393130 (list!4148 lt!393129))))

(declare-fun slice!178 (BalanceConc!7340 Int Int) BalanceConc!7340)

(assert (=> b!1156419 (= lt!393129 (slice!178 (tokens!1547 thiss!10527) from!787 to!267))))

(declare-fun subseq!204 (List!11280 List!11280) Bool)

(declare-fun slice!179 (List!11280 Int Int) List!11280)

(assert (=> b!1156419 (subseq!204 (slice!179 lt!393128 from!787 to!267) lt!393128)))

(declare-fun lt!393132 () Unit!17281)

(declare-fun lemmaSliceSubseq!45 (List!11280 Int Int) Unit!17281)

(assert (=> b!1156419 (= lt!393132 (lemmaSliceSubseq!45 lt!393128 from!787 to!267))))

(declare-fun b!1156420 () Bool)

(declare-fun e!739679 () Bool)

(assert (=> b!1156420 (= e!739679 e!739682)))

(declare-fun res!520436 () Bool)

(assert (=> b!1156420 (=> (not res!520436) (not e!739682))))

(declare-fun rulesProduceIndividualToken!680 (LexerInterface!1643 List!11281 Token!3558) Bool)

(assert (=> b!1156420 (= res!520436 (rulesProduceIndividualToken!680 Lexer!1641 (rules!9425 thiss!10527) (h!16657 lt!393128)))))

(assert (=> b!1156421 (= e!739684 (not e!739680))))

(declare-fun res!520432 () Bool)

(assert (=> b!1156421 (=> res!520432 e!739680)))

(assert (=> b!1156421 (= res!520432 (not (forall!2885 (tokens!1547 thiss!10527) lambda!46694)))))

(assert (=> b!1156421 (= (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) lt!393128) e!739679)))

(declare-fun res!520433 () Bool)

(assert (=> b!1156421 (=> res!520433 e!739679)))

(assert (=> b!1156421 (= res!520433 (not (is-Cons!11256 lt!393128)))))

(assert (=> b!1156421 (= lt!393128 (list!4148 (tokens!1547 thiss!10527)))))

(assert (=> b!1156421 (= (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) (tokens!1547 thiss!10527)) (forall!2885 (tokens!1547 thiss!10527) lambda!46694))))

(assert (= (and start!100948 res!520438) b!1156415))

(assert (= (and b!1156415 res!520435) b!1156413))

(assert (= (and b!1156413 res!520434) b!1156421))

(assert (= (and b!1156421 (not res!520433)) b!1156420))

(assert (= (and b!1156420 res!520436) b!1156414))

(assert (= (and b!1156421 (not res!520432)) b!1156419))

(assert (= (and b!1156419 res!520437) b!1156418))

(assert (= b!1156416 b!1156417))

(assert (= start!100948 b!1156416))

(declare-fun m!1323219 () Bool)

(assert (=> b!1156415 m!1323219))

(declare-fun m!1323221 () Bool)

(assert (=> b!1156416 m!1323221))

(declare-fun m!1323223 () Bool)

(assert (=> b!1156413 m!1323223))

(declare-fun m!1323225 () Bool)

(assert (=> b!1156413 m!1323225))

(declare-fun m!1323227 () Bool)

(assert (=> b!1156420 m!1323227))

(declare-fun m!1323229 () Bool)

(assert (=> b!1156421 m!1323229))

(declare-fun m!1323231 () Bool)

(assert (=> b!1156421 m!1323231))

(declare-fun m!1323233 () Bool)

(assert (=> b!1156421 m!1323233))

(assert (=> b!1156421 m!1323231))

(declare-fun m!1323235 () Bool)

(assert (=> b!1156421 m!1323235))

(declare-fun m!1323237 () Bool)

(assert (=> b!1156414 m!1323237))

(declare-fun m!1323239 () Bool)

(assert (=> b!1156417 m!1323239))

(declare-fun m!1323241 () Bool)

(assert (=> b!1156418 m!1323241))

(declare-fun m!1323243 () Bool)

(assert (=> b!1156418 m!1323243))

(declare-fun m!1323245 () Bool)

(assert (=> b!1156419 m!1323245))

(declare-fun m!1323247 () Bool)

(assert (=> b!1156419 m!1323247))

(declare-fun m!1323249 () Bool)

(assert (=> b!1156419 m!1323249))

(declare-fun m!1323251 () Bool)

(assert (=> b!1156419 m!1323251))

(declare-fun m!1323253 () Bool)

(assert (=> b!1156419 m!1323253))

(declare-fun m!1323255 () Bool)

(assert (=> b!1156419 m!1323255))

(declare-fun m!1323257 () Bool)

(assert (=> b!1156419 m!1323257))

(assert (=> b!1156419 m!1323247))

(declare-fun m!1323259 () Bool)

(assert (=> b!1156419 m!1323259))

(declare-fun m!1323261 () Bool)

(assert (=> start!100948 m!1323261))

(push 1)

(assert (not b!1156415))

(assert (not b!1156420))

(assert (not b!1156418))

(assert (not b!1156414))

(assert (not b!1156419))

(assert (not start!100948))

(assert (not b!1156428))

(assert (not b!1156429))

(assert (not b!1156417))

(assert (not b!1156413))

(assert (not b!1156421))

(assert (not b!1156416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330507 () Bool)

(declare-fun res!520464 () Bool)

(declare-fun e!739724 () Bool)

(assert (=> d!330507 (=> (not res!520464) (not e!739724))))

(declare-fun rulesValid!674 (LexerInterface!1643 List!11281) Bool)

(assert (=> d!330507 (= res!520464 (rulesValid!674 Lexer!1641 (rules!9425 thiss!10527)))))

(assert (=> d!330507 (= (rulesInvariant!1517 Lexer!1641 (rules!9425 thiss!10527)) e!739724)))

(declare-fun b!1156467 () Bool)

(declare-datatypes ((List!11286 0))(
  ( (Nil!11262) (Cons!11262 (h!16663 String!13660) (t!109078 List!11286)) )
))
(declare-fun noDuplicateTag!674 (LexerInterface!1643 List!11281 List!11286) Bool)

(assert (=> b!1156467 (= e!739724 (noDuplicateTag!674 Lexer!1641 (rules!9425 thiss!10527) Nil!11262))))

(assert (= (and d!330507 res!520464) b!1156467))

(declare-fun m!1323307 () Bool)

(assert (=> d!330507 m!1323307))

(declare-fun m!1323309 () Bool)

(assert (=> b!1156467 m!1323309))

(assert (=> b!1156413 d!330507))

(declare-fun d!330509 () Bool)

(declare-fun e!739727 () Bool)

(assert (=> d!330509 e!739727))

(declare-fun res!520471 () Bool)

(assert (=> d!330509 (=> (not res!520471) (not e!739727))))

(assert (=> d!330509 (= res!520471 (rulesInvariant!1517 Lexer!1641 (rules!9425 thiss!10527)))))

(declare-fun Unit!17286 () Unit!17281)

(assert (=> d!330509 (= (lemmaInvariant!135 thiss!10527) Unit!17286)))

(declare-fun b!1156472 () Bool)

(declare-fun res!520472 () Bool)

(assert (=> b!1156472 (=> (not res!520472) (not e!739727))))

(assert (=> b!1156472 (= res!520472 (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) (tokens!1547 thiss!10527)))))

(declare-fun b!1156473 () Bool)

(declare-fun separableTokens!94 (LexerInterface!1643 BalanceConc!7340 List!11281) Bool)

(assert (=> b!1156473 (= e!739727 (separableTokens!94 Lexer!1641 (tokens!1547 thiss!10527) (rules!9425 thiss!10527)))))

(assert (= (and d!330509 res!520471) b!1156472))

(assert (= (and b!1156472 res!520472) b!1156473))

(assert (=> d!330509 m!1323223))

(assert (=> b!1156472 m!1323235))

(declare-fun m!1323317 () Bool)

(assert (=> b!1156473 m!1323317))

(assert (=> b!1156413 d!330509))

(declare-fun bs!282927 () Bool)

(declare-fun d!330517 () Bool)

(assert (= bs!282927 (and d!330517 b!1156421)))

(declare-fun lambda!46708 () Int)

(assert (=> bs!282927 (= lambda!46708 lambda!46694)))

(declare-fun b!1156487 () Bool)

(declare-fun e!739739 () Bool)

(assert (=> b!1156487 (= e!739739 true)))

(declare-fun b!1156486 () Bool)

(declare-fun e!739738 () Bool)

(assert (=> b!1156486 (= e!739738 e!739739)))

(declare-fun b!1156485 () Bool)

(declare-fun e!739737 () Bool)

(assert (=> b!1156485 (= e!739737 e!739738)))

(assert (=> d!330517 e!739737))

(assert (= b!1156486 b!1156487))

(assert (= b!1156485 b!1156486))

(assert (= (and d!330517 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156485))

(declare-fun order!6879 () Int)

(declare-fun order!6881 () Int)

(declare-fun dynLambda!4959 (Int Int) Int)

(declare-fun dynLambda!4960 (Int Int) Int)

(assert (=> b!1156487 (< (dynLambda!4959 order!6879 (toValue!3049 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46708))))

(declare-fun order!6883 () Int)

(declare-fun dynLambda!4961 (Int Int) Int)

(assert (=> b!1156487 (< (dynLambda!4961 order!6883 (toChars!2908 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46708))))

(assert (=> d!330517 true))

(declare-fun e!739730 () Bool)

(assert (=> d!330517 e!739730))

(declare-fun res!520475 () Bool)

(assert (=> d!330517 (=> (not res!520475) (not e!739730))))

(declare-fun lt!393156 () Bool)

(assert (=> d!330517 (= res!520475 (= lt!393156 (forall!2886 (list!4148 lt!393129) lambda!46708)))))

(assert (=> d!330517 (= lt!393156 (forall!2885 lt!393129 lambda!46708))))

(assert (=> d!330517 (not (isEmpty!6931 (rules!9425 thiss!10527)))))

(assert (=> d!330517 (= (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) lt!393129) lt!393156)))

(declare-fun b!1156476 () Bool)

(assert (=> b!1156476 (= e!739730 (= lt!393156 (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (list!4148 lt!393129))))))

(assert (= (and d!330517 res!520475) b!1156476))

(assert (=> d!330517 m!1323257))

(assert (=> d!330517 m!1323257))

(declare-fun m!1323319 () Bool)

(assert (=> d!330517 m!1323319))

(declare-fun m!1323321 () Bool)

(assert (=> d!330517 m!1323321))

(assert (=> d!330517 m!1323245))

(assert (=> b!1156476 m!1323257))

(assert (=> b!1156476 m!1323257))

(declare-fun m!1323323 () Bool)

(assert (=> b!1156476 m!1323323))

(assert (=> b!1156418 d!330517))

(declare-fun d!330519 () Bool)

(declare-fun lt!393161 () Bool)

(assert (=> d!330519 (= lt!393161 (forall!2886 (list!4148 lt!393129) lambda!46694))))

(declare-fun forall!2889 (Conc!3659 Int) Bool)

(assert (=> d!330519 (= lt!393161 (forall!2889 (c!194061 lt!393129) lambda!46694))))

(assert (=> d!330519 (= (forall!2885 lt!393129 lambda!46694) lt!393161)))

(declare-fun bs!282928 () Bool)

(assert (= bs!282928 d!330519))

(assert (=> bs!282928 m!1323257))

(assert (=> bs!282928 m!1323257))

(declare-fun m!1323325 () Bool)

(assert (=> bs!282928 m!1323325))

(declare-fun m!1323327 () Bool)

(assert (=> bs!282928 m!1323327))

(assert (=> b!1156418 d!330519))

(declare-fun d!330521 () Bool)

(assert (=> d!330521 (subseq!204 (slice!179 lt!393128 from!787 to!267) lt!393128)))

(declare-fun lt!393164 () Unit!17281)

(declare-fun choose!7422 (List!11280 Int Int) Unit!17281)

(assert (=> d!330521 (= lt!393164 (choose!7422 lt!393128 from!787 to!267))))

(declare-fun e!739744 () Bool)

(assert (=> d!330521 e!739744))

(declare-fun res!520480 () Bool)

(assert (=> d!330521 (=> (not res!520480) (not e!739744))))

(assert (=> d!330521 (= res!520480 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330521 (= (lemmaSliceSubseq!45 lt!393128 from!787 to!267) lt!393164)))

(declare-fun b!1156492 () Bool)

(declare-fun size!8858 (List!11280) Int)

(assert (=> b!1156492 (= e!739744 (<= to!267 (size!8858 lt!393128)))))

(assert (= (and d!330521 res!520480) b!1156492))

(assert (=> d!330521 m!1323247))

(assert (=> d!330521 m!1323247))

(assert (=> d!330521 m!1323259))

(declare-fun m!1323329 () Bool)

(assert (=> d!330521 m!1323329))

(declare-fun m!1323331 () Bool)

(assert (=> b!1156492 m!1323331))

(assert (=> b!1156419 d!330521))

(declare-fun d!330523 () Bool)

(assert (=> d!330523 (= (isEmpty!6931 (rules!9425 thiss!10527)) (is-Nil!11257 (rules!9425 thiss!10527)))))

(assert (=> b!1156419 d!330523))

(declare-fun d!330525 () Bool)

(declare-fun take!43 (List!11280 Int) List!11280)

(declare-fun drop!445 (List!11280 Int) List!11280)

(assert (=> d!330525 (= (slice!179 lt!393128 from!787 to!267) (take!43 (drop!445 lt!393128 from!787) (- to!267 from!787)))))

(declare-fun bs!282929 () Bool)

(assert (= bs!282929 d!330525))

(declare-fun m!1323333 () Bool)

(assert (=> bs!282929 m!1323333))

(assert (=> bs!282929 m!1323333))

(declare-fun m!1323335 () Bool)

(assert (=> bs!282929 m!1323335))

(assert (=> b!1156419 d!330525))

(declare-fun d!330527 () Bool)

(declare-fun list!4150 (Conc!3659) List!11280)

(assert (=> d!330527 (= (list!4148 lt!393129) (list!4150 (c!194061 lt!393129)))))

(declare-fun bs!282930 () Bool)

(assert (= bs!282930 d!330527))

(declare-fun m!1323337 () Bool)

(assert (=> bs!282930 m!1323337))

(assert (=> b!1156419 d!330527))

(declare-fun b!1156516 () Bool)

(declare-fun e!739765 () Bool)

(declare-fun e!739766 () Bool)

(assert (=> b!1156516 (= e!739765 e!739766)))

(declare-fun res!520493 () Bool)

(assert (=> b!1156516 (=> res!520493 e!739766)))

(declare-fun e!739763 () Bool)

(assert (=> b!1156516 (= res!520493 e!739763)))

(declare-fun res!520492 () Bool)

(assert (=> b!1156516 (=> (not res!520492) (not e!739763))))

(assert (=> b!1156516 (= res!520492 (= (h!16657 (slice!179 lt!393128 from!787 to!267)) (h!16657 lt!393128)))))

(declare-fun b!1156518 () Bool)

(assert (=> b!1156518 (= e!739766 (subseq!204 (slice!179 lt!393128 from!787 to!267) (t!109049 lt!393128)))))

(declare-fun b!1156515 () Bool)

(declare-fun e!739764 () Bool)

(assert (=> b!1156515 (= e!739764 e!739765)))

(declare-fun res!520491 () Bool)

(assert (=> b!1156515 (=> (not res!520491) (not e!739765))))

(assert (=> b!1156515 (= res!520491 (is-Cons!11256 lt!393128))))

(declare-fun d!330529 () Bool)

(declare-fun res!520490 () Bool)

(assert (=> d!330529 (=> res!520490 e!739764)))

(assert (=> d!330529 (= res!520490 (is-Nil!11256 (slice!179 lt!393128 from!787 to!267)))))

(assert (=> d!330529 (= (subseq!204 (slice!179 lt!393128 from!787 to!267) lt!393128) e!739764)))

(declare-fun b!1156517 () Bool)

(assert (=> b!1156517 (= e!739763 (subseq!204 (t!109049 (slice!179 lt!393128 from!787 to!267)) (t!109049 lt!393128)))))

(assert (= (and d!330529 (not res!520490)) b!1156515))

(assert (= (and b!1156515 res!520491) b!1156516))

(assert (= (and b!1156516 res!520492) b!1156517))

(assert (= (and b!1156516 (not res!520493)) b!1156518))

(assert (=> b!1156518 m!1323247))

(declare-fun m!1323339 () Bool)

(assert (=> b!1156518 m!1323339))

(declare-fun m!1323341 () Bool)

(assert (=> b!1156517 m!1323341))

(assert (=> b!1156419 d!330529))

(declare-fun d!330531 () Bool)

(declare-fun e!739778 () Bool)

(assert (=> d!330531 e!739778))

(declare-fun res!520504 () Bool)

(assert (=> d!330531 (=> (not res!520504) (not e!739778))))

(declare-fun isBalanced!1032 (Conc!3659) Bool)

(declare-fun slice!182 (Conc!3659 Int Int) Conc!3659)

(assert (=> d!330531 (= res!520504 (isBalanced!1032 (slice!182 (c!194061 (tokens!1547 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393171 () BalanceConc!7340)

(assert (=> d!330531 (= lt!393171 (BalanceConc!7341 (slice!182 (c!194061 (tokens!1547 thiss!10527)) from!787 to!267)))))

(declare-fun e!739777 () Bool)

(assert (=> d!330531 e!739777))

(declare-fun res!520505 () Bool)

(assert (=> d!330531 (=> (not res!520505) (not e!739777))))

(assert (=> d!330531 (= res!520505 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330531 (= (slice!178 (tokens!1547 thiss!10527) from!787 to!267) lt!393171)))

(declare-fun b!1156536 () Bool)

(declare-fun res!520503 () Bool)

(assert (=> b!1156536 (=> (not res!520503) (not e!739777))))

(assert (=> b!1156536 (= res!520503 (<= to!267 (size!8855 (tokens!1547 thiss!10527))))))

(declare-fun b!1156537 () Bool)

(assert (=> b!1156537 (= e!739777 (isBalanced!1032 (c!194061 (tokens!1547 thiss!10527))))))

(declare-fun b!1156538 () Bool)

(assert (=> b!1156538 (= e!739778 (= (list!4148 lt!393171) (slice!179 (list!4148 (tokens!1547 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330531 res!520505) b!1156536))

(assert (= (and b!1156536 res!520503) b!1156537))

(assert (= (and d!330531 res!520504) b!1156538))

(declare-fun m!1323357 () Bool)

(assert (=> d!330531 m!1323357))

(assert (=> d!330531 m!1323357))

(declare-fun m!1323359 () Bool)

(assert (=> d!330531 m!1323359))

(assert (=> b!1156536 m!1323219))

(declare-fun m!1323361 () Bool)

(assert (=> b!1156537 m!1323361))

(declare-fun m!1323363 () Bool)

(assert (=> b!1156538 m!1323363))

(assert (=> b!1156538 m!1323233))

(assert (=> b!1156538 m!1323233))

(declare-fun m!1323365 () Bool)

(assert (=> b!1156538 m!1323365))

(assert (=> b!1156419 d!330531))

(declare-fun d!330539 () Bool)

(declare-fun res!520510 () Bool)

(declare-fun e!739783 () Bool)

(assert (=> d!330539 (=> res!520510 e!739783)))

(assert (=> d!330539 (= res!520510 (is-Nil!11256 lt!393130))))

(assert (=> d!330539 (= (forall!2886 lt!393130 lambda!46694) e!739783)))

(declare-fun b!1156543 () Bool)

(declare-fun e!739784 () Bool)

(assert (=> b!1156543 (= e!739783 e!739784)))

(declare-fun res!520511 () Bool)

(assert (=> b!1156543 (=> (not res!520511) (not e!739784))))

(declare-fun dynLambda!4962 (Int Token!3558) Bool)

(assert (=> b!1156543 (= res!520511 (dynLambda!4962 lambda!46694 (h!16657 lt!393130)))))

(declare-fun b!1156544 () Bool)

(assert (=> b!1156544 (= e!739784 (forall!2886 (t!109049 lt!393130) lambda!46694))))

(assert (= (and d!330539 (not res!520510)) b!1156543))

(assert (= (and b!1156543 res!520511) b!1156544))

(declare-fun b_lambda!34551 () Bool)

(assert (=> (not b_lambda!34551) (not b!1156543)))

(declare-fun m!1323367 () Bool)

(assert (=> b!1156543 m!1323367))

(declare-fun m!1323369 () Bool)

(assert (=> b!1156544 m!1323369))

(assert (=> b!1156419 d!330539))

(declare-fun d!330541 () Bool)

(assert (=> d!330541 (forall!2886 lt!393130 lambda!46694)))

(declare-fun lt!393174 () Unit!17281)

(declare-fun choose!7423 (List!11280 List!11280 Int) Unit!17281)

(assert (=> d!330541 (= lt!393174 (choose!7423 lt!393130 lt!393128 lambda!46694))))

(assert (=> d!330541 (forall!2886 lt!393128 lambda!46694)))

(assert (=> d!330541 (= (lemmaForallSubseq!96 lt!393130 lt!393128 lambda!46694) lt!393174)))

(declare-fun bs!282933 () Bool)

(assert (= bs!282933 d!330541))

(assert (=> bs!282933 m!1323255))

(declare-fun m!1323371 () Bool)

(assert (=> bs!282933 m!1323371))

(declare-fun m!1323373 () Bool)

(assert (=> bs!282933 m!1323373))

(assert (=> b!1156419 d!330541))

(declare-fun d!330543 () Bool)

(declare-fun res!520533 () Bool)

(declare-fun e!739805 () Bool)

(assert (=> d!330543 (=> (not res!520533) (not e!739805))))

(assert (=> d!330543 (= res!520533 (not (isEmpty!6931 (rules!9425 thiss!10527))))))

(assert (=> d!330543 (= (inv!14781 thiss!10527) e!739805)))

(declare-fun b!1156569 () Bool)

(declare-fun res!520534 () Bool)

(assert (=> b!1156569 (=> (not res!520534) (not e!739805))))

(assert (=> b!1156569 (= res!520534 (rulesInvariant!1517 Lexer!1641 (rules!9425 thiss!10527)))))

(declare-fun b!1156570 () Bool)

(declare-fun res!520535 () Bool)

(assert (=> b!1156570 (=> (not res!520535) (not e!739805))))

(assert (=> b!1156570 (= res!520535 (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) (tokens!1547 thiss!10527)))))

(declare-fun b!1156571 () Bool)

(assert (=> b!1156571 (= e!739805 (separableTokens!94 Lexer!1641 (tokens!1547 thiss!10527) (rules!9425 thiss!10527)))))

(assert (= (and d!330543 res!520533) b!1156569))

(assert (= (and b!1156569 res!520534) b!1156570))

(assert (= (and b!1156570 res!520535) b!1156571))

(assert (=> d!330543 m!1323245))

(assert (=> b!1156569 m!1323223))

(assert (=> b!1156570 m!1323235))

(assert (=> b!1156571 m!1323317))

(assert (=> start!100948 d!330543))

(declare-fun d!330557 () Bool)

(declare-fun c!194072 () Bool)

(assert (=> d!330557 (= c!194072 (is-Node!3659 (c!194061 (tokens!1547 thiss!10527))))))

(declare-fun e!739816 () Bool)

(assert (=> d!330557 (= (inv!14783 (c!194061 (tokens!1547 thiss!10527))) e!739816)))

(declare-fun b!1156587 () Bool)

(declare-fun inv!14787 (Conc!3659) Bool)

(assert (=> b!1156587 (= e!739816 (inv!14787 (c!194061 (tokens!1547 thiss!10527))))))

(declare-fun b!1156588 () Bool)

(declare-fun e!739817 () Bool)

(assert (=> b!1156588 (= e!739816 e!739817)))

(declare-fun res!520547 () Bool)

(assert (=> b!1156588 (= res!520547 (not (is-Leaf!5644 (c!194061 (tokens!1547 thiss!10527)))))))

(assert (=> b!1156588 (=> res!520547 e!739817)))

(declare-fun b!1156589 () Bool)

(declare-fun inv!14788 (Conc!3659) Bool)

(assert (=> b!1156589 (= e!739817 (inv!14788 (c!194061 (tokens!1547 thiss!10527))))))

(assert (= (and d!330557 c!194072) b!1156587))

(assert (= (and d!330557 (not c!194072)) b!1156588))

(assert (= (and b!1156588 (not res!520547)) b!1156589))

(declare-fun m!1323403 () Bool)

(assert (=> b!1156587 m!1323403))

(declare-fun m!1323405 () Bool)

(assert (=> b!1156589 m!1323405))

(assert (=> b!1156417 d!330557))

(declare-fun bs!282938 () Bool)

(declare-fun d!330561 () Bool)

(assert (= bs!282938 (and d!330561 b!1156421)))

(declare-fun lambda!46717 () Int)

(assert (=> bs!282938 (= lambda!46717 lambda!46694)))

(declare-fun bs!282939 () Bool)

(assert (= bs!282939 (and d!330561 d!330517)))

(assert (=> bs!282939 (= lambda!46717 lambda!46708)))

(declare-fun b!1156593 () Bool)

(declare-fun e!739821 () Bool)

(assert (=> b!1156593 (= e!739821 true)))

(declare-fun b!1156592 () Bool)

(declare-fun e!739820 () Bool)

(assert (=> b!1156592 (= e!739820 e!739821)))

(declare-fun b!1156591 () Bool)

(declare-fun e!739819 () Bool)

(assert (=> b!1156591 (= e!739819 e!739820)))

(assert (=> d!330561 e!739819))

(assert (= b!1156592 b!1156593))

(assert (= b!1156591 b!1156592))

(assert (= (and d!330561 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156591))

(assert (=> b!1156593 (< (dynLambda!4959 order!6879 (toValue!3049 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46717))))

(assert (=> b!1156593 (< (dynLambda!4961 order!6883 (toChars!2908 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46717))))

(assert (=> d!330561 true))

(declare-fun e!739818 () Bool)

(assert (=> d!330561 e!739818))

(declare-fun res!520548 () Bool)

(assert (=> d!330561 (=> (not res!520548) (not e!739818))))

(declare-fun lt!393184 () Bool)

(assert (=> d!330561 (= res!520548 (= lt!393184 (forall!2886 (list!4148 (tokens!1547 thiss!10527)) lambda!46717)))))

(assert (=> d!330561 (= lt!393184 (forall!2885 (tokens!1547 thiss!10527) lambda!46717))))

(assert (=> d!330561 (not (isEmpty!6931 (rules!9425 thiss!10527)))))

(assert (=> d!330561 (= (rulesProduceEachTokenIndividually!682 Lexer!1641 (rules!9425 thiss!10527) (tokens!1547 thiss!10527)) lt!393184)))

(declare-fun b!1156590 () Bool)

(assert (=> b!1156590 (= e!739818 (= lt!393184 (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (list!4148 (tokens!1547 thiss!10527)))))))

(assert (= (and d!330561 res!520548) b!1156590))

(assert (=> d!330561 m!1323233))

(assert (=> d!330561 m!1323233))

(declare-fun m!1323407 () Bool)

(assert (=> d!330561 m!1323407))

(declare-fun m!1323409 () Bool)

(assert (=> d!330561 m!1323409))

(assert (=> d!330561 m!1323245))

(assert (=> b!1156590 m!1323233))

(assert (=> b!1156590 m!1323233))

(declare-fun m!1323415 () Bool)

(assert (=> b!1156590 m!1323415))

(assert (=> b!1156421 d!330561))

(declare-fun bs!282941 () Bool)

(declare-fun d!330563 () Bool)

(assert (= bs!282941 (and d!330563 b!1156421)))

(declare-fun lambda!46720 () Int)

(assert (=> bs!282941 (= lambda!46720 lambda!46694)))

(declare-fun bs!282942 () Bool)

(assert (= bs!282942 (and d!330563 d!330517)))

(assert (=> bs!282942 (= lambda!46720 lambda!46708)))

(declare-fun bs!282943 () Bool)

(assert (= bs!282943 (and d!330563 d!330561)))

(assert (=> bs!282943 (= lambda!46720 lambda!46717)))

(declare-fun b!1156620 () Bool)

(declare-fun e!739846 () Bool)

(assert (=> b!1156620 (= e!739846 true)))

(declare-fun b!1156619 () Bool)

(declare-fun e!739845 () Bool)

(assert (=> b!1156619 (= e!739845 e!739846)))

(declare-fun b!1156618 () Bool)

(declare-fun e!739844 () Bool)

(assert (=> b!1156618 (= e!739844 e!739845)))

(assert (=> d!330563 e!739844))

(assert (= b!1156619 b!1156620))

(assert (= b!1156618 b!1156619))

(assert (= (and d!330563 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156618))

(assert (=> b!1156620 (< (dynLambda!4959 order!6879 (toValue!3049 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46720))))

(assert (=> b!1156620 (< (dynLambda!4961 order!6883 (toChars!2908 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46720))))

(assert (=> d!330563 true))

(declare-fun lt!393194 () Bool)

(assert (=> d!330563 (= lt!393194 (forall!2886 lt!393128 lambda!46720))))

(declare-fun e!739843 () Bool)

(assert (=> d!330563 (= lt!393194 e!739843)))

(declare-fun res!520572 () Bool)

(assert (=> d!330563 (=> res!520572 e!739843)))

(assert (=> d!330563 (= res!520572 (not (is-Cons!11256 lt!393128)))))

(assert (=> d!330563 (not (isEmpty!6931 (rules!9425 thiss!10527)))))

(assert (=> d!330563 (= (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) lt!393128) lt!393194)))

(declare-fun b!1156616 () Bool)

(declare-fun e!739842 () Bool)

(assert (=> b!1156616 (= e!739843 e!739842)))

(declare-fun res!520571 () Bool)

(assert (=> b!1156616 (=> (not res!520571) (not e!739842))))

(assert (=> b!1156616 (= res!520571 (rulesProduceIndividualToken!680 Lexer!1641 (rules!9425 thiss!10527) (h!16657 lt!393128)))))

(declare-fun b!1156617 () Bool)

(assert (=> b!1156617 (= e!739842 (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (t!109049 lt!393128)))))

(assert (= (and d!330563 (not res!520572)) b!1156616))

(assert (= (and b!1156616 res!520571) b!1156617))

(declare-fun m!1323421 () Bool)

(assert (=> d!330563 m!1323421))

(assert (=> d!330563 m!1323245))

(assert (=> b!1156616 m!1323227))

(assert (=> b!1156617 m!1323237))

(assert (=> b!1156421 d!330563))

(declare-fun d!330569 () Bool)

(assert (=> d!330569 (= (list!4148 (tokens!1547 thiss!10527)) (list!4150 (c!194061 (tokens!1547 thiss!10527))))))

(declare-fun bs!282944 () Bool)

(assert (= bs!282944 d!330569))

(declare-fun m!1323423 () Bool)

(assert (=> bs!282944 m!1323423))

(assert (=> b!1156421 d!330569))

(declare-fun d!330571 () Bool)

(declare-fun lt!393197 () Bool)

(assert (=> d!330571 (= lt!393197 (forall!2886 (list!4148 (tokens!1547 thiss!10527)) lambda!46694))))

(assert (=> d!330571 (= lt!393197 (forall!2889 (c!194061 (tokens!1547 thiss!10527)) lambda!46694))))

(assert (=> d!330571 (= (forall!2885 (tokens!1547 thiss!10527) lambda!46694) lt!393197)))

(declare-fun bs!282945 () Bool)

(assert (= bs!282945 d!330571))

(assert (=> bs!282945 m!1323233))

(assert (=> bs!282945 m!1323233))

(declare-fun m!1323425 () Bool)

(assert (=> bs!282945 m!1323425))

(declare-fun m!1323427 () Bool)

(assert (=> bs!282945 m!1323427))

(assert (=> b!1156421 d!330571))

(declare-fun d!330573 () Bool)

(assert (=> d!330573 (= (inv!14782 (tokens!1547 thiss!10527)) (isBalanced!1032 (c!194061 (tokens!1547 thiss!10527))))))

(declare-fun bs!282946 () Bool)

(assert (= bs!282946 d!330573))

(assert (=> bs!282946 m!1323361))

(assert (=> b!1156416 d!330573))

(declare-fun bs!282947 () Bool)

(declare-fun d!330577 () Bool)

(assert (= bs!282947 (and d!330577 b!1156421)))

(declare-fun lambda!46721 () Int)

(assert (=> bs!282947 (= lambda!46721 lambda!46694)))

(declare-fun bs!282948 () Bool)

(assert (= bs!282948 (and d!330577 d!330517)))

(assert (=> bs!282948 (= lambda!46721 lambda!46708)))

(declare-fun bs!282949 () Bool)

(assert (= bs!282949 (and d!330577 d!330561)))

(assert (=> bs!282949 (= lambda!46721 lambda!46717)))

(declare-fun bs!282950 () Bool)

(assert (= bs!282950 (and d!330577 d!330563)))

(assert (=> bs!282950 (= lambda!46721 lambda!46720)))

(declare-fun b!1156628 () Bool)

(declare-fun e!739853 () Bool)

(assert (=> b!1156628 (= e!739853 true)))

(declare-fun b!1156627 () Bool)

(declare-fun e!739852 () Bool)

(assert (=> b!1156627 (= e!739852 e!739853)))

(declare-fun b!1156626 () Bool)

(declare-fun e!739851 () Bool)

(assert (=> b!1156626 (= e!739851 e!739852)))

(assert (=> d!330577 e!739851))

(assert (= b!1156627 b!1156628))

(assert (= b!1156626 b!1156627))

(assert (= (and d!330577 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156626))

(assert (=> b!1156628 (< (dynLambda!4959 order!6879 (toValue!3049 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46721))))

(assert (=> b!1156628 (< (dynLambda!4961 order!6883 (toChars!2908 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46721))))

(assert (=> d!330577 true))

(declare-fun lt!393198 () Bool)

(assert (=> d!330577 (= lt!393198 (forall!2886 (t!109049 lt!393128) lambda!46721))))

(declare-fun e!739850 () Bool)

(assert (=> d!330577 (= lt!393198 e!739850)))

(declare-fun res!520577 () Bool)

(assert (=> d!330577 (=> res!520577 e!739850)))

(assert (=> d!330577 (= res!520577 (not (is-Cons!11256 (t!109049 lt!393128))))))

(assert (=> d!330577 (not (isEmpty!6931 (rules!9425 thiss!10527)))))

(assert (=> d!330577 (= (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (t!109049 lt!393128)) lt!393198)))

(declare-fun b!1156624 () Bool)

(declare-fun e!739849 () Bool)

(assert (=> b!1156624 (= e!739850 e!739849)))

(declare-fun res!520576 () Bool)

(assert (=> b!1156624 (=> (not res!520576) (not e!739849))))

(assert (=> b!1156624 (= res!520576 (rulesProduceIndividualToken!680 Lexer!1641 (rules!9425 thiss!10527) (h!16657 (t!109049 lt!393128))))))

(declare-fun b!1156625 () Bool)

(assert (=> b!1156625 (= e!739849 (rulesProduceEachTokenIndividuallyList!511 Lexer!1641 (rules!9425 thiss!10527) (t!109049 (t!109049 lt!393128))))))

(assert (= (and d!330577 (not res!520577)) b!1156624))

(assert (= (and b!1156624 res!520576) b!1156625))

(declare-fun m!1323447 () Bool)

(assert (=> d!330577 m!1323447))

(assert (=> d!330577 m!1323245))

(declare-fun m!1323449 () Bool)

(assert (=> b!1156624 m!1323449))

(declare-fun m!1323451 () Bool)

(assert (=> b!1156625 m!1323451))

(assert (=> b!1156414 d!330577))

(declare-fun d!330579 () Bool)

(declare-fun lt!393201 () Int)

(assert (=> d!330579 (= lt!393201 (size!8858 (list!4148 (tokens!1547 thiss!10527))))))

(declare-fun size!8859 (Conc!3659) Int)

(assert (=> d!330579 (= lt!393201 (size!8859 (c!194061 (tokens!1547 thiss!10527))))))

(assert (=> d!330579 (= (size!8855 (tokens!1547 thiss!10527)) lt!393201)))

(declare-fun bs!282951 () Bool)

(assert (= bs!282951 d!330579))

(assert (=> bs!282951 m!1323233))

(assert (=> bs!282951 m!1323233))

(declare-fun m!1323453 () Bool)

(assert (=> bs!282951 m!1323453))

(declare-fun m!1323455 () Bool)

(assert (=> bs!282951 m!1323455))

(assert (=> b!1156415 d!330579))

(declare-fun d!330581 () Bool)

(declare-fun lt!393207 () Bool)

(declare-fun e!739859 () Bool)

(assert (=> d!330581 (= lt!393207 e!739859)))

(declare-fun res!520584 () Bool)

(assert (=> d!330581 (=> (not res!520584) (not e!739859))))

(declare-datatypes ((tuple2!11970 0))(
  ( (tuple2!11971 (_1!6832 BalanceConc!7340) (_2!6832 BalanceConc!7338)) )
))
(declare-fun lex!678 (LexerInterface!1643 List!11281 BalanceConc!7338) tuple2!11970)

(declare-fun print!615 (LexerInterface!1643 BalanceConc!7340) BalanceConc!7338)

(declare-fun singletonSeq!633 (Token!3558) BalanceConc!7340)

(assert (=> d!330581 (= res!520584 (= (list!4148 (_1!6832 (lex!678 Lexer!1641 (rules!9425 thiss!10527) (print!615 Lexer!1641 (singletonSeq!633 (h!16657 lt!393128)))))) (list!4148 (singletonSeq!633 (h!16657 lt!393128)))))))

(declare-fun e!739858 () Bool)

(assert (=> d!330581 (= lt!393207 e!739858)))

(declare-fun res!520586 () Bool)

(assert (=> d!330581 (=> (not res!520586) (not e!739858))))

(declare-fun lt!393206 () tuple2!11970)

(assert (=> d!330581 (= res!520586 (= (size!8855 (_1!6832 lt!393206)) 1))))

(assert (=> d!330581 (= lt!393206 (lex!678 Lexer!1641 (rules!9425 thiss!10527) (print!615 Lexer!1641 (singletonSeq!633 (h!16657 lt!393128)))))))

(assert (=> d!330581 (not (isEmpty!6931 (rules!9425 thiss!10527)))))

(assert (=> d!330581 (= (rulesProduceIndividualToken!680 Lexer!1641 (rules!9425 thiss!10527) (h!16657 lt!393128)) lt!393207)))

(declare-fun b!1156635 () Bool)

(declare-fun res!520585 () Bool)

(assert (=> b!1156635 (=> (not res!520585) (not e!739858))))

(declare-fun apply!2402 (BalanceConc!7340 Int) Token!3558)

(assert (=> b!1156635 (= res!520585 (= (apply!2402 (_1!6832 lt!393206) 0) (h!16657 lt!393128)))))

(declare-fun b!1156636 () Bool)

(declare-fun isEmpty!6933 (BalanceConc!7338) Bool)

(assert (=> b!1156636 (= e!739858 (isEmpty!6933 (_2!6832 lt!393206)))))

(declare-fun b!1156637 () Bool)

(assert (=> b!1156637 (= e!739859 (isEmpty!6933 (_2!6832 (lex!678 Lexer!1641 (rules!9425 thiss!10527) (print!615 Lexer!1641 (singletonSeq!633 (h!16657 lt!393128)))))))))

(assert (= (and d!330581 res!520586) b!1156635))

(assert (= (and b!1156635 res!520585) b!1156636))

(assert (= (and d!330581 res!520584) b!1156637))

(assert (=> d!330581 m!1323245))

(declare-fun m!1323457 () Bool)

(assert (=> d!330581 m!1323457))

(declare-fun m!1323459 () Bool)

(assert (=> d!330581 m!1323459))

(declare-fun m!1323461 () Bool)

(assert (=> d!330581 m!1323461))

(assert (=> d!330581 m!1323457))

(declare-fun m!1323463 () Bool)

(assert (=> d!330581 m!1323463))

(assert (=> d!330581 m!1323459))

(declare-fun m!1323465 () Bool)

(assert (=> d!330581 m!1323465))

(declare-fun m!1323467 () Bool)

(assert (=> d!330581 m!1323467))

(assert (=> d!330581 m!1323457))

(declare-fun m!1323469 () Bool)

(assert (=> b!1156635 m!1323469))

(declare-fun m!1323471 () Bool)

(assert (=> b!1156636 m!1323471))

(assert (=> b!1156637 m!1323457))

(assert (=> b!1156637 m!1323457))

(assert (=> b!1156637 m!1323459))

(assert (=> b!1156637 m!1323459))

(assert (=> b!1156637 m!1323465))

(declare-fun m!1323473 () Bool)

(assert (=> b!1156637 m!1323473))

(assert (=> b!1156420 d!330581))

(declare-fun tp!333229 () Bool)

(declare-fun b!1156646 () Bool)

(declare-fun tp!333231 () Bool)

(declare-fun e!739864 () Bool)

(assert (=> b!1156646 (= e!739864 (and (inv!14783 (left!9813 (c!194061 (tokens!1547 thiss!10527)))) tp!333229 (inv!14783 (right!10143 (c!194061 (tokens!1547 thiss!10527)))) tp!333231))))

(declare-fun b!1156648 () Bool)

(declare-fun e!739865 () Bool)

(declare-fun tp!333230 () Bool)

(assert (=> b!1156648 (= e!739865 tp!333230)))

(declare-fun b!1156647 () Bool)

(declare-fun inv!14789 (IArray!7323) Bool)

(assert (=> b!1156647 (= e!739864 (and (inv!14789 (xs!6364 (c!194061 (tokens!1547 thiss!10527)))) e!739865))))

(assert (=> b!1156417 (= tp!333215 (and (inv!14783 (c!194061 (tokens!1547 thiss!10527))) e!739864))))

(assert (= (and b!1156417 (is-Node!3659 (c!194061 (tokens!1547 thiss!10527)))) b!1156646))

(assert (= b!1156647 b!1156648))

(assert (= (and b!1156417 (is-Leaf!5644 (c!194061 (tokens!1547 thiss!10527)))) b!1156647))

(declare-fun m!1323475 () Bool)

(assert (=> b!1156646 m!1323475))

(declare-fun m!1323477 () Bool)

(assert (=> b!1156646 m!1323477))

(declare-fun m!1323479 () Bool)

(assert (=> b!1156647 m!1323479))

(assert (=> b!1156417 m!1323239))

(declare-fun b!1156657 () Bool)

(declare-fun e!739870 () Bool)

(assert (=> b!1156657 (= e!739870 true)))

(declare-fun b!1156659 () Bool)

(declare-fun e!739871 () Bool)

(assert (=> b!1156659 (= e!739871 true)))

(declare-fun b!1156658 () Bool)

(assert (=> b!1156658 (= e!739870 e!739871)))

(assert (=> b!1156429 e!739870))

(assert (= (and b!1156429 (is-Node!3659 (c!194061 (tokens!1547 thiss!10527)))) b!1156657))

(assert (= b!1156658 b!1156659))

(assert (= (and b!1156429 (is-Leaf!5644 (c!194061 (tokens!1547 thiss!10527)))) b!1156658))

(declare-fun b!1156662 () Bool)

(declare-fun e!739874 () Bool)

(assert (=> b!1156662 (= e!739874 true)))

(declare-fun b!1156661 () Bool)

(declare-fun e!739873 () Bool)

(assert (=> b!1156661 (= e!739873 e!739874)))

(declare-fun b!1156660 () Bool)

(declare-fun e!739872 () Bool)

(assert (=> b!1156660 (= e!739872 e!739873)))

(assert (=> b!1156428 e!739872))

(assert (= b!1156661 b!1156662))

(assert (= b!1156660 b!1156661))

(assert (= (and b!1156428 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156660))

(assert (=> b!1156662 (< (dynLambda!4959 order!6879 (toValue!3049 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46694))))

(assert (=> b!1156662 (< (dynLambda!4961 order!6883 (toChars!2908 (transformation!1948 (h!16658 (rules!9425 thiss!10527))))) (dynLambda!4960 order!6881 lambda!46694))))

(declare-fun b!1156673 () Bool)

(declare-fun b_free!27673 () Bool)

(declare-fun b_next!28377 () Bool)

(assert (=> b!1156673 (= b_free!27673 (not b_next!28377))))

(declare-fun tp!333240 () Bool)

(declare-fun b_and!80549 () Bool)

(assert (=> b!1156673 (= tp!333240 b_and!80549)))

(declare-fun b_free!27675 () Bool)

(declare-fun b_next!28379 () Bool)

(assert (=> b!1156673 (= b_free!27675 (not b_next!28379))))

(declare-fun tp!333241 () Bool)

(declare-fun b_and!80551 () Bool)

(assert (=> b!1156673 (= tp!333241 b_and!80551)))

(declare-fun e!739885 () Bool)

(assert (=> b!1156673 (= e!739885 (and tp!333240 tp!333241))))

(declare-fun b!1156672 () Bool)

(declare-fun tp!333243 () Bool)

(declare-fun e!739884 () Bool)

(declare-fun inv!14778 (String!13660) Bool)

(declare-fun inv!14790 (TokenValueInjection!3728) Bool)

(assert (=> b!1156672 (= e!739884 (and tp!333243 (inv!14778 (tag!2210 (h!16658 (rules!9425 thiss!10527)))) (inv!14790 (transformation!1948 (h!16658 (rules!9425 thiss!10527)))) e!739885))))

(declare-fun b!1156671 () Bool)

(declare-fun e!739886 () Bool)

(declare-fun tp!333242 () Bool)

(assert (=> b!1156671 (= e!739886 (and e!739884 tp!333242))))

(assert (=> b!1156416 (= tp!333216 e!739886)))

(assert (= b!1156672 b!1156673))

(assert (= b!1156671 b!1156672))

(assert (= (and b!1156416 (is-Cons!11257 (rules!9425 thiss!10527))) b!1156671))

(declare-fun m!1323481 () Bool)

(assert (=> b!1156672 m!1323481))

(declare-fun m!1323483 () Bool)

(assert (=> b!1156672 m!1323483))

(declare-fun b_lambda!34555 () Bool)

(assert (= b_lambda!34551 (or b!1156421 b_lambda!34555)))

(declare-fun bs!282952 () Bool)

(declare-fun d!330583 () Bool)

(assert (= bs!282952 (and d!330583 b!1156421)))

(assert (=> bs!282952 (= (dynLambda!4962 lambda!46694 (h!16657 lt!393130)) (rulesProduceIndividualToken!680 Lexer!1641 (rules!9425 thiss!10527) (h!16657 lt!393130)))))

(declare-fun m!1323485 () Bool)

(assert (=> bs!282952 m!1323485))

(assert (=> b!1156543 d!330583))

(push 1)

(assert (not b_lambda!34555))

(assert (not b_next!28379))

(assert b_and!80549)

(assert (not b!1156536))

(assert (not b!1156544))

(assert (not b!1156537))

(assert (not d!330509))

(assert (not b!1156660))

(assert (not b!1156492))

(assert (not b!1156646))

(assert (not b!1156476))

(assert (not b!1156571))

(assert (not d!330573))

(assert (not d!330561))

(assert (not b!1156570))

(assert (not d!330541))

(assert (not d!330563))

(assert (not d!330543))

(assert (not b!1156618))

(assert (not d!330507))

(assert (not b!1156647))

(assert (not b!1156626))

(assert (not b!1156624))

(assert b_and!80551)

(assert (not b!1156617))

(assert (not b!1156625))

(assert (not b!1156518))

(assert (not b!1156636))

(assert (not d!330525))

(assert (not b!1156467))

(assert (not d!330517))

(assert (not b!1156637))

(assert (not bs!282952))

(assert (not d!330571))

(assert (not b!1156672))

(assert (not b!1156517))

(assert (not d!330581))

(assert (not d!330531))

(assert (not b!1156587))

(assert (not b!1156472))

(assert (not d!330521))

(assert (not b!1156538))

(assert (not b!1156648))

(assert (not b!1156671))

(assert (not b!1156569))

(assert (not b!1156591))

(assert (not b_next!28377))

(assert (not b!1156616))

(assert (not b!1156485))

(assert (not b!1156659))

(assert (not b!1156589))

(assert (not b!1156473))

(assert (not b!1156590))

(assert (not b!1156417))

(assert (not d!330569))

(assert (not d!330519))

(assert (not b!1156657))

(assert (not d!330527))

(assert (not d!330579))

(assert (not b!1156635))

(assert (not d!330577))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80549)

(assert b_and!80551)

(assert (not b_next!28377))

(assert (not b_next!28379))

(check-sat)

(pop 1)

