; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!135172 () Bool)

(assert start!135172)

(declare-fun b!1450475 () Bool)

(declare-fun e!925512 () Bool)

(declare-datatypes ((C!8126 0))(
  ( (C!8127 (val!4633 Int)) )
))
(declare-datatypes ((List!15168 0))(
  ( (Nil!15102) (Cons!15102 (h!20503 C!8126) (t!130561 List!15168)) )
))
(declare-datatypes ((IArray!10297 0))(
  ( (IArray!10298 (innerList!5206 List!15168)) )
))
(declare-datatypes ((Conc!5146 0))(
  ( (Node!5146 (left!12847 Conc!5146) (right!13177 Conc!5146) (csize!10522 Int) (cheight!5357 Int)) (Leaf!7678 (xs!7887 IArray!10297) (csize!10523 Int)) (Empty!5146) )
))
(declare-datatypes ((BalanceConc!10232 0))(
  ( (BalanceConc!10233 (c!238805 Conc!5146)) )
))
(declare-datatypes ((List!15169 0))(
  ( (Nil!15103) (Cons!15103 (h!20504 (_ BitVec 16)) (t!130562 List!15169)) )
))
(declare-datatypes ((TokenValue!2750 0))(
  ( (FloatLiteralValue!5500 (text!19695 List!15169)) (TokenValueExt!2749 (__x!9290 Int)) (Broken!13750 (value!85433 List!15169)) (Object!2815) (End!2750) (Def!2750) (Underscore!2750) (Match!2750) (Else!2750) (Error!2750) (Case!2750) (If!2750) (Extends!2750) (Abstract!2750) (Class!2750) (Val!2750) (DelimiterValue!5500 (del!2810 List!15169)) (KeywordValue!2756 (value!85434 List!15169)) (CommentValue!5500 (value!85435 List!15169)) (WhitespaceValue!5500 (value!85436 List!15169)) (IndentationValue!2750 (value!85437 List!15169)) (String!18007) (Int32!2750) (Broken!13751 (value!85438 List!15169)) (Boolean!2751) (Unit!24011) (OperatorValue!2753 (op!2810 List!15169)) (IdentifierValue!5500 (value!85439 List!15169)) (IdentifierValue!5501 (value!85440 List!15169)) (WhitespaceValue!5501 (value!85441 List!15169)) (True!5500) (False!5500) (Broken!13752 (value!85442 List!15169)) (Broken!13753 (value!85443 List!15169)) (True!5501) (RightBrace!2750) (RightBracket!2750) (Colon!2750) (Null!2750) (Comma!2750) (LeftBracket!2750) (False!5501) (LeftBrace!2750) (ImaginaryLiteralValue!2750 (text!19696 List!15169)) (StringLiteralValue!8250 (value!85444 List!15169)) (EOFValue!2750 (value!85445 List!15169)) (IdentValue!2750 (value!85446 List!15169)) (DelimiterValue!5501 (value!85447 List!15169)) (DedentValue!2750 (value!85448 List!15169)) (NewLineValue!2750 (value!85449 List!15169)) (IntegerValue!8250 (value!85450 (_ BitVec 32)) (text!19697 List!15169)) (IntegerValue!8251 (value!85451 Int) (text!19698 List!15169)) (Times!2750) (Or!2750) (Equal!2750) (Minus!2750) (Broken!13754 (value!85452 List!15169)) (And!2750) (Div!2750) (LessEqual!2750) (Mod!2750) (Concat!6724) (Not!2750) (Plus!2750) (SpaceValue!2750 (value!85453 List!15169)) (IntegerValue!8252 (value!85454 Int) (text!19699 List!15169)) (StringLiteralValue!8251 (text!19700 List!15169)) (FloatLiteralValue!5501 (text!19701 List!15169)) (BytesLiteralValue!2750 (value!85455 List!15169)) (CommentValue!5501 (value!85456 List!15169)) (StringLiteralValue!8252 (value!85457 List!15169)) (ErrorTokenValue!2750 (msg!2811 List!15169)) )
))
(declare-datatypes ((Regex!3974 0))(
  ( (ElementMatch!3974 (c!238806 C!8126)) (Concat!6725 (regOne!8460 Regex!3974) (regTwo!8460 Regex!3974)) (EmptyExpr!3974) (Star!3974 (reg!4303 Regex!3974)) (EmptyLang!3974) (Union!3974 (regOne!8461 Regex!3974) (regTwo!8461 Regex!3974)) )
))
(declare-datatypes ((String!18008 0))(
  ( (String!18009 (value!85458 String)) )
))
(declare-datatypes ((TokenValueInjection!5160 0))(
  ( (TokenValueInjection!5161 (toValue!3967 Int) (toChars!3826 Int)) )
))
(declare-datatypes ((Rule!5120 0))(
  ( (Rule!5121 (regex!2660 Regex!3974) (tag!2924 String!18008) (isSeparator!2660 Bool) (transformation!2660 TokenValueInjection!5160)) )
))
(declare-datatypes ((Token!4982 0))(
  ( (Token!4983 (value!85459 TokenValue!2750) (rule!4433 Rule!5120) (size!12355 Int) (originalCharacters!3522 List!15168)) )
))
(declare-datatypes ((List!15170 0))(
  ( (Nil!15104) (Cons!15104 (h!20505 Token!4982) (t!130563 List!15170)) )
))
(declare-datatypes ((IArray!10299 0))(
  ( (IArray!10300 (innerList!5207 List!15170)) )
))
(declare-datatypes ((Conc!5147 0))(
  ( (Node!5147 (left!12848 Conc!5147) (right!13178 Conc!5147) (csize!10524 Int) (cheight!5358 Int)) (Leaf!7679 (xs!7888 IArray!10299) (csize!10525 Int)) (Empty!5147) )
))
(declare-datatypes ((BalanceConc!10234 0))(
  ( (BalanceConc!10235 (c!238807 Conc!5147)) )
))
(declare-datatypes ((List!15171 0))(
  ( (Nil!15105) (Cons!15105 (h!20506 Rule!5120) (t!130564 List!15171)) )
))
(declare-datatypes ((PrintableTokens!1102 0))(
  ( (PrintableTokens!1103 (rules!11581 List!15171) (tokens!2065 BalanceConc!10234)) )
))
(declare-fun thiss!10022 () PrintableTokens!1102)

(declare-fun tp!409243 () Bool)

