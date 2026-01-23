; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!133114 () Bool)

(assert start!133114)

(declare-fun res!650132 () Bool)

(declare-fun e!916487 () Bool)

(assert (=> start!133114 (=> (not res!650132) (not e!916487))))

(declare-datatypes ((C!8058 0))(
  ( (C!8059 (val!4599 Int)) )
))
(declare-datatypes ((List!15008 0))(
  ( (Nil!14942) (Cons!14942 (h!20343 C!8058) (t!127415 List!15008)) )
))
(declare-datatypes ((IArray!10161 0))(
  ( (IArray!10162 (innerList!5138 List!15008)) )
))
(declare-datatypes ((Conc!5078 0))(
  ( (Node!5078 (left!12730 Conc!5078) (right!13060 Conc!5078) (csize!10386 Int) (cheight!5289 Int)) (Leaf!7593 (xs!7811 IArray!10161) (csize!10387 Int)) (Empty!5078) )
))
(declare-datatypes ((BalanceConc!10096 0))(
  ( (BalanceConc!10097 (c!236029 Conc!5078)) )
))
(declare-datatypes ((List!15009 0))(
  ( (Nil!14943) (Cons!14943 (h!20344 (_ BitVec 16)) (t!127416 List!15009)) )
))
(declare-datatypes ((TokenValue!2716 0))(
  ( (FloatLiteralValue!5432 (text!19457 List!15009)) (TokenValueExt!2715 (__x!9226 Int)) (Broken!13580 (value!84464 List!15009)) (Object!2781) (End!2716) (Def!2716) (Underscore!2716) (Match!2716) (Else!2716) (Error!2716) (Case!2716) (If!2716) (Extends!2716) (Abstract!2716) (Class!2716) (Val!2716) (DelimiterValue!5432 (del!2776 List!15009)) (KeywordValue!2722 (value!84465 List!15009)) (CommentValue!5432 (value!84466 List!15009)) (WhitespaceValue!5432 (value!84467 List!15009)) (IndentationValue!2716 (value!84468 List!15009)) (String!17837) (Int32!2716) (Broken!13581 (value!84469 List!15009)) (Boolean!2717) (Unit!23009) (OperatorValue!2719 (op!2776 List!15009)) (IdentifierValue!5432 (value!84470 List!15009)) (IdentifierValue!5433 (value!84471 List!15009)) (WhitespaceValue!5433 (value!84472 List!15009)) (True!5432) (False!5432) (Broken!13582 (value!84473 List!15009)) (Broken!13583 (value!84474 List!15009)) (True!5433) (RightBrace!2716) (RightBracket!2716) (Colon!2716) (Null!2716) (Comma!2716) (LeftBracket!2716) (False!5433) (LeftBrace!2716) (ImaginaryLiteralValue!2716 (text!19458 List!15009)) (StringLiteralValue!8148 (value!84475 List!15009)) (EOFValue!2716 (value!84476 List!15009)) (IdentValue!2716 (value!84477 List!15009)) (DelimiterValue!5433 (value!84478 List!15009)) (DedentValue!2716 (value!84479 List!15009)) (NewLineValue!2716 (value!84480 List!15009)) (IntegerValue!8148 (value!84481 (_ BitVec 32)) (text!19459 List!15009)) (IntegerValue!8149 (value!84482 Int) (text!19460 List!15009)) (Times!2716) (Or!2716) (Equal!2716) (Minus!2716) (Broken!13584 (value!84483 List!15009)) (And!2716) (Div!2716) (LessEqual!2716) (Mod!2716) (Concat!6656) (Not!2716) (Plus!2716) (SpaceValue!2716 (value!84484 List!15009)) (IntegerValue!8150 (value!84485 Int) (text!19461 List!15009)) (StringLiteralValue!8149 (text!19462 List!15009)) (FloatLiteralValue!5433 (text!19463 List!15009)) (BytesLiteralValue!2716 (value!84486 List!15009)) (CommentValue!5433 (value!84487 List!15009)) (StringLiteralValue!8150 (value!84488 List!15009)) (ErrorTokenValue!2716 (msg!2777 List!15009)) )
))
(declare-datatypes ((Regex!3940 0))(
  ( (ElementMatch!3940 (c!236030 C!8058)) (Concat!6657 (regOne!8392 Regex!3940) (regTwo!8392 Regex!3940)) (EmptyExpr!3940) (Star!3940 (reg!4269 Regex!3940)) (EmptyLang!3940) (Union!3940 (regOne!8393 Regex!3940) (regTwo!8393 Regex!3940)) )
))
(declare-datatypes ((String!17838 0))(
  ( (String!17839 (value!84489 String)) )
))
(declare-datatypes ((TokenValueInjection!5092 0))(
  ( (TokenValueInjection!5093 (toValue!3929 Int) (toChars!3788 Int)) )
))
(declare-datatypes ((Rule!5052 0))(
  ( (Rule!5053 (regex!2626 Regex!3940) (tag!2888 String!17838) (isSeparator!2626 Bool) (transformation!2626 TokenValueInjection!5092)) )
))
(declare-datatypes ((Token!4914 0))(
  ( (Token!4915 (value!84490 TokenValue!2716) (rule!4391 Rule!5052) (size!12248 Int) (originalCharacters!3488 List!15008)) )
))
(declare-datatypes ((List!15010 0))(
  ( (Nil!14944) (Cons!14944 (h!20345 Token!4914) (t!127417 List!15010)) )
))
(declare-datatypes ((IArray!10163 0))(
  ( (IArray!10164 (innerList!5139 List!15010)) )
))
(declare-datatypes ((Conc!5079 0))(
  ( (Node!5079 (left!12731 Conc!5079) (right!13061 Conc!5079) (csize!10388 Int) (cheight!5290 Int)) (Leaf!7594 (xs!7812 IArray!10163) (csize!10389 Int)) (Empty!5079) )
))
(declare-datatypes ((BalanceConc!10098 0))(
  ( (BalanceConc!10099 (c!236031 Conc!5079)) )
))
(declare-datatypes ((List!15011 0))(
  ( (Nil!14945) (Cons!14945 (h!20346 Rule!5052) (t!127418 List!15011)) )
))
(declare-datatypes ((PrintableTokens!1034 0))(
  ( (PrintableTokens!1035 (rules!11419 List!15011) (tokens!1991 BalanceConc!10098)) )
))
(declare-fun thiss!10022 () PrintableTokens!1034)

