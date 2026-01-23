; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61444 () Bool)

(assert start!61444)

(declare-fun b!630297 () Bool)

(declare-fun res!273435 () Bool)

(declare-fun e!382549 () Bool)

(assert (=> b!630297 (=> (not res!273435) (not e!382549))))

(declare-datatypes ((List!6552 0))(
  ( (Nil!6538) (Cons!6538 (h!11939 (_ BitVec 16)) (t!82956 List!6552)) )
))
(declare-datatypes ((TokenValue!1370 0))(
  ( (FloatLiteralValue!2740 (text!10035 List!6552)) (TokenValueExt!1369 (__x!4628 Int)) (Broken!6850 (value!43202 List!6552)) (Object!1383) (End!1370) (Def!1370) (Underscore!1370) (Match!1370) (Else!1370) (Error!1370) (Case!1370) (If!1370) (Extends!1370) (Abstract!1370) (Class!1370) (Val!1370) (DelimiterValue!2740 (del!1430 List!6552)) (KeywordValue!1376 (value!43203 List!6552)) (CommentValue!2740 (value!43204 List!6552)) (WhitespaceValue!2740 (value!43205 List!6552)) (IndentationValue!1370 (value!43206 List!6552)) (String!8587) (Int32!1370) (Broken!6851 (value!43207 List!6552)) (Boolean!1371) (Unit!11588) (OperatorValue!1373 (op!1430 List!6552)) (IdentifierValue!2740 (value!43208 List!6552)) (IdentifierValue!2741 (value!43209 List!6552)) (WhitespaceValue!2741 (value!43210 List!6552)) (True!2740) (False!2740) (Broken!6852 (value!43211 List!6552)) (Broken!6853 (value!43212 List!6552)) (True!2741) (RightBrace!1370) (RightBracket!1370) (Colon!1370) (Null!1370) (Comma!1370) (LeftBracket!1370) (False!2741) (LeftBrace!1370) (ImaginaryLiteralValue!1370 (text!10036 List!6552)) (StringLiteralValue!4110 (value!43213 List!6552)) (EOFValue!1370 (value!43214 List!6552)) (IdentValue!1370 (value!43215 List!6552)) (DelimiterValue!2741 (value!43216 List!6552)) (DedentValue!1370 (value!43217 List!6552)) (NewLineValue!1370 (value!43218 List!6552)) (IntegerValue!4110 (value!43219 (_ BitVec 32)) (text!10037 List!6552)) (IntegerValue!4111 (value!43220 Int) (text!10038 List!6552)) (Times!1370) (Or!1370) (Equal!1370) (Minus!1370) (Broken!6854 (value!43221 List!6552)) (And!1370) (Div!1370) (LessEqual!1370) (Mod!1370) (Concat!3040) (Not!1370) (Plus!1370) (SpaceValue!1370 (value!43222 List!6552)) (IntegerValue!4112 (value!43223 Int) (text!10039 List!6552)) (StringLiteralValue!4111 (text!10040 List!6552)) (FloatLiteralValue!2741 (text!10041 List!6552)) (BytesLiteralValue!1370 (value!43224 List!6552)) (CommentValue!2741 (value!43225 List!6552)) (StringLiteralValue!4112 (value!43226 List!6552)) (ErrorTokenValue!1370 (msg!1431 List!6552)) )
))
(declare-datatypes ((Regex!1670 0))(
  ( (ElementMatch!1670 (c!115726 (_ BitVec 16))) (Concat!3041 (regOne!3852 Regex!1670) (regTwo!3852 Regex!1670)) (EmptyExpr!1670) (Star!1670 (reg!1999 Regex!1670)) (EmptyLang!1670) (Union!1670 (regOne!3853 Regex!1670) (regTwo!3853 Regex!1670)) )
))
(declare-datatypes ((String!8588 0))(
  ( (String!8589 (value!43227 String)) )
))
(declare-datatypes ((IArray!4287 0))(
  ( (IArray!4288 (innerList!2201 List!6552)) )
))
(declare-datatypes ((Conc!2143 0))(
  ( (Node!2143 (left!5240 Conc!2143) (right!5570 Conc!2143) (csize!4516 Int) (cheight!2354 Int)) (Leaf!3327 (xs!4784 IArray!4287) (csize!4517 Int)) (Empty!2143) )
))
(declare-datatypes ((BalanceConc!4298 0))(
  ( (BalanceConc!4299 (c!115727 Conc!2143)) )
))
(declare-datatypes ((TokenValueInjection!2492 0))(
  ( (TokenValueInjection!2493 (toValue!2277 Int) (toChars!2136 Int)) )
))
(declare-datatypes ((Rule!2472 0))(
  ( (Rule!2473 (regex!1336 Regex!1670) (tag!1598 String!8588) (isSeparator!1336 Bool) (transformation!1336 TokenValueInjection!2492)) )
))
(declare-datatypes ((Token!2396 0))(
  ( (Token!2397 (value!43228 TokenValue!1370) (rule!2132 Rule!2472) (size!5128 Int) (originalCharacters!1369 List!6552)) )
))
(declare-datatypes ((List!6553 0))(
  ( (Nil!6539) (Cons!6539 (h!11940 Token!2396) (t!82957 List!6553)) )
))
(declare-datatypes ((IArray!4289 0))(
  ( (IArray!4290 (innerList!2202 List!6553)) )
))
(declare-datatypes ((Conc!2144 0))(
  ( (Node!2144 (left!5241 Conc!2144) (right!5571 Conc!2144) (csize!4518 Int) (cheight!2355 Int)) (Leaf!3328 (xs!4785 IArray!4289) (csize!4519 Int)) (Empty!2144) )
))
(declare-datatypes ((List!6554 0))(
  ( (Nil!6540) (Cons!6540 (h!11941 Rule!2472) (t!82958 List!6554)) )
))
(declare-datatypes ((BalanceConc!4300 0))(
  ( (BalanceConc!4301 (c!115728 Conc!2144)) )
))
(declare-datatypes ((PrintableTokens!54 0))(
  ( (PrintableTokens!55 (rules!8134 List!6554) (tokens!1157 BalanceConc!4300)) )
))
(declare-fun printableTokens!2 () PrintableTokens!54)

