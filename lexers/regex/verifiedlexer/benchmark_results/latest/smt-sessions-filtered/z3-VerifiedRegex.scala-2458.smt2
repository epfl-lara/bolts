; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129868 () Bool)

(assert start!129868)

(declare-fun b!1415680 () Bool)

(declare-fun e!903721 () Bool)

(declare-datatypes ((List!14573 0))(
  ( (Nil!14507) (Cons!14507 (h!19908 (_ BitVec 16)) (t!124018 List!14573)) )
))
(declare-datatypes ((TokenValue!2615 0))(
  ( (FloatLiteralValue!5230 (text!18750 List!14573)) (TokenValueExt!2614 (__x!9039 Int)) (Broken!13075 (value!81569 List!14573)) (Object!2680) (End!2615) (Def!2615) (Underscore!2615) (Match!2615) (Else!2615) (Error!2615) (Case!2615) (If!2615) (Extends!2615) (Abstract!2615) (Class!2615) (Val!2615) (DelimiterValue!5230 (del!2675 List!14573)) (KeywordValue!2621 (value!81570 List!14573)) (CommentValue!5230 (value!81571 List!14573)) (WhitespaceValue!5230 (value!81572 List!14573)) (IndentationValue!2615 (value!81573 List!14573)) (String!17310) (Int32!2615) (Broken!13076 (value!81574 List!14573)) (Boolean!2616) (Unit!21305) (OperatorValue!2618 (op!2675 List!14573)) (IdentifierValue!5230 (value!81575 List!14573)) (IdentifierValue!5231 (value!81576 List!14573)) (WhitespaceValue!5231 (value!81577 List!14573)) (True!5230) (False!5230) (Broken!13077 (value!81578 List!14573)) (Broken!13078 (value!81579 List!14573)) (True!5231) (RightBrace!2615) (RightBracket!2615) (Colon!2615) (Null!2615) (Comma!2615) (LeftBracket!2615) (False!5231) (LeftBrace!2615) (ImaginaryLiteralValue!2615 (text!18751 List!14573)) (StringLiteralValue!7845 (value!81580 List!14573)) (EOFValue!2615 (value!81581 List!14573)) (IdentValue!2615 (value!81582 List!14573)) (DelimiterValue!5231 (value!81583 List!14573)) (DedentValue!2615 (value!81584 List!14573)) (NewLineValue!2615 (value!81585 List!14573)) (IntegerValue!7845 (value!81586 (_ BitVec 32)) (text!18752 List!14573)) (IntegerValue!7846 (value!81587 Int) (text!18753 List!14573)) (Times!2615) (Or!2615) (Equal!2615) (Minus!2615) (Broken!13079 (value!81588 List!14573)) (And!2615) (Div!2615) (LessEqual!2615) (Mod!2615) (Concat!6454) (Not!2615) (Plus!2615) (SpaceValue!2615 (value!81589 List!14573)) (IntegerValue!7847 (value!81590 Int) (text!18754 List!14573)) (StringLiteralValue!7846 (text!18755 List!14573)) (FloatLiteralValue!5231 (text!18756 List!14573)) (BytesLiteralValue!2615 (value!81591 List!14573)) (CommentValue!5231 (value!81592 List!14573)) (StringLiteralValue!7847 (value!81593 List!14573)) (ErrorTokenValue!2615 (msg!2676 List!14573)) )
))
(declare-datatypes ((Regex!3839 0))(
  ( (ElementMatch!3839 (c!232666 (_ BitVec 16))) (Concat!6455 (regOne!8190 Regex!3839) (regTwo!8190 Regex!3839)) (EmptyExpr!3839) (Star!3839 (reg!4168 Regex!3839)) (EmptyLang!3839) (Union!3839 (regOne!8191 Regex!3839) (regTwo!8191 Regex!3839)) )
))
(declare-datatypes ((String!17311 0))(
  ( (String!17312 (value!81594 String)) )
))
(declare-datatypes ((IArray!9703 0))(
  ( (IArray!9704 (innerList!4909 List!14573)) )
))
(declare-datatypes ((Conc!4849 0))(
  ( (Node!4849 (left!12397 Conc!4849) (right!12727 Conc!4849) (csize!9928 Int) (cheight!5060 Int)) (Leaf!7308 (xs!7576 IArray!9703) (csize!9929 Int)) (Empty!4849) )
))
(declare-datatypes ((BalanceConc!9638 0))(
  ( (BalanceConc!9639 (c!232667 Conc!4849)) )
))
(declare-datatypes ((TokenValueInjection!4890 0))(
  ( (TokenValueInjection!4891 (toValue!3824 Int) (toChars!3683 Int)) )
))
(declare-datatypes ((Rule!4850 0))(
  ( (Rule!4851 (regex!2525 Regex!3839) (tag!2787 String!17311) (isSeparator!2525 Bool) (transformation!2525 TokenValueInjection!4890)) )
))
(declare-datatypes ((Token!4712 0))(
  ( (Token!4713 (value!81595 TokenValue!2615) (rule!4288 Rule!4850) (size!11959 Int) (originalCharacters!3387 List!14573)) )
))
(declare-datatypes ((List!14574 0))(
  ( (Nil!14508) (Cons!14508 (h!19909 Token!4712) (t!124019 List!14574)) )
))
(declare-datatypes ((IArray!9705 0))(
  ( (IArray!9706 (innerList!4910 List!14574)) )
))
(declare-datatypes ((Conc!4850 0))(
  ( (Node!4850 (left!12398 Conc!4850) (right!12728 Conc!4850) (csize!9930 Int) (cheight!5061 Int)) (Leaf!7309 (xs!7577 IArray!9705) (csize!9931 Int)) (Empty!4850) )
))
(declare-datatypes ((List!14575 0))(
  ( (Nil!14509) (Cons!14509 (h!19910 Rule!4850) (t!124020 List!14575)) )
))
(declare-datatypes ((BalanceConc!9640 0))(
  ( (BalanceConc!9641 (c!232668 Conc!4850)) )
))
(declare-datatypes ((PrintableTokens!832 0))(
  ( (PrintableTokens!833 (rules!11082 List!14575) (tokens!1800 BalanceConc!9640)) )
))
(declare-datatypes ((List!14576 0))(
  ( (Nil!14510) (Cons!14510 (h!19911 PrintableTokens!832) (t!124021 List!14576)) )
))
(declare-datatypes ((IArray!9707 0))(
  ( (IArray!9708 (innerList!4911 List!14576)) )
))
(declare-datatypes ((Conc!4851 0))(
  ( (Node!4851 (left!12399 Conc!4851) (right!12729 Conc!4851) (csize!9932 Int) (cheight!5062 Int)) (Leaf!7310 (xs!7578 IArray!9707) (csize!9933 Int)) (Empty!4851) )
))
(declare-datatypes ((BalanceConc!9642 0))(
  ( (BalanceConc!9643 (c!232669 Conc!4851)) )
))
(declare-fun objs!24 () BalanceConc!9642)

(declare-fun tp!401676 () Bool)

(declare-fun inv!19044 (Conc!4851) Bool)

(assert (=> b!1415680 (= e!903721 (and (inv!19044 (c!232669 objs!24)) tp!401676))))

(declare-fun res!641061 () Bool)

(declare-fun e!903720 () Bool)

(assert (=> start!129868 (=> (not res!641061) (not e!903720))))

(declare-fun lambda!62545 () Int)

(declare-fun forall!3581 (BalanceConc!9642 Int) Bool)

(assert (=> start!129868 (= res!641061 (forall!3581 objs!24 lambda!62545))))

(assert (=> start!129868 e!903720))

(declare-fun inv!19045 (BalanceConc!9642) Bool)

(assert (=> start!129868 (and (inv!19045 objs!24) e!903721)))

(declare-fun acc!229 () PrintableTokens!832)

(declare-fun e!903723 () Bool)

(declare-fun inv!19046 (PrintableTokens!832) Bool)

(assert (=> start!129868 (and (inv!19046 acc!229) e!903723)))

(declare-fun sep!3 () PrintableTokens!832)

(declare-fun e!903719 () Bool)

(assert (=> start!129868 (and (inv!19046 sep!3) e!903719)))

(declare-fun tp!401677 () Bool)

(declare-fun b!1415681 () Bool)

(declare-fun e!903722 () Bool)

(declare-fun inv!19047 (BalanceConc!9640) Bool)

(assert (=> b!1415681 (= e!903719 (and tp!401677 (inv!19047 (tokens!1800 sep!3)) e!903722))))

(declare-fun tp!401679 () Bool)

(declare-fun e!903718 () Bool)

(declare-fun b!1415682 () Bool)

(assert (=> b!1415682 (= e!903723 (and tp!401679 (inv!19047 (tokens!1800 acc!229)) e!903718))))

(declare-fun b!1415683 () Bool)

(declare-fun res!641060 () Bool)

(assert (=> b!1415683 (=> (not res!641060) (not e!903720))))

(declare-fun usesJsonRules!0 (PrintableTokens!832) Bool)

(assert (=> b!1415683 (= res!641060 (usesJsonRules!0 sep!3))))

(declare-fun b!1415684 () Bool)

(declare-fun res!641059 () Bool)

(assert (=> b!1415684 (=> (not res!641059) (not e!903720))))

(assert (=> b!1415684 (= res!641059 (usesJsonRules!0 acc!229))))

(declare-fun b!1415685 () Bool)

(declare-fun size!11960 (BalanceConc!9642) Int)

(assert (=> b!1415685 (= e!903720 (< (size!11960 objs!24) 0))))

(declare-fun b!1415686 () Bool)

(declare-fun tp!401678 () Bool)

(declare-fun inv!19048 (Conc!4850) Bool)

(assert (=> b!1415686 (= e!903718 (and (inv!19048 (c!232668 (tokens!1800 acc!229))) tp!401678))))

(declare-fun b!1415687 () Bool)

(declare-fun tp!401680 () Bool)

(assert (=> b!1415687 (= e!903722 (and (inv!19048 (c!232668 (tokens!1800 sep!3))) tp!401680))))

(assert (= (and start!129868 res!641061) b!1415684))

(assert (= (and b!1415684 res!641059) b!1415683))

(assert (= (and b!1415683 res!641060) b!1415685))

(assert (= start!129868 b!1415680))

(assert (= b!1415682 b!1415686))

(assert (= start!129868 b!1415682))

(assert (= b!1415681 b!1415687))

(assert (= start!129868 b!1415681))

(declare-fun m!1600591 () Bool)

(assert (=> b!1415683 m!1600591))

(declare-fun m!1600593 () Bool)

(assert (=> b!1415684 m!1600593))

(declare-fun m!1600595 () Bool)

(assert (=> b!1415682 m!1600595))

(declare-fun m!1600597 () Bool)

(assert (=> b!1415686 m!1600597))

(declare-fun m!1600599 () Bool)

(assert (=> start!129868 m!1600599))

(declare-fun m!1600601 () Bool)

(assert (=> start!129868 m!1600601))

(declare-fun m!1600603 () Bool)

(assert (=> start!129868 m!1600603))

(declare-fun m!1600605 () Bool)

(assert (=> start!129868 m!1600605))

(declare-fun m!1600607 () Bool)

(assert (=> b!1415680 m!1600607))

(declare-fun m!1600609 () Bool)

(assert (=> b!1415681 m!1600609))

(declare-fun m!1600611 () Bool)

(assert (=> b!1415685 m!1600611))

(declare-fun m!1600613 () Bool)

(assert (=> b!1415687 m!1600613))

(check-sat (not b!1415686) (not start!129868) (not b!1415680) (not b!1415685) (not b!1415683) (not b!1415681) (not b!1415687) (not b!1415684) (not b!1415682))
(check-sat)
(get-model)

(declare-fun d!405153 () Bool)

(declare-fun c!232672 () Bool)

(get-info :version)

(assert (=> d!405153 (= c!232672 ((_ is Node!4851) (c!232669 objs!24)))))

(declare-fun e!903728 () Bool)

(assert (=> d!405153 (= (inv!19044 (c!232669 objs!24)) e!903728)))

(declare-fun b!1415694 () Bool)

(declare-fun inv!19049 (Conc!4851) Bool)

(assert (=> b!1415694 (= e!903728 (inv!19049 (c!232669 objs!24)))))

(declare-fun b!1415695 () Bool)

(declare-fun e!903729 () Bool)

(assert (=> b!1415695 (= e!903728 e!903729)))

(declare-fun res!641066 () Bool)

(assert (=> b!1415695 (= res!641066 (not ((_ is Leaf!7310) (c!232669 objs!24))))))

(assert (=> b!1415695 (=> res!641066 e!903729)))

(declare-fun b!1415696 () Bool)

(declare-fun inv!19050 (Conc!4851) Bool)

(assert (=> b!1415696 (= e!903729 (inv!19050 (c!232669 objs!24)))))

(assert (= (and d!405153 c!232672) b!1415694))

(assert (= (and d!405153 (not c!232672)) b!1415695))

(assert (= (and b!1415695 (not res!641066)) b!1415696))

(declare-fun m!1600617 () Bool)

(assert (=> b!1415694 m!1600617))

(declare-fun m!1600619 () Bool)

(assert (=> b!1415696 m!1600619))

(assert (=> b!1415680 d!405153))

(declare-fun d!405159 () Bool)

(declare-fun lt!475843 () Int)

(declare-fun size!11961 (List!14576) Int)

(declare-fun list!5696 (BalanceConc!9642) List!14576)

(assert (=> d!405159 (= lt!475843 (size!11961 (list!5696 objs!24)))))

(declare-fun size!11962 (Conc!4851) Int)

(assert (=> d!405159 (= lt!475843 (size!11962 (c!232669 objs!24)))))

(assert (=> d!405159 (= (size!11960 objs!24) lt!475843)))

(declare-fun bs!339354 () Bool)

(assert (= bs!339354 d!405159))

(declare-fun m!1600621 () Bool)

(assert (=> bs!339354 m!1600621))

(assert (=> bs!339354 m!1600621))

(declare-fun m!1600623 () Bool)

(assert (=> bs!339354 m!1600623))

(declare-fun m!1600625 () Bool)

(assert (=> bs!339354 m!1600625))

(assert (=> b!1415685 d!405159))

(declare-fun d!405161 () Bool)

