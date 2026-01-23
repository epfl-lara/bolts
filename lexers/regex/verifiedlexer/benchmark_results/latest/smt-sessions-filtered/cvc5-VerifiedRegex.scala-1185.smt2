; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61564 () Bool)

(assert start!61564)

(declare-fun b!630743 () Bool)

(declare-fun res!273595 () Bool)

(declare-fun e!382832 () Bool)

(assert (=> b!630743 (=> (not res!273595) (not e!382832))))

(declare-datatypes ((List!6578 0))(
  ( (Nil!6564) (Cons!6564 (h!11965 (_ BitVec 16)) (t!83052 List!6578)) )
))
(declare-datatypes ((TokenValue!1374 0))(
  ( (FloatLiteralValue!2748 (text!10063 List!6578)) (TokenValueExt!1373 (__x!4636 Int)) (Broken!6870 (value!43316 List!6578)) (Object!1387) (End!1374) (Def!1374) (Underscore!1374) (Match!1374) (Else!1374) (Error!1374) (Case!1374) (If!1374) (Extends!1374) (Abstract!1374) (Class!1374) (Val!1374) (DelimiterValue!2748 (del!1434 List!6578)) (KeywordValue!1380 (value!43317 List!6578)) (CommentValue!2748 (value!43318 List!6578)) (WhitespaceValue!2748 (value!43319 List!6578)) (IndentationValue!1374 (value!43320 List!6578)) (String!8607) (Int32!1374) (Broken!6871 (value!43321 List!6578)) (Boolean!1375) (Unit!11604) (OperatorValue!1377 (op!1434 List!6578)) (IdentifierValue!2748 (value!43322 List!6578)) (IdentifierValue!2749 (value!43323 List!6578)) (WhitespaceValue!2749 (value!43324 List!6578)) (True!2748) (False!2748) (Broken!6872 (value!43325 List!6578)) (Broken!6873 (value!43326 List!6578)) (True!2749) (RightBrace!1374) (RightBracket!1374) (Colon!1374) (Null!1374) (Comma!1374) (LeftBracket!1374) (False!2749) (LeftBrace!1374) (ImaginaryLiteralValue!1374 (text!10064 List!6578)) (StringLiteralValue!4122 (value!43327 List!6578)) (EOFValue!1374 (value!43328 List!6578)) (IdentValue!1374 (value!43329 List!6578)) (DelimiterValue!2749 (value!43330 List!6578)) (DedentValue!1374 (value!43331 List!6578)) (NewLineValue!1374 (value!43332 List!6578)) (IntegerValue!4122 (value!43333 (_ BitVec 32)) (text!10065 List!6578)) (IntegerValue!4123 (value!43334 Int) (text!10066 List!6578)) (Times!1374) (Or!1374) (Equal!1374) (Minus!1374) (Broken!6874 (value!43335 List!6578)) (And!1374) (Div!1374) (LessEqual!1374) (Mod!1374) (Concat!3048) (Not!1374) (Plus!1374) (SpaceValue!1374 (value!43336 List!6578)) (IntegerValue!4124 (value!43337 Int) (text!10067 List!6578)) (StringLiteralValue!4123 (text!10068 List!6578)) (FloatLiteralValue!2749 (text!10069 List!6578)) (BytesLiteralValue!1374 (value!43338 List!6578)) (CommentValue!2749 (value!43339 List!6578)) (StringLiteralValue!4124 (value!43340 List!6578)) (ErrorTokenValue!1374 (msg!1435 List!6578)) )
))
(declare-datatypes ((Regex!1674 0))(
  ( (ElementMatch!1674 (c!115834 (_ BitVec 16))) (Concat!3049 (regOne!3860 Regex!1674) (regTwo!3860 Regex!1674)) (EmptyExpr!1674) (Star!1674 (reg!2003 Regex!1674)) (EmptyLang!1674) (Union!1674 (regOne!3861 Regex!1674) (regTwo!3861 Regex!1674)) )
))
(declare-datatypes ((String!8608 0))(
  ( (String!8609 (value!43341 String)) )
))
(declare-datatypes ((IArray!4323 0))(
  ( (IArray!4324 (innerList!2219 List!6578)) )
))
(declare-datatypes ((Conc!2161 0))(
  ( (Node!2161 (left!5268 Conc!2161) (right!5598 Conc!2161) (csize!4552 Int) (cheight!2372 Int)) (Leaf!3347 (xs!4802 IArray!4323) (csize!4553 Int)) (Empty!2161) )
))
(declare-datatypes ((BalanceConc!4334 0))(
  ( (BalanceConc!4335 (c!115835 Conc!2161)) )
))
(declare-datatypes ((TokenValueInjection!2500 0))(
  ( (TokenValueInjection!2501 (toValue!2281 Int) (toChars!2140 Int)) )
))
(declare-datatypes ((Rule!2480 0))(
  ( (Rule!2481 (regex!1340 Regex!1674) (tag!1602 String!8608) (isSeparator!1340 Bool) (transformation!1340 TokenValueInjection!2500)) )
))
(declare-datatypes ((List!6579 0))(
  ( (Nil!6565) (Cons!6565 (h!11966 Rule!2480) (t!83053 List!6579)) )
))
(declare-fun lt!268187 () List!6579)

(declare-datatypes ((LexerInterface!1226 0))(
  ( (LexerInterfaceExt!1223 (__x!4637 Int)) (Lexer!1224) )
))
(declare-fun rulesInvariant!1161 (LexerInterface!1226 List!6579) Bool)

(assert (=> b!630743 (= res!273595 (rulesInvariant!1161 Lexer!1224 lt!268187))))

(declare-fun e!382829 () Bool)

(declare-fun tp!196662 () Bool)

(declare-fun b!630744 () Bool)

(declare-fun e!382830 () Bool)

(declare-datatypes ((Token!2404 0))(
  ( (Token!2405 (value!43342 TokenValue!1374) (rule!2136 Rule!2480) (size!5150 Int) (originalCharacters!1373 List!6578)) )
))
(declare-datatypes ((List!6580 0))(
  ( (Nil!6566) (Cons!6566 (h!11967 Token!2404) (t!83054 List!6580)) )
))
(declare-datatypes ((IArray!4325 0))(
  ( (IArray!4326 (innerList!2220 List!6580)) )
))
(declare-datatypes ((Conc!2162 0))(
  ( (Node!2162 (left!5269 Conc!2162) (right!5599 Conc!2162) (csize!4554 Int) (cheight!2373 Int)) (Leaf!3348 (xs!4803 IArray!4325) (csize!4555 Int)) (Empty!2162) )
))
(declare-datatypes ((BalanceConc!4336 0))(
  ( (BalanceConc!4337 (c!115836 Conc!2162)) )
))
(declare-datatypes ((PrintableTokens!62 0))(
  ( (PrintableTokens!63 (rules!8142 List!6579) (tokens!1161 BalanceConc!4336)) )
))
(declare-fun printableTokens!2 () PrintableTokens!62)

(declare-fun inv!8463 (BalanceConc!4336) Bool)

(assert (=> b!630744 (= e!382829 (and tp!196662 (inv!8463 (tokens!1161 printableTokens!2)) e!382830))))

(declare-fun b!630745 () Bool)

(declare-fun tp!196663 () Bool)

(declare-fun inv!8464 (Conc!2162) Bool)

(assert (=> b!630745 (= e!382830 (and (inv!8464 (c!115836 (tokens!1161 printableTokens!2))) tp!196663))))

(declare-fun res!273593 () Bool)

(declare-fun e!382831 () Bool)

(assert (=> start!61564 (=> (not res!273593) (not e!382831))))

(declare-fun lt!268185 () Int)

(assert (=> start!61564 (= res!273593 (> lt!268185 0))))

(declare-fun size!5151 (PrintableTokens!62) Int)

(assert (=> start!61564 (= lt!268185 (size!5151 printableTokens!2))))

(assert (=> start!61564 e!382831))

(declare-fun inv!8465 (PrintableTokens!62) Bool)

(assert (=> start!61564 (and (inv!8465 printableTokens!2) e!382829)))

(declare-fun b!630746 () Bool)

(declare-fun res!273594 () Bool)

(assert (=> b!630746 (=> (not res!273594) (not e!382832))))

(declare-fun usesJsonRules!0 (PrintableTokens!62) Bool)

(assert (=> b!630746 (= res!273594 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!630747 () Bool)

(assert (=> b!630747 (= e!382831 e!382832)))

(declare-fun res!273592 () Bool)

(assert (=> b!630747 (=> (not res!273592) (not e!382832))))

(declare-fun isEmpty!4618 (List!6579) Bool)

(assert (=> b!630747 (= res!273592 (not (isEmpty!4618 lt!268187)))))

(declare-datatypes ((JsonLexer!136 0))(
  ( (JsonLexer!137) )
))
(declare-fun rules!109 (JsonLexer!136) List!6579)

(assert (=> b!630747 (= lt!268187 (rules!109 JsonLexer!137))))

(declare-fun b!630748 () Bool)

(declare-fun lambda!16888 () Int)

(declare-datatypes ((List!6581 0))(
  ( (Nil!6567) (Cons!6567 (h!11968 PrintableTokens!62) (t!83055 List!6581)) )
))
(declare-datatypes ((IArray!4327 0))(
  ( (IArray!4328 (innerList!2221 List!6581)) )
))
(declare-datatypes ((Conc!2163 0))(
  ( (Node!2163 (left!5270 Conc!2163) (right!5600 Conc!2163) (csize!4556 Int) (cheight!2374 Int)) (Leaf!3349 (xs!4804 IArray!4327) (csize!4557 Int)) (Empty!2163) )
))
(declare-datatypes ((BalanceConc!4338 0))(
  ( (BalanceConc!4339 (c!115837 Conc!2163)) )
))
(declare-fun lt!268183 () BalanceConc!4338)

(declare-fun lambda!16887 () Int)

(declare-datatypes ((tuple2!7178 0))(
  ( (tuple2!7179 (_1!3853 Int) (_2!3853 PrintableTokens!62)) )
))
(declare-datatypes ((List!6582 0))(
  ( (Nil!6568) (Cons!6568 (h!11969 tuple2!7178) (t!83056 List!6582)) )
))
(declare-fun forall!1640 (List!6582 Int) Bool)

(declare-datatypes ((IArray!4329 0))(
  ( (IArray!4330 (innerList!2222 List!6582)) )
))
(declare-datatypes ((Conc!2164 0))(
  ( (Node!2164 (left!5271 Conc!2164) (right!5601 Conc!2164) (csize!4558 Int) (cheight!2375 Int)) (Leaf!3350 (xs!4805 IArray!4329) (csize!4559 Int)) (Empty!2164) )
))
(declare-datatypes ((BalanceConc!4340 0))(
  ( (BalanceConc!4341 (c!115838 Conc!2164)) )
))
(declare-fun list!2790 (BalanceConc!4340) List!6582)

(declare-fun sortObjectsByID!0 (BalanceConc!4340) BalanceConc!4340)

(declare-fun map!1385 (BalanceConc!4338 Int) BalanceConc!4340)

(assert (=> b!630748 (= e!382832 (not (forall!1640 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))) lambda!16888)))))

(declare-fun lt!268184 () List!6581)

(declare-datatypes ((Unit!11605 0))(
  ( (Unit!11606) )
))
(declare-fun lt!268186 () Unit!11605)

(declare-fun mapPred!3 (List!6581 Int Int) Unit!11605)

(assert (=> b!630748 (= lt!268186 (mapPred!3 lt!268184 lambda!16887 lambda!16888))))

(declare-fun lt!268188 () Unit!11605)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6581) Unit!11605)

(assert (=> b!630748 (= lt!268188 (lemmaAddIdsPreservesRules!0 lt!268184))))

(declare-fun list!2791 (BalanceConc!4338) List!6581)

(assert (=> b!630748 (= lt!268184 (list!2791 lt!268183))))

(declare-datatypes ((List!6583 0))(
  ( (Nil!6569) (Cons!6569 (h!11970 Int) (t!83057 List!6583)) )
))
(declare-datatypes ((IArray!4331 0))(
  ( (IArray!4332 (innerList!2223 List!6583)) )
))
(declare-datatypes ((Conc!2165 0))(
  ( (Node!2165 (left!5272 Conc!2165) (right!5602 Conc!2165) (csize!4560 Int) (cheight!2376 Int)) (Leaf!3351 (xs!4806 IArray!4331) (csize!4561 Int)) (Empty!2165) )
))
(declare-datatypes ((BalanceConc!4342 0))(
  ( (BalanceConc!4343 (c!115839 Conc!2165)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!62 Int BalanceConc!4342 BalanceConc!4338) BalanceConc!4338)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4336 Int Int BalanceConc!4342) BalanceConc!4342)

(assert (=> b!630748 (= lt!268183 (slicesMulti!0 printableTokens!2 lt!268185 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) (BalanceConc!4339 Empty!2163)))))

(assert (= (and start!61564 res!273593) b!630747))

(assert (= (and b!630747 res!273592) b!630743))

(assert (= (and b!630743 res!273595) b!630746))

(assert (= (and b!630746 res!273594) b!630748))

(assert (= b!630744 b!630745))

(assert (= start!61564 b!630744))

(declare-fun m!899991 () Bool)

(assert (=> start!61564 m!899991))

(declare-fun m!899993 () Bool)

(assert (=> start!61564 m!899993))

(declare-fun m!899995 () Bool)

(assert (=> b!630744 m!899995))

(declare-fun m!899997 () Bool)

(assert (=> b!630748 m!899997))

(declare-fun m!899999 () Bool)

(assert (=> b!630748 m!899999))

(declare-fun m!900001 () Bool)

(assert (=> b!630748 m!900001))

(declare-fun m!900003 () Bool)

(assert (=> b!630748 m!900003))

(assert (=> b!630748 m!900003))

(declare-fun m!900005 () Bool)

(assert (=> b!630748 m!900005))

(declare-fun m!900007 () Bool)

(assert (=> b!630748 m!900007))

(declare-fun m!900009 () Bool)

(assert (=> b!630748 m!900009))

(declare-fun m!900011 () Bool)

(assert (=> b!630748 m!900011))

(assert (=> b!630748 m!900007))

(declare-fun m!900013 () Bool)

(assert (=> b!630748 m!900013))

(assert (=> b!630748 m!899999))

(assert (=> b!630748 m!900001))

(declare-fun m!900015 () Bool)

(assert (=> b!630743 m!900015))

(declare-fun m!900017 () Bool)

(assert (=> b!630747 m!900017))

(declare-fun m!900019 () Bool)

(assert (=> b!630747 m!900019))

(declare-fun m!900021 () Bool)

(assert (=> b!630745 m!900021))

(declare-fun m!900023 () Bool)

(assert (=> b!630746 m!900023))

(push 1)

(assert (not b!630747))

(assert (not b!630743))

(assert (not b!630748))

(assert (not b!630744))

(assert (not start!61564))

(assert (not b!630746))

(assert (not b!630745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220756 () Bool)

(assert (=> d!220756 (= (usesJsonRules!0 printableTokens!2) (= (rules!8142 printableTokens!2) (rules!109 JsonLexer!137)))))

(declare-fun bs!73060 () Bool)

(assert (= bs!73060 d!220756))

(assert (=> bs!73060 m!900019))

(assert (=> b!630746 d!220756))

(declare-fun d!220760 () Bool)

(declare-fun size!5157 (BalanceConc!4336) Int)

(assert (=> d!220760 (= (size!5151 printableTokens!2) (size!5157 (tokens!1161 printableTokens!2)))))

(declare-fun bs!73061 () Bool)

(assert (= bs!73061 d!220760))

(declare-fun m!900059 () Bool)

(assert (=> bs!73061 m!900059))

(assert (=> start!61564 d!220760))

(declare-fun d!220762 () Bool)

(declare-fun res!273626 () Bool)

(declare-fun e!382856 () Bool)

(assert (=> d!220762 (=> (not res!273626) (not e!382856))))

(assert (=> d!220762 (= res!273626 (not (isEmpty!4618 (rules!8142 printableTokens!2))))))

(assert (=> d!220762 (= (inv!8465 printableTokens!2) e!382856)))

(declare-fun b!630785 () Bool)

(declare-fun res!273627 () Bool)

(assert (=> b!630785 (=> (not res!273627) (not e!382856))))

(assert (=> b!630785 (= res!273627 (rulesInvariant!1161 Lexer!1224 (rules!8142 printableTokens!2)))))

(declare-fun b!630786 () Bool)

(declare-fun res!273628 () Bool)

(assert (=> b!630786 (=> (not res!273628) (not e!382856))))

(declare-fun rulesProduceEachTokenIndividually!568 (LexerInterface!1226 List!6579 BalanceConc!4336) Bool)

(assert (=> b!630786 (= res!273628 (rulesProduceEachTokenIndividually!568 Lexer!1224 (rules!8142 printableTokens!2) (tokens!1161 printableTokens!2)))))

(declare-fun b!630787 () Bool)

(declare-fun separableTokens!18 (LexerInterface!1226 BalanceConc!4336 List!6579) Bool)

(assert (=> b!630787 (= e!382856 (separableTokens!18 Lexer!1224 (tokens!1161 printableTokens!2) (rules!8142 printableTokens!2)))))

(assert (= (and d!220762 res!273626) b!630785))

(assert (= (and b!630785 res!273627) b!630786))

(assert (= (and b!630786 res!273628) b!630787))

(declare-fun m!900099 () Bool)

(assert (=> d!220762 m!900099))

(declare-fun m!900101 () Bool)

(assert (=> b!630785 m!900101))

(declare-fun m!900103 () Bool)

(assert (=> b!630786 m!900103))

(declare-fun m!900105 () Bool)

(assert (=> b!630787 m!900105))

(assert (=> start!61564 d!220762))

(declare-fun d!220774 () Bool)

(declare-fun lambda!16904 () Int)

(declare-fun lambda!16903 () Int)

(assert (=> d!220774 (not (= lambda!16904 lambda!16903))))

(declare-fun forall!1642 (List!6581 Int) Bool)

(assert (=> d!220774 (forall!1642 lt!268184 lambda!16904)))

(declare-fun lt!268211 () Unit!11605)

(declare-fun e!382859 () Unit!11605)

(assert (=> d!220774 (= lt!268211 e!382859)))

(declare-fun c!115851 () Bool)

(assert (=> d!220774 (= c!115851 (is-Nil!6567 lt!268184))))

(assert (=> d!220774 (forall!1642 lt!268184 lambda!16903)))

(assert (=> d!220774 (= (lemmaAddIdsPreservesRules!0 lt!268184) lt!268211)))

(declare-fun b!630792 () Bool)

(declare-fun Unit!11610 () Unit!11605)

(assert (=> b!630792 (= e!382859 Unit!11610)))

(declare-fun b!630793 () Bool)

(declare-fun Unit!11611 () Unit!11605)

(assert (=> b!630793 (= e!382859 Unit!11611)))

(declare-fun lt!268212 () Unit!11605)

(assert (=> b!630793 (= lt!268212 (lemmaAddIdsPreservesRules!0 (t!83055 lt!268184)))))

(assert (= (and d!220774 c!115851) b!630792))

(assert (= (and d!220774 (not c!115851)) b!630793))

(declare-fun m!900107 () Bool)

(assert (=> d!220774 m!900107))

(declare-fun m!900109 () Bool)

(assert (=> d!220774 m!900109))

(declare-fun m!900111 () Bool)

(assert (=> b!630793 m!900111))

(assert (=> b!630748 d!220774))

(declare-fun bs!73064 () Bool)

(declare-fun d!220776 () Bool)

(assert (= bs!73064 (and d!220776 d!220774)))

(declare-fun lambda!16907 () Int)

(assert (=> bs!73064 (not (= lambda!16907 lambda!16903))))

(assert (=> bs!73064 (not (= lambda!16907 lambda!16904))))

(assert (=> d!220776 true))

(declare-fun order!5065 () Int)

(declare-fun order!5063 () Int)

(declare-fun dynLambda!3674 (Int Int) Int)

(declare-fun dynLambda!3675 (Int Int) Int)

(assert (=> d!220776 (< (dynLambda!3674 order!5063 lambda!16887) (dynLambda!3675 order!5065 lambda!16907))))

(assert (=> d!220776 true))

(declare-fun order!5067 () Int)

(declare-fun dynLambda!3676 (Int Int) Int)

(assert (=> d!220776 (< (dynLambda!3676 order!5067 lambda!16888) (dynLambda!3675 order!5065 lambda!16907))))

(declare-fun map!1387 (List!6581 Int) List!6582)

(assert (=> d!220776 (forall!1640 (map!1387 lt!268184 lambda!16887) lambda!16888)))

(declare-fun lt!268215 () Unit!11605)

(declare-fun choose!4581 (List!6581 Int Int) Unit!11605)

(assert (=> d!220776 (= lt!268215 (choose!4581 lt!268184 lambda!16887 lambda!16888))))

(assert (=> d!220776 (forall!1642 lt!268184 lambda!16907)))

(assert (=> d!220776 (= (mapPred!3 lt!268184 lambda!16887 lambda!16888) lt!268215)))

(declare-fun bs!73065 () Bool)

(assert (= bs!73065 d!220776))

(declare-fun m!900113 () Bool)

(assert (=> bs!73065 m!900113))

(assert (=> bs!73065 m!900113))

(declare-fun m!900115 () Bool)

(assert (=> bs!73065 m!900115))

(declare-fun m!900117 () Bool)

(assert (=> bs!73065 m!900117))

(declare-fun m!900119 () Bool)

(assert (=> bs!73065 m!900119))

(assert (=> b!630748 d!220776))

(declare-fun d!220778 () Bool)

(declare-fun list!2794 (Conc!2163) List!6581)

(assert (=> d!220778 (= (list!2791 lt!268183) (list!2794 (c!115837 lt!268183)))))

(declare-fun bs!73066 () Bool)

(assert (= bs!73066 d!220778))

(declare-fun m!900121 () Bool)

(assert (=> bs!73066 m!900121))

(assert (=> b!630748 d!220778))

(declare-fun d!220780 () Bool)

(declare-fun list!2795 (Conc!2164) List!6582)

(assert (=> d!220780 (= (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))) (list!2795 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))

(declare-fun bs!73067 () Bool)

(assert (= bs!73067 d!220780))

(declare-fun m!900123 () Bool)

(assert (=> bs!73067 m!900123))

(assert (=> b!630748 d!220780))

(declare-fun b!630820 () Bool)

(assert (=> b!630820 true))

(declare-fun bs!73068 () Bool)

(declare-fun d!220782 () Bool)

(assert (= bs!73068 (and d!220782 b!630820)))

(declare-fun lambda!16913 () Int)

(declare-fun lambda!16912 () Int)

(assert (=> bs!73068 (= lambda!16913 lambda!16912)))

(assert (=> d!220782 true))

(declare-fun b!630814 () Bool)

(declare-fun e!382870 () Bool)

(assert (=> b!630814 (= e!382870 (<= 0 (size!5157 (tokens!1161 printableTokens!2))))))

(declare-fun b!630815 () Bool)

(declare-fun e!382873 () BalanceConc!4342)

(assert (=> b!630815 (= e!382873 (BalanceConc!4343 Empty!2165))))

(declare-fun b!630816 () Bool)

(declare-fun e!382874 () BalanceConc!4342)

(assert (=> b!630816 (= e!382874 (BalanceConc!4343 Empty!2165))))

(declare-fun b!630817 () Bool)

(declare-fun e!382872 () Bool)

(declare-fun lt!268222 () Token!2404)

(declare-fun isKeywordValue!0 (Token!2404 TokenValue!1374) Bool)

(assert (=> b!630817 (= e!382872 (isKeywordValue!0 lt!268222 RightBrace!1374))))

(declare-fun lt!268224 () BalanceConc!4342)

(declare-fun forall!1643 (BalanceConc!4342 Int) Bool)

(assert (=> d!220782 (forall!1643 lt!268224 lambda!16913)))

(assert (=> d!220782 (= lt!268224 e!382873)))

(declare-fun c!115858 () Bool)

(assert (=> d!220782 (= c!115858 (>= 0 (size!5157 (tokens!1161 printableTokens!2))))))

(assert (=> d!220782 e!382870))

(declare-fun res!273634 () Bool)

(assert (=> d!220782 (=> (not res!273634) (not e!382870))))

(assert (=> d!220782 (= res!273634 (>= 0 0))))

(assert (=> d!220782 (= (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) lt!268224)))

(declare-fun b!630818 () Bool)

(declare-fun e!382871 () BalanceConc!4342)

(assert (=> b!630818 (= e!382873 e!382871)))

(declare-fun apply!1565 (BalanceConc!4336 Int) Token!2404)

(assert (=> b!630818 (= lt!268222 (apply!1565 (tokens!1161 printableTokens!2) 0))))

(declare-fun res!273633 () Bool)

(assert (=> b!630818 (= res!273633 (isKeywordValue!0 lt!268222 LeftBrace!1374))))

(assert (=> b!630818 (=> res!273633 e!382872)))

(declare-fun c!115859 () Bool)

(assert (=> b!630818 (= c!115859 e!382872)))

(declare-fun b!630819 () Bool)

(declare-fun call!41380 () BalanceConc!4342)

(assert (=> b!630819 (= e!382871 call!41380)))

(declare-fun bm!41375 () Bool)

(declare-fun c!115860 () Bool)

(assert (=> bm!41375 (= c!115860 c!115859)))

(assert (=> bm!41375 (= call!41380 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 (+ 0 1) e!382874))))

(declare-fun lt!268223 () Unit!11605)

(declare-fun lemmaConcatPreservesForall!15 (List!6583 List!6583 Int) Unit!11605)

(declare-fun list!2796 (BalanceConc!4342) List!6583)

(assert (=> b!630820 (= lt!268223 (lemmaConcatPreservesForall!15 (list!2796 (BalanceConc!4343 Empty!2165)) (Cons!6569 0 Nil!6569) lambda!16912))))

(assert (=> b!630820 (= e!382871 call!41380)))

(declare-fun b!630821 () Bool)

(declare-fun append!183 (BalanceConc!4342 Int) BalanceConc!4342)

(assert (=> b!630821 (= e!382874 (append!183 (BalanceConc!4343 Empty!2165) 0))))

(assert (= (and d!220782 res!273634) b!630814))

(assert (= (and d!220782 c!115858) b!630815))

(assert (= (and d!220782 (not c!115858)) b!630818))

(assert (= (and b!630818 (not res!273633)) b!630817))

(assert (= (and b!630818 c!115859) b!630820))

(assert (= (and b!630818 (not c!115859)) b!630819))

(assert (= (or b!630820 b!630819) bm!41375))

(assert (= (and bm!41375 c!115860) b!630821))

(assert (= (and bm!41375 (not c!115860)) b!630816))

(declare-fun m!900125 () Bool)

(assert (=> d!220782 m!900125))

(assert (=> d!220782 m!900059))

(declare-fun m!900127 () Bool)

(assert (=> b!630817 m!900127))

(assert (=> b!630814 m!900059))

(declare-fun m!900129 () Bool)

(assert (=> b!630821 m!900129))

(declare-fun m!900131 () Bool)

(assert (=> b!630820 m!900131))

(assert (=> b!630820 m!900131))

(declare-fun m!900133 () Bool)

(assert (=> b!630820 m!900133))

(declare-fun m!900135 () Bool)

(assert (=> b!630818 m!900135))

(declare-fun m!900137 () Bool)

(assert (=> b!630818 m!900137))

(declare-fun m!900139 () Bool)

(assert (=> bm!41375 m!900139))

(assert (=> b!630748 d!220782))

(declare-fun d!220784 () Bool)

(declare-fun res!273639 () Bool)

(declare-fun e!382879 () Bool)

(assert (=> d!220784 (=> res!273639 e!382879)))

(assert (=> d!220784 (= res!273639 (is-Nil!6568 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))

(assert (=> d!220784 (= (forall!1640 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))) lambda!16888) e!382879)))

(declare-fun b!630828 () Bool)

(declare-fun e!382880 () Bool)

(assert (=> b!630828 (= e!382879 e!382880)))

(declare-fun res!273640 () Bool)

(assert (=> b!630828 (=> (not res!273640) (not e!382880))))

(declare-fun dynLambda!3677 (Int tuple2!7178) Bool)

(assert (=> b!630828 (= res!273640 (dynLambda!3677 lambda!16888 (h!11969 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))))))

(declare-fun b!630829 () Bool)

(assert (=> b!630829 (= e!382880 (forall!1640 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))) lambda!16888))))

(assert (= (and d!220784 (not res!273639)) b!630828))

(assert (= (and b!630828 res!273640) b!630829))

(declare-fun b_lambda!24773 () Bool)

(assert (=> (not b_lambda!24773) (not b!630828)))

(declare-fun m!900141 () Bool)

(assert (=> b!630828 m!900141))

(declare-fun m!900143 () Bool)

(assert (=> b!630829 m!900143))

(assert (=> b!630748 d!220784))

(declare-fun d!220786 () Bool)

(declare-fun e!382883 () Bool)

(assert (=> d!220786 e!382883))

(declare-fun res!273643 () Bool)

(assert (=> d!220786 (=> (not res!273643) (not e!382883))))

(declare-fun lt!268227 () BalanceConc!4340)

(assert (=> d!220786 (= res!273643 (= (list!2790 lt!268227) (map!1387 (list!2791 lt!268183) lambda!16887)))))

(declare-fun map!1388 (Conc!2163 Int) Conc!2164)

(assert (=> d!220786 (= lt!268227 (BalanceConc!4341 (map!1388 (c!115837 lt!268183) lambda!16887)))))

(assert (=> d!220786 (= (map!1385 lt!268183 lambda!16887) lt!268227)))

(declare-fun b!630832 () Bool)

(declare-fun isBalanced!576 (Conc!2164) Bool)

(assert (=> b!630832 (= e!382883 (isBalanced!576 (map!1388 (c!115837 lt!268183) lambda!16887)))))

(assert (= (and d!220786 res!273643) b!630832))

(declare-fun m!900145 () Bool)

(assert (=> d!220786 m!900145))

(assert (=> d!220786 m!899997))

(assert (=> d!220786 m!899997))

(declare-fun m!900147 () Bool)

(assert (=> d!220786 m!900147))

(declare-fun m!900149 () Bool)

(assert (=> d!220786 m!900149))

(assert (=> b!630832 m!900149))

(assert (=> b!630832 m!900149))

(declare-fun m!900151 () Bool)

(assert (=> b!630832 m!900151))

(assert (=> b!630748 d!220786))

(declare-fun bs!73073 () Bool)

(declare-fun b!630888 () Bool)

(assert (= bs!73073 (and b!630888 d!220774)))

(declare-fun lambda!16924 () Int)

(assert (=> bs!73073 (= lambda!16924 lambda!16903)))

(assert (=> bs!73073 (not (= lambda!16924 lambda!16904))))

(declare-fun bs!73074 () Bool)

(assert (= bs!73074 (and b!630888 d!220776)))

(assert (=> bs!73074 (not (= lambda!16924 lambda!16907))))

(declare-fun bs!73075 () Bool)

(declare-fun d!220788 () Bool)

(assert (= bs!73075 (and d!220788 d!220774)))

(declare-fun lambda!16925 () Int)

(assert (=> bs!73075 (= lambda!16925 lambda!16903)))

(assert (=> bs!73075 (not (= lambda!16925 lambda!16904))))

(declare-fun bs!73076 () Bool)

(assert (= bs!73076 (and d!220788 d!220776)))

(assert (=> bs!73076 (not (= lambda!16925 lambda!16907))))

(declare-fun bs!73077 () Bool)

(assert (= bs!73077 (and d!220788 b!630888)))

(assert (=> bs!73077 (= lambda!16925 lambda!16924)))

(declare-fun b!630885 () Bool)

(declare-fun e!382915 () BalanceConc!4338)

(assert (=> b!630885 (= e!382915 (BalanceConc!4339 Empty!2163))))

(declare-fun b!630886 () Bool)

(declare-fun e!382916 () PrintableTokens!62)

(declare-fun call!41386 () PrintableTokens!62)

(assert (=> b!630886 (= e!382916 call!41386)))

(declare-fun b!630887 () Bool)

(assert (=> b!630887 (= e!382916 call!41386)))

(declare-fun lt!268254 () PrintableTokens!62)

(declare-fun tail!871 (BalanceConc!4342) BalanceConc!4342)

(declare-fun append!184 (BalanceConc!4338 PrintableTokens!62) BalanceConc!4338)

(assert (=> b!630888 (= e!382915 (slicesMulti!0 printableTokens!2 lt!268185 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))) (append!184 (BalanceConc!4339 Empty!2163) lt!268254)))))

(declare-fun lt!268250 () Int)

(declare-fun apply!1566 (BalanceConc!4342 Int) Int)

(assert (=> b!630888 (= lt!268250 (apply!1566 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) 0))))

(declare-fun lt!268253 () Int)

(assert (=> b!630888 (= lt!268253 (apply!1566 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) 1))))

(declare-fun c!115876 () Bool)

(assert (=> b!630888 (= c!115876 (<= lt!268250 lt!268253))))

(assert (=> b!630888 (= lt!268254 e!382916)))

(declare-fun lt!268252 () Unit!11605)

(declare-fun lemmaConcatPreservesForall!16 (List!6581 List!6581 Int) Unit!11605)

(assert (=> b!630888 (= lt!268252 (lemmaConcatPreservesForall!16 (list!2791 (BalanceConc!4339 Empty!2163)) (Cons!6567 lt!268254 Nil!6567) lambda!16924))))

(declare-fun bm!41381 () Bool)

(declare-fun slice!20 (PrintableTokens!62 Int Int) PrintableTokens!62)

(assert (=> bm!41381 (= call!41386 (slice!20 printableTokens!2 (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))))))

(declare-fun lt!268251 () BalanceConc!4338)

(declare-fun forall!1644 (BalanceConc!4338 Int) Bool)

(assert (=> d!220788 (forall!1644 lt!268251 lambda!16925)))

(assert (=> d!220788 (= lt!268251 e!382915)))

(declare-fun c!115877 () Bool)

(declare-fun size!5158 (BalanceConc!4342) Int)

(assert (=> d!220788 (= c!115877 (>= (size!5158 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) 2))))

(assert (=> d!220788 (= (size!5151 printableTokens!2) lt!268185)))

(assert (=> d!220788 (= (slicesMulti!0 printableTokens!2 lt!268185 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) (BalanceConc!4339 Empty!2163)) lt!268251)))

(assert (= (and d!220788 c!115877) b!630888))

(assert (= (and d!220788 (not c!115877)) b!630885))

(assert (= (and b!630888 c!115876) b!630886))

(assert (= (and b!630888 (not c!115876)) b!630887))

(assert (= (or b!630886 b!630887) bm!41381))

(declare-fun m!900193 () Bool)

(assert (=> b!630888 m!900193))

(declare-fun m!900195 () Bool)

(assert (=> b!630888 m!900195))

(assert (=> b!630888 m!900193))

(assert (=> b!630888 m!900007))

(declare-fun m!900197 () Bool)

(assert (=> b!630888 m!900197))

(declare-fun m!900199 () Bool)

(assert (=> b!630888 m!900199))

(declare-fun m!900201 () Bool)

(assert (=> b!630888 m!900201))

(declare-fun m!900203 () Bool)

(assert (=> b!630888 m!900203))

(declare-fun m!900205 () Bool)

(assert (=> b!630888 m!900205))

(assert (=> b!630888 m!900199))

(assert (=> b!630888 m!900201))

(assert (=> b!630888 m!900007))

(declare-fun m!900207 () Bool)

(assert (=> b!630888 m!900207))

(assert (=> b!630888 m!900007))

(assert (=> b!630888 m!900205))

(declare-fun m!900209 () Bool)

(assert (=> bm!41381 m!900209))

(declare-fun m!900211 () Bool)

(assert (=> d!220788 m!900211))

(assert (=> d!220788 m!900007))

(declare-fun m!900213 () Bool)

(assert (=> d!220788 m!900213))

(assert (=> d!220788 m!899991))

(assert (=> b!630748 d!220788))

(declare-fun bs!73081 () Bool)

(declare-fun b!630971 () Bool)

(assert (= bs!73081 (and b!630971 b!630748)))

(declare-fun lambda!17023 () Int)

(assert (=> bs!73081 (not (= lambda!17023 lambda!16888))))

(declare-fun b!630980 () Bool)

(declare-fun e!382974 () Bool)

(assert (=> b!630980 (= e!382974 true)))

(declare-fun b!630979 () Bool)

(declare-fun e!382973 () Bool)

(assert (=> b!630979 (= e!382973 e!382974)))

(assert (=> b!630971 e!382973))

(assert (= b!630979 b!630980))

(assert (= b!630971 b!630979))

(declare-fun lambda!17024 () Int)

(assert (=> bs!73081 (not (= lambda!17024 lambda!16888))))

(assert (=> b!630971 (not (= lambda!17024 lambda!17023))))

(declare-fun b!630982 () Bool)

(declare-fun e!382976 () Bool)

(assert (=> b!630982 (= e!382976 true)))

(declare-fun b!630981 () Bool)

(declare-fun e!382975 () Bool)

(assert (=> b!630981 (= e!382975 e!382976)))

(assert (=> b!630971 e!382975))

(assert (= b!630981 b!630982))

(assert (= b!630971 b!630981))

(declare-fun lambda!17025 () Int)

(assert (=> bs!73081 (not (= lambda!17025 lambda!16888))))

(assert (=> b!630971 (not (= lambda!17025 lambda!17023))))

(assert (=> b!630971 (not (= lambda!17025 lambda!17024))))

(declare-fun b!630984 () Bool)

(declare-fun e!382978 () Bool)

(assert (=> b!630984 (= e!382978 true)))

(declare-fun b!630983 () Bool)

(declare-fun e!382977 () Bool)

(assert (=> b!630983 (= e!382977 e!382978)))

(assert (=> b!630971 e!382977))

(assert (= b!630983 b!630984))

(assert (= b!630971 b!630983))

(declare-fun lambda!17026 () Int)

(assert (=> bs!73081 (= lambda!17026 lambda!16888)))

(assert (=> b!630971 (not (= lambda!17026 lambda!17023))))

(assert (=> b!630971 (not (= lambda!17026 lambda!17024))))

(assert (=> b!630971 (not (= lambda!17026 lambda!17025))))

(declare-fun bs!73082 () Bool)

(declare-fun d!220804 () Bool)

(assert (= bs!73082 (and d!220804 b!630971)))

(declare-fun lambda!17027 () Int)

(assert (=> bs!73082 (not (= lambda!17027 lambda!17024))))

(declare-fun bs!73083 () Bool)

(assert (= bs!73083 (and d!220804 b!630748)))

(assert (=> bs!73083 (= lambda!17027 lambda!16888)))

(assert (=> bs!73082 (not (= lambda!17027 lambda!17025))))

(assert (=> bs!73082 (= lambda!17027 lambda!17026)))

(assert (=> bs!73082 (not (= lambda!17027 lambda!17023))))

(declare-fun b!630961 () Bool)

(assert (=> b!630961 true))

(declare-fun lt!268466 () tuple2!7178)

