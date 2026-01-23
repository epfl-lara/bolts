; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!64490 () Bool)

(assert start!64490)

(declare-fun b!659608 () Bool)

(declare-fun e!407888 () Bool)

(declare-datatypes ((List!7135 0))(
  ( (Nil!7121) (Cons!7121 (h!12522 (_ BitVec 16)) (t!86117 List!7135)) )
))
(declare-datatypes ((TokenValue!1467 0))(
  ( (FloatLiteralValue!2934 (text!10714 List!7135)) (TokenValueExt!1466 (__x!5043 Int)) (Broken!7335 (value!45967 List!7135)) (Object!1480) (End!1467) (Def!1467) (Underscore!1467) (Match!1467) (Else!1467) (Error!1467) (Case!1467) (If!1467) (Extends!1467) (Abstract!1467) (Class!1467) (Val!1467) (DelimiterValue!2934 (del!1527 List!7135)) (KeywordValue!1473 (value!45968 List!7135)) (CommentValue!2934 (value!45969 List!7135)) (WhitespaceValue!2934 (value!45970 List!7135)) (IndentationValue!1467 (value!45971 List!7135)) (String!9074) (Int32!1467) (Broken!7336 (value!45972 List!7135)) (Boolean!1468) (Unit!12327) (OperatorValue!1470 (op!1527 List!7135)) (IdentifierValue!2934 (value!45973 List!7135)) (IdentifierValue!2935 (value!45974 List!7135)) (WhitespaceValue!2935 (value!45975 List!7135)) (True!2934) (False!2934) (Broken!7337 (value!45976 List!7135)) (Broken!7338 (value!45977 List!7135)) (True!2935) (RightBrace!1467) (RightBracket!1467) (Colon!1467) (Null!1467) (Comma!1467) (LeftBracket!1467) (False!2935) (LeftBrace!1467) (ImaginaryLiteralValue!1467 (text!10715 List!7135)) (StringLiteralValue!4401 (value!45978 List!7135)) (EOFValue!1467 (value!45979 List!7135)) (IdentValue!1467 (value!45980 List!7135)) (DelimiterValue!2935 (value!45981 List!7135)) (DedentValue!1467 (value!45982 List!7135)) (NewLineValue!1467 (value!45983 List!7135)) (IntegerValue!4401 (value!45984 (_ BitVec 32)) (text!10716 List!7135)) (IntegerValue!4402 (value!45985 Int) (text!10717 List!7135)) (Times!1467) (Or!1467) (Equal!1467) (Minus!1467) (Broken!7339 (value!45986 List!7135)) (And!1467) (Div!1467) (LessEqual!1467) (Mod!1467) (Concat!3235) (Not!1467) (Plus!1467) (SpaceValue!1467 (value!45987 List!7135)) (IntegerValue!4403 (value!45988 Int) (text!10718 List!7135)) (StringLiteralValue!4402 (text!10719 List!7135)) (FloatLiteralValue!2935 (text!10720 List!7135)) (BytesLiteralValue!1467 (value!45989 List!7135)) (CommentValue!2935 (value!45990 List!7135)) (StringLiteralValue!4403 (value!45991 List!7135)) (ErrorTokenValue!1467 (msg!1528 List!7135)) )
))
(declare-datatypes ((Regex!1768 0))(
  ( (ElementMatch!1768 (c!118747 (_ BitVec 16))) (Concat!3236 (regOne!4048 Regex!1768) (regTwo!4048 Regex!1768)) (EmptyExpr!1768) (Star!1768 (reg!2097 Regex!1768)) (EmptyLang!1768) (Union!1768 (regOne!4049 Regex!1768) (regTwo!4049 Regex!1768)) )
))
(declare-datatypes ((String!9075 0))(
  ( (String!9076 (value!45992 String)) )
))
(declare-datatypes ((IArray!5015 0))(
  ( (IArray!5016 (innerList!2565 List!7135)) )
))
(declare-datatypes ((Conc!2507 0))(
  ( (Node!2507 (left!5773 Conc!2507) (right!6103 Conc!2507) (csize!5244 Int) (cheight!2718 Int)) (Leaf!3740 (xs!5156 IArray!5015) (csize!5245 Int)) (Empty!2507) )
))
(declare-datatypes ((BalanceConc!5026 0))(
  ( (BalanceConc!5027 (c!118748 Conc!2507)) )
))
(declare-datatypes ((TokenValueInjection!2686 0))(
  ( (TokenValueInjection!2687 (toValue!2374 Int) (toChars!2233 Int)) )
))
(declare-datatypes ((Rule!2666 0))(
  ( (Rule!2667 (regex!1433 Regex!1768) (tag!1695 String!9075) (isSeparator!1433 Bool) (transformation!1433 TokenValueInjection!2686)) )
))
(declare-datatypes ((Token!2588 0))(
  ( (Token!2589 (value!45993 TokenValue!1467) (rule!2228 Rule!2666) (size!5669 Int) (originalCharacters!1465 List!7135)) )
))
(declare-datatypes ((List!7136 0))(
  ( (Nil!7122) (Cons!7122 (h!12523 Token!2588) (t!86118 List!7136)) )
))
(declare-datatypes ((IArray!5017 0))(
  ( (IArray!5018 (innerList!2566 List!7136)) )
))
(declare-datatypes ((Conc!2508 0))(
  ( (Node!2508 (left!5774 Conc!2508) (right!6104 Conc!2508) (csize!5246 Int) (cheight!2719 Int)) (Leaf!3741 (xs!5157 IArray!5017) (csize!5247 Int)) (Empty!2508) )
))
(declare-datatypes ((List!7137 0))(
  ( (Nil!7123) (Cons!7123 (h!12524 Rule!2666) (t!86119 List!7137)) )
))
(declare-datatypes ((BalanceConc!5028 0))(
  ( (BalanceConc!5029 (c!118749 Conc!2508)) )
))
(declare-datatypes ((PrintableTokens!170 0))(
  ( (PrintableTokens!171 (rules!8262 List!7137) (tokens!1240 BalanceConc!5028)) )
))
(declare-fun objs!31 () PrintableTokens!170)

