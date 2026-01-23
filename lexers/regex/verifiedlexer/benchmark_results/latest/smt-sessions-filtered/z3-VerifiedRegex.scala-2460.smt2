; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130028 () Bool)

(assert start!130028)

(declare-fun b!1416491 () Bool)

(declare-fun e!904264 () Bool)

(declare-datatypes ((List!14591 0))(
  ( (Nil!14525) (Cons!14525 (h!19926 (_ BitVec 16)) (t!124112 List!14591)) )
))
(declare-datatypes ((TokenValue!2619 0))(
  ( (FloatLiteralValue!5238 (text!18778 List!14591)) (TokenValueExt!2618 (__x!9047 Int)) (Broken!13095 (value!81683 List!14591)) (Object!2684) (End!2619) (Def!2619) (Underscore!2619) (Match!2619) (Else!2619) (Error!2619) (Case!2619) (If!2619) (Extends!2619) (Abstract!2619) (Class!2619) (Val!2619) (DelimiterValue!5238 (del!2679 List!14591)) (KeywordValue!2625 (value!81684 List!14591)) (CommentValue!5238 (value!81685 List!14591)) (WhitespaceValue!5238 (value!81686 List!14591)) (IndentationValue!2619 (value!81687 List!14591)) (String!17330) (Int32!2619) (Broken!13096 (value!81688 List!14591)) (Boolean!2620) (Unit!21313) (OperatorValue!2622 (op!2679 List!14591)) (IdentifierValue!5238 (value!81689 List!14591)) (IdentifierValue!5239 (value!81690 List!14591)) (WhitespaceValue!5239 (value!81691 List!14591)) (True!5238) (False!5238) (Broken!13097 (value!81692 List!14591)) (Broken!13098 (value!81693 List!14591)) (True!5239) (RightBrace!2619) (RightBracket!2619) (Colon!2619) (Null!2619) (Comma!2619) (LeftBracket!2619) (False!5239) (LeftBrace!2619) (ImaginaryLiteralValue!2619 (text!18779 List!14591)) (StringLiteralValue!7857 (value!81694 List!14591)) (EOFValue!2619 (value!81695 List!14591)) (IdentValue!2619 (value!81696 List!14591)) (DelimiterValue!5239 (value!81697 List!14591)) (DedentValue!2619 (value!81698 List!14591)) (NewLineValue!2619 (value!81699 List!14591)) (IntegerValue!7857 (value!81700 (_ BitVec 32)) (text!18780 List!14591)) (IntegerValue!7858 (value!81701 Int) (text!18781 List!14591)) (Times!2619) (Or!2619) (Equal!2619) (Minus!2619) (Broken!13099 (value!81702 List!14591)) (And!2619) (Div!2619) (LessEqual!2619) (Mod!2619) (Concat!6462) (Not!2619) (Plus!2619) (SpaceValue!2619 (value!81703 List!14591)) (IntegerValue!7859 (value!81704 Int) (text!18782 List!14591)) (StringLiteralValue!7858 (text!18783 List!14591)) (FloatLiteralValue!5239 (text!18784 List!14591)) (BytesLiteralValue!2619 (value!81705 List!14591)) (CommentValue!5239 (value!81706 List!14591)) (StringLiteralValue!7859 (value!81707 List!14591)) (ErrorTokenValue!2619 (msg!2680 List!14591)) )
))
(declare-datatypes ((Regex!3843 0))(
  ( (ElementMatch!3843 (c!232734 (_ BitVec 16))) (Concat!6463 (regOne!8198 Regex!3843) (regTwo!8198 Regex!3843)) (EmptyExpr!3843) (Star!3843 (reg!4172 Regex!3843)) (EmptyLang!3843) (Union!3843 (regOne!8199 Regex!3843) (regTwo!8199 Regex!3843)) )
))
(declare-datatypes ((String!17331 0))(
  ( (String!17332 (value!81708 String)) )
))
(declare-datatypes ((IArray!9727 0))(
  ( (IArray!9728 (innerList!4921 List!14591)) )
))
(declare-datatypes ((Conc!4861 0))(
  ( (Node!4861 (left!12415 Conc!4861) (right!12745 Conc!4861) (csize!9952 Int) (cheight!5072 Int)) (Leaf!7322 (xs!7588 IArray!9727) (csize!9953 Int)) (Empty!4861) )
))
(declare-datatypes ((BalanceConc!9662 0))(
  ( (BalanceConc!9663 (c!232735 Conc!4861)) )
))
(declare-datatypes ((TokenValueInjection!4898 0))(
  ( (TokenValueInjection!4899 (toValue!3828 Int) (toChars!3687 Int)) )
))
(declare-datatypes ((Rule!4858 0))(
  ( (Rule!4859 (regex!2529 Regex!3843) (tag!2791 String!17331) (isSeparator!2529 Bool) (transformation!2529 TokenValueInjection!4898)) )
))
(declare-datatypes ((Token!4720 0))(
  ( (Token!4721 (value!81709 TokenValue!2619) (rule!4292 Rule!4858) (size!11973 Int) (originalCharacters!3391 List!14591)) )
))
(declare-datatypes ((List!14592 0))(
  ( (Nil!14526) (Cons!14526 (h!19927 Token!4720) (t!124113 List!14592)) )
))
(declare-datatypes ((IArray!9729 0))(
  ( (IArray!9730 (innerList!4922 List!14592)) )
))
(declare-datatypes ((Conc!4862 0))(
  ( (Node!4862 (left!12416 Conc!4862) (right!12746 Conc!4862) (csize!9954 Int) (cheight!5073 Int)) (Leaf!7323 (xs!7589 IArray!9729) (csize!9955 Int)) (Empty!4862) )
))
(declare-datatypes ((List!14593 0))(
  ( (Nil!14527) (Cons!14527 (h!19928 Rule!4858) (t!124114 List!14593)) )
))
(declare-datatypes ((BalanceConc!9664 0))(
  ( (BalanceConc!9665 (c!232736 Conc!4862)) )
))
(declare-datatypes ((PrintableTokens!840 0))(
  ( (PrintableTokens!841 (rules!11090 List!14593) (tokens!1806 BalanceConc!9664)) )
))
(declare-datatypes ((List!14594 0))(
  ( (Nil!14528) (Cons!14528 (h!19929 PrintableTokens!840) (t!124115 List!14594)) )
))
(declare-datatypes ((IArray!9731 0))(
  ( (IArray!9732 (innerList!4923 List!14594)) )
))
(declare-datatypes ((Conc!4863 0))(
  ( (Node!4863 (left!12417 Conc!4863) (right!12747 Conc!4863) (csize!9956 Int) (cheight!5074 Int)) (Leaf!7324 (xs!7590 IArray!9731) (csize!9957 Int)) (Empty!4863) )
))
(declare-datatypes ((BalanceConc!9666 0))(
  ( (BalanceConc!9667 (c!232737 Conc!4863)) )
))
(declare-fun objs!24 () BalanceConc!9666)

(declare-fun lt!475908 () Int)

(declare-fun size!11974 (BalanceConc!9666) Int)

(declare-fun tail!2092 (BalanceConc!9666) BalanceConc!9666)

(assert (=> b!1416491 (= e!904264 (>= (size!11974 (tail!2092 objs!24)) lt!475908))))

(declare-fun b!1416492 () Bool)

(declare-fun res!641418 () Bool)

(declare-fun e!904265 () Bool)

(assert (=> b!1416492 (=> (not res!641418) (not e!904265))))

(declare-fun isEmpty!8904 (BalanceConc!9666) Bool)

(assert (=> b!1416492 (= res!641418 (not (isEmpty!8904 objs!24)))))

(declare-fun b!1416493 () Bool)

(declare-fun res!641421 () Bool)

(assert (=> b!1416493 (=> (not res!641421) (not e!904264))))

(declare-fun acc!229 () PrintableTokens!840)

(get-info :version)

(declare-datatypes ((Option!2788 0))(
  ( (None!2787) (Some!2787 (v!22027 PrintableTokens!840)) )
))
(declare-fun append!444 (PrintableTokens!840 PrintableTokens!840) Option!2788)

(declare-fun head!2729 (BalanceConc!9666) PrintableTokens!840)

(assert (=> b!1416493 (= res!641421 ((_ is Some!2787) (append!444 acc!229 (head!2729 objs!24))))))

(declare-fun b!1416494 () Bool)

(declare-fun e!904263 () Bool)

(declare-fun sep!3 () PrintableTokens!840)

(declare-fun tp!401958 () Bool)

(declare-fun inv!19098 (Conc!4862) Bool)

(assert (=> b!1416494 (= e!904263 (and (inv!19098 (c!232736 (tokens!1806 sep!3))) tp!401958))))

(declare-fun b!1416495 () Bool)

(declare-fun res!641420 () Bool)

(assert (=> b!1416495 (=> (not res!641420) (not e!904265))))

(declare-fun usesJsonRules!0 (PrintableTokens!840) Bool)

(assert (=> b!1416495 (= res!641420 (usesJsonRules!0 sep!3))))

(declare-fun b!1416496 () Bool)

(declare-fun tp!401959 () Bool)

(declare-fun e!904268 () Bool)

(declare-fun inv!19099 (BalanceConc!9664) Bool)

(assert (=> b!1416496 (= e!904268 (and tp!401959 (inv!19099 (tokens!1806 sep!3)) e!904263))))

(declare-fun b!1416497 () Bool)

(declare-fun e!904269 () Bool)

(declare-fun tp!401962 () Bool)

(assert (=> b!1416497 (= e!904269 (and (inv!19098 (c!232736 (tokens!1806 acc!229))) tp!401962))))

(declare-fun b!1416498 () Bool)

(declare-fun e!904267 () Bool)

(declare-fun tp!401961 () Bool)

(declare-fun inv!19100 (Conc!4863) Bool)

(assert (=> b!1416498 (= e!904267 (and (inv!19100 (c!232737 objs!24)) tp!401961))))

(declare-fun res!641417 () Bool)

(assert (=> start!130028 (=> (not res!641417) (not e!904265))))

(declare-fun lambda!62569 () Int)

(declare-fun forall!3599 (BalanceConc!9666 Int) Bool)

(assert (=> start!130028 (= res!641417 (forall!3599 objs!24 lambda!62569))))

(assert (=> start!130028 e!904265))

(declare-fun inv!19101 (BalanceConc!9666) Bool)

(assert (=> start!130028 (and (inv!19101 objs!24) e!904267)))

(declare-fun e!904266 () Bool)

(declare-fun inv!19102 (PrintableTokens!840) Bool)

(assert (=> start!130028 (and (inv!19102 acc!229) e!904266)))

(assert (=> start!130028 (and (inv!19102 sep!3) e!904268)))

(declare-fun b!1416499 () Bool)

(declare-fun res!641419 () Bool)

(assert (=> b!1416499 (=> (not res!641419) (not e!904265))))

(assert (=> b!1416499 (= res!641419 (usesJsonRules!0 acc!229))))

(declare-fun b!1416500 () Bool)

(assert (=> b!1416500 (= e!904265 e!904264)))

(declare-fun res!641416 () Bool)

(assert (=> b!1416500 (=> (not res!641416) (not e!904264))))

(assert (=> b!1416500 (= res!641416 (= lt!475908 1))))

(assert (=> b!1416500 (= lt!475908 (size!11974 objs!24))))

(declare-fun b!1416501 () Bool)

(declare-fun tp!401960 () Bool)

(assert (=> b!1416501 (= e!904266 (and tp!401960 (inv!19099 (tokens!1806 acc!229)) e!904269))))

(assert (= (and start!130028 res!641417) b!1416499))

(assert (= (and b!1416499 res!641419) b!1416495))

(assert (= (and b!1416495 res!641420) b!1416492))

(assert (= (and b!1416492 res!641418) b!1416500))

(assert (= (and b!1416500 res!641416) b!1416493))

(assert (= (and b!1416493 res!641421) b!1416491))

(assert (= start!130028 b!1416498))

(assert (= b!1416501 b!1416497))

(assert (= start!130028 b!1416501))

(assert (= b!1416496 b!1416494))

(assert (= start!130028 b!1416496))

(declare-fun m!1601501 () Bool)

(assert (=> b!1416496 m!1601501))

(declare-fun m!1601503 () Bool)

(assert (=> b!1416494 m!1601503))

(declare-fun m!1601505 () Bool)

(assert (=> b!1416498 m!1601505))

(declare-fun m!1601507 () Bool)

(assert (=> b!1416491 m!1601507))

(assert (=> b!1416491 m!1601507))

(declare-fun m!1601509 () Bool)

(assert (=> b!1416491 m!1601509))

(declare-fun m!1601511 () Bool)

(assert (=> b!1416500 m!1601511))

(declare-fun m!1601513 () Bool)

(assert (=> b!1416493 m!1601513))

(assert (=> b!1416493 m!1601513))

(declare-fun m!1601515 () Bool)

(assert (=> b!1416493 m!1601515))

(declare-fun m!1601517 () Bool)

(assert (=> b!1416497 m!1601517))

(declare-fun m!1601519 () Bool)

(assert (=> b!1416492 m!1601519))

(declare-fun m!1601521 () Bool)

(assert (=> start!130028 m!1601521))

(declare-fun m!1601523 () Bool)

(assert (=> start!130028 m!1601523))

(declare-fun m!1601525 () Bool)

(assert (=> start!130028 m!1601525))

(declare-fun m!1601527 () Bool)

(assert (=> start!130028 m!1601527))

(declare-fun m!1601529 () Bool)

(assert (=> b!1416501 m!1601529))

(declare-fun m!1601531 () Bool)

(assert (=> b!1416499 m!1601531))

(declare-fun m!1601533 () Bool)

(assert (=> b!1416495 m!1601533))

(check-sat (not start!130028) (not b!1416493) (not b!1416491) (not b!1416498) (not b!1416499) (not b!1416495) (not b!1416496) (not b!1416492) (not b!1416500) (not b!1416497) (not b!1416501) (not b!1416494))
(check-sat)
(get-model)

(declare-fun d!405411 () Bool)

(declare-fun lt!475911 () Bool)

(declare-fun isEmpty!8905 (List!14594) Bool)

(declare-fun list!5708 (BalanceConc!9666) List!14594)

(assert (=> d!405411 (= lt!475911 (isEmpty!8905 (list!5708 objs!24)))))

(declare-fun isEmpty!8906 (Conc!4863) Bool)

(assert (=> d!405411 (= lt!475911 (isEmpty!8906 (c!232737 objs!24)))))

(assert (=> d!405411 (= (isEmpty!8904 objs!24) lt!475911)))

(declare-fun bs!339407 () Bool)

(assert (= bs!339407 d!405411))

(declare-fun m!1601535 () Bool)

(assert (=> bs!339407 m!1601535))

(assert (=> bs!339407 m!1601535))

(declare-fun m!1601537 () Bool)

(assert (=> bs!339407 m!1601537))

(declare-fun m!1601539 () Bool)

(assert (=> bs!339407 m!1601539))

(assert (=> b!1416492 d!405411))

(declare-fun c!232762 () Bool)

(declare-fun call!95887 () List!14591)

(declare-fun call!95889 () List!14591)

(declare-fun c!232760 () Bool)

(declare-fun bm!95875 () Bool)

(declare-fun call!95891 () List!14591)

(declare-fun call!95890 () List!14591)

(declare-fun call!95880 () List!14591)

(declare-fun call!95881 () List!14591)

(declare-fun ++!3790 (List!14591 List!14591) List!14591)

(assert (=> bm!95875 (= call!95890 (++!3790 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891)) (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881))))))

(declare-fun b!1416554 () Bool)

(declare-fun e!904307 () List!14591)

(declare-fun call!95915 () List!14591)

(assert (=> b!1416554 (= e!904307 call!95915)))

(declare-fun bm!95876 () Bool)

(assert (=> bm!95876 (= call!95881 call!95887)))

(declare-fun bm!95877 () Bool)

(declare-fun call!95910 () BalanceConc!9662)

(declare-fun call!95899 () BalanceConc!9662)

(assert (=> bm!95877 (= call!95910 call!95899)))

(declare-fun b!1416555 () Bool)

(declare-fun e!904302 () Bool)

(declare-fun lt!476106 () Option!2788)

(declare-fun list!5709 (BalanceConc!9662) List!14591)

(declare-fun print!971 (PrintableTokens!840) BalanceConc!9662)

(declare-fun get!4461 (Option!2788) PrintableTokens!840)

(assert (=> b!1416555 (= e!904302 (= (list!5709 (print!971 (get!4461 lt!476106))) (++!3790 (list!5709 (print!971 acc!229)) (list!5709 (print!971 (head!2729 objs!24))))))))

(declare-fun bm!95878 () Bool)

(declare-fun call!95918 () List!14592)

(declare-fun list!5710 (BalanceConc!9664) List!14592)

