; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64644 () Bool)

(assert start!64644)

(declare-fun b!661291 () Bool)

(declare-fun e!409039 () Bool)

(declare-datatypes ((List!7207 0))(
  ( (Nil!7193) (Cons!7193 (h!12594 (_ BitVec 16)) (t!86309 List!7207)) )
))
(declare-datatypes ((TokenValue!1490 0))(
  ( (FloatLiteralValue!2980 (text!10875 List!7207)) (TokenValueExt!1489 (__x!5074 Int)) (Broken!7450 (value!46621 List!7207)) (Object!1503) (End!1490) (Def!1490) (Underscore!1490) (Match!1490) (Else!1490) (Error!1490) (Case!1490) (If!1490) (Extends!1490) (Abstract!1490) (Class!1490) (Val!1490) (DelimiterValue!2980 (del!1550 List!7207)) (KeywordValue!1496 (value!46622 List!7207)) (CommentValue!2980 (value!46623 List!7207)) (WhitespaceValue!2980 (value!46624 List!7207)) (IndentationValue!1490 (value!46625 List!7207)) (String!9187) (Int32!1490) (Broken!7451 (value!46626 List!7207)) (Boolean!1491) (Unit!12492) (OperatorValue!1493 (op!1550 List!7207)) (IdentifierValue!2980 (value!46627 List!7207)) (IdentifierValue!2981 (value!46628 List!7207)) (WhitespaceValue!2981 (value!46629 List!7207)) (True!2980) (False!2980) (Broken!7452 (value!46630 List!7207)) (Broken!7453 (value!46631 List!7207)) (True!2981) (RightBrace!1490) (RightBracket!1490) (Colon!1490) (Null!1490) (Comma!1490) (LeftBracket!1490) (False!2981) (LeftBrace!1490) (ImaginaryLiteralValue!1490 (text!10876 List!7207)) (StringLiteralValue!4470 (value!46632 List!7207)) (EOFValue!1490 (value!46633 List!7207)) (IdentValue!1490 (value!46634 List!7207)) (DelimiterValue!2981 (value!46635 List!7207)) (DedentValue!1490 (value!46636 List!7207)) (NewLineValue!1490 (value!46637 List!7207)) (IntegerValue!4470 (value!46638 (_ BitVec 32)) (text!10877 List!7207)) (IntegerValue!4471 (value!46639 Int) (text!10878 List!7207)) (Times!1490) (Or!1490) (Equal!1490) (Minus!1490) (Broken!7454 (value!46640 List!7207)) (And!1490) (Div!1490) (LessEqual!1490) (Mod!1490) (Concat!3281) (Not!1490) (Plus!1490) (SpaceValue!1490 (value!46641 List!7207)) (IntegerValue!4472 (value!46642 Int) (text!10879 List!7207)) (StringLiteralValue!4471 (text!10880 List!7207)) (FloatLiteralValue!2981 (text!10881 List!7207)) (BytesLiteralValue!1490 (value!46643 List!7207)) (CommentValue!2981 (value!46644 List!7207)) (StringLiteralValue!4472 (value!46645 List!7207)) (ErrorTokenValue!1490 (msg!1551 List!7207)) )
))
(declare-datatypes ((Regex!1791 0))(
  ( (ElementMatch!1791 (c!119029 (_ BitVec 16))) (Concat!3282 (regOne!4094 Regex!1791) (regTwo!4094 Regex!1791)) (EmptyExpr!1791) (Star!1791 (reg!2120 Regex!1791)) (EmptyLang!1791) (Union!1791 (regOne!4095 Regex!1791) (regTwo!4095 Regex!1791)) )
))
(declare-datatypes ((String!9188 0))(
  ( (String!9189 (value!46646 String)) )
))
(declare-datatypes ((IArray!5107 0))(
  ( (IArray!5108 (innerList!2611 List!7207)) )
))
(declare-datatypes ((Conc!2553 0))(
  ( (Node!2553 (left!5830 Conc!2553) (right!6160 Conc!2553) (csize!5336 Int) (cheight!2764 Int)) (Leaf!3797 (xs!5202 IArray!5107) (csize!5337 Int)) (Empty!2553) )
))
(declare-datatypes ((BalanceConc!5118 0))(
  ( (BalanceConc!5119 (c!119030 Conc!2553)) )
))
(declare-datatypes ((TokenValueInjection!2732 0))(
  ( (TokenValueInjection!2733 (toValue!2397 Int) (toChars!2256 Int)) )
))
(declare-datatypes ((Rule!2712 0))(
  ( (Rule!2713 (regex!1456 Regex!1791) (tag!1718 String!9188) (isSeparator!1456 Bool) (transformation!1456 TokenValueInjection!2732)) )
))
(declare-datatypes ((Token!2634 0))(
  ( (Token!2635 (value!46647 TokenValue!1490) (rule!2251 Rule!2712) (size!5692 Int) (originalCharacters!1488 List!7207)) )
))
(declare-datatypes ((List!7208 0))(
  ( (Nil!7194) (Cons!7194 (h!12595 Token!2634) (t!86310 List!7208)) )
))
(declare-datatypes ((IArray!5109 0))(
  ( (IArray!5110 (innerList!2612 List!7208)) )
))
(declare-datatypes ((Conc!2554 0))(
  ( (Node!2554 (left!5831 Conc!2554) (right!6161 Conc!2554) (csize!5338 Int) (cheight!2765 Int)) (Leaf!3798 (xs!5203 IArray!5109) (csize!5339 Int)) (Empty!2554) )
))
(declare-datatypes ((List!7209 0))(
  ( (Nil!7195) (Cons!7195 (h!12596 Rule!2712) (t!86311 List!7209)) )
))
(declare-datatypes ((BalanceConc!5120 0))(
  ( (BalanceConc!5121 (c!119031 Conc!2554)) )
))
(declare-datatypes ((PrintableTokens!216 0))(
  ( (PrintableTokens!217 (rules!8303 List!7209) (tokens!1281 BalanceConc!5120)) )
))
(declare-datatypes ((List!7210 0))(
  ( (Nil!7196) (Cons!7196 (h!12597 PrintableTokens!216) (t!86312 List!7210)) )
))
(declare-fun s!1385 () List!7210)

