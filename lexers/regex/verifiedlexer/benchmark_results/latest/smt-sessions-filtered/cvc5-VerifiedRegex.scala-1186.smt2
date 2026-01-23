; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61876 () Bool)

(assert start!61876)

(declare-fun b!631891 () Bool)

(declare-fun lambda!17127 () Int)

(declare-fun lambda!17126 () Int)

(assert (=> b!631891 (not (= lambda!17127 lambda!17126))))

(declare-fun e!383614 () Bool)

(declare-datatypes ((List!6592 0))(
  ( (Nil!6578) (Cons!6578 (h!11979 (_ BitVec 16)) (t!83236 List!6592)) )
))
(declare-datatypes ((TokenValue!1376 0))(
  ( (FloatLiteralValue!2752 (text!10077 List!6592)) (TokenValueExt!1375 (__x!4640 Int)) (Broken!6880 (value!43373 List!6592)) (Object!1389) (End!1376) (Def!1376) (Underscore!1376) (Match!1376) (Else!1376) (Error!1376) (Case!1376) (If!1376) (Extends!1376) (Abstract!1376) (Class!1376) (Val!1376) (DelimiterValue!2752 (del!1436 List!6592)) (KeywordValue!1382 (value!43374 List!6592)) (CommentValue!2752 (value!43375 List!6592)) (WhitespaceValue!2752 (value!43376 List!6592)) (IndentationValue!1376 (value!43377 List!6592)) (String!8617) (Int32!1376) (Broken!6881 (value!43378 List!6592)) (Boolean!1377) (Unit!11660) (OperatorValue!1379 (op!1436 List!6592)) (IdentifierValue!2752 (value!43379 List!6592)) (IdentifierValue!2753 (value!43380 List!6592)) (WhitespaceValue!2753 (value!43381 List!6592)) (True!2752) (False!2752) (Broken!6882 (value!43382 List!6592)) (Broken!6883 (value!43383 List!6592)) (True!2753) (RightBrace!1376) (RightBracket!1376) (Colon!1376) (Null!1376) (Comma!1376) (LeftBracket!1376) (False!2753) (LeftBrace!1376) (ImaginaryLiteralValue!1376 (text!10078 List!6592)) (StringLiteralValue!4128 (value!43384 List!6592)) (EOFValue!1376 (value!43385 List!6592)) (IdentValue!1376 (value!43386 List!6592)) (DelimiterValue!2753 (value!43387 List!6592)) (DedentValue!1376 (value!43388 List!6592)) (NewLineValue!1376 (value!43389 List!6592)) (IntegerValue!4128 (value!43390 (_ BitVec 32)) (text!10079 List!6592)) (IntegerValue!4129 (value!43391 Int) (text!10080 List!6592)) (Times!1376) (Or!1376) (Equal!1376) (Minus!1376) (Broken!6884 (value!43392 List!6592)) (And!1376) (Div!1376) (LessEqual!1376) (Mod!1376) (Concat!3052) (Not!1376) (Plus!1376) (SpaceValue!1376 (value!43393 List!6592)) (IntegerValue!4130 (value!43394 Int) (text!10081 List!6592)) (StringLiteralValue!4129 (text!10082 List!6592)) (FloatLiteralValue!2753 (text!10083 List!6592)) (BytesLiteralValue!1376 (value!43395 List!6592)) (CommentValue!2753 (value!43396 List!6592)) (StringLiteralValue!4130 (value!43397 List!6592)) (ErrorTokenValue!1376 (msg!1437 List!6592)) )
))
(declare-datatypes ((Regex!1676 0))(
  ( (ElementMatch!1676 (c!116048 (_ BitVec 16))) (Concat!3053 (regOne!3864 Regex!1676) (regTwo!3864 Regex!1676)) (EmptyExpr!1676) (Star!1676 (reg!2005 Regex!1676)) (EmptyLang!1676) (Union!1676 (regOne!3865 Regex!1676) (regTwo!3865 Regex!1676)) )
))
(declare-datatypes ((String!8618 0))(
  ( (String!8619 (value!43398 String)) )
))
(declare-datatypes ((IArray!4343 0))(
  ( (IArray!4344 (innerList!2229 List!6592)) )
))
(declare-datatypes ((Conc!2171 0))(
  ( (Node!2171 (left!5283 Conc!2171) (right!5613 Conc!2171) (csize!4572 Int) (cheight!2382 Int)) (Leaf!3358 (xs!4812 IArray!4343) (csize!4573 Int)) (Empty!2171) )
))
(declare-datatypes ((BalanceConc!4354 0))(
  ( (BalanceConc!4355 (c!116049 Conc!2171)) )
))
(declare-datatypes ((TokenValueInjection!2504 0))(
  ( (TokenValueInjection!2505 (toValue!2283 Int) (toChars!2142 Int)) )
))
(declare-datatypes ((Rule!2484 0))(
  ( (Rule!2485 (regex!1342 Regex!1676) (tag!1604 String!8618) (isSeparator!1342 Bool) (transformation!1342 TokenValueInjection!2504)) )
))
(declare-datatypes ((Token!2408 0))(
  ( (Token!2409 (value!43399 TokenValue!1376) (rule!2138 Rule!2484) (size!5180 Int) (originalCharacters!1375 List!6592)) )
))
(declare-datatypes ((List!6593 0))(
  ( (Nil!6579) (Cons!6579 (h!11980 Token!2408) (t!83237 List!6593)) )
))
(declare-datatypes ((IArray!4345 0))(
  ( (IArray!4346 (innerList!2230 List!6593)) )
))
(declare-datatypes ((Conc!2172 0))(
  ( (Node!2172 (left!5284 Conc!2172) (right!5614 Conc!2172) (csize!4574 Int) (cheight!2383 Int)) (Leaf!3359 (xs!4813 IArray!4345) (csize!4575 Int)) (Empty!2172) )
))
(declare-datatypes ((List!6594 0))(
  ( (Nil!6580) (Cons!6580 (h!11981 Rule!2484) (t!83238 List!6594)) )
))
(declare-datatypes ((BalanceConc!4356 0))(
  ( (BalanceConc!4357 (c!116050 Conc!2172)) )
))
(declare-datatypes ((PrintableTokens!66 0))(
  ( (PrintableTokens!67 (rules!8150 List!6594) (tokens!1165 BalanceConc!4356)) )
))
(declare-datatypes ((tuple2!7182 0))(
  ( (tuple2!7183 (_1!3855 Int) (_2!3855 PrintableTokens!66)) )
))
(declare-datatypes ((List!6595 0))(
  ( (Nil!6581) (Cons!6581 (h!11982 tuple2!7182) (t!83239 List!6595)) )
))
(declare-fun lt!269331 () List!6595)

(declare-fun forall!1664 (List!6595 Int) Bool)

(assert (=> b!631891 (= e!383614 (not (forall!1664 lt!269331 lambda!17127)))))

(declare-datatypes ((Unit!11661 0))(
  ( (Unit!11662) )
))
(declare-fun lt!269333 () Unit!11661)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6595) Unit!11661)

(assert (=> b!631891 (= lt!269333 (lemmaRemoveIdsPreservesRules!0 lt!269331))))

(declare-datatypes ((List!6596 0))(
  ( (Nil!6582) (Cons!6582 (h!11983 PrintableTokens!66) (t!83240 List!6596)) )
))
(declare-datatypes ((IArray!4347 0))(
  ( (IArray!4348 (innerList!2231 List!6596)) )
))
(declare-datatypes ((Conc!2173 0))(
  ( (Node!2173 (left!5285 Conc!2173) (right!5615 Conc!2173) (csize!4576 Int) (cheight!2384 Int)) (Leaf!3360 (xs!4814 IArray!4347) (csize!4577 Int)) (Empty!2173) )
))
(declare-datatypes ((BalanceConc!4358 0))(
  ( (BalanceConc!4359 (c!116051 Conc!2173)) )
))
(declare-fun lt!269335 () BalanceConc!4358)

(declare-fun lambda!17125 () Int)

(declare-datatypes ((IArray!4349 0))(
  ( (IArray!4350 (innerList!2232 List!6595)) )
))
(declare-datatypes ((Conc!2174 0))(
  ( (Node!2174 (left!5286 Conc!2174) (right!5616 Conc!2174) (csize!4578 Int) (cheight!2385 Int)) (Leaf!3361 (xs!4815 IArray!4349) (csize!4579 Int)) (Empty!2174) )
))
(declare-datatypes ((BalanceConc!4360 0))(
  ( (BalanceConc!4361 (c!116052 Conc!2174)) )
))
(declare-fun list!2809 (BalanceConc!4360) List!6595)

(declare-fun sortObjectsByID!0 (BalanceConc!4360) BalanceConc!4360)

(declare-fun map!1394 (BalanceConc!4358 Int) BalanceConc!4360)

(assert (=> b!631891 (= lt!269331 (list!2809 (sortObjectsByID!0 (map!1394 lt!269335 lambda!17125))))))

(declare-fun lt!269338 () Unit!11661)

(declare-fun lt!269332 () List!6596)

(declare-fun mapPred!5 (List!6596 Int Int) Unit!11661)

(assert (=> b!631891 (= lt!269338 (mapPred!5 lt!269332 lambda!17125 lambda!17126))))

(declare-fun lt!269336 () Unit!11661)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6596) Unit!11661)

(assert (=> b!631891 (= lt!269336 (lemmaAddIdsPreservesRules!0 lt!269332))))

(declare-fun list!2810 (BalanceConc!4358) List!6596)