(assert (=> bm!95878 (= call!95918 (list!5710 (ite c!232760 (tokens!1806 (head!2729 objs!24)) (ite c!232762 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(declare-fun bm!95879 () Bool)

(declare-fun call!95898 () BalanceConc!9662)

(declare-fun call!95906 () BalanceConc!9662)

(assert (=> bm!95879 (= call!95898 call!95906)))

(declare-fun bm!95880 () Bool)

(declare-fun call!95888 () List!14591)

(declare-fun call!95882 () List!14591)

(assert (=> bm!95880 (= call!95888 call!95882)))

(declare-fun bm!95881 () Bool)

(declare-datatypes ((LexerInterface!2204 0))(
  ( (LexerInterfaceExt!2201 (__x!9048 Int)) (Lexer!2202) )
))
(declare-fun print!972 (LexerInterface!2204 BalanceConc!9664) BalanceConc!9662)

(assert (=> bm!95881 (= call!95899 (print!972 Lexer!2202 (tokens!1806 acc!229)))))

(declare-fun b!1416556 () Bool)

(declare-fun e!904301 () List!14591)

(declare-fun call!95907 () List!14591)

(assert (=> b!1416556 (= e!904301 call!95907)))

(declare-fun lt!476085 () List!14592)

(declare-fun lt!476093 () List!14592)

(declare-fun bm!95883 () Bool)

(declare-fun call!95901 () BalanceConc!9662)

(declare-fun charsOf!1475 (Token!4720) BalanceConc!9662)

(assert (=> bm!95883 (= call!95901 (charsOf!1475 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))))

(declare-fun bm!95884 () Bool)

(assert (=> bm!95884 (= call!95915 (list!5709 call!95901))))

(declare-fun bm!95885 () Bool)

(declare-datatypes ((Unit!21314 0))(
  ( (Unit!21315) )
))
(declare-fun call!95916 () Unit!21314)

(declare-fun call!95884 () Unit!21314)

(assert (=> bm!95885 (= call!95916 call!95884)))

(declare-fun lt!476100 () LexerInterface!2204)

(declare-fun lt!476055 () LexerInterface!2204)

(declare-fun lt!476065 () List!14592)

(declare-fun lt!476048 () List!14592)

(declare-fun lt!476091 () List!14592)

(declare-fun lt!476046 () List!14592)

(declare-fun lt!476071 () List!14592)

(declare-fun call!95917 () Unit!21314)

(declare-fun lt!476086 () LexerInterface!2204)

(declare-fun bm!95886 () Bool)

(declare-fun lt!476066 () List!14592)

(declare-fun lemmaPrintConcatSameAsConcatPrint!23 (LexerInterface!2204 List!14592 List!14592) Unit!21314)

(assert (=> bm!95886 (= call!95917 (lemmaPrintConcatSameAsConcatPrint!23 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 (ite c!232762 lt!476065 lt!476091)) (ite c!232760 lt!476071 (ite c!232762 lt!476048 lt!476046))))))

(declare-fun b!1416557 () Bool)

(declare-fun e!904304 () List!14591)

(assert (=> b!1416557 (= e!904304 Nil!14525)))

(declare-fun b!1416558 () Bool)

(assert (=> b!1416558 (= e!904307 call!95888)))

(declare-fun bm!95887 () Bool)

(assert (=> bm!95887 (= call!95906 (print!971 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))))))

(declare-fun b!1416559 () Bool)

(declare-fun e!904306 () List!14592)

(declare-fun call!95902 () List!14592)

(assert (=> b!1416559 (= e!904306 call!95902)))

(declare-fun bm!95888 () Bool)

(declare-fun call!95903 () List!14592)

(declare-fun call!95909 () List!14591)

(declare-fun lt!476043 () List!14592)

(declare-fun lt!476077 () LexerInterface!2204)

(declare-fun printList!658 (LexerInterface!2204 List!14592) List!14591)

(assert (=> bm!95888 (= call!95909 (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476077)) (ite c!232760 call!95903 (ite c!232762 lt!476048 lt!476043))))))

(declare-fun bm!95889 () Bool)

(declare-fun call!95904 () List!14591)

(assert (=> bm!95889 (= call!95880 call!95904)))

(declare-fun b!1416560 () Bool)

(declare-fun e!904305 () Option!2788)

(declare-fun ++!3791 (BalanceConc!9664 BalanceConc!9664) BalanceConc!9664)

(assert (=> b!1416560 (= e!904305 (Some!2787 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(declare-fun lt!476102 () LexerInterface!2204)

(assert (=> b!1416560 (= lt!476102 Lexer!2202)))

(declare-fun lt!476105 () List!14592)

(assert (=> b!1416560 (= lt!476105 call!95902)))

(declare-fun lt!476045 () List!14592)

(declare-fun call!95908 () List!14592)

(assert (=> b!1416560 (= lt!476045 call!95908)))

(declare-fun lt!476052 () Unit!21314)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!23 (LexerInterface!2204 List!14592 List!14592 List!14593) Unit!21314)

(assert (=> b!1416560 (= lt!476052 (tokensListTwoByTwoPredicateConcatSeparableTokensList!23 lt!476102 lt!476105 lt!476045 (rules!11090 acc!229)))))

(declare-fun lt!476068 () Unit!21314)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!23 (LexerInterface!2204 List!14593 List!14592 List!14592) Unit!21314)

(assert (=> b!1416560 (= lt!476068 (lemmaRulesProduceEachTokenIndividuallyConcat!23 lt!476102 (rules!11090 acc!229) lt!476105 lt!476045))))

(declare-fun rulesProduceEachTokenIndividuallyList!685 (LexerInterface!2204 List!14593 List!14592) Bool)

(declare-fun ++!3792 (List!14592 List!14592) List!14592)

(assert (=> b!1416560 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045))))

(declare-fun lt!476080 () Unit!21314)

(assert (=> b!1416560 (= lt!476080 lt!476068)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!204 (LexerInterface!2204 List!14592 List!14593) Bool)

(assert (=> b!1416560 (tokensListTwoByTwoPredicateSeparableList!204 lt!476102 (++!3792 lt!476105 lt!476045) (rules!11090 acc!229))))

(declare-fun lt!476094 () Unit!21314)

(assert (=> b!1416560 (= lt!476094 lt!476052)))

(assert (=> b!1416560 (= lt!476055 Lexer!2202)))

(assert (=> b!1416560 (= lt!476091 call!95902)))

(assert (=> b!1416560 (= lt!476046 call!95908)))

(declare-fun lt!476095 () Unit!21314)

(declare-fun call!95893 () Unit!21314)

(assert (=> b!1416560 (= lt!476095 call!95893)))

(declare-fun call!95886 () List!14591)

(assert (=> b!1416560 (= call!95886 call!95907)))

(declare-fun lt!476044 () Unit!21314)

(assert (=> b!1416560 (= lt!476044 lt!476095)))

(declare-fun lt!476096 () Unit!21314)

(assert (=> b!1416560 (= lt!476096 call!95916)))

(declare-fun call!95911 () BalanceConc!9662)

(assert (=> b!1416560 (= call!95911 call!95910)))

(declare-fun lt!476074 () Unit!21314)

(declare-fun Unit!21316 () Unit!21314)

(assert (=> b!1416560 (= lt!476074 Unit!21316)))

(declare-fun lt!476054 () Unit!21314)

(declare-fun call!95883 () Unit!21314)

(assert (=> b!1416560 (= lt!476054 call!95883)))

(declare-fun call!95912 () BalanceConc!9662)

(assert (=> b!1416560 (= call!95898 call!95912)))

(declare-fun lt!476088 () Unit!21314)

(declare-fun Unit!21317 () Unit!21314)

(assert (=> b!1416560 (= lt!476088 Unit!21317)))

(declare-fun lt!476064 () PrintableTokens!840)

(assert (=> b!1416560 (= lt!476064 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))

(declare-fun lt!476073 () BalanceConc!9664)

(assert (=> b!1416560 (= lt!476073 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))

(declare-fun lt!476089 () Unit!21314)

(declare-fun theoremInvertabilityWhenTokenListSeparable!28 (LexerInterface!2204 List!14593 List!14592) Unit!21314)

(assert (=> b!1416560 (= lt!476089 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(assert (=> b!1416560 (= (print!971 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) (print!972 Lexer!2202 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))

(declare-fun lt!476076 () Unit!21314)

(declare-fun Unit!21318 () Unit!21314)

(assert (=> b!1416560 (= lt!476076 Unit!21318)))

(assert (=> b!1416560 (= lt!476077 Lexer!2202)))

(assert (=> b!1416560 (= lt!476043 call!95902)))

(declare-fun lt!476049 () List!14592)

(assert (=> b!1416560 (= lt!476049 call!95908)))

(declare-fun lt!476067 () Unit!21314)

(assert (=> b!1416560 (= lt!476067 (lemmaPrintConcatSameAsConcatPrint!23 lt!476077 lt!476043 lt!476049))))

(declare-fun call!95905 () List!14591)

(declare-fun call!95895 () List!14591)

(assert (=> b!1416560 (= call!95905 call!95895)))

(declare-fun lt!476059 () Unit!21314)

(assert (=> b!1416560 (= lt!476059 lt!476067)))

(declare-fun bm!95890 () Bool)

(assert (=> bm!95890 (= call!95882 (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476055) (ite (or c!232760 c!232762) Nil!14526 lt!476091)))))

(declare-fun call!95900 () Unit!21314)

(declare-fun bm!95891 () Bool)

(assert (=> bm!95891 (= call!95900 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (head!2729 objs!24)) (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))

(declare-fun call!95892 () List!14592)

(declare-fun bm!95892 () Bool)

(assert (=> bm!95892 (= call!95889 (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 call!95892)))))

(declare-fun bm!95893 () Bool)

(declare-fun call!95914 () BalanceConc!9662)

(declare-fun printTailRec!640 (LexerInterface!2204 BalanceConc!9664 Int BalanceConc!9662) BalanceConc!9662)

(assert (=> bm!95893 (= call!95914 (printTailRec!640 Lexer!2202 (tokens!1806 (head!2729 objs!24)) 0 (BalanceConc!9663 Empty!4861)))))

(declare-fun bm!95894 () Bool)

(declare-fun call!95913 () BalanceConc!9662)

(assert (=> bm!95894 (= call!95911 call!95913)))

(declare-fun b!1416561 () Bool)

(declare-fun call!95894 () List!14591)

(assert (=> b!1416561 (= e!904304 call!95894)))

(declare-fun bm!95895 () Bool)

(declare-fun call!95885 () List!14592)

(assert (=> bm!95895 (= call!95885 (list!5710 (ite c!232760 (tokens!1806 acc!229) (ite c!232762 (tokens!1806 (head!2729 objs!24)) (tokens!1806 acc!229)))))))

(declare-fun bm!95896 () Bool)

(assert (=> bm!95896 (= call!95908 call!95918)))

(declare-fun bm!95897 () Bool)

(assert (=> bm!95897 (= call!95887 (printList!658 (ite c!232760 lt!476086 (ite c!232762 Lexer!2202 lt!476077)) (ite c!232760 lt!476071 (ite c!232762 (t!124113 lt!476093) lt!476049))))))

(declare-fun b!1416562 () Bool)

(declare-fun e!904308 () Bool)

(assert (=> b!1416562 (= e!904308 e!904302)))

(declare-fun res!641437 () Bool)

(assert (=> b!1416562 (=> (not res!641437) (not e!904302))))

(assert (=> b!1416562 (= res!641437 (= (rules!11090 (get!4461 lt!476106)) (rules!11090 acc!229)))))

(declare-fun bm!95898 () Bool)

(declare-fun c!232766 () Bool)

(assert (=> bm!95898 (= c!232766 c!232762)))

(declare-fun call!95896 () List!14591)

(assert (=> bm!95898 (= call!95905 call!95896)))

(declare-fun bm!95899 () Bool)

(assert (=> bm!95899 (= call!95894 (++!3790 (ite c!232760 call!95915 e!904307) (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880))))))

(declare-fun bm!95900 () Bool)

(assert (=> bm!95900 (= call!95902 call!95885)))

(declare-fun b!1416563 () Bool)

(assert (=> b!1416563 (= e!904301 Nil!14525)))

(declare-fun b!1416564 () Bool)

(declare-fun lt!476097 () Unit!21314)

(declare-fun Unit!21319 () Unit!21314)

(assert (=> b!1416564 (= lt!476097 Unit!21319)))

(assert (=> b!1416564 (= call!95905 e!904301)))

(declare-fun c!232764 () Bool)

(assert (=> b!1416564 (= c!232764 ((_ is Cons!14526) lt!476093))))

(assert (=> b!1416564 (= lt!476093 call!95902)))

(declare-fun lt!476070 () Unit!21314)

(declare-fun Unit!21320 () Unit!21314)

(assert (=> b!1416564 (= lt!476070 Unit!21320)))

(assert (=> b!1416564 (= call!95912 call!95914)))

(declare-fun lt!476087 () Unit!21314)

(declare-fun Unit!21321 () Unit!21314)

(assert (=> b!1416564 (= lt!476087 Unit!21321)))

(assert (=> b!1416564 (= call!95911 call!95912)))

(declare-fun lt!476060 () Unit!21314)

(assert (=> b!1416564 (= lt!476060 call!95883)))

(declare-fun lt!476081 () Unit!21314)

(declare-fun Unit!21322 () Unit!21314)

(assert (=> b!1416564 (= lt!476081 Unit!21322)))

(assert (=> b!1416564 (= call!95898 call!95910)))

(declare-fun lt!476058 () Unit!21314)

(assert (=> b!1416564 (= lt!476058 call!95916)))

(declare-fun lt!476090 () Unit!21314)

(declare-fun Unit!21323 () Unit!21314)

(assert (=> b!1416564 (= lt!476090 Unit!21323)))

(assert (=> b!1416564 (= call!95888 Nil!14525)))

(declare-fun lt!476075 () Unit!21314)

(declare-fun lt!476084 () Unit!21314)

(assert (=> b!1416564 (= lt!476075 lt!476084)))

(assert (=> b!1416564 (= call!95886 call!95895)))

(assert (=> b!1416564 (= lt!476084 call!95893)))

(assert (=> b!1416564 (= lt!476048 call!95902)))

(assert (=> b!1416564 (= lt!476065 Nil!14526)))

(assert (=> b!1416564 (= lt!476100 Lexer!2202)))

(declare-fun e!904303 () Option!2788)

(assert (=> b!1416564 (= e!904303 (Some!2787 (head!2729 objs!24)))))

(declare-fun b!1416565 () Bool)

(assert (=> b!1416565 (= e!904305 None!2787)))

(declare-fun bm!95901 () Bool)

(assert (=> bm!95901 (= call!95896 (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476077) (ite c!232760 call!95918 e!904306)))))

(declare-fun b!1416566 () Bool)

(declare-fun c!232761 () Bool)

(declare-fun separableTokensPredicate!481 (LexerInterface!2204 Token!4720 Token!4720 List!14593) Bool)

(declare-fun last!74 (BalanceConc!9664) Token!4720)

(declare-fun head!2730 (BalanceConc!9664) Token!4720)

(assert (=> b!1416566 (= c!232761 (separableTokensPredicate!481 Lexer!2202 (last!74 (tokens!1806 acc!229)) (head!2730 (tokens!1806 (head!2729 objs!24))) (rules!11090 acc!229)))))

(declare-fun lt!476063 () Unit!21314)

(declare-fun lt!476099 () Unit!21314)

(assert (=> b!1416566 (= lt!476063 lt!476099)))

(declare-fun lt!476103 () LexerInterface!2204)

(declare-fun lt!476092 () Token!4720)

(declare-fun rulesProduceIndividualToken!1167 (LexerInterface!2204 List!14593 Token!4720) Bool)

(assert (=> b!1416566 (rulesProduceIndividualToken!1167 lt!476103 (rules!11090 acc!229) lt!476092)))

(declare-fun lt!476104 () List!14592)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 (LexerInterface!2204 List!14593 List!14592 Token!4720) Unit!21314)

(assert (=> b!1416566 (= lt!476099 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476103 (rules!11090 acc!229) lt!476104 lt!476092))))

(assert (=> b!1416566 (= lt!476092 (head!2730 (tokens!1806 (head!2729 objs!24))))))

(assert (=> b!1416566 (= lt!476104 call!95908)))

(assert (=> b!1416566 (= lt!476103 Lexer!2202)))

(declare-fun lt!476051 () Unit!21314)

(declare-fun lt!476057 () Unit!21314)

(assert (=> b!1416566 (= lt!476051 lt!476057)))

(declare-fun lt!476083 () LexerInterface!2204)

(declare-fun lt!476047 () Token!4720)

(assert (=> b!1416566 (rulesProduceIndividualToken!1167 lt!476083 (rules!11090 acc!229) lt!476047)))

(declare-fun lt!476069 () List!14592)

(assert (=> b!1416566 (= lt!476057 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476083 (rules!11090 acc!229) lt!476069 lt!476047))))

(assert (=> b!1416566 (= lt!476047 (last!74 (tokens!1806 acc!229)))))

(assert (=> b!1416566 (= lt!476069 call!95902)))

(assert (=> b!1416566 (= lt!476083 Lexer!2202)))

(assert (=> b!1416566 (= e!904303 e!904305)))

(declare-fun bm!95902 () Bool)

(assert (=> bm!95902 (= call!95913 (print!971 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)))))

(declare-fun bm!95903 () Bool)

(declare-fun call!95897 () BalanceConc!9662)

(assert (=> bm!95903 (= call!95912 call!95897)))

(declare-fun bm!95904 () Bool)

(assert (=> bm!95904 (= call!95903 (++!3792 (ite c!232760 lt!476066 lt!476043) (ite c!232760 lt!476071 lt!476049)))))

(declare-fun bm!95905 () Bool)

(assert (=> bm!95905 (= call!95893 call!95917)))

(declare-fun b!1416567 () Bool)

(assert (=> b!1416567 (= e!904306 call!95903)))

(declare-fun bm!95906 () Bool)

(assert (=> bm!95906 (= call!95886 call!95889)))

(declare-fun bm!95907 () Bool)

(assert (=> bm!95907 (= call!95897 (print!972 Lexer!2202 (tokens!1806 (head!2729 objs!24))))))

(declare-fun bm!95882 () Bool)

(assert (=> bm!95882 (= call!95895 call!95890)))

(declare-fun d!405413 () Bool)

(assert (=> d!405413 e!904308))

(declare-fun res!641436 () Bool)

(assert (=> d!405413 (=> res!641436 e!904308)))

(declare-fun isEmpty!8907 (Option!2788) Bool)

(assert (=> d!405413 (= res!641436 (isEmpty!8907 lt!476106))))

(declare-fun e!904300 () Option!2788)

(assert (=> d!405413 (= lt!476106 e!904300)))

(declare-fun isEmpty!8909 (BalanceConc!9664) Bool)

(assert (=> d!405413 (= c!232760 (isEmpty!8909 (tokens!1806 (head!2729 objs!24))))))

(declare-fun lt!476061 () Unit!21314)

(declare-fun lemmaInvariant!230 (PrintableTokens!840) Unit!21314)

(assert (=> d!405413 (= lt!476061 (lemmaInvariant!230 acc!229))))

(declare-fun lt!476072 () Unit!21314)

(assert (=> d!405413 (= lt!476072 (lemmaInvariant!230 (head!2729 objs!24)))))

(assert (=> d!405413 (= (rules!11090 acc!229) (rules!11090 (head!2729 objs!24)))))

(assert (=> d!405413 (= (append!444 acc!229 (head!2729 objs!24)) lt!476106)))

(declare-fun bm!95908 () Bool)

(assert (=> bm!95908 (= call!95904 (printList!658 (ite c!232760 Lexer!2202 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 (t!124113 lt!476085) (ite c!232762 lt!476065 lt!476046))))))

(declare-fun bm!95909 () Bool)

(assert (=> bm!95909 (= call!95892 (++!3792 (ite c!232762 lt!476065 lt!476091) (ite c!232762 lt!476048 lt!476046)))))

(declare-fun bm!95910 () Bool)

(assert (=> bm!95910 (= call!95884 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))

(declare-fun bm!95911 () Bool)

(assert (=> bm!95911 (= call!95891 call!95909)))

(declare-fun bm!95912 () Bool)

(declare-fun c!232765 () Bool)

(assert (=> bm!95912 (= c!232765 c!232762)))

(assert (=> bm!95912 (= call!95907 call!95894)))

(declare-fun b!1416568 () Bool)

(assert (=> b!1416568 (= e!904300 e!904303)))

(assert (=> b!1416568 (= c!232762 (isEmpty!8909 (tokens!1806 acc!229)))))

(declare-fun b!1416569 () Bool)

(declare-fun res!641438 () Bool)

(assert (=> b!1416569 (=> (not res!641438) (not e!904302))))

(assert (=> b!1416569 (= res!641438 (= (list!5710 (tokens!1806 (get!4461 lt!476106))) (++!3792 (list!5710 (tokens!1806 acc!229)) (list!5710 (tokens!1806 (head!2729 objs!24))))))))

(declare-fun b!1416570 () Bool)

(assert (=> b!1416570 (= e!904300 (Some!2787 acc!229))))

(assert (=> b!1416570 (= lt!476086 Lexer!2202)))

(assert (=> b!1416570 (= lt!476066 call!95885)))

(assert (=> b!1416570 (= lt!476071 Nil!14526)))

(declare-fun lt!476050 () Unit!21314)

(assert (=> b!1416570 (= lt!476050 call!95917)))

(assert (=> b!1416570 (= call!95909 call!95890)))

(declare-fun lt!476056 () Unit!21314)

(assert (=> b!1416570 (= lt!476056 lt!476050)))

(assert (=> b!1416570 (= call!95882 Nil!14525)))

(declare-fun lt!476082 () Unit!21314)

(declare-fun Unit!21324 () Unit!21314)

(assert (=> b!1416570 (= lt!476082 Unit!21324)))

(declare-fun lt!476053 () Unit!21314)

(assert (=> b!1416570 (= lt!476053 call!95884)))

(assert (=> b!1416570 (= call!95906 call!95899)))

(declare-fun lt!476062 () Unit!21314)

(declare-fun Unit!21325 () Unit!21314)

(assert (=> b!1416570 (= lt!476062 Unit!21325)))

(declare-fun lt!476078 () Unit!21314)

(assert (=> b!1416570 (= lt!476078 call!95900)))

(assert (=> b!1416570 (= call!95913 call!95897)))

(declare-fun lt!476098 () Unit!21314)

(declare-fun Unit!21326 () Unit!21314)

(assert (=> b!1416570 (= lt!476098 Unit!21326)))

(assert (=> b!1416570 (= call!95897 call!95914)))

(declare-fun lt!476101 () Unit!21314)

(declare-fun Unit!21327 () Unit!21314)

(assert (=> b!1416570 (= lt!476101 Unit!21327)))

(assert (=> b!1416570 (= lt!476085 call!95918)))

(declare-fun c!232763 () Bool)

(assert (=> b!1416570 (= c!232763 ((_ is Cons!14526) lt!476085))))

(assert (=> b!1416570 (= call!95896 e!904304)))

(declare-fun lt!476079 () Unit!21314)

(declare-fun Unit!21328 () Unit!21314)

(assert (=> b!1416570 (= lt!476079 Unit!21328)))

(declare-fun bm!95913 () Bool)

(assert (=> bm!95913 (= call!95883 call!95900)))

(assert (= (and d!405413 c!232760) b!1416570))

(assert (= (and d!405413 (not c!232760)) b!1416568))

(assert (= (and b!1416570 c!232763) b!1416561))

(assert (= (and b!1416570 (not c!232763)) b!1416557))

(assert (= (and b!1416568 c!232762) b!1416564))

(assert (= (and b!1416568 (not c!232762)) b!1416566))

(assert (= (and b!1416564 c!232764) b!1416556))

(assert (= (and b!1416564 (not c!232764)) b!1416563))

(assert (= (and b!1416566 c!232761) b!1416560))

(assert (= (and b!1416566 (not c!232761)) b!1416565))

(assert (= (or b!1416564 b!1416560) bm!95880))

(assert (= (or b!1416564 b!1416560) bm!95894))

(assert (= (or b!1416564 b!1416566 b!1416560) bm!95900))

(assert (= (or b!1416564 b!1416566 b!1416560) bm!95896))

(assert (= (or b!1416564 b!1416560) bm!95889))

(assert (= (or b!1416564 b!1416560) bm!95909))

(assert (= (or b!1416564 b!1416560) bm!95879))

(assert (= (or b!1416564 b!1416560) bm!95877))

(assert (= (or b!1416564 b!1416560) bm!95911))

(assert (= (or b!1416556 b!1416560) bm!95876))

(assert (= (or b!1416564 b!1416560) bm!95903))

(assert (= (or b!1416564 b!1416560) bm!95905))

(assert (= (or b!1416564 b!1416560) bm!95906))

(assert (= (or b!1416564 b!1416560) bm!95913))

(assert (= (or b!1416564 b!1416560) bm!95898))

(assert (= (and bm!95898 c!232766) b!1416559))

(assert (= (and bm!95898 (not c!232766)) b!1416567))

(assert (= (or b!1416564 b!1416560) bm!95885))

(assert (= (or b!1416564 b!1416560) bm!95882))

(assert (= (or b!1416556 b!1416560) bm!95912))

(assert (= (and bm!95912 c!232765) b!1416554))

(assert (= (and bm!95912 (not c!232765)) b!1416558))

(assert (= (or b!1416570 bm!95876) bm!95897))

(assert (= (or b!1416570 bm!95905) bm!95886))

(assert (= (or b!1416570 bm!95903) bm!95907))

(assert (= (or b!1416561 bm!95889) bm!95908))

(assert (= (or b!1416561 b!1416554) bm!95883))

(assert (= (or b!1416570 bm!95877) bm!95881))

(assert (= (or b!1416570 bm!95880) bm!95890))

(assert (= (or b!1416570 b!1416564) bm!95893))

(assert (= (or b!1416570 bm!95906) bm!95892))

(assert (= (or b!1416570 bm!95900) bm!95895))

(assert (= (or b!1416570 bm!95896) bm!95878))

(assert (= (or b!1416570 bm!95894) bm!95902))

(assert (= (or b!1416570 bm!95879) bm!95887))

(assert (= (or b!1416570 b!1416567) bm!95904))

(assert (= (or b!1416570 bm!95898) bm!95901))

(assert (= (or b!1416570 bm!95913) bm!95891))

(assert (= (or b!1416570 bm!95911) bm!95888))

(assert (= (or b!1416570 bm!95885) bm!95910))

(assert (= (or b!1416561 b!1416554) bm!95884))

(assert (= (or b!1416570 bm!95882) bm!95875))

(assert (= (or b!1416561 bm!95912) bm!95899))

(assert (= (and d!405413 (not res!641436)) b!1416562))

(assert (= (and b!1416562 res!641437) b!1416569))

(assert (= (and b!1416569 res!641438) b!1416555))

(declare-fun m!1601559 () Bool)

(assert (=> b!1416566 m!1601559))

(declare-fun m!1601561 () Bool)

(assert (=> b!1416566 m!1601561))

(declare-fun m!1601563 () Bool)

(assert (=> b!1416566 m!1601563))

(declare-fun m!1601565 () Bool)

(assert (=> b!1416566 m!1601565))

(declare-fun m!1601567 () Bool)

(assert (=> b!1416566 m!1601567))

(declare-fun m!1601569 () Bool)

(assert (=> b!1416566 m!1601569))

(assert (=> b!1416566 m!1601561))

(assert (=> b!1416566 m!1601565))

(declare-fun m!1601571 () Bool)

(assert (=> b!1416566 m!1601571))

(declare-fun m!1601573 () Bool)

(assert (=> bm!95890 m!1601573))

(declare-fun m!1601575 () Bool)

(assert (=> b!1416560 m!1601575))

(declare-fun m!1601577 () Bool)

(assert (=> b!1416560 m!1601577))

(declare-fun m!1601579 () Bool)

(assert (=> b!1416560 m!1601579))

(declare-fun m!1601581 () Bool)

(assert (=> b!1416560 m!1601581))

(declare-fun m!1601583 () Bool)

(assert (=> b!1416560 m!1601583))

(declare-fun m!1601585 () Bool)

(assert (=> b!1416560 m!1601585))

(assert (=> b!1416560 m!1601583))

(declare-fun m!1601587 () Bool)

(assert (=> b!1416560 m!1601587))

(declare-fun m!1601589 () Bool)

(assert (=> b!1416560 m!1601589))

(declare-fun m!1601591 () Bool)

(assert (=> b!1416560 m!1601591))

(assert (=> b!1416560 m!1601585))

(declare-fun m!1601593 () Bool)

(assert (=> b!1416560 m!1601593))

(assert (=> b!1416560 m!1601585))

(declare-fun m!1601595 () Bool)

(assert (=> b!1416560 m!1601595))

(assert (=> b!1416560 m!1601583))

(assert (=> b!1416560 m!1601579))

(declare-fun m!1601597 () Bool)

(assert (=> bm!95901 m!1601597))

(declare-fun m!1601599 () Bool)

(assert (=> bm!95902 m!1601599))

(declare-fun m!1601601 () Bool)

(assert (=> bm!95891 m!1601601))

(declare-fun m!1601603 () Bool)

(assert (=> bm!95888 m!1601603))

(declare-fun m!1601605 () Bool)

(assert (=> bm!95886 m!1601605))

(declare-fun m!1601607 () Bool)

(assert (=> b!1416569 m!1601607))

(declare-fun m!1601609 () Bool)

(assert (=> b!1416569 m!1601609))

(declare-fun m!1601611 () Bool)

(assert (=> b!1416569 m!1601611))

(declare-fun m!1601613 () Bool)

(assert (=> b!1416569 m!1601613))

(assert (=> b!1416569 m!1601609))

(assert (=> b!1416569 m!1601611))

(declare-fun m!1601615 () Bool)

(assert (=> b!1416569 m!1601615))

(declare-fun m!1601617 () Bool)

(assert (=> bm!95881 m!1601617))

(declare-fun m!1601619 () Bool)

(assert (=> bm!95878 m!1601619))

(declare-fun m!1601621 () Bool)

(assert (=> d!405413 m!1601621))

(declare-fun m!1601623 () Bool)

(assert (=> d!405413 m!1601623))

(declare-fun m!1601625 () Bool)

(assert (=> d!405413 m!1601625))

(assert (=> d!405413 m!1601513))

(declare-fun m!1601627 () Bool)

(assert (=> d!405413 m!1601627))

(declare-fun m!1601629 () Bool)

(assert (=> bm!95883 m!1601629))

(declare-fun m!1601631 () Bool)

(assert (=> b!1416568 m!1601631))

(declare-fun m!1601633 () Bool)

(assert (=> bm!95884 m!1601633))

(declare-fun m!1601635 () Bool)

(assert (=> bm!95893 m!1601635))

(declare-fun m!1601637 () Bool)

(assert (=> bm!95907 m!1601637))

(declare-fun m!1601639 () Bool)

(assert (=> bm!95910 m!1601639))

(declare-fun m!1601641 () Bool)

(assert (=> bm!95909 m!1601641))

(assert (=> b!1416555 m!1601513))

(declare-fun m!1601643 () Bool)

(assert (=> b!1416555 m!1601643))

(declare-fun m!1601645 () Bool)

(assert (=> b!1416555 m!1601645))

(declare-fun m!1601647 () Bool)

(assert (=> b!1416555 m!1601647))

(declare-fun m!1601649 () Bool)

(assert (=> b!1416555 m!1601649))

(assert (=> b!1416555 m!1601607))

(declare-fun m!1601651 () Bool)

(assert (=> b!1416555 m!1601651))

(declare-fun m!1601653 () Bool)

(assert (=> b!1416555 m!1601653))

(declare-fun m!1601655 () Bool)

(assert (=> b!1416555 m!1601655))

(assert (=> b!1416555 m!1601643))

(assert (=> b!1416555 m!1601653))

(assert (=> b!1416555 m!1601607))

(assert (=> b!1416555 m!1601647))

(assert (=> b!1416555 m!1601645))

(assert (=> b!1416555 m!1601651))

(declare-fun m!1601657 () Bool)

(assert (=> bm!95875 m!1601657))

(assert (=> b!1416562 m!1601607))

(declare-fun m!1601659 () Bool)

(assert (=> bm!95892 m!1601659))

(declare-fun m!1601661 () Bool)

(assert (=> bm!95895 m!1601661))

(declare-fun m!1601663 () Bool)

(assert (=> bm!95908 m!1601663))

(declare-fun m!1601665 () Bool)

(assert (=> bm!95897 m!1601665))

(declare-fun m!1601667 () Bool)

(assert (=> bm!95887 m!1601667))

(declare-fun m!1601669 () Bool)

(assert (=> bm!95904 m!1601669))

(declare-fun m!1601671 () Bool)

(assert (=> bm!95899 m!1601671))

(assert (=> b!1416493 d!405413))

(declare-fun d!405427 () Bool)

(declare-fun lt!476109 () PrintableTokens!840)

(declare-fun head!2732 (List!14594) PrintableTokens!840)

(assert (=> d!405427 (= lt!476109 (head!2732 (list!5708 objs!24)))))

(declare-fun head!2733 (Conc!4863) PrintableTokens!840)

(assert (=> d!405427 (= lt!476109 (head!2733 (c!232737 objs!24)))))

(assert (=> d!405427 (not (isEmpty!8904 objs!24))))

(assert (=> d!405427 (= (head!2729 objs!24) lt!476109)))

(declare-fun bs!339411 () Bool)

(assert (= bs!339411 d!405427))

(assert (=> bs!339411 m!1601535))

(assert (=> bs!339411 m!1601535))

(declare-fun m!1601673 () Bool)

(assert (=> bs!339411 m!1601673))

(declare-fun m!1601675 () Bool)

(assert (=> bs!339411 m!1601675))

(assert (=> bs!339411 m!1601519))

(assert (=> b!1416493 d!405427))

(declare-fun d!405429 () Bool)

(declare-fun c!232769 () Bool)

(assert (=> d!405429 (= c!232769 ((_ is Node!4862) (c!232736 (tokens!1806 sep!3))))))

(declare-fun e!904313 () Bool)

(assert (=> d!405429 (= (inv!19098 (c!232736 (tokens!1806 sep!3))) e!904313)))

(declare-fun b!1416577 () Bool)

(declare-fun inv!19107 (Conc!4862) Bool)

(assert (=> b!1416577 (= e!904313 (inv!19107 (c!232736 (tokens!1806 sep!3))))))

(declare-fun b!1416578 () Bool)

(declare-fun e!904314 () Bool)

(assert (=> b!1416578 (= e!904313 e!904314)))

(declare-fun res!641441 () Bool)

(assert (=> b!1416578 (= res!641441 (not ((_ is Leaf!7323) (c!232736 (tokens!1806 sep!3)))))))

(assert (=> b!1416578 (=> res!641441 e!904314)))

(declare-fun b!1416579 () Bool)

(declare-fun inv!19108 (Conc!4862) Bool)

(assert (=> b!1416579 (= e!904314 (inv!19108 (c!232736 (tokens!1806 sep!3))))))

(assert (= (and d!405429 c!232769) b!1416577))

(assert (= (and d!405429 (not c!232769)) b!1416578))

(assert (= (and b!1416578 (not res!641441)) b!1416579))

(declare-fun m!1601677 () Bool)

(assert (=> b!1416577 m!1601677))

(declare-fun m!1601679 () Bool)

(assert (=> b!1416579 m!1601679))

(assert (=> b!1416494 d!405429))

(declare-fun d!405431 () Bool)

(declare-datatypes ((JsonLexer!414 0))(
  ( (JsonLexer!415) )
))
(declare-fun rules!109 (JsonLexer!414) List!14593)

(assert (=> d!405431 (= (usesJsonRules!0 sep!3) (= (rules!11090 sep!3) (rules!109 JsonLexer!415)))))

(declare-fun bs!339412 () Bool)

(assert (= bs!339412 d!405431))

(declare-fun m!1601681 () Bool)

(assert (=> bs!339412 m!1601681))

(assert (=> b!1416495 d!405431))

(declare-fun d!405433 () Bool)

(declare-fun isBalanced!1442 (Conc!4862) Bool)

(assert (=> d!405433 (= (inv!19099 (tokens!1806 sep!3)) (isBalanced!1442 (c!232736 (tokens!1806 sep!3))))))

(declare-fun bs!339413 () Bool)

(assert (= bs!339413 d!405433))

(declare-fun m!1601683 () Bool)

(assert (=> bs!339413 m!1601683))

(assert (=> b!1416496 d!405433))

(declare-fun d!405435 () Bool)

(declare-fun c!232786 () Bool)

(assert (=> d!405435 (= c!232786 ((_ is Node!4862) (c!232736 (tokens!1806 acc!229))))))

(declare-fun e!904331 () Bool)

(assert (=> d!405435 (= (inv!19098 (c!232736 (tokens!1806 acc!229))) e!904331)))

(declare-fun b!1416612 () Bool)

(assert (=> b!1416612 (= e!904331 (inv!19107 (c!232736 (tokens!1806 acc!229))))))

(declare-fun b!1416613 () Bool)

(declare-fun e!904332 () Bool)

(assert (=> b!1416613 (= e!904331 e!904332)))

(declare-fun res!641442 () Bool)

(assert (=> b!1416613 (= res!641442 (not ((_ is Leaf!7323) (c!232736 (tokens!1806 acc!229)))))))

(assert (=> b!1416613 (=> res!641442 e!904332)))

(declare-fun b!1416614 () Bool)

(assert (=> b!1416614 (= e!904332 (inv!19108 (c!232736 (tokens!1806 acc!229))))))

(assert (= (and d!405435 c!232786) b!1416612))

(assert (= (and d!405435 (not c!232786)) b!1416613))

(assert (= (and b!1416613 (not res!641442)) b!1416614))

(declare-fun m!1601685 () Bool)

(assert (=> b!1416612 m!1601685))

(declare-fun m!1601687 () Bool)

(assert (=> b!1416614 m!1601687))

(assert (=> b!1416497 d!405435))

(declare-fun d!405437 () Bool)

(declare-fun c!232789 () Bool)

(assert (=> d!405437 (= c!232789 ((_ is Node!4863) (c!232737 objs!24)))))

(declare-fun e!904337 () Bool)

(assert (=> d!405437 (= (inv!19100 (c!232737 objs!24)) e!904337)))

(declare-fun b!1416621 () Bool)

(declare-fun inv!19109 (Conc!4863) Bool)

(assert (=> b!1416621 (= e!904337 (inv!19109 (c!232737 objs!24)))))

(declare-fun b!1416622 () Bool)

(declare-fun e!904338 () Bool)

(assert (=> b!1416622 (= e!904337 e!904338)))

(declare-fun res!641445 () Bool)

(assert (=> b!1416622 (= res!641445 (not ((_ is Leaf!7324) (c!232737 objs!24))))))

(assert (=> b!1416622 (=> res!641445 e!904338)))

(declare-fun b!1416623 () Bool)

(declare-fun inv!19110 (Conc!4863) Bool)

(assert (=> b!1416623 (= e!904338 (inv!19110 (c!232737 objs!24)))))

(assert (= (and d!405437 c!232789) b!1416621))

(assert (= (and d!405437 (not c!232789)) b!1416622))

(assert (= (and b!1416622 (not res!641445)) b!1416623))

(declare-fun m!1601689 () Bool)

(assert (=> b!1416621 m!1601689))

(declare-fun m!1601691 () Bool)

(assert (=> b!1416623 m!1601691))

(assert (=> b!1416498 d!405437))

(declare-fun d!405439 () Bool)

(declare-fun lt!476240 () Bool)

(declare-fun forall!3600 (List!14594 Int) Bool)

(assert (=> d!405439 (= lt!476240 (forall!3600 (list!5708 objs!24) lambda!62569))))

(declare-fun forall!3601 (Conc!4863 Int) Bool)

(assert (=> d!405439 (= lt!476240 (forall!3601 (c!232737 objs!24) lambda!62569))))

(assert (=> d!405439 (= (forall!3599 objs!24 lambda!62569) lt!476240)))

(declare-fun bs!339414 () Bool)

(assert (= bs!339414 d!405439))

(assert (=> bs!339414 m!1601535))

(assert (=> bs!339414 m!1601535))

(declare-fun m!1601693 () Bool)

(assert (=> bs!339414 m!1601693))

(declare-fun m!1601695 () Bool)

(assert (=> bs!339414 m!1601695))

(assert (=> start!130028 d!405439))

(declare-fun d!405441 () Bool)

(declare-fun isBalanced!1443 (Conc!4863) Bool)

(assert (=> d!405441 (= (inv!19101 objs!24) (isBalanced!1443 (c!232737 objs!24)))))

(declare-fun bs!339415 () Bool)

(assert (= bs!339415 d!405441))

(declare-fun m!1601697 () Bool)

(assert (=> bs!339415 m!1601697))

(assert (=> start!130028 d!405441))

(declare-fun d!405443 () Bool)

(declare-fun res!641461 () Bool)

(declare-fun e!904355 () Bool)

(assert (=> d!405443 (=> (not res!641461) (not e!904355))))

(declare-fun isEmpty!8913 (List!14593) Bool)

(assert (=> d!405443 (= res!641461 (not (isEmpty!8913 (rules!11090 acc!229))))))

(assert (=> d!405443 (= (inv!19102 acc!229) e!904355)))

(declare-fun b!1416655 () Bool)

(declare-fun res!641462 () Bool)

(assert (=> b!1416655 (=> (not res!641462) (not e!904355))))

(declare-fun rulesInvariant!2074 (LexerInterface!2204 List!14593) Bool)

(assert (=> b!1416655 (= res!641462 (rulesInvariant!2074 Lexer!2202 (rules!11090 acc!229)))))

(declare-fun b!1416656 () Bool)

(declare-fun res!641463 () Bool)

(assert (=> b!1416656 (=> (not res!641463) (not e!904355))))

(declare-fun rulesProduceEachTokenIndividually!801 (LexerInterface!2204 List!14593 BalanceConc!9664) Bool)

(assert (=> b!1416656 (= res!641463 (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 acc!229) (tokens!1806 acc!229)))))

(declare-fun b!1416657 () Bool)

(declare-fun separableTokens!186 (LexerInterface!2204 BalanceConc!9664 List!14593) Bool)

(assert (=> b!1416657 (= e!904355 (separableTokens!186 Lexer!2202 (tokens!1806 acc!229) (rules!11090 acc!229)))))

(assert (= (and d!405443 res!641461) b!1416655))

(assert (= (and b!1416655 res!641462) b!1416656))

(assert (= (and b!1416656 res!641463) b!1416657))

(declare-fun m!1601823 () Bool)

(assert (=> d!405443 m!1601823))

(declare-fun m!1601825 () Bool)

(assert (=> b!1416655 m!1601825))

(declare-fun m!1601827 () Bool)

(assert (=> b!1416656 m!1601827))

(declare-fun m!1601829 () Bool)

(assert (=> b!1416657 m!1601829))

(assert (=> start!130028 d!405443))

(declare-fun d!405453 () Bool)

(declare-fun res!641464 () Bool)

(declare-fun e!904356 () Bool)

(assert (=> d!405453 (=> (not res!641464) (not e!904356))))

(assert (=> d!405453 (= res!641464 (not (isEmpty!8913 (rules!11090 sep!3))))))

(assert (=> d!405453 (= (inv!19102 sep!3) e!904356)))

(declare-fun b!1416658 () Bool)

(declare-fun res!641465 () Bool)

(assert (=> b!1416658 (=> (not res!641465) (not e!904356))))

(assert (=> b!1416658 (= res!641465 (rulesInvariant!2074 Lexer!2202 (rules!11090 sep!3)))))

(declare-fun b!1416659 () Bool)

(declare-fun res!641466 () Bool)

(assert (=> b!1416659 (=> (not res!641466) (not e!904356))))

(assert (=> b!1416659 (= res!641466 (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 sep!3) (tokens!1806 sep!3)))))

(declare-fun b!1416660 () Bool)

(assert (=> b!1416660 (= e!904356 (separableTokens!186 Lexer!2202 (tokens!1806 sep!3) (rules!11090 sep!3)))))

(assert (= (and d!405453 res!641464) b!1416658))

(assert (= (and b!1416658 res!641465) b!1416659))

(assert (= (and b!1416659 res!641466) b!1416660))

(declare-fun m!1601831 () Bool)

(assert (=> d!405453 m!1601831))

(declare-fun m!1601833 () Bool)

(assert (=> b!1416658 m!1601833))

(declare-fun m!1601835 () Bool)

(assert (=> b!1416659 m!1601835))

(declare-fun m!1601837 () Bool)

(assert (=> b!1416660 m!1601837))

(assert (=> start!130028 d!405453))

(declare-fun d!405455 () Bool)

(assert (=> d!405455 (= (usesJsonRules!0 acc!229) (= (rules!11090 acc!229) (rules!109 JsonLexer!415)))))

(declare-fun bs!339419 () Bool)

(assert (= bs!339419 d!405455))

(assert (=> bs!339419 m!1601681))

(assert (=> b!1416499 d!405455))

(declare-fun d!405457 () Bool)

(declare-fun lt!476313 () Int)

(declare-fun size!11975 (List!14594) Int)

(assert (=> d!405457 (= lt!476313 (size!11975 (list!5708 objs!24)))))

(declare-fun size!11976 (Conc!4863) Int)

(assert (=> d!405457 (= lt!476313 (size!11976 (c!232737 objs!24)))))

(assert (=> d!405457 (= (size!11974 objs!24) lt!476313)))

(declare-fun bs!339420 () Bool)

(assert (= bs!339420 d!405457))

(assert (=> bs!339420 m!1601535))

(assert (=> bs!339420 m!1601535))

(declare-fun m!1601839 () Bool)

(assert (=> bs!339420 m!1601839))

(declare-fun m!1601841 () Bool)

(assert (=> bs!339420 m!1601841))

(assert (=> b!1416500 d!405457))

(declare-fun d!405459 () Bool)

(assert (=> d!405459 (= (inv!19099 (tokens!1806 acc!229)) (isBalanced!1442 (c!232736 (tokens!1806 acc!229))))))

(declare-fun bs!339421 () Bool)

(assert (= bs!339421 d!405459))

(declare-fun m!1601843 () Bool)

(assert (=> bs!339421 m!1601843))

(assert (=> b!1416501 d!405459))

(declare-fun d!405461 () Bool)

(declare-fun lt!476314 () Int)

(assert (=> d!405461 (= lt!476314 (size!11975 (list!5708 (tail!2092 objs!24))))))

(assert (=> d!405461 (= lt!476314 (size!11976 (c!232737 (tail!2092 objs!24))))))

(assert (=> d!405461 (= (size!11974 (tail!2092 objs!24)) lt!476314)))

(declare-fun bs!339422 () Bool)

(assert (= bs!339422 d!405461))

(assert (=> bs!339422 m!1601507))

(declare-fun m!1601845 () Bool)

(assert (=> bs!339422 m!1601845))

(assert (=> bs!339422 m!1601845))

(declare-fun m!1601847 () Bool)

(assert (=> bs!339422 m!1601847))

(declare-fun m!1601849 () Bool)

(assert (=> bs!339422 m!1601849))

(assert (=> b!1416491 d!405461))

(declare-fun d!405463 () Bool)

(declare-fun e!904359 () Bool)

(assert (=> d!405463 e!904359))

(declare-fun res!641469 () Bool)

(assert (=> d!405463 (=> (not res!641469) (not e!904359))))

(declare-fun tail!2093 (Conc!4863) Conc!4863)

(assert (=> d!405463 (= res!641469 (isBalanced!1443 (tail!2093 (c!232737 objs!24))))))

(declare-fun lt!476317 () BalanceConc!9666)

(assert (=> d!405463 (= lt!476317 (BalanceConc!9667 (tail!2093 (c!232737 objs!24))))))

(assert (=> d!405463 (not (isEmpty!8904 objs!24))))

(assert (=> d!405463 (= (tail!2092 objs!24) lt!476317)))

(declare-fun b!1416663 () Bool)

(declare-fun tail!2094 (List!14594) List!14594)

(assert (=> b!1416663 (= e!904359 (= (list!5708 lt!476317) (tail!2094 (list!5708 objs!24))))))

(assert (= (and d!405463 res!641469) b!1416663))

(declare-fun m!1601851 () Bool)

(assert (=> d!405463 m!1601851))

(assert (=> d!405463 m!1601851))

(declare-fun m!1601853 () Bool)

(assert (=> d!405463 m!1601853))

(assert (=> d!405463 m!1601519))

(declare-fun m!1601855 () Bool)

(assert (=> b!1416663 m!1601855))

(assert (=> b!1416663 m!1601535))

(assert (=> b!1416663 m!1601535))

(declare-fun m!1601857 () Bool)

(assert (=> b!1416663 m!1601857))

(assert (=> b!1416491 d!405463))

(declare-fun b!1416672 () Bool)

(declare-fun e!904365 () Bool)

(declare-fun tp!401970 () Bool)

(declare-fun tp!401971 () Bool)

(assert (=> b!1416672 (= e!904365 (and (inv!19100 (left!12417 (c!232737 objs!24))) tp!401971 (inv!19100 (right!12747 (c!232737 objs!24))) tp!401970))))

(declare-fun b!1416674 () Bool)

(declare-fun e!904364 () Bool)

(declare-fun tp!401969 () Bool)

(assert (=> b!1416674 (= e!904364 tp!401969)))

(declare-fun b!1416673 () Bool)

(declare-fun inv!19111 (IArray!9731) Bool)

(assert (=> b!1416673 (= e!904365 (and (inv!19111 (xs!7590 (c!232737 objs!24))) e!904364))))

(assert (=> b!1416498 (= tp!401961 (and (inv!19100 (c!232737 objs!24)) e!904365))))

(assert (= (and b!1416498 ((_ is Node!4863) (c!232737 objs!24))) b!1416672))

(assert (= b!1416673 b!1416674))

(assert (= (and b!1416498 ((_ is Leaf!7324) (c!232737 objs!24))) b!1416673))

(declare-fun m!1601859 () Bool)

(assert (=> b!1416672 m!1601859))

(declare-fun m!1601861 () Bool)

(assert (=> b!1416672 m!1601861))

(declare-fun m!1601863 () Bool)

(assert (=> b!1416673 m!1601863))

(assert (=> b!1416498 m!1601505))

(declare-fun tp!401980 () Bool)

(declare-fun e!904371 () Bool)

(declare-fun tp!401978 () Bool)

(declare-fun b!1416683 () Bool)

(assert (=> b!1416683 (= e!904371 (and (inv!19098 (left!12416 (c!232736 (tokens!1806 sep!3)))) tp!401980 (inv!19098 (right!12746 (c!232736 (tokens!1806 sep!3)))) tp!401978))))

(declare-fun b!1416685 () Bool)

(declare-fun e!904370 () Bool)

(declare-fun tp!401979 () Bool)

(assert (=> b!1416685 (= e!904370 tp!401979)))

(declare-fun b!1416684 () Bool)

(declare-fun inv!19112 (IArray!9729) Bool)

(assert (=> b!1416684 (= e!904371 (and (inv!19112 (xs!7589 (c!232736 (tokens!1806 sep!3)))) e!904370))))

(assert (=> b!1416494 (= tp!401958 (and (inv!19098 (c!232736 (tokens!1806 sep!3))) e!904371))))

(assert (= (and b!1416494 ((_ is Node!4862) (c!232736 (tokens!1806 sep!3)))) b!1416683))

(assert (= b!1416684 b!1416685))

(assert (= (and b!1416494 ((_ is Leaf!7323) (c!232736 (tokens!1806 sep!3)))) b!1416684))

(declare-fun m!1601865 () Bool)

(assert (=> b!1416683 m!1601865))

(declare-fun m!1601867 () Bool)

(assert (=> b!1416683 m!1601867))

(declare-fun m!1601869 () Bool)

(assert (=> b!1416684 m!1601869))

(assert (=> b!1416494 m!1601503))

(declare-fun b!1416696 () Bool)

(declare-fun b_free!34887 () Bool)

(declare-fun b_next!35591 () Bool)

(assert (=> b!1416696 (= b_free!34887 (not b_next!35591))))

(declare-fun tp!401988 () Bool)

(declare-fun b_and!94879 () Bool)

(assert (=> b!1416696 (= tp!401988 b_and!94879)))

(declare-fun b_free!34889 () Bool)

(declare-fun b_next!35593 () Bool)

(assert (=> b!1416696 (= b_free!34889 (not b_next!35593))))

(declare-fun tp!401987 () Bool)

(declare-fun b_and!94881 () Bool)

(assert (=> b!1416696 (= tp!401987 b_and!94881)))

(declare-fun e!904381 () Bool)

(assert (=> b!1416696 (= e!904381 (and tp!401988 tp!401987))))

(declare-fun b!1416695 () Bool)

(declare-fun e!904380 () Bool)

(declare-fun inv!19092 (String!17331) Bool)

(declare-fun inv!19113 (TokenValueInjection!4898) Bool)

(assert (=> b!1416695 (= e!904380 (and (inv!19092 (tag!2791 (h!19928 (rules!11090 acc!229)))) (inv!19113 (transformation!2529 (h!19928 (rules!11090 acc!229)))) e!904381))))

(declare-fun b!1416694 () Bool)

(declare-fun e!904382 () Bool)

(declare-fun tp!401989 () Bool)

(assert (=> b!1416694 (= e!904382 (and e!904380 tp!401989))))

(assert (=> b!1416501 (= tp!401960 e!904382)))

(assert (= b!1416695 b!1416696))

(assert (= b!1416694 b!1416695))

(assert (= (and b!1416501 ((_ is Cons!14527) (rules!11090 acc!229))) b!1416694))

(declare-fun m!1601871 () Bool)

(assert (=> b!1416695 m!1601871))

(declare-fun m!1601873 () Bool)

(assert (=> b!1416695 m!1601873))

(declare-fun b!1416699 () Bool)

(declare-fun b_free!34891 () Bool)

(declare-fun b_next!35595 () Bool)

(assert (=> b!1416699 (= b_free!34891 (not b_next!35595))))

(declare-fun tp!401991 () Bool)

(declare-fun b_and!94883 () Bool)

(assert (=> b!1416699 (= tp!401991 b_and!94883)))

(declare-fun b_free!34893 () Bool)

(declare-fun b_next!35597 () Bool)

(assert (=> b!1416699 (= b_free!34893 (not b_next!35597))))

(declare-fun tp!401990 () Bool)

(declare-fun b_and!94885 () Bool)

(assert (=> b!1416699 (= tp!401990 b_and!94885)))

(declare-fun e!904385 () Bool)

(assert (=> b!1416699 (= e!904385 (and tp!401991 tp!401990))))

(declare-fun b!1416698 () Bool)

(declare-fun e!904384 () Bool)

(assert (=> b!1416698 (= e!904384 (and (inv!19092 (tag!2791 (h!19928 (rules!11090 sep!3)))) (inv!19113 (transformation!2529 (h!19928 (rules!11090 sep!3)))) e!904385))))

(declare-fun b!1416697 () Bool)

(declare-fun e!904386 () Bool)

(declare-fun tp!401992 () Bool)

(assert (=> b!1416697 (= e!904386 (and e!904384 tp!401992))))

(assert (=> b!1416496 (= tp!401959 e!904386)))

(assert (= b!1416698 b!1416699))

(assert (= b!1416697 b!1416698))

(assert (= (and b!1416496 ((_ is Cons!14527) (rules!11090 sep!3))) b!1416697))

(declare-fun m!1601875 () Bool)

(assert (=> b!1416698 m!1601875))

(declare-fun m!1601877 () Bool)

(assert (=> b!1416698 m!1601877))

(declare-fun b!1416700 () Bool)

(declare-fun tp!401993 () Bool)

(declare-fun e!904389 () Bool)

(declare-fun tp!401995 () Bool)

(assert (=> b!1416700 (= e!904389 (and (inv!19098 (left!12416 (c!232736 (tokens!1806 acc!229)))) tp!401995 (inv!19098 (right!12746 (c!232736 (tokens!1806 acc!229)))) tp!401993))))

(declare-fun b!1416702 () Bool)

(declare-fun e!904388 () Bool)

(declare-fun tp!401994 () Bool)

(assert (=> b!1416702 (= e!904388 tp!401994)))

(declare-fun b!1416701 () Bool)

(assert (=> b!1416701 (= e!904389 (and (inv!19112 (xs!7589 (c!232736 (tokens!1806 acc!229)))) e!904388))))

(assert (=> b!1416497 (= tp!401962 (and (inv!19098 (c!232736 (tokens!1806 acc!229))) e!904389))))

(assert (= (and b!1416497 ((_ is Node!4862) (c!232736 (tokens!1806 acc!229)))) b!1416700))

(assert (= b!1416701 b!1416702))

(assert (= (and b!1416497 ((_ is Leaf!7323) (c!232736 (tokens!1806 acc!229)))) b!1416701))

(declare-fun m!1601879 () Bool)

(assert (=> b!1416700 m!1601879))

(declare-fun m!1601881 () Bool)

(assert (=> b!1416700 m!1601881))

(declare-fun m!1601883 () Bool)

(assert (=> b!1416701 m!1601883))

(assert (=> b!1416497 m!1601517))

(check-sat (not d!405443) b_and!94879 (not b!1416663) (not bm!95909) (not d!405459) (not b!1416700) (not b!1416566) (not d!405457) (not b_next!35595) (not bm!95886) (not bm!95884) (not b_next!35591) (not b!1416697) (not b!1416698) (not bm!95908) (not bm!95901) (not b!1416655) (not b!1416685) (not b!1416695) (not b!1416673) (not bm!95904) (not d!405441) (not bm!95875) (not b!1416623) (not b!1416568) (not b_next!35593) (not d!405463) (not d!405453) (not b!1416560) (not bm!95897) (not b!1416659) (not b!1416683) (not bm!95895) (not bm!95888) (not d!405433) (not bm!95907) b_and!94885 (not b!1416701) (not b!1416577) (not bm!95893) (not bm!95910) b_and!94883 (not b!1416657) (not b!1416498) (not b!1416660) (not d!405411) (not bm!95902) (not b!1416612) (not b!1416614) (not bm!95899) (not bm!95878) (not d!405427) (not b!1416702) (not b!1416497) (not b!1416494) (not b!1416684) (not b!1416658) (not d!405455) b_and!94881 (not bm!95892) (not d!405439) (not b!1416621) (not b!1416672) (not d!405413) (not b!1416569) (not b!1416656) (not b!1416674) (not bm!95883) (not b_next!35597) (not b!1416562) (not b!1416555) (not b!1416694) (not bm!95881) (not bm!95887) (not d!405431) (not bm!95891) (not b!1416579) (not bm!95890) (not d!405461))
(check-sat (not b_next!35591) (not b_next!35593) b_and!94885 b_and!94883 b_and!94879 b_and!94881 (not b_next!35595) (not b_next!35597))
(get-model)

(declare-fun d!405479 () Bool)

(declare-fun e!904433 () Bool)

(assert (=> d!405479 e!904433))

(declare-fun res!641492 () Bool)

(assert (=> d!405479 (=> (not res!641492) (not e!904433))))

(declare-fun lt!476327 () List!14591)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2144 (List!14591) (InoxSet (_ BitVec 16)))

(assert (=> d!405479 (= res!641492 (= (content!2144 lt!476327) ((_ map or) (content!2144 (ite c!232760 call!95915 e!904307)) (content!2144 (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880))))))))

(declare-fun e!904434 () List!14591)

(assert (=> d!405479 (= lt!476327 e!904434)))

(declare-fun c!232803 () Bool)

(assert (=> d!405479 (= c!232803 ((_ is Nil!14525) (ite c!232760 call!95915 e!904307)))))

(assert (=> d!405479 (= (++!3790 (ite c!232760 call!95915 e!904307) (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880))) lt!476327)))

(declare-fun b!1416769 () Bool)

(assert (=> b!1416769 (= e!904434 (Cons!14525 (h!19926 (ite c!232760 call!95915 e!904307)) (++!3790 (t!124112 (ite c!232760 call!95915 e!904307)) (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880)))))))

(declare-fun b!1416768 () Bool)

(assert (=> b!1416768 (= e!904434 (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880)))))

(declare-fun b!1416770 () Bool)

(declare-fun res!641493 () Bool)

(assert (=> b!1416770 (=> (not res!641493) (not e!904433))))

