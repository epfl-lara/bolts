; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64696 () Bool)

(assert start!64696)

(declare-fun bs!94476 () Bool)

(declare-fun b!661698 () Bool)

(assert (= bs!94476 (and b!661698 start!64696)))

(declare-fun lambda!20507 () Int)

(declare-fun lambda!20506 () Int)

(assert (=> bs!94476 (not (= lambda!20507 lambda!20506))))

(declare-fun res!293541 () Bool)

(declare-fun e!409339 () Bool)

(assert (=> start!64696 (=> (not res!293541) (not e!409339))))

(declare-datatypes ((List!7227 0))(
  ( (Nil!7213) (Cons!7213 (h!12614 (_ BitVec 16)) (t!86329 List!7227)) )
))
(declare-datatypes ((TokenValue!1495 0))(
  ( (FloatLiteralValue!2990 (text!10910 List!7227)) (TokenValueExt!1494 (__x!5083 Int)) (Broken!7475 (value!46765 List!7227)) (Object!1508) (End!1495) (Def!1495) (Underscore!1495) (Match!1495) (Else!1495) (Error!1495) (Case!1495) (If!1495) (Extends!1495) (Abstract!1495) (Class!1495) (Val!1495) (DelimiterValue!2990 (del!1555 List!7227)) (KeywordValue!1501 (value!46766 List!7227)) (CommentValue!2990 (value!46767 List!7227)) (WhitespaceValue!2990 (value!46768 List!7227)) (IndentationValue!1495 (value!46769 List!7227)) (String!9214) (Int32!1495) (Broken!7476 (value!46770 List!7227)) (Boolean!1496) (Unit!12497) (OperatorValue!1498 (op!1555 List!7227)) (IdentifierValue!2990 (value!46771 List!7227)) (IdentifierValue!2991 (value!46772 List!7227)) (WhitespaceValue!2991 (value!46773 List!7227)) (True!2990) (False!2990) (Broken!7477 (value!46774 List!7227)) (Broken!7478 (value!46775 List!7227)) (True!2991) (RightBrace!1495) (RightBracket!1495) (Colon!1495) (Null!1495) (Comma!1495) (LeftBracket!1495) (False!2991) (LeftBrace!1495) (ImaginaryLiteralValue!1495 (text!10911 List!7227)) (StringLiteralValue!4485 (value!46776 List!7227)) (EOFValue!1495 (value!46777 List!7227)) (IdentValue!1495 (value!46778 List!7227)) (DelimiterValue!2991 (value!46779 List!7227)) (DedentValue!1495 (value!46780 List!7227)) (NewLineValue!1495 (value!46781 List!7227)) (IntegerValue!4485 (value!46782 (_ BitVec 32)) (text!10912 List!7227)) (IntegerValue!4486 (value!46783 Int) (text!10913 List!7227)) (Times!1495) (Or!1495) (Equal!1495) (Minus!1495) (Broken!7479 (value!46784 List!7227)) (And!1495) (Div!1495) (LessEqual!1495) (Mod!1495) (Concat!3291) (Not!1495) (Plus!1495) (SpaceValue!1495 (value!46785 List!7227)) (IntegerValue!4487 (value!46786 Int) (text!10914 List!7227)) (StringLiteralValue!4486 (text!10915 List!7227)) (FloatLiteralValue!2991 (text!10916 List!7227)) (BytesLiteralValue!1495 (value!46787 List!7227)) (CommentValue!2991 (value!46788 List!7227)) (StringLiteralValue!4487 (value!46789 List!7227)) (ErrorTokenValue!1495 (msg!1556 List!7227)) )
))
(declare-datatypes ((Regex!1796 0))(
  ( (ElementMatch!1796 (c!119066 (_ BitVec 16))) (Concat!3292 (regOne!4104 Regex!1796) (regTwo!4104 Regex!1796)) (EmptyExpr!1796) (Star!1796 (reg!2125 Regex!1796)) (EmptyLang!1796) (Union!1796 (regOne!4105 Regex!1796) (regTwo!4105 Regex!1796)) )
))
(declare-datatypes ((String!9215 0))(
  ( (String!9216 (value!46790 String)) )
))
(declare-datatypes ((IArray!5127 0))(
  ( (IArray!5128 (innerList!2621 List!7227)) )
))
(declare-datatypes ((Conc!2563 0))(
  ( (Node!2563 (left!5843 Conc!2563) (right!6173 Conc!2563) (csize!5356 Int) (cheight!2774 Int)) (Leaf!3810 (xs!5212 IArray!5127) (csize!5357 Int)) (Empty!2563) )
))
(declare-datatypes ((BalanceConc!5138 0))(
  ( (BalanceConc!5139 (c!119067 Conc!2563)) )
))
(declare-datatypes ((TokenValueInjection!2742 0))(
  ( (TokenValueInjection!2743 (toValue!2402 Int) (toChars!2261 Int)) )
))
(declare-datatypes ((Rule!2722 0))(
  ( (Rule!2723 (regex!1461 Regex!1796) (tag!1723 String!9215) (isSeparator!1461 Bool) (transformation!1461 TokenValueInjection!2742)) )
))
(declare-datatypes ((Token!2644 0))(
  ( (Token!2645 (value!46791 TokenValue!1495) (rule!2256 Rule!2722) (size!5697 Int) (originalCharacters!1493 List!7227)) )
))
(declare-datatypes ((List!7228 0))(
  ( (Nil!7214) (Cons!7214 (h!12615 Token!2644) (t!86330 List!7228)) )
))
(declare-datatypes ((IArray!5129 0))(
  ( (IArray!5130 (innerList!2622 List!7228)) )
))
(declare-datatypes ((Conc!2564 0))(
  ( (Node!2564 (left!5844 Conc!2564) (right!6174 Conc!2564) (csize!5358 Int) (cheight!2775 Int)) (Leaf!3811 (xs!5213 IArray!5129) (csize!5359 Int)) (Empty!2564) )
))
(declare-datatypes ((List!7229 0))(
  ( (Nil!7215) (Cons!7215 (h!12616 Rule!2722) (t!86331 List!7229)) )
))
(declare-datatypes ((BalanceConc!5140 0))(
  ( (BalanceConc!5141 (c!119068 Conc!2564)) )
))
(declare-datatypes ((PrintableTokens!226 0))(
  ( (PrintableTokens!227 (rules!8308 List!7229) (tokens!1286 BalanceConc!5140)) )
))
(declare-datatypes ((List!7230 0))(
  ( (Nil!7216) (Cons!7216 (h!12617 PrintableTokens!226) (t!86332 List!7230)) )
))
(declare-fun s!1385 () List!7230)

(declare-fun forall!1909 (List!7230 Int) Bool)

(assert (=> start!64696 (= res!293541 (forall!1909 s!1385 lambda!20506))))

(assert (=> start!64696 e!409339))

(declare-fun e!409342 () Bool)

(assert (=> start!64696 e!409342))

(declare-fun e!409340 () Bool)

(declare-fun tp!201923 () Bool)

(declare-fun b!661696 () Bool)

(declare-fun e!409341 () Bool)

(declare-fun inv!9282 (BalanceConc!5140) Bool)

(assert (=> b!661696 (= e!409341 (and tp!201923 (inv!9282 (tokens!1286 (h!12617 s!1385))) e!409340))))

(declare-fun b!661697 () Bool)

(declare-fun tp!201924 () Bool)

(declare-fun inv!9283 (Conc!2564) Bool)

(assert (=> b!661697 (= e!409340 (and (inv!9283 (c!119068 (tokens!1286 (h!12617 s!1385)))) tp!201924))))

(assert (=> b!661698 (= e!409339 (not (forall!1909 s!1385 lambda!20507)))))

(declare-datatypes ((Unit!12498 0))(
  ( (Unit!12499) )
))
(declare-fun lt!282110 () Unit!12498)

(declare-fun lemmaAddIdsPreservesRules!0 (List!7230) Unit!12498)

(assert (=> b!661698 (= lt!282110 (lemmaAddIdsPreservesRules!0 (t!86332 s!1385)))))

(declare-fun b!661699 () Bool)

(declare-fun res!293542 () Bool)

(assert (=> b!661699 (=> (not res!293542) (not e!409339))))

(assert (=> b!661699 (= res!293542 (not (is-Nil!7216 s!1385)))))

(declare-fun tp!201925 () Bool)

(declare-fun b!661700 () Bool)

(declare-fun inv!9284 (PrintableTokens!226) Bool)

(assert (=> b!661700 (= e!409342 (and (inv!9284 (h!12617 s!1385)) e!409341 tp!201925))))

(assert (= (and start!64696 res!293541) b!661699))

(assert (= (and b!661699 res!293542) b!661698))

(assert (= b!661696 b!661697))

(assert (= b!661700 b!661696))

(assert (= (and start!64696 (is-Cons!7216 s!1385)) b!661700))

(declare-fun m!927873 () Bool)

(assert (=> start!64696 m!927873))

(declare-fun m!927875 () Bool)

(assert (=> b!661698 m!927875))

(declare-fun m!927877 () Bool)

(assert (=> b!661698 m!927877))

(declare-fun m!927879 () Bool)

(assert (=> b!661696 m!927879))

