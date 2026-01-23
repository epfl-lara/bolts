; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!95096 () Bool)

(assert start!95096)

(declare-fun bs!259719 () Bool)

(declare-fun b!1103449 () Bool)

(assert (= bs!259719 (and b!1103449 start!95096)))

(declare-fun lambda!43790 () Int)

(declare-fun lambda!43789 () Int)

(assert (=> bs!259719 (not (= lambda!43790 lambda!43789))))

(declare-fun b!1103460 () Bool)

(declare-fun e!699085 () Bool)

(assert (=> b!1103460 (= e!699085 true)))

(declare-fun b!1103459 () Bool)

(declare-fun e!699084 () Bool)

(assert (=> b!1103459 (= e!699084 e!699085)))

(assert (=> b!1103449 e!699084))

(assert (= b!1103459 b!1103460))

(assert (= b!1103449 b!1103459))

(declare-fun lambda!43791 () Int)

(assert (=> bs!259719 (not (= lambda!43791 lambda!43789))))

(assert (=> b!1103449 (not (= lambda!43791 lambda!43790))))

(declare-fun b!1103462 () Bool)

(declare-fun e!699087 () Bool)

(assert (=> b!1103462 (= e!699087 true)))

(declare-fun b!1103461 () Bool)

(declare-fun e!699086 () Bool)

(assert (=> b!1103461 (= e!699086 e!699087)))

(assert (=> b!1103449 e!699086))

(assert (= b!1103461 b!1103462))

(assert (= b!1103449 b!1103461))

(declare-fun lambda!43792 () Int)

(assert (=> bs!259719 (not (= lambda!43792 lambda!43789))))

(assert (=> b!1103449 (not (= lambda!43792 lambda!43790))))

(assert (=> b!1103449 (not (= lambda!43792 lambda!43791))))

(declare-fun b!1103464 () Bool)

(declare-fun e!699089 () Bool)

(assert (=> b!1103464 (= e!699089 true)))

(declare-fun b!1103463 () Bool)

(declare-fun e!699088 () Bool)

(assert (=> b!1103463 (= e!699088 e!699089)))

(assert (=> b!1103449 e!699088))

(assert (= b!1103463 b!1103464))

(assert (= b!1103449 b!1103463))

(declare-fun b!1103434 () Bool)

(declare-datatypes ((Unit!16309 0))(
  ( (Unit!16310) )
))
(declare-fun e!699070 () Unit!16309)

(declare-fun Unit!16311 () Unit!16309)

(assert (=> b!1103434 (= e!699070 Unit!16311)))

(declare-fun b!1103435 () Bool)

(declare-fun e!699072 () Unit!16309)

(declare-fun Unit!16312 () Unit!16309)

(assert (=> b!1103435 (= e!699072 Unit!16312)))

(declare-fun b!1103436 () Bool)

(declare-fun e!699066 () Bool)

(declare-datatypes ((List!10699 0))(
  ( (Nil!10683) (Cons!10683 (h!16084 (_ BitVec 16)) (t!104425 List!10699)) )
))
(declare-datatypes ((TokenValue!1905 0))(
  ( (FloatLiteralValue!3810 (text!13780 List!10699)) (TokenValueExt!1904 (__x!7487 Int)) (Broken!9525 (value!60340 List!10699)) (Object!1920) (End!1905) (Def!1905) (Underscore!1905) (Match!1905) (Else!1905) (Error!1905) (Case!1905) (If!1905) (Extends!1905) (Abstract!1905) (Class!1905) (Val!1905) (DelimiterValue!3810 (del!1965 List!10699)) (KeywordValue!1911 (value!60341 List!10699)) (CommentValue!3810 (value!60342 List!10699)) (WhitespaceValue!3810 (value!60343 List!10699)) (IndentationValue!1905 (value!60344 List!10699)) (String!13096) (Int32!1905) (Broken!9526 (value!60345 List!10699)) (Boolean!1906) (Unit!16313) (OperatorValue!1908 (op!1965 List!10699)) (IdentifierValue!3810 (value!60346 List!10699)) (IdentifierValue!3811 (value!60347 List!10699)) (WhitespaceValue!3811 (value!60348 List!10699)) (True!3810) (False!3810) (Broken!9527 (value!60349 List!10699)) (Broken!9528 (value!60350 List!10699)) (True!3811) (RightBrace!1905) (RightBracket!1905) (Colon!1905) (Null!1905) (Comma!1905) (LeftBracket!1905) (False!3811) (LeftBrace!1905) (ImaginaryLiteralValue!1905 (text!13781 List!10699)) (StringLiteralValue!5715 (value!60351 List!10699)) (EOFValue!1905 (value!60352 List!10699)) (IdentValue!1905 (value!60353 List!10699)) (DelimiterValue!3811 (value!60354 List!10699)) (DedentValue!1905 (value!60355 List!10699)) (NewLineValue!1905 (value!60356 List!10699)) (IntegerValue!5715 (value!60357 (_ BitVec 32)) (text!13782 List!10699)) (IntegerValue!5716 (value!60358 Int) (text!13783 List!10699)) (Times!1905) (Or!1905) (Equal!1905) (Minus!1905) (Broken!9529 (value!60359 List!10699)) (And!1905) (Div!1905) (LessEqual!1905) (Mod!1905) (Concat!5013) (Not!1905) (Plus!1905) (SpaceValue!1905 (value!60360 List!10699)) (IntegerValue!5717 (value!60361 Int) (text!13784 List!10699)) (StringLiteralValue!5716 (text!13785 List!10699)) (FloatLiteralValue!3811 (text!13786 List!10699)) (BytesLiteralValue!1905 (value!60362 List!10699)) (CommentValue!3811 (value!60363 List!10699)) (StringLiteralValue!5717 (value!60364 List!10699)) (ErrorTokenValue!1905 (msg!1966 List!10699)) )
))
(declare-datatypes ((Regex!3108 0))(
  ( (ElementMatch!3108 (c!187314 (_ BitVec 16))) (Concat!5014 (regOne!6728 Regex!3108) (regTwo!6728 Regex!3108)) (EmptyExpr!3108) (Star!3108 (reg!3437 Regex!3108)) (EmptyLang!3108) (Union!3108 (regOne!6729 Regex!3108) (regTwo!6729 Regex!3108)) )
))
(declare-datatypes ((String!13097 0))(
  ( (String!13098 (value!60365 String)) )
))
(declare-datatypes ((IArray!6693 0))(
  ( (IArray!6694 (innerList!3404 List!10699)) )
))
(declare-datatypes ((Conc!3344 0))(
  ( (Node!3344 (left!9261 Conc!3344) (right!9591 Conc!3344) (csize!6918 Int) (cheight!3555 Int)) (Leaf!5270 (xs!6037 IArray!6693) (csize!6919 Int)) (Empty!3344) )
))
(declare-datatypes ((BalanceConc!6702 0))(
  ( (BalanceConc!6703 (c!187315 Conc!3344)) )
))
(declare-datatypes ((TokenValueInjection!3510 0))(
  ( (TokenValueInjection!3511 (toValue!2916 Int) (toChars!2775 Int)) )
))
(declare-datatypes ((Rule!3478 0))(
  ( (Rule!3479 (regex!1839 Regex!3108) (tag!2101 String!13097) (isSeparator!1839 Bool) (transformation!1839 TokenValueInjection!3510)) )
))
(declare-datatypes ((Token!3344 0))(
  ( (Token!3345 (value!60366 TokenValue!1905) (rule!3262 Rule!3478) (size!8303 Int) (originalCharacters!2395 List!10699)) )
))
(declare-datatypes ((List!10700 0))(
  ( (Nil!10684) (Cons!10684 (h!16085 Token!3344) (t!104426 List!10700)) )
))
(declare-datatypes ((IArray!6695 0))(
  ( (IArray!6696 (innerList!3405 List!10700)) )
))
(declare-datatypes ((Conc!3345 0))(
  ( (Node!3345 (left!9262 Conc!3345) (right!9592 Conc!3345) (csize!6920 Int) (cheight!3556 Int)) (Leaf!5271 (xs!6038 IArray!6695) (csize!6921 Int)) (Empty!3345) )
))
(declare-datatypes ((List!10701 0))(
  ( (Nil!10685) (Cons!10685 (h!16086 Rule!3478) (t!104427 List!10701)) )
))
(declare-datatypes ((BalanceConc!6704 0))(
  ( (BalanceConc!6705 (c!187316 Conc!3345)) )
))
(declare-datatypes ((PrintableTokens!394 0))(
  ( (PrintableTokens!395 (rules!9126 List!10701) (tokens!1398 BalanceConc!6704)) )
))
(declare-datatypes ((tuple2!11804 0))(
  ( (tuple2!11805 (_1!6728 Int) (_2!6728 PrintableTokens!394)) )
))
(declare-datatypes ((List!10702 0))(
  ( (Nil!10686) (Cons!10686 (h!16087 tuple2!11804) (t!104428 List!10702)) )
))
(declare-fun lt!373394 () List!10702)

(declare-fun size!8304 (List!10702) Int)

(declare-fun filter!381 (List!10702 Int) List!10702)

(assert (=> b!1103436 (= e!699066 (< (size!8304 (filter!381 lt!373394 lambda!43790)) (size!8304 lt!373394)))))

(declare-fun b!1103437 () Bool)

(declare-fun e!699079 () Bool)

(declare-fun e!699068 () Bool)

(assert (=> b!1103437 (= e!699079 e!699068)))

(declare-fun res!489217 () Bool)

(assert (=> b!1103437 (=> res!489217 e!699068)))

(declare-fun forall!2493 (List!10702 Int) Bool)

(assert (=> b!1103437 (= res!489217 (not (forall!2493 lt!373394 lambda!43789)))))

(declare-fun lt!373385 () List!10702)

(declare-datatypes ((IArray!6697 0))(
  ( (IArray!6698 (innerList!3406 List!10702)) )
))
(declare-datatypes ((Conc!3346 0))(
  ( (Node!3346 (left!9263 Conc!3346) (right!9593 Conc!3346) (csize!6922 Int) (cheight!3557 Int)) (Leaf!5272 (xs!6039 IArray!6697) (csize!6923 Int)) (Empty!3346) )
))
(declare-datatypes ((BalanceConc!6706 0))(
  ( (BalanceConc!6707 (c!187317 Conc!3346)) )
))
(declare-fun objs!8 () BalanceConc!6706)

(declare-fun list!3857 (BalanceConc!6706) List!10702)

(declare-fun filter!382 (BalanceConc!6706 Int) BalanceConc!6706)