(declare-fun inv!20154 (Conc!5147) Bool)

(assert (=> b!1450475 (= e!925512 (and (inv!20154 (c!238807 (tokens!2065 thiss!10022))) tp!409243))))

(declare-fun b!1450476 () Bool)

(declare-fun res!656755 () Bool)

(declare-fun e!925515 () Bool)

(assert (=> b!1450476 (=> (not res!656755) (not e!925515))))

(declare-fun isEmpty!9445 (BalanceConc!10234) Bool)

(assert (=> b!1450476 (= res!656755 (not (isEmpty!9445 (tokens!2065 thiss!10022))))))

(declare-fun e!925516 () Bool)

(declare-fun other!32 () PrintableTokens!1102)

(declare-fun b!1450477 () Bool)

(declare-fun tp!409244 () Bool)

(declare-fun e!925517 () Bool)

(declare-fun inv!20155 (BalanceConc!10234) Bool)

(assert (=> b!1450477 (= e!925516 (and tp!409244 (inv!20155 (tokens!2065 other!32)) e!925517))))

(declare-fun b!1450478 () Bool)

(declare-fun e!925513 () Bool)

(assert (=> b!1450478 (= e!925513 e!925515)))

(declare-fun res!656754 () Bool)

(assert (=> b!1450478 (=> (not res!656754) (not e!925515))))

(assert (=> b!1450478 (= res!656754 (not (isEmpty!9445 (tokens!2065 other!32))))))

(declare-datatypes ((Unit!24012 0))(
  ( (Unit!24013) )
))
(declare-fun lt!500045 () Unit!24012)

(declare-fun lemmaInvariant!356 (PrintableTokens!1102) Unit!24012)

(assert (=> b!1450478 (= lt!500045 (lemmaInvariant!356 thiss!10022))))

(declare-fun lt!500047 () Unit!24012)

(assert (=> b!1450478 (= lt!500047 (lemmaInvariant!356 other!32))))

(declare-fun res!656753 () Bool)

(assert (=> start!135172 (=> (not res!656753) (not e!925513))))

(assert (=> start!135172 (= res!656753 (= (rules!11581 thiss!10022) (rules!11581 other!32)))))

(assert (=> start!135172 e!925513))

(declare-fun e!925511 () Bool)

(declare-fun inv!20156 (PrintableTokens!1102) Bool)

(assert (=> start!135172 (and (inv!20156 thiss!10022) e!925511)))

(assert (=> start!135172 (and (inv!20156 other!32) e!925516)))

(declare-fun b!1450479 () Bool)

(declare-fun e!925514 () Bool)

(assert (=> b!1450479 (= e!925515 (not e!925514))))

(declare-fun res!656756 () Bool)

(assert (=> b!1450479 (=> res!656756 e!925514)))

(declare-fun lt!500044 () Token!4982)

(declare-fun lt!500048 () Token!4982)

(declare-datatypes ((LexerInterface!2316 0))(
  ( (LexerInterfaceExt!2313 (__x!9291 Int)) (Lexer!2314) )
))
(declare-fun separableTokensPredicate!525 (LexerInterface!2316 Token!4982 Token!4982 List!15171) Bool)