(declare-fun tp!201042 () Bool)

(declare-fun inv!9107 (Conc!2508) Bool)

(assert (=> b!659608 (= e!407888 (and (inv!9107 (c!118749 (tokens!1240 objs!31))) tp!201042))))

(declare-fun tp!201045 () Bool)

(declare-fun e!407887 () Bool)

(declare-fun b!659609 () Bool)

(declare-fun inv!9108 (BalanceConc!5028) Bool)

(assert (=> b!659609 (= e!407887 (and tp!201045 (inv!9108 (tokens!1240 objs!31)) e!407888))))

(declare-fun e!407886 () Bool)

(declare-fun tp!201044 () Bool)

(declare-fun b!659610 () Bool)

(declare-fun e!407882 () Bool)

(declare-fun sepL!1 () PrintableTokens!170)

(assert (=> b!659610 (= e!407886 (and tp!201044 (inv!9108 (tokens!1240 sepL!1)) e!407882))))

(declare-fun b!659611 () Bool)

(declare-fun tp!201043 () Bool)

(assert (=> b!659611 (= e!407882 (and (inv!9107 (c!118749 (tokens!1240 sepL!1))) tp!201043))))

(declare-fun b!659612 () Bool)

(declare-fun res!292861 () Bool)

(declare-fun e!407883 () Bool)

(assert (=> b!659612 (=> (not res!292861) (not e!407883))))

(declare-fun sepR!1 () PrintableTokens!170)

(declare-fun usesJsonRules!0 (PrintableTokens!170) Bool)

(assert (=> b!659612 (= res!292861 (usesJsonRules!0 sepR!1))))

(declare-fun res!292862 () Bool)

(assert (=> start!64490 (=> (not res!292862) (not e!407883))))

(assert (=> start!64490 (= res!292862 (usesJsonRules!0 objs!31))))

(assert (=> start!64490 e!407883))

(declare-fun inv!9109 (PrintableTokens!170) Bool)

(assert (=> start!64490 (and (inv!9109 objs!31) e!407887)))

(assert (=> start!64490 (and (inv!9109 sepL!1) e!407886)))

(declare-fun e!407885 () Bool)

(assert (=> start!64490 (and (inv!9109 sepR!1) e!407885)))

(declare-fun b!659613 () Bool)

(declare-fun e!407884 () Bool)

(declare-fun tp!201046 () Bool)

(assert (=> b!659613 (= e!407884 (and (inv!9107 (c!118749 (tokens!1240 sepR!1))) tp!201046))))

(declare-fun tp!201041 () Bool)

(declare-fun b!659614 () Bool)

(assert (=> b!659614 (= e!407885 (and tp!201041 (inv!9108 (tokens!1240 sepR!1)) e!407884))))

(declare-fun b!659615 () Bool)

(declare-fun res!292860 () Bool)

(assert (=> b!659615 (=> (not res!292860) (not e!407883))))

(assert (=> b!659615 (= res!292860 (usesJsonRules!0 sepL!1))))

