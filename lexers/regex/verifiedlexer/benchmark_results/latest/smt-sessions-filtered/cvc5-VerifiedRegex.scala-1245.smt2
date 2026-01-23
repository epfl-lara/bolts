; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64680 () Bool)

(assert start!64680)

(declare-datatypes ((List!7219 0))(
  ( (Nil!7205) (Cons!7205 (h!12606 (_ BitVec 16)) (t!86321 List!7219)) )
))
(declare-datatypes ((TokenValue!1493 0))(
  ( (FloatLiteralValue!2986 (text!10896 List!7219)) (TokenValueExt!1492 (__x!5080 Int)) (Broken!7465 (value!46708 List!7219)) (Object!1506) (End!1493) (Def!1493) (Underscore!1493) (Match!1493) (Else!1493) (Error!1493) (Case!1493) (If!1493) (Extends!1493) (Abstract!1493) (Class!1493) (Val!1493) (DelimiterValue!2986 (del!1553 List!7219)) (KeywordValue!1499 (value!46709 List!7219)) (CommentValue!2986 (value!46710 List!7219)) (WhitespaceValue!2986 (value!46711 List!7219)) (IndentationValue!1493 (value!46712 List!7219)) (String!9204) (Int32!1493) (Broken!7466 (value!46713 List!7219)) (Boolean!1494) (Unit!12495) (OperatorValue!1496 (op!1553 List!7219)) (IdentifierValue!2986 (value!46714 List!7219)) (IdentifierValue!2987 (value!46715 List!7219)) (WhitespaceValue!2987 (value!46716 List!7219)) (True!2986) (False!2986) (Broken!7467 (value!46717 List!7219)) (Broken!7468 (value!46718 List!7219)) (True!2987) (RightBrace!1493) (RightBracket!1493) (Colon!1493) (Null!1493) (Comma!1493) (LeftBracket!1493) (False!2987) (LeftBrace!1493) (ImaginaryLiteralValue!1493 (text!10897 List!7219)) (StringLiteralValue!4479 (value!46719 List!7219)) (EOFValue!1493 (value!46720 List!7219)) (IdentValue!1493 (value!46721 List!7219)) (DelimiterValue!2987 (value!46722 List!7219)) (DedentValue!1493 (value!46723 List!7219)) (NewLineValue!1493 (value!46724 List!7219)) (IntegerValue!4479 (value!46725 (_ BitVec 32)) (text!10898 List!7219)) (IntegerValue!4480 (value!46726 Int) (text!10899 List!7219)) (Times!1493) (Or!1493) (Equal!1493) (Minus!1493) (Broken!7469 (value!46727 List!7219)) (And!1493) (Div!1493) (LessEqual!1493) (Mod!1493) (Concat!3287) (Not!1493) (Plus!1493) (SpaceValue!1493 (value!46728 List!7219)) (IntegerValue!4481 (value!46729 Int) (text!10900 List!7219)) (StringLiteralValue!4480 (text!10901 List!7219)) (FloatLiteralValue!2987 (text!10902 List!7219)) (BytesLiteralValue!1493 (value!46730 List!7219)) (CommentValue!2987 (value!46731 List!7219)) (StringLiteralValue!4481 (value!46732 List!7219)) (ErrorTokenValue!1493 (msg!1554 List!7219)) )
))
(declare-datatypes ((Regex!1794 0))(
  ( (ElementMatch!1794 (c!119053 (_ BitVec 16))) (Concat!3288 (regOne!4100 Regex!1794) (regTwo!4100 Regex!1794)) (EmptyExpr!1794) (Star!1794 (reg!2123 Regex!1794)) (EmptyLang!1794) (Union!1794 (regOne!4101 Regex!1794) (regTwo!4101 Regex!1794)) )
))
(declare-datatypes ((String!9205 0))(
  ( (String!9206 (value!46733 String)) )
))
(declare-datatypes ((IArray!5119 0))(
  ( (IArray!5120 (innerList!2617 List!7219)) )
))
(declare-datatypes ((Conc!2559 0))(
  ( (Node!2559 (left!5838 Conc!2559) (right!6168 Conc!2559) (csize!5348 Int) (cheight!2770 Int)) (Leaf!3805 (xs!5208 IArray!5119) (csize!5349 Int)) (Empty!2559) )
))
(declare-datatypes ((BalanceConc!5130 0))(
  ( (BalanceConc!5131 (c!119054 Conc!2559)) )
))
(declare-datatypes ((TokenValueInjection!2738 0))(
  ( (TokenValueInjection!2739 (toValue!2400 Int) (toChars!2259 Int)) )
))
(declare-datatypes ((Rule!2718 0))(
  ( (Rule!2719 (regex!1459 Regex!1794) (tag!1721 String!9205) (isSeparator!1459 Bool) (transformation!1459 TokenValueInjection!2738)) )
))
(declare-datatypes ((Token!2640 0))(
  ( (Token!2641 (value!46734 TokenValue!1493) (rule!2254 Rule!2718) (size!5695 Int) (originalCharacters!1491 List!7219)) )
))
(declare-datatypes ((List!7220 0))(
  ( (Nil!7206) (Cons!7206 (h!12607 Token!2640) (t!86322 List!7220)) )
))
(declare-datatypes ((IArray!5121 0))(
  ( (IArray!5122 (innerList!2618 List!7220)) )
))
(declare-datatypes ((Conc!2560 0))(
  ( (Node!2560 (left!5839 Conc!2560) (right!6169 Conc!2560) (csize!5350 Int) (cheight!2771 Int)) (Leaf!3806 (xs!5209 IArray!5121) (csize!5351 Int)) (Empty!2560) )
))
(declare-datatypes ((List!7221 0))(
  ( (Nil!7207) (Cons!7207 (h!12608 Rule!2718) (t!86323 List!7221)) )
))
(declare-datatypes ((BalanceConc!5132 0))(
  ( (BalanceConc!5133 (c!119055 Conc!2560)) )
))
(declare-datatypes ((PrintableTokens!222 0))(
  ( (PrintableTokens!223 (rules!8306 List!7221) (tokens!1284 BalanceConc!5132)) )
))
(declare-datatypes ((List!7222 0))(
  ( (Nil!7208) (Cons!7208 (h!12609 PrintableTokens!222) (t!86324 List!7222)) )
))
(declare-fun s!1385 () List!7222)

