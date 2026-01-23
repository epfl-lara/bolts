; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94896 () Bool)

(assert start!94896)

(declare-fun bs!259569 () Bool)

(declare-fun b!1102334 () Bool)

(assert (= bs!259569 (and b!1102334 start!94896)))

(declare-fun lambda!43550 () Int)

(declare-fun lambda!43549 () Int)

(assert (=> bs!259569 (not (= lambda!43550 lambda!43549))))

(declare-fun b!1102355 () Bool)

(declare-fun e!698268 () Bool)

(assert (=> b!1102355 (= e!698268 true)))

(declare-fun b!1102354 () Bool)

(declare-fun e!698267 () Bool)

(assert (=> b!1102354 (= e!698267 e!698268)))

(assert (=> b!1102334 e!698267))

(assert (= b!1102354 b!1102355))

(assert (= b!1102334 b!1102354))

(declare-fun lambda!43551 () Int)

(assert (=> bs!259569 (not (= lambda!43551 lambda!43549))))

(assert (=> b!1102334 (not (= lambda!43551 lambda!43550))))

(declare-fun b!1102357 () Bool)

(declare-fun e!698270 () Bool)

(assert (=> b!1102357 (= e!698270 true)))

(declare-fun b!1102356 () Bool)

(declare-fun e!698269 () Bool)

(assert (=> b!1102356 (= e!698269 e!698270)))

(assert (=> b!1102334 e!698269))

(assert (= b!1102356 b!1102357))

(assert (= b!1102334 b!1102356))

(declare-fun lambda!43552 () Int)

(assert (=> bs!259569 (not (= lambda!43552 lambda!43549))))

(assert (=> b!1102334 (not (= lambda!43552 lambda!43550))))

(assert (=> b!1102334 (not (= lambda!43552 lambda!43551))))

(declare-fun b!1102359 () Bool)

(declare-fun e!698272 () Bool)

(assert (=> b!1102359 (= e!698272 true)))

(declare-fun b!1102358 () Bool)

(declare-fun e!698271 () Bool)

(assert (=> b!1102358 (= e!698271 e!698272)))

(assert (=> b!1102334 e!698271))

(assert (= b!1102358 b!1102359))

(assert (= b!1102334 b!1102358))

(declare-fun b!1102330 () Bool)

(declare-datatypes ((Unit!16267 0))(
  ( (Unit!16268) )
))
(declare-fun e!698257 () Unit!16267)

(declare-fun err!2705 () Unit!16267)

(assert (=> b!1102330 (= e!698257 err!2705)))

(declare-datatypes ((List!10675 0))(
  ( (Nil!10659) (Cons!10659 (h!16060 (_ BitVec 16)) (t!104185 List!10675)) )
))
(declare-datatypes ((TokenValue!1899 0))(
  ( (FloatLiteralValue!3798 (text!13738 List!10675)) (TokenValueExt!1898 (__x!7481 Int)) (Broken!9495 (value!60169 List!10675)) (Object!1914) (End!1899) (Def!1899) (Underscore!1899) (Match!1899) (Else!1899) (Error!1899) (Case!1899) (If!1899) (Extends!1899) (Abstract!1899) (Class!1899) (Val!1899) (DelimiterValue!3798 (del!1959 List!10675)) (KeywordValue!1905 (value!60170 List!10675)) (CommentValue!3798 (value!60171 List!10675)) (WhitespaceValue!3798 (value!60172 List!10675)) (IndentationValue!1899 (value!60173 List!10675)) (String!13066) (Int32!1899) (Broken!9496 (value!60174 List!10675)) (Boolean!1900) (Unit!16269) (OperatorValue!1902 (op!1959 List!10675)) (IdentifierValue!3798 (value!60175 List!10675)) (IdentifierValue!3799 (value!60176 List!10675)) (WhitespaceValue!3799 (value!60177 List!10675)) (True!3798) (False!3798) (Broken!9497 (value!60178 List!10675)) (Broken!9498 (value!60179 List!10675)) (True!3799) (RightBrace!1899) (RightBracket!1899) (Colon!1899) (Null!1899) (Comma!1899) (LeftBracket!1899) (False!3799) (LeftBrace!1899) (ImaginaryLiteralValue!1899 (text!13739 List!10675)) (StringLiteralValue!5697 (value!60180 List!10675)) (EOFValue!1899 (value!60181 List!10675)) (IdentValue!1899 (value!60182 List!10675)) (DelimiterValue!3799 (value!60183 List!10675)) (DedentValue!1899 (value!60184 List!10675)) (NewLineValue!1899 (value!60185 List!10675)) (IntegerValue!5697 (value!60186 (_ BitVec 32)) (text!13740 List!10675)) (IntegerValue!5698 (value!60187 Int) (text!13741 List!10675)) (Times!1899) (Or!1899) (Equal!1899) (Minus!1899) (Broken!9499 (value!60188 List!10675)) (And!1899) (Div!1899) (LessEqual!1899) (Mod!1899) (Concat!5001) (Not!1899) (Plus!1899) (SpaceValue!1899 (value!60189 List!10675)) (IntegerValue!5699 (value!60190 Int) (text!13742 List!10675)) (StringLiteralValue!5698 (text!13743 List!10675)) (FloatLiteralValue!3799 (text!13744 List!10675)) (BytesLiteralValue!1899 (value!60191 List!10675)) (CommentValue!3799 (value!60192 List!10675)) (StringLiteralValue!5699 (value!60193 List!10675)) (ErrorTokenValue!1899 (msg!1960 List!10675)) )
))
(declare-datatypes ((Regex!3102 0))(
  ( (ElementMatch!3102 (c!187116 (_ BitVec 16))) (Concat!5002 (regOne!6716 Regex!3102) (regTwo!6716 Regex!3102)) (EmptyExpr!3102) (Star!3102 (reg!3431 Regex!3102)) (EmptyLang!3102) (Union!3102 (regOne!6717 Regex!3102) (regTwo!6717 Regex!3102)) )
))
(declare-datatypes ((String!13067 0))(
  ( (String!13068 (value!60194 String)) )
))
(declare-datatypes ((IArray!6657 0))(
  ( (IArray!6658 (innerList!3386 List!10675)) )
))
(declare-datatypes ((Conc!3326 0))(
  ( (Node!3326 (left!9228 Conc!3326) (right!9558 Conc!3326) (csize!6882 Int) (cheight!3537 Int)) (Leaf!5249 (xs!6019 IArray!6657) (csize!6883 Int)) (Empty!3326) )
))
(declare-datatypes ((BalanceConc!6666 0))(
  ( (BalanceConc!6667 (c!187117 Conc!3326)) )
))
(declare-datatypes ((TokenValueInjection!3498 0))(
  ( (TokenValueInjection!3499 (toValue!2910 Int) (toChars!2769 Int)) )
))
(declare-datatypes ((Rule!3466 0))(
  ( (Rule!3467 (regex!1833 Regex!3102) (tag!2095 String!13067) (isSeparator!1833 Bool) (transformation!1833 TokenValueInjection!3498)) )
))
(declare-datatypes ((Token!3332 0))(
  ( (Token!3333 (value!60195 TokenValue!1899) (rule!3256 Rule!3466) (size!8279 Int) (originalCharacters!2389 List!10675)) )
))
(declare-datatypes ((List!10676 0))(
  ( (Nil!10660) (Cons!10660 (h!16061 Token!3332) (t!104186 List!10676)) )
))
(declare-datatypes ((IArray!6659 0))(
  ( (IArray!6660 (innerList!3387 List!10676)) )
))
(declare-datatypes ((Conc!3327 0))(
  ( (Node!3327 (left!9229 Conc!3327) (right!9559 Conc!3327) (csize!6884 Int) (cheight!3538 Int)) (Leaf!5250 (xs!6020 IArray!6659) (csize!6885 Int)) (Empty!3327) )
))
(declare-datatypes ((List!10677 0))(
  ( (Nil!10661) (Cons!10661 (h!16062 Rule!3466) (t!104187 List!10677)) )
))
(declare-datatypes ((BalanceConc!6668 0))(
  ( (BalanceConc!6669 (c!187118 Conc!3327)) )
))
(declare-datatypes ((PrintableTokens!382 0))(
  ( (PrintableTokens!383 (rules!9120 List!10677) (tokens!1392 BalanceConc!6668)) )
))
(declare-datatypes ((tuple2!11792 0))(
  ( (tuple2!11793 (_1!6722 Int) (_2!6722 PrintableTokens!382)) )
))
(declare-datatypes ((List!10678 0))(
  ( (Nil!10662) (Cons!10662 (h!16063 tuple2!11792) (t!104188 List!10678)) )
))
(declare-fun lt!372664 () List!10678)

(declare-fun lt!372661 () tuple2!11792)

(declare-fun lt!372673 () Unit!16267)

(declare-fun forallContained!527 (List!10678 Int tuple2!11792) Unit!16267)

(assert (=> b!1102330 (= lt!372673 (forallContained!527 lt!372664 lambda!43552 lt!372661))))

(assert (=> b!1102330 true))

(declare-fun b!1102331 () Bool)

(declare-fun e!698255 () Unit!16267)

(declare-fun err!2703 () Unit!16267)

(assert (=> b!1102331 (= e!698255 err!2703)))

(declare-fun lt!372656 () Unit!16267)

(declare-datatypes ((IArray!6661 0))(
  ( (IArray!6662 (innerList!3388 List!10678)) )
))
(declare-datatypes ((Conc!3328 0))(
  ( (Node!3328 (left!9230 Conc!3328) (right!9560 Conc!3328) (csize!6886 Int) (cheight!3539 Int)) (Leaf!5251 (xs!6021 IArray!6661) (csize!6887 Int)) (Empty!3328) )
))
(declare-datatypes ((BalanceConc!6670 0))(
  ( (BalanceConc!6671 (c!187119 Conc!3328)) )
))
(declare-fun lt!372663 () BalanceConc!6670)

