; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61236 () Bool)

(assert start!61236)

(declare-fun e!382123 () Bool)

(declare-fun e!382121 () Bool)

(declare-fun tp!196483 () Bool)

(declare-fun b!629721 () Bool)

(declare-datatypes ((List!6540 0))(
  ( (Nil!6526) (Cons!6526 (h!11927 (_ BitVec 16)) (t!82876 List!6540)) )
))
(declare-datatypes ((TokenValue!1368 0))(
  ( (FloatLiteralValue!2736 (text!10021 List!6540)) (TokenValueExt!1367 (__x!4624 Int)) (Broken!6840 (value!43145 List!6540)) (Object!1381) (End!1368) (Def!1368) (Underscore!1368) (Match!1368) (Else!1368) (Error!1368) (Case!1368) (If!1368) (Extends!1368) (Abstract!1368) (Class!1368) (Val!1368) (DelimiterValue!2736 (del!1428 List!6540)) (KeywordValue!1374 (value!43146 List!6540)) (CommentValue!2736 (value!43147 List!6540)) (WhitespaceValue!2736 (value!43148 List!6540)) (IndentationValue!1368 (value!43149 List!6540)) (String!8577) (Int32!1368) (Broken!6841 (value!43150 List!6540)) (Boolean!1369) (Unit!11564) (OperatorValue!1371 (op!1428 List!6540)) (IdentifierValue!2736 (value!43151 List!6540)) (IdentifierValue!2737 (value!43152 List!6540)) (WhitespaceValue!2737 (value!43153 List!6540)) (True!2736) (False!2736) (Broken!6842 (value!43154 List!6540)) (Broken!6843 (value!43155 List!6540)) (True!2737) (RightBrace!1368) (RightBracket!1368) (Colon!1368) (Null!1368) (Comma!1368) (LeftBracket!1368) (False!2737) (LeftBrace!1368) (ImaginaryLiteralValue!1368 (text!10022 List!6540)) (StringLiteralValue!4104 (value!43156 List!6540)) (EOFValue!1368 (value!43157 List!6540)) (IdentValue!1368 (value!43158 List!6540)) (DelimiterValue!2737 (value!43159 List!6540)) (DedentValue!1368 (value!43160 List!6540)) (NewLineValue!1368 (value!43161 List!6540)) (IntegerValue!4104 (value!43162 (_ BitVec 32)) (text!10023 List!6540)) (IntegerValue!4105 (value!43163 Int) (text!10024 List!6540)) (Times!1368) (Or!1368) (Equal!1368) (Minus!1368) (Broken!6844 (value!43164 List!6540)) (And!1368) (Div!1368) (LessEqual!1368) (Mod!1368) (Concat!3036) (Not!1368) (Plus!1368) (SpaceValue!1368 (value!43165 List!6540)) (IntegerValue!4106 (value!43166 Int) (text!10025 List!6540)) (StringLiteralValue!4105 (text!10026 List!6540)) (FloatLiteralValue!2737 (text!10027 List!6540)) (BytesLiteralValue!1368 (value!43167 List!6540)) (CommentValue!2737 (value!43168 List!6540)) (StringLiteralValue!4106 (value!43169 List!6540)) (ErrorTokenValue!1368 (msg!1429 List!6540)) )
))
(declare-datatypes ((Regex!1668 0))(
  ( (ElementMatch!1668 (c!115648 (_ BitVec 16))) (Concat!3037 (regOne!3848 Regex!1668) (regTwo!3848 Regex!1668)) (EmptyExpr!1668) (Star!1668 (reg!1997 Regex!1668)) (EmptyLang!1668) (Union!1668 (regOne!3849 Regex!1668) (regTwo!3849 Regex!1668)) )
))
(declare-datatypes ((String!8578 0))(
  ( (String!8579 (value!43170 String)) )
))
(declare-datatypes ((IArray!4271 0))(
  ( (IArray!4272 (innerList!2193 List!6540)) )
))
(declare-datatypes ((Conc!2135 0))(
  ( (Node!2135 (left!5227 Conc!2135) (right!5557 Conc!2135) (csize!4500 Int) (cheight!2346 Int)) (Leaf!3318 (xs!4776 IArray!4271) (csize!4501 Int)) (Empty!2135) )
))
(declare-datatypes ((BalanceConc!4282 0))(
  ( (BalanceConc!4283 (c!115649 Conc!2135)) )
))
(declare-datatypes ((TokenValueInjection!2488 0))(
  ( (TokenValueInjection!2489 (toValue!2275 Int) (toChars!2134 Int)) )
))
(declare-datatypes ((Rule!2468 0))(
  ( (Rule!2469 (regex!1334 Regex!1668) (tag!1596 String!8578) (isSeparator!1334 Bool) (transformation!1334 TokenValueInjection!2488)) )
))
(declare-datatypes ((Token!2392 0))(
  ( (Token!2393 (value!43171 TokenValue!1368) (rule!2130 Rule!2468) (size!5106 Int) (originalCharacters!1367 List!6540)) )
))
(declare-datatypes ((List!6541 0))(
  ( (Nil!6527) (Cons!6527 (h!11928 Token!2392) (t!82877 List!6541)) )
))
(declare-datatypes ((IArray!4273 0))(
  ( (IArray!4274 (innerList!2194 List!6541)) )
))
(declare-datatypes ((Conc!2136 0))(
  ( (Node!2136 (left!5228 Conc!2136) (right!5558 Conc!2136) (csize!4502 Int) (cheight!2347 Int)) (Leaf!3319 (xs!4777 IArray!4273) (csize!4503 Int)) (Empty!2136) )
))
(declare-datatypes ((List!6542 0))(
  ( (Nil!6528) (Cons!6528 (h!11929 Rule!2468) (t!82878 List!6542)) )
))
(declare-datatypes ((BalanceConc!4284 0))(
  ( (BalanceConc!4285 (c!115650 Conc!2136)) )
))
(declare-datatypes ((PrintableTokens!50 0))(
  ( (PrintableTokens!51 (rules!8126 List!6542) (tokens!1153 BalanceConc!4284)) )
))
(declare-fun printableTokens!2 () PrintableTokens!50)

(declare-fun inv!8418 (BalanceConc!4284) Bool)

(assert (=> b!629721 (= e!382123 (and tp!196483 (inv!8418 (tokens!1153 printableTokens!2)) e!382121))))

(declare-fun b!629722 () Bool)

(declare-fun res!273095 () Bool)

(declare-fun e!382122 () Bool)

(assert (=> b!629722 (=> (not res!273095) (not e!382122))))

(declare-fun usesJsonRules!0 (PrintableTokens!50) Bool)

(assert (=> b!629722 (= res!273095 (usesJsonRules!0 printableTokens!2))))

(declare-fun res!273094 () Bool)

(declare-fun e!382124 () Bool)

(assert (=> start!61236 (=> (not res!273094) (not e!382124))))

(declare-fun lt!267387 () Int)

(assert (=> start!61236 (= res!273094 (> lt!267387 0))))

(declare-fun size!5107 (PrintableTokens!50) Int)

(assert (=> start!61236 (= lt!267387 (size!5107 printableTokens!2))))

(assert (=> start!61236 e!382124))

(declare-fun inv!8419 (PrintableTokens!50) Bool)

(assert (=> start!61236 (and (inv!8419 printableTokens!2) e!382123)))

(declare-fun b!629723 () Bool)

(assert (=> b!629723 (= e!382124 e!382122)))

(declare-fun res!273096 () Bool)

(assert (=> b!629723 (=> (not res!273096) (not e!382122))))

(declare-fun lt!267388 () List!6542)

(declare-fun isEmpty!4608 (List!6542) Bool)

(assert (=> b!629723 (= res!273096 (not (isEmpty!4608 lt!267388)))))

(declare-datatypes ((JsonLexer!124 0))(
  ( (JsonLexer!125) )
))
(declare-fun rules!109 (JsonLexer!124) List!6542)

(assert (=> b!629723 (= lt!267388 (rules!109 JsonLexer!125))))

(declare-fun b!629724 () Bool)

(declare-fun res!273097 () Bool)

(assert (=> b!629724 (=> (not res!273097) (not e!382122))))

(declare-datatypes ((LexerInterface!1220 0))(
  ( (LexerInterfaceExt!1217 (__x!4625 Int)) (Lexer!1218) )
))
(declare-fun rulesInvariant!1155 (LexerInterface!1220 List!6542) Bool)

(assert (=> b!629724 (= res!273097 (rulesInvariant!1155 Lexer!1218 lt!267388))))

(declare-fun b!629725 () Bool)

(declare-fun lambda!16697 () Int)

(declare-datatypes ((List!6543 0))(
  ( (Nil!6529) (Cons!6529 (h!11930 PrintableTokens!50) (t!82879 List!6543)) )
))
(declare-fun forall!1609 (List!6543 Int) Bool)

(declare-datatypes ((IArray!4275 0))(
  ( (IArray!4276 (innerList!2195 List!6543)) )
))
(declare-datatypes ((Conc!2137 0))(
  ( (Node!2137 (left!5229 Conc!2137) (right!5559 Conc!2137) (csize!4504 Int) (cheight!2348 Int)) (Leaf!3320 (xs!4778 IArray!4275) (csize!4505 Int)) (Empty!2137) )
))
(declare-datatypes ((BalanceConc!4286 0))(
  ( (BalanceConc!4287 (c!115651 Conc!2137)) )
))
(declare-fun list!2764 (BalanceConc!4286) List!6543)

(declare-datatypes ((List!6544 0))(
  ( (Nil!6530) (Cons!6530 (h!11931 Int) (t!82880 List!6544)) )
))
(declare-datatypes ((IArray!4277 0))(
  ( (IArray!4278 (innerList!2196 List!6544)) )
))
(declare-datatypes ((Conc!2138 0))(
  ( (Node!2138 (left!5230 Conc!2138) (right!5560 Conc!2138) (csize!4506 Int) (cheight!2349 Int)) (Leaf!3321 (xs!4779 IArray!4277) (csize!4507 Int)) (Empty!2138) )
))
(declare-datatypes ((BalanceConc!4288 0))(
  ( (BalanceConc!4289 (c!115652 Conc!2138)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!50 Int BalanceConc!4288 BalanceConc!4286) BalanceConc!4286)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4284 Int Int BalanceConc!4288) BalanceConc!4288)

(assert (=> b!629725 (= e!382122 (not (forall!1609 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))) lambda!16697)))))

(declare-fun b!629726 () Bool)

(declare-fun tp!196482 () Bool)

(declare-fun inv!8420 (Conc!2136) Bool)

(assert (=> b!629726 (= e!382121 (and (inv!8420 (c!115650 (tokens!1153 printableTokens!2))) tp!196482))))

(assert (= (and start!61236 res!273094) b!629723))

(assert (= (and b!629723 res!273096) b!629724))

(assert (= (and b!629724 res!273097) b!629722))

(assert (= (and b!629722 res!273095) b!629725))

(assert (= b!629721 b!629726))

(assert (= start!61236 b!629721))

(declare-fun m!898327 () Bool)

(assert (=> b!629723 m!898327))

(declare-fun m!898329 () Bool)

(assert (=> b!629723 m!898329))

(declare-fun m!898331 () Bool)

(assert (=> b!629722 m!898331))

(declare-fun m!898333 () Bool)

(assert (=> b!629725 m!898333))

(assert (=> b!629725 m!898333))

(declare-fun m!898335 () Bool)

(assert (=> b!629725 m!898335))

(assert (=> b!629725 m!898335))

(declare-fun m!898337 () Bool)

(assert (=> b!629725 m!898337))

(assert (=> b!629725 m!898337))

(declare-fun m!898339 () Bool)

(assert (=> b!629725 m!898339))

(declare-fun m!898341 () Bool)

(assert (=> start!61236 m!898341))

(declare-fun m!898343 () Bool)

(assert (=> start!61236 m!898343))

(declare-fun m!898345 () Bool)

(assert (=> b!629724 m!898345))

(declare-fun m!898347 () Bool)

(assert (=> b!629726 m!898347))

(declare-fun m!898349 () Bool)

(assert (=> b!629721 m!898349))

(push 1)

(assert (not b!629724))

(assert (not b!629723))

(assert (not start!61236))

(assert (not b!629725))

(assert (not b!629722))

(assert (not b!629721))

(assert (not b!629726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220383 () Bool)

(declare-fun res!273116 () Bool)

(declare-fun e!382139 () Bool)

(assert (=> d!220383 (=> (not res!273116) (not e!382139))))

(declare-fun rulesValid!491 (LexerInterface!1220 List!6542) Bool)

(assert (=> d!220383 (= res!273116 (rulesValid!491 Lexer!1218 lt!267388))))

(assert (=> d!220383 (= (rulesInvariant!1155 Lexer!1218 lt!267388) e!382139)))

(declare-fun b!629747 () Bool)

(declare-datatypes ((List!6550 0))(
  ( (Nil!6536) (Cons!6536 (h!11937 String!8578) (t!82901 List!6550)) )
))
(declare-fun noDuplicateTag!491 (LexerInterface!1220 List!6542 List!6550) Bool)

(assert (=> b!629747 (= e!382139 (noDuplicateTag!491 Lexer!1218 lt!267388 Nil!6536))))

(assert (= (and d!220383 res!273116) b!629747))

(declare-fun m!898379 () Bool)

(assert (=> d!220383 m!898379))

(declare-fun m!898381 () Bool)

(assert (=> b!629747 m!898381))

(assert (=> b!629724 d!220383))

(declare-fun d!220385 () Bool)

(assert (=> d!220385 (= (usesJsonRules!0 printableTokens!2) (= (rules!8126 printableTokens!2) (rules!109 JsonLexer!125)))))

(declare-fun bs!72898 () Bool)

(assert (= bs!72898 d!220385))

(assert (=> bs!72898 m!898329))

(assert (=> b!629722 d!220385))

(declare-fun d!220387 () Bool)

(assert (=> d!220387 (= (isEmpty!4608 lt!267388) (is-Nil!6528 lt!267388))))

(assert (=> b!629723 d!220387))

(declare-fun d!220389 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!124) Rule!2468)

(declare-fun integerLiteralRule!0 (JsonLexer!124) Rule!2468)

(declare-fun floatLiteralRule!0 (JsonLexer!124) Rule!2468)

(declare-fun trueRule!0 (JsonLexer!124) Rule!2468)

(declare-fun falseRule!0 (JsonLexer!124) Rule!2468)

(declare-fun nullRule!0 (JsonLexer!124) Rule!2468)

(declare-fun jsonstringRule!0 (JsonLexer!124) Rule!2468)

(declare-fun lBraceRule!0 (JsonLexer!124) Rule!2468)

(declare-fun rBraceRule!0 (JsonLexer!124) Rule!2468)

(declare-fun lBracketRule!0 (JsonLexer!124) Rule!2468)

(declare-fun rBracketRule!0 (JsonLexer!124) Rule!2468)

(declare-fun colonRule!0 (JsonLexer!124) Rule!2468)

(declare-fun commaRule!0 (JsonLexer!124) Rule!2468)

(declare-fun eofRule!0 (JsonLexer!124) Rule!2468)

(assert (=> d!220389 (= (rules!109 JsonLexer!125) (Cons!6528 (whitespaceRule!0 JsonLexer!125) (Cons!6528 (integerLiteralRule!0 JsonLexer!125) (Cons!6528 (floatLiteralRule!0 JsonLexer!125) (Cons!6528 (trueRule!0 JsonLexer!125) (Cons!6528 (falseRule!0 JsonLexer!125) (Cons!6528 (nullRule!0 JsonLexer!125) (Cons!6528 (jsonstringRule!0 JsonLexer!125) (Cons!6528 (lBraceRule!0 JsonLexer!125) (Cons!6528 (rBraceRule!0 JsonLexer!125) (Cons!6528 (lBracketRule!0 JsonLexer!125) (Cons!6528 (rBracketRule!0 JsonLexer!125) (Cons!6528 (colonRule!0 JsonLexer!125) (Cons!6528 (commaRule!0 JsonLexer!125) (Cons!6528 (eofRule!0 JsonLexer!125) Nil!6528)))))))))))))))))

(declare-fun bs!72899 () Bool)

(assert (= bs!72899 d!220389))

(declare-fun m!898383 () Bool)

(assert (=> bs!72899 m!898383))

(declare-fun m!898385 () Bool)

(assert (=> bs!72899 m!898385))

(declare-fun m!898387 () Bool)

(assert (=> bs!72899 m!898387))

(declare-fun m!898389 () Bool)

(assert (=> bs!72899 m!898389))

(declare-fun m!898391 () Bool)

(assert (=> bs!72899 m!898391))

(declare-fun m!898393 () Bool)

(assert (=> bs!72899 m!898393))

(declare-fun m!898395 () Bool)

(assert (=> bs!72899 m!898395))

(declare-fun m!898397 () Bool)

(assert (=> bs!72899 m!898397))

(declare-fun m!898399 () Bool)

(assert (=> bs!72899 m!898399))

(declare-fun m!898401 () Bool)

(assert (=> bs!72899 m!898401))

(declare-fun m!898403 () Bool)

(assert (=> bs!72899 m!898403))

(declare-fun m!898405 () Bool)

(assert (=> bs!72899 m!898405))

(declare-fun m!898407 () Bool)

(assert (=> bs!72899 m!898407))

(declare-fun m!898409 () Bool)

(assert (=> bs!72899 m!898409))

(assert (=> b!629723 d!220389))

(declare-fun d!220391 () Bool)

(declare-fun isBalanced!566 (Conc!2136) Bool)

(assert (=> d!220391 (= (inv!8418 (tokens!1153 printableTokens!2)) (isBalanced!566 (c!115650 (tokens!1153 printableTokens!2))))))

(declare-fun bs!72900 () Bool)

(assert (= bs!72900 d!220391))

(declare-fun m!898411 () Bool)

(assert (=> bs!72900 m!898411))

(assert (=> b!629721 d!220391))

