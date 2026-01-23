; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!61048 () Bool)

(assert start!61048)

(declare-fun b!629265 () Bool)

(assert (=> b!629265 true))

(declare-fun b!629263 () Bool)

(declare-fun res!272826 () Bool)

(declare-fun e!381800 () Bool)

(assert (=> b!629263 (=> (not res!272826) (not e!381800))))

(declare-datatypes ((List!6528 0))(
  ( (Nil!6514) (Cons!6514 (h!11915 (_ BitVec 16)) (t!82818 List!6528)) )
))
(declare-datatypes ((TokenValue!1366 0))(
  ( (FloatLiteralValue!2732 (text!10007 List!6528)) (TokenValueExt!1365 (__x!4620 Int)) (Broken!6830 (value!43088 List!6528)) (Object!1379) (End!1366) (Def!1366) (Underscore!1366) (Match!1366) (Else!1366) (Error!1366) (Case!1366) (If!1366) (Extends!1366) (Abstract!1366) (Class!1366) (Val!1366) (DelimiterValue!2732 (del!1426 List!6528)) (KeywordValue!1372 (value!43089 List!6528)) (CommentValue!2732 (value!43090 List!6528)) (WhitespaceValue!2732 (value!43091 List!6528)) (IndentationValue!1366 (value!43092 List!6528)) (String!8567) (Int32!1366) (Broken!6831 (value!43093 List!6528)) (Boolean!1367) (Unit!11558) (OperatorValue!1369 (op!1426 List!6528)) (IdentifierValue!2732 (value!43094 List!6528)) (IdentifierValue!2733 (value!43095 List!6528)) (WhitespaceValue!2733 (value!43096 List!6528)) (True!2732) (False!2732) (Broken!6832 (value!43097 List!6528)) (Broken!6833 (value!43098 List!6528)) (True!2733) (RightBrace!1366) (RightBracket!1366) (Colon!1366) (Null!1366) (Comma!1366) (LeftBracket!1366) (False!2733) (LeftBrace!1366) (ImaginaryLiteralValue!1366 (text!10008 List!6528)) (StringLiteralValue!4098 (value!43099 List!6528)) (EOFValue!1366 (value!43100 List!6528)) (IdentValue!1366 (value!43101 List!6528)) (DelimiterValue!2733 (value!43102 List!6528)) (DedentValue!1366 (value!43103 List!6528)) (NewLineValue!1366 (value!43104 List!6528)) (IntegerValue!4098 (value!43105 (_ BitVec 32)) (text!10009 List!6528)) (IntegerValue!4099 (value!43106 Int) (text!10010 List!6528)) (Times!1366) (Or!1366) (Equal!1366) (Minus!1366) (Broken!6834 (value!43107 List!6528)) (And!1366) (Div!1366) (LessEqual!1366) (Mod!1366) (Concat!3032) (Not!1366) (Plus!1366) (SpaceValue!1366 (value!43108 List!6528)) (IntegerValue!4100 (value!43109 Int) (text!10011 List!6528)) (StringLiteralValue!4099 (text!10012 List!6528)) (FloatLiteralValue!2733 (text!10013 List!6528)) (BytesLiteralValue!1366 (value!43110 List!6528)) (CommentValue!2733 (value!43111 List!6528)) (StringLiteralValue!4100 (value!43112 List!6528)) (ErrorTokenValue!1366 (msg!1427 List!6528)) )
))
(declare-datatypes ((Regex!1666 0))(
  ( (ElementMatch!1666 (c!115590 (_ BitVec 16))) (Concat!3033 (regOne!3844 Regex!1666) (regTwo!3844 Regex!1666)) (EmptyExpr!1666) (Star!1666 (reg!1995 Regex!1666)) (EmptyLang!1666) (Union!1666 (regOne!3845 Regex!1666) (regTwo!3845 Regex!1666)) )
))
(declare-datatypes ((String!8568 0))(
  ( (String!8569 (value!43113 String)) )
))
(declare-datatypes ((IArray!4255 0))(
  ( (IArray!4256 (innerList!2185 List!6528)) )
))
(declare-datatypes ((Conc!2127 0))(
  ( (Node!2127 (left!5216 Conc!2127) (right!5546 Conc!2127) (csize!4484 Int) (cheight!2338 Int)) (Leaf!3309 (xs!4768 IArray!4255) (csize!4485 Int)) (Empty!2127) )
))
(declare-datatypes ((BalanceConc!4266 0))(
  ( (BalanceConc!4267 (c!115591 Conc!2127)) )
))
(declare-datatypes ((TokenValueInjection!2484 0))(
  ( (TokenValueInjection!2485 (toValue!2273 Int) (toChars!2132 Int)) )
))
(declare-datatypes ((Rule!2464 0))(
  ( (Rule!2465 (regex!1332 Regex!1666) (tag!1594 String!8568) (isSeparator!1332 Bool) (transformation!1332 TokenValueInjection!2484)) )
))
(declare-datatypes ((List!6529 0))(
  ( (Nil!6515) (Cons!6515 (h!11916 Rule!2464) (t!82819 List!6529)) )
))
(declare-fun lt!267278 () List!6529)

(declare-datatypes ((LexerInterface!1218 0))(
  ( (LexerInterfaceExt!1215 (__x!4621 Int)) (Lexer!1216) )
))
(declare-fun rulesInvariant!1153 (LexerInterface!1218 List!6529) Bool)

(assert (=> b!629263 (= res!272826 (rulesInvariant!1153 Lexer!1216 lt!267278))))

(declare-fun b!629264 () Bool)

(declare-fun e!381798 () Bool)

(assert (=> b!629264 (= e!381798 e!381800)))

(declare-fun res!272825 () Bool)

(assert (=> b!629264 (=> (not res!272825) (not e!381800))))

(declare-fun isEmpty!4605 (List!6529) Bool)

(assert (=> b!629264 (= res!272825 (not (isEmpty!4605 lt!267278)))))

(declare-datatypes ((JsonLexer!120 0))(
  ( (JsonLexer!121) )
))
(declare-fun rules!109 (JsonLexer!120) List!6529)

(assert (=> b!629264 (= lt!267278 (rules!109 JsonLexer!121))))

(declare-fun res!272829 () Bool)

(assert (=> b!629265 (=> (not res!272829) (not e!381800))))

(declare-fun lt!267277 () Int)

(declare-datatypes ((Token!2388 0))(
  ( (Token!2389 (value!43114 TokenValue!1366) (rule!2128 Rule!2464) (size!5096 Int) (originalCharacters!1365 List!6528)) )
))
(declare-datatypes ((List!6530 0))(
  ( (Nil!6516) (Cons!6516 (h!11917 Token!2388) (t!82820 List!6530)) )
))
(declare-datatypes ((IArray!4257 0))(
  ( (IArray!4258 (innerList!2186 List!6530)) )
))
(declare-datatypes ((Conc!2128 0))(
  ( (Node!2128 (left!5217 Conc!2128) (right!5547 Conc!2128) (csize!4486 Int) (cheight!2339 Int)) (Leaf!3310 (xs!4769 IArray!4257) (csize!4487 Int)) (Empty!2128) )
))
(declare-datatypes ((BalanceConc!4268 0))(
  ( (BalanceConc!4269 (c!115592 Conc!2128)) )
))
(declare-datatypes ((PrintableTokens!46 0))(
  ( (PrintableTokens!47 (rules!8118 List!6529) (tokens!1149 BalanceConc!4268)) )
))
(declare-fun printableTokens!2 () PrintableTokens!46)

(declare-fun lambda!16655 () Int)

(declare-datatypes ((List!6531 0))(
  ( (Nil!6517) (Cons!6517 (h!11918 Int) (t!82821 List!6531)) )
))
(declare-datatypes ((IArray!4259 0))(
  ( (IArray!4260 (innerList!2187 List!6531)) )
))
(declare-datatypes ((Conc!2129 0))(
  ( (Node!2129 (left!5218 Conc!2129) (right!5548 Conc!2129) (csize!4488 Int) (cheight!2340 Int)) (Leaf!3311 (xs!4770 IArray!4259) (csize!4489 Int)) (Empty!2129) )
))
(declare-datatypes ((BalanceConc!4270 0))(
  ( (BalanceConc!4271 (c!115593 Conc!2129)) )
))
(declare-fun forall!1592 (BalanceConc!4270 Int) Bool)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4268 Int Int BalanceConc!4270) BalanceConc!4270)

(assert (=> b!629265 (= res!272829 (forall!1592 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)) lambda!16655))))

(declare-fun res!272827 () Bool)

(assert (=> start!61048 (=> (not res!272827) (not e!381798))))

(assert (=> start!61048 (= res!272827 (> lt!267277 0))))

(declare-fun size!5097 (PrintableTokens!46) Int)

(assert (=> start!61048 (= lt!267277 (size!5097 printableTokens!2))))

(assert (=> start!61048 e!381798))

(declare-fun e!381797 () Bool)

(declare-fun inv!8400 (PrintableTokens!46) Bool)

(assert (=> start!61048 (and (inv!8400 printableTokens!2) e!381797)))

(declare-fun e!381799 () Bool)

(declare-fun tp!196398 () Bool)

(declare-fun b!629266 () Bool)

(declare-fun inv!8401 (BalanceConc!4268) Bool)

(assert (=> b!629266 (= e!381797 (and tp!196398 (inv!8401 (tokens!1149 printableTokens!2)) e!381799))))

(declare-fun b!629267 () Bool)

(declare-fun tp!196399 () Bool)

(declare-fun inv!8402 (Conc!2128) Bool)

(assert (=> b!629267 (= e!381799 (and (inv!8402 (c!115592 (tokens!1149 printableTokens!2))) tp!196399))))

(declare-fun b!629268 () Bool)

(declare-fun lambda!16656 () Int)

(declare-datatypes ((List!6532 0))(
  ( (Nil!6518) (Cons!6518 (h!11919 PrintableTokens!46) (t!82822 List!6532)) )
))
(declare-datatypes ((IArray!4261 0))(
  ( (IArray!4262 (innerList!2188 List!6532)) )
))
(declare-datatypes ((Conc!2130 0))(
  ( (Node!2130 (left!5219 Conc!2130) (right!5549 Conc!2130) (csize!4490 Int) (cheight!2341 Int)) (Leaf!3312 (xs!4771 IArray!4261) (csize!4491 Int)) (Empty!2130) )
))
(declare-datatypes ((BalanceConc!4272 0))(
  ( (BalanceConc!4273 (c!115594 Conc!2130)) )
))
(declare-fun forall!1593 (BalanceConc!4272 Int) Bool)

(assert (=> b!629268 (= e!381800 (not (forall!1593 (BalanceConc!4273 Empty!2130) lambda!16656)))))

(declare-fun b!629269 () Bool)

(declare-fun res!272828 () Bool)

(assert (=> b!629269 (=> (not res!272828) (not e!381800))))

(declare-fun usesJsonRules!0 (PrintableTokens!46) Bool)

(assert (=> b!629269 (= res!272828 (usesJsonRules!0 printableTokens!2))))

(assert (= (and start!61048 res!272827) b!629264))

(assert (= (and b!629264 res!272825) b!629263))

(assert (= (and b!629263 res!272826) b!629269))

(assert (= (and b!629269 res!272828) b!629265))

(assert (= (and b!629265 res!272829) b!629268))

(assert (= b!629266 b!629267))

(assert (= start!61048 b!629266))

(declare-fun m!897709 () Bool)

(assert (=> b!629264 m!897709))

(declare-fun m!897711 () Bool)

(assert (=> b!629264 m!897711))

(declare-fun m!897713 () Bool)

(assert (=> start!61048 m!897713))

(declare-fun m!897715 () Bool)

(assert (=> start!61048 m!897715))

(declare-fun m!897717 () Bool)

(assert (=> b!629267 m!897717))

(declare-fun m!897719 () Bool)

(assert (=> b!629265 m!897719))

(assert (=> b!629265 m!897719))

(declare-fun m!897721 () Bool)

(assert (=> b!629265 m!897721))

(declare-fun m!897723 () Bool)

(assert (=> b!629263 m!897723))

