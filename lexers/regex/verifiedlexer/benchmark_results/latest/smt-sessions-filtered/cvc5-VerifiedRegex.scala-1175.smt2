; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60760 () Bool)

(assert start!60760)

(declare-fun b!628419 () Bool)

(declare-fun res!272381 () Bool)

(declare-fun e!381222 () Bool)

(assert (=> b!628419 (=> (not res!272381) (not e!381222))))

(declare-datatypes ((List!6479 0))(
  ( (Nil!6465) (Cons!6465 (h!11866 (_ BitVec 16)) (t!82575 List!6479)) )
))
(declare-datatypes ((TokenValue!1354 0))(
  ( (FloatLiteralValue!2708 (text!9923 List!6479)) (TokenValueExt!1353 (__x!4596 Int)) (Broken!6770 (value!42746 List!6479)) (Object!1367) (End!1354) (Def!1354) (Underscore!1354) (Match!1354) (Else!1354) (Error!1354) (Case!1354) (If!1354) (Extends!1354) (Abstract!1354) (Class!1354) (Val!1354) (DelimiterValue!2708 (del!1414 List!6479)) (KeywordValue!1360 (value!42747 List!6479)) (CommentValue!2708 (value!42748 List!6479)) (WhitespaceValue!2708 (value!42749 List!6479)) (IndentationValue!1354 (value!42750 List!6479)) (String!8507) (Int32!1354) (Broken!6771 (value!42751 List!6479)) (Boolean!1355) (Unit!11542) (OperatorValue!1357 (op!1414 List!6479)) (IdentifierValue!2708 (value!42752 List!6479)) (IdentifierValue!2709 (value!42753 List!6479)) (WhitespaceValue!2709 (value!42754 List!6479)) (True!2708) (False!2708) (Broken!6772 (value!42755 List!6479)) (Broken!6773 (value!42756 List!6479)) (True!2709) (RightBrace!1354) (RightBracket!1354) (Colon!1354) (Null!1354) (Comma!1354) (LeftBracket!1354) (False!2709) (LeftBrace!1354) (ImaginaryLiteralValue!1354 (text!9924 List!6479)) (StringLiteralValue!4062 (value!42757 List!6479)) (EOFValue!1354 (value!42758 List!6479)) (IdentValue!1354 (value!42759 List!6479)) (DelimiterValue!2709 (value!42760 List!6479)) (DedentValue!1354 (value!42761 List!6479)) (NewLineValue!1354 (value!42762 List!6479)) (IntegerValue!4062 (value!42763 (_ BitVec 32)) (text!9925 List!6479)) (IntegerValue!4063 (value!42764 Int) (text!9926 List!6479)) (Times!1354) (Or!1354) (Equal!1354) (Minus!1354) (Broken!6774 (value!42765 List!6479)) (And!1354) (Div!1354) (LessEqual!1354) (Mod!1354) (Concat!3008) (Not!1354) (Plus!1354) (SpaceValue!1354 (value!42766 List!6479)) (IntegerValue!4064 (value!42767 Int) (text!9927 List!6479)) (StringLiteralValue!4063 (text!9928 List!6479)) (FloatLiteralValue!2709 (text!9929 List!6479)) (BytesLiteralValue!1354 (value!42768 List!6479)) (CommentValue!2709 (value!42769 List!6479)) (StringLiteralValue!4064 (value!42770 List!6479)) (ErrorTokenValue!1354 (msg!1415 List!6479)) )
))
(declare-datatypes ((Regex!1654 0))(
  ( (ElementMatch!1654 (c!115491 (_ BitVec 16))) (Concat!3009 (regOne!3820 Regex!1654) (regTwo!3820 Regex!1654)) (EmptyExpr!1654) (Star!1654 (reg!1983 Regex!1654)) (EmptyLang!1654) (Union!1654 (regOne!3821 Regex!1654) (regTwo!3821 Regex!1654)) )
))
(declare-datatypes ((String!8508 0))(
  ( (String!8509 (value!42771 String)) )
))
(declare-datatypes ((IArray!4191 0))(
  ( (IArray!4192 (innerList!2153 List!6479)) )
))
(declare-datatypes ((Conc!2095 0))(
  ( (Node!2095 (left!5164 Conc!2095) (right!5494 Conc!2095) (csize!4420 Int) (cheight!2306 Int)) (Leaf!3271 (xs!4736 IArray!4191) (csize!4421 Int)) (Empty!2095) )
))
(declare-datatypes ((BalanceConc!4202 0))(
  ( (BalanceConc!4203 (c!115492 Conc!2095)) )
))
(declare-datatypes ((TokenValueInjection!2460 0))(
  ( (TokenValueInjection!2461 (toValue!2261 Int) (toChars!2120 Int)) )
))
(declare-datatypes ((Rule!2440 0))(
  ( (Rule!2441 (regex!1320 Regex!1654) (tag!1582 String!8508) (isSeparator!1320 Bool) (transformation!1320 TokenValueInjection!2460)) )
))
(declare-datatypes ((List!6480 0))(
  ( (Nil!6466) (Cons!6466 (h!11867 Rule!2440) (t!82576 List!6480)) )
))
(declare-fun lt!267104 () List!6480)