(declare-fun usesJsonRules!0 (PrintableTokens!54) Bool)

(assert (=> b!630297 (= res!273435 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!630298 () Bool)

(declare-fun e!382548 () Bool)

(declare-fun tp!196567 () Bool)

(declare-fun e!382547 () Bool)

(declare-fun inv!8437 (BalanceConc!4300) Bool)

(assert (=> b!630298 (= e!382548 (and tp!196567 (inv!8437 (tokens!1157 printableTokens!2)) e!382547))))

(declare-fun b!630299 () Bool)

(declare-fun res!273432 () Bool)

(assert (=> b!630299 (=> (not res!273432) (not e!382549))))

(declare-fun lt!267981 () List!6554)

(declare-datatypes ((LexerInterface!1222 0))(
  ( (LexerInterfaceExt!1219 (__x!4629 Int)) (Lexer!1220) )
))
(declare-fun rulesInvariant!1157 (LexerInterface!1222 List!6554) Bool)

(assert (=> b!630299 (= res!273432 (rulesInvariant!1157 Lexer!1220 lt!267981))))

(declare-fun b!630300 () Bool)

(declare-fun tp!196566 () Bool)

(declare-fun inv!8438 (Conc!2144) Bool)

(assert (=> b!630300 (= e!382547 (and (inv!8438 (c!115728 (tokens!1157 printableTokens!2))) tp!196566))))

(declare-fun b!630301 () Bool)

(declare-datatypes ((List!6555 0))(
  ( (Nil!6541) (Cons!6541 (h!11942 PrintableTokens!54) (t!82959 List!6555)) )
))
(declare-fun lt!267984 () List!6555)

(declare-fun lambda!16777 () Int)

(declare-fun forall!1627 (List!6555 Int) Bool)

(assert (=> b!630301 (= e!382549 (not (forall!1627 lt!267984 lambda!16777)))))

(declare-datatypes ((Unit!11589 0))(
  ( (Unit!11590) )
))
(declare-fun lt!267983 () Unit!11589)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6555) Unit!11589)

(assert (=> b!630301 (= lt!267983 (lemmaAddIdsPreservesRules!0 lt!267984))))

(declare-fun lt!267982 () Int)

(declare-datatypes ((IArray!4291 0))(
  ( (IArray!4292 (innerList!2203 List!6555)) )
))
(declare-datatypes ((Conc!2145 0))(
  ( (Node!2145 (left!5242 Conc!2145) (right!5572 Conc!2145) (csize!4520 Int) (cheight!2356 Int)) (Leaf!3329 (xs!4786 IArray!4291) (csize!4521 Int)) (Empty!2145) )
))
(declare-datatypes ((BalanceConc!4302 0))(
  ( (BalanceConc!4303 (c!115729 Conc!2145)) )
))
(declare-fun list!2778 (BalanceConc!4302) List!6555)

(declare-datatypes ((List!6556 0))(
  ( (Nil!6542) (Cons!6542 (h!11943 Int) (t!82960 List!6556)) )
))
(declare-datatypes ((IArray!4293 0))(
  ( (IArray!4294 (innerList!2204 List!6556)) )
))
(declare-datatypes ((Conc!2146 0))(
  ( (Node!2146 (left!5243 Conc!2146) (right!5573 Conc!2146) (csize!4522 Int) (cheight!2357 Int)) (Leaf!3330 (xs!4787 IArray!4293) (csize!4523 Int)) (Empty!2146) )
))
(declare-datatypes ((BalanceConc!4304 0))(
  ( (BalanceConc!4305 (c!115730 Conc!2146)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!54 Int BalanceConc!4304 BalanceConc!4302) BalanceConc!4302)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4300 Int Int BalanceConc!4304) BalanceConc!4304)

(assert (=> b!630301 (= lt!267984 (list!2778 (slicesMulti!0 printableTokens!2 lt!267982 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) (BalanceConc!4303 Empty!2145))))))

(declare-fun res!273433 () Bool)

(declare-fun e!382550 () Bool)

(assert (=> start!61444 (=> (not res!273433) (not e!382550))))

(assert (=> start!61444 (= res!273433 (> lt!267982 0))))

(declare-fun size!5129 (PrintableTokens!54) Int)

(assert (=> start!61444 (= lt!267982 (size!5129 printableTokens!2))))

(assert (=> start!61444 e!382550))

(declare-fun inv!8439 (PrintableTokens!54) Bool)

(assert (=> start!61444 (and (inv!8439 printableTokens!2) e!382548)))

(declare-fun b!630302 () Bool)

(assert (=> b!630302 (= e!382550 e!382549)))

(declare-fun res!273434 () Bool)

(assert (=> b!630302 (=> (not res!273434) (not e!382549))))

(declare-fun isEmpty!4614 (List!6554) Bool)

(assert (=> b!630302 (= res!273434 (not (isEmpty!4614 lt!267981)))))

