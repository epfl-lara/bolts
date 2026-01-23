; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93306 () Bool)

(assert start!93306)

(declare-fun bs!257924 () Bool)

(declare-fun b!1091057 () Bool)

(assert (= bs!257924 (and b!1091057 start!93306)))

(declare-fun lambda!41244 () Int)

(declare-fun lambda!41243 () Int)

(assert (=> bs!257924 (not (= lambda!41244 lambda!41243))))

(declare-fun b!1091075 () Bool)

(declare-fun e!690420 () Bool)

(assert (=> b!1091075 (= e!690420 true)))

(declare-fun b!1091074 () Bool)

(declare-fun e!690419 () Bool)

(assert (=> b!1091074 (= e!690419 e!690420)))

(assert (=> b!1091057 e!690419))

(assert (= b!1091074 b!1091075))

(assert (= b!1091057 b!1091074))

(declare-fun lambda!41245 () Int)

(assert (=> bs!257924 (not (= lambda!41245 lambda!41243))))

(assert (=> b!1091057 (not (= lambda!41245 lambda!41244))))

(declare-fun b!1091077 () Bool)

(declare-fun e!690422 () Bool)

(assert (=> b!1091077 (= e!690422 true)))

(declare-fun b!1091076 () Bool)

(declare-fun e!690421 () Bool)

(assert (=> b!1091076 (= e!690421 e!690422)))

(assert (=> b!1091057 e!690421))

(assert (= b!1091076 b!1091077))

(assert (= b!1091057 b!1091076))

(declare-fun lambda!41246 () Int)

(assert (=> bs!257924 (not (= lambda!41246 lambda!41243))))

(assert (=> b!1091057 (not (= lambda!41246 lambda!41244))))

(assert (=> b!1091057 (not (= lambda!41246 lambda!41245))))

(declare-fun b!1091079 () Bool)

(declare-fun e!690424 () Bool)

(assert (=> b!1091079 (= e!690424 true)))

(declare-fun b!1091078 () Bool)

(declare-fun e!690423 () Bool)

(assert (=> b!1091078 (= e!690423 e!690424)))

(assert (=> b!1091057 e!690423))

(assert (= b!1091078 b!1091079))

(assert (= b!1091057 b!1091078))

(declare-fun b!1091050 () Bool)

(declare-datatypes ((Unit!15866 0))(
  ( (Unit!15867) )
))
(declare-fun e!690411 () Unit!15866)

(declare-fun err!1944 () Unit!15866)

(assert (=> b!1091050 (= e!690411 err!1944)))