(declare-fun size!11979 (List!14591) Int)

(assert (=> b!1416770 (= res!641493 (= (size!11979 lt!476327) (+ (size!11979 (ite c!232760 call!95915 e!904307)) (size!11979 (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880))))))))

(declare-fun b!1416771 () Bool)

(assert (=> b!1416771 (= e!904433 (or (not (= (ite c!232760 call!95904 (ite c!232762 call!95881 call!95880)) Nil!14525)) (= lt!476327 (ite c!232760 call!95915 e!904307))))))

(assert (= (and d!405479 c!232803) b!1416768))

(assert (= (and d!405479 (not c!232803)) b!1416769))

(assert (= (and d!405479 res!641492) b!1416770))

(assert (= (and b!1416770 res!641493) b!1416771))

(declare-fun m!1601951 () Bool)

(assert (=> d!405479 m!1601951))

(declare-fun m!1601953 () Bool)

(assert (=> d!405479 m!1601953))

(declare-fun m!1601955 () Bool)

(assert (=> d!405479 m!1601955))

(declare-fun m!1601957 () Bool)

(assert (=> b!1416769 m!1601957))

(declare-fun m!1601959 () Bool)

(assert (=> b!1416770 m!1601959))

(declare-fun m!1601961 () Bool)

(assert (=> b!1416770 m!1601961))

(declare-fun m!1601963 () Bool)

(assert (=> b!1416770 m!1601963))

(assert (=> bm!95899 d!405479))

(declare-fun d!405481 () Bool)

(declare-fun list!5714 (Conc!4861) List!14591)

(assert (=> d!405481 (= (list!5709 call!95901) (list!5714 (c!232735 call!95901)))))

(declare-fun bs!339427 () Bool)

(assert (= bs!339427 d!405481))

(declare-fun m!1601965 () Bool)

(assert (=> bs!339427 m!1601965))

(assert (=> bm!95884 d!405481))

(declare-fun b!1416800 () Bool)

(declare-fun e!904452 () Bool)

(assert (=> b!1416800 (= e!904452 true)))

(declare-fun b!1416799 () Bool)

(declare-fun e!904451 () Bool)

(assert (=> b!1416799 (= e!904451 e!904452)))

(declare-fun b!1416798 () Bool)

(declare-fun e!904450 () Bool)

(assert (=> b!1416798 (= e!904450 e!904451)))

(declare-fun d!405483 () Bool)

(assert (=> d!405483 e!904450))

(assert (= b!1416799 b!1416800))

(assert (= b!1416798 b!1416799))

(assert (= (and d!405483 ((_ is Cons!14527) (rules!11090 sep!3))) b!1416798))

(declare-fun order!8841 () Int)

(declare-fun order!8839 () Int)

(declare-fun lambda!62574 () Int)

(declare-fun dynLambda!6709 (Int Int) Int)

(declare-fun dynLambda!6710 (Int Int) Int)

(assert (=> b!1416800 (< (dynLambda!6709 order!8839 (toValue!3828 (transformation!2529 (h!19928 (rules!11090 sep!3))))) (dynLambda!6710 order!8841 lambda!62574))))

(declare-fun order!8843 () Int)

(declare-fun dynLambda!6711 (Int Int) Int)

(assert (=> b!1416800 (< (dynLambda!6711 order!8843 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 sep!3))))) (dynLambda!6710 order!8841 lambda!62574))))

(assert (=> d!405483 true))

(declare-fun e!904443 () Bool)

(assert (=> d!405483 e!904443))

(declare-fun res!641508 () Bool)

(assert (=> d!405483 (=> (not res!641508) (not e!904443))))

(declare-fun lt!476330 () Bool)

(declare-fun forall!3604 (List!14592 Int) Bool)

(assert (=> d!405483 (= res!641508 (= lt!476330 (forall!3604 (list!5710 (tokens!1806 sep!3)) lambda!62574)))))

(declare-fun forall!3605 (BalanceConc!9664 Int) Bool)

(assert (=> d!405483 (= lt!476330 (forall!3605 (tokens!1806 sep!3) lambda!62574))))

(assert (=> d!405483 (not (isEmpty!8913 (rules!11090 sep!3)))))

(assert (=> d!405483 (= (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 sep!3) (tokens!1806 sep!3)) lt!476330)))

(declare-fun b!1416789 () Bool)

(assert (=> b!1416789 (= e!904443 (= lt!476330 (rulesProduceEachTokenIndividuallyList!685 Lexer!2202 (rules!11090 sep!3) (list!5710 (tokens!1806 sep!3)))))))

(assert (= (and d!405483 res!641508) b!1416789))

(declare-fun m!1601985 () Bool)

(assert (=> d!405483 m!1601985))

(assert (=> d!405483 m!1601985))

(declare-fun m!1601987 () Bool)

(assert (=> d!405483 m!1601987))

(declare-fun m!1601989 () Bool)

(assert (=> d!405483 m!1601989))

(assert (=> d!405483 m!1601831))

(assert (=> b!1416789 m!1601985))

(assert (=> b!1416789 m!1601985))

(declare-fun m!1601991 () Bool)

(assert (=> b!1416789 m!1601991))

(assert (=> b!1416659 d!405483))

(declare-fun b!1416815 () Bool)

(declare-fun res!641525 () Bool)

(declare-fun e!904458 () Bool)

(assert (=> b!1416815 (=> (not res!641525) (not e!904458))))

(assert (=> b!1416815 (= res!641525 (isBalanced!1443 (right!12747 (tail!2093 (c!232737 objs!24)))))))

(declare-fun b!1416816 () Bool)

(assert (=> b!1416816 (= e!904458 (not (isEmpty!8906 (right!12747 (tail!2093 (c!232737 objs!24))))))))

(declare-fun d!405491 () Bool)

(declare-fun res!641521 () Bool)

(declare-fun e!904457 () Bool)

(assert (=> d!405491 (=> res!641521 e!904457)))

(assert (=> d!405491 (= res!641521 (not ((_ is Node!4863) (tail!2093 (c!232737 objs!24)))))))

(assert (=> d!405491 (= (isBalanced!1443 (tail!2093 (c!232737 objs!24))) e!904457)))

(declare-fun b!1416817 () Bool)

(declare-fun res!641524 () Bool)

(assert (=> b!1416817 (=> (not res!641524) (not e!904458))))

(assert (=> b!1416817 (= res!641524 (not (isEmpty!8906 (left!12417 (tail!2093 (c!232737 objs!24))))))))

(declare-fun b!1416818 () Bool)

(assert (=> b!1416818 (= e!904457 e!904458)))

(declare-fun res!641526 () Bool)

(assert (=> b!1416818 (=> (not res!641526) (not e!904458))))

(declare-fun height!704 (Conc!4863) Int)

(assert (=> b!1416818 (= res!641526 (<= (- 1) (- (height!704 (left!12417 (tail!2093 (c!232737 objs!24)))) (height!704 (right!12747 (tail!2093 (c!232737 objs!24)))))))))

(declare-fun b!1416819 () Bool)

(declare-fun res!641523 () Bool)

(assert (=> b!1416819 (=> (not res!641523) (not e!904458))))

(assert (=> b!1416819 (= res!641523 (<= (- (height!704 (left!12417 (tail!2093 (c!232737 objs!24)))) (height!704 (right!12747 (tail!2093 (c!232737 objs!24))))) 1))))

(declare-fun b!1416820 () Bool)

(declare-fun res!641522 () Bool)

(assert (=> b!1416820 (=> (not res!641522) (not e!904458))))

(assert (=> b!1416820 (= res!641522 (isBalanced!1443 (left!12417 (tail!2093 (c!232737 objs!24)))))))

(assert (= (and d!405491 (not res!641521)) b!1416818))

(assert (= (and b!1416818 res!641526) b!1416819))

(assert (= (and b!1416819 res!641523) b!1416820))

(assert (= (and b!1416820 res!641522) b!1416815))

(assert (= (and b!1416815 res!641525) b!1416817))

(assert (= (and b!1416817 res!641524) b!1416816))

(declare-fun m!1601993 () Bool)

(assert (=> b!1416817 m!1601993))

(declare-fun m!1601995 () Bool)

(assert (=> b!1416820 m!1601995))

(declare-fun m!1601997 () Bool)

(assert (=> b!1416818 m!1601997))

(declare-fun m!1601999 () Bool)

(assert (=> b!1416818 m!1601999))

(assert (=> b!1416819 m!1601997))

(assert (=> b!1416819 m!1601999))

(declare-fun m!1602001 () Bool)

(assert (=> b!1416815 m!1602001))

(declare-fun m!1602003 () Bool)

(assert (=> b!1416816 m!1602003))

(assert (=> d!405463 d!405491))

(declare-fun b!1416837 () Bool)

(declare-fun e!904469 () Bool)

(declare-fun lt!476353 () Conc!4863)

(declare-fun list!5715 (Conc!4863) List!14594)

(assert (=> b!1416837 (= e!904469 (= (list!5715 lt!476353) (tail!2094 (list!5715 (c!232737 objs!24)))))))

(declare-fun call!96041 () List!14594)

(declare-fun lt!476352 () List!14594)

(declare-fun lt!476350 () List!14594)

(declare-fun c!232815 () Bool)

(declare-fun bm!96035 () Bool)

(assert (=> bm!96035 (= call!96041 (tail!2094 (ite c!232815 lt!476350 lt!476352)))))

(declare-fun b!1416838 () Bool)

(declare-fun e!904470 () Conc!4863)

(declare-fun e!904473 () Conc!4863)

(assert (=> b!1416838 (= e!904470 e!904473)))

(declare-fun res!641532 () Bool)

(assert (=> b!1416838 (= res!641532 ((_ is Node!4863) (c!232737 objs!24)))))

(declare-fun e!904471 () Bool)

(assert (=> b!1416838 (=> (not res!641532) (not e!904471))))

(declare-fun c!232814 () Bool)

(assert (=> b!1416838 (= c!232814 e!904471)))

(declare-fun b!1416839 () Bool)

(assert (=> b!1416839 (= e!904471 (isEmpty!8906 (left!12417 (c!232737 objs!24))))))

(declare-fun d!405493 () Bool)

(assert (=> d!405493 e!904469))

(declare-fun res!641531 () Bool)

(assert (=> d!405493 (=> (not res!641531) (not e!904469))))

(assert (=> d!405493 (= res!641531 (isBalanced!1443 lt!476353))))

(assert (=> d!405493 (= lt!476353 e!904470)))

(assert (=> d!405493 (= c!232815 ((_ is Leaf!7324) (c!232737 objs!24)))))

(assert (=> d!405493 (isBalanced!1443 (c!232737 objs!24))))

(assert (=> d!405493 (= (tail!2093 (c!232737 objs!24)) lt!476353)))

(declare-fun b!1416840 () Bool)

(declare-fun lt!476351 () Unit!21314)

(declare-fun lt!476354 () Unit!21314)

(assert (=> b!1416840 (= lt!476351 lt!476354)))

(declare-fun lt!476347 () List!14594)

(declare-fun ++!3796 (List!14594 List!14594) List!14594)

(assert (=> b!1416840 (= (tail!2094 (++!3796 lt!476352 lt!476347)) (++!3796 call!96041 lt!476347))))

(declare-fun lemmaTailOfConcatIsTailConcat!13 (List!14594 List!14594) Unit!21314)

(assert (=> b!1416840 (= lt!476354 (lemmaTailOfConcatIsTailConcat!13 lt!476352 lt!476347))))

(assert (=> b!1416840 (= lt!476347 (list!5715 (right!12747 (c!232737 objs!24))))))

(assert (=> b!1416840 (= lt!476352 (list!5715 (left!12417 (c!232737 objs!24))))))

(declare-fun call!96040 () Conc!4863)

(declare-fun ++!3797 (Conc!4863 Conc!4863) Conc!4863)

(assert (=> b!1416840 (= e!904473 (++!3797 call!96040 (right!12747 (c!232737 objs!24))))))

(declare-fun b!1416841 () Bool)

(declare-fun e!904472 () Conc!4863)

(assert (=> b!1416841 (= e!904470 e!904472)))

(declare-fun c!232813 () Bool)

(assert (=> b!1416841 (= c!232813 (= (csize!9957 (c!232737 objs!24)) 1))))

(declare-fun b!1416842 () Bool)

(declare-fun lt!476349 () Unit!21314)

(declare-fun lt!476348 () Unit!21314)

(assert (=> b!1416842 (= lt!476349 lt!476348)))

(declare-fun slice!536 (List!14594 Int Int) List!14594)

(assert (=> b!1416842 (= call!96041 (slice!536 lt!476350 1 (size!11975 lt!476350)))))

(declare-fun sliceTailLemma!13 (List!14594) Unit!21314)

(assert (=> b!1416842 (= lt!476348 (sliceTailLemma!13 lt!476350))))

(declare-fun list!5716 (IArray!9731) List!14594)

(assert (=> b!1416842 (= lt!476350 (list!5716 (xs!7590 (c!232737 objs!24))))))

(declare-fun slice!537 (IArray!9731 Int Int) IArray!9731)

(assert (=> b!1416842 (= e!904472 (Leaf!7324 (slice!537 (xs!7590 (c!232737 objs!24)) 1 (csize!9957 (c!232737 objs!24))) (- (csize!9957 (c!232737 objs!24)) 1)))))

(declare-fun b!1416843 () Bool)

(assert (=> b!1416843 (= e!904473 call!96040)))

(declare-fun b!1416844 () Bool)

(assert (=> b!1416844 (= e!904472 Empty!4863)))

(declare-fun bm!96036 () Bool)

(assert (=> bm!96036 (= call!96040 (tail!2093 (ite c!232814 (right!12747 (c!232737 objs!24)) (left!12417 (c!232737 objs!24)))))))

(assert (= (and d!405493 c!232815) b!1416841))

(assert (= (and d!405493 (not c!232815)) b!1416838))

(assert (= (and b!1416841 c!232813) b!1416844))

(assert (= (and b!1416841 (not c!232813)) b!1416842))

(assert (= (and b!1416838 res!641532) b!1416839))

(assert (= (and b!1416838 c!232814) b!1416843))

(assert (= (and b!1416838 (not c!232814)) b!1416840))

(assert (= (or b!1416843 b!1416840) bm!96036))

(assert (= (or b!1416842 b!1416840) bm!96035))

(assert (= (and d!405493 res!641531) b!1416837))

(declare-fun m!1602005 () Bool)

(assert (=> d!405493 m!1602005))

(assert (=> d!405493 m!1601697))

(declare-fun m!1602007 () Bool)

(assert (=> b!1416839 m!1602007))

(declare-fun m!1602009 () Bool)

(assert (=> b!1416837 m!1602009))

(declare-fun m!1602011 () Bool)

(assert (=> b!1416837 m!1602011))

(assert (=> b!1416837 m!1602011))

(declare-fun m!1602013 () Bool)

(assert (=> b!1416837 m!1602013))

(declare-fun m!1602015 () Bool)

(assert (=> b!1416840 m!1602015))

(declare-fun m!1602017 () Bool)

(assert (=> b!1416840 m!1602017))

(declare-fun m!1602019 () Bool)

(assert (=> b!1416840 m!1602019))

(declare-fun m!1602021 () Bool)

(assert (=> b!1416840 m!1602021))

(assert (=> b!1416840 m!1602021))

(declare-fun m!1602023 () Bool)

(assert (=> b!1416840 m!1602023))

(declare-fun m!1602025 () Bool)

(assert (=> b!1416840 m!1602025))

(declare-fun m!1602027 () Bool)

(assert (=> b!1416840 m!1602027))

(declare-fun m!1602029 () Bool)

(assert (=> bm!96036 m!1602029))

(declare-fun m!1602031 () Bool)

(assert (=> b!1416842 m!1602031))

(declare-fun m!1602033 () Bool)

(assert (=> b!1416842 m!1602033))

(assert (=> b!1416842 m!1602033))

(declare-fun m!1602035 () Bool)

(assert (=> b!1416842 m!1602035))

(declare-fun m!1602037 () Bool)

(assert (=> b!1416842 m!1602037))

(declare-fun m!1602039 () Bool)

(assert (=> b!1416842 m!1602039))

(declare-fun m!1602041 () Bool)

(assert (=> bm!96035 m!1602041))

(assert (=> d!405463 d!405493))

(assert (=> d!405463 d!405411))

(assert (=> b!1416494 d!405429))

(declare-fun d!405495 () Bool)

(assert (=> d!405495 (= (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (++!3792 (ite c!232760 lt!476066 (ite c!232762 lt!476065 lt!476091)) (ite c!232760 lt!476071 (ite c!232762 lt!476048 lt!476046)))) (++!3790 (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 (ite c!232762 lt!476065 lt!476091))) (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476071 (ite c!232762 lt!476048 lt!476046)))))))

(declare-fun lt!476357 () Unit!21314)

(declare-fun choose!8731 (LexerInterface!2204 List!14592 List!14592) Unit!21314)

(assert (=> d!405495 (= lt!476357 (choose!8731 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 (ite c!232762 lt!476065 lt!476091)) (ite c!232760 lt!476071 (ite c!232762 lt!476048 lt!476046))))))

(assert (=> d!405495 (= (lemmaPrintConcatSameAsConcatPrint!23 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 (ite c!232762 lt!476065 lt!476091)) (ite c!232760 lt!476071 (ite c!232762 lt!476048 lt!476046))) lt!476357)))

(declare-fun bs!339428 () Bool)

(assert (= bs!339428 d!405495))

(declare-fun m!1602043 () Bool)

(assert (=> bs!339428 m!1602043))

(declare-fun m!1602045 () Bool)

(assert (=> bs!339428 m!1602045))

(declare-fun m!1602047 () Bool)

(assert (=> bs!339428 m!1602047))

(declare-fun m!1602049 () Bool)

(assert (=> bs!339428 m!1602049))

(assert (=> bs!339428 m!1602045))

(declare-fun m!1602051 () Bool)

(assert (=> bs!339428 m!1602051))

(assert (=> bs!339428 m!1602051))

(assert (=> bs!339428 m!1602043))

(declare-fun m!1602053 () Bool)

(assert (=> bs!339428 m!1602053))

(assert (=> bm!95886 d!405495))

(declare-fun b!1416858 () Bool)

(declare-fun res!641547 () Bool)

(declare-fun e!904478 () Bool)

(assert (=> b!1416858 (=> (not res!641547) (not e!904478))))

(declare-fun height!706 (Conc!4862) Int)

(assert (=> b!1416858 (= res!641547 (<= (- (height!706 (left!12416 (c!232736 (tokens!1806 acc!229)))) (height!706 (right!12746 (c!232736 (tokens!1806 acc!229))))) 1))))

(declare-fun b!1416859 () Bool)

(declare-fun res!641550 () Bool)

(assert (=> b!1416859 (=> (not res!641550) (not e!904478))))

(declare-fun isEmpty!8915 (Conc!4862) Bool)

(assert (=> b!1416859 (= res!641550 (not (isEmpty!8915 (left!12416 (c!232736 (tokens!1806 acc!229))))))))

(declare-fun b!1416860 () Bool)

(declare-fun e!904479 () Bool)

(assert (=> b!1416860 (= e!904479 e!904478)))

(declare-fun res!641548 () Bool)

(assert (=> b!1416860 (=> (not res!641548) (not e!904478))))

(assert (=> b!1416860 (= res!641548 (<= (- 1) (- (height!706 (left!12416 (c!232736 (tokens!1806 acc!229)))) (height!706 (right!12746 (c!232736 (tokens!1806 acc!229)))))))))

(declare-fun d!405497 () Bool)

(declare-fun res!641546 () Bool)

(assert (=> d!405497 (=> res!641546 e!904479)))

(assert (=> d!405497 (= res!641546 (not ((_ is Node!4862) (c!232736 (tokens!1806 acc!229)))))))

(assert (=> d!405497 (= (isBalanced!1442 (c!232736 (tokens!1806 acc!229))) e!904479)))

(declare-fun b!1416857 () Bool)

(declare-fun res!641549 () Bool)

(assert (=> b!1416857 (=> (not res!641549) (not e!904478))))

(assert (=> b!1416857 (= res!641549 (isBalanced!1442 (right!12746 (c!232736 (tokens!1806 acc!229)))))))

(declare-fun b!1416861 () Bool)

(assert (=> b!1416861 (= e!904478 (not (isEmpty!8915 (right!12746 (c!232736 (tokens!1806 acc!229))))))))

(declare-fun b!1416862 () Bool)

(declare-fun res!641545 () Bool)

(assert (=> b!1416862 (=> (not res!641545) (not e!904478))))

(assert (=> b!1416862 (= res!641545 (isBalanced!1442 (left!12416 (c!232736 (tokens!1806 acc!229)))))))

(assert (= (and d!405497 (not res!641546)) b!1416860))

(assert (= (and b!1416860 res!641548) b!1416858))

(assert (= (and b!1416858 res!641547) b!1416862))

(assert (= (and b!1416862 res!641545) b!1416857))

(assert (= (and b!1416857 res!641549) b!1416859))

(assert (= (and b!1416859 res!641550) b!1416861))

(declare-fun m!1602055 () Bool)

(assert (=> b!1416858 m!1602055))

(declare-fun m!1602057 () Bool)

(assert (=> b!1416858 m!1602057))

(declare-fun m!1602059 () Bool)

(assert (=> b!1416857 m!1602059))

(declare-fun m!1602061 () Bool)

(assert (=> b!1416859 m!1602061))

(declare-fun m!1602063 () Bool)

(assert (=> b!1416861 m!1602063))

(declare-fun m!1602065 () Bool)

(assert (=> b!1416862 m!1602065))

(assert (=> b!1416860 m!1602055))

(assert (=> b!1416860 m!1602057))

(assert (=> d!405459 d!405497))

(declare-fun d!405499 () Bool)

(declare-fun lt!476360 () BalanceConc!9662)

(assert (=> d!405499 (= (list!5709 lt!476360) (printList!658 Lexer!2202 (list!5710 (tokens!1806 acc!229))))))

(assert (=> d!405499 (= lt!476360 (printTailRec!640 Lexer!2202 (tokens!1806 acc!229) 0 (BalanceConc!9663 Empty!4861)))))

(assert (=> d!405499 (= (print!972 Lexer!2202 (tokens!1806 acc!229)) lt!476360)))

(declare-fun bs!339429 () Bool)

(assert (= bs!339429 d!405499))

(declare-fun m!1602067 () Bool)

(assert (=> bs!339429 m!1602067))

(assert (=> bs!339429 m!1601609))

(assert (=> bs!339429 m!1601609))

(declare-fun m!1602069 () Bool)

(assert (=> bs!339429 m!1602069))

(declare-fun m!1602071 () Bool)

(assert (=> bs!339429 m!1602071))

(assert (=> bm!95881 d!405499))

(declare-fun bs!339430 () Bool)

(declare-fun d!405501 () Bool)

(assert (= bs!339430 (and d!405501 d!405483)))

(declare-fun lambda!62575 () Int)

(assert (=> bs!339430 (= (= (rules!11090 acc!229) (rules!11090 sep!3)) (= lambda!62575 lambda!62574))))

(declare-fun b!1416866 () Bool)

(declare-fun e!904483 () Bool)

(assert (=> b!1416866 (= e!904483 true)))

(declare-fun b!1416865 () Bool)

(declare-fun e!904482 () Bool)

(assert (=> b!1416865 (= e!904482 e!904483)))

(declare-fun b!1416864 () Bool)

(declare-fun e!904481 () Bool)

(assert (=> b!1416864 (= e!904481 e!904482)))

(assert (=> d!405501 e!904481))

(assert (= b!1416865 b!1416866))

(assert (= b!1416864 b!1416865))

(assert (= (and d!405501 ((_ is Cons!14527) (rules!11090 acc!229))) b!1416864))

(assert (=> b!1416866 (< (dynLambda!6709 order!8839 (toValue!3828 (transformation!2529 (h!19928 (rules!11090 acc!229))))) (dynLambda!6710 order!8841 lambda!62575))))

(assert (=> b!1416866 (< (dynLambda!6711 order!8843 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 acc!229))))) (dynLambda!6710 order!8841 lambda!62575))))

(assert (=> d!405501 true))

(declare-fun e!904480 () Bool)

(assert (=> d!405501 e!904480))

(declare-fun res!641551 () Bool)

(assert (=> d!405501 (=> (not res!641551) (not e!904480))))

(declare-fun lt!476361 () Bool)

(assert (=> d!405501 (= res!641551 (= lt!476361 (forall!3604 (list!5710 (tokens!1806 acc!229)) lambda!62575)))))

(assert (=> d!405501 (= lt!476361 (forall!3605 (tokens!1806 acc!229) lambda!62575))))

(assert (=> d!405501 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405501 (= (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 acc!229) (tokens!1806 acc!229)) lt!476361)))

(declare-fun b!1416863 () Bool)

(assert (=> b!1416863 (= e!904480 (= lt!476361 (rulesProduceEachTokenIndividuallyList!685 Lexer!2202 (rules!11090 acc!229) (list!5710 (tokens!1806 acc!229)))))))

(assert (= (and d!405501 res!641551) b!1416863))

(assert (=> d!405501 m!1601609))

(assert (=> d!405501 m!1601609))

(declare-fun m!1602075 () Bool)

(assert (=> d!405501 m!1602075))

(declare-fun m!1602077 () Bool)

(assert (=> d!405501 m!1602077))

(assert (=> d!405501 m!1601823))

(assert (=> b!1416863 m!1601609))

(assert (=> b!1416863 m!1601609))

(declare-fun m!1602079 () Bool)

(assert (=> b!1416863 m!1602079))

(assert (=> b!1416656 d!405501))

(declare-fun d!405505 () Bool)

(declare-fun lt!476367 () Bool)

(declare-fun isEmpty!8918 (List!14592) Bool)

(assert (=> d!405505 (= lt!476367 (isEmpty!8918 (list!5710 (tokens!1806 acc!229))))))

(assert (=> d!405505 (= lt!476367 (isEmpty!8915 (c!232736 (tokens!1806 acc!229))))))

(assert (=> d!405505 (= (isEmpty!8909 (tokens!1806 acc!229)) lt!476367)))

(declare-fun bs!339433 () Bool)

(assert (= bs!339433 d!405505))

(assert (=> bs!339433 m!1601609))

(assert (=> bs!339433 m!1601609))

(declare-fun m!1602085 () Bool)

(assert (=> bs!339433 m!1602085))

(declare-fun m!1602087 () Bool)

(assert (=> bs!339433 m!1602087))

(assert (=> b!1416568 d!405505))

(declare-fun d!405509 () Bool)

(assert (=> d!405509 (= (get!4461 lt!476106) (v!22027 lt!476106))))

(assert (=> b!1416562 d!405509))

(declare-fun d!405511 () Bool)

(declare-fun c!232816 () Bool)

(assert (=> d!405511 (= c!232816 ((_ is Node!4862) (left!12416 (c!232736 (tokens!1806 sep!3)))))))

(declare-fun e!904484 () Bool)

(assert (=> d!405511 (= (inv!19098 (left!12416 (c!232736 (tokens!1806 sep!3)))) e!904484)))

(declare-fun b!1416867 () Bool)

(assert (=> b!1416867 (= e!904484 (inv!19107 (left!12416 (c!232736 (tokens!1806 sep!3)))))))

(declare-fun b!1416868 () Bool)

(declare-fun e!904485 () Bool)

(assert (=> b!1416868 (= e!904484 e!904485)))

(declare-fun res!641552 () Bool)

(assert (=> b!1416868 (= res!641552 (not ((_ is Leaf!7323) (left!12416 (c!232736 (tokens!1806 sep!3))))))))

(assert (=> b!1416868 (=> res!641552 e!904485)))

(declare-fun b!1416869 () Bool)

(assert (=> b!1416869 (= e!904485 (inv!19108 (left!12416 (c!232736 (tokens!1806 sep!3)))))))

(assert (= (and d!405511 c!232816) b!1416867))

(assert (= (and d!405511 (not c!232816)) b!1416868))

(assert (= (and b!1416868 (not res!641552)) b!1416869))

(declare-fun m!1602089 () Bool)

(assert (=> b!1416867 m!1602089))

(declare-fun m!1602091 () Bool)

(assert (=> b!1416869 m!1602091))

(assert (=> b!1416683 d!405511))

(declare-fun d!405513 () Bool)

(declare-fun c!232817 () Bool)

(assert (=> d!405513 (= c!232817 ((_ is Node!4862) (right!12746 (c!232736 (tokens!1806 sep!3)))))))

(declare-fun e!904486 () Bool)

(assert (=> d!405513 (= (inv!19098 (right!12746 (c!232736 (tokens!1806 sep!3)))) e!904486)))

(declare-fun b!1416870 () Bool)

(assert (=> b!1416870 (= e!904486 (inv!19107 (right!12746 (c!232736 (tokens!1806 sep!3)))))))

(declare-fun b!1416871 () Bool)

(declare-fun e!904487 () Bool)

(assert (=> b!1416871 (= e!904486 e!904487)))

(declare-fun res!641553 () Bool)

(assert (=> b!1416871 (= res!641553 (not ((_ is Leaf!7323) (right!12746 (c!232736 (tokens!1806 sep!3))))))))

(assert (=> b!1416871 (=> res!641553 e!904487)))

(declare-fun b!1416872 () Bool)

(assert (=> b!1416872 (= e!904487 (inv!19108 (right!12746 (c!232736 (tokens!1806 sep!3)))))))

(assert (= (and d!405513 c!232817) b!1416870))

(assert (= (and d!405513 (not c!232817)) b!1416871))

(assert (= (and b!1416871 (not res!641553)) b!1416872))

(declare-fun m!1602093 () Bool)

(assert (=> b!1416870 m!1602093))

(declare-fun m!1602095 () Bool)

(assert (=> b!1416872 m!1602095))

(assert (=> b!1416683 d!405513))

(declare-fun d!405515 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!414) Rule!4858)

(declare-fun integerLiteralRule!0 (JsonLexer!414) Rule!4858)

(declare-fun floatLiteralRule!0 (JsonLexer!414) Rule!4858)

(declare-fun trueRule!0 (JsonLexer!414) Rule!4858)

(declare-fun falseRule!0 (JsonLexer!414) Rule!4858)

(declare-fun nullRule!0 (JsonLexer!414) Rule!4858)

(declare-fun jsonstringRule!0 (JsonLexer!414) Rule!4858)

(declare-fun lBraceRule!0 (JsonLexer!414) Rule!4858)

(declare-fun rBraceRule!0 (JsonLexer!414) Rule!4858)

(declare-fun lBracketRule!0 (JsonLexer!414) Rule!4858)

(declare-fun rBracketRule!0 (JsonLexer!414) Rule!4858)

(declare-fun colonRule!0 (JsonLexer!414) Rule!4858)

(declare-fun commaRule!0 (JsonLexer!414) Rule!4858)

(declare-fun eofRule!0 (JsonLexer!414) Rule!4858)

(assert (=> d!405515 (= (rules!109 JsonLexer!415) (Cons!14527 (whitespaceRule!0 JsonLexer!415) (Cons!14527 (integerLiteralRule!0 JsonLexer!415) (Cons!14527 (floatLiteralRule!0 JsonLexer!415) (Cons!14527 (trueRule!0 JsonLexer!415) (Cons!14527 (falseRule!0 JsonLexer!415) (Cons!14527 (nullRule!0 JsonLexer!415) (Cons!14527 (jsonstringRule!0 JsonLexer!415) (Cons!14527 (lBraceRule!0 JsonLexer!415) (Cons!14527 (rBraceRule!0 JsonLexer!415) (Cons!14527 (lBracketRule!0 JsonLexer!415) (Cons!14527 (rBracketRule!0 JsonLexer!415) (Cons!14527 (colonRule!0 JsonLexer!415) (Cons!14527 (commaRule!0 JsonLexer!415) (Cons!14527 (eofRule!0 JsonLexer!415) Nil!14527)))))))))))))))))

(declare-fun bs!339435 () Bool)

(assert (= bs!339435 d!405515))

(declare-fun m!1602109 () Bool)

(assert (=> bs!339435 m!1602109))

(declare-fun m!1602111 () Bool)

(assert (=> bs!339435 m!1602111))

(declare-fun m!1602113 () Bool)

(assert (=> bs!339435 m!1602113))

(declare-fun m!1602115 () Bool)

(assert (=> bs!339435 m!1602115))

(declare-fun m!1602117 () Bool)

(assert (=> bs!339435 m!1602117))

(declare-fun m!1602119 () Bool)

(assert (=> bs!339435 m!1602119))

(declare-fun m!1602121 () Bool)

(assert (=> bs!339435 m!1602121))

(declare-fun m!1602123 () Bool)

(assert (=> bs!339435 m!1602123))

(declare-fun m!1602125 () Bool)

(assert (=> bs!339435 m!1602125))

(declare-fun m!1602127 () Bool)

(assert (=> bs!339435 m!1602127))

(declare-fun m!1602129 () Bool)

(assert (=> bs!339435 m!1602129))

(declare-fun m!1602131 () Bool)

(assert (=> bs!339435 m!1602131))

(declare-fun m!1602133 () Bool)

(assert (=> bs!339435 m!1602133))

(declare-fun m!1602135 () Bool)

(assert (=> bs!339435 m!1602135))

(assert (=> d!405431 d!405515))

(declare-fun d!405525 () Bool)

(declare-fun e!904514 () Bool)

(assert (=> d!405525 e!904514))

(declare-fun res!641585 () Bool)

(assert (=> d!405525 (=> (not res!641585) (not e!904514))))

(declare-datatypes ((tuple2!13992 0))(
  ( (tuple2!13993 (_1!7882 BalanceConc!9664) (_2!7882 BalanceConc!9662)) )
))
(declare-fun lex!1010 (LexerInterface!2204 List!14593 BalanceConc!9662) tuple2!13992)

(declare-fun seqFromList!1672 (List!14592) BalanceConc!9664)

(assert (=> d!405525 (= res!641585 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (head!2729 objs!24)) (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))) (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))

(declare-fun lt!476444 () Unit!21314)

(declare-fun e!904513 () Unit!21314)

(assert (=> d!405525 (= lt!476444 e!904513)))

(declare-fun c!232823 () Bool)

(assert (=> d!405525 (= c!232823 (or ((_ is Nil!14526) (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))) ((_ is Nil!14526) (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))

(assert (=> d!405525 (not (isEmpty!8913 (rules!11090 (head!2729 objs!24))))))

(assert (=> d!405525 (= (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (head!2729 objs!24)) (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))) lt!476444)))

(declare-fun b!1416914 () Bool)

(declare-fun Unit!21346 () Unit!21314)

(assert (=> b!1416914 (= e!904513 Unit!21346)))

(declare-fun b!1416915 () Bool)

(declare-fun Unit!21347 () Unit!21314)

(assert (=> b!1416915 (= e!904513 Unit!21347)))

(declare-fun lt!476443 () BalanceConc!9662)

(assert (=> b!1416915 (= lt!476443 (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))

(declare-fun lt!476463 () BalanceConc!9662)

(assert (=> b!1416915 (= lt!476463 (print!972 Lexer!2202 (seqFromList!1672 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))

(declare-fun lt!476457 () tuple2!13992)

(assert (=> b!1416915 (= lt!476457 (lex!1010 Lexer!2202 (rules!11090 (head!2729 objs!24)) lt!476463))))

(declare-fun lt!476445 () List!14591)

(assert (=> b!1416915 (= lt!476445 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))

(declare-fun lt!476455 () List!14591)

(assert (=> b!1416915 (= lt!476455 (list!5709 lt!476463))))

(declare-fun lt!476449 () Unit!21314)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!736 (List!14591 List!14591) Unit!21314)

(assert (=> b!1416915 (= lt!476449 (lemmaConcatTwoListThenFirstIsPrefix!736 lt!476445 lt!476455))))

(declare-fun isPrefix!1169 (List!14591 List!14591) Bool)

(assert (=> b!1416915 (isPrefix!1169 lt!476445 (++!3790 lt!476445 lt!476455))))

(declare-fun lt!476460 () Unit!21314)

(assert (=> b!1416915 (= lt!476460 lt!476449)))

(declare-fun lt!476446 () Unit!21314)

(assert (=> b!1416915 (= lt!476446 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (head!2729 objs!24)) (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))

(declare-fun lt!476453 () Unit!21314)

(declare-fun seqFromListBHdTlConstructive!65 (Token!4720 List!14592 BalanceConc!9664) Unit!21314)

(assert (=> b!1416915 (= lt!476453 (seqFromListBHdTlConstructive!65 (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))) (t!124113 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))) (_1!7882 lt!476457)))))

(declare-fun prepend!381 (BalanceConc!9664 Token!4720) BalanceConc!9664)

(assert (=> b!1416915 (= (list!5710 (_1!7882 lt!476457)) (list!5710 (prepend!381 (seqFromList!1672 (t!124113 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))))

(declare-fun lt!476454 () Unit!21314)

(assert (=> b!1416915 (= lt!476454 lt!476453)))

(declare-datatypes ((tuple2!13996 0))(
  ( (tuple2!13997 (_1!7884 Token!4720) (_2!7884 List!14591)) )
))
(declare-datatypes ((Option!2789 0))(
  ( (None!2788) (Some!2788 (v!22072 tuple2!13996)) )
))
(declare-fun lt!476440 () Option!2789)

(declare-fun maxPrefix!1159 (LexerInterface!2204 List!14593 List!14591) Option!2789)

(assert (=> b!1416915 (= lt!476440 (maxPrefix!1159 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5709 lt!476443)))))

(declare-fun singletonSeq!1164 (Token!4720) BalanceConc!9664)

(assert (=> b!1416915 (= (print!972 Lexer!2202 (singletonSeq!1164 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) (printTailRec!640 Lexer!2202 (singletonSeq!1164 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))) 0 (BalanceConc!9663 Empty!4861)))))

(declare-fun lt!476451 () Unit!21314)

(declare-fun Unit!21348 () Unit!21314)

(assert (=> b!1416915 (= lt!476451 Unit!21348)))

(declare-fun lt!476447 () Unit!21314)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!209 (LexerInterface!2204 List!14593 List!14591 List!14591) Unit!21314)

(assert (=> b!1416915 (= lt!476447 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!209 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) (list!5709 lt!476463)))))

(assert (=> b!1416915 (= (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) (originalCharacters!3391 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))

(declare-fun lt!476438 () Unit!21314)

(declare-fun Unit!21349 () Unit!21314)

(assert (=> b!1416915 (= lt!476438 Unit!21349)))

(declare-fun singletonSeq!1165 ((_ BitVec 16)) BalanceConc!9662)

(declare-fun apply!3710 (BalanceConc!9662 Int) (_ BitVec 16))

(declare-fun head!2736 (List!14591) (_ BitVec 16))

(assert (=> b!1416915 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) 0))) (Cons!14525 (head!2736 (originalCharacters!3391 (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))) Nil!14525))))

