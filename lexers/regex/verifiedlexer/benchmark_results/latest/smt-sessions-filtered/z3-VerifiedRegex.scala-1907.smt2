; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94026 () Bool)

(assert start!94026)

(declare-fun bs!259064 () Bool)

(declare-fun b!1097018 () Bool)

(assert (= bs!259064 (and b!1097018 start!94026)))

(declare-fun lambda!42930 () Int)

(declare-fun lambda!42929 () Int)

(assert (=> bs!259064 (not (= lambda!42930 lambda!42929))))

(declare-fun b!1097043 () Bool)

(declare-fun e!694596 () Bool)

(assert (=> b!1097043 (= e!694596 true)))

(declare-fun b!1097042 () Bool)

(declare-fun e!694595 () Bool)

(assert (=> b!1097042 (= e!694595 e!694596)))

(assert (=> b!1097018 e!694595))

(assert (= b!1097042 b!1097043))

(assert (= b!1097018 b!1097042))

(declare-fun lambda!42931 () Int)

(assert (=> bs!259064 (not (= lambda!42931 lambda!42929))))

(assert (=> b!1097018 (not (= lambda!42931 lambda!42930))))

(declare-fun b!1097045 () Bool)

(declare-fun e!694598 () Bool)

(assert (=> b!1097045 (= e!694598 true)))

(declare-fun b!1097044 () Bool)

(declare-fun e!694597 () Bool)

(assert (=> b!1097044 (= e!694597 e!694598)))

(assert (=> b!1097018 e!694597))

(assert (= b!1097044 b!1097045))

(assert (= b!1097018 b!1097044))

(declare-fun lambda!42932 () Int)

(assert (=> bs!259064 (not (= lambda!42932 lambda!42929))))

(assert (=> b!1097018 (not (= lambda!42932 lambda!42930))))

(assert (=> b!1097018 (not (= lambda!42932 lambda!42931))))

(declare-fun b!1097047 () Bool)

(declare-fun e!694600 () Bool)

(assert (=> b!1097047 (= e!694600 true)))

(declare-fun b!1097046 () Bool)

(declare-fun e!694599 () Bool)

(assert (=> b!1097046 (= e!694599 e!694600)))

(assert (=> b!1097018 e!694599))

(assert (= b!1097046 b!1097047))

(assert (= b!1097018 b!1097046))

(declare-fun e!694579 () Bool)

(declare-fun e!694580 () Bool)

(assert (=> b!1097018 (= e!694579 e!694580)))

(declare-fun res!487017 () Bool)

(assert (=> b!1097018 (=> (not res!487017) (not e!694580))))

(declare-datatypes ((List!10559 0))(
  ( (Nil!10543) (Cons!10543 (h!15944 (_ BitVec 16)) (t!103521 List!10559)) )
))
(declare-datatypes ((TokenValue!1870 0))(
  ( (FloatLiteralValue!3740 (text!13535 List!10559)) (TokenValueExt!1869 (__x!7452 Int)) (Broken!9350 (value!59341 List!10559)) (Object!1885) (End!1870) (Def!1870) (Underscore!1870) (Match!1870) (Else!1870) (Error!1870) (Case!1870) (If!1870) (Extends!1870) (Abstract!1870) (Class!1870) (Val!1870) (DelimiterValue!3740 (del!1930 List!10559)) (KeywordValue!1876 (value!59342 List!10559)) (CommentValue!3740 (value!59343 List!10559)) (WhitespaceValue!3740 (value!59344 List!10559)) (IndentationValue!1870 (value!59345 List!10559)) (String!12919) (Int32!1870) (Broken!9351 (value!59346 List!10559)) (Boolean!1871) (Unit!16126) (OperatorValue!1873 (op!1930 List!10559)) (IdentifierValue!3740 (value!59347 List!10559)) (IdentifierValue!3741 (value!59348 List!10559)) (WhitespaceValue!3741 (value!59349 List!10559)) (True!3740) (False!3740) (Broken!9352 (value!59350 List!10559)) (Broken!9353 (value!59351 List!10559)) (True!3741) (RightBrace!1870) (RightBracket!1870) (Colon!1870) (Null!1870) (Comma!1870) (LeftBracket!1870) (False!3741) (LeftBrace!1870) (ImaginaryLiteralValue!1870 (text!13536 List!10559)) (StringLiteralValue!5610 (value!59352 List!10559)) (EOFValue!1870 (value!59353 List!10559)) (IdentValue!1870 (value!59354 List!10559)) (DelimiterValue!3741 (value!59355 List!10559)) (DedentValue!1870 (value!59356 List!10559)) (NewLineValue!1870 (value!59357 List!10559)) (IntegerValue!5610 (value!59358 (_ BitVec 32)) (text!13537 List!10559)) (IntegerValue!5611 (value!59359 Int) (text!13538 List!10559)) (Times!1870) (Or!1870) (Equal!1870) (Minus!1870) (Broken!9354 (value!59360 List!10559)) (And!1870) (Div!1870) (LessEqual!1870) (Mod!1870) (Concat!4943) (Not!1870) (Plus!1870) (SpaceValue!1870 (value!59361 List!10559)) (IntegerValue!5612 (value!59362 Int) (text!13539 List!10559)) (StringLiteralValue!5611 (text!13540 List!10559)) (FloatLiteralValue!3741 (text!13541 List!10559)) (BytesLiteralValue!1870 (value!59363 List!10559)) (CommentValue!3741 (value!59364 List!10559)) (StringLiteralValue!5612 (value!59365 List!10559)) (ErrorTokenValue!1870 (msg!1931 List!10559)) )
))
(declare-datatypes ((Regex!3073 0))(
  ( (ElementMatch!3073 (c!186170 (_ BitVec 16))) (Concat!4944 (regOne!6658 Regex!3073) (regTwo!6658 Regex!3073)) (EmptyExpr!3073) (Star!3073 (reg!3402 Regex!3073)) (EmptyLang!3073) (Union!3073 (regOne!6659 Regex!3073) (regTwo!6659 Regex!3073)) )
))
(declare-datatypes ((String!12920 0))(
  ( (String!12921 (value!59366 String)) )
))
(declare-datatypes ((IArray!6483 0))(
  ( (IArray!6484 (innerList!3299 List!10559)) )
))
(declare-datatypes ((Conc!3239 0))(
  ( (Node!3239 (left!9080 Conc!3239) (right!9410 Conc!3239) (csize!6708 Int) (cheight!3450 Int)) (Leaf!5147 (xs!5932 IArray!6483) (csize!6709 Int)) (Empty!3239) )
))
(declare-datatypes ((BalanceConc!6492 0))(
  ( (BalanceConc!6493 (c!186171 Conc!3239)) )
))
(declare-datatypes ((TokenValueInjection!3440 0))(
  ( (TokenValueInjection!3441 (toValue!2881 Int) (toChars!2740 Int)) )
))
(declare-datatypes ((Rule!3408 0))(
  ( (Rule!3409 (regex!1804 Regex!3073) (tag!2066 String!12920) (isSeparator!1804 Bool) (transformation!1804 TokenValueInjection!3440)) )
))
(declare-datatypes ((Token!3274 0))(
  ( (Token!3275 (value!59367 TokenValue!1870) (rule!3227 Rule!3408) (size!8166 Int) (originalCharacters!2360 List!10559)) )
))
(declare-datatypes ((List!10560 0))(
  ( (Nil!10544) (Cons!10544 (h!15945 Token!3274) (t!103522 List!10560)) )
))
(declare-datatypes ((IArray!6485 0))(
  ( (IArray!6486 (innerList!3300 List!10560)) )
))
(declare-datatypes ((Conc!3240 0))(
  ( (Node!3240 (left!9081 Conc!3240) (right!9411 Conc!3240) (csize!6710 Int) (cheight!3451 Int)) (Leaf!5148 (xs!5933 IArray!6485) (csize!6711 Int)) (Empty!3240) )
))
(declare-datatypes ((List!10561 0))(
  ( (Nil!10545) (Cons!10545 (h!15946 Rule!3408) (t!103523 List!10561)) )
))
(declare-datatypes ((BalanceConc!6494 0))(
  ( (BalanceConc!6495 (c!186172 Conc!3240)) )
))
(declare-datatypes ((PrintableTokens!324 0))(
  ( (PrintableTokens!325 (rules!9091 List!10561) (tokens!1363 BalanceConc!6494)) )
))
(declare-datatypes ((tuple2!11734 0))(
  ( (tuple2!11735 (_1!6693 Int) (_2!6693 PrintableTokens!324)) )
))
(declare-datatypes ((List!10562 0))(
  ( (Nil!10546) (Cons!10546 (h!15947 tuple2!11734) (t!103524 List!10562)) )
))
(declare-datatypes ((IArray!6487 0))(
  ( (IArray!6488 (innerList!3301 List!10562)) )
))
(declare-datatypes ((Conc!3241 0))(
  ( (Node!3241 (left!9082 Conc!3241) (right!9412 Conc!3241) (csize!6712 Int) (cheight!3452 Int)) (Leaf!5149 (xs!5934 IArray!6487) (csize!6713 Int)) (Empty!3241) )
))
(declare-datatypes ((BalanceConc!6496 0))(
  ( (BalanceConc!6497 (c!186173 Conc!3241)) )
))
(declare-fun objs!8 () BalanceConc!6496)

(declare-fun lt!370373 () tuple2!11734)

(declare-fun contains!1812 (BalanceConc!6496 tuple2!11734) Bool)

(assert (=> b!1097018 (= res!487017 (contains!1812 objs!8 lt!370373))))

(declare-fun lt!370369 () BalanceConc!6496)

(declare-fun filter!290 (BalanceConc!6496 Int) BalanceConc!6496)

(assert (=> b!1097018 (= lt!370369 (filter!290 objs!8 lambda!42932))))

(declare-fun lt!370356 () BalanceConc!6496)

(assert (=> b!1097018 (= lt!370356 (filter!290 objs!8 lambda!42931))))

(declare-fun lt!370378 () BalanceConc!6496)

(assert (=> b!1097018 (= lt!370378 (filter!290 objs!8 lambda!42930))))

(declare-fun lt!370360 () Int)

(declare-fun apply!2089 (BalanceConc!6496 Int) tuple2!11734)

(assert (=> b!1097018 (= lt!370373 (apply!2089 objs!8 (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2)))))))

(declare-fun b!1097019 () Bool)

(declare-fun e!694577 () Bool)

(declare-fun forall!2388 (BalanceConc!6496 Int) Bool)

(assert (=> b!1097019 (= e!694577 (forall!2388 lt!370369 lambda!42929))))

(declare-fun lt!370357 () BalanceConc!6496)

(declare-fun lt!370386 () BalanceConc!6496)

(declare-fun ++!2866 (BalanceConc!6496 BalanceConc!6496) BalanceConc!6496)

(assert (=> b!1097019 (= lt!370357 (++!2866 lt!370386 lt!370356))))

(declare-fun lt!370381 () List!10562)

(declare-fun lt!370377 () List!10562)

(declare-datatypes ((Unit!16127 0))(
  ( (Unit!16128) )
))
(declare-fun lt!370359 () Unit!16127)

(declare-fun lemmaConcatPreservesForall!92 (List!10562 List!10562 Int) Unit!16127)

(declare-fun ++!2867 (List!10562 List!10562) List!10562)

(declare-fun list!3788 (BalanceConc!6496) List!10562)

(declare-fun sortObjectsByID!0 (BalanceConc!6496) BalanceConc!6496)

(assert (=> b!1097019 (= lt!370359 (lemmaConcatPreservesForall!92 (++!2867 lt!370381 lt!370377) (list!3788 (sortObjectsByID!0 lt!370369)) lambda!42929))))

(declare-fun lt!370379 () Unit!16127)

(assert (=> b!1097019 (= lt!370379 (lemmaConcatPreservesForall!92 lt!370381 lt!370377 lambda!42929))))

(assert (=> b!1097019 (= lt!370377 (list!3788 lt!370356))))

(assert (=> b!1097019 (= lt!370381 (list!3788 lt!370386))))

(assert (=> b!1097019 (= lt!370386 (sortObjectsByID!0 lt!370378))))

(declare-fun lt!370364 () List!10562)

(declare-fun forall!2389 (List!10562 Int) Bool)

(assert (=> b!1097019 (forall!2389 lt!370364 lambda!42929)))

(declare-fun lt!370371 () Unit!16127)

(declare-fun lt!370365 () List!10562)

(declare-fun lemmaForallSubseq!49 (List!10562 List!10562 Int) Unit!16127)

(assert (=> b!1097019 (= lt!370371 (lemmaForallSubseq!49 lt!370364 lt!370365 lambda!42929))))

(assert (=> b!1097019 (= lt!370364 (list!3788 (filter!290 objs!8 lambda!42932)))))

(declare-fun lt!370384 () List!10562)

(assert (=> b!1097019 (forall!2389 lt!370384 lambda!42929)))

(declare-fun lt!370387 () Unit!16127)

(assert (=> b!1097019 (= lt!370387 (lemmaForallSubseq!49 lt!370384 lt!370365 lambda!42929))))

(assert (=> b!1097019 (= lt!370384 (list!3788 (filter!290 objs!8 lambda!42931)))))

(declare-fun lt!370374 () List!10562)

(assert (=> b!1097019 (forall!2389 lt!370374 lambda!42929)))

(declare-fun lt!370367 () Unit!16127)

(assert (=> b!1097019 (= lt!370367 (lemmaForallSubseq!49 lt!370374 lt!370365 lambda!42929))))

(assert (=> b!1097019 (= lt!370374 (list!3788 (filter!290 objs!8 lambda!42930)))))

(declare-fun lt!370361 () Unit!16127)

(declare-fun filterSubseq!41 (List!10562 Int) Unit!16127)

(assert (=> b!1097019 (= lt!370361 (filterSubseq!41 lt!370365 lambda!42932))))

(declare-fun lt!370388 () Unit!16127)

(assert (=> b!1097019 (= lt!370388 (filterSubseq!41 lt!370365 lambda!42931))))

(declare-fun lt!370370 () Unit!16127)

(assert (=> b!1097019 (= lt!370370 (filterSubseq!41 lt!370365 lambda!42930))))

(declare-fun b!1097020 () Bool)

(declare-fun e!694582 () Bool)

(assert (=> b!1097020 (= e!694580 e!694582)))

(declare-fun res!487014 () Bool)

(assert (=> b!1097020 (=> (not res!487014) (not e!694582))))

(declare-fun lt!370358 () Bool)

(assert (=> b!1097020 (= res!487014 (not lt!370358))))

(declare-fun lt!370385 () Unit!16127)

(declare-fun e!694585 () Unit!16127)

(assert (=> b!1097020 (= lt!370385 e!694585)))

(declare-fun c!186168 () Bool)

(assert (=> b!1097020 (= c!186168 lt!370358)))

(assert (=> b!1097020 (= lt!370358 (contains!1812 lt!370378 lt!370373))))

(declare-fun res!487011 () Bool)

(declare-fun e!694578 () Bool)

(assert (=> start!94026 (=> (not res!487011) (not e!694578))))

(assert (=> start!94026 (= res!487011 (forall!2388 objs!8 lambda!42929))))

(assert (=> start!94026 e!694578))

(declare-fun e!694581 () Bool)

(declare-fun inv!13519 (BalanceConc!6496) Bool)

(assert (=> start!94026 (and (inv!13519 objs!8) e!694581)))

(declare-fun b!1097021 () Bool)

(assert (=> b!1097021 (= e!694578 e!694579)))

(declare-fun res!487016 () Bool)

(assert (=> b!1097021 (=> (not res!487016) (not e!694579))))

(assert (=> b!1097021 (= res!487016 (> lt!370360 1))))

(declare-fun size!8167 (BalanceConc!6496) Int)

(assert (=> b!1097021 (= lt!370360 (size!8167 objs!8))))

(declare-fun b!1097022 () Bool)

(declare-fun Unit!16129 () Unit!16127)

(assert (=> b!1097022 (= e!694585 Unit!16129)))

(declare-fun b!1097023 () Bool)

(declare-fun e!694590 () Unit!16127)

(declare-fun err!2479 () Unit!16127)

(assert (=> b!1097023 (= e!694590 err!2479)))

(declare-fun lt!370372 () Unit!16127)

(declare-fun forallContained!506 (List!10562 Int tuple2!11734) Unit!16127)

(assert (=> b!1097023 (= lt!370372 (forallContained!506 (list!3788 lt!370369) lambda!42932 lt!370373))))

(assert (=> b!1097023 true))

(declare-fun b!1097024 () Bool)

(declare-fun e!694586 () Bool)

(declare-fun size!8168 (List!10562) Int)

(declare-fun filter!291 (List!10562 Int) List!10562)

(assert (=> b!1097024 (= e!694586 (< (size!8168 (filter!291 lt!370365 lambda!42932)) (size!8168 lt!370365)))))

(declare-fun b!1097025 () Bool)

(declare-fun e!694588 () Bool)

(declare-fun e!694584 () Bool)

(assert (=> b!1097025 (= e!694588 e!694584)))

(declare-fun res!487012 () Bool)

(assert (=> b!1097025 (=> res!487012 e!694584)))

(declare-fun lt!370362 () Bool)

(assert (=> b!1097025 (= res!487012 lt!370362)))

(declare-fun lt!370389 () Unit!16127)

(assert (=> b!1097025 (= lt!370389 e!694590)))

(declare-fun c!186169 () Bool)

(assert (=> b!1097025 (= c!186169 lt!370362)))

(assert (=> b!1097025 (= lt!370362 (contains!1812 lt!370369 lt!370373))))

(declare-fun b!1097026 () Bool)

(assert (=> b!1097026 (= e!694582 (not e!694588))))

(declare-fun res!487019 () Bool)

(assert (=> b!1097026 (=> res!487019 e!694588)))

(assert (=> b!1097026 (= res!487019 (>= (size!8167 lt!370378) lt!370360))))

(declare-fun e!694587 () Bool)

(assert (=> b!1097026 e!694587))

(declare-fun res!487018 () Bool)

(assert (=> b!1097026 (=> res!487018 e!694587)))

