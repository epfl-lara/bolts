; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118642 () Bool)

(assert start!118642)

(declare-fun b!1333342 () Bool)

(declare-fun b_free!32315 () Bool)

(declare-fun b_next!33019 () Bool)

(assert (=> b!1333342 (= b_free!32315 (not b_next!33019))))

(declare-fun tp!385620 () Bool)

(declare-fun b_and!89079 () Bool)

(assert (=> b!1333342 (= tp!385620 b_and!89079)))

(declare-fun b_free!32317 () Bool)

(declare-fun b_next!33021 () Bool)

(assert (=> b!1333342 (= b_free!32317 (not b_next!33021))))

(declare-fun tp!385621 () Bool)

(declare-fun b_and!89081 () Bool)

(assert (=> b!1333342 (= tp!385621 b_and!89081)))

(declare-fun b!1333365 () Bool)

(declare-fun b_free!32319 () Bool)

(declare-fun b_next!33023 () Bool)

(assert (=> b!1333365 (= b_free!32319 (not b_next!33023))))

(declare-fun tp!385624 () Bool)

(declare-fun b_and!89083 () Bool)

(assert (=> b!1333365 (= tp!385624 b_and!89083)))

(declare-fun b_free!32321 () Bool)

(declare-fun b_next!33025 () Bool)

(assert (=> b!1333365 (= b_free!32321 (not b_next!33025))))

(declare-fun tp!385625 () Bool)

(declare-fun b_and!89085 () Bool)

(assert (=> b!1333365 (= tp!385625 b_and!89085)))

(declare-fun b!1333346 () Bool)

(declare-fun b_free!32323 () Bool)

(declare-fun b_next!33027 () Bool)

(assert (=> b!1333346 (= b_free!32323 (not b_next!33027))))

(declare-fun tp!385627 () Bool)

(declare-fun b_and!89087 () Bool)

(assert (=> b!1333346 (= tp!385627 b_and!89087)))

(declare-fun b_free!32325 () Bool)

(declare-fun b_next!33029 () Bool)

(assert (=> b!1333346 (= b_free!32325 (not b_next!33029))))

(declare-fun tp!385617 () Bool)

(declare-fun b_and!89089 () Bool)

(assert (=> b!1333346 (= tp!385617 b_and!89089)))

(declare-fun b!1333328 () Bool)

(assert (=> b!1333328 true))

(assert (=> b!1333328 true))

(declare-fun b!1333358 () Bool)

(assert (=> b!1333358 true))

(declare-fun b!1333356 () Bool)

(assert (=> b!1333356 true))

(declare-fun bs!331808 () Bool)

(declare-fun b!1333353 () Bool)

(assert (= bs!331808 (and b!1333353 b!1333356)))

(declare-fun lambda!55751 () Int)

(declare-fun lambda!55750 () Int)

(assert (=> bs!331808 (not (= lambda!55751 lambda!55750))))

(assert (=> b!1333353 true))

(declare-fun res!601144 () Bool)

(declare-fun e!854127 () Bool)

(assert (=> start!118642 (=> (not res!601144) (not e!854127))))

(declare-datatypes ((LexerInterface!2046 0))(
  ( (LexerInterfaceExt!2043 (__x!8711 Int)) (Lexer!2044) )
))
(declare-fun thiss!19762 () LexerInterface!2046)

(get-info :version)

(assert (=> start!118642 (= res!601144 ((_ is Lexer!2044) thiss!19762))))

(assert (=> start!118642 e!854127))

(assert (=> start!118642 true))

(declare-fun e!854118 () Bool)

(assert (=> start!118642 e!854118))