(declare-fun tp!201718 () Bool)

(declare-fun inv!9242 (Conc!2554) Bool)

(assert (=> b!661291 (= e!409039 (and (inv!9242 (c!119031 (tokens!1281 (h!12597 s!1385)))) tp!201718))))

(declare-fun b!661288 () Bool)

(declare-fun e!409041 () Bool)

(declare-fun ListPrimitiveSize!54 (List!7210) Int)

(assert (=> b!661288 (= e!409041 (< (ListPrimitiveSize!54 s!1385) 0))))

(declare-fun tp!201716 () Bool)

(declare-fun e!409040 () Bool)

(declare-fun b!661289 () Bool)

(declare-fun e!409042 () Bool)

(declare-fun inv!9243 (PrintableTokens!216) Bool)

(assert (=> b!661289 (= e!409040 (and (inv!9243 (h!12597 s!1385)) e!409042 tp!201716))))

(declare-fun res!293420 () Bool)

(assert (=> start!64644 (=> (not res!293420) (not e!409041))))

(declare-fun lambda!20483 () Int)

(declare-fun forall!1904 (List!7210 Int) Bool)

(assert (=> start!64644 (= res!293420 (forall!1904 s!1385 lambda!20483))))

(assert (=> start!64644 e!409041))

(assert (=> start!64644 e!409040))

(declare-fun b!661290 () Bool)

(declare-fun tp!201717 () Bool)

(declare-fun inv!9244 (BalanceConc!5120) Bool)

(assert (=> b!661290 (= e!409042 (and tp!201717 (inv!9244 (tokens!1281 (h!12597 s!1385))) e!409039))))

(assert (= (and start!64644 res!293420) b!661288))

(assert (= b!661290 b!661291))

(assert (= b!661289 b!661290))

(get-info :version)

(assert (= (and start!64644 ((_ is Cons!7196) s!1385)) b!661289))

(declare-fun m!927661 () Bool)

(assert (=> b!661289 m!927661))

(declare-fun m!927663 () Bool)

(assert (=> b!661288 m!927663))

(declare-fun m!927665 () Bool)

(assert (=> start!64644 m!927665))

(declare-fun m!927667 () Bool)

(assert (=> b!661290 m!927667))

(declare-fun m!927669 () Bool)

(assert (=> b!661291 m!927669))

(check-sat (not start!64644) (not b!661290) (not b!661289) (not b!661291) (not b!661288))
(check-sat)
(get-model)

(declare-fun d!226066 () Bool)

(declare-fun lt!282100 () Int)

(assert (=> d!226066 (>= lt!282100 0)))

(declare-fun e!409045 () Int)