(declare-fun m!897725 () Bool)

(assert (=> b!629266 m!897725))

(declare-fun m!897727 () Bool)

(assert (=> b!629268 m!897727))

(declare-fun m!897729 () Bool)

(assert (=> b!629269 m!897729))

(push 1)

(assert (not b!629269))

(assert (not b!629265))

(assert (not b!629268))

(assert (not b!629267))

(assert (not b!629263))

(assert (not start!61048))

(assert (not b!629266))

(assert (not b!629264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!220156 () Bool)

(assert (=> d!220156 (= (usesJsonRules!0 printableTokens!2) (= (rules!8118 printableTokens!2) (rules!109 JsonLexer!121)))))

(declare-fun bs!72810 () Bool)

(assert (= bs!72810 d!220156))

(assert (=> bs!72810 m!897711))

(assert (=> b!629269 d!220156))

(declare-fun d!220160 () Bool)

(assert (=> d!220160 (= (isEmpty!4605 lt!267278) (is-Nil!6515 lt!267278))))

(assert (=> b!629264 d!220160))

(declare-fun d!220162 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!120) Rule!2464)

(declare-fun integerLiteralRule!0 (JsonLexer!120) Rule!2464)

(declare-fun floatLiteralRule!0 (JsonLexer!120) Rule!2464)

(declare-fun trueRule!0 (JsonLexer!120) Rule!2464)

(declare-fun falseRule!0 (JsonLexer!120) Rule!2464)

(declare-fun nullRule!0 (JsonLexer!120) Rule!2464)

(declare-fun jsonstringRule!0 (JsonLexer!120) Rule!2464)

(declare-fun lBraceRule!0 (JsonLexer!120) Rule!2464)

(declare-fun rBraceRule!0 (JsonLexer!120) Rule!2464)

(declare-fun lBracketRule!0 (JsonLexer!120) Rule!2464)

(declare-fun rBracketRule!0 (JsonLexer!120) Rule!2464)

(declare-fun colonRule!0 (JsonLexer!120) Rule!2464)

(declare-fun commaRule!0 (JsonLexer!120) Rule!2464)

(declare-fun eofRule!0 (JsonLexer!120) Rule!2464)

(assert (=> d!220162 (= (rules!109 JsonLexer!121) (Cons!6515 (whitespaceRule!0 JsonLexer!121) (Cons!6515 (integerLiteralRule!0 JsonLexer!121) (Cons!6515 (floatLiteralRule!0 JsonLexer!121) (Cons!6515 (trueRule!0 JsonLexer!121) (Cons!6515 (falseRule!0 JsonLexer!121) (Cons!6515 (nullRule!0 JsonLexer!121) (Cons!6515 (jsonstringRule!0 JsonLexer!121) (Cons!6515 (lBraceRule!0 JsonLexer!121) (Cons!6515 (rBraceRule!0 JsonLexer!121) (Cons!6515 (lBracketRule!0 JsonLexer!121) (Cons!6515 (rBracketRule!0 JsonLexer!121) (Cons!6515 (colonRule!0 JsonLexer!121) (Cons!6515 (commaRule!0 JsonLexer!121) (Cons!6515 (eofRule!0 JsonLexer!121) Nil!6515)))))))))))))))))

(declare-fun bs!72812 () Bool)

(assert (= bs!72812 d!220162))

(declare-fun m!897759 () Bool)

(assert (=> bs!72812 m!897759))

(declare-fun m!897761 () Bool)

(assert (=> bs!72812 m!897761))

(declare-fun m!897763 () Bool)

(assert (=> bs!72812 m!897763))

(declare-fun m!897765 () Bool)

(assert (=> bs!72812 m!897765))

(declare-fun m!897767 () Bool)

(assert (=> bs!72812 m!897767))

(declare-fun m!897769 () Bool)

(assert (=> bs!72812 m!897769))

(declare-fun m!897771 () Bool)

(assert (=> bs!72812 m!897771))

(declare-fun m!897773 () Bool)

(assert (=> bs!72812 m!897773))

(declare-fun m!897775 () Bool)

(assert (=> bs!72812 m!897775))

(declare-fun m!897777 () Bool)

(assert (=> bs!72812 m!897777))

(declare-fun m!897779 () Bool)

(assert (=> bs!72812 m!897779))

(declare-fun m!897781 () Bool)

(assert (=> bs!72812 m!897781))

(declare-fun m!897783 () Bool)

(assert (=> bs!72812 m!897783))

(declare-fun m!897785 () Bool)

(assert (=> bs!72812 m!897785))

(assert (=> b!629264 d!220162))

(declare-fun d!220166 () Bool)

(declare-fun lt!267290 () Bool)

(declare-fun forall!1596 (List!6531 Int) Bool)

(declare-fun list!2756 (BalanceConc!4270) List!6531)

(assert (=> d!220166 (= lt!267290 (forall!1596 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))) lambda!16655))))

(declare-fun forall!1597 (Conc!2129 Int) Bool)

(assert (=> d!220166 (= lt!267290 (forall!1597 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))) lambda!16655))))

(assert (=> d!220166 (= (forall!1592 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)) lambda!16655) lt!267290)))

(declare-fun bs!72813 () Bool)

(assert (= bs!72813 d!220166))

(assert (=> bs!72813 m!897719))

(declare-fun m!897787 () Bool)

(assert (=> bs!72813 m!897787))

(assert (=> bs!72813 m!897787))

(declare-fun m!897789 () Bool)

(assert (=> bs!72813 m!897789))

(declare-fun m!897791 () Bool)

(assert (=> bs!72813 m!897791))

(assert (=> b!629265 d!220166))

(declare-fun bs!72814 () Bool)

(declare-fun b!629333 () Bool)

(assert (= bs!72814 (and b!629333 b!629265)))

(declare-fun lambda!16671 () Int)

(assert (=> bs!72814 (= lambda!16671 lambda!16655)))

(assert (=> b!629333 true))

(declare-fun bs!72815 () Bool)

(declare-fun d!220168 () Bool)

(assert (= bs!72815 (and d!220168 b!629265)))

(declare-fun lambda!16672 () Int)

(assert (=> bs!72815 (= lambda!16672 lambda!16655)))

(declare-fun bs!72816 () Bool)

(assert (= bs!72816 (and d!220168 b!629333)))

(assert (=> bs!72816 (= lambda!16672 lambda!16671)))

(assert (=> d!220168 true))

(declare-fun b!629328 () Bool)

(declare-fun e!381836 () BalanceConc!4270)

(assert (=> b!629328 (= e!381836 (BalanceConc!4271 Empty!2129))))

(declare-fun b!629329 () Bool)

(declare-fun e!381837 () Bool)

(declare-fun lt!267303 () Token!2388)

(declare-fun isKeywordValue!0 (Token!2388 TokenValue!1366) Bool)

(assert (=> b!629329 (= e!381837 (isKeywordValue!0 lt!267303 RightBrace!1366))))

(declare-fun b!629330 () Bool)

(declare-fun e!381833 () BalanceConc!4270)

(declare-fun call!41334 () BalanceConc!4270)

(assert (=> b!629330 (= e!381833 call!41334)))

(declare-fun b!629331 () Bool)

(declare-fun append!166 (BalanceConc!4270 Int) BalanceConc!4270)

(assert (=> b!629331 (= e!381836 (append!166 (BalanceConc!4271 Empty!2129) 0))))

(declare-fun b!629332 () Bool)

(declare-fun e!381834 () BalanceConc!4270)

(assert (=> b!629332 (= e!381834 (BalanceConc!4271 Empty!2129))))

(declare-datatypes ((Unit!11560 0))(
  ( (Unit!11561) )
))
(declare-fun lt!267305 () Unit!11560)

(declare-fun lemmaConcatPreservesForall!3 (List!6531 List!6531 Int) Unit!11560)

(assert (=> b!629333 (= lt!267305 (lemmaConcatPreservesForall!3 (list!2756 (BalanceConc!4271 Empty!2129)) (Cons!6517 0 Nil!6517) lambda!16671))))

(assert (=> b!629333 (= e!381833 call!41334)))

(declare-fun b!629334 () Bool)

(assert (=> b!629334 (= e!381834 e!381833)))

(declare-fun apply!1543 (BalanceConc!4268 Int) Token!2388)

(assert (=> b!629334 (= lt!267303 (apply!1543 (tokens!1149 printableTokens!2) 0))))

(declare-fun res!272858 () Bool)

(assert (=> b!629334 (= res!272858 (isKeywordValue!0 lt!267303 LeftBrace!1366))))

(assert (=> b!629334 (=> res!272858 e!381837)))

(declare-fun c!115612 () Bool)

(assert (=> b!629334 (= c!115612 e!381837)))

(declare-fun bm!41329 () Bool)

(declare-fun c!115614 () Bool)

(assert (=> bm!41329 (= c!115614 c!115612)))

(assert (=> bm!41329 (= call!41334 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 (+ 0 1) e!381836))))

(declare-fun lt!267304 () BalanceConc!4270)

(assert (=> d!220168 (forall!1592 lt!267304 lambda!16672)))

(assert (=> d!220168 (= lt!267304 e!381834)))

(declare-fun c!115613 () Bool)

(declare-fun size!5102 (BalanceConc!4268) Int)

(assert (=> d!220168 (= c!115613 (>= 0 (size!5102 (tokens!1149 printableTokens!2))))))

(declare-fun e!381835 () Bool)

(assert (=> d!220168 e!381835))

(declare-fun res!272857 () Bool)

(assert (=> d!220168 (=> (not res!272857) (not e!381835))))

(assert (=> d!220168 (= res!272857 (>= 0 0))))

(assert (=> d!220168 (= (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)) lt!267304)))

(declare-fun b!629327 () Bool)

(assert (=> b!629327 (= e!381835 (<= 0 (size!5102 (tokens!1149 printableTokens!2))))))

(assert (= (and d!220168 res!272857) b!629327))

(assert (= (and d!220168 c!115613) b!629332))

(assert (= (and d!220168 (not c!115613)) b!629334))

(assert (= (and b!629334 (not res!272858)) b!629329))

(assert (= (and b!629334 c!115612) b!629333))

(assert (= (and b!629334 (not c!115612)) b!629330))

(assert (= (or b!629333 b!629330) bm!41329))

(assert (= (and bm!41329 c!115614) b!629331))

(assert (= (and bm!41329 (not c!115614)) b!629328))

(declare-fun m!897793 () Bool)

(assert (=> b!629327 m!897793))

(declare-fun m!897795 () Bool)

(assert (=> bm!41329 m!897795))

(declare-fun m!897797 () Bool)

(assert (=> b!629331 m!897797))

(declare-fun m!897799 () Bool)

(assert (=> b!629333 m!897799))

(assert (=> b!629333 m!897799))

(declare-fun m!897801 () Bool)

(assert (=> b!629333 m!897801))

(declare-fun m!897803 () Bool)

(assert (=> b!629334 m!897803))

(declare-fun m!897805 () Bool)

(assert (=> b!629334 m!897805))

(declare-fun m!897807 () Bool)

(assert (=> b!629329 m!897807))

(declare-fun m!897809 () Bool)

(assert (=> d!220168 m!897809))

(assert (=> d!220168 m!897793))

(assert (=> b!629265 d!220168))

(declare-fun d!220170 () Bool)

(declare-fun isBalanced!563 (Conc!2128) Bool)

(assert (=> d!220170 (= (inv!8401 (tokens!1149 printableTokens!2)) (isBalanced!563 (c!115592 (tokens!1149 printableTokens!2))))))

(declare-fun bs!72817 () Bool)

(assert (= bs!72817 d!220170))

(declare-fun m!897811 () Bool)

(assert (=> bs!72817 m!897811))

(assert (=> b!629266 d!220170))

(declare-fun d!220172 () Bool)

(declare-fun c!115620 () Bool)

(assert (=> d!220172 (= c!115620 (is-Node!2128 (c!115592 (tokens!1149 printableTokens!2))))))

(declare-fun e!381847 () Bool)

(assert (=> d!220172 (= (inv!8402 (c!115592 (tokens!1149 printableTokens!2))) e!381847)))