(assert (=> b!631891 (= lt!269332 (list!2810 lt!269335))))

(declare-fun printableTokens!2 () PrintableTokens!66)

(declare-fun lt!269334 () Int)

(declare-datatypes ((List!6597 0))(
  ( (Nil!6583) (Cons!6583 (h!11984 Int) (t!83241 List!6597)) )
))
(declare-datatypes ((IArray!4351 0))(
  ( (IArray!4352 (innerList!2233 List!6597)) )
))
(declare-datatypes ((Conc!2175 0))(
  ( (Node!2175 (left!5287 Conc!2175) (right!5617 Conc!2175) (csize!4580 Int) (cheight!2386 Int)) (Leaf!3362 (xs!4816 IArray!4351) (csize!4581 Int)) (Empty!2175) )
))
(declare-datatypes ((BalanceConc!4362 0))(
  ( (BalanceConc!4363 (c!116053 Conc!2175)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!66 Int BalanceConc!4362 BalanceConc!4358) BalanceConc!4358)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4356 Int Int BalanceConc!4362) BalanceConc!4362)

(assert (=> b!631891 (= lt!269335 (slicesMulti!0 printableTokens!2 lt!269334 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)) (BalanceConc!4359 Empty!2173)))))

(declare-fun b!631892 () Bool)

(declare-fun e!383611 () Bool)

(assert (=> b!631892 (= e!383611 e!383614)))

(declare-fun res!274134 () Bool)

(assert (=> b!631892 (=> (not res!274134) (not e!383614))))

(declare-fun lt!269337 () List!6594)

(declare-fun isEmpty!4628 (List!6594) Bool)

(assert (=> b!631892 (= res!274134 (not (isEmpty!4628 lt!269337)))))

(declare-datatypes ((JsonLexer!140 0))(
  ( (JsonLexer!141) )
))
(declare-fun rules!109 (JsonLexer!140) List!6594)

(assert (=> b!631892 (= lt!269337 (rules!109 JsonLexer!141))))

(declare-fun b!631893 () Bool)

(declare-fun res!274137 () Bool)

(assert (=> b!631893 (=> (not res!274137) (not e!383614))))

(declare-fun usesJsonRules!0 (PrintableTokens!66) Bool)

(assert (=> b!631893 (= res!274137 (usesJsonRules!0 printableTokens!2))))

(declare-fun res!274135 () Bool)

(assert (=> start!61876 (=> (not res!274135) (not e!383611))))

(assert (=> start!61876 (= res!274135 (> lt!269334 0))))

(declare-fun size!5181 (PrintableTokens!66) Int)

(assert (=> start!61876 (= lt!269334 (size!5181 printableTokens!2))))

(assert (=> start!61876 e!383611))

(declare-fun e!383613 () Bool)

(declare-fun inv!8481 (PrintableTokens!66) Bool)

(assert (=> start!61876 (and (inv!8481 printableTokens!2) e!383613)))

(declare-fun b!631894 () Bool)

(declare-fun e!383612 () Bool)

(declare-fun tp!196747 () Bool)

(declare-fun inv!8482 (Conc!2172) Bool)

(assert (=> b!631894 (= e!383612 (and (inv!8482 (c!116050 (tokens!1165 printableTokens!2))) tp!196747))))

(declare-fun b!631895 () Bool)

(declare-fun res!274136 () Bool)

(assert (=> b!631895 (=> (not res!274136) (not e!383614))))

(declare-datatypes ((LexerInterface!1228 0))(
  ( (LexerInterfaceExt!1225 (__x!4641 Int)) (Lexer!1226) )
))
(declare-fun rulesInvariant!1163 (LexerInterface!1228 List!6594) Bool)

(assert (=> b!631895 (= res!274136 (rulesInvariant!1163 Lexer!1226 lt!269337))))

(declare-fun b!631896 () Bool)

(declare-fun tp!196746 () Bool)

(declare-fun inv!8483 (BalanceConc!4356) Bool)

(assert (=> b!631896 (= e!383613 (and tp!196746 (inv!8483 (tokens!1165 printableTokens!2)) e!383612))))

(assert (= (and start!61876 res!274135) b!631892))

(assert (= (and b!631892 res!274134) b!631895))

(assert (= (and b!631895 res!274136) b!631893))

(assert (= (and b!631893 res!274137) b!631891))

(assert (= b!631896 b!631894))

(assert (= start!61876 b!631896))

(declare-fun m!902367 () Bool)

(assert (=> b!631894 m!902367))

(declare-fun m!902369 () Bool)

(assert (=> b!631892 m!902369))

(declare-fun m!902371 () Bool)

(assert (=> b!631892 m!902371))

(declare-fun m!902373 () Bool)

(assert (=> b!631896 m!902373))

(declare-fun m!902375 () Bool)

(assert (=> start!61876 m!902375))

(declare-fun m!902377 () Bool)

(assert (=> start!61876 m!902377))

(declare-fun m!902379 () Bool)

(assert (=> b!631893 m!902379))

(declare-fun m!902381 () Bool)

(assert (=> b!631891 m!902381))

(declare-fun m!902383 () Bool)

(assert (=> b!631891 m!902383))

(declare-fun m!902385 () Bool)

(assert (=> b!631891 m!902385))

(declare-fun m!902387 () Bool)

(assert (=> b!631891 m!902387))

(declare-fun m!902389 () Bool)

(assert (=> b!631891 m!902389))

(assert (=> b!631891 m!902381))

(declare-fun m!902391 () Bool)

(assert (=> b!631891 m!902391))

(assert (=> b!631891 m!902391))

(declare-fun m!902393 () Bool)

(assert (=> b!631891 m!902393))

(declare-fun m!902395 () Bool)

(assert (=> b!631891 m!902395))

(declare-fun m!902397 () Bool)

(assert (=> b!631891 m!902397))

(assert (=> b!631891 m!902387))

(declare-fun m!902399 () Bool)

(assert (=> b!631891 m!902399))

(declare-fun m!902401 () Bool)

(assert (=> b!631895 m!902401))

(push 1)

(assert (not b!631894))

(assert (not b!631891))

(assert (not b!631896))

(assert (not start!61876))

(assert (not b!631895))

(assert (not b!631893))