(declare-datatypes ((List!13640 0))(
  ( (Nil!13574) (Cons!13574 (h!18975 (_ BitVec 16)) (t!119085 List!13640)) )
))
(declare-datatypes ((TokenValue!2441 0))(
  ( (FloatLiteralValue!4882 (text!17532 List!13640)) (TokenValueExt!2440 (__x!8712 Int)) (Broken!12205 (value!76610 List!13640)) (Object!2506) (End!2441) (Def!2441) (Underscore!2441) (Match!2441) (Else!2441) (Error!2441) (Case!2441) (If!2441) (Extends!2441) (Abstract!2441) (Class!2441) (Val!2441) (DelimiterValue!4882 (del!2501 List!13640)) (KeywordValue!2447 (value!76611 List!13640)) (CommentValue!4882 (value!76612 List!13640)) (WhitespaceValue!4882 (value!76613 List!13640)) (IndentationValue!2441 (value!76614 List!13640)) (String!16440) (Int32!2441) (Broken!12206 (value!76615 List!13640)) (Boolean!2442) (Unit!19708) (OperatorValue!2444 (op!2501 List!13640)) (IdentifierValue!4882 (value!76616 List!13640)) (IdentifierValue!4883 (value!76617 List!13640)) (WhitespaceValue!4883 (value!76618 List!13640)) (True!4882) (False!4882) (Broken!12207 (value!76619 List!13640)) (Broken!12208 (value!76620 List!13640)) (True!4883) (RightBrace!2441) (RightBracket!2441) (Colon!2441) (Null!2441) (Comma!2441) (LeftBracket!2441) (False!4883) (LeftBrace!2441) (ImaginaryLiteralValue!2441 (text!17533 List!13640)) (StringLiteralValue!7323 (value!76621 List!13640)) (EOFValue!2441 (value!76622 List!13640)) (IdentValue!2441 (value!76623 List!13640)) (DelimiterValue!4883 (value!76624 List!13640)) (DedentValue!2441 (value!76625 List!13640)) (NewLineValue!2441 (value!76626 List!13640)) (IntegerValue!7323 (value!76627 (_ BitVec 32)) (text!17534 List!13640)) (IntegerValue!7324 (value!76628 Int) (text!17535 List!13640)) (Times!2441) (Or!2441) (Equal!2441) (Minus!2441) (Broken!12209 (value!76629 List!13640)) (And!2441) (Div!2441) (LessEqual!2441) (Mod!2441) (Concat!6106) (Not!2441) (Plus!2441) (SpaceValue!2441 (value!76630 List!13640)) (IntegerValue!7325 (value!76631 Int) (text!17536 List!13640)) (StringLiteralValue!7324 (text!17537 List!13640)) (FloatLiteralValue!4883 (text!17538 List!13640)) (BytesLiteralValue!2441 (value!76632 List!13640)) (CommentValue!4883 (value!76633 List!13640)) (StringLiteralValue!7325 (value!76634 List!13640)) (ErrorTokenValue!2441 (msg!2502 List!13640)) )
))
(declare-datatypes ((C!7620 0))(
  ( (C!7621 (val!4370 Int)) )
))
(declare-datatypes ((List!13641 0))(
  ( (Nil!13575) (Cons!13575 (h!18976 C!7620) (t!119086 List!13641)) )
))
(declare-datatypes ((IArray!8949 0))(
  ( (IArray!8950 (innerList!4532 List!13641)) )
))
(declare-datatypes ((Conc!4472 0))(
  ( (Node!4472 (left!11657 Conc!4472) (right!11987 Conc!4472) (csize!9174 Int) (cheight!4683 Int)) (Leaf!6844 (xs!7187 IArray!8949) (csize!9175 Int)) (Empty!4472) )
))
(declare-datatypes ((BalanceConc!8884 0))(
  ( (BalanceConc!8885 (c!218434 Conc!4472)) )
))
(declare-datatypes ((Regex!3665 0))(
  ( (ElementMatch!3665 (c!218435 C!7620)) (Concat!6107 (regOne!7842 Regex!3665) (regTwo!7842 Regex!3665)) (EmptyExpr!3665) (Star!3665 (reg!3994 Regex!3665)) (EmptyLang!3665) (Union!3665 (regOne!7843 Regex!3665) (regTwo!7843 Regex!3665)) )
))
(declare-datatypes ((String!16441 0))(
  ( (String!16442 (value!76635 String)) )
))
(declare-datatypes ((TokenValueInjection!4542 0))(
  ( (TokenValueInjection!4543 (toValue!3582 Int) (toChars!3441 Int)) )
))
(declare-datatypes ((Rule!4502 0))(
  ( (Rule!4503 (regex!2351 Regex!3665) (tag!2613 String!16441) (isSeparator!2351 Bool) (transformation!2351 TokenValueInjection!4542)) )
))
(declare-datatypes ((Token!4364 0))(
  ( (Token!4365 (value!76636 TokenValue!2441) (rule!4096 Rule!4502) (size!11056 Int) (originalCharacters!3213 List!13641)) )
))
(declare-fun t1!34 () Token!4364)

(declare-fun e!854113 () Bool)

(declare-fun inv!17913 (Token!4364) Bool)

(assert (=> start!118642 (and (inv!17913 t1!34) e!854113)))

(declare-fun t2!34 () Token!4364)

(declare-fun e!854120 () Bool)

(assert (=> start!118642 (and (inv!17913 t2!34) e!854120)))

(declare-fun b!1333325 () Bool)

(declare-fun e!854135 () Bool)

(declare-fun tp!385618 () Bool)

(declare-fun e!854105 () Bool)

(declare-fun inv!17910 (String!16441) Bool)

(declare-fun inv!17914 (TokenValueInjection!4542) Bool)

(assert (=> b!1333325 (= e!854105 (and tp!385618 (inv!17910 (tag!2613 (rule!4096 t2!34))) (inv!17914 (transformation!2351 (rule!4096 t2!34))) e!854135))))

(declare-fun b!1333326 () Bool)

(declare-fun e!854112 () Bool)

(assert (=> b!1333326 (= e!854127 e!854112)))

(declare-fun res!601143 () Bool)

(assert (=> b!1333326 (=> (not res!601143) (not e!854112))))

(declare-fun lt!441452 () Int)

(assert (=> b!1333326 (= res!601143 (> lt!441452 0))))

(declare-fun lt!441450 () BalanceConc!8884)

(declare-fun size!11057 (BalanceConc!8884) Int)

(assert (=> b!1333326 (= lt!441452 (size!11057 lt!441450))))

(declare-fun charsOf!1323 (Token!4364) BalanceConc!8884)

(assert (=> b!1333326 (= lt!441450 (charsOf!1323 t2!34))))

(declare-fun b!1333327 () Bool)

(declare-fun res!601129 () Bool)

(declare-fun e!854130 () Bool)

(assert (=> b!1333327 (=> res!601129 e!854130)))

(declare-datatypes ((List!13642 0))(
  ( (Nil!13576) (Cons!13576 (h!18977 Token!4364) (t!119087 List!13642)) )
))
(declare-datatypes ((IArray!8951 0))(
  ( (IArray!8952 (innerList!4533 List!13642)) )
))
(declare-datatypes ((Conc!4473 0))(
  ( (Node!4473 (left!11658 Conc!4473) (right!11988 Conc!4473) (csize!9176 Int) (cheight!4684 Int)) (Leaf!6845 (xs!7188 IArray!8951) (csize!9177 Int)) (Empty!4473) )
))
(declare-datatypes ((BalanceConc!8886 0))(
  ( (BalanceConc!8887 (c!218436 Conc!4473)) )
))
(declare-datatypes ((tuple2!13226 0))(
  ( (tuple2!13227 (_1!7499 BalanceConc!8886) (_2!7499 BalanceConc!8884)) )
))
(declare-fun lt!441453 () tuple2!13226)

(declare-fun isEmpty!8098 (BalanceConc!8884) Bool)

(assert (=> b!1333327 (= res!601129 (not (isEmpty!8098 (_2!7499 lt!441453))))))

(declare-fun e!854122 () Bool)

(declare-fun e!854107 () Bool)

(assert (=> b!1333328 (= e!854122 (not e!854107))))

(declare-fun res!601159 () Bool)

(assert (=> b!1333328 (=> res!601159 e!854107)))