(declare-fun b!629349 () Bool)

(declare-fun inv!8406 (Conc!2128) Bool)

(assert (=> b!629349 (= e!381847 (inv!8406 (c!115592 (tokens!1149 printableTokens!2))))))

(declare-fun b!629350 () Bool)

(declare-fun e!381848 () Bool)

(assert (=> b!629350 (= e!381847 e!381848)))

(declare-fun res!272863 () Bool)

(assert (=> b!629350 (= res!272863 (not (is-Leaf!3310 (c!115592 (tokens!1149 printableTokens!2)))))))

(assert (=> b!629350 (=> res!272863 e!381848)))

(declare-fun b!629351 () Bool)

(declare-fun inv!8407 (Conc!2128) Bool)

(assert (=> b!629351 (= e!381848 (inv!8407 (c!115592 (tokens!1149 printableTokens!2))))))

(assert (= (and d!220172 c!115620) b!629349))

(assert (= (and d!220172 (not c!115620)) b!629350))

(assert (= (and b!629350 (not res!272863)) b!629351))

(declare-fun m!897813 () Bool)

(assert (=> b!629349 m!897813))

(declare-fun m!897815 () Bool)

(assert (=> b!629351 m!897815))

(assert (=> b!629267 d!220172))

(declare-fun d!220174 () Bool)

(declare-fun lt!267311 () Bool)

(declare-fun forall!1598 (List!6532 Int) Bool)

(declare-fun list!2757 (BalanceConc!4272) List!6532)

(assert (=> d!220174 (= lt!267311 (forall!1598 (list!2757 (BalanceConc!4273 Empty!2130)) lambda!16656))))

(declare-fun forall!1599 (Conc!2130 Int) Bool)

(assert (=> d!220174 (= lt!267311 (forall!1599 (c!115594 (BalanceConc!4273 Empty!2130)) lambda!16656))))

(assert (=> d!220174 (= (forall!1593 (BalanceConc!4273 Empty!2130) lambda!16656) lt!267311)))

(declare-fun bs!72821 () Bool)

(assert (= bs!72821 d!220174))

(declare-fun m!897827 () Bool)

(assert (=> bs!72821 m!897827))

(assert (=> bs!72821 m!897827))

(declare-fun m!897833 () Bool)

(assert (=> bs!72821 m!897833))

(declare-fun m!897835 () Bool)

(assert (=> bs!72821 m!897835))

(assert (=> b!629268 d!220174))

(declare-fun d!220176 () Bool)

(assert (=> d!220176 (= (size!5097 printableTokens!2) (size!5102 (tokens!1149 printableTokens!2)))))

(declare-fun bs!72822 () Bool)

(assert (= bs!72822 d!220176))

(assert (=> bs!72822 m!897793))

(assert (=> start!61048 d!220176))

(declare-fun d!220180 () Bool)

(declare-fun res!272870 () Bool)

(declare-fun e!381851 () Bool)

(assert (=> d!220180 (=> (not res!272870) (not e!381851))))

(assert (=> d!220180 (= res!272870 (not (isEmpty!4605 (rules!8118 printableTokens!2))))))

(assert (=> d!220180 (= (inv!8400 printableTokens!2) e!381851)))

(declare-fun b!629358 () Bool)

(declare-fun res!272871 () Bool)

(assert (=> b!629358 (=> (not res!272871) (not e!381851))))

(assert (=> b!629358 (= res!272871 (rulesInvariant!1153 Lexer!1216 (rules!8118 printableTokens!2)))))

(declare-fun b!629359 () Bool)

(declare-fun res!272872 () Bool)

(assert (=> b!629359 (=> (not res!272872) (not e!381851))))

(declare-fun rulesProduceEachTokenIndividually!561 (LexerInterface!1218 List!6529 BalanceConc!4268) Bool)

(assert (=> b!629359 (= res!272872 (rulesProduceEachTokenIndividually!561 Lexer!1216 (rules!8118 printableTokens!2) (tokens!1149 printableTokens!2)))))

(declare-fun b!629360 () Bool)

(declare-fun separableTokens!11 (LexerInterface!1218 BalanceConc!4268 List!6529) Bool)

(assert (=> b!629360 (= e!381851 (separableTokens!11 Lexer!1216 (tokens!1149 printableTokens!2) (rules!8118 printableTokens!2)))))

(assert (= (and d!220180 res!272870) b!629358))

(assert (= (and b!629358 res!272871) b!629359))

(assert (= (and b!629359 res!272872) b!629360))

(declare-fun m!897847 () Bool)

(assert (=> d!220180 m!897847))

(declare-fun m!897849 () Bool)

(assert (=> b!629358 m!897849))

(declare-fun m!897851 () Bool)

(assert (=> b!629359 m!897851))

(declare-fun m!897853 () Bool)

(assert (=> b!629360 m!897853))

(assert (=> start!61048 d!220180))

(declare-fun d!220186 () Bool)

(declare-fun res!272875 () Bool)

(declare-fun e!381854 () Bool)

(assert (=> d!220186 (=> (not res!272875) (not e!381854))))

(declare-fun rulesValid!489 (LexerInterface!1218 List!6529) Bool)

(assert (=> d!220186 (= res!272875 (rulesValid!489 Lexer!1216 lt!267278))))

(assert (=> d!220186 (= (rulesInvariant!1153 Lexer!1216 lt!267278) e!381854)))

(declare-fun b!629363 () Bool)

(declare-datatypes ((List!6538 0))(
  ( (Nil!6524) (Cons!6524 (h!11925 String!8568) (t!82843 List!6538)) )
))
(declare-fun noDuplicateTag!489 (LexerInterface!1218 List!6529 List!6538) Bool)

(assert (=> b!629363 (= e!381854 (noDuplicateTag!489 Lexer!1216 lt!267278 Nil!6524))))

(assert (= (and d!220186 res!272875) b!629363))

(declare-fun m!897855 () Bool)

(assert (=> d!220186 m!897855))

(declare-fun m!897857 () Bool)

(assert (=> b!629363 m!897857))

(assert (=> b!629263 d!220186))

(declare-fun b!629374 () Bool)

(declare-fun b_free!18397 () Bool)

(declare-fun b_next!18413 () Bool)

(assert (=> b!629374 (= b_free!18397 (not b_next!18413))))

(declare-fun tp!196413 () Bool)

(declare-fun b_and!62191 () Bool)

(assert (=> b!629374 (= tp!196413 b_and!62191)))

(declare-fun b_free!18399 () Bool)

(declare-fun b_next!18415 () Bool)

(assert (=> b!629374 (= b_free!18399 (not b_next!18415))))

(declare-fun tp!196414 () Bool)

(declare-fun b_and!62193 () Bool)

(assert (=> b!629374 (= tp!196414 b_and!62193)))

(declare-fun e!381864 () Bool)

(assert (=> b!629374 (= e!381864 (and tp!196413 tp!196414))))

(declare-fun b!629373 () Bool)

(declare-fun e!381863 () Bool)

(declare-fun inv!8397 (String!8568) Bool)

(declare-fun inv!8408 (TokenValueInjection!2484) Bool)

(assert (=> b!629373 (= e!381863 (and (inv!8397 (tag!1594 (h!11916 (rules!8118 printableTokens!2)))) (inv!8408 (transformation!1332 (h!11916 (rules!8118 printableTokens!2)))) e!381864))))

(declare-fun b!629372 () Bool)

(declare-fun e!381865 () Bool)

(declare-fun tp!196412 () Bool)

(assert (=> b!629372 (= e!381865 (and e!381863 tp!196412))))

(assert (=> b!629266 (= tp!196398 e!381865)))

(assert (= b!629373 b!629374))

(assert (= b!629372 b!629373))

(assert (= (and b!629266 (is-Cons!6515 (rules!8118 printableTokens!2))) b!629372))

(declare-fun m!897859 () Bool)

(assert (=> b!629373 m!897859))

(declare-fun m!897861 () Bool)

(assert (=> b!629373 m!897861))

(declare-fun e!381871 () Bool)

(declare-fun tp!196423 () Bool)

(declare-fun b!629383 () Bool)

(declare-fun tp!196421 () Bool)

(assert (=> b!629383 (= e!381871 (and (inv!8402 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) tp!196421 (inv!8402 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))) tp!196423))))

(declare-fun b!629385 () Bool)

(declare-fun e!381872 () Bool)

(declare-fun tp!196422 () Bool)

(assert (=> b!629385 (= e!381872 tp!196422)))

(declare-fun b!629384 () Bool)

(declare-fun inv!8409 (IArray!4257) Bool)

(assert (=> b!629384 (= e!381871 (and (inv!8409 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))) e!381872))))

(assert (=> b!629267 (= tp!196399 (and (inv!8402 (c!115592 (tokens!1149 printableTokens!2))) e!381871))))

(assert (= (and b!629267 (is-Node!2128 (c!115592 (tokens!1149 printableTokens!2)))) b!629383))

(assert (= b!629384 b!629385))

(assert (= (and b!629267 (is-Leaf!3310 (c!115592 (tokens!1149 printableTokens!2)))) b!629384))

(declare-fun m!897863 () Bool)

(assert (=> b!629383 m!897863))

(declare-fun m!897865 () Bool)

(assert (=> b!629383 m!897865))

(declare-fun m!897867 () Bool)

(assert (=> b!629384 m!897867))

(assert (=> b!629267 m!897717))

(push 1)

(assert (not d!220170))

(assert (not b!629351))

(assert (not b!629358))

(assert (not b!629267))

(assert (not b!629383))

(assert (not b!629372))

(assert (not b!629359))

(assert (not b!629384))

(assert (not b!629329))

(assert (not b!629373))

(assert (not d!220166))

(assert b_and!62191)

(assert (not b!629363))

(assert (not b_next!18415))

(assert (not d!220162))

(assert (not d!220176))

(assert (not b!629333))

(assert b_and!62193)

(assert (not d!220174))

(assert (not b!629334))

(assert (not b!629349))

(assert (not b!629331))

(assert (not d!220156))

(assert (not d!220186))

(assert (not bm!41329))

(assert (not d!220180))

(assert (not d!220168))

(assert (not b!629385))

(assert (not b!629327))

(assert (not b_next!18413))

(assert (not b!629360))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62193)

(assert b_and!62191)

(assert (not b_next!18415))

(assert (not b_next!18413))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!629419 () Bool)

(declare-fun e!381889 () Bool)

(declare-fun isEmpty!4607 (Conc!2128) Bool)

(assert (=> b!629419 (= e!381889 (not (isEmpty!4607 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))))))

(declare-fun b!629420 () Bool)

(declare-fun res!272908 () Bool)

(assert (=> b!629420 (=> (not res!272908) (not e!381889))))

(assert (=> b!629420 (= res!272908 (not (isEmpty!4607 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))))))

(declare-fun b!629421 () Bool)

(declare-fun res!272913 () Bool)

(assert (=> b!629421 (=> (not res!272913) (not e!381889))))