(declare-fun e!409242 () Bool)

(declare-fun b!661559 () Bool)

(declare-fun e!409241 () Bool)

(declare-fun tp!201851 () Bool)

(declare-fun inv!9269 (BalanceConc!5132) Bool)

(assert (=> b!661559 (= e!409242 (and tp!201851 (inv!9269 (tokens!1284 (h!12609 s!1385))) e!409241))))

(declare-fun b!661560 () Bool)

(declare-fun res!293502 () Bool)

(declare-fun e!409240 () Bool)

(assert (=> b!661560 (=> (not res!293502) (not e!409240))))

(assert (=> b!661560 (= res!293502 (not (is-Nil!7208 s!1385)))))

(declare-fun res!293503 () Bool)

(assert (=> start!64680 (=> (not res!293503) (not e!409240))))

(declare-fun lambda!20498 () Int)

(declare-fun forall!1907 (List!7222 Int) Bool)

(assert (=> start!64680 (= res!293503 (forall!1907 s!1385 lambda!20498))))

(assert (=> start!64680 e!409240))

(declare-fun e!409239 () Bool)

(assert (=> start!64680 e!409239))

(declare-fun b!661561 () Bool)

(declare-fun tp!201853 () Bool)

(declare-fun inv!9270 (Conc!2560) Bool)

(assert (=> b!661561 (= e!409241 (and (inv!9270 (c!119055 (tokens!1284 (h!12609 s!1385)))) tp!201853))))

(declare-fun b!661562 () Bool)

(declare-fun ListPrimitiveSize!55 (List!7222) Int)

(assert (=> b!661562 (= e!409240 (>= (ListPrimitiveSize!55 (t!86324 s!1385)) (ListPrimitiveSize!55 s!1385)))))