(assert (=> b!1103437 (= lt!373385 (list!3857 (filter!382 objs!8 lambda!43791)))))

(declare-fun lt!373386 () List!10702)

(assert (=> b!1103437 (forall!2493 lt!373386 lambda!43789)))

(declare-fun lt!373376 () Unit!16309)

(declare-fun lemmaForallSubseq!52 (List!10702 List!10702 Int) Unit!16309)

(assert (=> b!1103437 (= lt!373376 (lemmaForallSubseq!52 lt!373386 lt!373394 lambda!43789))))

(assert (=> b!1103437 (= lt!373386 (list!3857 (filter!382 objs!8 lambda!43790)))))

(declare-fun lt!373382 () Unit!16309)

(declare-fun filterSubseq!48 (List!10702 Int) Unit!16309)

(assert (=> b!1103437 (= lt!373382 (filterSubseq!48 lt!373394 lambda!43792))))

(declare-fun lt!373374 () Unit!16309)

(assert (=> b!1103437 (= lt!373374 (filterSubseq!48 lt!373394 lambda!43791))))

(declare-fun lt!373391 () Unit!16309)

(assert (=> b!1103437 (= lt!373391 (filterSubseq!48 lt!373394 lambda!43790))))

(declare-fun b!1103438 () Bool)

(declare-fun e!699075 () Unit!16309)

(declare-fun err!2801 () Unit!16309)

(assert (=> b!1103438 (= e!699075 err!2801)))

(declare-fun lt!373381 () Unit!16309)

(declare-fun lt!373384 () tuple2!11804)

(declare-fun forallContained!533 (List!10702 Int tuple2!11804) Unit!16309)

(assert (=> b!1103438 (= lt!373381 (forallContained!533 (list!3857 objs!8) lambda!43790 lt!373384))))

(assert (=> b!1103438 true))

(declare-fun b!1103439 () Bool)

(declare-fun e!699073 () Bool)

(declare-fun e!699065 () Bool)

(assert (=> b!1103439 (= e!699073 e!699065)))

(declare-fun res!489212 () Bool)

(assert (=> b!1103439 (=> (not res!489212) (not e!699065))))

(declare-fun lt!373380 () Int)

(assert (=> b!1103439 (= res!489212 (> lt!373380 1))))

(declare-fun size!8305 (BalanceConc!6706) Int)

(assert (=> b!1103439 (= lt!373380 (size!8305 objs!8))))

(declare-fun b!1103440 () Bool)

(declare-fun e!699074 () Bool)

(assert (=> b!1103440 (= e!699074 (< (size!8304 (filter!381 lt!373394 lambda!43792)) (size!8304 lt!373394)))))

(declare-fun res!489213 () Bool)

(assert (=> start!95096 (=> (not res!489213) (not e!699073))))

(declare-fun forall!2494 (BalanceConc!6706 Int) Bool)

(assert (=> start!95096 (= res!489213 (forall!2494 objs!8 lambda!43789))))

(assert (=> start!95096 e!699073))

(declare-fun e!699069 () Bool)

(declare-fun inv!13743 (BalanceConc!6706) Bool)

(assert (=> start!95096 (and (inv!13743 objs!8) e!699069)))

(declare-fun b!1103441 () Bool)

(declare-fun err!2800 () Unit!16309)

(assert (=> b!1103441 (= e!699072 err!2800)))

(declare-fun lt!373398 () Unit!16309)

(assert (=> b!1103441 (= lt!373398 (forallContained!533 lt!373394 lambda!43792 lt!373384))))

(assert (=> b!1103441 true))

(declare-fun b!1103442 () Bool)

(declare-fun err!2799 () Unit!16309)

(assert (=> b!1103442 (= e!699070 err!2799)))

(declare-fun lt!373387 () BalanceConc!6706)

(declare-fun lt!373379 () Unit!16309)

(assert (=> b!1103442 (= lt!373379 (forallContained!533 (list!3857 lt!373387) lambda!43792 lt!373384))))

(assert (=> b!1103442 true))

(declare-fun b!1103443 () Bool)

(declare-fun Unit!16314 () Unit!16309)

(assert (=> b!1103443 (= e!699075 Unit!16314)))

(declare-fun b!1103444 () Bool)

(declare-fun e!699078 () Unit!16309)

(declare-fun Unit!16315 () Unit!16309)

(assert (=> b!1103444 (= e!699078 Unit!16315)))

(declare-fun b!1103445 () Bool)

(declare-fun err!2798 () Unit!16309)

(assert (=> b!1103445 (= e!699078 err!2798)))

(declare-fun lt!373397 () BalanceConc!6706)

(declare-fun lt!373377 () Unit!16309)

(assert (=> b!1103445 (= lt!373377 (forallContained!533 (list!3857 lt!373397) lambda!43790 lt!373384))))

(assert (=> b!1103445 true))

(declare-fun b!1103446 () Bool)

(declare-fun subseq!158 (List!10702 List!10702) Bool)

(assert (=> b!1103446 (= e!699068 (subseq!158 lt!373385 lt!373394))))

(declare-fun b!1103447 () Bool)

(declare-fun e!699071 () Bool)

(assert (=> b!1103447 (= e!699071 e!699079)))

(declare-fun res!489216 () Bool)

(assert (=> b!1103447 (=> res!489216 e!699079)))

(assert (=> b!1103447 (= res!489216 (>= (size!8305 lt!373387) lt!373380))))

(assert (=> b!1103447 e!699074))

(declare-fun res!489219 () Bool)

(assert (=> b!1103447 (=> res!489219 e!699074)))

(declare-fun lt!373388 () Bool)

(assert (=> b!1103447 (= res!489219 lt!373388)))

(declare-fun lt!373395 () Unit!16309)

(declare-fun lemmaNotForallFilterShorter!66 (List!10702 Int) Unit!16309)

(assert (=> b!1103447 (= lt!373395 (lemmaNotForallFilterShorter!66 lt!373394 lambda!43792))))

(declare-fun lt!373389 () Unit!16309)

(assert (=> b!1103447 (= lt!373389 e!699072)))

(declare-fun c!187313 () Bool)

(assert (=> b!1103447 (= c!187313 (forall!2494 objs!8 lambda!43792))))

(declare-fun b!1103448 () Bool)

(declare-fun e!699067 () Bool)

(declare-fun e!699076 () Bool)

(assert (=> b!1103448 (= e!699067 (not e!699076))))

(declare-fun res!489215 () Bool)

(assert (=> b!1103448 (=> res!489215 e!699076)))

(assert (=> b!1103448 (= res!489215 (>= (size!8305 lt!373397) lt!373380))))

(assert (=> b!1103448 e!699066))

(declare-fun res!489218 () Bool)

(assert (=> b!1103448 (=> res!489218 e!699066)))

(assert (=> b!1103448 (= res!489218 lt!373388)))

(declare-fun isEmpty!6704 (List!10702) Bool)

(assert (=> b!1103448 (= lt!373388 (isEmpty!6704 lt!373394))))

(declare-fun lt!373390 () Unit!16309)

(assert (=> b!1103448 (= lt!373390 (lemmaNotForallFilterShorter!66 lt!373394 lambda!43790))))

(assert (=> b!1103448 (= lt!373394 (list!3857 objs!8))))

(declare-fun lt!373375 () Unit!16309)

(assert (=> b!1103448 (= lt!373375 e!699075)))

(declare-fun c!187310 () Bool)

(assert (=> b!1103448 (= c!187310 (forall!2494 objs!8 lambda!43790))))

(declare-fun e!699077 () Bool)

(assert (=> b!1103449 (= e!699065 e!699077)))

(declare-fun res!489214 () Bool)

(assert (=> b!1103449 (=> (not res!489214) (not e!699077))))

(declare-fun contains!1906 (BalanceConc!6706 tuple2!11804) Bool)

(assert (=> b!1103449 (= res!489214 (contains!1906 objs!8 lt!373384))))

(assert (=> b!1103449 (= lt!373387 (filter!382 objs!8 lambda!43792))))

(declare-fun lt!373393 () BalanceConc!6706)

(assert (=> b!1103449 (= lt!373393 (filter!382 objs!8 lambda!43791))))

(assert (=> b!1103449 (= lt!373397 (filter!382 objs!8 lambda!43790))))

(declare-fun apply!2178 (BalanceConc!6706 Int) tuple2!11804)

(assert (=> b!1103449 (= lt!373384 (apply!2178 objs!8 (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2)))))))

(declare-fun b!1103450 () Bool)

(assert (=> b!1103450 (= e!699076 e!699071)))

(declare-fun res!489221 () Bool)

(assert (=> b!1103450 (=> res!489221 e!699071)))

(declare-fun lt!373383 () Bool)

(assert (=> b!1103450 (= res!489221 lt!373383)))

(declare-fun lt!373396 () Unit!16309)

(assert (=> b!1103450 (= lt!373396 e!699070)))

(declare-fun c!187312 () Bool)

(assert (=> b!1103450 (= c!187312 lt!373383)))

(assert (=> b!1103450 (= lt!373383 (contains!1906 lt!373387 lt!373384))))

(declare-fun b!1103451 () Bool)

(declare-fun tp!327209 () Bool)

(declare-fun inv!13744 (Conc!3346) Bool)

(assert (=> b!1103451 (= e!699069 (and (inv!13744 (c!187317 objs!8)) tp!327209))))

(declare-fun b!1103452 () Bool)

(assert (=> b!1103452 (= e!699077 e!699067)))

(declare-fun res!489220 () Bool)

(assert (=> b!1103452 (=> (not res!489220) (not e!699067))))

(declare-fun lt!373378 () Bool)

(assert (=> b!1103452 (= res!489220 (not lt!373378))))

(declare-fun lt!373392 () Unit!16309)

(assert (=> b!1103452 (= lt!373392 e!699078)))

(declare-fun c!187311 () Bool)

(assert (=> b!1103452 (= c!187311 lt!373378)))

(assert (=> b!1103452 (= lt!373378 (contains!1906 lt!373397 lt!373384))))

(assert (= (and start!95096 res!489213) b!1103439))

(assert (= (and b!1103439 res!489212) b!1103449))

(assert (= (and b!1103449 res!489214) b!1103452))

(assert (= (and b!1103452 c!187311) b!1103445))

(assert (= (and b!1103452 (not c!187311)) b!1103444))

(assert (= (and b!1103452 res!489220) b!1103448))

(assert (= (and b!1103448 c!187310) b!1103438))

(assert (= (and b!1103448 (not c!187310)) b!1103443))