(declare-datatypes ((List!10479 0))(
  ( (Nil!10463) (Cons!10463 (h!15864 (_ BitVec 16)) (t!101897 List!10479)) )
))
(declare-datatypes ((TokenValue!1850 0))(
  ( (FloatLiteralValue!3700 (text!13395 List!10479)) (TokenValueExt!1849 (__x!7432 Int)) (Broken!9250 (value!58771 List!10479)) (Object!1865) (End!1850) (Def!1850) (Underscore!1850) (Match!1850) (Else!1850) (Error!1850) (Case!1850) (If!1850) (Extends!1850) (Abstract!1850) (Class!1850) (Val!1850) (DelimiterValue!3700 (del!1910 List!10479)) (KeywordValue!1856 (value!58772 List!10479)) (CommentValue!3700 (value!58773 List!10479)) (WhitespaceValue!3700 (value!58774 List!10479)) (IndentationValue!1850 (value!58775 List!10479)) (String!12819) (Int32!1850) (Broken!9251 (value!58776 List!10479)) (Boolean!1851) (Unit!15868) (OperatorValue!1853 (op!1910 List!10479)) (IdentifierValue!3700 (value!58777 List!10479)) (IdentifierValue!3701 (value!58778 List!10479)) (WhitespaceValue!3701 (value!58779 List!10479)) (True!3700) (False!3700) (Broken!9252 (value!58780 List!10479)) (Broken!9253 (value!58781 List!10479)) (True!3701) (RightBrace!1850) (RightBracket!1850) (Colon!1850) (Null!1850) (Comma!1850) (LeftBracket!1850) (False!3701) (LeftBrace!1850) (ImaginaryLiteralValue!1850 (text!13396 List!10479)) (StringLiteralValue!5550 (value!58782 List!10479)) (EOFValue!1850 (value!58783 List!10479)) (IdentValue!1850 (value!58784 List!10479)) (DelimiterValue!3701 (value!58785 List!10479)) (DedentValue!1850 (value!58786 List!10479)) (NewLineValue!1850 (value!58787 List!10479)) (IntegerValue!5550 (value!58788 (_ BitVec 32)) (text!13397 List!10479)) (IntegerValue!5551 (value!58789 Int) (text!13398 List!10479)) (Times!1850) (Or!1850) (Equal!1850) (Minus!1850) (Broken!9254 (value!58790 List!10479)) (And!1850) (Div!1850) (LessEqual!1850) (Mod!1850) (Concat!4903) (Not!1850) (Plus!1850) (SpaceValue!1850 (value!58791 List!10479)) (IntegerValue!5552 (value!58792 Int) (text!13399 List!10479)) (StringLiteralValue!5551 (text!13400 List!10479)) (FloatLiteralValue!3701 (text!13401 List!10479)) (BytesLiteralValue!1850 (value!58793 List!10479)) (CommentValue!3701 (value!58794 List!10479)) (StringLiteralValue!5552 (value!58795 List!10479)) (ErrorTokenValue!1850 (msg!1911 List!10479)) )
))
(declare-datatypes ((Regex!3053 0))(
  ( (ElementMatch!3053 (c!184894 (_ BitVec 16))) (Concat!4904 (regOne!6618 Regex!3053) (regTwo!6618 Regex!3053)) (EmptyExpr!3053) (Star!3053 (reg!3382 Regex!3053)) (EmptyLang!3053) (Union!3053 (regOne!6619 Regex!3053) (regTwo!6619 Regex!3053)) )
))
(declare-datatypes ((String!12820 0))(
  ( (String!12821 (value!58796 String)) )
))
(declare-datatypes ((IArray!6363 0))(
  ( (IArray!6364 (innerList!3239 List!10479)) )
))
(declare-datatypes ((Conc!3179 0))(
  ( (Node!3179 (left!8970 Conc!3179) (right!9300 Conc!3179) (csize!6588 Int) (cheight!3390 Int)) (Leaf!5077 (xs!5872 IArray!6363) (csize!6589 Int)) (Empty!3179) )
))
(declare-datatypes ((BalanceConc!6372 0))(
  ( (BalanceConc!6373 (c!184895 Conc!3179)) )
))
(declare-datatypes ((TokenValueInjection!3400 0))(
  ( (TokenValueInjection!3401 (toValue!2861 Int) (toChars!2720 Int)) )
))
(declare-datatypes ((Rule!3368 0))(
  ( (Rule!3369 (regex!1784 Regex!3053) (tag!2046 String!12820) (isSeparator!1784 Bool) (transformation!1784 TokenValueInjection!3400)) )
))
(declare-datatypes ((Token!3234 0))(
  ( (Token!3235 (value!58797 TokenValue!1850) (rule!3207 Rule!3368) (size!8088 Int) (originalCharacters!2340 List!10479)) )
))
(declare-datatypes ((List!10480 0))(
  ( (Nil!10464) (Cons!10464 (h!15865 Token!3234) (t!101898 List!10480)) )
))
(declare-datatypes ((IArray!6365 0))(
  ( (IArray!6366 (innerList!3240 List!10480)) )
))
(declare-datatypes ((Conc!3180 0))(
  ( (Node!3180 (left!8971 Conc!3180) (right!9301 Conc!3180) (csize!6590 Int) (cheight!3391 Int)) (Leaf!5078 (xs!5873 IArray!6365) (csize!6591 Int)) (Empty!3180) )
))
(declare-datatypes ((List!10481 0))(
  ( (Nil!10465) (Cons!10465 (h!15866 Rule!3368) (t!101899 List!10481)) )
))
(declare-datatypes ((BalanceConc!6374 0))(
  ( (BalanceConc!6375 (c!184896 Conc!3180)) )
))
(declare-datatypes ((PrintableTokens!284 0))(
  ( (PrintableTokens!285 (rules!9071 List!10481) (tokens!1343 BalanceConc!6374)) )
))
(declare-datatypes ((tuple2!11694 0))(
  ( (tuple2!11695 (_1!6673 Int) (_2!6673 PrintableTokens!284)) )
))
(declare-fun lt!365330 () tuple2!11694)

(declare-fun lt!365327 () Unit!15866)