(declare-fun lt!268463 () Unit!11605)

(declare-fun lt!268444 () BalanceConc!4340)

(declare-fun forallContained!453 (List!6582 Int tuple2!7178) Unit!11605)

(assert (=> b!630961 (= lt!268463 (forallContained!453 (list!2790 lt!268444) lambda!17025 lt!268466))))

(declare-fun e!382968 () Unit!11605)

(declare-fun err!494 () Unit!11605)

(assert (=> b!630961 (= e!382968 err!494)))

(declare-fun b!630962 () Bool)

(declare-fun e!382966 () Unit!11605)

(declare-fun Unit!11612 () Unit!11605)

(assert (=> b!630962 (= e!382966 Unit!11612)))

(declare-fun b!630963 () Bool)

(assert (=> b!630963 true))

(declare-fun lt!268442 () Unit!11605)

(assert (=> b!630963 (= lt!268442 (forallContained!453 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023 lt!268466))))

(declare-fun e!382965 () Unit!11605)

(declare-fun err!497 () Unit!11605)

(assert (=> b!630963 (= e!382965 err!497)))

(declare-fun b!630964 () Bool)

(declare-fun Unit!11613 () Unit!11605)

(assert (=> b!630964 (= e!382968 Unit!11613)))

(declare-fun b!630965 () Bool)

(assert (=> b!630965 true))

(declare-fun lt!268460 () Unit!11605)

(assert (=> b!630965 (= lt!268460 (forallContained!453 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025 lt!268466))))

(declare-fun e!382964 () Unit!11605)

(declare-fun err!495 () Unit!11605)

(assert (=> b!630965 (= e!382964 err!495)))

(declare-fun b!630966 () Bool)

(declare-fun e!382963 () BalanceConc!4340)

(assert (=> b!630966 (= e!382963 (map!1385 lt!268183 lambda!16887))))

(declare-fun b!630967 () Bool)

(declare-fun Unit!11614 () Unit!11605)

(assert (=> b!630967 (= e!382965 Unit!11614)))

(declare-fun b!630968 () Bool)

(declare-fun Unit!11615 () Unit!11605)

(assert (=> b!630968 (= e!382964 Unit!11615)))

(declare-fun b!630969 () Bool)

(assert (=> b!630969 true))

(declare-fun lt!268461 () Unit!11605)

(declare-fun lt!268436 () BalanceConc!4340)

(assert (=> b!630969 (= lt!268461 (forallContained!453 (list!2790 lt!268436) lambda!17023 lt!268466))))

(declare-fun err!496 () Unit!11605)

(assert (=> b!630969 (= e!382966 err!496)))

(declare-fun b!630970 () Bool)

(declare-fun e!382962 () Bool)

(declare-fun lt!268453 () List!6582)

(declare-fun size!5159 (List!6582) Int)

(declare-fun filter!106 (List!6582 Int) List!6582)

(assert (=> b!630970 (= e!382962 (< (size!5159 (filter!106 lt!268453 lambda!17023)) (size!5159 lt!268453)))))

(declare-fun lt!268443 () BalanceConc!4340)

(declare-fun forall!1645 (BalanceConc!4340 Int) Bool)

(assert (=> d!220804 (forall!1645 lt!268443 lambda!17027)))

(assert (=> d!220804 (= lt!268443 e!382963)))

(declare-fun c!115907 () Bool)

(declare-fun size!5160 (BalanceConc!4340) Int)

(assert (=> d!220804 (= c!115907 (<= (size!5160 (map!1385 lt!268183 lambda!16887)) 1))))

(assert (=> d!220804 (= (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)) lt!268443)))

(declare-fun lt!268468 () BalanceConc!4340)

(declare-fun ++!1791 (BalanceConc!4340 BalanceConc!4340) BalanceConc!4340)

(assert (=> b!630971 (= e!382963 (++!1791 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468) (sortObjectsByID!0 lt!268444)))))

(declare-fun apply!1567 (BalanceConc!4340 Int) tuple2!7178)

(assert (=> b!630971 (= lt!268466 (apply!1567 (map!1385 lt!268183 lambda!16887) (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2)))))))

(declare-fun filter!107 (BalanceConc!4340 Int) BalanceConc!4340)

(assert (=> b!630971 (= lt!268436 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17023))))

(assert (=> b!630971 (= lt!268468 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17024))))

(assert (=> b!630971 (= lt!268444 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17025))))

(declare-fun c!115905 () Bool)

(declare-fun contains!1510 (BalanceConc!4340 tuple2!7178) Bool)

(assert (=> b!630971 (= c!115905 (contains!1510 lt!268436 lt!268466))))

(declare-fun lt!268452 () Unit!11605)

(assert (=> b!630971 (= lt!268452 e!382966)))

(declare-fun c!115904 () Bool)

(assert (=> b!630971 (= c!115904 (forall!1645 (map!1385 lt!268183 lambda!16887) lambda!17023))))

(declare-fun lt!268438 () Unit!11605)

(assert (=> b!630971 (= lt!268438 e!382965)))

(assert (=> b!630971 (= lt!268453 (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268447 () Unit!11605)

(declare-fun lemmaNotForallFilterShorter!1 (List!6582 Int) Unit!11605)

(assert (=> b!630971 (= lt!268447 (lemmaNotForallFilterShorter!1 lt!268453 lambda!17023))))

(declare-fun res!273679 () Bool)

(declare-fun isEmpty!4620 (List!6582) Bool)

(assert (=> b!630971 (= res!273679 (isEmpty!4620 lt!268453))))

(assert (=> b!630971 (=> res!273679 e!382962)))

(assert (=> b!630971 e!382962))

(declare-fun lt!268439 () Unit!11605)

(assert (=> b!630971 (= lt!268439 lt!268447)))

(declare-fun c!115906 () Bool)

(assert (=> b!630971 (= c!115906 (contains!1510 lt!268444 lt!268466))))

(declare-fun lt!268464 () Unit!11605)

(assert (=> b!630971 (= lt!268464 e!382968)))

(declare-fun c!115903 () Bool)

(assert (=> b!630971 (= c!115903 (forall!1645 (map!1385 lt!268183 lambda!16887) lambda!17025))))

(declare-fun lt!268451 () Unit!11605)

(assert (=> b!630971 (= lt!268451 e!382964)))

(declare-fun lt!268456 () List!6582)

(assert (=> b!630971 (= lt!268456 (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268467 () Unit!11605)

(assert (=> b!630971 (= lt!268467 (lemmaNotForallFilterShorter!1 lt!268456 lambda!17025))))

(declare-fun res!273678 () Bool)

(assert (=> b!630971 (= res!273678 (isEmpty!4620 lt!268456))))

(declare-fun e!382967 () Bool)

(assert (=> b!630971 (=> res!273678 e!382967)))

(assert (=> b!630971 e!382967))

(declare-fun lt!268465 () Unit!11605)

(assert (=> b!630971 (= lt!268465 lt!268467)))

(declare-fun lt!268440 () Unit!11605)

(declare-fun filterSubseq!1 (List!6582 Int) Unit!11605)

(assert (=> b!630971 (= lt!268440 (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023))))

(declare-fun lt!268470 () Unit!11605)

(assert (=> b!630971 (= lt!268470 (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17024))))

(declare-fun lt!268435 () Unit!11605)

(assert (=> b!630971 (= lt!268435 (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025))))

(declare-fun lt!268450 () List!6582)

(assert (=> b!630971 (= lt!268450 (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17023)))))

(declare-fun lt!268448 () List!6582)

(assert (=> b!630971 (= lt!268448 (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268445 () Unit!11605)

(declare-fun lemmaForallSubseq!3 (List!6582 List!6582 Int) Unit!11605)

(assert (=> b!630971 (= lt!268445 (lemmaForallSubseq!3 lt!268450 lt!268448 lambda!17026))))

(assert (=> b!630971 (forall!1640 lt!268450 lambda!17026)))

(declare-fun lt!268459 () Unit!11605)

(assert (=> b!630971 (= lt!268459 lt!268445)))

(declare-fun lt!268454 () List!6582)

(assert (=> b!630971 (= lt!268454 (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17024)))))

(declare-fun lt!268458 () List!6582)

(assert (=> b!630971 (= lt!268458 (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268469 () Unit!11605)

(assert (=> b!630971 (= lt!268469 (lemmaForallSubseq!3 lt!268454 lt!268458 lambda!17026))))

(assert (=> b!630971 (forall!1640 lt!268454 lambda!17026)))

(declare-fun lt!268449 () Unit!11605)

(assert (=> b!630971 (= lt!268449 lt!268469)))

(declare-fun lt!268457 () List!6582)

(assert (=> b!630971 (= lt!268457 (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17025)))))

(declare-fun lt!268446 () List!6582)

(assert (=> b!630971 (= lt!268446 (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268441 () Unit!11605)

(assert (=> b!630971 (= lt!268441 (lemmaForallSubseq!3 lt!268457 lt!268446 lambda!17026))))

(assert (=> b!630971 (forall!1640 lt!268457 lambda!17026)))

(declare-fun lt!268455 () Unit!11605)

(assert (=> b!630971 (= lt!268455 lt!268441)))

(declare-fun lt!268437 () Unit!11605)

(declare-fun lemmaConcatPreservesForall!17 (List!6582 List!6582 Int) Unit!11605)

(assert (=> b!630971 (= lt!268437 (lemmaConcatPreservesForall!17 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468) lambda!17026))))

(declare-fun lt!268462 () Unit!11605)

(declare-fun ++!1792 (List!6582 List!6582) List!6582)

(assert (=> b!630971 (= lt!268462 (lemmaConcatPreservesForall!17 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) (list!2790 (sortObjectsByID!0 lt!268444)) lambda!17026))))

(declare-fun b!630972 () Bool)

(assert (=> b!630972 (= e!382967 (< (size!5159 (filter!106 lt!268456 lambda!17025)) (size!5159 lt!268456)))))

(assert (= (and d!220804 c!115907) b!630966))

(assert (= (and d!220804 (not c!115907)) b!630971))

(assert (= (and b!630971 c!115905) b!630969))

(assert (= (and b!630971 (not c!115905)) b!630962))

(assert (= (and b!630971 c!115904) b!630963))

(assert (= (and b!630971 (not c!115904)) b!630967))

(assert (= (and b!630971 (not res!273679)) b!630970))

(assert (= (and b!630971 c!115906) b!630961))

(assert (= (and b!630971 (not c!115906)) b!630964))

(assert (= (and b!630971 c!115903) b!630965))

(assert (= (and b!630971 (not c!115903)) b!630968))

(assert (= (and b!630971 (not res!273678)) b!630972))

(declare-fun m!900313 () Bool)

(assert (=> b!630971 m!900313))

(declare-fun m!900315 () Bool)

(assert (=> b!630971 m!900315))

(declare-fun m!900317 () Bool)

(assert (=> b!630971 m!900317))

(assert (=> b!630971 m!899999))

(declare-fun m!900319 () Bool)

(assert (=> b!630971 m!900319))

(declare-fun m!900321 () Bool)

(assert (=> b!630971 m!900321))

(declare-fun m!900323 () Bool)

(assert (=> b!630971 m!900323))

(declare-fun m!900325 () Bool)

(assert (=> b!630971 m!900325))

(declare-fun m!900327 () Bool)

(assert (=> b!630971 m!900327))

(declare-fun m!900329 () Bool)

(assert (=> b!630971 m!900329))

(declare-fun m!900331 () Bool)

(assert (=> b!630971 m!900331))

(declare-fun m!900333 () Bool)

(assert (=> b!630971 m!900333))

(declare-fun m!900335 () Bool)

(assert (=> b!630971 m!900335))

(declare-fun m!900337 () Bool)

(assert (=> b!630971 m!900337))

(declare-fun m!900339 () Bool)

(assert (=> b!630971 m!900339))

(declare-fun m!900341 () Bool)

(assert (=> b!630971 m!900341))

(declare-fun m!900343 () Bool)

(assert (=> b!630971 m!900343))

(declare-fun m!900345 () Bool)

(assert (=> b!630971 m!900345))

(assert (=> b!630971 m!900327))

(declare-fun m!900347 () Bool)

(assert (=> b!630971 m!900347))

(assert (=> b!630971 m!900335))

(declare-fun m!900349 () Bool)

(assert (=> b!630971 m!900349))

(declare-fun m!900351 () Bool)

(assert (=> b!630971 m!900351))

(assert (=> b!630971 m!900335))

(declare-fun m!900353 () Bool)

(assert (=> b!630971 m!900353))

(declare-fun m!900355 () Bool)

(assert (=> b!630971 m!900355))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900339))

(assert (=> b!630971 m!900315))

(assert (=> b!630971 m!899999))

(declare-fun m!900357 () Bool)

(assert (=> b!630971 m!900357))

(declare-fun m!900359 () Bool)

(assert (=> b!630971 m!900359))

(assert (=> b!630971 m!900329))

(assert (=> b!630971 m!900359))

(assert (=> b!630971 m!900315))

(assert (=> b!630971 m!900343))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900321))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900335))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900339))

(declare-fun m!900365 () Bool)

(assert (=> b!630971 m!900365))

(declare-fun m!900369 () Bool)

(assert (=> b!630971 m!900369))

(declare-fun m!900371 () Bool)

(assert (=> b!630971 m!900371))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900321))

(assert (=> b!630971 m!899999))

(declare-fun m!900373 () Bool)

(assert (=> b!630971 m!900373))

(declare-fun m!900375 () Bool)

(assert (=> b!630971 m!900375))

(assert (=> b!630971 m!900317))

(assert (=> b!630971 m!900359))

(declare-fun m!900377 () Bool)

(assert (=> b!630971 m!900377))

(assert (=> b!630971 m!899999))

(declare-fun m!900379 () Bool)

(assert (=> b!630971 m!900379))

(assert (=> b!630971 m!900343))

(assert (=> b!630971 m!900345))

(declare-fun m!900381 () Bool)

(assert (=> b!630971 m!900381))

(declare-fun m!900383 () Bool)

(assert (=> b!630971 m!900383))

(assert (=> b!630971 m!899999))

(declare-fun m!900385 () Bool)

(assert (=> b!630971 m!900385))

(assert (=> b!630971 m!899999))

(assert (=> b!630971 m!900373))

(declare-fun m!900387 () Bool)

(assert (=> b!630971 m!900387))

(assert (=> b!630971 m!900373))

(declare-fun m!900389 () Bool)

(assert (=> b!630971 m!900389))

(assert (=> b!630971 m!900345))

(declare-fun m!900391 () Bool)

(assert (=> b!630961 m!900391))

(assert (=> b!630961 m!900391))

(declare-fun m!900393 () Bool)

(assert (=> b!630961 m!900393))

(assert (=> b!630963 m!899999))

(assert (=> b!630963 m!900335))

(assert (=> b!630963 m!900335))

(declare-fun m!900395 () Bool)

(assert (=> b!630963 m!900395))

(declare-fun m!900397 () Bool)

(assert (=> d!220804 m!900397))

(assert (=> d!220804 m!899999))

(assert (=> d!220804 m!900385))

(assert (=> b!630965 m!899999))

(assert (=> b!630965 m!900335))

(assert (=> b!630965 m!900335))

(declare-fun m!900399 () Bool)

(assert (=> b!630965 m!900399))

(declare-fun m!900401 () Bool)

(assert (=> b!630972 m!900401))

(assert (=> b!630972 m!900401))

(declare-fun m!900403 () Bool)

(assert (=> b!630972 m!900403))

(declare-fun m!900405 () Bool)

(assert (=> b!630972 m!900405))

(declare-fun m!900407 () Bool)

(assert (=> b!630969 m!900407))

(assert (=> b!630969 m!900407))

(declare-fun m!900409 () Bool)

(assert (=> b!630969 m!900409))

(declare-fun m!900411 () Bool)

(assert (=> b!630970 m!900411))

(assert (=> b!630970 m!900411))

(declare-fun m!900413 () Bool)

(assert (=> b!630970 m!900413))

(declare-fun m!900415 () Bool)

(assert (=> b!630970 m!900415))

(assert (=> b!630748 d!220804))

(declare-fun d!220810 () Bool)

(assert (=> d!220810 (= (isEmpty!4618 lt!268187) (is-Nil!6565 lt!268187))))

(assert (=> b!630747 d!220810))

(declare-fun d!220812 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!136) Rule!2480)

(declare-fun integerLiteralRule!0 (JsonLexer!136) Rule!2480)

(declare-fun floatLiteralRule!0 (JsonLexer!136) Rule!2480)

(declare-fun trueRule!0 (JsonLexer!136) Rule!2480)

(declare-fun falseRule!0 (JsonLexer!136) Rule!2480)

(declare-fun nullRule!0 (JsonLexer!136) Rule!2480)

(declare-fun jsonstringRule!0 (JsonLexer!136) Rule!2480)

(declare-fun lBraceRule!0 (JsonLexer!136) Rule!2480)

(declare-fun rBraceRule!0 (JsonLexer!136) Rule!2480)

(declare-fun lBracketRule!0 (JsonLexer!136) Rule!2480)

(declare-fun rBracketRule!0 (JsonLexer!136) Rule!2480)

(declare-fun colonRule!0 (JsonLexer!136) Rule!2480)

(declare-fun commaRule!0 (JsonLexer!136) Rule!2480)

(declare-fun eofRule!0 (JsonLexer!136) Rule!2480)

(assert (=> d!220812 (= (rules!109 JsonLexer!137) (Cons!6565 (whitespaceRule!0 JsonLexer!137) (Cons!6565 (integerLiteralRule!0 JsonLexer!137) (Cons!6565 (floatLiteralRule!0 JsonLexer!137) (Cons!6565 (trueRule!0 JsonLexer!137) (Cons!6565 (falseRule!0 JsonLexer!137) (Cons!6565 (nullRule!0 JsonLexer!137) (Cons!6565 (jsonstringRule!0 JsonLexer!137) (Cons!6565 (lBraceRule!0 JsonLexer!137) (Cons!6565 (rBraceRule!0 JsonLexer!137) (Cons!6565 (lBracketRule!0 JsonLexer!137) (Cons!6565 (rBracketRule!0 JsonLexer!137) (Cons!6565 (colonRule!0 JsonLexer!137) (Cons!6565 (commaRule!0 JsonLexer!137) (Cons!6565 (eofRule!0 JsonLexer!137) Nil!6565)))))))))))))))))

(declare-fun bs!73086 () Bool)

(assert (= bs!73086 d!220812))

(declare-fun m!900425 () Bool)

(assert (=> bs!73086 m!900425))

(declare-fun m!900427 () Bool)

(assert (=> bs!73086 m!900427))

(declare-fun m!900429 () Bool)

(assert (=> bs!73086 m!900429))

(declare-fun m!900431 () Bool)

(assert (=> bs!73086 m!900431))

(declare-fun m!900433 () Bool)

(assert (=> bs!73086 m!900433))

(declare-fun m!900435 () Bool)

(assert (=> bs!73086 m!900435))

(declare-fun m!900437 () Bool)

(assert (=> bs!73086 m!900437))

(declare-fun m!900439 () Bool)

(assert (=> bs!73086 m!900439))

(declare-fun m!900441 () Bool)

(assert (=> bs!73086 m!900441))

(declare-fun m!900443 () Bool)

(assert (=> bs!73086 m!900443))

(declare-fun m!900445 () Bool)

(assert (=> bs!73086 m!900445))

(declare-fun m!900447 () Bool)

(assert (=> bs!73086 m!900447))

(declare-fun m!900449 () Bool)

(assert (=> bs!73086 m!900449))

(declare-fun m!900451 () Bool)

(assert (=> bs!73086 m!900451))

(assert (=> b!630747 d!220812))

(declare-fun d!220816 () Bool)

(declare-fun isBalanced!577 (Conc!2162) Bool)

(assert (=> d!220816 (= (inv!8463 (tokens!1161 printableTokens!2)) (isBalanced!577 (c!115836 (tokens!1161 printableTokens!2))))))

(declare-fun bs!73087 () Bool)

(assert (= bs!73087 d!220816))

(declare-fun m!900453 () Bool)

(assert (=> bs!73087 m!900453))

(assert (=> b!630744 d!220816))

(declare-fun d!220818 () Bool)

(declare-fun res!273682 () Bool)

(declare-fun e!382984 () Bool)

(assert (=> d!220818 (=> (not res!273682) (not e!382984))))

(declare-fun rulesValid!497 (LexerInterface!1226 List!6579) Bool)

(assert (=> d!220818 (= res!273682 (rulesValid!497 Lexer!1224 lt!268187))))

(assert (=> d!220818 (= (rulesInvariant!1161 Lexer!1224 lt!268187) e!382984)))

(declare-fun b!630997 () Bool)

(declare-datatypes ((List!6590 0))(
  ( (Nil!6576) (Cons!6576 (h!11977 String!8608) (t!83173 List!6590)) )
))
(declare-fun noDuplicateTag!497 (LexerInterface!1226 List!6579 List!6590) Bool)

(assert (=> b!630997 (= e!382984 (noDuplicateTag!497 Lexer!1224 lt!268187 Nil!6576))))

(assert (= (and d!220818 res!273682) b!630997))

(declare-fun m!900455 () Bool)

(assert (=> d!220818 m!900455))

(declare-fun m!900457 () Bool)

(assert (=> b!630997 m!900457))

(assert (=> b!630743 d!220818))

(declare-fun d!220820 () Bool)

(declare-fun c!115913 () Bool)

(assert (=> d!220820 (= c!115913 (is-Node!2162 (c!115836 (tokens!1161 printableTokens!2))))))

(declare-fun e!382989 () Bool)

(assert (=> d!220820 (= (inv!8464 (c!115836 (tokens!1161 printableTokens!2))) e!382989)))

(declare-fun b!631004 () Bool)

(declare-fun inv!8469 (Conc!2162) Bool)

(assert (=> b!631004 (= e!382989 (inv!8469 (c!115836 (tokens!1161 printableTokens!2))))))

(declare-fun b!631005 () Bool)

(declare-fun e!382990 () Bool)

(assert (=> b!631005 (= e!382989 e!382990)))

(declare-fun res!273685 () Bool)

(assert (=> b!631005 (= res!273685 (not (is-Leaf!3348 (c!115836 (tokens!1161 printableTokens!2)))))))

(assert (=> b!631005 (=> res!273685 e!382990)))

(declare-fun b!631006 () Bool)

(declare-fun inv!8470 (Conc!2162) Bool)

(assert (=> b!631006 (= e!382990 (inv!8470 (c!115836 (tokens!1161 printableTokens!2))))))

(assert (= (and d!220820 c!115913) b!631004))

(assert (= (and d!220820 (not c!115913)) b!631005))

(assert (= (and b!631005 (not res!273685)) b!631006))

(declare-fun m!900459 () Bool)

(assert (=> b!631004 m!900459))

(declare-fun m!900461 () Bool)

(assert (=> b!631006 m!900461))

(assert (=> b!630745 d!220820))

(declare-fun b!631017 () Bool)

(declare-fun b_free!18453 () Bool)

(declare-fun b_next!18469 () Bool)

(assert (=> b!631017 (= b_free!18453 (not b_next!18469))))

(declare-fun tp!196676 () Bool)

(declare-fun b_and!62247 () Bool)

(assert (=> b!631017 (= tp!196676 b_and!62247)))

(declare-fun b_free!18455 () Bool)

(declare-fun b_next!18471 () Bool)

(assert (=> b!631017 (= b_free!18455 (not b_next!18471))))

(declare-fun tp!196678 () Bool)

(declare-fun b_and!62249 () Bool)

(assert (=> b!631017 (= tp!196678 b_and!62249)))

(declare-fun e!383001 () Bool)

(assert (=> b!631017 (= e!383001 (and tp!196676 tp!196678))))

(declare-fun b!631016 () Bool)

(declare-fun e!383000 () Bool)

(declare-fun inv!8460 (String!8608) Bool)

(declare-fun inv!8471 (TokenValueInjection!2500) Bool)

(assert (=> b!631016 (= e!383000 (and (inv!8460 (tag!1602 (h!11966 (rules!8142 printableTokens!2)))) (inv!8471 (transformation!1340 (h!11966 (rules!8142 printableTokens!2)))) e!383001))))

(declare-fun b!631015 () Bool)

(declare-fun e!383002 () Bool)

(declare-fun tp!196677 () Bool)

(assert (=> b!631015 (= e!383002 (and e!383000 tp!196677))))

(assert (=> b!630744 (= tp!196662 e!383002)))

(assert (= b!631016 b!631017))

(assert (= b!631015 b!631016))

(assert (= (and b!630744 (is-Cons!6565 (rules!8142 printableTokens!2))) b!631015))

(declare-fun m!900463 () Bool)

(assert (=> b!631016 m!900463))

(declare-fun m!900465 () Bool)

(assert (=> b!631016 m!900465))

(declare-fun b!631026 () Bool)

(declare-fun e!383007 () Bool)

(declare-fun tp!196687 () Bool)

(declare-fun tp!196685 () Bool)

(assert (=> b!631026 (= e!383007 (and (inv!8464 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) tp!196687 (inv!8464 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))) tp!196685))))

(declare-fun b!631028 () Bool)

(declare-fun e!383008 () Bool)

(declare-fun tp!196686 () Bool)

(assert (=> b!631028 (= e!383008 tp!196686)))

(declare-fun b!631027 () Bool)

(declare-fun inv!8472 (IArray!4325) Bool)

(assert (=> b!631027 (= e!383007 (and (inv!8472 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))) e!383008))))

(assert (=> b!630745 (= tp!196663 (and (inv!8464 (c!115836 (tokens!1161 printableTokens!2))) e!383007))))

(assert (= (and b!630745 (is-Node!2162 (c!115836 (tokens!1161 printableTokens!2)))) b!631026))

(assert (= b!631027 b!631028))

(assert (= (and b!630745 (is-Leaf!3348 (c!115836 (tokens!1161 printableTokens!2)))) b!631027))

(declare-fun m!900467 () Bool)

(assert (=> b!631026 m!900467))

(declare-fun m!900469 () Bool)

(assert (=> b!631026 m!900469))

(declare-fun m!900471 () Bool)

(assert (=> b!631027 m!900471))

(assert (=> b!630745 m!900021))

(declare-fun b_lambda!24777 () Bool)

(assert (= b_lambda!24773 (or b!630748 b_lambda!24777)))

(declare-fun bs!73088 () Bool)

(declare-fun d!220822 () Bool)

(assert (= bs!73088 (and d!220822 b!630748)))

(assert (=> bs!73088 (= (dynLambda!3677 lambda!16888 (h!11969 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))) (usesJsonRules!0 (_2!3853 (h!11969 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))))

(declare-fun m!900473 () Bool)

(assert (=> bs!73088 m!900473))

(assert (=> b!630828 d!220822))

(push 1)

(assert (not bm!41381))

(assert (not b!630970))

(assert (not b!630972))

(assert (not b!630971))

(assert (not b!630980))

(assert (not b!630821))

(assert (not b!630963))

(assert (not d!220760))

(assert (not b!630983))

(assert (not d!220756))

(assert (not b!631004))

(assert (not b!631027))

(assert (not d!220762))

(assert (not b!630786))

(assert (not b!630832))

(assert (not b!630814))

(assert (not d!220778))

(assert (not b!630820))

(assert (not d!220776))

(assert (not b!630997))

(assert (not b!630969))

(assert (not b!630982))

(assert b_and!62249)

(assert (not b!630888))

(assert (not b!630984))

(assert (not b!630829))

(assert (not b!630787))

(assert (not b!631015))

(assert (not b!630793))

(assert (not d!220804))

(assert (not b!630817))

(assert (not b!631006))

(assert (not b!630785))

(assert b_and!62247)

(assert (not b_next!18471))

(assert (not b!631016))

(assert (not d!220812))

(assert (not d!220780))

(assert (not d!220786))

(assert (not b!630965))

(assert (not d!220788))

(assert (not b!631026))

(assert (not bs!73088))

(assert (not b!630961))

(assert (not d!220782))

(assert (not b!630818))

(assert (not d!220816))

(assert (not b_next!18469))

(assert (not b!630745))

(assert (not b_lambda!24777))

(assert (not d!220818))

(assert (not bm!41375))

(assert (not d!220774))

(assert (not b!630979))

(assert (not b!631028))

(assert (not b!630981))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62249)

(assert b_and!62247)

(assert (not b_next!18471))

(assert (not b_next!18469))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220828 () Bool)

(declare-fun lt!268497 () Int)

(declare-fun apply!1571 (List!6583 Int) Int)

(assert (=> d!220828 (= lt!268497 (apply!1571 (list!2796 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) 0))))

(declare-fun apply!1572 (Conc!2165 Int) Int)

(assert (=> d!220828 (= lt!268497 (apply!1572 (c!115839 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) 0))))

(declare-fun e!383035 () Bool)

(assert (=> d!220828 e!383035))

(declare-fun res!273694 () Bool)

(assert (=> d!220828 (=> (not res!273694) (not e!383035))))

(assert (=> d!220828 (= res!273694 (<= 0 0))))

(assert (=> d!220828 (= (apply!1566 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) 0) lt!268497)))

(declare-fun b!631065 () Bool)

(assert (=> b!631065 (= e!383035 (< 0 (size!5158 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))

(assert (= (and d!220828 res!273694) b!631065))

(assert (=> d!220828 m!900007))

(declare-fun m!900511 () Bool)

(assert (=> d!220828 m!900511))

(assert (=> d!220828 m!900511))

(declare-fun m!900513 () Bool)

(assert (=> d!220828 m!900513))

(declare-fun m!900515 () Bool)

(assert (=> d!220828 m!900515))

(assert (=> b!631065 m!900007))

(assert (=> b!631065 m!900213))

(assert (=> b!630888 d!220828))

(declare-fun d!220830 () Bool)

(declare-fun lt!268498 () Int)

(assert (=> d!220830 (= lt!268498 (apply!1571 (list!2796 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) 1))))

(assert (=> d!220830 (= lt!268498 (apply!1572 (c!115839 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) 1))))

(declare-fun e!383036 () Bool)

(assert (=> d!220830 e!383036))

(declare-fun res!273695 () Bool)

(assert (=> d!220830 (=> (not res!273695) (not e!383036))))

(assert (=> d!220830 (= res!273695 (<= 0 1))))

(assert (=> d!220830 (= (apply!1566 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)) 1) lt!268498)))

(declare-fun b!631066 () Bool)

(assert (=> b!631066 (= e!383036 (< 1 (size!5158 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))

(assert (= (and d!220830 res!273695) b!631066))

(assert (=> d!220830 m!900007))

(assert (=> d!220830 m!900511))

(assert (=> d!220830 m!900511))

(declare-fun m!900517 () Bool)

(assert (=> d!220830 m!900517))

(declare-fun m!900519 () Bool)

(assert (=> d!220830 m!900519))

(assert (=> b!631066 m!900007))

(assert (=> b!631066 m!900213))

(assert (=> b!630888 d!220830))

(declare-fun d!220832 () Bool)

(declare-fun ++!1795 (List!6581 List!6581) List!6581)

(assert (=> d!220832 (forall!1642 (++!1795 (list!2791 (BalanceConc!4339 Empty!2163)) (Cons!6567 lt!268254 Nil!6567)) lambda!16924)))

(declare-fun lt!268501 () Unit!11605)

(declare-fun choose!4583 (List!6581 List!6581 Int) Unit!11605)

(assert (=> d!220832 (= lt!268501 (choose!4583 (list!2791 (BalanceConc!4339 Empty!2163)) (Cons!6567 lt!268254 Nil!6567) lambda!16924))))

(assert (=> d!220832 (forall!1642 (list!2791 (BalanceConc!4339 Empty!2163)) lambda!16924)))

(assert (=> d!220832 (= (lemmaConcatPreservesForall!16 (list!2791 (BalanceConc!4339 Empty!2163)) (Cons!6567 lt!268254 Nil!6567) lambda!16924) lt!268501)))

(declare-fun bs!73096 () Bool)

(assert (= bs!73096 d!220832))

(assert (=> bs!73096 m!900193))

(declare-fun m!900521 () Bool)

(assert (=> bs!73096 m!900521))

(assert (=> bs!73096 m!900521))

(declare-fun m!900523 () Bool)

(assert (=> bs!73096 m!900523))

(assert (=> bs!73096 m!900193))

(declare-fun m!900525 () Bool)

(assert (=> bs!73096 m!900525))

(assert (=> bs!73096 m!900193))

(declare-fun m!900527 () Bool)

(assert (=> bs!73096 m!900527))

(assert (=> b!630888 d!220832))

(declare-fun d!220834 () Bool)

(declare-fun e!383039 () Bool)

(assert (=> d!220834 e!383039))

(declare-fun res!273698 () Bool)

(assert (=> d!220834 (=> (not res!273698) (not e!383039))))

(declare-fun isBalanced!580 (Conc!2165) Bool)

(declare-fun tail!873 (Conc!2165) Conc!2165)

(assert (=> d!220834 (= res!273698 (isBalanced!580 (tail!873 (c!115839 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))))

(declare-fun lt!268504 () BalanceConc!4342)

(assert (=> d!220834 (= lt!268504 (BalanceConc!4343 (tail!873 (c!115839 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))))

(declare-fun isEmpty!4622 (BalanceConc!4342) Bool)

(assert (=> d!220834 (not (isEmpty!4622 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))

(assert (=> d!220834 (= (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))) lt!268504)))

(declare-fun b!631069 () Bool)

(declare-fun tail!874 (List!6583) List!6583)

(assert (=> b!631069 (= e!383039 (= (list!2796 lt!268504) (tail!874 (list!2796 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))))

(assert (= (and d!220834 res!273698) b!631069))

(declare-fun m!900529 () Bool)

(assert (=> d!220834 m!900529))

(assert (=> d!220834 m!900529))

(declare-fun m!900531 () Bool)

(assert (=> d!220834 m!900531))

(assert (=> d!220834 m!900205))

(declare-fun m!900533 () Bool)

(assert (=> d!220834 m!900533))

(declare-fun m!900535 () Bool)

(assert (=> b!631069 m!900535))

(assert (=> b!631069 m!900205))

(declare-fun m!900537 () Bool)

(assert (=> b!631069 m!900537))

(assert (=> b!631069 m!900537))

(declare-fun m!900539 () Bool)

(assert (=> b!631069 m!900539))

(assert (=> b!630888 d!220834))

(declare-fun d!220836 () Bool)

(assert (=> d!220836 (= (list!2791 (BalanceConc!4339 Empty!2163)) (list!2794 (c!115837 (BalanceConc!4339 Empty!2163))))))

(declare-fun bs!73097 () Bool)

(assert (= bs!73097 d!220836))

(declare-fun m!900541 () Bool)

(assert (=> bs!73097 m!900541))

(assert (=> b!630888 d!220836))

(declare-fun bs!73098 () Bool)

(declare-fun b!631073 () Bool)

(assert (= bs!73098 (and b!631073 d!220776)))

(declare-fun lambda!17043 () Int)

(assert (=> bs!73098 (not (= lambda!17043 lambda!16907))))

(declare-fun bs!73099 () Bool)

(assert (= bs!73099 (and b!631073 d!220788)))

(assert (=> bs!73099 (= lambda!17043 lambda!16925)))

(declare-fun bs!73100 () Bool)

(assert (= bs!73100 (and b!631073 d!220774)))

(assert (=> bs!73100 (= lambda!17043 lambda!16903)))

(assert (=> bs!73100 (not (= lambda!17043 lambda!16904))))

(declare-fun bs!73101 () Bool)

(assert (= bs!73101 (and b!631073 b!630888)))

(assert (=> bs!73101 (= lambda!17043 lambda!16924)))

(declare-fun bs!73102 () Bool)

(declare-fun d!220838 () Bool)

(assert (= bs!73102 (and d!220838 d!220776)))

(declare-fun lambda!17044 () Int)

(assert (=> bs!73102 (not (= lambda!17044 lambda!16907))))

(declare-fun bs!73103 () Bool)

(assert (= bs!73103 (and d!220838 d!220788)))

(assert (=> bs!73103 (= lambda!17044 lambda!16925)))

(declare-fun bs!73104 () Bool)

(assert (= bs!73104 (and d!220838 b!631073)))

(assert (=> bs!73104 (= lambda!17044 lambda!17043)))

(declare-fun bs!73105 () Bool)

(assert (= bs!73105 (and d!220838 d!220774)))

(assert (=> bs!73105 (= lambda!17044 lambda!16903)))

(assert (=> bs!73105 (not (= lambda!17044 lambda!16904))))

(declare-fun bs!73106 () Bool)

(assert (= bs!73106 (and d!220838 b!630888)))

(assert (=> bs!73106 (= lambda!17044 lambda!16924)))

(declare-fun b!631070 () Bool)

(declare-fun e!383040 () BalanceConc!4338)

(assert (=> b!631070 (= e!383040 (append!184 (BalanceConc!4339 Empty!2163) lt!268254))))

(declare-fun b!631071 () Bool)

(declare-fun e!383041 () PrintableTokens!62)

(declare-fun call!41390 () PrintableTokens!62)

(assert (=> b!631071 (= e!383041 call!41390)))

(declare-fun b!631072 () Bool)

(assert (=> b!631072 (= e!383041 call!41390)))

(declare-fun lt!268509 () PrintableTokens!62)

(assert (=> b!631073 (= e!383040 (slicesMulti!0 printableTokens!2 lt!268185 (tail!871 (tail!871 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))) (append!184 (append!184 (BalanceConc!4339 Empty!2163) lt!268254) lt!268509)))))

(declare-fun lt!268505 () Int)

(assert (=> b!631073 (= lt!268505 (apply!1566 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))) 0))))

(declare-fun lt!268508 () Int)

(assert (=> b!631073 (= lt!268508 (apply!1566 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))) 1))))

(declare-fun c!115921 () Bool)

(assert (=> b!631073 (= c!115921 (<= lt!268505 lt!268508))))

(assert (=> b!631073 (= lt!268509 e!383041)))

(declare-fun lt!268507 () Unit!11605)

(assert (=> b!631073 (= lt!268507 (lemmaConcatPreservesForall!16 (list!2791 (append!184 (BalanceConc!4339 Empty!2163) lt!268254)) (Cons!6567 lt!268509 Nil!6567) lambda!17043))))

(declare-fun bm!41385 () Bool)

(assert (=> bm!41385 (= call!41390 (slice!20 printableTokens!2 (ite c!115921 lt!268505 lt!268508) (ite c!115921 (+ lt!268508 1) (+ lt!268505 1))))))

(declare-fun lt!268506 () BalanceConc!4338)

(assert (=> d!220838 (forall!1644 lt!268506 lambda!17044)))

(assert (=> d!220838 (= lt!268506 e!383040)))

(declare-fun c!115922 () Bool)

(assert (=> d!220838 (= c!115922 (>= (size!5158 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))))) 2))))

(assert (=> d!220838 (= (size!5151 printableTokens!2) lt!268185)))

(assert (=> d!220838 (= (slicesMulti!0 printableTokens!2 lt!268185 (tail!871 (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))) (append!184 (BalanceConc!4339 Empty!2163) lt!268254)) lt!268506)))

