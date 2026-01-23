; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185006 () Bool)

(assert start!185006)

(declare-fun b!1852989 () Bool)

(declare-fun b_free!51887 () Bool)

(declare-fun b_next!52591 () Bool)

(assert (=> b!1852989 (= b_free!51887 (not b_next!52591))))

(declare-fun tp!525299 () Bool)

(declare-fun b_and!144129 () Bool)

(assert (=> b!1852989 (= tp!525299 b_and!144129)))

(declare-fun b_free!51889 () Bool)

(declare-fun b_next!52593 () Bool)

(assert (=> b!1852989 (= b_free!51889 (not b_next!52593))))

(declare-fun tp!525298 () Bool)

(declare-fun b_and!144131 () Bool)

(assert (=> b!1852989 (= tp!525298 b_and!144131)))

(declare-fun b!1852988 () Bool)

(declare-fun res!831382 () Bool)

(declare-fun e!1184386 () Bool)

(assert (=> b!1852988 (=> (not res!831382) (not e!1184386))))

(declare-datatypes ((C!10236 0))(
  ( (C!10237 (val!5854 Int)) )
))
(declare-datatypes ((List!20644 0))(
  ( (Nil!20566) (Cons!20566 (h!25967 C!10236) (t!172465 List!20644)) )
))
(declare-datatypes ((IArray!13619 0))(
  ( (IArray!13620 (innerList!6867 List!20644)) )
))
(declare-datatypes ((List!20645 0))(
  ( (Nil!20567) (Cons!20567 (h!25968 (_ BitVec 16)) (t!172466 List!20645)) )
))
(declare-datatypes ((TokenValue!3796 0))(
  ( (FloatLiteralValue!7592 (text!27017 List!20645)) (TokenValueExt!3795 (__x!12954 Int)) (Broken!18980 (value!115473 List!20645)) (Object!3873) (End!3796) (Def!3796) (Underscore!3796) (Match!3796) (Else!3796) (Error!3796) (Case!3796) (If!3796) (Extends!3796) (Abstract!3796) (Class!3796) (Val!3796) (DelimiterValue!7592 (del!3856 List!20645)) (KeywordValue!3802 (value!115474 List!20645)) (CommentValue!7592 (value!115475 List!20645)) (WhitespaceValue!7592 (value!115476 List!20645)) (IndentationValue!3796 (value!115477 List!20645)) (String!23569) (Int32!3796) (Broken!18981 (value!115478 List!20645)) (Boolean!3797) (Unit!35171) (OperatorValue!3799 (op!3856 List!20645)) (IdentifierValue!7592 (value!115479 List!20645)) (IdentifierValue!7593 (value!115480 List!20645)) (WhitespaceValue!7593 (value!115481 List!20645)) (True!7592) (False!7592) (Broken!18982 (value!115482 List!20645)) (Broken!18983 (value!115483 List!20645)) (True!7593) (RightBrace!3796) (RightBracket!3796) (Colon!3796) (Null!3796) (Comma!3796) (LeftBracket!3796) (False!7593) (LeftBrace!3796) (ImaginaryLiteralValue!3796 (text!27018 List!20645)) (StringLiteralValue!11388 (value!115484 List!20645)) (EOFValue!3796 (value!115485 List!20645)) (IdentValue!3796 (value!115486 List!20645)) (DelimiterValue!7593 (value!115487 List!20645)) (DedentValue!3796 (value!115488 List!20645)) (NewLineValue!3796 (value!115489 List!20645)) (IntegerValue!11388 (value!115490 (_ BitVec 32)) (text!27019 List!20645)) (IntegerValue!11389 (value!115491 Int) (text!27020 List!20645)) (Times!3796) (Or!3796) (Equal!3796) (Minus!3796) (Broken!18984 (value!115492 List!20645)) (And!3796) (Div!3796) (LessEqual!3796) (Mod!3796) (Concat!8839) (Not!3796) (Plus!3796) (SpaceValue!3796 (value!115493 List!20645)) (IntegerValue!11390 (value!115494 Int) (text!27021 List!20645)) (StringLiteralValue!11389 (text!27022 List!20645)) (FloatLiteralValue!7593 (text!27023 List!20645)) (BytesLiteralValue!3796 (value!115495 List!20645)) (CommentValue!7593 (value!115496 List!20645)) (StringLiteralValue!11390 (value!115497 List!20645)) (ErrorTokenValue!3796 (msg!3857 List!20645)) )
))
(declare-datatypes ((Conc!6807 0))(
  ( (Node!6807 (left!16499 Conc!6807) (right!16829 Conc!6807) (csize!13844 Int) (cheight!7018 Int)) (Leaf!9958 (xs!9683 IArray!13619) (csize!13845 Int)) (Empty!6807) )
))
(declare-datatypes ((BalanceConc!13542 0))(
  ( (BalanceConc!13543 (c!302257 Conc!6807)) )
))
(declare-datatypes ((TokenValueInjection!7208 0))(
  ( (TokenValueInjection!7209 (toValue!5255 Int) (toChars!5114 Int)) )
))
(declare-datatypes ((String!23570 0))(
  ( (String!23571 (value!115498 String)) )
))
(declare-datatypes ((Regex!5043 0))(
  ( (ElementMatch!5043 (c!302258 C!10236)) (Concat!8840 (regOne!10598 Regex!5043) (regTwo!10598 Regex!5043)) (EmptyExpr!5043) (Star!5043 (reg!5372 Regex!5043)) (EmptyLang!5043) (Union!5043 (regOne!10599 Regex!5043) (regTwo!10599 Regex!5043)) )
))
(declare-datatypes ((Rule!7160 0))(
  ( (Rule!7161 (regex!3680 Regex!5043) (tag!4094 String!23570) (isSeparator!3680 Bool) (transformation!3680 TokenValueInjection!7208)) )
))
(declare-datatypes ((List!20646 0))(
  ( (Nil!20568) (Cons!20568 (h!25969 Rule!7160) (t!172467 List!20646)) )
))
(declare-fun rules!865 () List!20646)

(declare-datatypes ((LexerInterface!3302 0))(
  ( (LexerInterfaceExt!3299 (__x!12955 Int)) (Lexer!3300) )
))
(declare-fun rulesInvariant!2969 (LexerInterface!3302 List!20646) Bool)

(assert (=> b!1852988 (= res!831382 (rulesInvariant!2969 Lexer!3300 rules!865))))

(declare-fun e!1184384 () Bool)

(assert (=> b!1852989 (= e!1184384 (and tp!525299 tp!525298))))

(declare-fun res!831381 () Bool)

(assert (=> start!185006 (=> (not res!831381) (not e!1184386))))

(declare-fun isEmpty!12819 (List!20646) Bool)

(assert (=> start!185006 (= res!831381 (not (isEmpty!12819 rules!865)))))

(assert (=> start!185006 e!1184386))

(declare-fun e!1184382 () Bool)

(assert (=> start!185006 e!1184382))

(declare-fun b!1852990 () Bool)

(declare-fun e!1184385 () Bool)

(declare-fun tp!525300 () Bool)

(declare-fun inv!26962 (String!23570) Bool)

(declare-fun inv!26965 (TokenValueInjection!7208) Bool)

(assert (=> b!1852990 (= e!1184385 (and tp!525300 (inv!26962 (tag!4094 (h!25969 rules!865))) (inv!26965 (transformation!3680 (h!25969 rules!865))) e!1184384))))

(declare-fun b!1852991 () Bool)

(declare-fun tp!525297 () Bool)

(assert (=> b!1852991 (= e!1184382 (and e!1184385 tp!525297))))

(declare-fun b!1852992 () Bool)

(declare-datatypes ((Token!6912 0))(
  ( (Token!6913 (value!115499 TokenValue!3796) (rule!5873 Rule!7160) (size!16244 Int) (originalCharacters!4487 List!20644)) )
))
(declare-datatypes ((List!20647 0))(
  ( (Nil!20569) (Cons!20569 (h!25970 Token!6912) (t!172468 List!20647)) )
))
(declare-datatypes ((IArray!13621 0))(
  ( (IArray!13622 (innerList!6868 List!20647)) )
))
(declare-datatypes ((Conc!6808 0))(
  ( (Node!6808 (left!16500 Conc!6808) (right!16830 Conc!6808) (csize!13846 Int) (cheight!7019 Int)) (Leaf!9959 (xs!9684 IArray!13621) (csize!13847 Int)) (Empty!6808) )
))
(declare-datatypes ((BalanceConc!13544 0))(
  ( (BalanceConc!13545 (c!302259 Conc!6808)) )
))
(declare-datatypes ((PrintableTokens!1244 0))(
  ( (PrintableTokens!1245 (rules!15042 List!20646) (tokens!2448 BalanceConc!13544)) )
))
(declare-fun inv!26966 (PrintableTokens!1244) Bool)

(assert (=> b!1852992 (= e!1184386 (not (inv!26966 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (= (and start!185006 res!831381) b!1852988))

(assert (= (and b!1852988 res!831382) b!1852992))

(assert (= b!1852990 b!1852989))

(assert (= b!1852991 b!1852990))

(get-info :version)

(assert (= (and start!185006 ((_ is Cons!20568) rules!865)) b!1852991))

(declare-fun m!2279821 () Bool)

(assert (=> b!1852988 m!2279821))

(declare-fun m!2279823 () Bool)

(assert (=> start!185006 m!2279823))

(declare-fun m!2279825 () Bool)

(assert (=> b!1852990 m!2279825))

(declare-fun m!2279827 () Bool)

(assert (=> b!1852990 m!2279827))

(declare-fun m!2279829 () Bool)

(assert (=> b!1852992 m!2279829))

(check-sat (not b!1852992) (not b_next!52591) (not b!1852991) (not b_next!52593) (not b!1852990) b_and!144129 (not start!185006) b_and!144131 (not b!1852988))
(check-sat b_and!144131 b_and!144129 (not b_next!52593) (not b_next!52591))
(get-model)

(declare-fun d!566279 () Bool)

(assert (=> d!566279 (= (inv!26962 (tag!4094 (h!25969 rules!865))) (= (mod (str.len (value!115498 (tag!4094 (h!25969 rules!865)))) 2) 0))))

(assert (=> b!1852990 d!566279))

(declare-fun d!566281 () Bool)

(declare-fun res!831385 () Bool)

(declare-fun e!1184389 () Bool)

(assert (=> d!566281 (=> (not res!831385) (not e!1184389))))

(declare-fun semiInverseModEq!1494 (Int Int) Bool)

(assert (=> d!566281 (= res!831385 (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 rules!865))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))))))

(assert (=> d!566281 (= (inv!26965 (transformation!3680 (h!25969 rules!865))) e!1184389)))

(declare-fun b!1852995 () Bool)

(declare-fun equivClasses!1427 (Int Int) Bool)

(assert (=> b!1852995 (= e!1184389 (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 rules!865))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))))))

(assert (= (and d!566281 res!831385) b!1852995))

(declare-fun m!2279831 () Bool)

(assert (=> d!566281 m!2279831))

(declare-fun m!2279833 () Bool)

(assert (=> b!1852995 m!2279833))

(assert (=> b!1852990 d!566281))

(declare-fun d!566283 () Bool)

(assert (=> d!566283 (= (isEmpty!12819 rules!865) ((_ is Nil!20568) rules!865))))

(assert (=> start!185006 d!566283))

(declare-fun d!566285 () Bool)

(declare-fun res!831415 () Bool)

(declare-fun e!1184422 () Bool)

(assert (=> d!566285 (=> (not res!831415) (not e!1184422))))

(assert (=> d!566285 (= res!831415 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566285 (= (inv!26966 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) e!1184422)))

(declare-fun b!1853048 () Bool)

(declare-fun res!831416 () Bool)

(assert (=> b!1853048 (=> (not res!831416) (not e!1184422))))

(assert (=> b!1853048 (= res!831416 (rulesInvariant!2969 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853049 () Bool)

(declare-fun res!831417 () Bool)

(assert (=> b!1853049 (=> (not res!831417) (not e!1184422))))

(declare-fun rulesProduceEachTokenIndividually!923 (LexerInterface!3302 List!20646 BalanceConc!13544) Bool)

(assert (=> b!1853049 (= res!831417 (rulesProduceEachTokenIndividually!923 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853050 () Bool)

(declare-fun separableTokens!294 (LexerInterface!3302 BalanceConc!13544 List!20646) Bool)

(assert (=> b!1853050 (= e!1184422 (separableTokens!294 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (= (and d!566285 res!831415) b!1853048))

(assert (= (and b!1853048 res!831416) b!1853049))

(assert (= (and b!1853049 res!831417) b!1853050))

(declare-fun m!2279859 () Bool)

(assert (=> d!566285 m!2279859))

(declare-fun m!2279861 () Bool)

(assert (=> b!1853048 m!2279861))

(declare-fun m!2279863 () Bool)

(assert (=> b!1853049 m!2279863))

(declare-fun m!2279865 () Bool)

(assert (=> b!1853050 m!2279865))

(assert (=> b!1852992 d!566285))

(declare-fun d!566297 () Bool)

(declare-fun res!831420 () Bool)

(declare-fun e!1184425 () Bool)

(assert (=> d!566297 (=> (not res!831420) (not e!1184425))))

(declare-fun rulesValid!1404 (LexerInterface!3302 List!20646) Bool)

(assert (=> d!566297 (= res!831420 (rulesValid!1404 Lexer!3300 rules!865))))

(assert (=> d!566297 (= (rulesInvariant!2969 Lexer!3300 rules!865) e!1184425)))

(declare-fun b!1853053 () Bool)

(declare-datatypes ((List!20649 0))(
  ( (Nil!20571) (Cons!20571 (h!25972 String!23570) (t!172470 List!20649)) )
))
(declare-fun noDuplicateTag!1402 (LexerInterface!3302 List!20646 List!20649) Bool)

(assert (=> b!1853053 (= e!1184425 (noDuplicateTag!1402 Lexer!3300 rules!865 Nil!20571))))

(assert (= (and d!566297 res!831420) b!1853053))

(declare-fun m!2279867 () Bool)

(assert (=> d!566297 m!2279867))

(declare-fun m!2279869 () Bool)

(assert (=> b!1853053 m!2279869))

(assert (=> b!1852988 d!566297))

(declare-fun b!1853065 () Bool)

(declare-fun e!1184428 () Bool)

(declare-fun tp!525338 () Bool)

(declare-fun tp!525340 () Bool)

(assert (=> b!1853065 (= e!1184428 (and tp!525338 tp!525340))))

(declare-fun b!1853066 () Bool)

(declare-fun tp!525339 () Bool)

(assert (=> b!1853066 (= e!1184428 tp!525339)))

(declare-fun b!1853067 () Bool)

(declare-fun tp!525342 () Bool)

(declare-fun tp!525341 () Bool)

(assert (=> b!1853067 (= e!1184428 (and tp!525342 tp!525341))))

(assert (=> b!1852990 (= tp!525300 e!1184428)))

(declare-fun b!1853064 () Bool)

(declare-fun tp_is_empty!8507 () Bool)

(assert (=> b!1853064 (= e!1184428 tp_is_empty!8507)))

(assert (= (and b!1852990 ((_ is ElementMatch!5043) (regex!3680 (h!25969 rules!865)))) b!1853064))

(assert (= (and b!1852990 ((_ is Concat!8840) (regex!3680 (h!25969 rules!865)))) b!1853065))

(assert (= (and b!1852990 ((_ is Star!5043) (regex!3680 (h!25969 rules!865)))) b!1853066))

(assert (= (and b!1852990 ((_ is Union!5043) (regex!3680 (h!25969 rules!865)))) b!1853067))

(declare-fun b!1853078 () Bool)

(declare-fun b_free!51895 () Bool)

(declare-fun b_next!52599 () Bool)

(assert (=> b!1853078 (= b_free!51895 (not b_next!52599))))

(declare-fun tp!525354 () Bool)

(declare-fun b_and!144137 () Bool)

(assert (=> b!1853078 (= tp!525354 b_and!144137)))

(declare-fun b_free!51897 () Bool)

(declare-fun b_next!52601 () Bool)

(assert (=> b!1853078 (= b_free!51897 (not b_next!52601))))

(declare-fun tp!525351 () Bool)

(declare-fun b_and!144139 () Bool)

(assert (=> b!1853078 (= tp!525351 b_and!144139)))

(declare-fun e!1184438 () Bool)

(assert (=> b!1853078 (= e!1184438 (and tp!525354 tp!525351))))

(declare-fun tp!525353 () Bool)

(declare-fun b!1853077 () Bool)

(declare-fun e!1184437 () Bool)

(assert (=> b!1853077 (= e!1184437 (and tp!525353 (inv!26962 (tag!4094 (h!25969 (t!172467 rules!865)))) (inv!26965 (transformation!3680 (h!25969 (t!172467 rules!865)))) e!1184438))))

(declare-fun b!1853076 () Bool)

(declare-fun e!1184440 () Bool)

(declare-fun tp!525352 () Bool)

(assert (=> b!1853076 (= e!1184440 (and e!1184437 tp!525352))))

(assert (=> b!1852991 (= tp!525297 e!1184440)))

(assert (= b!1853077 b!1853078))

(assert (= b!1853076 b!1853077))

(assert (= (and b!1852991 ((_ is Cons!20568) (t!172467 rules!865))) b!1853076))

(declare-fun m!2279871 () Bool)

(assert (=> b!1853077 m!2279871))

(declare-fun m!2279873 () Bool)

(assert (=> b!1853077 m!2279873))

(check-sat (not b!1853077) (not b!1853053) (not b_next!52591) (not d!566281) (not b!1853067) (not b!1853065) (not b!1853050) (not b_next!52593) b_and!144137 b_and!144129 tp_is_empty!8507 (not b!1853066) (not b!1853048) b_and!144139 (not b!1853049) (not b!1853076) (not b_next!52599) b_and!144131 (not d!566285) (not b_next!52601) (not d!566297) (not b!1852995))
(check-sat (not b_next!52591) b_and!144139 (not b_next!52599) b_and!144131 (not b_next!52601) (not b_next!52593) b_and!144137 b_and!144129)
(get-model)

(declare-fun d!566299 () Bool)

(assert (=> d!566299 true))

(declare-fun order!13211 () Int)

(declare-fun order!13213 () Int)

(declare-fun lambda!73263 () Int)

(declare-fun dynLambda!10176 (Int Int) Int)

(declare-fun dynLambda!10177 (Int Int) Int)

(assert (=> d!566299 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 rules!865)))) (dynLambda!10177 order!13213 lambda!73263))))

(assert (=> d!566299 true))

(declare-fun order!13215 () Int)

(declare-fun dynLambda!10178 (Int Int) Int)

(assert (=> d!566299 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (dynLambda!10177 order!13213 lambda!73263))))

(declare-fun Forall!962 (Int) Bool)

(assert (=> d!566299 (= (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 rules!865))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (Forall!962 lambda!73263))))

(declare-fun bs!410503 () Bool)

(assert (= bs!410503 d!566299))

(declare-fun m!2279899 () Bool)

(assert (=> bs!410503 m!2279899))

(assert (=> d!566281 d!566299))

(declare-fun d!566317 () Bool)

(declare-fun res!831430 () Bool)

(declare-fun e!1184457 () Bool)

(assert (=> d!566317 (=> (not res!831430) (not e!1184457))))

(assert (=> d!566317 (= res!831430 (rulesValid!1404 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566317 (= (rulesInvariant!2969 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) e!1184457)))

(declare-fun b!1853111 () Bool)

(assert (=> b!1853111 (= e!1184457 (noDuplicateTag!1402 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) Nil!20571))))

(assert (= (and d!566317 res!831430) b!1853111))

(declare-fun m!2279901 () Bool)

(assert (=> d!566317 m!2279901))

(declare-fun m!2279903 () Bool)

(assert (=> b!1853111 m!2279903))

(assert (=> b!1853048 d!566317))

(declare-fun b!1853152 () Bool)

(declare-fun e!1184479 () Bool)

(assert (=> b!1853152 (= e!1184479 true)))

(declare-fun b!1853151 () Bool)

(declare-fun e!1184478 () Bool)

(assert (=> b!1853151 (= e!1184478 e!1184479)))

(declare-fun b!1853150 () Bool)

(declare-fun e!1184477 () Bool)

(assert (=> b!1853150 (= e!1184477 e!1184478)))

(declare-fun d!566319 () Bool)

(assert (=> d!566319 e!1184477))

(assert (= b!1853151 b!1853152))

(assert (= b!1853150 b!1853151))

(assert (= (and d!566319 ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) b!1853150))

(declare-fun lambda!73268 () Int)

(declare-fun order!13217 () Int)

(declare-fun dynLambda!10179 (Int Int) Int)

(assert (=> b!1853152 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73268))))

(assert (=> b!1853152 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73268))))

(assert (=> d!566319 true))

(declare-fun e!1184470 () Bool)

(assert (=> d!566319 e!1184470))

(declare-fun res!831433 () Bool)

(assert (=> d!566319 (=> (not res!831433) (not e!1184470))))

(declare-fun lt!716369 () Bool)

(declare-fun forall!4397 (List!20647 Int) Bool)

(declare-fun list!8341 (BalanceConc!13544) List!20647)

(assert (=> d!566319 (= res!831433 (= lt!716369 (forall!4397 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73268)))))

(declare-fun forall!4398 (BalanceConc!13544 Int) Bool)

(assert (=> d!566319 (= lt!716369 (forall!4398 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lambda!73268))))

(assert (=> d!566319 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566319 (= (rulesProduceEachTokenIndividually!923 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716369)))

(declare-fun b!1853141 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1096 (LexerInterface!3302 List!20646 List!20647) Bool)

(assert (=> b!1853141 (= e!1184470 (= lt!716369 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (= (and d!566319 res!831433) b!1853141))

(declare-fun m!2279911 () Bool)

(assert (=> d!566319 m!2279911))

(assert (=> d!566319 m!2279911))

(declare-fun m!2279913 () Bool)

(assert (=> d!566319 m!2279913))

(declare-fun m!2279915 () Bool)

(assert (=> d!566319 m!2279915))

(assert (=> d!566319 m!2279859))

(assert (=> b!1853141 m!2279911))

(assert (=> b!1853141 m!2279911))

(declare-fun m!2279917 () Bool)

(assert (=> b!1853141 m!2279917))

(assert (=> b!1853049 d!566319))

(declare-fun d!566321 () Bool)

(assert (=> d!566321 true))

(declare-fun lambda!73271 () Int)

(declare-fun order!13219 () Int)

(declare-fun dynLambda!10180 (Int Int) Int)

(assert (=> d!566321 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (dynLambda!10180 order!13219 lambda!73271))))

(declare-fun Forall2!593 (Int) Bool)

(assert (=> d!566321 (= (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 rules!865))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (Forall2!593 lambda!73271))))

(declare-fun bs!410505 () Bool)

(assert (= bs!410505 d!566321))

(declare-fun m!2279919 () Bool)

(assert (=> bs!410505 m!2279919))

(assert (=> b!1852995 d!566321))

(declare-fun d!566323 () Bool)

(assert (=> d!566323 true))

(declare-fun lt!716372 () Bool)

(declare-fun rulesValidInductive!1268 (LexerInterface!3302 List!20646) Bool)

(assert (=> d!566323 (= lt!716372 (rulesValidInductive!1268 Lexer!3300 rules!865))))

(declare-fun lambda!73274 () Int)

(declare-fun forall!4399 (List!20646 Int) Bool)

(assert (=> d!566323 (= lt!716372 (forall!4399 rules!865 lambda!73274))))

(assert (=> d!566323 (= (rulesValid!1404 Lexer!3300 rules!865) lt!716372)))

(declare-fun bs!410506 () Bool)

(assert (= bs!410506 d!566323))

(declare-fun m!2279921 () Bool)

(assert (=> bs!410506 m!2279921))

(declare-fun m!2279923 () Bool)

(assert (=> bs!410506 m!2279923))

(assert (=> d!566297 d!566323))

(declare-fun d!566325 () Bool)

(assert (=> d!566325 (= (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) ((_ is Nil!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566285 d!566325))

(declare-fun d!566327 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!153 (LexerInterface!3302 BalanceConc!13544 Int List!20646) Bool)

(assert (=> d!566327 (= (separableTokens!294 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (tokensListTwoByTwoPredicateSeparable!153 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun bs!410507 () Bool)

(assert (= bs!410507 d!566327))

(declare-fun m!2279925 () Bool)

(assert (=> bs!410507 m!2279925))

(assert (=> b!1853050 d!566327))

(declare-fun d!566329 () Bool)

(declare-fun res!831440 () Bool)

(declare-fun e!1184486 () Bool)

(assert (=> d!566329 (=> res!831440 e!1184486)))

(assert (=> d!566329 (= res!831440 ((_ is Nil!20568) rules!865))))

(assert (=> d!566329 (= (noDuplicateTag!1402 Lexer!3300 rules!865 Nil!20571) e!1184486)))

(declare-fun b!1853165 () Bool)

(declare-fun e!1184487 () Bool)

(assert (=> b!1853165 (= e!1184486 e!1184487)))

(declare-fun res!831441 () Bool)

(assert (=> b!1853165 (=> (not res!831441) (not e!1184487))))

(declare-fun contains!3791 (List!20649 String!23570) Bool)

(assert (=> b!1853165 (= res!831441 (not (contains!3791 Nil!20571 (tag!4094 (h!25969 rules!865)))))))

(declare-fun b!1853166 () Bool)

(assert (=> b!1853166 (= e!1184487 (noDuplicateTag!1402 Lexer!3300 (t!172467 rules!865) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)))))

(assert (= (and d!566329 (not res!831440)) b!1853165))

(assert (= (and b!1853165 res!831441) b!1853166))

(declare-fun m!2279927 () Bool)

(assert (=> b!1853165 m!2279927))

(declare-fun m!2279929 () Bool)

(assert (=> b!1853166 m!2279929))

(assert (=> b!1853053 d!566329))

(declare-fun d!566331 () Bool)

(assert (=> d!566331 (= (inv!26962 (tag!4094 (h!25969 (t!172467 rules!865)))) (= (mod (str.len (value!115498 (tag!4094 (h!25969 (t!172467 rules!865))))) 2) 0))))

(assert (=> b!1853077 d!566331))

(declare-fun d!566333 () Bool)

(declare-fun res!831442 () Bool)

(declare-fun e!1184488 () Bool)

(assert (=> d!566333 (=> (not res!831442) (not e!1184488))))

(assert (=> d!566333 (= res!831442 (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))))))

(assert (=> d!566333 (= (inv!26965 (transformation!3680 (h!25969 (t!172467 rules!865)))) e!1184488)))

(declare-fun b!1853167 () Bool)

(assert (=> b!1853167 (= e!1184488 (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))))))

(assert (= (and d!566333 res!831442) b!1853167))

(declare-fun m!2279931 () Bool)

(assert (=> d!566333 m!2279931))

(declare-fun m!2279933 () Bool)

(assert (=> b!1853167 m!2279933))

(assert (=> b!1853077 d!566333))

(declare-fun b!1853169 () Bool)

(declare-fun e!1184489 () Bool)

(declare-fun tp!525389 () Bool)

(declare-fun tp!525391 () Bool)

(assert (=> b!1853169 (= e!1184489 (and tp!525389 tp!525391))))

(declare-fun b!1853170 () Bool)

(declare-fun tp!525390 () Bool)

(assert (=> b!1853170 (= e!1184489 tp!525390)))

(declare-fun b!1853171 () Bool)

(declare-fun tp!525393 () Bool)

(declare-fun tp!525392 () Bool)

(assert (=> b!1853171 (= e!1184489 (and tp!525393 tp!525392))))

(assert (=> b!1853065 (= tp!525338 e!1184489)))

(declare-fun b!1853168 () Bool)

(assert (=> b!1853168 (= e!1184489 tp_is_empty!8507)))

(assert (= (and b!1853065 ((_ is ElementMatch!5043) (regOne!10598 (regex!3680 (h!25969 rules!865))))) b!1853168))

(assert (= (and b!1853065 ((_ is Concat!8840) (regOne!10598 (regex!3680 (h!25969 rules!865))))) b!1853169))

(assert (= (and b!1853065 ((_ is Star!5043) (regOne!10598 (regex!3680 (h!25969 rules!865))))) b!1853170))

(assert (= (and b!1853065 ((_ is Union!5043) (regOne!10598 (regex!3680 (h!25969 rules!865))))) b!1853171))

(declare-fun b!1853173 () Bool)

(declare-fun e!1184490 () Bool)

(declare-fun tp!525394 () Bool)

(declare-fun tp!525396 () Bool)

(assert (=> b!1853173 (= e!1184490 (and tp!525394 tp!525396))))

(declare-fun b!1853174 () Bool)

(declare-fun tp!525395 () Bool)

(assert (=> b!1853174 (= e!1184490 tp!525395)))

(declare-fun b!1853175 () Bool)

(declare-fun tp!525398 () Bool)

(declare-fun tp!525397 () Bool)

(assert (=> b!1853175 (= e!1184490 (and tp!525398 tp!525397))))

(assert (=> b!1853065 (= tp!525340 e!1184490)))

(declare-fun b!1853172 () Bool)

(assert (=> b!1853172 (= e!1184490 tp_is_empty!8507)))

(assert (= (and b!1853065 ((_ is ElementMatch!5043) (regTwo!10598 (regex!3680 (h!25969 rules!865))))) b!1853172))

(assert (= (and b!1853065 ((_ is Concat!8840) (regTwo!10598 (regex!3680 (h!25969 rules!865))))) b!1853173))

(assert (= (and b!1853065 ((_ is Star!5043) (regTwo!10598 (regex!3680 (h!25969 rules!865))))) b!1853174))

(assert (= (and b!1853065 ((_ is Union!5043) (regTwo!10598 (regex!3680 (h!25969 rules!865))))) b!1853175))

(declare-fun b!1853177 () Bool)

(declare-fun e!1184491 () Bool)

(declare-fun tp!525399 () Bool)

(declare-fun tp!525401 () Bool)

(assert (=> b!1853177 (= e!1184491 (and tp!525399 tp!525401))))

(declare-fun b!1853178 () Bool)

(declare-fun tp!525400 () Bool)

(assert (=> b!1853178 (= e!1184491 tp!525400)))

(declare-fun b!1853179 () Bool)

(declare-fun tp!525403 () Bool)

(declare-fun tp!525402 () Bool)

(assert (=> b!1853179 (= e!1184491 (and tp!525403 tp!525402))))

(assert (=> b!1853066 (= tp!525339 e!1184491)))

(declare-fun b!1853176 () Bool)

(assert (=> b!1853176 (= e!1184491 tp_is_empty!8507)))

(assert (= (and b!1853066 ((_ is ElementMatch!5043) (reg!5372 (regex!3680 (h!25969 rules!865))))) b!1853176))

(assert (= (and b!1853066 ((_ is Concat!8840) (reg!5372 (regex!3680 (h!25969 rules!865))))) b!1853177))

(assert (= (and b!1853066 ((_ is Star!5043) (reg!5372 (regex!3680 (h!25969 rules!865))))) b!1853178))

(assert (= (and b!1853066 ((_ is Union!5043) (reg!5372 (regex!3680 (h!25969 rules!865))))) b!1853179))

(declare-fun b!1853182 () Bool)

(declare-fun b_free!51903 () Bool)

(declare-fun b_next!52607 () Bool)

(assert (=> b!1853182 (= b_free!51903 (not b_next!52607))))

(declare-fun tp!525407 () Bool)

(declare-fun b_and!144145 () Bool)

(assert (=> b!1853182 (= tp!525407 b_and!144145)))

(declare-fun b_free!51905 () Bool)

(declare-fun b_next!52609 () Bool)

(assert (=> b!1853182 (= b_free!51905 (not b_next!52609))))

(declare-fun tp!525404 () Bool)

(declare-fun b_and!144147 () Bool)

(assert (=> b!1853182 (= tp!525404 b_and!144147)))

(declare-fun e!1184493 () Bool)

(assert (=> b!1853182 (= e!1184493 (and tp!525407 tp!525404))))

(declare-fun tp!525406 () Bool)

(declare-fun e!1184492 () Bool)

(declare-fun b!1853181 () Bool)

(assert (=> b!1853181 (= e!1184492 (and tp!525406 (inv!26962 (tag!4094 (h!25969 (t!172467 (t!172467 rules!865))))) (inv!26965 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) e!1184493))))

(declare-fun b!1853180 () Bool)

(declare-fun e!1184495 () Bool)

(declare-fun tp!525405 () Bool)

(assert (=> b!1853180 (= e!1184495 (and e!1184492 tp!525405))))

(assert (=> b!1853076 (= tp!525352 e!1184495)))

(assert (= b!1853181 b!1853182))

(assert (= b!1853180 b!1853181))

(assert (= (and b!1853076 ((_ is Cons!20568) (t!172467 (t!172467 rules!865)))) b!1853180))

(declare-fun m!2279935 () Bool)

(assert (=> b!1853181 m!2279935))

(declare-fun m!2279937 () Bool)

(assert (=> b!1853181 m!2279937))

(declare-fun b!1853184 () Bool)

(declare-fun e!1184496 () Bool)

(declare-fun tp!525408 () Bool)

(declare-fun tp!525410 () Bool)

(assert (=> b!1853184 (= e!1184496 (and tp!525408 tp!525410))))

(declare-fun b!1853185 () Bool)

(declare-fun tp!525409 () Bool)

(assert (=> b!1853185 (= e!1184496 tp!525409)))

(declare-fun b!1853186 () Bool)

(declare-fun tp!525412 () Bool)

(declare-fun tp!525411 () Bool)

(assert (=> b!1853186 (= e!1184496 (and tp!525412 tp!525411))))

(assert (=> b!1853067 (= tp!525342 e!1184496)))

(declare-fun b!1853183 () Bool)

(assert (=> b!1853183 (= e!1184496 tp_is_empty!8507)))

(assert (= (and b!1853067 ((_ is ElementMatch!5043) (regOne!10599 (regex!3680 (h!25969 rules!865))))) b!1853183))

(assert (= (and b!1853067 ((_ is Concat!8840) (regOne!10599 (regex!3680 (h!25969 rules!865))))) b!1853184))

(assert (= (and b!1853067 ((_ is Star!5043) (regOne!10599 (regex!3680 (h!25969 rules!865))))) b!1853185))

(assert (= (and b!1853067 ((_ is Union!5043) (regOne!10599 (regex!3680 (h!25969 rules!865))))) b!1853186))

(declare-fun b!1853188 () Bool)

(declare-fun e!1184497 () Bool)

(declare-fun tp!525413 () Bool)

(declare-fun tp!525415 () Bool)

(assert (=> b!1853188 (= e!1184497 (and tp!525413 tp!525415))))

(declare-fun b!1853189 () Bool)

(declare-fun tp!525414 () Bool)

(assert (=> b!1853189 (= e!1184497 tp!525414)))

(declare-fun b!1853190 () Bool)

(declare-fun tp!525417 () Bool)

(declare-fun tp!525416 () Bool)

(assert (=> b!1853190 (= e!1184497 (and tp!525417 tp!525416))))

(assert (=> b!1853067 (= tp!525341 e!1184497)))

(declare-fun b!1853187 () Bool)

(assert (=> b!1853187 (= e!1184497 tp_is_empty!8507)))

(assert (= (and b!1853067 ((_ is ElementMatch!5043) (regTwo!10599 (regex!3680 (h!25969 rules!865))))) b!1853187))

(assert (= (and b!1853067 ((_ is Concat!8840) (regTwo!10599 (regex!3680 (h!25969 rules!865))))) b!1853188))

(assert (= (and b!1853067 ((_ is Star!5043) (regTwo!10599 (regex!3680 (h!25969 rules!865))))) b!1853189))

(assert (= (and b!1853067 ((_ is Union!5043) (regTwo!10599 (regex!3680 (h!25969 rules!865))))) b!1853190))

(declare-fun b!1853192 () Bool)

(declare-fun e!1184498 () Bool)

(declare-fun tp!525418 () Bool)

(declare-fun tp!525420 () Bool)

(assert (=> b!1853192 (= e!1184498 (and tp!525418 tp!525420))))

(declare-fun b!1853193 () Bool)

(declare-fun tp!525419 () Bool)

(assert (=> b!1853193 (= e!1184498 tp!525419)))

(declare-fun b!1853194 () Bool)

(declare-fun tp!525422 () Bool)

(declare-fun tp!525421 () Bool)

(assert (=> b!1853194 (= e!1184498 (and tp!525422 tp!525421))))

(assert (=> b!1853077 (= tp!525353 e!1184498)))

(declare-fun b!1853191 () Bool)

(assert (=> b!1853191 (= e!1184498 tp_is_empty!8507)))

(assert (= (and b!1853077 ((_ is ElementMatch!5043) (regex!3680 (h!25969 (t!172467 rules!865))))) b!1853191))

(assert (= (and b!1853077 ((_ is Concat!8840) (regex!3680 (h!25969 (t!172467 rules!865))))) b!1853192))

(assert (= (and b!1853077 ((_ is Star!5043) (regex!3680 (h!25969 (t!172467 rules!865))))) b!1853193))

(assert (= (and b!1853077 ((_ is Union!5043) (regex!3680 (h!25969 (t!172467 rules!865))))) b!1853194))

(check-sat (not b!1853185) (not d!566299) (not b!1853169) (not d!566327) (not b_next!52591) (not b!1853175) (not b_next!52599) (not b!1853141) (not b!1853170) (not b_next!52593) (not b!1853150) b_and!144129 (not b!1853193) (not b!1853178) (not d!566333) (not b!1853171) (not b!1853174) (not b!1853179) (not b!1853184) (not b!1853177) (not b!1853111) b_and!144139 b_and!144131 b_and!144147 b_and!144145 (not b!1853192) (not b!1853167) (not b!1853173) (not b!1853188) (not b!1853186) (not b_next!52601) (not b!1853165) (not b!1853166) (not b!1853181) (not d!566317) (not b_next!52607) b_and!144137 (not d!566319) (not d!566323) (not b!1853194) (not b!1853190) (not b!1853189) (not b!1853180) (not d!566321) tp_is_empty!8507 (not b_next!52609))
(check-sat (not b_next!52591) b_and!144139 (not b_next!52599) (not b_next!52601) (not b_next!52593) b_and!144129 (not b_next!52609) b_and!144131 b_and!144147 b_and!144145 (not b_next!52607) b_and!144137)
(get-model)

(declare-fun b!1853247 () Bool)

(declare-fun e!1184545 () Bool)

(declare-fun size!16248 (BalanceConc!13544) Int)

(assert (=> b!1853247 (= e!1184545 (<= 0 (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853248 () Bool)

(declare-fun e!1184546 () Bool)

(assert (=> b!1853248 (= e!1184546 (tokensListTwoByTwoPredicateSeparable!153 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853249 () Bool)

(declare-fun res!831498 () Bool)

(declare-fun e!1184547 () Bool)

(assert (=> b!1853249 (=> (not res!831498) (not e!1184547))))

(assert (=> b!1853249 (= res!831498 (rulesInvariant!2969 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853250 () Bool)

(declare-fun res!831505 () Bool)

(assert (=> b!1853250 (=> (not res!831505) (not e!1184547))))

(declare-fun lt!716454 () List!20647)

(declare-fun lt!716480 () List!20647)

(declare-fun subseq!389 (List!20647 List!20647) Bool)

(assert (=> b!1853250 (= res!831505 (subseq!389 lt!716454 lt!716480))))

(declare-fun b!1853251 () Bool)

(declare-fun e!1184549 () Bool)

(assert (=> b!1853251 (= e!1184549 e!1184546)))

(declare-fun res!831504 () Bool)

(assert (=> b!1853251 (=> (not res!831504) (not e!1184546))))

(declare-fun separableTokensPredicate!832 (LexerInterface!3302 Token!6912 Token!6912 List!20646) Bool)

(declare-fun apply!5465 (BalanceConc!13544 Int) Token!6912)

(assert (=> b!1853251 (= res!831504 (separableTokensPredicate!832 Lexer!3300 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-datatypes ((Unit!35177 0))(
  ( (Unit!35178) )
))
(declare-fun lt!716479 () Unit!35177)

(declare-fun Unit!35179 () Unit!35177)

(assert (=> b!1853251 (= lt!716479 Unit!35179)))

(declare-fun size!16249 (BalanceConc!13542) Int)

(declare-fun charsOf!2296 (Token!6912) BalanceConc!13542)

(assert (=> b!1853251 (> (size!16249 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))) 0)))

(declare-fun lt!716453 () Unit!35177)

(declare-fun Unit!35180 () Unit!35177)

(assert (=> b!1853251 (= lt!716453 Unit!35180)))

(declare-fun rulesProduceIndividualToken!1541 (LexerInterface!3302 List!20646 Token!6912) Bool)

(assert (=> b!1853251 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))

(declare-fun lt!716471 () Unit!35177)

(declare-fun Unit!35181 () Unit!35177)

(assert (=> b!1853251 (= lt!716471 Unit!35181)))

(assert (=> b!1853251 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))

(declare-fun lt!716482 () Unit!35177)

(declare-fun lt!716459 () Unit!35177)

(assert (=> b!1853251 (= lt!716482 lt!716459)))

(declare-fun lt!716465 () Token!6912)

(assert (=> b!1853251 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716465)))

(declare-fun lt!716457 () List!20647)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 (LexerInterface!3302 List!20646 List!20647 Token!6912) Unit!35177)

(assert (=> b!1853251 (= lt!716459 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716457 lt!716465))))

(assert (=> b!1853251 (= lt!716465 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))

(assert (=> b!1853251 (= lt!716457 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716460 () Unit!35177)

(declare-fun lt!716474 () Unit!35177)

(assert (=> b!1853251 (= lt!716460 lt!716474)))

(declare-fun lt!716464 () Token!6912)

(assert (=> b!1853251 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716464)))

(declare-fun lt!716458 () List!20647)

(assert (=> b!1853251 (= lt!716474 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716458 lt!716464))))

(assert (=> b!1853251 (= lt!716464 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))

(assert (=> b!1853251 (= lt!716458 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716475 () Unit!35177)

(declare-fun lt!716483 () Unit!35177)

(assert (=> b!1853251 (= lt!716475 lt!716483)))

(declare-fun lt!716456 () List!20647)

(declare-fun lt!716452 () Int)

(declare-fun tail!2797 (List!20647) List!20647)

(declare-fun drop!982 (List!20647 Int) List!20647)

(assert (=> b!1853251 (= (tail!2797 (drop!982 lt!716456 lt!716452)) (drop!982 lt!716456 (+ lt!716452 1)))))

(declare-fun lemmaDropTail!622 (List!20647 Int) Unit!35177)

(assert (=> b!1853251 (= lt!716483 (lemmaDropTail!622 lt!716456 lt!716452))))

(assert (=> b!1853251 (= lt!716452 (+ 0 1))))

(assert (=> b!1853251 (= lt!716456 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716461 () Unit!35177)

(declare-fun lt!716476 () Unit!35177)

(assert (=> b!1853251 (= lt!716461 lt!716476)))

(declare-fun lt!716470 () List!20647)

(assert (=> b!1853251 (= (tail!2797 (drop!982 lt!716470 0)) (drop!982 lt!716470 (+ 0 1)))))

(assert (=> b!1853251 (= lt!716476 (lemmaDropTail!622 lt!716470 0))))

(assert (=> b!1853251 (= lt!716470 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716484 () Unit!35177)

(declare-fun lt!716455 () Unit!35177)

(assert (=> b!1853251 (= lt!716484 lt!716455)))

(declare-fun lt!716477 () List!20647)

(declare-fun lt!716467 () Int)

(declare-fun head!4342 (List!20647) Token!6912)

(declare-fun apply!5467 (List!20647 Int) Token!6912)

(assert (=> b!1853251 (= (head!4342 (drop!982 lt!716477 lt!716467)) (apply!5467 lt!716477 lt!716467))))

(declare-fun lemmaDropApply!642 (List!20647 Int) Unit!35177)

(assert (=> b!1853251 (= lt!716455 (lemmaDropApply!642 lt!716477 lt!716467))))

(assert (=> b!1853251 (= lt!716467 (+ 0 1))))

(assert (=> b!1853251 (= lt!716477 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716468 () Unit!35177)

(declare-fun lt!716466 () Unit!35177)

(assert (=> b!1853251 (= lt!716468 lt!716466)))

(declare-fun lt!716469 () List!20647)

(assert (=> b!1853251 (= (head!4342 (drop!982 lt!716469 0)) (apply!5467 lt!716469 0))))

(assert (=> b!1853251 (= lt!716466 (lemmaDropApply!642 lt!716469 0))))

(assert (=> b!1853251 (= lt!716469 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun d!566355 () Bool)

(declare-fun lt!716472 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!585 (LexerInterface!3302 List!20647 List!20646) Bool)

(declare-fun dropList!754 (BalanceConc!13544 Int) List!20647)

(assert (=> d!566355 (= lt!716472 (tokensListTwoByTwoPredicateSeparableList!585 Lexer!3300 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716462 () Unit!35177)

(declare-fun lt!716473 () Unit!35177)

(assert (=> d!566355 (= lt!716462 lt!716473)))

(assert (=> d!566355 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716454)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!74 (LexerInterface!3302 List!20646 List!20647 List!20647) Unit!35177)

(assert (=> d!566355 (= lt!716473 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!74 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716480 lt!716454))))

(assert (=> d!566355 e!1184547))

(declare-fun res!831503 () Bool)

(assert (=> d!566355 (=> (not res!831503) (not e!1184547))))

(assert (=> d!566355 (= res!831503 ((_ is Lexer!3300) Lexer!3300))))

(assert (=> d!566355 (= lt!716454 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))

(assert (=> d!566355 (= lt!716480 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716481 () Unit!35177)

(declare-fun lt!716478 () Unit!35177)

(assert (=> d!566355 (= lt!716481 lt!716478)))

(declare-fun lt!716463 () List!20647)

(assert (=> d!566355 (subseq!389 (drop!982 lt!716463 0) lt!716463)))

(declare-fun lemmaDropSubSeq!74 (List!20647 Int) Unit!35177)

(assert (=> d!566355 (= lt!716478 (lemmaDropSubSeq!74 lt!716463 0))))

(declare-fun e!1184548 () Bool)

(assert (=> d!566355 e!1184548))

(declare-fun res!831502 () Bool)

(assert (=> d!566355 (=> (not res!831502) (not e!1184548))))

(assert (=> d!566355 (= res!831502 (>= 0 0))))

(assert (=> d!566355 (= lt!716463 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566355 (= lt!716472 e!1184549)))

(declare-fun res!831499 () Bool)

(assert (=> d!566355 (=> res!831499 e!1184549)))

(assert (=> d!566355 (= res!831499 (not (< 0 (- (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) 1))))))

(assert (=> d!566355 e!1184545))

(declare-fun res!831501 () Bool)

(assert (=> d!566355 (=> (not res!831501) (not e!1184545))))

(assert (=> d!566355 (= res!831501 (>= 0 0))))

(assert (=> d!566355 (= (tokensListTwoByTwoPredicateSeparable!153 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716472)))

(declare-fun b!1853252 () Bool)

(declare-fun res!831500 () Bool)

(assert (=> b!1853252 (=> (not res!831500) (not e!1184547))))

(assert (=> b!1853252 (= res!831500 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853253 () Bool)

(assert (=> b!1853253 (= e!1184547 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716480))))

(declare-fun b!1853254 () Bool)

(declare-fun size!16250 (List!20647) Int)

(assert (=> b!1853254 (= e!1184548 (<= 0 (size!16250 lt!716463)))))

(assert (= (and d!566355 res!831501) b!1853247))

(assert (= (and d!566355 (not res!831499)) b!1853251))

(assert (= (and b!1853251 res!831504) b!1853248))

(assert (= (and d!566355 res!831502) b!1853254))

(assert (= (and d!566355 res!831503) b!1853252))

(assert (= (and b!1853252 res!831500) b!1853249))

(assert (= (and b!1853249 res!831498) b!1853250))

(assert (= (and b!1853250 res!831505) b!1853253))

(declare-fun m!2279985 () Bool)

(assert (=> b!1853254 m!2279985))

(assert (=> b!1853252 m!2279859))

(declare-fun m!2279987 () Bool)

(assert (=> b!1853253 m!2279987))

(assert (=> b!1853249 m!2279861))

(declare-fun m!2279989 () Bool)

(assert (=> d!566355 m!2279989))

(declare-fun m!2279991 () Bool)

(assert (=> d!566355 m!2279991))

(declare-fun m!2279993 () Bool)

(assert (=> d!566355 m!2279993))

(declare-fun m!2279995 () Bool)

(assert (=> d!566355 m!2279995))

(declare-fun m!2279997 () Bool)

(assert (=> d!566355 m!2279997))

(assert (=> d!566355 m!2279911))

(assert (=> d!566355 m!2279989))

(declare-fun m!2279999 () Bool)

(assert (=> d!566355 m!2279999))

(declare-fun m!2280001 () Bool)

(assert (=> d!566355 m!2280001))

(assert (=> d!566355 m!2279999))

(declare-fun m!2280003 () Bool)

(assert (=> d!566355 m!2280003))

(assert (=> b!1853247 m!2280003))

(declare-fun m!2280005 () Bool)

(assert (=> b!1853248 m!2280005))

(declare-fun m!2280007 () Bool)

(assert (=> b!1853251 m!2280007))

(declare-fun m!2280009 () Bool)

(assert (=> b!1853251 m!2280009))

(declare-fun m!2280011 () Bool)

(assert (=> b!1853251 m!2280011))

(declare-fun m!2280013 () Bool)

(assert (=> b!1853251 m!2280013))

(declare-fun m!2280015 () Bool)

(assert (=> b!1853251 m!2280015))

(declare-fun m!2280017 () Bool)

(assert (=> b!1853251 m!2280017))

(declare-fun m!2280019 () Bool)

(assert (=> b!1853251 m!2280019))

(declare-fun m!2280021 () Bool)

(assert (=> b!1853251 m!2280021))

(declare-fun m!2280023 () Bool)

(assert (=> b!1853251 m!2280023))

(declare-fun m!2280025 () Bool)

(assert (=> b!1853251 m!2280025))

(assert (=> b!1853251 m!2280021))

(assert (=> b!1853251 m!2280015))

(declare-fun m!2280027 () Bool)

(assert (=> b!1853251 m!2280027))

(assert (=> b!1853251 m!2279911))

(assert (=> b!1853251 m!2280021))

(declare-fun m!2280029 () Bool)

(assert (=> b!1853251 m!2280029))

(declare-fun m!2280031 () Bool)

(assert (=> b!1853251 m!2280031))

(assert (=> b!1853251 m!2280019))

(declare-fun m!2280033 () Bool)

(assert (=> b!1853251 m!2280033))

(declare-fun m!2280035 () Bool)

(assert (=> b!1853251 m!2280035))

(assert (=> b!1853251 m!2280029))

(declare-fun m!2280037 () Bool)

(assert (=> b!1853251 m!2280037))

(declare-fun m!2280039 () Bool)

(assert (=> b!1853251 m!2280039))

(declare-fun m!2280041 () Bool)

(assert (=> b!1853251 m!2280041))

(declare-fun m!2280043 () Bool)

(assert (=> b!1853251 m!2280043))

(declare-fun m!2280045 () Bool)

(assert (=> b!1853251 m!2280045))

(declare-fun m!2280047 () Bool)

(assert (=> b!1853251 m!2280047))

(assert (=> b!1853251 m!2280043))

(assert (=> b!1853251 m!2280021))

(declare-fun m!2280049 () Bool)

(assert (=> b!1853251 m!2280049))

(assert (=> b!1853251 m!2280019))

(declare-fun m!2280051 () Bool)

(assert (=> b!1853251 m!2280051))

(declare-fun m!2280053 () Bool)

(assert (=> b!1853251 m!2280053))

(declare-fun m!2280055 () Bool)

(assert (=> b!1853251 m!2280055))

(declare-fun m!2280057 () Bool)

(assert (=> b!1853251 m!2280057))

(assert (=> b!1853251 m!2280039))

(assert (=> b!1853251 m!2280011))

(declare-fun m!2280059 () Bool)

(assert (=> b!1853251 m!2280059))

(declare-fun m!2280061 () Bool)

(assert (=> b!1853250 m!2280061))

(assert (=> d!566327 d!566355))

(declare-fun bs!410518 () Bool)

(declare-fun d!566365 () Bool)

(assert (= bs!410518 (and d!566365 d!566299)))

(declare-fun lambda!73283 () Int)

(assert (=> bs!410518 (= (and (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toChars!5114 (transformation!3680 (h!25969 rules!865)))) (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 rules!865))))) (= lambda!73283 lambda!73263))))

(assert (=> d!566365 true))

(assert (=> d!566365 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865))))) (dynLambda!10177 order!13213 lambda!73283))))

(assert (=> d!566365 true))

(assert (=> d!566365 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))) (dynLambda!10177 order!13213 lambda!73283))))

(assert (=> d!566365 (= (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))) (Forall!962 lambda!73283))))

(declare-fun bs!410519 () Bool)

(assert (= bs!410519 d!566365))

(declare-fun m!2280063 () Bool)

(assert (=> bs!410519 m!2280063))

(assert (=> d!566333 d!566365))

(declare-fun d!566367 () Bool)

(declare-fun choose!11661 (Int) Bool)

(assert (=> d!566367 (= (Forall!962 lambda!73263) (choose!11661 lambda!73263))))

(declare-fun bs!410520 () Bool)

(assert (= bs!410520 d!566367))

(declare-fun m!2280065 () Bool)

(assert (=> bs!410520 m!2280065))

(assert (=> d!566299 d!566367))

(declare-fun bs!410526 () Bool)

(declare-fun d!566369 () Bool)

(assert (= bs!410526 (and d!566369 d!566319)))

(declare-fun lambda!73287 () Int)

(assert (=> bs!410526 (= lambda!73287 lambda!73268)))

(declare-fun b!1853419 () Bool)

(declare-fun e!1184613 () Bool)

(assert (=> b!1853419 (= e!1184613 true)))

(declare-fun b!1853418 () Bool)

(declare-fun e!1184612 () Bool)

(assert (=> b!1853418 (= e!1184612 e!1184613)))

(declare-fun b!1853417 () Bool)

(declare-fun e!1184611 () Bool)

(assert (=> b!1853417 (= e!1184611 e!1184612)))

(assert (=> d!566369 e!1184611))

(assert (= b!1853418 b!1853419))

(assert (= b!1853417 b!1853418))

(assert (= (and d!566369 ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) b!1853417))

(assert (=> b!1853419 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73287))))

(assert (=> b!1853419 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73287))))

(assert (=> d!566369 true))

(declare-fun lt!716586 () Bool)

(assert (=> d!566369 (= lt!716586 (forall!4397 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73287))))

(declare-fun e!1184609 () Bool)

(assert (=> d!566369 (= lt!716586 e!1184609)))

(declare-fun res!831536 () Bool)

(assert (=> d!566369 (=> res!831536 e!1184609)))

(assert (=> d!566369 (= res!831536 (not ((_ is Cons!20569) (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (=> d!566369 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566369 (= (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lt!716586)))

(declare-fun b!1853415 () Bool)

(declare-fun e!1184610 () Bool)

(assert (=> b!1853415 (= e!1184609 e!1184610)))

(declare-fun res!831537 () Bool)

(assert (=> b!1853415 (=> (not res!831537) (not e!1184610))))

(assert (=> b!1853415 (= res!831537 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853416 () Bool)

(assert (=> b!1853416 (= e!1184610 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (= (and d!566369 (not res!831536)) b!1853415))

(assert (= (and b!1853415 res!831537) b!1853416))

(assert (=> d!566369 m!2279911))

(declare-fun m!2280157 () Bool)

(assert (=> d!566369 m!2280157))

(assert (=> d!566369 m!2279859))

(declare-fun m!2280159 () Bool)

(assert (=> b!1853415 m!2280159))

(declare-fun m!2280161 () Bool)

(assert (=> b!1853416 m!2280161))

(assert (=> b!1853141 d!566369))

(declare-fun d!566381 () Bool)

(declare-fun list!8343 (Conc!6808) List!20647)

(assert (=> d!566381 (= (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (list!8343 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun bs!410527 () Bool)

(assert (= bs!410527 d!566381))

(declare-fun m!2280163 () Bool)

(assert (=> bs!410527 m!2280163))

(assert (=> b!1853141 d!566381))

(declare-fun bs!410528 () Bool)

(declare-fun d!566383 () Bool)

(assert (= bs!410528 (and d!566383 d!566323)))

(declare-fun lambda!73290 () Int)

(assert (=> bs!410528 (= lambda!73290 lambda!73274)))

(assert (=> d!566383 true))

(declare-fun lt!716589 () Bool)

(assert (=> d!566383 (= lt!716589 (forall!4399 rules!865 lambda!73290))))

(declare-fun e!1184618 () Bool)

(assert (=> d!566383 (= lt!716589 e!1184618)))

(declare-fun res!831543 () Bool)

(assert (=> d!566383 (=> res!831543 e!1184618)))

(assert (=> d!566383 (= res!831543 (not ((_ is Cons!20568) rules!865)))))

(assert (=> d!566383 (= (rulesValidInductive!1268 Lexer!3300 rules!865) lt!716589)))

(declare-fun b!1853424 () Bool)

(declare-fun e!1184619 () Bool)

(assert (=> b!1853424 (= e!1184618 e!1184619)))

(declare-fun res!831542 () Bool)

(assert (=> b!1853424 (=> (not res!831542) (not e!1184619))))

(declare-fun ruleValid!1141 (LexerInterface!3302 Rule!7160) Bool)

(assert (=> b!1853424 (= res!831542 (ruleValid!1141 Lexer!3300 (h!25969 rules!865)))))

(declare-fun b!1853425 () Bool)

(assert (=> b!1853425 (= e!1184619 (rulesValidInductive!1268 Lexer!3300 (t!172467 rules!865)))))

(assert (= (and d!566383 (not res!831543)) b!1853424))

(assert (= (and b!1853424 res!831542) b!1853425))

(declare-fun m!2280165 () Bool)

(assert (=> d!566383 m!2280165))

(declare-fun m!2280167 () Bool)

(assert (=> b!1853424 m!2280167))

(declare-fun m!2280169 () Bool)

(assert (=> b!1853425 m!2280169))

(assert (=> d!566323 d!566383))

(declare-fun d!566385 () Bool)

(declare-fun res!831548 () Bool)

(declare-fun e!1184624 () Bool)

(assert (=> d!566385 (=> res!831548 e!1184624)))

(assert (=> d!566385 (= res!831548 ((_ is Nil!20568) rules!865))))

(assert (=> d!566385 (= (forall!4399 rules!865 lambda!73274) e!1184624)))

(declare-fun b!1853430 () Bool)

(declare-fun e!1184625 () Bool)

(assert (=> b!1853430 (= e!1184624 e!1184625)))

(declare-fun res!831549 () Bool)

(assert (=> b!1853430 (=> (not res!831549) (not e!1184625))))

(declare-fun dynLambda!10183 (Int Rule!7160) Bool)

(assert (=> b!1853430 (= res!831549 (dynLambda!10183 lambda!73274 (h!25969 rules!865)))))

(declare-fun b!1853431 () Bool)

(assert (=> b!1853431 (= e!1184625 (forall!4399 (t!172467 rules!865) lambda!73274))))

(assert (= (and d!566385 (not res!831548)) b!1853430))

(assert (= (and b!1853430 res!831549) b!1853431))

(declare-fun b_lambda!61445 () Bool)

(assert (=> (not b_lambda!61445) (not b!1853430)))

(declare-fun m!2280171 () Bool)

(assert (=> b!1853430 m!2280171))

(declare-fun m!2280173 () Bool)

(assert (=> b!1853431 m!2280173))

(assert (=> d!566323 d!566385))

(declare-fun d!566387 () Bool)

(declare-fun choose!11662 (Int) Bool)

(assert (=> d!566387 (= (Forall2!593 lambda!73271) (choose!11662 lambda!73271))))

(declare-fun bs!410529 () Bool)

(assert (= bs!410529 d!566387))

(declare-fun m!2280175 () Bool)

(assert (=> bs!410529 m!2280175))

(assert (=> d!566321 d!566387))

(declare-fun d!566389 () Bool)

(declare-fun res!831554 () Bool)

(declare-fun e!1184630 () Bool)

(assert (=> d!566389 (=> res!831554 e!1184630)))

(assert (=> d!566389 (= res!831554 ((_ is Nil!20569) (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566389 (= (forall!4397 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73268) e!1184630)))

(declare-fun b!1853436 () Bool)

(declare-fun e!1184631 () Bool)

(assert (=> b!1853436 (= e!1184630 e!1184631)))

(declare-fun res!831555 () Bool)

(assert (=> b!1853436 (=> (not res!831555) (not e!1184631))))

(declare-fun dynLambda!10184 (Int Token!6912) Bool)

(assert (=> b!1853436 (= res!831555 (dynLambda!10184 lambda!73268 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853437 () Bool)

(assert (=> b!1853437 (= e!1184631 (forall!4397 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268))))

(assert (= (and d!566389 (not res!831554)) b!1853436))

(assert (= (and b!1853436 res!831555) b!1853437))

(declare-fun b_lambda!61447 () Bool)

(assert (=> (not b_lambda!61447) (not b!1853436)))

(declare-fun m!2280177 () Bool)

(assert (=> b!1853436 m!2280177))

(declare-fun m!2280179 () Bool)

(assert (=> b!1853437 m!2280179))

(assert (=> d!566319 d!566389))

(assert (=> d!566319 d!566381))

(declare-fun d!566391 () Bool)

(declare-fun lt!716592 () Bool)

(assert (=> d!566391 (= lt!716592 (forall!4397 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73268))))

(declare-fun forall!4401 (Conc!6808 Int) Bool)

(assert (=> d!566391 (= lt!716592 (forall!4401 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73268))))

(assert (=> d!566391 (= (forall!4398 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lambda!73268) lt!716592)))

(declare-fun bs!410530 () Bool)

(assert (= bs!410530 d!566391))

(assert (=> bs!410530 m!2279911))

(assert (=> bs!410530 m!2279911))

(assert (=> bs!410530 m!2279913))

(declare-fun m!2280181 () Bool)

(assert (=> bs!410530 m!2280181))

(assert (=> d!566319 d!566391))

(assert (=> d!566319 d!566325))

(declare-fun bs!410531 () Bool)

(declare-fun d!566393 () Bool)

(assert (= bs!410531 (and d!566393 d!566323)))

(declare-fun lambda!73291 () Int)

(assert (=> bs!410531 (= lambda!73291 lambda!73274)))

(declare-fun bs!410532 () Bool)

(assert (= bs!410532 (and d!566393 d!566383)))

(assert (=> bs!410532 (= lambda!73291 lambda!73290)))

(assert (=> d!566393 true))

(declare-fun lt!716593 () Bool)

(assert (=> d!566393 (= lt!716593 (rulesValidInductive!1268 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566393 (= lt!716593 (forall!4399 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lambda!73291))))

(assert (=> d!566393 (= (rulesValid!1404 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716593)))

(declare-fun bs!410533 () Bool)

(assert (= bs!410533 d!566393))

(declare-fun m!2280183 () Bool)

(assert (=> bs!410533 m!2280183))

(declare-fun m!2280185 () Bool)

(assert (=> bs!410533 m!2280185))

(assert (=> d!566317 d!566393))

(declare-fun d!566395 () Bool)

(assert (=> d!566395 (= (inv!26962 (tag!4094 (h!25969 (t!172467 (t!172467 rules!865))))) (= (mod (str.len (value!115498 (tag!4094 (h!25969 (t!172467 (t!172467 rules!865)))))) 2) 0))))

(assert (=> b!1853181 d!566395))

(declare-fun d!566397 () Bool)

(declare-fun res!831556 () Bool)

(declare-fun e!1184632 () Bool)

(assert (=> d!566397 (=> (not res!831556) (not e!1184632))))

(assert (=> d!566397 (= res!831556 (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))))))

(assert (=> d!566397 (= (inv!26965 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) e!1184632)))

(declare-fun b!1853438 () Bool)

(assert (=> b!1853438 (= e!1184632 (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))))))

(assert (= (and d!566397 res!831556) b!1853438))

(declare-fun m!2280187 () Bool)

(assert (=> d!566397 m!2280187))

(declare-fun m!2280189 () Bool)

(assert (=> b!1853438 m!2280189))

(assert (=> b!1853181 d!566397))

(declare-fun bs!410534 () Bool)

(declare-fun d!566399 () Bool)

(assert (= bs!410534 (and d!566399 d!566321)))

(declare-fun lambda!73292 () Int)

(assert (=> bs!410534 (= (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (= lambda!73292 lambda!73271))))

(assert (=> d!566399 true))

(assert (=> d!566399 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))) (dynLambda!10180 order!13219 lambda!73292))))

(assert (=> d!566399 (= (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))) (Forall2!593 lambda!73292))))

(declare-fun bs!410535 () Bool)

(assert (= bs!410535 d!566399))

(declare-fun m!2280191 () Bool)

(assert (=> bs!410535 m!2280191))

(assert (=> b!1853167 d!566399))

(declare-fun d!566401 () Bool)

(declare-fun res!831557 () Bool)

(declare-fun e!1184633 () Bool)

(assert (=> d!566401 (=> res!831557 e!1184633)))

(assert (=> d!566401 (= res!831557 ((_ is Nil!20568) (t!172467 rules!865)))))

(assert (=> d!566401 (= (noDuplicateTag!1402 Lexer!3300 (t!172467 rules!865) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)) e!1184633)))

(declare-fun b!1853439 () Bool)

(declare-fun e!1184634 () Bool)

(assert (=> b!1853439 (= e!1184633 e!1184634)))

(declare-fun res!831558 () Bool)

(assert (=> b!1853439 (=> (not res!831558) (not e!1184634))))

(assert (=> b!1853439 (= res!831558 (not (contains!3791 (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571) (tag!4094 (h!25969 (t!172467 rules!865))))))))

(declare-fun b!1853440 () Bool)

(assert (=> b!1853440 (= e!1184634 (noDuplicateTag!1402 Lexer!3300 (t!172467 (t!172467 rules!865)) (Cons!20571 (tag!4094 (h!25969 (t!172467 rules!865))) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571))))))

(assert (= (and d!566401 (not res!831557)) b!1853439))

(assert (= (and b!1853439 res!831558) b!1853440))

(declare-fun m!2280193 () Bool)

(assert (=> b!1853439 m!2280193))

(declare-fun m!2280195 () Bool)

(assert (=> b!1853440 m!2280195))

(assert (=> b!1853166 d!566401))

(declare-fun d!566403 () Bool)

(declare-fun lt!716596 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3053 (List!20649) (InoxSet String!23570))

(assert (=> d!566403 (= lt!716596 (select (content!3053 Nil!20571) (tag!4094 (h!25969 rules!865))))))

(declare-fun e!1184639 () Bool)

(assert (=> d!566403 (= lt!716596 e!1184639)))

(declare-fun res!831564 () Bool)

(assert (=> d!566403 (=> (not res!831564) (not e!1184639))))

(assert (=> d!566403 (= res!831564 ((_ is Cons!20571) Nil!20571))))

(assert (=> d!566403 (= (contains!3791 Nil!20571 (tag!4094 (h!25969 rules!865))) lt!716596)))

(declare-fun b!1853445 () Bool)

(declare-fun e!1184640 () Bool)

(assert (=> b!1853445 (= e!1184639 e!1184640)))

(declare-fun res!831563 () Bool)

(assert (=> b!1853445 (=> res!831563 e!1184640)))

(assert (=> b!1853445 (= res!831563 (= (h!25972 Nil!20571) (tag!4094 (h!25969 rules!865))))))

(declare-fun b!1853446 () Bool)

(assert (=> b!1853446 (= e!1184640 (contains!3791 (t!172470 Nil!20571) (tag!4094 (h!25969 rules!865))))))

(assert (= (and d!566403 res!831564) b!1853445))

(assert (= (and b!1853445 (not res!831563)) b!1853446))

(declare-fun m!2280197 () Bool)

(assert (=> d!566403 m!2280197))

(declare-fun m!2280199 () Bool)

(assert (=> d!566403 m!2280199))

(declare-fun m!2280201 () Bool)

(assert (=> b!1853446 m!2280201))

(assert (=> b!1853165 d!566403))

(declare-fun d!566405 () Bool)

(declare-fun res!831565 () Bool)

(declare-fun e!1184641 () Bool)

(assert (=> d!566405 (=> res!831565 e!1184641)))

(assert (=> d!566405 (= res!831565 ((_ is Nil!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566405 (= (noDuplicateTag!1402 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) Nil!20571) e!1184641)))

(declare-fun b!1853447 () Bool)

(declare-fun e!1184642 () Bool)

(assert (=> b!1853447 (= e!1184641 e!1184642)))

(declare-fun res!831566 () Bool)

(assert (=> b!1853447 (=> (not res!831566) (not e!1184642))))

(assert (=> b!1853447 (= res!831566 (not (contains!3791 Nil!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(declare-fun b!1853448 () Bool)

(assert (=> b!1853448 (= e!1184642 (noDuplicateTag!1402 Lexer!3300 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (Cons!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) Nil!20571)))))

(assert (= (and d!566405 (not res!831565)) b!1853447))

(assert (= (and b!1853447 res!831566) b!1853448))

(declare-fun m!2280203 () Bool)

(assert (=> b!1853447 m!2280203))

(declare-fun m!2280205 () Bool)

(assert (=> b!1853448 m!2280205))

(assert (=> b!1853111 d!566405))

(declare-fun b!1853450 () Bool)

(declare-fun e!1184643 () Bool)

(declare-fun tp!525582 () Bool)

(declare-fun tp!525584 () Bool)

(assert (=> b!1853450 (= e!1184643 (and tp!525582 tp!525584))))

(declare-fun b!1853451 () Bool)

(declare-fun tp!525583 () Bool)

(assert (=> b!1853451 (= e!1184643 tp!525583)))

(declare-fun b!1853452 () Bool)

(declare-fun tp!525586 () Bool)

(declare-fun tp!525585 () Bool)

(assert (=> b!1853452 (= e!1184643 (and tp!525586 tp!525585))))

(assert (=> b!1853186 (= tp!525412 e!1184643)))

(declare-fun b!1853449 () Bool)

(assert (=> b!1853449 (= e!1184643 tp_is_empty!8507)))

(assert (= (and b!1853186 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853449))

(assert (= (and b!1853186 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853450))

(assert (= (and b!1853186 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853451))

(assert (= (and b!1853186 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853452))

(declare-fun b!1853454 () Bool)

(declare-fun e!1184644 () Bool)

(declare-fun tp!525587 () Bool)

(declare-fun tp!525589 () Bool)

(assert (=> b!1853454 (= e!1184644 (and tp!525587 tp!525589))))

(declare-fun b!1853455 () Bool)

(declare-fun tp!525588 () Bool)

(assert (=> b!1853455 (= e!1184644 tp!525588)))

(declare-fun b!1853456 () Bool)

(declare-fun tp!525591 () Bool)

(declare-fun tp!525590 () Bool)

(assert (=> b!1853456 (= e!1184644 (and tp!525591 tp!525590))))

(assert (=> b!1853186 (= tp!525411 e!1184644)))

(declare-fun b!1853453 () Bool)

(assert (=> b!1853453 (= e!1184644 tp_is_empty!8507)))

(assert (= (and b!1853186 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853453))

(assert (= (and b!1853186 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853454))

(assert (= (and b!1853186 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853455))

(assert (= (and b!1853186 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853456))

(declare-fun b!1853458 () Bool)

(declare-fun e!1184645 () Bool)

(declare-fun tp!525592 () Bool)

(declare-fun tp!525594 () Bool)

(assert (=> b!1853458 (= e!1184645 (and tp!525592 tp!525594))))

(declare-fun b!1853459 () Bool)

(declare-fun tp!525593 () Bool)

(assert (=> b!1853459 (= e!1184645 tp!525593)))

(declare-fun b!1853460 () Bool)

(declare-fun tp!525596 () Bool)

(declare-fun tp!525595 () Bool)

(assert (=> b!1853460 (= e!1184645 (and tp!525596 tp!525595))))

(assert (=> b!1853190 (= tp!525417 e!1184645)))

(declare-fun b!1853457 () Bool)

(assert (=> b!1853457 (= e!1184645 tp_is_empty!8507)))

(assert (= (and b!1853190 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853457))

(assert (= (and b!1853190 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853458))

(assert (= (and b!1853190 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853459))

(assert (= (and b!1853190 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853460))

(declare-fun b!1853462 () Bool)

(declare-fun e!1184646 () Bool)

(declare-fun tp!525597 () Bool)

(declare-fun tp!525599 () Bool)

(assert (=> b!1853462 (= e!1184646 (and tp!525597 tp!525599))))

(declare-fun b!1853463 () Bool)

(declare-fun tp!525598 () Bool)

(assert (=> b!1853463 (= e!1184646 tp!525598)))

(declare-fun b!1853464 () Bool)

(declare-fun tp!525601 () Bool)

(declare-fun tp!525600 () Bool)

(assert (=> b!1853464 (= e!1184646 (and tp!525601 tp!525600))))

(assert (=> b!1853190 (= tp!525416 e!1184646)))

(declare-fun b!1853461 () Bool)

(assert (=> b!1853461 (= e!1184646 tp_is_empty!8507)))

(assert (= (and b!1853190 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853461))

(assert (= (and b!1853190 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853462))

(assert (= (and b!1853190 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853463))

(assert (= (and b!1853190 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853464))

(declare-fun b!1853466 () Bool)

(declare-fun e!1184647 () Bool)

(declare-fun tp!525602 () Bool)

(declare-fun tp!525604 () Bool)

(assert (=> b!1853466 (= e!1184647 (and tp!525602 tp!525604))))

(declare-fun b!1853467 () Bool)

(declare-fun tp!525603 () Bool)

(assert (=> b!1853467 (= e!1184647 tp!525603)))

(declare-fun b!1853468 () Bool)

(declare-fun tp!525606 () Bool)

(declare-fun tp!525605 () Bool)

(assert (=> b!1853468 (= e!1184647 (and tp!525606 tp!525605))))

(assert (=> b!1853185 (= tp!525409 e!1184647)))

(declare-fun b!1853465 () Bool)

(assert (=> b!1853465 (= e!1184647 tp_is_empty!8507)))

(assert (= (and b!1853185 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853465))

(assert (= (and b!1853185 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853466))

(assert (= (and b!1853185 ((_ is Star!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853467))

(assert (= (and b!1853185 ((_ is Union!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853468))

(declare-fun b!1853470 () Bool)

(declare-fun e!1184648 () Bool)

(declare-fun tp!525607 () Bool)

(declare-fun tp!525609 () Bool)

(assert (=> b!1853470 (= e!1184648 (and tp!525607 tp!525609))))

(declare-fun b!1853471 () Bool)

(declare-fun tp!525608 () Bool)

(assert (=> b!1853471 (= e!1184648 tp!525608)))

(declare-fun b!1853472 () Bool)

(declare-fun tp!525611 () Bool)

(declare-fun tp!525610 () Bool)

(assert (=> b!1853472 (= e!1184648 (and tp!525611 tp!525610))))

(assert (=> b!1853194 (= tp!525422 e!1184648)))

(declare-fun b!1853469 () Bool)

(assert (=> b!1853469 (= e!1184648 tp_is_empty!8507)))

(assert (= (and b!1853194 ((_ is ElementMatch!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853469))

(assert (= (and b!1853194 ((_ is Concat!8840) (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853470))

(assert (= (and b!1853194 ((_ is Star!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853471))

(assert (= (and b!1853194 ((_ is Union!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853472))

(declare-fun b!1853474 () Bool)

(declare-fun e!1184649 () Bool)

(declare-fun tp!525612 () Bool)

(declare-fun tp!525614 () Bool)

(assert (=> b!1853474 (= e!1184649 (and tp!525612 tp!525614))))

(declare-fun b!1853475 () Bool)

(declare-fun tp!525613 () Bool)

(assert (=> b!1853475 (= e!1184649 tp!525613)))

(declare-fun b!1853476 () Bool)

(declare-fun tp!525616 () Bool)

(declare-fun tp!525615 () Bool)

(assert (=> b!1853476 (= e!1184649 (and tp!525616 tp!525615))))

(assert (=> b!1853194 (= tp!525421 e!1184649)))

(declare-fun b!1853473 () Bool)

(assert (=> b!1853473 (= e!1184649 tp_is_empty!8507)))

(assert (= (and b!1853194 ((_ is ElementMatch!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853473))

(assert (= (and b!1853194 ((_ is Concat!8840) (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853474))

(assert (= (and b!1853194 ((_ is Star!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853475))

(assert (= (and b!1853194 ((_ is Union!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853476))

(declare-fun b!1853478 () Bool)

(declare-fun e!1184650 () Bool)

(declare-fun tp!525617 () Bool)

(declare-fun tp!525619 () Bool)

(assert (=> b!1853478 (= e!1184650 (and tp!525617 tp!525619))))

(declare-fun b!1853479 () Bool)

(declare-fun tp!525618 () Bool)

(assert (=> b!1853479 (= e!1184650 tp!525618)))

(declare-fun b!1853480 () Bool)

(declare-fun tp!525621 () Bool)

(declare-fun tp!525620 () Bool)

(assert (=> b!1853480 (= e!1184650 (and tp!525621 tp!525620))))

(assert (=> b!1853189 (= tp!525414 e!1184650)))

(declare-fun b!1853477 () Bool)

(assert (=> b!1853477 (= e!1184650 tp_is_empty!8507)))

(assert (= (and b!1853189 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853477))

(assert (= (and b!1853189 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853478))

(assert (= (and b!1853189 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853479))

(assert (= (and b!1853189 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853480))

(declare-fun b!1853482 () Bool)

(declare-fun e!1184651 () Bool)

(declare-fun tp!525622 () Bool)

(declare-fun tp!525624 () Bool)

(assert (=> b!1853482 (= e!1184651 (and tp!525622 tp!525624))))

(declare-fun b!1853483 () Bool)

(declare-fun tp!525623 () Bool)

(assert (=> b!1853483 (= e!1184651 tp!525623)))

(declare-fun b!1853484 () Bool)

(declare-fun tp!525626 () Bool)

(declare-fun tp!525625 () Bool)

(assert (=> b!1853484 (= e!1184651 (and tp!525626 tp!525625))))

(assert (=> b!1853184 (= tp!525408 e!1184651)))

(declare-fun b!1853481 () Bool)

(assert (=> b!1853481 (= e!1184651 tp_is_empty!8507)))

(assert (= (and b!1853184 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853481))

(assert (= (and b!1853184 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853482))

(assert (= (and b!1853184 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853483))

(assert (= (and b!1853184 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853484))

(declare-fun b!1853486 () Bool)

(declare-fun e!1184652 () Bool)

(declare-fun tp!525627 () Bool)

(declare-fun tp!525629 () Bool)

(assert (=> b!1853486 (= e!1184652 (and tp!525627 tp!525629))))

(declare-fun b!1853487 () Bool)

(declare-fun tp!525628 () Bool)

(assert (=> b!1853487 (= e!1184652 tp!525628)))

(declare-fun b!1853488 () Bool)

(declare-fun tp!525631 () Bool)

(declare-fun tp!525630 () Bool)

(assert (=> b!1853488 (= e!1184652 (and tp!525631 tp!525630))))

(assert (=> b!1853184 (= tp!525410 e!1184652)))

(declare-fun b!1853485 () Bool)

(assert (=> b!1853485 (= e!1184652 tp_is_empty!8507)))

(assert (= (and b!1853184 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853485))

(assert (= (and b!1853184 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853486))

(assert (= (and b!1853184 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853487))

(assert (= (and b!1853184 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865)))))) b!1853488))

(declare-fun b!1853490 () Bool)

(declare-fun e!1184653 () Bool)

(declare-fun tp!525632 () Bool)

(declare-fun tp!525634 () Bool)

(assert (=> b!1853490 (= e!1184653 (and tp!525632 tp!525634))))

(declare-fun b!1853491 () Bool)

(declare-fun tp!525633 () Bool)

(assert (=> b!1853491 (= e!1184653 tp!525633)))

(declare-fun b!1853492 () Bool)

(declare-fun tp!525636 () Bool)

(declare-fun tp!525635 () Bool)

(assert (=> b!1853492 (= e!1184653 (and tp!525636 tp!525635))))

(assert (=> b!1853193 (= tp!525419 e!1184653)))

(declare-fun b!1853489 () Bool)

(assert (=> b!1853489 (= e!1184653 tp_is_empty!8507)))

(assert (= (and b!1853193 ((_ is ElementMatch!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853489))

(assert (= (and b!1853193 ((_ is Concat!8840) (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853490))

(assert (= (and b!1853193 ((_ is Star!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853491))

(assert (= (and b!1853193 ((_ is Union!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853492))

(declare-fun b!1853494 () Bool)

(declare-fun e!1184654 () Bool)

(declare-fun tp!525637 () Bool)

(declare-fun tp!525639 () Bool)

(assert (=> b!1853494 (= e!1184654 (and tp!525637 tp!525639))))

(declare-fun b!1853495 () Bool)

(declare-fun tp!525638 () Bool)

(assert (=> b!1853495 (= e!1184654 tp!525638)))

(declare-fun b!1853496 () Bool)

(declare-fun tp!525641 () Bool)

(declare-fun tp!525640 () Bool)

(assert (=> b!1853496 (= e!1184654 (and tp!525641 tp!525640))))

(assert (=> b!1853188 (= tp!525413 e!1184654)))

(declare-fun b!1853493 () Bool)

(assert (=> b!1853493 (= e!1184654 tp_is_empty!8507)))

(assert (= (and b!1853188 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853493))

(assert (= (and b!1853188 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853494))

(assert (= (and b!1853188 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853495))

(assert (= (and b!1853188 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853496))

(declare-fun b!1853498 () Bool)

(declare-fun e!1184655 () Bool)

(declare-fun tp!525642 () Bool)

(declare-fun tp!525644 () Bool)

(assert (=> b!1853498 (= e!1184655 (and tp!525642 tp!525644))))

(declare-fun b!1853499 () Bool)

(declare-fun tp!525643 () Bool)

(assert (=> b!1853499 (= e!1184655 tp!525643)))

(declare-fun b!1853500 () Bool)

(declare-fun tp!525646 () Bool)

(declare-fun tp!525645 () Bool)

(assert (=> b!1853500 (= e!1184655 (and tp!525646 tp!525645))))

(assert (=> b!1853188 (= tp!525415 e!1184655)))

(declare-fun b!1853497 () Bool)

(assert (=> b!1853497 (= e!1184655 tp_is_empty!8507)))

(assert (= (and b!1853188 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853497))

(assert (= (and b!1853188 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853498))

(assert (= (and b!1853188 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853499))

(assert (= (and b!1853188 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865)))))) b!1853500))

(declare-fun b!1853502 () Bool)

(declare-fun e!1184656 () Bool)

(declare-fun tp!525647 () Bool)

(declare-fun tp!525649 () Bool)

(assert (=> b!1853502 (= e!1184656 (and tp!525647 tp!525649))))

(declare-fun b!1853503 () Bool)

(declare-fun tp!525648 () Bool)

(assert (=> b!1853503 (= e!1184656 tp!525648)))

(declare-fun b!1853504 () Bool)

(declare-fun tp!525651 () Bool)

(declare-fun tp!525650 () Bool)

(assert (=> b!1853504 (= e!1184656 (and tp!525651 tp!525650))))

(assert (=> b!1853192 (= tp!525418 e!1184656)))

(declare-fun b!1853501 () Bool)

(assert (=> b!1853501 (= e!1184656 tp_is_empty!8507)))

(assert (= (and b!1853192 ((_ is ElementMatch!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853501))

(assert (= (and b!1853192 ((_ is Concat!8840) (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853502))

(assert (= (and b!1853192 ((_ is Star!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853503))

(assert (= (and b!1853192 ((_ is Union!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853504))

(declare-fun b!1853506 () Bool)

(declare-fun e!1184657 () Bool)

(declare-fun tp!525652 () Bool)

(declare-fun tp!525654 () Bool)

(assert (=> b!1853506 (= e!1184657 (and tp!525652 tp!525654))))

(declare-fun b!1853507 () Bool)

(declare-fun tp!525653 () Bool)

(assert (=> b!1853507 (= e!1184657 tp!525653)))

(declare-fun b!1853508 () Bool)

(declare-fun tp!525656 () Bool)

(declare-fun tp!525655 () Bool)

(assert (=> b!1853508 (= e!1184657 (and tp!525656 tp!525655))))

(assert (=> b!1853192 (= tp!525420 e!1184657)))

(declare-fun b!1853505 () Bool)

(assert (=> b!1853505 (= e!1184657 tp_is_empty!8507)))

(assert (= (and b!1853192 ((_ is ElementMatch!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853505))

(assert (= (and b!1853192 ((_ is Concat!8840) (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853506))

(assert (= (and b!1853192 ((_ is Star!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853507))

(assert (= (and b!1853192 ((_ is Union!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865)))))) b!1853508))

(declare-fun b!1853510 () Bool)

(declare-fun e!1184658 () Bool)

(declare-fun tp!525657 () Bool)

(declare-fun tp!525659 () Bool)

(assert (=> b!1853510 (= e!1184658 (and tp!525657 tp!525659))))

(declare-fun b!1853511 () Bool)

(declare-fun tp!525658 () Bool)

(assert (=> b!1853511 (= e!1184658 tp!525658)))

(declare-fun b!1853512 () Bool)

(declare-fun tp!525661 () Bool)

(declare-fun tp!525660 () Bool)

(assert (=> b!1853512 (= e!1184658 (and tp!525661 tp!525660))))

(assert (=> b!1853171 (= tp!525393 e!1184658)))

(declare-fun b!1853509 () Bool)

(assert (=> b!1853509 (= e!1184658 tp_is_empty!8507)))

(assert (= (and b!1853171 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853509))

(assert (= (and b!1853171 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853510))

(assert (= (and b!1853171 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853511))

(assert (= (and b!1853171 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853512))

(declare-fun b!1853514 () Bool)

(declare-fun e!1184659 () Bool)

(declare-fun tp!525662 () Bool)

(declare-fun tp!525664 () Bool)

(assert (=> b!1853514 (= e!1184659 (and tp!525662 tp!525664))))

(declare-fun b!1853515 () Bool)

(declare-fun tp!525663 () Bool)

(assert (=> b!1853515 (= e!1184659 tp!525663)))

(declare-fun b!1853516 () Bool)

(declare-fun tp!525666 () Bool)

(declare-fun tp!525665 () Bool)

(assert (=> b!1853516 (= e!1184659 (and tp!525666 tp!525665))))

(assert (=> b!1853171 (= tp!525392 e!1184659)))

(declare-fun b!1853513 () Bool)

(assert (=> b!1853513 (= e!1184659 tp_is_empty!8507)))

(assert (= (and b!1853171 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853513))

(assert (= (and b!1853171 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853514))

(assert (= (and b!1853171 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853515))

(assert (= (and b!1853171 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853516))

(declare-fun b!1853518 () Bool)

(declare-fun e!1184660 () Bool)

(declare-fun tp!525667 () Bool)

(declare-fun tp!525669 () Bool)

(assert (=> b!1853518 (= e!1184660 (and tp!525667 tp!525669))))

(declare-fun b!1853519 () Bool)

(declare-fun tp!525668 () Bool)

(assert (=> b!1853519 (= e!1184660 tp!525668)))

(declare-fun b!1853520 () Bool)

(declare-fun tp!525671 () Bool)

(declare-fun tp!525670 () Bool)

(assert (=> b!1853520 (= e!1184660 (and tp!525671 tp!525670))))

(assert (=> b!1853175 (= tp!525398 e!1184660)))

(declare-fun b!1853517 () Bool)

(assert (=> b!1853517 (= e!1184660 tp_is_empty!8507)))

(assert (= (and b!1853175 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853517))

(assert (= (and b!1853175 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853518))

(assert (= (and b!1853175 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853519))

(assert (= (and b!1853175 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853520))

(declare-fun b!1853522 () Bool)

(declare-fun e!1184661 () Bool)

(declare-fun tp!525672 () Bool)

(declare-fun tp!525674 () Bool)

(assert (=> b!1853522 (= e!1184661 (and tp!525672 tp!525674))))

(declare-fun b!1853523 () Bool)

(declare-fun tp!525673 () Bool)

(assert (=> b!1853523 (= e!1184661 tp!525673)))

(declare-fun b!1853524 () Bool)

(declare-fun tp!525676 () Bool)

(declare-fun tp!525675 () Bool)

(assert (=> b!1853524 (= e!1184661 (and tp!525676 tp!525675))))

(assert (=> b!1853175 (= tp!525397 e!1184661)))

(declare-fun b!1853521 () Bool)

(assert (=> b!1853521 (= e!1184661 tp_is_empty!8507)))

(assert (= (and b!1853175 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853521))

(assert (= (and b!1853175 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853522))

(assert (= (and b!1853175 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853523))

(assert (= (and b!1853175 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853524))

(declare-fun b!1853526 () Bool)

(declare-fun e!1184662 () Bool)

(declare-fun tp!525677 () Bool)

(declare-fun tp!525679 () Bool)

(assert (=> b!1853526 (= e!1184662 (and tp!525677 tp!525679))))

(declare-fun b!1853527 () Bool)

(declare-fun tp!525678 () Bool)

(assert (=> b!1853527 (= e!1184662 tp!525678)))

(declare-fun b!1853528 () Bool)

(declare-fun tp!525681 () Bool)

(declare-fun tp!525680 () Bool)

(assert (=> b!1853528 (= e!1184662 (and tp!525681 tp!525680))))

(assert (=> b!1853170 (= tp!525390 e!1184662)))

(declare-fun b!1853525 () Bool)

(assert (=> b!1853525 (= e!1184662 tp_is_empty!8507)))

(assert (= (and b!1853170 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853525))

(assert (= (and b!1853170 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853526))

(assert (= (and b!1853170 ((_ is Star!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853527))

(assert (= (and b!1853170 ((_ is Union!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853528))

(declare-fun b!1853530 () Bool)

(declare-fun e!1184663 () Bool)

(declare-fun tp!525682 () Bool)

(declare-fun tp!525684 () Bool)

(assert (=> b!1853530 (= e!1184663 (and tp!525682 tp!525684))))

(declare-fun b!1853531 () Bool)

(declare-fun tp!525683 () Bool)

(assert (=> b!1853531 (= e!1184663 tp!525683)))

(declare-fun b!1853532 () Bool)

(declare-fun tp!525686 () Bool)

(declare-fun tp!525685 () Bool)

(assert (=> b!1853532 (= e!1184663 (and tp!525686 tp!525685))))

(assert (=> b!1853179 (= tp!525403 e!1184663)))

(declare-fun b!1853529 () Bool)

(assert (=> b!1853529 (= e!1184663 tp_is_empty!8507)))

(assert (= (and b!1853179 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853529))

(assert (= (and b!1853179 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853530))

(assert (= (and b!1853179 ((_ is Star!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853531))

(assert (= (and b!1853179 ((_ is Union!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853532))

(declare-fun b!1853534 () Bool)

(declare-fun e!1184664 () Bool)

(declare-fun tp!525687 () Bool)

(declare-fun tp!525689 () Bool)

(assert (=> b!1853534 (= e!1184664 (and tp!525687 tp!525689))))

(declare-fun b!1853535 () Bool)

(declare-fun tp!525688 () Bool)

(assert (=> b!1853535 (= e!1184664 tp!525688)))

(declare-fun b!1853536 () Bool)

(declare-fun tp!525691 () Bool)

(declare-fun tp!525690 () Bool)

(assert (=> b!1853536 (= e!1184664 (and tp!525691 tp!525690))))

(assert (=> b!1853179 (= tp!525402 e!1184664)))

(declare-fun b!1853533 () Bool)

(assert (=> b!1853533 (= e!1184664 tp_is_empty!8507)))

(assert (= (and b!1853179 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853533))

(assert (= (and b!1853179 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853534))

(assert (= (and b!1853179 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853535))

(assert (= (and b!1853179 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853536))

(declare-fun b!1853538 () Bool)

(declare-fun e!1184665 () Bool)

(declare-fun tp!525692 () Bool)

(declare-fun tp!525694 () Bool)

(assert (=> b!1853538 (= e!1184665 (and tp!525692 tp!525694))))

(declare-fun b!1853539 () Bool)

(declare-fun tp!525693 () Bool)

(assert (=> b!1853539 (= e!1184665 tp!525693)))

(declare-fun b!1853540 () Bool)

(declare-fun tp!525696 () Bool)

(declare-fun tp!525695 () Bool)

(assert (=> b!1853540 (= e!1184665 (and tp!525696 tp!525695))))

(assert (=> b!1853174 (= tp!525395 e!1184665)))

(declare-fun b!1853537 () Bool)

(assert (=> b!1853537 (= e!1184665 tp_is_empty!8507)))

(assert (= (and b!1853174 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853537))

(assert (= (and b!1853174 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853538))

(assert (= (and b!1853174 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853539))

(assert (= (and b!1853174 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853540))

(declare-fun b!1853542 () Bool)

(declare-fun e!1184666 () Bool)

(declare-fun tp!525697 () Bool)

(declare-fun tp!525699 () Bool)

(assert (=> b!1853542 (= e!1184666 (and tp!525697 tp!525699))))

(declare-fun b!1853543 () Bool)

(declare-fun tp!525698 () Bool)

(assert (=> b!1853543 (= e!1184666 tp!525698)))

(declare-fun b!1853544 () Bool)

(declare-fun tp!525701 () Bool)

(declare-fun tp!525700 () Bool)

(assert (=> b!1853544 (= e!1184666 (and tp!525701 tp!525700))))

(assert (=> b!1853169 (= tp!525389 e!1184666)))

(declare-fun b!1853541 () Bool)

(assert (=> b!1853541 (= e!1184666 tp_is_empty!8507)))

(assert (= (and b!1853169 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853541))

(assert (= (and b!1853169 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853542))

(assert (= (and b!1853169 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853543))

(assert (= (and b!1853169 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853544))

(declare-fun b!1853546 () Bool)

(declare-fun e!1184667 () Bool)

(declare-fun tp!525702 () Bool)

(declare-fun tp!525704 () Bool)

(assert (=> b!1853546 (= e!1184667 (and tp!525702 tp!525704))))

(declare-fun b!1853547 () Bool)

(declare-fun tp!525703 () Bool)

(assert (=> b!1853547 (= e!1184667 tp!525703)))

(declare-fun b!1853548 () Bool)

(declare-fun tp!525706 () Bool)

(declare-fun tp!525705 () Bool)

(assert (=> b!1853548 (= e!1184667 (and tp!525706 tp!525705))))

(assert (=> b!1853169 (= tp!525391 e!1184667)))

(declare-fun b!1853545 () Bool)

(assert (=> b!1853545 (= e!1184667 tp_is_empty!8507)))

(assert (= (and b!1853169 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853545))

(assert (= (and b!1853169 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853546))

(assert (= (and b!1853169 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853547))

(assert (= (and b!1853169 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865)))))) b!1853548))

(declare-fun b!1853550 () Bool)

(declare-fun e!1184668 () Bool)

(declare-fun tp!525707 () Bool)

(declare-fun tp!525709 () Bool)

(assert (=> b!1853550 (= e!1184668 (and tp!525707 tp!525709))))

(declare-fun b!1853551 () Bool)

(declare-fun tp!525708 () Bool)

(assert (=> b!1853551 (= e!1184668 tp!525708)))

(declare-fun b!1853552 () Bool)

(declare-fun tp!525711 () Bool)

(declare-fun tp!525710 () Bool)

(assert (=> b!1853552 (= e!1184668 (and tp!525711 tp!525710))))

(assert (=> b!1853181 (= tp!525406 e!1184668)))

(declare-fun b!1853549 () Bool)

(assert (=> b!1853549 (= e!1184668 tp_is_empty!8507)))

(assert (= (and b!1853181 ((_ is ElementMatch!5043) (regex!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) b!1853549))

(assert (= (and b!1853181 ((_ is Concat!8840) (regex!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) b!1853550))

(assert (= (and b!1853181 ((_ is Star!5043) (regex!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) b!1853551))

(assert (= (and b!1853181 ((_ is Union!5043) (regex!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) b!1853552))

(declare-fun b!1853555 () Bool)

(declare-fun e!1184671 () Bool)

(assert (=> b!1853555 (= e!1184671 true)))

(declare-fun b!1853554 () Bool)

(declare-fun e!1184670 () Bool)

(assert (=> b!1853554 (= e!1184670 e!1184671)))

(declare-fun b!1853553 () Bool)

(declare-fun e!1184669 () Bool)

(assert (=> b!1853553 (= e!1184669 e!1184670)))

(assert (=> b!1853150 e!1184669))

(assert (= b!1853554 b!1853555))

(assert (= b!1853553 b!1853554))

(assert (= (and b!1853150 ((_ is Cons!20568) (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) b!1853553))

(assert (=> b!1853555 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))) (dynLambda!10179 order!13217 lambda!73268))))

(assert (=> b!1853555 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))) (dynLambda!10179 order!13217 lambda!73268))))

(declare-fun b!1853557 () Bool)

(declare-fun e!1184672 () Bool)

(declare-fun tp!525712 () Bool)

(declare-fun tp!525714 () Bool)

(assert (=> b!1853557 (= e!1184672 (and tp!525712 tp!525714))))

(declare-fun b!1853558 () Bool)

(declare-fun tp!525713 () Bool)

(assert (=> b!1853558 (= e!1184672 tp!525713)))

(declare-fun b!1853559 () Bool)

(declare-fun tp!525716 () Bool)

(declare-fun tp!525715 () Bool)

(assert (=> b!1853559 (= e!1184672 (and tp!525716 tp!525715))))

(assert (=> b!1853178 (= tp!525400 e!1184672)))

(declare-fun b!1853556 () Bool)

(assert (=> b!1853556 (= e!1184672 tp_is_empty!8507)))

(assert (= (and b!1853178 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853556))

(assert (= (and b!1853178 ((_ is Concat!8840) (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853557))

(assert (= (and b!1853178 ((_ is Star!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853558))

(assert (= (and b!1853178 ((_ is Union!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853559))

(declare-fun b!1853561 () Bool)

(declare-fun e!1184673 () Bool)

(declare-fun tp!525717 () Bool)

(declare-fun tp!525719 () Bool)

(assert (=> b!1853561 (= e!1184673 (and tp!525717 tp!525719))))

(declare-fun b!1853562 () Bool)

(declare-fun tp!525718 () Bool)

(assert (=> b!1853562 (= e!1184673 tp!525718)))

(declare-fun b!1853563 () Bool)

(declare-fun tp!525721 () Bool)

(declare-fun tp!525720 () Bool)

(assert (=> b!1853563 (= e!1184673 (and tp!525721 tp!525720))))

(assert (=> b!1853173 (= tp!525394 e!1184673)))

(declare-fun b!1853560 () Bool)

(assert (=> b!1853560 (= e!1184673 tp_is_empty!8507)))

(assert (= (and b!1853173 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853560))

(assert (= (and b!1853173 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853561))

(assert (= (and b!1853173 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853562))

(assert (= (and b!1853173 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853563))

(declare-fun b!1853565 () Bool)

(declare-fun e!1184674 () Bool)

(declare-fun tp!525722 () Bool)

(declare-fun tp!525724 () Bool)

(assert (=> b!1853565 (= e!1184674 (and tp!525722 tp!525724))))

(declare-fun b!1853566 () Bool)

(declare-fun tp!525723 () Bool)

(assert (=> b!1853566 (= e!1184674 tp!525723)))

(declare-fun b!1853567 () Bool)

(declare-fun tp!525726 () Bool)

(declare-fun tp!525725 () Bool)

(assert (=> b!1853567 (= e!1184674 (and tp!525726 tp!525725))))

(assert (=> b!1853173 (= tp!525396 e!1184674)))

(declare-fun b!1853564 () Bool)

(assert (=> b!1853564 (= e!1184674 tp_is_empty!8507)))

(assert (= (and b!1853173 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853564))

(assert (= (and b!1853173 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853565))

(assert (= (and b!1853173 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853566))

(assert (= (and b!1853173 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865)))))) b!1853567))

(declare-fun b!1853570 () Bool)

(declare-fun b_free!51911 () Bool)

(declare-fun b_next!52615 () Bool)

(assert (=> b!1853570 (= b_free!51911 (not b_next!52615))))

(declare-fun tp!525730 () Bool)

(declare-fun b_and!144153 () Bool)

(assert (=> b!1853570 (= tp!525730 b_and!144153)))

(declare-fun b_free!51913 () Bool)

(declare-fun b_next!52617 () Bool)

(assert (=> b!1853570 (= b_free!51913 (not b_next!52617))))

(declare-fun tp!525727 () Bool)

(declare-fun b_and!144155 () Bool)

(assert (=> b!1853570 (= tp!525727 b_and!144155)))

(declare-fun e!1184676 () Bool)

(assert (=> b!1853570 (= e!1184676 (and tp!525730 tp!525727))))

(declare-fun tp!525729 () Bool)

(declare-fun b!1853569 () Bool)

(declare-fun e!1184675 () Bool)

(assert (=> b!1853569 (= e!1184675 (and tp!525729 (inv!26962 (tag!4094 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) (inv!26965 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) e!1184676))))

(declare-fun b!1853568 () Bool)

(declare-fun e!1184678 () Bool)

(declare-fun tp!525728 () Bool)

(assert (=> b!1853568 (= e!1184678 (and e!1184675 tp!525728))))

(assert (=> b!1853180 (= tp!525405 e!1184678)))

(assert (= b!1853569 b!1853570))

(assert (= b!1853568 b!1853569))

(assert (= (and b!1853180 ((_ is Cons!20568) (t!172467 (t!172467 (t!172467 rules!865))))) b!1853568))

(declare-fun m!2280207 () Bool)

(assert (=> b!1853569 m!2280207))

(declare-fun m!2280209 () Bool)

(assert (=> b!1853569 m!2280209))

(declare-fun b!1853572 () Bool)

(declare-fun e!1184679 () Bool)

(declare-fun tp!525731 () Bool)

(declare-fun tp!525733 () Bool)

(assert (=> b!1853572 (= e!1184679 (and tp!525731 tp!525733))))

(declare-fun b!1853573 () Bool)

(declare-fun tp!525732 () Bool)

(assert (=> b!1853573 (= e!1184679 tp!525732)))

(declare-fun b!1853574 () Bool)

(declare-fun tp!525735 () Bool)

(declare-fun tp!525734 () Bool)

(assert (=> b!1853574 (= e!1184679 (and tp!525735 tp!525734))))

(assert (=> b!1853177 (= tp!525399 e!1184679)))

(declare-fun b!1853571 () Bool)

(assert (=> b!1853571 (= e!1184679 tp_is_empty!8507)))

(assert (= (and b!1853177 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853571))

(assert (= (and b!1853177 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853572))

(assert (= (and b!1853177 ((_ is Star!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853573))

(assert (= (and b!1853177 ((_ is Union!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853574))

(declare-fun b!1853576 () Bool)

(declare-fun e!1184680 () Bool)

(declare-fun tp!525736 () Bool)

(declare-fun tp!525738 () Bool)

(assert (=> b!1853576 (= e!1184680 (and tp!525736 tp!525738))))

(declare-fun b!1853577 () Bool)

(declare-fun tp!525737 () Bool)

(assert (=> b!1853577 (= e!1184680 tp!525737)))

(declare-fun b!1853578 () Bool)

(declare-fun tp!525740 () Bool)

(declare-fun tp!525739 () Bool)

(assert (=> b!1853578 (= e!1184680 (and tp!525740 tp!525739))))

(assert (=> b!1853177 (= tp!525401 e!1184680)))

(declare-fun b!1853575 () Bool)

(assert (=> b!1853575 (= e!1184680 tp_is_empty!8507)))

(assert (= (and b!1853177 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853575))

(assert (= (and b!1853177 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853576))

(assert (= (and b!1853177 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853577))

(assert (= (and b!1853177 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865)))))) b!1853578))

(declare-fun b_lambda!61449 () Bool)

(assert (= b_lambda!61447 (or d!566319 b_lambda!61449)))

(declare-fun bs!410536 () Bool)

(declare-fun d!566407 () Bool)

(assert (= bs!410536 (and d!566407 d!566319)))

(assert (=> bs!410536 (= (dynLambda!10184 lambda!73268 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (=> bs!410536 m!2280159))

(assert (=> b!1853436 d!566407))

(declare-fun b_lambda!61451 () Bool)

(assert (= b_lambda!61445 (or d!566323 b_lambda!61451)))

(declare-fun bs!410537 () Bool)

(declare-fun d!566409 () Bool)

(assert (= bs!410537 (and d!566409 d!566323)))

(assert (=> bs!410537 (= (dynLambda!10183 lambda!73274 (h!25969 rules!865)) (ruleValid!1141 Lexer!3300 (h!25969 rules!865)))))

(assert (=> bs!410537 m!2280167))

(assert (=> b!1853430 d!566409))

(check-sat b_and!144153 (not b!1853520) (not b!1853451) (not b!1853516) (not b!1853448) (not b!1853532) (not b!1853482) (not b!1853437) (not b!1853450) (not b!1853464) (not b!1853254) (not d!566387) (not b!1853479) (not b!1853539) (not b!1853515) (not b_lambda!61449) (not b!1853455) (not b!1853252) (not b!1853462) (not b!1853499) (not b!1853577) (not b!1853417) (not b!1853251) (not b!1853535) b_and!144155 (not b!1853424) (not b!1853483) (not b_next!52591) (not b!1853249) (not b!1853569) (not b!1853538) (not b!1853500) (not d!566355) (not b!1853458) (not b!1853415) (not d!566383) (not b!1853447) (not d!566369) (not b!1853466) (not b!1853416) (not b!1853565) b_and!144139 (not b!1853439) (not b!1853446) (not b!1853247) (not b!1853528) (not b!1853542) (not b!1853568) (not d!566391) (not b!1853518) (not b_next!52615) (not b!1853492) (not b!1853476) (not b!1853508) (not b!1853502) (not b!1853459) (not b!1853468) (not b!1853480) (not b!1853452) (not b!1853472) (not b!1853563) (not b!1853551) (not b!1853504) (not b!1853527) (not b_next!52599) (not b!1853524) (not b!1853431) b_and!144131 (not b!1853498) b_and!144147 (not b!1853486) (not b!1853553) (not b!1853484) b_and!144145 (not b!1853574) (not b!1853494) (not b!1853454) (not b!1853534) (not b!1853496) (not d!566403) (not b!1853544) (not b!1853559) (not b!1853578) (not b!1853463) (not b!1853474) (not b!1853438) (not b!1853511) (not b!1853514) (not b!1853507) (not b!1853510) (not b!1853456) (not b!1853425) (not d!566367) (not b!1853547) (not b!1853248) (not b!1853567) (not b!1853478) (not d!566397) (not b!1853523) (not b!1853530) (not b!1853522) (not b!1853475) (not b!1853572) (not b!1853495) (not d!566393) (not b!1853573) (not b_next!52601) (not b!1853531) (not bs!410537) (not b!1853548) (not b!1853503) (not b_next!52593) (not d!566399) (not b!1853558) (not b!1853440) (not b_next!52607) b_and!144137 (not b!1853488) (not b!1853250) (not b!1853550) (not b!1853253) (not b!1853471) (not b!1853543) (not b!1853562) (not b!1853540) (not b!1853490) b_and!144129 (not b!1853470) (not b_next!52617) (not b!1853561) (not b!1853536) (not b!1853519) (not b!1853467) (not b!1853460) (not bs!410536) (not b!1853576) (not b!1853526) (not d!566381) (not b_lambda!61451) (not b!1853506) (not b!1853557) (not b!1853552) (not b!1853512) (not b!1853566) (not b!1853491) (not b!1853487) (not b_next!52609) (not b!1853546) tp_is_empty!8507 (not d!566365))
(check-sat b_and!144155 (not b_next!52591) b_and!144139 (not b_next!52615) (not b_next!52599) (not b_next!52601) (not b_next!52593) b_and!144153 (not b_next!52609) b_and!144131 b_and!144147 b_and!144145 (not b_next!52607) b_and!144137 (not b_next!52617) b_and!144129)
(get-model)

(declare-fun bs!410538 () Bool)

(declare-fun d!566411 () Bool)

(assert (= bs!410538 (and d!566411 d!566321)))

(declare-fun lambda!73293 () Int)

(assert (=> bs!410538 (= (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 rules!865)))) (= lambda!73293 lambda!73271))))

(declare-fun bs!410539 () Bool)

(assert (= bs!410539 (and d!566411 d!566399)))

(assert (=> bs!410539 (= (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865))))) (= lambda!73293 lambda!73292))))

(assert (=> d!566411 true))

(assert (=> d!566411 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) (dynLambda!10180 order!13219 lambda!73293))))

(assert (=> d!566411 (= (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) (Forall2!593 lambda!73293))))

(declare-fun bs!410540 () Bool)

(assert (= bs!410540 d!566411))

(declare-fun m!2280211 () Bool)

(assert (=> bs!410540 m!2280211))

(assert (=> b!1853438 d!566411))

(declare-fun b!1853590 () Bool)

(declare-fun e!1184686 () List!20647)

(declare-fun ++!5556 (List!20647 List!20647) List!20647)

(assert (=> b!1853590 (= e!1184686 (++!5556 (list!8343 (left!16500 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) (list!8343 (right!16830 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(declare-fun b!1853589 () Bool)

(declare-fun list!8344 (IArray!13621) List!20647)

(assert (=> b!1853589 (= e!1184686 (list!8344 (xs!9684 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853588 () Bool)

(declare-fun e!1184685 () List!20647)

(assert (=> b!1853588 (= e!1184685 e!1184686)))

(declare-fun c!302265 () Bool)

(assert (=> b!1853588 (= c!302265 ((_ is Leaf!9959) (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun d!566413 () Bool)

(declare-fun c!302264 () Bool)

(assert (=> d!566413 (= c!302264 ((_ is Empty!6808) (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566413 (= (list!8343 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) e!1184685)))

(declare-fun b!1853587 () Bool)

(assert (=> b!1853587 (= e!1184685 Nil!20569)))

(assert (= (and d!566413 c!302264) b!1853587))

(assert (= (and d!566413 (not c!302264)) b!1853588))

(assert (= (and b!1853588 c!302265) b!1853589))

(assert (= (and b!1853588 (not c!302265)) b!1853590))

(declare-fun m!2280213 () Bool)

(assert (=> b!1853590 m!2280213))

(declare-fun m!2280215 () Bool)

(assert (=> b!1853590 m!2280215))

(assert (=> b!1853590 m!2280213))

(assert (=> b!1853590 m!2280215))

(declare-fun m!2280217 () Bool)

(assert (=> b!1853590 m!2280217))

(declare-fun m!2280219 () Bool)

(assert (=> b!1853589 m!2280219))

(assert (=> d!566381 d!566413))

(declare-fun d!566415 () Bool)

(declare-fun res!831573 () Bool)

(declare-fun e!1184687 () Bool)

(assert (=> d!566415 (=> res!831573 e!1184687)))

(assert (=> d!566415 (= res!831573 ((_ is Nil!20568) (t!172467 (t!172467 rules!865))))))

(assert (=> d!566415 (= (noDuplicateTag!1402 Lexer!3300 (t!172467 (t!172467 rules!865)) (Cons!20571 (tag!4094 (h!25969 (t!172467 rules!865))) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571))) e!1184687)))

(declare-fun b!1853591 () Bool)

(declare-fun e!1184688 () Bool)

(assert (=> b!1853591 (= e!1184687 e!1184688)))

(declare-fun res!831574 () Bool)

(assert (=> b!1853591 (=> (not res!831574) (not e!1184688))))

(assert (=> b!1853591 (= res!831574 (not (contains!3791 (Cons!20571 (tag!4094 (h!25969 (t!172467 rules!865))) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)) (tag!4094 (h!25969 (t!172467 (t!172467 rules!865)))))))))

(declare-fun b!1853592 () Bool)

(assert (=> b!1853592 (= e!1184688 (noDuplicateTag!1402 Lexer!3300 (t!172467 (t!172467 (t!172467 rules!865))) (Cons!20571 (tag!4094 (h!25969 (t!172467 (t!172467 rules!865)))) (Cons!20571 (tag!4094 (h!25969 (t!172467 rules!865))) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)))))))

(assert (= (and d!566415 (not res!831573)) b!1853591))

(assert (= (and b!1853591 res!831574) b!1853592))

(declare-fun m!2280221 () Bool)

(assert (=> b!1853591 m!2280221))

(declare-fun m!2280223 () Bool)

(assert (=> b!1853592 m!2280223))

(assert (=> b!1853440 d!566415))

(declare-fun d!566417 () Bool)

(declare-fun lt!716597 () Bool)

(assert (=> d!566417 (= lt!716597 (select (content!3053 (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)) (tag!4094 (h!25969 (t!172467 rules!865)))))))

(declare-fun e!1184689 () Bool)

(assert (=> d!566417 (= lt!716597 e!1184689)))

(declare-fun res!831576 () Bool)

(assert (=> d!566417 (=> (not res!831576) (not e!1184689))))

(assert (=> d!566417 (= res!831576 ((_ is Cons!20571) (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)))))

(assert (=> d!566417 (= (contains!3791 (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571) (tag!4094 (h!25969 (t!172467 rules!865)))) lt!716597)))

(declare-fun b!1853593 () Bool)

(declare-fun e!1184690 () Bool)

(assert (=> b!1853593 (= e!1184689 e!1184690)))

(declare-fun res!831575 () Bool)

(assert (=> b!1853593 (=> res!831575 e!1184690)))

(assert (=> b!1853593 (= res!831575 (= (h!25972 (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)) (tag!4094 (h!25969 (t!172467 rules!865)))))))

(declare-fun b!1853594 () Bool)

(assert (=> b!1853594 (= e!1184690 (contains!3791 (t!172470 (Cons!20571 (tag!4094 (h!25969 rules!865)) Nil!20571)) (tag!4094 (h!25969 (t!172467 rules!865)))))))

(assert (= (and d!566417 res!831576) b!1853593))

(assert (= (and b!1853593 (not res!831575)) b!1853594))

(declare-fun m!2280225 () Bool)

(assert (=> d!566417 m!2280225))

(declare-fun m!2280227 () Bool)

(assert (=> d!566417 m!2280227))

(declare-fun m!2280229 () Bool)

(assert (=> b!1853594 m!2280229))

(assert (=> b!1853439 d!566417))

(declare-fun bs!410541 () Bool)

(declare-fun d!566419 () Bool)

(assert (= bs!410541 (and d!566419 d!566299)))

(declare-fun lambda!73294 () Int)

(assert (=> bs!410541 (= (and (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toChars!5114 (transformation!3680 (h!25969 rules!865)))) (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 rules!865))))) (= lambda!73294 lambda!73263))))

(declare-fun bs!410542 () Bool)

(assert (= bs!410542 (and d!566419 d!566365)))

(assert (=> bs!410542 (= (and (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865))))) (= (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 rules!865)))))) (= lambda!73294 lambda!73283))))

(assert (=> d!566419 true))

(assert (=> d!566419 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) (dynLambda!10177 order!13213 lambda!73294))))

(assert (=> d!566419 true))

(assert (=> d!566419 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) (dynLambda!10177 order!13213 lambda!73294))))

(assert (=> d!566419 (= (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865)))))) (Forall!962 lambda!73294))))

(declare-fun bs!410543 () Bool)

(assert (= bs!410543 d!566419))

(declare-fun m!2280231 () Bool)

(assert (=> bs!410543 m!2280231))

(assert (=> d!566397 d!566419))

(declare-fun d!566421 () Bool)

(assert (=> d!566421 (= (Forall2!593 lambda!73292) (choose!11662 lambda!73292))))

(declare-fun bs!410544 () Bool)

(assert (= bs!410544 d!566421))

(declare-fun m!2280233 () Bool)

(assert (=> bs!410544 m!2280233))

(assert (=> d!566399 d!566421))

(declare-fun bs!410545 () Bool)

(declare-fun d!566423 () Bool)

(assert (= bs!410545 (and d!566423 d!566323)))

(declare-fun lambda!73295 () Int)

(assert (=> bs!410545 (= lambda!73295 lambda!73274)))

(declare-fun bs!410546 () Bool)

(assert (= bs!410546 (and d!566423 d!566383)))

(assert (=> bs!410546 (= lambda!73295 lambda!73290)))

(declare-fun bs!410547 () Bool)

(assert (= bs!410547 (and d!566423 d!566393)))

(assert (=> bs!410547 (= lambda!73295 lambda!73291)))

(assert (=> d!566423 true))

(declare-fun lt!716598 () Bool)

(assert (=> d!566423 (= lt!716598 (forall!4399 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lambda!73295))))

(declare-fun e!1184691 () Bool)

(assert (=> d!566423 (= lt!716598 e!1184691)))

(declare-fun res!831578 () Bool)

(assert (=> d!566423 (=> res!831578 e!1184691)))

(assert (=> d!566423 (= res!831578 (not ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566423 (= (rulesValidInductive!1268 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716598)))

(declare-fun b!1853595 () Bool)

(declare-fun e!1184692 () Bool)

(assert (=> b!1853595 (= e!1184691 e!1184692)))

(declare-fun res!831577 () Bool)

(assert (=> b!1853595 (=> (not res!831577) (not e!1184692))))

(assert (=> b!1853595 (= res!831577 (ruleValid!1141 Lexer!3300 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853596 () Bool)

(assert (=> b!1853596 (= e!1184692 (rulesValidInductive!1268 Lexer!3300 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (= (and d!566423 (not res!831578)) b!1853595))

(assert (= (and b!1853595 res!831577) b!1853596))

(declare-fun m!2280235 () Bool)

(assert (=> d!566423 m!2280235))

(declare-fun m!2280237 () Bool)

(assert (=> b!1853595 m!2280237))

(declare-fun m!2280239 () Bool)

(assert (=> b!1853596 m!2280239))

(assert (=> d!566393 d!566423))

(declare-fun d!566425 () Bool)

(declare-fun res!831579 () Bool)

(declare-fun e!1184693 () Bool)

(assert (=> d!566425 (=> res!831579 e!1184693)))

(assert (=> d!566425 (= res!831579 ((_ is Nil!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566425 (= (forall!4399 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lambda!73291) e!1184693)))

(declare-fun b!1853597 () Bool)

(declare-fun e!1184694 () Bool)

(assert (=> b!1853597 (= e!1184693 e!1184694)))

(declare-fun res!831580 () Bool)

(assert (=> b!1853597 (=> (not res!831580) (not e!1184694))))

(assert (=> b!1853597 (= res!831580 (dynLambda!10183 lambda!73291 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853598 () Bool)

(assert (=> b!1853598 (= e!1184694 (forall!4399 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73291))))

(assert (= (and d!566425 (not res!831579)) b!1853597))

(assert (= (and b!1853597 res!831580) b!1853598))

(declare-fun b_lambda!61453 () Bool)

(assert (=> (not b_lambda!61453) (not b!1853597)))

(declare-fun m!2280241 () Bool)

(assert (=> b!1853597 m!2280241))

(declare-fun m!2280243 () Bool)

(assert (=> b!1853598 m!2280243))

(assert (=> d!566393 d!566425))

(declare-fun bs!410548 () Bool)

(declare-fun d!566427 () Bool)

(assert (= bs!410548 (and d!566427 d!566319)))

(declare-fun lambda!73296 () Int)

(assert (=> bs!410548 (= lambda!73296 lambda!73268)))

(declare-fun bs!410549 () Bool)

(assert (= bs!410549 (and d!566427 d!566369)))

(assert (=> bs!410549 (= lambda!73296 lambda!73287)))

(declare-fun b!1853603 () Bool)

(declare-fun e!1184699 () Bool)

(assert (=> b!1853603 (= e!1184699 true)))

(declare-fun b!1853602 () Bool)

(declare-fun e!1184698 () Bool)

(assert (=> b!1853602 (= e!1184698 e!1184699)))

(declare-fun b!1853601 () Bool)

(declare-fun e!1184697 () Bool)

(assert (=> b!1853601 (= e!1184697 e!1184698)))

(assert (=> d!566427 e!1184697))

(assert (= b!1853602 b!1853603))

(assert (= b!1853601 b!1853602))

(assert (= (and d!566427 ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) b!1853601))

(assert (=> b!1853603 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73296))))

(assert (=> b!1853603 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73296))))

(assert (=> d!566427 true))

(declare-fun lt!716599 () Bool)

(assert (=> d!566427 (= lt!716599 (forall!4397 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73296))))

(declare-fun e!1184695 () Bool)

(assert (=> d!566427 (= lt!716599 e!1184695)))

(declare-fun res!831581 () Bool)

(assert (=> d!566427 (=> res!831581 e!1184695)))

(assert (=> d!566427 (= res!831581 (not ((_ is Cons!20569) (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(assert (=> d!566427 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566427 (= (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) lt!716599)))

(declare-fun b!1853599 () Bool)

(declare-fun e!1184696 () Bool)

(assert (=> b!1853599 (= e!1184695 e!1184696)))

(declare-fun res!831582 () Bool)

(assert (=> b!1853599 (=> (not res!831582) (not e!1184696))))

(assert (=> b!1853599 (= res!831582 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(declare-fun b!1853600 () Bool)

(assert (=> b!1853600 (= e!1184696 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (t!172468 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(assert (= (and d!566427 (not res!831581)) b!1853599))

(assert (= (and b!1853599 res!831582) b!1853600))

(declare-fun m!2280245 () Bool)

(assert (=> d!566427 m!2280245))

(assert (=> d!566427 m!2279859))

(declare-fun m!2280247 () Bool)

(assert (=> b!1853599 m!2280247))

(declare-fun m!2280249 () Bool)

(assert (=> b!1853600 m!2280249))

(assert (=> b!1853416 d!566427))

(declare-fun d!566429 () Bool)

(assert (=> d!566429 (= (content!3053 Nil!20571) ((as const (Array String!23570 Bool)) false))))

(assert (=> d!566403 d!566429))

(declare-fun d!566431 () Bool)

(declare-fun lt!716604 () Bool)

(declare-fun e!1184705 () Bool)

(assert (=> d!566431 (= lt!716604 e!1184705)))

(declare-fun res!831593 () Bool)

(assert (=> d!566431 (=> (not res!831593) (not e!1184705))))

(declare-datatypes ((tuple2!19824 0))(
  ( (tuple2!19825 (_1!11339 BalanceConc!13544) (_2!11339 BalanceConc!13542)) )
))
(declare-fun lex!1501 (LexerInterface!3302 List!20646 BalanceConc!13542) tuple2!19824)

(declare-fun print!1430 (LexerInterface!3302 BalanceConc!13544) BalanceConc!13542)

(declare-fun singletonSeq!1802 (Token!6912) BalanceConc!13544)

(assert (=> d!566431 (= res!831593 (= (list!8341 (_1!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))) (list!8341 (singletonSeq!1802 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))))

(declare-fun e!1184704 () Bool)

(assert (=> d!566431 (= lt!716604 e!1184704)))

(declare-fun res!831594 () Bool)

(assert (=> d!566431 (=> (not res!831594) (not e!1184704))))

(declare-fun lt!716605 () tuple2!19824)

(assert (=> d!566431 (= res!831594 (= (size!16248 (_1!11339 lt!716605)) 1))))

(assert (=> d!566431 (= lt!716605 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))))

(assert (=> d!566431 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566431 (= (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) lt!716604)))

(declare-fun b!1853610 () Bool)

(declare-fun res!831592 () Bool)

(assert (=> b!1853610 (=> (not res!831592) (not e!1184704))))

(assert (=> b!1853610 (= res!831592 (= (apply!5465 (_1!11339 lt!716605) 0) (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853611 () Bool)

(declare-fun isEmpty!12820 (BalanceConc!13542) Bool)

(assert (=> b!1853611 (= e!1184704 (isEmpty!12820 (_2!11339 lt!716605)))))

(declare-fun b!1853612 () Bool)

(assert (=> b!1853612 (= e!1184705 (isEmpty!12820 (_2!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))))))

(assert (= (and d!566431 res!831594) b!1853610))

(assert (= (and b!1853610 res!831592) b!1853611))

(assert (= (and d!566431 res!831593) b!1853612))

(assert (=> d!566431 m!2279859))

(declare-fun m!2280251 () Bool)

(assert (=> d!566431 m!2280251))

(declare-fun m!2280253 () Bool)

(assert (=> d!566431 m!2280253))

(declare-fun m!2280255 () Bool)

(assert (=> d!566431 m!2280255))

(assert (=> d!566431 m!2280251))

(declare-fun m!2280257 () Bool)

(assert (=> d!566431 m!2280257))

(declare-fun m!2280259 () Bool)

(assert (=> d!566431 m!2280259))

(declare-fun m!2280261 () Bool)

(assert (=> d!566431 m!2280261))

(assert (=> d!566431 m!2280251))

(assert (=> d!566431 m!2280253))

(declare-fun m!2280263 () Bool)

(assert (=> b!1853610 m!2280263))

(declare-fun m!2280265 () Bool)

(assert (=> b!1853611 m!2280265))

(assert (=> b!1853612 m!2280251))

(assert (=> b!1853612 m!2280251))

(assert (=> b!1853612 m!2280253))

(assert (=> b!1853612 m!2280253))

(assert (=> b!1853612 m!2280255))

(declare-fun m!2280267 () Bool)

(assert (=> b!1853612 m!2280267))

(assert (=> b!1853415 d!566431))

(declare-fun d!566435 () Bool)

(declare-fun res!831595 () Bool)

(declare-fun e!1184706 () Bool)

(assert (=> d!566435 (=> res!831595 e!1184706)))

(assert (=> d!566435 (= res!831595 ((_ is Nil!20568) (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566435 (= (noDuplicateTag!1402 Lexer!3300 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (Cons!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) Nil!20571)) e!1184706)))

(declare-fun b!1853613 () Bool)

(declare-fun e!1184707 () Bool)

(assert (=> b!1853613 (= e!1184706 e!1184707)))

(declare-fun res!831596 () Bool)

(assert (=> b!1853613 (=> (not res!831596) (not e!1184707))))

(assert (=> b!1853613 (= res!831596 (not (contains!3791 (Cons!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) Nil!20571) (tag!4094 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))))

(declare-fun b!1853614 () Bool)

(assert (=> b!1853614 (= e!1184707 (noDuplicateTag!1402 Lexer!3300 (t!172467 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) (Cons!20571 (tag!4094 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) (Cons!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) Nil!20571))))))

(assert (= (and d!566435 (not res!831595)) b!1853613))

(assert (= (and b!1853613 res!831596) b!1853614))

(declare-fun m!2280269 () Bool)

(assert (=> b!1853613 m!2280269))

(declare-fun m!2280271 () Bool)

(assert (=> b!1853614 m!2280271))

(assert (=> b!1853448 d!566435))

(assert (=> bs!410536 d!566431))

(declare-fun d!566437 () Bool)

(declare-fun lt!716606 () Bool)

(assert (=> d!566437 (= lt!716606 (select (content!3053 Nil!20571) (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun e!1184708 () Bool)

(assert (=> d!566437 (= lt!716606 e!1184708)))

(declare-fun res!831598 () Bool)

(assert (=> d!566437 (=> (not res!831598) (not e!1184708))))

(assert (=> d!566437 (= res!831598 ((_ is Cons!20571) Nil!20571))))

(assert (=> d!566437 (= (contains!3791 Nil!20571 (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) lt!716606)))

(declare-fun b!1853615 () Bool)

(declare-fun e!1184709 () Bool)

(assert (=> b!1853615 (= e!1184708 e!1184709)))

(declare-fun res!831597 () Bool)

(assert (=> b!1853615 (=> res!831597 e!1184709)))

(assert (=> b!1853615 (= res!831597 (= (h!25972 Nil!20571) (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853616 () Bool)

(assert (=> b!1853616 (= e!1184709 (contains!3791 (t!172470 Nil!20571) (tag!4094 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (= (and d!566437 res!831598) b!1853615))

(assert (= (and b!1853615 (not res!831597)) b!1853616))

(assert (=> d!566437 m!2280197))

(declare-fun m!2280273 () Bool)

(assert (=> d!566437 m!2280273))

(declare-fun m!2280275 () Bool)

(assert (=> b!1853616 m!2280275))

(assert (=> b!1853447 d!566437))

(declare-fun d!566439 () Bool)

(declare-fun res!831599 () Bool)

(declare-fun e!1184710 () Bool)

(assert (=> d!566439 (=> res!831599 e!1184710)))

(assert (=> d!566439 (= res!831599 ((_ is Nil!20569) (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (=> d!566439 (= (forall!4397 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268) e!1184710)))

(declare-fun b!1853617 () Bool)

(declare-fun e!1184711 () Bool)

(assert (=> b!1853617 (= e!1184710 e!1184711)))

(declare-fun res!831600 () Bool)

(assert (=> b!1853617 (=> (not res!831600) (not e!1184711))))

(assert (=> b!1853617 (= res!831600 (dynLambda!10184 lambda!73268 (h!25970 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(declare-fun b!1853618 () Bool)

(assert (=> b!1853618 (= e!1184711 (forall!4397 (t!172468 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) lambda!73268))))

(assert (= (and d!566439 (not res!831599)) b!1853617))

(assert (= (and b!1853617 res!831600) b!1853618))

(declare-fun b_lambda!61455 () Bool)

(assert (=> (not b_lambda!61455) (not b!1853617)))

(declare-fun m!2280277 () Bool)

(assert (=> b!1853617 m!2280277))

(declare-fun m!2280279 () Bool)

(assert (=> b!1853618 m!2280279))

(assert (=> b!1853437 d!566439))

(declare-fun d!566441 () Bool)

(declare-fun res!831601 () Bool)

(declare-fun e!1184712 () Bool)

(assert (=> d!566441 (=> res!831601 e!1184712)))

(assert (=> d!566441 (= res!831601 ((_ is Nil!20569) (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566441 (= (forall!4397 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73287) e!1184712)))

(declare-fun b!1853619 () Bool)

(declare-fun e!1184713 () Bool)

(assert (=> b!1853619 (= e!1184712 e!1184713)))

(declare-fun res!831602 () Bool)

(assert (=> b!1853619 (=> (not res!831602) (not e!1184713))))

(assert (=> b!1853619 (= res!831602 (dynLambda!10184 lambda!73287 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(declare-fun b!1853620 () Bool)

(assert (=> b!1853620 (= e!1184713 (forall!4397 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73287))))

(assert (= (and d!566441 (not res!831601)) b!1853619))

(assert (= (and b!1853619 res!831602) b!1853620))

(declare-fun b_lambda!61457 () Bool)

(assert (=> (not b_lambda!61457) (not b!1853619)))

(declare-fun m!2280281 () Bool)

(assert (=> b!1853619 m!2280281))

(declare-fun m!2280283 () Bool)

(assert (=> b!1853620 m!2280283))

(assert (=> d!566369 d!566441))

(assert (=> d!566369 d!566325))

(declare-fun d!566443 () Bool)

(assert (=> d!566443 (= (inv!26962 (tag!4094 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) (= (mod (str.len (value!115498 (tag!4094 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))) 2) 0))))

(assert (=> b!1853569 d!566443))

(declare-fun d!566445 () Bool)

(declare-fun res!831603 () Bool)

(declare-fun e!1184714 () Bool)

(assert (=> d!566445 (=> (not res!831603) (not e!1184714))))

(assert (=> d!566445 (= res!831603 (semiInverseModEq!1494 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))))))

(assert (=> d!566445 (= (inv!26965 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) e!1184714)))

(declare-fun b!1853621 () Bool)

(assert (=> b!1853621 (= e!1184714 (equivClasses!1427 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))))))

(assert (= (and d!566445 res!831603) b!1853621))

(declare-fun m!2280285 () Bool)

(assert (=> d!566445 m!2280285))

(declare-fun m!2280287 () Bool)

(assert (=> b!1853621 m!2280287))

(assert (=> b!1853569 d!566445))

(declare-fun d!566447 () Bool)

(assert (not d!566447))

(assert (=> b!1853446 d!566447))

(declare-fun d!566449 () Bool)

(declare-fun lt!716613 () Token!6912)

(assert (=> d!566449 (= lt!716613 (apply!5467 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (+ 0 1)))))

(declare-fun apply!5468 (Conc!6808 Int) Token!6912)

(assert (=> d!566449 (= lt!716613 (apply!5468 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (+ 0 1)))))

(declare-fun e!1184723 () Bool)

(assert (=> d!566449 e!1184723))

(declare-fun res!831610 () Bool)

(assert (=> d!566449 (=> (not res!831610) (not e!1184723))))

(assert (=> d!566449 (= res!831610 (<= 0 (+ 0 1)))))

(assert (=> d!566449 (= (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)) lt!716613)))

(declare-fun b!1853632 () Bool)

(assert (=> b!1853632 (= e!1184723 (< (+ 0 1) (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (= (and d!566449 res!831610) b!1853632))

(assert (=> d!566449 m!2279911))

(assert (=> d!566449 m!2279911))

(declare-fun m!2280289 () Bool)

(assert (=> d!566449 m!2280289))

(declare-fun m!2280291 () Bool)

(assert (=> d!566449 m!2280291))

(assert (=> b!1853632 m!2280003))

(assert (=> b!1853251 d!566449))

(declare-fun d!566451 () Bool)

(assert (=> d!566451 (= (head!4342 (drop!982 lt!716477 lt!716467)) (apply!5467 lt!716477 lt!716467))))

(declare-fun lt!716619 () Unit!35177)

(declare-fun choose!11663 (List!20647 Int) Unit!35177)

(assert (=> d!566451 (= lt!716619 (choose!11663 lt!716477 lt!716467))))

(declare-fun e!1184731 () Bool)

(assert (=> d!566451 e!1184731))

(declare-fun res!831617 () Bool)

(assert (=> d!566451 (=> (not res!831617) (not e!1184731))))

(assert (=> d!566451 (= res!831617 (>= lt!716467 0))))

(assert (=> d!566451 (= (lemmaDropApply!642 lt!716477 lt!716467) lt!716619)))

(declare-fun b!1853641 () Bool)

(assert (=> b!1853641 (= e!1184731 (< lt!716467 (size!16250 lt!716477)))))

(assert (= (and d!566451 res!831617) b!1853641))

(assert (=> d!566451 m!2280043))

(assert (=> d!566451 m!2280043))

(assert (=> d!566451 m!2280045))

(assert (=> d!566451 m!2280047))

(declare-fun m!2280307 () Bool)

(assert (=> d!566451 m!2280307))

(declare-fun m!2280309 () Bool)

(assert (=> b!1853641 m!2280309))

(assert (=> b!1853251 d!566451))

(declare-fun d!566455 () Bool)

(declare-fun lt!716620 () Bool)

(declare-fun e!1184733 () Bool)

(assert (=> d!566455 (= lt!716620 e!1184733)))

(declare-fun res!831619 () Bool)

(assert (=> d!566455 (=> (not res!831619) (not e!1184733))))

(assert (=> d!566455 (= res!831619 (= (list!8341 (_1!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716464))))) (list!8341 (singletonSeq!1802 lt!716464))))))

(declare-fun e!1184732 () Bool)

(assert (=> d!566455 (= lt!716620 e!1184732)))

(declare-fun res!831620 () Bool)

(assert (=> d!566455 (=> (not res!831620) (not e!1184732))))

(declare-fun lt!716621 () tuple2!19824)

(assert (=> d!566455 (= res!831620 (= (size!16248 (_1!11339 lt!716621)) 1))))

(assert (=> d!566455 (= lt!716621 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716464))))))

(assert (=> d!566455 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566455 (= (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716464) lt!716620)))

(declare-fun b!1853642 () Bool)

(declare-fun res!831618 () Bool)

(assert (=> b!1853642 (=> (not res!831618) (not e!1184732))))

(assert (=> b!1853642 (= res!831618 (= (apply!5465 (_1!11339 lt!716621) 0) lt!716464))))

(declare-fun b!1853643 () Bool)

(assert (=> b!1853643 (= e!1184732 (isEmpty!12820 (_2!11339 lt!716621)))))

(declare-fun b!1853644 () Bool)

(assert (=> b!1853644 (= e!1184733 (isEmpty!12820 (_2!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716464))))))))

(assert (= (and d!566455 res!831620) b!1853642))

(assert (= (and b!1853642 res!831618) b!1853643))

(assert (= (and d!566455 res!831619) b!1853644))

(assert (=> d!566455 m!2279859))

(declare-fun m!2280311 () Bool)

(assert (=> d!566455 m!2280311))

(declare-fun m!2280313 () Bool)

(assert (=> d!566455 m!2280313))

(declare-fun m!2280315 () Bool)

(assert (=> d!566455 m!2280315))

(assert (=> d!566455 m!2280311))

(declare-fun m!2280317 () Bool)

(assert (=> d!566455 m!2280317))

(declare-fun m!2280319 () Bool)

(assert (=> d!566455 m!2280319))

(declare-fun m!2280321 () Bool)

(assert (=> d!566455 m!2280321))

(assert (=> d!566455 m!2280311))

(assert (=> d!566455 m!2280313))

(declare-fun m!2280323 () Bool)

(assert (=> b!1853642 m!2280323))

(declare-fun m!2280325 () Bool)

(assert (=> b!1853643 m!2280325))

(assert (=> b!1853644 m!2280311))

(assert (=> b!1853644 m!2280311))

(assert (=> b!1853644 m!2280313))

(assert (=> b!1853644 m!2280313))

(assert (=> b!1853644 m!2280315))

(declare-fun m!2280331 () Bool)

(assert (=> b!1853644 m!2280331))

(assert (=> b!1853251 d!566455))

(declare-fun b!1853669 () Bool)

(declare-fun e!1184751 () Int)

(declare-fun call!115383 () Int)

(assert (=> b!1853669 (= e!1184751 (- call!115383 0))))

(declare-fun bm!115378 () Bool)

(assert (=> bm!115378 (= call!115383 (size!16250 lt!716470))))

(declare-fun d!566457 () Bool)

(declare-fun e!1184750 () Bool)

(assert (=> d!566457 e!1184750))

(declare-fun res!831629 () Bool)

(assert (=> d!566457 (=> (not res!831629) (not e!1184750))))

(declare-fun lt!716624 () List!20647)

(declare-fun content!3054 (List!20647) (InoxSet Token!6912))

(assert (=> d!566457 (= res!831629 (= ((_ map implies) (content!3054 lt!716624) (content!3054 lt!716470)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184752 () List!20647)

(assert (=> d!566457 (= lt!716624 e!1184752)))

(declare-fun c!302277 () Bool)

(assert (=> d!566457 (= c!302277 ((_ is Nil!20569) lt!716470))))

(assert (=> d!566457 (= (drop!982 lt!716470 0) lt!716624)))

(declare-fun b!1853670 () Bool)

(assert (=> b!1853670 (= e!1184752 Nil!20569)))

(declare-fun b!1853671 () Bool)

(declare-fun e!1184753 () Int)

(assert (=> b!1853671 (= e!1184753 e!1184751)))

(declare-fun c!302278 () Bool)

(assert (=> b!1853671 (= c!302278 (>= 0 call!115383))))

(declare-fun b!1853672 () Bool)

(declare-fun e!1184754 () List!20647)

(assert (=> b!1853672 (= e!1184752 e!1184754)))

(declare-fun c!302280 () Bool)

(assert (=> b!1853672 (= c!302280 (<= 0 0))))

(declare-fun b!1853673 () Bool)

(assert (=> b!1853673 (= e!1184750 (= (size!16250 lt!716624) e!1184753))))

(declare-fun c!302279 () Bool)

(assert (=> b!1853673 (= c!302279 (<= 0 0))))

(declare-fun b!1853674 () Bool)

(assert (=> b!1853674 (= e!1184753 call!115383)))

(declare-fun b!1853675 () Bool)

(assert (=> b!1853675 (= e!1184754 lt!716470)))

(declare-fun b!1853676 () Bool)

(assert (=> b!1853676 (= e!1184754 (drop!982 (t!172468 lt!716470) (- 0 1)))))

(declare-fun b!1853677 () Bool)

(assert (=> b!1853677 (= e!1184751 0)))

(assert (= (and d!566457 c!302277) b!1853670))

(assert (= (and d!566457 (not c!302277)) b!1853672))

(assert (= (and b!1853672 c!302280) b!1853675))

(assert (= (and b!1853672 (not c!302280)) b!1853676))

(assert (= (and d!566457 res!831629) b!1853673))

(assert (= (and b!1853673 c!302279) b!1853674))

(assert (= (and b!1853673 (not c!302279)) b!1853671))

(assert (= (and b!1853671 c!302278) b!1853677))

(assert (= (and b!1853671 (not c!302278)) b!1853669))

(assert (= (or b!1853674 b!1853671 b!1853669) bm!115378))

(declare-fun m!2280347 () Bool)

(assert (=> bm!115378 m!2280347))

(declare-fun m!2280349 () Bool)

(assert (=> d!566457 m!2280349))

(declare-fun m!2280351 () Bool)

(assert (=> d!566457 m!2280351))

(declare-fun m!2280353 () Bool)

(assert (=> b!1853673 m!2280353))

(declare-fun m!2280355 () Bool)

(assert (=> b!1853676 m!2280355))

(assert (=> b!1853251 d!566457))

(declare-fun d!566467 () Bool)

(assert (=> d!566467 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716464)))

(declare-fun lt!716630 () Unit!35177)

(declare-fun choose!11664 (LexerInterface!3302 List!20646 List!20647 Token!6912) Unit!35177)

(assert (=> d!566467 (= lt!716630 (choose!11664 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716458 lt!716464))))

(assert (=> d!566467 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566467 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716458 lt!716464) lt!716630)))

(declare-fun bs!410553 () Bool)

(assert (= bs!410553 d!566467))

(assert (=> bs!410553 m!2280027))

(declare-fun m!2280361 () Bool)

(assert (=> bs!410553 m!2280361))

(assert (=> bs!410553 m!2279859))

(assert (=> b!1853251 d!566467))

(declare-fun d!566473 () Bool)

(assert (=> d!566473 (= (tail!2797 (drop!982 lt!716470 0)) (t!172468 (drop!982 lt!716470 0)))))

(assert (=> b!1853251 d!566473))

(declare-fun d!566475 () Bool)

(assert (=> d!566475 (= (head!4342 (drop!982 lt!716477 lt!716467)) (h!25970 (drop!982 lt!716477 lt!716467)))))

(assert (=> b!1853251 d!566475))

(declare-fun d!566477 () Bool)

(declare-fun lt!716631 () Bool)

(declare-fun e!1184759 () Bool)

(assert (=> d!566477 (= lt!716631 e!1184759)))

(declare-fun res!831634 () Bool)

(assert (=> d!566477 (=> (not res!831634) (not e!1184759))))

(assert (=> d!566477 (= res!831634 (= (list!8341 (_1!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716465))))) (list!8341 (singletonSeq!1802 lt!716465))))))

(declare-fun e!1184758 () Bool)

(assert (=> d!566477 (= lt!716631 e!1184758)))

(declare-fun res!831635 () Bool)

(assert (=> d!566477 (=> (not res!831635) (not e!1184758))))

(declare-fun lt!716632 () tuple2!19824)

(assert (=> d!566477 (= res!831635 (= (size!16248 (_1!11339 lt!716632)) 1))))

(assert (=> d!566477 (= lt!716632 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716465))))))

(assert (=> d!566477 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566477 (= (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716465) lt!716631)))

(declare-fun b!1853681 () Bool)

(declare-fun res!831633 () Bool)

(assert (=> b!1853681 (=> (not res!831633) (not e!1184758))))

(assert (=> b!1853681 (= res!831633 (= (apply!5465 (_1!11339 lt!716632) 0) lt!716465))))

(declare-fun b!1853682 () Bool)

(assert (=> b!1853682 (= e!1184758 (isEmpty!12820 (_2!11339 lt!716632)))))

(declare-fun b!1853683 () Bool)

(assert (=> b!1853683 (= e!1184759 (isEmpty!12820 (_2!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 lt!716465))))))))

(assert (= (and d!566477 res!831635) b!1853681))

(assert (= (and b!1853681 res!831633) b!1853682))

(assert (= (and d!566477 res!831634) b!1853683))

(assert (=> d!566477 m!2279859))

(declare-fun m!2280363 () Bool)

(assert (=> d!566477 m!2280363))

(declare-fun m!2280365 () Bool)

(assert (=> d!566477 m!2280365))

(declare-fun m!2280367 () Bool)

(assert (=> d!566477 m!2280367))

(assert (=> d!566477 m!2280363))

(declare-fun m!2280369 () Bool)

(assert (=> d!566477 m!2280369))

(declare-fun m!2280371 () Bool)

(assert (=> d!566477 m!2280371))

(declare-fun m!2280373 () Bool)

(assert (=> d!566477 m!2280373))

(assert (=> d!566477 m!2280363))

(assert (=> d!566477 m!2280365))

(declare-fun m!2280375 () Bool)

(assert (=> b!1853681 m!2280375))

(declare-fun m!2280377 () Bool)

(assert (=> b!1853682 m!2280377))

(assert (=> b!1853683 m!2280363))

(assert (=> b!1853683 m!2280363))

(assert (=> b!1853683 m!2280365))

(assert (=> b!1853683 m!2280365))

(assert (=> b!1853683 m!2280367))

(declare-fun m!2280379 () Bool)

(assert (=> b!1853683 m!2280379))

(assert (=> b!1853251 d!566477))

(declare-fun d!566479 () Bool)

(declare-fun lt!716633 () Bool)

(declare-fun e!1184761 () Bool)

(assert (=> d!566479 (= lt!716633 e!1184761)))

(declare-fun res!831637 () Bool)

(assert (=> d!566479 (=> (not res!831637) (not e!1184761))))

(assert (=> d!566479 (= res!831637 (= (list!8341 (_1!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))) (list!8341 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))))

(declare-fun e!1184760 () Bool)

(assert (=> d!566479 (= lt!716633 e!1184760)))

(declare-fun res!831638 () Bool)

(assert (=> d!566479 (=> (not res!831638) (not e!1184760))))

(declare-fun lt!716634 () tuple2!19824)

(assert (=> d!566479 (= res!831638 (= (size!16248 (_1!11339 lt!716634)) 1))))

(assert (=> d!566479 (= lt!716634 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))))

(assert (=> d!566479 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566479 (= (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))) lt!716633)))

(declare-fun b!1853684 () Bool)

(declare-fun res!831636 () Bool)

(assert (=> b!1853684 (=> (not res!831636) (not e!1184760))))

(assert (=> b!1853684 (= res!831636 (= (apply!5465 (_1!11339 lt!716634) 0) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))

(declare-fun b!1853685 () Bool)

(assert (=> b!1853685 (= e!1184760 (isEmpty!12820 (_2!11339 lt!716634)))))

(declare-fun b!1853686 () Bool)

(assert (=> b!1853686 (= e!1184761 (isEmpty!12820 (_2!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))))))

(assert (= (and d!566479 res!831638) b!1853684))

(assert (= (and b!1853684 res!831636) b!1853685))

(assert (= (and d!566479 res!831637) b!1853686))

(assert (=> d!566479 m!2279859))

(assert (=> d!566479 m!2280021))

(declare-fun m!2280381 () Bool)

(assert (=> d!566479 m!2280381))

(declare-fun m!2280383 () Bool)

(assert (=> d!566479 m!2280383))

(declare-fun m!2280385 () Bool)

(assert (=> d!566479 m!2280385))

(assert (=> d!566479 m!2280381))

(declare-fun m!2280387 () Bool)

(assert (=> d!566479 m!2280387))

(declare-fun m!2280389 () Bool)

(assert (=> d!566479 m!2280389))

(declare-fun m!2280391 () Bool)

(assert (=> d!566479 m!2280391))

(assert (=> d!566479 m!2280381))

(assert (=> d!566479 m!2280383))

(declare-fun m!2280393 () Bool)

(assert (=> b!1853684 m!2280393))

(declare-fun m!2280395 () Bool)

(assert (=> b!1853685 m!2280395))

(assert (=> b!1853686 m!2280021))

(assert (=> b!1853686 m!2280381))

(assert (=> b!1853686 m!2280381))

(assert (=> b!1853686 m!2280383))

(assert (=> b!1853686 m!2280383))

(assert (=> b!1853686 m!2280385))

(declare-fun m!2280397 () Bool)

(assert (=> b!1853686 m!2280397))

(assert (=> b!1853251 d!566479))

(declare-fun d!566481 () Bool)

(assert (=> d!566481 (= (tail!2797 (drop!982 lt!716456 lt!716452)) (drop!982 lt!716456 (+ lt!716452 1)))))

(declare-fun lt!716637 () Unit!35177)

(declare-fun choose!11665 (List!20647 Int) Unit!35177)

(assert (=> d!566481 (= lt!716637 (choose!11665 lt!716456 lt!716452))))

(declare-fun e!1184764 () Bool)

(assert (=> d!566481 e!1184764))

(declare-fun res!831641 () Bool)

(assert (=> d!566481 (=> (not res!831641) (not e!1184764))))

(assert (=> d!566481 (= res!831641 (>= lt!716452 0))))

(assert (=> d!566481 (= (lemmaDropTail!622 lt!716456 lt!716452) lt!716637)))

(declare-fun b!1853689 () Bool)

(assert (=> b!1853689 (= e!1184764 (< lt!716452 (size!16250 lt!716456)))))

(assert (= (and d!566481 res!831641) b!1853689))

(assert (=> d!566481 m!2280029))

(assert (=> d!566481 m!2280029))

(assert (=> d!566481 m!2280031))

(assert (=> d!566481 m!2280057))

(declare-fun m!2280399 () Bool)

(assert (=> d!566481 m!2280399))

(declare-fun m!2280401 () Bool)

(assert (=> b!1853689 m!2280401))

(assert (=> b!1853251 d!566481))

(assert (=> b!1853251 d!566381))

(declare-fun b!1853690 () Bool)

(declare-fun e!1184766 () Int)

(declare-fun call!115384 () Int)

(assert (=> b!1853690 (= e!1184766 (- call!115384 0))))

(declare-fun bm!115379 () Bool)

(assert (=> bm!115379 (= call!115384 (size!16250 lt!716469))))

(declare-fun d!566483 () Bool)

(declare-fun e!1184765 () Bool)

(assert (=> d!566483 e!1184765))

(declare-fun res!831642 () Bool)

(assert (=> d!566483 (=> (not res!831642) (not e!1184765))))

(declare-fun lt!716638 () List!20647)

(assert (=> d!566483 (= res!831642 (= ((_ map implies) (content!3054 lt!716638) (content!3054 lt!716469)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184767 () List!20647)

(assert (=> d!566483 (= lt!716638 e!1184767)))

(declare-fun c!302281 () Bool)

(assert (=> d!566483 (= c!302281 ((_ is Nil!20569) lt!716469))))

(assert (=> d!566483 (= (drop!982 lt!716469 0) lt!716638)))

(declare-fun b!1853691 () Bool)

(assert (=> b!1853691 (= e!1184767 Nil!20569)))

(declare-fun b!1853692 () Bool)

(declare-fun e!1184768 () Int)

(assert (=> b!1853692 (= e!1184768 e!1184766)))

(declare-fun c!302282 () Bool)

(assert (=> b!1853692 (= c!302282 (>= 0 call!115384))))

(declare-fun b!1853693 () Bool)

(declare-fun e!1184769 () List!20647)

(assert (=> b!1853693 (= e!1184767 e!1184769)))

(declare-fun c!302284 () Bool)

(assert (=> b!1853693 (= c!302284 (<= 0 0))))

(declare-fun b!1853694 () Bool)

(assert (=> b!1853694 (= e!1184765 (= (size!16250 lt!716638) e!1184768))))

(declare-fun c!302283 () Bool)

(assert (=> b!1853694 (= c!302283 (<= 0 0))))

(declare-fun b!1853695 () Bool)

(assert (=> b!1853695 (= e!1184768 call!115384)))

(declare-fun b!1853696 () Bool)

(assert (=> b!1853696 (= e!1184769 lt!716469)))

(declare-fun b!1853697 () Bool)

(assert (=> b!1853697 (= e!1184769 (drop!982 (t!172468 lt!716469) (- 0 1)))))

(declare-fun b!1853698 () Bool)

(assert (=> b!1853698 (= e!1184766 0)))

(assert (= (and d!566483 c!302281) b!1853691))

(assert (= (and d!566483 (not c!302281)) b!1853693))

(assert (= (and b!1853693 c!302284) b!1853696))

(assert (= (and b!1853693 (not c!302284)) b!1853697))

(assert (= (and d!566483 res!831642) b!1853694))

(assert (= (and b!1853694 c!302283) b!1853695))

(assert (= (and b!1853694 (not c!302283)) b!1853692))

(assert (= (and b!1853692 c!302282) b!1853698))

(assert (= (and b!1853692 (not c!302282)) b!1853690))

(assert (= (or b!1853695 b!1853692 b!1853690) bm!115379))

(declare-fun m!2280403 () Bool)

(assert (=> bm!115379 m!2280403))

(declare-fun m!2280405 () Bool)

(assert (=> d!566483 m!2280405))

(declare-fun m!2280407 () Bool)

(assert (=> d!566483 m!2280407))

(declare-fun m!2280409 () Bool)

(assert (=> b!1853694 m!2280409))

(declare-fun m!2280411 () Bool)

(assert (=> b!1853697 m!2280411))

(assert (=> b!1853251 d!566483))

(declare-fun d!566485 () Bool)

(assert (=> d!566485 (= (head!4342 (drop!982 lt!716469 0)) (h!25970 (drop!982 lt!716469 0)))))

(assert (=> b!1853251 d!566485))

(declare-fun d!566487 () Bool)

(assert (=> d!566487 (= (tail!2797 (drop!982 lt!716470 0)) (drop!982 lt!716470 (+ 0 1)))))

(declare-fun lt!716639 () Unit!35177)

(assert (=> d!566487 (= lt!716639 (choose!11665 lt!716470 0))))

(declare-fun e!1184770 () Bool)

(assert (=> d!566487 e!1184770))

(declare-fun res!831643 () Bool)

(assert (=> d!566487 (=> (not res!831643) (not e!1184770))))

(assert (=> d!566487 (= res!831643 (>= 0 0))))

(assert (=> d!566487 (= (lemmaDropTail!622 lt!716470 0) lt!716639)))

(declare-fun b!1853699 () Bool)

(assert (=> b!1853699 (= e!1184770 (< 0 (size!16250 lt!716470)))))

(assert (= (and d!566487 res!831643) b!1853699))

(assert (=> d!566487 m!2280039))

(assert (=> d!566487 m!2280039))

(assert (=> d!566487 m!2280041))

(assert (=> d!566487 m!2280035))

(declare-fun m!2280413 () Bool)

(assert (=> d!566487 m!2280413))

(assert (=> b!1853699 m!2280347))

(assert (=> b!1853251 d!566487))

(declare-fun d!566489 () Bool)

(assert (=> d!566489 (= (head!4342 (drop!982 lt!716469 0)) (apply!5467 lt!716469 0))))

(declare-fun lt!716640 () Unit!35177)

(assert (=> d!566489 (= lt!716640 (choose!11663 lt!716469 0))))

(declare-fun e!1184771 () Bool)

(assert (=> d!566489 e!1184771))

(declare-fun res!831644 () Bool)

(assert (=> d!566489 (=> (not res!831644) (not e!1184771))))

(assert (=> d!566489 (= res!831644 (>= 0 0))))

(assert (=> d!566489 (= (lemmaDropApply!642 lt!716469 0) lt!716640)))

(declare-fun b!1853700 () Bool)

(assert (=> b!1853700 (= e!1184771 (< 0 (size!16250 lt!716469)))))

(assert (= (and d!566489 res!831644) b!1853700))

(assert (=> d!566489 m!2280011))

(assert (=> d!566489 m!2280011))

(assert (=> d!566489 m!2280013))

(assert (=> d!566489 m!2280059))

(declare-fun m!2280415 () Bool)

(assert (=> d!566489 m!2280415))

(assert (=> b!1853700 m!2280403))

(assert (=> b!1853251 d!566489))

(declare-fun d!566491 () Bool)

(declare-fun lt!716641 () Bool)

(declare-fun e!1184773 () Bool)

(assert (=> d!566491 (= lt!716641 e!1184773)))

(declare-fun res!831646 () Bool)

(assert (=> d!566491 (=> (not res!831646) (not e!1184773))))

(assert (=> d!566491 (= res!831646 (= (list!8341 (_1!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))) (list!8341 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))))

(declare-fun e!1184772 () Bool)

(assert (=> d!566491 (= lt!716641 e!1184772)))

(declare-fun res!831647 () Bool)

(assert (=> d!566491 (=> (not res!831647) (not e!1184772))))

(declare-fun lt!716642 () tuple2!19824)

(assert (=> d!566491 (= res!831647 (= (size!16248 (_1!11339 lt!716642)) 1))))

(assert (=> d!566491 (= lt!716642 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))))

(assert (=> d!566491 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566491 (= (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)) lt!716641)))

(declare-fun b!1853701 () Bool)

(declare-fun res!831645 () Bool)

(assert (=> b!1853701 (=> (not res!831645) (not e!1184772))))

(assert (=> b!1853701 (= res!831645 (= (apply!5465 (_1!11339 lt!716642) 0) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))

(declare-fun b!1853702 () Bool)

(assert (=> b!1853702 (= e!1184772 (isEmpty!12820 (_2!11339 lt!716642)))))

(declare-fun b!1853703 () Bool)

(assert (=> b!1853703 (= e!1184773 (isEmpty!12820 (_2!11339 (lex!1501 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (print!1430 Lexer!3300 (singletonSeq!1802 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))))))

(assert (= (and d!566491 res!831647) b!1853701))

(assert (= (and b!1853701 res!831645) b!1853702))

(assert (= (and d!566491 res!831646) b!1853703))

(assert (=> d!566491 m!2279859))

(assert (=> d!566491 m!2280019))

(declare-fun m!2280417 () Bool)

(assert (=> d!566491 m!2280417))

(declare-fun m!2280419 () Bool)

(assert (=> d!566491 m!2280419))

(declare-fun m!2280421 () Bool)

(assert (=> d!566491 m!2280421))

(assert (=> d!566491 m!2280417))

(declare-fun m!2280423 () Bool)

(assert (=> d!566491 m!2280423))

(declare-fun m!2280425 () Bool)

(assert (=> d!566491 m!2280425))

(declare-fun m!2280427 () Bool)

(assert (=> d!566491 m!2280427))

(assert (=> d!566491 m!2280417))

(assert (=> d!566491 m!2280419))

(declare-fun m!2280429 () Bool)

(assert (=> b!1853701 m!2280429))

(declare-fun m!2280431 () Bool)

(assert (=> b!1853702 m!2280431))

(assert (=> b!1853703 m!2280019))

(assert (=> b!1853703 m!2280417))

(assert (=> b!1853703 m!2280417))

(assert (=> b!1853703 m!2280419))

(assert (=> b!1853703 m!2280419))

(assert (=> b!1853703 m!2280421))

(declare-fun m!2280433 () Bool)

(assert (=> b!1853703 m!2280433))

(assert (=> b!1853251 d!566491))

(declare-fun d!566493 () Bool)

(assert (=> d!566493 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716465)))

(declare-fun lt!716643 () Unit!35177)

(assert (=> d!566493 (= lt!716643 (choose!11664 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716457 lt!716465))))

(assert (=> d!566493 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566493 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716457 lt!716465) lt!716643)))

(declare-fun bs!410554 () Bool)

(assert (= bs!410554 d!566493))

(assert (=> bs!410554 m!2280009))

(declare-fun m!2280435 () Bool)

(assert (=> bs!410554 m!2280435))

(assert (=> bs!410554 m!2279859))

(assert (=> b!1853251 d!566493))

(declare-fun b!1853704 () Bool)

(declare-fun e!1184775 () Int)

(declare-fun call!115385 () Int)

(assert (=> b!1853704 (= e!1184775 (- call!115385 (+ lt!716452 1)))))

(declare-fun bm!115380 () Bool)

(assert (=> bm!115380 (= call!115385 (size!16250 lt!716456))))

(declare-fun d!566495 () Bool)

(declare-fun e!1184774 () Bool)

(assert (=> d!566495 e!1184774))

(declare-fun res!831648 () Bool)

(assert (=> d!566495 (=> (not res!831648) (not e!1184774))))

(declare-fun lt!716644 () List!20647)

(assert (=> d!566495 (= res!831648 (= ((_ map implies) (content!3054 lt!716644) (content!3054 lt!716456)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184776 () List!20647)

(assert (=> d!566495 (= lt!716644 e!1184776)))

(declare-fun c!302285 () Bool)

(assert (=> d!566495 (= c!302285 ((_ is Nil!20569) lt!716456))))

(assert (=> d!566495 (= (drop!982 lt!716456 (+ lt!716452 1)) lt!716644)))

(declare-fun b!1853705 () Bool)

(assert (=> b!1853705 (= e!1184776 Nil!20569)))

(declare-fun b!1853706 () Bool)

(declare-fun e!1184777 () Int)

(assert (=> b!1853706 (= e!1184777 e!1184775)))

(declare-fun c!302286 () Bool)

(assert (=> b!1853706 (= c!302286 (>= (+ lt!716452 1) call!115385))))

(declare-fun b!1853707 () Bool)

(declare-fun e!1184778 () List!20647)

(assert (=> b!1853707 (= e!1184776 e!1184778)))

(declare-fun c!302288 () Bool)

(assert (=> b!1853707 (= c!302288 (<= (+ lt!716452 1) 0))))

(declare-fun b!1853708 () Bool)

(assert (=> b!1853708 (= e!1184774 (= (size!16250 lt!716644) e!1184777))))

(declare-fun c!302287 () Bool)

(assert (=> b!1853708 (= c!302287 (<= (+ lt!716452 1) 0))))

(declare-fun b!1853709 () Bool)

(assert (=> b!1853709 (= e!1184777 call!115385)))

(declare-fun b!1853710 () Bool)

(assert (=> b!1853710 (= e!1184778 lt!716456)))

(declare-fun b!1853711 () Bool)

(assert (=> b!1853711 (= e!1184778 (drop!982 (t!172468 lt!716456) (- (+ lt!716452 1) 1)))))

(declare-fun b!1853712 () Bool)

(assert (=> b!1853712 (= e!1184775 0)))

(assert (= (and d!566495 c!302285) b!1853705))

(assert (= (and d!566495 (not c!302285)) b!1853707))

(assert (= (and b!1853707 c!302288) b!1853710))

(assert (= (and b!1853707 (not c!302288)) b!1853711))

(assert (= (and d!566495 res!831648) b!1853708))

(assert (= (and b!1853708 c!302287) b!1853709))

(assert (= (and b!1853708 (not c!302287)) b!1853706))

(assert (= (and b!1853706 c!302286) b!1853712))

(assert (= (and b!1853706 (not c!302286)) b!1853704))

(assert (= (or b!1853709 b!1853706 b!1853704) bm!115380))

(assert (=> bm!115380 m!2280401))

(declare-fun m!2280437 () Bool)

(assert (=> d!566495 m!2280437))

(declare-fun m!2280439 () Bool)

(assert (=> d!566495 m!2280439))

(declare-fun m!2280441 () Bool)

(assert (=> b!1853708 m!2280441))

(declare-fun m!2280443 () Bool)

(assert (=> b!1853711 m!2280443))

(assert (=> b!1853251 d!566495))

(declare-fun d!566497 () Bool)

(declare-fun lt!716645 () Token!6912)

(assert (=> d!566497 (= lt!716645 (apply!5467 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) 0))))

(assert (=> d!566497 (= lt!716645 (apply!5468 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) 0))))

(declare-fun e!1184779 () Bool)

(assert (=> d!566497 e!1184779))

(declare-fun res!831649 () Bool)

(assert (=> d!566497 (=> (not res!831649) (not e!1184779))))

(assert (=> d!566497 (= res!831649 (<= 0 0))))

(assert (=> d!566497 (= (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) lt!716645)))

(declare-fun b!1853713 () Bool)

(assert (=> b!1853713 (= e!1184779 (< 0 (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (= (and d!566497 res!831649) b!1853713))

(assert (=> d!566497 m!2279911))

(assert (=> d!566497 m!2279911))

(declare-fun m!2280445 () Bool)

(assert (=> d!566497 m!2280445))

(declare-fun m!2280447 () Bool)

(assert (=> d!566497 m!2280447))

(assert (=> b!1853713 m!2280003))

(assert (=> b!1853251 d!566497))

(declare-fun d!566499 () Bool)

(assert (=> d!566499 (= (tail!2797 (drop!982 lt!716456 lt!716452)) (t!172468 (drop!982 lt!716456 lt!716452)))))

(assert (=> b!1853251 d!566499))

(declare-fun d!566501 () Bool)

(declare-fun prefixMatchZipperSequence!710 (Regex!5043 BalanceConc!13542) Bool)

(declare-fun rulesRegex!970 (LexerInterface!3302 List!20646) Regex!5043)

(declare-fun ++!5557 (BalanceConc!13542 BalanceConc!13542) BalanceConc!13542)

(declare-fun singletonSeq!1804 (C!10236) BalanceConc!13542)

(declare-fun apply!5470 (BalanceConc!13542 Int) C!10236)

(assert (=> d!566501 (= (separableTokensPredicate!832 Lexer!3300 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (not (prefixMatchZipperSequence!710 (rulesRegex!970 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) (++!5557 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)) (singletonSeq!1804 (apply!5470 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))) 0))))))))

(declare-fun bs!410555 () Bool)

(assert (= bs!410555 d!566501))

(declare-fun m!2280467 () Bool)

(assert (=> bs!410555 m!2280467))

(declare-fun m!2280469 () Bool)

(assert (=> bs!410555 m!2280469))

(declare-fun m!2280471 () Bool)

(assert (=> bs!410555 m!2280471))

(declare-fun m!2280473 () Bool)

(assert (=> bs!410555 m!2280473))

(declare-fun m!2280475 () Bool)

(assert (=> bs!410555 m!2280475))

(assert (=> bs!410555 m!2280019))

(declare-fun m!2280477 () Bool)

(assert (=> bs!410555 m!2280477))

(assert (=> bs!410555 m!2280021))

(assert (=> bs!410555 m!2280015))

(assert (=> bs!410555 m!2280015))

(assert (=> bs!410555 m!2280467))

(assert (=> bs!410555 m!2280471))

(assert (=> bs!410555 m!2280477))

(assert (=> bs!410555 m!2280469))

(assert (=> bs!410555 m!2280473))

(assert (=> b!1853251 d!566501))

(declare-fun b!1853723 () Bool)

(declare-fun e!1184787 () Int)

(declare-fun call!115386 () Int)

(assert (=> b!1853723 (= e!1184787 (- call!115386 lt!716467))))

(declare-fun bm!115381 () Bool)

(assert (=> bm!115381 (= call!115386 (size!16250 lt!716477))))

(declare-fun d!566505 () Bool)

(declare-fun e!1184786 () Bool)

(assert (=> d!566505 e!1184786))

(declare-fun res!831659 () Bool)

(assert (=> d!566505 (=> (not res!831659) (not e!1184786))))

(declare-fun lt!716652 () List!20647)

(assert (=> d!566505 (= res!831659 (= ((_ map implies) (content!3054 lt!716652) (content!3054 lt!716477)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184788 () List!20647)

(assert (=> d!566505 (= lt!716652 e!1184788)))

(declare-fun c!302289 () Bool)

(assert (=> d!566505 (= c!302289 ((_ is Nil!20569) lt!716477))))

(assert (=> d!566505 (= (drop!982 lt!716477 lt!716467) lt!716652)))

(declare-fun b!1853724 () Bool)

(assert (=> b!1853724 (= e!1184788 Nil!20569)))

(declare-fun b!1853725 () Bool)

(declare-fun e!1184789 () Int)

(assert (=> b!1853725 (= e!1184789 e!1184787)))

(declare-fun c!302290 () Bool)

(assert (=> b!1853725 (= c!302290 (>= lt!716467 call!115386))))

(declare-fun b!1853726 () Bool)

(declare-fun e!1184790 () List!20647)

(assert (=> b!1853726 (= e!1184788 e!1184790)))

(declare-fun c!302292 () Bool)

(assert (=> b!1853726 (= c!302292 (<= lt!716467 0))))

(declare-fun b!1853727 () Bool)

(assert (=> b!1853727 (= e!1184786 (= (size!16250 lt!716652) e!1184789))))

(declare-fun c!302291 () Bool)

(assert (=> b!1853727 (= c!302291 (<= lt!716467 0))))

(declare-fun b!1853728 () Bool)

(assert (=> b!1853728 (= e!1184789 call!115386)))

(declare-fun b!1853729 () Bool)

(assert (=> b!1853729 (= e!1184790 lt!716477)))

(declare-fun b!1853730 () Bool)

(assert (=> b!1853730 (= e!1184790 (drop!982 (t!172468 lt!716477) (- lt!716467 1)))))

(declare-fun b!1853731 () Bool)

(assert (=> b!1853731 (= e!1184787 0)))

(assert (= (and d!566505 c!302289) b!1853724))

(assert (= (and d!566505 (not c!302289)) b!1853726))

(assert (= (and b!1853726 c!302292) b!1853729))

(assert (= (and b!1853726 (not c!302292)) b!1853730))

(assert (= (and d!566505 res!831659) b!1853727))

(assert (= (and b!1853727 c!302291) b!1853728))

(assert (= (and b!1853727 (not c!302291)) b!1853725))

(assert (= (and b!1853725 c!302290) b!1853731))

(assert (= (and b!1853725 (not c!302290)) b!1853723))

(assert (= (or b!1853728 b!1853725 b!1853723) bm!115381))

(assert (=> bm!115381 m!2280309))

(declare-fun m!2280479 () Bool)

(assert (=> d!566505 m!2280479))

(declare-fun m!2280481 () Bool)

(assert (=> d!566505 m!2280481))

(declare-fun m!2280483 () Bool)

(assert (=> b!1853727 m!2280483))

(declare-fun m!2280485 () Bool)

(assert (=> b!1853730 m!2280485))

(assert (=> b!1853251 d!566505))

(declare-fun b!1853732 () Bool)

(declare-fun e!1184792 () Int)

(declare-fun call!115387 () Int)

(assert (=> b!1853732 (= e!1184792 (- call!115387 (+ 0 1)))))

(declare-fun bm!115382 () Bool)

(assert (=> bm!115382 (= call!115387 (size!16250 lt!716470))))

(declare-fun d!566507 () Bool)

(declare-fun e!1184791 () Bool)

(assert (=> d!566507 e!1184791))

(declare-fun res!831660 () Bool)

(assert (=> d!566507 (=> (not res!831660) (not e!1184791))))

(declare-fun lt!716653 () List!20647)

(assert (=> d!566507 (= res!831660 (= ((_ map implies) (content!3054 lt!716653) (content!3054 lt!716470)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184793 () List!20647)

(assert (=> d!566507 (= lt!716653 e!1184793)))

(declare-fun c!302293 () Bool)

(assert (=> d!566507 (= c!302293 ((_ is Nil!20569) lt!716470))))

(assert (=> d!566507 (= (drop!982 lt!716470 (+ 0 1)) lt!716653)))

(declare-fun b!1853733 () Bool)

(assert (=> b!1853733 (= e!1184793 Nil!20569)))

(declare-fun b!1853734 () Bool)

(declare-fun e!1184794 () Int)

(assert (=> b!1853734 (= e!1184794 e!1184792)))

(declare-fun c!302294 () Bool)

(assert (=> b!1853734 (= c!302294 (>= (+ 0 1) call!115387))))

(declare-fun b!1853735 () Bool)

(declare-fun e!1184795 () List!20647)

(assert (=> b!1853735 (= e!1184793 e!1184795)))

(declare-fun c!302296 () Bool)

(assert (=> b!1853735 (= c!302296 (<= (+ 0 1) 0))))

(declare-fun b!1853736 () Bool)

(assert (=> b!1853736 (= e!1184791 (= (size!16250 lt!716653) e!1184794))))

(declare-fun c!302295 () Bool)

(assert (=> b!1853736 (= c!302295 (<= (+ 0 1) 0))))

(declare-fun b!1853737 () Bool)

(assert (=> b!1853737 (= e!1184794 call!115387)))

(declare-fun b!1853738 () Bool)

(assert (=> b!1853738 (= e!1184795 lt!716470)))

(declare-fun b!1853739 () Bool)

(assert (=> b!1853739 (= e!1184795 (drop!982 (t!172468 lt!716470) (- (+ 0 1) 1)))))

(declare-fun b!1853740 () Bool)

(assert (=> b!1853740 (= e!1184792 0)))

(assert (= (and d!566507 c!302293) b!1853733))

(assert (= (and d!566507 (not c!302293)) b!1853735))

(assert (= (and b!1853735 c!302296) b!1853738))

(assert (= (and b!1853735 (not c!302296)) b!1853739))

(assert (= (and d!566507 res!831660) b!1853736))

(assert (= (and b!1853736 c!302295) b!1853737))

(assert (= (and b!1853736 (not c!302295)) b!1853734))

(assert (= (and b!1853734 c!302294) b!1853740))

(assert (= (and b!1853734 (not c!302294)) b!1853732))

(assert (= (or b!1853737 b!1853734 b!1853732) bm!115382))

(assert (=> bm!115382 m!2280347))

(declare-fun m!2280487 () Bool)

(assert (=> d!566507 m!2280487))

(assert (=> d!566507 m!2280351))

(declare-fun m!2280489 () Bool)

(assert (=> b!1853736 m!2280489))

(declare-fun m!2280491 () Bool)

(assert (=> b!1853739 m!2280491))

(assert (=> b!1853251 d!566507))

(declare-fun d!566509 () Bool)

(declare-fun lt!716656 () BalanceConc!13542)

(declare-fun list!8346 (BalanceConc!13542) List!20644)

(assert (=> d!566509 (= (list!8346 lt!716656) (originalCharacters!4487 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))

(declare-fun dynLambda!10186 (Int TokenValue!3796) BalanceConc!13542)

(assert (=> d!566509 (= lt!716656 (dynLambda!10186 (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))) (value!115499 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))))

(assert (=> d!566509 (= (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))) lt!716656)))

(declare-fun b_lambda!61463 () Bool)

(assert (=> (not b_lambda!61463) (not d!566509)))

(declare-fun t!172489 () Bool)

(declare-fun tb!112909 () Bool)

(assert (=> (and b!1852989 (= (toChars!5114 (transformation!3680 (h!25969 rules!865))) (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) t!172489) tb!112909))

(declare-fun b!1853745 () Bool)

(declare-fun e!1184798 () Bool)

(declare-fun tp!525743 () Bool)

(declare-fun inv!26969 (Conc!6807) Bool)

(assert (=> b!1853745 (= e!1184798 (and (inv!26969 (c!302257 (dynLambda!10186 (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))) (value!115499 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) tp!525743))))

(declare-fun result!136176 () Bool)

(declare-fun inv!26970 (BalanceConc!13542) Bool)

(assert (=> tb!112909 (= result!136176 (and (inv!26970 (dynLambda!10186 (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))) (value!115499 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))) e!1184798))))

(assert (= tb!112909 b!1853745))

(declare-fun m!2280493 () Bool)

(assert (=> b!1853745 m!2280493))

(declare-fun m!2280495 () Bool)

(assert (=> tb!112909 m!2280495))

(assert (=> d!566509 t!172489))

(declare-fun b_and!144157 () Bool)

(assert (= b_and!144131 (and (=> t!172489 result!136176) b_and!144157)))

(declare-fun t!172491 () Bool)

(declare-fun tb!112911 () Bool)

(assert (=> (and b!1853078 (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 rules!865)))) (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) t!172491) tb!112911))

(declare-fun result!136180 () Bool)

(assert (= result!136180 result!136176))

(assert (=> d!566509 t!172491))

(declare-fun b_and!144159 () Bool)

(assert (= b_and!144139 (and (=> t!172491 result!136180) b_and!144159)))

(declare-fun t!172493 () Bool)

(declare-fun tb!112913 () Bool)

(assert (=> (and b!1853182 (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 rules!865))))) (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) t!172493) tb!112913))

(declare-fun result!136182 () Bool)

(assert (= result!136182 result!136176))

(assert (=> d!566509 t!172493))

(declare-fun b_and!144161 () Bool)

(assert (= b_and!144147 (and (=> t!172493 result!136182) b_and!144161)))

(declare-fun t!172495 () Bool)

(declare-fun tb!112915 () Bool)

(assert (=> (and b!1853570 (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865)))))) (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) t!172495) tb!112915))

(declare-fun result!136184 () Bool)

(assert (= result!136184 result!136176))

(assert (=> d!566509 t!172495))

(declare-fun b_and!144163 () Bool)

(assert (= b_and!144155 (and (=> t!172495 result!136184) b_and!144163)))

(declare-fun m!2280497 () Bool)

(assert (=> d!566509 m!2280497))

(declare-fun m!2280499 () Bool)

(assert (=> d!566509 m!2280499))

(assert (=> b!1853251 d!566509))

(declare-fun d!566511 () Bool)

(declare-fun lt!716659 () Token!6912)

(declare-fun contains!3793 (List!20647 Token!6912) Bool)

(assert (=> d!566511 (contains!3793 lt!716477 lt!716659)))

(declare-fun e!1184803 () Token!6912)

(assert (=> d!566511 (= lt!716659 e!1184803)))

(declare-fun c!302299 () Bool)

(assert (=> d!566511 (= c!302299 (= lt!716467 0))))

(declare-fun e!1184804 () Bool)

(assert (=> d!566511 e!1184804))

(declare-fun res!831663 () Bool)

(assert (=> d!566511 (=> (not res!831663) (not e!1184804))))

(assert (=> d!566511 (= res!831663 (<= 0 lt!716467))))

(assert (=> d!566511 (= (apply!5467 lt!716477 lt!716467) lt!716659)))

(declare-fun b!1853752 () Bool)

(assert (=> b!1853752 (= e!1184804 (< lt!716467 (size!16250 lt!716477)))))

(declare-fun b!1853753 () Bool)

(assert (=> b!1853753 (= e!1184803 (head!4342 lt!716477))))

(declare-fun b!1853754 () Bool)

(assert (=> b!1853754 (= e!1184803 (apply!5467 (tail!2797 lt!716477) (- lt!716467 1)))))

(assert (= (and d!566511 res!831663) b!1853752))

(assert (= (and d!566511 c!302299) b!1853753))

(assert (= (and d!566511 (not c!302299)) b!1853754))

(declare-fun m!2280501 () Bool)

(assert (=> d!566511 m!2280501))

(assert (=> b!1853752 m!2280309))

(declare-fun m!2280503 () Bool)

(assert (=> b!1853753 m!2280503))

(declare-fun m!2280505 () Bool)

(assert (=> b!1853754 m!2280505))

(assert (=> b!1853754 m!2280505))

(declare-fun m!2280507 () Bool)

(assert (=> b!1853754 m!2280507))

(assert (=> b!1853251 d!566511))

(declare-fun d!566513 () Bool)

(declare-fun lt!716662 () Int)

(declare-fun size!16251 (List!20644) Int)

(assert (=> d!566513 (= lt!716662 (size!16251 (list!8346 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))))

(declare-fun size!16252 (Conc!6807) Int)

(assert (=> d!566513 (= lt!716662 (size!16252 (c!302257 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1))))))))

(assert (=> d!566513 (= (size!16249 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))) lt!716662)))

(declare-fun bs!410556 () Bool)

(assert (= bs!410556 d!566513))

(assert (=> bs!410556 m!2280015))

(declare-fun m!2280509 () Bool)

(assert (=> bs!410556 m!2280509))

(assert (=> bs!410556 m!2280509))

(declare-fun m!2280511 () Bool)

(assert (=> bs!410556 m!2280511))

(declare-fun m!2280513 () Bool)

(assert (=> bs!410556 m!2280513))

(assert (=> b!1853251 d!566513))

(declare-fun d!566515 () Bool)

(declare-fun lt!716663 () Token!6912)

(assert (=> d!566515 (contains!3793 lt!716469 lt!716663)))

(declare-fun e!1184805 () Token!6912)

(assert (=> d!566515 (= lt!716663 e!1184805)))

(declare-fun c!302300 () Bool)

(assert (=> d!566515 (= c!302300 (= 0 0))))

(declare-fun e!1184806 () Bool)

(assert (=> d!566515 e!1184806))

(declare-fun res!831664 () Bool)

(assert (=> d!566515 (=> (not res!831664) (not e!1184806))))

(assert (=> d!566515 (= res!831664 (<= 0 0))))

(assert (=> d!566515 (= (apply!5467 lt!716469 0) lt!716663)))

(declare-fun b!1853755 () Bool)

(assert (=> b!1853755 (= e!1184806 (< 0 (size!16250 lt!716469)))))

(declare-fun b!1853756 () Bool)

(assert (=> b!1853756 (= e!1184805 (head!4342 lt!716469))))

(declare-fun b!1853757 () Bool)

(assert (=> b!1853757 (= e!1184805 (apply!5467 (tail!2797 lt!716469) (- 0 1)))))

(assert (= (and d!566515 res!831664) b!1853755))

(assert (= (and d!566515 c!302300) b!1853756))

(assert (= (and d!566515 (not c!302300)) b!1853757))

(declare-fun m!2280515 () Bool)

(assert (=> d!566515 m!2280515))

(assert (=> b!1853755 m!2280403))

(declare-fun m!2280517 () Bool)

(assert (=> b!1853756 m!2280517))

(declare-fun m!2280519 () Bool)

(assert (=> b!1853757 m!2280519))

(assert (=> b!1853757 m!2280519))

(declare-fun m!2280521 () Bool)

(assert (=> b!1853757 m!2280521))

(assert (=> b!1853251 d!566515))

(declare-fun b!1853758 () Bool)

(declare-fun e!1184808 () Int)

(declare-fun call!115388 () Int)

(assert (=> b!1853758 (= e!1184808 (- call!115388 lt!716452))))

(declare-fun bm!115383 () Bool)

(assert (=> bm!115383 (= call!115388 (size!16250 lt!716456))))

(declare-fun d!566517 () Bool)

(declare-fun e!1184807 () Bool)

(assert (=> d!566517 e!1184807))

(declare-fun res!831665 () Bool)

(assert (=> d!566517 (=> (not res!831665) (not e!1184807))))

(declare-fun lt!716664 () List!20647)

(assert (=> d!566517 (= res!831665 (= ((_ map implies) (content!3054 lt!716664) (content!3054 lt!716456)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184809 () List!20647)

(assert (=> d!566517 (= lt!716664 e!1184809)))

(declare-fun c!302301 () Bool)

(assert (=> d!566517 (= c!302301 ((_ is Nil!20569) lt!716456))))

(assert (=> d!566517 (= (drop!982 lt!716456 lt!716452) lt!716664)))

(declare-fun b!1853759 () Bool)

(assert (=> b!1853759 (= e!1184809 Nil!20569)))

(declare-fun b!1853760 () Bool)

(declare-fun e!1184810 () Int)

(assert (=> b!1853760 (= e!1184810 e!1184808)))

(declare-fun c!302302 () Bool)

(assert (=> b!1853760 (= c!302302 (>= lt!716452 call!115388))))

(declare-fun b!1853761 () Bool)

(declare-fun e!1184811 () List!20647)

(assert (=> b!1853761 (= e!1184809 e!1184811)))

(declare-fun c!302304 () Bool)

(assert (=> b!1853761 (= c!302304 (<= lt!716452 0))))

(declare-fun b!1853762 () Bool)

(assert (=> b!1853762 (= e!1184807 (= (size!16250 lt!716664) e!1184810))))

(declare-fun c!302303 () Bool)

(assert (=> b!1853762 (= c!302303 (<= lt!716452 0))))

(declare-fun b!1853763 () Bool)

(assert (=> b!1853763 (= e!1184810 call!115388)))

(declare-fun b!1853764 () Bool)

(assert (=> b!1853764 (= e!1184811 lt!716456)))

(declare-fun b!1853765 () Bool)

(assert (=> b!1853765 (= e!1184811 (drop!982 (t!172468 lt!716456) (- lt!716452 1)))))

(declare-fun b!1853766 () Bool)

(assert (=> b!1853766 (= e!1184808 0)))

(assert (= (and d!566517 c!302301) b!1853759))

(assert (= (and d!566517 (not c!302301)) b!1853761))

(assert (= (and b!1853761 c!302304) b!1853764))

(assert (= (and b!1853761 (not c!302304)) b!1853765))

(assert (= (and d!566517 res!831665) b!1853762))

(assert (= (and b!1853762 c!302303) b!1853763))

(assert (= (and b!1853762 (not c!302303)) b!1853760))

(assert (= (and b!1853760 c!302302) b!1853766))

(assert (= (and b!1853760 (not c!302302)) b!1853758))

(assert (= (or b!1853763 b!1853760 b!1853758) bm!115383))

(assert (=> bm!115383 m!2280401))

(declare-fun m!2280523 () Bool)

(assert (=> d!566517 m!2280523))

(assert (=> d!566517 m!2280439))

(declare-fun m!2280525 () Bool)

(assert (=> b!1853762 m!2280525))

(declare-fun m!2280527 () Bool)

(assert (=> b!1853765 m!2280527))

(assert (=> b!1853251 d!566517))

(assert (=> d!566391 d!566389))

(assert (=> d!566391 d!566381))

(declare-fun b!1853777 () Bool)

(declare-fun e!1184820 () Bool)

(declare-fun e!1184818 () Bool)

(assert (=> b!1853777 (= e!1184820 e!1184818)))

(declare-fun lt!716669 () Unit!35177)

(declare-fun lemmaForallConcat!144 (List!20647 List!20647 Int) Unit!35177)

(assert (=> b!1853777 (= lt!716669 (lemmaForallConcat!144 (list!8343 (left!16500 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) (list!8343 (right!16830 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) lambda!73268))))

(declare-fun res!831671 () Bool)

(assert (=> b!1853777 (= res!831671 (forall!4401 (left!16500 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268))))

(assert (=> b!1853777 (=> (not res!831671) (not e!1184818))))

(declare-fun b!1853778 () Bool)

(assert (=> b!1853778 (= e!1184818 (forall!4401 (right!16830 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268))))

(declare-fun d!566519 () Bool)

(declare-fun lt!716670 () Bool)

(assert (=> d!566519 (= lt!716670 (forall!4397 (list!8343 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268))))

(declare-fun e!1184819 () Bool)

(assert (=> d!566519 (= lt!716670 e!1184819)))

(declare-fun res!831670 () Bool)

(assert (=> d!566519 (=> res!831670 e!1184819)))

(assert (=> d!566519 (= res!831670 ((_ is Empty!6808) (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566519 (= (forall!4401 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lambda!73268) lt!716670)))

(declare-fun b!1853776 () Bool)

(declare-fun forall!4403 (IArray!13621 Int) Bool)

(assert (=> b!1853776 (= e!1184820 (forall!4403 (xs!9684 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) lambda!73268))))

(declare-fun b!1853775 () Bool)

(assert (=> b!1853775 (= e!1184819 e!1184820)))

(declare-fun c!302307 () Bool)

(assert (=> b!1853775 (= c!302307 ((_ is Leaf!9959) (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (= (and d!566519 (not res!831670)) b!1853775))

(assert (= (and b!1853775 c!302307) b!1853776))

(assert (= (and b!1853775 (not c!302307)) b!1853777))

(assert (= (and b!1853777 res!831671) b!1853778))

(assert (=> b!1853777 m!2280213))

(assert (=> b!1853777 m!2280215))

(assert (=> b!1853777 m!2280213))

(assert (=> b!1853777 m!2280215))

(declare-fun m!2280529 () Bool)

(assert (=> b!1853777 m!2280529))

(declare-fun m!2280531 () Bool)

(assert (=> b!1853777 m!2280531))

(declare-fun m!2280533 () Bool)

(assert (=> b!1853778 m!2280533))

(assert (=> d!566519 m!2280163))

(assert (=> d!566519 m!2280163))

(declare-fun m!2280535 () Bool)

(assert (=> d!566519 m!2280535))

(declare-fun m!2280537 () Bool)

(assert (=> b!1853776 m!2280537))

(assert (=> d!566391 d!566519))

(declare-fun d!566521 () Bool)

(declare-fun res!831683 () Bool)

(declare-fun e!1184830 () Bool)

(assert (=> d!566521 (=> res!831683 e!1184830)))

(assert (=> d!566521 (= res!831683 ((_ is Nil!20569) lt!716454))))

(assert (=> d!566521 (= (subseq!389 lt!716454 lt!716480) e!1184830)))

(declare-fun b!1853788 () Bool)

(declare-fun e!1184829 () Bool)

(declare-fun e!1184831 () Bool)

(assert (=> b!1853788 (= e!1184829 e!1184831)))

(declare-fun res!831680 () Bool)

(assert (=> b!1853788 (=> res!831680 e!1184831)))

(declare-fun e!1184832 () Bool)

(assert (=> b!1853788 (= res!831680 e!1184832)))

(declare-fun res!831682 () Bool)

(assert (=> b!1853788 (=> (not res!831682) (not e!1184832))))

(assert (=> b!1853788 (= res!831682 (= (h!25970 lt!716454) (h!25970 lt!716480)))))

(declare-fun b!1853790 () Bool)

(assert (=> b!1853790 (= e!1184831 (subseq!389 lt!716454 (t!172468 lt!716480)))))

(declare-fun b!1853789 () Bool)

(assert (=> b!1853789 (= e!1184832 (subseq!389 (t!172468 lt!716454) (t!172468 lt!716480)))))

(declare-fun b!1853787 () Bool)

(assert (=> b!1853787 (= e!1184830 e!1184829)))

(declare-fun res!831681 () Bool)

(assert (=> b!1853787 (=> (not res!831681) (not e!1184829))))

(assert (=> b!1853787 (= res!831681 ((_ is Cons!20569) lt!716480))))

(assert (= (and d!566521 (not res!831683)) b!1853787))

(assert (= (and b!1853787 res!831681) b!1853788))

(assert (= (and b!1853788 res!831682) b!1853789))

(assert (= (and b!1853788 (not res!831680)) b!1853790))

(declare-fun m!2280539 () Bool)

(assert (=> b!1853790 m!2280539))

(declare-fun m!2280541 () Bool)

(assert (=> b!1853789 m!2280541))

(assert (=> b!1853250 d!566521))

(assert (=> b!1853249 d!566317))

(declare-fun d!566523 () Bool)

(assert (=> d!566523 (= (Forall!962 lambda!73283) (choose!11661 lambda!73283))))

(declare-fun bs!410557 () Bool)

(assert (= bs!410557 d!566523))

(declare-fun m!2280543 () Bool)

(assert (=> bs!410557 m!2280543))

(assert (=> d!566365 d!566523))

(declare-fun b!1853791 () Bool)

(declare-fun e!1184833 () Bool)

(assert (=> b!1853791 (= e!1184833 (<= (+ 0 1) (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853792 () Bool)

(declare-fun e!1184834 () Bool)

(assert (=> b!1853792 (= e!1184834 (tokensListTwoByTwoPredicateSeparable!153 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1 1) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853793 () Bool)

(declare-fun res!831684 () Bool)

(declare-fun e!1184835 () Bool)

(assert (=> b!1853793 (=> (not res!831684) (not e!1184835))))

(assert (=> b!1853793 (= res!831684 (rulesInvariant!2969 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun b!1853794 () Bool)

(declare-fun res!831691 () Bool)

(assert (=> b!1853794 (=> (not res!831691) (not e!1184835))))

(declare-fun lt!716673 () List!20647)

(declare-fun lt!716699 () List!20647)

(assert (=> b!1853794 (= res!831691 (subseq!389 lt!716673 lt!716699))))

(declare-fun b!1853795 () Bool)

(declare-fun e!1184837 () Bool)

(assert (=> b!1853795 (= e!1184837 e!1184834)))

(declare-fun res!831690 () Bool)

(assert (=> b!1853795 (=> (not res!831690) (not e!1184834))))

(assert (=> b!1853795 (= res!831690 (separableTokensPredicate!832 Lexer!3300 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1 1)) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716698 () Unit!35177)

(declare-fun Unit!35182 () Unit!35177)

(assert (=> b!1853795 (= lt!716698 Unit!35182)))

(assert (=> b!1853795 (> (size!16249 (charsOf!2296 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1 1)))) 0)))

(declare-fun lt!716672 () Unit!35177)

(declare-fun Unit!35183 () Unit!35177)

(assert (=> b!1853795 (= lt!716672 Unit!35183)))

(assert (=> b!1853795 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1 1)))))

(declare-fun lt!716690 () Unit!35177)

(declare-fun Unit!35184 () Unit!35177)

(assert (=> b!1853795 (= lt!716690 Unit!35184)))

(assert (=> b!1853795 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))

(declare-fun lt!716701 () Unit!35177)

(declare-fun lt!716678 () Unit!35177)

(assert (=> b!1853795 (= lt!716701 lt!716678)))

(declare-fun lt!716684 () Token!6912)

(assert (=> b!1853795 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716684)))

(declare-fun lt!716676 () List!20647)

(assert (=> b!1853795 (= lt!716678 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716676 lt!716684))))

(assert (=> b!1853795 (= lt!716684 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1 1)))))

(assert (=> b!1853795 (= lt!716676 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716679 () Unit!35177)

(declare-fun lt!716693 () Unit!35177)

(assert (=> b!1853795 (= lt!716679 lt!716693)))

(declare-fun lt!716683 () Token!6912)

(assert (=> b!1853795 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716683)))

(declare-fun lt!716677 () List!20647)

(assert (=> b!1853795 (= lt!716693 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716677 lt!716683))))

(assert (=> b!1853795 (= lt!716683 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))

(assert (=> b!1853795 (= lt!716677 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716694 () Unit!35177)

(declare-fun lt!716702 () Unit!35177)

(assert (=> b!1853795 (= lt!716694 lt!716702)))

(declare-fun lt!716675 () List!20647)

(declare-fun lt!716671 () Int)

(assert (=> b!1853795 (= (tail!2797 (drop!982 lt!716675 lt!716671)) (drop!982 lt!716675 (+ lt!716671 1)))))

(assert (=> b!1853795 (= lt!716702 (lemmaDropTail!622 lt!716675 lt!716671))))

(assert (=> b!1853795 (= lt!716671 (+ 0 1 1))))

(assert (=> b!1853795 (= lt!716675 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716680 () Unit!35177)

(declare-fun lt!716695 () Unit!35177)

(assert (=> b!1853795 (= lt!716680 lt!716695)))

(declare-fun lt!716689 () List!20647)

(assert (=> b!1853795 (= (tail!2797 (drop!982 lt!716689 (+ 0 1))) (drop!982 lt!716689 (+ 0 1 1)))))

(assert (=> b!1853795 (= lt!716695 (lemmaDropTail!622 lt!716689 (+ 0 1)))))

(assert (=> b!1853795 (= lt!716689 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716703 () Unit!35177)

(declare-fun lt!716674 () Unit!35177)

(assert (=> b!1853795 (= lt!716703 lt!716674)))

(declare-fun lt!716696 () List!20647)

(declare-fun lt!716686 () Int)

(assert (=> b!1853795 (= (head!4342 (drop!982 lt!716696 lt!716686)) (apply!5467 lt!716696 lt!716686))))

(assert (=> b!1853795 (= lt!716674 (lemmaDropApply!642 lt!716696 lt!716686))))

(assert (=> b!1853795 (= lt!716686 (+ 0 1 1))))

(assert (=> b!1853795 (= lt!716696 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716687 () Unit!35177)

(declare-fun lt!716685 () Unit!35177)

(assert (=> b!1853795 (= lt!716687 lt!716685)))

(declare-fun lt!716688 () List!20647)

(assert (=> b!1853795 (= (head!4342 (drop!982 lt!716688 (+ 0 1))) (apply!5467 lt!716688 (+ 0 1)))))

(assert (=> b!1853795 (= lt!716685 (lemmaDropApply!642 lt!716688 (+ 0 1)))))

(assert (=> b!1853795 (= lt!716688 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun d!566525 () Bool)

(declare-fun lt!716691 () Bool)

(assert (=> d!566525 (= lt!716691 (tokensListTwoByTwoPredicateSeparableList!585 Lexer!3300 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716681 () Unit!35177)

(declare-fun lt!716692 () Unit!35177)

(assert (=> d!566525 (= lt!716681 lt!716692)))

(assert (=> d!566525 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716673)))

(assert (=> d!566525 (= lt!716692 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!74 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716699 lt!716673))))

(assert (=> d!566525 e!1184835))

(declare-fun res!831689 () Bool)

(assert (=> d!566525 (=> (not res!831689) (not e!1184835))))

(assert (=> d!566525 (= res!831689 ((_ is Lexer!3300) Lexer!3300))))

(assert (=> d!566525 (= lt!716673 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))

(assert (=> d!566525 (= lt!716699 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716700 () Unit!35177)

(declare-fun lt!716697 () Unit!35177)

(assert (=> d!566525 (= lt!716700 lt!716697)))

(declare-fun lt!716682 () List!20647)

(assert (=> d!566525 (subseq!389 (drop!982 lt!716682 (+ 0 1)) lt!716682)))

(assert (=> d!566525 (= lt!716697 (lemmaDropSubSeq!74 lt!716682 (+ 0 1)))))

(declare-fun e!1184836 () Bool)

(assert (=> d!566525 e!1184836))

(declare-fun res!831688 () Bool)

(assert (=> d!566525 (=> (not res!831688) (not e!1184836))))

(assert (=> d!566525 (= res!831688 (>= (+ 0 1) 0))))

(assert (=> d!566525 (= lt!716682 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566525 (= lt!716691 e!1184837)))

(declare-fun res!831685 () Bool)

(assert (=> d!566525 (=> res!831685 e!1184837)))

(assert (=> d!566525 (= res!831685 (not (< (+ 0 1) (- (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) 1))))))

(assert (=> d!566525 e!1184833))

(declare-fun res!831687 () Bool)

(assert (=> d!566525 (=> (not res!831687) (not e!1184833))))

(assert (=> d!566525 (= res!831687 (>= (+ 0 1) 0))))

(assert (=> d!566525 (= (tokensListTwoByTwoPredicateSeparable!153 Lexer!3300 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716691)))

(declare-fun b!1853796 () Bool)

(declare-fun res!831686 () Bool)

(assert (=> b!1853796 (=> (not res!831686) (not e!1184835))))

(assert (=> b!1853796 (= res!831686 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun b!1853797 () Bool)

(assert (=> b!1853797 (= e!1184835 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716699))))

(declare-fun b!1853798 () Bool)

(assert (=> b!1853798 (= e!1184836 (<= (+ 0 1) (size!16250 lt!716682)))))

(assert (= (and d!566525 res!831687) b!1853791))

(assert (= (and d!566525 (not res!831685)) b!1853795))

(assert (= (and b!1853795 res!831690) b!1853792))

(assert (= (and d!566525 res!831688) b!1853798))

(assert (= (and d!566525 res!831689) b!1853796))

(assert (= (and b!1853796 res!831686) b!1853793))

(assert (= (and b!1853793 res!831684) b!1853794))

(assert (= (and b!1853794 res!831691) b!1853797))

(declare-fun m!2280545 () Bool)

(assert (=> b!1853798 m!2280545))

(assert (=> b!1853796 m!2279859))

(declare-fun m!2280547 () Bool)

(assert (=> b!1853797 m!2280547))

(assert (=> b!1853793 m!2279861))

(declare-fun m!2280549 () Bool)

(assert (=> d!566525 m!2280549))

(declare-fun m!2280551 () Bool)

(assert (=> d!566525 m!2280551))

(declare-fun m!2280553 () Bool)

(assert (=> d!566525 m!2280553))

(declare-fun m!2280555 () Bool)

(assert (=> d!566525 m!2280555))

(declare-fun m!2280557 () Bool)

(assert (=> d!566525 m!2280557))

(assert (=> d!566525 m!2279911))

(assert (=> d!566525 m!2280549))

(declare-fun m!2280559 () Bool)

(assert (=> d!566525 m!2280559))

(declare-fun m!2280561 () Bool)

(assert (=> d!566525 m!2280561))

(assert (=> d!566525 m!2280559))

(assert (=> d!566525 m!2280003))

(assert (=> b!1853791 m!2280003))

(declare-fun m!2280563 () Bool)

(assert (=> b!1853792 m!2280563))

(declare-fun m!2280565 () Bool)

(assert (=> b!1853795 m!2280565))

(declare-fun m!2280567 () Bool)

(assert (=> b!1853795 m!2280567))

(declare-fun m!2280569 () Bool)

(assert (=> b!1853795 m!2280569))

(declare-fun m!2280571 () Bool)

(assert (=> b!1853795 m!2280571))

(declare-fun m!2280573 () Bool)

(assert (=> b!1853795 m!2280573))

(declare-fun m!2280575 () Bool)

(assert (=> b!1853795 m!2280575))

(assert (=> b!1853795 m!2280021))

(declare-fun m!2280577 () Bool)

(assert (=> b!1853795 m!2280577))

(declare-fun m!2280579 () Bool)

(assert (=> b!1853795 m!2280579))

(declare-fun m!2280581 () Bool)

(assert (=> b!1853795 m!2280581))

(assert (=> b!1853795 m!2280577))

(assert (=> b!1853795 m!2280573))

(declare-fun m!2280583 () Bool)

(assert (=> b!1853795 m!2280583))

(assert (=> b!1853795 m!2279911))

(assert (=> b!1853795 m!2280577))

(declare-fun m!2280585 () Bool)

(assert (=> b!1853795 m!2280585))

(declare-fun m!2280587 () Bool)

(assert (=> b!1853795 m!2280587))

(assert (=> b!1853795 m!2280021))

(declare-fun m!2280589 () Bool)

(assert (=> b!1853795 m!2280589))

(declare-fun m!2280591 () Bool)

(assert (=> b!1853795 m!2280591))

(assert (=> b!1853795 m!2280585))

(declare-fun m!2280593 () Bool)

(assert (=> b!1853795 m!2280593))

(declare-fun m!2280595 () Bool)

(assert (=> b!1853795 m!2280595))

(declare-fun m!2280597 () Bool)

(assert (=> b!1853795 m!2280597))

(declare-fun m!2280599 () Bool)

(assert (=> b!1853795 m!2280599))

(declare-fun m!2280601 () Bool)

(assert (=> b!1853795 m!2280601))

(declare-fun m!2280603 () Bool)

(assert (=> b!1853795 m!2280603))

(assert (=> b!1853795 m!2280599))

(assert (=> b!1853795 m!2280577))

(declare-fun m!2280605 () Bool)

(assert (=> b!1853795 m!2280605))

(assert (=> b!1853795 m!2280021))

(assert (=> b!1853795 m!2280049))

(declare-fun m!2280607 () Bool)

(assert (=> b!1853795 m!2280607))

(declare-fun m!2280609 () Bool)

(assert (=> b!1853795 m!2280609))

(declare-fun m!2280611 () Bool)

(assert (=> b!1853795 m!2280611))

(assert (=> b!1853795 m!2280595))

(assert (=> b!1853795 m!2280569))

(declare-fun m!2280613 () Bool)

(assert (=> b!1853795 m!2280613))

(declare-fun m!2280615 () Bool)

(assert (=> b!1853794 m!2280615))

(assert (=> b!1853248 d!566525))

(declare-fun d!566527 () Bool)

(declare-fun res!831692 () Bool)

(declare-fun e!1184838 () Bool)

(assert (=> d!566527 (=> res!831692 e!1184838)))

(assert (=> d!566527 (= res!831692 ((_ is Nil!20568) rules!865))))

(assert (=> d!566527 (= (forall!4399 rules!865 lambda!73290) e!1184838)))

(declare-fun b!1853799 () Bool)

(declare-fun e!1184839 () Bool)

(assert (=> b!1853799 (= e!1184838 e!1184839)))

(declare-fun res!831693 () Bool)

(assert (=> b!1853799 (=> (not res!831693) (not e!1184839))))

(assert (=> b!1853799 (= res!831693 (dynLambda!10183 lambda!73290 (h!25969 rules!865)))))

(declare-fun b!1853800 () Bool)

(assert (=> b!1853800 (= e!1184839 (forall!4399 (t!172467 rules!865) lambda!73290))))

(assert (= (and d!566527 (not res!831692)) b!1853799))

(assert (= (and b!1853799 res!831693) b!1853800))

(declare-fun b_lambda!61465 () Bool)

(assert (=> (not b_lambda!61465) (not b!1853799)))

(declare-fun m!2280617 () Bool)

(assert (=> b!1853799 m!2280617))

(declare-fun m!2280619 () Bool)

(assert (=> b!1853800 m!2280619))

(assert (=> d!566383 d!566527))

(declare-fun d!566529 () Bool)

(declare-fun lt!716706 () Int)

(assert (=> d!566529 (= lt!716706 (size!16250 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(declare-fun size!16253 (Conc!6808) Int)

(assert (=> d!566529 (= lt!716706 (size!16253 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> d!566529 (= (size!16248 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) lt!716706)))

(declare-fun bs!410558 () Bool)

(assert (= bs!410558 d!566529))

(assert (=> bs!410558 m!2279911))

(assert (=> bs!410558 m!2279911))

(declare-fun m!2280621 () Bool)

(assert (=> bs!410558 m!2280621))

(declare-fun m!2280623 () Bool)

(assert (=> bs!410558 m!2280623))

(assert (=> b!1853247 d!566529))

(declare-fun d!566531 () Bool)

(declare-fun res!831694 () Bool)

(declare-fun e!1184840 () Bool)

(assert (=> d!566531 (=> res!831694 e!1184840)))

(assert (=> d!566531 (= res!831694 ((_ is Nil!20568) (t!172467 rules!865)))))

(assert (=> d!566531 (= (forall!4399 (t!172467 rules!865) lambda!73274) e!1184840)))

(declare-fun b!1853801 () Bool)

(declare-fun e!1184841 () Bool)

(assert (=> b!1853801 (= e!1184840 e!1184841)))

(declare-fun res!831695 () Bool)

(assert (=> b!1853801 (=> (not res!831695) (not e!1184841))))

(assert (=> b!1853801 (= res!831695 (dynLambda!10183 lambda!73274 (h!25969 (t!172467 rules!865))))))

(declare-fun b!1853802 () Bool)

(assert (=> b!1853802 (= e!1184841 (forall!4399 (t!172467 (t!172467 rules!865)) lambda!73274))))

(assert (= (and d!566531 (not res!831694)) b!1853801))

(assert (= (and b!1853801 res!831695) b!1853802))

(declare-fun b_lambda!61467 () Bool)

(assert (=> (not b_lambda!61467) (not b!1853801)))

(declare-fun m!2280625 () Bool)

(assert (=> b!1853801 m!2280625))

(declare-fun m!2280627 () Bool)

(assert (=> b!1853802 m!2280627))

(assert (=> b!1853431 d!566531))

(declare-fun d!566533 () Bool)

(declare-fun res!831700 () Bool)

(declare-fun e!1184844 () Bool)

(assert (=> d!566533 (=> (not res!831700) (not e!1184844))))

(declare-fun validRegex!2066 (Regex!5043) Bool)

(assert (=> d!566533 (= res!831700 (validRegex!2066 (regex!3680 (h!25969 rules!865))))))

(assert (=> d!566533 (= (ruleValid!1141 Lexer!3300 (h!25969 rules!865)) e!1184844)))

(declare-fun b!1853807 () Bool)

(declare-fun res!831701 () Bool)

(assert (=> b!1853807 (=> (not res!831701) (not e!1184844))))

(declare-fun nullable!1564 (Regex!5043) Bool)

(assert (=> b!1853807 (= res!831701 (not (nullable!1564 (regex!3680 (h!25969 rules!865)))))))

(declare-fun b!1853808 () Bool)

(assert (=> b!1853808 (= e!1184844 (not (= (tag!4094 (h!25969 rules!865)) (String!23571 ""))))))

(assert (= (and d!566533 res!831700) b!1853807))

(assert (= (and b!1853807 res!831701) b!1853808))

(declare-fun m!2280629 () Bool)

(assert (=> d!566533 m!2280629))

(declare-fun m!2280631 () Bool)

(assert (=> b!1853807 m!2280631))

(assert (=> bs!410537 d!566533))

(declare-fun bs!410559 () Bool)

(declare-fun d!566535 () Bool)

(assert (= bs!410559 (and d!566535 d!566323)))

(declare-fun lambda!73298 () Int)

(assert (=> bs!410559 (= lambda!73298 lambda!73274)))

(declare-fun bs!410560 () Bool)

(assert (= bs!410560 (and d!566535 d!566383)))

(assert (=> bs!410560 (= lambda!73298 lambda!73290)))

(declare-fun bs!410561 () Bool)

(assert (= bs!410561 (and d!566535 d!566393)))

(assert (=> bs!410561 (= lambda!73298 lambda!73291)))

(declare-fun bs!410562 () Bool)

(assert (= bs!410562 (and d!566535 d!566423)))

(assert (=> bs!410562 (= lambda!73298 lambda!73295)))

(assert (=> d!566535 true))

(declare-fun lt!716707 () Bool)

(assert (=> d!566535 (= lt!716707 (forall!4399 (t!172467 rules!865) lambda!73298))))

(declare-fun e!1184845 () Bool)

(assert (=> d!566535 (= lt!716707 e!1184845)))

(declare-fun res!831703 () Bool)

(assert (=> d!566535 (=> res!831703 e!1184845)))

(assert (=> d!566535 (= res!831703 (not ((_ is Cons!20568) (t!172467 rules!865))))))

(assert (=> d!566535 (= (rulesValidInductive!1268 Lexer!3300 (t!172467 rules!865)) lt!716707)))

(declare-fun b!1853809 () Bool)

(declare-fun e!1184846 () Bool)

(assert (=> b!1853809 (= e!1184845 e!1184846)))

(declare-fun res!831702 () Bool)

(assert (=> b!1853809 (=> (not res!831702) (not e!1184846))))

(assert (=> b!1853809 (= res!831702 (ruleValid!1141 Lexer!3300 (h!25969 (t!172467 rules!865))))))

(declare-fun b!1853810 () Bool)

(assert (=> b!1853810 (= e!1184846 (rulesValidInductive!1268 Lexer!3300 (t!172467 (t!172467 rules!865))))))

(assert (= (and d!566535 (not res!831703)) b!1853809))

(assert (= (and b!1853809 res!831702) b!1853810))

(declare-fun m!2280633 () Bool)

(assert (=> d!566535 m!2280633))

(declare-fun m!2280635 () Bool)

(assert (=> b!1853809 m!2280635))

(declare-fun m!2280637 () Bool)

(assert (=> b!1853810 m!2280637))

(assert (=> b!1853425 d!566535))

(declare-fun b!1853811 () Bool)

(declare-fun e!1184848 () Int)

(declare-fun call!115389 () Int)

(assert (=> b!1853811 (= e!1184848 (- call!115389 0))))

(declare-fun bm!115384 () Bool)

(assert (=> bm!115384 (= call!115389 (size!16250 lt!716463))))

(declare-fun d!566537 () Bool)

(declare-fun e!1184847 () Bool)

(assert (=> d!566537 e!1184847))

(declare-fun res!831704 () Bool)

(assert (=> d!566537 (=> (not res!831704) (not e!1184847))))

(declare-fun lt!716708 () List!20647)

(assert (=> d!566537 (= res!831704 (= ((_ map implies) (content!3054 lt!716708) (content!3054 lt!716463)) ((as const (InoxSet Token!6912)) true)))))

(declare-fun e!1184849 () List!20647)

(assert (=> d!566537 (= lt!716708 e!1184849)))

(declare-fun c!302308 () Bool)

(assert (=> d!566537 (= c!302308 ((_ is Nil!20569) lt!716463))))

(assert (=> d!566537 (= (drop!982 lt!716463 0) lt!716708)))

(declare-fun b!1853812 () Bool)

(assert (=> b!1853812 (= e!1184849 Nil!20569)))

(declare-fun b!1853813 () Bool)

(declare-fun e!1184850 () Int)

(assert (=> b!1853813 (= e!1184850 e!1184848)))

(declare-fun c!302309 () Bool)

(assert (=> b!1853813 (= c!302309 (>= 0 call!115389))))

(declare-fun b!1853814 () Bool)

(declare-fun e!1184851 () List!20647)

(assert (=> b!1853814 (= e!1184849 e!1184851)))

(declare-fun c!302311 () Bool)

(assert (=> b!1853814 (= c!302311 (<= 0 0))))

(declare-fun b!1853815 () Bool)

(assert (=> b!1853815 (= e!1184847 (= (size!16250 lt!716708) e!1184850))))

(declare-fun c!302310 () Bool)

(assert (=> b!1853815 (= c!302310 (<= 0 0))))

(declare-fun b!1853816 () Bool)

(assert (=> b!1853816 (= e!1184850 call!115389)))

(declare-fun b!1853817 () Bool)

(assert (=> b!1853817 (= e!1184851 lt!716463)))

(declare-fun b!1853818 () Bool)

(assert (=> b!1853818 (= e!1184851 (drop!982 (t!172468 lt!716463) (- 0 1)))))

(declare-fun b!1853819 () Bool)

(assert (=> b!1853819 (= e!1184848 0)))

(assert (= (and d!566537 c!302308) b!1853812))

(assert (= (and d!566537 (not c!302308)) b!1853814))

(assert (= (and b!1853814 c!302311) b!1853817))

(assert (= (and b!1853814 (not c!302311)) b!1853818))

(assert (= (and d!566537 res!831704) b!1853815))

(assert (= (and b!1853815 c!302310) b!1853816))

(assert (= (and b!1853815 (not c!302310)) b!1853813))

(assert (= (and b!1853813 c!302309) b!1853819))

(assert (= (and b!1853813 (not c!302309)) b!1853811))

(assert (= (or b!1853816 b!1853813 b!1853811) bm!115384))

(assert (=> bm!115384 m!2279985))

(declare-fun m!2280639 () Bool)

(assert (=> d!566537 m!2280639))

(declare-fun m!2280641 () Bool)

(assert (=> d!566537 m!2280641))

(declare-fun m!2280643 () Bool)

(assert (=> b!1853815 m!2280643))

(declare-fun m!2280645 () Bool)

(assert (=> b!1853818 m!2280645))

(assert (=> d!566355 d!566537))

(declare-fun d!566539 () Bool)

(declare-fun res!831739 () Bool)

(declare-fun e!1184923 () Bool)

(assert (=> d!566539 (=> res!831739 e!1184923)))

(assert (=> d!566539 (= res!831739 (or (not ((_ is Cons!20569) (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))) (not ((_ is Cons!20569) (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))))))

(assert (=> d!566539 (= (tokensListTwoByTwoPredicateSeparableList!585 Lexer!3300 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))) e!1184923)))

(declare-fun b!1853931 () Bool)

(declare-fun e!1184922 () Bool)

(assert (=> b!1853931 (= e!1184923 e!1184922)))

(declare-fun res!831740 () Bool)

(assert (=> b!1853931 (=> (not res!831740) (not e!1184922))))

(assert (=> b!1853931 (= res!831740 (separableTokensPredicate!832 Lexer!3300 (h!25970 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)) (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(declare-fun lt!716763 () Unit!35177)

(declare-fun Unit!35185 () Unit!35177)

(assert (=> b!1853931 (= lt!716763 Unit!35185)))

(assert (=> b!1853931 (> (size!16249 (charsOf!2296 (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))) 0)))

(declare-fun lt!716766 () Unit!35177)

(declare-fun Unit!35186 () Unit!35177)

(assert (=> b!1853931 (= lt!716766 Unit!35186)))

(assert (=> b!1853931 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))))

(declare-fun lt!716760 () Unit!35177)

(declare-fun Unit!35187 () Unit!35177)

(assert (=> b!1853931 (= lt!716760 Unit!35187)))

(assert (=> b!1853931 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))

(declare-fun lt!716761 () Unit!35177)

(declare-fun lt!716764 () Unit!35177)

(assert (=> b!1853931 (= lt!716761 lt!716764)))

(assert (=> b!1853931 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))))

(assert (=> b!1853931 (= lt!716764 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))))

(declare-fun lt!716762 () Unit!35177)

(declare-fun lt!716765 () Unit!35177)

(assert (=> b!1853931 (= lt!716762 lt!716765)))

(assert (=> b!1853931 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))))

(assert (=> b!1853931 (= lt!716765 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!650 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (h!25970 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))))))

(declare-fun b!1853932 () Bool)

(assert (=> b!1853932 (= e!1184922 (tokensListTwoByTwoPredicateSeparableList!585 Lexer!3300 (Cons!20569 (h!25970 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0))) (t!172468 (t!172468 (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0)))) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (= (and d!566539 (not res!831739)) b!1853931))

(assert (= (and b!1853931 res!831740) b!1853932))

(assert (=> b!1853931 m!2279989))

(declare-fun m!2280811 () Bool)

(assert (=> b!1853931 m!2280811))

(declare-fun m!2280813 () Bool)

(assert (=> b!1853931 m!2280813))

(declare-fun m!2280815 () Bool)

(assert (=> b!1853931 m!2280815))

(declare-fun m!2280817 () Bool)

(assert (=> b!1853931 m!2280817))

(declare-fun m!2280819 () Bool)

(assert (=> b!1853931 m!2280819))

(declare-fun m!2280821 () Bool)

(assert (=> b!1853931 m!2280821))

(assert (=> b!1853931 m!2279989))

(declare-fun m!2280823 () Bool)

(assert (=> b!1853931 m!2280823))

(assert (=> b!1853931 m!2280813))

(declare-fun m!2280825 () Bool)

(assert (=> b!1853932 m!2280825))

(assert (=> d!566355 d!566539))

(declare-fun d!566589 () Bool)

(assert (=> d!566589 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716454)))

(declare-fun lt!716811 () Unit!35177)

(declare-fun choose!11669 (LexerInterface!3302 List!20646 List!20647 List!20647) Unit!35177)

(assert (=> d!566589 (= lt!716811 (choose!11669 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716480 lt!716454))))

(assert (=> d!566589 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566589 (= (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!74 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716480 lt!716454) lt!716811)))

(declare-fun bs!410578 () Bool)

(assert (= bs!410578 d!566589))

(assert (=> bs!410578 m!2279997))

(declare-fun m!2280971 () Bool)

(assert (=> bs!410578 m!2280971))

(assert (=> bs!410578 m!2279859))

(assert (=> d!566355 d!566589))

(declare-fun d!566625 () Bool)

(assert (=> d!566625 (subseq!389 (drop!982 lt!716463 0) lt!716463)))

(declare-fun lt!716814 () Unit!35177)

(declare-fun choose!11670 (List!20647 Int) Unit!35177)

(assert (=> d!566625 (= lt!716814 (choose!11670 lt!716463 0))))

(declare-fun e!1184967 () Bool)

(assert (=> d!566625 e!1184967))

(declare-fun res!831788 () Bool)

(assert (=> d!566625 (=> (not res!831788) (not e!1184967))))

(assert (=> d!566625 (= res!831788 (>= 0 0))))

(assert (=> d!566625 (= (lemmaDropSubSeq!74 lt!716463 0) lt!716814)))

(declare-fun b!1853983 () Bool)

(assert (=> b!1853983 (= e!1184967 (<= 0 (size!16250 lt!716463)))))

(assert (= (and d!566625 res!831788) b!1853983))

(assert (=> d!566625 m!2279999))

(assert (=> d!566625 m!2279999))

(assert (=> d!566625 m!2280001))

(declare-fun m!2280973 () Bool)

(assert (=> d!566625 m!2280973))

(assert (=> b!1853983 m!2279985))

(assert (=> d!566355 d!566625))

(assert (=> d!566355 d!566381))

(assert (=> d!566355 d!566529))

(declare-fun d!566627 () Bool)

(declare-fun res!831792 () Bool)

(declare-fun e!1184969 () Bool)

(assert (=> d!566627 (=> res!831792 e!1184969)))

(assert (=> d!566627 (= res!831792 ((_ is Nil!20569) (drop!982 lt!716463 0)))))

(assert (=> d!566627 (= (subseq!389 (drop!982 lt!716463 0) lt!716463) e!1184969)))

(declare-fun b!1853985 () Bool)

(declare-fun e!1184968 () Bool)

(declare-fun e!1184970 () Bool)

(assert (=> b!1853985 (= e!1184968 e!1184970)))

(declare-fun res!831789 () Bool)

(assert (=> b!1853985 (=> res!831789 e!1184970)))

(declare-fun e!1184971 () Bool)

(assert (=> b!1853985 (= res!831789 e!1184971)))

(declare-fun res!831791 () Bool)

(assert (=> b!1853985 (=> (not res!831791) (not e!1184971))))

(assert (=> b!1853985 (= res!831791 (= (h!25970 (drop!982 lt!716463 0)) (h!25970 lt!716463)))))

(declare-fun b!1853987 () Bool)

(assert (=> b!1853987 (= e!1184970 (subseq!389 (drop!982 lt!716463 0) (t!172468 lt!716463)))))

(declare-fun b!1853986 () Bool)

(assert (=> b!1853986 (= e!1184971 (subseq!389 (t!172468 (drop!982 lt!716463 0)) (t!172468 lt!716463)))))

(declare-fun b!1853984 () Bool)

(assert (=> b!1853984 (= e!1184969 e!1184968)))

(declare-fun res!831790 () Bool)

(assert (=> b!1853984 (=> (not res!831790) (not e!1184968))))

(assert (=> b!1853984 (= res!831790 ((_ is Cons!20569) lt!716463))))

(assert (= (and d!566627 (not res!831792)) b!1853984))

(assert (= (and b!1853984 res!831790) b!1853985))

(assert (= (and b!1853985 res!831791) b!1853986))

(assert (= (and b!1853985 (not res!831789)) b!1853987))

(assert (=> b!1853987 m!2279999))

(declare-fun m!2280975 () Bool)

(assert (=> b!1853987 m!2280975))

(declare-fun m!2280977 () Bool)

(assert (=> b!1853986 m!2280977))

(assert (=> d!566355 d!566627))

(declare-fun d!566629 () Bool)

(assert (=> d!566629 (= (dropList!754 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) 0) (drop!982 (list!8343 (c!302259 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) 0))))

(declare-fun bs!410579 () Bool)

(assert (= bs!410579 d!566629))

(assert (=> bs!410579 m!2280163))

(assert (=> bs!410579 m!2280163))

(declare-fun m!2280979 () Bool)

(assert (=> bs!410579 m!2280979))

(assert (=> d!566355 d!566629))

(declare-fun bs!410580 () Bool)

(declare-fun d!566631 () Bool)

(assert (= bs!410580 (and d!566631 d!566319)))

(declare-fun lambda!73302 () Int)

(assert (=> bs!410580 (= lambda!73302 lambda!73268)))

(declare-fun bs!410581 () Bool)

(assert (= bs!410581 (and d!566631 d!566369)))

(assert (=> bs!410581 (= lambda!73302 lambda!73287)))

(declare-fun bs!410582 () Bool)

(assert (= bs!410582 (and d!566631 d!566427)))

(assert (=> bs!410582 (= lambda!73302 lambda!73296)))

(declare-fun b!1853992 () Bool)

(declare-fun e!1184976 () Bool)

(assert (=> b!1853992 (= e!1184976 true)))

(declare-fun b!1853991 () Bool)

(declare-fun e!1184975 () Bool)

(assert (=> b!1853991 (= e!1184975 e!1184976)))

(declare-fun b!1853990 () Bool)

(declare-fun e!1184974 () Bool)

(assert (=> b!1853990 (= e!1184974 e!1184975)))

(assert (=> d!566631 e!1184974))

(assert (= b!1853991 b!1853992))

(assert (= b!1853990 b!1853991))

(assert (= (and d!566631 ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) b!1853990))

(assert (=> b!1853992 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73302))))

(assert (=> b!1853992 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73302))))

(assert (=> d!566631 true))

(declare-fun lt!716815 () Bool)

(assert (=> d!566631 (= lt!716815 (forall!4397 lt!716454 lambda!73302))))

(declare-fun e!1184972 () Bool)

(assert (=> d!566631 (= lt!716815 e!1184972)))

(declare-fun res!831793 () Bool)

(assert (=> d!566631 (=> res!831793 e!1184972)))

(assert (=> d!566631 (= res!831793 (not ((_ is Cons!20569) lt!716454)))))

(assert (=> d!566631 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566631 (= (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716454) lt!716815)))

(declare-fun b!1853988 () Bool)

(declare-fun e!1184973 () Bool)

(assert (=> b!1853988 (= e!1184972 e!1184973)))

(declare-fun res!831794 () Bool)

(assert (=> b!1853988 (=> (not res!831794) (not e!1184973))))

(assert (=> b!1853988 (= res!831794 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 lt!716454)))))

(declare-fun b!1853989 () Bool)

(assert (=> b!1853989 (= e!1184973 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (t!172468 lt!716454)))))

(assert (= (and d!566631 (not res!831793)) b!1853988))

(assert (= (and b!1853988 res!831794) b!1853989))

(declare-fun m!2280981 () Bool)

(assert (=> d!566631 m!2280981))

(assert (=> d!566631 m!2279859))

(declare-fun m!2280983 () Bool)

(assert (=> b!1853988 m!2280983))

(declare-fun m!2280985 () Bool)

(assert (=> b!1853989 m!2280985))

(assert (=> d!566355 d!566631))

(declare-fun d!566633 () Bool)

(assert (=> d!566633 true))

(assert (=> d!566633 true))

(declare-fun res!831797 () Bool)

(assert (=> d!566633 (= (choose!11661 lambda!73263) res!831797)))

(assert (=> d!566367 d!566633))

(assert (=> b!1853424 d!566533))

(declare-fun d!566635 () Bool)

(assert (=> d!566635 true))

(assert (=> d!566635 true))

(declare-fun res!831800 () Bool)

(assert (=> d!566635 (= (choose!11662 lambda!73271) res!831800)))

(assert (=> d!566387 d!566635))

(declare-fun d!566637 () Bool)

(declare-fun lt!716818 () Int)

(assert (=> d!566637 (>= lt!716818 0)))

(declare-fun e!1184979 () Int)

(assert (=> d!566637 (= lt!716818 e!1184979)))

(declare-fun c!302350 () Bool)

(assert (=> d!566637 (= c!302350 ((_ is Nil!20569) lt!716463))))

(assert (=> d!566637 (= (size!16250 lt!716463) lt!716818)))

(declare-fun b!1853997 () Bool)

(assert (=> b!1853997 (= e!1184979 0)))

(declare-fun b!1853998 () Bool)

(assert (=> b!1853998 (= e!1184979 (+ 1 (size!16250 (t!172468 lt!716463))))))

(assert (= (and d!566637 c!302350) b!1853997))

(assert (= (and d!566637 (not c!302350)) b!1853998))

(declare-fun m!2280987 () Bool)

(assert (=> b!1853998 m!2280987))

(assert (=> b!1853254 d!566637))

(declare-fun bs!410583 () Bool)

(declare-fun d!566639 () Bool)

(assert (= bs!410583 (and d!566639 d!566319)))

(declare-fun lambda!73303 () Int)

(assert (=> bs!410583 (= lambda!73303 lambda!73268)))

(declare-fun bs!410584 () Bool)

(assert (= bs!410584 (and d!566639 d!566369)))

(assert (=> bs!410584 (= lambda!73303 lambda!73287)))

(declare-fun bs!410585 () Bool)

(assert (= bs!410585 (and d!566639 d!566427)))

(assert (=> bs!410585 (= lambda!73303 lambda!73296)))

(declare-fun bs!410586 () Bool)

(assert (= bs!410586 (and d!566639 d!566631)))

(assert (=> bs!410586 (= lambda!73303 lambda!73302)))

(declare-fun b!1854003 () Bool)

(declare-fun e!1184984 () Bool)

(assert (=> b!1854003 (= e!1184984 true)))

(declare-fun b!1854002 () Bool)

(declare-fun e!1184983 () Bool)

(assert (=> b!1854002 (= e!1184983 e!1184984)))

(declare-fun b!1854001 () Bool)

(declare-fun e!1184982 () Bool)

(assert (=> b!1854001 (= e!1184982 e!1184983)))

(assert (=> d!566639 e!1184982))

(assert (= b!1854002 b!1854003))

(assert (= b!1854001 b!1854002))

(assert (= (and d!566639 ((_ is Cons!20568) (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) b!1854001))

(assert (=> b!1854003 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73303))))

(assert (=> b!1854003 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (dynLambda!10179 order!13217 lambda!73303))))

(assert (=> d!566639 true))

(declare-fun lt!716819 () Bool)

(assert (=> d!566639 (= lt!716819 (forall!4397 lt!716480 lambda!73303))))

(declare-fun e!1184980 () Bool)

(assert (=> d!566639 (= lt!716819 e!1184980)))

(declare-fun res!831801 () Bool)

(assert (=> d!566639 (=> res!831801 e!1184980)))

(assert (=> d!566639 (= res!831801 (not ((_ is Cons!20569) lt!716480)))))

(assert (=> d!566639 (not (isEmpty!12819 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))

(assert (=> d!566639 (= (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) lt!716480) lt!716819)))

(declare-fun b!1853999 () Bool)

(declare-fun e!1184981 () Bool)

(assert (=> b!1853999 (= e!1184980 e!1184981)))

(declare-fun res!831802 () Bool)

(assert (=> b!1853999 (=> (not res!831802) (not e!1184981))))

(assert (=> b!1853999 (= res!831802 (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 lt!716480)))))

(declare-fun b!1854000 () Bool)

(assert (=> b!1854000 (= e!1184981 (rulesProduceEachTokenIndividuallyList!1096 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (t!172468 lt!716480)))))

(assert (= (and d!566639 (not res!831801)) b!1853999))

(assert (= (and b!1853999 res!831802) b!1854000))

(declare-fun m!2280989 () Bool)

(assert (=> d!566639 m!2280989))

(assert (=> d!566639 m!2279859))

(declare-fun m!2280991 () Bool)

(assert (=> b!1853999 m!2280991))

(declare-fun m!2280993 () Bool)

(assert (=> b!1854000 m!2280993))

(assert (=> b!1853253 d!566639))

(assert (=> b!1853252 d!566325))

(declare-fun b!1854005 () Bool)

(declare-fun e!1184985 () Bool)

(declare-fun tp!525747 () Bool)

(declare-fun tp!525749 () Bool)

(assert (=> b!1854005 (= e!1184985 (and tp!525747 tp!525749))))

(declare-fun b!1854006 () Bool)

(declare-fun tp!525748 () Bool)

(assert (=> b!1854006 (= e!1184985 tp!525748)))

(declare-fun b!1854007 () Bool)

(declare-fun tp!525751 () Bool)

(declare-fun tp!525750 () Bool)

(assert (=> b!1854007 (= e!1184985 (and tp!525751 tp!525750))))

(assert (=> b!1853504 (= tp!525651 e!1184985)))

(declare-fun b!1854004 () Bool)

(assert (=> b!1854004 (= e!1184985 tp_is_empty!8507)))

(assert (= (and b!1853504 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854004))

(assert (= (and b!1853504 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854005))

(assert (= (and b!1853504 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854006))

(assert (= (and b!1853504 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854007))

(declare-fun b!1854009 () Bool)

(declare-fun e!1184986 () Bool)

(declare-fun tp!525752 () Bool)

(declare-fun tp!525754 () Bool)

(assert (=> b!1854009 (= e!1184986 (and tp!525752 tp!525754))))

(declare-fun b!1854010 () Bool)

(declare-fun tp!525753 () Bool)

(assert (=> b!1854010 (= e!1184986 tp!525753)))

(declare-fun b!1854011 () Bool)

(declare-fun tp!525756 () Bool)

(declare-fun tp!525755 () Bool)

(assert (=> b!1854011 (= e!1184986 (and tp!525756 tp!525755))))

(assert (=> b!1853504 (= tp!525650 e!1184986)))

(declare-fun b!1854008 () Bool)

(assert (=> b!1854008 (= e!1184986 tp_is_empty!8507)))

(assert (= (and b!1853504 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854008))

(assert (= (and b!1853504 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854009))

(assert (= (and b!1853504 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854010))

(assert (= (and b!1853504 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854011))

(declare-fun b!1854013 () Bool)

(declare-fun e!1184987 () Bool)

(declare-fun tp!525757 () Bool)

(declare-fun tp!525759 () Bool)

(assert (=> b!1854013 (= e!1184987 (and tp!525757 tp!525759))))

(declare-fun b!1854014 () Bool)

(declare-fun tp!525758 () Bool)

(assert (=> b!1854014 (= e!1184987 tp!525758)))

(declare-fun b!1854015 () Bool)

(declare-fun tp!525761 () Bool)

(declare-fun tp!525760 () Bool)

(assert (=> b!1854015 (= e!1184987 (and tp!525761 tp!525760))))

(assert (=> b!1853561 (= tp!525717 e!1184987)))

(declare-fun b!1854012 () Bool)

(assert (=> b!1854012 (= e!1184987 tp_is_empty!8507)))

(assert (= (and b!1853561 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854012))

(assert (= (and b!1853561 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854013))

(assert (= (and b!1853561 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854014))

(assert (= (and b!1853561 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854015))

(declare-fun b!1854017 () Bool)

(declare-fun e!1184988 () Bool)

(declare-fun tp!525762 () Bool)

(declare-fun tp!525764 () Bool)

(assert (=> b!1854017 (= e!1184988 (and tp!525762 tp!525764))))

(declare-fun b!1854018 () Bool)

(declare-fun tp!525763 () Bool)

(assert (=> b!1854018 (= e!1184988 tp!525763)))

(declare-fun b!1854019 () Bool)

(declare-fun tp!525766 () Bool)

(declare-fun tp!525765 () Bool)

(assert (=> b!1854019 (= e!1184988 (and tp!525766 tp!525765))))

(assert (=> b!1853561 (= tp!525719 e!1184988)))

(declare-fun b!1854016 () Bool)

(assert (=> b!1854016 (= e!1184988 tp_is_empty!8507)))

(assert (= (and b!1853561 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854016))

(assert (= (and b!1853561 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854017))

(assert (= (and b!1853561 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854018))

(assert (= (and b!1853561 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854019))

(declare-fun b!1854022 () Bool)

(declare-fun e!1184991 () Bool)

(assert (=> b!1854022 (= e!1184991 true)))

(declare-fun b!1854021 () Bool)

(declare-fun e!1184990 () Bool)

(assert (=> b!1854021 (= e!1184990 e!1184991)))

(declare-fun b!1854020 () Bool)

(declare-fun e!1184989 () Bool)

(assert (=> b!1854020 (= e!1184989 e!1184990)))

(assert (=> b!1853553 e!1184989))

(assert (= b!1854021 b!1854022))

(assert (= b!1854020 b!1854021))

(assert (= (and b!1853553 ((_ is Cons!20568) (t!172467 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) b!1854020))

(assert (=> b!1854022 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))) (dynLambda!10179 order!13217 lambda!73268))))

(assert (=> b!1854022 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))) (dynLambda!10179 order!13217 lambda!73268))))

(declare-fun b!1854024 () Bool)

(declare-fun e!1184992 () Bool)

(declare-fun tp!525767 () Bool)

(declare-fun tp!525769 () Bool)

(assert (=> b!1854024 (= e!1184992 (and tp!525767 tp!525769))))

(declare-fun b!1854025 () Bool)

(declare-fun tp!525768 () Bool)

(assert (=> b!1854025 (= e!1184992 tp!525768)))

(declare-fun b!1854026 () Bool)

(declare-fun tp!525771 () Bool)

(declare-fun tp!525770 () Bool)

(assert (=> b!1854026 (= e!1184992 (and tp!525771 tp!525770))))

(assert (=> b!1853527 (= tp!525678 e!1184992)))

(declare-fun b!1854023 () Bool)

(assert (=> b!1854023 (= e!1184992 tp_is_empty!8507)))

(assert (= (and b!1853527 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854023))

(assert (= (and b!1853527 ((_ is Concat!8840) (reg!5372 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854024))

(assert (= (and b!1853527 ((_ is Star!5043) (reg!5372 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854025))

(assert (= (and b!1853527 ((_ is Union!5043) (reg!5372 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854026))

(declare-fun b!1854028 () Bool)

(declare-fun e!1184993 () Bool)

(declare-fun tp!525772 () Bool)

(declare-fun tp!525774 () Bool)

(assert (=> b!1854028 (= e!1184993 (and tp!525772 tp!525774))))

(declare-fun b!1854029 () Bool)

(declare-fun tp!525773 () Bool)

(assert (=> b!1854029 (= e!1184993 tp!525773)))

(declare-fun b!1854030 () Bool)

(declare-fun tp!525776 () Bool)

(declare-fun tp!525775 () Bool)

(assert (=> b!1854030 (= e!1184993 (and tp!525776 tp!525775))))

(assert (=> b!1853518 (= tp!525667 e!1184993)))

(declare-fun b!1854027 () Bool)

(assert (=> b!1854027 (= e!1184993 tp_is_empty!8507)))

(assert (= (and b!1853518 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854027))

(assert (= (and b!1853518 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854028))

(assert (= (and b!1853518 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854029))

(assert (= (and b!1853518 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854030))

(declare-fun b!1854032 () Bool)

(declare-fun e!1184994 () Bool)

(declare-fun tp!525777 () Bool)

(declare-fun tp!525779 () Bool)

(assert (=> b!1854032 (= e!1184994 (and tp!525777 tp!525779))))

(declare-fun b!1854033 () Bool)

(declare-fun tp!525778 () Bool)

(assert (=> b!1854033 (= e!1184994 tp!525778)))

(declare-fun b!1854034 () Bool)

(declare-fun tp!525781 () Bool)

(declare-fun tp!525780 () Bool)

(assert (=> b!1854034 (= e!1184994 (and tp!525781 tp!525780))))

(assert (=> b!1853518 (= tp!525669 e!1184994)))

(declare-fun b!1854031 () Bool)

(assert (=> b!1854031 (= e!1184994 tp_is_empty!8507)))

(assert (= (and b!1853518 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854031))

(assert (= (and b!1853518 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854032))

(assert (= (and b!1853518 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854033))

(assert (= (and b!1853518 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854034))

(declare-fun b!1854036 () Bool)

(declare-fun e!1184995 () Bool)

(declare-fun tp!525782 () Bool)

(declare-fun tp!525784 () Bool)

(assert (=> b!1854036 (= e!1184995 (and tp!525782 tp!525784))))

(declare-fun b!1854037 () Bool)

(declare-fun tp!525783 () Bool)

(assert (=> b!1854037 (= e!1184995 tp!525783)))

(declare-fun b!1854038 () Bool)

(declare-fun tp!525786 () Bool)

(declare-fun tp!525785 () Bool)

(assert (=> b!1854038 (= e!1184995 (and tp!525786 tp!525785))))

(assert (=> b!1853572 (= tp!525731 e!1184995)))

(declare-fun b!1854035 () Bool)

(assert (=> b!1854035 (= e!1184995 tp_is_empty!8507)))

(assert (= (and b!1853572 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854035))

(assert (= (and b!1853572 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854036))

(assert (= (and b!1853572 ((_ is Star!5043) (regOne!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854037))

(assert (= (and b!1853572 ((_ is Union!5043) (regOne!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854038))

(declare-fun b!1854040 () Bool)

(declare-fun e!1184996 () Bool)

(declare-fun tp!525787 () Bool)

(declare-fun tp!525789 () Bool)

(assert (=> b!1854040 (= e!1184996 (and tp!525787 tp!525789))))

(declare-fun b!1854041 () Bool)

(declare-fun tp!525788 () Bool)

(assert (=> b!1854041 (= e!1184996 tp!525788)))

(declare-fun b!1854042 () Bool)

(declare-fun tp!525791 () Bool)

(declare-fun tp!525790 () Bool)

(assert (=> b!1854042 (= e!1184996 (and tp!525791 tp!525790))))

(assert (=> b!1853572 (= tp!525733 e!1184996)))

(declare-fun b!1854039 () Bool)

(assert (=> b!1854039 (= e!1184996 tp_is_empty!8507)))

(assert (= (and b!1853572 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854039))

(assert (= (and b!1853572 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854040))

(assert (= (and b!1853572 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854041))

(assert (= (and b!1853572 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854042))

(declare-fun b!1854044 () Bool)

(declare-fun e!1184997 () Bool)

(declare-fun tp!525792 () Bool)

(declare-fun tp!525794 () Bool)

(assert (=> b!1854044 (= e!1184997 (and tp!525792 tp!525794))))

(declare-fun b!1854045 () Bool)

(declare-fun tp!525793 () Bool)

(assert (=> b!1854045 (= e!1184997 tp!525793)))

(declare-fun b!1854046 () Bool)

(declare-fun tp!525796 () Bool)

(declare-fun tp!525795 () Bool)

(assert (=> b!1854046 (= e!1184997 (and tp!525796 tp!525795))))

(assert (=> b!1853495 (= tp!525638 e!1184997)))

(declare-fun b!1854043 () Bool)

(assert (=> b!1854043 (= e!1184997 tp_is_empty!8507)))

(assert (= (and b!1853495 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854043))

(assert (= (and b!1853495 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854044))

(assert (= (and b!1853495 ((_ is Star!5043) (reg!5372 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854045))

(assert (= (and b!1853495 ((_ is Union!5043) (reg!5372 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854046))

(declare-fun b!1854048 () Bool)

(declare-fun e!1184998 () Bool)

(declare-fun tp!525797 () Bool)

(declare-fun tp!525799 () Bool)

(assert (=> b!1854048 (= e!1184998 (and tp!525797 tp!525799))))

(declare-fun b!1854049 () Bool)

(declare-fun tp!525798 () Bool)

(assert (=> b!1854049 (= e!1184998 tp!525798)))

(declare-fun b!1854050 () Bool)

(declare-fun tp!525801 () Bool)

(declare-fun tp!525800 () Bool)

(assert (=> b!1854050 (= e!1184998 (and tp!525801 tp!525800))))

(assert (=> b!1853486 (= tp!525627 e!1184998)))

(declare-fun b!1854047 () Bool)

(assert (=> b!1854047 (= e!1184998 tp_is_empty!8507)))

(assert (= (and b!1853486 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854047))

(assert (= (and b!1853486 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854048))

(assert (= (and b!1853486 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854049))

(assert (= (and b!1853486 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854050))

(declare-fun b!1854052 () Bool)

(declare-fun e!1184999 () Bool)

(declare-fun tp!525802 () Bool)

(declare-fun tp!525804 () Bool)

(assert (=> b!1854052 (= e!1184999 (and tp!525802 tp!525804))))

(declare-fun b!1854053 () Bool)

(declare-fun tp!525803 () Bool)

(assert (=> b!1854053 (= e!1184999 tp!525803)))

(declare-fun b!1854054 () Bool)

(declare-fun tp!525806 () Bool)

(declare-fun tp!525805 () Bool)

(assert (=> b!1854054 (= e!1184999 (and tp!525806 tp!525805))))

(assert (=> b!1853486 (= tp!525629 e!1184999)))

(declare-fun b!1854051 () Bool)

(assert (=> b!1854051 (= e!1184999 tp_is_empty!8507)))

(assert (= (and b!1853486 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854051))

(assert (= (and b!1853486 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854052))

(assert (= (and b!1853486 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854053))

(assert (= (and b!1853486 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854054))

(declare-fun b!1854056 () Bool)

(declare-fun e!1185000 () Bool)

(declare-fun tp!525807 () Bool)

(declare-fun tp!525809 () Bool)

(assert (=> b!1854056 (= e!1185000 (and tp!525807 tp!525809))))

(declare-fun b!1854057 () Bool)

(declare-fun tp!525808 () Bool)

(assert (=> b!1854057 (= e!1185000 tp!525808)))

(declare-fun b!1854058 () Bool)

(declare-fun tp!525811 () Bool)

(declare-fun tp!525810 () Bool)

(assert (=> b!1854058 (= e!1185000 (and tp!525811 tp!525810))))

(assert (=> b!1853566 (= tp!525723 e!1185000)))

(declare-fun b!1854055 () Bool)

(assert (=> b!1854055 (= e!1185000 tp_is_empty!8507)))

(assert (= (and b!1853566 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854055))

(assert (= (and b!1853566 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854056))

(assert (= (and b!1853566 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854057))

(assert (= (and b!1853566 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854058))

(declare-fun b!1854060 () Bool)

(declare-fun e!1185001 () Bool)

(declare-fun tp!525812 () Bool)

(declare-fun tp!525814 () Bool)

(assert (=> b!1854060 (= e!1185001 (and tp!525812 tp!525814))))

(declare-fun b!1854061 () Bool)

(declare-fun tp!525813 () Bool)

(assert (=> b!1854061 (= e!1185001 tp!525813)))

(declare-fun b!1854062 () Bool)

(declare-fun tp!525816 () Bool)

(declare-fun tp!525815 () Bool)

(assert (=> b!1854062 (= e!1185001 (and tp!525816 tp!525815))))

(assert (=> b!1853507 (= tp!525653 e!1185001)))

(declare-fun b!1854059 () Bool)

(assert (=> b!1854059 (= e!1185001 tp_is_empty!8507)))

(assert (= (and b!1853507 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854059))

(assert (= (and b!1853507 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854060))

(assert (= (and b!1853507 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854061))

(assert (= (and b!1853507 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854062))

(declare-fun b!1854064 () Bool)

(declare-fun e!1185002 () Bool)

(declare-fun tp!525817 () Bool)

(declare-fun tp!525819 () Bool)

(assert (=> b!1854064 (= e!1185002 (and tp!525817 tp!525819))))

(declare-fun b!1854065 () Bool)

(declare-fun tp!525818 () Bool)

(assert (=> b!1854065 (= e!1185002 tp!525818)))

(declare-fun b!1854066 () Bool)

(declare-fun tp!525821 () Bool)

(declare-fun tp!525820 () Bool)

(assert (=> b!1854066 (= e!1185002 (and tp!525821 tp!525820))))

(assert (=> b!1853498 (= tp!525642 e!1185002)))

(declare-fun b!1854063 () Bool)

(assert (=> b!1854063 (= e!1185002 tp_is_empty!8507)))

(assert (= (and b!1853498 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854063))

(assert (= (and b!1853498 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854064))

(assert (= (and b!1853498 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854065))

(assert (= (and b!1853498 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854066))

(declare-fun b!1854068 () Bool)

(declare-fun e!1185003 () Bool)

(declare-fun tp!525822 () Bool)

(declare-fun tp!525824 () Bool)

(assert (=> b!1854068 (= e!1185003 (and tp!525822 tp!525824))))

(declare-fun b!1854069 () Bool)

(declare-fun tp!525823 () Bool)

(assert (=> b!1854069 (= e!1185003 tp!525823)))

(declare-fun b!1854070 () Bool)

(declare-fun tp!525826 () Bool)

(declare-fun tp!525825 () Bool)

(assert (=> b!1854070 (= e!1185003 (and tp!525826 tp!525825))))

(assert (=> b!1853498 (= tp!525644 e!1185003)))

(declare-fun b!1854067 () Bool)

(assert (=> b!1854067 (= e!1185003 tp_is_empty!8507)))

(assert (= (and b!1853498 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854067))

(assert (= (and b!1853498 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854068))

(assert (= (and b!1853498 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854069))

(assert (= (and b!1853498 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854070))

(declare-fun b!1854072 () Bool)

(declare-fun e!1185004 () Bool)

(declare-fun tp!525827 () Bool)

(declare-fun tp!525829 () Bool)

(assert (=> b!1854072 (= e!1185004 (and tp!525827 tp!525829))))

(declare-fun b!1854073 () Bool)

(declare-fun tp!525828 () Bool)

(assert (=> b!1854073 (= e!1185004 tp!525828)))

(declare-fun b!1854074 () Bool)

(declare-fun tp!525831 () Bool)

(declare-fun tp!525830 () Bool)

(assert (=> b!1854074 (= e!1185004 (and tp!525831 tp!525830))))

(assert (=> b!1853516 (= tp!525666 e!1185004)))

(declare-fun b!1854071 () Bool)

(assert (=> b!1854071 (= e!1185004 tp_is_empty!8507)))

(assert (= (and b!1853516 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854071))

(assert (= (and b!1853516 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854072))

(assert (= (and b!1853516 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854073))

(assert (= (and b!1853516 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854074))

(declare-fun b!1854076 () Bool)

(declare-fun e!1185005 () Bool)

(declare-fun tp!525832 () Bool)

(declare-fun tp!525834 () Bool)

(assert (=> b!1854076 (= e!1185005 (and tp!525832 tp!525834))))

(declare-fun b!1854077 () Bool)

(declare-fun tp!525833 () Bool)

(assert (=> b!1854077 (= e!1185005 tp!525833)))

(declare-fun b!1854078 () Bool)

(declare-fun tp!525836 () Bool)

(declare-fun tp!525835 () Bool)

(assert (=> b!1854078 (= e!1185005 (and tp!525836 tp!525835))))

(assert (=> b!1853516 (= tp!525665 e!1185005)))

(declare-fun b!1854075 () Bool)

(assert (=> b!1854075 (= e!1185005 tp_is_empty!8507)))

(assert (= (and b!1853516 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854075))

(assert (= (and b!1853516 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854076))

(assert (= (and b!1853516 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854077))

(assert (= (and b!1853516 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854078))

(declare-fun b!1854080 () Bool)

(declare-fun e!1185006 () Bool)

(declare-fun tp!525837 () Bool)

(declare-fun tp!525839 () Bool)

(assert (=> b!1854080 (= e!1185006 (and tp!525837 tp!525839))))

(declare-fun b!1854081 () Bool)

(declare-fun tp!525838 () Bool)

(assert (=> b!1854081 (= e!1185006 tp!525838)))

(declare-fun b!1854082 () Bool)

(declare-fun tp!525841 () Bool)

(declare-fun tp!525840 () Bool)

(assert (=> b!1854082 (= e!1185006 (and tp!525841 tp!525840))))

(assert (=> b!1853456 (= tp!525591 e!1185006)))

(declare-fun b!1854079 () Bool)

(assert (=> b!1854079 (= e!1185006 tp_is_empty!8507)))

(assert (= (and b!1853456 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854079))

(assert (= (and b!1853456 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854080))

(assert (= (and b!1853456 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854081))

(assert (= (and b!1853456 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854082))

(declare-fun b!1854084 () Bool)

(declare-fun e!1185007 () Bool)

(declare-fun tp!525842 () Bool)

(declare-fun tp!525844 () Bool)

(assert (=> b!1854084 (= e!1185007 (and tp!525842 tp!525844))))

(declare-fun b!1854085 () Bool)

(declare-fun tp!525843 () Bool)

(assert (=> b!1854085 (= e!1185007 tp!525843)))

(declare-fun b!1854086 () Bool)

(declare-fun tp!525846 () Bool)

(declare-fun tp!525845 () Bool)

(assert (=> b!1854086 (= e!1185007 (and tp!525846 tp!525845))))

(assert (=> b!1853456 (= tp!525590 e!1185007)))

(declare-fun b!1854083 () Bool)

(assert (=> b!1854083 (= e!1185007 tp_is_empty!8507)))

(assert (= (and b!1853456 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854083))

(assert (= (and b!1853456 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854084))

(assert (= (and b!1853456 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854085))

(assert (= (and b!1853456 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854086))

(declare-fun b!1854088 () Bool)

(declare-fun e!1185008 () Bool)

(declare-fun tp!525847 () Bool)

(declare-fun tp!525849 () Bool)

(assert (=> b!1854088 (= e!1185008 (and tp!525847 tp!525849))))

(declare-fun b!1854089 () Bool)

(declare-fun tp!525848 () Bool)

(assert (=> b!1854089 (= e!1185008 tp!525848)))

(declare-fun b!1854090 () Bool)

(declare-fun tp!525851 () Bool)

(declare-fun tp!525850 () Bool)

(assert (=> b!1854090 (= e!1185008 (and tp!525851 tp!525850))))

(assert (=> b!1853573 (= tp!525732 e!1185008)))

(declare-fun b!1854087 () Bool)

(assert (=> b!1854087 (= e!1185008 tp_is_empty!8507)))

(assert (= (and b!1853573 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854087))

(assert (= (and b!1853573 ((_ is Concat!8840) (reg!5372 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854088))

(assert (= (and b!1853573 ((_ is Star!5043) (reg!5372 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854089))

(assert (= (and b!1853573 ((_ is Union!5043) (reg!5372 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854090))

(declare-fun b!1854092 () Bool)

(declare-fun e!1185009 () Bool)

(declare-fun tp!525852 () Bool)

(declare-fun tp!525854 () Bool)

(assert (=> b!1854092 (= e!1185009 (and tp!525852 tp!525854))))

(declare-fun b!1854093 () Bool)

(declare-fun tp!525853 () Bool)

(assert (=> b!1854093 (= e!1185009 tp!525853)))

(declare-fun b!1854094 () Bool)

(declare-fun tp!525856 () Bool)

(declare-fun tp!525855 () Bool)

(assert (=> b!1854094 (= e!1185009 (and tp!525856 tp!525855))))

(assert (=> b!1853543 (= tp!525698 e!1185009)))

(declare-fun b!1854091 () Bool)

(assert (=> b!1854091 (= e!1185009 tp_is_empty!8507)))

(assert (= (and b!1853543 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854091))

(assert (= (and b!1853543 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854092))

(assert (= (and b!1853543 ((_ is Star!5043) (reg!5372 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854093))

(assert (= (and b!1853543 ((_ is Union!5043) (reg!5372 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854094))

(declare-fun b!1854096 () Bool)

(declare-fun e!1185010 () Bool)

(declare-fun tp!525857 () Bool)

(declare-fun tp!525859 () Bool)

(assert (=> b!1854096 (= e!1185010 (and tp!525857 tp!525859))))

(declare-fun b!1854097 () Bool)

(declare-fun tp!525858 () Bool)

(assert (=> b!1854097 (= e!1185010 tp!525858)))

(declare-fun b!1854098 () Bool)

(declare-fun tp!525861 () Bool)

(declare-fun tp!525860 () Bool)

(assert (=> b!1854098 (= e!1185010 (and tp!525861 tp!525860))))

(assert (=> b!1853536 (= tp!525691 e!1185010)))

(declare-fun b!1854095 () Bool)

(assert (=> b!1854095 (= e!1185010 tp_is_empty!8507)))

(assert (= (and b!1853536 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854095))

(assert (= (and b!1853536 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854096))

(assert (= (and b!1853536 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854097))

(assert (= (and b!1853536 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854098))

(declare-fun b!1854100 () Bool)

(declare-fun e!1185011 () Bool)

(declare-fun tp!525862 () Bool)

(declare-fun tp!525864 () Bool)

(assert (=> b!1854100 (= e!1185011 (and tp!525862 tp!525864))))

(declare-fun b!1854101 () Bool)

(declare-fun tp!525863 () Bool)

(assert (=> b!1854101 (= e!1185011 tp!525863)))

(declare-fun b!1854102 () Bool)

(declare-fun tp!525866 () Bool)

(declare-fun tp!525865 () Bool)

(assert (=> b!1854102 (= e!1185011 (and tp!525866 tp!525865))))

(assert (=> b!1853536 (= tp!525690 e!1185011)))

(declare-fun b!1854099 () Bool)

(assert (=> b!1854099 (= e!1185011 tp_is_empty!8507)))

(assert (= (and b!1853536 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854099))

(assert (= (and b!1853536 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854100))

(assert (= (and b!1853536 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854101))

(assert (= (and b!1853536 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854102))

(declare-fun b!1854104 () Bool)

(declare-fun e!1185012 () Bool)

(declare-fun tp!525867 () Bool)

(declare-fun tp!525869 () Bool)

(assert (=> b!1854104 (= e!1185012 (and tp!525867 tp!525869))))

(declare-fun b!1854105 () Bool)

(declare-fun tp!525868 () Bool)

(assert (=> b!1854105 (= e!1185012 tp!525868)))

(declare-fun b!1854106 () Bool)

(declare-fun tp!525871 () Bool)

(declare-fun tp!525870 () Bool)

(assert (=> b!1854106 (= e!1185012 (and tp!525871 tp!525870))))

(assert (=> b!1853458 (= tp!525592 e!1185012)))

(declare-fun b!1854103 () Bool)

(assert (=> b!1854103 (= e!1185012 tp_is_empty!8507)))

(assert (= (and b!1853458 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854103))

(assert (= (and b!1853458 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854104))

(assert (= (and b!1853458 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854105))

(assert (= (and b!1853458 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854106))

(declare-fun b!1854108 () Bool)

(declare-fun e!1185013 () Bool)

(declare-fun tp!525872 () Bool)

(declare-fun tp!525874 () Bool)

(assert (=> b!1854108 (= e!1185013 (and tp!525872 tp!525874))))

(declare-fun b!1854109 () Bool)

(declare-fun tp!525873 () Bool)

(assert (=> b!1854109 (= e!1185013 tp!525873)))

(declare-fun b!1854110 () Bool)

(declare-fun tp!525876 () Bool)

(declare-fun tp!525875 () Bool)

(assert (=> b!1854110 (= e!1185013 (and tp!525876 tp!525875))))

(assert (=> b!1853458 (= tp!525594 e!1185013)))

(declare-fun b!1854107 () Bool)

(assert (=> b!1854107 (= e!1185013 tp_is_empty!8507)))

(assert (= (and b!1853458 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854107))

(assert (= (and b!1853458 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854108))

(assert (= (and b!1853458 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854109))

(assert (= (and b!1853458 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854110))

(declare-fun b!1854112 () Bool)

(declare-fun e!1185014 () Bool)

(declare-fun tp!525877 () Bool)

(declare-fun tp!525879 () Bool)

(assert (=> b!1854112 (= e!1185014 (and tp!525877 tp!525879))))

(declare-fun b!1854113 () Bool)

(declare-fun tp!525878 () Bool)

(assert (=> b!1854113 (= e!1185014 tp!525878)))

(declare-fun b!1854114 () Bool)

(declare-fun tp!525881 () Bool)

(declare-fun tp!525880 () Bool)

(assert (=> b!1854114 (= e!1185014 (and tp!525881 tp!525880))))

(assert (=> b!1853552 (= tp!525711 e!1185014)))

(declare-fun b!1854111 () Bool)

(assert (=> b!1854111 (= e!1185014 tp_is_empty!8507)))

(assert (= (and b!1853552 ((_ is ElementMatch!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854111))

(assert (= (and b!1853552 ((_ is Concat!8840) (regOne!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854112))

(assert (= (and b!1853552 ((_ is Star!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854113))

(assert (= (and b!1853552 ((_ is Union!5043) (regOne!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854114))

(declare-fun b!1854116 () Bool)

(declare-fun e!1185015 () Bool)

(declare-fun tp!525882 () Bool)

(declare-fun tp!525884 () Bool)

(assert (=> b!1854116 (= e!1185015 (and tp!525882 tp!525884))))

(declare-fun b!1854117 () Bool)

(declare-fun tp!525883 () Bool)

(assert (=> b!1854117 (= e!1185015 tp!525883)))

(declare-fun b!1854118 () Bool)

(declare-fun tp!525886 () Bool)

(declare-fun tp!525885 () Bool)

(assert (=> b!1854118 (= e!1185015 (and tp!525886 tp!525885))))

(assert (=> b!1853552 (= tp!525710 e!1185015)))

(declare-fun b!1854115 () Bool)

(assert (=> b!1854115 (= e!1185015 tp_is_empty!8507)))

(assert (= (and b!1853552 ((_ is ElementMatch!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854115))

(assert (= (and b!1853552 ((_ is Concat!8840) (regTwo!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854116))

(assert (= (and b!1853552 ((_ is Star!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854117))

(assert (= (and b!1853552 ((_ is Union!5043) (regTwo!10599 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854118))

(declare-fun b!1854120 () Bool)

(declare-fun e!1185016 () Bool)

(declare-fun tp!525887 () Bool)

(declare-fun tp!525889 () Bool)

(assert (=> b!1854120 (= e!1185016 (and tp!525887 tp!525889))))

(declare-fun b!1854121 () Bool)

(declare-fun tp!525888 () Bool)

(assert (=> b!1854121 (= e!1185016 tp!525888)))

(declare-fun b!1854122 () Bool)

(declare-fun tp!525891 () Bool)

(declare-fun tp!525890 () Bool)

(assert (=> b!1854122 (= e!1185016 (and tp!525891 tp!525890))))

(assert (=> b!1853476 (= tp!525616 e!1185016)))

(declare-fun b!1854119 () Bool)

(assert (=> b!1854119 (= e!1185016 tp_is_empty!8507)))

(assert (= (and b!1853476 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854119))

(assert (= (and b!1853476 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854120))

(assert (= (and b!1853476 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854121))

(assert (= (and b!1853476 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854122))

(declare-fun b!1854124 () Bool)

(declare-fun e!1185017 () Bool)

(declare-fun tp!525892 () Bool)

(declare-fun tp!525894 () Bool)

(assert (=> b!1854124 (= e!1185017 (and tp!525892 tp!525894))))

(declare-fun b!1854125 () Bool)

(declare-fun tp!525893 () Bool)

(assert (=> b!1854125 (= e!1185017 tp!525893)))

(declare-fun b!1854126 () Bool)

(declare-fun tp!525896 () Bool)

(declare-fun tp!525895 () Bool)

(assert (=> b!1854126 (= e!1185017 (and tp!525896 tp!525895))))

(assert (=> b!1853476 (= tp!525615 e!1185017)))

(declare-fun b!1854123 () Bool)

(assert (=> b!1854123 (= e!1185017 tp_is_empty!8507)))

(assert (= (and b!1853476 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854123))

(assert (= (and b!1853476 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854124))

(assert (= (and b!1853476 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854125))

(assert (= (and b!1853476 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854126))

(declare-fun b!1854128 () Bool)

(declare-fun e!1185018 () Bool)

(declare-fun tp!525897 () Bool)

(declare-fun tp!525899 () Bool)

(assert (=> b!1854128 (= e!1185018 (and tp!525897 tp!525899))))

(declare-fun b!1854129 () Bool)

(declare-fun tp!525898 () Bool)

(assert (=> b!1854129 (= e!1185018 tp!525898)))

(declare-fun b!1854130 () Bool)

(declare-fun tp!525901 () Bool)

(declare-fun tp!525900 () Bool)

(assert (=> b!1854130 (= e!1185018 (and tp!525901 tp!525900))))

(assert (=> b!1853467 (= tp!525603 e!1185018)))

(declare-fun b!1854127 () Bool)

(assert (=> b!1854127 (= e!1185018 tp_is_empty!8507)))

(assert (= (and b!1853467 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854127))

(assert (= (and b!1853467 ((_ is Concat!8840) (reg!5372 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854128))

(assert (= (and b!1853467 ((_ is Star!5043) (reg!5372 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854129))

(assert (= (and b!1853467 ((_ is Union!5043) (reg!5372 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854130))

(declare-fun b!1854132 () Bool)

(declare-fun e!1185019 () Bool)

(declare-fun tp!525902 () Bool)

(declare-fun tp!525904 () Bool)

(assert (=> b!1854132 (= e!1185019 (and tp!525902 tp!525904))))

(declare-fun b!1854133 () Bool)

(declare-fun tp!525903 () Bool)

(assert (=> b!1854133 (= e!1185019 tp!525903)))

(declare-fun b!1854134 () Bool)

(declare-fun tp!525906 () Bool)

(declare-fun tp!525905 () Bool)

(assert (=> b!1854134 (= e!1185019 (and tp!525906 tp!525905))))

(assert (=> b!1853484 (= tp!525626 e!1185019)))

(declare-fun b!1854131 () Bool)

(assert (=> b!1854131 (= e!1185019 tp_is_empty!8507)))

(assert (= (and b!1853484 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854131))

(assert (= (and b!1853484 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854132))

(assert (= (and b!1853484 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854133))

(assert (= (and b!1853484 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854134))

(declare-fun b!1854136 () Bool)

(declare-fun e!1185020 () Bool)

(declare-fun tp!525907 () Bool)

(declare-fun tp!525909 () Bool)

(assert (=> b!1854136 (= e!1185020 (and tp!525907 tp!525909))))

(declare-fun b!1854137 () Bool)

(declare-fun tp!525908 () Bool)

(assert (=> b!1854137 (= e!1185020 tp!525908)))

(declare-fun b!1854138 () Bool)

(declare-fun tp!525911 () Bool)

(declare-fun tp!525910 () Bool)

(assert (=> b!1854138 (= e!1185020 (and tp!525911 tp!525910))))

(assert (=> b!1853484 (= tp!525625 e!1185020)))

(declare-fun b!1854135 () Bool)

(assert (=> b!1854135 (= e!1185020 tp_is_empty!8507)))

(assert (= (and b!1853484 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854135))

(assert (= (and b!1853484 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854136))

(assert (= (and b!1853484 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854137))

(assert (= (and b!1853484 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854138))

(declare-fun b!1854140 () Bool)

(declare-fun e!1185021 () Bool)

(declare-fun tp!525912 () Bool)

(declare-fun tp!525914 () Bool)

(assert (=> b!1854140 (= e!1185021 (and tp!525912 tp!525914))))

(declare-fun b!1854141 () Bool)

(declare-fun tp!525913 () Bool)

(assert (=> b!1854141 (= e!1185021 tp!525913)))

(declare-fun b!1854142 () Bool)

(declare-fun tp!525916 () Bool)

(declare-fun tp!525915 () Bool)

(assert (=> b!1854142 (= e!1185021 (and tp!525916 tp!525915))))

(assert (=> b!1853559 (= tp!525716 e!1185021)))

(declare-fun b!1854139 () Bool)

(assert (=> b!1854139 (= e!1185021 tp_is_empty!8507)))

(assert (= (and b!1853559 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854139))

(assert (= (and b!1853559 ((_ is Concat!8840) (regOne!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854140))

(assert (= (and b!1853559 ((_ is Star!5043) (regOne!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854141))

(assert (= (and b!1853559 ((_ is Union!5043) (regOne!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854142))

(declare-fun b!1854144 () Bool)

(declare-fun e!1185022 () Bool)

(declare-fun tp!525917 () Bool)

(declare-fun tp!525919 () Bool)

(assert (=> b!1854144 (= e!1185022 (and tp!525917 tp!525919))))

(declare-fun b!1854145 () Bool)

(declare-fun tp!525918 () Bool)

(assert (=> b!1854145 (= e!1185022 tp!525918)))

(declare-fun b!1854146 () Bool)

(declare-fun tp!525921 () Bool)

(declare-fun tp!525920 () Bool)

(assert (=> b!1854146 (= e!1185022 (and tp!525921 tp!525920))))

(assert (=> b!1853559 (= tp!525715 e!1185022)))

(declare-fun b!1854143 () Bool)

(assert (=> b!1854143 (= e!1185022 tp_is_empty!8507)))

(assert (= (and b!1853559 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854143))

(assert (= (and b!1853559 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854144))

(assert (= (and b!1853559 ((_ is Star!5043) (regTwo!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854145))

(assert (= (and b!1853559 ((_ is Union!5043) (regTwo!10599 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854146))

(declare-fun b!1854148 () Bool)

(declare-fun e!1185023 () Bool)

(declare-fun tp!525922 () Bool)

(declare-fun tp!525924 () Bool)

(assert (=> b!1854148 (= e!1185023 (and tp!525922 tp!525924))))

(declare-fun b!1854149 () Bool)

(declare-fun tp!525923 () Bool)

(assert (=> b!1854149 (= e!1185023 tp!525923)))

(declare-fun b!1854150 () Bool)

(declare-fun tp!525926 () Bool)

(declare-fun tp!525925 () Bool)

(assert (=> b!1854150 (= e!1185023 (and tp!525926 tp!525925))))

(assert (=> b!1853503 (= tp!525648 e!1185023)))

(declare-fun b!1854147 () Bool)

(assert (=> b!1854147 (= e!1185023 tp_is_empty!8507)))

(assert (= (and b!1853503 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854147))

(assert (= (and b!1853503 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854148))

(assert (= (and b!1853503 ((_ is Star!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854149))

(assert (= (and b!1853503 ((_ is Union!5043) (reg!5372 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854150))

(declare-fun b!1854152 () Bool)

(declare-fun e!1185024 () Bool)

(declare-fun tp!525927 () Bool)

(declare-fun tp!525929 () Bool)

(assert (=> b!1854152 (= e!1185024 (and tp!525927 tp!525929))))

(declare-fun b!1854153 () Bool)

(declare-fun tp!525928 () Bool)

(assert (=> b!1854153 (= e!1185024 tp!525928)))

(declare-fun b!1854154 () Bool)

(declare-fun tp!525931 () Bool)

(declare-fun tp!525930 () Bool)

(assert (=> b!1854154 (= e!1185024 (and tp!525931 tp!525930))))

(assert (=> b!1853494 (= tp!525637 e!1185024)))

(declare-fun b!1854151 () Bool)

(assert (=> b!1854151 (= e!1185024 tp_is_empty!8507)))

(assert (= (and b!1853494 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854151))

(assert (= (and b!1853494 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854152))

(assert (= (and b!1853494 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854153))

(assert (= (and b!1853494 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854154))

(declare-fun b!1854156 () Bool)

(declare-fun e!1185025 () Bool)

(declare-fun tp!525932 () Bool)

(declare-fun tp!525934 () Bool)

(assert (=> b!1854156 (= e!1185025 (and tp!525932 tp!525934))))

(declare-fun b!1854157 () Bool)

(declare-fun tp!525933 () Bool)

(assert (=> b!1854157 (= e!1185025 tp!525933)))

(declare-fun b!1854158 () Bool)

(declare-fun tp!525936 () Bool)

(declare-fun tp!525935 () Bool)

(assert (=> b!1854158 (= e!1185025 (and tp!525936 tp!525935))))

(assert (=> b!1853494 (= tp!525639 e!1185025)))

(declare-fun b!1854155 () Bool)

(assert (=> b!1854155 (= e!1185025 tp_is_empty!8507)))

(assert (= (and b!1853494 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854155))

(assert (= (and b!1853494 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854156))

(assert (= (and b!1853494 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854157))

(assert (= (and b!1853494 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854158))

(declare-fun b!1854160 () Bool)

(declare-fun e!1185026 () Bool)

(declare-fun tp!525937 () Bool)

(declare-fun tp!525939 () Bool)

(assert (=> b!1854160 (= e!1185026 (and tp!525937 tp!525939))))

(declare-fun b!1854161 () Bool)

(declare-fun tp!525938 () Bool)

(assert (=> b!1854161 (= e!1185026 tp!525938)))

(declare-fun b!1854162 () Bool)

(declare-fun tp!525941 () Bool)

(declare-fun tp!525940 () Bool)

(assert (=> b!1854162 (= e!1185026 (and tp!525941 tp!525940))))

(assert (=> b!1853512 (= tp!525661 e!1185026)))

(declare-fun b!1854159 () Bool)

(assert (=> b!1854159 (= e!1185026 tp_is_empty!8507)))

(assert (= (and b!1853512 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854159))

(assert (= (and b!1853512 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854160))

(assert (= (and b!1853512 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854161))

(assert (= (and b!1853512 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854162))

(declare-fun b!1854164 () Bool)

(declare-fun e!1185027 () Bool)

(declare-fun tp!525942 () Bool)

(declare-fun tp!525944 () Bool)

(assert (=> b!1854164 (= e!1185027 (and tp!525942 tp!525944))))

(declare-fun b!1854165 () Bool)

(declare-fun tp!525943 () Bool)

(assert (=> b!1854165 (= e!1185027 tp!525943)))

(declare-fun b!1854166 () Bool)

(declare-fun tp!525946 () Bool)

(declare-fun tp!525945 () Bool)

(assert (=> b!1854166 (= e!1185027 (and tp!525946 tp!525945))))

(assert (=> b!1853512 (= tp!525660 e!1185027)))

(declare-fun b!1854163 () Bool)

(assert (=> b!1854163 (= e!1185027 tp_is_empty!8507)))

(assert (= (and b!1853512 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854163))

(assert (= (and b!1853512 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854164))

(assert (= (and b!1853512 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854165))

(assert (= (and b!1853512 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854166))

(declare-fun b!1854168 () Bool)

(declare-fun e!1185028 () Bool)

(declare-fun tp!525947 () Bool)

(declare-fun tp!525949 () Bool)

(assert (=> b!1854168 (= e!1185028 (and tp!525947 tp!525949))))

(declare-fun b!1854169 () Bool)

(declare-fun tp!525948 () Bool)

(assert (=> b!1854169 (= e!1185028 tp!525948)))

(declare-fun b!1854170 () Bool)

(declare-fun tp!525951 () Bool)

(declare-fun tp!525950 () Bool)

(assert (=> b!1854170 (= e!1185028 (and tp!525951 tp!525950))))

(assert (=> b!1853452 (= tp!525586 e!1185028)))

(declare-fun b!1854167 () Bool)

(assert (=> b!1854167 (= e!1185028 tp_is_empty!8507)))

(assert (= (and b!1853452 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854167))

(assert (= (and b!1853452 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854168))

(assert (= (and b!1853452 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854169))

(assert (= (and b!1853452 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854170))

(declare-fun b!1854172 () Bool)

(declare-fun e!1185029 () Bool)

(declare-fun tp!525952 () Bool)

(declare-fun tp!525954 () Bool)

(assert (=> b!1854172 (= e!1185029 (and tp!525952 tp!525954))))

(declare-fun b!1854173 () Bool)

(declare-fun tp!525953 () Bool)

(assert (=> b!1854173 (= e!1185029 tp!525953)))

(declare-fun b!1854174 () Bool)

(declare-fun tp!525956 () Bool)

(declare-fun tp!525955 () Bool)

(assert (=> b!1854174 (= e!1185029 (and tp!525956 tp!525955))))

(assert (=> b!1853452 (= tp!525585 e!1185029)))

(declare-fun b!1854171 () Bool)

(assert (=> b!1854171 (= e!1185029 tp_is_empty!8507)))

(assert (= (and b!1853452 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854171))

(assert (= (and b!1853452 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854172))

(assert (= (and b!1853452 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854173))

(assert (= (and b!1853452 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854174))

(declare-fun b!1854176 () Bool)

(declare-fun e!1185030 () Bool)

(declare-fun tp!525957 () Bool)

(declare-fun tp!525959 () Bool)

(assert (=> b!1854176 (= e!1185030 (and tp!525957 tp!525959))))

(declare-fun b!1854177 () Bool)

(declare-fun tp!525958 () Bool)

(assert (=> b!1854177 (= e!1185030 tp!525958)))

(declare-fun b!1854178 () Bool)

(declare-fun tp!525961 () Bool)

(declare-fun tp!525960 () Bool)

(assert (=> b!1854178 (= e!1185030 (and tp!525961 tp!525960))))

(assert (=> b!1853578 (= tp!525740 e!1185030)))

(declare-fun b!1854175 () Bool)

(assert (=> b!1854175 (= e!1185030 tp_is_empty!8507)))

(assert (= (and b!1853578 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854175))

(assert (= (and b!1853578 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854176))

(assert (= (and b!1853578 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854177))

(assert (= (and b!1853578 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854178))

(declare-fun b!1854180 () Bool)

(declare-fun e!1185031 () Bool)

(declare-fun tp!525962 () Bool)

(declare-fun tp!525964 () Bool)

(assert (=> b!1854180 (= e!1185031 (and tp!525962 tp!525964))))

(declare-fun b!1854181 () Bool)

(declare-fun tp!525963 () Bool)

(assert (=> b!1854181 (= e!1185031 tp!525963)))

(declare-fun b!1854182 () Bool)

(declare-fun tp!525966 () Bool)

(declare-fun tp!525965 () Bool)

(assert (=> b!1854182 (= e!1185031 (and tp!525966 tp!525965))))

(assert (=> b!1853578 (= tp!525739 e!1185031)))

(declare-fun b!1854179 () Bool)

(assert (=> b!1854179 (= e!1185031 tp_is_empty!8507)))

(assert (= (and b!1853578 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854179))

(assert (= (and b!1853578 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854180))

(assert (= (and b!1853578 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854181))

(assert (= (and b!1853578 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854182))

(declare-fun b!1854184 () Bool)

(declare-fun e!1185032 () Bool)

(declare-fun tp!525967 () Bool)

(declare-fun tp!525969 () Bool)

(assert (=> b!1854184 (= e!1185032 (and tp!525967 tp!525969))))

(declare-fun b!1854185 () Bool)

(declare-fun tp!525968 () Bool)

(assert (=> b!1854185 (= e!1185032 tp!525968)))

(declare-fun b!1854186 () Bool)

(declare-fun tp!525971 () Bool)

(declare-fun tp!525970 () Bool)

(assert (=> b!1854186 (= e!1185032 (and tp!525971 tp!525970))))

(assert (=> b!1853454 (= tp!525587 e!1185032)))

(declare-fun b!1854183 () Bool)

(assert (=> b!1854183 (= e!1185032 tp_is_empty!8507)))

(assert (= (and b!1853454 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854183))

(assert (= (and b!1853454 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854184))

(assert (= (and b!1853454 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854185))

(assert (= (and b!1853454 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854186))

(declare-fun b!1854188 () Bool)

(declare-fun e!1185033 () Bool)

(declare-fun tp!525972 () Bool)

(declare-fun tp!525974 () Bool)

(assert (=> b!1854188 (= e!1185033 (and tp!525972 tp!525974))))

(declare-fun b!1854189 () Bool)

(declare-fun tp!525973 () Bool)

(assert (=> b!1854189 (= e!1185033 tp!525973)))

(declare-fun b!1854190 () Bool)

(declare-fun tp!525976 () Bool)

(declare-fun tp!525975 () Bool)

(assert (=> b!1854190 (= e!1185033 (and tp!525976 tp!525975))))

(assert (=> b!1853454 (= tp!525589 e!1185033)))

(declare-fun b!1854187 () Bool)

(assert (=> b!1854187 (= e!1185033 tp_is_empty!8507)))

(assert (= (and b!1853454 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854187))

(assert (= (and b!1853454 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854188))

(assert (= (and b!1853454 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854189))

(assert (= (and b!1853454 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854190))

(declare-fun b!1854192 () Bool)

(declare-fun e!1185034 () Bool)

(declare-fun tp!525977 () Bool)

(declare-fun tp!525979 () Bool)

(assert (=> b!1854192 (= e!1185034 (and tp!525977 tp!525979))))

(declare-fun b!1854193 () Bool)

(declare-fun tp!525978 () Bool)

(assert (=> b!1854193 (= e!1185034 tp!525978)))

(declare-fun b!1854194 () Bool)

(declare-fun tp!525981 () Bool)

(declare-fun tp!525980 () Bool)

(assert (=> b!1854194 (= e!1185034 (and tp!525981 tp!525980))))

(assert (=> b!1853548 (= tp!525706 e!1185034)))

(declare-fun b!1854191 () Bool)

(assert (=> b!1854191 (= e!1185034 tp_is_empty!8507)))

(assert (= (and b!1853548 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854191))

(assert (= (and b!1853548 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854192))

(assert (= (and b!1853548 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854193))

(assert (= (and b!1853548 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854194))

(declare-fun b!1854196 () Bool)

(declare-fun e!1185035 () Bool)

(declare-fun tp!525982 () Bool)

(declare-fun tp!525984 () Bool)

(assert (=> b!1854196 (= e!1185035 (and tp!525982 tp!525984))))

(declare-fun b!1854197 () Bool)

(declare-fun tp!525983 () Bool)

(assert (=> b!1854197 (= e!1185035 tp!525983)))

(declare-fun b!1854198 () Bool)

(declare-fun tp!525986 () Bool)

(declare-fun tp!525985 () Bool)

(assert (=> b!1854198 (= e!1185035 (and tp!525986 tp!525985))))

(assert (=> b!1853548 (= tp!525705 e!1185035)))

(declare-fun b!1854195 () Bool)

(assert (=> b!1854195 (= e!1185035 tp_is_empty!8507)))

(assert (= (and b!1853548 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854195))

(assert (= (and b!1853548 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854196))

(assert (= (and b!1853548 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854197))

(assert (= (and b!1853548 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854198))

(declare-fun b!1854200 () Bool)

(declare-fun e!1185036 () Bool)

(declare-fun tp!525987 () Bool)

(declare-fun tp!525989 () Bool)

(assert (=> b!1854200 (= e!1185036 (and tp!525987 tp!525989))))

(declare-fun b!1854201 () Bool)

(declare-fun tp!525988 () Bool)

(assert (=> b!1854201 (= e!1185036 tp!525988)))

(declare-fun b!1854202 () Bool)

(declare-fun tp!525991 () Bool)

(declare-fun tp!525990 () Bool)

(assert (=> b!1854202 (= e!1185036 (and tp!525991 tp!525990))))

(assert (=> b!1853472 (= tp!525611 e!1185036)))

(declare-fun b!1854199 () Bool)

(assert (=> b!1854199 (= e!1185036 tp_is_empty!8507)))

(assert (= (and b!1853472 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854199))

(assert (= (and b!1853472 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854200))

(assert (= (and b!1853472 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854201))

(assert (= (and b!1853472 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854202))

(declare-fun b!1854204 () Bool)

(declare-fun e!1185037 () Bool)

(declare-fun tp!525992 () Bool)

(declare-fun tp!525994 () Bool)

(assert (=> b!1854204 (= e!1185037 (and tp!525992 tp!525994))))

(declare-fun b!1854205 () Bool)

(declare-fun tp!525993 () Bool)

(assert (=> b!1854205 (= e!1185037 tp!525993)))

(declare-fun b!1854206 () Bool)

(declare-fun tp!525996 () Bool)

(declare-fun tp!525995 () Bool)

(assert (=> b!1854206 (= e!1185037 (and tp!525996 tp!525995))))

(assert (=> b!1853472 (= tp!525610 e!1185037)))

(declare-fun b!1854203 () Bool)

(assert (=> b!1854203 (= e!1185037 tp_is_empty!8507)))

(assert (= (and b!1853472 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854203))

(assert (= (and b!1853472 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854204))

(assert (= (and b!1853472 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854205))

(assert (= (and b!1853472 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854206))

(declare-fun b!1854208 () Bool)

(declare-fun e!1185038 () Bool)

(declare-fun tp!525997 () Bool)

(declare-fun tp!525999 () Bool)

(assert (=> b!1854208 (= e!1185038 (and tp!525997 tp!525999))))

(declare-fun b!1854209 () Bool)

(declare-fun tp!525998 () Bool)

(assert (=> b!1854209 (= e!1185038 tp!525998)))

(declare-fun b!1854210 () Bool)

(declare-fun tp!526001 () Bool)

(declare-fun tp!526000 () Bool)

(assert (=> b!1854210 (= e!1185038 (and tp!526001 tp!526000))))

(assert (=> b!1853463 (= tp!525598 e!1185038)))

(declare-fun b!1854207 () Bool)

(assert (=> b!1854207 (= e!1185038 tp_is_empty!8507)))

(assert (= (and b!1853463 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854207))

(assert (= (and b!1853463 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854208))

(assert (= (and b!1853463 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854209))

(assert (= (and b!1853463 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854210))

(declare-fun b!1854212 () Bool)

(declare-fun e!1185039 () Bool)

(declare-fun tp!526002 () Bool)

(declare-fun tp!526004 () Bool)

(assert (=> b!1854212 (= e!1185039 (and tp!526002 tp!526004))))

(declare-fun b!1854213 () Bool)

(declare-fun tp!526003 () Bool)

(assert (=> b!1854213 (= e!1185039 tp!526003)))

(declare-fun b!1854214 () Bool)

(declare-fun tp!526006 () Bool)

(declare-fun tp!526005 () Bool)

(assert (=> b!1854214 (= e!1185039 (and tp!526006 tp!526005))))

(assert (=> b!1853480 (= tp!525621 e!1185039)))

(declare-fun b!1854211 () Bool)

(assert (=> b!1854211 (= e!1185039 tp_is_empty!8507)))

(assert (= (and b!1853480 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854211))

(assert (= (and b!1853480 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854212))

(assert (= (and b!1853480 ((_ is Star!5043) (regOne!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854213))

(assert (= (and b!1853480 ((_ is Union!5043) (regOne!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854214))

(declare-fun b!1854216 () Bool)

(declare-fun e!1185040 () Bool)

(declare-fun tp!526007 () Bool)

(declare-fun tp!526009 () Bool)

(assert (=> b!1854216 (= e!1185040 (and tp!526007 tp!526009))))

(declare-fun b!1854217 () Bool)

(declare-fun tp!526008 () Bool)

(assert (=> b!1854217 (= e!1185040 tp!526008)))

(declare-fun b!1854218 () Bool)

(declare-fun tp!526011 () Bool)

(declare-fun tp!526010 () Bool)

(assert (=> b!1854218 (= e!1185040 (and tp!526011 tp!526010))))

(assert (=> b!1853480 (= tp!525620 e!1185040)))

(declare-fun b!1854215 () Bool)

(assert (=> b!1854215 (= e!1185040 tp_is_empty!8507)))

(assert (= (and b!1853480 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854215))

(assert (= (and b!1853480 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854216))

(assert (= (and b!1853480 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854217))

(assert (= (and b!1853480 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854218))

(declare-fun b!1854220 () Bool)

(declare-fun e!1185041 () Bool)

(declare-fun tp!526012 () Bool)

(declare-fun tp!526014 () Bool)

(assert (=> b!1854220 (= e!1185041 (and tp!526012 tp!526014))))

(declare-fun b!1854221 () Bool)

(declare-fun tp!526013 () Bool)

(assert (=> b!1854221 (= e!1185041 tp!526013)))

(declare-fun b!1854222 () Bool)

(declare-fun tp!526016 () Bool)

(declare-fun tp!526015 () Bool)

(assert (=> b!1854222 (= e!1185041 (and tp!526016 tp!526015))))

(assert (=> b!1853569 (= tp!525729 e!1185041)))

(declare-fun b!1854219 () Bool)

(assert (=> b!1854219 (= e!1185041 tp_is_empty!8507)))

(assert (= (and b!1853569 ((_ is ElementMatch!5043) (regex!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))) b!1854219))

(assert (= (and b!1853569 ((_ is Concat!8840) (regex!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))) b!1854220))

(assert (= (and b!1853569 ((_ is Star!5043) (regex!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))) b!1854221))

(assert (= (and b!1853569 ((_ is Union!5043) (regex!3680 (h!25969 (t!172467 (t!172467 (t!172467 rules!865))))))) b!1854222))

(declare-fun b!1854224 () Bool)

(declare-fun e!1185042 () Bool)

(declare-fun tp!526017 () Bool)

(declare-fun tp!526019 () Bool)

(assert (=> b!1854224 (= e!1185042 (and tp!526017 tp!526019))))

(declare-fun b!1854225 () Bool)

(declare-fun tp!526018 () Bool)

(assert (=> b!1854225 (= e!1185042 tp!526018)))

(declare-fun b!1854226 () Bool)

(declare-fun tp!526021 () Bool)

(declare-fun tp!526020 () Bool)

(assert (=> b!1854226 (= e!1185042 (and tp!526021 tp!526020))))

(assert (=> b!1853565 (= tp!525722 e!1185042)))

(declare-fun b!1854223 () Bool)

(assert (=> b!1854223 (= e!1185042 tp_is_empty!8507)))

(assert (= (and b!1853565 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854223))

(assert (= (and b!1853565 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854224))

(assert (= (and b!1853565 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854225))

(assert (= (and b!1853565 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854226))

(declare-fun b!1854228 () Bool)

(declare-fun e!1185043 () Bool)

(declare-fun tp!526022 () Bool)

(declare-fun tp!526024 () Bool)

(assert (=> b!1854228 (= e!1185043 (and tp!526022 tp!526024))))

(declare-fun b!1854229 () Bool)

(declare-fun tp!526023 () Bool)

(assert (=> b!1854229 (= e!1185043 tp!526023)))

(declare-fun b!1854230 () Bool)

(declare-fun tp!526026 () Bool)

(declare-fun tp!526025 () Bool)

(assert (=> b!1854230 (= e!1185043 (and tp!526026 tp!526025))))

(assert (=> b!1853565 (= tp!525724 e!1185043)))

(declare-fun b!1854227 () Bool)

(assert (=> b!1854227 (= e!1185043 tp_is_empty!8507)))

(assert (= (and b!1853565 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854227))

(assert (= (and b!1853565 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854228))

(assert (= (and b!1853565 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854229))

(assert (= (and b!1853565 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854230))

(declare-fun b!1854232 () Bool)

(declare-fun e!1185044 () Bool)

(declare-fun tp!526027 () Bool)

(declare-fun tp!526029 () Bool)

(assert (=> b!1854232 (= e!1185044 (and tp!526027 tp!526029))))

(declare-fun b!1854233 () Bool)

(declare-fun tp!526028 () Bool)

(assert (=> b!1854233 (= e!1185044 tp!526028)))

(declare-fun b!1854234 () Bool)

(declare-fun tp!526031 () Bool)

(declare-fun tp!526030 () Bool)

(assert (=> b!1854234 (= e!1185044 (and tp!526031 tp!526030))))

(assert (=> b!1853558 (= tp!525713 e!1185044)))

(declare-fun b!1854231 () Bool)

(assert (=> b!1854231 (= e!1185044 tp_is_empty!8507)))

(assert (= (and b!1853558 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854231))

(assert (= (and b!1853558 ((_ is Concat!8840) (reg!5372 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854232))

(assert (= (and b!1853558 ((_ is Star!5043) (reg!5372 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854233))

(assert (= (and b!1853558 ((_ is Union!5043) (reg!5372 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854234))

(declare-fun b!1854236 () Bool)

(declare-fun e!1185045 () Bool)

(declare-fun tp!526032 () Bool)

(declare-fun tp!526034 () Bool)

(assert (=> b!1854236 (= e!1185045 (and tp!526032 tp!526034))))

(declare-fun b!1854237 () Bool)

(declare-fun tp!526033 () Bool)

(assert (=> b!1854237 (= e!1185045 tp!526033)))

(declare-fun b!1854238 () Bool)

(declare-fun tp!526036 () Bool)

(declare-fun tp!526035 () Bool)

(assert (=> b!1854238 (= e!1185045 (and tp!526036 tp!526035))))

(assert (=> b!1853515 (= tp!525663 e!1185045)))

(declare-fun b!1854235 () Bool)

(assert (=> b!1854235 (= e!1185045 tp_is_empty!8507)))

(assert (= (and b!1853515 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854235))

(assert (= (and b!1853515 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854236))

(assert (= (and b!1853515 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854237))

(assert (= (and b!1853515 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854238))

(declare-fun b!1854240 () Bool)

(declare-fun e!1185046 () Bool)

(declare-fun tp!526037 () Bool)

(declare-fun tp!526039 () Bool)

(assert (=> b!1854240 (= e!1185046 (and tp!526037 tp!526039))))

(declare-fun b!1854241 () Bool)

(declare-fun tp!526038 () Bool)

(assert (=> b!1854241 (= e!1185046 tp!526038)))

(declare-fun b!1854242 () Bool)

(declare-fun tp!526041 () Bool)

(declare-fun tp!526040 () Bool)

(assert (=> b!1854242 (= e!1185046 (and tp!526041 tp!526040))))

(assert (=> b!1853506 (= tp!525652 e!1185046)))

(declare-fun b!1854239 () Bool)

(assert (=> b!1854239 (= e!1185046 tp_is_empty!8507)))

(assert (= (and b!1853506 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854239))

(assert (= (and b!1853506 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854240))

(assert (= (and b!1853506 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854241))

(assert (= (and b!1853506 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854242))

(declare-fun b!1854244 () Bool)

(declare-fun e!1185047 () Bool)

(declare-fun tp!526042 () Bool)

(declare-fun tp!526044 () Bool)

(assert (=> b!1854244 (= e!1185047 (and tp!526042 tp!526044))))

(declare-fun b!1854245 () Bool)

(declare-fun tp!526043 () Bool)

(assert (=> b!1854245 (= e!1185047 tp!526043)))

(declare-fun b!1854246 () Bool)

(declare-fun tp!526046 () Bool)

(declare-fun tp!526045 () Bool)

(assert (=> b!1854246 (= e!1185047 (and tp!526046 tp!526045))))

(assert (=> b!1853506 (= tp!525654 e!1185047)))

(declare-fun b!1854243 () Bool)

(assert (=> b!1854243 (= e!1185047 tp_is_empty!8507)))

(assert (= (and b!1853506 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854243))

(assert (= (and b!1853506 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854244))

(assert (= (and b!1853506 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854245))

(assert (= (and b!1853506 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854246))

(declare-fun b!1854248 () Bool)

(declare-fun e!1185048 () Bool)

(declare-fun tp!526047 () Bool)

(declare-fun tp!526049 () Bool)

(assert (=> b!1854248 (= e!1185048 (and tp!526047 tp!526049))))

(declare-fun b!1854249 () Bool)

(declare-fun tp!526048 () Bool)

(assert (=> b!1854249 (= e!1185048 tp!526048)))

(declare-fun b!1854250 () Bool)

(declare-fun tp!526051 () Bool)

(declare-fun tp!526050 () Bool)

(assert (=> b!1854250 (= e!1185048 (and tp!526051 tp!526050))))

(assert (=> b!1853524 (= tp!525676 e!1185048)))

(declare-fun b!1854247 () Bool)

(assert (=> b!1854247 (= e!1185048 tp_is_empty!8507)))

(assert (= (and b!1853524 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854247))

(assert (= (and b!1853524 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854248))

(assert (= (and b!1853524 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854249))

(assert (= (and b!1853524 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854250))

(declare-fun b!1854252 () Bool)

(declare-fun e!1185049 () Bool)

(declare-fun tp!526052 () Bool)

(declare-fun tp!526054 () Bool)

(assert (=> b!1854252 (= e!1185049 (and tp!526052 tp!526054))))

(declare-fun b!1854253 () Bool)

(declare-fun tp!526053 () Bool)

(assert (=> b!1854253 (= e!1185049 tp!526053)))

(declare-fun b!1854254 () Bool)

(declare-fun tp!526056 () Bool)

(declare-fun tp!526055 () Bool)

(assert (=> b!1854254 (= e!1185049 (and tp!526056 tp!526055))))

(assert (=> b!1853524 (= tp!525675 e!1185049)))

(declare-fun b!1854251 () Bool)

(assert (=> b!1854251 (= e!1185049 tp_is_empty!8507)))

(assert (= (and b!1853524 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854251))

(assert (= (and b!1853524 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854252))

(assert (= (and b!1853524 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854253))

(assert (= (and b!1853524 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854254))

(declare-fun b!1854256 () Bool)

(declare-fun e!1185050 () Bool)

(declare-fun tp!526057 () Bool)

(declare-fun tp!526059 () Bool)

(assert (=> b!1854256 (= e!1185050 (and tp!526057 tp!526059))))

(declare-fun b!1854257 () Bool)

(declare-fun tp!526058 () Bool)

(assert (=> b!1854257 (= e!1185050 tp!526058)))

(declare-fun b!1854258 () Bool)

(declare-fun tp!526061 () Bool)

(declare-fun tp!526060 () Bool)

(assert (=> b!1854258 (= e!1185050 (and tp!526061 tp!526060))))

(assert (=> b!1853464 (= tp!525601 e!1185050)))

(declare-fun b!1854255 () Bool)

(assert (=> b!1854255 (= e!1185050 tp_is_empty!8507)))

(assert (= (and b!1853464 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854255))

(assert (= (and b!1853464 ((_ is Concat!8840) (regOne!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854256))

(assert (= (and b!1853464 ((_ is Star!5043) (regOne!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854257))

(assert (= (and b!1853464 ((_ is Union!5043) (regOne!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854258))

(declare-fun b!1854260 () Bool)

(declare-fun e!1185051 () Bool)

(declare-fun tp!526062 () Bool)

(declare-fun tp!526064 () Bool)

(assert (=> b!1854260 (= e!1185051 (and tp!526062 tp!526064))))

(declare-fun b!1854261 () Bool)

(declare-fun tp!526063 () Bool)

(assert (=> b!1854261 (= e!1185051 tp!526063)))

(declare-fun b!1854262 () Bool)

(declare-fun tp!526066 () Bool)

(declare-fun tp!526065 () Bool)

(assert (=> b!1854262 (= e!1185051 (and tp!526066 tp!526065))))

(assert (=> b!1853464 (= tp!525600 e!1185051)))

(declare-fun b!1854259 () Bool)

(assert (=> b!1854259 (= e!1185051 tp_is_empty!8507)))

(assert (= (and b!1853464 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854259))

(assert (= (and b!1853464 ((_ is Concat!8840) (regTwo!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854260))

(assert (= (and b!1853464 ((_ is Star!5043) (regTwo!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854261))

(assert (= (and b!1853464 ((_ is Union!5043) (regTwo!10599 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854262))

(declare-fun b!1854264 () Bool)

(declare-fun e!1185052 () Bool)

(declare-fun tp!526067 () Bool)

(declare-fun tp!526069 () Bool)

(assert (=> b!1854264 (= e!1185052 (and tp!526067 tp!526069))))

(declare-fun b!1854265 () Bool)

(declare-fun tp!526068 () Bool)

(assert (=> b!1854265 (= e!1185052 tp!526068)))

(declare-fun b!1854266 () Bool)

(declare-fun tp!526071 () Bool)

(declare-fun tp!526070 () Bool)

(assert (=> b!1854266 (= e!1185052 (and tp!526071 tp!526070))))

(assert (=> b!1853455 (= tp!525588 e!1185052)))

(declare-fun b!1854263 () Bool)

(assert (=> b!1854263 (= e!1185052 tp_is_empty!8507)))

(assert (= (and b!1853455 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854263))

(assert (= (and b!1853455 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854264))

(assert (= (and b!1853455 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854265))

(assert (= (and b!1853455 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854266))

(declare-fun b!1854268 () Bool)

(declare-fun e!1185053 () Bool)

(declare-fun tp!526072 () Bool)

(declare-fun tp!526074 () Bool)

(assert (=> b!1854268 (= e!1185053 (and tp!526072 tp!526074))))

(declare-fun b!1854269 () Bool)

(declare-fun tp!526073 () Bool)

(assert (=> b!1854269 (= e!1185053 tp!526073)))

(declare-fun b!1854270 () Bool)

(declare-fun tp!526076 () Bool)

(declare-fun tp!526075 () Bool)

(assert (=> b!1854270 (= e!1185053 (and tp!526076 tp!526075))))

(assert (=> b!1853535 (= tp!525688 e!1185053)))

(declare-fun b!1854267 () Bool)

(assert (=> b!1854267 (= e!1185053 tp_is_empty!8507)))

(assert (= (and b!1853535 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854267))

(assert (= (and b!1853535 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854268))

(assert (= (and b!1853535 ((_ is Star!5043) (reg!5372 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854269))

(assert (= (and b!1853535 ((_ is Union!5043) (reg!5372 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854270))

(declare-fun b!1854272 () Bool)

(declare-fun e!1185054 () Bool)

(declare-fun tp!526077 () Bool)

(declare-fun tp!526079 () Bool)

(assert (=> b!1854272 (= e!1185054 (and tp!526077 tp!526079))))

(declare-fun b!1854273 () Bool)

(declare-fun tp!526078 () Bool)

(assert (=> b!1854273 (= e!1185054 tp!526078)))

(declare-fun b!1854274 () Bool)

(declare-fun tp!526081 () Bool)

(declare-fun tp!526080 () Bool)

(assert (=> b!1854274 (= e!1185054 (and tp!526081 tp!526080))))

(assert (=> b!1853526 (= tp!525677 e!1185054)))

(declare-fun b!1854271 () Bool)

(assert (=> b!1854271 (= e!1185054 tp_is_empty!8507)))

(assert (= (and b!1853526 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854271))

(assert (= (and b!1853526 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854272))

(assert (= (and b!1853526 ((_ is Star!5043) (regOne!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854273))

(assert (= (and b!1853526 ((_ is Union!5043) (regOne!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854274))

(declare-fun b!1854276 () Bool)

(declare-fun e!1185055 () Bool)

(declare-fun tp!526082 () Bool)

(declare-fun tp!526084 () Bool)

(assert (=> b!1854276 (= e!1185055 (and tp!526082 tp!526084))))

(declare-fun b!1854277 () Bool)

(declare-fun tp!526083 () Bool)

(assert (=> b!1854277 (= e!1185055 tp!526083)))

(declare-fun b!1854278 () Bool)

(declare-fun tp!526086 () Bool)

(declare-fun tp!526085 () Bool)

(assert (=> b!1854278 (= e!1185055 (and tp!526086 tp!526085))))

(assert (=> b!1853526 (= tp!525679 e!1185055)))

(declare-fun b!1854275 () Bool)

(assert (=> b!1854275 (= e!1185055 tp_is_empty!8507)))

(assert (= (and b!1853526 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854275))

(assert (= (and b!1853526 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854276))

(assert (= (and b!1853526 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854277))

(assert (= (and b!1853526 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854278))

(declare-fun b!1854280 () Bool)

(declare-fun e!1185056 () Bool)

(declare-fun tp!526087 () Bool)

(declare-fun tp!526089 () Bool)

(assert (=> b!1854280 (= e!1185056 (and tp!526087 tp!526089))))

(declare-fun b!1854281 () Bool)

(declare-fun tp!526088 () Bool)

(assert (=> b!1854281 (= e!1185056 tp!526088)))

(declare-fun b!1854282 () Bool)

(declare-fun tp!526091 () Bool)

(declare-fun tp!526090 () Bool)

(assert (=> b!1854282 (= e!1185056 (and tp!526091 tp!526090))))

(assert (=> b!1853551 (= tp!525708 e!1185056)))

(declare-fun b!1854279 () Bool)

(assert (=> b!1854279 (= e!1185056 tp_is_empty!8507)))

(assert (= (and b!1853551 ((_ is ElementMatch!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854279))

(assert (= (and b!1853551 ((_ is Concat!8840) (reg!5372 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854280))

(assert (= (and b!1853551 ((_ is Star!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854281))

(assert (= (and b!1853551 ((_ is Union!5043) (reg!5372 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854282))

(declare-fun b!1854284 () Bool)

(declare-fun e!1185057 () Bool)

(declare-fun tp!526092 () Bool)

(declare-fun tp!526094 () Bool)

(assert (=> b!1854284 (= e!1185057 (and tp!526092 tp!526094))))

(declare-fun b!1854285 () Bool)

(declare-fun tp!526093 () Bool)

(assert (=> b!1854285 (= e!1185057 tp!526093)))

(declare-fun b!1854286 () Bool)

(declare-fun tp!526096 () Bool)

(declare-fun tp!526095 () Bool)

(assert (=> b!1854286 (= e!1185057 (and tp!526096 tp!526095))))

(assert (=> b!1853542 (= tp!525697 e!1185057)))

(declare-fun b!1854283 () Bool)

(assert (=> b!1854283 (= e!1185057 tp_is_empty!8507)))

(assert (= (and b!1853542 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854283))

(assert (= (and b!1853542 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854284))

(assert (= (and b!1853542 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854285))

(assert (= (and b!1853542 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854286))

(declare-fun b!1854288 () Bool)

(declare-fun e!1185058 () Bool)

(declare-fun tp!526097 () Bool)

(declare-fun tp!526099 () Bool)

(assert (=> b!1854288 (= e!1185058 (and tp!526097 tp!526099))))

(declare-fun b!1854289 () Bool)

(declare-fun tp!526098 () Bool)

(assert (=> b!1854289 (= e!1185058 tp!526098)))

(declare-fun b!1854290 () Bool)

(declare-fun tp!526101 () Bool)

(declare-fun tp!526100 () Bool)

(assert (=> b!1854290 (= e!1185058 (and tp!526101 tp!526100))))

(assert (=> b!1853542 (= tp!525699 e!1185058)))

(declare-fun b!1854287 () Bool)

(assert (=> b!1854287 (= e!1185058 tp_is_empty!8507)))

(assert (= (and b!1853542 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854287))

(assert (= (and b!1853542 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854288))

(assert (= (and b!1853542 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854289))

(assert (= (and b!1853542 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854290))

(declare-fun b!1854292 () Bool)

(declare-fun e!1185059 () Bool)

(declare-fun tp!526102 () Bool)

(declare-fun tp!526104 () Bool)

(assert (=> b!1854292 (= e!1185059 (and tp!526102 tp!526104))))

(declare-fun b!1854293 () Bool)

(declare-fun tp!526103 () Bool)

(assert (=> b!1854293 (= e!1185059 tp!526103)))

(declare-fun b!1854294 () Bool)

(declare-fun tp!526106 () Bool)

(declare-fun tp!526105 () Bool)

(assert (=> b!1854294 (= e!1185059 (and tp!526106 tp!526105))))

(assert (=> b!1853466 (= tp!525602 e!1185059)))

(declare-fun b!1854291 () Bool)

(assert (=> b!1854291 (= e!1185059 tp_is_empty!8507)))

(assert (= (and b!1853466 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854291))

(assert (= (and b!1853466 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854292))

(assert (= (and b!1853466 ((_ is Star!5043) (regOne!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854293))

(assert (= (and b!1853466 ((_ is Union!5043) (regOne!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854294))

(declare-fun b!1854296 () Bool)

(declare-fun e!1185060 () Bool)

(declare-fun tp!526107 () Bool)

(declare-fun tp!526109 () Bool)

(assert (=> b!1854296 (= e!1185060 (and tp!526107 tp!526109))))

(declare-fun b!1854297 () Bool)

(declare-fun tp!526108 () Bool)

(assert (=> b!1854297 (= e!1185060 tp!526108)))

(declare-fun b!1854298 () Bool)

(declare-fun tp!526111 () Bool)

(declare-fun tp!526110 () Bool)

(assert (=> b!1854298 (= e!1185060 (and tp!526111 tp!526110))))

(assert (=> b!1853466 (= tp!525604 e!1185060)))

(declare-fun b!1854295 () Bool)

(assert (=> b!1854295 (= e!1185060 tp_is_empty!8507)))

(assert (= (and b!1853466 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854295))

(assert (= (and b!1853466 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854296))

(assert (= (and b!1853466 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854297))

(assert (= (and b!1853466 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854298))

(declare-fun b!1854300 () Bool)

(declare-fun e!1185061 () Bool)

(declare-fun tp!526112 () Bool)

(declare-fun tp!526114 () Bool)

(assert (=> b!1854300 (= e!1185061 (and tp!526112 tp!526114))))

(declare-fun b!1854301 () Bool)

(declare-fun tp!526113 () Bool)

(assert (=> b!1854301 (= e!1185061 tp!526113)))

(declare-fun b!1854302 () Bool)

(declare-fun tp!526116 () Bool)

(declare-fun tp!526115 () Bool)

(assert (=> b!1854302 (= e!1185061 (and tp!526116 tp!526115))))

(assert (=> b!1853483 (= tp!525623 e!1185061)))

(declare-fun b!1854299 () Bool)

(assert (=> b!1854299 (= e!1185061 tp_is_empty!8507)))

(assert (= (and b!1853483 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854299))

(assert (= (and b!1853483 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854300))

(assert (= (and b!1853483 ((_ is Star!5043) (reg!5372 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854301))

(assert (= (and b!1853483 ((_ is Union!5043) (reg!5372 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854302))

(declare-fun b!1854304 () Bool)

(declare-fun e!1185062 () Bool)

(declare-fun tp!526117 () Bool)

(declare-fun tp!526119 () Bool)

(assert (=> b!1854304 (= e!1185062 (and tp!526117 tp!526119))))

(declare-fun b!1854305 () Bool)

(declare-fun tp!526118 () Bool)

(assert (=> b!1854305 (= e!1185062 tp!526118)))

(declare-fun b!1854306 () Bool)

(declare-fun tp!526121 () Bool)

(declare-fun tp!526120 () Bool)

(assert (=> b!1854306 (= e!1185062 (and tp!526121 tp!526120))))

(assert (=> b!1853475 (= tp!525613 e!1185062)))

(declare-fun b!1854303 () Bool)

(assert (=> b!1854303 (= e!1185062 tp_is_empty!8507)))

(assert (= (and b!1853475 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854303))

(assert (= (and b!1853475 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854304))

(assert (= (and b!1853475 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854305))

(assert (= (and b!1853475 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854306))

(declare-fun b!1854308 () Bool)

(declare-fun e!1185063 () Bool)

(declare-fun tp!526122 () Bool)

(declare-fun tp!526124 () Bool)

(assert (=> b!1854308 (= e!1185063 (and tp!526122 tp!526124))))

(declare-fun b!1854309 () Bool)

(declare-fun tp!526123 () Bool)

(assert (=> b!1854309 (= e!1185063 tp!526123)))

(declare-fun b!1854310 () Bool)

(declare-fun tp!526126 () Bool)

(declare-fun tp!526125 () Bool)

(assert (=> b!1854310 (= e!1185063 (and tp!526126 tp!526125))))

(assert (=> b!1853492 (= tp!525636 e!1185063)))

(declare-fun b!1854307 () Bool)

(assert (=> b!1854307 (= e!1185063 tp_is_empty!8507)))

(assert (= (and b!1853492 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854307))

(assert (= (and b!1853492 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854308))

(assert (= (and b!1853492 ((_ is Star!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854309))

(assert (= (and b!1853492 ((_ is Union!5043) (regOne!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854310))

(declare-fun b!1854312 () Bool)

(declare-fun e!1185064 () Bool)

(declare-fun tp!526127 () Bool)

(declare-fun tp!526129 () Bool)

(assert (=> b!1854312 (= e!1185064 (and tp!526127 tp!526129))))

(declare-fun b!1854313 () Bool)

(declare-fun tp!526128 () Bool)

(assert (=> b!1854313 (= e!1185064 tp!526128)))

(declare-fun b!1854314 () Bool)

(declare-fun tp!526131 () Bool)

(declare-fun tp!526130 () Bool)

(assert (=> b!1854314 (= e!1185064 (and tp!526131 tp!526130))))

(assert (=> b!1853492 (= tp!525635 e!1185064)))

(declare-fun b!1854311 () Bool)

(assert (=> b!1854311 (= e!1185064 tp_is_empty!8507)))

(assert (= (and b!1853492 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854311))

(assert (= (and b!1853492 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854312))

(assert (= (and b!1853492 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854313))

(assert (= (and b!1853492 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854314))

(declare-fun b!1854316 () Bool)

(declare-fun e!1185065 () Bool)

(declare-fun tp!526132 () Bool)

(declare-fun tp!526134 () Bool)

(assert (=> b!1854316 (= e!1185065 (and tp!526132 tp!526134))))

(declare-fun b!1854317 () Bool)

(declare-fun tp!526133 () Bool)

(assert (=> b!1854317 (= e!1185065 tp!526133)))

(declare-fun b!1854318 () Bool)

(declare-fun tp!526136 () Bool)

(declare-fun tp!526135 () Bool)

(assert (=> b!1854318 (= e!1185065 (and tp!526136 tp!526135))))

(assert (=> b!1853563 (= tp!525721 e!1185065)))

(declare-fun b!1854315 () Bool)

(assert (=> b!1854315 (= e!1185065 tp_is_empty!8507)))

(assert (= (and b!1853563 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854315))

(assert (= (and b!1853563 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854316))

(assert (= (and b!1853563 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854317))

(assert (= (and b!1853563 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854318))

(declare-fun b!1854320 () Bool)

(declare-fun e!1185066 () Bool)

(declare-fun tp!526137 () Bool)

(declare-fun tp!526139 () Bool)

(assert (=> b!1854320 (= e!1185066 (and tp!526137 tp!526139))))

(declare-fun b!1854321 () Bool)

(declare-fun tp!526138 () Bool)

(assert (=> b!1854321 (= e!1185066 tp!526138)))

(declare-fun b!1854322 () Bool)

(declare-fun tp!526141 () Bool)

(declare-fun tp!526140 () Bool)

(assert (=> b!1854322 (= e!1185066 (and tp!526141 tp!526140))))

(assert (=> b!1853563 (= tp!525720 e!1185066)))

(declare-fun b!1854319 () Bool)

(assert (=> b!1854319 (= e!1185066 tp_is_empty!8507)))

(assert (= (and b!1853563 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854319))

(assert (= (and b!1853563 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854320))

(assert (= (and b!1853563 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854321))

(assert (= (and b!1853563 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854322))

(declare-fun b!1854325 () Bool)

(declare-fun b_free!51915 () Bool)

(declare-fun b_next!52619 () Bool)

(assert (=> b!1854325 (= b_free!51915 (not b_next!52619))))

(declare-fun tp!526145 () Bool)

(declare-fun b_and!144173 () Bool)

(assert (=> b!1854325 (= tp!526145 b_and!144173)))

(declare-fun b_free!51917 () Bool)

(declare-fun b_next!52621 () Bool)

(assert (=> b!1854325 (= b_free!51917 (not b_next!52621))))

(declare-fun t!172507 () Bool)

(declare-fun tb!112925 () Bool)

(assert (=> (and b!1854325 (= (toChars!5114 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 (t!172467 rules!865))))))) (toChars!5114 (transformation!3680 (rule!5873 (apply!5465 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (+ 0 1)))))) t!172507) tb!112925))

(declare-fun result!136196 () Bool)

(assert (= result!136196 result!136176))

(assert (=> d!566509 t!172507))

(declare-fun tp!526142 () Bool)

(declare-fun b_and!144175 () Bool)

(assert (=> b!1854325 (= tp!526142 (and (=> t!172507 result!136196) b_and!144175))))

(declare-fun e!1185068 () Bool)

(assert (=> b!1854325 (= e!1185068 (and tp!526145 tp!526142))))

(declare-fun b!1854324 () Bool)

(declare-fun e!1185067 () Bool)

(declare-fun tp!526144 () Bool)

(assert (=> b!1854324 (= e!1185067 (and tp!526144 (inv!26962 (tag!4094 (h!25969 (t!172467 (t!172467 (t!172467 (t!172467 rules!865))))))) (inv!26965 (transformation!3680 (h!25969 (t!172467 (t!172467 (t!172467 (t!172467 rules!865))))))) e!1185068))))

(declare-fun b!1854323 () Bool)

(declare-fun e!1185070 () Bool)

(declare-fun tp!526143 () Bool)

(assert (=> b!1854323 (= e!1185070 (and e!1185067 tp!526143))))

(assert (=> b!1853568 (= tp!525728 e!1185070)))

(assert (= b!1854324 b!1854325))

(assert (= b!1854323 b!1854324))

(assert (= (and b!1853568 ((_ is Cons!20568) (t!172467 (t!172467 (t!172467 (t!172467 rules!865)))))) b!1854323))

(declare-fun m!2280997 () Bool)

(assert (=> b!1854324 m!2280997))

(declare-fun m!2280999 () Bool)

(assert (=> b!1854324 m!2280999))

(declare-fun b!1854327 () Bool)

(declare-fun e!1185071 () Bool)

(declare-fun tp!526146 () Bool)

(declare-fun tp!526148 () Bool)

(assert (=> b!1854327 (= e!1185071 (and tp!526146 tp!526148))))

(declare-fun b!1854328 () Bool)

(declare-fun tp!526147 () Bool)

(assert (=> b!1854328 (= e!1185071 tp!526147)))

(declare-fun b!1854329 () Bool)

(declare-fun tp!526150 () Bool)

(declare-fun tp!526149 () Bool)

(assert (=> b!1854329 (= e!1185071 (and tp!526150 tp!526149))))

(assert (=> b!1853511 (= tp!525658 e!1185071)))

(declare-fun b!1854326 () Bool)

(assert (=> b!1854326 (= e!1185071 tp_is_empty!8507)))

(assert (= (and b!1853511 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854326))

(assert (= (and b!1853511 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854327))

(assert (= (and b!1853511 ((_ is Star!5043) (reg!5372 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854328))

(assert (= (and b!1853511 ((_ is Union!5043) (reg!5372 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854329))

(declare-fun b!1854331 () Bool)

(declare-fun e!1185072 () Bool)

(declare-fun tp!526151 () Bool)

(declare-fun tp!526153 () Bool)

(assert (=> b!1854331 (= e!1185072 (and tp!526151 tp!526153))))

(declare-fun b!1854332 () Bool)

(declare-fun tp!526152 () Bool)

(assert (=> b!1854332 (= e!1185072 tp!526152)))

(declare-fun b!1854333 () Bool)

(declare-fun tp!526155 () Bool)

(declare-fun tp!526154 () Bool)

(assert (=> b!1854333 (= e!1185072 (and tp!526155 tp!526154))))

(assert (=> b!1853502 (= tp!525647 e!1185072)))

(declare-fun b!1854330 () Bool)

(assert (=> b!1854330 (= e!1185072 tp_is_empty!8507)))

(assert (= (and b!1853502 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854330))

(assert (= (and b!1853502 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854331))

(assert (= (and b!1853502 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854332))

(assert (= (and b!1853502 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854333))

(declare-fun b!1854335 () Bool)

(declare-fun e!1185073 () Bool)

(declare-fun tp!526156 () Bool)

(declare-fun tp!526158 () Bool)

(assert (=> b!1854335 (= e!1185073 (and tp!526156 tp!526158))))

(declare-fun b!1854336 () Bool)

(declare-fun tp!526157 () Bool)

(assert (=> b!1854336 (= e!1185073 tp!526157)))

(declare-fun b!1854337 () Bool)

(declare-fun tp!526160 () Bool)

(declare-fun tp!526159 () Bool)

(assert (=> b!1854337 (= e!1185073 (and tp!526160 tp!526159))))

(assert (=> b!1853502 (= tp!525649 e!1185073)))

(declare-fun b!1854334 () Bool)

(assert (=> b!1854334 (= e!1185073 tp_is_empty!8507)))

(assert (= (and b!1853502 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854334))

(assert (= (and b!1853502 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854335))

(assert (= (and b!1853502 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854336))

(assert (= (and b!1853502 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854337))

(declare-fun b!1854339 () Bool)

(declare-fun e!1185074 () Bool)

(declare-fun tp!526161 () Bool)

(declare-fun tp!526163 () Bool)

(assert (=> b!1854339 (= e!1185074 (and tp!526161 tp!526163))))

(declare-fun b!1854340 () Bool)

(declare-fun tp!526162 () Bool)

(assert (=> b!1854340 (= e!1185074 tp!526162)))

(declare-fun b!1854341 () Bool)

(declare-fun tp!526165 () Bool)

(declare-fun tp!526164 () Bool)

(assert (=> b!1854341 (= e!1185074 (and tp!526165 tp!526164))))

(assert (=> b!1853520 (= tp!525671 e!1185074)))

(declare-fun b!1854338 () Bool)

(assert (=> b!1854338 (= e!1185074 tp_is_empty!8507)))

(assert (= (and b!1853520 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854338))

(assert (= (and b!1853520 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854339))

(assert (= (and b!1853520 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854340))

(assert (= (and b!1853520 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854341))

(declare-fun b!1854343 () Bool)

(declare-fun e!1185075 () Bool)

(declare-fun tp!526166 () Bool)

(declare-fun tp!526168 () Bool)

(assert (=> b!1854343 (= e!1185075 (and tp!526166 tp!526168))))

(declare-fun b!1854344 () Bool)

(declare-fun tp!526167 () Bool)

(assert (=> b!1854344 (= e!1185075 tp!526167)))

(declare-fun b!1854345 () Bool)

(declare-fun tp!526170 () Bool)

(declare-fun tp!526169 () Bool)

(assert (=> b!1854345 (= e!1185075 (and tp!526170 tp!526169))))

(assert (=> b!1853520 (= tp!525670 e!1185075)))

(declare-fun b!1854342 () Bool)

(assert (=> b!1854342 (= e!1185075 tp_is_empty!8507)))

(assert (= (and b!1853520 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854342))

(assert (= (and b!1853520 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854343))

(assert (= (and b!1853520 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854344))

(assert (= (and b!1853520 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854345))

(declare-fun b!1854347 () Bool)

(declare-fun e!1185076 () Bool)

(declare-fun tp!526171 () Bool)

(declare-fun tp!526173 () Bool)

(assert (=> b!1854347 (= e!1185076 (and tp!526171 tp!526173))))

(declare-fun b!1854348 () Bool)

(declare-fun tp!526172 () Bool)

(assert (=> b!1854348 (= e!1185076 tp!526172)))

(declare-fun b!1854349 () Bool)

(declare-fun tp!526175 () Bool)

(declare-fun tp!526174 () Bool)

(assert (=> b!1854349 (= e!1185076 (and tp!526175 tp!526174))))

(assert (=> b!1853460 (= tp!525596 e!1185076)))

(declare-fun b!1854346 () Bool)

(assert (=> b!1854346 (= e!1185076 tp_is_empty!8507)))

(assert (= (and b!1853460 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854346))

(assert (= (and b!1853460 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854347))

(assert (= (and b!1853460 ((_ is Star!5043) (regOne!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854348))

(assert (= (and b!1853460 ((_ is Union!5043) (regOne!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854349))

(declare-fun b!1854351 () Bool)

(declare-fun e!1185077 () Bool)

(declare-fun tp!526176 () Bool)

(declare-fun tp!526178 () Bool)

(assert (=> b!1854351 (= e!1185077 (and tp!526176 tp!526178))))

(declare-fun b!1854352 () Bool)

(declare-fun tp!526177 () Bool)

(assert (=> b!1854352 (= e!1185077 tp!526177)))

(declare-fun b!1854353 () Bool)

(declare-fun tp!526180 () Bool)

(declare-fun tp!526179 () Bool)

(assert (=> b!1854353 (= e!1185077 (and tp!526180 tp!526179))))

(assert (=> b!1853460 (= tp!525595 e!1185077)))

(declare-fun b!1854350 () Bool)

(assert (=> b!1854350 (= e!1185077 tp_is_empty!8507)))

(assert (= (and b!1853460 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854350))

(assert (= (and b!1853460 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854351))

(assert (= (and b!1853460 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854352))

(assert (= (and b!1853460 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854353))

(declare-fun b!1854355 () Bool)

(declare-fun e!1185078 () Bool)

(declare-fun tp!526181 () Bool)

(declare-fun tp!526183 () Bool)

(assert (=> b!1854355 (= e!1185078 (and tp!526181 tp!526183))))

(declare-fun b!1854356 () Bool)

(declare-fun tp!526182 () Bool)

(assert (=> b!1854356 (= e!1185078 tp!526182)))

(declare-fun b!1854357 () Bool)

(declare-fun tp!526185 () Bool)

(declare-fun tp!526184 () Bool)

(assert (=> b!1854357 (= e!1185078 (and tp!526185 tp!526184))))

(assert (=> b!1853451 (= tp!525583 e!1185078)))

(declare-fun b!1854354 () Bool)

(assert (=> b!1854354 (= e!1185078 tp_is_empty!8507)))

(assert (= (and b!1853451 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854354))

(assert (= (and b!1853451 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854355))

(assert (= (and b!1853451 ((_ is Star!5043) (reg!5372 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854356))

(assert (= (and b!1853451 ((_ is Union!5043) (reg!5372 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854357))

(declare-fun b!1854359 () Bool)

(declare-fun e!1185079 () Bool)

(declare-fun tp!526186 () Bool)

(declare-fun tp!526188 () Bool)

(assert (=> b!1854359 (= e!1185079 (and tp!526186 tp!526188))))

(declare-fun b!1854360 () Bool)

(declare-fun tp!526187 () Bool)

(assert (=> b!1854360 (= e!1185079 tp!526187)))

(declare-fun b!1854361 () Bool)

(declare-fun tp!526190 () Bool)

(declare-fun tp!526189 () Bool)

(assert (=> b!1854361 (= e!1185079 (and tp!526190 tp!526189))))

(assert (=> b!1853531 (= tp!525683 e!1185079)))

(declare-fun b!1854358 () Bool)

(assert (=> b!1854358 (= e!1185079 tp_is_empty!8507)))

(assert (= (and b!1853531 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854358))

(assert (= (and b!1853531 ((_ is Concat!8840) (reg!5372 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854359))

(assert (= (and b!1853531 ((_ is Star!5043) (reg!5372 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854360))

(assert (= (and b!1853531 ((_ is Union!5043) (reg!5372 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854361))

(declare-fun b!1854363 () Bool)

(declare-fun e!1185080 () Bool)

(declare-fun tp!526191 () Bool)

(declare-fun tp!526193 () Bool)

(assert (=> b!1854363 (= e!1185080 (and tp!526191 tp!526193))))

(declare-fun b!1854364 () Bool)

(declare-fun tp!526192 () Bool)

(assert (=> b!1854364 (= e!1185080 tp!526192)))

(declare-fun b!1854365 () Bool)

(declare-fun tp!526195 () Bool)

(declare-fun tp!526194 () Bool)

(assert (=> b!1854365 (= e!1185080 (and tp!526195 tp!526194))))

(assert (=> b!1853522 (= tp!525672 e!1185080)))

(declare-fun b!1854362 () Bool)

(assert (=> b!1854362 (= e!1185080 tp_is_empty!8507)))

(assert (= (and b!1853522 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854362))

(assert (= (and b!1853522 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854363))

(assert (= (and b!1853522 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854364))

(assert (= (and b!1853522 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854365))

(declare-fun b!1854367 () Bool)

(declare-fun e!1185081 () Bool)

(declare-fun tp!526196 () Bool)

(declare-fun tp!526198 () Bool)

(assert (=> b!1854367 (= e!1185081 (and tp!526196 tp!526198))))

(declare-fun b!1854368 () Bool)

(declare-fun tp!526197 () Bool)

(assert (=> b!1854368 (= e!1185081 tp!526197)))

(declare-fun b!1854369 () Bool)

(declare-fun tp!526200 () Bool)

(declare-fun tp!526199 () Bool)

(assert (=> b!1854369 (= e!1185081 (and tp!526200 tp!526199))))

(assert (=> b!1853522 (= tp!525674 e!1185081)))

(declare-fun b!1854366 () Bool)

(assert (=> b!1854366 (= e!1185081 tp_is_empty!8507)))

(assert (= (and b!1853522 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854366))

(assert (= (and b!1853522 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854367))

(assert (= (and b!1853522 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854368))

(assert (= (and b!1853522 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854369))

(declare-fun b!1854371 () Bool)

(declare-fun e!1185082 () Bool)

(declare-fun tp!526201 () Bool)

(declare-fun tp!526203 () Bool)

(assert (=> b!1854371 (= e!1185082 (and tp!526201 tp!526203))))

(declare-fun b!1854372 () Bool)

(declare-fun tp!526202 () Bool)

(assert (=> b!1854372 (= e!1185082 tp!526202)))

(declare-fun b!1854373 () Bool)

(declare-fun tp!526205 () Bool)

(declare-fun tp!526204 () Bool)

(assert (=> b!1854373 (= e!1185082 (and tp!526205 tp!526204))))

(assert (=> b!1853547 (= tp!525703 e!1185082)))

(declare-fun b!1854370 () Bool)

(assert (=> b!1854370 (= e!1185082 tp_is_empty!8507)))

(assert (= (and b!1853547 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854370))

(assert (= (and b!1853547 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854371))

(assert (= (and b!1853547 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854372))

(assert (= (and b!1853547 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854373))

(declare-fun b!1854375 () Bool)

(declare-fun e!1185083 () Bool)

(declare-fun tp!526206 () Bool)

(declare-fun tp!526208 () Bool)

(assert (=> b!1854375 (= e!1185083 (and tp!526206 tp!526208))))

(declare-fun b!1854376 () Bool)

(declare-fun tp!526207 () Bool)

(assert (=> b!1854376 (= e!1185083 tp!526207)))

(declare-fun b!1854377 () Bool)

(declare-fun tp!526210 () Bool)

(declare-fun tp!526209 () Bool)

(assert (=> b!1854377 (= e!1185083 (and tp!526210 tp!526209))))

(assert (=> b!1853539 (= tp!525693 e!1185083)))

(declare-fun b!1854374 () Bool)

(assert (=> b!1854374 (= e!1185083 tp_is_empty!8507)))

(assert (= (and b!1853539 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854374))

(assert (= (and b!1853539 ((_ is Concat!8840) (reg!5372 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854375))

(assert (= (and b!1853539 ((_ is Star!5043) (reg!5372 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854376))

(assert (= (and b!1853539 ((_ is Union!5043) (reg!5372 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854377))

(declare-fun b!1854379 () Bool)

(declare-fun e!1185084 () Bool)

(declare-fun tp!526211 () Bool)

(declare-fun tp!526213 () Bool)

(assert (=> b!1854379 (= e!1185084 (and tp!526211 tp!526213))))

(declare-fun b!1854380 () Bool)

(declare-fun tp!526212 () Bool)

(assert (=> b!1854380 (= e!1185084 tp!526212)))

(declare-fun b!1854381 () Bool)

(declare-fun tp!526215 () Bool)

(declare-fun tp!526214 () Bool)

(assert (=> b!1854381 (= e!1185084 (and tp!526215 tp!526214))))

(assert (=> b!1853462 (= tp!525597 e!1185084)))

(declare-fun b!1854378 () Bool)

(assert (=> b!1854378 (= e!1185084 tp_is_empty!8507)))

(assert (= (and b!1853462 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854378))

(assert (= (and b!1853462 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854379))

(assert (= (and b!1853462 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854380))

(assert (= (and b!1853462 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854381))

(declare-fun b!1854383 () Bool)

(declare-fun e!1185085 () Bool)

(declare-fun tp!526216 () Bool)

(declare-fun tp!526218 () Bool)

(assert (=> b!1854383 (= e!1185085 (and tp!526216 tp!526218))))

(declare-fun b!1854384 () Bool)

(declare-fun tp!526217 () Bool)

(assert (=> b!1854384 (= e!1185085 tp!526217)))

(declare-fun b!1854385 () Bool)

(declare-fun tp!526220 () Bool)

(declare-fun tp!526219 () Bool)

(assert (=> b!1854385 (= e!1185085 (and tp!526220 tp!526219))))

(assert (=> b!1853462 (= tp!525599 e!1185085)))

(declare-fun b!1854382 () Bool)

(assert (=> b!1854382 (= e!1185085 tp_is_empty!8507)))

(assert (= (and b!1853462 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854382))

(assert (= (and b!1853462 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854383))

(assert (= (and b!1853462 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854384))

(assert (= (and b!1853462 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854385))

(declare-fun b!1854387 () Bool)

(declare-fun e!1185086 () Bool)

(declare-fun tp!526221 () Bool)

(declare-fun tp!526223 () Bool)

(assert (=> b!1854387 (= e!1185086 (and tp!526221 tp!526223))))

(declare-fun b!1854388 () Bool)

(declare-fun tp!526222 () Bool)

(assert (=> b!1854388 (= e!1185086 tp!526222)))

(declare-fun b!1854389 () Bool)

(declare-fun tp!526225 () Bool)

(declare-fun tp!526224 () Bool)

(assert (=> b!1854389 (= e!1185086 (and tp!526225 tp!526224))))

(assert (=> b!1853479 (= tp!525618 e!1185086)))

(declare-fun b!1854386 () Bool)

(assert (=> b!1854386 (= e!1185086 tp_is_empty!8507)))

(assert (= (and b!1853479 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854386))

(assert (= (and b!1853479 ((_ is Concat!8840) (reg!5372 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854387))

(assert (= (and b!1853479 ((_ is Star!5043) (reg!5372 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854388))

(assert (= (and b!1853479 ((_ is Union!5043) (reg!5372 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854389))

(declare-fun b!1854391 () Bool)

(declare-fun e!1185087 () Bool)

(declare-fun tp!526226 () Bool)

(declare-fun tp!526228 () Bool)

(assert (=> b!1854391 (= e!1185087 (and tp!526226 tp!526228))))

(declare-fun b!1854392 () Bool)

(declare-fun tp!526227 () Bool)

(assert (=> b!1854392 (= e!1185087 tp!526227)))

(declare-fun b!1854393 () Bool)

(declare-fun tp!526230 () Bool)

(declare-fun tp!526229 () Bool)

(assert (=> b!1854393 (= e!1185087 (and tp!526230 tp!526229))))

(assert (=> b!1853471 (= tp!525608 e!1185087)))

(declare-fun b!1854390 () Bool)

(assert (=> b!1854390 (= e!1185087 tp_is_empty!8507)))

(assert (= (and b!1853471 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854390))

(assert (= (and b!1853471 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854391))

(assert (= (and b!1853471 ((_ is Star!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854392))

(assert (= (and b!1853471 ((_ is Union!5043) (reg!5372 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854393))

(declare-fun b!1854395 () Bool)

(declare-fun e!1185088 () Bool)

(declare-fun tp!526231 () Bool)

(declare-fun tp!526233 () Bool)

(assert (=> b!1854395 (= e!1185088 (and tp!526231 tp!526233))))

(declare-fun b!1854396 () Bool)

(declare-fun tp!526232 () Bool)

(assert (=> b!1854396 (= e!1185088 tp!526232)))

(declare-fun b!1854397 () Bool)

(declare-fun tp!526235 () Bool)

(declare-fun tp!526234 () Bool)

(assert (=> b!1854397 (= e!1185088 (and tp!526235 tp!526234))))

(assert (=> b!1853488 (= tp!525631 e!1185088)))

(declare-fun b!1854394 () Bool)

(assert (=> b!1854394 (= e!1185088 tp_is_empty!8507)))

(assert (= (and b!1853488 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854394))

(assert (= (and b!1853488 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854395))

(assert (= (and b!1853488 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854396))

(assert (= (and b!1853488 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854397))

(declare-fun b!1854399 () Bool)

(declare-fun e!1185089 () Bool)

(declare-fun tp!526236 () Bool)

(declare-fun tp!526238 () Bool)

(assert (=> b!1854399 (= e!1185089 (and tp!526236 tp!526238))))

(declare-fun b!1854400 () Bool)

(declare-fun tp!526237 () Bool)

(assert (=> b!1854400 (= e!1185089 tp!526237)))

(declare-fun b!1854401 () Bool)

(declare-fun tp!526240 () Bool)

(declare-fun tp!526239 () Bool)

(assert (=> b!1854401 (= e!1185089 (and tp!526240 tp!526239))))

(assert (=> b!1853488 (= tp!525630 e!1185089)))

(declare-fun b!1854398 () Bool)

(assert (=> b!1854398 (= e!1185089 tp_is_empty!8507)))

(assert (= (and b!1853488 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854398))

(assert (= (and b!1853488 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854399))

(assert (= (and b!1853488 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854400))

(assert (= (and b!1853488 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854401))

(declare-fun b!1854404 () Bool)

(declare-fun e!1185092 () Bool)

(assert (=> b!1854404 (= e!1185092 true)))

(declare-fun b!1854403 () Bool)

(declare-fun e!1185091 () Bool)

(assert (=> b!1854403 (= e!1185091 e!1185092)))

(declare-fun b!1854402 () Bool)

(declare-fun e!1185090 () Bool)

(assert (=> b!1854402 (= e!1185090 e!1185091)))

(assert (=> b!1853417 e!1185090))

(assert (= b!1854403 b!1854404))

(assert (= b!1854402 b!1854403))

(assert (= (and b!1853417 ((_ is Cons!20568) (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) b!1854402))

(assert (=> b!1854404 (< (dynLambda!10178 order!13215 (toValue!5255 (transformation!3680 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))) (dynLambda!10179 order!13217 lambda!73287))))

(assert (=> b!1854404 (< (dynLambda!10176 order!13211 (toChars!5114 (transformation!3680 (h!25969 (t!172467 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))) (dynLambda!10179 order!13217 lambda!73287))))

(declare-fun b!1854406 () Bool)

(declare-fun e!1185093 () Bool)

(declare-fun tp!526241 () Bool)

(declare-fun tp!526243 () Bool)

(assert (=> b!1854406 (= e!1185093 (and tp!526241 tp!526243))))

(declare-fun b!1854407 () Bool)

(declare-fun tp!526242 () Bool)

(assert (=> b!1854407 (= e!1185093 tp!526242)))

(declare-fun b!1854408 () Bool)

(declare-fun tp!526245 () Bool)

(declare-fun tp!526244 () Bool)

(assert (=> b!1854408 (= e!1185093 (and tp!526245 tp!526244))))

(assert (=> b!1853557 (= tp!525712 e!1185093)))

(declare-fun b!1854405 () Bool)

(assert (=> b!1854405 (= e!1185093 tp_is_empty!8507)))

(assert (= (and b!1853557 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854405))

(assert (= (and b!1853557 ((_ is Concat!8840) (regOne!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854406))

(assert (= (and b!1853557 ((_ is Star!5043) (regOne!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854407))

(assert (= (and b!1853557 ((_ is Union!5043) (regOne!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854408))

(declare-fun b!1854410 () Bool)

(declare-fun e!1185094 () Bool)

(declare-fun tp!526246 () Bool)

(declare-fun tp!526248 () Bool)

(assert (=> b!1854410 (= e!1185094 (and tp!526246 tp!526248))))

(declare-fun b!1854411 () Bool)

(declare-fun tp!526247 () Bool)

(assert (=> b!1854411 (= e!1185094 tp!526247)))

(declare-fun b!1854412 () Bool)

(declare-fun tp!526250 () Bool)

(declare-fun tp!526249 () Bool)

(assert (=> b!1854412 (= e!1185094 (and tp!526250 tp!526249))))

(assert (=> b!1853557 (= tp!525714 e!1185094)))

(declare-fun b!1854409 () Bool)

(assert (=> b!1854409 (= e!1185094 tp_is_empty!8507)))

(assert (= (and b!1853557 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854409))

(assert (= (and b!1853557 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854410))

(assert (= (and b!1853557 ((_ is Star!5043) (regTwo!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854411))

(assert (= (and b!1853557 ((_ is Union!5043) (regTwo!10598 (reg!5372 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854412))

(declare-fun b!1854414 () Bool)

(declare-fun e!1185095 () Bool)

(declare-fun tp!526251 () Bool)

(declare-fun tp!526253 () Bool)

(assert (=> b!1854414 (= e!1185095 (and tp!526251 tp!526253))))

(declare-fun b!1854415 () Bool)

(declare-fun tp!526252 () Bool)

(assert (=> b!1854415 (= e!1185095 tp!526252)))

(declare-fun b!1854416 () Bool)

(declare-fun tp!526255 () Bool)

(declare-fun tp!526254 () Bool)

(assert (=> b!1854416 (= e!1185095 (and tp!526255 tp!526254))))

(assert (=> b!1853523 (= tp!525673 e!1185095)))

(declare-fun b!1854413 () Bool)

(assert (=> b!1854413 (= e!1185095 tp_is_empty!8507)))

(assert (= (and b!1853523 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854413))

(assert (= (and b!1853523 ((_ is Concat!8840) (reg!5372 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854414))

(assert (= (and b!1853523 ((_ is Star!5043) (reg!5372 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854415))

(assert (= (and b!1853523 ((_ is Union!5043) (reg!5372 (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854416))

(declare-fun b!1854418 () Bool)

(declare-fun e!1185096 () Bool)

(declare-fun tp!526256 () Bool)

(declare-fun tp!526258 () Bool)

(assert (=> b!1854418 (= e!1185096 (and tp!526256 tp!526258))))

(declare-fun b!1854419 () Bool)

(declare-fun tp!526257 () Bool)

(assert (=> b!1854419 (= e!1185096 tp!526257)))

(declare-fun b!1854420 () Bool)

(declare-fun tp!526260 () Bool)

(declare-fun tp!526259 () Bool)

(assert (=> b!1854420 (= e!1185096 (and tp!526260 tp!526259))))

(assert (=> b!1853514 (= tp!525662 e!1185096)))

(declare-fun b!1854417 () Bool)

(assert (=> b!1854417 (= e!1185096 tp_is_empty!8507)))

(assert (= (and b!1853514 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854417))

(assert (= (and b!1853514 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854418))

(assert (= (and b!1853514 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854419))

(assert (= (and b!1853514 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854420))

(declare-fun b!1854422 () Bool)

(declare-fun e!1185097 () Bool)

(declare-fun tp!526261 () Bool)

(declare-fun tp!526263 () Bool)

(assert (=> b!1854422 (= e!1185097 (and tp!526261 tp!526263))))

(declare-fun b!1854423 () Bool)

(declare-fun tp!526262 () Bool)

(assert (=> b!1854423 (= e!1185097 tp!526262)))

(declare-fun b!1854424 () Bool)

(declare-fun tp!526265 () Bool)

(declare-fun tp!526264 () Bool)

(assert (=> b!1854424 (= e!1185097 (and tp!526265 tp!526264))))

(assert (=> b!1853514 (= tp!525664 e!1185097)))

(declare-fun b!1854421 () Bool)

(assert (=> b!1854421 (= e!1185097 tp_is_empty!8507)))

(assert (= (and b!1853514 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854421))

(assert (= (and b!1853514 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854422))

(assert (= (and b!1853514 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854423))

(assert (= (and b!1853514 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854424))

(declare-fun b!1854426 () Bool)

(declare-fun e!1185098 () Bool)

(declare-fun tp!526266 () Bool)

(declare-fun tp!526268 () Bool)

(assert (=> b!1854426 (= e!1185098 (and tp!526266 tp!526268))))

(declare-fun b!1854427 () Bool)

(declare-fun tp!526267 () Bool)

(assert (=> b!1854427 (= e!1185098 tp!526267)))

(declare-fun b!1854428 () Bool)

(declare-fun tp!526270 () Bool)

(declare-fun tp!526269 () Bool)

(assert (=> b!1854428 (= e!1185098 (and tp!526270 tp!526269))))

(assert (=> b!1853540 (= tp!525696 e!1185098)))

(declare-fun b!1854425 () Bool)

(assert (=> b!1854425 (= e!1185098 tp_is_empty!8507)))

(assert (= (and b!1853540 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854425))

(assert (= (and b!1853540 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854426))

(assert (= (and b!1853540 ((_ is Star!5043) (regOne!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854427))

(assert (= (and b!1853540 ((_ is Union!5043) (regOne!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854428))

(declare-fun b!1854430 () Bool)

(declare-fun e!1185099 () Bool)

(declare-fun tp!526271 () Bool)

(declare-fun tp!526273 () Bool)

(assert (=> b!1854430 (= e!1185099 (and tp!526271 tp!526273))))

(declare-fun b!1854431 () Bool)

(declare-fun tp!526272 () Bool)

(assert (=> b!1854431 (= e!1185099 tp!526272)))

(declare-fun b!1854432 () Bool)

(declare-fun tp!526275 () Bool)

(declare-fun tp!526274 () Bool)

(assert (=> b!1854432 (= e!1185099 (and tp!526275 tp!526274))))

(assert (=> b!1853540 (= tp!525695 e!1185099)))

(declare-fun b!1854429 () Bool)

(assert (=> b!1854429 (= e!1185099 tp_is_empty!8507)))

(assert (= (and b!1853540 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854429))

(assert (= (and b!1853540 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854430))

(assert (= (and b!1853540 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854431))

(assert (= (and b!1853540 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854432))

(declare-fun b!1854434 () Bool)

(declare-fun e!1185100 () Bool)

(declare-fun tp!526276 () Bool)

(declare-fun tp!526278 () Bool)

(assert (=> b!1854434 (= e!1185100 (and tp!526276 tp!526278))))

(declare-fun b!1854435 () Bool)

(declare-fun tp!526277 () Bool)

(assert (=> b!1854435 (= e!1185100 tp!526277)))

(declare-fun b!1854436 () Bool)

(declare-fun tp!526280 () Bool)

(declare-fun tp!526279 () Bool)

(assert (=> b!1854436 (= e!1185100 (and tp!526280 tp!526279))))

(assert (=> b!1853532 (= tp!525686 e!1185100)))

(declare-fun b!1854433 () Bool)

(assert (=> b!1854433 (= e!1185100 tp_is_empty!8507)))

(assert (= (and b!1853532 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854433))

(assert (= (and b!1853532 ((_ is Concat!8840) (regOne!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854434))

(assert (= (and b!1853532 ((_ is Star!5043) (regOne!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854435))

(assert (= (and b!1853532 ((_ is Union!5043) (regOne!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854436))

(declare-fun b!1854438 () Bool)

(declare-fun e!1185101 () Bool)

(declare-fun tp!526281 () Bool)

(declare-fun tp!526283 () Bool)

(assert (=> b!1854438 (= e!1185101 (and tp!526281 tp!526283))))

(declare-fun b!1854439 () Bool)

(declare-fun tp!526282 () Bool)

(assert (=> b!1854439 (= e!1185101 tp!526282)))

(declare-fun b!1854440 () Bool)

(declare-fun tp!526285 () Bool)

(declare-fun tp!526284 () Bool)

(assert (=> b!1854440 (= e!1185101 (and tp!526285 tp!526284))))

(assert (=> b!1853532 (= tp!525685 e!1185101)))

(declare-fun b!1854437 () Bool)

(assert (=> b!1854437 (= e!1185101 tp_is_empty!8507)))

(assert (= (and b!1853532 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854437))

(assert (= (and b!1853532 ((_ is Concat!8840) (regTwo!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854438))

(assert (= (and b!1853532 ((_ is Star!5043) (regTwo!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854439))

(assert (= (and b!1853532 ((_ is Union!5043) (regTwo!10599 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854440))

(declare-fun b!1854442 () Bool)

(declare-fun e!1185102 () Bool)

(declare-fun tp!526286 () Bool)

(declare-fun tp!526288 () Bool)

(assert (=> b!1854442 (= e!1185102 (and tp!526286 tp!526288))))

(declare-fun b!1854443 () Bool)

(declare-fun tp!526287 () Bool)

(assert (=> b!1854443 (= e!1185102 tp!526287)))

(declare-fun b!1854444 () Bool)

(declare-fun tp!526290 () Bool)

(declare-fun tp!526289 () Bool)

(assert (=> b!1854444 (= e!1185102 (and tp!526290 tp!526289))))

(assert (=> b!1853577 (= tp!525737 e!1185102)))

(declare-fun b!1854441 () Bool)

(assert (=> b!1854441 (= e!1185102 tp_is_empty!8507)))

(assert (= (and b!1853577 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854441))

(assert (= (and b!1853577 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854442))

(assert (= (and b!1853577 ((_ is Star!5043) (reg!5372 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854443))

(assert (= (and b!1853577 ((_ is Union!5043) (reg!5372 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854444))

(declare-fun b!1854446 () Bool)

(declare-fun e!1185103 () Bool)

(declare-fun tp!526291 () Bool)

(declare-fun tp!526293 () Bool)

(assert (=> b!1854446 (= e!1185103 (and tp!526291 tp!526293))))

(declare-fun b!1854447 () Bool)

(declare-fun tp!526292 () Bool)

(assert (=> b!1854447 (= e!1185103 tp!526292)))

(declare-fun b!1854448 () Bool)

(declare-fun tp!526295 () Bool)

(declare-fun tp!526294 () Bool)

(assert (=> b!1854448 (= e!1185103 (and tp!526295 tp!526294))))

(assert (=> b!1853534 (= tp!525687 e!1185103)))

(declare-fun b!1854445 () Bool)

(assert (=> b!1854445 (= e!1185103 tp_is_empty!8507)))

(assert (= (and b!1853534 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854445))

(assert (= (and b!1853534 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854446))

(assert (= (and b!1853534 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854447))

(assert (= (and b!1853534 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854448))

(declare-fun b!1854450 () Bool)

(declare-fun e!1185104 () Bool)

(declare-fun tp!526296 () Bool)

(declare-fun tp!526298 () Bool)

(assert (=> b!1854450 (= e!1185104 (and tp!526296 tp!526298))))

(declare-fun b!1854451 () Bool)

(declare-fun tp!526297 () Bool)

(assert (=> b!1854451 (= e!1185104 tp!526297)))

(declare-fun b!1854452 () Bool)

(declare-fun tp!526300 () Bool)

(declare-fun tp!526299 () Bool)

(assert (=> b!1854452 (= e!1185104 (and tp!526300 tp!526299))))

(assert (=> b!1853534 (= tp!525689 e!1185104)))

(declare-fun b!1854449 () Bool)

(assert (=> b!1854449 (= e!1185104 tp_is_empty!8507)))

(assert (= (and b!1853534 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854449))

(assert (= (and b!1853534 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854450))

(assert (= (and b!1853534 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854451))

(assert (= (and b!1853534 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854452))

(declare-fun b!1854454 () Bool)

(declare-fun e!1185105 () Bool)

(declare-fun tp!526301 () Bool)

(declare-fun tp!526303 () Bool)

(assert (=> b!1854454 (= e!1185105 (and tp!526301 tp!526303))))

(declare-fun b!1854455 () Bool)

(declare-fun tp!526302 () Bool)

(assert (=> b!1854455 (= e!1185105 tp!526302)))

(declare-fun b!1854456 () Bool)

(declare-fun tp!526305 () Bool)

(declare-fun tp!526304 () Bool)

(assert (=> b!1854456 (= e!1185105 (and tp!526305 tp!526304))))

(assert (=> b!1853550 (= tp!525707 e!1185105)))

(declare-fun b!1854453 () Bool)

(assert (=> b!1854453 (= e!1185105 tp_is_empty!8507)))

(assert (= (and b!1853550 ((_ is ElementMatch!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854453))

(assert (= (and b!1853550 ((_ is Concat!8840) (regOne!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854454))

(assert (= (and b!1853550 ((_ is Star!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854455))

(assert (= (and b!1853550 ((_ is Union!5043) (regOne!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854456))

(declare-fun b!1854458 () Bool)

(declare-fun e!1185106 () Bool)

(declare-fun tp!526306 () Bool)

(declare-fun tp!526308 () Bool)

(assert (=> b!1854458 (= e!1185106 (and tp!526306 tp!526308))))

(declare-fun b!1854459 () Bool)

(declare-fun tp!526307 () Bool)

(assert (=> b!1854459 (= e!1185106 tp!526307)))

(declare-fun b!1854460 () Bool)

(declare-fun tp!526310 () Bool)

(declare-fun tp!526309 () Bool)

(assert (=> b!1854460 (= e!1185106 (and tp!526310 tp!526309))))

(assert (=> b!1853550 (= tp!525709 e!1185106)))

(declare-fun b!1854457 () Bool)

(assert (=> b!1854457 (= e!1185106 tp_is_empty!8507)))

(assert (= (and b!1853550 ((_ is ElementMatch!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854457))

(assert (= (and b!1853550 ((_ is Concat!8840) (regTwo!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854458))

(assert (= (and b!1853550 ((_ is Star!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854459))

(assert (= (and b!1853550 ((_ is Union!5043) (regTwo!10598 (regex!3680 (h!25969 (t!172467 (t!172467 rules!865))))))) b!1854460))

(declare-fun b!1854462 () Bool)

(declare-fun e!1185107 () Bool)

(declare-fun tp!526311 () Bool)

(declare-fun tp!526313 () Bool)

(assert (=> b!1854462 (= e!1185107 (and tp!526311 tp!526313))))

(declare-fun b!1854463 () Bool)

(declare-fun tp!526312 () Bool)

(assert (=> b!1854463 (= e!1185107 tp!526312)))

(declare-fun b!1854464 () Bool)

(declare-fun tp!526315 () Bool)

(declare-fun tp!526314 () Bool)

(assert (=> b!1854464 (= e!1185107 (and tp!526315 tp!526314))))

(assert (=> b!1853474 (= tp!525612 e!1185107)))

(declare-fun b!1854461 () Bool)

(assert (=> b!1854461 (= e!1185107 tp_is_empty!8507)))

(assert (= (and b!1853474 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854461))

(assert (= (and b!1853474 ((_ is Concat!8840) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854462))

(assert (= (and b!1853474 ((_ is Star!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854463))

(assert (= (and b!1853474 ((_ is Union!5043) (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854464))

(declare-fun b!1854466 () Bool)

(declare-fun e!1185108 () Bool)

(declare-fun tp!526316 () Bool)

(declare-fun tp!526318 () Bool)

(assert (=> b!1854466 (= e!1185108 (and tp!526316 tp!526318))))

(declare-fun b!1854467 () Bool)

(declare-fun tp!526317 () Bool)

(assert (=> b!1854467 (= e!1185108 tp!526317)))

(declare-fun b!1854468 () Bool)

(declare-fun tp!526320 () Bool)

(declare-fun tp!526319 () Bool)

(assert (=> b!1854468 (= e!1185108 (and tp!526320 tp!526319))))

(assert (=> b!1853474 (= tp!525614 e!1185108)))

(declare-fun b!1854465 () Bool)

(assert (=> b!1854465 (= e!1185108 tp_is_empty!8507)))

(assert (= (and b!1853474 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854465))

(assert (= (and b!1853474 ((_ is Concat!8840) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854466))

(assert (= (and b!1853474 ((_ is Star!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854467))

(assert (= (and b!1853474 ((_ is Union!5043) (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854468))

(declare-fun b!1854470 () Bool)

(declare-fun e!1185109 () Bool)

(declare-fun tp!526321 () Bool)

(declare-fun tp!526323 () Bool)

(assert (=> b!1854470 (= e!1185109 (and tp!526321 tp!526323))))

(declare-fun b!1854471 () Bool)

(declare-fun tp!526322 () Bool)

(assert (=> b!1854471 (= e!1185109 tp!526322)))

(declare-fun b!1854472 () Bool)

(declare-fun tp!526325 () Bool)

(declare-fun tp!526324 () Bool)

(assert (=> b!1854472 (= e!1185109 (and tp!526325 tp!526324))))

(assert (=> b!1853491 (= tp!525633 e!1185109)))

(declare-fun b!1854469 () Bool)

(assert (=> b!1854469 (= e!1185109 tp_is_empty!8507)))

(assert (= (and b!1853491 ((_ is ElementMatch!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854469))

(assert (= (and b!1853491 ((_ is Concat!8840) (reg!5372 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854470))

(assert (= (and b!1853491 ((_ is Star!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854471))

(assert (= (and b!1853491 ((_ is Union!5043) (reg!5372 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854472))

(declare-fun b!1854474 () Bool)

(declare-fun e!1185110 () Bool)

(declare-fun tp!526326 () Bool)

(declare-fun tp!526328 () Bool)

(assert (=> b!1854474 (= e!1185110 (and tp!526326 tp!526328))))

(declare-fun b!1854475 () Bool)

(declare-fun tp!526327 () Bool)

(assert (=> b!1854475 (= e!1185110 tp!526327)))

(declare-fun b!1854476 () Bool)

(declare-fun tp!526330 () Bool)

(declare-fun tp!526329 () Bool)

(assert (=> b!1854476 (= e!1185110 (and tp!526330 tp!526329))))

(assert (=> b!1853482 (= tp!525622 e!1185110)))

(declare-fun b!1854473 () Bool)

(assert (=> b!1854473 (= e!1185110 tp_is_empty!8507)))

(assert (= (and b!1853482 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854473))

(assert (= (and b!1853482 ((_ is Concat!8840) (regOne!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854474))

(assert (= (and b!1853482 ((_ is Star!5043) (regOne!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854475))

(assert (= (and b!1853482 ((_ is Union!5043) (regOne!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854476))

(declare-fun b!1854478 () Bool)

(declare-fun e!1185111 () Bool)

(declare-fun tp!526331 () Bool)

(declare-fun tp!526333 () Bool)

(assert (=> b!1854478 (= e!1185111 (and tp!526331 tp!526333))))

(declare-fun b!1854479 () Bool)

(declare-fun tp!526332 () Bool)

(assert (=> b!1854479 (= e!1185111 tp!526332)))

(declare-fun b!1854480 () Bool)

(declare-fun tp!526335 () Bool)

(declare-fun tp!526334 () Bool)

(assert (=> b!1854480 (= e!1185111 (and tp!526335 tp!526334))))

(assert (=> b!1853482 (= tp!525624 e!1185111)))

(declare-fun b!1854477 () Bool)

(assert (=> b!1854477 (= e!1185111 tp_is_empty!8507)))

(assert (= (and b!1853482 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854477))

(assert (= (and b!1853482 ((_ is Concat!8840) (regTwo!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854478))

(assert (= (and b!1853482 ((_ is Star!5043) (regTwo!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854479))

(assert (= (and b!1853482 ((_ is Union!5043) (regTwo!10598 (regOne!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854480))

(declare-fun b!1854482 () Bool)

(declare-fun e!1185112 () Bool)

(declare-fun tp!526336 () Bool)

(declare-fun tp!526338 () Bool)

(assert (=> b!1854482 (= e!1185112 (and tp!526336 tp!526338))))

(declare-fun b!1854483 () Bool)

(declare-fun tp!526337 () Bool)

(assert (=> b!1854483 (= e!1185112 tp!526337)))

(declare-fun b!1854484 () Bool)

(declare-fun tp!526340 () Bool)

(declare-fun tp!526339 () Bool)

(assert (=> b!1854484 (= e!1185112 (and tp!526340 tp!526339))))

(assert (=> b!1853500 (= tp!525646 e!1185112)))

(declare-fun b!1854481 () Bool)

(assert (=> b!1854481 (= e!1185112 tp_is_empty!8507)))

(assert (= (and b!1853500 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854481))

(assert (= (and b!1853500 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854482))

(assert (= (and b!1853500 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854483))

(assert (= (and b!1853500 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854484))

(declare-fun b!1854486 () Bool)

(declare-fun e!1185113 () Bool)

(declare-fun tp!526341 () Bool)

(declare-fun tp!526343 () Bool)

(assert (=> b!1854486 (= e!1185113 (and tp!526341 tp!526343))))

(declare-fun b!1854487 () Bool)

(declare-fun tp!526342 () Bool)

(assert (=> b!1854487 (= e!1185113 tp!526342)))

(declare-fun b!1854488 () Bool)

(declare-fun tp!526345 () Bool)

(declare-fun tp!526344 () Bool)

(assert (=> b!1854488 (= e!1185113 (and tp!526345 tp!526344))))

(assert (=> b!1853500 (= tp!525645 e!1185113)))

(declare-fun b!1854485 () Bool)

(assert (=> b!1854485 (= e!1185113 tp_is_empty!8507)))

(assert (= (and b!1853500 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854485))

(assert (= (and b!1853500 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854486))

(assert (= (and b!1853500 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854487))

(assert (= (and b!1853500 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854488))

(declare-fun b!1854490 () Bool)

(declare-fun e!1185114 () Bool)

(declare-fun tp!526346 () Bool)

(declare-fun tp!526348 () Bool)

(assert (=> b!1854490 (= e!1185114 (and tp!526346 tp!526348))))

(declare-fun b!1854491 () Bool)

(declare-fun tp!526347 () Bool)

(assert (=> b!1854491 (= e!1185114 tp!526347)))

(declare-fun b!1854492 () Bool)

(declare-fun tp!526350 () Bool)

(declare-fun tp!526349 () Bool)

(assert (=> b!1854492 (= e!1185114 (and tp!526350 tp!526349))))

(assert (=> b!1853562 (= tp!525718 e!1185114)))

(declare-fun b!1854489 () Bool)

(assert (=> b!1854489 (= e!1185114 tp_is_empty!8507)))

(assert (= (and b!1853562 ((_ is ElementMatch!5043) (reg!5372 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854489))

(assert (= (and b!1853562 ((_ is Concat!8840) (reg!5372 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854490))

(assert (= (and b!1853562 ((_ is Star!5043) (reg!5372 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854491))

(assert (= (and b!1853562 ((_ is Union!5043) (reg!5372 (regOne!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854492))

(declare-fun b!1854494 () Bool)

(declare-fun e!1185115 () Bool)

(declare-fun tp!526351 () Bool)

(declare-fun tp!526353 () Bool)

(assert (=> b!1854494 (= e!1185115 (and tp!526351 tp!526353))))

(declare-fun b!1854495 () Bool)

(declare-fun tp!526352 () Bool)

(assert (=> b!1854495 (= e!1185115 tp!526352)))

(declare-fun b!1854496 () Bool)

(declare-fun tp!526355 () Bool)

(declare-fun tp!526354 () Bool)

(assert (=> b!1854496 (= e!1185115 (and tp!526355 tp!526354))))

(assert (=> b!1853519 (= tp!525668 e!1185115)))

(declare-fun b!1854493 () Bool)

(assert (=> b!1854493 (= e!1185115 tp_is_empty!8507)))

(assert (= (and b!1853519 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854493))

(assert (= (and b!1853519 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854494))

(assert (= (and b!1853519 ((_ is Star!5043) (reg!5372 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854495))

(assert (= (and b!1853519 ((_ is Union!5043) (reg!5372 (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854496))

(declare-fun b!1854498 () Bool)

(declare-fun e!1185116 () Bool)

(declare-fun tp!526356 () Bool)

(declare-fun tp!526358 () Bool)

(assert (=> b!1854498 (= e!1185116 (and tp!526356 tp!526358))))

(declare-fun b!1854499 () Bool)

(declare-fun tp!526357 () Bool)

(assert (=> b!1854499 (= e!1185116 tp!526357)))

(declare-fun b!1854500 () Bool)

(declare-fun tp!526360 () Bool)

(declare-fun tp!526359 () Bool)

(assert (=> b!1854500 (= e!1185116 (and tp!526360 tp!526359))))

(assert (=> b!1853510 (= tp!525657 e!1185116)))

(declare-fun b!1854497 () Bool)

(assert (=> b!1854497 (= e!1185116 tp_is_empty!8507)))

(assert (= (and b!1853510 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854497))

(assert (= (and b!1853510 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854498))

(assert (= (and b!1853510 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854499))

(assert (= (and b!1853510 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854500))

(declare-fun b!1854502 () Bool)

(declare-fun e!1185117 () Bool)

(declare-fun tp!526361 () Bool)

(declare-fun tp!526363 () Bool)

(assert (=> b!1854502 (= e!1185117 (and tp!526361 tp!526363))))

(declare-fun b!1854503 () Bool)

(declare-fun tp!526362 () Bool)

(assert (=> b!1854503 (= e!1185117 tp!526362)))

(declare-fun b!1854504 () Bool)

(declare-fun tp!526365 () Bool)

(declare-fun tp!526364 () Bool)

(assert (=> b!1854504 (= e!1185117 (and tp!526365 tp!526364))))

(assert (=> b!1853510 (= tp!525659 e!1185117)))

(declare-fun b!1854501 () Bool)

(assert (=> b!1854501 (= e!1185117 tp_is_empty!8507)))

(assert (= (and b!1853510 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854501))

(assert (= (and b!1853510 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854502))

(assert (= (and b!1853510 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854503))

(assert (= (and b!1853510 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854504))

(declare-fun b!1854506 () Bool)

(declare-fun e!1185118 () Bool)

(declare-fun tp!526366 () Bool)

(declare-fun tp!526368 () Bool)

(assert (=> b!1854506 (= e!1185118 (and tp!526366 tp!526368))))

(declare-fun b!1854507 () Bool)

(declare-fun tp!526367 () Bool)

(assert (=> b!1854507 (= e!1185118 tp!526367)))

(declare-fun b!1854508 () Bool)

(declare-fun tp!526370 () Bool)

(declare-fun tp!526369 () Bool)

(assert (=> b!1854508 (= e!1185118 (and tp!526370 tp!526369))))

(assert (=> b!1853528 (= tp!525681 e!1185118)))

(declare-fun b!1854505 () Bool)

(assert (=> b!1854505 (= e!1185118 tp_is_empty!8507)))

(assert (= (and b!1853528 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854505))

(assert (= (and b!1853528 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854506))

(assert (= (and b!1853528 ((_ is Star!5043) (regOne!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854507))

(assert (= (and b!1853528 ((_ is Union!5043) (regOne!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854508))

(declare-fun b!1854510 () Bool)

(declare-fun e!1185119 () Bool)

(declare-fun tp!526371 () Bool)

(declare-fun tp!526373 () Bool)

(assert (=> b!1854510 (= e!1185119 (and tp!526371 tp!526373))))

(declare-fun b!1854511 () Bool)

(declare-fun tp!526372 () Bool)

(assert (=> b!1854511 (= e!1185119 tp!526372)))

(declare-fun b!1854512 () Bool)

(declare-fun tp!526375 () Bool)

(declare-fun tp!526374 () Bool)

(assert (=> b!1854512 (= e!1185119 (and tp!526375 tp!526374))))

(assert (=> b!1853528 (= tp!525680 e!1185119)))

(declare-fun b!1854509 () Bool)

(assert (=> b!1854509 (= e!1185119 tp_is_empty!8507)))

(assert (= (and b!1853528 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854509))

(assert (= (and b!1853528 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854510))

(assert (= (and b!1853528 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854511))

(assert (= (and b!1853528 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854512))

(declare-fun b!1854514 () Bool)

(declare-fun e!1185120 () Bool)

(declare-fun tp!526376 () Bool)

(declare-fun tp!526378 () Bool)

(assert (=> b!1854514 (= e!1185120 (and tp!526376 tp!526378))))

(declare-fun b!1854515 () Bool)

(declare-fun tp!526377 () Bool)

(assert (=> b!1854515 (= e!1185120 tp!526377)))

(declare-fun b!1854516 () Bool)

(declare-fun tp!526380 () Bool)

(declare-fun tp!526379 () Bool)

(assert (=> b!1854516 (= e!1185120 (and tp!526380 tp!526379))))

(assert (=> b!1853450 (= tp!525582 e!1185120)))

(declare-fun b!1854513 () Bool)

(assert (=> b!1854513 (= e!1185120 tp_is_empty!8507)))

(assert (= (and b!1853450 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854513))

(assert (= (and b!1853450 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854514))

(assert (= (and b!1853450 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854515))

(assert (= (and b!1853450 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854516))

(declare-fun b!1854518 () Bool)

(declare-fun e!1185121 () Bool)

(declare-fun tp!526381 () Bool)

(declare-fun tp!526383 () Bool)

(assert (=> b!1854518 (= e!1185121 (and tp!526381 tp!526383))))

(declare-fun b!1854519 () Bool)

(declare-fun tp!526382 () Bool)

(assert (=> b!1854519 (= e!1185121 tp!526382)))

(declare-fun b!1854520 () Bool)

(declare-fun tp!526385 () Bool)

(declare-fun tp!526384 () Bool)

(assert (=> b!1854520 (= e!1185121 (and tp!526385 tp!526384))))

(assert (=> b!1853450 (= tp!525584 e!1185121)))

(declare-fun b!1854517 () Bool)

(assert (=> b!1854517 (= e!1185121 tp_is_empty!8507)))

(assert (= (and b!1853450 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854517))

(assert (= (and b!1853450 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854518))

(assert (= (and b!1853450 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854519))

(assert (= (and b!1853450 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854520))

(declare-fun b!1854522 () Bool)

(declare-fun e!1185122 () Bool)

(declare-fun tp!526386 () Bool)

(declare-fun tp!526388 () Bool)

(assert (=> b!1854522 (= e!1185122 (and tp!526386 tp!526388))))

(declare-fun b!1854523 () Bool)

(declare-fun tp!526387 () Bool)

(assert (=> b!1854523 (= e!1185122 tp!526387)))

(declare-fun b!1854524 () Bool)

(declare-fun tp!526390 () Bool)

(declare-fun tp!526389 () Bool)

(assert (=> b!1854524 (= e!1185122 (and tp!526390 tp!526389))))

(assert (=> b!1853544 (= tp!525701 e!1185122)))

(declare-fun b!1854521 () Bool)

(assert (=> b!1854521 (= e!1185122 tp_is_empty!8507)))

(assert (= (and b!1853544 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854521))

(assert (= (and b!1853544 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854522))

(assert (= (and b!1853544 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854523))

(assert (= (and b!1853544 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854524))

(declare-fun b!1854526 () Bool)

(declare-fun e!1185123 () Bool)

(declare-fun tp!526391 () Bool)

(declare-fun tp!526393 () Bool)

(assert (=> b!1854526 (= e!1185123 (and tp!526391 tp!526393))))

(declare-fun b!1854527 () Bool)

(declare-fun tp!526392 () Bool)

(assert (=> b!1854527 (= e!1185123 tp!526392)))

(declare-fun b!1854528 () Bool)

(declare-fun tp!526395 () Bool)

(declare-fun tp!526394 () Bool)

(assert (=> b!1854528 (= e!1185123 (and tp!526395 tp!526394))))

(assert (=> b!1853544 (= tp!525700 e!1185123)))

(declare-fun b!1854525 () Bool)

(assert (=> b!1854525 (= e!1185123 tp_is_empty!8507)))

(assert (= (and b!1853544 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854525))

(assert (= (and b!1853544 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854526))

(assert (= (and b!1853544 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854527))

(assert (= (and b!1853544 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854528))

(declare-fun b!1854530 () Bool)

(declare-fun e!1185124 () Bool)

(declare-fun tp!526396 () Bool)

(declare-fun tp!526398 () Bool)

(assert (=> b!1854530 (= e!1185124 (and tp!526396 tp!526398))))

(declare-fun b!1854531 () Bool)

(declare-fun tp!526397 () Bool)

(assert (=> b!1854531 (= e!1185124 tp!526397)))

(declare-fun b!1854532 () Bool)

(declare-fun tp!526400 () Bool)

(declare-fun tp!526399 () Bool)

(assert (=> b!1854532 (= e!1185124 (and tp!526400 tp!526399))))

(assert (=> b!1853538 (= tp!525692 e!1185124)))

(declare-fun b!1854529 () Bool)

(assert (=> b!1854529 (= e!1185124 tp_is_empty!8507)))

(assert (= (and b!1853538 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854529))

(assert (= (and b!1853538 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854530))

(assert (= (and b!1853538 ((_ is Star!5043) (regOne!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854531))

(assert (= (and b!1853538 ((_ is Union!5043) (regOne!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854532))

(declare-fun b!1854534 () Bool)

(declare-fun e!1185125 () Bool)

(declare-fun tp!526401 () Bool)

(declare-fun tp!526403 () Bool)

(assert (=> b!1854534 (= e!1185125 (and tp!526401 tp!526403))))

(declare-fun b!1854535 () Bool)

(declare-fun tp!526402 () Bool)

(assert (=> b!1854535 (= e!1185125 tp!526402)))

(declare-fun b!1854536 () Bool)

(declare-fun tp!526405 () Bool)

(declare-fun tp!526404 () Bool)

(assert (=> b!1854536 (= e!1185125 (and tp!526405 tp!526404))))

(assert (=> b!1853538 (= tp!525694 e!1185125)))

(declare-fun b!1854533 () Bool)

(assert (=> b!1854533 (= e!1185125 tp_is_empty!8507)))

(assert (= (and b!1853538 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854533))

(assert (= (and b!1853538 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854534))

(assert (= (and b!1853538 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854535))

(assert (= (and b!1853538 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854536))

(declare-fun b!1854538 () Bool)

(declare-fun e!1185126 () Bool)

(declare-fun tp!526406 () Bool)

(declare-fun tp!526408 () Bool)

(assert (=> b!1854538 (= e!1185126 (and tp!526406 tp!526408))))

(declare-fun b!1854539 () Bool)

(declare-fun tp!526407 () Bool)

(assert (=> b!1854539 (= e!1185126 tp!526407)))

(declare-fun b!1854540 () Bool)

(declare-fun tp!526410 () Bool)

(declare-fun tp!526409 () Bool)

(assert (=> b!1854540 (= e!1185126 (and tp!526410 tp!526409))))

(assert (=> b!1853530 (= tp!525682 e!1185126)))

(declare-fun b!1854537 () Bool)

(assert (=> b!1854537 (= e!1185126 tp_is_empty!8507)))

(assert (= (and b!1853530 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854537))

(assert (= (and b!1853530 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854538))

(assert (= (and b!1853530 ((_ is Star!5043) (regOne!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854539))

(assert (= (and b!1853530 ((_ is Union!5043) (regOne!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854540))

(declare-fun b!1854542 () Bool)

(declare-fun e!1185127 () Bool)

(declare-fun tp!526411 () Bool)

(declare-fun tp!526413 () Bool)

(assert (=> b!1854542 (= e!1185127 (and tp!526411 tp!526413))))

(declare-fun b!1854543 () Bool)

(declare-fun tp!526412 () Bool)

(assert (=> b!1854543 (= e!1185127 tp!526412)))

(declare-fun b!1854544 () Bool)

(declare-fun tp!526415 () Bool)

(declare-fun tp!526414 () Bool)

(assert (=> b!1854544 (= e!1185127 (and tp!526415 tp!526414))))

(assert (=> b!1853530 (= tp!525684 e!1185127)))

(declare-fun b!1854541 () Bool)

(assert (=> b!1854541 (= e!1185127 tp_is_empty!8507)))

(assert (= (and b!1853530 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854541))

(assert (= (and b!1853530 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854542))

(assert (= (and b!1853530 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854543))

(assert (= (and b!1853530 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854544))

(declare-fun b!1854546 () Bool)

(declare-fun e!1185128 () Bool)

(declare-fun tp!526416 () Bool)

(declare-fun tp!526418 () Bool)

(assert (=> b!1854546 (= e!1185128 (and tp!526416 tp!526418))))

(declare-fun b!1854547 () Bool)

(declare-fun tp!526417 () Bool)

(assert (=> b!1854547 (= e!1185128 tp!526417)))

(declare-fun b!1854548 () Bool)

(declare-fun tp!526420 () Bool)

(declare-fun tp!526419 () Bool)

(assert (=> b!1854548 (= e!1185128 (and tp!526420 tp!526419))))

(assert (=> b!1853546 (= tp!525702 e!1185128)))

(declare-fun b!1854545 () Bool)

(assert (=> b!1854545 (= e!1185128 tp_is_empty!8507)))

(assert (= (and b!1853546 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854545))

(assert (= (and b!1853546 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854546))

(assert (= (and b!1853546 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854547))

(assert (= (and b!1853546 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854548))

(declare-fun b!1854550 () Bool)

(declare-fun e!1185129 () Bool)

(declare-fun tp!526421 () Bool)

(declare-fun tp!526423 () Bool)

(assert (=> b!1854550 (= e!1185129 (and tp!526421 tp!526423))))

(declare-fun b!1854551 () Bool)

(declare-fun tp!526422 () Bool)

(assert (=> b!1854551 (= e!1185129 tp!526422)))

(declare-fun b!1854552 () Bool)

(declare-fun tp!526425 () Bool)

(declare-fun tp!526424 () Bool)

(assert (=> b!1854552 (= e!1185129 (and tp!526425 tp!526424))))

(assert (=> b!1853546 (= tp!525704 e!1185129)))

(declare-fun b!1854549 () Bool)

(assert (=> b!1854549 (= e!1185129 tp_is_empty!8507)))

(assert (= (and b!1853546 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854549))

(assert (= (and b!1853546 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854550))

(assert (= (and b!1853546 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854551))

(assert (= (and b!1853546 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (regOne!10598 (regex!3680 (h!25969 rules!865))))))) b!1854552))

(declare-fun b!1854554 () Bool)

(declare-fun e!1185130 () Bool)

(declare-fun tp!526426 () Bool)

(declare-fun tp!526428 () Bool)

(assert (=> b!1854554 (= e!1185130 (and tp!526426 tp!526428))))

(declare-fun b!1854555 () Bool)

(declare-fun tp!526427 () Bool)

(assert (=> b!1854555 (= e!1185130 tp!526427)))

(declare-fun b!1854556 () Bool)

(declare-fun tp!526430 () Bool)

(declare-fun tp!526429 () Bool)

(assert (=> b!1854556 (= e!1185130 (and tp!526430 tp!526429))))

(assert (=> b!1853470 (= tp!525607 e!1185130)))

(declare-fun b!1854553 () Bool)

(assert (=> b!1854553 (= e!1185130 tp_is_empty!8507)))

(assert (= (and b!1853470 ((_ is ElementMatch!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854553))

(assert (= (and b!1853470 ((_ is Concat!8840) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854554))

(assert (= (and b!1853470 ((_ is Star!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854555))

(assert (= (and b!1853470 ((_ is Union!5043) (regOne!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854556))

(declare-fun b!1854558 () Bool)

(declare-fun e!1185131 () Bool)

(declare-fun tp!526431 () Bool)

(declare-fun tp!526433 () Bool)

(assert (=> b!1854558 (= e!1185131 (and tp!526431 tp!526433))))

(declare-fun b!1854559 () Bool)

(declare-fun tp!526432 () Bool)

(assert (=> b!1854559 (= e!1185131 tp!526432)))

(declare-fun b!1854560 () Bool)

(declare-fun tp!526435 () Bool)

(declare-fun tp!526434 () Bool)

(assert (=> b!1854560 (= e!1185131 (and tp!526435 tp!526434))))

(assert (=> b!1853470 (= tp!525609 e!1185131)))

(declare-fun b!1854557 () Bool)

(assert (=> b!1854557 (= e!1185131 tp_is_empty!8507)))

(assert (= (and b!1853470 ((_ is ElementMatch!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854557))

(assert (= (and b!1853470 ((_ is Concat!8840) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854558))

(assert (= (and b!1853470 ((_ is Star!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854559))

(assert (= (and b!1853470 ((_ is Union!5043) (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854560))

(declare-fun b!1854562 () Bool)

(declare-fun e!1185132 () Bool)

(declare-fun tp!526436 () Bool)

(declare-fun tp!526438 () Bool)

(assert (=> b!1854562 (= e!1185132 (and tp!526436 tp!526438))))

(declare-fun b!1854563 () Bool)

(declare-fun tp!526437 () Bool)

(assert (=> b!1854563 (= e!1185132 tp!526437)))

(declare-fun b!1854564 () Bool)

(declare-fun tp!526440 () Bool)

(declare-fun tp!526439 () Bool)

(assert (=> b!1854564 (= e!1185132 (and tp!526440 tp!526439))))

(assert (=> b!1853487 (= tp!525628 e!1185132)))

(declare-fun b!1854561 () Bool)

(assert (=> b!1854561 (= e!1185132 tp_is_empty!8507)))

(assert (= (and b!1853487 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854561))

(assert (= (and b!1853487 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854562))

(assert (= (and b!1853487 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854563))

(assert (= (and b!1853487 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854564))

(declare-fun b!1854566 () Bool)

(declare-fun e!1185133 () Bool)

(declare-fun tp!526441 () Bool)

(declare-fun tp!526443 () Bool)

(assert (=> b!1854566 (= e!1185133 (and tp!526441 tp!526443))))

(declare-fun b!1854567 () Bool)

(declare-fun tp!526442 () Bool)

(assert (=> b!1854567 (= e!1185133 tp!526442)))

(declare-fun b!1854568 () Bool)

(declare-fun tp!526445 () Bool)

(declare-fun tp!526444 () Bool)

(assert (=> b!1854568 (= e!1185133 (and tp!526445 tp!526444))))

(assert (=> b!1853478 (= tp!525617 e!1185133)))

(declare-fun b!1854565 () Bool)

(assert (=> b!1854565 (= e!1185133 tp_is_empty!8507)))

(assert (= (and b!1853478 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854565))

(assert (= (and b!1853478 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854566))

(assert (= (and b!1853478 ((_ is Star!5043) (regOne!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854567))

(assert (= (and b!1853478 ((_ is Union!5043) (regOne!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854568))

(declare-fun b!1854570 () Bool)

(declare-fun e!1185134 () Bool)

(declare-fun tp!526446 () Bool)

(declare-fun tp!526448 () Bool)

(assert (=> b!1854570 (= e!1185134 (and tp!526446 tp!526448))))

(declare-fun b!1854571 () Bool)

(declare-fun tp!526447 () Bool)

(assert (=> b!1854571 (= e!1185134 tp!526447)))

(declare-fun b!1854572 () Bool)

(declare-fun tp!526450 () Bool)

(declare-fun tp!526449 () Bool)

(assert (=> b!1854572 (= e!1185134 (and tp!526450 tp!526449))))

(assert (=> b!1853478 (= tp!525619 e!1185134)))

(declare-fun b!1854569 () Bool)

(assert (=> b!1854569 (= e!1185134 tp_is_empty!8507)))

(assert (= (and b!1853478 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854569))

(assert (= (and b!1853478 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854570))

(assert (= (and b!1853478 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854571))

(assert (= (and b!1853478 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854572))

(declare-fun b!1854574 () Bool)

(declare-fun e!1185135 () Bool)

(declare-fun tp!526451 () Bool)

(declare-fun tp!526453 () Bool)

(assert (=> b!1854574 (= e!1185135 (and tp!526451 tp!526453))))

(declare-fun b!1854575 () Bool)

(declare-fun tp!526452 () Bool)

(assert (=> b!1854575 (= e!1185135 tp!526452)))

(declare-fun b!1854576 () Bool)

(declare-fun tp!526455 () Bool)

(declare-fun tp!526454 () Bool)

(assert (=> b!1854576 (= e!1185135 (and tp!526455 tp!526454))))

(assert (=> b!1853496 (= tp!525641 e!1185135)))

(declare-fun b!1854573 () Bool)

(assert (=> b!1854573 (= e!1185135 tp_is_empty!8507)))

(assert (= (and b!1853496 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854573))

(assert (= (and b!1853496 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854574))

(assert (= (and b!1853496 ((_ is Star!5043) (regOne!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854575))

(assert (= (and b!1853496 ((_ is Union!5043) (regOne!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854576))

(declare-fun b!1854578 () Bool)

(declare-fun e!1185136 () Bool)

(declare-fun tp!526456 () Bool)

(declare-fun tp!526458 () Bool)

(assert (=> b!1854578 (= e!1185136 (and tp!526456 tp!526458))))

(declare-fun b!1854579 () Bool)

(declare-fun tp!526457 () Bool)

(assert (=> b!1854579 (= e!1185136 tp!526457)))

(declare-fun b!1854580 () Bool)

(declare-fun tp!526460 () Bool)

(declare-fun tp!526459 () Bool)

(assert (=> b!1854580 (= e!1185136 (and tp!526460 tp!526459))))

(assert (=> b!1853496 (= tp!525640 e!1185136)))

(declare-fun b!1854577 () Bool)

(assert (=> b!1854577 (= e!1185136 tp_is_empty!8507)))

(assert (= (and b!1853496 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854577))

(assert (= (and b!1853496 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854578))

(assert (= (and b!1853496 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854579))

(assert (= (and b!1853496 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854580))

(declare-fun b!1854582 () Bool)

(declare-fun e!1185137 () Bool)

(declare-fun tp!526461 () Bool)

(declare-fun tp!526463 () Bool)

(assert (=> b!1854582 (= e!1185137 (and tp!526461 tp!526463))))

(declare-fun b!1854583 () Bool)

(declare-fun tp!526462 () Bool)

(assert (=> b!1854583 (= e!1185137 tp!526462)))

(declare-fun b!1854584 () Bool)

(declare-fun tp!526465 () Bool)

(declare-fun tp!526464 () Bool)

(assert (=> b!1854584 (= e!1185137 (and tp!526465 tp!526464))))

(assert (=> b!1853499 (= tp!525643 e!1185137)))

(declare-fun b!1854581 () Bool)

(assert (=> b!1854581 (= e!1185137 tp_is_empty!8507)))

(assert (= (and b!1853499 ((_ is ElementMatch!5043) (reg!5372 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854581))

(assert (= (and b!1853499 ((_ is Concat!8840) (reg!5372 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854582))

(assert (= (and b!1853499 ((_ is Star!5043) (reg!5372 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854583))

(assert (= (and b!1853499 ((_ is Union!5043) (reg!5372 (regTwo!10598 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854584))

(declare-fun b!1854586 () Bool)

(declare-fun e!1185138 () Bool)

(declare-fun tp!526466 () Bool)

(declare-fun tp!526468 () Bool)

(assert (=> b!1854586 (= e!1185138 (and tp!526466 tp!526468))))

(declare-fun b!1854587 () Bool)

(declare-fun tp!526467 () Bool)

(assert (=> b!1854587 (= e!1185138 tp!526467)))

(declare-fun b!1854588 () Bool)

(declare-fun tp!526470 () Bool)

(declare-fun tp!526469 () Bool)

(assert (=> b!1854588 (= e!1185138 (and tp!526470 tp!526469))))

(assert (=> b!1853490 (= tp!525632 e!1185138)))

(declare-fun b!1854585 () Bool)

(assert (=> b!1854585 (= e!1185138 tp_is_empty!8507)))

(assert (= (and b!1853490 ((_ is ElementMatch!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854585))

(assert (= (and b!1853490 ((_ is Concat!8840) (regOne!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854586))

(assert (= (and b!1853490 ((_ is Star!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854587))

(assert (= (and b!1853490 ((_ is Union!5043) (regOne!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854588))

(declare-fun b!1854590 () Bool)

(declare-fun e!1185139 () Bool)

(declare-fun tp!526471 () Bool)

(declare-fun tp!526473 () Bool)

(assert (=> b!1854590 (= e!1185139 (and tp!526471 tp!526473))))

(declare-fun b!1854591 () Bool)

(declare-fun tp!526472 () Bool)

(assert (=> b!1854591 (= e!1185139 tp!526472)))

(declare-fun b!1854592 () Bool)

(declare-fun tp!526475 () Bool)

(declare-fun tp!526474 () Bool)

(assert (=> b!1854592 (= e!1185139 (and tp!526475 tp!526474))))

(assert (=> b!1853490 (= tp!525634 e!1185139)))

(declare-fun b!1854589 () Bool)

(assert (=> b!1854589 (= e!1185139 tp_is_empty!8507)))

(assert (= (and b!1853490 ((_ is ElementMatch!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854589))

(assert (= (and b!1853490 ((_ is Concat!8840) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854590))

(assert (= (and b!1853490 ((_ is Star!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854591))

(assert (= (and b!1853490 ((_ is Union!5043) (regTwo!10598 (reg!5372 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854592))

(declare-fun b!1854594 () Bool)

(declare-fun e!1185140 () Bool)

(declare-fun tp!526476 () Bool)

(declare-fun tp!526478 () Bool)

(assert (=> b!1854594 (= e!1185140 (and tp!526476 tp!526478))))

(declare-fun b!1854595 () Bool)

(declare-fun tp!526477 () Bool)

(assert (=> b!1854595 (= e!1185140 tp!526477)))

(declare-fun b!1854596 () Bool)

(declare-fun tp!526480 () Bool)

(declare-fun tp!526479 () Bool)

(assert (=> b!1854596 (= e!1185140 (and tp!526480 tp!526479))))

(assert (=> b!1853508 (= tp!525656 e!1185140)))

(declare-fun b!1854593 () Bool)

(assert (=> b!1854593 (= e!1185140 tp_is_empty!8507)))

(assert (= (and b!1853508 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854593))

(assert (= (and b!1853508 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854594))

(assert (= (and b!1853508 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854595))

(assert (= (and b!1853508 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854596))

(declare-fun b!1854598 () Bool)

(declare-fun e!1185141 () Bool)

(declare-fun tp!526481 () Bool)

(declare-fun tp!526483 () Bool)

(assert (=> b!1854598 (= e!1185141 (and tp!526481 tp!526483))))

(declare-fun b!1854599 () Bool)

(declare-fun tp!526482 () Bool)

(assert (=> b!1854599 (= e!1185141 tp!526482)))

(declare-fun b!1854600 () Bool)

(declare-fun tp!526485 () Bool)

(declare-fun tp!526484 () Bool)

(assert (=> b!1854600 (= e!1185141 (and tp!526485 tp!526484))))

(assert (=> b!1853508 (= tp!525655 e!1185141)))

(declare-fun b!1854597 () Bool)

(assert (=> b!1854597 (= e!1185141 tp_is_empty!8507)))

(assert (= (and b!1853508 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854597))

(assert (= (and b!1853508 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854598))

(assert (= (and b!1853508 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854599))

(assert (= (and b!1853508 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regex!3680 (h!25969 (t!172467 rules!865))))))) b!1854600))

(declare-fun b!1854602 () Bool)

(declare-fun e!1185142 () Bool)

(declare-fun tp!526486 () Bool)

(declare-fun tp!526488 () Bool)

(assert (=> b!1854602 (= e!1185142 (and tp!526486 tp!526488))))

(declare-fun b!1854603 () Bool)

(declare-fun tp!526487 () Bool)

(assert (=> b!1854603 (= e!1185142 tp!526487)))

(declare-fun b!1854604 () Bool)

(declare-fun tp!526490 () Bool)

(declare-fun tp!526489 () Bool)

(assert (=> b!1854604 (= e!1185142 (and tp!526490 tp!526489))))

(assert (=> b!1853574 (= tp!525735 e!1185142)))

(declare-fun b!1854601 () Bool)

(assert (=> b!1854601 (= e!1185142 tp_is_empty!8507)))

(assert (= (and b!1853574 ((_ is ElementMatch!5043) (regOne!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854601))

(assert (= (and b!1853574 ((_ is Concat!8840) (regOne!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854602))

(assert (= (and b!1853574 ((_ is Star!5043) (regOne!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854603))

(assert (= (and b!1853574 ((_ is Union!5043) (regOne!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854604))

(declare-fun b!1854606 () Bool)

(declare-fun e!1185143 () Bool)

(declare-fun tp!526491 () Bool)

(declare-fun tp!526493 () Bool)

(assert (=> b!1854606 (= e!1185143 (and tp!526491 tp!526493))))

(declare-fun b!1854607 () Bool)

(declare-fun tp!526492 () Bool)

(assert (=> b!1854607 (= e!1185143 tp!526492)))

(declare-fun b!1854608 () Bool)

(declare-fun tp!526495 () Bool)

(declare-fun tp!526494 () Bool)

(assert (=> b!1854608 (= e!1185143 (and tp!526495 tp!526494))))

(assert (=> b!1853574 (= tp!525734 e!1185143)))

(declare-fun b!1854605 () Bool)

(assert (=> b!1854605 (= e!1185143 tp_is_empty!8507)))

(assert (= (and b!1853574 ((_ is ElementMatch!5043) (regTwo!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854605))

(assert (= (and b!1853574 ((_ is Concat!8840) (regTwo!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854606))

(assert (= (and b!1853574 ((_ is Star!5043) (regTwo!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854607))

(assert (= (and b!1853574 ((_ is Union!5043) (regTwo!10599 (regOne!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854608))

(declare-fun b!1854610 () Bool)

(declare-fun e!1185144 () Bool)

(declare-fun tp!526496 () Bool)

(declare-fun tp!526498 () Bool)

(assert (=> b!1854610 (= e!1185144 (and tp!526496 tp!526498))))

(declare-fun b!1854611 () Bool)

(declare-fun tp!526497 () Bool)

(assert (=> b!1854611 (= e!1185144 tp!526497)))

(declare-fun b!1854612 () Bool)

(declare-fun tp!526500 () Bool)

(declare-fun tp!526499 () Bool)

(assert (=> b!1854612 (= e!1185144 (and tp!526500 tp!526499))))

(assert (=> b!1853468 (= tp!525606 e!1185144)))

(declare-fun b!1854609 () Bool)

(assert (=> b!1854609 (= e!1185144 tp_is_empty!8507)))

(assert (= (and b!1853468 ((_ is ElementMatch!5043) (regOne!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854609))

(assert (= (and b!1853468 ((_ is Concat!8840) (regOne!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854610))

(assert (= (and b!1853468 ((_ is Star!5043) (regOne!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854611))

(assert (= (and b!1853468 ((_ is Union!5043) (regOne!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854612))

(declare-fun b!1854614 () Bool)

(declare-fun e!1185145 () Bool)

(declare-fun tp!526501 () Bool)

(declare-fun tp!526503 () Bool)

(assert (=> b!1854614 (= e!1185145 (and tp!526501 tp!526503))))

(declare-fun b!1854615 () Bool)

(declare-fun tp!526502 () Bool)

(assert (=> b!1854615 (= e!1185145 tp!526502)))

(declare-fun b!1854616 () Bool)

(declare-fun tp!526505 () Bool)

(declare-fun tp!526504 () Bool)

(assert (=> b!1854616 (= e!1185145 (and tp!526505 tp!526504))))

(assert (=> b!1853468 (= tp!525605 e!1185145)))

(declare-fun b!1854613 () Bool)

(assert (=> b!1854613 (= e!1185145 tp_is_empty!8507)))

(assert (= (and b!1853468 ((_ is ElementMatch!5043) (regTwo!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854613))

(assert (= (and b!1853468 ((_ is Concat!8840) (regTwo!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854614))

(assert (= (and b!1853468 ((_ is Star!5043) (regTwo!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854615))

(assert (= (and b!1853468 ((_ is Union!5043) (regTwo!10599 (reg!5372 (regOne!10599 (regex!3680 (h!25969 rules!865))))))) b!1854616))

(declare-fun b!1854618 () Bool)

(declare-fun e!1185146 () Bool)

(declare-fun tp!526506 () Bool)

(declare-fun tp!526508 () Bool)

(assert (=> b!1854618 (= e!1185146 (and tp!526506 tp!526508))))

(declare-fun b!1854619 () Bool)

(declare-fun tp!526507 () Bool)

(assert (=> b!1854619 (= e!1185146 tp!526507)))

(declare-fun b!1854620 () Bool)

(declare-fun tp!526510 () Bool)

(declare-fun tp!526509 () Bool)

(assert (=> b!1854620 (= e!1185146 (and tp!526510 tp!526509))))

(assert (=> b!1853459 (= tp!525593 e!1185146)))

(declare-fun b!1854617 () Bool)

(assert (=> b!1854617 (= e!1185146 tp_is_empty!8507)))

(assert (= (and b!1853459 ((_ is ElementMatch!5043) (reg!5372 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854617))

(assert (= (and b!1853459 ((_ is Concat!8840) (reg!5372 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854618))

(assert (= (and b!1853459 ((_ is Star!5043) (reg!5372 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854619))

(assert (= (and b!1853459 ((_ is Union!5043) (reg!5372 (regOne!10599 (regTwo!10599 (regex!3680 (h!25969 rules!865))))))) b!1854620))

(declare-fun b!1854622 () Bool)

(declare-fun e!1185147 () Bool)

(declare-fun tp!526511 () Bool)

(declare-fun tp!526513 () Bool)

(assert (=> b!1854622 (= e!1185147 (and tp!526511 tp!526513))))

(declare-fun b!1854623 () Bool)

(declare-fun tp!526512 () Bool)

(assert (=> b!1854623 (= e!1185147 tp!526512)))

(declare-fun b!1854624 () Bool)

(declare-fun tp!526515 () Bool)

(declare-fun tp!526514 () Bool)

(assert (=> b!1854624 (= e!1185147 (and tp!526515 tp!526514))))

(assert (=> b!1853576 (= tp!525736 e!1185147)))

(declare-fun b!1854621 () Bool)

(assert (=> b!1854621 (= e!1185147 tp_is_empty!8507)))

(assert (= (and b!1853576 ((_ is ElementMatch!5043) (regOne!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854621))

(assert (= (and b!1853576 ((_ is Concat!8840) (regOne!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854622))

(assert (= (and b!1853576 ((_ is Star!5043) (regOne!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854623))

(assert (= (and b!1853576 ((_ is Union!5043) (regOne!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854624))

(declare-fun b!1854626 () Bool)

(declare-fun e!1185148 () Bool)

(declare-fun tp!526516 () Bool)

(declare-fun tp!526518 () Bool)

(assert (=> b!1854626 (= e!1185148 (and tp!526516 tp!526518))))

(declare-fun b!1854627 () Bool)

(declare-fun tp!526517 () Bool)

(assert (=> b!1854627 (= e!1185148 tp!526517)))

(declare-fun b!1854628 () Bool)

(declare-fun tp!526520 () Bool)

(declare-fun tp!526519 () Bool)

(assert (=> b!1854628 (= e!1185148 (and tp!526520 tp!526519))))

(assert (=> b!1853576 (= tp!525738 e!1185148)))

(declare-fun b!1854625 () Bool)

(assert (=> b!1854625 (= e!1185148 tp_is_empty!8507)))

(assert (= (and b!1853576 ((_ is ElementMatch!5043) (regTwo!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854625))

(assert (= (and b!1853576 ((_ is Concat!8840) (regTwo!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854626))

(assert (= (and b!1853576 ((_ is Star!5043) (regTwo!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854627))

(assert (= (and b!1853576 ((_ is Union!5043) (regTwo!10598 (regTwo!10598 (reg!5372 (regex!3680 (h!25969 rules!865))))))) b!1854628))

(declare-fun b!1854630 () Bool)

(declare-fun e!1185149 () Bool)

(declare-fun tp!526521 () Bool)

(declare-fun tp!526523 () Bool)

(assert (=> b!1854630 (= e!1185149 (and tp!526521 tp!526523))))

(declare-fun b!1854631 () Bool)

(declare-fun tp!526522 () Bool)

(assert (=> b!1854631 (= e!1185149 tp!526522)))

(declare-fun b!1854632 () Bool)

(declare-fun tp!526525 () Bool)

(declare-fun tp!526524 () Bool)

(assert (=> b!1854632 (= e!1185149 (and tp!526525 tp!526524))))

(assert (=> b!1853567 (= tp!525726 e!1185149)))

(declare-fun b!1854629 () Bool)

(assert (=> b!1854629 (= e!1185149 tp_is_empty!8507)))

(assert (= (and b!1853567 ((_ is ElementMatch!5043) (regOne!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854629))

(assert (= (and b!1853567 ((_ is Concat!8840) (regOne!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854630))

(assert (= (and b!1853567 ((_ is Star!5043) (regOne!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854631))

(assert (= (and b!1853567 ((_ is Union!5043) (regOne!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854632))

(declare-fun b!1854634 () Bool)

(declare-fun e!1185150 () Bool)

(declare-fun tp!526526 () Bool)

(declare-fun tp!526528 () Bool)

(assert (=> b!1854634 (= e!1185150 (and tp!526526 tp!526528))))

(declare-fun b!1854635 () Bool)

(declare-fun tp!526527 () Bool)

(assert (=> b!1854635 (= e!1185150 tp!526527)))

(declare-fun b!1854636 () Bool)

(declare-fun tp!526530 () Bool)

(declare-fun tp!526529 () Bool)

(assert (=> b!1854636 (= e!1185150 (and tp!526530 tp!526529))))

(assert (=> b!1853567 (= tp!525725 e!1185150)))

(declare-fun b!1854633 () Bool)

(assert (=> b!1854633 (= e!1185150 tp_is_empty!8507)))

(assert (= (and b!1853567 ((_ is ElementMatch!5043) (regTwo!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854633))

(assert (= (and b!1853567 ((_ is Concat!8840) (regTwo!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854634))

(assert (= (and b!1853567 ((_ is Star!5043) (regTwo!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854635))

(assert (= (and b!1853567 ((_ is Union!5043) (regTwo!10599 (regTwo!10598 (regTwo!10598 (regex!3680 (h!25969 rules!865))))))) b!1854636))

(declare-fun b_lambda!61477 () Bool)

(assert (= b_lambda!61455 (or d!566319 b_lambda!61477)))

(declare-fun bs!410588 () Bool)

(declare-fun d!566643 () Bool)

(assert (= bs!410588 (and d!566643 d!566319)))

(assert (=> bs!410588 (= (dynLambda!10184 lambda!73268 (h!25970 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))) (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (t!172468 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))))

(assert (=> bs!410588 m!2280247))

(assert (=> b!1853617 d!566643))

(declare-fun b_lambda!61479 () Bool)

(assert (= b_lambda!61453 (or d!566393 b_lambda!61479)))

(declare-fun bs!410589 () Bool)

(declare-fun d!566645 () Bool)

(assert (= bs!410589 (and d!566645 d!566393)))

(assert (=> bs!410589 (= (dynLambda!10183 lambda!73291 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))) (ruleValid!1141 Lexer!3300 (h!25969 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))))))))

(assert (=> bs!410589 m!2280237))

(assert (=> b!1853597 d!566645))

(declare-fun b_lambda!61481 () Bool)

(assert (= b_lambda!61465 (or d!566383 b_lambda!61481)))

(declare-fun bs!410590 () Bool)

(declare-fun d!566647 () Bool)

(assert (= bs!410590 (and d!566647 d!566383)))

(assert (=> bs!410590 (= (dynLambda!10183 lambda!73290 (h!25969 rules!865)) (ruleValid!1141 Lexer!3300 (h!25969 rules!865)))))

(assert (=> bs!410590 m!2280167))

(assert (=> b!1853799 d!566647))

(declare-fun b_lambda!61483 () Bool)

(assert (= b_lambda!61457 (or d!566369 b_lambda!61483)))

(declare-fun bs!410591 () Bool)

(declare-fun d!566649 () Bool)

(assert (= bs!410591 (and d!566649 d!566369)))

(assert (=> bs!410591 (= (dynLambda!10184 lambda!73287 (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))) (rulesProduceIndividualToken!1541 Lexer!3300 (rules!15042 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808))) (h!25970 (list!8341 (tokens!2448 (PrintableTokens!1245 rules!865 (BalanceConc!13545 Empty!6808)))))))))

(assert (=> bs!410591 m!2280159))

(assert (=> b!1853619 d!566649))

(declare-fun b_lambda!61485 () Bool)

(assert (= b_lambda!61467 (or d!566323 b_lambda!61485)))

(declare-fun bs!410592 () Bool)

(declare-fun d!566651 () Bool)

(assert (= bs!410592 (and d!566651 d!566323)))

(assert (=> bs!410592 (= (dynLambda!10183 lambda!73274 (h!25969 (t!172467 rules!865))) (ruleValid!1141 Lexer!3300 (h!25969 (t!172467 rules!865))))))

(assert (=> bs!410592 m!2280635))

(assert (=> b!1853801 d!566651))

(check-sat (not d!566625) (not b!1854216) (not b!1854250) (not b!1854040) (not b!1854516) (not b!1854415) (not b!1854472) (not b!1854260) (not b!1854503) (not b!1854436) (not b!1854222) (not b!1854399) (not d!566417) (not b!1854420) (not b_lambda!61477) (not b!1854093) (not b!1854523) (not b!1853689) (not b!1854387) (not b!1854273) (not b!1854294) (not b!1853620) (not b!1854602) (not b!1854317) (not b!1854599) (not b!1854578) (not b!1854422) (not b!1854225) (not b!1853815) (not b!1854164) (not b!1854064) (not d!566489) (not b!1854467) (not bm!115382) (not b!1854176) (not b!1854546) (not b!1853702) (not b!1854550) (not b!1853613) (not d!566427) (not b!1854357) (not b!1854290) (not b!1854150) (not b!1854459) (not b!1854451) (not b!1854196) (not b!1853594) (not b!1854448) (not d!566515) (not b!1854034) (not b!1854594) (not b!1854514) (not b!1854626) (not b!1854032) (not b!1854044) (not b!1854322) (not b!1853800) (not b!1854186) (not b!1853752) (not b!1853600) (not b!1853989) (not b!1853986) (not b!1854080) (not b!1854339) (not b!1854543) (not b!1854351) (not b!1854619) (not b!1854608) (not b!1854121) (not b!1854288) (not b!1853795) (not b!1854506) (not b!1854518) (not b_lambda!61449) (not b!1854368) (not b!1854373) (not b!1854198) (not b!1854026) (not b!1854189) (not b!1854443) (not d!566419) (not b!1854580) (not b!1854498) (not b!1854630) (not b!1854033) (not b!1853765) (not b!1854572) (not b!1854045) (not d!566455) (not b!1854049) (not b!1854384) (not b!1854048) (not b!1854504) (not b!1854379) (not b!1854471) (not b!1854134) (not b!1854310) (not b!1854632) (not b!1854274) (not b!1854058) (not b!1854406) (not d!566491) (not b!1854265) (not b!1854534) (not d!566477) (not b!1854535) (not d!566513) (not b!1853700) (not b!1854595) (not b!1854360) (not b!1854510) (not b_next!52621) (not b!1854278) (not b!1853810) (not b!1854376) (not b!1854614) (not b!1854220) (not b!1854109) (not b!1854160) (not b!1854418) (not b!1854452) (not b!1854592) (not b!1853686) (not b!1854560) (not b!1854302) (not b!1854620) (not b!1854487) (not b!1854463) (not b!1854140) (not b!1853790) (not b!1854190) (not b!1854327) (not b!1854212) (not b!1854234) b_and!144161 (not b!1854129) (not b!1854060) (not b!1854520) (not b_next!52591) (not d!566479) (not b!1854494) (not b!1854065) (not b_lambda!61463) (not b!1854556) (not d!566421) (not b!1854010) (not b!1854407) (not b!1854502) (not b!1854607) (not d!566629) b_and!144173 (not b!1854133) (not b!1854054) (not b!1854336) (not b!1854286) (not b!1854038) (not b!1854257) (not b!1854050) (not b!1853598) (not b!1854462) (not b!1853797) (not b!1854447) (not b!1854427) (not b!1854496) (not b!1853745) (not b!1853699) (not b!1853676) (not b!1854634) (not b!1854266) (not b!1854391) (not b!1854166) (not b!1854252) (not d!566411) (not b!1854458) (not b!1854226) (not b!1854081) (not b!1853792) (not b!1853612) (not b!1854635) (not b!1854564) (not b!1853998) (not b!1854480) (not b!1854113) (not b!1854254) (not b!1854495) (not d!566523) (not b!1854185) (not b!1854323) (not b!1854401) (not b!1854105) (not b!1854194) (not b!1854232) (not b!1854397) (not tb!112909) (not b!1854389) (not b!1854308) (not b!1854353) b_and!144175 (not b!1854118) (not b!1854188) (not b!1854491) (not b!1853711) (not b!1854432) (not b!1854036) (not b!1854428) (not b!1854440) (not b!1853599) (not b!1854623) (not b!1854419) (not b!1854460) (not b!1854261) (not b!1854240) (not b!1854555) (not b!1854148) (not b!1854156) (not b!1854214) (not b!1853983) (not d!566493) (not b!1854364) (not b!1854218) (not b!1854372) (not b!1854309) (not b_next!52615) (not b!1854355) (not b!1854217) (not d!566431) (not b!1854090) (not b!1853793) (not b!1853641) (not b!1854037) (not b!1853988) (not b!1854244) (not d!566449) (not b!1854532) (not b!1854304) (not b!1854181) (not b!1854438) (not b!1854069) (not b!1853589) (not b!1854402) (not b!1854137) (not b!1854476) (not b!1853791) (not b!1854587) (not b!1854161) (not b!1854249) (not b!1854455) (not b!1854025) (not b!1854024) (not b!1853713) (not d!566533) (not b!1854566) (not b!1853757) b_and!144157 (not b!1854511) (not b!1854542) (not b!1854576) (not b!1854177) (not b!1854009) (not b!1854192) (not d!566445) (not b!1853618) (not b!1854490) (not b!1854076) (not b!1853932) (not b!1853592) (not b!1853590) (not b!1854238) (not b!1854101) (not b!1854173) (not b!1854598) (not b!1854029) (not b_lambda!61483) (not b!1854144) (not d!566519) (not b!1854074) (not b!1854464) (not b!1854041) (not d!566589) (not b!1854554) (not b!1854318) (not b!1854314) (not b!1853756) (not b!1853632) (not b!1854335) (not bm!115383) (not b!1854165) (not b_next!52619) (not b!1853987) (not b!1854348) (not b!1854411) (not b!1854575) (not b_next!52599) (not d!566487) (not bs!410591) (not d!566501) (not b!1854446) (not b!1854085) (not b!1854363) (not b!1854094) (not b!1853999) (not d!566495) (not b!1854482) b_and!144145 (not b!1854567) (not bm!115380) (not b!1853762) (not b!1854412) (not b!1854088) (not b!1854213) (not b!1854423) (not b!1854172) (not d!566639) (not b!1854349) (not b!1854132) (not d!566507) (not b!1854392) (not b!1854328) (not b!1854061) (not b!1854210) (not b!1854507) (not b!1853644) (not d!566481) (not b!1854233) (not b!1854434) (not b!1854272) (not b!1854206) (not b!1854591) (not b!1854122) (not b!1853681) (not b!1854610) (not b!1854424) (not b!1854622) (not b!1854096) (not b!1854285) (not b!1853596) (not b!1854062) (not d!566517) (not b!1854152) (not b!1854149) (not b!1854056) (not b!1854344) (not b!1854293) (not d!566437) (not b!1854430) (not b!1854538) (not b!1854590) (not b!1853809) (not b!1854527) (not b!1854052) (not b!1854276) (not b!1854182) (not b!1854019) (not b!1854329) (not b!1854300) (not b!1854241) (not b!1854046) (not b!1854169) (not b!1854281) (not b!1853739) (not b!1854385) (not b!1854301) (not b!1854305) (not b!1854618) (not b!1854466) (not b!1854570) (not b!1853789) (not b!1854312) (not b!1854456) (not b!1853673) (not b!1854020) (not b!1853794) (not b!1854230) (not b!1854018) (not b!1853685) (not b!1854539) (not b!1853931) (not b!1854536) (not b!1854224) (not b!1854245) (not b!1854478) (not b!1854596) (not d!566467) (not b!1854086) (not b!1854100) (not b!1854200) (not d!566511) (not b!1853643) (not b!1853611) (not d!566483) (not bm!115379) (not b!1854296) (not b!1854102) (not bs!410592) (not b!1854588) (not b!1854359) (not b!1854604) (not b!1854174) (not b!1854114) (not b!1854606) (not b!1854078) (not b!1853601) (not b!1854548) (not b!1854158) (not b!1854375) (not b!1854092) (not b!1854262) (not b!1854282) (not b!1854270) (not b!1854340) (not b!1854512) (not b!1853754) (not b!1854068) (not b!1854142) (not b!1854005) (not b!1854205) (not b!1854269) (not b!1854528) (not b!1853990) (not b!1854130) (not b!1854551) (not b!1854488) b_and!144163 (not b!1854289) (not b!1853727) (not b!1854586) (not d!566525) (not b!1853621) (not b!1854611) (not d!566509) (not b!1854264) (not b!1853736) (not b_lambda!61481) (not b!1854431) (not b!1854410) (not b!1854313) (not bm!115384) (not b!1854356) (not b!1854475) (not b!1854125) (not d!566537) (not b!1853753) (not b!1854400) (not b!1854426) (not b!1854470) (not b!1854530) (not b!1854552) (not b_next!52601) (not b!1853730) (not b!1854396) b_and!144159 (not b!1854484) (not b!1853591) (not b!1854120) (not b!1854361) (not b!1854574) (not bs!410589) (not b!1854098) (not b!1853777) (not b!1854154) (not b!1854042) (not b!1853818) (not b!1854500) (not b!1854526) (not b!1853755) (not b!1854486) (not b!1854297) (not b!1854184) (not b!1854369) (not b!1854007) (not b_next!52593) (not b!1854383) (not b!1854444) (not b!1854352) (not b!1854077) (not b!1854138) (not b!1854204) (not b!1854201) (not b!1854559) (not b!1854001) (not b!1854479) (not b!1854015) (not b!1854070) (not b!1854416) (not d!566423) (not b!1854162) (not b!1854380) (not b!1854208) (not b!1853798) (not b!1854332) (not b!1854017) b_and!144153 (not b!1854248) (not b!1854343) (not b!1854193) (not b!1854341) (not b!1854624) (not b!1854168) (not d!566631) (not b!1854583) (not b!1854544) (not b!1854108) (not b!1854367) (not b!1854180) (not b!1854126) (not b_next!52607) (not b!1854170) (not b!1853683) (not b!1854089) (not b!1853616) (not b!1854258) (not b!1854057) (not b!1854483) (not b!1854197) (not d!566535) (not b!1854000) (not b_lambda!61479) (not b!1854178) (not b!1854499) (not b!1854298) (not b!1854388) (not b!1853697) (not b!1854628) b_and!144137 (not b!1854365) (not b!1853807) (not b!1854030) (not b!1854237) (not b!1854582) (not b!1854612) (not b!1854616) (not b!1854014) (not b!1854414) (not b!1854321) (not b!1853610) (not b!1854454) (not b!1854141) (not b!1854228) (not b!1853703) (not b!1854324) (not b!1854128) (not b!1854209) (not b!1854082) (not b!1854084) (not b!1854110) (not d!566451) (not b!1854563) (not b!1854450) (not b!1854104) (not b!1854474) (not b!1854253) (not b!1854408) (not b!1854393) (not b!1854013) (not b!1854229) (not b!1854377) (not b!1854371) (not b!1854284) (not d!566529) (not b_lambda!61485) (not b!1854136) (not b_next!52617) (not b!1854268) (not b!1854117) b_and!144129 (not b!1854337) (not b!1853614) (not b!1854579) (not b!1854320) (not b!1854280) (not b!1853778) (not b!1854331) (not b!1853682) (not b!1854439) (not bm!115381) (not b!1853802) (not b!1854381) (not b!1854631) (not b!1853776) (not b!1854435) (not b!1854292) (not b!1854492) (not b!1854106) (not b!1854256) (not b!1854116) (not b!1854066) (not b!1854157) (not b!1854345) (not b!1854072) (not bs!410590) (not b!1854112) (not b!1854277) (not b!1853701) (not b_lambda!61451) (not b!1854515) (not b!1854124) (not b!1854522) (not b!1854540) (not b!1854395) (not b!1854097) (not b!1854636) (not b!1854627) (not b!1854246) (not b!1854316) (not b!1854524) (not b!1854508) (not b!1854571) (not b!1854468) (not b!1854531) (not b!1854153) (not b!1853595) (not b!1854519) (not b!1854600) (not b!1853708) (not b!1853694) (not b!1854547) (not b!1854347) (not b!1854562) (not d!566457) (not b!1854242) (not b!1853642) (not b!1854584) (not b!1854073) (not b!1854603) (not bs!410588) (not b!1854011) (not b!1854442) (not b!1854615) (not b!1854236) (not b!1854028) (not b!1854568) (not b!1854006) tp_is_empty!8507 (not b!1853796) (not b!1854306) (not b!1854333) (not b!1854053) (not d!566497) (not b!1854202) (not b_next!52609) (not bm!115378) (not d!566505) (not b!1854146) (not b!1854221) (not b!1854145) (not b!1854558) (not b!1853684))
(check-sat b_and!144175 (not b_next!52615) b_and!144157 b_and!144145 b_and!144163 (not b_next!52593) b_and!144153 (not b_next!52609) (not b_next!52621) b_and!144161 (not b_next!52591) b_and!144173 (not b_next!52599) (not b_next!52619) (not b_next!52601) b_and!144159 (not b_next!52607) b_and!144137 (not b_next!52617) b_and!144129)