(declare-fun m!927881 () Bool)

(assert (=> b!661697 m!927881))

(declare-fun m!927883 () Bool)

(assert (=> b!661700 m!927883))

(push 1)

(assert (not b!661700))

(assert (not b!661698))

(assert (not start!64696))

(assert (not b!661696))

(assert (not b!661697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226125 () Bool)

(declare-fun res!293561 () Bool)

(declare-fun e!409366 () Bool)

(assert (=> d!226125 (=> (not res!293561) (not e!409366))))

(declare-fun isEmpty!4799 (List!7229) Bool)

(assert (=> d!226125 (= res!293561 (not (isEmpty!4799 (rules!8308 (h!12617 s!1385)))))))

(assert (=> d!226125 (= (inv!9284 (h!12617 s!1385)) e!409366)))

(declare-fun b!661734 () Bool)

(declare-fun res!293562 () Bool)

(assert (=> b!661734 (=> (not res!293562) (not e!409366))))

(declare-datatypes ((LexerInterface!1279 0))(
  ( (LexerInterfaceExt!1276 (__x!5085 Int)) (Lexer!1277) )
))
(declare-fun rulesInvariant!1214 (LexerInterface!1279 List!7229) Bool)

(assert (=> b!661734 (= res!293562 (rulesInvariant!1214 Lexer!1277 (rules!8308 (h!12617 s!1385))))))

(declare-fun b!661735 () Bool)

(declare-fun res!293563 () Bool)

(assert (=> b!661735 (=> (not res!293563) (not e!409366))))

(declare-fun rulesProduceEachTokenIndividually!597 (LexerInterface!1279 List!7229 BalanceConc!5140) Bool)

(assert (=> b!661735 (= res!293563 (rulesProduceEachTokenIndividually!597 Lexer!1277 (rules!8308 (h!12617 s!1385)) (tokens!1286 (h!12617 s!1385))))))

(declare-fun b!661736 () Bool)

(declare-fun separableTokens!47 (LexerInterface!1279 BalanceConc!5140 List!7229) Bool)

(assert (=> b!661736 (= e!409366 (separableTokens!47 Lexer!1277 (tokens!1286 (h!12617 s!1385)) (rules!8308 (h!12617 s!1385))))))

(assert (= (and d!226125 res!293561) b!661734))

(assert (= (and b!661734 res!293562) b!661735))

(assert (= (and b!661735 res!293563) b!661736))

(declare-fun m!927907 () Bool)

(assert (=> d!226125 m!927907))

(declare-fun m!927909 () Bool)

(assert (=> b!661734 m!927909))

(declare-fun m!927911 () Bool)

(assert (=> b!661735 m!927911))

(declare-fun m!927913 () Bool)

(assert (=> b!661736 m!927913))

(assert (=> b!661700 d!226125))

(declare-fun d!226133 () Bool)

(declare-fun res!293568 () Bool)

(declare-fun e!409371 () Bool)

(assert (=> d!226133 (=> res!293568 e!409371)))

(assert (=> d!226133 (= res!293568 (is-Nil!7216 s!1385))))

(assert (=> d!226133 (= (forall!1909 s!1385 lambda!20507) e!409371)))

(declare-fun b!661741 () Bool)

(declare-fun e!409372 () Bool)

(assert (=> b!661741 (= e!409371 e!409372)))

(declare-fun res!293569 () Bool)

(assert (=> b!661741 (=> (not res!293569) (not e!409372))))

(declare-fun dynLambda!3812 (Int PrintableTokens!226) Bool)

(assert (=> b!661741 (= res!293569 (dynLambda!3812 lambda!20507 (h!12617 s!1385)))))

(declare-fun b!661742 () Bool)

(assert (=> b!661742 (= e!409372 (forall!1909 (t!86332 s!1385) lambda!20507))))

(assert (= (and d!226133 (not res!293568)) b!661741))

(assert (= (and b!661741 res!293569) b!661742))

(declare-fun b_lambda!25731 () Bool)

(assert (=> (not b_lambda!25731) (not b!661741)))

(declare-fun m!927915 () Bool)

(assert (=> b!661741 m!927915))

(declare-fun m!927917 () Bool)

(assert (=> b!661742 m!927917))

(assert (=> b!661698 d!226133))

(declare-fun bs!94480 () Bool)

(declare-fun d!226135 () Bool)

(assert (= bs!94480 (and d!226135 start!64696)))

(declare-fun lambda!20524 () Int)

(assert (=> bs!94480 (= lambda!20524 lambda!20506)))

(declare-fun bs!94481 () Bool)

(assert (= bs!94481 (and d!226135 b!661698)))

(assert (=> bs!94481 (not (= lambda!20524 lambda!20507))))

(declare-fun lambda!20525 () Int)

(assert (=> bs!94480 (not (= lambda!20525 lambda!20506))))

(assert (=> bs!94481 (= lambda!20525 lambda!20507)))

(assert (=> d!226135 (not (= lambda!20525 lambda!20524))))

(assert (=> d!226135 (forall!1909 (t!86332 s!1385) lambda!20525)))

(declare-fun lt!282124 () Unit!12498)

(declare-fun e!409375 () Unit!12498)

(assert (=> d!226135 (= lt!282124 e!409375)))

(declare-fun c!119077 () Bool)

(assert (=> d!226135 (= c!119077 (is-Nil!7216 (t!86332 s!1385)))))

(assert (=> d!226135 (forall!1909 (t!86332 s!1385) lambda!20524)))

(assert (=> d!226135 (= (lemmaAddIdsPreservesRules!0 (t!86332 s!1385)) lt!282124)))

(declare-fun b!661747 () Bool)

(declare-fun Unit!12503 () Unit!12498)

(assert (=> b!661747 (= e!409375 Unit!12503)))

(declare-fun b!661748 () Bool)

(declare-fun Unit!12504 () Unit!12498)

(assert (=> b!661748 (= e!409375 Unit!12504)))

(declare-fun lt!282125 () Unit!12498)

(assert (=> b!661748 (= lt!282125 (lemmaAddIdsPreservesRules!0 (t!86332 (t!86332 s!1385))))))

(assert (= (and d!226135 c!119077) b!661747))

(assert (= (and d!226135 (not c!119077)) b!661748))

(declare-fun m!927919 () Bool)

(assert (=> d!226135 m!927919))

(declare-fun m!927921 () Bool)

(assert (=> d!226135 m!927921))

(declare-fun m!927923 () Bool)

(assert (=> b!661748 m!927923))

(assert (=> b!661698 d!226135))

(declare-fun d!226137 () Bool)

(declare-fun res!293570 () Bool)

(declare-fun e!409376 () Bool)

(assert (=> d!226137 (=> res!293570 e!409376)))

(assert (=> d!226137 (= res!293570 (is-Nil!7216 s!1385))))

(assert (=> d!226137 (= (forall!1909 s!1385 lambda!20506) e!409376)))

(declare-fun b!661749 () Bool)

(declare-fun e!409377 () Bool)

(assert (=> b!661749 (= e!409376 e!409377)))

(declare-fun res!293571 () Bool)

(assert (=> b!661749 (=> (not res!293571) (not e!409377))))

(assert (=> b!661749 (= res!293571 (dynLambda!3812 lambda!20506 (h!12617 s!1385)))))

(declare-fun b!661750 () Bool)

(assert (=> b!661750 (= e!409377 (forall!1909 (t!86332 s!1385) lambda!20506))))

(assert (= (and d!226137 (not res!293570)) b!661749))

(assert (= (and b!661749 res!293571) b!661750))

(declare-fun b_lambda!25733 () Bool)

(assert (=> (not b_lambda!25733) (not b!661749)))

(declare-fun m!927925 () Bool)

(assert (=> b!661749 m!927925))

(declare-fun m!927927 () Bool)

(assert (=> b!661750 m!927927))

(assert (=> start!64696 d!226137))

(declare-fun d!226139 () Bool)

(declare-fun c!119080 () Bool)

(assert (=> d!226139 (= c!119080 (is-Node!2564 (c!119068 (tokens!1286 (h!12617 s!1385)))))))

(declare-fun e!409382 () Bool)

(assert (=> d!226139 (= (inv!9283 (c!119068 (tokens!1286 (h!12617 s!1385)))) e!409382)))

(declare-fun b!661757 () Bool)

(declare-fun inv!9288 (Conc!2564) Bool)

(assert (=> b!661757 (= e!409382 (inv!9288 (c!119068 (tokens!1286 (h!12617 s!1385)))))))

(declare-fun b!661758 () Bool)

(declare-fun e!409383 () Bool)

(assert (=> b!661758 (= e!409382 e!409383)))

(declare-fun res!293574 () Bool)

(assert (=> b!661758 (= res!293574 (not (is-Leaf!3811 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(assert (=> b!661758 (=> res!293574 e!409383)))

(declare-fun b!661759 () Bool)

(declare-fun inv!9289 (Conc!2564) Bool)

(assert (=> b!661759 (= e!409383 (inv!9289 (c!119068 (tokens!1286 (h!12617 s!1385)))))))

(assert (= (and d!226139 c!119080) b!661757))

(assert (= (and d!226139 (not c!119080)) b!661758))

(assert (= (and b!661758 (not res!293574)) b!661759))

(declare-fun m!927929 () Bool)

(assert (=> b!661757 m!927929))

(declare-fun m!927931 () Bool)

(assert (=> b!661759 m!927931))

(assert (=> b!661697 d!226139))

(declare-fun d!226141 () Bool)

(declare-fun isBalanced!671 (Conc!2564) Bool)

(assert (=> d!226141 (= (inv!9282 (tokens!1286 (h!12617 s!1385))) (isBalanced!671 (c!119068 (tokens!1286 (h!12617 s!1385)))))))

(declare-fun bs!94482 () Bool)

(assert (= bs!94482 d!226141))

(declare-fun m!927933 () Bool)

(assert (=> bs!94482 m!927933))

(assert (=> b!661696 d!226141))

(declare-fun b!661770 () Bool)

(declare-fun e!409391 () Bool)

(declare-fun tp!201942 () Bool)

(assert (=> b!661770 (= e!409391 (and (inv!9283 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))) tp!201942))))

(declare-fun e!409390 () Bool)

(declare-fun b!661769 () Bool)

(declare-fun tp!201943 () Bool)

(assert (=> b!661769 (= e!409390 (and tp!201943 (inv!9282 (tokens!1286 (h!12617 (t!86332 s!1385)))) e!409391))))

(declare-fun e!409392 () Bool)

(declare-fun tp!201941 () Bool)

(declare-fun b!661768 () Bool)

(assert (=> b!661768 (= e!409392 (and (inv!9284 (h!12617 (t!86332 s!1385))) e!409390 tp!201941))))

(assert (=> b!661700 (= tp!201925 e!409392)))

(assert (= b!661769 b!661770))

(assert (= b!661768 b!661769))

(assert (= (and b!661700 (is-Cons!7216 (t!86332 s!1385))) b!661768))

(declare-fun m!927935 () Bool)

(assert (=> b!661770 m!927935))

(declare-fun m!927937 () Bool)

(assert (=> b!661769 m!927937))

(declare-fun m!927939 () Bool)

(assert (=> b!661768 m!927939))

(declare-fun e!409397 () Bool)

(declare-fun tp!201950 () Bool)

(declare-fun b!661779 () Bool)

(declare-fun tp!201952 () Bool)

(assert (=> b!661779 (= e!409397 (and (inv!9283 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) tp!201952 (inv!9283 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))) tp!201950))))

(declare-fun b!661781 () Bool)

(declare-fun e!409398 () Bool)

(declare-fun tp!201951 () Bool)

(assert (=> b!661781 (= e!409398 tp!201951)))

(declare-fun b!661780 () Bool)

(declare-fun inv!9290 (IArray!5129) Bool)

(assert (=> b!661780 (= e!409397 (and (inv!9290 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))) e!409398))))