(declare-datatypes ((JsonLexer!404 0))(
  ( (JsonLexer!405) )
))
(declare-fun rules!109 (JsonLexer!404) List!14575)

(assert (=> d!405161 (= (usesJsonRules!0 acc!229) (= (rules!11082 acc!229) (rules!109 JsonLexer!405)))))

(declare-fun bs!339359 () Bool)

(assert (= bs!339359 d!405161))

(declare-fun m!1600637 () Bool)

(assert (=> bs!339359 m!1600637))

(assert (=> b!1415684 d!405161))

(declare-fun d!405171 () Bool)

(assert (=> d!405171 (= (usesJsonRules!0 sep!3) (= (rules!11082 sep!3) (rules!109 JsonLexer!405)))))

(declare-fun bs!339360 () Bool)

(assert (= bs!339360 d!405171))

(assert (=> bs!339360 m!1600637))

(assert (=> b!1415683 d!405171))

(declare-fun d!405173 () Bool)

(declare-fun isBalanced!1434 (Conc!4850) Bool)

(assert (=> d!405173 (= (inv!19047 (tokens!1800 acc!229)) (isBalanced!1434 (c!232668 (tokens!1800 acc!229))))))

(declare-fun bs!339361 () Bool)

(assert (= bs!339361 d!405173))

(declare-fun m!1600639 () Bool)

(assert (=> bs!339361 m!1600639))

(assert (=> b!1415682 d!405173))

(declare-fun d!405175 () Bool)

(declare-fun lt!475849 () Bool)

(declare-fun forall!3582 (List!14576 Int) Bool)

(assert (=> d!405175 (= lt!475849 (forall!3582 (list!5696 objs!24) lambda!62545))))

(declare-fun forall!3583 (Conc!4851 Int) Bool)

(assert (=> d!405175 (= lt!475849 (forall!3583 (c!232669 objs!24) lambda!62545))))

(assert (=> d!405175 (= (forall!3581 objs!24 lambda!62545) lt!475849)))

(declare-fun bs!339362 () Bool)

(assert (= bs!339362 d!405175))

(assert (=> bs!339362 m!1600621))

(assert (=> bs!339362 m!1600621))

(declare-fun m!1600645 () Bool)

(assert (=> bs!339362 m!1600645))

(declare-fun m!1600647 () Bool)

(assert (=> bs!339362 m!1600647))

(assert (=> start!129868 d!405175))

(declare-fun d!405179 () Bool)

(declare-fun isBalanced!1435 (Conc!4851) Bool)

(assert (=> d!405179 (= (inv!19045 objs!24) (isBalanced!1435 (c!232669 objs!24)))))

(declare-fun bs!339363 () Bool)

(assert (= bs!339363 d!405179))

(declare-fun m!1600649 () Bool)

(assert (=> bs!339363 m!1600649))

(assert (=> start!129868 d!405179))

(declare-fun d!405181 () Bool)

(declare-fun res!641076 () Bool)

(declare-fun e!903738 () Bool)

(assert (=> d!405181 (=> (not res!641076) (not e!903738))))

(declare-fun isEmpty!8887 (List!14575) Bool)

(assert (=> d!405181 (= res!641076 (not (isEmpty!8887 (rules!11082 acc!229))))))

(assert (=> d!405181 (= (inv!19046 acc!229) e!903738)))

(declare-fun b!1415712 () Bool)

(declare-fun res!641077 () Bool)

(assert (=> b!1415712 (=> (not res!641077) (not e!903738))))

(declare-datatypes ((LexerInterface!2200 0))(
  ( (LexerInterfaceExt!2197 (__x!9040 Int)) (Lexer!2198) )
))
(declare-fun rulesInvariant!2070 (LexerInterface!2200 List!14575) Bool)

(assert (=> b!1415712 (= res!641077 (rulesInvariant!2070 Lexer!2198 (rules!11082 acc!229)))))

(declare-fun b!1415713 () Bool)

(declare-fun res!641078 () Bool)

(assert (=> b!1415713 (=> (not res!641078) (not e!903738))))

(declare-fun rulesProduceEachTokenIndividually!797 (LexerInterface!2200 List!14575 BalanceConc!9640) Bool)

(assert (=> b!1415713 (= res!641078 (rulesProduceEachTokenIndividually!797 Lexer!2198 (rules!11082 acc!229) (tokens!1800 acc!229)))))

(declare-fun b!1415714 () Bool)

(declare-fun separableTokens!182 (LexerInterface!2200 BalanceConc!9640 List!14575) Bool)

(assert (=> b!1415714 (= e!903738 (separableTokens!182 Lexer!2198 (tokens!1800 acc!229) (rules!11082 acc!229)))))

(assert (= (and d!405181 res!641076) b!1415712))

(assert (= (and b!1415712 res!641077) b!1415713))

(assert (= (and b!1415713 res!641078) b!1415714))

(declare-fun m!1600657 () Bool)

(assert (=> d!405181 m!1600657))

(declare-fun m!1600659 () Bool)

(assert (=> b!1415712 m!1600659))

(declare-fun m!1600661 () Bool)

(assert (=> b!1415713 m!1600661))

(declare-fun m!1600663 () Bool)

(assert (=> b!1415714 m!1600663))

(assert (=> start!129868 d!405181))

(declare-fun d!405187 () Bool)

(declare-fun res!641079 () Bool)

(declare-fun e!903739 () Bool)

(assert (=> d!405187 (=> (not res!641079) (not e!903739))))

(assert (=> d!405187 (= res!641079 (not (isEmpty!8887 (rules!11082 sep!3))))))

(assert (=> d!405187 (= (inv!19046 sep!3) e!903739)))

(declare-fun b!1415715 () Bool)

(declare-fun res!641080 () Bool)

(assert (=> b!1415715 (=> (not res!641080) (not e!903739))))

(assert (=> b!1415715 (= res!641080 (rulesInvariant!2070 Lexer!2198 (rules!11082 sep!3)))))

(declare-fun b!1415716 () Bool)

(declare-fun res!641081 () Bool)

(assert (=> b!1415716 (=> (not res!641081) (not e!903739))))

(assert (=> b!1415716 (= res!641081 (rulesProduceEachTokenIndividually!797 Lexer!2198 (rules!11082 sep!3) (tokens!1800 sep!3)))))

(declare-fun b!1415717 () Bool)

(assert (=> b!1415717 (= e!903739 (separableTokens!182 Lexer!2198 (tokens!1800 sep!3) (rules!11082 sep!3)))))

(assert (= (and d!405187 res!641079) b!1415715))

(assert (= (and b!1415715 res!641080) b!1415716))

(assert (= (and b!1415716 res!641081) b!1415717))

(declare-fun m!1600665 () Bool)

(assert (=> d!405187 m!1600665))

(declare-fun m!1600667 () Bool)

(assert (=> b!1415715 m!1600667))

(declare-fun m!1600669 () Bool)

(assert (=> b!1415716 m!1600669))

(declare-fun m!1600671 () Bool)

(assert (=> b!1415717 m!1600671))

(assert (=> start!129868 d!405187))

(declare-fun d!405189 () Bool)

(declare-fun c!232678 () Bool)

(assert (=> d!405189 (= c!232678 ((_ is Node!4850) (c!232668 (tokens!1800 sep!3))))))

(declare-fun e!903746 () Bool)

(assert (=> d!405189 (= (inv!19048 (c!232668 (tokens!1800 sep!3))) e!903746)))

(declare-fun b!1415730 () Bool)

(declare-fun inv!19053 (Conc!4850) Bool)

(assert (=> b!1415730 (= e!903746 (inv!19053 (c!232668 (tokens!1800 sep!3))))))

(declare-fun b!1415731 () Bool)

(declare-fun e!903747 () Bool)

(assert (=> b!1415731 (= e!903746 e!903747)))

(declare-fun res!641090 () Bool)

(assert (=> b!1415731 (= res!641090 (not ((_ is Leaf!7309) (c!232668 (tokens!1800 sep!3)))))))

(assert (=> b!1415731 (=> res!641090 e!903747)))

(declare-fun b!1415732 () Bool)

(declare-fun inv!19054 (Conc!4850) Bool)

(assert (=> b!1415732 (= e!903747 (inv!19054 (c!232668 (tokens!1800 sep!3))))))

(assert (= (and d!405189 c!232678) b!1415730))

(assert (= (and d!405189 (not c!232678)) b!1415731))

(assert (= (and b!1415731 (not res!641090)) b!1415732))

(declare-fun m!1600673 () Bool)

(assert (=> b!1415730 m!1600673))

(declare-fun m!1600675 () Bool)

(assert (=> b!1415732 m!1600675))

(assert (=> b!1415687 d!405189))

(declare-fun d!405191 () Bool)

(declare-fun c!232679 () Bool)

(assert (=> d!405191 (= c!232679 ((_ is Node!4850) (c!232668 (tokens!1800 acc!229))))))

(declare-fun e!903748 () Bool)

(assert (=> d!405191 (= (inv!19048 (c!232668 (tokens!1800 acc!229))) e!903748)))

(declare-fun b!1415733 () Bool)

(assert (=> b!1415733 (= e!903748 (inv!19053 (c!232668 (tokens!1800 acc!229))))))

(declare-fun b!1415734 () Bool)

(declare-fun e!903749 () Bool)

(assert (=> b!1415734 (= e!903748 e!903749)))

(declare-fun res!641091 () Bool)

(assert (=> b!1415734 (= res!641091 (not ((_ is Leaf!7309) (c!232668 (tokens!1800 acc!229)))))))

(assert (=> b!1415734 (=> res!641091 e!903749)))

(declare-fun b!1415735 () Bool)

(assert (=> b!1415735 (= e!903749 (inv!19054 (c!232668 (tokens!1800 acc!229))))))

(assert (= (and d!405191 c!232679) b!1415733))

(assert (= (and d!405191 (not c!232679)) b!1415734))

(assert (= (and b!1415734 (not res!641091)) b!1415735))

(declare-fun m!1600677 () Bool)

(assert (=> b!1415733 m!1600677))

(declare-fun m!1600679 () Bool)

(assert (=> b!1415735 m!1600679))

(assert (=> b!1415686 d!405191))

(declare-fun d!405193 () Bool)

(assert (=> d!405193 (= (inv!19047 (tokens!1800 sep!3)) (isBalanced!1434 (c!232668 (tokens!1800 sep!3))))))

(declare-fun bs!339366 () Bool)

(assert (= bs!339366 d!405193))

(declare-fun m!1600681 () Bool)

(assert (=> bs!339366 m!1600681))

(assert (=> b!1415681 d!405193))

(declare-fun b!1415753 () Bool)

(declare-fun e!903758 () Bool)

(declare-fun tp!401687 () Bool)

(declare-fun tp!401689 () Bool)

(assert (=> b!1415753 (= e!903758 (and (inv!19044 (left!12399 (c!232669 objs!24))) tp!401687 (inv!19044 (right!12729 (c!232669 objs!24))) tp!401689))))

(declare-fun b!1415755 () Bool)

(declare-fun e!903759 () Bool)

(declare-fun tp!401688 () Bool)

(assert (=> b!1415755 (= e!903759 tp!401688)))

(declare-fun b!1415754 () Bool)

(declare-fun inv!19055 (IArray!9707) Bool)

(assert (=> b!1415754 (= e!903758 (and (inv!19055 (xs!7578 (c!232669 objs!24))) e!903759))))

(assert (=> b!1415680 (= tp!401676 (and (inv!19044 (c!232669 objs!24)) e!903758))))

(assert (= (and b!1415680 ((_ is Node!4851) (c!232669 objs!24))) b!1415753))

(assert (= b!1415754 b!1415755))

(assert (= (and b!1415680 ((_ is Leaf!7310) (c!232669 objs!24))) b!1415754))

(declare-fun m!1600703 () Bool)

(assert (=> b!1415753 m!1600703))

(declare-fun m!1600705 () Bool)

(assert (=> b!1415753 m!1600705))

(declare-fun m!1600707 () Bool)

(assert (=> b!1415754 m!1600707))

(assert (=> b!1415680 m!1600607))

(declare-fun b!1415779 () Bool)

(declare-fun b_free!34823 () Bool)

(declare-fun b_next!35527 () Bool)

(assert (=> b!1415779 (= b_free!34823 (not b_next!35527))))

(declare-fun tp!401698 () Bool)

(declare-fun b_and!94815 () Bool)

(assert (=> b!1415779 (= tp!401698 b_and!94815)))

(declare-fun b_free!34825 () Bool)

(declare-fun b_next!35529 () Bool)

(assert (=> b!1415779 (= b_free!34825 (not b_next!35529))))

(declare-fun tp!401696 () Bool)

(declare-fun b_and!94817 () Bool)

(assert (=> b!1415779 (= tp!401696 b_and!94817)))

(declare-fun e!903778 () Bool)

(assert (=> b!1415779 (= e!903778 (and tp!401698 tp!401696))))

(declare-fun b!1415778 () Bool)

(declare-fun e!903777 () Bool)

(declare-fun inv!19038 (String!17311) Bool)

(declare-fun inv!19056 (TokenValueInjection!4890) Bool)

(assert (=> b!1415778 (= e!903777 (and (inv!19038 (tag!2787 (h!19910 (rules!11082 acc!229)))) (inv!19056 (transformation!2525 (h!19910 (rules!11082 acc!229)))) e!903778))))

(declare-fun b!1415777 () Bool)

(declare-fun e!903779 () Bool)

(declare-fun tp!401697 () Bool)

(assert (=> b!1415777 (= e!903779 (and e!903777 tp!401697))))

(assert (=> b!1415682 (= tp!401679 e!903779)))

(assert (= b!1415778 b!1415779))

(assert (= b!1415777 b!1415778))

(assert (= (and b!1415682 ((_ is Cons!14509) (rules!11082 acc!229))) b!1415777))

(declare-fun m!1600713 () Bool)

(assert (=> b!1415778 m!1600713))

(declare-fun m!1600715 () Bool)

(assert (=> b!1415778 m!1600715))

(declare-fun b!1415792 () Bool)

(declare-fun e!903790 () Bool)

(declare-fun tp!401712 () Bool)

(declare-fun tp!401711 () Bool)

(assert (=> b!1415792 (= e!903790 (and (inv!19048 (left!12398 (c!232668 (tokens!1800 sep!3)))) tp!401711 (inv!19048 (right!12728 (c!232668 (tokens!1800 sep!3)))) tp!401712))))