(declare-fun d!220393 () Bool)

(declare-fun c!115660 () Bool)

(assert (=> d!220393 (= c!115660 (is-Node!2136 (c!115650 (tokens!1153 printableTokens!2))))))

(declare-fun e!382144 () Bool)

(assert (=> d!220393 (= (inv!8420 (c!115650 (tokens!1153 printableTokens!2))) e!382144)))

(declare-fun b!629754 () Bool)

(declare-fun inv!8424 (Conc!2136) Bool)

(assert (=> b!629754 (= e!382144 (inv!8424 (c!115650 (tokens!1153 printableTokens!2))))))

(declare-fun b!629755 () Bool)

(declare-fun e!382145 () Bool)

(assert (=> b!629755 (= e!382144 e!382145)))

(declare-fun res!273119 () Bool)

(assert (=> b!629755 (= res!273119 (not (is-Leaf!3319 (c!115650 (tokens!1153 printableTokens!2)))))))

(assert (=> b!629755 (=> res!273119 e!382145)))

(declare-fun b!629756 () Bool)

(declare-fun inv!8425 (Conc!2136) Bool)

(assert (=> b!629756 (= e!382145 (inv!8425 (c!115650 (tokens!1153 printableTokens!2))))))

(assert (= (and d!220393 c!115660) b!629754))

(assert (= (and d!220393 (not c!115660)) b!629755))

(assert (= (and b!629755 (not res!273119)) b!629756))

(declare-fun m!898413 () Bool)

(assert (=> b!629754 m!898413))

(declare-fun m!898415 () Bool)

(assert (=> b!629756 m!898415))

(assert (=> b!629726 d!220393))

(declare-fun d!220395 () Bool)

(declare-fun res!273124 () Bool)

(declare-fun e!382150 () Bool)

(assert (=> d!220395 (=> res!273124 e!382150)))

(assert (=> d!220395 (= res!273124 (is-Nil!6529 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))

(assert (=> d!220395 (= (forall!1609 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))) lambda!16697) e!382150)))

(declare-fun b!629761 () Bool)

(declare-fun e!382151 () Bool)

(assert (=> b!629761 (= e!382150 e!382151)))

(declare-fun res!273125 () Bool)

(assert (=> b!629761 (=> (not res!273125) (not e!382151))))

(declare-fun dynLambda!3661 (Int PrintableTokens!50) Bool)

(assert (=> b!629761 (= res!273125 (dynLambda!3661 lambda!16697 (h!11930 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))))))

(declare-fun b!629762 () Bool)

(assert (=> b!629762 (= e!382151 (forall!1609 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))) lambda!16697))))

(assert (= (and d!220395 (not res!273124)) b!629761))

(assert (= (and b!629761 res!273125) b!629762))

(declare-fun b_lambda!24749 () Bool)

(assert (=> (not b_lambda!24749) (not b!629761)))

(declare-fun m!898417 () Bool)

(assert (=> b!629761 m!898417))

(declare-fun m!898419 () Bool)

(assert (=> b!629762 m!898419))

(assert (=> b!629725 d!220395))

(declare-fun d!220397 () Bool)

(declare-fun list!2766 (Conc!2137) List!6543)

(assert (=> d!220397 (= (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))) (list!2766 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))

(declare-fun bs!72901 () Bool)

(assert (= bs!72901 d!220397))

(declare-fun m!898421 () Bool)

(assert (=> bs!72901 m!898421))

(assert (=> b!629725 d!220397))

(declare-fun bs!72904 () Bool)

(declare-fun b!629798 () Bool)

(assert (= bs!72904 (and b!629798 b!629725)))

(declare-fun lambda!16705 () Int)

(assert (=> bs!72904 (= lambda!16705 lambda!16697)))

(declare-fun bs!72905 () Bool)

(declare-fun d!220399 () Bool)

(assert (= bs!72905 (and d!220399 b!629725)))

(declare-fun lambda!16706 () Int)

(assert (=> bs!72905 (= lambda!16706 lambda!16697)))

(declare-fun bs!72906 () Bool)

(assert (= bs!72906 (and d!220399 b!629798)))

(assert (=> bs!72906 (= lambda!16706 lambda!16705)))

(declare-fun call!41340 () PrintableTokens!50)

(declare-fun lt!267407 () Int)

(declare-fun bm!41335 () Bool)

(declare-fun lt!267405 () Int)

(declare-fun c!115669 () Bool)

(declare-fun slice!12 (PrintableTokens!50 Int Int) PrintableTokens!50)

(assert (=> bm!41335 (= call!41340 (slice!12 printableTokens!2 (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))))))

(declare-fun lt!267408 () BalanceConc!4286)

(declare-fun forall!1611 (BalanceConc!4286 Int) Bool)

(assert (=> d!220399 (forall!1611 lt!267408 lambda!16706)))

(declare-fun e!382175 () BalanceConc!4286)

(assert (=> d!220399 (= lt!267408 e!382175)))

(declare-fun c!115668 () Bool)

(declare-fun size!5113 (BalanceConc!4288) Int)

(assert (=> d!220399 (= c!115668 (>= (size!5113 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) 2))))

(assert (=> d!220399 (= (size!5107 printableTokens!2) lt!267387)))

(assert (=> d!220399 (= (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)) lt!267408)))

(declare-fun lt!267406 () PrintableTokens!50)

(declare-fun tail!860 (BalanceConc!4288) BalanceConc!4288)

(declare-fun append!169 (BalanceConc!4286 PrintableTokens!50) BalanceConc!4286)

(assert (=> b!629798 (= e!382175 (slicesMulti!0 printableTokens!2 lt!267387 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))) (append!169 (BalanceConc!4287 Empty!2137) lt!267406)))))

(declare-fun apply!1547 (BalanceConc!4288 Int) Int)

(assert (=> b!629798 (= lt!267405 (apply!1547 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) 0))))

(assert (=> b!629798 (= lt!267407 (apply!1547 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) 1))))

(assert (=> b!629798 (= c!115669 (<= lt!267405 lt!267407))))

(declare-fun e!382174 () PrintableTokens!50)

(assert (=> b!629798 (= lt!267406 e!382174)))

(declare-datatypes ((Unit!11566 0))(
  ( (Unit!11567) )
))
(declare-fun lt!267409 () Unit!11566)

(declare-fun lemmaConcatPreservesForall!5 (List!6543 List!6543 Int) Unit!11566)

(assert (=> b!629798 (= lt!267409 (lemmaConcatPreservesForall!5 (list!2764 (BalanceConc!4287 Empty!2137)) (Cons!6529 lt!267406 Nil!6529) lambda!16705))))

(declare-fun b!629799 () Bool)

(assert (=> b!629799 (= e!382175 (BalanceConc!4287 Empty!2137))))

(declare-fun b!629800 () Bool)

(assert (=> b!629800 (= e!382174 call!41340)))

(declare-fun b!629801 () Bool)

(assert (=> b!629801 (= e!382174 call!41340)))

(assert (= (and d!220399 c!115668) b!629798))

(assert (= (and d!220399 (not c!115668)) b!629799))

(assert (= (and b!629798 c!115669) b!629800))

(assert (= (and b!629798 (not c!115669)) b!629801))

(assert (= (or b!629800 b!629801) bm!41335))

(declare-fun m!898473 () Bool)

(assert (=> bm!41335 m!898473))

(declare-fun m!898475 () Bool)

(assert (=> d!220399 m!898475))

(assert (=> d!220399 m!898333))

(declare-fun m!898477 () Bool)

(assert (=> d!220399 m!898477))

(assert (=> d!220399 m!898341))

(declare-fun m!898479 () Bool)

(assert (=> b!629798 m!898479))

(declare-fun m!898481 () Bool)

(assert (=> b!629798 m!898481))

(declare-fun m!898483 () Bool)

(assert (=> b!629798 m!898483))

(assert (=> b!629798 m!898333))

(declare-fun m!898485 () Bool)

(assert (=> b!629798 m!898485))

(declare-fun m!898487 () Bool)

(assert (=> b!629798 m!898487))

(declare-fun m!898489 () Bool)

(assert (=> b!629798 m!898489))

(assert (=> b!629798 m!898487))

(assert (=> b!629798 m!898333))

(declare-fun m!898491 () Bool)

(assert (=> b!629798 m!898491))

(assert (=> b!629798 m!898481))

(assert (=> b!629798 m!898333))

(declare-fun m!898493 () Bool)

(assert (=> b!629798 m!898493))

(assert (=> b!629798 m!898493))

(assert (=> b!629798 m!898479))

(assert (=> b!629725 d!220399))

(declare-fun b!629825 () Bool)

(assert (=> b!629825 true))

(declare-fun bs!72907 () Bool)

(declare-fun d!220415 () Bool)

(assert (= bs!72907 (and d!220415 b!629825)))

(declare-fun lambda!16712 () Int)

(declare-fun lambda!16711 () Int)

(assert (=> bs!72907 (= lambda!16712 lambda!16711)))

(assert (=> d!220415 true))

(declare-fun b!629818 () Bool)

(declare-fun e!382190 () BalanceConc!4288)

(assert (=> b!629818 (= e!382190 (BalanceConc!4289 Empty!2138))))

(declare-fun lt!267417 () BalanceConc!4288)

(declare-fun forall!1612 (BalanceConc!4288 Int) Bool)

(assert (=> d!220415 (forall!1612 lt!267417 lambda!16712)))

(declare-fun e!382187 () BalanceConc!4288)

(assert (=> d!220415 (= lt!267417 e!382187)))

(declare-fun c!115677 () Bool)

(declare-fun size!5114 (BalanceConc!4284) Int)

(assert (=> d!220415 (= c!115677 (>= 0 (size!5114 (tokens!1153 printableTokens!2))))))

(declare-fun e!382189 () Bool)

(assert (=> d!220415 e!382189))

(declare-fun res!273152 () Bool)

(assert (=> d!220415 (=> (not res!273152) (not e!382189))))

(assert (=> d!220415 (= res!273152 (>= 0 0))))

(assert (=> d!220415 (= (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) lt!267417)))

(declare-fun b!629819 () Bool)

(assert (=> b!629819 (= e!382187 (BalanceConc!4289 Empty!2138))))

(declare-fun b!629820 () Bool)

(declare-fun e!382188 () BalanceConc!4288)

(assert (=> b!629820 (= e!382187 e!382188)))

(declare-fun lt!267416 () Token!2392)

(declare-fun apply!1548 (BalanceConc!4284 Int) Token!2392)

(assert (=> b!629820 (= lt!267416 (apply!1548 (tokens!1153 printableTokens!2) 0))))

(declare-fun res!273151 () Bool)

(declare-fun isKeywordValue!0 (Token!2392 TokenValue!1368) Bool)

(assert (=> b!629820 (= res!273151 (isKeywordValue!0 lt!267416 LeftBrace!1368))))

(declare-fun e!382186 () Bool)

(assert (=> b!629820 (=> res!273151 e!382186)))

(declare-fun c!115676 () Bool)

(assert (=> b!629820 (= c!115676 e!382186)))

(declare-fun b!629821 () Bool)

(assert (=> b!629821 (= e!382186 (isKeywordValue!0 lt!267416 RightBrace!1368))))

(declare-fun b!629822 () Bool)

(declare-fun append!170 (BalanceConc!4288 Int) BalanceConc!4288)

(assert (=> b!629822 (= e!382190 (append!170 (BalanceConc!4289 Empty!2138) 0))))

(declare-fun b!629823 () Bool)

(assert (=> b!629823 (= e!382189 (<= 0 (size!5114 (tokens!1153 printableTokens!2))))))

(declare-fun bm!41338 () Bool)

(declare-fun c!115678 () Bool)

(assert (=> bm!41338 (= c!115678 c!115676)))

(declare-fun call!41343 () BalanceConc!4288)

(assert (=> bm!41338 (= call!41343 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 (+ 0 1) e!382190))))

(declare-fun b!629824 () Bool)

(assert (=> b!629824 (= e!382188 call!41343)))

(declare-fun lt!267418 () Unit!11566)

(declare-fun lemmaConcatPreservesForall!6 (List!6544 List!6544 Int) Unit!11566)

(declare-fun list!2767 (BalanceConc!4288) List!6544)

(assert (=> b!629825 (= lt!267418 (lemmaConcatPreservesForall!6 (list!2767 (BalanceConc!4289 Empty!2138)) (Cons!6530 0 Nil!6530) lambda!16711))))

(assert (=> b!629825 (= e!382188 call!41343)))

(assert (= (and d!220415 res!273152) b!629823))

(assert (= (and d!220415 c!115677) b!629819))

(assert (= (and d!220415 (not c!115677)) b!629820))

(assert (= (and b!629820 (not res!273151)) b!629821))

(assert (= (and b!629820 c!115676) b!629825))

(assert (= (and b!629820 (not c!115676)) b!629824))

(assert (= (or b!629825 b!629824) bm!41338))

(assert (= (and bm!41338 c!115678) b!629822))

(assert (= (and bm!41338 (not c!115678)) b!629818))

(declare-fun m!898495 () Bool)

(assert (=> d!220415 m!898495))

(declare-fun m!898497 () Bool)

(assert (=> d!220415 m!898497))

(declare-fun m!898499 () Bool)

(assert (=> b!629822 m!898499))

(assert (=> b!629823 m!898497))

(declare-fun m!898501 () Bool)

(assert (=> b!629821 m!898501))

(declare-fun m!898503 () Bool)

(assert (=> b!629825 m!898503))

(assert (=> b!629825 m!898503))

(declare-fun m!898505 () Bool)

(assert (=> b!629825 m!898505))

(declare-fun m!898507 () Bool)

(assert (=> bm!41338 m!898507))

(declare-fun m!898509 () Bool)

(assert (=> b!629820 m!898509))

(declare-fun m!898511 () Bool)

(assert (=> b!629820 m!898511))

(assert (=> b!629725 d!220415))

(declare-fun d!220417 () Bool)

(assert (=> d!220417 (= (size!5107 printableTokens!2) (size!5114 (tokens!1153 printableTokens!2)))))

(declare-fun bs!72908 () Bool)

(assert (= bs!72908 d!220417))

(assert (=> bs!72908 m!898497))

(assert (=> start!61236 d!220417))

(declare-fun d!220419 () Bool)

(declare-fun res!273159 () Bool)

(declare-fun e!382193 () Bool)

(assert (=> d!220419 (=> (not res!273159) (not e!382193))))

(assert (=> d!220419 (= res!273159 (not (isEmpty!4608 (rules!8126 printableTokens!2))))))

(assert (=> d!220419 (= (inv!8419 printableTokens!2) e!382193)))

(declare-fun b!629834 () Bool)

(declare-fun res!273160 () Bool)

(assert (=> b!629834 (=> (not res!273160) (not e!382193))))

(assert (=> b!629834 (= res!273160 (rulesInvariant!1155 Lexer!1218 (rules!8126 printableTokens!2)))))

(declare-fun b!629835 () Bool)

(declare-fun res!273161 () Bool)

(assert (=> b!629835 (=> (not res!273161) (not e!382193))))

(declare-fun rulesProduceEachTokenIndividually!563 (LexerInterface!1220 List!6542 BalanceConc!4284) Bool)

(assert (=> b!629835 (= res!273161 (rulesProduceEachTokenIndividually!563 Lexer!1218 (rules!8126 printableTokens!2) (tokens!1153 printableTokens!2)))))

(declare-fun b!629836 () Bool)

(declare-fun separableTokens!13 (LexerInterface!1220 BalanceConc!4284 List!6542) Bool)

(assert (=> b!629836 (= e!382193 (separableTokens!13 Lexer!1218 (tokens!1153 printableTokens!2) (rules!8126 printableTokens!2)))))

(assert (= (and d!220419 res!273159) b!629834))

(assert (= (and b!629834 res!273160) b!629835))

(assert (= (and b!629835 res!273161) b!629836))

(declare-fun m!898513 () Bool)

(assert (=> d!220419 m!898513))

(declare-fun m!898515 () Bool)

(assert (=> b!629834 m!898515))

(declare-fun m!898517 () Bool)

(assert (=> b!629835 m!898517))

(declare-fun m!898519 () Bool)

(assert (=> b!629836 m!898519))

(assert (=> start!61236 d!220419))

(declare-fun b!629847 () Bool)

(declare-fun b_free!18413 () Bool)

(declare-fun b_next!18429 () Bool)

(assert (=> b!629847 (= b_free!18413 (not b_next!18429))))

(declare-fun tp!196498 () Bool)

(declare-fun b_and!62207 () Bool)

(assert (=> b!629847 (= tp!196498 b_and!62207)))

(declare-fun b_free!18415 () Bool)

(declare-fun b_next!18431 () Bool)

(assert (=> b!629847 (= b_free!18415 (not b_next!18431))))

(declare-fun tp!196496 () Bool)

(declare-fun b_and!62209 () Bool)

(assert (=> b!629847 (= tp!196496 b_and!62209)))

(declare-fun e!382202 () Bool)

(assert (=> b!629847 (= e!382202 (and tp!196498 tp!196496))))

(declare-fun b!629846 () Bool)

(declare-fun e!382203 () Bool)

(declare-fun inv!8415 (String!8578) Bool)

(declare-fun inv!8426 (TokenValueInjection!2488) Bool)

(assert (=> b!629846 (= e!382203 (and (inv!8415 (tag!1596 (h!11929 (rules!8126 printableTokens!2)))) (inv!8426 (transformation!1334 (h!11929 (rules!8126 printableTokens!2)))) e!382202))))

(declare-fun b!629845 () Bool)

(declare-fun e!382204 () Bool)

(declare-fun tp!196497 () Bool)

(assert (=> b!629845 (= e!382204 (and e!382203 tp!196497))))

(assert (=> b!629721 (= tp!196483 e!382204)))

(assert (= b!629846 b!629847))

(assert (= b!629845 b!629846))

(assert (= (and b!629721 (is-Cons!6528 (rules!8126 printableTokens!2))) b!629845))

(declare-fun m!898521 () Bool)