(declare-datatypes ((JsonLexer!128 0))(
  ( (JsonLexer!129) )
))
(declare-fun rules!109 (JsonLexer!128) List!6554)

(assert (=> b!630302 (= lt!267981 (rules!109 JsonLexer!129))))

(assert (= (and start!61444 res!273433) b!630302))

(assert (= (and b!630302 res!273434) b!630299))

(assert (= (and b!630299 res!273432) b!630297))

(assert (= (and b!630297 res!273435) b!630301))

(assert (= b!630298 b!630300))

(assert (= start!61444 b!630298))

(declare-fun m!899403 () Bool)

(assert (=> b!630299 m!899403))

(declare-fun m!899405 () Bool)

(assert (=> b!630300 m!899405))

(declare-fun m!899407 () Bool)

(assert (=> b!630297 m!899407))

(declare-fun m!899409 () Bool)

(assert (=> b!630301 m!899409))

(declare-fun m!899411 () Bool)

(assert (=> b!630301 m!899411))

(declare-fun m!899413 () Bool)

(assert (=> b!630301 m!899413))

(declare-fun m!899415 () Bool)

(assert (=> b!630301 m!899415))

(declare-fun m!899417 () Bool)

(assert (=> b!630301 m!899417))

(assert (=> b!630301 m!899411))

(assert (=> b!630301 m!899417))

(declare-fun m!899419 () Bool)

(assert (=> b!630298 m!899419))

(declare-fun m!899421 () Bool)

(assert (=> start!61444 m!899421))

(declare-fun m!899423 () Bool)

(assert (=> start!61444 m!899423))

(declare-fun m!899425 () Bool)

(assert (=> b!630302 m!899425))

(declare-fun m!899427 () Bool)

(assert (=> b!630302 m!899427))

(push 1)

(assert (not b!630298))

(assert (not start!61444))

(assert (not b!630302))

(assert (not b!630297))

(assert (not b!630301))

(assert (not b!630300))

(assert (not b!630299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220638 () Bool)

(declare-fun isBalanced!572 (Conc!2144) Bool)

(assert (=> d!220638 (= (inv!8437 (tokens!1157 printableTokens!2)) (isBalanced!572 (c!115728 (tokens!1157 printableTokens!2))))))

(declare-fun bs!73002 () Bool)

(assert (= bs!73002 d!220638))

(declare-fun m!899455 () Bool)

(assert (=> bs!73002 m!899455))

(assert (=> b!630298 d!220638))

(declare-fun d!220640 () Bool)

(assert (=> d!220640 (= (usesJsonRules!0 printableTokens!2) (= (rules!8134 printableTokens!2) (rules!109 JsonLexer!129)))))

(declare-fun bs!73004 () Bool)

(assert (= bs!73004 d!220640))

(assert (=> bs!73004 m!899427))

(assert (=> b!630297 d!220640))

(declare-fun d!220646 () Bool)

(assert (=> d!220646 (= (isEmpty!4614 lt!267981) (is-Nil!6540 lt!267981))))

(assert (=> b!630302 d!220646))

(declare-fun d!220648 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!128) Rule!2472)

(declare-fun integerLiteralRule!0 (JsonLexer!128) Rule!2472)

(declare-fun floatLiteralRule!0 (JsonLexer!128) Rule!2472)

(declare-fun trueRule!0 (JsonLexer!128) Rule!2472)

(declare-fun falseRule!0 (JsonLexer!128) Rule!2472)

(declare-fun nullRule!0 (JsonLexer!128) Rule!2472)

(declare-fun jsonstringRule!0 (JsonLexer!128) Rule!2472)

(declare-fun lBraceRule!0 (JsonLexer!128) Rule!2472)

(declare-fun rBraceRule!0 (JsonLexer!128) Rule!2472)

(declare-fun lBracketRule!0 (JsonLexer!128) Rule!2472)

(declare-fun rBracketRule!0 (JsonLexer!128) Rule!2472)

(declare-fun colonRule!0 (JsonLexer!128) Rule!2472)

(declare-fun commaRule!0 (JsonLexer!128) Rule!2472)

(declare-fun eofRule!0 (JsonLexer!128) Rule!2472)

(assert (=> d!220648 (= (rules!109 JsonLexer!129) (Cons!6540 (whitespaceRule!0 JsonLexer!129) (Cons!6540 (integerLiteralRule!0 JsonLexer!129) (Cons!6540 (floatLiteralRule!0 JsonLexer!129) (Cons!6540 (trueRule!0 JsonLexer!129) (Cons!6540 (falseRule!0 JsonLexer!129) (Cons!6540 (nullRule!0 JsonLexer!129) (Cons!6540 (jsonstringRule!0 JsonLexer!129) (Cons!6540 (lBraceRule!0 JsonLexer!129) (Cons!6540 (rBraceRule!0 JsonLexer!129) (Cons!6540 (lBracketRule!0 JsonLexer!129) (Cons!6540 (rBracketRule!0 JsonLexer!129) (Cons!6540 (colonRule!0 JsonLexer!129) (Cons!6540 (commaRule!0 JsonLexer!129) (Cons!6540 (eofRule!0 JsonLexer!129) Nil!6540)))))))))))))))))

(declare-fun bs!73005 () Bool)

(assert (= bs!73005 d!220648))

(declare-fun m!899459 () Bool)

(assert (=> bs!73005 m!899459))

(declare-fun m!899461 () Bool)

(assert (=> bs!73005 m!899461))

(declare-fun m!899463 () Bool)

(assert (=> bs!73005 m!899463))