(declare-datatypes ((List!10482 0))(
  ( (Nil!10466) (Cons!10466 (h!15867 tuple2!11694) (t!101900 List!10482)) )
))
(declare-datatypes ((IArray!6367 0))(
  ( (IArray!6368 (innerList!3241 List!10482)) )
))
(declare-datatypes ((Conc!3181 0))(
  ( (Node!3181 (left!8972 Conc!3181) (right!9302 Conc!3181) (csize!6592 Int) (cheight!3392 Int)) (Leaf!5079 (xs!5874 IArray!6367) (csize!6593 Int)) (Empty!3181) )
))
(declare-datatypes ((BalanceConc!6376 0))(
  ( (BalanceConc!6377 (c!184897 Conc!3181)) )
))
(declare-fun lt!365315 () BalanceConc!6376)

(declare-fun forallContained!486 (List!10482 Int tuple2!11694) Unit!15866)

(declare-fun list!3750 (BalanceConc!6376) List!10482)

(assert (=> b!1091050 (= lt!365327 (forallContained!486 (list!3750 lt!365315) lambda!41246 lt!365330))))

(assert (=> b!1091050 true))

(declare-fun b!1091051 () Bool)

(declare-fun Unit!15869 () Unit!15866)

(assert (=> b!1091051 (= e!690411 Unit!15869)))

(declare-fun b!1091052 () Bool)

(declare-fun e!690413 () Unit!15866)

(declare-fun err!1942 () Unit!15866)

(assert (=> b!1091052 (= e!690413 err!1942)))

(declare-fun lt!365311 () Unit!15866)

(declare-fun objs!8 () BalanceConc!6376)

(assert (=> b!1091052 (= lt!365311 (forallContained!486 (list!3750 objs!8) lambda!41244 lt!365330))))

(assert (=> b!1091052 true))

(declare-fun b!1091053 () Bool)

(declare-fun e!690405 () Bool)

(assert (=> b!1091053 (= e!690405 true)))

(declare-fun lt!365319 () List!10482)

(declare-fun filter!232 (BalanceConc!6376 Int) BalanceConc!6376)

(assert (=> b!1091053 (= lt!365319 (list!3750 (filter!232 objs!8 lambda!41245)))))

(declare-fun lt!365312 () List!10482)

(declare-fun forall!2330 (List!10482 Int) Bool)

(assert (=> b!1091053 (forall!2330 lt!365312 lambda!41243)))

(declare-fun lt!365324 () List!10482)

(declare-fun lt!365321 () Unit!15866)

(declare-fun lemmaForallSubseq!29 (List!10482 List!10482 Int) Unit!15866)

(assert (=> b!1091053 (= lt!365321 (lemmaForallSubseq!29 lt!365312 lt!365324 lambda!41243))))

(assert (=> b!1091053 (= lt!365312 (list!3750 (filter!232 objs!8 lambda!41244)))))

(declare-fun lt!365322 () Unit!15866)

(declare-fun filterSubseq!21 (List!10482 Int) Unit!15866)

(assert (=> b!1091053 (= lt!365322 (filterSubseq!21 lt!365324 lambda!41246))))

(declare-fun lt!365316 () Unit!15866)

(assert (=> b!1091053 (= lt!365316 (filterSubseq!21 lt!365324 lambda!41245))))

(declare-fun lt!365313 () Unit!15866)

(assert (=> b!1091053 (= lt!365313 (filterSubseq!21 lt!365324 lambda!41244))))

(declare-fun b!1091054 () Bool)

(declare-fun e!690407 () Unit!15866)

(declare-fun Unit!15870 () Unit!15866)

(assert (=> b!1091054 (= e!690407 Unit!15870)))

(declare-fun res!484857 () Bool)

(declare-fun e!690412 () Bool)

(assert (=> start!93306 (=> (not res!484857) (not e!690412))))

(declare-fun forall!2331 (BalanceConc!6376 Int) Bool)

(assert (=> start!93306 (= res!484857 (forall!2331 objs!8 lambda!41243))))

(assert (=> start!93306 e!690412))

(declare-fun e!690408 () Bool)

(declare-fun inv!13397 (BalanceConc!6376) Bool)

(assert (=> start!93306 (and (inv!13397 objs!8) e!690408)))

(declare-fun b!1091055 () Bool)

(declare-fun Unit!15871 () Unit!15866)