(assert (=> b!1450479 (= res!656756 (not (separableTokensPredicate!525 Lexer!2314 lt!500048 lt!500044 (rules!11581 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1235 (LexerInterface!2316 List!15171 Token!4982) Bool)

(assert (=> b!1450479 (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500044)))

(declare-fun lt!500042 () Unit!24012)

(declare-fun lt!500043 () List!15170)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!418 (LexerInterface!2316 List!15171 List!15170 Token!4982) Unit!24012)

(assert (=> b!1450479 (= lt!500042 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!418 Lexer!2314 (rules!11581 thiss!10022) lt!500043 lt!500044))))

(declare-fun head!2966 (BalanceConc!10234) Token!4982)

(assert (=> b!1450479 (= lt!500044 (head!2966 (tokens!2065 other!32)))))

(declare-fun list!6037 (BalanceConc!10234) List!15170)

(assert (=> b!1450479 (= lt!500043 (list!6037 (tokens!2065 other!32)))))

(assert (=> b!1450479 (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500048)))

(declare-fun lt!500046 () List!15170)

(declare-fun lt!500049 () Unit!24012)

(assert (=> b!1450479 (= lt!500049 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!418 Lexer!2314 (rules!11581 thiss!10022) lt!500046 lt!500048))))

(declare-fun last!238 (BalanceConc!10234) Token!4982)

(assert (=> b!1450479 (= lt!500048 (last!238 (tokens!2065 thiss!10022)))))

(assert (=> b!1450479 (= lt!500046 (list!6037 (tokens!2065 thiss!10022)))))

(declare-fun b!1450480 () Bool)

(declare-fun tp!409245 () Bool)

(assert (=> b!1450480 (= e!925511 (and tp!409245 (inv!20155 (tokens!2065 thiss!10022)) e!925512))))

(declare-fun b!1450481 () Bool)

(declare-fun tp!409246 () Bool)

(assert (=> b!1450481 (= e!925517 (and (inv!20154 (c!238807 (tokens!2065 other!32))) tp!409246))))

(declare-fun b!1450482 () Bool)

(declare-fun isEmpty!9446 (List!15171) Bool)

(assert (=> b!1450482 (= e!925514 (not (isEmpty!9446 (rules!11581 thiss!10022))))))

(assert (= (and start!135172 res!656753) b!1450478))

(assert (= (and b!1450478 res!656754) b!1450476))

(assert (= (and b!1450476 res!656755) b!1450479))

(assert (= (and b!1450479 (not res!656756)) b!1450482))

(assert (= b!1450480 b!1450475))

(assert (= start!135172 b!1450480))

(assert (= b!1450477 b!1450481))

(assert (= start!135172 b!1450477))

(declare-fun m!1673813 () Bool)

(assert (=> b!1450481 m!1673813))

(declare-fun m!1673815 () Bool)

(assert (=> b!1450477 m!1673815))

(declare-fun m!1673817 () Bool)

(assert (=> b!1450476 m!1673817))

(declare-fun m!1673819 () Bool)

(assert (=> start!135172 m!1673819))

(declare-fun m!1673821 () Bool)

(assert (=> start!135172 m!1673821))

(declare-fun m!1673823 () Bool)

(assert (=> b!1450479 m!1673823))

(declare-fun m!1673825 () Bool)

(assert (=> b!1450479 m!1673825))

(declare-fun m!1673827 () Bool)

(assert (=> b!1450479 m!1673827))

(declare-fun m!1673829 () Bool)

(assert (=> b!1450479 m!1673829))

(declare-fun m!1673831 () Bool)

(assert (=> b!1450479 m!1673831))

(declare-fun m!1673833 () Bool)

(assert (=> b!1450479 m!1673833))

(declare-fun m!1673835 () Bool)

(assert (=> b!1450479 m!1673835))

(declare-fun m!1673837 () Bool)

(assert (=> b!1450479 m!1673837))

(declare-fun m!1673839 () Bool)

(assert (=> b!1450479 m!1673839))

(declare-fun m!1673841 () Bool)

(assert (=> b!1450480 m!1673841))

(declare-fun m!1673843 () Bool)

(assert (=> b!1450482 m!1673843))

(declare-fun m!1673845 () Bool)

(assert (=> b!1450475 m!1673845))

(declare-fun m!1673847 () Bool)

(assert (=> b!1450478 m!1673847))

(declare-fun m!1673849 () Bool)

(assert (=> b!1450478 m!1673849))

(declare-fun m!1673851 () Bool)

(assert (=> b!1450478 m!1673851))

(push 1)

(assert (not b!1450475))

(assert (not b!1450482))

(assert (not start!135172))

(assert (not b!1450479))

(assert (not b!1450480))

(assert (not b!1450477))

(assert (not b!1450478))

(assert (not b!1450476))

(assert (not b!1450481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!421300 () Bool)

(declare-fun isBalanced!1535 (Conc!5147) Bool)

(assert (=> d!421300 (= (inv!20155 (tokens!2065 thiss!10022)) (isBalanced!1535 (c!238807 (tokens!2065 thiss!10022))))))

(declare-fun bs!342560 () Bool)

(assert (= bs!342560 d!421300))

(declare-fun m!1673893 () Bool)

(assert (=> bs!342560 m!1673893))

(assert (=> b!1450480 d!421300))

(declare-fun d!421302 () Bool)

(declare-fun res!656779 () Bool)

(declare-fun e!925541 () Bool)

(assert (=> d!421302 (=> (not res!656779) (not e!925541))))

(assert (=> d!421302 (= res!656779 (not (isEmpty!9446 (rules!11581 thiss!10022))))))

(assert (=> d!421302 (= (inv!20156 thiss!10022) e!925541)))

(declare-fun b!1450513 () Bool)

(declare-fun res!656780 () Bool)

(assert (=> b!1450513 (=> (not res!656780) (not e!925541))))

(declare-fun rulesInvariant!2149 (LexerInterface!2316 List!15171) Bool)

(assert (=> b!1450513 (= res!656780 (rulesInvariant!2149 Lexer!2314 (rules!11581 thiss!10022)))))

(declare-fun b!1450514 () Bool)

(declare-fun res!656781 () Bool)

(assert (=> b!1450514 (=> (not res!656781) (not e!925541))))

(declare-fun rulesProduceEachTokenIndividually!866 (LexerInterface!2316 List!15171 BalanceConc!10234) Bool)

(assert (=> b!1450514 (= res!656781 (rulesProduceEachTokenIndividually!866 Lexer!2314 (rules!11581 thiss!10022) (tokens!2065 thiss!10022)))))

(declare-fun b!1450515 () Bool)

(declare-fun separableTokens!250 (LexerInterface!2316 BalanceConc!10234 List!15171) Bool)

(assert (=> b!1450515 (= e!925541 (separableTokens!250 Lexer!2314 (tokens!2065 thiss!10022) (rules!11581 thiss!10022)))))

(assert (= (and d!421302 res!656779) b!1450513))

(assert (= (and b!1450513 res!656780) b!1450514))

(assert (= (and b!1450514 res!656781) b!1450515))

(assert (=> d!421302 m!1673843))

(declare-fun m!1673899 () Bool)

(assert (=> b!1450513 m!1673899))

(declare-fun m!1673901 () Bool)

(assert (=> b!1450514 m!1673901))

(declare-fun m!1673903 () Bool)

(assert (=> b!1450515 m!1673903))

(assert (=> start!135172 d!421302))

(declare-fun d!421308 () Bool)

(declare-fun res!656782 () Bool)

(declare-fun e!925542 () Bool)

(assert (=> d!421308 (=> (not res!656782) (not e!925542))))

(assert (=> d!421308 (= res!656782 (not (isEmpty!9446 (rules!11581 other!32))))))

(assert (=> d!421308 (= (inv!20156 other!32) e!925542)))

(declare-fun b!1450516 () Bool)

(declare-fun res!656783 () Bool)

(assert (=> b!1450516 (=> (not res!656783) (not e!925542))))

(assert (=> b!1450516 (= res!656783 (rulesInvariant!2149 Lexer!2314 (rules!11581 other!32)))))

(declare-fun b!1450517 () Bool)

(declare-fun res!656784 () Bool)

(assert (=> b!1450517 (=> (not res!656784) (not e!925542))))

(assert (=> b!1450517 (= res!656784 (rulesProduceEachTokenIndividually!866 Lexer!2314 (rules!11581 other!32) (tokens!2065 other!32)))))

(declare-fun b!1450518 () Bool)

(assert (=> b!1450518 (= e!925542 (separableTokens!250 Lexer!2314 (tokens!2065 other!32) (rules!11581 other!32)))))

(assert (= (and d!421308 res!656782) b!1450516))

(assert (= (and b!1450516 res!656783) b!1450517))

(assert (= (and b!1450517 res!656784) b!1450518))

(declare-fun m!1673905 () Bool)

(assert (=> d!421308 m!1673905))

(declare-fun m!1673907 () Bool)

(assert (=> b!1450516 m!1673907))

(declare-fun m!1673909 () Bool)

(assert (=> b!1450517 m!1673909))

(declare-fun m!1673911 () Bool)

(assert (=> b!1450518 m!1673911))

(assert (=> start!135172 d!421308))

(declare-fun d!421310 () Bool)

(declare-fun c!238813 () Bool)

(assert (=> d!421310 (= c!238813 (is-Node!5147 (c!238807 (tokens!2065 thiss!10022))))))

(declare-fun e!925547 () Bool)

(assert (=> d!421310 (= (inv!20154 (c!238807 (tokens!2065 thiss!10022))) e!925547)))

(declare-fun b!1450525 () Bool)

(declare-fun inv!20160 (Conc!5147) Bool)

(assert (=> b!1450525 (= e!925547 (inv!20160 (c!238807 (tokens!2065 thiss!10022))))))

(declare-fun b!1450526 () Bool)

(declare-fun e!925548 () Bool)

(assert (=> b!1450526 (= e!925547 e!925548)))

(declare-fun res!656787 () Bool)

(assert (=> b!1450526 (= res!656787 (not (is-Leaf!7679 (c!238807 (tokens!2065 thiss!10022)))))))

(assert (=> b!1450526 (=> res!656787 e!925548)))

(declare-fun b!1450527 () Bool)

(declare-fun inv!20161 (Conc!5147) Bool)

(assert (=> b!1450527 (= e!925548 (inv!20161 (c!238807 (tokens!2065 thiss!10022))))))

(assert (= (and d!421310 c!238813) b!1450525))

(assert (= (and d!421310 (not c!238813)) b!1450526))

(assert (= (and b!1450526 (not res!656787)) b!1450527))

(declare-fun m!1673913 () Bool)

(assert (=> b!1450525 m!1673913))

(declare-fun m!1673915 () Bool)

(assert (=> b!1450527 m!1673915))

(assert (=> b!1450475 d!421310))

(declare-fun d!421312 () Bool)

(declare-fun list!6039 (Conc!5147) List!15170)

(assert (=> d!421312 (= (list!6037 (tokens!2065 other!32)) (list!6039 (c!238807 (tokens!2065 other!32))))))

(declare-fun bs!342562 () Bool)

(assert (= bs!342562 d!421312))

(declare-fun m!1673917 () Bool)

(assert (=> bs!342562 m!1673917))

(assert (=> b!1450479 d!421312))

(declare-fun d!421314 () Bool)

(declare-fun lt!500079 () Token!4982)

(declare-fun head!2968 (List!15170) Token!4982)

(assert (=> d!421314 (= lt!500079 (head!2968 (list!6037 (tokens!2065 other!32))))))

(declare-fun head!2969 (Conc!5147) Token!4982)

(assert (=> d!421314 (= lt!500079 (head!2969 (c!238807 (tokens!2065 other!32))))))

(assert (=> d!421314 (not (isEmpty!9445 (tokens!2065 other!32)))))

(assert (=> d!421314 (= (head!2966 (tokens!2065 other!32)) lt!500079)))

(declare-fun bs!342563 () Bool)

(assert (= bs!342563 d!421314))

(assert (=> bs!342563 m!1673829))

(assert (=> bs!342563 m!1673829))

(declare-fun m!1673919 () Bool)

(assert (=> bs!342563 m!1673919))

(declare-fun m!1673921 () Bool)

(assert (=> bs!342563 m!1673921))

(assert (=> bs!342563 m!1673847))

(assert (=> b!1450479 d!421314))

(declare-fun d!421316 () Bool)

(declare-fun lt!500082 () Token!4982)

(declare-fun last!240 (List!15170) Token!4982)

(assert (=> d!421316 (= lt!500082 (last!240 (list!6037 (tokens!2065 thiss!10022))))))

(declare-fun last!241 (Conc!5147) Token!4982)

(assert (=> d!421316 (= lt!500082 (last!241 (c!238807 (tokens!2065 thiss!10022))))))

(assert (=> d!421316 (not (isEmpty!9445 (tokens!2065 thiss!10022)))))

(assert (=> d!421316 (= (last!238 (tokens!2065 thiss!10022)) lt!500082)))

(declare-fun bs!342564 () Bool)

(assert (= bs!342564 d!421316))

(assert (=> bs!342564 m!1673833))

(assert (=> bs!342564 m!1673833))

(declare-fun m!1673923 () Bool)

(assert (=> bs!342564 m!1673923))

(declare-fun m!1673925 () Bool)

(assert (=> bs!342564 m!1673925))

(assert (=> bs!342564 m!1673817))

(assert (=> b!1450479 d!421316))

(declare-fun d!421318 () Bool)

(declare-fun lt!500087 () Bool)

(declare-fun e!925554 () Bool)

(assert (=> d!421318 (= lt!500087 e!925554)))

(declare-fun res!656796 () Bool)

(assert (=> d!421318 (=> (not res!656796) (not e!925554))))

(declare-datatypes ((tuple2!14202 0))(
  ( (tuple2!14203 (_1!7987 BalanceConc!10234) (_2!7987 BalanceConc!10232)) )
))
(declare-fun lex!1062 (LexerInterface!2316 List!15171 BalanceConc!10232) tuple2!14202)

(declare-fun print!1089 (LexerInterface!2316 BalanceConc!10234) BalanceConc!10232)

(declare-fun singletonSeq!1253 (Token!4982) BalanceConc!10234)

(assert (=> d!421318 (= res!656796 (= (list!6037 (_1!7987 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500044))))) (list!6037 (singletonSeq!1253 lt!500044))))))