(assert (=> d!226066 (= lt!282100 e!409045)))

(declare-fun c!119034 () Bool)

(assert (=> d!226066 (= c!119034 ((_ is Nil!7196) s!1385))))

(assert (=> d!226066 (= (ListPrimitiveSize!54 s!1385) lt!282100)))

(declare-fun b!661296 () Bool)

(assert (=> b!661296 (= e!409045 0)))

(declare-fun b!661297 () Bool)

(assert (=> b!661297 (= e!409045 (+ 1 (ListPrimitiveSize!54 (t!86312 s!1385))))))

(assert (= (and d!226066 c!119034) b!661296))

(assert (= (and d!226066 (not c!119034)) b!661297))

(declare-fun m!927673 () Bool)

(assert (=> b!661297 m!927673))

(assert (=> b!661288 d!226066))

(declare-fun d!226072 () Bool)

(declare-fun res!293430 () Bool)

(declare-fun e!409057 () Bool)

(assert (=> d!226072 (=> (not res!293430) (not e!409057))))

(declare-fun isEmpty!4795 (List!7209) Bool)

(assert (=> d!226072 (= res!293430 (not (isEmpty!4795 (rules!8303 (h!12597 s!1385)))))))

(assert (=> d!226072 (= (inv!9243 (h!12597 s!1385)) e!409057)))

(declare-fun b!661319 () Bool)

(declare-fun res!293431 () Bool)

(assert (=> b!661319 (=> (not res!293431) (not e!409057))))

(declare-datatypes ((LexerInterface!1275 0))(
  ( (LexerInterfaceExt!1272 (__x!5075 Int)) (Lexer!1273) )
))
(declare-fun rulesInvariant!1210 (LexerInterface!1275 List!7209) Bool)

(assert (=> b!661319 (= res!293431 (rulesInvariant!1210 Lexer!1273 (rules!8303 (h!12597 s!1385))))))

(declare-fun b!661320 () Bool)

(declare-fun res!293432 () Bool)

(assert (=> b!661320 (=> (not res!293432) (not e!409057))))

(declare-fun rulesProduceEachTokenIndividually!593 (LexerInterface!1275 List!7209 BalanceConc!5120) Bool)

(assert (=> b!661320 (= res!293432 (rulesProduceEachTokenIndividually!593 Lexer!1273 (rules!8303 (h!12597 s!1385)) (tokens!1281 (h!12597 s!1385))))))

(declare-fun b!661321 () Bool)

(declare-fun separableTokens!43 (LexerInterface!1275 BalanceConc!5120 List!7209) Bool)

(assert (=> b!661321 (= e!409057 (separableTokens!43 Lexer!1273 (tokens!1281 (h!12597 s!1385)) (rules!8303 (h!12597 s!1385))))))

(assert (= (and d!226072 res!293430) b!661319))

(assert (= (and b!661319 res!293431) b!661320))

(assert (= (and b!661320 res!293432) b!661321))

(declare-fun m!927681 () Bool)

(assert (=> d!226072 m!927681))

(declare-fun m!927683 () Bool)

(assert (=> b!661319 m!927683))

(declare-fun m!927685 () Bool)

(assert (=> b!661320 m!927685))

(declare-fun m!927687 () Bool)

(assert (=> b!661321 m!927687))

(assert (=> b!661289 d!226072))

(declare-fun d!226078 () Bool)

(declare-fun res!293443 () Bool)

(declare-fun e!409064 () Bool)

(assert (=> d!226078 (=> res!293443 e!409064)))

(assert (=> d!226078 (= res!293443 ((_ is Nil!7196) s!1385))))

(assert (=> d!226078 (= (forall!1904 s!1385 lambda!20483) e!409064)))

(declare-fun b!661332 () Bool)

(declare-fun e!409065 () Bool)

(assert (=> b!661332 (= e!409064 e!409065)))

(declare-fun res!293444 () Bool)

(assert (=> b!661332 (=> (not res!293444) (not e!409065))))

(declare-fun dynLambda!3808 (Int PrintableTokens!216) Bool)

(assert (=> b!661332 (= res!293444 (dynLambda!3808 lambda!20483 (h!12597 s!1385)))))

(declare-fun b!661333 () Bool)

(assert (=> b!661333 (= e!409065 (forall!1904 (t!86312 s!1385) lambda!20483))))

(assert (= (and d!226078 (not res!293443)) b!661332))

(assert (= (and b!661332 res!293444) b!661333))