(declare-fun b!661563 () Bool)

(declare-fun tp!201852 () Bool)

(declare-fun inv!9271 (PrintableTokens!222) Bool)

(assert (=> b!661563 (= e!409239 (and (inv!9271 (h!12609 s!1385)) e!409242 tp!201852))))

(assert (= (and start!64680 res!293503) b!661560))

(assert (= (and b!661560 res!293502) b!661562))

(assert (= b!661559 b!661561))

(assert (= b!661563 b!661559))

(assert (= (and start!64680 (is-Cons!7208 s!1385)) b!661563))

(declare-fun m!927811 () Bool)

(assert (=> b!661559 m!927811))

(declare-fun m!927813 () Bool)

(assert (=> start!64680 m!927813))

(declare-fun m!927815 () Bool)

(assert (=> b!661561 m!927815))

(declare-fun m!927817 () Bool)

(assert (=> b!661563 m!927817))

(declare-fun m!927819 () Bool)

(assert (=> b!661562 m!927819))

(declare-fun m!927821 () Bool)

(assert (=> b!661562 m!927821))

(push 1)

(assert (not b!661563))

(assert (not b!661559))

(assert (not start!64680))

(assert (not b!661561))

(assert (not b!661562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226108 () Bool)

(declare-fun res!293516 () Bool)

(declare-fun e!409257 () Bool)

(assert (=> d!226108 (=> (not res!293516) (not e!409257))))

(declare-fun isEmpty!4798 (List!7221) Bool)

(assert (=> d!226108 (= res!293516 (not (isEmpty!4798 (rules!8306 (h!12609 s!1385)))))))

(assert (=> d!226108 (= (inv!9271 (h!12609 s!1385)) e!409257)))

(declare-fun b!661585 () Bool)

(declare-fun res!293517 () Bool)

(assert (=> b!661585 (=> (not res!293517) (not e!409257))))

(declare-datatypes ((LexerInterface!1278 0))(
  ( (LexerInterfaceExt!1275 (__x!5082 Int)) (Lexer!1276) )
))
(declare-fun rulesInvariant!1213 (LexerInterface!1278 List!7221) Bool)

(assert (=> b!661585 (= res!293517 (rulesInvariant!1213 Lexer!1276 (rules!8306 (h!12609 s!1385))))))

(declare-fun b!661586 () Bool)

(declare-fun res!293518 () Bool)

(assert (=> b!661586 (=> (not res!293518) (not e!409257))))

(declare-fun rulesProduceEachTokenIndividually!596 (LexerInterface!1278 List!7221 BalanceConc!5132) Bool)

(assert (=> b!661586 (= res!293518 (rulesProduceEachTokenIndividually!596 Lexer!1276 (rules!8306 (h!12609 s!1385)) (tokens!1284 (h!12609 s!1385))))))

(declare-fun b!661587 () Bool)

(declare-fun separableTokens!46 (LexerInterface!1278 BalanceConc!5132 List!7221) Bool)

(assert (=> b!661587 (= e!409257 (separableTokens!46 Lexer!1276 (tokens!1284 (h!12609 s!1385)) (rules!8306 (h!12609 s!1385))))))

(assert (= (and d!226108 res!293516) b!661585))

(assert (= (and b!661585 res!293517) b!661586))

(assert (= (and b!661586 res!293518) b!661587))

(declare-fun m!927835 () Bool)

(assert (=> d!226108 m!927835))

(declare-fun m!927837 () Bool)

(assert (=> b!661585 m!927837))

(declare-fun m!927839 () Bool)

(assert (=> b!661586 m!927839))

(declare-fun m!927841 () Bool)

(assert (=> b!661587 m!927841))

(assert (=> b!661563 d!226108))

(declare-fun d!226112 () Bool)

(declare-fun lt!282106 () Int)

(assert (=> d!226112 (>= lt!282106 0)))

(declare-fun e!409260 () Int)

(assert (=> d!226112 (= lt!282106 e!409260)))

(declare-fun c!119061 () Bool)

(assert (=> d!226112 (= c!119061 (is-Nil!7208 (t!86324 s!1385)))))

(assert (=> d!226112 (= (ListPrimitiveSize!55 (t!86324 s!1385)) lt!282106)))

(declare-fun b!661592 () Bool)

(assert (=> b!661592 (= e!409260 0)))

(declare-fun b!661593 () Bool)

(assert (=> b!661593 (= e!409260 (+ 1 (ListPrimitiveSize!55 (t!86324 (t!86324 s!1385)))))))

(assert (= (and d!226112 c!119061) b!661592))

(assert (= (and d!226112 (not c!119061)) b!661593))

(declare-fun m!927843 () Bool)

(assert (=> b!661593 m!927843))

(assert (=> b!661562 d!226112))

(declare-fun d!226114 () Bool)

(declare-fun lt!282107 () Int)

(assert (=> d!226114 (>= lt!282107 0)))

(declare-fun e!409261 () Int)

(assert (=> d!226114 (= lt!282107 e!409261)))

(declare-fun c!119062 () Bool)

(assert (=> d!226114 (= c!119062 (is-Nil!7208 s!1385))))

(assert (=> d!226114 (= (ListPrimitiveSize!55 s!1385) lt!282107)))

(declare-fun b!661594 () Bool)

(assert (=> b!661594 (= e!409261 0)))

(declare-fun b!661595 () Bool)

(assert (=> b!661595 (= e!409261 (+ 1 (ListPrimitiveSize!55 (t!86324 s!1385))))))

(assert (= (and d!226114 c!119062) b!661594))

(assert (= (and d!226114 (not c!119062)) b!661595))

(assert (=> b!661595 m!927819))

(assert (=> b!661562 d!226114))

(declare-fun d!226116 () Bool)

(declare-fun c!119065 () Bool)

(assert (=> d!226116 (= c!119065 (is-Node!2560 (c!119055 (tokens!1284 (h!12609 s!1385)))))))

(declare-fun e!409266 () Bool)

(assert (=> d!226116 (= (inv!9270 (c!119055 (tokens!1284 (h!12609 s!1385)))) e!409266)))

(declare-fun b!661602 () Bool)

(declare-fun inv!9275 (Conc!2560) Bool)

(assert (=> b!661602 (= e!409266 (inv!9275 (c!119055 (tokens!1284 (h!12609 s!1385)))))))

(declare-fun b!661603 () Bool)

(declare-fun e!409267 () Bool)

(assert (=> b!661603 (= e!409266 e!409267)))

(declare-fun res!293521 () Bool)

(assert (=> b!661603 (= res!293521 (not (is-Leaf!3806 (c!119055 (tokens!1284 (h!12609 s!1385))))))))

(assert (=> b!661603 (=> res!293521 e!409267)))

(declare-fun b!661604 () Bool)

(declare-fun inv!9276 (Conc!2560) Bool)

(assert (=> b!661604 (= e!409267 (inv!9276 (c!119055 (tokens!1284 (h!12609 s!1385)))))))

(assert (= (and d!226116 c!119065) b!661602))

(assert (= (and d!226116 (not c!119065)) b!661603))

(assert (= (and b!661603 (not res!293521)) b!661604))

(declare-fun m!927845 () Bool)

(assert (=> b!661602 m!927845))

(declare-fun m!927847 () Bool)

(assert (=> b!661604 m!927847))

(assert (=> b!661561 d!226116))

(declare-fun d!226118 () Bool)

(declare-fun res!293526 () Bool)

(declare-fun e!409272 () Bool)

(assert (=> d!226118 (=> res!293526 e!409272)))

(assert (=> d!226118 (= res!293526 (is-Nil!7208 s!1385))))

(assert (=> d!226118 (= (forall!1907 s!1385 lambda!20498) e!409272)))

(declare-fun b!661609 () Bool)

(declare-fun e!409273 () Bool)

(assert (=> b!661609 (= e!409272 e!409273)))

(declare-fun res!293527 () Bool)

(assert (=> b!661609 (=> (not res!293527) (not e!409273))))

(declare-fun dynLambda!3811 (Int PrintableTokens!222) Bool)

(assert (=> b!661609 (= res!293527 (dynLambda!3811 lambda!20498 (h!12609 s!1385)))))

(declare-fun b!661610 () Bool)

(assert (=> b!661610 (= e!409273 (forall!1907 (t!86324 s!1385) lambda!20498))))

(assert (= (and d!226118 (not res!293526)) b!661609))

(assert (= (and b!661609 res!293527) b!661610))

(declare-fun b_lambda!25725 () Bool)

(assert (=> (not b_lambda!25725) (not b!661609)))

(declare-fun m!927849 () Bool)

(assert (=> b!661609 m!927849))

(declare-fun m!927851 () Bool)

(assert (=> b!661610 m!927851))

(assert (=> start!64680 d!226118))

(declare-fun d!226120 () Bool)

(declare-fun isBalanced!670 (Conc!2560) Bool)

(assert (=> d!226120 (= (inv!9269 (tokens!1284 (h!12609 s!1385))) (isBalanced!670 (c!119055 (tokens!1284 (h!12609 s!1385)))))))

(declare-fun bs!94472 () Bool)

(assert (= bs!94472 d!226120))

(declare-fun m!927853 () Bool)

(assert (=> bs!94472 m!927853))

(assert (=> b!661559 d!226120))

(declare-fun b!661621 () Bool)

(declare-fun e!409281 () Bool)

(declare-fun tp!201869 () Bool)

(assert (=> b!661621 (= e!409281 (and (inv!9270 (c!119055 (tokens!1284 (h!12609 (t!86324 s!1385))))) tp!201869))))

(declare-fun tp!201870 () Bool)

(declare-fun e!409280 () Bool)

(declare-fun b!661620 () Bool)

(assert (=> b!661620 (= e!409280 (and tp!201870 (inv!9269 (tokens!1284 (h!12609 (t!86324 s!1385)))) e!409281))))

(declare-fun e!409282 () Bool)

(declare-fun tp!201871 () Bool)

(declare-fun b!661619 () Bool)

(assert (=> b!661619 (= e!409282 (and (inv!9271 (h!12609 (t!86324 s!1385))) e!409280 tp!201871))))

(assert (=> b!661563 (= tp!201852 e!409282)))

(assert (= b!661620 b!661621))

(assert (= b!661619 b!661620))

(assert (= (and b!661563 (is-Cons!7208 (t!86324 s!1385))) b!661619))

(declare-fun m!927855 () Bool)

(assert (=> b!661621 m!927855))

(declare-fun m!927857 () Bool)

(assert (=> b!661620 m!927857))

(declare-fun m!927859 () Bool)

(assert (=> b!661619 m!927859))

(declare-fun e!409287 () Bool)

(declare-fun tp!201880 () Bool)

(declare-fun b!661630 () Bool)

(declare-fun tp!201878 () Bool)

(assert (=> b!661630 (= e!409287 (and (inv!9270 (left!5839 (c!119055 (tokens!1284 (h!12609 s!1385))))) tp!201878 (inv!9270 (right!6169 (c!119055 (tokens!1284 (h!12609 s!1385))))) tp!201880))))

(declare-fun b!661632 () Bool)

(declare-fun e!409288 () Bool)

(declare-fun tp!201879 () Bool)

(assert (=> b!661632 (= e!409288 tp!201879)))

(declare-fun b!661631 () Bool)

(declare-fun inv!9277 (IArray!5121) Bool)

(assert (=> b!661631 (= e!409287 (and (inv!9277 (xs!5209 (c!119055 (tokens!1284 (h!12609 s!1385))))) e!409288))))

(assert (=> b!661561 (= tp!201853 (and (inv!9270 (c!119055 (tokens!1284 (h!12609 s!1385)))) e!409287))))

(assert (= (and b!661561 (is-Node!2560 (c!119055 (tokens!1284 (h!12609 s!1385))))) b!661630))

(assert (= b!661631 b!661632))

(assert (= (and b!661561 (is-Leaf!3806 (c!119055 (tokens!1284 (h!12609 s!1385))))) b!661631))

(declare-fun m!927861 () Bool)

(assert (=> b!661630 m!927861))

(declare-fun m!927863 () Bool)

(assert (=> b!661630 m!927863))

(declare-fun m!927865 () Bool)

(assert (=> b!661631 m!927865))

(assert (=> b!661561 m!927815))

(declare-fun b!661643 () Bool)

(declare-fun b_free!19105 () Bool)

(declare-fun b_next!19169 () Bool)

(assert (=> b!661643 (= b_free!19105 (not b_next!19169))))

(declare-fun tp!201887 () Bool)

(declare-fun b_and!62899 () Bool)

(assert (=> b!661643 (= tp!201887 b_and!62899)))

(declare-fun b_free!19107 () Bool)

(declare-fun b_next!19171 () Bool)

(assert (=> b!661643 (= b_free!19107 (not b_next!19171))))

(declare-fun tp!201888 () Bool)

(declare-fun b_and!62901 () Bool)

(assert (=> b!661643 (= tp!201888 b_and!62901)))

(declare-fun e!409300 () Bool)

(assert (=> b!661643 (= e!409300 (and tp!201887 tp!201888))))

(declare-fun b!661642 () Bool)

(declare-fun e!409299 () Bool)

(declare-fun inv!9266 (String!9205) Bool)

(declare-fun inv!9278 (TokenValueInjection!2738) Bool)

(assert (=> b!661642 (= e!409299 (and (inv!9266 (tag!1721 (h!12608 (rules!8306 (h!12609 s!1385))))) (inv!9278 (transformation!1459 (h!12608 (rules!8306 (h!12609 s!1385))))) e!409300))))

(declare-fun b!661641 () Bool)

(declare-fun e!409297 () Bool)

(declare-fun tp!201889 () Bool)

(assert (=> b!661641 (= e!409297 (and e!409299 tp!201889))))

(assert (=> b!661559 (= tp!201851 e!409297)))

(assert (= b!661642 b!661643))

(assert (= b!661641 b!661642))

(assert (= (and b!661559 (is-Cons!7207 (rules!8306 (h!12609 s!1385)))) b!661641))

(declare-fun m!927867 () Bool)

(assert (=> b!661642 m!927867))

(declare-fun m!927869 () Bool)

(assert (=> b!661642 m!927869))

(declare-fun b_lambda!25727 () Bool)

(assert (= b_lambda!25725 (or start!64680 b_lambda!25727)))

(declare-fun bs!94473 () Bool)

(declare-fun d!226122 () Bool)

(assert (= bs!94473 (and d!226122 start!64680)))

(declare-fun usesJsonRules!0 (PrintableTokens!222) Bool)

(assert (=> bs!94473 (= (dynLambda!3811 lambda!20498 (h!12609 s!1385)) (usesJsonRules!0 (h!12609 s!1385)))))

(declare-fun m!927871 () Bool)

(assert (=> bs!94473 m!927871))

(assert (=> b!661609 d!226122))

(push 1)

(assert b_and!62901)

(assert (not b!661585))

(assert (not b!661610))

(assert (not b!661586))

(assert (not b!661631))

(assert (not b!661641))

(assert (not d!226120))

(assert (not b!661593))

(assert (not b!661621))

(assert (not b_lambda!25727))

(assert (not b!661561))

(assert (not b!661595))

(assert b_and!62899)

(assert (not b!661587))

(assert (not b!661632))

(assert (not b!661602))

(assert (not b!661630))

(assert (not bs!94473))

(assert (not b!661620))

(assert (not b!661619))

(assert (not d!226108))

(assert (not b_next!19171))

(assert (not b_next!19169))

(assert (not b!661604))

(assert (not b!661642))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62901)

(assert b_and!62899)

(assert (not b_next!19169))

(assert (not b_next!19171))

(check-sat)

(pop 1)