(assert (=> b!1091055 (= e!690413 Unit!15871)))

(declare-fun b!1091056 () Bool)

(declare-fun e!690409 () Bool)

(declare-fun e!690401 () Bool)

(assert (=> b!1091056 (= e!690409 e!690401)))

(declare-fun res!484858 () Bool)

(assert (=> b!1091056 (=> (not res!484858) (not e!690401))))

(declare-fun lt!365325 () Bool)

(assert (=> b!1091056 (= res!484858 (not lt!365325))))

(declare-fun lt!365323 () Unit!15866)

(assert (=> b!1091056 (= lt!365323 e!690407)))

(declare-fun c!184892 () Bool)

(assert (=> b!1091056 (= c!184892 lt!365325)))

(declare-fun lt!365332 () BalanceConc!6376)

(declare-fun contains!1760 (BalanceConc!6376 tuple2!11694) Bool)

(assert (=> b!1091056 (= lt!365325 (contains!1760 lt!365332 lt!365330))))

(declare-fun e!690404 () Bool)

(assert (=> b!1091057 (= e!690404 e!690409)))

(declare-fun res!484854 () Bool)

(assert (=> b!1091057 (=> (not res!484854) (not e!690409))))

(assert (=> b!1091057 (= res!484854 (contains!1760 objs!8 lt!365330))))

(assert (=> b!1091057 (= lt!365315 (filter!232 objs!8 lambda!41246))))

(declare-fun lt!365331 () BalanceConc!6376)

(assert (=> b!1091057 (= lt!365331 (filter!232 objs!8 lambda!41245))))

(assert (=> b!1091057 (= lt!365332 (filter!232 objs!8 lambda!41244))))

(declare-fun lt!365317 () Int)

(declare-fun apply!2039 (BalanceConc!6376 Int) tuple2!11694)

(assert (=> b!1091057 (= lt!365330 (apply!2039 objs!8 (ite (>= lt!365317 0) (div lt!365317 2) (- (div (- lt!365317) 2)))))))

(declare-fun b!1091058 () Bool)

(declare-fun e!690410 () Unit!15866)

(declare-fun err!1945 () Unit!15866)

(assert (=> b!1091058 (= e!690410 err!1945)))

(declare-fun lt!365329 () Unit!15866)

(assert (=> b!1091058 (= lt!365329 (forallContained!486 lt!365324 lambda!41246 lt!365330))))

(assert (=> b!1091058 true))

(declare-fun b!1091059 () Bool)

(assert (=> b!1091059 (= e!690412 e!690404)))

(declare-fun res!484853 () Bool)

(assert (=> b!1091059 (=> (not res!484853) (not e!690404))))

(assert (=> b!1091059 (= res!484853 (> lt!365317 1))))

(declare-fun size!8089 (BalanceConc!6376) Int)

(assert (=> b!1091059 (= lt!365317 (size!8089 objs!8))))

(declare-fun b!1091060 () Bool)

(declare-fun e!690403 () Bool)

(declare-fun size!8090 (List!10482) Int)

(declare-fun filter!233 (List!10482 Int) List!10482)

(assert (=> b!1091060 (= e!690403 (< (size!8090 (filter!233 lt!365324 lambda!41244)) (size!8090 lt!365324)))))

(declare-fun b!1091061 () Bool)

(declare-fun err!1943 () Unit!15866)

(assert (=> b!1091061 (= e!690407 err!1943)))

(declare-fun lt!365320 () Unit!15866)

(assert (=> b!1091061 (= lt!365320 (forallContained!486 (list!3750 lt!365332) lambda!41244 lt!365330))))

(assert (=> b!1091061 true))

(declare-fun b!1091062 () Bool)

(declare-fun e!690402 () Bool)

(assert (=> b!1091062 (= e!690402 e!690405)))

(declare-fun res!484859 () Bool)

(assert (=> b!1091062 (=> res!484859 e!690405)))

(assert (=> b!1091062 (= res!484859 (>= (size!8089 lt!365315) lt!365317))))

(declare-fun e!690406 () Bool)

(assert (=> b!1091062 e!690406))

(declare-fun res!484856 () Bool)

(assert (=> b!1091062 (=> res!484856 e!690406)))

(declare-fun lt!365318 () Bool)

(assert (=> b!1091062 (= res!484856 lt!365318)))

(declare-fun lt!365328 () Unit!15866)