(declare-fun lambda!55747 () Int)

(declare-fun Exists!823 (Int) Bool)

(assert (=> b!1333328 (= res!601159 (not (Exists!823 lambda!55747)))))

(assert (=> b!1333328 (Exists!823 lambda!55747)))

(declare-datatypes ((Unit!19709 0))(
  ( (Unit!19710) )
))
(declare-fun lt!441437 () Unit!19709)

(declare-fun lt!441431 () Regex!3665)

(declare-fun lt!441447 () List!13641)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!141 (Regex!3665 List!13641) Unit!19709)

(assert (=> b!1333328 (= lt!441437 (lemmaPrefixMatchThenExistsStringThatMatches!141 lt!441431 lt!441447))))

(declare-fun b!1333329 () Bool)

(declare-fun e!854126 () Bool)

(declare-fun e!854110 () Bool)

(assert (=> b!1333329 (= e!854126 e!854110)))

(declare-fun res!601160 () Bool)

(assert (=> b!1333329 (=> res!601160 e!854110)))

(declare-fun lt!441442 () C!7620)

(declare-fun contains!2469 (List!13641 C!7620) Bool)

(assert (=> b!1333329 (= res!601160 (not (contains!2469 lt!441447 lt!441442)))))

(declare-fun lt!441446 () BalanceConc!8884)

(declare-fun apply!3161 (BalanceConc!8884 Int) C!7620)

(assert (=> b!1333329 (= lt!441442 (apply!3161 lt!441446 0))))

(declare-fun b!1333330 () Bool)

(declare-fun res!601131 () Bool)

(declare-fun e!854124 () Bool)

(assert (=> b!1333330 (=> res!601131 e!854124)))

(declare-datatypes ((List!13643 0))(
  ( (Nil!13577) (Cons!13577 (h!18978 Rule!4502) (t!119088 List!13643)) )
))
(declare-fun rules!2550 () List!13643)

(declare-fun lt!441456 () Rule!4502)

(declare-fun contains!2470 (List!13643 Rule!4502) Bool)

(assert (=> b!1333330 (= res!601131 (not (contains!2470 rules!2550 lt!441456)))))

(declare-fun b!1333331 () Bool)

(declare-fun res!601134 () Bool)

(assert (=> b!1333331 (=> (not res!601134) (not e!854127))))

(declare-fun rulesInvariant!1916 (LexerInterface!2046 List!13643) Bool)

(assert (=> b!1333331 (= res!601134 (rulesInvariant!1916 thiss!19762 rules!2550))))

(declare-fun b!1333332 () Bool)

(declare-fun res!601157 () Bool)

(assert (=> b!1333332 (=> (not res!601157) (not e!854127))))

(declare-fun isEmpty!8099 (List!13643) Bool)

(assert (=> b!1333332 (= res!601157 (not (isEmpty!8099 rules!2550)))))

(declare-fun b!1333333 () Bool)

(declare-fun e!854115 () Unit!19709)

(declare-fun Unit!19711 () Unit!19709)

(assert (=> b!1333333 (= e!854115 Unit!19711)))

(declare-fun b!1333334 () Bool)

(declare-fun res!601130 () Bool)

(declare-fun e!854116 () Bool)

(assert (=> b!1333334 (=> res!601130 e!854116)))

(declare-fun lt!441433 () List!13641)

(declare-fun matchR!1667 (Regex!3665 List!13641) Bool)

(assert (=> b!1333334 (= res!601130 (not (matchR!1667 (regex!2351 (rule!4096 t2!34)) lt!441433)))))

(declare-fun b!1333335 () Bool)

(declare-fun e!854111 () Bool)

(declare-fun e!854106 () Bool)

(assert (=> b!1333335 (= e!854111 e!854106)))

(declare-fun res!601135 () Bool)

(assert (=> b!1333335 (=> res!601135 e!854106)))

(assert (=> b!1333335 (= res!601135 (or (isSeparator!2351 lt!441456) (isSeparator!2351 (rule!4096 t1!34))))))

(declare-fun lt!441444 () Regex!3665)

(assert (=> b!1333335 (= (regex!2351 lt!441456) lt!441444)))

(declare-fun b!1333336 () Bool)

(declare-fun res!601133 () Bool)

(assert (=> b!1333336 (=> (not res!601133) (not e!854127))))

(declare-fun rulesProduceIndividualToken!1015 (LexerInterface!2046 List!13643 Token!4364) Bool)