(assert (not b!631892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!221333 () Bool)

(declare-fun c!116062 () Bool)

(assert (=> d!221333 (= c!116062 (is-Node!2172 (c!116050 (tokens!1165 printableTokens!2))))))

(declare-fun e!383631 () Bool)

(assert (=> d!221333 (= (inv!8482 (c!116050 (tokens!1165 printableTokens!2))) e!383631)))

(declare-fun b!631921 () Bool)

(declare-fun inv!8487 (Conc!2172) Bool)

(assert (=> b!631921 (= e!383631 (inv!8487 (c!116050 (tokens!1165 printableTokens!2))))))

(declare-fun b!631922 () Bool)

(declare-fun e!383632 () Bool)

(assert (=> b!631922 (= e!383631 e!383632)))

(declare-fun res!274158 () Bool)

(assert (=> b!631922 (= res!274158 (not (is-Leaf!3359 (c!116050 (tokens!1165 printableTokens!2)))))))

(assert (=> b!631922 (=> res!274158 e!383632)))

(declare-fun b!631923 () Bool)

(declare-fun inv!8488 (Conc!2172) Bool)

(assert (=> b!631923 (= e!383632 (inv!8488 (c!116050 (tokens!1165 printableTokens!2))))))

(assert (= (and d!221333 c!116062) b!631921))

(assert (= (and d!221333 (not c!116062)) b!631922))

(assert (= (and b!631922 (not res!274158)) b!631923))

(declare-fun m!902439 () Bool)

(assert (=> b!631921 m!902439))

(declare-fun m!902441 () Bool)

(assert (=> b!631923 m!902441))

(assert (=> b!631894 d!221333))

(declare-fun d!221335 () Bool)

(assert (=> d!221335 (= (usesJsonRules!0 printableTokens!2) (= (rules!8150 printableTokens!2) (rules!109 JsonLexer!141)))))

(declare-fun bs!73311 () Bool)

(assert (= bs!73311 d!221335))

(assert (=> bs!73311 m!902371))

(assert (=> b!631893 d!221335))

(declare-fun d!221341 () Bool)

(declare-fun size!5188 (BalanceConc!4356) Int)

(assert (=> d!221341 (= (size!5181 printableTokens!2) (size!5188 (tokens!1165 printableTokens!2)))))

(declare-fun bs!73312 () Bool)

(assert (= bs!73312 d!221341))

(declare-fun m!902445 () Bool)

(assert (=> bs!73312 m!902445))

(assert (=> start!61876 d!221341))

(declare-fun d!221343 () Bool)

(declare-fun res!274165 () Bool)

(declare-fun e!383635 () Bool)

(assert (=> d!221343 (=> (not res!274165) (not e!383635))))

(assert (=> d!221343 (= res!274165 (not (isEmpty!4628 (rules!8150 printableTokens!2))))))

(assert (=> d!221343 (= (inv!8481 printableTokens!2) e!383635)))

(declare-fun b!631930 () Bool)

(declare-fun res!274166 () Bool)

(assert (=> b!631930 (=> (not res!274166) (not e!383635))))

(assert (=> b!631930 (= res!274166 (rulesInvariant!1163 Lexer!1226 (rules!8150 printableTokens!2)))))

(declare-fun b!631931 () Bool)

(declare-fun res!274167 () Bool)

(assert (=> b!631931 (=> (not res!274167) (not e!383635))))

(declare-fun rulesProduceEachTokenIndividually!570 (LexerInterface!1228 List!6594 BalanceConc!4356) Bool)

(assert (=> b!631931 (= res!274167 (rulesProduceEachTokenIndividually!570 Lexer!1226 (rules!8150 printableTokens!2) (tokens!1165 printableTokens!2)))))

(declare-fun b!631932 () Bool)

(declare-fun separableTokens!20 (LexerInterface!1228 BalanceConc!4356 List!6594) Bool)

(assert (=> b!631932 (= e!383635 (separableTokens!20 Lexer!1226 (tokens!1165 printableTokens!2) (rules!8150 printableTokens!2)))))

(assert (= (and d!221343 res!274165) b!631930))

(assert (= (and b!631930 res!274166) b!631931))

(assert (= (and b!631931 res!274167) b!631932))

(declare-fun m!902447 () Bool)

(assert (=> d!221343 m!902447))

(declare-fun m!902449 () Bool)

(assert (=> b!631930 m!902449))

(declare-fun m!902451 () Bool)

(assert (=> b!631931 m!902451))

(declare-fun m!902453 () Bool)

(assert (=> b!631932 m!902453))

(assert (=> start!61876 d!221343))

(declare-fun d!221349 () Bool)

(declare-fun res!274170 () Bool)

(declare-fun e!383638 () Bool)

(assert (=> d!221349 (=> (not res!274170) (not e!383638))))

(declare-fun rulesValid!499 (LexerInterface!1228 List!6594) Bool)

(assert (=> d!221349 (= res!274170 (rulesValid!499 Lexer!1226 lt!269337))))

(assert (=> d!221349 (= (rulesInvariant!1163 Lexer!1226 lt!269337) e!383638)))

(declare-fun b!631935 () Bool)

(declare-datatypes ((List!6604 0))(
  ( (Nil!6590) (Cons!6590 (h!11991 String!8618) (t!83311 List!6604)) )
))
(declare-fun noDuplicateTag!499 (LexerInterface!1228 List!6594 List!6604) Bool)

(assert (=> b!631935 (= e!383638 (noDuplicateTag!499 Lexer!1226 lt!269337 Nil!6590))))

(assert (= (and d!221349 res!274170) b!631935))

(declare-fun m!902455 () Bool)

(assert (=> d!221349 m!902455))

(declare-fun m!902457 () Bool)

(assert (=> b!631935 m!902457))

(assert (=> b!631895 d!221349))

(declare-fun b!631959 () Bool)

(assert (=> b!631959 true))

(declare-fun bs!73314 () Bool)

(declare-fun d!221351 () Bool)

(assert (= bs!73314 (and d!221351 b!631959)))

(declare-fun lambda!17144 () Int)

(declare-fun lambda!17143 () Int)

(assert (=> bs!73314 (= lambda!17144 lambda!17143)))

(assert (=> d!221351 true))

(declare-fun b!631952 () Bool)

(declare-fun e!383652 () BalanceConc!4362)

(assert (=> b!631952 (= e!383652 (BalanceConc!4363 Empty!2175))))

(declare-fun b!631953 () Bool)

(declare-fun append!191 (BalanceConc!4362 Int) BalanceConc!4362)

(assert (=> b!631953 (= e!383652 (append!191 (BalanceConc!4363 Empty!2175) 0))))

(declare-fun b!631954 () Bool)

(declare-fun e!383649 () Bool)

(assert (=> b!631954 (= e!383649 (<= 0 (size!5188 (tokens!1165 printableTokens!2))))))

(declare-fun b!631955 () Bool)

(declare-fun e!383653 () BalanceConc!4362)

(declare-fun call!41404 () BalanceConc!4362)

(assert (=> b!631955 (= e!383653 call!41404)))

(declare-fun b!631956 () Bool)

(declare-fun e!383650 () BalanceConc!4362)

(assert (=> b!631956 (= e!383650 e!383653)))

(declare-fun lt!269369 () Token!2408)

(declare-fun apply!1583 (BalanceConc!4356 Int) Token!2408)

(assert (=> b!631956 (= lt!269369 (apply!1583 (tokens!1165 printableTokens!2) 0))))

(declare-fun res!274176 () Bool)

(declare-fun isKeywordValue!0 (Token!2408 TokenValue!1376) Bool)

(assert (=> b!631956 (= res!274176 (isKeywordValue!0 lt!269369 LeftBrace!1376))))

(declare-fun e!383651 () Bool)

(assert (=> b!631956 (=> res!274176 e!383651)))

(declare-fun c!116071 () Bool)

(assert (=> b!631956 (= c!116071 e!383651)))

(declare-fun lt!269370 () BalanceConc!4362)

(declare-fun forall!1666 (BalanceConc!4362 Int) Bool)

(assert (=> d!221351 (forall!1666 lt!269370 lambda!17144)))

(assert (=> d!221351 (= lt!269370 e!383650)))

(declare-fun c!116069 () Bool)

(assert (=> d!221351 (= c!116069 (>= 0 (size!5188 (tokens!1165 printableTokens!2))))))

(assert (=> d!221351 e!383649))

(declare-fun res!274175 () Bool)

(assert (=> d!221351 (=> (not res!274175) (not e!383649))))

(assert (=> d!221351 (= res!274175 (>= 0 0))))

(assert (=> d!221351 (= (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)) lt!269370)))

(declare-fun b!631957 () Bool)

(assert (=> b!631957 (= e!383651 (isKeywordValue!0 lt!269369 RightBrace!1376))))

(declare-fun b!631958 () Bool)

(assert (=> b!631958 (= e!383650 (BalanceConc!4363 Empty!2175))))

(declare-fun lt!269371 () Unit!11661)

(declare-fun lemmaConcatPreservesForall!21 (List!6597 List!6597 Int) Unit!11661)

(declare-fun list!2813 (BalanceConc!4362) List!6597)

(assert (=> b!631959 (= lt!269371 (lemmaConcatPreservesForall!21 (list!2813 (BalanceConc!4363 Empty!2175)) (Cons!6583 0 Nil!6583) lambda!17143))))

(assert (=> b!631959 (= e!383653 call!41404)))

(declare-fun bm!41399 () Bool)

(declare-fun c!116070 () Bool)

(assert (=> bm!41399 (= c!116070 c!116071)))

(assert (=> bm!41399 (= call!41404 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 (+ 0 1) e!383652))))

(assert (= (and d!221351 res!274175) b!631954))

(assert (= (and d!221351 c!116069) b!631958))

(assert (= (and d!221351 (not c!116069)) b!631956))

(assert (= (and b!631956 (not res!274176)) b!631957))

(assert (= (and b!631956 c!116071) b!631959))

(assert (= (and b!631956 (not c!116071)) b!631955))

(assert (= (or b!631959 b!631955) bm!41399))

(assert (= (and bm!41399 c!116070) b!631953))

(assert (= (and bm!41399 (not c!116070)) b!631952))

(declare-fun m!902459 () Bool)

(assert (=> b!631959 m!902459))

(assert (=> b!631959 m!902459))

(declare-fun m!902461 () Bool)

(assert (=> b!631959 m!902461))

(declare-fun m!902463 () Bool)

(assert (=> bm!41399 m!902463))

(declare-fun m!902465 () Bool)

(assert (=> d!221351 m!902465))

(assert (=> d!221351 m!902445))

(assert (=> b!631954 m!902445))

(declare-fun m!902467 () Bool)

(assert (=> b!631957 m!902467))

(declare-fun m!902469 () Bool)

(assert (=> b!631953 m!902469))

(declare-fun m!902471 () Bool)

(assert (=> b!631956 m!902471))

(declare-fun m!902473 () Bool)

(assert (=> b!631956 m!902473))

(assert (=> b!631891 d!221351))

(declare-fun d!221353 () Bool)

(declare-fun lambda!17150 () Int)

(declare-fun lambda!17149 () Int)

(assert (=> d!221353 (not (= lambda!17150 lambda!17149))))

(declare-fun forall!1667 (List!6596 Int) Bool)

(assert (=> d!221353 (forall!1667 lt!269332 lambda!17150)))

(declare-fun lt!269376 () Unit!11661)

(declare-fun e!383656 () Unit!11661)

(assert (=> d!221353 (= lt!269376 e!383656)))

(declare-fun c!116074 () Bool)

(assert (=> d!221353 (= c!116074 (is-Nil!6582 lt!269332))))

(assert (=> d!221353 (forall!1667 lt!269332 lambda!17149)))

(assert (=> d!221353 (= (lemmaAddIdsPreservesRules!0 lt!269332) lt!269376)))

(declare-fun b!631966 () Bool)

(declare-fun Unit!11666 () Unit!11661)

(assert (=> b!631966 (= e!383656 Unit!11666)))

(declare-fun b!631967 () Bool)

(declare-fun Unit!11667 () Unit!11661)

(assert (=> b!631967 (= e!383656 Unit!11667)))

(declare-fun lt!269377 () Unit!11661)

(assert (=> b!631967 (= lt!269377 (lemmaAddIdsPreservesRules!0 (t!83240 lt!269332)))))

(assert (= (and d!221353 c!116074) b!631966))

(assert (= (and d!221353 (not c!116074)) b!631967))

(declare-fun m!902505 () Bool)

(assert (=> d!221353 m!902505))

(declare-fun m!902507 () Bool)

(assert (=> d!221353 m!902507))

(declare-fun m!902509 () Bool)

(assert (=> b!631967 m!902509))

