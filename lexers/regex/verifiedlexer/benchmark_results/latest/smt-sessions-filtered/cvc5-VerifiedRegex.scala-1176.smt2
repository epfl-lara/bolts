; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60796 () Bool)

(assert start!60796)

(declare-fun b!628541 () Bool)

(declare-fun e!381307 () Bool)

(declare-fun tp!196195 () Bool)

(declare-datatypes ((List!6486 0))(
  ( (Nil!6472) (Cons!6472 (h!11873 (_ BitVec 16)) (t!82612 List!6486)) )
))
(declare-datatypes ((TokenValue!1356 0))(
  ( (FloatLiteralValue!2712 (text!9937 List!6486)) (TokenValueExt!1355 (__x!4600 Int)) (Broken!6780 (value!42803 List!6486)) (Object!1369) (End!1356) (Def!1356) (Underscore!1356) (Match!1356) (Else!1356) (Error!1356) (Case!1356) (If!1356) (Extends!1356) (Abstract!1356) (Class!1356) (Val!1356) (DelimiterValue!2712 (del!1416 List!6486)) (KeywordValue!1362 (value!42804 List!6486)) (CommentValue!2712 (value!42805 List!6486)) (WhitespaceValue!2712 (value!42806 List!6486)) (IndentationValue!1356 (value!42807 List!6486)) (String!8517) (Int32!1356) (Broken!6781 (value!42808 List!6486)) (Boolean!1357) (Unit!11544) (OperatorValue!1359 (op!1416 List!6486)) (IdentifierValue!2712 (value!42809 List!6486)) (IdentifierValue!2713 (value!42810 List!6486)) (WhitespaceValue!2713 (value!42811 List!6486)) (True!2712) (False!2712) (Broken!6782 (value!42812 List!6486)) (Broken!6783 (value!42813 List!6486)) (True!2713) (RightBrace!1356) (RightBracket!1356) (Colon!1356) (Null!1356) (Comma!1356) (LeftBracket!1356) (False!2713) (LeftBrace!1356) (ImaginaryLiteralValue!1356 (text!9938 List!6486)) (StringLiteralValue!4068 (value!42814 List!6486)) (EOFValue!1356 (value!42815 List!6486)) (IdentValue!1356 (value!42816 List!6486)) (DelimiterValue!2713 (value!42817 List!6486)) (DedentValue!1356 (value!42818 List!6486)) (NewLineValue!1356 (value!42819 List!6486)) (IntegerValue!4068 (value!42820 (_ BitVec 32)) (text!9939 List!6486)) (IntegerValue!4069 (value!42821 Int) (text!9940 List!6486)) (Times!1356) (Or!1356) (Equal!1356) (Minus!1356) (Broken!6784 (value!42822 List!6486)) (And!1356) (Div!1356) (LessEqual!1356) (Mod!1356) (Concat!3012) (Not!1356) (Plus!1356) (SpaceValue!1356 (value!42823 List!6486)) (IntegerValue!4070 (value!42824 Int) (text!9941 List!6486)) (StringLiteralValue!4069 (text!9942 List!6486)) (FloatLiteralValue!2713 (text!9943 List!6486)) (BytesLiteralValue!1356 (value!42825 List!6486)) (CommentValue!2713 (value!42826 List!6486)) (StringLiteralValue!4070 (value!42827 List!6486)) (ErrorTokenValue!1356 (msg!1417 List!6486)) )
))
(declare-datatypes ((Regex!1656 0))(
  ( (ElementMatch!1656 (c!115503 (_ BitVec 16))) (Concat!3013 (regOne!3824 Regex!1656) (regTwo!3824 Regex!1656)) (EmptyExpr!1656) (Star!1656 (reg!1985 Regex!1656)) (EmptyLang!1656) (Union!1656 (regOne!3825 Regex!1656) (regTwo!3825 Regex!1656)) )
))
(declare-datatypes ((String!8518 0))(
  ( (String!8519 (value!42828 String)) )
))
(declare-datatypes ((IArray!4199 0))(
  ( (IArray!4200 (innerList!2157 List!6486)) )
))
(declare-datatypes ((Conc!2099 0))(
  ( (Node!2099 (left!5169 Conc!2099) (right!5499 Conc!2099) (csize!4428 Int) (cheight!2310 Int)) (Leaf!3276 (xs!4740 IArray!4199) (csize!4429 Int)) (Empty!2099) )
))
(declare-datatypes ((BalanceConc!4210 0))(
  ( (BalanceConc!4211 (c!115504 Conc!2099)) )
))
(declare-datatypes ((TokenValueInjection!2464 0))(
  ( (TokenValueInjection!2465 (toValue!2263 Int) (toChars!2122 Int)) )
))
(declare-datatypes ((Rule!2444 0))(
  ( (Rule!2445 (regex!1322 Regex!1656) (tag!1584 String!8518) (isSeparator!1322 Bool) (transformation!1322 TokenValueInjection!2464)) )
))
(declare-datatypes ((Token!2368 0))(
  ( (Token!2369 (value!42829 TokenValue!1356) (rule!2118 Rule!2444) (size!5063 Int) (originalCharacters!1355 List!6486)) )
))
(declare-datatypes ((List!6487 0))(
  ( (Nil!6473) (Cons!6473 (h!11874 Token!2368) (t!82613 List!6487)) )
))
(declare-datatypes ((IArray!4201 0))(
  ( (IArray!4202 (innerList!2158 List!6487)) )
))
(declare-datatypes ((Conc!2100 0))(
  ( (Node!2100 (left!5170 Conc!2100) (right!5500 Conc!2100) (csize!4430 Int) (cheight!2311 Int)) (Leaf!3277 (xs!4741 IArray!4201) (csize!4431 Int)) (Empty!2100) )
))
(declare-datatypes ((List!6488 0))(
  ( (Nil!6474) (Cons!6474 (h!11875 Rule!2444) (t!82614 List!6488)) )
))
(declare-datatypes ((BalanceConc!4212 0))(
  ( (BalanceConc!4213 (c!115505 Conc!2100)) )
))
(declare-datatypes ((PrintableTokens!26 0))(
  ( (PrintableTokens!27 (rules!8099 List!6488) (tokens!1137 BalanceConc!4212)) )
))
(declare-fun printableTokens!2 () PrintableTokens!26)