(assert (=> b!661697 (= tp!201924 (and (inv!9283 (c!119068 (tokens!1286 (h!12617 s!1385)))) e!409397))))

(assert (= (and b!661697 (is-Node!2564 (c!119068 (tokens!1286 (h!12617 s!1385))))) b!661779))

(assert (= b!661780 b!661781))

(assert (= (and b!661697 (is-Leaf!3811 (c!119068 (tokens!1286 (h!12617 s!1385))))) b!661780))

(declare-fun m!927941 () Bool)

(assert (=> b!661779 m!927941))

(declare-fun m!927943 () Bool)

(assert (=> b!661779 m!927943))

(declare-fun m!927945 () Bool)

(assert (=> b!661780 m!927945))

(assert (=> b!661697 m!927881))

(declare-fun b!661792 () Bool)

(declare-fun b_free!19109 () Bool)

(declare-fun b_next!19173 () Bool)

(assert (=> b!661792 (= b_free!19109 (not b_next!19173))))

(declare-fun tp!201959 () Bool)

(declare-fun b_and!62903 () Bool)

(assert (=> b!661792 (= tp!201959 b_and!62903)))

(declare-fun b_free!19111 () Bool)

(declare-fun b_next!19175 () Bool)

(assert (=> b!661792 (= b_free!19111 (not b_next!19175))))

(declare-fun tp!201960 () Bool)

(declare-fun b_and!62905 () Bool)

(assert (=> b!661792 (= tp!201960 b_and!62905)))

(declare-fun e!409408 () Bool)

(assert (=> b!661792 (= e!409408 (and tp!201959 tp!201960))))

(declare-fun b!661791 () Bool)

(declare-fun e!409410 () Bool)

(declare-fun inv!9279 (String!9215) Bool)

(declare-fun inv!9291 (TokenValueInjection!2742) Bool)

(assert (=> b!661791 (= e!409410 (and (inv!9279 (tag!1723 (h!12616 (rules!8308 (h!12617 s!1385))))) (inv!9291 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385))))) e!409408))))

(declare-fun b!661790 () Bool)

(declare-fun e!409409 () Bool)

(declare-fun tp!201961 () Bool)

(assert (=> b!661790 (= e!409409 (and e!409410 tp!201961))))

(assert (=> b!661696 (= tp!201923 e!409409)))

(assert (= b!661791 b!661792))

(assert (= b!661790 b!661791))

(assert (= (and b!661696 (is-Cons!7215 (rules!8308 (h!12617 s!1385)))) b!661790))

(declare-fun m!927947 () Bool)

(assert (=> b!661791 m!927947))

(declare-fun m!927949 () Bool)

(assert (=> b!661791 m!927949))

(declare-fun b_lambda!25735 () Bool)

(assert (= b_lambda!25733 (or start!64696 b_lambda!25735)))

(declare-fun bs!94483 () Bool)

(declare-fun d!226143 () Bool)

(assert (= bs!94483 (and d!226143 start!64696)))

(declare-fun usesJsonRules!0 (PrintableTokens!226) Bool)

(assert (=> bs!94483 (= (dynLambda!3812 lambda!20506 (h!12617 s!1385)) (usesJsonRules!0 (h!12617 s!1385)))))

(declare-fun m!927951 () Bool)

(assert (=> bs!94483 m!927951))

(assert (=> b!661749 d!226143))

(declare-fun b_lambda!25737 () Bool)

(assert (= b_lambda!25731 (or b!661698 b_lambda!25737)))

(declare-fun bs!94484 () Bool)

(declare-fun d!226145 () Bool)

(assert (= bs!94484 (and d!226145 b!661698)))

(declare-datatypes ((tuple2!7572 0))(
  ( (tuple2!7573 (_1!4157 Int) (_2!4157 PrintableTokens!226)) )
))
(declare-fun addId!0 (PrintableTokens!226) tuple2!7572)

(assert (=> bs!94484 (= (dynLambda!3812 lambda!20507 (h!12617 s!1385)) (usesJsonRules!0 (_2!4157 (addId!0 (h!12617 s!1385)))))))

(declare-fun m!927953 () Bool)

(assert (=> bs!94484 m!927953))

(declare-fun m!927955 () Bool)

(assert (=> bs!94484 m!927955))

(assert (=> b!661741 d!226145))

(push 1)

(assert (not d!226141))

(assert (not b!661770))

(assert (not b_lambda!25737))

(assert (not b_lambda!25735))

(assert (not b!661768))

(assert (not b!661742))

(assert (not b!661779))

(assert (not b!661757))

(assert (not b!661769))

(assert b_and!62903)

(assert (not d!226125))

(assert (not b!661780))

(assert (not b!661759))

(assert (not d!226135))

(assert (not b_next!19175))

(assert (not b!661736))

(assert (not b!661748))

(assert (not b!661734))

(assert (not bs!94484))

(assert (not b!661735))

(assert (not bs!94483))

(assert (not b!661791))

(assert (not b_next!19173))

(assert (not b!661697))

(assert (not b!661790))

(assert (not b!661781))

(assert (not b!661750))

(assert b_and!62905)

(check-sat)

(pop 1)

(push 1)

(assert b_and!62905)

(assert b_and!62903)

(assert (not b_next!19173))

(assert (not b_next!19175))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226149 () Bool)

(declare-fun res!293595 () Bool)

(declare-fun e!409426 () Bool)

(assert (=> d!226149 (=> (not res!293595) (not e!409426))))

(declare-fun size!5699 (Conc!2564) Int)

(assert (=> d!226149 (= res!293595 (= (csize!5358 (c!119068 (tokens!1286 (h!12617 s!1385)))) (+ (size!5699 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) (size!5699 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))))

(assert (=> d!226149 (= (inv!9288 (c!119068 (tokens!1286 (h!12617 s!1385)))) e!409426)))

(declare-fun b!661823 () Bool)

(declare-fun res!293596 () Bool)

(assert (=> b!661823 (=> (not res!293596) (not e!409426))))

(assert (=> b!661823 (= res!293596 (and (not (= (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))) Empty!2564)) (not (= (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))) Empty!2564))))))

(declare-fun b!661824 () Bool)

(declare-fun res!293597 () Bool)