(declare-fun lt!370366 () Bool)

(assert (=> b!1097026 (= res!487018 lt!370366)))

(declare-fun isEmpty!6678 (List!10562) Bool)

(assert (=> b!1097026 (= lt!370366 (isEmpty!6678 lt!370365))))

(declare-fun lt!370380 () Unit!16127)

(declare-fun lemmaNotForallFilterShorter!47 (List!10562 Int) Unit!16127)

(assert (=> b!1097026 (= lt!370380 (lemmaNotForallFilterShorter!47 lt!370365 lambda!42930))))

(assert (=> b!1097026 (= lt!370365 (list!3788 objs!8))))

(declare-fun lt!370368 () Unit!16127)

(declare-fun e!694589 () Unit!16127)

(assert (=> b!1097026 (= lt!370368 e!694589)))

(declare-fun c!186167 () Bool)

(assert (=> b!1097026 (= c!186167 (forall!2388 objs!8 lambda!42930))))

(declare-fun b!1097027 () Bool)

(declare-fun err!2481 () Unit!16127)

(assert (=> b!1097027 (= e!694585 err!2481)))

(declare-fun lt!370382 () Unit!16127)

(assert (=> b!1097027 (= lt!370382 (forallContained!506 (list!3788 lt!370378) lambda!42930 lt!370373))))

(assert (=> b!1097027 true))

(declare-fun b!1097028 () Bool)

(assert (=> b!1097028 (= e!694587 (< (size!8168 (filter!291 lt!370365 lambda!42930)) (size!8168 lt!370365)))))

(declare-fun b!1097029 () Bool)

(declare-fun err!2480 () Unit!16127)

(assert (=> b!1097029 (= e!694589 err!2480)))

(declare-fun lt!370363 () Unit!16127)

(assert (=> b!1097029 (= lt!370363 (forallContained!506 (list!3788 objs!8) lambda!42930 lt!370373))))

(assert (=> b!1097029 true))

(declare-fun b!1097030 () Bool)

(declare-fun Unit!16130 () Unit!16127)

(assert (=> b!1097030 (= e!694590 Unit!16130)))

(declare-fun b!1097031 () Bool)

(declare-fun Unit!16131 () Unit!16127)

(assert (=> b!1097031 (= e!694589 Unit!16131)))

(declare-fun b!1097032 () Bool)

(declare-fun tp!326696 () Bool)

(declare-fun inv!13520 (Conc!3241) Bool)

(assert (=> b!1097032 (= e!694581 (and (inv!13520 (c!186173 objs!8)) tp!326696))))

(declare-fun b!1097033 () Bool)

(declare-fun e!694583 () Unit!16127)

(declare-fun err!2478 () Unit!16127)

(assert (=> b!1097033 (= e!694583 err!2478)))

(declare-fun lt!370375 () Unit!16127)

(assert (=> b!1097033 (= lt!370375 (forallContained!506 lt!370365 lambda!42932 lt!370373))))

(assert (=> b!1097033 true))

(declare-fun b!1097034 () Bool)

(assert (=> b!1097034 (= e!694584 e!694577)))

(declare-fun res!487015 () Bool)

(assert (=> b!1097034 (=> res!487015 e!694577)))

(assert (=> b!1097034 (= res!487015 (>= (size!8167 lt!370369) lt!370360))))

(assert (=> b!1097034 e!694586))

(declare-fun res!487013 () Bool)

(assert (=> b!1097034 (=> res!487013 e!694586)))

(assert (=> b!1097034 (= res!487013 lt!370366)))

(declare-fun lt!370383 () Unit!16127)

(assert (=> b!1097034 (= lt!370383 (lemmaNotForallFilterShorter!47 lt!370365 lambda!42932))))

(declare-fun lt!370376 () Unit!16127)

(assert (=> b!1097034 (= lt!370376 e!694583)))

(declare-fun c!186166 () Bool)

(assert (=> b!1097034 (= c!186166 (forall!2388 objs!8 lambda!42932))))

(declare-fun b!1097035 () Bool)

(declare-fun Unit!16132 () Unit!16127)

(assert (=> b!1097035 (= e!694583 Unit!16132)))

(assert (= (and start!94026 res!487011) b!1097021))

(assert (= (and b!1097021 res!487016) b!1097018))

(assert (= (and b!1097018 res!487017) b!1097020))

(assert (= (and b!1097020 c!186168) b!1097027))

(assert (= (and b!1097020 (not c!186168)) b!1097022))

(assert (= (and b!1097020 res!487014) b!1097026))

(assert (= (and b!1097026 c!186167) b!1097029))

(assert (= (and b!1097026 (not c!186167)) b!1097031))

(assert (= (and b!1097026 (not res!487018)) b!1097028))

(assert (= (and b!1097026 (not res!487019)) b!1097025))

(assert (= (and b!1097025 c!186169) b!1097023))

(assert (= (and b!1097025 (not c!186169)) b!1097030))

(assert (= (and b!1097025 (not res!487012)) b!1097034))

(assert (= (and b!1097034 c!186166) b!1097033))

(assert (= (and b!1097034 (not c!186166)) b!1097035))

(assert (= (and b!1097034 (not res!487013)) b!1097024))

(assert (= (and b!1097034 (not res!487015)) b!1097019))

(assert (= start!94026 b!1097032))

(declare-fun m!1252399 () Bool)

(assert (=> b!1097018 m!1252399))

(declare-fun m!1252401 () Bool)

(assert (=> b!1097018 m!1252401))

(declare-fun m!1252403 () Bool)

(assert (=> b!1097018 m!1252403))

(declare-fun m!1252405 () Bool)

(assert (=> b!1097018 m!1252405))

(declare-fun m!1252407 () Bool)

(assert (=> b!1097018 m!1252407))

(declare-fun m!1252409 () Bool)

(assert (=> b!1097023 m!1252409))

(assert (=> b!1097023 m!1252409))

(declare-fun m!1252411 () Bool)

(assert (=> b!1097023 m!1252411))

(declare-fun m!1252413 () Bool)

(assert (=> b!1097026 m!1252413))

(declare-fun m!1252415 () Bool)

(assert (=> b!1097026 m!1252415))

(declare-fun m!1252417 () Bool)

(assert (=> b!1097026 m!1252417))

(declare-fun m!1252419 () Bool)

(assert (=> b!1097026 m!1252419))

(declare-fun m!1252421 () Bool)

(assert (=> b!1097026 m!1252421))

(declare-fun m!1252423 () Bool)

(assert (=> b!1097033 m!1252423))

(assert (=> b!1097029 m!1252413))

(assert (=> b!1097029 m!1252413))

(declare-fun m!1252425 () Bool)

(assert (=> b!1097029 m!1252425))

(declare-fun m!1252427 () Bool)

(assert (=> start!94026 m!1252427))

(declare-fun m!1252429 () Bool)

(assert (=> start!94026 m!1252429))

(declare-fun m!1252431 () Bool)

(assert (=> b!1097027 m!1252431))

(assert (=> b!1097027 m!1252431))

(declare-fun m!1252433 () Bool)

(assert (=> b!1097027 m!1252433))

(declare-fun m!1252435 () Bool)

(assert (=> b!1097019 m!1252435))

(declare-fun m!1252437 () Bool)

(assert (=> b!1097019 m!1252437))

(declare-fun m!1252439 () Bool)

(assert (=> b!1097019 m!1252439))

(declare-fun m!1252441 () Bool)

(assert (=> b!1097019 m!1252441))

(assert (=> b!1097019 m!1252399))

(declare-fun m!1252443 () Bool)

(assert (=> b!1097019 m!1252443))

(declare-fun m!1252445 () Bool)

(assert (=> b!1097019 m!1252445))

(declare-fun m!1252447 () Bool)

(assert (=> b!1097019 m!1252447))

(declare-fun m!1252449 () Bool)

(assert (=> b!1097019 m!1252449))

(assert (=> b!1097019 m!1252405))

(declare-fun m!1252451 () Bool)

(assert (=> b!1097019 m!1252451))

(declare-fun m!1252453 () Bool)

(assert (=> b!1097019 m!1252453))

(assert (=> b!1097019 m!1252453))

(assert (=> b!1097019 m!1252439))

(declare-fun m!1252455 () Bool)

(assert (=> b!1097019 m!1252455))

(declare-fun m!1252457 () Bool)

(assert (=> b!1097019 m!1252457))

(declare-fun m!1252459 () Bool)

(assert (=> b!1097019 m!1252459))

(declare-fun m!1252461 () Bool)

(assert (=> b!1097019 m!1252461))

(declare-fun m!1252463 () Bool)

(assert (=> b!1097019 m!1252463))

(assert (=> b!1097019 m!1252399))

(declare-fun m!1252465 () Bool)

(assert (=> b!1097019 m!1252465))

(assert (=> b!1097019 m!1252437))

(declare-fun m!1252467 () Bool)

(assert (=> b!1097019 m!1252467))

(assert (=> b!1097019 m!1252407))

(assert (=> b!1097019 m!1252405))

(declare-fun m!1252469 () Bool)

(assert (=> b!1097019 m!1252469))

(declare-fun m!1252471 () Bool)

(assert (=> b!1097019 m!1252471))

(declare-fun m!1252473 () Bool)

(assert (=> b!1097019 m!1252473))

(assert (=> b!1097019 m!1252407))

(declare-fun m!1252475 () Bool)

(assert (=> b!1097019 m!1252475))

(declare-fun m!1252477 () Bool)

(assert (=> b!1097019 m!1252477))

(declare-fun m!1252479 () Bool)

(assert (=> b!1097020 m!1252479))

(declare-fun m!1252481 () Bool)

(assert (=> b!1097021 m!1252481))

(declare-fun m!1252483 () Bool)

(assert (=> b!1097025 m!1252483))

(declare-fun m!1252485 () Bool)

(assert (=> b!1097024 m!1252485))

(assert (=> b!1097024 m!1252485))

(declare-fun m!1252487 () Bool)

(assert (=> b!1097024 m!1252487))

(declare-fun m!1252489 () Bool)

(assert (=> b!1097024 m!1252489))

(declare-fun m!1252491 () Bool)

(assert (=> b!1097032 m!1252491))

(declare-fun m!1252493 () Bool)

(assert (=> b!1097034 m!1252493))

(declare-fun m!1252495 () Bool)

(assert (=> b!1097034 m!1252495))

(declare-fun m!1252497 () Bool)

(assert (=> b!1097034 m!1252497))

(declare-fun m!1252499 () Bool)

(assert (=> b!1097028 m!1252499))

(assert (=> b!1097028 m!1252499))

(declare-fun m!1252501 () Bool)

(assert (=> b!1097028 m!1252501))

(assert (=> b!1097028 m!1252489))

(check-sat (not b!1097026) (not b!1097045) (not b!1097032) (not b!1097033) (not b!1097020) (not b!1097046) (not b!1097018) (not b!1097024) (not b!1097021) (not b!1097029) (not b!1097025) (not b!1097047) (not b!1097023) (not start!94026) (not b!1097043) (not b!1097027) (not b!1097042) (not b!1097028) (not b!1097044) (not b!1097019) (not b!1097034))
(check-sat)
(get-model)

(declare-fun d!309952 () Bool)

(declare-fun lt!370412 () Bool)

(declare-fun contains!1815 (List!10562 tuple2!11734) Bool)

(assert (=> d!309952 (= lt!370412 (contains!1815 (list!3788 lt!370369) lt!370373))))

(declare-fun contains!1816 (Conc!3241 tuple2!11734) Bool)

(assert (=> d!309952 (= lt!370412 (contains!1816 (c!186173 lt!370369) lt!370373))))

(assert (=> d!309952 (= (contains!1812 lt!370369 lt!370373) lt!370412)))

(declare-fun bs!259075 () Bool)

(assert (= bs!259075 d!309952))

(assert (=> bs!259075 m!1252409))

(assert (=> bs!259075 m!1252409))

(declare-fun m!1252571 () Bool)

(assert (=> bs!259075 m!1252571))

(declare-fun m!1252573 () Bool)

(assert (=> bs!259075 m!1252573))

(assert (=> b!1097025 d!309952))

(declare-fun d!309954 () Bool)

(declare-fun lt!370415 () Int)

(assert (=> d!309954 (>= lt!370415 0)))

(declare-fun e!694619 () Int)

(assert (=> d!309954 (= lt!370415 e!694619)))

(declare-fun c!186177 () Bool)

(get-info :version)

(assert (=> d!309954 (= c!186177 ((_ is Nil!10546) (filter!291 lt!370365 lambda!42932)))))

(assert (=> d!309954 (= (size!8168 (filter!291 lt!370365 lambda!42932)) lt!370415)))

(declare-fun b!1097068 () Bool)

(assert (=> b!1097068 (= e!694619 0)))

(declare-fun b!1097069 () Bool)

(assert (=> b!1097069 (= e!694619 (+ 1 (size!8168 (t!103524 (filter!291 lt!370365 lambda!42932)))))))

(assert (= (and d!309954 c!186177) b!1097068))

(assert (= (and d!309954 (not c!186177)) b!1097069))

(declare-fun m!1252575 () Bool)

(assert (=> b!1097069 m!1252575))

(assert (=> b!1097024 d!309954))

(declare-fun b!1097082 () Bool)

(declare-fun e!694627 () List!10562)

(assert (=> b!1097082 (= e!694627 Nil!10546)))

(declare-fun b!1097083 () Bool)

(declare-fun res!487040 () Bool)

(declare-fun e!694626 () Bool)

(assert (=> b!1097083 (=> (not res!487040) (not e!694626))))

(declare-fun lt!370418 () List!10562)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1524 (List!10562) (InoxSet tuple2!11734))

(assert (=> b!1097083 (= res!487040 (= ((_ map implies) (content!1524 lt!370418) (content!1524 lt!370365)) ((as const (InoxSet tuple2!11734)) true)))))

(declare-fun b!1097084 () Bool)

(assert (=> b!1097084 (= e!694626 (forall!2389 lt!370418 lambda!42932))))

(declare-fun d!309956 () Bool)

(assert (=> d!309956 e!694626))

(declare-fun res!487041 () Bool)

(assert (=> d!309956 (=> (not res!487041) (not e!694626))))

(assert (=> d!309956 (= res!487041 (<= (size!8168 lt!370418) (size!8168 lt!370365)))))

(assert (=> d!309956 (= lt!370418 e!694627)))

(declare-fun c!186182 () Bool)

(assert (=> d!309956 (= c!186182 ((_ is Nil!10546) lt!370365))))

(assert (=> d!309956 (= (filter!291 lt!370365 lambda!42932) lt!370418)))

(declare-fun b!1097085 () Bool)

(declare-fun e!694628 () List!10562)

(declare-fun call!80357 () List!10562)

(assert (=> b!1097085 (= e!694628 call!80357)))

(declare-fun bm!80352 () Bool)

(assert (=> bm!80352 (= call!80357 (filter!291 (t!103524 lt!370365) lambda!42932))))

(declare-fun b!1097086 () Bool)

(assert (=> b!1097086 (= e!694627 e!694628)))

(declare-fun c!186183 () Bool)

(declare-fun dynLambda!4622 (Int tuple2!11734) Bool)

(assert (=> b!1097086 (= c!186183 (dynLambda!4622 lambda!42932 (h!15947 lt!370365)))))

(declare-fun b!1097087 () Bool)

(assert (=> b!1097087 (= e!694628 (Cons!10546 (h!15947 lt!370365) call!80357))))

(assert (= (and d!309956 c!186182) b!1097082))

(assert (= (and d!309956 (not c!186182)) b!1097086))

(assert (= (and b!1097086 c!186183) b!1097087))

(assert (= (and b!1097086 (not c!186183)) b!1097085))

(assert (= (or b!1097087 b!1097085) bm!80352))

(assert (= (and d!309956 res!487041) b!1097083))

(assert (= (and b!1097083 res!487040) b!1097084))

(declare-fun b_lambda!31703 () Bool)

(assert (=> (not b_lambda!31703) (not b!1097086)))

(declare-fun m!1252577 () Bool)

(assert (=> d!309956 m!1252577))

(assert (=> d!309956 m!1252489))

(declare-fun m!1252579 () Bool)

(assert (=> b!1097086 m!1252579))

(declare-fun m!1252581 () Bool)

(assert (=> bm!80352 m!1252581))

(declare-fun m!1252583 () Bool)

(assert (=> b!1097084 m!1252583))

(declare-fun m!1252585 () Bool)

(assert (=> b!1097083 m!1252585))

(declare-fun m!1252587 () Bool)

(assert (=> b!1097083 m!1252587))

(assert (=> b!1097024 d!309956))

(declare-fun d!309958 () Bool)

(declare-fun lt!370419 () Int)

(assert (=> d!309958 (>= lt!370419 0)))

(declare-fun e!694629 () Int)

(assert (=> d!309958 (= lt!370419 e!694629)))

(declare-fun c!186184 () Bool)

(assert (=> d!309958 (= c!186184 ((_ is Nil!10546) lt!370365))))

(assert (=> d!309958 (= (size!8168 lt!370365) lt!370419)))

(declare-fun b!1097088 () Bool)

(assert (=> b!1097088 (= e!694629 0)))

(declare-fun b!1097089 () Bool)

(assert (=> b!1097089 (= e!694629 (+ 1 (size!8168 (t!103524 lt!370365))))))

(assert (= (and d!309958 c!186184) b!1097088))

(assert (= (and d!309958 (not c!186184)) b!1097089))

(declare-fun m!1252589 () Bool)

(assert (=> b!1097089 m!1252589))

(assert (=> b!1097024 d!309958))

(declare-fun d!309960 () Bool)

(declare-fun lt!370422 () Int)

(assert (=> d!309960 (= lt!370422 (size!8168 (list!3788 lt!370369)))))

(declare-fun size!8169 (Conc!3241) Int)

(assert (=> d!309960 (= lt!370422 (size!8169 (c!186173 lt!370369)))))

(assert (=> d!309960 (= (size!8167 lt!370369) lt!370422)))

(declare-fun bs!259076 () Bool)

(assert (= bs!259076 d!309960))

(assert (=> bs!259076 m!1252409))

(assert (=> bs!259076 m!1252409))