(declare-fun lt!476441 () Unit!21314)

(declare-fun Unit!21350 () Unit!21314)

(assert (=> b!1416915 (= lt!476441 Unit!21350)))

(assert (=> b!1416915 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) 0))) (Cons!14525 (head!2736 (list!5709 lt!476463)) Nil!14525))))

(declare-fun lt!476456 () Unit!21314)

(declare-fun Unit!21351 () Unit!21314)

(assert (=> b!1416915 (= lt!476456 Unit!21351)))

(declare-fun head!2737 (BalanceConc!9662) (_ BitVec 16))

(assert (=> b!1416915 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) 0))) (Cons!14525 (head!2737 lt!476463) Nil!14525))))

(declare-fun lt!476462 () Unit!21314)

(declare-fun Unit!21352 () Unit!21314)

(assert (=> b!1416915 (= lt!476462 Unit!21352)))

(declare-fun isDefined!2262 (Option!2789) Bool)

(assert (=> b!1416915 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 (head!2729 objs!24)) (originalCharacters!3391 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))

(declare-fun lt!476459 () Unit!21314)

(declare-fun Unit!21353 () Unit!21314)

(assert (=> b!1416915 (= lt!476459 Unit!21353)))

(assert (=> b!1416915 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))))

(declare-fun lt!476450 () Unit!21314)

(declare-fun Unit!21354 () Unit!21314)

(assert (=> b!1416915 (= lt!476450 Unit!21354)))

(declare-fun lt!476442 () Unit!21314)

(declare-fun Unit!21355 () Unit!21314)

(assert (=> b!1416915 (= lt!476442 Unit!21355)))

(declare-fun get!4463 (Option!2789) tuple2!13996)

(assert (=> b!1416915 (= (_1!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))) (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))

(declare-fun lt!476461 () Unit!21314)

(declare-fun Unit!21356 () Unit!21314)

(assert (=> b!1416915 (= lt!476461 Unit!21356)))

(declare-fun isEmpty!8920 (List!14591) Bool)

(assert (=> b!1416915 (isEmpty!8920 (_2!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))))))

(declare-fun lt!476448 () Unit!21314)

(declare-fun Unit!21357 () Unit!21314)

(assert (=> b!1416915 (= lt!476448 Unit!21357)))

(declare-fun matchR!1795 (Regex!3843 List!14591) Bool)

(assert (=> b!1416915 (matchR!1795 (regex!2529 (rule!4292 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))

(declare-fun lt!476439 () Unit!21314)

(declare-fun Unit!21358 () Unit!21314)

(assert (=> b!1416915 (= lt!476439 Unit!21358)))

(assert (=> b!1416915 (= (rule!4292 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))) (rule!4292 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))))))

(declare-fun lt!476458 () Unit!21314)

(declare-fun Unit!21359 () Unit!21314)

(assert (=> b!1416915 (= lt!476458 Unit!21359)))

(declare-fun lt!476452 () Unit!21314)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!7 (LexerInterface!2204 List!14593 Token!4720 Rule!4858 List!14591) Unit!21314)

(assert (=> b!1416915 (= lt!476452 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!7 Lexer!2202 (rules!11090 (head!2729 objs!24)) (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))) (rule!4292 (h!19927 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908)))) (list!5709 lt!476463)))))

(declare-fun b!1416916 () Bool)

(declare-fun isEmpty!8921 (BalanceConc!9662) Bool)

(assert (=> b!1416916 (= e!904514 (isEmpty!8921 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (head!2729 objs!24)) (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95918 (ite c!232762 call!95902 call!95908))))))))))

(assert (= (and d!405525 c!232823) b!1416914))

(assert (= (and d!405525 (not c!232823)) b!1416915))

(assert (= (and d!405525 res!641585) b!1416916))

(declare-fun m!1602211 () Bool)

(assert (=> d!405525 m!1602211))

(declare-fun m!1602213 () Bool)

(assert (=> d!405525 m!1602213))

(declare-fun m!1602215 () Bool)

(assert (=> d!405525 m!1602215))

(assert (=> d!405525 m!1602211))

(declare-fun m!1602217 () Bool)

(assert (=> d!405525 m!1602217))

(assert (=> d!405525 m!1602217))

(declare-fun m!1602219 () Bool)

(assert (=> d!405525 m!1602219))

(declare-fun m!1602221 () Bool)

(assert (=> b!1416915 m!1602221))

(declare-fun m!1602223 () Bool)

(assert (=> b!1416915 m!1602223))

(declare-fun m!1602225 () Bool)

(assert (=> b!1416915 m!1602225))

(declare-fun m!1602227 () Bool)

(assert (=> b!1416915 m!1602227))

(declare-fun m!1602229 () Bool)

(assert (=> b!1416915 m!1602229))

(declare-fun m!1602231 () Bool)

(assert (=> b!1416915 m!1602231))

(declare-fun m!1602233 () Bool)

(assert (=> b!1416915 m!1602233))

(declare-fun m!1602235 () Bool)

(assert (=> b!1416915 m!1602235))

(declare-fun m!1602237 () Bool)

(assert (=> b!1416915 m!1602237))

(declare-fun m!1602239 () Bool)

(assert (=> b!1416915 m!1602239))

(declare-fun m!1602241 () Bool)

(assert (=> b!1416915 m!1602241))

(declare-fun m!1602243 () Bool)

(assert (=> b!1416915 m!1602243))

(declare-fun m!1602245 () Bool)

(assert (=> b!1416915 m!1602245))

(declare-fun m!1602247 () Bool)

(assert (=> b!1416915 m!1602247))

(assert (=> b!1416915 m!1602221))

(declare-fun m!1602249 () Bool)

(assert (=> b!1416915 m!1602249))

(declare-fun m!1602251 () Bool)

(assert (=> b!1416915 m!1602251))

(declare-fun m!1602253 () Bool)

(assert (=> b!1416915 m!1602253))

(declare-fun m!1602255 () Bool)

(assert (=> b!1416915 m!1602255))

(assert (=> b!1416915 m!1602247))

(declare-fun m!1602257 () Bool)

(assert (=> b!1416915 m!1602257))

(assert (=> b!1416915 m!1602249))

(assert (=> b!1416915 m!1602247))

(declare-fun m!1602259 () Bool)

(assert (=> b!1416915 m!1602259))

(declare-fun m!1602261 () Bool)

(assert (=> b!1416915 m!1602261))

(assert (=> b!1416915 m!1602235))

(declare-fun m!1602263 () Bool)

(assert (=> b!1416915 m!1602263))

(assert (=> b!1416915 m!1602233))

(declare-fun m!1602265 () Bool)

(assert (=> b!1416915 m!1602265))

(declare-fun m!1602267 () Bool)

(assert (=> b!1416915 m!1602267))

(declare-fun m!1602269 () Bool)

(assert (=> b!1416915 m!1602269))

(declare-fun m!1602271 () Bool)

(assert (=> b!1416915 m!1602271))

(assert (=> b!1416915 m!1602229))

(assert (=> b!1416915 m!1602225))

(assert (=> b!1416915 m!1602253))

(assert (=> b!1416915 m!1602231))

(declare-fun m!1602273 () Bool)

(assert (=> b!1416915 m!1602273))

(assert (=> b!1416915 m!1602245))

(assert (=> b!1416915 m!1602221))

(declare-fun m!1602275 () Bool)

(assert (=> b!1416915 m!1602275))

(declare-fun m!1602277 () Bool)

(assert (=> b!1416915 m!1602277))

(declare-fun m!1602279 () Bool)

(assert (=> b!1416915 m!1602279))

(assert (=> b!1416915 m!1602211))

(assert (=> b!1416915 m!1602279))

(assert (=> b!1416915 m!1602267))

(assert (=> b!1416915 m!1602245))

(declare-fun m!1602281 () Bool)

(assert (=> b!1416915 m!1602281))

(assert (=> b!1416915 m!1602269))

(declare-fun m!1602283 () Bool)

(assert (=> b!1416915 m!1602283))

(declare-fun m!1602285 () Bool)

(assert (=> b!1416915 m!1602285))

(assert (=> b!1416915 m!1602221))

(declare-fun m!1602287 () Bool)

(assert (=> b!1416915 m!1602287))

(assert (=> b!1416915 m!1602211))

(assert (=> b!1416915 m!1602217))

(assert (=> b!1416915 m!1602243))

(declare-fun m!1602289 () Bool)

(assert (=> b!1416915 m!1602289))

(assert (=> b!1416915 m!1602245))

(assert (=> b!1416915 m!1602235))

(declare-fun m!1602291 () Bool)

(assert (=> b!1416915 m!1602291))

(assert (=> b!1416916 m!1602211))

(assert (=> b!1416916 m!1602211))

(assert (=> b!1416916 m!1602217))

(assert (=> b!1416916 m!1602217))

(assert (=> b!1416916 m!1602219))

(declare-fun m!1602293 () Bool)

(assert (=> b!1416916 m!1602293))

(assert (=> bm!95891 d!405525))

(declare-fun d!405547 () Bool)

(assert (=> d!405547 (= (isEmpty!8913 (rules!11090 acc!229)) ((_ is Nil!14527) (rules!11090 acc!229)))))

(assert (=> d!405443 d!405547))

(assert (=> d!405455 d!405515))

(declare-fun d!405549 () Bool)

(declare-fun lt!476466 () Int)

(assert (=> d!405549 (>= lt!476466 0)))

(declare-fun e!904517 () Int)

(assert (=> d!405549 (= lt!476466 e!904517)))

(declare-fun c!232826 () Bool)

(assert (=> d!405549 (= c!232826 ((_ is Nil!14528) (list!5708 (tail!2092 objs!24))))))

(assert (=> d!405549 (= (size!11975 (list!5708 (tail!2092 objs!24))) lt!476466)))

(declare-fun b!1416921 () Bool)

(assert (=> b!1416921 (= e!904517 0)))

(declare-fun b!1416922 () Bool)

(assert (=> b!1416922 (= e!904517 (+ 1 (size!11975 (t!124115 (list!5708 (tail!2092 objs!24))))))))

(assert (= (and d!405549 c!232826) b!1416921))

(assert (= (and d!405549 (not c!232826)) b!1416922))

(declare-fun m!1602295 () Bool)

(assert (=> b!1416922 m!1602295))

(assert (=> d!405461 d!405549))

(declare-fun d!405551 () Bool)

(assert (=> d!405551 (= (list!5708 (tail!2092 objs!24)) (list!5715 (c!232737 (tail!2092 objs!24))))))

(declare-fun bs!339440 () Bool)

(assert (= bs!339440 d!405551))

(declare-fun m!1602297 () Bool)

(assert (=> bs!339440 m!1602297))

(assert (=> d!405461 d!405551))

(declare-fun d!405553 () Bool)

(declare-fun lt!476469 () Int)

(assert (=> d!405553 (= lt!476469 (size!11975 (list!5715 (c!232737 (tail!2092 objs!24)))))))

(assert (=> d!405553 (= lt!476469 (ite ((_ is Empty!4863) (c!232737 (tail!2092 objs!24))) 0 (ite ((_ is Leaf!7324) (c!232737 (tail!2092 objs!24))) (csize!9957 (c!232737 (tail!2092 objs!24))) (csize!9956 (c!232737 (tail!2092 objs!24))))))))

(assert (=> d!405553 (= (size!11976 (c!232737 (tail!2092 objs!24))) lt!476469)))

(declare-fun bs!339441 () Bool)

(assert (= bs!339441 d!405553))

(assert (=> bs!339441 m!1602297))

(assert (=> bs!339441 m!1602297))

(declare-fun m!1602299 () Bool)

(assert (=> bs!339441 m!1602299))

(assert (=> d!405461 d!405553))

(declare-fun d!405555 () Bool)

(assert (=> d!405555 (= (inv!19111 (xs!7590 (c!232737 objs!24))) (<= (size!11975 (innerList!4923 (xs!7590 (c!232737 objs!24)))) 2147483647))))

(declare-fun bs!339442 () Bool)

(assert (= bs!339442 d!405555))

(declare-fun m!1602301 () Bool)

(assert (=> bs!339442 m!1602301))

(assert (=> b!1416673 d!405555))

(declare-fun d!405557 () Bool)

(declare-fun size!11984 (List!14592) Int)

(assert (=> d!405557 (= (inv!19112 (xs!7589 (c!232736 (tokens!1806 acc!229)))) (<= (size!11984 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229))))) 2147483647))))

(declare-fun bs!339443 () Bool)

(assert (= bs!339443 d!405557))

(declare-fun m!1602303 () Bool)

(assert (=> bs!339443 m!1602303))

(assert (=> b!1416701 d!405557))

(declare-fun d!405559 () Bool)

(declare-fun lt!476470 () BalanceConc!9662)

(assert (=> d!405559 (= (list!5709 lt!476470) (printList!658 Lexer!2202 (list!5710 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405559 (= lt!476470 (printTailRec!640 Lexer!2202 (tokens!1806 (head!2729 objs!24)) 0 (BalanceConc!9663 Empty!4861)))))

(assert (=> d!405559 (= (print!972 Lexer!2202 (tokens!1806 (head!2729 objs!24))) lt!476470)))

(declare-fun bs!339444 () Bool)

(assert (= bs!339444 d!405559))

(declare-fun m!1602305 () Bool)

(assert (=> bs!339444 m!1602305))

(assert (=> bs!339444 m!1601611))

(assert (=> bs!339444 m!1601611))

(declare-fun m!1602307 () Bool)

(assert (=> bs!339444 m!1602307))

(assert (=> bs!339444 m!1601635))

(assert (=> bm!95907 d!405559))

(declare-fun d!405561 () Bool)

(declare-fun lt!476492 () BalanceConc!9662)

(declare-fun printListTailRec!262 (LexerInterface!2204 List!14592 List!14591) List!14591)

(declare-fun dropList!435 (BalanceConc!9664 Int) List!14592)

(assert (=> d!405561 (= (list!5709 lt!476492) (printListTailRec!262 Lexer!2202 (dropList!435 (tokens!1806 (head!2729 objs!24)) 0) (list!5709 (BalanceConc!9663 Empty!4861))))))

(declare-fun e!904522 () BalanceConc!9662)

(assert (=> d!405561 (= lt!476492 e!904522)))

(declare-fun c!232829 () Bool)

(declare-fun size!11985 (BalanceConc!9664) Int)

(assert (=> d!405561 (= c!232829 (>= 0 (size!11985 (tokens!1806 (head!2729 objs!24)))))))

(declare-fun e!904523 () Bool)

(assert (=> d!405561 e!904523))

(declare-fun res!641588 () Bool)

(assert (=> d!405561 (=> (not res!641588) (not e!904523))))

(assert (=> d!405561 (= res!641588 (>= 0 0))))

(assert (=> d!405561 (= (printTailRec!640 Lexer!2202 (tokens!1806 (head!2729 objs!24)) 0 (BalanceConc!9663 Empty!4861)) lt!476492)))

(declare-fun b!1416929 () Bool)

(assert (=> b!1416929 (= e!904523 (<= 0 (size!11985 (tokens!1806 (head!2729 objs!24)))))))

(declare-fun b!1416930 () Bool)

(assert (=> b!1416930 (= e!904522 (BalanceConc!9663 Empty!4861))))

(declare-fun b!1416931 () Bool)

(declare-fun ++!3799 (BalanceConc!9662 BalanceConc!9662) BalanceConc!9662)

(declare-fun apply!3712 (BalanceConc!9664 Int) Token!4720)

(assert (=> b!1416931 (= e!904522 (printTailRec!640 Lexer!2202 (tokens!1806 (head!2729 objs!24)) (+ 0 1) (++!3799 (BalanceConc!9663 Empty!4861) (charsOf!1475 (apply!3712 (tokens!1806 (head!2729 objs!24)) 0)))))))

(declare-fun lt!476488 () List!14592)

(assert (=> b!1416931 (= lt!476488 (list!5710 (tokens!1806 (head!2729 objs!24))))))

(declare-fun lt!476489 () Unit!21314)

(declare-fun lemmaDropApply!457 (List!14592 Int) Unit!21314)

(assert (=> b!1416931 (= lt!476489 (lemmaDropApply!457 lt!476488 0))))

(declare-fun head!2740 (List!14592) Token!4720)

(declare-fun drop!702 (List!14592 Int) List!14592)

(declare-fun apply!3713 (List!14592 Int) Token!4720)

(assert (=> b!1416931 (= (head!2740 (drop!702 lt!476488 0)) (apply!3713 lt!476488 0))))

(declare-fun lt!476493 () Unit!21314)

(assert (=> b!1416931 (= lt!476493 lt!476489)))

(declare-fun lt!476490 () List!14592)

(assert (=> b!1416931 (= lt!476490 (list!5710 (tokens!1806 (head!2729 objs!24))))))

(declare-fun lt!476494 () Unit!21314)

(declare-fun lemmaDropTail!437 (List!14592 Int) Unit!21314)

(assert (=> b!1416931 (= lt!476494 (lemmaDropTail!437 lt!476490 0))))

(declare-fun tail!2097 (List!14592) List!14592)

(assert (=> b!1416931 (= (tail!2097 (drop!702 lt!476490 0)) (drop!702 lt!476490 (+ 0 1)))))

(declare-fun lt!476491 () Unit!21314)

(assert (=> b!1416931 (= lt!476491 lt!476494)))

(assert (= (and d!405561 res!641588) b!1416929))

(assert (= (and d!405561 c!232829) b!1416930))

(assert (= (and d!405561 (not c!232829)) b!1416931))

(declare-fun m!1602311 () Bool)

(assert (=> d!405561 m!1602311))

(declare-fun m!1602313 () Bool)

(assert (=> d!405561 m!1602313))

(declare-fun m!1602315 () Bool)

(assert (=> d!405561 m!1602315))

(assert (=> d!405561 m!1602315))

(declare-fun m!1602317 () Bool)

(assert (=> d!405561 m!1602317))

(declare-fun m!1602319 () Bool)

(assert (=> d!405561 m!1602319))

(assert (=> d!405561 m!1602317))

(assert (=> b!1416929 m!1602311))

(declare-fun m!1602321 () Bool)

(assert (=> b!1416931 m!1602321))

(declare-fun m!1602325 () Bool)

(assert (=> b!1416931 m!1602325))

(declare-fun m!1602327 () Bool)

(assert (=> b!1416931 m!1602327))

(declare-fun m!1602331 () Bool)

(assert (=> b!1416931 m!1602331))

(declare-fun m!1602333 () Bool)

(assert (=> b!1416931 m!1602333))

(assert (=> b!1416931 m!1602333))

(declare-fun m!1602335 () Bool)

(assert (=> b!1416931 m!1602335))

(declare-fun m!1602337 () Bool)

(assert (=> b!1416931 m!1602337))

(assert (=> b!1416931 m!1602331))

(declare-fun m!1602339 () Bool)

(assert (=> b!1416931 m!1602339))

(assert (=> b!1416931 m!1601611))

(declare-fun m!1602341 () Bool)

(assert (=> b!1416931 m!1602341))

(declare-fun m!1602343 () Bool)

(assert (=> b!1416931 m!1602343))

(assert (=> b!1416931 m!1602327))

(declare-fun m!1602345 () Bool)

(assert (=> b!1416931 m!1602345))

(assert (=> b!1416931 m!1602337))

(assert (=> b!1416931 m!1602325))

(declare-fun m!1602347 () Bool)

(assert (=> b!1416931 m!1602347))

(assert (=> bm!95893 d!405561))

(declare-fun d!405567 () Bool)

(declare-fun e!904524 () Bool)

(assert (=> d!405567 e!904524))

(declare-fun res!641589 () Bool)

(assert (=> d!405567 (=> (not res!641589) (not e!904524))))

(declare-fun lt!476498 () List!14591)

(assert (=> d!405567 (= res!641589 (= (content!2144 lt!476498) ((_ map or) (content!2144 (list!5709 (print!971 acc!229))) (content!2144 (list!5709 (print!971 (head!2729 objs!24)))))))))

(declare-fun e!904525 () List!14591)

(assert (=> d!405567 (= lt!476498 e!904525)))

(declare-fun c!232830 () Bool)

(assert (=> d!405567 (= c!232830 ((_ is Nil!14525) (list!5709 (print!971 acc!229))))))

(assert (=> d!405567 (= (++!3790 (list!5709 (print!971 acc!229)) (list!5709 (print!971 (head!2729 objs!24)))) lt!476498)))

(declare-fun b!1416933 () Bool)

(assert (=> b!1416933 (= e!904525 (Cons!14525 (h!19926 (list!5709 (print!971 acc!229))) (++!3790 (t!124112 (list!5709 (print!971 acc!229))) (list!5709 (print!971 (head!2729 objs!24))))))))

(declare-fun b!1416932 () Bool)

(assert (=> b!1416932 (= e!904525 (list!5709 (print!971 (head!2729 objs!24))))))

(declare-fun b!1416934 () Bool)

(declare-fun res!641590 () Bool)

(assert (=> b!1416934 (=> (not res!641590) (not e!904524))))

(assert (=> b!1416934 (= res!641590 (= (size!11979 lt!476498) (+ (size!11979 (list!5709 (print!971 acc!229))) (size!11979 (list!5709 (print!971 (head!2729 objs!24)))))))))

(declare-fun b!1416935 () Bool)

(assert (=> b!1416935 (= e!904524 (or (not (= (list!5709 (print!971 (head!2729 objs!24))) Nil!14525)) (= lt!476498 (list!5709 (print!971 acc!229)))))))

(assert (= (and d!405567 c!232830) b!1416932))

(assert (= (and d!405567 (not c!232830)) b!1416933))

(assert (= (and d!405567 res!641589) b!1416934))

(assert (= (and b!1416934 res!641590) b!1416935))

(declare-fun m!1602349 () Bool)

(assert (=> d!405567 m!1602349))

(assert (=> d!405567 m!1601651))

(declare-fun m!1602351 () Bool)

(assert (=> d!405567 m!1602351))

(assert (=> d!405567 m!1601653))

(declare-fun m!1602353 () Bool)

(assert (=> d!405567 m!1602353))

(assert (=> b!1416933 m!1601653))

(declare-fun m!1602355 () Bool)

(assert (=> b!1416933 m!1602355))

(declare-fun m!1602357 () Bool)

(assert (=> b!1416934 m!1602357))

(assert (=> b!1416934 m!1601651))

(declare-fun m!1602359 () Bool)

(assert (=> b!1416934 m!1602359))

(assert (=> b!1416934 m!1601653))

(declare-fun m!1602361 () Bool)

(assert (=> b!1416934 m!1602361))

(assert (=> b!1416555 d!405567))

(declare-fun d!405569 () Bool)

(assert (=> d!405569 (= (list!5709 (print!971 (head!2729 objs!24))) (list!5714 (c!232735 (print!971 (head!2729 objs!24)))))))

(declare-fun bs!339447 () Bool)

(assert (= bs!339447 d!405569))

(declare-fun m!1602363 () Bool)

(assert (=> bs!339447 m!1602363))

(assert (=> b!1416555 d!405569))

(declare-fun d!405571 () Bool)

(assert (=> d!405571 (= (list!5709 (print!971 (get!4461 lt!476106))) (list!5714 (c!232735 (print!971 (get!4461 lt!476106)))))))

(declare-fun bs!339448 () Bool)

(assert (= bs!339448 d!405571))

(declare-fun m!1602365 () Bool)

(assert (=> bs!339448 m!1602365))

(assert (=> b!1416555 d!405571))

(declare-fun d!405573 () Bool)

(declare-fun e!904534 () Bool)

(assert (=> d!405573 e!904534))

(declare-fun res!641599 () Bool)

(assert (=> d!405573 (=> (not res!641599) (not e!904534))))

(declare-fun lt!476510 () BalanceConc!9662)

(assert (=> d!405573 (= res!641599 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) lt!476510))) (list!5710 (tokens!1806 acc!229))))))

(assert (=> d!405573 (= lt!476510 (print!972 Lexer!2202 (tokens!1806 acc!229)))))

(declare-fun lt!476511 () Unit!21314)

(assert (=> d!405573 (= lt!476511 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (list!5710 (tokens!1806 acc!229))))))

(assert (=> d!405573 (= (print!971 acc!229) lt!476510)))

(declare-fun b!1416950 () Bool)

(assert (=> b!1416950 (= e!904534 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) lt!476510)))))))

(assert (= (and d!405573 res!641599) b!1416950))

(assert (=> d!405573 m!1601609))

(assert (=> d!405573 m!1601609))

(declare-fun m!1602391 () Bool)

(assert (=> d!405573 m!1602391))

(declare-fun m!1602393 () Bool)

(assert (=> d!405573 m!1602393))

(assert (=> d!405573 m!1601617))

(declare-fun m!1602395 () Bool)

(assert (=> d!405573 m!1602395))

(assert (=> b!1416950 m!1602393))

(declare-fun m!1602397 () Bool)

(assert (=> b!1416950 m!1602397))

(assert (=> b!1416950 m!1602397))

(declare-fun m!1602399 () Bool)

(assert (=> b!1416950 m!1602399))

(assert (=> b!1416555 d!405573))

(declare-fun d!405587 () Bool)

(assert (=> d!405587 (= (list!5709 (print!971 acc!229)) (list!5714 (c!232735 (print!971 acc!229))))))

(declare-fun bs!339453 () Bool)

(assert (= bs!339453 d!405587))

(declare-fun m!1602401 () Bool)

(assert (=> bs!339453 m!1602401))

(assert (=> b!1416555 d!405587))

(assert (=> b!1416555 d!405509))

(declare-fun d!405589 () Bool)

(declare-fun e!904535 () Bool)

(assert (=> d!405589 e!904535))

(declare-fun res!641600 () Bool)

(assert (=> d!405589 (=> (not res!641600) (not e!904535))))

(declare-fun lt!476512 () BalanceConc!9662)

(assert (=> d!405589 (= res!641600 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (head!2729 objs!24)) lt!476512))) (list!5710 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405589 (= lt!476512 (print!972 Lexer!2202 (tokens!1806 (head!2729 objs!24))))))

(declare-fun lt!476513 () Unit!21314)

(assert (=> d!405589 (= lt!476513 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (head!2729 objs!24)) (list!5710 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405589 (= (print!971 (head!2729 objs!24)) lt!476512)))

(declare-fun b!1416951 () Bool)

(assert (=> b!1416951 (= e!904535 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (head!2729 objs!24)) lt!476512)))))))

(assert (= (and d!405589 res!641600) b!1416951))

(assert (=> d!405589 m!1601611))

(assert (=> d!405589 m!1601611))

(declare-fun m!1602403 () Bool)

(assert (=> d!405589 m!1602403))

(declare-fun m!1602405 () Bool)

(assert (=> d!405589 m!1602405))

(assert (=> d!405589 m!1601637))

(declare-fun m!1602407 () Bool)

(assert (=> d!405589 m!1602407))

(assert (=> b!1416951 m!1602405))

(declare-fun m!1602409 () Bool)

(assert (=> b!1416951 m!1602409))

(assert (=> b!1416951 m!1602409))

(declare-fun m!1602411 () Bool)

(assert (=> b!1416951 m!1602411))

(assert (=> b!1416555 d!405589))

(declare-fun d!405591 () Bool)

(declare-fun e!904536 () Bool)

(assert (=> d!405591 e!904536))

(declare-fun res!641601 () Bool)

(assert (=> d!405591 (=> (not res!641601) (not e!904536))))

(declare-fun lt!476514 () BalanceConc!9662)

(assert (=> d!405591 (= res!641601 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (get!4461 lt!476106)) lt!476514))) (list!5710 (tokens!1806 (get!4461 lt!476106)))))))

(assert (=> d!405591 (= lt!476514 (print!972 Lexer!2202 (tokens!1806 (get!4461 lt!476106))))))

(declare-fun lt!476515 () Unit!21314)

(assert (=> d!405591 (= lt!476515 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (get!4461 lt!476106)) (list!5710 (tokens!1806 (get!4461 lt!476106)))))))

(assert (=> d!405591 (= (print!971 (get!4461 lt!476106)) lt!476514)))

(declare-fun b!1416952 () Bool)

(assert (=> b!1416952 (= e!904536 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (get!4461 lt!476106)) lt!476514)))))))

(assert (= (and d!405591 res!641601) b!1416952))

(assert (=> d!405591 m!1601615))

(assert (=> d!405591 m!1601615))

(declare-fun m!1602413 () Bool)

(assert (=> d!405591 m!1602413))

(declare-fun m!1602415 () Bool)

(assert (=> d!405591 m!1602415))

(declare-fun m!1602417 () Bool)

(assert (=> d!405591 m!1602417))

(declare-fun m!1602419 () Bool)

(assert (=> d!405591 m!1602419))

(assert (=> b!1416952 m!1602415))

(declare-fun m!1602421 () Bool)

(assert (=> b!1416952 m!1602421))

(assert (=> b!1416952 m!1602421))

(declare-fun m!1602423 () Bool)

(assert (=> b!1416952 m!1602423))

(assert (=> b!1416555 d!405591))

(declare-fun e!904543 () Bool)

(declare-fun b!1416966 () Bool)

(declare-fun lt!476522 () List!14592)

(assert (=> b!1416966 (= e!904543 (or (not (= (ite c!232762 lt!476048 lt!476046) Nil!14526)) (= lt!476522 (ite c!232762 lt!476065 lt!476091))))))

(declare-fun e!904544 () List!14592)

(declare-fun b!1416963 () Bool)

(assert (=> b!1416963 (= e!904544 (ite c!232762 lt!476048 lt!476046))))

(declare-fun b!1416964 () Bool)

(assert (=> b!1416964 (= e!904544 (Cons!14526 (h!19927 (ite c!232762 lt!476065 lt!476091)) (++!3792 (t!124113 (ite c!232762 lt!476065 lt!476091)) (ite c!232762 lt!476048 lt!476046))))))

(declare-fun b!1416965 () Bool)

(declare-fun res!641608 () Bool)

(assert (=> b!1416965 (=> (not res!641608) (not e!904543))))

(assert (=> b!1416965 (= res!641608 (= (size!11984 lt!476522) (+ (size!11984 (ite c!232762 lt!476065 lt!476091)) (size!11984 (ite c!232762 lt!476048 lt!476046)))))))

(declare-fun d!405593 () Bool)

(assert (=> d!405593 e!904543))

(declare-fun res!641609 () Bool)

(assert (=> d!405593 (=> (not res!641609) (not e!904543))))

(declare-fun content!2146 (List!14592) (InoxSet Token!4720))

(assert (=> d!405593 (= res!641609 (= (content!2146 lt!476522) ((_ map or) (content!2146 (ite c!232762 lt!476065 lt!476091)) (content!2146 (ite c!232762 lt!476048 lt!476046)))))))

(assert (=> d!405593 (= lt!476522 e!904544)))

(declare-fun c!232836 () Bool)

(assert (=> d!405593 (= c!232836 ((_ is Nil!14526) (ite c!232762 lt!476065 lt!476091)))))

(assert (=> d!405593 (= (++!3792 (ite c!232762 lt!476065 lt!476091) (ite c!232762 lt!476048 lt!476046)) lt!476522)))

(assert (= (and d!405593 c!232836) b!1416963))

(assert (= (and d!405593 (not c!232836)) b!1416964))

(assert (= (and d!405593 res!641609) b!1416965))

(assert (= (and b!1416965 res!641608) b!1416966))

(declare-fun m!1602425 () Bool)

(assert (=> b!1416964 m!1602425))

(declare-fun m!1602427 () Bool)

(assert (=> b!1416965 m!1602427))

(declare-fun m!1602429 () Bool)

(assert (=> b!1416965 m!1602429))

(declare-fun m!1602431 () Bool)

(assert (=> b!1416965 m!1602431))

(declare-fun m!1602433 () Bool)

(assert (=> d!405593 m!1602433))

(declare-fun m!1602435 () Bool)

(assert (=> d!405593 m!1602435))

(declare-fun m!1602437 () Bool)

(assert (=> d!405593 m!1602437))

(assert (=> bm!95909 d!405593))

(declare-fun c!232839 () Bool)

(declare-fun d!405595 () Bool)

(assert (=> d!405595 (= c!232839 ((_ is Cons!14526) (ite c!232760 call!95918 e!904306)))))

(declare-fun e!904550 () List!14591)

(assert (=> d!405595 (= (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476077) (ite c!232760 call!95918 e!904306)) e!904550)))

(declare-fun b!1416974 () Bool)

(assert (=> b!1416974 (= e!904550 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95918 e!904306)))) (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476077) (t!124113 (ite c!232760 call!95918 e!904306)))))))

(declare-fun b!1416975 () Bool)

(assert (=> b!1416975 (= e!904550 Nil!14525)))

(assert (= (and d!405595 c!232839) b!1416974))

(assert (= (and d!405595 (not c!232839)) b!1416975))

(declare-fun m!1602475 () Bool)

(assert (=> b!1416974 m!1602475))

(assert (=> b!1416974 m!1602475))

(declare-fun m!1602477 () Bool)

(assert (=> b!1416974 m!1602477))

(declare-fun m!1602479 () Bool)

(assert (=> b!1416974 m!1602479))

(assert (=> b!1416974 m!1602477))

(assert (=> b!1416974 m!1602479))

(declare-fun m!1602481 () Bool)

(assert (=> b!1416974 m!1602481))

(assert (=> bm!95901 d!405595))

(declare-fun d!405609 () Bool)

(declare-fun e!904551 () Bool)

(assert (=> d!405609 e!904551))

(declare-fun res!641613 () Bool)

(assert (=> d!405609 (=> (not res!641613) (not e!904551))))

(declare-fun lt!476529 () BalanceConc!9662)

(assert (=> d!405609 (= res!641613 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))) lt!476529))) (list!5710 (tokens!1806 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))))))))

(assert (=> d!405609 (= lt!476529 (print!972 Lexer!2202 (tokens!1806 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24)))))))

(declare-fun lt!476530 () Unit!21314)

(assert (=> d!405609 (= lt!476530 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))) (list!5710 (tokens!1806 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))))))))

(assert (=> d!405609 (= (print!971 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))) lt!476529)))

(declare-fun b!1416976 () Bool)

(assert (=> b!1416976 (= e!904551 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) acc!229 (head!2729 objs!24))) lt!476529)))))))

(assert (= (and d!405609 res!641613) b!1416976))

(declare-fun m!1602483 () Bool)

(assert (=> d!405609 m!1602483))

(assert (=> d!405609 m!1602483))

(declare-fun m!1602485 () Bool)

(assert (=> d!405609 m!1602485))

(declare-fun m!1602487 () Bool)

(assert (=> d!405609 m!1602487))

(declare-fun m!1602489 () Bool)

(assert (=> d!405609 m!1602489))

(declare-fun m!1602491 () Bool)

(assert (=> d!405609 m!1602491))

(assert (=> b!1416976 m!1602487))

(declare-fun m!1602493 () Bool)

(assert (=> b!1416976 m!1602493))

(assert (=> b!1416976 m!1602493))

(declare-fun m!1602495 () Bool)

(assert (=> b!1416976 m!1602495))

(assert (=> bm!95887 d!405609))

(declare-fun d!405613 () Bool)

(declare-fun e!904552 () Bool)

(assert (=> d!405613 e!904552))

(declare-fun res!641614 () Bool)

(assert (=> d!405613 (=> (not res!641614) (not e!904552))))

(declare-fun lt!476531 () BalanceConc!9662)

(assert (=> d!405613 (= res!641614 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)) lt!476531))) (list!5710 (tokens!1806 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)))))))

(assert (=> d!405613 (= lt!476531 (print!972 Lexer!2202 (tokens!1806 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229))))))

(declare-fun lt!476532 () Unit!21314)

(assert (=> d!405613 (= lt!476532 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)) (list!5710 (tokens!1806 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)))))))

(assert (=> d!405613 (= (print!971 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)) lt!476531)))

(declare-fun b!1416977 () Bool)

(assert (=> b!1416977 (= e!904552 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (ite (or c!232760 c!232762) (head!2729 objs!24) acc!229)) lt!476531)))))))

(assert (= (and d!405613 res!641614) b!1416977))

(declare-fun m!1602497 () Bool)

(assert (=> d!405613 m!1602497))

(assert (=> d!405613 m!1602497))

(declare-fun m!1602499 () Bool)

(assert (=> d!405613 m!1602499))

(declare-fun m!1602501 () Bool)

(assert (=> d!405613 m!1602501))

(declare-fun m!1602503 () Bool)

(assert (=> d!405613 m!1602503))

(declare-fun m!1602505 () Bool)

(assert (=> d!405613 m!1602505))

(assert (=> b!1416977 m!1602501))

(declare-fun m!1602507 () Bool)

(assert (=> b!1416977 m!1602507))

(assert (=> b!1416977 m!1602507))

(declare-fun m!1602509 () Bool)

(assert (=> b!1416977 m!1602509))

(assert (=> bm!95902 d!405613))

(declare-fun d!405615 () Bool)

(assert (=> d!405615 (= (isEmpty!8913 (rules!11090 sep!3)) ((_ is Nil!14527) (rules!11090 sep!3)))))

(assert (=> d!405453 d!405615))

(declare-fun d!405617 () Bool)

(declare-fun c!232840 () Bool)

(assert (=> d!405617 (= c!232840 ((_ is Cons!14526) (ite c!232760 call!95903 (ite c!232762 lt!476048 lt!476043))))))

(declare-fun e!904553 () List!14591)

(assert (=> d!405617 (= (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476077)) (ite c!232760 call!95903 (ite c!232762 lt!476048 lt!476043))) e!904553)))

(declare-fun b!1416978 () Bool)

(assert (=> b!1416978 (= e!904553 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95903 (ite c!232762 lt!476048 lt!476043))))) (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476077)) (t!124113 (ite c!232760 call!95903 (ite c!232762 lt!476048 lt!476043))))))))

(declare-fun b!1416979 () Bool)

(assert (=> b!1416979 (= e!904553 Nil!14525)))

(assert (= (and d!405617 c!232840) b!1416978))

(assert (= (and d!405617 (not c!232840)) b!1416979))

(declare-fun m!1602511 () Bool)

(assert (=> b!1416978 m!1602511))

(assert (=> b!1416978 m!1602511))

(declare-fun m!1602513 () Bool)

(assert (=> b!1416978 m!1602513))

(declare-fun m!1602515 () Bool)