(declare-fun e!925553 () Bool)

(assert (=> d!421318 (= lt!500087 e!925553)))

(declare-fun res!656795 () Bool)

(assert (=> d!421318 (=> (not res!656795) (not e!925553))))

(declare-fun lt!500088 () tuple2!14202)

(declare-fun size!12357 (BalanceConc!10234) Int)

(assert (=> d!421318 (= res!656795 (= (size!12357 (_1!7987 lt!500088)) 1))))

(assert (=> d!421318 (= lt!500088 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500044))))))

(assert (=> d!421318 (not (isEmpty!9446 (rules!11581 thiss!10022)))))

(assert (=> d!421318 (= (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500044) lt!500087)))

(declare-fun b!1450534 () Bool)

(declare-fun res!656794 () Bool)

(assert (=> b!1450534 (=> (not res!656794) (not e!925553))))

(declare-fun apply!3902 (BalanceConc!10234 Int) Token!4982)

(assert (=> b!1450534 (= res!656794 (= (apply!3902 (_1!7987 lt!500088) 0) lt!500044))))

(declare-fun b!1450535 () Bool)

(declare-fun isEmpty!9449 (BalanceConc!10232) Bool)

(assert (=> b!1450535 (= e!925553 (isEmpty!9449 (_2!7987 lt!500088)))))