(declare-fun m!1252591 () Bool)

(assert (=> bs!259076 m!1252591))

(declare-fun m!1252593 () Bool)

(assert (=> bs!259076 m!1252593))

(assert (=> b!1097034 d!309960))

(declare-fun d!309962 () Bool)

(declare-fun e!694632 () Bool)

(assert (=> d!309962 e!694632))

(declare-fun res!487044 () Bool)

(assert (=> d!309962 (=> res!487044 e!694632)))

(assert (=> d!309962 (= res!487044 (isEmpty!6678 lt!370365))))

(declare-fun lt!370425 () Unit!16127)

(declare-fun choose!7073 (List!10562 Int) Unit!16127)

(assert (=> d!309962 (= lt!370425 (choose!7073 lt!370365 lambda!42932))))

(assert (=> d!309962 (not (forall!2389 lt!370365 lambda!42932))))

(assert (=> d!309962 (= (lemmaNotForallFilterShorter!47 lt!370365 lambda!42932) lt!370425)))

(declare-fun b!1097092 () Bool)

(assert (=> b!1097092 (= e!694632 (< (size!8168 (filter!291 lt!370365 lambda!42932)) (size!8168 lt!370365)))))

(assert (= (and d!309962 (not res!487044)) b!1097092))

(assert (=> d!309962 m!1252417))

(declare-fun m!1252595 () Bool)

(assert (=> d!309962 m!1252595))

(declare-fun m!1252597 () Bool)

(assert (=> d!309962 m!1252597))

(assert (=> b!1097092 m!1252485))

(assert (=> b!1097092 m!1252485))

(assert (=> b!1097092 m!1252487))

(assert (=> b!1097092 m!1252489))

(assert (=> b!1097034 d!309962))

(declare-fun d!309964 () Bool)

(declare-fun lt!370428 () Bool)

(assert (=> d!309964 (= lt!370428 (forall!2389 (list!3788 objs!8) lambda!42932))))

(declare-fun forall!2390 (Conc!3241 Int) Bool)

(assert (=> d!309964 (= lt!370428 (forall!2390 (c!186173 objs!8) lambda!42932))))

(assert (=> d!309964 (= (forall!2388 objs!8 lambda!42932) lt!370428)))

(declare-fun bs!259077 () Bool)

(assert (= bs!259077 d!309964))

(assert (=> bs!259077 m!1252413))

(assert (=> bs!259077 m!1252413))

(declare-fun m!1252599 () Bool)

(assert (=> bs!259077 m!1252599))

(declare-fun m!1252601 () Bool)

(assert (=> bs!259077 m!1252601))

(assert (=> b!1097034 d!309964))

(declare-fun d!309966 () Bool)

(assert (=> d!309966 (dynLambda!4622 lambda!42932 lt!370373)))

(declare-fun lt!370431 () Unit!16127)

(declare-fun choose!7074 (List!10562 Int tuple2!11734) Unit!16127)

(assert (=> d!309966 (= lt!370431 (choose!7074 (list!3788 lt!370369) lambda!42932 lt!370373))))

(declare-fun e!694635 () Bool)

(assert (=> d!309966 e!694635))

(declare-fun res!487047 () Bool)

(assert (=> d!309966 (=> (not res!487047) (not e!694635))))

(assert (=> d!309966 (= res!487047 (forall!2389 (list!3788 lt!370369) lambda!42932))))

(assert (=> d!309966 (= (forallContained!506 (list!3788 lt!370369) lambda!42932 lt!370373) lt!370431)))

(declare-fun b!1097095 () Bool)

(assert (=> b!1097095 (= e!694635 (contains!1815 (list!3788 lt!370369) lt!370373))))

(assert (= (and d!309966 res!487047) b!1097095))

(declare-fun b_lambda!31705 () Bool)

(assert (=> (not b_lambda!31705) (not d!309966)))

(declare-fun m!1252603 () Bool)

(assert (=> d!309966 m!1252603))

(assert (=> d!309966 m!1252409))

(declare-fun m!1252605 () Bool)

(assert (=> d!309966 m!1252605))

(assert (=> d!309966 m!1252409))

(declare-fun m!1252607 () Bool)

(assert (=> d!309966 m!1252607))

(assert (=> b!1097095 m!1252409))

(assert (=> b!1097095 m!1252571))

(assert (=> b!1097023 d!309966))

(declare-fun d!309968 () Bool)

(declare-fun list!3790 (Conc!3241) List!10562)

(assert (=> d!309968 (= (list!3788 lt!370369) (list!3790 (c!186173 lt!370369)))))

(declare-fun bs!259078 () Bool)

(assert (= bs!259078 d!309968))

(declare-fun m!1252609 () Bool)

(assert (=> bs!259078 m!1252609))

(assert (=> b!1097023 d!309968))

(declare-fun d!309970 () Bool)

(assert (=> d!309970 (dynLambda!4622 lambda!42930 lt!370373)))

(declare-fun lt!370432 () Unit!16127)

(assert (=> d!309970 (= lt!370432 (choose!7074 (list!3788 lt!370378) lambda!42930 lt!370373))))

(declare-fun e!694636 () Bool)

(assert (=> d!309970 e!694636))

(declare-fun res!487048 () Bool)

(assert (=> d!309970 (=> (not res!487048) (not e!694636))))

(assert (=> d!309970 (= res!487048 (forall!2389 (list!3788 lt!370378) lambda!42930))))

(assert (=> d!309970 (= (forallContained!506 (list!3788 lt!370378) lambda!42930 lt!370373) lt!370432)))

(declare-fun b!1097096 () Bool)

(assert (=> b!1097096 (= e!694636 (contains!1815 (list!3788 lt!370378) lt!370373))))

(assert (= (and d!309970 res!487048) b!1097096))

(declare-fun b_lambda!31707 () Bool)

(assert (=> (not b_lambda!31707) (not d!309970)))

(declare-fun m!1252611 () Bool)

(assert (=> d!309970 m!1252611))

(assert (=> d!309970 m!1252431))

(declare-fun m!1252613 () Bool)

(assert (=> d!309970 m!1252613))

(assert (=> d!309970 m!1252431))

(declare-fun m!1252615 () Bool)

(assert (=> d!309970 m!1252615))

(assert (=> b!1097096 m!1252431))

(declare-fun m!1252617 () Bool)

(assert (=> b!1097096 m!1252617))

(assert (=> b!1097027 d!309970))

(declare-fun d!309972 () Bool)

(assert (=> d!309972 (= (list!3788 lt!370378) (list!3790 (c!186173 lt!370378)))))

(declare-fun bs!259079 () Bool)

(assert (= bs!259079 d!309972))

(declare-fun m!1252619 () Bool)

(assert (=> bs!259079 m!1252619))

(assert (=> b!1097027 d!309972))

(declare-fun d!309974 () Bool)

(declare-fun e!694637 () Bool)

(assert (=> d!309974 e!694637))

(declare-fun res!487049 () Bool)

(assert (=> d!309974 (=> res!487049 e!694637)))

(assert (=> d!309974 (= res!487049 (isEmpty!6678 lt!370365))))

(declare-fun lt!370433 () Unit!16127)

(assert (=> d!309974 (= lt!370433 (choose!7073 lt!370365 lambda!42930))))

(assert (=> d!309974 (not (forall!2389 lt!370365 lambda!42930))))

(assert (=> d!309974 (= (lemmaNotForallFilterShorter!47 lt!370365 lambda!42930) lt!370433)))

(declare-fun b!1097097 () Bool)

(assert (=> b!1097097 (= e!694637 (< (size!8168 (filter!291 lt!370365 lambda!42930)) (size!8168 lt!370365)))))

(assert (= (and d!309974 (not res!487049)) b!1097097))

(assert (=> d!309974 m!1252417))

(declare-fun m!1252621 () Bool)

(assert (=> d!309974 m!1252621))

(declare-fun m!1252623 () Bool)

(assert (=> d!309974 m!1252623))

(assert (=> b!1097097 m!1252499))

(assert (=> b!1097097 m!1252499))

(assert (=> b!1097097 m!1252501))

(assert (=> b!1097097 m!1252489))

(assert (=> b!1097026 d!309974))

(declare-fun d!309976 () Bool)

(declare-fun lt!370434 () Int)

(assert (=> d!309976 (= lt!370434 (size!8168 (list!3788 lt!370378)))))

(assert (=> d!309976 (= lt!370434 (size!8169 (c!186173 lt!370378)))))

(assert (=> d!309976 (= (size!8167 lt!370378) lt!370434)))

(declare-fun bs!259080 () Bool)

(assert (= bs!259080 d!309976))

(assert (=> bs!259080 m!1252431))

(assert (=> bs!259080 m!1252431))

(declare-fun m!1252625 () Bool)

(assert (=> bs!259080 m!1252625))

(declare-fun m!1252627 () Bool)

(assert (=> bs!259080 m!1252627))

(assert (=> b!1097026 d!309976))

(declare-fun d!309978 () Bool)

(assert (=> d!309978 (= (isEmpty!6678 lt!370365) ((_ is Nil!10546) lt!370365))))

(assert (=> b!1097026 d!309978))

(declare-fun d!309980 () Bool)

(declare-fun lt!370435 () Bool)

(assert (=> d!309980 (= lt!370435 (forall!2389 (list!3788 objs!8) lambda!42930))))

(assert (=> d!309980 (= lt!370435 (forall!2390 (c!186173 objs!8) lambda!42930))))

(assert (=> d!309980 (= (forall!2388 objs!8 lambda!42930) lt!370435)))

(declare-fun bs!259081 () Bool)

(assert (= bs!259081 d!309980))

(assert (=> bs!259081 m!1252413))

(assert (=> bs!259081 m!1252413))

(declare-fun m!1252629 () Bool)

(assert (=> bs!259081 m!1252629))

(declare-fun m!1252631 () Bool)

(assert (=> bs!259081 m!1252631))

(assert (=> b!1097026 d!309980))

(declare-fun d!309982 () Bool)

(assert (=> d!309982 (= (list!3788 objs!8) (list!3790 (c!186173 objs!8)))))

(declare-fun bs!259082 () Bool)

(assert (= bs!259082 d!309982))

(declare-fun m!1252633 () Bool)

(assert (=> bs!259082 m!1252633))

(assert (=> b!1097026 d!309982))

(declare-fun d!309984 () Bool)

(declare-fun subseq!152 (List!10562 List!10562) Bool)

(assert (=> d!309984 (subseq!152 (filter!291 lt!370365 lambda!42932) lt!370365)))

(declare-fun lt!370438 () Unit!16127)

(declare-fun choose!7075 (List!10562 Int) Unit!16127)

(assert (=> d!309984 (= lt!370438 (choose!7075 lt!370365 lambda!42932))))

(assert (=> d!309984 (= (filterSubseq!41 lt!370365 lambda!42932) lt!370438)))

(declare-fun bs!259083 () Bool)

(assert (= bs!259083 d!309984))

(assert (=> bs!259083 m!1252485))

(assert (=> bs!259083 m!1252485))

(declare-fun m!1252635 () Bool)

(assert (=> bs!259083 m!1252635))

(declare-fun m!1252637 () Bool)

(assert (=> bs!259083 m!1252637))

(assert (=> b!1097019 d!309984))

(declare-fun d!309986 () Bool)

(declare-fun res!487054 () Bool)

(declare-fun e!694642 () Bool)

(assert (=> d!309986 (=> res!487054 e!694642)))

(assert (=> d!309986 (= res!487054 ((_ is Nil!10546) lt!370384))))

(assert (=> d!309986 (= (forall!2389 lt!370384 lambda!42929) e!694642)))

(declare-fun b!1097102 () Bool)

(declare-fun e!694643 () Bool)

(assert (=> b!1097102 (= e!694642 e!694643)))

(declare-fun res!487055 () Bool)

(assert (=> b!1097102 (=> (not res!487055) (not e!694643))))

(assert (=> b!1097102 (= res!487055 (dynLambda!4622 lambda!42929 (h!15947 lt!370384)))))

(declare-fun b!1097103 () Bool)

(assert (=> b!1097103 (= e!694643 (forall!2389 (t!103524 lt!370384) lambda!42929))))

(assert (= (and d!309986 (not res!487054)) b!1097102))

(assert (= (and b!1097102 res!487055) b!1097103))

(declare-fun b_lambda!31709 () Bool)

(assert (=> (not b_lambda!31709) (not b!1097102)))

(declare-fun m!1252639 () Bool)

(assert (=> b!1097102 m!1252639))

(declare-fun m!1252641 () Bool)

(assert (=> b!1097103 m!1252641))

(assert (=> b!1097019 d!309986))

(declare-fun d!309988 () Bool)

(assert (=> d!309988 (= (list!3788 (filter!290 objs!8 lambda!42931)) (list!3790 (c!186173 (filter!290 objs!8 lambda!42931))))))

(declare-fun bs!259084 () Bool)

(assert (= bs!259084 d!309988))

(declare-fun m!1252643 () Bool)

(assert (=> bs!259084 m!1252643))

(assert (=> b!1097019 d!309988))

(declare-fun d!309990 () Bool)

(declare-fun res!487056 () Bool)

(declare-fun e!694644 () Bool)

(assert (=> d!309990 (=> res!487056 e!694644)))

(assert (=> d!309990 (= res!487056 ((_ is Nil!10546) lt!370374))))

(assert (=> d!309990 (= (forall!2389 lt!370374 lambda!42929) e!694644)))

(declare-fun b!1097104 () Bool)

(declare-fun e!694645 () Bool)

(assert (=> b!1097104 (= e!694644 e!694645)))

(declare-fun res!487057 () Bool)

(assert (=> b!1097104 (=> (not res!487057) (not e!694645))))

(assert (=> b!1097104 (= res!487057 (dynLambda!4622 lambda!42929 (h!15947 lt!370374)))))

(declare-fun b!1097105 () Bool)

(assert (=> b!1097105 (= e!694645 (forall!2389 (t!103524 lt!370374) lambda!42929))))

(assert (= (and d!309990 (not res!487056)) b!1097104))

(assert (= (and b!1097104 res!487057) b!1097105))

(declare-fun b_lambda!31711 () Bool)

(assert (=> (not b_lambda!31711) (not b!1097104)))

(declare-fun m!1252645 () Bool)

(assert (=> b!1097104 m!1252645))

(declare-fun m!1252647 () Bool)

(assert (=> b!1097105 m!1252647))

(assert (=> b!1097019 d!309990))

(declare-fun d!309992 () Bool)

(assert (=> d!309992 (forall!2389 lt!370374 lambda!42929)))

(declare-fun lt!370441 () Unit!16127)

(declare-fun choose!7076 (List!10562 List!10562 Int) Unit!16127)

(assert (=> d!309992 (= lt!370441 (choose!7076 lt!370374 lt!370365 lambda!42929))))

(assert (=> d!309992 (forall!2389 lt!370365 lambda!42929)))

(assert (=> d!309992 (= (lemmaForallSubseq!49 lt!370374 lt!370365 lambda!42929) lt!370441)))

(declare-fun bs!259085 () Bool)

(assert (= bs!259085 d!309992))

(assert (=> bs!259085 m!1252469))

(declare-fun m!1252649 () Bool)

(assert (=> bs!259085 m!1252649))

(declare-fun m!1252651 () Bool)

(assert (=> bs!259085 m!1252651))

(assert (=> b!1097019 d!309992))

(declare-fun b!1097116 () Bool)

(declare-fun res!487067 () Bool)

(declare-fun e!694648 () Bool)

(assert (=> b!1097116 (=> (not res!487067) (not e!694648))))

(declare-fun height!424 (Conc!3241) Int)

(declare-fun ++!2869 (Conc!3241 Conc!3241) Conc!3241)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1097116 (= res!487067 (>= (height!424 (++!2869 (c!186173 lt!370386) (c!186173 lt!370356))) (max!0 (height!424 (c!186173 lt!370386)) (height!424 (c!186173 lt!370356)))))))

(declare-fun b!1097115 () Bool)

(declare-fun res!487066 () Bool)

(assert (=> b!1097115 (=> (not res!487066) (not e!694648))))

(assert (=> b!1097115 (= res!487066 (<= (height!424 (++!2869 (c!186173 lt!370386) (c!186173 lt!370356))) (+ (max!0 (height!424 (c!186173 lt!370386)) (height!424 (c!186173 lt!370356))) 1)))))

(declare-fun b!1097117 () Bool)

(declare-fun lt!370444 () BalanceConc!6496)

(assert (=> b!1097117 (= e!694648 (= (list!3788 lt!370444) (++!2867 (list!3788 lt!370386) (list!3788 lt!370356))))))

(declare-fun d!309994 () Bool)

(assert (=> d!309994 e!694648))

(declare-fun res!487068 () Bool)

(assert (=> d!309994 (=> (not res!487068) (not e!694648))))

(declare-fun appendAssocInst!210 (Conc!3241 Conc!3241) Bool)

(assert (=> d!309994 (= res!487068 (appendAssocInst!210 (c!186173 lt!370386) (c!186173 lt!370356)))))

(assert (=> d!309994 (= lt!370444 (BalanceConc!6497 (++!2869 (c!186173 lt!370386) (c!186173 lt!370356))))))

(assert (=> d!309994 (= (++!2866 lt!370386 lt!370356) lt!370444)))

(declare-fun b!1097114 () Bool)

(declare-fun res!487069 () Bool)

(assert (=> b!1097114 (=> (not res!487069) (not e!694648))))

(declare-fun isBalanced!896 (Conc!3241) Bool)

(assert (=> b!1097114 (= res!487069 (isBalanced!896 (++!2869 (c!186173 lt!370386) (c!186173 lt!370356))))))

(assert (= (and d!309994 res!487068) b!1097114))

(assert (= (and b!1097114 res!487069) b!1097115))

(assert (= (and b!1097115 res!487066) b!1097116))

(assert (= (and b!1097116 res!487067) b!1097117))

(declare-fun m!1252653 () Bool)

(assert (=> b!1097115 m!1252653))

(declare-fun m!1252655 () Bool)

(assert (=> b!1097115 m!1252655))

(assert (=> b!1097115 m!1252655))