(declare-fun list!3845 (BalanceConc!6670) List!10678)

(assert (=> b!1102331 (= lt!372656 (forallContained!527 (list!3845 lt!372663) lambda!43550 lt!372661))))

(assert (=> b!1102331 true))

(declare-fun b!1102332 () Bool)

(declare-fun e!698254 () Bool)

(declare-fun e!698259 () Bool)

(assert (=> b!1102332 (= e!698254 e!698259)))

(declare-fun res!488811 () Bool)

(assert (=> b!1102332 (=> res!488811 e!698259)))

(declare-fun lt!372659 () BalanceConc!6670)

(declare-fun lt!372669 () Int)

(declare-fun size!8280 (BalanceConc!6670) Int)

(assert (=> b!1102332 (= res!488811 (>= (size!8280 lt!372659) lt!372669))))

(declare-fun e!698253 () Bool)

(assert (=> b!1102332 e!698253))

(declare-fun res!488807 () Bool)

(assert (=> b!1102332 (=> res!488807 e!698253)))

(declare-fun lt!372674 () Bool)

(assert (=> b!1102332 (= res!488807 lt!372674)))

(declare-fun lt!372672 () Unit!16267)

(declare-fun lemmaNotForallFilterShorter!60 (List!10678 Int) Unit!16267)

(assert (=> b!1102332 (= lt!372672 (lemmaNotForallFilterShorter!60 lt!372664 lambda!43552))))

(declare-fun lt!372662 () Unit!16267)

(assert (=> b!1102332 (= lt!372662 e!698257)))

(declare-fun c!187114 () Bool)

(declare-fun objs!8 () BalanceConc!6670)

(declare-fun forall!2475 (BalanceConc!6670 Int) Bool)

(assert (=> b!1102332 (= c!187114 (forall!2475 objs!8 lambda!43552))))

(declare-fun b!1102333 () Bool)

(declare-fun e!698258 () Bool)

(declare-fun size!8281 (List!10678) Int)

(declare-fun filter!364 (List!10678 Int) List!10678)

(assert (=> b!1102333 (= e!698258 (< (size!8281 (filter!364 lt!372664 lambda!43550)) (size!8281 lt!372664)))))

(declare-fun e!698252 () Bool)

(declare-fun e!698262 () Bool)

(assert (=> b!1102334 (= e!698252 e!698262)))

(declare-fun res!488808 () Bool)

(assert (=> b!1102334 (=> (not res!488808) (not e!698262))))

(declare-fun contains!1888 (BalanceConc!6670 tuple2!11792) Bool)

(assert (=> b!1102334 (= res!488808 (contains!1888 objs!8 lt!372661))))

(declare-fun filter!365 (BalanceConc!6670 Int) BalanceConc!6670)

(assert (=> b!1102334 (= lt!372659 (filter!365 objs!8 lambda!43552))))

(declare-fun lt!372666 () BalanceConc!6670)

(assert (=> b!1102334 (= lt!372666 (filter!365 objs!8 lambda!43551))))

(assert (=> b!1102334 (= lt!372663 (filter!365 objs!8 lambda!43550))))

(declare-fun apply!2162 (BalanceConc!6670 Int) tuple2!11792)

(assert (=> b!1102334 (= lt!372661 (apply!2162 objs!8 (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2)))))))

(declare-fun b!1102336 () Bool)

(declare-fun e!698261 () Bool)

(assert (=> b!1102336 (= e!698261 e!698252)))

(declare-fun res!488810 () Bool)

(assert (=> b!1102336 (=> (not res!488810) (not e!698252))))

(assert (=> b!1102336 (= res!488810 (> lt!372669 1))))

(assert (=> b!1102336 (= lt!372669 (size!8280 objs!8))))

(declare-fun b!1102337 () Bool)

(declare-fun forall!2476 (List!10678 Int) Bool)

(assert (=> b!1102337 (= e!698259 (forall!2476 lt!372664 lambda!43549))))

(declare-fun lt!372667 () List!10678)

(assert (=> b!1102337 (= lt!372667 (list!3845 (filter!365 objs!8 lambda!43550)))))

(declare-fun lt!372678 () Unit!16267)

(declare-fun filterSubseq!42 (List!10678 Int) Unit!16267)

(assert (=> b!1102337 (= lt!372678 (filterSubseq!42 lt!372664 lambda!43552))))

(declare-fun lt!372671 () Unit!16267)

(assert (=> b!1102337 (= lt!372671 (filterSubseq!42 lt!372664 lambda!43551))))

(declare-fun lt!372660 () Unit!16267)

(assert (=> b!1102337 (= lt!372660 (filterSubseq!42 lt!372664 lambda!43550))))

(declare-fun b!1102338 () Bool)

(declare-fun Unit!16270 () Unit!16267)

(assert (=> b!1102338 (= e!698255 Unit!16270)))

(declare-fun b!1102339 () Bool)

(declare-fun e!698250 () Bool)

(assert (=> b!1102339 (= e!698250 e!698254)))

(declare-fun res!488806 () Bool)

(assert (=> b!1102339 (=> res!488806 e!698254)))

(declare-fun lt!372675 () Bool)

(assert (=> b!1102339 (= res!488806 lt!372675)))

(declare-fun lt!372676 () Unit!16267)

(declare-fun e!698249 () Unit!16267)

(assert (=> b!1102339 (= lt!372676 e!698249)))

(declare-fun c!187113 () Bool)

(assert (=> b!1102339 (= c!187113 lt!372675)))

(assert (=> b!1102339 (= lt!372675 (contains!1888 lt!372659 lt!372661))))

(declare-fun b!1102340 () Bool)

(declare-fun e!698251 () Bool)

(assert (=> b!1102340 (= e!698251 (not e!698250))))

(declare-fun res!488812 () Bool)

(assert (=> b!1102340 (=> res!488812 e!698250)))

(assert (=> b!1102340 (= res!488812 (>= (size!8280 lt!372663) lt!372669))))

(assert (=> b!1102340 e!698258))

(declare-fun res!488804 () Bool)

(assert (=> b!1102340 (=> res!488804 e!698258)))

(assert (=> b!1102340 (= res!488804 lt!372674)))

(declare-fun isEmpty!6698 (List!10678) Bool)

(assert (=> b!1102340 (= lt!372674 (isEmpty!6698 lt!372664))))

(declare-fun lt!372658 () Unit!16267)

(assert (=> b!1102340 (= lt!372658 (lemmaNotForallFilterShorter!60 lt!372664 lambda!43550))))

(assert (=> b!1102340 (= lt!372664 (list!3845 objs!8))))

(declare-fun lt!372677 () Unit!16267)

(declare-fun e!698256 () Unit!16267)

(assert (=> b!1102340 (= lt!372677 e!698256)))

(declare-fun c!187112 () Bool)

(assert (=> b!1102340 (= c!187112 (forall!2475 objs!8 lambda!43550))))

(declare-fun b!1102341 () Bool)

(declare-fun err!2704 () Unit!16267)

(assert (=> b!1102341 (= e!698249 err!2704)))

(declare-fun lt!372670 () Unit!16267)

(assert (=> b!1102341 (= lt!372670 (forallContained!527 (list!3845 lt!372659) lambda!43552 lt!372661))))

(assert (=> b!1102341 true))

(declare-fun b!1102342 () Bool)

(declare-fun Unit!16271 () Unit!16267)

(assert (=> b!1102342 (= e!698256 Unit!16271)))

(declare-fun b!1102343 () Bool)

(declare-fun Unit!16272 () Unit!16267)

(assert (=> b!1102343 (= e!698257 Unit!16272)))

(declare-fun b!1102344 () Bool)

(assert (=> b!1102344 (= e!698253 (< (size!8281 (filter!364 lt!372664 lambda!43552)) (size!8281 lt!372664)))))

(declare-fun b!1102345 () Bool)

(declare-fun e!698260 () Bool)

(declare-fun tp!327137 () Bool)

(declare-fun inv!13706 (Conc!3328) Bool)

(assert (=> b!1102345 (= e!698260 (and (inv!13706 (c!187119 objs!8)) tp!327137))))

(declare-fun res!488809 () Bool)

(assert (=> start!94896 (=> (not res!488809) (not e!698261))))

(assert (=> start!94896 (= res!488809 (forall!2475 objs!8 lambda!43549))))

(assert (=> start!94896 e!698261))

(declare-fun inv!13707 (BalanceConc!6670) Bool)

(assert (=> start!94896 (and (inv!13707 objs!8) e!698260)))

(declare-fun b!1102335 () Bool)

(declare-fun err!2702 () Unit!16267)

(assert (=> b!1102335 (= e!698256 err!2702)))

(declare-fun lt!372665 () Unit!16267)

(assert (=> b!1102335 (= lt!372665 (forallContained!527 (list!3845 objs!8) lambda!43550 lt!372661))))

(assert (=> b!1102335 true))

(declare-fun b!1102346 () Bool)

(declare-fun Unit!16273 () Unit!16267)

(assert (=> b!1102346 (= e!698249 Unit!16273)))

(declare-fun b!1102347 () Bool)

(assert (=> b!1102347 (= e!698262 e!698251)))

(declare-fun res!488805 () Bool)

(assert (=> b!1102347 (=> (not res!488805) (not e!698251))))

(declare-fun lt!372668 () Bool)

(assert (=> b!1102347 (= res!488805 (not lt!372668))))