(declare-fun e!381308 () Bool)

(declare-fun inv!8338 (BalanceConc!4212) Bool)

(assert (=> b!628541 (= e!381308 (and tp!196195 (inv!8338 (tokens!1137 printableTokens!2)) e!381307))))

(declare-fun b!628542 () Bool)

(declare-fun e!381306 () Bool)

(declare-fun lt!267119 () Int)

(declare-fun lt!267118 () Int)

(assert (=> b!628542 (= e!381306 (and (<= 0 lt!267119) (not (= lt!267119 lt!267118))))))

(declare-fun size!5064 (BalanceConc!4212) Int)

(assert (=> b!628542 (= lt!267119 (size!5064 (tokens!1137 printableTokens!2)))))

(declare-fun b!628543 () Bool)

(declare-fun e!381309 () Bool)

(assert (=> b!628543 (= e!381309 e!381306)))

(declare-fun res!272438 () Bool)

(assert (=> b!628543 (=> (not res!272438) (not e!381306))))

(declare-fun lt!267117 () List!6488)

(declare-fun isEmpty!4594 (List!6488) Bool)

(assert (=> b!628543 (= res!272438 (not (isEmpty!4594 lt!267117)))))

(declare-datatypes ((JsonLexer!100 0))(
  ( (JsonLexer!101) )
))
(declare-fun rules!109 (JsonLexer!100) List!6488)

(assert (=> b!628543 (= lt!267117 (rules!109 JsonLexer!101))))

(declare-fun res!272439 () Bool)

(assert (=> start!60796 (=> (not res!272439) (not e!381309))))

(assert (=> start!60796 (= res!272439 (> lt!267118 0))))

(declare-fun size!5065 (PrintableTokens!26) Int)

(assert (=> start!60796 (= lt!267118 (size!5065 printableTokens!2))))

(assert (=> start!60796 e!381309))

(declare-fun inv!8339 (PrintableTokens!26) Bool)

(assert (=> start!60796 (and (inv!8339 printableTokens!2) e!381308)))

(declare-fun b!628544 () Bool)

(declare-fun res!272437 () Bool)

(assert (=> b!628544 (=> (not res!272437) (not e!381306))))

(declare-datatypes ((LexerInterface!1208 0))(
  ( (LexerInterfaceExt!1205 (__x!4601 Int)) (Lexer!1206) )
))
(declare-fun rulesInvariant!1143 (LexerInterface!1208 List!6488) Bool)