(declare-fun b_lambda!25709 () Bool)

(assert (=> (not b_lambda!25709) (not b!661332)))

(declare-fun m!927689 () Bool)

(assert (=> b!661332 m!927689))

(declare-fun m!927691 () Bool)

(assert (=> b!661333 m!927691))

(assert (=> start!64644 d!226078))

(declare-fun d!226080 () Bool)

(declare-fun isBalanced!668 (Conc!2554) Bool)

(assert (=> d!226080 (= (inv!9244 (tokens!1281 (h!12597 s!1385))) (isBalanced!668 (c!119031 (tokens!1281 (h!12597 s!1385)))))))

(declare-fun bs!94460 () Bool)

(assert (= bs!94460 d!226080))

(declare-fun m!927701 () Bool)

(assert (=> bs!94460 m!927701))

(assert (=> b!661290 d!226080))

(declare-fun d!226084 () Bool)

(declare-fun c!119043 () Bool)

(assert (=> d!226084 (= c!119043 ((_ is Node!2554) (c!119031 (tokens!1281 (h!12597 s!1385)))))))

(declare-fun e!409085 () Bool)

(assert (=> d!226084 (= (inv!9242 (c!119031 (tokens!1281 (h!12597 s!1385)))) e!409085)))

(declare-fun b!661357 () Bool)

(declare-fun inv!9247 (Conc!2554) Bool)

(assert (=> b!661357 (= e!409085 (inv!9247 (c!119031 (tokens!1281 (h!12597 s!1385)))))))

(declare-fun b!661358 () Bool)

(declare-fun e!409086 () Bool)

(assert (=> b!661358 (= e!409085 e!409086)))

(declare-fun res!293456 () Bool)

(assert (=> b!661358 (= res!293456 (not ((_ is Leaf!3798) (c!119031 (tokens!1281 (h!12597 s!1385))))))))

(assert (=> b!661358 (=> res!293456 e!409086)))

(declare-fun b!661359 () Bool)

(declare-fun inv!9248 (Conc!2554) Bool)

(assert (=> b!661359 (= e!409086 (inv!9248 (c!119031 (tokens!1281 (h!12597 s!1385)))))))

(assert (= (and d!226084 c!119043) b!661357))

(assert (= (and d!226084 (not c!119043)) b!661358))

(assert (= (and b!661358 (not res!293456)) b!661359))

(declare-fun m!927707 () Bool)

(assert (=> b!661357 m!927707))

(declare-fun m!927709 () Bool)

(assert (=> b!661359 m!927709))

(assert (=> b!661291 d!226084))

(declare-fun b!661388 () Bool)

(declare-fun e!409106 () Bool)

(declare-fun tp!201743 () Bool)

(assert (=> b!661388 (= e!409106 (and (inv!9242 (c!119031 (tokens!1281 (h!12597 (t!86312 s!1385))))) tp!201743))))

(declare-fun e!409107 () Bool)

(declare-fun tp!201745 () Bool)

(declare-fun b!661387 () Bool)

(assert (=> b!661387 (= e!409107 (and tp!201745 (inv!9244 (tokens!1281 (h!12597 (t!86312 s!1385)))) e!409106))))

(declare-fun e!409105 () Bool)

(declare-fun tp!201744 () Bool)

(declare-fun b!661386 () Bool)

(assert (=> b!661386 (= e!409105 (and (inv!9243 (h!12597 (t!86312 s!1385))) e!409107 tp!201744))))

(assert (=> b!661289 (= tp!201716 e!409105)))

(assert (= b!661387 b!661388))

(assert (= b!661386 b!661387))

(assert (= (and b!661289 ((_ is Cons!7196) (t!86312 s!1385))) b!661386))

(declare-fun m!927721 () Bool)

(assert (=> b!661388 m!927721))

(declare-fun m!927723 () Bool)

(assert (=> b!661387 m!927723))

(declare-fun m!927725 () Bool)

(assert (=> b!661386 m!927725))

(declare-fun b!661406 () Bool)

(declare-fun b_free!19097 () Bool)

(declare-fun b_next!19161 () Bool)

(assert (=> b!661406 (= b_free!19097 (not b_next!19161))))

(declare-fun tp!201762 () Bool)

(declare-fun b_and!62891 () Bool)

(assert (=> b!661406 (= tp!201762 b_and!62891)))

(declare-fun b_free!19099 () Bool)

(declare-fun b_next!19163 () Bool)