(declare-fun b!1415794 () Bool)

(declare-fun e!903791 () Bool)

(declare-fun tp!401713 () Bool)

(assert (=> b!1415794 (= e!903791 tp!401713)))

(declare-fun b!1415793 () Bool)

(declare-fun inv!19059 (IArray!9705) Bool)

(assert (=> b!1415793 (= e!903790 (and (inv!19059 (xs!7577 (c!232668 (tokens!1800 sep!3)))) e!903791))))

(assert (=> b!1415687 (= tp!401680 (and (inv!19048 (c!232668 (tokens!1800 sep!3))) e!903790))))

(assert (= (and b!1415687 ((_ is Node!4850) (c!232668 (tokens!1800 sep!3)))) b!1415792))

(assert (= b!1415793 b!1415794))

(assert (= (and b!1415687 ((_ is Leaf!7309) (c!232668 (tokens!1800 sep!3)))) b!1415793))

(declare-fun m!1600717 () Bool)

(assert (=> b!1415792 m!1600717))

(declare-fun m!1600719 () Bool)

(assert (=> b!1415792 m!1600719))

(declare-fun m!1600721 () Bool)

(assert (=> b!1415793 m!1600721))

(assert (=> b!1415687 m!1600613))

(declare-fun tp!401715 () Bool)

(declare-fun e!903792 () Bool)

(declare-fun tp!401714 () Bool)

(declare-fun b!1415795 () Bool)

(assert (=> b!1415795 (= e!903792 (and (inv!19048 (left!12398 (c!232668 (tokens!1800 acc!229)))) tp!401714 (inv!19048 (right!12728 (c!232668 (tokens!1800 acc!229)))) tp!401715))))

(declare-fun b!1415797 () Bool)

(declare-fun e!903793 () Bool)

(declare-fun tp!401716 () Bool)

(assert (=> b!1415797 (= e!903793 tp!401716)))

(declare-fun b!1415796 () Bool)

(assert (=> b!1415796 (= e!903792 (and (inv!19059 (xs!7577 (c!232668 (tokens!1800 acc!229)))) e!903793))))

(assert (=> b!1415686 (= tp!401678 (and (inv!19048 (c!232668 (tokens!1800 acc!229))) e!903792))))

(assert (= (and b!1415686 ((_ is Node!4850) (c!232668 (tokens!1800 acc!229)))) b!1415795))

(assert (= b!1415796 b!1415797))

(assert (= (and b!1415686 ((_ is Leaf!7309) (c!232668 (tokens!1800 acc!229)))) b!1415796))

(declare-fun m!1600723 () Bool)

(assert (=> b!1415795 m!1600723))

(declare-fun m!1600725 () Bool)

(assert (=> b!1415795 m!1600725))

(declare-fun m!1600727 () Bool)

(assert (=> b!1415796 m!1600727))

(assert (=> b!1415686 m!1600597))

(declare-fun b!1415803 () Bool)

(declare-fun b_free!34831 () Bool)

(declare-fun b_next!35535 () Bool)

(assert (=> b!1415803 (= b_free!34831 (not b_next!35535))))

(declare-fun tp!401722 () Bool)

(declare-fun b_and!94823 () Bool)

(assert (=> b!1415803 (= tp!401722 b_and!94823)))

(declare-fun b_free!34833 () Bool)

(declare-fun b_next!35537 () Bool)

(assert (=> b!1415803 (= b_free!34833 (not b_next!35537))))

(declare-fun tp!401720 () Bool)

(declare-fun b_and!94825 () Bool)

(assert (=> b!1415803 (= tp!401720 b_and!94825)))

(declare-fun e!903800 () Bool)

(assert (=> b!1415803 (= e!903800 (and tp!401722 tp!401720))))

(declare-fun b!1415802 () Bool)

(declare-fun e!903799 () Bool)

(assert (=> b!1415802 (= e!903799 (and (inv!19038 (tag!2787 (h!19910 (rules!11082 sep!3)))) (inv!19056 (transformation!2525 (h!19910 (rules!11082 sep!3)))) e!903800))))

(declare-fun b!1415801 () Bool)

(declare-fun e!903801 () Bool)

(declare-fun tp!401721 () Bool)

(assert (=> b!1415801 (= e!903801 (and e!903799 tp!401721))))

(assert (=> b!1415681 (= tp!401677 e!903801)))

(assert (= b!1415802 b!1415803))

(assert (= b!1415801 b!1415802))

(assert (= (and b!1415681 ((_ is Cons!14509) (rules!11082 sep!3))) b!1415801))

(declare-fun m!1600733 () Bool)

(assert (=> b!1415802 m!1600733))

(declare-fun m!1600735 () Bool)

(assert (=> b!1415802 m!1600735))

(check-sat (not b!1415777) (not b!1415802) (not b!1415686) (not d!405193) b_and!94823 (not b!1415796) (not b!1415716) (not b!1415753) (not b!1415795) (not d!405175) (not b!1415696) (not d!405159) (not b!1415694) (not b!1415792) (not b!1415797) (not b_next!35537) b_and!94815 b_and!94825 (not b!1415735) (not b_next!35527) (not b!1415680) (not b!1415715) (not d!405181) (not b!1415717) b_and!94817 (not b_next!35535) (not b!1415794) (not b!1415793) (not b!1415801) (not b!1415755) (not b!1415730) (not d!405187) (not b_next!35529) (not b!1415733) (not b!1415714) (not b!1415778) (not b!1415754) (not b!1415713) (not d!405171) (not d!405173) (not b!1415732) (not d!405161) (not b!1415712) (not d!405179) (not b!1415687))
(check-sat (not b_next!35527) b_and!94823 (not b_next!35529) (not b_next!35537) b_and!94815 b_and!94825 b_and!94817 (not b_next!35535))
(get-model)

(declare-fun d!405201 () Bool)

(declare-fun res!641106 () Bool)

(declare-fun e!903824 () Bool)

(assert (=> d!405201 (=> res!641106 e!903824)))

(assert (=> d!405201 (= res!641106 ((_ is Nil!14510) (list!5696 objs!24)))))

(assert (=> d!405201 (= (forall!3582 (list!5696 objs!24) lambda!62545) e!903824)))

(declare-fun b!1415836 () Bool)

(declare-fun e!903825 () Bool)

(assert (=> b!1415836 (= e!903824 e!903825)))

(declare-fun res!641107 () Bool)

(assert (=> b!1415836 (=> (not res!641107) (not e!903825))))

(declare-fun dynLambda!6701 (Int PrintableTokens!832) Bool)

(assert (=> b!1415836 (= res!641107 (dynLambda!6701 lambda!62545 (h!19911 (list!5696 objs!24))))))

(declare-fun b!1415837 () Bool)

(assert (=> b!1415837 (= e!903825 (forall!3582 (t!124021 (list!5696 objs!24)) lambda!62545))))

(assert (= (and d!405201 (not res!641106)) b!1415836))

(assert (= (and b!1415836 res!641107) b!1415837))

(declare-fun b_lambda!44591 () Bool)

(assert (=> (not b_lambda!44591) (not b!1415836)))

(declare-fun m!1600759 () Bool)

(assert (=> b!1415836 m!1600759))

(declare-fun m!1600761 () Bool)

(assert (=> b!1415837 m!1600761))

(assert (=> d!405175 d!405201))

(declare-fun d!405203 () Bool)

(declare-fun list!5698 (Conc!4851) List!14576)

(assert (=> d!405203 (= (list!5696 objs!24) (list!5698 (c!232669 objs!24)))))

(declare-fun bs!339367 () Bool)

(assert (= bs!339367 d!405203))

(declare-fun m!1600763 () Bool)

(assert (=> bs!339367 m!1600763))

(assert (=> d!405175 d!405203))

(declare-fun b!1415847 () Bool)

(declare-fun e!903833 () Bool)

(declare-fun forall!3586 (IArray!9707 Int) Bool)

(assert (=> b!1415847 (= e!903833 (forall!3586 (xs!7578 (c!232669 objs!24)) lambda!62545))))

(declare-fun b!1415849 () Bool)

(declare-fun e!903832 () Bool)

(assert (=> b!1415849 (= e!903832 (forall!3583 (right!12729 (c!232669 objs!24)) lambda!62545))))

(declare-fun b!1415846 () Bool)

(declare-fun e!903834 () Bool)

(assert (=> b!1415846 (= e!903834 e!903833)))

(declare-fun c!232686 () Bool)

(assert (=> b!1415846 (= c!232686 ((_ is Leaf!7310) (c!232669 objs!24)))))

(declare-fun b!1415848 () Bool)

(assert (=> b!1415848 (= e!903833 e!903832)))

(declare-datatypes ((Unit!21306 0))(
  ( (Unit!21307) )
))
(declare-fun lt!475857 () Unit!21306)

(declare-fun lemmaForallConcat!131 (List!14576 List!14576 Int) Unit!21306)

(assert (=> b!1415848 (= lt!475857 (lemmaForallConcat!131 (list!5698 (left!12399 (c!232669 objs!24))) (list!5698 (right!12729 (c!232669 objs!24))) lambda!62545))))

(declare-fun res!641113 () Bool)

(assert (=> b!1415848 (= res!641113 (forall!3583 (left!12399 (c!232669 objs!24)) lambda!62545))))

(assert (=> b!1415848 (=> (not res!641113) (not e!903832))))

(declare-fun d!405205 () Bool)

(declare-fun lt!475858 () Bool)

(assert (=> d!405205 (= lt!475858 (forall!3582 (list!5698 (c!232669 objs!24)) lambda!62545))))

(assert (=> d!405205 (= lt!475858 e!903834)))

(declare-fun res!641112 () Bool)

(assert (=> d!405205 (=> res!641112 e!903834)))

(assert (=> d!405205 (= res!641112 ((_ is Empty!4851) (c!232669 objs!24)))))

(assert (=> d!405205 (= (forall!3583 (c!232669 objs!24) lambda!62545) lt!475858)))

(assert (= (and d!405205 (not res!641112)) b!1415846))

(assert (= (and b!1415846 c!232686) b!1415847))

(assert (= (and b!1415846 (not c!232686)) b!1415848))

(assert (= (and b!1415848 res!641113) b!1415849))

(declare-fun m!1600765 () Bool)

(assert (=> b!1415847 m!1600765))

(declare-fun m!1600767 () Bool)

(assert (=> b!1415849 m!1600767))

(declare-fun m!1600769 () Bool)

(assert (=> b!1415848 m!1600769))

(declare-fun m!1600771 () Bool)

(assert (=> b!1415848 m!1600771))

(assert (=> b!1415848 m!1600769))

(assert (=> b!1415848 m!1600771))

(declare-fun m!1600773 () Bool)

(assert (=> b!1415848 m!1600773))

(declare-fun m!1600775 () Bool)

(assert (=> b!1415848 m!1600775))

(assert (=> d!405205 m!1600763))

(assert (=> d!405205 m!1600763))

(declare-fun m!1600777 () Bool)

(assert (=> d!405205 m!1600777))

(assert (=> d!405175 d!405205))

(declare-fun d!405207 () Bool)

(declare-fun c!232687 () Bool)