(assert (=> b!629846 m!898521))

(declare-fun m!898523 () Bool)

(assert (=> b!629846 m!898523))

(declare-fun tp!196506 () Bool)

(declare-fun e!382210 () Bool)

(declare-fun b!629856 () Bool)

(declare-fun tp!196507 () Bool)

(assert (=> b!629856 (= e!382210 (and (inv!8420 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) tp!196507 (inv!8420 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))) tp!196506))))

(declare-fun b!629858 () Bool)

(declare-fun e!382211 () Bool)

(declare-fun tp!196505 () Bool)

(assert (=> b!629858 (= e!382211 tp!196505)))

(declare-fun b!629857 () Bool)

(declare-fun inv!8427 (IArray!4273) Bool)

(assert (=> b!629857 (= e!382210 (and (inv!8427 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))) e!382211))))

(assert (=> b!629726 (= tp!196482 (and (inv!8420 (c!115650 (tokens!1153 printableTokens!2))) e!382210))))

(assert (= (and b!629726 (is-Node!2136 (c!115650 (tokens!1153 printableTokens!2)))) b!629856))

(assert (= b!629857 b!629858))

(assert (= (and b!629726 (is-Leaf!3319 (c!115650 (tokens!1153 printableTokens!2)))) b!629857))

(declare-fun m!898525 () Bool)

(assert (=> b!629856 m!898525))

(declare-fun m!898527 () Bool)

(assert (=> b!629856 m!898527))

(declare-fun m!898529 () Bool)

(assert (=> b!629857 m!898529))

(assert (=> b!629726 m!898347))

(declare-fun b_lambda!24753 () Bool)

(assert (= b_lambda!24749 (or b!629725 b_lambda!24753)))

(declare-fun bs!72909 () Bool)

(declare-fun d!220421 () Bool)

(assert (= bs!72909 (and d!220421 b!629725)))

(assert (=> bs!72909 (= (dynLambda!3661 lambda!16697 (h!11930 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))) (usesJsonRules!0 (h!11930 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))))))

(declare-fun m!898531 () Bool)

(assert (=> bs!72909 m!898531))

(assert (=> b!629761 d!220421))

(push 1)

(assert (not b!629798))

(assert (not b_next!18431))

(assert (not b!629825))

(assert (not b!629747))

(assert (not b!629821))

(assert (not d!220399))

(assert (not b!629836))

(assert (not b!629834))

(assert (not b!629823))

(assert b_and!62207)

(assert (not b!629857))

(assert (not b!629822))

(assert (not b!629820))

(assert (not d!220397))

(assert (not d!220383))

(assert (not b!629762))

(assert (not b_lambda!24753))

(assert (not b!629754))

(assert (not b!629856))

(assert (not d!220389))

(assert (not b!629858))

(assert (not bs!72909))

(assert (not b!629835))

(assert (not b!629726))

(assert (not b_next!18429))

(assert (not b!629756))

(assert (not bm!41338))

(assert (not d!220385))

(assert (not b!629845))

(assert (not d!220391))

(assert (not d!220415))

(assert (not b!629846))

(assert (not d!220419))

(assert (not bm!41335))

(assert (not d!220417))

(assert b_and!62209)

(check-sat)

(pop 1)

(push 1)

(assert b_and!62209)

(assert b_and!62207)

(assert (not b_next!18431))

(assert (not b_next!18429))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220429 () Bool)

(declare-fun lt!267445 () Int)

(declare-fun size!5118 (List!6541) Int)

(declare-fun list!2770 (BalanceConc!4284) List!6541)

(assert (=> d!220429 (= lt!267445 (size!5118 (list!2770 (tokens!1153 printableTokens!2))))))

(declare-fun size!5119 (Conc!2136) Int)

(assert (=> d!220429 (= lt!267445 (size!5119 (c!115650 (tokens!1153 printableTokens!2))))))

(assert (=> d!220429 (= (size!5114 (tokens!1153 printableTokens!2)) lt!267445)))

(declare-fun bs!72916 () Bool)

(assert (= bs!72916 d!220429))

(declare-fun m!898583 () Bool)

(assert (=> bs!72916 m!898583))

(assert (=> bs!72916 m!898583))

(declare-fun m!898585 () Bool)

(assert (=> bs!72916 m!898585))

(declare-fun m!898587 () Bool)

(assert (=> bs!72916 m!898587))

(assert (=> d!220417 d!220429))

(declare-fun d!220431 () Bool)

(declare-fun res!273179 () Bool)

(declare-fun e!382253 () Bool)

(assert (=> d!220431 (=> (not res!273179) (not e!382253))))