(assert (=> b!661824 (=> (not res!293597) (not e!409426))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!305 (Conc!2564) Int)

(assert (=> b!661824 (= res!293597 (= (cheight!2775 (c!119068 (tokens!1286 (h!12617 s!1385)))) (+ (max!0 (height!305 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) (height!305 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) 1)))))

(declare-fun b!661825 () Bool)

(assert (=> b!661825 (= e!409426 (<= 0 (cheight!2775 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(assert (= (and d!226149 res!293595) b!661823))

(assert (= (and b!661823 res!293596) b!661824))

(assert (= (and b!661824 res!293597) b!661825))

(declare-fun m!927975 () Bool)

(assert (=> d!226149 m!927975))

(declare-fun m!927977 () Bool)

(assert (=> d!226149 m!927977))

(declare-fun m!927979 () Bool)

(assert (=> b!661824 m!927979))

(declare-fun m!927981 () Bool)

(assert (=> b!661824 m!927981))

(assert (=> b!661824 m!927979))

(assert (=> b!661824 m!927981))

(declare-fun m!927983 () Bool)

(assert (=> b!661824 m!927983))

(assert (=> b!661757 d!226149))

(declare-fun d!226155 () Bool)

(declare-fun res!293598 () Bool)

(declare-fun e!409427 () Bool)

(assert (=> d!226155 (=> res!293598 e!409427)))

(assert (=> d!226155 (= res!293598 (is-Nil!7216 (t!86332 s!1385)))))

(assert (=> d!226155 (= (forall!1909 (t!86332 s!1385) lambda!20507) e!409427)))

(declare-fun b!661826 () Bool)

(declare-fun e!409428 () Bool)

(assert (=> b!661826 (= e!409427 e!409428)))

(declare-fun res!293599 () Bool)

(assert (=> b!661826 (=> (not res!293599) (not e!409428))))

(assert (=> b!661826 (= res!293599 (dynLambda!3812 lambda!20507 (h!12617 (t!86332 s!1385))))))

(declare-fun b!661827 () Bool)

(assert (=> b!661827 (= e!409428 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20507))))

(assert (= (and d!226155 (not res!293598)) b!661826))

(assert (= (and b!661826 res!293599) b!661827))

(declare-fun b_lambda!25741 () Bool)

(assert (=> (not b_lambda!25741) (not b!661826)))

(declare-fun m!927985 () Bool)

(assert (=> b!661826 m!927985))

(declare-fun m!927987 () Bool)

(assert (=> b!661827 m!927987))

(assert (=> b!661742 d!226155))

(declare-fun d!226157 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!15 (LexerInterface!1279 BalanceConc!5140 Int List!7229) Bool)

(assert (=> d!226157 (= (separableTokens!47 Lexer!1277 (tokens!1286 (h!12617 s!1385)) (rules!8308 (h!12617 s!1385))) (tokensListTwoByTwoPredicateSeparable!15 Lexer!1277 (tokens!1286 (h!12617 s!1385)) 0 (rules!8308 (h!12617 s!1385))))))

(declare-fun bs!94488 () Bool)

(assert (= bs!94488 d!226157))

(declare-fun m!928011 () Bool)

(assert (=> bs!94488 m!928011))

(assert (=> b!661736 d!226157))

(declare-fun d!226163 () Bool)

(declare-datatypes ((JsonLexer!232 0))(
  ( (JsonLexer!233) )
))
(declare-fun rules!109 (JsonLexer!232) List!7229)

(assert (=> d!226163 (= (usesJsonRules!0 (h!12617 s!1385)) (= (rules!8308 (h!12617 s!1385)) (rules!109 JsonLexer!233)))))

(declare-fun bs!94490 () Bool)

(assert (= bs!94490 d!226163))

(declare-fun m!928045 () Bool)

(assert (=> bs!94490 m!928045))

(assert (=> bs!94483 d!226163))

(declare-fun b!661929 () Bool)

(declare-fun e!409498 () Bool)

(assert (=> b!661929 (= e!409498 true)))

(declare-fun b!661928 () Bool)

(declare-fun e!409497 () Bool)

(assert (=> b!661928 (= e!409497 e!409498)))

(declare-fun b!661927 () Bool)

(declare-fun e!409496 () Bool)

(assert (=> b!661927 (= e!409496 e!409497)))

(declare-fun d!226179 () Bool)

(assert (=> d!226179 e!409496))

(assert (= b!661928 b!661929))

(assert (= b!661927 b!661928))

(assert (= (and d!226179 (is-Cons!7215 (rules!8308 (h!12617 s!1385)))) b!661927))

(declare-fun lambda!20530 () Int)

(declare-fun order!5247 () Int)

(declare-fun order!5249 () Int)

(declare-fun dynLambda!3814 (Int Int) Int)

(declare-fun dynLambda!3815 (Int Int) Int)

(assert (=> b!661929 (< (dynLambda!3814 order!5247 (toValue!2402 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385)))))) (dynLambda!3815 order!5249 lambda!20530))))

(declare-fun order!5251 () Int)

(declare-fun dynLambda!3816 (Int Int) Int)

(assert (=> b!661929 (< (dynLambda!3816 order!5251 (toChars!2261 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385)))))) (dynLambda!3815 order!5249 lambda!20530))))

(assert (=> d!226179 true))

(declare-fun e!409489 () Bool)

(assert (=> d!226179 e!409489))

(declare-fun res!293655 () Bool)

(assert (=> d!226179 (=> (not res!293655) (not e!409489))))

(declare-fun lt!282128 () Bool)

(declare-fun forall!1911 (List!7228 Int) Bool)

(declare-fun list!3054 (BalanceConc!5140) List!7228)

(assert (=> d!226179 (= res!293655 (= lt!282128 (forall!1911 (list!3054 (tokens!1286 (h!12617 s!1385))) lambda!20530)))))

(declare-fun forall!1912 (BalanceConc!5140 Int) Bool)

(assert (=> d!226179 (= lt!282128 (forall!1912 (tokens!1286 (h!12617 s!1385)) lambda!20530))))

(assert (=> d!226179 (not (isEmpty!4799 (rules!8308 (h!12617 s!1385))))))

(assert (=> d!226179 (= (rulesProduceEachTokenIndividually!597 Lexer!1277 (rules!8308 (h!12617 s!1385)) (tokens!1286 (h!12617 s!1385))) lt!282128)))

(declare-fun b!661918 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!348 (LexerInterface!1279 List!7229 List!7228) Bool)

(assert (=> b!661918 (= e!409489 (= lt!282128 (rulesProduceEachTokenIndividuallyList!348 Lexer!1277 (rules!8308 (h!12617 s!1385)) (list!3054 (tokens!1286 (h!12617 s!1385))))))))

(assert (= (and d!226179 res!293655) b!661918))

(declare-fun m!928087 () Bool)

(assert (=> d!226179 m!928087))

(assert (=> d!226179 m!928087))

(declare-fun m!928089 () Bool)

(assert (=> d!226179 m!928089))

(declare-fun m!928091 () Bool)

(assert (=> d!226179 m!928091))

(assert (=> d!226179 m!927907))

(assert (=> b!661918 m!928087))

(assert (=> b!661918 m!928087))

(declare-fun m!928093 () Bool)

(assert (=> b!661918 m!928093))

(assert (=> b!661735 d!226179))

(declare-fun d!226203 () Bool)

(assert (=> d!226203 (= (inv!9282 (tokens!1286 (h!12617 (t!86332 s!1385)))) (isBalanced!671 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))))))

(declare-fun bs!94493 () Bool)

(assert (= bs!94493 d!226203))

(declare-fun m!928095 () Bool)

(assert (=> bs!94493 m!928095))

(assert (=> b!661769 d!226203))

(declare-fun d!226205 () Bool)

(assert (=> d!226205 (= (usesJsonRules!0 (_2!4157 (addId!0 (h!12617 s!1385)))) (= (rules!8308 (_2!4157 (addId!0 (h!12617 s!1385)))) (rules!109 JsonLexer!233)))))

(declare-fun bs!94494 () Bool)

(assert (= bs!94494 d!226205))

(assert (=> bs!94494 m!928045))

(assert (=> bs!94484 d!226205))

(declare-fun d!226207 () Bool)

(declare-fun parseID!0 (PrintableTokens!226) Int)

(assert (=> d!226207 (= (addId!0 (h!12617 s!1385)) (tuple2!7573 (parseID!0 (h!12617 s!1385)) (h!12617 s!1385)))))

(declare-fun bs!94495 () Bool)

(assert (= bs!94495 d!226207))

(declare-fun m!928097 () Bool)

(assert (=> bs!94495 m!928097))

(assert (=> bs!94484 d!226207))

(declare-fun d!226209 () Bool)

(declare-fun res!293660 () Bool)

(declare-fun e!409501 () Bool)

(assert (=> d!226209 (=> (not res!293660) (not e!409501))))

(declare-fun size!5700 (List!7228) Int)

(declare-fun list!3055 (IArray!5129) List!7228)

(assert (=> d!226209 (= res!293660 (<= (size!5700 (list!3055 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385)))))) 512))))

(assert (=> d!226209 (= (inv!9289 (c!119068 (tokens!1286 (h!12617 s!1385)))) e!409501)))

(declare-fun b!661936 () Bool)

(declare-fun res!293661 () Bool)

(assert (=> b!661936 (=> (not res!293661) (not e!409501))))