(assert (=> b!631891 d!221353))

(declare-fun bs!73317 () Bool)

(declare-fun b!632012 () Bool)

(assert (= bs!73317 (and b!632012 b!631891)))

(declare-fun lambda!17197 () Int)

(assert (=> bs!73317 (not (= lambda!17197 lambda!17126))))

(assert (=> bs!73317 (not (= lambda!17197 lambda!17127))))

(declare-fun b!632020 () Bool)

(declare-fun e!383686 () Bool)

(assert (=> b!632020 (= e!383686 true)))

(declare-fun b!632019 () Bool)

(declare-fun e!383685 () Bool)

(assert (=> b!632019 (= e!383685 e!383686)))

(assert (=> b!632012 e!383685))

(assert (= b!632019 b!632020))

(assert (= b!632012 b!632019))

(declare-fun lambda!17198 () Int)

(assert (=> bs!73317 (not (= lambda!17198 lambda!17126))))

(assert (=> bs!73317 (not (= lambda!17198 lambda!17127))))

(assert (=> b!632012 (not (= lambda!17198 lambda!17197))))

(declare-fun b!632022 () Bool)

(declare-fun e!383688 () Bool)

(assert (=> b!632022 (= e!383688 true)))

(declare-fun b!632021 () Bool)

(declare-fun e!383687 () Bool)

(assert (=> b!632021 (= e!383687 e!383688)))

(assert (=> b!632012 e!383687))

(assert (= b!632021 b!632022))

(assert (= b!632012 b!632021))

(declare-fun lambda!17199 () Int)

(assert (=> bs!73317 (not (= lambda!17199 lambda!17126))))

(assert (=> bs!73317 (not (= lambda!17199 lambda!17127))))

(assert (=> b!632012 (not (= lambda!17199 lambda!17197))))

(assert (=> b!632012 (not (= lambda!17199 lambda!17198))))

(declare-fun b!632024 () Bool)

(declare-fun e!383690 () Bool)

(assert (=> b!632024 (= e!383690 true)))

(declare-fun b!632023 () Bool)

(declare-fun e!383689 () Bool)

(assert (=> b!632023 (= e!383689 e!383690)))

(assert (=> b!632012 e!383689))

(assert (= b!632023 b!632024))

(assert (= b!632012 b!632023))

(declare-fun lambda!17200 () Int)

(assert (=> b!632012 (not (= lambda!17200 lambda!17198))))

(assert (=> bs!73317 (not (= lambda!17200 lambda!17127))))

(assert (=> bs!73317 (= lambda!17200 lambda!17126)))

(assert (=> b!632012 (not (= lambda!17200 lambda!17199))))

(assert (=> b!632012 (not (= lambda!17200 lambda!17197))))

(declare-fun bs!73318 () Bool)

(declare-fun d!221359 () Bool)

(assert (= bs!73318 (and d!221359 b!632012)))

(declare-fun lambda!17201 () Int)

(assert (=> bs!73318 (not (= lambda!17201 lambda!17198))))

(declare-fun bs!73319 () Bool)

(assert (= bs!73319 (and d!221359 b!631891)))

(assert (=> bs!73319 (= lambda!17201 lambda!17126)))

(assert (=> bs!73318 (not (= lambda!17201 lambda!17199))))

(assert (=> bs!73318 (not (= lambda!17201 lambda!17197))))

(assert (=> bs!73319 (not (= lambda!17201 lambda!17127))))

(assert (=> bs!73318 (= lambda!17201 lambda!17200)))

(declare-fun b!632001 () Bool)

(declare-fun e!383677 () Unit!11661)

(declare-fun Unit!11668 () Unit!11661)

(assert (=> b!632001 (= e!383677 Unit!11668)))

(declare-fun b!632002 () Bool)

(declare-fun e!383676 () Unit!11661)

(declare-fun Unit!11669 () Unit!11661)

(assert (=> b!632002 (= e!383676 Unit!11669)))

(declare-fun b!632003 () Bool)

(declare-fun e!383680 () BalanceConc!4360)

(assert (=> b!632003 (= e!383680 (map!1394 lt!269335 lambda!17125))))

(declare-fun b!632004 () Bool)

(assert (=> b!632004 true))

(declare-fun lt!269468 () BalanceConc!4360)

(declare-fun lt!269464 () Unit!11661)

(declare-fun lt!269465 () tuple2!7182)

(declare-fun forallContained!455 (List!6595 Int tuple2!7182) Unit!11661)

(assert (=> b!632004 (= lt!269464 (forallContained!455 (list!2809 lt!269468) lambda!17197 lt!269465))))

(declare-fun err!524 () Unit!11661)

(assert (=> b!632004 (= e!383676 err!524)))

(declare-fun b!632005 () Bool)

(declare-fun e!383674 () Bool)

(declare-fun lt!269485 () List!6595)

(declare-fun size!5189 (List!6595) Int)

(declare-fun filter!112 (List!6595 Int) List!6595)

(assert (=> b!632005 (= e!383674 (< (size!5189 (filter!112 lt!269485 lambda!17199)) (size!5189 lt!269485)))))

(declare-fun b!632006 () Bool)

(assert (=> b!632006 true))

(declare-fun lt!269466 () Unit!11661)

(assert (=> b!632006 (= lt!269466 (forallContained!455 (list!2809 (map!1394 lt!269335 lambda!17125)) lambda!17197 lt!269465))))

(declare-fun err!523 () Unit!11661)

(assert (=> b!632006 (= e!383677 err!523)))

(declare-fun b!632007 () Bool)

(assert (=> b!632007 true))

(declare-fun lt!269459 () Unit!11661)

(declare-fun lt!269462 () BalanceConc!4360)

(assert (=> b!632007 (= lt!269459 (forallContained!455 (list!2809 lt!269462) lambda!17199 lt!269465))))

(declare-fun e!383678 () Unit!11661)

(declare-fun err!522 () Unit!11661)

(assert (=> b!632007 (= e!383678 err!522)))

(declare-fun b!632008 () Bool)

(declare-fun e!383675 () Unit!11661)

(declare-fun Unit!11670 () Unit!11661)

(assert (=> b!632008 (= e!383675 Unit!11670)))

(declare-fun b!632009 () Bool)

(declare-fun Unit!11671 () Unit!11661)

(assert (=> b!632009 (= e!383678 Unit!11671)))

(declare-fun b!632010 () Bool)

(declare-fun e!383679 () Bool)

(declare-fun lt!269471 () List!6595)

(assert (=> b!632010 (= e!383679 (< (size!5189 (filter!112 lt!269471 lambda!17197)) (size!5189 lt!269471)))))

(declare-fun lt!269479 () BalanceConc!4360)

(declare-fun ++!1801 (BalanceConc!4360 BalanceConc!4360) BalanceConc!4360)

(assert (=> b!632012 (= e!383680 (++!1801 (++!1801 (sortObjectsByID!0 lt!269468) lt!269479) (sortObjectsByID!0 lt!269462)))))

(declare-fun apply!1584 (BalanceConc!4360 Int) tuple2!7182)

(declare-fun size!5190 (BalanceConc!4360) Int)

(assert (=> b!632012 (= lt!269465 (apply!1584 (map!1394 lt!269335 lambda!17125) (ite (>= (size!5190 (map!1394 lt!269335 lambda!17125)) 0) (div (size!5190 (map!1394 lt!269335 lambda!17125)) 2) (- (div (- (size!5190 (map!1394 lt!269335 lambda!17125))) 2)))))))

(declare-fun filter!113 (BalanceConc!4360 Int) BalanceConc!4360)

(assert (=> b!632012 (= lt!269468 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17197))))

(assert (=> b!632012 (= lt!269479 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17198))))

(assert (=> b!632012 (= lt!269462 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17199))))

(declare-fun c!116086 () Bool)

(declare-fun contains!1518 (BalanceConc!4360 tuple2!7182) Bool)

(assert (=> b!632012 (= c!116086 (contains!1518 lt!269468 lt!269465))))

(declare-fun lt!269460 () Unit!11661)

(assert (=> b!632012 (= lt!269460 e!383676)))

(declare-fun c!116087 () Bool)

(declare-fun forall!1668 (BalanceConc!4360 Int) Bool)

(assert (=> b!632012 (= c!116087 (forall!1668 (map!1394 lt!269335 lambda!17125) lambda!17197))))

(declare-fun lt!269480 () Unit!11661)

(assert (=> b!632012 (= lt!269480 e!383677)))

(assert (=> b!632012 (= lt!269471 (list!2809 (map!1394 lt!269335 lambda!17125)))))

(declare-fun lt!269452 () Unit!11661)

(declare-fun lemmaNotForallFilterShorter!3 (List!6595 Int) Unit!11661)

(assert (=> b!632012 (= lt!269452 (lemmaNotForallFilterShorter!3 lt!269471 lambda!17197))))

(declare-fun res!274191 () Bool)

(declare-fun isEmpty!4630 (List!6595) Bool)

(assert (=> b!632012 (= res!274191 (isEmpty!4630 lt!269471))))

(assert (=> b!632012 (=> res!274191 e!383679)))

(assert (=> b!632012 e!383679))

(declare-fun lt!269456 () Unit!11661)

(assert (=> b!632012 (= lt!269456 lt!269452)))

(declare-fun c!116085 () Bool)

(assert (=> b!632012 (= c!116085 (contains!1518 lt!269462 lt!269465))))

(declare-fun lt!269454 () Unit!11661)

