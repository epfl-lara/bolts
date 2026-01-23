; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61000 () Bool)

(assert start!61000)

(declare-fun b!629047 () Bool)

(assert (=> b!629047 true))

(declare-fun lambda!16629 () Int)

(declare-fun e!381659 () Bool)

(declare-fun lt!267223 () Int)

(declare-datatypes ((List!6511 0))(
  ( (Nil!6497) (Cons!6497 (h!11898 (_ BitVec 16)) (t!82741 List!6511)) )
))
(declare-datatypes ((TokenValue!1362 0))(
  ( (FloatLiteralValue!2724 (text!9979 List!6511)) (TokenValueExt!1361 (__x!4612 Int)) (Broken!6810 (value!42974 List!6511)) (Object!1375) (End!1362) (Def!1362) (Underscore!1362) (Match!1362) (Else!1362) (Error!1362) (Case!1362) (If!1362) (Extends!1362) (Abstract!1362) (Class!1362) (Val!1362) (DelimiterValue!2724 (del!1422 List!6511)) (KeywordValue!1368 (value!42975 List!6511)) (CommentValue!2724 (value!42976 List!6511)) (WhitespaceValue!2724 (value!42977 List!6511)) (IndentationValue!1362 (value!42978 List!6511)) (String!8547) (Int32!1362) (Broken!6811 (value!42979 List!6511)) (Boolean!1363) (Unit!11552) (OperatorValue!1365 (op!1422 List!6511)) (IdentifierValue!2724 (value!42980 List!6511)) (IdentifierValue!2725 (value!42981 List!6511)) (WhitespaceValue!2725 (value!42982 List!6511)) (True!2724) (False!2724) (Broken!6812 (value!42983 List!6511)) (Broken!6813 (value!42984 List!6511)) (True!2725) (RightBrace!1362) (RightBracket!1362) (Colon!1362) (Null!1362) (Comma!1362) (LeftBracket!1362) (False!2725) (LeftBrace!1362) (ImaginaryLiteralValue!1362 (text!9980 List!6511)) (StringLiteralValue!4086 (value!42985 List!6511)) (EOFValue!1362 (value!42986 List!6511)) (IdentValue!1362 (value!42987 List!6511)) (DelimiterValue!2725 (value!42988 List!6511)) (DedentValue!1362 (value!42989 List!6511)) (NewLineValue!1362 (value!42990 List!6511)) (IntegerValue!4086 (value!42991 (_ BitVec 32)) (text!9981 List!6511)) (IntegerValue!4087 (value!42992 Int) (text!9982 List!6511)) (Times!1362) (Or!1362) (Equal!1362) (Minus!1362) (Broken!6814 (value!42993 List!6511)) (And!1362) (Div!1362) (LessEqual!1362) (Mod!1362) (Concat!3024) (Not!1362) (Plus!1362) (SpaceValue!1362 (value!42994 List!6511)) (IntegerValue!4088 (value!42995 Int) (text!9983 List!6511)) (StringLiteralValue!4087 (text!9984 List!6511)) (FloatLiteralValue!2725 (text!9985 List!6511)) (BytesLiteralValue!1362 (value!42996 List!6511)) (CommentValue!2725 (value!42997 List!6511)) (StringLiteralValue!4088 (value!42998 List!6511)) (ErrorTokenValue!1362 (msg!1423 List!6511)) )
))
(declare-datatypes ((Regex!1662 0))(
  ( (ElementMatch!1662 (c!115550 (_ BitVec 16))) (Concat!3025 (regOne!3836 Regex!1662) (regTwo!3836 Regex!1662)) (EmptyExpr!1662) (Star!1662 (reg!1991 Regex!1662)) (EmptyLang!1662) (Union!1662 (regOne!3837 Regex!1662) (regTwo!3837 Regex!1662)) )
))
(declare-datatypes ((String!8548 0))(
  ( (String!8549 (value!42999 String)) )
))
(declare-datatypes ((IArray!4231 0))(
  ( (IArray!4232 (innerList!2173 List!6511)) )
))
(declare-datatypes ((Conc!2115 0))(
  ( (Node!2115 (left!5194 Conc!2115) (right!5524 Conc!2115) (csize!4460 Int) (cheight!2326 Int)) (Leaf!3295 (xs!4756 IArray!4231) (csize!4461 Int)) (Empty!2115) )
))
(declare-datatypes ((BalanceConc!4242 0))(
  ( (BalanceConc!4243 (c!115551 Conc!2115)) )
))
(declare-datatypes ((TokenValueInjection!2476 0))(
  ( (TokenValueInjection!2477 (toValue!2269 Int) (toChars!2128 Int)) )
))
(declare-datatypes ((Rule!2456 0))(
  ( (Rule!2457 (regex!1328 Regex!1662) (tag!1590 String!8548) (isSeparator!1328 Bool) (transformation!1328 TokenValueInjection!2476)) )
))
(declare-datatypes ((Token!2380 0))(
  ( (Token!2381 (value!43000 TokenValue!1362) (rule!2124 Rule!2456) (size!5085 Int) (originalCharacters!1361 List!6511)) )
))
(declare-datatypes ((List!6512 0))(
  ( (Nil!6498) (Cons!6498 (h!11899 Token!2380) (t!82742 List!6512)) )
))
(declare-datatypes ((IArray!4233 0))(
  ( (IArray!4234 (innerList!2174 List!6512)) )
))
(declare-datatypes ((Conc!2116 0))(
  ( (Node!2116 (left!5195 Conc!2116) (right!5525 Conc!2116) (csize!4462 Int) (cheight!2327 Int)) (Leaf!3296 (xs!4757 IArray!4233) (csize!4463 Int)) (Empty!2116) )
))
(declare-datatypes ((List!6513 0))(
  ( (Nil!6499) (Cons!6499 (h!11900 Rule!2456) (t!82743 List!6513)) )
))
(declare-datatypes ((BalanceConc!4244 0))(
  ( (BalanceConc!4245 (c!115552 Conc!2116)) )
))
(declare-datatypes ((PrintableTokens!38 0))(
  ( (PrintableTokens!39 (rules!8112 List!6513) (tokens!1145 BalanceConc!4244)) )
))
(declare-fun printableTokens!2 () PrintableTokens!38)