(declare-fun b!1450536 () Bool)

(assert (=> b!1450536 (= e!925554 (isEmpty!9449 (_2!7987 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500044))))))))

(assert (= (and d!421318 res!656795) b!1450534))

(assert (= (and b!1450534 res!656794) b!1450535))

(assert (= (and d!421318 res!656796) b!1450536))

(declare-fun m!1673927 () Bool)

(assert (=> d!421318 m!1673927))

(declare-fun m!1673929 () Bool)

(assert (=> d!421318 m!1673929))

(declare-fun m!1673931 () Bool)

(assert (=> d!421318 m!1673931))

(declare-fun m!1673933 () Bool)

(assert (=> d!421318 m!1673933))

(declare-fun m!1673935 () Bool)

(assert (=> d!421318 m!1673935))

(assert (=> d!421318 m!1673929))

(assert (=> d!421318 m!1673933))

(assert (=> d!421318 m!1673929))

(declare-fun m!1673937 () Bool)

(assert (=> d!421318 m!1673937))

(assert (=> d!421318 m!1673843))

(declare-fun m!1673939 () Bool)

(assert (=> b!1450534 m!1673939))

(declare-fun m!1673941 () Bool)

(assert (=> b!1450535 m!1673941))

(assert (=> b!1450536 m!1673929))

(assert (=> b!1450536 m!1673929))

(assert (=> b!1450536 m!1673933))

(assert (=> b!1450536 m!1673933))

(assert (=> b!1450536 m!1673935))

(declare-fun m!1673943 () Bool)

(assert (=> b!1450536 m!1673943))

(assert (=> b!1450479 d!421318))

(declare-fun d!421320 () Bool)

(assert (=> d!421320 (= (list!6037 (tokens!2065 thiss!10022)) (list!6039 (c!238807 (tokens!2065 thiss!10022))))))

(declare-fun bs!342565 () Bool)

(assert (= bs!342565 d!421320))

(declare-fun m!1673945 () Bool)

(assert (=> bs!342565 m!1673945))

(assert (=> b!1450479 d!421320))

(declare-fun d!421322 () Bool)

(declare-fun prefixMatchZipperSequence!336 (Regex!3974 BalanceConc!10232) Bool)

(declare-fun rulesRegex!398 (LexerInterface!2316 List!15171) Regex!3974)

(declare-fun ++!4053 (BalanceConc!10232 BalanceConc!10232) BalanceConc!10232)

(declare-fun charsOf!1524 (Token!4982) BalanceConc!10232)

(declare-fun singletonSeq!1254 (C!8126) BalanceConc!10232)

(declare-fun apply!3903 (BalanceConc!10232 Int) C!8126)

(assert (=> d!421322 (= (separableTokensPredicate!525 Lexer!2314 lt!500048 lt!500044 (rules!11581 thiss!10022)) (not (prefixMatchZipperSequence!336 (rulesRegex!398 Lexer!2314 (rules!11581 thiss!10022)) (++!4053 (charsOf!1524 lt!500048) (singletonSeq!1254 (apply!3903 (charsOf!1524 lt!500044) 0))))))))

(declare-fun bs!342566 () Bool)

(assert (= bs!342566 d!421322))

(declare-fun m!1673947 () Bool)

(assert (=> bs!342566 m!1673947))

(declare-fun m!1673949 () Bool)

(assert (=> bs!342566 m!1673949))

(declare-fun m!1673951 () Bool)

(assert (=> bs!342566 m!1673951))

(declare-fun m!1673953 () Bool)

(assert (=> bs!342566 m!1673953))

(declare-fun m!1673955 () Bool)

(assert (=> bs!342566 m!1673955))

(declare-fun m!1673957 () Bool)

(assert (=> bs!342566 m!1673957))

(assert (=> bs!342566 m!1673947))

(assert (=> bs!342566 m!1673949))

(declare-fun m!1673959 () Bool)

(assert (=> bs!342566 m!1673959))

(assert (=> bs!342566 m!1673951))

(assert (=> bs!342566 m!1673957))

(assert (=> bs!342566 m!1673959))

(assert (=> bs!342566 m!1673953))

(assert (=> b!1450479 d!421322))

(declare-fun d!421324 () Bool)

(assert (=> d!421324 (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500044)))

(declare-fun lt!500091 () Unit!24012)

(declare-fun choose!8926 (LexerInterface!2316 List!15171 List!15170 Token!4982) Unit!24012)

(assert (=> d!421324 (= lt!500091 (choose!8926 Lexer!2314 (rules!11581 thiss!10022) lt!500043 lt!500044))))

(assert (=> d!421324 (not (isEmpty!9446 (rules!11581 thiss!10022)))))

(assert (=> d!421324 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!418 Lexer!2314 (rules!11581 thiss!10022) lt!500043 lt!500044) lt!500091)))

(declare-fun bs!342567 () Bool)

(assert (= bs!342567 d!421324))

(assert (=> bs!342567 m!1673839))

(declare-fun m!1673973 () Bool)

(assert (=> bs!342567 m!1673973))

(assert (=> bs!342567 m!1673843))

(assert (=> b!1450479 d!421324))

(declare-fun d!421330 () Bool)

(declare-fun lt!500092 () Bool)

(declare-fun e!925560 () Bool)

(assert (=> d!421330 (= lt!500092 e!925560)))

(declare-fun res!656807 () Bool)

(assert (=> d!421330 (=> (not res!656807) (not e!925560))))

(assert (=> d!421330 (= res!656807 (= (list!6037 (_1!7987 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500048))))) (list!6037 (singletonSeq!1253 lt!500048))))))

(declare-fun e!925559 () Bool)

(assert (=> d!421330 (= lt!500092 e!925559)))

(declare-fun res!656806 () Bool)

(assert (=> d!421330 (=> (not res!656806) (not e!925559))))

(declare-fun lt!500093 () tuple2!14202)

(assert (=> d!421330 (= res!656806 (= (size!12357 (_1!7987 lt!500093)) 1))))

(assert (=> d!421330 (= lt!500093 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500048))))))

(assert (=> d!421330 (not (isEmpty!9446 (rules!11581 thiss!10022)))))

(assert (=> d!421330 (= (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500048) lt!500092)))

(declare-fun b!1450545 () Bool)

(declare-fun res!656805 () Bool)

(assert (=> b!1450545 (=> (not res!656805) (not e!925559))))