(assert (=> d!405207 (= c!232687 ((_ is Node!4850) (left!12398 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun e!903835 () Bool)

(assert (=> d!405207 (= (inv!19048 (left!12398 (c!232668 (tokens!1800 sep!3)))) e!903835)))

(declare-fun b!1415850 () Bool)

(assert (=> b!1415850 (= e!903835 (inv!19053 (left!12398 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun b!1415851 () Bool)

(declare-fun e!903836 () Bool)

(assert (=> b!1415851 (= e!903835 e!903836)))

(declare-fun res!641114 () Bool)

(assert (=> b!1415851 (= res!641114 (not ((_ is Leaf!7309) (left!12398 (c!232668 (tokens!1800 sep!3))))))))

(assert (=> b!1415851 (=> res!641114 e!903836)))

(declare-fun b!1415852 () Bool)

(assert (=> b!1415852 (= e!903836 (inv!19054 (left!12398 (c!232668 (tokens!1800 sep!3)))))))

(assert (= (and d!405207 c!232687) b!1415850))

(assert (= (and d!405207 (not c!232687)) b!1415851))

(assert (= (and b!1415851 (not res!641114)) b!1415852))

(declare-fun m!1600779 () Bool)

(assert (=> b!1415850 m!1600779))

(declare-fun m!1600781 () Bool)

(assert (=> b!1415852 m!1600781))

(assert (=> b!1415792 d!405207))

(declare-fun d!405209 () Bool)

(declare-fun c!232688 () Bool)

(assert (=> d!405209 (= c!232688 ((_ is Node!4850) (right!12728 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun e!903837 () Bool)

(assert (=> d!405209 (= (inv!19048 (right!12728 (c!232668 (tokens!1800 sep!3)))) e!903837)))

(declare-fun b!1415853 () Bool)

(assert (=> b!1415853 (= e!903837 (inv!19053 (right!12728 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun b!1415854 () Bool)

(declare-fun e!903838 () Bool)

(assert (=> b!1415854 (= e!903837 e!903838)))

(declare-fun res!641115 () Bool)

(assert (=> b!1415854 (= res!641115 (not ((_ is Leaf!7309) (right!12728 (c!232668 (tokens!1800 sep!3))))))))

(assert (=> b!1415854 (=> res!641115 e!903838)))

(declare-fun b!1415855 () Bool)

(assert (=> b!1415855 (= e!903838 (inv!19054 (right!12728 (c!232668 (tokens!1800 sep!3)))))))

(assert (= (and d!405209 c!232688) b!1415853))

(assert (= (and d!405209 (not c!232688)) b!1415854))

(assert (= (and b!1415854 (not res!641115)) b!1415855))

(declare-fun m!1600783 () Bool)

(assert (=> b!1415853 m!1600783))

(declare-fun m!1600785 () Bool)

(assert (=> b!1415855 m!1600785))

(assert (=> b!1415792 d!405209))

(declare-fun d!405211 () Bool)

(declare-fun size!11965 (List!14574) Int)

(assert (=> d!405211 (= (inv!19059 (xs!7577 (c!232668 (tokens!1800 sep!3)))) (<= (size!11965 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3))))) 2147483647))))

(declare-fun bs!339368 () Bool)

(assert (= bs!339368 d!405211))

(declare-fun m!1600787 () Bool)

(assert (=> bs!339368 m!1600787))

(assert (=> b!1415793 d!405211))

(assert (=> b!1415687 d!405189))

(assert (=> b!1415686 d!405191))

(assert (=> b!1415680 d!405153))

(declare-fun d!405213 () Bool)

(declare-fun res!641128 () Bool)

(declare-fun e!903843 () Bool)

(assert (=> d!405213 (=> res!641128 e!903843)))

(assert (=> d!405213 (= res!641128 (not ((_ is Node!4850) (c!232668 (tokens!1800 acc!229)))))))

(assert (=> d!405213 (= (isBalanced!1434 (c!232668 (tokens!1800 acc!229))) e!903843)))

(declare-fun b!1415868 () Bool)

(declare-fun res!641129 () Bool)

(declare-fun e!903844 () Bool)

(assert (=> b!1415868 (=> (not res!641129) (not e!903844))))

(assert (=> b!1415868 (= res!641129 (isBalanced!1434 (right!12728 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun b!1415869 () Bool)

(declare-fun res!641131 () Bool)

(assert (=> b!1415869 (=> (not res!641131) (not e!903844))))

(assert (=> b!1415869 (= res!641131 (isBalanced!1434 (left!12398 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun b!1415870 () Bool)

(declare-fun res!641130 () Bool)

(assert (=> b!1415870 (=> (not res!641130) (not e!903844))))

(declare-fun height!700 (Conc!4850) Int)

(assert (=> b!1415870 (= res!641130 (<= (- (height!700 (left!12398 (c!232668 (tokens!1800 acc!229)))) (height!700 (right!12728 (c!232668 (tokens!1800 acc!229))))) 1))))

(declare-fun b!1415871 () Bool)

(declare-fun res!641132 () Bool)

(assert (=> b!1415871 (=> (not res!641132) (not e!903844))))

(declare-fun isEmpty!8889 (Conc!4850) Bool)

(assert (=> b!1415871 (= res!641132 (not (isEmpty!8889 (left!12398 (c!232668 (tokens!1800 acc!229))))))))

(declare-fun b!1415872 () Bool)

(assert (=> b!1415872 (= e!903843 e!903844)))

(declare-fun res!641133 () Bool)

(assert (=> b!1415872 (=> (not res!641133) (not e!903844))))

(assert (=> b!1415872 (= res!641133 (<= (- 1) (- (height!700 (left!12398 (c!232668 (tokens!1800 acc!229)))) (height!700 (right!12728 (c!232668 (tokens!1800 acc!229)))))))))

(declare-fun b!1415873 () Bool)

(assert (=> b!1415873 (= e!903844 (not (isEmpty!8889 (right!12728 (c!232668 (tokens!1800 acc!229))))))))

(assert (= (and d!405213 (not res!641128)) b!1415872))

(assert (= (and b!1415872 res!641133) b!1415870))

(assert (= (and b!1415870 res!641130) b!1415869))

(assert (= (and b!1415869 res!641131) b!1415868))

(assert (= (and b!1415868 res!641129) b!1415871))

(assert (= (and b!1415871 res!641132) b!1415873))

(declare-fun m!1600789 () Bool)

(assert (=> b!1415868 m!1600789))

(declare-fun m!1600791 () Bool)

(assert (=> b!1415871 m!1600791))

(declare-fun m!1600793 () Bool)

(assert (=> b!1415873 m!1600793))

(declare-fun m!1600795 () Bool)

(assert (=> b!1415870 m!1600795))

(declare-fun m!1600797 () Bool)

(assert (=> b!1415870 m!1600797))

(assert (=> b!1415872 m!1600795))

(assert (=> b!1415872 m!1600797))

(declare-fun m!1600799 () Bool)

(assert (=> b!1415869 m!1600799))

(assert (=> d!405173 d!405213))

(declare-fun d!405215 () Bool)

(declare-fun c!232689 () Bool)

(assert (=> d!405215 (= c!232689 ((_ is Node!4850) (left!12398 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun e!903845 () Bool)

(assert (=> d!405215 (= (inv!19048 (left!12398 (c!232668 (tokens!1800 acc!229)))) e!903845)))

(declare-fun b!1415874 () Bool)

(assert (=> b!1415874 (= e!903845 (inv!19053 (left!12398 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun b!1415875 () Bool)

(declare-fun e!903846 () Bool)

(assert (=> b!1415875 (= e!903845 e!903846)))

(declare-fun res!641134 () Bool)

(assert (=> b!1415875 (= res!641134 (not ((_ is Leaf!7309) (left!12398 (c!232668 (tokens!1800 acc!229))))))))

(assert (=> b!1415875 (=> res!641134 e!903846)))

(declare-fun b!1415876 () Bool)

(assert (=> b!1415876 (= e!903846 (inv!19054 (left!12398 (c!232668 (tokens!1800 acc!229)))))))

(assert (= (and d!405215 c!232689) b!1415874))

(assert (= (and d!405215 (not c!232689)) b!1415875))

(assert (= (and b!1415875 (not res!641134)) b!1415876))

(declare-fun m!1600801 () Bool)

(assert (=> b!1415874 m!1600801))

(declare-fun m!1600803 () Bool)

(assert (=> b!1415876 m!1600803))

(assert (=> b!1415795 d!405215))

(declare-fun d!405217 () Bool)

(declare-fun c!232690 () Bool)

(assert (=> d!405217 (= c!232690 ((_ is Node!4850) (right!12728 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun e!903847 () Bool)

(assert (=> d!405217 (= (inv!19048 (right!12728 (c!232668 (tokens!1800 acc!229)))) e!903847)))

(declare-fun b!1415877 () Bool)

(assert (=> b!1415877 (= e!903847 (inv!19053 (right!12728 (c!232668 (tokens!1800 acc!229)))))))

(declare-fun b!1415878 () Bool)

(declare-fun e!903848 () Bool)

(assert (=> b!1415878 (= e!903847 e!903848)))

(declare-fun res!641135 () Bool)

(assert (=> b!1415878 (= res!641135 (not ((_ is Leaf!7309) (right!12728 (c!232668 (tokens!1800 acc!229))))))))

(assert (=> b!1415878 (=> res!641135 e!903848)))

(declare-fun b!1415879 () Bool)

(assert (=> b!1415879 (= e!903848 (inv!19054 (right!12728 (c!232668 (tokens!1800 acc!229)))))))

(assert (= (and d!405217 c!232690) b!1415877))

(assert (= (and d!405217 (not c!232690)) b!1415878))

(assert (= (and b!1415878 (not res!641135)) b!1415879))

(declare-fun m!1600805 () Bool)

(assert (=> b!1415877 m!1600805))

(declare-fun m!1600807 () Bool)

(assert (=> b!1415879 m!1600807))

(assert (=> b!1415795 d!405217))

(declare-fun b!1415938 () Bool)

(declare-fun e!903879 () Bool)

(assert (=> b!1415938 (= e!903879 true)))

(declare-fun b!1415937 () Bool)

(declare-fun e!903878 () Bool)

(assert (=> b!1415937 (= e!903878 e!903879)))

(declare-fun b!1415936 () Bool)

(declare-fun e!903877 () Bool)

(assert (=> b!1415936 (= e!903877 e!903878)))

(declare-fun d!405219 () Bool)

(assert (=> d!405219 e!903877))

(assert (= b!1415937 b!1415938))

(assert (= b!1415936 b!1415937))

(assert (= (and d!405219 ((_ is Cons!14509) (rules!11082 acc!229))) b!1415936))

(declare-fun order!8829 () Int)

(declare-fun lambda!62550 () Int)

(declare-fun order!8827 () Int)

(declare-fun dynLambda!6702 (Int Int) Int)

(declare-fun dynLambda!6703 (Int Int) Int)

(assert (=> b!1415938 (< (dynLambda!6702 order!8827 (toValue!3824 (transformation!2525 (h!19910 (rules!11082 acc!229))))) (dynLambda!6703 order!8829 lambda!62550))))

(declare-fun order!8831 () Int)

(declare-fun dynLambda!6704 (Int Int) Int)

(assert (=> b!1415938 (< (dynLambda!6704 order!8831 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 acc!229))))) (dynLambda!6703 order!8829 lambda!62550))))

(assert (=> d!405219 true))

(declare-fun e!903870 () Bool)

(assert (=> d!405219 e!903870))

(declare-fun res!641179 () Bool)

(assert (=> d!405219 (=> (not res!641179) (not e!903870))))

(declare-fun lt!475861 () Bool)

(declare-fun forall!3587 (List!14574 Int) Bool)

(declare-fun list!5699 (BalanceConc!9640) List!14574)

(assert (=> d!405219 (= res!641179 (= lt!475861 (forall!3587 (list!5699 (tokens!1800 acc!229)) lambda!62550)))))

(declare-fun forall!3588 (BalanceConc!9640 Int) Bool)

(assert (=> d!405219 (= lt!475861 (forall!3588 (tokens!1800 acc!229) lambda!62550))))

(assert (=> d!405219 (not (isEmpty!8887 (rules!11082 acc!229)))))

(assert (=> d!405219 (= (rulesProduceEachTokenIndividually!797 Lexer!2198 (rules!11082 acc!229) (tokens!1800 acc!229)) lt!475861)))

(declare-fun b!1415927 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!683 (LexerInterface!2200 List!14575 List!14574) Bool)

(assert (=> b!1415927 (= e!903870 (= lt!475861 (rulesProduceEachTokenIndividuallyList!683 Lexer!2198 (rules!11082 acc!229) (list!5699 (tokens!1800 acc!229)))))))

(assert (= (and d!405219 res!641179) b!1415927))

(declare-fun m!1600849 () Bool)

(assert (=> d!405219 m!1600849))

(assert (=> d!405219 m!1600849))

(declare-fun m!1600851 () Bool)

(assert (=> d!405219 m!1600851))

(declare-fun m!1600853 () Bool)

(assert (=> d!405219 m!1600853))

(assert (=> d!405219 m!1600657))

(assert (=> b!1415927 m!1600849))

(assert (=> b!1415927 m!1600849))

(declare-fun m!1600855 () Bool)

(assert (=> b!1415927 m!1600855))

(assert (=> b!1415713 d!405219))

(declare-fun d!405235 () Bool)

(declare-fun lt!475864 () Int)

(assert (=> d!405235 (>= lt!475864 0)))

(declare-fun e!903882 () Int)

(assert (=> d!405235 (= lt!475864 e!903882)))

(declare-fun c!232695 () Bool)

(assert (=> d!405235 (= c!232695 ((_ is Nil!14510) (list!5696 objs!24)))))

(assert (=> d!405235 (= (size!11961 (list!5696 objs!24)) lt!475864)))

(declare-fun b!1415945 () Bool)

(assert (=> b!1415945 (= e!903882 0)))

(declare-fun b!1415946 () Bool)

(assert (=> b!1415946 (= e!903882 (+ 1 (size!11961 (t!124021 (list!5696 objs!24)))))))

(assert (= (and d!405235 c!232695) b!1415945))

(assert (= (and d!405235 (not c!232695)) b!1415946))

(declare-fun m!1600857 () Bool)

(assert (=> b!1415946 m!1600857))

(assert (=> d!405159 d!405235))

(assert (=> d!405159 d!405203))

(declare-fun d!405237 () Bool)

(declare-fun lt!475867 () Int)

(assert (=> d!405237 (= lt!475867 (size!11961 (list!5698 (c!232669 objs!24))))))

(assert (=> d!405237 (= lt!475867 (ite ((_ is Empty!4851) (c!232669 objs!24)) 0 (ite ((_ is Leaf!7310) (c!232669 objs!24)) (csize!9933 (c!232669 objs!24)) (csize!9932 (c!232669 objs!24)))))))

(assert (=> d!405237 (= (size!11962 (c!232669 objs!24)) lt!475867)))

(declare-fun bs!339369 () Bool)

(assert (= bs!339369 d!405237))

(assert (=> bs!339369 m!1600763))

(assert (=> bs!339369 m!1600763))

(declare-fun m!1600859 () Bool)

(assert (=> bs!339369 m!1600859))

(assert (=> d!405159 d!405237))

(declare-fun d!405239 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!93 (LexerInterface!2200 BalanceConc!9640 Int List!14575) Bool)

(assert (=> d!405239 (= (separableTokens!182 Lexer!2198 (tokens!1800 acc!229) (rules!11082 acc!229)) (tokensListTwoByTwoPredicateSeparable!93 Lexer!2198 (tokens!1800 acc!229) 0 (rules!11082 acc!229)))))

(declare-fun bs!339370 () Bool)

(assert (= bs!339370 d!405239))

(declare-fun m!1600869 () Bool)

(assert (=> bs!339370 m!1600869))

(assert (=> b!1415714 d!405239))

(declare-fun d!405243 () Bool)

(declare-fun res!641187 () Bool)

(declare-fun e!903897 () Bool)

(assert (=> d!405243 (=> (not res!641187) (not e!903897))))

(declare-fun list!5700 (IArray!9705) List!14574)

(assert (=> d!405243 (= res!641187 (<= (size!11965 (list!5700 (xs!7577 (c!232668 (tokens!1800 sep!3))))) 512))))

(assert (=> d!405243 (= (inv!19054 (c!232668 (tokens!1800 sep!3))) e!903897)))

(declare-fun b!1415967 () Bool)

(declare-fun res!641188 () Bool)

(assert (=> b!1415967 (=> (not res!641188) (not e!903897))))

(assert (=> b!1415967 (= res!641188 (= (csize!9931 (c!232668 (tokens!1800 sep!3))) (size!11965 (list!5700 (xs!7577 (c!232668 (tokens!1800 sep!3)))))))))

(declare-fun b!1415968 () Bool)

(assert (=> b!1415968 (= e!903897 (and (> (csize!9931 (c!232668 (tokens!1800 sep!3))) 0) (<= (csize!9931 (c!232668 (tokens!1800 sep!3))) 512)))))

(assert (= (and d!405243 res!641187) b!1415967))

(assert (= (and b!1415967 res!641188) b!1415968))

(declare-fun m!1600871 () Bool)

(assert (=> d!405243 m!1600871))

(assert (=> d!405243 m!1600871))

(declare-fun m!1600873 () Bool)

(assert (=> d!405243 m!1600873))

(assert (=> b!1415967 m!1600871))

(assert (=> b!1415967 m!1600871))

(assert (=> b!1415967 m!1600873))

(assert (=> b!1415732 d!405243))

(declare-fun d!405245 () Bool)

(declare-fun res!641195 () Bool)

(declare-fun e!903900 () Bool)

(assert (=> d!405245 (=> (not res!641195) (not e!903900))))

(declare-fun size!11966 (Conc!4850) Int)

(assert (=> d!405245 (= res!641195 (= (csize!9930 (c!232668 (tokens!1800 sep!3))) (+ (size!11966 (left!12398 (c!232668 (tokens!1800 sep!3)))) (size!11966 (right!12728 (c!232668 (tokens!1800 sep!3)))))))))

(assert (=> d!405245 (= (inv!19053 (c!232668 (tokens!1800 sep!3))) e!903900)))

(declare-fun b!1415975 () Bool)

(declare-fun res!641196 () Bool)

(assert (=> b!1415975 (=> (not res!641196) (not e!903900))))

(assert (=> b!1415975 (= res!641196 (and (not (= (left!12398 (c!232668 (tokens!1800 sep!3))) Empty!4850)) (not (= (right!12728 (c!232668 (tokens!1800 sep!3))) Empty!4850))))))

(declare-fun b!1415976 () Bool)

(declare-fun res!641197 () Bool)

(assert (=> b!1415976 (=> (not res!641197) (not e!903900))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1415976 (= res!641197 (= (cheight!5061 (c!232668 (tokens!1800 sep!3))) (+ (max!0 (height!700 (left!12398 (c!232668 (tokens!1800 sep!3)))) (height!700 (right!12728 (c!232668 (tokens!1800 sep!3))))) 1)))))

(declare-fun b!1415977 () Bool)

(assert (=> b!1415977 (= e!903900 (<= 0 (cheight!5061 (c!232668 (tokens!1800 sep!3)))))))

(assert (= (and d!405245 res!641195) b!1415975))

(assert (= (and b!1415975 res!641196) b!1415976))

(assert (= (and b!1415976 res!641197) b!1415977))

(declare-fun m!1600875 () Bool)

(assert (=> d!405245 m!1600875))

(declare-fun m!1600877 () Bool)

(assert (=> d!405245 m!1600877))

(declare-fun m!1600879 () Bool)

(assert (=> b!1415976 m!1600879))

(declare-fun m!1600881 () Bool)

(assert (=> b!1415976 m!1600881))

(assert (=> b!1415976 m!1600879))

(assert (=> b!1415976 m!1600881))

(declare-fun m!1600883 () Bool)

(assert (=> b!1415976 m!1600883))

(assert (=> b!1415730 d!405245))

(declare-fun d!405247 () Bool)

(assert (=> d!405247 (= (inv!19059 (xs!7577 (c!232668 (tokens!1800 acc!229)))) (<= (size!11965 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229))))) 2147483647))))

(declare-fun bs!339371 () Bool)

(assert (= bs!339371 d!405247))

(declare-fun m!1600885 () Bool)

(assert (=> bs!339371 m!1600885))

(assert (=> b!1415796 d!405247))

(declare-fun d!405249 () Bool)

(declare-fun res!641198 () Bool)

(declare-fun e!903901 () Bool)

(assert (=> d!405249 (=> res!641198 e!903901)))

(assert (=> d!405249 (= res!641198 (not ((_ is Node!4850) (c!232668 (tokens!1800 sep!3)))))))

(assert (=> d!405249 (= (isBalanced!1434 (c!232668 (tokens!1800 sep!3))) e!903901)))

(declare-fun b!1415978 () Bool)

(declare-fun res!641199 () Bool)

(declare-fun e!903902 () Bool)

(assert (=> b!1415978 (=> (not res!641199) (not e!903902))))

(assert (=> b!1415978 (= res!641199 (isBalanced!1434 (right!12728 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun b!1415979 () Bool)

(declare-fun res!641201 () Bool)

(assert (=> b!1415979 (=> (not res!641201) (not e!903902))))

(assert (=> b!1415979 (= res!641201 (isBalanced!1434 (left!12398 (c!232668 (tokens!1800 sep!3)))))))

(declare-fun b!1415980 () Bool)

(declare-fun res!641200 () Bool)

(assert (=> b!1415980 (=> (not res!641200) (not e!903902))))

(assert (=> b!1415980 (= res!641200 (<= (- (height!700 (left!12398 (c!232668 (tokens!1800 sep!3)))) (height!700 (right!12728 (c!232668 (tokens!1800 sep!3))))) 1))))

(declare-fun b!1415981 () Bool)

(declare-fun res!641202 () Bool)

(assert (=> b!1415981 (=> (not res!641202) (not e!903902))))

(assert (=> b!1415981 (= res!641202 (not (isEmpty!8889 (left!12398 (c!232668 (tokens!1800 sep!3))))))))

(declare-fun b!1415982 () Bool)

(assert (=> b!1415982 (= e!903901 e!903902)))

(declare-fun res!641203 () Bool)

(assert (=> b!1415982 (=> (not res!641203) (not e!903902))))

(assert (=> b!1415982 (= res!641203 (<= (- 1) (- (height!700 (left!12398 (c!232668 (tokens!1800 sep!3)))) (height!700 (right!12728 (c!232668 (tokens!1800 sep!3)))))))))

(declare-fun b!1415983 () Bool)

(assert (=> b!1415983 (= e!903902 (not (isEmpty!8889 (right!12728 (c!232668 (tokens!1800 sep!3))))))))

(assert (= (and d!405249 (not res!641198)) b!1415982))

(assert (= (and b!1415982 res!641203) b!1415980))

(assert (= (and b!1415980 res!641200) b!1415979))

(assert (= (and b!1415979 res!641201) b!1415978))

(assert (= (and b!1415978 res!641199) b!1415981))

(assert (= (and b!1415981 res!641202) b!1415983))

(declare-fun m!1600887 () Bool)

(assert (=> b!1415978 m!1600887))

(declare-fun m!1600889 () Bool)

(assert (=> b!1415981 m!1600889))

(declare-fun m!1600891 () Bool)

(assert (=> b!1415983 m!1600891))

(assert (=> b!1415980 m!1600879))

(assert (=> b!1415980 m!1600881))

(assert (=> b!1415982 m!1600879))

(assert (=> b!1415982 m!1600881))

(declare-fun m!1600893 () Bool)

(assert (=> b!1415979 m!1600893))

(assert (=> d!405193 d!405249))

(declare-fun d!405251 () Bool)

(assert (=> d!405251 (= (isEmpty!8887 (rules!11082 acc!229)) ((_ is Nil!14509) (rules!11082 acc!229)))))

(assert (=> d!405181 d!405251))

(declare-fun d!405253 () Bool)

(assert (=> d!405253 (= (inv!19055 (xs!7578 (c!232669 objs!24))) (<= (size!11961 (innerList!4911 (xs!7578 (c!232669 objs!24)))) 2147483647))))

(declare-fun bs!339372 () Bool)

(assert (= bs!339372 d!405253))

(declare-fun m!1600895 () Bool)

(assert (=> bs!339372 m!1600895))

(assert (=> b!1415754 d!405253))

(declare-fun d!405255 () Bool)

(assert (=> d!405255 (= (separableTokens!182 Lexer!2198 (tokens!1800 sep!3) (rules!11082 sep!3)) (tokensListTwoByTwoPredicateSeparable!93 Lexer!2198 (tokens!1800 sep!3) 0 (rules!11082 sep!3)))))

(declare-fun bs!339373 () Bool)

(assert (= bs!339373 d!405255))

(declare-fun m!1600897 () Bool)

(assert (=> bs!339373 m!1600897))

(assert (=> b!1415717 d!405255))

(declare-fun d!405257 () Bool)

(declare-fun res!641204 () Bool)

(declare-fun e!903903 () Bool)

(assert (=> d!405257 (=> (not res!641204) (not e!903903))))

(assert (=> d!405257 (= res!641204 (<= (size!11965 (list!5700 (xs!7577 (c!232668 (tokens!1800 acc!229))))) 512))))

(assert (=> d!405257 (= (inv!19054 (c!232668 (tokens!1800 acc!229))) e!903903)))

(declare-fun b!1415984 () Bool)

(declare-fun res!641205 () Bool)

(assert (=> b!1415984 (=> (not res!641205) (not e!903903))))

(assert (=> b!1415984 (= res!641205 (= (csize!9931 (c!232668 (tokens!1800 acc!229))) (size!11965 (list!5700 (xs!7577 (c!232668 (tokens!1800 acc!229)))))))))

(declare-fun b!1415985 () Bool)

(assert (=> b!1415985 (= e!903903 (and (> (csize!9931 (c!232668 (tokens!1800 acc!229))) 0) (<= (csize!9931 (c!232668 (tokens!1800 acc!229))) 512)))))

(assert (= (and d!405257 res!641204) b!1415984))

(assert (= (and b!1415984 res!641205) b!1415985))

(declare-fun m!1600899 () Bool)

(assert (=> d!405257 m!1600899))

(assert (=> d!405257 m!1600899))

(declare-fun m!1600901 () Bool)

(assert (=> d!405257 m!1600901))

(assert (=> b!1415984 m!1600899))

(assert (=> b!1415984 m!1600899))

(assert (=> b!1415984 m!1600901))

(assert (=> b!1415735 d!405257))

(declare-fun d!405259 () Bool)

(declare-fun res!641208 () Bool)

(declare-fun e!903906 () Bool)

(assert (=> d!405259 (=> (not res!641208) (not e!903906))))

(declare-fun rulesValid!945 (LexerInterface!2200 List!14575) Bool)

(assert (=> d!405259 (= res!641208 (rulesValid!945 Lexer!2198 (rules!11082 sep!3)))))

(assert (=> d!405259 (= (rulesInvariant!2070 Lexer!2198 (rules!11082 sep!3)) e!903906)))

(declare-fun b!1415988 () Bool)

(declare-datatypes ((List!14578 0))(
  ( (Nil!14512) (Cons!14512 (h!19913 String!17311) (t!124069 List!14578)) )
))
(declare-fun noDuplicateTag!945 (LexerInterface!2200 List!14575 List!14578) Bool)

(assert (=> b!1415988 (= e!903906 (noDuplicateTag!945 Lexer!2198 (rules!11082 sep!3) Nil!14512))))

(assert (= (and d!405259 res!641208) b!1415988))

(declare-fun m!1600903 () Bool)

(assert (=> d!405259 m!1600903))

(declare-fun m!1600905 () Bool)

(assert (=> b!1415988 m!1600905))

(assert (=> b!1415715 d!405259))

(declare-fun d!405261 () Bool)

(declare-fun res!641209 () Bool)

(declare-fun e!903907 () Bool)

(assert (=> d!405261 (=> (not res!641209) (not e!903907))))

(assert (=> d!405261 (= res!641209 (= (csize!9930 (c!232668 (tokens!1800 acc!229))) (+ (size!11966 (left!12398 (c!232668 (tokens!1800 acc!229)))) (size!11966 (right!12728 (c!232668 (tokens!1800 acc!229)))))))))

(assert (=> d!405261 (= (inv!19053 (c!232668 (tokens!1800 acc!229))) e!903907)))

(declare-fun b!1415989 () Bool)

(declare-fun res!641210 () Bool)

(assert (=> b!1415989 (=> (not res!641210) (not e!903907))))

(assert (=> b!1415989 (= res!641210 (and (not (= (left!12398 (c!232668 (tokens!1800 acc!229))) Empty!4850)) (not (= (right!12728 (c!232668 (tokens!1800 acc!229))) Empty!4850))))))

(declare-fun b!1415990 () Bool)

(declare-fun res!641211 () Bool)

(assert (=> b!1415990 (=> (not res!641211) (not e!903907))))

(assert (=> b!1415990 (= res!641211 (= (cheight!5061 (c!232668 (tokens!1800 acc!229))) (+ (max!0 (height!700 (left!12398 (c!232668 (tokens!1800 acc!229)))) (height!700 (right!12728 (c!232668 (tokens!1800 acc!229))))) 1)))))

(declare-fun b!1415991 () Bool)

(assert (=> b!1415991 (= e!903907 (<= 0 (cheight!5061 (c!232668 (tokens!1800 acc!229)))))))

(assert (= (and d!405261 res!641209) b!1415989))

(assert (= (and b!1415989 res!641210) b!1415990))

(assert (= (and b!1415990 res!641211) b!1415991))

(declare-fun m!1600907 () Bool)

(assert (=> d!405261 m!1600907))

(declare-fun m!1600909 () Bool)

(assert (=> d!405261 m!1600909))

(assert (=> b!1415990 m!1600795))

(assert (=> b!1415990 m!1600797))

(assert (=> b!1415990 m!1600795))

(assert (=> b!1415990 m!1600797))

(declare-fun m!1600911 () Bool)

(assert (=> b!1415990 m!1600911))

(assert (=> b!1415733 d!405261))

(declare-fun bs!339374 () Bool)

(declare-fun d!405263 () Bool)

(assert (= bs!339374 (and d!405263 d!405219)))

(declare-fun lambda!62556 () Int)

(assert (=> bs!339374 (= (= (rules!11082 sep!3) (rules!11082 acc!229)) (= lambda!62556 lambda!62550))))

(declare-fun b!1415995 () Bool)

(declare-fun e!903911 () Bool)

(assert (=> b!1415995 (= e!903911 true)))

(declare-fun b!1415994 () Bool)

(declare-fun e!903910 () Bool)

(assert (=> b!1415994 (= e!903910 e!903911)))

(declare-fun b!1415993 () Bool)

(declare-fun e!903909 () Bool)

(assert (=> b!1415993 (= e!903909 e!903910)))

(assert (=> d!405263 e!903909))

(assert (= b!1415994 b!1415995))

(assert (= b!1415993 b!1415994))

(assert (= (and d!405263 ((_ is Cons!14509) (rules!11082 sep!3))) b!1415993))

(assert (=> b!1415995 (< (dynLambda!6702 order!8827 (toValue!3824 (transformation!2525 (h!19910 (rules!11082 sep!3))))) (dynLambda!6703 order!8829 lambda!62556))))

(assert (=> b!1415995 (< (dynLambda!6704 order!8831 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 sep!3))))) (dynLambda!6703 order!8829 lambda!62556))))

(assert (=> d!405263 true))

(declare-fun e!903908 () Bool)

(assert (=> d!405263 e!903908))

(declare-fun res!641212 () Bool)

(assert (=> d!405263 (=> (not res!641212) (not e!903908))))

(declare-fun lt!475871 () Bool)

(assert (=> d!405263 (= res!641212 (= lt!475871 (forall!3587 (list!5699 (tokens!1800 sep!3)) lambda!62556)))))

(assert (=> d!405263 (= lt!475871 (forall!3588 (tokens!1800 sep!3) lambda!62556))))

(assert (=> d!405263 (not (isEmpty!8887 (rules!11082 sep!3)))))

(assert (=> d!405263 (= (rulesProduceEachTokenIndividually!797 Lexer!2198 (rules!11082 sep!3) (tokens!1800 sep!3)) lt!475871)))

(declare-fun b!1415992 () Bool)

(assert (=> b!1415992 (= e!903908 (= lt!475871 (rulesProduceEachTokenIndividuallyList!683 Lexer!2198 (rules!11082 sep!3) (list!5699 (tokens!1800 sep!3)))))))

(assert (= (and d!405263 res!641212) b!1415992))

(declare-fun m!1600913 () Bool)

(assert (=> d!405263 m!1600913))

(assert (=> d!405263 m!1600913))

(declare-fun m!1600915 () Bool)

(assert (=> d!405263 m!1600915))

(declare-fun m!1600917 () Bool)

(assert (=> d!405263 m!1600917))

(assert (=> d!405263 m!1600665))

(assert (=> b!1415992 m!1600913))

(assert (=> b!1415992 m!1600913))

(declare-fun m!1600919 () Bool)

(assert (=> b!1415992 m!1600919))

(assert (=> b!1415716 d!405263))

(declare-fun d!405265 () Bool)

(declare-fun c!232696 () Bool)

(assert (=> d!405265 (= c!232696 ((_ is Node!4851) (left!12399 (c!232669 objs!24))))))

(declare-fun e!903912 () Bool)

(assert (=> d!405265 (= (inv!19044 (left!12399 (c!232669 objs!24))) e!903912)))

(declare-fun b!1415996 () Bool)

(assert (=> b!1415996 (= e!903912 (inv!19049 (left!12399 (c!232669 objs!24))))))

(declare-fun b!1415997 () Bool)

(declare-fun e!903913 () Bool)

(assert (=> b!1415997 (= e!903912 e!903913)))

(declare-fun res!641213 () Bool)

(assert (=> b!1415997 (= res!641213 (not ((_ is Leaf!7310) (left!12399 (c!232669 objs!24)))))))

(assert (=> b!1415997 (=> res!641213 e!903913)))

(declare-fun b!1415998 () Bool)

(assert (=> b!1415998 (= e!903913 (inv!19050 (left!12399 (c!232669 objs!24))))))

(assert (= (and d!405265 c!232696) b!1415996))

(assert (= (and d!405265 (not c!232696)) b!1415997))

(assert (= (and b!1415997 (not res!641213)) b!1415998))

(declare-fun m!1600921 () Bool)

(assert (=> b!1415996 m!1600921))

(declare-fun m!1600923 () Bool)

(assert (=> b!1415998 m!1600923))

(assert (=> b!1415753 d!405265))

(declare-fun d!405267 () Bool)

(declare-fun c!232697 () Bool)

(assert (=> d!405267 (= c!232697 ((_ is Node!4851) (right!12729 (c!232669 objs!24))))))

(declare-fun e!903914 () Bool)

(assert (=> d!405267 (= (inv!19044 (right!12729 (c!232669 objs!24))) e!903914)))

(declare-fun b!1415999 () Bool)

(assert (=> b!1415999 (= e!903914 (inv!19049 (right!12729 (c!232669 objs!24))))))

(declare-fun b!1416000 () Bool)

(declare-fun e!903915 () Bool)

(assert (=> b!1416000 (= e!903914 e!903915)))

(declare-fun res!641214 () Bool)

(assert (=> b!1416000 (= res!641214 (not ((_ is Leaf!7310) (right!12729 (c!232669 objs!24)))))))

(assert (=> b!1416000 (=> res!641214 e!903915)))

(declare-fun b!1416001 () Bool)

(assert (=> b!1416001 (= e!903915 (inv!19050 (right!12729 (c!232669 objs!24))))))

(assert (= (and d!405267 c!232697) b!1415999))

(assert (= (and d!405267 (not c!232697)) b!1416000))

(assert (= (and b!1416000 (not res!641214)) b!1416001))

(declare-fun m!1600925 () Bool)

(assert (=> b!1415999 m!1600925))

(declare-fun m!1600927 () Bool)

(assert (=> b!1416001 m!1600927))

(assert (=> b!1415753 d!405267))

(declare-fun d!405269 () Bool)

(declare-fun res!641215 () Bool)

(declare-fun e!903916 () Bool)

(assert (=> d!405269 (=> (not res!641215) (not e!903916))))

(assert (=> d!405269 (= res!641215 (rulesValid!945 Lexer!2198 (rules!11082 acc!229)))))

(assert (=> d!405269 (= (rulesInvariant!2070 Lexer!2198 (rules!11082 acc!229)) e!903916)))

(declare-fun b!1416002 () Bool)

(assert (=> b!1416002 (= e!903916 (noDuplicateTag!945 Lexer!2198 (rules!11082 acc!229) Nil!14512))))

(assert (= (and d!405269 res!641215) b!1416002))

(declare-fun m!1600931 () Bool)

(assert (=> d!405269 m!1600931))

(declare-fun m!1600933 () Bool)

(assert (=> b!1416002 m!1600933))

(assert (=> b!1415712 d!405269))

(declare-fun d!405271 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!404) Rule!4850)

(declare-fun integerLiteralRule!0 (JsonLexer!404) Rule!4850)

(declare-fun floatLiteralRule!0 (JsonLexer!404) Rule!4850)

(declare-fun trueRule!0 (JsonLexer!404) Rule!4850)

(declare-fun falseRule!0 (JsonLexer!404) Rule!4850)

(declare-fun nullRule!0 (JsonLexer!404) Rule!4850)

(declare-fun jsonstringRule!0 (JsonLexer!404) Rule!4850)

(declare-fun lBraceRule!0 (JsonLexer!404) Rule!4850)

(declare-fun rBraceRule!0 (JsonLexer!404) Rule!4850)

(declare-fun lBracketRule!0 (JsonLexer!404) Rule!4850)

(declare-fun rBracketRule!0 (JsonLexer!404) Rule!4850)

(declare-fun colonRule!0 (JsonLexer!404) Rule!4850)

(declare-fun commaRule!0 (JsonLexer!404) Rule!4850)

(declare-fun eofRule!0 (JsonLexer!404) Rule!4850)

(assert (=> d!405271 (= (rules!109 JsonLexer!405) (Cons!14509 (whitespaceRule!0 JsonLexer!405) (Cons!14509 (integerLiteralRule!0 JsonLexer!405) (Cons!14509 (floatLiteralRule!0 JsonLexer!405) (Cons!14509 (trueRule!0 JsonLexer!405) (Cons!14509 (falseRule!0 JsonLexer!405) (Cons!14509 (nullRule!0 JsonLexer!405) (Cons!14509 (jsonstringRule!0 JsonLexer!405) (Cons!14509 (lBraceRule!0 JsonLexer!405) (Cons!14509 (rBraceRule!0 JsonLexer!405) (Cons!14509 (lBracketRule!0 JsonLexer!405) (Cons!14509 (rBracketRule!0 JsonLexer!405) (Cons!14509 (colonRule!0 JsonLexer!405) (Cons!14509 (commaRule!0 JsonLexer!405) (Cons!14509 (eofRule!0 JsonLexer!405) Nil!14509)))))))))))))))))

(declare-fun bs!339376 () Bool)

(assert (= bs!339376 d!405271))

(declare-fun m!1600935 () Bool)

(assert (=> bs!339376 m!1600935))

(declare-fun m!1600937 () Bool)

(assert (=> bs!339376 m!1600937))

(declare-fun m!1600939 () Bool)

(assert (=> bs!339376 m!1600939))

(declare-fun m!1600941 () Bool)

(assert (=> bs!339376 m!1600941))

(declare-fun m!1600943 () Bool)

(assert (=> bs!339376 m!1600943))

(declare-fun m!1600945 () Bool)

(assert (=> bs!339376 m!1600945))

(declare-fun m!1600947 () Bool)

(assert (=> bs!339376 m!1600947))

(declare-fun m!1600949 () Bool)

(assert (=> bs!339376 m!1600949))

(declare-fun m!1600951 () Bool)

(assert (=> bs!339376 m!1600951))

(declare-fun m!1600953 () Bool)

(assert (=> bs!339376 m!1600953))

(declare-fun m!1600955 () Bool)

(assert (=> bs!339376 m!1600955))

(declare-fun m!1600957 () Bool)

(assert (=> bs!339376 m!1600957))

(declare-fun m!1600959 () Bool)

(assert (=> bs!339376 m!1600959))

(declare-fun m!1600961 () Bool)

(assert (=> bs!339376 m!1600961))

(assert (=> d!405171 d!405271))

(declare-fun d!405275 () Bool)

(assert (=> d!405275 (= (inv!19038 (tag!2787 (h!19910 (rules!11082 sep!3)))) (= (mod (str.len (value!81594 (tag!2787 (h!19910 (rules!11082 sep!3))))) 2) 0))))

(assert (=> b!1415802 d!405275))

(declare-fun d!405277 () Bool)

(declare-fun res!641218 () Bool)

(declare-fun e!903919 () Bool)

(assert (=> d!405277 (=> (not res!641218) (not e!903919))))

(declare-fun semiInverseModEq!975 (Int Int) Bool)

(assert (=> d!405277 (= res!641218 (semiInverseModEq!975 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 sep!3)))) (toValue!3824 (transformation!2525 (h!19910 (rules!11082 sep!3))))))))

(assert (=> d!405277 (= (inv!19056 (transformation!2525 (h!19910 (rules!11082 sep!3)))) e!903919)))

(declare-fun b!1416005 () Bool)

(declare-fun equivClasses!934 (Int Int) Bool)

(assert (=> b!1416005 (= e!903919 (equivClasses!934 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 sep!3)))) (toValue!3824 (transformation!2525 (h!19910 (rules!11082 sep!3))))))))

(assert (= (and d!405277 res!641218) b!1416005))

(declare-fun m!1600991 () Bool)

(assert (=> d!405277 m!1600991))

(declare-fun m!1600993 () Bool)

(assert (=> b!1416005 m!1600993))

(assert (=> b!1415802 d!405277))

(declare-fun d!405281 () Bool)

(assert (=> d!405281 (= (inv!19038 (tag!2787 (h!19910 (rules!11082 acc!229)))) (= (mod (str.len (value!81594 (tag!2787 (h!19910 (rules!11082 acc!229))))) 2) 0))))

(assert (=> b!1415778 d!405281))

(declare-fun d!405283 () Bool)

(declare-fun res!641219 () Bool)

(declare-fun e!903920 () Bool)

(assert (=> d!405283 (=> (not res!641219) (not e!903920))))

(assert (=> d!405283 (= res!641219 (semiInverseModEq!975 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 acc!229)))) (toValue!3824 (transformation!2525 (h!19910 (rules!11082 acc!229))))))))

(assert (=> d!405283 (= (inv!19056 (transformation!2525 (h!19910 (rules!11082 acc!229)))) e!903920)))

(declare-fun b!1416006 () Bool)

(assert (=> b!1416006 (= e!903920 (equivClasses!934 (toChars!3683 (transformation!2525 (h!19910 (rules!11082 acc!229)))) (toValue!3824 (transformation!2525 (h!19910 (rules!11082 acc!229))))))))

(assert (= (and d!405283 res!641219) b!1416006))

(declare-fun m!1600995 () Bool)

(assert (=> d!405283 m!1600995))

(declare-fun m!1600997 () Bool)

(assert (=> b!1416006 m!1600997))

(assert (=> b!1415778 d!405283))

(declare-fun b!1416031 () Bool)

(declare-fun res!641245 () Bool)

(declare-fun e!903930 () Bool)

(assert (=> b!1416031 (=> (not res!641245) (not e!903930))))

(assert (=> b!1416031 (= res!641245 (isBalanced!1435 (left!12399 (c!232669 objs!24))))))

(declare-fun b!1416032 () Bool)

(declare-fun res!641247 () Bool)

(assert (=> b!1416032 (=> (not res!641247) (not e!903930))))

(declare-fun isEmpty!8891 (Conc!4851) Bool)

(assert (=> b!1416032 (= res!641247 (not (isEmpty!8891 (left!12399 (c!232669 objs!24)))))))

(declare-fun b!1416033 () Bool)

(declare-fun res!641244 () Bool)

(assert (=> b!1416033 (=> (not res!641244) (not e!903930))))

(assert (=> b!1416033 (= res!641244 (isBalanced!1435 (right!12729 (c!232669 objs!24))))))

(declare-fun b!1416035 () Bool)

(assert (=> b!1416035 (= e!903930 (not (isEmpty!8891 (right!12729 (c!232669 objs!24)))))))

(declare-fun b!1416036 () Bool)

(declare-fun res!641249 () Bool)

(assert (=> b!1416036 (=> (not res!641249) (not e!903930))))

(declare-fun height!703 (Conc!4851) Int)

(assert (=> b!1416036 (= res!641249 (<= (- (height!703 (left!12399 (c!232669 objs!24))) (height!703 (right!12729 (c!232669 objs!24)))) 1))))

(declare-fun d!405285 () Bool)

(declare-fun res!641246 () Bool)

(declare-fun e!903931 () Bool)

(assert (=> d!405285 (=> res!641246 e!903931)))

(assert (=> d!405285 (= res!641246 (not ((_ is Node!4851) (c!232669 objs!24))))))

(assert (=> d!405285 (= (isBalanced!1435 (c!232669 objs!24)) e!903931)))

(declare-fun b!1416034 () Bool)

(assert (=> b!1416034 (= e!903931 e!903930)))

(declare-fun res!641248 () Bool)

(assert (=> b!1416034 (=> (not res!641248) (not e!903930))))

(assert (=> b!1416034 (= res!641248 (<= (- 1) (- (height!703 (left!12399 (c!232669 objs!24))) (height!703 (right!12729 (c!232669 objs!24))))))))

(assert (= (and d!405285 (not res!641246)) b!1416034))

(assert (= (and b!1416034 res!641248) b!1416036))

(assert (= (and b!1416036 res!641249) b!1416031))

(assert (= (and b!1416031 res!641245) b!1416033))

(assert (= (and b!1416033 res!641244) b!1416032))

(assert (= (and b!1416032 res!641247) b!1416035))

(declare-fun m!1601019 () Bool)

(assert (=> b!1416036 m!1601019))

(declare-fun m!1601021 () Bool)

(assert (=> b!1416036 m!1601021))

(declare-fun m!1601023 () Bool)

(assert (=> b!1416032 m!1601023))

(declare-fun m!1601025 () Bool)

(assert (=> b!1416031 m!1601025))

(declare-fun m!1601027 () Bool)

(assert (=> b!1416033 m!1601027))

(declare-fun m!1601029 () Bool)

(assert (=> b!1416035 m!1601029))

(assert (=> b!1416034 m!1601019))

(assert (=> b!1416034 m!1601021))

(assert (=> d!405179 d!405285))

(declare-fun d!405297 () Bool)

(assert (=> d!405297 (= (isEmpty!8887 (rules!11082 sep!3)) ((_ is Nil!14509) (rules!11082 sep!3)))))

(assert (=> d!405187 d!405297))

(declare-fun d!405299 () Bool)

(declare-fun res!641260 () Bool)

(declare-fun e!903937 () Bool)

(assert (=> d!405299 (=> (not res!641260) (not e!903937))))

(declare-fun list!5704 (IArray!9707) List!14576)

(assert (=> d!405299 (= res!641260 (<= (size!11961 (list!5704 (xs!7578 (c!232669 objs!24)))) 512))))

(assert (=> d!405299 (= (inv!19050 (c!232669 objs!24)) e!903937)))

(declare-fun b!1416047 () Bool)

(declare-fun res!641261 () Bool)

(assert (=> b!1416047 (=> (not res!641261) (not e!903937))))

(assert (=> b!1416047 (= res!641261 (= (csize!9933 (c!232669 objs!24)) (size!11961 (list!5704 (xs!7578 (c!232669 objs!24))))))))

(declare-fun b!1416048 () Bool)

(assert (=> b!1416048 (= e!903937 (and (> (csize!9933 (c!232669 objs!24)) 0) (<= (csize!9933 (c!232669 objs!24)) 512)))))

(assert (= (and d!405299 res!641260) b!1416047))

(assert (= (and b!1416047 res!641261) b!1416048))

(declare-fun m!1601035 () Bool)

(assert (=> d!405299 m!1601035))

(assert (=> d!405299 m!1601035))

(declare-fun m!1601037 () Bool)

(assert (=> d!405299 m!1601037))

(assert (=> b!1416047 m!1601035))

(assert (=> b!1416047 m!1601035))

(assert (=> b!1416047 m!1601037))

(assert (=> b!1415696 d!405299))

(assert (=> d!405161 d!405271))

(declare-fun d!405303 () Bool)

(declare-fun res!641273 () Bool)

(declare-fun e!903948 () Bool)

(assert (=> d!405303 (=> (not res!641273) (not e!903948))))

(assert (=> d!405303 (= res!641273 (= (csize!9932 (c!232669 objs!24)) (+ (size!11962 (left!12399 (c!232669 objs!24))) (size!11962 (right!12729 (c!232669 objs!24))))))))

(assert (=> d!405303 (= (inv!19049 (c!232669 objs!24)) e!903948)))

(declare-fun b!1416070 () Bool)

(declare-fun res!641274 () Bool)

(assert (=> b!1416070 (=> (not res!641274) (not e!903948))))

(assert (=> b!1416070 (= res!641274 (and (not (= (left!12399 (c!232669 objs!24)) Empty!4851)) (not (= (right!12729 (c!232669 objs!24)) Empty!4851))))))

(declare-fun b!1416071 () Bool)

(declare-fun res!641275 () Bool)

(assert (=> b!1416071 (=> (not res!641275) (not e!903948))))

(assert (=> b!1416071 (= res!641275 (= (cheight!5062 (c!232669 objs!24)) (+ (max!0 (height!703 (left!12399 (c!232669 objs!24))) (height!703 (right!12729 (c!232669 objs!24)))) 1)))))

(declare-fun b!1416072 () Bool)

(assert (=> b!1416072 (= e!903948 (<= 0 (cheight!5062 (c!232669 objs!24))))))

(assert (= (and d!405303 res!641273) b!1416070))

(assert (= (and b!1416070 res!641274) b!1416071))

(assert (= (and b!1416071 res!641275) b!1416072))

(declare-fun m!1601055 () Bool)

(assert (=> d!405303 m!1601055))

(declare-fun m!1601057 () Bool)

(assert (=> d!405303 m!1601057))

(assert (=> b!1416071 m!1601019))

(assert (=> b!1416071 m!1601021))

(assert (=> b!1416071 m!1601019))

(assert (=> b!1416071 m!1601021))

(declare-fun m!1601059 () Bool)

(assert (=> b!1416071 m!1601059))

(assert (=> b!1415694 d!405303))

(declare-fun e!903949 () Bool)

(declare-fun tp!401747 () Bool)

(declare-fun b!1416073 () Bool)

(declare-fun tp!401748 () Bool)

(assert (=> b!1416073 (= e!903949 (and (inv!19048 (left!12398 (left!12398 (c!232668 (tokens!1800 acc!229))))) tp!401747 (inv!19048 (right!12728 (left!12398 (c!232668 (tokens!1800 acc!229))))) tp!401748))))

(declare-fun b!1416075 () Bool)

(declare-fun e!903950 () Bool)

(declare-fun tp!401749 () Bool)

(assert (=> b!1416075 (= e!903950 tp!401749)))

(declare-fun b!1416074 () Bool)

(assert (=> b!1416074 (= e!903949 (and (inv!19059 (xs!7577 (left!12398 (c!232668 (tokens!1800 acc!229))))) e!903950))))

(assert (=> b!1415795 (= tp!401714 (and (inv!19048 (left!12398 (c!232668 (tokens!1800 acc!229)))) e!903949))))

(assert (= (and b!1415795 ((_ is Node!4850) (left!12398 (c!232668 (tokens!1800 acc!229))))) b!1416073))

(assert (= b!1416074 b!1416075))

(assert (= (and b!1415795 ((_ is Leaf!7309) (left!12398 (c!232668 (tokens!1800 acc!229))))) b!1416074))

(declare-fun m!1601061 () Bool)

(assert (=> b!1416073 m!1601061))

(declare-fun m!1601063 () Bool)

(assert (=> b!1416073 m!1601063))

(declare-fun m!1601065 () Bool)

(assert (=> b!1416074 m!1601065))

(assert (=> b!1415795 m!1600723))

(declare-fun b!1416076 () Bool)

(declare-fun tp!401750 () Bool)

(declare-fun tp!401751 () Bool)

(declare-fun e!903951 () Bool)

(assert (=> b!1416076 (= e!903951 (and (inv!19048 (left!12398 (right!12728 (c!232668 (tokens!1800 acc!229))))) tp!401750 (inv!19048 (right!12728 (right!12728 (c!232668 (tokens!1800 acc!229))))) tp!401751))))

(declare-fun b!1416078 () Bool)

(declare-fun e!903952 () Bool)

(declare-fun tp!401752 () Bool)

(assert (=> b!1416078 (= e!903952 tp!401752)))

(declare-fun b!1416077 () Bool)

(assert (=> b!1416077 (= e!903951 (and (inv!19059 (xs!7577 (right!12728 (c!232668 (tokens!1800 acc!229))))) e!903952))))

(assert (=> b!1415795 (= tp!401715 (and (inv!19048 (right!12728 (c!232668 (tokens!1800 acc!229)))) e!903951))))

(assert (= (and b!1415795 ((_ is Node!4850) (right!12728 (c!232668 (tokens!1800 acc!229))))) b!1416076))

(assert (= b!1416077 b!1416078))

(assert (= (and b!1415795 ((_ is Leaf!7309) (right!12728 (c!232668 (tokens!1800 acc!229))))) b!1416077))

(declare-fun m!1601069 () Bool)

(assert (=> b!1416076 m!1601069))

(declare-fun m!1601071 () Bool)

(assert (=> b!1416076 m!1601071))

(declare-fun m!1601073 () Bool)

(assert (=> b!1416077 m!1601073))

(assert (=> b!1415795 m!1600725))

(declare-fun tp!401753 () Bool)

(declare-fun e!903953 () Bool)

(declare-fun b!1416079 () Bool)

(declare-fun tp!401755 () Bool)

(assert (=> b!1416079 (= e!903953 (and (inv!19044 (left!12399 (left!12399 (c!232669 objs!24)))) tp!401753 (inv!19044 (right!12729 (left!12399 (c!232669 objs!24)))) tp!401755))))

(declare-fun b!1416081 () Bool)

(declare-fun e!903954 () Bool)

(declare-fun tp!401754 () Bool)

(assert (=> b!1416081 (= e!903954 tp!401754)))

(declare-fun b!1416080 () Bool)

(assert (=> b!1416080 (= e!903953 (and (inv!19055 (xs!7578 (left!12399 (c!232669 objs!24)))) e!903954))))

(assert (=> b!1415753 (= tp!401687 (and (inv!19044 (left!12399 (c!232669 objs!24))) e!903953))))

(assert (= (and b!1415753 ((_ is Node!4851) (left!12399 (c!232669 objs!24)))) b!1416079))

(assert (= b!1416080 b!1416081))

(assert (= (and b!1415753 ((_ is Leaf!7310) (left!12399 (c!232669 objs!24)))) b!1416080))

(declare-fun m!1601075 () Bool)

(assert (=> b!1416079 m!1601075))

(declare-fun m!1601077 () Bool)

(assert (=> b!1416079 m!1601077))

(declare-fun m!1601079 () Bool)

(assert (=> b!1416080 m!1601079))

(assert (=> b!1415753 m!1600703))

(declare-fun tp!401756 () Bool)

(declare-fun b!1416082 () Bool)

(declare-fun tp!401758 () Bool)

(declare-fun e!903955 () Bool)

(assert (=> b!1416082 (= e!903955 (and (inv!19044 (left!12399 (right!12729 (c!232669 objs!24)))) tp!401756 (inv!19044 (right!12729 (right!12729 (c!232669 objs!24)))) tp!401758))))

(declare-fun b!1416084 () Bool)

(declare-fun e!903956 () Bool)

(declare-fun tp!401757 () Bool)

(assert (=> b!1416084 (= e!903956 tp!401757)))

(declare-fun b!1416083 () Bool)

(assert (=> b!1416083 (= e!903955 (and (inv!19055 (xs!7578 (right!12729 (c!232669 objs!24)))) e!903956))))

(assert (=> b!1415753 (= tp!401689 (and (inv!19044 (right!12729 (c!232669 objs!24))) e!903955))))

(assert (= (and b!1415753 ((_ is Node!4851) (right!12729 (c!232669 objs!24)))) b!1416082))

(assert (= b!1416083 b!1416084))

(assert (= (and b!1415753 ((_ is Leaf!7310) (right!12729 (c!232669 objs!24)))) b!1416083))

(declare-fun m!1601081 () Bool)

(assert (=> b!1416082 m!1601081))

(declare-fun m!1601083 () Bool)

(assert (=> b!1416082 m!1601083))

(declare-fun m!1601085 () Bool)

(assert (=> b!1416083 m!1601085))

(assert (=> b!1415753 m!1600705))

(declare-fun b!1416087 () Bool)

(declare-fun b_free!34839 () Bool)

(declare-fun b_next!35543 () Bool)

(assert (=> b!1416087 (= b_free!34839 (not b_next!35543))))

(declare-fun tp!401761 () Bool)

(declare-fun b_and!94831 () Bool)

(assert (=> b!1416087 (= tp!401761 b_and!94831)))

(declare-fun b_free!34841 () Bool)

(declare-fun b_next!35545 () Bool)

(assert (=> b!1416087 (= b_free!34841 (not b_next!35545))))

(declare-fun tp!401759 () Bool)

(declare-fun b_and!94833 () Bool)

(assert (=> b!1416087 (= tp!401759 b_and!94833)))

(declare-fun e!903959 () Bool)

(assert (=> b!1416087 (= e!903959 (and tp!401761 tp!401759))))

(declare-fun b!1416086 () Bool)

(declare-fun e!903958 () Bool)

(assert (=> b!1416086 (= e!903958 (and (inv!19038 (tag!2787 (h!19910 (t!124020 (rules!11082 acc!229))))) (inv!19056 (transformation!2525 (h!19910 (t!124020 (rules!11082 acc!229))))) e!903959))))

(declare-fun b!1416085 () Bool)

(declare-fun e!903960 () Bool)

(declare-fun tp!401760 () Bool)

(assert (=> b!1416085 (= e!903960 (and e!903958 tp!401760))))

(assert (=> b!1415777 (= tp!401697 e!903960)))

(assert (= b!1416086 b!1416087))

(assert (= b!1416085 b!1416086))

(assert (= (and b!1415777 ((_ is Cons!14509) (t!124020 (rules!11082 acc!229)))) b!1416085))

(declare-fun m!1601087 () Bool)

(assert (=> b!1416086 m!1601087))

(declare-fun m!1601089 () Bool)

(assert (=> b!1416086 m!1601089))

(declare-fun b!1416107 () Bool)

(declare-fun b_free!34843 () Bool)

(declare-fun b_next!35547 () Bool)

(assert (=> b!1416107 (= b_free!34843 (not b_next!35547))))

(declare-fun tp!401770 () Bool)

(declare-fun b_and!94835 () Bool)

(assert (=> b!1416107 (= tp!401770 b_and!94835)))

(declare-fun b_free!34845 () Bool)

(declare-fun b_next!35549 () Bool)

(assert (=> b!1416107 (= b_free!34845 (not b_next!35549))))

(declare-fun tp!401768 () Bool)

(declare-fun b_and!94837 () Bool)

(assert (=> b!1416107 (= tp!401768 b_and!94837)))

(declare-fun e!903984 () Bool)

(assert (=> b!1416107 (= e!903984 (and tp!401770 tp!401768))))

(declare-fun e!903979 () Bool)

(declare-fun b!1416104 () Bool)

(declare-fun tp!401769 () Bool)

(declare-fun e!903982 () Bool)

(declare-fun inv!19063 (Token!4712) Bool)

(assert (=> b!1416104 (= e!903982 (and (inv!19063 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3)))))) e!903979 tp!401769))))

(declare-fun b!1416105 () Bool)

(declare-fun e!903980 () Bool)

(declare-fun inv!21 (TokenValue!2615) Bool)

(assert (=> b!1416105 (= e!903979 (and (inv!21 (value!81595 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3))))))) e!903980))))

(assert (=> b!1415794 (= tp!401713 e!903982)))

(declare-fun b!1416106 () Bool)

(assert (=> b!1416106 (= e!903980 (and (inv!19038 (tag!2787 (rule!4288 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3)))))))) (inv!19056 (transformation!2525 (rule!4288 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3)))))))) e!903984))))