(assert (=> b!628544 (= res!272437 (rulesInvariant!1143 Lexer!1206 lt!267117))))

(declare-fun b!628545 () Bool)

(declare-fun tp!196194 () Bool)

(declare-fun inv!8340 (Conc!2100) Bool)

(assert (=> b!628545 (= e!381307 (and (inv!8340 (c!115505 (tokens!1137 printableTokens!2))) tp!196194))))

(declare-fun b!628546 () Bool)

(declare-fun res!272440 () Bool)

(assert (=> b!628546 (=> (not res!272440) (not e!381306))))

(declare-fun usesJsonRules!0 (PrintableTokens!26) Bool)

(assert (=> b!628546 (= res!272440 (usesJsonRules!0 printableTokens!2))))

(assert (= (and start!60796 res!272439) b!628543))

(assert (= (and b!628543 res!272438) b!628544))

(assert (= (and b!628544 res!272437) b!628546))

(assert (= (and b!628546 res!272440) b!628542))

(assert (= b!628541 b!628545))

(assert (= start!60796 b!628541))

(declare-fun m!896883 () Bool)

(assert (=> b!628541 m!896883))

(declare-fun m!896885 () Bool)

(assert (=> b!628544 m!896885))

(declare-fun m!896887 () Bool)

(assert (=> b!628546 m!896887))

(declare-fun m!896889 () Bool)

(assert (=> start!60796 m!896889))

(declare-fun m!896891 () Bool)

(assert (=> start!60796 m!896891))

(declare-fun m!896893 () Bool)

(assert (=> b!628545 m!896893))

(declare-fun m!896895 () Bool)

(assert (=> b!628542 m!896895))

(declare-fun m!896897 () Bool)

(assert (=> b!628543 m!896897))

(declare-fun m!896899 () Bool)

(assert (=> b!628543 m!896899))

(push 1)

(assert (not b!628542))

(assert (not start!60796))

(assert (not b!628545))

(assert (not b!628546))

(assert (not b!628541))

(assert (not b!628544))

(assert (not b!628543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219905 () Bool)

(declare-fun res!272459 () Bool)

(declare-fun e!381324 () Bool)

(assert (=> d!219905 (=> (not res!272459) (not e!381324))))

(declare-fun rulesValid!485 (LexerInterface!1208 List!6488) Bool)

(assert (=> d!219905 (= res!272459 (rulesValid!485 Lexer!1206 lt!267117))))

(assert (=> d!219905 (= (rulesInvariant!1143 Lexer!1206 lt!267117) e!381324)))

(declare-fun b!628567 () Bool)

(declare-datatypes ((List!6492 0))(
  ( (Nil!6478) (Cons!6478 (h!11879 String!8518) (t!82633 List!6492)) )
))
(declare-fun noDuplicateTag!485 (LexerInterface!1208 List!6488 List!6492) Bool)

(assert (=> b!628567 (= e!381324 (noDuplicateTag!485 Lexer!1206 lt!267117 Nil!6478))))

(assert (= (and d!219905 res!272459) b!628567))

(declare-fun m!896925 () Bool)

(assert (=> d!219905 m!896925))

(declare-fun m!896927 () Bool)

(assert (=> b!628567 m!896927))

(assert (=> b!628544 d!219905))

(declare-fun d!219907 () Bool)

(assert (=> d!219907 (= (size!5065 printableTokens!2) (size!5064 (tokens!1137 printableTokens!2)))))

(declare-fun bs!72722 () Bool)

(assert (= bs!72722 d!219907))

(assert (=> bs!72722 m!896895))

(assert (=> start!60796 d!219907))

(declare-fun d!219909 () Bool)

(declare-fun res!272466 () Bool)

(declare-fun e!381327 () Bool)

(assert (=> d!219909 (=> (not res!272466) (not e!381327))))

(assert (=> d!219909 (= res!272466 (not (isEmpty!4594 (rules!8099 printableTokens!2))))))

(assert (=> d!219909 (= (inv!8339 printableTokens!2) e!381327)))

(declare-fun b!628574 () Bool)

(declare-fun res!272467 () Bool)

(assert (=> b!628574 (=> (not res!272467) (not e!381327))))

(assert (=> b!628574 (= res!272467 (rulesInvariant!1143 Lexer!1206 (rules!8099 printableTokens!2)))))

(declare-fun b!628575 () Bool)

(declare-fun res!272468 () Bool)

(assert (=> b!628575 (=> (not res!272468) (not e!381327))))

(declare-fun rulesProduceEachTokenIndividually!557 (LexerInterface!1208 List!6488 BalanceConc!4212) Bool)

(assert (=> b!628575 (= res!272468 (rulesProduceEachTokenIndividually!557 Lexer!1206 (rules!8099 printableTokens!2) (tokens!1137 printableTokens!2)))))

(declare-fun b!628576 () Bool)

(declare-fun separableTokens!7 (LexerInterface!1208 BalanceConc!4212 List!6488) Bool)

(assert (=> b!628576 (= e!381327 (separableTokens!7 Lexer!1206 (tokens!1137 printableTokens!2) (rules!8099 printableTokens!2)))))

(assert (= (and d!219909 res!272466) b!628574))

(assert (= (and b!628574 res!272467) b!628575))

(assert (= (and b!628575 res!272468) b!628576))

(declare-fun m!896959 () Bool)

(assert (=> d!219909 m!896959))

(declare-fun m!896961 () Bool)

(assert (=> b!628574 m!896961))

(declare-fun m!896963 () Bool)

(assert (=> b!628575 m!896963))

(declare-fun m!896965 () Bool)

(assert (=> b!628576 m!896965))

(assert (=> start!60796 d!219909))

(declare-fun d!219921 () Bool)

(assert (=> d!219921 (= (isEmpty!4594 lt!267117) (is-Nil!6474 lt!267117))))

(assert (=> b!628543 d!219921))

(declare-fun d!219923 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!100) Rule!2444)