(assert (=> d!220431 (= res!273179 (= (csize!4502 (c!115650 (tokens!1153 printableTokens!2))) (+ (size!5119 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) (size!5119 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))))

(assert (=> d!220431 (= (inv!8424 (c!115650 (tokens!1153 printableTokens!2))) e!382253)))

(declare-fun b!629925 () Bool)

(declare-fun res!273180 () Bool)

(assert (=> b!629925 (=> (not res!273180) (not e!382253))))

(assert (=> b!629925 (= res!273180 (and (not (= (left!5228 (c!115650 (tokens!1153 printableTokens!2))) Empty!2136)) (not (= (right!5558 (c!115650 (tokens!1153 printableTokens!2))) Empty!2136))))))

(declare-fun b!629926 () Bool)

(declare-fun res!273181 () Bool)

(assert (=> b!629926 (=> (not res!273181) (not e!382253))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!267 (Conc!2136) Int)

(assert (=> b!629926 (= res!273181 (= (cheight!2347 (c!115650 (tokens!1153 printableTokens!2))) (+ (max!0 (height!267 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) (height!267 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) 1)))))

(declare-fun b!629927 () Bool)

(assert (=> b!629927 (= e!382253 (<= 0 (cheight!2347 (c!115650 (tokens!1153 printableTokens!2)))))))

(assert (= (and d!220431 res!273179) b!629925))

(assert (= (and b!629925 res!273180) b!629926))

(assert (= (and b!629926 res!273181) b!629927))

(declare-fun m!898589 () Bool)

(assert (=> d!220431 m!898589))

(declare-fun m!898591 () Bool)

(assert (=> d!220431 m!898591))

(declare-fun m!898593 () Bool)

(assert (=> b!629926 m!898593))

(declare-fun m!898595 () Bool)

(assert (=> b!629926 m!898595))

(assert (=> b!629926 m!898593))

(assert (=> b!629926 m!898595))

(declare-fun m!898597 () Bool)

(assert (=> b!629926 m!898597))

(assert (=> b!629754 d!220431))

(declare-fun d!220433 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!124) Regex!1668)

(declare-datatypes ((StringLiteralValueInjection!42 0))(
  ( (StringLiteralValueInjection!43) )
))
(declare-fun injection!8 (StringLiteralValueInjection!42) TokenValueInjection!2488)

(assert (=> d!220433 (= (jsonstringRule!0 JsonLexer!125) (Rule!2469 (jsonStringRe!0 JsonLexer!125) (String!8579 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!43)))))

(declare-fun bs!72917 () Bool)

(assert (= bs!72917 d!220433))

(declare-fun m!898599 () Bool)

(assert (=> bs!72917 m!898599))

(declare-fun m!898601 () Bool)

(assert (=> bs!72917 m!898601))

(assert (=> d!220389 d!220433))

(declare-fun d!220435 () Bool)

(declare-fun falseRe!0 (JsonLexer!124) Regex!1668)

(declare-datatypes ((KeywordValueInjection!22 0))(
  ( (KeywordValueInjection!23) )
))
(declare-fun injection!9 (KeywordValueInjection!22) TokenValueInjection!2488)

(assert (=> d!220435 (= (falseRule!0 JsonLexer!125) (Rule!2469 (falseRe!0 JsonLexer!125) (String!8579 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72918 () Bool)

(assert (= bs!72918 d!220435))

(declare-fun m!898603 () Bool)

(assert (=> bs!72918 m!898603))

(declare-fun m!898605 () Bool)

(assert (=> bs!72918 m!898605))

(assert (=> d!220389 d!220435))

(declare-fun d!220437 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220437 (= (lBracketRule!0 JsonLexer!125) (Rule!2469 (lBracketRe!0 JsonLexer!125) (String!8579 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72919 () Bool)

(assert (= bs!72919 d!220437))

(declare-fun m!898607 () Bool)

(assert (=> bs!72919 m!898607))

(assert (=> bs!72919 m!898605))

(assert (=> d!220389 d!220437))

(declare-fun d!220439 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220439 (= (rBracketRule!0 JsonLexer!125) (Rule!2469 (rBracketRe!0 JsonLexer!125) (String!8579 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72920 () Bool)

(assert (= bs!72920 d!220439))

(declare-fun m!898609 () Bool)

(assert (=> bs!72920 m!898609))

(assert (=> bs!72920 m!898605))

(assert (=> d!220389 d!220439))

(declare-fun d!220441 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220441 (= (lBraceRule!0 JsonLexer!125) (Rule!2469 (lBraceRe!0 JsonLexer!125) (String!8579 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72921 () Bool)

(assert (= bs!72921 d!220441))

(declare-fun m!898611 () Bool)

(assert (=> bs!72921 m!898611))

(assert (=> bs!72921 m!898605))

(assert (=> d!220389 d!220441))

(declare-fun d!220443 () Bool)

(declare-fun nullRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220443 (= (nullRule!0 JsonLexer!125) (Rule!2469 (nullRe!0 JsonLexer!125) (String!8579 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72922 () Bool)

(assert (= bs!72922 d!220443))

(declare-fun m!898613 () Bool)

(assert (=> bs!72922 m!898613))

(assert (=> bs!72922 m!898605))

(assert (=> d!220389 d!220443))

(declare-fun d!220445 () Bool)

(declare-fun commaRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220445 (= (commaRule!0 JsonLexer!125) (Rule!2469 (commaRe!0 JsonLexer!125) (String!8579 "ccoommmmaa") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72923 () Bool)

(assert (= bs!72923 d!220445))

(declare-fun m!898615 () Bool)

(assert (=> bs!72923 m!898615))

(assert (=> bs!72923 m!898605))

(assert (=> d!220389 d!220445))

(declare-fun d!220447 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220447 (= (rBraceRule!0 JsonLexer!125) (Rule!2469 (rBraceRe!0 JsonLexer!125) (String!8579 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72924 () Bool)

(assert (= bs!72924 d!220447))

(declare-fun m!898617 () Bool)

(assert (=> bs!72924 m!898617))

(assert (=> bs!72924 m!898605))

(assert (=> d!220389 d!220447))

(declare-fun d!220449 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!124) Regex!1668)

(declare-datatypes ((WhitespaceValueInjection!18 0))(
  ( (WhitespaceValueInjection!19) )
))
(declare-fun injection!7 (WhitespaceValueInjection!18) TokenValueInjection!2488)

(assert (=> d!220449 (= (whitespaceRule!0 JsonLexer!125) (Rule!2469 (wsCharRe!0 JsonLexer!125) (String!8579 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!19)))))

(declare-fun bs!72925 () Bool)

(assert (= bs!72925 d!220449))

(declare-fun m!898619 () Bool)

(assert (=> bs!72925 m!898619))

(declare-fun m!898621 () Bool)

(assert (=> bs!72925 m!898621))

(assert (=> d!220389 d!220449))

(declare-fun d!220451 () Bool)

(declare-fun eofRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220451 (= (eofRule!0 JsonLexer!125) (Rule!2469 (eofRe!0 JsonLexer!125) (String!8579 "eeooff") false (injection!7 WhitespaceValueInjection!19)))))

(declare-fun bs!72926 () Bool)

(assert (= bs!72926 d!220451))

(declare-fun m!898623 () Bool)

(assert (=> bs!72926 m!898623))

(assert (=> bs!72926 m!898621))

(assert (=> d!220389 d!220451))

(declare-fun d!220453 () Bool)

(declare-fun trueRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220453 (= (trueRule!0 JsonLexer!125) (Rule!2469 (trueRe!0 JsonLexer!125) (String!8579 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72927 () Bool)

(assert (= bs!72927 d!220453))

(declare-fun m!898625 () Bool)

(assert (=> bs!72927 m!898625))

(assert (=> bs!72927 m!898605))

(assert (=> d!220389 d!220453))

(declare-fun d!220455 () Bool)

(declare-fun colonRe!0 (JsonLexer!124) Regex!1668)

(assert (=> d!220455 (= (colonRule!0 JsonLexer!125) (Rule!2469 (colonRe!0 JsonLexer!125) (String!8579 "ccoolloonn") false (injection!9 KeywordValueInjection!23)))))

(declare-fun bs!72928 () Bool)

(assert (= bs!72928 d!220455))

(declare-fun m!898627 () Bool)

(assert (=> bs!72928 m!898627))

(assert (=> bs!72928 m!898605))

(assert (=> d!220389 d!220455))

(declare-fun d!220457 () Bool)

(declare-fun intRe!0 (JsonLexer!124) Regex!1668)

(declare-datatypes ((IntegerValueInjection!22 0))(
  ( (IntegerValueInjection!23) )
))
(declare-fun injection!5 (IntegerValueInjection!22) TokenValueInjection!2488)

(assert (=> d!220457 (= (integerLiteralRule!0 JsonLexer!125) (Rule!2469 (intRe!0 JsonLexer!125) (String!8579 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!23)))))

(declare-fun bs!72929 () Bool)

(assert (= bs!72929 d!220457))

(declare-fun m!898629 () Bool)

(assert (=> bs!72929 m!898629))

(declare-fun m!898631 () Bool)

(assert (=> bs!72929 m!898631))

(assert (=> d!220389 d!220457))

(declare-fun d!220459 () Bool)

(declare-fun floatRe!0 (JsonLexer!124) Regex!1668)

(declare-datatypes ((FloatLiteralValueInjection!18 0))(
  ( (FloatLiteralValueInjection!19) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!18) TokenValueInjection!2488)

(assert (=> d!220459 (= (floatLiteralRule!0 JsonLexer!125) (Rule!2469 (floatRe!0 JsonLexer!125) (String!8579 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!19)))))

(declare-fun bs!72930 () Bool)

(assert (= bs!72930 d!220459))

(declare-fun m!898633 () Bool)

(assert (=> bs!72930 m!898633))

(declare-fun m!898635 () Bool)

(assert (=> bs!72930 m!898635))

(assert (=> d!220389 d!220459))

(declare-fun d!220461 () Bool)

(declare-fun lt!267448 () Bool)

(declare-fun forall!1615 (List!6544 Int) Bool)

(assert (=> d!220461 (= lt!267448 (forall!1615 (list!2767 lt!267417) lambda!16712))))

(declare-fun forall!1616 (Conc!2138 Int) Bool)

(assert (=> d!220461 (= lt!267448 (forall!1616 (c!115652 lt!267417) lambda!16712))))

(assert (=> d!220461 (= (forall!1612 lt!267417 lambda!16712) lt!267448)))

(declare-fun bs!72931 () Bool)

(assert (= bs!72931 d!220461))

(declare-fun m!898637 () Bool)

(assert (=> bs!72931 m!898637))

(assert (=> bs!72931 m!898637))

(declare-fun m!898639 () Bool)

(assert (=> bs!72931 m!898639))

(declare-fun m!898641 () Bool)

(assert (=> bs!72931 m!898641))

(assert (=> d!220415 d!220461))

(assert (=> d!220415 d!220429))

(assert (=> b!629726 d!220393))

(declare-fun d!220463 () Bool)

(declare-fun lt!267451 () Bool)

(assert (=> d!220463 (= lt!267451 (forall!1609 (list!2764 lt!267408) lambda!16706))))

(declare-fun forall!1617 (Conc!2137 Int) Bool)

(assert (=> d!220463 (= lt!267451 (forall!1617 (c!115651 lt!267408) lambda!16706))))

(assert (=> d!220463 (= (forall!1611 lt!267408 lambda!16706) lt!267451)))

(declare-fun bs!72932 () Bool)

(assert (= bs!72932 d!220463))

(declare-fun m!898643 () Bool)

(assert (=> bs!72932 m!898643))

(assert (=> bs!72932 m!898643))

(declare-fun m!898645 () Bool)

(assert (=> bs!72932 m!898645))

(declare-fun m!898647 () Bool)

(assert (=> bs!72932 m!898647))

(assert (=> d!220399 d!220463))

(declare-fun d!220465 () Bool)

(declare-fun lt!267454 () Int)

(declare-fun size!5120 (List!6544) Int)

(assert (=> d!220465 (= lt!267454 (size!5120 (list!2767 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))

(declare-fun size!5121 (Conc!2138) Int)

(assert (=> d!220465 (= lt!267454 (size!5121 (c!115652 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))

(assert (=> d!220465 (= (size!5113 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) lt!267454)))

(declare-fun bs!72933 () Bool)

(assert (= bs!72933 d!220465))

(assert (=> bs!72933 m!898333))

(declare-fun m!898649 () Bool)

(assert (=> bs!72933 m!898649))

(assert (=> bs!72933 m!898649))

(declare-fun m!898651 () Bool)

(assert (=> bs!72933 m!898651))

(declare-fun m!898653 () Bool)

(assert (=> bs!72933 m!898653))

(assert (=> d!220399 d!220465))

(assert (=> d!220399 d!220417))

(declare-fun d!220467 () Bool)

(declare-fun lt!267457 () Token!2392)

(declare-fun apply!1551 (List!6541 Int) Token!2392)

(assert (=> d!220467 (= lt!267457 (apply!1551 (list!2770 (tokens!1153 printableTokens!2)) 0))))

(declare-fun apply!1552 (Conc!2136 Int) Token!2392)

(assert (=> d!220467 (= lt!267457 (apply!1552 (c!115650 (tokens!1153 printableTokens!2)) 0))))

(declare-fun e!382256 () Bool)

(assert (=> d!220467 e!382256))

(declare-fun res!273213 () Bool)

(assert (=> d!220467 (=> (not res!273213) (not e!382256))))

(assert (=> d!220467 (= res!273213 (<= 0 0))))

(assert (=> d!220467 (= (apply!1548 (tokens!1153 printableTokens!2) 0) lt!267457)))

(declare-fun b!629930 () Bool)

(assert (=> b!629930 (= e!382256 (< 0 (size!5114 (tokens!1153 printableTokens!2))))))

(assert (= (and d!220467 res!273213) b!629930))

(assert (=> d!220467 m!898583))

(assert (=> d!220467 m!898583))

(declare-fun m!898655 () Bool)

(assert (=> d!220467 m!898655))

(declare-fun m!898657 () Bool)

(assert (=> d!220467 m!898657))

(assert (=> b!629930 m!898497))

(assert (=> b!629820 d!220467))

(declare-fun d!220469 () Bool)

(declare-fun choose!511 (Token!2392 TokenValue!1368) Bool)

(assert (=> d!220469 (= (isKeywordValue!0 lt!267416 LeftBrace!1368) (choose!511 lt!267416 LeftBrace!1368))))

(declare-fun bs!72934 () Bool)

(assert (= bs!72934 d!220469))

(declare-fun m!898659 () Bool)

(assert (=> bs!72934 m!898659))

(assert (=> b!629820 d!220469))

(declare-fun d!220471 () Bool)

(declare-fun res!273218 () Bool)

(declare-fun e!382259 () Bool)

(assert (=> d!220471 (=> (not res!273218) (not e!382259))))

(declare-fun list!2771 (IArray!4273) List!6541)

(assert (=> d!220471 (= res!273218 (<= (size!5118 (list!2771 (xs!4777 (c!115650 (tokens!1153 printableTokens!2))))) 512))))

(assert (=> d!220471 (= (inv!8425 (c!115650 (tokens!1153 printableTokens!2))) e!382259)))

(declare-fun b!629935 () Bool)

(declare-fun res!273219 () Bool)

(assert (=> b!629935 (=> (not res!273219) (not e!382259))))

(assert (=> b!629935 (= res!273219 (= (csize!4503 (c!115650 (tokens!1153 printableTokens!2))) (size!5118 (list!2771 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))))))))

(declare-fun b!629936 () Bool)

(assert (=> b!629936 (= e!382259 (and (> (csize!4503 (c!115650 (tokens!1153 printableTokens!2))) 0) (<= (csize!4503 (c!115650 (tokens!1153 printableTokens!2))) 512)))))

(assert (= (and d!220471 res!273218) b!629935))

(assert (= (and b!629935 res!273219) b!629936))

(declare-fun m!898661 () Bool)

(assert (=> d!220471 m!898661))

(assert (=> d!220471 m!898661))

(declare-fun m!898663 () Bool)

(assert (=> d!220471 m!898663))

(assert (=> b!629935 m!898661))

(assert (=> b!629935 m!898661))

(assert (=> b!629935 m!898663))

(assert (=> b!629756 d!220471))

(declare-fun d!220473 () Bool)

(assert (=> d!220473 (= (usesJsonRules!0 (h!11930 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))) (= (rules!8126 (h!11930 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))) (rules!109 JsonLexer!125)))))

(declare-fun bs!72935 () Bool)

(assert (= bs!72935 d!220473))

(assert (=> bs!72935 m!898329))

(assert (=> bs!72909 d!220473))

(declare-fun d!220475 () Bool)

(assert (=> d!220475 (= (isKeywordValue!0 lt!267416 RightBrace!1368) (choose!511 lt!267416 RightBrace!1368))))

(declare-fun bs!72936 () Bool)

(assert (= bs!72936 d!220475))

(declare-fun m!898665 () Bool)

(assert (=> bs!72936 m!898665))

(assert (=> b!629821 d!220475))

(declare-fun d!220477 () Bool)

(declare-fun res!273220 () Bool)

(declare-fun e!382260 () Bool)

(assert (=> d!220477 (=> (not res!273220) (not e!382260))))

(assert (=> d!220477 (= res!273220 (rulesValid!491 Lexer!1218 (rules!8126 printableTokens!2)))))

(assert (=> d!220477 (= (rulesInvariant!1155 Lexer!1218 (rules!8126 printableTokens!2)) e!382260)))

(declare-fun b!629937 () Bool)

(assert (=> b!629937 (= e!382260 (noDuplicateTag!491 Lexer!1218 (rules!8126 printableTokens!2) Nil!6536))))

(assert (= (and d!220477 res!273220) b!629937))

(declare-fun m!898667 () Bool)

(assert (=> d!220477 m!898667))

(declare-fun m!898669 () Bool)

(assert (=> b!629937 m!898669))

(assert (=> b!629834 d!220477))

(assert (=> b!629823 d!220429))

(declare-fun d!220479 () Bool)

(declare-fun res!273225 () Bool)

(declare-fun e!382265 () Bool)

(assert (=> d!220479 (=> res!273225 e!382265)))

(assert (=> d!220479 (= res!273225 (is-Nil!6528 lt!267388))))

(assert (=> d!220479 (= (noDuplicateTag!491 Lexer!1218 lt!267388 Nil!6536) e!382265)))

(declare-fun b!629942 () Bool)

(declare-fun e!382266 () Bool)

(assert (=> b!629942 (= e!382265 e!382266)))

(declare-fun res!273226 () Bool)

(assert (=> b!629942 (=> (not res!273226) (not e!382266))))

(declare-fun contains!1508 (List!6550 String!8578) Bool)

(assert (=> b!629942 (= res!273226 (not (contains!1508 Nil!6536 (tag!1596 (h!11929 lt!267388)))))))

(declare-fun b!629943 () Bool)

(assert (=> b!629943 (= e!382266 (noDuplicateTag!491 Lexer!1218 (t!82878 lt!267388) (Cons!6536 (tag!1596 (h!11929 lt!267388)) Nil!6536)))))

(assert (= (and d!220479 (not res!273225)) b!629942))

(assert (= (and b!629942 res!273226) b!629943))

(declare-fun m!898671 () Bool)

(assert (=> b!629942 m!898671))

(declare-fun m!898673 () Bool)

(assert (=> b!629943 m!898673))

(assert (=> b!629747 d!220479))

(declare-fun d!220481 () Bool)

(assert (=> d!220481 (= (isEmpty!4608 (rules!8126 printableTokens!2)) (is-Nil!6528 (rules!8126 printableTokens!2)))))

(assert (=> d!220419 d!220481))

(declare-fun d!220483 () Bool)

(declare-fun e!382269 () Bool)

(assert (=> d!220483 e!382269))

(declare-fun res!273229 () Bool)

(assert (=> d!220483 (=> (not res!273229) (not e!382269))))

(declare-fun isBalanced!568 (Conc!2138) Bool)

(declare-fun append!173 (Conc!2138 Int) Conc!2138)

(assert (=> d!220483 (= res!273229 (isBalanced!568 (append!173 (c!115652 (BalanceConc!4289 Empty!2138)) 0)))))

(declare-fun lt!267460 () BalanceConc!4288)

(assert (=> d!220483 (= lt!267460 (BalanceConc!4289 (append!173 (c!115652 (BalanceConc!4289 Empty!2138)) 0)))))

(assert (=> d!220483 (= (append!170 (BalanceConc!4289 Empty!2138) 0) lt!267460)))

(declare-fun b!629946 () Bool)

(declare-fun $colon+!31 (List!6544 Int) List!6544)

(assert (=> b!629946 (= e!382269 (= (list!2767 lt!267460) ($colon+!31 (list!2767 (BalanceConc!4289 Empty!2138)) 0)))))

(assert (= (and d!220483 res!273229) b!629946))

(declare-fun m!898675 () Bool)

(assert (=> d!220483 m!898675))

(assert (=> d!220483 m!898675))

(declare-fun m!898677 () Bool)

(assert (=> d!220483 m!898677))

(declare-fun m!898679 () Bool)

(assert (=> b!629946 m!898679))

(assert (=> b!629946 m!898503))

(assert (=> b!629946 m!898503))

(declare-fun m!898681 () Bool)

(assert (=> b!629946 m!898681))

(assert (=> b!629822 d!220483))

(declare-fun b!629993 () Bool)

(declare-fun e!382297 () Bool)

(assert (=> b!629993 (= e!382297 true)))

(declare-fun b!629992 () Bool)

(declare-fun e!382296 () Bool)

(assert (=> b!629992 (= e!382296 e!382297)))

(declare-fun b!629991 () Bool)

(declare-fun e!382295 () Bool)

(assert (=> b!629991 (= e!382295 e!382296)))

(declare-fun d!220485 () Bool)

(assert (=> d!220485 e!382295))

(assert (= b!629992 b!629993))

(assert (= b!629991 b!629992))

(assert (= (and d!220485 (is-Cons!6528 (rules!8126 printableTokens!2))) b!629991))

(declare-fun order!5041 () Int)

(declare-fun order!5039 () Int)

(declare-fun lambda!16734 () Int)

(declare-fun dynLambda!3663 (Int Int) Int)

(declare-fun dynLambda!3664 (Int Int) Int)

(assert (=> b!629993 (< (dynLambda!3663 order!5039 (toValue!2275 (transformation!1334 (h!11929 (rules!8126 printableTokens!2))))) (dynLambda!3664 order!5041 lambda!16734))))

(declare-fun order!5043 () Int)

(declare-fun dynLambda!3665 (Int Int) Int)

(assert (=> b!629993 (< (dynLambda!3665 order!5043 (toChars!2134 (transformation!1334 (h!11929 (rules!8126 printableTokens!2))))) (dynLambda!3664 order!5041 lambda!16734))))

(assert (=> d!220485 true))

(declare-fun e!382288 () Bool)

(assert (=> d!220485 e!382288))

(declare-fun res!273257 () Bool)

(assert (=> d!220485 (=> (not res!273257) (not e!382288))))

(declare-fun lt!267472 () Bool)

(declare-fun forall!1618 (List!6541 Int) Bool)

(assert (=> d!220485 (= res!273257 (= lt!267472 (forall!1618 (list!2770 (tokens!1153 printableTokens!2)) lambda!16734)))))

(declare-fun forall!1619 (BalanceConc!4284 Int) Bool)

(assert (=> d!220485 (= lt!267472 (forall!1619 (tokens!1153 printableTokens!2) lambda!16734))))

(assert (=> d!220485 (not (isEmpty!4608 (rules!8126 printableTokens!2)))))

(assert (=> d!220485 (= (rulesProduceEachTokenIndividually!563 Lexer!1218 (rules!8126 printableTokens!2) (tokens!1153 printableTokens!2)) lt!267472)))

(declare-fun b!629982 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!332 (LexerInterface!1220 List!6542 List!6541) Bool)

(assert (=> b!629982 (= e!382288 (= lt!267472 (rulesProduceEachTokenIndividuallyList!332 Lexer!1218 (rules!8126 printableTokens!2) (list!2770 (tokens!1153 printableTokens!2)))))))

(assert (= (and d!220485 res!273257) b!629982))

(assert (=> d!220485 m!898583))

(assert (=> d!220485 m!898583))

(declare-fun m!898745 () Bool)

(assert (=> d!220485 m!898745))

(declare-fun m!898747 () Bool)

(assert (=> d!220485 m!898747))

(assert (=> d!220485 m!898513))

(assert (=> b!629982 m!898583))

(assert (=> b!629982 m!898583))

(declare-fun m!898749 () Bool)

(assert (=> b!629982 m!898749))

(assert (=> b!629835 d!220485))

(declare-fun bs!72951 () Bool)

(declare-fun b!630003 () Bool)

(assert (= bs!72951 (and b!630003 b!629825)))

(declare-fun lambda!16735 () Int)

(assert (=> bs!72951 (= lambda!16735 lambda!16711)))

(declare-fun bs!72952 () Bool)

(assert (= bs!72952 (and b!630003 d!220415)))

(assert (=> bs!72952 (= lambda!16735 lambda!16712)))

(assert (=> b!630003 true))

(declare-fun bs!72953 () Bool)

(declare-fun d!220513 () Bool)

(assert (= bs!72953 (and d!220513 b!629825)))

(declare-fun lambda!16736 () Int)

(assert (=> bs!72953 (= lambda!16736 lambda!16711)))

(declare-fun bs!72954 () Bool)

(assert (= bs!72954 (and d!220513 d!220415)))

(assert (=> bs!72954 (= lambda!16736 lambda!16712)))

(declare-fun bs!72955 () Bool)

(assert (= bs!72955 (and d!220513 b!630003)))

(assert (=> bs!72955 (= lambda!16736 lambda!16735)))

(assert (=> d!220513 true))

(declare-fun b!629996 () Bool)

(declare-fun e!382302 () BalanceConc!4288)

(assert (=> b!629996 (= e!382302 e!382190)))

(declare-fun lt!267474 () BalanceConc!4288)

(assert (=> d!220513 (forall!1612 lt!267474 lambda!16736)))

(declare-fun e!382299 () BalanceConc!4288)

(assert (=> d!220513 (= lt!267474 e!382299)))

(declare-fun c!115700 () Bool)

(assert (=> d!220513 (= c!115700 (>= (+ 0 1) (size!5114 (tokens!1153 printableTokens!2))))))

(declare-fun e!382301 () Bool)

(assert (=> d!220513 e!382301))

(declare-fun res!273259 () Bool)

(assert (=> d!220513 (=> (not res!273259) (not e!382301))))

(assert (=> d!220513 (= res!273259 (>= (+ 0 1) 0))))

(assert (=> d!220513 (= (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 (+ 0 1) e!382190) lt!267474)))

(declare-fun b!629997 () Bool)

(assert (=> b!629997 (= e!382299 e!382190)))

(declare-fun b!629998 () Bool)

(declare-fun e!382300 () BalanceConc!4288)

(assert (=> b!629998 (= e!382299 e!382300)))

(declare-fun lt!267473 () Token!2392)

(assert (=> b!629998 (= lt!267473 (apply!1548 (tokens!1153 printableTokens!2) (+ 0 1)))))

(declare-fun res!273258 () Bool)

(assert (=> b!629998 (= res!273258 (isKeywordValue!0 lt!267473 LeftBrace!1368))))

(declare-fun e!382298 () Bool)

(assert (=> b!629998 (=> res!273258 e!382298)))

(declare-fun c!115699 () Bool)

(assert (=> b!629998 (= c!115699 e!382298)))

(declare-fun b!629999 () Bool)

(assert (=> b!629999 (= e!382298 (isKeywordValue!0 lt!267473 RightBrace!1368))))

(declare-fun b!630000 () Bool)

(assert (=> b!630000 (= e!382302 (append!170 e!382190 (+ 0 1)))))

(declare-fun b!630001 () Bool)

(assert (=> b!630001 (= e!382301 (<= (+ 0 1) (size!5114 (tokens!1153 printableTokens!2))))))

(declare-fun bm!41346 () Bool)

(declare-fun c!115701 () Bool)

(assert (=> bm!41346 (= c!115701 c!115699)))

(declare-fun call!41351 () BalanceConc!4288)

(assert (=> bm!41346 (= call!41351 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 (+ 0 1 1) e!382302))))

(declare-fun b!630002 () Bool)

(assert (=> b!630002 (= e!382300 call!41351)))

(declare-fun lt!267475 () Unit!11566)

(assert (=> b!630003 (= lt!267475 (lemmaConcatPreservesForall!6 (list!2767 e!382190) (Cons!6530 (+ 0 1) Nil!6530) lambda!16735))))

(assert (=> b!630003 (= e!382300 call!41351)))

(assert (= (and d!220513 res!273259) b!630001))

(assert (= (and d!220513 c!115700) b!629997))

(assert (= (and d!220513 (not c!115700)) b!629998))

(assert (= (and b!629998 (not res!273258)) b!629999))

(assert (= (and b!629998 c!115699) b!630003))

(assert (= (and b!629998 (not c!115699)) b!630002))

(assert (= (or b!630003 b!630002) bm!41346))

(assert (= (and bm!41346 c!115701) b!630000))

(assert (= (and bm!41346 (not c!115701)) b!629996))

(declare-fun m!898753 () Bool)

(assert (=> d!220513 m!898753))

(assert (=> d!220513 m!898497))

(declare-fun m!898755 () Bool)

(assert (=> b!630000 m!898755))

(assert (=> b!630001 m!898497))

(declare-fun m!898757 () Bool)

(assert (=> b!629999 m!898757))

(declare-fun m!898759 () Bool)

(assert (=> b!630003 m!898759))

(assert (=> b!630003 m!898759))

(declare-fun m!898761 () Bool)

(assert (=> b!630003 m!898761))

(declare-fun m!898763 () Bool)

(assert (=> bm!41346 m!898763))

(declare-fun m!898765 () Bool)

(assert (=> b!629998 m!898765))

(declare-fun m!898767 () Bool)

(assert (=> b!629998 m!898767))

(assert (=> bm!41338 d!220513))

(declare-fun d!220517 () Bool)

(declare-fun res!273260 () Bool)

(declare-fun e!382303 () Bool)

(assert (=> d!220517 (=> res!273260 e!382303)))

(assert (=> d!220517 (= res!273260 (is-Nil!6529 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))))))

(assert (=> d!220517 (= (forall!1609 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))) lambda!16697) e!382303)))

(declare-fun b!630004 () Bool)

(declare-fun e!382304 () Bool)

(assert (=> b!630004 (= e!382303 e!382304)))

(declare-fun res!273261 () Bool)

(assert (=> b!630004 (=> (not res!273261) (not e!382304))))

(assert (=> b!630004 (= res!273261 (dynLambda!3661 lambda!16697 (h!11930 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))))

(declare-fun b!630005 () Bool)

(assert (=> b!630005 (= e!382304 (forall!1609 (t!82879 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))) lambda!16697))))

(assert (= (and d!220517 (not res!273260)) b!630004))

(assert (= (and b!630004 res!273261) b!630005))

(declare-fun b_lambda!24759 () Bool)

(assert (=> (not b_lambda!24759) (not b!630004)))

(declare-fun m!898769 () Bool)

(assert (=> b!630004 m!898769))

(declare-fun m!898771 () Bool)

(assert (=> b!630005 m!898771))

(assert (=> b!629762 d!220517))

(declare-fun d!220519 () Bool)

(assert (=> d!220519 (= (inv!8415 (tag!1596 (h!11929 (rules!8126 printableTokens!2)))) (= (mod (str.len (value!43170 (tag!1596 (h!11929 (rules!8126 printableTokens!2))))) 2) 0))))

(assert (=> b!629846 d!220519))

(declare-fun d!220521 () Bool)

(declare-fun res!273264 () Bool)

(declare-fun e!382307 () Bool)

(assert (=> d!220521 (=> (not res!273264) (not e!382307))))

(declare-fun semiInverseModEq!539 (Int Int) Bool)

(assert (=> d!220521 (= res!273264 (semiInverseModEq!539 (toChars!2134 (transformation!1334 (h!11929 (rules!8126 printableTokens!2)))) (toValue!2275 (transformation!1334 (h!11929 (rules!8126 printableTokens!2))))))))

(assert (=> d!220521 (= (inv!8426 (transformation!1334 (h!11929 (rules!8126 printableTokens!2)))) e!382307)))

(declare-fun b!630008 () Bool)

(declare-fun equivClasses!518 (Int Int) Bool)

(assert (=> b!630008 (= e!382307 (equivClasses!518 (toChars!2134 (transformation!1334 (h!11929 (rules!8126 printableTokens!2)))) (toValue!2275 (transformation!1334 (h!11929 (rules!8126 printableTokens!2))))))))

(assert (= (and d!220521 res!273264) b!630008))

(declare-fun m!898773 () Bool)

(assert (=> d!220521 m!898773))

(declare-fun m!898775 () Bool)

(assert (=> b!630008 m!898775))

(assert (=> b!629846 d!220521))

(declare-fun d!220523 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!5 (LexerInterface!1220 BalanceConc!4284 Int List!6542) Bool)

(assert (=> d!220523 (= (separableTokens!13 Lexer!1218 (tokens!1153 printableTokens!2) (rules!8126 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!5 Lexer!1218 (tokens!1153 printableTokens!2) 0 (rules!8126 printableTokens!2)))))

(declare-fun bs!72966 () Bool)

(assert (= bs!72966 d!220523))

(declare-fun m!898821 () Bool)

(assert (=> bs!72966 m!898821))

(assert (=> b!629836 d!220523))

(assert (=> d!220385 d!220389))

(declare-fun d!220549 () Bool)

(declare-fun ++!1787 (List!6544 List!6544) List!6544)

(assert (=> d!220549 (forall!1615 (++!1787 (list!2767 (BalanceConc!4289 Empty!2138)) (Cons!6530 0 Nil!6530)) lambda!16711)))

(declare-fun lt!267484 () Unit!11566)

(declare-fun choose!4576 (List!6544 List!6544 Int) Unit!11566)

(assert (=> d!220549 (= lt!267484 (choose!4576 (list!2767 (BalanceConc!4289 Empty!2138)) (Cons!6530 0 Nil!6530) lambda!16711))))

(assert (=> d!220549 (forall!1615 (list!2767 (BalanceConc!4289 Empty!2138)) lambda!16711)))

(assert (=> d!220549 (= (lemmaConcatPreservesForall!6 (list!2767 (BalanceConc!4289 Empty!2138)) (Cons!6530 0 Nil!6530) lambda!16711) lt!267484)))

(declare-fun bs!72967 () Bool)

(assert (= bs!72967 d!220549))

(assert (=> bs!72967 m!898503))

(declare-fun m!898823 () Bool)

(assert (=> bs!72967 m!898823))

(assert (=> bs!72967 m!898823))

(declare-fun m!898825 () Bool)

(assert (=> bs!72967 m!898825))

(assert (=> bs!72967 m!898503))

(declare-fun m!898827 () Bool)

(assert (=> bs!72967 m!898827))

(assert (=> bs!72967 m!898503))

(declare-fun m!898829 () Bool)

(assert (=> bs!72967 m!898829))

(assert (=> b!629825 d!220549))

(declare-fun d!220551 () Bool)

(declare-fun list!2772 (Conc!2138) List!6544)

(assert (=> d!220551 (= (list!2767 (BalanceConc!4289 Empty!2138)) (list!2772 (c!115652 (BalanceConc!4289 Empty!2138))))))

(declare-fun bs!72968 () Bool)

(assert (= bs!72968 d!220551))

(declare-fun m!898831 () Bool)

(assert (=> bs!72968 m!898831))

(assert (=> b!629825 d!220551))

(declare-fun bs!72979 () Bool)

(declare-fun d!220553 () Bool)

(assert (= bs!72979 (and d!220553 d!220485)))

(declare-fun lambda!16756 () Int)

(assert (=> bs!72979 (= lambda!16756 lambda!16734)))

(declare-fun b!630111 () Bool)

(declare-fun e!382394 () Bool)

(assert (=> b!630111 (= e!382394 true)))

(declare-fun b!630110 () Bool)

(declare-fun e!382393 () Bool)

(assert (=> b!630110 (= e!382393 e!382394)))

(assert (=> d!220553 e!382393))

(assert (= b!630110 b!630111))

(assert (= d!220553 b!630110))

(declare-fun b!630090 () Bool)

(declare-fun e!382377 () Bool)

(declare-fun e!382376 () Bool)

(assert (=> b!630090 (= e!382377 e!382376)))

(declare-fun res!273317 () Bool)

(assert (=> b!630090 (=> (not res!273317) (not e!382376))))

(declare-fun lt!267709 () LexerInterface!1220)

(declare-fun lt!267708 () List!6541)

(declare-fun rulesProduceIndividualToken!513 (LexerInterface!1220 List!6542 Token!2392) Bool)

(assert (=> b!630090 (= res!273317 (rulesProduceIndividualToken!513 lt!267709 (rules!8126 printableTokens!2) (h!11928 lt!267708)))))

(declare-fun b!630091 () Bool)

(declare-fun e!382384 () Bool)

(declare-fun e!382388 () Bool)

(assert (=> b!630091 (= e!382384 e!382388)))

(declare-fun res!273321 () Bool)

(assert (=> b!630091 (=> (not res!273321) (not e!382388))))

(declare-fun lt!267653 () LexerInterface!1220)

(declare-fun lt!267706 () List!6541)

(assert (=> b!630091 (= res!273321 (rulesProduceIndividualToken!513 lt!267653 (rules!8126 printableTokens!2) (h!11928 lt!267706)))))

(declare-fun e!382385 () Bool)

(assert (=> d!220553 e!382385))

(declare-fun res!273314 () Bool)

(assert (=> d!220553 (=> (not res!273314) (not e!382385))))

(declare-fun lt!267659 () PrintableTokens!50)

(assert (=> d!220553 (= res!273314 (= (rules!8126 lt!267659) (rules!8126 printableTokens!2)))))

(declare-fun slice!14 (BalanceConc!4284 Int Int) BalanceConc!4284)

(assert (=> d!220553 (= lt!267659 (PrintableTokens!51 (rules!8126 printableTokens!2) (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)))))))

(declare-fun lt!267691 () Unit!11566)

(declare-fun lt!267665 () Unit!11566)

(assert (=> d!220553 (= lt!267691 lt!267665)))

(declare-fun e!382381 () Bool)

(assert (=> d!220553 e!382381))

(declare-fun res!273322 () Bool)

(assert (=> d!220553 (=> (not res!273322) (not e!382381))))

(declare-fun lt!267722 () Int)

(declare-fun lt!267699 () List!6541)

(declare-fun take!3 (List!6541 Int) List!6541)

(assert (=> d!220553 (= res!273322 (= (rulesProduceEachTokenIndividuallyList!332 lt!267653 (rules!8126 printableTokens!2) (take!3 lt!267699 lt!267722)) e!382384))))

(declare-fun res!273325 () Bool)

(assert (=> d!220553 (=> res!273325 e!382384)))

(assert (=> d!220553 (= res!273325 (not (is-Cons!6527 lt!267706)))))

(assert (=> d!220553 (= lt!267706 (take!3 lt!267699 lt!267722))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!1 (LexerInterface!1220 List!6541 Int List!6542) Unit!11566)

(assert (=> d!220553 (= lt!267665 (tokensListTwoByTwoPredicateSeparableTokensTakeList!1 lt!267653 lt!267699 lt!267722 (rules!8126 printableTokens!2)))))

(assert (=> d!220553 (= lt!267722 (- (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)) (ite c!115669 lt!267405 lt!267407)))))

(declare-fun drop!345 (List!6541 Int) List!6541)

(assert (=> d!220553 (= lt!267699 (drop!345 (list!2770 (tokens!1153 printableTokens!2)) (ite c!115669 lt!267405 lt!267407)))))

(assert (=> d!220553 (= lt!267653 Lexer!1218)))

(declare-fun lt!267721 () Unit!11566)

(declare-fun lt!267693 () Unit!11566)

(assert (=> d!220553 (= lt!267721 lt!267693)))

(declare-fun lt!267685 () List!6541)

(assert (=> d!220553 (forall!1618 lt!267685 lambda!16756)))

(declare-fun lt!267716 () List!6541)

(declare-fun lemmaForallSubseq!1 (List!6541 List!6541 Int) Unit!11566)

(assert (=> d!220553 (= lt!267693 (lemmaForallSubseq!1 lt!267685 lt!267716 lambda!16756))))

(assert (=> d!220553 (= lt!267716 (list!2770 (tokens!1153 printableTokens!2)))))

(assert (=> d!220553 (= lt!267685 (drop!345 (list!2770 (tokens!1153 printableTokens!2)) (ite c!115669 lt!267405 lt!267407)))))

(declare-fun lt!267710 () Unit!11566)

(declare-fun lt!267672 () Unit!11566)

(assert (=> d!220553 (= lt!267710 lt!267672)))

(declare-fun lt!267656 () List!6541)

(declare-fun subseq!119 (List!6541 List!6541) Bool)

(assert (=> d!220553 (subseq!119 (drop!345 lt!267656 (ite c!115669 lt!267405 lt!267407)) lt!267656)))

(declare-fun lemmaDropSubseq!1 (List!6541 Int) Unit!11566)

(assert (=> d!220553 (= lt!267672 (lemmaDropSubseq!1 lt!267656 (ite c!115669 lt!267405 lt!267407)))))

(assert (=> d!220553 (= lt!267656 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267715 () Unit!11566)

(declare-fun lt!267719 () Unit!11566)

(assert (=> d!220553 (= lt!267715 lt!267719)))

(declare-fun e!382383 () Bool)

(assert (=> d!220553 e!382383))

(declare-fun res!273313 () Bool)

(assert (=> d!220553 (=> (not res!273313) (not e!382383))))

(declare-fun e!382382 () Bool)

(declare-fun lt!267703 () LexerInterface!1220)

(declare-fun lt!267697 () List!6541)

(assert (=> d!220553 (= res!273313 (= (rulesProduceEachTokenIndividuallyList!332 lt!267703 (rules!8126 printableTokens!2) (drop!345 lt!267697 (ite c!115669 lt!267405 lt!267407))) e!382382))))

(declare-fun res!273323 () Bool)

(assert (=> d!220553 (=> res!273323 e!382382)))

(declare-fun lt!267678 () List!6541)

(assert (=> d!220553 (= res!273323 (not (is-Cons!6527 lt!267678)))))

(assert (=> d!220553 (= lt!267678 (drop!345 lt!267697 (ite c!115669 lt!267405 lt!267407)))))

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!1 (LexerInterface!1220 List!6541 Int List!6542) Unit!11566)

(assert (=> d!220553 (= lt!267719 (tokensListTwoByTwoPredicateSeparableTokensDropList!1 lt!267703 lt!267697 (ite c!115669 lt!267405 lt!267407) (rules!8126 printableTokens!2)))))

(assert (=> d!220553 (= lt!267697 (list!2770 (tokens!1153 printableTokens!2)))))

(assert (=> d!220553 (= lt!267703 Lexer!1218)))

(declare-fun lt!267680 () Unit!11566)

(declare-fun Unit!11570 () Unit!11566)

(assert (=> d!220553 (= lt!267680 Unit!11570)))

(declare-fun e!382387 () Bool)

(assert (=> d!220553 (= (tokensListTwoByTwoPredicateSeparable!5 Lexer!1218 (tokens!1153 printableTokens!2) 0 (rules!8126 printableTokens!2)) e!382387)))

(declare-fun res!273316 () Bool)

(assert (=> d!220553 (=> res!273316 e!382387)))

(declare-fun lt!267655 () Int)

(assert (=> d!220553 (= res!273316 (not (< lt!267655 (- (size!5114 (tokens!1153 printableTokens!2)) 1))))))

(assert (=> d!220553 (= lt!267655 0)))

(declare-fun lt!267676 () LexerInterface!1220)

(assert (=> d!220553 (= lt!267676 Lexer!1218)))

(declare-fun lt!267717 () Unit!11566)

(declare-fun Unit!11571 () Unit!11566)

(assert (=> d!220553 (= lt!267717 Unit!11571)))

(assert (=> d!220553 (= (separableTokens!13 Lexer!1218 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))) (rules!8126 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!5 Lexer!1218 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))) 0 (rules!8126 printableTokens!2)))))

(declare-fun lt!267720 () Unit!11566)

(declare-fun Unit!11572 () Unit!11566)

(assert (=> d!220553 (= lt!267720 Unit!11572)))

(declare-fun e!382386 () Bool)

(assert (=> d!220553 (= (rulesProduceEachTokenIndividuallyList!332 Lexer!1218 (rules!8126 printableTokens!2) (list!2770 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))))) e!382386)))

(declare-fun res!273319 () Bool)

(assert (=> d!220553 (=> res!273319 e!382386)))

(declare-fun lt!267687 () List!6541)

(assert (=> d!220553 (= res!273319 (not (is-Cons!6527 lt!267687)))))

(assert (=> d!220553 (= lt!267687 (list!2770 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)))))))

(declare-fun lt!267713 () LexerInterface!1220)

(assert (=> d!220553 (= lt!267713 Lexer!1218)))

(declare-fun lt!267660 () Unit!11566)

(declare-fun Unit!11573 () Unit!11566)

(assert (=> d!220553 (= lt!267660 Unit!11573)))

(assert (=> d!220553 (= (rulesProduceEachTokenIndividually!563 Lexer!1218 (rules!8126 printableTokens!2) (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)))) (forall!1619 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))) lambda!16756))))

(declare-fun lt!267668 () Unit!11566)

(declare-fun lt!267694 () Unit!11566)

(assert (=> d!220553 (= lt!267668 lt!267694)))

(declare-fun lt!267667 () List!6541)

(assert (=> d!220553 (forall!1618 lt!267667 lambda!16756)))

(declare-fun lt!267677 () List!6541)

(assert (=> d!220553 (= lt!267694 (lemmaForallSubseq!1 lt!267667 lt!267677 lambda!16756))))

(assert (=> d!220553 (= lt!267677 (list!2770 (tokens!1153 printableTokens!2)))))

(assert (=> d!220553 (= lt!267667 (list!2770 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)))))))

(declare-fun lt!267702 () Unit!11566)

(declare-fun lt!267674 () Unit!11566)

(assert (=> d!220553 (= lt!267702 lt!267674)))

(declare-fun lt!267682 () List!6541)

(declare-fun slice!15 (List!6541 Int Int) List!6541)

(assert (=> d!220553 (subseq!119 (slice!15 lt!267682 (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))) lt!267682)))

(declare-fun lemmaSliceSubseq!1 (List!6541 Int Int) Unit!11566)

(assert (=> d!220553 (= lt!267674 (lemmaSliceSubseq!1 lt!267682 (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))))))