(assert (= b!1416106 b!1416107))

(assert (= b!1416105 b!1416106))

(assert (= b!1416104 b!1416105))

(assert (= (and b!1415794 ((_ is Cons!14508) (innerList!4910 (xs!7577 (c!232668 (tokens!1800 sep!3)))))) b!1416104))

(declare-fun m!1601097 () Bool)

(assert (=> b!1416104 m!1601097))

(declare-fun m!1601099 () Bool)

(assert (=> b!1416105 m!1601099))

(declare-fun m!1601101 () Bool)

(assert (=> b!1416106 m!1601101))

(declare-fun m!1601103 () Bool)

(assert (=> b!1416106 m!1601103))

(declare-fun tp!401772 () Bool)

(declare-fun b!1416108 () Bool)

(declare-fun tp!401771 () Bool)

(declare-fun e!903985 () Bool)

(assert (=> b!1416108 (= e!903985 (and (inv!19048 (left!12398 (left!12398 (c!232668 (tokens!1800 sep!3))))) tp!401771 (inv!19048 (right!12728 (left!12398 (c!232668 (tokens!1800 sep!3))))) tp!401772))))

(declare-fun b!1416110 () Bool)

(declare-fun e!903986 () Bool)

(declare-fun tp!401773 () Bool)

(assert (=> b!1416110 (= e!903986 tp!401773)))