(declare-fun m!899465 () Bool)

(assert (=> bs!73005 m!899465))

(declare-fun m!899467 () Bool)

(assert (=> bs!73005 m!899467))

(declare-fun m!899469 () Bool)

(assert (=> bs!73005 m!899469))

(declare-fun m!899471 () Bool)

(assert (=> bs!73005 m!899471))

(declare-fun m!899473 () Bool)

(assert (=> bs!73005 m!899473))

(declare-fun m!899475 () Bool)

(assert (=> bs!73005 m!899475))

(declare-fun m!899477 () Bool)

(assert (=> bs!73005 m!899477))

(declare-fun m!899479 () Bool)

(assert (=> bs!73005 m!899479))

(declare-fun m!899481 () Bool)

(assert (=> bs!73005 m!899481))

(declare-fun m!899483 () Bool)

(assert (=> bs!73005 m!899483))

(declare-fun m!899485 () Bool)

(assert (=> bs!73005 m!899485))

(assert (=> b!630302 d!220648))

(declare-fun bs!73007 () Bool)

(declare-fun b!630339 () Bool)

(assert (= bs!73007 (and b!630339 b!630301)))

(declare-fun lambda!16785 () Int)

(assert (=> bs!73007 (not (= lambda!16785 lambda!16777))))

(declare-fun bs!73008 () Bool)

(declare-fun d!220650 () Bool)

(assert (= bs!73008 (and d!220650 b!630301)))

(declare-fun lambda!16786 () Int)

(assert (=> bs!73008 (not (= lambda!16786 lambda!16777))))

(declare-fun bs!73009 () Bool)

(assert (= bs!73009 (and d!220650 b!630339)))

(assert (=> bs!73009 (= lambda!16786 lambda!16785)))

(declare-fun lt!268011 () Int)

(declare-fun c!115741 () Bool)

(declare-fun lt!268007 () Int)

(declare-fun call!41356 () PrintableTokens!54)

(declare-fun bm!41351 () Bool)

(declare-fun slice!18 (PrintableTokens!54 Int Int) PrintableTokens!54)

(assert (=> bm!41351 (= call!41356 (slice!18 printableTokens!2 (ite c!115741 lt!268007 lt!268011) (ite c!115741 (+ lt!268011 1) (+ lt!268007 1))))))

(declare-fun b!630338 () Bool)

(declare-fun e!382571 () PrintableTokens!54)

(assert (=> b!630338 (= e!382571 call!41356)))

(declare-fun lt!268009 () BalanceConc!4302)

(declare-fun forall!1629 (BalanceConc!4302 Int) Bool)

(assert (=> d!220650 (forall!1629 lt!268009 lambda!16786)))

(declare-fun e!382570 () BalanceConc!4302)

(assert (=> d!220650 (= lt!268009 e!382570)))

(declare-fun c!115740 () Bool)

(declare-fun size!5135 (BalanceConc!4304) Int)

(assert (=> d!220650 (= c!115740 (>= (size!5135 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146))) 2))))

(assert (=> d!220650 (= (size!5129 printableTokens!2) lt!267982)))

(assert (=> d!220650 (= (slicesMulti!0 printableTokens!2 lt!267982 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) (BalanceConc!4303 Empty!2145)) lt!268009)))

(declare-fun lt!268010 () PrintableTokens!54)

(declare-fun tail!868 (BalanceConc!4304) BalanceConc!4304)

(declare-fun append!177 (BalanceConc!4302 PrintableTokens!54) BalanceConc!4302)

(assert (=> b!630339 (= e!382570 (slicesMulti!0 printableTokens!2 lt!267982 (tail!868 (tail!868 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)))) (append!177 (BalanceConc!4303 Empty!2145) lt!268010)))))

(declare-fun apply!1559 (BalanceConc!4304 Int) Int)

(assert (=> b!630339 (= lt!268007 (apply!1559 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) 0))))

(assert (=> b!630339 (= lt!268011 (apply!1559 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) 1))))

(assert (=> b!630339 (= c!115741 (<= lt!268007 lt!268011))))

(assert (=> b!630339 (= lt!268010 e!382571)))

(declare-fun lt!268008 () Unit!11589)

(declare-fun lemmaConcatPreservesForall!9 (List!6555 List!6555 Int) Unit!11589)

(assert (=> b!630339 (= lt!268008 (lemmaConcatPreservesForall!9 (list!2778 (BalanceConc!4303 Empty!2145)) (Cons!6541 lt!268010 Nil!6541) lambda!16785))))

(declare-fun b!630340 () Bool)

(assert (=> b!630340 (= e!382570 (BalanceConc!4303 Empty!2145))))

(declare-fun b!630341 () Bool)

(assert (=> b!630341 (= e!382571 call!41356)))

(assert (= (and d!220650 c!115740) b!630339))

(assert (= (and d!220650 (not c!115740)) b!630340))

(assert (= (and b!630339 c!115741) b!630338))

(assert (= (and b!630339 (not c!115741)) b!630341))

(assert (= (or b!630338 b!630341) bm!41351))

(declare-fun m!899497 () Bool)

(assert (=> bm!41351 m!899497))

(declare-fun m!899499 () Bool)

(assert (=> d!220650 m!899499))

(assert (=> d!220650 m!899417))

(declare-fun m!899501 () Bool)

(assert (=> d!220650 m!899501))

(assert (=> d!220650 m!899421))

(declare-fun m!899503 () Bool)

(assert (=> b!630339 m!899503))

(declare-fun m!899505 () Bool)

(assert (=> b!630339 m!899505))