(declare-fun lemmaNotForallFilterShorter!27 (List!10482 Int) Unit!15866)

(assert (=> b!1091062 (= lt!365328 (lemmaNotForallFilterShorter!27 lt!365324 lambda!41246))))

(declare-fun lt!365310 () Unit!15866)

(assert (=> b!1091062 (= lt!365310 e!690410)))

(declare-fun c!184890 () Bool)

(assert (=> b!1091062 (= c!184890 (forall!2331 objs!8 lambda!41246))))

(declare-fun b!1091063 () Bool)

(declare-fun e!690414 () Bool)

(assert (=> b!1091063 (= e!690414 e!690402)))

(declare-fun res!484855 () Bool)

(assert (=> b!1091063 (=> res!484855 e!690402)))

(declare-fun lt!365314 () Bool)

(assert (=> b!1091063 (= res!484855 lt!365314)))

(declare-fun lt!365309 () Unit!15866)

(assert (=> b!1091063 (= lt!365309 e!690411)))

(declare-fun c!184891 () Bool)

(assert (=> b!1091063 (= c!184891 lt!365314)))

(assert (=> b!1091063 (= lt!365314 (contains!1760 lt!365315 lt!365330))))

(declare-fun b!1091064 () Bool)

(assert (=> b!1091064 (= e!690406 (< (size!8090 (filter!233 lt!365324 lambda!41246)) (size!8090 lt!365324)))))

(declare-fun b!1091065 () Bool)

(declare-fun Unit!15872 () Unit!15866)

(assert (=> b!1091065 (= e!690410 Unit!15872)))

(declare-fun b!1091066 () Bool)

(assert (=> b!1091066 (= e!690401 (not e!690414))))

(declare-fun res!484852 () Bool)

(assert (=> b!1091066 (=> res!484852 e!690414)))

(assert (=> b!1091066 (= res!484852 (>= (size!8089 lt!365332) lt!365317))))

(assert (=> b!1091066 e!690403))

(declare-fun res!484851 () Bool)

(assert (=> b!1091066 (=> res!484851 e!690403)))

(assert (=> b!1091066 (= res!484851 lt!365318)))

(declare-fun isEmpty!6654 (List!10482) Bool)

(assert (=> b!1091066 (= lt!365318 (isEmpty!6654 lt!365324))))

(declare-fun lt!365333 () Unit!15866)

(assert (=> b!1091066 (= lt!365333 (lemmaNotForallFilterShorter!27 lt!365324 lambda!41244))))

(assert (=> b!1091066 (= lt!365324 (list!3750 objs!8))))

(declare-fun lt!365326 () Unit!15866)

(assert (=> b!1091066 (= lt!365326 e!690413)))

(declare-fun c!184893 () Bool)

(assert (=> b!1091066 (= c!184893 (forall!2331 objs!8 lambda!41244))))

(declare-fun b!1091067 () Bool)

(declare-fun tp!326450 () Bool)

(declare-fun inv!13398 (Conc!3181) Bool)

(assert (=> b!1091067 (= e!690408 (and (inv!13398 (c!184897 objs!8)) tp!326450))))

(assert (= (and start!93306 res!484857) b!1091059))

(assert (= (and b!1091059 res!484853) b!1091057))

(assert (= (and b!1091057 res!484854) b!1091056))

(assert (= (and b!1091056 c!184892) b!1091061))

(assert (= (and b!1091056 (not c!184892)) b!1091054))

(assert (= (and b!1091056 res!484858) b!1091066))

(assert (= (and b!1091066 c!184893) b!1091052))

(assert (= (and b!1091066 (not c!184893)) b!1091055))

(assert (= (and b!1091066 (not res!484851)) b!1091060))

(assert (= (and b!1091066 (not res!484852)) b!1091063))

(assert (= (and b!1091063 c!184891) b!1091050))

(assert (= (and b!1091063 (not c!184891)) b!1091051))

(assert (= (and b!1091063 (not res!484855)) b!1091062))

(assert (= (and b!1091062 c!184890) b!1091058))

(assert (= (and b!1091062 (not c!184890)) b!1091065))

(assert (= (and b!1091062 (not res!484856)) b!1091064))

(assert (= (and b!1091062 (not res!484859)) b!1091053))

(assert (= start!93306 b!1091067))

(declare-fun m!1241469 () Bool)