(declare-fun m!1252657 () Bool)

(assert (=> b!1097115 m!1252657))

(declare-fun m!1252659 () Bool)

(assert (=> b!1097115 m!1252659))

(assert (=> b!1097115 m!1252659))

(assert (=> b!1097115 m!1252653))

(declare-fun m!1252661 () Bool)

(assert (=> b!1097115 m!1252661))

(declare-fun m!1252663 () Bool)

(assert (=> d!309994 m!1252663))

(assert (=> d!309994 m!1252655))

(assert (=> b!1097114 m!1252655))

(assert (=> b!1097114 m!1252655))

(declare-fun m!1252665 () Bool)

(assert (=> b!1097114 m!1252665))

(assert (=> b!1097116 m!1252653))

(assert (=> b!1097116 m!1252655))

(assert (=> b!1097116 m!1252655))

(assert (=> b!1097116 m!1252657))

(assert (=> b!1097116 m!1252659))

(assert (=> b!1097116 m!1252659))

(assert (=> b!1097116 m!1252653))

(assert (=> b!1097116 m!1252661))

(declare-fun m!1252667 () Bool)

(assert (=> b!1097117 m!1252667))

(assert (=> b!1097117 m!1252447))

(assert (=> b!1097117 m!1252473))

(assert (=> b!1097117 m!1252447))

(assert (=> b!1097117 m!1252473))

(declare-fun m!1252669 () Bool)

(assert (=> b!1097117 m!1252669))

(assert (=> b!1097019 d!309994))

(declare-fun d!309996 () Bool)

(assert (=> d!309996 (subseq!152 (filter!291 lt!370365 lambda!42931) lt!370365)))

(declare-fun lt!370445 () Unit!16127)

(assert (=> d!309996 (= lt!370445 (choose!7075 lt!370365 lambda!42931))))

(assert (=> d!309996 (= (filterSubseq!41 lt!370365 lambda!42931) lt!370445)))

(declare-fun bs!259086 () Bool)

(assert (= bs!259086 d!309996))

(declare-fun m!1252671 () Bool)

(assert (=> bs!259086 m!1252671))

(assert (=> bs!259086 m!1252671))

(declare-fun m!1252673 () Bool)

(assert (=> bs!259086 m!1252673))

(declare-fun m!1252675 () Bool)

(assert (=> bs!259086 m!1252675))

(assert (=> b!1097019 d!309996))

(declare-fun d!309998 () Bool)

(assert (=> d!309998 (= (list!3788 lt!370356) (list!3790 (c!186173 lt!370356)))))

(declare-fun bs!259087 () Bool)

(assert (= bs!259087 d!309998))

(declare-fun m!1252677 () Bool)

(assert (=> bs!259087 m!1252677))

(assert (=> b!1097019 d!309998))

(declare-fun d!310000 () Bool)

(assert (=> d!310000 (= (list!3788 (sortObjectsByID!0 lt!370369)) (list!3790 (c!186173 (sortObjectsByID!0 lt!370369))))))

(declare-fun bs!259088 () Bool)

(assert (= bs!259088 d!310000))

(declare-fun m!1252679 () Bool)

(assert (=> bs!259088 m!1252679))

(assert (=> b!1097019 d!310000))

(declare-fun d!310002 () Bool)

(assert (=> d!310002 (= (list!3788 (filter!290 objs!8 lambda!42932)) (list!3790 (c!186173 (filter!290 objs!8 lambda!42932))))))

(declare-fun bs!259089 () Bool)

(assert (= bs!259089 d!310002))

(declare-fun m!1252681 () Bool)

(assert (=> bs!259089 m!1252681))

(assert (=> b!1097019 d!310002))

(declare-fun d!310004 () Bool)

(declare-fun lt!370446 () Bool)

(assert (=> d!310004 (= lt!370446 (forall!2389 (list!3788 lt!370369) lambda!42929))))

(assert (=> d!310004 (= lt!370446 (forall!2390 (c!186173 lt!370369) lambda!42929))))

(assert (=> d!310004 (= (forall!2388 lt!370369 lambda!42929) lt!370446)))

(declare-fun bs!259090 () Bool)

(assert (= bs!259090 d!310004))

(assert (=> bs!259090 m!1252409))

(assert (=> bs!259090 m!1252409))

(declare-fun m!1252683 () Bool)

(assert (=> bs!259090 m!1252683))

(declare-fun m!1252685 () Bool)

(assert (=> bs!259090 m!1252685))

(assert (=> b!1097019 d!310004))

(declare-fun d!310006 () Bool)

(assert (=> d!310006 (forall!2389 lt!370364 lambda!42929)))

(declare-fun lt!370447 () Unit!16127)

(assert (=> d!310006 (= lt!370447 (choose!7076 lt!370364 lt!370365 lambda!42929))))

(assert (=> d!310006 (forall!2389 lt!370365 lambda!42929)))

(assert (=> d!310006 (= (lemmaForallSubseq!49 lt!370364 lt!370365 lambda!42929) lt!370447)))

(declare-fun bs!259091 () Bool)

(assert (= bs!259091 d!310006))

(assert (=> bs!259091 m!1252455))

(declare-fun m!1252687 () Bool)

(assert (=> bs!259091 m!1252687))

(assert (=> bs!259091 m!1252651))

(assert (=> b!1097019 d!310006))

(declare-fun d!310008 () Bool)

(declare-fun res!487070 () Bool)

(declare-fun e!694649 () Bool)

(assert (=> d!310008 (=> res!487070 e!694649)))

(assert (=> d!310008 (= res!487070 ((_ is Nil!10546) lt!370364))))

(assert (=> d!310008 (= (forall!2389 lt!370364 lambda!42929) e!694649)))

(declare-fun b!1097118 () Bool)

(declare-fun e!694650 () Bool)

(assert (=> b!1097118 (= e!694649 e!694650)))

(declare-fun res!487071 () Bool)

(assert (=> b!1097118 (=> (not res!487071) (not e!694650))))

(assert (=> b!1097118 (= res!487071 (dynLambda!4622 lambda!42929 (h!15947 lt!370364)))))

(declare-fun b!1097119 () Bool)

(assert (=> b!1097119 (= e!694650 (forall!2389 (t!103524 lt!370364) lambda!42929))))

(assert (= (and d!310008 (not res!487070)) b!1097118))

(assert (= (and b!1097118 res!487071) b!1097119))

(declare-fun b_lambda!31713 () Bool)

(assert (=> (not b_lambda!31713) (not b!1097118)))

(declare-fun m!1252689 () Bool)

(assert (=> b!1097118 m!1252689))

(declare-fun m!1252691 () Bool)

(assert (=> b!1097119 m!1252691))

(assert (=> b!1097019 d!310008))

(declare-fun d!310010 () Bool)

(assert (=> d!310010 (forall!2389 (++!2867 lt!370381 lt!370377) lambda!42929)))

(declare-fun lt!370450 () Unit!16127)

(declare-fun choose!7079 (List!10562 List!10562 Int) Unit!16127)

(assert (=> d!310010 (= lt!370450 (choose!7079 lt!370381 lt!370377 lambda!42929))))

(assert (=> d!310010 (forall!2389 lt!370381 lambda!42929)))

(assert (=> d!310010 (= (lemmaConcatPreservesForall!92 lt!370381 lt!370377 lambda!42929) lt!370450)))

(declare-fun bs!259092 () Bool)

(assert (= bs!259092 d!310010))

(assert (=> bs!259092 m!1252437))

(assert (=> bs!259092 m!1252437))

(declare-fun m!1252693 () Bool)

(assert (=> bs!259092 m!1252693))

(declare-fun m!1252695 () Bool)

(assert (=> bs!259092 m!1252695))

(declare-fun m!1252697 () Bool)

(assert (=> bs!259092 m!1252697))

(assert (=> b!1097019 d!310010))

(declare-fun d!310012 () Bool)

(assert (=> d!310012 (forall!2389 lt!370384 lambda!42929)))

(declare-fun lt!370451 () Unit!16127)

(assert (=> d!310012 (= lt!370451 (choose!7076 lt!370384 lt!370365 lambda!42929))))

(assert (=> d!310012 (forall!2389 lt!370365 lambda!42929)))

(assert (=> d!310012 (= (lemmaForallSubseq!49 lt!370384 lt!370365 lambda!42929) lt!370451)))

(declare-fun bs!259093 () Bool)

(assert (= bs!259093 d!310012))

(assert (=> bs!259093 m!1252449))

(declare-fun m!1252699 () Bool)

(assert (=> bs!259093 m!1252699))

(assert (=> bs!259093 m!1252651))

(assert (=> b!1097019 d!310012))

(declare-fun d!310014 () Bool)

(declare-fun e!694653 () Bool)

(assert (=> d!310014 e!694653))

(declare-fun res!487074 () Bool)

(assert (=> d!310014 (=> (not res!487074) (not e!694653))))

(declare-fun filter!293 (Conc!3241 Int) Conc!3241)

(assert (=> d!310014 (= res!487074 (isBalanced!896 (filter!293 (c!186173 objs!8) lambda!42930)))))

(declare-fun lt!370454 () BalanceConc!6496)

(assert (=> d!310014 (= lt!370454 (BalanceConc!6497 (filter!293 (c!186173 objs!8) lambda!42930)))))

(assert (=> d!310014 (= (filter!290 objs!8 lambda!42930) lt!370454)))

(declare-fun b!1097122 () Bool)

(assert (=> b!1097122 (= e!694653 (= (list!3788 lt!370454) (filter!291 (list!3788 objs!8) lambda!42930)))))

(assert (= (and d!310014 res!487074) b!1097122))

(declare-fun m!1252701 () Bool)

(assert (=> d!310014 m!1252701))

(assert (=> d!310014 m!1252701))

(declare-fun m!1252703 () Bool)

(assert (=> d!310014 m!1252703))

(declare-fun m!1252705 () Bool)

(assert (=> b!1097122 m!1252705))

(assert (=> b!1097122 m!1252413))

(assert (=> b!1097122 m!1252413))

(declare-fun m!1252707 () Bool)

(assert (=> b!1097122 m!1252707))

(assert (=> b!1097019 d!310014))

(declare-fun bs!259133 () Bool)

(declare-fun b!1097336 () Bool)

(assert (= bs!259133 (and b!1097336 start!94026)))

(declare-fun lambda!43035 () Int)

(assert (=> bs!259133 (not (= lambda!43035 lambda!42929))))

(declare-fun bs!259134 () Bool)

(assert (= bs!259134 (and b!1097336 b!1097018)))

(declare-fun lt!370742 () tuple2!11734)

(assert (=> bs!259134 (= (= (_1!6693 lt!370742) (_1!6693 lt!370373)) (= lambda!43035 lambda!42930))))

(assert (=> bs!259134 (not (= lambda!43035 lambda!42931))))

(assert (=> bs!259134 (not (= lambda!43035 lambda!42932))))

(declare-fun b!1097344 () Bool)

(declare-fun e!694791 () Bool)

(assert (=> b!1097344 (= e!694791 true)))

(declare-fun b!1097343 () Bool)

(declare-fun e!694790 () Bool)

(assert (=> b!1097343 (= e!694790 e!694791)))

(assert (=> b!1097336 e!694790))

(assert (= b!1097343 b!1097344))

(assert (= b!1097336 b!1097343))

(declare-fun lambda!43036 () Int)

(assert (=> bs!259134 (not (= lambda!43036 lambda!42930))))

(assert (=> bs!259133 (not (= lambda!43036 lambda!42929))))

(assert (=> bs!259134 (not (= lambda!43036 lambda!42932))))

(assert (=> bs!259134 (= (= (_1!6693 lt!370742) (_1!6693 lt!370373)) (= lambda!43036 lambda!42931))))

(assert (=> b!1097336 (not (= lambda!43036 lambda!43035))))

(declare-fun b!1097346 () Bool)

(declare-fun e!694793 () Bool)

(assert (=> b!1097346 (= e!694793 true)))

(declare-fun b!1097345 () Bool)

(declare-fun e!694792 () Bool)

(assert (=> b!1097345 (= e!694792 e!694793)))

(assert (=> b!1097336 e!694792))

(assert (= b!1097345 b!1097346))

(assert (= b!1097336 b!1097345))

(declare-fun lambda!43037 () Int)

(assert (=> bs!259134 (not (= lambda!43037 lambda!42930))))

(assert (=> bs!259133 (not (= lambda!43037 lambda!42929))))

(assert (=> b!1097336 (not (= lambda!43037 lambda!43036))))

(assert (=> bs!259134 (= (= (_1!6693 lt!370742) (_1!6693 lt!370373)) (= lambda!43037 lambda!42932))))

(assert (=> bs!259134 (not (= lambda!43037 lambda!42931))))

(assert (=> b!1097336 (not (= lambda!43037 lambda!43035))))

(declare-fun b!1097348 () Bool)

(declare-fun e!694795 () Bool)

(assert (=> b!1097348 (= e!694795 true)))

(declare-fun b!1097347 () Bool)

(declare-fun e!694794 () Bool)

(assert (=> b!1097347 (= e!694794 e!694795)))

(assert (=> b!1097336 e!694794))

(assert (= b!1097347 b!1097348))

(assert (= b!1097336 b!1097347))

(declare-fun lambda!43038 () Int)

(assert (=> bs!259134 (not (= lambda!43038 lambda!42930))))

(assert (=> bs!259133 (= lambda!43038 lambda!42929)))

(assert (=> b!1097336 (not (= lambda!43038 lambda!43037))))

(assert (=> b!1097336 (not (= lambda!43038 lambda!43036))))

(assert (=> bs!259134 (not (= lambda!43038 lambda!42932))))

(assert (=> bs!259134 (not (= lambda!43038 lambda!42931))))

(assert (=> b!1097336 (not (= lambda!43038 lambda!43035))))

(declare-fun bs!259135 () Bool)

(declare-fun d!310016 () Bool)

(assert (= bs!259135 (and d!310016 b!1097018)))

(declare-fun lambda!43039 () Int)

(assert (=> bs!259135 (not (= lambda!43039 lambda!42930))))

(declare-fun bs!259136 () Bool)

(assert (= bs!259136 (and d!310016 start!94026)))

(assert (=> bs!259136 (= lambda!43039 lambda!42929)))

(declare-fun bs!259137 () Bool)

(assert (= bs!259137 (and d!310016 b!1097336)))

(assert (=> bs!259137 (= lambda!43039 lambda!43038)))

(assert (=> bs!259137 (not (= lambda!43039 lambda!43037))))

(assert (=> bs!259137 (not (= lambda!43039 lambda!43036))))

(assert (=> bs!259135 (not (= lambda!43039 lambda!42932))))

(assert (=> bs!259135 (not (= lambda!43039 lambda!42931))))

(assert (=> bs!259137 (not (= lambda!43039 lambda!43035))))

(declare-fun b!1097331 () Bool)

(declare-fun e!694786 () Unit!16127)

(declare-fun Unit!16141 () Unit!16127)

(assert (=> b!1097331 (= e!694786 Unit!16141)))

(declare-fun b!1097332 () Bool)

(declare-fun e!694784 () Unit!16127)

(declare-fun Unit!16142 () Unit!16127)

(assert (=> b!1097332 (= e!694784 Unit!16142)))

(declare-fun b!1097333 () Bool)

(declare-fun e!694783 () Unit!16127)

(declare-fun Unit!16143 () Unit!16127)

(assert (=> b!1097333 (= e!694783 Unit!16143)))

(declare-fun b!1097334 () Bool)

(assert (=> b!1097334 true))

(declare-fun lt!370747 () Unit!16127)

(declare-fun lt!370732 () BalanceConc!6496)

(assert (=> b!1097334 (= lt!370747 (forallContained!506 (list!3788 lt!370732) lambda!43037 lt!370742))))

(declare-fun err!2506 () Unit!16127)

(assert (=> b!1097334 (= e!694783 err!2506)))

(declare-fun lt!370735 () BalanceConc!6496)

(assert (=> d!310016 (forall!2388 lt!370735 lambda!43039)))

(declare-fun e!694788 () BalanceConc!6496)

(assert (=> d!310016 (= lt!370735 e!694788)))

(declare-fun c!186243 () Bool)

(assert (=> d!310016 (= c!186243 (<= (size!8167 lt!370378) 1))))

(assert (=> d!310016 (= (sortObjectsByID!0 lt!370378) lt!370735)))

(declare-fun b!1097335 () Bool)

(declare-fun e!694789 () Unit!16127)

(declare-fun Unit!16144 () Unit!16127)

(assert (=> b!1097335 (= e!694789 Unit!16144)))

(declare-fun lt!370718 () BalanceConc!6496)

(declare-fun lt!370717 () BalanceConc!6496)

(assert (=> b!1097336 (= e!694788 (++!2866 (++!2866 (sortObjectsByID!0 lt!370718) lt!370717) (sortObjectsByID!0 lt!370732)))))

(assert (=> b!1097336 (= lt!370742 (apply!2089 lt!370378 (ite (>= (size!8167 lt!370378) 0) (div (size!8167 lt!370378) 2) (- (div (- (size!8167 lt!370378)) 2)))))))

(assert (=> b!1097336 (= lt!370718 (filter!290 lt!370378 lambda!43035))))

(assert (=> b!1097336 (= lt!370717 (filter!290 lt!370378 lambda!43036))))

(assert (=> b!1097336 (= lt!370732 (filter!290 lt!370378 lambda!43037))))

(declare-fun c!186241 () Bool)

(assert (=> b!1097336 (= c!186241 (contains!1812 lt!370718 lt!370742))))

(declare-fun lt!370738 () Unit!16127)

(assert (=> b!1097336 (= lt!370738 e!694789)))

(declare-fun c!186242 () Bool)

(assert (=> b!1097336 (= c!186242 (forall!2388 lt!370378 lambda!43035))))

(declare-fun lt!370716 () Unit!16127)

(assert (=> b!1097336 (= lt!370716 e!694786)))

(declare-fun lt!370731 () List!10562)

(assert (=> b!1097336 (= lt!370731 (list!3788 lt!370378))))

(declare-fun lt!370722 () Unit!16127)