(assert (=> b!1416978 m!1602515))

(assert (=> b!1416978 m!1602513))

(assert (=> b!1416978 m!1602515))

(declare-fun m!1602517 () Bool)

(assert (=> b!1416978 m!1602517))

(assert (=> bm!95888 d!405617))

(declare-fun lt!476533 () List!14592)

(declare-fun e!904554 () Bool)

(declare-fun b!1416983 () Bool)

(assert (=> b!1416983 (= e!904554 (or (not (= (ite c!232760 lt!476071 lt!476049) Nil!14526)) (= lt!476533 (ite c!232760 lt!476066 lt!476043))))))

(declare-fun b!1416980 () Bool)

(declare-fun e!904555 () List!14592)

(assert (=> b!1416980 (= e!904555 (ite c!232760 lt!476071 lt!476049))))

(declare-fun b!1416981 () Bool)

(assert (=> b!1416981 (= e!904555 (Cons!14526 (h!19927 (ite c!232760 lt!476066 lt!476043)) (++!3792 (t!124113 (ite c!232760 lt!476066 lt!476043)) (ite c!232760 lt!476071 lt!476049))))))

(declare-fun b!1416982 () Bool)

(declare-fun res!641615 () Bool)

(assert (=> b!1416982 (=> (not res!641615) (not e!904554))))

(assert (=> b!1416982 (= res!641615 (= (size!11984 lt!476533) (+ (size!11984 (ite c!232760 lt!476066 lt!476043)) (size!11984 (ite c!232760 lt!476071 lt!476049)))))))

(declare-fun d!405619 () Bool)

(assert (=> d!405619 e!904554))

(declare-fun res!641616 () Bool)

(assert (=> d!405619 (=> (not res!641616) (not e!904554))))

(assert (=> d!405619 (= res!641616 (= (content!2146 lt!476533) ((_ map or) (content!2146 (ite c!232760 lt!476066 lt!476043)) (content!2146 (ite c!232760 lt!476071 lt!476049)))))))

(assert (=> d!405619 (= lt!476533 e!904555)))

(declare-fun c!232841 () Bool)

(assert (=> d!405619 (= c!232841 ((_ is Nil!14526) (ite c!232760 lt!476066 lt!476043)))))

(assert (=> d!405619 (= (++!3792 (ite c!232760 lt!476066 lt!476043) (ite c!232760 lt!476071 lt!476049)) lt!476533)))

(assert (= (and d!405619 c!232841) b!1416980))

(assert (= (and d!405619 (not c!232841)) b!1416981))

(assert (= (and d!405619 res!641616) b!1416982))

(assert (= (and b!1416982 res!641615) b!1416983))

(declare-fun m!1602519 () Bool)

(assert (=> b!1416981 m!1602519))

(declare-fun m!1602521 () Bool)

(assert (=> b!1416982 m!1602521))

(declare-fun m!1602523 () Bool)

(assert (=> b!1416982 m!1602523))

(declare-fun m!1602525 () Bool)

(assert (=> b!1416982 m!1602525))

(declare-fun m!1602527 () Bool)

(assert (=> d!405619 m!1602527))

(declare-fun m!1602529 () Bool)

(assert (=> d!405619 m!1602529))

(declare-fun m!1602531 () Bool)

(assert (=> d!405619 m!1602531))

(assert (=> bm!95904 d!405619))

(declare-fun d!405621 () Bool)

(declare-fun res!641626 () Bool)

(declare-fun e!904571 () Bool)

(assert (=> d!405621 (=> res!641626 e!904571)))

(assert (=> d!405621 (= res!641626 (or (not ((_ is Cons!14526) (++!3792 lt!476105 lt!476045))) (not ((_ is Cons!14526) (t!124113 (++!3792 lt!476105 lt!476045))))))))

(assert (=> d!405621 (= (tokensListTwoByTwoPredicateSeparableList!204 lt!476102 (++!3792 lt!476105 lt!476045) (rules!11090 acc!229)) e!904571)))

(declare-fun b!1417005 () Bool)

(declare-fun e!904572 () Bool)

(assert (=> b!1417005 (= e!904571 e!904572)))

(declare-fun res!641627 () Bool)

(assert (=> b!1417005 (=> (not res!641627) (not e!904572))))

(assert (=> b!1417005 (= res!641627 (separableTokensPredicate!481 lt!476102 (h!19927 (++!3792 lt!476105 lt!476045)) (h!19927 (t!124113 (++!3792 lt!476105 lt!476045))) (rules!11090 acc!229)))))

(declare-fun lt!476559 () Unit!21314)

(declare-fun Unit!21360 () Unit!21314)

(assert (=> b!1417005 (= lt!476559 Unit!21360)))

(declare-fun size!11986 (BalanceConc!9662) Int)

(assert (=> b!1417005 (> (size!11986 (charsOf!1475 (h!19927 (t!124113 (++!3792 lt!476105 lt!476045))))) 0)))

(declare-fun lt!476556 () Unit!21314)

(declare-fun Unit!21361 () Unit!21314)

(assert (=> b!1417005 (= lt!476556 Unit!21361)))

(assert (=> b!1417005 (rulesProduceIndividualToken!1167 lt!476102 (rules!11090 acc!229) (h!19927 (t!124113 (++!3792 lt!476105 lt!476045))))))

(declare-fun lt!476557 () Unit!21314)

(declare-fun Unit!21362 () Unit!21314)

(assert (=> b!1417005 (= lt!476557 Unit!21362)))

(assert (=> b!1417005 (rulesProduceIndividualToken!1167 lt!476102 (rules!11090 acc!229) (h!19927 (++!3792 lt!476105 lt!476045)))))

(declare-fun lt!476561 () Unit!21314)

(declare-fun lt!476558 () Unit!21314)

(assert (=> b!1417005 (= lt!476561 lt!476558)))

(assert (=> b!1417005 (rulesProduceIndividualToken!1167 lt!476102 (rules!11090 acc!229) (h!19927 (t!124113 (++!3792 lt!476105 lt!476045))))))

(assert (=> b!1417005 (= lt!476558 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045) (h!19927 (t!124113 (++!3792 lt!476105 lt!476045)))))))

(declare-fun lt!476555 () Unit!21314)

(declare-fun lt!476560 () Unit!21314)

(assert (=> b!1417005 (= lt!476555 lt!476560)))

(assert (=> b!1417005 (rulesProduceIndividualToken!1167 lt!476102 (rules!11090 acc!229) (h!19927 (++!3792 lt!476105 lt!476045)))))

(assert (=> b!1417005 (= lt!476560 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045) (h!19927 (++!3792 lt!476105 lt!476045))))))

(declare-fun b!1417006 () Bool)

(assert (=> b!1417006 (= e!904572 (tokensListTwoByTwoPredicateSeparableList!204 lt!476102 (Cons!14526 (h!19927 (t!124113 (++!3792 lt!476105 lt!476045))) (t!124113 (t!124113 (++!3792 lt!476105 lt!476045)))) (rules!11090 acc!229)))))

(assert (= (and d!405621 (not res!641626)) b!1417005))

(assert (= (and b!1417005 res!641627) b!1417006))

(declare-fun m!1602569 () Bool)

(assert (=> b!1417005 m!1602569))

(declare-fun m!1602571 () Bool)

(assert (=> b!1417005 m!1602571))

(assert (=> b!1417005 m!1601585))

(declare-fun m!1602573 () Bool)

(assert (=> b!1417005 m!1602573))

(assert (=> b!1417005 m!1601585))

(declare-fun m!1602575 () Bool)

(assert (=> b!1417005 m!1602575))

(declare-fun m!1602577 () Bool)

(assert (=> b!1417005 m!1602577))

(declare-fun m!1602579 () Bool)

(assert (=> b!1417005 m!1602579))

(assert (=> b!1417005 m!1602569))

(declare-fun m!1602581 () Bool)

(assert (=> b!1417005 m!1602581))

(declare-fun m!1602583 () Bool)

(assert (=> b!1417006 m!1602583))

(assert (=> b!1416560 d!405621))

(declare-fun d!405633 () Bool)

(declare-fun e!904581 () Bool)

(assert (=> d!405633 e!904581))

(declare-fun res!641629 () Bool)

(assert (=> d!405633 (=> (not res!641629) (not e!904581))))

(assert (=> d!405633 (= res!641629 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) (print!972 Lexer!2202 (seqFromList!1672 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))) (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(declare-fun lt!476569 () Unit!21314)

(declare-fun e!904580 () Unit!21314)

(assert (=> d!405633 (= lt!476569 e!904580)))

(declare-fun c!232848 () Bool)

(assert (=> d!405633 (= c!232848 (or ((_ is Nil!14526) (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) ((_ is Nil!14526) (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(assert (=> d!405633 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405633 (= (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) lt!476569)))

(declare-fun b!1417016 () Bool)

(declare-fun Unit!21363 () Unit!21314)

(assert (=> b!1417016 (= e!904580 Unit!21363)))

(declare-fun b!1417017 () Bool)

(declare-fun Unit!21364 () Unit!21314)

(assert (=> b!1417017 (= e!904580 Unit!21364)))

(declare-fun lt!476568 () BalanceConc!9662)

(assert (=> b!1417017 (= lt!476568 (print!972 Lexer!2202 (seqFromList!1672 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun lt!476588 () BalanceConc!9662)

(assert (=> b!1417017 (= lt!476588 (print!972 Lexer!2202 (seqFromList!1672 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(declare-fun lt!476582 () tuple2!13992)

(assert (=> b!1417017 (= lt!476582 (lex!1010 Lexer!2202 (rules!11090 acc!229) lt!476588))))

(declare-fun lt!476570 () List!14591)

(assert (=> b!1417017 (= lt!476570 (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(declare-fun lt!476580 () List!14591)

(assert (=> b!1417017 (= lt!476580 (list!5709 lt!476588))))

(declare-fun lt!476574 () Unit!21314)

(assert (=> b!1417017 (= lt!476574 (lemmaConcatTwoListThenFirstIsPrefix!736 lt!476570 lt!476580))))

(assert (=> b!1417017 (isPrefix!1169 lt!476570 (++!3790 lt!476570 lt!476580))))

(declare-fun lt!476585 () Unit!21314)

(assert (=> b!1417017 (= lt!476585 lt!476574)))

(declare-fun lt!476571 () Unit!21314)

(assert (=> b!1417017 (= lt!476571 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun lt!476578 () Unit!21314)

(assert (=> b!1417017 (= lt!476578 (seqFromListBHdTlConstructive!65 (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))) (t!124113 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))) (_1!7882 lt!476582)))))

(assert (=> b!1417017 (= (list!5710 (_1!7882 lt!476582)) (list!5710 (prepend!381 (seqFromList!1672 (t!124113 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))))

(declare-fun lt!476579 () Unit!21314)

(assert (=> b!1417017 (= lt!476579 lt!476578)))

(declare-fun lt!476565 () Option!2789)

(assert (=> b!1417017 (= lt!476565 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 lt!476568)))))

(assert (=> b!1417017 (= (print!972 Lexer!2202 (singletonSeq!1164 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) (printTailRec!640 Lexer!2202 (singletonSeq!1164 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))) 0 (BalanceConc!9663 Empty!4861)))))

(declare-fun lt!476576 () Unit!21314)

(declare-fun Unit!21365 () Unit!21314)

(assert (=> b!1417017 (= lt!476576 Unit!21365)))

(declare-fun lt!476572 () Unit!21314)

(assert (=> b!1417017 (= lt!476572 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!209 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) (list!5709 lt!476588)))))

(assert (=> b!1417017 (= (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) (originalCharacters!3391 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun lt!476563 () Unit!21314)

(declare-fun Unit!21366 () Unit!21314)

(assert (=> b!1417017 (= lt!476563 Unit!21366)))

(assert (=> b!1417017 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) 0))) (Cons!14525 (head!2736 (originalCharacters!3391 (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))) Nil!14525))))

(declare-fun lt!476566 () Unit!21314)

(declare-fun Unit!21367 () Unit!21314)

(assert (=> b!1417017 (= lt!476566 Unit!21367)))

(assert (=> b!1417017 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) 0))) (Cons!14525 (head!2736 (list!5709 lt!476588)) Nil!14525))))

(declare-fun lt!476581 () Unit!21314)

(declare-fun Unit!21368 () Unit!21314)

(assert (=> b!1417017 (= lt!476581 Unit!21368)))

(assert (=> b!1417017 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) 0))) (Cons!14525 (head!2737 lt!476588) Nil!14525))))

(declare-fun lt!476587 () Unit!21314)

(declare-fun Unit!21369 () Unit!21314)

(assert (=> b!1417017 (= lt!476587 Unit!21369)))

(assert (=> b!1417017 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (originalCharacters!3391 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(declare-fun lt!476584 () Unit!21314)

(declare-fun Unit!21370 () Unit!21314)

(assert (=> b!1417017 (= lt!476584 Unit!21370)))

(assert (=> b!1417017 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))))

(declare-fun lt!476575 () Unit!21314)

(declare-fun Unit!21371 () Unit!21314)

(assert (=> b!1417017 (= lt!476575 Unit!21371)))

(declare-fun lt!476567 () Unit!21314)

(declare-fun Unit!21372 () Unit!21314)

(assert (=> b!1417017 (= lt!476567 Unit!21372)))

(assert (=> b!1417017 (= (_1!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))) (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(declare-fun lt!476586 () Unit!21314)

(declare-fun Unit!21373 () Unit!21314)

(assert (=> b!1417017 (= lt!476586 Unit!21373)))

(assert (=> b!1417017 (isEmpty!8920 (_2!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))))))

(declare-fun lt!476573 () Unit!21314)

(declare-fun Unit!21374 () Unit!21314)

(assert (=> b!1417017 (= lt!476573 Unit!21374)))

(assert (=> b!1417017 (matchR!1795 (regex!2529 (rule!4292 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))) (list!5709 (charsOf!1475 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(declare-fun lt!476564 () Unit!21314)

(declare-fun Unit!21375 () Unit!21314)

(assert (=> b!1417017 (= lt!476564 Unit!21375)))

(assert (=> b!1417017 (= (rule!4292 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))) (rule!4292 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun lt!476583 () Unit!21314)

(declare-fun Unit!21376 () Unit!21314)

(assert (=> b!1417017 (= lt!476583 Unit!21376)))

(declare-fun lt!476577 () Unit!21314)

(assert (=> b!1417017 (= lt!476577 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!7 Lexer!2202 (rules!11090 acc!229) (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) (rule!4292 (h!19927 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))) (list!5709 lt!476588)))))

(declare-fun b!1417018 () Bool)

(assert (=> b!1417018 (= e!904581 (isEmpty!8921 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) (print!972 Lexer!2202 (seqFromList!1672 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))))

(assert (= (and d!405633 c!232848) b!1417016))

(assert (= (and d!405633 (not c!232848)) b!1417017))

(assert (= (and d!405633 res!641629) b!1417018))

(assert (=> d!405633 m!1601579))

(declare-fun m!1602593 () Bool)

(assert (=> d!405633 m!1602593))

(assert (=> d!405633 m!1601823))

(declare-fun m!1602595 () Bool)

(assert (=> d!405633 m!1602595))

(assert (=> d!405633 m!1602593))

(declare-fun m!1602597 () Bool)

(assert (=> d!405633 m!1602597))

(assert (=> d!405633 m!1602597))

(declare-fun m!1602599 () Bool)

(assert (=> d!405633 m!1602599))

(declare-fun m!1602601 () Bool)

(assert (=> b!1417017 m!1602601))

(declare-fun m!1602603 () Bool)

(assert (=> b!1417017 m!1602603))

(declare-fun m!1602605 () Bool)

(assert (=> b!1417017 m!1602605))

(declare-fun m!1602607 () Bool)

(assert (=> b!1417017 m!1602607))

(declare-fun m!1602609 () Bool)

(assert (=> b!1417017 m!1602609))

(declare-fun m!1602611 () Bool)

(assert (=> b!1417017 m!1602611))

(declare-fun m!1602613 () Bool)

(assert (=> b!1417017 m!1602613))

(declare-fun m!1602615 () Bool)

(assert (=> b!1417017 m!1602615))

(declare-fun m!1602617 () Bool)

(assert (=> b!1417017 m!1602617))

(declare-fun m!1602619 () Bool)

(assert (=> b!1417017 m!1602619))

(declare-fun m!1602621 () Bool)

(assert (=> b!1417017 m!1602621))

(declare-fun m!1602623 () Bool)

(assert (=> b!1417017 m!1602623))

(declare-fun m!1602625 () Bool)

(assert (=> b!1417017 m!1602625))

(declare-fun m!1602627 () Bool)

(assert (=> b!1417017 m!1602627))

(assert (=> b!1417017 m!1602601))

(declare-fun m!1602629 () Bool)

(assert (=> b!1417017 m!1602629))

(declare-fun m!1602631 () Bool)

(assert (=> b!1417017 m!1602631))

(declare-fun m!1602633 () Bool)

(assert (=> b!1417017 m!1602633))

(declare-fun m!1602635 () Bool)

(assert (=> b!1417017 m!1602635))

(assert (=> b!1417017 m!1602627))

(declare-fun m!1602637 () Bool)

(assert (=> b!1417017 m!1602637))

(assert (=> b!1417017 m!1602629))

(assert (=> b!1417017 m!1602627))

(declare-fun m!1602639 () Bool)

(assert (=> b!1417017 m!1602639))

(declare-fun m!1602641 () Bool)

(assert (=> b!1417017 m!1602641))

(assert (=> b!1417017 m!1602615))

(declare-fun m!1602643 () Bool)

(assert (=> b!1417017 m!1602643))

(assert (=> b!1417017 m!1602613))

(declare-fun m!1602645 () Bool)

(assert (=> b!1417017 m!1602645))

(declare-fun m!1602647 () Bool)

(assert (=> b!1417017 m!1602647))

(declare-fun m!1602649 () Bool)

(assert (=> b!1417017 m!1602649))

(declare-fun m!1602651 () Bool)

(assert (=> b!1417017 m!1602651))

(assert (=> b!1417017 m!1602609))

(assert (=> b!1417017 m!1602605))

(assert (=> b!1417017 m!1602633))

(assert (=> b!1417017 m!1602611))

(declare-fun m!1602653 () Bool)

(assert (=> b!1417017 m!1602653))

(assert (=> b!1417017 m!1602625))

(assert (=> b!1417017 m!1602601))

(declare-fun m!1602655 () Bool)

(assert (=> b!1417017 m!1602655))

(declare-fun m!1602657 () Bool)

(assert (=> b!1417017 m!1602657))

(declare-fun m!1602659 () Bool)

(assert (=> b!1417017 m!1602659))

(assert (=> b!1417017 m!1601579))

(assert (=> b!1417017 m!1602593))

(assert (=> b!1417017 m!1602659))

(assert (=> b!1417017 m!1602647))

(assert (=> b!1417017 m!1602625))

(declare-fun m!1602661 () Bool)

(assert (=> b!1417017 m!1602661))

(assert (=> b!1417017 m!1602649))

(declare-fun m!1602663 () Bool)

(assert (=> b!1417017 m!1602663))

(declare-fun m!1602665 () Bool)

(assert (=> b!1417017 m!1602665))

(assert (=> b!1417017 m!1602601))

(declare-fun m!1602667 () Bool)

(assert (=> b!1417017 m!1602667))

(assert (=> b!1417017 m!1602593))

(assert (=> b!1417017 m!1602597))

(assert (=> b!1417017 m!1602623))

(declare-fun m!1602669 () Bool)

(assert (=> b!1417017 m!1602669))

(assert (=> b!1417017 m!1602625))

(assert (=> b!1417017 m!1602615))

(declare-fun m!1602671 () Bool)

(assert (=> b!1417017 m!1602671))

(assert (=> b!1417018 m!1601579))

(assert (=> b!1417018 m!1602593))

(assert (=> b!1417018 m!1602593))

(assert (=> b!1417018 m!1602597))

(assert (=> b!1417018 m!1602597))

(assert (=> b!1417018 m!1602599))

(declare-fun m!1602673 () Bool)

(assert (=> b!1417018 m!1602673))

(assert (=> b!1416560 d!405633))

(declare-fun lt!476589 () List!14592)

(declare-fun b!1417039 () Bool)

(declare-fun e!904589 () Bool)

(assert (=> b!1417039 (= e!904589 (or (not (= lt!476045 Nil!14526)) (= lt!476589 lt!476105)))))

(declare-fun b!1417036 () Bool)

(declare-fun e!904590 () List!14592)

(assert (=> b!1417036 (= e!904590 lt!476045)))

(declare-fun b!1417037 () Bool)

(assert (=> b!1417037 (= e!904590 (Cons!14526 (h!19927 lt!476105) (++!3792 (t!124113 lt!476105) lt!476045)))))

(declare-fun b!1417038 () Bool)

(declare-fun res!641642 () Bool)

(assert (=> b!1417038 (=> (not res!641642) (not e!904589))))

(assert (=> b!1417038 (= res!641642 (= (size!11984 lt!476589) (+ (size!11984 lt!476105) (size!11984 lt!476045))))))

(declare-fun d!405637 () Bool)

(assert (=> d!405637 e!904589))

(declare-fun res!641643 () Bool)

(assert (=> d!405637 (=> (not res!641643) (not e!904589))))

(assert (=> d!405637 (= res!641643 (= (content!2146 lt!476589) ((_ map or) (content!2146 lt!476105) (content!2146 lt!476045))))))

(assert (=> d!405637 (= lt!476589 e!904590)))

(declare-fun c!232849 () Bool)

(assert (=> d!405637 (= c!232849 ((_ is Nil!14526) lt!476105))))

(assert (=> d!405637 (= (++!3792 lt!476105 lt!476045) lt!476589)))

(assert (= (and d!405637 c!232849) b!1417036))

(assert (= (and d!405637 (not c!232849)) b!1417037))

(assert (= (and d!405637 res!641643) b!1417038))

(assert (= (and b!1417038 res!641642) b!1417039))

(declare-fun m!1602675 () Bool)

(assert (=> b!1417037 m!1602675))

(declare-fun m!1602677 () Bool)

(assert (=> b!1417038 m!1602677))

(declare-fun m!1602679 () Bool)

(assert (=> b!1417038 m!1602679))

(declare-fun m!1602681 () Bool)

(assert (=> b!1417038 m!1602681))

(declare-fun m!1602683 () Bool)

(assert (=> d!405637 m!1602683))

(declare-fun m!1602685 () Bool)

(assert (=> d!405637 m!1602685))

(declare-fun m!1602687 () Bool)

(assert (=> d!405637 m!1602687))

(assert (=> b!1416560 d!405637))

(declare-fun b!1417163 () Bool)

(declare-fun res!641722 () Bool)

(declare-fun e!904652 () Bool)

(assert (=> b!1417163 (=> (not res!641722) (not e!904652))))

(assert (=> b!1417163 (= res!641722 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) lt!476045))))

(declare-fun b!1417164 () Bool)

(assert (=> b!1417164 (= e!904652 (tokensListTwoByTwoPredicateSeparableList!204 lt!476102 (++!3792 lt!476105 lt!476045) (rules!11090 acc!229)))))

(declare-fun lt!476633 () Unit!21314)

(declare-fun lt!476635 () Unit!21314)

(assert (=> b!1417164 (= lt!476633 lt!476635)))

(assert (=> b!1417164 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045))))

(assert (=> b!1417164 (= lt!476635 (lemmaRulesProduceEachTokenIndividuallyConcat!23 lt!476102 (rules!11090 acc!229) lt!476105 lt!476045))))

(declare-fun b!1417161 () Bool)

(declare-fun res!641721 () Bool)

(assert (=> b!1417161 (=> (not res!641721) (not e!904652))))

(assert (=> b!1417161 (= res!641721 (rulesInvariant!2074 lt!476102 (rules!11090 acc!229)))))

(declare-fun d!405639 () Bool)

(assert (=> d!405639 e!904652))

(declare-fun res!641720 () Bool)

(assert (=> d!405639 (=> (not res!641720) (not e!904652))))

(assert (=> d!405639 (= res!641720 ((_ is Lexer!2202) lt!476102))))

(declare-fun lt!476634 () Unit!21314)

(declare-fun choose!8734 (LexerInterface!2204 List!14592 List!14592 List!14593) Unit!21314)

(assert (=> d!405639 (= lt!476634 (choose!8734 lt!476102 lt!476105 lt!476045 (rules!11090 acc!229)))))

(assert (=> d!405639 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405639 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!23 lt!476102 lt!476105 lt!476045 (rules!11090 acc!229)) lt!476634)))

(declare-fun b!1417162 () Bool)

(declare-fun res!641723 () Bool)

(assert (=> b!1417162 (=> (not res!641723) (not e!904652))))

(assert (=> b!1417162 (= res!641723 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) lt!476105))))

(assert (= (and d!405639 res!641720) b!1417161))

(assert (= (and b!1417161 res!641721) b!1417162))

(assert (= (and b!1417162 res!641723) b!1417163))

(assert (= (and b!1417163 res!641722) b!1417164))

(declare-fun m!1602911 () Bool)

(assert (=> b!1417161 m!1602911))

(declare-fun m!1602913 () Bool)

(assert (=> b!1417163 m!1602913))

(declare-fun m!1602915 () Bool)

(assert (=> b!1417162 m!1602915))

(declare-fun m!1602917 () Bool)

(assert (=> d!405639 m!1602917))

(assert (=> d!405639 m!1601823))

(assert (=> b!1417164 m!1601585))

(assert (=> b!1417164 m!1601585))

(assert (=> b!1417164 m!1601593))

(assert (=> b!1417164 m!1601585))

(assert (=> b!1417164 m!1601595))

(assert (=> b!1417164 m!1601591))

(assert (=> b!1416560 d!405639))

(declare-fun bs!339466 () Bool)

(declare-fun d!405695 () Bool)

(assert (= bs!339466 (and d!405695 d!405483)))

(declare-fun lambda!62584 () Int)

(assert (=> bs!339466 (= (and (= lt!476102 Lexer!2202) (= (rules!11090 acc!229) (rules!11090 sep!3))) (= lambda!62584 lambda!62574))))

(declare-fun bs!339467 () Bool)

(assert (= bs!339467 (and d!405695 d!405501)))

(assert (=> bs!339467 (= (= lt!476102 Lexer!2202) (= lambda!62584 lambda!62575))))

(declare-fun b!1417178 () Bool)

(declare-fun e!904664 () Bool)

(assert (=> b!1417178 (= e!904664 true)))

(declare-fun b!1417177 () Bool)

(declare-fun e!904663 () Bool)

(assert (=> b!1417177 (= e!904663 e!904664)))

(declare-fun b!1417176 () Bool)

(declare-fun e!904662 () Bool)

(assert (=> b!1417176 (= e!904662 e!904663)))

(assert (=> d!405695 e!904662))

(assert (= b!1417177 b!1417178))

(assert (= b!1417176 b!1417177))

(assert (= (and d!405695 ((_ is Cons!14527) (rules!11090 acc!229))) b!1417176))

(assert (=> b!1417178 (< (dynLambda!6709 order!8839 (toValue!3828 (transformation!2529 (h!19928 (rules!11090 acc!229))))) (dynLambda!6710 order!8841 lambda!62584))))

(assert (=> b!1417178 (< (dynLambda!6711 order!8843 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 acc!229))))) (dynLambda!6710 order!8841 lambda!62584))))

(assert (=> d!405695 true))

(declare-fun lt!476638 () Bool)

(assert (=> d!405695 (= lt!476638 (forall!3604 (++!3792 lt!476105 lt!476045) lambda!62584))))

(declare-fun e!904660 () Bool)

(assert (=> d!405695 (= lt!476638 e!904660)))

(declare-fun res!641732 () Bool)

(assert (=> d!405695 (=> res!641732 e!904660)))

(assert (=> d!405695 (= res!641732 (not ((_ is Cons!14526) (++!3792 lt!476105 lt!476045))))))

(assert (=> d!405695 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405695 (= (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045)) lt!476638)))

(declare-fun b!1417174 () Bool)

(declare-fun e!904661 () Bool)

(assert (=> b!1417174 (= e!904660 e!904661)))

(declare-fun res!641731 () Bool)

(assert (=> b!1417174 (=> (not res!641731) (not e!904661))))

(assert (=> b!1417174 (= res!641731 (rulesProduceIndividualToken!1167 lt!476102 (rules!11090 acc!229) (h!19927 (++!3792 lt!476105 lt!476045))))))

(declare-fun b!1417175 () Bool)

(assert (=> b!1417175 (= e!904661 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) (t!124113 (++!3792 lt!476105 lt!476045))))))

(assert (= (and d!405695 (not res!641732)) b!1417174))

(assert (= (and b!1417174 res!641731) b!1417175))

(assert (=> d!405695 m!1601585))

(declare-fun m!1602935 () Bool)

(assert (=> d!405695 m!1602935))

(assert (=> d!405695 m!1601823))

(assert (=> b!1417174 m!1602579))

(declare-fun m!1602937 () Bool)

(assert (=> b!1417175 m!1602937))

(assert (=> b!1416560 d!405695))

(declare-fun d!405707 () Bool)

(declare-fun lt!476639 () BalanceConc!9662)

(assert (=> d!405707 (= (list!5709 lt!476639) (printList!658 Lexer!2202 (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(assert (=> d!405707 (= lt!476639 (printTailRec!640 Lexer!2202 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))) 0 (BalanceConc!9663 Empty!4861)))))

(assert (=> d!405707 (= (print!972 Lexer!2202 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))) lt!476639)))

(declare-fun bs!339468 () Bool)

(assert (= bs!339468 d!405707))

(declare-fun m!1602939 () Bool)

(assert (=> bs!339468 m!1602939))

(assert (=> bs!339468 m!1601583))

(assert (=> bs!339468 m!1601579))

(assert (=> bs!339468 m!1601579))

(declare-fun m!1602941 () Bool)

(assert (=> bs!339468 m!1602941))

(assert (=> bs!339468 m!1601583))

(declare-fun m!1602943 () Bool)

(assert (=> bs!339468 m!1602943))

(assert (=> b!1416560 d!405707))

(declare-fun d!405709 () Bool)

(declare-fun list!5722 (Conc!4862) List!14592)

(assert (=> d!405709 (= (list!5710 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))) (list!5722 (c!232736 (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))

(declare-fun bs!339469 () Bool)

(assert (= bs!339469 d!405709))

(declare-fun m!1602945 () Bool)

(assert (=> bs!339469 m!1602945))

(assert (=> b!1416560 d!405709))

(declare-fun d!405711 () Bool)

(assert (=> d!405711 (= (printList!658 lt!476077 (++!3792 lt!476043 lt!476049)) (++!3790 (printList!658 lt!476077 lt!476043) (printList!658 lt!476077 lt!476049)))))

(declare-fun lt!476640 () Unit!21314)

(assert (=> d!405711 (= lt!476640 (choose!8731 lt!476077 lt!476043 lt!476049))))

(assert (=> d!405711 (= (lemmaPrintConcatSameAsConcatPrint!23 lt!476077 lt!476043 lt!476049) lt!476640)))

(declare-fun bs!339470 () Bool)

(assert (= bs!339470 d!405711))

(declare-fun m!1602947 () Bool)

(assert (=> bs!339470 m!1602947))

(declare-fun m!1602949 () Bool)

(assert (=> bs!339470 m!1602949))

(declare-fun m!1602951 () Bool)

(assert (=> bs!339470 m!1602951))

(declare-fun m!1602953 () Bool)

(assert (=> bs!339470 m!1602953))

(assert (=> bs!339470 m!1602949))

(declare-fun m!1602955 () Bool)

(assert (=> bs!339470 m!1602955))

(assert (=> bs!339470 m!1602955))

(assert (=> bs!339470 m!1602947))

(declare-fun m!1602957 () Bool)

(assert (=> bs!339470 m!1602957))

(assert (=> b!1416560 d!405711))

(declare-fun d!405713 () Bool)

(declare-fun e!904667 () Bool)

(assert (=> d!405713 e!904667))

(declare-fun res!641743 () Bool)

(assert (=> d!405713 (=> (not res!641743) (not e!904667))))

(declare-fun appendAssocInst!296 (Conc!4862 Conc!4862) Bool)

(assert (=> d!405713 (= res!641743 (appendAssocInst!296 (c!232736 (tokens!1806 acc!229)) (c!232736 (tokens!1806 (head!2729 objs!24)))))))

(declare-fun lt!476643 () BalanceConc!9664)

(declare-fun ++!3802 (Conc!4862 Conc!4862) Conc!4862)

(assert (=> d!405713 (= lt!476643 (BalanceConc!9665 (++!3802 (c!232736 (tokens!1806 acc!229)) (c!232736 (tokens!1806 (head!2729 objs!24))))))))

(assert (=> d!405713 (= (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))) lt!476643)))

(declare-fun b!1417188 () Bool)

(declare-fun res!641744 () Bool)

(assert (=> b!1417188 (=> (not res!641744) (not e!904667))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1417188 (= res!641744 (<= (height!706 (++!3802 (c!232736 (tokens!1806 acc!229)) (c!232736 (tokens!1806 (head!2729 objs!24))))) (+ (max!0 (height!706 (c!232736 (tokens!1806 acc!229))) (height!706 (c!232736 (tokens!1806 (head!2729 objs!24))))) 1)))))

(declare-fun b!1417190 () Bool)

(assert (=> b!1417190 (= e!904667 (= (list!5710 lt!476643) (++!3792 (list!5710 (tokens!1806 acc!229)) (list!5710 (tokens!1806 (head!2729 objs!24))))))))

(declare-fun b!1417187 () Bool)

(declare-fun res!641742 () Bool)

(assert (=> b!1417187 (=> (not res!641742) (not e!904667))))

(assert (=> b!1417187 (= res!641742 (isBalanced!1442 (++!3802 (c!232736 (tokens!1806 acc!229)) (c!232736 (tokens!1806 (head!2729 objs!24))))))))

(declare-fun b!1417189 () Bool)

(declare-fun res!641741 () Bool)

(assert (=> b!1417189 (=> (not res!641741) (not e!904667))))

(assert (=> b!1417189 (= res!641741 (>= (height!706 (++!3802 (c!232736 (tokens!1806 acc!229)) (c!232736 (tokens!1806 (head!2729 objs!24))))) (max!0 (height!706 (c!232736 (tokens!1806 acc!229))) (height!706 (c!232736 (tokens!1806 (head!2729 objs!24)))))))))

(assert (= (and d!405713 res!641743) b!1417187))

(assert (= (and b!1417187 res!641742) b!1417188))

(assert (= (and b!1417188 res!641744) b!1417189))

(assert (= (and b!1417189 res!641741) b!1417190))

(declare-fun m!1602959 () Bool)

(assert (=> d!405713 m!1602959))

(declare-fun m!1602961 () Bool)

(assert (=> d!405713 m!1602961))

(declare-fun m!1602963 () Bool)

(assert (=> b!1417190 m!1602963))

(assert (=> b!1417190 m!1601609))

(assert (=> b!1417190 m!1601611))

(assert (=> b!1417190 m!1601609))

(assert (=> b!1417190 m!1601611))

(assert (=> b!1417190 m!1601613))

(declare-fun m!1602965 () Bool)

(assert (=> b!1417189 m!1602965))

(declare-fun m!1602967 () Bool)

(assert (=> b!1417189 m!1602967))

(assert (=> b!1417189 m!1602961))

(assert (=> b!1417189 m!1602965))

(assert (=> b!1417189 m!1602967))

(declare-fun m!1602969 () Bool)

(assert (=> b!1417189 m!1602969))

(assert (=> b!1417189 m!1602961))

(declare-fun m!1602971 () Bool)

(assert (=> b!1417189 m!1602971))

(assert (=> b!1417188 m!1602965))

(assert (=> b!1417188 m!1602967))

(assert (=> b!1417188 m!1602961))

(assert (=> b!1417188 m!1602965))

(assert (=> b!1417188 m!1602967))

(assert (=> b!1417188 m!1602969))

(assert (=> b!1417188 m!1602961))

(assert (=> b!1417188 m!1602971))

(assert (=> b!1417187 m!1602961))

(assert (=> b!1417187 m!1602961))

(declare-fun m!1602973 () Bool)

(assert (=> b!1417187 m!1602973))

(assert (=> b!1416560 d!405713))

(declare-fun d!405715 () Bool)

(assert (=> d!405715 (rulesProduceEachTokenIndividuallyList!685 lt!476102 (rules!11090 acc!229) (++!3792 lt!476105 lt!476045))))

(declare-fun lt!476646 () Unit!21314)

(declare-fun choose!8735 (LexerInterface!2204 List!14593 List!14592 List!14592) Unit!21314)

(assert (=> d!405715 (= lt!476646 (choose!8735 lt!476102 (rules!11090 acc!229) lt!476105 lt!476045))))

(assert (=> d!405715 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405715 (= (lemmaRulesProduceEachTokenIndividuallyConcat!23 lt!476102 (rules!11090 acc!229) lt!476105 lt!476045) lt!476646)))

(declare-fun bs!339471 () Bool)

(assert (= bs!339471 d!405715))

(assert (=> bs!339471 m!1601585))

(assert (=> bs!339471 m!1601585))

(assert (=> bs!339471 m!1601595))

(declare-fun m!1602975 () Bool)

(assert (=> bs!339471 m!1602975))

(assert (=> bs!339471 m!1601823))

(assert (=> b!1416560 d!405715))

(declare-fun d!405717 () Bool)

(declare-fun e!904668 () Bool)

(assert (=> d!405717 e!904668))

(declare-fun res!641745 () Bool)

(assert (=> d!405717 (=> (not res!641745) (not e!904668))))

(declare-fun lt!476647 () BalanceConc!9662)