(assert (=> b!1091050 m!1241469))

(assert (=> b!1091050 m!1241469))

(declare-fun m!1241471 () Bool)

(assert (=> b!1091050 m!1241471))

(declare-fun m!1241473 () Bool)

(assert (=> b!1091062 m!1241473))

(declare-fun m!1241475 () Bool)

(assert (=> b!1091062 m!1241475))

(declare-fun m!1241477 () Bool)

(assert (=> b!1091062 m!1241477))

(declare-fun m!1241479 () Bool)

(assert (=> b!1091067 m!1241479))

(declare-fun m!1241481 () Bool)

(assert (=> b!1091057 m!1241481))

(declare-fun m!1241483 () Bool)

(assert (=> b!1091057 m!1241483))

(declare-fun m!1241485 () Bool)

(assert (=> b!1091057 m!1241485))

(declare-fun m!1241487 () Bool)

(assert (=> b!1091057 m!1241487))

(declare-fun m!1241489 () Bool)

(assert (=> b!1091057 m!1241489))

(declare-fun m!1241491 () Bool)

(assert (=> b!1091059 m!1241491))

(declare-fun m!1241493 () Bool)

(assert (=> b!1091066 m!1241493))

(declare-fun m!1241495 () Bool)

(assert (=> b!1091066 m!1241495))

(declare-fun m!1241497 () Bool)

(assert (=> b!1091066 m!1241497))

(declare-fun m!1241499 () Bool)

(assert (=> b!1091066 m!1241499))

(declare-fun m!1241501 () Bool)

(assert (=> b!1091066 m!1241501))

(declare-fun m!1241503 () Bool)

(assert (=> b!1091061 m!1241503))

(assert (=> b!1091061 m!1241503))

(declare-fun m!1241505 () Bool)

(assert (=> b!1091061 m!1241505))

(declare-fun m!1241507 () Bool)

(assert (=> b!1091053 m!1241507))

(assert (=> b!1091053 m!1241483))

(assert (=> b!1091053 m!1241483))

(declare-fun m!1241509 () Bool)

(assert (=> b!1091053 m!1241509))

(assert (=> b!1091053 m!1241487))

(declare-fun m!1241511 () Bool)

(assert (=> b!1091053 m!1241511))

(declare-fun m!1241513 () Bool)

(assert (=> b!1091053 m!1241513))

(declare-fun m!1241515 () Bool)

(assert (=> b!1091053 m!1241515))

(assert (=> b!1091053 m!1241487))

(declare-fun m!1241517 () Bool)

(assert (=> b!1091053 m!1241517))

(declare-fun m!1241519 () Bool)

(assert (=> b!1091053 m!1241519))

(declare-fun m!1241521 () Bool)

(assert (=> b!1091056 m!1241521))

(declare-fun m!1241523 () Bool)

(assert (=> b!1091058 m!1241523))

(declare-fun m!1241525 () Bool)

(assert (=> b!1091063 m!1241525))

(declare-fun m!1241527 () Bool)

(assert (=> b!1091064 m!1241527))

(assert (=> b!1091064 m!1241527))

(declare-fun m!1241529 () Bool)

(assert (=> b!1091064 m!1241529))

(declare-fun m!1241531 () Bool)

(assert (=> b!1091064 m!1241531))

(declare-fun m!1241533 () Bool)

(assert (=> b!1091060 m!1241533))

(assert (=> b!1091060 m!1241533))

(declare-fun m!1241535 () Bool)

(assert (=> b!1091060 m!1241535))

(assert (=> b!1091060 m!1241531))

(assert (=> b!1091052 m!1241493))

(assert (=> b!1091052 m!1241493))

(declare-fun m!1241537 () Bool)

(assert (=> b!1091052 m!1241537))

(declare-fun m!1241539 () Bool)

(assert (=> start!93306 m!1241539))

(declare-fun m!1241541 () Bool)

(assert (=> start!93306 m!1241541))

(check-sat (not b!1091067) (not b!1091074) (not b!1091059) (not b!1091077) (not b!1091076) (not start!93306) (not b!1091052) (not b!1091078) (not b!1091064) (not b!1091063) (not b!1091075) (not b!1091079) (not b!1091060) (not b!1091057) (not b!1091061) (not b!1091066) (not b!1091050) (not b!1091058) (not b!1091053) (not b!1091062) (not b!1091056))
(check-sat)