(declare-fun b!1416109 () Bool)

(assert (=> b!1416109 (= e!903985 (and (inv!19059 (xs!7577 (left!12398 (c!232668 (tokens!1800 sep!3))))) e!903986))))

(assert (=> b!1415792 (= tp!401711 (and (inv!19048 (left!12398 (c!232668 (tokens!1800 sep!3)))) e!903985))))

(assert (= (and b!1415792 ((_ is Node!4850) (left!12398 (c!232668 (tokens!1800 sep!3))))) b!1416108))

(assert (= b!1416109 b!1416110))

(assert (= (and b!1415792 ((_ is Leaf!7309) (left!12398 (c!232668 (tokens!1800 sep!3))))) b!1416109))

(declare-fun m!1601105 () Bool)

(assert (=> b!1416108 m!1601105))

(declare-fun m!1601107 () Bool)

(assert (=> b!1416108 m!1601107))

(declare-fun m!1601109 () Bool)

(assert (=> b!1416109 m!1601109))

(assert (=> b!1415792 m!1600717))

(declare-fun b!1416111 () Bool)

(declare-fun tp!401775 () Bool)

(declare-fun e!903987 () Bool)

(declare-fun tp!401774 () Bool)

(assert (=> b!1416111 (= e!903987 (and (inv!19048 (left!12398 (right!12728 (c!232668 (tokens!1800 sep!3))))) tp!401774 (inv!19048 (right!12728 (right!12728 (c!232668 (tokens!1800 sep!3))))) tp!401775))))