(assert (=> d!220553 (= lt!267682 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267705 () Unit!11566)

(declare-fun Unit!11574 () Unit!11566)

(assert (=> d!220553 (= lt!267705 Unit!11574)))

(assert (=> d!220553 (= (rulesProduceEachTokenIndividuallyList!332 Lexer!1218 (rules!8126 printableTokens!2) (list!2770 (tokens!1153 printableTokens!2))) e!382377)))

(declare-fun res!273320 () Bool)

(assert (=> d!220553 (=> res!273320 e!382377)))

(assert (=> d!220553 (= res!273320 (not (is-Cons!6527 lt!267708)))))

(assert (=> d!220553 (= lt!267708 (list!2770 (tokens!1153 printableTokens!2)))))

(assert (=> d!220553 (= lt!267709 Lexer!1218)))

(declare-fun lt!267718 () Unit!11566)

(declare-fun Unit!11575 () Unit!11566)

(assert (=> d!220553 (= lt!267718 Unit!11575)))

(assert (=> d!220553 (= (rulesProduceEachTokenIndividually!563 Lexer!1218 (rules!8126 printableTokens!2) (tokens!1153 printableTokens!2)) (forall!1619 (tokens!1153 printableTokens!2) lambda!16756))))

(declare-fun lt!267700 () Unit!11566)

(declare-fun lemmaInvariant!69 (PrintableTokens!50) Unit!11566)

(assert (=> d!220553 (= lt!267700 (lemmaInvariant!69 printableTokens!2))))

(declare-fun e!382375 () Bool)

(assert (=> d!220553 e!382375))

(declare-fun res!273324 () Bool)

(assert (=> d!220553 (=> (not res!273324) (not e!382375))))

(assert (=> d!220553 (= res!273324 (and (<= 0 (ite c!115669 lt!267405 lt!267407)) (<= (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)))))))

(assert (=> d!220553 (= (slice!12 printableTokens!2 (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))) lt!267659)))

(declare-fun b!630092 () Bool)

(assert (=> b!630092 (= e!382376 (rulesProduceEachTokenIndividuallyList!332 lt!267709 (rules!8126 printableTokens!2) (t!82877 lt!267708)))))

(declare-fun b!630093 () Bool)