(assert (=> b!1450545 (= res!656805 (= (apply!3902 (_1!7987 lt!500093) 0) lt!500048))))

(declare-fun b!1450546 () Bool)

(assert (=> b!1450546 (= e!925559 (isEmpty!9449 (_2!7987 lt!500093)))))

(declare-fun b!1450547 () Bool)

(assert (=> b!1450547 (= e!925560 (isEmpty!9449 (_2!7987 (lex!1062 Lexer!2314 (rules!11581 thiss!10022) (print!1089 Lexer!2314 (singletonSeq!1253 lt!500048))))))))

(assert (= (and d!421330 res!656806) b!1450545))

(assert (= (and b!1450545 res!656805) b!1450546))

(assert (= (and d!421330 res!656807) b!1450547))

(declare-fun m!1673975 () Bool)

(assert (=> d!421330 m!1673975))

(declare-fun m!1673977 () Bool)

(assert (=> d!421330 m!1673977))

(declare-fun m!1673979 () Bool)

(assert (=> d!421330 m!1673979))

(declare-fun m!1673981 () Bool)

(assert (=> d!421330 m!1673981))

(declare-fun m!1673983 () Bool)

(assert (=> d!421330 m!1673983))

(assert (=> d!421330 m!1673977))

(assert (=> d!421330 m!1673981))

(assert (=> d!421330 m!1673977))

(declare-fun m!1673985 () Bool)

(assert (=> d!421330 m!1673985))

(assert (=> d!421330 m!1673843))

(declare-fun m!1673987 () Bool)

(assert (=> b!1450545 m!1673987))

(declare-fun m!1673989 () Bool)

(assert (=> b!1450546 m!1673989))

(assert (=> b!1450547 m!1673977))

(assert (=> b!1450547 m!1673977))

(assert (=> b!1450547 m!1673981))

(assert (=> b!1450547 m!1673981))

(assert (=> b!1450547 m!1673983))

(declare-fun m!1673991 () Bool)

(assert (=> b!1450547 m!1673991))

(assert (=> b!1450479 d!421330))

(declare-fun d!421332 () Bool)

(assert (=> d!421332 (rulesProduceIndividualToken!1235 Lexer!2314 (rules!11581 thiss!10022) lt!500048)))

(declare-fun lt!500094 () Unit!24012)

(assert (=> d!421332 (= lt!500094 (choose!8926 Lexer!2314 (rules!11581 thiss!10022) lt!500046 lt!500048))))

(assert (=> d!421332 (not (isEmpty!9446 (rules!11581 thiss!10022)))))

(assert (=> d!421332 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!418 Lexer!2314 (rules!11581 thiss!10022) lt!500046 lt!500048) lt!500094)))

(declare-fun bs!342568 () Bool)

(assert (= bs!342568 d!421332))

(assert (=> bs!342568 m!1673835))

(declare-fun m!1673993 () Bool)

(assert (=> bs!342568 m!1673993))

(assert (=> bs!342568 m!1673843))

(assert (=> b!1450479 d!421332))

(declare-fun d!421334 () Bool)

(assert (=> d!421334 (= (inv!20155 (tokens!2065 other!32)) (isBalanced!1535 (c!238807 (tokens!2065 other!32))))))

(declare-fun bs!342569 () Bool)

(assert (= bs!342569 d!421334))

(declare-fun m!1673995 () Bool)

(assert (=> bs!342569 m!1673995))

(assert (=> b!1450477 d!421334))

(declare-fun d!421336 () Bool)

(declare-fun lt!500097 () Bool)

(declare-fun isEmpty!9450 (List!15170) Bool)

(assert (=> d!421336 (= lt!500097 (isEmpty!9450 (list!6037 (tokens!2065 other!32))))))

(declare-fun isEmpty!9451 (Conc!5147) Bool)

(assert (=> d!421336 (= lt!500097 (isEmpty!9451 (c!238807 (tokens!2065 other!32))))))

(assert (=> d!421336 (= (isEmpty!9445 (tokens!2065 other!32)) lt!500097)))

(declare-fun bs!342570 () Bool)

(assert (= bs!342570 d!421336))

(assert (=> bs!342570 m!1673829))

(assert (=> bs!342570 m!1673829))

(declare-fun m!1673997 () Bool)

(assert (=> bs!342570 m!1673997))

(declare-fun m!1673999 () Bool)

(assert (=> bs!342570 m!1673999))

(assert (=> b!1450478 d!421336))

(declare-fun d!421338 () Bool)

(declare-fun e!925573 () Bool)

(assert (=> d!421338 e!925573))

(declare-fun res!656827 () Bool)

(assert (=> d!421338 (=> (not res!656827) (not e!925573))))

(assert (=> d!421338 (= res!656827 (rulesInvariant!2149 Lexer!2314 (rules!11581 thiss!10022)))))

(declare-fun Unit!24017 () Unit!24012)

(assert (=> d!421338 (= (lemmaInvariant!356 thiss!10022) Unit!24017)))

(declare-fun b!1450573 () Bool)

(declare-fun res!656828 () Bool)

(assert (=> b!1450573 (=> (not res!656828) (not e!925573))))

(assert (=> b!1450573 (= res!656828 (rulesProduceEachTokenIndividually!866 Lexer!2314 (rules!11581 thiss!10022) (tokens!2065 thiss!10022)))))

(declare-fun b!1450574 () Bool)

(assert (=> b!1450574 (= e!925573 (separableTokens!250 Lexer!2314 (tokens!2065 thiss!10022) (rules!11581 thiss!10022)))))

(assert (= (and d!421338 res!656827) b!1450573))

(assert (= (and b!1450573 res!656828) b!1450574))

(assert (=> d!421338 m!1673899))

(assert (=> b!1450573 m!1673901))

(assert (=> b!1450574 m!1673903))

(assert (=> b!1450478 d!421338))

(declare-fun d!421346 () Bool)

(declare-fun e!925574 () Bool)

(assert (=> d!421346 e!925574))

(declare-fun res!656829 () Bool)

(assert (=> d!421346 (=> (not res!656829) (not e!925574))))

(assert (=> d!421346 (= res!656829 (rulesInvariant!2149 Lexer!2314 (rules!11581 other!32)))))

(declare-fun Unit!24018 () Unit!24012)

(assert (=> d!421346 (= (lemmaInvariant!356 other!32) Unit!24018)))