(declare-fun lt!372657 () Unit!16267)

(assert (=> b!1102347 (= lt!372657 e!698255)))

(declare-fun c!187115 () Bool)

(assert (=> b!1102347 (= c!187115 lt!372668)))

(assert (=> b!1102347 (= lt!372668 (contains!1888 lt!372663 lt!372661))))

(assert (= (and start!94896 res!488809) b!1102336))

(assert (= (and b!1102336 res!488810) b!1102334))

(assert (= (and b!1102334 res!488808) b!1102347))

(assert (= (and b!1102347 c!187115) b!1102331))

(assert (= (and b!1102347 (not c!187115)) b!1102338))

(assert (= (and b!1102347 res!488805) b!1102340))

(assert (= (and b!1102340 c!187112) b!1102335))

(assert (= (and b!1102340 (not c!187112)) b!1102342))

(assert (= (and b!1102340 (not res!488804)) b!1102333))

(assert (= (and b!1102340 (not res!488812)) b!1102339))

(assert (= (and b!1102339 c!187113) b!1102341))

(assert (= (and b!1102339 (not c!187113)) b!1102346))

(assert (= (and b!1102339 (not res!488806)) b!1102332))

(assert (= (and b!1102332 c!187114) b!1102330))

(assert (= (and b!1102332 (not c!187114)) b!1102343))

(assert (= (and b!1102332 (not res!488807)) b!1102344))

(assert (= (and b!1102332 (not res!488811)) b!1102337))

(assert (= start!94896 b!1102345))

(declare-fun m!1258315 () Bool)

(assert (=> b!1102336 m!1258315))

(declare-fun m!1258317 () Bool)

(assert (=> b!1102340 m!1258317))

(declare-fun m!1258319 () Bool)

(assert (=> b!1102340 m!1258319))

(declare-fun m!1258321 () Bool)

(assert (=> b!1102340 m!1258321))

(declare-fun m!1258323 () Bool)

(assert (=> b!1102340 m!1258323))

(declare-fun m!1258325 () Bool)

(assert (=> b!1102340 m!1258325))

(declare-fun m!1258327 () Bool)

(assert (=> b!1102339 m!1258327))

(declare-fun m!1258329 () Bool)

(assert (=> b!1102334 m!1258329))

(declare-fun m!1258331 () Bool)

(assert (=> b!1102334 m!1258331))

(declare-fun m!1258333 () Bool)

(assert (=> b!1102334 m!1258333))

(declare-fun m!1258335 () Bool)

(assert (=> b!1102334 m!1258335))

(declare-fun m!1258337 () Bool)

(assert (=> b!1102334 m!1258337))

(declare-fun m!1258339 () Bool)

(assert (=> b!1102344 m!1258339))

(assert (=> b!1102344 m!1258339))

(declare-fun m!1258341 () Bool)

(assert (=> b!1102344 m!1258341))

(declare-fun m!1258343 () Bool)

(assert (=> b!1102344 m!1258343))

(declare-fun m!1258345 () Bool)

(assert (=> b!1102331 m!1258345))

(assert (=> b!1102331 m!1258345))

(declare-fun m!1258347 () Bool)

(assert (=> b!1102331 m!1258347))

(declare-fun m!1258349 () Bool)

(assert (=> start!94896 m!1258349))

(declare-fun m!1258351 () Bool)

(assert (=> start!94896 m!1258351))

(assert (=> b!1102335 m!1258317))

(assert (=> b!1102335 m!1258317))

(declare-fun m!1258353 () Bool)

(assert (=> b!1102335 m!1258353))

(declare-fun m!1258355 () Bool)

(assert (=> b!1102341 m!1258355))

(assert (=> b!1102341 m!1258355))

(declare-fun m!1258357 () Bool)

(assert (=> b!1102341 m!1258357))

(declare-fun m!1258359 () Bool)

(assert (=> b!1102337 m!1258359))

(declare-fun m!1258361 () Bool)

(assert (=> b!1102337 m!1258361))

(assert (=> b!1102337 m!1258329))

(declare-fun m!1258363 () Bool)

(assert (=> b!1102337 m!1258363))

(declare-fun m!1258365 () Bool)

(assert (=> b!1102337 m!1258365))

(assert (=> b!1102337 m!1258329))

(declare-fun m!1258367 () Bool)

(assert (=> b!1102337 m!1258367))

(declare-fun m!1258369 () Bool)

(assert (=> b!1102345 m!1258369))

(declare-fun m!1258371 () Bool)

(assert (=> b!1102330 m!1258371))

(declare-fun m!1258373 () Bool)

(assert (=> b!1102332 m!1258373))

(declare-fun m!1258375 () Bool)

(assert (=> b!1102332 m!1258375))

(declare-fun m!1258377 () Bool)

(assert (=> b!1102332 m!1258377))

(declare-fun m!1258379 () Bool)

(assert (=> b!1102333 m!1258379))

(assert (=> b!1102333 m!1258379))

(declare-fun m!1258381 () Bool)

(assert (=> b!1102333 m!1258381))

(assert (=> b!1102333 m!1258343))

(declare-fun m!1258383 () Bool)

(assert (=> b!1102347 m!1258383))

(push 1)

(assert (not b!1102337))

(assert (not b!1102340))

(assert (not b!1102358))

(assert (not b!1102333))

(assert (not b!1102356))

(assert (not b!1102355))

(assert (not b!1102339))

(assert (not b!1102341))

(assert (not b!1102335))

(assert (not b!1102336))

(assert (not b!1102357))

(assert (not b!1102330))

(assert (not b!1102347))

(assert (not b!1102345))

(assert (not b!1102334))

(assert (not b!1102332))

(assert (not b!1102359))

(assert (not start!94896))

(assert (not b!1102331))

(assert (not b!1102344))