(assert (=> b!1333336 (= res!601133 (rulesProduceIndividualToken!1015 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1333337 () Bool)

(declare-fun e!854114 () Bool)

(declare-fun e!854129 () Bool)

(assert (=> b!1333337 (= e!854114 e!854129)))

(declare-fun res!601156 () Bool)

(assert (=> b!1333337 (=> res!601156 e!854129)))

(declare-fun lt!441445 () tuple2!13226)

(declare-fun lt!441432 () List!13642)

(declare-fun list!5154 (BalanceConc!8886) List!13642)

(assert (=> b!1333337 (= res!601156 (not (= (list!5154 (_1!7499 lt!441445)) lt!441432)))))

(assert (=> b!1333337 (= lt!441432 (Cons!13576 t1!34 Nil!13576))))

(declare-fun lt!441430 () BalanceConc!8884)

(declare-fun lex!881 (LexerInterface!2046 List!13643 BalanceConc!8884) tuple2!13226)

(assert (=> b!1333337 (= lt!441445 (lex!881 thiss!19762 rules!2550 lt!441430))))

(declare-fun print!820 (LexerInterface!2046 BalanceConc!8886) BalanceConc!8884)

(declare-fun singletonSeq!950 (Token!4364) BalanceConc!8886)

(assert (=> b!1333337 (= lt!441430 (print!820 thiss!19762 (singletonSeq!950 t1!34)))))

(declare-fun getWitness!296 (List!13643 Int) Rule!4502)

(assert (=> b!1333337 (= lt!441456 (getWitness!296 rules!2550 lambda!55750))))

(declare-fun b!1333338 () Bool)

(declare-fun res!601153 () Bool)

(assert (=> b!1333338 (=> res!601153 e!854110)))

(declare-fun lt!441434 () List!13641)

(declare-fun lt!441448 () C!7620)

(assert (=> b!1333338 (= res!601153 (not (contains!2469 lt!441434 lt!441448)))))

(declare-fun b!1333339 () Bool)

(declare-fun res!601155 () Bool)

(assert (=> b!1333339 (=> res!601155 e!854129)))

(declare-datatypes ((tuple2!13228 0))(
  ( (tuple2!13229 (_1!7500 List!13642) (_2!7500 List!13641)) )
))
(declare-fun lexList!584 (LexerInterface!2046 List!13643 List!13641) tuple2!13228)

(declare-fun list!5155 (BalanceConc!8884) List!13641)

(assert (=> b!1333339 (= res!601155 (not (= (lexList!584 thiss!19762 rules!2550 (list!5155 lt!441430)) (tuple2!13229 lt!441432 Nil!13575))))))

(declare-fun b!1333340 () Bool)

(assert (=> b!1333340 (= e!854130 e!854124)))

(declare-fun res!601149 () Bool)

(assert (=> b!1333340 (=> res!601149 e!854124)))

(declare-datatypes ((tuple2!13230 0))(
  ( (tuple2!13231 (_1!7501 Token!4364) (_2!7501 List!13641)) )
))
(declare-datatypes ((Option!2622 0))(
  ( (None!2621) (Some!2621 (v!21258 tuple2!13230)) )
))
(declare-fun maxPrefix!1056 (LexerInterface!2046 List!13643 List!13641) Option!2622)

(assert (=> b!1333340 (= res!601149 (not (= (maxPrefix!1056 thiss!19762 rules!2550 lt!441433) (Some!2621 (tuple2!13231 t2!34 Nil!13575)))))))

(assert (=> b!1333340 (= lt!441433 (list!5155 lt!441450))))

(declare-fun b!1333341 () Bool)

(assert (=> b!1333341 (= e!854107 e!854126)))

(declare-fun res!601154 () Bool)

(assert (=> b!1333341 (=> res!601154 e!854126)))

(declare-fun ++!3468 (List!13641 List!13641) List!13641)

(declare-fun getSuffix!521 (List!13641 List!13641) List!13641)

(assert (=> b!1333341 (= res!601154 (not (= lt!441434 (++!3468 lt!441447 (getSuffix!521 lt!441434 lt!441447)))))))

(declare-fun pickWitness!128 (Int) List!13641)

(assert (=> b!1333341 (= lt!441434 (pickWitness!128 lambda!55747))))

(assert (=> b!1333342 (= e!854135 (and tp!385620 tp!385621))))

(declare-fun e!854128 () Bool)

(declare-fun e!854133 () Bool)

(declare-fun tp!385622 () Bool)

(declare-fun b!1333343 () Bool)

(assert (=> b!1333343 (= e!854133 (and tp!385622 (inv!17910 (tag!2613 (rule!4096 t1!34))) (inv!17914 (transformation!2351 (rule!4096 t1!34))) e!854128))))

(declare-fun b!1333344 () Bool)

(declare-fun res!601141 () Bool)

(assert (=> b!1333344 (=> res!601141 e!854110)))

(assert (=> b!1333344 (= res!601141 (not (contains!2469 lt!441447 lt!441448)))))

(declare-fun b!1333345 () Bool)

(declare-fun Unit!19712 () Unit!19709)

(assert (=> b!1333345 (= e!854115 Unit!19712)))

(declare-fun lt!441436 () Unit!19709)

(declare-fun lt!441428 () List!13641)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!162 (Regex!3665 List!13641 C!7620) Unit!19709)

(declare-fun head!2357 (List!13641) C!7620)

(assert (=> b!1333345 (= lt!441436 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!162 (regex!2351 (rule!4096 t1!34)) lt!441428 (head!2357 lt!441428)))))

(assert (=> b!1333345 false))

(declare-fun e!854136 () Bool)

(assert (=> b!1333346 (= e!854136 (and tp!385627 tp!385617))))

(declare-fun b!1333347 () Bool)

(declare-fun e!854119 () Bool)

(assert (=> b!1333347 (= e!854119 e!854111)))

(declare-fun res!601140 () Bool)

(assert (=> b!1333347 (=> res!601140 e!854111)))

(declare-fun lt!441443 () Bool)

(assert (=> b!1333347 (= res!601140 lt!441443)))

(declare-fun lt!441435 () Unit!19709)

(declare-fun e!854134 () Unit!19709)

(assert (=> b!1333347 (= lt!441435 e!854134)))

(declare-fun c!218433 () Bool)

(assert (=> b!1333347 (= c!218433 lt!441443)))

(declare-fun usedCharacters!216 (Regex!3665) List!13641)

(assert (=> b!1333347 (= lt!441443 (not (contains!2469 (usedCharacters!216 (regex!2351 (rule!4096 t2!34))) lt!441448)))))

(declare-fun b!1333348 () Bool)

(assert (=> b!1333348 (= e!854129 e!854130)))

(declare-fun res!601126 () Bool)

(assert (=> b!1333348 (=> res!601126 e!854130)))

(declare-fun lt!441427 () List!13642)

(assert (=> b!1333348 (= res!601126 (not (= (list!5154 (_1!7499 lt!441453)) lt!441427)))))

(assert (=> b!1333348 (= lt!441427 (Cons!13576 t2!34 Nil!13576))))

(declare-fun lt!441454 () BalanceConc!8884)

(assert (=> b!1333348 (= lt!441453 (lex!881 thiss!19762 rules!2550 lt!441454))))

(assert (=> b!1333348 (= lt!441454 (print!820 thiss!19762 (singletonSeq!950 t2!34)))))

(declare-fun b!1333349 () Bool)

(declare-fun res!601128 () Bool)

(assert (=> b!1333349 (=> res!601128 e!854110)))

(assert (=> b!1333349 (= res!601128 (not (matchR!1667 lt!441431 lt!441434)))))

(declare-fun b!1333350 () Bool)

(assert (=> b!1333350 (= e!854112 e!854122)))

(declare-fun res!601132 () Bool)

(assert (=> b!1333350 (=> (not res!601132) (not e!854122))))

(declare-fun prefixMatch!178 (Regex!3665 List!13641) Bool)

(assert (=> b!1333350 (= res!601132 (prefixMatch!178 lt!441431 lt!441447))))

(declare-fun rulesRegex!236 (LexerInterface!2046 List!13643) Regex!3665)

(assert (=> b!1333350 (= lt!441431 (rulesRegex!236 thiss!19762 rules!2550))))

(assert (=> b!1333350 (= lt!441447 (++!3468 lt!441428 (Cons!13575 lt!441448 Nil!13575)))))

(assert (=> b!1333350 (= lt!441448 (apply!3161 lt!441450 0))))

(assert (=> b!1333350 (= lt!441428 (list!5155 lt!441446))))

(assert (=> b!1333350 (= lt!441446 (charsOf!1323 t1!34))))

(declare-fun b!1333351 () Bool)

(declare-fun res!601152 () Bool)

(assert (=> b!1333351 (=> (not res!601152) (not e!854112))))

(declare-fun sepAndNonSepRulesDisjointChars!724 (List!13643 List!13643) Bool)

(assert (=> b!1333351 (= res!601152 (sepAndNonSepRulesDisjointChars!724 rules!2550 rules!2550))))

(declare-fun b!1333352 () Bool)

(declare-fun res!601142 () Bool)

(assert (=> b!1333352 (=> (not res!601142) (not e!854127))))

(assert (=> b!1333352 (= res!601142 (not (= (isSeparator!2351 (rule!4096 t1!34)) (isSeparator!2351 (rule!4096 t2!34)))))))

(assert (=> b!1333353 (= e!854124 e!854116)))

(declare-fun res!601138 () Bool)

(assert (=> b!1333353 (=> res!601138 e!854116)))

(assert (=> b!1333353 (= res!601138 (not (matchR!1667 (regex!2351 (rule!4096 t1!34)) lt!441428)))))

(declare-fun lt!441438 () Unit!19709)

(declare-fun forallContained!602 (List!13643 Int Rule!4502) Unit!19709)

(assert (=> b!1333353 (= lt!441438 (forallContained!602 rules!2550 lambda!55751 (rule!4096 t2!34)))))

(declare-fun lt!441451 () Unit!19709)

(assert (=> b!1333353 (= lt!441451 (forallContained!602 rules!2550 lambda!55751 (rule!4096 t1!34)))))

(declare-fun lt!441429 () Unit!19709)

(assert (=> b!1333353 (= lt!441429 (forallContained!602 rules!2550 lambda!55751 lt!441456))))

(declare-fun b!1333354 () Bool)

(declare-fun Unit!19713 () Unit!19709)

(assert (=> b!1333354 (= e!854134 Unit!19713)))

(declare-fun b!1333355 () Bool)

(declare-fun Unit!19714 () Unit!19709)

(assert (=> b!1333355 (= e!854134 Unit!19714)))

(declare-fun lt!441455 () Unit!19709)

(assert (=> b!1333355 (= lt!441455 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!162 (regex!2351 (rule!4096 t2!34)) lt!441433 (head!2357 lt!441433)))))