(declare-fun b!1416113 () Bool)

(declare-fun e!903988 () Bool)

(declare-fun tp!401776 () Bool)

(assert (=> b!1416113 (= e!903988 tp!401776)))

(declare-fun b!1416112 () Bool)

(assert (=> b!1416112 (= e!903987 (and (inv!19059 (xs!7577 (right!12728 (c!232668 (tokens!1800 sep!3))))) e!903988))))

(assert (=> b!1415792 (= tp!401712 (and (inv!19048 (right!12728 (c!232668 (tokens!1800 sep!3)))) e!903987))))

(assert (= (and b!1415792 ((_ is Node!4850) (right!12728 (c!232668 (tokens!1800 sep!3))))) b!1416111))

(assert (= b!1416112 b!1416113))

(assert (= (and b!1415792 ((_ is Leaf!7309) (right!12728 (c!232668 (tokens!1800 sep!3))))) b!1416112))

(declare-fun m!1601111 () Bool)

(assert (=> b!1416111 m!1601111))

(declare-fun m!1601113 () Bool)

(assert (=> b!1416111 m!1601113))

(declare-fun m!1601115 () Bool)

(assert (=> b!1416112 m!1601115))

(assert (=> b!1415792 m!1600719))

(declare-fun b!1416117 () Bool)