(assert (=> b!661936 (= res!293661 (= (csize!5359 (c!119068 (tokens!1286 (h!12617 s!1385)))) (size!5700 (list!3055 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))))))))

(declare-fun b!661937 () Bool)

(assert (=> b!661937 (= e!409501 (and (> (csize!5359 (c!119068 (tokens!1286 (h!12617 s!1385)))) 0) (<= (csize!5359 (c!119068 (tokens!1286 (h!12617 s!1385)))) 512)))))

(assert (= (and d!226209 res!293660) b!661936))

(assert (= (and b!661936 res!293661) b!661937))

(declare-fun m!928099 () Bool)

(assert (=> d!226209 m!928099))

(assert (=> d!226209 m!928099))

(declare-fun m!928101 () Bool)

(assert (=> d!226209 m!928101))

(assert (=> b!661936 m!928099))

(assert (=> b!661936 m!928099))

(assert (=> b!661936 m!928101))

(assert (=> b!661759 d!226209))

(declare-fun d!226211 () Bool)

(declare-fun res!293662 () Bool)

(declare-fun e!409502 () Bool)

(assert (=> d!226211 (=> res!293662 e!409502)))

(assert (=> d!226211 (= res!293662 (is-Nil!7216 (t!86332 s!1385)))))

(assert (=> d!226211 (= (forall!1909 (t!86332 s!1385) lambda!20506) e!409502)))

(declare-fun b!661938 () Bool)

(declare-fun e!409503 () Bool)

(assert (=> b!661938 (= e!409502 e!409503)))

(declare-fun res!293663 () Bool)

(assert (=> b!661938 (=> (not res!293663) (not e!409503))))

(assert (=> b!661938 (= res!293663 (dynLambda!3812 lambda!20506 (h!12617 (t!86332 s!1385))))))

(declare-fun b!661939 () Bool)

(assert (=> b!661939 (= e!409503 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20506))))

(assert (= (and d!226211 (not res!293662)) b!661938))

(assert (= (and b!661938 res!293663) b!661939))

(declare-fun b_lambda!25755 () Bool)

(assert (=> (not b_lambda!25755) (not b!661938)))

(declare-fun m!928103 () Bool)

(assert (=> b!661938 m!928103))

(declare-fun m!928105 () Bool)

(assert (=> b!661939 m!928105))

(assert (=> b!661750 d!226211))

(declare-fun d!226213 () Bool)

(declare-fun res!293664 () Bool)

(declare-fun e!409504 () Bool)

(assert (=> d!226213 (=> (not res!293664) (not e!409504))))

(assert (=> d!226213 (= res!293664 (not (isEmpty!4799 (rules!8308 (h!12617 (t!86332 s!1385))))))))

(assert (=> d!226213 (= (inv!9284 (h!12617 (t!86332 s!1385))) e!409504)))

(declare-fun b!661940 () Bool)

(declare-fun res!293665 () Bool)

(assert (=> b!661940 (=> (not res!293665) (not e!409504))))

(assert (=> b!661940 (= res!293665 (rulesInvariant!1214 Lexer!1277 (rules!8308 (h!12617 (t!86332 s!1385)))))))

(declare-fun b!661941 () Bool)

(declare-fun res!293666 () Bool)

(assert (=> b!661941 (=> (not res!293666) (not e!409504))))

(assert (=> b!661941 (= res!293666 (rulesProduceEachTokenIndividually!597 Lexer!1277 (rules!8308 (h!12617 (t!86332 s!1385))) (tokens!1286 (h!12617 (t!86332 s!1385)))))))

(declare-fun b!661942 () Bool)

(assert (=> b!661942 (= e!409504 (separableTokens!47 Lexer!1277 (tokens!1286 (h!12617 (t!86332 s!1385))) (rules!8308 (h!12617 (t!86332 s!1385)))))))

(assert (= (and d!226213 res!293664) b!661940))

(assert (= (and b!661940 res!293665) b!661941))

(assert (= (and b!661941 res!293666) b!661942))

(declare-fun m!928107 () Bool)

(assert (=> d!226213 m!928107))

(declare-fun m!928109 () Bool)

(assert (=> b!661940 m!928109))

(declare-fun m!928111 () Bool)

(assert (=> b!661941 m!928111))

(declare-fun m!928113 () Bool)

(assert (=> b!661942 m!928113))

(assert (=> b!661768 d!226213))

(declare-fun bs!94496 () Bool)

(declare-fun d!226215 () Bool)

(assert (= bs!94496 (and d!226215 start!64696)))

(declare-fun lambda!20531 () Int)

(assert (=> bs!94496 (= lambda!20531 lambda!20506)))

(declare-fun bs!94497 () Bool)

(assert (= bs!94497 (and d!226215 b!661698)))

(assert (=> bs!94497 (not (= lambda!20531 lambda!20507))))

(declare-fun bs!94498 () Bool)

(assert (= bs!94498 (and d!226215 d!226135)))

(assert (=> bs!94498 (= lambda!20531 lambda!20524)))

(assert (=> bs!94498 (not (= lambda!20531 lambda!20525))))

(declare-fun lambda!20532 () Int)

(assert (=> d!226215 (not (= lambda!20532 lambda!20531))))

(assert (=> bs!94498 (= lambda!20532 lambda!20525)))

(assert (=> bs!94497 (= lambda!20532 lambda!20507)))

(assert (=> bs!94498 (not (= lambda!20532 lambda!20524))))

(assert (=> bs!94496 (not (= lambda!20532 lambda!20506))))

(assert (=> d!226215 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20532)))

(declare-fun lt!282129 () Unit!12498)

(declare-fun e!409505 () Unit!12498)

(assert (=> d!226215 (= lt!282129 e!409505)))

(declare-fun c!119087 () Bool)

(assert (=> d!226215 (= c!119087 (is-Nil!7216 (t!86332 (t!86332 s!1385))))))

(assert (=> d!226215 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20531)))

(assert (=> d!226215 (= (lemmaAddIdsPreservesRules!0 (t!86332 (t!86332 s!1385))) lt!282129)))

(declare-fun b!661943 () Bool)

(declare-fun Unit!12507 () Unit!12498)

(assert (=> b!661943 (= e!409505 Unit!12507)))

(declare-fun b!661944 () Bool)

(declare-fun Unit!12508 () Unit!12498)

(assert (=> b!661944 (= e!409505 Unit!12508)))

(declare-fun lt!282130 () Unit!12498)

(assert (=> b!661944 (= lt!282130 (lemmaAddIdsPreservesRules!0 (t!86332 (t!86332 (t!86332 s!1385)))))))

(assert (= (and d!226215 c!119087) b!661943))

(assert (= (and d!226215 (not c!119087)) b!661944))

(declare-fun m!928115 () Bool)

(assert (=> d!226215 m!928115))

(declare-fun m!928117 () Bool)

(assert (=> d!226215 m!928117))

(declare-fun m!928119 () Bool)

(assert (=> b!661944 m!928119))

(assert (=> b!661748 d!226215))

(declare-fun d!226217 () Bool)

(declare-fun c!119088 () Bool)