(assert (=> b!629421 (= res!272913 (isBalanced!563 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun b!629422 () Bool)

(declare-fun res!272912 () Bool)

(assert (=> b!629422 (=> (not res!272912) (not e!381889))))

(assert (=> b!629422 (= res!272912 (isBalanced!563 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun b!629423 () Bool)

(declare-fun res!272910 () Bool)

(assert (=> b!629423 (=> (not res!272910) (not e!381889))))

(declare-fun height!266 (Conc!2128) Int)

(assert (=> b!629423 (= res!272910 (<= (- (height!266 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) (height!266 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) 1))))

(declare-fun d!220200 () Bool)

(declare-fun res!272911 () Bool)

(declare-fun e!381890 () Bool)

(assert (=> d!220200 (=> res!272911 e!381890)))

(assert (=> d!220200 (= res!272911 (not (is-Node!2128 (c!115592 (tokens!1149 printableTokens!2)))))))

(assert (=> d!220200 (= (isBalanced!563 (c!115592 (tokens!1149 printableTokens!2))) e!381890)))

(declare-fun b!629424 () Bool)

(assert (=> b!629424 (= e!381890 e!381889)))

(declare-fun res!272909 () Bool)

(assert (=> b!629424 (=> (not res!272909) (not e!381889))))

(assert (=> b!629424 (= res!272909 (<= (- 1) (- (height!266 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) (height!266 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))))

(assert (= (and d!220200 (not res!272911)) b!629424))

(assert (= (and b!629424 res!272909) b!629423))

(assert (= (and b!629423 res!272910) b!629422))

(assert (= (and b!629422 res!272912) b!629421))

(assert (= (and b!629421 res!272913) b!629420))

(assert (= (and b!629420 res!272908) b!629419))

(declare-fun m!897887 () Bool)

(assert (=> b!629422 m!897887))

(declare-fun m!897889 () Bool)

(assert (=> b!629424 m!897889))

(declare-fun m!897891 () Bool)

(assert (=> b!629424 m!897891))

(assert (=> b!629423 m!897889))

(assert (=> b!629423 m!897891))

(declare-fun m!897893 () Bool)

(assert (=> b!629419 m!897893))

(declare-fun m!897895 () Bool)

(assert (=> b!629420 m!897895))

(declare-fun m!897897 () Bool)

(assert (=> b!629421 m!897897))

(assert (=> d!220170 d!220200))

(declare-fun b!629460 () Bool)

(declare-fun e!381920 () Bool)

(assert (=> b!629460 (= e!381920 true)))

(declare-fun b!629459 () Bool)

(declare-fun e!381919 () Bool)

(assert (=> b!629459 (= e!381919 e!381920)))

(declare-fun b!629458 () Bool)

(declare-fun e!381918 () Bool)

(assert (=> b!629458 (= e!381918 e!381919)))

(declare-fun d!220202 () Bool)

(assert (=> d!220202 e!381918))

(assert (= b!629459 b!629460))

(assert (= b!629458 b!629459))

(assert (= (and d!220202 (is-Cons!6515 (rules!8118 printableTokens!2))) b!629458))

(declare-fun lambda!16679 () Int)

(declare-fun order!5029 () Int)

(declare-fun order!5027 () Int)

(declare-fun dynLambda!3656 (Int Int) Int)

(declare-fun dynLambda!3657 (Int Int) Int)

(assert (=> b!629460 (< (dynLambda!3656 order!5027 (toValue!2273 (transformation!1332 (h!11916 (rules!8118 printableTokens!2))))) (dynLambda!3657 order!5029 lambda!16679))))

(declare-fun order!5031 () Int)

(declare-fun dynLambda!3658 (Int Int) Int)

(assert (=> b!629460 (< (dynLambda!3658 order!5031 (toChars!2132 (transformation!1332 (h!11916 (rules!8118 printableTokens!2))))) (dynLambda!3657 order!5029 lambda!16679))))

(assert (=> d!220202 true))

(declare-fun e!381911 () Bool)

(assert (=> d!220202 e!381911))

(declare-fun res!272916 () Bool)

(assert (=> d!220202 (=> (not res!272916) (not e!381911))))

(declare-fun lt!267317 () Bool)

(declare-fun forall!1604 (List!6530 Int) Bool)

(declare-fun list!2760 (BalanceConc!4268) List!6530)

(assert (=> d!220202 (= res!272916 (= lt!267317 (forall!1604 (list!2760 (tokens!1149 printableTokens!2)) lambda!16679)))))

(declare-fun forall!1605 (BalanceConc!4268 Int) Bool)

(assert (=> d!220202 (= lt!267317 (forall!1605 (tokens!1149 printableTokens!2) lambda!16679))))

(assert (=> d!220202 (not (isEmpty!4605 (rules!8118 printableTokens!2)))))

(assert (=> d!220202 (= (rulesProduceEachTokenIndividually!561 Lexer!1216 (rules!8118 printableTokens!2) (tokens!1149 printableTokens!2)) lt!267317)))

(declare-fun b!629449 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!331 (LexerInterface!1218 List!6529 List!6530) Bool)

(assert (=> b!629449 (= e!381911 (= lt!267317 (rulesProduceEachTokenIndividuallyList!331 Lexer!1216 (rules!8118 printableTokens!2) (list!2760 (tokens!1149 printableTokens!2)))))))

(assert (= (and d!220202 res!272916) b!629449))

(declare-fun m!897937 () Bool)

(assert (=> d!220202 m!897937))

(assert (=> d!220202 m!897937))

(declare-fun m!897939 () Bool)

(assert (=> d!220202 m!897939))

(declare-fun m!897941 () Bool)

(assert (=> d!220202 m!897941))

(assert (=> d!220202 m!897847))

(assert (=> b!629449 m!897937))

(assert (=> b!629449 m!897937))

(declare-fun m!897943 () Bool)

(assert (=> b!629449 m!897943))

(assert (=> b!629359 d!220202))

(declare-fun d!220204 () Bool)

(assert (=> d!220204 (= (inv!8397 (tag!1594 (h!11916 (rules!8118 printableTokens!2)))) (= (mod (str.len (value!43113 (tag!1594 (h!11916 (rules!8118 printableTokens!2))))) 2) 0))))

(assert (=> b!629373 d!220204))

(declare-fun d!220206 () Bool)

(declare-fun res!272919 () Bool)

(declare-fun e!381923 () Bool)

(assert (=> d!220206 (=> (not res!272919) (not e!381923))))

(declare-fun semiInverseModEq!538 (Int Int) Bool)

(assert (=> d!220206 (= res!272919 (semiInverseModEq!538 (toChars!2132 (transformation!1332 (h!11916 (rules!8118 printableTokens!2)))) (toValue!2273 (transformation!1332 (h!11916 (rules!8118 printableTokens!2))))))))

(assert (=> d!220206 (= (inv!8408 (transformation!1332 (h!11916 (rules!8118 printableTokens!2)))) e!381923)))

(declare-fun b!629465 () Bool)

(declare-fun equivClasses!517 (Int Int) Bool)

(assert (=> b!629465 (= e!381923 (equivClasses!517 (toChars!2132 (transformation!1332 (h!11916 (rules!8118 printableTokens!2)))) (toValue!2273 (transformation!1332 (h!11916 (rules!8118 printableTokens!2))))))))

(assert (= (and d!220206 res!272919) b!629465))

(declare-fun m!897945 () Bool)

(assert (=> d!220206 m!897945))

(declare-fun m!897947 () Bool)

(assert (=> b!629465 m!897947))

(assert (=> b!629373 d!220206))

(declare-fun d!220208 () Bool)

(declare-fun res!272920 () Bool)

(declare-fun e!381924 () Bool)

(assert (=> d!220208 (=> (not res!272920) (not e!381924))))

(assert (=> d!220208 (= res!272920 (rulesValid!489 Lexer!1216 (rules!8118 printableTokens!2)))))

(assert (=> d!220208 (= (rulesInvariant!1153 Lexer!1216 (rules!8118 printableTokens!2)) e!381924)))

(declare-fun b!629466 () Bool)

(assert (=> b!629466 (= e!381924 (noDuplicateTag!489 Lexer!1216 (rules!8118 printableTokens!2) Nil!6524))))

(assert (= (and d!220208 res!272920) b!629466))

(declare-fun m!897949 () Bool)

(assert (=> d!220208 m!897949))

(declare-fun m!897951 () Bool)

(assert (=> b!629466 m!897951))

(assert (=> b!629358 d!220208))

(declare-fun d!220210 () Bool)

(declare-fun lt!267318 () Bool)

(assert (=> d!220210 (= lt!267318 (forall!1596 (list!2756 lt!267304) lambda!16672))))

(assert (=> d!220210 (= lt!267318 (forall!1597 (c!115593 lt!267304) lambda!16672))))

(assert (=> d!220210 (= (forall!1592 lt!267304 lambda!16672) lt!267318)))

(declare-fun bs!72828 () Bool)

(assert (= bs!72828 d!220210))

(declare-fun m!897953 () Bool)

(assert (=> bs!72828 m!897953))

(assert (=> bs!72828 m!897953))

(declare-fun m!897955 () Bool)

(assert (=> bs!72828 m!897955))

(declare-fun m!897957 () Bool)

(assert (=> bs!72828 m!897957))

(assert (=> d!220168 d!220210))

(declare-fun d!220212 () Bool)

(declare-fun lt!267321 () Int)

(declare-fun size!5104 (List!6530) Int)

(assert (=> d!220212 (= lt!267321 (size!5104 (list!2760 (tokens!1149 printableTokens!2))))))

(declare-fun size!5105 (Conc!2128) Int)

(assert (=> d!220212 (= lt!267321 (size!5105 (c!115592 (tokens!1149 printableTokens!2))))))

(assert (=> d!220212 (= (size!5102 (tokens!1149 printableTokens!2)) lt!267321)))

(declare-fun bs!72829 () Bool)

(assert (= bs!72829 d!220212))

(assert (=> bs!72829 m!897937))

(assert (=> bs!72829 m!897937))

(declare-fun m!897959 () Bool)

(assert (=> bs!72829 m!897959))

(declare-fun m!897961 () Bool)

(assert (=> bs!72829 m!897961))

(assert (=> d!220168 d!220212))

(declare-fun d!220214 () Bool)

(assert (=> d!220214 (= (isEmpty!4605 (rules!8118 printableTokens!2)) (is-Nil!6515 (rules!8118 printableTokens!2)))))

(assert (=> d!220180 d!220214))

(declare-fun d!220216 () Bool)

(declare-fun res!272925 () Bool)

(declare-fun e!381929 () Bool)

(assert (=> d!220216 (=> res!272925 e!381929)))

(assert (=> d!220216 (= res!272925 (is-Nil!6515 lt!267278))))

(assert (=> d!220216 (= (noDuplicateTag!489 Lexer!1216 lt!267278 Nil!6524) e!381929)))

(declare-fun b!629471 () Bool)

(declare-fun e!381930 () Bool)

(assert (=> b!629471 (= e!381929 e!381930)))

(declare-fun res!272926 () Bool)

(assert (=> b!629471 (=> (not res!272926) (not e!381930))))

(declare-fun contains!1507 (List!6538 String!8568) Bool)

(assert (=> b!629471 (= res!272926 (not (contains!1507 Nil!6524 (tag!1594 (h!11916 lt!267278)))))))

(declare-fun b!629472 () Bool)

(assert (=> b!629472 (= e!381930 (noDuplicateTag!489 Lexer!1216 (t!82819 lt!267278) (Cons!6524 (tag!1594 (h!11916 lt!267278)) Nil!6524)))))

(assert (= (and d!220216 (not res!272925)) b!629471))

(assert (= (and b!629471 res!272926) b!629472))

(declare-fun m!897963 () Bool)

(assert (=> b!629471 m!897963))

(declare-fun m!897965 () Bool)

(assert (=> b!629472 m!897965))

(assert (=> b!629363 d!220216))

(declare-fun d!220218 () Bool)

(assert (=> d!220218 (= (inv!8409 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))) (<= (size!5104 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2))))) 2147483647))))

(declare-fun bs!72830 () Bool)

(assert (= bs!72830 d!220218))

(declare-fun m!897967 () Bool)

(assert (=> bs!72830 m!897967))

(assert (=> b!629384 d!220218))

(assert (=> b!629327 d!220212))

(declare-fun d!220220 () Bool)

(declare-fun c!115624 () Bool)

(assert (=> d!220220 (= c!115624 (is-Node!2128 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun e!381931 () Bool)

(assert (=> d!220220 (= (inv!8402 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) e!381931)))

(declare-fun b!629473 () Bool)

(assert (=> b!629473 (= e!381931 (inv!8406 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun b!629474 () Bool)

(declare-fun e!381932 () Bool)

(assert (=> b!629474 (= e!381931 e!381932)))

(declare-fun res!272927 () Bool)

(assert (=> b!629474 (= res!272927 (not (is-Leaf!3310 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))))))

(assert (=> b!629474 (=> res!272927 e!381932)))

(declare-fun b!629475 () Bool)

(assert (=> b!629475 (= e!381932 (inv!8407 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))))))

(assert (= (and d!220220 c!115624) b!629473))

(assert (= (and d!220220 (not c!115624)) b!629474))

(assert (= (and b!629474 (not res!272927)) b!629475))

(declare-fun m!897969 () Bool)

(assert (=> b!629473 m!897969))

(declare-fun m!897971 () Bool)

(assert (=> b!629475 m!897971))

(assert (=> b!629383 d!220220))

(declare-fun d!220222 () Bool)

(declare-fun c!115625 () Bool)

(assert (=> d!220222 (= c!115625 (is-Node!2128 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun e!381933 () Bool)

(assert (=> d!220222 (= (inv!8402 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))) e!381933)))

(declare-fun b!629476 () Bool)

(assert (=> b!629476 (= e!381933 (inv!8406 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))

(declare-fun b!629477 () Bool)

(declare-fun e!381934 () Bool)

(assert (=> b!629477 (= e!381933 e!381934)))

(declare-fun res!272928 () Bool)

(assert (=> b!629477 (= res!272928 (not (is-Leaf!3310 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))))))

(assert (=> b!629477 (=> res!272928 e!381934)))

(declare-fun b!629478 () Bool)

(assert (=> b!629478 (= e!381934 (inv!8407 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))

(assert (= (and d!220222 c!115625) b!629476))

(assert (= (and d!220222 (not c!115625)) b!629477))

(assert (= (and b!629477 (not res!272928)) b!629478))

(declare-fun m!897973 () Bool)

(assert (=> b!629476 m!897973))

(declare-fun m!897975 () Bool)

(assert (=> b!629478 m!897975))

(assert (=> b!629383 d!220222))

(declare-fun d!220224 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!4 (LexerInterface!1218 BalanceConc!4268 Int List!6529) Bool)

(assert (=> d!220224 (= (separableTokens!11 Lexer!1216 (tokens!1149 printableTokens!2) (rules!8118 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!4 Lexer!1216 (tokens!1149 printableTokens!2) 0 (rules!8118 printableTokens!2)))))

(declare-fun bs!72831 () Bool)

(assert (= bs!72831 d!220224))

(declare-fun m!897977 () Bool)

(assert (=> bs!72831 m!897977))

(assert (=> b!629360 d!220224))

(assert (=> d!220176 d!220212))

(declare-fun d!220226 () Bool)

(declare-fun choose!511 (Token!2388 TokenValue!1366) Bool)

(assert (=> d!220226 (= (isKeywordValue!0 lt!267303 RightBrace!1366) (choose!511 lt!267303 RightBrace!1366))))

(declare-fun bs!72832 () Bool)

(assert (= bs!72832 d!220226))

(declare-fun m!897979 () Bool)

(assert (=> bs!72832 m!897979))

(assert (=> b!629329 d!220226))

(declare-fun d!220228 () Bool)

(declare-fun res!272965 () Bool)

(declare-fun e!381937 () Bool)

(assert (=> d!220228 (=> (not res!272965) (not e!381937))))

(assert (=> d!220228 (= res!272965 (= (csize!4486 (c!115592 (tokens!1149 printableTokens!2))) (+ (size!5105 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) (size!5105 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))))))))

(assert (=> d!220228 (= (inv!8406 (c!115592 (tokens!1149 printableTokens!2))) e!381937)))

(declare-fun b!629485 () Bool)

(declare-fun res!272966 () Bool)

(assert (=> b!629485 (=> (not res!272966) (not e!381937))))

(assert (=> b!629485 (= res!272966 (and (not (= (left!5217 (c!115592 (tokens!1149 printableTokens!2))) Empty!2128)) (not (= (right!5547 (c!115592 (tokens!1149 printableTokens!2))) Empty!2128))))))

(declare-fun b!629486 () Bool)

(declare-fun res!272967 () Bool)

(assert (=> b!629486 (=> (not res!272967) (not e!381937))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!629486 (= res!272967 (= (cheight!2339 (c!115592 (tokens!1149 printableTokens!2))) (+ (max!0 (height!266 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) (height!266 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) 1)))))

(declare-fun b!629487 () Bool)

(assert (=> b!629487 (= e!381937 (<= 0 (cheight!2339 (c!115592 (tokens!1149 printableTokens!2)))))))

(assert (= (and d!220228 res!272965) b!629485))

(assert (= (and b!629485 res!272966) b!629486))

(assert (= (and b!629486 res!272967) b!629487))

(declare-fun m!897981 () Bool)

(assert (=> d!220228 m!897981))

(declare-fun m!897983 () Bool)

(assert (=> d!220228 m!897983))

(assert (=> b!629486 m!897889))

(assert (=> b!629486 m!897891))

(assert (=> b!629486 m!897889))

(assert (=> b!629486 m!897891))

(declare-fun m!897985 () Bool)

(assert (=> b!629486 m!897985))

(assert (=> b!629349 d!220228))

(declare-fun d!220230 () Bool)

(declare-fun res!272972 () Bool)

(declare-fun e!381942 () Bool)

(assert (=> d!220230 (=> res!272972 e!381942)))

(assert (=> d!220230 (= res!272972 (is-Nil!6517 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))))))

(assert (=> d!220230 (= (forall!1596 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))) lambda!16655) e!381942)))

(declare-fun b!629492 () Bool)

(declare-fun e!381943 () Bool)

(assert (=> b!629492 (= e!381942 e!381943)))

(declare-fun res!272973 () Bool)

(assert (=> b!629492 (=> (not res!272973) (not e!381943))))

(declare-fun dynLambda!3659 (Int Int) Bool)

(assert (=> b!629492 (= res!272973 (dynLambda!3659 lambda!16655 (h!11918 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))))))))

(declare-fun b!629493 () Bool)

(assert (=> b!629493 (= e!381943 (forall!1596 (t!82821 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lambda!16655))))

(assert (= (and d!220230 (not res!272972)) b!629492))

(assert (= (and b!629492 res!272973) b!629493))

(declare-fun b_lambda!24733 () Bool)

(assert (=> (not b_lambda!24733) (not b!629492)))

(declare-fun m!897987 () Bool)

(assert (=> b!629492 m!897987))

(declare-fun m!897989 () Bool)

(assert (=> b!629493 m!897989))

(assert (=> d!220166 d!220230))

(declare-fun d!220232 () Bool)

(declare-fun list!2761 (Conc!2129) List!6531)

(assert (=> d!220232 (= (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))) (list!2761 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))))))