(assert (=> d!405717 (= res!641745 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) lt!476647))) (list!5710 (tokens!1806 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(assert (=> d!405717 (= lt!476647 (print!972 Lexer!2202 (tokens!1806 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun lt!476648 () Unit!21314)

(assert (=> d!405717 (= lt!476648 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) (list!5710 (tokens!1806 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))))))))

(assert (=> d!405717 (= (print!971 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) lt!476647)))

(declare-fun b!1417191 () Bool)

(assert (=> b!1417191 (= e!904668 (isEmpty!8920 (list!5709 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 (PrintableTokens!841 (rules!11090 acc!229) (++!3791 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) lt!476647)))))))

(assert (= (and d!405717 res!641745) b!1417191))

(declare-fun m!1602977 () Bool)

(assert (=> d!405717 m!1602977))

(assert (=> d!405717 m!1602977))

(declare-fun m!1602979 () Bool)

(assert (=> d!405717 m!1602979))

(declare-fun m!1602981 () Bool)

(assert (=> d!405717 m!1602981))

(declare-fun m!1602983 () Bool)

(assert (=> d!405717 m!1602983))

(declare-fun m!1602985 () Bool)

(assert (=> d!405717 m!1602985))

(assert (=> b!1417191 m!1602981))

(declare-fun m!1602987 () Bool)

(assert (=> b!1417191 m!1602987))

(assert (=> b!1417191 m!1602987))

(declare-fun m!1602989 () Bool)

(assert (=> b!1417191 m!1602989))

(assert (=> b!1416560 d!405717))

(declare-fun d!405719 () Bool)

(declare-fun e!904669 () Bool)

(assert (=> d!405719 e!904669))

(declare-fun res!641746 () Bool)

(assert (=> d!405719 (=> (not res!641746) (not e!904669))))

(declare-fun lt!476649 () List!14591)

(assert (=> d!405719 (= res!641746 (= (content!2144 lt!476649) ((_ map or) (content!2144 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891))) (content!2144 (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881))))))))

(declare-fun e!904670 () List!14591)

(assert (=> d!405719 (= lt!476649 e!904670)))

(declare-fun c!232875 () Bool)

(assert (=> d!405719 (= c!232875 ((_ is Nil!14525) (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891))))))

(assert (=> d!405719 (= (++!3790 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891)) (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881))) lt!476649)))

(declare-fun b!1417193 () Bool)

(assert (=> b!1417193 (= e!904670 (Cons!14525 (h!19926 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891))) (++!3790 (t!124112 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891))) (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881)))))))

(declare-fun b!1417192 () Bool)

(assert (=> b!1417192 (= e!904670 (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881)))))

(declare-fun b!1417194 () Bool)

(declare-fun res!641747 () Bool)

(assert (=> b!1417194 (=> (not res!641747) (not e!904669))))

(assert (=> b!1417194 (= res!641747 (= (size!11979 lt!476649) (+ (size!11979 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891))) (size!11979 (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881))))))))

(declare-fun b!1417195 () Bool)

(assert (=> b!1417195 (= e!904669 (or (not (= (ite c!232760 call!95887 (ite c!232762 call!95891 call!95881)) Nil!14525)) (= lt!476649 (ite c!232760 call!95889 (ite c!232762 call!95880 call!95891)))))))

(assert (= (and d!405719 c!232875) b!1417192))

(assert (= (and d!405719 (not c!232875)) b!1417193))

(assert (= (and d!405719 res!641746) b!1417194))

(assert (= (and b!1417194 res!641747) b!1417195))

(declare-fun m!1602991 () Bool)

(assert (=> d!405719 m!1602991))

(declare-fun m!1602993 () Bool)

(assert (=> d!405719 m!1602993))

(declare-fun m!1602995 () Bool)

(assert (=> d!405719 m!1602995))

(declare-fun m!1602997 () Bool)

(assert (=> b!1417193 m!1602997))

(declare-fun m!1602999 () Bool)

(assert (=> b!1417194 m!1602999))

(declare-fun m!1603001 () Bool)

(assert (=> b!1417194 m!1603001))

(declare-fun m!1603003 () Bool)

(assert (=> b!1417194 m!1603003))

(assert (=> bm!95875 d!405719))

(declare-fun d!405721 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!96 (LexerInterface!2204 BalanceConc!9664 Int List!14593) Bool)

(assert (=> d!405721 (= (separableTokens!186 Lexer!2202 (tokens!1806 sep!3) (rules!11090 sep!3)) (tokensListTwoByTwoPredicateSeparable!96 Lexer!2202 (tokens!1806 sep!3) 0 (rules!11090 sep!3)))))

(declare-fun bs!339472 () Bool)

(assert (= bs!339472 d!405721))

(declare-fun m!1603087 () Bool)

(assert (=> bs!339472 m!1603087))

(assert (=> b!1416660 d!405721))

(declare-fun b!1417206 () Bool)

(declare-fun res!641753 () Bool)

(declare-fun e!904677 () Bool)

(assert (=> b!1417206 (=> (not res!641753) (not e!904677))))

(assert (=> b!1417206 (= res!641753 (<= (- (height!706 (left!12416 (c!232736 (tokens!1806 sep!3)))) (height!706 (right!12746 (c!232736 (tokens!1806 sep!3))))) 1))))

(declare-fun b!1417207 () Bool)

(declare-fun res!641756 () Bool)

(assert (=> b!1417207 (=> (not res!641756) (not e!904677))))

(assert (=> b!1417207 (= res!641756 (not (isEmpty!8915 (left!12416 (c!232736 (tokens!1806 sep!3))))))))

(declare-fun b!1417208 () Bool)

(declare-fun e!904678 () Bool)

(assert (=> b!1417208 (= e!904678 e!904677)))

(declare-fun res!641754 () Bool)

(assert (=> b!1417208 (=> (not res!641754) (not e!904677))))

(assert (=> b!1417208 (= res!641754 (<= (- 1) (- (height!706 (left!12416 (c!232736 (tokens!1806 sep!3)))) (height!706 (right!12746 (c!232736 (tokens!1806 sep!3)))))))))

(declare-fun d!405725 () Bool)

(declare-fun res!641752 () Bool)

(assert (=> d!405725 (=> res!641752 e!904678)))

(assert (=> d!405725 (= res!641752 (not ((_ is Node!4862) (c!232736 (tokens!1806 sep!3)))))))

(assert (=> d!405725 (= (isBalanced!1442 (c!232736 (tokens!1806 sep!3))) e!904678)))

(declare-fun b!1417205 () Bool)

(declare-fun res!641755 () Bool)

(assert (=> b!1417205 (=> (not res!641755) (not e!904677))))

(assert (=> b!1417205 (= res!641755 (isBalanced!1442 (right!12746 (c!232736 (tokens!1806 sep!3)))))))

(declare-fun b!1417209 () Bool)

(assert (=> b!1417209 (= e!904677 (not (isEmpty!8915 (right!12746 (c!232736 (tokens!1806 sep!3))))))))

(declare-fun b!1417210 () Bool)

(declare-fun res!641751 () Bool)

(assert (=> b!1417210 (=> (not res!641751) (not e!904677))))

(assert (=> b!1417210 (= res!641751 (isBalanced!1442 (left!12416 (c!232736 (tokens!1806 sep!3)))))))

(assert (= (and d!405725 (not res!641752)) b!1417208))

(assert (= (and b!1417208 res!641754) b!1417206))

(assert (= (and b!1417206 res!641753) b!1417210))

(assert (= (and b!1417210 res!641751) b!1417205))

(assert (= (and b!1417205 res!641755) b!1417207))

(assert (= (and b!1417207 res!641756) b!1417209))

(declare-fun m!1603089 () Bool)

(assert (=> b!1417206 m!1603089))

(declare-fun m!1603091 () Bool)

(assert (=> b!1417206 m!1603091))

(declare-fun m!1603093 () Bool)

(assert (=> b!1417205 m!1603093))

(declare-fun m!1603095 () Bool)

(assert (=> b!1417207 m!1603095))

(declare-fun m!1603097 () Bool)

(assert (=> b!1417209 m!1603097))

(declare-fun m!1603099 () Bool)

(assert (=> b!1417210 m!1603099))

(assert (=> b!1417208 m!1603089))

(assert (=> b!1417208 m!1603091))

(assert (=> d!405433 d!405725))

(declare-fun d!405727 () Bool)

(declare-fun res!641761 () Bool)

(declare-fun e!904681 () Bool)

(assert (=> d!405727 (=> (not res!641761) (not e!904681))))

(declare-fun list!5723 (IArray!9729) List!14592)

(assert (=> d!405727 (= res!641761 (<= (size!11984 (list!5723 (xs!7589 (c!232736 (tokens!1806 acc!229))))) 512))))

(assert (=> d!405727 (= (inv!19108 (c!232736 (tokens!1806 acc!229))) e!904681)))

(declare-fun b!1417215 () Bool)

(declare-fun res!641762 () Bool)

(assert (=> b!1417215 (=> (not res!641762) (not e!904681))))

(assert (=> b!1417215 (= res!641762 (= (csize!9955 (c!232736 (tokens!1806 acc!229))) (size!11984 (list!5723 (xs!7589 (c!232736 (tokens!1806 acc!229)))))))))

(declare-fun b!1417216 () Bool)

(assert (=> b!1417216 (= e!904681 (and (> (csize!9955 (c!232736 (tokens!1806 acc!229))) 0) (<= (csize!9955 (c!232736 (tokens!1806 acc!229))) 512)))))

(assert (= (and d!405727 res!641761) b!1417215))

(assert (= (and b!1417215 res!641762) b!1417216))

(declare-fun m!1603101 () Bool)

(assert (=> d!405727 m!1603101))

(assert (=> d!405727 m!1603101))

(declare-fun m!1603103 () Bool)

(assert (=> d!405727 m!1603103))

(assert (=> b!1417215 m!1603101))

(assert (=> b!1417215 m!1603101))

(assert (=> b!1417215 m!1603103))

(assert (=> b!1416614 d!405727))

(declare-fun d!405729 () Bool)

(declare-fun res!641767 () Bool)

(declare-fun e!904684 () Bool)

(assert (=> d!405729 (=> (not res!641767) (not e!904684))))

(assert (=> d!405729 (= res!641767 (<= (size!11975 (list!5716 (xs!7590 (c!232737 objs!24)))) 512))))

(assert (=> d!405729 (= (inv!19110 (c!232737 objs!24)) e!904684)))

(declare-fun b!1417221 () Bool)

(declare-fun res!641768 () Bool)

(assert (=> b!1417221 (=> (not res!641768) (not e!904684))))

(assert (=> b!1417221 (= res!641768 (= (csize!9957 (c!232737 objs!24)) (size!11975 (list!5716 (xs!7590 (c!232737 objs!24))))))))

(declare-fun b!1417222 () Bool)

(assert (=> b!1417222 (= e!904684 (and (> (csize!9957 (c!232737 objs!24)) 0) (<= (csize!9957 (c!232737 objs!24)) 512)))))

(assert (= (and d!405729 res!641767) b!1417221))

(assert (= (and b!1417221 res!641768) b!1417222))

(assert (=> d!405729 m!1602037))

(assert (=> d!405729 m!1602037))

(declare-fun m!1603105 () Bool)

(assert (=> d!405729 m!1603105))

(assert (=> b!1417221 m!1602037))

(assert (=> b!1417221 m!1602037))

(assert (=> b!1417221 m!1603105))

(assert (=> b!1416623 d!405729))

(declare-fun d!405731 () Bool)

(declare-fun res!641771 () Bool)

(declare-fun e!904687 () Bool)

(assert (=> d!405731 (=> (not res!641771) (not e!904687))))

(declare-fun rulesValid!947 (LexerInterface!2204 List!14593) Bool)

(assert (=> d!405731 (= res!641771 (rulesValid!947 Lexer!2202 (rules!11090 sep!3)))))

(assert (=> d!405731 (= (rulesInvariant!2074 Lexer!2202 (rules!11090 sep!3)) e!904687)))

(declare-fun b!1417225 () Bool)

(declare-datatypes ((List!14596 0))(
  ( (Nil!14530) (Cons!14530 (h!19931 String!17331) (t!124201 List!14596)) )
))
(declare-fun noDuplicateTag!947 (LexerInterface!2204 List!14593 List!14596) Bool)

(assert (=> b!1417225 (= e!904687 (noDuplicateTag!947 Lexer!2202 (rules!11090 sep!3) Nil!14530))))

(assert (= (and d!405731 res!641771) b!1417225))

(declare-fun m!1603107 () Bool)

(assert (=> d!405731 m!1603107))

(declare-fun m!1603109 () Bool)

(assert (=> b!1417225 m!1603109))

(assert (=> b!1416658 d!405731))

(declare-fun d!405733 () Bool)

(declare-fun res!641778 () Bool)

(declare-fun e!904690 () Bool)

(assert (=> d!405733 (=> (not res!641778) (not e!904690))))

(declare-fun size!11987 (Conc!4862) Int)

(assert (=> d!405733 (= res!641778 (= (csize!9954 (c!232736 (tokens!1806 sep!3))) (+ (size!11987 (left!12416 (c!232736 (tokens!1806 sep!3)))) (size!11987 (right!12746 (c!232736 (tokens!1806 sep!3)))))))))

(assert (=> d!405733 (= (inv!19107 (c!232736 (tokens!1806 sep!3))) e!904690)))

(declare-fun b!1417232 () Bool)

(declare-fun res!641779 () Bool)

(assert (=> b!1417232 (=> (not res!641779) (not e!904690))))

(assert (=> b!1417232 (= res!641779 (and (not (= (left!12416 (c!232736 (tokens!1806 sep!3))) Empty!4862)) (not (= (right!12746 (c!232736 (tokens!1806 sep!3))) Empty!4862))))))

(declare-fun b!1417233 () Bool)

(declare-fun res!641780 () Bool)

(assert (=> b!1417233 (=> (not res!641780) (not e!904690))))

(assert (=> b!1417233 (= res!641780 (= (cheight!5073 (c!232736 (tokens!1806 sep!3))) (+ (max!0 (height!706 (left!12416 (c!232736 (tokens!1806 sep!3)))) (height!706 (right!12746 (c!232736 (tokens!1806 sep!3))))) 1)))))

(declare-fun b!1417234 () Bool)

(assert (=> b!1417234 (= e!904690 (<= 0 (cheight!5073 (c!232736 (tokens!1806 sep!3)))))))

(assert (= (and d!405733 res!641778) b!1417232))

(assert (= (and b!1417232 res!641779) b!1417233))

(assert (= (and b!1417233 res!641780) b!1417234))

(declare-fun m!1603111 () Bool)

(assert (=> d!405733 m!1603111))

(declare-fun m!1603113 () Bool)

(assert (=> d!405733 m!1603113))

(assert (=> b!1417233 m!1603089))

(assert (=> b!1417233 m!1603091))

(assert (=> b!1417233 m!1603089))

(assert (=> b!1417233 m!1603091))

(declare-fun m!1603115 () Bool)

(assert (=> b!1417233 m!1603115))

(assert (=> b!1416577 d!405733))

(declare-fun d!405735 () Bool)

(declare-fun res!641781 () Bool)

(declare-fun e!904691 () Bool)

(assert (=> d!405735 (=> (not res!641781) (not e!904691))))

(assert (=> d!405735 (= res!641781 (= (csize!9954 (c!232736 (tokens!1806 acc!229))) (+ (size!11987 (left!12416 (c!232736 (tokens!1806 acc!229)))) (size!11987 (right!12746 (c!232736 (tokens!1806 acc!229)))))))))

(assert (=> d!405735 (= (inv!19107 (c!232736 (tokens!1806 acc!229))) e!904691)))

(declare-fun b!1417235 () Bool)

(declare-fun res!641782 () Bool)

(assert (=> b!1417235 (=> (not res!641782) (not e!904691))))

(assert (=> b!1417235 (= res!641782 (and (not (= (left!12416 (c!232736 (tokens!1806 acc!229))) Empty!4862)) (not (= (right!12746 (c!232736 (tokens!1806 acc!229))) Empty!4862))))))

(declare-fun b!1417236 () Bool)

(declare-fun res!641783 () Bool)

(assert (=> b!1417236 (=> (not res!641783) (not e!904691))))

(assert (=> b!1417236 (= res!641783 (= (cheight!5073 (c!232736 (tokens!1806 acc!229))) (+ (max!0 (height!706 (left!12416 (c!232736 (tokens!1806 acc!229)))) (height!706 (right!12746 (c!232736 (tokens!1806 acc!229))))) 1)))))

(declare-fun b!1417237 () Bool)

(assert (=> b!1417237 (= e!904691 (<= 0 (cheight!5073 (c!232736 (tokens!1806 acc!229)))))))

(assert (= (and d!405735 res!641781) b!1417235))

(assert (= (and b!1417235 res!641782) b!1417236))

(assert (= (and b!1417236 res!641783) b!1417237))

(declare-fun m!1603117 () Bool)

(assert (=> d!405735 m!1603117))

(declare-fun m!1603119 () Bool)

(assert (=> d!405735 m!1603119))

(assert (=> b!1417236 m!1602055))

(assert (=> b!1417236 m!1602057))

(assert (=> b!1417236 m!1602055))

(assert (=> b!1417236 m!1602057))

(declare-fun m!1603121 () Bool)

(assert (=> b!1417236 m!1603121))

(assert (=> b!1416612 d!405735))

(declare-fun d!405737 () Bool)

(declare-fun res!641790 () Bool)

(declare-fun e!904694 () Bool)

(assert (=> d!405737 (=> (not res!641790) (not e!904694))))

(assert (=> d!405737 (= res!641790 (= (csize!9956 (c!232737 objs!24)) (+ (size!11976 (left!12417 (c!232737 objs!24))) (size!11976 (right!12747 (c!232737 objs!24))))))))

(assert (=> d!405737 (= (inv!19109 (c!232737 objs!24)) e!904694)))

(declare-fun b!1417244 () Bool)

(declare-fun res!641791 () Bool)

(assert (=> b!1417244 (=> (not res!641791) (not e!904694))))

(assert (=> b!1417244 (= res!641791 (and (not (= (left!12417 (c!232737 objs!24)) Empty!4863)) (not (= (right!12747 (c!232737 objs!24)) Empty!4863))))))

(declare-fun b!1417245 () Bool)

(declare-fun res!641792 () Bool)

(assert (=> b!1417245 (=> (not res!641792) (not e!904694))))

(assert (=> b!1417245 (= res!641792 (= (cheight!5074 (c!232737 objs!24)) (+ (max!0 (height!704 (left!12417 (c!232737 objs!24))) (height!704 (right!12747 (c!232737 objs!24)))) 1)))))

(declare-fun b!1417246 () Bool)

(assert (=> b!1417246 (= e!904694 (<= 0 (cheight!5074 (c!232737 objs!24))))))

(assert (= (and d!405737 res!641790) b!1417244))

(assert (= (and b!1417244 res!641791) b!1417245))

(assert (= (and b!1417245 res!641792) b!1417246))

(declare-fun m!1603123 () Bool)

(assert (=> d!405737 m!1603123))

(declare-fun m!1603125 () Bool)

(assert (=> d!405737 m!1603125))

(declare-fun m!1603127 () Bool)

(assert (=> b!1417245 m!1603127))

(declare-fun m!1603129 () Bool)

(assert (=> b!1417245 m!1603129))

(assert (=> b!1417245 m!1603127))

(assert (=> b!1417245 m!1603129))

(declare-fun m!1603131 () Bool)

(assert (=> b!1417245 m!1603131))

(assert (=> b!1416621 d!405737))

(assert (=> b!1416497 d!405435))

(declare-fun d!405739 () Bool)

(declare-fun res!641793 () Bool)

(declare-fun e!904695 () Bool)

(assert (=> d!405739 (=> (not res!641793) (not e!904695))))

(assert (=> d!405739 (= res!641793 (<= (size!11984 (list!5723 (xs!7589 (c!232736 (tokens!1806 sep!3))))) 512))))

(assert (=> d!405739 (= (inv!19108 (c!232736 (tokens!1806 sep!3))) e!904695)))

(declare-fun b!1417247 () Bool)

(declare-fun res!641794 () Bool)

(assert (=> b!1417247 (=> (not res!641794) (not e!904695))))

(assert (=> b!1417247 (= res!641794 (= (csize!9955 (c!232736 (tokens!1806 sep!3))) (size!11984 (list!5723 (xs!7589 (c!232736 (tokens!1806 sep!3)))))))))

(declare-fun b!1417248 () Bool)

(assert (=> b!1417248 (= e!904695 (and (> (csize!9955 (c!232736 (tokens!1806 sep!3))) 0) (<= (csize!9955 (c!232736 (tokens!1806 sep!3))) 512)))))

(assert (= (and d!405739 res!641793) b!1417247))

(assert (= (and b!1417247 res!641794) b!1417248))

(declare-fun m!1603133 () Bool)

(assert (=> d!405739 m!1603133))

(assert (=> d!405739 m!1603133))

(declare-fun m!1603135 () Bool)

(assert (=> d!405739 m!1603135))

(assert (=> b!1417247 m!1603133))

(assert (=> b!1417247 m!1603133))

(assert (=> b!1417247 m!1603135))

(assert (=> b!1416579 d!405739))

(declare-fun d!405741 () Bool)

(assert (=> d!405741 (= (isEmpty!8905 (list!5708 objs!24)) ((_ is Nil!14528) (list!5708 objs!24)))))

(assert (=> d!405411 d!405741))

(declare-fun d!405743 () Bool)

(assert (=> d!405743 (= (list!5708 objs!24) (list!5715 (c!232737 objs!24)))))

(declare-fun bs!339473 () Bool)

(assert (= bs!339473 d!405743))

(assert (=> bs!339473 m!1602011))

(assert (=> d!405411 d!405743))

(declare-fun d!405745 () Bool)

(declare-fun lt!476730 () Bool)

(assert (=> d!405745 (= lt!476730 (isEmpty!8905 (list!5715 (c!232737 objs!24))))))

(assert (=> d!405745 (= lt!476730 (= (size!11976 (c!232737 objs!24)) 0))))

(assert (=> d!405745 (= (isEmpty!8906 (c!232737 objs!24)) lt!476730)))

(declare-fun bs!339474 () Bool)

(assert (= bs!339474 d!405745))

(assert (=> bs!339474 m!1602011))

(assert (=> bs!339474 m!1602011))

(declare-fun m!1603137 () Bool)

(assert (=> bs!339474 m!1603137))

(assert (=> bs!339474 m!1601841))

(assert (=> d!405411 d!405745))

(declare-fun d!405747 () Bool)

(declare-fun e!904697 () Bool)

(assert (=> d!405747 e!904697))

(declare-fun res!641795 () Bool)

(assert (=> d!405747 (=> (not res!641795) (not e!904697))))

(assert (=> d!405747 (= res!641795 (= (list!5710 (_1!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))) (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))

(declare-fun lt!476737 () Unit!21314)

(declare-fun e!904696 () Unit!21314)

(assert (=> d!405747 (= lt!476737 e!904696)))

(declare-fun c!232879 () Bool)

(assert (=> d!405747 (= c!232879 (or ((_ is Nil!14526) (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))) ((_ is Nil!14526) (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))

(assert (=> d!405747 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405747 (= (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))) lt!476737)))

(declare-fun b!1417249 () Bool)

(declare-fun Unit!21391 () Unit!21314)

(assert (=> b!1417249 (= e!904696 Unit!21391)))

(declare-fun b!1417250 () Bool)

(declare-fun Unit!21392 () Unit!21314)

(assert (=> b!1417250 (= e!904696 Unit!21392)))

(declare-fun lt!476736 () BalanceConc!9662)

(assert (=> b!1417250 (= lt!476736 (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))

(declare-fun lt!476756 () BalanceConc!9662)

(assert (=> b!1417250 (= lt!476756 (print!972 Lexer!2202 (seqFromList!1672 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))

(declare-fun lt!476750 () tuple2!13992)

(assert (=> b!1417250 (= lt!476750 (lex!1010 Lexer!2202 (rules!11090 acc!229) lt!476756))))

(declare-fun lt!476738 () List!14591)

(assert (=> b!1417250 (= lt!476738 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))

(declare-fun lt!476748 () List!14591)

(assert (=> b!1417250 (= lt!476748 (list!5709 lt!476756))))

(declare-fun lt!476742 () Unit!21314)

(assert (=> b!1417250 (= lt!476742 (lemmaConcatTwoListThenFirstIsPrefix!736 lt!476738 lt!476748))))

(assert (=> b!1417250 (isPrefix!1169 lt!476738 (++!3790 lt!476738 lt!476748))))

(declare-fun lt!476753 () Unit!21314)

(assert (=> b!1417250 (= lt!476753 lt!476742)))

(declare-fun lt!476739 () Unit!21314)

(assert (=> b!1417250 (= lt!476739 (theoremInvertabilityWhenTokenListSeparable!28 Lexer!2202 (rules!11090 acc!229) (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))

(declare-fun lt!476746 () Unit!21314)

(assert (=> b!1417250 (= lt!476746 (seqFromListBHdTlConstructive!65 (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))) (t!124113 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))) (_1!7882 lt!476750)))))

(assert (=> b!1417250 (= (list!5710 (_1!7882 lt!476750)) (list!5710 (prepend!381 (seqFromList!1672 (t!124113 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))))

(declare-fun lt!476747 () Unit!21314)

(assert (=> b!1417250 (= lt!476747 lt!476746)))

(declare-fun lt!476733 () Option!2789)

(assert (=> b!1417250 (= lt!476733 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 lt!476736)))))

(assert (=> b!1417250 (= (print!972 Lexer!2202 (singletonSeq!1164 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) (printTailRec!640 Lexer!2202 (singletonSeq!1164 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))) 0 (BalanceConc!9663 Empty!4861)))))

(declare-fun lt!476744 () Unit!21314)

(declare-fun Unit!21393 () Unit!21314)

(assert (=> b!1417250 (= lt!476744 Unit!21393)))

(declare-fun lt!476740 () Unit!21314)

(assert (=> b!1417250 (= lt!476740 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!209 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) (list!5709 lt!476756)))))

(assert (=> b!1417250 (= (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) (originalCharacters!3391 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))

(declare-fun lt!476731 () Unit!21314)

(declare-fun Unit!21394 () Unit!21314)

(assert (=> b!1417250 (= lt!476731 Unit!21394)))

(assert (=> b!1417250 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) 0))) (Cons!14525 (head!2736 (originalCharacters!3391 (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))) Nil!14525))))

(declare-fun lt!476734 () Unit!21314)

(declare-fun Unit!21395 () Unit!21314)

(assert (=> b!1417250 (= lt!476734 Unit!21395)))

(assert (=> b!1417250 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) 0))) (Cons!14525 (head!2736 (list!5709 lt!476756)) Nil!14525))))

(declare-fun lt!476749 () Unit!21314)

(declare-fun Unit!21396 () Unit!21314)

(assert (=> b!1417250 (= lt!476749 Unit!21396)))

(assert (=> b!1417250 (= (list!5709 (singletonSeq!1165 (apply!3710 (charsOf!1475 (h!19927 (t!124113 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) 0))) (Cons!14525 (head!2737 lt!476756) Nil!14525))))

(declare-fun lt!476755 () Unit!21314)

(declare-fun Unit!21397 () Unit!21314)

(assert (=> b!1417250 (= lt!476755 Unit!21397)))

(assert (=> b!1417250 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (originalCharacters!3391 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))

(declare-fun lt!476752 () Unit!21314)

(declare-fun Unit!21398 () Unit!21314)

(assert (=> b!1417250 (= lt!476752 Unit!21398)))

(assert (=> b!1417250 (isDefined!2262 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))))

(declare-fun lt!476743 () Unit!21314)

(declare-fun Unit!21399 () Unit!21314)

(assert (=> b!1417250 (= lt!476743 Unit!21399)))

(declare-fun lt!476735 () Unit!21314)

(declare-fun Unit!21400 () Unit!21314)

(assert (=> b!1417250 (= lt!476735 Unit!21400)))

(assert (=> b!1417250 (= (_1!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))) (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))

(declare-fun lt!476754 () Unit!21314)

(declare-fun Unit!21401 () Unit!21314)

(assert (=> b!1417250 (= lt!476754 Unit!21401)))

(assert (=> b!1417250 (isEmpty!8920 (_2!7884 (get!4463 (maxPrefix!1159 Lexer!2202 (rules!11090 acc!229) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))))))

(declare-fun lt!476741 () Unit!21314)

(declare-fun Unit!21402 () Unit!21314)

(assert (=> b!1417250 (= lt!476741 Unit!21402)))

(assert (=> b!1417250 (matchR!1795 (regex!2529 (rule!4292 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))) (list!5709 (charsOf!1475 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))

(declare-fun lt!476732 () Unit!21314)

(declare-fun Unit!21403 () Unit!21314)

(assert (=> b!1417250 (= lt!476732 Unit!21403)))

(assert (=> b!1417250 (= (rule!4292 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))) (rule!4292 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))))))

(declare-fun lt!476751 () Unit!21314)

(declare-fun Unit!21404 () Unit!21314)

(assert (=> b!1417250 (= lt!476751 Unit!21404)))

(declare-fun lt!476745 () Unit!21314)

(assert (=> b!1417250 (= lt!476745 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!7 Lexer!2202 (rules!11090 acc!229) (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))) (rule!4292 (h!19927 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902)))) (list!5709 lt!476756)))))

(declare-fun b!1417251 () Bool)

(assert (=> b!1417251 (= e!904697 (isEmpty!8921 (_2!7882 (lex!1010 Lexer!2202 (rules!11090 acc!229) (print!972 Lexer!2202 (seqFromList!1672 (ite c!232760 call!95885 (ite c!232762 call!95908 call!95902))))))))))

(assert (= (and d!405747 c!232879) b!1417249))

(assert (= (and d!405747 (not c!232879)) b!1417250))

(assert (= (and d!405747 res!641795) b!1417251))

(declare-fun m!1603139 () Bool)

(assert (=> d!405747 m!1603139))

(assert (=> d!405747 m!1601823))

(declare-fun m!1603141 () Bool)

(assert (=> d!405747 m!1603141))

(assert (=> d!405747 m!1603139))

(declare-fun m!1603143 () Bool)

(assert (=> d!405747 m!1603143))

(assert (=> d!405747 m!1603143))

(declare-fun m!1603145 () Bool)

(assert (=> d!405747 m!1603145))

(declare-fun m!1603147 () Bool)

(assert (=> b!1417250 m!1603147))

(declare-fun m!1603149 () Bool)

(assert (=> b!1417250 m!1603149))

(declare-fun m!1603151 () Bool)

(assert (=> b!1417250 m!1603151))

(declare-fun m!1603153 () Bool)

(assert (=> b!1417250 m!1603153))

(declare-fun m!1603155 () Bool)

(assert (=> b!1417250 m!1603155))

(declare-fun m!1603157 () Bool)

(assert (=> b!1417250 m!1603157))

(declare-fun m!1603159 () Bool)

(assert (=> b!1417250 m!1603159))

(declare-fun m!1603161 () Bool)

(assert (=> b!1417250 m!1603161))

(declare-fun m!1603163 () Bool)

(assert (=> b!1417250 m!1603163))

(declare-fun m!1603165 () Bool)

(assert (=> b!1417250 m!1603165))

(declare-fun m!1603167 () Bool)

(assert (=> b!1417250 m!1603167))

(declare-fun m!1603169 () Bool)

(assert (=> b!1417250 m!1603169))

(declare-fun m!1603171 () Bool)

(assert (=> b!1417250 m!1603171))

(declare-fun m!1603173 () Bool)

(assert (=> b!1417250 m!1603173))

(assert (=> b!1417250 m!1603147))

(declare-fun m!1603175 () Bool)

(assert (=> b!1417250 m!1603175))

(declare-fun m!1603177 () Bool)

(assert (=> b!1417250 m!1603177))

(declare-fun m!1603179 () Bool)

(assert (=> b!1417250 m!1603179))

(declare-fun m!1603181 () Bool)

(assert (=> b!1417250 m!1603181))

(assert (=> b!1417250 m!1603173))

(declare-fun m!1603183 () Bool)

(assert (=> b!1417250 m!1603183))

(assert (=> b!1417250 m!1603175))

(assert (=> b!1417250 m!1603173))

(declare-fun m!1603185 () Bool)

(assert (=> b!1417250 m!1603185))

(declare-fun m!1603187 () Bool)

(assert (=> b!1417250 m!1603187))

(assert (=> b!1417250 m!1603161))

(declare-fun m!1603189 () Bool)

(assert (=> b!1417250 m!1603189))

(assert (=> b!1417250 m!1603159))

(declare-fun m!1603191 () Bool)

(assert (=> b!1417250 m!1603191))

(declare-fun m!1603193 () Bool)

(assert (=> b!1417250 m!1603193))

(declare-fun m!1603195 () Bool)

(assert (=> b!1417250 m!1603195))

(declare-fun m!1603197 () Bool)

(assert (=> b!1417250 m!1603197))

(assert (=> b!1417250 m!1603155))

(assert (=> b!1417250 m!1603151))

(assert (=> b!1417250 m!1603179))

(assert (=> b!1417250 m!1603157))

(declare-fun m!1603199 () Bool)

(assert (=> b!1417250 m!1603199))

(assert (=> b!1417250 m!1603171))

(assert (=> b!1417250 m!1603147))

(declare-fun m!1603201 () Bool)

(assert (=> b!1417250 m!1603201))

(declare-fun m!1603203 () Bool)

(assert (=> b!1417250 m!1603203))

(declare-fun m!1603205 () Bool)

(assert (=> b!1417250 m!1603205))

(assert (=> b!1417250 m!1603139))

(assert (=> b!1417250 m!1603205))

(assert (=> b!1417250 m!1603193))

(assert (=> b!1417250 m!1603171))

(declare-fun m!1603207 () Bool)

(assert (=> b!1417250 m!1603207))

(assert (=> b!1417250 m!1603195))

(declare-fun m!1603209 () Bool)

(assert (=> b!1417250 m!1603209))

(declare-fun m!1603211 () Bool)

(assert (=> b!1417250 m!1603211))

(assert (=> b!1417250 m!1603147))

(declare-fun m!1603213 () Bool)

(assert (=> b!1417250 m!1603213))

(assert (=> b!1417250 m!1603139))

(assert (=> b!1417250 m!1603143))

(assert (=> b!1417250 m!1603169))

(declare-fun m!1603215 () Bool)

(assert (=> b!1417250 m!1603215))

(assert (=> b!1417250 m!1603171))

(assert (=> b!1417250 m!1603161))

(declare-fun m!1603217 () Bool)

(assert (=> b!1417250 m!1603217))

(assert (=> b!1417251 m!1603139))

(assert (=> b!1417251 m!1603139))

(assert (=> b!1417251 m!1603143))

(assert (=> b!1417251 m!1603143))

(assert (=> b!1417251 m!1603145))

(declare-fun m!1603219 () Bool)

(assert (=> b!1417251 m!1603219))

(assert (=> bm!95910 d!405747))

(declare-fun d!405749 () Bool)

(assert (=> d!405749 (= (list!5710 (ite c!232760 (tokens!1806 acc!229) (ite c!232762 (tokens!1806 (head!2729 objs!24)) (tokens!1806 acc!229)))) (list!5722 (c!232736 (ite c!232760 (tokens!1806 acc!229) (ite c!232762 (tokens!1806 (head!2729 objs!24)) (tokens!1806 acc!229))))))))

(declare-fun bs!339475 () Bool)

(assert (= bs!339475 d!405749))

(declare-fun m!1603221 () Bool)

(assert (=> bs!339475 m!1603221))

(assert (=> bm!95895 d!405749))

(declare-fun d!405751 () Bool)

(declare-fun res!641800 () Bool)

(declare-fun e!904702 () Bool)

(assert (=> d!405751 (=> res!641800 e!904702)))

(assert (=> d!405751 (= res!641800 ((_ is Nil!14528) (list!5708 objs!24)))))

(assert (=> d!405751 (= (forall!3600 (list!5708 objs!24) lambda!62569) e!904702)))

(declare-fun b!1417256 () Bool)

(declare-fun e!904703 () Bool)

(assert (=> b!1417256 (= e!904702 e!904703)))

(declare-fun res!641801 () Bool)

(assert (=> b!1417256 (=> (not res!641801) (not e!904703))))

(declare-fun dynLambda!6715 (Int PrintableTokens!840) Bool)

(assert (=> b!1417256 (= res!641801 (dynLambda!6715 lambda!62569 (h!19929 (list!5708 objs!24))))))

(declare-fun b!1417257 () Bool)

(assert (=> b!1417257 (= e!904703 (forall!3600 (t!124115 (list!5708 objs!24)) lambda!62569))))

(assert (= (and d!405751 (not res!641800)) b!1417256))

(assert (= (and b!1417256 res!641801) b!1417257))

(declare-fun b_lambda!44599 () Bool)

(assert (=> (not b_lambda!44599) (not b!1417256)))

(declare-fun m!1603223 () Bool)

(assert (=> b!1417256 m!1603223))

(declare-fun m!1603225 () Bool)

(assert (=> b!1417257 m!1603225))

(assert (=> d!405439 d!405751))

(assert (=> d!405439 d!405743))

(declare-fun d!405753 () Bool)

(declare-fun lt!476761 () Bool)

(assert (=> d!405753 (= lt!476761 (forall!3600 (list!5715 (c!232737 objs!24)) lambda!62569))))

(declare-fun e!904710 () Bool)

(assert (=> d!405753 (= lt!476761 e!904710)))

(declare-fun res!641807 () Bool)

(assert (=> d!405753 (=> res!641807 e!904710)))

(assert (=> d!405753 (= res!641807 ((_ is Empty!4863) (c!232737 objs!24)))))

(assert (=> d!405753 (= (forall!3601 (c!232737 objs!24) lambda!62569) lt!476761)))

(declare-fun b!1417268 () Bool)

(declare-fun e!904712 () Bool)

(declare-fun e!904711 () Bool)

(assert (=> b!1417268 (= e!904712 e!904711)))

(declare-fun lt!476762 () Unit!21314)

(declare-fun lemmaForallConcat!133 (List!14594 List!14594 Int) Unit!21314)

(assert (=> b!1417268 (= lt!476762 (lemmaForallConcat!133 (list!5715 (left!12417 (c!232737 objs!24))) (list!5715 (right!12747 (c!232737 objs!24))) lambda!62569))))

(declare-fun res!641806 () Bool)

(assert (=> b!1417268 (= res!641806 (forall!3601 (left!12417 (c!232737 objs!24)) lambda!62569))))

(assert (=> b!1417268 (=> (not res!641806) (not e!904711))))

(declare-fun b!1417267 () Bool)

(declare-fun forall!3608 (IArray!9731 Int) Bool)

(assert (=> b!1417267 (= e!904712 (forall!3608 (xs!7590 (c!232737 objs!24)) lambda!62569))))

(declare-fun b!1417269 () Bool)

(assert (=> b!1417269 (= e!904711 (forall!3601 (right!12747 (c!232737 objs!24)) lambda!62569))))

(declare-fun b!1417266 () Bool)

(assert (=> b!1417266 (= e!904710 e!904712)))

(declare-fun c!232882 () Bool)

(assert (=> b!1417266 (= c!232882 ((_ is Leaf!7324) (c!232737 objs!24)))))

(assert (= (and d!405753 (not res!641807)) b!1417266))

(assert (= (and b!1417266 c!232882) b!1417267))

(assert (= (and b!1417266 (not c!232882)) b!1417268))