(assert (=> d!226217 (= c!119088 (is-Node!2564 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun e!409506 () Bool)

(assert (=> d!226217 (= (inv!9283 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) e!409506)))

(declare-fun b!661945 () Bool)

(assert (=> b!661945 (= e!409506 (inv!9288 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun b!661946 () Bool)

(declare-fun e!409507 () Bool)

(assert (=> b!661946 (= e!409506 e!409507)))

(declare-fun res!293667 () Bool)

(assert (=> b!661946 (= res!293667 (not (is-Leaf!3811 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))))))

(assert (=> b!661946 (=> res!293667 e!409507)))

(declare-fun b!661947 () Bool)

(assert (=> b!661947 (= e!409507 (inv!9289 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(assert (= (and d!226217 c!119088) b!661945))

(assert (= (and d!226217 (not c!119088)) b!661946))

(assert (= (and b!661946 (not res!293667)) b!661947))

(declare-fun m!928121 () Bool)

(assert (=> b!661945 m!928121))

(declare-fun m!928123 () Bool)

(assert (=> b!661947 m!928123))

(assert (=> b!661779 d!226217))

(declare-fun d!226219 () Bool)

(declare-fun c!119089 () Bool)

(assert (=> d!226219 (= c!119089 (is-Node!2564 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun e!409508 () Bool)

(assert (=> d!226219 (= (inv!9283 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))) e!409508)))

(declare-fun b!661948 () Bool)

(assert (=> b!661948 (= e!409508 (inv!9288 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun b!661949 () Bool)

(declare-fun e!409509 () Bool)

(assert (=> b!661949 (= e!409508 e!409509)))

(declare-fun res!293668 () Bool)

(assert (=> b!661949 (= res!293668 (not (is-Leaf!3811 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))))))

(assert (=> b!661949 (=> res!293668 e!409509)))

(declare-fun b!661950 () Bool)

(assert (=> b!661950 (= e!409509 (inv!9289 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(assert (= (and d!226219 c!119089) b!661948))

(assert (= (and d!226219 (not c!119089)) b!661949))

(assert (= (and b!661949 (not res!293668)) b!661950))

(declare-fun m!928125 () Bool)

(assert (=> b!661948 m!928125))

(declare-fun m!928127 () Bool)

(assert (=> b!661950 m!928127))

(assert (=> b!661779 d!226219))

(declare-fun d!226221 () Bool)

(declare-fun c!119090 () Bool)

(assert (=> d!226221 (= c!119090 (is-Node!2564 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))))))

(declare-fun e!409510 () Bool)

(assert (=> d!226221 (= (inv!9283 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))) e!409510)))

(declare-fun b!661951 () Bool)

(assert (=> b!661951 (= e!409510 (inv!9288 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))))))

(declare-fun b!661952 () Bool)

(declare-fun e!409511 () Bool)

(assert (=> b!661952 (= e!409510 e!409511)))

(declare-fun res!293669 () Bool)

(assert (=> b!661952 (= res!293669 (not (is-Leaf!3811 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))))))

(assert (=> b!661952 (=> res!293669 e!409511)))

(declare-fun b!661953 () Bool)

(assert (=> b!661953 (= e!409511 (inv!9289 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))))))

(assert (= (and d!226221 c!119090) b!661951))

(assert (= (and d!226221 (not c!119090)) b!661952))

(assert (= (and b!661952 (not res!293669)) b!661953))

(declare-fun m!928129 () Bool)

(assert (=> b!661951 m!928129))

(declare-fun m!928131 () Bool)

(assert (=> b!661953 m!928131))

(assert (=> b!661770 d!226221))

(declare-fun d!226223 () Bool)

(assert (=> d!226223 (= (isEmpty!4799 (rules!8308 (h!12617 s!1385))) (is-Nil!7215 (rules!8308 (h!12617 s!1385))))))

(assert (=> d!226125 d!226223))

(declare-fun b!661967 () Bool)

(declare-fun res!293683 () Bool)

(declare-fun e!409516 () Bool)

(assert (=> b!661967 (=> (not res!293683) (not e!409516))))

(assert (=> b!661967 (= res!293683 (isBalanced!671 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun b!661968 () Bool)

(declare-fun res!293682 () Bool)

(assert (=> b!661968 (=> (not res!293682) (not e!409516))))

(assert (=> b!661968 (= res!293682 (isBalanced!671 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(declare-fun b!661969 () Bool)

(declare-fun res!293687 () Bool)

(assert (=> b!661969 (=> (not res!293687) (not e!409516))))

(declare-fun isEmpty!4801 (Conc!2564) Bool)

(assert (=> b!661969 (= res!293687 (not (isEmpty!4801 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))))))

(declare-fun b!661970 () Bool)

(declare-fun res!293686 () Bool)

(assert (=> b!661970 (=> (not res!293686) (not e!409516))))

(assert (=> b!661970 (= res!293686 (<= (- (height!305 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) (height!305 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) 1))))

(declare-fun b!661971 () Bool)

(declare-fun e!409517 () Bool)

(assert (=> b!661971 (= e!409517 e!409516)))

(declare-fun res!293685 () Bool)

(assert (=> b!661971 (=> (not res!293685) (not e!409516))))

(assert (=> b!661971 (= res!293685 (<= (- 1) (- (height!305 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) (height!305 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))))))))

(declare-fun d!226225 () Bool)

(declare-fun res!293684 () Bool)

(assert (=> d!226225 (=> res!293684 e!409517)))

(assert (=> d!226225 (= res!293684 (not (is-Node!2564 (c!119068 (tokens!1286 (h!12617 s!1385))))))))

(assert (=> d!226225 (= (isBalanced!671 (c!119068 (tokens!1286 (h!12617 s!1385)))) e!409517)))

(declare-fun b!661966 () Bool)

(assert (=> b!661966 (= e!409516 (not (isEmpty!4801 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))))))

(assert (= (and d!226225 (not res!293684)) b!661971))

(assert (= (and b!661971 res!293685) b!661970))

(assert (= (and b!661970 res!293686) b!661968))

(assert (= (and b!661968 res!293682) b!661967))

(assert (= (and b!661967 res!293683) b!661969))

(assert (= (and b!661969 res!293687) b!661966))

(assert (=> b!661971 m!927979))

(assert (=> b!661971 m!927981))

(assert (=> b!661970 m!927979))

(assert (=> b!661970 m!927981))

(declare-fun m!928133 () Bool)

(assert (=> b!661966 m!928133))

(declare-fun m!928135 () Bool)

(assert (=> b!661967 m!928135))

(declare-fun m!928137 () Bool)

(assert (=> b!661968 m!928137))

(declare-fun m!928139 () Bool)

(assert (=> b!661969 m!928139))

(assert (=> d!226141 d!226225))

(declare-fun d!226227 () Bool)

(declare-fun res!293688 () Bool)

(declare-fun e!409518 () Bool)

(assert (=> d!226227 (=> res!293688 e!409518)))

(assert (=> d!226227 (= res!293688 (is-Nil!7216 (t!86332 s!1385)))))

(assert (=> d!226227 (= (forall!1909 (t!86332 s!1385) lambda!20525) e!409518)))

(declare-fun b!661972 () Bool)

(declare-fun e!409519 () Bool)

(assert (=> b!661972 (= e!409518 e!409519)))

(declare-fun res!293689 () Bool)

(assert (=> b!661972 (=> (not res!293689) (not e!409519))))

(assert (=> b!661972 (= res!293689 (dynLambda!3812 lambda!20525 (h!12617 (t!86332 s!1385))))))

(declare-fun b!661973 () Bool)

(assert (=> b!661973 (= e!409519 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20525))))

(assert (= (and d!226227 (not res!293688)) b!661972))

(assert (= (and b!661972 res!293689) b!661973))

(declare-fun b_lambda!25757 () Bool)

(assert (=> (not b_lambda!25757) (not b!661972)))

(declare-fun m!928141 () Bool)

(assert (=> b!661972 m!928141))

(declare-fun m!928143 () Bool)

(assert (=> b!661973 m!928143))

(assert (=> d!226135 d!226227))

(declare-fun d!226229 () Bool)

(declare-fun res!293690 () Bool)

(declare-fun e!409520 () Bool)

(assert (=> d!226229 (=> res!293690 e!409520)))

(assert (=> d!226229 (= res!293690 (is-Nil!7216 (t!86332 s!1385)))))

(assert (=> d!226229 (= (forall!1909 (t!86332 s!1385) lambda!20524) e!409520)))

(declare-fun b!661974 () Bool)

(declare-fun e!409521 () Bool)

(assert (=> b!661974 (= e!409520 e!409521)))

(declare-fun res!293691 () Bool)

(assert (=> b!661974 (=> (not res!293691) (not e!409521))))

(assert (=> b!661974 (= res!293691 (dynLambda!3812 lambda!20524 (h!12617 (t!86332 s!1385))))))

(declare-fun b!661975 () Bool)

(assert (=> b!661975 (= e!409521 (forall!1909 (t!86332 (t!86332 s!1385)) lambda!20524))))

(assert (= (and d!226229 (not res!293690)) b!661974))

(assert (= (and b!661974 res!293691) b!661975))

(declare-fun b_lambda!25759 () Bool)

(assert (=> (not b_lambda!25759) (not b!661974)))

(declare-fun m!928145 () Bool)

(assert (=> b!661974 m!928145))

(declare-fun m!928147 () Bool)

(assert (=> b!661975 m!928147))

(assert (=> d!226135 d!226229))

(assert (=> b!661697 d!226139))

(declare-fun d!226231 () Bool)

(declare-fun res!293694 () Bool)

(declare-fun e!409524 () Bool)

(assert (=> d!226231 (=> (not res!293694) (not e!409524))))

(declare-fun rulesValid!514 (LexerInterface!1279 List!7229) Bool)

(assert (=> d!226231 (= res!293694 (rulesValid!514 Lexer!1277 (rules!8308 (h!12617 s!1385))))))

(assert (=> d!226231 (= (rulesInvariant!1214 Lexer!1277 (rules!8308 (h!12617 s!1385))) e!409524)))

(declare-fun b!661978 () Bool)

(declare-datatypes ((List!7235 0))(
  ( (Nil!7221) (Cons!7221 (h!12622 String!9215) (t!86373 List!7235)) )
))
(declare-fun noDuplicateTag!514 (LexerInterface!1279 List!7229 List!7235) Bool)

(assert (=> b!661978 (= e!409524 (noDuplicateTag!514 Lexer!1277 (rules!8308 (h!12617 s!1385)) Nil!7221))))

(assert (= (and d!226231 res!293694) b!661978))

(declare-fun m!928149 () Bool)

(assert (=> d!226231 m!928149))

(declare-fun m!928151 () Bool)

(assert (=> b!661978 m!928151))

(assert (=> b!661734 d!226231))

(declare-fun d!226233 () Bool)

(assert (=> d!226233 (= (inv!9279 (tag!1723 (h!12616 (rules!8308 (h!12617 s!1385))))) (= (mod (str.len (value!46790 (tag!1723 (h!12616 (rules!8308 (h!12617 s!1385)))))) 2) 0))))

(assert (=> b!661791 d!226233))

(declare-fun d!226235 () Bool)

(declare-fun res!293697 () Bool)

(declare-fun e!409527 () Bool)

(assert (=> d!226235 (=> (not res!293697) (not e!409527))))

(declare-fun semiInverseModEq!549 (Int Int) Bool)

(assert (=> d!226235 (= res!293697 (semiInverseModEq!549 (toChars!2261 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385))))) (toValue!2402 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385)))))))))

(assert (=> d!226235 (= (inv!9291 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385))))) e!409527)))