(assert (=> b!1097336 (= lt!370722 (lemmaNotForallFilterShorter!47 lt!370731 lambda!43035))))

(declare-fun res!487129 () Bool)

(assert (=> b!1097336 (= res!487129 (isEmpty!6678 lt!370731))))

(declare-fun e!694785 () Bool)

(assert (=> b!1097336 (=> res!487129 e!694785)))

(assert (=> b!1097336 e!694785))

(declare-fun lt!370725 () Unit!16127)

(assert (=> b!1097336 (= lt!370725 lt!370722)))

(declare-fun c!186244 () Bool)

(assert (=> b!1097336 (= c!186244 (contains!1812 lt!370732 lt!370742))))

(declare-fun lt!370728 () Unit!16127)

(assert (=> b!1097336 (= lt!370728 e!694783)))

(declare-fun c!186245 () Bool)

(assert (=> b!1097336 (= c!186245 (forall!2388 lt!370378 lambda!43037))))

(declare-fun lt!370726 () Unit!16127)

(assert (=> b!1097336 (= lt!370726 e!694784)))

(declare-fun lt!370749 () List!10562)

(assert (=> b!1097336 (= lt!370749 (list!3788 lt!370378))))

(declare-fun lt!370734 () Unit!16127)

(assert (=> b!1097336 (= lt!370734 (lemmaNotForallFilterShorter!47 lt!370749 lambda!43037))))

(declare-fun res!487128 () Bool)

(assert (=> b!1097336 (= res!487128 (isEmpty!6678 lt!370749))))

(declare-fun e!694787 () Bool)

(assert (=> b!1097336 (=> res!487128 e!694787)))

(assert (=> b!1097336 e!694787))

(declare-fun lt!370740 () Unit!16127)

(assert (=> b!1097336 (= lt!370740 lt!370734)))

(declare-fun lt!370743 () Unit!16127)

(assert (=> b!1097336 (= lt!370743 (filterSubseq!41 (list!3788 lt!370378) lambda!43035))))

(declare-fun lt!370737 () Unit!16127)

(assert (=> b!1097336 (= lt!370737 (filterSubseq!41 (list!3788 lt!370378) lambda!43036))))

(declare-fun lt!370739 () Unit!16127)

(assert (=> b!1097336 (= lt!370739 (filterSubseq!41 (list!3788 lt!370378) lambda!43037))))

(declare-fun lt!370736 () List!10562)

(assert (=> b!1097336 (= lt!370736 (list!3788 (filter!290 lt!370378 lambda!43035)))))

(declare-fun lt!370723 () List!10562)

(assert (=> b!1097336 (= lt!370723 (list!3788 lt!370378))))

(declare-fun lt!370715 () Unit!16127)

(assert (=> b!1097336 (= lt!370715 (lemmaForallSubseq!49 lt!370736 lt!370723 lambda!43038))))

(assert (=> b!1097336 (forall!2389 lt!370736 lambda!43038)))

(declare-fun lt!370729 () Unit!16127)

(assert (=> b!1097336 (= lt!370729 lt!370715)))

(declare-fun lt!370724 () List!10562)

(assert (=> b!1097336 (= lt!370724 (list!3788 (filter!290 lt!370378 lambda!43036)))))

(declare-fun lt!370730 () List!10562)

(assert (=> b!1097336 (= lt!370730 (list!3788 lt!370378))))

(declare-fun lt!370733 () Unit!16127)

(assert (=> b!1097336 (= lt!370733 (lemmaForallSubseq!49 lt!370724 lt!370730 lambda!43038))))

(assert (=> b!1097336 (forall!2389 lt!370724 lambda!43038)))

(declare-fun lt!370721 () Unit!16127)

(assert (=> b!1097336 (= lt!370721 lt!370733)))

(declare-fun lt!370727 () List!10562)

(assert (=> b!1097336 (= lt!370727 (list!3788 (filter!290 lt!370378 lambda!43037)))))

(declare-fun lt!370744 () List!10562)

(assert (=> b!1097336 (= lt!370744 (list!3788 lt!370378))))

(declare-fun lt!370745 () Unit!16127)

(assert (=> b!1097336 (= lt!370745 (lemmaForallSubseq!49 lt!370727 lt!370744 lambda!43038))))

(assert (=> b!1097336 (forall!2389 lt!370727 lambda!43038)))

(declare-fun lt!370714 () Unit!16127)

(assert (=> b!1097336 (= lt!370714 lt!370745)))

(declare-fun lt!370720 () Unit!16127)

(assert (=> b!1097336 (= lt!370720 (lemmaConcatPreservesForall!92 (list!3788 (sortObjectsByID!0 lt!370718)) (list!3788 lt!370717) lambda!43038))))

(declare-fun lt!370746 () Unit!16127)

(assert (=> b!1097336 (= lt!370746 (lemmaConcatPreservesForall!92 (++!2867 (list!3788 (sortObjectsByID!0 lt!370718)) (list!3788 lt!370717)) (list!3788 (sortObjectsByID!0 lt!370732)) lambda!43038))))

(declare-fun b!1097337 () Bool)

(assert (=> b!1097337 true))

(declare-fun lt!370719 () Unit!16127)

(assert (=> b!1097337 (= lt!370719 (forallContained!506 (list!3788 lt!370718) lambda!43035 lt!370742))))

(declare-fun err!2507 () Unit!16127)

(assert (=> b!1097337 (= e!694789 err!2507)))

(declare-fun b!1097338 () Bool)

(assert (=> b!1097338 (= e!694785 (< (size!8168 (filter!291 lt!370731 lambda!43035)) (size!8168 lt!370731)))))

(declare-fun b!1097339 () Bool)

(assert (=> b!1097339 true))

(declare-fun lt!370741 () Unit!16127)

(assert (=> b!1097339 (= lt!370741 (forallContained!506 (list!3788 lt!370378) lambda!43035 lt!370742))))

(declare-fun err!2508 () Unit!16127)

(assert (=> b!1097339 (= e!694786 err!2508)))

(declare-fun b!1097340 () Bool)

(assert (=> b!1097340 true))

(declare-fun lt!370748 () Unit!16127)

(assert (=> b!1097340 (= lt!370748 (forallContained!506 (list!3788 lt!370378) lambda!43037 lt!370742))))

(declare-fun err!2509 () Unit!16127)

(assert (=> b!1097340 (= e!694784 err!2509)))

(declare-fun b!1097341 () Bool)

(assert (=> b!1097341 (= e!694787 (< (size!8168 (filter!291 lt!370749 lambda!43037)) (size!8168 lt!370749)))))

(declare-fun b!1097342 () Bool)

(assert (=> b!1097342 (= e!694788 lt!370378)))

(assert (= (and d!310016 c!186243) b!1097342))

(assert (= (and d!310016 (not c!186243)) b!1097336))

(assert (= (and b!1097336 c!186241) b!1097337))

(assert (= (and b!1097336 (not c!186241)) b!1097335))

(assert (= (and b!1097336 c!186242) b!1097339))

(assert (= (and b!1097336 (not c!186242)) b!1097331))

(assert (= (and b!1097336 (not res!487129)) b!1097338))

(assert (= (and b!1097336 c!186244) b!1097334))

(assert (= (and b!1097336 (not c!186244)) b!1097333))

(assert (= (and b!1097336 c!186245) b!1097340))

(assert (= (and b!1097336 (not c!186245)) b!1097332))

(assert (= (and b!1097336 (not res!487128)) b!1097341))

(declare-fun m!1253065 () Bool)

(assert (=> b!1097341 m!1253065))

(assert (=> b!1097341 m!1253065))

(declare-fun m!1253067 () Bool)

(assert (=> b!1097341 m!1253067))

(declare-fun m!1253069 () Bool)

(assert (=> b!1097341 m!1253069))

(declare-fun m!1253071 () Bool)

(assert (=> b!1097336 m!1253071))

(declare-fun m!1253073 () Bool)

(assert (=> b!1097336 m!1253073))

(declare-fun m!1253075 () Bool)

(assert (=> b!1097336 m!1253075))

(declare-fun m!1253077 () Bool)

(assert (=> b!1097336 m!1253077))

(declare-fun m!1253079 () Bool)

(assert (=> b!1097336 m!1253079))

(declare-fun m!1253081 () Bool)

(assert (=> b!1097336 m!1253081))

(declare-fun m!1253083 () Bool)

(assert (=> b!1097336 m!1253083))

(declare-fun m!1253085 () Bool)

(assert (=> b!1097336 m!1253085))

(declare-fun m!1253087 () Bool)

(assert (=> b!1097336 m!1253087))

(assert (=> b!1097336 m!1253081))

(declare-fun m!1253089 () Bool)

(assert (=> b!1097336 m!1253089))

(declare-fun m!1253091 () Bool)

(assert (=> b!1097336 m!1253091))

(declare-fun m!1253093 () Bool)

(assert (=> b!1097336 m!1253093))

(declare-fun m!1253095 () Bool)

(assert (=> b!1097336 m!1253095))

(assert (=> b!1097336 m!1253083))

(assert (=> b!1097336 m!1253085))

(declare-fun m!1253097 () Bool)

(assert (=> b!1097336 m!1253097))

(assert (=> b!1097336 m!1253075))

(declare-fun m!1253099 () Bool)

(assert (=> b!1097336 m!1253099))

(assert (=> b!1097336 m!1253081))

(assert (=> b!1097336 m!1252415))

(declare-fun m!1253101 () Bool)

(assert (=> b!1097336 m!1253101))

(assert (=> b!1097336 m!1252431))

(declare-fun m!1253103 () Bool)

(assert (=> b!1097336 m!1253103))

(declare-fun m!1253105 () Bool)

(assert (=> b!1097336 m!1253105))

(declare-fun m!1253107 () Bool)

(assert (=> b!1097336 m!1253107))

(assert (=> b!1097336 m!1253087))

(declare-fun m!1253109 () Bool)

(assert (=> b!1097336 m!1253109))

(declare-fun m!1253111 () Bool)

(assert (=> b!1097336 m!1253111))

(assert (=> b!1097336 m!1253089))

(declare-fun m!1253113 () Bool)

(assert (=> b!1097336 m!1253113))

(declare-fun m!1253115 () Bool)

(assert (=> b!1097336 m!1253115))

(assert (=> b!1097336 m!1253089))

(assert (=> b!1097336 m!1253113))

(assert (=> b!1097336 m!1253107))

(assert (=> b!1097336 m!1253077))

(declare-fun m!1253117 () Bool)

(assert (=> b!1097336 m!1253117))

(assert (=> b!1097336 m!1253091))

(declare-fun m!1253119 () Bool)

(assert (=> b!1097336 m!1253119))

(declare-fun m!1253121 () Bool)

(assert (=> b!1097336 m!1253121))

(declare-fun m!1253123 () Bool)

(assert (=> b!1097336 m!1253123))

(assert (=> b!1097336 m!1252431))

(assert (=> b!1097336 m!1253091))

(assert (=> b!1097336 m!1252431))

(declare-fun m!1253125 () Bool)

(assert (=> b!1097336 m!1253125))

(assert (=> b!1097336 m!1253113))

(declare-fun m!1253127 () Bool)

(assert (=> b!1097336 m!1253127))

(declare-fun m!1253129 () Bool)

(assert (=> b!1097336 m!1253129))

(assert (=> b!1097336 m!1253085))

(declare-fun m!1253131 () Bool)

(assert (=> b!1097336 m!1253131))

(assert (=> b!1097336 m!1253077))

(declare-fun m!1253133 () Bool)

(assert (=> b!1097336 m!1253133))

(assert (=> b!1097336 m!1252431))

(declare-fun m!1253135 () Bool)

(assert (=> b!1097336 m!1253135))

(declare-fun m!1253137 () Bool)

(assert (=> b!1097336 m!1253137))

(assert (=> b!1097336 m!1253075))

(declare-fun m!1253139 () Bool)

(assert (=> b!1097338 m!1253139))

(assert (=> b!1097338 m!1253139))

(declare-fun m!1253141 () Bool)

(assert (=> b!1097338 m!1253141))

(declare-fun m!1253143 () Bool)

(assert (=> b!1097338 m!1253143))

(assert (=> b!1097340 m!1252431))

(assert (=> b!1097340 m!1252431))

(declare-fun m!1253145 () Bool)

(assert (=> b!1097340 m!1253145))

(declare-fun m!1253147 () Bool)

(assert (=> d!310016 m!1253147))

(assert (=> d!310016 m!1252415))

(declare-fun m!1253149 () Bool)

(assert (=> b!1097337 m!1253149))

(assert (=> b!1097337 m!1253149))

(declare-fun m!1253151 () Bool)

(assert (=> b!1097337 m!1253151))

(assert (=> b!1097339 m!1252431))

(assert (=> b!1097339 m!1252431))

(declare-fun m!1253153 () Bool)

(assert (=> b!1097339 m!1253153))

(declare-fun m!1253155 () Bool)

(assert (=> b!1097334 m!1253155))

(assert (=> b!1097334 m!1253155))

(declare-fun m!1253157 () Bool)

(assert (=> b!1097334 m!1253157))

(assert (=> b!1097019 d!310016))

(declare-fun d!310102 () Bool)

(assert (=> d!310102 (= (list!3788 (filter!290 objs!8 lambda!42930)) (list!3790 (c!186173 (filter!290 objs!8 lambda!42930))))))

(declare-fun bs!259138 () Bool)

(assert (= bs!259138 d!310102))

(declare-fun m!1253159 () Bool)

(assert (=> bs!259138 m!1253159))

(assert (=> b!1097019 d!310102))

(declare-fun d!310104 () Bool)

(declare-fun e!694800 () Bool)

(assert (=> d!310104 e!694800))

(declare-fun res!487134 () Bool)

(assert (=> d!310104 (=> (not res!487134) (not e!694800))))

(declare-fun lt!370752 () List!10562)

(assert (=> d!310104 (= res!487134 (= (content!1524 lt!370752) ((_ map or) (content!1524 lt!370381) (content!1524 lt!370377))))))

(declare-fun e!694801 () List!10562)

(assert (=> d!310104 (= lt!370752 e!694801)))

(declare-fun c!186248 () Bool)

(assert (=> d!310104 (= c!186248 ((_ is Nil!10546) lt!370381))))

(assert (=> d!310104 (= (++!2867 lt!370381 lt!370377) lt!370752)))

(declare-fun b!1097359 () Bool)

(declare-fun res!487135 () Bool)

(assert (=> b!1097359 (=> (not res!487135) (not e!694800))))

(assert (=> b!1097359 (= res!487135 (= (size!8168 lt!370752) (+ (size!8168 lt!370381) (size!8168 lt!370377))))))

(declare-fun b!1097357 () Bool)

(assert (=> b!1097357 (= e!694801 lt!370377)))

(declare-fun b!1097358 () Bool)

(assert (=> b!1097358 (= e!694801 (Cons!10546 (h!15947 lt!370381) (++!2867 (t!103524 lt!370381) lt!370377)))))

(declare-fun b!1097360 () Bool)

(assert (=> b!1097360 (= e!694800 (or (not (= lt!370377 Nil!10546)) (= lt!370752 lt!370381)))))

(assert (= (and d!310104 c!186248) b!1097357))

(assert (= (and d!310104 (not c!186248)) b!1097358))

(assert (= (and d!310104 res!487134) b!1097359))

(assert (= (and b!1097359 res!487135) b!1097360))

(declare-fun m!1253161 () Bool)

(assert (=> d!310104 m!1253161))

(declare-fun m!1253163 () Bool)

(assert (=> d!310104 m!1253163))

(declare-fun m!1253165 () Bool)

(assert (=> d!310104 m!1253165))

(declare-fun m!1253167 () Bool)

(assert (=> b!1097359 m!1253167))

(declare-fun m!1253169 () Bool)

(assert (=> b!1097359 m!1253169))

(declare-fun m!1253171 () Bool)

(assert (=> b!1097359 m!1253171))

(declare-fun m!1253173 () Bool)

(assert (=> b!1097358 m!1253173))

(assert (=> b!1097019 d!310104))

(declare-fun bs!259139 () Bool)

(declare-fun b!1097366 () Bool)

(assert (= bs!259139 (and b!1097366 b!1097018)))

(declare-fun lambda!43040 () Int)

(declare-fun lt!370781 () tuple2!11734)

(assert (=> bs!259139 (= (= (_1!6693 lt!370781) (_1!6693 lt!370373)) (= lambda!43040 lambda!42930))))

(declare-fun bs!259140 () Bool)

(assert (= bs!259140 (and b!1097366 start!94026)))

(assert (=> bs!259140 (not (= lambda!43040 lambda!42929))))

(declare-fun bs!259141 () Bool)

(assert (= bs!259141 (and b!1097366 b!1097336)))

(assert (=> bs!259141 (not (= lambda!43040 lambda!43038))))

(assert (=> bs!259141 (not (= lambda!43040 lambda!43037))))

(declare-fun bs!259142 () Bool)

(assert (= bs!259142 (and b!1097366 d!310016)))

(assert (=> bs!259142 (not (= lambda!43040 lambda!43039))))

(assert (=> bs!259141 (not (= lambda!43040 lambda!43036))))

(assert (=> bs!259139 (not (= lambda!43040 lambda!42932))))

(assert (=> bs!259139 (not (= lambda!43040 lambda!42931))))

(assert (=> bs!259141 (= (= (_1!6693 lt!370781) (_1!6693 lt!370742)) (= lambda!43040 lambda!43035))))

(declare-fun b!1097374 () Bool)

(declare-fun e!694810 () Bool)

(assert (=> b!1097374 (= e!694810 true)))

(declare-fun b!1097373 () Bool)

(declare-fun e!694809 () Bool)

(assert (=> b!1097373 (= e!694809 e!694810)))

(assert (=> b!1097366 e!694809))

(assert (= b!1097373 b!1097374))

(assert (= b!1097366 b!1097373))

(declare-fun lambda!43041 () Int)

(assert (=> bs!259139 (not (= lambda!43041 lambda!42930))))

(assert (=> bs!259140 (not (= lambda!43041 lambda!42929))))

(assert (=> bs!259141 (not (= lambda!43041 lambda!43038))))