(assert (=> b!1333355 false))

(declare-fun e!854109 () Bool)

(assert (=> b!1333356 (= e!854109 e!854114)))

(declare-fun res!601136 () Bool)

(assert (=> b!1333356 (=> res!601136 e!854114)))

(declare-fun exists!404 (List!13643 Int) Bool)

(assert (=> b!1333356 (= res!601136 (not (exists!404 rules!2550 lambda!55750)))))

(assert (=> b!1333356 (exists!404 rules!2550 lambda!55750)))

(declare-fun lambda!55748 () Int)

(declare-fun lt!441441 () Unit!19709)

(declare-fun lemmaMapContains!94 (List!13643 Int Regex!3665) Unit!19709)

(assert (=> b!1333356 (= lt!441441 (lemmaMapContains!94 rules!2550 lambda!55748 lt!441444))))

(declare-fun b!1333357 () Bool)

(declare-fun res!601137 () Bool)

(assert (=> b!1333357 (=> res!601137 e!854130)))

(assert (=> b!1333357 (= res!601137 (not (= (lexList!584 thiss!19762 rules!2550 (list!5155 lt!441454)) (tuple2!13229 lt!441427 Nil!13575))))))

(declare-fun e!854121 () Bool)

(assert (=> b!1333358 (= e!854110 e!854121)))

(declare-fun res!601145 () Bool)

(assert (=> b!1333358 (=> res!601145 e!854121)))

(declare-fun lambda!55749 () Int)

(declare-datatypes ((List!13644 0))(
  ( (Nil!13578) (Cons!13578 (h!18979 Regex!3665) (t!119089 List!13644)) )
))
(declare-fun exists!405 (List!13644 Int) Bool)

(declare-fun map!2993 (List!13643 Int) List!13644)

(assert (=> b!1333358 (= res!601145 (not (exists!405 (map!2993 rules!2550 lambda!55748) lambda!55749)))))

(declare-fun lt!441439 () List!13644)

(assert (=> b!1333358 (exists!405 lt!441439 lambda!55749)))

(declare-fun lt!441426 () Unit!19709)

(declare-fun matchRGenUnionSpec!102 (Regex!3665 List!13644 List!13641) Unit!19709)

(assert (=> b!1333358 (= lt!441426 (matchRGenUnionSpec!102 lt!441431 lt!441439 lt!441434))))

(assert (=> b!1333358 (= lt!441439 (map!2993 rules!2550 lambda!55748))))

(declare-fun b!1333359 () Bool)

(declare-fun res!601127 () Bool)