(assert (=> b!632012 (= lt!269454 e!383678)))

(declare-fun c!116088 () Bool)

(assert (=> b!632012 (= c!116088 (forall!1668 (map!1394 lt!269335 lambda!17125) lambda!17199))))

(declare-fun lt!269473 () Unit!11661)

(assert (=> b!632012 (= lt!269473 e!383675)))

(assert (=> b!632012 (= lt!269485 (list!2809 (map!1394 lt!269335 lambda!17125)))))

(declare-fun lt!269481 () Unit!11661)

(assert (=> b!632012 (= lt!269481 (lemmaNotForallFilterShorter!3 lt!269485 lambda!17199))))

(declare-fun res!274190 () Bool)

(assert (=> b!632012 (= res!274190 (isEmpty!4630 lt!269485))))

(assert (=> b!632012 (=> res!274190 e!383674)))

(assert (=> b!632012 e!383674))

(declare-fun lt!269475 () Unit!11661)

(assert (=> b!632012 (= lt!269475 lt!269481)))

(declare-fun lt!269463 () Unit!11661)

(declare-fun filterSubseq!3 (List!6595 Int) Unit!11661)

(assert (=> b!632012 (= lt!269463 (filterSubseq!3 (list!2809 (map!1394 lt!269335 lambda!17125)) lambda!17197))))

(declare-fun lt!269484 () Unit!11661)

(assert (=> b!632012 (= lt!269484 (filterSubseq!3 (list!2809 (map!1394 lt!269335 lambda!17125)) lambda!17198))))

(declare-fun lt!269472 () Unit!11661)

(assert (=> b!632012 (= lt!269472 (filterSubseq!3 (list!2809 (map!1394 lt!269335 lambda!17125)) lambda!17199))))

(declare-fun lt!269467 () List!6595)

(assert (=> b!632012 (= lt!269467 (list!2809 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17197)))))

(declare-fun lt!269474 () List!6595)

(assert (=> b!632012 (= lt!269474 (list!2809 (map!1394 lt!269335 lambda!17125)))))

(declare-fun lt!269461 () Unit!11661)

(declare-fun lemmaForallSubseq!7 (List!6595 List!6595 Int) Unit!11661)

(assert (=> b!632012 (= lt!269461 (lemmaForallSubseq!7 lt!269467 lt!269474 lambda!17200))))

(assert (=> b!632012 (forall!1664 lt!269467 lambda!17200)))

(declare-fun lt!269477 () Unit!11661)

(assert (=> b!632012 (= lt!269477 lt!269461)))

(declare-fun lt!269455 () List!6595)

(assert (=> b!632012 (= lt!269455 (list!2809 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17198)))))

(declare-fun lt!269451 () List!6595)

(assert (=> b!632012 (= lt!269451 (list!2809 (map!1394 lt!269335 lambda!17125)))))

(declare-fun lt!269476 () Unit!11661)

(assert (=> b!632012 (= lt!269476 (lemmaForallSubseq!7 lt!269455 lt!269451 lambda!17200))))

(assert (=> b!632012 (forall!1664 lt!269455 lambda!17200)))

(declare-fun lt!269478 () Unit!11661)

(assert (=> b!632012 (= lt!269478 lt!269476)))

(declare-fun lt!269458 () List!6595)

(assert (=> b!632012 (= lt!269458 (list!2809 (filter!113 (map!1394 lt!269335 lambda!17125) lambda!17199)))))

(declare-fun lt!269470 () List!6595)

(assert (=> b!632012 (= lt!269470 (list!2809 (map!1394 lt!269335 lambda!17125)))))

(declare-fun lt!269483 () Unit!11661)

(assert (=> b!632012 (= lt!269483 (lemmaForallSubseq!7 lt!269458 lt!269470 lambda!17200))))

(assert (=> b!632012 (forall!1664 lt!269458 lambda!17200)))

(declare-fun lt!269457 () Unit!11661)

(assert (=> b!632012 (= lt!269457 lt!269483)))

(declare-fun lt!269450 () Unit!11661)

(declare-fun lemmaConcatPreservesForall!22 (List!6595 List!6595 Int) Unit!11661)

(assert (=> b!632012 (= lt!269450 (lemmaConcatPreservesForall!22 (list!2809 (sortObjectsByID!0 lt!269468)) (list!2809 lt!269479) lambda!17200))))

(declare-fun lt!269453 () Unit!11661)

(declare-fun ++!1802 (List!6595 List!6595) List!6595)

(assert (=> b!632012 (= lt!269453 (lemmaConcatPreservesForall!22 (++!1802 (list!2809 (sortObjectsByID!0 lt!269468)) (list!2809 lt!269479)) (list!2809 (sortObjectsByID!0 lt!269462)) lambda!17200))))

(declare-fun lt!269482 () BalanceConc!4360)

(assert (=> d!221359 (forall!1668 lt!269482 lambda!17201)))

(assert (=> d!221359 (= lt!269482 e!383680)))

(declare-fun c!116089 () Bool)

(assert (=> d!221359 (= c!116089 (<= (size!5190 (map!1394 lt!269335 lambda!17125)) 1))))

(assert (=> d!221359 (= (sortObjectsByID!0 (map!1394 lt!269335 lambda!17125)) lt!269482)))

(declare-fun b!632011 () Bool)

(assert (=> b!632011 true))

(declare-fun lt!269469 () Unit!11661)

(assert (=> b!632011 (= lt!269469 (forallContained!455 (list!2809 (map!1394 lt!269335 lambda!17125)) lambda!17199 lt!269465))))

(declare-fun err!525 () Unit!11661)

(assert (=> b!632011 (= e!383675 err!525)))

(assert (= (and d!221359 c!116089) b!632003))

(assert (= (and d!221359 (not c!116089)) b!632012))

(assert (= (and b!632012 c!116086) b!632004))

(assert (= (and b!632012 (not c!116086)) b!632002))

(assert (= (and b!632012 c!116087) b!632006))

(assert (= (and b!632012 (not c!116087)) b!632001))

(assert (= (and b!632012 (not res!274191)) b!632010))

(assert (= (and b!632012 c!116085) b!632007))

(assert (= (and b!632012 (not c!116085)) b!632009))

(assert (= (and b!632012 c!116088) b!632011))

(assert (= (and b!632012 (not c!116088)) b!632008))

(assert (= (and b!632012 (not res!274190)) b!632005))

(declare-fun m!902519 () Bool)

(assert (=> b!632012 m!902519))

(assert (=> b!632012 m!902381))

(declare-fun m!902521 () Bool)

(assert (=> b!632012 m!902521))

(declare-fun m!902523 () Bool)

(assert (=> b!632012 m!902523))

(declare-fun m!902525 () Bool)

(assert (=> b!632012 m!902525))

(assert (=> b!632012 m!902381))

(declare-fun m!902527 () Bool)

(assert (=> b!632012 m!902527))

(declare-fun m!902529 () Bool)

(assert (=> b!632012 m!902529))

(assert (=> b!632012 m!902381))

(assert (=> b!632012 m!902523))

(declare-fun m!902531 () Bool)

(assert (=> b!632012 m!902531))

(declare-fun m!902533 () Bool)

(assert (=> b!632012 m!902533))

(declare-fun m!902535 () Bool)

(assert (=> b!632012 m!902535))

(declare-fun m!902537 () Bool)

(assert (=> b!632012 m!902537))

(declare-fun m!902539 () Bool)

(assert (=> b!632012 m!902539))

(declare-fun m!902541 () Bool)

(assert (=> b!632012 m!902541))

(assert (=> b!632012 m!902521))

(declare-fun m!902543 () Bool)

(assert (=> b!632012 m!902543))

(declare-fun m!902545 () Bool)

(assert (=> b!632012 m!902545))

(declare-fun m!902547 () Bool)

(assert (=> b!632012 m!902547))

(assert (=> b!632012 m!902535))

(assert (=> b!632012 m!902537))

(declare-fun m!902549 () Bool)

(assert (=> b!632012 m!902549))

(assert (=> b!632012 m!902545))

(declare-fun m!902551 () Bool)

(assert (=> b!632012 m!902551))

(assert (=> b!632012 m!902521))

(declare-fun m!902553 () Bool)

(assert (=> b!632012 m!902553))

(assert (=> b!632012 m!902381))

(declare-fun m!902555 () Bool)

(assert (=> b!632012 m!902555))

(assert (=> b!632012 m!902537))

(assert (=> b!632012 m!902381))

(declare-fun m!902557 () Bool)

(assert (=> b!632012 m!902557))

(assert (=> b!632012 m!902381))

(assert (=> b!632012 m!902523))

(assert (=> b!632012 m!902381))

(assert (=> b!632012 m!902555))

(declare-fun m!902559 () Bool)

(assert (=> b!632012 m!902559))

(declare-fun m!902561 () Bool)

(assert (=> b!632012 m!902561))

(assert (=> b!632012 m!902555))

(declare-fun m!902563 () Bool)

(assert (=> b!632012 m!902563))

(declare-fun m!902565 () Bool)

(assert (=> b!632012 m!902565))

(declare-fun m!902567 () Bool)

(assert (=> b!632012 m!902567))

(assert (=> b!632012 m!902381))

(declare-fun m!902569 () Bool)

(assert (=> b!632012 m!902569))

(declare-fun m!902571 () Bool)

(assert (=> b!632012 m!902571))

(assert (=> b!632012 m!902545))

(declare-fun m!902573 () Bool)

(assert (=> b!632012 m!902573))

(assert (=> b!632012 m!902521))