(declare-fun m!899507 () Bool)

(assert (=> b!630339 m!899507))

(declare-fun m!899509 () Bool)

(assert (=> b!630339 m!899509))

(assert (=> b!630339 m!899503))

(declare-fun m!899511 () Bool)

(assert (=> b!630339 m!899511))

(declare-fun m!899513 () Bool)

(assert (=> b!630339 m!899513))

(assert (=> b!630339 m!899417))

(declare-fun m!899515 () Bool)

(assert (=> b!630339 m!899515))

(assert (=> b!630339 m!899511))

(assert (=> b!630339 m!899505))

(assert (=> b!630339 m!899417))

(assert (=> b!630339 m!899509))

(assert (=> b!630339 m!899417))

(declare-fun m!899517 () Bool)

(assert (=> b!630339 m!899517))

(assert (=> b!630301 d!220650))

(declare-fun d!220656 () Bool)

(declare-fun list!2780 (Conc!2145) List!6555)

(assert (=> d!220656 (= (list!2778 (slicesMulti!0 printableTokens!2 lt!267982 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) (BalanceConc!4303 Empty!2145))) (list!2780 (c!115729 (slicesMulti!0 printableTokens!2 lt!267982 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) (BalanceConc!4303 Empty!2145)))))))

(declare-fun bs!73010 () Bool)

(assert (= bs!73010 d!220656))

(declare-fun m!899519 () Bool)

(assert (=> bs!73010 m!899519))

(assert (=> b!630301 d!220656))

(declare-fun b!630367 () Bool)

(assert (=> b!630367 true))

(declare-fun bs!73013 () Bool)

(declare-fun d!220658 () Bool)

(assert (= bs!73013 (and d!220658 b!630367)))

(declare-fun lambda!16792 () Int)

(declare-fun lambda!16791 () Int)

(assert (=> bs!73013 (= lambda!16792 lambda!16791)))

(assert (=> d!220658 true))

(declare-fun lt!268018 () BalanceConc!4304)

(declare-fun forall!1630 (BalanceConc!4304 Int) Bool)

(assert (=> d!220658 (forall!1630 lt!268018 lambda!16792)))

(declare-fun e!382594 () BalanceConc!4304)

(assert (=> d!220658 (= lt!268018 e!382594)))

(declare-fun c!115749 () Bool)

(declare-fun size!5136 (BalanceConc!4300) Int)

(assert (=> d!220658 (= c!115749 (>= 0 (size!5136 (tokens!1157 printableTokens!2))))))

(declare-fun e!382595 () Bool)

(assert (=> d!220658 e!382595))

(declare-fun res!273474 () Bool)

(assert (=> d!220658 (=> (not res!273474) (not e!382595))))

(assert (=> d!220658 (= res!273474 (>= 0 0))))

(assert (=> d!220658 (= (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 0 (BalanceConc!4305 Empty!2146)) lt!268018)))

(declare-fun lt!268020 () Unit!11589)

(declare-fun lemmaConcatPreservesForall!10 (List!6556 List!6556 Int) Unit!11589)

(declare-fun list!2781 (BalanceConc!4304) List!6556)

(assert (=> b!630367 (= lt!268020 (lemmaConcatPreservesForall!10 (list!2781 (BalanceConc!4305 Empty!2146)) (Cons!6542 0 Nil!6542) lambda!16791))))

(declare-fun e!382591 () BalanceConc!4304)

(declare-fun call!41359 () BalanceConc!4304)

(assert (=> b!630367 (= e!382591 call!41359)))

(declare-fun b!630368 () Bool)

(assert (=> b!630368 (= e!382595 (<= 0 (size!5136 (tokens!1157 printableTokens!2))))))

(declare-fun b!630369 () Bool)

(declare-fun e!382593 () BalanceConc!4304)

(assert (=> b!630369 (= e!382593 (BalanceConc!4305 Empty!2146))))

(declare-fun bm!41354 () Bool)

(declare-fun c!115750 () Bool)

(declare-fun c!115748 () Bool)

(assert (=> bm!41354 (= c!115750 c!115748)))

(assert (=> bm!41354 (= call!41359 (indicesOfOpenBraces!0 (tokens!1157 printableTokens!2) lt!267982 (+ 0 1) e!382593))))

(declare-fun b!630370 () Bool)

(declare-fun append!178 (BalanceConc!4304 Int) BalanceConc!4304)

(assert (=> b!630370 (= e!382593 (append!178 (BalanceConc!4305 Empty!2146) 0))))

(declare-fun b!630371 () Bool)

(declare-fun e!382592 () Bool)

(declare-fun lt!268019 () Token!2396)

(declare-fun isKeywordValue!0 (Token!2396 TokenValue!1370) Bool)

(assert (=> b!630371 (= e!382592 (isKeywordValue!0 lt!268019 RightBrace!1370))))

(declare-fun b!630372 () Bool)

(assert (=> b!630372 (= e!382594 e!382591)))

(declare-fun apply!1560 (BalanceConc!4300 Int) Token!2396)

(assert (=> b!630372 (= lt!268019 (apply!1560 (tokens!1157 printableTokens!2) 0))))

(declare-fun res!273475 () Bool)

(assert (=> b!630372 (= res!273475 (isKeywordValue!0 lt!268019 LeftBrace!1370))))

(assert (=> b!630372 (=> res!273475 e!382592)))

(assert (=> b!630372 (= c!115748 e!382592)))

(declare-fun b!630373 () Bool)

(assert (=> b!630373 (= e!382591 call!41359)))

(declare-fun b!630374 () Bool)