(assert (=> b!1333359 (=> res!601127 e!854129)))

(assert (=> b!1333359 (= res!601127 (not (isEmpty!8098 (_2!7499 lt!441445))))))

(declare-fun b!1333360 () Bool)

(assert (=> b!1333360 (= e!854106 (< 0 lt!441452))))

(assert (=> b!1333360 (not (contains!2469 (usedCharacters!216 (regex!2351 lt!441456)) lt!441448))))

(declare-fun lt!441449 () Unit!19709)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!6 (LexerInterface!2046 List!13643 List!13643 Rule!4502 Rule!4502 C!7620) Unit!19709)

(assert (=> b!1333360 (= lt!441449 (lemmaNonSepRuleNotContainsCharContainedInASepRule!6 thiss!19762 rules!2550 rules!2550 lt!441456 (rule!4096 t2!34) lt!441448))))

(declare-fun b!1333361 () Bool)

(declare-fun res!601139 () Bool)

(assert (=> b!1333361 (=> res!601139 e!854110)))

(assert (=> b!1333361 (= res!601139 (not (contains!2469 lt!441434 lt!441442)))))

(declare-fun tp!385623 () Bool)

(declare-fun b!1333362 () Bool)

(declare-fun inv!21 (TokenValue!2441) Bool)

(assert (=> b!1333362 (= e!854120 (and (inv!21 (value!76636 t2!34)) e!854105 tp!385623))))

(declare-fun b!1333363 () Bool)

(declare-fun res!601151 () Bool)

(assert (=> b!1333363 (=> res!601151 e!854124)))

(assert (=> b!1333363 (= res!601151 (not (contains!2470 rules!2550 (rule!4096 t2!34))))))

(declare-fun b!1333364 () Bool)

(assert (=> b!1333364 (= e!854116 e!854119)))

(declare-fun res!601146 () Bool)

(assert (=> b!1333364 (=> res!601146 e!854119)))

(declare-fun lt!441425 () Bool)

(assert (=> b!1333364 (= res!601146 lt!441425)))

(declare-fun lt!441440 () Unit!19709)

(assert (=> b!1333364 (= lt!441440 e!854115)))

(declare-fun c!218432 () Bool)

(assert (=> b!1333364 (= c!218432 lt!441425)))

(assert (=> b!1333364 (= lt!441425 (not (contains!2469 (usedCharacters!216 (regex!2351 (rule!4096 t1!34))) lt!441442)))))

(assert (=> b!1333365 (= e!854128 (and tp!385624 tp!385625))))

(declare-fun b!1333366 () Bool)

(declare-fun res!601158 () Bool)

(assert (=> b!1333366 (=> (not res!601158) (not e!854112))))

(declare-fun separableTokensPredicate!329 (LexerInterface!2046 Token!4364 Token!4364 List!13643) Bool)

