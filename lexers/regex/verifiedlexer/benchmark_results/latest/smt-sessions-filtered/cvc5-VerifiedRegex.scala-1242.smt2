; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64622 () Bool)

(assert start!64622)

(declare-fun res!293367 () Bool)

(declare-fun e!408916 () Bool)

(assert (=> start!64622 (=> (not res!293367) (not e!408916))))

(declare-datatypes ((List!7195 0))(
  ( (Nil!7181) (Cons!7181 (h!12582 (_ BitVec 16)) (t!86297 List!7195)) )
))
(declare-datatypes ((TokenValue!1487 0))(
  ( (FloatLiteralValue!2974 (text!10854 List!7195)) (TokenValueExt!1486 (__x!5070 Int)) (Broken!7435 (value!46537 List!7195)) (Object!1500) (End!1487) (Def!1487) (Underscore!1487) (Match!1487) (Else!1487) (Error!1487) (Case!1487) (If!1487) (Extends!1487) (Abstract!1487) (Class!1487) (Val!1487) (DelimiterValue!2974 (del!1547 List!7195)) (KeywordValue!1493 (value!46538 List!7195)) (CommentValue!2974 (value!46539 List!7195)) (WhitespaceValue!2974 (value!46540 List!7195)) (IndentationValue!1487 (value!46541 List!7195)) (String!9174) (Int32!1487) (Broken!7436 (value!46542 List!7195)) (Boolean!1488) (Unit!12489) (OperatorValue!1490 (op!1547 List!7195)) (IdentifierValue!2974 (value!46543 List!7195)) (IdentifierValue!2975 (value!46544 List!7195)) (WhitespaceValue!2975 (value!46545 List!7195)) (True!2974) (False!2974) (Broken!7437 (value!46546 List!7195)) (Broken!7438 (value!46547 List!7195)) (True!2975) (RightBrace!1487) (RightBracket!1487) (Colon!1487) (Null!1487) (Comma!1487) (LeftBracket!1487) (False!2975) (LeftBrace!1487) (ImaginaryLiteralValue!1487 (text!10855 List!7195)) (StringLiteralValue!4461 (value!46548 List!7195)) (EOFValue!1487 (value!46549 List!7195)) (IdentValue!1487 (value!46550 List!7195)) (DelimiterValue!2975 (value!46551 List!7195)) (DedentValue!1487 (value!46552 List!7195)) (NewLineValue!1487 (value!46553 List!7195)) (IntegerValue!4461 (value!46554 (_ BitVec 32)) (text!10856 List!7195)) (IntegerValue!4462 (value!46555 Int) (text!10857 List!7195)) (Times!1487) (Or!1487) (Equal!1487) (Minus!1487) (Broken!7439 (value!46556 List!7195)) (And!1487) (Div!1487) (LessEqual!1487) (Mod!1487) (Concat!3275) (Not!1487) (Plus!1487) (SpaceValue!1487 (value!46557 List!7195)) (IntegerValue!4463 (value!46558 Int) (text!10858 List!7195)) (StringLiteralValue!4462 (text!10859 List!7195)) (FloatLiteralValue!2975 (text!10860 List!7195)) (BytesLiteralValue!1487 (value!46559 List!7195)) (CommentValue!2975 (value!46560 List!7195)) (StringLiteralValue!4463 (value!46561 List!7195)) (ErrorTokenValue!1487 (msg!1548 List!7195)) )
))
(declare-datatypes ((Regex!1788 0))(
  ( (ElementMatch!1788 (c!119014 (_ BitVec 16))) (Concat!3276 (regOne!4088 Regex!1788) (regTwo!4088 Regex!1788)) (EmptyExpr!1788) (Star!1788 (reg!2117 Regex!1788)) (EmptyLang!1788) (Union!1788 (regOne!4089 Regex!1788) (regTwo!4089 Regex!1788)) )
))
(declare-datatypes ((String!9175 0))(
  ( (String!9176 (value!46562 String)) )
))
(declare-datatypes ((IArray!5095 0))(
  ( (IArray!5096 (innerList!2605 List!7195)) )
))
(declare-datatypes ((Conc!2547 0))(
  ( (Node!2547 (left!5823 Conc!2547) (right!6153 Conc!2547) (csize!5324 Int) (cheight!2758 Int)) (Leaf!3790 (xs!5196 IArray!5095) (csize!5325 Int)) (Empty!2547) )
))
(declare-datatypes ((BalanceConc!5106 0))(
  ( (BalanceConc!5107 (c!119015 Conc!2547)) )
))
(declare-datatypes ((TokenValueInjection!2726 0))(
  ( (TokenValueInjection!2727 (toValue!2394 Int) (toChars!2253 Int)) )
))
(declare-datatypes ((Rule!2706 0))(
  ( (Rule!2707 (regex!1453 Regex!1788) (tag!1715 String!9175) (isSeparator!1453 Bool) (transformation!1453 TokenValueInjection!2726)) )
))
(declare-datatypes ((Token!2628 0))(
  ( (Token!2629 (value!46563 TokenValue!1487) (rule!2248 Rule!2706) (size!5689 Int) (originalCharacters!1485 List!7195)) )
))
(declare-datatypes ((List!7196 0))(
  ( (Nil!7182) (Cons!7182 (h!12583 Token!2628) (t!86298 List!7196)) )
))
(declare-datatypes ((IArray!5097 0))(
  ( (IArray!5098 (innerList!2606 List!7196)) )
))
(declare-datatypes ((Conc!2548 0))(
  ( (Node!2548 (left!5824 Conc!2548) (right!6154 Conc!2548) (csize!5326 Int) (cheight!2759 Int)) (Leaf!3791 (xs!5197 IArray!5097) (csize!5327 Int)) (Empty!2548) )
))
(declare-datatypes ((List!7197 0))(
  ( (Nil!7183) (Cons!7183 (h!12584 Rule!2706) (t!86299 List!7197)) )
))
(declare-datatypes ((BalanceConc!5108 0))(
  ( (BalanceConc!5109 (c!119016 Conc!2548)) )
))
(declare-datatypes ((PrintableTokens!210 0))(
  ( (PrintableTokens!211 (rules!8300 List!7197) (tokens!1278 BalanceConc!5108)) )
))
(declare-datatypes ((List!7198 0))(
  ( (Nil!7184) (Cons!7184 (h!12585 PrintableTokens!210) (t!86300 List!7198)) )
))
(declare-fun s!1385 () List!7198)