(assert (= (and b!1103448 (not res!489218)) b!1103436))

(assert (= (and b!1103448 (not res!489215)) b!1103450))

(assert (= (and b!1103450 c!187312) b!1103442))

(assert (= (and b!1103450 (not c!187312)) b!1103434))

(assert (= (and b!1103450 (not res!489221)) b!1103447))

(assert (= (and b!1103447 c!187313) b!1103441))

(assert (= (and b!1103447 (not c!187313)) b!1103435))

(assert (= (and b!1103447 (not res!489219)) b!1103440))

(assert (= (and b!1103447 (not res!489216)) b!1103437))

(assert (= (and b!1103437 (not res!489217)) b!1103446))

(assert (= start!95096 b!1103451))

(declare-fun m!1259727 () Bool)

(assert (=> b!1103437 m!1259727))

(declare-fun m!1259729 () Bool)

(assert (=> b!1103437 m!1259729))

(declare-fun m!1259731 () Bool)

(assert (=> b!1103437 m!1259731))

(declare-fun m!1259733 () Bool)

(assert (=> b!1103437 m!1259733))

(declare-fun m!1259735 () Bool)

(assert (=> b!1103437 m!1259735))

(declare-fun m!1259737 () Bool)

(assert (=> b!1103437 m!1259737))

(declare-fun m!1259739 () Bool)

(assert (=> b!1103437 m!1259739))

(declare-fun m!1259741 () Bool)

(assert (=> b!1103437 m!1259741))

(assert (=> b!1103437 m!1259729))

(declare-fun m!1259743 () Bool)

(assert (=> b!1103437 m!1259743))

(declare-fun m!1259745 () Bool)

(assert (=> b!1103437 m!1259745))

(assert (=> b!1103437 m!1259735))

(declare-fun m!1259747 () Bool)

(assert (=> b!1103445 m!1259747))

(assert (=> b!1103445 m!1259747))

(declare-fun m!1259749 () Bool)

(assert (=> b!1103445 m!1259749))

(declare-fun m!1259751 () Bool)

(assert (=> b!1103449 m!1259751))

(assert (=> b!1103449 m!1259729))

(declare-fun m!1259753 () Bool)

(assert (=> b!1103449 m!1259753))

(declare-fun m!1259755 () Bool)

(assert (=> b!1103449 m!1259755))

(assert (=> b!1103449 m!1259735))

(declare-fun m!1259757 () Bool)

(assert (=> b!1103446 m!1259757))

(declare-fun m!1259759 () Bool)

(assert (=> b!1103438 m!1259759))

(assert (=> b!1103438 m!1259759))

(declare-fun m!1259761 () Bool)

(assert (=> b!1103438 m!1259761))

(declare-fun m!1259763 () Bool)

(assert (=> start!95096 m!1259763))

(declare-fun m!1259765 () Bool)

(assert (=> start!95096 m!1259765))

(declare-fun m!1259767 () Bool)

(assert (=> b!1103451 m!1259767))

(declare-fun m!1259769 () Bool)

(assert (=> b!1103442 m!1259769))

(assert (=> b!1103442 m!1259769))

(declare-fun m!1259771 () Bool)

(assert (=> b!1103442 m!1259771))

(assert (=> b!1103448 m!1259759))

(declare-fun m!1259773 () Bool)

(assert (=> b!1103448 m!1259773))

(declare-fun m!1259775 () Bool)

(assert (=> b!1103448 m!1259775))

(declare-fun m!1259777 () Bool)

(assert (=> b!1103448 m!1259777))

(declare-fun m!1259779 () Bool)

(assert (=> b!1103448 m!1259779))

(declare-fun m!1259781 () Bool)

(assert (=> b!1103452 m!1259781))

(declare-fun m!1259783 () Bool)

(assert (=> b!1103450 m!1259783))

(declare-fun m!1259785 () Bool)

(assert (=> b!1103439 m!1259785))

(declare-fun m!1259787 () Bool)

(assert (=> b!1103440 m!1259787))

(assert (=> b!1103440 m!1259787))

(declare-fun m!1259789 () Bool)

(assert (=> b!1103440 m!1259789))

(declare-fun m!1259791 () Bool)

(assert (=> b!1103440 m!1259791))

(declare-fun m!1259793 () Bool)

(assert (=> b!1103436 m!1259793))

(assert (=> b!1103436 m!1259793))

(declare-fun m!1259795 () Bool)

(assert (=> b!1103436 m!1259795))

(assert (=> b!1103436 m!1259791))

(declare-fun m!1259797 () Bool)

(assert (=> b!1103441 m!1259797))

(declare-fun m!1259799 () Bool)

(assert (=> b!1103447 m!1259799))

(declare-fun m!1259801 () Bool)

(assert (=> b!1103447 m!1259801))

(declare-fun m!1259803 () Bool)

(assert (=> b!1103447 m!1259803))

(push 1)

(assert (not b!1103459))

(assert (not b!1103436))

(assert (not b!1103438))

(assert (not b!1103448))

(assert (not b!1103451))

(assert (not b!1103442))

(assert (not start!95096))

(assert (not b!1103439))

(assert (not b!1103452))

(assert (not b!1103440))

(assert (not b!1103445))

(assert (not b!1103449))

(assert (not b!1103447))

(assert (not b!1103437))

(assert (not b!1103441))

(assert (not b!1103464))

(assert (not b!1103450))

(assert (not b!1103462))

(assert (not b!1103461))

(assert (not b!1103446))

(assert (not b!1103463))

