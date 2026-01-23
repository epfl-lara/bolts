; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60832 () Bool)

(assert start!60832)

(declare-fun b!628655 () Bool)

(assert (=> b!628655 true))

(declare-fun b!628653 () Bool)

(declare-fun res!272493 () Bool)

(declare-fun e!381385 () Bool)

(assert (=> b!628653 (=> (not res!272493) (not e!381385))))

(declare-datatypes ((List!6493 0))(
  ( (Nil!6479) (Cons!6479 (h!11880 (_ BitVec 16)) (t!82649 List!6493)) )
))
(declare-datatypes ((TokenValue!1358 0))(
  ( (FloatLiteralValue!2716 (text!9951 List!6493)) (TokenValueExt!1357 (__x!4604 Int)) (Broken!6790 (value!42860 List!6493)) (Object!1371) (End!1358) (Def!1358) (Underscore!1358) (Match!1358) (Else!1358) (Error!1358) (Case!1358) (If!1358) (Extends!1358) (Abstract!1358) (Class!1358) (Val!1358) (DelimiterValue!2716 (del!1418 List!6493)) (KeywordValue!1364 (value!42861 List!6493)) (CommentValue!2716 (value!42862 List!6493)) (WhitespaceValue!2716 (value!42863 List!6493)) (IndentationValue!1358 (value!42864 List!6493)) (String!8527) (Int32!1358) (Broken!6791 (value!42865 List!6493)) (Boolean!1359) (Unit!11546) (OperatorValue!1361 (op!1418 List!6493)) (IdentifierValue!2716 (value!42866 List!6493)) (IdentifierValue!2717 (value!42867 List!6493)) (WhitespaceValue!2717 (value!42868 List!6493)) (True!2716) (False!2716) (Broken!6792 (value!42869 List!6493)) (Broken!6793 (value!42870 List!6493)) (True!2717) (RightBrace!1358) (RightBracket!1358) (Colon!1358) (Null!1358) (Comma!1358) (LeftBracket!1358) (False!2717) (LeftBrace!1358) (ImaginaryLiteralValue!1358 (text!9952 List!6493)) (StringLiteralValue!4074 (value!42871 List!6493)) (EOFValue!1358 (value!42872 List!6493)) (IdentValue!1358 (value!42873 List!6493)) (DelimiterValue!2717 (value!42874 List!6493)) (DedentValue!1358 (value!42875 List!6493)) (NewLineValue!1358 (value!42876 List!6493)) (IntegerValue!4074 (value!42877 (_ BitVec 32)) (text!9953 List!6493)) (IntegerValue!4075 (value!42878 Int) (text!9954 List!6493)) (Times!1358) (Or!1358) (Equal!1358) (Minus!1358) (Broken!6794 (value!42879 List!6493)) (And!1358) (Div!1358) (LessEqual!1358) (Mod!1358) (Concat!3016) (Not!1358) (Plus!1358) (SpaceValue!1358 (value!42880 List!6493)) (IntegerValue!4076 (value!42881 Int) (text!9955 List!6493)) (StringLiteralValue!4075 (text!9956 List!6493)) (FloatLiteralValue!2717 (text!9957 List!6493)) (BytesLiteralValue!1358 (value!42882 List!6493)) (CommentValue!2717 (value!42883 List!6493)) (StringLiteralValue!4076 (value!42884 List!6493)) (ErrorTokenValue!1358 (msg!1419 List!6493)) )
))
(declare-datatypes ((Regex!1658 0))(
  ( (ElementMatch!1658 (c!115512 (_ BitVec 16))) (Concat!3017 (regOne!3828 Regex!1658) (regTwo!3828 Regex!1658)) (EmptyExpr!1658) (Star!1658 (reg!1987 Regex!1658)) (EmptyLang!1658) (Union!1658 (regOne!3829 Regex!1658) (regTwo!3829 Regex!1658)) )
))
(declare-datatypes ((String!8528 0))(
  ( (String!8529 (value!42885 String)) )
))
(declare-datatypes ((IArray!4207 0))(
  ( (IArray!4208 (innerList!2161 List!6493)) )
))
(declare-datatypes ((Conc!2103 0))(
  ( (Node!2103 (left!5176 Conc!2103) (right!5506 Conc!2103) (csize!4436 Int) (cheight!2314 Int)) (Leaf!3281 (xs!4744 IArray!4207) (csize!4437 Int)) (Empty!2103) )
))
(declare-datatypes ((BalanceConc!4218 0))(
  ( (BalanceConc!4219 (c!115513 Conc!2103)) )
))
(declare-datatypes ((TokenValueInjection!2468 0))(
  ( (TokenValueInjection!2469 (toValue!2265 Int) (toChars!2124 Int)) )
))
(declare-datatypes ((Rule!2448 0))(
  ( (Rule!2449 (regex!1324 Regex!1658) (tag!1586 String!8528) (isSeparator!1324 Bool) (transformation!1324 TokenValueInjection!2468)) )
))
(declare-datatypes ((Token!2372 0))(
  ( (Token!2373 (value!42886 TokenValue!1358) (rule!2120 Rule!2448) (size!5071 Int) (originalCharacters!1357 List!6493)) )
))
(declare-datatypes ((List!6494 0))(
  ( (Nil!6480) (Cons!6480 (h!11881 Token!2372) (t!82650 List!6494)) )
))
(declare-datatypes ((IArray!4209 0))(
  ( (IArray!4210 (innerList!2162 List!6494)) )
))
(declare-datatypes ((Conc!2104 0))(
  ( (Node!2104 (left!5177 Conc!2104) (right!5507 Conc!2104) (csize!4438 Int) (cheight!2315 Int)) (Leaf!3282 (xs!4745 IArray!4209) (csize!4439 Int)) (Empty!2104) )
))
(declare-datatypes ((List!6495 0))(
  ( (Nil!6481) (Cons!6481 (h!11882 Rule!2448) (t!82651 List!6495)) )
))
(declare-datatypes ((BalanceConc!4220 0))(
  ( (BalanceConc!4221 (c!115514 Conc!2104)) )
))
(declare-datatypes ((PrintableTokens!30 0))(
  ( (PrintableTokens!31 (rules!8102 List!6495) (tokens!1139 BalanceConc!4220)) )
))
(declare-fun printableTokens!2 () PrintableTokens!30)

(declare-fun usesJsonRules!0 (PrintableTokens!30) Bool)