(declare-fun integerLiteralRule!0 (JsonLexer!100) Rule!2444)

(declare-fun floatLiteralRule!0 (JsonLexer!100) Rule!2444)

(declare-fun trueRule!0 (JsonLexer!100) Rule!2444)

(declare-fun falseRule!0 (JsonLexer!100) Rule!2444)

(declare-fun nullRule!0 (JsonLexer!100) Rule!2444)

(declare-fun jsonstringRule!0 (JsonLexer!100) Rule!2444)

(declare-fun lBraceRule!0 (JsonLexer!100) Rule!2444)

(declare-fun rBraceRule!0 (JsonLexer!100) Rule!2444)

(declare-fun lBracketRule!0 (JsonLexer!100) Rule!2444)

(declare-fun rBracketRule!0 (JsonLexer!100) Rule!2444)

(declare-fun colonRule!0 (JsonLexer!100) Rule!2444)

(declare-fun commaRule!0 (JsonLexer!100) Rule!2444)

(declare-fun eofRule!0 (JsonLexer!100) Rule!2444)

(assert (=> d!219923 (= (rules!109 JsonLexer!101) (Cons!6474 (whitespaceRule!0 JsonLexer!101) (Cons!6474 (integerLiteralRule!0 JsonLexer!101) (Cons!6474 (floatLiteralRule!0 JsonLexer!101) (Cons!6474 (trueRule!0 JsonLexer!101) (Cons!6474 (falseRule!0 JsonLexer!101) (Cons!6474 (nullRule!0 JsonLexer!101) (Cons!6474 (jsonstringRule!0 JsonLexer!101) (Cons!6474 (lBraceRule!0 JsonLexer!101) (Cons!6474 (rBraceRule!0 JsonLexer!101) (Cons!6474 (lBracketRule!0 JsonLexer!101) (Cons!6474 (rBracketRule!0 JsonLexer!101) (Cons!6474 (colonRule!0 JsonLexer!101) (Cons!6474 (commaRule!0 JsonLexer!101) (Cons!6474 (eofRule!0 JsonLexer!101) Nil!6474)))))))))))))))))

(declare-fun bs!72727 () Bool)

(assert (= bs!72727 d!219923))

(declare-fun m!896967 () Bool)

(assert (=> bs!72727 m!896967))

(declare-fun m!896969 () Bool)

(assert (=> bs!72727 m!896969))

(declare-fun m!896971 () Bool)

(assert (=> bs!72727 m!896971))

(declare-fun m!896973 () Bool)

(assert (=> bs!72727 m!896973))

(declare-fun m!896975 () Bool)

(assert (=> bs!72727 m!896975))

(declare-fun m!896977 () Bool)

(assert (=> bs!72727 m!896977))

(declare-fun m!896979 () Bool)

(assert (=> bs!72727 m!896979))