(assert (=> b!630093 (= e!382388 (rulesProduceEachTokenIndividuallyList!332 lt!267653 (rules!8126 printableTokens!2) (t!82877 lt!267706)))))

(declare-fun e!382380 () Bool)

(declare-fun b!630094 () Bool)

(assert (=> b!630094 (= e!382380 (rulesProduceEachTokenIndividuallyList!332 lt!267713 (rules!8126 printableTokens!2) (t!82877 lt!267687)))))

(declare-fun b!630095 () Bool)

(declare-fun e!382379 () Bool)

(assert (=> b!630095 (= e!382382 e!382379)))

(declare-fun res!273318 () Bool)

(assert (=> b!630095 (=> (not res!273318) (not e!382379))))

(assert (=> b!630095 (= res!273318 (rulesProduceIndividualToken!513 lt!267703 (rules!8126 printableTokens!2) (h!11928 lt!267678)))))

(declare-fun b!630096 () Bool)

(assert (=> b!630096 (= e!382386 e!382380)))

(declare-fun res!273326 () Bool)

(assert (=> b!630096 (=> (not res!273326) (not e!382380))))

(assert (=> b!630096 (= res!273326 (rulesProduceIndividualToken!513 lt!267713 (rules!8126 printableTokens!2) (h!11928 lt!267687)))))

(declare-fun b!630097 () Bool)

(declare-fun e!382378 () Bool)

(assert (=> b!630097 (= e!382378 (tokensListTwoByTwoPredicateSeparable!5 lt!267676 (tokens!1153 printableTokens!2) (+ lt!267655 1) (rules!8126 printableTokens!2)))))

(declare-fun b!630098 () Bool)

(assert (=> b!630098 (= e!382387 e!382378)))

(declare-fun res!273315 () Bool)

(assert (=> b!630098 (=> (not res!273315) (not e!382378))))

(declare-fun separableTokensPredicate!3 (LexerInterface!1220 Token!2392 Token!2392 List!6542) Bool)

(assert (=> b!630098 (= res!273315 (separableTokensPredicate!3 lt!267676 (apply!1548 (tokens!1153 printableTokens!2) lt!267655) (apply!1548 (tokens!1153 printableTokens!2) (+ lt!267655 1)) (rules!8126 printableTokens!2)))))

(declare-fun lt!267673 () Unit!11566)

(declare-fun Unit!11576 () Unit!11566)

(assert (=> b!630098 (= lt!267673 Unit!11576)))

(declare-fun size!5122 (BalanceConc!4282) Int)

(declare-fun charsOf!903 (Token!2392) BalanceConc!4282)

(assert (=> b!630098 (> (size!5122 (charsOf!903 (apply!1548 (tokens!1153 printableTokens!2) (+ lt!267655 1)))) 0)))

(declare-fun lt!267690 () Unit!11566)

(declare-fun Unit!11577 () Unit!11566)

(assert (=> b!630098 (= lt!267690 Unit!11577)))

(assert (=> b!630098 (rulesProduceIndividualToken!513 lt!267676 (rules!8126 printableTokens!2) (apply!1548 (tokens!1153 printableTokens!2) (+ lt!267655 1)))))

(declare-fun lt!267666 () Unit!11566)

(declare-fun Unit!11578 () Unit!11566)

(assert (=> b!630098 (= lt!267666 Unit!11578)))

(assert (=> b!630098 (rulesProduceIndividualToken!513 lt!267676 (rules!8126 printableTokens!2) (apply!1548 (tokens!1153 printableTokens!2) lt!267655))))

(declare-fun lt!267669 () Unit!11566)

(declare-fun lt!267661 () Unit!11566)

(assert (=> b!630098 (= lt!267669 lt!267661)))

(declare-fun lt!267664 () Token!2392)

(assert (=> b!630098 (rulesProduceIndividualToken!513 lt!267676 (rules!8126 printableTokens!2) lt!267664)))

(declare-fun lt!267692 () List!6541)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!199 (LexerInterface!1220 List!6542 List!6541 Token!2392) Unit!11566)

(assert (=> b!630098 (= lt!267661 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!199 lt!267676 (rules!8126 printableTokens!2) lt!267692 lt!267664))))

(assert (=> b!630098 (= lt!267664 (apply!1548 (tokens!1153 printableTokens!2) (+ lt!267655 1)))))

(assert (=> b!630098 (= lt!267692 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267711 () Unit!11566)

(declare-fun lt!267688 () Unit!11566)

(assert (=> b!630098 (= lt!267711 lt!267688)))

(declare-fun lt!267652 () Token!2392)

(assert (=> b!630098 (rulesProduceIndividualToken!513 lt!267676 (rules!8126 printableTokens!2) lt!267652)))

(declare-fun lt!267686 () List!6541)

(assert (=> b!630098 (= lt!267688 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!199 lt!267676 (rules!8126 printableTokens!2) lt!267686 lt!267652))))

(assert (=> b!630098 (= lt!267652 (apply!1548 (tokens!1153 printableTokens!2) lt!267655))))

(assert (=> b!630098 (= lt!267686 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267701 () Unit!11566)

(declare-fun lt!267651 () Unit!11566)

(assert (=> b!630098 (= lt!267701 lt!267651)))

(declare-fun lt!267707 () List!6541)

(declare-fun lt!267662 () Int)

(declare-fun tail!862 (List!6541) List!6541)

(assert (=> b!630098 (= (tail!862 (drop!345 lt!267707 lt!267662)) (drop!345 lt!267707 (+ lt!267662 1)))))

(declare-fun lemmaDropTail!299 (List!6541 Int) Unit!11566)

(assert (=> b!630098 (= lt!267651 (lemmaDropTail!299 lt!267707 lt!267662))))

(assert (=> b!630098 (= lt!267662 (+ lt!267655 1))))

(assert (=> b!630098 (= lt!267707 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267663 () Unit!11566)

(declare-fun lt!267704 () Unit!11566)

(assert (=> b!630098 (= lt!267663 lt!267704)))

(declare-fun lt!267657 () List!6541)

(assert (=> b!630098 (= (tail!862 (drop!345 lt!267657 lt!267655)) (drop!345 lt!267657 (+ lt!267655 1)))))

(assert (=> b!630098 (= lt!267704 (lemmaDropTail!299 lt!267657 lt!267655))))

(assert (=> b!630098 (= lt!267657 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267671 () Unit!11566)

(declare-fun lt!267679 () Unit!11566)

(assert (=> b!630098 (= lt!267671 lt!267679)))

(declare-fun lt!267658 () List!6541)

(declare-fun lt!267675 () Int)

(declare-fun head!1334 (List!6541) Token!2392)

(assert (=> b!630098 (= (head!1334 (drop!345 lt!267658 lt!267675)) (apply!1551 lt!267658 lt!267675))))

(declare-fun lemmaDropApply!311 (List!6541 Int) Unit!11566)

(assert (=> b!630098 (= lt!267679 (lemmaDropApply!311 lt!267658 lt!267675))))

(assert (=> b!630098 (= lt!267675 (+ lt!267655 1))))

(assert (=> b!630098 (= lt!267658 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun lt!267695 () Unit!11566)

(declare-fun lt!267684 () Unit!11566)

(assert (=> b!630098 (= lt!267695 lt!267684)))

(declare-fun lt!267696 () List!6541)

(assert (=> b!630098 (= (head!1334 (drop!345 lt!267696 lt!267655)) (apply!1551 lt!267696 lt!267655))))

(assert (=> b!630098 (= lt!267684 (lemmaDropApply!311 lt!267696 lt!267655))))

(assert (=> b!630098 (= lt!267696 (list!2770 (tokens!1153 printableTokens!2)))))

(declare-fun b!630099 () Bool)

(assert (=> b!630099 (= e!382375 (<= (ite c!115669 (+ lt!267407 1) (+ lt!267405 1)) (size!5114 (tokens!1153 printableTokens!2))))))

(declare-fun b!630100 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!1 (LexerInterface!1220 List!6541 List!6542) Bool)

(assert (=> b!630100 (= e!382383 (tokensListTwoByTwoPredicateSeparableList!1 lt!267703 (drop!345 lt!267697 (ite c!115669 lt!267405 lt!267407)) (rules!8126 printableTokens!2)))))

(declare-fun lt!267683 () Unit!11566)

(declare-fun lt!267712 () Unit!11566)

(assert (=> b!630100 (= lt!267683 lt!267712)))

(declare-fun lt!267714 () List!6541)

(assert (=> b!630100 (forall!1618 lt!267714 lambda!16756)))

(assert (=> b!630100 (= lt!267712 (lemmaForallSubseq!1 lt!267714 lt!267697 lambda!16756))))

(assert (=> b!630100 (= lt!267714 (drop!345 lt!267697 (ite c!115669 lt!267405 lt!267407)))))

(declare-fun lt!267681 () Unit!11566)

(declare-fun lt!267689 () Unit!11566)

(assert (=> b!630100 (= lt!267681 lt!267689)))

(assert (=> b!630100 (subseq!119 (drop!345 lt!267697 (ite c!115669 lt!267405 lt!267407)) lt!267697)))

(assert (=> b!630100 (= lt!267689 (lemmaDropSubseq!1 lt!267697 (ite c!115669 lt!267405 lt!267407)))))

(declare-fun b!630101 () Bool)

(assert (=> b!630101 (= e!382379 (rulesProduceEachTokenIndividuallyList!332 lt!267703 (rules!8126 printableTokens!2) (t!82877 lt!267678)))))

(declare-fun b!630102 () Bool)

(assert (=> b!630102 (= e!382385 (= (list!2770 (tokens!1153 lt!267659)) (list!2770 (slice!14 (tokens!1153 printableTokens!2) (ite c!115669 lt!267405 lt!267407) (ite c!115669 (+ lt!267407 1) (+ lt!267405 1))))))))

(declare-fun b!630103 () Bool)

(assert (=> b!630103 (= e!382381 (tokensListTwoByTwoPredicateSeparableList!1 lt!267653 (take!3 lt!267699 lt!267722) (rules!8126 printableTokens!2)))))

(declare-fun lt!267670 () Unit!11566)

(declare-fun lt!267654 () Unit!11566)

(assert (=> b!630103 (= lt!267670 lt!267654)))

(declare-fun lt!267698 () List!6541)

(assert (=> b!630103 (forall!1618 lt!267698 lambda!16756)))

(assert (=> b!630103 (= lt!267654 (lemmaForallSubseq!1 lt!267698 lt!267699 lambda!16756))))

(assert (=> b!630103 (= lt!267698 (take!3 lt!267699 lt!267722))))

(assert (= (and d!220553 res!273324) b!630099))

(assert (= (and d!220553 (not res!273320)) b!630090))

(assert (= (and b!630090 res!273317) b!630092))

(assert (= (and d!220553 (not res!273319)) b!630096))

(assert (= (and b!630096 res!273326) b!630094))

(assert (= (and d!220553 (not res!273316)) b!630098))

(assert (= (and b!630098 res!273315) b!630097))

(assert (= (and d!220553 (not res!273323)) b!630095))

(assert (= (and b!630095 res!273318) b!630101))

(assert (= (and d!220553 res!273313) b!630100))

(assert (= (and d!220553 (not res!273325)) b!630091))

(assert (= (and b!630091 res!273321) b!630093))

(assert (= (and d!220553 res!273322) b!630103))

(assert (= (and d!220553 res!273314) b!630102))

(declare-fun m!898925 () Bool)

(assert (=> b!630101 m!898925))

(declare-fun m!898927 () Bool)

(assert (=> b!630096 m!898927))

(declare-fun m!898929 () Bool)

(assert (=> b!630092 m!898929))

(declare-fun m!898931 () Bool)

(assert (=> b!630093 m!898931))

(declare-fun m!898933 () Bool)

(assert (=> b!630094 m!898933))

(declare-fun m!898935 () Bool)

(assert (=> b!630103 m!898935))

(assert (=> b!630103 m!898935))

(declare-fun m!898937 () Bool)

(assert (=> b!630103 m!898937))

(declare-fun m!898939 () Bool)

(assert (=> b!630103 m!898939))

(declare-fun m!898941 () Bool)

(assert (=> b!630103 m!898941))

(declare-fun m!898943 () Bool)

(assert (=> d!220553 m!898943))

(declare-fun m!898945 () Bool)

(assert (=> d!220553 m!898945))

(assert (=> d!220553 m!898583))

(declare-fun m!898947 () Bool)

(assert (=> d!220553 m!898947))

(declare-fun m!898949 () Bool)

(assert (=> d!220553 m!898949))

(assert (=> d!220553 m!898583))

(assert (=> d!220553 m!898749))

(declare-fun m!898951 () Bool)

(assert (=> d!220553 m!898951))

(assert (=> d!220553 m!898583))

(declare-fun m!898953 () Bool)

(assert (=> d!220553 m!898953))

(declare-fun m!898955 () Bool)

(assert (=> d!220553 m!898955))

(declare-fun m!898957 () Bool)

(assert (=> d!220553 m!898957))

(declare-fun m!898959 () Bool)

(assert (=> d!220553 m!898959))

(declare-fun m!898961 () Bool)

(assert (=> d!220553 m!898961))

(declare-fun m!898963 () Bool)

(assert (=> d!220553 m!898963))

(assert (=> d!220553 m!898961))

(declare-fun m!898965 () Bool)

(assert (=> d!220553 m!898965))

(assert (=> d!220553 m!898497))

(declare-fun m!898967 () Bool)

(assert (=> d!220553 m!898967))

(declare-fun m!898969 () Bool)

(assert (=> d!220553 m!898969))

(assert (=> d!220553 m!898961))

(declare-fun m!898971 () Bool)

(assert (=> d!220553 m!898971))

(declare-fun m!898973 () Bool)

(assert (=> d!220553 m!898973))

(declare-fun m!898975 () Bool)

(assert (=> d!220553 m!898975))

(assert (=> d!220553 m!898951))

(declare-fun m!898977 () Bool)

(assert (=> d!220553 m!898977))

(assert (=> d!220553 m!898961))

(declare-fun m!898979 () Bool)

(assert (=> d!220553 m!898979))

(assert (=> d!220553 m!898971))

(declare-fun m!898981 () Bool)

(assert (=> d!220553 m!898981))

(assert (=> d!220553 m!898943))

(assert (=> d!220553 m!898935))

(declare-fun m!898983 () Bool)

(assert (=> d!220553 m!898983))

(assert (=> d!220553 m!898967))

(declare-fun m!898985 () Bool)

(assert (=> d!220553 m!898985))

(assert (=> d!220553 m!898961))

(declare-fun m!898987 () Bool)

(assert (=> d!220553 m!898987))

(assert (=> d!220553 m!898935))

(declare-fun m!898989 () Bool)

(assert (=> d!220553 m!898989))

(assert (=> d!220553 m!898961))

(declare-fun m!898991 () Bool)

(assert (=> d!220553 m!898991))

(assert (=> d!220553 m!898517))

(assert (=> d!220553 m!898821))

(declare-fun m!898993 () Bool)

(assert (=> b!630095 m!898993))

(declare-fun m!898995 () Bool)

(assert (=> b!630090 m!898995))

(declare-fun m!898997 () Bool)

(assert (=> b!630098 m!898997))

(declare-fun m!898999 () Bool)

(assert (=> b!630098 m!898999))

(declare-fun m!899001 () Bool)

(assert (=> b!630098 m!899001))

(declare-fun m!899003 () Bool)

(assert (=> b!630098 m!899003))

(declare-fun m!899005 () Bool)

(assert (=> b!630098 m!899005))

(declare-fun m!899007 () Bool)

(assert (=> b!630098 m!899007))

(declare-fun m!899009 () Bool)

(assert (=> b!630098 m!899009))

(assert (=> b!630098 m!898583))

(declare-fun m!899011 () Bool)

(assert (=> b!630098 m!899011))

(declare-fun m!899013 () Bool)

(assert (=> b!630098 m!899013))

(declare-fun m!899015 () Bool)

(assert (=> b!630098 m!899015))

(assert (=> b!630098 m!899011))

(declare-fun m!899017 () Bool)

(assert (=> b!630098 m!899017))

(declare-fun m!899019 () Bool)

(assert (=> b!630098 m!899019))

(assert (=> b!630098 m!899015))

(declare-fun m!899021 () Bool)

(assert (=> b!630098 m!899021))

(declare-fun m!899023 () Bool)

(assert (=> b!630098 m!899023))

(assert (=> b!630098 m!899011))

(declare-fun m!899025 () Bool)

(assert (=> b!630098 m!899025))

(assert (=> b!630098 m!899007))

(declare-fun m!899027 () Bool)

(assert (=> b!630098 m!899027))

(assert (=> b!630098 m!898997))

(declare-fun m!899029 () Bool)

(assert (=> b!630098 m!899029))

(assert (=> b!630098 m!899011))

(assert (=> b!630098 m!898999))

(declare-fun m!899031 () Bool)

(assert (=> b!630098 m!899031))

(assert (=> b!630098 m!899023))

(declare-fun m!899033 () Bool)

(assert (=> b!630098 m!899033))

(declare-fun m!899035 () Bool)

(assert (=> b!630098 m!899035))

(declare-fun m!899037 () Bool)

(assert (=> b!630098 m!899037))

(declare-fun m!899039 () Bool)

(assert (=> b!630098 m!899039))

(declare-fun m!899041 () Bool)

(assert (=> b!630098 m!899041))

(declare-fun m!899043 () Bool)

(assert (=> b!630098 m!899043))

(assert (=> b!630098 m!899009))

(declare-fun m!899045 () Bool)

(assert (=> b!630098 m!899045))

(assert (=> b!630098 m!899023))

(declare-fun m!899047 () Bool)

(assert (=> b!630098 m!899047))

(declare-fun m!899049 () Bool)

(assert (=> b!630098 m!899049))

(declare-fun m!899051 () Bool)

(assert (=> b!630102 m!899051))

(assert (=> b!630102 m!898961))

(assert (=> b!630102 m!898961))

(assert (=> b!630102 m!898971))

(declare-fun m!899053 () Bool)

(assert (=> b!630100 m!899053))

(declare-fun m!899055 () Bool)

(assert (=> b!630100 m!899055))

(assert (=> b!630100 m!898943))

(declare-fun m!899057 () Bool)

(assert (=> b!630100 m!899057))

(assert (=> b!630100 m!898943))

(declare-fun m!899059 () Bool)

(assert (=> b!630100 m!899059))

(assert (=> b!630100 m!898943))

(declare-fun m!899061 () Bool)

(assert (=> b!630100 m!899061))

(assert (=> b!630099 m!898497))

(declare-fun m!899063 () Bool)

(assert (=> b!630091 m!899063))

(declare-fun m!899065 () Bool)

(assert (=> b!630097 m!899065))

(assert (=> bm!41335 d!220553))

(declare-fun d!220583 () Bool)

(declare-fun c!115714 () Bool)

(assert (=> d!220583 (= c!115714 (is-Node!2136 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun e!382395 () Bool)

(assert (=> d!220583 (= (inv!8420 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) e!382395)))

(declare-fun b!630112 () Bool)

(assert (=> b!630112 (= e!382395 (inv!8424 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun b!630113 () Bool)

(declare-fun e!382396 () Bool)

(assert (=> b!630113 (= e!382395 e!382396)))

(declare-fun res!273327 () Bool)

(assert (=> b!630113 (= res!273327 (not (is-Leaf!3319 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))))))

(assert (=> b!630113 (=> res!273327 e!382396)))

(declare-fun b!630114 () Bool)

(assert (=> b!630114 (= e!382396 (inv!8425 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))))))

(assert (= (and d!220583 c!115714) b!630112))

(assert (= (and d!220583 (not c!115714)) b!630113))

(assert (= (and b!630113 (not res!273327)) b!630114))

(declare-fun m!899067 () Bool)

(assert (=> b!630112 m!899067))

(declare-fun m!899069 () Bool)

(assert (=> b!630114 m!899069))

(assert (=> b!629856 d!220583))

(declare-fun d!220585 () Bool)

(declare-fun c!115715 () Bool)

(assert (=> d!220585 (= c!115715 (is-Node!2136 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun e!382397 () Bool)

(assert (=> d!220585 (= (inv!8420 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))) e!382397)))

(declare-fun b!630115 () Bool)

(assert (=> b!630115 (= e!382397 (inv!8424 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun b!630116 () Bool)

(declare-fun e!382398 () Bool)

(assert (=> b!630116 (= e!382397 e!382398)))

(declare-fun res!273328 () Bool)

(assert (=> b!630116 (= res!273328 (not (is-Leaf!3319 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))))))

(assert (=> b!630116 (=> res!273328 e!382398)))

(declare-fun b!630117 () Bool)

(assert (=> b!630117 (= e!382398 (inv!8425 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))

(assert (= (and d!220585 c!115715) b!630115))

(assert (= (and d!220585 (not c!115715)) b!630116))

(assert (= (and b!630116 (not res!273328)) b!630117))

(declare-fun m!899071 () Bool)

(assert (=> b!630115 m!899071))

(declare-fun m!899073 () Bool)

(assert (=> b!630117 m!899073))

(assert (=> b!629856 d!220585))

(declare-fun d!220587 () Bool)

(declare-fun lt!267725 () Int)

(declare-fun apply!1553 (List!6544 Int) Int)

(assert (=> d!220587 (= lt!267725 (apply!1553 (list!2767 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) 1))))

(declare-fun apply!1554 (Conc!2138 Int) Int)

(assert (=> d!220587 (= lt!267725 (apply!1554 (c!115652 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) 1))))

(declare-fun e!382401 () Bool)

(assert (=> d!220587 e!382401))

(declare-fun res!273331 () Bool)

(assert (=> d!220587 (=> (not res!273331) (not e!382401))))

(assert (=> d!220587 (= res!273331 (<= 0 1))))

(assert (=> d!220587 (= (apply!1547 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) 1) lt!267725)))

(declare-fun b!630120 () Bool)

(assert (=> b!630120 (= e!382401 (< 1 (size!5113 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))

(assert (= (and d!220587 res!273331) b!630120))

(assert (=> d!220587 m!898333))

(assert (=> d!220587 m!898649))

(assert (=> d!220587 m!898649))

(declare-fun m!899075 () Bool)

(assert (=> d!220587 m!899075))

(declare-fun m!899077 () Bool)

(assert (=> d!220587 m!899077))

(assert (=> b!630120 m!898333))

(assert (=> b!630120 m!898477))

(assert (=> b!629798 d!220587))

(declare-fun bs!72980 () Bool)

(declare-fun b!630121 () Bool)

(assert (= bs!72980 (and b!630121 b!629725)))

(declare-fun lambda!16757 () Int)

(assert (=> bs!72980 (= lambda!16757 lambda!16697)))

(declare-fun bs!72981 () Bool)

(assert (= bs!72981 (and b!630121 b!629798)))

(assert (=> bs!72981 (= lambda!16757 lambda!16705)))

(declare-fun bs!72982 () Bool)

(assert (= bs!72982 (and b!630121 d!220399)))

(assert (=> bs!72982 (= lambda!16757 lambda!16706)))

(declare-fun bs!72983 () Bool)

(declare-fun d!220589 () Bool)

(assert (= bs!72983 (and d!220589 b!629725)))

(declare-fun lambda!16758 () Int)

(assert (=> bs!72983 (= lambda!16758 lambda!16697)))

(declare-fun bs!72984 () Bool)

(assert (= bs!72984 (and d!220589 b!629798)))

(assert (=> bs!72984 (= lambda!16758 lambda!16705)))

(declare-fun bs!72985 () Bool)

(assert (= bs!72985 (and d!220589 d!220399)))

(assert (=> bs!72985 (= lambda!16758 lambda!16706)))

(declare-fun bs!72986 () Bool)

(assert (= bs!72986 (and d!220589 b!630121)))

(assert (=> bs!72986 (= lambda!16758 lambda!16757)))

(declare-fun c!115717 () Bool)

(declare-fun lt!267728 () Int)

(declare-fun bm!41348 () Bool)

(declare-fun lt!267726 () Int)

(declare-fun call!41353 () PrintableTokens!50)

(assert (=> bm!41348 (= call!41353 (slice!12 printableTokens!2 (ite c!115717 lt!267726 lt!267728) (ite c!115717 (+ lt!267728 1) (+ lt!267726 1))))))

(declare-fun lt!267729 () BalanceConc!4286)

(assert (=> d!220589 (forall!1611 lt!267729 lambda!16758)))

(declare-fun e!382403 () BalanceConc!4286)

(assert (=> d!220589 (= lt!267729 e!382403)))

(declare-fun c!115716 () Bool)

(assert (=> d!220589 (= c!115716 (>= (size!5113 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))))) 2))))

(assert (=> d!220589 (= (size!5107 printableTokens!2) lt!267387)))

(assert (=> d!220589 (= (slicesMulti!0 printableTokens!2 lt!267387 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))) (append!169 (BalanceConc!4287 Empty!2137) lt!267406)) lt!267729)))

(declare-fun lt!267727 () PrintableTokens!50)

(assert (=> b!630121 (= e!382403 (slicesMulti!0 printableTokens!2 lt!267387 (tail!860 (tail!860 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))) (append!169 (append!169 (BalanceConc!4287 Empty!2137) lt!267406) lt!267727)))))

(assert (=> b!630121 (= lt!267726 (apply!1547 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))) 0))))

(assert (=> b!630121 (= lt!267728 (apply!1547 (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))) 1))))

(assert (=> b!630121 (= c!115717 (<= lt!267726 lt!267728))))

(declare-fun e!382402 () PrintableTokens!50)

(assert (=> b!630121 (= lt!267727 e!382402)))

(declare-fun lt!267730 () Unit!11566)

(assert (=> b!630121 (= lt!267730 (lemmaConcatPreservesForall!5 (list!2764 (append!169 (BalanceConc!4287 Empty!2137) lt!267406)) (Cons!6529 lt!267727 Nil!6529) lambda!16757))))

(declare-fun b!630122 () Bool)

(assert (=> b!630122 (= e!382403 (append!169 (BalanceConc!4287 Empty!2137) lt!267406))))

(declare-fun b!630123 () Bool)

(assert (=> b!630123 (= e!382402 call!41353)))

(declare-fun b!630124 () Bool)

(assert (=> b!630124 (= e!382402 call!41353)))

(assert (= (and d!220589 c!115716) b!630121))

(assert (= (and d!220589 (not c!115716)) b!630122))

(assert (= (and b!630121 c!115717) b!630123))

(assert (= (and b!630121 (not c!115717)) b!630124))

(assert (= (or b!630123 b!630124) bm!41348))

(declare-fun m!899079 () Bool)

(assert (=> bm!41348 m!899079))

(declare-fun m!899081 () Bool)

(assert (=> d!220589 m!899081))

(assert (=> d!220589 m!898479))

(declare-fun m!899083 () Bool)

(assert (=> d!220589 m!899083))

(assert (=> d!220589 m!898341))

(declare-fun m!899085 () Bool)

(assert (=> b!630121 m!899085))

(declare-fun m!899087 () Bool)

(assert (=> b!630121 m!899087))

(declare-fun m!899089 () Bool)

(assert (=> b!630121 m!899089))

(assert (=> b!630121 m!898479))

(declare-fun m!899091 () Bool)

(assert (=> b!630121 m!899091))

(declare-fun m!899093 () Bool)

(assert (=> b!630121 m!899093))

(declare-fun m!899095 () Bool)

(assert (=> b!630121 m!899095))

(assert (=> b!630121 m!898481))

(assert (=> b!630121 m!899093))

(assert (=> b!630121 m!898479))

(declare-fun m!899097 () Bool)

(assert (=> b!630121 m!899097))

(assert (=> b!630121 m!898481))

(assert (=> b!630121 m!899087))

(assert (=> b!630121 m!898479))

(declare-fun m!899099 () Bool)

(assert (=> b!630121 m!899099))

(assert (=> b!630121 m!899099))

(assert (=> b!630121 m!899085))

(assert (=> b!629798 d!220589))

(declare-fun d!220591 () Bool)

(declare-fun e!382406 () Bool)

(assert (=> d!220591 e!382406))

(declare-fun res!273334 () Bool)

(assert (=> d!220591 (=> (not res!273334) (not e!382406))))

(declare-fun tail!863 (Conc!2138) Conc!2138)

(assert (=> d!220591 (= res!273334 (isBalanced!568 (tail!863 (c!115652 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))))))))

(declare-fun lt!267733 () BalanceConc!4288)

(assert (=> d!220591 (= lt!267733 (BalanceConc!4289 (tail!863 (c!115652 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))))))))

(declare-fun isEmpty!4611 (BalanceConc!4288) Bool)

(assert (=> d!220591 (not (isEmpty!4611 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))))))

