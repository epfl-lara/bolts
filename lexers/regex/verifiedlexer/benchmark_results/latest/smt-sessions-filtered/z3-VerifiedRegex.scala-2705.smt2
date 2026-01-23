; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!145340 () Bool)

(assert start!145340)

(declare-datatypes ((List!17051 0))(
  ( (Nil!16981) (Cons!16981 (h!22382 (_ BitVec 16)) (t!141630 List!17051)) )
))
(declare-datatypes ((TokenValue!3063 0))(
  ( (FloatLiteralValue!6126 (text!21886 List!17051)) (TokenValueExt!3062 (__x!11429 Int)) (Broken!15315 (value!94374 List!17051)) (Object!3132) (End!3063) (Def!3063) (Underscore!3063) (Match!3063) (Else!3063) (Error!3063) (Case!3063) (If!3063) (Extends!3063) (Abstract!3063) (Class!3063) (Val!3063) (DelimiterValue!6126 (del!3123 List!17051)) (KeywordValue!3069 (value!94375 List!17051)) (CommentValue!6126 (value!94376 List!17051)) (WhitespaceValue!6126 (value!94377 List!17051)) (IndentationValue!3063 (value!94378 List!17051)) (String!19642) (Int32!3063) (Broken!15316 (value!94379 List!17051)) (Boolean!3064) (Unit!26172) (OperatorValue!3066 (op!3123 List!17051)) (IdentifierValue!6126 (value!94380 List!17051)) (IdentifierValue!6127 (value!94381 List!17051)) (WhitespaceValue!6127 (value!94382 List!17051)) (True!6126) (False!6126) (Broken!15317 (value!94383 List!17051)) (Broken!15318 (value!94384 List!17051)) (True!6127) (RightBrace!3063) (RightBracket!3063) (Colon!3063) (Null!3063) (Comma!3063) (LeftBracket!3063) (False!6127) (LeftBrace!3063) (ImaginaryLiteralValue!3063 (text!21887 List!17051)) (StringLiteralValue!9189 (value!94385 List!17051)) (EOFValue!3063 (value!94386 List!17051)) (IdentValue!3063 (value!94387 List!17051)) (DelimiterValue!6127 (value!94388 List!17051)) (DedentValue!3063 (value!94389 List!17051)) (NewLineValue!3063 (value!94390 List!17051)) (IntegerValue!9189 (value!94391 (_ BitVec 32)) (text!21888 List!17051)) (IntegerValue!9190 (value!94392 Int) (text!21889 List!17051)) (Times!3063) (Or!3063) (Equal!3063) (Minus!3063) (Broken!15319 (value!94393 List!17051)) (And!3063) (Div!3063) (LessEqual!3063) (Mod!3063) (Concat!7364) (Not!3063) (Plus!3063) (SpaceValue!3063 (value!94394 List!17051)) (IntegerValue!9191 (value!94395 Int) (text!21890 List!17051)) (StringLiteralValue!9190 (text!21891 List!17051)) (FloatLiteralValue!6127 (text!21892 List!17051)) (BytesLiteralValue!3063 (value!94396 List!17051)) (CommentValue!6127 (value!94397 List!17051)) (StringLiteralValue!9191 (value!94398 List!17051)) (ErrorTokenValue!3063 (msg!3124 List!17051)) )
))
(declare-datatypes ((Regex!4301 0))(
  ( (ElementMatch!4301 (c!253516 (_ BitVec 16))) (Concat!7365 (regOne!9114 Regex!4301) (regTwo!9114 Regex!4301)) (EmptyExpr!4301) (Star!4301 (reg!4630 Regex!4301)) (EmptyLang!4301) (Union!4301 (regOne!9115 Regex!4301) (regTwo!9115 Regex!4301)) )
))
(declare-datatypes ((String!19643 0))(
  ( (String!19644 (value!94399 String)) )
))
(declare-datatypes ((IArray!11193 0))(
  ( (IArray!11194 (innerList!5654 List!17051)) )
))
(declare-datatypes ((Conc!5594 0))(
  ( (Node!5594 (left!13769 Conc!5594) (right!14099 Conc!5594) (csize!11418 Int) (cheight!5805 Int)) (Leaf!8300 (xs!8394 IArray!11193) (csize!11419 Int)) (Empty!5594) )
))
(declare-datatypes ((BalanceConc!11132 0))(
  ( (BalanceConc!11133 (c!253517 Conc!5594)) )
))
(declare-datatypes ((TokenValueInjection!5786 0))(
  ( (TokenValueInjection!5787 (toValue!4356 Int) (toChars!4215 Int)) )
))
(declare-datatypes ((Rule!5746 0))(
  ( (Rule!5747 (regex!2973 Regex!4301) (tag!3237 String!19643) (isSeparator!2973 Bool) (transformation!2973 TokenValueInjection!5786)) )
))
(declare-datatypes ((Token!5512 0))(
  ( (Token!5513 (value!94400 TokenValue!3063) (rule!4759 Rule!5746) (size!13772 Int) (originalCharacters!3787 List!17051)) )
))
(declare-datatypes ((List!17052 0))(
  ( (Nil!16982) (Cons!16982 (h!22383 Token!5512) (t!141631 List!17052)) )
))
(declare-datatypes ((IArray!11195 0))(
  ( (IArray!11196 (innerList!5655 List!17052)) )
))
(declare-datatypes ((Conc!5595 0))(
  ( (Node!5595 (left!13770 Conc!5595) (right!14100 Conc!5595) (csize!11420 Int) (cheight!5806 Int)) (Leaf!8301 (xs!8395 IArray!11195) (csize!11421 Int)) (Empty!5595) )
))
(declare-datatypes ((List!17053 0))(
  ( (Nil!16983) (Cons!16983 (h!22384 Rule!5746) (t!141632 List!17053)) )
))
(declare-datatypes ((BalanceConc!11134 0))(
  ( (BalanceConc!11135 (c!253518 Conc!5595)) )
))
(declare-datatypes ((PrintableTokens!1164 0))(
  ( (PrintableTokens!1165 (rules!12058 List!17053) (tokens!2184 BalanceConc!11134)) )
))
(declare-fun obj!2 () PrintableTokens!1164)

(declare-fun size!13773 (PrintableTokens!1164) Int)

(assert (=> start!145340 (> 0 (size!13773 obj!2))))

(declare-fun e!1004487 () Bool)

(declare-fun inv!22315 (PrintableTokens!1164) Bool)

(assert (=> start!145340 (and (inv!22315 obj!2) e!1004487)))

(declare-fun b!1564097 () Bool)

(declare-fun e!1004488 () Bool)

(declare-fun tp!460640 () Bool)

(declare-fun inv!22316 (Conc!5595) Bool)

(assert (=> b!1564097 (= e!1004488 (and (inv!22316 (c!253518 (tokens!2184 obj!2))) tp!460640))))

(declare-fun b!1564096 () Bool)

(declare-fun tp!460639 () Bool)

(declare-fun inv!22317 (BalanceConc!11134) Bool)

(assert (=> b!1564096 (= e!1004487 (and tp!460639 (inv!22317 (tokens!2184 obj!2)) e!1004488))))

(assert (= b!1564096 b!1564097))

(assert (= start!145340 b!1564096))

(declare-fun m!1835535 () Bool)

(assert (=> start!145340 m!1835535))

(declare-fun m!1835537 () Bool)

(assert (=> start!145340 m!1835537))

(declare-fun m!1835539 () Bool)

(assert (=> b!1564097 m!1835539))

(declare-fun m!1835541 () Bool)

(assert (=> b!1564096 m!1835541))

(check-sat (not b!1564097) (not b!1564096) (not start!145340))
(check-sat)
(get-model)

(declare-fun d!463280 () Bool)

(declare-fun c!253524 () Bool)

(get-info :version)

(assert (=> d!463280 (= c!253524 ((_ is Node!5595) (c!253518 (tokens!2184 obj!2))))))

(declare-fun e!1004499 () Bool)

(assert (=> d!463280 (= (inv!22316 (c!253518 (tokens!2184 obj!2))) e!1004499)))

(declare-fun b!1564113 () Bool)

(declare-fun inv!22322 (Conc!5595) Bool)

(assert (=> b!1564113 (= e!1004499 (inv!22322 (c!253518 (tokens!2184 obj!2))))))

(declare-fun b!1564114 () Bool)

(declare-fun e!1004500 () Bool)

(assert (=> b!1564114 (= e!1004499 e!1004500)))

(declare-fun res!697249 () Bool)

(assert (=> b!1564114 (= res!697249 (not ((_ is Leaf!8301) (c!253518 (tokens!2184 obj!2)))))))

(assert (=> b!1564114 (=> res!697249 e!1004500)))

(declare-fun b!1564115 () Bool)

(declare-fun inv!22323 (Conc!5595) Bool)

(assert (=> b!1564115 (= e!1004500 (inv!22323 (c!253518 (tokens!2184 obj!2))))))

(assert (= (and d!463280 c!253524) b!1564113))

(assert (= (and d!463280 (not c!253524)) b!1564114))

(assert (= (and b!1564114 (not res!697249)) b!1564115))

(declare-fun m!1835547 () Bool)

(assert (=> b!1564113 m!1835547))

(declare-fun m!1835549 () Bool)

(assert (=> b!1564115 m!1835549))

(assert (=> b!1564097 d!463280))

(declare-fun d!463284 () Bool)

(declare-fun isBalanced!1657 (Conc!5595) Bool)

(assert (=> d!463284 (= (inv!22317 (tokens!2184 obj!2)) (isBalanced!1657 (c!253518 (tokens!2184 obj!2))))))

(declare-fun bs!389499 () Bool)

(assert (= bs!389499 d!463284))

(declare-fun m!1835553 () Bool)

(assert (=> bs!389499 m!1835553))

(assert (=> b!1564096 d!463284))

(declare-fun d!463288 () Bool)

(declare-fun size!13775 (BalanceConc!11134) Int)

(assert (=> d!463288 (= (size!13773 obj!2) (size!13775 (tokens!2184 obj!2)))))

(declare-fun bs!389501 () Bool)

(assert (= bs!389501 d!463288))

(declare-fun m!1835557 () Bool)

(assert (=> bs!389501 m!1835557))

(assert (=> start!145340 d!463288))

(declare-fun d!463292 () Bool)

(declare-fun res!697265 () Bool)

(declare-fun e!1004524 () Bool)

(assert (=> d!463292 (=> (not res!697265) (not e!1004524))))

(declare-fun isEmpty!10176 (List!17053) Bool)

(assert (=> d!463292 (= res!697265 (not (isEmpty!10176 (rules!12058 obj!2))))))

(assert (=> d!463292 (= (inv!22315 obj!2) e!1004524)))

(declare-fun b!1564153 () Bool)

(declare-fun res!697266 () Bool)

(assert (=> b!1564153 (=> (not res!697266) (not e!1004524))))

(declare-datatypes ((LexerInterface!2604 0))(
  ( (LexerInterfaceExt!2601 (__x!11431 Int)) (Lexer!2602) )
))
(declare-fun rulesInvariant!2281 (LexerInterface!2604 List!17053) Bool)

(assert (=> b!1564153 (= res!697266 (rulesInvariant!2281 Lexer!2602 (rules!12058 obj!2)))))

(declare-fun b!1564154 () Bool)

(declare-fun res!697267 () Bool)

(assert (=> b!1564154 (=> (not res!697267) (not e!1004524))))

(declare-fun rulesProduceEachTokenIndividually!902 (LexerInterface!2604 List!17053 BalanceConc!11134) Bool)

(assert (=> b!1564154 (= res!697267 (rulesProduceEachTokenIndividually!902 Lexer!2602 (rules!12058 obj!2) (tokens!2184 obj!2)))))

(declare-fun b!1564155 () Bool)

(declare-fun separableTokens!273 (LexerInterface!2604 BalanceConc!11134 List!17053) Bool)

(assert (=> b!1564155 (= e!1004524 (separableTokens!273 Lexer!2602 (tokens!2184 obj!2) (rules!12058 obj!2)))))

(assert (= (and d!463292 res!697265) b!1564153))

(assert (= (and b!1564153 res!697266) b!1564154))

(assert (= (and b!1564154 res!697267) b!1564155))

(declare-fun m!1835577 () Bool)

(assert (=> d!463292 m!1835577))

(declare-fun m!1835579 () Bool)

(assert (=> b!1564153 m!1835579))

(declare-fun m!1835581 () Bool)

(assert (=> b!1564154 m!1835581))

(declare-fun m!1835583 () Bool)

(assert (=> b!1564155 m!1835583))

(assert (=> start!145340 d!463292))

(declare-fun tp!460666 () Bool)

(declare-fun b!1564164 () Bool)

(declare-fun tp!460667 () Bool)

(declare-fun e!1004530 () Bool)

(assert (=> b!1564164 (= e!1004530 (and (inv!22316 (left!13770 (c!253518 (tokens!2184 obj!2)))) tp!460666 (inv!22316 (right!14100 (c!253518 (tokens!2184 obj!2)))) tp!460667))))

(declare-fun b!1564166 () Bool)

(declare-fun e!1004529 () Bool)

(declare-fun tp!460665 () Bool)

(assert (=> b!1564166 (= e!1004529 tp!460665)))

(declare-fun b!1564165 () Bool)

(declare-fun inv!22324 (IArray!11195) Bool)

(assert (=> b!1564165 (= e!1004530 (and (inv!22324 (xs!8395 (c!253518 (tokens!2184 obj!2)))) e!1004529))))

(assert (=> b!1564097 (= tp!460640 (and (inv!22316 (c!253518 (tokens!2184 obj!2))) e!1004530))))

(assert (= (and b!1564097 ((_ is Node!5595) (c!253518 (tokens!2184 obj!2)))) b!1564164))

(assert (= b!1564165 b!1564166))

(assert (= (and b!1564097 ((_ is Leaf!8301) (c!253518 (tokens!2184 obj!2)))) b!1564165))

(declare-fun m!1835585 () Bool)

(assert (=> b!1564164 m!1835585))

(declare-fun m!1835587 () Bool)

(assert (=> b!1564164 m!1835587))

(declare-fun m!1835589 () Bool)

(assert (=> b!1564165 m!1835589))

(assert (=> b!1564097 m!1835539))

(declare-fun b!1564177 () Bool)

(declare-fun b_free!41771 () Bool)

(declare-fun b_next!42475 () Bool)

(assert (=> b!1564177 (= b_free!41771 (not b_next!42475))))

(declare-fun tp!460675 () Bool)

(declare-fun b_and!109121 () Bool)

(assert (=> b!1564177 (= tp!460675 b_and!109121)))

(declare-fun b_free!41773 () Bool)

(declare-fun b_next!42477 () Bool)

(assert (=> b!1564177 (= b_free!41773 (not b_next!42477))))

(declare-fun tp!460676 () Bool)

(declare-fun b_and!109123 () Bool)

(assert (=> b!1564177 (= tp!460676 b_and!109123)))

(declare-fun e!1004540 () Bool)

(assert (=> b!1564177 (= e!1004540 (and tp!460675 tp!460676))))

(declare-fun b!1564176 () Bool)

(declare-fun e!1004542 () Bool)

(declare-fun inv!22311 (String!19643) Bool)

(declare-fun inv!22325 (TokenValueInjection!5786) Bool)

(assert (=> b!1564176 (= e!1004542 (and (inv!22311 (tag!3237 (h!22384 (rules!12058 obj!2)))) (inv!22325 (transformation!2973 (h!22384 (rules!12058 obj!2)))) e!1004540))))

(declare-fun b!1564175 () Bool)

(declare-fun e!1004539 () Bool)

(declare-fun tp!460674 () Bool)

(assert (=> b!1564175 (= e!1004539 (and e!1004542 tp!460674))))