(assert (not b!1103460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!312338 () Bool)

(declare-fun dynLambda!4720 (Int tuple2!11804) Bool)

(assert (=> d!312338 (dynLambda!4720 lambda!43790 lt!373384)))

(declare-fun lt!373488 () Unit!16309)

(declare-fun choose!7129 (List!10702 Int tuple2!11804) Unit!16309)

(assert (=> d!312338 (= lt!373488 (choose!7129 (list!3857 lt!373397) lambda!43790 lt!373384))))

(declare-fun e!699163 () Bool)

(assert (=> d!312338 e!699163))

(declare-fun res!489263 () Bool)

(assert (=> d!312338 (=> (not res!489263) (not e!699163))))

(assert (=> d!312338 (= res!489263 (forall!2493 (list!3857 lt!373397) lambda!43790))))

(assert (=> d!312338 (= (forallContained!533 (list!3857 lt!373397) lambda!43790 lt!373384) lt!373488)))

(declare-fun b!1103565 () Bool)

(declare-fun contains!1908 (List!10702 tuple2!11804) Bool)

(assert (=> b!1103565 (= e!699163 (contains!1908 (list!3857 lt!373397) lt!373384))))

(assert (= (and d!312338 res!489263) b!1103565))

(declare-fun b_lambda!32503 () Bool)

(assert (=> (not b_lambda!32503) (not d!312338)))

(declare-fun m!1259907 () Bool)

(assert (=> d!312338 m!1259907))

(assert (=> d!312338 m!1259747))

(declare-fun m!1259909 () Bool)

(assert (=> d!312338 m!1259909))

(assert (=> d!312338 m!1259747))

(declare-fun m!1259911 () Bool)

(assert (=> d!312338 m!1259911))

(assert (=> b!1103565 m!1259747))

(declare-fun m!1259913 () Bool)

(assert (=> b!1103565 m!1259913))

(assert (=> b!1103445 d!312338))

(declare-fun d!312340 () Bool)

(declare-fun list!3859 (Conc!3346) List!10702)

(assert (=> d!312340 (= (list!3857 lt!373397) (list!3859 (c!187317 lt!373397)))))

(declare-fun bs!259722 () Bool)

(assert (= bs!259722 d!312340))

(declare-fun m!1259919 () Bool)

(assert (=> bs!259722 m!1259919))

(assert (=> b!1103445 d!312340))

(declare-fun d!312344 () Bool)

(declare-fun lt!373494 () Bool)

(assert (=> d!312344 (= lt!373494 (contains!1908 (list!3857 lt!373397) lt!373384))))

(declare-fun contains!1909 (Conc!3346 tuple2!11804) Bool)

(assert (=> d!312344 (= lt!373494 (contains!1909 (c!187317 lt!373397) lt!373384))))

(assert (=> d!312344 (= (contains!1906 lt!373397 lt!373384) lt!373494)))

(declare-fun bs!259723 () Bool)

(assert (= bs!259723 d!312344))

(assert (=> bs!259723 m!1259747))

(assert (=> bs!259723 m!1259747))

(assert (=> bs!259723 m!1259913))

(declare-fun m!1259921 () Bool)

(assert (=> bs!259723 m!1259921))

(assert (=> b!1103452 d!312344))

(declare-fun d!312346 () Bool)

(declare-fun lt!373498 () Bool)

(assert (=> d!312346 (= lt!373498 (forall!2493 (list!3857 objs!8) lambda!43789))))

(declare-fun forall!2497 (Conc!3346 Int) Bool)

(assert (=> d!312346 (= lt!373498 (forall!2497 (c!187317 objs!8) lambda!43789))))

(assert (=> d!312346 (= (forall!2494 objs!8 lambda!43789) lt!373498)))

(declare-fun bs!259725 () Bool)

(assert (= bs!259725 d!312346))

(assert (=> bs!259725 m!1259759))

(assert (=> bs!259725 m!1259759))

(declare-fun m!1259925 () Bool)

(assert (=> bs!259725 m!1259925))

(declare-fun m!1259927 () Bool)

(assert (=> bs!259725 m!1259927))

(assert (=> start!95096 d!312346))

(declare-fun d!312350 () Bool)

(declare-fun isBalanced!926 (Conc!3346) Bool)

(assert (=> d!312350 (= (inv!13743 objs!8) (isBalanced!926 (c!187317 objs!8)))))

(declare-fun bs!259726 () Bool)

(assert (= bs!259726 d!312350))

(declare-fun m!1259929 () Bool)

(assert (=> bs!259726 m!1259929))

(assert (=> start!95096 d!312350))

(declare-fun d!312352 () Bool)

(assert (=> d!312352 (dynLambda!4720 lambda!43792 lt!373384)))

(declare-fun lt!373499 () Unit!16309)

(assert (=> d!312352 (= lt!373499 (choose!7129 (list!3857 lt!373387) lambda!43792 lt!373384))))

(declare-fun e!699164 () Bool)

(assert (=> d!312352 e!699164))

(declare-fun res!489264 () Bool)

(assert (=> d!312352 (=> (not res!489264) (not e!699164))))

(assert (=> d!312352 (= res!489264 (forall!2493 (list!3857 lt!373387) lambda!43792))))

(assert (=> d!312352 (= (forallContained!533 (list!3857 lt!373387) lambda!43792 lt!373384) lt!373499)))

(declare-fun b!1103566 () Bool)

(assert (=> b!1103566 (= e!699164 (contains!1908 (list!3857 lt!373387) lt!373384))))

(assert (= (and d!312352 res!489264) b!1103566))

(declare-fun b_lambda!32505 () Bool)

(assert (=> (not b_lambda!32505) (not d!312352)))

(declare-fun m!1259931 () Bool)

(assert (=> d!312352 m!1259931))

(assert (=> d!312352 m!1259769))

(declare-fun m!1259933 () Bool)

(assert (=> d!312352 m!1259933))

(assert (=> d!312352 m!1259769))

(declare-fun m!1259935 () Bool)

(assert (=> d!312352 m!1259935))

(assert (=> b!1103566 m!1259769))

(declare-fun m!1259937 () Bool)

(assert (=> b!1103566 m!1259937))

(assert (=> b!1103442 d!312352))

(declare-fun d!312354 () Bool)

(assert (=> d!312354 (= (list!3857 lt!373387) (list!3859 (c!187317 lt!373387)))))

(declare-fun bs!259727 () Bool)

(assert (= bs!259727 d!312354))

(declare-fun m!1259939 () Bool)

(assert (=> bs!259727 m!1259939))

(assert (=> b!1103442 d!312354))

(declare-fun d!312356 () Bool)

(declare-fun lt!373502 () Int)

(assert (=> d!312356 (>= lt!373502 0)))

(declare-fun e!699167 () Int)

(assert (=> d!312356 (= lt!373502 e!699167)))

(declare-fun c!187346 () Bool)

(assert (=> d!312356 (= c!187346 (is-Nil!10686 (filter!381 lt!373394 lambda!43792)))))

(assert (=> d!312356 (= (size!8304 (filter!381 lt!373394 lambda!43792)) lt!373502)))

(declare-fun b!1103571 () Bool)

(assert (=> b!1103571 (= e!699167 0)))

(declare-fun b!1103572 () Bool)

(assert (=> b!1103572 (= e!699167 (+ 1 (size!8304 (t!104428 (filter!381 lt!373394 lambda!43792)))))))

(assert (= (and d!312356 c!187346) b!1103571))

(assert (= (and d!312356 (not c!187346)) b!1103572))

(declare-fun m!1259941 () Bool)

(assert (=> b!1103572 m!1259941))

(assert (=> b!1103440 d!312356))

(declare-fun b!1103585 () Bool)

(declare-fun e!699174 () List!10702)

(assert (=> b!1103585 (= e!699174 Nil!10686)))

(declare-fun b!1103586 () Bool)

(declare-fun res!489270 () Bool)

(declare-fun e!699175 () Bool)

(assert (=> b!1103586 (=> (not res!489270) (not e!699175))))

(declare-fun lt!373505 () List!10702)

(declare-fun content!1545 (List!10702) (Set tuple2!11804))

(assert (=> b!1103586 (= res!489270 (set.subset (content!1545 lt!373505) (content!1545 lt!373394)))))

(declare-fun d!312358 () Bool)

(assert (=> d!312358 e!699175))

(declare-fun res!489269 () Bool)

(assert (=> d!312358 (=> (not res!489269) (not e!699175))))

(assert (=> d!312358 (= res!489269 (<= (size!8304 lt!373505) (size!8304 lt!373394)))))

(assert (=> d!312358 (= lt!373505 e!699174)))

(declare-fun c!187353 () Bool)

(assert (=> d!312358 (= c!187353 (is-Nil!10686 lt!373394))))

(assert (=> d!312358 (= (filter!381 lt!373394 lambda!43792) lt!373505)))

(declare-fun b!1103587 () Bool)

(declare-fun e!699176 () List!10702)

(declare-fun call!80476 () List!10702)

(assert (=> b!1103587 (= e!699176 (Cons!10686 (h!16087 lt!373394) call!80476))))

(declare-fun b!1103588 () Bool)

(assert (=> b!1103588 (= e!699175 (forall!2493 lt!373505 lambda!43792))))

(declare-fun b!1103589 () Bool)

(assert (=> b!1103589 (= e!699174 e!699176)))

(declare-fun c!187352 () Bool)

(assert (=> b!1103589 (= c!187352 (dynLambda!4720 lambda!43792 (h!16087 lt!373394)))))

(declare-fun bm!80471 () Bool)

(assert (=> bm!80471 (= call!80476 (filter!381 (t!104428 lt!373394) lambda!43792))))

(declare-fun b!1103590 () Bool)

(assert (=> b!1103590 (= e!699176 call!80476)))

(assert (= (and d!312358 c!187353) b!1103585))

(assert (= (and d!312358 (not c!187353)) b!1103589))

(assert (= (and b!1103589 c!187352) b!1103587))

(assert (= (and b!1103589 (not c!187352)) b!1103590))

(assert (= (or b!1103587 b!1103590) bm!80471))

(assert (= (and d!312358 res!489269) b!1103586))

(assert (= (and b!1103586 res!489270) b!1103588))

(declare-fun b_lambda!32507 () Bool)

(assert (=> (not b_lambda!32507) (not b!1103589)))

(declare-fun m!1259943 () Bool)

(assert (=> d!312358 m!1259943))

(assert (=> d!312358 m!1259791))

(declare-fun m!1259945 () Bool)

(assert (=> b!1103588 m!1259945))

(declare-fun m!1259947 () Bool)

(assert (=> b!1103586 m!1259947))

(declare-fun m!1259949 () Bool)

(assert (=> b!1103586 m!1259949))

(declare-fun m!1259951 () Bool)

(assert (=> b!1103589 m!1259951))

(declare-fun m!1259953 () Bool)

(assert (=> bm!80471 m!1259953))

(assert (=> b!1103440 d!312358))

(declare-fun d!312360 () Bool)

(declare-fun lt!373506 () Int)

(assert (=> d!312360 (>= lt!373506 0)))

(declare-fun e!699177 () Int)

(assert (=> d!312360 (= lt!373506 e!699177)))

(declare-fun c!187354 () Bool)

(assert (=> d!312360 (= c!187354 (is-Nil!10686 lt!373394))))

(assert (=> d!312360 (= (size!8304 lt!373394) lt!373506)))

(declare-fun b!1103591 () Bool)

(assert (=> b!1103591 (= e!699177 0)))

(declare-fun b!1103592 () Bool)

(assert (=> b!1103592 (= e!699177 (+ 1 (size!8304 (t!104428 lt!373394))))))

(assert (= (and d!312360 c!187354) b!1103591))

(assert (= (and d!312360 (not c!187354)) b!1103592))

(declare-fun m!1259955 () Bool)

(assert (=> b!1103592 m!1259955))

(assert (=> b!1103440 d!312360))

(declare-fun d!312362 () Bool)

(declare-fun c!187357 () Bool)

(assert (=> d!312362 (= c!187357 (is-Node!3346 (c!187317 objs!8)))))

(declare-fun e!699185 () Bool)

(assert (=> d!312362 (= (inv!13744 (c!187317 objs!8)) e!699185)))

(declare-fun b!1103602 () Bool)

(declare-fun inv!13747 (Conc!3346) Bool)

(assert (=> b!1103602 (= e!699185 (inv!13747 (c!187317 objs!8)))))

(declare-fun b!1103603 () Bool)

(declare-fun e!699186 () Bool)

(assert (=> b!1103603 (= e!699185 e!699186)))

(declare-fun res!489276 () Bool)

(assert (=> b!1103603 (= res!489276 (not (is-Leaf!5272 (c!187317 objs!8))))))

(assert (=> b!1103603 (=> res!489276 e!699186)))

(declare-fun b!1103604 () Bool)

(declare-fun inv!13748 (Conc!3346) Bool)

(assert (=> b!1103604 (= e!699186 (inv!13748 (c!187317 objs!8)))))

(assert (= (and d!312362 c!187357) b!1103602))

(assert (= (and d!312362 (not c!187357)) b!1103603))

(assert (= (and b!1103603 (not res!489276)) b!1103604))

(declare-fun m!1259957 () Bool)

(assert (=> b!1103602 m!1259957))

(declare-fun m!1259959 () Bool)

(assert (=> b!1103604 m!1259959))

(assert (=> b!1103451 d!312362))

(declare-fun d!312364 () Bool)

(assert (=> d!312364 (dynLambda!4720 lambda!43792 lt!373384)))

(declare-fun lt!373510 () Unit!16309)

(assert (=> d!312364 (= lt!373510 (choose!7129 lt!373394 lambda!43792 lt!373384))))

(declare-fun e!699187 () Bool)

(assert (=> d!312364 e!699187))

(declare-fun res!489277 () Bool)

(assert (=> d!312364 (=> (not res!489277) (not e!699187))))

(assert (=> d!312364 (= res!489277 (forall!2493 lt!373394 lambda!43792))))

(assert (=> d!312364 (= (forallContained!533 lt!373394 lambda!43792 lt!373384) lt!373510)))

(declare-fun b!1103605 () Bool)

(assert (=> b!1103605 (= e!699187 (contains!1908 lt!373394 lt!373384))))

(assert (= (and d!312364 res!489277) b!1103605))

(declare-fun b_lambda!32509 () Bool)

(assert (=> (not b_lambda!32509) (not d!312364)))

(assert (=> d!312364 m!1259931))

(declare-fun m!1259963 () Bool)

(assert (=> d!312364 m!1259963))

(declare-fun m!1259967 () Bool)

(assert (=> d!312364 m!1259967))

(declare-fun m!1259969 () Bool)

(assert (=> b!1103605 m!1259969))

(assert (=> b!1103441 d!312364))

(declare-fun d!312366 () Bool)

(declare-fun lt!373513 () Int)

(assert (=> d!312366 (= lt!373513 (size!8304 (list!3857 objs!8)))))

(declare-fun size!8309 (Conc!3346) Int)

(assert (=> d!312366 (= lt!373513 (size!8309 (c!187317 objs!8)))))

(assert (=> d!312366 (= (size!8305 objs!8) lt!373513)))

(declare-fun bs!259728 () Bool)

(assert (= bs!259728 d!312366))

(assert (=> bs!259728 m!1259759))

(assert (=> bs!259728 m!1259759))

(declare-fun m!1259975 () Bool)

(assert (=> bs!259728 m!1259975))

(declare-fun m!1259977 () Bool)

(assert (=> bs!259728 m!1259977))

(assert (=> b!1103439 d!312366))

(declare-fun d!312370 () Bool)

(declare-fun lt!373514 () Bool)

(assert (=> d!312370 (= lt!373514 (contains!1908 (list!3857 lt!373387) lt!373384))))

(assert (=> d!312370 (= lt!373514 (contains!1909 (c!187317 lt!373387) lt!373384))))

(assert (=> d!312370 (= (contains!1906 lt!373387 lt!373384) lt!373514)))

(declare-fun bs!259729 () Bool)

(assert (= bs!259729 d!312370))

(assert (=> bs!259729 m!1259769))

(assert (=> bs!259729 m!1259769))

(assert (=> bs!259729 m!1259937))

(declare-fun m!1259979 () Bool)

(assert (=> bs!259729 m!1259979))

(assert (=> b!1103450 d!312370))

(declare-fun d!312372 () Bool)

(assert (=> d!312372 (= (list!3857 objs!8) (list!3859 (c!187317 objs!8)))))

(declare-fun bs!259730 () Bool)

(assert (= bs!259730 d!312372))

(declare-fun m!1259981 () Bool)

(assert (=> bs!259730 m!1259981))

(assert (=> b!1103448 d!312372))

(declare-fun d!312374 () Bool)

(assert (=> d!312374 (= (isEmpty!6704 lt!373394) (is-Nil!10686 lt!373394))))

(assert (=> b!1103448 d!312374))

(declare-fun d!312376 () Bool)

(declare-fun lt!373515 () Bool)

(assert (=> d!312376 (= lt!373515 (forall!2493 (list!3857 objs!8) lambda!43790))))

(assert (=> d!312376 (= lt!373515 (forall!2497 (c!187317 objs!8) lambda!43790))))

(assert (=> d!312376 (= (forall!2494 objs!8 lambda!43790) lt!373515)))

(declare-fun bs!259731 () Bool)

(assert (= bs!259731 d!312376))

(assert (=> bs!259731 m!1259759))

(assert (=> bs!259731 m!1259759))

(declare-fun m!1259983 () Bool)

(assert (=> bs!259731 m!1259983))

(declare-fun m!1259985 () Bool)

(assert (=> bs!259731 m!1259985))

(assert (=> b!1103448 d!312376))

(declare-fun d!312378 () Bool)

(declare-fun e!699196 () Bool)

(assert (=> d!312378 e!699196))

(declare-fun res!489286 () Bool)

(assert (=> d!312378 (=> res!489286 e!699196)))

(assert (=> d!312378 (= res!489286 (isEmpty!6704 lt!373394))))

(declare-fun lt!373518 () Unit!16309)

(declare-fun choose!7130 (List!10702 Int) Unit!16309)

(assert (=> d!312378 (= lt!373518 (choose!7130 lt!373394 lambda!43790))))

(assert (=> d!312378 (not (forall!2493 lt!373394 lambda!43790))))

(assert (=> d!312378 (= (lemmaNotForallFilterShorter!66 lt!373394 lambda!43790) lt!373518)))

(declare-fun b!1103614 () Bool)

(assert (=> b!1103614 (= e!699196 (< (size!8304 (filter!381 lt!373394 lambda!43790)) (size!8304 lt!373394)))))

(assert (= (and d!312378 (not res!489286)) b!1103614))

(assert (=> d!312378 m!1259775))

(declare-fun m!1259991 () Bool)

(assert (=> d!312378 m!1259991))

(declare-fun m!1259993 () Bool)

(assert (=> d!312378 m!1259993))

(assert (=> b!1103614 m!1259793))

(assert (=> b!1103614 m!1259793))

(assert (=> b!1103614 m!1259795))

(assert (=> b!1103614 m!1259791))

(assert (=> b!1103448 d!312378))

(declare-fun d!312382 () Bool)

(declare-fun lt!373519 () Int)

(assert (=> d!312382 (= lt!373519 (size!8304 (list!3857 lt!373397)))))

(assert (=> d!312382 (= lt!373519 (size!8309 (c!187317 lt!373397)))))

(assert (=> d!312382 (= (size!8305 lt!373397) lt!373519)))

(declare-fun bs!259732 () Bool)

(assert (= bs!259732 d!312382))

(assert (=> bs!259732 m!1259747))

(assert (=> bs!259732 m!1259747))

(declare-fun m!1259995 () Bool)

(assert (=> bs!259732 m!1259995))

(declare-fun m!1259997 () Bool)

(assert (=> bs!259732 m!1259997))

(assert (=> b!1103448 d!312382))

(declare-fun d!312384 () Bool)

(assert (=> d!312384 (dynLambda!4720 lambda!43790 lt!373384)))

(declare-fun lt!373520 () Unit!16309)

(assert (=> d!312384 (= lt!373520 (choose!7129 (list!3857 objs!8) lambda!43790 lt!373384))))

(declare-fun e!699197 () Bool)

(assert (=> d!312384 e!699197))

(declare-fun res!489287 () Bool)

(assert (=> d!312384 (=> (not res!489287) (not e!699197))))

(assert (=> d!312384 (= res!489287 (forall!2493 (list!3857 objs!8) lambda!43790))))

(assert (=> d!312384 (= (forallContained!533 (list!3857 objs!8) lambda!43790 lt!373384) lt!373520)))

(declare-fun b!1103615 () Bool)

(assert (=> b!1103615 (= e!699197 (contains!1908 (list!3857 objs!8) lt!373384))))

(assert (= (and d!312384 res!489287) b!1103615))

(declare-fun b_lambda!32513 () Bool)

(assert (=> (not b_lambda!32513) (not d!312384)))

(assert (=> d!312384 m!1259907))

(assert (=> d!312384 m!1259759))

(declare-fun m!1259999 () Bool)

(assert (=> d!312384 m!1259999))

(assert (=> d!312384 m!1259759))

(assert (=> d!312384 m!1259983))

(assert (=> b!1103615 m!1259759))

(declare-fun m!1260001 () Bool)

(assert (=> b!1103615 m!1260001))

(assert (=> b!1103438 d!312384))

(assert (=> b!1103438 d!312372))

(declare-fun d!312386 () Bool)

(declare-fun lt!373521 () Bool)

(assert (=> d!312386 (= lt!373521 (contains!1908 (list!3857 objs!8) lt!373384))))

(assert (=> d!312386 (= lt!373521 (contains!1909 (c!187317 objs!8) lt!373384))))

(assert (=> d!312386 (= (contains!1906 objs!8 lt!373384) lt!373521)))

(declare-fun bs!259733 () Bool)

(assert (= bs!259733 d!312386))

(assert (=> bs!259733 m!1259759))

(assert (=> bs!259733 m!1259759))

(assert (=> bs!259733 m!1260001))

(declare-fun m!1260003 () Bool)

(assert (=> bs!259733 m!1260003))

(assert (=> b!1103449 d!312386))

(declare-fun d!312388 () Bool)

(declare-fun e!699202 () Bool)

(assert (=> d!312388 e!699202))

(declare-fun res!489292 () Bool)

(assert (=> d!312388 (=> (not res!489292) (not e!699202))))

(declare-fun filter!385 (Conc!3346 Int) Conc!3346)

(assert (=> d!312388 (= res!489292 (isBalanced!926 (filter!385 (c!187317 objs!8) lambda!43790)))))

(declare-fun lt!373527 () BalanceConc!6706)

(assert (=> d!312388 (= lt!373527 (BalanceConc!6707 (filter!385 (c!187317 objs!8) lambda!43790)))))

(assert (=> d!312388 (= (filter!382 objs!8 lambda!43790) lt!373527)))

(declare-fun b!1103620 () Bool)

(assert (=> b!1103620 (= e!699202 (= (list!3857 lt!373527) (filter!381 (list!3857 objs!8) lambda!43790)))))

(assert (= (and d!312388 res!489292) b!1103620))

(declare-fun m!1260017 () Bool)

(assert (=> d!312388 m!1260017))

(assert (=> d!312388 m!1260017))

(declare-fun m!1260019 () Bool)

(assert (=> d!312388 m!1260019))

(declare-fun m!1260021 () Bool)

(assert (=> b!1103620 m!1260021))

(assert (=> b!1103620 m!1259759))

(assert (=> b!1103620 m!1259759))

(declare-fun m!1260025 () Bool)

(assert (=> b!1103620 m!1260025))

(assert (=> b!1103449 d!312388))

(declare-fun d!312398 () Bool)

(declare-fun e!699203 () Bool)

(assert (=> d!312398 e!699203))

(declare-fun res!489293 () Bool)

(assert (=> d!312398 (=> (not res!489293) (not e!699203))))

(assert (=> d!312398 (= res!489293 (isBalanced!926 (filter!385 (c!187317 objs!8) lambda!43792)))))

(declare-fun lt!373529 () BalanceConc!6706)

(assert (=> d!312398 (= lt!373529 (BalanceConc!6707 (filter!385 (c!187317 objs!8) lambda!43792)))))

(assert (=> d!312398 (= (filter!382 objs!8 lambda!43792) lt!373529)))

(declare-fun b!1103621 () Bool)

(assert (=> b!1103621 (= e!699203 (= (list!3857 lt!373529) (filter!381 (list!3857 objs!8) lambda!43792)))))

(assert (= (and d!312398 res!489293) b!1103621))

(declare-fun m!1260031 () Bool)

(assert (=> d!312398 m!1260031))

(assert (=> d!312398 m!1260031))

(declare-fun m!1260033 () Bool)

(assert (=> d!312398 m!1260033))

(declare-fun m!1260035 () Bool)

(assert (=> b!1103621 m!1260035))

(assert (=> b!1103621 m!1259759))

(assert (=> b!1103621 m!1259759))

(declare-fun m!1260037 () Bool)

(assert (=> b!1103621 m!1260037))

(assert (=> b!1103449 d!312398))

(declare-fun d!312402 () Bool)

(declare-fun e!699204 () Bool)

(assert (=> d!312402 e!699204))

(declare-fun res!489294 () Bool)

(assert (=> d!312402 (=> (not res!489294) (not e!699204))))

(assert (=> d!312402 (= res!489294 (isBalanced!926 (filter!385 (c!187317 objs!8) lambda!43791)))))

(declare-fun lt!373531 () BalanceConc!6706)

(assert (=> d!312402 (= lt!373531 (BalanceConc!6707 (filter!385 (c!187317 objs!8) lambda!43791)))))

(assert (=> d!312402 (= (filter!382 objs!8 lambda!43791) lt!373531)))

(declare-fun b!1103622 () Bool)

(assert (=> b!1103622 (= e!699204 (= (list!3857 lt!373531) (filter!381 (list!3857 objs!8) lambda!43791)))))

(assert (= (and d!312402 res!489294) b!1103622))

(declare-fun m!1260043 () Bool)

(assert (=> d!312402 m!1260043))

(assert (=> d!312402 m!1260043))

(declare-fun m!1260045 () Bool)

(assert (=> d!312402 m!1260045))

(declare-fun m!1260047 () Bool)

(assert (=> b!1103622 m!1260047))

(assert (=> b!1103622 m!1259759))

(assert (=> b!1103622 m!1259759))

(declare-fun m!1260049 () Bool)

(assert (=> b!1103622 m!1260049))

(assert (=> b!1103449 d!312402))

(declare-fun d!312406 () Bool)

(declare-fun lt!373537 () tuple2!11804)

(declare-fun apply!2180 (List!10702 Int) tuple2!11804)

(assert (=> d!312406 (= lt!373537 (apply!2180 (list!3857 objs!8) (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2)))))))