(declare-fun b!1450575 () Bool)

(declare-fun res!656830 () Bool)

(assert (=> b!1450575 (=> (not res!656830) (not e!925574))))

(assert (=> b!1450575 (= res!656830 (rulesProduceEachTokenIndividually!866 Lexer!2314 (rules!11581 other!32) (tokens!2065 other!32)))))

(declare-fun b!1450576 () Bool)

(assert (=> b!1450576 (= e!925574 (separableTokens!250 Lexer!2314 (tokens!2065 other!32) (rules!11581 other!32)))))

(assert (= (and d!421346 res!656829) b!1450575))

(assert (= (and b!1450575 res!656830) b!1450576))

(assert (=> d!421346 m!1673907))

(assert (=> b!1450575 m!1673909))

(assert (=> b!1450576 m!1673911))

(assert (=> b!1450478 d!421346))

(declare-fun d!421348 () Bool)

(declare-fun lt!500098 () Bool)

(assert (=> d!421348 (= lt!500098 (isEmpty!9450 (list!6037 (tokens!2065 thiss!10022))))))

(assert (=> d!421348 (= lt!500098 (isEmpty!9451 (c!238807 (tokens!2065 thiss!10022))))))

(assert (=> d!421348 (= (isEmpty!9445 (tokens!2065 thiss!10022)) lt!500098)))

(declare-fun bs!342571 () Bool)

(assert (= bs!342571 d!421348))

(assert (=> bs!342571 m!1673833))

(assert (=> bs!342571 m!1673833))

(declare-fun m!1674007 () Bool)

(assert (=> bs!342571 m!1674007))

(declare-fun m!1674009 () Bool)

(assert (=> bs!342571 m!1674009))

(assert (=> b!1450476 d!421348))

(declare-fun d!421350 () Bool)

(declare-fun c!238817 () Bool)

(assert (=> d!421350 (= c!238817 (is-Node!5147 (c!238807 (tokens!2065 other!32))))))

(declare-fun e!925575 () Bool)

(assert (=> d!421350 (= (inv!20154 (c!238807 (tokens!2065 other!32))) e!925575)))

(declare-fun b!1450577 () Bool)

(assert (=> b!1450577 (= e!925575 (inv!20160 (c!238807 (tokens!2065 other!32))))))

(declare-fun b!1450578 () Bool)

(declare-fun e!925576 () Bool)

(assert (=> b!1450578 (= e!925575 e!925576)))

(declare-fun res!656831 () Bool)

(assert (=> b!1450578 (= res!656831 (not (is-Leaf!7679 (c!238807 (tokens!2065 other!32)))))))

(assert (=> b!1450578 (=> res!656831 e!925576)))

(declare-fun b!1450579 () Bool)

(assert (=> b!1450579 (= e!925576 (inv!20161 (c!238807 (tokens!2065 other!32))))))

(assert (= (and d!421350 c!238817) b!1450577))

(assert (= (and d!421350 (not c!238817)) b!1450578))

(assert (= (and b!1450578 (not res!656831)) b!1450579))

(declare-fun m!1674011 () Bool)

(assert (=> b!1450577 m!1674011))

(declare-fun m!1674013 () Bool)

(assert (=> b!1450579 m!1674013))

(assert (=> b!1450481 d!421350))

(declare-fun d!421352 () Bool)

(assert (=> d!421352 (= (isEmpty!9446 (rules!11581 thiss!10022)) (is-Nil!15105 (rules!11581 thiss!10022)))))

(assert (=> b!1450482 d!421352))

(declare-fun b!1450590 () Bool)

(declare-fun b_free!36095 () Bool)

(declare-fun b_next!36799 () Bool)

(assert (=> b!1450590 (= b_free!36095 (not b_next!36799))))

(declare-fun tp!409268 () Bool)

(declare-fun b_and!98159 () Bool)

(assert (=> b!1450590 (= tp!409268 b_and!98159)))

(declare-fun b_free!36097 () Bool)

(declare-fun b_next!36801 () Bool)

(assert (=> b!1450590 (= b_free!36097 (not b_next!36801))))

(declare-fun tp!409270 () Bool)

(declare-fun b_and!98161 () Bool)

(assert (=> b!1450590 (= tp!409270 b_and!98161)))

(declare-fun e!925585 () Bool)

(assert (=> b!1450590 (= e!925585 (and tp!409268 tp!409270))))

(declare-fun e!925588 () Bool)

(declare-fun b!1450589 () Bool)

(declare-fun tp!409269 () Bool)

(declare-fun inv!20151 (String!18008) Bool)

(declare-fun inv!20162 (TokenValueInjection!5160) Bool)

(assert (=> b!1450589 (= e!925588 (and tp!409269 (inv!20151 (tag!2924 (h!20506 (rules!11581 thiss!10022)))) (inv!20162 (transformation!2660 (h!20506 (rules!11581 thiss!10022)))) e!925585))))

(declare-fun b!1450588 () Bool)

(declare-fun e!925587 () Bool)

(declare-fun tp!409267 () Bool)

(assert (=> b!1450588 (= e!925587 (and e!925588 tp!409267))))

(assert (=> b!1450480 (= tp!409245 e!925587)))

(assert (= b!1450589 b!1450590))

(assert (= b!1450588 b!1450589))

(assert (= (and b!1450480 (is-Cons!15105 (rules!11581 thiss!10022))) b!1450588))

(declare-fun m!1674015 () Bool)

(assert (=> b!1450589 m!1674015))

(declare-fun m!1674017 () Bool)

(assert (=> b!1450589 m!1674017))

(declare-fun tp!409278 () Bool)

(declare-fun e!925593 () Bool)

(declare-fun b!1450599 () Bool)

(declare-fun tp!409277 () Bool)

(assert (=> b!1450599 (= e!925593 (and (inv!20154 (left!12848 (c!238807 (tokens!2065 thiss!10022)))) tp!409277 (inv!20154 (right!13178 (c!238807 (tokens!2065 thiss!10022)))) tp!409278))))

(declare-fun b!1450601 () Bool)

(declare-fun e!925594 () Bool)

(declare-fun tp!409279 () Bool)

(assert (=> b!1450601 (= e!925594 tp!409279)))

(declare-fun b!1450600 () Bool)

(declare-fun inv!20163 (IArray!10299) Bool)