(assert (=> b!1564096 (= tp!460639 e!1004539)))

(assert (= b!1564176 b!1564177))

(assert (= b!1564175 b!1564176))

(assert (= (and b!1564096 ((_ is Cons!16983) (rules!12058 obj!2))) b!1564175))

(declare-fun m!1835591 () Bool)

(assert (=> b!1564176 m!1835591))

(declare-fun m!1835593 () Bool)

(assert (=> b!1564176 m!1835593))

(check-sat (not b!1564097) b_and!109123 (not b_next!42475) (not b_next!42477) (not b!1564164) b_and!109121 (not b!1564115) (not b!1564166) (not b!1564113) (not b!1564175) (not b!1564155) (not b!1564154) (not d!463292) (not b!1564176) (not d!463288) (not b!1564153) (not d!463284) (not b!1564165))
(check-sat b_and!109123 b_and!109121 (not b_next!42475) (not b_next!42477))
(get-model)

(declare-fun d!463298 () Bool)

(declare-fun res!697272 () Bool)

(declare-fun e!1004545 () Bool)

(assert (=> d!463298 (=> (not res!697272) (not e!1004545))))

(declare-fun size!13778 (List!17052) Int)

(declare-fun list!6528 (IArray!11195) List!17052)

(assert (=> d!463298 (= res!697272 (<= (size!13778 (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2))))) 512))))

(assert (=> d!463298 (= (inv!22323 (c!253518 (tokens!2184 obj!2))) e!1004545)))

(declare-fun b!1564182 () Bool)

(declare-fun res!697273 () Bool)

(assert (=> b!1564182 (=> (not res!697273) (not e!1004545))))

(assert (=> b!1564182 (= res!697273 (= (csize!11421 (c!253518 (tokens!2184 obj!2))) (size!13778 (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))

(declare-fun b!1564183 () Bool)

(assert (=> b!1564183 (= e!1004545 (and (> (csize!11421 (c!253518 (tokens!2184 obj!2))) 0) (<= (csize!11421 (c!253518 (tokens!2184 obj!2))) 512)))))

(assert (= (and d!463298 res!697272) b!1564182))

(assert (= (and b!1564182 res!697273) b!1564183))

(declare-fun m!1835595 () Bool)

(assert (=> d!463298 m!1835595))

(assert (=> d!463298 m!1835595))

(declare-fun m!1835597 () Bool)

(assert (=> d!463298 m!1835597))

(assert (=> b!1564182 m!1835595))

(assert (=> b!1564182 m!1835595))

(assert (=> b!1564182 m!1835597))

(assert (=> b!1564115 d!463298))

(declare-fun d!463300 () Bool)

(assert (=> d!463300 (= (inv!22324 (xs!8395 (c!253518 (tokens!2184 obj!2)))) (<= (size!13778 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))) 2147483647))))

(declare-fun bs!389502 () Bool)

(assert (= bs!389502 d!463300))

(declare-fun m!1835599 () Bool)

(assert (=> bs!389502 m!1835599))

(assert (=> b!1564165 d!463300))

(declare-fun d!463302 () Bool)

(declare-fun res!697280 () Bool)

(declare-fun e!1004548 () Bool)

(assert (=> d!463302 (=> (not res!697280) (not e!1004548))))

(declare-fun size!13779 (Conc!5595) Int)

(assert (=> d!463302 (= res!697280 (= (csize!11420 (c!253518 (tokens!2184 obj!2))) (+ (size!13779 (left!13770 (c!253518 (tokens!2184 obj!2)))) (size!13779 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> d!463302 (= (inv!22322 (c!253518 (tokens!2184 obj!2))) e!1004548)))

(declare-fun b!1564190 () Bool)

(declare-fun res!697281 () Bool)

(assert (=> b!1564190 (=> (not res!697281) (not e!1004548))))

(assert (=> b!1564190 (= res!697281 (and (not (= (left!13770 (c!253518 (tokens!2184 obj!2))) Empty!5595)) (not (= (right!14100 (c!253518 (tokens!2184 obj!2))) Empty!5595))))))

(declare-fun b!1564191 () Bool)

(declare-fun res!697282 () Bool)

(assert (=> b!1564191 (=> (not res!697282) (not e!1004548))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!832 (Conc!5595) Int)

(assert (=> b!1564191 (= res!697282 (= (cheight!5806 (c!253518 (tokens!2184 obj!2))) (+ (max!0 (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2))))) 1)))))

(declare-fun b!1564192 () Bool)

(assert (=> b!1564192 (= e!1004548 (<= 0 (cheight!5806 (c!253518 (tokens!2184 obj!2)))))))

(assert (= (and d!463302 res!697280) b!1564190))

(assert (= (and b!1564190 res!697281) b!1564191))

(assert (= (and b!1564191 res!697282) b!1564192))

(declare-fun m!1835601 () Bool)

(assert (=> d!463302 m!1835601))

(declare-fun m!1835603 () Bool)

(assert (=> d!463302 m!1835603))

(declare-fun m!1835605 () Bool)

(assert (=> b!1564191 m!1835605))

(declare-fun m!1835607 () Bool)

(assert (=> b!1564191 m!1835607))

(assert (=> b!1564191 m!1835605))

(assert (=> b!1564191 m!1835607))

(declare-fun m!1835609 () Bool)

(assert (=> b!1564191 m!1835609))

(assert (=> b!1564113 d!463302))

(declare-fun d!463304 () Bool)

(assert (=> d!463304 (= (inv!22311 (tag!3237 (h!22384 (rules!12058 obj!2)))) (= (mod (str.len (value!94399 (tag!3237 (h!22384 (rules!12058 obj!2))))) 2) 0))))

(assert (=> b!1564176 d!463304))

(declare-fun d!463306 () Bool)

(declare-fun res!697285 () Bool)

(declare-fun e!1004551 () Bool)

(assert (=> d!463306 (=> (not res!697285) (not e!1004551))))

(declare-fun semiInverseModEq!1127 (Int Int) Bool)

(assert (=> d!463306 (= res!697285 (semiInverseModEq!1127 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))))))

(assert (=> d!463306 (= (inv!22325 (transformation!2973 (h!22384 (rules!12058 obj!2)))) e!1004551)))

(declare-fun b!1564195 () Bool)

(declare-fun equivClasses!1068 (Int Int) Bool)

(assert (=> b!1564195 (= e!1004551 (equivClasses!1068 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))))))

(assert (= (and d!463306 res!697285) b!1564195))

(declare-fun m!1835611 () Bool)

(assert (=> d!463306 m!1835611))

(declare-fun m!1835613 () Bool)

(assert (=> b!1564195 m!1835613))

(assert (=> b!1564176 d!463306))

(declare-fun d!463308 () Bool)

(declare-fun c!253525 () Bool)