(declare-fun apply!2181 (Conc!3346 Int) tuple2!11804)

(assert (=> d!312406 (= lt!373537 (apply!2181 (c!187317 objs!8) (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2)))))))

(declare-fun e!699208 () Bool)

(assert (=> d!312406 e!699208))

(declare-fun res!489298 () Bool)

(assert (=> d!312406 (=> (not res!489298) (not e!699208))))

(assert (=> d!312406 (= res!489298 (<= 0 (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2)))))))

(assert (=> d!312406 (= (apply!2178 objs!8 (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2)))) lt!373537)))

(declare-fun b!1103626 () Bool)

(assert (=> b!1103626 (= e!699208 (< (ite (>= lt!373380 0) (div lt!373380 2) (- (div (- lt!373380) 2))) (size!8305 objs!8)))))

(assert (= (and d!312406 res!489298) b!1103626))

(assert (=> d!312406 m!1259759))

(assert (=> d!312406 m!1259759))

(declare-fun m!1260059 () Bool)

(assert (=> d!312406 m!1260059))

(declare-fun m!1260061 () Bool)

(assert (=> d!312406 m!1260061))

(assert (=> b!1103626 m!1259785))

(assert (=> b!1103449 d!312406))

(declare-fun d!312410 () Bool)

(declare-fun lt!373538 () Int)