(declare-fun b!661981 () Bool)

(declare-fun equivClasses!528 (Int Int) Bool)

(assert (=> b!661981 (= e!409527 (equivClasses!528 (toChars!2261 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385))))) (toValue!2402 (transformation!1461 (h!12616 (rules!8308 (h!12617 s!1385)))))))))

(assert (= (and d!226235 res!293697) b!661981))

(declare-fun m!928153 () Bool)

(assert (=> d!226235 m!928153))

(declare-fun m!928155 () Bool)

(assert (=> b!661981 m!928155))

(assert (=> b!661791 d!226235))

(declare-fun d!226237 () Bool)

(assert (=> d!226237 (= (inv!9290 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))) (<= (size!5700 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385)))))) 2147483647))))

(declare-fun bs!94499 () Bool)

(assert (= bs!94499 d!226237))

(declare-fun m!928157 () Bool)

(assert (=> bs!94499 m!928157))

(assert (=> b!661780 d!226237))

(declare-fun b!661984 () Bool)

(declare-fun b_free!19117 () Bool)

(declare-fun b_next!19181 () Bool)

(assert (=> b!661984 (= b_free!19117 (not b_next!19181))))

(declare-fun tp!201989 () Bool)

(declare-fun b_and!62911 () Bool)

(assert (=> b!661984 (= tp!201989 b_and!62911)))

(declare-fun b_free!19119 () Bool)

(declare-fun b_next!19183 () Bool)

(assert (=> b!661984 (= b_free!19119 (not b_next!19183))))

(declare-fun tp!201990 () Bool)

(declare-fun b_and!62913 () Bool)

(assert (=> b!661984 (= tp!201990 b_and!62913)))

(declare-fun e!409529 () Bool)

(assert (=> b!661984 (= e!409529 (and tp!201989 tp!201990))))

(declare-fun b!661983 () Bool)

(declare-fun e!409531 () Bool)

(assert (=> b!661983 (= e!409531 (and (inv!9279 (tag!1723 (h!12616 (t!86331 (rules!8308 (h!12617 s!1385)))))) (inv!9291 (transformation!1461 (h!12616 (t!86331 (rules!8308 (h!12617 s!1385)))))) e!409529))))

(declare-fun b!661982 () Bool)

(declare-fun e!409530 () Bool)

(declare-fun tp!201991 () Bool)

(assert (=> b!661982 (= e!409530 (and e!409531 tp!201991))))

(assert (=> b!661790 (= tp!201961 e!409530)))

(assert (= b!661983 b!661984))

(assert (= b!661982 b!661983))

(assert (= (and b!661790 (is-Cons!7215 (t!86331 (rules!8308 (h!12617 s!1385))))) b!661982))

(declare-fun m!928159 () Bool)

(assert (=> b!661983 m!928159))

(declare-fun m!928161 () Bool)

(assert (=> b!661983 m!928161))

(declare-fun tp!201992 () Bool)

(declare-fun e!409532 () Bool)

(declare-fun b!661985 () Bool)

(declare-fun tp!201994 () Bool)

(assert (=> b!661985 (= e!409532 (and (inv!9283 (left!5844 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))) tp!201994 (inv!9283 (right!6174 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))) tp!201992))))

(declare-fun b!661987 () Bool)

(declare-fun e!409533 () Bool)

(declare-fun tp!201993 () Bool)

(assert (=> b!661987 (= e!409533 tp!201993)))

(declare-fun b!661986 () Bool)

(assert (=> b!661986 (= e!409532 (and (inv!9290 (xs!5213 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))) e!409533))))

(assert (=> b!661779 (= tp!201952 (and (inv!9283 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385))))) e!409532))))

(assert (= (and b!661779 (is-Node!2564 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))) b!661985))

(assert (= b!661986 b!661987))

(assert (= (and b!661779 (is-Leaf!3811 (left!5844 (c!119068 (tokens!1286 (h!12617 s!1385)))))) b!661986))

(declare-fun m!928163 () Bool)

(assert (=> b!661985 m!928163))

(declare-fun m!928165 () Bool)

(assert (=> b!661985 m!928165))

(declare-fun m!928167 () Bool)

(assert (=> b!661986 m!928167))

(assert (=> b!661779 m!927941))

(declare-fun tp!201995 () Bool)

(declare-fun tp!201997 () Bool)

(declare-fun b!661988 () Bool)

(declare-fun e!409534 () Bool)

(assert (=> b!661988 (= e!409534 (and (inv!9283 (left!5844 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) tp!201997 (inv!9283 (right!6174 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) tp!201995))))

(declare-fun b!661990 () Bool)

(declare-fun e!409535 () Bool)

(declare-fun tp!201996 () Bool)

(assert (=> b!661990 (= e!409535 tp!201996)))

(declare-fun b!661989 () Bool)

(assert (=> b!661989 (= e!409534 (and (inv!9290 (xs!5213 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) e!409535))))

(assert (=> b!661779 (= tp!201950 (and (inv!9283 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385))))) e!409534))))

(assert (= (and b!661779 (is-Node!2564 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) b!661988))

(assert (= b!661989 b!661990))

(assert (= (and b!661779 (is-Leaf!3811 (right!6174 (c!119068 (tokens!1286 (h!12617 s!1385)))))) b!661989))

(declare-fun m!928169 () Bool)

(assert (=> b!661988 m!928169))

(declare-fun m!928171 () Bool)

(assert (=> b!661988 m!928171))

(declare-fun m!928173 () Bool)

(assert (=> b!661989 m!928173))

(assert (=> b!661779 m!927943))

(declare-fun e!409536 () Bool)

(declare-fun tp!201998 () Bool)

(declare-fun b!661991 () Bool)

(declare-fun tp!202000 () Bool)

(assert (=> b!661991 (= e!409536 (and (inv!9283 (left!5844 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))) tp!202000 (inv!9283 (right!6174 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))) tp!201998))))

(declare-fun b!661993 () Bool)

(declare-fun e!409537 () Bool)

(declare-fun tp!201999 () Bool)

(assert (=> b!661993 (= e!409537 tp!201999)))

(declare-fun b!661992 () Bool)

(assert (=> b!661992 (= e!409536 (and (inv!9290 (xs!5213 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))) e!409537))))

(assert (=> b!661770 (= tp!201942 (and (inv!9283 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385))))) e!409536))))

(assert (= (and b!661770 (is-Node!2564 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))) b!661991))

(assert (= b!661992 b!661993))

(assert (= (and b!661770 (is-Leaf!3811 (c!119068 (tokens!1286 (h!12617 (t!86332 s!1385)))))) b!661992))

(declare-fun m!928175 () Bool)

(assert (=> b!661991 m!928175))

(declare-fun m!928177 () Bool)

(assert (=> b!661991 m!928177))

(declare-fun m!928179 () Bool)

(assert (=> b!661992 m!928179))

(assert (=> b!661770 m!927935))

(declare-fun b!662007 () Bool)

(declare-fun b_free!19121 () Bool)

(declare-fun b_next!19185 () Bool)

(assert (=> b!662007 (= b_free!19121 (not b_next!19185))))

(declare-fun tp!202007 () Bool)

(declare-fun b_and!62915 () Bool)

(assert (=> b!662007 (= tp!202007 b_and!62915)))

(declare-fun b_free!19123 () Bool)

(declare-fun b_next!19187 () Bool)

(assert (=> b!662007 (= b_free!19123 (not b_next!19187))))

(declare-fun tp!202008 () Bool)

(declare-fun b_and!62917 () Bool)

(assert (=> b!662007 (= tp!202008 b_and!62917)))

(declare-fun b!662006 () Bool)

(declare-fun e!409552 () Bool)

(declare-fun e!409550 () Bool)

(assert (=> b!662006 (= e!409552 (and (inv!9279 (tag!1723 (rule!2256 (h!12615 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))))))) (inv!9291 (transformation!1461 (rule!2256 (h!12615 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))))))) e!409550))))

(declare-fun b!662005 () Bool)

(declare-fun e!409555 () Bool)

(declare-fun inv!21 (TokenValue!1495) Bool)

(assert (=> b!662005 (= e!409555 (and (inv!21 (value!46791 (h!12615 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385)))))))) e!409552))))

(assert (=> b!662007 (= e!409550 (and tp!202007 tp!202008))))

(declare-fun e!409554 () Bool)

(assert (=> b!661781 (= tp!201951 e!409554)))

(declare-fun b!662004 () Bool)

(declare-fun tp!202009 () Bool)

(declare-fun inv!9296 (Token!2644) Bool)

(assert (=> b!662004 (= e!409554 (and (inv!9296 (h!12615 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))))) e!409555 tp!202009))))

(assert (= b!662006 b!662007))

(assert (= b!662005 b!662006))

(assert (= b!662004 b!662005))

(assert (= (and b!661781 (is-Cons!7214 (innerList!2622 (xs!5213 (c!119068 (tokens!1286 (h!12617 s!1385))))))) b!662004))