(assert (= (and d!220838 c!115922) b!631073))

(assert (= (and d!220838 (not c!115922)) b!631070))

(assert (= (and b!631073 c!115921) b!631071))

(assert (= (and b!631073 (not c!115921)) b!631072))

(assert (= (or b!631071 b!631072) bm!41385))

(declare-fun m!900543 () Bool)

(assert (=> b!631073 m!900543))

(declare-fun m!900545 () Bool)

(assert (=> b!631073 m!900545))

(assert (=> b!631073 m!900201))

(assert (=> b!631073 m!900543))

(assert (=> b!631073 m!900199))

(declare-fun m!900547 () Bool)

(assert (=> b!631073 m!900547))

(declare-fun m!900549 () Bool)

(assert (=> b!631073 m!900549))

(declare-fun m!900551 () Bool)

(assert (=> b!631073 m!900551))

(declare-fun m!900553 () Bool)

(assert (=> b!631073 m!900553))

(declare-fun m!900555 () Bool)

(assert (=> b!631073 m!900555))

(assert (=> b!631073 m!900549))

(assert (=> b!631073 m!900201))

(assert (=> b!631073 m!900551))

(assert (=> b!631073 m!900199))

(declare-fun m!900557 () Bool)

(assert (=> b!631073 m!900557))

(assert (=> b!631073 m!900199))

(assert (=> b!631073 m!900555))

(declare-fun m!900559 () Bool)

(assert (=> bm!41385 m!900559))

(declare-fun m!900561 () Bool)

(assert (=> d!220838 m!900561))

(assert (=> d!220838 m!900199))

(declare-fun m!900563 () Bool)

(assert (=> d!220838 m!900563))

(assert (=> d!220838 m!899991))

(assert (=> b!630888 d!220838))

(declare-fun d!220840 () Bool)

(declare-fun e!383044 () Bool)

(assert (=> d!220840 e!383044))

(declare-fun res!273701 () Bool)

(assert (=> d!220840 (=> (not res!273701) (not e!383044))))

(declare-fun isBalanced!581 (Conc!2163) Bool)

(declare-fun append!187 (Conc!2163 PrintableTokens!62) Conc!2163)

(assert (=> d!220840 (= res!273701 (isBalanced!581 (append!187 (c!115837 (BalanceConc!4339 Empty!2163)) lt!268254)))))

(declare-fun lt!268512 () BalanceConc!4338)

(assert (=> d!220840 (= lt!268512 (BalanceConc!4339 (append!187 (c!115837 (BalanceConc!4339 Empty!2163)) lt!268254)))))

(assert (=> d!220840 (= (append!184 (BalanceConc!4339 Empty!2163) lt!268254) lt!268512)))

(declare-fun b!631076 () Bool)

(declare-fun $colon+!35 (List!6581 PrintableTokens!62) List!6581)

(assert (=> b!631076 (= e!383044 (= (list!2791 lt!268512) ($colon+!35 (list!2791 (BalanceConc!4339 Empty!2163)) lt!268254)))))

(assert (= (and d!220840 res!273701) b!631076))

(declare-fun m!900565 () Bool)

(assert (=> d!220840 m!900565))

(assert (=> d!220840 m!900565))

(declare-fun m!900567 () Bool)

(assert (=> d!220840 m!900567))

(declare-fun m!900569 () Bool)

(assert (=> b!631076 m!900569))

(assert (=> b!631076 m!900193))

(assert (=> b!631076 m!900193))

(declare-fun m!900571 () Bool)

(assert (=> b!631076 m!900571))

(assert (=> b!630888 d!220840))

(declare-fun d!220842 () Bool)

(declare-fun e!383045 () Bool)

(assert (=> d!220842 e!383045))

(declare-fun res!273702 () Bool)

(assert (=> d!220842 (=> (not res!273702) (not e!383045))))

(assert (=> d!220842 (= res!273702 (isBalanced!580 (tail!873 (c!115839 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))))))))

(declare-fun lt!268513 () BalanceConc!4342)

(assert (=> d!220842 (= lt!268513 (BalanceConc!4343 (tail!873 (c!115839 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))))))))

(assert (=> d!220842 (not (isEmpty!4622 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))))))

(assert (=> d!220842 (= (tail!871 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) lt!268513)))

(declare-fun b!631077 () Bool)

(assert (=> b!631077 (= e!383045 (= (list!2796 lt!268513) (tail!874 (list!2796 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))))))))

(assert (= (and d!220842 res!273702) b!631077))

(declare-fun m!900573 () Bool)

(assert (=> d!220842 m!900573))

(assert (=> d!220842 m!900573))

(declare-fun m!900575 () Bool)

(assert (=> d!220842 m!900575))

(assert (=> d!220842 m!900007))

(declare-fun m!900577 () Bool)

(assert (=> d!220842 m!900577))

(declare-fun m!900579 () Bool)

(assert (=> b!631077 m!900579))

(assert (=> b!631077 m!900007))

(assert (=> b!631077 m!900511))

(assert (=> b!631077 m!900511))

(declare-fun m!900581 () Bool)

(assert (=> b!631077 m!900581))

(assert (=> b!630888 d!220842))

(declare-fun d!220844 () Bool)

(declare-fun e!383048 () Bool)

(assert (=> d!220844 e!383048))

(declare-fun res!273705 () Bool)

(assert (=> d!220844 (=> (not res!273705) (not e!383048))))

(declare-fun append!188 (Conc!2165 Int) Conc!2165)

(assert (=> d!220844 (= res!273705 (isBalanced!580 (append!188 (c!115839 (BalanceConc!4343 Empty!2165)) 0)))))

(declare-fun lt!268516 () BalanceConc!4342)

(assert (=> d!220844 (= lt!268516 (BalanceConc!4343 (append!188 (c!115839 (BalanceConc!4343 Empty!2165)) 0)))))

(assert (=> d!220844 (= (append!183 (BalanceConc!4343 Empty!2165) 0) lt!268516)))

(declare-fun b!631080 () Bool)

(declare-fun $colon+!36 (List!6583 Int) List!6583)

(assert (=> b!631080 (= e!383048 (= (list!2796 lt!268516) ($colon+!36 (list!2796 (BalanceConc!4343 Empty!2165)) 0)))))

(assert (= (and d!220844 res!273705) b!631080))

(declare-fun m!900583 () Bool)

(assert (=> d!220844 m!900583))

(assert (=> d!220844 m!900583))

(declare-fun m!900585 () Bool)

(assert (=> d!220844 m!900585))

(declare-fun m!900587 () Bool)

(assert (=> b!631080 m!900587))

(assert (=> b!631080 m!900131))

(assert (=> b!631080 m!900131))

(declare-fun m!900589 () Bool)

(assert (=> b!631080 m!900589))

(assert (=> b!630821 d!220844))

(declare-fun b!631133 () Bool)

(declare-fun e!383099 () Bool)

(assert (=> b!631133 (= e!383099 true)))

(declare-fun b!631132 () Bool)

(declare-fun e!383098 () Bool)

(assert (=> b!631132 (= e!383098 e!383099)))

(declare-fun d!220846 () Bool)

(assert (=> d!220846 e!383098))

(assert (= b!631132 b!631133))

(assert (= d!220846 b!631132))

(declare-fun lt!268710 () List!6580)

(declare-fun lt!268689 () LexerInterface!1226)

(declare-fun e!383087 () Bool)

(declare-fun b!631112 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!334 (LexerInterface!1226 List!6579 List!6580) Bool)

(assert (=> b!631112 (= e!383087 (rulesProduceEachTokenIndividuallyList!334 lt!268689 (rules!8142 printableTokens!2) (t!83054 lt!268710)))))

(declare-fun b!631113 () Bool)

(declare-fun e!383088 () Bool)

(declare-fun e!383081 () Bool)

(assert (=> b!631113 (= e!383088 e!383081)))

(declare-fun res!273767 () Bool)

(assert (=> b!631113 (=> (not res!273767) (not e!383081))))

(declare-fun lt!268734 () List!6580)

(declare-fun lt!268690 () LexerInterface!1226)

(declare-fun rulesProduceIndividualToken!515 (LexerInterface!1226 List!6579 Token!2404) Bool)

(assert (=> b!631113 (= res!273767 (rulesProduceIndividualToken!515 lt!268690 (rules!8142 printableTokens!2) (h!11967 lt!268734)))))

(declare-fun lt!268683 () LexerInterface!1226)

(declare-fun e!383085 () Bool)

(declare-fun lt!268680 () List!6580)

(declare-fun b!631114 () Bool)

(assert (=> b!631114 (= e!383085 (rulesProduceEachTokenIndividuallyList!334 lt!268683 (rules!8142 printableTokens!2) (t!83054 lt!268680)))))

(declare-fun lt!268712 () List!6580)

(declare-fun b!631115 () Bool)

(declare-fun e!383084 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!3 (LexerInterface!1226 List!6580 List!6579) Bool)

(declare-fun drop!347 (List!6580 Int) List!6580)

(assert (=> b!631115 (= e!383084 (tokensListTwoByTwoPredicateSeparableList!3 lt!268690 (drop!347 lt!268712 (ite c!115876 lt!268250 lt!268253)) (rules!8142 printableTokens!2)))))

(declare-fun lt!268673 () Unit!11605)

(declare-fun lt!268681 () Unit!11605)

(assert (=> b!631115 (= lt!268673 lt!268681)))

(declare-fun lt!268716 () List!6580)

(declare-fun lambda!17057 () Int)

(declare-fun forall!1650 (List!6580 Int) Bool)

(assert (=> b!631115 (forall!1650 lt!268716 lambda!17057)))

(declare-fun lemmaForallSubseq!5 (List!6580 List!6580 Int) Unit!11605)

(assert (=> b!631115 (= lt!268681 (lemmaForallSubseq!5 lt!268716 lt!268712 lambda!17057))))

(assert (=> b!631115 (= lt!268716 (drop!347 lt!268712 (ite c!115876 lt!268250 lt!268253)))))

(declare-fun lt!268668 () Unit!11605)

(declare-fun lt!268697 () Unit!11605)

(assert (=> b!631115 (= lt!268668 lt!268697)))

(declare-fun subseq!121 (List!6580 List!6580) Bool)

(assert (=> b!631115 (subseq!121 (drop!347 lt!268712 (ite c!115876 lt!268250 lt!268253)) lt!268712)))

(declare-fun lemmaDropSubseq!3 (List!6580 Int) Unit!11605)

(assert (=> b!631115 (= lt!268697 (lemmaDropSubseq!3 lt!268712 (ite c!115876 lt!268250 lt!268253)))))

(declare-fun b!631116 () Bool)

(declare-fun e!383092 () Bool)

(assert (=> b!631116 (= e!383092 e!383087)))

(declare-fun res!273769 () Bool)

(assert (=> b!631116 (=> (not res!273769) (not e!383087))))

(assert (=> b!631116 (= res!273769 (rulesProduceIndividualToken!515 lt!268689 (rules!8142 printableTokens!2) (h!11967 lt!268710)))))

(declare-fun b!631117 () Bool)

(declare-fun e!383093 () Bool)

(assert (=> b!631117 (= e!383093 (<= (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)) (size!5157 (tokens!1161 printableTokens!2))))))

(declare-fun e!383086 () Bool)

(assert (=> d!220846 e!383086))

(declare-fun res!273780 () Bool)

(assert (=> d!220846 (=> (not res!273780) (not e!383086))))

(declare-fun lt!268696 () PrintableTokens!62)

(assert (=> d!220846 (= res!273780 (= (rules!8142 lt!268696) (rules!8142 printableTokens!2)))))

(declare-fun slice!22 (BalanceConc!4336 Int Int) BalanceConc!4336)

(assert (=> d!220846 (= lt!268696 (PrintableTokens!63 (rules!8142 printableTokens!2) (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)))))))

(declare-fun lt!268688 () Unit!11605)

(declare-fun lt!268707 () Unit!11605)

(assert (=> d!220846 (= lt!268688 lt!268707)))

(declare-fun e!383080 () Bool)

(assert (=> d!220846 e!383080))

(declare-fun res!273773 () Bool)

(assert (=> d!220846 (=> (not res!273773) (not e!383080))))

(declare-fun lt!268691 () Int)

(declare-fun lt!268735 () LexerInterface!1226)

(declare-fun e!383091 () Bool)

(declare-fun lt!268675 () List!6580)

(declare-fun take!5 (List!6580 Int) List!6580)

(assert (=> d!220846 (= res!273773 (= (rulesProduceEachTokenIndividuallyList!334 lt!268735 (rules!8142 printableTokens!2) (take!5 lt!268675 lt!268691)) e!383091))))

(declare-fun res!273770 () Bool)

(assert (=> d!220846 (=> res!273770 e!383091)))

(declare-fun lt!268666 () List!6580)

(assert (=> d!220846 (= res!273770 (not (is-Cons!6566 lt!268666)))))

(assert (=> d!220846 (= lt!268666 (take!5 lt!268675 lt!268691))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!3 (LexerInterface!1226 List!6580 Int List!6579) Unit!11605)

(assert (=> d!220846 (= lt!268707 (tokensListTwoByTwoPredicateSeparableTokensTakeList!3 lt!268735 lt!268675 lt!268691 (rules!8142 printableTokens!2)))))

(assert (=> d!220846 (= lt!268691 (- (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)) (ite c!115876 lt!268250 lt!268253)))))

(declare-fun list!2800 (BalanceConc!4336) List!6580)

(assert (=> d!220846 (= lt!268675 (drop!347 (list!2800 (tokens!1161 printableTokens!2)) (ite c!115876 lt!268250 lt!268253)))))

(assert (=> d!220846 (= lt!268735 Lexer!1224)))

(declare-fun lt!268685 () Unit!11605)

(declare-fun lt!268670 () Unit!11605)

(assert (=> d!220846 (= lt!268685 lt!268670)))

(declare-fun lt!268719 () List!6580)

(assert (=> d!220846 (forall!1650 lt!268719 lambda!17057)))

(declare-fun lt!268702 () List!6580)

(assert (=> d!220846 (= lt!268670 (lemmaForallSubseq!5 lt!268719 lt!268702 lambda!17057))))

(assert (=> d!220846 (= lt!268702 (list!2800 (tokens!1161 printableTokens!2)))))

(assert (=> d!220846 (= lt!268719 (drop!347 (list!2800 (tokens!1161 printableTokens!2)) (ite c!115876 lt!268250 lt!268253)))))

(declare-fun lt!268721 () Unit!11605)

(declare-fun lt!268694 () Unit!11605)

(assert (=> d!220846 (= lt!268721 lt!268694)))

(declare-fun lt!268701 () List!6580)

(assert (=> d!220846 (subseq!121 (drop!347 lt!268701 (ite c!115876 lt!268250 lt!268253)) lt!268701)))

(assert (=> d!220846 (= lt!268694 (lemmaDropSubseq!3 lt!268701 (ite c!115876 lt!268250 lt!268253)))))

(assert (=> d!220846 (= lt!268701 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268718 () Unit!11605)

(declare-fun lt!268715 () Unit!11605)

(assert (=> d!220846 (= lt!268718 lt!268715)))

(assert (=> d!220846 e!383084))

(declare-fun res!273772 () Bool)

(assert (=> d!220846 (=> (not res!273772) (not e!383084))))

(assert (=> d!220846 (= res!273772 (= (rulesProduceEachTokenIndividuallyList!334 lt!268690 (rules!8142 printableTokens!2) (drop!347 lt!268712 (ite c!115876 lt!268250 lt!268253))) e!383088))))

(declare-fun res!273778 () Bool)

(assert (=> d!220846 (=> res!273778 e!383088)))

(assert (=> d!220846 (= res!273778 (not (is-Cons!6566 lt!268734)))))

(assert (=> d!220846 (= lt!268734 (drop!347 lt!268712 (ite c!115876 lt!268250 lt!268253)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!3 (LexerInterface!1226 List!6580 Int List!6579) Unit!11605)

(assert (=> d!220846 (= lt!268715 (tokensListTwoByTwoPredicateSeparableTokensDropList!3 lt!268690 lt!268712 (ite c!115876 lt!268250 lt!268253) (rules!8142 printableTokens!2)))))

(assert (=> d!220846 (= lt!268712 (list!2800 (tokens!1161 printableTokens!2)))))

(assert (=> d!220846 (= lt!268690 Lexer!1224)))

(declare-fun lt!268725 () Unit!11605)

(declare-fun Unit!11622 () Unit!11605)

(assert (=> d!220846 (= lt!268725 Unit!11622)))

(declare-fun e!383090 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!7 (LexerInterface!1226 BalanceConc!4336 Int List!6579) Bool)

(assert (=> d!220846 (= (tokensListTwoByTwoPredicateSeparable!7 Lexer!1224 (tokens!1161 printableTokens!2) 0 (rules!8142 printableTokens!2)) e!383090)))

(declare-fun res!273779 () Bool)

(assert (=> d!220846 (=> res!273779 e!383090)))

(declare-fun lt!268711 () Int)

(assert (=> d!220846 (= res!273779 (not (< lt!268711 (- (size!5157 (tokens!1161 printableTokens!2)) 1))))))

(assert (=> d!220846 (= lt!268711 0)))

(declare-fun lt!268726 () LexerInterface!1226)

(assert (=> d!220846 (= lt!268726 Lexer!1224)))

(declare-fun lt!268686 () Unit!11605)

(declare-fun Unit!11623 () Unit!11605)

(assert (=> d!220846 (= lt!268686 Unit!11623)))

(assert (=> d!220846 (= (separableTokens!18 Lexer!1224 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))) (rules!8142 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!7 Lexer!1224 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))) 0 (rules!8142 printableTokens!2)))))

(declare-fun lt!268676 () Unit!11605)

(declare-fun Unit!11624 () Unit!11605)

(assert (=> d!220846 (= lt!268676 Unit!11624)))

(assert (=> d!220846 (= (rulesProduceEachTokenIndividuallyList!334 Lexer!1224 (rules!8142 printableTokens!2) (list!2800 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))))) e!383092)))

(declare-fun res!273768 () Bool)

(assert (=> d!220846 (=> res!273768 e!383092)))

(assert (=> d!220846 (= res!273768 (not (is-Cons!6566 lt!268710)))))

(assert (=> d!220846 (= lt!268710 (list!2800 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)))))))

(assert (=> d!220846 (= lt!268689 Lexer!1224)))

(declare-fun lt!268723 () Unit!11605)

(declare-fun Unit!11625 () Unit!11605)

(assert (=> d!220846 (= lt!268723 Unit!11625)))

(declare-fun forall!1651 (BalanceConc!4336 Int) Bool)

(assert (=> d!220846 (= (rulesProduceEachTokenIndividually!568 Lexer!1224 (rules!8142 printableTokens!2) (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)))) (forall!1651 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))) lambda!17057))))

(declare-fun lt!268728 () Unit!11605)

(declare-fun lt!268731 () Unit!11605)

(assert (=> d!220846 (= lt!268728 lt!268731)))

(declare-fun lt!268699 () List!6580)

(assert (=> d!220846 (forall!1650 lt!268699 lambda!17057)))

(declare-fun lt!268682 () List!6580)

(assert (=> d!220846 (= lt!268731 (lemmaForallSubseq!5 lt!268699 lt!268682 lambda!17057))))

(assert (=> d!220846 (= lt!268682 (list!2800 (tokens!1161 printableTokens!2)))))

(assert (=> d!220846 (= lt!268699 (list!2800 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)))))))

(declare-fun lt!268704 () Unit!11605)

(declare-fun lt!268687 () Unit!11605)

(assert (=> d!220846 (= lt!268704 lt!268687)))

(declare-fun lt!268714 () List!6580)

(declare-fun slice!23 (List!6580 Int Int) List!6580)

(assert (=> d!220846 (subseq!121 (slice!23 lt!268714 (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))) lt!268714)))

(declare-fun lemmaSliceSubseq!3 (List!6580 Int Int) Unit!11605)

(assert (=> d!220846 (= lt!268687 (lemmaSliceSubseq!3 lt!268714 (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))))))

(assert (=> d!220846 (= lt!268714 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268667 () Unit!11605)

(declare-fun Unit!11626 () Unit!11605)

(assert (=> d!220846 (= lt!268667 Unit!11626)))

(declare-fun e!383089 () Bool)

(assert (=> d!220846 (= (rulesProduceEachTokenIndividuallyList!334 Lexer!1224 (rules!8142 printableTokens!2) (list!2800 (tokens!1161 printableTokens!2))) e!383089)))

(declare-fun res!273775 () Bool)

(assert (=> d!220846 (=> res!273775 e!383089)))

(assert (=> d!220846 (= res!273775 (not (is-Cons!6566 lt!268680)))))

(assert (=> d!220846 (= lt!268680 (list!2800 (tokens!1161 printableTokens!2)))))

(assert (=> d!220846 (= lt!268683 Lexer!1224)))

(declare-fun lt!268727 () Unit!11605)

(declare-fun Unit!11627 () Unit!11605)

(assert (=> d!220846 (= lt!268727 Unit!11627)))

(assert (=> d!220846 (= (rulesProduceEachTokenIndividually!568 Lexer!1224 (rules!8142 printableTokens!2) (tokens!1161 printableTokens!2)) (forall!1651 (tokens!1161 printableTokens!2) lambda!17057))))

(declare-fun lt!268693 () Unit!11605)

(declare-fun lemmaInvariant!71 (PrintableTokens!62) Unit!11605)

(assert (=> d!220846 (= lt!268693 (lemmaInvariant!71 printableTokens!2))))

(assert (=> d!220846 e!383093))

(declare-fun res!273774 () Bool)

(assert (=> d!220846 (=> (not res!273774) (not e!383093))))

(assert (=> d!220846 (= res!273774 (and (<= 0 (ite c!115876 lt!268250 lt!268253)) (<= (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1)))))))

(assert (=> d!220846 (= (slice!20 printableTokens!2 (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))) lt!268696)))

(declare-fun b!631118 () Bool)

(declare-fun e!383082 () Bool)

(assert (=> b!631118 (= e!383091 e!383082)))

(declare-fun res!273776 () Bool)

(assert (=> b!631118 (=> (not res!273776) (not e!383082))))

(assert (=> b!631118 (= res!273776 (rulesProduceIndividualToken!515 lt!268735 (rules!8142 printableTokens!2) (h!11967 lt!268666)))))

(declare-fun e!383083 () Bool)

(declare-fun b!631119 () Bool)

(assert (=> b!631119 (= e!383083 (tokensListTwoByTwoPredicateSeparable!7 lt!268726 (tokens!1161 printableTokens!2) (+ lt!268711 1) (rules!8142 printableTokens!2)))))

(declare-fun b!631120 () Bool)

(assert (=> b!631120 (= e!383089 e!383085)))

(declare-fun res!273777 () Bool)

(assert (=> b!631120 (=> (not res!273777) (not e!383085))))

(assert (=> b!631120 (= res!273777 (rulesProduceIndividualToken!515 lt!268683 (rules!8142 printableTokens!2) (h!11967 lt!268680)))))

(declare-fun b!631121 () Bool)

(assert (=> b!631121 (= e!383090 e!383083)))

(declare-fun res!273771 () Bool)

(assert (=> b!631121 (=> (not res!273771) (not e!383083))))

(declare-fun separableTokensPredicate!5 (LexerInterface!1226 Token!2404 Token!2404 List!6579) Bool)

(assert (=> b!631121 (= res!273771 (separableTokensPredicate!5 lt!268726 (apply!1565 (tokens!1161 printableTokens!2) lt!268711) (apply!1565 (tokens!1161 printableTokens!2) (+ lt!268711 1)) (rules!8142 printableTokens!2)))))

(declare-fun lt!268700 () Unit!11605)

(declare-fun Unit!11628 () Unit!11605)

(assert (=> b!631121 (= lt!268700 Unit!11628)))

(declare-fun size!5166 (BalanceConc!4334) Int)

(declare-fun charsOf!905 (Token!2404) BalanceConc!4334)

(assert (=> b!631121 (> (size!5166 (charsOf!905 (apply!1565 (tokens!1161 printableTokens!2) (+ lt!268711 1)))) 0)))

(declare-fun lt!268669 () Unit!11605)

(declare-fun Unit!11629 () Unit!11605)

(assert (=> b!631121 (= lt!268669 Unit!11629)))

(assert (=> b!631121 (rulesProduceIndividualToken!515 lt!268726 (rules!8142 printableTokens!2) (apply!1565 (tokens!1161 printableTokens!2) (+ lt!268711 1)))))

(declare-fun lt!268730 () Unit!11605)

(declare-fun Unit!11630 () Unit!11605)

(assert (=> b!631121 (= lt!268730 Unit!11630)))

(assert (=> b!631121 (rulesProduceIndividualToken!515 lt!268726 (rules!8142 printableTokens!2) (apply!1565 (tokens!1161 printableTokens!2) lt!268711))))

(declare-fun lt!268732 () Unit!11605)

(declare-fun lt!268674 () Unit!11605)

(assert (=> b!631121 (= lt!268732 lt!268674)))

(declare-fun lt!268709 () Token!2404)

(assert (=> b!631121 (rulesProduceIndividualToken!515 lt!268726 (rules!8142 printableTokens!2) lt!268709)))

(declare-fun lt!268671 () List!6580)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!201 (LexerInterface!1226 List!6579 List!6580 Token!2404) Unit!11605)

(assert (=> b!631121 (= lt!268674 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!201 lt!268726 (rules!8142 printableTokens!2) lt!268671 lt!268709))))

(assert (=> b!631121 (= lt!268709 (apply!1565 (tokens!1161 printableTokens!2) (+ lt!268711 1)))))