(declare-fun b!659616 () Bool)

(assert (=> b!659616 (= e!407883 (not (= (rules!8262 sepL!1) (rules!8262 objs!31))))))

(assert (= (and start!64490 res!292862) b!659615))

(assert (= (and b!659615 res!292860) b!659612))

(assert (= (and b!659612 res!292861) b!659616))

(assert (= b!659609 b!659608))

(assert (= start!64490 b!659609))

(assert (= b!659610 b!659611))

(assert (= start!64490 b!659610))

(assert (= b!659614 b!659613))

(assert (= start!64490 b!659614))

(declare-fun m!925311 () Bool)

(assert (=> b!659611 m!925311))

(declare-fun m!925313 () Bool)

(assert (=> b!659614 m!925313))

(declare-fun m!925315 () Bool)

(assert (=> b!659612 m!925315))

(declare-fun m!925317 () Bool)

(assert (=> b!659613 m!925317))

(declare-fun m!925319 () Bool)

(assert (=> b!659610 m!925319))

(declare-fun m!925321 () Bool)

(assert (=> b!659608 m!925321))

(declare-fun m!925323 () Bool)

(assert (=> b!659615 m!925323))

(declare-fun m!925325 () Bool)

(assert (=> b!659609 m!925325))

(declare-fun m!925327 () Bool)

(assert (=> start!64490 m!925327))

(declare-fun m!925329 () Bool)

(assert (=> start!64490 m!925329))

(declare-fun m!925331 () Bool)

(assert (=> start!64490 m!925331))

(declare-fun m!925333 () Bool)

(assert (=> start!64490 m!925333))

(push 1)

(assert (not b!659613))

(assert (not b!659614))

(assert (not b!659608))

(assert (not b!659611))

(assert (not b!659615))

(assert (not start!64490))

(assert (not b!659609))

(assert (not b!659610))