(declare-fun other!32 () PrintableTokens!1034)

(assert (=> start!133114 (= res!650132 (= (rules!11419 thiss!10022) (rules!11419 other!32)))))

(assert (=> start!133114 e!916487))

(declare-fun e!916484 () Bool)

(declare-fun inv!19863 (PrintableTokens!1034) Bool)

(assert (=> start!133114 (and (inv!19863 thiss!10022) e!916484)))

(declare-fun e!916489 () Bool)

(assert (=> start!133114 (and (inv!19863 other!32) e!916489)))

(declare-fun b!1435797 () Bool)

(declare-fun e!916485 () Bool)

(assert (=> b!1435797 (= e!916487 e!916485)))

(declare-fun res!650134 () Bool)

(assert (=> b!1435797 (=> (not res!650134) (not e!916485))))

(declare-fun isEmpty!9286 (BalanceConc!10098) Bool)

(assert (=> b!1435797 (= res!650134 (not (isEmpty!9286 (tokens!1991 other!32))))))

(declare-datatypes ((Unit!23010 0))(
  ( (Unit!23011) )
))
(declare-fun lt!490820 () Unit!23010)

(declare-fun lemmaInvariant!322 (PrintableTokens!1034) Unit!23010)

(assert (=> b!1435797 (= lt!490820 (lemmaInvariant!322 thiss!10022))))

(declare-fun lt!490819 () Unit!23010)

(assert (=> b!1435797 (= lt!490819 (lemmaInvariant!322 other!32))))

(declare-fun b!1435798 () Bool)

(declare-fun res!650133 () Bool)

(assert (=> b!1435798 (=> (not res!650133) (not e!916485))))

(assert (=> b!1435798 (= res!650133 (isEmpty!9286 (tokens!1991 thiss!10022)))))

(declare-fun b!1435799 () Bool)

(declare-fun isEmpty!9287 (List!15010) Bool)

(declare-fun list!5941 (BalanceConc!10098) List!15010)

(assert (=> b!1435799 (= e!916485 (not (isEmpty!9287 (list!5941 (tokens!1991 thiss!10022)))))))