(assert (=> b!631121 (= lt!268671 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268722 () Unit!11605)

(declare-fun lt!268692 () Unit!11605)

(assert (=> b!631121 (= lt!268722 lt!268692)))

(declare-fun lt!268679 () Token!2404)

(assert (=> b!631121 (rulesProduceIndividualToken!515 lt!268726 (rules!8142 printableTokens!2) lt!268679)))

(declare-fun lt!268706 () List!6580)

(assert (=> b!631121 (= lt!268692 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!201 lt!268726 (rules!8142 printableTokens!2) lt!268706 lt!268679))))

(assert (=> b!631121 (= lt!268679 (apply!1565 (tokens!1161 printableTokens!2) lt!268711))))

(assert (=> b!631121 (= lt!268706 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268708 () Unit!11605)

(declare-fun lt!268733 () Unit!11605)

(assert (=> b!631121 (= lt!268708 lt!268733)))

(declare-fun lt!268678 () List!6580)

(declare-fun lt!268724 () Int)

(declare-fun tail!875 (List!6580) List!6580)

(assert (=> b!631121 (= (tail!875 (drop!347 lt!268678 lt!268724)) (drop!347 lt!268678 (+ lt!268724 1)))))

(declare-fun lemmaDropTail!301 (List!6580 Int) Unit!11605)

(assert (=> b!631121 (= lt!268733 (lemmaDropTail!301 lt!268678 lt!268724))))

(assert (=> b!631121 (= lt!268724 (+ lt!268711 1))))

(assert (=> b!631121 (= lt!268678 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268705 () Unit!11605)

(declare-fun lt!268698 () Unit!11605)

(assert (=> b!631121 (= lt!268705 lt!268698)))

(declare-fun lt!268677 () List!6580)

(assert (=> b!631121 (= (tail!875 (drop!347 lt!268677 lt!268711)) (drop!347 lt!268677 (+ lt!268711 1)))))

(assert (=> b!631121 (= lt!268698 (lemmaDropTail!301 lt!268677 lt!268711))))

(assert (=> b!631121 (= lt!268677 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268664 () Unit!11605)

(declare-fun lt!268665 () Unit!11605)

(assert (=> b!631121 (= lt!268664 lt!268665)))

(declare-fun lt!268717 () List!6580)

(declare-fun lt!268695 () Int)

(declare-fun head!1336 (List!6580) Token!2404)

(declare-fun apply!1573 (List!6580 Int) Token!2404)

(assert (=> b!631121 (= (head!1336 (drop!347 lt!268717 lt!268695)) (apply!1573 lt!268717 lt!268695))))

(declare-fun lemmaDropApply!313 (List!6580 Int) Unit!11605)

(assert (=> b!631121 (= lt!268665 (lemmaDropApply!313 lt!268717 lt!268695))))

(assert (=> b!631121 (= lt!268695 (+ lt!268711 1))))

(assert (=> b!631121 (= lt!268717 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun lt!268713 () Unit!11605)

(declare-fun lt!268684 () Unit!11605)

(assert (=> b!631121 (= lt!268713 lt!268684)))

(declare-fun lt!268729 () List!6580)

(assert (=> b!631121 (= (head!1336 (drop!347 lt!268729 lt!268711)) (apply!1573 lt!268729 lt!268711))))

(assert (=> b!631121 (= lt!268684 (lemmaDropApply!313 lt!268729 lt!268711))))

(assert (=> b!631121 (= lt!268729 (list!2800 (tokens!1161 printableTokens!2)))))

(declare-fun b!631122 () Bool)

(assert (=> b!631122 (= e!383086 (= (list!2800 (tokens!1161 lt!268696)) (list!2800 (slice!22 (tokens!1161 printableTokens!2) (ite c!115876 lt!268250 lt!268253) (ite c!115876 (+ lt!268253 1) (+ lt!268250 1))))))))

(declare-fun b!631123 () Bool)

(assert (=> b!631123 (= e!383082 (rulesProduceEachTokenIndividuallyList!334 lt!268735 (rules!8142 printableTokens!2) (t!83054 lt!268666)))))

(declare-fun b!631124 () Bool)

(assert (=> b!631124 (= e!383081 (rulesProduceEachTokenIndividuallyList!334 lt!268690 (rules!8142 printableTokens!2) (t!83054 lt!268734)))))

(declare-fun b!631125 () Bool)

(assert (=> b!631125 (= e!383080 (tokensListTwoByTwoPredicateSeparableList!3 lt!268735 (take!5 lt!268675 lt!268691) (rules!8142 printableTokens!2)))))

(declare-fun lt!268672 () Unit!11605)

(declare-fun lt!268703 () Unit!11605)

(assert (=> b!631125 (= lt!268672 lt!268703)))

(declare-fun lt!268720 () List!6580)

(assert (=> b!631125 (forall!1650 lt!268720 lambda!17057)))

(assert (=> b!631125 (= lt!268703 (lemmaForallSubseq!5 lt!268720 lt!268675 lambda!17057))))

(assert (=> b!631125 (= lt!268720 (take!5 lt!268675 lt!268691))))

(assert (= (and d!220846 res!273774) b!631117))

(assert (= (and d!220846 (not res!273775)) b!631120))

(assert (= (and b!631120 res!273777) b!631114))

(assert (= (and d!220846 (not res!273768)) b!631116))

(assert (= (and b!631116 res!273769) b!631112))

(assert (= (and d!220846 (not res!273779)) b!631121))

(assert (= (and b!631121 res!273771) b!631119))

(assert (= (and d!220846 (not res!273778)) b!631113))

(assert (= (and b!631113 res!273767) b!631124))

(assert (= (and d!220846 res!273772) b!631115))

(assert (= (and d!220846 (not res!273770)) b!631118))

(assert (= (and b!631118 res!273776) b!631123))

(assert (= (and d!220846 res!273773) b!631125))

(assert (= (and d!220846 res!273780) b!631122))

(declare-fun m!900601 () Bool)

(assert (=> b!631120 m!900601))

(declare-fun m!900603 () Bool)

(assert (=> b!631122 m!900603))

(declare-fun m!900605 () Bool)

(assert (=> b!631122 m!900605))

(assert (=> b!631122 m!900605))

(declare-fun m!900607 () Bool)

(assert (=> b!631122 m!900607))

(assert (=> b!631117 m!900059))

(declare-fun m!900609 () Bool)

(assert (=> b!631124 m!900609))

(declare-fun m!900611 () Bool)

(assert (=> b!631123 m!900611))

(declare-fun m!900613 () Bool)

(assert (=> b!631118 m!900613))

(declare-fun m!900615 () Bool)

(assert (=> b!631121 m!900615))

(declare-fun m!900617 () Bool)

(assert (=> b!631121 m!900617))

(declare-fun m!900619 () Bool)

(assert (=> b!631121 m!900619))

(declare-fun m!900621 () Bool)

(assert (=> b!631121 m!900621))

(assert (=> b!631121 m!900621))

(declare-fun m!900623 () Bool)

(assert (=> b!631121 m!900623))

(declare-fun m!900625 () Bool)

(assert (=> b!631121 m!900625))

(declare-fun m!900627 () Bool)

(assert (=> b!631121 m!900627))

(declare-fun m!900629 () Bool)

(assert (=> b!631121 m!900629))

(assert (=> b!631121 m!900625))

(declare-fun m!900631 () Bool)

(assert (=> b!631121 m!900631))

(declare-fun m!900633 () Bool)

(assert (=> b!631121 m!900633))

(declare-fun m!900635 () Bool)

(assert (=> b!631121 m!900635))

(declare-fun m!900637 () Bool)

(assert (=> b!631121 m!900637))

(declare-fun m!900639 () Bool)

(assert (=> b!631121 m!900639))

(declare-fun m!900641 () Bool)

(assert (=> b!631121 m!900641))

(declare-fun m!900643 () Bool)

(assert (=> b!631121 m!900643))

(assert (=> b!631121 m!900619))

(assert (=> b!631121 m!900635))

(declare-fun m!900645 () Bool)

(assert (=> b!631121 m!900645))

(declare-fun m!900647 () Bool)

(assert (=> b!631121 m!900647))

(declare-fun m!900649 () Bool)

(assert (=> b!631121 m!900649))

(declare-fun m!900651 () Bool)

(assert (=> b!631121 m!900651))

(assert (=> b!631121 m!900635))

(assert (=> b!631121 m!900627))

(assert (=> b!631121 m!900635))

(declare-fun m!900653 () Bool)

(assert (=> b!631121 m!900653))

(declare-fun m!900655 () Bool)

(assert (=> b!631121 m!900655))

(assert (=> b!631121 m!900619))

(declare-fun m!900657 () Bool)

(assert (=> b!631121 m!900657))

(declare-fun m!900659 () Bool)

(assert (=> b!631121 m!900659))

(assert (=> b!631121 m!900643))

(declare-fun m!900661 () Bool)

(assert (=> b!631121 m!900661))

(declare-fun m!900663 () Bool)

(assert (=> b!631121 m!900663))

(assert (=> b!631121 m!900659))

(declare-fun m!900665 () Bool)

(assert (=> b!631121 m!900665))

(declare-fun m!900667 () Bool)

(assert (=> b!631121 m!900667))

(declare-fun m!900669 () Bool)

(assert (=> b!631121 m!900669))

(declare-fun m!900671 () Bool)

(assert (=> b!631115 m!900671))

(declare-fun m!900673 () Bool)

(assert (=> b!631115 m!900673))

(declare-fun m!900675 () Bool)

(assert (=> b!631115 m!900675))

(declare-fun m!900677 () Bool)

(assert (=> b!631115 m!900677))

(assert (=> b!631115 m!900673))

(declare-fun m!900679 () Bool)

(assert (=> b!631115 m!900679))

(declare-fun m!900681 () Bool)

(assert (=> b!631115 m!900681))

(assert (=> b!631115 m!900673))

(declare-fun m!900683 () Bool)

(assert (=> d!220846 m!900683))

(declare-fun m!900685 () Bool)

(assert (=> d!220846 m!900685))

(declare-fun m!900687 () Bool)

(assert (=> d!220846 m!900687))

(assert (=> d!220846 m!900605))

(assert (=> d!220846 m!900607))

(declare-fun m!900689 () Bool)

(assert (=> d!220846 m!900689))

(declare-fun m!900691 () Bool)

(assert (=> d!220846 m!900691))

(assert (=> d!220846 m!900605))

(declare-fun m!900693 () Bool)

(assert (=> d!220846 m!900693))

(assert (=> d!220846 m!900103))

(declare-fun m!900695 () Bool)

(assert (=> d!220846 m!900695))

(declare-fun m!900697 () Bool)

(assert (=> d!220846 m!900697))

(assert (=> d!220846 m!900685))

(declare-fun m!900699 () Bool)

(assert (=> d!220846 m!900699))

(assert (=> d!220846 m!900695))

(declare-fun m!900701 () Bool)

(assert (=> d!220846 m!900701))

(assert (=> d!220846 m!900689))

(declare-fun m!900703 () Bool)

(assert (=> d!220846 m!900703))

(assert (=> d!220846 m!900647))

(declare-fun m!900705 () Bool)

(assert (=> d!220846 m!900705))

(assert (=> d!220846 m!900605))

(declare-fun m!900707 () Bool)

(assert (=> d!220846 m!900707))

(declare-fun m!900709 () Bool)

(assert (=> d!220846 m!900709))

(assert (=> d!220846 m!900673))

(declare-fun m!900711 () Bool)

(assert (=> d!220846 m!900711))

(assert (=> d!220846 m!900673))

(declare-fun m!900713 () Bool)

(assert (=> d!220846 m!900713))

(declare-fun m!900715 () Bool)

(assert (=> d!220846 m!900715))

(assert (=> d!220846 m!900605))

(declare-fun m!900717 () Bool)

(assert (=> d!220846 m!900717))

(assert (=> d!220846 m!900059))

(declare-fun m!900719 () Bool)

(assert (=> d!220846 m!900719))

(assert (=> d!220846 m!900607))

(declare-fun m!900721 () Bool)

(assert (=> d!220846 m!900721))

(assert (=> d!220846 m!900647))

(declare-fun m!900723 () Bool)

(assert (=> d!220846 m!900723))

(assert (=> d!220846 m!900605))

(declare-fun m!900725 () Bool)

(assert (=> d!220846 m!900725))

(assert (=> d!220846 m!900605))

(declare-fun m!900727 () Bool)

(assert (=> d!220846 m!900727))

(declare-fun m!900729 () Bool)

(assert (=> d!220846 m!900729))

(assert (=> d!220846 m!900647))

(declare-fun m!900731 () Bool)

(assert (=> d!220846 m!900731))

(declare-fun m!900733 () Bool)

(assert (=> b!631112 m!900733))

(declare-fun m!900735 () Bool)

(assert (=> b!631114 m!900735))

(declare-fun m!900737 () Bool)

(assert (=> b!631116 m!900737))

(assert (=> b!631125 m!900695))

(assert (=> b!631125 m!900695))

(declare-fun m!900739 () Bool)

(assert (=> b!631125 m!900739))

(declare-fun m!900741 () Bool)

(assert (=> b!631125 m!900741))

(declare-fun m!900743 () Bool)

(assert (=> b!631125 m!900743))

(declare-fun m!900745 () Bool)

(assert (=> b!631119 m!900745))

(declare-fun m!900747 () Bool)

(assert (=> b!631113 m!900747))

(assert (=> bm!41381 d!220846))

(declare-fun d!220854 () Bool)

(declare-fun forall!1652 (List!6583 Int) Bool)

(declare-fun ++!1796 (List!6583 List!6583) List!6583)

(assert (=> d!220854 (forall!1652 (++!1796 (list!2796 (BalanceConc!4343 Empty!2165)) (Cons!6569 0 Nil!6569)) lambda!16912)))

(declare-fun lt!268738 () Unit!11605)

(declare-fun choose!4584 (List!6583 List!6583 Int) Unit!11605)

(assert (=> d!220854 (= lt!268738 (choose!4584 (list!2796 (BalanceConc!4343 Empty!2165)) (Cons!6569 0 Nil!6569) lambda!16912))))

(assert (=> d!220854 (forall!1652 (list!2796 (BalanceConc!4343 Empty!2165)) lambda!16912)))

(assert (=> d!220854 (= (lemmaConcatPreservesForall!15 (list!2796 (BalanceConc!4343 Empty!2165)) (Cons!6569 0 Nil!6569) lambda!16912) lt!268738)))

(declare-fun bs!73108 () Bool)

(assert (= bs!73108 d!220854))

(assert (=> bs!73108 m!900131))

(declare-fun m!900749 () Bool)

(assert (=> bs!73108 m!900749))

(assert (=> bs!73108 m!900749))

(declare-fun m!900751 () Bool)

(assert (=> bs!73108 m!900751))

(assert (=> bs!73108 m!900131))

(declare-fun m!900753 () Bool)

(assert (=> bs!73108 m!900753))

(assert (=> bs!73108 m!900131))

(declare-fun m!900755 () Bool)

(assert (=> bs!73108 m!900755))

(assert (=> b!630820 d!220854))

(declare-fun d!220856 () Bool)

(declare-fun list!2801 (Conc!2165) List!6583)

(assert (=> d!220856 (= (list!2796 (BalanceConc!4343 Empty!2165)) (list!2801 (c!115839 (BalanceConc!4343 Empty!2165))))))

(declare-fun bs!73109 () Bool)

(assert (= bs!73109 d!220856))

(declare-fun m!900757 () Bool)

(assert (=> bs!73109 m!900757))

(assert (=> b!630820 d!220856))

(declare-fun d!220858 () Bool)

(declare-fun lt!268741 () Bool)

(assert (=> d!220858 (= lt!268741 (forall!1642 (list!2791 lt!268251) lambda!16925))))

(declare-fun forall!1653 (Conc!2163 Int) Bool)

(assert (=> d!220858 (= lt!268741 (forall!1653 (c!115837 lt!268251) lambda!16925))))

(assert (=> d!220858 (= (forall!1644 lt!268251 lambda!16925) lt!268741)))

(declare-fun bs!73110 () Bool)

(assert (= bs!73110 d!220858))

(declare-fun m!900759 () Bool)

(assert (=> bs!73110 m!900759))

(assert (=> bs!73110 m!900759))

(declare-fun m!900761 () Bool)

(assert (=> bs!73110 m!900761))

(declare-fun m!900763 () Bool)

(assert (=> bs!73110 m!900763))

(assert (=> d!220788 d!220858))

(declare-fun d!220860 () Bool)

(declare-fun lt!268744 () Int)

(declare-fun size!5167 (List!6583) Int)

(assert (=> d!220860 (= lt!268744 (size!5167 (list!2796 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))

(declare-fun size!5168 (Conc!2165) Int)

(assert (=> d!220860 (= lt!268744 (size!5168 (c!115839 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165)))))))

(assert (=> d!220860 (= (size!5158 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 0 (BalanceConc!4343 Empty!2165))) lt!268744)))

(declare-fun bs!73111 () Bool)

(assert (= bs!73111 d!220860))

(assert (=> bs!73111 m!900007))

(assert (=> bs!73111 m!900511))

(assert (=> bs!73111 m!900511))

(declare-fun m!900765 () Bool)

(assert (=> bs!73111 m!900765))

(declare-fun m!900767 () Bool)

(assert (=> bs!73111 m!900767))

(assert (=> d!220788 d!220860))

(assert (=> d!220788 d!220760))

(declare-fun bs!73112 () Bool)

(declare-fun b!631140 () Bool)

(assert (= bs!73112 (and b!631140 b!630820)))

(declare-fun lambda!17058 () Int)

(assert (=> bs!73112 (= lambda!17058 lambda!16912)))

(declare-fun bs!73113 () Bool)

(assert (= bs!73113 (and b!631140 d!220782)))

(assert (=> bs!73113 (= lambda!17058 lambda!16913)))

(assert (=> b!631140 true))

(declare-fun bs!73114 () Bool)

(declare-fun d!220862 () Bool)

(assert (= bs!73114 (and d!220862 b!630820)))

(declare-fun lambda!17059 () Int)

(assert (=> bs!73114 (= lambda!17059 lambda!16912)))

(declare-fun bs!73115 () Bool)

(assert (= bs!73115 (and d!220862 d!220782)))

(assert (=> bs!73115 (= lambda!17059 lambda!16913)))

(declare-fun bs!73116 () Bool)

(assert (= bs!73116 (and d!220862 b!631140)))

(assert (=> bs!73116 (= lambda!17059 lambda!17058)))

(assert (=> d!220862 true))

(declare-fun b!631134 () Bool)

(declare-fun e!383100 () Bool)

(assert (=> b!631134 (= e!383100 (<= (+ 0 1) (size!5157 (tokens!1161 printableTokens!2))))))

(declare-fun b!631135 () Bool)

(declare-fun e!383103 () BalanceConc!4342)

(assert (=> b!631135 (= e!383103 e!382874)))

(declare-fun b!631136 () Bool)

(declare-fun e!383104 () BalanceConc!4342)

(assert (=> b!631136 (= e!383104 e!382874)))

(declare-fun b!631137 () Bool)

(declare-fun e!383102 () Bool)

(declare-fun lt!268745 () Token!2404)

(assert (=> b!631137 (= e!383102 (isKeywordValue!0 lt!268745 RightBrace!1374))))

(declare-fun lt!268747 () BalanceConc!4342)

(assert (=> d!220862 (forall!1643 lt!268747 lambda!17059)))

(assert (=> d!220862 (= lt!268747 e!383103)))

(declare-fun c!115925 () Bool)

(assert (=> d!220862 (= c!115925 (>= (+ 0 1) (size!5157 (tokens!1161 printableTokens!2))))))

(assert (=> d!220862 e!383100))

(declare-fun res!273782 () Bool)

(assert (=> d!220862 (=> (not res!273782) (not e!383100))))

(assert (=> d!220862 (= res!273782 (>= (+ 0 1) 0))))

(assert (=> d!220862 (= (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 (+ 0 1) e!382874) lt!268747)))

(declare-fun b!631138 () Bool)

(declare-fun e!383101 () BalanceConc!4342)

(assert (=> b!631138 (= e!383103 e!383101)))

(assert (=> b!631138 (= lt!268745 (apply!1565 (tokens!1161 printableTokens!2) (+ 0 1)))))

(declare-fun res!273781 () Bool)

(assert (=> b!631138 (= res!273781 (isKeywordValue!0 lt!268745 LeftBrace!1374))))

(assert (=> b!631138 (=> res!273781 e!383102)))

(declare-fun c!115926 () Bool)

(assert (=> b!631138 (= c!115926 e!383102)))

(declare-fun b!631139 () Bool)

(declare-fun call!41391 () BalanceConc!4342)

(assert (=> b!631139 (= e!383101 call!41391)))

(declare-fun bm!41386 () Bool)

(declare-fun c!115927 () Bool)

(assert (=> bm!41386 (= c!115927 c!115926)))

(assert (=> bm!41386 (= call!41391 (indicesOfOpenBraces!0 (tokens!1161 printableTokens!2) lt!268185 (+ 0 1 1) e!383104))))

(declare-fun lt!268746 () Unit!11605)

(assert (=> b!631140 (= lt!268746 (lemmaConcatPreservesForall!15 (list!2796 e!382874) (Cons!6569 (+ 0 1) Nil!6569) lambda!17058))))

(assert (=> b!631140 (= e!383101 call!41391)))

(declare-fun b!631141 () Bool)

(assert (=> b!631141 (= e!383104 (append!183 e!382874 (+ 0 1)))))

(assert (= (and d!220862 res!273782) b!631134))

(assert (= (and d!220862 c!115925) b!631135))

(assert (= (and d!220862 (not c!115925)) b!631138))

(assert (= (and b!631138 (not res!273781)) b!631137))

(assert (= (and b!631138 c!115926) b!631140))

(assert (= (and b!631138 (not c!115926)) b!631139))

(assert (= (or b!631140 b!631139) bm!41386))

(assert (= (and bm!41386 c!115927) b!631141))

(assert (= (and bm!41386 (not c!115927)) b!631136))

(declare-fun m!900769 () Bool)

(assert (=> d!220862 m!900769))

(assert (=> d!220862 m!900059))

(declare-fun m!900771 () Bool)

(assert (=> b!631137 m!900771))

(assert (=> b!631134 m!900059))

(declare-fun m!900773 () Bool)

(assert (=> b!631141 m!900773))

(declare-fun m!900775 () Bool)

(assert (=> b!631140 m!900775))

(assert (=> b!631140 m!900775))

(declare-fun m!900777 () Bool)

(assert (=> b!631140 m!900777))

(declare-fun m!900779 () Bool)

(assert (=> b!631138 m!900779))

(declare-fun m!900781 () Bool)

(assert (=> b!631138 m!900781))

(declare-fun m!900783 () Bool)

(assert (=> bm!41386 m!900783))

(assert (=> bm!41375 d!220862))

(declare-fun d!220864 () Bool)

(assert (=> d!220864 (= (separableTokens!18 Lexer!1224 (tokens!1161 printableTokens!2) (rules!8142 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!7 Lexer!1224 (tokens!1161 printableTokens!2) 0 (rules!8142 printableTokens!2)))))

(declare-fun bs!73117 () Bool)

(assert (= bs!73117 d!220864))

(assert (=> bs!73117 m!900705))

(assert (=> b!630787 d!220864))

(declare-fun d!220866 () Bool)

(declare-fun lt!268750 () Int)

(declare-fun size!5169 (List!6580) Int)

(assert (=> d!220866 (= lt!268750 (size!5169 (list!2800 (tokens!1161 printableTokens!2))))))

(declare-fun size!5170 (Conc!2162) Int)

(assert (=> d!220866 (= lt!268750 (size!5170 (c!115836 (tokens!1161 printableTokens!2))))))

(assert (=> d!220866 (= (size!5157 (tokens!1161 printableTokens!2)) lt!268750)))

(declare-fun bs!73118 () Bool)

(assert (= bs!73118 d!220866))

(assert (=> bs!73118 m!900647))

(assert (=> bs!73118 m!900647))

(declare-fun m!900785 () Bool)

(assert (=> bs!73118 m!900785))

(declare-fun m!900787 () Bool)

(assert (=> bs!73118 m!900787))

(assert (=> d!220760 d!220866))

(declare-fun bs!73119 () Bool)

(declare-fun d!220868 () Bool)

(assert (= bs!73119 (and d!220868 d!220776)))

(declare-fun lambda!17060 () Int)

(assert (=> bs!73119 (not (= lambda!17060 lambda!16907))))

(declare-fun bs!73120 () Bool)

(assert (= bs!73120 (and d!220868 d!220788)))

(assert (=> bs!73120 (= lambda!17060 lambda!16925)))

(declare-fun bs!73121 () Bool)

(assert (= bs!73121 (and d!220868 d!220774)))

(assert (=> bs!73121 (= lambda!17060 lambda!16903)))

(assert (=> bs!73121 (not (= lambda!17060 lambda!16904))))

(declare-fun bs!73122 () Bool)

(assert (= bs!73122 (and d!220868 b!630888)))

(assert (=> bs!73122 (= lambda!17060 lambda!16924)))

(declare-fun bs!73123 () Bool)

(assert (= bs!73123 (and d!220868 b!631073)))

(assert (=> bs!73123 (= lambda!17060 lambda!17043)))

(declare-fun bs!73124 () Bool)

(assert (= bs!73124 (and d!220868 d!220838)))

(assert (=> bs!73124 (= lambda!17060 lambda!17044)))

(declare-fun lambda!17061 () Int)

(assert (=> bs!73119 (not (= lambda!17061 lambda!16907))))

(assert (=> d!220868 (not (= lambda!17061 lambda!17060))))

(assert (=> bs!73120 (not (= lambda!17061 lambda!16925))))

(assert (=> bs!73121 (not (= lambda!17061 lambda!16903))))

(assert (=> bs!73121 (= lambda!17061 lambda!16904)))

(assert (=> bs!73122 (not (= lambda!17061 lambda!16924))))

(assert (=> bs!73123 (not (= lambda!17061 lambda!17043))))

(assert (=> bs!73124 (not (= lambda!17061 lambda!17044))))

(assert (=> d!220868 (forall!1642 (t!83055 lt!268184) lambda!17061)))

(declare-fun lt!268751 () Unit!11605)

(declare-fun e!383105 () Unit!11605)

(assert (=> d!220868 (= lt!268751 e!383105)))

(declare-fun c!115928 () Bool)

(assert (=> d!220868 (= c!115928 (is-Nil!6567 (t!83055 lt!268184)))))

(assert (=> d!220868 (forall!1642 (t!83055 lt!268184) lambda!17060)))

(assert (=> d!220868 (= (lemmaAddIdsPreservesRules!0 (t!83055 lt!268184)) lt!268751)))

(declare-fun b!631142 () Bool)

(declare-fun Unit!11631 () Unit!11605)

(assert (=> b!631142 (= e!383105 Unit!11631)))

(declare-fun b!631143 () Bool)

(declare-fun Unit!11632 () Unit!11605)

(assert (=> b!631143 (= e!383105 Unit!11632)))

(declare-fun lt!268752 () Unit!11605)

(assert (=> b!631143 (= lt!268752 (lemmaAddIdsPreservesRules!0 (t!83055 (t!83055 lt!268184))))))

(assert (= (and d!220868 c!115928) b!631142))

(assert (= (and d!220868 (not c!115928)) b!631143))

(declare-fun m!900789 () Bool)

(assert (=> d!220868 m!900789))

(declare-fun m!900791 () Bool)

(assert (=> d!220868 m!900791))

(declare-fun m!900793 () Bool)

(assert (=> b!631143 m!900793))

(assert (=> b!630793 d!220868))

(declare-fun d!220870 () Bool)

(declare-fun res!273789 () Bool)

(declare-fun e!383108 () Bool)

(assert (=> d!220870 (=> (not res!273789) (not e!383108))))

(assert (=> d!220870 (= res!273789 (= (csize!4554 (c!115836 (tokens!1161 printableTokens!2))) (+ (size!5170 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) (size!5170 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))))

(assert (=> d!220870 (= (inv!8469 (c!115836 (tokens!1161 printableTokens!2))) e!383108)))

(declare-fun b!631150 () Bool)

(declare-fun res!273790 () Bool)

(assert (=> b!631150 (=> (not res!273790) (not e!383108))))

(assert (=> b!631150 (= res!273790 (and (not (= (left!5269 (c!115836 (tokens!1161 printableTokens!2))) Empty!2162)) (not (= (right!5599 (c!115836 (tokens!1161 printableTokens!2))) Empty!2162))))))

(declare-fun b!631151 () Bool)

(declare-fun res!273791 () Bool)

(assert (=> b!631151 (=> (not res!273791) (not e!383108))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!269 (Conc!2162) Int)

(assert (=> b!631151 (= res!273791 (= (cheight!2373 (c!115836 (tokens!1161 printableTokens!2))) (+ (max!0 (height!269 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) (height!269 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) 1)))))

(declare-fun b!631152 () Bool)

(assert (=> b!631152 (= e!383108 (<= 0 (cheight!2373 (c!115836 (tokens!1161 printableTokens!2)))))))

(assert (= (and d!220870 res!273789) b!631150))

(assert (= (and b!631150 res!273790) b!631151))

(assert (= (and b!631151 res!273791) b!631152))

(declare-fun m!900795 () Bool)

(assert (=> d!220870 m!900795))

(declare-fun m!900797 () Bool)

(assert (=> d!220870 m!900797))

(declare-fun m!900799 () Bool)

(assert (=> b!631151 m!900799))

(declare-fun m!900801 () Bool)

(assert (=> b!631151 m!900801))

(assert (=> b!631151 m!900799))

(assert (=> b!631151 m!900801))

(declare-fun m!900803 () Bool)

(assert (=> b!631151 m!900803))

(assert (=> b!631004 d!220870))

(declare-fun d!220872 () Bool)

(declare-fun lt!268755 () Int)

(assert (=> d!220872 (>= lt!268755 0)))

(declare-fun e!383111 () Int)

(assert (=> d!220872 (= lt!268755 e!383111)))

(declare-fun c!115931 () Bool)

(assert (=> d!220872 (= c!115931 (is-Nil!6568 (filter!106 lt!268453 lambda!17023)))))

(assert (=> d!220872 (= (size!5159 (filter!106 lt!268453 lambda!17023)) lt!268755)))

(declare-fun b!631157 () Bool)

(assert (=> b!631157 (= e!383111 0)))

(declare-fun b!631158 () Bool)

(assert (=> b!631158 (= e!383111 (+ 1 (size!5159 (t!83056 (filter!106 lt!268453 lambda!17023)))))))

(assert (= (and d!220872 c!115931) b!631157))

(assert (= (and d!220872 (not c!115931)) b!631158))

(declare-fun m!900805 () Bool)

(assert (=> b!631158 m!900805))

(assert (=> b!630970 d!220872))

(declare-fun b!631171 () Bool)

(declare-fun e!383118 () List!6582)

(declare-fun e!383120 () List!6582)

(assert (=> b!631171 (= e!383118 e!383120)))

(declare-fun c!115936 () Bool)

(assert (=> b!631171 (= c!115936 (dynLambda!3677 lambda!17023 (h!11969 lt!268453)))))

(declare-fun b!631172 () Bool)

(assert (=> b!631172 (= e!383118 Nil!6568)))

(declare-fun b!631173 () Bool)

(declare-fun call!41394 () List!6582)

(assert (=> b!631173 (= e!383120 call!41394)))

(declare-fun d!220874 () Bool)

(declare-fun e!383119 () Bool)

(assert (=> d!220874 e!383119))

(declare-fun res!273797 () Bool)

(assert (=> d!220874 (=> (not res!273797) (not e!383119))))

(declare-fun lt!268758 () List!6582)

(assert (=> d!220874 (= res!273797 (<= (size!5159 lt!268758) (size!5159 lt!268453)))))

(assert (=> d!220874 (= lt!268758 e!383118)))

(declare-fun c!115937 () Bool)

(assert (=> d!220874 (= c!115937 (is-Nil!6568 lt!268453))))

(assert (=> d!220874 (= (filter!106 lt!268453 lambda!17023) lt!268758)))

(declare-fun b!631174 () Bool)

(assert (=> b!631174 (= e!383120 (Cons!6568 (h!11969 lt!268453) call!41394))))

(declare-fun bm!41389 () Bool)

(assert (=> bm!41389 (= call!41394 (filter!106 (t!83056 lt!268453) lambda!17023))))

(declare-fun b!631175 () Bool)

(declare-fun res!273796 () Bool)

(assert (=> b!631175 (=> (not res!273796) (not e!383119))))

(declare-fun content!1162 (List!6582) (Set tuple2!7178))

(assert (=> b!631175 (= res!273796 (set.subset (content!1162 lt!268758) (content!1162 lt!268453)))))

(declare-fun b!631176 () Bool)

(assert (=> b!631176 (= e!383119 (forall!1640 lt!268758 lambda!17023))))

(assert (= (and d!220874 c!115937) b!631172))

(assert (= (and d!220874 (not c!115937)) b!631171))

(assert (= (and b!631171 c!115936) b!631174))

(assert (= (and b!631171 (not c!115936)) b!631173))

(assert (= (or b!631174 b!631173) bm!41389))

(assert (= (and d!220874 res!273797) b!631175))

(assert (= (and b!631175 res!273796) b!631176))

(declare-fun b_lambda!24783 () Bool)

(assert (=> (not b_lambda!24783) (not b!631171)))

(declare-fun m!900807 () Bool)

(assert (=> b!631175 m!900807))

(declare-fun m!900809 () Bool)

(assert (=> b!631175 m!900809))

(declare-fun m!900811 () Bool)

(assert (=> b!631171 m!900811))

(declare-fun m!900813 () Bool)

(assert (=> bm!41389 m!900813))

(declare-fun m!900815 () Bool)

(assert (=> b!631176 m!900815))

(declare-fun m!900817 () Bool)

(assert (=> d!220874 m!900817))

(assert (=> d!220874 m!900415))

(assert (=> b!630970 d!220874))

(declare-fun d!220876 () Bool)

(declare-fun lt!268759 () Int)

(assert (=> d!220876 (>= lt!268759 0)))

(declare-fun e!383121 () Int)

(assert (=> d!220876 (= lt!268759 e!383121)))

(declare-fun c!115938 () Bool)

(assert (=> d!220876 (= c!115938 (is-Nil!6568 lt!268453))))

(assert (=> d!220876 (= (size!5159 lt!268453) lt!268759)))

(declare-fun b!631177 () Bool)

(assert (=> b!631177 (= e!383121 0)))

(declare-fun b!631178 () Bool)

(assert (=> b!631178 (= e!383121 (+ 1 (size!5159 (t!83056 lt!268453))))))

(assert (= (and d!220876 c!115938) b!631177))

(assert (= (and d!220876 (not c!115938)) b!631178))

(declare-fun m!900819 () Bool)

(assert (=> b!631178 m!900819))

(assert (=> b!630970 d!220876))

(declare-fun d!220878 () Bool)

(declare-fun e!383124 () Bool)

(assert (=> d!220878 e!383124))

(declare-fun res!273800 () Bool)

(assert (=> d!220878 (=> (not res!273800) (not e!383124))))

(declare-fun filter!110 (Conc!2164 Int) Conc!2164)

(assert (=> d!220878 (= res!273800 (isBalanced!576 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17024)))))

(declare-fun lt!268762 () BalanceConc!4340)

(assert (=> d!220878 (= lt!268762 (BalanceConc!4341 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17024)))))

(assert (=> d!220878 (= (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17024) lt!268762)))

(declare-fun b!631181 () Bool)

(assert (=> b!631181 (= e!383124 (= (list!2790 lt!268762) (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17024)))))

(assert (= (and d!220878 res!273800) b!631181))

(declare-fun m!900821 () Bool)

(assert (=> d!220878 m!900821))

(assert (=> d!220878 m!900821))

(declare-fun m!900823 () Bool)

(assert (=> d!220878 m!900823))

(declare-fun m!900825 () Bool)

(assert (=> b!631181 m!900825))

(assert (=> b!631181 m!899999))

(assert (=> b!631181 m!900335))

(assert (=> b!631181 m!900335))

(declare-fun m!900827 () Bool)

(assert (=> b!631181 m!900827))

(assert (=> b!630971 d!220878))

(declare-fun d!220880 () Bool)

(declare-fun e!383127 () Bool)

(assert (=> d!220880 e!383127))

(declare-fun res!273811 () Bool)

(assert (=> d!220880 (=> (not res!273811) (not e!383127))))

(declare-fun appendAssocInst!112 (Conc!2164 Conc!2164) Bool)

(assert (=> d!220880 (= res!273811 (appendAssocInst!112 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (c!115838 (sortObjectsByID!0 lt!268444))))))

(declare-fun lt!268765 () BalanceConc!4340)

(declare-fun ++!1797 (Conc!2164 Conc!2164) Conc!2164)

(assert (=> d!220880 (= lt!268765 (BalanceConc!4341 (++!1797 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (c!115838 (sortObjectsByID!0 lt!268444)))))))

(assert (=> d!220880 (= (++!1791 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468) (sortObjectsByID!0 lt!268444)) lt!268765)))

(declare-fun b!631192 () Bool)

(declare-fun res!273812 () Bool)

(assert (=> b!631192 (=> (not res!273812) (not e!383127))))

(declare-fun height!270 (Conc!2164) Int)

(assert (=> b!631192 (= res!273812 (>= (height!270 (++!1797 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (c!115838 (sortObjectsByID!0 lt!268444)))) (max!0 (height!270 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468))) (height!270 (c!115838 (sortObjectsByID!0 lt!268444))))))))

(declare-fun b!631193 () Bool)

(assert (=> b!631193 (= e!383127 (= (list!2790 lt!268765) (++!1792 (list!2790 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (list!2790 (sortObjectsByID!0 lt!268444)))))))

(declare-fun b!631190 () Bool)

(declare-fun res!273810 () Bool)

(assert (=> b!631190 (=> (not res!273810) (not e!383127))))

(assert (=> b!631190 (= res!273810 (isBalanced!576 (++!1797 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (c!115838 (sortObjectsByID!0 lt!268444)))))))

(declare-fun b!631191 () Bool)

(declare-fun res!273809 () Bool)

(assert (=> b!631191 (=> (not res!273809) (not e!383127))))

(assert (=> b!631191 (= res!273809 (<= (height!270 (++!1797 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468)) (c!115838 (sortObjectsByID!0 lt!268444)))) (+ (max!0 (height!270 (c!115838 (++!1791 (sortObjectsByID!0 lt!268436) lt!268468))) (height!270 (c!115838 (sortObjectsByID!0 lt!268444)))) 1)))))

(assert (= (and d!220880 res!273811) b!631190))

(assert (= (and b!631190 res!273810) b!631191))

(assert (= (and b!631191 res!273809) b!631192))

(assert (= (and b!631192 res!273812) b!631193))

(declare-fun m!900829 () Bool)

(assert (=> b!631191 m!900829))

(declare-fun m!900831 () Bool)

(assert (=> b!631191 m!900831))

(declare-fun m!900833 () Bool)

(assert (=> b!631191 m!900833))

(declare-fun m!900835 () Bool)

(assert (=> b!631191 m!900835))

(declare-fun m!900837 () Bool)

(assert (=> b!631191 m!900837))

(assert (=> b!631191 m!900831))

(assert (=> b!631191 m!900835))

(assert (=> b!631191 m!900829))

(declare-fun m!900839 () Bool)

(assert (=> d!220880 m!900839))

(assert (=> d!220880 m!900835))

(assert (=> b!631190 m!900835))

(assert (=> b!631190 m!900835))

(declare-fun m!900841 () Bool)

(assert (=> b!631190 m!900841))

(declare-fun m!900843 () Bool)

(assert (=> b!631193 m!900843))

(assert (=> b!631193 m!900317))

(declare-fun m!900845 () Bool)

(assert (=> b!631193 m!900845))

(assert (=> b!631193 m!900359))

(assert (=> b!631193 m!900329))

(assert (=> b!631193 m!900845))

(assert (=> b!631193 m!900329))

(declare-fun m!900847 () Bool)

(assert (=> b!631193 m!900847))

(assert (=> b!631192 m!900829))

(assert (=> b!631192 m!900831))

(assert (=> b!631192 m!900833))

(assert (=> b!631192 m!900835))

(assert (=> b!631192 m!900837))

(assert (=> b!631192 m!900831))

(assert (=> b!631192 m!900835))

(assert (=> b!631192 m!900829))

(assert (=> b!630971 d!220880))

(declare-fun d!220882 () Bool)

(assert (=> d!220882 (forall!1640 (++!1792 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) (list!2790 (sortObjectsByID!0 lt!268444))) lambda!17026)))

(declare-fun lt!268768 () Unit!11605)

(declare-fun choose!4585 (List!6582 List!6582 Int) Unit!11605)

(assert (=> d!220882 (= lt!268768 (choose!4585 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) (list!2790 (sortObjectsByID!0 lt!268444)) lambda!17026))))

(assert (=> d!220882 (forall!1640 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) lambda!17026)))

(assert (=> d!220882 (= (lemmaConcatPreservesForall!17 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) (list!2790 (sortObjectsByID!0 lt!268444)) lambda!17026) lt!268768)))

(declare-fun bs!73125 () Bool)

(assert (= bs!73125 d!220882))

(assert (=> bs!73125 m!900327))

(assert (=> bs!73125 m!900329))

(declare-fun m!900849 () Bool)

(assert (=> bs!73125 m!900849))

(assert (=> bs!73125 m!900849))

(declare-fun m!900851 () Bool)

(assert (=> bs!73125 m!900851))

(assert (=> bs!73125 m!900327))

(assert (=> bs!73125 m!900329))

(declare-fun m!900853 () Bool)

(assert (=> bs!73125 m!900853))

(assert (=> bs!73125 m!900327))

(declare-fun m!900855 () Bool)

(assert (=> bs!73125 m!900855))

(assert (=> b!630971 d!220882))

(declare-fun d!220884 () Bool)

(declare-fun res!273813 () Bool)

(declare-fun e!383128 () Bool)

(assert (=> d!220884 (=> res!273813 e!383128)))

(assert (=> d!220884 (= res!273813 (is-Nil!6568 lt!268454))))

(assert (=> d!220884 (= (forall!1640 lt!268454 lambda!17026) e!383128)))

(declare-fun b!631194 () Bool)

(declare-fun e!383129 () Bool)

(assert (=> b!631194 (= e!383128 e!383129)))

(declare-fun res!273814 () Bool)

(assert (=> b!631194 (=> (not res!273814) (not e!383129))))

(assert (=> b!631194 (= res!273814 (dynLambda!3677 lambda!17026 (h!11969 lt!268454)))))

(declare-fun b!631195 () Bool)

(assert (=> b!631195 (= e!383129 (forall!1640 (t!83056 lt!268454) lambda!17026))))

(assert (= (and d!220884 (not res!273813)) b!631194))

(assert (= (and b!631194 res!273814) b!631195))

(declare-fun b_lambda!24785 () Bool)

(assert (=> (not b_lambda!24785) (not b!631194)))

(declare-fun m!900857 () Bool)

(assert (=> b!631194 m!900857))

(declare-fun m!900859 () Bool)

(assert (=> b!631195 m!900859))

(assert (=> b!630971 d!220884))

(declare-fun d!220886 () Bool)

(declare-fun lt!268771 () Int)

(assert (=> d!220886 (= lt!268771 (size!5159 (list!2790 (map!1385 lt!268183 lambda!16887))))))

(declare-fun size!5171 (Conc!2164) Int)

(assert (=> d!220886 (= lt!268771 (size!5171 (c!115838 (map!1385 lt!268183 lambda!16887))))))

(assert (=> d!220886 (= (size!5160 (map!1385 lt!268183 lambda!16887)) lt!268771)))

(declare-fun bs!73126 () Bool)

(assert (= bs!73126 d!220886))

(assert (=> bs!73126 m!899999))

(assert (=> bs!73126 m!900335))

(assert (=> bs!73126 m!900335))

(declare-fun m!900861 () Bool)

(assert (=> bs!73126 m!900861))

(declare-fun m!900863 () Bool)

(assert (=> bs!73126 m!900863))

(assert (=> b!630971 d!220886))

(declare-fun d!220888 () Bool)

(declare-fun subseq!122 (List!6582 List!6582) Bool)

(assert (=> d!220888 (subseq!122 (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025) (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268774 () Unit!11605)

(declare-fun choose!4586 (List!6582 Int) Unit!11605)

(assert (=> d!220888 (= lt!268774 (choose!4586 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025))))

(assert (=> d!220888 (= (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025) lt!268774)))

(declare-fun bs!73127 () Bool)

(assert (= bs!73127 d!220888))

(assert (=> bs!73127 m!900335))

(declare-fun m!900865 () Bool)

(assert (=> bs!73127 m!900865))

(assert (=> bs!73127 m!900865))

(assert (=> bs!73127 m!900335))

(declare-fun m!900867 () Bool)

(assert (=> bs!73127 m!900867))

(assert (=> bs!73127 m!900335))

(declare-fun m!900869 () Bool)

(assert (=> bs!73127 m!900869))

(assert (=> b!630971 d!220888))

(declare-fun bs!73128 () Bool)

(declare-fun b!631206 () Bool)

(assert (= bs!73128 (and b!631206 b!630971)))

(declare-fun lambda!17062 () Int)

(assert (=> bs!73128 (not (= lambda!17062 lambda!17024))))

(declare-fun bs!73129 () Bool)

(assert (= bs!73129 (and b!631206 b!630748)))

(assert (=> bs!73129 (not (= lambda!17062 lambda!16888))))

(assert (=> bs!73128 (not (= lambda!17062 lambda!17025))))

(declare-fun bs!73130 () Bool)

(assert (= bs!73130 (and b!631206 d!220804)))

(assert (=> bs!73130 (not (= lambda!17062 lambda!17027))))

(assert (=> bs!73128 (not (= lambda!17062 lambda!17026))))

(declare-fun lt!268806 () tuple2!7178)

(assert (=> bs!73128 (= (= (_1!3853 lt!268806) (_1!3853 lt!268466)) (= lambda!17062 lambda!17023))))

(declare-fun b!631209 () Bool)

(declare-fun e!383138 () Bool)

(assert (=> b!631209 (= e!383138 true)))

(declare-fun b!631208 () Bool)

(declare-fun e!383137 () Bool)

(assert (=> b!631208 (= e!383137 e!383138)))

(assert (=> b!631206 e!383137))

(assert (= b!631208 b!631209))

(assert (= b!631206 b!631208))

(declare-fun lambda!17063 () Int)

(assert (=> bs!73128 (= (= (_1!3853 lt!268806) (_1!3853 lt!268466)) (= lambda!17063 lambda!17024))))

(assert (=> b!631206 (not (= lambda!17063 lambda!17062))))

(assert (=> bs!73129 (not (= lambda!17063 lambda!16888))))

(assert (=> bs!73128 (not (= lambda!17063 lambda!17025))))

(assert (=> bs!73130 (not (= lambda!17063 lambda!17027))))

(assert (=> bs!73128 (not (= lambda!17063 lambda!17026))))

(assert (=> bs!73128 (not (= lambda!17063 lambda!17023))))

(declare-fun b!631211 () Bool)

(declare-fun e!383140 () Bool)

(assert (=> b!631211 (= e!383140 true)))

(declare-fun b!631210 () Bool)

(declare-fun e!383139 () Bool)

(assert (=> b!631210 (= e!383139 e!383140)))

(assert (=> b!631206 e!383139))

(assert (= b!631210 b!631211))

(assert (= b!631206 b!631210))

(declare-fun lambda!17064 () Int)

(assert (=> bs!73128 (not (= lambda!17064 lambda!17024))))

(assert (=> b!631206 (not (= lambda!17064 lambda!17062))))

(assert (=> bs!73129 (not (= lambda!17064 lambda!16888))))

(assert (=> b!631206 (not (= lambda!17064 lambda!17063))))

(assert (=> bs!73128 (= (= (_1!3853 lt!268806) (_1!3853 lt!268466)) (= lambda!17064 lambda!17025))))

(assert (=> bs!73130 (not (= lambda!17064 lambda!17027))))

(assert (=> bs!73128 (not (= lambda!17064 lambda!17026))))

(assert (=> bs!73128 (not (= lambda!17064 lambda!17023))))

(declare-fun b!631213 () Bool)

(declare-fun e!383142 () Bool)

(assert (=> b!631213 (= e!383142 true)))

(declare-fun b!631212 () Bool)

(declare-fun e!383141 () Bool)

(assert (=> b!631212 (= e!383141 e!383142)))

(assert (=> b!631206 e!383141))

(assert (= b!631212 b!631213))

(assert (= b!631206 b!631212))

(declare-fun lambda!17065 () Int)

(assert (=> b!631206 (not (= lambda!17065 lambda!17064))))

(assert (=> bs!73128 (not (= lambda!17065 lambda!17024))))

(assert (=> b!631206 (not (= lambda!17065 lambda!17062))))

(assert (=> bs!73129 (= lambda!17065 lambda!16888)))

(assert (=> b!631206 (not (= lambda!17065 lambda!17063))))

(assert (=> bs!73128 (not (= lambda!17065 lambda!17025))))

(assert (=> bs!73130 (= lambda!17065 lambda!17027)))

(assert (=> bs!73128 (= lambda!17065 lambda!17026)))

(assert (=> bs!73128 (not (= lambda!17065 lambda!17023))))

(declare-fun bs!73131 () Bool)

(declare-fun d!220890 () Bool)

(assert (= bs!73131 (and d!220890 b!631206)))

(declare-fun lambda!17066 () Int)

(assert (=> bs!73131 (not (= lambda!17066 lambda!17064))))

(declare-fun bs!73132 () Bool)

(assert (= bs!73132 (and d!220890 b!630971)))

(assert (=> bs!73132 (not (= lambda!17066 lambda!17024))))

(assert (=> bs!73131 (= lambda!17066 lambda!17065)))

(assert (=> bs!73131 (not (= lambda!17066 lambda!17062))))

(declare-fun bs!73133 () Bool)

(assert (= bs!73133 (and d!220890 b!630748)))

(assert (=> bs!73133 (= lambda!17066 lambda!16888)))

(assert (=> bs!73131 (not (= lambda!17066 lambda!17063))))

(assert (=> bs!73132 (not (= lambda!17066 lambda!17025))))

(declare-fun bs!73134 () Bool)

(assert (= bs!73134 (and d!220890 d!220804)))

(assert (=> bs!73134 (= lambda!17066 lambda!17027)))

(assert (=> bs!73132 (= lambda!17066 lambda!17026)))

(assert (=> bs!73132 (not (= lambda!17066 lambda!17023))))

(declare-fun b!631196 () Bool)

(assert (=> b!631196 true))

(declare-fun lt!268784 () BalanceConc!4340)

(declare-fun lt!268803 () Unit!11605)

(assert (=> b!631196 (= lt!268803 (forallContained!453 (list!2790 lt!268784) lambda!17064 lt!268806))))

(declare-fun e!383136 () Unit!11605)

(declare-fun err!498 () Unit!11605)

(assert (=> b!631196 (= e!383136 err!498)))

(declare-fun b!631197 () Bool)

(declare-fun e!383134 () Unit!11605)

(declare-fun Unit!11633 () Unit!11605)

(assert (=> b!631197 (= e!383134 Unit!11633)))

(declare-fun b!631198 () Bool)

(assert (=> b!631198 true))

(declare-fun lt!268782 () Unit!11605)

(assert (=> b!631198 (= lt!268782 (forallContained!453 (list!2790 lt!268436) lambda!17062 lt!268806))))

(declare-fun e!383133 () Unit!11605)

(declare-fun err!501 () Unit!11605)

(assert (=> b!631198 (= e!383133 err!501)))

(declare-fun b!631199 () Bool)

(declare-fun Unit!11634 () Unit!11605)

(assert (=> b!631199 (= e!383136 Unit!11634)))

(declare-fun b!631200 () Bool)

(assert (=> b!631200 true))

(declare-fun lt!268800 () Unit!11605)

(assert (=> b!631200 (= lt!268800 (forallContained!453 (list!2790 lt!268436) lambda!17064 lt!268806))))

(declare-fun e!383132 () Unit!11605)

(declare-fun err!499 () Unit!11605)

(assert (=> b!631200 (= e!383132 err!499)))

(declare-fun b!631201 () Bool)

(declare-fun e!383131 () BalanceConc!4340)

(assert (=> b!631201 (= e!383131 lt!268436)))

(declare-fun b!631202 () Bool)

(declare-fun Unit!11635 () Unit!11605)

(assert (=> b!631202 (= e!383133 Unit!11635)))

(declare-fun b!631203 () Bool)

(declare-fun Unit!11636 () Unit!11605)

(assert (=> b!631203 (= e!383132 Unit!11636)))

(declare-fun b!631204 () Bool)

(assert (=> b!631204 true))

(declare-fun lt!268776 () BalanceConc!4340)

(declare-fun lt!268801 () Unit!11605)

(assert (=> b!631204 (= lt!268801 (forallContained!453 (list!2790 lt!268776) lambda!17062 lt!268806))))

(declare-fun err!500 () Unit!11605)

(assert (=> b!631204 (= e!383134 err!500)))

(declare-fun b!631205 () Bool)

(declare-fun e!383130 () Bool)

(declare-fun lt!268793 () List!6582)

(assert (=> b!631205 (= e!383130 (< (size!5159 (filter!106 lt!268793 lambda!17062)) (size!5159 lt!268793)))))

(declare-fun lt!268783 () BalanceConc!4340)

(assert (=> d!220890 (forall!1645 lt!268783 lambda!17066)))

(assert (=> d!220890 (= lt!268783 e!383131)))

(declare-fun c!115947 () Bool)

(assert (=> d!220890 (= c!115947 (<= (size!5160 lt!268436) 1))))

(assert (=> d!220890 (= (sortObjectsByID!0 lt!268436) lt!268783)))

(declare-fun lt!268808 () BalanceConc!4340)

(assert (=> b!631206 (= e!383131 (++!1791 (++!1791 (sortObjectsByID!0 lt!268776) lt!268808) (sortObjectsByID!0 lt!268784)))))

(assert (=> b!631206 (= lt!268806 (apply!1567 lt!268436 (ite (>= (size!5160 lt!268436) 0) (div (size!5160 lt!268436) 2) (- (div (- (size!5160 lt!268436)) 2)))))))

(assert (=> b!631206 (= lt!268776 (filter!107 lt!268436 lambda!17062))))

(assert (=> b!631206 (= lt!268808 (filter!107 lt!268436 lambda!17063))))

(assert (=> b!631206 (= lt!268784 (filter!107 lt!268436 lambda!17064))))

(declare-fun c!115945 () Bool)

(assert (=> b!631206 (= c!115945 (contains!1510 lt!268776 lt!268806))))

(declare-fun lt!268792 () Unit!11605)

(assert (=> b!631206 (= lt!268792 e!383134)))

(declare-fun c!115944 () Bool)

(assert (=> b!631206 (= c!115944 (forall!1645 lt!268436 lambda!17062))))

(declare-fun lt!268778 () Unit!11605)

(assert (=> b!631206 (= lt!268778 e!383133)))

(assert (=> b!631206 (= lt!268793 (list!2790 lt!268436))))

(declare-fun lt!268787 () Unit!11605)

(assert (=> b!631206 (= lt!268787 (lemmaNotForallFilterShorter!1 lt!268793 lambda!17062))))

(declare-fun res!273816 () Bool)

(assert (=> b!631206 (= res!273816 (isEmpty!4620 lt!268793))))

(assert (=> b!631206 (=> res!273816 e!383130)))

(assert (=> b!631206 e!383130))

(declare-fun lt!268779 () Unit!11605)

(assert (=> b!631206 (= lt!268779 lt!268787)))

(declare-fun c!115946 () Bool)

(assert (=> b!631206 (= c!115946 (contains!1510 lt!268784 lt!268806))))

(declare-fun lt!268804 () Unit!11605)

(assert (=> b!631206 (= lt!268804 e!383136)))

(declare-fun c!115943 () Bool)

(assert (=> b!631206 (= c!115943 (forall!1645 lt!268436 lambda!17064))))

(declare-fun lt!268791 () Unit!11605)

(assert (=> b!631206 (= lt!268791 e!383132)))

(declare-fun lt!268796 () List!6582)

(assert (=> b!631206 (= lt!268796 (list!2790 lt!268436))))

(declare-fun lt!268807 () Unit!11605)

(assert (=> b!631206 (= lt!268807 (lemmaNotForallFilterShorter!1 lt!268796 lambda!17064))))

(declare-fun res!273815 () Bool)

(assert (=> b!631206 (= res!273815 (isEmpty!4620 lt!268796))))

(declare-fun e!383135 () Bool)

(assert (=> b!631206 (=> res!273815 e!383135)))

(assert (=> b!631206 e!383135))

(declare-fun lt!268805 () Unit!11605)

(assert (=> b!631206 (= lt!268805 lt!268807)))

(declare-fun lt!268780 () Unit!11605)

(assert (=> b!631206 (= lt!268780 (filterSubseq!1 (list!2790 lt!268436) lambda!17062))))

(declare-fun lt!268810 () Unit!11605)

(assert (=> b!631206 (= lt!268810 (filterSubseq!1 (list!2790 lt!268436) lambda!17063))))

(declare-fun lt!268775 () Unit!11605)

(assert (=> b!631206 (= lt!268775 (filterSubseq!1 (list!2790 lt!268436) lambda!17064))))

(declare-fun lt!268790 () List!6582)

(assert (=> b!631206 (= lt!268790 (list!2790 (filter!107 lt!268436 lambda!17062)))))

(declare-fun lt!268788 () List!6582)

(assert (=> b!631206 (= lt!268788 (list!2790 lt!268436))))

(declare-fun lt!268785 () Unit!11605)

(assert (=> b!631206 (= lt!268785 (lemmaForallSubseq!3 lt!268790 lt!268788 lambda!17065))))

(assert (=> b!631206 (forall!1640 lt!268790 lambda!17065)))

(declare-fun lt!268799 () Unit!11605)

(assert (=> b!631206 (= lt!268799 lt!268785)))

(declare-fun lt!268794 () List!6582)

(assert (=> b!631206 (= lt!268794 (list!2790 (filter!107 lt!268436 lambda!17063)))))

(declare-fun lt!268798 () List!6582)

(assert (=> b!631206 (= lt!268798 (list!2790 lt!268436))))

(declare-fun lt!268809 () Unit!11605)

(assert (=> b!631206 (= lt!268809 (lemmaForallSubseq!3 lt!268794 lt!268798 lambda!17065))))

(assert (=> b!631206 (forall!1640 lt!268794 lambda!17065)))

(declare-fun lt!268789 () Unit!11605)

(assert (=> b!631206 (= lt!268789 lt!268809)))

(declare-fun lt!268797 () List!6582)

(assert (=> b!631206 (= lt!268797 (list!2790 (filter!107 lt!268436 lambda!17064)))))

(declare-fun lt!268786 () List!6582)

(assert (=> b!631206 (= lt!268786 (list!2790 lt!268436))))

(declare-fun lt!268781 () Unit!11605)

(assert (=> b!631206 (= lt!268781 (lemmaForallSubseq!3 lt!268797 lt!268786 lambda!17065))))

(assert (=> b!631206 (forall!1640 lt!268797 lambda!17065)))

(declare-fun lt!268795 () Unit!11605)

(assert (=> b!631206 (= lt!268795 lt!268781)))

(declare-fun lt!268777 () Unit!11605)

(assert (=> b!631206 (= lt!268777 (lemmaConcatPreservesForall!17 (list!2790 (sortObjectsByID!0 lt!268776)) (list!2790 lt!268808) lambda!17065))))

(declare-fun lt!268802 () Unit!11605)

(assert (=> b!631206 (= lt!268802 (lemmaConcatPreservesForall!17 (++!1792 (list!2790 (sortObjectsByID!0 lt!268776)) (list!2790 lt!268808)) (list!2790 (sortObjectsByID!0 lt!268784)) lambda!17065))))

(declare-fun b!631207 () Bool)

(assert (=> b!631207 (= e!383135 (< (size!5159 (filter!106 lt!268796 lambda!17064)) (size!5159 lt!268796)))))

(assert (= (and d!220890 c!115947) b!631201))

(assert (= (and d!220890 (not c!115947)) b!631206))

(assert (= (and b!631206 c!115945) b!631204))

(assert (= (and b!631206 (not c!115945)) b!631197))

(assert (= (and b!631206 c!115944) b!631198))

(assert (= (and b!631206 (not c!115944)) b!631202))

(assert (= (and b!631206 (not res!273816)) b!631205))

(assert (= (and b!631206 c!115946) b!631196))

(assert (= (and b!631206 (not c!115946)) b!631199))

(assert (= (and b!631206 c!115943) b!631200))

(assert (= (and b!631206 (not c!115943)) b!631203))

(assert (= (and b!631206 (not res!273815)) b!631207))

(declare-fun m!900871 () Bool)

(assert (=> b!631206 m!900871))

(declare-fun m!900873 () Bool)

(assert (=> b!631206 m!900873))

(declare-fun m!900875 () Bool)

(assert (=> b!631206 m!900875))

(declare-fun m!900877 () Bool)

(assert (=> b!631206 m!900877))

(declare-fun m!900879 () Bool)

(assert (=> b!631206 m!900879))

(declare-fun m!900881 () Bool)

(assert (=> b!631206 m!900881))

(declare-fun m!900883 () Bool)

(assert (=> b!631206 m!900883))

(declare-fun m!900885 () Bool)

(assert (=> b!631206 m!900885))

(declare-fun m!900887 () Bool)

(assert (=> b!631206 m!900887))

(declare-fun m!900889 () Bool)

(assert (=> b!631206 m!900889))

(declare-fun m!900891 () Bool)

(assert (=> b!631206 m!900891))

(assert (=> b!631206 m!900407))

(declare-fun m!900893 () Bool)

(assert (=> b!631206 m!900893))

(declare-fun m!900895 () Bool)

(assert (=> b!631206 m!900895))

(declare-fun m!900897 () Bool)

(assert (=> b!631206 m!900897))

(declare-fun m!900899 () Bool)

(assert (=> b!631206 m!900899))

(declare-fun m!900901 () Bool)

(assert (=> b!631206 m!900901))

(assert (=> b!631206 m!900885))

(declare-fun m!900903 () Bool)

(assert (=> b!631206 m!900903))

(assert (=> b!631206 m!900407))

(declare-fun m!900905 () Bool)

(assert (=> b!631206 m!900905))

(declare-fun m!900907 () Bool)

(assert (=> b!631206 m!900907))

(assert (=> b!631206 m!900407))

(declare-fun m!900909 () Bool)

(assert (=> b!631206 m!900909))

(declare-fun m!900911 () Bool)

(assert (=> b!631206 m!900911))

(assert (=> b!631206 m!900895))

(assert (=> b!631206 m!900873))

(declare-fun m!900913 () Bool)

(assert (=> b!631206 m!900913))

(declare-fun m!900915 () Bool)

(assert (=> b!631206 m!900915))

(assert (=> b!631206 m!900887))

(assert (=> b!631206 m!900915))

(assert (=> b!631206 m!900873))

(assert (=> b!631206 m!900899))

(assert (=> b!631206 m!900879))

(assert (=> b!631206 m!900407))

(assert (=> b!631206 m!900895))

(declare-fun m!900917 () Bool)

(assert (=> b!631206 m!900917))

(declare-fun m!900919 () Bool)

(assert (=> b!631206 m!900919))

(declare-fun m!900921 () Bool)

(assert (=> b!631206 m!900921))

(assert (=> b!631206 m!900879))

(declare-fun m!900923 () Bool)

(assert (=> b!631206 m!900923))

(declare-fun m!900925 () Bool)

(assert (=> b!631206 m!900925))

(assert (=> b!631206 m!900875))

(assert (=> b!631206 m!900915))

(declare-fun m!900927 () Bool)

(assert (=> b!631206 m!900927))

(declare-fun m!900929 () Bool)

(assert (=> b!631206 m!900929))

(assert (=> b!631206 m!900899))

(assert (=> b!631206 m!900901))

(declare-fun m!900931 () Bool)

(assert (=> b!631206 m!900931))

(declare-fun m!900933 () Bool)

(assert (=> b!631206 m!900933))

(declare-fun m!900935 () Bool)

(assert (=> b!631206 m!900935))

(assert (=> b!631206 m!900923))

(declare-fun m!900937 () Bool)

(assert (=> b!631206 m!900937))

(assert (=> b!631206 m!900923))

(declare-fun m!900939 () Bool)

(assert (=> b!631206 m!900939))

(assert (=> b!631206 m!900901))

(declare-fun m!900941 () Bool)

(assert (=> b!631196 m!900941))

(assert (=> b!631196 m!900941))

(declare-fun m!900943 () Bool)

(assert (=> b!631196 m!900943))

(assert (=> b!631198 m!900407))

(assert (=> b!631198 m!900407))

(declare-fun m!900945 () Bool)

(assert (=> b!631198 m!900945))

(declare-fun m!900947 () Bool)

(assert (=> d!220890 m!900947))

(assert (=> d!220890 m!900935))

(assert (=> b!631200 m!900407))

(assert (=> b!631200 m!900407))

(declare-fun m!900949 () Bool)

(assert (=> b!631200 m!900949))

(declare-fun m!900951 () Bool)

(assert (=> b!631207 m!900951))

(assert (=> b!631207 m!900951))

(declare-fun m!900953 () Bool)

(assert (=> b!631207 m!900953))

(declare-fun m!900955 () Bool)

(assert (=> b!631207 m!900955))

(declare-fun m!900957 () Bool)

(assert (=> b!631204 m!900957))

(assert (=> b!631204 m!900957))

(declare-fun m!900959 () Bool)

(assert (=> b!631204 m!900959))

(declare-fun m!900961 () Bool)

(assert (=> b!631205 m!900961))

(assert (=> b!631205 m!900961))

(declare-fun m!900963 () Bool)

(assert (=> b!631205 m!900963))

(declare-fun m!900965 () Bool)

(assert (=> b!631205 m!900965))

(assert (=> b!630971 d!220890))

(declare-fun d!220892 () Bool)

(declare-fun e!383145 () Bool)

(assert (=> d!220892 e!383145))

(declare-fun res!273819 () Bool)

(assert (=> d!220892 (=> res!273819 e!383145)))

(assert (=> d!220892 (= res!273819 (isEmpty!4620 lt!268456))))

(declare-fun lt!268813 () Unit!11605)

(declare-fun choose!4587 (List!6582 Int) Unit!11605)

(assert (=> d!220892 (= lt!268813 (choose!4587 lt!268456 lambda!17025))))

(assert (=> d!220892 (not (forall!1640 lt!268456 lambda!17025))))

(assert (=> d!220892 (= (lemmaNotForallFilterShorter!1 lt!268456 lambda!17025) lt!268813)))

(declare-fun b!631216 () Bool)

(assert (=> b!631216 (= e!383145 (< (size!5159 (filter!106 lt!268456 lambda!17025)) (size!5159 lt!268456)))))

(assert (= (and d!220892 (not res!273819)) b!631216))

(assert (=> d!220892 m!900325))

(declare-fun m!900967 () Bool)

(assert (=> d!220892 m!900967))

(declare-fun m!900969 () Bool)

(assert (=> d!220892 m!900969))

(assert (=> b!631216 m!900401))

(assert (=> b!631216 m!900401))

(assert (=> b!631216 m!900403))

(assert (=> b!631216 m!900405))

(assert (=> b!630971 d!220892))

(declare-fun d!220894 () Bool)

(assert (=> d!220894 (= (list!2790 lt!268468) (list!2795 (c!115838 lt!268468)))))

(declare-fun bs!73135 () Bool)

(assert (= bs!73135 d!220894))

(declare-fun m!900971 () Bool)

(assert (=> bs!73135 m!900971))

(assert (=> b!630971 d!220894))

(declare-fun d!220896 () Bool)

(declare-fun lt!268816 () tuple2!7178)

(declare-fun apply!1574 (List!6582 Int) tuple2!7178)

(assert (=> d!220896 (= lt!268816 (apply!1574 (list!2790 (map!1385 lt!268183 lambda!16887)) (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2)))))))

(declare-fun apply!1575 (Conc!2164 Int) tuple2!7178)

(assert (=> d!220896 (= lt!268816 (apply!1575 (c!115838 (map!1385 lt!268183 lambda!16887)) (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2)))))))

(declare-fun e!383148 () Bool)

(assert (=> d!220896 e!383148))

(declare-fun res!273822 () Bool)

(assert (=> d!220896 (=> (not res!273822) (not e!383148))))

(assert (=> d!220896 (= res!273822 (<= 0 (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2)))))))

(assert (=> d!220896 (= (apply!1567 (map!1385 lt!268183 lambda!16887) (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2)))) lt!268816)))

