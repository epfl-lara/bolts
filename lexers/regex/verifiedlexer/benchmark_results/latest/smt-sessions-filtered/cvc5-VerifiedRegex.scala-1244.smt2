; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64666 () Bool)

(assert start!64666)

(declare-fun bs!94465 () Bool)

(declare-fun b!661431 () Bool)

(assert (= bs!94465 (and b!661431 start!64666)))

(declare-fun lambda!20489 () Int)

(declare-fun lambda!20488 () Int)

(assert (=> bs!94465 (not (= lambda!20489 lambda!20488))))

(declare-datatypes ((List!7211 0))(
  ( (Nil!7197) (Cons!7197 (h!12598 (_ BitVec 16)) (t!86313 List!7211)) )
))
(declare-datatypes ((TokenValue!1491 0))(
  ( (FloatLiteralValue!2982 (text!10882 List!7211)) (TokenValueExt!1490 (__x!5077 Int)) (Broken!7455 (value!46651 List!7211)) (Object!1504) (End!1491) (Def!1491) (Underscore!1491) (Match!1491) (Else!1491) (Error!1491) (Case!1491) (If!1491) (Extends!1491) (Abstract!1491) (Class!1491) (Val!1491) (DelimiterValue!2982 (del!1551 List!7211)) (KeywordValue!1497 (value!46652 List!7211)) (CommentValue!2982 (value!46653 List!7211)) (WhitespaceValue!2982 (value!46654 List!7211)) (IndentationValue!1491 (value!46655 List!7211)) (String!9194) (Int32!1491) (Broken!7456 (value!46656 List!7211)) (Boolean!1492) (Unit!12493) (OperatorValue!1494 (op!1551 List!7211)) (IdentifierValue!2982 (value!46657 List!7211)) (IdentifierValue!2983 (value!46658 List!7211)) (WhitespaceValue!2983 (value!46659 List!7211)) (True!2982) (False!2982) (Broken!7457 (value!46660 List!7211)) (Broken!7458 (value!46661 List!7211)) (True!2983) (RightBrace!1491) (RightBracket!1491) (Colon!1491) (Null!1491) (Comma!1491) (LeftBracket!1491) (False!2983) (LeftBrace!1491) (ImaginaryLiteralValue!1491 (text!10883 List!7211)) (StringLiteralValue!4473 (value!46662 List!7211)) (EOFValue!1491 (value!46663 List!7211)) (IdentValue!1491 (value!46664 List!7211)) (DelimiterValue!2983 (value!46665 List!7211)) (DedentValue!1491 (value!46666 List!7211)) (NewLineValue!1491 (value!46667 List!7211)) (IntegerValue!4473 (value!46668 (_ BitVec 32)) (text!10884 List!7211)) (IntegerValue!4474 (value!46669 Int) (text!10885 List!7211)) (Times!1491) (Or!1491) (Equal!1491) (Minus!1491) (Broken!7459 (value!46670 List!7211)) (And!1491) (Div!1491) (LessEqual!1491) (Mod!1491) (Concat!3283) (Not!1491) (Plus!1491) (SpaceValue!1491 (value!46671 List!7211)) (IntegerValue!4475 (value!46672 Int) (text!10886 List!7211)) (StringLiteralValue!4474 (text!10887 List!7211)) (FloatLiteralValue!2983 (text!10888 List!7211)) (BytesLiteralValue!1491 (value!46673 List!7211)) (CommentValue!2983 (value!46674 List!7211)) (StringLiteralValue!4475 (value!46675 List!7211)) (ErrorTokenValue!1491 (msg!1552 List!7211)) )
))
(declare-datatypes ((Regex!1792 0))(
  ( (ElementMatch!1792 (c!119044 (_ BitVec 16))) (Concat!3284 (regOne!4096 Regex!1792) (regTwo!4096 Regex!1792)) (EmptyExpr!1792) (Star!1792 (reg!2121 Regex!1792)) (EmptyLang!1792) (Union!1792 (regOne!4097 Regex!1792) (regTwo!4097 Regex!1792)) )
))
(declare-datatypes ((String!9195 0))(
  ( (String!9196 (value!46676 String)) )
))
(declare-datatypes ((IArray!5111 0))(
  ( (IArray!5112 (innerList!2613 List!7211)) )
))
(declare-datatypes ((Conc!2555 0))(
  ( (Node!2555 (left!5833 Conc!2555) (right!6163 Conc!2555) (csize!5340 Int) (cheight!2766 Int)) (Leaf!3800 (xs!5204 IArray!5111) (csize!5341 Int)) (Empty!2555) )
))
(declare-datatypes ((BalanceConc!5122 0))(
  ( (BalanceConc!5123 (c!119045 Conc!2555)) )
))
(declare-datatypes ((TokenValueInjection!2734 0))(
  ( (TokenValueInjection!2735 (toValue!2398 Int) (toChars!2257 Int)) )
))
(declare-datatypes ((Rule!2714 0))(
  ( (Rule!2715 (regex!1457 Regex!1792) (tag!1719 String!9195) (isSeparator!1457 Bool) (transformation!1457 TokenValueInjection!2734)) )
))
(declare-datatypes ((Token!2636 0))(
  ( (Token!2637 (value!46677 TokenValue!1491) (rule!2252 Rule!2714) (size!5693 Int) (originalCharacters!1489 List!7211)) )
))
(declare-datatypes ((List!7212 0))(
  ( (Nil!7198) (Cons!7198 (h!12599 Token!2636) (t!86314 List!7212)) )
))
(declare-datatypes ((IArray!5113 0))(
  ( (IArray!5114 (innerList!2614 List!7212)) )
))
(declare-datatypes ((Conc!2556 0))(
  ( (Node!2556 (left!5834 Conc!2556) (right!6164 Conc!2556) (csize!5342 Int) (cheight!2767 Int)) (Leaf!3801 (xs!5205 IArray!5113) (csize!5343 Int)) (Empty!2556) )
))
(declare-datatypes ((List!7213 0))(
  ( (Nil!7199) (Cons!7199 (h!12600 Rule!2714) (t!86315 List!7213)) )
))
(declare-datatypes ((BalanceConc!5124 0))(
  ( (BalanceConc!5125 (c!119046 Conc!2556)) )
))
(declare-datatypes ((PrintableTokens!218 0))(
  ( (PrintableTokens!219 (rules!8304 List!7213) (tokens!1282 BalanceConc!5124)) )
))
(declare-datatypes ((List!7214 0))(
  ( (Nil!7200) (Cons!7200 (h!12601 PrintableTokens!218) (t!86316 List!7214)) )
))
(declare-fun s!1385 () List!7214)