(assert (=> b!1097366 (not (= lambda!43041 lambda!43040))))

(assert (=> bs!259141 (not (= lambda!43041 lambda!43037))))

(assert (=> bs!259142 (not (= lambda!43041 lambda!43039))))

(assert (=> bs!259141 (= (= (_1!6693 lt!370781) (_1!6693 lt!370742)) (= lambda!43041 lambda!43036))))

(assert (=> bs!259139 (not (= lambda!43041 lambda!42932))))

(assert (=> bs!259139 (= (= (_1!6693 lt!370781) (_1!6693 lt!370373)) (= lambda!43041 lambda!42931))))

(assert (=> bs!259141 (not (= lambda!43041 lambda!43035))))

(declare-fun b!1097376 () Bool)

(declare-fun e!694812 () Bool)

(assert (=> b!1097376 (= e!694812 true)))

(declare-fun b!1097375 () Bool)

(declare-fun e!694811 () Bool)

(assert (=> b!1097375 (= e!694811 e!694812)))

(assert (=> b!1097366 e!694811))

(assert (= b!1097375 b!1097376))

(assert (= b!1097366 b!1097375))

(declare-fun lambda!43042 () Int)

(assert (=> bs!259139 (not (= lambda!43042 lambda!42930))))

(assert (=> bs!259140 (not (= lambda!43042 lambda!42929))))

(assert (=> bs!259141 (not (= lambda!43042 lambda!43038))))

(assert (=> b!1097366 (not (= lambda!43042 lambda!43040))))

(assert (=> b!1097366 (not (= lambda!43042 lambda!43041))))

(assert (=> bs!259141 (= (= (_1!6693 lt!370781) (_1!6693 lt!370742)) (= lambda!43042 lambda!43037))))

(assert (=> bs!259142 (not (= lambda!43042 lambda!43039))))

(assert (=> bs!259141 (not (= lambda!43042 lambda!43036))))

(assert (=> bs!259139 (= (= (_1!6693 lt!370781) (_1!6693 lt!370373)) (= lambda!43042 lambda!42932))))

(assert (=> bs!259139 (not (= lambda!43042 lambda!42931))))

(assert (=> bs!259141 (not (= lambda!43042 lambda!43035))))

(declare-fun b!1097378 () Bool)

(declare-fun e!694814 () Bool)

(assert (=> b!1097378 (= e!694814 true)))

(declare-fun b!1097377 () Bool)

(declare-fun e!694813 () Bool)

(assert (=> b!1097377 (= e!694813 e!694814)))

(assert (=> b!1097366 e!694813))

(assert (= b!1097377 b!1097378))

(assert (= b!1097366 b!1097377))

(declare-fun lambda!43043 () Int)

(assert (=> b!1097366 (not (= lambda!43043 lambda!43042))))

(assert (=> bs!259139 (not (= lambda!43043 lambda!42930))))

(assert (=> bs!259140 (= lambda!43043 lambda!42929)))

(assert (=> bs!259141 (= lambda!43043 lambda!43038)))

(assert (=> b!1097366 (not (= lambda!43043 lambda!43040))))

(assert (=> b!1097366 (not (= lambda!43043 lambda!43041))))

(assert (=> bs!259141 (not (= lambda!43043 lambda!43037))))

(assert (=> bs!259142 (= lambda!43043 lambda!43039)))

(assert (=> bs!259141 (not (= lambda!43043 lambda!43036))))

(assert (=> bs!259139 (not (= lambda!43043 lambda!42932))))

(assert (=> bs!259139 (not (= lambda!43043 lambda!42931))))

(assert (=> bs!259141 (not (= lambda!43043 lambda!43035))))

(declare-fun bs!259143 () Bool)

(declare-fun d!310106 () Bool)

(assert (= bs!259143 (and d!310106 b!1097366)))

(declare-fun lambda!43044 () Int)

(assert (=> bs!259143 (not (= lambda!43044 lambda!43042))))

(declare-fun bs!259144 () Bool)

(assert (= bs!259144 (and d!310106 b!1097018)))

(assert (=> bs!259144 (not (= lambda!43044 lambda!42930))))

(declare-fun bs!259145 () Bool)

(assert (= bs!259145 (and d!310106 start!94026)))

(assert (=> bs!259145 (= lambda!43044 lambda!42929)))

(declare-fun bs!259146 () Bool)

(assert (= bs!259146 (and d!310106 b!1097336)))

(assert (=> bs!259146 (= lambda!43044 lambda!43038)))

(assert (=> bs!259143 (not (= lambda!43044 lambda!43040))))

(assert (=> bs!259143 (not (= lambda!43044 lambda!43041))))

(assert (=> bs!259146 (not (= lambda!43044 lambda!43037))))

(declare-fun bs!259147 () Bool)

(assert (= bs!259147 (and d!310106 d!310016)))

(assert (=> bs!259147 (= lambda!43044 lambda!43039)))

(assert (=> bs!259144 (not (= lambda!43044 lambda!42932))))

(assert (=> bs!259144 (not (= lambda!43044 lambda!42931))))

(assert (=> bs!259146 (not (= lambda!43044 lambda!43035))))

(assert (=> bs!259143 (= lambda!43044 lambda!43043)))

(assert (=> bs!259146 (not (= lambda!43044 lambda!43036))))

(declare-fun b!1097361 () Bool)

(declare-fun e!694805 () Unit!16127)

(declare-fun Unit!16145 () Unit!16127)

(assert (=> b!1097361 (= e!694805 Unit!16145)))

(declare-fun b!1097362 () Bool)

(declare-fun e!694803 () Unit!16127)

(declare-fun Unit!16146 () Unit!16127)

(assert (=> b!1097362 (= e!694803 Unit!16146)))

(declare-fun b!1097363 () Bool)

(declare-fun e!694802 () Unit!16127)

(declare-fun Unit!16147 () Unit!16127)

(assert (=> b!1097363 (= e!694802 Unit!16147)))

(declare-fun b!1097364 () Bool)

(assert (=> b!1097364 true))

(declare-fun lt!370771 () BalanceConc!6496)

(declare-fun lt!370786 () Unit!16127)

(assert (=> b!1097364 (= lt!370786 (forallContained!506 (list!3788 lt!370771) lambda!43042 lt!370781))))

(declare-fun err!2510 () Unit!16127)

(assert (=> b!1097364 (= e!694802 err!2510)))

(declare-fun lt!370774 () BalanceConc!6496)

(assert (=> d!310106 (forall!2388 lt!370774 lambda!43044)))

(declare-fun e!694807 () BalanceConc!6496)

(assert (=> d!310106 (= lt!370774 e!694807)))

(declare-fun c!186251 () Bool)

(assert (=> d!310106 (= c!186251 (<= (size!8167 lt!370369) 1))))

(assert (=> d!310106 (= (sortObjectsByID!0 lt!370369) lt!370774)))

(declare-fun b!1097365 () Bool)

(declare-fun e!694808 () Unit!16127)

(declare-fun Unit!16148 () Unit!16127)

(assert (=> b!1097365 (= e!694808 Unit!16148)))

(declare-fun lt!370757 () BalanceConc!6496)

(declare-fun lt!370756 () BalanceConc!6496)

(assert (=> b!1097366 (= e!694807 (++!2866 (++!2866 (sortObjectsByID!0 lt!370757) lt!370756) (sortObjectsByID!0 lt!370771)))))

(assert (=> b!1097366 (= lt!370781 (apply!2089 lt!370369 (ite (>= (size!8167 lt!370369) 0) (div (size!8167 lt!370369) 2) (- (div (- (size!8167 lt!370369)) 2)))))))

(assert (=> b!1097366 (= lt!370757 (filter!290 lt!370369 lambda!43040))))

(assert (=> b!1097366 (= lt!370756 (filter!290 lt!370369 lambda!43041))))

(assert (=> b!1097366 (= lt!370771 (filter!290 lt!370369 lambda!43042))))

(declare-fun c!186249 () Bool)

(assert (=> b!1097366 (= c!186249 (contains!1812 lt!370757 lt!370781))))

(declare-fun lt!370777 () Unit!16127)

(assert (=> b!1097366 (= lt!370777 e!694808)))

(declare-fun c!186250 () Bool)

(assert (=> b!1097366 (= c!186250 (forall!2388 lt!370369 lambda!43040))))

(declare-fun lt!370755 () Unit!16127)

(assert (=> b!1097366 (= lt!370755 e!694805)))

(declare-fun lt!370770 () List!10562)

(assert (=> b!1097366 (= lt!370770 (list!3788 lt!370369))))

(declare-fun lt!370761 () Unit!16127)

(assert (=> b!1097366 (= lt!370761 (lemmaNotForallFilterShorter!47 lt!370770 lambda!43040))))

(declare-fun res!487137 () Bool)

(assert (=> b!1097366 (= res!487137 (isEmpty!6678 lt!370770))))

(declare-fun e!694804 () Bool)

(assert (=> b!1097366 (=> res!487137 e!694804)))

(assert (=> b!1097366 e!694804))

(declare-fun lt!370764 () Unit!16127)

(assert (=> b!1097366 (= lt!370764 lt!370761)))

(declare-fun c!186252 () Bool)

(assert (=> b!1097366 (= c!186252 (contains!1812 lt!370771 lt!370781))))

(declare-fun lt!370767 () Unit!16127)

(assert (=> b!1097366 (= lt!370767 e!694802)))

(declare-fun c!186253 () Bool)

(assert (=> b!1097366 (= c!186253 (forall!2388 lt!370369 lambda!43042))))

(declare-fun lt!370765 () Unit!16127)

(assert (=> b!1097366 (= lt!370765 e!694803)))

(declare-fun lt!370788 () List!10562)

(assert (=> b!1097366 (= lt!370788 (list!3788 lt!370369))))

(declare-fun lt!370773 () Unit!16127)

(assert (=> b!1097366 (= lt!370773 (lemmaNotForallFilterShorter!47 lt!370788 lambda!43042))))

(declare-fun res!487136 () Bool)

(assert (=> b!1097366 (= res!487136 (isEmpty!6678 lt!370788))))

(declare-fun e!694806 () Bool)

(assert (=> b!1097366 (=> res!487136 e!694806)))

(assert (=> b!1097366 e!694806))

(declare-fun lt!370779 () Unit!16127)

(assert (=> b!1097366 (= lt!370779 lt!370773)))

(declare-fun lt!370782 () Unit!16127)

(assert (=> b!1097366 (= lt!370782 (filterSubseq!41 (list!3788 lt!370369) lambda!43040))))

(declare-fun lt!370776 () Unit!16127)

(assert (=> b!1097366 (= lt!370776 (filterSubseq!41 (list!3788 lt!370369) lambda!43041))))

(declare-fun lt!370778 () Unit!16127)

(assert (=> b!1097366 (= lt!370778 (filterSubseq!41 (list!3788 lt!370369) lambda!43042))))

(declare-fun lt!370775 () List!10562)

(assert (=> b!1097366 (= lt!370775 (list!3788 (filter!290 lt!370369 lambda!43040)))))

(declare-fun lt!370762 () List!10562)

(assert (=> b!1097366 (= lt!370762 (list!3788 lt!370369))))

(declare-fun lt!370754 () Unit!16127)

(assert (=> b!1097366 (= lt!370754 (lemmaForallSubseq!49 lt!370775 lt!370762 lambda!43043))))

(assert (=> b!1097366 (forall!2389 lt!370775 lambda!43043)))

(declare-fun lt!370768 () Unit!16127)

(assert (=> b!1097366 (= lt!370768 lt!370754)))

(declare-fun lt!370763 () List!10562)

(assert (=> b!1097366 (= lt!370763 (list!3788 (filter!290 lt!370369 lambda!43041)))))

(declare-fun lt!370769 () List!10562)

(assert (=> b!1097366 (= lt!370769 (list!3788 lt!370369))))

(declare-fun lt!370772 () Unit!16127)

(assert (=> b!1097366 (= lt!370772 (lemmaForallSubseq!49 lt!370763 lt!370769 lambda!43043))))

(assert (=> b!1097366 (forall!2389 lt!370763 lambda!43043)))

(declare-fun lt!370760 () Unit!16127)

(assert (=> b!1097366 (= lt!370760 lt!370772)))

(declare-fun lt!370766 () List!10562)

(assert (=> b!1097366 (= lt!370766 (list!3788 (filter!290 lt!370369 lambda!43042)))))

(declare-fun lt!370783 () List!10562)

(assert (=> b!1097366 (= lt!370783 (list!3788 lt!370369))))

(declare-fun lt!370784 () Unit!16127)

(assert (=> b!1097366 (= lt!370784 (lemmaForallSubseq!49 lt!370766 lt!370783 lambda!43043))))

(assert (=> b!1097366 (forall!2389 lt!370766 lambda!43043)))

(declare-fun lt!370753 () Unit!16127)

(assert (=> b!1097366 (= lt!370753 lt!370784)))

(declare-fun lt!370759 () Unit!16127)

(assert (=> b!1097366 (= lt!370759 (lemmaConcatPreservesForall!92 (list!3788 (sortObjectsByID!0 lt!370757)) (list!3788 lt!370756) lambda!43043))))

(declare-fun lt!370785 () Unit!16127)

(assert (=> b!1097366 (= lt!370785 (lemmaConcatPreservesForall!92 (++!2867 (list!3788 (sortObjectsByID!0 lt!370757)) (list!3788 lt!370756)) (list!3788 (sortObjectsByID!0 lt!370771)) lambda!43043))))

(declare-fun b!1097367 () Bool)

(assert (=> b!1097367 true))

(declare-fun lt!370758 () Unit!16127)

(assert (=> b!1097367 (= lt!370758 (forallContained!506 (list!3788 lt!370757) lambda!43040 lt!370781))))

(declare-fun err!2511 () Unit!16127)

(assert (=> b!1097367 (= e!694808 err!2511)))

(declare-fun b!1097368 () Bool)

(assert (=> b!1097368 (= e!694804 (< (size!8168 (filter!291 lt!370770 lambda!43040)) (size!8168 lt!370770)))))

(declare-fun b!1097369 () Bool)

(assert (=> b!1097369 true))

(declare-fun lt!370780 () Unit!16127)

(assert (=> b!1097369 (= lt!370780 (forallContained!506 (list!3788 lt!370369) lambda!43040 lt!370781))))

(declare-fun err!2512 () Unit!16127)

(assert (=> b!1097369 (= e!694805 err!2512)))

(declare-fun b!1097370 () Bool)

(assert (=> b!1097370 true))

(declare-fun lt!370787 () Unit!16127)

(assert (=> b!1097370 (= lt!370787 (forallContained!506 (list!3788 lt!370369) lambda!43042 lt!370781))))

(declare-fun err!2513 () Unit!16127)

(assert (=> b!1097370 (= e!694803 err!2513)))

(declare-fun b!1097371 () Bool)

(assert (=> b!1097371 (= e!694806 (< (size!8168 (filter!291 lt!370788 lambda!43042)) (size!8168 lt!370788)))))

(declare-fun b!1097372 () Bool)

(assert (=> b!1097372 (= e!694807 lt!370369)))

(assert (= (and d!310106 c!186251) b!1097372))

(assert (= (and d!310106 (not c!186251)) b!1097366))

(assert (= (and b!1097366 c!186249) b!1097367))

(assert (= (and b!1097366 (not c!186249)) b!1097365))

(assert (= (and b!1097366 c!186250) b!1097369))

(assert (= (and b!1097366 (not c!186250)) b!1097361))

(assert (= (and b!1097366 (not res!487137)) b!1097368))

(assert (= (and b!1097366 c!186252) b!1097364))

(assert (= (and b!1097366 (not c!186252)) b!1097363))

(assert (= (and b!1097366 c!186253) b!1097370))

(assert (= (and b!1097366 (not c!186253)) b!1097362))

(assert (= (and b!1097366 (not res!487136)) b!1097371))

(declare-fun m!1253175 () Bool)

(assert (=> b!1097371 m!1253175))

(assert (=> b!1097371 m!1253175))

(declare-fun m!1253177 () Bool)

(assert (=> b!1097371 m!1253177))

(declare-fun m!1253179 () Bool)

(assert (=> b!1097371 m!1253179))

(declare-fun m!1253181 () Bool)

(assert (=> b!1097366 m!1253181))

(declare-fun m!1253183 () Bool)

(assert (=> b!1097366 m!1253183))

(declare-fun m!1253185 () Bool)

(assert (=> b!1097366 m!1253185))

(declare-fun m!1253187 () Bool)

(assert (=> b!1097366 m!1253187))

(declare-fun m!1253189 () Bool)

(assert (=> b!1097366 m!1253189))

(declare-fun m!1253191 () Bool)

(assert (=> b!1097366 m!1253191))

(declare-fun m!1253193 () Bool)

(assert (=> b!1097366 m!1253193))

(declare-fun m!1253195 () Bool)

(assert (=> b!1097366 m!1253195))

(declare-fun m!1253197 () Bool)

(assert (=> b!1097366 m!1253197))

(assert (=> b!1097366 m!1253191))

(declare-fun m!1253199 () Bool)

(assert (=> b!1097366 m!1253199))

(declare-fun m!1253201 () Bool)

(assert (=> b!1097366 m!1253201))

(declare-fun m!1253203 () Bool)

(assert (=> b!1097366 m!1253203))

(declare-fun m!1253205 () Bool)

(assert (=> b!1097366 m!1253205))

(assert (=> b!1097366 m!1253193))

(assert (=> b!1097366 m!1253195))

(declare-fun m!1253207 () Bool)

(assert (=> b!1097366 m!1253207))

(assert (=> b!1097366 m!1253185))

(declare-fun m!1253209 () Bool)

(assert (=> b!1097366 m!1253209))

(assert (=> b!1097366 m!1253191))

(assert (=> b!1097366 m!1252493))

(declare-fun m!1253211 () Bool)

(assert (=> b!1097366 m!1253211))

(assert (=> b!1097366 m!1252409))

(declare-fun m!1253213 () Bool)

(assert (=> b!1097366 m!1253213))

(declare-fun m!1253215 () Bool)

(assert (=> b!1097366 m!1253215))

(declare-fun m!1253217 () Bool)