(assert (=> b!661406 (= b_free!19099 (not b_next!19163))))

(declare-fun tp!201761 () Bool)

(declare-fun b_and!62893 () Bool)

(assert (=> b!661406 (= tp!201761 b_and!62893)))

(declare-fun e!409123 () Bool)

(assert (=> b!661406 (= e!409123 (and tp!201762 tp!201761))))

(declare-fun b!661405 () Bool)

(declare-fun e!409124 () Bool)

(declare-fun inv!9238 (String!9188) Bool)

(declare-fun inv!9249 (TokenValueInjection!2732) Bool)

(assert (=> b!661405 (= e!409124 (and (inv!9238 (tag!1718 (h!12596 (rules!8303 (h!12597 s!1385))))) (inv!9249 (transformation!1456 (h!12596 (rules!8303 (h!12597 s!1385))))) e!409123))))

(declare-fun b!661404 () Bool)

(declare-fun e!409125 () Bool)

(declare-fun tp!201763 () Bool)

(assert (=> b!661404 (= e!409125 (and e!409124 tp!201763))))

(assert (=> b!661290 (= tp!201717 e!409125)))

(assert (= b!661405 b!661406))

(assert (= b!661404 b!661405))

(assert (= (and b!661290 ((_ is Cons!7195) (rules!8303 (h!12597 s!1385)))) b!661404))

(declare-fun m!927735 () Bool)

(assert (=> b!661405 m!927735))

(declare-fun m!927737 () Bool)

(assert (=> b!661405 m!927737))

(declare-fun tp!201770 () Bool)

(declare-fun e!409132 () Bool)

(declare-fun b!661415 () Bool)

(declare-fun tp!201772 () Bool)

(assert (=> b!661415 (= e!409132 (and (inv!9242 (left!5831 (c!119031 (tokens!1281 (h!12597 s!1385))))) tp!201770 (inv!9242 (right!6161 (c!119031 (tokens!1281 (h!12597 s!1385))))) tp!201772))))

(declare-fun b!661417 () Bool)

(declare-fun e!409131 () Bool)

(declare-fun tp!201771 () Bool)

(assert (=> b!661417 (= e!409131 tp!201771)))

(declare-fun b!661416 () Bool)

(declare-fun inv!9250 (IArray!5109) Bool)

(assert (=> b!661416 (= e!409132 (and (inv!9250 (xs!5203 (c!119031 (tokens!1281 (h!12597 s!1385))))) e!409131))))

(assert (=> b!661291 (= tp!201718 (and (inv!9242 (c!119031 (tokens!1281 (h!12597 s!1385)))) e!409132))))

(assert (= (and b!661291 ((_ is Node!2554) (c!119031 (tokens!1281 (h!12597 s!1385))))) b!661415))

(assert (= b!661416 b!661417))

(assert (= (and b!661291 ((_ is Leaf!3798) (c!119031 (tokens!1281 (h!12597 s!1385))))) b!661416))

(declare-fun m!927739 () Bool)

(assert (=> b!661415 m!927739))

(declare-fun m!927741 () Bool)

(assert (=> b!661415 m!927741))

(declare-fun m!927743 () Bool)

(assert (=> b!661416 m!927743))

(assert (=> b!661291 m!927669))

(declare-fun b_lambda!25715 () Bool)

(assert (= b_lambda!25709 (or start!64644 b_lambda!25715)))

(declare-fun bs!94462 () Bool)

(declare-fun d!226088 () Bool)

(assert (= bs!94462 (and d!226088 start!64644)))

(declare-fun usesJsonRules!0 (PrintableTokens!216) Bool)

(assert (=> bs!94462 (= (dynLambda!3808 lambda!20483 (h!12597 s!1385)) (usesJsonRules!0 (h!12597 s!1385)))))

(declare-fun m!927745 () Bool)

(assert (=> bs!94462 m!927745))

(assert (=> b!661332 d!226088))

(check-sat b_and!62893 (not b_next!19161) (not b!661404) (not b!661320) (not b!661417) (not b_lambda!25715) (not b!661291) (not d!226080) (not d!226072) (not b!661386) (not b!661333) (not b!661297) (not b!661387) (not b!661357) (not b_next!19163) (not b!661388) (not b!661319) (not b!661321) b_and!62891 (not b!661405) (not bs!94462) (not b!661415) (not b!661416) (not b!661359))
(check-sat b_and!62893 b_and!62891 (not b_next!19161) (not b_next!19163))