(assert (=> d!463308 (= c!253525 ((_ is Node!5595) (left!13770 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun e!1004552 () Bool)

(assert (=> d!463308 (= (inv!22316 (left!13770 (c!253518 (tokens!2184 obj!2)))) e!1004552)))

(declare-fun b!1564196 () Bool)

(assert (=> b!1564196 (= e!1004552 (inv!22322 (left!13770 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun b!1564197 () Bool)

(declare-fun e!1004553 () Bool)

(assert (=> b!1564197 (= e!1004552 e!1004553)))

(declare-fun res!697286 () Bool)

(assert (=> b!1564197 (= res!697286 (not ((_ is Leaf!8301) (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> b!1564197 (=> res!697286 e!1004553)))

(declare-fun b!1564198 () Bool)

(assert (=> b!1564198 (= e!1004553 (inv!22323 (left!13770 (c!253518 (tokens!2184 obj!2)))))))

(assert (= (and d!463308 c!253525) b!1564196))

(assert (= (and d!463308 (not c!253525)) b!1564197))

(assert (= (and b!1564197 (not res!697286)) b!1564198))

(declare-fun m!1835615 () Bool)

(assert (=> b!1564196 m!1835615))

(declare-fun m!1835617 () Bool)

(assert (=> b!1564198 m!1835617))

(assert (=> b!1564164 d!463308))

(declare-fun d!463310 () Bool)

(declare-fun c!253526 () Bool)

(assert (=> d!463310 (= c!253526 ((_ is Node!5595) (right!14100 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun e!1004554 () Bool)

(assert (=> d!463310 (= (inv!22316 (right!14100 (c!253518 (tokens!2184 obj!2)))) e!1004554)))

(declare-fun b!1564199 () Bool)

(assert (=> b!1564199 (= e!1004554 (inv!22322 (right!14100 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun b!1564200 () Bool)

(declare-fun e!1004555 () Bool)

(assert (=> b!1564200 (= e!1004554 e!1004555)))

(declare-fun res!697287 () Bool)

(assert (=> b!1564200 (= res!697287 (not ((_ is Leaf!8301) (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> b!1564200 (=> res!697287 e!1004555)))

(declare-fun b!1564201 () Bool)

(assert (=> b!1564201 (= e!1004555 (inv!22323 (right!14100 (c!253518 (tokens!2184 obj!2)))))))

(assert (= (and d!463310 c!253526) b!1564199))

(assert (= (and d!463310 (not c!253526)) b!1564200))

(assert (= (and b!1564200 (not res!697287)) b!1564201))

(declare-fun m!1835619 () Bool)

(assert (=> b!1564199 m!1835619))

(declare-fun m!1835621 () Bool)

(assert (=> b!1564201 m!1835621))

(assert (=> b!1564164 d!463310))

(declare-fun b!1564214 () Bool)

(declare-fun res!697300 () Bool)

(declare-fun e!1004560 () Bool)

(assert (=> b!1564214 (=> (not res!697300) (not e!1004560))))

(declare-fun isEmpty!10178 (Conc!5595) Bool)

(assert (=> b!1564214 (= res!697300 (not (isEmpty!10178 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564215 () Bool)

(declare-fun res!697303 () Bool)

(assert (=> b!1564215 (=> (not res!697303) (not e!1004560))))

(assert (=> b!1564215 (= res!697303 (isBalanced!1657 (right!14100 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun b!1564216 () Bool)

(declare-fun e!1004561 () Bool)

(assert (=> b!1564216 (= e!1004561 e!1004560)))

(declare-fun res!697302 () Bool)

(assert (=> b!1564216 (=> (not res!697302) (not e!1004560))))

(assert (=> b!1564216 (= res!697302 (<= (- 1) (- (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(declare-fun b!1564217 () Bool)

(declare-fun res!697304 () Bool)

(assert (=> b!1564217 (=> (not res!697304) (not e!1004560))))

(assert (=> b!1564217 (= res!697304 (isBalanced!1657 (left!13770 (c!253518 (tokens!2184 obj!2)))))))

(declare-fun d!463312 () Bool)

(declare-fun res!697301 () Bool)

(assert (=> d!463312 (=> res!697301 e!1004561)))

(assert (=> d!463312 (= res!697301 (not ((_ is Node!5595) (c!253518 (tokens!2184 obj!2)))))))

(assert (=> d!463312 (= (isBalanced!1657 (c!253518 (tokens!2184 obj!2))) e!1004561)))

(declare-fun b!1564218 () Bool)

(declare-fun res!697305 () Bool)

(assert (=> b!1564218 (=> (not res!697305) (not e!1004560))))

(assert (=> b!1564218 (= res!697305 (<= (- (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2))))) 1))))

(declare-fun b!1564219 () Bool)

(assert (=> b!1564219 (= e!1004560 (not (isEmpty!10178 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463312 (not res!697301)) b!1564216))

(assert (= (and b!1564216 res!697302) b!1564218))

(assert (= (and b!1564218 res!697305) b!1564217))

(assert (= (and b!1564217 res!697304) b!1564215))

(assert (= (and b!1564215 res!697303) b!1564214))

(assert (= (and b!1564214 res!697300) b!1564219))

(declare-fun m!1835623 () Bool)

(assert (=> b!1564214 m!1835623))

(declare-fun m!1835625 () Bool)

(assert (=> b!1564219 m!1835625))

(declare-fun m!1835627 () Bool)

(assert (=> b!1564217 m!1835627))

(assert (=> b!1564216 m!1835605))

(assert (=> b!1564216 m!1835607))

(declare-fun m!1835629 () Bool)

(assert (=> b!1564215 m!1835629))

(assert (=> b!1564218 m!1835605))

(assert (=> b!1564218 m!1835607))

(assert (=> d!463284 d!463312))

(declare-fun d!463314 () Bool)

(assert (=> d!463314 (= (isEmpty!10176 (rules!12058 obj!2)) ((_ is Nil!16983) (rules!12058 obj!2)))))

(assert (=> d!463292 d!463314))

(assert (=> b!1564097 d!463280))

(declare-fun d!463316 () Bool)

(declare-fun lt!541523 () Int)

(declare-fun list!6529 (BalanceConc!11134) List!17052)

(assert (=> d!463316 (= lt!541523 (size!13778 (list!6529 (tokens!2184 obj!2))))))

(assert (=> d!463316 (= lt!541523 (size!13779 (c!253518 (tokens!2184 obj!2))))))

(assert (=> d!463316 (= (size!13775 (tokens!2184 obj!2)) lt!541523)))

(declare-fun bs!389503 () Bool)

(assert (= bs!389503 d!463316))

(declare-fun m!1835631 () Bool)

(assert (=> bs!389503 m!1835631))

(assert (=> bs!389503 m!1835631))

(declare-fun m!1835633 () Bool)

(assert (=> bs!389503 m!1835633))

(declare-fun m!1835635 () Bool)

(assert (=> bs!389503 m!1835635))

(assert (=> d!463288 d!463316))

(declare-fun d!463318 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!143 (LexerInterface!2604 BalanceConc!11134 Int List!17053) Bool)

(assert (=> d!463318 (= (separableTokens!273 Lexer!2602 (tokens!2184 obj!2) (rules!12058 obj!2)) (tokensListTwoByTwoPredicateSeparable!143 Lexer!2602 (tokens!2184 obj!2) 0 (rules!12058 obj!2)))))

(declare-fun bs!389505 () Bool)

(assert (= bs!389505 d!463318))

(declare-fun m!1835643 () Bool)

(assert (=> bs!389505 m!1835643))

(assert (=> b!1564155 d!463318))

(declare-fun b!1564317 () Bool)

(declare-fun e!1004633 () Bool)

(assert (=> b!1564317 (= e!1004633 true)))

(declare-fun b!1564316 () Bool)

(declare-fun e!1004632 () Bool)

(assert (=> b!1564316 (= e!1004632 e!1004633)))

(declare-fun b!1564315 () Bool)

(declare-fun e!1004631 () Bool)

(assert (=> b!1564315 (= e!1004631 e!1004632)))

(declare-fun d!463324 () Bool)

(assert (=> d!463324 e!1004631))

(assert (= b!1564316 b!1564317))

(assert (= b!1564315 b!1564316))

(assert (= (and d!463324 ((_ is Cons!16983) (rules!12058 obj!2))) b!1564315))

(declare-fun lambda!66146 () Int)

(declare-fun order!10061 () Int)

(declare-fun order!10059 () Int)

(declare-fun dynLambda!7569 (Int Int) Int)

(declare-fun dynLambda!7570 (Int Int) Int)

(assert (=> b!1564317 (< (dynLambda!7569 order!10059 (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7570 order!10061 lambda!66146))))

(declare-fun order!10063 () Int)

(declare-fun dynLambda!7571 (Int Int) Int)

(assert (=> b!1564317 (< (dynLambda!7571 order!10063 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7570 order!10061 lambda!66146))))

(assert (=> d!463324 true))

(declare-fun e!1004624 () Bool)

(assert (=> d!463324 e!1004624))

(declare-fun res!697352 () Bool)

(assert (=> d!463324 (=> (not res!697352) (not e!1004624))))

(declare-fun lt!541532 () Bool)

(declare-fun forall!3939 (List!17052 Int) Bool)

(assert (=> d!463324 (= res!697352 (= lt!541532 (forall!3939 (list!6529 (tokens!2184 obj!2)) lambda!66146)))))

(declare-fun forall!3940 (BalanceConc!11134 Int) Bool)

(assert (=> d!463324 (= lt!541532 (forall!3940 (tokens!2184 obj!2) lambda!66146))))

(assert (=> d!463324 (not (isEmpty!10176 (rules!12058 obj!2)))))

(assert (=> d!463324 (= (rulesProduceEachTokenIndividually!902 Lexer!2602 (rules!12058 obj!2) (tokens!2184 obj!2)) lt!541532)))

(declare-fun b!1564306 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!824 (LexerInterface!2604 List!17053 List!17052) Bool)

(assert (=> b!1564306 (= e!1004624 (= lt!541532 (rulesProduceEachTokenIndividuallyList!824 Lexer!2602 (rules!12058 obj!2) (list!6529 (tokens!2184 obj!2)))))))

(assert (= (and d!463324 res!697352) b!1564306))

(assert (=> d!463324 m!1835631))

(assert (=> d!463324 m!1835631))

(declare-fun m!1835717 () Bool)

(assert (=> d!463324 m!1835717))

(declare-fun m!1835719 () Bool)

(assert (=> d!463324 m!1835719))

(assert (=> d!463324 m!1835577))

(assert (=> b!1564306 m!1835631))

(assert (=> b!1564306 m!1835631))

(declare-fun m!1835721 () Bool)

(assert (=> b!1564306 m!1835721))

(assert (=> b!1564154 d!463324))

(declare-fun d!463344 () Bool)

(declare-fun res!697355 () Bool)

(declare-fun e!1004636 () Bool)

(assert (=> d!463344 (=> (not res!697355) (not e!1004636))))

(declare-fun rulesValid!1051 (LexerInterface!2604 List!17053) Bool)

(assert (=> d!463344 (= res!697355 (rulesValid!1051 Lexer!2602 (rules!12058 obj!2)))))

(assert (=> d!463344 (= (rulesInvariant!2281 Lexer!2602 (rules!12058 obj!2)) e!1004636)))

(declare-fun b!1564322 () Bool)

(declare-datatypes ((List!17055 0))(
  ( (Nil!16985) (Cons!16985 (h!22386 String!19643) (t!141644 List!17055)) )
))
(declare-fun noDuplicateTag!1051 (LexerInterface!2604 List!17053 List!17055) Bool)

(assert (=> b!1564322 (= e!1004636 (noDuplicateTag!1051 Lexer!2602 (rules!12058 obj!2) Nil!16985))))

(assert (= (and d!463344 res!697355) b!1564322))

(declare-fun m!1835723 () Bool)

(assert (=> d!463344 m!1835723))

(declare-fun m!1835725 () Bool)

(assert (=> b!1564322 m!1835725))

(assert (=> b!1564153 d!463344))

(declare-fun b!1564336 () Bool)

(declare-fun b_free!41783 () Bool)

(declare-fun b_next!42487 () Bool)

(assert (=> b!1564336 (= b_free!41783 (not b_next!42487))))

(declare-fun tp!460703 () Bool)

(declare-fun b_and!109133 () Bool)

(assert (=> b!1564336 (= tp!460703 b_and!109133)))

(declare-fun b_free!41785 () Bool)

(declare-fun b_next!42489 () Bool)

(assert (=> b!1564336 (= b_free!41785 (not b_next!42489))))

(declare-fun tp!460701 () Bool)

(declare-fun b_and!109135 () Bool)

(assert (=> b!1564336 (= tp!460701 b_and!109135)))

(declare-fun e!1004653 () Bool)

(declare-fun e!1004651 () Bool)

(declare-fun tp!460702 () Bool)

(declare-fun b!1564333 () Bool)

(declare-fun inv!22327 (Token!5512) Bool)

(assert (=> b!1564333 (= e!1004651 (and (inv!22327 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))) e!1004653 tp!460702))))

(assert (=> b!1564166 (= tp!460665 e!1004651)))

(declare-fun b!1564335 () Bool)

(declare-fun e!1004652 () Bool)

(declare-fun e!1004650 () Bool)

(assert (=> b!1564335 (= e!1004652 (and (inv!22311 (tag!3237 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (inv!22325 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) e!1004650))))

(declare-fun b!1564334 () Bool)

(declare-fun inv!21 (TokenValue!3063) Bool)

(assert (=> b!1564334 (= e!1004653 (and (inv!21 (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))) e!1004652))))

(assert (=> b!1564336 (= e!1004650 (and tp!460703 tp!460701))))

(assert (= b!1564335 b!1564336))

(assert (= b!1564334 b!1564335))

(assert (= b!1564333 b!1564334))

(assert (= (and b!1564166 ((_ is Cons!16982) (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))) b!1564333))

(declare-fun m!1835727 () Bool)

(assert (=> b!1564333 m!1835727))

(declare-fun m!1835729 () Bool)

(assert (=> b!1564335 m!1835729))

(declare-fun m!1835731 () Bool)

(assert (=> b!1564335 m!1835731))

(declare-fun m!1835733 () Bool)

(assert (=> b!1564334 m!1835733))

(declare-fun tp!460705 () Bool)

(declare-fun b!1564337 () Bool)

(declare-fun e!1004656 () Bool)

(declare-fun tp!460706 () Bool)

(assert (=> b!1564337 (= e!1004656 (and (inv!22316 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) tp!460705 (inv!22316 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))) tp!460706))))

(declare-fun b!1564339 () Bool)

(declare-fun e!1004655 () Bool)

(declare-fun tp!460704 () Bool)

(assert (=> b!1564339 (= e!1004655 tp!460704)))

(declare-fun b!1564338 () Bool)

(assert (=> b!1564338 (= e!1004656 (and (inv!22324 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))) e!1004655))))

(assert (=> b!1564164 (= tp!460666 (and (inv!22316 (left!13770 (c!253518 (tokens!2184 obj!2)))) e!1004656))))

(assert (= (and b!1564164 ((_ is Node!5595) (left!13770 (c!253518 (tokens!2184 obj!2))))) b!1564337))

(assert (= b!1564338 b!1564339))

(assert (= (and b!1564164 ((_ is Leaf!8301) (left!13770 (c!253518 (tokens!2184 obj!2))))) b!1564338))

(declare-fun m!1835735 () Bool)

(assert (=> b!1564337 m!1835735))

(declare-fun m!1835737 () Bool)

(assert (=> b!1564337 m!1835737))

(declare-fun m!1835739 () Bool)

(assert (=> b!1564338 m!1835739))

(assert (=> b!1564164 m!1835585))

(declare-fun b!1564340 () Bool)

(declare-fun tp!460708 () Bool)

(declare-fun e!1004658 () Bool)

(declare-fun tp!460709 () Bool)

(assert (=> b!1564340 (= e!1004658 (and (inv!22316 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) tp!460708 (inv!22316 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))) tp!460709))))

(declare-fun b!1564342 () Bool)

(declare-fun e!1004657 () Bool)

(declare-fun tp!460707 () Bool)

(assert (=> b!1564342 (= e!1004657 tp!460707)))

(declare-fun b!1564341 () Bool)

(assert (=> b!1564341 (= e!1004658 (and (inv!22324 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))) e!1004657))))

(assert (=> b!1564164 (= tp!460667 (and (inv!22316 (right!14100 (c!253518 (tokens!2184 obj!2)))) e!1004658))))

(assert (= (and b!1564164 ((_ is Node!5595) (right!14100 (c!253518 (tokens!2184 obj!2))))) b!1564340))

(assert (= b!1564341 b!1564342))

(assert (= (and b!1564164 ((_ is Leaf!8301) (right!14100 (c!253518 (tokens!2184 obj!2))))) b!1564341))

(declare-fun m!1835741 () Bool)

(assert (=> b!1564340 m!1835741))

(declare-fun m!1835743 () Bool)

(assert (=> b!1564340 m!1835743))

(declare-fun m!1835745 () Bool)

(assert (=> b!1564341 m!1835745))

(assert (=> b!1564164 m!1835587))

(declare-fun b!1564345 () Bool)

(declare-fun b_free!41787 () Bool)

(declare-fun b_next!42491 () Bool)

(assert (=> b!1564345 (= b_free!41787 (not b_next!42491))))

(declare-fun tp!460711 () Bool)

(declare-fun b_and!109137 () Bool)

(assert (=> b!1564345 (= tp!460711 b_and!109137)))

(declare-fun b_free!41789 () Bool)

(declare-fun b_next!42493 () Bool)

(assert (=> b!1564345 (= b_free!41789 (not b_next!42493))))

(declare-fun tp!460712 () Bool)

(declare-fun b_and!109139 () Bool)

(assert (=> b!1564345 (= tp!460712 b_and!109139)))

(declare-fun e!1004660 () Bool)

(assert (=> b!1564345 (= e!1004660 (and tp!460711 tp!460712))))

(declare-fun b!1564344 () Bool)

(declare-fun e!1004662 () Bool)

(assert (=> b!1564344 (= e!1004662 (and (inv!22311 (tag!3237 (h!22384 (t!141632 (rules!12058 obj!2))))) (inv!22325 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) e!1004660))))

(declare-fun b!1564343 () Bool)

(declare-fun e!1004659 () Bool)

(declare-fun tp!460710 () Bool)

(assert (=> b!1564343 (= e!1004659 (and e!1004662 tp!460710))))

(assert (=> b!1564175 (= tp!460674 e!1004659)))

(assert (= b!1564344 b!1564345))

(assert (= b!1564343 b!1564344))

(assert (= (and b!1564175 ((_ is Cons!16983) (t!141632 (rules!12058 obj!2)))) b!1564343))

(declare-fun m!1835747 () Bool)

(assert (=> b!1564344 m!1835747))

(declare-fun m!1835749 () Bool)

(assert (=> b!1564344 m!1835749))

(check-sat (not d!463344) (not b!1564337) (not b!1564214) (not b!1564218) (not b!1564182) b_and!109139 (not b!1564335) (not d!463306) b_and!109133 (not b!1564334) (not b_next!42489) (not b!1564191) (not b!1564199) (not b!1564344) (not b!1564219) (not d!463302) (not b!1564198) b_and!109123 (not d!463300) (not b_next!42475) (not b!1564322) (not b!1564215) (not b_next!42477) (not b!1564217) (not b!1564341) b_and!109135 (not b!1564315) (not b_next!42487) (not b!1564164) (not b!1564196) b_and!109121 (not d!463298) (not b!1564216) (not b!1564333) (not b_next!42493) (not b!1564339) (not d!463318) (not d!463324) (not d!463316) (not b!1564338) (not b!1564340) (not b!1564342) b_and!109137 (not b!1564306) (not b!1564343) (not b!1564201) (not b!1564195) (not b_next!42491))
(check-sat (not b_next!42489) b_and!109123 (not b_next!42475) (not b_next!42477) b_and!109135 (not b_next!42487) b_and!109121 b_and!109139 (not b_next!42493) b_and!109137 (not b_next!42491) b_and!109133)
(get-model)

(declare-fun d!463346 () Bool)

(declare-fun res!697358 () Bool)

(declare-fun e!1004663 () Bool)

(assert (=> d!463346 (=> (not res!697358) (not e!1004663))))

(assert (=> d!463346 (= res!697358 (<= (size!13778 (list!6528 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2)))))) 512))))

(assert (=> d!463346 (= (inv!22323 (left!13770 (c!253518 (tokens!2184 obj!2)))) e!1004663)))

(declare-fun b!1564346 () Bool)

(declare-fun res!697359 () Bool)

(assert (=> b!1564346 (=> (not res!697359) (not e!1004663))))

(assert (=> b!1564346 (= res!697359 (= (csize!11421 (left!13770 (c!253518 (tokens!2184 obj!2)))) (size!13778 (list!6528 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564347 () Bool)

(assert (=> b!1564347 (= e!1004663 (and (> (csize!11421 (left!13770 (c!253518 (tokens!2184 obj!2)))) 0) (<= (csize!11421 (left!13770 (c!253518 (tokens!2184 obj!2)))) 512)))))

(assert (= (and d!463346 res!697358) b!1564346))

(assert (= (and b!1564346 res!697359) b!1564347))

(declare-fun m!1835751 () Bool)

(assert (=> d!463346 m!1835751))

(assert (=> d!463346 m!1835751))

(declare-fun m!1835753 () Bool)

(assert (=> d!463346 m!1835753))

(assert (=> b!1564346 m!1835751))

(assert (=> b!1564346 m!1835751))

(assert (=> b!1564346 m!1835753))

(assert (=> b!1564198 d!463346))

(declare-fun d!463348 () Bool)

(declare-fun lt!541535 () Bool)

(declare-fun isEmpty!10179 (List!17052) Bool)

(declare-fun list!6530 (Conc!5595) List!17052)

(assert (=> d!463348 (= lt!541535 (isEmpty!10179 (list!6530 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463348 (= lt!541535 (= (size!13779 (right!14100 (c!253518 (tokens!2184 obj!2)))) 0))))

(assert (=> d!463348 (= (isEmpty!10178 (right!14100 (c!253518 (tokens!2184 obj!2)))) lt!541535)))

(declare-fun bs!389508 () Bool)

(assert (= bs!389508 d!463348))

(declare-fun m!1835755 () Bool)

(assert (=> bs!389508 m!1835755))

(assert (=> bs!389508 m!1835755))

(declare-fun m!1835757 () Bool)

(assert (=> bs!389508 m!1835757))

(assert (=> bs!389508 m!1835603))

(assert (=> b!1564219 d!463348))

(declare-fun d!463350 () Bool)

(assert (=> d!463350 (= (max!0 (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2))))) (ite (< (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (c!253518 (tokens!2184 obj!2)))) (height!832 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> b!1564191 d!463350))

(declare-fun d!463352 () Bool)

(assert (=> d!463352 (= (height!832 (left!13770 (c!253518 (tokens!2184 obj!2)))) (ite ((_ is Empty!5595) (left!13770 (c!253518 (tokens!2184 obj!2)))) 0 (ite ((_ is Leaf!8301) (left!13770 (c!253518 (tokens!2184 obj!2)))) 1 (cheight!5806 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564191 d!463352))

(declare-fun d!463354 () Bool)

(assert (=> d!463354 (= (height!832 (right!14100 (c!253518 (tokens!2184 obj!2)))) (ite ((_ is Empty!5595) (right!14100 (c!253518 (tokens!2184 obj!2)))) 0 (ite ((_ is Leaf!8301) (right!14100 (c!253518 (tokens!2184 obj!2)))) 1 (cheight!5806 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564191 d!463354))

(assert (=> b!1564218 d!463352))

(assert (=> b!1564218 d!463354))

(declare-fun d!463356 () Bool)

(declare-fun res!697360 () Bool)

(declare-fun e!1004664 () Bool)

(assert (=> d!463356 (=> (not res!697360) (not e!1004664))))

(assert (=> d!463356 (= res!697360 (= (csize!11420 (left!13770 (c!253518 (tokens!2184 obj!2)))) (+ (size!13779 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) (size!13779 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))))

(assert (=> d!463356 (= (inv!22322 (left!13770 (c!253518 (tokens!2184 obj!2)))) e!1004664)))

(declare-fun b!1564348 () Bool)

(declare-fun res!697361 () Bool)

(assert (=> b!1564348 (=> (not res!697361) (not e!1004664))))

(assert (=> b!1564348 (= res!697361 (and (not (= (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))) Empty!5595)) (not (= (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))) Empty!5595))))))

(declare-fun b!1564349 () Bool)

(declare-fun res!697362 () Bool)

(assert (=> b!1564349 (=> (not res!697362) (not e!1004664))))

(assert (=> b!1564349 (= res!697362 (= (cheight!5806 (left!13770 (c!253518 (tokens!2184 obj!2)))) (+ (max!0 (height!832 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) 1)))))

(declare-fun b!1564350 () Bool)

(assert (=> b!1564350 (= e!1004664 (<= 0 (cheight!5806 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463356 res!697360) b!1564348))

(assert (= (and b!1564348 res!697361) b!1564349))

(assert (= (and b!1564349 res!697362) b!1564350))

(declare-fun m!1835759 () Bool)

(assert (=> d!463356 m!1835759))

(declare-fun m!1835761 () Bool)

(assert (=> d!463356 m!1835761))

(declare-fun m!1835763 () Bool)

(assert (=> b!1564349 m!1835763))

(declare-fun m!1835765 () Bool)

(assert (=> b!1564349 m!1835765))

(assert (=> b!1564349 m!1835763))

(assert (=> b!1564349 m!1835765))

(declare-fun m!1835767 () Bool)

(assert (=> b!1564349 m!1835767))

(assert (=> b!1564196 d!463356))

(declare-fun d!463358 () Bool)

(declare-fun lt!541538 () Int)

(assert (=> d!463358 (= lt!541538 (size!13778 (list!6530 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463358 (= lt!541538 (ite ((_ is Empty!5595) (left!13770 (c!253518 (tokens!2184 obj!2)))) 0 (ite ((_ is Leaf!8301) (left!13770 (c!253518 (tokens!2184 obj!2)))) (csize!11421 (left!13770 (c!253518 (tokens!2184 obj!2)))) (csize!11420 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> d!463358 (= (size!13779 (left!13770 (c!253518 (tokens!2184 obj!2)))) lt!541538)))

(declare-fun bs!389509 () Bool)

(assert (= bs!389509 d!463358))

(declare-fun m!1835769 () Bool)

(assert (=> bs!389509 m!1835769))

(assert (=> bs!389509 m!1835769))

(declare-fun m!1835771 () Bool)

(assert (=> bs!389509 m!1835771))

(assert (=> d!463302 d!463358))

(declare-fun d!463360 () Bool)

(declare-fun lt!541539 () Int)

(assert (=> d!463360 (= lt!541539 (size!13778 (list!6530 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463360 (= lt!541539 (ite ((_ is Empty!5595) (right!14100 (c!253518 (tokens!2184 obj!2)))) 0 (ite ((_ is Leaf!8301) (right!14100 (c!253518 (tokens!2184 obj!2)))) (csize!11421 (right!14100 (c!253518 (tokens!2184 obj!2)))) (csize!11420 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> d!463360 (= (size!13779 (right!14100 (c!253518 (tokens!2184 obj!2)))) lt!541539)))

(declare-fun bs!389510 () Bool)

(assert (= bs!389510 d!463360))

(assert (=> bs!389510 m!1835755))

(assert (=> bs!389510 m!1835755))

(declare-fun m!1835773 () Bool)

(assert (=> bs!389510 m!1835773))

(assert (=> d!463302 d!463360))

(declare-fun b!1564351 () Bool)

(declare-fun res!697363 () Bool)

(declare-fun e!1004665 () Bool)

(assert (=> b!1564351 (=> (not res!697363) (not e!1004665))))

(assert (=> b!1564351 (= res!697363 (not (isEmpty!10178 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(declare-fun b!1564352 () Bool)

(declare-fun res!697366 () Bool)

(assert (=> b!1564352 (=> (not res!697366) (not e!1004665))))

(assert (=> b!1564352 (= res!697366 (isBalanced!1657 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564353 () Bool)

(declare-fun e!1004666 () Bool)

(assert (=> b!1564353 (= e!1004666 e!1004665)))

(declare-fun res!697365 () Bool)

(assert (=> b!1564353 (=> (not res!697365) (not e!1004665))))

(assert (=> b!1564353 (= res!697365 (<= (- 1) (- (height!832 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564354 () Bool)

(declare-fun res!697367 () Bool)

(assert (=> b!1564354 (=> (not res!697367) (not e!1004665))))

(assert (=> b!1564354 (= res!697367 (isBalanced!1657 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun d!463362 () Bool)

(declare-fun res!697364 () Bool)

(assert (=> d!463362 (=> res!697364 e!1004666)))

(assert (=> d!463362 (= res!697364 (not ((_ is Node!5595) (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463362 (= (isBalanced!1657 (left!13770 (c!253518 (tokens!2184 obj!2)))) e!1004666)))

(declare-fun b!1564355 () Bool)

(declare-fun res!697368 () Bool)

(assert (=> b!1564355 (=> (not res!697368) (not e!1004665))))

(assert (=> b!1564355 (= res!697368 (<= (- (height!832 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) 1))))

(declare-fun b!1564356 () Bool)

(assert (=> b!1564356 (= e!1004665 (not (isEmpty!10178 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(assert (= (and d!463362 (not res!697364)) b!1564353))

(assert (= (and b!1564353 res!697365) b!1564355))

(assert (= (and b!1564355 res!697368) b!1564354))

(assert (= (and b!1564354 res!697367) b!1564352))

(assert (= (and b!1564352 res!697366) b!1564351))

(assert (= (and b!1564351 res!697363) b!1564356))

(declare-fun m!1835775 () Bool)

(assert (=> b!1564351 m!1835775))

(declare-fun m!1835777 () Bool)

(assert (=> b!1564356 m!1835777))

(declare-fun m!1835779 () Bool)

(assert (=> b!1564354 m!1835779))

(assert (=> b!1564353 m!1835763))

(assert (=> b!1564353 m!1835765))

(declare-fun m!1835781 () Bool)

(assert (=> b!1564352 m!1835781))

(assert (=> b!1564355 m!1835763))

(assert (=> b!1564355 m!1835765))

(assert (=> b!1564217 d!463362))

(declare-fun d!463364 () Bool)

(assert (=> d!463364 true))

(declare-fun order!10065 () Int)

(declare-fun lambda!66149 () Int)

(declare-fun dynLambda!7572 (Int Int) Int)

(assert (=> d!463364 (< (dynLambda!7569 order!10059 (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7572 order!10065 lambda!66149))))

(declare-fun Forall2!492 (Int) Bool)

(assert (=> d!463364 (= (equivClasses!1068 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (Forall2!492 lambda!66149))))

(declare-fun bs!389511 () Bool)

(assert (= bs!389511 d!463364))

(declare-fun m!1835783 () Bool)

(assert (=> bs!389511 m!1835783))

(assert (=> b!1564195 d!463364))

(declare-fun b!1564371 () Bool)

(declare-fun e!1004675 () Bool)

(declare-fun inv!15 (TokenValue!3063) Bool)

(assert (=> b!1564371 (= e!1004675 (inv!15 (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564372 () Bool)

(declare-fun e!1004676 () Bool)

(declare-fun inv!16 (TokenValue!3063) Bool)

(assert (=> b!1564372 (= e!1004676 (inv!16 (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun d!463366 () Bool)

(declare-fun c!253534 () Bool)

(assert (=> d!463366 (= c!253534 ((_ is IntegerValue!9189) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(assert (=> d!463366 (= (inv!21 (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))) e!1004676)))

(declare-fun b!1564373 () Bool)

(declare-fun res!697373 () Bool)

(assert (=> b!1564373 (=> res!697373 e!1004675)))

(assert (=> b!1564373 (= res!697373 (not ((_ is IntegerValue!9191) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))))

(declare-fun e!1004677 () Bool)

(assert (=> b!1564373 (= e!1004677 e!1004675)))

(declare-fun b!1564374 () Bool)

(declare-fun inv!17 (TokenValue!3063) Bool)

(assert (=> b!1564374 (= e!1004677 (inv!17 (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564375 () Bool)

(assert (=> b!1564375 (= e!1004676 e!1004677)))

(declare-fun c!253533 () Bool)

(assert (=> b!1564375 (= c!253533 ((_ is IntegerValue!9190) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(assert (= (and d!463366 c!253534) b!1564372))

(assert (= (and d!463366 (not c!253534)) b!1564375))

(assert (= (and b!1564375 c!253533) b!1564374))

(assert (= (and b!1564375 (not c!253533)) b!1564373))

(assert (= (and b!1564373 (not res!697373)) b!1564371))

(declare-fun m!1835785 () Bool)

(assert (=> b!1564371 m!1835785))

(declare-fun m!1835787 () Bool)

(assert (=> b!1564372 m!1835787))

(declare-fun m!1835789 () Bool)

(assert (=> b!1564374 m!1835789))

(assert (=> b!1564334 d!463366))

(declare-fun d!463368 () Bool)

(declare-fun res!697378 () Bool)

(declare-fun e!1004680 () Bool)

(assert (=> d!463368 (=> (not res!697378) (not e!1004680))))

(declare-fun isEmpty!10180 (List!17051) Bool)

(assert (=> d!463368 (= res!697378 (not (isEmpty!10180 (originalCharacters!3787 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))))

(assert (=> d!463368 (= (inv!22327 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))) e!1004680)))

(declare-fun b!1564380 () Bool)

(declare-fun res!697379 () Bool)

(assert (=> b!1564380 (=> (not res!697379) (not e!1004680))))

(declare-fun list!6531 (BalanceConc!11132) List!17051)

(declare-fun dynLambda!7573 (Int TokenValue!3063) BalanceConc!11132)

(assert (=> b!1564380 (= res!697379 (= (originalCharacters!3787 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))) (list!6531 (dynLambda!7573 (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))))

(declare-fun b!1564381 () Bool)

(declare-fun size!13780 (List!17051) Int)

(assert (=> b!1564381 (= e!1004680 (= (size!13772 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))) (size!13780 (originalCharacters!3787 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))))

(assert (= (and d!463368 res!697378) b!1564380))

(assert (= (and b!1564380 res!697379) b!1564381))

(declare-fun b_lambda!49229 () Bool)

(assert (=> (not b_lambda!49229) (not b!1564380)))

(declare-fun t!141649 () Bool)

(declare-fun tb!87427 () Bool)

(assert (=> (and b!1564177 (= (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141649) tb!87427))

(declare-fun b!1564386 () Bool)

(declare-fun e!1004683 () Bool)

(declare-fun tp!460715 () Bool)

(declare-fun inv!22328 (Conc!5594) Bool)

(assert (=> b!1564386 (= e!1004683 (and (inv!22328 (c!253517 (dynLambda!7573 (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) tp!460715))))

(declare-fun result!105818 () Bool)

(declare-fun inv!22329 (BalanceConc!11132) Bool)

(assert (=> tb!87427 (= result!105818 (and (inv!22329 (dynLambda!7573 (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (value!94400 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) e!1004683))))

(assert (= tb!87427 b!1564386))

(declare-fun m!1835791 () Bool)

(assert (=> b!1564386 m!1835791))

(declare-fun m!1835793 () Bool)

(assert (=> tb!87427 m!1835793))

(assert (=> b!1564380 t!141649))

(declare-fun b_and!109141 () Bool)

(assert (= b_and!109123 (and (=> t!141649 result!105818) b_and!109141)))

(declare-fun t!141651 () Bool)

(declare-fun tb!87429 () Bool)

(assert (=> (and b!1564336 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141651) tb!87429))

(declare-fun result!105822 () Bool)

(assert (= result!105822 result!105818))

(assert (=> b!1564380 t!141651))

(declare-fun b_and!109143 () Bool)

(assert (= b_and!109135 (and (=> t!141651 result!105822) b_and!109143)))

(declare-fun t!141653 () Bool)

(declare-fun tb!87431 () Bool)

(assert (=> (and b!1564345 (= (toChars!4215 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141653) tb!87431))

(declare-fun result!105824 () Bool)

(assert (= result!105824 result!105818))

(assert (=> b!1564380 t!141653))

(declare-fun b_and!109145 () Bool)

(assert (= b_and!109139 (and (=> t!141653 result!105824) b_and!109145)))

(declare-fun m!1835795 () Bool)

(assert (=> d!463368 m!1835795))

(declare-fun m!1835797 () Bool)

(assert (=> b!1564380 m!1835797))

(assert (=> b!1564380 m!1835797))

(declare-fun m!1835799 () Bool)

(assert (=> b!1564380 m!1835799))

(declare-fun m!1835801 () Bool)

(assert (=> b!1564381 m!1835801))

(assert (=> b!1564333 d!463368))

(declare-fun d!463370 () Bool)

(declare-fun c!253535 () Bool)

(assert (=> d!463370 (= c!253535 ((_ is Node!5595) (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun e!1004684 () Bool)

(assert (=> d!463370 (= (inv!22316 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) e!1004684)))

(declare-fun b!1564387 () Bool)

(assert (=> b!1564387 (= e!1004684 (inv!22322 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564388 () Bool)

(declare-fun e!1004685 () Bool)

(assert (=> b!1564388 (= e!1004684 e!1004685)))

(declare-fun res!697380 () Bool)

(assert (=> b!1564388 (= res!697380 (not ((_ is Leaf!8301) (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564388 (=> res!697380 e!1004685)))

(declare-fun b!1564389 () Bool)

(assert (=> b!1564389 (= e!1004685 (inv!22323 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463370 c!253535) b!1564387))

(assert (= (and d!463370 (not c!253535)) b!1564388))

(assert (= (and b!1564388 (not res!697380)) b!1564389))

(declare-fun m!1835803 () Bool)

(assert (=> b!1564387 m!1835803))

(declare-fun m!1835805 () Bool)

(assert (=> b!1564389 m!1835805))

(assert (=> b!1564340 d!463370))

(declare-fun d!463372 () Bool)

(declare-fun c!253536 () Bool)

(assert (=> d!463372 (= c!253536 ((_ is Node!5595) (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun e!1004686 () Bool)

(assert (=> d!463372 (= (inv!22316 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))) e!1004686)))

(declare-fun b!1564390 () Bool)

(assert (=> b!1564390 (= e!1004686 (inv!22322 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564391 () Bool)

(declare-fun e!1004687 () Bool)

(assert (=> b!1564391 (= e!1004686 e!1004687)))

(declare-fun res!697381 () Bool)

(assert (=> b!1564391 (= res!697381 (not ((_ is Leaf!8301) (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564391 (=> res!697381 e!1004687)))

(declare-fun b!1564392 () Bool)

(assert (=> b!1564392 (= e!1004687 (inv!22323 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463372 c!253536) b!1564390))

(assert (= (and d!463372 (not c!253536)) b!1564391))

(assert (= (and b!1564391 (not res!697381)) b!1564392))

(declare-fun m!1835807 () Bool)

(assert (=> b!1564390 m!1835807))

(declare-fun m!1835809 () Bool)

(assert (=> b!1564392 m!1835809))

(assert (=> b!1564340 d!463372))

(declare-fun d!463374 () Bool)

(declare-fun lt!541542 () Int)

(assert (=> d!463374 (>= lt!541542 0)))

(declare-fun e!1004690 () Int)

(assert (=> d!463374 (= lt!541542 e!1004690)))

(declare-fun c!253539 () Bool)

(assert (=> d!463374 (= c!253539 ((_ is Nil!16982) (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463374 (= (size!13778 (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2))))) lt!541542)))

(declare-fun b!1564397 () Bool)

(assert (=> b!1564397 (= e!1004690 0)))

(declare-fun b!1564398 () Bool)

(assert (=> b!1564398 (= e!1004690 (+ 1 (size!13778 (t!141631 (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(assert (= (and d!463374 c!253539) b!1564397))

(assert (= (and d!463374 (not c!253539)) b!1564398))

(declare-fun m!1835811 () Bool)

(assert (=> b!1564398 m!1835811))

(assert (=> b!1564182 d!463374))

(declare-fun d!463376 () Bool)

(assert (=> d!463376 (= (list!6528 (xs!8395 (c!253518 (tokens!2184 obj!2)))) (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))

(assert (=> b!1564182 d!463376))

(declare-fun d!463378 () Bool)

(assert (=> d!463378 true))

(declare-fun lt!541545 () Bool)

(declare-fun rulesValidInductive!895 (LexerInterface!2604 List!17053) Bool)

(assert (=> d!463378 (= lt!541545 (rulesValidInductive!895 Lexer!2602 (rules!12058 obj!2)))))

(declare-fun lambda!66152 () Int)

(declare-fun forall!3941 (List!17053 Int) Bool)

(assert (=> d!463378 (= lt!541545 (forall!3941 (rules!12058 obj!2) lambda!66152))))

(assert (=> d!463378 (= (rulesValid!1051 Lexer!2602 (rules!12058 obj!2)) lt!541545)))

(declare-fun bs!389512 () Bool)

(assert (= bs!389512 d!463378))

(declare-fun m!1835813 () Bool)

(assert (=> bs!389512 m!1835813))

(declare-fun m!1835815 () Bool)

(assert (=> bs!389512 m!1835815))

(assert (=> d!463344 d!463378))

(declare-fun d!463380 () Bool)

(assert (=> d!463380 (= (inv!22311 (tag!3237 (h!22384 (t!141632 (rules!12058 obj!2))))) (= (mod (str.len (value!94399 (tag!3237 (h!22384 (t!141632 (rules!12058 obj!2)))))) 2) 0))))

(assert (=> b!1564344 d!463380))

(declare-fun d!463382 () Bool)

(declare-fun res!697382 () Bool)

(declare-fun e!1004691 () Bool)

(assert (=> d!463382 (=> (not res!697382) (not e!1004691))))

(assert (=> d!463382 (= res!697382 (semiInverseModEq!1127 (toChars!4215 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) (toValue!4356 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2)))))))))

(assert (=> d!463382 (= (inv!22325 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) e!1004691)))

(declare-fun b!1564401 () Bool)

(assert (=> b!1564401 (= e!1004691 (equivClasses!1068 (toChars!4215 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) (toValue!4356 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2)))))))))

(assert (= (and d!463382 res!697382) b!1564401))

(declare-fun m!1835817 () Bool)

(assert (=> d!463382 m!1835817))

(declare-fun m!1835819 () Bool)

(assert (=> b!1564401 m!1835819))

(assert (=> b!1564344 d!463382))

(declare-fun d!463384 () Bool)

(declare-fun res!697383 () Bool)

(declare-fun e!1004692 () Bool)

(assert (=> d!463384 (=> (not res!697383) (not e!1004692))))

(assert (=> d!463384 (= res!697383 (<= (size!13778 (list!6528 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2)))))) 512))))

(assert (=> d!463384 (= (inv!22323 (right!14100 (c!253518 (tokens!2184 obj!2)))) e!1004692)))

(declare-fun b!1564402 () Bool)

(declare-fun res!697384 () Bool)

(assert (=> b!1564402 (=> (not res!697384) (not e!1004692))))

(assert (=> b!1564402 (= res!697384 (= (csize!11421 (right!14100 (c!253518 (tokens!2184 obj!2)))) (size!13778 (list!6528 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564403 () Bool)

(assert (=> b!1564403 (= e!1004692 (and (> (csize!11421 (right!14100 (c!253518 (tokens!2184 obj!2)))) 0) (<= (csize!11421 (right!14100 (c!253518 (tokens!2184 obj!2)))) 512)))))

(assert (= (and d!463384 res!697383) b!1564402))

(assert (= (and b!1564402 res!697384) b!1564403))

(declare-fun m!1835821 () Bool)

(assert (=> d!463384 m!1835821))

(assert (=> d!463384 m!1835821))

(declare-fun m!1835823 () Bool)

(assert (=> d!463384 m!1835823))

(assert (=> b!1564402 m!1835821))

(assert (=> b!1564402 m!1835821))

(assert (=> b!1564402 m!1835823))

(assert (=> b!1564201 d!463384))

(declare-fun d!463386 () Bool)

(declare-fun lt!541546 () Int)

(assert (=> d!463386 (>= lt!541546 0)))

(declare-fun e!1004693 () Int)

(assert (=> d!463386 (= lt!541546 e!1004693)))

(declare-fun c!253540 () Bool)

(assert (=> d!463386 (= c!253540 ((_ is Nil!16982) (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463386 (= (size!13778 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))) lt!541546)))

(declare-fun b!1564404 () Bool)

(assert (=> b!1564404 (= e!1004693 0)))

(declare-fun b!1564405 () Bool)

(assert (=> b!1564405 (= e!1004693 (+ 1 (size!13778 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))

(assert (= (and d!463386 c!253540) b!1564404))

(assert (= (and d!463386 (not c!253540)) b!1564405))

(declare-fun m!1835825 () Bool)

(assert (=> b!1564405 m!1835825))

(assert (=> d!463300 d!463386))

(assert (=> b!1564164 d!463308))

(assert (=> b!1564164 d!463310))

(declare-fun d!463388 () Bool)

(declare-fun res!697385 () Bool)

(declare-fun e!1004694 () Bool)

(assert (=> d!463388 (=> (not res!697385) (not e!1004694))))

(assert (=> d!463388 (= res!697385 (= (csize!11420 (right!14100 (c!253518 (tokens!2184 obj!2)))) (+ (size!13779 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) (size!13779 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))))

(assert (=> d!463388 (= (inv!22322 (right!14100 (c!253518 (tokens!2184 obj!2)))) e!1004694)))

(declare-fun b!1564406 () Bool)

(declare-fun res!697386 () Bool)

(assert (=> b!1564406 (=> (not res!697386) (not e!1004694))))

(assert (=> b!1564406 (= res!697386 (and (not (= (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))) Empty!5595)) (not (= (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))) Empty!5595))))))

(declare-fun b!1564407 () Bool)

(declare-fun res!697387 () Bool)

(assert (=> b!1564407 (=> (not res!697387) (not e!1004694))))

(assert (=> b!1564407 (= res!697387 (= (cheight!5806 (right!14100 (c!253518 (tokens!2184 obj!2)))) (+ (max!0 (height!832 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) 1)))))

(declare-fun b!1564408 () Bool)

(assert (=> b!1564408 (= e!1004694 (<= 0 (cheight!5806 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463388 res!697385) b!1564406))

(assert (= (and b!1564406 res!697386) b!1564407))

(assert (= (and b!1564407 res!697387) b!1564408))

(declare-fun m!1835827 () Bool)

(assert (=> d!463388 m!1835827))

(declare-fun m!1835829 () Bool)

(assert (=> d!463388 m!1835829))

(declare-fun m!1835831 () Bool)

(assert (=> b!1564407 m!1835831))

(declare-fun m!1835833 () Bool)

(assert (=> b!1564407 m!1835833))

(assert (=> b!1564407 m!1835831))

(assert (=> b!1564407 m!1835833))

(declare-fun m!1835835 () Bool)

(assert (=> b!1564407 m!1835835))

(assert (=> b!1564199 d!463388))

(declare-fun d!463390 () Bool)

(declare-fun res!697392 () Bool)

(declare-fun e!1004699 () Bool)

(assert (=> d!463390 (=> res!697392 e!1004699)))

(assert (=> d!463390 (= res!697392 ((_ is Nil!16982) (list!6529 (tokens!2184 obj!2))))))

(assert (=> d!463390 (= (forall!3939 (list!6529 (tokens!2184 obj!2)) lambda!66146) e!1004699)))

(declare-fun b!1564413 () Bool)

(declare-fun e!1004700 () Bool)

(assert (=> b!1564413 (= e!1004699 e!1004700)))

(declare-fun res!697393 () Bool)

(assert (=> b!1564413 (=> (not res!697393) (not e!1004700))))

(declare-fun dynLambda!7574 (Int Token!5512) Bool)

(assert (=> b!1564413 (= res!697393 (dynLambda!7574 lambda!66146 (h!22383 (list!6529 (tokens!2184 obj!2)))))))

(declare-fun b!1564414 () Bool)

(assert (=> b!1564414 (= e!1004700 (forall!3939 (t!141631 (list!6529 (tokens!2184 obj!2))) lambda!66146))))

(assert (= (and d!463390 (not res!697392)) b!1564413))

(assert (= (and b!1564413 res!697393) b!1564414))

(declare-fun b_lambda!49231 () Bool)

(assert (=> (not b_lambda!49231) (not b!1564413)))

(declare-fun m!1835837 () Bool)

(assert (=> b!1564413 m!1835837))

(declare-fun m!1835839 () Bool)

(assert (=> b!1564414 m!1835839))

(assert (=> d!463324 d!463390))

(declare-fun d!463392 () Bool)

(assert (=> d!463392 (= (list!6529 (tokens!2184 obj!2)) (list!6530 (c!253518 (tokens!2184 obj!2))))))

(declare-fun bs!389513 () Bool)

(assert (= bs!389513 d!463392))

(declare-fun m!1835841 () Bool)

(assert (=> bs!389513 m!1835841))

(assert (=> d!463324 d!463392))

(declare-fun d!463394 () Bool)

(declare-fun lt!541549 () Bool)

(assert (=> d!463394 (= lt!541549 (forall!3939 (list!6529 (tokens!2184 obj!2)) lambda!66146))))

(declare-fun forall!3942 (Conc!5595 Int) Bool)

(assert (=> d!463394 (= lt!541549 (forall!3942 (c!253518 (tokens!2184 obj!2)) lambda!66146))))

(assert (=> d!463394 (= (forall!3940 (tokens!2184 obj!2) lambda!66146) lt!541549)))

(declare-fun bs!389514 () Bool)

(assert (= bs!389514 d!463394))

(assert (=> bs!389514 m!1835631))

(assert (=> bs!389514 m!1835631))

(assert (=> bs!389514 m!1835717))

(declare-fun m!1835843 () Bool)

(assert (=> bs!389514 m!1835843))

(assert (=> d!463324 d!463394))

(assert (=> d!463324 d!463314))

(declare-fun bs!389521 () Bool)

(declare-fun d!463396 () Bool)

(assert (= bs!389521 (and d!463396 d!463324)))

(declare-fun lambda!66161 () Int)

(assert (=> bs!389521 (= lambda!66161 lambda!66146)))

(declare-fun b!1564435 () Bool)

(declare-fun e!1004717 () Bool)

(assert (=> b!1564435 (= e!1004717 true)))

(declare-fun b!1564434 () Bool)

(declare-fun e!1004716 () Bool)

(assert (=> b!1564434 (= e!1004716 e!1004717)))

(declare-fun b!1564433 () Bool)

(declare-fun e!1004715 () Bool)

(assert (=> b!1564433 (= e!1004715 e!1004716)))

(assert (=> d!463396 e!1004715))

(assert (= b!1564434 b!1564435))

(assert (= b!1564433 b!1564434))

(assert (= (and d!463396 ((_ is Cons!16983) (rules!12058 obj!2))) b!1564433))

(assert (=> b!1564435 (< (dynLambda!7569 order!10059 (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7570 order!10061 lambda!66161))))

(assert (=> b!1564435 (< (dynLambda!7571 order!10063 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7570 order!10061 lambda!66161))))

(assert (=> d!463396 true))

(declare-fun lt!541562 () Bool)

(assert (=> d!463396 (= lt!541562 (forall!3939 (list!6529 (tokens!2184 obj!2)) lambda!66161))))

(declare-fun e!1004713 () Bool)

(assert (=> d!463396 (= lt!541562 e!1004713)))

(declare-fun res!697408 () Bool)

(assert (=> d!463396 (=> res!697408 e!1004713)))

(assert (=> d!463396 (= res!697408 (not ((_ is Cons!16982) (list!6529 (tokens!2184 obj!2)))))))

(assert (=> d!463396 (not (isEmpty!10176 (rules!12058 obj!2)))))

(assert (=> d!463396 (= (rulesProduceEachTokenIndividuallyList!824 Lexer!2602 (rules!12058 obj!2) (list!6529 (tokens!2184 obj!2))) lt!541562)))

(declare-fun b!1564431 () Bool)

(declare-fun e!1004714 () Bool)

(assert (=> b!1564431 (= e!1004713 e!1004714)))

(declare-fun res!697409 () Bool)

(assert (=> b!1564431 (=> (not res!697409) (not e!1004714))))

(declare-fun rulesProduceIndividualToken!1313 (LexerInterface!2604 List!17053 Token!5512) Bool)

(assert (=> b!1564431 (= res!697409 (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) (h!22383 (list!6529 (tokens!2184 obj!2)))))))

(declare-fun b!1564432 () Bool)

(assert (=> b!1564432 (= e!1004714 (rulesProduceEachTokenIndividuallyList!824 Lexer!2602 (rules!12058 obj!2) (t!141631 (list!6529 (tokens!2184 obj!2)))))))

(assert (= (and d!463396 (not res!697408)) b!1564431))

(assert (= (and b!1564431 res!697409) b!1564432))

(assert (=> d!463396 m!1835631))

(declare-fun m!1835867 () Bool)

(assert (=> d!463396 m!1835867))

(assert (=> d!463396 m!1835577))

(declare-fun m!1835869 () Bool)

(assert (=> b!1564431 m!1835869))

(declare-fun m!1835871 () Bool)

(assert (=> b!1564432 m!1835871))

(assert (=> b!1564306 d!463396))

(assert (=> b!1564306 d!463392))

(declare-fun d!463420 () Bool)

(assert (=> d!463420 (= (inv!22311 (tag!3237 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (= (mod (str.len (value!94399 (tag!3237 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) 2) 0))))

(assert (=> b!1564335 d!463420))

(declare-fun d!463422 () Bool)

(declare-fun res!697410 () Bool)

(declare-fun e!1004718 () Bool)

(assert (=> d!463422 (=> (not res!697410) (not e!1004718))))

(assert (=> d!463422 (= res!697410 (semiInverseModEq!1127 (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (toValue!4356 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))))

(assert (=> d!463422 (= (inv!22325 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) e!1004718)))

(declare-fun b!1564436 () Bool)

(assert (=> b!1564436 (= e!1004718 (equivClasses!1068 (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) (toValue!4356 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))))))

(assert (= (and d!463422 res!697410) b!1564436))

(declare-fun m!1835873 () Bool)

(assert (=> d!463422 m!1835873))

(declare-fun m!1835875 () Bool)

(assert (=> b!1564436 m!1835875))

(assert (=> b!1564335 d!463422))

(assert (=> d!463298 d!463374))

(assert (=> d!463298 d!463376))

(declare-fun b!1564518 () Bool)

(declare-fun e!1004765 () Bool)

(declare-fun lt!541763 () List!17052)

(assert (=> b!1564518 (= e!1004765 (rulesProduceEachTokenIndividuallyList!824 Lexer!2602 (rules!12058 obj!2) lt!541763))))

(declare-fun b!1564519 () Bool)

(declare-fun e!1004763 () Bool)

(assert (=> b!1564519 (= e!1004763 (<= 0 (size!13775 (tokens!2184 obj!2))))))

(declare-fun b!1564520 () Bool)

(declare-fun res!697477 () Bool)

(assert (=> b!1564520 (=> (not res!697477) (not e!1004765))))

(declare-fun lt!541758 () List!17052)

(declare-fun subseq!372 (List!17052 List!17052) Bool)

(assert (=> b!1564520 (= res!697477 (subseq!372 lt!541758 lt!541763))))

(declare-fun b!1564521 () Bool)

(declare-fun res!697476 () Bool)

(assert (=> b!1564521 (=> (not res!697476) (not e!1004765))))

(assert (=> b!1564521 (= res!697476 (rulesInvariant!2281 Lexer!2602 (rules!12058 obj!2)))))

(declare-fun b!1564522 () Bool)

(declare-fun e!1004764 () Bool)

(declare-fun e!1004767 () Bool)

(assert (=> b!1564522 (= e!1004764 e!1004767)))

(declare-fun res!697471 () Bool)

(assert (=> b!1564522 (=> (not res!697471) (not e!1004767))))

(declare-fun separableTokensPredicate!595 (LexerInterface!2604 Token!5512 Token!5512 List!17053) Bool)

(declare-fun apply!4124 (BalanceConc!11134 Int) Token!5512)

(assert (=> b!1564522 (= res!697471 (separableTokensPredicate!595 Lexer!2602 (apply!4124 (tokens!2184 obj!2) 0) (apply!4124 (tokens!2184 obj!2) (+ 0 1)) (rules!12058 obj!2)))))

(declare-datatypes ((Unit!26173 0))(
  ( (Unit!26174) )
))
(declare-fun lt!541741 () Unit!26173)

(declare-fun Unit!26175 () Unit!26173)

(assert (=> b!1564522 (= lt!541741 Unit!26175)))

(declare-fun size!13781 (BalanceConc!11132) Int)

(declare-fun charsOf!1656 (Token!5512) BalanceConc!11132)

(assert (=> b!1564522 (> (size!13781 (charsOf!1656 (apply!4124 (tokens!2184 obj!2) (+ 0 1)))) 0)))

(declare-fun lt!541743 () Unit!26173)

(declare-fun Unit!26176 () Unit!26173)

(assert (=> b!1564522 (= lt!541743 Unit!26176)))

(assert (=> b!1564522 (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) (apply!4124 (tokens!2184 obj!2) (+ 0 1)))))

(declare-fun lt!541739 () Unit!26173)

(declare-fun Unit!26177 () Unit!26173)

(assert (=> b!1564522 (= lt!541739 Unit!26177)))

(assert (=> b!1564522 (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) (apply!4124 (tokens!2184 obj!2) 0))))

(declare-fun lt!541757 () Unit!26173)

(declare-fun lt!541766 () Unit!26173)

(assert (=> b!1564522 (= lt!541757 lt!541766)))

(declare-fun lt!541749 () Token!5512)

(assert (=> b!1564522 (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) lt!541749)))

(declare-fun lt!541755 () List!17052)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!494 (LexerInterface!2604 List!17053 List!17052 Token!5512) Unit!26173)

(assert (=> b!1564522 (= lt!541766 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!494 Lexer!2602 (rules!12058 obj!2) lt!541755 lt!541749))))

(assert (=> b!1564522 (= lt!541749 (apply!4124 (tokens!2184 obj!2) (+ 0 1)))))

(assert (=> b!1564522 (= lt!541755 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541753 () Unit!26173)

(declare-fun lt!541764 () Unit!26173)

(assert (=> b!1564522 (= lt!541753 lt!541764)))

(declare-fun lt!541751 () Token!5512)

(assert (=> b!1564522 (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) lt!541751)))

(declare-fun lt!541752 () List!17052)

(assert (=> b!1564522 (= lt!541764 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!494 Lexer!2602 (rules!12058 obj!2) lt!541752 lt!541751))))

(assert (=> b!1564522 (= lt!541751 (apply!4124 (tokens!2184 obj!2) 0))))

(assert (=> b!1564522 (= lt!541752 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541748 () Unit!26173)

(declare-fun lt!541750 () Unit!26173)

(assert (=> b!1564522 (= lt!541748 lt!541750)))

(declare-fun lt!541761 () List!17052)

(declare-fun lt!541745 () Int)

(declare-fun tail!2219 (List!17052) List!17052)

(declare-fun drop!797 (List!17052 Int) List!17052)

(assert (=> b!1564522 (= (tail!2219 (drop!797 lt!541761 lt!541745)) (drop!797 lt!541761 (+ lt!541745 1)))))

(declare-fun lemmaDropTail!479 (List!17052 Int) Unit!26173)

(assert (=> b!1564522 (= lt!541750 (lemmaDropTail!479 lt!541761 lt!541745))))

(assert (=> b!1564522 (= lt!541745 (+ 0 1))))

(assert (=> b!1564522 (= lt!541761 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541767 () Unit!26173)

(declare-fun lt!541740 () Unit!26173)

(assert (=> b!1564522 (= lt!541767 lt!541740)))

(declare-fun lt!541744 () List!17052)

(assert (=> b!1564522 (= (tail!2219 (drop!797 lt!541744 0)) (drop!797 lt!541744 (+ 0 1)))))

(assert (=> b!1564522 (= lt!541740 (lemmaDropTail!479 lt!541744 0))))

(assert (=> b!1564522 (= lt!541744 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541762 () Unit!26173)

(declare-fun lt!541765 () Unit!26173)

(assert (=> b!1564522 (= lt!541762 lt!541765)))

(declare-fun lt!541736 () List!17052)

(declare-fun lt!541756 () Int)

(declare-fun head!3124 (List!17052) Token!5512)

(declare-fun apply!4125 (List!17052 Int) Token!5512)

(assert (=> b!1564522 (= (head!3124 (drop!797 lt!541736 lt!541756)) (apply!4125 lt!541736 lt!541756))))

(declare-fun lemmaDropApply!499 (List!17052 Int) Unit!26173)

(assert (=> b!1564522 (= lt!541765 (lemmaDropApply!499 lt!541736 lt!541756))))

(assert (=> b!1564522 (= lt!541756 (+ 0 1))))

(assert (=> b!1564522 (= lt!541736 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541759 () Unit!26173)

(declare-fun lt!541747 () Unit!26173)

(assert (=> b!1564522 (= lt!541759 lt!541747)))

(declare-fun lt!541735 () List!17052)

(assert (=> b!1564522 (= (head!3124 (drop!797 lt!541735 0)) (apply!4125 lt!541735 0))))

(assert (=> b!1564522 (= lt!541747 (lemmaDropApply!499 lt!541735 0))))

(assert (=> b!1564522 (= lt!541735 (list!6529 (tokens!2184 obj!2)))))

(declare-fun b!1564523 () Bool)

(declare-fun res!697475 () Bool)

(assert (=> b!1564523 (=> (not res!697475) (not e!1004765))))

(assert (=> b!1564523 (= res!697475 (not (isEmpty!10176 (rules!12058 obj!2))))))

(declare-fun b!1564524 () Bool)

(assert (=> b!1564524 (= e!1004767 (tokensListTwoByTwoPredicateSeparable!143 Lexer!2602 (tokens!2184 obj!2) (+ 0 1) (rules!12058 obj!2)))))

(declare-fun d!463424 () Bool)

(declare-fun lt!541738 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!316 (LexerInterface!2604 List!17052 List!17053) Bool)

(declare-fun dropList!495 (BalanceConc!11134 Int) List!17052)

(assert (=> d!463424 (= lt!541738 (tokensListTwoByTwoPredicateSeparableList!316 Lexer!2602 (dropList!495 (tokens!2184 obj!2) 0) (rules!12058 obj!2)))))

(declare-fun lt!541742 () Unit!26173)

(declare-fun lt!541746 () Unit!26173)

(assert (=> d!463424 (= lt!541742 lt!541746)))

(assert (=> d!463424 (rulesProduceEachTokenIndividuallyList!824 Lexer!2602 (rules!12058 obj!2) lt!541758)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!67 (LexerInterface!2604 List!17053 List!17052 List!17052) Unit!26173)

(assert (=> d!463424 (= lt!541746 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!67 Lexer!2602 (rules!12058 obj!2) lt!541763 lt!541758))))

(assert (=> d!463424 e!1004765))

(declare-fun res!697474 () Bool)

(assert (=> d!463424 (=> (not res!697474) (not e!1004765))))

(assert (=> d!463424 (= res!697474 ((_ is Lexer!2602) Lexer!2602))))

(assert (=> d!463424 (= lt!541758 (dropList!495 (tokens!2184 obj!2) 0))))

(assert (=> d!463424 (= lt!541763 (list!6529 (tokens!2184 obj!2)))))

(declare-fun lt!541737 () Unit!26173)

(declare-fun lt!541760 () Unit!26173)

(assert (=> d!463424 (= lt!541737 lt!541760)))

(declare-fun lt!541754 () List!17052)

(assert (=> d!463424 (subseq!372 (drop!797 lt!541754 0) lt!541754)))

(declare-fun lemmaDropSubSeq!67 (List!17052 Int) Unit!26173)

(assert (=> d!463424 (= lt!541760 (lemmaDropSubSeq!67 lt!541754 0))))

(declare-fun e!1004766 () Bool)

(assert (=> d!463424 e!1004766))

(declare-fun res!697473 () Bool)

(assert (=> d!463424 (=> (not res!697473) (not e!1004766))))

(assert (=> d!463424 (= res!697473 (>= 0 0))))

(assert (=> d!463424 (= lt!541754 (list!6529 (tokens!2184 obj!2)))))

(assert (=> d!463424 (= lt!541738 e!1004764)))

(declare-fun res!697472 () Bool)

(assert (=> d!463424 (=> res!697472 e!1004764)))

(assert (=> d!463424 (= res!697472 (not (< 0 (- (size!13775 (tokens!2184 obj!2)) 1))))))

(assert (=> d!463424 e!1004763))

(declare-fun res!697470 () Bool)

(assert (=> d!463424 (=> (not res!697470) (not e!1004763))))

(assert (=> d!463424 (= res!697470 (>= 0 0))))

(assert (=> d!463424 (= (tokensListTwoByTwoPredicateSeparable!143 Lexer!2602 (tokens!2184 obj!2) 0 (rules!12058 obj!2)) lt!541738)))

(declare-fun b!1564525 () Bool)

(assert (=> b!1564525 (= e!1004766 (<= 0 (size!13778 lt!541754)))))

(assert (= (and d!463424 res!697470) b!1564519))

(assert (= (and d!463424 (not res!697472)) b!1564522))

(assert (= (and b!1564522 res!697471) b!1564524))

(assert (= (and d!463424 res!697473) b!1564525))

(assert (= (and d!463424 res!697474) b!1564523))

(assert (= (and b!1564523 res!697475) b!1564521))

(assert (= (and b!1564521 res!697476) b!1564520))

(assert (= (and b!1564520 res!697477) b!1564518))

(assert (=> b!1564523 m!1835577))

(assert (=> b!1564519 m!1835557))

(declare-fun m!1836009 () Bool)

(assert (=> b!1564518 m!1836009))

(declare-fun m!1836011 () Bool)

(assert (=> b!1564522 m!1836011))

(declare-fun m!1836013 () Bool)

(assert (=> b!1564522 m!1836013))

(declare-fun m!1836015 () Bool)

(assert (=> b!1564522 m!1836015))

(declare-fun m!1836017 () Bool)

(assert (=> b!1564522 m!1836017))

(declare-fun m!1836019 () Bool)

(assert (=> b!1564522 m!1836019))

(declare-fun m!1836021 () Bool)

(assert (=> b!1564522 m!1836021))

(declare-fun m!1836023 () Bool)

(assert (=> b!1564522 m!1836023))

(declare-fun m!1836025 () Bool)

(assert (=> b!1564522 m!1836025))

(declare-fun m!1836027 () Bool)

(assert (=> b!1564522 m!1836027))

(declare-fun m!1836029 () Bool)

(assert (=> b!1564522 m!1836029))

(declare-fun m!1836031 () Bool)

(assert (=> b!1564522 m!1836031))

(assert (=> b!1564522 m!1836013))

(assert (=> b!1564522 m!1836029))

(declare-fun m!1836033 () Bool)

(assert (=> b!1564522 m!1836033))

(assert (=> b!1564522 m!1836017))

(assert (=> b!1564522 m!1836029))

(declare-fun m!1836035 () Bool)

(assert (=> b!1564522 m!1836035))

(assert (=> b!1564522 m!1836029))

(declare-fun m!1836037 () Bool)

(assert (=> b!1564522 m!1836037))

(declare-fun m!1836039 () Bool)

(assert (=> b!1564522 m!1836039))

(assert (=> b!1564522 m!1835631))

(assert (=> b!1564522 m!1836027))

(declare-fun m!1836041 () Bool)

(assert (=> b!1564522 m!1836041))

(declare-fun m!1836043 () Bool)

(assert (=> b!1564522 m!1836043))

(assert (=> b!1564522 m!1836021))

(declare-fun m!1836045 () Bool)

(assert (=> b!1564522 m!1836045))

(declare-fun m!1836047 () Bool)

(assert (=> b!1564522 m!1836047))

(declare-fun m!1836049 () Bool)

(assert (=> b!1564522 m!1836049))

(declare-fun m!1836051 () Bool)

(assert (=> b!1564522 m!1836051))

(assert (=> b!1564522 m!1836039))

(declare-fun m!1836053 () Bool)

(assert (=> b!1564522 m!1836053))

(declare-fun m!1836055 () Bool)

(assert (=> b!1564522 m!1836055))

(declare-fun m!1836057 () Bool)

(assert (=> b!1564522 m!1836057))

(declare-fun m!1836059 () Bool)

(assert (=> b!1564522 m!1836059))

(declare-fun m!1836061 () Bool)

(assert (=> b!1564522 m!1836061))

(assert (=> b!1564522 m!1836027))

(assert (=> b!1564522 m!1836035))

(declare-fun m!1836063 () Bool)

(assert (=> b!1564522 m!1836063))

(declare-fun m!1836065 () Bool)

(assert (=> b!1564525 m!1836065))

(assert (=> b!1564521 m!1835579))

(declare-fun m!1836067 () Bool)

(assert (=> d!463424 m!1836067))

(declare-fun m!1836069 () Bool)

(assert (=> d!463424 m!1836069))

(assert (=> d!463424 m!1835631))

(declare-fun m!1836071 () Bool)

(assert (=> d!463424 m!1836071))

(assert (=> d!463424 m!1836067))

(declare-fun m!1836073 () Bool)

(assert (=> d!463424 m!1836073))

(assert (=> d!463424 m!1835557))

(assert (=> d!463424 m!1836073))

(declare-fun m!1836075 () Bool)

(assert (=> d!463424 m!1836075))

(declare-fun m!1836077 () Bool)

(assert (=> d!463424 m!1836077))

(declare-fun m!1836079 () Bool)

(assert (=> d!463424 m!1836079))

(declare-fun m!1836081 () Bool)

(assert (=> b!1564520 m!1836081))

(declare-fun m!1836083 () Bool)

(assert (=> b!1564524 m!1836083))

(assert (=> d!463318 d!463424))

(declare-fun d!463456 () Bool)

(assert (=> d!463456 (= (inv!22324 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))) (<= (size!13778 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2)))))) 2147483647))))

(declare-fun bs!389526 () Bool)

(assert (= bs!389526 d!463456))

(declare-fun m!1836085 () Bool)

(assert (=> bs!389526 m!1836085))

(assert (=> b!1564341 d!463456))

(assert (=> b!1564216 d!463352))

(assert (=> b!1564216 d!463354))

(declare-fun d!463458 () Bool)

(declare-fun res!697482 () Bool)

(declare-fun e!1004772 () Bool)

(assert (=> d!463458 (=> res!697482 e!1004772)))

(assert (=> d!463458 (= res!697482 ((_ is Nil!16983) (rules!12058 obj!2)))))

(assert (=> d!463458 (= (noDuplicateTag!1051 Lexer!2602 (rules!12058 obj!2) Nil!16985) e!1004772)))

(declare-fun b!1564530 () Bool)

(declare-fun e!1004773 () Bool)

(assert (=> b!1564530 (= e!1004772 e!1004773)))

(declare-fun res!697483 () Bool)

(assert (=> b!1564530 (=> (not res!697483) (not e!1004773))))

(declare-fun contains!2999 (List!17055 String!19643) Bool)

(assert (=> b!1564530 (= res!697483 (not (contains!2999 Nil!16985 (tag!3237 (h!22384 (rules!12058 obj!2))))))))

(declare-fun b!1564531 () Bool)

(assert (=> b!1564531 (= e!1004773 (noDuplicateTag!1051 Lexer!2602 (t!141632 (rules!12058 obj!2)) (Cons!16985 (tag!3237 (h!22384 (rules!12058 obj!2))) Nil!16985)))))

(assert (= (and d!463458 (not res!697482)) b!1564530))

(assert (= (and b!1564530 res!697483) b!1564531))

(declare-fun m!1836087 () Bool)

(assert (=> b!1564530 m!1836087))

(declare-fun m!1836089 () Bool)

(assert (=> b!1564531 m!1836089))

(assert (=> b!1564322 d!463458))

(declare-fun b!1564532 () Bool)

(declare-fun res!697484 () Bool)

(declare-fun e!1004774 () Bool)

(assert (=> b!1564532 (=> (not res!697484) (not e!1004774))))

(assert (=> b!1564532 (= res!697484 (not (isEmpty!10178 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(declare-fun b!1564533 () Bool)

(declare-fun res!697487 () Bool)

(assert (=> b!1564533 (=> (not res!697487) (not e!1004774))))

(assert (=> b!1564533 (= res!697487 (isBalanced!1657 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564534 () Bool)

(declare-fun e!1004775 () Bool)

(assert (=> b!1564534 (= e!1004775 e!1004774)))

(declare-fun res!697486 () Bool)

(assert (=> b!1564534 (=> (not res!697486) (not e!1004774))))

(assert (=> b!1564534 (= res!697486 (<= (- 1) (- (height!832 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))))))))

(declare-fun b!1564535 () Bool)

(declare-fun res!697488 () Bool)

(assert (=> b!1564535 (=> (not res!697488) (not e!1004774))))

(assert (=> b!1564535 (= res!697488 (isBalanced!1657 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun d!463460 () Bool)

(declare-fun res!697485 () Bool)

(assert (=> d!463460 (=> res!697485 e!1004775)))

(assert (=> d!463460 (= res!697485 (not ((_ is Node!5595) (right!14100 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463460 (= (isBalanced!1657 (right!14100 (c!253518 (tokens!2184 obj!2)))) e!1004775)))

(declare-fun b!1564536 () Bool)

(declare-fun res!697489 () Bool)

(assert (=> b!1564536 (=> (not res!697489) (not e!1004774))))

(assert (=> b!1564536 (= res!697489 (<= (- (height!832 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) (height!832 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) 1))))

(declare-fun b!1564537 () Bool)

(assert (=> b!1564537 (= e!1004774 (not (isEmpty!10178 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))))))

(assert (= (and d!463460 (not res!697485)) b!1564534))

(assert (= (and b!1564534 res!697486) b!1564536))

(assert (= (and b!1564536 res!697489) b!1564535))

(assert (= (and b!1564535 res!697488) b!1564533))

(assert (= (and b!1564533 res!697487) b!1564532))

(assert (= (and b!1564532 res!697484) b!1564537))

(declare-fun m!1836091 () Bool)

(assert (=> b!1564532 m!1836091))

(declare-fun m!1836093 () Bool)

(assert (=> b!1564537 m!1836093))

(declare-fun m!1836095 () Bool)

(assert (=> b!1564535 m!1836095))

(assert (=> b!1564534 m!1835831))

(assert (=> b!1564534 m!1835833))

(declare-fun m!1836097 () Bool)

(assert (=> b!1564533 m!1836097))

(assert (=> b!1564536 m!1835831))

(assert (=> b!1564536 m!1835833))

(assert (=> b!1564215 d!463460))

(declare-fun d!463462 () Bool)

(assert (=> d!463462 true))

(declare-fun lambda!66167 () Int)

(declare-fun order!10071 () Int)

(declare-fun dynLambda!7577 (Int Int) Int)

(assert (=> d!463462 (< (dynLambda!7571 order!10063 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7577 order!10071 lambda!66167))))

(assert (=> d!463462 true))

(assert (=> d!463462 (< (dynLambda!7569 order!10059 (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (dynLambda!7577 order!10071 lambda!66167))))

(declare-fun Forall!622 (Int) Bool)

(assert (=> d!463462 (= (semiInverseModEq!1127 (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toValue!4356 (transformation!2973 (h!22384 (rules!12058 obj!2))))) (Forall!622 lambda!66167))))

(declare-fun bs!389527 () Bool)

(assert (= bs!389527 d!463462))

(declare-fun m!1836099 () Bool)

(assert (=> bs!389527 m!1836099))

(assert (=> d!463306 d!463462))

(declare-fun d!463464 () Bool)

(assert (=> d!463464 (= (inv!22324 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))) (<= (size!13778 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2)))))) 2147483647))))

(declare-fun bs!389528 () Bool)

(assert (= bs!389528 d!463464))

(declare-fun m!1836101 () Bool)

(assert (=> bs!389528 m!1836101))

(assert (=> b!1564338 d!463464))

(declare-fun d!463466 () Bool)

(declare-fun lt!541768 () Bool)

(assert (=> d!463466 (= lt!541768 (isEmpty!10179 (list!6530 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463466 (= lt!541768 (= (size!13779 (left!13770 (c!253518 (tokens!2184 obj!2)))) 0))))

(assert (=> d!463466 (= (isEmpty!10178 (left!13770 (c!253518 (tokens!2184 obj!2)))) lt!541768)))

(declare-fun bs!389529 () Bool)

(assert (= bs!389529 d!463466))

(assert (=> bs!389529 m!1835769))

(assert (=> bs!389529 m!1835769))

(declare-fun m!1836103 () Bool)

(assert (=> bs!389529 m!1836103))

(assert (=> bs!389529 m!1835601))

(assert (=> b!1564214 d!463466))

(declare-fun d!463468 () Bool)

(declare-fun lt!541769 () Int)

(assert (=> d!463468 (>= lt!541769 0)))

(declare-fun e!1004776 () Int)

(assert (=> d!463468 (= lt!541769 e!1004776)))

(declare-fun c!253550 () Bool)

(assert (=> d!463468 (= c!253550 ((_ is Nil!16982) (list!6529 (tokens!2184 obj!2))))))

(assert (=> d!463468 (= (size!13778 (list!6529 (tokens!2184 obj!2))) lt!541769)))

(declare-fun b!1564542 () Bool)

(assert (=> b!1564542 (= e!1004776 0)))

(declare-fun b!1564543 () Bool)

(assert (=> b!1564543 (= e!1004776 (+ 1 (size!13778 (t!141631 (list!6529 (tokens!2184 obj!2))))))))

(assert (= (and d!463468 c!253550) b!1564542))

(assert (= (and d!463468 (not c!253550)) b!1564543))

(declare-fun m!1836105 () Bool)

(assert (=> b!1564543 m!1836105))

(assert (=> d!463316 d!463468))

(assert (=> d!463316 d!463392))

(declare-fun d!463470 () Bool)

(declare-fun lt!541770 () Int)

(assert (=> d!463470 (= lt!541770 (size!13778 (list!6530 (c!253518 (tokens!2184 obj!2)))))))

(assert (=> d!463470 (= lt!541770 (ite ((_ is Empty!5595) (c!253518 (tokens!2184 obj!2))) 0 (ite ((_ is Leaf!8301) (c!253518 (tokens!2184 obj!2))) (csize!11421 (c!253518 (tokens!2184 obj!2))) (csize!11420 (c!253518 (tokens!2184 obj!2))))))))

(assert (=> d!463470 (= (size!13779 (c!253518 (tokens!2184 obj!2))) lt!541770)))

(declare-fun bs!389530 () Bool)

(assert (= bs!389530 d!463470))

(assert (=> bs!389530 m!1835841))

(assert (=> bs!389530 m!1835841))

(declare-fun m!1836107 () Bool)

(assert (=> bs!389530 m!1836107))

(assert (=> d!463316 d!463470))

(declare-fun d!463472 () Bool)

(declare-fun c!253551 () Bool)

(assert (=> d!463472 (= c!253551 ((_ is Node!5595) (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun e!1004777 () Bool)

(assert (=> d!463472 (= (inv!22316 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) e!1004777)))

(declare-fun b!1564544 () Bool)

(assert (=> b!1564544 (= e!1004777 (inv!22322 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564545 () Bool)

(declare-fun e!1004778 () Bool)

(assert (=> b!1564545 (= e!1004777 e!1004778)))

(declare-fun res!697490 () Bool)

(assert (=> b!1564545 (= res!697490 (not ((_ is Leaf!8301) (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564545 (=> res!697490 e!1004778)))

(declare-fun b!1564546 () Bool)

(assert (=> b!1564546 (= e!1004778 (inv!22323 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463472 c!253551) b!1564544))

(assert (= (and d!463472 (not c!253551)) b!1564545))

(assert (= (and b!1564545 (not res!697490)) b!1564546))

(declare-fun m!1836109 () Bool)

(assert (=> b!1564544 m!1836109))

(declare-fun m!1836111 () Bool)

(assert (=> b!1564546 m!1836111))

(assert (=> b!1564337 d!463472))

(declare-fun d!463474 () Bool)

(declare-fun c!253552 () Bool)

(assert (=> d!463474 (= c!253552 ((_ is Node!5595) (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun e!1004779 () Bool)

(assert (=> d!463474 (= (inv!22316 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))) e!1004779)))

(declare-fun b!1564547 () Bool)

(assert (=> b!1564547 (= e!1004779 (inv!22322 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(declare-fun b!1564548 () Bool)

(declare-fun e!1004780 () Bool)

(assert (=> b!1564548 (= e!1004779 e!1004780)))

(declare-fun res!697491 () Bool)

(assert (=> b!1564548 (= res!697491 (not ((_ is Leaf!8301) (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))))))

(assert (=> b!1564548 (=> res!697491 e!1004780)))

(declare-fun b!1564549 () Bool)

(assert (=> b!1564549 (= e!1004780 (inv!22323 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))))))

(assert (= (and d!463474 c!253552) b!1564547))

(assert (= (and d!463474 (not c!253552)) b!1564548))

(assert (= (and b!1564548 (not res!697491)) b!1564549))

(declare-fun m!1836113 () Bool)

(assert (=> b!1564547 m!1836113))

(declare-fun m!1836115 () Bool)

(assert (=> b!1564549 m!1836115))

(assert (=> b!1564337 d!463474))

(declare-fun b!1564553 () Bool)

(declare-fun b_free!41791 () Bool)

(declare-fun b_next!42495 () Bool)

(assert (=> b!1564553 (= b_free!41791 (not b_next!42495))))

(declare-fun tp!460718 () Bool)

(declare-fun b_and!109147 () Bool)

(assert (=> b!1564553 (= tp!460718 b_and!109147)))

(declare-fun b_free!41793 () Bool)

(declare-fun b_next!42497 () Bool)

(assert (=> b!1564553 (= b_free!41793 (not b_next!42497))))

(declare-fun t!141660 () Bool)

(declare-fun tb!87433 () Bool)

(assert (=> (and b!1564553 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141660) tb!87433))

(declare-fun result!105826 () Bool)

(assert (= result!105826 result!105818))

(assert (=> b!1564380 t!141660))

(declare-fun b_and!109149 () Bool)

(declare-fun tp!460716 () Bool)

(assert (=> b!1564553 (= tp!460716 (and (=> t!141660 result!105826) b_and!109149))))

(declare-fun e!1004785 () Bool)

(declare-fun b!1564550 () Bool)

(declare-fun tp!460717 () Bool)

(declare-fun e!1004783 () Bool)

(assert (=> b!1564550 (= e!1004783 (and (inv!22327 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))) e!1004785 tp!460717))))

(assert (=> b!1564333 (= tp!460702 e!1004783)))

(declare-fun b!1564552 () Bool)

(declare-fun e!1004784 () Bool)

(declare-fun e!1004782 () Bool)

(assert (=> b!1564552 (= e!1004784 (and (inv!22311 (tag!3237 (rule!4759 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) (inv!22325 (transformation!2973 (rule!4759 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) e!1004782))))

(declare-fun b!1564551 () Bool)

(assert (=> b!1564551 (= e!1004785 (and (inv!21 (value!94400 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))) e!1004784))))

(assert (=> b!1564553 (= e!1004782 (and tp!460718 tp!460716))))

(assert (= b!1564552 b!1564553))

(assert (= b!1564551 b!1564552))

(assert (= b!1564550 b!1564551))

(assert (= (and b!1564333 ((_ is Cons!16982) (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))) b!1564550))

(declare-fun m!1836117 () Bool)

(assert (=> b!1564550 m!1836117))

(declare-fun m!1836119 () Bool)

(assert (=> b!1564552 m!1836119))

(declare-fun m!1836121 () Bool)

(assert (=> b!1564552 m!1836121))

(declare-fun m!1836123 () Bool)

(assert (=> b!1564551 m!1836123))

(declare-fun tp!460721 () Bool)

(declare-fun tp!460720 () Bool)

(declare-fun b!1564554 () Bool)

(declare-fun e!1004788 () Bool)

(assert (=> b!1564554 (= e!1004788 (and (inv!22316 (left!13770 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))) tp!460720 (inv!22316 (right!14100 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))) tp!460721))))

(declare-fun b!1564556 () Bool)

(declare-fun e!1004787 () Bool)

(declare-fun tp!460719 () Bool)

(assert (=> b!1564556 (= e!1004787 tp!460719)))

(declare-fun b!1564555 () Bool)

(assert (=> b!1564555 (= e!1004788 (and (inv!22324 (xs!8395 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))) e!1004787))))

(assert (=> b!1564340 (= tp!460708 (and (inv!22316 (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2))))) e!1004788))))

(assert (= (and b!1564340 ((_ is Node!5595) (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))) b!1564554))

(assert (= b!1564555 b!1564556))

(assert (= (and b!1564340 ((_ is Leaf!8301) (left!13770 (right!14100 (c!253518 (tokens!2184 obj!2)))))) b!1564555))

(declare-fun m!1836125 () Bool)

(assert (=> b!1564554 m!1836125))

(declare-fun m!1836127 () Bool)

(assert (=> b!1564554 m!1836127))

(declare-fun m!1836129 () Bool)

(assert (=> b!1564555 m!1836129))

(assert (=> b!1564340 m!1835741))

(declare-fun b!1564557 () Bool)

(declare-fun e!1004790 () Bool)

(declare-fun tp!460723 () Bool)

(declare-fun tp!460724 () Bool)

(assert (=> b!1564557 (= e!1004790 (and (inv!22316 (left!13770 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) tp!460723 (inv!22316 (right!14100 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) tp!460724))))

(declare-fun b!1564559 () Bool)

(declare-fun e!1004789 () Bool)

(declare-fun tp!460722 () Bool)

(assert (=> b!1564559 (= e!1004789 tp!460722)))

(declare-fun b!1564558 () Bool)

(assert (=> b!1564558 (= e!1004790 (and (inv!22324 (xs!8395 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) e!1004789))))

(assert (=> b!1564340 (= tp!460709 (and (inv!22316 (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2))))) e!1004790))))

(assert (= (and b!1564340 ((_ is Node!5595) (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) b!1564557))

(assert (= b!1564558 b!1564559))

(assert (= (and b!1564340 ((_ is Leaf!8301) (right!14100 (right!14100 (c!253518 (tokens!2184 obj!2)))))) b!1564558))

(declare-fun m!1836131 () Bool)

(assert (=> b!1564557 m!1836131))

(declare-fun m!1836133 () Bool)

(assert (=> b!1564557 m!1836133))

(declare-fun m!1836135 () Bool)

(assert (=> b!1564558 m!1836135))

(assert (=> b!1564340 m!1835743))

(declare-fun b!1564562 () Bool)

(declare-fun b_free!41795 () Bool)

(declare-fun b_next!42499 () Bool)

(assert (=> b!1564562 (= b_free!41795 (not b_next!42499))))

(declare-fun tp!460726 () Bool)

(declare-fun b_and!109151 () Bool)

(assert (=> b!1564562 (= tp!460726 b_and!109151)))

(declare-fun b_free!41797 () Bool)

(declare-fun b_next!42501 () Bool)

(assert (=> b!1564562 (= b_free!41797 (not b_next!42501))))

(declare-fun t!141662 () Bool)

(declare-fun tb!87435 () Bool)

(assert (=> (and b!1564562 (= (toChars!4215 (transformation!2973 (h!22384 (t!141632 (t!141632 (rules!12058 obj!2)))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141662) tb!87435))

(declare-fun result!105828 () Bool)

(assert (= result!105828 result!105818))

(assert (=> b!1564380 t!141662))

(declare-fun b_and!109153 () Bool)

(declare-fun tp!460727 () Bool)

(assert (=> b!1564562 (= tp!460727 (and (=> t!141662 result!105828) b_and!109153))))

(declare-fun e!1004792 () Bool)

(assert (=> b!1564562 (= e!1004792 (and tp!460726 tp!460727))))

(declare-fun b!1564561 () Bool)

(declare-fun e!1004794 () Bool)

(assert (=> b!1564561 (= e!1004794 (and (inv!22311 (tag!3237 (h!22384 (t!141632 (t!141632 (rules!12058 obj!2)))))) (inv!22325 (transformation!2973 (h!22384 (t!141632 (t!141632 (rules!12058 obj!2)))))) e!1004792))))

(declare-fun b!1564560 () Bool)

(declare-fun e!1004791 () Bool)

(declare-fun tp!460725 () Bool)

(assert (=> b!1564560 (= e!1004791 (and e!1004794 tp!460725))))

(assert (=> b!1564343 (= tp!460710 e!1004791)))

(assert (= b!1564561 b!1564562))

(assert (= b!1564560 b!1564561))

(assert (= (and b!1564343 ((_ is Cons!16983) (t!141632 (t!141632 (rules!12058 obj!2))))) b!1564560))

(declare-fun m!1836137 () Bool)

(assert (=> b!1564561 m!1836137))

(declare-fun m!1836139 () Bool)

(assert (=> b!1564561 m!1836139))

(declare-fun b!1564566 () Bool)

(declare-fun b_free!41799 () Bool)

(declare-fun b_next!42503 () Bool)

(assert (=> b!1564566 (= b_free!41799 (not b_next!42503))))

(declare-fun tp!460730 () Bool)

(declare-fun b_and!109155 () Bool)

(assert (=> b!1564566 (= tp!460730 b_and!109155)))

(declare-fun b_free!41801 () Bool)

(declare-fun b_next!42505 () Bool)

(assert (=> b!1564566 (= b_free!41801 (not b_next!42505))))

(declare-fun t!141664 () Bool)

(declare-fun tb!87437 () Bool)

(assert (=> (and b!1564566 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141664) tb!87437))

(declare-fun result!105830 () Bool)

(assert (= result!105830 result!105818))

(assert (=> b!1564380 t!141664))

(declare-fun tp!460728 () Bool)

(declare-fun b_and!109157 () Bool)

(assert (=> b!1564566 (= tp!460728 (and (=> t!141664 result!105830) b_and!109157))))

(declare-fun e!1004797 () Bool)

(declare-fun tp!460729 () Bool)

(declare-fun e!1004799 () Bool)

(declare-fun b!1564563 () Bool)

(assert (=> b!1564563 (= e!1004797 (and (inv!22327 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))) e!1004799 tp!460729))))

(assert (=> b!1564339 (= tp!460704 e!1004797)))

(declare-fun b!1564565 () Bool)

(declare-fun e!1004798 () Bool)

(declare-fun e!1004796 () Bool)

(assert (=> b!1564565 (= e!1004798 (and (inv!22311 (tag!3237 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))))) (inv!22325 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))))) e!1004796))))

(declare-fun b!1564564 () Bool)

(assert (=> b!1564564 (= e!1004799 (and (inv!21 (value!94400 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2)))))))) e!1004798))))

(assert (=> b!1564566 (= e!1004796 (and tp!460730 tp!460728))))

(assert (= b!1564565 b!1564566))

(assert (= b!1564564 b!1564565))

(assert (= b!1564563 b!1564564))

(assert (= (and b!1564339 ((_ is Cons!16982) (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))) b!1564563))

(declare-fun m!1836141 () Bool)

(assert (=> b!1564563 m!1836141))

(declare-fun m!1836143 () Bool)

(assert (=> b!1564565 m!1836143))

(declare-fun m!1836145 () Bool)

(assert (=> b!1564565 m!1836145))

(declare-fun m!1836147 () Bool)

(assert (=> b!1564564 m!1836147))

(declare-fun tp!460733 () Bool)

(declare-fun tp!460732 () Bool)

(declare-fun e!1004802 () Bool)

(declare-fun b!1564567 () Bool)

(assert (=> b!1564567 (= e!1004802 (and (inv!22316 (left!13770 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))) tp!460732 (inv!22316 (right!14100 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))) tp!460733))))

(declare-fun b!1564569 () Bool)

(declare-fun e!1004801 () Bool)

(declare-fun tp!460731 () Bool)

(assert (=> b!1564569 (= e!1004801 tp!460731)))

(declare-fun b!1564568 () Bool)

(assert (=> b!1564568 (= e!1004802 (and (inv!22324 (xs!8395 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))) e!1004801))))

(assert (=> b!1564337 (= tp!460705 (and (inv!22316 (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2))))) e!1004802))))

(assert (= (and b!1564337 ((_ is Node!5595) (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))) b!1564567))

(assert (= b!1564568 b!1564569))

(assert (= (and b!1564337 ((_ is Leaf!8301) (left!13770 (left!13770 (c!253518 (tokens!2184 obj!2)))))) b!1564568))

(declare-fun m!1836149 () Bool)

(assert (=> b!1564567 m!1836149))

(declare-fun m!1836151 () Bool)

(assert (=> b!1564567 m!1836151))

(declare-fun m!1836153 () Bool)

(assert (=> b!1564568 m!1836153))

(assert (=> b!1564337 m!1835735))

(declare-fun b!1564570 () Bool)

(declare-fun tp!460735 () Bool)

(declare-fun tp!460736 () Bool)

(declare-fun e!1004804 () Bool)

(assert (=> b!1564570 (= e!1004804 (and (inv!22316 (left!13770 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) tp!460735 (inv!22316 (right!14100 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) tp!460736))))

(declare-fun b!1564572 () Bool)

(declare-fun e!1004803 () Bool)

(declare-fun tp!460734 () Bool)

(assert (=> b!1564572 (= e!1004803 tp!460734)))

(declare-fun b!1564571 () Bool)

(assert (=> b!1564571 (= e!1004804 (and (inv!22324 (xs!8395 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) e!1004803))))

(assert (=> b!1564337 (= tp!460706 (and (inv!22316 (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2))))) e!1004804))))

(assert (= (and b!1564337 ((_ is Node!5595) (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) b!1564570))

(assert (= b!1564571 b!1564572))

(assert (= (and b!1564337 ((_ is Leaf!8301) (right!14100 (left!13770 (c!253518 (tokens!2184 obj!2)))))) b!1564571))

(declare-fun m!1836155 () Bool)

(assert (=> b!1564570 m!1836155))

(declare-fun m!1836157 () Bool)

(assert (=> b!1564570 m!1836157))

(declare-fun m!1836159 () Bool)

(assert (=> b!1564571 m!1836159))

(assert (=> b!1564337 m!1835737))

(declare-fun b!1564576 () Bool)

(declare-fun b_free!41803 () Bool)

(declare-fun b_next!42507 () Bool)

(assert (=> b!1564576 (= b_free!41803 (not b_next!42507))))

(declare-fun tp!460739 () Bool)

(declare-fun b_and!109159 () Bool)

(assert (=> b!1564576 (= tp!460739 b_and!109159)))

(declare-fun b_free!41805 () Bool)

(declare-fun b_next!42509 () Bool)

(assert (=> b!1564576 (= b_free!41805 (not b_next!42509))))

(declare-fun t!141666 () Bool)

(declare-fun tb!87439 () Bool)

(assert (=> (and b!1564576 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) t!141666) tb!87439))

(declare-fun result!105832 () Bool)

(assert (= result!105832 result!105818))

(assert (=> b!1564380 t!141666))

(declare-fun b_and!109161 () Bool)

(declare-fun tp!460737 () Bool)

(assert (=> b!1564576 (= tp!460737 (and (=> t!141666 result!105832) b_and!109161))))

(declare-fun e!1004807 () Bool)

(declare-fun tp!460738 () Bool)

(declare-fun b!1564573 () Bool)

(declare-fun e!1004809 () Bool)

(assert (=> b!1564573 (= e!1004807 (and (inv!22327 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))) e!1004809 tp!460738))))

(assert (=> b!1564342 (= tp!460707 e!1004807)))

(declare-fun b!1564575 () Bool)

(declare-fun e!1004808 () Bool)

(declare-fun e!1004806 () Bool)

(assert (=> b!1564575 (= e!1004808 (and (inv!22311 (tag!3237 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))))) (inv!22325 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))))) e!1004806))))

(declare-fun b!1564574 () Bool)

(assert (=> b!1564574 (= e!1004809 (and (inv!21 (value!94400 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2)))))))) e!1004808))))

(assert (=> b!1564576 (= e!1004806 (and tp!460739 tp!460737))))

(assert (= b!1564575 b!1564576))

(assert (= b!1564574 b!1564575))

(assert (= b!1564573 b!1564574))

(assert (= (and b!1564342 ((_ is Cons!16982) (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))) b!1564573))

(declare-fun m!1836161 () Bool)

(assert (=> b!1564573 m!1836161))

(declare-fun m!1836163 () Bool)

(assert (=> b!1564575 m!1836163))

(declare-fun m!1836165 () Bool)

(assert (=> b!1564575 m!1836165))

(declare-fun m!1836167 () Bool)

(assert (=> b!1564574 m!1836167))

(declare-fun b!1564579 () Bool)

(declare-fun e!1004813 () Bool)

(assert (=> b!1564579 (= e!1004813 true)))

(declare-fun b!1564578 () Bool)

(declare-fun e!1004812 () Bool)

(assert (=> b!1564578 (= e!1004812 e!1004813)))

(declare-fun b!1564577 () Bool)

(declare-fun e!1004811 () Bool)

(assert (=> b!1564577 (= e!1004811 e!1004812)))

(assert (=> b!1564315 e!1004811))

(assert (= b!1564578 b!1564579))

(assert (= b!1564577 b!1564578))

(assert (= (and b!1564315 ((_ is Cons!16983) (t!141632 (rules!12058 obj!2)))) b!1564577))

(assert (=> b!1564579 (< (dynLambda!7569 order!10059 (toValue!4356 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2)))))) (dynLambda!7570 order!10061 lambda!66146))))

(assert (=> b!1564579 (< (dynLambda!7571 order!10063 (toChars!4215 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2)))))) (dynLambda!7570 order!10061 lambda!66146))))

(declare-fun b_lambda!49235 () Bool)

(assert (= b_lambda!49231 (or d!463324 b_lambda!49235)))

(declare-fun bs!389531 () Bool)

(declare-fun d!463476 () Bool)

(assert (= bs!389531 (and d!463476 d!463324)))

(assert (=> bs!389531 (= (dynLambda!7574 lambda!66146 (h!22383 (list!6529 (tokens!2184 obj!2)))) (rulesProduceIndividualToken!1313 Lexer!2602 (rules!12058 obj!2) (h!22383 (list!6529 (tokens!2184 obj!2)))))))

(assert (=> bs!389531 m!1835869))

(assert (=> b!1564413 d!463476))

(declare-fun b_lambda!49237 () Bool)

(assert (= b_lambda!49229 (or (and b!1564576 b_free!41805 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (right!14100 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) (and b!1564336 b_free!41785) (and b!1564566 b_free!41801 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (left!13770 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) (and b!1564177 b_free!41773 (= (toChars!4215 (transformation!2973 (h!22384 (rules!12058 obj!2)))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) (and b!1564345 b_free!41789 (= (toChars!4215 (transformation!2973 (h!22384 (t!141632 (rules!12058 obj!2))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) (and b!1564553 b_free!41793 (= (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (t!141631 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2))))))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) (and b!1564562 b_free!41797 (= (toChars!4215 (transformation!2973 (h!22384 (t!141632 (t!141632 (rules!12058 obj!2)))))) (toChars!4215 (transformation!2973 (rule!4759 (h!22383 (innerList!5655 (xs!8395 (c!253518 (tokens!2184 obj!2)))))))))) b_lambda!49237)))

(check-sat (not b!1564381) (not b_next!42489) (not d!463360) (not d!463368) (not b!1564563) (not d!463462) (not d!463396) (not b!1564556) (not b!1564352) (not b!1564551) (not d!463358) b_and!109159 (not b!1564561) (not d!463364) (not d!463424) (not d!463470) (not b!1564405) (not b!1564337) (not b!1564372) (not d!463422) (not b!1564544) (not b!1564575) (not b!1564401) (not b!1564535) (not b!1564349) (not b!1564558) b_and!109161 (not b!1564570) (not b!1564436) (not d!463394) (not b!1564519) (not b_next!42475) (not b!1564432) (not b!1564555) (not b!1564557) (not b!1564530) (not b!1564568) (not b!1564355) (not b!1564392) (not b!1564560) (not b!1564389) (not b_lambda!49237) (not bs!389531) (not b_next!42477) (not d!463346) (not b!1564522) (not b!1564431) (not b!1564533) (not d!463464) (not d!463378) (not b!1564346) (not b!1564398) b_and!109145 b_and!109149 (not b_next!42497) (not b!1564371) (not b_next!42487) (not b!1564407) (not b!1564523) (not b!1564518) (not b!1564521) b_and!109155 (not b!1564536) (not b!1564569) (not d!463356) b_and!109153 (not b!1564531) (not b_next!42503) (not b!1564380) (not d!463388) (not b!1564537) b_and!109121 (not d!463466) (not b!1564567) (not b!1564390) (not b!1564433) b_and!109147 (not b!1564574) (not b!1564554) (not b!1564550) b_and!109151 (not b_next!42493) (not b_next!42509) (not b!1564351) (not b!1564549) (not b!1564354) (not b!1564534) b_and!109141 (not d!463384) (not b_next!42505) (not d!463392) b_and!109157 (not d!463348) (not b!1564340) (not b!1564414) (not tb!87427) b_and!109137 (not b!1564572) (not b!1564532) (not b!1564552) (not b!1564402) (not b!1564374) (not b!1564564) (not b!1564573) (not b!1564356) (not b!1564353) (not b_next!42507) (not b!1564520) (not b_next!42491) (not b!1564543) (not b!1564386) (not b!1564546) (not b_next!42495) (not b_next!42501) (not b!1564571) b_and!109143 (not b!1564577) b_and!109133 (not d!463456) (not b!1564565) (not b!1564387) (not b_lambda!49235) (not b!1564547) (not b_next!42499) (not b!1564524) (not b!1564559) (not b!1564525) (not d!463382))
(check-sat (not b_next!42489) b_and!109159 b_and!109161 (not b_next!42475) (not b_next!42477) (not b_next!42487) (not b_next!42503) b_and!109121 b_and!109147 (not b_next!42509) b_and!109137 (not b_next!42495) (not b_next!42499) b_and!109145 b_and!109149 (not b_next!42497) b_and!109155 b_and!109153 b_and!109151 (not b_next!42493) b_and!109141 (not b_next!42505) b_and!109157 (not b_next!42507) (not b_next!42491) (not b_next!42501) b_and!109143 b_and!109133)