(assert (=> b!1097366 m!1253217))

(assert (=> b!1097366 m!1253197))

(declare-fun m!1253219 () Bool)

(assert (=> b!1097366 m!1253219))

(declare-fun m!1253221 () Bool)

(assert (=> b!1097366 m!1253221))

(assert (=> b!1097366 m!1253199))

(declare-fun m!1253223 () Bool)

(assert (=> b!1097366 m!1253223))

(declare-fun m!1253225 () Bool)

(assert (=> b!1097366 m!1253225))

(assert (=> b!1097366 m!1253199))

(assert (=> b!1097366 m!1253223))

(assert (=> b!1097366 m!1253217))

(assert (=> b!1097366 m!1253187))

(declare-fun m!1253227 () Bool)

(assert (=> b!1097366 m!1253227))

(assert (=> b!1097366 m!1253201))

(declare-fun m!1253229 () Bool)

(assert (=> b!1097366 m!1253229))

(declare-fun m!1253231 () Bool)

(assert (=> b!1097366 m!1253231))

(declare-fun m!1253233 () Bool)

(assert (=> b!1097366 m!1253233))

(assert (=> b!1097366 m!1252409))

(assert (=> b!1097366 m!1253201))

(assert (=> b!1097366 m!1252409))

(declare-fun m!1253235 () Bool)

(assert (=> b!1097366 m!1253235))

(assert (=> b!1097366 m!1253223))

(declare-fun m!1253237 () Bool)

(assert (=> b!1097366 m!1253237))

(declare-fun m!1253239 () Bool)

(assert (=> b!1097366 m!1253239))

(assert (=> b!1097366 m!1253195))

(declare-fun m!1253241 () Bool)

(assert (=> b!1097366 m!1253241))

(assert (=> b!1097366 m!1253187))

(declare-fun m!1253243 () Bool)

(assert (=> b!1097366 m!1253243))

(assert (=> b!1097366 m!1252409))

(declare-fun m!1253245 () Bool)

(assert (=> b!1097366 m!1253245))

(declare-fun m!1253247 () Bool)

(assert (=> b!1097366 m!1253247))

(assert (=> b!1097366 m!1253185))

(declare-fun m!1253249 () Bool)

(assert (=> b!1097368 m!1253249))

(assert (=> b!1097368 m!1253249))

(declare-fun m!1253251 () Bool)

(assert (=> b!1097368 m!1253251))

(declare-fun m!1253253 () Bool)

(assert (=> b!1097368 m!1253253))

(assert (=> b!1097370 m!1252409))

(assert (=> b!1097370 m!1252409))

(declare-fun m!1253255 () Bool)

(assert (=> b!1097370 m!1253255))

(declare-fun m!1253257 () Bool)

(assert (=> d!310106 m!1253257))

(assert (=> d!310106 m!1252493))

(declare-fun m!1253259 () Bool)

(assert (=> b!1097367 m!1253259))

(assert (=> b!1097367 m!1253259))

(declare-fun m!1253261 () Bool)

(assert (=> b!1097367 m!1253261))

(assert (=> b!1097369 m!1252409))

(assert (=> b!1097369 m!1252409))

(declare-fun m!1253263 () Bool)

(assert (=> b!1097369 m!1253263))

(declare-fun m!1253265 () Bool)

(assert (=> b!1097364 m!1253265))

(assert (=> b!1097364 m!1253265))

(declare-fun m!1253267 () Bool)

(assert (=> b!1097364 m!1253267))

(assert (=> b!1097019 d!310106))

(declare-fun d!310108 () Bool)

(assert (=> d!310108 (forall!2389 (++!2867 (++!2867 lt!370381 lt!370377) (list!3788 (sortObjectsByID!0 lt!370369))) lambda!42929)))

(declare-fun lt!370789 () Unit!16127)

(assert (=> d!310108 (= lt!370789 (choose!7079 (++!2867 lt!370381 lt!370377) (list!3788 (sortObjectsByID!0 lt!370369)) lambda!42929))))

(assert (=> d!310108 (forall!2389 (++!2867 lt!370381 lt!370377) lambda!42929)))

(assert (=> d!310108 (= (lemmaConcatPreservesForall!92 (++!2867 lt!370381 lt!370377) (list!3788 (sortObjectsByID!0 lt!370369)) lambda!42929) lt!370789)))

(declare-fun bs!259148 () Bool)

(assert (= bs!259148 d!310108))

(assert (=> bs!259148 m!1252437))

(assert (=> bs!259148 m!1252439))

(declare-fun m!1253269 () Bool)

(assert (=> bs!259148 m!1253269))

(assert (=> bs!259148 m!1253269))

(declare-fun m!1253271 () Bool)

(assert (=> bs!259148 m!1253271))

(assert (=> bs!259148 m!1252437))

(assert (=> bs!259148 m!1252439))

(declare-fun m!1253273 () Bool)

(assert (=> bs!259148 m!1253273))

(assert (=> bs!259148 m!1252437))

(assert (=> bs!259148 m!1252693))

(assert (=> b!1097019 d!310108))

(declare-fun d!310110 () Bool)

(declare-fun e!694815 () Bool)

(assert (=> d!310110 e!694815))

(declare-fun res!487138 () Bool)

(assert (=> d!310110 (=> (not res!487138) (not e!694815))))

(assert (=> d!310110 (= res!487138 (isBalanced!896 (filter!293 (c!186173 objs!8) lambda!42932)))))

(declare-fun lt!370790 () BalanceConc!6496)

(assert (=> d!310110 (= lt!370790 (BalanceConc!6497 (filter!293 (c!186173 objs!8) lambda!42932)))))

(assert (=> d!310110 (= (filter!290 objs!8 lambda!42932) lt!370790)))

(declare-fun b!1097379 () Bool)

(assert (=> b!1097379 (= e!694815 (= (list!3788 lt!370790) (filter!291 (list!3788 objs!8) lambda!42932)))))

(assert (= (and d!310110 res!487138) b!1097379))

(declare-fun m!1253275 () Bool)

(assert (=> d!310110 m!1253275))

(assert (=> d!310110 m!1253275))

(declare-fun m!1253277 () Bool)

(assert (=> d!310110 m!1253277))

(declare-fun m!1253279 () Bool)

(assert (=> b!1097379 m!1253279))

(assert (=> b!1097379 m!1252413))

(assert (=> b!1097379 m!1252413))

(declare-fun m!1253281 () Bool)

(assert (=> b!1097379 m!1253281))

(assert (=> b!1097019 d!310110))

(declare-fun d!310112 () Bool)

(assert (=> d!310112 (= (list!3788 lt!370386) (list!3790 (c!186173 lt!370386)))))

(declare-fun bs!259149 () Bool)

(assert (= bs!259149 d!310112))

(declare-fun m!1253283 () Bool)

(assert (=> bs!259149 m!1253283))

(assert (=> b!1097019 d!310112))

(declare-fun d!310114 () Bool)

(assert (=> d!310114 (subseq!152 (filter!291 lt!370365 lambda!42930) lt!370365)))

(declare-fun lt!370791 () Unit!16127)

(assert (=> d!310114 (= lt!370791 (choose!7075 lt!370365 lambda!42930))))

(assert (=> d!310114 (= (filterSubseq!41 lt!370365 lambda!42930) lt!370791)))

(declare-fun bs!259150 () Bool)

(assert (= bs!259150 d!310114))

(assert (=> bs!259150 m!1252499))

(assert (=> bs!259150 m!1252499))

(declare-fun m!1253285 () Bool)

(assert (=> bs!259150 m!1253285))

(declare-fun m!1253287 () Bool)

(assert (=> bs!259150 m!1253287))

(assert (=> b!1097019 d!310114))

(declare-fun d!310116 () Bool)

(declare-fun e!694816 () Bool)

(assert (=> d!310116 e!694816))

(declare-fun res!487139 () Bool)

(assert (=> d!310116 (=> (not res!487139) (not e!694816))))

(assert (=> d!310116 (= res!487139 (isBalanced!896 (filter!293 (c!186173 objs!8) lambda!42931)))))

(declare-fun lt!370792 () BalanceConc!6496)

(assert (=> d!310116 (= lt!370792 (BalanceConc!6497 (filter!293 (c!186173 objs!8) lambda!42931)))))

(assert (=> d!310116 (= (filter!290 objs!8 lambda!42931) lt!370792)))

(declare-fun b!1097380 () Bool)

(assert (=> b!1097380 (= e!694816 (= (list!3788 lt!370792) (filter!291 (list!3788 objs!8) lambda!42931)))))

(assert (= (and d!310116 res!487139) b!1097380))

(declare-fun m!1253289 () Bool)

(assert (=> d!310116 m!1253289))

(assert (=> d!310116 m!1253289))

(declare-fun m!1253291 () Bool)

(assert (=> d!310116 m!1253291))

(declare-fun m!1253293 () Bool)

(assert (=> b!1097380 m!1253293))

(assert (=> b!1097380 m!1252413))

(assert (=> b!1097380 m!1252413))

(declare-fun m!1253295 () Bool)

(assert (=> b!1097380 m!1253295))

(assert (=> b!1097019 d!310116))

(declare-fun d!310118 () Bool)

(declare-fun lt!370793 () Bool)

(assert (=> d!310118 (= lt!370793 (forall!2389 (list!3788 objs!8) lambda!42929))))

(assert (=> d!310118 (= lt!370793 (forall!2390 (c!186173 objs!8) lambda!42929))))

(assert (=> d!310118 (= (forall!2388 objs!8 lambda!42929) lt!370793)))

(declare-fun bs!259151 () Bool)

(assert (= bs!259151 d!310118))

(assert (=> bs!259151 m!1252413))

(assert (=> bs!259151 m!1252413))

(declare-fun m!1253297 () Bool)

(assert (=> bs!259151 m!1253297))

(declare-fun m!1253299 () Bool)

(assert (=> bs!259151 m!1253299))

(assert (=> start!94026 d!310118))

(declare-fun d!310120 () Bool)

(assert (=> d!310120 (= (inv!13519 objs!8) (isBalanced!896 (c!186173 objs!8)))))

(declare-fun bs!259152 () Bool)

(assert (= bs!259152 d!310120))

(declare-fun m!1253301 () Bool)

(assert (=> bs!259152 m!1253301))

(assert (=> start!94026 d!310120))

(declare-fun d!310122 () Bool)

(declare-fun lt!370796 () tuple2!11734)

(declare-fun apply!2092 (List!10562 Int) tuple2!11734)

(assert (=> d!310122 (= lt!370796 (apply!2092 (list!3788 objs!8) (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2)))))))

(declare-fun apply!2093 (Conc!3241 Int) tuple2!11734)

(assert (=> d!310122 (= lt!370796 (apply!2093 (c!186173 objs!8) (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2)))))))

(declare-fun e!694819 () Bool)

(assert (=> d!310122 e!694819))

(declare-fun res!487142 () Bool)

(assert (=> d!310122 (=> (not res!487142) (not e!694819))))

(assert (=> d!310122 (= res!487142 (<= 0 (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2)))))))

(assert (=> d!310122 (= (apply!2089 objs!8 (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2)))) lt!370796)))

(declare-fun b!1097383 () Bool)

(assert (=> b!1097383 (= e!694819 (< (ite (>= lt!370360 0) (div lt!370360 2) (- (div (- lt!370360) 2))) (size!8167 objs!8)))))

(assert (= (and d!310122 res!487142) b!1097383))

(assert (=> d!310122 m!1252413))

(assert (=> d!310122 m!1252413))

(declare-fun m!1253303 () Bool)

(assert (=> d!310122 m!1253303))

(declare-fun m!1253305 () Bool)

(assert (=> d!310122 m!1253305))

(assert (=> b!1097383 m!1252481))

(assert (=> b!1097018 d!310122))

(assert (=> b!1097018 d!310110))

(assert (=> b!1097018 d!310116))

(declare-fun d!310124 () Bool)

(declare-fun lt!370797 () Bool)

(assert (=> d!310124 (= lt!370797 (contains!1815 (list!3788 objs!8) lt!370373))))

(assert (=> d!310124 (= lt!370797 (contains!1816 (c!186173 objs!8) lt!370373))))

(assert (=> d!310124 (= (contains!1812 objs!8 lt!370373) lt!370797)))

(declare-fun bs!259153 () Bool)

(assert (= bs!259153 d!310124))

(assert (=> bs!259153 m!1252413))

(assert (=> bs!259153 m!1252413))

(declare-fun m!1253307 () Bool)

(assert (=> bs!259153 m!1253307))

(declare-fun m!1253309 () Bool)

(assert (=> bs!259153 m!1253309))

(assert (=> b!1097018 d!310124))

(assert (=> b!1097018 d!310014))

(declare-fun d!310126 () Bool)

(assert (=> d!310126 (dynLambda!4622 lambda!42930 lt!370373)))

(declare-fun lt!370798 () Unit!16127)

(assert (=> d!310126 (= lt!370798 (choose!7074 (list!3788 objs!8) lambda!42930 lt!370373))))

(declare-fun e!694820 () Bool)

(assert (=> d!310126 e!694820))

(declare-fun res!487143 () Bool)

(assert (=> d!310126 (=> (not res!487143) (not e!694820))))

(assert (=> d!310126 (= res!487143 (forall!2389 (list!3788 objs!8) lambda!42930))))

(assert (=> d!310126 (= (forallContained!506 (list!3788 objs!8) lambda!42930 lt!370373) lt!370798)))

(declare-fun b!1097384 () Bool)

(assert (=> b!1097384 (= e!694820 (contains!1815 (list!3788 objs!8) lt!370373))))

(assert (= (and d!310126 res!487143) b!1097384))

(declare-fun b_lambda!31747 () Bool)

(assert (=> (not b_lambda!31747) (not d!310126)))

(assert (=> d!310126 m!1252611))

(assert (=> d!310126 m!1252413))

(declare-fun m!1253311 () Bool)

(assert (=> d!310126 m!1253311))

(assert (=> d!310126 m!1252413))

(assert (=> d!310126 m!1252629))

(assert (=> b!1097384 m!1252413))

(assert (=> b!1097384 m!1253307))

(assert (=> b!1097029 d!310126))

(assert (=> b!1097029 d!309982))

(declare-fun d!310128 () Bool)

(declare-fun lt!370799 () Int)

(assert (=> d!310128 (>= lt!370799 0)))

(declare-fun e!694821 () Int)

(assert (=> d!310128 (= lt!370799 e!694821)))

(declare-fun c!186254 () Bool)

(assert (=> d!310128 (= c!186254 ((_ is Nil!10546) (filter!291 lt!370365 lambda!42930)))))

(assert (=> d!310128 (= (size!8168 (filter!291 lt!370365 lambda!42930)) lt!370799)))

(declare-fun b!1097385 () Bool)

(assert (=> b!1097385 (= e!694821 0)))

(declare-fun b!1097386 () Bool)

(assert (=> b!1097386 (= e!694821 (+ 1 (size!8168 (t!103524 (filter!291 lt!370365 lambda!42930)))))))

(assert (= (and d!310128 c!186254) b!1097385))

(assert (= (and d!310128 (not c!186254)) b!1097386))

(declare-fun m!1253313 () Bool)

(assert (=> b!1097386 m!1253313))

(assert (=> b!1097028 d!310128))

(declare-fun b!1097387 () Bool)

(declare-fun e!694823 () List!10562)

(assert (=> b!1097387 (= e!694823 Nil!10546)))

(declare-fun b!1097388 () Bool)

(declare-fun res!487144 () Bool)

(declare-fun e!694822 () Bool)

(assert (=> b!1097388 (=> (not res!487144) (not e!694822))))

(declare-fun lt!370800 () List!10562)

(assert (=> b!1097388 (= res!487144 (= ((_ map implies) (content!1524 lt!370800) (content!1524 lt!370365)) ((as const (InoxSet tuple2!11734)) true)))))

(declare-fun b!1097389 () Bool)

(assert (=> b!1097389 (= e!694822 (forall!2389 lt!370800 lambda!42930))))

(declare-fun d!310130 () Bool)

(assert (=> d!310130 e!694822))

(declare-fun res!487145 () Bool)

(assert (=> d!310130 (=> (not res!487145) (not e!694822))))

(assert (=> d!310130 (= res!487145 (<= (size!8168 lt!370800) (size!8168 lt!370365)))))

(assert (=> d!310130 (= lt!370800 e!694823)))

(declare-fun c!186255 () Bool)

(assert (=> d!310130 (= c!186255 ((_ is Nil!10546) lt!370365))))

(assert (=> d!310130 (= (filter!291 lt!370365 lambda!42930) lt!370800)))

(declare-fun b!1097390 () Bool)

(declare-fun e!694824 () List!10562)

(declare-fun call!80362 () List!10562)

(assert (=> b!1097390 (= e!694824 call!80362)))

(declare-fun bm!80357 () Bool)

(assert (=> bm!80357 (= call!80362 (filter!291 (t!103524 lt!370365) lambda!42930))))

(declare-fun b!1097391 () Bool)

(assert (=> b!1097391 (= e!694823 e!694824)))

(declare-fun c!186256 () Bool)

(assert (=> b!1097391 (= c!186256 (dynLambda!4622 lambda!42930 (h!15947 lt!370365)))))

(declare-fun b!1097392 () Bool)

(assert (=> b!1097392 (= e!694824 (Cons!10546 (h!15947 lt!370365) call!80362))))

(assert (= (and d!310130 c!186255) b!1097387))

(assert (= (and d!310130 (not c!186255)) b!1097391))

(assert (= (and b!1097391 c!186256) b!1097392))

(assert (= (and b!1097391 (not c!186256)) b!1097390))

(assert (= (or b!1097392 b!1097390) bm!80357))

(assert (= (and d!310130 res!487145) b!1097388))

(assert (= (and b!1097388 res!487144) b!1097389))

(declare-fun b_lambda!31749 () Bool)

(assert (=> (not b_lambda!31749) (not b!1097391)))

(declare-fun m!1253315 () Bool)

(assert (=> d!310130 m!1253315))

(assert (=> d!310130 m!1252489))

(declare-fun m!1253317 () Bool)

(assert (=> b!1097391 m!1253317))