(declare-fun m!902575 () Bool)

(assert (=> b!632012 m!902575))

(declare-fun m!902577 () Bool)

(assert (=> b!632012 m!902577))

(assert (=> b!632012 m!902549))

(assert (=> b!632012 m!902551))

(declare-fun m!902579 () Bool)

(assert (=> b!632012 m!902579))

(assert (=> b!632012 m!902533))

(assert (=> b!632012 m!902535))

(assert (=> b!632012 m!902381))

(assert (=> b!632012 m!902565))

(declare-fun m!902581 () Bool)

(assert (=> b!632012 m!902581))

(assert (=> b!632012 m!902381))

(assert (=> b!632012 m!902565))

(assert (=> b!632012 m!902533))

(assert (=> b!632012 m!902571))

(assert (=> b!632012 m!902381))

(declare-fun m!902583 () Bool)

(assert (=> b!632012 m!902583))

(declare-fun m!902585 () Bool)

(assert (=> b!632012 m!902585))

(declare-fun m!902587 () Bool)

(assert (=> b!632012 m!902587))

(declare-fun m!902589 () Bool)

(assert (=> b!632012 m!902589))

(declare-fun m!902591 () Bool)

(assert (=> b!632005 m!902591))

(assert (=> b!632005 m!902591))

(declare-fun m!902593 () Bool)

(assert (=> b!632005 m!902593))

(declare-fun m!902595 () Bool)

(assert (=> b!632005 m!902595))

(assert (=> b!632011 m!902381))

(assert (=> b!632011 m!902521))

(assert (=> b!632011 m!902521))

(declare-fun m!902597 () Bool)

(assert (=> b!632011 m!902597))

(declare-fun m!902599 () Bool)

(assert (=> b!632007 m!902599))

(assert (=> b!632007 m!902599))

(declare-fun m!902601 () Bool)

(assert (=> b!632007 m!902601))

(declare-fun m!902603 () Bool)

(assert (=> b!632010 m!902603))

(assert (=> b!632010 m!902603))

(declare-fun m!902605 () Bool)

(assert (=> b!632010 m!902605))

(declare-fun m!902607 () Bool)

(assert (=> b!632010 m!902607))

(declare-fun m!902609 () Bool)

(assert (=> d!221359 m!902609))

(assert (=> d!221359 m!902381))

(assert (=> d!221359 m!902557))

(assert (=> b!632006 m!902381))

(assert (=> b!632006 m!902521))

(assert (=> b!632006 m!902521))

(declare-fun m!902611 () Bool)

(assert (=> b!632006 m!902611))

(declare-fun m!902613 () Bool)

(assert (=> b!632004 m!902613))

(assert (=> b!632004 m!902613))

(declare-fun m!902615 () Bool)

(assert (=> b!632004 m!902615))

(assert (=> b!631891 d!221359))

(declare-fun d!221363 () Bool)

(declare-fun list!2814 (Conc!2173) List!6596)

(assert (=> d!221363 (= (list!2810 lt!269335) (list!2814 (c!116051 lt!269335)))))

(declare-fun bs!73320 () Bool)

(assert (= bs!73320 d!221363))

(declare-fun m!902617 () Bool)

(assert (=> bs!73320 m!902617))

(assert (=> b!631891 d!221363))

(declare-fun d!221365 () Bool)

(declare-fun e!383697 () Bool)

(assert (=> d!221365 e!383697))

(declare-fun res!274194 () Bool)

(assert (=> d!221365 (=> (not res!274194) (not e!383697))))

(declare-fun lt!269498 () BalanceConc!4360)

(declare-fun map!1396 (List!6596 Int) List!6595)

(assert (=> d!221365 (= res!274194 (= (list!2809 lt!269498) (map!1396 (list!2810 lt!269335) lambda!17125)))))

(declare-fun map!1397 (Conc!2173 Int) Conc!2174)

(assert (=> d!221365 (= lt!269498 (BalanceConc!4361 (map!1397 (c!116051 lt!269335) lambda!17125)))))

(assert (=> d!221365 (= (map!1394 lt!269335 lambda!17125) lt!269498)))

(declare-fun b!632035 () Bool)

(declare-fun isBalanced!584 (Conc!2174) Bool)

(assert (=> b!632035 (= e!383697 (isBalanced!584 (map!1397 (c!116051 lt!269335) lambda!17125)))))

(assert (= (and d!221365 res!274194) b!632035))

(declare-fun m!902619 () Bool)

(assert (=> d!221365 m!902619))

(assert (=> d!221365 m!902397))

(assert (=> d!221365 m!902397))

(declare-fun m!902621 () Bool)

(assert (=> d!221365 m!902621))

(declare-fun m!902623 () Bool)

(assert (=> d!221365 m!902623))

(assert (=> b!632035 m!902623))

(assert (=> b!632035 m!902623))

(declare-fun m!902625 () Bool)

(assert (=> b!632035 m!902625))

(assert (=> b!631891 d!221365))

(declare-fun bs!73326 () Bool)

(declare-fun d!221367 () Bool)

(assert (= bs!73326 (and d!221367 b!632012)))

(declare-fun lambda!17221 () Int)

(assert (=> bs!73326 (not (= lambda!17221 lambda!17198))))

(declare-fun bs!73327 () Bool)

(assert (= bs!73327 (and d!221367 b!631891)))

(assert (=> bs!73327 (= lambda!17221 lambda!17126)))

(assert (=> bs!73326 (not (= lambda!17221 lambda!17199))))

(assert (=> bs!73326 (not (= lambda!17221 lambda!17197))))

(declare-fun bs!73328 () Bool)

(assert (= bs!73328 (and d!221367 d!221359)))

(assert (=> bs!73328 (= lambda!17221 lambda!17201)))

(assert (=> bs!73327 (not (= lambda!17221 lambda!17127))))

(assert (=> bs!73326 (= lambda!17221 lambda!17200)))

(declare-fun lambda!17222 () Int)

(assert (=> bs!73326 (not (= lambda!17222 lambda!17198))))

(assert (=> bs!73327 (not (= lambda!17222 lambda!17126))))

(assert (=> d!221367 (not (= lambda!17222 lambda!17221))))

(assert (=> bs!73326 (not (= lambda!17222 lambda!17199))))

(assert (=> bs!73326 (not (= lambda!17222 lambda!17197))))

(assert (=> bs!73328 (not (= lambda!17222 lambda!17201))))

(assert (=> bs!73327 (= lambda!17222 lambda!17127)))

(assert (=> bs!73326 (not (= lambda!17222 lambda!17200))))

(assert (=> d!221367 (forall!1664 lt!269331 lambda!17222)))

(declare-fun lt!269520 () Unit!11661)

(declare-fun e!383717 () Unit!11661)

(assert (=> d!221367 (= lt!269520 e!383717)))

(declare-fun c!116108 () Bool)

(assert (=> d!221367 (= c!116108 (is-Nil!6581 lt!269331))))

(assert (=> d!221367 (forall!1664 lt!269331 lambda!17221)))

(assert (=> d!221367 (= (lemmaRemoveIdsPreservesRules!0 lt!269331) lt!269520)))

(declare-fun b!632074 () Bool)

(declare-fun Unit!11672 () Unit!11661)

(assert (=> b!632074 (= e!383717 Unit!11672)))

(declare-fun b!632075 () Bool)

(declare-fun Unit!11673 () Unit!11661)

(assert (=> b!632075 (= e!383717 Unit!11673)))

(declare-fun lt!269521 () Unit!11661)

(assert (=> b!632075 (= lt!269521 (lemmaRemoveIdsPreservesRules!0 (t!83239 lt!269331)))))

(assert (= (and d!221367 c!116108) b!632074))

(assert (= (and d!221367 (not c!116108)) b!632075))

(declare-fun m!902673 () Bool)

(assert (=> d!221367 m!902673))

(declare-fun m!902675 () Bool)

(assert (=> d!221367 m!902675))

(declare-fun m!902677 () Bool)

(assert (=> b!632075 m!902677))

(assert (=> b!631891 d!221367))

(declare-fun bs!73331 () Bool)

(declare-fun d!221375 () Bool)

(assert (= bs!73331 (and d!221375 d!221353)))

(declare-fun lambda!17225 () Int)

(assert (=> bs!73331 (not (= lambda!17225 lambda!17149))))

(assert (=> bs!73331 (not (= lambda!17225 lambda!17150))))

(assert (=> d!221375 true))

(declare-fun order!5095 () Int)

(declare-fun order!5093 () Int)

(declare-fun dynLambda!3692 (Int Int) Int)

(declare-fun dynLambda!3693 (Int Int) Int)

(assert (=> d!221375 (< (dynLambda!3692 order!5093 lambda!17125) (dynLambda!3693 order!5095 lambda!17225))))

(assert (=> d!221375 true))

(declare-fun order!5097 () Int)

(declare-fun dynLambda!3694 (Int Int) Int)

(assert (=> d!221375 (< (dynLambda!3694 order!5097 lambda!17126) (dynLambda!3693 order!5095 lambda!17225))))

(assert (=> d!221375 (forall!1664 (map!1396 lt!269332 lambda!17125) lambda!17126)))

(declare-fun lt!269527 () Unit!11661)

(declare-fun choose!4597 (List!6596 Int Int) Unit!11661)

(assert (=> d!221375 (= lt!269527 (choose!4597 lt!269332 lambda!17125 lambda!17126))))

(assert (=> d!221375 (forall!1667 lt!269332 lambda!17225)))