(assert (=> d!220591 (= (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) lt!267733)))

(declare-fun b!630127 () Bool)

(declare-fun tail!864 (List!6544) List!6544)

(assert (=> b!630127 (= e!382406 (= (list!2767 lt!267733) (tail!864 (list!2767 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))))))))

(assert (= (and d!220591 res!273334) b!630127))

(declare-fun m!899101 () Bool)

(assert (=> d!220591 m!899101))

(assert (=> d!220591 m!899101))

(declare-fun m!899103 () Bool)

(assert (=> d!220591 m!899103))

(assert (=> d!220591 m!898333))

(declare-fun m!899105 () Bool)

(assert (=> d!220591 m!899105))

(declare-fun m!899107 () Bool)

(assert (=> b!630127 m!899107))

(assert (=> b!630127 m!898333))

(assert (=> b!630127 m!898649))

(assert (=> b!630127 m!898649))

(declare-fun m!899109 () Bool)

(assert (=> b!630127 m!899109))

(assert (=> b!629798 d!220591))

(declare-fun d!220593 () Bool)

(assert (=> d!220593 (= (list!2764 (BalanceConc!4287 Empty!2137)) (list!2766 (c!115651 (BalanceConc!4287 Empty!2137))))))

(declare-fun bs!72987 () Bool)

(assert (= bs!72987 d!220593))

(declare-fun m!899111 () Bool)

(assert (=> bs!72987 m!899111))

(assert (=> b!629798 d!220593))

(declare-fun d!220595 () Bool)

(declare-fun e!382409 () Bool)

(assert (=> d!220595 e!382409))

(declare-fun res!273337 () Bool)

(assert (=> d!220595 (=> (not res!273337) (not e!382409))))

(declare-fun isBalanced!570 (Conc!2137) Bool)

(declare-fun append!175 (Conc!2137 PrintableTokens!50) Conc!2137)

(assert (=> d!220595 (= res!273337 (isBalanced!570 (append!175 (c!115651 (BalanceConc!4287 Empty!2137)) lt!267406)))))

(declare-fun lt!267736 () BalanceConc!4286)

(assert (=> d!220595 (= lt!267736 (BalanceConc!4287 (append!175 (c!115651 (BalanceConc!4287 Empty!2137)) lt!267406)))))

(assert (=> d!220595 (= (append!169 (BalanceConc!4287 Empty!2137) lt!267406) lt!267736)))

(declare-fun b!630130 () Bool)

(declare-fun $colon+!33 (List!6543 PrintableTokens!50) List!6543)

(assert (=> b!630130 (= e!382409 (= (list!2764 lt!267736) ($colon+!33 (list!2764 (BalanceConc!4287 Empty!2137)) lt!267406)))))

(assert (= (and d!220595 res!273337) b!630130))

(declare-fun m!899113 () Bool)

(assert (=> d!220595 m!899113))

(assert (=> d!220595 m!899113))

(declare-fun m!899115 () Bool)

(assert (=> d!220595 m!899115))

(declare-fun m!899117 () Bool)

(assert (=> b!630130 m!899117))

(assert (=> b!630130 m!898487))

(assert (=> b!630130 m!898487))

(declare-fun m!899119 () Bool)

(assert (=> b!630130 m!899119))

(assert (=> b!629798 d!220595))

(declare-fun d!220597 () Bool)

(declare-fun ++!1788 (List!6543 List!6543) List!6543)

(assert (=> d!220597 (forall!1609 (++!1788 (list!2764 (BalanceConc!4287 Empty!2137)) (Cons!6529 lt!267406 Nil!6529)) lambda!16705)))

(declare-fun lt!267739 () Unit!11566)

(declare-fun choose!4577 (List!6543 List!6543 Int) Unit!11566)

(assert (=> d!220597 (= lt!267739 (choose!4577 (list!2764 (BalanceConc!4287 Empty!2137)) (Cons!6529 lt!267406 Nil!6529) lambda!16705))))

(assert (=> d!220597 (forall!1609 (list!2764 (BalanceConc!4287 Empty!2137)) lambda!16705)))

(assert (=> d!220597 (= (lemmaConcatPreservesForall!5 (list!2764 (BalanceConc!4287 Empty!2137)) (Cons!6529 lt!267406 Nil!6529) lambda!16705) lt!267739)))

(declare-fun bs!72988 () Bool)

(assert (= bs!72988 d!220597))

(assert (=> bs!72988 m!898487))

(declare-fun m!899121 () Bool)

(assert (=> bs!72988 m!899121))

(assert (=> bs!72988 m!899121))

(declare-fun m!899123 () Bool)

(assert (=> bs!72988 m!899123))

(assert (=> bs!72988 m!898487))

(declare-fun m!899125 () Bool)

(assert (=> bs!72988 m!899125))

(assert (=> bs!72988 m!898487))

(declare-fun m!899127 () Bool)

(assert (=> bs!72988 m!899127))

(assert (=> b!629798 d!220597))

(declare-fun d!220599 () Bool)

(declare-fun lt!267740 () Int)

(assert (=> d!220599 (= lt!267740 (apply!1553 (list!2767 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) 0))))

(assert (=> d!220599 (= lt!267740 (apply!1554 (c!115652 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138))) 0))))

(declare-fun e!382410 () Bool)

(assert (=> d!220599 e!382410))

(declare-fun res!273338 () Bool)

(assert (=> d!220599 (=> (not res!273338) (not e!382410))))

(assert (=> d!220599 (= res!273338 (<= 0 0))))

(assert (=> d!220599 (= (apply!1547 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) 0) lt!267740)))

(declare-fun b!630131 () Bool)

(assert (=> b!630131 (= e!382410 (< 0 (size!5113 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))

(assert (= (and d!220599 res!273338) b!630131))

(assert (=> d!220599 m!898333))

(assert (=> d!220599 m!898649))

(assert (=> d!220599 m!898649))

(declare-fun m!899129 () Bool)

(assert (=> d!220599 m!899129))

(declare-fun m!899131 () Bool)

(assert (=> d!220599 m!899131))

(assert (=> b!630131 m!898333))

(assert (=> b!630131 m!898477))

(assert (=> b!629798 d!220599))

(declare-fun d!220601 () Bool)

(declare-fun e!382411 () Bool)

(assert (=> d!220601 e!382411))

(declare-fun res!273339 () Bool)

(assert (=> d!220601 (=> (not res!273339) (not e!382411))))

(assert (=> d!220601 (= res!273339 (isBalanced!568 (tail!863 (c!115652 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))))

(declare-fun lt!267741 () BalanceConc!4288)

(assert (=> d!220601 (= lt!267741 (BalanceConc!4289 (tail!863 (c!115652 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))))

(assert (=> d!220601 (not (isEmpty!4611 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))

(assert (=> d!220601 (= (tail!860 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))) lt!267741)))

(declare-fun b!630132 () Bool)

(assert (=> b!630132 (= e!382411 (= (list!2767 lt!267741) (tail!864 (list!2767 (tail!860 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)))))))))

(assert (= (and d!220601 res!273339) b!630132))

(declare-fun m!899133 () Bool)

(assert (=> d!220601 m!899133))

(assert (=> d!220601 m!899133))

(declare-fun m!899135 () Bool)

(assert (=> d!220601 m!899135))

(assert (=> d!220601 m!898493))

(declare-fun m!899137 () Bool)

(assert (=> d!220601 m!899137))

(declare-fun m!899139 () Bool)

(assert (=> b!630132 m!899139))

(assert (=> b!630132 m!898493))

(declare-fun m!899141 () Bool)

(assert (=> b!630132 m!899141))

(assert (=> b!630132 m!899141))

(declare-fun m!899143 () Bool)

(assert (=> b!630132 m!899143))

(assert (=> b!629798 d!220601))

(declare-fun d!220603 () Bool)

(assert (=> d!220603 (= (inv!8427 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))) (<= (size!5118 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2))))) 2147483647))))