(declare-fun b!631219 () Bool)

(assert (=> b!631219 (= e!383148 (< (ite (>= (size!5160 (map!1385 lt!268183 lambda!16887)) 0) (div (size!5160 (map!1385 lt!268183 lambda!16887)) 2) (- (div (- (size!5160 (map!1385 lt!268183 lambda!16887))) 2))) (size!5160 (map!1385 lt!268183 lambda!16887))))))

(assert (= (and d!220896 res!273822) b!631219))

(assert (=> d!220896 m!899999))

(assert (=> d!220896 m!900335))

(assert (=> d!220896 m!900335))

(declare-fun m!900973 () Bool)

(assert (=> d!220896 m!900973))

(declare-fun m!900975 () Bool)

(assert (=> d!220896 m!900975))

(assert (=> b!631219 m!899999))

(assert (=> b!631219 m!900385))

(assert (=> b!630971 d!220896))

(declare-fun d!220898 () Bool)

(declare-fun lt!268819 () Bool)

(declare-fun contains!1512 (List!6582 tuple2!7178) Bool)

(assert (=> d!220898 (= lt!268819 (contains!1512 (list!2790 lt!268436) lt!268466))))

(declare-fun contains!1513 (Conc!2164 tuple2!7178) Bool)

(assert (=> d!220898 (= lt!268819 (contains!1513 (c!115838 lt!268436) lt!268466))))

(assert (=> d!220898 (= (contains!1510 lt!268436 lt!268466) lt!268819)))

(declare-fun bs!73136 () Bool)

(assert (= bs!73136 d!220898))

(assert (=> bs!73136 m!900407))

(assert (=> bs!73136 m!900407))

(declare-fun m!900977 () Bool)

(assert (=> bs!73136 m!900977))

(declare-fun m!900979 () Bool)

(assert (=> bs!73136 m!900979))

(assert (=> b!630971 d!220898))

(declare-fun d!220900 () Bool)

(assert (=> d!220900 (= (isEmpty!4620 lt!268453) (is-Nil!6568 lt!268453))))

(assert (=> b!630971 d!220900))

(declare-fun d!220902 () Bool)

(assert (=> d!220902 (= (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17024)) (list!2795 (c!115838 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17024))))))

(declare-fun bs!73137 () Bool)

(assert (= bs!73137 d!220902))

(declare-fun m!900981 () Bool)

(assert (=> bs!73137 m!900981))

(assert (=> b!630971 d!220902))

(declare-fun d!220904 () Bool)

(declare-fun lt!268822 () Bool)

(assert (=> d!220904 (= lt!268822 (forall!1640 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025))))

(declare-fun forall!1654 (Conc!2164 Int) Bool)

(assert (=> d!220904 (= lt!268822 (forall!1654 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17025))))

(assert (=> d!220904 (= (forall!1645 (map!1385 lt!268183 lambda!16887) lambda!17025) lt!268822)))

(declare-fun bs!73138 () Bool)

(assert (= bs!73138 d!220904))

(assert (=> bs!73138 m!899999))

(assert (=> bs!73138 m!900335))

(assert (=> bs!73138 m!900335))

(declare-fun m!900983 () Bool)

(assert (=> bs!73138 m!900983))

(declare-fun m!900985 () Bool)

(assert (=> bs!73138 m!900985))

(assert (=> b!630971 d!220904))

(declare-fun d!220906 () Bool)

(declare-fun e!383149 () Bool)

(assert (=> d!220906 e!383149))

(declare-fun res!273823 () Bool)

(assert (=> d!220906 (=> res!273823 e!383149)))

(assert (=> d!220906 (= res!273823 (isEmpty!4620 lt!268453))))

(declare-fun lt!268823 () Unit!11605)

(assert (=> d!220906 (= lt!268823 (choose!4587 lt!268453 lambda!17023))))

(assert (=> d!220906 (not (forall!1640 lt!268453 lambda!17023))))

(assert (=> d!220906 (= (lemmaNotForallFilterShorter!1 lt!268453 lambda!17023) lt!268823)))

(declare-fun b!631220 () Bool)

(assert (=> b!631220 (= e!383149 (< (size!5159 (filter!106 lt!268453 lambda!17023)) (size!5159 lt!268453)))))

(assert (= (and d!220906 (not res!273823)) b!631220))

(assert (=> d!220906 m!900371))

(declare-fun m!900987 () Bool)

(assert (=> d!220906 m!900987))

(declare-fun m!900989 () Bool)

(assert (=> d!220906 m!900989))

(assert (=> b!631220 m!900411))

(assert (=> b!631220 m!900411))

(assert (=> b!631220 m!900413))

(assert (=> b!631220 m!900415))

(assert (=> b!630971 d!220906))

(declare-fun d!220908 () Bool)

(declare-fun res!273824 () Bool)

(declare-fun e!383150 () Bool)

(assert (=> d!220908 (=> res!273824 e!383150)))

(assert (=> d!220908 (= res!273824 (is-Nil!6568 lt!268450))))

(assert (=> d!220908 (= (forall!1640 lt!268450 lambda!17026) e!383150)))

(declare-fun b!631221 () Bool)

(declare-fun e!383151 () Bool)

(assert (=> b!631221 (= e!383150 e!383151)))

(declare-fun res!273825 () Bool)

(assert (=> b!631221 (=> (not res!273825) (not e!383151))))

(assert (=> b!631221 (= res!273825 (dynLambda!3677 lambda!17026 (h!11969 lt!268450)))))

(declare-fun b!631222 () Bool)

(assert (=> b!631222 (= e!383151 (forall!1640 (t!83056 lt!268450) lambda!17026))))

(assert (= (and d!220908 (not res!273824)) b!631221))

(assert (= (and b!631221 res!273825) b!631222))

(declare-fun b_lambda!24787 () Bool)

(assert (=> (not b_lambda!24787) (not b!631221)))

(declare-fun m!900991 () Bool)

(assert (=> b!631221 m!900991))

(declare-fun m!900993 () Bool)

(assert (=> b!631222 m!900993))

(assert (=> b!630971 d!220908))

(declare-fun d!220910 () Bool)

(assert (=> d!220910 (= (list!2790 (map!1385 lt!268183 lambda!16887)) (list!2795 (c!115838 (map!1385 lt!268183 lambda!16887))))))

(declare-fun bs!73139 () Bool)

(assert (= bs!73139 d!220910))

(declare-fun m!900995 () Bool)

(assert (=> bs!73139 m!900995))

(assert (=> b!630971 d!220910))

(declare-fun d!220912 () Bool)

(declare-fun e!383152 () Bool)

(assert (=> d!220912 e!383152))

(declare-fun res!273826 () Bool)

(assert (=> d!220912 (=> (not res!273826) (not e!383152))))

(assert (=> d!220912 (= res!273826 (isBalanced!576 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17025)))))

(declare-fun lt!268824 () BalanceConc!4340)

(assert (=> d!220912 (= lt!268824 (BalanceConc!4341 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17025)))))

(assert (=> d!220912 (= (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17025) lt!268824)))

(declare-fun b!631223 () Bool)

(assert (=> b!631223 (= e!383152 (= (list!2790 lt!268824) (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025)))))

(assert (= (and d!220912 res!273826) b!631223))

(declare-fun m!900997 () Bool)

(assert (=> d!220912 m!900997))

(assert (=> d!220912 m!900997))

(declare-fun m!900999 () Bool)

(assert (=> d!220912 m!900999))

(declare-fun m!901001 () Bool)

(assert (=> b!631223 m!901001))

(assert (=> b!631223 m!899999))

(assert (=> b!631223 m!900335))

(assert (=> b!631223 m!900335))

(assert (=> b!631223 m!900865))

(assert (=> b!630971 d!220912))

(declare-fun d!220914 () Bool)

(declare-fun e!383157 () Bool)

(assert (=> d!220914 e!383157))

(declare-fun res!273832 () Bool)

(assert (=> d!220914 (=> (not res!273832) (not e!383157))))

(declare-fun lt!268827 () List!6582)

(assert (=> d!220914 (= res!273832 (= (content!1162 lt!268827) (set.union (content!1162 (list!2790 (sortObjectsByID!0 lt!268436))) (content!1162 (list!2790 lt!268468)))))))

(declare-fun e!383158 () List!6582)

(assert (=> d!220914 (= lt!268827 e!383158)))

(declare-fun c!115950 () Bool)

(assert (=> d!220914 (= c!115950 (is-Nil!6568 (list!2790 (sortObjectsByID!0 lt!268436))))))

(assert (=> d!220914 (= (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) lt!268827)))

(declare-fun b!631232 () Bool)

(assert (=> b!631232 (= e!383158 (list!2790 lt!268468))))

(declare-fun b!631235 () Bool)

(assert (=> b!631235 (= e!383157 (or (not (= (list!2790 lt!268468) Nil!6568)) (= lt!268827 (list!2790 (sortObjectsByID!0 lt!268436)))))))

(declare-fun b!631234 () Bool)

(declare-fun res!273831 () Bool)

(assert (=> b!631234 (=> (not res!273831) (not e!383157))))

(assert (=> b!631234 (= res!273831 (= (size!5159 lt!268827) (+ (size!5159 (list!2790 (sortObjectsByID!0 lt!268436))) (size!5159 (list!2790 lt!268468)))))))

(declare-fun b!631233 () Bool)

(assert (=> b!631233 (= e!383158 (Cons!6568 (h!11969 (list!2790 (sortObjectsByID!0 lt!268436))) (++!1792 (t!83056 (list!2790 (sortObjectsByID!0 lt!268436))) (list!2790 lt!268468))))))

(assert (= (and d!220914 c!115950) b!631232))

(assert (= (and d!220914 (not c!115950)) b!631233))

(assert (= (and d!220914 res!273832) b!631234))

(assert (= (and b!631234 res!273831) b!631235))

(declare-fun m!901003 () Bool)

(assert (=> d!220914 m!901003))

(assert (=> d!220914 m!900343))

(declare-fun m!901005 () Bool)

(assert (=> d!220914 m!901005))

(assert (=> d!220914 m!900345))

(declare-fun m!901007 () Bool)

(assert (=> d!220914 m!901007))

(declare-fun m!901009 () Bool)

(assert (=> b!631234 m!901009))

(assert (=> b!631234 m!900343))

(declare-fun m!901011 () Bool)

(assert (=> b!631234 m!901011))

(assert (=> b!631234 m!900345))

(declare-fun m!901013 () Bool)

(assert (=> b!631234 m!901013))

(assert (=> b!631233 m!900345))

(declare-fun m!901015 () Bool)

(assert (=> b!631233 m!901015))

(assert (=> b!630971 d!220914))

(declare-fun d!220916 () Bool)

(assert (=> d!220916 (forall!1640 lt!268457 lambda!17026)))

(declare-fun lt!268830 () Unit!11605)

(declare-fun choose!4588 (List!6582 List!6582 Int) Unit!11605)

(assert (=> d!220916 (= lt!268830 (choose!4588 lt!268457 lt!268446 lambda!17026))))

(assert (=> d!220916 (forall!1640 lt!268446 lambda!17026)))

(assert (=> d!220916 (= (lemmaForallSubseq!3 lt!268457 lt!268446 lambda!17026) lt!268830)))

(declare-fun bs!73140 () Bool)

(assert (= bs!73140 d!220916))

(assert (=> bs!73140 m!900387))

(declare-fun m!901017 () Bool)

(assert (=> bs!73140 m!901017))

(declare-fun m!901019 () Bool)

(assert (=> bs!73140 m!901019))

(assert (=> b!630971 d!220916))

(declare-fun bs!73141 () Bool)

(declare-fun b!631246 () Bool)

(assert (= bs!73141 (and b!631246 d!220890)))

(declare-fun lambda!17067 () Int)

(assert (=> bs!73141 (not (= lambda!17067 lambda!17066))))

(declare-fun bs!73142 () Bool)

(assert (= bs!73142 (and b!631246 b!631206)))

(assert (=> bs!73142 (not (= lambda!17067 lambda!17064))))

(declare-fun bs!73143 () Bool)

(assert (= bs!73143 (and b!631246 b!630971)))

(assert (=> bs!73143 (not (= lambda!17067 lambda!17024))))

(assert (=> bs!73142 (not (= lambda!17067 lambda!17065))))

(declare-fun lt!268862 () tuple2!7178)

(assert (=> bs!73142 (= (= (_1!3853 lt!268862) (_1!3853 lt!268806)) (= lambda!17067 lambda!17062))))

(declare-fun bs!73144 () Bool)

(assert (= bs!73144 (and b!631246 b!630748)))

(assert (=> bs!73144 (not (= lambda!17067 lambda!16888))))

(assert (=> bs!73142 (not (= lambda!17067 lambda!17063))))

(assert (=> bs!73143 (not (= lambda!17067 lambda!17025))))

(declare-fun bs!73145 () Bool)

(assert (= bs!73145 (and b!631246 d!220804)))

(assert (=> bs!73145 (not (= lambda!17067 lambda!17027))))

(assert (=> bs!73143 (not (= lambda!17067 lambda!17026))))

(assert (=> bs!73143 (= (= (_1!3853 lt!268862) (_1!3853 lt!268466)) (= lambda!17067 lambda!17023))))

(declare-fun b!631249 () Bool)

(declare-fun e!383167 () Bool)

(assert (=> b!631249 (= e!383167 true)))

(declare-fun b!631248 () Bool)

(declare-fun e!383166 () Bool)

(assert (=> b!631248 (= e!383166 e!383167)))

(assert (=> b!631246 e!383166))

(assert (= b!631248 b!631249))

(assert (= b!631246 b!631248))

(declare-fun lambda!17068 () Int)

(assert (=> bs!73141 (not (= lambda!17068 lambda!17066))))

(assert (=> bs!73142 (not (= lambda!17068 lambda!17064))))

(assert (=> bs!73143 (= (= (_1!3853 lt!268862) (_1!3853 lt!268466)) (= lambda!17068 lambda!17024))))

(assert (=> bs!73142 (not (= lambda!17068 lambda!17065))))

(assert (=> bs!73142 (not (= lambda!17068 lambda!17062))))

(assert (=> bs!73144 (not (= lambda!17068 lambda!16888))))

(assert (=> bs!73142 (= (= (_1!3853 lt!268862) (_1!3853 lt!268806)) (= lambda!17068 lambda!17063))))

(assert (=> b!631246 (not (= lambda!17068 lambda!17067))))

(assert (=> bs!73143 (not (= lambda!17068 lambda!17025))))

(assert (=> bs!73145 (not (= lambda!17068 lambda!17027))))

(assert (=> bs!73143 (not (= lambda!17068 lambda!17026))))

(assert (=> bs!73143 (not (= lambda!17068 lambda!17023))))

(declare-fun b!631251 () Bool)

(declare-fun e!383169 () Bool)

(assert (=> b!631251 (= e!383169 true)))

(declare-fun b!631250 () Bool)

(declare-fun e!383168 () Bool)

(assert (=> b!631250 (= e!383168 e!383169)))

(assert (=> b!631246 e!383168))

(assert (= b!631250 b!631251))

(assert (= b!631246 b!631250))

(declare-fun lambda!17069 () Int)

(assert (=> bs!73141 (not (= lambda!17069 lambda!17066))))

(assert (=> bs!73142 (= (= (_1!3853 lt!268862) (_1!3853 lt!268806)) (= lambda!17069 lambda!17064))))

(assert (=> bs!73143 (not (= lambda!17069 lambda!17024))))

(assert (=> bs!73142 (not (= lambda!17069 lambda!17065))))

(assert (=> bs!73142 (not (= lambda!17069 lambda!17062))))

(assert (=> bs!73144 (not (= lambda!17069 lambda!16888))))

(assert (=> bs!73142 (not (= lambda!17069 lambda!17063))))

(assert (=> b!631246 (not (= lambda!17069 lambda!17067))))

(assert (=> bs!73143 (= (= (_1!3853 lt!268862) (_1!3853 lt!268466)) (= lambda!17069 lambda!17025))))

(assert (=> bs!73145 (not (= lambda!17069 lambda!17027))))

(assert (=> bs!73143 (not (= lambda!17069 lambda!17026))))

(assert (=> b!631246 (not (= lambda!17069 lambda!17068))))

(assert (=> bs!73143 (not (= lambda!17069 lambda!17023))))

(declare-fun b!631253 () Bool)

(declare-fun e!383171 () Bool)

(assert (=> b!631253 (= e!383171 true)))

(declare-fun b!631252 () Bool)

(declare-fun e!383170 () Bool)

(assert (=> b!631252 (= e!383170 e!383171)))

(assert (=> b!631246 e!383170))

(assert (= b!631252 b!631253))

(assert (= b!631246 b!631252))

(declare-fun lambda!17070 () Int)

(assert (=> bs!73141 (= lambda!17070 lambda!17066)))

(assert (=> bs!73142 (not (= lambda!17070 lambda!17064))))

(assert (=> bs!73143 (not (= lambda!17070 lambda!17024))))

(assert (=> bs!73142 (= lambda!17070 lambda!17065)))

(assert (=> bs!73142 (not (= lambda!17070 lambda!17062))))

(assert (=> bs!73144 (= lambda!17070 lambda!16888)))

(assert (=> bs!73142 (not (= lambda!17070 lambda!17063))))

(assert (=> b!631246 (not (= lambda!17070 lambda!17067))))

(assert (=> bs!73143 (not (= lambda!17070 lambda!17025))))

(assert (=> bs!73145 (= lambda!17070 lambda!17027)))

(assert (=> bs!73143 (= lambda!17070 lambda!17026)))

(assert (=> b!631246 (not (= lambda!17070 lambda!17069))))

(assert (=> b!631246 (not (= lambda!17070 lambda!17068))))

(assert (=> bs!73143 (not (= lambda!17070 lambda!17023))))

(declare-fun bs!73146 () Bool)

(declare-fun d!220918 () Bool)

(assert (= bs!73146 (and d!220918 d!220890)))

(declare-fun lambda!17071 () Int)

(assert (=> bs!73146 (= lambda!17071 lambda!17066)))

(declare-fun bs!73147 () Bool)

(assert (= bs!73147 (and d!220918 b!631206)))

(assert (=> bs!73147 (not (= lambda!17071 lambda!17064))))

(declare-fun bs!73148 () Bool)

(assert (= bs!73148 (and d!220918 b!630971)))

(assert (=> bs!73148 (not (= lambda!17071 lambda!17024))))

(assert (=> bs!73147 (= lambda!17071 lambda!17065)))

(assert (=> bs!73147 (not (= lambda!17071 lambda!17062))))

(declare-fun bs!73149 () Bool)

(assert (= bs!73149 (and d!220918 b!631246)))

(assert (=> bs!73149 (= lambda!17071 lambda!17070)))

(declare-fun bs!73150 () Bool)

(assert (= bs!73150 (and d!220918 b!630748)))

(assert (=> bs!73150 (= lambda!17071 lambda!16888)))

(assert (=> bs!73147 (not (= lambda!17071 lambda!17063))))

(assert (=> bs!73149 (not (= lambda!17071 lambda!17067))))

(assert (=> bs!73148 (not (= lambda!17071 lambda!17025))))

(declare-fun bs!73151 () Bool)

(assert (= bs!73151 (and d!220918 d!220804)))

(assert (=> bs!73151 (= lambda!17071 lambda!17027)))

(assert (=> bs!73148 (= lambda!17071 lambda!17026)))

(assert (=> bs!73149 (not (= lambda!17071 lambda!17069))))

(assert (=> bs!73149 (not (= lambda!17071 lambda!17068))))

(assert (=> bs!73148 (not (= lambda!17071 lambda!17023))))

(declare-fun b!631236 () Bool)

(assert (=> b!631236 true))

(declare-fun lt!268840 () BalanceConc!4340)

(declare-fun lt!268859 () Unit!11605)

(assert (=> b!631236 (= lt!268859 (forallContained!453 (list!2790 lt!268840) lambda!17069 lt!268862))))

(declare-fun e!383165 () Unit!11605)

(declare-fun err!502 () Unit!11605)

(assert (=> b!631236 (= e!383165 err!502)))

(declare-fun b!631237 () Bool)

(declare-fun e!383163 () Unit!11605)

(declare-fun Unit!11637 () Unit!11605)

(assert (=> b!631237 (= e!383163 Unit!11637)))

(declare-fun b!631238 () Bool)

(assert (=> b!631238 true))

(declare-fun lt!268838 () Unit!11605)

(assert (=> b!631238 (= lt!268838 (forallContained!453 (list!2790 lt!268444) lambda!17067 lt!268862))))

(declare-fun e!383162 () Unit!11605)

(declare-fun err!505 () Unit!11605)

(assert (=> b!631238 (= e!383162 err!505)))

(declare-fun b!631239 () Bool)

(declare-fun Unit!11638 () Unit!11605)

(assert (=> b!631239 (= e!383165 Unit!11638)))

(declare-fun b!631240 () Bool)

(assert (=> b!631240 true))

(declare-fun lt!268856 () Unit!11605)

(assert (=> b!631240 (= lt!268856 (forallContained!453 (list!2790 lt!268444) lambda!17069 lt!268862))))

(declare-fun e!383161 () Unit!11605)

(declare-fun err!503 () Unit!11605)

(assert (=> b!631240 (= e!383161 err!503)))

(declare-fun b!631241 () Bool)

(declare-fun e!383160 () BalanceConc!4340)

(assert (=> b!631241 (= e!383160 lt!268444)))

(declare-fun b!631242 () Bool)

(declare-fun Unit!11639 () Unit!11605)

(assert (=> b!631242 (= e!383162 Unit!11639)))

(declare-fun b!631243 () Bool)

(declare-fun Unit!11640 () Unit!11605)

(assert (=> b!631243 (= e!383161 Unit!11640)))

(declare-fun b!631244 () Bool)

(assert (=> b!631244 true))

(declare-fun lt!268857 () Unit!11605)

(declare-fun lt!268832 () BalanceConc!4340)

(assert (=> b!631244 (= lt!268857 (forallContained!453 (list!2790 lt!268832) lambda!17067 lt!268862))))

(declare-fun err!504 () Unit!11605)

(assert (=> b!631244 (= e!383163 err!504)))

(declare-fun b!631245 () Bool)

(declare-fun e!383159 () Bool)

(declare-fun lt!268849 () List!6582)

(assert (=> b!631245 (= e!383159 (< (size!5159 (filter!106 lt!268849 lambda!17067)) (size!5159 lt!268849)))))

(declare-fun lt!268839 () BalanceConc!4340)

(assert (=> d!220918 (forall!1645 lt!268839 lambda!17071)))

(assert (=> d!220918 (= lt!268839 e!383160)))

(declare-fun c!115955 () Bool)

(assert (=> d!220918 (= c!115955 (<= (size!5160 lt!268444) 1))))

(assert (=> d!220918 (= (sortObjectsByID!0 lt!268444) lt!268839)))