(assert (=> d!221375 (= (mapPred!5 lt!269332 lambda!17125 lambda!17126) lt!269527)))

(declare-fun bs!73332 () Bool)

(assert (= bs!73332 d!221375))

(declare-fun m!902691 () Bool)

(assert (=> bs!73332 m!902691))

(assert (=> bs!73332 m!902691))

(declare-fun m!902693 () Bool)

(assert (=> bs!73332 m!902693))

(declare-fun m!902695 () Bool)

(assert (=> bs!73332 m!902695))

(declare-fun m!902697 () Bool)

(assert (=> bs!73332 m!902697))

(assert (=> b!631891 d!221375))

(declare-fun d!221383 () Bool)

(declare-fun list!2815 (Conc!2174) List!6595)

(assert (=> d!221383 (= (list!2809 (sortObjectsByID!0 (map!1394 lt!269335 lambda!17125))) (list!2815 (c!116052 (sortObjectsByID!0 (map!1394 lt!269335 lambda!17125)))))))

(declare-fun bs!73333 () Bool)

(assert (= bs!73333 d!221383))

(declare-fun m!902699 () Bool)

(assert (=> bs!73333 m!902699))

(assert (=> b!631891 d!221383))

(declare-fun bs!73338 () Bool)

(declare-fun b!632111 () Bool)

(assert (= bs!73338 (and b!632111 d!221353)))

(declare-fun lambda!17242 () Int)

(assert (=> bs!73338 (= lambda!17242 lambda!17149)))

(assert (=> bs!73338 (not (= lambda!17242 lambda!17150))))

(declare-fun bs!73339 () Bool)

(assert (= bs!73339 (and b!632111 d!221375)))

(assert (=> bs!73339 (not (= lambda!17242 lambda!17225))))

(declare-fun bs!73340 () Bool)

(declare-fun d!221385 () Bool)

(assert (= bs!73340 (and d!221385 d!221353)))

(declare-fun lambda!17243 () Int)

(assert (=> bs!73340 (= lambda!17243 lambda!17149)))

(assert (=> bs!73340 (not (= lambda!17243 lambda!17150))))

(declare-fun bs!73341 () Bool)

(assert (= bs!73341 (and d!221385 d!221375)))

(assert (=> bs!73341 (not (= lambda!17243 lambda!17225))))

(declare-fun bs!73342 () Bool)

(assert (= bs!73342 (and d!221385 b!632111)))

(assert (=> bs!73342 (= lambda!17243 lambda!17242)))

(declare-fun b!632109 () Bool)

(declare-fun e!383738 () BalanceConc!4358)

(assert (=> b!632109 (= e!383738 (BalanceConc!4359 Empty!2173))))

(declare-fun bm!41408 () Bool)

(declare-fun c!116121 () Bool)

(declare-fun call!41413 () PrintableTokens!66)

(declare-fun lt!269550 () Int)

(declare-fun lt!269551 () Int)

(declare-fun slice!26 (PrintableTokens!66 Int Int) PrintableTokens!66)

(assert (=> bm!41408 (= call!41413 (slice!26 printableTokens!2 (ite c!116121 lt!269550 lt!269551) (ite c!116121 (+ lt!269551 1) (+ lt!269550 1))))))

(declare-fun b!632110 () Bool)

(declare-fun e!383737 () PrintableTokens!66)

(assert (=> b!632110 (= e!383737 call!41413)))

(declare-fun lt!269554 () PrintableTokens!66)

(declare-fun tail!879 (BalanceConc!4362) BalanceConc!4362)

(declare-fun append!192 (BalanceConc!4358 PrintableTokens!66) BalanceConc!4358)

(assert (=> b!632111 (= e!383738 (slicesMulti!0 printableTokens!2 lt!269334 (tail!879 (tail!879 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)))) (append!192 (BalanceConc!4359 Empty!2173) lt!269554)))))

(declare-fun apply!1585 (BalanceConc!4362 Int) Int)

(assert (=> b!632111 (= lt!269550 (apply!1585 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)) 0))))

(assert (=> b!632111 (= lt!269551 (apply!1585 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)) 1))))

(assert (=> b!632111 (= c!116121 (<= lt!269550 lt!269551))))

(assert (=> b!632111 (= lt!269554 e!383737)))

(declare-fun lt!269552 () Unit!11661)

(declare-fun lemmaConcatPreservesForall!23 (List!6596 List!6596 Int) Unit!11661)

(assert (=> b!632111 (= lt!269552 (lemmaConcatPreservesForall!23 (list!2810 (BalanceConc!4359 Empty!2173)) (Cons!6582 lt!269554 Nil!6582) lambda!17242))))

(declare-fun b!632112 () Bool)

(assert (=> b!632112 (= e!383737 call!41413)))

(declare-fun lt!269553 () BalanceConc!4358)

(declare-fun forall!1669 (BalanceConc!4358 Int) Bool)

(assert (=> d!221385 (forall!1669 lt!269553 lambda!17243)))

(assert (=> d!221385 (= lt!269553 e!383738)))

(declare-fun c!116120 () Bool)

(declare-fun size!5191 (BalanceConc!4362) Int)

(assert (=> d!221385 (= c!116120 (>= (size!5191 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175))) 2))))

(assert (=> d!221385 (= (size!5181 printableTokens!2) lt!269334)))

(assert (=> d!221385 (= (slicesMulti!0 printableTokens!2 lt!269334 (indicesOfOpenBraces!0 (tokens!1165 printableTokens!2) lt!269334 0 (BalanceConc!4363 Empty!2175)) (BalanceConc!4359 Empty!2173)) lt!269553)))

(assert (= (and d!221385 c!116120) b!632111))

(assert (= (and d!221385 (not c!116120)) b!632109))

(assert (= (and b!632111 c!116121) b!632110))

(assert (= (and b!632111 (not c!116121)) b!632112))

(assert (= (or b!632110 b!632112) bm!41408))

(declare-fun m!902717 () Bool)

(assert (=> bm!41408 m!902717))

(declare-fun m!902719 () Bool)

(assert (=> b!632111 m!902719))

(declare-fun m!902721 () Bool)

(assert (=> b!632111 m!902721))

(declare-fun m!902723 () Bool)

(assert (=> b!632111 m!902723))

(declare-fun m!902725 () Bool)

(assert (=> b!632111 m!902725))

(assert (=> b!632111 m!902387))

(declare-fun m!902727 () Bool)

(assert (=> b!632111 m!902727))

(assert (=> b!632111 m!902723))

(assert (=> b!632111 m!902387))

(declare-fun m!902729 () Bool)

(assert (=> b!632111 m!902729))

(assert (=> b!632111 m!902387))

(assert (=> b!632111 m!902719))

(declare-fun m!902731 () Bool)

(assert (=> b!632111 m!902731))

(assert (=> b!632111 m!902721))

(assert (=> b!632111 m!902731))

(declare-fun m!902733 () Bool)

(assert (=> b!632111 m!902733))

(declare-fun m!902735 () Bool)

(assert (=> d!221385 m!902735))

(assert (=> d!221385 m!902387))

(declare-fun m!902737 () Bool)

(assert (=> d!221385 m!902737))

(assert (=> d!221385 m!902375))

(assert (=> b!631891 d!221385))

(declare-fun d!221393 () Bool)

(declare-fun res!274214 () Bool)

(declare-fun e!383743 () Bool)

(assert (=> d!221393 (=> res!274214 e!383743)))

(assert (=> d!221393 (= res!274214 (is-Nil!6581 lt!269331))))

(assert (=> d!221393 (= (forall!1664 lt!269331 lambda!17127) e!383743)))

(declare-fun b!632117 () Bool)

(declare-fun e!383744 () Bool)

(assert (=> b!632117 (= e!383743 e!383744)))

(declare-fun res!274215 () Bool)

(assert (=> b!632117 (=> (not res!274215) (not e!383744))))

(declare-fun dynLambda!3695 (Int tuple2!7182) Bool)

(assert (=> b!632117 (= res!274215 (dynLambda!3695 lambda!17127 (h!11982 lt!269331)))))

(declare-fun b!632118 () Bool)

(assert (=> b!632118 (= e!383744 (forall!1664 (t!83239 lt!269331) lambda!17127))))

(assert (= (and d!221393 (not res!274214)) b!632117))

(assert (= (and b!632117 res!274215) b!632118))

(declare-fun b_lambda!24919 () Bool)

(assert (=> (not b_lambda!24919) (not b!632117)))

(declare-fun m!902739 () Bool)

(assert (=> b!632117 m!902739))

(declare-fun m!902741 () Bool)

(assert (=> b!632118 m!902741))

(assert (=> b!631891 d!221393))

(declare-fun d!221395 () Bool)

(declare-fun isBalanced!585 (Conc!2172) Bool)

(assert (=> d!221395 (= (inv!8483 (tokens!1165 printableTokens!2)) (isBalanced!585 (c!116050 (tokens!1165 printableTokens!2))))))

(declare-fun bs!73343 () Bool)

(assert (= bs!73343 d!221395))

(declare-fun m!902743 () Bool)

(assert (=> bs!73343 m!902743))

(assert (=> b!631896 d!221395))

(declare-fun d!221397 () Bool)

(assert (=> d!221397 (= (isEmpty!4628 lt!269337) (is-Nil!6580 lt!269337))))

(assert (=> b!631892 d!221397))

(declare-fun d!221399 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!140) Rule!2484)

(declare-fun integerLiteralRule!0 (JsonLexer!140) Rule!2484)