(declare-datatypes ((List!6514 0))(
  ( (Nil!6500) (Cons!6500 (h!11901 Int) (t!82744 List!6514)) )
))
(declare-datatypes ((IArray!4235 0))(
  ( (IArray!4236 (innerList!2175 List!6514)) )
))
(declare-datatypes ((Conc!2117 0))(
  ( (Node!2117 (left!5196 Conc!2117) (right!5526 Conc!2117) (csize!4464 Int) (cheight!2328 Int)) (Leaf!3297 (xs!4758 IArray!4235) (csize!4465 Int)) (Empty!2117) )
))
(declare-datatypes ((BalanceConc!4246 0))(
  ( (BalanceConc!4247 (c!115553 Conc!2117)) )
))
(declare-fun forall!1586 (BalanceConc!4246 Int) Bool)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4244 Int Int BalanceConc!4246) BalanceConc!4246)

(assert (=> b!629047 (= e!381659 (not (forall!1586 (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 0 (BalanceConc!4247 Empty!2117)) lambda!16629)))))

(declare-fun res!272731 () Bool)

(declare-fun e!381660 () Bool)

(assert (=> start!61000 (=> (not res!272731) (not e!381660))))

(assert (=> start!61000 (= res!272731 (> lt!267223 0))))

(declare-fun size!5086 (PrintableTokens!38) Int)

(assert (=> start!61000 (= lt!267223 (size!5086 printableTokens!2))))

(assert (=> start!61000 e!381660))

(declare-fun e!381661 () Bool)

(declare-fun inv!8378 (PrintableTokens!38) Bool)

(assert (=> start!61000 (and (inv!8378 printableTokens!2) e!381661)))

(declare-fun b!629048 () Bool)

(declare-fun e!381662 () Bool)

(declare-fun tp!196338 () Bool)

(declare-fun inv!8379 (BalanceConc!4244) Bool)

(assert (=> b!629048 (= e!381661 (and tp!196338 (inv!8379 (tokens!1145 printableTokens!2)) e!381662))))