(declare-fun b!1435800 () Bool)

(declare-fun e!916488 () Bool)

(declare-fun tp!406637 () Bool)

(declare-fun inv!19864 (Conc!5079) Bool)

(assert (=> b!1435800 (= e!916488 (and (inv!19864 (c!236031 (tokens!1991 other!32))) tp!406637))))

(declare-fun tp!406638 () Bool)

(declare-fun b!1435801 () Bool)

(declare-fun inv!19865 (BalanceConc!10098) Bool)

(assert (=> b!1435801 (= e!916489 (and tp!406638 (inv!19865 (tokens!1991 other!32)) e!916488))))

(declare-fun b!1435802 () Bool)

(declare-fun e!916486 () Bool)

(declare-fun tp!406635 () Bool)

(assert (=> b!1435802 (= e!916484 (and tp!406635 (inv!19865 (tokens!1991 thiss!10022)) e!916486))))

(declare-fun b!1435803 () Bool)

(declare-fun tp!406636 () Bool)

(assert (=> b!1435803 (= e!916486 (and (inv!19864 (c!236031 (tokens!1991 thiss!10022))) tp!406636))))

(assert (= (and start!133114 res!650132) b!1435797))

(assert (= (and b!1435797 res!650134) b!1435798))

(assert (= (and b!1435798 res!650133) b!1435799))

(assert (= b!1435802 b!1435803))

(assert (= start!133114 b!1435802))

(assert (= b!1435801 b!1435800))

(assert (= start!133114 b!1435801))

(declare-fun m!1641489 () Bool)

(assert (=> b!1435799 m!1641489))

(assert (=> b!1435799 m!1641489))

(declare-fun m!1641491 () Bool)

(assert (=> b!1435799 m!1641491))

(declare-fun m!1641493 () Bool)

(assert (=> b!1435803 m!1641493))

(declare-fun m!1641495 () Bool)

(assert (=> b!1435801 m!1641495))

(declare-fun m!1641497 () Bool)

(assert (=> b!1435800 m!1641497))

(declare-fun m!1641499 () Bool)

(assert (=> b!1435802 m!1641499))

(declare-fun m!1641501 () Bool)

(assert (=> b!1435798 m!1641501))

(declare-fun m!1641503 () Bool)

(assert (=> start!133114 m!1641503))

(declare-fun m!1641505 () Bool)

(assert (=> start!133114 m!1641505))

(declare-fun m!1641507 () Bool)

(assert (=> b!1435797 m!1641507))

(declare-fun m!1641509 () Bool)

(assert (=> b!1435797 m!1641509))

(declare-fun m!1641511 () Bool)

(assert (=> b!1435797 m!1641511))

(push 1)

(assert (not b!1435797))

(assert (not b!1435798))

(assert (not b!1435800))

(assert (not b!1435799))

(assert (not b!1435803))

(assert (not b!1435802))

(assert (not start!133114))