(declare-fun e!409141 () Bool)

(declare-fun e!409142 () Bool)

(declare-fun tp!201779 () Bool)

(declare-fun b!661428 () Bool)

(declare-fun inv!9256 (PrintableTokens!218) Bool)

(assert (=> b!661428 (= e!409141 (and (inv!9256 (h!12601 s!1385)) e!409142 tp!201779))))

(declare-fun res!293461 () Bool)

(declare-fun e!409144 () Bool)

(assert (=> start!64666 (=> (not res!293461) (not e!409144))))

(declare-fun forall!1905 (List!7214 Int) Bool)

(assert (=> start!64666 (= res!293461 (forall!1905 s!1385 lambda!20488))))

(assert (=> start!64666 e!409144))

(assert (=> start!64666 e!409141))

(declare-fun b!661429 () Bool)

(declare-fun res!293462 () Bool)

(assert (=> b!661429 (=> (not res!293462) (not e!409144))))

(assert (=> b!661429 (= res!293462 (is-Nil!7200 s!1385))))

(declare-fun b!661430 () Bool)

(declare-fun e!409143 () Bool)

(declare-fun tp!201781 () Bool)

(declare-fun inv!9257 (Conc!2556) Bool)

(assert (=> b!661430 (= e!409143 (and (inv!9257 (c!119046 (tokens!1282 (h!12601 s!1385)))) tp!201781))))

(assert (=> b!661431 (= e!409144 (not (forall!1905 s!1385 lambda!20489)))))