(assert (=> b!628653 (= res!272493 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!628654 () Bool)

(declare-fun tp!196243 () Bool)

(declare-fun e!381384 () Bool)

(declare-fun e!381387 () Bool)

(declare-fun inv!8351 (BalanceConc!4220) Bool)

(assert (=> b!628654 (= e!381384 (and tp!196243 (inv!8351 (tokens!1139 printableTokens!2)) e!381387))))

(declare-fun e!381386 () Bool)

(declare-fun lambda!16607 () Int)

(declare-datatypes ((List!6496 0))(
  ( (Nil!6482) (Cons!6482 (h!11883 Int) (t!82652 List!6496)) )
))
(declare-datatypes ((IArray!4211 0))(
  ( (IArray!4212 (innerList!2163 List!6496)) )
))
(declare-datatypes ((Conc!2105 0))(
  ( (Node!2105 (left!5178 Conc!2105) (right!5508 Conc!2105) (csize!4440 Int) (cheight!2316 Int)) (Leaf!3283 (xs!4746 IArray!4211) (csize!4441 Int)) (Empty!2105) )
))
(declare-datatypes ((BalanceConc!4222 0))(
  ( (BalanceConc!4223 (c!115515 Conc!2105)) )
))
(declare-fun forall!1576 (BalanceConc!4222 Int) Bool)

(assert (=> b!628655 (= e!381386 (not (forall!1576 (BalanceConc!4223 Empty!2105) lambda!16607)))))

(declare-fun b!628656 () Bool)

(declare-fun e!381383 () Bool)

(assert (=> b!628656 (= e!381383 e!381385)))

(declare-fun res!272491 () Bool)

(assert (=> b!628656 (=> (not res!272491) (not e!381385))))

(declare-fun lt!267141 () List!6495)

(declare-fun isEmpty!4596 (List!6495) Bool)

(assert (=> b!628656 (= res!272491 (not (isEmpty!4596 lt!267141)))))

(declare-datatypes ((JsonLexer!104 0))(
  ( (JsonLexer!105) )
))
(declare-fun rules!109 (JsonLexer!104) List!6495)

(assert (=> b!628656 (= lt!267141 (rules!109 JsonLexer!105))))

(declare-fun res!272492 () Bool)

(assert (=> start!60832 (=> (not res!272492) (not e!381383))))

(declare-fun lt!267143 () Int)

(assert (=> start!60832 (= res!272492 (> lt!267143 0))))

(declare-fun size!5072 (PrintableTokens!30) Int)

(assert (=> start!60832 (= lt!267143 (size!5072 printableTokens!2))))

(assert (=> start!60832 e!381383))

(declare-fun inv!8352 (PrintableTokens!30) Bool)

(assert (=> start!60832 (and (inv!8352 printableTokens!2) e!381384)))

(declare-fun b!628657 () Bool)

(assert (=> b!628657 (= e!381385 e!381386)))

(declare-fun res!272494 () Bool)

(assert (=> b!628657 (=> (not res!272494) (not e!381386))))

(declare-fun lt!267142 () Int)

(assert (=> b!628657 (= res!272494 (and (<= 0 lt!267142) (= lt!267142 lt!267143)))))

(declare-fun size!5073 (BalanceConc!4220) Int)

(assert (=> b!628657 (= lt!267142 (size!5073 (tokens!1139 printableTokens!2)))))

(declare-fun b!628658 () Bool)

(declare-fun tp!196242 () Bool)

(declare-fun inv!8353 (Conc!2104) Bool)

(assert (=> b!628658 (= e!381387 (and (inv!8353 (c!115514 (tokens!1139 printableTokens!2))) tp!196242))))

(declare-fun b!628659 () Bool)

(declare-fun res!272495 () Bool)

(assert (=> b!628659 (=> (not res!272495) (not e!381385))))

(declare-datatypes ((LexerInterface!1210 0))(
  ( (LexerInterfaceExt!1207 (__x!4605 Int)) (Lexer!1208) )
))
(declare-fun rulesInvariant!1145 (LexerInterface!1210 List!6495) Bool)

(assert (=> b!628659 (= res!272495 (rulesInvariant!1145 Lexer!1208 lt!267141))))

(assert (= (and start!60832 res!272492) b!628656))

(assert (= (and b!628656 res!272491) b!628659))

(assert (= (and b!628659 res!272495) b!628653))

(assert (= (and b!628653 res!272493) b!628657))

(assert (= (and b!628657 res!272494) b!628655))

(assert (= b!628654 b!628658))

(assert (= start!60832 b!628654))

(declare-fun m!897017 () Bool)

(assert (=> b!628659 m!897017))

(declare-fun m!897019 () Bool)

(assert (=> b!628658 m!897019))

(declare-fun m!897021 () Bool)

(assert (=> b!628655 m!897021))

(declare-fun m!897023 () Bool)

(assert (=> start!60832 m!897023))

(declare-fun m!897025 () Bool)

(assert (=> start!60832 m!897025))

(declare-fun m!897027 () Bool)

(assert (=> b!628656 m!897027))

(declare-fun m!897029 () Bool)

(assert (=> b!628656 m!897029))

(declare-fun m!897031 () Bool)

(assert (=> b!628657 m!897031))

(declare-fun m!897033 () Bool)

(assert (=> b!628653 m!897033))

(declare-fun m!897035 () Bool)

(assert (=> b!628654 m!897035))

(push 1)

(assert (not b!628656))

(assert (not b!628659))

(assert (not start!60832))

(assert (not b!628654))

(assert (not b!628655))

(assert (not b!628653))

(assert (not b!628658))

(assert (not b!628657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219934 () Bool)

(declare-fun isBalanced!560 (Conc!2104) Bool)

(assert (=> d!219934 (= (inv!8351 (tokens!1139 printableTokens!2)) (isBalanced!560 (c!115514 (tokens!1139 printableTokens!2))))))

(declare-fun bs!72733 () Bool)

(assert (= bs!72733 d!219934))

(declare-fun m!897057 () Bool)

(assert (=> bs!72733 m!897057))

(assert (=> b!628654 d!219934))

(declare-fun d!219936 () Bool)

(declare-fun res!272517 () Bool)

(declare-fun e!381405 () Bool)

(assert (=> d!219936 (=> (not res!272517) (not e!381405))))

(declare-fun rulesValid!486 (LexerInterface!1210 List!6495) Bool)

(assert (=> d!219936 (= res!272517 (rulesValid!486 Lexer!1208 lt!267141))))

(assert (=> d!219936 (= (rulesInvariant!1145 Lexer!1208 lt!267141) e!381405)))

(declare-fun b!628687 () Bool)

(declare-datatypes ((List!6501 0))(
  ( (Nil!6487) (Cons!6487 (h!11888 String!8528) (t!82672 List!6501)) )
))
(declare-fun noDuplicateTag!486 (LexerInterface!1210 List!6495 List!6501) Bool)

(assert (=> b!628687 (= e!381405 (noDuplicateTag!486 Lexer!1208 lt!267141 Nil!6487))))

(assert (= (and d!219936 res!272517) b!628687))

(declare-fun m!897059 () Bool)

(assert (=> d!219936 m!897059))

(declare-fun m!897061 () Bool)

(assert (=> b!628687 m!897061))

(assert (=> b!628659 d!219936))

(declare-fun d!219938 () Bool)

(declare-fun c!115522 () Bool)

(assert (=> d!219938 (= c!115522 (is-Node!2104 (c!115514 (tokens!1139 printableTokens!2))))))

(declare-fun e!381410 () Bool)

(assert (=> d!219938 (= (inv!8353 (c!115514 (tokens!1139 printableTokens!2))) e!381410)))

(declare-fun b!628694 () Bool)

(declare-fun inv!8357 (Conc!2104) Bool)

(assert (=> b!628694 (= e!381410 (inv!8357 (c!115514 (tokens!1139 printableTokens!2))))))

(declare-fun b!628695 () Bool)

(declare-fun e!381411 () Bool)

(assert (=> b!628695 (= e!381410 e!381411)))

(declare-fun res!272520 () Bool)

(assert (=> b!628695 (= res!272520 (not (is-Leaf!3282 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (=> b!628695 (=> res!272520 e!381411)))

(declare-fun b!628696 () Bool)

(declare-fun inv!8358 (Conc!2104) Bool)

(assert (=> b!628696 (= e!381411 (inv!8358 (c!115514 (tokens!1139 printableTokens!2))))))

(assert (= (and d!219938 c!115522) b!628694))

(assert (= (and d!219938 (not c!115522)) b!628695))

(assert (= (and b!628695 (not res!272520)) b!628696))

(declare-fun m!897063 () Bool)

(assert (=> b!628694 m!897063))

(declare-fun m!897065 () Bool)

(assert (=> b!628696 m!897065))

(assert (=> b!628658 d!219938))

(declare-fun d!219942 () Bool)

(assert (=> d!219942 (= (usesJsonRules!0 printableTokens!2) (= (rules!8102 printableTokens!2) (rules!109 JsonLexer!105)))))

(declare-fun bs!72736 () Bool)

(assert (= bs!72736 d!219942))

(assert (=> bs!72736 m!897029))

(assert (=> b!628653 d!219942))

(declare-fun d!219952 () Bool)

(assert (=> d!219952 (= (size!5072 printableTokens!2) (size!5073 (tokens!1139 printableTokens!2)))))

(declare-fun bs!72737 () Bool)

(assert (= bs!72737 d!219952))

(assert (=> bs!72737 m!897031))

(assert (=> start!60832 d!219952))

(declare-fun d!219954 () Bool)

(declare-fun res!272533 () Bool)

(declare-fun e!381423 () Bool)

(assert (=> d!219954 (=> (not res!272533) (not e!381423))))

(assert (=> d!219954 (= res!272533 (not (isEmpty!4596 (rules!8102 printableTokens!2))))))

(assert (=> d!219954 (= (inv!8352 printableTokens!2) e!381423)))

(declare-fun b!628715 () Bool)

(declare-fun res!272534 () Bool)

(assert (=> b!628715 (=> (not res!272534) (not e!381423))))

(assert (=> b!628715 (= res!272534 (rulesInvariant!1145 Lexer!1208 (rules!8102 printableTokens!2)))))

(declare-fun b!628716 () Bool)

(declare-fun res!272535 () Bool)

(assert (=> b!628716 (=> (not res!272535) (not e!381423))))

(declare-fun rulesProduceEachTokenIndividually!558 (LexerInterface!1210 List!6495 BalanceConc!4220) Bool)

(assert (=> b!628716 (= res!272535 (rulesProduceEachTokenIndividually!558 Lexer!1208 (rules!8102 printableTokens!2) (tokens!1139 printableTokens!2)))))

(declare-fun b!628717 () Bool)

(declare-fun separableTokens!8 (LexerInterface!1210 BalanceConc!4220 List!6495) Bool)

(assert (=> b!628717 (= e!381423 (separableTokens!8 Lexer!1208 (tokens!1139 printableTokens!2) (rules!8102 printableTokens!2)))))

(assert (= (and d!219954 res!272533) b!628715))

(assert (= (and b!628715 res!272534) b!628716))

(assert (= (and b!628716 res!272535) b!628717))

(declare-fun m!897077 () Bool)

(assert (=> d!219954 m!897077))

(declare-fun m!897079 () Bool)

(assert (=> b!628715 m!897079))

(declare-fun m!897081 () Bool)

(assert (=> b!628716 m!897081))

(declare-fun m!897083 () Bool)

(assert (=> b!628717 m!897083))

(assert (=> start!60832 d!219954))

(declare-fun d!219956 () Bool)

(declare-fun lt!267155 () Int)

(declare-fun size!5077 (List!6494) Int)

(declare-fun list!2748 (BalanceConc!4220) List!6494)

(assert (=> d!219956 (= lt!267155 (size!5077 (list!2748 (tokens!1139 printableTokens!2))))))

(declare-fun size!5078 (Conc!2104) Int)

(assert (=> d!219956 (= lt!267155 (size!5078 (c!115514 (tokens!1139 printableTokens!2))))))

(assert (=> d!219956 (= (size!5073 (tokens!1139 printableTokens!2)) lt!267155)))

(declare-fun bs!72738 () Bool)

(assert (= bs!72738 d!219956))

(declare-fun m!897085 () Bool)

(assert (=> bs!72738 m!897085))

(assert (=> bs!72738 m!897085))

(declare-fun m!897087 () Bool)

(assert (=> bs!72738 m!897087))

(declare-fun m!897089 () Bool)

(assert (=> bs!72738 m!897089))

(assert (=> b!628657 d!219956))

(declare-fun d!219958 () Bool)

(assert (=> d!219958 (= (isEmpty!4596 lt!267141) (is-Nil!6481 lt!267141))))

(assert (=> b!628656 d!219958))

(declare-fun d!219960 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!104) Rule!2448)

(declare-fun integerLiteralRule!0 (JsonLexer!104) Rule!2448)

(declare-fun floatLiteralRule!0 (JsonLexer!104) Rule!2448)

(declare-fun trueRule!0 (JsonLexer!104) Rule!2448)

(declare-fun falseRule!0 (JsonLexer!104) Rule!2448)

(declare-fun nullRule!0 (JsonLexer!104) Rule!2448)

(declare-fun jsonstringRule!0 (JsonLexer!104) Rule!2448)

(declare-fun lBraceRule!0 (JsonLexer!104) Rule!2448)

(declare-fun rBraceRule!0 (JsonLexer!104) Rule!2448)

(declare-fun lBracketRule!0 (JsonLexer!104) Rule!2448)

(declare-fun rBracketRule!0 (JsonLexer!104) Rule!2448)

(declare-fun colonRule!0 (JsonLexer!104) Rule!2448)

(declare-fun commaRule!0 (JsonLexer!104) Rule!2448)

(declare-fun eofRule!0 (JsonLexer!104) Rule!2448)

(assert (=> d!219960 (= (rules!109 JsonLexer!105) (Cons!6481 (whitespaceRule!0 JsonLexer!105) (Cons!6481 (integerLiteralRule!0 JsonLexer!105) (Cons!6481 (floatLiteralRule!0 JsonLexer!105) (Cons!6481 (trueRule!0 JsonLexer!105) (Cons!6481 (falseRule!0 JsonLexer!105) (Cons!6481 (nullRule!0 JsonLexer!105) (Cons!6481 (jsonstringRule!0 JsonLexer!105) (Cons!6481 (lBraceRule!0 JsonLexer!105) (Cons!6481 (rBraceRule!0 JsonLexer!105) (Cons!6481 (lBracketRule!0 JsonLexer!105) (Cons!6481 (rBracketRule!0 JsonLexer!105) (Cons!6481 (colonRule!0 JsonLexer!105) (Cons!6481 (commaRule!0 JsonLexer!105) (Cons!6481 (eofRule!0 JsonLexer!105) Nil!6481)))))))))))))))))

(declare-fun bs!72739 () Bool)

(assert (= bs!72739 d!219960))

(declare-fun m!897091 () Bool)

(assert (=> bs!72739 m!897091))

(declare-fun m!897093 () Bool)

(assert (=> bs!72739 m!897093))

(declare-fun m!897095 () Bool)

(assert (=> bs!72739 m!897095))

(declare-fun m!897097 () Bool)

(assert (=> bs!72739 m!897097))

(declare-fun m!897099 () Bool)

(assert (=> bs!72739 m!897099))

(declare-fun m!897101 () Bool)

(assert (=> bs!72739 m!897101))

(declare-fun m!897103 () Bool)

(assert (=> bs!72739 m!897103))

(declare-fun m!897105 () Bool)

(assert (=> bs!72739 m!897105))

(declare-fun m!897107 () Bool)

(assert (=> bs!72739 m!897107))

(declare-fun m!897109 () Bool)

(assert (=> bs!72739 m!897109))

(declare-fun m!897111 () Bool)

(assert (=> bs!72739 m!897111))

(declare-fun m!897113 () Bool)

(assert (=> bs!72739 m!897113))

(declare-fun m!897115 () Bool)

(assert (=> bs!72739 m!897115))

(declare-fun m!897117 () Bool)

(assert (=> bs!72739 m!897117))

(assert (=> b!628656 d!219960))

(declare-fun d!219962 () Bool)

(declare-fun lt!267158 () Bool)

(declare-fun forall!1578 (List!6496 Int) Bool)

(declare-fun list!2749 (BalanceConc!4222) List!6496)

(assert (=> d!219962 (= lt!267158 (forall!1578 (list!2749 (BalanceConc!4223 Empty!2105)) lambda!16607))))

(declare-fun forall!1579 (Conc!2105 Int) Bool)

(assert (=> d!219962 (= lt!267158 (forall!1579 (c!115515 (BalanceConc!4223 Empty!2105)) lambda!16607))))

(assert (=> d!219962 (= (forall!1576 (BalanceConc!4223 Empty!2105) lambda!16607) lt!267158)))

(declare-fun bs!72740 () Bool)

(assert (= bs!72740 d!219962))

(declare-fun m!897119 () Bool)

(assert (=> bs!72740 m!897119))

(assert (=> bs!72740 m!897119))

(declare-fun m!897121 () Bool)

(assert (=> bs!72740 m!897121))

(declare-fun m!897123 () Bool)

(assert (=> bs!72740 m!897123))

(assert (=> b!628655 d!219962))

(declare-fun b!628728 () Bool)

(declare-fun b_free!18377 () Bool)

(declare-fun b_next!18393 () Bool)

(assert (=> b!628728 (= b_free!18377 (not b_next!18393))))

(declare-fun tp!196257 () Bool)

(declare-fun b_and!62171 () Bool)

(assert (=> b!628728 (= tp!196257 b_and!62171)))

(declare-fun b_free!18379 () Bool)

(declare-fun b_next!18395 () Bool)

(assert (=> b!628728 (= b_free!18379 (not b_next!18395))))

(declare-fun tp!196258 () Bool)

(declare-fun b_and!62173 () Bool)

(assert (=> b!628728 (= tp!196258 b_and!62173)))

(declare-fun e!381432 () Bool)

(assert (=> b!628728 (= e!381432 (and tp!196257 tp!196258))))

(declare-fun b!628727 () Bool)

(declare-fun e!381433 () Bool)

(declare-fun inv!8348 (String!8528) Bool)

(declare-fun inv!8359 (TokenValueInjection!2468) Bool)

(assert (=> b!628727 (= e!381433 (and (inv!8348 (tag!1586 (h!11882 (rules!8102 printableTokens!2)))) (inv!8359 (transformation!1324 (h!11882 (rules!8102 printableTokens!2)))) e!381432))))

(declare-fun b!628726 () Bool)

(declare-fun e!381434 () Bool)

(declare-fun tp!196256 () Bool)

(assert (=> b!628726 (= e!381434 (and e!381433 tp!196256))))

(assert (=> b!628654 (= tp!196243 e!381434)))

(assert (= b!628727 b!628728))

(assert (= b!628726 b!628727))

(assert (= (and b!628654 (is-Cons!6481 (rules!8102 printableTokens!2))) b!628726))

(declare-fun m!897125 () Bool)

(assert (=> b!628727 m!897125))

(declare-fun m!897127 () Bool)

(assert (=> b!628727 m!897127))

(declare-fun b!628737 () Bool)

(declare-fun tp!196265 () Bool)

(declare-fun tp!196267 () Bool)

(declare-fun e!381440 () Bool)

(assert (=> b!628737 (= e!381440 (and (inv!8353 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) tp!196265 (inv!8353 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))) tp!196267))))

(declare-fun b!628739 () Bool)

(declare-fun e!381441 () Bool)

(declare-fun tp!196266 () Bool)

(assert (=> b!628739 (= e!381441 tp!196266)))

(declare-fun b!628738 () Bool)

(declare-fun inv!8360 (IArray!4209) Bool)

(assert (=> b!628738 (= e!381440 (and (inv!8360 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))) e!381441))))

(assert (=> b!628658 (= tp!196242 (and (inv!8353 (c!115514 (tokens!1139 printableTokens!2))) e!381440))))

(assert (= (and b!628658 (is-Node!2104 (c!115514 (tokens!1139 printableTokens!2)))) b!628737))

(assert (= b!628738 b!628739))

(assert (= (and b!628658 (is-Leaf!3282 (c!115514 (tokens!1139 printableTokens!2)))) b!628738))

(declare-fun m!897129 () Bool)

(assert (=> b!628737 m!897129))

(declare-fun m!897131 () Bool)

(assert (=> b!628737 m!897131))

(declare-fun m!897133 () Bool)

(assert (=> b!628738 m!897133))

(assert (=> b!628658 m!897019))

(push 1)

(assert b_and!62173)

(assert (not b!628716))

(assert (not b!628694))

(assert (not d!219936))

(assert (not b!628739))

(assert (not b_next!18393))

(assert (not b!628715))

(assert (not d!219962))

(assert b_and!62171)

(assert (not b!628727))

(assert (not b!628687))

(assert (not d!219942))

(assert (not d!219954))

(assert (not b_next!18395))

(assert (not d!219956))

(assert (not d!219934))

(assert (not b!628726))

(assert (not b!628696))

(assert (not b!628738))

(assert (not b!628658))

(assert (not d!219960))

(assert (not b!628737))

(assert (not b!628717))

(assert (not d!219952))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62173)

(assert b_and!62171)

(assert (not b_next!18395))

(assert (not b_next!18393))

(check-sat)

(get-model)

(pop 1)

(assert (=> b!628658 d!219938))

(declare-fun d!219966 () Bool)

(declare-fun res!272553 () Bool)

(declare-fun e!381449 () Bool)

(assert (=> d!219966 (=> res!272553 e!381449)))

(assert (=> d!219966 (= res!272553 (is-Nil!6481 lt!267141))))

(assert (=> d!219966 (= (noDuplicateTag!486 Lexer!1208 lt!267141 Nil!6487) e!381449)))

(declare-fun b!628753 () Bool)

(declare-fun e!381450 () Bool)

(assert (=> b!628753 (= e!381449 e!381450)))

(declare-fun res!272554 () Bool)

(assert (=> b!628753 (=> (not res!272554) (not e!381450))))

(declare-fun contains!1506 (List!6501 String!8528) Bool)

(assert (=> b!628753 (= res!272554 (not (contains!1506 Nil!6487 (tag!1586 (h!11882 lt!267141)))))))

(declare-fun b!628754 () Bool)

(assert (=> b!628754 (= e!381450 (noDuplicateTag!486 Lexer!1208 (t!82651 lt!267141) (Cons!6487 (tag!1586 (h!11882 lt!267141)) Nil!6487)))))

(assert (= (and d!219966 (not res!272553)) b!628753))

(assert (= (and b!628753 res!272554) b!628754))

(declare-fun m!897143 () Bool)

(assert (=> b!628753 m!897143))

(declare-fun m!897145 () Bool)

(assert (=> b!628754 m!897145))

(assert (=> b!628687 d!219966))

(assert (=> d!219952 d!219956))

(declare-fun d!219968 () Bool)

(assert (=> d!219968 (= (inv!8360 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))) (<= (size!5077 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2))))) 2147483647))))