(declare-fun bs!72989 () Bool)

(assert (= bs!72989 d!220603))

(declare-fun m!899145 () Bool)

(assert (=> bs!72989 m!899145))

(assert (=> b!629857 d!220603))

(declare-fun b!630145 () Bool)

(declare-fun res!273354 () Bool)

(declare-fun e!382416 () Bool)

(assert (=> b!630145 (=> (not res!273354) (not e!382416))))

(assert (=> b!630145 (= res!273354 (isBalanced!566 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun b!630146 () Bool)

(declare-fun res!273356 () Bool)

(assert (=> b!630146 (=> (not res!273356) (not e!382416))))

(declare-fun isEmpty!4612 (Conc!2136) Bool)

(assert (=> b!630146 (= res!273356 (not (isEmpty!4612 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))))))

(declare-fun d!220605 () Bool)

(declare-fun res!273357 () Bool)

(declare-fun e!382417 () Bool)

(assert (=> d!220605 (=> res!273357 e!382417)))

(assert (=> d!220605 (= res!273357 (not (is-Node!2136 (c!115650 (tokens!1153 printableTokens!2)))))))

(assert (=> d!220605 (= (isBalanced!566 (c!115650 (tokens!1153 printableTokens!2))) e!382417)))

(declare-fun b!630147 () Bool)

(declare-fun res!273355 () Bool)

(assert (=> b!630147 (=> (not res!273355) (not e!382416))))

(assert (=> b!630147 (= res!273355 (<= (- (height!267 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) (height!267 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) 1))))

(declare-fun b!630148 () Bool)

(assert (=> b!630148 (= e!382416 (not (isEmpty!4612 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))))))

(declare-fun b!630149 () Bool)

(declare-fun res!273352 () Bool)

(assert (=> b!630149 (=> (not res!273352) (not e!382416))))

(assert (=> b!630149 (= res!273352 (isBalanced!566 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))

(declare-fun b!630150 () Bool)

(assert (=> b!630150 (= e!382417 e!382416)))

(declare-fun res!273353 () Bool)

(assert (=> b!630150 (=> (not res!273353) (not e!382416))))

(assert (=> b!630150 (= res!273353 (<= (- 1) (- (height!267 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) (height!267 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))))))))

(assert (= (and d!220605 (not res!273357)) b!630150))

(assert (= (and b!630150 res!273353) b!630147))

(assert (= (and b!630147 res!273355) b!630145))

(assert (= (and b!630145 res!273354) b!630149))

(assert (= (and b!630149 res!273352) b!630146))

(assert (= (and b!630146 res!273356) b!630148))

(declare-fun m!899147 () Bool)

(assert (=> b!630149 m!899147))

(assert (=> b!630147 m!898593))

(assert (=> b!630147 m!898595))

(assert (=> b!630150 m!898593))

(assert (=> b!630150 m!898595))

(declare-fun m!899149 () Bool)

(assert (=> b!630148 m!899149))

(declare-fun m!899151 () Bool)

(assert (=> b!630146 m!899151))

(declare-fun m!899153 () Bool)

(assert (=> b!630145 m!899153))

(assert (=> d!220391 d!220605))

(declare-fun d!220607 () Bool)

(assert (=> d!220607 true))

(declare-fun lt!267744 () Bool)

(declare-fun rulesValidInductive!502 (LexerInterface!1220 List!6542) Bool)

(assert (=> d!220607 (= lt!267744 (rulesValidInductive!502 Lexer!1218 lt!267388))))

(declare-fun lambda!16761 () Int)

(declare-fun forall!1623 (List!6542 Int) Bool)

(assert (=> d!220607 (= lt!267744 (forall!1623 lt!267388 lambda!16761))))

(assert (=> d!220607 (= (rulesValid!491 Lexer!1218 lt!267388) lt!267744)))

(declare-fun bs!72990 () Bool)

(assert (= bs!72990 d!220607))

(declare-fun m!899155 () Bool)

(assert (=> bs!72990 m!899155))

(declare-fun m!899157 () Bool)

(assert (=> bs!72990 m!899157))

(assert (=> d!220383 d!220607))

(declare-fun b!630163 () Bool)

(declare-fun e!382423 () List!6543)

(declare-fun list!2774 (IArray!4275) List!6543)

(assert (=> b!630163 (= e!382423 (list!2774 (xs!4778 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))))))

(declare-fun d!220609 () Bool)

(declare-fun c!115724 () Bool)

(assert (=> d!220609 (= c!115724 (is-Empty!2137 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))

(declare-fun e!382422 () List!6543)

(assert (=> d!220609 (= (list!2766 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))) e!382422)))

(declare-fun b!630162 () Bool)

(assert (=> b!630162 (= e!382422 e!382423)))

(declare-fun c!115725 () Bool)

(assert (=> b!630162 (= c!115725 (is-Leaf!3320 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))

(declare-fun b!630164 () Bool)

(assert (=> b!630164 (= e!382423 (++!1788 (list!2766 (left!5229 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137))))) (list!2766 (right!5559 (c!115651 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))))

(declare-fun b!630161 () Bool)

(assert (=> b!630161 (= e!382422 Nil!6529)))

(assert (= (and d!220609 c!115724) b!630161))

(assert (= (and d!220609 (not c!115724)) b!630162))

(assert (= (and b!630162 c!115725) b!630163))

(assert (= (and b!630162 (not c!115725)) b!630164))

(declare-fun m!899159 () Bool)

(assert (=> b!630163 m!899159))

(declare-fun m!899161 () Bool)

(assert (=> b!630164 m!899161))

(declare-fun m!899163 () Bool)

(assert (=> b!630164 m!899163))

(assert (=> b!630164 m!899161))

(assert (=> b!630164 m!899163))

(declare-fun m!899165 () Bool)

(assert (=> b!630164 m!899165))

(assert (=> d!220397 d!220609))

(declare-fun tp!196527 () Bool)

(declare-fun b!630165 () Bool)

(declare-fun e!382424 () Bool)

(declare-fun tp!196528 () Bool)

(assert (=> b!630165 (= e!382424 (and (inv!8420 (left!5228 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))) tp!196528 (inv!8420 (right!5558 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))) tp!196527))))

(declare-fun b!630167 () Bool)

(declare-fun e!382425 () Bool)

(declare-fun tp!196526 () Bool)

(assert (=> b!630167 (= e!382425 tp!196526)))

(declare-fun b!630166 () Bool)

(assert (=> b!630166 (= e!382424 (and (inv!8427 (xs!4777 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))) e!382425))))

(assert (=> b!629856 (= tp!196507 (and (inv!8420 (left!5228 (c!115650 (tokens!1153 printableTokens!2)))) e!382424))))

(assert (= (and b!629856 (is-Node!2136 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))) b!630165))

(assert (= b!630166 b!630167))

(assert (= (and b!629856 (is-Leaf!3319 (left!5228 (c!115650 (tokens!1153 printableTokens!2))))) b!630166))

(declare-fun m!899167 () Bool)

(assert (=> b!630165 m!899167))

(declare-fun m!899169 () Bool)

(assert (=> b!630165 m!899169))

(declare-fun m!899171 () Bool)

(assert (=> b!630166 m!899171))

(assert (=> b!629856 m!898525))

(declare-fun tp!196530 () Bool)

(declare-fun tp!196531 () Bool)

(declare-fun e!382426 () Bool)

(declare-fun b!630168 () Bool)

(assert (=> b!630168 (= e!382426 (and (inv!8420 (left!5228 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) tp!196531 (inv!8420 (right!5558 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) tp!196530))))

(declare-fun b!630170 () Bool)

(declare-fun e!382427 () Bool)

(declare-fun tp!196529 () Bool)

(assert (=> b!630170 (= e!382427 tp!196529)))

(declare-fun b!630169 () Bool)

(assert (=> b!630169 (= e!382426 (and (inv!8427 (xs!4777 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) e!382427))))

(assert (=> b!629856 (= tp!196506 (and (inv!8420 (right!5558 (c!115650 (tokens!1153 printableTokens!2)))) e!382426))))

(assert (= (and b!629856 (is-Node!2136 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) b!630168))

(assert (= b!630169 b!630170))

(assert (= (and b!629856 (is-Leaf!3319 (right!5558 (c!115650 (tokens!1153 printableTokens!2))))) b!630169))

(declare-fun m!899173 () Bool)

(assert (=> b!630168 m!899173))

(declare-fun m!899175 () Bool)

(assert (=> b!630168 m!899175))

(declare-fun m!899177 () Bool)

(assert (=> b!630169 m!899177))

(assert (=> b!629856 m!898527))

(declare-fun b!630184 () Bool)

(declare-fun b_free!18421 () Bool)

(declare-fun b_next!18437 () Bool)

(assert (=> b!630184 (= b_free!18421 (not b_next!18437))))

(declare-fun tp!196539 () Bool)

(declare-fun b_and!62215 () Bool)

(assert (=> b!630184 (= tp!196539 b_and!62215)))

(declare-fun b_free!18423 () Bool)

(declare-fun b_next!18439 () Bool)

(assert (=> b!630184 (= b_free!18423 (not b_next!18439))))

(declare-fun tp!196538 () Bool)

(declare-fun b_and!62217 () Bool)

(assert (=> b!630184 (= tp!196538 b_and!62217)))

(declare-fun e!382443 () Bool)

(assert (=> b!629858 (= tp!196505 e!382443)))

(declare-fun e!382442 () Bool)

(assert (=> b!630184 (= e!382442 (and tp!196539 tp!196538))))

(declare-fun b!630183 () Bool)

(declare-fun e!382444 () Bool)

(assert (=> b!630183 (= e!382444 (and (inv!8415 (tag!1596 (rule!2130 (h!11928 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))))))) (inv!8426 (transformation!1334 (rule!2130 (h!11928 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))))))) e!382442))))

(declare-fun b!630182 () Bool)

(declare-fun e!382441 () Bool)

(declare-fun inv!21 (TokenValue!1368) Bool)

(assert (=> b!630182 (= e!382441 (and (inv!21 (value!43171 (h!11928 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2))))))) e!382444))))

(declare-fun b!630181 () Bool)

(declare-fun tp!196540 () Bool)

(declare-fun inv!8432 (Token!2392) Bool)

(assert (=> b!630181 (= e!382443 (and (inv!8432 (h!11928 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))))) e!382441 tp!196540))))

(assert (= b!630183 b!630184))

(assert (= b!630182 b!630183))

(assert (= b!630181 b!630182))

(assert (= (and b!629858 (is-Cons!6527 (innerList!2194 (xs!4777 (c!115650 (tokens!1153 printableTokens!2)))))) b!630181))

(declare-fun m!899179 () Bool)

(assert (=> b!630183 m!899179))

(declare-fun m!899181 () Bool)

(assert (=> b!630183 m!899181))

(declare-fun m!899183 () Bool)

(assert (=> b!630182 m!899183))

(declare-fun m!899185 () Bool)

(assert (=> b!630181 m!899185))

(declare-fun b!630187 () Bool)

(declare-fun b_free!18425 () Bool)

(declare-fun b_next!18441 () Bool)

(assert (=> b!630187 (= b_free!18425 (not b_next!18441))))

(declare-fun tp!196543 () Bool)

(declare-fun b_and!62219 () Bool)

(assert (=> b!630187 (= tp!196543 b_and!62219)))

(declare-fun b_free!18427 () Bool)

(declare-fun b_next!18443 () Bool)

(assert (=> b!630187 (= b_free!18427 (not b_next!18443))))

(declare-fun tp!196541 () Bool)

(declare-fun b_and!62221 () Bool)

(assert (=> b!630187 (= tp!196541 b_and!62221)))

(declare-fun e!382446 () Bool)

(assert (=> b!630187 (= e!382446 (and tp!196543 tp!196541))))

(declare-fun b!630186 () Bool)

(declare-fun e!382447 () Bool)

(assert (=> b!630186 (= e!382447 (and (inv!8415 (tag!1596 (h!11929 (t!82878 (rules!8126 printableTokens!2))))) (inv!8426 (transformation!1334 (h!11929 (t!82878 (rules!8126 printableTokens!2))))) e!382446))))

(declare-fun b!630185 () Bool)

(declare-fun e!382448 () Bool)

(declare-fun tp!196542 () Bool)

(assert (=> b!630185 (= e!382448 (and e!382447 tp!196542))))

(assert (=> b!629845 (= tp!196497 e!382448)))

(assert (= b!630186 b!630187))

(assert (= b!630185 b!630186))

(assert (= (and b!629845 (is-Cons!6528 (t!82878 (rules!8126 printableTokens!2)))) b!630185))

(declare-fun m!899187 () Bool)

(assert (=> b!630186 m!899187))

(declare-fun m!899189 () Bool)

(assert (=> b!630186 m!899189))

(declare-fun b_lambda!24761 () Bool)

(assert (= b_lambda!24759 (or b!629725 b_lambda!24761)))

(declare-fun bs!72991 () Bool)

(declare-fun d!220611 () Bool)

(assert (= bs!72991 (and d!220611 b!629725)))

(assert (=> bs!72991 (= (dynLambda!3661 lambda!16697 (h!11930 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))) (usesJsonRules!0 (h!11930 (t!82879 (list!2764 (slicesMulti!0 printableTokens!2 lt!267387 (indicesOfOpenBraces!0 (tokens!1153 printableTokens!2) lt!267387 0 (BalanceConc!4289 Empty!2138)) (BalanceConc!4287 Empty!2137)))))))))

(declare-fun m!899191 () Bool)

(assert (=> bs!72991 m!899191))

(assert (=> b!630004 d!220611))

(push 1)

(assert (not b!630111))

(assert (not b!629926))

(assert (not b_next!18439))

(assert (not b!630117))

(assert (not b_lambda!24753))

(assert (not d!220607))

(assert (not d!220449))

(assert (not b!630102))

(assert (not b_next!18431))

(assert (not bs!72991))

(assert (not b!629999))

(assert (not b!630166))

(assert (not b!630094))

(assert (not d!220603))

(assert (not b!630185))

(assert (not d!220443))

(assert (not d!220467))

(assert (not b!630115))

(assert (not b!629856))

(assert (not b!630103))

(assert (not b!630182))

(assert (not d!220589))

(assert (not b!629930))

(assert (not b_next!18443))

(assert (not d!220451))

(assert (not d!220447))

(assert (not d!220433))

(assert (not b!629942))

(assert (not b!630150))

(assert (not b!630164))

(assert (not b!630008))

(assert (not b!630170))

(assert (not b!629982))

(assert b_and!62217)

(assert (not d!220599))

(assert (not b_next!18429))

(assert (not d!220591))

(assert (not d!220439))

(assert (not b!630183))

(assert (not d!220513))

(assert (not d!220441))

(assert (not d!220469))

(assert (not b!630148))

(assert (not b!630163))

(assert (not d!220445))

(assert (not d!220457))

(assert (not b!630167))

(assert (not b!630092))

(assert (not b!630096))

(assert (not d!220521))

(assert (not d!220459))

(assert (not b!630145))

(assert (not b!629946))

(assert (not d!220463))

(assert (not b!630120))

(assert (not b!630131))

(assert (not b!630100))

(assert (not b!630146))

(assert (not d!220601))

(assert (not d!220453))

(assert (not d!220485))

(assert (not b!630095))

(assert (not b!630121))

(assert (not b!630130))

(assert (not d!220483))

(assert (not d!220477))

(assert (not b!630005))

(assert b_and!62207)

(assert (not b!630168))

(assert (not b!630098))

(assert b_and!62209)

(assert (not b!630165))

(assert (not d!220595))

(assert (not d!220553))

(assert (not b!630091))

(assert b_and!62221)

(assert (not b!630097))

(assert (not d!220523))

(assert (not d!220551))

(assert (not b!630186))

(assert (not b!630090))

(assert (not d!220471))

(assert (not b!630112))

(assert (not b!630114))

(assert (not d!220431))

(assert (not b_next!18437))

(assert (not d!220473))

(assert (not b!630093))

(assert (not b!630147))

(assert (not b!630000))

(assert (not b!629991))

(assert (not b!629998))

(assert (not bm!41348))

(assert (not d!220587))

(assert (not b!630149))

(assert (not b_next!18441))

(assert (not b_lambda!24761))

(assert (not b!629943))

(assert (not d!220435))

(assert (not d!220461))

(assert b_and!62215)

(assert (not b!629935))

(assert (not b!630169))

(assert (not d!220593))

(assert (not d!220597))

(assert (not b!630001))

(assert (not d!220455))

(assert (not bm!41346))

(assert (not d!220475))

(assert (not b!629937))

(assert (not b!630003))

(assert (not b!630110))

(assert (not d!220437))

(assert (not b!630132))

(assert (not b!630127))

(assert (not b!630101))

(assert (not b!630099))

(assert (not d!220465))

(assert (not d!220549))

(assert (not d!220429))

(assert (not b!630181))

(assert b_and!62219)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!18439))

(assert (not b_next!18431))

(assert (not b_next!18443))

(assert b_and!62217)

(assert (not b_next!18429))

(assert b_and!62207)

(assert (not b_next!18437))

(assert (not b_next!18441))

(assert b_and!62215)

(assert b_and!62219)

(assert b_and!62221)

(assert b_and!62209)

(check-sat)

(pop 1)