(assert (= (and b!1417268 res!641806) b!1417269))

(assert (=> d!405753 m!1602011))

(assert (=> d!405753 m!1602011))

(declare-fun m!1603227 () Bool)

(assert (=> d!405753 m!1603227))

(assert (=> b!1417268 m!1602027))

(assert (=> b!1417268 m!1602025))

(assert (=> b!1417268 m!1602027))

(assert (=> b!1417268 m!1602025))

(declare-fun m!1603229 () Bool)

(assert (=> b!1417268 m!1603229))

(declare-fun m!1603231 () Bool)

(assert (=> b!1417268 m!1603231))

(declare-fun m!1603233 () Bool)

(assert (=> b!1417267 m!1603233))

(declare-fun m!1603235 () Bool)

(assert (=> b!1417269 m!1603235))

(assert (=> d!405439 d!405753))

(declare-fun d!405755 () Bool)

(assert (=> d!405755 (= (separableTokens!186 Lexer!2202 (tokens!1806 acc!229) (rules!11090 acc!229)) (tokensListTwoByTwoPredicateSeparable!96 Lexer!2202 (tokens!1806 acc!229) 0 (rules!11090 acc!229)))))

(declare-fun bs!339476 () Bool)

(assert (= bs!339476 d!405755))

(declare-fun m!1603237 () Bool)

(assert (=> bs!339476 m!1603237))

(assert (=> b!1416657 d!405755))

(declare-fun c!232883 () Bool)

(declare-fun d!405757 () Bool)

(assert (=> d!405757 (= c!232883 ((_ is Cons!14526) (ite c!232760 lt!476071 (ite c!232762 (t!124113 lt!476093) lt!476049))))))

(declare-fun e!904713 () List!14591)

(assert (=> d!405757 (= (printList!658 (ite c!232760 lt!476086 (ite c!232762 Lexer!2202 lt!476077)) (ite c!232760 lt!476071 (ite c!232762 (t!124113 lt!476093) lt!476049))) e!904713)))

(declare-fun b!1417270 () Bool)

(assert (=> b!1417270 (= e!904713 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 lt!476071 (ite c!232762 (t!124113 lt!476093) lt!476049))))) (printList!658 (ite c!232760 lt!476086 (ite c!232762 Lexer!2202 lt!476077)) (t!124113 (ite c!232760 lt!476071 (ite c!232762 (t!124113 lt!476093) lt!476049))))))))

(declare-fun b!1417271 () Bool)

(assert (=> b!1417271 (= e!904713 Nil!14525)))

(assert (= (and d!405757 c!232883) b!1417270))

(assert (= (and d!405757 (not c!232883)) b!1417271))

(declare-fun m!1603239 () Bool)

(assert (=> b!1417270 m!1603239))

(assert (=> b!1417270 m!1603239))

(declare-fun m!1603241 () Bool)

(assert (=> b!1417270 m!1603241))

(declare-fun m!1603243 () Bool)

(assert (=> b!1417270 m!1603243))

(assert (=> b!1417270 m!1603241))

(assert (=> b!1417270 m!1603243))

(declare-fun m!1603245 () Bool)

(assert (=> b!1417270 m!1603245))

(assert (=> bm!95897 d!405757))

(declare-fun d!405759 () Bool)

(assert (=> d!405759 (= (isEmpty!8907 lt!476106) (not ((_ is Some!2787) lt!476106)))))

(assert (=> d!405413 d!405759))

(declare-fun d!405761 () Bool)

(declare-fun lt!476763 () Bool)

(assert (=> d!405761 (= lt!476763 (isEmpty!8918 (list!5710 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405761 (= lt!476763 (isEmpty!8915 (c!232736 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405761 (= (isEmpty!8909 (tokens!1806 (head!2729 objs!24))) lt!476763)))

(declare-fun bs!339477 () Bool)

(assert (= bs!339477 d!405761))

(assert (=> bs!339477 m!1601611))

(assert (=> bs!339477 m!1601611))

(declare-fun m!1603247 () Bool)

(assert (=> bs!339477 m!1603247))

(declare-fun m!1603249 () Bool)

(assert (=> bs!339477 m!1603249))

(assert (=> d!405413 d!405761))

(declare-fun d!405763 () Bool)

(declare-fun e!904719 () Bool)

(assert (=> d!405763 e!904719))

(declare-fun res!641824 () Bool)

(assert (=> d!405763 (=> (not res!641824) (not e!904719))))

(assert (=> d!405763 (= res!641824 (rulesInvariant!2074 Lexer!2202 (rules!11090 acc!229)))))

(declare-fun Unit!21408 () Unit!21314)

(assert (=> d!405763 (= (lemmaInvariant!230 acc!229) Unit!21408)))

(declare-fun b!1417288 () Bool)

(declare-fun res!641825 () Bool)

(assert (=> b!1417288 (=> (not res!641825) (not e!904719))))

(assert (=> b!1417288 (= res!641825 (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 acc!229) (tokens!1806 acc!229)))))

(declare-fun b!1417289 () Bool)

(assert (=> b!1417289 (= e!904719 (separableTokens!186 Lexer!2202 (tokens!1806 acc!229) (rules!11090 acc!229)))))

(assert (= (and d!405763 res!641824) b!1417288))

(assert (= (and b!1417288 res!641825) b!1417289))

(assert (=> d!405763 m!1601825))

(assert (=> b!1417288 m!1601827))

(assert (=> b!1417289 m!1601829))

(assert (=> d!405413 d!405763))

(declare-fun d!405767 () Bool)

(declare-fun e!904720 () Bool)

(assert (=> d!405767 e!904720))

(declare-fun res!641826 () Bool)

(assert (=> d!405767 (=> (not res!641826) (not e!904720))))

(assert (=> d!405767 (= res!641826 (rulesInvariant!2074 Lexer!2202 (rules!11090 (head!2729 objs!24))))))

(declare-fun Unit!21409 () Unit!21314)

(assert (=> d!405767 (= (lemmaInvariant!230 (head!2729 objs!24)) Unit!21409)))

(declare-fun b!1417290 () Bool)

(declare-fun res!641827 () Bool)

(assert (=> b!1417290 (=> (not res!641827) (not e!904720))))

(assert (=> b!1417290 (= res!641827 (rulesProduceEachTokenIndividually!801 Lexer!2202 (rules!11090 (head!2729 objs!24)) (tokens!1806 (head!2729 objs!24))))))

(declare-fun b!1417291 () Bool)

(assert (=> b!1417291 (= e!904720 (separableTokens!186 Lexer!2202 (tokens!1806 (head!2729 objs!24)) (rules!11090 (head!2729 objs!24))))))

(assert (= (and d!405767 res!641826) b!1417290))

(assert (= (and b!1417290 res!641827) b!1417291))

(declare-fun m!1603265 () Bool)

(assert (=> d!405767 m!1603265))

(declare-fun m!1603267 () Bool)

(assert (=> b!1417290 m!1603267))

(declare-fun m!1603269 () Bool)

(assert (=> b!1417291 m!1603269))

(assert (=> d!405413 d!405767))

(declare-fun d!405769 () Bool)

(declare-fun res!641828 () Bool)

(declare-fun e!904721 () Bool)

(assert (=> d!405769 (=> (not res!641828) (not e!904721))))

(assert (=> d!405769 (= res!641828 (rulesValid!947 Lexer!2202 (rules!11090 acc!229)))))

(assert (=> d!405769 (= (rulesInvariant!2074 Lexer!2202 (rules!11090 acc!229)) e!904721)))

(declare-fun b!1417292 () Bool)

(assert (=> b!1417292 (= e!904721 (noDuplicateTag!947 Lexer!2202 (rules!11090 acc!229) Nil!14530))))

(assert (= (and d!405769 res!641828) b!1417292))

(declare-fun m!1603271 () Bool)

(assert (=> d!405769 m!1603271))

(declare-fun m!1603273 () Bool)

(assert (=> b!1417292 m!1603273))

(assert (=> b!1416655 d!405769))

(declare-fun d!405771 () Bool)

(assert (=> d!405771 (= (inv!19112 (xs!7589 (c!232736 (tokens!1806 sep!3)))) (<= (size!11984 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3))))) 2147483647))))

(declare-fun bs!339478 () Bool)

(assert (= bs!339478 d!405771))

(declare-fun m!1603275 () Bool)

(assert (=> bs!339478 m!1603275))

(assert (=> b!1416684 d!405771))

(assert (=> b!1416569 d!405509))

(declare-fun b!1417296 () Bool)

(declare-fun e!904722 () Bool)

(declare-fun lt!476773 () List!14592)

(assert (=> b!1417296 (= e!904722 (or (not (= (list!5710 (tokens!1806 (head!2729 objs!24))) Nil!14526)) (= lt!476773 (list!5710 (tokens!1806 acc!229)))))))

(declare-fun b!1417293 () Bool)

(declare-fun e!904723 () List!14592)

(assert (=> b!1417293 (= e!904723 (list!5710 (tokens!1806 (head!2729 objs!24))))))

(declare-fun b!1417294 () Bool)

(assert (=> b!1417294 (= e!904723 (Cons!14526 (h!19927 (list!5710 (tokens!1806 acc!229))) (++!3792 (t!124113 (list!5710 (tokens!1806 acc!229))) (list!5710 (tokens!1806 (head!2729 objs!24))))))))

(declare-fun b!1417295 () Bool)

(declare-fun res!641829 () Bool)

(assert (=> b!1417295 (=> (not res!641829) (not e!904722))))

(assert (=> b!1417295 (= res!641829 (= (size!11984 lt!476773) (+ (size!11984 (list!5710 (tokens!1806 acc!229))) (size!11984 (list!5710 (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun d!405773 () Bool)

(assert (=> d!405773 e!904722))

(declare-fun res!641830 () Bool)

(assert (=> d!405773 (=> (not res!641830) (not e!904722))))

(assert (=> d!405773 (= res!641830 (= (content!2146 lt!476773) ((_ map or) (content!2146 (list!5710 (tokens!1806 acc!229))) (content!2146 (list!5710 (tokens!1806 (head!2729 objs!24)))))))))

(assert (=> d!405773 (= lt!476773 e!904723)))

(declare-fun c!232884 () Bool)

(assert (=> d!405773 (= c!232884 ((_ is Nil!14526) (list!5710 (tokens!1806 acc!229))))))

(assert (=> d!405773 (= (++!3792 (list!5710 (tokens!1806 acc!229)) (list!5710 (tokens!1806 (head!2729 objs!24)))) lt!476773)))

(assert (= (and d!405773 c!232884) b!1417293))

(assert (= (and d!405773 (not c!232884)) b!1417294))

(assert (= (and d!405773 res!641830) b!1417295))

(assert (= (and b!1417295 res!641829) b!1417296))

(assert (=> b!1417294 m!1601611))

(declare-fun m!1603277 () Bool)

(assert (=> b!1417294 m!1603277))

(declare-fun m!1603279 () Bool)

(assert (=> b!1417295 m!1603279))

(assert (=> b!1417295 m!1601609))

(declare-fun m!1603281 () Bool)

(assert (=> b!1417295 m!1603281))

(assert (=> b!1417295 m!1601611))

(declare-fun m!1603283 () Bool)

(assert (=> b!1417295 m!1603283))

(declare-fun m!1603285 () Bool)

(assert (=> d!405773 m!1603285))

(assert (=> d!405773 m!1601609))

(declare-fun m!1603287 () Bool)

(assert (=> d!405773 m!1603287))

(assert (=> d!405773 m!1601611))

(declare-fun m!1603289 () Bool)

(assert (=> d!405773 m!1603289))

(assert (=> b!1416569 d!405773))

(declare-fun d!405775 () Bool)

(assert (=> d!405775 (= (list!5710 (tokens!1806 acc!229)) (list!5722 (c!232736 (tokens!1806 acc!229))))))

(declare-fun bs!339479 () Bool)

(assert (= bs!339479 d!405775))

(declare-fun m!1603291 () Bool)

(assert (=> bs!339479 m!1603291))

(assert (=> b!1416569 d!405775))

(declare-fun d!405777 () Bool)

(assert (=> d!405777 (= (list!5710 (tokens!1806 (get!4461 lt!476106))) (list!5722 (c!232736 (tokens!1806 (get!4461 lt!476106)))))))

(declare-fun bs!339480 () Bool)

(assert (= bs!339480 d!405777))

(declare-fun m!1603293 () Bool)

(assert (=> bs!339480 m!1603293))

(assert (=> b!1416569 d!405777))

(declare-fun d!405779 () Bool)

(assert (=> d!405779 (= (list!5710 (tokens!1806 (head!2729 objs!24))) (list!5722 (c!232736 (tokens!1806 (head!2729 objs!24)))))))

(declare-fun bs!339481 () Bool)

(assert (= bs!339481 d!405779))

(declare-fun m!1603295 () Bool)

(assert (=> bs!339481 m!1603295))

(assert (=> b!1416569 d!405779))

(declare-fun d!405781 () Bool)

(assert (=> d!405781 (= (inv!19092 (tag!2791 (h!19928 (rules!11090 acc!229)))) (= (mod (str.len (value!81708 (tag!2791 (h!19928 (rules!11090 acc!229))))) 2) 0))))

(assert (=> b!1416695 d!405781))

(declare-fun d!405783 () Bool)

(declare-fun res!641839 () Bool)

(declare-fun e!904732 () Bool)

(assert (=> d!405783 (=> (not res!641839) (not e!904732))))

(declare-fun semiInverseModEq!978 (Int Int) Bool)

(assert (=> d!405783 (= res!641839 (semiInverseModEq!978 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 acc!229)))) (toValue!3828 (transformation!2529 (h!19928 (rules!11090 acc!229))))))))

(assert (=> d!405783 (= (inv!19113 (transformation!2529 (h!19928 (rules!11090 acc!229)))) e!904732)))

(declare-fun b!1417305 () Bool)

(declare-fun equivClasses!937 (Int Int) Bool)

(assert (=> b!1417305 (= e!904732 (equivClasses!937 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 acc!229)))) (toValue!3828 (transformation!2529 (h!19928 (rules!11090 acc!229))))))))

(assert (= (and d!405783 res!641839) b!1417305))

(declare-fun m!1603297 () Bool)

(assert (=> d!405783 m!1603297))

(declare-fun m!1603299 () Bool)

(assert (=> b!1417305 m!1603299))

(assert (=> b!1416695 d!405783))

(declare-fun lt!476798 () BalanceConc!9662)

(declare-fun d!405785 () Bool)

(assert (=> d!405785 (= (list!5709 lt!476798) (originalCharacters!3391 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))))

(declare-fun dynLambda!6716 (Int TokenValue!2619) BalanceConc!9662)

(assert (=> d!405785 (= lt!476798 (dynLambda!6716 (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))) (value!81709 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))))

(assert (=> d!405785 (= (charsOf!1475 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))) lt!476798)))

(declare-fun b_lambda!44601 () Bool)

(assert (=> (not b_lambda!44601) (not d!405785)))

(declare-fun t!124170 () Bool)

(declare-fun tb!73521 () Bool)

(assert (=> (and b!1416696 (= (toChars!3687 (transformation!2529 (h!19928 (rules!11090 acc!229)))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124170) tb!73521))

(declare-fun tp!402031 () Bool)

(declare-fun e!904735 () Bool)

(declare-fun b!1417310 () Bool)

(declare-fun inv!19117 (Conc!4861) Bool)

(assert (=> b!1417310 (= e!904735 (and (inv!19117 (c!232735 (dynLambda!6716 (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))) (value!81709 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) tp!402031))))

(declare-fun result!89562 () Bool)

(declare-fun inv!19118 (BalanceConc!9662) Bool)

(assert (=> tb!73521 (= result!89562 (and (inv!19118 (dynLambda!6716 (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))) (value!81709 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093))))) e!904735))))

(assert (= tb!73521 b!1417310))

(declare-fun m!1603325 () Bool)

(assert (=> b!1417310 m!1603325))

(declare-fun m!1603327 () Bool)

(assert (=> tb!73521 m!1603327))

(assert (=> d!405785 t!124170))

(declare-fun b_and!94895 () Bool)

(assert (= b_and!94881 (and (=> t!124170 result!89562) b_and!94895)))

(declare-fun t!124172 () Bool)

(declare-fun tb!73523 () Bool)

(assert (=> (and b!1416699 (= (toChars!3687 (transformation!2529 (h!19928 (rules!11090 sep!3)))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124172) tb!73523))

(declare-fun result!89566 () Bool)

(assert (= result!89566 result!89562))

(assert (=> d!405785 t!124172))

(declare-fun b_and!94897 () Bool)

(assert (= b_and!94885 (and (=> t!124172 result!89566) b_and!94897)))

(declare-fun m!1603329 () Bool)

(assert (=> d!405785 m!1603329))

(declare-fun m!1603331 () Bool)

(assert (=> d!405785 m!1603331))

(assert (=> bm!95883 d!405785))

(declare-fun d!405793 () Bool)

(declare-fun c!232885 () Bool)

(assert (=> d!405793 (= c!232885 ((_ is Cons!14526) (ite (or c!232760 c!232762) Nil!14526 lt!476091)))))

(declare-fun e!904736 () List!14591)

(assert (=> d!405793 (= (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476055) (ite (or c!232760 c!232762) Nil!14526 lt!476091)) e!904736)))

(declare-fun b!1417311 () Bool)

(assert (=> b!1417311 (= e!904736 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite (or c!232760 c!232762) Nil!14526 lt!476091)))) (printList!658 (ite (or c!232760 c!232762) Lexer!2202 lt!476055) (t!124113 (ite (or c!232760 c!232762) Nil!14526 lt!476091)))))))

(declare-fun b!1417312 () Bool)

(assert (=> b!1417312 (= e!904736 Nil!14525)))

(assert (= (and d!405793 c!232885) b!1417311))

(assert (= (and d!405793 (not c!232885)) b!1417312))

(declare-fun m!1603333 () Bool)

(assert (=> b!1417311 m!1603333))

(assert (=> b!1417311 m!1603333))

(declare-fun m!1603335 () Bool)

(assert (=> b!1417311 m!1603335))

(declare-fun m!1603337 () Bool)

(assert (=> b!1417311 m!1603337))

(assert (=> b!1417311 m!1603335))

(assert (=> b!1417311 m!1603337))

(declare-fun m!1603339 () Bool)

(assert (=> b!1417311 m!1603339))

(assert (=> bm!95890 d!405793))

(declare-fun d!405795 () Bool)

(declare-fun c!232886 () Bool)

(assert (=> d!405795 (= c!232886 ((_ is Cons!14526) (ite c!232760 lt!476066 call!95892)))))

(declare-fun e!904737 () List!14591)

(assert (=> d!405795 (= (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 lt!476066 call!95892)) e!904737)))

(declare-fun b!1417313 () Bool)

(assert (=> b!1417313 (= e!904737 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 lt!476066 call!95892)))) (printList!658 (ite c!232760 lt!476086 (ite c!232762 lt!476100 lt!476055)) (t!124113 (ite c!232760 lt!476066 call!95892)))))))

(declare-fun b!1417314 () Bool)

(assert (=> b!1417314 (= e!904737 Nil!14525)))

(assert (= (and d!405795 c!232886) b!1417313))

(assert (= (and d!405795 (not c!232886)) b!1417314))

(declare-fun m!1603341 () Bool)

(assert (=> b!1417313 m!1603341))

(assert (=> b!1417313 m!1603341))

(declare-fun m!1603343 () Bool)

(assert (=> b!1417313 m!1603343))

(declare-fun m!1603345 () Bool)

(assert (=> b!1417313 m!1603345))

(assert (=> b!1417313 m!1603343))

(assert (=> b!1417313 m!1603345))

(declare-fun m!1603347 () Bool)

(assert (=> b!1417313 m!1603347))

(assert (=> bm!95892 d!405795))

(declare-fun d!405797 () Bool)

(declare-fun c!232887 () Bool)

(assert (=> d!405797 (= c!232887 ((_ is Node!4863) (left!12417 (c!232737 objs!24))))))

(declare-fun e!904738 () Bool)

(assert (=> d!405797 (= (inv!19100 (left!12417 (c!232737 objs!24))) e!904738)))

(declare-fun b!1417315 () Bool)

(assert (=> b!1417315 (= e!904738 (inv!19109 (left!12417 (c!232737 objs!24))))))

(declare-fun b!1417316 () Bool)

(declare-fun e!904739 () Bool)

(assert (=> b!1417316 (= e!904738 e!904739)))

(declare-fun res!641840 () Bool)

(assert (=> b!1417316 (= res!641840 (not ((_ is Leaf!7324) (left!12417 (c!232737 objs!24)))))))

(assert (=> b!1417316 (=> res!641840 e!904739)))

(declare-fun b!1417317 () Bool)

(assert (=> b!1417317 (= e!904739 (inv!19110 (left!12417 (c!232737 objs!24))))))

(assert (= (and d!405797 c!232887) b!1417315))

(assert (= (and d!405797 (not c!232887)) b!1417316))

(assert (= (and b!1417316 (not res!641840)) b!1417317))

(declare-fun m!1603349 () Bool)

(assert (=> b!1417315 m!1603349))

(declare-fun m!1603351 () Bool)

(assert (=> b!1417317 m!1603351))

(assert (=> b!1416672 d!405797))

(declare-fun d!405799 () Bool)

(declare-fun c!232888 () Bool)

(assert (=> d!405799 (= c!232888 ((_ is Node!4863) (right!12747 (c!232737 objs!24))))))

(declare-fun e!904740 () Bool)

(assert (=> d!405799 (= (inv!19100 (right!12747 (c!232737 objs!24))) e!904740)))

(declare-fun b!1417318 () Bool)

(assert (=> b!1417318 (= e!904740 (inv!19109 (right!12747 (c!232737 objs!24))))))

(declare-fun b!1417319 () Bool)

(declare-fun e!904741 () Bool)

(assert (=> b!1417319 (= e!904740 e!904741)))

(declare-fun res!641841 () Bool)

(assert (=> b!1417319 (= res!641841 (not ((_ is Leaf!7324) (right!12747 (c!232737 objs!24)))))))

(assert (=> b!1417319 (=> res!641841 e!904741)))

(declare-fun b!1417320 () Bool)

(assert (=> b!1417320 (= e!904741 (inv!19110 (right!12747 (c!232737 objs!24))))))

(assert (= (and d!405799 c!232888) b!1417318))

(assert (= (and d!405799 (not c!232888)) b!1417319))

(assert (= (and b!1417319 (not res!641841)) b!1417320))

(declare-fun m!1603353 () Bool)

(assert (=> b!1417318 m!1603353))

(declare-fun m!1603355 () Bool)

(assert (=> b!1417320 m!1603355))

(assert (=> b!1416672 d!405799))

(declare-fun d!405801 () Bool)

(declare-fun c!232889 () Bool)

(assert (=> d!405801 (= c!232889 ((_ is Node!4862) (left!12416 (c!232736 (tokens!1806 acc!229)))))))

(declare-fun e!904742 () Bool)

(assert (=> d!405801 (= (inv!19098 (left!12416 (c!232736 (tokens!1806 acc!229)))) e!904742)))

(declare-fun b!1417321 () Bool)

(assert (=> b!1417321 (= e!904742 (inv!19107 (left!12416 (c!232736 (tokens!1806 acc!229)))))))

(declare-fun b!1417322 () Bool)

(declare-fun e!904743 () Bool)

(assert (=> b!1417322 (= e!904742 e!904743)))

(declare-fun res!641842 () Bool)

(assert (=> b!1417322 (= res!641842 (not ((_ is Leaf!7323) (left!12416 (c!232736 (tokens!1806 acc!229))))))))

(assert (=> b!1417322 (=> res!641842 e!904743)))

(declare-fun b!1417323 () Bool)

(assert (=> b!1417323 (= e!904743 (inv!19108 (left!12416 (c!232736 (tokens!1806 acc!229)))))))

(assert (= (and d!405801 c!232889) b!1417321))

(assert (= (and d!405801 (not c!232889)) b!1417322))

(assert (= (and b!1417322 (not res!641842)) b!1417323))

(declare-fun m!1603357 () Bool)

(assert (=> b!1417321 m!1603357))

(declare-fun m!1603359 () Bool)

(assert (=> b!1417323 m!1603359))

(assert (=> b!1416700 d!405801))

(declare-fun d!405803 () Bool)

(declare-fun c!232890 () Bool)

(assert (=> d!405803 (= c!232890 ((_ is Node!4862) (right!12746 (c!232736 (tokens!1806 acc!229)))))))

(declare-fun e!904744 () Bool)

(assert (=> d!405803 (= (inv!19098 (right!12746 (c!232736 (tokens!1806 acc!229)))) e!904744)))

(declare-fun b!1417324 () Bool)

(assert (=> b!1417324 (= e!904744 (inv!19107 (right!12746 (c!232736 (tokens!1806 acc!229)))))))

(declare-fun b!1417325 () Bool)

(declare-fun e!904745 () Bool)

(assert (=> b!1417325 (= e!904744 e!904745)))

(declare-fun res!641843 () Bool)

(assert (=> b!1417325 (= res!641843 (not ((_ is Leaf!7323) (right!12746 (c!232736 (tokens!1806 acc!229))))))))

(assert (=> b!1417325 (=> res!641843 e!904745)))

(declare-fun b!1417326 () Bool)

(assert (=> b!1417326 (= e!904745 (inv!19108 (right!12746 (c!232736 (tokens!1806 acc!229)))))))

(assert (= (and d!405803 c!232890) b!1417324))

(assert (= (and d!405803 (not c!232890)) b!1417325))

(assert (= (and b!1417325 (not res!641843)) b!1417326))

(declare-fun m!1603361 () Bool)

(assert (=> b!1417324 m!1603361))

(declare-fun m!1603363 () Bool)

(assert (=> b!1417326 m!1603363))

(assert (=> b!1416700 d!405803))

(declare-fun c!232891 () Bool)

(declare-fun d!405805 () Bool)

(assert (=> d!405805 (= c!232891 ((_ is Cons!14526) (ite c!232760 (t!124113 lt!476085) (ite c!232762 lt!476065 lt!476046))))))

(declare-fun e!904746 () List!14591)

(assert (=> d!405805 (= (printList!658 (ite c!232760 Lexer!2202 (ite c!232762 lt!476100 lt!476055)) (ite c!232760 (t!124113 lt!476085) (ite c!232762 lt!476065 lt!476046))) e!904746)))

(declare-fun b!1417327 () Bool)

(assert (=> b!1417327 (= e!904746 (++!3790 (list!5709 (charsOf!1475 (h!19927 (ite c!232760 (t!124113 lt!476085) (ite c!232762 lt!476065 lt!476046))))) (printList!658 (ite c!232760 Lexer!2202 (ite c!232762 lt!476100 lt!476055)) (t!124113 (ite c!232760 (t!124113 lt!476085) (ite c!232762 lt!476065 lt!476046))))))))

(declare-fun b!1417328 () Bool)

(assert (=> b!1417328 (= e!904746 Nil!14525)))

(assert (= (and d!405805 c!232891) b!1417327))

(assert (= (and d!405805 (not c!232891)) b!1417328))

(declare-fun m!1603365 () Bool)

(assert (=> b!1417327 m!1603365))

(assert (=> b!1417327 m!1603365))

(declare-fun m!1603367 () Bool)

(assert (=> b!1417327 m!1603367))

(declare-fun m!1603369 () Bool)

(assert (=> b!1417327 m!1603369))

(assert (=> b!1417327 m!1603367))

(assert (=> b!1417327 m!1603369))

(declare-fun m!1603371 () Bool)

(assert (=> b!1417327 m!1603371))

(assert (=> bm!95908 d!405805))

(declare-fun b!1417329 () Bool)

(declare-fun res!641848 () Bool)

(declare-fun e!904748 () Bool)

(assert (=> b!1417329 (=> (not res!641848) (not e!904748))))

(assert (=> b!1417329 (= res!641848 (isBalanced!1443 (right!12747 (c!232737 objs!24))))))

(declare-fun b!1417330 () Bool)

(assert (=> b!1417330 (= e!904748 (not (isEmpty!8906 (right!12747 (c!232737 objs!24)))))))

(declare-fun d!405807 () Bool)

(declare-fun res!641844 () Bool)

(declare-fun e!904747 () Bool)

(assert (=> d!405807 (=> res!641844 e!904747)))

(assert (=> d!405807 (= res!641844 (not ((_ is Node!4863) (c!232737 objs!24))))))

(assert (=> d!405807 (= (isBalanced!1443 (c!232737 objs!24)) e!904747)))

(declare-fun b!1417331 () Bool)

(declare-fun res!641847 () Bool)

(assert (=> b!1417331 (=> (not res!641847) (not e!904748))))

(assert (=> b!1417331 (= res!641847 (not (isEmpty!8906 (left!12417 (c!232737 objs!24)))))))

(declare-fun b!1417332 () Bool)

(assert (=> b!1417332 (= e!904747 e!904748)))

(declare-fun res!641849 () Bool)

(assert (=> b!1417332 (=> (not res!641849) (not e!904748))))

(assert (=> b!1417332 (= res!641849 (<= (- 1) (- (height!704 (left!12417 (c!232737 objs!24))) (height!704 (right!12747 (c!232737 objs!24))))))))

(declare-fun b!1417333 () Bool)

(declare-fun res!641846 () Bool)

(assert (=> b!1417333 (=> (not res!641846) (not e!904748))))

(assert (=> b!1417333 (= res!641846 (<= (- (height!704 (left!12417 (c!232737 objs!24))) (height!704 (right!12747 (c!232737 objs!24)))) 1))))

(declare-fun b!1417334 () Bool)

(declare-fun res!641845 () Bool)

(assert (=> b!1417334 (=> (not res!641845) (not e!904748))))

(assert (=> b!1417334 (= res!641845 (isBalanced!1443 (left!12417 (c!232737 objs!24))))))

(assert (= (and d!405807 (not res!641844)) b!1417332))

(assert (= (and b!1417332 res!641849) b!1417333))

(assert (= (and b!1417333 res!641846) b!1417334))

(assert (= (and b!1417334 res!641845) b!1417329))

(assert (= (and b!1417329 res!641848) b!1417331))

(assert (= (and b!1417331 res!641847) b!1417330))

(assert (=> b!1417331 m!1602007))

(declare-fun m!1603373 () Bool)

(assert (=> b!1417334 m!1603373))

(assert (=> b!1417332 m!1603127))

(assert (=> b!1417332 m!1603129))

(assert (=> b!1417333 m!1603127))

(assert (=> b!1417333 m!1603129))

(declare-fun m!1603375 () Bool)

(assert (=> b!1417329 m!1603375))

(declare-fun m!1603377 () Bool)

(assert (=> b!1417330 m!1603377))

(assert (=> d!405441 d!405807))

(declare-fun d!405809 () Bool)

(assert (=> d!405809 (= (list!5710 (ite c!232760 (tokens!1806 (head!2729 objs!24)) (ite c!232762 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24))))) (list!5722 (c!232736 (ite c!232760 (tokens!1806 (head!2729 objs!24)) (ite c!232762 (tokens!1806 acc!229) (tokens!1806 (head!2729 objs!24)))))))))

(declare-fun bs!339484 () Bool)

(assert (= bs!339484 d!405809))

(declare-fun m!1603379 () Bool)

(assert (=> bs!339484 m!1603379))

(assert (=> bm!95878 d!405809))

(declare-fun d!405811 () Bool)

(assert (=> d!405811 (= (inv!19092 (tag!2791 (h!19928 (rules!11090 sep!3)))) (= (mod (str.len (value!81708 (tag!2791 (h!19928 (rules!11090 sep!3))))) 2) 0))))

(assert (=> b!1416698 d!405811))

(declare-fun d!405813 () Bool)

(declare-fun res!641850 () Bool)

(declare-fun e!904749 () Bool)

(assert (=> d!405813 (=> (not res!641850) (not e!904749))))

(assert (=> d!405813 (= res!641850 (semiInverseModEq!978 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 sep!3)))) (toValue!3828 (transformation!2529 (h!19928 (rules!11090 sep!3))))))))

(assert (=> d!405813 (= (inv!19113 (transformation!2529 (h!19928 (rules!11090 sep!3)))) e!904749)))

(declare-fun b!1417335 () Bool)

(assert (=> b!1417335 (= e!904749 (equivClasses!937 (toChars!3687 (transformation!2529 (h!19928 (rules!11090 sep!3)))) (toValue!3828 (transformation!2529 (h!19928 (rules!11090 sep!3))))))))

(assert (= (and d!405813 res!641850) b!1417335))

(declare-fun m!1603381 () Bool)

(assert (=> d!405813 m!1603381))

(declare-fun m!1603383 () Bool)

(assert (=> b!1417335 m!1603383))

(assert (=> b!1416698 d!405813))

(assert (=> b!1416498 d!405437))

(declare-fun d!405815 () Bool)

(declare-fun prefixMatchZipperSequence!313 (Regex!3843 BalanceConc!9662) Bool)

(declare-fun rulesRegex!373 (LexerInterface!2204 List!14593) Regex!3843)

(assert (=> d!405815 (= (separableTokensPredicate!481 Lexer!2202 (last!74 (tokens!1806 acc!229)) (head!2730 (tokens!1806 (head!2729 objs!24))) (rules!11090 acc!229)) (not (prefixMatchZipperSequence!313 (rulesRegex!373 Lexer!2202 (rules!11090 acc!229)) (++!3799 (charsOf!1475 (last!74 (tokens!1806 acc!229))) (singletonSeq!1165 (apply!3710 (charsOf!1475 (head!2730 (tokens!1806 (head!2729 objs!24)))) 0))))))))

(declare-fun bs!339485 () Bool)

(assert (= bs!339485 d!405815))

(assert (=> bs!339485 m!1601561))

(declare-fun m!1603385 () Bool)

(assert (=> bs!339485 m!1603385))

(assert (=> bs!339485 m!1603385))

(declare-fun m!1603387 () Bool)

(assert (=> bs!339485 m!1603387))

(declare-fun m!1603389 () Bool)

(assert (=> bs!339485 m!1603389))

(declare-fun m!1603391 () Bool)

(assert (=> bs!339485 m!1603391))

(assert (=> bs!339485 m!1603387))

(assert (=> bs!339485 m!1601565))

(declare-fun m!1603393 () Bool)

(assert (=> bs!339485 m!1603393))

(assert (=> bs!339485 m!1603393))

(assert (=> bs!339485 m!1603391))

(declare-fun m!1603395 () Bool)

(assert (=> bs!339485 m!1603395))

(assert (=> bs!339485 m!1603389))

(declare-fun m!1603397 () Bool)

(assert (=> bs!339485 m!1603397))

(assert (=> bs!339485 m!1603395))

(assert (=> b!1416566 d!405815))

(declare-fun d!405817 () Bool)

(declare-fun lt!476812 () Bool)

(declare-fun e!904759 () Bool)

(assert (=> d!405817 (= lt!476812 e!904759)))

(declare-fun res!641871 () Bool)

(assert (=> d!405817 (=> (not res!641871) (not e!904759))))

(assert (=> d!405817 (= res!641871 (= (list!5710 (_1!7882 (lex!1010 lt!476103 (rules!11090 acc!229) (print!972 lt!476103 (singletonSeq!1164 lt!476092))))) (list!5710 (singletonSeq!1164 lt!476092))))))

(declare-fun e!904758 () Bool)

(assert (=> d!405817 (= lt!476812 e!904758)))

(declare-fun res!641872 () Bool)

(assert (=> d!405817 (=> (not res!641872) (not e!904758))))

(declare-fun lt!476811 () tuple2!13992)

(assert (=> d!405817 (= res!641872 (= (size!11985 (_1!7882 lt!476811)) 1))))

(assert (=> d!405817 (= lt!476811 (lex!1010 lt!476103 (rules!11090 acc!229) (print!972 lt!476103 (singletonSeq!1164 lt!476092))))))

(assert (=> d!405817 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405817 (= (rulesProduceIndividualToken!1167 lt!476103 (rules!11090 acc!229) lt!476092) lt!476812)))

(declare-fun b!1417355 () Bool)

(declare-fun res!641870 () Bool)

(assert (=> b!1417355 (=> (not res!641870) (not e!904758))))

(assert (=> b!1417355 (= res!641870 (= (apply!3712 (_1!7882 lt!476811) 0) lt!476092))))

(declare-fun b!1417356 () Bool)

(assert (=> b!1417356 (= e!904758 (isEmpty!8921 (_2!7882 lt!476811)))))

(declare-fun b!1417357 () Bool)

(assert (=> b!1417357 (= e!904759 (isEmpty!8921 (_2!7882 (lex!1010 lt!476103 (rules!11090 acc!229) (print!972 lt!476103 (singletonSeq!1164 lt!476092))))))))

(assert (= (and d!405817 res!641872) b!1417355))

(assert (= (and b!1417355 res!641870) b!1417356))

(assert (= (and d!405817 res!641871) b!1417357))

(declare-fun m!1603431 () Bool)

(assert (=> d!405817 m!1603431))

(assert (=> d!405817 m!1601823))

(assert (=> d!405817 m!1603431))

(declare-fun m!1603433 () Bool)

(assert (=> d!405817 m!1603433))

(declare-fun m!1603435 () Bool)

(assert (=> d!405817 m!1603435))

(assert (=> d!405817 m!1603431))

(declare-fun m!1603437 () Bool)

(assert (=> d!405817 m!1603437))

(assert (=> d!405817 m!1603437))

(declare-fun m!1603439 () Bool)

(assert (=> d!405817 m!1603439))

(declare-fun m!1603441 () Bool)

(assert (=> d!405817 m!1603441))

(declare-fun m!1603443 () Bool)

(assert (=> b!1417355 m!1603443))

(declare-fun m!1603445 () Bool)

(assert (=> b!1417356 m!1603445))

(assert (=> b!1417357 m!1603431))

(assert (=> b!1417357 m!1603431))

(assert (=> b!1417357 m!1603437))

(assert (=> b!1417357 m!1603437))

(assert (=> b!1417357 m!1603439))

(declare-fun m!1603447 () Bool)

(assert (=> b!1417357 m!1603447))

(assert (=> b!1416566 d!405817))

(declare-fun d!405825 () Bool)

(declare-fun lt!476814 () Bool)

(declare-fun e!904761 () Bool)

(assert (=> d!405825 (= lt!476814 e!904761)))

(declare-fun res!641874 () Bool)

(assert (=> d!405825 (=> (not res!641874) (not e!904761))))

(assert (=> d!405825 (= res!641874 (= (list!5710 (_1!7882 (lex!1010 lt!476083 (rules!11090 acc!229) (print!972 lt!476083 (singletonSeq!1164 lt!476047))))) (list!5710 (singletonSeq!1164 lt!476047))))))