(assert (not b!659612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!225799 () Bool)

(declare-fun isBalanced!659 (Conc!2508) Bool)

(assert (=> d!225799 (= (inv!9108 (tokens!1240 objs!31)) (isBalanced!659 (c!118749 (tokens!1240 objs!31))))))

(declare-fun bs!94381 () Bool)

(assert (= bs!94381 d!225799))

(declare-fun m!925359 () Bool)

(assert (=> bs!94381 m!925359))

(assert (=> b!659609 d!225799))

(declare-fun d!225801 () Bool)

(assert (=> d!225801 (= (inv!9108 (tokens!1240 sepR!1)) (isBalanced!659 (c!118749 (tokens!1240 sepR!1))))))

(declare-fun bs!94382 () Bool)

(assert (= bs!94382 d!225801))

(declare-fun m!925361 () Bool)

(assert (=> bs!94382 m!925361))

(assert (=> b!659614 d!225801))

(declare-fun d!225803 () Bool)

(declare-fun c!118755 () Bool)

(assert (=> d!225803 (= c!118755 (is-Node!2508 (c!118749 (tokens!1240 objs!31))))))

(declare-fun e!407914 () Bool)

(assert (=> d!225803 (= (inv!9107 (c!118749 (tokens!1240 objs!31))) e!407914)))

(declare-fun b!659650 () Bool)

(declare-fun inv!9113 (Conc!2508) Bool)

(assert (=> b!659650 (= e!407914 (inv!9113 (c!118749 (tokens!1240 objs!31))))))

(declare-fun b!659651 () Bool)

(declare-fun e!407915 () Bool)

(assert (=> b!659651 (= e!407914 e!407915)))

(declare-fun res!292878 () Bool)

(assert (=> b!659651 (= res!292878 (not (is-Leaf!3741 (c!118749 (tokens!1240 objs!31)))))))

(assert (=> b!659651 (=> res!292878 e!407915)))

(declare-fun b!659652 () Bool)

(declare-fun inv!9114 (Conc!2508) Bool)

(assert (=> b!659652 (= e!407915 (inv!9114 (c!118749 (tokens!1240 objs!31))))))

(assert (= (and d!225803 c!118755) b!659650))

(assert (= (and d!225803 (not c!118755)) b!659651))

(assert (= (and b!659651 (not res!292878)) b!659652))

(declare-fun m!925363 () Bool)

(assert (=> b!659650 m!925363))

(declare-fun m!925365 () Bool)

(assert (=> b!659652 m!925365))

(assert (=> b!659608 d!225803))

(declare-fun d!225807 () Bool)

(declare-fun c!118756 () Bool)

(assert (=> d!225807 (= c!118756 (is-Node!2508 (c!118749 (tokens!1240 sepR!1))))))

(declare-fun e!407916 () Bool)

(assert (=> d!225807 (= (inv!9107 (c!118749 (tokens!1240 sepR!1))) e!407916)))

(declare-fun b!659653 () Bool)

(assert (=> b!659653 (= e!407916 (inv!9113 (c!118749 (tokens!1240 sepR!1))))))

(declare-fun b!659654 () Bool)

(declare-fun e!407917 () Bool)

(assert (=> b!659654 (= e!407916 e!407917)))

(declare-fun res!292879 () Bool)

(assert (=> b!659654 (= res!292879 (not (is-Leaf!3741 (c!118749 (tokens!1240 sepR!1)))))))

(assert (=> b!659654 (=> res!292879 e!407917)))

(declare-fun b!659655 () Bool)

(assert (=> b!659655 (= e!407917 (inv!9114 (c!118749 (tokens!1240 sepR!1))))))

(assert (= (and d!225807 c!118756) b!659653))

(assert (= (and d!225807 (not c!118756)) b!659654))

(assert (= (and b!659654 (not res!292879)) b!659655))

(declare-fun m!925367 () Bool)

(assert (=> b!659653 m!925367))

(declare-fun m!925369 () Bool)

(assert (=> b!659655 m!925369))

(assert (=> b!659613 d!225807))

(declare-fun d!225809 () Bool)

(declare-datatypes ((JsonLexer!218 0))(
  ( (JsonLexer!219) )
))
(declare-fun rules!109 (JsonLexer!218) List!7137)

(assert (=> d!225809 (= (usesJsonRules!0 objs!31) (= (rules!8262 objs!31) (rules!109 JsonLexer!219)))))

(declare-fun bs!94383 () Bool)

(assert (= bs!94383 d!225809))

(declare-fun m!925375 () Bool)

(assert (=> bs!94383 m!925375))

(assert (=> start!64490 d!225809))

(declare-fun d!225813 () Bool)

(declare-fun res!292889 () Bool)

(declare-fun e!407926 () Bool)

(assert (=> d!225813 (=> (not res!292889) (not e!407926))))

(declare-fun isEmpty!4775 (List!7137) Bool)

(assert (=> d!225813 (= res!292889 (not (isEmpty!4775 (rules!8262 objs!31))))))

(assert (=> d!225813 (= (inv!9109 objs!31) e!407926)))

(declare-fun b!659671 () Bool)

(declare-fun res!292890 () Bool)

(assert (=> b!659671 (=> (not res!292890) (not e!407926))))

(declare-datatypes ((LexerInterface!1267 0))(
  ( (LexerInterfaceExt!1264 (__x!5045 Int)) (Lexer!1265) )
))
(declare-fun rulesInvariant!1202 (LexerInterface!1267 List!7137) Bool)

(assert (=> b!659671 (= res!292890 (rulesInvariant!1202 Lexer!1265 (rules!8262 objs!31)))))

(declare-fun b!659672 () Bool)

(declare-fun res!292891 () Bool)

(assert (=> b!659672 (=> (not res!292891) (not e!407926))))

(declare-fun rulesProduceEachTokenIndividually!585 (LexerInterface!1267 List!7137 BalanceConc!5028) Bool)

(assert (=> b!659672 (= res!292891 (rulesProduceEachTokenIndividually!585 Lexer!1265 (rules!8262 objs!31) (tokens!1240 objs!31)))))

(declare-fun b!659673 () Bool)

(declare-fun separableTokens!35 (LexerInterface!1267 BalanceConc!5028 List!7137) Bool)

(assert (=> b!659673 (= e!407926 (separableTokens!35 Lexer!1265 (tokens!1240 objs!31) (rules!8262 objs!31)))))

(assert (= (and d!225813 res!292889) b!659671))

(assert (= (and b!659671 res!292890) b!659672))

(assert (= (and b!659672 res!292891) b!659673))

(declare-fun m!925379 () Bool)

(assert (=> d!225813 m!925379))

(declare-fun m!925381 () Bool)

(assert (=> b!659671 m!925381))

(declare-fun m!925383 () Bool)

(assert (=> b!659672 m!925383))

(declare-fun m!925385 () Bool)

(assert (=> b!659673 m!925385))

(assert (=> start!64490 d!225813))

(declare-fun d!225817 () Bool)

(declare-fun res!292892 () Bool)

(declare-fun e!407927 () Bool)

(assert (=> d!225817 (=> (not res!292892) (not e!407927))))

(assert (=> d!225817 (= res!292892 (not (isEmpty!4775 (rules!8262 sepL!1))))))

(assert (=> d!225817 (= (inv!9109 sepL!1) e!407927)))

(declare-fun b!659674 () Bool)

(declare-fun res!292893 () Bool)

(assert (=> b!659674 (=> (not res!292893) (not e!407927))))

(assert (=> b!659674 (= res!292893 (rulesInvariant!1202 Lexer!1265 (rules!8262 sepL!1)))))

(declare-fun b!659675 () Bool)

(declare-fun res!292894 () Bool)

(assert (=> b!659675 (=> (not res!292894) (not e!407927))))

(assert (=> b!659675 (= res!292894 (rulesProduceEachTokenIndividually!585 Lexer!1265 (rules!8262 sepL!1) (tokens!1240 sepL!1)))))

(declare-fun b!659676 () Bool)

(assert (=> b!659676 (= e!407927 (separableTokens!35 Lexer!1265 (tokens!1240 sepL!1) (rules!8262 sepL!1)))))

(assert (= (and d!225817 res!292892) b!659674))

(assert (= (and b!659674 res!292893) b!659675))

(assert (= (and b!659675 res!292894) b!659676))

(declare-fun m!925387 () Bool)

(assert (=> d!225817 m!925387))

(declare-fun m!925389 () Bool)

(assert (=> b!659674 m!925389))

(declare-fun m!925391 () Bool)

(assert (=> b!659675 m!925391))

(declare-fun m!925393 () Bool)

(assert (=> b!659676 m!925393))

(assert (=> start!64490 d!225817))

(declare-fun d!225819 () Bool)

(declare-fun res!292895 () Bool)

(declare-fun e!407928 () Bool)

(assert (=> d!225819 (=> (not res!292895) (not e!407928))))

(assert (=> d!225819 (= res!292895 (not (isEmpty!4775 (rules!8262 sepR!1))))))

(assert (=> d!225819 (= (inv!9109 sepR!1) e!407928)))

(declare-fun b!659677 () Bool)

(declare-fun res!292896 () Bool)

(assert (=> b!659677 (=> (not res!292896) (not e!407928))))

(assert (=> b!659677 (= res!292896 (rulesInvariant!1202 Lexer!1265 (rules!8262 sepR!1)))))

(declare-fun b!659678 () Bool)

(declare-fun res!292897 () Bool)

(assert (=> b!659678 (=> (not res!292897) (not e!407928))))

(assert (=> b!659678 (= res!292897 (rulesProduceEachTokenIndividually!585 Lexer!1265 (rules!8262 sepR!1) (tokens!1240 sepR!1)))))

(declare-fun b!659679 () Bool)

(assert (=> b!659679 (= e!407928 (separableTokens!35 Lexer!1265 (tokens!1240 sepR!1) (rules!8262 sepR!1)))))

(assert (= (and d!225819 res!292895) b!659677))

(assert (= (and b!659677 res!292896) b!659678))

(assert (= (and b!659678 res!292897) b!659679))

(declare-fun m!925395 () Bool)

(assert (=> d!225819 m!925395))

(declare-fun m!925397 () Bool)

(assert (=> b!659677 m!925397))

(declare-fun m!925399 () Bool)

(assert (=> b!659678 m!925399))

(declare-fun m!925401 () Bool)

(assert (=> b!659679 m!925401))

(assert (=> start!64490 d!225819))

(declare-fun d!225821 () Bool)

(assert (=> d!225821 (= (usesJsonRules!0 sepR!1) (= (rules!8262 sepR!1) (rules!109 JsonLexer!219)))))

(declare-fun bs!94385 () Bool)

(assert (= bs!94385 d!225821))

(assert (=> bs!94385 m!925375))

(assert (=> b!659612 d!225821))

(declare-fun d!225823 () Bool)

(declare-fun c!118760 () Bool)

(assert (=> d!225823 (= c!118760 (is-Node!2508 (c!118749 (tokens!1240 sepL!1))))))

(declare-fun e!407929 () Bool)

(assert (=> d!225823 (= (inv!9107 (c!118749 (tokens!1240 sepL!1))) e!407929)))

(declare-fun b!659680 () Bool)

(assert (=> b!659680 (= e!407929 (inv!9113 (c!118749 (tokens!1240 sepL!1))))))

(declare-fun b!659681 () Bool)

(declare-fun e!407930 () Bool)

(assert (=> b!659681 (= e!407929 e!407930)))

(declare-fun res!292898 () Bool)

(assert (=> b!659681 (= res!292898 (not (is-Leaf!3741 (c!118749 (tokens!1240 sepL!1)))))))

(assert (=> b!659681 (=> res!292898 e!407930)))

(declare-fun b!659682 () Bool)

(assert (=> b!659682 (= e!407930 (inv!9114 (c!118749 (tokens!1240 sepL!1))))))

(assert (= (and d!225823 c!118760) b!659680))

(assert (= (and d!225823 (not c!118760)) b!659681))

(assert (= (and b!659681 (not res!292898)) b!659682))

(declare-fun m!925403 () Bool)

(assert (=> b!659680 m!925403))

(declare-fun m!925405 () Bool)

(assert (=> b!659682 m!925405))

(assert (=> b!659611 d!225823))

(declare-fun d!225825 () Bool)

(assert (=> d!225825 (= (inv!9108 (tokens!1240 sepL!1)) (isBalanced!659 (c!118749 (tokens!1240 sepL!1))))))

(declare-fun bs!94386 () Bool)

(assert (= bs!94386 d!225825))

(declare-fun m!925407 () Bool)

(assert (=> bs!94386 m!925407))

(assert (=> b!659610 d!225825))

(declare-fun d!225827 () Bool)

(assert (=> d!225827 (= (usesJsonRules!0 sepL!1) (= (rules!8262 sepL!1) (rules!109 JsonLexer!219)))))

(declare-fun bs!94387 () Bool)

(assert (= bs!94387 d!225827))

(assert (=> bs!94387 m!925375))

(assert (=> b!659615 d!225827))

(declare-fun b!659693 () Bool)

(declare-fun b_free!18993 () Bool)

(declare-fun b_next!19057 () Bool)

(assert (=> b!659693 (= b_free!18993 (not b_next!19057))))

(declare-fun tp!201072 () Bool)

(declare-fun b_and!62787 () Bool)

(assert (=> b!659693 (= tp!201072 b_and!62787)))

(declare-fun b_free!18995 () Bool)

(declare-fun b_next!19059 () Bool)

(assert (=> b!659693 (= b_free!18995 (not b_next!19059))))

(declare-fun tp!201073 () Bool)

(declare-fun b_and!62789 () Bool)

(assert (=> b!659693 (= tp!201073 b_and!62789)))

(declare-fun e!407942 () Bool)

(assert (=> b!659693 (= e!407942 (and tp!201072 tp!201073))))

(declare-fun b!659692 () Bool)

(declare-fun e!407941 () Bool)

(declare-fun inv!9104 (String!9075) Bool)

(declare-fun inv!9115 (TokenValueInjection!2686) Bool)

(assert (=> b!659692 (= e!407941 (and (inv!9104 (tag!1695 (h!12524 (rules!8262 objs!31)))) (inv!9115 (transformation!1433 (h!12524 (rules!8262 objs!31)))) e!407942))))

(declare-fun b!659691 () Bool)

(declare-fun e!407939 () Bool)

(declare-fun tp!201071 () Bool)

(assert (=> b!659691 (= e!407939 (and e!407941 tp!201071))))

(assert (=> b!659609 (= tp!201045 e!407939)))

(assert (= b!659692 b!659693))

(assert (= b!659691 b!659692))

(assert (= (and b!659609 (is-Cons!7123 (rules!8262 objs!31))) b!659691))

(declare-fun m!925409 () Bool)

(assert (=> b!659692 m!925409))

(declare-fun m!925411 () Bool)

(assert (=> b!659692 m!925411))

(declare-fun b!659696 () Bool)

(declare-fun b_free!18997 () Bool)

(declare-fun b_next!19061 () Bool)

(assert (=> b!659696 (= b_free!18997 (not b_next!19061))))

(declare-fun tp!201075 () Bool)

(declare-fun b_and!62791 () Bool)

(assert (=> b!659696 (= tp!201075 b_and!62791)))

(declare-fun b_free!18999 () Bool)

(declare-fun b_next!19063 () Bool)

(assert (=> b!659696 (= b_free!18999 (not b_next!19063))))

(declare-fun tp!201076 () Bool)

(declare-fun b_and!62793 () Bool)

(assert (=> b!659696 (= tp!201076 b_and!62793)))

(declare-fun e!407946 () Bool)

(assert (=> b!659696 (= e!407946 (and tp!201075 tp!201076))))

(declare-fun b!659695 () Bool)

(declare-fun e!407945 () Bool)

(assert (=> b!659695 (= e!407945 (and (inv!9104 (tag!1695 (h!12524 (rules!8262 sepR!1)))) (inv!9115 (transformation!1433 (h!12524 (rules!8262 sepR!1)))) e!407946))))

(declare-fun b!659694 () Bool)

(declare-fun e!407943 () Bool)

(declare-fun tp!201074 () Bool)

(assert (=> b!659694 (= e!407943 (and e!407945 tp!201074))))

(assert (=> b!659614 (= tp!201041 e!407943)))

(assert (= b!659695 b!659696))

(assert (= b!659694 b!659695))

(assert (= (and b!659614 (is-Cons!7123 (rules!8262 sepR!1))) b!659694))

(declare-fun m!925413 () Bool)

(assert (=> b!659695 m!925413))

(declare-fun m!925415 () Bool)

(assert (=> b!659695 m!925415))

(declare-fun b!659705 () Bool)

(declare-fun tp!201085 () Bool)

(declare-fun e!407952 () Bool)

(declare-fun tp!201084 () Bool)

(assert (=> b!659705 (= e!407952 (and (inv!9107 (left!5774 (c!118749 (tokens!1240 objs!31)))) tp!201085 (inv!9107 (right!6104 (c!118749 (tokens!1240 objs!31)))) tp!201084))))

(declare-fun b!659707 () Bool)

(declare-fun e!407951 () Bool)

(declare-fun tp!201083 () Bool)

(assert (=> b!659707 (= e!407951 tp!201083)))

(declare-fun b!659706 () Bool)

(declare-fun inv!9116 (IArray!5017) Bool)

(assert (=> b!659706 (= e!407952 (and (inv!9116 (xs!5157 (c!118749 (tokens!1240 objs!31)))) e!407951))))

(assert (=> b!659608 (= tp!201042 (and (inv!9107 (c!118749 (tokens!1240 objs!31))) e!407952))))

(assert (= (and b!659608 (is-Node!2508 (c!118749 (tokens!1240 objs!31)))) b!659705))

(assert (= b!659706 b!659707))

(assert (= (and b!659608 (is-Leaf!3741 (c!118749 (tokens!1240 objs!31)))) b!659706))

(declare-fun m!925417 () Bool)

(assert (=> b!659705 m!925417))

(declare-fun m!925419 () Bool)

(assert (=> b!659705 m!925419))

(declare-fun m!925421 () Bool)

(assert (=> b!659706 m!925421))

(assert (=> b!659608 m!925321))

(declare-fun tp!201088 () Bool)

(declare-fun e!407954 () Bool)

(declare-fun b!659708 () Bool)

(declare-fun tp!201087 () Bool)

(assert (=> b!659708 (= e!407954 (and (inv!9107 (left!5774 (c!118749 (tokens!1240 sepR!1)))) tp!201088 (inv!9107 (right!6104 (c!118749 (tokens!1240 sepR!1)))) tp!201087))))

(declare-fun b!659710 () Bool)

(declare-fun e!407953 () Bool)

(declare-fun tp!201086 () Bool)

(assert (=> b!659710 (= e!407953 tp!201086)))

(declare-fun b!659709 () Bool)

(assert (=> b!659709 (= e!407954 (and (inv!9116 (xs!5157 (c!118749 (tokens!1240 sepR!1)))) e!407953))))

(assert (=> b!659613 (= tp!201046 (and (inv!9107 (c!118749 (tokens!1240 sepR!1))) e!407954))))

(assert (= (and b!659613 (is-Node!2508 (c!118749 (tokens!1240 sepR!1)))) b!659708))

(assert (= b!659709 b!659710))

(assert (= (and b!659613 (is-Leaf!3741 (c!118749 (tokens!1240 sepR!1)))) b!659709))

(declare-fun m!925423 () Bool)

(assert (=> b!659708 m!925423))

(declare-fun m!925425 () Bool)

(assert (=> b!659708 m!925425))

(declare-fun m!925427 () Bool)

(assert (=> b!659709 m!925427))

(assert (=> b!659613 m!925317))

(declare-fun e!407956 () Bool)

(declare-fun tp!201090 () Bool)

(declare-fun b!659711 () Bool)

(declare-fun tp!201091 () Bool)

(assert (=> b!659711 (= e!407956 (and (inv!9107 (left!5774 (c!118749 (tokens!1240 sepL!1)))) tp!201091 (inv!9107 (right!6104 (c!118749 (tokens!1240 sepL!1)))) tp!201090))))

(declare-fun b!659713 () Bool)

(declare-fun e!407955 () Bool)

(declare-fun tp!201089 () Bool)

(assert (=> b!659713 (= e!407955 tp!201089)))

(declare-fun b!659712 () Bool)

(assert (=> b!659712 (= e!407956 (and (inv!9116 (xs!5157 (c!118749 (tokens!1240 sepL!1)))) e!407955))))

(assert (=> b!659611 (= tp!201043 (and (inv!9107 (c!118749 (tokens!1240 sepL!1))) e!407956))))

(assert (= (and b!659611 (is-Node!2508 (c!118749 (tokens!1240 sepL!1)))) b!659711))

(assert (= b!659712 b!659713))

(assert (= (and b!659611 (is-Leaf!3741 (c!118749 (tokens!1240 sepL!1)))) b!659712))

(declare-fun m!925429 () Bool)

(assert (=> b!659711 m!925429))

(declare-fun m!925431 () Bool)

(assert (=> b!659711 m!925431))

(declare-fun m!925433 () Bool)

(assert (=> b!659712 m!925433))

(assert (=> b!659611 m!925311))

(declare-fun b!659716 () Bool)

(declare-fun b_free!19001 () Bool)

(declare-fun b_next!19065 () Bool)

(assert (=> b!659716 (= b_free!19001 (not b_next!19065))))

(declare-fun tp!201093 () Bool)

(declare-fun b_and!62795 () Bool)

(assert (=> b!659716 (= tp!201093 b_and!62795)))

(declare-fun b_free!19003 () Bool)

(declare-fun b_next!19067 () Bool)

(assert (=> b!659716 (= b_free!19003 (not b_next!19067))))

(declare-fun tp!201094 () Bool)

(declare-fun b_and!62797 () Bool)

(assert (=> b!659716 (= tp!201094 b_and!62797)))

(declare-fun e!407960 () Bool)

(assert (=> b!659716 (= e!407960 (and tp!201093 tp!201094))))

(declare-fun b!659715 () Bool)

(declare-fun e!407959 () Bool)

(assert (=> b!659715 (= e!407959 (and (inv!9104 (tag!1695 (h!12524 (rules!8262 sepL!1)))) (inv!9115 (transformation!1433 (h!12524 (rules!8262 sepL!1)))) e!407960))))

(declare-fun b!659714 () Bool)

(declare-fun e!407957 () Bool)

(declare-fun tp!201092 () Bool)

(assert (=> b!659714 (= e!407957 (and e!407959 tp!201092))))

(assert (=> b!659610 (= tp!201044 e!407957)))

(assert (= b!659715 b!659716))

(assert (= b!659714 b!659715))

(assert (= (and b!659610 (is-Cons!7123 (rules!8262 sepL!1))) b!659714))

(declare-fun m!925435 () Bool)

(assert (=> b!659715 m!925435))

(declare-fun m!925437 () Bool)

(assert (=> b!659715 m!925437))

(push 1)

(assert (not b!659713))

(assert (not b!659710))

(assert (not d!225819))

(assert (not d!225813))

(assert (not b!659676))

(assert (not b!659678))

(assert b_and!62795)

(assert (not b!659709))

(assert (not b!659707))

(assert (not b!659706))

(assert (not d!225817))

(assert (not b!659680))

(assert (not b!659679))

(assert (not b!659613))

(assert (not b!659715))

(assert (not d!225809))

(assert b_and!62797)

(assert (not b_next!19065))

(assert (not b!659711))

(assert (not b!659608))

(assert (not b_next!19067))

(assert (not b!659650))

(assert b_and!62791)

(assert (not b!659712))

(assert (not d!225801))

(assert (not b!659611))

(assert (not b!659677))

(assert b_and!62787)

(assert (not b_next!19061))

(assert (not b!659652))

(assert (not b_next!19059))

(assert (not d!225821))

(assert (not b!659675))

(assert (not b!659692))

(assert (not b!659705))

(assert (not b!659695))

(assert (not d!225799))

(assert b_and!62789)

(assert (not d!225827))

(assert (not b!659682))

(assert (not b!659714))

(assert (not b_next!19057))

(assert b_and!62793)

(assert (not b!659694))

(assert (not b!659672))

(assert (not b!659708))

(assert (not b!659691))

(assert (not b!659674))

(assert (not b_next!19063))

(assert (not b!659655))

(assert (not d!225825))

(assert (not b!659673))

(assert (not b!659671))

(assert (not b!659653))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!19059))

(assert b_and!62795)

(assert b_and!62789)

(assert (not b_next!19063))

(assert b_and!62797)

(assert (not b_next!19065))

(assert (not b_next!19067))

(assert b_and!62791)

(assert b_and!62787)

(assert (not b_next!19061))

(assert (not b_next!19057))

(assert b_and!62793)

(check-sat)

(pop 1)