(assert (=> d!312410 (>= lt!373538 0)))

(declare-fun e!699209 () Int)

(assert (=> d!312410 (= lt!373538 e!699209)))

(declare-fun c!187359 () Bool)

(assert (=> d!312410 (= c!187359 (is-Nil!10686 (filter!381 lt!373394 lambda!43790)))))

(assert (=> d!312410 (= (size!8304 (filter!381 lt!373394 lambda!43790)) lt!373538)))

(declare-fun b!1103627 () Bool)

(assert (=> b!1103627 (= e!699209 0)))

(declare-fun b!1103628 () Bool)

(assert (=> b!1103628 (= e!699209 (+ 1 (size!8304 (t!104428 (filter!381 lt!373394 lambda!43790)))))))

(assert (= (and d!312410 c!187359) b!1103627))

(assert (= (and d!312410 (not c!187359)) b!1103628))

(declare-fun m!1260063 () Bool)

(assert (=> b!1103628 m!1260063))

(assert (=> b!1103436 d!312410))

(declare-fun b!1103629 () Bool)

(declare-fun e!699210 () List!10702)

(assert (=> b!1103629 (= e!699210 Nil!10686)))

(declare-fun b!1103630 () Bool)

(declare-fun res!489300 () Bool)

(declare-fun e!699211 () Bool)

(assert (=> b!1103630 (=> (not res!489300) (not e!699211))))

(declare-fun lt!373539 () List!10702)

(assert (=> b!1103630 (= res!489300 (set.subset (content!1545 lt!373539) (content!1545 lt!373394)))))

(declare-fun d!312412 () Bool)

(assert (=> d!312412 e!699211))

(declare-fun res!489299 () Bool)

(assert (=> d!312412 (=> (not res!489299) (not e!699211))))

(assert (=> d!312412 (= res!489299 (<= (size!8304 lt!373539) (size!8304 lt!373394)))))

(assert (=> d!312412 (= lt!373539 e!699210)))

(declare-fun c!187361 () Bool)

(assert (=> d!312412 (= c!187361 (is-Nil!10686 lt!373394))))

(assert (=> d!312412 (= (filter!381 lt!373394 lambda!43790) lt!373539)))

(declare-fun b!1103631 () Bool)

(declare-fun e!699212 () List!10702)

(declare-fun call!80477 () List!10702)

(assert (=> b!1103631 (= e!699212 (Cons!10686 (h!16087 lt!373394) call!80477))))

(declare-fun b!1103632 () Bool)

(assert (=> b!1103632 (= e!699211 (forall!2493 lt!373539 lambda!43790))))

(declare-fun b!1103633 () Bool)

(assert (=> b!1103633 (= e!699210 e!699212)))

(declare-fun c!187360 () Bool)

(assert (=> b!1103633 (= c!187360 (dynLambda!4720 lambda!43790 (h!16087 lt!373394)))))

(declare-fun bm!80472 () Bool)

(assert (=> bm!80472 (= call!80477 (filter!381 (t!104428 lt!373394) lambda!43790))))

(declare-fun b!1103634 () Bool)

(assert (=> b!1103634 (= e!699212 call!80477)))

(assert (= (and d!312412 c!187361) b!1103629))

(assert (= (and d!312412 (not c!187361)) b!1103633))

(assert (= (and b!1103633 c!187360) b!1103631))

(assert (= (and b!1103633 (not c!187360)) b!1103634))

(assert (= (or b!1103631 b!1103634) bm!80472))

(assert (= (and d!312412 res!489299) b!1103630))

(assert (= (and b!1103630 res!489300) b!1103632))

(declare-fun b_lambda!32517 () Bool)

(assert (=> (not b_lambda!32517) (not b!1103633)))

(declare-fun m!1260069 () Bool)

(assert (=> d!312412 m!1260069))

(assert (=> d!312412 m!1259791))

(declare-fun m!1260071 () Bool)

(assert (=> b!1103632 m!1260071))

(declare-fun m!1260073 () Bool)

(assert (=> b!1103630 m!1260073))

(assert (=> b!1103630 m!1259949))

(declare-fun m!1260075 () Bool)

(assert (=> b!1103633 m!1260075))

(declare-fun m!1260077 () Bool)

(assert (=> bm!80472 m!1260077))

(assert (=> b!1103436 d!312412))

(assert (=> b!1103436 d!312360))

(declare-fun d!312416 () Bool)

(declare-fun lt!373542 () Int)

(assert (=> d!312416 (= lt!373542 (size!8304 (list!3857 lt!373387)))))

(assert (=> d!312416 (= lt!373542 (size!8309 (c!187317 lt!373387)))))

(assert (=> d!312416 (= (size!8305 lt!373387) lt!373542)))

(declare-fun bs!259740 () Bool)

(assert (= bs!259740 d!312416))

(assert (=> bs!259740 m!1259769))

(assert (=> bs!259740 m!1259769))

(declare-fun m!1260079 () Bool)

(assert (=> bs!259740 m!1260079))

(declare-fun m!1260081 () Bool)

(assert (=> bs!259740 m!1260081))

(assert (=> b!1103447 d!312416))

(declare-fun d!312418 () Bool)

(declare-fun e!699214 () Bool)

(assert (=> d!312418 e!699214))

(declare-fun res!489302 () Bool)

(assert (=> d!312418 (=> res!489302 e!699214)))

(assert (=> d!312418 (= res!489302 (isEmpty!6704 lt!373394))))

(declare-fun lt!373543 () Unit!16309)

(assert (=> d!312418 (= lt!373543 (choose!7130 lt!373394 lambda!43792))))

(assert (=> d!312418 (not (forall!2493 lt!373394 lambda!43792))))

(assert (=> d!312418 (= (lemmaNotForallFilterShorter!66 lt!373394 lambda!43792) lt!373543)))

(declare-fun b!1103636 () Bool)

(assert (=> b!1103636 (= e!699214 (< (size!8304 (filter!381 lt!373394 lambda!43792)) (size!8304 lt!373394)))))

(assert (= (and d!312418 (not res!489302)) b!1103636))

(assert (=> d!312418 m!1259775))

(declare-fun m!1260083 () Bool)

(assert (=> d!312418 m!1260083))

(assert (=> d!312418 m!1259967))

(assert (=> b!1103636 m!1259787))

(assert (=> b!1103636 m!1259787))

(assert (=> b!1103636 m!1259789))

(assert (=> b!1103636 m!1259791))

(assert (=> b!1103447 d!312418))

(declare-fun d!312420 () Bool)

(declare-fun lt!373544 () Bool)

(assert (=> d!312420 (= lt!373544 (forall!2493 (list!3857 objs!8) lambda!43792))))

(assert (=> d!312420 (= lt!373544 (forall!2497 (c!187317 objs!8) lambda!43792))))

(assert (=> d!312420 (= (forall!2494 objs!8 lambda!43792) lt!373544)))

(declare-fun bs!259741 () Bool)

(assert (= bs!259741 d!312420))

(assert (=> bs!259741 m!1259759))

(assert (=> bs!259741 m!1259759))

(declare-fun m!1260091 () Bool)

(assert (=> bs!259741 m!1260091))

(declare-fun m!1260093 () Bool)

(assert (=> bs!259741 m!1260093))

(assert (=> b!1103447 d!312420))

(declare-fun d!312422 () Bool)

(declare-fun res!489307 () Bool)

(declare-fun e!699219 () Bool)

(assert (=> d!312422 (=> res!489307 e!699219)))

(assert (=> d!312422 (= res!489307 (is-Nil!10686 lt!373386))))

(assert (=> d!312422 (= (forall!2493 lt!373386 lambda!43789) e!699219)))

(declare-fun b!1103641 () Bool)

(declare-fun e!699220 () Bool)

(assert (=> b!1103641 (= e!699219 e!699220)))

(declare-fun res!489308 () Bool)

(assert (=> b!1103641 (=> (not res!489308) (not e!699220))))

(assert (=> b!1103641 (= res!489308 (dynLambda!4720 lambda!43789 (h!16087 lt!373386)))))

(declare-fun b!1103642 () Bool)

(assert (=> b!1103642 (= e!699220 (forall!2493 (t!104428 lt!373386) lambda!43789))))

(assert (= (and d!312422 (not res!489307)) b!1103641))