(declare-fun bs!72741 () Bool)

(assert (= bs!72741 d!219968))

(declare-fun m!897147 () Bool)

(assert (=> bs!72741 m!897147))

(assert (=> b!628738 d!219968))

(declare-fun d!219970 () Bool)

(declare-fun res!272559 () Bool)

(declare-fun e!381453 () Bool)

(assert (=> d!219970 (=> (not res!272559) (not e!381453))))

(declare-fun list!2752 (IArray!4209) List!6494)

(assert (=> d!219970 (= res!272559 (<= (size!5077 (list!2752 (xs!4745 (c!115514 (tokens!1139 printableTokens!2))))) 512))))

(assert (=> d!219970 (= (inv!8358 (c!115514 (tokens!1139 printableTokens!2))) e!381453)))

(declare-fun b!628759 () Bool)

(declare-fun res!272560 () Bool)

(assert (=> b!628759 (=> (not res!272560) (not e!381453))))

(assert (=> b!628759 (= res!272560 (= (csize!4439 (c!115514 (tokens!1139 printableTokens!2))) (size!5077 (list!2752 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))))))))

(declare-fun b!628760 () Bool)

(assert (=> b!628760 (= e!381453 (and (> (csize!4439 (c!115514 (tokens!1139 printableTokens!2))) 0) (<= (csize!4439 (c!115514 (tokens!1139 printableTokens!2))) 512)))))