(declare-fun bs!72833 () Bool)

(assert (= bs!72833 d!220232))

(declare-fun m!897991 () Bool)

(assert (=> bs!72833 m!897991))

(assert (=> d!220166 d!220232))

(declare-fun b!629504 () Bool)

(declare-fun e!381951 () Bool)

(declare-fun e!381950 () Bool)

(assert (=> b!629504 (= e!381951 e!381950)))

(declare-fun lt!267326 () Unit!11560)

(declare-fun lemmaForallConcat!41 (List!6531 List!6531 Int) Unit!11560)

(assert (=> b!629504 (= lt!267326 (lemmaForallConcat!41 (list!2761 (left!5218 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))))) (list!2761 (right!5548 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))))) lambda!16655))))

(declare-fun res!272979 () Bool)

(assert (=> b!629504 (= res!272979 (forall!1597 (left!5218 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lambda!16655))))

(assert (=> b!629504 (=> (not res!272979) (not e!381950))))

(declare-fun b!629505 () Bool)

(assert (=> b!629505 (= e!381950 (forall!1597 (right!5548 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lambda!16655))))

(declare-fun lt!267327 () Bool)

(declare-fun d!220234 () Bool)

(assert (=> d!220234 (= lt!267327 (forall!1596 (list!2761 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lambda!16655))))

(declare-fun e!381952 () Bool)

(assert (=> d!220234 (= lt!267327 e!381952)))

(declare-fun res!272978 () Bool)

(assert (=> d!220234 (=> res!272978 e!381952)))

(assert (=> d!220234 (= res!272978 (is-Empty!2129 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))))))

(assert (=> d!220234 (= (forall!1597 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))) lambda!16655) lt!267327)))

(declare-fun b!629503 () Bool)

(declare-fun forall!1606 (IArray!4259 Int) Bool)

(assert (=> b!629503 (= e!381951 (forall!1606 (xs!4770 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lambda!16655))))

(declare-fun b!629502 () Bool)

(assert (=> b!629502 (= e!381952 e!381951)))

(declare-fun c!115628 () Bool)

(assert (=> b!629502 (= c!115628 (is-Leaf!3311 (c!115593 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))))))

(assert (= (and d!220234 (not res!272978)) b!629502))

(assert (= (and b!629502 c!115628) b!629503))

(assert (= (and b!629502 (not c!115628)) b!629504))

(assert (= (and b!629504 res!272979) b!629505))

(declare-fun m!897993 () Bool)

(assert (=> b!629504 m!897993))

(declare-fun m!897995 () Bool)

(assert (=> b!629504 m!897995))

(assert (=> b!629504 m!897993))

(assert (=> b!629504 m!897995))

(declare-fun m!897997 () Bool)

(assert (=> b!629504 m!897997))

(declare-fun m!897999 () Bool)

(assert (=> b!629504 m!897999))

(declare-fun m!898001 () Bool)

(assert (=> b!629505 m!898001))

(assert (=> d!220234 m!897991))

(assert (=> d!220234 m!897991))

(declare-fun m!898003 () Bool)

(assert (=> d!220234 m!898003))

(declare-fun m!898005 () Bool)

(assert (=> b!629503 m!898005))

(assert (=> d!220166 d!220234))

(declare-fun d!220236 () Bool)

(declare-fun ++!1786 (List!6531 List!6531) List!6531)

(assert (=> d!220236 (forall!1596 (++!1786 (list!2756 (BalanceConc!4271 Empty!2129)) (Cons!6517 0 Nil!6517)) lambda!16671)))

(declare-fun lt!267330 () Unit!11560)

(declare-fun choose!4575 (List!6531 List!6531 Int) Unit!11560)

(assert (=> d!220236 (= lt!267330 (choose!4575 (list!2756 (BalanceConc!4271 Empty!2129)) (Cons!6517 0 Nil!6517) lambda!16671))))

(assert (=> d!220236 (forall!1596 (list!2756 (BalanceConc!4271 Empty!2129)) lambda!16671)))

(assert (=> d!220236 (= (lemmaConcatPreservesForall!3 (list!2756 (BalanceConc!4271 Empty!2129)) (Cons!6517 0 Nil!6517) lambda!16671) lt!267330)))

(declare-fun bs!72834 () Bool)

(assert (= bs!72834 d!220236))

(assert (=> bs!72834 m!897799))

(declare-fun m!898007 () Bool)

(assert (=> bs!72834 m!898007))

(assert (=> bs!72834 m!898007))

(declare-fun m!898009 () Bool)

(assert (=> bs!72834 m!898009))

(assert (=> bs!72834 m!897799))

(declare-fun m!898011 () Bool)

(assert (=> bs!72834 m!898011))

(assert (=> bs!72834 m!897799))

(declare-fun m!898013 () Bool)

(assert (=> bs!72834 m!898013))

(assert (=> b!629333 d!220236))

(declare-fun d!220238 () Bool)

(assert (=> d!220238 (= (list!2756 (BalanceConc!4271 Empty!2129)) (list!2761 (c!115593 (BalanceConc!4271 Empty!2129))))))

(declare-fun bs!72835 () Bool)

(assert (= bs!72835 d!220238))

(declare-fun m!898015 () Bool)

(assert (=> bs!72835 m!898015))

(assert (=> b!629333 d!220238))

(declare-fun d!220240 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!120) Regex!1666)

(declare-datatypes ((StringLiteralValueInjection!40 0))(
  ( (StringLiteralValueInjection!41) )
))
(declare-fun injection!8 (StringLiteralValueInjection!40) TokenValueInjection!2484)

(assert (=> d!220240 (= (jsonstringRule!0 JsonLexer!121) (Rule!2465 (jsonStringRe!0 JsonLexer!121) (String!8569 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!41)))))

(declare-fun bs!72836 () Bool)

(assert (= bs!72836 d!220240))

(declare-fun m!898017 () Bool)

(assert (=> bs!72836 m!898017))

(declare-fun m!898019 () Bool)