(assert (not b!1102354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311825 () Bool)

(declare-fun lt!372750 () Bool)

(declare-fun contains!1890 (List!10678 tuple2!11792) Bool)

(assert (=> d!311825 (= lt!372750 (contains!1890 (list!3845 lt!372659) lt!372661))))

(declare-fun contains!1891 (Conc!3328 tuple2!11792) Bool)

(assert (=> d!311825 (= lt!372750 (contains!1891 (c!187119 lt!372659) lt!372661))))

(assert (=> d!311825 (= (contains!1888 lt!372659 lt!372661) lt!372750)))

(declare-fun bs!259571 () Bool)

(assert (= bs!259571 d!311825))

(assert (=> bs!259571 m!1258355))

(assert (=> bs!259571 m!1258355))

(declare-fun m!1258455 () Bool)

(assert (=> bs!259571 m!1258455))

(declare-fun m!1258457 () Bool)

(assert (=> bs!259571 m!1258457))

(assert (=> b!1102339 d!311825))

(declare-fun d!311827 () Bool)

(declare-fun subseq!153 (List!10678 List!10678) Bool)

(assert (=> d!311827 (subseq!153 (filter!364 lt!372664 lambda!43551) lt!372664)))

(declare-fun lt!372753 () Unit!16267)

(declare-fun choose!7110 (List!10678 Int) Unit!16267)

(assert (=> d!311827 (= lt!372753 (choose!7110 lt!372664 lambda!43551))))

(assert (=> d!311827 (= (filterSubseq!42 lt!372664 lambda!43551) lt!372753)))

(declare-fun bs!259572 () Bool)

(assert (= bs!259572 d!311827))

(declare-fun m!1258459 () Bool)

(assert (=> bs!259572 m!1258459))

(assert (=> bs!259572 m!1258459))

(declare-fun m!1258461 () Bool)

(assert (=> bs!259572 m!1258461))

(declare-fun m!1258463 () Bool)

(assert (=> bs!259572 m!1258463))

(assert (=> b!1102337 d!311827))

(declare-fun d!311829 () Bool)

(declare-fun res!488844 () Bool)

(declare-fun e!698329 () Bool)

(assert (=> d!311829 (=> res!488844 e!698329)))

(assert (=> d!311829 (= res!488844 (is-Nil!10662 lt!372664))))

(assert (=> d!311829 (= (forall!2476 lt!372664 lambda!43549) e!698329)))

(declare-fun b!1102430 () Bool)

(declare-fun e!698330 () Bool)

(assert (=> b!1102430 (= e!698329 e!698330)))

(declare-fun res!488845 () Bool)

(assert (=> b!1102430 (=> (not res!488845) (not e!698330))))

(declare-fun dynLambda!4699 (Int tuple2!11792) Bool)

(assert (=> b!1102430 (= res!488845 (dynLambda!4699 lambda!43549 (h!16063 lt!372664)))))

(declare-fun b!1102431 () Bool)

(assert (=> b!1102431 (= e!698330 (forall!2476 (t!104188 lt!372664) lambda!43549))))

(assert (= (and d!311829 (not res!488844)) b!1102430))

(assert (= (and b!1102430 res!488845) b!1102431))

(declare-fun b_lambda!32323 () Bool)

(assert (=> (not b_lambda!32323) (not b!1102430)))

(declare-fun m!1258465 () Bool)

(assert (=> b!1102430 m!1258465))

(declare-fun m!1258467 () Bool)

(assert (=> b!1102431 m!1258467))

(assert (=> b!1102337 d!311829))

(declare-fun d!311831 () Bool)

(declare-fun e!698333 () Bool)

(assert (=> d!311831 e!698333))

(declare-fun res!488848 () Bool)

(assert (=> d!311831 (=> (not res!488848) (not e!698333))))

(declare-fun isBalanced!921 (Conc!3328) Bool)

(declare-fun filter!368 (Conc!3328 Int) Conc!3328)

(assert (=> d!311831 (= res!488848 (isBalanced!921 (filter!368 (c!187119 objs!8) lambda!43550)))))

(declare-fun lt!372756 () BalanceConc!6670)

(assert (=> d!311831 (= lt!372756 (BalanceConc!6671 (filter!368 (c!187119 objs!8) lambda!43550)))))

(assert (=> d!311831 (= (filter!365 objs!8 lambda!43550) lt!372756)))

(declare-fun b!1102434 () Bool)

(assert (=> b!1102434 (= e!698333 (= (list!3845 lt!372756) (filter!364 (list!3845 objs!8) lambda!43550)))))

(assert (= (and d!311831 res!488848) b!1102434))

(declare-fun m!1258469 () Bool)

(assert (=> d!311831 m!1258469))

(assert (=> d!311831 m!1258469))

(declare-fun m!1258471 () Bool)

(assert (=> d!311831 m!1258471))

(declare-fun m!1258473 () Bool)

(assert (=> b!1102434 m!1258473))

(assert (=> b!1102434 m!1258317))

(assert (=> b!1102434 m!1258317))

(declare-fun m!1258475 () Bool)

(assert (=> b!1102434 m!1258475))

(assert (=> b!1102337 d!311831))

(declare-fun d!311833 () Bool)

(assert (=> d!311833 (subseq!153 (filter!364 lt!372664 lambda!43550) lt!372664)))

(declare-fun lt!372757 () Unit!16267)

(assert (=> d!311833 (= lt!372757 (choose!7110 lt!372664 lambda!43550))))

(assert (=> d!311833 (= (filterSubseq!42 lt!372664 lambda!43550) lt!372757)))

(declare-fun bs!259573 () Bool)

(assert (= bs!259573 d!311833))

(assert (=> bs!259573 m!1258379))

(assert (=> bs!259573 m!1258379))

(declare-fun m!1258477 () Bool)

(assert (=> bs!259573 m!1258477))

(declare-fun m!1258479 () Bool)

(assert (=> bs!259573 m!1258479))

(assert (=> b!1102337 d!311833))

(declare-fun d!311835 () Bool)

(assert (=> d!311835 (subseq!153 (filter!364 lt!372664 lambda!43552) lt!372664)))

(declare-fun lt!372758 () Unit!16267)

(assert (=> d!311835 (= lt!372758 (choose!7110 lt!372664 lambda!43552))))

(assert (=> d!311835 (= (filterSubseq!42 lt!372664 lambda!43552) lt!372758)))

(declare-fun bs!259574 () Bool)

(assert (= bs!259574 d!311835))

(assert (=> bs!259574 m!1258339))

(assert (=> bs!259574 m!1258339))

(declare-fun m!1258481 () Bool)

(assert (=> bs!259574 m!1258481))

(declare-fun m!1258483 () Bool)

(assert (=> bs!259574 m!1258483))

(assert (=> b!1102337 d!311835))

(declare-fun d!311837 () Bool)

(declare-fun list!3847 (Conc!3328) List!10678)

(assert (=> d!311837 (= (list!3845 (filter!365 objs!8 lambda!43550)) (list!3847 (c!187119 (filter!365 objs!8 lambda!43550))))))

(declare-fun bs!259575 () Bool)

(assert (= bs!259575 d!311837))

(declare-fun m!1258485 () Bool)

(assert (=> bs!259575 m!1258485))

(assert (=> b!1102337 d!311837))

(declare-fun d!311839 () Bool)

(assert (=> d!311839 (dynLambda!4699 lambda!43552 lt!372661)))

(declare-fun lt!372761 () Unit!16267)

(declare-fun choose!7111 (List!10678 Int tuple2!11792) Unit!16267)

(assert (=> d!311839 (= lt!372761 (choose!7111 (list!3845 lt!372659) lambda!43552 lt!372661))))

(declare-fun e!698336 () Bool)

(assert (=> d!311839 e!698336))

(declare-fun res!488851 () Bool)

(assert (=> d!311839 (=> (not res!488851) (not e!698336))))

(assert (=> d!311839 (= res!488851 (forall!2476 (list!3845 lt!372659) lambda!43552))))

(assert (=> d!311839 (= (forallContained!527 (list!3845 lt!372659) lambda!43552 lt!372661) lt!372761)))

(declare-fun b!1102437 () Bool)

(assert (=> b!1102437 (= e!698336 (contains!1890 (list!3845 lt!372659) lt!372661))))

(assert (= (and d!311839 res!488851) b!1102437))

(declare-fun b_lambda!32325 () Bool)

(assert (=> (not b_lambda!32325) (not d!311839)))

(declare-fun m!1258487 () Bool)

(assert (=> d!311839 m!1258487))

(assert (=> d!311839 m!1258355))

(declare-fun m!1258489 () Bool)

(assert (=> d!311839 m!1258489))

(assert (=> d!311839 m!1258355))

(declare-fun m!1258491 () Bool)

(assert (=> d!311839 m!1258491))

(assert (=> b!1102437 m!1258355))

(assert (=> b!1102437 m!1258455))

(assert (=> b!1102341 d!311839))

(declare-fun d!311841 () Bool)

(assert (=> d!311841 (= (list!3845 lt!372659) (list!3847 (c!187119 lt!372659)))))

(declare-fun bs!259576 () Bool)

(assert (= bs!259576 d!311841))

(declare-fun m!1258493 () Bool)

(assert (=> bs!259576 m!1258493))

(assert (=> b!1102341 d!311841))

(declare-fun d!311843 () Bool)

(assert (=> d!311843 (dynLambda!4699 lambda!43550 lt!372661)))

(declare-fun lt!372762 () Unit!16267)

(assert (=> d!311843 (= lt!372762 (choose!7111 (list!3845 lt!372663) lambda!43550 lt!372661))))

(declare-fun e!698337 () Bool)

(assert (=> d!311843 e!698337))

(declare-fun res!488852 () Bool)

(assert (=> d!311843 (=> (not res!488852) (not e!698337))))

(assert (=> d!311843 (= res!488852 (forall!2476 (list!3845 lt!372663) lambda!43550))))

(assert (=> d!311843 (= (forallContained!527 (list!3845 lt!372663) lambda!43550 lt!372661) lt!372762)))

(declare-fun b!1102438 () Bool)

(assert (=> b!1102438 (= e!698337 (contains!1890 (list!3845 lt!372663) lt!372661))))

(assert (= (and d!311843 res!488852) b!1102438))

(declare-fun b_lambda!32327 () Bool)

(assert (=> (not b_lambda!32327) (not d!311843)))

(declare-fun m!1258495 () Bool)

(assert (=> d!311843 m!1258495))

(assert (=> d!311843 m!1258345))

(declare-fun m!1258497 () Bool)

(assert (=> d!311843 m!1258497))

(assert (=> d!311843 m!1258345))

(declare-fun m!1258499 () Bool)

(assert (=> d!311843 m!1258499))

(assert (=> b!1102438 m!1258345))

(declare-fun m!1258501 () Bool)

(assert (=> b!1102438 m!1258501))

(assert (=> b!1102331 d!311843))

(declare-fun d!311845 () Bool)

(assert (=> d!311845 (= (list!3845 lt!372663) (list!3847 (c!187119 lt!372663)))))

(declare-fun bs!259577 () Bool)

(assert (= bs!259577 d!311845))

(declare-fun m!1258503 () Bool)

(assert (=> bs!259577 m!1258503))

(assert (=> b!1102331 d!311845))

(declare-fun d!311847 () Bool)

(declare-fun lt!372765 () Bool)

(assert (=> d!311847 (= lt!372765 (forall!2476 (list!3845 objs!8) lambda!43549))))

(declare-fun forall!2479 (Conc!3328 Int) Bool)

(assert (=> d!311847 (= lt!372765 (forall!2479 (c!187119 objs!8) lambda!43549))))

(assert (=> d!311847 (= (forall!2475 objs!8 lambda!43549) lt!372765)))

(declare-fun bs!259578 () Bool)

(assert (= bs!259578 d!311847))

(assert (=> bs!259578 m!1258317))

(assert (=> bs!259578 m!1258317))

(declare-fun m!1258505 () Bool)

(assert (=> bs!259578 m!1258505))

(declare-fun m!1258507 () Bool)

(assert (=> bs!259578 m!1258507))

(assert (=> start!94896 d!311847))

(declare-fun d!311849 () Bool)

(assert (=> d!311849 (= (inv!13707 objs!8) (isBalanced!921 (c!187119 objs!8)))))

(declare-fun bs!259579 () Bool)

(assert (= bs!259579 d!311849))

(declare-fun m!1258509 () Bool)

(assert (=> bs!259579 m!1258509))

(assert (=> start!94896 d!311849))

(declare-fun d!311851 () Bool)

(assert (=> d!311851 (= (list!3845 objs!8) (list!3847 (c!187119 objs!8)))))

(declare-fun bs!259580 () Bool)

(assert (= bs!259580 d!311851))

(declare-fun m!1258511 () Bool)

(assert (=> bs!259580 m!1258511))

(assert (=> b!1102340 d!311851))

(declare-fun d!311853 () Bool)

(assert (=> d!311853 (= (isEmpty!6698 lt!372664) (is-Nil!10662 lt!372664))))

(assert (=> b!1102340 d!311853))

(declare-fun d!311855 () Bool)

(declare-fun lt!372768 () Int)

(assert (=> d!311855 (= lt!372768 (size!8281 (list!3845 lt!372663)))))

(declare-fun size!8285 (Conc!3328) Int)

(assert (=> d!311855 (= lt!372768 (size!8285 (c!187119 lt!372663)))))

(assert (=> d!311855 (= (size!8280 lt!372663) lt!372768)))

(declare-fun bs!259581 () Bool)

(assert (= bs!259581 d!311855))

(assert (=> bs!259581 m!1258345))

(assert (=> bs!259581 m!1258345))

(declare-fun m!1258513 () Bool)

(assert (=> bs!259581 m!1258513))

(declare-fun m!1258515 () Bool)

(assert (=> bs!259581 m!1258515))

(assert (=> b!1102340 d!311855))

(declare-fun d!311857 () Bool)

(declare-fun e!698340 () Bool)

(assert (=> d!311857 e!698340))

(declare-fun res!488855 () Bool)

(assert (=> d!311857 (=> res!488855 e!698340)))

(assert (=> d!311857 (= res!488855 (isEmpty!6698 lt!372664))))

(declare-fun lt!372771 () Unit!16267)

(declare-fun choose!7112 (List!10678 Int) Unit!16267)

(assert (=> d!311857 (= lt!372771 (choose!7112 lt!372664 lambda!43550))))

(assert (=> d!311857 (not (forall!2476 lt!372664 lambda!43550))))

(assert (=> d!311857 (= (lemmaNotForallFilterShorter!60 lt!372664 lambda!43550) lt!372771)))

(declare-fun b!1102441 () Bool)

(assert (=> b!1102441 (= e!698340 (< (size!8281 (filter!364 lt!372664 lambda!43550)) (size!8281 lt!372664)))))

(assert (= (and d!311857 (not res!488855)) b!1102441))

(assert (=> d!311857 m!1258319))

(declare-fun m!1258517 () Bool)

(assert (=> d!311857 m!1258517))

(declare-fun m!1258519 () Bool)

(assert (=> d!311857 m!1258519))

(assert (=> b!1102441 m!1258379))

(assert (=> b!1102441 m!1258379))

(assert (=> b!1102441 m!1258381))

(assert (=> b!1102441 m!1258343))

(assert (=> b!1102340 d!311857))

(declare-fun d!311859 () Bool)

(declare-fun lt!372772 () Bool)

(assert (=> d!311859 (= lt!372772 (forall!2476 (list!3845 objs!8) lambda!43550))))

(assert (=> d!311859 (= lt!372772 (forall!2479 (c!187119 objs!8) lambda!43550))))

(assert (=> d!311859 (= (forall!2475 objs!8 lambda!43550) lt!372772)))

(declare-fun bs!259582 () Bool)

(assert (= bs!259582 d!311859))

(assert (=> bs!259582 m!1258317))

(assert (=> bs!259582 m!1258317))

(declare-fun m!1258521 () Bool)

(assert (=> bs!259582 m!1258521))

(declare-fun m!1258523 () Bool)

(assert (=> bs!259582 m!1258523))

(assert (=> b!1102340 d!311859))

(declare-fun d!311861 () Bool)

(assert (=> d!311861 (dynLambda!4699 lambda!43552 lt!372661)))

(declare-fun lt!372773 () Unit!16267)

(assert (=> d!311861 (= lt!372773 (choose!7111 lt!372664 lambda!43552 lt!372661))))

(declare-fun e!698341 () Bool)

(assert (=> d!311861 e!698341))

(declare-fun res!488856 () Bool)

(assert (=> d!311861 (=> (not res!488856) (not e!698341))))

(assert (=> d!311861 (= res!488856 (forall!2476 lt!372664 lambda!43552))))

(assert (=> d!311861 (= (forallContained!527 lt!372664 lambda!43552 lt!372661) lt!372773)))

(declare-fun b!1102442 () Bool)

(assert (=> b!1102442 (= e!698341 (contains!1890 lt!372664 lt!372661))))

(assert (= (and d!311861 res!488856) b!1102442))

(declare-fun b_lambda!32329 () Bool)

(assert (=> (not b_lambda!32329) (not d!311861)))

(assert (=> d!311861 m!1258487))

(declare-fun m!1258525 () Bool)

(assert (=> d!311861 m!1258525))

(declare-fun m!1258527 () Bool)

(assert (=> d!311861 m!1258527))

(declare-fun m!1258529 () Bool)

(assert (=> b!1102442 m!1258529))

(assert (=> b!1102330 d!311861))

(declare-fun d!311863 () Bool)

(declare-fun lt!372776 () Int)

(assert (=> d!311863 (>= lt!372776 0)))

(declare-fun e!698344 () Int)

(assert (=> d!311863 (= lt!372776 e!698344)))

(declare-fun c!187139 () Bool)

(assert (=> d!311863 (= c!187139 (is-Nil!10662 (filter!364 lt!372664 lambda!43550)))))

(assert (=> d!311863 (= (size!8281 (filter!364 lt!372664 lambda!43550)) lt!372776)))

(declare-fun b!1102447 () Bool)

(assert (=> b!1102447 (= e!698344 0)))

(declare-fun b!1102448 () Bool)

(assert (=> b!1102448 (= e!698344 (+ 1 (size!8281 (t!104188 (filter!364 lt!372664 lambda!43550)))))))

(assert (= (and d!311863 c!187139) b!1102447))

(assert (= (and d!311863 (not c!187139)) b!1102448))

(declare-fun m!1258531 () Bool)

(assert (=> b!1102448 m!1258531))

(assert (=> b!1102333 d!311863))

(declare-fun b!1102463 () Bool)

(declare-fun e!698353 () List!10678)

(declare-fun e!698355 () List!10678)

(assert (=> b!1102463 (= e!698353 e!698355)))

(declare-fun c!187145 () Bool)

(assert (=> b!1102463 (= c!187145 (dynLambda!4699 lambda!43550 (h!16063 lt!372664)))))

(declare-fun b!1102464 () Bool)

(declare-fun call!80449 () List!10678)

(assert (=> b!1102464 (= e!698355 (Cons!10662 (h!16063 lt!372664) call!80449))))

(declare-fun b!1102465 () Bool)

(assert (=> b!1102465 (= e!698353 Nil!10662)))

(declare-fun bm!80444 () Bool)

(assert (=> bm!80444 (= call!80449 (filter!364 (t!104188 lt!372664) lambda!43550))))

(declare-fun b!1102466 () Bool)

(declare-fun e!698354 () Bool)

(declare-fun lt!372781 () List!10678)

(assert (=> b!1102466 (= e!698354 (forall!2476 lt!372781 lambda!43550))))

(declare-fun b!1102467 () Bool)

(assert (=> b!1102467 (= e!698355 call!80449)))

(declare-fun b!1102468 () Bool)

(declare-fun res!488863 () Bool)

(assert (=> b!1102468 (=> (not res!488863) (not e!698354))))

(declare-fun content!1539 (List!10678) (Set tuple2!11792))

(assert (=> b!1102468 (= res!488863 (set.subset (content!1539 lt!372781) (content!1539 lt!372664)))))

(declare-fun d!311867 () Bool)

(assert (=> d!311867 e!698354))

(declare-fun res!488864 () Bool)

(assert (=> d!311867 (=> (not res!488864) (not e!698354))))

(assert (=> d!311867 (= res!488864 (<= (size!8281 lt!372781) (size!8281 lt!372664)))))

(assert (=> d!311867 (= lt!372781 e!698353)))

(declare-fun c!187144 () Bool)

(assert (=> d!311867 (= c!187144 (is-Nil!10662 lt!372664))))

(assert (=> d!311867 (= (filter!364 lt!372664 lambda!43550) lt!372781)))

(assert (= (and d!311867 c!187144) b!1102465))

(assert (= (and d!311867 (not c!187144)) b!1102463))

(assert (= (and b!1102463 c!187145) b!1102464))

(assert (= (and b!1102463 (not c!187145)) b!1102467))

(assert (= (or b!1102464 b!1102467) bm!80444))

(assert (= (and d!311867 res!488864) b!1102468))

(assert (= (and b!1102468 res!488863) b!1102466))

(declare-fun b_lambda!32331 () Bool)

(assert (=> (not b_lambda!32331) (not b!1102463)))

(declare-fun m!1258533 () Bool)

(assert (=> b!1102463 m!1258533))

(declare-fun m!1258535 () Bool)

(assert (=> d!311867 m!1258535))

(assert (=> d!311867 m!1258343))

(declare-fun m!1258537 () Bool)

(assert (=> b!1102466 m!1258537))

(declare-fun m!1258539 () Bool)

(assert (=> b!1102468 m!1258539))

(declare-fun m!1258541 () Bool)

(assert (=> b!1102468 m!1258541))

(declare-fun m!1258543 () Bool)

(assert (=> bm!80444 m!1258543))

(assert (=> b!1102333 d!311867))

(declare-fun d!311869 () Bool)

(declare-fun lt!372782 () Int)

(assert (=> d!311869 (>= lt!372782 0)))

(declare-fun e!698356 () Int)

(assert (=> d!311869 (= lt!372782 e!698356)))

(declare-fun c!187146 () Bool)

(assert (=> d!311869 (= c!187146 (is-Nil!10662 lt!372664))))

(assert (=> d!311869 (= (size!8281 lt!372664) lt!372782)))

(declare-fun b!1102469 () Bool)

(assert (=> b!1102469 (= e!698356 0)))

(declare-fun b!1102470 () Bool)

(assert (=> b!1102470 (= e!698356 (+ 1 (size!8281 (t!104188 lt!372664))))))

(assert (= (and d!311869 c!187146) b!1102469))

(assert (= (and d!311869 (not c!187146)) b!1102470))

(declare-fun m!1258545 () Bool)

(assert (=> b!1102470 m!1258545))

(assert (=> b!1102333 d!311869))

(declare-fun d!311871 () Bool)

(declare-fun lt!372783 () Int)

(assert (=> d!311871 (>= lt!372783 0)))

(declare-fun e!698357 () Int)

(assert (=> d!311871 (= lt!372783 e!698357)))

(declare-fun c!187147 () Bool)

(assert (=> d!311871 (= c!187147 (is-Nil!10662 (filter!364 lt!372664 lambda!43552)))))

(assert (=> d!311871 (= (size!8281 (filter!364 lt!372664 lambda!43552)) lt!372783)))

(declare-fun b!1102471 () Bool)

(assert (=> b!1102471 (= e!698357 0)))

(declare-fun b!1102472 () Bool)

(assert (=> b!1102472 (= e!698357 (+ 1 (size!8281 (t!104188 (filter!364 lt!372664 lambda!43552)))))))

(assert (= (and d!311871 c!187147) b!1102471))

(assert (= (and d!311871 (not c!187147)) b!1102472))

(declare-fun m!1258547 () Bool)

(assert (=> b!1102472 m!1258547))

(assert (=> b!1102344 d!311871))

(declare-fun b!1102473 () Bool)

(declare-fun e!698358 () List!10678)

(declare-fun e!698360 () List!10678)

(assert (=> b!1102473 (= e!698358 e!698360)))

(declare-fun c!187149 () Bool)

(assert (=> b!1102473 (= c!187149 (dynLambda!4699 lambda!43552 (h!16063 lt!372664)))))

(declare-fun b!1102474 () Bool)

(declare-fun call!80450 () List!10678)

(assert (=> b!1102474 (= e!698360 (Cons!10662 (h!16063 lt!372664) call!80450))))

(declare-fun b!1102475 () Bool)

(assert (=> b!1102475 (= e!698358 Nil!10662)))

(declare-fun bm!80445 () Bool)

(assert (=> bm!80445 (= call!80450 (filter!364 (t!104188 lt!372664) lambda!43552))))

(declare-fun b!1102476 () Bool)

(declare-fun e!698359 () Bool)

(declare-fun lt!372784 () List!10678)

(assert (=> b!1102476 (= e!698359 (forall!2476 lt!372784 lambda!43552))))

(declare-fun b!1102477 () Bool)

(assert (=> b!1102477 (= e!698360 call!80450)))

(declare-fun b!1102478 () Bool)

(declare-fun res!488865 () Bool)

(assert (=> b!1102478 (=> (not res!488865) (not e!698359))))

(assert (=> b!1102478 (= res!488865 (set.subset (content!1539 lt!372784) (content!1539 lt!372664)))))

(declare-fun d!311873 () Bool)

(assert (=> d!311873 e!698359))

(declare-fun res!488866 () Bool)

(assert (=> d!311873 (=> (not res!488866) (not e!698359))))

(assert (=> d!311873 (= res!488866 (<= (size!8281 lt!372784) (size!8281 lt!372664)))))

(assert (=> d!311873 (= lt!372784 e!698358)))

(declare-fun c!187148 () Bool)

(assert (=> d!311873 (= c!187148 (is-Nil!10662 lt!372664))))

(assert (=> d!311873 (= (filter!364 lt!372664 lambda!43552) lt!372784)))

(assert (= (and d!311873 c!187148) b!1102475))

(assert (= (and d!311873 (not c!187148)) b!1102473))

(assert (= (and b!1102473 c!187149) b!1102474))

(assert (= (and b!1102473 (not c!187149)) b!1102477))

(assert (= (or b!1102474 b!1102477) bm!80445))

(assert (= (and d!311873 res!488866) b!1102478))

(assert (= (and b!1102478 res!488865) b!1102476))

(declare-fun b_lambda!32333 () Bool)

(assert (=> (not b_lambda!32333) (not b!1102473)))

(declare-fun m!1258549 () Bool)

(assert (=> b!1102473 m!1258549))

(declare-fun m!1258551 () Bool)

(assert (=> d!311873 m!1258551))

(assert (=> d!311873 m!1258343))

(declare-fun m!1258553 () Bool)

(assert (=> b!1102476 m!1258553))

(declare-fun m!1258555 () Bool)

(assert (=> b!1102478 m!1258555))

(assert (=> b!1102478 m!1258541))

(declare-fun m!1258557 () Bool)

(assert (=> bm!80445 m!1258557))

(assert (=> b!1102344 d!311873))

(assert (=> b!1102344 d!311869))

(declare-fun d!311875 () Bool)

(declare-fun e!698361 () Bool)

(assert (=> d!311875 e!698361))

(declare-fun res!488867 () Bool)

(assert (=> d!311875 (=> (not res!488867) (not e!698361))))

(assert (=> d!311875 (= res!488867 (isBalanced!921 (filter!368 (c!187119 objs!8) lambda!43551)))))

(declare-fun lt!372785 () BalanceConc!6670)

(assert (=> d!311875 (= lt!372785 (BalanceConc!6671 (filter!368 (c!187119 objs!8) lambda!43551)))))

(assert (=> d!311875 (= (filter!365 objs!8 lambda!43551) lt!372785)))

(declare-fun b!1102479 () Bool)

(assert (=> b!1102479 (= e!698361 (= (list!3845 lt!372785) (filter!364 (list!3845 objs!8) lambda!43551)))))

(assert (= (and d!311875 res!488867) b!1102479))

(declare-fun m!1258559 () Bool)

(assert (=> d!311875 m!1258559))

(assert (=> d!311875 m!1258559))

(declare-fun m!1258561 () Bool)

(assert (=> d!311875 m!1258561))

(declare-fun m!1258563 () Bool)

(assert (=> b!1102479 m!1258563))

(assert (=> b!1102479 m!1258317))

(assert (=> b!1102479 m!1258317))

(declare-fun m!1258565 () Bool)

(assert (=> b!1102479 m!1258565))

(assert (=> b!1102334 d!311875))

(declare-fun d!311877 () Bool)

(declare-fun e!698363 () Bool)

(assert (=> d!311877 e!698363))

(declare-fun res!488869 () Bool)

(assert (=> d!311877 (=> (not res!488869) (not e!698363))))

(assert (=> d!311877 (= res!488869 (isBalanced!921 (filter!368 (c!187119 objs!8) lambda!43552)))))

(declare-fun lt!372787 () BalanceConc!6670)

(assert (=> d!311877 (= lt!372787 (BalanceConc!6671 (filter!368 (c!187119 objs!8) lambda!43552)))))

(assert (=> d!311877 (= (filter!365 objs!8 lambda!43552) lt!372787)))

(declare-fun b!1102481 () Bool)

(assert (=> b!1102481 (= e!698363 (= (list!3845 lt!372787) (filter!364 (list!3845 objs!8) lambda!43552)))))

(assert (= (and d!311877 res!488869) b!1102481))

(declare-fun m!1258567 () Bool)

(assert (=> d!311877 m!1258567))

(assert (=> d!311877 m!1258567))

(declare-fun m!1258569 () Bool)

(assert (=> d!311877 m!1258569))

(declare-fun m!1258571 () Bool)

(assert (=> b!1102481 m!1258571))

(assert (=> b!1102481 m!1258317))

(assert (=> b!1102481 m!1258317))

(declare-fun m!1258573 () Bool)

(assert (=> b!1102481 m!1258573))

(assert (=> b!1102334 d!311877))

(assert (=> b!1102334 d!311831))

(declare-fun d!311879 () Bool)

(declare-fun lt!372788 () Bool)

(assert (=> d!311879 (= lt!372788 (contains!1890 (list!3845 objs!8) lt!372661))))

(assert (=> d!311879 (= lt!372788 (contains!1891 (c!187119 objs!8) lt!372661))))

(assert (=> d!311879 (= (contains!1888 objs!8 lt!372661) lt!372788)))

(declare-fun bs!259583 () Bool)

(assert (= bs!259583 d!311879))

(assert (=> bs!259583 m!1258317))

(assert (=> bs!259583 m!1258317))

(declare-fun m!1258575 () Bool)

(assert (=> bs!259583 m!1258575))

(declare-fun m!1258577 () Bool)

(assert (=> bs!259583 m!1258577))

(assert (=> b!1102334 d!311879))

(declare-fun d!311881 () Bool)

(declare-fun lt!372791 () tuple2!11792)

(declare-fun apply!2164 (List!10678 Int) tuple2!11792)

(assert (=> d!311881 (= lt!372791 (apply!2164 (list!3845 objs!8) (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2)))))))