(declare-fun floatLiteralRule!0 (JsonLexer!140) Rule!2484)

(declare-fun trueRule!0 (JsonLexer!140) Rule!2484)

(declare-fun falseRule!0 (JsonLexer!140) Rule!2484)

(declare-fun nullRule!0 (JsonLexer!140) Rule!2484)

(declare-fun jsonstringRule!0 (JsonLexer!140) Rule!2484)

(declare-fun lBraceRule!0 (JsonLexer!140) Rule!2484)

(declare-fun rBraceRule!0 (JsonLexer!140) Rule!2484)

(declare-fun lBracketRule!0 (JsonLexer!140) Rule!2484)

(declare-fun rBracketRule!0 (JsonLexer!140) Rule!2484)

(declare-fun colonRule!0 (JsonLexer!140) Rule!2484)

(declare-fun commaRule!0 (JsonLexer!140) Rule!2484)

(declare-fun eofRule!0 (JsonLexer!140) Rule!2484)

(assert (=> d!221399 (= (rules!109 JsonLexer!141) (Cons!6580 (whitespaceRule!0 JsonLexer!141) (Cons!6580 (integerLiteralRule!0 JsonLexer!141) (Cons!6580 (floatLiteralRule!0 JsonLexer!141) (Cons!6580 (trueRule!0 JsonLexer!141) (Cons!6580 (falseRule!0 JsonLexer!141) (Cons!6580 (nullRule!0 JsonLexer!141) (Cons!6580 (jsonstringRule!0 JsonLexer!141) (Cons!6580 (lBraceRule!0 JsonLexer!141) (Cons!6580 (rBraceRule!0 JsonLexer!141) (Cons!6580 (lBracketRule!0 JsonLexer!141) (Cons!6580 (rBracketRule!0 JsonLexer!141) (Cons!6580 (colonRule!0 JsonLexer!141) (Cons!6580 (commaRule!0 JsonLexer!141) (Cons!6580 (eofRule!0 JsonLexer!141) Nil!6580)))))))))))))))))

(declare-fun bs!73344 () Bool)

(assert (= bs!73344 d!221399))

(declare-fun m!902745 () Bool)

(assert (=> bs!73344 m!902745))

(declare-fun m!902747 () Bool)

(assert (=> bs!73344 m!902747))

(declare-fun m!902749 () Bool)

(assert (=> bs!73344 m!902749))

(declare-fun m!902751 () Bool)

(assert (=> bs!73344 m!902751))

(declare-fun m!902753 () Bool)

(assert (=> bs!73344 m!902753))

(declare-fun m!902755 () Bool)

(assert (=> bs!73344 m!902755))

(declare-fun m!902757 () Bool)

(assert (=> bs!73344 m!902757))

(declare-fun m!902759 () Bool)

(assert (=> bs!73344 m!902759))

(declare-fun m!902761 () Bool)

(assert (=> bs!73344 m!902761))

(declare-fun m!902763 () Bool)

(assert (=> bs!73344 m!902763))

(declare-fun m!902765 () Bool)

(assert (=> bs!73344 m!902765))

(declare-fun m!902767 () Bool)

(assert (=> bs!73344 m!902767))

(declare-fun m!902769 () Bool)

(assert (=> bs!73344 m!902769))

(declare-fun m!902771 () Bool)

(assert (=> bs!73344 m!902771))

(assert (=> b!631892 d!221399))

(declare-fun tp!196760 () Bool)

(declare-fun e!383750 () Bool)

(declare-fun tp!196762 () Bool)

(declare-fun b!632127 () Bool)

(assert (=> b!632127 (= e!383750 (and (inv!8482 (left!5284 (c!116050 (tokens!1165 printableTokens!2)))) tp!196762 (inv!8482 (right!5614 (c!116050 (tokens!1165 printableTokens!2)))) tp!196760))))

(declare-fun b!632129 () Bool)

(declare-fun e!383749 () Bool)

(declare-fun tp!196761 () Bool)

(assert (=> b!632129 (= e!383749 tp!196761)))

(declare-fun b!632128 () Bool)

(declare-fun inv!8489 (IArray!4345) Bool)

(assert (=> b!632128 (= e!383750 (and (inv!8489 (xs!4813 (c!116050 (tokens!1165 printableTokens!2)))) e!383749))))

(assert (=> b!631894 (= tp!196747 (and (inv!8482 (c!116050 (tokens!1165 printableTokens!2))) e!383750))))

(assert (= (and b!631894 (is-Node!2172 (c!116050 (tokens!1165 printableTokens!2)))) b!632127))

(assert (= b!632128 b!632129))

(assert (= (and b!631894 (is-Leaf!3359 (c!116050 (tokens!1165 printableTokens!2)))) b!632128))

(declare-fun m!902773 () Bool)

(assert (=> b!632127 m!902773))

(declare-fun m!902775 () Bool)

(assert (=> b!632127 m!902775))

(declare-fun m!902777 () Bool)

(assert (=> b!632128 m!902777))

(assert (=> b!631894 m!902367))

(declare-fun b!632140 () Bool)

(declare-fun b_free!18477 () Bool)

(declare-fun b_next!18493 () Bool)

(assert (=> b!632140 (= b_free!18477 (not b_next!18493))))

(declare-fun tp!196771 () Bool)

(declare-fun b_and!62271 () Bool)

(assert (=> b!632140 (= tp!196771 b_and!62271)))

(declare-fun b_free!18479 () Bool)

(declare-fun b_next!18495 () Bool)

(assert (=> b!632140 (= b_free!18479 (not b_next!18495))))

(declare-fun tp!196769 () Bool)

(declare-fun b_and!62273 () Bool)

(assert (=> b!632140 (= tp!196769 b_and!62273)))

(declare-fun e!383762 () Bool)

(assert (=> b!632140 (= e!383762 (and tp!196771 tp!196769))))

(declare-fun b!632139 () Bool)

(declare-fun e!383759 () Bool)

(declare-fun inv!8478 (String!8618) Bool)

(declare-fun inv!8490 (TokenValueInjection!2504) Bool)

(assert (=> b!632139 (= e!383759 (and (inv!8478 (tag!1604 (h!11981 (rules!8150 printableTokens!2)))) (inv!8490 (transformation!1342 (h!11981 (rules!8150 printableTokens!2)))) e!383762))))

(declare-fun b!632138 () Bool)

(declare-fun e!383761 () Bool)

(declare-fun tp!196770 () Bool)

(assert (=> b!632138 (= e!383761 (and e!383759 tp!196770))))

(assert (=> b!631896 (= tp!196746 e!383761)))

(assert (= b!632139 b!632140))

(assert (= b!632138 b!632139))

(assert (= (and b!631896 (is-Cons!6580 (rules!8150 printableTokens!2))) b!632138))

(declare-fun m!902779 () Bool)

(assert (=> b!632139 m!902779))

(declare-fun m!902781 () Bool)

(assert (=> b!632139 m!902781))

(declare-fun b_lambda!24921 () Bool)

(assert (= b_lambda!24919 (or b!631891 b_lambda!24921)))

(declare-fun bs!73345 () Bool)

(declare-fun d!221401 () Bool)

(assert (= bs!73345 (and d!221401 b!631891)))

(declare-fun removeId!0 (tuple2!7182) PrintableTokens!66)

(assert (=> bs!73345 (= (dynLambda!3695 lambda!17127 (h!11982 lt!269331)) (usesJsonRules!0 (removeId!0 (h!11982 lt!269331))))))

(declare-fun m!902783 () Bool)

(assert (=> bs!73345 m!902783))

(assert (=> bs!73345 m!902783))

(declare-fun m!902785 () Bool)

(assert (=> bs!73345 m!902785))

(assert (=> b!632117 d!221401))

(push 1)

(assert (not b!632127))

(assert (not b!632005))

(assert (not b!631957))

(assert (not d!221399))

(assert (not b!631954))

(assert (not b!632019))

(assert (not b!632128))

(assert (not b!632020))

(assert (not d!221363))

(assert (not b!632075))

(assert (not bs!73345))

(assert (not b!632111))

(assert (not b!632129))

(assert (not d!221375))

(assert (not b!631935))

(assert (not d!221395))

(assert (not b!632023))

(assert (not b!632024))

(assert (not b_lambda!24921))

(assert (not b!632022))

(assert (not b!631959))

(assert (not d!221367))

(assert (not b!631894))

(assert (not b!631921))

(assert (not b!632138))

(assert (not b!632139))

(assert (not d!221353))

(assert (not b!632007))

(assert b_and!62273)

(assert b_and!62271)

(assert (not b!631930))

(assert (not bm!41399))

(assert (not b!632035))

(assert (not d!221343))

(assert (not d!221383))

(assert (not bm!41408))

(assert (not b!631967))

(assert (not b!631953))

(assert (not b!631923))

(assert (not d!221365))

(assert (not d!221385))

(assert (not d!221351))

(assert (not d!221349))

(assert (not b_next!18493))

(assert (not b!632118))

(assert (not b!632011))

(assert (not b!632004))

(assert (not b!632006))

(assert (not b!631956))

(assert (not b!632010))

(assert (not d!221359))

(assert (not b_next!18495))

(assert (not d!221341))

(assert (not b!631931))

(assert (not b!631932))

(assert (not d!221335))

(assert (not b!632021))

(assert (not b!632012))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62273)

(assert b_and!62271)

(assert (not b_next!18495))

(assert (not b_next!18493))

(check-sat)

(pop 1)