(declare-fun m!896981 () Bool)

(assert (=> bs!72727 m!896981))

(declare-fun m!896983 () Bool)

(assert (=> bs!72727 m!896983))

(declare-fun m!896985 () Bool)

(assert (=> bs!72727 m!896985))

(declare-fun m!896987 () Bool)

(assert (=> bs!72727 m!896987))

(declare-fun m!896989 () Bool)

(assert (=> bs!72727 m!896989))

(declare-fun m!896991 () Bool)

(assert (=> bs!72727 m!896991))

(declare-fun m!896993 () Bool)

(assert (=> bs!72727 m!896993))

(assert (=> b!628543 d!219923))

(declare-fun d!219925 () Bool)

(declare-fun lt!267134 () Int)

(declare-fun size!5069 (List!6487) Int)

(declare-fun list!2747 (BalanceConc!4212) List!6487)

(assert (=> d!219925 (= lt!267134 (size!5069 (list!2747 (tokens!1137 printableTokens!2))))))

(declare-fun size!5070 (Conc!2100) Int)

(assert (=> d!219925 (= lt!267134 (size!5070 (c!115505 (tokens!1137 printableTokens!2))))))

(assert (=> d!219925 (= (size!5064 (tokens!1137 printableTokens!2)) lt!267134)))

(declare-fun bs!72728 () Bool)

(assert (= bs!72728 d!219925))

(declare-fun m!896995 () Bool)

(assert (=> bs!72728 m!896995))

(assert (=> bs!72728 m!896995))

(declare-fun m!896997 () Bool)

(assert (=> bs!72728 m!896997))

(declare-fun m!896999 () Bool)

(assert (=> bs!72728 m!896999))

(assert (=> b!628542 d!219925))

(declare-fun d!219927 () Bool)

(declare-fun isBalanced!559 (Conc!2100) Bool)

(assert (=> d!219927 (= (inv!8338 (tokens!1137 printableTokens!2)) (isBalanced!559 (c!115505 (tokens!1137 printableTokens!2))))))

(declare-fun bs!72729 () Bool)

(assert (= bs!72729 d!219927))

(declare-fun m!897001 () Bool)

(assert (=> bs!72729 m!897001))

(assert (=> b!628541 d!219927))

(declare-fun d!219929 () Bool)

(assert (=> d!219929 (= (usesJsonRules!0 printableTokens!2) (= (rules!8099 printableTokens!2) (rules!109 JsonLexer!101)))))

(declare-fun bs!72730 () Bool)

(assert (= bs!72730 d!219929))

(assert (=> bs!72730 m!896899))

(assert (=> b!628546 d!219929))

(declare-fun d!219931 () Bool)

(declare-fun c!115511 () Bool)

(assert (=> d!219931 (= c!115511 (is-Node!2100 (c!115505 (tokens!1137 printableTokens!2))))))

(declare-fun e!381332 () Bool)

(assert (=> d!219931 (= (inv!8340 (c!115505 (tokens!1137 printableTokens!2))) e!381332)))

(declare-fun b!628583 () Bool)

(declare-fun inv!8344 (Conc!2100) Bool)

(assert (=> b!628583 (= e!381332 (inv!8344 (c!115505 (tokens!1137 printableTokens!2))))))

(declare-fun b!628584 () Bool)

(declare-fun e!381333 () Bool)

(assert (=> b!628584 (= e!381332 e!381333)))

(declare-fun res!272471 () Bool)

(assert (=> b!628584 (= res!272471 (not (is-Leaf!3277 (c!115505 (tokens!1137 printableTokens!2)))))))

(assert (=> b!628584 (=> res!272471 e!381333)))

(declare-fun b!628585 () Bool)

(declare-fun inv!8345 (Conc!2100) Bool)

(assert (=> b!628585 (= e!381333 (inv!8345 (c!115505 (tokens!1137 printableTokens!2))))))

(assert (= (and d!219931 c!115511) b!628583))

(assert (= (and d!219931 (not c!115511)) b!628584))

(assert (= (and b!628584 (not res!272471)) b!628585))

(declare-fun m!897003 () Bool)

(assert (=> b!628583 m!897003))

(declare-fun m!897005 () Bool)

(assert (=> b!628585 m!897005))

(assert (=> b!628545 d!219931))

(declare-fun b!628596 () Bool)

(declare-fun b_free!18373 () Bool)