(assert (not b!1435801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!413605 () Bool)

(declare-fun res!650153 () Bool)

(declare-fun e!916516 () Bool)

(assert (=> d!413605 (=> (not res!650153) (not e!916516))))

(declare-fun isEmpty!9290 (List!15011) Bool)

(assert (=> d!413605 (= res!650153 (not (isEmpty!9290 (rules!11419 thiss!10022))))))

(assert (=> d!413605 (= (inv!19863 thiss!10022) e!916516)))

(declare-fun b!1435840 () Bool)

(declare-fun res!650154 () Bool)

(assert (=> b!1435840 (=> (not res!650154) (not e!916516))))

(declare-datatypes ((LexerInterface!2286 0))(
  ( (LexerInterfaceExt!2283 (__x!9228 Int)) (Lexer!2284) )
))
(declare-fun rulesInvariant!2124 (LexerInterface!2286 List!15011) Bool)

(assert (=> b!1435840 (= res!650154 (rulesInvariant!2124 Lexer!2284 (rules!11419 thiss!10022)))))

(declare-fun b!1435841 () Bool)

(declare-fun res!650155 () Bool)

(assert (=> b!1435841 (=> (not res!650155) (not e!916516))))

(declare-fun rulesProduceEachTokenIndividually!842 (LexerInterface!2286 List!15011 BalanceConc!10098) Bool)

(assert (=> b!1435841 (= res!650155 (rulesProduceEachTokenIndividually!842 Lexer!2284 (rules!11419 thiss!10022) (tokens!1991 thiss!10022)))))

(declare-fun b!1435842 () Bool)

(declare-fun separableTokens!226 (LexerInterface!2286 BalanceConc!10098 List!15011) Bool)

(assert (=> b!1435842 (= e!916516 (separableTokens!226 Lexer!2284 (tokens!1991 thiss!10022) (rules!11419 thiss!10022)))))

(assert (= (and d!413605 res!650153) b!1435840))

(assert (= (and b!1435840 res!650154) b!1435841))

(assert (= (and b!1435841 res!650155) b!1435842))

(declare-fun m!1641545 () Bool)

(assert (=> d!413605 m!1641545))

(declare-fun m!1641547 () Bool)

(assert (=> b!1435840 m!1641547))

(declare-fun m!1641549 () Bool)

(assert (=> b!1435841 m!1641549))

(declare-fun m!1641551 () Bool)

(assert (=> b!1435842 m!1641551))

(assert (=> start!133114 d!413605))

(declare-fun d!413617 () Bool)

(declare-fun res!650156 () Bool)

(declare-fun e!916517 () Bool)

(assert (=> d!413617 (=> (not res!650156) (not e!916517))))

(assert (=> d!413617 (= res!650156 (not (isEmpty!9290 (rules!11419 other!32))))))

(assert (=> d!413617 (= (inv!19863 other!32) e!916517)))

(declare-fun b!1435843 () Bool)

(declare-fun res!650157 () Bool)

(assert (=> b!1435843 (=> (not res!650157) (not e!916517))))

(assert (=> b!1435843 (= res!650157 (rulesInvariant!2124 Lexer!2284 (rules!11419 other!32)))))

(declare-fun b!1435844 () Bool)

(declare-fun res!650158 () Bool)

(assert (=> b!1435844 (=> (not res!650158) (not e!916517))))

(assert (=> b!1435844 (= res!650158 (rulesProduceEachTokenIndividually!842 Lexer!2284 (rules!11419 other!32) (tokens!1991 other!32)))))

(declare-fun b!1435845 () Bool)

(assert (=> b!1435845 (= e!916517 (separableTokens!226 Lexer!2284 (tokens!1991 other!32) (rules!11419 other!32)))))

(assert (= (and d!413617 res!650156) b!1435843))

(assert (= (and b!1435843 res!650157) b!1435844))

(assert (= (and b!1435844 res!650158) b!1435845))

(declare-fun m!1641553 () Bool)

(assert (=> d!413617 m!1641553))

(declare-fun m!1641555 () Bool)

(assert (=> b!1435843 m!1641555))

(declare-fun m!1641557 () Bool)

(assert (=> b!1435844 m!1641557))

(declare-fun m!1641559 () Bool)

(assert (=> b!1435845 m!1641559))

(assert (=> start!133114 d!413617))

(declare-fun d!413619 () Bool)

(declare-fun isBalanced!1506 (Conc!5079) Bool)

(assert (=> d!413619 (= (inv!19865 (tokens!1991 other!32)) (isBalanced!1506 (c!236031 (tokens!1991 other!32))))))

(declare-fun bs!341125 () Bool)

(assert (= bs!341125 d!413619))

(declare-fun m!1641561 () Bool)

(assert (=> bs!341125 m!1641561))

(assert (=> b!1435801 d!413619))

(declare-fun d!413621 () Bool)

(declare-fun lt!490829 () Bool)

(assert (=> d!413621 (= lt!490829 (isEmpty!9287 (list!5941 (tokens!1991 other!32))))))

(declare-fun isEmpty!9291 (Conc!5079) Bool)

(assert (=> d!413621 (= lt!490829 (isEmpty!9291 (c!236031 (tokens!1991 other!32))))))

(assert (=> d!413621 (= (isEmpty!9286 (tokens!1991 other!32)) lt!490829)))

(declare-fun bs!341126 () Bool)

(assert (= bs!341126 d!413621))

(declare-fun m!1641563 () Bool)

(assert (=> bs!341126 m!1641563))

(assert (=> bs!341126 m!1641563))

(declare-fun m!1641565 () Bool)

(assert (=> bs!341126 m!1641565))

(declare-fun m!1641567 () Bool)

(assert (=> bs!341126 m!1641567))

(assert (=> b!1435797 d!413621))

(declare-fun d!413623 () Bool)

(declare-fun e!916520 () Bool)

(assert (=> d!413623 e!916520))

(declare-fun res!650163 () Bool)

(assert (=> d!413623 (=> (not res!650163) (not e!916520))))

(assert (=> d!413623 (= res!650163 (rulesInvariant!2124 Lexer!2284 (rules!11419 thiss!10022)))))

(declare-fun Unit!23015 () Unit!23010)

(assert (=> d!413623 (= (lemmaInvariant!322 thiss!10022) Unit!23015)))

(declare-fun b!1435850 () Bool)

(declare-fun res!650164 () Bool)

(assert (=> b!1435850 (=> (not res!650164) (not e!916520))))

(assert (=> b!1435850 (= res!650164 (rulesProduceEachTokenIndividually!842 Lexer!2284 (rules!11419 thiss!10022) (tokens!1991 thiss!10022)))))

(declare-fun b!1435851 () Bool)

(assert (=> b!1435851 (= e!916520 (separableTokens!226 Lexer!2284 (tokens!1991 thiss!10022) (rules!11419 thiss!10022)))))

(assert (= (and d!413623 res!650163) b!1435850))

(assert (= (and b!1435850 res!650164) b!1435851))

(assert (=> d!413623 m!1641547))

(assert (=> b!1435850 m!1641549))

(assert (=> b!1435851 m!1641551))

(assert (=> b!1435797 d!413623))

(declare-fun d!413625 () Bool)

(declare-fun e!916521 () Bool)

(assert (=> d!413625 e!916521))

(declare-fun res!650165 () Bool)

(assert (=> d!413625 (=> (not res!650165) (not e!916521))))

(assert (=> d!413625 (= res!650165 (rulesInvariant!2124 Lexer!2284 (rules!11419 other!32)))))

(declare-fun Unit!23016 () Unit!23010)

(assert (=> d!413625 (= (lemmaInvariant!322 other!32) Unit!23016)))

(declare-fun b!1435852 () Bool)

(declare-fun res!650166 () Bool)

(assert (=> b!1435852 (=> (not res!650166) (not e!916521))))

(assert (=> b!1435852 (= res!650166 (rulesProduceEachTokenIndividually!842 Lexer!2284 (rules!11419 other!32) (tokens!1991 other!32)))))

(declare-fun b!1435853 () Bool)

(assert (=> b!1435853 (= e!916521 (separableTokens!226 Lexer!2284 (tokens!1991 other!32) (rules!11419 other!32)))))

(assert (= (and d!413625 res!650165) b!1435852))

(assert (= (and b!1435852 res!650166) b!1435853))

(assert (=> d!413625 m!1641555))

(assert (=> b!1435852 m!1641557))

(assert (=> b!1435853 m!1641559))

(assert (=> b!1435797 d!413625))

(declare-fun d!413627 () Bool)

(assert (=> d!413627 (= (inv!19865 (tokens!1991 thiss!10022)) (isBalanced!1506 (c!236031 (tokens!1991 thiss!10022))))))

(declare-fun bs!341127 () Bool)

(assert (= bs!341127 d!413627))

(declare-fun m!1641569 () Bool)

(assert (=> bs!341127 m!1641569))

(assert (=> b!1435802 d!413627))

(declare-fun d!413629 () Bool)

(declare-fun lt!490830 () Bool)

(assert (=> d!413629 (= lt!490830 (isEmpty!9287 (list!5941 (tokens!1991 thiss!10022))))))

(assert (=> d!413629 (= lt!490830 (isEmpty!9291 (c!236031 (tokens!1991 thiss!10022))))))

(assert (=> d!413629 (= (isEmpty!9286 (tokens!1991 thiss!10022)) lt!490830)))

(declare-fun bs!341128 () Bool)

(assert (= bs!341128 d!413629))

(assert (=> bs!341128 m!1641489))

(assert (=> bs!341128 m!1641489))

(assert (=> bs!341128 m!1641491))

(declare-fun m!1641571 () Bool)

(assert (=> bs!341128 m!1641571))

(assert (=> b!1435798 d!413629))

(declare-fun d!413631 () Bool)

(declare-fun c!236040 () Bool)

(assert (=> d!413631 (= c!236040 (is-Node!5079 (c!236031 (tokens!1991 thiss!10022))))))

(declare-fun e!916526 () Bool)

(assert (=> d!413631 (= (inv!19864 (c!236031 (tokens!1991 thiss!10022))) e!916526)))

(declare-fun b!1435860 () Bool)

(declare-fun inv!19869 (Conc!5079) Bool)

(assert (=> b!1435860 (= e!916526 (inv!19869 (c!236031 (tokens!1991 thiss!10022))))))

(declare-fun b!1435861 () Bool)

(declare-fun e!916527 () Bool)

(assert (=> b!1435861 (= e!916526 e!916527)))

(declare-fun res!650169 () Bool)

(assert (=> b!1435861 (= res!650169 (not (is-Leaf!7594 (c!236031 (tokens!1991 thiss!10022)))))))

(assert (=> b!1435861 (=> res!650169 e!916527)))

(declare-fun b!1435862 () Bool)

(declare-fun inv!19870 (Conc!5079) Bool)

(assert (=> b!1435862 (= e!916527 (inv!19870 (c!236031 (tokens!1991 thiss!10022))))))

(assert (= (and d!413631 c!236040) b!1435860))

(assert (= (and d!413631 (not c!236040)) b!1435861))

(assert (= (and b!1435861 (not res!650169)) b!1435862))

(declare-fun m!1641573 () Bool)

(assert (=> b!1435860 m!1641573))

(declare-fun m!1641575 () Bool)

(assert (=> b!1435862 m!1641575))

(assert (=> b!1435803 d!413631))

(declare-fun d!413633 () Bool)

(declare-fun c!236041 () Bool)

(assert (=> d!413633 (= c!236041 (is-Node!5079 (c!236031 (tokens!1991 other!32))))))

(declare-fun e!916528 () Bool)

(assert (=> d!413633 (= (inv!19864 (c!236031 (tokens!1991 other!32))) e!916528)))

(declare-fun b!1435863 () Bool)

(assert (=> b!1435863 (= e!916528 (inv!19869 (c!236031 (tokens!1991 other!32))))))

(declare-fun b!1435864 () Bool)

(declare-fun e!916529 () Bool)

(assert (=> b!1435864 (= e!916528 e!916529)))

(declare-fun res!650170 () Bool)

(assert (=> b!1435864 (= res!650170 (not (is-Leaf!7594 (c!236031 (tokens!1991 other!32)))))))

(assert (=> b!1435864 (=> res!650170 e!916529)))

(declare-fun b!1435865 () Bool)

(assert (=> b!1435865 (= e!916529 (inv!19870 (c!236031 (tokens!1991 other!32))))))

(assert (= (and d!413633 c!236041) b!1435863))

(assert (= (and d!413633 (not c!236041)) b!1435864))

(assert (= (and b!1435864 (not res!650170)) b!1435865))

(declare-fun m!1641577 () Bool)

(assert (=> b!1435863 m!1641577))

(declare-fun m!1641579 () Bool)

(assert (=> b!1435865 m!1641579))

(assert (=> b!1435800 d!413633))

(declare-fun d!413635 () Bool)

(assert (=> d!413635 (= (isEmpty!9287 (list!5941 (tokens!1991 thiss!10022))) (is-Nil!14944 (list!5941 (tokens!1991 thiss!10022))))))

(assert (=> b!1435799 d!413635))

(declare-fun d!413637 () Bool)

(declare-fun list!5943 (Conc!5079) List!15010)

(assert (=> d!413637 (= (list!5941 (tokens!1991 thiss!10022)) (list!5943 (c!236031 (tokens!1991 thiss!10022))))))

(declare-fun bs!341129 () Bool)

(assert (= bs!341129 d!413637))

(declare-fun m!1641581 () Bool)

(assert (=> bs!341129 m!1641581))

(assert (=> b!1435799 d!413637))

(declare-fun b!1435876 () Bool)

(declare-fun b_free!35583 () Bool)

(declare-fun b_next!36287 () Bool)

(assert (=> b!1435876 (= b_free!35583 (not b_next!36287))))

(declare-fun tp!406660 () Bool)

(declare-fun b_and!96551 () Bool)

(assert (=> b!1435876 (= tp!406660 b_and!96551)))

(declare-fun b_free!35585 () Bool)

(declare-fun b_next!36289 () Bool)

(assert (=> b!1435876 (= b_free!35585 (not b_next!36289))))

(declare-fun tp!406661 () Bool)

(declare-fun b_and!96553 () Bool)

(assert (=> b!1435876 (= tp!406661 b_and!96553)))

(declare-fun e!916541 () Bool)

(assert (=> b!1435876 (= e!916541 (and tp!406660 tp!406661))))

(declare-fun tp!406659 () Bool)

(declare-fun b!1435875 () Bool)

(declare-fun e!916540 () Bool)

(declare-fun inv!19860 (String!17838) Bool)

(declare-fun inv!19871 (TokenValueInjection!5092) Bool)

(assert (=> b!1435875 (= e!916540 (and tp!406659 (inv!19860 (tag!2888 (h!20346 (rules!11419 other!32)))) (inv!19871 (transformation!2626 (h!20346 (rules!11419 other!32)))) e!916541))))

(declare-fun b!1435874 () Bool)

(declare-fun e!916538 () Bool)

(declare-fun tp!406662 () Bool)

(assert (=> b!1435874 (= e!916538 (and e!916540 tp!406662))))

(assert (=> b!1435801 (= tp!406638 e!916538)))

(assert (= b!1435875 b!1435876))

(assert (= b!1435874 b!1435875))

(assert (= (and b!1435801 (is-Cons!14945 (rules!11419 other!32))) b!1435874))

(declare-fun m!1641583 () Bool)

(assert (=> b!1435875 m!1641583))

(declare-fun m!1641585 () Bool)

(assert (=> b!1435875 m!1641585))

(declare-fun b!1435879 () Bool)

(declare-fun b_free!35587 () Bool)

(declare-fun b_next!36291 () Bool)

(assert (=> b!1435879 (= b_free!35587 (not b_next!36291))))

(declare-fun tp!406664 () Bool)

(declare-fun b_and!96555 () Bool)

(assert (=> b!1435879 (= tp!406664 b_and!96555)))

(declare-fun b_free!35589 () Bool)

(declare-fun b_next!36293 () Bool)

(assert (=> b!1435879 (= b_free!35589 (not b_next!36293))))

(declare-fun tp!406665 () Bool)

(declare-fun b_and!96557 () Bool)

(assert (=> b!1435879 (= tp!406665 b_and!96557)))

(declare-fun e!916545 () Bool)

(assert (=> b!1435879 (= e!916545 (and tp!406664 tp!406665))))

(declare-fun b!1435878 () Bool)

(declare-fun e!916544 () Bool)

(declare-fun tp!406663 () Bool)

(assert (=> b!1435878 (= e!916544 (and tp!406663 (inv!19860 (tag!2888 (h!20346 (rules!11419 thiss!10022)))) (inv!19871 (transformation!2626 (h!20346 (rules!11419 thiss!10022)))) e!916545))))

(declare-fun b!1435877 () Bool)

(declare-fun e!916542 () Bool)

(declare-fun tp!406666 () Bool)

(assert (=> b!1435877 (= e!916542 (and e!916544 tp!406666))))

(assert (=> b!1435802 (= tp!406635 e!916542)))

(assert (= b!1435878 b!1435879))

(assert (= b!1435877 b!1435878))

(assert (= (and b!1435802 (is-Cons!14945 (rules!11419 thiss!10022))) b!1435877))

(declare-fun m!1641587 () Bool)

(assert (=> b!1435878 m!1641587))

(declare-fun m!1641589 () Bool)

(assert (=> b!1435878 m!1641589))

(declare-fun tp!406675 () Bool)

(declare-fun b!1435888 () Bool)

(declare-fun tp!406673 () Bool)

(declare-fun e!916550 () Bool)

(assert (=> b!1435888 (= e!916550 (and (inv!19864 (left!12731 (c!236031 (tokens!1991 thiss!10022)))) tp!406673 (inv!19864 (right!13061 (c!236031 (tokens!1991 thiss!10022)))) tp!406675))))

(declare-fun b!1435890 () Bool)

(declare-fun e!916551 () Bool)

(declare-fun tp!406674 () Bool)

(assert (=> b!1435890 (= e!916551 tp!406674)))

(declare-fun b!1435889 () Bool)

(declare-fun inv!19872 (IArray!10163) Bool)

(assert (=> b!1435889 (= e!916550 (and (inv!19872 (xs!7812 (c!236031 (tokens!1991 thiss!10022)))) e!916551))))

(assert (=> b!1435803 (= tp!406636 (and (inv!19864 (c!236031 (tokens!1991 thiss!10022))) e!916550))))

(assert (= (and b!1435803 (is-Node!5079 (c!236031 (tokens!1991 thiss!10022)))) b!1435888))

(assert (= b!1435889 b!1435890))

(assert (= (and b!1435803 (is-Leaf!7594 (c!236031 (tokens!1991 thiss!10022)))) b!1435889))

(declare-fun m!1641591 () Bool)

(assert (=> b!1435888 m!1641591))

(declare-fun m!1641593 () Bool)

(assert (=> b!1435888 m!1641593))

(declare-fun m!1641595 () Bool)

(assert (=> b!1435889 m!1641595))

(assert (=> b!1435803 m!1641493))

(declare-fun tp!406678 () Bool)

(declare-fun b!1435891 () Bool)

(declare-fun tp!406676 () Bool)

(declare-fun e!916552 () Bool)

(assert (=> b!1435891 (= e!916552 (and (inv!19864 (left!12731 (c!236031 (tokens!1991 other!32)))) tp!406676 (inv!19864 (right!13061 (c!236031 (tokens!1991 other!32)))) tp!406678))))

(declare-fun b!1435893 () Bool)

(declare-fun e!916553 () Bool)

(declare-fun tp!406677 () Bool)

(assert (=> b!1435893 (= e!916553 tp!406677)))

(declare-fun b!1435892 () Bool)

(assert (=> b!1435892 (= e!916552 (and (inv!19872 (xs!7812 (c!236031 (tokens!1991 other!32)))) e!916553))))

(assert (=> b!1435800 (= tp!406637 (and (inv!19864 (c!236031 (tokens!1991 other!32))) e!916552))))

(assert (= (and b!1435800 (is-Node!5079 (c!236031 (tokens!1991 other!32)))) b!1435891))

(assert (= b!1435892 b!1435893))

(assert (= (and b!1435800 (is-Leaf!7594 (c!236031 (tokens!1991 other!32)))) b!1435892))

(declare-fun m!1641597 () Bool)

(assert (=> b!1435891 m!1641597))

(declare-fun m!1641599 () Bool)

(assert (=> b!1435891 m!1641599))

(declare-fun m!1641601 () Bool)

(assert (=> b!1435892 m!1641601))

(assert (=> b!1435800 m!1641497))

(push 1)

(assert (not b!1435875))

(assert (not d!413605))

(assert (not b!1435860))

(assert (not b!1435842))

(assert (not b!1435853))

(assert (not d!413629))

(assert (not b!1435800))

(assert b_and!96553)

(assert (not b_next!36291))

(assert (not b!1435844))

(assert (not d!413619))

(assert (not d!413637))

(assert (not b!1435862))

(assert (not b!1435863))

(assert (not b!1435891))

(assert (not b!1435841))

(assert (not b!1435893))

(assert (not b!1435892))

(assert (not b!1435874))

(assert (not d!413617))

(assert (not b!1435840))

(assert b_and!96557)

(assert (not d!413623))

(assert (not b!1435865))

(assert (not b!1435851))

(assert (not b!1435852))

(assert (not b!1435850))

(assert (not d!413625))

(assert (not b!1435890))

(assert b_and!96555)

(assert b_and!96551)

(assert (not b_next!36287))

(assert (not b!1435889))

(assert (not d!413621))

(assert (not b!1435843))

(assert (not b!1435877))

(assert (not b!1435888))

(assert (not b_next!36289))

(assert (not b!1435803))

(assert (not b_next!36293))

(assert (not b!1435845))

(assert (not b!1435878))

(assert (not d!413627))

(check-sat)

(pop 1)

(push 1)

(assert b_and!96557)

(assert (not b_next!36287))

(assert b_and!96553)

(assert (not b_next!36291))

(assert (not b_next!36289))

(assert (not b_next!36293))

(assert b_and!96555)

(assert b_and!96551)

(check-sat)

(pop 1)