(assert (= (and b!1103641 res!489308) b!1103642))

(declare-fun b_lambda!32519 () Bool)

(assert (=> (not b_lambda!32519) (not b!1103641)))

(declare-fun m!1260097 () Bool)

(assert (=> b!1103641 m!1260097))

(declare-fun m!1260099 () Bool)

(assert (=> b!1103642 m!1260099))

(assert (=> b!1103437 d!312422))

(declare-fun d!312426 () Bool)

(assert (=> d!312426 (= (list!3857 (filter!382 objs!8 lambda!43791)) (list!3859 (c!187317 (filter!382 objs!8 lambda!43791))))))

(declare-fun bs!259742 () Bool)

(assert (= bs!259742 d!312426))

(declare-fun m!1260101 () Bool)

(assert (=> bs!259742 m!1260101))

(assert (=> b!1103437 d!312426))

(declare-fun d!312428 () Bool)

(declare-fun res!489309 () Bool)

(declare-fun e!699221 () Bool)

(assert (=> d!312428 (=> res!489309 e!699221)))

(assert (=> d!312428 (= res!489309 (is-Nil!10686 lt!373394))))

(assert (=> d!312428 (= (forall!2493 lt!373394 lambda!43789) e!699221)))

(declare-fun b!1103643 () Bool)

(declare-fun e!699222 () Bool)

(assert (=> b!1103643 (= e!699221 e!699222)))

(declare-fun res!489310 () Bool)

(assert (=> b!1103643 (=> (not res!489310) (not e!699222))))

(assert (=> b!1103643 (= res!489310 (dynLambda!4720 lambda!43789 (h!16087 lt!373394)))))

(declare-fun b!1103644 () Bool)

(assert (=> b!1103644 (= e!699222 (forall!2493 (t!104428 lt!373394) lambda!43789))))

(assert (= (and d!312428 (not res!489309)) b!1103643))

(assert (= (and b!1103643 res!489310) b!1103644))

(declare-fun b_lambda!32521 () Bool)

(assert (=> (not b_lambda!32521) (not b!1103643)))

(declare-fun m!1260103 () Bool)

(assert (=> b!1103643 m!1260103))

(declare-fun m!1260105 () Bool)

(assert (=> b!1103644 m!1260105))

(assert (=> b!1103437 d!312428))

(declare-fun d!312430 () Bool)

(assert (=> d!312430 (= (list!3857 (filter!382 objs!8 lambda!43790)) (list!3859 (c!187317 (filter!382 objs!8 lambda!43790))))))

(declare-fun bs!259743 () Bool)

(assert (= bs!259743 d!312430))

(declare-fun m!1260107 () Bool)

(assert (=> bs!259743 m!1260107))

(assert (=> b!1103437 d!312430))

(assert (=> b!1103437 d!312402))

(declare-fun d!312432 () Bool)

(assert (=> d!312432 (subseq!158 (filter!381 lt!373394 lambda!43791) lt!373394)))

(declare-fun lt!373547 () Unit!16309)

(declare-fun choose!7133 (List!10702 Int) Unit!16309)

(assert (=> d!312432 (= lt!373547 (choose!7133 lt!373394 lambda!43791))))

(assert (=> d!312432 (= (filterSubseq!48 lt!373394 lambda!43791) lt!373547)))

(declare-fun bs!259744 () Bool)

(assert (= bs!259744 d!312432))

(declare-fun m!1260109 () Bool)

(assert (=> bs!259744 m!1260109))

(assert (=> bs!259744 m!1260109))

(declare-fun m!1260111 () Bool)

(assert (=> bs!259744 m!1260111))

(declare-fun m!1260113 () Bool)

(assert (=> bs!259744 m!1260113))

(assert (=> b!1103437 d!312432))

(declare-fun d!312434 () Bool)

(assert (=> d!312434 (subseq!158 (filter!381 lt!373394 lambda!43790) lt!373394)))

(declare-fun lt!373548 () Unit!16309)

(assert (=> d!312434 (= lt!373548 (choose!7133 lt!373394 lambda!43790))))

(assert (=> d!312434 (= (filterSubseq!48 lt!373394 lambda!43790) lt!373548)))

(declare-fun bs!259745 () Bool)

(assert (= bs!259745 d!312434))

(assert (=> bs!259745 m!1259793))

(assert (=> bs!259745 m!1259793))

(declare-fun m!1260115 () Bool)

(assert (=> bs!259745 m!1260115))

(declare-fun m!1260117 () Bool)

(assert (=> bs!259745 m!1260117))

(assert (=> b!1103437 d!312434))

(declare-fun d!312436 () Bool)

(assert (=> d!312436 (subseq!158 (filter!381 lt!373394 lambda!43792) lt!373394)))

(declare-fun lt!373549 () Unit!16309)

(assert (=> d!312436 (= lt!373549 (choose!7133 lt!373394 lambda!43792))))

(assert (=> d!312436 (= (filterSubseq!48 lt!373394 lambda!43792) lt!373549)))

(declare-fun bs!259746 () Bool)

(assert (= bs!259746 d!312436))

(assert (=> bs!259746 m!1259787))

(assert (=> bs!259746 m!1259787))

(declare-fun m!1260119 () Bool)

(assert (=> bs!259746 m!1260119))

(declare-fun m!1260121 () Bool)

(assert (=> bs!259746 m!1260121))

(assert (=> b!1103437 d!312436))

(assert (=> b!1103437 d!312388))

(declare-fun d!312438 () Bool)

(assert (=> d!312438 (forall!2493 lt!373386 lambda!43789)))

(declare-fun lt!373552 () Unit!16309)

(declare-fun choose!7134 (List!10702 List!10702 Int) Unit!16309)

(assert (=> d!312438 (= lt!373552 (choose!7134 lt!373386 lt!373394 lambda!43789))))

(assert (=> d!312438 (forall!2493 lt!373394 lambda!43789)))

(assert (=> d!312438 (= (lemmaForallSubseq!52 lt!373386 lt!373394 lambda!43789) lt!373552)))

(declare-fun bs!259747 () Bool)

(assert (= bs!259747 d!312438))

(assert (=> bs!259747 m!1259741))

(declare-fun m!1260123 () Bool)

(assert (=> bs!259747 m!1260123))

(assert (=> bs!259747 m!1259739))

(assert (=> b!1103437 d!312438))

(declare-fun b!1103656 () Bool)

(declare-fun e!699234 () Bool)

(declare-fun e!699233 () Bool)

(assert (=> b!1103656 (= e!699234 e!699233)))

(declare-fun res!489321 () Bool)

(assert (=> b!1103656 (=> res!489321 e!699233)))

(declare-fun e!699236 () Bool)

(assert (=> b!1103656 (= res!489321 e!699236)))

(declare-fun res!489322 () Bool)

(assert (=> b!1103656 (=> (not res!489322) (not e!699236))))

(assert (=> b!1103656 (= res!489322 (= (h!16087 lt!373385) (h!16087 lt!373394)))))

(declare-fun b!1103658 () Bool)

(assert (=> b!1103658 (= e!699233 (subseq!158 lt!373385 (t!104428 lt!373394)))))

(declare-fun b!1103657 () Bool)

(assert (=> b!1103657 (= e!699236 (subseq!158 (t!104428 lt!373385) (t!104428 lt!373394)))))

(declare-fun b!1103655 () Bool)

(declare-fun e!699235 () Bool)

(assert (=> b!1103655 (= e!699235 e!699234)))

(declare-fun res!489323 () Bool)

(assert (=> b!1103655 (=> (not res!489323) (not e!699234))))

(assert (=> b!1103655 (= res!489323 (is-Cons!10686 lt!373394))))

(declare-fun d!312440 () Bool)

(declare-fun res!489324 () Bool)

(assert (=> d!312440 (=> res!489324 e!699235)))

(assert (=> d!312440 (= res!489324 (is-Nil!10686 lt!373385))))

(assert (=> d!312440 (= (subseq!158 lt!373385 lt!373394) e!699235)))

(assert (= (and d!312440 (not res!489324)) b!1103655))

(assert (= (and b!1103655 res!489323) b!1103656))

(assert (= (and b!1103656 res!489322) b!1103657))

(assert (= (and b!1103656 (not res!489321)) b!1103658))

(declare-fun m!1260125 () Bool)

(assert (=> b!1103658 m!1260125))

(declare-fun m!1260127 () Bool)

(assert (=> b!1103657 m!1260127))

(assert (=> b!1103446 d!312440))

(declare-fun b!1103671 () Bool)

(declare-fun e!699247 () Bool)

(assert (=> b!1103671 (= e!699247 true)))

(declare-fun b!1103670 () Bool)

(declare-fun e!699246 () Bool)

(assert (=> b!1103670 (= e!699246 e!699247)))

(declare-fun b!1103669 () Bool)

(declare-fun e!699245 () Bool)

(assert (=> b!1103669 (= e!699245 e!699246)))

(assert (=> b!1103461 e!699245))

(assert (= b!1103670 b!1103671))

(assert (= b!1103669 b!1103670))

(assert (= (and b!1103461 (is-Cons!10685 (rules!9126 (_2!6728 lt!373384)))) b!1103669))

(declare-fun order!6549 () Int)

(declare-fun order!6551 () Int)

(declare-fun dynLambda!4722 (Int Int) Int)

(declare-fun dynLambda!4723 (Int Int) Int)