(declare-fun m!928181 () Bool)

(assert (=> b!662006 m!928181))

(declare-fun m!928183 () Bool)

(assert (=> b!662006 m!928183))

(declare-fun m!928185 () Bool)

(assert (=> b!662005 m!928185))

(declare-fun m!928187 () Bool)

(assert (=> b!662004 m!928187))

(declare-fun b!662010 () Bool)

(declare-fun b_free!19125 () Bool)

(declare-fun b_next!19189 () Bool)

(assert (=> b!662010 (= b_free!19125 (not b_next!19189))))

(declare-fun tp!202010 () Bool)

(declare-fun b_and!62919 () Bool)

(assert (=> b!662010 (= tp!202010 b_and!62919)))

(declare-fun b_free!19127 () Bool)

(declare-fun b_next!19191 () Bool)

(assert (=> b!662010 (= b_free!19127 (not b_next!19191))))

(declare-fun tp!202011 () Bool)

(declare-fun b_and!62921 () Bool)

(assert (=> b!662010 (= tp!202011 b_and!62921)))

(declare-fun e!409557 () Bool)

(assert (=> b!662010 (= e!409557 (and tp!202010 tp!202011))))

(declare-fun b!662009 () Bool)

(declare-fun e!409559 () Bool)

(assert (=> b!662009 (= e!409559 (and (inv!9279 (tag!1723 (h!12616 (rules!8308 (h!12617 (t!86332 s!1385)))))) (inv!9291 (transformation!1461 (h!12616 (rules!8308 (h!12617 (t!86332 s!1385)))))) e!409557))))

(declare-fun b!662008 () Bool)

(declare-fun e!409558 () Bool)

(declare-fun tp!202012 () Bool)

(assert (=> b!662008 (= e!409558 (and e!409559 tp!202012))))

(assert (=> b!661769 (= tp!201943 e!409558)))

(assert (= b!662009 b!662010))

(assert (= b!662008 b!662009))

(assert (= (and b!661769 (is-Cons!7215 (rules!8308 (h!12617 (t!86332 s!1385))))) b!662008))

(declare-fun m!928189 () Bool)

(assert (=> b!662009 m!928189))

(declare-fun m!928191 () Bool)

(assert (=> b!662009 m!928191))

(declare-fun b!662013 () Bool)

(declare-fun e!409561 () Bool)

(declare-fun tp!202014 () Bool)

(assert (=> b!662013 (= e!409561 (and (inv!9283 (c!119068 (tokens!1286 (h!12617 (t!86332 (t!86332 s!1385)))))) tp!202014))))

(declare-fun tp!202015 () Bool)

(declare-fun e!409560 () Bool)

(declare-fun b!662012 () Bool)

(assert (=> b!662012 (= e!409560 (and tp!202015 (inv!9282 (tokens!1286 (h!12617 (t!86332 (t!86332 s!1385))))) e!409561))))

(declare-fun b!662011 () Bool)

(declare-fun tp!202013 () Bool)

(declare-fun e!409562 () Bool)

(assert (=> b!662011 (= e!409562 (and (inv!9284 (h!12617 (t!86332 (t!86332 s!1385)))) e!409560 tp!202013))))

(assert (=> b!661768 (= tp!201941 e!409562)))

(assert (= b!662012 b!662013))

(assert (= b!662011 b!662012))

(assert (= (and b!661768 (is-Cons!7216 (t!86332 (t!86332 s!1385)))) b!662011))

(declare-fun m!928193 () Bool)

(assert (=> b!662013 m!928193))

(declare-fun m!928195 () Bool)

(assert (=> b!662012 m!928195))

(declare-fun m!928197 () Bool)

(assert (=> b!662011 m!928197))

(declare-fun b_lambda!25761 () Bool)

(assert (= b_lambda!25757 (or d!226135 b_lambda!25761)))

(declare-fun bs!94500 () Bool)

(declare-fun d!226239 () Bool)

(assert (= bs!94500 (and d!226239 d!226135)))

(assert (=> bs!94500 (= (dynLambda!3812 lambda!20525 (h!12617 (t!86332 s!1385))) (usesJsonRules!0 (_2!4157 (addId!0 (h!12617 (t!86332 s!1385))))))))

(declare-fun m!928199 () Bool)

(assert (=> bs!94500 m!928199))

(declare-fun m!928201 () Bool)

(assert (=> bs!94500 m!928201))

(assert (=> b!661972 d!226239))

(declare-fun b_lambda!25763 () Bool)

(assert (= b_lambda!25741 (or b!661698 b_lambda!25763)))

(declare-fun bs!94501 () Bool)

(declare-fun d!226241 () Bool)

(assert (= bs!94501 (and d!226241 b!661698)))

(assert (=> bs!94501 (= (dynLambda!3812 lambda!20507 (h!12617 (t!86332 s!1385))) (usesJsonRules!0 (_2!4157 (addId!0 (h!12617 (t!86332 s!1385))))))))

(assert (=> bs!94501 m!928199))

(assert (=> bs!94501 m!928201))

(assert (=> b!661826 d!226241))

(declare-fun b_lambda!25765 () Bool)

(assert (= b_lambda!25759 (or d!226135 b_lambda!25765)))

(declare-fun bs!94502 () Bool)

(declare-fun d!226243 () Bool)

(assert (= bs!94502 (and d!226243 d!226135)))

(assert (=> bs!94502 (= (dynLambda!3812 lambda!20524 (h!12617 (t!86332 s!1385))) (usesJsonRules!0 (h!12617 (t!86332 s!1385))))))

(declare-fun m!928203 () Bool)

(assert (=> bs!94502 m!928203))

(assert (=> b!661974 d!226243))

(declare-fun b_lambda!25767 () Bool)

(assert (= b_lambda!25755 (or start!64696 b_lambda!25767)))

(declare-fun bs!94503 () Bool)

(declare-fun d!226245 () Bool)

(assert (= bs!94503 (and d!226245 start!64696)))

(assert (=> bs!94503 (= (dynLambda!3812 lambda!20506 (h!12617 (t!86332 s!1385))) (usesJsonRules!0 (h!12617 (t!86332 s!1385))))))

(assert (=> bs!94503 m!928203))

(assert (=> b!661938 d!226245))

(push 1)

(assert (not b!661945))

(assert (not b!661918))

(assert (not d!226179))

(assert (not b_lambda!25763))

(assert (not d!226157))

(assert (not b!662012))

(assert (not b!662008))

(assert (not b!662011))

(assert (not b!661824))

(assert (not b!662006))

(assert b_and!62913)

(assert (not bs!94500))

(assert (not b!661770))

(assert (not b!661992))

(assert (not d!226237))

(assert (not b!661950))

(assert (not b!662005))

(assert (not b!661951))

(assert (not b!661982))

(assert (not b_next!19187))

(assert (not b!661953))

(assert (not b!662009))

(assert (not b_lambda!25737))

(assert (not d!226215))

(assert (not b!661991))

(assert (not b_next!19175))

(assert (not b!661941))

(assert (not d!226149))

(assert (not b!661985))

(assert (not d!226203))

(assert (not d!226231))

(assert (not b!661827))

(assert (not b!661944))

(assert (not d!226207))

(assert (not b!661948))

(assert (not b!661975))

(assert (not d!226163))

(assert (not b_next!19191))

(assert b_and!62919)

(assert (not b_lambda!25735))

(assert (not b!661978))

(assert (not b!661969))

(assert (not b!661989))

(assert (not d!226205))

(assert (not b!661936))

(assert (not b!661968))

(assert (not b_next!19183))

(assert (not d!226209))

(assert (not bs!94503))

(assert (not b_lambda!25767))

(assert (not b!661990))

(assert (not b!661947))

(assert (not b!662004))

(assert b_and!62917)

(assert (not b_next!19189))

(assert (not b!661973))

(assert (not b!661779))

(assert (not b_next!19181))

(assert (not b_next!19185))

(assert (not b!661986))

(assert (not d!226213))

(assert (not b!661981))

(assert (not bs!94501))

(assert (not b!661940))

(assert (not b!661987))

(assert b_and!62903)

(assert (not b!661983))

(assert (not b!662013))

(assert (not b!661971))

(assert (not b_lambda!25765))

(assert (not b!661942))

(assert (not b!661967))

(assert (not d!226235))

(assert (not b_next!19173))

(assert (not b!661970))

(assert (not bs!94502))

(assert (not b!661927))

(assert (not b!661993))

(assert b_and!62921)

(assert (not b!661966))

(assert b_and!62915)

(assert b_and!62911)

(assert (not b!661988))

(assert (not b!661939))

(assert b_and!62905)

(assert (not b_lambda!25761))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62913)

(assert (not b_next!19187))

(assert (not b_next!19175))

(assert (not b_next!19191))

(assert b_and!62919)

(assert (not b_next!19183))

(assert b_and!62903)

(assert (not b_next!19173))

(assert b_and!62917)

(assert (not b_next!19189))

(assert (not b_next!19181))

(assert (not b_next!19185))

(assert b_and!62921)

(assert b_and!62915)

(assert b_and!62911)

(assert b_and!62905)

(check-sat)

(pop 1)