(declare-fun apply!2165 (Conc!3328 Int) tuple2!11792)

(assert (=> d!311881 (= lt!372791 (apply!2165 (c!187119 objs!8) (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2)))))))

(declare-fun e!698366 () Bool)

(assert (=> d!311881 e!698366))

(declare-fun res!488872 () Bool)

(assert (=> d!311881 (=> (not res!488872) (not e!698366))))

(assert (=> d!311881 (= res!488872 (<= 0 (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2)))))))

(assert (=> d!311881 (= (apply!2162 objs!8 (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2)))) lt!372791)))

(declare-fun b!1102484 () Bool)

(assert (=> b!1102484 (= e!698366 (< (ite (>= lt!372669 0) (div lt!372669 2) (- (div (- lt!372669) 2))) (size!8280 objs!8)))))

(assert (= (and d!311881 res!488872) b!1102484))

(assert (=> d!311881 m!1258317))

(assert (=> d!311881 m!1258317))

(declare-fun m!1258585 () Bool)

(assert (=> d!311881 m!1258585))

(declare-fun m!1258587 () Bool)

(assert (=> d!311881 m!1258587))

(assert (=> b!1102484 m!1258315))

(assert (=> b!1102334 d!311881))

(declare-fun d!311889 () Bool)

(declare-fun lt!372792 () Int)