(assert (= (and d!219970 res!272559) b!628759))

(assert (= (and b!628759 res!272560) b!628760))

(declare-fun m!897149 () Bool)

(assert (=> d!219970 m!897149))

(assert (=> d!219970 m!897149))

(declare-fun m!897151 () Bool)

(assert (=> d!219970 m!897151))

(assert (=> b!628759 m!897149))

(assert (=> b!628759 m!897149))

(assert (=> b!628759 m!897151))

(assert (=> b!628696 d!219970))

(declare-fun b!628773 () Bool)

(declare-fun e!381458 () Bool)

(declare-fun isEmpty!4598 (Conc!2104) Bool)

(assert (=> b!628773 (= e!381458 (not (isEmpty!4598 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))))))

(declare-fun b!628774 () Bool)

(declare-fun res!272578 () Bool)

(assert (=> b!628774 (=> (not res!272578) (not e!381458))))

(assert (=> b!628774 (= res!272578 (isBalanced!560 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun b!628775 () Bool)

(declare-fun res!272576 () Bool)

(assert (=> b!628775 (=> (not res!272576) (not e!381458))))

(declare-fun height!265 (Conc!2104) Int)

(assert (=> b!628775 (= res!272576 (<= (- (height!265 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) (height!265 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) 1))))

(declare-fun b!628776 () Bool)

(declare-fun res!272574 () Bool)

(assert (=> b!628776 (=> (not res!272574) (not e!381458))))

(assert (=> b!628776 (= res!272574 (isBalanced!560 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun d!219974 () Bool)

(declare-fun res!272573 () Bool)

(declare-fun e!381459 () Bool)

(assert (=> d!219974 (=> res!272573 e!381459)))

(assert (=> d!219974 (= res!272573 (not (is-Node!2104 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (=> d!219974 (= (isBalanced!560 (c!115514 (tokens!1139 printableTokens!2))) e!381459)))

(declare-fun b!628777 () Bool)

(assert (=> b!628777 (= e!381459 e!381458)))

(declare-fun res!272577 () Bool)

(assert (=> b!628777 (=> (not res!272577) (not e!381458))))

(assert (=> b!628777 (= res!272577 (<= (- 1) (- (height!265 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) (height!265 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))))

(declare-fun b!628778 () Bool)

(declare-fun res!272575 () Bool)

(assert (=> b!628778 (=> (not res!272575) (not e!381458))))

(assert (=> b!628778 (= res!272575 (not (isEmpty!4598 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))))))

(assert (= (and d!219974 (not res!272573)) b!628777))

(assert (= (and b!628777 res!272577) b!628775))

(assert (= (and b!628775 res!272576) b!628776))

(assert (= (and b!628776 res!272574) b!628774))

(assert (= (and b!628774 res!272578) b!628778))

(assert (= (and b!628778 res!272575) b!628773))

(declare-fun m!897165 () Bool)

(assert (=> b!628776 m!897165))

(declare-fun m!897167 () Bool)

(assert (=> b!628773 m!897167))

(declare-fun m!897169 () Bool)

(assert (=> b!628777 m!897169))

(declare-fun m!897171 () Bool)

(assert (=> b!628777 m!897171))

(assert (=> b!628775 m!897169))

(assert (=> b!628775 m!897171))

(declare-fun m!897173 () Bool)

(assert (=> b!628774 m!897173))

(declare-fun m!897175 () Bool)

(assert (=> b!628778 m!897175))

(assert (=> d!219934 d!219974))

(declare-fun d!219982 () Bool)

(declare-fun lt!267167 () Int)

(assert (=> d!219982 (>= lt!267167 0)))

(declare-fun e!381462 () Int)

(assert (=> d!219982 (= lt!267167 e!381462)))

(declare-fun c!115528 () Bool)

(assert (=> d!219982 (= c!115528 (is-Nil!6480 (list!2748 (tokens!1139 printableTokens!2))))))

(assert (=> d!219982 (= (size!5077 (list!2748 (tokens!1139 printableTokens!2))) lt!267167)))

(declare-fun b!628783 () Bool)

(assert (=> b!628783 (= e!381462 0)))

(declare-fun b!628784 () Bool)

(assert (=> b!628784 (= e!381462 (+ 1 (size!5077 (t!82650 (list!2748 (tokens!1139 printableTokens!2))))))))

(assert (= (and d!219982 c!115528) b!628783))

(assert (= (and d!219982 (not c!115528)) b!628784))

(declare-fun m!897177 () Bool)

(assert (=> b!628784 m!897177))

(assert (=> d!219956 d!219982))

(declare-fun d!219984 () Bool)

(declare-fun list!2753 (Conc!2104) List!6494)

(assert (=> d!219984 (= (list!2748 (tokens!1139 printableTokens!2)) (list!2753 (c!115514 (tokens!1139 printableTokens!2))))))

(declare-fun bs!72745 () Bool)

(assert (= bs!72745 d!219984))

(declare-fun m!897179 () Bool)

(assert (=> bs!72745 m!897179))

(assert (=> d!219956 d!219984))

(declare-fun d!219986 () Bool)

(declare-fun lt!267170 () Int)

(assert (=> d!219986 (= lt!267170 (size!5077 (list!2753 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (=> d!219986 (= lt!267170 (ite (is-Empty!2104 (c!115514 (tokens!1139 printableTokens!2))) 0 (ite (is-Leaf!3282 (c!115514 (tokens!1139 printableTokens!2))) (csize!4439 (c!115514 (tokens!1139 printableTokens!2))) (csize!4438 (c!115514 (tokens!1139 printableTokens!2))))))))

(assert (=> d!219986 (= (size!5078 (c!115514 (tokens!1139 printableTokens!2))) lt!267170)))

(declare-fun bs!72746 () Bool)

(assert (= bs!72746 d!219986))

(assert (=> bs!72746 m!897179))

(assert (=> bs!72746 m!897179))

(declare-fun m!897181 () Bool)

(assert (=> bs!72746 m!897181))

(assert (=> d!219956 d!219986))

(declare-fun d!219988 () Bool)

(declare-fun c!115529 () Bool)

(assert (=> d!219988 (= c!115529 (is-Node!2104 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun e!381463 () Bool)

(assert (=> d!219988 (= (inv!8353 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) e!381463)))

(declare-fun b!628785 () Bool)

(assert (=> b!628785 (= e!381463 (inv!8357 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun b!628786 () Bool)

(declare-fun e!381464 () Bool)

(assert (=> b!628786 (= e!381463 e!381464)))

(declare-fun res!272579 () Bool)

(assert (=> b!628786 (= res!272579 (not (is-Leaf!3282 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))))))

(assert (=> b!628786 (=> res!272579 e!381464)))

(declare-fun b!628787 () Bool)

(assert (=> b!628787 (= e!381464 (inv!8358 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (= (and d!219988 c!115529) b!628785))

(assert (= (and d!219988 (not c!115529)) b!628786))

(assert (= (and b!628786 (not res!272579)) b!628787))

(declare-fun m!897183 () Bool)

(assert (=> b!628785 m!897183))

(declare-fun m!897185 () Bool)

(assert (=> b!628787 m!897185))

(assert (=> b!628737 d!219988))

(declare-fun d!219990 () Bool)

(declare-fun c!115530 () Bool)

(assert (=> d!219990 (= c!115530 (is-Node!2104 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun e!381465 () Bool)

(assert (=> d!219990 (= (inv!8353 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))) e!381465)))

(declare-fun b!628788 () Bool)

(assert (=> b!628788 (= e!381465 (inv!8357 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))

(declare-fun b!628789 () Bool)

(declare-fun e!381466 () Bool)

(assert (=> b!628789 (= e!381465 e!381466)))

(declare-fun res!272580 () Bool)

(assert (=> b!628789 (= res!272580 (not (is-Leaf!3282 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))))))

(assert (=> b!628789 (=> res!272580 e!381466)))

(declare-fun b!628790 () Bool)

(assert (=> b!628790 (= e!381466 (inv!8358 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (= (and d!219990 c!115530) b!628788))

(assert (= (and d!219990 (not c!115530)) b!628789))

(assert (= (and b!628789 (not res!272580)) b!628790))

(declare-fun m!897187 () Bool)

(assert (=> b!628788 m!897187))

(declare-fun m!897189 () Bool)

(assert (=> b!628790 m!897189))

(assert (=> b!628737 d!219990))

(declare-fun d!219992 () Bool)

(declare-fun res!272585 () Bool)

(declare-fun e!381471 () Bool)

(assert (=> d!219992 (=> res!272585 e!381471)))

(assert (=> d!219992 (= res!272585 (is-Nil!6482 (list!2749 (BalanceConc!4223 Empty!2105))))))

(assert (=> d!219992 (= (forall!1578 (list!2749 (BalanceConc!4223 Empty!2105)) lambda!16607) e!381471)))

(declare-fun b!628795 () Bool)

(declare-fun e!381472 () Bool)

(assert (=> b!628795 (= e!381471 e!381472)))

(declare-fun res!272586 () Bool)

(assert (=> b!628795 (=> (not res!272586) (not e!381472))))

(declare-fun dynLambda!3652 (Int Int) Bool)

(assert (=> b!628795 (= res!272586 (dynLambda!3652 lambda!16607 (h!11883 (list!2749 (BalanceConc!4223 Empty!2105)))))))

(declare-fun b!628796 () Bool)

(assert (=> b!628796 (= e!381472 (forall!1578 (t!82652 (list!2749 (BalanceConc!4223 Empty!2105))) lambda!16607))))

(assert (= (and d!219992 (not res!272585)) b!628795))

(assert (= (and b!628795 res!272586) b!628796))

(declare-fun b_lambda!24725 () Bool)

(assert (=> (not b_lambda!24725) (not b!628795)))

(declare-fun m!897191 () Bool)

(assert (=> b!628795 m!897191))

(declare-fun m!897193 () Bool)

(assert (=> b!628796 m!897193))

(assert (=> d!219962 d!219992))

(declare-fun d!219994 () Bool)

(declare-fun list!2754 (Conc!2105) List!6496)

(assert (=> d!219994 (= (list!2749 (BalanceConc!4223 Empty!2105)) (list!2754 (c!115515 (BalanceConc!4223 Empty!2105))))))

(declare-fun bs!72747 () Bool)

(assert (= bs!72747 d!219994))

(declare-fun m!897195 () Bool)

(assert (=> bs!72747 m!897195))

(assert (=> d!219962 d!219994))

(declare-fun d!219996 () Bool)

(declare-fun lt!267175 () Bool)

(assert (=> d!219996 (= lt!267175 (forall!1578 (list!2754 (c!115515 (BalanceConc!4223 Empty!2105))) lambda!16607))))

(declare-fun e!381481 () Bool)

(assert (=> d!219996 (= lt!267175 e!381481)))

(declare-fun res!272591 () Bool)

(assert (=> d!219996 (=> res!272591 e!381481)))

(assert (=> d!219996 (= res!272591 (is-Empty!2105 (c!115515 (BalanceConc!4223 Empty!2105))))))

(assert (=> d!219996 (= (forall!1579 (c!115515 (BalanceConc!4223 Empty!2105)) lambda!16607) lt!267175)))

(declare-fun b!628808 () Bool)

(declare-fun e!381479 () Bool)

(assert (=> b!628808 (= e!381479 (forall!1579 (right!5508 (c!115515 (BalanceConc!4223 Empty!2105))) lambda!16607))))

(declare-fun b!628806 () Bool)

(declare-fun e!381480 () Bool)

(declare-fun forall!1582 (IArray!4211 Int) Bool)

(assert (=> b!628806 (= e!381480 (forall!1582 (xs!4746 (c!115515 (BalanceConc!4223 Empty!2105))) lambda!16607))))

(declare-fun b!628807 () Bool)

(assert (=> b!628807 (= e!381480 e!381479)))

(declare-datatypes ((Unit!11548 0))(
  ( (Unit!11549) )
))
(declare-fun lt!267176 () Unit!11548)

(declare-fun lemmaForallConcat!40 (List!6496 List!6496 Int) Unit!11548)

(assert (=> b!628807 (= lt!267176 (lemmaForallConcat!40 (list!2754 (left!5178 (c!115515 (BalanceConc!4223 Empty!2105)))) (list!2754 (right!5508 (c!115515 (BalanceConc!4223 Empty!2105)))) lambda!16607))))

(declare-fun res!272592 () Bool)

(assert (=> b!628807 (= res!272592 (forall!1579 (left!5178 (c!115515 (BalanceConc!4223 Empty!2105))) lambda!16607))))

(assert (=> b!628807 (=> (not res!272592) (not e!381479))))

(declare-fun b!628805 () Bool)

(assert (=> b!628805 (= e!381481 e!381480)))

(declare-fun c!115533 () Bool)

(assert (=> b!628805 (= c!115533 (is-Leaf!3283 (c!115515 (BalanceConc!4223 Empty!2105))))))

(assert (= (and d!219996 (not res!272591)) b!628805))

(assert (= (and b!628805 c!115533) b!628806))

(assert (= (and b!628805 (not c!115533)) b!628807))

(assert (= (and b!628807 res!272592) b!628808))

(assert (=> d!219996 m!897195))

(assert (=> d!219996 m!897195))

(declare-fun m!897197 () Bool)

(assert (=> d!219996 m!897197))

(declare-fun m!897199 () Bool)

(assert (=> b!628808 m!897199))

(declare-fun m!897201 () Bool)

(assert (=> b!628806 m!897201))

(declare-fun m!897203 () Bool)

(assert (=> b!628807 m!897203))

(declare-fun m!897205 () Bool)

(assert (=> b!628807 m!897205))

(assert (=> b!628807 m!897203))

(assert (=> b!628807 m!897205))

(declare-fun m!897207 () Bool)

(assert (=> b!628807 m!897207))

(declare-fun m!897209 () Bool)

(assert (=> b!628807 m!897209))

(assert (=> d!219962 d!219996))

(declare-fun d!219998 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!3 (LexerInterface!1210 BalanceConc!4220 Int List!6495) Bool)

(assert (=> d!219998 (= (separableTokens!8 Lexer!1208 (tokens!1139 printableTokens!2) (rules!8102 printableTokens!2)) (tokensListTwoByTwoPredicateSeparable!3 Lexer!1208 (tokens!1139 printableTokens!2) 0 (rules!8102 printableTokens!2)))))

(declare-fun bs!72749 () Bool)

(assert (= bs!72749 d!219998))

(declare-fun m!897249 () Bool)

(assert (=> bs!72749 m!897249))

(assert (=> b!628717 d!219998))

(declare-fun d!220000 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!104) Regex!1658)

(declare-datatypes ((StringLiteralValueInjection!38 0))(
  ( (StringLiteralValueInjection!39) )
))
(declare-fun injection!8 (StringLiteralValueInjection!38) TokenValueInjection!2468)

(assert (=> d!220000 (= (jsonstringRule!0 JsonLexer!105) (Rule!2449 (jsonStringRe!0 JsonLexer!105) (String!8529 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!39)))))

(declare-fun bs!72750 () Bool)

(assert (= bs!72750 d!220000))

(declare-fun m!897251 () Bool)

(assert (=> bs!72750 m!897251))

(declare-fun m!897253 () Bool)

(assert (=> bs!72750 m!897253))

(assert (=> d!219960 d!220000))

(declare-fun d!220002 () Bool)

(declare-fun falseRe!0 (JsonLexer!104) Regex!1658)

(declare-datatypes ((KeywordValueInjection!18 0))(
  ( (KeywordValueInjection!19) )
))
(declare-fun injection!9 (KeywordValueInjection!18) TokenValueInjection!2468)

(assert (=> d!220002 (= (falseRule!0 JsonLexer!105) (Rule!2449 (falseRe!0 JsonLexer!105) (String!8529 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72751 () Bool)

(assert (= bs!72751 d!220002))

(declare-fun m!897255 () Bool)

(assert (=> bs!72751 m!897255))

(declare-fun m!897257 () Bool)

(assert (=> bs!72751 m!897257))

(assert (=> d!219960 d!220002))

(declare-fun d!220004 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220004 (= (lBracketRule!0 JsonLexer!105) (Rule!2449 (lBracketRe!0 JsonLexer!105) (String!8529 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72752 () Bool)

(assert (= bs!72752 d!220004))

(declare-fun m!897259 () Bool)

(assert (=> bs!72752 m!897259))

(assert (=> bs!72752 m!897257))

(assert (=> d!219960 d!220004))

(declare-fun d!220006 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220006 (= (rBracketRule!0 JsonLexer!105) (Rule!2449 (rBracketRe!0 JsonLexer!105) (String!8529 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72753 () Bool)

(assert (= bs!72753 d!220006))

(declare-fun m!897261 () Bool)

(assert (=> bs!72753 m!897261))

(assert (=> bs!72753 m!897257))

(assert (=> d!219960 d!220006))

(declare-fun d!220008 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220008 (= (lBraceRule!0 JsonLexer!105) (Rule!2449 (lBraceRe!0 JsonLexer!105) (String!8529 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72754 () Bool)

(assert (= bs!72754 d!220008))

(declare-fun m!897263 () Bool)

(assert (=> bs!72754 m!897263))

(assert (=> bs!72754 m!897257))

(assert (=> d!219960 d!220008))

(declare-fun d!220010 () Bool)

(declare-fun nullRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220010 (= (nullRule!0 JsonLexer!105) (Rule!2449 (nullRe!0 JsonLexer!105) (String!8529 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72755 () Bool)

(assert (= bs!72755 d!220010))

(declare-fun m!897265 () Bool)

(assert (=> bs!72755 m!897265))

(assert (=> bs!72755 m!897257))

(assert (=> d!219960 d!220010))

(declare-fun d!220012 () Bool)

(declare-fun commaRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220012 (= (commaRule!0 JsonLexer!105) (Rule!2449 (commaRe!0 JsonLexer!105) (String!8529 "ccoommmmaa") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72756 () Bool)

(assert (= bs!72756 d!220012))

(declare-fun m!897267 () Bool)

(assert (=> bs!72756 m!897267))

(assert (=> bs!72756 m!897257))

(assert (=> d!219960 d!220012))

(declare-fun d!220014 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220014 (= (rBraceRule!0 JsonLexer!105) (Rule!2449 (rBraceRe!0 JsonLexer!105) (String!8529 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72757 () Bool)

(assert (= bs!72757 d!220014))

(declare-fun m!897269 () Bool)

(assert (=> bs!72757 m!897269))

(assert (=> bs!72757 m!897257))

(assert (=> d!219960 d!220014))

(declare-fun d!220016 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!104) Regex!1658)

(declare-datatypes ((WhitespaceValueInjection!14 0))(
  ( (WhitespaceValueInjection!15) )
))
(declare-fun injection!7 (WhitespaceValueInjection!14) TokenValueInjection!2468)

(assert (=> d!220016 (= (whitespaceRule!0 JsonLexer!105) (Rule!2449 (wsCharRe!0 JsonLexer!105) (String!8529 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!15)))))

(declare-fun bs!72758 () Bool)

(assert (= bs!72758 d!220016))

(declare-fun m!897271 () Bool)

(assert (=> bs!72758 m!897271))

(declare-fun m!897273 () Bool)

(assert (=> bs!72758 m!897273))

(assert (=> d!219960 d!220016))

(declare-fun d!220018 () Bool)

(declare-fun eofRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220018 (= (eofRule!0 JsonLexer!105) (Rule!2449 (eofRe!0 JsonLexer!105) (String!8529 "eeooff") false (injection!7 WhitespaceValueInjection!15)))))

(declare-fun bs!72759 () Bool)

(assert (= bs!72759 d!220018))

(declare-fun m!897275 () Bool)

(assert (=> bs!72759 m!897275))

(assert (=> bs!72759 m!897273))

(assert (=> d!219960 d!220018))

(declare-fun d!220020 () Bool)

(declare-fun trueRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220020 (= (trueRule!0 JsonLexer!105) (Rule!2449 (trueRe!0 JsonLexer!105) (String!8529 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72760 () Bool)

(assert (= bs!72760 d!220020))

(declare-fun m!897277 () Bool)

(assert (=> bs!72760 m!897277))

(assert (=> bs!72760 m!897257))

(assert (=> d!219960 d!220020))

(declare-fun d!220022 () Bool)

(declare-fun colonRe!0 (JsonLexer!104) Regex!1658)

(assert (=> d!220022 (= (colonRule!0 JsonLexer!105) (Rule!2449 (colonRe!0 JsonLexer!105) (String!8529 "ccoolloonn") false (injection!9 KeywordValueInjection!19)))))

(declare-fun bs!72761 () Bool)

(assert (= bs!72761 d!220022))

(declare-fun m!897279 () Bool)

(assert (=> bs!72761 m!897279))

(assert (=> bs!72761 m!897257))

(assert (=> d!219960 d!220022))

(declare-fun d!220024 () Bool)

(declare-fun intRe!0 (JsonLexer!104) Regex!1658)

(declare-datatypes ((IntegerValueInjection!18 0))(
  ( (IntegerValueInjection!19) )
))
(declare-fun injection!5 (IntegerValueInjection!18) TokenValueInjection!2468)

(assert (=> d!220024 (= (integerLiteralRule!0 JsonLexer!105) (Rule!2449 (intRe!0 JsonLexer!105) (String!8529 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!19)))))

(declare-fun bs!72762 () Bool)

(assert (= bs!72762 d!220024))

(declare-fun m!897281 () Bool)

(assert (=> bs!72762 m!897281))

(declare-fun m!897283 () Bool)

(assert (=> bs!72762 m!897283))

(assert (=> d!219960 d!220024))

(declare-fun d!220026 () Bool)

(declare-fun floatRe!0 (JsonLexer!104) Regex!1658)

(declare-datatypes ((FloatLiteralValueInjection!14 0))(
  ( (FloatLiteralValueInjection!15) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!14) TokenValueInjection!2468)

(assert (=> d!220026 (= (floatLiteralRule!0 JsonLexer!105) (Rule!2449 (floatRe!0 JsonLexer!105) (String!8529 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!15)))))

(declare-fun bs!72763 () Bool)

(assert (= bs!72763 d!220026))

(declare-fun m!897285 () Bool)

(assert (=> bs!72763 m!897285))

(declare-fun m!897287 () Bool)

(assert (=> bs!72763 m!897287))

(assert (=> d!219960 d!220026))

(declare-fun d!220028 () Bool)

(declare-fun res!272621 () Bool)

(declare-fun e!381500 () Bool)

(assert (=> d!220028 (=> (not res!272621) (not e!381500))))

(assert (=> d!220028 (= res!272621 (rulesValid!486 Lexer!1208 (rules!8102 printableTokens!2)))))

(assert (=> d!220028 (= (rulesInvariant!1145 Lexer!1208 (rules!8102 printableTokens!2)) e!381500)))

(declare-fun b!628831 () Bool)

(assert (=> b!628831 (= e!381500 (noDuplicateTag!486 Lexer!1208 (rules!8102 printableTokens!2) Nil!6487))))

(assert (= (and d!220028 res!272621) b!628831))

(declare-fun m!897289 () Bool)

(assert (=> d!220028 m!897289))

(declare-fun m!897291 () Bool)

(assert (=> b!628831 m!897291))

(assert (=> b!628715 d!220028))

(declare-fun d!220030 () Bool)

(assert (=> d!220030 true))

(declare-fun lt!267185 () Bool)

(declare-fun rulesValidInductive!499 (LexerInterface!1210 List!6495) Bool)

(assert (=> d!220030 (= lt!267185 (rulesValidInductive!499 Lexer!1208 lt!267141))))

(declare-fun lambda!16613 () Int)

(declare-fun forall!1583 (List!6495 Int) Bool)

(assert (=> d!220030 (= lt!267185 (forall!1583 lt!267141 lambda!16613))))

(assert (=> d!220030 (= (rulesValid!486 Lexer!1208 lt!267141) lt!267185)))

(declare-fun bs!72779 () Bool)

(assert (= bs!72779 d!220030))

(declare-fun m!897355 () Bool)

(assert (=> bs!72779 m!897355))

(declare-fun m!897357 () Bool)

(assert (=> bs!72779 m!897357))

(assert (=> d!219936 d!220030))

(declare-fun b!628892 () Bool)

(declare-fun e!381531 () Bool)

(assert (=> b!628892 (= e!381531 true)))

(declare-fun b!628891 () Bool)

(declare-fun e!381530 () Bool)

(assert (=> b!628891 (= e!381530 e!381531)))

(declare-fun b!628890 () Bool)

(declare-fun e!381529 () Bool)

(assert (=> b!628890 (= e!381529 e!381530)))

(declare-fun d!220074 () Bool)

(assert (=> d!220074 e!381529))

(assert (= b!628891 b!628892))

(assert (= b!628890 b!628891))

(assert (= (and d!220074 (is-Cons!6481 (rules!8102 printableTokens!2))) b!628890))

(declare-fun lambda!16618 () Int)

(declare-fun order!5015 () Int)

(declare-fun order!5017 () Int)

(declare-fun dynLambda!3653 (Int Int) Int)

(declare-fun dynLambda!3654 (Int Int) Int)

(assert (=> b!628892 (< (dynLambda!3653 order!5015 (toValue!2265 (transformation!1324 (h!11882 (rules!8102 printableTokens!2))))) (dynLambda!3654 order!5017 lambda!16618))))

(declare-fun order!5019 () Int)

(declare-fun dynLambda!3655 (Int Int) Int)

(assert (=> b!628892 (< (dynLambda!3655 order!5019 (toChars!2124 (transformation!1324 (h!11882 (rules!8102 printableTokens!2))))) (dynLambda!3654 order!5017 lambda!16618))))

(assert (=> d!220074 true))

(declare-fun e!381522 () Bool)

(assert (=> d!220074 e!381522))

(declare-fun res!272659 () Bool)

(assert (=> d!220074 (=> (not res!272659) (not e!381522))))

(declare-fun lt!267190 () Bool)

(declare-fun forall!1584 (List!6494 Int) Bool)

(assert (=> d!220074 (= res!272659 (= lt!267190 (forall!1584 (list!2748 (tokens!1139 printableTokens!2)) lambda!16618)))))

(declare-fun forall!1585 (BalanceConc!4220 Int) Bool)

(assert (=> d!220074 (= lt!267190 (forall!1585 (tokens!1139 printableTokens!2) lambda!16618))))

(assert (=> d!220074 (not (isEmpty!4596 (rules!8102 printableTokens!2)))))

(assert (=> d!220074 (= (rulesProduceEachTokenIndividually!558 Lexer!1208 (rules!8102 printableTokens!2) (tokens!1139 printableTokens!2)) lt!267190)))

(declare-fun b!628881 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!330 (LexerInterface!1210 List!6495 List!6494) Bool)

(assert (=> b!628881 (= e!381522 (= lt!267190 (rulesProduceEachTokenIndividuallyList!330 Lexer!1208 (rules!8102 printableTokens!2) (list!2748 (tokens!1139 printableTokens!2)))))))

(assert (= (and d!220074 res!272659) b!628881))

(assert (=> d!220074 m!897085))

(assert (=> d!220074 m!897085))

(declare-fun m!897373 () Bool)

(assert (=> d!220074 m!897373))

(declare-fun m!897375 () Bool)

(assert (=> d!220074 m!897375))

(assert (=> d!220074 m!897077))

(assert (=> b!628881 m!897085))

(assert (=> b!628881 m!897085))

(declare-fun m!897377 () Bool)

(assert (=> b!628881 m!897377))

(assert (=> b!628716 d!220074))

(assert (=> d!219942 d!219960))

(declare-fun d!220084 () Bool)

(assert (=> d!220084 (= (inv!8348 (tag!1586 (h!11882 (rules!8102 printableTokens!2)))) (= (mod (str.len (value!42885 (tag!1586 (h!11882 (rules!8102 printableTokens!2))))) 2) 0))))

(assert (=> b!628727 d!220084))

(declare-fun d!220086 () Bool)

(declare-fun res!272662 () Bool)

(declare-fun e!381534 () Bool)

(assert (=> d!220086 (=> (not res!272662) (not e!381534))))

(declare-fun semiInverseModEq!537 (Int Int) Bool)

(assert (=> d!220086 (= res!272662 (semiInverseModEq!537 (toChars!2124 (transformation!1324 (h!11882 (rules!8102 printableTokens!2)))) (toValue!2265 (transformation!1324 (h!11882 (rules!8102 printableTokens!2))))))))

(assert (=> d!220086 (= (inv!8359 (transformation!1324 (h!11882 (rules!8102 printableTokens!2)))) e!381534)))

(declare-fun b!628897 () Bool)

(declare-fun equivClasses!516 (Int Int) Bool)

(assert (=> b!628897 (= e!381534 (equivClasses!516 (toChars!2124 (transformation!1324 (h!11882 (rules!8102 printableTokens!2)))) (toValue!2265 (transformation!1324 (h!11882 (rules!8102 printableTokens!2))))))))

(assert (= (and d!220086 res!272662) b!628897))

(declare-fun m!897379 () Bool)

(assert (=> d!220086 m!897379))

(declare-fun m!897381 () Bool)

(assert (=> b!628897 m!897381))

(assert (=> b!628727 d!220086))

(declare-fun d!220088 () Bool)

(declare-fun res!272669 () Bool)

(declare-fun e!381537 () Bool)

(assert (=> d!220088 (=> (not res!272669) (not e!381537))))

(assert (=> d!220088 (= res!272669 (= (csize!4438 (c!115514 (tokens!1139 printableTokens!2))) (+ (size!5078 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) (size!5078 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))))))))

(assert (=> d!220088 (= (inv!8357 (c!115514 (tokens!1139 printableTokens!2))) e!381537)))

(declare-fun b!628904 () Bool)

(declare-fun res!272670 () Bool)

(assert (=> b!628904 (=> (not res!272670) (not e!381537))))

(assert (=> b!628904 (= res!272670 (and (not (= (left!5177 (c!115514 (tokens!1139 printableTokens!2))) Empty!2104)) (not (= (right!5507 (c!115514 (tokens!1139 printableTokens!2))) Empty!2104))))))

(declare-fun b!628905 () Bool)

(declare-fun res!272671 () Bool)

(assert (=> b!628905 (=> (not res!272671) (not e!381537))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!628905 (= res!272671 (= (cheight!2315 (c!115514 (tokens!1139 printableTokens!2))) (+ (max!0 (height!265 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) (height!265 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) 1)))))

(declare-fun b!628906 () Bool)

(assert (=> b!628906 (= e!381537 (<= 0 (cheight!2315 (c!115514 (tokens!1139 printableTokens!2)))))))

(assert (= (and d!220088 res!272669) b!628904))

(assert (= (and b!628904 res!272670) b!628905))

(assert (= (and b!628905 res!272671) b!628906))

(declare-fun m!897383 () Bool)

(assert (=> d!220088 m!897383))

(declare-fun m!897385 () Bool)

(assert (=> d!220088 m!897385))

(assert (=> b!628905 m!897169))

(assert (=> b!628905 m!897171))

(assert (=> b!628905 m!897169))

(assert (=> b!628905 m!897171))

(declare-fun m!897387 () Bool)

(assert (=> b!628905 m!897387))

(assert (=> b!628694 d!220088))

(declare-fun d!220090 () Bool)

(assert (=> d!220090 (= (isEmpty!4596 (rules!8102 printableTokens!2)) (is-Nil!6481 (rules!8102 printableTokens!2)))))

(assert (=> d!219954 d!220090))

(declare-fun tp!196288 () Bool)

(declare-fun e!381538 () Bool)

(declare-fun tp!196286 () Bool)

(declare-fun b!628907 () Bool)

(assert (=> b!628907 (= e!381538 (and (inv!8353 (left!5177 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))) tp!196286 (inv!8353 (right!5507 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))) tp!196288))))

(declare-fun b!628909 () Bool)

(declare-fun e!381539 () Bool)

(declare-fun tp!196287 () Bool)

(assert (=> b!628909 (= e!381539 tp!196287)))

(declare-fun b!628908 () Bool)

(assert (=> b!628908 (= e!381538 (and (inv!8360 (xs!4745 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))) e!381539))))

(assert (=> b!628737 (= tp!196265 (and (inv!8353 (left!5177 (c!115514 (tokens!1139 printableTokens!2)))) e!381538))))

(assert (= (and b!628737 (is-Node!2104 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))) b!628907))

(assert (= b!628908 b!628909))

(assert (= (and b!628737 (is-Leaf!3282 (left!5177 (c!115514 (tokens!1139 printableTokens!2))))) b!628908))

(declare-fun m!897389 () Bool)

(assert (=> b!628907 m!897389))

(declare-fun m!897391 () Bool)

(assert (=> b!628907 m!897391))

(declare-fun m!897393 () Bool)

(assert (=> b!628908 m!897393))

(assert (=> b!628737 m!897129))

(declare-fun b!628910 () Bool)

(declare-fun e!381540 () Bool)

(declare-fun tp!196289 () Bool)

(declare-fun tp!196291 () Bool)

(assert (=> b!628910 (= e!381540 (and (inv!8353 (left!5177 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) tp!196289 (inv!8353 (right!5507 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) tp!196291))))

(declare-fun b!628912 () Bool)

(declare-fun e!381541 () Bool)

(declare-fun tp!196290 () Bool)

(assert (=> b!628912 (= e!381541 tp!196290)))

(declare-fun b!628911 () Bool)

(assert (=> b!628911 (= e!381540 (and (inv!8360 (xs!4745 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) e!381541))))

(assert (=> b!628737 (= tp!196267 (and (inv!8353 (right!5507 (c!115514 (tokens!1139 printableTokens!2)))) e!381540))))

(assert (= (and b!628737 (is-Node!2104 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) b!628910))

(assert (= b!628911 b!628912))

(assert (= (and b!628737 (is-Leaf!3282 (right!5507 (c!115514 (tokens!1139 printableTokens!2))))) b!628911))

(declare-fun m!897395 () Bool)

(assert (=> b!628910 m!897395))

(declare-fun m!897397 () Bool)

(assert (=> b!628910 m!897397))

(declare-fun m!897399 () Bool)

(assert (=> b!628911 m!897399))

(assert (=> b!628737 m!897131))

(declare-fun b!628926 () Bool)

(declare-fun b_free!18385 () Bool)

(declare-fun b_next!18401 () Bool)

(assert (=> b!628926 (= b_free!18385 (not b_next!18401))))

(declare-fun tp!196299 () Bool)

(declare-fun b_and!62179 () Bool)

(assert (=> b!628926 (= tp!196299 b_and!62179)))

(declare-fun b_free!18387 () Bool)

(declare-fun b_next!18403 () Bool)

(assert (=> b!628926 (= b_free!18387 (not b_next!18403))))

(declare-fun tp!196298 () Bool)

(declare-fun b_and!62181 () Bool)

(assert (=> b!628926 (= tp!196298 b_and!62181)))

(declare-fun b!628925 () Bool)

(declare-fun e!381554 () Bool)

(declare-fun e!381557 () Bool)

(assert (=> b!628925 (= e!381554 (and (inv!8348 (tag!1586 (rule!2120 (h!11881 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))))))) (inv!8359 (transformation!1324 (rule!2120 (h!11881 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))))))) e!381557))))

(assert (=> b!628926 (= e!381557 (and tp!196299 tp!196298))))

(declare-fun tp!196300 () Bool)

(declare-fun e!381559 () Bool)

(declare-fun b!628923 () Bool)

(declare-fun e!381556 () Bool)

(declare-fun inv!8365 (Token!2372) Bool)

(assert (=> b!628923 (= e!381559 (and (inv!8365 (h!11881 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))))) e!381556 tp!196300))))

(assert (=> b!628739 (= tp!196266 e!381559)))

(declare-fun b!628924 () Bool)

(declare-fun inv!21 (TokenValue!1358) Bool)

(assert (=> b!628924 (= e!381556 (and (inv!21 (value!42886 (h!11881 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2))))))) e!381554))))

(assert (= b!628925 b!628926))

(assert (= b!628924 b!628925))

(assert (= b!628923 b!628924))

(assert (= (and b!628739 (is-Cons!6480 (innerList!2162 (xs!4745 (c!115514 (tokens!1139 printableTokens!2)))))) b!628923))

(declare-fun m!897401 () Bool)

(assert (=> b!628925 m!897401))

(declare-fun m!897403 () Bool)

(assert (=> b!628925 m!897403))

(declare-fun m!897405 () Bool)

(assert (=> b!628923 m!897405))

(declare-fun m!897407 () Bool)

(assert (=> b!628924 m!897407))

(declare-fun b!628929 () Bool)

(declare-fun b_free!18389 () Bool)

(declare-fun b_next!18405 () Bool)

(assert (=> b!628929 (= b_free!18389 (not b_next!18405))))

(declare-fun tp!196302 () Bool)

(declare-fun b_and!62183 () Bool)

(assert (=> b!628929 (= tp!196302 b_and!62183)))

(declare-fun b_free!18391 () Bool)

(declare-fun b_next!18407 () Bool)

(assert (=> b!628929 (= b_free!18391 (not b_next!18407))))

(declare-fun tp!196303 () Bool)

(declare-fun b_and!62185 () Bool)

(assert (=> b!628929 (= tp!196303 b_and!62185)))

(declare-fun e!381560 () Bool)

(assert (=> b!628929 (= e!381560 (and tp!196302 tp!196303))))

(declare-fun b!628928 () Bool)

(declare-fun e!381561 () Bool)

(assert (=> b!628928 (= e!381561 (and (inv!8348 (tag!1586 (h!11882 (t!82651 (rules!8102 printableTokens!2))))) (inv!8359 (transformation!1324 (h!11882 (t!82651 (rules!8102 printableTokens!2))))) e!381560))))

(declare-fun b!628927 () Bool)

(declare-fun e!381562 () Bool)

(declare-fun tp!196301 () Bool)

(assert (=> b!628927 (= e!381562 (and e!381561 tp!196301))))

(assert (=> b!628726 (= tp!196256 e!381562)))

(assert (= b!628928 b!628929))

(assert (= b!628927 b!628928))

(assert (= (and b!628726 (is-Cons!6481 (t!82651 (rules!8102 printableTokens!2)))) b!628927))

(declare-fun m!897409 () Bool)

(assert (=> b!628928 m!897409))

(declare-fun m!897411 () Bool)

(assert (=> b!628928 m!897411))

(declare-fun b_lambda!24727 () Bool)

(assert (= b_lambda!24725 (or b!628655 b_lambda!24727)))

(declare-fun bs!72782 () Bool)

(declare-fun d!220092 () Bool)

(assert (= bs!72782 (and d!220092 b!628655)))

(assert (=> bs!72782 (= (dynLambda!3652 lambda!16607 (h!11883 (list!2749 (BalanceConc!4223 Empty!2105)))) (and (<= 0 (h!11883 (list!2749 (BalanceConc!4223 Empty!2105)))) (< (h!11883 (list!2749 (BalanceConc!4223 Empty!2105))) lt!267143)))))

(assert (=> b!628795 d!220092))

(push 1)

(assert b_and!62181)

(assert (not d!220030))

(assert (not b_next!18395))

(assert (not b!628807))

(assert (not d!220000))

(assert (not d!220074))

(assert (not d!220010))

(assert (not d!220088))

(assert (not b!628923))

(assert (not b_next!18401))

(assert (not b!628787))

(assert (not d!220024))

(assert b_and!62173)

(assert (not b_lambda!24727))

(assert (not b!628911))

(assert (not d!219970))

(assert b_and!62171)

(assert (not b!628759))

(assert (not b!628881))

(assert (not d!220026))

(assert (not d!219984))

(assert (not b!628806))

(assert b_and!62185)

(assert (not b!628905))

(assert (not d!220018))

(assert (not b!628928))

(assert (not b_next!18407))

(assert (not d!219998))

(assert (not d!220008))

(assert (not b_next!18405))

(assert (not d!220020))

(assert (not d!220028))

(assert (not b!628907))

(assert (not b!628912))

(assert (not d!220004))

(assert (not b!628753))

(assert (not b!628790))

(assert (not b!628908))

(assert (not b!628910))

(assert (not d!219994))

(assert (not d!219968))

(assert (not d!220014))

(assert (not b_next!18403))

(assert b_and!62183)

(assert (not b!628788))

(assert (not b!628924))

(assert (not b!628777))

(assert (not b!628775))

(assert (not d!219996))

(assert (not b!628784))

(assert (not b!628776))

(assert (not d!220016))

(assert (not b!628773))

(assert (not d!220022))

(assert (not b!628909))

(assert (not b_next!18393))

(assert (not b!628774))

(assert (not b!628925))

(assert (not b!628927))

(assert (not b!628796))

(assert (not b!628808))

(assert (not b!628890))

(assert (not b!628737))

(assert (not b!628831))

(assert b_and!62179)

(assert (not d!220006))

(assert (not b!628897))

(assert (not b!628754))

(assert (not d!220012))

(assert (not d!220002))

(assert (not d!220086))

(assert (not d!219986))

(assert (not b!628778))

(assert (not b!628785))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!18401))

(assert b_and!62173)

(assert b_and!62171)

(assert b_and!62181)

(assert b_and!62185)

(assert (not b_next!18407))

(assert (not b_next!18405))

(assert (not b_next!18395))

(assert (not b_next!18403))

(assert b_and!62183)

(assert (not b_next!18393))

(assert b_and!62179)

(check-sat)

(pop 1)