(declare-fun m!1253319 () Bool)

(assert (=> bm!80357 m!1253319))

(declare-fun m!1253321 () Bool)

(assert (=> b!1097389 m!1253321))

(declare-fun m!1253323 () Bool)

(assert (=> b!1097388 m!1253323))

(assert (=> b!1097388 m!1252587))

(assert (=> b!1097028 d!310130))

(assert (=> b!1097028 d!309958))

(declare-fun d!310132 () Bool)

(assert (=> d!310132 (dynLambda!4622 lambda!42932 lt!370373)))

(declare-fun lt!370801 () Unit!16127)

(assert (=> d!310132 (= lt!370801 (choose!7074 lt!370365 lambda!42932 lt!370373))))

(declare-fun e!694825 () Bool)

(assert (=> d!310132 e!694825))

(declare-fun res!487146 () Bool)

(assert (=> d!310132 (=> (not res!487146) (not e!694825))))

(assert (=> d!310132 (= res!487146 (forall!2389 lt!370365 lambda!42932))))

(assert (=> d!310132 (= (forallContained!506 lt!370365 lambda!42932 lt!370373) lt!370801)))

(declare-fun b!1097393 () Bool)

(assert (=> b!1097393 (= e!694825 (contains!1815 lt!370365 lt!370373))))

(assert (= (and d!310132 res!487146) b!1097393))

(declare-fun b_lambda!31751 () Bool)

(assert (=> (not b_lambda!31751) (not d!310132)))

(assert (=> d!310132 m!1252603))

(declare-fun m!1253325 () Bool)

(assert (=> d!310132 m!1253325))

(assert (=> d!310132 m!1252597))

(declare-fun m!1253327 () Bool)

(assert (=> b!1097393 m!1253327))

(assert (=> b!1097033 d!310132))

(declare-fun d!310134 () Bool)

(declare-fun c!186259 () Bool)

(assert (=> d!310134 (= c!186259 ((_ is Node!3241) (c!186173 objs!8)))))

(declare-fun e!694830 () Bool)

(assert (=> d!310134 (= (inv!13520 (c!186173 objs!8)) e!694830)))

(declare-fun b!1097400 () Bool)

(declare-fun inv!13524 (Conc!3241) Bool)

(assert (=> b!1097400 (= e!694830 (inv!13524 (c!186173 objs!8)))))

(declare-fun b!1097401 () Bool)

(declare-fun e!694831 () Bool)

(assert (=> b!1097401 (= e!694830 e!694831)))

(declare-fun res!487149 () Bool)

(assert (=> b!1097401 (= res!487149 (not ((_ is Leaf!5149) (c!186173 objs!8))))))

(assert (=> b!1097401 (=> res!487149 e!694831)))

(declare-fun b!1097402 () Bool)

(declare-fun inv!13525 (Conc!3241) Bool)

(assert (=> b!1097402 (= e!694831 (inv!13525 (c!186173 objs!8)))))

(assert (= (and d!310134 c!186259) b!1097400))

(assert (= (and d!310134 (not c!186259)) b!1097401))

(assert (= (and b!1097401 (not res!487149)) b!1097402))

(declare-fun m!1253329 () Bool)

(assert (=> b!1097400 m!1253329))

(declare-fun m!1253331 () Bool)

(assert (=> b!1097402 m!1253331))

(assert (=> b!1097032 d!310134))

(declare-fun d!310136 () Bool)

(declare-fun lt!370802 () Int)

(assert (=> d!310136 (= lt!370802 (size!8168 (list!3788 objs!8)))))

(assert (=> d!310136 (= lt!370802 (size!8169 (c!186173 objs!8)))))

(assert (=> d!310136 (= (size!8167 objs!8) lt!370802)))

(declare-fun bs!259154 () Bool)

(assert (= bs!259154 d!310136))

(assert (=> bs!259154 m!1252413))

(assert (=> bs!259154 m!1252413))

(declare-fun m!1253333 () Bool)

(assert (=> bs!259154 m!1253333))

(declare-fun m!1253335 () Bool)

(assert (=> bs!259154 m!1253335))

(assert (=> b!1097021 d!310136))

(declare-fun d!310138 () Bool)

(declare-fun lt!370803 () Bool)

(assert (=> d!310138 (= lt!370803 (contains!1815 (list!3788 lt!370378) lt!370373))))

(assert (=> d!310138 (= lt!370803 (contains!1816 (c!186173 lt!370378) lt!370373))))

(assert (=> d!310138 (= (contains!1812 lt!370378 lt!370373) lt!370803)))

(declare-fun bs!259155 () Bool)

(assert (= bs!259155 d!310138))

(assert (=> bs!259155 m!1252431))

(assert (=> bs!259155 m!1252431))

(assert (=> bs!259155 m!1252617))

(declare-fun m!1253337 () Bool)

(assert (=> bs!259155 m!1253337))

(assert (=> b!1097020 d!310138))

(declare-fun b!1097411 () Bool)

(declare-fun e!694836 () Bool)

(assert (=> b!1097411 (= e!694836 true)))

(declare-fun b!1097413 () Bool)

(declare-fun e!694837 () Bool)

(assert (=> b!1097413 (= e!694837 true)))

(declare-fun b!1097412 () Bool)

(assert (=> b!1097412 (= e!694836 e!694837)))

(assert (=> b!1097047 e!694836))

(assert (= (and b!1097047 ((_ is Node!3240) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097411))

(assert (= b!1097412 b!1097413))

(assert (= (and b!1097047 ((_ is Leaf!5148) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097412))

(declare-fun b!1097414 () Bool)

(declare-fun e!694838 () Bool)

(assert (=> b!1097414 (= e!694838 true)))

(declare-fun b!1097416 () Bool)

(declare-fun e!694839 () Bool)

(assert (=> b!1097416 (= e!694839 true)))

(declare-fun b!1097415 () Bool)

(assert (=> b!1097415 (= e!694838 e!694839)))

(assert (=> b!1097043 e!694838))

(assert (= (and b!1097043 ((_ is Node!3240) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097414))

(assert (= b!1097415 b!1097416))

(assert (= (and b!1097043 ((_ is Leaf!5148) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097415))

(declare-fun b!1097427 () Bool)

(declare-fun e!694848 () Bool)

(assert (=> b!1097427 (= e!694848 true)))

(declare-fun b!1097426 () Bool)

(declare-fun e!694847 () Bool)

(assert (=> b!1097426 (= e!694847 e!694848)))

(declare-fun b!1097425 () Bool)

(declare-fun e!694846 () Bool)

(assert (=> b!1097425 (= e!694846 e!694847)))

(assert (=> b!1097042 e!694846))

(assert (= b!1097426 b!1097427))

(assert (= b!1097425 b!1097426))

(assert (= (and b!1097042 ((_ is Cons!10545) (rules!9091 (_2!6693 lt!370373)))) b!1097425))

(declare-fun order!6377 () Int)

(declare-fun order!6375 () Int)

(declare-fun dynLambda!4626 (Int Int) Int)

(declare-fun dynLambda!4627 (Int Int) Int)

(assert (=> b!1097427 (< (dynLambda!4626 order!6375 (toValue!2881 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42930))))

(declare-fun order!6379 () Int)

(declare-fun dynLambda!4628 (Int Int) Int)

(assert (=> b!1097427 (< (dynLambda!4628 order!6379 (toChars!2740 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42930))))

(declare-fun b!1097430 () Bool)

(declare-fun e!694851 () Bool)

(assert (=> b!1097430 (= e!694851 true)))

(declare-fun b!1097429 () Bool)

(declare-fun e!694850 () Bool)

(assert (=> b!1097429 (= e!694850 e!694851)))

(declare-fun b!1097428 () Bool)

(declare-fun e!694849 () Bool)

(assert (=> b!1097428 (= e!694849 e!694850)))

(assert (=> b!1097046 e!694849))

(assert (= b!1097429 b!1097430))

(assert (= b!1097428 b!1097429))

(assert (= (and b!1097046 ((_ is Cons!10545) (rules!9091 (_2!6693 lt!370373)))) b!1097428))

(assert (=> b!1097430 (< (dynLambda!4626 order!6375 (toValue!2881 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42932))))

(assert (=> b!1097430 (< (dynLambda!4628 order!6379 (toChars!2740 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42932))))

(declare-fun b!1097431 () Bool)

(declare-fun e!694852 () Bool)

(assert (=> b!1097431 (= e!694852 true)))

(declare-fun b!1097433 () Bool)

(declare-fun e!694853 () Bool)

(assert (=> b!1097433 (= e!694853 true)))

(declare-fun b!1097432 () Bool)

(assert (=> b!1097432 (= e!694852 e!694853)))

(assert (=> b!1097045 e!694852))

(assert (= (and b!1097045 ((_ is Node!3240) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097431))

(assert (= b!1097432 b!1097433))

(assert (= (and b!1097045 ((_ is Leaf!5148) (c!186172 (tokens!1363 (_2!6693 lt!370373))))) b!1097432))

(declare-fun tp!326713 () Bool)

(declare-fun tp!326712 () Bool)

(declare-fun e!694858 () Bool)

(declare-fun b!1097442 () Bool)

(assert (=> b!1097442 (= e!694858 (and (inv!13520 (left!9082 (c!186173 objs!8))) tp!326713 (inv!13520 (right!9412 (c!186173 objs!8))) tp!326712))))

(declare-fun b!1097444 () Bool)

(declare-fun e!694859 () Bool)

(declare-fun tp!326714 () Bool)

(assert (=> b!1097444 (= e!694859 tp!326714)))

(declare-fun b!1097443 () Bool)

(declare-fun inv!13526 (IArray!6487) Bool)

(assert (=> b!1097443 (= e!694858 (and (inv!13526 (xs!5934 (c!186173 objs!8))) e!694859))))

(assert (=> b!1097032 (= tp!326696 (and (inv!13520 (c!186173 objs!8)) e!694858))))

(assert (= (and b!1097032 ((_ is Node!3241) (c!186173 objs!8))) b!1097442))

(assert (= b!1097443 b!1097444))

(assert (= (and b!1097032 ((_ is Leaf!5149) (c!186173 objs!8))) b!1097443))

(declare-fun m!1253339 () Bool)

(assert (=> b!1097442 m!1253339))

(declare-fun m!1253341 () Bool)

(assert (=> b!1097442 m!1253341))

(declare-fun m!1253343 () Bool)

(assert (=> b!1097443 m!1253343))

(assert (=> b!1097032 m!1252491))

(declare-fun b!1097447 () Bool)

(declare-fun e!694862 () Bool)

(assert (=> b!1097447 (= e!694862 true)))

(declare-fun b!1097446 () Bool)

(declare-fun e!694861 () Bool)

(assert (=> b!1097446 (= e!694861 e!694862)))

(declare-fun b!1097445 () Bool)

(declare-fun e!694860 () Bool)

(assert (=> b!1097445 (= e!694860 e!694861)))

(assert (=> b!1097044 e!694860))

(assert (= b!1097446 b!1097447))

(assert (= b!1097445 b!1097446))

(assert (= (and b!1097044 ((_ is Cons!10545) (rules!9091 (_2!6693 lt!370373)))) b!1097445))

(assert (=> b!1097447 (< (dynLambda!4626 order!6375 (toValue!2881 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42931))))

(assert (=> b!1097447 (< (dynLambda!4628 order!6379 (toChars!2740 (transformation!1804 (h!15946 (rules!9091 (_2!6693 lt!370373)))))) (dynLambda!4627 order!6377 lambda!42931))))

(declare-fun b_lambda!31753 () Bool)

(assert (= b_lambda!31713 (or start!94026 b_lambda!31753)))

(declare-fun bs!259156 () Bool)

(declare-fun d!310140 () Bool)

(assert (= bs!259156 (and d!310140 start!94026)))

(declare-fun usesJsonRules!0 (PrintableTokens!324) Bool)

(assert (=> bs!259156 (= (dynLambda!4622 lambda!42929 (h!15947 lt!370364)) (usesJsonRules!0 (_2!6693 (h!15947 lt!370364))))))

(declare-fun m!1253345 () Bool)

(assert (=> bs!259156 m!1253345))

(assert (=> b!1097118 d!310140))

(declare-fun b_lambda!31755 () Bool)

(assert (= b_lambda!31751 (or b!1097018 b_lambda!31755)))

(declare-fun bs!259157 () Bool)

(declare-fun d!310142 () Bool)

(assert (= bs!259157 (and d!310142 b!1097018)))

(assert (=> bs!259157 (= (dynLambda!4622 lambda!42932 lt!370373) (> (_1!6693 lt!370373) (_1!6693 lt!370373)))))

(assert (=> d!310132 d!310142))

(declare-fun b_lambda!31757 () Bool)

(assert (= b_lambda!31709 (or start!94026 b_lambda!31757)))

(declare-fun bs!259158 () Bool)

(declare-fun d!310144 () Bool)

(assert (= bs!259158 (and d!310144 start!94026)))

(assert (=> bs!259158 (= (dynLambda!4622 lambda!42929 (h!15947 lt!370384)) (usesJsonRules!0 (_2!6693 (h!15947 lt!370384))))))

(declare-fun m!1253347 () Bool)

(assert (=> bs!259158 m!1253347))

(assert (=> b!1097102 d!310144))

(declare-fun b_lambda!31759 () Bool)

(assert (= b_lambda!31707 (or b!1097018 b_lambda!31759)))

(declare-fun bs!259159 () Bool)

(declare-fun d!310146 () Bool)

(assert (= bs!259159 (and d!310146 b!1097018)))

(assert (=> bs!259159 (= (dynLambda!4622 lambda!42930 lt!370373) (< (_1!6693 lt!370373) (_1!6693 lt!370373)))))

(assert (=> d!309970 d!310146))

(declare-fun b_lambda!31761 () Bool)

(assert (= b_lambda!31711 (or start!94026 b_lambda!31761)))

(declare-fun bs!259160 () Bool)

(declare-fun d!310148 () Bool)

(assert (= bs!259160 (and d!310148 start!94026)))

(assert (=> bs!259160 (= (dynLambda!4622 lambda!42929 (h!15947 lt!370374)) (usesJsonRules!0 (_2!6693 (h!15947 lt!370374))))))

(declare-fun m!1253349 () Bool)

(assert (=> bs!259160 m!1253349))

(assert (=> b!1097104 d!310148))

(declare-fun b_lambda!31763 () Bool)

(assert (= b_lambda!31703 (or b!1097018 b_lambda!31763)))

(declare-fun bs!259161 () Bool)

(declare-fun d!310150 () Bool)

(assert (= bs!259161 (and d!310150 b!1097018)))

(assert (=> bs!259161 (= (dynLambda!4622 lambda!42932 (h!15947 lt!370365)) (> (_1!6693 (h!15947 lt!370365)) (_1!6693 lt!370373)))))

(assert (=> b!1097086 d!310150))

(declare-fun b_lambda!31765 () Bool)

(assert (= b_lambda!31705 (or b!1097018 b_lambda!31765)))

(assert (=> d!309966 d!310142))

(declare-fun b_lambda!31767 () Bool)

(assert (= b_lambda!31747 (or b!1097018 b_lambda!31767)))

(assert (=> d!310126 d!310146))

(declare-fun b_lambda!31769 () Bool)

(assert (= b_lambda!31749 (or b!1097018 b_lambda!31769)))

(declare-fun bs!259162 () Bool)

(declare-fun d!310152 () Bool)

(assert (= bs!259162 (and d!310152 b!1097018)))

(assert (=> bs!259162 (= (dynLambda!4622 lambda!42930 (h!15947 lt!370365)) (< (_1!6693 (h!15947 lt!370365)) (_1!6693 lt!370373)))))

(assert (=> b!1097391 d!310152))

(check-sat (not b!1097032) (not d!309988) (not b!1097388) (not b!1097096) (not b_lambda!31765) (not b!1097428) (not b_lambda!31759) (not b_lambda!31769) (not d!310122) (not d!310126) (not b!1097103) (not d!310004) (not d!309962) (not d!310120) (not b!1097359) (not b_lambda!31767) (not b!1097340) (not b!1097089) (not b!1097092) (not b!1097444) (not d!310000) (not d!310016) (not bs!259158) (not d!310118) (not b!1097347) (not b!1097114) (not b!1097376) (not d!310136) (not b!1097083) (not d!310014) (not b!1097358) (not d!309998) (not b_lambda!31753) (not b_lambda!31763) (not b!1097374) (not b!1097119) (not d!310102) (not b!1097402) (not d!309966) (not b!1097413) (not b!1097115) (not b!1097122) (not b!1097442) (not d!309980) (not b!1097117) (not d!309970) (not b!1097371) (not d!310104) (not b!1097386) (not d!309968) (not b!1097339) (not d!310116) (not b!1097097) (not b!1097341) (not b!1097368) (not d!310010) (not b!1097431) (not d!309972) (not b!1097366) (not d!309982) (not b!1097411) (not d!310106) (not b!1097377) (not d!309952) (not d!309974) (not d!310002) (not b!1097443) (not d!309996) (not bm!80352) (not b!1097384) (not d!309992) (not b!1097095) (not b!1097343) (not d!310132) (not b!1097334) (not d!310124) (not b!1097375) (not b!1097338) (not b!1097373) (not d!309976) (not b!1097433) (not d!309960) (not b!1097379) (not d!310110) (not b!1097345) (not d!310130) (not b!1097367) (not b_lambda!31755) (not b!1097069) (not b!1097348) (not b_lambda!31757) (not bs!259160) (not b_lambda!31761) (not d!309994) (not b!1097344) (not d!310006) (not b!1097400) (not b!1097346) (not b!1097416) (not b!1097116) (not b!1097084) (not b!1097105) (not b!1097389) (not b!1097337) (not bm!80357) (not b!1097369) (not d!310112) (not d!309956) (not b!1097393) (not bs!259156) (not b!1097336) (not b!1097445) (not b!1097414) (not b!1097425) (not d!309964) (not d!309984) (not b!1097383) (not b!1097364) (not b!1097378) (not d!310138) (not b!1097380) (not d!310114) (not d!310108) (not d!310012) (not b!1097370))
(check-sat)