(declare-datatypes ((LexerInterface!1206 0))(
  ( (LexerInterfaceExt!1203 (__x!4597 Int)) (Lexer!1204) )
))
(declare-fun rulesInvariant!1141 (LexerInterface!1206 List!6480) Bool)

(assert (=> b!628419 (= res!272381 (rulesInvariant!1141 Lexer!1204 lt!267104))))

(declare-fun res!272379 () Bool)

(declare-fun e!381224 () Bool)

(assert (=> start!60760 (=> (not res!272379) (not e!381224))))

(declare-datatypes ((Token!2364 0))(
  ( (Token!2365 (value!42772 TokenValue!1354) (rule!2116 Rule!2440) (size!5055 Int) (originalCharacters!1353 List!6479)) )
))
(declare-datatypes ((List!6481 0))(
  ( (Nil!6467) (Cons!6467 (h!11868 Token!2364) (t!82577 List!6481)) )
))
(declare-datatypes ((IArray!4193 0))(
  ( (IArray!4194 (innerList!2154 List!6481)) )
))
(declare-datatypes ((Conc!2096 0))(
  ( (Node!2096 (left!5165 Conc!2096) (right!5495 Conc!2096) (csize!4422 Int) (cheight!2307 Int)) (Leaf!3272 (xs!4737 IArray!4193) (csize!4423 Int)) (Empty!2096) )
))
(declare-datatypes ((BalanceConc!4204 0))(
  ( (BalanceConc!4205 (c!115493 Conc!2096)) )
))
(declare-datatypes ((PrintableTokens!22 0))(
  ( (PrintableTokens!23 (rules!8095 List!6480) (tokens!1135 BalanceConc!4204)) )
))
(declare-fun printableTokens!2 () PrintableTokens!22)

(declare-fun size!5056 (PrintableTokens!22) Int)

(assert (=> start!60760 (= res!272379 (> (size!5056 printableTokens!2) 0))))

(assert (=> start!60760 e!381224))

(declare-fun e!381223 () Bool)

(declare-fun inv!8325 (PrintableTokens!22) Bool)

(assert (=> start!60760 (and (inv!8325 printableTokens!2) e!381223)))

(declare-fun tp!196147 () Bool)

(declare-fun e!381225 () Bool)

(declare-fun b!628420 () Bool)

(declare-fun inv!8326 (BalanceConc!4204) Bool)

(assert (=> b!628420 (= e!381223 (and tp!196147 (inv!8326 (tokens!1135 printableTokens!2)) e!381225))))

(declare-fun b!628421 () Bool)

(declare-fun res!272380 () Bool)

(assert (=> b!628421 (=> (not res!272380) (not e!381222))))

(declare-fun usesJsonRules!0 (PrintableTokens!22) Bool)