(assert (=> b!1103671 (< (dynLambda!4722 order!6549 (toValue!2916 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43791))))

(declare-fun order!6553 () Int)

(declare-fun dynLambda!4724 (Int Int) Int)

(assert (=> b!1103671 (< (dynLambda!4724 order!6553 (toChars!2775 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43791))))

(declare-fun b!1103674 () Bool)

(declare-fun e!699250 () Bool)

(assert (=> b!1103674 (= e!699250 true)))

(declare-fun b!1103673 () Bool)

(declare-fun e!699249 () Bool)

(assert (=> b!1103673 (= e!699249 e!699250)))

(declare-fun b!1103672 () Bool)

(declare-fun e!699248 () Bool)

(assert (=> b!1103672 (= e!699248 e!699249)))

(assert (=> b!1103463 e!699248))

(assert (= b!1103673 b!1103674))

(assert (= b!1103672 b!1103673))

(assert (= (and b!1103463 (is-Cons!10685 (rules!9126 (_2!6728 lt!373384)))) b!1103672))

(assert (=> b!1103674 (< (dynLambda!4722 order!6549 (toValue!2916 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43792))))

(assert (=> b!1103674 (< (dynLambda!4724 order!6553 (toChars!2775 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43792))))

(declare-fun b!1103677 () Bool)

(declare-fun e!699253 () Bool)

(assert (=> b!1103677 (= e!699253 true)))

(declare-fun b!1103676 () Bool)

(declare-fun e!699252 () Bool)

(assert (=> b!1103676 (= e!699252 e!699253)))

(declare-fun b!1103675 () Bool)

(declare-fun e!699251 () Bool)

(assert (=> b!1103675 (= e!699251 e!699252)))

(assert (=> b!1103459 e!699251))

(assert (= b!1103676 b!1103677))

(assert (= b!1103675 b!1103676))

(assert (= (and b!1103459 (is-Cons!10685 (rules!9126 (_2!6728 lt!373384)))) b!1103675))

(assert (=> b!1103677 (< (dynLambda!4722 order!6549 (toValue!2916 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43790))))

(assert (=> b!1103677 (< (dynLambda!4724 order!6553 (toChars!2775 (transformation!1839 (h!16086 (rules!9126 (_2!6728 lt!373384)))))) (dynLambda!4723 order!6551 lambda!43790))))

(declare-fun b!1103686 () Bool)

(declare-fun e!699258 () Bool)

(assert (=> b!1103686 (= e!699258 true)))

(declare-fun b!1103688 () Bool)

(declare-fun e!699259 () Bool)

(assert (=> b!1103688 (= e!699259 true)))

(declare-fun b!1103687 () Bool)

(assert (=> b!1103687 (= e!699258 e!699259)))

(assert (=> b!1103462 e!699258))

(assert (= (and b!1103462 (is-Node!3345 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103686))

(assert (= b!1103687 b!1103688))

(assert (= (and b!1103462 (is-Leaf!5271 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103687))

(declare-fun b!1103689 () Bool)

(declare-fun e!699260 () Bool)

(assert (=> b!1103689 (= e!699260 true)))

(declare-fun b!1103691 () Bool)

(declare-fun e!699261 () Bool)

(assert (=> b!1103691 (= e!699261 true)))

(declare-fun b!1103690 () Bool)

(assert (=> b!1103690 (= e!699260 e!699261)))

(assert (=> b!1103464 e!699260))

(assert (= (and b!1103464 (is-Node!3345 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103689))

(assert (= b!1103690 b!1103691))

(assert (= (and b!1103464 (is-Leaf!5271 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103690))

(declare-fun b!1103692 () Bool)

(declare-fun e!699262 () Bool)

(assert (=> b!1103692 (= e!699262 true)))

(declare-fun b!1103694 () Bool)

(declare-fun e!699263 () Bool)

(assert (=> b!1103694 (= e!699263 true)))

(declare-fun b!1103693 () Bool)

(assert (=> b!1103693 (= e!699262 e!699263)))

(assert (=> b!1103460 e!699262))

(assert (= (and b!1103460 (is-Node!3345 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103692))

(assert (= b!1103693 b!1103694))

(assert (= (and b!1103460 (is-Leaf!5271 (c!187316 (tokens!1398 (_2!6728 lt!373384))))) b!1103693))

(declare-fun tp!327220 () Bool)

(declare-fun e!699268 () Bool)

(declare-fun tp!327219 () Bool)

(declare-fun b!1103703 () Bool)

(assert (=> b!1103703 (= e!699268 (and (inv!13744 (left!9263 (c!187317 objs!8))) tp!327219 (inv!13744 (right!9593 (c!187317 objs!8))) tp!327220))))

(declare-fun b!1103705 () Bool)

(declare-fun e!699269 () Bool)

(declare-fun tp!327221 () Bool)

(assert (=> b!1103705 (= e!699269 tp!327221)))

(declare-fun b!1103704 () Bool)

(declare-fun inv!13749 (IArray!6697) Bool)

(assert (=> b!1103704 (= e!699268 (and (inv!13749 (xs!6039 (c!187317 objs!8))) e!699269))))

(assert (=> b!1103451 (= tp!327209 (and (inv!13744 (c!187317 objs!8)) e!699268))))

(assert (= (and b!1103451 (is-Node!3346 (c!187317 objs!8))) b!1103703))

(assert (= b!1103704 b!1103705))

(assert (= (and b!1103451 (is-Leaf!5272 (c!187317 objs!8))) b!1103704))

(declare-fun m!1260145 () Bool)

(assert (=> b!1103703 m!1260145))

(declare-fun m!1260147 () Bool)

(assert (=> b!1103703 m!1260147))

(declare-fun m!1260149 () Bool)

(assert (=> b!1103704 m!1260149))

(assert (=> b!1103451 m!1259767))

(declare-fun b_lambda!32525 () Bool)

(assert (= b_lambda!32517 (or b!1103449 b_lambda!32525)))

(declare-fun bs!259750 () Bool)

(declare-fun d!312450 () Bool)

(assert (= bs!259750 (and d!312450 b!1103449)))

(assert (=> bs!259750 (= (dynLambda!4720 lambda!43790 (h!16087 lt!373394)) (< (_1!6728 (h!16087 lt!373394)) (_1!6728 lt!373384)))))

(assert (=> b!1103633 d!312450))

(declare-fun b_lambda!32527 () Bool)

(assert (= b_lambda!32521 (or start!95096 b_lambda!32527)))

(declare-fun bs!259751 () Bool)

(declare-fun d!312452 () Bool)

(assert (= bs!259751 (and d!312452 start!95096)))

(declare-fun usesJsonRules!0 (PrintableTokens!394) Bool)

(assert (=> bs!259751 (= (dynLambda!4720 lambda!43789 (h!16087 lt!373394)) (usesJsonRules!0 (_2!6728 (h!16087 lt!373394))))))

(declare-fun m!1260151 () Bool)

(assert (=> bs!259751 m!1260151))

(assert (=> b!1103643 d!312452))

(declare-fun b_lambda!32529 () Bool)

(assert (= b_lambda!32503 (or b!1103449 b_lambda!32529)))

(declare-fun bs!259752 () Bool)

(declare-fun d!312454 () Bool)

(assert (= bs!259752 (and d!312454 b!1103449)))

(assert (=> bs!259752 (= (dynLambda!4720 lambda!43790 lt!373384) (< (_1!6728 lt!373384) (_1!6728 lt!373384)))))

(assert (=> d!312338 d!312454))

(declare-fun b_lambda!32531 () Bool)

(assert (= b_lambda!32507 (or b!1103449 b_lambda!32531)))

(declare-fun bs!259753 () Bool)

(declare-fun d!312456 () Bool)

(assert (= bs!259753 (and d!312456 b!1103449)))

(assert (=> bs!259753 (= (dynLambda!4720 lambda!43792 (h!16087 lt!373394)) (> (_1!6728 (h!16087 lt!373394)) (_1!6728 lt!373384)))))

(assert (=> b!1103589 d!312456))

(declare-fun b_lambda!32533 () Bool)

(assert (= b_lambda!32513 (or b!1103449 b_lambda!32533)))

(assert (=> d!312384 d!312454))

(declare-fun b_lambda!32535 () Bool)

(assert (= b_lambda!32519 (or start!95096 b_lambda!32535)))

(declare-fun bs!259754 () Bool)

(declare-fun d!312458 () Bool)

(assert (= bs!259754 (and d!312458 start!95096)))

(assert (=> bs!259754 (= (dynLambda!4720 lambda!43789 (h!16087 lt!373386)) (usesJsonRules!0 (_2!6728 (h!16087 lt!373386))))))

(declare-fun m!1260153 () Bool)

(assert (=> bs!259754 m!1260153))

(assert (=> b!1103641 d!312458))

(declare-fun b_lambda!32537 () Bool)

(assert (= b_lambda!32509 (or b!1103449 b_lambda!32537)))

(declare-fun bs!259755 () Bool)

(declare-fun d!312460 () Bool)

(assert (= bs!259755 (and d!312460 b!1103449)))

(assert (=> bs!259755 (= (dynLambda!4720 lambda!43792 lt!373384) (> (_1!6728 lt!373384) (_1!6728 lt!373384)))))

(assert (=> d!312364 d!312460))

(declare-fun b_lambda!32539 () Bool)

(assert (= b_lambda!32505 (or b!1103449 b_lambda!32539)))

(assert (=> d!312352 d!312460))

(push 1)

(assert (not bs!259751))

(assert (not d!312352))

(assert (not b_lambda!32529))

(assert (not b!1103615))

(assert (not d!312438))

(assert (not d!312376))

(assert (not b!1103586))

(assert (not bm!80471))

(assert (not b_lambda!32527))

(assert (not b!1103604))

(assert (not bs!259754))

(assert (not b!1103626))

(assert (not b!1103592))

(assert (not d!312420))

(assert (not b_lambda!32539))

(assert (not bm!80472))

(assert (not b!1103605))

(assert (not b!1103614))

(assert (not b!1103644))

(assert (not d!312386))

(assert (not d!312416))

(assert (not b!1103688))

(assert (not d!312382))

(assert (not d!312388))

(assert (not d!312340))

(assert (not d!312436))

(assert (not b!1103691))

(assert (not d!312366))

(assert (not b!1103566))

(assert (not b!1103675))

(assert (not d!312344))

(assert (not b!1103669))

(assert (not d!312398))

(assert (not b!1103451))

(assert (not d!312384))

(assert (not b_lambda!32525))

(assert (not b!1103672))

(assert (not b!1103686))

(assert (not b!1103694))

(assert (not d!312434))

(assert (not b!1103565))

(assert (not d!312358))

(assert (not d!312372))

(assert (not d!312338))

(assert (not b!1103658))

(assert (not d!312378))

(assert (not b!1103704))

(assert (not d!312354))

(assert (not b!1103630))

(assert (not b!1103632))

(assert (not b!1103628))

(assert (not b!1103636))

(assert (not b!1103622))

(assert (not b!1103705))

(assert (not b!1103572))

(assert (not b!1103689))

(assert (not b_lambda!32531))

(assert (not d!312402))

(assert (not d!312346))

(assert (not d!312426))

(assert (not b!1103588))

(assert (not d!312418))

(assert (not b!1103692))

(assert (not d!312432))

(assert (not d!312412))

(assert (not b_lambda!32535))

(assert (not b!1103620))

(assert (not b_lambda!32533))

(assert (not d!312406))

(assert (not b!1103602))

(assert (not d!312430))

(assert (not b!1103621))

(assert (not d!312364))

(assert (not d!312370))

(assert (not b!1103657))

(assert (not b!1103642))

(assert (not d!312350))

(assert (not b!1103703))

(assert (not b_lambda!32537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