(assert (=> b!630374 (= e!382594 (BalanceConc!4305 Empty!2146))))

(assert (= (and d!220658 res!273474) b!630368))

(assert (= (and d!220658 c!115749) b!630374))

(assert (= (and d!220658 (not c!115749)) b!630372))

(assert (= (and b!630372 (not res!273475)) b!630371))

(assert (= (and b!630372 c!115748) b!630367))

(assert (= (and b!630372 (not c!115748)) b!630373))

(assert (= (or b!630367 b!630373) bm!41354))

(assert (= (and bm!41354 c!115750) b!630370))

(assert (= (and bm!41354 (not c!115750)) b!630369))

(declare-fun m!899531 () Bool)

(assert (=> b!630370 m!899531))

(declare-fun m!899533 () Bool)

(assert (=> d!220658 m!899533))

(declare-fun m!899535 () Bool)

(assert (=> d!220658 m!899535))

(declare-fun m!899537 () Bool)

(assert (=> bm!41354 m!899537))

(declare-fun m!899539 () Bool)

(assert (=> b!630372 m!899539))

(declare-fun m!899541 () Bool)

(assert (=> b!630372 m!899541))

(declare-fun m!899543 () Bool)

(assert (=> b!630367 m!899543))

(assert (=> b!630367 m!899543))

(declare-fun m!899545 () Bool)

(assert (=> b!630367 m!899545))

(assert (=> b!630368 m!899535))

(declare-fun m!899547 () Bool)

(assert (=> b!630371 m!899547))

(assert (=> b!630301 d!220658))

(declare-fun d!220668 () Bool)

(declare-fun res!273480 () Bool)

(declare-fun e!382600 () Bool)

(assert (=> d!220668 (=> res!273480 e!382600)))

(assert (=> d!220668 (= res!273480 (is-Nil!6541 lt!267984))))

(assert (=> d!220668 (= (forall!1627 lt!267984 lambda!16777) e!382600)))

(declare-fun b!630381 () Bool)

(declare-fun e!382601 () Bool)

(assert (=> b!630381 (= e!382600 e!382601)))

(declare-fun res!273481 () Bool)

(assert (=> b!630381 (=> (not res!273481) (not e!382601))))

(declare-fun dynLambda!3669 (Int PrintableTokens!54) Bool)

(assert (=> b!630381 (= res!273481 (dynLambda!3669 lambda!16777 (h!11942 lt!267984)))))

(declare-fun b!630382 () Bool)

(assert (=> b!630382 (= e!382601 (forall!1627 (t!82959 lt!267984) lambda!16777))))

(assert (= (and d!220668 (not res!273480)) b!630381))

(assert (= (and b!630381 res!273481) b!630382))

(declare-fun b_lambda!24767 () Bool)

(assert (=> (not b_lambda!24767) (not b!630381)))

(declare-fun m!899549 () Bool)

(assert (=> b!630381 m!899549))

(declare-fun m!899551 () Bool)

(assert (=> b!630382 m!899551))

(assert (=> b!630301 d!220668))

(declare-fun bs!73014 () Bool)

(declare-fun d!220670 () Bool)

(assert (= bs!73014 (and d!220670 b!630301)))

(declare-fun lambda!16797 () Int)

(assert (=> bs!73014 (not (= lambda!16797 lambda!16777))))

(declare-fun bs!73015 () Bool)

(assert (= bs!73015 (and d!220670 b!630339)))

(assert (=> bs!73015 (= lambda!16797 lambda!16785)))

(declare-fun bs!73016 () Bool)

(assert (= bs!73016 (and d!220670 d!220650)))

(assert (=> bs!73016 (= lambda!16797 lambda!16786)))

(declare-fun lambda!16798 () Int)

(assert (=> bs!73014 (= lambda!16798 lambda!16777)))

(assert (=> bs!73015 (not (= lambda!16798 lambda!16785))))

(assert (=> bs!73016 (not (= lambda!16798 lambda!16786))))

(assert (=> d!220670 (not (= lambda!16798 lambda!16797))))

(assert (=> d!220670 (forall!1627 lt!267984 lambda!16798)))

(declare-fun lt!268025 () Unit!11589)

(declare-fun e!382604 () Unit!11589)

(assert (=> d!220670 (= lt!268025 e!382604)))

(declare-fun c!115753 () Bool)

(assert (=> d!220670 (= c!115753 (is-Nil!6541 lt!267984))))

(assert (=> d!220670 (forall!1627 lt!267984 lambda!16797)))

(assert (=> d!220670 (= (lemmaAddIdsPreservesRules!0 lt!267984) lt!268025)))

(declare-fun b!630387 () Bool)

(declare-fun Unit!11594 () Unit!11589)

(assert (=> b!630387 (= e!382604 Unit!11594)))

(declare-fun b!630388 () Bool)

(declare-fun Unit!11595 () Unit!11589)

(assert (=> b!630388 (= e!382604 Unit!11595)))

(declare-fun lt!268026 () Unit!11589)

(assert (=> b!630388 (= lt!268026 (lemmaAddIdsPreservesRules!0 (t!82959 lt!267984)))))

(assert (= (and d!220670 c!115753) b!630387))

(assert (= (and d!220670 (not c!115753)) b!630388))

(declare-fun m!899553 () Bool)

(assert (=> d!220670 m!899553))

(declare-fun m!899555 () Bool)

(assert (=> d!220670 m!899555))

(declare-fun m!899557 () Bool)

(assert (=> b!630388 m!899557))

(assert (=> b!630301 d!220670))