(declare-fun b!629049 () Bool)

(declare-fun res!272729 () Bool)

(assert (=> b!629049 (=> (not res!272729) (not e!381659))))

(declare-fun usesJsonRules!0 (PrintableTokens!38) Bool)

(assert (=> b!629049 (= res!272729 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!629050 () Bool)

(declare-fun res!272730 () Bool)

(assert (=> b!629050 (=> (not res!272730) (not e!381659))))

(declare-fun lt!267224 () List!6513)

(declare-datatypes ((LexerInterface!1214 0))(
  ( (LexerInterfaceExt!1211 (__x!4613 Int)) (Lexer!1212) )
))
(declare-fun rulesInvariant!1149 (LexerInterface!1214 List!6513) Bool)

(assert (=> b!629050 (= res!272730 (rulesInvariant!1149 Lexer!1212 lt!267224))))

(declare-fun b!629051 () Bool)

(assert (=> b!629051 (= e!381660 e!381659)))

(declare-fun res!272732 () Bool)

(assert (=> b!629051 (=> (not res!272732) (not e!381659))))

(declare-fun isEmpty!4601 (List!6513) Bool)

(assert (=> b!629051 (= res!272732 (not (isEmpty!4601 lt!267224)))))

(declare-datatypes ((JsonLexer!112 0))(
  ( (JsonLexer!113) )
))
(declare-fun rules!109 (JsonLexer!112) List!6513)

(assert (=> b!629051 (= lt!267224 (rules!109 JsonLexer!113))))

(declare-fun b!629052 () Bool)

(declare-fun tp!196339 () Bool)

(declare-fun inv!8380 (Conc!2116) Bool)

(assert (=> b!629052 (= e!381662 (and (inv!8380 (c!115552 (tokens!1145 printableTokens!2))) tp!196339))))

(assert (= (and start!61000 res!272731) b!629051))

(assert (= (and b!629051 res!272732) b!629050))

(assert (= (and b!629050 res!272730) b!629049))

(assert (= (and b!629049 res!272729) b!629047))

(assert (= b!629048 b!629052))

(assert (= start!61000 b!629048))

(declare-fun m!897487 () Bool)

(assert (=> b!629047 m!897487))

(assert (=> b!629047 m!897487))

(declare-fun m!897489 () Bool)

(assert (=> b!629047 m!897489))

(declare-fun m!897491 () Bool)

(assert (=> b!629052 m!897491))

(declare-fun m!897493 () Bool)

(assert (=> b!629048 m!897493))

(declare-fun m!897495 () Bool)

(assert (=> b!629050 m!897495))

(declare-fun m!897497 () Bool)

(assert (=> b!629049 m!897497))

(declare-fun m!897499 () Bool)

(assert (=> start!61000 m!897499))

(declare-fun m!897501 () Bool)

(assert (=> start!61000 m!897501))

(declare-fun m!897503 () Bool)

(assert (=> b!629051 m!897503))

(declare-fun m!897505 () Bool)

(assert (=> b!629051 m!897505))

(push 1)

(assert (not start!61000))

(assert (not b!629051))

(assert (not b!629049))

(assert (not b!629047))

(assert (not b!629052))

(assert (not b!629048))

(assert (not b!629050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220114 () Bool)

(declare-fun size!5091 (BalanceConc!4244) Int)

(assert (=> d!220114 (= (size!5086 printableTokens!2) (size!5091 (tokens!1145 printableTokens!2)))))

(declare-fun bs!72790 () Bool)

(assert (= bs!72790 d!220114))

(declare-fun m!897527 () Bool)

(assert (=> bs!72790 m!897527))

(assert (=> start!61000 d!220114))

(declare-fun d!220116 () Bool)

(declare-fun res!272758 () Bool)

(declare-fun e!381680 () Bool)

(assert (=> d!220116 (=> (not res!272758) (not e!381680))))

(assert (=> d!220116 (= res!272758 (not (isEmpty!4601 (rules!8112 printableTokens!2))))))

(assert (=> d!220116 (= (inv!8378 printableTokens!2) e!381680)))

(declare-fun b!629084 () Bool)

(declare-fun res!272759 () Bool)

(assert (=> b!629084 (=> (not res!272759) (not e!381680))))

(assert (=> b!629084 (= res!272759 (rulesInvariant!1149 Lexer!1212 (rules!8112 printableTokens!2)))))

(declare-fun b!629085 () Bool)

(declare-fun res!272760 () Bool)

(assert (=> b!629085 (=> (not res!272760) (not e!381680))))

(declare-fun rulesProduceEachTokenIndividually!560 (LexerInterface!1214 List!6513 BalanceConc!4244) Bool)

(assert (=> b!629085 (= res!272760 (rulesProduceEachTokenIndividually!560 Lexer!1212 (rules!8112 printableTokens!2) (tokens!1145 printableTokens!2)))))

(declare-fun b!629086 () Bool)

(declare-fun separableTokens!10 (LexerInterface!1214 BalanceConc!4244 List!6513) Bool)

(assert (=> b!629086 (= e!381680 (separableTokens!10 Lexer!1212 (tokens!1145 printableTokens!2) (rules!8112 printableTokens!2)))))

(assert (= (and d!220116 res!272758) b!629084))

(assert (= (and b!629084 res!272759) b!629085))

(assert (= (and b!629085 res!272760) b!629086))

(declare-fun m!897567 () Bool)

(assert (=> d!220116 m!897567))

(declare-fun m!897569 () Bool)

(assert (=> b!629084 m!897569))

(declare-fun m!897571 () Bool)

(assert (=> b!629085 m!897571))

(declare-fun m!897573 () Bool)

(assert (=> b!629086 m!897573))

(assert (=> start!61000 d!220116))

(declare-fun d!220128 () Bool)

(assert (=> d!220128 (= (isEmpty!4601 lt!267224) (is-Nil!6499 lt!267224))))

(assert (=> b!629051 d!220128))

(declare-fun d!220130 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!112) Rule!2456)

(declare-fun integerLiteralRule!0 (JsonLexer!112) Rule!2456)

(declare-fun floatLiteralRule!0 (JsonLexer!112) Rule!2456)

(declare-fun trueRule!0 (JsonLexer!112) Rule!2456)

(declare-fun falseRule!0 (JsonLexer!112) Rule!2456)

(declare-fun nullRule!0 (JsonLexer!112) Rule!2456)

(declare-fun jsonstringRule!0 (JsonLexer!112) Rule!2456)

(declare-fun lBraceRule!0 (JsonLexer!112) Rule!2456)

(declare-fun rBraceRule!0 (JsonLexer!112) Rule!2456)

(declare-fun lBracketRule!0 (JsonLexer!112) Rule!2456)

(declare-fun rBracketRule!0 (JsonLexer!112) Rule!2456)

(declare-fun colonRule!0 (JsonLexer!112) Rule!2456)

(declare-fun commaRule!0 (JsonLexer!112) Rule!2456)

(declare-fun eofRule!0 (JsonLexer!112) Rule!2456)

(assert (=> d!220130 (= (rules!109 JsonLexer!113) (Cons!6499 (whitespaceRule!0 JsonLexer!113) (Cons!6499 (integerLiteralRule!0 JsonLexer!113) (Cons!6499 (floatLiteralRule!0 JsonLexer!113) (Cons!6499 (trueRule!0 JsonLexer!113) (Cons!6499 (falseRule!0 JsonLexer!113) (Cons!6499 (nullRule!0 JsonLexer!113) (Cons!6499 (jsonstringRule!0 JsonLexer!113) (Cons!6499 (lBraceRule!0 JsonLexer!113) (Cons!6499 (rBraceRule!0 JsonLexer!113) (Cons!6499 (lBracketRule!0 JsonLexer!113) (Cons!6499 (rBracketRule!0 JsonLexer!113) (Cons!6499 (colonRule!0 JsonLexer!113) (Cons!6499 (commaRule!0 JsonLexer!113) (Cons!6499 (eofRule!0 JsonLexer!113) Nil!6499)))))))))))))))))

(declare-fun bs!72793 () Bool)

(assert (= bs!72793 d!220130))

(declare-fun m!897575 () Bool)

(assert (=> bs!72793 m!897575))

(declare-fun m!897577 () Bool)

(assert (=> bs!72793 m!897577))

(declare-fun m!897579 () Bool)

(assert (=> bs!72793 m!897579))

(declare-fun m!897581 () Bool)

(assert (=> bs!72793 m!897581))

(declare-fun m!897583 () Bool)

(assert (=> bs!72793 m!897583))

(declare-fun m!897585 () Bool)

(assert (=> bs!72793 m!897585))

(declare-fun m!897587 () Bool)

(assert (=> bs!72793 m!897587))

(declare-fun m!897589 () Bool)

(assert (=> bs!72793 m!897589))

(declare-fun m!897591 () Bool)

(assert (=> bs!72793 m!897591))

(declare-fun m!897593 () Bool)

(assert (=> bs!72793 m!897593))

(declare-fun m!897595 () Bool)

(assert (=> bs!72793 m!897595))

(declare-fun m!897597 () Bool)

(assert (=> bs!72793 m!897597))

(declare-fun m!897599 () Bool)

(assert (=> bs!72793 m!897599))

(declare-fun m!897601 () Bool)

(assert (=> bs!72793 m!897601))

(assert (=> b!629051 d!220130))

(declare-fun d!220132 () Bool)

(declare-fun c!115560 () Bool)

(assert (=> d!220132 (= c!115560 (is-Node!2116 (c!115552 (tokens!1145 printableTokens!2))))))

(declare-fun e!381685 () Bool)

(assert (=> d!220132 (= (inv!8380 (c!115552 (tokens!1145 printableTokens!2))) e!381685)))

(declare-fun b!629093 () Bool)

(declare-fun inv!8384 (Conc!2116) Bool)

(assert (=> b!629093 (= e!381685 (inv!8384 (c!115552 (tokens!1145 printableTokens!2))))))

(declare-fun b!629094 () Bool)

(declare-fun e!381686 () Bool)

(assert (=> b!629094 (= e!381685 e!381686)))

(declare-fun res!272763 () Bool)

(assert (=> b!629094 (= res!272763 (not (is-Leaf!3296 (c!115552 (tokens!1145 printableTokens!2)))))))

(assert (=> b!629094 (=> res!272763 e!381686)))

(declare-fun b!629095 () Bool)

(declare-fun inv!8385 (Conc!2116) Bool)

(assert (=> b!629095 (= e!381686 (inv!8385 (c!115552 (tokens!1145 printableTokens!2))))))

(assert (= (and d!220132 c!115560) b!629093))

(assert (= (and d!220132 (not c!115560)) b!629094))

(assert (= (and b!629094 (not res!272763)) b!629095))

(declare-fun m!897603 () Bool)

(assert (=> b!629093 m!897603))

(declare-fun m!897605 () Bool)

(assert (=> b!629095 m!897605))

(assert (=> b!629052 d!220132))

(declare-fun d!220134 () Bool)

(declare-fun lt!267236 () Bool)

(declare-fun forall!1588 (List!6514 Int) Bool)

(declare-fun list!2755 (BalanceConc!4246) List!6514)

(assert (=> d!220134 (= lt!267236 (forall!1588 (list!2755 (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 0 (BalanceConc!4247 Empty!2117))) lambda!16629))))

(declare-fun forall!1589 (Conc!2117 Int) Bool)

(assert (=> d!220134 (= lt!267236 (forall!1589 (c!115553 (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 0 (BalanceConc!4247 Empty!2117))) lambda!16629))))

(assert (=> d!220134 (= (forall!1586 (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 0 (BalanceConc!4247 Empty!2117)) lambda!16629) lt!267236)))

(declare-fun bs!72794 () Bool)

(assert (= bs!72794 d!220134))

(assert (=> bs!72794 m!897487))

(declare-fun m!897607 () Bool)

(assert (=> bs!72794 m!897607))

(assert (=> bs!72794 m!897607))

(declare-fun m!897609 () Bool)

(assert (=> bs!72794 m!897609))

(declare-fun m!897611 () Bool)

(assert (=> bs!72794 m!897611))

(assert (=> b!629047 d!220134))

(declare-fun bs!72798 () Bool)

(declare-fun b!629136 () Bool)

(assert (= bs!72798 (and b!629136 b!629047)))

(declare-fun lambda!16643 () Int)

(assert (=> bs!72798 (= lambda!16643 lambda!16629)))

(assert (=> b!629136 true))

(declare-fun bs!72799 () Bool)

(declare-fun d!220136 () Bool)

(assert (= bs!72799 (and d!220136 b!629047)))

(declare-fun lambda!16644 () Int)

(assert (=> bs!72799 (= lambda!16644 lambda!16629)))

(declare-fun bs!72800 () Bool)

(assert (= bs!72800 (and d!220136 b!629136)))

(assert (=> bs!72800 (= lambda!16644 lambda!16643)))

(assert (=> d!220136 true))

(declare-datatypes ((Unit!11554 0))(
  ( (Unit!11555) )
))
(declare-fun lt!267253 () Unit!11554)

(declare-fun lemmaConcatPreservesForall!2 (List!6514 List!6514 Int) Unit!11554)

(assert (=> b!629136 (= lt!267253 (lemmaConcatPreservesForall!2 (list!2755 (BalanceConc!4247 Empty!2117)) (Cons!6500 0 Nil!6500) lambda!16643))))

(declare-fun e!381712 () BalanceConc!4246)

(declare-fun call!41329 () BalanceConc!4246)

(assert (=> b!629136 (= e!381712 call!41329)))

(declare-fun b!629137 () Bool)

(declare-fun e!381716 () Bool)

(assert (=> b!629137 (= e!381716 (<= 0 (size!5091 (tokens!1145 printableTokens!2))))))

(declare-fun b!629138 () Bool)

(assert (=> b!629138 (= e!381712 call!41329)))

(declare-fun b!629139 () Bool)

(declare-fun e!381714 () BalanceConc!4246)

(assert (=> b!629139 (= e!381714 e!381712)))

(declare-fun lt!267254 () Token!2380)

(declare-fun apply!1542 (BalanceConc!4244 Int) Token!2380)

(assert (=> b!629139 (= lt!267254 (apply!1542 (tokens!1145 printableTokens!2) 0))))

(declare-fun res!272775 () Bool)

(declare-fun isKeywordValue!0 (Token!2380 TokenValue!1362) Bool)

(assert (=> b!629139 (= res!272775 (isKeywordValue!0 lt!267254 LeftBrace!1362))))

(declare-fun e!381713 () Bool)

(assert (=> b!629139 (=> res!272775 e!381713)))

(declare-fun c!115578 () Bool)

(assert (=> b!629139 (= c!115578 e!381713)))

(declare-fun b!629141 () Bool)

(declare-fun e!381715 () BalanceConc!4246)

(assert (=> b!629141 (= e!381715 (BalanceConc!4247 Empty!2117))))

(declare-fun b!629142 () Bool)

(assert (=> b!629142 (= e!381714 (BalanceConc!4247 Empty!2117))))

(declare-fun bm!41324 () Bool)

(declare-fun c!115576 () Bool)

(assert (=> bm!41324 (= c!115576 c!115578)))

(assert (=> bm!41324 (= call!41329 (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 (+ 0 1) e!381715))))

(declare-fun b!629143 () Bool)

(declare-fun append!165 (BalanceConc!4246 Int) BalanceConc!4246)

(assert (=> b!629143 (= e!381715 (append!165 (BalanceConc!4247 Empty!2117) 0))))

(declare-fun b!629140 () Bool)

(assert (=> b!629140 (= e!381713 (isKeywordValue!0 lt!267254 RightBrace!1362))))

(declare-fun lt!267252 () BalanceConc!4246)

(assert (=> d!220136 (forall!1586 lt!267252 lambda!16644)))

(assert (=> d!220136 (= lt!267252 e!381714)))

(declare-fun c!115577 () Bool)

(assert (=> d!220136 (= c!115577 (>= 0 (size!5091 (tokens!1145 printableTokens!2))))))

(assert (=> d!220136 e!381716))

(declare-fun res!272774 () Bool)

(assert (=> d!220136 (=> (not res!272774) (not e!381716))))

(assert (=> d!220136 (= res!272774 (>= 0 0))))

(assert (=> d!220136 (= (indicesOfOpenBraces!0 (tokens!1145 printableTokens!2) lt!267223 0 (BalanceConc!4247 Empty!2117)) lt!267252)))

(assert (= (and d!220136 res!272774) b!629137))

(assert (= (and d!220136 c!115577) b!629142))

(assert (= (and d!220136 (not c!115577)) b!629139))

(assert (= (and b!629139 (not res!272775)) b!629140))

(assert (= (and b!629139 c!115578) b!629136))

(assert (= (and b!629139 (not c!115578)) b!629138))

(assert (= (or b!629136 b!629138) bm!41324))

(assert (= (and bm!41324 c!115576) b!629143))

(assert (= (and bm!41324 (not c!115576)) b!629141))

(declare-fun m!897631 () Bool)

(assert (=> b!629136 m!897631))

(assert (=> b!629136 m!897631))

(declare-fun m!897633 () Bool)

(assert (=> b!629136 m!897633))

(declare-fun m!897635 () Bool)

(assert (=> bm!41324 m!897635))

(declare-fun m!897637 () Bool)

(assert (=> b!629139 m!897637))

(declare-fun m!897639 () Bool)

(assert (=> b!629139 m!897639))

(assert (=> b!629137 m!897527))

(declare-fun m!897641 () Bool)

(assert (=> b!629143 m!897641))

(declare-fun m!897643 () Bool)

(assert (=> d!220136 m!897643))

(assert (=> d!220136 m!897527))

(declare-fun m!897645 () Bool)

(assert (=> b!629140 m!897645))

(assert (=> b!629047 d!220136))

(declare-fun d!220140 () Bool)

(assert (=> d!220140 (= (usesJsonRules!0 printableTokens!2) (= (rules!8112 printableTokens!2) (rules!109 JsonLexer!113)))))

(declare-fun bs!72801 () Bool)

(assert (= bs!72801 d!220140))

(assert (=> bs!72801 m!897505))

(assert (=> b!629049 d!220140))

(declare-fun d!220144 () Bool)

(declare-fun isBalanced!562 (Conc!2116) Bool)

(assert (=> d!220144 (= (inv!8379 (tokens!1145 printableTokens!2)) (isBalanced!562 (c!115552 (tokens!1145 printableTokens!2))))))

(declare-fun bs!72802 () Bool)

(assert (= bs!72802 d!220144))

(declare-fun m!897651 () Bool)

(assert (=> bs!72802 m!897651))

(assert (=> b!629048 d!220144))

(declare-fun d!220146 () Bool)

(declare-fun res!272781 () Bool)

(declare-fun e!381725 () Bool)

(assert (=> d!220146 (=> (not res!272781) (not e!381725))))

(declare-fun rulesValid!488 (LexerInterface!1214 List!6513) Bool)

(assert (=> d!220146 (= res!272781 (rulesValid!488 Lexer!1212 lt!267224))))

(assert (=> d!220146 (= (rulesInvariant!1149 Lexer!1212 lt!267224) e!381725)))

(declare-fun b!629155 () Bool)

(declare-datatypes ((List!6519 0))(
  ( (Nil!6505) (Cons!6505 (h!11906 String!8548) (t!82764 List!6519)) )
))
(declare-fun noDuplicateTag!488 (LexerInterface!1214 List!6513 List!6519) Bool)

(assert (=> b!629155 (= e!381725 (noDuplicateTag!488 Lexer!1212 lt!267224 Nil!6505))))

(assert (= (and d!220146 res!272781) b!629155))

(declare-fun m!897653 () Bool)

(assert (=> d!220146 m!897653))

(declare-fun m!897655 () Bool)

(assert (=> b!629155 m!897655))

(assert (=> b!629050 d!220146))

(declare-fun tp!196353 () Bool)

(declare-fun b!629164 () Bool)

(declare-fun tp!196354 () Bool)

(declare-fun e!381731 () Bool)

(assert (=> b!629164 (= e!381731 (and (inv!8380 (left!5195 (c!115552 (tokens!1145 printableTokens!2)))) tp!196353 (inv!8380 (right!5525 (c!115552 (tokens!1145 printableTokens!2)))) tp!196354))))

(declare-fun b!629166 () Bool)

(declare-fun e!381730 () Bool)

(declare-fun tp!196352 () Bool)

(assert (=> b!629166 (= e!381730 tp!196352)))

(declare-fun b!629165 () Bool)

(declare-fun inv!8386 (IArray!4233) Bool)

(assert (=> b!629165 (= e!381731 (and (inv!8386 (xs!4757 (c!115552 (tokens!1145 printableTokens!2)))) e!381730))))

(assert (=> b!629052 (= tp!196339 (and (inv!8380 (c!115552 (tokens!1145 printableTokens!2))) e!381731))))

(assert (= (and b!629052 (is-Node!2116 (c!115552 (tokens!1145 printableTokens!2)))) b!629164))

(assert (= b!629165 b!629166))

(assert (= (and b!629052 (is-Leaf!3296 (c!115552 (tokens!1145 printableTokens!2)))) b!629165))

(declare-fun m!897657 () Bool)

(assert (=> b!629164 m!897657))

(declare-fun m!897659 () Bool)

(assert (=> b!629164 m!897659))

(declare-fun m!897661 () Bool)

(assert (=> b!629165 m!897661))

(assert (=> b!629052 m!897491))

(declare-fun b!629177 () Bool)

(declare-fun b_free!18393 () Bool)

(declare-fun b_next!18409 () Bool)

(assert (=> b!629177 (= b_free!18393 (not b_next!18409))))

(declare-fun tp!196363 () Bool)

(declare-fun b_and!62187 () Bool)

(assert (=> b!629177 (= tp!196363 b_and!62187)))

(declare-fun b_free!18395 () Bool)

(declare-fun b_next!18411 () Bool)

(assert (=> b!629177 (= b_free!18395 (not b_next!18411))))

(declare-fun tp!196361 () Bool)

(declare-fun b_and!62189 () Bool)

(assert (=> b!629177 (= tp!196361 b_and!62189)))

(declare-fun e!381742 () Bool)

(assert (=> b!629177 (= e!381742 (and tp!196363 tp!196361))))

(declare-fun b!629176 () Bool)

(declare-fun e!381741 () Bool)

(declare-fun inv!8375 (String!8548) Bool)

(declare-fun inv!8387 (TokenValueInjection!2476) Bool)

(assert (=> b!629176 (= e!381741 (and (inv!8375 (tag!1590 (h!11900 (rules!8112 printableTokens!2)))) (inv!8387 (transformation!1328 (h!11900 (rules!8112 printableTokens!2)))) e!381742))))

(declare-fun b!629175 () Bool)

(declare-fun e!381743 () Bool)

(declare-fun tp!196362 () Bool)

(assert (=> b!629175 (= e!381743 (and e!381741 tp!196362))))

(assert (=> b!629048 (= tp!196338 e!381743)))

(assert (= b!629176 b!629177))

(assert (= b!629175 b!629176))

(assert (= (and b!629048 (is-Cons!6499 (rules!8112 printableTokens!2))) b!629175))

(declare-fun m!897663 () Bool)

(assert (=> b!629176 m!897663))

(declare-fun m!897665 () Bool)

(assert (=> b!629176 m!897665))

(push 1)

(assert (not d!220140))

(assert (not b!629136))

(assert (not b!629165))

(assert (not b!629155))

(assert (not b!629093))

(assert (not b!629084))

(assert b_and!62189)

(assert (not d!220144))

(assert b_and!62187)

(assert (not d!220114))

(assert (not d!220146))

(assert (not bm!41324))

(assert (not b!629166))

(assert (not b!629137))

(assert (not b!629140))

(assert (not b_next!18409))

(assert (not b!629086))

(assert (not d!220136))

(assert (not d!220130))

(assert (not b_next!18411))

(assert (not b!629143))

(assert (not b!629175))

(assert (not b!629139))

(assert (not b!629085))

(assert (not b!629095))

(assert (not d!220134))

(assert (not d!220116))

(assert (not b!629052))

(assert (not b!629164))

(assert (not b!629176))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62189)

(assert b_and!62187)

(assert (not b_next!18411))

(assert (not b_next!18409))

(check-sat)

(pop 1)