(declare-fun lt!268864 () BalanceConc!4340)

(assert (=> b!631246 (= e!383160 (++!1791 (++!1791 (sortObjectsByID!0 lt!268832) lt!268864) (sortObjectsByID!0 lt!268840)))))

(assert (=> b!631246 (= lt!268862 (apply!1567 lt!268444 (ite (>= (size!5160 lt!268444) 0) (div (size!5160 lt!268444) 2) (- (div (- (size!5160 lt!268444)) 2)))))))

(assert (=> b!631246 (= lt!268832 (filter!107 lt!268444 lambda!17067))))

(assert (=> b!631246 (= lt!268864 (filter!107 lt!268444 lambda!17068))))

(assert (=> b!631246 (= lt!268840 (filter!107 lt!268444 lambda!17069))))

(declare-fun c!115953 () Bool)

(assert (=> b!631246 (= c!115953 (contains!1510 lt!268832 lt!268862))))

(declare-fun lt!268848 () Unit!11605)

(assert (=> b!631246 (= lt!268848 e!383163)))

(declare-fun c!115952 () Bool)

(assert (=> b!631246 (= c!115952 (forall!1645 lt!268444 lambda!17067))))

(declare-fun lt!268834 () Unit!11605)

(assert (=> b!631246 (= lt!268834 e!383162)))

(assert (=> b!631246 (= lt!268849 (list!2790 lt!268444))))

(declare-fun lt!268843 () Unit!11605)

(assert (=> b!631246 (= lt!268843 (lemmaNotForallFilterShorter!1 lt!268849 lambda!17067))))

(declare-fun res!273834 () Bool)

(assert (=> b!631246 (= res!273834 (isEmpty!4620 lt!268849))))

(assert (=> b!631246 (=> res!273834 e!383159)))

(assert (=> b!631246 e!383159))

(declare-fun lt!268835 () Unit!11605)

(assert (=> b!631246 (= lt!268835 lt!268843)))

(declare-fun c!115954 () Bool)

(assert (=> b!631246 (= c!115954 (contains!1510 lt!268840 lt!268862))))

(declare-fun lt!268860 () Unit!11605)

(assert (=> b!631246 (= lt!268860 e!383165)))

(declare-fun c!115951 () Bool)

(assert (=> b!631246 (= c!115951 (forall!1645 lt!268444 lambda!17069))))

(declare-fun lt!268847 () Unit!11605)

(assert (=> b!631246 (= lt!268847 e!383161)))

(declare-fun lt!268852 () List!6582)

(assert (=> b!631246 (= lt!268852 (list!2790 lt!268444))))

(declare-fun lt!268863 () Unit!11605)

(assert (=> b!631246 (= lt!268863 (lemmaNotForallFilterShorter!1 lt!268852 lambda!17069))))

(declare-fun res!273833 () Bool)

(assert (=> b!631246 (= res!273833 (isEmpty!4620 lt!268852))))

(declare-fun e!383164 () Bool)

(assert (=> b!631246 (=> res!273833 e!383164)))

(assert (=> b!631246 e!383164))

(declare-fun lt!268861 () Unit!11605)

(assert (=> b!631246 (= lt!268861 lt!268863)))

(declare-fun lt!268836 () Unit!11605)

(assert (=> b!631246 (= lt!268836 (filterSubseq!1 (list!2790 lt!268444) lambda!17067))))

(declare-fun lt!268866 () Unit!11605)

(assert (=> b!631246 (= lt!268866 (filterSubseq!1 (list!2790 lt!268444) lambda!17068))))

(declare-fun lt!268831 () Unit!11605)

(assert (=> b!631246 (= lt!268831 (filterSubseq!1 (list!2790 lt!268444) lambda!17069))))

(declare-fun lt!268846 () List!6582)

(assert (=> b!631246 (= lt!268846 (list!2790 (filter!107 lt!268444 lambda!17067)))))

(declare-fun lt!268844 () List!6582)

(assert (=> b!631246 (= lt!268844 (list!2790 lt!268444))))

(declare-fun lt!268841 () Unit!11605)

(assert (=> b!631246 (= lt!268841 (lemmaForallSubseq!3 lt!268846 lt!268844 lambda!17070))))

(assert (=> b!631246 (forall!1640 lt!268846 lambda!17070)))

(declare-fun lt!268855 () Unit!11605)

(assert (=> b!631246 (= lt!268855 lt!268841)))

(declare-fun lt!268850 () List!6582)

(assert (=> b!631246 (= lt!268850 (list!2790 (filter!107 lt!268444 lambda!17068)))))

(declare-fun lt!268854 () List!6582)

(assert (=> b!631246 (= lt!268854 (list!2790 lt!268444))))

(declare-fun lt!268865 () Unit!11605)

(assert (=> b!631246 (= lt!268865 (lemmaForallSubseq!3 lt!268850 lt!268854 lambda!17070))))

(assert (=> b!631246 (forall!1640 lt!268850 lambda!17070)))

(declare-fun lt!268845 () Unit!11605)

(assert (=> b!631246 (= lt!268845 lt!268865)))

(declare-fun lt!268853 () List!6582)

(assert (=> b!631246 (= lt!268853 (list!2790 (filter!107 lt!268444 lambda!17069)))))

(declare-fun lt!268842 () List!6582)

(assert (=> b!631246 (= lt!268842 (list!2790 lt!268444))))

(declare-fun lt!268837 () Unit!11605)

(assert (=> b!631246 (= lt!268837 (lemmaForallSubseq!3 lt!268853 lt!268842 lambda!17070))))

(assert (=> b!631246 (forall!1640 lt!268853 lambda!17070)))

(declare-fun lt!268851 () Unit!11605)

(assert (=> b!631246 (= lt!268851 lt!268837)))

(declare-fun lt!268833 () Unit!11605)

(assert (=> b!631246 (= lt!268833 (lemmaConcatPreservesForall!17 (list!2790 (sortObjectsByID!0 lt!268832)) (list!2790 lt!268864) lambda!17070))))

(declare-fun lt!268858 () Unit!11605)

(assert (=> b!631246 (= lt!268858 (lemmaConcatPreservesForall!17 (++!1792 (list!2790 (sortObjectsByID!0 lt!268832)) (list!2790 lt!268864)) (list!2790 (sortObjectsByID!0 lt!268840)) lambda!17070))))

(declare-fun b!631247 () Bool)

(assert (=> b!631247 (= e!383164 (< (size!5159 (filter!106 lt!268852 lambda!17069)) (size!5159 lt!268852)))))

(assert (= (and d!220918 c!115955) b!631241))

(assert (= (and d!220918 (not c!115955)) b!631246))

(assert (= (and b!631246 c!115953) b!631244))

(assert (= (and b!631246 (not c!115953)) b!631237))

(assert (= (and b!631246 c!115952) b!631238))

(assert (= (and b!631246 (not c!115952)) b!631242))

(assert (= (and b!631246 (not res!273834)) b!631245))

(assert (= (and b!631246 c!115954) b!631236))

(assert (= (and b!631246 (not c!115954)) b!631239))

(assert (= (and b!631246 c!115951) b!631240))

(assert (= (and b!631246 (not c!115951)) b!631243))

(assert (= (and b!631246 (not res!273833)) b!631247))

(declare-fun m!901021 () Bool)

(assert (=> b!631246 m!901021))

(declare-fun m!901023 () Bool)

(assert (=> b!631246 m!901023))

(declare-fun m!901025 () Bool)

(assert (=> b!631246 m!901025))

(declare-fun m!901027 () Bool)

(assert (=> b!631246 m!901027))

(declare-fun m!901029 () Bool)

(assert (=> b!631246 m!901029))

(declare-fun m!901031 () Bool)

(assert (=> b!631246 m!901031))

(declare-fun m!901033 () Bool)

(assert (=> b!631246 m!901033))

(declare-fun m!901035 () Bool)

(assert (=> b!631246 m!901035))

(declare-fun m!901037 () Bool)

(assert (=> b!631246 m!901037))

(declare-fun m!901039 () Bool)

(assert (=> b!631246 m!901039))

(declare-fun m!901041 () Bool)

(assert (=> b!631246 m!901041))

(assert (=> b!631246 m!900391))

(declare-fun m!901043 () Bool)

(assert (=> b!631246 m!901043))

(declare-fun m!901045 () Bool)

(assert (=> b!631246 m!901045))

(declare-fun m!901047 () Bool)

(assert (=> b!631246 m!901047))

(declare-fun m!901049 () Bool)

(assert (=> b!631246 m!901049))

(declare-fun m!901051 () Bool)

(assert (=> b!631246 m!901051))

(assert (=> b!631246 m!901035))

(declare-fun m!901053 () Bool)

(assert (=> b!631246 m!901053))

(assert (=> b!631246 m!900391))

(declare-fun m!901055 () Bool)

(assert (=> b!631246 m!901055))

(declare-fun m!901057 () Bool)

(assert (=> b!631246 m!901057))

(assert (=> b!631246 m!900391))

(declare-fun m!901059 () Bool)

(assert (=> b!631246 m!901059))

(declare-fun m!901061 () Bool)

(assert (=> b!631246 m!901061))

(assert (=> b!631246 m!901045))

(assert (=> b!631246 m!901023))

(declare-fun m!901063 () Bool)

(assert (=> b!631246 m!901063))

(declare-fun m!901065 () Bool)

(assert (=> b!631246 m!901065))

(assert (=> b!631246 m!901037))

(assert (=> b!631246 m!901065))

(assert (=> b!631246 m!901023))

(assert (=> b!631246 m!901049))

(assert (=> b!631246 m!901029))

(assert (=> b!631246 m!900391))

(assert (=> b!631246 m!901045))

(declare-fun m!901067 () Bool)

(assert (=> b!631246 m!901067))

(declare-fun m!901069 () Bool)

(assert (=> b!631246 m!901069))

(declare-fun m!901071 () Bool)

(assert (=> b!631246 m!901071))

(assert (=> b!631246 m!901029))

(declare-fun m!901073 () Bool)

(assert (=> b!631246 m!901073))

(declare-fun m!901075 () Bool)

(assert (=> b!631246 m!901075))

(assert (=> b!631246 m!901025))

(assert (=> b!631246 m!901065))

(declare-fun m!901077 () Bool)

(assert (=> b!631246 m!901077))

(declare-fun m!901079 () Bool)

(assert (=> b!631246 m!901079))

(assert (=> b!631246 m!901049))

(assert (=> b!631246 m!901051))

(declare-fun m!901081 () Bool)

(assert (=> b!631246 m!901081))

(declare-fun m!901083 () Bool)

(assert (=> b!631246 m!901083))

(declare-fun m!901085 () Bool)

(assert (=> b!631246 m!901085))

(assert (=> b!631246 m!901073))

(declare-fun m!901087 () Bool)

(assert (=> b!631246 m!901087))

(assert (=> b!631246 m!901073))

(declare-fun m!901089 () Bool)

(assert (=> b!631246 m!901089))

(assert (=> b!631246 m!901051))

(declare-fun m!901091 () Bool)

(assert (=> b!631236 m!901091))

(assert (=> b!631236 m!901091))

(declare-fun m!901093 () Bool)

(assert (=> b!631236 m!901093))

(assert (=> b!631238 m!900391))

(assert (=> b!631238 m!900391))

(declare-fun m!901095 () Bool)

(assert (=> b!631238 m!901095))

(declare-fun m!901097 () Bool)

(assert (=> d!220918 m!901097))

(assert (=> d!220918 m!901085))

(assert (=> b!631240 m!900391))

(assert (=> b!631240 m!900391))

(declare-fun m!901099 () Bool)

(assert (=> b!631240 m!901099))

(declare-fun m!901101 () Bool)

(assert (=> b!631247 m!901101))

(assert (=> b!631247 m!901101))

(declare-fun m!901103 () Bool)

(assert (=> b!631247 m!901103))

(declare-fun m!901105 () Bool)

(assert (=> b!631247 m!901105))

(declare-fun m!901107 () Bool)

(assert (=> b!631244 m!901107))

(assert (=> b!631244 m!901107))

(declare-fun m!901109 () Bool)

(assert (=> b!631244 m!901109))

(declare-fun m!901111 () Bool)

(assert (=> b!631245 m!901111))

(assert (=> b!631245 m!901111))

(declare-fun m!901113 () Bool)

(assert (=> b!631245 m!901113))

(declare-fun m!901115 () Bool)

(assert (=> b!631245 m!901115))

(assert (=> b!630971 d!220918))

(declare-fun d!220920 () Bool)

(assert (=> d!220920 (forall!1640 lt!268454 lambda!17026)))

(declare-fun lt!268867 () Unit!11605)

(assert (=> d!220920 (= lt!268867 (choose!4588 lt!268454 lt!268458 lambda!17026))))

(assert (=> d!220920 (forall!1640 lt!268458 lambda!17026)))

(assert (=> d!220920 (= (lemmaForallSubseq!3 lt!268454 lt!268458 lambda!17026) lt!268867)))

(declare-fun bs!73152 () Bool)

(assert (= bs!73152 d!220920))

(assert (=> bs!73152 m!900375))

(declare-fun m!901117 () Bool)

(assert (=> bs!73152 m!901117))

(declare-fun m!901119 () Bool)

(assert (=> bs!73152 m!901119))

(assert (=> b!630971 d!220920))

(declare-fun d!220922 () Bool)

(assert (=> d!220922 (= (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17023)) (list!2795 (c!115838 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17023))))))

(declare-fun bs!73153 () Bool)

(assert (= bs!73153 d!220922))

(declare-fun m!901121 () Bool)

(assert (=> bs!73153 m!901121))

(assert (=> b!630971 d!220922))

(declare-fun d!220924 () Bool)

(assert (=> d!220924 (subseq!122 (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023) (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268868 () Unit!11605)

(assert (=> d!220924 (= lt!268868 (choose!4586 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023))))

(assert (=> d!220924 (= (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023) lt!268868)))

(declare-fun bs!73154 () Bool)

(assert (= bs!73154 d!220924))

(assert (=> bs!73154 m!900335))

(declare-fun m!901123 () Bool)

(assert (=> bs!73154 m!901123))

(assert (=> bs!73154 m!901123))

(assert (=> bs!73154 m!900335))

(declare-fun m!901125 () Bool)

(assert (=> bs!73154 m!901125))

(assert (=> bs!73154 m!900335))

(declare-fun m!901127 () Bool)

(assert (=> bs!73154 m!901127))

(assert (=> b!630971 d!220924))

(declare-fun d!220926 () Bool)

(assert (=> d!220926 (= (list!2790 (sortObjectsByID!0 lt!268444)) (list!2795 (c!115838 (sortObjectsByID!0 lt!268444))))))

(declare-fun bs!73155 () Bool)

(assert (= bs!73155 d!220926))

(declare-fun m!901129 () Bool)

(assert (=> bs!73155 m!901129))

(assert (=> b!630971 d!220926))

(declare-fun d!220928 () Bool)

(assert (=> d!220928 (= (isEmpty!4620 lt!268456) (is-Nil!6568 lt!268456))))

(assert (=> b!630971 d!220928))

(declare-fun d!220930 () Bool)

(declare-fun lt!268869 () Bool)

(assert (=> d!220930 (= lt!268869 (contains!1512 (list!2790 lt!268444) lt!268466))))

(assert (=> d!220930 (= lt!268869 (contains!1513 (c!115838 lt!268444) lt!268466))))

(assert (=> d!220930 (= (contains!1510 lt!268444 lt!268466) lt!268869)))

(declare-fun bs!73156 () Bool)

(assert (= bs!73156 d!220930))

(assert (=> bs!73156 m!900391))

(assert (=> bs!73156 m!900391))

(declare-fun m!901131 () Bool)

(assert (=> bs!73156 m!901131))

(declare-fun m!901133 () Bool)

(assert (=> bs!73156 m!901133))

(assert (=> b!630971 d!220930))

(declare-fun d!220932 () Bool)

(assert (=> d!220932 (forall!1640 lt!268450 lambda!17026)))

(declare-fun lt!268870 () Unit!11605)

(assert (=> d!220932 (= lt!268870 (choose!4588 lt!268450 lt!268448 lambda!17026))))

(assert (=> d!220932 (forall!1640 lt!268448 lambda!17026)))

(assert (=> d!220932 (= (lemmaForallSubseq!3 lt!268450 lt!268448 lambda!17026) lt!268870)))

(declare-fun bs!73157 () Bool)

(assert (= bs!73157 d!220932))

(assert (=> bs!73157 m!900369))

(declare-fun m!901135 () Bool)

(assert (=> bs!73157 m!901135))

(declare-fun m!901137 () Bool)

(assert (=> bs!73157 m!901137))

(assert (=> b!630971 d!220932))

(declare-fun d!220934 () Bool)

(assert (=> d!220934 (= (list!2790 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17025)) (list!2795 (c!115838 (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17025))))))

(declare-fun bs!73158 () Bool)

(assert (= bs!73158 d!220934))

(declare-fun m!901139 () Bool)

(assert (=> bs!73158 m!901139))

(assert (=> b!630971 d!220934))

(declare-fun lt!268871 () Bool)

(declare-fun d!220936 () Bool)

(assert (=> d!220936 (= lt!268871 (forall!1640 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023))))

(assert (=> d!220936 (= lt!268871 (forall!1654 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17023))))

(assert (=> d!220936 (= (forall!1645 (map!1385 lt!268183 lambda!16887) lambda!17023) lt!268871)))

(declare-fun bs!73159 () Bool)

(assert (= bs!73159 d!220936))

(assert (=> bs!73159 m!899999))

(assert (=> bs!73159 m!900335))

(assert (=> bs!73159 m!900335))

(declare-fun m!901141 () Bool)

(assert (=> bs!73159 m!901141))

(declare-fun m!901143 () Bool)

(assert (=> bs!73159 m!901143))

(assert (=> b!630971 d!220936))

(declare-fun d!220938 () Bool)

(declare-fun res!273835 () Bool)

(declare-fun e!383172 () Bool)

(assert (=> d!220938 (=> res!273835 e!383172)))

(assert (=> d!220938 (= res!273835 (is-Nil!6568 lt!268457))))

(assert (=> d!220938 (= (forall!1640 lt!268457 lambda!17026) e!383172)))

(declare-fun b!631254 () Bool)

(declare-fun e!383173 () Bool)

(assert (=> b!631254 (= e!383172 e!383173)))

(declare-fun res!273836 () Bool)

(assert (=> b!631254 (=> (not res!273836) (not e!383173))))

(assert (=> b!631254 (= res!273836 (dynLambda!3677 lambda!17026 (h!11969 lt!268457)))))

(declare-fun b!631255 () Bool)

(assert (=> b!631255 (= e!383173 (forall!1640 (t!83056 lt!268457) lambda!17026))))

(assert (= (and d!220938 (not res!273835)) b!631254))

(assert (= (and b!631254 res!273836) b!631255))

(declare-fun b_lambda!24789 () Bool)

(assert (=> (not b_lambda!24789) (not b!631254)))

(declare-fun m!901145 () Bool)

(assert (=> b!631254 m!901145))

(declare-fun m!901147 () Bool)

(assert (=> b!631255 m!901147))

(assert (=> b!630971 d!220938))

(declare-fun d!220940 () Bool)

(assert (=> d!220940 (subseq!122 (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17024) (list!2790 (map!1385 lt!268183 lambda!16887)))))

(declare-fun lt!268872 () Unit!11605)

(assert (=> d!220940 (= lt!268872 (choose!4586 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17024))))

(assert (=> d!220940 (= (filterSubseq!1 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17024) lt!268872)))

(declare-fun bs!73160 () Bool)

(assert (= bs!73160 d!220940))

(assert (=> bs!73160 m!900335))

(assert (=> bs!73160 m!900827))

(assert (=> bs!73160 m!900827))

(assert (=> bs!73160 m!900335))

(declare-fun m!901149 () Bool)

(assert (=> bs!73160 m!901149))

(assert (=> bs!73160 m!900335))

(declare-fun m!901151 () Bool)

(assert (=> bs!73160 m!901151))

(assert (=> b!630971 d!220940))

(declare-fun d!220942 () Bool)

(declare-fun e!383174 () Bool)

(assert (=> d!220942 e!383174))

(declare-fun res!273837 () Bool)

(assert (=> d!220942 (=> (not res!273837) (not e!383174))))

(assert (=> d!220942 (= res!273837 (isBalanced!576 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17023)))))

(declare-fun lt!268873 () BalanceConc!4340)

(assert (=> d!220942 (= lt!268873 (BalanceConc!4341 (filter!110 (c!115838 (map!1385 lt!268183 lambda!16887)) lambda!17023)))))

(assert (=> d!220942 (= (filter!107 (map!1385 lt!268183 lambda!16887) lambda!17023) lt!268873)))

(declare-fun b!631256 () Bool)

(assert (=> b!631256 (= e!383174 (= (list!2790 lt!268873) (filter!106 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023)))))

(assert (= (and d!220942 res!273837) b!631256))

(declare-fun m!901153 () Bool)

(assert (=> d!220942 m!901153))

(assert (=> d!220942 m!901153))

(declare-fun m!901155 () Bool)

(assert (=> d!220942 m!901155))

(declare-fun m!901157 () Bool)

(assert (=> b!631256 m!901157))

(assert (=> b!631256 m!899999))

(assert (=> b!631256 m!900335))

(assert (=> b!631256 m!900335))

(assert (=> b!631256 m!901123))

(assert (=> b!630971 d!220942))

(declare-fun d!220944 () Bool)

(declare-fun e!383175 () Bool)

(assert (=> d!220944 e!383175))

(declare-fun res!273840 () Bool)

(assert (=> d!220944 (=> (not res!273840) (not e!383175))))

(assert (=> d!220944 (= res!273840 (appendAssocInst!112 (c!115838 (sortObjectsByID!0 lt!268436)) (c!115838 lt!268468)))))

(declare-fun lt!268874 () BalanceConc!4340)

(assert (=> d!220944 (= lt!268874 (BalanceConc!4341 (++!1797 (c!115838 (sortObjectsByID!0 lt!268436)) (c!115838 lt!268468))))))

(assert (=> d!220944 (= (++!1791 (sortObjectsByID!0 lt!268436) lt!268468) lt!268874)))

(declare-fun b!631259 () Bool)

(declare-fun res!273841 () Bool)

(assert (=> b!631259 (=> (not res!273841) (not e!383175))))

(assert (=> b!631259 (= res!273841 (>= (height!270 (++!1797 (c!115838 (sortObjectsByID!0 lt!268436)) (c!115838 lt!268468))) (max!0 (height!270 (c!115838 (sortObjectsByID!0 lt!268436))) (height!270 (c!115838 lt!268468)))))))

(declare-fun b!631260 () Bool)

(assert (=> b!631260 (= e!383175 (= (list!2790 lt!268874) (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468))))))

(declare-fun b!631257 () Bool)

(declare-fun res!273839 () Bool)

(assert (=> b!631257 (=> (not res!273839) (not e!383175))))

(assert (=> b!631257 (= res!273839 (isBalanced!576 (++!1797 (c!115838 (sortObjectsByID!0 lt!268436)) (c!115838 lt!268468))))))

(declare-fun b!631258 () Bool)

(declare-fun res!273838 () Bool)

(assert (=> b!631258 (=> (not res!273838) (not e!383175))))

(assert (=> b!631258 (= res!273838 (<= (height!270 (++!1797 (c!115838 (sortObjectsByID!0 lt!268436)) (c!115838 lt!268468))) (+ (max!0 (height!270 (c!115838 (sortObjectsByID!0 lt!268436))) (height!270 (c!115838 lt!268468))) 1)))))

(assert (= (and d!220944 res!273840) b!631257))

(assert (= (and b!631257 res!273839) b!631258))

(assert (= (and b!631258 res!273838) b!631259))

(assert (= (and b!631259 res!273841) b!631260))

(declare-fun m!901159 () Bool)

(assert (=> b!631258 m!901159))

(declare-fun m!901161 () Bool)

(assert (=> b!631258 m!901161))

(declare-fun m!901163 () Bool)

(assert (=> b!631258 m!901163))

(declare-fun m!901165 () Bool)

(assert (=> b!631258 m!901165))

(declare-fun m!901167 () Bool)

(assert (=> b!631258 m!901167))

(assert (=> b!631258 m!901161))

(assert (=> b!631258 m!901165))

(assert (=> b!631258 m!901159))

(declare-fun m!901169 () Bool)

(assert (=> d!220944 m!901169))

(assert (=> d!220944 m!901165))

(assert (=> b!631257 m!901165))

(assert (=> b!631257 m!901165))

(declare-fun m!901171 () Bool)

(assert (=> b!631257 m!901171))

(declare-fun m!901173 () Bool)

(assert (=> b!631260 m!901173))

(assert (=> b!631260 m!900315))

(assert (=> b!631260 m!900343))

(assert (=> b!631260 m!900345))

(assert (=> b!631260 m!900343))

(assert (=> b!631260 m!900345))

(assert (=> b!631260 m!900327))

(assert (=> b!631259 m!901159))

(assert (=> b!631259 m!901161))

(assert (=> b!631259 m!901163))

(assert (=> b!631259 m!901165))

(assert (=> b!631259 m!901167))

(assert (=> b!631259 m!901161))

(assert (=> b!631259 m!901165))

(assert (=> b!631259 m!901159))

(assert (=> b!630971 d!220944))

(declare-fun d!220946 () Bool)

(assert (=> d!220946 (forall!1640 (++!1792 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468)) lambda!17026)))

(declare-fun lt!268875 () Unit!11605)

(assert (=> d!220946 (= lt!268875 (choose!4585 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468) lambda!17026))))

(assert (=> d!220946 (forall!1640 (list!2790 (sortObjectsByID!0 lt!268436)) lambda!17026)))

(assert (=> d!220946 (= (lemmaConcatPreservesForall!17 (list!2790 (sortObjectsByID!0 lt!268436)) (list!2790 lt!268468) lambda!17026) lt!268875)))

(declare-fun bs!73161 () Bool)

(assert (= bs!73161 d!220946))

(assert (=> bs!73161 m!900343))

(assert (=> bs!73161 m!900345))

(assert (=> bs!73161 m!900327))

(assert (=> bs!73161 m!900327))

(assert (=> bs!73161 m!900855))

(assert (=> bs!73161 m!900343))

(assert (=> bs!73161 m!900345))

(declare-fun m!901175 () Bool)

(assert (=> bs!73161 m!901175))

(assert (=> bs!73161 m!900343))

(declare-fun m!901177 () Bool)

(assert (=> bs!73161 m!901177))

(assert (=> b!630971 d!220946))

(declare-fun d!220948 () Bool)

(assert (=> d!220948 (= (list!2790 (sortObjectsByID!0 lt!268436)) (list!2795 (c!115838 (sortObjectsByID!0 lt!268436))))))

(declare-fun bs!73162 () Bool)

(assert (= bs!73162 d!220948))

(declare-fun m!901179 () Bool)

(assert (=> bs!73162 m!901179))

(assert (=> b!630971 d!220948))

(declare-fun d!220950 () Bool)

(declare-fun c!115956 () Bool)

(assert (=> d!220950 (= c!115956 (is-Node!2162 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun e!383176 () Bool)

(assert (=> d!220950 (= (inv!8464 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) e!383176)))

(declare-fun b!631261 () Bool)

(assert (=> b!631261 (= e!383176 (inv!8469 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun b!631262 () Bool)

(declare-fun e!383177 () Bool)

(assert (=> b!631262 (= e!383176 e!383177)))

(declare-fun res!273842 () Bool)

(assert (=> b!631262 (= res!273842 (not (is-Leaf!3348 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))))))

(assert (=> b!631262 (=> res!273842 e!383177)))

(declare-fun b!631263 () Bool)

(assert (=> b!631263 (= e!383177 (inv!8470 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))))))

(assert (= (and d!220950 c!115956) b!631261))

(assert (= (and d!220950 (not c!115956)) b!631262))

(assert (= (and b!631262 (not res!273842)) b!631263))

(declare-fun m!901181 () Bool)

(assert (=> b!631261 m!901181))

(declare-fun m!901183 () Bool)

(assert (=> b!631263 m!901183))

(assert (=> b!631026 d!220950))

(declare-fun d!220952 () Bool)

(declare-fun c!115957 () Bool)

(assert (=> d!220952 (= c!115957 (is-Node!2162 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun e!383178 () Bool)

(assert (=> d!220952 (= (inv!8464 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))) e!383178)))

(declare-fun b!631264 () Bool)

(assert (=> b!631264 (= e!383178 (inv!8469 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun b!631265 () Bool)

(declare-fun e!383179 () Bool)

(assert (=> b!631265 (= e!383178 e!383179)))

(declare-fun res!273843 () Bool)

(assert (=> b!631265 (= res!273843 (not (is-Leaf!3348 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))))))

(assert (=> b!631265 (=> res!273843 e!383179)))

(declare-fun b!631266 () Bool)

(assert (=> b!631266 (= e!383179 (inv!8470 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))

(assert (= (and d!220952 c!115957) b!631264))

(assert (= (and d!220952 (not c!115957)) b!631265))

(assert (= (and b!631265 (not res!273843)) b!631266))

(declare-fun m!901185 () Bool)

(assert (=> b!631264 m!901185))

(declare-fun m!901187 () Bool)

(assert (=> b!631266 m!901187))

(assert (=> b!631026 d!220952))

(declare-fun d!220954 () Bool)

(declare-fun c!115962 () Bool)

(assert (=> d!220954 (= c!115962 (is-Empty!2163 (c!115837 lt!268183)))))

(declare-fun e!383184 () List!6581)

(assert (=> d!220954 (= (list!2794 (c!115837 lt!268183)) e!383184)))

(declare-fun b!631276 () Bool)

(declare-fun e!383185 () List!6581)

(assert (=> b!631276 (= e!383184 e!383185)))

(declare-fun c!115963 () Bool)

(assert (=> b!631276 (= c!115963 (is-Leaf!3349 (c!115837 lt!268183)))))

(declare-fun b!631278 () Bool)

(assert (=> b!631278 (= e!383185 (++!1795 (list!2794 (left!5270 (c!115837 lt!268183))) (list!2794 (right!5600 (c!115837 lt!268183)))))))

(declare-fun b!631275 () Bool)

(assert (=> b!631275 (= e!383184 Nil!6567)))

(declare-fun b!631277 () Bool)

(declare-fun list!2802 (IArray!4327) List!6581)

(assert (=> b!631277 (= e!383185 (list!2802 (xs!4804 (c!115837 lt!268183))))))

(assert (= (and d!220954 c!115962) b!631275))

(assert (= (and d!220954 (not c!115962)) b!631276))

(assert (= (and b!631276 c!115963) b!631277))

(assert (= (and b!631276 (not c!115963)) b!631278))

(declare-fun m!901189 () Bool)

(assert (=> b!631278 m!901189))

(declare-fun m!901191 () Bool)

(assert (=> b!631278 m!901191))

(assert (=> b!631278 m!901189))

(assert (=> b!631278 m!901191))

(declare-fun m!901193 () Bool)

(assert (=> b!631278 m!901193))

(declare-fun m!901195 () Bool)

(assert (=> b!631277 m!901195))

(assert (=> d!220778 d!220954))

(declare-fun d!220956 () Bool)

(assert (=> d!220956 (= (inv!8472 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))) (<= (size!5169 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2))))) 2147483647))))

(declare-fun bs!73163 () Bool)

(assert (= bs!73163 d!220956))

(declare-fun m!901197 () Bool)

(assert (=> bs!73163 m!901197))

(assert (=> b!631027 d!220956))

(declare-fun d!220958 () Bool)

(assert (=> d!220958 true))

(declare-fun lt!268878 () Bool)

(declare-fun rulesValidInductive!503 (LexerInterface!1226 List!6579) Bool)

(assert (=> d!220958 (= lt!268878 (rulesValidInductive!503 Lexer!1224 lt!268187))))

(declare-fun lambda!17074 () Int)

(declare-fun forall!1655 (List!6579 Int) Bool)

(assert (=> d!220958 (= lt!268878 (forall!1655 lt!268187 lambda!17074))))

(assert (=> d!220958 (= (rulesValid!497 Lexer!1224 lt!268187) lt!268878)))

(declare-fun bs!73164 () Bool)

(assert (= bs!73164 d!220958))

(declare-fun m!901199 () Bool)

(assert (=> bs!73164 m!901199))

(declare-fun m!901201 () Bool)

(assert (=> bs!73164 m!901201))

(assert (=> d!220818 d!220958))

(declare-fun d!220960 () Bool)

(declare-fun lt!268881 () Token!2404)

(assert (=> d!220960 (= lt!268881 (apply!1573 (list!2800 (tokens!1161 printableTokens!2)) 0))))

(declare-fun apply!1576 (Conc!2162 Int) Token!2404)

(assert (=> d!220960 (= lt!268881 (apply!1576 (c!115836 (tokens!1161 printableTokens!2)) 0))))

(declare-fun e!383188 () Bool)

(assert (=> d!220960 e!383188))

(declare-fun res!273846 () Bool)

(assert (=> d!220960 (=> (not res!273846) (not e!383188))))

(assert (=> d!220960 (= res!273846 (<= 0 0))))

(assert (=> d!220960 (= (apply!1565 (tokens!1161 printableTokens!2) 0) lt!268881)))

(declare-fun b!631283 () Bool)

(assert (=> b!631283 (= e!383188 (< 0 (size!5157 (tokens!1161 printableTokens!2))))))

(assert (= (and d!220960 res!273846) b!631283))

(assert (=> d!220960 m!900647))

(assert (=> d!220960 m!900647))

(declare-fun m!901203 () Bool)

(assert (=> d!220960 m!901203))

(declare-fun m!901205 () Bool)

(assert (=> d!220960 m!901205))

(assert (=> b!631283 m!900059))

(assert (=> b!630818 d!220960))

(declare-fun d!220962 () Bool)

(declare-fun choose!511 (Token!2404 TokenValue!1374) Bool)

(assert (=> d!220962 (= (isKeywordValue!0 lt!268222 LeftBrace!1374) (choose!511 lt!268222 LeftBrace!1374))))

(declare-fun bs!73165 () Bool)

(assert (= bs!73165 d!220962))

(declare-fun m!901207 () Bool)

(assert (=> bs!73165 m!901207))

(assert (=> b!630818 d!220962))

(declare-fun d!220964 () Bool)

(assert (=> d!220964 (= (isKeywordValue!0 lt!268222 RightBrace!1374) (choose!511 lt!268222 RightBrace!1374))))

(declare-fun bs!73166 () Bool)

(assert (= bs!73166 d!220964))

(declare-fun m!901209 () Bool)

(assert (=> bs!73166 m!901209))

(assert (=> b!630817 d!220964))

(declare-fun d!220966 () Bool)

(declare-fun res!273851 () Bool)

(declare-fun e!383191 () Bool)

(assert (=> d!220966 (=> (not res!273851) (not e!383191))))

(declare-fun list!2803 (IArray!4325) List!6580)

(assert (=> d!220966 (= res!273851 (<= (size!5169 (list!2803 (xs!4803 (c!115836 (tokens!1161 printableTokens!2))))) 512))))

(assert (=> d!220966 (= (inv!8470 (c!115836 (tokens!1161 printableTokens!2))) e!383191)))

(declare-fun b!631288 () Bool)

(declare-fun res!273852 () Bool)

(assert (=> b!631288 (=> (not res!273852) (not e!383191))))

(assert (=> b!631288 (= res!273852 (= (csize!4555 (c!115836 (tokens!1161 printableTokens!2))) (size!5169 (list!2803 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))))))))

(declare-fun b!631289 () Bool)

(assert (=> b!631289 (= e!383191 (and (> (csize!4555 (c!115836 (tokens!1161 printableTokens!2))) 0) (<= (csize!4555 (c!115836 (tokens!1161 printableTokens!2))) 512)))))

(assert (= (and d!220966 res!273851) b!631288))

(assert (= (and b!631288 res!273852) b!631289))

(declare-fun m!901211 () Bool)

(assert (=> d!220966 m!901211))

(assert (=> d!220966 m!901211))

(declare-fun m!901213 () Bool)

(assert (=> d!220966 m!901213))

(assert (=> b!631288 m!901211))

(assert (=> b!631288 m!901211))

(assert (=> b!631288 m!901213))

(assert (=> b!631006 d!220966))

(declare-fun d!220968 () Bool)

(declare-fun lt!268882 () Int)

(assert (=> d!220968 (>= lt!268882 0)))

(declare-fun e!383192 () Int)

(assert (=> d!220968 (= lt!268882 e!383192)))

(declare-fun c!115964 () Bool)

(assert (=> d!220968 (= c!115964 (is-Nil!6568 (filter!106 lt!268456 lambda!17025)))))

(assert (=> d!220968 (= (size!5159 (filter!106 lt!268456 lambda!17025)) lt!268882)))

(declare-fun b!631290 () Bool)

(assert (=> b!631290 (= e!383192 0)))

(declare-fun b!631291 () Bool)

(assert (=> b!631291 (= e!383192 (+ 1 (size!5159 (t!83056 (filter!106 lt!268456 lambda!17025)))))))

(assert (= (and d!220968 c!115964) b!631290))

(assert (= (and d!220968 (not c!115964)) b!631291))

(declare-fun m!901215 () Bool)

(assert (=> b!631291 m!901215))

(assert (=> b!630972 d!220968))

(declare-fun b!631292 () Bool)

(declare-fun e!383193 () List!6582)

(declare-fun e!383195 () List!6582)

(assert (=> b!631292 (= e!383193 e!383195)))

(declare-fun c!115965 () Bool)

(assert (=> b!631292 (= c!115965 (dynLambda!3677 lambda!17025 (h!11969 lt!268456)))))

(declare-fun b!631293 () Bool)

(assert (=> b!631293 (= e!383193 Nil!6568)))

(declare-fun b!631294 () Bool)

(declare-fun call!41395 () List!6582)

(assert (=> b!631294 (= e!383195 call!41395)))

(declare-fun d!220970 () Bool)

(declare-fun e!383194 () Bool)

(assert (=> d!220970 e!383194))

(declare-fun res!273854 () Bool)

(assert (=> d!220970 (=> (not res!273854) (not e!383194))))

(declare-fun lt!268883 () List!6582)

(assert (=> d!220970 (= res!273854 (<= (size!5159 lt!268883) (size!5159 lt!268456)))))

(assert (=> d!220970 (= lt!268883 e!383193)))

(declare-fun c!115966 () Bool)

(assert (=> d!220970 (= c!115966 (is-Nil!6568 lt!268456))))

(assert (=> d!220970 (= (filter!106 lt!268456 lambda!17025) lt!268883)))

(declare-fun b!631295 () Bool)

(assert (=> b!631295 (= e!383195 (Cons!6568 (h!11969 lt!268456) call!41395))))

(declare-fun bm!41390 () Bool)

(assert (=> bm!41390 (= call!41395 (filter!106 (t!83056 lt!268456) lambda!17025))))

(declare-fun b!631296 () Bool)

(declare-fun res!273853 () Bool)

(assert (=> b!631296 (=> (not res!273853) (not e!383194))))