(declare-fun d!220672 () Bool)

(assert (=> d!220672 (= (size!5129 printableTokens!2) (size!5136 (tokens!1157 printableTokens!2)))))

(declare-fun bs!73017 () Bool)

(assert (= bs!73017 d!220672))

(assert (=> bs!73017 m!899535))

(assert (=> start!61444 d!220672))

(declare-fun d!220674 () Bool)

(declare-fun res!273488 () Bool)

(declare-fun e!382607 () Bool)

(assert (=> d!220674 (=> (not res!273488) (not e!382607))))

(assert (=> d!220674 (= res!273488 (not (isEmpty!4614 (rules!8134 printableTokens!2))))))

(assert (=> d!220674 (= (inv!8439 printableTokens!2) e!382607)))

(declare-fun b!630395 () Bool)

(declare-fun res!273489 () Bool)

(assert (=> b!630395 (=> (not res!273489) (not e!382607))))

(assert (=> b!630395 (= res!273489 (rulesInvariant!1157 Lexer!1220 (rules!8134 printableTokens!2)))))

(declare-fun b!630396 () Bool)

(declare-fun res!273490 () Bool)

(assert (=> b!630396 (=> (not res!273490) (not e!382607))))

(declare-fun rulesProduceEachTokenIndividually!565 (LexerInterface!1222 List!6554 BalanceConc!4300) Bool)

(assert (=> b!630396 (= res!273490 (rulesProduceEachTokenIndividually!565 Lexer!1220 (rules!8134 printableTokens!2) (tokens!1157 printableTokens!2)))))

(declare-fun b!630397 () Bool)

(declare-fun separableTokens!15 (LexerInterface!1222 BalanceConc!4300 List!6554) Bool)

(assert (=> b!630397 (= e!382607 (separableTokens!15 Lexer!1220 (tokens!1157 printableTokens!2) (rules!8134 printableTokens!2)))))

(assert (= (and d!220674 res!273488) b!630395))

(assert (= (and b!630395 res!273489) b!630396))

(assert (= (and b!630396 res!273490) b!630397))

(declare-fun m!899559 () Bool)

(assert (=> d!220674 m!899559))

(declare-fun m!899561 () Bool)

(assert (=> b!630395 m!899561))

(declare-fun m!899563 () Bool)

(assert (=> b!630396 m!899563))

(declare-fun m!899565 () Bool)

(assert (=> b!630397 m!899565))

(assert (=> start!61444 d!220674))

(declare-fun d!220676 () Bool)

(declare-fun c!115756 () Bool)

(assert (=> d!220676 (= c!115756 (is-Node!2144 (c!115728 (tokens!1157 printableTokens!2))))))

(declare-fun e!382612 () Bool)

(assert (=> d!220676 (= (inv!8438 (c!115728 (tokens!1157 printableTokens!2))) e!382612)))

(declare-fun b!630404 () Bool)

(declare-fun inv!8443 (Conc!2144) Bool)

(assert (=> b!630404 (= e!382612 (inv!8443 (c!115728 (tokens!1157 printableTokens!2))))))

(declare-fun b!630405 () Bool)

(declare-fun e!382613 () Bool)

(assert (=> b!630405 (= e!382612 e!382613)))

(declare-fun res!273493 () Bool)

(assert (=> b!630405 (= res!273493 (not (is-Leaf!3328 (c!115728 (tokens!1157 printableTokens!2)))))))

(assert (=> b!630405 (=> res!273493 e!382613)))

(declare-fun b!630406 () Bool)

(declare-fun inv!8444 (Conc!2144) Bool)

(assert (=> b!630406 (= e!382613 (inv!8444 (c!115728 (tokens!1157 printableTokens!2))))))

(assert (= (and d!220676 c!115756) b!630404))

(assert (= (and d!220676 (not c!115756)) b!630405))

(assert (= (and b!630405 (not res!273493)) b!630406))

(declare-fun m!899567 () Bool)

(assert (=> b!630404 m!899567))

(declare-fun m!899569 () Bool)

(assert (=> b!630406 m!899569))

(assert (=> b!630300 d!220676))

(declare-fun d!220678 () Bool)

(declare-fun res!273496 () Bool)

(declare-fun e!382616 () Bool)

(assert (=> d!220678 (=> (not res!273496) (not e!382616))))

(declare-fun rulesValid!493 (LexerInterface!1222 List!6554) Bool)

(assert (=> d!220678 (= res!273496 (rulesValid!493 Lexer!1220 lt!267981))))

(assert (=> d!220678 (= (rulesInvariant!1157 Lexer!1220 lt!267981) e!382616)))

(declare-fun b!630409 () Bool)

(declare-datatypes ((List!6562 0))(
  ( (Nil!6548) (Cons!6548 (h!11949 String!8588) (t!82981 List!6562)) )
))
(declare-fun noDuplicateTag!493 (LexerInterface!1222 List!6554 List!6562) Bool)

(assert (=> b!630409 (= e!382616 (noDuplicateTag!493 Lexer!1220 lt!267981 Nil!6548))))

(assert (= (and d!220678 res!273496) b!630409))

(declare-fun m!899571 () Bool)

(assert (=> d!220678 m!899571))

(declare-fun m!899573 () Bool)

(assert (=> b!630409 m!899573))

(assert (=> b!630299 d!220678))

(declare-fun b!630420 () Bool)

(declare-fun b_free!18437 () Bool)

(declare-fun b_next!18453 () Bool)

(assert (=> b!630420 (= b_free!18437 (not b_next!18453))))