(assert (=> b!1450600 (= e!925593 (and (inv!20163 (xs!7888 (c!238807 (tokens!2065 thiss!10022)))) e!925594))))

(assert (=> b!1450475 (= tp!409243 (and (inv!20154 (c!238807 (tokens!2065 thiss!10022))) e!925593))))

(assert (= (and b!1450475 (is-Node!5147 (c!238807 (tokens!2065 thiss!10022)))) b!1450599))

(assert (= b!1450600 b!1450601))

(assert (= (and b!1450475 (is-Leaf!7679 (c!238807 (tokens!2065 thiss!10022)))) b!1450600))

(declare-fun m!1674019 () Bool)

(assert (=> b!1450599 m!1674019))

(declare-fun m!1674021 () Bool)

(assert (=> b!1450599 m!1674021))

(declare-fun m!1674023 () Bool)

(assert (=> b!1450600 m!1674023))

(assert (=> b!1450475 m!1673845))

(declare-fun b!1450604 () Bool)

(declare-fun b_free!36099 () Bool)

(declare-fun b_next!36803 () Bool)

(assert (=> b!1450604 (= b_free!36099 (not b_next!36803))))

(declare-fun tp!409281 () Bool)

(declare-fun b_and!98163 () Bool)

(assert (=> b!1450604 (= tp!409281 b_and!98163)))

(declare-fun b_free!36101 () Bool)

(declare-fun b_next!36805 () Bool)

(assert (=> b!1450604 (= b_free!36101 (not b_next!36805))))

(declare-fun tp!409283 () Bool)

(declare-fun b_and!98165 () Bool)

(assert (=> b!1450604 (= tp!409283 b_and!98165)))

(declare-fun e!925595 () Bool)

(assert (=> b!1450604 (= e!925595 (and tp!409281 tp!409283))))

(declare-fun b!1450603 () Bool)

(declare-fun e!925598 () Bool)

(declare-fun tp!409282 () Bool)

(assert (=> b!1450603 (= e!925598 (and tp!409282 (inv!20151 (tag!2924 (h!20506 (rules!11581 other!32)))) (inv!20162 (transformation!2660 (h!20506 (rules!11581 other!32)))) e!925595))))

(declare-fun b!1450602 () Bool)

(declare-fun e!925597 () Bool)

(declare-fun tp!409280 () Bool)

(assert (=> b!1450602 (= e!925597 (and e!925598 tp!409280))))

(assert (=> b!1450477 (= tp!409244 e!925597)))

(assert (= b!1450603 b!1450604))

(assert (= b!1450602 b!1450603))

(assert (= (and b!1450477 (is-Cons!15105 (rules!11581 other!32))) b!1450602))

(declare-fun m!1674025 () Bool)

(assert (=> b!1450603 m!1674025))

(declare-fun m!1674027 () Bool)

(assert (=> b!1450603 m!1674027))

(declare-fun e!925599 () Bool)

(declare-fun tp!409284 () Bool)

(declare-fun b!1450605 () Bool)

(declare-fun tp!409285 () Bool)

(assert (=> b!1450605 (= e!925599 (and (inv!20154 (left!12848 (c!238807 (tokens!2065 other!32)))) tp!409284 (inv!20154 (right!13178 (c!238807 (tokens!2065 other!32)))) tp!409285))))

(declare-fun b!1450607 () Bool)

(declare-fun e!925600 () Bool)

(declare-fun tp!409286 () Bool)

(assert (=> b!1450607 (= e!925600 tp!409286)))

(declare-fun b!1450606 () Bool)

(assert (=> b!1450606 (= e!925599 (and (inv!20163 (xs!7888 (c!238807 (tokens!2065 other!32)))) e!925600))))

(assert (=> b!1450481 (= tp!409246 (and (inv!20154 (c!238807 (tokens!2065 other!32))) e!925599))))

(assert (= (and b!1450481 (is-Node!5147 (c!238807 (tokens!2065 other!32)))) b!1450605))

(assert (= b!1450606 b!1450607))

(assert (= (and b!1450481 (is-Leaf!7679 (c!238807 (tokens!2065 other!32)))) b!1450606))

(declare-fun m!1674029 () Bool)

(assert (=> b!1450605 m!1674029))

(declare-fun m!1674031 () Bool)

(assert (=> b!1450605 m!1674031))

(declare-fun m!1674033 () Bool)

(assert (=> b!1450606 m!1674033))

(assert (=> b!1450481 m!1673813))

(push 1)

(assert (not b!1450516))

(assert (not d!421312))

(assert (not b!1450575))

(assert (not b!1450518))

(assert (not b!1450545))

(assert (not b!1450605))

(assert (not b_next!36799))

(assert (not b!1450525))

(assert (not b!1450573))

(assert (not b_next!36801))

(assert (not d!421332))

(assert (not d!421348))

(assert b_and!98163)

(assert (not b!1450513))

(assert (not d!421318))

(assert (not b!1450588))

(assert (not b!1450475))

(assert (not b!1450602))

(assert b_and!98159)

(assert (not d!421346))

(assert (not b!1450535))

(assert (not b!1450515))

(assert (not b!1450527))

(assert (not d!421302))

(assert (not d!421324))

(assert (not d!421316))

(assert (not b!1450606))

(assert (not b!1450536))

(assert (not d!421338))

(assert (not d!421334))

(assert (not b!1450607))

(assert b_and!98161)

(assert (not b!1450481))

(assert (not b!1450603))

(assert (not d!421308))

(assert (not b!1450547))

(assert (not d!421322))

(assert (not b!1450599))

(assert (not b_next!36805))

(assert (not b!1450576))

(assert (not d!421320))

(assert (not b!1450601))

(assert (not b!1450546))

(assert (not b!1450577))

(assert (not b!1450514))

(assert (not b!1450600))

(assert (not d!421314))

(assert (not b!1450534))

(assert (not d!421330))

(assert (not b_next!36803))

(assert (not b!1450579))

(assert (not b!1450517))

(assert (not d!421336))

(assert (not d!421300))

(assert (not b!1450589))

(assert (not b!1450574))

(assert b_and!98165)

(check-sat)

(pop 1)

(push 1)

(assert b_and!98159)

(assert b_and!98161)

(assert (not b_next!36805))

(assert (not b_next!36799))

(assert (not b_next!36801))

(assert b_and!98163)

(assert (not b_next!36803))

(assert b_and!98165)

(check-sat)

(pop 1)