(assert (=> d!311889 (= lt!372792 (size!8281 (list!3845 lt!372659)))))

(assert (=> d!311889 (= lt!372792 (size!8285 (c!187119 lt!372659)))))

(assert (=> d!311889 (= (size!8280 lt!372659) lt!372792)))

(declare-fun bs!259585 () Bool)

(assert (= bs!259585 d!311889))

(assert (=> bs!259585 m!1258355))

(assert (=> bs!259585 m!1258355))

(declare-fun m!1258589 () Bool)

(assert (=> bs!259585 m!1258589))

(declare-fun m!1258591 () Bool)

(assert (=> bs!259585 m!1258591))

(assert (=> b!1102332 d!311889))

(declare-fun d!311891 () Bool)

(declare-fun e!698367 () Bool)

(assert (=> d!311891 e!698367))

(declare-fun res!488873 () Bool)

(assert (=> d!311891 (=> res!488873 e!698367)))

(assert (=> d!311891 (= res!488873 (isEmpty!6698 lt!372664))))

(declare-fun lt!372793 () Unit!16267)

(assert (=> d!311891 (= lt!372793 (choose!7112 lt!372664 lambda!43552))))

(assert (=> d!311891 (not (forall!2476 lt!372664 lambda!43552))))

(assert (=> d!311891 (= (lemmaNotForallFilterShorter!60 lt!372664 lambda!43552) lt!372793)))