(declare-fun b_free!34847 () Bool)

(declare-fun b_next!35551 () Bool)

(assert (=> b!1416117 (= b_free!34847 (not b_next!35551))))

(declare-fun tp!401779 () Bool)

(declare-fun b_and!94839 () Bool)

(assert (=> b!1416117 (= tp!401779 b_and!94839)))

(declare-fun b_free!34849 () Bool)

(declare-fun b_next!35553 () Bool)

(assert (=> b!1416117 (= b_free!34849 (not b_next!35553))))

(declare-fun tp!401777 () Bool)

(declare-fun b_and!94841 () Bool)

(assert (=> b!1416117 (= tp!401777 b_and!94841)))

(declare-fun e!903994 () Bool)

(assert (=> b!1416117 (= e!903994 (and tp!401779 tp!401777))))

(declare-fun b!1416114 () Bool)

(declare-fun tp!401778 () Bool)

(declare-fun e!903989 () Bool)

(declare-fun e!903992 () Bool)

(assert (=> b!1416114 (= e!903992 (and (inv!19063 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229)))))) e!903989 tp!401778))))

(declare-fun b!1416115 () Bool)

(declare-fun e!903990 () Bool)

(assert (=> b!1416115 (= e!903989 (and (inv!21 (value!81595 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229))))))) e!903990))))

(assert (=> b!1415797 (= tp!401716 e!903992)))

(declare-fun b!1416116 () Bool)

(assert (=> b!1416116 (= e!903990 (and (inv!19038 (tag!2787 (rule!4288 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229)))))))) (inv!19056 (transformation!2525 (rule!4288 (h!19909 (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229)))))))) e!903994))))

(assert (= b!1416116 b!1416117))

(assert (= b!1416115 b!1416116))

(assert (= b!1416114 b!1416115))

(assert (= (and b!1415797 ((_ is Cons!14508) (innerList!4910 (xs!7577 (c!232668 (tokens!1800 acc!229)))))) b!1416114))

(declare-fun m!1601117 () Bool)

(assert (=> b!1416114 m!1601117))

(declare-fun m!1601119 () Bool)

(assert (=> b!1416115 m!1601119))

(declare-fun m!1601121 () Bool)

(assert (=> b!1416116 m!1601121))

(declare-fun m!1601123 () Bool)

(assert (=> b!1416116 m!1601123))

(declare-fun b!1416140 () Bool)

(declare-fun e!904010 () Bool)

(declare-fun tp!401788 () Bool)

(assert (=> b!1416140 (= e!904010 (and (inv!19048 (c!232668 (tokens!1800 (h!19911 (innerList!4911 (xs!7578 (c!232669 objs!24))))))) tp!401788))))

(declare-fun tp!401786 () Bool)

(declare-fun b!1416139 () Bool)

(declare-fun e!904011 () Bool)

(assert (=> b!1416139 (= e!904011 (and tp!401786 (inv!19047 (tokens!1800 (h!19911 (innerList!4911 (xs!7578 (c!232669 objs!24)))))) e!904010))))

(declare-fun e!904012 () Bool)

(declare-fun b!1416138 () Bool)

(declare-fun tp!401787 () Bool)

(assert (=> b!1416138 (= e!904012 (and (inv!19046 (h!19911 (innerList!4911 (xs!7578 (c!232669 objs!24))))) e!904011 tp!401787))))

(assert (=> b!1415755 (= tp!401688 e!904012)))

(assert (= b!1416139 b!1416140))

(assert (= b!1416138 b!1416139))

(assert (= (and b!1415755 ((_ is Cons!14510) (innerList!4911 (xs!7578 (c!232669 objs!24))))) b!1416138))

(declare-fun m!1601139 () Bool)

(assert (=> b!1416140 m!1601139))

(declare-fun m!1601141 () Bool)

(assert (=> b!1416139 m!1601141))

(declare-fun m!1601143 () Bool)

(assert (=> b!1416138 m!1601143))

(declare-fun b!1416143 () Bool)

(declare-fun b_free!34851 () Bool)

(declare-fun b_next!35555 () Bool)

(assert (=> b!1416143 (= b_free!34851 (not b_next!35555))))

(declare-fun tp!401791 () Bool)

(declare-fun b_and!94843 () Bool)

(assert (=> b!1416143 (= tp!401791 b_and!94843)))

(declare-fun b_free!34853 () Bool)

(declare-fun b_next!35557 () Bool)

(assert (=> b!1416143 (= b_free!34853 (not b_next!35557))))

(declare-fun tp!401789 () Bool)

(declare-fun b_and!94845 () Bool)

(assert (=> b!1416143 (= tp!401789 b_and!94845)))

(declare-fun e!904015 () Bool)

(assert (=> b!1416143 (= e!904015 (and tp!401791 tp!401789))))

(declare-fun b!1416142 () Bool)

(declare-fun e!904014 () Bool)

(assert (=> b!1416142 (= e!904014 (and (inv!19038 (tag!2787 (h!19910 (t!124020 (rules!11082 sep!3))))) (inv!19056 (transformation!2525 (h!19910 (t!124020 (rules!11082 sep!3))))) e!904015))))

(declare-fun b!1416141 () Bool)

(declare-fun e!904016 () Bool)

(declare-fun tp!401790 () Bool)

(assert (=> b!1416141 (= e!904016 (and e!904014 tp!401790))))

(assert (=> b!1415801 (= tp!401721 e!904016)))

(assert (= b!1416142 b!1416143))

(assert (= b!1416141 b!1416142))

(assert (= (and b!1415801 ((_ is Cons!14509) (t!124020 (rules!11082 sep!3)))) b!1416141))

(declare-fun m!1601145 () Bool)

(assert (=> b!1416142 m!1601145))

(declare-fun m!1601147 () Bool)

(assert (=> b!1416142 m!1601147))

(declare-fun b_lambda!44595 () Bool)

(assert (= b_lambda!44591 (or start!129868 b_lambda!44595)))

(declare-fun bs!339382 () Bool)

(declare-fun d!405323 () Bool)

(assert (= bs!339382 (and d!405323 start!129868)))

(assert (=> bs!339382 (= (dynLambda!6701 lambda!62545 (h!19911 (list!5696 objs!24))) (usesJsonRules!0 (h!19911 (list!5696 objs!24))))))

(declare-fun m!1601149 () Bool)

(assert (=> bs!339382 m!1601149))

(assert (=> b!1415836 d!405323))

(check-sat (not b!1416002) (not b!1415980) (not d!405255) (not d!405299) (not d!405259) (not b!1416082) (not b!1416031) (not b!1415753) (not d!405247) (not b!1416078) (not b!1415795) (not b_next!35547) (not b!1416104) (not d!405239) (not d!405257) (not d!405245) (not b_next!35549) b_and!94845 (not d!405203) (not b!1416077) (not b!1416085) (not d!405263) (not b_next!35543) (not d!405237) (not b!1416105) (not b!1415792) (not b_next!35537) b_and!94815 b_and!94825 (not b!1415927) (not b!1416074) (not b_lambda!44595) (not d!405243) (not b!1416116) (not b!1415993) (not b_next!35557) (not b!1415978) (not d!405253) (not b!1416108) (not b!1415872) (not d!405283) (not b!1416140) b_and!94841 (not b_next!35527) (not b!1415992) (not b!1416076) (not b!1415967) (not b!1416114) (not b!1416079) (not b!1416033) (not b!1416138) (not b!1415981) (not b!1415983) (not b!1416111) (not b!1415855) (not d!405269) (not b!1416083) (not b_next!35551) (not d!405261) (not b!1416084) b_and!94817 (not b!1415850) (not b!1416006) (not b!1416086) (not b_next!35535) (not d!405211) (not b!1416071) (not b!1416001) (not b_next!35555) (not b!1415998) (not b!1415870) (not b!1416106) (not b!1415871) (not b!1416081) (not b!1416109) (not d!405271) (not d!405303) (not d!405219) b_and!94823 b_and!94837 (not b!1415999) (not b_next!35545) b_and!94833 (not b!1416075) (not b!1415984) b_and!94835 (not b!1415869) (not b!1416005) (not b!1415847) (not b!1416139) (not b!1416080) b_and!94843 (not b!1415868) (not b!1415876) (not b!1416034) (not b!1415982) (not b!1416142) b_and!94839 (not b!1415874) (not b!1415849) (not b!1416035) (not b!1416112) (not b!1415988) (not b_next!35529) (not b!1415879) (not b!1416113) (not b!1415936) (not b!1416110) (not b!1416141) (not b!1416115) (not d!405277) (not b!1415853) b_and!94831 (not b!1415877) (not b!1416047) (not b!1415996) (not b!1416032) (not b!1415990) (not b!1415848) (not b_next!35553) (not b!1415979) (not b!1415946) (not b!1416036) (not b!1415976) (not b!1415837) (not bs!339382) (not b!1415852) (not b!1416073) (not b!1415873) (not d!405205))
(check-sat (not b_next!35547) (not b_next!35543) (not b_next!35557) (not b_next!35551) (not b_next!35555) b_and!94835 b_and!94843 b_and!94839 (not b_next!35529) b_and!94831 (not b_next!35553) (not b_next!35549) b_and!94845 (not b_next!35537) b_and!94815 b_and!94825 b_and!94841 (not b_next!35527) b_and!94817 (not b_next!35535) b_and!94823 b_and!94837 (not b_next!35545) b_and!94833)