(declare-fun b_next!18389 () Bool)

(assert (=> b!628596 (= b_free!18373 (not b_next!18389))))

(declare-fun tp!196210 () Bool)

(declare-fun b_and!62167 () Bool)

(assert (=> b!628596 (= tp!196210 b_and!62167)))

(declare-fun b_free!18375 () Bool)

(declare-fun b_next!18391 () Bool)

(assert (=> b!628596 (= b_free!18375 (not b_next!18391))))

(declare-fun tp!196209 () Bool)

(declare-fun b_and!62169 () Bool)

(assert (=> b!628596 (= tp!196209 b_and!62169)))

(declare-fun e!381345 () Bool)

(assert (=> b!628596 (= e!381345 (and tp!196210 tp!196209))))

(declare-fun b!628595 () Bool)

(declare-fun e!381344 () Bool)

(declare-fun inv!8335 (String!8518) Bool)

(declare-fun inv!8346 (TokenValueInjection!2464) Bool)

(assert (=> b!628595 (= e!381344 (and (inv!8335 (tag!1584 (h!11875 (rules!8099 printableTokens!2)))) (inv!8346 (transformation!1322 (h!11875 (rules!8099 printableTokens!2)))) e!381345))))

(declare-fun b!628594 () Bool)

(declare-fun e!381342 () Bool)

(declare-fun tp!196208 () Bool)

(assert (=> b!628594 (= e!381342 (and e!381344 tp!196208))))

(assert (=> b!628541 (= tp!196195 e!381342)))

(assert (= b!628595 b!628596))

(assert (= b!628594 b!628595))

(assert (= (and b!628541 (is-Cons!6474 (rules!8099 printableTokens!2))) b!628594))

(declare-fun m!897007 () Bool)

(assert (=> b!628595 m!897007))

(declare-fun m!897009 () Bool)

(assert (=> b!628595 m!897009))

(declare-fun tp!196218 () Bool)

(declare-fun tp!196217 () Bool)

(declare-fun b!628605 () Bool)

(declare-fun e!381351 () Bool)

(assert (=> b!628605 (= e!381351 (and (inv!8340 (left!5170 (c!115505 (tokens!1137 printableTokens!2)))) tp!196217 (inv!8340 (right!5500 (c!115505 (tokens!1137 printableTokens!2)))) tp!196218))))

(declare-fun b!628607 () Bool)

(declare-fun e!381350 () Bool)

(declare-fun tp!196219 () Bool)

(assert (=> b!628607 (= e!381350 tp!196219)))

(declare-fun b!628606 () Bool)

(declare-fun inv!8347 (IArray!4201) Bool)

(assert (=> b!628606 (= e!381351 (and (inv!8347 (xs!4741 (c!115505 (tokens!1137 printableTokens!2)))) e!381350))))

(assert (=> b!628545 (= tp!196194 (and (inv!8340 (c!115505 (tokens!1137 printableTokens!2))) e!381351))))

(assert (= (and b!628545 (is-Node!2100 (c!115505 (tokens!1137 printableTokens!2)))) b!628605))

(assert (= b!628606 b!628607))

(assert (= (and b!628545 (is-Leaf!3277 (c!115505 (tokens!1137 printableTokens!2)))) b!628606))

(declare-fun m!897011 () Bool)

(assert (=> b!628605 m!897011))

(declare-fun m!897013 () Bool)

(assert (=> b!628605 m!897013))

(declare-fun m!897015 () Bool)

(assert (=> b!628606 m!897015))

(assert (=> b!628545 m!896893))

(push 1)

(assert (not d!219929))

(assert (not b!628575))

(assert (not d!219909))

(assert (not b!628585))

(assert (not b!628594))

(assert (not b!628607))

(assert (not d!219923))

(assert (not b!628606))

(assert (not d!219905))

(assert (not b!628545))

(assert (not d!219907))

(assert (not b_next!18391))

(assert (not b!628605))

(assert (not b_next!18389))

(assert (not b!628583))

(assert (not b!628595))

(assert (not b!628567))

(assert b_and!62169)

(assert (not b!628574))

(assert (not d!219927))

(assert (not b!628576))

(assert b_and!62167)

(assert (not d!219925))

(check-sat)

(pop 1)

(push 1)

(assert b_and!62169)

(assert b_and!62167)

(assert (not b_next!18391))

(assert (not b_next!18389))

(check-sat)

(pop 1)