(assert (=> b!631296 (= res!273853 (set.subset (content!1162 lt!268883) (content!1162 lt!268456)))))

(declare-fun b!631297 () Bool)

(assert (=> b!631297 (= e!383194 (forall!1640 lt!268883 lambda!17025))))

(assert (= (and d!220970 c!115966) b!631293))

(assert (= (and d!220970 (not c!115966)) b!631292))

(assert (= (and b!631292 c!115965) b!631295))

(assert (= (and b!631292 (not c!115965)) b!631294))

(assert (= (or b!631295 b!631294) bm!41390))

(assert (= (and d!220970 res!273854) b!631296))

(assert (= (and b!631296 res!273853) b!631297))

(declare-fun b_lambda!24791 () Bool)

(assert (=> (not b_lambda!24791) (not b!631292)))

(declare-fun m!901217 () Bool)

(assert (=> b!631296 m!901217))

(declare-fun m!901219 () Bool)

(assert (=> b!631296 m!901219))

(declare-fun m!901221 () Bool)

(assert (=> b!631292 m!901221))

(declare-fun m!901223 () Bool)

(assert (=> bm!41390 m!901223))

(declare-fun m!901225 () Bool)

(assert (=> b!631297 m!901225))

(declare-fun m!901227 () Bool)

(assert (=> d!220970 m!901227))

(assert (=> d!220970 m!900405))

(assert (=> b!630972 d!220970))

(declare-fun d!220972 () Bool)

(declare-fun lt!268884 () Int)

(assert (=> d!220972 (>= lt!268884 0)))

(declare-fun e!383196 () Int)

(assert (=> d!220972 (= lt!268884 e!383196)))

(declare-fun c!115967 () Bool)

(assert (=> d!220972 (= c!115967 (is-Nil!6568 lt!268456))))

(assert (=> d!220972 (= (size!5159 lt!268456) lt!268884)))

(declare-fun b!631298 () Bool)

(assert (=> b!631298 (= e!383196 0)))

(declare-fun b!631299 () Bool)

(assert (=> b!631299 (= e!383196 (+ 1 (size!5159 (t!83056 lt!268456))))))

(assert (= (and d!220972 c!115967) b!631298))

(assert (= (and d!220972 (not c!115967)) b!631299))

(declare-fun m!901229 () Bool)

(assert (=> b!631299 m!901229))

(assert (=> b!630972 d!220972))

(assert (=> b!630814 d!220866))

(declare-fun d!220974 () Bool)

(assert (=> d!220974 (= (inv!8460 (tag!1602 (h!11966 (rules!8142 printableTokens!2)))) (= (mod (str.len (value!43341 (tag!1602 (h!11966 (rules!8142 printableTokens!2))))) 2) 0))))

(assert (=> b!631016 d!220974))

(declare-fun d!220976 () Bool)

(declare-fun res!273857 () Bool)

(declare-fun e!383199 () Bool)

(assert (=> d!220976 (=> (not res!273857) (not e!383199))))

(declare-fun semiInverseModEq!541 (Int Int) Bool)

(assert (=> d!220976 (= res!273857 (semiInverseModEq!541 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 printableTokens!2)))) (toValue!2281 (transformation!1340 (h!11966 (rules!8142 printableTokens!2))))))))

(assert (=> d!220976 (= (inv!8471 (transformation!1340 (h!11966 (rules!8142 printableTokens!2)))) e!383199)))

(declare-fun b!631302 () Bool)

(declare-fun equivClasses!520 (Int Int) Bool)

(assert (=> b!631302 (= e!383199 (equivClasses!520 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 printableTokens!2)))) (toValue!2281 (transformation!1340 (h!11966 (rules!8142 printableTokens!2))))))))

(assert (= (and d!220976 res!273857) b!631302))

(declare-fun m!901231 () Bool)

(assert (=> d!220976 m!901231))

(declare-fun m!901233 () Bool)

(assert (=> b!631302 m!901233))

(assert (=> b!631016 d!220976))

(assert (=> d!220756 d!220812))

(declare-fun d!220978 () Bool)

(assert (=> d!220978 (= (list!2790 lt!268227) (list!2795 (c!115838 lt!268227)))))

(declare-fun bs!73167 () Bool)

(assert (= bs!73167 d!220978))

(declare-fun m!901235 () Bool)

(assert (=> bs!73167 m!901235))

(assert (=> d!220786 d!220978))

(declare-fun d!220980 () Bool)

(declare-fun lt!268887 () List!6582)

(declare-fun size!5172 (List!6581) Int)

(assert (=> d!220980 (= (size!5159 lt!268887) (size!5172 (list!2791 lt!268183)))))

(declare-fun e!383202 () List!6582)

(assert (=> d!220980 (= lt!268887 e!383202)))

(declare-fun c!115970 () Bool)

(assert (=> d!220980 (= c!115970 (is-Nil!6567 (list!2791 lt!268183)))))

(assert (=> d!220980 (= (map!1387 (list!2791 lt!268183) lambda!16887) lt!268887)))

(declare-fun b!631307 () Bool)

(assert (=> b!631307 (= e!383202 Nil!6568)))

(declare-fun b!631308 () Bool)

(declare-fun $colon$colon!44 (List!6582 tuple2!7178) List!6582)

(declare-fun dynLambda!3682 (Int PrintableTokens!62) tuple2!7178)

(assert (=> b!631308 (= e!383202 ($colon$colon!44 (map!1387 (t!83055 (list!2791 lt!268183)) lambda!16887) (dynLambda!3682 lambda!16887 (h!11968 (list!2791 lt!268183)))))))

(assert (= (and d!220980 c!115970) b!631307))

(assert (= (and d!220980 (not c!115970)) b!631308))

(declare-fun b_lambda!24793 () Bool)

(assert (=> (not b_lambda!24793) (not b!631308)))

(declare-fun m!901237 () Bool)

(assert (=> d!220980 m!901237))

(assert (=> d!220980 m!899997))

(declare-fun m!901239 () Bool)

(assert (=> d!220980 m!901239))

(declare-fun m!901241 () Bool)

(assert (=> b!631308 m!901241))

(declare-fun m!901243 () Bool)

(assert (=> b!631308 m!901243))

(assert (=> b!631308 m!901241))

(assert (=> b!631308 m!901243))

(declare-fun m!901245 () Bool)

(assert (=> b!631308 m!901245))

(assert (=> d!220786 d!220980))

(assert (=> d!220786 d!220778))

(declare-fun b!631319 () Bool)

(declare-fun e!383210 () Conc!2164)

(declare-fun e!383209 () Conc!2164)

(assert (=> b!631319 (= e!383210 e!383209)))

(declare-fun c!115975 () Bool)

(assert (=> b!631319 (= c!115975 (is-Leaf!3349 (c!115837 lt!268183)))))

(declare-fun b!631320 () Bool)

(declare-fun map!1391 (IArray!4327 Int) IArray!4329)

(assert (=> b!631320 (= e!383209 (Leaf!3350 (map!1391 (xs!4804 (c!115837 lt!268183)) lambda!16887) (csize!4557 (c!115837 lt!268183))))))

(declare-fun b!631321 () Bool)

(declare-fun e!383211 () Bool)

(declare-fun lt!268893 () Conc!2164)

(assert (=> b!631321 (= e!383211 (isBalanced!576 lt!268893))))

(declare-fun d!220982 () Bool)

(assert (=> d!220982 e!383211))

(declare-fun res!273860 () Bool)

(assert (=> d!220982 (=> (not res!273860) (not e!383211))))

(assert (=> d!220982 (= res!273860 (= (list!2795 lt!268893) (map!1387 (list!2794 (c!115837 lt!268183)) lambda!16887)))))

(assert (=> d!220982 (= lt!268893 e!383210)))

(declare-fun c!115976 () Bool)

(assert (=> d!220982 (= c!115976 (is-Empty!2163 (c!115837 lt!268183)))))

(assert (=> d!220982 (isBalanced!581 (c!115837 lt!268183))))

(assert (=> d!220982 (= (map!1388 (c!115837 lt!268183) lambda!16887) lt!268893)))

(declare-fun b!631322 () Bool)

(assert (=> b!631322 (= e!383210 Empty!2164)))

(declare-fun b!631323 () Bool)

(declare-fun lt!268892 () Unit!11605)

(declare-fun lemmaMapConcat!1 (List!6581 List!6581 Int) Unit!11605)

(assert (=> b!631323 (= lt!268892 (lemmaMapConcat!1 (list!2794 (left!5270 (c!115837 lt!268183))) (list!2794 (right!5600 (c!115837 lt!268183))) lambda!16887))))

(assert (=> b!631323 (= e!383209 (Node!2164 (map!1388 (left!5270 (c!115837 lt!268183)) lambda!16887) (map!1388 (right!5600 (c!115837 lt!268183)) lambda!16887) (csize!4556 (c!115837 lt!268183)) (cheight!2374 (c!115837 lt!268183))))))

(assert (= (and d!220982 c!115976) b!631322))

(assert (= (and d!220982 (not c!115976)) b!631319))

(assert (= (and b!631319 c!115975) b!631320))

(assert (= (and b!631319 (not c!115975)) b!631323))

(assert (= (and d!220982 res!273860) b!631321))

(declare-fun m!901247 () Bool)

(assert (=> b!631320 m!901247))

(declare-fun m!901249 () Bool)

(assert (=> b!631321 m!901249))

(declare-fun m!901251 () Bool)

(assert (=> d!220982 m!901251))

(assert (=> d!220982 m!900121))

(assert (=> d!220982 m!900121))

(declare-fun m!901253 () Bool)

(assert (=> d!220982 m!901253))

(declare-fun m!901255 () Bool)

(assert (=> d!220982 m!901255))

(assert (=> b!631323 m!901189))

(declare-fun m!901257 () Bool)

(assert (=> b!631323 m!901257))

(declare-fun m!901259 () Bool)

(assert (=> b!631323 m!901259))

(assert (=> b!631323 m!901191))

(assert (=> b!631323 m!901189))

(assert (=> b!631323 m!901191))

(declare-fun m!901261 () Bool)

(assert (=> b!631323 m!901261))

(assert (=> d!220786 d!220982))

(declare-fun d!220984 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!136) Regex!1674)

(declare-datatypes ((StringLiteralValueInjection!46 0))(
  ( (StringLiteralValueInjection!47) )
))
(declare-fun injection!8 (StringLiteralValueInjection!46) TokenValueInjection!2500)

(assert (=> d!220984 (= (jsonstringRule!0 JsonLexer!137) (Rule!2481 (jsonStringRe!0 JsonLexer!137) (String!8609 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!47)))))

(declare-fun bs!73168 () Bool)

(assert (= bs!73168 d!220984))

(declare-fun m!901263 () Bool)

(assert (=> bs!73168 m!901263))

(declare-fun m!901265 () Bool)

(assert (=> bs!73168 m!901265))

(assert (=> d!220812 d!220984))

(declare-fun d!220986 () Bool)

(declare-fun falseRe!0 (JsonLexer!136) Regex!1674)

(declare-datatypes ((KeywordValueInjection!26 0))(
  ( (KeywordValueInjection!27) )
))
(declare-fun injection!9 (KeywordValueInjection!26) TokenValueInjection!2500)

(assert (=> d!220986 (= (falseRule!0 JsonLexer!137) (Rule!2481 (falseRe!0 JsonLexer!137) (String!8609 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73169 () Bool)

(assert (= bs!73169 d!220986))

(declare-fun m!901267 () Bool)

(assert (=> bs!73169 m!901267))

(declare-fun m!901269 () Bool)

(assert (=> bs!73169 m!901269))

(assert (=> d!220812 d!220986))

(declare-fun d!220988 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220988 (= (lBracketRule!0 JsonLexer!137) (Rule!2481 (lBracketRe!0 JsonLexer!137) (String!8609 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73170 () Bool)

(assert (= bs!73170 d!220988))

(declare-fun m!901271 () Bool)

(assert (=> bs!73170 m!901271))

(assert (=> bs!73170 m!901269))

(assert (=> d!220812 d!220988))

(declare-fun d!220990 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220990 (= (rBracketRule!0 JsonLexer!137) (Rule!2481 (rBracketRe!0 JsonLexer!137) (String!8609 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73171 () Bool)

(assert (= bs!73171 d!220990))

(declare-fun m!901273 () Bool)

(assert (=> bs!73171 m!901273))

(assert (=> bs!73171 m!901269))

(assert (=> d!220812 d!220990))

(declare-fun d!220992 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220992 (= (lBraceRule!0 JsonLexer!137) (Rule!2481 (lBraceRe!0 JsonLexer!137) (String!8609 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73172 () Bool)

(assert (= bs!73172 d!220992))

(declare-fun m!901275 () Bool)

(assert (=> bs!73172 m!901275))

(assert (=> bs!73172 m!901269))

(assert (=> d!220812 d!220992))

(declare-fun d!220994 () Bool)

(declare-fun nullRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220994 (= (nullRule!0 JsonLexer!137) (Rule!2481 (nullRe!0 JsonLexer!137) (String!8609 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73173 () Bool)

(assert (= bs!73173 d!220994))

(declare-fun m!901277 () Bool)

(assert (=> bs!73173 m!901277))

(assert (=> bs!73173 m!901269))

(assert (=> d!220812 d!220994))

(declare-fun d!220996 () Bool)

(declare-fun commaRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220996 (= (commaRule!0 JsonLexer!137) (Rule!2481 (commaRe!0 JsonLexer!137) (String!8609 "ccoommmmaa") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73174 () Bool)

(assert (= bs!73174 d!220996))

(declare-fun m!901279 () Bool)

(assert (=> bs!73174 m!901279))

(assert (=> bs!73174 m!901269))

(assert (=> d!220812 d!220996))

(declare-fun d!220998 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!220998 (= (rBraceRule!0 JsonLexer!137) (Rule!2481 (rBraceRe!0 JsonLexer!137) (String!8609 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73175 () Bool)

(assert (= bs!73175 d!220998))

(declare-fun m!901281 () Bool)

(assert (=> bs!73175 m!901281))

(assert (=> bs!73175 m!901269))

(assert (=> d!220812 d!220998))

(declare-fun d!221000 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!136) Regex!1674)

(declare-datatypes ((WhitespaceValueInjection!22 0))(
  ( (WhitespaceValueInjection!23) )
))
(declare-fun injection!7 (WhitespaceValueInjection!22) TokenValueInjection!2500)

(assert (=> d!221000 (= (whitespaceRule!0 JsonLexer!137) (Rule!2481 (wsCharRe!0 JsonLexer!137) (String!8609 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!23)))))

(declare-fun bs!73176 () Bool)

(assert (= bs!73176 d!221000))

(declare-fun m!901283 () Bool)

(assert (=> bs!73176 m!901283))

(declare-fun m!901285 () Bool)

(assert (=> bs!73176 m!901285))

(assert (=> d!220812 d!221000))

(declare-fun d!221002 () Bool)

(declare-fun eofRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!221002 (= (eofRule!0 JsonLexer!137) (Rule!2481 (eofRe!0 JsonLexer!137) (String!8609 "eeooff") false (injection!7 WhitespaceValueInjection!23)))))

(declare-fun bs!73177 () Bool)

(assert (= bs!73177 d!221002))

(declare-fun m!901287 () Bool)

(assert (=> bs!73177 m!901287))

(assert (=> bs!73177 m!901285))

(assert (=> d!220812 d!221002))

(declare-fun d!221004 () Bool)

(declare-fun trueRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!221004 (= (trueRule!0 JsonLexer!137) (Rule!2481 (trueRe!0 JsonLexer!137) (String!8609 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73178 () Bool)

(assert (= bs!73178 d!221004))

(declare-fun m!901289 () Bool)

(assert (=> bs!73178 m!901289))

(assert (=> bs!73178 m!901269))

(assert (=> d!220812 d!221004))

(declare-fun d!221006 () Bool)

(declare-fun colonRe!0 (JsonLexer!136) Regex!1674)

(assert (=> d!221006 (= (colonRule!0 JsonLexer!137) (Rule!2481 (colonRe!0 JsonLexer!137) (String!8609 "ccoolloonn") false (injection!9 KeywordValueInjection!27)))))

(declare-fun bs!73179 () Bool)

(assert (= bs!73179 d!221006))

(declare-fun m!901291 () Bool)

(assert (=> bs!73179 m!901291))

(assert (=> bs!73179 m!901269))

(assert (=> d!220812 d!221006))

(declare-fun d!221008 () Bool)

(declare-fun intRe!0 (JsonLexer!136) Regex!1674)

(declare-datatypes ((IntegerValueInjection!26 0))(
  ( (IntegerValueInjection!27) )
))
(declare-fun injection!5 (IntegerValueInjection!26) TokenValueInjection!2500)

(assert (=> d!221008 (= (integerLiteralRule!0 JsonLexer!137) (Rule!2481 (intRe!0 JsonLexer!137) (String!8609 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!27)))))

(declare-fun bs!73180 () Bool)

(assert (= bs!73180 d!221008))

(declare-fun m!901293 () Bool)

(assert (=> bs!73180 m!901293))

(declare-fun m!901295 () Bool)

(assert (=> bs!73180 m!901295))

(assert (=> d!220812 d!221008))

(declare-fun d!221010 () Bool)

(declare-fun floatRe!0 (JsonLexer!136) Regex!1674)

(declare-datatypes ((FloatLiteralValueInjection!22 0))(
  ( (FloatLiteralValueInjection!23) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!22) TokenValueInjection!2500)

(assert (=> d!221010 (= (floatLiteralRule!0 JsonLexer!137) (Rule!2481 (floatRe!0 JsonLexer!137) (String!8609 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!23)))))

(declare-fun bs!73181 () Bool)

(assert (= bs!73181 d!221010))

(declare-fun m!901297 () Bool)

(assert (=> bs!73181 m!901297))

(declare-fun m!901299 () Bool)

(assert (=> bs!73181 m!901299))

(assert (=> d!220812 d!221010))

(declare-fun d!221012 () Bool)

(assert (=> d!221012 (dynLambda!3677 lambda!17023 lt!268466)))

(declare-fun lt!268936 () Unit!11605)

(declare-fun choose!4590 (List!6582 Int tuple2!7178) Unit!11605)

(assert (=> d!221012 (= lt!268936 (choose!4590 (list!2790 lt!268436) lambda!17023 lt!268466))))

(declare-fun e!383224 () Bool)

(assert (=> d!221012 e!383224))

(declare-fun res!273873 () Bool)

(assert (=> d!221012 (=> (not res!273873) (not e!383224))))

(assert (=> d!221012 (= res!273873 (forall!1640 (list!2790 lt!268436) lambda!17023))))

(assert (=> d!221012 (= (forallContained!453 (list!2790 lt!268436) lambda!17023 lt!268466) lt!268936)))

(declare-fun b!631336 () Bool)

(assert (=> b!631336 (= e!383224 (contains!1512 (list!2790 lt!268436) lt!268466))))

(assert (= (and d!221012 res!273873) b!631336))

(declare-fun b_lambda!24795 () Bool)

(assert (=> (not b_lambda!24795) (not d!221012)))

(declare-fun m!901301 () Bool)

(assert (=> d!221012 m!901301))

(assert (=> d!221012 m!900407))

(declare-fun m!901303 () Bool)

(assert (=> d!221012 m!901303))

(assert (=> d!221012 m!900407))

(declare-fun m!901305 () Bool)

(assert (=> d!221012 m!901305))

(assert (=> b!631336 m!900407))

(assert (=> b!631336 m!900977))

(assert (=> b!630969 d!221012))

(declare-fun d!221014 () Bool)

(assert (=> d!221014 (= (list!2790 lt!268436) (list!2795 (c!115838 lt!268436)))))

(declare-fun bs!73182 () Bool)

(assert (= bs!73182 d!221014))

(declare-fun m!901307 () Bool)

(assert (=> bs!73182 m!901307))

(assert (=> b!630969 d!221014))

(assert (=> b!630745 d!220820))

(declare-fun bs!73186 () Bool)

(declare-fun d!221016 () Bool)

(assert (= bs!73186 (and d!221016 d!220846)))

(declare-fun lambda!17092 () Int)

(assert (=> bs!73186 (= lambda!17092 lambda!17057)))

(declare-fun b!631428 () Bool)

(declare-fun e!383301 () Bool)

(assert (=> b!631428 (= e!383301 true)))

(declare-fun b!631427 () Bool)

(declare-fun e!383300 () Bool)

(assert (=> b!631427 (= e!383300 e!383301)))

(declare-fun b!631426 () Bool)

(declare-fun e!383299 () Bool)

(assert (=> b!631426 (= e!383299 e!383300)))

(assert (=> d!221016 e!383299))

(assert (= b!631427 b!631428))

(assert (= b!631426 b!631427))

(assert (= (and d!221016 (is-Cons!6565 (rules!8142 printableTokens!2))) b!631426))

(declare-fun order!5077 () Int)

(declare-fun order!5075 () Int)

(declare-fun dynLambda!3683 (Int Int) Int)

(declare-fun dynLambda!3684 (Int Int) Int)

(assert (=> b!631428 (< (dynLambda!3683 order!5075 (toValue!2281 (transformation!1340 (h!11966 (rules!8142 printableTokens!2))))) (dynLambda!3684 order!5077 lambda!17092))))

(declare-fun order!5079 () Int)

(declare-fun dynLambda!3685 (Int Int) Int)

(assert (=> b!631428 (< (dynLambda!3685 order!5079 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 printableTokens!2))))) (dynLambda!3684 order!5077 lambda!17092))))

(assert (=> d!221016 true))

(declare-fun e!383289 () Bool)

(assert (=> d!221016 e!383289))

(declare-fun res!273939 () Bool)

(assert (=> d!221016 (=> (not res!273939) (not e!383289))))

(declare-fun lt!269123 () Bool)

(assert (=> d!221016 (= res!273939 (= lt!269123 (forall!1650 (list!2800 (tokens!1161 printableTokens!2)) lambda!17092)))))

(assert (=> d!221016 (= lt!269123 (forall!1651 (tokens!1161 printableTokens!2) lambda!17092))))

(assert (=> d!221016 (not (isEmpty!4618 (rules!8142 printableTokens!2)))))

(assert (=> d!221016 (= (rulesProduceEachTokenIndividually!568 Lexer!1224 (rules!8142 printableTokens!2) (tokens!1161 printableTokens!2)) lt!269123)))

(declare-fun b!631414 () Bool)

(assert (=> b!631414 (= e!383289 (= lt!269123 (rulesProduceEachTokenIndividuallyList!334 Lexer!1224 (rules!8142 printableTokens!2) (list!2800 (tokens!1161 printableTokens!2)))))))

(assert (= (and d!221016 res!273939) b!631414))

(assert (=> d!221016 m!900647))

(assert (=> d!221016 m!900647))

(declare-fun m!901541 () Bool)

(assert (=> d!221016 m!901541))

(declare-fun m!901543 () Bool)

(assert (=> d!221016 m!901543))

(assert (=> d!221016 m!900099))

(assert (=> b!631414 m!900647))

(assert (=> b!631414 m!900647))

(assert (=> b!631414 m!900731))

(assert (=> b!630786 d!221016))

(declare-fun d!221054 () Bool)

(declare-fun res!273944 () Bool)

(declare-fun e!383305 () Bool)

(assert (=> d!221054 (=> (not res!273944) (not e!383305))))

(assert (=> d!221054 (= res!273944 (rulesValid!497 Lexer!1224 (rules!8142 printableTokens!2)))))

(assert (=> d!221054 (= (rulesInvariant!1161 Lexer!1224 (rules!8142 printableTokens!2)) e!383305)))

(declare-fun b!631436 () Bool)

(assert (=> b!631436 (= e!383305 (noDuplicateTag!497 Lexer!1224 (rules!8142 printableTokens!2) Nil!6576))))

(assert (= (and d!221054 res!273944) b!631436))

(declare-fun m!901545 () Bool)

(assert (=> d!221054 m!901545))

(declare-fun m!901547 () Bool)

(assert (=> b!631436 m!901547))

(assert (=> b!630785 d!221054))

(declare-fun d!221056 () Bool)

(assert (=> d!221056 (dynLambda!3677 lambda!17025 lt!268466)))

(declare-fun lt!269133 () Unit!11605)

(assert (=> d!221056 (= lt!269133 (choose!4590 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025 lt!268466))))

(declare-fun e!383306 () Bool)

(assert (=> d!221056 e!383306))

(declare-fun res!273945 () Bool)

(assert (=> d!221056 (=> (not res!273945) (not e!383306))))

(assert (=> d!221056 (= res!273945 (forall!1640 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025))))

(assert (=> d!221056 (= (forallContained!453 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17025 lt!268466) lt!269133)))

(declare-fun b!631437 () Bool)

(assert (=> b!631437 (= e!383306 (contains!1512 (list!2790 (map!1385 lt!268183 lambda!16887)) lt!268466))))

(assert (= (and d!221056 res!273945) b!631437))

(declare-fun b_lambda!24801 () Bool)

(assert (=> (not b_lambda!24801) (not d!221056)))

(declare-fun m!901549 () Bool)

(assert (=> d!221056 m!901549))

(assert (=> d!221056 m!900335))

(declare-fun m!901551 () Bool)

(assert (=> d!221056 m!901551))

(assert (=> d!221056 m!900335))

(assert (=> d!221056 m!900983))

(assert (=> b!631437 m!900335))

(declare-fun m!901553 () Bool)

(assert (=> b!631437 m!901553))

(assert (=> b!630965 d!221056))

(assert (=> b!630965 d!220910))

(declare-fun d!221058 () Bool)

(declare-fun lt!269134 () Bool)

(assert (=> d!221058 (= lt!269134 (forall!1640 (list!2790 lt!268443) lambda!17027))))

(assert (=> d!221058 (= lt!269134 (forall!1654 (c!115838 lt!268443) lambda!17027))))

(assert (=> d!221058 (= (forall!1645 lt!268443 lambda!17027) lt!269134)))

(declare-fun bs!73194 () Bool)

(assert (= bs!73194 d!221058))

(declare-fun m!901555 () Bool)

(assert (=> bs!73194 m!901555))

(assert (=> bs!73194 m!901555))

(declare-fun m!901557 () Bool)

(assert (=> bs!73194 m!901557))

(declare-fun m!901559 () Bool)

(assert (=> bs!73194 m!901559))

(assert (=> d!220804 d!221058))

(assert (=> d!220804 d!220886))

(declare-fun b!631452 () Bool)

(declare-fun e!383313 () Bool)

(declare-fun e!383312 () Bool)

(assert (=> b!631452 (= e!383313 e!383312)))

(declare-fun res!273961 () Bool)

(assert (=> b!631452 (=> (not res!273961) (not e!383312))))

(assert (=> b!631452 (= res!273961 (<= (- 1) (- (height!270 (left!5271 (map!1388 (c!115837 lt!268183) lambda!16887))) (height!270 (right!5601 (map!1388 (c!115837 lt!268183) lambda!16887))))))))

(declare-fun d!221060 () Bool)

(declare-fun res!273958 () Bool)

(assert (=> d!221060 (=> res!273958 e!383313)))

(assert (=> d!221060 (= res!273958 (not (is-Node!2164 (map!1388 (c!115837 lt!268183) lambda!16887))))))

(assert (=> d!221060 (= (isBalanced!576 (map!1388 (c!115837 lt!268183) lambda!16887)) e!383313)))

(declare-fun b!631453 () Bool)

(declare-fun res!273962 () Bool)

(assert (=> b!631453 (=> (not res!273962) (not e!383312))))

(declare-fun isEmpty!4623 (Conc!2164) Bool)

(assert (=> b!631453 (= res!273962 (not (isEmpty!4623 (left!5271 (map!1388 (c!115837 lt!268183) lambda!16887)))))))

(declare-fun b!631454 () Bool)

(assert (=> b!631454 (= e!383312 (not (isEmpty!4623 (right!5601 (map!1388 (c!115837 lt!268183) lambda!16887)))))))

(declare-fun b!631455 () Bool)

(declare-fun res!273963 () Bool)

(assert (=> b!631455 (=> (not res!273963) (not e!383312))))

(assert (=> b!631455 (= res!273963 (<= (- (height!270 (left!5271 (map!1388 (c!115837 lt!268183) lambda!16887))) (height!270 (right!5601 (map!1388 (c!115837 lt!268183) lambda!16887)))) 1))))

(declare-fun b!631456 () Bool)

(declare-fun res!273960 () Bool)

(assert (=> b!631456 (=> (not res!273960) (not e!383312))))

(assert (=> b!631456 (= res!273960 (isBalanced!576 (right!5601 (map!1388 (c!115837 lt!268183) lambda!16887))))))

(declare-fun b!631457 () Bool)

(declare-fun res!273959 () Bool)

(assert (=> b!631457 (=> (not res!273959) (not e!383312))))

(assert (=> b!631457 (= res!273959 (isBalanced!576 (left!5271 (map!1388 (c!115837 lt!268183) lambda!16887))))))

(assert (= (and d!221060 (not res!273958)) b!631452))

(assert (= (and b!631452 res!273961) b!631455))

(assert (= (and b!631455 res!273963) b!631457))

(assert (= (and b!631457 res!273959) b!631456))

(assert (= (and b!631456 res!273960) b!631453))

(assert (= (and b!631453 res!273962) b!631454))

(declare-fun m!901597 () Bool)

(assert (=> b!631456 m!901597))

(declare-fun m!901599 () Bool)

(assert (=> b!631455 m!901599))

(declare-fun m!901601 () Bool)

(assert (=> b!631455 m!901601))

(assert (=> b!631452 m!901599))

(assert (=> b!631452 m!901601))

(declare-fun m!901603 () Bool)

(assert (=> b!631457 m!901603))

(declare-fun m!901605 () Bool)

(assert (=> b!631453 m!901605))

(declare-fun m!901607 () Bool)

(assert (=> b!631454 m!901607))

(assert (=> b!630832 d!221060))

(assert (=> b!630832 d!220982))

(declare-fun d!221068 () Bool)

(declare-fun lt!269145 () Bool)

(assert (=> d!221068 (= lt!269145 (forall!1652 (list!2796 lt!268224) lambda!16913))))

(declare-fun forall!1658 (Conc!2165 Int) Bool)

(assert (=> d!221068 (= lt!269145 (forall!1658 (c!115839 lt!268224) lambda!16913))))

(assert (=> d!221068 (= (forall!1643 lt!268224 lambda!16913) lt!269145)))

(declare-fun bs!73204 () Bool)

(assert (= bs!73204 d!221068))

(declare-fun m!901611 () Bool)

(assert (=> bs!73204 m!901611))

(assert (=> bs!73204 m!901611))

(declare-fun m!901613 () Bool)

(assert (=> bs!73204 m!901613))

(declare-fun m!901615 () Bool)

(assert (=> bs!73204 m!901615))

(assert (=> d!220782 d!221068))

(assert (=> d!220782 d!220866))

(declare-fun d!221072 () Bool)

(assert (=> d!221072 (= (usesJsonRules!0 (_2!3853 (h!11969 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))) (= (rules!8142 (_2!3853 (h!11969 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))) (rules!109 JsonLexer!137)))))

(declare-fun bs!73205 () Bool)

(assert (= bs!73205 d!221072))

(assert (=> bs!73205 m!900019))

(assert (=> bs!73088 d!221072))

(declare-fun d!221074 () Bool)

(assert (=> d!221074 (dynLambda!3677 lambda!17023 lt!268466)))

(declare-fun lt!269146 () Unit!11605)

(assert (=> d!221074 (= lt!269146 (choose!4590 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023 lt!268466))))

(declare-fun e!383317 () Bool)

(assert (=> d!221074 e!383317))

(declare-fun res!273964 () Bool)

(assert (=> d!221074 (=> (not res!273964) (not e!383317))))

(assert (=> d!221074 (= res!273964 (forall!1640 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023))))

(assert (=> d!221074 (= (forallContained!453 (list!2790 (map!1385 lt!268183 lambda!16887)) lambda!17023 lt!268466) lt!269146)))

(declare-fun b!631464 () Bool)

(assert (=> b!631464 (= e!383317 (contains!1512 (list!2790 (map!1385 lt!268183 lambda!16887)) lt!268466))))

(assert (= (and d!221074 res!273964) b!631464))

(declare-fun b_lambda!24803 () Bool)

(assert (=> (not b_lambda!24803) (not d!221074)))

(assert (=> d!221074 m!901301))

(assert (=> d!221074 m!900335))

(declare-fun m!901617 () Bool)

(assert (=> d!221074 m!901617))

(assert (=> d!221074 m!900335))

(assert (=> d!221074 m!901141))

(assert (=> b!631464 m!900335))

(assert (=> b!631464 m!901553))

(assert (=> b!630963 d!221074))

(assert (=> b!630963 d!220910))

(declare-fun b!631499 () Bool)

(declare-fun res!273986 () Bool)

(declare-fun e!383335 () Bool)

(assert (=> b!631499 (=> (not res!273986) (not e!383335))))

(assert (=> b!631499 (= res!273986 (<= (- (height!269 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) (height!269 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) 1))))

(declare-fun b!631501 () Bool)

(declare-fun res!273987 () Bool)

(assert (=> b!631501 (=> (not res!273987) (not e!383335))))

(assert (=> b!631501 (= res!273987 (isBalanced!577 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun b!631502 () Bool)

(declare-fun res!273988 () Bool)

(assert (=> b!631502 (=> (not res!273988) (not e!383335))))

(assert (=> b!631502 (= res!273988 (isBalanced!577 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))))))

(declare-fun b!631503 () Bool)

(declare-fun e!383334 () Bool)

(assert (=> b!631503 (= e!383334 e!383335)))

(declare-fun res!273989 () Bool)

(assert (=> b!631503 (=> (not res!273989) (not e!383335))))

(assert (=> b!631503 (= res!273989 (<= (- 1) (- (height!269 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) (height!269 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))))))))

(declare-fun b!631504 () Bool)

(declare-fun res!273985 () Bool)

(assert (=> b!631504 (=> (not res!273985) (not e!383335))))

(declare-fun isEmpty!4624 (Conc!2162) Bool)

(assert (=> b!631504 (= res!273985 (not (isEmpty!4624 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))))))

(declare-fun b!631500 () Bool)

(assert (=> b!631500 (= e!383335 (not (isEmpty!4624 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))))))

(declare-fun d!221076 () Bool)

(declare-fun res!273990 () Bool)

(assert (=> d!221076 (=> res!273990 e!383334)))

(assert (=> d!221076 (= res!273990 (not (is-Node!2162 (c!115836 (tokens!1161 printableTokens!2)))))))

(assert (=> d!221076 (= (isBalanced!577 (c!115836 (tokens!1161 printableTokens!2))) e!383334)))

(assert (= (and d!221076 (not res!273990)) b!631503))

(assert (= (and b!631503 res!273989) b!631499))

(assert (= (and b!631499 res!273986) b!631502))

(assert (= (and b!631502 res!273988) b!631501))

(assert (= (and b!631501 res!273987) b!631504))

(assert (= (and b!631504 res!273985) b!631500))

(assert (=> b!631499 m!900799))

(assert (=> b!631499 m!900801))

(assert (=> b!631503 m!900799))

(assert (=> b!631503 m!900801))

(declare-fun m!901637 () Bool)

(assert (=> b!631500 m!901637))

(declare-fun m!901639 () Bool)

(assert (=> b!631501 m!901639))

(declare-fun m!901641 () Bool)

(assert (=> b!631502 m!901641))

(declare-fun m!901643 () Bool)

(assert (=> b!631504 m!901643))

(assert (=> d!220816 d!221076))

(declare-fun d!221084 () Bool)

(declare-fun res!273995 () Bool)

(declare-fun e!383343 () Bool)

(assert (=> d!221084 (=> res!273995 e!383343)))

(assert (=> d!221084 (= res!273995 (is-Nil!6565 lt!268187))))

(assert (=> d!221084 (= (noDuplicateTag!497 Lexer!1224 lt!268187 Nil!6576) e!383343)))

(declare-fun b!631515 () Bool)

(declare-fun e!383344 () Bool)

(assert (=> b!631515 (= e!383343 e!383344)))

(declare-fun res!273996 () Bool)

(assert (=> b!631515 (=> (not res!273996) (not e!383344))))

(declare-fun contains!1515 (List!6590 String!8608) Bool)

(assert (=> b!631515 (= res!273996 (not (contains!1515 Nil!6576 (tag!1602 (h!11966 lt!268187)))))))

(declare-fun b!631516 () Bool)

(assert (=> b!631516 (= e!383344 (noDuplicateTag!497 Lexer!1224 (t!83053 lt!268187) (Cons!6576 (tag!1602 (h!11966 lt!268187)) Nil!6576)))))

(assert (= (and d!221084 (not res!273995)) b!631515))

(assert (= (and b!631515 res!273996) b!631516))

(declare-fun m!901655 () Bool)

(assert (=> b!631515 m!901655))

(declare-fun m!901657 () Bool)

(assert (=> b!631516 m!901657))

(assert (=> b!630997 d!221084))

(declare-fun d!221088 () Bool)

(declare-fun res!274001 () Bool)

(declare-fun e!383349 () Bool)

(assert (=> d!221088 (=> res!274001 e!383349)))

(assert (=> d!221088 (= res!274001 (is-Nil!6567 lt!268184))))

(assert (=> d!221088 (= (forall!1642 lt!268184 lambda!16904) e!383349)))

(declare-fun b!631521 () Bool)

(declare-fun e!383350 () Bool)

(assert (=> b!631521 (= e!383349 e!383350)))

(declare-fun res!274002 () Bool)

(assert (=> b!631521 (=> (not res!274002) (not e!383350))))

(declare-fun dynLambda!3686 (Int PrintableTokens!62) Bool)

(assert (=> b!631521 (= res!274002 (dynLambda!3686 lambda!16904 (h!11968 lt!268184)))))

(declare-fun b!631522 () Bool)

(assert (=> b!631522 (= e!383350 (forall!1642 (t!83055 lt!268184) lambda!16904))))

(assert (= (and d!221088 (not res!274001)) b!631521))

(assert (= (and b!631521 res!274002) b!631522))

(declare-fun b_lambda!24811 () Bool)

(assert (=> (not b_lambda!24811) (not b!631521)))

(declare-fun m!901659 () Bool)

(assert (=> b!631521 m!901659))

(declare-fun m!901661 () Bool)

(assert (=> b!631522 m!901661))

(assert (=> d!220774 d!221088))

(declare-fun d!221092 () Bool)

(declare-fun res!274007 () Bool)

(declare-fun e!383355 () Bool)

(assert (=> d!221092 (=> res!274007 e!383355)))

(assert (=> d!221092 (= res!274007 (is-Nil!6567 lt!268184))))

(assert (=> d!221092 (= (forall!1642 lt!268184 lambda!16903) e!383355)))

(declare-fun b!631527 () Bool)

(declare-fun e!383356 () Bool)

(assert (=> b!631527 (= e!383355 e!383356)))

(declare-fun res!274008 () Bool)

(assert (=> b!631527 (=> (not res!274008) (not e!383356))))

(assert (=> b!631527 (= res!274008 (dynLambda!3686 lambda!16903 (h!11968 lt!268184)))))

(declare-fun b!631528 () Bool)

(assert (=> b!631528 (= e!383356 (forall!1642 (t!83055 lt!268184) lambda!16903))))

(assert (= (and d!221092 (not res!274007)) b!631527))

(assert (= (and b!631527 res!274008) b!631528))

(declare-fun b_lambda!24813 () Bool)

(assert (=> (not b_lambda!24813) (not b!631527)))

(declare-fun m!901663 () Bool)

(assert (=> b!631527 m!901663))

(declare-fun m!901665 () Bool)

(assert (=> b!631528 m!901665))

(assert (=> d!220774 d!221092))

(declare-fun d!221094 () Bool)

(declare-fun res!274009 () Bool)

(declare-fun e!383357 () Bool)

(assert (=> d!221094 (=> res!274009 e!383357)))

(assert (=> d!221094 (= res!274009 (is-Nil!6568 (map!1387 lt!268184 lambda!16887)))))

(assert (=> d!221094 (= (forall!1640 (map!1387 lt!268184 lambda!16887) lambda!16888) e!383357)))

(declare-fun b!631529 () Bool)

(declare-fun e!383358 () Bool)

(assert (=> b!631529 (= e!383357 e!383358)))

(declare-fun res!274010 () Bool)

(assert (=> b!631529 (=> (not res!274010) (not e!383358))))

(assert (=> b!631529 (= res!274010 (dynLambda!3677 lambda!16888 (h!11969 (map!1387 lt!268184 lambda!16887))))))

(declare-fun b!631530 () Bool)

(assert (=> b!631530 (= e!383358 (forall!1640 (t!83056 (map!1387 lt!268184 lambda!16887)) lambda!16888))))

(assert (= (and d!221094 (not res!274009)) b!631529))

(assert (= (and b!631529 res!274010) b!631530))

(declare-fun b_lambda!24815 () Bool)

(assert (=> (not b_lambda!24815) (not b!631529)))

(declare-fun m!901667 () Bool)

(assert (=> b!631529 m!901667))

(declare-fun m!901669 () Bool)

(assert (=> b!631530 m!901669))

(assert (=> d!220776 d!221094))

(declare-fun d!221096 () Bool)

(declare-fun lt!269154 () List!6582)

(assert (=> d!221096 (= (size!5159 lt!269154) (size!5172 lt!268184))))

(declare-fun e!383361 () List!6582)

(assert (=> d!221096 (= lt!269154 e!383361)))

(declare-fun c!115997 () Bool)

(assert (=> d!221096 (= c!115997 (is-Nil!6567 lt!268184))))

(assert (=> d!221096 (= (map!1387 lt!268184 lambda!16887) lt!269154)))

(declare-fun b!631533 () Bool)

(assert (=> b!631533 (= e!383361 Nil!6568)))

(declare-fun b!631534 () Bool)

(assert (=> b!631534 (= e!383361 ($colon$colon!44 (map!1387 (t!83055 lt!268184) lambda!16887) (dynLambda!3682 lambda!16887 (h!11968 lt!268184))))))

(assert (= (and d!221096 c!115997) b!631533))

(assert (= (and d!221096 (not c!115997)) b!631534))

(declare-fun b_lambda!24819 () Bool)

(assert (=> (not b_lambda!24819) (not b!631534)))

(declare-fun m!901675 () Bool)

(assert (=> d!221096 m!901675))

(declare-fun m!901677 () Bool)

(assert (=> d!221096 m!901677))

(declare-fun m!901679 () Bool)

(assert (=> b!631534 m!901679))

(declare-fun m!901681 () Bool)

(assert (=> b!631534 m!901681))

(assert (=> b!631534 m!901679))

(assert (=> b!631534 m!901681))

(declare-fun m!901683 () Bool)

(assert (=> b!631534 m!901683))

(assert (=> d!220776 d!221096))

(declare-fun d!221100 () Bool)

(assert (=> d!221100 (forall!1640 (map!1387 lt!268184 lambda!16887) lambda!16888)))

(assert (=> d!221100 true))

(declare-fun _$5!121 () Unit!11605)

(assert (=> d!221100 (= (choose!4581 lt!268184 lambda!16887 lambda!16888) _$5!121)))

(declare-fun bs!73207 () Bool)

(assert (= bs!73207 d!221100))

(assert (=> bs!73207 m!900113))

(assert (=> bs!73207 m!900113))

(assert (=> bs!73207 m!900115))

(assert (=> d!220776 d!221100))

(declare-fun d!221102 () Bool)

(declare-fun res!274013 () Bool)

(declare-fun e!383362 () Bool)

(assert (=> d!221102 (=> res!274013 e!383362)))

(assert (=> d!221102 (= res!274013 (is-Nil!6567 lt!268184))))

(assert (=> d!221102 (= (forall!1642 lt!268184 lambda!16907) e!383362)))

(declare-fun b!631535 () Bool)

(declare-fun e!383363 () Bool)

(assert (=> b!631535 (= e!383362 e!383363)))

(declare-fun res!274014 () Bool)

(assert (=> b!631535 (=> (not res!274014) (not e!383363))))

(assert (=> b!631535 (= res!274014 (dynLambda!3686 lambda!16907 (h!11968 lt!268184)))))

(declare-fun b!631536 () Bool)

(assert (=> b!631536 (= e!383363 (forall!1642 (t!83055 lt!268184) lambda!16907))))

(assert (= (and d!221102 (not res!274013)) b!631535))

(assert (= (and b!631535 res!274014) b!631536))

(declare-fun b_lambda!24821 () Bool)

(assert (=> (not b_lambda!24821) (not b!631535)))

(declare-fun m!901685 () Bool)

(assert (=> b!631535 m!901685))

(declare-fun m!901687 () Bool)

(assert (=> b!631536 m!901687))

(assert (=> d!220776 d!221102))

(declare-fun d!221104 () Bool)

(declare-fun res!274015 () Bool)

(declare-fun e!383364 () Bool)

(assert (=> d!221104 (=> res!274015 e!383364)))

(assert (=> d!221104 (= res!274015 (is-Nil!6568 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))))))

(assert (=> d!221104 (= (forall!1640 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))) lambda!16888) e!383364)))

(declare-fun b!631537 () Bool)

(declare-fun e!383365 () Bool)

(assert (=> b!631537 (= e!383364 e!383365)))

(declare-fun res!274016 () Bool)

(assert (=> b!631537 (=> (not res!274016) (not e!383365))))

(assert (=> b!631537 (= res!274016 (dynLambda!3677 lambda!16888 (h!11969 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))))

(declare-fun b!631538 () Bool)

(assert (=> b!631538 (= e!383365 (forall!1640 (t!83056 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))) lambda!16888))))

(assert (= (and d!221104 (not res!274015)) b!631537))

(assert (= (and b!631537 res!274016) b!631538))

(declare-fun b_lambda!24823 () Bool)

(assert (=> (not b_lambda!24823) (not b!631537)))

(declare-fun m!901695 () Bool)

(assert (=> b!631537 m!901695))

(declare-fun m!901697 () Bool)

(assert (=> b!631538 m!901697))

(assert (=> b!630829 d!221104))

(declare-fun d!221108 () Bool)

(assert (=> d!221108 (dynLambda!3677 lambda!17025 lt!268466)))

(declare-fun lt!269158 () Unit!11605)

(assert (=> d!221108 (= lt!269158 (choose!4590 (list!2790 lt!268444) lambda!17025 lt!268466))))

(declare-fun e!383366 () Bool)

(assert (=> d!221108 e!383366))

(declare-fun res!274017 () Bool)

(assert (=> d!221108 (=> (not res!274017) (not e!383366))))

(assert (=> d!221108 (= res!274017 (forall!1640 (list!2790 lt!268444) lambda!17025))))

(assert (=> d!221108 (= (forallContained!453 (list!2790 lt!268444) lambda!17025 lt!268466) lt!269158)))

(declare-fun b!631539 () Bool)

(assert (=> b!631539 (= e!383366 (contains!1512 (list!2790 lt!268444) lt!268466))))

(assert (= (and d!221108 res!274017) b!631539))

(declare-fun b_lambda!24825 () Bool)

(assert (=> (not b_lambda!24825) (not d!221108)))

(assert (=> d!221108 m!901549))

(assert (=> d!221108 m!900391))

(declare-fun m!901699 () Bool)

(assert (=> d!221108 m!901699))

(assert (=> d!221108 m!900391))

(declare-fun m!901701 () Bool)

(assert (=> d!221108 m!901701))

(assert (=> b!631539 m!900391))

(assert (=> b!631539 m!901131))

(assert (=> b!630961 d!221108))

(declare-fun d!221110 () Bool)

(assert (=> d!221110 (= (list!2790 lt!268444) (list!2795 (c!115838 lt!268444)))))

(declare-fun bs!73209 () Bool)

(assert (= bs!73209 d!221110))

(declare-fun m!901703 () Bool)

(assert (=> bs!73209 m!901703))

(assert (=> b!630961 d!221110))

(declare-fun d!221112 () Bool)

(assert (=> d!221112 (= (isEmpty!4618 (rules!8142 printableTokens!2)) (is-Nil!6565 (rules!8142 printableTokens!2)))))

(assert (=> d!220762 d!221112))

(declare-fun d!221114 () Bool)

(declare-fun c!116002 () Bool)

(assert (=> d!221114 (= c!116002 (is-Empty!2164 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))

(declare-fun e!383375 () List!6582)

(assert (=> d!221114 (= (list!2795 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))) e!383375)))

(declare-fun b!631553 () Bool)

(declare-fun e!383376 () List!6582)

(assert (=> b!631553 (= e!383375 e!383376)))

(declare-fun c!116003 () Bool)

(assert (=> b!631553 (= c!116003 (is-Leaf!3350 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))

(declare-fun b!631552 () Bool)

(assert (=> b!631552 (= e!383375 Nil!6568)))

(declare-fun b!631555 () Bool)

(assert (=> b!631555 (= e!383376 (++!1792 (list!2795 (left!5271 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))) (list!2795 (right!5601 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))))))

(declare-fun b!631554 () Bool)

(declare-fun list!2806 (IArray!4329) List!6582)

(assert (=> b!631554 (= e!383376 (list!2806 (xs!4805 (c!115838 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))))))

(assert (= (and d!221114 c!116002) b!631552))

(assert (= (and d!221114 (not c!116002)) b!631553))

(assert (= (and b!631553 c!116003) b!631554))

(assert (= (and b!631553 (not c!116003)) b!631555))

(declare-fun m!901709 () Bool)

(assert (=> b!631555 m!901709))

(declare-fun m!901711 () Bool)

(assert (=> b!631555 m!901711))

(assert (=> b!631555 m!901709))

(assert (=> b!631555 m!901711))

(declare-fun m!901713 () Bool)

(assert (=> b!631555 m!901713))

(declare-fun m!901715 () Bool)

(assert (=> b!631554 m!901715))

(assert (=> d!220780 d!221114))

(declare-fun b!631566 () Bool)

(declare-fun e!383383 () Bool)

(assert (=> b!631566 (= e!383383 true)))

(declare-fun b!631568 () Bool)

(declare-fun e!383384 () Bool)

(assert (=> b!631568 (= e!383384 true)))

(declare-fun b!631567 () Bool)

(assert (=> b!631567 (= e!383383 e!383384)))

(assert (=> b!630982 e!383383))

(assert (= (and b!630982 (is-Node!2162 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631566))

(assert (= b!631567 b!631568))

(assert (= (and b!630982 (is-Leaf!3348 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631567))

(declare-fun b!631594 () Bool)

(declare-fun b_free!18461 () Bool)

(declare-fun b_next!18477 () Bool)

(assert (=> b!631594 (= b_free!18461 (not b_next!18477))))

(declare-fun tp!196714 () Bool)

(declare-fun b_and!62255 () Bool)

(assert (=> b!631594 (= tp!196714 b_and!62255)))

(declare-fun b_free!18463 () Bool)

(declare-fun b_next!18479 () Bool)

(assert (=> b!631594 (= b_free!18463 (not b_next!18479))))

(declare-fun tp!196713 () Bool)

(declare-fun b_and!62257 () Bool)

(assert (=> b!631594 (= tp!196713 b_and!62257)))

(declare-fun tp!196712 () Bool)

(declare-fun e!383401 () Bool)

(declare-fun e!383402 () Bool)

(declare-fun b!631591 () Bool)

(declare-fun inv!8477 (Token!2404) Bool)

(assert (=> b!631591 (= e!383401 (and (inv!8477 (h!11967 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))))) e!383402 tp!196712))))

(assert (=> b!631028 (= tp!196686 e!383401)))

(declare-fun b!631593 () Bool)

(declare-fun e!383405 () Bool)

(declare-fun e!383406 () Bool)

(assert (=> b!631593 (= e!383405 (and (inv!8460 (tag!1602 (rule!2136 (h!11967 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))))))) (inv!8471 (transformation!1340 (rule!2136 (h!11967 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))))))) e!383406))))

(assert (=> b!631594 (= e!383406 (and tp!196714 tp!196713))))

(declare-fun b!631592 () Bool)

(declare-fun inv!21 (TokenValue!1374) Bool)

(assert (=> b!631592 (= e!383402 (and (inv!21 (value!43342 (h!11967 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2))))))) e!383405))))

(assert (= b!631593 b!631594))

(assert (= b!631592 b!631593))

(assert (= b!631591 b!631592))

(assert (= (and b!631028 (is-Cons!6566 (innerList!2220 (xs!4803 (c!115836 (tokens!1161 printableTokens!2)))))) b!631591))

(declare-fun m!901721 () Bool)

(assert (=> b!631591 m!901721))

(declare-fun m!901723 () Bool)

(assert (=> b!631593 m!901723))

(declare-fun m!901725 () Bool)

(assert (=> b!631593 m!901725))

(declare-fun m!901727 () Bool)

(assert (=> b!631592 m!901727))

(declare-fun b!631611 () Bool)

(declare-fun e!383417 () Bool)

(assert (=> b!631611 (= e!383417 true)))

(declare-fun b!631610 () Bool)

(declare-fun e!383416 () Bool)

(assert (=> b!631610 (= e!383416 e!383417)))

(declare-fun b!631609 () Bool)

(declare-fun e!383415 () Bool)

(assert (=> b!631609 (= e!383415 e!383416)))

(assert (=> b!630981 e!383415))

(assert (= b!631610 b!631611))

(assert (= b!631609 b!631610))

(assert (= (and b!630981 (is-Cons!6565 (rules!8142 (_2!3853 lt!268466)))) b!631609))

(assert (=> b!631611 (< (dynLambda!3683 order!5075 (toValue!2281 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17024))))

(assert (=> b!631611 (< (dynLambda!3685 order!5079 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17024))))

(declare-fun tp!196715 () Bool)

(declare-fun b!631612 () Bool)

(declare-fun e!383418 () Bool)

(declare-fun tp!196717 () Bool)

(assert (=> b!631612 (= e!383418 (and (inv!8464 (left!5269 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))) tp!196717 (inv!8464 (right!5599 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))) tp!196715))))

(declare-fun b!631614 () Bool)

(declare-fun e!383419 () Bool)

(declare-fun tp!196716 () Bool)

(assert (=> b!631614 (= e!383419 tp!196716)))

(declare-fun b!631613 () Bool)

(assert (=> b!631613 (= e!383418 (and (inv!8472 (xs!4803 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))) e!383419))))

(assert (=> b!631026 (= tp!196687 (and (inv!8464 (left!5269 (c!115836 (tokens!1161 printableTokens!2)))) e!383418))))

(assert (= (and b!631026 (is-Node!2162 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))) b!631612))