(assert (=> b!628421 (= res!272380 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!628422 () Bool)

(declare-fun size!5057 (BalanceConc!4204) Int)

(assert (=> b!628422 (= e!381222 (> 0 (size!5057 (tokens!1135 printableTokens!2))))))

(declare-fun b!628423 () Bool)

(declare-fun tp!196146 () Bool)

(declare-fun inv!8327 (Conc!2096) Bool)

(assert (=> b!628423 (= e!381225 (and (inv!8327 (c!115493 (tokens!1135 printableTokens!2))) tp!196146))))

(declare-fun b!628424 () Bool)

(assert (=> b!628424 (= e!381224 e!381222)))

(declare-fun res!272382 () Bool)

(assert (=> b!628424 (=> (not res!272382) (not e!381222))))

(declare-fun isEmpty!4592 (List!6480) Bool)

(assert (=> b!628424 (= res!272382 (not (isEmpty!4592 lt!267104)))))

(declare-datatypes ((JsonLexer!96 0))(
  ( (JsonLexer!97) )
))
(declare-fun rules!109 (JsonLexer!96) List!6480)

(assert (=> b!628424 (= lt!267104 (rules!109 JsonLexer!97))))

(assert (= (and start!60760 res!272379) b!628424))

(assert (= (and b!628424 res!272382) b!628419))

(assert (= (and b!628419 res!272381) b!628421))

(assert (= (and b!628421 res!272380) b!628422))

(assert (= b!628420 b!628423))

(assert (= start!60760 b!628420))

(declare-fun m!896747 () Bool)

(assert (=> b!628419 m!896747))

(declare-fun m!896749 () Bool)

(assert (=> start!60760 m!896749))

(declare-fun m!896751 () Bool)

(assert (=> start!60760 m!896751))

(declare-fun m!896753 () Bool)

(assert (=> b!628424 m!896753))

(declare-fun m!896755 () Bool)

(assert (=> b!628424 m!896755))

(declare-fun m!896757 () Bool)

(assert (=> b!628420 m!896757))

(declare-fun m!896759 () Bool)

(assert (=> b!628423 m!896759))

(declare-fun m!896761 () Bool)

(assert (=> b!628421 m!896761))

(declare-fun m!896763 () Bool)

(assert (=> b!628422 m!896763))

(push 1)

(assert (not b!628420))

(assert (not b!628424))

(assert (not b!628423))

(assert (not b!628421))

(assert (not b!628422))

(assert (not b!628419))

(assert (not start!60760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219868 () Bool)

(declare-fun lt!267110 () Int)

(declare-fun size!5061 (List!6481) Int)

(declare-fun list!2746 (BalanceConc!4204) List!6481)

(assert (=> d!219868 (= lt!267110 (size!5061 (list!2746 (tokens!1135 printableTokens!2))))))

(declare-fun size!5062 (Conc!2096) Int)

(assert (=> d!219868 (= lt!267110 (size!5062 (c!115493 (tokens!1135 printableTokens!2))))))

(assert (=> d!219868 (= (size!5057 (tokens!1135 printableTokens!2)) lt!267110)))

(declare-fun bs!72711 () Bool)

(assert (= bs!72711 d!219868))

(declare-fun m!896783 () Bool)

(assert (=> bs!72711 m!896783))

(assert (=> bs!72711 m!896783))

(declare-fun m!896785 () Bool)

(assert (=> bs!72711 m!896785))

(declare-fun m!896787 () Bool)

(assert (=> bs!72711 m!896787))

(assert (=> b!628422 d!219868))

(declare-fun d!219870 () Bool)

(assert (=> d!219870 (= (size!5056 printableTokens!2) (size!5057 (tokens!1135 printableTokens!2)))))

(declare-fun bs!72712 () Bool)

(assert (= bs!72712 d!219870))

(assert (=> bs!72712 m!896763))

(assert (=> start!60760 d!219870))

(declare-fun d!219872 () Bool)

(declare-fun res!272411 () Bool)

(declare-fun e!381249 () Bool)

(assert (=> d!219872 (=> (not res!272411) (not e!381249))))

(assert (=> d!219872 (= res!272411 (not (isEmpty!4592 (rules!8095 printableTokens!2))))))

(assert (=> d!219872 (= (inv!8325 printableTokens!2) e!381249)))

(declare-fun b!628461 () Bool)

(declare-fun res!272412 () Bool)

(assert (=> b!628461 (=> (not res!272412) (not e!381249))))

(assert (=> b!628461 (= res!272412 (rulesInvariant!1141 Lexer!1204 (rules!8095 printableTokens!2)))))

(declare-fun b!628462 () Bool)

(declare-fun res!272413 () Bool)

(assert (=> b!628462 (=> (not res!272413) (not e!381249))))

(declare-fun rulesProduceEachTokenIndividually!556 (LexerInterface!1206 List!6480 BalanceConc!4204) Bool)

(assert (=> b!628462 (= res!272413 (rulesProduceEachTokenIndividually!556 Lexer!1204 (rules!8095 printableTokens!2) (tokens!1135 printableTokens!2)))))

(declare-fun b!628463 () Bool)

(declare-fun separableTokens!6 (LexerInterface!1206 BalanceConc!4204 List!6480) Bool)

(assert (=> b!628463 (= e!381249 (separableTokens!6 Lexer!1204 (tokens!1135 printableTokens!2) (rules!8095 printableTokens!2)))))

(assert (= (and d!219872 res!272411) b!628461))

(assert (= (and b!628461 res!272412) b!628462))

(assert (= (and b!628462 res!272413) b!628463))

(declare-fun m!896827 () Bool)

(assert (=> d!219872 m!896827))

(declare-fun m!896829 () Bool)

(assert (=> b!628461 m!896829))

(declare-fun m!896831 () Bool)

(assert (=> b!628462 m!896831))

(declare-fun m!896833 () Bool)

(assert (=> b!628463 m!896833))

(assert (=> start!60760 d!219872))

(declare-fun d!219888 () Bool)

(declare-fun c!115502 () Bool)

(assert (=> d!219888 (= c!115502 (is-Node!2096 (c!115493 (tokens!1135 printableTokens!2))))))

(declare-fun e!381254 () Bool)

(assert (=> d!219888 (= (inv!8327 (c!115493 (tokens!1135 printableTokens!2))) e!381254)))

(declare-fun b!628470 () Bool)

(declare-fun inv!8331 (Conc!2096) Bool)

(assert (=> b!628470 (= e!381254 (inv!8331 (c!115493 (tokens!1135 printableTokens!2))))))

(declare-fun b!628471 () Bool)

(declare-fun e!381255 () Bool)

(assert (=> b!628471 (= e!381254 e!381255)))

(declare-fun res!272416 () Bool)

(assert (=> b!628471 (= res!272416 (not (is-Leaf!3272 (c!115493 (tokens!1135 printableTokens!2)))))))

(assert (=> b!628471 (=> res!272416 e!381255)))

(declare-fun b!628472 () Bool)

(declare-fun inv!8332 (Conc!2096) Bool)

(assert (=> b!628472 (= e!381255 (inv!8332 (c!115493 (tokens!1135 printableTokens!2))))))

(assert (= (and d!219888 c!115502) b!628470))

(assert (= (and d!219888 (not c!115502)) b!628471))

(assert (= (and b!628471 (not res!272416)) b!628472))

(declare-fun m!896835 () Bool)

(assert (=> b!628470 m!896835))

(declare-fun m!896837 () Bool)

(assert (=> b!628472 m!896837))

(assert (=> b!628423 d!219888))

(declare-fun d!219890 () Bool)

(assert (=> d!219890 (= (isEmpty!4592 lt!267104) (is-Nil!6466 lt!267104))))

(assert (=> b!628424 d!219890))

(declare-fun d!219892 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!96) Rule!2440)

(declare-fun integerLiteralRule!0 (JsonLexer!96) Rule!2440)

(declare-fun floatLiteralRule!0 (JsonLexer!96) Rule!2440)

(declare-fun trueRule!0 (JsonLexer!96) Rule!2440)

(declare-fun falseRule!0 (JsonLexer!96) Rule!2440)

(declare-fun nullRule!0 (JsonLexer!96) Rule!2440)

(declare-fun jsonstringRule!0 (JsonLexer!96) Rule!2440)

(declare-fun lBraceRule!0 (JsonLexer!96) Rule!2440)

(declare-fun rBraceRule!0 (JsonLexer!96) Rule!2440)

(declare-fun lBracketRule!0 (JsonLexer!96) Rule!2440)

(declare-fun rBracketRule!0 (JsonLexer!96) Rule!2440)

(declare-fun colonRule!0 (JsonLexer!96) Rule!2440)

(declare-fun commaRule!0 (JsonLexer!96) Rule!2440)

(declare-fun eofRule!0 (JsonLexer!96) Rule!2440)

(assert (=> d!219892 (= (rules!109 JsonLexer!97) (Cons!6466 (whitespaceRule!0 JsonLexer!97) (Cons!6466 (integerLiteralRule!0 JsonLexer!97) (Cons!6466 (floatLiteralRule!0 JsonLexer!97) (Cons!6466 (trueRule!0 JsonLexer!97) (Cons!6466 (falseRule!0 JsonLexer!97) (Cons!6466 (nullRule!0 JsonLexer!97) (Cons!6466 (jsonstringRule!0 JsonLexer!97) (Cons!6466 (lBraceRule!0 JsonLexer!97) (Cons!6466 (rBraceRule!0 JsonLexer!97) (Cons!6466 (lBracketRule!0 JsonLexer!97) (Cons!6466 (rBracketRule!0 JsonLexer!97) (Cons!6466 (colonRule!0 JsonLexer!97) (Cons!6466 (commaRule!0 JsonLexer!97) (Cons!6466 (eofRule!0 JsonLexer!97) Nil!6466)))))))))))))))))

(declare-fun bs!72716 () Bool)

(assert (= bs!72716 d!219892))

(declare-fun m!896839 () Bool)

(assert (=> bs!72716 m!896839))

(declare-fun m!896841 () Bool)

(assert (=> bs!72716 m!896841))

(declare-fun m!896843 () Bool)

(assert (=> bs!72716 m!896843))

(declare-fun m!896845 () Bool)

(assert (=> bs!72716 m!896845))

(declare-fun m!896847 () Bool)

(assert (=> bs!72716 m!896847))

(declare-fun m!896849 () Bool)

(assert (=> bs!72716 m!896849))

(declare-fun m!896851 () Bool)

(assert (=> bs!72716 m!896851))

(declare-fun m!896853 () Bool)

(assert (=> bs!72716 m!896853))

(declare-fun m!896855 () Bool)

(assert (=> bs!72716 m!896855))

(declare-fun m!896857 () Bool)

(assert (=> bs!72716 m!896857))

(declare-fun m!896859 () Bool)

(assert (=> bs!72716 m!896859))

(declare-fun m!896861 () Bool)

(assert (=> bs!72716 m!896861))

(declare-fun m!896863 () Bool)

(assert (=> bs!72716 m!896863))

(declare-fun m!896865 () Bool)

(assert (=> bs!72716 m!896865))

(assert (=> b!628424 d!219892))

(declare-fun d!219894 () Bool)

(declare-fun res!272419 () Bool)

(declare-fun e!381258 () Bool)

(assert (=> d!219894 (=> (not res!272419) (not e!381258))))

(declare-fun rulesValid!484 (LexerInterface!1206 List!6480) Bool)

(assert (=> d!219894 (= res!272419 (rulesValid!484 Lexer!1204 lt!267104))))

(assert (=> d!219894 (= (rulesInvariant!1141 Lexer!1204 lt!267104) e!381258)))

(declare-fun b!628475 () Bool)

(declare-datatypes ((List!6485 0))(
  ( (Nil!6471) (Cons!6471 (h!11872 String!8508) (t!82596 List!6485)) )
))
(declare-fun noDuplicateTag!484 (LexerInterface!1206 List!6480 List!6485) Bool)

(assert (=> b!628475 (= e!381258 (noDuplicateTag!484 Lexer!1204 lt!267104 Nil!6471))))

(assert (= (and d!219894 res!272419) b!628475))

(declare-fun m!896867 () Bool)

(assert (=> d!219894 m!896867))

(declare-fun m!896869 () Bool)

(assert (=> b!628475 m!896869))

(assert (=> b!628419 d!219894))

(declare-fun d!219896 () Bool)

(declare-fun isBalanced!558 (Conc!2096) Bool)

(assert (=> d!219896 (= (inv!8326 (tokens!1135 printableTokens!2)) (isBalanced!558 (c!115493 (tokens!1135 printableTokens!2))))))

(declare-fun bs!72717 () Bool)

(assert (= bs!72717 d!219896))

(declare-fun m!896871 () Bool)

(assert (=> bs!72717 m!896871))

(assert (=> b!628420 d!219896))

(declare-fun d!219898 () Bool)

(assert (=> d!219898 (= (usesJsonRules!0 printableTokens!2) (= (rules!8095 printableTokens!2) (rules!109 JsonLexer!97)))))

(declare-fun bs!72718 () Bool)

(assert (= bs!72718 d!219898))

(assert (=> bs!72718 m!896755))

(assert (=> b!628421 d!219898))

(declare-fun e!381263 () Bool)

(declare-fun tp!196162 () Bool)

(declare-fun b!628484 () Bool)

(declare-fun tp!196161 () Bool)

(assert (=> b!628484 (= e!381263 (and (inv!8327 (left!5165 (c!115493 (tokens!1135 printableTokens!2)))) tp!196162 (inv!8327 (right!5495 (c!115493 (tokens!1135 printableTokens!2)))) tp!196161))))

(declare-fun b!628486 () Bool)

(declare-fun e!381264 () Bool)

(declare-fun tp!196160 () Bool)

(assert (=> b!628486 (= e!381264 tp!196160)))

(declare-fun b!628485 () Bool)

(declare-fun inv!8333 (IArray!4193) Bool)

(assert (=> b!628485 (= e!381263 (and (inv!8333 (xs!4737 (c!115493 (tokens!1135 printableTokens!2)))) e!381264))))

(assert (=> b!628423 (= tp!196146 (and (inv!8327 (c!115493 (tokens!1135 printableTokens!2))) e!381263))))

(assert (= (and b!628423 (is-Node!2096 (c!115493 (tokens!1135 printableTokens!2)))) b!628484))

(assert (= b!628485 b!628486))

(assert (= (and b!628423 (is-Leaf!3272 (c!115493 (tokens!1135 printableTokens!2)))) b!628485))

(declare-fun m!896873 () Bool)

(assert (=> b!628484 m!896873))

(declare-fun m!896875 () Bool)

(assert (=> b!628484 m!896875))

(declare-fun m!896877 () Bool)

(assert (=> b!628485 m!896877))

(assert (=> b!628423 m!896759))

(declare-fun b!628497 () Bool)

(declare-fun b_free!18369 () Bool)

(declare-fun b_next!18385 () Bool)

(assert (=> b!628497 (= b_free!18369 (not b_next!18385))))

(declare-fun tp!196170 () Bool)

(declare-fun b_and!62163 () Bool)

(assert (=> b!628497 (= tp!196170 b_and!62163)))

(declare-fun b_free!18371 () Bool)

(declare-fun b_next!18387 () Bool)

(assert (=> b!628497 (= b_free!18371 (not b_next!18387))))

(declare-fun tp!196169 () Bool)

(declare-fun b_and!62165 () Bool)

(assert (=> b!628497 (= tp!196169 b_and!62165)))

(declare-fun e!381275 () Bool)

(assert (=> b!628497 (= e!381275 (and tp!196170 tp!196169))))

(declare-fun b!628496 () Bool)

(declare-fun e!381274 () Bool)

(declare-fun inv!8322 (String!8508) Bool)

(declare-fun inv!8334 (TokenValueInjection!2460) Bool)

(assert (=> b!628496 (= e!381274 (and (inv!8322 (tag!1582 (h!11867 (rules!8095 printableTokens!2)))) (inv!8334 (transformation!1320 (h!11867 (rules!8095 printableTokens!2)))) e!381275))))

(declare-fun b!628495 () Bool)

(declare-fun e!381276 () Bool)

(declare-fun tp!196171 () Bool)

(assert (=> b!628495 (= e!381276 (and e!381274 tp!196171))))

(assert (=> b!628420 (= tp!196147 e!381276)))

(assert (= b!628496 b!628497))

(assert (= b!628495 b!628496))

(assert (= (and b!628420 (is-Cons!6466 (rules!8095 printableTokens!2))) b!628495))

(declare-fun m!896879 () Bool)

(assert (=> b!628496 m!896879))

(declare-fun m!896881 () Bool)

(assert (=> b!628496 m!896881))

(push 1)

(assert (not d!219868))

(assert b_and!62165)

(assert (not b_next!18387))

(assert (not b!628423))

(assert (not d!219896))

(assert (not b!628463))

(assert (not b!628461))

(assert (not b!628472))

(assert (not b_next!18385))

(assert (not d!219892))

(assert (not b!628495))

(assert (not b!628462))

(assert (not b!628485))

(assert (not b!628470))

(assert b_and!62163)

(assert (not b!628475))

(assert (not d!219898))

(assert (not b!628486))

(assert (not d!219872))

(assert (not d!219870))

(assert (not d!219894))

(assert (not b!628496))

(assert (not b!628484))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62165)

(assert b_and!62163)

(assert (not b_next!18387))

(assert (not b_next!18385))

(check-sat)

(pop 1)