(declare-fun lambda!20472 () Int)

(declare-fun forall!1901 (List!7198 Int) Bool)

(assert (=> start!64622 (= res!293367 (forall!1901 s!1385 lambda!20472))))

(assert (=> start!64622 e!408916))

(declare-fun e!408915 () Bool)

(assert (=> start!64622 e!408915))

(declare-fun b!661130 () Bool)

(assert (=> b!661130 (= e!408916 (not (forall!1901 (t!86300 s!1385) lambda!20472)))))

(declare-fun b!661131 () Bool)

(declare-fun res!293368 () Bool)

(assert (=> b!661131 (=> (not res!293368) (not e!408916))))

(assert (=> b!661131 (= res!293368 (not (is-Nil!7184 s!1385)))))

(declare-fun e!408918 () Bool)

(declare-fun e!408917 () Bool)

(declare-fun b!661132 () Bool)

(declare-fun tp!201635 () Bool)

(declare-fun inv!9226 (BalanceConc!5108) Bool)

(assert (=> b!661132 (= e!408918 (and tp!201635 (inv!9226 (tokens!1278 (h!12585 s!1385))) e!408917))))

(declare-fun b!661133 () Bool)

(declare-fun tp!201636 () Bool)

(declare-fun inv!9227 (Conc!2548) Bool)

(assert (=> b!661133 (= e!408917 (and (inv!9227 (c!119016 (tokens!1278 (h!12585 s!1385)))) tp!201636))))