(declare-fun b!1102485 () Bool)

(assert (=> b!1102485 (= e!698367 (< (size!8281 (filter!364 lt!372664 lambda!43552)) (size!8281 lt!372664)))))

(assert (= (and d!311891 (not res!488873)) b!1102485))

(assert (=> d!311891 m!1258319))

(declare-fun m!1258593 () Bool)

(assert (=> d!311891 m!1258593))

(assert (=> d!311891 m!1258527))

(assert (=> b!1102485 m!1258339))

(assert (=> b!1102485 m!1258339))

(assert (=> b!1102485 m!1258341))

(assert (=> b!1102485 m!1258343))

(assert (=> b!1102332 d!311891))

(declare-fun d!311893 () Bool)

(declare-fun lt!372794 () Bool)

(assert (=> d!311893 (= lt!372794 (forall!2476 (list!3845 objs!8) lambda!43552))))

(assert (=> d!311893 (= lt!372794 (forall!2479 (c!187119 objs!8) lambda!43552))))

(assert (=> d!311893 (= (forall!2475 objs!8 lambda!43552) lt!372794)))

(declare-fun bs!259586 () Bool)

(assert (= bs!259586 d!311893))

(assert (=> bs!259586 m!1258317))

(assert (=> bs!259586 m!1258317))

(declare-fun m!1258595 () Bool)

(assert (=> bs!259586 m!1258595))

(declare-fun m!1258597 () Bool)

(assert (=> bs!259586 m!1258597))

(assert (=> b!1102332 d!311893))

(declare-fun d!311895 () Bool)

(declare-fun lt!372795 () Int)

(assert (=> d!311895 (= lt!372795 (size!8281 (list!3845 objs!8)))))

(assert (=> d!311895 (= lt!372795 (size!8285 (c!187119 objs!8)))))

(assert (=> d!311895 (= (size!8280 objs!8) lt!372795)))

(declare-fun bs!259587 () Bool)

(assert (= bs!259587 d!311895))

(assert (=> bs!259587 m!1258317))

(assert (=> bs!259587 m!1258317))

(declare-fun m!1258599 () Bool)

(assert (=> bs!259587 m!1258599))

(declare-fun m!1258601 () Bool)

(assert (=> bs!259587 m!1258601))

(assert (=> b!1102336 d!311895))

(declare-fun d!311897 () Bool)

(declare-fun lt!372796 () Bool)

(assert (=> d!311897 (= lt!372796 (contains!1890 (list!3845 lt!372663) lt!372661))))

(assert (=> d!311897 (= lt!372796 (contains!1891 (c!187119 lt!372663) lt!372661))))

(assert (=> d!311897 (= (contains!1888 lt!372663 lt!372661) lt!372796)))

(declare-fun bs!259588 () Bool)

(assert (= bs!259588 d!311897))

(assert (=> bs!259588 m!1258345))

(assert (=> bs!259588 m!1258345))

(assert (=> bs!259588 m!1258501))

(declare-fun m!1258603 () Bool)

(assert (=> bs!259588 m!1258603))

(assert (=> b!1102347 d!311897))

(declare-fun d!311899 () Bool)

(declare-fun c!187152 () Bool)

(assert (=> d!311899 (= c!187152 (is-Node!3328 (c!187119 objs!8)))))

(declare-fun e!698372 () Bool)

(assert (=> d!311899 (= (inv!13706 (c!187119 objs!8)) e!698372)))

(declare-fun b!1102492 () Bool)

(declare-fun inv!13710 (Conc!3328) Bool)

(assert (=> b!1102492 (= e!698372 (inv!13710 (c!187119 objs!8)))))

(declare-fun b!1102493 () Bool)

(declare-fun e!698373 () Bool)

(assert (=> b!1102493 (= e!698372 e!698373)))

(declare-fun res!488876 () Bool)

(assert (=> b!1102493 (= res!488876 (not (is-Leaf!5251 (c!187119 objs!8))))))

(assert (=> b!1102493 (=> res!488876 e!698373)))

(declare-fun b!1102494 () Bool)

(declare-fun inv!13711 (Conc!3328) Bool)

(assert (=> b!1102494 (= e!698373 (inv!13711 (c!187119 objs!8)))))

(assert (= (and d!311899 c!187152) b!1102492))

(assert (= (and d!311899 (not c!187152)) b!1102493))

(assert (= (and b!1102493 (not res!488876)) b!1102494))

(declare-fun m!1258605 () Bool)

(assert (=> b!1102492 m!1258605))

(declare-fun m!1258607 () Bool)

(assert (=> b!1102494 m!1258607))

(assert (=> b!1102345 d!311899))

(declare-fun d!311901 () Bool)

(assert (=> d!311901 (dynLambda!4699 lambda!43550 lt!372661)))

(declare-fun lt!372799 () Unit!16267)

(assert (=> d!311901 (= lt!372799 (choose!7111 (list!3845 objs!8) lambda!43550 lt!372661))))

(declare-fun e!698374 () Bool)

(assert (=> d!311901 e!698374))

(declare-fun res!488877 () Bool)

(assert (=> d!311901 (=> (not res!488877) (not e!698374))))

(assert (=> d!311901 (= res!488877 (forall!2476 (list!3845 objs!8) lambda!43550))))

(assert (=> d!311901 (= (forallContained!527 (list!3845 objs!8) lambda!43550 lt!372661) lt!372799)))

(declare-fun b!1102495 () Bool)

(assert (=> b!1102495 (= e!698374 (contains!1890 (list!3845 objs!8) lt!372661))))

(assert (= (and d!311901 res!488877) b!1102495))

(declare-fun b_lambda!32335 () Bool)

(assert (=> (not b_lambda!32335) (not d!311901)))

(assert (=> d!311901 m!1258495))

(assert (=> d!311901 m!1258317))

(declare-fun m!1258609 () Bool)

(assert (=> d!311901 m!1258609))

(assert (=> d!311901 m!1258317))

(assert (=> d!311901 m!1258521))

(assert (=> b!1102495 m!1258317))

(assert (=> b!1102495 m!1258575))

(assert (=> b!1102335 d!311901))

(assert (=> b!1102335 d!311851))

(declare-fun b!1102506 () Bool)

(declare-fun e!698383 () Bool)

(assert (=> b!1102506 (= e!698383 true)))

(declare-fun b!1102505 () Bool)

(declare-fun e!698382 () Bool)

(assert (=> b!1102505 (= e!698382 e!698383)))

(declare-fun b!1102504 () Bool)

(declare-fun e!698381 () Bool)

(assert (=> b!1102504 (= e!698381 e!698382)))

(assert (=> b!1102358 e!698381))

(assert (= b!1102505 b!1102506))

(assert (= b!1102504 b!1102505))

(assert (= (and b!1102358 (is-Cons!10661 (rules!9120 (_2!6722 lt!372661)))) b!1102504))

(declare-fun order!6513 () Int)

(declare-fun order!6515 () Int)

(declare-fun dynLambda!4700 (Int Int) Int)

(declare-fun dynLambda!4701 (Int Int) Int)