(declare-fun tp!196580 () Bool)

(declare-fun b_and!62231 () Bool)

(assert (=> b!630420 (= tp!196580 b_and!62231)))

(declare-fun b_free!18439 () Bool)

(declare-fun b_next!18455 () Bool)

(assert (=> b!630420 (= b_free!18439 (not b_next!18455))))

(declare-fun tp!196582 () Bool)

(declare-fun b_and!62233 () Bool)

(assert (=> b!630420 (= tp!196582 b_and!62233)))

(declare-fun e!382625 () Bool)

(assert (=> b!630420 (= e!382625 (and tp!196580 tp!196582))))

(declare-fun b!630419 () Bool)

(declare-fun e!382626 () Bool)

(declare-fun inv!8434 (String!8588) Bool)

(declare-fun inv!8445 (TokenValueInjection!2492) Bool)

(assert (=> b!630419 (= e!382626 (and (inv!8434 (tag!1598 (h!11941 (rules!8134 printableTokens!2)))) (inv!8445 (transformation!1336 (h!11941 (rules!8134 printableTokens!2)))) e!382625))))

(declare-fun b!630418 () Bool)

(declare-fun e!382627 () Bool)

(declare-fun tp!196581 () Bool)

(assert (=> b!630418 (= e!382627 (and e!382626 tp!196581))))

(assert (=> b!630298 (= tp!196567 e!382627)))

(assert (= b!630419 b!630420))

(assert (= b!630418 b!630419))

(assert (= (and b!630298 (is-Cons!6540 (rules!8134 printableTokens!2))) b!630418))

(declare-fun m!899575 () Bool)

(assert (=> b!630419 m!899575))

(declare-fun m!899577 () Bool)

(assert (=> b!630419 m!899577))

(declare-fun tp!196590 () Bool)

(declare-fun tp!196591 () Bool)

(declare-fun b!630429 () Bool)

(declare-fun e!382634 () Bool)

(assert (=> b!630429 (= e!382634 (and (inv!8438 (left!5241 (c!115728 (tokens!1157 printableTokens!2)))) tp!196591 (inv!8438 (right!5571 (c!115728 (tokens!1157 printableTokens!2)))) tp!196590))))

(declare-fun b!630431 () Bool)

(declare-fun e!382633 () Bool)

(declare-fun tp!196589 () Bool)

(assert (=> b!630431 (= e!382633 tp!196589)))

(declare-fun b!630430 () Bool)

(declare-fun inv!8446 (IArray!4289) Bool)

(assert (=> b!630430 (= e!382634 (and (inv!8446 (xs!4785 (c!115728 (tokens!1157 printableTokens!2)))) e!382633))))

(assert (=> b!630300 (= tp!196566 (and (inv!8438 (c!115728 (tokens!1157 printableTokens!2))) e!382634))))

(assert (= (and b!630300 (is-Node!2144 (c!115728 (tokens!1157 printableTokens!2)))) b!630429))

(assert (= b!630430 b!630431))

(assert (= (and b!630300 (is-Leaf!3328 (c!115728 (tokens!1157 printableTokens!2)))) b!630430))

(declare-fun m!899579 () Bool)

(assert (=> b!630429 m!899579))

(declare-fun m!899581 () Bool)

(assert (=> b!630429 m!899581))

(declare-fun m!899583 () Bool)

(assert (=> b!630430 m!899583))

(assert (=> b!630300 m!899405))

(declare-fun b_lambda!24769 () Bool)

(assert (= b_lambda!24767 (or b!630301 b_lambda!24769)))

(declare-fun bs!73018 () Bool)

(declare-fun d!220680 () Bool)

(assert (= bs!73018 (and d!220680 b!630301)))

(declare-datatypes ((tuple2!7172 0))(
  ( (tuple2!7173 (_1!3850 Int) (_2!3850 PrintableTokens!54)) )
))
(declare-fun addId!0 (PrintableTokens!54) tuple2!7172)

(assert (=> bs!73018 (= (dynLambda!3669 lambda!16777 (h!11942 lt!267984)) (usesJsonRules!0 (_2!3850 (addId!0 (h!11942 lt!267984)))))))

(declare-fun m!899585 () Bool)

(assert (=> bs!73018 m!899585))

(declare-fun m!899587 () Bool)

(assert (=> bs!73018 m!899587))

(assert (=> b!630381 d!220680))

(push 1)

(assert (not d!220674))

(assert (not b!630396))

(assert (not d!220650))

(assert (not b!630370))

(assert (not d!220638))

(assert (not b!630406))

(assert (not b_next!18455))

(assert (not b!630419))

(assert (not b!630372))

(assert (not b!630382))

(assert (not b!630418))

(assert (not bm!41354))

(assert b_and!62233)

(assert (not b!630368))

(assert (not d!220678))

(assert (not b!630404))

(assert (not b!630431))

(assert (not d!220640))

(assert (not bs!73018))

(assert (not b!630409))

(assert (not b_lambda!24769))

(assert (not b!630367))

(assert (not bm!41351))

(assert (not b!630397))

(assert (not b!630429))

(assert (not d!220672))

(assert (not d!220648))

(assert (not b!630388))

(assert (not b!630395))

(assert (not b_next!18453))

(assert (not d!220656))

(assert (not b!630371))

(assert (not b!630339))

(assert (not d!220658))

(assert (not d!220670))

(assert b_and!62231)

(assert (not b!630430))

(assert (not b!630300))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62233)

(assert b_and!62231)

(assert (not b_next!18455))

(assert (not b_next!18453))

(check-sat)

(pop 1)