(assert (= b!631613 b!631614))

(assert (= (and b!631026 (is-Leaf!3348 (left!5269 (c!115836 (tokens!1161 printableTokens!2))))) b!631613))

(declare-fun m!901737 () Bool)

(assert (=> b!631612 m!901737))

(declare-fun m!901739 () Bool)

(assert (=> b!631612 m!901739))

(declare-fun m!901741 () Bool)

(assert (=> b!631613 m!901741))

(assert (=> b!631026 m!900467))

(declare-fun b!631615 () Bool)

(declare-fun tp!196718 () Bool)

(declare-fun e!383420 () Bool)

(declare-fun tp!196720 () Bool)

(assert (=> b!631615 (= e!383420 (and (inv!8464 (left!5269 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) tp!196720 (inv!8464 (right!5599 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) tp!196718))))

(declare-fun b!631617 () Bool)

(declare-fun e!383421 () Bool)

(declare-fun tp!196719 () Bool)

(assert (=> b!631617 (= e!383421 tp!196719)))

(declare-fun b!631616 () Bool)

(assert (=> b!631616 (= e!383420 (and (inv!8472 (xs!4803 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) e!383421))))

(assert (=> b!631026 (= tp!196685 (and (inv!8464 (right!5599 (c!115836 (tokens!1161 printableTokens!2)))) e!383420))))

(assert (= (and b!631026 (is-Node!2162 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) b!631615))

(assert (= b!631616 b!631617))

(assert (= (and b!631026 (is-Leaf!3348 (right!5599 (c!115836 (tokens!1161 printableTokens!2))))) b!631616))

(declare-fun m!901743 () Bool)

(assert (=> b!631615 m!901743))

(declare-fun m!901745 () Bool)

(assert (=> b!631615 m!901745))

(declare-fun m!901747 () Bool)

(assert (=> b!631616 m!901747))

(assert (=> b!631026 m!900469))

(declare-fun b!631620 () Bool)

(declare-fun b_free!18465 () Bool)

(declare-fun b_next!18481 () Bool)

(assert (=> b!631620 (= b_free!18465 (not b_next!18481))))

(declare-fun tp!196721 () Bool)

(declare-fun b_and!62259 () Bool)

(assert (=> b!631620 (= tp!196721 b_and!62259)))

(declare-fun b_free!18467 () Bool)

(declare-fun b_next!18483 () Bool)

(assert (=> b!631620 (= b_free!18467 (not b_next!18483))))

(declare-fun tp!196723 () Bool)

(declare-fun b_and!62261 () Bool)

(assert (=> b!631620 (= tp!196723 b_and!62261)))

(declare-fun e!383424 () Bool)

(assert (=> b!631620 (= e!383424 (and tp!196721 tp!196723))))

(declare-fun b!631619 () Bool)

(declare-fun e!383423 () Bool)

(assert (=> b!631619 (= e!383423 (and (inv!8460 (tag!1602 (h!11966 (t!83053 (rules!8142 printableTokens!2))))) (inv!8471 (transformation!1340 (h!11966 (t!83053 (rules!8142 printableTokens!2))))) e!383424))))

(declare-fun b!631618 () Bool)

(declare-fun e!383425 () Bool)

(declare-fun tp!196722 () Bool)

(assert (=> b!631618 (= e!383425 (and e!383423 tp!196722))))

(assert (=> b!631015 (= tp!196677 e!383425)))

(assert (= b!631619 b!631620))

(assert (= b!631618 b!631619))

(assert (= (and b!631015 (is-Cons!6565 (t!83053 (rules!8142 printableTokens!2)))) b!631618))

(declare-fun m!901749 () Bool)

(assert (=> b!631619 m!901749))

(declare-fun m!901751 () Bool)

(assert (=> b!631619 m!901751))

(declare-fun b!631623 () Bool)

(declare-fun e!383428 () Bool)

(assert (=> b!631623 (= e!383428 true)))

(declare-fun b!631622 () Bool)

(declare-fun e!383427 () Bool)

(assert (=> b!631622 (= e!383427 e!383428)))

(declare-fun b!631621 () Bool)

(declare-fun e!383426 () Bool)

(assert (=> b!631621 (= e!383426 e!383427)))

(assert (=> b!630979 e!383426))

(assert (= b!631622 b!631623))

(assert (= b!631621 b!631622))

(assert (= (and b!630979 (is-Cons!6565 (rules!8142 (_2!3853 lt!268466)))) b!631621))

(assert (=> b!631623 (< (dynLambda!3683 order!5075 (toValue!2281 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17023))))

(assert (=> b!631623 (< (dynLambda!3685 order!5079 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17023))))

(declare-fun b!631624 () Bool)

(declare-fun e!383429 () Bool)

(assert (=> b!631624 (= e!383429 true)))

(declare-fun b!631626 () Bool)

(declare-fun e!383430 () Bool)

(assert (=> b!631626 (= e!383430 true)))

(declare-fun b!631625 () Bool)

(assert (=> b!631625 (= e!383429 e!383430)))

(assert (=> b!630980 e!383429))

(assert (= (and b!630980 (is-Node!2162 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631624))

(assert (= b!631625 b!631626))

(assert (= (and b!630980 (is-Leaf!3348 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631625))

(declare-fun b!631627 () Bool)

(declare-fun e!383431 () Bool)

(assert (=> b!631627 (= e!383431 true)))

(declare-fun b!631629 () Bool)

(declare-fun e!383432 () Bool)

(assert (=> b!631629 (= e!383432 true)))

(declare-fun b!631628 () Bool)

(assert (=> b!631628 (= e!383431 e!383432)))

(assert (=> b!630984 e!383431))

(assert (= (and b!630984 (is-Node!2162 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631627))

(assert (= b!631628 b!631629))

(assert (= (and b!630984 (is-Leaf!3348 (c!115836 (tokens!1161 (_2!3853 lt!268466))))) b!631628))

(declare-fun b!631632 () Bool)

(declare-fun e!383435 () Bool)

(assert (=> b!631632 (= e!383435 true)))

(declare-fun b!631631 () Bool)

(declare-fun e!383434 () Bool)

(assert (=> b!631631 (= e!383434 e!383435)))

(declare-fun b!631630 () Bool)

(declare-fun e!383433 () Bool)

(assert (=> b!631630 (= e!383433 e!383434)))

(assert (=> b!630983 e!383433))

(assert (= b!631631 b!631632))

(assert (= b!631630 b!631631))

(assert (= (and b!630983 (is-Cons!6565 (rules!8142 (_2!3853 lt!268466)))) b!631630))

(assert (=> b!631632 (< (dynLambda!3683 order!5075 (toValue!2281 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17025))))

(assert (=> b!631632 (< (dynLambda!3685 order!5079 (toChars!2140 (transformation!1340 (h!11966 (rules!8142 (_2!3853 lt!268466)))))) (dynLambda!3676 order!5067 lambda!17025))))

(declare-fun b_lambda!24827 () Bool)

(assert (= b_lambda!24785 (or b!630971 b_lambda!24827)))

(declare-fun bs!73211 () Bool)

(declare-fun d!221124 () Bool)

(assert (= bs!73211 (and d!221124 b!630971)))

(assert (=> bs!73211 (= (dynLambda!3677 lambda!17026 (h!11969 lt!268454)) (usesJsonRules!0 (_2!3853 (h!11969 lt!268454))))))

(declare-fun m!901753 () Bool)

(assert (=> bs!73211 m!901753))

(assert (=> b!631194 d!221124))

(declare-fun b_lambda!24829 () Bool)

(assert (= b_lambda!24811 (or d!220774 b_lambda!24829)))

(declare-fun bs!73213 () Bool)

(declare-fun d!221126 () Bool)

(assert (= bs!73213 (and d!221126 d!220774)))

(declare-fun addId!0 (PrintableTokens!62) tuple2!7178)

(assert (=> bs!73213 (= (dynLambda!3686 lambda!16904 (h!11968 lt!268184)) (usesJsonRules!0 (_2!3853 (addId!0 (h!11968 lt!268184)))))))

(declare-fun m!901759 () Bool)

(assert (=> bs!73213 m!901759))

(declare-fun m!901761 () Bool)

(assert (=> bs!73213 m!901761))

(assert (=> b!631521 d!221126))

(declare-fun b_lambda!24831 () Bool)

(assert (= b_lambda!24813 (or d!220774 b_lambda!24831)))

(declare-fun bs!73214 () Bool)

(declare-fun d!221130 () Bool)

(assert (= bs!73214 (and d!221130 d!220774)))

(assert (=> bs!73214 (= (dynLambda!3686 lambda!16903 (h!11968 lt!268184)) (usesJsonRules!0 (h!11968 lt!268184)))))

(declare-fun m!901763 () Bool)

(assert (=> bs!73214 m!901763))

(assert (=> b!631527 d!221130))

(declare-fun b_lambda!24833 () Bool)

(assert (= b_lambda!24815 (or b!630748 b_lambda!24833)))

(declare-fun bs!73215 () Bool)

(declare-fun d!221132 () Bool)

(assert (= bs!73215 (and d!221132 b!630748)))

(assert (=> bs!73215 (= (dynLambda!3677 lambda!16888 (h!11969 (map!1387 lt!268184 lambda!16887))) (usesJsonRules!0 (_2!3853 (h!11969 (map!1387 lt!268184 lambda!16887)))))))

(declare-fun m!901765 () Bool)

(assert (=> bs!73215 m!901765))

(assert (=> b!631529 d!221132))

(declare-fun b_lambda!24835 () Bool)

(assert (= b_lambda!24819 (or b!630748 b_lambda!24835)))

(declare-fun bs!73216 () Bool)

(declare-fun d!221134 () Bool)

(assert (= bs!73216 (and d!221134 b!630748)))

(assert (=> bs!73216 (= (dynLambda!3682 lambda!16887 (h!11968 lt!268184)) (addId!0 (h!11968 lt!268184)))))

(assert (=> bs!73216 m!901759))

(assert (=> b!631534 d!221134))

(declare-fun b_lambda!24837 () Bool)

(assert (= b_lambda!24791 (or b!630971 b_lambda!24837)))

(declare-fun bs!73217 () Bool)

(declare-fun d!221136 () Bool)

(assert (= bs!73217 (and d!221136 b!630971)))

(assert (=> bs!73217 (= (dynLambda!3677 lambda!17025 (h!11969 lt!268456)) (> (_1!3853 (h!11969 lt!268456)) (_1!3853 lt!268466)))))

(assert (=> b!631292 d!221136))

(declare-fun b_lambda!24839 () Bool)

(assert (= b_lambda!24803 (or b!630971 b_lambda!24839)))

(declare-fun bs!73218 () Bool)

(declare-fun d!221138 () Bool)

(assert (= bs!73218 (and d!221138 b!630971)))

(assert (=> bs!73218 (= (dynLambda!3677 lambda!17023 lt!268466) (< (_1!3853 lt!268466) (_1!3853 lt!268466)))))

(assert (=> d!221074 d!221138))

(declare-fun b_lambda!24841 () Bool)

(assert (= b_lambda!24821 (or d!220776 b_lambda!24841)))

(declare-fun bs!73219 () Bool)

(declare-fun d!221140 () Bool)

(assert (= bs!73219 (and d!221140 d!220776)))

(assert (=> bs!73219 (= (dynLambda!3686 lambda!16907 (h!11968 lt!268184)) (dynLambda!3677 lambda!16888 (dynLambda!3682 lambda!16887 (h!11968 lt!268184))))))

(declare-fun b_lambda!24859 () Bool)

(assert (=> (not b_lambda!24859) (not bs!73219)))

(declare-fun b_lambda!24861 () Bool)

(assert (=> (not b_lambda!24861) (not bs!73219)))

(assert (=> bs!73219 m!901681))

(assert (=> bs!73219 m!901681))

(declare-fun m!901767 () Bool)

(assert (=> bs!73219 m!901767))

(assert (=> b!631535 d!221140))

(declare-fun b_lambda!24843 () Bool)

(assert (= b_lambda!24787 (or b!630971 b_lambda!24843)))

(declare-fun bs!73220 () Bool)

(declare-fun d!221142 () Bool)

(assert (= bs!73220 (and d!221142 b!630971)))

(assert (=> bs!73220 (= (dynLambda!3677 lambda!17026 (h!11969 lt!268450)) (usesJsonRules!0 (_2!3853 (h!11969 lt!268450))))))

(declare-fun m!901769 () Bool)

(assert (=> bs!73220 m!901769))

(assert (=> b!631221 d!221142))

(declare-fun b_lambda!24845 () Bool)

(assert (= b_lambda!24801 (or b!630971 b_lambda!24845)))

(declare-fun bs!73221 () Bool)

(declare-fun d!221144 () Bool)

(assert (= bs!73221 (and d!221144 b!630971)))

(assert (=> bs!73221 (= (dynLambda!3677 lambda!17025 lt!268466) (> (_1!3853 lt!268466) (_1!3853 lt!268466)))))

(assert (=> d!221056 d!221144))

(declare-fun b_lambda!24847 () Bool)

(assert (= b_lambda!24783 (or b!630971 b_lambda!24847)))

(declare-fun bs!73222 () Bool)

(declare-fun d!221146 () Bool)

(assert (= bs!73222 (and d!221146 b!630971)))

(assert (=> bs!73222 (= (dynLambda!3677 lambda!17023 (h!11969 lt!268453)) (< (_1!3853 (h!11969 lt!268453)) (_1!3853 lt!268466)))))

(assert (=> b!631171 d!221146))

(declare-fun b_lambda!24849 () Bool)

(assert (= b_lambda!24825 (or b!630971 b_lambda!24849)))

(assert (=> d!221108 d!221144))

(declare-fun b_lambda!24851 () Bool)

(assert (= b_lambda!24789 (or b!630971 b_lambda!24851)))

(declare-fun bs!73223 () Bool)

(declare-fun d!221148 () Bool)

(assert (= bs!73223 (and d!221148 b!630971)))

(assert (=> bs!73223 (= (dynLambda!3677 lambda!17026 (h!11969 lt!268457)) (usesJsonRules!0 (_2!3853 (h!11969 lt!268457))))))

(declare-fun m!901771 () Bool)

(assert (=> bs!73223 m!901771))

(assert (=> b!631254 d!221148))

(declare-fun b_lambda!24853 () Bool)

(assert (= b_lambda!24795 (or b!630971 b_lambda!24853)))

(assert (=> d!221012 d!221138))

(declare-fun b_lambda!24855 () Bool)

(assert (= b_lambda!24823 (or b!630748 b_lambda!24855)))

(declare-fun bs!73224 () Bool)

(declare-fun d!221150 () Bool)

(assert (= bs!73224 (and d!221150 b!630748)))

(assert (=> bs!73224 (= (dynLambda!3677 lambda!16888 (h!11969 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887)))))) (usesJsonRules!0 (_2!3853 (h!11969 (t!83056 (list!2790 (sortObjectsByID!0 (map!1385 lt!268183 lambda!16887))))))))))

(declare-fun m!901773 () Bool)

(assert (=> bs!73224 m!901773))

(assert (=> b!631537 d!221150))

(declare-fun b_lambda!24857 () Bool)

(assert (= b_lambda!24793 (or b!630748 b_lambda!24857)))

(declare-fun bs!73225 () Bool)

(declare-fun d!221152 () Bool)

(assert (= bs!73225 (and d!221152 b!630748)))

(assert (=> bs!73225 (= (dynLambda!3682 lambda!16887 (h!11968 (list!2791 lt!268183))) (addId!0 (h!11968 (list!2791 lt!268183))))))

(declare-fun m!901775 () Bool)

(assert (=> bs!73225 m!901775))

(assert (=> b!631308 d!221152))

(push 1)

(assert (not d!220984))

(assert (not b!631210))

(assert (not d!220910))

(assert (not b!631503))

(assert (not b!631244))

(assert (not b_lambda!24857))

(assert (not b!631209))

(assert (not b!631621))

(assert (not b!631302))

(assert (not bs!73215))

(assert (not b!631619))

(assert b_and!62257)

(assert (not b!631266))

(assert (not b!631117))

(assert (not b!631320))

(assert (not bm!41386))

(assert (not d!220990))

(assert (not b!631630))

(assert (not b!631251))

(assert (not d!221058))

(assert (not b!631220))

(assert (not b!631133))

(assert (not b!631539))

(assert (not b!631233))

(assert (not b!631236))

(assert (not d!221010))

(assert (not b!631613))

(assert (not d!220914))

(assert (not b_lambda!24839))

(assert (not b_lambda!24853))

(assert (not b!631414))

(assert (not b!631436))

(assert (not d!220836))

(assert (not bs!73214))

(assert (not b!631113))

(assert (not d!220992))

(assert b_and!62261)

(assert (not d!220964))

(assert (not b!631504))

(assert (not b!631065))

(assert (not b!631291))

(assert (not b!631176))

(assert (not d!220892))

(assert (not d!221074))

(assert (not d!220870))

(assert (not d!220890))

(assert (not d!221004))

(assert (not b!631499))

(assert (not b_lambda!24859))

(assert (not d!220930))

(assert (not b!631609))

(assert (not d!220854))

(assert (not bs!73216))

(assert (not b!631248))

(assert (not d!220894))

(assert (not b!631250))

(assert (not b_lambda!24833))

(assert (not b!631114))

(assert (not d!220948))

(assert (not b!631253))

(assert (not d!221016))

(assert (not d!221000))

(assert (not b!631626))

(assert (not b!631263))

(assert (not d!220940))

(assert (not d!220942))

(assert (not b!631066))

(assert (not b!631116))

(assert (not b_lambda!24831))

(assert (not b!631216))

(assert (not b!631069))

(assert (not d!220880))

(assert (not b_lambda!24837))

(assert (not bm!41389))

(assert (not d!221054))

(assert (not b!631245))

(assert (not b!631076))

(assert (not b!631118))

(assert (not b_next!18483))

(assert b_and!62249)

(assert (not b!631134))

(assert (not d!220994))

(assert (not b!631278))

(assert (not b!631536))

(assert (not b!631178))

(assert (not b!631115))

(assert (not b!631121))

(assert (not bs!73220))

(assert (not bm!41390))

(assert (not d!221100))

(assert (not b!631258))

(assert (not b!631252))

(assert (not d!221068))

(assert (not b_lambda!24855))

(assert (not b!631205))

(assert (not b!631261))

(assert (not b!631277))

(assert (not d!220978))

(assert (not b!631137))

(assert (not d!221008))

(assert (not b!631321))

(assert (not b!631077))

(assert (not b!631158))

(assert (not d!220866))

(assert (not b!631617))

(assert (not d!220960))

(assert (not b_lambda!24827))

(assert (not d!220902))

(assert (not d!220936))

(assert (not d!221012))

(assert (not d!220920))

(assert (not d!220834))

(assert (not d!220944))

(assert (not b!631196))

(assert (not b_lambda!24851))

(assert (not b!631627))

(assert (not d!220882))

(assert b_and!62255)

(assert (not b!631522))

(assert (not b!631566))

(assert (not b!631530))

(assert (not b!631234))

(assert (not b!631256))

(assert (not d!220878))

(assert (not b!631260))

(assert (not b!631308))

(assert (not b!631247))

(assert (not b!631240))

(assert (not d!220958))

(assert (not b!631336))

(assert (not b_next!18479))

(assert (not b!631452))

(assert (not d!220888))

(assert (not b!631591))

(assert (not b!631257))

(assert (not d!220844))

(assert (not d!220934))

(assert (not b!631593))

(assert (not d!220924))

(assert (not d!220832))

(assert (not b!631502))

(assert (not b!631456))

(assert (not b_next!18471))

(assert (not b!631213))

(assert (not d!220956))

(assert (not b_lambda!24847))

(assert (not b!631624))

(assert (not b!631592))

(assert (not b!631200))

(assert b_and!62247)

(assert (not b!631296))

(assert (not b!631195))

(assert (not d!220842))

(assert (not b!631259))

(assert (not b!631612))

(assert (not d!220922))

(assert (not b!631616))

(assert (not b!631426))

(assert (not d!221108))

(assert (not b!631457))

(assert (not d!220862))

(assert (not d!220846))

(assert (not b!631437))

(assert (not d!220904))

(assert (not d!220912))

(assert (not b_lambda!24829))

(assert (not b!631568))

(assert (not b!631238))

(assert (not d!220906))

(assert (not b!631175))

(assert (not bs!73224))

(assert (not b!631206))

(assert (not b!631455))

(assert (not b!631615))

(assert (not b!631181))

(assert (not b!631191))

(assert (not d!220838))

(assert (not d!220970))

(assert (not b!631501))

(assert (not b!631138))

(assert (not d!221002))

(assert (not b_lambda!24845))

(assert (not d!220946))

(assert (not b!631464))

(assert (not d!221110))

(assert (not b!631323))

(assert (not b!631198))

(assert (not b_lambda!24861))

(assert (not bs!73223))

(assert (not b!631125))

(assert (not d!221014))

(assert (not b!631618))

(assert (not d!220916))

(assert (not b!631132))

(assert (not b_next!18481))

(assert (not b!631124))

(assert (not d!220976))

(assert (not d!221006))

(assert (not b!631112))

(assert (not d!220874))

(assert (not b!631212))

(assert (not b!631453))

(assert (not b!631264))

(assert (not d!220868))

(assert (not b!631208))

(assert (not d!220858))

(assert (not d!220998))

(assert (not d!220864))

(assert (not b!631629))

(assert (not d!220926))

(assert (not d!220932))

(assert (not b!631554))

(assert (not b!631297))

(assert (not b!631288))

(assert (not d!220996))

(assert (not b!631122))

(assert (not b!631026))

(assert (not d!220918))

(assert (not b!631249))

(assert (not b!631123))

(assert (not b!631073))

(assert (not d!220840))

(assert (not d!220830))

(assert (not b!631120))

(assert (not b!631246))

(assert (not b!631207))

(assert (not b!631255))

(assert (not b!631299))

(assert (not b_next!18469))

(assert (not b!631119))

(assert (not d!220966))

(assert (not b!631555))

(assert (not b!631222))

(assert (not d!220896))

(assert (not b!631283))

(assert (not b!631534))

(assert (not d!220828))

(assert (not b!631219))

(assert (not b!631223))

(assert (not d!220986))

(assert (not bm!41385))

(assert (not b!631193))

(assert (not b!631516))

(assert (not d!220980))

(assert (not d!220886))

(assert (not d!221072))

(assert (not b!631614))

(assert (not b_lambda!24777))

(assert (not d!220982))

(assert (not b!631140))

(assert (not d!220988))

(assert (not b!631151))

(assert (not b_lambda!24835))

(assert (not b!631190))

(assert (not bs!73225))

(assert (not b!631500))

(assert (not b!631192))

(assert (not d!221096))

(assert (not bs!73211))

(assert (not d!220860))

(assert (not b!631538))

(assert (not b_next!18477))

(assert (not b!631515))

(assert (not b!631528))

(assert (not bs!73213))

(assert (not b_lambda!24843))

(assert (not d!220856))

(assert (not b!631454))

(assert (not b!631080))

(assert (not b!631143))

(assert (not d!220898))

(assert (not d!221056))

(assert (not b!631211))

(assert (not b!631141))

(assert (not d!220962))

(assert b_and!62259)

(assert (not b!631204))

(assert (not b_lambda!24841))

(assert (not b_lambda!24849))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62257)

(assert b_and!62261)

(assert b_and!62255)

(assert (not b_next!18479))

(assert (not b_next!18481))

(assert (not b_next!18469))

(assert (not b_next!18477))

(assert b_and!62259)

(assert b_and!62249)

(assert (not b_next!18483))

(assert b_and!62247)

(assert (not b_next!18471))

(check-sat)

(pop 1)