(assert (=> b!1102506 (< (dynLambda!4700 order!6513 (toValue!2910 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43552))))

(declare-fun order!6517 () Int)

(declare-fun dynLambda!4702 (Int Int) Int)

(assert (=> b!1102506 (< (dynLambda!4702 order!6517 (toChars!2769 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43552))))

(declare-fun b!1102509 () Bool)

(declare-fun e!698386 () Bool)

(assert (=> b!1102509 (= e!698386 true)))

(declare-fun b!1102508 () Bool)

(declare-fun e!698385 () Bool)

(assert (=> b!1102508 (= e!698385 e!698386)))

(declare-fun b!1102507 () Bool)

(declare-fun e!698384 () Bool)

(assert (=> b!1102507 (= e!698384 e!698385)))

(assert (=> b!1102356 e!698384))

(assert (= b!1102508 b!1102509))

(assert (= b!1102507 b!1102508))

(assert (= (and b!1102356 (is-Cons!10661 (rules!9120 (_2!6722 lt!372661)))) b!1102507))

(assert (=> b!1102509 (< (dynLambda!4700 order!6513 (toValue!2910 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43551))))

(assert (=> b!1102509 (< (dynLambda!4702 order!6517 (toChars!2769 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43551))))

(declare-fun b!1102518 () Bool)

(declare-fun e!698391 () Bool)

(assert (=> b!1102518 (= e!698391 true)))

(declare-fun b!1102520 () Bool)

(declare-fun e!698392 () Bool)

(assert (=> b!1102520 (= e!698392 true)))

(declare-fun b!1102519 () Bool)

(assert (=> b!1102519 (= e!698391 e!698392)))

(assert (=> b!1102355 e!698391))

(assert (= (and b!1102355 (is-Node!3327 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102518))

(assert (= b!1102519 b!1102520))

(assert (= (and b!1102355 (is-Leaf!5250 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102519))

(declare-fun b!1102521 () Bool)

(declare-fun e!698393 () Bool)

(assert (=> b!1102521 (= e!698393 true)))

(declare-fun b!1102523 () Bool)

(declare-fun e!698394 () Bool)

(assert (=> b!1102523 (= e!698394 true)))

(declare-fun b!1102522 () Bool)

(assert (=> b!1102522 (= e!698393 e!698394)))

(assert (=> b!1102359 e!698393))

(assert (= (and b!1102359 (is-Node!3327 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102521))

(assert (= b!1102522 b!1102523))

(assert (= (and b!1102359 (is-Leaf!5250 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102522))

(declare-fun b!1102526 () Bool)

(declare-fun e!698397 () Bool)

(assert (=> b!1102526 (= e!698397 true)))

(declare-fun b!1102525 () Bool)

(declare-fun e!698396 () Bool)

(assert (=> b!1102525 (= e!698396 e!698397)))

(declare-fun b!1102524 () Bool)

(declare-fun e!698395 () Bool)

(assert (=> b!1102524 (= e!698395 e!698396)))

(assert (=> b!1102354 e!698395))

(assert (= b!1102525 b!1102526))

(assert (= b!1102524 b!1102525))

(assert (= (and b!1102354 (is-Cons!10661 (rules!9120 (_2!6722 lt!372661)))) b!1102524))

(assert (=> b!1102526 (< (dynLambda!4700 order!6513 (toValue!2910 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43550))))

(assert (=> b!1102526 (< (dynLambda!4702 order!6517 (toChars!2769 (transformation!1833 (h!16062 (rules!9120 (_2!6722 lt!372661)))))) (dynLambda!4701 order!6515 lambda!43550))))

(declare-fun e!698402 () Bool)

(declare-fun b!1102535 () Bool)

(declare-fun tp!327149 () Bool)

(declare-fun tp!327148 () Bool)

(assert (=> b!1102535 (= e!698402 (and (inv!13706 (left!9230 (c!187119 objs!8))) tp!327148 (inv!13706 (right!9560 (c!187119 objs!8))) tp!327149))))

(declare-fun b!1102537 () Bool)

(declare-fun e!698403 () Bool)

(declare-fun tp!327147 () Bool)

(assert (=> b!1102537 (= e!698403 tp!327147)))

(declare-fun b!1102536 () Bool)

(declare-fun inv!13712 (IArray!6661) Bool)

(assert (=> b!1102536 (= e!698402 (and (inv!13712 (xs!6021 (c!187119 objs!8))) e!698403))))

(assert (=> b!1102345 (= tp!327137 (and (inv!13706 (c!187119 objs!8)) e!698402))))

(assert (= (and b!1102345 (is-Node!3328 (c!187119 objs!8))) b!1102535))

(assert (= b!1102536 b!1102537))

(assert (= (and b!1102345 (is-Leaf!5251 (c!187119 objs!8))) b!1102536))

(declare-fun m!1258615 () Bool)

(assert (=> b!1102535 m!1258615))

(declare-fun m!1258619 () Bool)

(assert (=> b!1102535 m!1258619))

(declare-fun m!1258621 () Bool)

(assert (=> b!1102536 m!1258621))

(assert (=> b!1102345 m!1258369))

(declare-fun b!1102538 () Bool)

(declare-fun e!698404 () Bool)

(assert (=> b!1102538 (= e!698404 true)))

(declare-fun b!1102540 () Bool)

(declare-fun e!698405 () Bool)

(assert (=> b!1102540 (= e!698405 true)))

(declare-fun b!1102539 () Bool)

(assert (=> b!1102539 (= e!698404 e!698405)))

(assert (=> b!1102357 e!698404))

(assert (= (and b!1102357 (is-Node!3327 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102538))

(assert (= b!1102539 b!1102540))

(assert (= (and b!1102357 (is-Leaf!5250 (c!187118 (tokens!1392 (_2!6722 lt!372661))))) b!1102539))

(declare-fun b_lambda!32337 () Bool)

(assert (= b_lambda!32323 (or start!94896 b_lambda!32337)))

(declare-fun bs!259591 () Bool)

(declare-fun d!311907 () Bool)

(assert (= bs!259591 (and d!311907 start!94896)))

(declare-fun usesJsonRules!0 (PrintableTokens!382) Bool)

(assert (=> bs!259591 (= (dynLambda!4699 lambda!43549 (h!16063 lt!372664)) (usesJsonRules!0 (_2!6722 (h!16063 lt!372664))))))

(declare-fun m!1258625 () Bool)

(assert (=> bs!259591 m!1258625))

(assert (=> b!1102430 d!311907))

(declare-fun b_lambda!32339 () Bool)

(assert (= b_lambda!32331 (or b!1102334 b_lambda!32339)))

(declare-fun bs!259592 () Bool)

(declare-fun d!311909 () Bool)

(assert (= bs!259592 (and d!311909 b!1102334)))

(assert (=> bs!259592 (= (dynLambda!4699 lambda!43550 (h!16063 lt!372664)) (< (_1!6722 (h!16063 lt!372664)) (_1!6722 lt!372661)))))

(assert (=> b!1102463 d!311909))

(declare-fun b_lambda!32341 () Bool)

(assert (= b_lambda!32327 (or b!1102334 b_lambda!32341)))

(declare-fun bs!259593 () Bool)

(declare-fun d!311911 () Bool)

(assert (= bs!259593 (and d!311911 b!1102334)))

(assert (=> bs!259593 (= (dynLambda!4699 lambda!43550 lt!372661) (< (_1!6722 lt!372661) (_1!6722 lt!372661)))))

(assert (=> d!311843 d!311911))

(declare-fun b_lambda!32343 () Bool)

(assert (= b_lambda!32329 (or b!1102334 b_lambda!32343)))

(declare-fun bs!259594 () Bool)

(declare-fun d!311913 () Bool)

(assert (= bs!259594 (and d!311913 b!1102334)))

(assert (=> bs!259594 (= (dynLambda!4699 lambda!43552 lt!372661) (> (_1!6722 lt!372661) (_1!6722 lt!372661)))))

(assert (=> d!311861 d!311913))

(declare-fun b_lambda!32345 () Bool)

(assert (= b_lambda!32335 (or b!1102334 b_lambda!32345)))

(assert (=> d!311901 d!311911))

(declare-fun b_lambda!32347 () Bool)

(assert (= b_lambda!32333 (or b!1102334 b_lambda!32347)))

(declare-fun bs!259595 () Bool)

(declare-fun d!311915 () Bool)

(assert (= bs!259595 (and d!311915 b!1102334)))

(assert (=> bs!259595 (= (dynLambda!4699 lambda!43552 (h!16063 lt!372664)) (> (_1!6722 (h!16063 lt!372664)) (_1!6722 lt!372661)))))

(assert (=> b!1102473 d!311915))

(declare-fun b_lambda!32349 () Bool)

(assert (= b_lambda!32325 (or b!1102334 b_lambda!32349)))

(assert (=> d!311839 d!311913))

(push 1)

(assert (not d!311901))

(assert (not b!1102521))

(assert (not d!311867))

(assert (not b!1102504))

(assert (not d!311849))

(assert (not b!1102492))

(assert (not b!1102345))

(assert (not d!311827))

(assert (not b_lambda!32339))

(assert (not d!311893))

(assert (not b_lambda!32341))

(assert (not b!1102507))

(assert (not d!311857))

(assert (not d!311825))

(assert (not b!1102494))

(assert (not b!1102438))

(assert (not d!311837))

(assert (not d!311897))

(assert (not b!1102535))

(assert (not d!311879))

(assert (not b!1102538))

(assert (not d!311859))

(assert (not d!311861))

(assert (not d!311889))

(assert (not d!311851))

(assert (not d!311873))

(assert (not b!1102540))

(assert (not b_lambda!32345))

(assert (not b!1102478))

(assert (not b!1102484))

(assert (not b!1102431))

(assert (not b!1102520))

(assert (not d!311845))

(assert (not bm!80445))

(assert (not d!311831))

(assert (not b!1102524))

(assert (not d!311833))

(assert (not b!1102441))

(assert (not b!1102476))

(assert (not b!1102472))

(assert (not b!1102470))

(assert (not d!311877))

(assert (not b!1102437))

(assert (not d!311843))

(assert (not b!1102536))

(assert (not b!1102537))

(assert (not b!1102518))

(assert (not b!1102442))

(assert (not b_lambda!32343))

(assert (not d!311839))

(assert (not b!1102495))

(assert (not d!311881))

(assert (not d!311841))

(assert (not b_lambda!32347))

(assert (not bs!259591))

(assert (not b!1102479))

(assert (not d!311847))

(assert (not b!1102466))

(assert (not d!311855))

(assert (not b!1102448))

(assert (not d!311835))

(assert (not d!311891))

(assert (not b_lambda!32349))

(assert (not b!1102468))

(assert (not b!1102481))

(assert (not b!1102434))

(assert (not b!1102523))

(assert (not d!311895))

(assert (not bm!80444))

(assert (not b_lambda!32337))

(assert (not d!311875))

(assert (not b!1102485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