(assert (=> bs!72836 m!898019))

(assert (=> d!220162 d!220240))

(declare-fun d!220242 () Bool)

(declare-fun falseRe!0 (JsonLexer!120) Regex!1666)

(declare-datatypes ((KeywordValueInjection!20 0))(
  ( (KeywordValueInjection!21) )
))
(declare-fun injection!9 (KeywordValueInjection!20) TokenValueInjection!2484)

(assert (=> d!220242 (= (falseRule!0 JsonLexer!121) (Rule!2465 (falseRe!0 JsonLexer!121) (String!8569 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72837 () Bool)

(assert (= bs!72837 d!220242))

(declare-fun m!898021 () Bool)

(assert (=> bs!72837 m!898021))

(declare-fun m!898023 () Bool)

(assert (=> bs!72837 m!898023))

(assert (=> d!220162 d!220242))

(declare-fun d!220244 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220244 (= (lBracketRule!0 JsonLexer!121) (Rule!2465 (lBracketRe!0 JsonLexer!121) (String!8569 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72838 () Bool)

(assert (= bs!72838 d!220244))

(declare-fun m!898025 () Bool)

(assert (=> bs!72838 m!898025))

(assert (=> bs!72838 m!898023))

(assert (=> d!220162 d!220244))

(declare-fun d!220246 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220246 (= (rBracketRule!0 JsonLexer!121) (Rule!2465 (rBracketRe!0 JsonLexer!121) (String!8569 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72839 () Bool)

(assert (= bs!72839 d!220246))

(declare-fun m!898027 () Bool)

(assert (=> bs!72839 m!898027))

(assert (=> bs!72839 m!898023))

(assert (=> d!220162 d!220246))

(declare-fun d!220248 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220248 (= (lBraceRule!0 JsonLexer!121) (Rule!2465 (lBraceRe!0 JsonLexer!121) (String!8569 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72840 () Bool)

(assert (= bs!72840 d!220248))

(declare-fun m!898029 () Bool)

(assert (=> bs!72840 m!898029))

(assert (=> bs!72840 m!898023))

(assert (=> d!220162 d!220248))

(declare-fun d!220250 () Bool)

(declare-fun nullRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220250 (= (nullRule!0 JsonLexer!121) (Rule!2465 (nullRe!0 JsonLexer!121) (String!8569 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72841 () Bool)

(assert (= bs!72841 d!220250))

(declare-fun m!898031 () Bool)

(assert (=> bs!72841 m!898031))

(assert (=> bs!72841 m!898023))

(assert (=> d!220162 d!220250))

(declare-fun d!220252 () Bool)

(declare-fun commaRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220252 (= (commaRule!0 JsonLexer!121) (Rule!2465 (commaRe!0 JsonLexer!121) (String!8569 "ccoommmmaa") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72842 () Bool)

(assert (= bs!72842 d!220252))

(declare-fun m!898033 () Bool)

(assert (=> bs!72842 m!898033))

(assert (=> bs!72842 m!898023))

(assert (=> d!220162 d!220252))

(declare-fun d!220254 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220254 (= (rBraceRule!0 JsonLexer!121) (Rule!2465 (rBraceRe!0 JsonLexer!121) (String!8569 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72843 () Bool)

(assert (= bs!72843 d!220254))

(declare-fun m!898035 () Bool)

(assert (=> bs!72843 m!898035))

(assert (=> bs!72843 m!898023))

(assert (=> d!220162 d!220254))

(declare-fun d!220256 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!120) Regex!1666)

(declare-datatypes ((WhitespaceValueInjection!16 0))(
  ( (WhitespaceValueInjection!17) )
))
(declare-fun injection!7 (WhitespaceValueInjection!16) TokenValueInjection!2484)

(assert (=> d!220256 (= (whitespaceRule!0 JsonLexer!121) (Rule!2465 (wsCharRe!0 JsonLexer!121) (String!8569 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!17)))))

(declare-fun bs!72845 () Bool)

(assert (= bs!72845 d!220256))

(declare-fun m!898043 () Bool)

(assert (=> bs!72845 m!898043))

(declare-fun m!898045 () Bool)

(assert (=> bs!72845 m!898045))

(assert (=> d!220162 d!220256))

(declare-fun d!220262 () Bool)

(declare-fun eofRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220262 (= (eofRule!0 JsonLexer!121) (Rule!2465 (eofRe!0 JsonLexer!121) (String!8569 "eeooff") false (injection!7 WhitespaceValueInjection!17)))))

(declare-fun bs!72846 () Bool)

(assert (= bs!72846 d!220262))

(declare-fun m!898047 () Bool)

(assert (=> bs!72846 m!898047))

(assert (=> bs!72846 m!898045))

(assert (=> d!220162 d!220262))

(declare-fun d!220264 () Bool)

(declare-fun trueRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220264 (= (trueRule!0 JsonLexer!121) (Rule!2465 (trueRe!0 JsonLexer!121) (String!8569 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72847 () Bool)

(assert (= bs!72847 d!220264))

(declare-fun m!898049 () Bool)

(assert (=> bs!72847 m!898049))

(assert (=> bs!72847 m!898023))

(assert (=> d!220162 d!220264))

(declare-fun d!220266 () Bool)

(declare-fun colonRe!0 (JsonLexer!120) Regex!1666)

(assert (=> d!220266 (= (colonRule!0 JsonLexer!121) (Rule!2465 (colonRe!0 JsonLexer!121) (String!8569 "ccoolloonn") false (injection!9 KeywordValueInjection!21)))))

(declare-fun bs!72848 () Bool)

(assert (= bs!72848 d!220266))

(declare-fun m!898051 () Bool)

(assert (=> bs!72848 m!898051))

(assert (=> bs!72848 m!898023))

(assert (=> d!220162 d!220266))

(declare-fun d!220268 () Bool)

(declare-fun intRe!0 (JsonLexer!120) Regex!1666)

(declare-datatypes ((IntegerValueInjection!20 0))(
  ( (IntegerValueInjection!21) )
))
(declare-fun injection!5 (IntegerValueInjection!20) TokenValueInjection!2484)

(assert (=> d!220268 (= (integerLiteralRule!0 JsonLexer!121) (Rule!2465 (intRe!0 JsonLexer!121) (String!8569 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!21)))))

(declare-fun bs!72849 () Bool)

(assert (= bs!72849 d!220268))

(declare-fun m!898053 () Bool)

(assert (=> bs!72849 m!898053))

(declare-fun m!898055 () Bool)

(assert (=> bs!72849 m!898055))

(assert (=> d!220162 d!220268))

(declare-fun d!220270 () Bool)

(declare-fun floatRe!0 (JsonLexer!120) Regex!1666)

(declare-datatypes ((FloatLiteralValueInjection!16 0))(
  ( (FloatLiteralValueInjection!17) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!16) TokenValueInjection!2484)

(assert (=> d!220270 (= (floatLiteralRule!0 JsonLexer!121) (Rule!2465 (floatRe!0 JsonLexer!121) (String!8569 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!17)))))

(declare-fun bs!72850 () Bool)

(assert (= bs!72850 d!220270))

(declare-fun m!898057 () Bool)

(assert (=> bs!72850 m!898057))

(declare-fun m!898059 () Bool)

(assert (=> bs!72850 m!898059))

(assert (=> d!220162 d!220270))

(declare-fun d!220272 () Bool)

(declare-fun e!381955 () Bool)

(assert (=> d!220272 e!381955))

(declare-fun res!272982 () Bool)

(assert (=> d!220272 (=> (not res!272982) (not e!381955))))

(declare-fun isBalanced!565 (Conc!2129) Bool)

(declare-fun append!168 (Conc!2129 Int) Conc!2129)

(assert (=> d!220272 (= res!272982 (isBalanced!565 (append!168 (c!115593 (BalanceConc!4271 Empty!2129)) 0)))))

(declare-fun lt!267336 () BalanceConc!4270)

(assert (=> d!220272 (= lt!267336 (BalanceConc!4271 (append!168 (c!115593 (BalanceConc!4271 Empty!2129)) 0)))))

(assert (=> d!220272 (= (append!166 (BalanceConc!4271 Empty!2129) 0) lt!267336)))

(declare-fun b!629508 () Bool)

(declare-fun $colon+!30 (List!6531 Int) List!6531)

(assert (=> b!629508 (= e!381955 (= (list!2756 lt!267336) ($colon+!30 (list!2756 (BalanceConc!4271 Empty!2129)) 0)))))

(assert (= (and d!220272 res!272982) b!629508))

(declare-fun m!898061 () Bool)

(assert (=> d!220272 m!898061))

(assert (=> d!220272 m!898061))

(declare-fun m!898063 () Bool)

(assert (=> d!220272 m!898063))

(declare-fun m!898065 () Bool)

(assert (=> b!629508 m!898065))

(assert (=> b!629508 m!897799))

(assert (=> b!629508 m!897799))

(declare-fun m!898067 () Bool)

(assert (=> b!629508 m!898067))

(assert (=> b!629331 d!220272))

(declare-fun d!220274 () Bool)

(declare-fun res!272987 () Bool)

(declare-fun e!381958 () Bool)

(assert (=> d!220274 (=> (not res!272987) (not e!381958))))

(declare-fun list!2762 (IArray!4257) List!6530)

(assert (=> d!220274 (= res!272987 (<= (size!5104 (list!2762 (xs!4769 (c!115592 (tokens!1149 printableTokens!2))))) 512))))

(assert (=> d!220274 (= (inv!8407 (c!115592 (tokens!1149 printableTokens!2))) e!381958)))

(declare-fun b!629513 () Bool)

(declare-fun res!272988 () Bool)

(assert (=> b!629513 (=> (not res!272988) (not e!381958))))

(assert (=> b!629513 (= res!272988 (= (csize!4487 (c!115592 (tokens!1149 printableTokens!2))) (size!5104 (list!2762 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))))))))

(declare-fun b!629514 () Bool)

(assert (=> b!629514 (= e!381958 (and (> (csize!4487 (c!115592 (tokens!1149 printableTokens!2))) 0) (<= (csize!4487 (c!115592 (tokens!1149 printableTokens!2))) 512)))))

(assert (= (and d!220274 res!272987) b!629513))

(assert (= (and b!629513 res!272988) b!629514))

(declare-fun m!898069 () Bool)

(assert (=> d!220274 m!898069))

(assert (=> d!220274 m!898069))

(declare-fun m!898071 () Bool)

(assert (=> d!220274 m!898071))

(assert (=> b!629513 m!898069))

(assert (=> b!629513 m!898069))

(assert (=> b!629513 m!898071))

(assert (=> b!629351 d!220274))

(declare-fun bs!72851 () Bool)

(declare-fun b!629521 () Bool)

(assert (= bs!72851 (and b!629521 b!629265)))

(declare-fun lambda!16680 () Int)

(assert (=> bs!72851 (= lambda!16680 lambda!16655)))

(declare-fun bs!72852 () Bool)

(assert (= bs!72852 (and b!629521 b!629333)))

(assert (=> bs!72852 (= lambda!16680 lambda!16671)))

(declare-fun bs!72853 () Bool)

(assert (= bs!72853 (and b!629521 d!220168)))

(assert (=> bs!72853 (= lambda!16680 lambda!16672)))

(assert (=> b!629521 true))

(declare-fun bs!72854 () Bool)

(declare-fun d!220276 () Bool)

(assert (= bs!72854 (and d!220276 b!629265)))

(declare-fun lambda!16681 () Int)

(assert (=> bs!72854 (= lambda!16681 lambda!16655)))

(declare-fun bs!72855 () Bool)

(assert (= bs!72855 (and d!220276 b!629333)))

(assert (=> bs!72855 (= lambda!16681 lambda!16671)))

(declare-fun bs!72856 () Bool)

(assert (= bs!72856 (and d!220276 d!220168)))

(assert (=> bs!72856 (= lambda!16681 lambda!16672)))

(declare-fun bs!72857 () Bool)

(assert (= bs!72857 (and d!220276 b!629521)))

(assert (=> bs!72857 (= lambda!16681 lambda!16680)))

(assert (=> d!220276 true))

(declare-fun b!629516 () Bool)

(declare-fun e!381962 () BalanceConc!4270)

(assert (=> b!629516 (= e!381962 e!381836)))

(declare-fun b!629517 () Bool)

(declare-fun e!381963 () Bool)

(declare-fun lt!267337 () Token!2388)

(assert (=> b!629517 (= e!381963 (isKeywordValue!0 lt!267337 RightBrace!1366))))

(declare-fun b!629518 () Bool)

(declare-fun e!381959 () BalanceConc!4270)

(declare-fun call!41336 () BalanceConc!4270)

(assert (=> b!629518 (= e!381959 call!41336)))

(declare-fun b!629519 () Bool)

(assert (=> b!629519 (= e!381962 (append!166 e!381836 (+ 0 1)))))

(declare-fun b!629520 () Bool)

(declare-fun e!381960 () BalanceConc!4270)

(assert (=> b!629520 (= e!381960 e!381836)))

(declare-fun lt!267339 () Unit!11560)

(assert (=> b!629521 (= lt!267339 (lemmaConcatPreservesForall!3 (list!2756 e!381836) (Cons!6517 (+ 0 1) Nil!6517) lambda!16680))))

(assert (=> b!629521 (= e!381959 call!41336)))

(declare-fun b!629522 () Bool)

(assert (=> b!629522 (= e!381960 e!381959)))

(assert (=> b!629522 (= lt!267337 (apply!1543 (tokens!1149 printableTokens!2) (+ 0 1)))))

(declare-fun res!272990 () Bool)

(assert (=> b!629522 (= res!272990 (isKeywordValue!0 lt!267337 LeftBrace!1366))))

(assert (=> b!629522 (=> res!272990 e!381963)))

(declare-fun c!115630 () Bool)

(assert (=> b!629522 (= c!115630 e!381963)))

(declare-fun bm!41331 () Bool)

(declare-fun c!115632 () Bool)

(assert (=> bm!41331 (= c!115632 c!115630)))

(assert (=> bm!41331 (= call!41336 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 (+ 0 1 1) e!381962))))

(declare-fun lt!267338 () BalanceConc!4270)

(assert (=> d!220276 (forall!1592 lt!267338 lambda!16681)))

(assert (=> d!220276 (= lt!267338 e!381960)))

(declare-fun c!115631 () Bool)

(assert (=> d!220276 (= c!115631 (>= (+ 0 1) (size!5102 (tokens!1149 printableTokens!2))))))

(declare-fun e!381961 () Bool)

(assert (=> d!220276 e!381961))

(declare-fun res!272989 () Bool)

(assert (=> d!220276 (=> (not res!272989) (not e!381961))))

(assert (=> d!220276 (= res!272989 (>= (+ 0 1) 0))))

(assert (=> d!220276 (= (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 (+ 0 1) e!381836) lt!267338)))

(declare-fun b!629515 () Bool)

(assert (=> b!629515 (= e!381961 (<= (+ 0 1) (size!5102 (tokens!1149 printableTokens!2))))))

(assert (= (and d!220276 res!272989) b!629515))

(assert (= (and d!220276 c!115631) b!629520))

(assert (= (and d!220276 (not c!115631)) b!629522))

(assert (= (and b!629522 (not res!272990)) b!629517))

(assert (= (and b!629522 c!115630) b!629521))

(assert (= (and b!629522 (not c!115630)) b!629518))

(assert (= (or b!629521 b!629518) bm!41331))

(assert (= (and bm!41331 c!115632) b!629519))

(assert (= (and bm!41331 (not c!115632)) b!629516))

(assert (=> b!629515 m!897793))

(declare-fun m!898073 () Bool)

(assert (=> bm!41331 m!898073))

(declare-fun m!898075 () Bool)

(assert (=> b!629519 m!898075))

(declare-fun m!898077 () Bool)

(assert (=> b!629521 m!898077))

(assert (=> b!629521 m!898077))

(declare-fun m!898079 () Bool)

(assert (=> b!629521 m!898079))

(declare-fun m!898081 () Bool)

(assert (=> b!629522 m!898081))

(declare-fun m!898083 () Bool)

(assert (=> b!629522 m!898083))

(declare-fun m!898085 () Bool)

(assert (=> b!629517 m!898085))

(declare-fun m!898087 () Bool)

(assert (=> d!220276 m!898087))

(assert (=> d!220276 m!897793))

(assert (=> bm!41329 d!220276))

(declare-fun d!220278 () Bool)

(declare-fun lt!267342 () Token!2388)

(declare-fun apply!1545 (List!6530 Int) Token!2388)

(assert (=> d!220278 (= lt!267342 (apply!1545 (list!2760 (tokens!1149 printableTokens!2)) 0))))

(declare-fun apply!1546 (Conc!2128 Int) Token!2388)

(assert (=> d!220278 (= lt!267342 (apply!1546 (c!115592 (tokens!1149 printableTokens!2)) 0))))

(declare-fun e!381966 () Bool)

(assert (=> d!220278 e!381966))

(declare-fun res!272993 () Bool)

(assert (=> d!220278 (=> (not res!272993) (not e!381966))))

(assert (=> d!220278 (= res!272993 (<= 0 0))))

(assert (=> d!220278 (= (apply!1543 (tokens!1149 printableTokens!2) 0) lt!267342)))

(declare-fun b!629525 () Bool)

(assert (=> b!629525 (= e!381966 (< 0 (size!5102 (tokens!1149 printableTokens!2))))))

(assert (= (and d!220278 res!272993) b!629525))

(assert (=> d!220278 m!897937))

(assert (=> d!220278 m!897937))

(declare-fun m!898089 () Bool)

(assert (=> d!220278 m!898089))

(declare-fun m!898091 () Bool)

(assert (=> d!220278 m!898091))

(assert (=> b!629525 m!897793))

(assert (=> b!629334 d!220278))

(declare-fun d!220280 () Bool)

(assert (=> d!220280 (= (isKeywordValue!0 lt!267303 LeftBrace!1366) (choose!511 lt!267303 LeftBrace!1366))))

(declare-fun bs!72858 () Bool)

(assert (= bs!72858 d!220280))

(declare-fun m!898093 () Bool)

(assert (=> bs!72858 m!898093))

(assert (=> b!629334 d!220280))

(assert (=> d!220156 d!220162))

(assert (=> b!629267 d!220172))

(declare-fun d!220282 () Bool)

(declare-fun res!272998 () Bool)

(declare-fun e!381971 () Bool)

(assert (=> d!220282 (=> res!272998 e!381971)))

(assert (=> d!220282 (= res!272998 (is-Nil!6518 (list!2757 (BalanceConc!4273 Empty!2130))))))

(assert (=> d!220282 (= (forall!1598 (list!2757 (BalanceConc!4273 Empty!2130)) lambda!16656) e!381971)))

(declare-fun b!629530 () Bool)

(declare-fun e!381972 () Bool)

(assert (=> b!629530 (= e!381971 e!381972)))

(declare-fun res!272999 () Bool)

(assert (=> b!629530 (=> (not res!272999) (not e!381972))))

(declare-fun dynLambda!3660 (Int PrintableTokens!46) Bool)

(assert (=> b!629530 (= res!272999 (dynLambda!3660 lambda!16656 (h!11919 (list!2757 (BalanceConc!4273 Empty!2130)))))))

(declare-fun b!629531 () Bool)

(assert (=> b!629531 (= e!381972 (forall!1598 (t!82822 (list!2757 (BalanceConc!4273 Empty!2130))) lambda!16656))))

(assert (= (and d!220282 (not res!272998)) b!629530))

(assert (= (and b!629530 res!272999) b!629531))

(declare-fun b_lambda!24735 () Bool)

(assert (=> (not b_lambda!24735) (not b!629530)))

(declare-fun m!898095 () Bool)

(assert (=> b!629530 m!898095))

(declare-fun m!898097 () Bool)

(assert (=> b!629531 m!898097))

(assert (=> d!220174 d!220282))

(declare-fun d!220284 () Bool)

(declare-fun list!2763 (Conc!2130) List!6532)

(assert (=> d!220284 (= (list!2757 (BalanceConc!4273 Empty!2130)) (list!2763 (c!115594 (BalanceConc!4273 Empty!2130))))))

(declare-fun bs!72859 () Bool)

(assert (= bs!72859 d!220284))

(declare-fun m!898099 () Bool)

(assert (=> bs!72859 m!898099))

(assert (=> d!220174 d!220284))

(declare-fun b!629542 () Bool)

(declare-fun e!381981 () Bool)

(declare-fun e!381979 () Bool)

(assert (=> b!629542 (= e!381981 e!381979)))

(declare-fun lt!267347 () Unit!11560)

(declare-fun lemmaForallConcat!42 (List!6532 List!6532 Int) Unit!11560)

(assert (=> b!629542 (= lt!267347 (lemmaForallConcat!42 (list!2763 (left!5219 (c!115594 (BalanceConc!4273 Empty!2130)))) (list!2763 (right!5549 (c!115594 (BalanceConc!4273 Empty!2130)))) lambda!16656))))

(declare-fun res!273004 () Bool)

(assert (=> b!629542 (= res!273004 (forall!1599 (left!5219 (c!115594 (BalanceConc!4273 Empty!2130))) lambda!16656))))

(assert (=> b!629542 (=> (not res!273004) (not e!381979))))

(declare-fun b!629540 () Bool)

(declare-fun e!381980 () Bool)

(assert (=> b!629540 (= e!381980 e!381981)))

(declare-fun c!115635 () Bool)

(assert (=> b!629540 (= c!115635 (is-Leaf!3312 (c!115594 (BalanceConc!4273 Empty!2130))))))

(declare-fun b!629541 () Bool)

(declare-fun forall!1607 (IArray!4261 Int) Bool)

(assert (=> b!629541 (= e!381981 (forall!1607 (xs!4771 (c!115594 (BalanceConc!4273 Empty!2130))) lambda!16656))))

(declare-fun b!629543 () Bool)

(assert (=> b!629543 (= e!381979 (forall!1599 (right!5549 (c!115594 (BalanceConc!4273 Empty!2130))) lambda!16656))))

(declare-fun d!220286 () Bool)

(declare-fun lt!267348 () Bool)

(assert (=> d!220286 (= lt!267348 (forall!1598 (list!2763 (c!115594 (BalanceConc!4273 Empty!2130))) lambda!16656))))

(assert (=> d!220286 (= lt!267348 e!381980)))

(declare-fun res!273005 () Bool)

(assert (=> d!220286 (=> res!273005 e!381980)))

(assert (=> d!220286 (= res!273005 (is-Empty!2130 (c!115594 (BalanceConc!4273 Empty!2130))))))

(assert (=> d!220286 (= (forall!1599 (c!115594 (BalanceConc!4273 Empty!2130)) lambda!16656) lt!267348)))

(assert (= (and d!220286 (not res!273005)) b!629540))

(assert (= (and b!629540 c!115635) b!629541))

(assert (= (and b!629540 (not c!115635)) b!629542))

(assert (= (and b!629542 res!273004) b!629543))

(declare-fun m!898101 () Bool)

(assert (=> b!629542 m!898101))

(declare-fun m!898103 () Bool)

(assert (=> b!629542 m!898103))

(assert (=> b!629542 m!898101))

(assert (=> b!629542 m!898103))

(declare-fun m!898105 () Bool)

(assert (=> b!629542 m!898105))

(declare-fun m!898107 () Bool)

(assert (=> b!629542 m!898107))

(declare-fun m!898109 () Bool)

(assert (=> b!629541 m!898109))

(declare-fun m!898111 () Bool)

(assert (=> b!629543 m!898111))

(assert (=> d!220286 m!898099))

(assert (=> d!220286 m!898099))

(declare-fun m!898113 () Bool)

(assert (=> d!220286 m!898113))

(assert (=> d!220174 d!220286))

(declare-fun d!220288 () Bool)

(assert (=> d!220288 true))

(declare-fun lt!267351 () Bool)

(declare-fun rulesValidInductive!500 (LexerInterface!1218 List!6529) Bool)

(assert (=> d!220288 (= lt!267351 (rulesValidInductive!500 Lexer!1216 lt!267278))))

(declare-fun lambda!16684 () Int)

(declare-fun forall!1608 (List!6529 Int) Bool)

(assert (=> d!220288 (= lt!267351 (forall!1608 lt!267278 lambda!16684))))

(assert (=> d!220288 (= (rulesValid!489 Lexer!1216 lt!267278) lt!267351)))

(declare-fun bs!72860 () Bool)

(assert (= bs!72860 d!220288))

(declare-fun m!898115 () Bool)

(assert (=> bs!72860 m!898115))

(declare-fun m!898117 () Bool)

(assert (=> bs!72860 m!898117))

(assert (=> d!220186 d!220288))

(declare-fun b!629559 () Bool)

(declare-fun b_free!18405 () Bool)

(declare-fun b_next!18421 () Bool)

(assert (=> b!629559 (= b_free!18405 (not b_next!18421))))

(declare-fun tp!196449 () Bool)

(declare-fun b_and!62199 () Bool)

(assert (=> b!629559 (= tp!196449 b_and!62199)))

(declare-fun b_free!18407 () Bool)

(declare-fun b_next!18423 () Bool)

(assert (=> b!629559 (= b_free!18407 (not b_next!18423))))

(declare-fun tp!196450 () Bool)

(declare-fun b_and!62201 () Bool)

(assert (=> b!629559 (= tp!196450 b_and!62201)))

(declare-fun e!381998 () Bool)

(assert (=> b!629559 (= e!381998 (and tp!196449 tp!196450))))

(declare-fun tp!196448 () Bool)

(declare-fun e!381994 () Bool)

(declare-fun b!629556 () Bool)

(declare-fun e!381997 () Bool)

(declare-fun inv!8414 (Token!2388) Bool)

(assert (=> b!629556 (= e!381994 (and (inv!8414 (h!11917 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))))) e!381997 tp!196448))))

(declare-fun b!629558 () Bool)

(declare-fun e!381995 () Bool)

(assert (=> b!629558 (= e!381995 (and (inv!8397 (tag!1594 (rule!2128 (h!11917 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))))))) (inv!8408 (transformation!1332 (rule!2128 (h!11917 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))))))) e!381998))))

(assert (=> b!629385 (= tp!196422 e!381994)))

(declare-fun b!629557 () Bool)

(declare-fun inv!21 (TokenValue!1366) Bool)

(assert (=> b!629557 (= e!381997 (and (inv!21 (value!43114 (h!11917 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2))))))) e!381995))))

(assert (= b!629558 b!629559))

(assert (= b!629557 b!629558))

(assert (= b!629556 b!629557))

(assert (= (and b!629385 (is-Cons!6516 (innerList!2186 (xs!4769 (c!115592 (tokens!1149 printableTokens!2)))))) b!629556))

(declare-fun m!898119 () Bool)

(assert (=> b!629556 m!898119))

(declare-fun m!898121 () Bool)

(assert (=> b!629558 m!898121))

(declare-fun m!898123 () Bool)

(assert (=> b!629558 m!898123))

(declare-fun m!898125 () Bool)

(assert (=> b!629557 m!898125))

(declare-fun b!629562 () Bool)

(declare-fun b_free!18409 () Bool)

(declare-fun b_next!18425 () Bool)

(assert (=> b!629562 (= b_free!18409 (not b_next!18425))))

(declare-fun tp!196452 () Bool)

(declare-fun b_and!62203 () Bool)

(assert (=> b!629562 (= tp!196452 b_and!62203)))

(declare-fun b_free!18411 () Bool)

(declare-fun b_next!18427 () Bool)

(assert (=> b!629562 (= b_free!18411 (not b_next!18427))))

(declare-fun tp!196453 () Bool)

(declare-fun b_and!62205 () Bool)

(assert (=> b!629562 (= tp!196453 b_and!62205)))

(declare-fun e!382001 () Bool)

(assert (=> b!629562 (= e!382001 (and tp!196452 tp!196453))))

(declare-fun b!629561 () Bool)

(declare-fun e!382000 () Bool)

(assert (=> b!629561 (= e!382000 (and (inv!8397 (tag!1594 (h!11916 (t!82819 (rules!8118 printableTokens!2))))) (inv!8408 (transformation!1332 (h!11916 (t!82819 (rules!8118 printableTokens!2))))) e!382001))))

(declare-fun b!629560 () Bool)

(declare-fun e!382002 () Bool)

(declare-fun tp!196451 () Bool)

(assert (=> b!629560 (= e!382002 (and e!382000 tp!196451))))

(assert (=> b!629372 (= tp!196412 e!382002)))

(assert (= b!629561 b!629562))

(assert (= b!629560 b!629561))

(assert (= (and b!629372 (is-Cons!6515 (t!82819 (rules!8118 printableTokens!2)))) b!629560))

(declare-fun m!898127 () Bool)

(assert (=> b!629561 m!898127))

(declare-fun m!898129 () Bool)

(assert (=> b!629561 m!898129))

(declare-fun tp!196456 () Bool)

(declare-fun e!382004 () Bool)

(declare-fun b!629563 () Bool)

(declare-fun tp!196454 () Bool)

(assert (=> b!629563 (= e!382004 (and (inv!8402 (left!5217 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))) tp!196454 (inv!8402 (right!5547 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))) tp!196456))))

(declare-fun b!629565 () Bool)

(declare-fun e!382005 () Bool)

(declare-fun tp!196455 () Bool)

(assert (=> b!629565 (= e!382005 tp!196455)))

(declare-fun b!629564 () Bool)

(assert (=> b!629564 (= e!382004 (and (inv!8409 (xs!4769 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))) e!382005))))

(assert (=> b!629383 (= tp!196421 (and (inv!8402 (left!5217 (c!115592 (tokens!1149 printableTokens!2)))) e!382004))))

(assert (= (and b!629383 (is-Node!2128 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))) b!629563))

(assert (= b!629564 b!629565))

(assert (= (and b!629383 (is-Leaf!3310 (left!5217 (c!115592 (tokens!1149 printableTokens!2))))) b!629564))

(declare-fun m!898131 () Bool)

(assert (=> b!629563 m!898131))

(declare-fun m!898133 () Bool)

(assert (=> b!629563 m!898133))

(declare-fun m!898135 () Bool)

(assert (=> b!629564 m!898135))

(assert (=> b!629383 m!897863))

(declare-fun b!629566 () Bool)

(declare-fun e!382008 () Bool)

(declare-fun tp!196459 () Bool)

(declare-fun tp!196457 () Bool)

(assert (=> b!629566 (= e!382008 (and (inv!8402 (left!5217 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) tp!196457 (inv!8402 (right!5547 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) tp!196459))))

(declare-fun b!629568 () Bool)

(declare-fun e!382009 () Bool)

(declare-fun tp!196458 () Bool)

(assert (=> b!629568 (= e!382009 tp!196458)))

(declare-fun b!629567 () Bool)

(assert (=> b!629567 (= e!382008 (and (inv!8409 (xs!4769 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) e!382009))))

(assert (=> b!629383 (= tp!196423 (and (inv!8402 (right!5547 (c!115592 (tokens!1149 printableTokens!2)))) e!382008))))

(assert (= (and b!629383 (is-Node!2128 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) b!629566))

(assert (= b!629567 b!629568))

(assert (= (and b!629383 (is-Leaf!3310 (right!5547 (c!115592 (tokens!1149 printableTokens!2))))) b!629567))

(declare-fun m!898137 () Bool)

(assert (=> b!629566 m!898137))

(declare-fun m!898139 () Bool)

(assert (=> b!629566 m!898139))

(declare-fun m!898141 () Bool)

(assert (=> b!629567 m!898141))

(assert (=> b!629383 m!897865))

(declare-fun b_lambda!24737 () Bool)

(assert (= b_lambda!24733 (or b!629265 b_lambda!24737)))

(declare-fun bs!72861 () Bool)

(declare-fun d!220290 () Bool)

(assert (= bs!72861 (and d!220290 b!629265)))

(assert (=> bs!72861 (= (dynLambda!3659 lambda!16655 (h!11918 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))))) (and (<= 0 (h!11918 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129))))) (< (h!11918 (list!2756 (indicesOfOpenBraces!0 (tokens!1149 printableTokens!2) lt!267277 0 (BalanceConc!4271 Empty!2129)))) lt!267277)))))

(assert (=> b!629492 d!220290))

(declare-fun b_lambda!24739 () Bool)

(assert (= b_lambda!24735 (or b!629268 b_lambda!24739)))

(declare-fun bs!72862 () Bool)

(declare-fun d!220292 () Bool)

(assert (= bs!72862 (and d!220292 b!629268)))

(assert (=> bs!72862 (= (dynLambda!3660 lambda!16656 (h!11919 (list!2757 (BalanceConc!4273 Empty!2130)))) (usesJsonRules!0 (h!11919 (list!2757 (BalanceConc!4273 Empty!2130)))))))

(declare-fun m!898143 () Bool)

(assert (=> bs!72862 m!898143))

(assert (=> b!629530 d!220292))

(push 1)

(assert (not d!220232))

(assert (not d!220242))

(assert (not b!629565))

(assert (not b!629486))

(assert (not b!629419))

(assert (not b!629525))

(assert (not b!629567))

(assert (not b!629475))

(assert (not bm!41331))

(assert (not d!220250))

(assert (not d!220240))

(assert (not b!629568))

(assert (not d!220226))

(assert (not d!220278))

(assert (not b!629515))

(assert (not b!629557))

(assert (not b!629466))

(assert (not b_lambda!24739))

(assert (not b!629449))

(assert (not b_next!18425))

(assert (not d!220264))

(assert (not b!629423))

(assert b_and!62193)

(assert (not b!629531))

(assert (not b!629564))

(assert (not b!629478))

(assert (not b!629519))

(assert (not d!220206))

(assert (not b!629383))

(assert (not b!629517))

(assert (not d!220256))

(assert (not d!220208))

(assert (not d!220246))

(assert (not b!629541))

(assert (not d!220224))

(assert (not b!629471))

(assert (not b_next!18427))

(assert (not d!220248))

(assert (not d!220202))

(assert (not b!629508))

(assert (not d!220276))

(assert (not b_lambda!24737))

(assert (not b!629504))

(assert (not d!220252))

(assert (not d!220262))

(assert (not d!220238))

(assert (not b!629505))

(assert (not d!220254))

(assert (not b!629558))

(assert b_and!62205)

(assert b_and!62199)

(assert (not d!220272))

(assert (not b!629472))

(assert (not b!629556))

(assert (not b!629493))

(assert (not d!220228))

(assert (not b!629560))

(assert (not d!220270))

(assert b_and!62203)

(assert (not b!629566))

(assert (not b_next!18421))

(assert (not b!629458))

(assert (not b!629513))

(assert (not d!220210))

(assert (not b!629424))

(assert (not d!220212))

(assert (not b!629421))

(assert (not b!629422))

(assert (not b!629543))

(assert (not d!220286))

(assert (not b_next!18423))

(assert b_and!62191)

(assert (not d!220266))

(assert (not d!220234))

(assert (not d!220244))

(assert (not b!629561))

(assert (not b!629465))

(assert (not d!220288))

(assert (not d!220274))

(assert (not d!220236))

(assert b_and!62201)

(assert (not d!220218))

(assert (not d!220284))

(assert (not b!629476))

(assert (not b!629563))

(assert (not b!629542))

(assert (not b!629503))

(assert (not b_next!18415))

(assert (not bs!72862))

(assert (not b!629522))

(assert (not b_next!18413))

(assert (not d!220268))

(assert (not d!220280))

(assert (not b!629420))

(assert (not b!629473))

(assert (not b!629521))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!18425))

(assert b_and!62193)

(assert (not b_next!18427))

(assert b_and!62203)

(assert (not b_next!18421))

(assert b_and!62201)

(assert (not b_next!18415))

(assert (not b_next!18413))

(assert b_and!62205)

(assert b_and!62199)

(assert (not b_next!18423))

(assert b_and!62191)

(check-sat)

(pop 1)