(declare-fun tp!201780 () Bool)

(declare-fun b!661432 () Bool)

(declare-fun inv!9258 (BalanceConc!5124) Bool)

(assert (=> b!661432 (= e!409142 (and tp!201780 (inv!9258 (tokens!1282 (h!12601 s!1385))) e!409143))))

(assert (= (and start!64666 res!293461) b!661429))

(assert (= (and b!661429 res!293462) b!661431))

(assert (= b!661432 b!661430))

(assert (= b!661428 b!661432))

(assert (= (and start!64666 (is-Cons!7200 s!1385)) b!661428))

(declare-fun m!927747 () Bool)

(assert (=> b!661432 m!927747))

(declare-fun m!927749 () Bool)

(assert (=> b!661430 m!927749))

(declare-fun m!927751 () Bool)

(assert (=> start!64666 m!927751))

(declare-fun m!927753 () Bool)

(assert (=> b!661431 m!927753))

(declare-fun m!927755 () Bool)

(assert (=> b!661428 m!927755))

(push 1)

(assert (not b!661428))

(assert (not start!64666))

(assert (not b!661431))

(assert (not b!661432))

(assert (not b!661430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226091 () Bool)

(declare-fun isBalanced!669 (Conc!2556) Bool)

(assert (=> d!226091 (= (inv!9258 (tokens!1282 (h!12601 s!1385))) (isBalanced!669 (c!119046 (tokens!1282 (h!12601 s!1385)))))))

(declare-fun bs!94467 () Bool)

(assert (= bs!94467 d!226091))

(declare-fun m!927767 () Bool)

(assert (=> bs!94467 m!927767))

(assert (=> b!661432 d!226091))

(declare-fun d!226093 () Bool)

(declare-fun res!293473 () Bool)

(declare-fun e!409161 () Bool)

(assert (=> d!226093 (=> res!293473 e!409161)))

(assert (=> d!226093 (= res!293473 (is-Nil!7200 s!1385))))

(assert (=> d!226093 (= (forall!1905 s!1385 lambda!20488) e!409161)))

(declare-fun b!661452 () Bool)

(declare-fun e!409162 () Bool)

(assert (=> b!661452 (= e!409161 e!409162)))

(declare-fun res!293474 () Bool)

(assert (=> b!661452 (=> (not res!293474) (not e!409162))))

(declare-fun dynLambda!3810 (Int PrintableTokens!218) Bool)

(assert (=> b!661452 (= res!293474 (dynLambda!3810 lambda!20488 (h!12601 s!1385)))))

(declare-fun b!661453 () Bool)

(assert (=> b!661453 (= e!409162 (forall!1905 (t!86316 s!1385) lambda!20488))))

(assert (= (and d!226093 (not res!293473)) b!661452))

(assert (= (and b!661452 res!293474) b!661453))

(declare-fun b_lambda!25717 () Bool)

(assert (=> (not b_lambda!25717) (not b!661452)))

(declare-fun m!927769 () Bool)

(assert (=> b!661452 m!927769))

(declare-fun m!927771 () Bool)

(assert (=> b!661453 m!927771))

(assert (=> start!64666 d!226093))

(declare-fun d!226095 () Bool)

(declare-fun res!293475 () Bool)

(declare-fun e!409163 () Bool)

(assert (=> d!226095 (=> res!293475 e!409163)))

(assert (=> d!226095 (= res!293475 (is-Nil!7200 s!1385))))

(assert (=> d!226095 (= (forall!1905 s!1385 lambda!20489) e!409163)))

(declare-fun b!661454 () Bool)

(declare-fun e!409164 () Bool)

(assert (=> b!661454 (= e!409163 e!409164)))

(declare-fun res!293476 () Bool)

(assert (=> b!661454 (=> (not res!293476) (not e!409164))))

(assert (=> b!661454 (= res!293476 (dynLambda!3810 lambda!20489 (h!12601 s!1385)))))

(declare-fun b!661455 () Bool)

(assert (=> b!661455 (= e!409164 (forall!1905 (t!86316 s!1385) lambda!20489))))

(assert (= (and d!226095 (not res!293475)) b!661454))

(assert (= (and b!661454 res!293476) b!661455))

(declare-fun b_lambda!25719 () Bool)

(assert (=> (not b_lambda!25719) (not b!661454)))

(declare-fun m!927773 () Bool)

(assert (=> b!661454 m!927773))

(declare-fun m!927775 () Bool)

(assert (=> b!661455 m!927775))

(assert (=> b!661431 d!226095))

(declare-fun d!226097 () Bool)

(declare-fun c!119052 () Bool)

(assert (=> d!226097 (= c!119052 (is-Node!2556 (c!119046 (tokens!1282 (h!12601 s!1385)))))))

(declare-fun e!409169 () Bool)

(assert (=> d!226097 (= (inv!9257 (c!119046 (tokens!1282 (h!12601 s!1385)))) e!409169)))

(declare-fun b!661462 () Bool)

(declare-fun inv!9262 (Conc!2556) Bool)

(assert (=> b!661462 (= e!409169 (inv!9262 (c!119046 (tokens!1282 (h!12601 s!1385)))))))

(declare-fun b!661463 () Bool)

(declare-fun e!409170 () Bool)

(assert (=> b!661463 (= e!409169 e!409170)))

(declare-fun res!293479 () Bool)

(assert (=> b!661463 (= res!293479 (not (is-Leaf!3801 (c!119046 (tokens!1282 (h!12601 s!1385))))))))

(assert (=> b!661463 (=> res!293479 e!409170)))

(declare-fun b!661464 () Bool)

(declare-fun inv!9263 (Conc!2556) Bool)

(assert (=> b!661464 (= e!409170 (inv!9263 (c!119046 (tokens!1282 (h!12601 s!1385)))))))

(assert (= (and d!226097 c!119052) b!661462))

(assert (= (and d!226097 (not c!119052)) b!661463))

(assert (= (and b!661463 (not res!293479)) b!661464))

(declare-fun m!927777 () Bool)

(assert (=> b!661462 m!927777))

(declare-fun m!927779 () Bool)

(assert (=> b!661464 m!927779))

(assert (=> b!661430 d!226097))

(declare-fun d!226101 () Bool)

(declare-fun res!293486 () Bool)

(declare-fun e!409173 () Bool)

(assert (=> d!226101 (=> (not res!293486) (not e!409173))))

(declare-fun isEmpty!4797 (List!7213) Bool)

(assert (=> d!226101 (= res!293486 (not (isEmpty!4797 (rules!8304 (h!12601 s!1385)))))))

(assert (=> d!226101 (= (inv!9256 (h!12601 s!1385)) e!409173)))

(declare-fun b!661471 () Bool)

(declare-fun res!293487 () Bool)

(assert (=> b!661471 (=> (not res!293487) (not e!409173))))

(declare-datatypes ((LexerInterface!1277 0))(
  ( (LexerInterfaceExt!1274 (__x!5079 Int)) (Lexer!1275) )
))
(declare-fun rulesInvariant!1212 (LexerInterface!1277 List!7213) Bool)

(assert (=> b!661471 (= res!293487 (rulesInvariant!1212 Lexer!1275 (rules!8304 (h!12601 s!1385))))))

(declare-fun b!661472 () Bool)

(declare-fun res!293488 () Bool)

(assert (=> b!661472 (=> (not res!293488) (not e!409173))))

(declare-fun rulesProduceEachTokenIndividually!595 (LexerInterface!1277 List!7213 BalanceConc!5124) Bool)

(assert (=> b!661472 (= res!293488 (rulesProduceEachTokenIndividually!595 Lexer!1275 (rules!8304 (h!12601 s!1385)) (tokens!1282 (h!12601 s!1385))))))

(declare-fun b!661473 () Bool)

(declare-fun separableTokens!45 (LexerInterface!1277 BalanceConc!5124 List!7213) Bool)

(assert (=> b!661473 (= e!409173 (separableTokens!45 Lexer!1275 (tokens!1282 (h!12601 s!1385)) (rules!8304 (h!12601 s!1385))))))

(assert (= (and d!226101 res!293486) b!661471))

(assert (= (and b!661471 res!293487) b!661472))

(assert (= (and b!661472 res!293488) b!661473))

(declare-fun m!927781 () Bool)

(assert (=> d!226101 m!927781))

(declare-fun m!927783 () Bool)

(assert (=> b!661471 m!927783))

(declare-fun m!927785 () Bool)

(assert (=> b!661472 m!927785))

(declare-fun m!927787 () Bool)

(assert (=> b!661473 m!927787))

(assert (=> b!661428 d!226101))

(declare-fun b!661484 () Bool)

(declare-fun b_free!19101 () Bool)

(declare-fun b_next!19165 () Bool)

(assert (=> b!661484 (= b_free!19101 (not b_next!19165))))

(declare-fun tp!201798 () Bool)

(declare-fun b_and!62895 () Bool)

(assert (=> b!661484 (= tp!201798 b_and!62895)))

(declare-fun b_free!19103 () Bool)

(declare-fun b_next!19167 () Bool)

(assert (=> b!661484 (= b_free!19103 (not b_next!19167))))

(declare-fun tp!201799 () Bool)

(declare-fun b_and!62897 () Bool)

(assert (=> b!661484 (= tp!201799 b_and!62897)))

(declare-fun e!409182 () Bool)

(assert (=> b!661484 (= e!409182 (and tp!201798 tp!201799))))

(declare-fun b!661483 () Bool)

(declare-fun e!409183 () Bool)

(declare-fun inv!9253 (String!9195) Bool)

(declare-fun inv!9264 (TokenValueInjection!2734) Bool)

(assert (=> b!661483 (= e!409183 (and (inv!9253 (tag!1719 (h!12600 (rules!8304 (h!12601 s!1385))))) (inv!9264 (transformation!1457 (h!12600 (rules!8304 (h!12601 s!1385))))) e!409182))))

(declare-fun b!661482 () Bool)

(declare-fun e!409184 () Bool)

(declare-fun tp!201797 () Bool)

(assert (=> b!661482 (= e!409184 (and e!409183 tp!201797))))

(assert (=> b!661432 (= tp!201780 e!409184)))

(assert (= b!661483 b!661484))

(assert (= b!661482 b!661483))

(assert (= (and b!661432 (is-Cons!7199 (rules!8304 (h!12601 s!1385)))) b!661482))

(declare-fun m!927789 () Bool)

(assert (=> b!661483 m!927789))

(declare-fun m!927791 () Bool)

(assert (=> b!661483 m!927791))

(declare-fun b!661493 () Bool)

(declare-fun tp!201807 () Bool)

(declare-fun e!409191 () Bool)

(declare-fun tp!201808 () Bool)

(assert (=> b!661493 (= e!409191 (and (inv!9257 (left!5834 (c!119046 (tokens!1282 (h!12601 s!1385))))) tp!201807 (inv!9257 (right!6164 (c!119046 (tokens!1282 (h!12601 s!1385))))) tp!201808))))

(declare-fun b!661495 () Bool)

(declare-fun e!409190 () Bool)

(declare-fun tp!201806 () Bool)

(assert (=> b!661495 (= e!409190 tp!201806)))

(declare-fun b!661494 () Bool)

(declare-fun inv!9265 (IArray!5113) Bool)

(assert (=> b!661494 (= e!409191 (and (inv!9265 (xs!5205 (c!119046 (tokens!1282 (h!12601 s!1385))))) e!409190))))

(assert (=> b!661430 (= tp!201781 (and (inv!9257 (c!119046 (tokens!1282 (h!12601 s!1385)))) e!409191))))

(assert (= (and b!661430 (is-Node!2556 (c!119046 (tokens!1282 (h!12601 s!1385))))) b!661493))

(assert (= b!661494 b!661495))

(assert (= (and b!661430 (is-Leaf!3801 (c!119046 (tokens!1282 (h!12601 s!1385))))) b!661494))

(declare-fun m!927793 () Bool)

(assert (=> b!661493 m!927793))

(declare-fun m!927795 () Bool)

(assert (=> b!661493 m!927795))

(declare-fun m!927797 () Bool)

(assert (=> b!661494 m!927797))

(assert (=> b!661430 m!927749))

(declare-fun b!661506 () Bool)

(declare-fun e!409199 () Bool)

(declare-fun tp!201817 () Bool)

(assert (=> b!661506 (= e!409199 (and (inv!9257 (c!119046 (tokens!1282 (h!12601 (t!86316 s!1385))))) tp!201817))))

(declare-fun b!661505 () Bool)

(declare-fun tp!201815 () Bool)

(declare-fun e!409198 () Bool)

(assert (=> b!661505 (= e!409198 (and tp!201815 (inv!9258 (tokens!1282 (h!12601 (t!86316 s!1385)))) e!409199))))

(declare-fun tp!201816 () Bool)

(declare-fun e!409200 () Bool)

(declare-fun b!661504 () Bool)

(assert (=> b!661504 (= e!409200 (and (inv!9256 (h!12601 (t!86316 s!1385))) e!409198 tp!201816))))

(assert (=> b!661428 (= tp!201779 e!409200)))

(assert (= b!661505 b!661506))

(assert (= b!661504 b!661505))

(assert (= (and b!661428 (is-Cons!7200 (t!86316 s!1385))) b!661504))

(declare-fun m!927799 () Bool)

(assert (=> b!661506 m!927799))

(declare-fun m!927801 () Bool)

(assert (=> b!661505 m!927801))

(declare-fun m!927803 () Bool)

(assert (=> b!661504 m!927803))

(declare-fun b_lambda!25721 () Bool)

(assert (= b_lambda!25717 (or start!64666 b_lambda!25721)))

(declare-fun bs!94468 () Bool)

(declare-fun d!226103 () Bool)

(assert (= bs!94468 (and d!226103 start!64666)))

(declare-fun usesJsonRules!0 (PrintableTokens!218) Bool)

(assert (=> bs!94468 (= (dynLambda!3810 lambda!20488 (h!12601 s!1385)) (usesJsonRules!0 (h!12601 s!1385)))))

(declare-fun m!927805 () Bool)

(assert (=> bs!94468 m!927805))

(assert (=> b!661452 d!226103))

(declare-fun b_lambda!25723 () Bool)

(assert (= b_lambda!25719 (or b!661431 b_lambda!25723)))

(declare-fun bs!94469 () Bool)

(declare-fun d!226105 () Bool)

(assert (= bs!94469 (and d!226105 b!661431)))

(declare-datatypes ((tuple2!7570 0))(
  ( (tuple2!7571 (_1!4156 Int) (_2!4156 PrintableTokens!218)) )
))
(declare-fun addId!0 (PrintableTokens!218) tuple2!7570)

(assert (=> bs!94469 (= (dynLambda!3810 lambda!20489 (h!12601 s!1385)) (usesJsonRules!0 (_2!4156 (addId!0 (h!12601 s!1385)))))))

(declare-fun m!927807 () Bool)

(assert (=> bs!94469 m!927807))

(declare-fun m!927809 () Bool)

(assert (=> bs!94469 m!927809))

(assert (=> b!661454 d!226105))

(push 1)

(assert (not b!661495))

(assert (not d!226091))

(assert (not b!661506))

(assert (not b!661472))

(assert (not b!661504))

(assert (not b!661483))

(assert (not bs!94468))

(assert (not b_next!19165))

(assert (not b!661471))

(assert (not b!661493))

(assert (not bs!94469))

(assert (not b!661473))

(assert (not b_lambda!25721))

(assert (not b!661455))

(assert (not b!661482))

(assert (not b!661494))

(assert (not d!226101))

(assert b_and!62895)

(assert (not b_lambda!25723))

(assert (not b!661464))

(assert (not b_next!19167))

(assert (not b!661462))

(assert (not b!661505))

(assert (not b!661453))

(assert (not b!661430))

(assert b_and!62897)

(check-sat)

(pop 1)

(push 1)

(assert b_and!62897)

(assert b_and!62895)

(assert (not b_next!19165))

(assert (not b_next!19167))

(check-sat)

(pop 1)