(declare-fun tp!201637 () Bool)

(declare-fun b!661134 () Bool)

(declare-fun inv!9228 (PrintableTokens!210) Bool)

(assert (=> b!661134 (= e!408915 (and (inv!9228 (h!12585 s!1385)) e!408918 tp!201637))))

(assert (= (and start!64622 res!293367) b!661131))

(assert (= (and b!661131 res!293368) b!661130))

(assert (= b!661132 b!661133))

(assert (= b!661134 b!661132))

(assert (= (and start!64622 (is-Cons!7184 s!1385)) b!661134))

(declare-fun m!927579 () Bool)

(assert (=> b!661132 m!927579))

(declare-fun m!927581 () Bool)

(assert (=> b!661133 m!927581))

(declare-fun m!927583 () Bool)

(assert (=> b!661134 m!927583))

(declare-fun m!927585 () Bool)

(assert (=> start!64622 m!927585))

(declare-fun m!927587 () Bool)

(assert (=> b!661130 m!927587))

(push 1)

(assert (not b!661132))

(assert (not start!64622))

(assert (not b!661134))

(assert (not b!661130))

(assert (not b!661133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!226041 () Bool)

(declare-fun res!293379 () Bool)

(declare-fun e!408935 () Bool)

(assert (=> d!226041 (=> res!293379 e!408935)))

(assert (=> d!226041 (= res!293379 (is-Nil!7184 s!1385))))

(assert (=> d!226041 (= (forall!1901 s!1385 lambda!20472) e!408935)))

(declare-fun b!661154 () Bool)

(declare-fun e!408936 () Bool)

(assert (=> b!661154 (= e!408935 e!408936)))

(declare-fun res!293380 () Bool)

(assert (=> b!661154 (=> (not res!293380) (not e!408936))))

(declare-fun dynLambda!3807 (Int PrintableTokens!210) Bool)

(assert (=> b!661154 (= res!293380 (dynLambda!3807 lambda!20472 (h!12585 s!1385)))))

(declare-fun b!661155 () Bool)

(assert (=> b!661155 (= e!408936 (forall!1901 (t!86300 s!1385) lambda!20472))))

(assert (= (and d!226041 (not res!293379)) b!661154))

(assert (= (and b!661154 res!293380) b!661155))

(declare-fun b_lambda!25693 () Bool)

(assert (=> (not b_lambda!25693) (not b!661154)))

(declare-fun m!927599 () Bool)

(assert (=> b!661154 m!927599))

(assert (=> b!661155 m!927587))

(assert (=> start!64622 d!226041))

(declare-fun d!226043 () Bool)

(declare-fun c!119022 () Bool)

(assert (=> d!226043 (= c!119022 (is-Node!2548 (c!119016 (tokens!1278 (h!12585 s!1385)))))))

(declare-fun e!408941 () Bool)

(assert (=> d!226043 (= (inv!9227 (c!119016 (tokens!1278 (h!12585 s!1385)))) e!408941)))

(declare-fun b!661162 () Bool)

(declare-fun inv!9232 (Conc!2548) Bool)

(assert (=> b!661162 (= e!408941 (inv!9232 (c!119016 (tokens!1278 (h!12585 s!1385)))))))

(declare-fun b!661163 () Bool)

(declare-fun e!408942 () Bool)

(assert (=> b!661163 (= e!408941 e!408942)))

(declare-fun res!293383 () Bool)

(assert (=> b!661163 (= res!293383 (not (is-Leaf!3791 (c!119016 (tokens!1278 (h!12585 s!1385))))))))

(assert (=> b!661163 (=> res!293383 e!408942)))

(declare-fun b!661164 () Bool)

(declare-fun inv!9233 (Conc!2548) Bool)

(assert (=> b!661164 (= e!408942 (inv!9233 (c!119016 (tokens!1278 (h!12585 s!1385)))))))

(assert (= (and d!226043 c!119022) b!661162))

(assert (= (and d!226043 (not c!119022)) b!661163))

(assert (= (and b!661163 (not res!293383)) b!661164))

(declare-fun m!927601 () Bool)

(assert (=> b!661162 m!927601))

(declare-fun m!927603 () Bool)

(assert (=> b!661164 m!927603))

(assert (=> b!661133 d!226043))

(declare-fun d!226047 () Bool)

(declare-fun res!293401 () Bool)

(declare-fun e!408959 () Bool)

(assert (=> d!226047 (=> (not res!293401) (not e!408959))))

(declare-fun isEmpty!4794 (List!7197) Bool)

(assert (=> d!226047 (= res!293401 (not (isEmpty!4794 (rules!8300 (h!12585 s!1385)))))))

(assert (=> d!226047 (= (inv!9228 (h!12585 s!1385)) e!408959)))

(declare-fun b!661188 () Bool)

(declare-fun res!293402 () Bool)

(assert (=> b!661188 (=> (not res!293402) (not e!408959))))

(declare-datatypes ((LexerInterface!1274 0))(
  ( (LexerInterfaceExt!1271 (__x!5072 Int)) (Lexer!1272) )
))
(declare-fun rulesInvariant!1209 (LexerInterface!1274 List!7197) Bool)

(assert (=> b!661188 (= res!293402 (rulesInvariant!1209 Lexer!1272 (rules!8300 (h!12585 s!1385))))))

(declare-fun b!661189 () Bool)

(declare-fun res!293403 () Bool)

(assert (=> b!661189 (=> (not res!293403) (not e!408959))))

(declare-fun rulesProduceEachTokenIndividually!592 (LexerInterface!1274 List!7197 BalanceConc!5108) Bool)

(assert (=> b!661189 (= res!293403 (rulesProduceEachTokenIndividually!592 Lexer!1272 (rules!8300 (h!12585 s!1385)) (tokens!1278 (h!12585 s!1385))))))

(declare-fun b!661190 () Bool)

(declare-fun separableTokens!42 (LexerInterface!1274 BalanceConc!5108 List!7197) Bool)

(assert (=> b!661190 (= e!408959 (separableTokens!42 Lexer!1272 (tokens!1278 (h!12585 s!1385)) (rules!8300 (h!12585 s!1385))))))

(assert (= (and d!226047 res!293401) b!661188))

(assert (= (and b!661188 res!293402) b!661189))

(assert (= (and b!661189 res!293403) b!661190))

(declare-fun m!927617 () Bool)

(assert (=> d!226047 m!927617))

(declare-fun m!927619 () Bool)

(assert (=> b!661188 m!927619))

(declare-fun m!927621 () Bool)

(assert (=> b!661189 m!927621))

(declare-fun m!927623 () Bool)

(assert (=> b!661190 m!927623))

(assert (=> b!661134 d!226047))

(declare-fun d!226057 () Bool)

(declare-fun res!293404 () Bool)

(declare-fun e!408960 () Bool)

(assert (=> d!226057 (=> res!293404 e!408960)))

(assert (=> d!226057 (= res!293404 (is-Nil!7184 (t!86300 s!1385)))))

(assert (=> d!226057 (= (forall!1901 (t!86300 s!1385) lambda!20472) e!408960)))

(declare-fun b!661191 () Bool)

(declare-fun e!408961 () Bool)

(assert (=> b!661191 (= e!408960 e!408961)))

(declare-fun res!293405 () Bool)

(assert (=> b!661191 (=> (not res!293405) (not e!408961))))

(assert (=> b!661191 (= res!293405 (dynLambda!3807 lambda!20472 (h!12585 (t!86300 s!1385))))))

(declare-fun b!661192 () Bool)

(assert (=> b!661192 (= e!408961 (forall!1901 (t!86300 (t!86300 s!1385)) lambda!20472))))

(assert (= (and d!226057 (not res!293404)) b!661191))

(assert (= (and b!661191 res!293405) b!661192))

(declare-fun b_lambda!25699 () Bool)

(assert (=> (not b_lambda!25699) (not b!661191)))

(declare-fun m!927625 () Bool)

(assert (=> b!661191 m!927625))

(declare-fun m!927627 () Bool)

(assert (=> b!661192 m!927627))

(assert (=> b!661130 d!226057))

(declare-fun d!226059 () Bool)

(declare-fun isBalanced!666 (Conc!2548) Bool)

(assert (=> d!226059 (= (inv!9226 (tokens!1278 (h!12585 s!1385))) (isBalanced!666 (c!119016 (tokens!1278 (h!12585 s!1385)))))))

(declare-fun bs!94454 () Bool)

(assert (= bs!94454 d!226059))

(declare-fun m!927629 () Bool)

(assert (=> bs!94454 m!927629))

(assert (=> b!661132 d!226059))

(declare-fun tp!201653 () Bool)

(declare-fun b!661201 () Bool)

(declare-fun tp!201654 () Bool)

(declare-fun e!408966 () Bool)

(assert (=> b!661201 (= e!408966 (and (inv!9227 (left!5824 (c!119016 (tokens!1278 (h!12585 s!1385))))) tp!201654 (inv!9227 (right!6154 (c!119016 (tokens!1278 (h!12585 s!1385))))) tp!201653))))

(declare-fun b!661203 () Bool)

(declare-fun e!408967 () Bool)

(declare-fun tp!201655 () Bool)

(assert (=> b!661203 (= e!408967 tp!201655)))

(declare-fun b!661202 () Bool)

(declare-fun inv!9234 (IArray!5097) Bool)

(assert (=> b!661202 (= e!408966 (and (inv!9234 (xs!5197 (c!119016 (tokens!1278 (h!12585 s!1385))))) e!408967))))

(assert (=> b!661133 (= tp!201636 (and (inv!9227 (c!119016 (tokens!1278 (h!12585 s!1385)))) e!408966))))

(assert (= (and b!661133 (is-Node!2548 (c!119016 (tokens!1278 (h!12585 s!1385))))) b!661201))

(assert (= b!661202 b!661203))

(assert (= (and b!661133 (is-Leaf!3791 (c!119016 (tokens!1278 (h!12585 s!1385))))) b!661202))

(declare-fun m!927631 () Bool)

(assert (=> b!661201 m!927631))

(declare-fun m!927633 () Bool)

(assert (=> b!661201 m!927633))

(declare-fun m!927635 () Bool)

(assert (=> b!661202 m!927635))

(assert (=> b!661133 m!927581))

(declare-fun b!661214 () Bool)

(declare-fun e!408975 () Bool)

(declare-fun tp!201662 () Bool)

(assert (=> b!661214 (= e!408975 (and (inv!9227 (c!119016 (tokens!1278 (h!12585 (t!86300 s!1385))))) tp!201662))))

(declare-fun b!661213 () Bool)

(declare-fun e!408976 () Bool)

(declare-fun tp!201663 () Bool)

(assert (=> b!661213 (= e!408976 (and tp!201663 (inv!9226 (tokens!1278 (h!12585 (t!86300 s!1385)))) e!408975))))

(declare-fun tp!201664 () Bool)

(declare-fun b!661212 () Bool)

(declare-fun e!408974 () Bool)

(assert (=> b!661212 (= e!408974 (and (inv!9228 (h!12585 (t!86300 s!1385))) e!408976 tp!201664))))

(assert (=> b!661134 (= tp!201637 e!408974)))

(assert (= b!661213 b!661214))

(assert (= b!661212 b!661213))

(assert (= (and b!661134 (is-Cons!7184 (t!86300 s!1385))) b!661212))

(declare-fun m!927637 () Bool)

(assert (=> b!661214 m!927637))

(declare-fun m!927639 () Bool)

(assert (=> b!661213 m!927639))

(declare-fun m!927641 () Bool)

(assert (=> b!661212 m!927641))

(declare-fun b!661225 () Bool)

(declare-fun b_free!19089 () Bool)

(declare-fun b_next!19153 () Bool)

(assert (=> b!661225 (= b_free!19089 (not b_next!19153))))

(declare-fun tp!201672 () Bool)

(declare-fun b_and!62883 () Bool)

(assert (=> b!661225 (= tp!201672 b_and!62883)))

(declare-fun b_free!19091 () Bool)

(declare-fun b_next!19155 () Bool)

(assert (=> b!661225 (= b_free!19091 (not b_next!19155))))

(declare-fun tp!201673 () Bool)

(declare-fun b_and!62885 () Bool)

(assert (=> b!661225 (= tp!201673 b_and!62885)))

(declare-fun e!408987 () Bool)

(assert (=> b!661225 (= e!408987 (and tp!201672 tp!201673))))

(declare-fun b!661224 () Bool)

(declare-fun e!408988 () Bool)

(declare-fun inv!9223 (String!9175) Bool)

(declare-fun inv!9235 (TokenValueInjection!2726) Bool)

(assert (=> b!661224 (= e!408988 (and (inv!9223 (tag!1715 (h!12584 (rules!8300 (h!12585 s!1385))))) (inv!9235 (transformation!1453 (h!12584 (rules!8300 (h!12585 s!1385))))) e!408987))))

(declare-fun b!661223 () Bool)

(declare-fun e!408986 () Bool)

(declare-fun tp!201671 () Bool)

(assert (=> b!661223 (= e!408986 (and e!408988 tp!201671))))

(assert (=> b!661132 (= tp!201635 e!408986)))

(assert (= b!661224 b!661225))

(assert (= b!661223 b!661224))

(assert (= (and b!661132 (is-Cons!7183 (rules!8300 (h!12585 s!1385)))) b!661223))

(declare-fun m!927643 () Bool)

(assert (=> b!661224 m!927643))

(declare-fun m!927645 () Bool)

(assert (=> b!661224 m!927645))

(declare-fun b_lambda!25701 () Bool)

(assert (= b_lambda!25699 (or start!64622 b_lambda!25701)))

(declare-fun bs!94455 () Bool)

(declare-fun d!226061 () Bool)

(assert (= bs!94455 (and d!226061 start!64622)))

(declare-fun usesJsonRules!0 (PrintableTokens!210) Bool)

(assert (=> bs!94455 (= (dynLambda!3807 lambda!20472 (h!12585 (t!86300 s!1385))) (usesJsonRules!0 (h!12585 (t!86300 s!1385))))))

(declare-fun m!927647 () Bool)

(assert (=> bs!94455 m!927647))

(assert (=> b!661191 d!226061))

(declare-fun b_lambda!25703 () Bool)

(assert (= b_lambda!25693 (or start!64622 b_lambda!25703)))

(declare-fun bs!94456 () Bool)

(declare-fun d!226063 () Bool)

(assert (= bs!94456 (and d!226063 start!64622)))

(assert (=> bs!94456 (= (dynLambda!3807 lambda!20472 (h!12585 s!1385)) (usesJsonRules!0 (h!12585 s!1385)))))

(declare-fun m!927649 () Bool)

(assert (=> bs!94456 m!927649))

(assert (=> b!661154 d!226063))

(push 1)

(assert (not b!661155))

(assert (not b!661164))

(assert (not d!226059))

(assert (not b!661188))

(assert (not b!661212))

(assert (not b!661133))

(assert (not d!226047))

(assert (not b_lambda!25703))

(assert (not b!661214))

(assert (not bs!94455))

(assert (not b!661224))

(assert (not b!661203))

(assert (not b_next!19153))

(assert (not b!661189))

(assert (not b_lambda!25701))

(assert (not b!661162))

(assert (not b!661202))

(assert (not b_next!19155))

(assert (not b!661223))

(assert (not b!661201))

(assert (not b!661192))

(assert b_and!62883)

(assert (not bs!94456))

(assert b_and!62885)

(assert (not b!661213))

(assert (not b!661190))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62885)

(assert b_and!62883)

(assert (not b_next!19153))

(assert (not b_next!19155))

(check-sat)

(pop 1)