(assert (=> b!1333366 (= res!601158 (not (separableTokensPredicate!329 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1333367 () Bool)

(declare-fun res!601148 () Bool)

(assert (=> b!1333367 (=> res!601148 e!854129)))

(assert (=> b!1333367 (= res!601148 (not (= (maxPrefix!1056 thiss!19762 rules!2550 lt!441428) (Some!2621 (tuple2!13231 t1!34 Nil!13575)))))))

(declare-fun b!1333368 () Bool)

(declare-fun res!601150 () Bool)

(assert (=> b!1333368 (=> (not res!601150) (not e!854127))))

(assert (=> b!1333368 (= res!601150 (rulesProduceIndividualToken!1015 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1333369 () Bool)

(declare-fun e!854132 () Bool)

(declare-fun tp!385628 () Bool)

(assert (=> b!1333369 (= e!854118 (and e!854132 tp!385628))))

(declare-fun b!1333370 () Bool)

(declare-fun tp!385619 () Bool)

(assert (=> b!1333370 (= e!854132 (and tp!385619 (inv!17910 (tag!2613 (h!18978 rules!2550))) (inv!17914 (transformation!2351 (h!18978 rules!2550))) e!854136))))

(declare-fun b!1333371 () Bool)

(declare-fun res!601161 () Bool)

(assert (=> b!1333371 (=> res!601161 e!854129)))

(assert (=> b!1333371 (= res!601161 (not (contains!2470 rules!2550 (rule!4096 t1!34))))))

(declare-fun b!1333372 () Bool)

(assert (=> b!1333372 (= e!854121 e!854109)))

(declare-fun res!601147 () Bool)

(assert (=> b!1333372 (=> res!601147 e!854109)))

(declare-fun contains!2471 (List!13644 Regex!3665) Bool)

(assert (=> b!1333372 (= res!601147 (not (contains!2471 (map!2993 rules!2550 lambda!55748) lt!441444)))))

(declare-fun getWitness!297 (List!13644 Int) Regex!3665)

(assert (=> b!1333372 (= lt!441444 (getWitness!297 (map!2993 rules!2550 lambda!55748) lambda!55749))))

(declare-fun b!1333373 () Bool)

(declare-fun tp!385626 () Bool)

(assert (=> b!1333373 (= e!854113 (and (inv!21 (value!76636 t1!34)) e!854133 tp!385626))))

(assert (= (and start!118642 res!601144) b!1333332))

(assert (= (and b!1333332 res!601157) b!1333331))

(assert (= (and b!1333331 res!601134) b!1333336))

(assert (= (and b!1333336 res!601133) b!1333368))

(assert (= (and b!1333368 res!601150) b!1333352))

(assert (= (and b!1333352 res!601142) b!1333326))

(assert (= (and b!1333326 res!601143) b!1333351))

(assert (= (and b!1333351 res!601152) b!1333366))

(assert (= (and b!1333366 res!601158) b!1333350))

(assert (= (and b!1333350 res!601132) b!1333328))

(assert (= (and b!1333328 (not res!601159)) b!1333341))

(assert (= (and b!1333341 (not res!601154)) b!1333329))

(assert (= (and b!1333329 (not res!601160)) b!1333361))

(assert (= (and b!1333361 (not res!601139)) b!1333344))

(assert (= (and b!1333344 (not res!601141)) b!1333338))

(assert (= (and b!1333338 (not res!601153)) b!1333349))

(assert (= (and b!1333349 (not res!601128)) b!1333358))

(assert (= (and b!1333358 (not res!601145)) b!1333372))

(assert (= (and b!1333372 (not res!601147)) b!1333356))

(assert (= (and b!1333356 (not res!601136)) b!1333337))

(assert (= (and b!1333337 (not res!601156)) b!1333359))

(assert (= (and b!1333359 (not res!601127)) b!1333339))

(assert (= (and b!1333339 (not res!601155)) b!1333367))

(assert (= (and b!1333367 (not res!601148)) b!1333371))

(assert (= (and b!1333371 (not res!601161)) b!1333348))

(assert (= (and b!1333348 (not res!601126)) b!1333327))

(assert (= (and b!1333327 (not res!601129)) b!1333357))

(assert (= (and b!1333357 (not res!601137)) b!1333340))

(assert (= (and b!1333340 (not res!601149)) b!1333363))

(assert (= (and b!1333363 (not res!601151)) b!1333330))

(assert (= (and b!1333330 (not res!601131)) b!1333353))

(assert (= (and b!1333353 (not res!601138)) b!1333334))

(assert (= (and b!1333334 (not res!601130)) b!1333364))

(assert (= (and b!1333364 c!218432) b!1333345))

(assert (= (and b!1333364 (not c!218432)) b!1333333))

(assert (= (and b!1333364 (not res!601146)) b!1333347))

(assert (= (and b!1333347 c!218433) b!1333355))

(assert (= (and b!1333347 (not c!218433)) b!1333354))

(assert (= (and b!1333347 (not res!601140)) b!1333335))

(assert (= (and b!1333335 (not res!601135)) b!1333360))

(assert (= b!1333370 b!1333346))

(assert (= b!1333369 b!1333370))

(assert (= (and start!118642 ((_ is Cons!13577) rules!2550)) b!1333369))

(assert (= b!1333343 b!1333365))

(assert (= b!1333373 b!1333343))

(assert (= start!118642 b!1333373))

(assert (= b!1333325 b!1333342))

(assert (= b!1333362 b!1333325))

(assert (= start!118642 b!1333362))

(declare-fun m!1490679 () Bool)

(assert (=> b!1333328 m!1490679))

(assert (=> b!1333328 m!1490679))

(declare-fun m!1490681 () Bool)

(assert (=> b!1333328 m!1490681))

(declare-fun m!1490683 () Bool)

(assert (=> b!1333353 m!1490683))

(declare-fun m!1490685 () Bool)

(assert (=> b!1333353 m!1490685))

(declare-fun m!1490687 () Bool)

(assert (=> b!1333353 m!1490687))

(declare-fun m!1490689 () Bool)

(assert (=> b!1333353 m!1490689))

(declare-fun m!1490691 () Bool)

(assert (=> b!1333330 m!1490691))

(declare-fun m!1490693 () Bool)

(assert (=> b!1333364 m!1490693))

(assert (=> b!1333364 m!1490693))

(declare-fun m!1490695 () Bool)

(assert (=> b!1333364 m!1490695))

(declare-fun m!1490697 () Bool)

(assert (=> b!1333340 m!1490697))

(declare-fun m!1490699 () Bool)

(assert (=> b!1333340 m!1490699))

(declare-fun m!1490701 () Bool)

(assert (=> b!1333348 m!1490701))

(declare-fun m!1490703 () Bool)

(assert (=> b!1333348 m!1490703))

(declare-fun m!1490705 () Bool)

(assert (=> b!1333348 m!1490705))

(assert (=> b!1333348 m!1490705))

(declare-fun m!1490707 () Bool)

(assert (=> b!1333348 m!1490707))

(declare-fun m!1490709 () Bool)

(assert (=> b!1333351 m!1490709))

(declare-fun m!1490711 () Bool)

(assert (=> b!1333334 m!1490711))

(declare-fun m!1490713 () Bool)

(assert (=> b!1333360 m!1490713))

(assert (=> b!1333360 m!1490713))

(declare-fun m!1490715 () Bool)

(assert (=> b!1333360 m!1490715))

(declare-fun m!1490717 () Bool)

(assert (=> b!1333360 m!1490717))

(declare-fun m!1490719 () Bool)

(assert (=> b!1333349 m!1490719))

(declare-fun m!1490721 () Bool)

(assert (=> b!1333332 m!1490721))

(declare-fun m!1490723 () Bool)

(assert (=> b!1333331 m!1490723))

(declare-fun m!1490725 () Bool)

(assert (=> b!1333358 m!1490725))

(declare-fun m!1490727 () Bool)

(assert (=> b!1333358 m!1490727))

(assert (=> b!1333358 m!1490725))

(assert (=> b!1333358 m!1490725))

(declare-fun m!1490729 () Bool)

(assert (=> b!1333358 m!1490729))

(declare-fun m!1490731 () Bool)

(assert (=> b!1333358 m!1490731))

(declare-fun m!1490733 () Bool)

(assert (=> b!1333329 m!1490733))

(declare-fun m!1490735 () Bool)

(assert (=> b!1333329 m!1490735))

(declare-fun m!1490737 () Bool)

(assert (=> b!1333373 m!1490737))

(declare-fun m!1490739 () Bool)

(assert (=> b!1333356 m!1490739))

(assert (=> b!1333356 m!1490739))

(declare-fun m!1490741 () Bool)

(assert (=> b!1333356 m!1490741))

(declare-fun m!1490743 () Bool)

(assert (=> b!1333367 m!1490743))

(assert (=> b!1333372 m!1490725))

(assert (=> b!1333372 m!1490725))

(declare-fun m!1490745 () Bool)

(assert (=> b!1333372 m!1490745))

(assert (=> b!1333372 m!1490725))

(assert (=> b!1333372 m!1490725))

(declare-fun m!1490747 () Bool)

(assert (=> b!1333372 m!1490747))

(declare-fun m!1490749 () Bool)

(assert (=> start!118642 m!1490749))

(declare-fun m!1490751 () Bool)

(assert (=> start!118642 m!1490751))

(declare-fun m!1490753 () Bool)

(assert (=> b!1333325 m!1490753))

(declare-fun m!1490755 () Bool)

(assert (=> b!1333325 m!1490755))

(declare-fun m!1490757 () Bool)

(assert (=> b!1333341 m!1490757))

(assert (=> b!1333341 m!1490757))

(declare-fun m!1490759 () Bool)

(assert (=> b!1333341 m!1490759))

(declare-fun m!1490761 () Bool)

(assert (=> b!1333341 m!1490761))

(declare-fun m!1490763 () Bool)

(assert (=> b!1333357 m!1490763))

(assert (=> b!1333357 m!1490763))

(declare-fun m!1490765 () Bool)

(assert (=> b!1333357 m!1490765))

(declare-fun m!1490767 () Bool)

(assert (=> b!1333355 m!1490767))

(assert (=> b!1333355 m!1490767))

(declare-fun m!1490769 () Bool)

(assert (=> b!1333355 m!1490769))

(declare-fun m!1490771 () Bool)

(assert (=> b!1333350 m!1490771))

(declare-fun m!1490773 () Bool)

(assert (=> b!1333350 m!1490773))

(declare-fun m!1490775 () Bool)

(assert (=> b!1333350 m!1490775))

(declare-fun m!1490777 () Bool)

(assert (=> b!1333350 m!1490777))

(declare-fun m!1490779 () Bool)

(assert (=> b!1333350 m!1490779))

(declare-fun m!1490781 () Bool)

(assert (=> b!1333350 m!1490781))

(declare-fun m!1490783 () Bool)

(assert (=> b!1333339 m!1490783))

(assert (=> b!1333339 m!1490783))

(declare-fun m!1490785 () Bool)

(assert (=> b!1333339 m!1490785))

(declare-fun m!1490787 () Bool)

(assert (=> b!1333326 m!1490787))

(declare-fun m!1490789 () Bool)

(assert (=> b!1333326 m!1490789))

(declare-fun m!1490791 () Bool)

(assert (=> b!1333336 m!1490791))

(declare-fun m!1490793 () Bool)

(assert (=> b!1333371 m!1490793))

(declare-fun m!1490795 () Bool)

(assert (=> b!1333362 m!1490795))

(declare-fun m!1490797 () Bool)

(assert (=> b!1333363 m!1490797))

(declare-fun m!1490799 () Bool)

(assert (=> b!1333327 m!1490799))

(declare-fun m!1490801 () Bool)

(assert (=> b!1333370 m!1490801))

(declare-fun m!1490803 () Bool)

(assert (=> b!1333370 m!1490803))

(declare-fun m!1490805 () Bool)

(assert (=> b!1333345 m!1490805))

(assert (=> b!1333345 m!1490805))

(declare-fun m!1490807 () Bool)

(assert (=> b!1333345 m!1490807))

(declare-fun m!1490809 () Bool)

(assert (=> b!1333337 m!1490809))

(declare-fun m!1490811 () Bool)

(assert (=> b!1333337 m!1490811))

(declare-fun m!1490813 () Bool)

(assert (=> b!1333337 m!1490813))

(declare-fun m!1490815 () Bool)

(assert (=> b!1333337 m!1490815))

(assert (=> b!1333337 m!1490813))

(declare-fun m!1490817 () Bool)

(assert (=> b!1333337 m!1490817))

(declare-fun m!1490819 () Bool)

(assert (=> b!1333343 m!1490819))

(declare-fun m!1490821 () Bool)

(assert (=> b!1333343 m!1490821))

(declare-fun m!1490823 () Bool)

(assert (=> b!1333361 m!1490823))

(declare-fun m!1490825 () Bool)

(assert (=> b!1333368 m!1490825))

(declare-fun m!1490827 () Bool)

(assert (=> b!1333347 m!1490827))

(assert (=> b!1333347 m!1490827))

(declare-fun m!1490829 () Bool)

(assert (=> b!1333347 m!1490829))

(declare-fun m!1490831 () Bool)

(assert (=> b!1333359 m!1490831))

(declare-fun m!1490833 () Bool)

(assert (=> b!1333338 m!1490833))

(declare-fun m!1490835 () Bool)

(assert (=> b!1333366 m!1490835))

(declare-fun m!1490837 () Bool)

(assert (=> b!1333344 m!1490837))

(check-sat b_and!89085 (not b!1333370) (not b_next!33019) b_and!89081 (not b!1333344) (not b!1333357) (not b!1333363) b_and!89079 (not b!1333326) (not b!1333330) (not b!1333336) b_and!89087 (not b_next!33025) (not b_next!33027) (not b!1333373) (not b_next!33023) (not b!1333358) (not b!1333361) (not b!1333356) (not b!1333372) (not b!1333329) (not b!1333350) (not b_next!33029) (not b!1333362) b_and!89083 (not b!1333366) (not b!1333338) (not b!1333337) (not b!1333332) (not b!1333355) (not b!1333347) (not b!1333341) (not b_next!33021) (not b!1333364) (not b!1333349) (not b!1333369) (not b!1333368) (not b!1333367) (not b!1333345) b_and!89089 (not b!1333351) (not b!1333360) (not start!118642) (not b!1333325) (not b!1333340) (not b!1333339) (not b!1333327) (not b!1333359) (not b!1333348) (not b!1333331) (not b!1333353) (not b!1333343) (not b!1333328) (not b!1333371) (not b!1333334))
(check-sat b_and!89085 (not b_next!33023) (not b_next!33019) b_and!89081 (not b_next!33029) b_and!89083 (not b_next!33021) b_and!89079 b_and!89089 b_and!89087 (not b_next!33025) (not b_next!33027))