(declare-fun e!904760 () Bool)

(assert (=> d!405825 (= lt!476814 e!904760)))

(declare-fun res!641875 () Bool)

(assert (=> d!405825 (=> (not res!641875) (not e!904760))))

(declare-fun lt!476813 () tuple2!13992)

(assert (=> d!405825 (= res!641875 (= (size!11985 (_1!7882 lt!476813)) 1))))

(assert (=> d!405825 (= lt!476813 (lex!1010 lt!476083 (rules!11090 acc!229) (print!972 lt!476083 (singletonSeq!1164 lt!476047))))))

(assert (=> d!405825 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405825 (= (rulesProduceIndividualToken!1167 lt!476083 (rules!11090 acc!229) lt!476047) lt!476814)))

(declare-fun b!1417358 () Bool)

(declare-fun res!641873 () Bool)

(assert (=> b!1417358 (=> (not res!641873) (not e!904760))))

(assert (=> b!1417358 (= res!641873 (= (apply!3712 (_1!7882 lt!476813) 0) lt!476047))))

(declare-fun b!1417359 () Bool)

(assert (=> b!1417359 (= e!904760 (isEmpty!8921 (_2!7882 lt!476813)))))

(declare-fun b!1417360 () Bool)

(assert (=> b!1417360 (= e!904761 (isEmpty!8921 (_2!7882 (lex!1010 lt!476083 (rules!11090 acc!229) (print!972 lt!476083 (singletonSeq!1164 lt!476047))))))))

(assert (= (and d!405825 res!641875) b!1417358))

(assert (= (and b!1417358 res!641873) b!1417359))

(assert (= (and d!405825 res!641874) b!1417360))

(declare-fun m!1603449 () Bool)

(assert (=> d!405825 m!1603449))

(assert (=> d!405825 m!1601823))

(assert (=> d!405825 m!1603449))

(declare-fun m!1603451 () Bool)

(assert (=> d!405825 m!1603451))

(declare-fun m!1603453 () Bool)

(assert (=> d!405825 m!1603453))

(assert (=> d!405825 m!1603449))

(declare-fun m!1603455 () Bool)

(assert (=> d!405825 m!1603455))

(assert (=> d!405825 m!1603455))

(declare-fun m!1603457 () Bool)

(assert (=> d!405825 m!1603457))

(declare-fun m!1603459 () Bool)

(assert (=> d!405825 m!1603459))

(declare-fun m!1603461 () Bool)

(assert (=> b!1417358 m!1603461))

(declare-fun m!1603463 () Bool)

(assert (=> b!1417359 m!1603463))

(assert (=> b!1417360 m!1603449))

(assert (=> b!1417360 m!1603449))

(assert (=> b!1417360 m!1603455))

(assert (=> b!1417360 m!1603455))

(assert (=> b!1417360 m!1603457))

(declare-fun m!1603465 () Bool)

(assert (=> b!1417360 m!1603465))

(assert (=> b!1416566 d!405825))

(declare-fun d!405827 () Bool)

(declare-fun lt!476817 () Token!4720)

(declare-fun last!78 (List!14592) Token!4720)

(assert (=> d!405827 (= lt!476817 (last!78 (list!5710 (tokens!1806 acc!229))))))

(declare-fun last!79 (Conc!4862) Token!4720)

(assert (=> d!405827 (= lt!476817 (last!79 (c!232736 (tokens!1806 acc!229))))))

(assert (=> d!405827 (not (isEmpty!8909 (tokens!1806 acc!229)))))

(assert (=> d!405827 (= (last!74 (tokens!1806 acc!229)) lt!476817)))

(declare-fun bs!339487 () Bool)

(assert (= bs!339487 d!405827))

(assert (=> bs!339487 m!1601609))

(assert (=> bs!339487 m!1601609))

(declare-fun m!1603467 () Bool)

(assert (=> bs!339487 m!1603467))

(declare-fun m!1603469 () Bool)

(assert (=> bs!339487 m!1603469))

(assert (=> bs!339487 m!1601631))

(assert (=> b!1416566 d!405827))

(declare-fun d!405829 () Bool)

(assert (=> d!405829 (rulesProduceIndividualToken!1167 lt!476083 (rules!11090 acc!229) lt!476047)))

(declare-fun lt!476854 () Unit!21314)

(declare-fun choose!8738 (LexerInterface!2204 List!14593 List!14592 Token!4720) Unit!21314)

(assert (=> d!405829 (= lt!476854 (choose!8738 lt!476083 (rules!11090 acc!229) lt!476069 lt!476047))))

(assert (=> d!405829 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405829 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476083 (rules!11090 acc!229) lt!476069 lt!476047) lt!476854)))

(declare-fun bs!339490 () Bool)

(assert (= bs!339490 d!405829))

(assert (=> bs!339490 m!1601559))

(declare-fun m!1603585 () Bool)

(assert (=> bs!339490 m!1603585))

(assert (=> bs!339490 m!1601823))

(assert (=> b!1416566 d!405829))

(declare-fun d!405841 () Bool)

(declare-fun lt!476862 () Token!4720)

(assert (=> d!405841 (= lt!476862 (head!2740 (list!5710 (tokens!1806 (head!2729 objs!24)))))))

(declare-fun head!2743 (Conc!4862) Token!4720)

(assert (=> d!405841 (= lt!476862 (head!2743 (c!232736 (tokens!1806 (head!2729 objs!24)))))))

(assert (=> d!405841 (not (isEmpty!8909 (tokens!1806 (head!2729 objs!24))))))

(assert (=> d!405841 (= (head!2730 (tokens!1806 (head!2729 objs!24))) lt!476862)))

(declare-fun bs!339491 () Bool)

(assert (= bs!339491 d!405841))

(assert (=> bs!339491 m!1601611))

(assert (=> bs!339491 m!1601611))

(declare-fun m!1603597 () Bool)

(assert (=> bs!339491 m!1603597))

(declare-fun m!1603599 () Bool)

(assert (=> bs!339491 m!1603599))

(assert (=> bs!339491 m!1601623))

(assert (=> b!1416566 d!405841))

(declare-fun d!405845 () Bool)

(assert (=> d!405845 (rulesProduceIndividualToken!1167 lt!476103 (rules!11090 acc!229) lt!476092)))

(declare-fun lt!476863 () Unit!21314)

(assert (=> d!405845 (= lt!476863 (choose!8738 lt!476103 (rules!11090 acc!229) lt!476104 lt!476092))))

(assert (=> d!405845 (not (isEmpty!8913 (rules!11090 acc!229)))))

(assert (=> d!405845 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!352 lt!476103 (rules!11090 acc!229) lt!476104 lt!476092) lt!476863)))

(declare-fun bs!339492 () Bool)

(assert (= bs!339492 d!405845))

(assert (=> bs!339492 m!1601567))

(declare-fun m!1603601 () Bool)

(assert (=> bs!339492 m!1603601))

(assert (=> bs!339492 m!1601823))

(assert (=> b!1416566 d!405845))

(declare-fun d!405847 () Bool)

(assert (=> d!405847 (= (list!5708 lt!476317) (list!5715 (c!232737 lt!476317)))))

(declare-fun bs!339493 () Bool)

(assert (= bs!339493 d!405847))

(declare-fun m!1603605 () Bool)

(assert (=> bs!339493 m!1603605))

(assert (=> b!1416663 d!405847))

(declare-fun d!405849 () Bool)

(assert (=> d!405849 (= (tail!2094 (list!5708 objs!24)) (t!124115 (list!5708 objs!24)))))

(assert (=> b!1416663 d!405849))

(assert (=> b!1416663 d!405743))

(declare-fun d!405853 () Bool)

(declare-fun lt!476864 () Int)

(assert (=> d!405853 (>= lt!476864 0)))

(declare-fun e!904795 () Int)

(assert (=> d!405853 (= lt!476864 e!904795)))

(declare-fun c!232901 () Bool)

(assert (=> d!405853 (= c!232901 ((_ is Nil!14528) (list!5708 objs!24)))))

(assert (=> d!405853 (= (size!11975 (list!5708 objs!24)) lt!476864)))

(declare-fun b!1417405 () Bool)

(assert (=> b!1417405 (= e!904795 0)))

(declare-fun b!1417406 () Bool)

(assert (=> b!1417406 (= e!904795 (+ 1 (size!11975 (t!124115 (list!5708 objs!24)))))))

(assert (= (and d!405853 c!232901) b!1417405))

(assert (= (and d!405853 (not c!232901)) b!1417406))

(declare-fun m!1603617 () Bool)

(assert (=> b!1417406 m!1603617))

(assert (=> d!405457 d!405853))

(assert (=> d!405457 d!405743))

(declare-fun d!405855 () Bool)

(declare-fun lt!476865 () Int)

(assert (=> d!405855 (= lt!476865 (size!11975 (list!5715 (c!232737 objs!24))))))

(assert (=> d!405855 (= lt!476865 (ite ((_ is Empty!4863) (c!232737 objs!24)) 0 (ite ((_ is Leaf!7324) (c!232737 objs!24)) (csize!9957 (c!232737 objs!24)) (csize!9956 (c!232737 objs!24)))))))

(assert (=> d!405855 (= (size!11976 (c!232737 objs!24)) lt!476865)))

(declare-fun bs!339494 () Bool)

(assert (= bs!339494 d!405855))

(assert (=> bs!339494 m!1602011))

(assert (=> bs!339494 m!1602011))

(declare-fun m!1603621 () Bool)

(assert (=> bs!339494 m!1603621))

(assert (=> d!405457 d!405855))

(declare-fun d!405859 () Bool)

(assert (=> d!405859 (= (head!2732 (list!5708 objs!24)) (h!19929 (list!5708 objs!24)))))

(assert (=> d!405427 d!405859))

(assert (=> d!405427 d!405743))

(declare-fun d!405861 () Bool)

(declare-fun lt!476897 () PrintableTokens!840)

(assert (=> d!405861 (= lt!476897 (head!2732 (list!5715 (c!232737 objs!24))))))

(declare-fun e!904802 () PrintableTokens!840)

(assert (=> d!405861 (= lt!476897 e!904802)))

(declare-fun c!232906 () Bool)

(assert (=> d!405861 (= c!232906 ((_ is Leaf!7324) (c!232737 objs!24)))))

(assert (=> d!405861 (isBalanced!1443 (c!232737 objs!24))))

(assert (=> d!405861 (= (head!2733 (c!232737 objs!24)) lt!476897)))

(declare-fun b!1417418 () Bool)

(declare-fun apply!3715 (IArray!9731 Int) PrintableTokens!840)

(assert (=> b!1417418 (= e!904802 (apply!3715 (xs!7590 (c!232737 objs!24)) 0))))

(declare-fun b!1417419 () Bool)

(assert (=> b!1417419 (= e!904802 (head!2733 (left!12417 (c!232737 objs!24))))))

(assert (= (and d!405861 c!232906) b!1417418))

(assert (= (and d!405861 (not c!232906)) b!1417419))

(assert (=> d!405861 m!1602011))

(assert (=> d!405861 m!1602011))

(declare-fun m!1603659 () Bool)

(assert (=> d!405861 m!1603659))

(assert (=> d!405861 m!1601697))

(declare-fun m!1603665 () Bool)

(assert (=> b!1417418 m!1603665))

(declare-fun m!1603667 () Bool)

(assert (=> b!1417419 m!1603667))

(assert (=> d!405427 d!405861))

(assert (=> d!405427 d!405411))

(declare-fun b!1417422 () Bool)

(declare-fun b_free!34903 () Bool)

(declare-fun b_next!35607 () Bool)

(assert (=> b!1417422 (= b_free!34903 (not b_next!35607))))

(declare-fun tp!402036 () Bool)

(declare-fun b_and!94903 () Bool)

(assert (=> b!1417422 (= tp!402036 b_and!94903)))

(declare-fun b_free!34905 () Bool)

(declare-fun b_next!35609 () Bool)

(assert (=> b!1417422 (= b_free!34905 (not b_next!35609))))

(declare-fun tb!73529 () Bool)

(declare-fun t!124184 () Bool)

(assert (=> (and b!1417422 (= (toChars!3687 (transformation!2529 (h!19928 (t!124114 (rules!11090 acc!229))))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124184) tb!73529))

(declare-fun result!89574 () Bool)

(assert (= result!89574 result!89562))

(assert (=> d!405785 t!124184))

(declare-fun tp!402035 () Bool)

(declare-fun b_and!94905 () Bool)

(assert (=> b!1417422 (= tp!402035 (and (=> t!124184 result!89574) b_and!94905))))

(declare-fun e!904804 () Bool)

(assert (=> b!1417422 (= e!904804 (and tp!402036 tp!402035))))

(declare-fun b!1417421 () Bool)

(declare-fun e!904803 () Bool)

(assert (=> b!1417421 (= e!904803 (and (inv!19092 (tag!2791 (h!19928 (t!124114 (rules!11090 acc!229))))) (inv!19113 (transformation!2529 (h!19928 (t!124114 (rules!11090 acc!229))))) e!904804))))

(declare-fun b!1417420 () Bool)

(declare-fun e!904805 () Bool)

(declare-fun tp!402037 () Bool)

(assert (=> b!1417420 (= e!904805 (and e!904803 tp!402037))))

(assert (=> b!1416694 (= tp!401989 e!904805)))

(assert (= b!1417421 b!1417422))

(assert (= b!1417420 b!1417421))

(assert (= (and b!1416694 ((_ is Cons!14527) (t!124114 (rules!11090 acc!229)))) b!1417420))

(declare-fun m!1603709 () Bool)

(assert (=> b!1417421 m!1603709))

(declare-fun m!1603713 () Bool)

(assert (=> b!1417421 m!1603713))

(declare-fun b!1417434 () Bool)

(declare-fun e!904815 () Bool)

(declare-fun tp!402045 () Bool)

(assert (=> b!1417434 (= e!904815 (and (inv!19098 (c!232736 (tokens!1806 (h!19929 (innerList!4923 (xs!7590 (c!232737 objs!24))))))) tp!402045))))

(declare-fun e!904816 () Bool)

(declare-fun b!1417433 () Bool)

(declare-fun tp!402046 () Bool)

(assert (=> b!1417433 (= e!904816 (and tp!402046 (inv!19099 (tokens!1806 (h!19929 (innerList!4923 (xs!7590 (c!232737 objs!24)))))) e!904815))))

(declare-fun tp!402044 () Bool)

(declare-fun e!904814 () Bool)

(declare-fun b!1417432 () Bool)

(assert (=> b!1417432 (= e!904814 (and (inv!19102 (h!19929 (innerList!4923 (xs!7590 (c!232737 objs!24))))) e!904816 tp!402044))))

(assert (=> b!1416674 (= tp!401969 e!904814)))

(assert (= b!1417433 b!1417434))

(assert (= b!1417432 b!1417433))

(assert (= (and b!1416674 ((_ is Cons!14528) (innerList!4923 (xs!7590 (c!232737 objs!24))))) b!1417432))

(declare-fun m!1603757 () Bool)

(assert (=> b!1417434 m!1603757))

(declare-fun m!1603759 () Bool)

(assert (=> b!1417433 m!1603759))

(declare-fun m!1603761 () Bool)

(assert (=> b!1417432 m!1603761))

(declare-fun b!1417448 () Bool)

(declare-fun b_free!34907 () Bool)

(declare-fun b_next!35611 () Bool)

(assert (=> b!1417448 (= b_free!34907 (not b_next!35611))))

(declare-fun tp!402054 () Bool)

(declare-fun b_and!94907 () Bool)

(assert (=> b!1417448 (= tp!402054 b_and!94907)))

(declare-fun b_free!34909 () Bool)

(declare-fun b_next!35613 () Bool)

(assert (=> b!1417448 (= b_free!34909 (not b_next!35613))))

(declare-fun tb!73531 () Bool)

(declare-fun t!124186 () Bool)

(assert (=> (and b!1417448 (= (toChars!3687 (transformation!2529 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229)))))))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124186) tb!73531))

(declare-fun result!89580 () Bool)

(assert (= result!89580 result!89562))

(assert (=> d!405785 t!124186))

(declare-fun b_and!94909 () Bool)

(declare-fun tp!402053 () Bool)

(assert (=> b!1417448 (= tp!402053 (and (=> t!124186 result!89580) b_and!94909))))

(declare-fun b!1417446 () Bool)

(declare-fun e!904831 () Bool)

(declare-fun e!904830 () Bool)

(declare-fun inv!21 (TokenValue!2619) Bool)

(assert (=> b!1417446 (= e!904831 (and (inv!21 (value!81709 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229))))))) e!904830))))

(declare-fun e!904832 () Bool)

(assert (=> b!1417448 (= e!904832 (and tp!402054 tp!402053))))

(declare-fun b!1417445 () Bool)

(declare-fun e!904833 () Bool)

(declare-fun tp!402055 () Bool)

(declare-fun inv!19121 (Token!4720) Bool)

(assert (=> b!1417445 (= e!904833 (and (inv!19121 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229)))))) e!904831 tp!402055))))

(assert (=> b!1416702 (= tp!401994 e!904833)))

(declare-fun b!1417447 () Bool)

(assert (=> b!1417447 (= e!904830 (and (inv!19092 (tag!2791 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229)))))))) (inv!19113 (transformation!2529 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229)))))))) e!904832))))

(assert (= b!1417447 b!1417448))

(assert (= b!1417446 b!1417447))

(assert (= b!1417445 b!1417446))

(assert (= (and b!1416702 ((_ is Cons!14526) (innerList!4922 (xs!7589 (c!232736 (tokens!1806 acc!229)))))) b!1417445))

(declare-fun m!1603763 () Bool)

(assert (=> b!1417446 m!1603763))

(declare-fun m!1603765 () Bool)

(assert (=> b!1417445 m!1603765))

(declare-fun m!1603767 () Bool)

(assert (=> b!1417447 m!1603767))

(declare-fun m!1603769 () Bool)

(assert (=> b!1417447 m!1603769))

(declare-fun tp!402058 () Bool)

(declare-fun tp!402057 () Bool)

(declare-fun e!904836 () Bool)

(declare-fun b!1417449 () Bool)

(assert (=> b!1417449 (= e!904836 (and (inv!19100 (left!12417 (left!12417 (c!232737 objs!24)))) tp!402058 (inv!19100 (right!12747 (left!12417 (c!232737 objs!24)))) tp!402057))))

(declare-fun b!1417451 () Bool)

(declare-fun e!904835 () Bool)

(declare-fun tp!402056 () Bool)

(assert (=> b!1417451 (= e!904835 tp!402056)))

(declare-fun b!1417450 () Bool)

(assert (=> b!1417450 (= e!904836 (and (inv!19111 (xs!7590 (left!12417 (c!232737 objs!24)))) e!904835))))

(assert (=> b!1416672 (= tp!401971 (and (inv!19100 (left!12417 (c!232737 objs!24))) e!904836))))

(assert (= (and b!1416672 ((_ is Node!4863) (left!12417 (c!232737 objs!24)))) b!1417449))

(assert (= b!1417450 b!1417451))

(assert (= (and b!1416672 ((_ is Leaf!7324) (left!12417 (c!232737 objs!24)))) b!1417450))

(declare-fun m!1603771 () Bool)

(assert (=> b!1417449 m!1603771))

(declare-fun m!1603773 () Bool)

(assert (=> b!1417449 m!1603773))

(declare-fun m!1603775 () Bool)

(assert (=> b!1417450 m!1603775))

(assert (=> b!1416672 m!1601859))

(declare-fun tp!402061 () Bool)

(declare-fun tp!402060 () Bool)

(declare-fun b!1417452 () Bool)

(declare-fun e!904838 () Bool)

(assert (=> b!1417452 (= e!904838 (and (inv!19100 (left!12417 (right!12747 (c!232737 objs!24)))) tp!402061 (inv!19100 (right!12747 (right!12747 (c!232737 objs!24)))) tp!402060))))

(declare-fun b!1417454 () Bool)

(declare-fun e!904837 () Bool)

(declare-fun tp!402059 () Bool)

(assert (=> b!1417454 (= e!904837 tp!402059)))

(declare-fun b!1417453 () Bool)

(assert (=> b!1417453 (= e!904838 (and (inv!19111 (xs!7590 (right!12747 (c!232737 objs!24)))) e!904837))))

(assert (=> b!1416672 (= tp!401970 (and (inv!19100 (right!12747 (c!232737 objs!24))) e!904838))))

(assert (= (and b!1416672 ((_ is Node!4863) (right!12747 (c!232737 objs!24)))) b!1417452))

(assert (= b!1417453 b!1417454))

(assert (= (and b!1416672 ((_ is Leaf!7324) (right!12747 (c!232737 objs!24)))) b!1417453))

(declare-fun m!1603777 () Bool)

(assert (=> b!1417452 m!1603777))

(declare-fun m!1603779 () Bool)

(assert (=> b!1417452 m!1603779))

(declare-fun m!1603781 () Bool)

(assert (=> b!1417453 m!1603781))

(assert (=> b!1416672 m!1601861))

(declare-fun b!1417455 () Bool)

(declare-fun tp!402064 () Bool)

(declare-fun tp!402062 () Bool)

(declare-fun e!904840 () Bool)

(assert (=> b!1417455 (= e!904840 (and (inv!19098 (left!12416 (left!12416 (c!232736 (tokens!1806 acc!229))))) tp!402064 (inv!19098 (right!12746 (left!12416 (c!232736 (tokens!1806 acc!229))))) tp!402062))))

(declare-fun b!1417457 () Bool)

(declare-fun e!904839 () Bool)

(declare-fun tp!402063 () Bool)

(assert (=> b!1417457 (= e!904839 tp!402063)))

(declare-fun b!1417456 () Bool)

(assert (=> b!1417456 (= e!904840 (and (inv!19112 (xs!7589 (left!12416 (c!232736 (tokens!1806 acc!229))))) e!904839))))

(assert (=> b!1416700 (= tp!401995 (and (inv!19098 (left!12416 (c!232736 (tokens!1806 acc!229)))) e!904840))))

(assert (= (and b!1416700 ((_ is Node!4862) (left!12416 (c!232736 (tokens!1806 acc!229))))) b!1417455))

(assert (= b!1417456 b!1417457))

(assert (= (and b!1416700 ((_ is Leaf!7323) (left!12416 (c!232736 (tokens!1806 acc!229))))) b!1417456))

(declare-fun m!1603783 () Bool)

(assert (=> b!1417455 m!1603783))

(declare-fun m!1603785 () Bool)

(assert (=> b!1417455 m!1603785))

(declare-fun m!1603787 () Bool)

(assert (=> b!1417456 m!1603787))

(assert (=> b!1416700 m!1601879))

(declare-fun e!904842 () Bool)

(declare-fun tp!402065 () Bool)

(declare-fun b!1417458 () Bool)

(declare-fun tp!402067 () Bool)

(assert (=> b!1417458 (= e!904842 (and (inv!19098 (left!12416 (right!12746 (c!232736 (tokens!1806 acc!229))))) tp!402067 (inv!19098 (right!12746 (right!12746 (c!232736 (tokens!1806 acc!229))))) tp!402065))))

(declare-fun b!1417460 () Bool)

(declare-fun e!904841 () Bool)

(declare-fun tp!402066 () Bool)

(assert (=> b!1417460 (= e!904841 tp!402066)))

(declare-fun b!1417459 () Bool)

(assert (=> b!1417459 (= e!904842 (and (inv!19112 (xs!7589 (right!12746 (c!232736 (tokens!1806 acc!229))))) e!904841))))

(assert (=> b!1416700 (= tp!401993 (and (inv!19098 (right!12746 (c!232736 (tokens!1806 acc!229)))) e!904842))))

(assert (= (and b!1416700 ((_ is Node!4862) (right!12746 (c!232736 (tokens!1806 acc!229))))) b!1417458))

(assert (= b!1417459 b!1417460))

(assert (= (and b!1416700 ((_ is Leaf!7323) (right!12746 (c!232736 (tokens!1806 acc!229))))) b!1417459))

(declare-fun m!1603789 () Bool)

(assert (=> b!1417458 m!1603789))

(declare-fun m!1603791 () Bool)

(assert (=> b!1417458 m!1603791))

(declare-fun m!1603793 () Bool)

(assert (=> b!1417459 m!1603793))

(assert (=> b!1416700 m!1601881))

(declare-fun b!1417463 () Bool)

(declare-fun b_free!34911 () Bool)

(declare-fun b_next!35615 () Bool)

(assert (=> b!1417463 (= b_free!34911 (not b_next!35615))))

(declare-fun tp!402069 () Bool)

(declare-fun b_and!94911 () Bool)

(assert (=> b!1417463 (= tp!402069 b_and!94911)))

(declare-fun b_free!34913 () Bool)

(declare-fun b_next!35617 () Bool)

(assert (=> b!1417463 (= b_free!34913 (not b_next!35617))))

(declare-fun tb!73533 () Bool)

(declare-fun t!124188 () Bool)

(assert (=> (and b!1417463 (= (toChars!3687 (transformation!2529 (h!19928 (t!124114 (rules!11090 sep!3))))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124188) tb!73533))

(declare-fun result!89582 () Bool)

(assert (= result!89582 result!89562))

(assert (=> d!405785 t!124188))

(declare-fun b_and!94913 () Bool)

(declare-fun tp!402068 () Bool)

(assert (=> b!1417463 (= tp!402068 (and (=> t!124188 result!89582) b_and!94913))))

(declare-fun e!904844 () Bool)

(assert (=> b!1417463 (= e!904844 (and tp!402069 tp!402068))))

(declare-fun b!1417462 () Bool)

(declare-fun e!904843 () Bool)

(assert (=> b!1417462 (= e!904843 (and (inv!19092 (tag!2791 (h!19928 (t!124114 (rules!11090 sep!3))))) (inv!19113 (transformation!2529 (h!19928 (t!124114 (rules!11090 sep!3))))) e!904844))))

(declare-fun b!1417461 () Bool)

(declare-fun e!904845 () Bool)

(declare-fun tp!402070 () Bool)

(assert (=> b!1417461 (= e!904845 (and e!904843 tp!402070))))

(assert (=> b!1416697 (= tp!401992 e!904845)))

(assert (= b!1417462 b!1417463))

(assert (= b!1417461 b!1417462))

(assert (= (and b!1416697 ((_ is Cons!14527) (t!124114 (rules!11090 sep!3)))) b!1417461))

(declare-fun m!1603795 () Bool)

(assert (=> b!1417462 m!1603795))

(declare-fun m!1603797 () Bool)

(assert (=> b!1417462 m!1603797))

(declare-fun b!1417467 () Bool)

(declare-fun b_free!34915 () Bool)

(declare-fun b_next!35619 () Bool)

(assert (=> b!1417467 (= b_free!34915 (not b_next!35619))))

(declare-fun tp!402072 () Bool)

(declare-fun b_and!94915 () Bool)

(assert (=> b!1417467 (= tp!402072 b_and!94915)))

(declare-fun b_free!34917 () Bool)

(declare-fun b_next!35621 () Bool)

(assert (=> b!1417467 (= b_free!34917 (not b_next!35621))))

(declare-fun tb!73535 () Bool)

(declare-fun t!124190 () Bool)

(assert (=> (and b!1417467 (= (toChars!3687 (transformation!2529 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3)))))))) (toChars!3687 (transformation!2529 (rule!4292 (ite c!232760 (h!19927 lt!476085) (h!19927 lt!476093)))))) t!124190) tb!73535))

(declare-fun result!89584 () Bool)

(assert (= result!89584 result!89562))

(assert (=> d!405785 t!124190))

(declare-fun b_and!94917 () Bool)

(declare-fun tp!402071 () Bool)

(assert (=> b!1417467 (= tp!402071 (and (=> t!124190 result!89584) b_and!94917))))

(declare-fun b!1417465 () Bool)

(declare-fun e!904849 () Bool)

(declare-fun e!904848 () Bool)

(assert (=> b!1417465 (= e!904849 (and (inv!21 (value!81709 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3))))))) e!904848))))

(declare-fun e!904850 () Bool)

(assert (=> b!1417467 (= e!904850 (and tp!402072 tp!402071))))

(declare-fun e!904851 () Bool)

(declare-fun tp!402073 () Bool)

(declare-fun b!1417464 () Bool)

(assert (=> b!1417464 (= e!904851 (and (inv!19121 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3)))))) e!904849 tp!402073))))

(assert (=> b!1416685 (= tp!401979 e!904851)))

(declare-fun b!1417466 () Bool)

(assert (=> b!1417466 (= e!904848 (and (inv!19092 (tag!2791 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3)))))))) (inv!19113 (transformation!2529 (rule!4292 (h!19927 (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3)))))))) e!904850))))

(assert (= b!1417466 b!1417467))

(assert (= b!1417465 b!1417466))

(assert (= b!1417464 b!1417465))

(assert (= (and b!1416685 ((_ is Cons!14526) (innerList!4922 (xs!7589 (c!232736 (tokens!1806 sep!3)))))) b!1417464))

(declare-fun m!1603799 () Bool)

(assert (=> b!1417465 m!1603799))

(declare-fun m!1603801 () Bool)

(assert (=> b!1417464 m!1603801))

(declare-fun m!1603803 () Bool)

(assert (=> b!1417466 m!1603803))

(declare-fun m!1603805 () Bool)

(assert (=> b!1417466 m!1603805))

(declare-fun tp!402076 () Bool)

(declare-fun b!1417468 () Bool)

(declare-fun tp!402074 () Bool)

(declare-fun e!904854 () Bool)

(assert (=> b!1417468 (= e!904854 (and (inv!19098 (left!12416 (left!12416 (c!232736 (tokens!1806 sep!3))))) tp!402076 (inv!19098 (right!12746 (left!12416 (c!232736 (tokens!1806 sep!3))))) tp!402074))))

(declare-fun b!1417470 () Bool)

(declare-fun e!904853 () Bool)

(declare-fun tp!402075 () Bool)

(assert (=> b!1417470 (= e!904853 tp!402075)))

(declare-fun b!1417469 () Bool)

(assert (=> b!1417469 (= e!904854 (and (inv!19112 (xs!7589 (left!12416 (c!232736 (tokens!1806 sep!3))))) e!904853))))

(assert (=> b!1416683 (= tp!401980 (and (inv!19098 (left!12416 (c!232736 (tokens!1806 sep!3)))) e!904854))))

(assert (= (and b!1416683 ((_ is Node!4862) (left!12416 (c!232736 (tokens!1806 sep!3))))) b!1417468))

(assert (= b!1417469 b!1417470))

(assert (= (and b!1416683 ((_ is Leaf!7323) (left!12416 (c!232736 (tokens!1806 sep!3))))) b!1417469))

(declare-fun m!1603807 () Bool)

(assert (=> b!1417468 m!1603807))

(declare-fun m!1603809 () Bool)

(assert (=> b!1417468 m!1603809))

(declare-fun m!1603811 () Bool)

(assert (=> b!1417469 m!1603811))

(assert (=> b!1416683 m!1601865))

(declare-fun e!904856 () Bool)

(declare-fun tp!402079 () Bool)

(declare-fun b!1417471 () Bool)

(declare-fun tp!402077 () Bool)

(assert (=> b!1417471 (= e!904856 (and (inv!19098 (left!12416 (right!12746 (c!232736 (tokens!1806 sep!3))))) tp!402079 (inv!19098 (right!12746 (right!12746 (c!232736 (tokens!1806 sep!3))))) tp!402077))))

(declare-fun b!1417473 () Bool)

(declare-fun e!904855 () Bool)

(declare-fun tp!402078 () Bool)

(assert (=> b!1417473 (= e!904855 tp!402078)))

(declare-fun b!1417472 () Bool)

(assert (=> b!1417472 (= e!904856 (and (inv!19112 (xs!7589 (right!12746 (c!232736 (tokens!1806 sep!3))))) e!904855))))

(assert (=> b!1416683 (= tp!401978 (and (inv!19098 (right!12746 (c!232736 (tokens!1806 sep!3)))) e!904856))))

(assert (= (and b!1416683 ((_ is Node!4862) (right!12746 (c!232736 (tokens!1806 sep!3))))) b!1417471))

(assert (= b!1417472 b!1417473))

(assert (= (and b!1416683 ((_ is Leaf!7323) (right!12746 (c!232736 (tokens!1806 sep!3))))) b!1417472))

(declare-fun m!1603813 () Bool)

(assert (=> b!1417471 m!1603813))

(declare-fun m!1603815 () Bool)

(assert (=> b!1417471 m!1603815))

(declare-fun m!1603817 () Bool)

(assert (=> b!1417472 m!1603817))

(assert (=> b!1416683 m!1601867))

(declare-fun b_lambda!44607 () Bool)

(assert (= b_lambda!44599 (or start!130028 b_lambda!44607)))

(declare-fun bs!339500 () Bool)

(declare-fun d!405879 () Bool)

(assert (= bs!339500 (and d!405879 start!130028)))

(assert (=> bs!339500 (= (dynLambda!6715 lambda!62569 (h!19929 (list!5708 objs!24))) (usesJsonRules!0 (h!19929 (list!5708 objs!24))))))

(declare-fun m!1603819 () Bool)

(assert (=> bs!339500 m!1603819))

(assert (=> b!1417256 d!405879))

(check-sat (not d!405817) (not b!1416789) (not b!1417176) (not d!405767) b_and!94897 (not b_next!35591) (not b_next!35609) (not d!405711) b_and!94913 (not b_next!35613) (not d!405479) (not b!1417356) (not b!1417334) (not b!1417038) (not b!1417357) (not b!1416929) b_and!94903 (not d!405613) (not d!405783) (not b!1416915) (not b!1417360) (not b!1416982) (not d!405827) (not b!1417329) (not d!405707) (not d!405567) (not d!405777) (not b!1417188) (not d!405727) (not b!1417037) (not b!1416837) (not b!1417208) (not b!1417421) (not d!405589) (not b!1416933) (not b!1417225) (not b!1417433) (not b!1417332) (not b!1416798) (not d!405729) (not b!1417406) (not b!1417466) b_and!94911 (not b_next!35593) (not b!1417326) (not b!1417454) (not d!405709) (not b!1417315) (not d!405731) (not b!1417193) (not b!1417468) (not b!1417324) (not d!405551) (not b!1416816) (not b!1416683) (not b!1417250) (not b!1416872) (not b!1416840) (not b!1417233) (not b!1417210) (not b!1417295) (not b!1417335) (not d!405809) (not b!1416965) (not b!1416842) (not d!405761) (not b!1416857) (not b!1417006) (not b!1417419) (not b!1417018) (not tb!73521) (not b!1416859) (not b!1417270) (not d!405587) (not d!405735) b_and!94917 (not b!1416870) (not b!1417189) (not d!405749) (not b!1416770) (not d!405813) (not b!1417451) (not b!1417174) (not d!405505) (not b!1416819) (not b!1417450) (not d!405619) (not d!405633) (not b!1417317) (not b!1417288) b_and!94883 (not b!1417465) (not b_lambda!44607) (not b!1416934) (not b!1417257) (not d!405713) (not b!1416976) (not b!1416981) (not d!405775) (not b!1416978) (not d!405855) (not b!1417420) (not d!405733) (not d!405753) (not b!1417207) (not b!1417294) (not b!1417162) (not b!1416858) (not b!1416862) (not b!1417331) b_and!94879 (not b!1417187) b_and!94895 (not d!405847) (not b!1417221) (not b!1417161) (not b!1417452) (not b!1417320) (not b!1417449) (not d!405771) (not b!1417017) (not b!1417358) (not b!1417457) (not b!1417289) b_and!94907 (not b!1416916) (not b!1416817) (not b!1417333) (not d!405779) (not b!1417305) (not b!1417269) (not b!1417464) (not b!1416974) (not b!1417469) (not b_next!35615) (not b!1417327) (not b!1417313) (not d!405861) (not d!405569) (not b!1416700) (not bm!96036) (not b!1416950) (not b!1417292) (not b!1417321) (not b!1417206) (not d!405559) (not b!1417462) (not b!1417472) (not d!405717) (not b!1417330) (not b!1417215) (not b_next!35607) (not b!1417453) (not bm!96035) (not d!405561) (not d!405555) b_and!94909 (not d!405591) (not b!1417175) (not b!1417247) (not b!1416867) (not b!1417191) (not b!1416931) (not b!1416977) (not b!1417359) (not b!1416769) (not b!1417310) (not d!405747) (not d!405593) (not b_lambda!44601) (not d!405493) (not b_next!35611) (not d!405557) (not d!405715) (not b!1417318) (not b!1417461) (not d!405739) (not b_next!35621) (not b!1417455) (not b_next!35595) (not d!405829) (not d!405525) (not b!1417236) (not bs!339500) (not d!405495) (not d!405841) (not b!1417470) (not d!405695) (not b!1417245) b_and!94915 (not b!1416820) (not b!1417267) (not d!405737) (not b!1417209) (not d!405571) b_and!94905 (not d!405769) (not d!405515) (not b_next!35619) (not b!1417471) (not b!1417432) (not b!1416672) (not b!1417458) (not b!1417291) (not d!405501) (not d!405573) (not b!1417190) (not d!405637) (not b!1417323) (not b_next!35597) (not d!405481) (not b!1416815) (not d!405719) (not b!1417251) (not d!405609) (not b!1417460) (not b!1416860) (not b!1417447) (not b!1417005) (not b!1416861) (not b!1417456) (not b!1417268) (not b!1417290) (not b!1417445) (not d!405785) (not d!405499) (not b!1416863) (not b!1417434) (not d!405553) (not b_next!35617) (not b!1416818) (not b!1416869) (not b!1416839) (not d!405773) (not b!1417194) (not b!1417418) (not d!405745) (not d!405483) (not b!1417355) (not b!1416864) (not d!405721) (not b!1416951) (not d!405763) (not b!1417311) (not d!405825) (not b!1417473) (not b!1416964) (not b!1417163) (not b!1417446) (not d!405755) (not d!405815) (not d!405845) (not d!405639) (not d!405743) (not b!1417164) (not b!1417205) (not b!1417459) (not b!1416922) (not b!1416952))
(check-sat b_and!94917 b_and!94883 b_and!94907 (not b_next!35615) (not b_next!35611) (not b_next!35619) (not b_next!35597) (not b_next!35617) b_and!94897 (not b_next!35591) (not b_next!35609) b_and!94913 (not b_next!35613) b_and!94903 b_and!94911 (not b_next!35593) b_and!94879 b_and!94895 b_and!94909 (not b_next!35607) (not b_next!35621) (not b_next!35595) b_and!94905 b_and!94915)
