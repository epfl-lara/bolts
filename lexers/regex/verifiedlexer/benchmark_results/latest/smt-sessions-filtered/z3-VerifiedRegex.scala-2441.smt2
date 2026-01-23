; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128468 () Bool)

(assert start!128468)

(declare-fun b!1408186 () Bool)

(declare-fun e!898945 () Bool)

(declare-datatypes ((List!14429 0))(
  ( (Nil!14363) (Cons!14363 (h!19764 (_ BitVec 16)) (t!123164 List!14429)) )
))
(declare-datatypes ((TokenValue!2581 0))(
  ( (FloatLiteralValue!5162 (text!18512 List!14429)) (TokenValueExt!2580 (__x!8987 Int)) (Broken!12905 (value!80600 List!14429)) (Object!2646) (End!2581) (Def!2581) (Underscore!2581) (Match!2581) (Else!2581) (Error!2581) (Case!2581) (If!2581) (Extends!2581) (Abstract!2581) (Class!2581) (Val!2581) (DelimiterValue!5162 (del!2641 List!14429)) (KeywordValue!2587 (value!80601 List!14429)) (CommentValue!5162 (value!80602 List!14429)) (WhitespaceValue!5162 (value!80603 List!14429)) (IndentationValue!2581 (value!80604 List!14429)) (String!17140) (Int32!2581) (Broken!12906 (value!80605 List!14429)) (Boolean!2582) (Unit!20730) (OperatorValue!2584 (op!2641 List!14429)) (IdentifierValue!5162 (value!80606 List!14429)) (IdentifierValue!5163 (value!80607 List!14429)) (WhitespaceValue!5163 (value!80608 List!14429)) (True!5162) (False!5162) (Broken!12907 (value!80609 List!14429)) (Broken!12908 (value!80610 List!14429)) (True!5163) (RightBrace!2581) (RightBracket!2581) (Colon!2581) (Null!2581) (Comma!2581) (LeftBracket!2581) (False!5163) (LeftBrace!2581) (ImaginaryLiteralValue!2581 (text!18513 List!14429)) (StringLiteralValue!7743 (value!80611 List!14429)) (EOFValue!2581 (value!80612 List!14429)) (IdentValue!2581 (value!80613 List!14429)) (DelimiterValue!5163 (value!80614 List!14429)) (DedentValue!2581 (value!80615 List!14429)) (NewLineValue!2581 (value!80616 List!14429)) (IntegerValue!7743 (value!80617 (_ BitVec 32)) (text!18514 List!14429)) (IntegerValue!7744 (value!80618 Int) (text!18515 List!14429)) (Times!2581) (Or!2581) (Equal!2581) (Minus!2581) (Broken!12909 (value!80619 List!14429)) (And!2581) (Div!2581) (LessEqual!2581) (Mod!2581) (Concat!6386) (Not!2581) (Plus!2581) (SpaceValue!2581 (value!80620 List!14429)) (IntegerValue!7745 (value!80621 Int) (text!18516 List!14429)) (StringLiteralValue!7744 (text!18517 List!14429)) (FloatLiteralValue!5163 (text!18518 List!14429)) (BytesLiteralValue!2581 (value!80622 List!14429)) (CommentValue!5163 (value!80623 List!14429)) (StringLiteralValue!7745 (value!80624 List!14429)) (ErrorTokenValue!2581 (msg!2642 List!14429)) )
))
(declare-datatypes ((Regex!3805 0))(
  ( (ElementMatch!3805 (c!231481 (_ BitVec 16))) (Concat!6387 (regOne!8122 Regex!3805) (regTwo!8122 Regex!3805)) (EmptyExpr!3805) (Star!3805 (reg!4134 Regex!3805)) (EmptyLang!3805) (Union!3805 (regOne!8123 Regex!3805) (regTwo!8123 Regex!3805)) )
))
(declare-datatypes ((String!17141 0))(
  ( (String!17142 (value!80625 String)) )
))
(declare-datatypes ((IArray!9499 0))(
  ( (IArray!9500 (innerList!4807 List!14429)) )
))
(declare-datatypes ((Conc!4747 0))(
  ( (Node!4747 (left!12262 Conc!4747) (right!12592 Conc!4747) (csize!9724 Int) (cheight!4958 Int)) (Leaf!7189 (xs!7474 IArray!9499) (csize!9725 Int)) (Empty!4747) )
))
(declare-datatypes ((BalanceConc!9434 0))(
  ( (BalanceConc!9435 (c!231482 Conc!4747)) )
))
(declare-datatypes ((TokenValueInjection!4822 0))(
  ( (TokenValueInjection!4823 (toValue!3782 Int) (toChars!3641 Int)) )
))
(declare-datatypes ((Rule!4782 0))(
  ( (Rule!4783 (regex!2491 Regex!3805) (tag!2753 String!17141) (isSeparator!2491 Bool) (transformation!2491 TokenValueInjection!4822)) )
))
(declare-datatypes ((Token!4644 0))(
  ( (Token!4645 (value!80626 TokenValue!2581) (rule!4254 Rule!4782) (size!11811 Int) (originalCharacters!3353 List!14429)) )
))
(declare-datatypes ((List!14430 0))(
  ( (Nil!14364) (Cons!14364 (h!19765 Token!4644) (t!123165 List!14430)) )
))
(declare-datatypes ((IArray!9501 0))(
  ( (IArray!9502 (innerList!4808 List!14430)) )
))
(declare-datatypes ((Conc!4748 0))(
  ( (Node!4748 (left!12263 Conc!4748) (right!12593 Conc!4748) (csize!9726 Int) (cheight!4959 Int)) (Leaf!7190 (xs!7475 IArray!9501) (csize!9727 Int)) (Empty!4748) )
))
(declare-datatypes ((List!14431 0))(
  ( (Nil!14365) (Cons!14365 (h!19766 Rule!4782) (t!123166 List!14431)) )
))
(declare-datatypes ((BalanceConc!9436 0))(
  ( (BalanceConc!9437 (c!231483 Conc!4748)) )
))
(declare-datatypes ((PrintableTokens!764 0))(
  ( (PrintableTokens!765 (rules!10954 List!14431) (tokens!1708 BalanceConc!9436)) )
))
(declare-datatypes ((List!14432 0))(
  ( (Nil!14366) (Cons!14366 (h!19767 PrintableTokens!764) (t!123167 List!14432)) )
))
(declare-datatypes ((IArray!9503 0))(
  ( (IArray!9504 (innerList!4809 List!14432)) )
))
(declare-datatypes ((Conc!4749 0))(
  ( (Node!4749 (left!12264 Conc!4749) (right!12594 Conc!4749) (csize!9728 Int) (cheight!4960 Int)) (Leaf!7191 (xs!7476 IArray!9503) (csize!9729 Int)) (Empty!4749) )
))
(declare-datatypes ((BalanceConc!9438 0))(
  ( (BalanceConc!9439 (c!231484 Conc!4749)) )
))
(declare-fun objs!24 () BalanceConc!9438)

(declare-fun tp!399882 () Bool)

(declare-fun inv!18679 (Conc!4749) Bool)

(assert (=> b!1408186 (= e!898945 (and (inv!18679 (c!231484 objs!24)) tp!399882))))

(declare-fun b!1408187 () Bool)

(declare-fun e!898943 () Bool)

(declare-fun acc!229 () PrintableTokens!764)

(declare-fun tp!399885 () Bool)

(declare-fun inv!18680 (Conc!4748) Bool)

(assert (=> b!1408187 (= e!898943 (and (inv!18680 (c!231483 (tokens!1708 acc!229))) tp!399885))))

(declare-fun res!637707 () Bool)

(declare-fun e!898948 () Bool)

(assert (=> start!128468 (=> (not res!637707) (not e!898948))))

(declare-fun lambda!62281 () Int)

(declare-fun forall!3479 (BalanceConc!9438 Int) Bool)

(assert (=> start!128468 (= res!637707 (forall!3479 objs!24 lambda!62281))))

(assert (=> start!128468 e!898948))

(declare-fun inv!18681 (BalanceConc!9438) Bool)

(assert (=> start!128468 (and (inv!18681 objs!24) e!898945)))

(declare-fun e!898947 () Bool)

(declare-fun inv!18682 (PrintableTokens!764) Bool)

(assert (=> start!128468 (and (inv!18682 acc!229) e!898947)))

(declare-fun sep!3 () PrintableTokens!764)

(declare-fun e!898946 () Bool)

(assert (=> start!128468 (and (inv!18682 sep!3) e!898946)))

(declare-fun b!1408188 () Bool)

(declare-fun head!2629 (BalanceConc!9438) PrintableTokens!764)

(assert (=> b!1408188 (= e!898948 (not (= (rules!10954 acc!229) (rules!10954 (head!2629 objs!24)))))))

(declare-fun b!1408189 () Bool)

(declare-fun res!637709 () Bool)

(assert (=> b!1408189 (=> (not res!637709) (not e!898948))))

(declare-fun usesJsonRules!0 (PrintableTokens!764) Bool)

(assert (=> b!1408189 (= res!637709 (usesJsonRules!0 acc!229))))

(declare-fun b!1408190 () Bool)

(declare-fun res!637708 () Bool)

(assert (=> b!1408190 (=> (not res!637708) (not e!898948))))

(declare-fun size!11812 (BalanceConc!9438) Int)

(assert (=> b!1408190 (= res!637708 (= (size!11812 objs!24) 1))))

(declare-fun b!1408191 () Bool)

(declare-fun res!637706 () Bool)

(assert (=> b!1408191 (=> (not res!637706) (not e!898948))))

(assert (=> b!1408191 (= res!637706 (usesJsonRules!0 sep!3))))

(declare-fun b!1408192 () Bool)

(declare-fun tp!399884 () Bool)

(declare-fun inv!18683 (BalanceConc!9436) Bool)

(assert (=> b!1408192 (= e!898947 (and tp!399884 (inv!18683 (tokens!1708 acc!229)) e!898943))))

(declare-fun b!1408193 () Bool)

(declare-fun res!637705 () Bool)

(assert (=> b!1408193 (=> (not res!637705) (not e!898948))))

(declare-fun isEmpty!8746 (BalanceConc!9438) Bool)

(assert (=> b!1408193 (= res!637705 (not (isEmpty!8746 objs!24)))))

(declare-fun e!898944 () Bool)

(declare-fun tp!399886 () Bool)

(declare-fun b!1408194 () Bool)

(assert (=> b!1408194 (= e!898946 (and tp!399886 (inv!18683 (tokens!1708 sep!3)) e!898944))))

(declare-fun b!1408195 () Bool)

(declare-fun tp!399883 () Bool)

(assert (=> b!1408195 (= e!898944 (and (inv!18680 (c!231483 (tokens!1708 sep!3))) tp!399883))))

(assert (= (and start!128468 res!637707) b!1408189))

(assert (= (and b!1408189 res!637709) b!1408191))

(assert (= (and b!1408191 res!637706) b!1408193))

(assert (= (and b!1408193 res!637705) b!1408190))

(assert (= (and b!1408190 res!637708) b!1408188))

(assert (= start!128468 b!1408186))

(assert (= b!1408192 b!1408187))

(assert (= start!128468 b!1408192))

(assert (= b!1408194 b!1408195))

(assert (= start!128468 b!1408194))

(declare-fun m!1585931 () Bool)

(assert (=> b!1408194 m!1585931))

(declare-fun m!1585933 () Bool)

(assert (=> b!1408186 m!1585933))

(declare-fun m!1585935 () Bool)

(assert (=> b!1408189 m!1585935))

(declare-fun m!1585937 () Bool)

(assert (=> b!1408190 m!1585937))

(declare-fun m!1585939 () Bool)

(assert (=> b!1408187 m!1585939))

(declare-fun m!1585941 () Bool)

(assert (=> b!1408195 m!1585941))

(declare-fun m!1585943 () Bool)

(assert (=> start!128468 m!1585943))

(declare-fun m!1585945 () Bool)

(assert (=> start!128468 m!1585945))

(declare-fun m!1585947 () Bool)

(assert (=> start!128468 m!1585947))

(declare-fun m!1585949 () Bool)

(assert (=> start!128468 m!1585949))

(declare-fun m!1585951 () Bool)

(assert (=> b!1408193 m!1585951))

(declare-fun m!1585953 () Bool)

(assert (=> b!1408191 m!1585953))

(declare-fun m!1585955 () Bool)

(assert (=> b!1408192 m!1585955))

(declare-fun m!1585957 () Bool)

(assert (=> b!1408188 m!1585957))

(check-sat (not b!1408189) (not b!1408191) (not b!1408193) (not b!1408192) (not b!1408194) (not b!1408186) (not b!1408195) (not b!1408190) (not start!128468) (not b!1408188) (not b!1408187))
(check-sat)
(get-model)

(declare-fun d!402056 () Bool)

(declare-fun c!231490 () Bool)

(get-info :version)

(assert (=> d!402056 (= c!231490 ((_ is Node!4748) (c!231483 (tokens!1708 sep!3))))))

(declare-fun e!898959 () Bool)

(assert (=> d!402056 (= (inv!18680 (c!231483 (tokens!1708 sep!3))) e!898959)))

(declare-fun b!1408211 () Bool)

(declare-fun inv!18691 (Conc!4748) Bool)

(assert (=> b!1408211 (= e!898959 (inv!18691 (c!231483 (tokens!1708 sep!3))))))

(declare-fun b!1408212 () Bool)

(declare-fun e!898960 () Bool)

(assert (=> b!1408212 (= e!898959 e!898960)))

(declare-fun res!637719 () Bool)

(assert (=> b!1408212 (= res!637719 (not ((_ is Leaf!7190) (c!231483 (tokens!1708 sep!3)))))))

(assert (=> b!1408212 (=> res!637719 e!898960)))

(declare-fun b!1408213 () Bool)

(declare-fun inv!18692 (Conc!4748) Bool)

(assert (=> b!1408213 (= e!898960 (inv!18692 (c!231483 (tokens!1708 sep!3))))))

(assert (= (and d!402056 c!231490) b!1408211))

(assert (= (and d!402056 (not c!231490)) b!1408212))

(assert (= (and b!1408212 (not res!637719)) b!1408213))

(declare-fun m!1585963 () Bool)

(assert (=> b!1408211 m!1585963))

(declare-fun m!1585965 () Bool)

(assert (=> b!1408213 m!1585965))

(assert (=> b!1408195 d!402056))

(declare-fun d!402058 () Bool)

(declare-fun lt!470057 () Int)

(declare-fun size!11815 (List!14432) Int)

(declare-fun list!5609 (BalanceConc!9438) List!14432)

(assert (=> d!402058 (= lt!470057 (size!11815 (list!5609 objs!24)))))

(declare-fun size!11816 (Conc!4749) Int)

(assert (=> d!402058 (= lt!470057 (size!11816 (c!231484 objs!24)))))

(assert (=> d!402058 (= (size!11812 objs!24) lt!470057)))

(declare-fun bs!338657 () Bool)

(assert (= bs!338657 d!402058))

(declare-fun m!1585967 () Bool)

(assert (=> bs!338657 m!1585967))

(assert (=> bs!338657 m!1585967))

(declare-fun m!1585969 () Bool)

(assert (=> bs!338657 m!1585969))

(declare-fun m!1585971 () Bool)

(assert (=> bs!338657 m!1585971))

(assert (=> b!1408190 d!402058))

(declare-fun d!402060 () Bool)

(declare-fun lt!470060 () PrintableTokens!764)

(declare-fun head!2632 (List!14432) PrintableTokens!764)

(assert (=> d!402060 (= lt!470060 (head!2632 (list!5609 objs!24)))))

(declare-fun head!2633 (Conc!4749) PrintableTokens!764)

(assert (=> d!402060 (= lt!470060 (head!2633 (c!231484 objs!24)))))

(assert (=> d!402060 (not (isEmpty!8746 objs!24))))

(assert (=> d!402060 (= (head!2629 objs!24) lt!470060)))

(declare-fun bs!338658 () Bool)

(assert (= bs!338658 d!402060))

(assert (=> bs!338658 m!1585967))

(assert (=> bs!338658 m!1585967))

(declare-fun m!1585973 () Bool)

(assert (=> bs!338658 m!1585973))

(declare-fun m!1585975 () Bool)

(assert (=> bs!338658 m!1585975))

(assert (=> bs!338658 m!1585951))

(assert (=> b!1408188 d!402060))

(declare-fun d!402062 () Bool)

(declare-fun isBalanced!1399 (Conc!4748) Bool)

(assert (=> d!402062 (= (inv!18683 (tokens!1708 sep!3)) (isBalanced!1399 (c!231483 (tokens!1708 sep!3))))))

(declare-fun bs!338659 () Bool)

(assert (= bs!338659 d!402062))

(declare-fun m!1585977 () Bool)

(assert (=> bs!338659 m!1585977))

(assert (=> b!1408194 d!402062))

(declare-fun d!402064 () Bool)

(declare-fun lt!470063 () Bool)

(declare-fun forall!3482 (List!14432 Int) Bool)

(assert (=> d!402064 (= lt!470063 (forall!3482 (list!5609 objs!24) lambda!62281))))

(declare-fun forall!3483 (Conc!4749 Int) Bool)

(assert (=> d!402064 (= lt!470063 (forall!3483 (c!231484 objs!24) lambda!62281))))

(assert (=> d!402064 (= (forall!3479 objs!24 lambda!62281) lt!470063)))

(declare-fun bs!338660 () Bool)

(assert (= bs!338660 d!402064))

(assert (=> bs!338660 m!1585967))

(assert (=> bs!338660 m!1585967))

(declare-fun m!1585979 () Bool)

(assert (=> bs!338660 m!1585979))

(declare-fun m!1585981 () Bool)

(assert (=> bs!338660 m!1585981))

(assert (=> start!128468 d!402064))

(declare-fun d!402066 () Bool)

(declare-fun isBalanced!1400 (Conc!4749) Bool)

(assert (=> d!402066 (= (inv!18681 objs!24) (isBalanced!1400 (c!231484 objs!24)))))

(declare-fun bs!338661 () Bool)

(assert (= bs!338661 d!402066))

(declare-fun m!1585983 () Bool)

(assert (=> bs!338661 m!1585983))

(assert (=> start!128468 d!402066))

(declare-fun d!402068 () Bool)

(declare-fun res!637736 () Bool)

(declare-fun e!898973 () Bool)

(assert (=> d!402068 (=> (not res!637736) (not e!898973))))

(declare-fun isEmpty!8750 (List!14431) Bool)

(assert (=> d!402068 (= res!637736 (not (isEmpty!8750 (rules!10954 acc!229))))))

(assert (=> d!402068 (= (inv!18682 acc!229) e!898973)))

(declare-fun b!1408238 () Bool)

(declare-fun res!637737 () Bool)

(assert (=> b!1408238 (=> (not res!637737) (not e!898973))))

(declare-datatypes ((LexerInterface!2183 0))(
  ( (LexerInterfaceExt!2180 (__x!8989 Int)) (Lexer!2181) )
))
(declare-fun rulesInvariant!2053 (LexerInterface!2183 List!14431) Bool)

(assert (=> b!1408238 (= res!637737 (rulesInvariant!2053 Lexer!2181 (rules!10954 acc!229)))))

(declare-fun b!1408239 () Bool)

(declare-fun res!637738 () Bool)

(assert (=> b!1408239 (=> (not res!637738) (not e!898973))))

(declare-fun rulesProduceEachTokenIndividually!780 (LexerInterface!2183 List!14431 BalanceConc!9436) Bool)

(assert (=> b!1408239 (= res!637738 (rulesProduceEachTokenIndividually!780 Lexer!2181 (rules!10954 acc!229) (tokens!1708 acc!229)))))

(declare-fun b!1408240 () Bool)

(declare-fun separableTokens!165 (LexerInterface!2183 BalanceConc!9436 List!14431) Bool)

(assert (=> b!1408240 (= e!898973 (separableTokens!165 Lexer!2181 (tokens!1708 acc!229) (rules!10954 acc!229)))))

(assert (= (and d!402068 res!637736) b!1408238))

(assert (= (and b!1408238 res!637737) b!1408239))

(assert (= (and b!1408239 res!637738) b!1408240))

(declare-fun m!1586015 () Bool)

(assert (=> d!402068 m!1586015))

(declare-fun m!1586017 () Bool)

(assert (=> b!1408238 m!1586017))

(declare-fun m!1586019 () Bool)

(assert (=> b!1408239 m!1586019))

(declare-fun m!1586021 () Bool)

(assert (=> b!1408240 m!1586021))

(assert (=> start!128468 d!402068))

(declare-fun d!402090 () Bool)

(declare-fun res!637739 () Bool)

(declare-fun e!898974 () Bool)

(assert (=> d!402090 (=> (not res!637739) (not e!898974))))

(assert (=> d!402090 (= res!637739 (not (isEmpty!8750 (rules!10954 sep!3))))))

(assert (=> d!402090 (= (inv!18682 sep!3) e!898974)))

(declare-fun b!1408241 () Bool)

(declare-fun res!637740 () Bool)

(assert (=> b!1408241 (=> (not res!637740) (not e!898974))))

(assert (=> b!1408241 (= res!637740 (rulesInvariant!2053 Lexer!2181 (rules!10954 sep!3)))))

(declare-fun b!1408242 () Bool)

(declare-fun res!637741 () Bool)

(assert (=> b!1408242 (=> (not res!637741) (not e!898974))))

(assert (=> b!1408242 (= res!637741 (rulesProduceEachTokenIndividually!780 Lexer!2181 (rules!10954 sep!3) (tokens!1708 sep!3)))))

(declare-fun b!1408243 () Bool)

(assert (=> b!1408243 (= e!898974 (separableTokens!165 Lexer!2181 (tokens!1708 sep!3) (rules!10954 sep!3)))))

(assert (= (and d!402090 res!637739) b!1408241))

(assert (= (and b!1408241 res!637740) b!1408242))

(assert (= (and b!1408242 res!637741) b!1408243))

(declare-fun m!1586023 () Bool)

(assert (=> d!402090 m!1586023))

(declare-fun m!1586025 () Bool)

(assert (=> b!1408241 m!1586025))

(declare-fun m!1586027 () Bool)

(assert (=> b!1408242 m!1586027))

(declare-fun m!1586029 () Bool)

(assert (=> b!1408243 m!1586029))

(assert (=> start!128468 d!402090))

(declare-fun d!402092 () Bool)

(declare-datatypes ((JsonLexer!370 0))(
  ( (JsonLexer!371) )
))
(declare-fun rules!109 (JsonLexer!370) List!14431)

(assert (=> d!402092 (= (usesJsonRules!0 acc!229) (= (rules!10954 acc!229) (rules!109 JsonLexer!371)))))

(declare-fun bs!338671 () Bool)

(assert (= bs!338671 d!402092))

(declare-fun m!1586077 () Bool)

(assert (=> bs!338671 m!1586077))

(assert (=> b!1408189 d!402092))

(declare-fun d!402098 () Bool)

(assert (=> d!402098 (= (inv!18683 (tokens!1708 acc!229)) (isBalanced!1399 (c!231483 (tokens!1708 acc!229))))))

(declare-fun bs!338672 () Bool)

(assert (= bs!338672 d!402098))

(declare-fun m!1586079 () Bool)

(assert (=> bs!338672 m!1586079))

(assert (=> b!1408192 d!402098))

(declare-fun d!402100 () Bool)

(declare-fun c!231495 () Bool)

(assert (=> d!402100 (= c!231495 ((_ is Node!4748) (c!231483 (tokens!1708 acc!229))))))

(declare-fun e!899007 () Bool)

(assert (=> d!402100 (= (inv!18680 (c!231483 (tokens!1708 acc!229))) e!899007)))

(declare-fun b!1408289 () Bool)

(assert (=> b!1408289 (= e!899007 (inv!18691 (c!231483 (tokens!1708 acc!229))))))

(declare-fun b!1408290 () Bool)

(declare-fun e!899008 () Bool)

(assert (=> b!1408290 (= e!899007 e!899008)))

(declare-fun res!637748 () Bool)

(assert (=> b!1408290 (= res!637748 (not ((_ is Leaf!7190) (c!231483 (tokens!1708 acc!229)))))))

(assert (=> b!1408290 (=> res!637748 e!899008)))

(declare-fun b!1408291 () Bool)

(assert (=> b!1408291 (= e!899008 (inv!18692 (c!231483 (tokens!1708 acc!229))))))

(assert (= (and d!402100 c!231495) b!1408289))

(assert (= (and d!402100 (not c!231495)) b!1408290))

(assert (= (and b!1408290 (not res!637748)) b!1408291))

(declare-fun m!1586081 () Bool)

(assert (=> b!1408289 m!1586081))

(declare-fun m!1586083 () Bool)

(assert (=> b!1408291 m!1586083))

(assert (=> b!1408187 d!402100))

(declare-fun d!402102 () Bool)

(declare-fun lt!470078 () Bool)

(declare-fun isEmpty!8751 (List!14432) Bool)

(assert (=> d!402102 (= lt!470078 (isEmpty!8751 (list!5609 objs!24)))))

(declare-fun isEmpty!8752 (Conc!4749) Bool)

(assert (=> d!402102 (= lt!470078 (isEmpty!8752 (c!231484 objs!24)))))

(assert (=> d!402102 (= (isEmpty!8746 objs!24) lt!470078)))

(declare-fun bs!338673 () Bool)

(assert (= bs!338673 d!402102))

(assert (=> bs!338673 m!1585967))

(assert (=> bs!338673 m!1585967))

(declare-fun m!1586085 () Bool)

(assert (=> bs!338673 m!1586085))

(declare-fun m!1586087 () Bool)

(assert (=> bs!338673 m!1586087))

(assert (=> b!1408193 d!402102))

(declare-fun d!402104 () Bool)

(assert (=> d!402104 (= (usesJsonRules!0 sep!3) (= (rules!10954 sep!3) (rules!109 JsonLexer!371)))))

(declare-fun bs!338674 () Bool)

(assert (= bs!338674 d!402104))

(assert (=> bs!338674 m!1586077))

(assert (=> b!1408191 d!402104))

(declare-fun d!402106 () Bool)

(declare-fun c!231498 () Bool)

(assert (=> d!402106 (= c!231498 ((_ is Node!4749) (c!231484 objs!24)))))

(declare-fun e!899013 () Bool)

(assert (=> d!402106 (= (inv!18679 (c!231484 objs!24)) e!899013)))

(declare-fun b!1408298 () Bool)

(declare-fun inv!18693 (Conc!4749) Bool)

(assert (=> b!1408298 (= e!899013 (inv!18693 (c!231484 objs!24)))))

(declare-fun b!1408299 () Bool)

(declare-fun e!899014 () Bool)

(assert (=> b!1408299 (= e!899013 e!899014)))

(declare-fun res!637751 () Bool)

(assert (=> b!1408299 (= res!637751 (not ((_ is Leaf!7191) (c!231484 objs!24))))))

(assert (=> b!1408299 (=> res!637751 e!899014)))

(declare-fun b!1408300 () Bool)

(declare-fun inv!18694 (Conc!4749) Bool)

(assert (=> b!1408300 (= e!899014 (inv!18694 (c!231484 objs!24)))))

(assert (= (and d!402106 c!231498) b!1408298))

(assert (= (and d!402106 (not c!231498)) b!1408299))

(assert (= (and b!1408299 (not res!637751)) b!1408300))

(declare-fun m!1586089 () Bool)

(assert (=> b!1408298 m!1586089))

(declare-fun m!1586091 () Bool)

(assert (=> b!1408300 m!1586091))

(assert (=> b!1408186 d!402106))

(declare-fun e!899019 () Bool)

(declare-fun b!1408309 () Bool)

(declare-fun tp!399928 () Bool)

(declare-fun tp!399927 () Bool)

(assert (=> b!1408309 (= e!899019 (and (inv!18680 (left!12263 (c!231483 (tokens!1708 sep!3)))) tp!399927 (inv!18680 (right!12593 (c!231483 (tokens!1708 sep!3)))) tp!399928))))

(declare-fun b!1408311 () Bool)

(declare-fun e!899020 () Bool)

(declare-fun tp!399926 () Bool)

(assert (=> b!1408311 (= e!899020 tp!399926)))

(declare-fun b!1408310 () Bool)

(declare-fun inv!18695 (IArray!9501) Bool)

(assert (=> b!1408310 (= e!899019 (and (inv!18695 (xs!7475 (c!231483 (tokens!1708 sep!3)))) e!899020))))

(assert (=> b!1408195 (= tp!399883 (and (inv!18680 (c!231483 (tokens!1708 sep!3))) e!899019))))

(assert (= (and b!1408195 ((_ is Node!4748) (c!231483 (tokens!1708 sep!3)))) b!1408309))

(assert (= b!1408310 b!1408311))

(assert (= (and b!1408195 ((_ is Leaf!7190) (c!231483 (tokens!1708 sep!3)))) b!1408310))

(declare-fun m!1586093 () Bool)

(assert (=> b!1408309 m!1586093))

(declare-fun m!1586095 () Bool)

(assert (=> b!1408309 m!1586095))

(declare-fun m!1586097 () Bool)

(assert (=> b!1408310 m!1586097))

(assert (=> b!1408195 m!1585941))

(declare-fun b!1408322 () Bool)

(declare-fun b_free!34415 () Bool)

(declare-fun b_next!35119 () Bool)

(assert (=> b!1408322 (= b_free!34415 (not b_next!35119))))

(declare-fun tp!399937 () Bool)

(declare-fun b_and!94287 () Bool)

(assert (=> b!1408322 (= tp!399937 b_and!94287)))

(declare-fun b_free!34417 () Bool)

(declare-fun b_next!35121 () Bool)

(assert (=> b!1408322 (= b_free!34417 (not b_next!35121))))

(declare-fun tp!399935 () Bool)

(declare-fun b_and!94289 () Bool)

(assert (=> b!1408322 (= tp!399935 b_and!94289)))

(declare-fun e!899032 () Bool)

(assert (=> b!1408322 (= e!899032 (and tp!399937 tp!399935))))

(declare-fun b!1408321 () Bool)

(declare-fun e!899029 () Bool)

(declare-fun inv!18673 (String!17141) Bool)

(declare-fun inv!18696 (TokenValueInjection!4822) Bool)

(assert (=> b!1408321 (= e!899029 (and (inv!18673 (tag!2753 (h!19766 (rules!10954 sep!3)))) (inv!18696 (transformation!2491 (h!19766 (rules!10954 sep!3)))) e!899032))))

(declare-fun b!1408320 () Bool)

(declare-fun e!899030 () Bool)

(declare-fun tp!399936 () Bool)

(assert (=> b!1408320 (= e!899030 (and e!899029 tp!399936))))

(assert (=> b!1408194 (= tp!399886 e!899030)))

(assert (= b!1408321 b!1408322))

(assert (= b!1408320 b!1408321))

(assert (= (and b!1408194 ((_ is Cons!14365) (rules!10954 sep!3))) b!1408320))

(declare-fun m!1586099 () Bool)

(assert (=> b!1408321 m!1586099))

(declare-fun m!1586101 () Bool)

(assert (=> b!1408321 m!1586101))

(declare-fun b!1408325 () Bool)

(declare-fun b_free!34419 () Bool)

(declare-fun b_next!35123 () Bool)

(assert (=> b!1408325 (= b_free!34419 (not b_next!35123))))

(declare-fun tp!399940 () Bool)

(declare-fun b_and!94291 () Bool)

(assert (=> b!1408325 (= tp!399940 b_and!94291)))

(declare-fun b_free!34421 () Bool)

(declare-fun b_next!35125 () Bool)

(assert (=> b!1408325 (= b_free!34421 (not b_next!35125))))

(declare-fun tp!399938 () Bool)

(declare-fun b_and!94293 () Bool)

(assert (=> b!1408325 (= tp!399938 b_and!94293)))

(declare-fun e!899036 () Bool)

(assert (=> b!1408325 (= e!899036 (and tp!399940 tp!399938))))

(declare-fun b!1408324 () Bool)

(declare-fun e!899033 () Bool)

(assert (=> b!1408324 (= e!899033 (and (inv!18673 (tag!2753 (h!19766 (rules!10954 acc!229)))) (inv!18696 (transformation!2491 (h!19766 (rules!10954 acc!229)))) e!899036))))

(declare-fun b!1408323 () Bool)

(declare-fun e!899034 () Bool)

(declare-fun tp!399939 () Bool)

(assert (=> b!1408323 (= e!899034 (and e!899033 tp!399939))))

(assert (=> b!1408192 (= tp!399884 e!899034)))

(assert (= b!1408324 b!1408325))

(assert (= b!1408323 b!1408324))

(assert (= (and b!1408192 ((_ is Cons!14365) (rules!10954 acc!229))) b!1408323))

(declare-fun m!1586103 () Bool)

(assert (=> b!1408324 m!1586103))

(declare-fun m!1586105 () Bool)

(assert (=> b!1408324 m!1586105))

(declare-fun tp!399942 () Bool)

(declare-fun e!899037 () Bool)

(declare-fun b!1408326 () Bool)

(declare-fun tp!399943 () Bool)

(assert (=> b!1408326 (= e!899037 (and (inv!18680 (left!12263 (c!231483 (tokens!1708 acc!229)))) tp!399942 (inv!18680 (right!12593 (c!231483 (tokens!1708 acc!229)))) tp!399943))))

(declare-fun b!1408328 () Bool)

(declare-fun e!899038 () Bool)

(declare-fun tp!399941 () Bool)

(assert (=> b!1408328 (= e!899038 tp!399941)))

(declare-fun b!1408327 () Bool)

(assert (=> b!1408327 (= e!899037 (and (inv!18695 (xs!7475 (c!231483 (tokens!1708 acc!229)))) e!899038))))

(assert (=> b!1408187 (= tp!399885 (and (inv!18680 (c!231483 (tokens!1708 acc!229))) e!899037))))

(assert (= (and b!1408187 ((_ is Node!4748) (c!231483 (tokens!1708 acc!229)))) b!1408326))

(assert (= b!1408327 b!1408328))

(assert (= (and b!1408187 ((_ is Leaf!7190) (c!231483 (tokens!1708 acc!229)))) b!1408327))

(declare-fun m!1586107 () Bool)

(assert (=> b!1408326 m!1586107))

(declare-fun m!1586109 () Bool)

(assert (=> b!1408326 m!1586109))

(declare-fun m!1586111 () Bool)

(assert (=> b!1408327 m!1586111))

(assert (=> b!1408187 m!1585939))

(declare-fun b!1408337 () Bool)

(declare-fun e!899043 () Bool)

(declare-fun tp!399950 () Bool)

(declare-fun tp!399952 () Bool)

(assert (=> b!1408337 (= e!899043 (and (inv!18679 (left!12264 (c!231484 objs!24))) tp!399950 (inv!18679 (right!12594 (c!231484 objs!24))) tp!399952))))

(declare-fun b!1408339 () Bool)

(declare-fun e!899044 () Bool)

(declare-fun tp!399951 () Bool)

(assert (=> b!1408339 (= e!899044 tp!399951)))

(declare-fun b!1408338 () Bool)

(declare-fun inv!18697 (IArray!9503) Bool)

(assert (=> b!1408338 (= e!899043 (and (inv!18697 (xs!7476 (c!231484 objs!24))) e!899044))))

(assert (=> b!1408186 (= tp!399882 (and (inv!18679 (c!231484 objs!24)) e!899043))))

(assert (= (and b!1408186 ((_ is Node!4749) (c!231484 objs!24))) b!1408337))

(assert (= b!1408338 b!1408339))

(assert (= (and b!1408186 ((_ is Leaf!7191) (c!231484 objs!24))) b!1408338))

(declare-fun m!1586113 () Bool)

(assert (=> b!1408337 m!1586113))

(declare-fun m!1586115 () Bool)

(assert (=> b!1408337 m!1586115))

(declare-fun m!1586117 () Bool)

(assert (=> b!1408338 m!1586117))

(assert (=> b!1408186 m!1585933))

(check-sat (not b!1408328) (not b_next!35125) (not d!402062) (not b!1408321) (not b_next!35119) b_and!94291 (not d!402104) (not d!402060) (not b!1408241) (not b!1408211) (not b!1408187) (not b!1408300) (not b!1408323) (not d!402064) (not b!1408326) (not b!1408238) (not b!1408186) (not b!1408195) (not d!402102) (not b!1408327) (not b!1408309) (not b!1408291) (not b!1408298) b_and!94293 (not d!402092) (not b!1408338) (not d!402066) (not b!1408310) b_and!94287 (not d!402068) (not b!1408320) (not b!1408240) (not d!402058) (not b_next!35121) (not b!1408289) (not d!402098) (not b_next!35123) (not b!1408337) b_and!94289 (not b!1408239) (not d!402090) (not b!1408242) (not b!1408339) (not b!1408324) (not b!1408213) (not b!1408243) (not b!1408311))
(check-sat (not b_next!35125) (not b_next!35119) b_and!94293 b_and!94287 (not b_next!35121) (not b_next!35123) b_and!94291 b_and!94289)
(get-model)

(declare-fun d!402112 () Bool)

(assert (=> d!402112 (= (inv!18697 (xs!7476 (c!231484 objs!24))) (<= (size!11815 (innerList!4809 (xs!7476 (c!231484 objs!24)))) 2147483647))))

(declare-fun bs!338676 () Bool)

(assert (= bs!338676 d!402112))

(declare-fun m!1586147 () Bool)

(assert (=> bs!338676 m!1586147))

(assert (=> b!1408338 d!402112))

(declare-fun d!402114 () Bool)

(assert (=> d!402114 (= (inv!18673 (tag!2753 (h!19766 (rules!10954 sep!3)))) (= (mod (str.len (value!80625 (tag!2753 (h!19766 (rules!10954 sep!3))))) 2) 0))))

(assert (=> b!1408321 d!402114))

(declare-fun d!402116 () Bool)

(declare-fun res!637758 () Bool)

(declare-fun e!899047 () Bool)

(assert (=> d!402116 (=> (not res!637758) (not e!899047))))

(declare-fun semiInverseModEq!968 (Int Int) Bool)

(assert (=> d!402116 (= res!637758 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))))))

(assert (=> d!402116 (= (inv!18696 (transformation!2491 (h!19766 (rules!10954 sep!3)))) e!899047)))

(declare-fun b!1408342 () Bool)

(declare-fun equivClasses!927 (Int Int) Bool)

(assert (=> b!1408342 (= e!899047 (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))))))

(assert (= (and d!402116 res!637758) b!1408342))

(declare-fun m!1586149 () Bool)

(assert (=> d!402116 m!1586149))

(declare-fun m!1586151 () Bool)

(assert (=> b!1408342 m!1586151))

(assert (=> b!1408321 d!402116))

(declare-fun d!402118 () Bool)

(declare-fun c!231499 () Bool)

(assert (=> d!402118 (= c!231499 ((_ is Node!4749) (left!12264 (c!231484 objs!24))))))

(declare-fun e!899048 () Bool)

(assert (=> d!402118 (= (inv!18679 (left!12264 (c!231484 objs!24))) e!899048)))

(declare-fun b!1408343 () Bool)

(assert (=> b!1408343 (= e!899048 (inv!18693 (left!12264 (c!231484 objs!24))))))

(declare-fun b!1408344 () Bool)

(declare-fun e!899049 () Bool)

(assert (=> b!1408344 (= e!899048 e!899049)))

(declare-fun res!637759 () Bool)

(assert (=> b!1408344 (= res!637759 (not ((_ is Leaf!7191) (left!12264 (c!231484 objs!24)))))))

(assert (=> b!1408344 (=> res!637759 e!899049)))

(declare-fun b!1408345 () Bool)

(assert (=> b!1408345 (= e!899049 (inv!18694 (left!12264 (c!231484 objs!24))))))

(assert (= (and d!402118 c!231499) b!1408343))

(assert (= (and d!402118 (not c!231499)) b!1408344))

(assert (= (and b!1408344 (not res!637759)) b!1408345))

(declare-fun m!1586153 () Bool)

(assert (=> b!1408343 m!1586153))

(declare-fun m!1586155 () Bool)

(assert (=> b!1408345 m!1586155))

(assert (=> b!1408337 d!402118))

(declare-fun d!402120 () Bool)

(declare-fun c!231500 () Bool)

(assert (=> d!402120 (= c!231500 ((_ is Node!4749) (right!12594 (c!231484 objs!24))))))

(declare-fun e!899050 () Bool)

(assert (=> d!402120 (= (inv!18679 (right!12594 (c!231484 objs!24))) e!899050)))

(declare-fun b!1408346 () Bool)

(assert (=> b!1408346 (= e!899050 (inv!18693 (right!12594 (c!231484 objs!24))))))

(declare-fun b!1408347 () Bool)

(declare-fun e!899051 () Bool)

(assert (=> b!1408347 (= e!899050 e!899051)))

(declare-fun res!637760 () Bool)

(assert (=> b!1408347 (= res!637760 (not ((_ is Leaf!7191) (right!12594 (c!231484 objs!24)))))))

(assert (=> b!1408347 (=> res!637760 e!899051)))

(declare-fun b!1408348 () Bool)

(assert (=> b!1408348 (= e!899051 (inv!18694 (right!12594 (c!231484 objs!24))))))

(assert (= (and d!402120 c!231500) b!1408346))

(assert (= (and d!402120 (not c!231500)) b!1408347))

(assert (= (and b!1408347 (not res!637760)) b!1408348))

(declare-fun m!1586157 () Bool)

(assert (=> b!1408346 m!1586157))

(declare-fun m!1586159 () Bool)

(assert (=> b!1408348 m!1586159))

(assert (=> b!1408337 d!402120))

(declare-fun b!1408378 () Bool)

(declare-fun e!899075 () Bool)

(assert (=> b!1408378 (= e!899075 true)))

(declare-fun b!1408377 () Bool)

(declare-fun e!899074 () Bool)

(assert (=> b!1408377 (= e!899074 e!899075)))

(declare-fun b!1408376 () Bool)

(declare-fun e!899073 () Bool)

(assert (=> b!1408376 (= e!899073 e!899074)))

(declare-fun d!402122 () Bool)

(assert (=> d!402122 e!899073))

(assert (= b!1408377 b!1408378))

(assert (= b!1408376 b!1408377))

(assert (= (and d!402122 ((_ is Cons!14365) (rules!10954 sep!3))) b!1408376))

(declare-fun order!8771 () Int)

(declare-fun order!8769 () Int)

(declare-fun lambda!62291 () Int)

(declare-fun dynLambda!6653 (Int Int) Int)

(declare-fun dynLambda!6654 (Int Int) Int)

(assert (=> b!1408378 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6654 order!8771 lambda!62291))))

(declare-fun order!8773 () Int)

(declare-fun dynLambda!6655 (Int Int) Int)

(assert (=> b!1408378 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6654 order!8771 lambda!62291))))

(assert (=> d!402122 true))

(declare-fun e!899066 () Bool)

(assert (=> d!402122 e!899066))

(declare-fun res!637766 () Bool)

(assert (=> d!402122 (=> (not res!637766) (not e!899066))))

(declare-fun lt!470084 () Bool)

(declare-fun forall!3487 (List!14430 Int) Bool)

(declare-fun list!5613 (BalanceConc!9436) List!14430)

(assert (=> d!402122 (= res!637766 (= lt!470084 (forall!3487 (list!5613 (tokens!1708 sep!3)) lambda!62291)))))

(declare-fun forall!3488 (BalanceConc!9436 Int) Bool)

(assert (=> d!402122 (= lt!470084 (forall!3488 (tokens!1708 sep!3) lambda!62291))))

(assert (=> d!402122 (not (isEmpty!8750 (rules!10954 sep!3)))))

(assert (=> d!402122 (= (rulesProduceEachTokenIndividually!780 Lexer!2181 (rules!10954 sep!3) (tokens!1708 sep!3)) lt!470084)))

(declare-fun b!1408367 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!667 (LexerInterface!2183 List!14431 List!14430) Bool)

(assert (=> b!1408367 (= e!899066 (= lt!470084 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 sep!3) (list!5613 (tokens!1708 sep!3)))))))

(assert (= (and d!402122 res!637766) b!1408367))

(declare-fun m!1586169 () Bool)

(assert (=> d!402122 m!1586169))

(assert (=> d!402122 m!1586169))

(declare-fun m!1586171 () Bool)

(assert (=> d!402122 m!1586171))

(declare-fun m!1586173 () Bool)

(assert (=> d!402122 m!1586173))

(assert (=> d!402122 m!1586023))

(assert (=> b!1408367 m!1586169))

(assert (=> b!1408367 m!1586169))

(declare-fun m!1586175 () Bool)

(assert (=> b!1408367 m!1586175))

(assert (=> b!1408242 d!402122))

(declare-fun d!402126 () Bool)

(assert (=> d!402126 (= (inv!18673 (tag!2753 (h!19766 (rules!10954 acc!229)))) (= (mod (str.len (value!80625 (tag!2753 (h!19766 (rules!10954 acc!229))))) 2) 0))))

(assert (=> b!1408324 d!402126))

(declare-fun d!402128 () Bool)

(declare-fun res!637767 () Bool)

(declare-fun e!899076 () Bool)

(assert (=> d!402128 (=> (not res!637767) (not e!899076))))

(assert (=> d!402128 (= res!637767 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))))))

(assert (=> d!402128 (= (inv!18696 (transformation!2491 (h!19766 (rules!10954 acc!229)))) e!899076)))

(declare-fun b!1408381 () Bool)

(assert (=> b!1408381 (= e!899076 (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))))))

(assert (= (and d!402128 res!637767) b!1408381))

(declare-fun m!1586177 () Bool)

(assert (=> d!402128 m!1586177))

(declare-fun m!1586179 () Bool)

(assert (=> b!1408381 m!1586179))

(assert (=> b!1408324 d!402128))

(declare-fun d!402130 () Bool)

(declare-fun res!637770 () Bool)

(declare-fun e!899079 () Bool)

(assert (=> d!402130 (=> (not res!637770) (not e!899079))))

(declare-fun rulesValid!937 (LexerInterface!2183 List!14431) Bool)

(assert (=> d!402130 (= res!637770 (rulesValid!937 Lexer!2181 (rules!10954 sep!3)))))

(assert (=> d!402130 (= (rulesInvariant!2053 Lexer!2181 (rules!10954 sep!3)) e!899079)))

(declare-fun b!1408384 () Bool)

(declare-datatypes ((List!14434 0))(
  ( (Nil!14368) (Cons!14368 (h!19769 String!17141) (t!123219 List!14434)) )
))
(declare-fun noDuplicateTag!937 (LexerInterface!2183 List!14431 List!14434) Bool)

(assert (=> b!1408384 (= e!899079 (noDuplicateTag!937 Lexer!2181 (rules!10954 sep!3) Nil!14368))))

(assert (= (and d!402130 res!637770) b!1408384))

(declare-fun m!1586181 () Bool)

(assert (=> d!402130 m!1586181))

(declare-fun m!1586183 () Bool)

(assert (=> b!1408384 m!1586183))

(assert (=> b!1408241 d!402130))

(declare-fun d!402132 () Bool)

(declare-fun res!637775 () Bool)

(declare-fun e!899082 () Bool)

(assert (=> d!402132 (=> (not res!637775) (not e!899082))))

(declare-fun list!5615 (IArray!9503) List!14432)

(assert (=> d!402132 (= res!637775 (<= (size!11815 (list!5615 (xs!7476 (c!231484 objs!24)))) 512))))

(assert (=> d!402132 (= (inv!18694 (c!231484 objs!24)) e!899082)))

(declare-fun b!1408389 () Bool)

(declare-fun res!637776 () Bool)

(assert (=> b!1408389 (=> (not res!637776) (not e!899082))))

(assert (=> b!1408389 (= res!637776 (= (csize!9729 (c!231484 objs!24)) (size!11815 (list!5615 (xs!7476 (c!231484 objs!24))))))))

(declare-fun b!1408390 () Bool)

(assert (=> b!1408390 (= e!899082 (and (> (csize!9729 (c!231484 objs!24)) 0) (<= (csize!9729 (c!231484 objs!24)) 512)))))

(assert (= (and d!402132 res!637775) b!1408389))

(assert (= (and b!1408389 res!637776) b!1408390))

(declare-fun m!1586185 () Bool)

(assert (=> d!402132 m!1586185))

(assert (=> d!402132 m!1586185))

(declare-fun m!1586187 () Bool)

(assert (=> d!402132 m!1586187))

(assert (=> b!1408389 m!1586185))

(assert (=> b!1408389 m!1586185))

(assert (=> b!1408389 m!1586187))

(assert (=> b!1408300 d!402132))

(assert (=> b!1408195 d!402056))

(declare-fun d!402134 () Bool)

(assert (=> d!402134 (= (isEmpty!8751 (list!5609 objs!24)) ((_ is Nil!14366) (list!5609 objs!24)))))

(assert (=> d!402102 d!402134))

(declare-fun d!402136 () Bool)

(declare-fun list!5616 (Conc!4749) List!14432)

(assert (=> d!402136 (= (list!5609 objs!24) (list!5616 (c!231484 objs!24)))))

(declare-fun bs!338677 () Bool)

(assert (= bs!338677 d!402136))

(declare-fun m!1586189 () Bool)

(assert (=> bs!338677 m!1586189))

(assert (=> d!402102 d!402136))

(declare-fun d!402138 () Bool)

(declare-fun lt!470087 () Bool)

(assert (=> d!402138 (= lt!470087 (isEmpty!8751 (list!5616 (c!231484 objs!24))))))

(assert (=> d!402138 (= lt!470087 (= (size!11816 (c!231484 objs!24)) 0))))

(assert (=> d!402138 (= (isEmpty!8752 (c!231484 objs!24)) lt!470087)))

(declare-fun bs!338678 () Bool)

(assert (= bs!338678 d!402138))

(assert (=> bs!338678 m!1586189))

(assert (=> bs!338678 m!1586189))

(declare-fun m!1586191 () Bool)

(assert (=> bs!338678 m!1586191))

(assert (=> bs!338678 m!1585971))

(assert (=> d!402102 d!402138))

(declare-fun d!402140 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!370) Rule!4782)

(declare-fun integerLiteralRule!0 (JsonLexer!370) Rule!4782)

(declare-fun floatLiteralRule!0 (JsonLexer!370) Rule!4782)

(declare-fun trueRule!0 (JsonLexer!370) Rule!4782)

(declare-fun falseRule!0 (JsonLexer!370) Rule!4782)

(declare-fun nullRule!0 (JsonLexer!370) Rule!4782)

(declare-fun jsonstringRule!0 (JsonLexer!370) Rule!4782)

(declare-fun lBraceRule!0 (JsonLexer!370) Rule!4782)

(declare-fun rBraceRule!0 (JsonLexer!370) Rule!4782)

(declare-fun lBracketRule!0 (JsonLexer!370) Rule!4782)

(declare-fun rBracketRule!0 (JsonLexer!370) Rule!4782)

(declare-fun colonRule!0 (JsonLexer!370) Rule!4782)

(declare-fun commaRule!0 (JsonLexer!370) Rule!4782)

(declare-fun eofRule!0 (JsonLexer!370) Rule!4782)

(assert (=> d!402140 (= (rules!109 JsonLexer!371) (Cons!14365 (whitespaceRule!0 JsonLexer!371) (Cons!14365 (integerLiteralRule!0 JsonLexer!371) (Cons!14365 (floatLiteralRule!0 JsonLexer!371) (Cons!14365 (trueRule!0 JsonLexer!371) (Cons!14365 (falseRule!0 JsonLexer!371) (Cons!14365 (nullRule!0 JsonLexer!371) (Cons!14365 (jsonstringRule!0 JsonLexer!371) (Cons!14365 (lBraceRule!0 JsonLexer!371) (Cons!14365 (rBraceRule!0 JsonLexer!371) (Cons!14365 (lBracketRule!0 JsonLexer!371) (Cons!14365 (rBracketRule!0 JsonLexer!371) (Cons!14365 (colonRule!0 JsonLexer!371) (Cons!14365 (commaRule!0 JsonLexer!371) (Cons!14365 (eofRule!0 JsonLexer!371) Nil!14365)))))))))))))))))

(declare-fun bs!338679 () Bool)

(assert (= bs!338679 d!402140))

(declare-fun m!1586193 () Bool)

(assert (=> bs!338679 m!1586193))

(declare-fun m!1586195 () Bool)

(assert (=> bs!338679 m!1586195))

(declare-fun m!1586197 () Bool)

(assert (=> bs!338679 m!1586197))

(declare-fun m!1586199 () Bool)

(assert (=> bs!338679 m!1586199))

(declare-fun m!1586201 () Bool)

(assert (=> bs!338679 m!1586201))

(declare-fun m!1586203 () Bool)

(assert (=> bs!338679 m!1586203))

(declare-fun m!1586205 () Bool)

(assert (=> bs!338679 m!1586205))

(declare-fun m!1586207 () Bool)

(assert (=> bs!338679 m!1586207))

(declare-fun m!1586209 () Bool)

(assert (=> bs!338679 m!1586209))

(declare-fun m!1586211 () Bool)

(assert (=> bs!338679 m!1586211))

(declare-fun m!1586213 () Bool)

(assert (=> bs!338679 m!1586213))

(declare-fun m!1586215 () Bool)

(assert (=> bs!338679 m!1586215))

(declare-fun m!1586217 () Bool)

(assert (=> bs!338679 m!1586217))

(declare-fun m!1586219 () Bool)

(assert (=> bs!338679 m!1586219))

(assert (=> d!402092 d!402140))

(declare-fun d!402142 () Bool)

(declare-fun c!231501 () Bool)

(assert (=> d!402142 (= c!231501 ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun e!899083 () Bool)

(assert (=> d!402142 (= (inv!18680 (left!12263 (c!231483 (tokens!1708 sep!3)))) e!899083)))

(declare-fun b!1408391 () Bool)

(assert (=> b!1408391 (= e!899083 (inv!18691 (left!12263 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun b!1408392 () Bool)

(declare-fun e!899084 () Bool)

(assert (=> b!1408392 (= e!899083 e!899084)))

(declare-fun res!637777 () Bool)

(assert (=> b!1408392 (= res!637777 (not ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> b!1408392 (=> res!637777 e!899084)))

(declare-fun b!1408393 () Bool)

(assert (=> b!1408393 (= e!899084 (inv!18692 (left!12263 (c!231483 (tokens!1708 sep!3)))))))

(assert (= (and d!402142 c!231501) b!1408391))

(assert (= (and d!402142 (not c!231501)) b!1408392))

(assert (= (and b!1408392 (not res!637777)) b!1408393))

(declare-fun m!1586221 () Bool)

(assert (=> b!1408391 m!1586221))

(declare-fun m!1586223 () Bool)

(assert (=> b!1408393 m!1586223))

(assert (=> b!1408309 d!402142))

(declare-fun d!402144 () Bool)

(declare-fun c!231502 () Bool)

(assert (=> d!402144 (= c!231502 ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun e!899085 () Bool)

(assert (=> d!402144 (= (inv!18680 (right!12593 (c!231483 (tokens!1708 sep!3)))) e!899085)))

(declare-fun b!1408394 () Bool)

(assert (=> b!1408394 (= e!899085 (inv!18691 (right!12593 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun b!1408395 () Bool)

(declare-fun e!899086 () Bool)

(assert (=> b!1408395 (= e!899085 e!899086)))

(declare-fun res!637778 () Bool)

(assert (=> b!1408395 (= res!637778 (not ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> b!1408395 (=> res!637778 e!899086)))

(declare-fun b!1408396 () Bool)

(assert (=> b!1408396 (= e!899086 (inv!18692 (right!12593 (c!231483 (tokens!1708 sep!3)))))))

(assert (= (and d!402144 c!231502) b!1408394))

(assert (= (and d!402144 (not c!231502)) b!1408395))

(assert (= (and b!1408395 (not res!637778)) b!1408396))

(declare-fun m!1586225 () Bool)

(assert (=> b!1408394 m!1586225))

(declare-fun m!1586227 () Bool)

(assert (=> b!1408396 m!1586227))

(assert (=> b!1408309 d!402144))

(declare-fun d!402146 () Bool)

(assert (=> d!402146 (= (isEmpty!8750 (rules!10954 sep!3)) ((_ is Nil!14365) (rules!10954 sep!3)))))

(assert (=> d!402090 d!402146))

(declare-fun d!402148 () Bool)

(declare-fun size!11819 (List!14430) Int)

(assert (=> d!402148 (= (inv!18695 (xs!7475 (c!231483 (tokens!1708 sep!3)))) (<= (size!11819 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))) 2147483647))))

(declare-fun bs!338680 () Bool)

(assert (= bs!338680 d!402148))

(declare-fun m!1586229 () Bool)

(assert (=> bs!338680 m!1586229))

(assert (=> b!1408310 d!402148))

(declare-fun d!402150 () Bool)

(assert (=> d!402150 (= (isEmpty!8750 (rules!10954 acc!229)) ((_ is Nil!14365) (rules!10954 acc!229)))))

(assert (=> d!402068 d!402150))

(declare-fun b!1408409 () Bool)

(declare-fun e!899091 () Bool)

(declare-fun e!899092 () Bool)

(assert (=> b!1408409 (= e!899091 e!899092)))

(declare-fun res!637794 () Bool)

(assert (=> b!1408409 (=> (not res!637794) (not e!899092))))

(declare-fun height!686 (Conc!4748) Int)

(assert (=> b!1408409 (= res!637794 (<= (- 1) (- (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun b!1408410 () Bool)

(declare-fun res!637795 () Bool)

(assert (=> b!1408410 (=> (not res!637795) (not e!899092))))

(declare-fun isEmpty!8754 (Conc!4748) Bool)

(assert (=> b!1408410 (= res!637795 (not (isEmpty!8754 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1408411 () Bool)

(declare-fun res!637796 () Bool)

(assert (=> b!1408411 (=> (not res!637796) (not e!899092))))

(assert (=> b!1408411 (= res!637796 (isBalanced!1399 (left!12263 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun b!1408412 () Bool)

(assert (=> b!1408412 (= e!899092 (not (isEmpty!8754 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun d!402152 () Bool)

(declare-fun res!637793 () Bool)

(assert (=> d!402152 (=> res!637793 e!899091)))

(assert (=> d!402152 (= res!637793 (not ((_ is Node!4748) (c!231483 (tokens!1708 acc!229)))))))

(assert (=> d!402152 (= (isBalanced!1399 (c!231483 (tokens!1708 acc!229))) e!899091)))

(declare-fun b!1408413 () Bool)

(declare-fun res!637791 () Bool)

(assert (=> b!1408413 (=> (not res!637791) (not e!899092))))

(assert (=> b!1408413 (= res!637791 (isBalanced!1399 (right!12593 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun b!1408414 () Bool)

(declare-fun res!637792 () Bool)

(assert (=> b!1408414 (=> (not res!637792) (not e!899092))))

(assert (=> b!1408414 (= res!637792 (<= (- (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229))))) 1))))

(assert (= (and d!402152 (not res!637793)) b!1408409))

(assert (= (and b!1408409 res!637794) b!1408414))

(assert (= (and b!1408414 res!637792) b!1408411))

(assert (= (and b!1408411 res!637796) b!1408413))

(assert (= (and b!1408413 res!637791) b!1408410))

(assert (= (and b!1408410 res!637795) b!1408412))

(declare-fun m!1586231 () Bool)

(assert (=> b!1408412 m!1586231))

(declare-fun m!1586233 () Bool)

(assert (=> b!1408414 m!1586233))

(declare-fun m!1586235 () Bool)

(assert (=> b!1408414 m!1586235))

(declare-fun m!1586237 () Bool)

(assert (=> b!1408411 m!1586237))

(assert (=> b!1408409 m!1586233))

(assert (=> b!1408409 m!1586235))

(declare-fun m!1586239 () Bool)

(assert (=> b!1408413 m!1586239))

(declare-fun m!1586241 () Bool)

(assert (=> b!1408410 m!1586241))

(assert (=> d!402098 d!402152))

(declare-fun d!402154 () Bool)

(assert (=> d!402154 (= (head!2632 (list!5609 objs!24)) (h!19767 (list!5609 objs!24)))))

(assert (=> d!402060 d!402154))

(assert (=> d!402060 d!402136))

(declare-fun d!402156 () Bool)

(declare-fun lt!470090 () PrintableTokens!764)

(assert (=> d!402156 (= lt!470090 (head!2632 (list!5616 (c!231484 objs!24))))))

(declare-fun e!899095 () PrintableTokens!764)

(assert (=> d!402156 (= lt!470090 e!899095)))

(declare-fun c!231505 () Bool)

(assert (=> d!402156 (= c!231505 ((_ is Leaf!7191) (c!231484 objs!24)))))

(assert (=> d!402156 (isBalanced!1400 (c!231484 objs!24))))

(assert (=> d!402156 (= (head!2633 (c!231484 objs!24)) lt!470090)))

(declare-fun b!1408419 () Bool)

(declare-fun apply!3679 (IArray!9503 Int) PrintableTokens!764)

(assert (=> b!1408419 (= e!899095 (apply!3679 (xs!7476 (c!231484 objs!24)) 0))))

(declare-fun b!1408420 () Bool)

(assert (=> b!1408420 (= e!899095 (head!2633 (left!12264 (c!231484 objs!24))))))

(assert (= (and d!402156 c!231505) b!1408419))

(assert (= (and d!402156 (not c!231505)) b!1408420))

(assert (=> d!402156 m!1586189))

(assert (=> d!402156 m!1586189))

(declare-fun m!1586247 () Bool)

(assert (=> d!402156 m!1586247))

(assert (=> d!402156 m!1585983))

(declare-fun m!1586249 () Bool)

(assert (=> b!1408419 m!1586249))

(declare-fun m!1586251 () Bool)

(assert (=> b!1408420 m!1586251))

(assert (=> d!402060 d!402156))

(assert (=> d!402060 d!402102))

(declare-fun d!402164 () Bool)

(declare-fun res!637803 () Bool)

(declare-fun e!899102 () Bool)

(assert (=> d!402164 (=> (not res!637803) (not e!899102))))

(declare-fun list!5617 (IArray!9501) List!14430)

(assert (=> d!402164 (= res!637803 (<= (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229))))) 512))))

(assert (=> d!402164 (= (inv!18692 (c!231483 (tokens!1708 acc!229))) e!899102)))

(declare-fun b!1408431 () Bool)

(declare-fun res!637804 () Bool)

(assert (=> b!1408431 (=> (not res!637804) (not e!899102))))

(assert (=> b!1408431 (= res!637804 (= (csize!9727 (c!231483 (tokens!1708 acc!229))) (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun b!1408432 () Bool)

(assert (=> b!1408432 (= e!899102 (and (> (csize!9727 (c!231483 (tokens!1708 acc!229))) 0) (<= (csize!9727 (c!231483 (tokens!1708 acc!229))) 512)))))

(assert (= (and d!402164 res!637803) b!1408431))

(assert (= (and b!1408431 res!637804) b!1408432))

(declare-fun m!1586265 () Bool)

(assert (=> d!402164 m!1586265))

(assert (=> d!402164 m!1586265))

(declare-fun m!1586267 () Bool)

(assert (=> d!402164 m!1586267))

(assert (=> b!1408431 m!1586265))

(assert (=> b!1408431 m!1586265))

(assert (=> b!1408431 m!1586267))

(assert (=> b!1408291 d!402164))

(declare-fun d!402174 () Bool)

(declare-fun res!637813 () Bool)

(declare-fun e!899109 () Bool)

(assert (=> d!402174 (=> res!637813 e!899109)))

(assert (=> d!402174 (= res!637813 ((_ is Nil!14366) (list!5609 objs!24)))))

(assert (=> d!402174 (= (forall!3482 (list!5609 objs!24) lambda!62281) e!899109)))

(declare-fun b!1408439 () Bool)

(declare-fun e!899110 () Bool)

(assert (=> b!1408439 (= e!899109 e!899110)))

(declare-fun res!637814 () Bool)

(assert (=> b!1408439 (=> (not res!637814) (not e!899110))))

(declare-fun dynLambda!6656 (Int PrintableTokens!764) Bool)

(assert (=> b!1408439 (= res!637814 (dynLambda!6656 lambda!62281 (h!19767 (list!5609 objs!24))))))

(declare-fun b!1408442 () Bool)

(assert (=> b!1408442 (= e!899110 (forall!3482 (t!123167 (list!5609 objs!24)) lambda!62281))))

(assert (= (and d!402174 (not res!637813)) b!1408439))

(assert (= (and b!1408439 res!637814) b!1408442))

(declare-fun b_lambda!44435 () Bool)

(assert (=> (not b_lambda!44435) (not b!1408439)))

(declare-fun m!1586269 () Bool)

(assert (=> b!1408439 m!1586269))

(declare-fun m!1586271 () Bool)

(assert (=> b!1408442 m!1586271))

(assert (=> d!402064 d!402174))

(assert (=> d!402064 d!402136))

(declare-fun b!1408471 () Bool)

(declare-fun e!899122 () Bool)

(assert (=> b!1408471 (= e!899122 (forall!3483 (right!12594 (c!231484 objs!24)) lambda!62281))))

(declare-fun b!1408470 () Bool)

(declare-fun e!899123 () Bool)

(assert (=> b!1408470 (= e!899123 e!899122)))

(declare-datatypes ((Unit!20733 0))(
  ( (Unit!20734) )
))
(declare-fun lt!470098 () Unit!20733)

(declare-fun lemmaForallConcat!124 (List!14432 List!14432 Int) Unit!20733)

(assert (=> b!1408470 (= lt!470098 (lemmaForallConcat!124 (list!5616 (left!12264 (c!231484 objs!24))) (list!5616 (right!12594 (c!231484 objs!24))) lambda!62281))))

(declare-fun res!637837 () Bool)

(assert (=> b!1408470 (= res!637837 (forall!3483 (left!12264 (c!231484 objs!24)) lambda!62281))))

(assert (=> b!1408470 (=> (not res!637837) (not e!899122))))

(declare-fun b!1408469 () Bool)

(declare-fun forall!3489 (IArray!9503 Int) Bool)

(assert (=> b!1408469 (= e!899123 (forall!3489 (xs!7476 (c!231484 objs!24)) lambda!62281))))

(declare-fun b!1408468 () Bool)

(declare-fun e!899124 () Bool)

(assert (=> b!1408468 (= e!899124 e!899123)))

(declare-fun c!231510 () Bool)

(assert (=> b!1408468 (= c!231510 ((_ is Leaf!7191) (c!231484 objs!24)))))

(declare-fun d!402176 () Bool)

(declare-fun lt!470099 () Bool)

(assert (=> d!402176 (= lt!470099 (forall!3482 (list!5616 (c!231484 objs!24)) lambda!62281))))

(assert (=> d!402176 (= lt!470099 e!899124)))

(declare-fun res!637836 () Bool)

(assert (=> d!402176 (=> res!637836 e!899124)))

(assert (=> d!402176 (= res!637836 ((_ is Empty!4749) (c!231484 objs!24)))))

(assert (=> d!402176 (= (forall!3483 (c!231484 objs!24) lambda!62281) lt!470099)))

(assert (= (and d!402176 (not res!637836)) b!1408468))

(assert (= (and b!1408468 c!231510) b!1408469))

(assert (= (and b!1408468 (not c!231510)) b!1408470))

(assert (= (and b!1408470 res!637837) b!1408471))

(declare-fun m!1586283 () Bool)

(assert (=> b!1408471 m!1586283))

(declare-fun m!1586285 () Bool)

(assert (=> b!1408470 m!1586285))

(declare-fun m!1586287 () Bool)

(assert (=> b!1408470 m!1586287))

(assert (=> b!1408470 m!1586285))

(assert (=> b!1408470 m!1586287))

(declare-fun m!1586289 () Bool)

(assert (=> b!1408470 m!1586289))

(declare-fun m!1586291 () Bool)

(assert (=> b!1408470 m!1586291))

(declare-fun m!1586293 () Bool)

(assert (=> b!1408469 m!1586293))

(assert (=> d!402176 m!1586189))

(assert (=> d!402176 m!1586189))

(declare-fun m!1586295 () Bool)

(assert (=> d!402176 m!1586295))

(assert (=> d!402064 d!402176))

(declare-fun d!402180 () Bool)

(declare-fun lt!470102 () Int)

(assert (=> d!402180 (>= lt!470102 0)))

(declare-fun e!899129 () Int)

(assert (=> d!402180 (= lt!470102 e!899129)))

(declare-fun c!231513 () Bool)

(assert (=> d!402180 (= c!231513 ((_ is Nil!14366) (list!5609 objs!24)))))

(assert (=> d!402180 (= (size!11815 (list!5609 objs!24)) lt!470102)))

(declare-fun b!1408482 () Bool)

(assert (=> b!1408482 (= e!899129 0)))

(declare-fun b!1408483 () Bool)

(assert (=> b!1408483 (= e!899129 (+ 1 (size!11815 (t!123167 (list!5609 objs!24)))))))

(assert (= (and d!402180 c!231513) b!1408482))

(assert (= (and d!402180 (not c!231513)) b!1408483))

(declare-fun m!1586305 () Bool)

(assert (=> b!1408483 m!1586305))

(assert (=> d!402058 d!402180))

(assert (=> d!402058 d!402136))

(declare-fun d!402184 () Bool)

(declare-fun lt!470105 () Int)

(assert (=> d!402184 (= lt!470105 (size!11815 (list!5616 (c!231484 objs!24))))))

(assert (=> d!402184 (= lt!470105 (ite ((_ is Empty!4749) (c!231484 objs!24)) 0 (ite ((_ is Leaf!7191) (c!231484 objs!24)) (csize!9729 (c!231484 objs!24)) (csize!9728 (c!231484 objs!24)))))))

(assert (=> d!402184 (= (size!11816 (c!231484 objs!24)) lt!470105)))

(declare-fun bs!338685 () Bool)

(assert (= bs!338685 d!402184))

(assert (=> bs!338685 m!1586189))

(assert (=> bs!338685 m!1586189))

(declare-fun m!1586307 () Bool)

(assert (=> bs!338685 m!1586307))

(assert (=> d!402058 d!402184))

(declare-fun d!402186 () Bool)

(declare-fun res!637871 () Bool)

(declare-fun e!899139 () Bool)

(assert (=> d!402186 (=> (not res!637871) (not e!899139))))

(assert (=> d!402186 (= res!637871 (= (csize!9728 (c!231484 objs!24)) (+ (size!11816 (left!12264 (c!231484 objs!24))) (size!11816 (right!12594 (c!231484 objs!24))))))))

(assert (=> d!402186 (= (inv!18693 (c!231484 objs!24)) e!899139)))

(declare-fun b!1408511 () Bool)

(declare-fun res!637872 () Bool)

(assert (=> b!1408511 (=> (not res!637872) (not e!899139))))

(assert (=> b!1408511 (= res!637872 (and (not (= (left!12264 (c!231484 objs!24)) Empty!4749)) (not (= (right!12594 (c!231484 objs!24)) Empty!4749))))))

(declare-fun b!1408512 () Bool)

(declare-fun res!637873 () Bool)

(assert (=> b!1408512 (=> (not res!637873) (not e!899139))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!687 (Conc!4749) Int)

(assert (=> b!1408512 (= res!637873 (= (cheight!4960 (c!231484 objs!24)) (+ (max!0 (height!687 (left!12264 (c!231484 objs!24))) (height!687 (right!12594 (c!231484 objs!24)))) 1)))))

(declare-fun b!1408513 () Bool)

(assert (=> b!1408513 (= e!899139 (<= 0 (cheight!4960 (c!231484 objs!24))))))

(assert (= (and d!402186 res!637871) b!1408511))

(assert (= (and b!1408511 res!637872) b!1408512))

(assert (= (and b!1408512 res!637873) b!1408513))

(declare-fun m!1586319 () Bool)

(assert (=> d!402186 m!1586319))

(declare-fun m!1586321 () Bool)

(assert (=> d!402186 m!1586321))

(declare-fun m!1586323 () Bool)

(assert (=> b!1408512 m!1586323))

(declare-fun m!1586325 () Bool)

(assert (=> b!1408512 m!1586325))

(assert (=> b!1408512 m!1586323))

(assert (=> b!1408512 m!1586325))

(declare-fun m!1586327 () Bool)

(assert (=> b!1408512 m!1586327))

(assert (=> b!1408298 d!402186))

(declare-fun d!402190 () Bool)

(declare-fun res!637886 () Bool)

(declare-fun e!899144 () Bool)

(assert (=> d!402190 (=> (not res!637886) (not e!899144))))

(declare-fun size!11820 (Conc!4748) Int)

(assert (=> d!402190 (= res!637886 (= (csize!9726 (c!231483 (tokens!1708 sep!3))) (+ (size!11820 (left!12263 (c!231483 (tokens!1708 sep!3)))) (size!11820 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> d!402190 (= (inv!18691 (c!231483 (tokens!1708 sep!3))) e!899144)))

(declare-fun b!1408526 () Bool)

(declare-fun res!637887 () Bool)

(assert (=> b!1408526 (=> (not res!637887) (not e!899144))))

(assert (=> b!1408526 (= res!637887 (and (not (= (left!12263 (c!231483 (tokens!1708 sep!3))) Empty!4748)) (not (= (right!12593 (c!231483 (tokens!1708 sep!3))) Empty!4748))))))

(declare-fun b!1408527 () Bool)

(declare-fun res!637888 () Bool)

(assert (=> b!1408527 (=> (not res!637888) (not e!899144))))

(assert (=> b!1408527 (= res!637888 (= (cheight!4959 (c!231483 (tokens!1708 sep!3))) (+ (max!0 (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3))))) 1)))))

(declare-fun b!1408528 () Bool)

(assert (=> b!1408528 (= e!899144 (<= 0 (cheight!4959 (c!231483 (tokens!1708 sep!3)))))))

(assert (= (and d!402190 res!637886) b!1408526))

(assert (= (and b!1408526 res!637887) b!1408527))

(assert (= (and b!1408527 res!637888) b!1408528))

(declare-fun m!1586337 () Bool)

(assert (=> d!402190 m!1586337))

(declare-fun m!1586339 () Bool)

(assert (=> d!402190 m!1586339))

(declare-fun m!1586341 () Bool)

(assert (=> b!1408527 m!1586341))

(declare-fun m!1586343 () Bool)

(assert (=> b!1408527 m!1586343))

(assert (=> b!1408527 m!1586341))

(assert (=> b!1408527 m!1586343))

(declare-fun m!1586345 () Bool)

(assert (=> b!1408527 m!1586345))

(assert (=> b!1408211 d!402190))

(declare-fun d!402194 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!87 (LexerInterface!2183 BalanceConc!9436 Int List!14431) Bool)

(assert (=> d!402194 (= (separableTokens!165 Lexer!2181 (tokens!1708 sep!3) (rules!10954 sep!3)) (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 sep!3) 0 (rules!10954 sep!3)))))

(declare-fun bs!338692 () Bool)

(assert (= bs!338692 d!402194))

(declare-fun m!1586519 () Bool)

(assert (=> bs!338692 m!1586519))

(assert (=> b!1408243 d!402194))

(declare-fun b!1408659 () Bool)

(declare-fun e!899249 () Bool)

(declare-fun e!899250 () Bool)

(assert (=> b!1408659 (= e!899249 e!899250)))

(declare-fun res!637940 () Bool)

(assert (=> b!1408659 (=> (not res!637940) (not e!899250))))

(assert (=> b!1408659 (= res!637940 (<= (- 1) (- (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun b!1408660 () Bool)

(declare-fun res!637941 () Bool)

(assert (=> b!1408660 (=> (not res!637941) (not e!899250))))

(assert (=> b!1408660 (= res!637941 (not (isEmpty!8754 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1408661 () Bool)

(declare-fun res!637942 () Bool)

(assert (=> b!1408661 (=> (not res!637942) (not e!899250))))

(assert (=> b!1408661 (= res!637942 (isBalanced!1399 (left!12263 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun b!1408662 () Bool)

(assert (=> b!1408662 (= e!899250 (not (isEmpty!8754 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun d!402250 () Bool)

(declare-fun res!637939 () Bool)

(assert (=> d!402250 (=> res!637939 e!899249)))

(assert (=> d!402250 (= res!637939 (not ((_ is Node!4748) (c!231483 (tokens!1708 sep!3)))))))

(assert (=> d!402250 (= (isBalanced!1399 (c!231483 (tokens!1708 sep!3))) e!899249)))

(declare-fun b!1408663 () Bool)

(declare-fun res!637937 () Bool)

(assert (=> b!1408663 (=> (not res!637937) (not e!899250))))

(assert (=> b!1408663 (= res!637937 (isBalanced!1399 (right!12593 (c!231483 (tokens!1708 sep!3)))))))

(declare-fun b!1408664 () Bool)

(declare-fun res!637938 () Bool)

(assert (=> b!1408664 (=> (not res!637938) (not e!899250))))

(assert (=> b!1408664 (= res!637938 (<= (- (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3))))) 1))))

(assert (= (and d!402250 (not res!637939)) b!1408659))

(assert (= (and b!1408659 res!637940) b!1408664))

(assert (= (and b!1408664 res!637938) b!1408661))

(assert (= (and b!1408661 res!637942) b!1408663))

(assert (= (and b!1408663 res!637937) b!1408660))

(assert (= (and b!1408660 res!637941) b!1408662))

(declare-fun m!1586521 () Bool)

(assert (=> b!1408662 m!1586521))

(assert (=> b!1408664 m!1586341))

(assert (=> b!1408664 m!1586343))

(declare-fun m!1586523 () Bool)

(assert (=> b!1408661 m!1586523))

(assert (=> b!1408659 m!1586341))

(assert (=> b!1408659 m!1586343))

(declare-fun m!1586525 () Bool)

(assert (=> b!1408663 m!1586525))

(declare-fun m!1586527 () Bool)

(assert (=> b!1408660 m!1586527))

(assert (=> d!402062 d!402250))

(declare-fun d!402252 () Bool)

(assert (=> d!402252 (= (inv!18695 (xs!7475 (c!231483 (tokens!1708 acc!229)))) (<= (size!11819 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))) 2147483647))))

(declare-fun bs!338693 () Bool)

(assert (= bs!338693 d!402252))

(declare-fun m!1586529 () Bool)

(assert (=> bs!338693 m!1586529))

(assert (=> b!1408327 d!402252))

(declare-fun d!402254 () Bool)

(declare-fun c!231527 () Bool)

(assert (=> d!402254 (= c!231527 ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun e!899251 () Bool)

(assert (=> d!402254 (= (inv!18680 (left!12263 (c!231483 (tokens!1708 acc!229)))) e!899251)))

(declare-fun b!1408665 () Bool)

(assert (=> b!1408665 (= e!899251 (inv!18691 (left!12263 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun b!1408666 () Bool)

(declare-fun e!899252 () Bool)

(assert (=> b!1408666 (= e!899251 e!899252)))

(declare-fun res!637943 () Bool)

(assert (=> b!1408666 (= res!637943 (not ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> b!1408666 (=> res!637943 e!899252)))

(declare-fun b!1408667 () Bool)

(assert (=> b!1408667 (= e!899252 (inv!18692 (left!12263 (c!231483 (tokens!1708 acc!229)))))))

(assert (= (and d!402254 c!231527) b!1408665))

(assert (= (and d!402254 (not c!231527)) b!1408666))

(assert (= (and b!1408666 (not res!637943)) b!1408667))

(declare-fun m!1586531 () Bool)

(assert (=> b!1408665 m!1586531))

(declare-fun m!1586533 () Bool)

(assert (=> b!1408667 m!1586533))

(assert (=> b!1408326 d!402254))

(declare-fun d!402256 () Bool)

(declare-fun c!231528 () Bool)

(assert (=> d!402256 (= c!231528 ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun e!899253 () Bool)

(assert (=> d!402256 (= (inv!18680 (right!12593 (c!231483 (tokens!1708 acc!229)))) e!899253)))

(declare-fun b!1408668 () Bool)

(assert (=> b!1408668 (= e!899253 (inv!18691 (right!12593 (c!231483 (tokens!1708 acc!229)))))))

(declare-fun b!1408669 () Bool)

(declare-fun e!899254 () Bool)

(assert (=> b!1408669 (= e!899253 e!899254)))

(declare-fun res!637944 () Bool)

(assert (=> b!1408669 (= res!637944 (not ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> b!1408669 (=> res!637944 e!899254)))

(declare-fun b!1408670 () Bool)

(assert (=> b!1408670 (= e!899254 (inv!18692 (right!12593 (c!231483 (tokens!1708 acc!229)))))))

(assert (= (and d!402256 c!231528) b!1408668))

(assert (= (and d!402256 (not c!231528)) b!1408669))

(assert (= (and b!1408669 (not res!637944)) b!1408670))

(declare-fun m!1586535 () Bool)

(assert (=> b!1408668 m!1586535))

(declare-fun m!1586537 () Bool)

(assert (=> b!1408670 m!1586537))

(assert (=> b!1408326 d!402256))

(declare-fun b!1408683 () Bool)

(declare-fun res!637961 () Bool)

(declare-fun e!899259 () Bool)

(assert (=> b!1408683 (=> (not res!637961) (not e!899259))))

(assert (=> b!1408683 (= res!637961 (not (isEmpty!8752 (left!12264 (c!231484 objs!24)))))))

(declare-fun b!1408684 () Bool)

(declare-fun e!899260 () Bool)

(assert (=> b!1408684 (= e!899260 e!899259)))

(declare-fun res!637958 () Bool)

(assert (=> b!1408684 (=> (not res!637958) (not e!899259))))

(assert (=> b!1408684 (= res!637958 (<= (- 1) (- (height!687 (left!12264 (c!231484 objs!24))) (height!687 (right!12594 (c!231484 objs!24))))))))

(declare-fun b!1408685 () Bool)

(declare-fun res!637957 () Bool)

(assert (=> b!1408685 (=> (not res!637957) (not e!899259))))

(assert (=> b!1408685 (= res!637957 (isBalanced!1400 (right!12594 (c!231484 objs!24))))))

(declare-fun b!1408686 () Bool)

(assert (=> b!1408686 (= e!899259 (not (isEmpty!8752 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1408687 () Bool)

(declare-fun res!637962 () Bool)

(assert (=> b!1408687 (=> (not res!637962) (not e!899259))))

(assert (=> b!1408687 (= res!637962 (<= (- (height!687 (left!12264 (c!231484 objs!24))) (height!687 (right!12594 (c!231484 objs!24)))) 1))))

(declare-fun d!402258 () Bool)

(declare-fun res!637959 () Bool)

(assert (=> d!402258 (=> res!637959 e!899260)))

(assert (=> d!402258 (= res!637959 (not ((_ is Node!4749) (c!231484 objs!24))))))

(assert (=> d!402258 (= (isBalanced!1400 (c!231484 objs!24)) e!899260)))

(declare-fun b!1408688 () Bool)

(declare-fun res!637960 () Bool)

(assert (=> b!1408688 (=> (not res!637960) (not e!899259))))

(assert (=> b!1408688 (= res!637960 (isBalanced!1400 (left!12264 (c!231484 objs!24))))))

(assert (= (and d!402258 (not res!637959)) b!1408684))

(assert (= (and b!1408684 res!637958) b!1408687))

(assert (= (and b!1408687 res!637962) b!1408688))

(assert (= (and b!1408688 res!637960) b!1408685))

(assert (= (and b!1408685 res!637957) b!1408683))

(assert (= (and b!1408683 res!637961) b!1408686))

(declare-fun m!1586539 () Bool)

(assert (=> b!1408688 m!1586539))

(assert (=> b!1408687 m!1586323))

(assert (=> b!1408687 m!1586325))

(declare-fun m!1586541 () Bool)

(assert (=> b!1408685 m!1586541))

(declare-fun m!1586543 () Bool)

(assert (=> b!1408686 m!1586543))

(declare-fun m!1586545 () Bool)

(assert (=> b!1408683 m!1586545))

(assert (=> b!1408684 m!1586323))

(assert (=> b!1408684 m!1586325))

(assert (=> d!402066 d!402258))

(assert (=> b!1408187 d!402100))

(declare-fun d!402260 () Bool)

(declare-fun res!637963 () Bool)

(declare-fun e!899261 () Bool)

(assert (=> d!402260 (=> (not res!637963) (not e!899261))))

(assert (=> d!402260 (= res!637963 (= (csize!9726 (c!231483 (tokens!1708 acc!229))) (+ (size!11820 (left!12263 (c!231483 (tokens!1708 acc!229)))) (size!11820 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> d!402260 (= (inv!18691 (c!231483 (tokens!1708 acc!229))) e!899261)))

(declare-fun b!1408689 () Bool)

(declare-fun res!637964 () Bool)

(assert (=> b!1408689 (=> (not res!637964) (not e!899261))))

(assert (=> b!1408689 (= res!637964 (and (not (= (left!12263 (c!231483 (tokens!1708 acc!229))) Empty!4748)) (not (= (right!12593 (c!231483 (tokens!1708 acc!229))) Empty!4748))))))

(declare-fun b!1408690 () Bool)

(declare-fun res!637965 () Bool)

(assert (=> b!1408690 (=> (not res!637965) (not e!899261))))

(assert (=> b!1408690 (= res!637965 (= (cheight!4959 (c!231483 (tokens!1708 acc!229))) (+ (max!0 (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229))))) 1)))))

(declare-fun b!1408691 () Bool)

(assert (=> b!1408691 (= e!899261 (<= 0 (cheight!4959 (c!231483 (tokens!1708 acc!229)))))))

(assert (= (and d!402260 res!637963) b!1408689))

(assert (= (and b!1408689 res!637964) b!1408690))

(assert (= (and b!1408690 res!637965) b!1408691))

(declare-fun m!1586547 () Bool)

(assert (=> d!402260 m!1586547))

(declare-fun m!1586549 () Bool)

(assert (=> d!402260 m!1586549))

(assert (=> b!1408690 m!1586233))

(assert (=> b!1408690 m!1586235))

(assert (=> b!1408690 m!1586233))

(assert (=> b!1408690 m!1586235))

(declare-fun m!1586551 () Bool)

(assert (=> b!1408690 m!1586551))

(assert (=> b!1408289 d!402260))

(declare-fun d!402262 () Bool)

(declare-fun res!637966 () Bool)

(declare-fun e!899262 () Bool)

(assert (=> d!402262 (=> (not res!637966) (not e!899262))))

(assert (=> d!402262 (= res!637966 (rulesValid!937 Lexer!2181 (rules!10954 acc!229)))))

(assert (=> d!402262 (= (rulesInvariant!2053 Lexer!2181 (rules!10954 acc!229)) e!899262)))

(declare-fun b!1408692 () Bool)

(assert (=> b!1408692 (= e!899262 (noDuplicateTag!937 Lexer!2181 (rules!10954 acc!229) Nil!14368))))

(assert (= (and d!402262 res!637966) b!1408692))

(declare-fun m!1586553 () Bool)

(assert (=> d!402262 m!1586553))

(declare-fun m!1586555 () Bool)

(assert (=> b!1408692 m!1586555))

(assert (=> b!1408238 d!402262))

(assert (=> d!402104 d!402140))

(declare-fun d!402264 () Bool)

(declare-fun res!637967 () Bool)

(declare-fun e!899263 () Bool)

(assert (=> d!402264 (=> (not res!637967) (not e!899263))))

(assert (=> d!402264 (= res!637967 (<= (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3))))) 512))))

(assert (=> d!402264 (= (inv!18692 (c!231483 (tokens!1708 sep!3))) e!899263)))

(declare-fun b!1408693 () Bool)

(declare-fun res!637968 () Bool)

(assert (=> b!1408693 (=> (not res!637968) (not e!899263))))

(assert (=> b!1408693 (= res!637968 (= (csize!9727 (c!231483 (tokens!1708 sep!3))) (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun b!1408694 () Bool)

(assert (=> b!1408694 (= e!899263 (and (> (csize!9727 (c!231483 (tokens!1708 sep!3))) 0) (<= (csize!9727 (c!231483 (tokens!1708 sep!3))) 512)))))

(assert (= (and d!402264 res!637967) b!1408693))

(assert (= (and b!1408693 res!637968) b!1408694))

(declare-fun m!1586557 () Bool)

(assert (=> d!402264 m!1586557))

(assert (=> d!402264 m!1586557))

(declare-fun m!1586559 () Bool)

(assert (=> d!402264 m!1586559))

(assert (=> b!1408693 m!1586557))

(assert (=> b!1408693 m!1586557))

(assert (=> b!1408693 m!1586559))

(assert (=> b!1408213 d!402264))

(declare-fun d!402266 () Bool)

(assert (=> d!402266 (= (separableTokens!165 Lexer!2181 (tokens!1708 acc!229) (rules!10954 acc!229)) (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 acc!229) 0 (rules!10954 acc!229)))))

(declare-fun bs!338694 () Bool)

(assert (= bs!338694 d!402266))

(declare-fun m!1586561 () Bool)

(assert (=> bs!338694 m!1586561))

(assert (=> b!1408240 d!402266))

(assert (=> b!1408186 d!402106))

(declare-fun bs!338695 () Bool)

(declare-fun d!402268 () Bool)

(assert (= bs!338695 (and d!402268 d!402122)))

(declare-fun lambda!62293 () Int)

(assert (=> bs!338695 (= (= (rules!10954 acc!229) (rules!10954 sep!3)) (= lambda!62293 lambda!62291))))

(declare-fun b!1408698 () Bool)

(declare-fun e!899267 () Bool)

(assert (=> b!1408698 (= e!899267 true)))

(declare-fun b!1408697 () Bool)

(declare-fun e!899266 () Bool)

(assert (=> b!1408697 (= e!899266 e!899267)))

(declare-fun b!1408696 () Bool)

(declare-fun e!899265 () Bool)

(assert (=> b!1408696 (= e!899265 e!899266)))

(assert (=> d!402268 e!899265))

(assert (= b!1408697 b!1408698))

(assert (= b!1408696 b!1408697))

(assert (= (and d!402268 ((_ is Cons!14365) (rules!10954 acc!229))) b!1408696))

(assert (=> b!1408698 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6654 order!8771 lambda!62293))))

(assert (=> b!1408698 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6654 order!8771 lambda!62293))))

(assert (=> d!402268 true))

(declare-fun e!899264 () Bool)

(assert (=> d!402268 e!899264))

(declare-fun res!637969 () Bool)

(assert (=> d!402268 (=> (not res!637969) (not e!899264))))

(declare-fun lt!470122 () Bool)

(assert (=> d!402268 (= res!637969 (= lt!470122 (forall!3487 (list!5613 (tokens!1708 acc!229)) lambda!62293)))))

(assert (=> d!402268 (= lt!470122 (forall!3488 (tokens!1708 acc!229) lambda!62293))))

(assert (=> d!402268 (not (isEmpty!8750 (rules!10954 acc!229)))))

(assert (=> d!402268 (= (rulesProduceEachTokenIndividually!780 Lexer!2181 (rules!10954 acc!229) (tokens!1708 acc!229)) lt!470122)))

(declare-fun b!1408695 () Bool)

(assert (=> b!1408695 (= e!899264 (= lt!470122 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 acc!229) (list!5613 (tokens!1708 acc!229)))))))

(assert (= (and d!402268 res!637969) b!1408695))

(declare-fun m!1586563 () Bool)

(assert (=> d!402268 m!1586563))

(assert (=> d!402268 m!1586563))

(declare-fun m!1586565 () Bool)

(assert (=> d!402268 m!1586565))

(declare-fun m!1586567 () Bool)

(assert (=> d!402268 m!1586567))

(assert (=> d!402268 m!1586015))

(assert (=> b!1408695 m!1586563))

(assert (=> b!1408695 m!1586563))

(declare-fun m!1586569 () Bool)

(assert (=> b!1408695 m!1586569))

(assert (=> b!1408239 d!402268))

(declare-fun b!1408712 () Bool)

(declare-fun b_free!34439 () Bool)

(declare-fun b_next!35143 () Bool)

(assert (=> b!1408712 (= b_free!34439 (not b_next!35143))))

(declare-fun tp!400005 () Bool)

(declare-fun b_and!94311 () Bool)

(assert (=> b!1408712 (= tp!400005 b_and!94311)))

(declare-fun b_free!34441 () Bool)

(declare-fun b_next!35145 () Bool)

(assert (=> b!1408712 (= b_free!34441 (not b_next!35145))))

(declare-fun tp!400006 () Bool)

(declare-fun b_and!94313 () Bool)

(assert (=> b!1408712 (= tp!400006 b_and!94313)))

(declare-fun e!899283 () Bool)

(assert (=> b!1408311 (= tp!399926 e!899283)))

(declare-fun e!899281 () Bool)

(assert (=> b!1408712 (= e!899281 (and tp!400005 tp!400006))))

(declare-fun b!1408710 () Bool)

(declare-fun e!899280 () Bool)

(declare-fun e!899284 () Bool)

(declare-fun inv!21 (TokenValue!2581) Bool)

(assert (=> b!1408710 (= e!899280 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))) e!899284))))

(declare-fun tp!400004 () Bool)

(declare-fun b!1408709 () Bool)

(declare-fun inv!18699 (Token!4644) Bool)

(assert (=> b!1408709 (= e!899283 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))) e!899280 tp!400004))))

(declare-fun b!1408711 () Bool)

(assert (=> b!1408711 (= e!899284 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) e!899281))))

(assert (= b!1408711 b!1408712))

(assert (= b!1408710 b!1408711))

(assert (= b!1408709 b!1408710))

(assert (= (and b!1408311 ((_ is Cons!14364) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))) b!1408709))

(declare-fun m!1586571 () Bool)

(assert (=> b!1408710 m!1586571))

(declare-fun m!1586573 () Bool)

(assert (=> b!1408709 m!1586573))

(declare-fun m!1586575 () Bool)

(assert (=> b!1408711 m!1586575))

(declare-fun m!1586577 () Bool)

(assert (=> b!1408711 m!1586577))

(declare-fun tp!400009 () Bool)

(declare-fun b!1408713 () Bool)

(declare-fun tp!400007 () Bool)

(declare-fun e!899286 () Bool)

(assert (=> b!1408713 (= e!899286 (and (inv!18679 (left!12264 (left!12264 (c!231484 objs!24)))) tp!400007 (inv!18679 (right!12594 (left!12264 (c!231484 objs!24)))) tp!400009))))

(declare-fun b!1408715 () Bool)

(declare-fun e!899287 () Bool)

(declare-fun tp!400008 () Bool)

(assert (=> b!1408715 (= e!899287 tp!400008)))

(declare-fun b!1408714 () Bool)

(assert (=> b!1408714 (= e!899286 (and (inv!18697 (xs!7476 (left!12264 (c!231484 objs!24)))) e!899287))))

(assert (=> b!1408337 (= tp!399950 (and (inv!18679 (left!12264 (c!231484 objs!24))) e!899286))))

(assert (= (and b!1408337 ((_ is Node!4749) (left!12264 (c!231484 objs!24)))) b!1408713))

(assert (= b!1408714 b!1408715))

(assert (= (and b!1408337 ((_ is Leaf!7191) (left!12264 (c!231484 objs!24)))) b!1408714))

(declare-fun m!1586579 () Bool)

(assert (=> b!1408713 m!1586579))

(declare-fun m!1586581 () Bool)

(assert (=> b!1408713 m!1586581))

(declare-fun m!1586583 () Bool)

(assert (=> b!1408714 m!1586583))

(assert (=> b!1408337 m!1586113))

(declare-fun e!899288 () Bool)

(declare-fun b!1408716 () Bool)

(declare-fun tp!400010 () Bool)

(declare-fun tp!400012 () Bool)

(assert (=> b!1408716 (= e!899288 (and (inv!18679 (left!12264 (right!12594 (c!231484 objs!24)))) tp!400010 (inv!18679 (right!12594 (right!12594 (c!231484 objs!24)))) tp!400012))))

(declare-fun b!1408718 () Bool)

(declare-fun e!899289 () Bool)

(declare-fun tp!400011 () Bool)

(assert (=> b!1408718 (= e!899289 tp!400011)))

(declare-fun b!1408717 () Bool)

(assert (=> b!1408717 (= e!899288 (and (inv!18697 (xs!7476 (right!12594 (c!231484 objs!24)))) e!899289))))

(assert (=> b!1408337 (= tp!399952 (and (inv!18679 (right!12594 (c!231484 objs!24))) e!899288))))

(assert (= (and b!1408337 ((_ is Node!4749) (right!12594 (c!231484 objs!24)))) b!1408716))

(assert (= b!1408717 b!1408718))

(assert (= (and b!1408337 ((_ is Leaf!7191) (right!12594 (c!231484 objs!24)))) b!1408717))

(declare-fun m!1586585 () Bool)

(assert (=> b!1408716 m!1586585))

(declare-fun m!1586587 () Bool)

(assert (=> b!1408716 m!1586587))

(declare-fun m!1586589 () Bool)

(assert (=> b!1408717 m!1586589))

(assert (=> b!1408337 m!1586115))

(declare-fun b!1408729 () Bool)

(declare-fun e!899296 () Bool)

(declare-fun tp!400021 () Bool)

(assert (=> b!1408729 (= e!899296 (and (inv!18680 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))) tp!400021))))

(declare-fun b!1408728 () Bool)

(declare-fun tp!400020 () Bool)

(declare-fun e!899297 () Bool)

(assert (=> b!1408728 (= e!899297 (and tp!400020 (inv!18683 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))) e!899296))))

(declare-fun tp!400019 () Bool)

(declare-fun e!899298 () Bool)

(declare-fun b!1408727 () Bool)

(assert (=> b!1408727 (= e!899298 (and (inv!18682 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))) e!899297 tp!400019))))

(assert (=> b!1408339 (= tp!399951 e!899298)))

(assert (= b!1408728 b!1408729))

(assert (= b!1408727 b!1408728))

(assert (= (and b!1408339 ((_ is Cons!14366) (innerList!4809 (xs!7476 (c!231484 objs!24))))) b!1408727))

(declare-fun m!1586591 () Bool)

(assert (=> b!1408729 m!1586591))

(declare-fun m!1586593 () Bool)

(assert (=> b!1408728 m!1586593))

(declare-fun m!1586595 () Bool)

(assert (=> b!1408727 m!1586595))

(declare-fun b!1408730 () Bool)

(declare-fun tp!400023 () Bool)

(declare-fun tp!400024 () Bool)

(declare-fun e!899299 () Bool)

(assert (=> b!1408730 (= e!899299 (and (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) tp!400023 (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))) tp!400024))))

(declare-fun b!1408732 () Bool)

(declare-fun e!899300 () Bool)

(declare-fun tp!400022 () Bool)

(assert (=> b!1408732 (= e!899300 tp!400022)))

(declare-fun b!1408731 () Bool)

(assert (=> b!1408731 (= e!899299 (and (inv!18695 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))) e!899300))))

(assert (=> b!1408326 (= tp!399942 (and (inv!18680 (left!12263 (c!231483 (tokens!1708 acc!229)))) e!899299))))

(assert (= (and b!1408326 ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 acc!229))))) b!1408730))

(assert (= b!1408731 b!1408732))

(assert (= (and b!1408326 ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 acc!229))))) b!1408731))

(declare-fun m!1586597 () Bool)

(assert (=> b!1408730 m!1586597))

(declare-fun m!1586599 () Bool)

(assert (=> b!1408730 m!1586599))

(declare-fun m!1586601 () Bool)

(assert (=> b!1408731 m!1586601))

(assert (=> b!1408326 m!1586107))

(declare-fun tp!400027 () Bool)

(declare-fun tp!400026 () Bool)

(declare-fun e!899301 () Bool)

(declare-fun b!1408733 () Bool)

(assert (=> b!1408733 (= e!899301 (and (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) tp!400026 (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))) tp!400027))))

(declare-fun b!1408735 () Bool)

(declare-fun e!899302 () Bool)

(declare-fun tp!400025 () Bool)

(assert (=> b!1408735 (= e!899302 tp!400025)))

(declare-fun b!1408734 () Bool)

(assert (=> b!1408734 (= e!899301 (and (inv!18695 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))) e!899302))))

(assert (=> b!1408326 (= tp!399943 (and (inv!18680 (right!12593 (c!231483 (tokens!1708 acc!229)))) e!899301))))

(assert (= (and b!1408326 ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 acc!229))))) b!1408733))

(assert (= b!1408734 b!1408735))

(assert (= (and b!1408326 ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 acc!229))))) b!1408734))

(declare-fun m!1586603 () Bool)

(assert (=> b!1408733 m!1586603))

(declare-fun m!1586605 () Bool)

(assert (=> b!1408733 m!1586605))

(declare-fun m!1586607 () Bool)

(assert (=> b!1408734 m!1586607))

(assert (=> b!1408326 m!1586109))

(declare-fun e!899303 () Bool)

(declare-fun b!1408736 () Bool)

(declare-fun tp!400029 () Bool)

(declare-fun tp!400030 () Bool)

(assert (=> b!1408736 (= e!899303 (and (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) tp!400029 (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))) tp!400030))))

(declare-fun b!1408738 () Bool)

(declare-fun e!899304 () Bool)

(declare-fun tp!400028 () Bool)

(assert (=> b!1408738 (= e!899304 tp!400028)))

(declare-fun b!1408737 () Bool)

(assert (=> b!1408737 (= e!899303 (and (inv!18695 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))) e!899304))))

(assert (=> b!1408309 (= tp!399927 (and (inv!18680 (left!12263 (c!231483 (tokens!1708 sep!3)))) e!899303))))

(assert (= (and b!1408309 ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 sep!3))))) b!1408736))

(assert (= b!1408737 b!1408738))

(assert (= (and b!1408309 ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 sep!3))))) b!1408737))

(declare-fun m!1586609 () Bool)

(assert (=> b!1408736 m!1586609))

(declare-fun m!1586611 () Bool)

(assert (=> b!1408736 m!1586611))

(declare-fun m!1586613 () Bool)

(assert (=> b!1408737 m!1586613))

(assert (=> b!1408309 m!1586093))

(declare-fun tp!400033 () Bool)

(declare-fun e!899305 () Bool)

(declare-fun b!1408739 () Bool)

(declare-fun tp!400032 () Bool)

(assert (=> b!1408739 (= e!899305 (and (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) tp!400032 (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))) tp!400033))))

(declare-fun b!1408741 () Bool)

(declare-fun e!899306 () Bool)

(declare-fun tp!400031 () Bool)

(assert (=> b!1408741 (= e!899306 tp!400031)))

(declare-fun b!1408740 () Bool)

(assert (=> b!1408740 (= e!899305 (and (inv!18695 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))) e!899306))))

(assert (=> b!1408309 (= tp!399928 (and (inv!18680 (right!12593 (c!231483 (tokens!1708 sep!3)))) e!899305))))

(assert (= (and b!1408309 ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 sep!3))))) b!1408739))

(assert (= b!1408740 b!1408741))

(assert (= (and b!1408309 ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 sep!3))))) b!1408740))

(declare-fun m!1586615 () Bool)

(assert (=> b!1408739 m!1586615))

(declare-fun m!1586617 () Bool)

(assert (=> b!1408739 m!1586617))

(declare-fun m!1586619 () Bool)

(assert (=> b!1408740 m!1586619))

(assert (=> b!1408309 m!1586095))

(declare-fun b!1408745 () Bool)

(declare-fun b_free!34443 () Bool)

(declare-fun b_next!35147 () Bool)

(assert (=> b!1408745 (= b_free!34443 (not b_next!35147))))

(declare-fun tp!400035 () Bool)

(declare-fun b_and!94315 () Bool)

(assert (=> b!1408745 (= tp!400035 b_and!94315)))

(declare-fun b_free!34445 () Bool)

(declare-fun b_next!35149 () Bool)

(assert (=> b!1408745 (= b_free!34445 (not b_next!35149))))

(declare-fun tp!400036 () Bool)

(declare-fun b_and!94317 () Bool)

(assert (=> b!1408745 (= tp!400036 b_and!94317)))

(declare-fun e!899310 () Bool)

(assert (=> b!1408328 (= tp!399941 e!899310)))

(declare-fun e!899308 () Bool)

(assert (=> b!1408745 (= e!899308 (and tp!400035 tp!400036))))

(declare-fun b!1408743 () Bool)

(declare-fun e!899307 () Bool)

(declare-fun e!899311 () Bool)

(assert (=> b!1408743 (= e!899307 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))) e!899311))))

(declare-fun tp!400034 () Bool)

(declare-fun b!1408742 () Bool)

(assert (=> b!1408742 (= e!899310 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))) e!899307 tp!400034))))

(declare-fun b!1408744 () Bool)

(assert (=> b!1408744 (= e!899311 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) e!899308))))

(assert (= b!1408744 b!1408745))

(assert (= b!1408743 b!1408744))

(assert (= b!1408742 b!1408743))

(assert (= (and b!1408328 ((_ is Cons!14364) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))) b!1408742))

(declare-fun m!1586621 () Bool)

(assert (=> b!1408743 m!1586621))

(declare-fun m!1586623 () Bool)

(assert (=> b!1408742 m!1586623))

(declare-fun m!1586625 () Bool)

(assert (=> b!1408744 m!1586625))

(declare-fun m!1586627 () Bool)

(assert (=> b!1408744 m!1586627))

(declare-fun b!1408748 () Bool)

(declare-fun b_free!34447 () Bool)

(declare-fun b_next!35151 () Bool)

(assert (=> b!1408748 (= b_free!34447 (not b_next!35151))))

(declare-fun tp!400039 () Bool)

(declare-fun b_and!94319 () Bool)

(assert (=> b!1408748 (= tp!400039 b_and!94319)))

(declare-fun b_free!34449 () Bool)

(declare-fun b_next!35153 () Bool)

(assert (=> b!1408748 (= b_free!34449 (not b_next!35153))))

(declare-fun tp!400037 () Bool)

(declare-fun b_and!94321 () Bool)

(assert (=> b!1408748 (= tp!400037 b_and!94321)))

(declare-fun e!899316 () Bool)

(assert (=> b!1408748 (= e!899316 (and tp!400039 tp!400037))))

(declare-fun b!1408747 () Bool)

(declare-fun e!899313 () Bool)

(assert (=> b!1408747 (= e!899313 (and (inv!18673 (tag!2753 (h!19766 (t!123166 (rules!10954 sep!3))))) (inv!18696 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) e!899316))))

(declare-fun b!1408746 () Bool)

(declare-fun e!899314 () Bool)

(declare-fun tp!400038 () Bool)

(assert (=> b!1408746 (= e!899314 (and e!899313 tp!400038))))

(assert (=> b!1408320 (= tp!399936 e!899314)))

(assert (= b!1408747 b!1408748))

(assert (= b!1408746 b!1408747))

(assert (= (and b!1408320 ((_ is Cons!14365) (t!123166 (rules!10954 sep!3)))) b!1408746))

(declare-fun m!1586629 () Bool)

(assert (=> b!1408747 m!1586629))

(declare-fun m!1586631 () Bool)

(assert (=> b!1408747 m!1586631))

(declare-fun b!1408751 () Bool)

(declare-fun b_free!34451 () Bool)

(declare-fun b_next!35155 () Bool)

(assert (=> b!1408751 (= b_free!34451 (not b_next!35155))))

(declare-fun tp!400042 () Bool)

(declare-fun b_and!94323 () Bool)

(assert (=> b!1408751 (= tp!400042 b_and!94323)))

(declare-fun b_free!34453 () Bool)

(declare-fun b_next!35157 () Bool)

(assert (=> b!1408751 (= b_free!34453 (not b_next!35157))))

(declare-fun tp!400040 () Bool)

(declare-fun b_and!94325 () Bool)

(assert (=> b!1408751 (= tp!400040 b_and!94325)))

(declare-fun e!899320 () Bool)

(assert (=> b!1408751 (= e!899320 (and tp!400042 tp!400040))))

(declare-fun b!1408750 () Bool)

(declare-fun e!899317 () Bool)

(assert (=> b!1408750 (= e!899317 (and (inv!18673 (tag!2753 (h!19766 (t!123166 (rules!10954 acc!229))))) (inv!18696 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) e!899320))))

(declare-fun b!1408749 () Bool)

(declare-fun e!899318 () Bool)

(declare-fun tp!400041 () Bool)

(assert (=> b!1408749 (= e!899318 (and e!899317 tp!400041))))

(assert (=> b!1408323 (= tp!399939 e!899318)))

(assert (= b!1408750 b!1408751))

(assert (= b!1408749 b!1408750))

(assert (= (and b!1408323 ((_ is Cons!14365) (t!123166 (rules!10954 acc!229)))) b!1408749))

(declare-fun m!1586633 () Bool)

(assert (=> b!1408750 m!1586633))

(declare-fun m!1586635 () Bool)

(assert (=> b!1408750 m!1586635))

(declare-fun b_lambda!44441 () Bool)

(assert (= b_lambda!44435 (or start!128468 b_lambda!44441)))

(declare-fun bs!338696 () Bool)

(declare-fun d!402270 () Bool)

(assert (= bs!338696 (and d!402270 start!128468)))

(assert (=> bs!338696 (= (dynLambda!6656 lambda!62281 (h!19767 (list!5609 objs!24))) (usesJsonRules!0 (h!19767 (list!5609 objs!24))))))

(declare-fun m!1586637 () Bool)

(assert (=> bs!338696 m!1586637))

(assert (=> b!1408439 d!402270))

(check-sat (not b!1408409) (not d!402252) (not d!402112) (not b!1408419) (not b!1408664) (not b_next!35147) (not b!1408326) (not d!402130) (not b!1408346) (not b!1408343) (not b!1408741) (not b_lambda!44441) (not b!1408396) (not b!1408309) (not b!1408710) (not b!1408728) (not d!402164) b_and!94323 (not b_next!35157) (not b!1408696) (not b!1408737) (not b!1408686) (not b!1408683) (not b!1408727) b_and!94313 (not b!1408711) b_and!94319 (not b_next!35125) (not b!1408512) (not b!1408744) (not b!1408527) b_and!94325 (not d!402128) (not b!1408411) (not b!1408471) (not d!402132) (not b!1408376) b_and!94315 (not b!1408716) (not b!1408742) (not b!1408670) (not d!402138) (not b!1408718) (not b_next!35119) (not b!1408394) b_and!94293 (not b!1408414) (not b!1408413) (not b!1408729) (not d!402148) (not b!1408412) (not b!1408739) (not b_next!35155) (not b!1408393) b_and!94287 (not b!1408749) (not b!1408483) (not d!402262) (not b_next!35153) (not b!1408688) (not b!1408410) (not b!1408367) (not b!1408685) (not b!1408431) (not d!402184) (not d!402116) (not b!1408660) (not b!1408747) (not b_next!35121) b_and!94321 (not b!1408469) (not b!1408746) (not b_next!35123) (not d!402194) (not d!402190) (not b!1408692) b_and!94291 (not b!1408717) (not b!1408337) (not b!1408734) (not d!402156) (not bs!338696) b_and!94289 (not d!402140) (not b!1408684) (not b!1408442) (not b_next!35145) (not b!1408667) (not b!1408342) (not b_next!35149) (not b!1408713) (not b!1408715) b_and!94311 (not b!1408731) (not b!1408730) (not b!1408665) (not b!1408384) (not b!1408714) (not d!402186) (not b!1408345) (not d!402122) (not d!402260) (not d!402268) (not b!1408659) (not b!1408420) (not b!1408661) (not b!1408750) (not b!1408391) (not d!402266) (not b!1408743) (not b!1408733) (not b!1408736) (not b!1408381) (not b!1408470) (not b!1408668) (not b!1408695) b_and!94317 (not b!1408687) (not d!402264) (not b!1408735) (not b!1408709) (not b!1408732) (not b!1408662) (not b!1408348) (not b!1408663) (not b!1408738) (not d!402176) (not d!402136) (not b!1408693) (not b_next!35151) (not b!1408740) (not b_next!35143) (not b!1408690) (not b!1408389))
(check-sat (not b_next!35147) b_and!94325 b_and!94293 (not b_next!35153) (not b_next!35123) b_and!94291 b_and!94289 (not b_next!35145) (not b_next!35149) b_and!94311 b_and!94317 b_and!94323 (not b_next!35157) (not b_next!35125) b_and!94313 b_and!94319 (not b_next!35119) b_and!94315 (not b_next!35155) b_and!94287 (not b_next!35121) b_and!94321 (not b_next!35151) (not b_next!35143))
(get-model)

(declare-fun d!402356 () Bool)

(declare-fun lt!470150 () Int)

(assert (=> d!402356 (>= lt!470150 0)))

(declare-fun e!899392 () Int)

(assert (=> d!402356 (= lt!470150 e!899392)))

(declare-fun c!231554 () Bool)

(assert (=> d!402356 (= c!231554 ((_ is Nil!14364) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402356 (= (size!11819 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))) lt!470150)))

(declare-fun b!1408873 () Bool)

(assert (=> b!1408873 (= e!899392 0)))

(declare-fun b!1408874 () Bool)

(assert (=> b!1408874 (= e!899392 (+ 1 (size!11819 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(assert (= (and d!402356 c!231554) b!1408873))

(assert (= (and d!402356 (not c!231554)) b!1408874))

(declare-fun m!1586799 () Bool)

(assert (=> b!1408874 m!1586799))

(assert (=> d!402252 d!402356))

(assert (=> b!1408337 d!402118))

(assert (=> b!1408337 d!402120))

(assert (=> b!1408309 d!402142))

(assert (=> b!1408309 d!402144))

(declare-fun d!402358 () Bool)

(assert (=> d!402358 (= (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (= (mod (str.len (value!80625 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) 2) 0))))

(assert (=> b!1408744 d!402358))

(declare-fun d!402360 () Bool)

(declare-fun res!638059 () Bool)

(declare-fun e!899393 () Bool)

(assert (=> d!402360 (=> (not res!638059) (not e!899393))))

(assert (=> d!402360 (= res!638059 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (toValue!3782 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))))

(assert (=> d!402360 (= (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) e!899393)))

(declare-fun b!1408875 () Bool)

(assert (=> b!1408875 (= e!899393 (equivClasses!927 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (toValue!3782 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))))

(assert (= (and d!402360 res!638059) b!1408875))

(declare-fun m!1586801 () Bool)

(assert (=> d!402360 m!1586801))

(declare-fun m!1586803 () Bool)

(assert (=> b!1408875 m!1586803))

(assert (=> b!1408744 d!402360))

(declare-fun d!402362 () Bool)

(declare-fun lt!470151 () Bool)

(assert (=> d!402362 (= lt!470151 (isEmpty!8751 (list!5616 (right!12594 (c!231484 objs!24)))))))

(assert (=> d!402362 (= lt!470151 (= (size!11816 (right!12594 (c!231484 objs!24))) 0))))

(assert (=> d!402362 (= (isEmpty!8752 (right!12594 (c!231484 objs!24))) lt!470151)))

(declare-fun bs!338715 () Bool)

(assert (= bs!338715 d!402362))

(assert (=> bs!338715 m!1586287))

(assert (=> bs!338715 m!1586287))

(declare-fun m!1586805 () Bool)

(assert (=> bs!338715 m!1586805))

(assert (=> bs!338715 m!1586321))

(assert (=> b!1408686 d!402362))

(declare-fun d!402364 () Bool)

(declare-fun lt!470152 () Int)

(assert (=> d!402364 (= lt!470152 (size!11815 (list!5616 (left!12264 (c!231484 objs!24)))))))

(assert (=> d!402364 (= lt!470152 (ite ((_ is Empty!4749) (left!12264 (c!231484 objs!24))) 0 (ite ((_ is Leaf!7191) (left!12264 (c!231484 objs!24))) (csize!9729 (left!12264 (c!231484 objs!24))) (csize!9728 (left!12264 (c!231484 objs!24))))))))

(assert (=> d!402364 (= (size!11816 (left!12264 (c!231484 objs!24))) lt!470152)))

(declare-fun bs!338716 () Bool)

(assert (= bs!338716 d!402364))

(assert (=> bs!338716 m!1586285))

(assert (=> bs!338716 m!1586285))

(declare-fun m!1586807 () Bool)

(assert (=> bs!338716 m!1586807))

(assert (=> d!402186 d!402364))

(declare-fun d!402366 () Bool)

(declare-fun lt!470153 () Int)

(assert (=> d!402366 (= lt!470153 (size!11815 (list!5616 (right!12594 (c!231484 objs!24)))))))

(assert (=> d!402366 (= lt!470153 (ite ((_ is Empty!4749) (right!12594 (c!231484 objs!24))) 0 (ite ((_ is Leaf!7191) (right!12594 (c!231484 objs!24))) (csize!9729 (right!12594 (c!231484 objs!24))) (csize!9728 (right!12594 (c!231484 objs!24))))))))

(assert (=> d!402366 (= (size!11816 (right!12594 (c!231484 objs!24))) lt!470153)))

(declare-fun bs!338717 () Bool)

(assert (= bs!338717 d!402366))

(assert (=> bs!338717 m!1586287))

(assert (=> bs!338717 m!1586287))

(declare-fun m!1586809 () Bool)

(assert (=> bs!338717 m!1586809))

(assert (=> d!402186 d!402366))

(declare-fun d!402368 () Bool)

(declare-fun res!638060 () Bool)

(declare-fun e!899394 () Bool)

(assert (=> d!402368 (=> (not res!638060) (not e!899394))))

(assert (=> d!402368 (= res!638060 (<= (size!11819 (list!5617 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229)))))) 512))))

(assert (=> d!402368 (= (inv!18692 (left!12263 (c!231483 (tokens!1708 acc!229)))) e!899394)))

(declare-fun b!1408876 () Bool)

(declare-fun res!638061 () Bool)

(assert (=> b!1408876 (=> (not res!638061) (not e!899394))))

(assert (=> b!1408876 (= res!638061 (= (csize!9727 (left!12263 (c!231483 (tokens!1708 acc!229)))) (size!11819 (list!5617 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1408877 () Bool)

(assert (=> b!1408877 (= e!899394 (and (> (csize!9727 (left!12263 (c!231483 (tokens!1708 acc!229)))) 0) (<= (csize!9727 (left!12263 (c!231483 (tokens!1708 acc!229)))) 512)))))

(assert (= (and d!402368 res!638060) b!1408876))

(assert (= (and b!1408876 res!638061) b!1408877))

(declare-fun m!1586811 () Bool)

(assert (=> d!402368 m!1586811))

(assert (=> d!402368 m!1586811))

(declare-fun m!1586813 () Bool)

(assert (=> d!402368 m!1586813))

(assert (=> b!1408876 m!1586811))

(assert (=> b!1408876 m!1586811))

(assert (=> b!1408876 m!1586813))

(assert (=> b!1408667 d!402368))

(declare-fun d!402370 () Bool)

(declare-fun res!638062 () Bool)

(declare-fun e!899395 () Bool)

(assert (=> d!402370 (=> (not res!638062) (not e!899395))))

(assert (=> d!402370 (= res!638062 (= (csize!9726 (left!12263 (c!231483 (tokens!1708 sep!3)))) (+ (size!11820 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) (size!11820 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))))

(assert (=> d!402370 (= (inv!18691 (left!12263 (c!231483 (tokens!1708 sep!3)))) e!899395)))

(declare-fun b!1408878 () Bool)

(declare-fun res!638063 () Bool)

(assert (=> b!1408878 (=> (not res!638063) (not e!899395))))

(assert (=> b!1408878 (= res!638063 (and (not (= (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))) Empty!4748)) (not (= (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))) Empty!4748))))))

(declare-fun b!1408879 () Bool)

(declare-fun res!638064 () Bool)

(assert (=> b!1408879 (=> (not res!638064) (not e!899395))))

(assert (=> b!1408879 (= res!638064 (= (cheight!4959 (left!12263 (c!231483 (tokens!1708 sep!3)))) (+ (max!0 (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) 1)))))

(declare-fun b!1408880 () Bool)

(assert (=> b!1408880 (= e!899395 (<= 0 (cheight!4959 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402370 res!638062) b!1408878))

(assert (= (and b!1408878 res!638063) b!1408879))

(assert (= (and b!1408879 res!638064) b!1408880))

(declare-fun m!1586815 () Bool)

(assert (=> d!402370 m!1586815))

(declare-fun m!1586817 () Bool)

(assert (=> d!402370 m!1586817))

(declare-fun m!1586819 () Bool)

(assert (=> b!1408879 m!1586819))

(declare-fun m!1586821 () Bool)

(assert (=> b!1408879 m!1586821))

(assert (=> b!1408879 m!1586819))

(assert (=> b!1408879 m!1586821))

(declare-fun m!1586823 () Bool)

(assert (=> b!1408879 m!1586823))

(assert (=> b!1408391 d!402370))

(declare-fun d!402372 () Bool)

(declare-fun c!231555 () Bool)

(assert (=> d!402372 (= c!231555 ((_ is Node!4749) (left!12264 (left!12264 (c!231484 objs!24)))))))

(declare-fun e!899396 () Bool)

(assert (=> d!402372 (= (inv!18679 (left!12264 (left!12264 (c!231484 objs!24)))) e!899396)))

(declare-fun b!1408881 () Bool)

(assert (=> b!1408881 (= e!899396 (inv!18693 (left!12264 (left!12264 (c!231484 objs!24)))))))

(declare-fun b!1408882 () Bool)

(declare-fun e!899397 () Bool)

(assert (=> b!1408882 (= e!899396 e!899397)))

(declare-fun res!638065 () Bool)

(assert (=> b!1408882 (= res!638065 (not ((_ is Leaf!7191) (left!12264 (left!12264 (c!231484 objs!24))))))))

(assert (=> b!1408882 (=> res!638065 e!899397)))

(declare-fun b!1408883 () Bool)

(assert (=> b!1408883 (= e!899397 (inv!18694 (left!12264 (left!12264 (c!231484 objs!24)))))))

(assert (= (and d!402372 c!231555) b!1408881))

(assert (= (and d!402372 (not c!231555)) b!1408882))

(assert (= (and b!1408882 (not res!638065)) b!1408883))

(declare-fun m!1586825 () Bool)

(assert (=> b!1408881 m!1586825))

(declare-fun m!1586827 () Bool)

(assert (=> b!1408883 m!1586827))

(assert (=> b!1408713 d!402372))

(declare-fun d!402374 () Bool)

(declare-fun c!231556 () Bool)

(assert (=> d!402374 (= c!231556 ((_ is Node!4749) (right!12594 (left!12264 (c!231484 objs!24)))))))

(declare-fun e!899398 () Bool)

(assert (=> d!402374 (= (inv!18679 (right!12594 (left!12264 (c!231484 objs!24)))) e!899398)))

(declare-fun b!1408884 () Bool)

(assert (=> b!1408884 (= e!899398 (inv!18693 (right!12594 (left!12264 (c!231484 objs!24)))))))

(declare-fun b!1408885 () Bool)

(declare-fun e!899399 () Bool)

(assert (=> b!1408885 (= e!899398 e!899399)))

(declare-fun res!638066 () Bool)

(assert (=> b!1408885 (= res!638066 (not ((_ is Leaf!7191) (right!12594 (left!12264 (c!231484 objs!24))))))))

(assert (=> b!1408885 (=> res!638066 e!899399)))

(declare-fun b!1408886 () Bool)

(assert (=> b!1408886 (= e!899399 (inv!18694 (right!12594 (left!12264 (c!231484 objs!24)))))))

(assert (= (and d!402374 c!231556) b!1408884))

(assert (= (and d!402374 (not c!231556)) b!1408885))

(assert (= (and b!1408885 (not res!638066)) b!1408886))

(declare-fun m!1586829 () Bool)

(assert (=> b!1408884 m!1586829))

(declare-fun m!1586831 () Bool)

(assert (=> b!1408886 m!1586831))

(assert (=> b!1408713 d!402374))

(declare-fun d!402376 () Bool)

(declare-fun res!638067 () Bool)

(declare-fun e!899400 () Bool)

(assert (=> d!402376 (=> (not res!638067) (not e!899400))))

(assert (=> d!402376 (= res!638067 (= (csize!9726 (right!12593 (c!231483 (tokens!1708 sep!3)))) (+ (size!11820 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) (size!11820 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))))

(assert (=> d!402376 (= (inv!18691 (right!12593 (c!231483 (tokens!1708 sep!3)))) e!899400)))

(declare-fun b!1408887 () Bool)

(declare-fun res!638068 () Bool)

(assert (=> b!1408887 (=> (not res!638068) (not e!899400))))

(assert (=> b!1408887 (= res!638068 (and (not (= (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))) Empty!4748)) (not (= (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))) Empty!4748))))))

(declare-fun b!1408888 () Bool)

(declare-fun res!638069 () Bool)

(assert (=> b!1408888 (=> (not res!638069) (not e!899400))))

(assert (=> b!1408888 (= res!638069 (= (cheight!4959 (right!12593 (c!231483 (tokens!1708 sep!3)))) (+ (max!0 (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) 1)))))

(declare-fun b!1408889 () Bool)

(assert (=> b!1408889 (= e!899400 (<= 0 (cheight!4959 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402376 res!638067) b!1408887))

(assert (= (and b!1408887 res!638068) b!1408888))

(assert (= (and b!1408888 res!638069) b!1408889))

(declare-fun m!1586833 () Bool)

(assert (=> d!402376 m!1586833))

(declare-fun m!1586835 () Bool)

(assert (=> d!402376 m!1586835))

(declare-fun m!1586837 () Bool)

(assert (=> b!1408888 m!1586837))

(declare-fun m!1586839 () Bool)

(assert (=> b!1408888 m!1586839))

(assert (=> b!1408888 m!1586837))

(assert (=> b!1408888 m!1586839))

(declare-fun m!1586841 () Bool)

(assert (=> b!1408888 m!1586841))

(assert (=> b!1408394 d!402376))

(declare-fun d!402378 () Bool)

(declare-fun res!638074 () Bool)

(declare-fun e!899403 () Bool)

(assert (=> d!402378 (=> (not res!638074) (not e!899403))))

(declare-fun isEmpty!8757 (List!14429) Bool)

(assert (=> d!402378 (= res!638074 (not (isEmpty!8757 (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))))

(assert (=> d!402378 (= (inv!18699 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))) e!899403)))

(declare-fun b!1408894 () Bool)

(declare-fun res!638075 () Bool)

(assert (=> b!1408894 (=> (not res!638075) (not e!899403))))

(declare-fun list!5620 (BalanceConc!9434) List!14429)

(declare-fun dynLambda!6661 (Int TokenValue!2581) BalanceConc!9434)

(assert (=> b!1408894 (= res!638075 (= (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))) (list!5620 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))))

(declare-fun b!1408895 () Bool)

(declare-fun size!11825 (List!14429) Int)

(assert (=> b!1408895 (= e!899403 (= (size!11811 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))) (size!11825 (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))))

(assert (= (and d!402378 res!638074) b!1408894))

(assert (= (and b!1408894 res!638075) b!1408895))

(declare-fun b_lambda!44443 () Bool)

(assert (=> (not b_lambda!44443) (not b!1408894)))

(declare-fun t!123227 () Bool)

(declare-fun tb!73209 () Bool)

(assert (=> (and b!1408751 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123227) tb!73209))

(declare-fun b!1408900 () Bool)

(declare-fun e!899406 () Bool)

(declare-fun tp!400045 () Bool)

(declare-fun inv!18702 (Conc!4747) Bool)

(assert (=> b!1408900 (= e!899406 (and (inv!18702 (c!231482 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) tp!400045))))

(declare-fun result!89070 () Bool)

(declare-fun inv!18703 (BalanceConc!9434) Bool)

(assert (=> tb!73209 (= result!89070 (and (inv!18703 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) e!899406))))

(assert (= tb!73209 b!1408900))

(declare-fun m!1586843 () Bool)

(assert (=> b!1408900 m!1586843))

(declare-fun m!1586845 () Bool)

(assert (=> tb!73209 m!1586845))

(assert (=> b!1408894 t!123227))

(declare-fun b_and!94327 () Bool)

(assert (= b_and!94325 (and (=> t!123227 result!89070) b_and!94327)))

(declare-fun t!123229 () Bool)

(declare-fun tb!73211 () Bool)

(assert (=> (and b!1408745 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123229) tb!73211))

(declare-fun result!89074 () Bool)

(assert (= result!89074 result!89070))

(assert (=> b!1408894 t!123229))

(declare-fun b_and!94329 () Bool)

(assert (= b_and!94317 (and (=> t!123229 result!89074) b_and!94329)))

(declare-fun t!123231 () Bool)

(declare-fun tb!73213 () Bool)

(assert (=> (and b!1408325 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123231) tb!73213))

(declare-fun result!89076 () Bool)

(assert (= result!89076 result!89070))

(assert (=> b!1408894 t!123231))

(declare-fun b_and!94331 () Bool)

(assert (= b_and!94293 (and (=> t!123231 result!89076) b_and!94331)))

(declare-fun t!123233 () Bool)

(declare-fun tb!73215 () Bool)

(assert (=> (and b!1408712 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123233) tb!73215))

(declare-fun result!89078 () Bool)

(assert (= result!89078 result!89070))

(assert (=> b!1408894 t!123233))

(declare-fun b_and!94333 () Bool)

(assert (= b_and!94313 (and (=> t!123233 result!89078) b_and!94333)))

(declare-fun t!123235 () Bool)

(declare-fun tb!73217 () Bool)

(assert (=> (and b!1408322 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123235) tb!73217))

(declare-fun result!89080 () Bool)

(assert (= result!89080 result!89070))

(assert (=> b!1408894 t!123235))

(declare-fun b_and!94335 () Bool)

(assert (= b_and!94289 (and (=> t!123235 result!89080) b_and!94335)))

(declare-fun t!123237 () Bool)

(declare-fun tb!73219 () Bool)

(assert (=> (and b!1408748 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123237) tb!73219))

(declare-fun result!89082 () Bool)

(assert (= result!89082 result!89070))

(assert (=> b!1408894 t!123237))

(declare-fun b_and!94337 () Bool)

(assert (= b_and!94321 (and (=> t!123237 result!89082) b_and!94337)))

(declare-fun m!1586847 () Bool)

(assert (=> d!402378 m!1586847))

(declare-fun m!1586849 () Bool)

(assert (=> b!1408894 m!1586849))

(assert (=> b!1408894 m!1586849))

(declare-fun m!1586851 () Bool)

(assert (=> b!1408894 m!1586851))

(declare-fun m!1586853 () Bool)

(assert (=> b!1408895 m!1586853))

(assert (=> b!1408709 d!402378))

(declare-fun d!402380 () Bool)

(assert (=> d!402380 (= (inv!18673 (tag!2753 (h!19766 (t!123166 (rules!10954 sep!3))))) (= (mod (str.len (value!80625 (tag!2753 (h!19766 (t!123166 (rules!10954 sep!3)))))) 2) 0))))

(assert (=> b!1408747 d!402380))

(declare-fun d!402382 () Bool)

(declare-fun res!638076 () Bool)

(declare-fun e!899407 () Bool)

(assert (=> d!402382 (=> (not res!638076) (not e!899407))))

(assert (=> d!402382 (= res!638076 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3)))))))))

(assert (=> d!402382 (= (inv!18696 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) e!899407)))

(declare-fun b!1408901 () Bool)

(assert (=> b!1408901 (= e!899407 (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3)))))))))

(assert (= (and d!402382 res!638076) b!1408901))

(declare-fun m!1586855 () Bool)

(assert (=> d!402382 m!1586855))

(declare-fun m!1586857 () Bool)

(assert (=> b!1408901 m!1586857))

(assert (=> b!1408747 d!402382))

(declare-fun d!402384 () Bool)

(assert (=> d!402384 (= (isEmpty!8751 (list!5616 (c!231484 objs!24))) ((_ is Nil!14366) (list!5616 (c!231484 objs!24))))))

(assert (=> d!402138 d!402384))

(declare-fun b!1408910 () Bool)

(declare-fun e!899412 () List!14432)

(assert (=> b!1408910 (= e!899412 Nil!14366)))

(declare-fun d!402386 () Bool)

(declare-fun c!231561 () Bool)

(assert (=> d!402386 (= c!231561 ((_ is Empty!4749) (c!231484 objs!24)))))

(assert (=> d!402386 (= (list!5616 (c!231484 objs!24)) e!899412)))

(declare-fun b!1408913 () Bool)

(declare-fun e!899413 () List!14432)

(declare-fun ++!3732 (List!14432 List!14432) List!14432)

(assert (=> b!1408913 (= e!899413 (++!3732 (list!5616 (left!12264 (c!231484 objs!24))) (list!5616 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1408912 () Bool)

(assert (=> b!1408912 (= e!899413 (list!5615 (xs!7476 (c!231484 objs!24))))))

(declare-fun b!1408911 () Bool)

(assert (=> b!1408911 (= e!899412 e!899413)))

(declare-fun c!231562 () Bool)

(assert (=> b!1408911 (= c!231562 ((_ is Leaf!7191) (c!231484 objs!24)))))

(assert (= (and d!402386 c!231561) b!1408910))

(assert (= (and d!402386 (not c!231561)) b!1408911))

(assert (= (and b!1408911 c!231562) b!1408912))

(assert (= (and b!1408911 (not c!231562)) b!1408913))

(assert (=> b!1408913 m!1586285))

(assert (=> b!1408913 m!1586287))

(assert (=> b!1408913 m!1586285))

(assert (=> b!1408913 m!1586287))

(declare-fun m!1586859 () Bool)

(assert (=> b!1408913 m!1586859))

(assert (=> b!1408912 m!1586185))

(assert (=> d!402138 d!402386))

(assert (=> d!402138 d!402184))

(declare-fun d!402388 () Bool)

(declare-fun lt!470154 () Int)

(assert (=> d!402388 (>= lt!470154 0)))

(declare-fun e!899414 () Int)

(assert (=> d!402388 (= lt!470154 e!899414)))

(declare-fun c!231563 () Bool)

(assert (=> d!402388 (= c!231563 ((_ is Nil!14364) (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402388 (= (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229))))) lt!470154)))

(declare-fun b!1408914 () Bool)

(assert (=> b!1408914 (= e!899414 0)))

(declare-fun b!1408915 () Bool)

(assert (=> b!1408915 (= e!899414 (+ 1 (size!11819 (t!123165 (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(assert (= (and d!402388 c!231563) b!1408914))

(assert (= (and d!402388 (not c!231563)) b!1408915))

(declare-fun m!1586861 () Bool)

(assert (=> b!1408915 m!1586861))

(assert (=> b!1408431 d!402388))

(declare-fun d!402390 () Bool)

(assert (=> d!402390 (= (list!5617 (xs!7475 (c!231483 (tokens!1708 acc!229)))) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))

(assert (=> b!1408431 d!402390))

(declare-fun d!402392 () Bool)

(declare-fun res!638081 () Bool)

(declare-fun e!899419 () Bool)

(assert (=> d!402392 (=> res!638081 e!899419)))

(assert (=> d!402392 (= res!638081 ((_ is Nil!14365) (rules!10954 acc!229)))))

(assert (=> d!402392 (= (noDuplicateTag!937 Lexer!2181 (rules!10954 acc!229) Nil!14368) e!899419)))

(declare-fun b!1408920 () Bool)

(declare-fun e!899420 () Bool)

(assert (=> b!1408920 (= e!899419 e!899420)))

(declare-fun res!638082 () Bool)

(assert (=> b!1408920 (=> (not res!638082) (not e!899420))))

(declare-fun contains!2841 (List!14434 String!17141) Bool)

(assert (=> b!1408920 (= res!638082 (not (contains!2841 Nil!14368 (tag!2753 (h!19766 (rules!10954 acc!229))))))))

(declare-fun b!1408921 () Bool)

(assert (=> b!1408921 (= e!899420 (noDuplicateTag!937 Lexer!2181 (t!123166 (rules!10954 acc!229)) (Cons!14368 (tag!2753 (h!19766 (rules!10954 acc!229))) Nil!14368)))))

(assert (= (and d!402392 (not res!638081)) b!1408920))

(assert (= (and b!1408920 res!638082) b!1408921))

(declare-fun m!1586863 () Bool)

(assert (=> b!1408920 m!1586863))

(declare-fun m!1586865 () Bool)

(assert (=> b!1408921 m!1586865))

(assert (=> b!1408692 d!402392))

(declare-fun b!1408922 () Bool)

(declare-fun e!899421 () Bool)

(declare-fun e!899422 () Bool)

(assert (=> b!1408922 (= e!899421 e!899422)))

(declare-fun res!638086 () Bool)

(assert (=> b!1408922 (=> (not res!638086) (not e!899422))))

(assert (=> b!1408922 (= res!638086 (<= (- 1) (- (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1408923 () Bool)

(declare-fun res!638087 () Bool)

(assert (=> b!1408923 (=> (not res!638087) (not e!899422))))

(assert (=> b!1408923 (= res!638087 (not (isEmpty!8754 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun b!1408924 () Bool)

(declare-fun res!638088 () Bool)

(assert (=> b!1408924 (=> (not res!638088) (not e!899422))))

(assert (=> b!1408924 (= res!638088 (isBalanced!1399 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1408925 () Bool)

(assert (=> b!1408925 (= e!899422 (not (isEmpty!8754 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun d!402394 () Bool)

(declare-fun res!638085 () Bool)

(assert (=> d!402394 (=> res!638085 e!899421)))

(assert (=> d!402394 (= res!638085 (not ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402394 (= (isBalanced!1399 (right!12593 (c!231483 (tokens!1708 acc!229)))) e!899421)))

(declare-fun b!1408926 () Bool)

(declare-fun res!638083 () Bool)

(assert (=> b!1408926 (=> (not res!638083) (not e!899422))))

(assert (=> b!1408926 (= res!638083 (isBalanced!1399 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1408927 () Bool)

(declare-fun res!638084 () Bool)

(assert (=> b!1408927 (=> (not res!638084) (not e!899422))))

(assert (=> b!1408927 (= res!638084 (<= (- (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) 1))))

(assert (= (and d!402394 (not res!638085)) b!1408922))

(assert (= (and b!1408922 res!638086) b!1408927))

(assert (= (and b!1408927 res!638084) b!1408924))

(assert (= (and b!1408924 res!638088) b!1408926))

(assert (= (and b!1408926 res!638083) b!1408923))

(assert (= (and b!1408923 res!638087) b!1408925))

(declare-fun m!1586867 () Bool)

(assert (=> b!1408925 m!1586867))

(declare-fun m!1586869 () Bool)

(assert (=> b!1408927 m!1586869))

(declare-fun m!1586871 () Bool)

(assert (=> b!1408927 m!1586871))

(declare-fun m!1586873 () Bool)

(assert (=> b!1408924 m!1586873))

(assert (=> b!1408922 m!1586869))

(assert (=> b!1408922 m!1586871))

(declare-fun m!1586875 () Bool)

(assert (=> b!1408926 m!1586875))

(declare-fun m!1586877 () Bool)

(assert (=> b!1408923 m!1586877))

(assert (=> b!1408413 d!402394))

(declare-fun d!402396 () Bool)

(assert (=> d!402396 (= (inv!18695 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))) (<= (size!11819 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3)))))) 2147483647))))

(declare-fun bs!338718 () Bool)

(assert (= bs!338718 d!402396))

(declare-fun m!1586879 () Bool)

(assert (=> bs!338718 m!1586879))

(assert (=> b!1408737 d!402396))

(declare-fun d!402398 () Bool)

(assert (=> d!402398 (= (inv!18683 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))) (isBalanced!1399 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))))))

(declare-fun bs!338719 () Bool)

(assert (= bs!338719 d!402398))

(declare-fun m!1586881 () Bool)

(assert (=> bs!338719 m!1586881))

(assert (=> b!1408728 d!402398))

(declare-fun d!402400 () Bool)

(declare-fun lt!470157 () Bool)

(declare-fun isEmpty!8758 (List!14430) Bool)

(declare-fun list!5621 (Conc!4748) List!14430)

(assert (=> d!402400 (= lt!470157 (isEmpty!8758 (list!5621 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402400 (= lt!470157 (= (size!11820 (right!12593 (c!231483 (tokens!1708 sep!3)))) 0))))

(assert (=> d!402400 (= (isEmpty!8754 (right!12593 (c!231483 (tokens!1708 sep!3)))) lt!470157)))

(declare-fun bs!338720 () Bool)

(assert (= bs!338720 d!402400))

(declare-fun m!1586883 () Bool)

(assert (=> bs!338720 m!1586883))

(assert (=> bs!338720 m!1586883))

(declare-fun m!1586885 () Bool)

(assert (=> bs!338720 m!1586885))

(assert (=> bs!338720 m!1586339))

(assert (=> b!1408662 d!402400))

(declare-fun d!402402 () Bool)

(declare-fun lt!470158 () Int)

(assert (=> d!402402 (>= lt!470158 0)))

(declare-fun e!899423 () Int)

(assert (=> d!402402 (= lt!470158 e!899423)))

(declare-fun c!231564 () Bool)

(assert (=> d!402402 (= c!231564 ((_ is Nil!14366) (innerList!4809 (xs!7476 (c!231484 objs!24)))))))

(assert (=> d!402402 (= (size!11815 (innerList!4809 (xs!7476 (c!231484 objs!24)))) lt!470158)))

(declare-fun b!1408928 () Bool)

(assert (=> b!1408928 (= e!899423 0)))

(declare-fun b!1408929 () Bool)

(assert (=> b!1408929 (= e!899423 (+ 1 (size!11815 (t!123167 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))))

(assert (= (and d!402402 c!231564) b!1408928))

(assert (= (and d!402402 (not c!231564)) b!1408929))

(declare-fun m!1586887 () Bool)

(assert (=> b!1408929 m!1586887))

(assert (=> d!402112 d!402402))

(declare-fun d!402404 () Bool)

(declare-fun res!638089 () Bool)

(declare-fun e!899424 () Bool)

(assert (=> d!402404 (=> (not res!638089) (not e!899424))))

(assert (=> d!402404 (= res!638089 (= (csize!9726 (right!12593 (c!231483 (tokens!1708 acc!229)))) (+ (size!11820 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) (size!11820 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))))

(assert (=> d!402404 (= (inv!18691 (right!12593 (c!231483 (tokens!1708 acc!229)))) e!899424)))

(declare-fun b!1408930 () Bool)

(declare-fun res!638090 () Bool)

(assert (=> b!1408930 (=> (not res!638090) (not e!899424))))

(assert (=> b!1408930 (= res!638090 (and (not (= (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))) Empty!4748)) (not (= (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))) Empty!4748))))))

(declare-fun b!1408931 () Bool)

(declare-fun res!638091 () Bool)

(assert (=> b!1408931 (=> (not res!638091) (not e!899424))))

(assert (=> b!1408931 (= res!638091 (= (cheight!4959 (right!12593 (c!231483 (tokens!1708 acc!229)))) (+ (max!0 (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) 1)))))

(declare-fun b!1408932 () Bool)

(assert (=> b!1408932 (= e!899424 (<= 0 (cheight!4959 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402404 res!638089) b!1408930))

(assert (= (and b!1408930 res!638090) b!1408931))

(assert (= (and b!1408931 res!638091) b!1408932))

(declare-fun m!1586889 () Bool)

(assert (=> d!402404 m!1586889))

(declare-fun m!1586891 () Bool)

(assert (=> d!402404 m!1586891))

(assert (=> b!1408931 m!1586869))

(assert (=> b!1408931 m!1586871))

(assert (=> b!1408931 m!1586869))

(assert (=> b!1408931 m!1586871))

(declare-fun m!1586893 () Bool)

(assert (=> b!1408931 m!1586893))

(assert (=> b!1408668 d!402404))

(declare-fun d!402406 () Bool)

(assert (=> d!402406 true))

(declare-fun lambda!62309 () Int)

(declare-fun order!8779 () Int)

(declare-fun dynLambda!6662 (Int Int) Int)

(assert (=> d!402406 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6662 order!8779 lambda!62309))))

(declare-fun Forall2!453 (Int) Bool)

(assert (=> d!402406 (= (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (Forall2!453 lambda!62309))))

(declare-fun bs!338721 () Bool)

(assert (= bs!338721 d!402406))

(declare-fun m!1586895 () Bool)

(assert (=> bs!338721 m!1586895))

(assert (=> b!1408342 d!402406))

(declare-fun d!402408 () Bool)

(assert (=> d!402408 (= (max!0 (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3))))) (ite (< (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (c!231483 (tokens!1708 sep!3)))) (height!686 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> b!1408527 d!402408))

(declare-fun d!402410 () Bool)

(assert (=> d!402410 (= (height!686 (left!12263 (c!231483 (tokens!1708 sep!3)))) (ite ((_ is Empty!4748) (left!12263 (c!231483 (tokens!1708 sep!3)))) 0 (ite ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 sep!3)))) 1 (cheight!4959 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1408527 d!402410))

(declare-fun d!402412 () Bool)

(assert (=> d!402412 (= (height!686 (right!12593 (c!231483 (tokens!1708 sep!3)))) (ite ((_ is Empty!4748) (right!12593 (c!231483 (tokens!1708 sep!3)))) 0 (ite ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 sep!3)))) 1 (cheight!4959 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1408527 d!402412))

(declare-fun d!402414 () Bool)

(declare-fun res!638094 () Bool)

(declare-fun e!899427 () Bool)

(assert (=> d!402414 (=> (not res!638094) (not e!899427))))

(assert (=> d!402414 (= res!638094 (<= (size!11815 (list!5615 (xs!7476 (left!12264 (c!231484 objs!24))))) 512))))

(assert (=> d!402414 (= (inv!18694 (left!12264 (c!231484 objs!24))) e!899427)))

(declare-fun b!1408937 () Bool)

(declare-fun res!638095 () Bool)

(assert (=> b!1408937 (=> (not res!638095) (not e!899427))))

(assert (=> b!1408937 (= res!638095 (= (csize!9729 (left!12264 (c!231484 objs!24))) (size!11815 (list!5615 (xs!7476 (left!12264 (c!231484 objs!24)))))))))

(declare-fun b!1408938 () Bool)

(assert (=> b!1408938 (= e!899427 (and (> (csize!9729 (left!12264 (c!231484 objs!24))) 0) (<= (csize!9729 (left!12264 (c!231484 objs!24))) 512)))))

(assert (= (and d!402414 res!638094) b!1408937))

(assert (= (and b!1408937 res!638095) b!1408938))

(declare-fun m!1586897 () Bool)

(assert (=> d!402414 m!1586897))

(assert (=> d!402414 m!1586897))

(declare-fun m!1586899 () Bool)

(assert (=> d!402414 m!1586899))

(assert (=> b!1408937 m!1586897))

(assert (=> b!1408937 m!1586897))

(assert (=> b!1408937 m!1586899))

(assert (=> b!1408345 d!402414))

(declare-fun d!402416 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!370) Regex!3805)

(declare-datatypes ((StringLiteralValueInjection!104 0))(
  ( (StringLiteralValueInjection!105) )
))
(declare-fun injection!8 (StringLiteralValueInjection!104) TokenValueInjection!4822)

(assert (=> d!402416 (= (jsonstringRule!0 JsonLexer!371) (Rule!4783 (jsonStringRe!0 JsonLexer!371) (String!17142 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!105)))))

(declare-fun bs!338722 () Bool)

(assert (= bs!338722 d!402416))

(declare-fun m!1586901 () Bool)

(assert (=> bs!338722 m!1586901))

(declare-fun m!1586903 () Bool)

(assert (=> bs!338722 m!1586903))

(assert (=> d!402140 d!402416))

(declare-fun d!402418 () Bool)

(declare-fun falseRe!0 (JsonLexer!370) Regex!3805)

(declare-datatypes ((KeywordValueInjection!168 0))(
  ( (KeywordValueInjection!169) )
))
(declare-fun injection!9 (KeywordValueInjection!168) TokenValueInjection!4822)

(assert (=> d!402418 (= (falseRule!0 JsonLexer!371) (Rule!4783 (falseRe!0 JsonLexer!371) (String!17142 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338723 () Bool)

(assert (= bs!338723 d!402418))

(declare-fun m!1586905 () Bool)

(assert (=> bs!338723 m!1586905))

(declare-fun m!1586907 () Bool)

(assert (=> bs!338723 m!1586907))

(assert (=> d!402140 d!402418))

(declare-fun d!402420 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402420 (= (lBracketRule!0 JsonLexer!371) (Rule!4783 (lBracketRe!0 JsonLexer!371) (String!17142 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338724 () Bool)

(assert (= bs!338724 d!402420))

(declare-fun m!1586909 () Bool)

(assert (=> bs!338724 m!1586909))

(assert (=> bs!338724 m!1586907))

(assert (=> d!402140 d!402420))

(declare-fun d!402422 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402422 (= (rBracketRule!0 JsonLexer!371) (Rule!4783 (rBracketRe!0 JsonLexer!371) (String!17142 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338725 () Bool)

(assert (= bs!338725 d!402422))

(declare-fun m!1586911 () Bool)

(assert (=> bs!338725 m!1586911))

(assert (=> bs!338725 m!1586907))

(assert (=> d!402140 d!402422))

(declare-fun d!402424 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402424 (= (lBraceRule!0 JsonLexer!371) (Rule!4783 (lBraceRe!0 JsonLexer!371) (String!17142 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338726 () Bool)

(assert (= bs!338726 d!402424))

(declare-fun m!1586913 () Bool)

(assert (=> bs!338726 m!1586913))

(assert (=> bs!338726 m!1586907))

(assert (=> d!402140 d!402424))

(declare-fun d!402426 () Bool)

(declare-fun nullRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402426 (= (nullRule!0 JsonLexer!371) (Rule!4783 (nullRe!0 JsonLexer!371) (String!17142 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338727 () Bool)

(assert (= bs!338727 d!402426))

(declare-fun m!1586915 () Bool)

(assert (=> bs!338727 m!1586915))

(assert (=> bs!338727 m!1586907))

(assert (=> d!402140 d!402426))

(declare-fun d!402428 () Bool)

(declare-fun commaRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402428 (= (commaRule!0 JsonLexer!371) (Rule!4783 (commaRe!0 JsonLexer!371) (String!17142 "ccoommmmaa") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338728 () Bool)

(assert (= bs!338728 d!402428))

(declare-fun m!1586917 () Bool)

(assert (=> bs!338728 m!1586917))

(assert (=> bs!338728 m!1586907))

(assert (=> d!402140 d!402428))

(declare-fun d!402430 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402430 (= (rBraceRule!0 JsonLexer!371) (Rule!4783 (rBraceRe!0 JsonLexer!371) (String!17142 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338729 () Bool)

(assert (= bs!338729 d!402430))

(declare-fun m!1586997 () Bool)

(assert (=> bs!338729 m!1586997))

(assert (=> bs!338729 m!1586907))

(assert (=> d!402140 d!402430))

(declare-fun d!402434 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!370) Regex!3805)

(declare-datatypes ((WhitespaceValueInjection!108 0))(
  ( (WhitespaceValueInjection!109) )
))
(declare-fun injection!7 (WhitespaceValueInjection!108) TokenValueInjection!4822)

(assert (=> d!402434 (= (whitespaceRule!0 JsonLexer!371) (Rule!4783 (wsCharRe!0 JsonLexer!371) (String!17142 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!109)))))

(declare-fun bs!338731 () Bool)

(assert (= bs!338731 d!402434))

(declare-fun m!1587041 () Bool)

(assert (=> bs!338731 m!1587041))

(declare-fun m!1587043 () Bool)

(assert (=> bs!338731 m!1587043))

(assert (=> d!402140 d!402434))

(declare-fun d!402448 () Bool)

(declare-fun eofRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402448 (= (eofRule!0 JsonLexer!371) (Rule!4783 (eofRe!0 JsonLexer!371) (String!17142 "eeooff") false (injection!7 WhitespaceValueInjection!109)))))

(declare-fun bs!338733 () Bool)

(assert (= bs!338733 d!402448))

(declare-fun m!1587085 () Bool)

(assert (=> bs!338733 m!1587085))

(assert (=> bs!338733 m!1587043))

(assert (=> d!402140 d!402448))

(declare-fun d!402468 () Bool)

(declare-fun trueRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402468 (= (trueRule!0 JsonLexer!371) (Rule!4783 (trueRe!0 JsonLexer!371) (String!17142 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338740 () Bool)

(assert (= bs!338740 d!402468))

(declare-fun m!1587205 () Bool)

(assert (=> bs!338740 m!1587205))

(assert (=> bs!338740 m!1586907))

(assert (=> d!402140 d!402468))

(declare-fun d!402504 () Bool)

(declare-fun colonRe!0 (JsonLexer!370) Regex!3805)

(assert (=> d!402504 (= (colonRule!0 JsonLexer!371) (Rule!4783 (colonRe!0 JsonLexer!371) (String!17142 "ccoolloonn") false (injection!9 KeywordValueInjection!169)))))

(declare-fun bs!338742 () Bool)

(assert (= bs!338742 d!402504))

(declare-fun m!1587211 () Bool)

(assert (=> bs!338742 m!1587211))

(assert (=> bs!338742 m!1586907))

(assert (=> d!402140 d!402504))

(declare-fun d!402508 () Bool)

(declare-fun intRe!0 (JsonLexer!370) Regex!3805)

(declare-datatypes ((IntegerValueInjection!84 0))(
  ( (IntegerValueInjection!85) )
))
(declare-fun injection!5 (IntegerValueInjection!84) TokenValueInjection!4822)

(assert (=> d!402508 (= (integerLiteralRule!0 JsonLexer!371) (Rule!4783 (intRe!0 JsonLexer!371) (String!17142 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!85)))))

(declare-fun bs!338744 () Bool)

(assert (= bs!338744 d!402508))

(declare-fun m!1587217 () Bool)

(assert (=> bs!338744 m!1587217))

(declare-fun m!1587219 () Bool)

(assert (=> bs!338744 m!1587219))

(assert (=> d!402140 d!402508))

(declare-fun d!402512 () Bool)

(declare-fun floatRe!0 (JsonLexer!370) Regex!3805)

(declare-datatypes ((FloatLiteralValueInjection!80 0))(
  ( (FloatLiteralValueInjection!81) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!80) TokenValueInjection!4822)

(assert (=> d!402512 (= (floatLiteralRule!0 JsonLexer!371) (Rule!4783 (floatRe!0 JsonLexer!371) (String!17142 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!81)))))

(declare-fun bs!338745 () Bool)

(assert (= bs!338745 d!402512))

(declare-fun m!1587221 () Bool)

(assert (=> bs!338745 m!1587221))

(declare-fun m!1587223 () Bool)

(assert (=> bs!338745 m!1587223))

(assert (=> d!402140 d!402512))

(declare-fun b!1409035 () Bool)

(declare-fun res!638181 () Bool)

(declare-fun e!899481 () Bool)

(assert (=> b!1409035 (=> (not res!638181) (not e!899481))))

(assert (=> b!1409035 (= res!638181 (not (isEmpty!8752 (left!12264 (right!12594 (c!231484 objs!24))))))))

(declare-fun b!1409036 () Bool)

(declare-fun e!899482 () Bool)

(assert (=> b!1409036 (= e!899482 e!899481)))

(declare-fun res!638178 () Bool)

(assert (=> b!1409036 (=> (not res!638178) (not e!899481))))

(assert (=> b!1409036 (= res!638178 (<= (- 1) (- (height!687 (left!12264 (right!12594 (c!231484 objs!24)))) (height!687 (right!12594 (right!12594 (c!231484 objs!24)))))))))

(declare-fun b!1409037 () Bool)

(declare-fun res!638177 () Bool)

(assert (=> b!1409037 (=> (not res!638177) (not e!899481))))

(assert (=> b!1409037 (= res!638177 (isBalanced!1400 (right!12594 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1409038 () Bool)

(assert (=> b!1409038 (= e!899481 (not (isEmpty!8752 (right!12594 (right!12594 (c!231484 objs!24))))))))

(declare-fun b!1409039 () Bool)

(declare-fun res!638182 () Bool)

(assert (=> b!1409039 (=> (not res!638182) (not e!899481))))

(assert (=> b!1409039 (= res!638182 (<= (- (height!687 (left!12264 (right!12594 (c!231484 objs!24)))) (height!687 (right!12594 (right!12594 (c!231484 objs!24))))) 1))))

(declare-fun d!402514 () Bool)

(declare-fun res!638179 () Bool)

(assert (=> d!402514 (=> res!638179 e!899482)))

(assert (=> d!402514 (= res!638179 (not ((_ is Node!4749) (right!12594 (c!231484 objs!24)))))))

(assert (=> d!402514 (= (isBalanced!1400 (right!12594 (c!231484 objs!24))) e!899482)))

(declare-fun b!1409040 () Bool)

(declare-fun res!638180 () Bool)

(assert (=> b!1409040 (=> (not res!638180) (not e!899481))))

(assert (=> b!1409040 (= res!638180 (isBalanced!1400 (left!12264 (right!12594 (c!231484 objs!24)))))))

(assert (= (and d!402514 (not res!638179)) b!1409036))

(assert (= (and b!1409036 res!638178) b!1409039))

(assert (= (and b!1409039 res!638182) b!1409040))

(assert (= (and b!1409040 res!638180) b!1409037))

(assert (= (and b!1409037 res!638177) b!1409035))

(assert (= (and b!1409035 res!638181) b!1409038))

(declare-fun m!1587227 () Bool)

(assert (=> b!1409040 m!1587227))

(declare-fun m!1587229 () Bool)

(assert (=> b!1409039 m!1587229))

(declare-fun m!1587231 () Bool)

(assert (=> b!1409039 m!1587231))

(declare-fun m!1587233 () Bool)

(assert (=> b!1409037 m!1587233))

(declare-fun m!1587235 () Bool)

(assert (=> b!1409038 m!1587235))

(declare-fun m!1587237 () Bool)

(assert (=> b!1409035 m!1587237))

(assert (=> b!1409036 m!1587229))

(assert (=> b!1409036 m!1587231))

(assert (=> b!1408685 d!402514))

(declare-fun b!1409051 () Bool)

(declare-fun e!899490 () Bool)

(declare-fun inv!16 (TokenValue!2581) Bool)

(assert (=> b!1409051 (= e!899490 (inv!16 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1409052 () Bool)

(declare-fun e!899491 () Bool)

(assert (=> b!1409052 (= e!899490 e!899491)))

(declare-fun c!231575 () Bool)

(assert (=> b!1409052 (= c!231575 ((_ is IntegerValue!7744) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1409053 () Bool)

(declare-fun res!638185 () Bool)

(declare-fun e!899489 () Bool)

(assert (=> b!1409053 (=> res!638185 e!899489)))

(assert (=> b!1409053 (= res!638185 (not ((_ is IntegerValue!7745) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))))

(assert (=> b!1409053 (= e!899491 e!899489)))

(declare-fun b!1409054 () Bool)

(declare-fun inv!17 (TokenValue!2581) Bool)

(assert (=> b!1409054 (= e!899491 (inv!17 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1409055 () Bool)

(declare-fun inv!15 (TokenValue!2581) Bool)

(assert (=> b!1409055 (= e!899489 (inv!15 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun d!402518 () Bool)

(declare-fun c!231574 () Bool)

(assert (=> d!402518 (= c!231574 ((_ is IntegerValue!7743) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))

(assert (=> d!402518 (= (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))) e!899490)))

(assert (= (and d!402518 c!231574) b!1409051))

(assert (= (and d!402518 (not c!231574)) b!1409052))

(assert (= (and b!1409052 c!231575) b!1409054))

(assert (= (and b!1409052 (not c!231575)) b!1409053))

(assert (= (and b!1409053 (not res!638185)) b!1409055))

(declare-fun m!1587239 () Bool)

(assert (=> b!1409051 m!1587239))

(declare-fun m!1587241 () Bool)

(assert (=> b!1409054 m!1587241))

(declare-fun m!1587243 () Bool)

(assert (=> b!1409055 m!1587243))

(assert (=> b!1408743 d!402518))

(declare-fun d!402520 () Bool)

(declare-fun lt!470303 () Int)

(assert (=> d!402520 (= lt!470303 (size!11819 (list!5621 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402520 (= lt!470303 (ite ((_ is Empty!4748) (left!12263 (c!231483 (tokens!1708 acc!229)))) 0 (ite ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 acc!229)))) (csize!9727 (left!12263 (c!231483 (tokens!1708 acc!229)))) (csize!9726 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> d!402520 (= (size!11820 (left!12263 (c!231483 (tokens!1708 acc!229)))) lt!470303)))

(declare-fun bs!338747 () Bool)

(assert (= bs!338747 d!402520))

(declare-fun m!1587245 () Bool)

(assert (=> bs!338747 m!1587245))

(assert (=> bs!338747 m!1587245))

(declare-fun m!1587247 () Bool)

(assert (=> bs!338747 m!1587247))

(assert (=> d!402260 d!402520))

(declare-fun d!402522 () Bool)

(declare-fun lt!470304 () Int)

(assert (=> d!402522 (= lt!470304 (size!11819 (list!5621 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402522 (= lt!470304 (ite ((_ is Empty!4748) (right!12593 (c!231483 (tokens!1708 acc!229)))) 0 (ite ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 acc!229)))) (csize!9727 (right!12593 (c!231483 (tokens!1708 acc!229)))) (csize!9726 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> d!402522 (= (size!11820 (right!12593 (c!231483 (tokens!1708 acc!229)))) lt!470304)))

(declare-fun bs!338748 () Bool)

(assert (= bs!338748 d!402522))

(declare-fun m!1587249 () Bool)

(assert (=> bs!338748 m!1587249))

(assert (=> bs!338748 m!1587249))

(declare-fun m!1587251 () Bool)

(assert (=> bs!338748 m!1587251))

(assert (=> d!402260 d!402522))

(declare-fun d!402524 () Bool)

(assert (=> d!402524 true))

(declare-fun lambda!62312 () Int)

(declare-fun order!8781 () Int)

(declare-fun dynLambda!6663 (Int Int) Int)

(assert (=> d!402524 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6663 order!8781 lambda!62312))))

(assert (=> d!402524 true))

(assert (=> d!402524 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6663 order!8781 lambda!62312))))

(declare-fun Forall!551 (Int) Bool)

(assert (=> d!402524 (= (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (Forall!551 lambda!62312))))

(declare-fun bs!338750 () Bool)

(assert (= bs!338750 d!402524))

(declare-fun m!1587255 () Bool)

(assert (=> bs!338750 m!1587255))

(assert (=> d!402116 d!402524))

(declare-fun d!402528 () Bool)

(assert (=> d!402528 true))

(declare-fun lt!470307 () Bool)

(declare-fun rulesValidInductive!808 (LexerInterface!2183 List!14431) Bool)

(assert (=> d!402528 (= lt!470307 (rulesValidInductive!808 Lexer!2181 (rules!10954 sep!3)))))

(declare-fun lambda!62315 () Int)

(declare-fun forall!3492 (List!14431 Int) Bool)

(assert (=> d!402528 (= lt!470307 (forall!3492 (rules!10954 sep!3) lambda!62315))))

(assert (=> d!402528 (= (rulesValid!937 Lexer!2181 (rules!10954 sep!3)) lt!470307)))

(declare-fun bs!338751 () Bool)

(assert (= bs!338751 d!402528))

(declare-fun m!1587257 () Bool)

(assert (=> bs!338751 m!1587257))

(declare-fun m!1587259 () Bool)

(assert (=> bs!338751 m!1587259))

(assert (=> d!402130 d!402528))

(declare-fun d!402530 () Bool)

(assert (=> d!402530 (= (inv!18695 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))) (<= (size!11819 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229)))))) 2147483647))))

(declare-fun bs!338752 () Bool)

(assert (= bs!338752 d!402530))

(declare-fun m!1587261 () Bool)

(assert (=> bs!338752 m!1587261))

(assert (=> b!1408734 d!402530))

(declare-fun d!402532 () Bool)

(declare-fun res!638186 () Bool)

(declare-fun e!899492 () Bool)

(assert (=> d!402532 (=> res!638186 e!899492)))

(assert (=> d!402532 (= res!638186 ((_ is Nil!14365) (rules!10954 sep!3)))))

(assert (=> d!402532 (= (noDuplicateTag!937 Lexer!2181 (rules!10954 sep!3) Nil!14368) e!899492)))

(declare-fun b!1409062 () Bool)

(declare-fun e!899493 () Bool)

(assert (=> b!1409062 (= e!899492 e!899493)))

(declare-fun res!638187 () Bool)

(assert (=> b!1409062 (=> (not res!638187) (not e!899493))))

(assert (=> b!1409062 (= res!638187 (not (contains!2841 Nil!14368 (tag!2753 (h!19766 (rules!10954 sep!3))))))))

(declare-fun b!1409063 () Bool)

(assert (=> b!1409063 (= e!899493 (noDuplicateTag!937 Lexer!2181 (t!123166 (rules!10954 sep!3)) (Cons!14368 (tag!2753 (h!19766 (rules!10954 sep!3))) Nil!14368)))))

(assert (= (and d!402532 (not res!638186)) b!1409062))

(assert (= (and b!1409062 res!638187) b!1409063))

(declare-fun m!1587263 () Bool)

(assert (=> b!1409062 m!1587263))

(declare-fun m!1587265 () Bool)

(assert (=> b!1409063 m!1587265))

(assert (=> b!1408384 d!402532))

(declare-fun d!402534 () Bool)

(assert (=> d!402534 (= (head!2632 (list!5616 (c!231484 objs!24))) (h!19767 (list!5616 (c!231484 objs!24))))))

(assert (=> d!402156 d!402534))

(assert (=> d!402156 d!402386))

(assert (=> d!402156 d!402258))

(declare-fun d!402536 () Bool)

(declare-fun c!231576 () Bool)

(assert (=> d!402536 (= c!231576 ((_ is Node!4748) (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun e!899494 () Bool)

(assert (=> d!402536 (= (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) e!899494)))

(declare-fun b!1409064 () Bool)

(assert (=> b!1409064 (= e!899494 (inv!18691 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409065 () Bool)

(declare-fun e!899495 () Bool)

(assert (=> b!1409065 (= e!899494 e!899495)))

(declare-fun res!638188 () Bool)

(assert (=> b!1409065 (= res!638188 (not ((_ is Leaf!7190) (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1409065 (=> res!638188 e!899495)))

(declare-fun b!1409066 () Bool)

(assert (=> b!1409066 (= e!899495 (inv!18692 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402536 c!231576) b!1409064))

(assert (= (and d!402536 (not c!231576)) b!1409065))

(assert (= (and b!1409065 (not res!638188)) b!1409066))

(declare-fun m!1587267 () Bool)

(assert (=> b!1409064 m!1587267))

(declare-fun m!1587269 () Bool)

(assert (=> b!1409066 m!1587269))

(assert (=> b!1408736 d!402536))

(declare-fun d!402538 () Bool)

(declare-fun c!231577 () Bool)

(assert (=> d!402538 (= c!231577 ((_ is Node!4748) (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun e!899496 () Bool)

(assert (=> d!402538 (= (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))) e!899496)))

(declare-fun b!1409067 () Bool)

(assert (=> b!1409067 (= e!899496 (inv!18691 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409068 () Bool)

(declare-fun e!899497 () Bool)

(assert (=> b!1409068 (= e!899496 e!899497)))

(declare-fun res!638189 () Bool)

(assert (=> b!1409068 (= res!638189 (not ((_ is Leaf!7190) (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1409068 (=> res!638189 e!899497)))

(declare-fun b!1409069 () Bool)

(assert (=> b!1409069 (= e!899497 (inv!18692 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402538 c!231577) b!1409067))

(assert (= (and d!402538 (not c!231577)) b!1409068))

(assert (= (and b!1409068 (not res!638189)) b!1409069))

(declare-fun m!1587271 () Bool)

(assert (=> b!1409067 m!1587271))

(declare-fun m!1587273 () Bool)

(assert (=> b!1409069 m!1587273))

(assert (=> b!1408736 d!402538))

(declare-fun d!402540 () Bool)

(declare-fun lt!470308 () Bool)

(assert (=> d!402540 (= lt!470308 (isEmpty!8758 (list!5621 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402540 (= lt!470308 (= (size!11820 (right!12593 (c!231483 (tokens!1708 acc!229)))) 0))))

(assert (=> d!402540 (= (isEmpty!8754 (right!12593 (c!231483 (tokens!1708 acc!229)))) lt!470308)))

(declare-fun bs!338753 () Bool)

(assert (= bs!338753 d!402540))

(assert (=> bs!338753 m!1587249))

(assert (=> bs!338753 m!1587249))

(declare-fun m!1587275 () Bool)

(assert (=> bs!338753 m!1587275))

(assert (=> bs!338753 m!1586549))

(assert (=> b!1408412 d!402540))

(declare-fun d!402542 () Bool)

(declare-fun lt!470404 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!188 (LexerInterface!2183 List!14430 List!14431) Bool)

(declare-fun dropList!428 (BalanceConc!9436 Int) List!14430)

(assert (=> d!402542 (= lt!470404 (tokensListTwoByTwoPredicateSeparableList!188 Lexer!2181 (dropList!428 (tokens!1708 sep!3) 0) (rules!10954 sep!3)))))

(declare-fun lt!470393 () Unit!20733)

(declare-fun lt!470423 () Unit!20733)

(assert (=> d!402542 (= lt!470393 lt!470423)))

(declare-fun lt!470416 () List!14430)

(assert (=> d!402542 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 sep!3) lt!470416)))

(declare-fun lt!470402 () List!14430)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!44 (LexerInterface!2183 List!14431 List!14430 List!14430) Unit!20733)

(assert (=> d!402542 (= lt!470423 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!44 Lexer!2181 (rules!10954 sep!3) lt!470402 lt!470416))))

(declare-fun e!899640 () Bool)

(assert (=> d!402542 e!899640))

(declare-fun res!638239 () Bool)

(assert (=> d!402542 (=> (not res!638239) (not e!899640))))

(assert (=> d!402542 (= res!638239 ((_ is Lexer!2181) Lexer!2181))))

(assert (=> d!402542 (= lt!470416 (dropList!428 (tokens!1708 sep!3) 0))))

(assert (=> d!402542 (= lt!470402 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470397 () Unit!20733)

(declare-fun lt!470398 () Unit!20733)

(assert (=> d!402542 (= lt!470397 lt!470398)))

(declare-fun lt!470406 () List!14430)

(declare-fun subseq!349 (List!14430 List!14430) Bool)

(declare-fun drop!695 (List!14430 Int) List!14430)

(assert (=> d!402542 (subseq!349 (drop!695 lt!470406 0) lt!470406)))

(declare-fun lemmaDropSubSeq!44 (List!14430 Int) Unit!20733)

(assert (=> d!402542 (= lt!470398 (lemmaDropSubSeq!44 lt!470406 0))))

(declare-fun e!899642 () Bool)

(assert (=> d!402542 e!899642))

(declare-fun res!638244 () Bool)

(assert (=> d!402542 (=> (not res!638244) (not e!899642))))

(assert (=> d!402542 (= res!638244 (>= 0 0))))

(assert (=> d!402542 (= lt!470406 (list!5613 (tokens!1708 sep!3)))))

(declare-fun e!899641 () Bool)

(assert (=> d!402542 (= lt!470404 e!899641)))

(declare-fun res!638243 () Bool)

(assert (=> d!402542 (=> res!638243 e!899641)))

(declare-fun size!11826 (BalanceConc!9436) Int)

(assert (=> d!402542 (= res!638243 (not (< 0 (- (size!11826 (tokens!1708 sep!3)) 1))))))

(declare-fun e!899643 () Bool)

(assert (=> d!402542 e!899643))

(declare-fun res!638242 () Bool)

(assert (=> d!402542 (=> (not res!638242) (not e!899643))))

(assert (=> d!402542 (= res!638242 (>= 0 0))))

(assert (=> d!402542 (= (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 sep!3) 0 (rules!10954 sep!3)) lt!470404)))

(declare-fun b!1409238 () Bool)

(assert (=> b!1409238 (= e!899640 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 sep!3) lt!470402))))

(declare-fun b!1409239 () Bool)

(assert (=> b!1409239 (= e!899642 (<= 0 (size!11819 lt!470406)))))

(declare-fun b!1409240 () Bool)

(assert (=> b!1409240 (= e!899643 (<= 0 (size!11826 (tokens!1708 sep!3))))))

(declare-fun b!1409241 () Bool)

(declare-fun res!638240 () Bool)

(assert (=> b!1409241 (=> (not res!638240) (not e!899640))))

(assert (=> b!1409241 (= res!638240 (not (isEmpty!8750 (rules!10954 sep!3))))))

(declare-fun b!1409242 () Bool)

(declare-fun e!899639 () Bool)

(assert (=> b!1409242 (= e!899639 (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 sep!3) (+ 0 1) (rules!10954 sep!3)))))

(declare-fun b!1409243 () Bool)

(assert (=> b!1409243 (= e!899641 e!899639)))

(declare-fun res!638238 () Bool)

(assert (=> b!1409243 (=> (not res!638238) (not e!899639))))

(declare-fun separableTokensPredicate!465 (LexerInterface!2183 Token!4644 Token!4644 List!14431) Bool)

(declare-fun apply!3683 (BalanceConc!9436 Int) Token!4644)

(assert (=> b!1409243 (= res!638238 (separableTokensPredicate!465 Lexer!2181 (apply!3683 (tokens!1708 sep!3) 0) (apply!3683 (tokens!1708 sep!3) (+ 0 1)) (rules!10954 sep!3)))))

(declare-fun lt!470396 () Unit!20733)

(declare-fun Unit!20741 () Unit!20733)

(assert (=> b!1409243 (= lt!470396 Unit!20741)))

(declare-fun size!11827 (BalanceConc!9434) Int)

(declare-fun charsOf!1459 (Token!4644) BalanceConc!9434)

(assert (=> b!1409243 (> (size!11827 (charsOf!1459 (apply!3683 (tokens!1708 sep!3) (+ 0 1)))) 0)))

(declare-fun lt!470412 () Unit!20733)

(declare-fun Unit!20742 () Unit!20733)

(assert (=> b!1409243 (= lt!470412 Unit!20742)))

(declare-fun rulesProduceIndividualToken!1151 (LexerInterface!2183 List!14431 Token!4644) Bool)

(assert (=> b!1409243 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) (apply!3683 (tokens!1708 sep!3) (+ 0 1)))))

(declare-fun lt!470422 () Unit!20733)

(declare-fun Unit!20743 () Unit!20733)

(assert (=> b!1409243 (= lt!470422 Unit!20743)))

(assert (=> b!1409243 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) (apply!3683 (tokens!1708 sep!3) 0))))

(declare-fun lt!470415 () Unit!20733)

(declare-fun lt!470414 () Unit!20733)

(assert (=> b!1409243 (= lt!470415 lt!470414)))

(declare-fun lt!470408 () Token!4644)

(assert (=> b!1409243 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) lt!470408)))

(declare-fun lt!470401 () List!14430)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!336 (LexerInterface!2183 List!14431 List!14430 Token!4644) Unit!20733)

(assert (=> b!1409243 (= lt!470414 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!336 Lexer!2181 (rules!10954 sep!3) lt!470401 lt!470408))))

(assert (=> b!1409243 (= lt!470408 (apply!3683 (tokens!1708 sep!3) (+ 0 1)))))

(assert (=> b!1409243 (= lt!470401 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470399 () Unit!20733)

(declare-fun lt!470403 () Unit!20733)

(assert (=> b!1409243 (= lt!470399 lt!470403)))

(declare-fun lt!470424 () Token!4644)

(assert (=> b!1409243 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) lt!470424)))

(declare-fun lt!470410 () List!14430)

(assert (=> b!1409243 (= lt!470403 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!336 Lexer!2181 (rules!10954 sep!3) lt!470410 lt!470424))))

(assert (=> b!1409243 (= lt!470424 (apply!3683 (tokens!1708 sep!3) 0))))

(assert (=> b!1409243 (= lt!470410 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470395 () Unit!20733)

(declare-fun lt!470419 () Unit!20733)

(assert (=> b!1409243 (= lt!470395 lt!470419)))

(declare-fun lt!470394 () List!14430)

(declare-fun lt!470413 () Int)

(declare-fun tail!2044 (List!14430) List!14430)

(assert (=> b!1409243 (= (tail!2044 (drop!695 lt!470394 lt!470413)) (drop!695 lt!470394 (+ lt!470413 1)))))

(declare-fun lemmaDropTail!430 (List!14430 Int) Unit!20733)

(assert (=> b!1409243 (= lt!470419 (lemmaDropTail!430 lt!470394 lt!470413))))

(assert (=> b!1409243 (= lt!470413 (+ 0 1))))

(assert (=> b!1409243 (= lt!470394 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470407 () Unit!20733)

(declare-fun lt!470392 () Unit!20733)

(assert (=> b!1409243 (= lt!470407 lt!470392)))

(declare-fun lt!470417 () List!14430)

(assert (=> b!1409243 (= (tail!2044 (drop!695 lt!470417 0)) (drop!695 lt!470417 (+ 0 1)))))

(assert (=> b!1409243 (= lt!470392 (lemmaDropTail!430 lt!470417 0))))

(assert (=> b!1409243 (= lt!470417 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470409 () Unit!20733)

(declare-fun lt!470405 () Unit!20733)

(assert (=> b!1409243 (= lt!470409 lt!470405)))

(declare-fun lt!470411 () List!14430)

(declare-fun lt!470421 () Int)

(declare-fun head!2635 (List!14430) Token!4644)

(declare-fun apply!3684 (List!14430 Int) Token!4644)

(assert (=> b!1409243 (= (head!2635 (drop!695 lt!470411 lt!470421)) (apply!3684 lt!470411 lt!470421))))

(declare-fun lemmaDropApply!450 (List!14430 Int) Unit!20733)

(assert (=> b!1409243 (= lt!470405 (lemmaDropApply!450 lt!470411 lt!470421))))

(assert (=> b!1409243 (= lt!470421 (+ 0 1))))

(assert (=> b!1409243 (= lt!470411 (list!5613 (tokens!1708 sep!3)))))

(declare-fun lt!470400 () Unit!20733)

(declare-fun lt!470418 () Unit!20733)

(assert (=> b!1409243 (= lt!470400 lt!470418)))

(declare-fun lt!470420 () List!14430)

(assert (=> b!1409243 (= (head!2635 (drop!695 lt!470420 0)) (apply!3684 lt!470420 0))))

(assert (=> b!1409243 (= lt!470418 (lemmaDropApply!450 lt!470420 0))))

(assert (=> b!1409243 (= lt!470420 (list!5613 (tokens!1708 sep!3)))))

(declare-fun b!1409244 () Bool)

(declare-fun res!638241 () Bool)

(assert (=> b!1409244 (=> (not res!638241) (not e!899640))))

(assert (=> b!1409244 (= res!638241 (subseq!349 lt!470416 lt!470402))))

(declare-fun b!1409245 () Bool)

(declare-fun res!638245 () Bool)

(assert (=> b!1409245 (=> (not res!638245) (not e!899640))))

(assert (=> b!1409245 (= res!638245 (rulesInvariant!2053 Lexer!2181 (rules!10954 sep!3)))))

(assert (= (and d!402542 res!638242) b!1409240))

(assert (= (and d!402542 (not res!638243)) b!1409243))

(assert (= (and b!1409243 res!638238) b!1409242))

(assert (= (and d!402542 res!638244) b!1409239))

(assert (= (and d!402542 res!638239) b!1409241))

(assert (= (and b!1409241 res!638240) b!1409245))

(assert (= (and b!1409245 res!638245) b!1409244))

(assert (= (and b!1409244 res!638241) b!1409238))

(assert (=> b!1409241 m!1586023))

(declare-fun m!1587601 () Bool)

(assert (=> b!1409240 m!1587601))

(declare-fun m!1587603 () Bool)

(assert (=> b!1409244 m!1587603))

(declare-fun m!1587605 () Bool)

(assert (=> b!1409242 m!1587605))

(assert (=> b!1409245 m!1586025))

(declare-fun m!1587607 () Bool)

(assert (=> b!1409238 m!1587607))

(declare-fun m!1587609 () Bool)

(assert (=> b!1409239 m!1587609))

(assert (=> d!402542 m!1586169))

(declare-fun m!1587611 () Bool)

(assert (=> d!402542 m!1587611))

(declare-fun m!1587613 () Bool)

(assert (=> d!402542 m!1587613))

(declare-fun m!1587615 () Bool)

(assert (=> d!402542 m!1587615))

(declare-fun m!1587617 () Bool)

(assert (=> d!402542 m!1587617))

(declare-fun m!1587619 () Bool)

(assert (=> d!402542 m!1587619))

(declare-fun m!1587621 () Bool)

(assert (=> d!402542 m!1587621))

(assert (=> d!402542 m!1587601))

(assert (=> d!402542 m!1587611))

(declare-fun m!1587623 () Bool)

(assert (=> d!402542 m!1587623))

(assert (=> d!402542 m!1587615))

(declare-fun m!1587625 () Bool)

(assert (=> b!1409243 m!1587625))

(declare-fun m!1587627 () Bool)

(assert (=> b!1409243 m!1587627))

(declare-fun m!1587629 () Bool)

(assert (=> b!1409243 m!1587629))

(declare-fun m!1587631 () Bool)

(assert (=> b!1409243 m!1587631))

(declare-fun m!1587633 () Bool)

(assert (=> b!1409243 m!1587633))

(assert (=> b!1409243 m!1587633))

(declare-fun m!1587635 () Bool)

(assert (=> b!1409243 m!1587635))

(assert (=> b!1409243 m!1587627))

(assert (=> b!1409243 m!1587631))

(declare-fun m!1587637 () Bool)

(assert (=> b!1409243 m!1587637))

(assert (=> b!1409243 m!1587631))

(declare-fun m!1587639 () Bool)

(assert (=> b!1409243 m!1587639))

(declare-fun m!1587641 () Bool)

(assert (=> b!1409243 m!1587641))

(declare-fun m!1587643 () Bool)

(assert (=> b!1409243 m!1587643))

(declare-fun m!1587645 () Bool)

(assert (=> b!1409243 m!1587645))

(declare-fun m!1587647 () Bool)

(assert (=> b!1409243 m!1587647))

(declare-fun m!1587649 () Bool)

(assert (=> b!1409243 m!1587649))

(declare-fun m!1587651 () Bool)

(assert (=> b!1409243 m!1587651))

(assert (=> b!1409243 m!1587631))

(declare-fun m!1587653 () Bool)

(assert (=> b!1409243 m!1587653))

(assert (=> b!1409243 m!1586169))

(assert (=> b!1409243 m!1587643))

(assert (=> b!1409243 m!1587625))

(declare-fun m!1587655 () Bool)

(assert (=> b!1409243 m!1587655))

(declare-fun m!1587657 () Bool)

(assert (=> b!1409243 m!1587657))

(declare-fun m!1587659 () Bool)

(assert (=> b!1409243 m!1587659))

(declare-fun m!1587661 () Bool)

(assert (=> b!1409243 m!1587661))

(declare-fun m!1587663 () Bool)

(assert (=> b!1409243 m!1587663))

(declare-fun m!1587665 () Bool)

(assert (=> b!1409243 m!1587665))

(assert (=> b!1409243 m!1587665))

(declare-fun m!1587667 () Bool)

(assert (=> b!1409243 m!1587667))

(declare-fun m!1587669 () Bool)

(assert (=> b!1409243 m!1587669))

(declare-fun m!1587671 () Bool)

(assert (=> b!1409243 m!1587671))

(assert (=> b!1409243 m!1587627))

(assert (=> b!1409243 m!1587639))

(declare-fun m!1587673 () Bool)

(assert (=> b!1409243 m!1587673))

(declare-fun m!1587675 () Bool)

(assert (=> b!1409243 m!1587675))

(declare-fun m!1587677 () Bool)

(assert (=> b!1409243 m!1587677))

(assert (=> d!402194 d!402542))

(declare-fun d!402652 () Bool)

(declare-fun res!638246 () Bool)

(declare-fun e!899644 () Bool)

(assert (=> d!402652 (=> (not res!638246) (not e!899644))))

(assert (=> d!402652 (= res!638246 (not (isEmpty!8750 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))))))

(assert (=> d!402652 (= (inv!18682 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))) e!899644)))

(declare-fun b!1409246 () Bool)

(declare-fun res!638247 () Bool)

(assert (=> b!1409246 (=> (not res!638247) (not e!899644))))

(assert (=> b!1409246 (= res!638247 (rulesInvariant!2053 Lexer!2181 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))))

(declare-fun b!1409247 () Bool)

(declare-fun res!638248 () Bool)

(assert (=> b!1409247 (=> (not res!638248) (not e!899644))))

(assert (=> b!1409247 (= res!638248 (rulesProduceEachTokenIndividually!780 Lexer!2181 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))) (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))))

(declare-fun b!1409248 () Bool)

(assert (=> b!1409248 (= e!899644 (separableTokens!165 Lexer!2181 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))) (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))))

(assert (= (and d!402652 res!638246) b!1409246))

(assert (= (and b!1409246 res!638247) b!1409247))

(assert (= (and b!1409247 res!638248) b!1409248))

(declare-fun m!1587679 () Bool)

(assert (=> d!402652 m!1587679))

(declare-fun m!1587681 () Bool)

(assert (=> b!1409246 m!1587681))

(declare-fun m!1587683 () Bool)

(assert (=> b!1409247 m!1587683))

(declare-fun m!1587685 () Bool)

(assert (=> b!1409248 m!1587685))

(assert (=> b!1408727 d!402652))

(declare-fun b!1409249 () Bool)

(declare-fun e!899645 () Bool)

(declare-fun e!899646 () Bool)

(assert (=> b!1409249 (= e!899645 e!899646)))

(declare-fun res!638252 () Bool)

(assert (=> b!1409249 (=> (not res!638252) (not e!899646))))

(assert (=> b!1409249 (= res!638252 (<= (- 1) (- (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409250 () Bool)

(declare-fun res!638253 () Bool)

(assert (=> b!1409250 (=> (not res!638253) (not e!899646))))

(assert (=> b!1409250 (= res!638253 (not (isEmpty!8754 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun b!1409251 () Bool)

(declare-fun res!638254 () Bool)

(assert (=> b!1409251 (=> (not res!638254) (not e!899646))))

(assert (=> b!1409251 (= res!638254 (isBalanced!1399 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409252 () Bool)

(assert (=> b!1409252 (= e!899646 (not (isEmpty!8754 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun d!402654 () Bool)

(declare-fun res!638251 () Bool)

(assert (=> d!402654 (=> res!638251 e!899645)))

(assert (=> d!402654 (= res!638251 (not ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402654 (= (isBalanced!1399 (left!12263 (c!231483 (tokens!1708 sep!3)))) e!899645)))

(declare-fun b!1409253 () Bool)

(declare-fun res!638249 () Bool)

(assert (=> b!1409253 (=> (not res!638249) (not e!899646))))

(assert (=> b!1409253 (= res!638249 (isBalanced!1399 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409254 () Bool)

(declare-fun res!638250 () Bool)

(assert (=> b!1409254 (=> (not res!638250) (not e!899646))))

(assert (=> b!1409254 (= res!638250 (<= (- (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) 1))))

(assert (= (and d!402654 (not res!638251)) b!1409249))

(assert (= (and b!1409249 res!638252) b!1409254))

(assert (= (and b!1409254 res!638250) b!1409251))

(assert (= (and b!1409251 res!638254) b!1409253))

(assert (= (and b!1409253 res!638249) b!1409250))

(assert (= (and b!1409250 res!638253) b!1409252))

(declare-fun m!1587687 () Bool)

(assert (=> b!1409252 m!1587687))

(assert (=> b!1409254 m!1586819))

(assert (=> b!1409254 m!1586821))

(declare-fun m!1587689 () Bool)

(assert (=> b!1409251 m!1587689))

(assert (=> b!1409249 m!1586819))

(assert (=> b!1409249 m!1586821))

(declare-fun m!1587691 () Bool)

(assert (=> b!1409253 m!1587691))

(declare-fun m!1587693 () Bool)

(assert (=> b!1409250 m!1587693))

(assert (=> b!1408661 d!402654))

(declare-fun d!402656 () Bool)

(declare-fun res!638255 () Bool)

(declare-fun e!899647 () Bool)

(assert (=> d!402656 (=> (not res!638255) (not e!899647))))

(assert (=> d!402656 (= res!638255 (<= (size!11815 (list!5615 (xs!7476 (right!12594 (c!231484 objs!24))))) 512))))

(assert (=> d!402656 (= (inv!18694 (right!12594 (c!231484 objs!24))) e!899647)))

(declare-fun b!1409255 () Bool)

(declare-fun res!638256 () Bool)

(assert (=> b!1409255 (=> (not res!638256) (not e!899647))))

(assert (=> b!1409255 (= res!638256 (= (csize!9729 (right!12594 (c!231484 objs!24))) (size!11815 (list!5615 (xs!7476 (right!12594 (c!231484 objs!24)))))))))

(declare-fun b!1409256 () Bool)

(assert (=> b!1409256 (= e!899647 (and (> (csize!9729 (right!12594 (c!231484 objs!24))) 0) (<= (csize!9729 (right!12594 (c!231484 objs!24))) 512)))))

(assert (= (and d!402656 res!638255) b!1409255))

(assert (= (and b!1409255 res!638256) b!1409256))

(declare-fun m!1587695 () Bool)

(assert (=> d!402656 m!1587695))

(assert (=> d!402656 m!1587695))

(declare-fun m!1587697 () Bool)

(assert (=> d!402656 m!1587697))

(assert (=> b!1409255 m!1587695))

(assert (=> b!1409255 m!1587695))

(assert (=> b!1409255 m!1587697))

(assert (=> b!1408348 d!402656))

(declare-fun d!402658 () Bool)

(declare-fun lt!470425 () Int)

(assert (=> d!402658 (>= lt!470425 0)))

(declare-fun e!899648 () Int)

(assert (=> d!402658 (= lt!470425 e!899648)))

(declare-fun c!231594 () Bool)

(assert (=> d!402658 (= c!231594 ((_ is Nil!14366) (t!123167 (list!5609 objs!24))))))

(assert (=> d!402658 (= (size!11815 (t!123167 (list!5609 objs!24))) lt!470425)))

(declare-fun b!1409257 () Bool)

(assert (=> b!1409257 (= e!899648 0)))

(declare-fun b!1409258 () Bool)

(assert (=> b!1409258 (= e!899648 (+ 1 (size!11815 (t!123167 (t!123167 (list!5609 objs!24))))))))

(assert (= (and d!402658 c!231594) b!1409257))

(assert (= (and d!402658 (not c!231594)) b!1409258))

(declare-fun m!1587699 () Bool)

(assert (=> b!1409258 m!1587699))

(assert (=> b!1408483 d!402658))

(declare-fun b!1409259 () Bool)

(declare-fun res!638261 () Bool)

(declare-fun e!899649 () Bool)

(assert (=> b!1409259 (=> (not res!638261) (not e!899649))))

(assert (=> b!1409259 (= res!638261 (not (isEmpty!8752 (left!12264 (left!12264 (c!231484 objs!24))))))))

(declare-fun b!1409260 () Bool)

(declare-fun e!899650 () Bool)

(assert (=> b!1409260 (= e!899650 e!899649)))

(declare-fun res!638258 () Bool)

(assert (=> b!1409260 (=> (not res!638258) (not e!899649))))

(assert (=> b!1409260 (= res!638258 (<= (- 1) (- (height!687 (left!12264 (left!12264 (c!231484 objs!24)))) (height!687 (right!12594 (left!12264 (c!231484 objs!24)))))))))

(declare-fun b!1409261 () Bool)

(declare-fun res!638257 () Bool)

(assert (=> b!1409261 (=> (not res!638257) (not e!899649))))

(assert (=> b!1409261 (= res!638257 (isBalanced!1400 (right!12594 (left!12264 (c!231484 objs!24)))))))

(declare-fun b!1409262 () Bool)

(assert (=> b!1409262 (= e!899649 (not (isEmpty!8752 (right!12594 (left!12264 (c!231484 objs!24))))))))

(declare-fun b!1409263 () Bool)

(declare-fun res!638262 () Bool)

(assert (=> b!1409263 (=> (not res!638262) (not e!899649))))

(assert (=> b!1409263 (= res!638262 (<= (- (height!687 (left!12264 (left!12264 (c!231484 objs!24)))) (height!687 (right!12594 (left!12264 (c!231484 objs!24))))) 1))))

(declare-fun d!402660 () Bool)

(declare-fun res!638259 () Bool)

(assert (=> d!402660 (=> res!638259 e!899650)))

(assert (=> d!402660 (= res!638259 (not ((_ is Node!4749) (left!12264 (c!231484 objs!24)))))))

(assert (=> d!402660 (= (isBalanced!1400 (left!12264 (c!231484 objs!24))) e!899650)))

(declare-fun b!1409264 () Bool)

(declare-fun res!638260 () Bool)

(assert (=> b!1409264 (=> (not res!638260) (not e!899649))))

(assert (=> b!1409264 (= res!638260 (isBalanced!1400 (left!12264 (left!12264 (c!231484 objs!24)))))))

(assert (= (and d!402660 (not res!638259)) b!1409260))

(assert (= (and b!1409260 res!638258) b!1409263))

(assert (= (and b!1409263 res!638262) b!1409264))

(assert (= (and b!1409264 res!638260) b!1409261))

(assert (= (and b!1409261 res!638257) b!1409259))

(assert (= (and b!1409259 res!638261) b!1409262))

(declare-fun m!1587701 () Bool)

(assert (=> b!1409264 m!1587701))

(declare-fun m!1587703 () Bool)

(assert (=> b!1409263 m!1587703))

(declare-fun m!1587705 () Bool)

(assert (=> b!1409263 m!1587705))

(declare-fun m!1587707 () Bool)

(assert (=> b!1409261 m!1587707))

(declare-fun m!1587709 () Bool)

(assert (=> b!1409262 m!1587709))

(declare-fun m!1587711 () Bool)

(assert (=> b!1409259 m!1587711))

(assert (=> b!1409260 m!1587703))

(assert (=> b!1409260 m!1587705))

(assert (=> b!1408688 d!402660))

(declare-fun d!402662 () Bool)

(assert (=> d!402662 (= (inv!18695 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))) (<= (size!11819 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3)))))) 2147483647))))

(declare-fun bs!338781 () Bool)

(assert (= bs!338781 d!402662))

(declare-fun m!1587713 () Bool)

(assert (=> bs!338781 m!1587713))

(assert (=> b!1408740 d!402662))

(declare-fun d!402664 () Bool)

(assert (=> d!402664 (= (inv!18695 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))) (<= (size!11819 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229)))))) 2147483647))))

(declare-fun bs!338782 () Bool)

(assert (= bs!338782 d!402664))

(declare-fun m!1587715 () Bool)

(assert (=> bs!338782 m!1587715))

(assert (=> b!1408731 d!402664))

(declare-fun d!402666 () Bool)

(declare-fun lt!470428 () PrintableTokens!764)

(declare-fun apply!3685 (List!14432 Int) PrintableTokens!764)

(assert (=> d!402666 (= lt!470428 (apply!3685 (list!5615 (xs!7476 (c!231484 objs!24))) 0))))

(declare-fun choose!8706 (IArray!9503 Int) PrintableTokens!764)

(assert (=> d!402666 (= lt!470428 (choose!8706 (xs!7476 (c!231484 objs!24)) 0))))

(declare-fun e!899653 () Bool)

(assert (=> d!402666 e!899653))

(declare-fun res!638265 () Bool)

(assert (=> d!402666 (=> (not res!638265) (not e!899653))))

(assert (=> d!402666 (= res!638265 (<= 0 0))))

(assert (=> d!402666 (= (apply!3679 (xs!7476 (c!231484 objs!24)) 0) lt!470428)))

(declare-fun b!1409267 () Bool)

(declare-fun size!11828 (IArray!9503) Int)

(assert (=> b!1409267 (= e!899653 (< 0 (size!11828 (xs!7476 (c!231484 objs!24)))))))

(assert (= (and d!402666 res!638265) b!1409267))

(assert (=> d!402666 m!1586185))

(assert (=> d!402666 m!1586185))

(declare-fun m!1587717 () Bool)

(assert (=> d!402666 m!1587717))

(declare-fun m!1587719 () Bool)

(assert (=> d!402666 m!1587719))

(declare-fun m!1587721 () Bool)

(assert (=> b!1409267 m!1587721))

(assert (=> b!1408419 d!402666))

(declare-fun bs!338783 () Bool)

(declare-fun d!402668 () Bool)

(assert (= bs!338783 (and d!402668 d!402528)))

(declare-fun lambda!62319 () Int)

(assert (=> bs!338783 (= lambda!62319 lambda!62315)))

(assert (=> d!402668 true))

(declare-fun lt!470429 () Bool)

(assert (=> d!402668 (= lt!470429 (rulesValidInductive!808 Lexer!2181 (rules!10954 acc!229)))))

(assert (=> d!402668 (= lt!470429 (forall!3492 (rules!10954 acc!229) lambda!62319))))

(assert (=> d!402668 (= (rulesValid!937 Lexer!2181 (rules!10954 acc!229)) lt!470429)))

(declare-fun bs!338784 () Bool)

(assert (= bs!338784 d!402668))

(declare-fun m!1587723 () Bool)

(assert (=> bs!338784 m!1587723))

(declare-fun m!1587725 () Bool)

(assert (=> bs!338784 m!1587725))

(assert (=> d!402262 d!402668))

(declare-fun d!402670 () Bool)

(declare-fun lt!470430 () Int)

(assert (=> d!402670 (>= lt!470430 0)))

(declare-fun e!899654 () Int)

(assert (=> d!402670 (= lt!470430 e!899654)))

(declare-fun c!231595 () Bool)

(assert (=> d!402670 (= c!231595 ((_ is Nil!14366) (list!5616 (c!231484 objs!24))))))

(assert (=> d!402670 (= (size!11815 (list!5616 (c!231484 objs!24))) lt!470430)))

(declare-fun b!1409268 () Bool)

(assert (=> b!1409268 (= e!899654 0)))

(declare-fun b!1409269 () Bool)

(assert (=> b!1409269 (= e!899654 (+ 1 (size!11815 (t!123167 (list!5616 (c!231484 objs!24))))))))

(assert (= (and d!402670 c!231595) b!1409268))

(assert (= (and d!402670 (not c!231595)) b!1409269))

(declare-fun m!1587727 () Bool)

(assert (=> b!1409269 m!1587727))

(assert (=> d!402184 d!402670))

(assert (=> d!402184 d!402386))

(declare-fun d!402672 () Bool)

(declare-fun res!638266 () Bool)

(declare-fun e!899655 () Bool)

(assert (=> d!402672 (=> (not res!638266) (not e!899655))))

(assert (=> d!402672 (= res!638266 (<= (size!11819 (list!5617 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3)))))) 512))))

(assert (=> d!402672 (= (inv!18692 (left!12263 (c!231483 (tokens!1708 sep!3)))) e!899655)))

(declare-fun b!1409270 () Bool)

(declare-fun res!638267 () Bool)

(assert (=> b!1409270 (=> (not res!638267) (not e!899655))))

(assert (=> b!1409270 (= res!638267 (= (csize!9727 (left!12263 (c!231483 (tokens!1708 sep!3)))) (size!11819 (list!5617 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409271 () Bool)

(assert (=> b!1409271 (= e!899655 (and (> (csize!9727 (left!12263 (c!231483 (tokens!1708 sep!3)))) 0) (<= (csize!9727 (left!12263 (c!231483 (tokens!1708 sep!3)))) 512)))))

(assert (= (and d!402672 res!638266) b!1409270))

(assert (= (and b!1409270 res!638267) b!1409271))

(declare-fun m!1587729 () Bool)

(assert (=> d!402672 m!1587729))

(assert (=> d!402672 m!1587729))

(declare-fun m!1587731 () Bool)

(assert (=> d!402672 m!1587731))

(assert (=> b!1409270 m!1587729))

(assert (=> b!1409270 m!1587729))

(assert (=> b!1409270 m!1587731))

(assert (=> b!1408393 d!402672))

(declare-fun d!402674 () Bool)

(declare-fun res!638268 () Bool)

(declare-fun e!899656 () Bool)

(assert (=> d!402674 (=> (not res!638268) (not e!899656))))

(assert (=> d!402674 (= res!638268 (not (isEmpty!8757 (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))))

(assert (=> d!402674 (= (inv!18699 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))) e!899656)))

(declare-fun b!1409272 () Bool)

(declare-fun res!638269 () Bool)

(assert (=> b!1409272 (=> (not res!638269) (not e!899656))))

(assert (=> b!1409272 (= res!638269 (= (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))) (list!5620 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))))))

(declare-fun b!1409273 () Bool)

(assert (=> b!1409273 (= e!899656 (= (size!11811 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))) (size!11825 (originalCharacters!3353 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))))

(assert (= (and d!402674 res!638268) b!1409272))

(assert (= (and b!1409272 res!638269) b!1409273))

(declare-fun b_lambda!44469 () Bool)

(assert (=> (not b_lambda!44469) (not b!1409272)))

(declare-fun t!123304 () Bool)

(declare-fun tb!73281 () Bool)

(assert (=> (and b!1408712 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123304) tb!73281))

(declare-fun b!1409274 () Bool)

(declare-fun e!899657 () Bool)

(declare-fun tp!400125 () Bool)

(assert (=> b!1409274 (= e!899657 (and (inv!18702 (c!231482 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) tp!400125))))

(declare-fun result!89146 () Bool)

(assert (=> tb!73281 (= result!89146 (and (inv!18703 (dynLambda!6661 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) e!899657))))

(assert (= tb!73281 b!1409274))

(declare-fun m!1587733 () Bool)

(assert (=> b!1409274 m!1587733))

(declare-fun m!1587735 () Bool)

(assert (=> tb!73281 m!1587735))

(assert (=> b!1409272 t!123304))

(declare-fun b_and!94399 () Bool)

(assert (= b_and!94333 (and (=> t!123304 result!89146) b_and!94399)))

(declare-fun tb!73283 () Bool)

(declare-fun t!123306 () Bool)

(assert (=> (and b!1408322 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123306) tb!73283))

(declare-fun result!89148 () Bool)

(assert (= result!89148 result!89146))

(assert (=> b!1409272 t!123306))

(declare-fun b_and!94401 () Bool)

(assert (= b_and!94335 (and (=> t!123306 result!89148) b_and!94401)))

(declare-fun t!123308 () Bool)

(declare-fun tb!73285 () Bool)

(assert (=> (and b!1408325 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123308) tb!73285))

(declare-fun result!89150 () Bool)

(assert (= result!89150 result!89146))

(assert (=> b!1409272 t!123308))

(declare-fun b_and!94403 () Bool)

(assert (= b_and!94331 (and (=> t!123308 result!89150) b_and!94403)))

(declare-fun tb!73287 () Bool)

(declare-fun t!123310 () Bool)

(assert (=> (and b!1408748 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123310) tb!73287))

(declare-fun result!89152 () Bool)

(assert (= result!89152 result!89146))

(assert (=> b!1409272 t!123310))

(declare-fun b_and!94405 () Bool)

(assert (= b_and!94337 (and (=> t!123310 result!89152) b_and!94405)))

(declare-fun t!123312 () Bool)

(declare-fun tb!73289 () Bool)

(assert (=> (and b!1408745 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123312) tb!73289))

(declare-fun result!89154 () Bool)

(assert (= result!89154 result!89146))

(assert (=> b!1409272 t!123312))

(declare-fun b_and!94407 () Bool)

(assert (= b_and!94329 (and (=> t!123312 result!89154) b_and!94407)))

(declare-fun t!123314 () Bool)

(declare-fun tb!73291 () Bool)

(assert (=> (and b!1408751 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123314) tb!73291))

(declare-fun result!89156 () Bool)

(assert (= result!89156 result!89146))

(assert (=> b!1409272 t!123314))

(declare-fun b_and!94409 () Bool)

(assert (= b_and!94327 (and (=> t!123314 result!89156) b_and!94409)))

(declare-fun m!1587737 () Bool)

(assert (=> d!402674 m!1587737))

(declare-fun m!1587739 () Bool)

(assert (=> b!1409272 m!1587739))

(assert (=> b!1409272 m!1587739))

(declare-fun m!1587741 () Bool)

(assert (=> b!1409272 m!1587741))

(declare-fun m!1587743 () Bool)

(assert (=> b!1409273 m!1587743))

(assert (=> b!1408742 d!402674))

(declare-fun d!402676 () Bool)

(declare-fun lt!470431 () Int)

(assert (=> d!402676 (>= lt!470431 0)))

(declare-fun e!899658 () Int)

(assert (=> d!402676 (= lt!470431 e!899658)))

(declare-fun c!231596 () Bool)

(assert (=> d!402676 (= c!231596 ((_ is Nil!14364) (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402676 (= (size!11819 (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3))))) lt!470431)))

(declare-fun b!1409275 () Bool)

(assert (=> b!1409275 (= e!899658 0)))

(declare-fun b!1409276 () Bool)

(assert (=> b!1409276 (= e!899658 (+ 1 (size!11819 (t!123165 (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(assert (= (and d!402676 c!231596) b!1409275))

(assert (= (and d!402676 (not c!231596)) b!1409276))

(declare-fun m!1587745 () Bool)

(assert (=> b!1409276 m!1587745))

(assert (=> b!1408693 d!402676))

(declare-fun d!402678 () Bool)

(assert (=> d!402678 (= (list!5617 (xs!7475 (c!231483 (tokens!1708 sep!3)))) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))

(assert (=> b!1408693 d!402678))

(declare-fun d!402680 () Bool)

(assert (=> d!402680 (= (height!687 (left!12264 (c!231484 objs!24))) (ite ((_ is Empty!4749) (left!12264 (c!231484 objs!24))) 0 (ite ((_ is Leaf!7191) (left!12264 (c!231484 objs!24))) 1 (cheight!4960 (left!12264 (c!231484 objs!24))))))))

(assert (=> b!1408684 d!402680))

(declare-fun d!402682 () Bool)

(assert (=> d!402682 (= (height!687 (right!12594 (c!231484 objs!24))) (ite ((_ is Empty!4749) (right!12594 (c!231484 objs!24))) 0 (ite ((_ is Leaf!7191) (right!12594 (c!231484 objs!24))) 1 (cheight!4960 (right!12594 (c!231484 objs!24))))))))

(assert (=> b!1408684 d!402682))

(declare-fun d!402684 () Bool)

(assert (=> d!402684 (= (max!0 (height!687 (left!12264 (c!231484 objs!24))) (height!687 (right!12594 (c!231484 objs!24)))) (ite (< (height!687 (left!12264 (c!231484 objs!24))) (height!687 (right!12594 (c!231484 objs!24)))) (height!687 (right!12594 (c!231484 objs!24))) (height!687 (left!12264 (c!231484 objs!24)))))))

(assert (=> b!1408512 d!402684))

(assert (=> b!1408512 d!402680))

(assert (=> b!1408512 d!402682))

(declare-fun d!402686 () Bool)

(declare-fun res!638270 () Bool)

(declare-fun e!899659 () Bool)

(assert (=> d!402686 (=> (not res!638270) (not e!899659))))

(assert (=> d!402686 (= res!638270 (= (csize!9726 (left!12263 (c!231483 (tokens!1708 acc!229)))) (+ (size!11820 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) (size!11820 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))))

(assert (=> d!402686 (= (inv!18691 (left!12263 (c!231483 (tokens!1708 acc!229)))) e!899659)))

(declare-fun b!1409277 () Bool)

(declare-fun res!638271 () Bool)

(assert (=> b!1409277 (=> (not res!638271) (not e!899659))))

(assert (=> b!1409277 (= res!638271 (and (not (= (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))) Empty!4748)) (not (= (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))) Empty!4748))))))

(declare-fun b!1409278 () Bool)

(declare-fun res!638272 () Bool)

(assert (=> b!1409278 (=> (not res!638272) (not e!899659))))

(assert (=> b!1409278 (= res!638272 (= (cheight!4959 (left!12263 (c!231483 (tokens!1708 acc!229)))) (+ (max!0 (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) 1)))))

(declare-fun b!1409279 () Bool)

(assert (=> b!1409279 (= e!899659 (<= 0 (cheight!4959 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402686 res!638270) b!1409277))

(assert (= (and b!1409277 res!638271) b!1409278))

(assert (= (and b!1409278 res!638272) b!1409279))

(declare-fun m!1587747 () Bool)

(assert (=> d!402686 m!1587747))

(declare-fun m!1587749 () Bool)

(assert (=> d!402686 m!1587749))

(declare-fun m!1587751 () Bool)

(assert (=> b!1409278 m!1587751))

(declare-fun m!1587753 () Bool)

(assert (=> b!1409278 m!1587753))

(assert (=> b!1409278 m!1587751))

(assert (=> b!1409278 m!1587753))

(declare-fun m!1587755 () Bool)

(assert (=> b!1409278 m!1587755))

(assert (=> b!1408665 d!402686))

(declare-fun d!402688 () Bool)

(declare-fun lt!470432 () Int)

(assert (=> d!402688 (= lt!470432 (size!11819 (list!5621 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402688 (= lt!470432 (ite ((_ is Empty!4748) (left!12263 (c!231483 (tokens!1708 sep!3)))) 0 (ite ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 sep!3)))) (csize!9727 (left!12263 (c!231483 (tokens!1708 sep!3)))) (csize!9726 (left!12263 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> d!402688 (= (size!11820 (left!12263 (c!231483 (tokens!1708 sep!3)))) lt!470432)))

(declare-fun bs!338785 () Bool)

(assert (= bs!338785 d!402688))

(declare-fun m!1587757 () Bool)

(assert (=> bs!338785 m!1587757))

(assert (=> bs!338785 m!1587757))

(declare-fun m!1587759 () Bool)

(assert (=> bs!338785 m!1587759))

(assert (=> d!402190 d!402688))

(declare-fun d!402690 () Bool)

(declare-fun lt!470433 () Int)

(assert (=> d!402690 (= lt!470433 (size!11819 (list!5621 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402690 (= lt!470433 (ite ((_ is Empty!4748) (right!12593 (c!231483 (tokens!1708 sep!3)))) 0 (ite ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 sep!3)))) (csize!9727 (right!12593 (c!231483 (tokens!1708 sep!3)))) (csize!9726 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> d!402690 (= (size!11820 (right!12593 (c!231483 (tokens!1708 sep!3)))) lt!470433)))

(declare-fun bs!338786 () Bool)

(assert (= bs!338786 d!402690))

(assert (=> bs!338786 m!1586883))

(assert (=> bs!338786 m!1586883))

(declare-fun m!1587761 () Bool)

(assert (=> bs!338786 m!1587761))

(assert (=> d!402190 d!402690))

(declare-fun bs!338787 () Bool)

(declare-fun d!402692 () Bool)

(assert (= bs!338787 (and d!402692 d!402122)))

(declare-fun lambda!62322 () Int)

(assert (=> bs!338787 (= lambda!62322 lambda!62291)))

(declare-fun bs!338788 () Bool)

(assert (= bs!338788 (and d!402692 d!402268)))

(assert (=> bs!338788 (= (= (rules!10954 sep!3) (rules!10954 acc!229)) (= lambda!62322 lambda!62293))))

(declare-fun b!1409288 () Bool)

(declare-fun e!899668 () Bool)

(assert (=> b!1409288 (= e!899668 true)))

(declare-fun b!1409287 () Bool)

(declare-fun e!899667 () Bool)

(assert (=> b!1409287 (= e!899667 e!899668)))

(declare-fun b!1409286 () Bool)

(declare-fun e!899666 () Bool)

(assert (=> b!1409286 (= e!899666 e!899667)))

(assert (=> d!402692 e!899666))

(assert (= b!1409287 b!1409288))

(assert (= b!1409286 b!1409287))

(assert (= (and d!402692 ((_ is Cons!14365) (rules!10954 sep!3))) b!1409286))

(assert (=> b!1409288 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6654 order!8771 lambda!62322))))

(assert (=> b!1409288 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (dynLambda!6654 order!8771 lambda!62322))))

(assert (=> d!402692 true))

(declare-fun lt!470436 () Bool)

(assert (=> d!402692 (= lt!470436 (forall!3487 (list!5613 (tokens!1708 sep!3)) lambda!62322))))

(declare-fun e!899665 () Bool)

(assert (=> d!402692 (= lt!470436 e!899665)))

(declare-fun res!638278 () Bool)

(assert (=> d!402692 (=> res!638278 e!899665)))

(assert (=> d!402692 (= res!638278 (not ((_ is Cons!14364) (list!5613 (tokens!1708 sep!3)))))))

(assert (=> d!402692 (not (isEmpty!8750 (rules!10954 sep!3)))))

(assert (=> d!402692 (= (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 sep!3) (list!5613 (tokens!1708 sep!3))) lt!470436)))

(declare-fun b!1409284 () Bool)

(declare-fun e!899664 () Bool)

(assert (=> b!1409284 (= e!899665 e!899664)))

(declare-fun res!638277 () Bool)

(assert (=> b!1409284 (=> (not res!638277) (not e!899664))))

(assert (=> b!1409284 (= res!638277 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) (h!19765 (list!5613 (tokens!1708 sep!3)))))))

(declare-fun b!1409285 () Bool)

(assert (=> b!1409285 (= e!899664 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 sep!3) (t!123165 (list!5613 (tokens!1708 sep!3)))))))

(assert (= (and d!402692 (not res!638278)) b!1409284))

(assert (= (and b!1409284 res!638277) b!1409285))

(assert (=> d!402692 m!1586169))

(declare-fun m!1587763 () Bool)

(assert (=> d!402692 m!1587763))

(assert (=> d!402692 m!1586023))

(declare-fun m!1587765 () Bool)

(assert (=> b!1409284 m!1587765))

(declare-fun m!1587767 () Bool)

(assert (=> b!1409285 m!1587767))

(assert (=> b!1408367 d!402692))

(declare-fun d!402694 () Bool)

(assert (=> d!402694 (= (list!5613 (tokens!1708 sep!3)) (list!5621 (c!231483 (tokens!1708 sep!3))))))

(declare-fun bs!338789 () Bool)

(assert (= bs!338789 d!402694))

(declare-fun m!1587769 () Bool)

(assert (=> bs!338789 m!1587769))

(assert (=> b!1408367 d!402694))

(assert (=> b!1408664 d!402410))

(assert (=> b!1408664 d!402412))

(declare-fun d!402696 () Bool)

(assert (=> d!402696 (= (usesJsonRules!0 (h!19767 (list!5609 objs!24))) (= (rules!10954 (h!19767 (list!5609 objs!24))) (rules!109 JsonLexer!371)))))

(declare-fun bs!338790 () Bool)

(assert (= bs!338790 d!402696))

(assert (=> bs!338790 m!1586077))

(assert (=> bs!338696 d!402696))

(assert (=> d!402264 d!402676))

(assert (=> d!402264 d!402678))

(declare-fun d!402698 () Bool)

(declare-fun c!231597 () Bool)

(assert (=> d!402698 (= c!231597 ((_ is Node!4748) (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun e!899669 () Bool)

(assert (=> d!402698 (= (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) e!899669)))

(declare-fun b!1409289 () Bool)

(assert (=> b!1409289 (= e!899669 (inv!18691 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409290 () Bool)

(declare-fun e!899670 () Bool)

(assert (=> b!1409290 (= e!899669 e!899670)))

(declare-fun res!638279 () Bool)

(assert (=> b!1409290 (= res!638279 (not ((_ is Leaf!7190) (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1409290 (=> res!638279 e!899670)))

(declare-fun b!1409291 () Bool)

(assert (=> b!1409291 (= e!899670 (inv!18692 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402698 c!231597) b!1409289))

(assert (= (and d!402698 (not c!231597)) b!1409290))

(assert (= (and b!1409290 (not res!638279)) b!1409291))

(declare-fun m!1587771 () Bool)

(assert (=> b!1409289 m!1587771))

(declare-fun m!1587773 () Bool)

(assert (=> b!1409291 m!1587773))

(assert (=> b!1408733 d!402698))

(declare-fun d!402700 () Bool)

(declare-fun c!231598 () Bool)

(assert (=> d!402700 (= c!231598 ((_ is Node!4748) (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun e!899671 () Bool)

(assert (=> d!402700 (= (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))) e!899671)))

(declare-fun b!1409292 () Bool)

(assert (=> b!1409292 (= e!899671 (inv!18691 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409293 () Bool)

(declare-fun e!899672 () Bool)

(assert (=> b!1409293 (= e!899671 e!899672)))

(declare-fun res!638280 () Bool)

(assert (=> b!1409293 (= res!638280 (not ((_ is Leaf!7190) (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1409293 (=> res!638280 e!899672)))

(declare-fun b!1409294 () Bool)

(assert (=> b!1409294 (= e!899672 (inv!18692 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402700 c!231598) b!1409292))

(assert (= (and d!402700 (not c!231598)) b!1409293))

(assert (= (and b!1409293 (not res!638280)) b!1409294))

(declare-fun m!1587775 () Bool)

(assert (=> b!1409292 m!1587775))

(declare-fun m!1587777 () Bool)

(assert (=> b!1409294 m!1587777))

(assert (=> b!1408733 d!402700))

(assert (=> d!402164 d!402388))

(assert (=> d!402164 d!402390))

(declare-fun b!1409298 () Bool)

(declare-fun e!899673 () Bool)

(assert (=> b!1409298 (= e!899673 (forall!3483 (right!12594 (right!12594 (c!231484 objs!24))) lambda!62281))))

(declare-fun b!1409297 () Bool)

(declare-fun e!899674 () Bool)

(assert (=> b!1409297 (= e!899674 e!899673)))

(declare-fun lt!470437 () Unit!20733)

(assert (=> b!1409297 (= lt!470437 (lemmaForallConcat!124 (list!5616 (left!12264 (right!12594 (c!231484 objs!24)))) (list!5616 (right!12594 (right!12594 (c!231484 objs!24)))) lambda!62281))))

(declare-fun res!638282 () Bool)

(assert (=> b!1409297 (= res!638282 (forall!3483 (left!12264 (right!12594 (c!231484 objs!24))) lambda!62281))))

(assert (=> b!1409297 (=> (not res!638282) (not e!899673))))

(declare-fun b!1409296 () Bool)

(assert (=> b!1409296 (= e!899674 (forall!3489 (xs!7476 (right!12594 (c!231484 objs!24))) lambda!62281))))

(declare-fun b!1409295 () Bool)

(declare-fun e!899675 () Bool)

(assert (=> b!1409295 (= e!899675 e!899674)))

(declare-fun c!231599 () Bool)

(assert (=> b!1409295 (= c!231599 ((_ is Leaf!7191) (right!12594 (c!231484 objs!24))))))

(declare-fun d!402702 () Bool)

(declare-fun lt!470438 () Bool)

(assert (=> d!402702 (= lt!470438 (forall!3482 (list!5616 (right!12594 (c!231484 objs!24))) lambda!62281))))

(assert (=> d!402702 (= lt!470438 e!899675)))

(declare-fun res!638281 () Bool)

(assert (=> d!402702 (=> res!638281 e!899675)))

(assert (=> d!402702 (= res!638281 ((_ is Empty!4749) (right!12594 (c!231484 objs!24))))))

(assert (=> d!402702 (= (forall!3483 (right!12594 (c!231484 objs!24)) lambda!62281) lt!470438)))

(assert (= (and d!402702 (not res!638281)) b!1409295))

(assert (= (and b!1409295 c!231599) b!1409296))

(assert (= (and b!1409295 (not c!231599)) b!1409297))

(assert (= (and b!1409297 res!638282) b!1409298))

(declare-fun m!1587779 () Bool)

(assert (=> b!1409298 m!1587779))

(declare-fun m!1587781 () Bool)

(assert (=> b!1409297 m!1587781))

(declare-fun m!1587783 () Bool)

(assert (=> b!1409297 m!1587783))

(assert (=> b!1409297 m!1587781))

(assert (=> b!1409297 m!1587783))

(declare-fun m!1587785 () Bool)

(assert (=> b!1409297 m!1587785))

(declare-fun m!1587787 () Bool)

(assert (=> b!1409297 m!1587787))

(declare-fun m!1587789 () Bool)

(assert (=> b!1409296 m!1587789))

(assert (=> d!402702 m!1586287))

(assert (=> d!402702 m!1586287))

(declare-fun m!1587791 () Bool)

(assert (=> d!402702 m!1587791))

(assert (=> b!1408471 d!402702))

(declare-fun bs!338791 () Bool)

(declare-fun d!402704 () Bool)

(assert (= bs!338791 (and d!402704 d!402524)))

(declare-fun lambda!62323 () Int)

(assert (=> bs!338791 (= (and (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (= (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3)))))) (= lambda!62323 lambda!62312))))

(assert (=> d!402704 true))

(assert (=> d!402704 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6663 order!8781 lambda!62323))))

(assert (=> d!402704 true))

(assert (=> d!402704 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6663 order!8781 lambda!62323))))

(assert (=> d!402704 (= (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (Forall!551 lambda!62323))))

(declare-fun bs!338792 () Bool)

(assert (= bs!338792 d!402704))

(declare-fun m!1587793 () Bool)

(assert (=> bs!338792 m!1587793))

(assert (=> d!402128 d!402704))

(declare-fun d!402706 () Bool)

(declare-fun lt!470439 () PrintableTokens!764)

(assert (=> d!402706 (= lt!470439 (head!2632 (list!5616 (left!12264 (c!231484 objs!24)))))))

(declare-fun e!899676 () PrintableTokens!764)

(assert (=> d!402706 (= lt!470439 e!899676)))

(declare-fun c!231600 () Bool)

(assert (=> d!402706 (= c!231600 ((_ is Leaf!7191) (left!12264 (c!231484 objs!24))))))

(assert (=> d!402706 (isBalanced!1400 (left!12264 (c!231484 objs!24)))))

(assert (=> d!402706 (= (head!2633 (left!12264 (c!231484 objs!24))) lt!470439)))

(declare-fun b!1409299 () Bool)

(assert (=> b!1409299 (= e!899676 (apply!3679 (xs!7476 (left!12264 (c!231484 objs!24))) 0))))

(declare-fun b!1409300 () Bool)

(assert (=> b!1409300 (= e!899676 (head!2633 (left!12264 (left!12264 (c!231484 objs!24)))))))

(assert (= (and d!402706 c!231600) b!1409299))

(assert (= (and d!402706 (not c!231600)) b!1409300))

(assert (=> d!402706 m!1586285))

(assert (=> d!402706 m!1586285))

(declare-fun m!1587795 () Bool)

(assert (=> d!402706 m!1587795))

(assert (=> d!402706 m!1586539))

(declare-fun m!1587797 () Bool)

(assert (=> b!1409299 m!1587797))

(declare-fun m!1587799 () Bool)

(assert (=> b!1409300 m!1587799))

(assert (=> b!1408420 d!402706))

(declare-fun d!402708 () Bool)

(declare-fun res!638283 () Bool)

(declare-fun e!899677 () Bool)

(assert (=> d!402708 (=> (not res!638283) (not e!899677))))

(assert (=> d!402708 (= res!638283 (<= (size!11819 (list!5617 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3)))))) 512))))

(assert (=> d!402708 (= (inv!18692 (right!12593 (c!231483 (tokens!1708 sep!3)))) e!899677)))

(declare-fun b!1409301 () Bool)

(declare-fun res!638284 () Bool)

(assert (=> b!1409301 (=> (not res!638284) (not e!899677))))

(assert (=> b!1409301 (= res!638284 (= (csize!9727 (right!12593 (c!231483 (tokens!1708 sep!3)))) (size!11819 (list!5617 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409302 () Bool)

(assert (=> b!1409302 (= e!899677 (and (> (csize!9727 (right!12593 (c!231483 (tokens!1708 sep!3)))) 0) (<= (csize!9727 (right!12593 (c!231483 (tokens!1708 sep!3)))) 512)))))

(assert (= (and d!402708 res!638283) b!1409301))

(assert (= (and b!1409301 res!638284) b!1409302))

(declare-fun m!1587801 () Bool)

(assert (=> d!402708 m!1587801))

(assert (=> d!402708 m!1587801))

(declare-fun m!1587803 () Bool)

(assert (=> d!402708 m!1587803))

(assert (=> b!1409301 m!1587801))

(assert (=> b!1409301 m!1587801))

(assert (=> b!1409301 m!1587803))

(assert (=> b!1408396 d!402708))

(declare-fun b!1409303 () Bool)

(declare-fun e!899678 () Bool)

(declare-fun e!899679 () Bool)

(assert (=> b!1409303 (= e!899678 e!899679)))

(declare-fun res!638288 () Bool)

(assert (=> b!1409303 (=> (not res!638288) (not e!899679))))

(assert (=> b!1409303 (= res!638288 (<= (- 1) (- (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1409304 () Bool)

(declare-fun res!638289 () Bool)

(assert (=> b!1409304 (=> (not res!638289) (not e!899679))))

(assert (=> b!1409304 (= res!638289 (not (isEmpty!8754 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun b!1409305 () Bool)

(declare-fun res!638290 () Bool)

(assert (=> b!1409305 (=> (not res!638290) (not e!899679))))

(assert (=> b!1409305 (= res!638290 (isBalanced!1399 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409306 () Bool)

(assert (=> b!1409306 (= e!899679 (not (isEmpty!8754 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(declare-fun d!402710 () Bool)

(declare-fun res!638287 () Bool)

(assert (=> d!402710 (=> res!638287 e!899678)))

(assert (=> d!402710 (= res!638287 (not ((_ is Node!4748) (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402710 (= (isBalanced!1399 (left!12263 (c!231483 (tokens!1708 acc!229)))) e!899678)))

(declare-fun b!1409307 () Bool)

(declare-fun res!638285 () Bool)

(assert (=> b!1409307 (=> (not res!638285) (not e!899679))))

(assert (=> b!1409307 (= res!638285 (isBalanced!1399 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409308 () Bool)

(declare-fun res!638286 () Bool)

(assert (=> b!1409308 (=> (not res!638286) (not e!899679))))

(assert (=> b!1409308 (= res!638286 (<= (- (height!686 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) 1))))

(assert (= (and d!402710 (not res!638287)) b!1409303))

(assert (= (and b!1409303 res!638288) b!1409308))

(assert (= (and b!1409308 res!638286) b!1409305))

(assert (= (and b!1409305 res!638290) b!1409307))

(assert (= (and b!1409307 res!638285) b!1409304))

(assert (= (and b!1409304 res!638289) b!1409306))

(declare-fun m!1587805 () Bool)

(assert (=> b!1409306 m!1587805))

(assert (=> b!1409308 m!1587751))

(assert (=> b!1409308 m!1587753))

(declare-fun m!1587807 () Bool)

(assert (=> b!1409305 m!1587807))

(assert (=> b!1409303 m!1587751))

(assert (=> b!1409303 m!1587753))

(declare-fun m!1587809 () Bool)

(assert (=> b!1409307 m!1587809))

(declare-fun m!1587811 () Bool)

(assert (=> b!1409304 m!1587811))

(assert (=> b!1408411 d!402710))

(declare-fun d!402712 () Bool)

(declare-fun lt!470440 () Bool)

(assert (=> d!402712 (= lt!470440 (isEmpty!8758 (list!5621 (left!12263 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402712 (= lt!470440 (= (size!11820 (left!12263 (c!231483 (tokens!1708 sep!3)))) 0))))

(assert (=> d!402712 (= (isEmpty!8754 (left!12263 (c!231483 (tokens!1708 sep!3)))) lt!470440)))

(declare-fun bs!338793 () Bool)

(assert (= bs!338793 d!402712))

(assert (=> bs!338793 m!1587757))

(assert (=> bs!338793 m!1587757))

(declare-fun m!1587813 () Bool)

(assert (=> bs!338793 m!1587813))

(assert (=> bs!338793 m!1586337))

(assert (=> b!1408660 d!402712))

(declare-fun d!402714 () Bool)

(assert (=> d!402714 (= (inv!18697 (xs!7476 (right!12594 (c!231484 objs!24)))) (<= (size!11815 (innerList!4809 (xs!7476 (right!12594 (c!231484 objs!24))))) 2147483647))))

(declare-fun bs!338794 () Bool)

(assert (= bs!338794 d!402714))

(declare-fun m!1587815 () Bool)

(assert (=> bs!338794 m!1587815))

(assert (=> b!1408717 d!402714))

(declare-fun d!402716 () Bool)

(assert (=> d!402716 (= (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (= (mod (str.len (value!80625 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) 2) 0))))

(assert (=> b!1408711 d!402716))

(declare-fun d!402718 () Bool)

(declare-fun res!638291 () Bool)

(declare-fun e!899680 () Bool)

(assert (=> d!402718 (=> (not res!638291) (not e!899680))))

(assert (=> d!402718 (= res!638291 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (toValue!3782 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))))

(assert (=> d!402718 (= (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) e!899680)))

(declare-fun b!1409309 () Bool)

(assert (=> b!1409309 (= e!899680 (equivClasses!927 (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (toValue!3782 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))))

(assert (= (and d!402718 res!638291) b!1409309))

(declare-fun m!1587817 () Bool)

(assert (=> d!402718 m!1587817))

(declare-fun m!1587819 () Bool)

(assert (=> b!1409309 m!1587819))

(assert (=> b!1408711 d!402718))

(declare-fun d!402720 () Bool)

(declare-fun c!231601 () Bool)

(assert (=> d!402720 (= c!231601 ((_ is Node!4748) (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun e!899681 () Bool)

(assert (=> d!402720 (= (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) e!899681)))

(declare-fun b!1409310 () Bool)

(assert (=> b!1409310 (= e!899681 (inv!18691 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409311 () Bool)

(declare-fun e!899682 () Bool)

(assert (=> b!1409311 (= e!899681 e!899682)))

(declare-fun res!638292 () Bool)

(assert (=> b!1409311 (= res!638292 (not ((_ is Leaf!7190) (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1409311 (=> res!638292 e!899682)))

(declare-fun b!1409312 () Bool)

(assert (=> b!1409312 (= e!899682 (inv!18692 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402720 c!231601) b!1409310))

(assert (= (and d!402720 (not c!231601)) b!1409311))

(assert (= (and b!1409311 (not res!638292)) b!1409312))

(declare-fun m!1587821 () Bool)

(assert (=> b!1409310 m!1587821))

(declare-fun m!1587823 () Bool)

(assert (=> b!1409312 m!1587823))

(assert (=> b!1408730 d!402720))

(declare-fun d!402722 () Bool)

(declare-fun c!231602 () Bool)

(assert (=> d!402722 (= c!231602 ((_ is Node!4748) (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun e!899683 () Bool)

(assert (=> d!402722 (= (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))) e!899683)))

(declare-fun b!1409313 () Bool)

(assert (=> b!1409313 (= e!899683 (inv!18691 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(declare-fun b!1409314 () Bool)

(declare-fun e!899684 () Bool)

(assert (=> b!1409314 (= e!899683 e!899684)))

(declare-fun res!638293 () Bool)

(assert (=> b!1409314 (= res!638293 (not ((_ is Leaf!7190) (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1409314 (=> res!638293 e!899684)))

(declare-fun b!1409315 () Bool)

(assert (=> b!1409315 (= e!899684 (inv!18692 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (= (and d!402722 c!231602) b!1409313))

(assert (= (and d!402722 (not c!231602)) b!1409314))

(assert (= (and b!1409314 (not res!638293)) b!1409315))

(declare-fun m!1587825 () Bool)

(assert (=> b!1409313 m!1587825))

(declare-fun m!1587827 () Bool)

(assert (=> b!1409315 m!1587827))

(assert (=> b!1408730 d!402722))

(declare-fun d!402724 () Bool)

(declare-fun res!638294 () Bool)

(declare-fun e!899685 () Bool)

(assert (=> d!402724 (=> res!638294 e!899685)))

(assert (=> d!402724 (= res!638294 ((_ is Nil!14366) (list!5616 (c!231484 objs!24))))))

(assert (=> d!402724 (= (forall!3482 (list!5616 (c!231484 objs!24)) lambda!62281) e!899685)))

(declare-fun b!1409316 () Bool)

(declare-fun e!899686 () Bool)

(assert (=> b!1409316 (= e!899685 e!899686)))

(declare-fun res!638295 () Bool)

(assert (=> b!1409316 (=> (not res!638295) (not e!899686))))

(assert (=> b!1409316 (= res!638295 (dynLambda!6656 lambda!62281 (h!19767 (list!5616 (c!231484 objs!24)))))))

(declare-fun b!1409317 () Bool)

(assert (=> b!1409317 (= e!899686 (forall!3482 (t!123167 (list!5616 (c!231484 objs!24))) lambda!62281))))

(assert (= (and d!402724 (not res!638294)) b!1409316))

(assert (= (and b!1409316 res!638295) b!1409317))

(declare-fun b_lambda!44471 () Bool)

(assert (=> (not b_lambda!44471) (not b!1409316)))

(declare-fun m!1587829 () Bool)

(assert (=> b!1409316 m!1587829))

(declare-fun m!1587831 () Bool)

(assert (=> b!1409317 m!1587831))

(assert (=> d!402176 d!402724))

(assert (=> d!402176 d!402386))

(declare-fun d!402726 () Bool)

(declare-fun lt!470453 () Bool)

(assert (=> d!402726 (= lt!470453 (tokensListTwoByTwoPredicateSeparableList!188 Lexer!2181 (dropList!428 (tokens!1708 acc!229) 0) (rules!10954 acc!229)))))

(declare-fun lt!470442 () Unit!20733)

(declare-fun lt!470472 () Unit!20733)

(assert (=> d!402726 (= lt!470442 lt!470472)))

(declare-fun lt!470465 () List!14430)

(assert (=> d!402726 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 acc!229) lt!470465)))

(declare-fun lt!470451 () List!14430)

(assert (=> d!402726 (= lt!470472 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!44 Lexer!2181 (rules!10954 acc!229) lt!470451 lt!470465))))

(declare-fun e!899688 () Bool)

(assert (=> d!402726 e!899688))

(declare-fun res!638297 () Bool)

(assert (=> d!402726 (=> (not res!638297) (not e!899688))))

(assert (=> d!402726 (= res!638297 ((_ is Lexer!2181) Lexer!2181))))

(assert (=> d!402726 (= lt!470465 (dropList!428 (tokens!1708 acc!229) 0))))

(assert (=> d!402726 (= lt!470451 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470446 () Unit!20733)

(declare-fun lt!470447 () Unit!20733)

(assert (=> d!402726 (= lt!470446 lt!470447)))

(declare-fun lt!470455 () List!14430)

(assert (=> d!402726 (subseq!349 (drop!695 lt!470455 0) lt!470455)))

(assert (=> d!402726 (= lt!470447 (lemmaDropSubSeq!44 lt!470455 0))))

(declare-fun e!899690 () Bool)

(assert (=> d!402726 e!899690))

(declare-fun res!638302 () Bool)

(assert (=> d!402726 (=> (not res!638302) (not e!899690))))

(assert (=> d!402726 (= res!638302 (>= 0 0))))

(assert (=> d!402726 (= lt!470455 (list!5613 (tokens!1708 acc!229)))))

(declare-fun e!899689 () Bool)

(assert (=> d!402726 (= lt!470453 e!899689)))

(declare-fun res!638301 () Bool)

(assert (=> d!402726 (=> res!638301 e!899689)))

(assert (=> d!402726 (= res!638301 (not (< 0 (- (size!11826 (tokens!1708 acc!229)) 1))))))

(declare-fun e!899691 () Bool)

(assert (=> d!402726 e!899691))

(declare-fun res!638300 () Bool)

(assert (=> d!402726 (=> (not res!638300) (not e!899691))))

(assert (=> d!402726 (= res!638300 (>= 0 0))))

(assert (=> d!402726 (= (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 acc!229) 0 (rules!10954 acc!229)) lt!470453)))

(declare-fun b!1409318 () Bool)

(assert (=> b!1409318 (= e!899688 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 acc!229) lt!470451))))

(declare-fun b!1409319 () Bool)

(assert (=> b!1409319 (= e!899690 (<= 0 (size!11819 lt!470455)))))

(declare-fun b!1409320 () Bool)

(assert (=> b!1409320 (= e!899691 (<= 0 (size!11826 (tokens!1708 acc!229))))))

(declare-fun b!1409321 () Bool)

(declare-fun res!638298 () Bool)

(assert (=> b!1409321 (=> (not res!638298) (not e!899688))))

(assert (=> b!1409321 (= res!638298 (not (isEmpty!8750 (rules!10954 acc!229))))))

(declare-fun b!1409322 () Bool)

(declare-fun e!899687 () Bool)

(assert (=> b!1409322 (= e!899687 (tokensListTwoByTwoPredicateSeparable!87 Lexer!2181 (tokens!1708 acc!229) (+ 0 1) (rules!10954 acc!229)))))

(declare-fun b!1409323 () Bool)

(assert (=> b!1409323 (= e!899689 e!899687)))

(declare-fun res!638296 () Bool)

(assert (=> b!1409323 (=> (not res!638296) (not e!899687))))

(assert (=> b!1409323 (= res!638296 (separableTokensPredicate!465 Lexer!2181 (apply!3683 (tokens!1708 acc!229) 0) (apply!3683 (tokens!1708 acc!229) (+ 0 1)) (rules!10954 acc!229)))))

(declare-fun lt!470445 () Unit!20733)

(declare-fun Unit!20744 () Unit!20733)

(assert (=> b!1409323 (= lt!470445 Unit!20744)))

(assert (=> b!1409323 (> (size!11827 (charsOf!1459 (apply!3683 (tokens!1708 acc!229) (+ 0 1)))) 0)))

(declare-fun lt!470461 () Unit!20733)

(declare-fun Unit!20745 () Unit!20733)

(assert (=> b!1409323 (= lt!470461 Unit!20745)))

(assert (=> b!1409323 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) (apply!3683 (tokens!1708 acc!229) (+ 0 1)))))

(declare-fun lt!470471 () Unit!20733)

(declare-fun Unit!20746 () Unit!20733)

(assert (=> b!1409323 (= lt!470471 Unit!20746)))

(assert (=> b!1409323 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) (apply!3683 (tokens!1708 acc!229) 0))))

(declare-fun lt!470464 () Unit!20733)

(declare-fun lt!470463 () Unit!20733)

(assert (=> b!1409323 (= lt!470464 lt!470463)))

(declare-fun lt!470457 () Token!4644)

(assert (=> b!1409323 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) lt!470457)))

(declare-fun lt!470450 () List!14430)

(assert (=> b!1409323 (= lt!470463 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!336 Lexer!2181 (rules!10954 acc!229) lt!470450 lt!470457))))

(assert (=> b!1409323 (= lt!470457 (apply!3683 (tokens!1708 acc!229) (+ 0 1)))))

(assert (=> b!1409323 (= lt!470450 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470448 () Unit!20733)

(declare-fun lt!470452 () Unit!20733)

(assert (=> b!1409323 (= lt!470448 lt!470452)))

(declare-fun lt!470473 () Token!4644)

(assert (=> b!1409323 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) lt!470473)))

(declare-fun lt!470459 () List!14430)

(assert (=> b!1409323 (= lt!470452 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!336 Lexer!2181 (rules!10954 acc!229) lt!470459 lt!470473))))

(assert (=> b!1409323 (= lt!470473 (apply!3683 (tokens!1708 acc!229) 0))))

(assert (=> b!1409323 (= lt!470459 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470444 () Unit!20733)

(declare-fun lt!470468 () Unit!20733)

(assert (=> b!1409323 (= lt!470444 lt!470468)))

(declare-fun lt!470443 () List!14430)

(declare-fun lt!470462 () Int)

(assert (=> b!1409323 (= (tail!2044 (drop!695 lt!470443 lt!470462)) (drop!695 lt!470443 (+ lt!470462 1)))))

(assert (=> b!1409323 (= lt!470468 (lemmaDropTail!430 lt!470443 lt!470462))))

(assert (=> b!1409323 (= lt!470462 (+ 0 1))))

(assert (=> b!1409323 (= lt!470443 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470456 () Unit!20733)

(declare-fun lt!470441 () Unit!20733)

(assert (=> b!1409323 (= lt!470456 lt!470441)))

(declare-fun lt!470466 () List!14430)

(assert (=> b!1409323 (= (tail!2044 (drop!695 lt!470466 0)) (drop!695 lt!470466 (+ 0 1)))))

(assert (=> b!1409323 (= lt!470441 (lemmaDropTail!430 lt!470466 0))))

(assert (=> b!1409323 (= lt!470466 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470458 () Unit!20733)

(declare-fun lt!470454 () Unit!20733)

(assert (=> b!1409323 (= lt!470458 lt!470454)))

(declare-fun lt!470460 () List!14430)

(declare-fun lt!470470 () Int)

(assert (=> b!1409323 (= (head!2635 (drop!695 lt!470460 lt!470470)) (apply!3684 lt!470460 lt!470470))))

(assert (=> b!1409323 (= lt!470454 (lemmaDropApply!450 lt!470460 lt!470470))))

(assert (=> b!1409323 (= lt!470470 (+ 0 1))))

(assert (=> b!1409323 (= lt!470460 (list!5613 (tokens!1708 acc!229)))))

(declare-fun lt!470449 () Unit!20733)

(declare-fun lt!470467 () Unit!20733)

(assert (=> b!1409323 (= lt!470449 lt!470467)))

(declare-fun lt!470469 () List!14430)

(assert (=> b!1409323 (= (head!2635 (drop!695 lt!470469 0)) (apply!3684 lt!470469 0))))

(assert (=> b!1409323 (= lt!470467 (lemmaDropApply!450 lt!470469 0))))

(assert (=> b!1409323 (= lt!470469 (list!5613 (tokens!1708 acc!229)))))

(declare-fun b!1409324 () Bool)

(declare-fun res!638299 () Bool)

(assert (=> b!1409324 (=> (not res!638299) (not e!899688))))

(assert (=> b!1409324 (= res!638299 (subseq!349 lt!470465 lt!470451))))

(declare-fun b!1409325 () Bool)

(declare-fun res!638303 () Bool)

(assert (=> b!1409325 (=> (not res!638303) (not e!899688))))

(assert (=> b!1409325 (= res!638303 (rulesInvariant!2053 Lexer!2181 (rules!10954 acc!229)))))

(assert (= (and d!402726 res!638300) b!1409320))

(assert (= (and d!402726 (not res!638301)) b!1409323))

(assert (= (and b!1409323 res!638296) b!1409322))

(assert (= (and d!402726 res!638302) b!1409319))

(assert (= (and d!402726 res!638297) b!1409321))

(assert (= (and b!1409321 res!638298) b!1409325))

(assert (= (and b!1409325 res!638303) b!1409324))

(assert (= (and b!1409324 res!638299) b!1409318))

(assert (=> b!1409321 m!1586015))

(declare-fun m!1587833 () Bool)

(assert (=> b!1409320 m!1587833))

(declare-fun m!1587835 () Bool)

(assert (=> b!1409324 m!1587835))

(declare-fun m!1587837 () Bool)

(assert (=> b!1409322 m!1587837))

(assert (=> b!1409325 m!1586017))

(declare-fun m!1587839 () Bool)

(assert (=> b!1409318 m!1587839))

(declare-fun m!1587841 () Bool)

(assert (=> b!1409319 m!1587841))

(assert (=> d!402726 m!1586563))

(declare-fun m!1587843 () Bool)

(assert (=> d!402726 m!1587843))

(declare-fun m!1587845 () Bool)

(assert (=> d!402726 m!1587845))

(declare-fun m!1587847 () Bool)

(assert (=> d!402726 m!1587847))

(declare-fun m!1587849 () Bool)

(assert (=> d!402726 m!1587849))

(declare-fun m!1587851 () Bool)

(assert (=> d!402726 m!1587851))

(declare-fun m!1587853 () Bool)

(assert (=> d!402726 m!1587853))

(assert (=> d!402726 m!1587833))

(assert (=> d!402726 m!1587843))

(declare-fun m!1587855 () Bool)

(assert (=> d!402726 m!1587855))

(assert (=> d!402726 m!1587847))

(declare-fun m!1587857 () Bool)

(assert (=> b!1409323 m!1587857))

(declare-fun m!1587859 () Bool)

(assert (=> b!1409323 m!1587859))

(declare-fun m!1587861 () Bool)

(assert (=> b!1409323 m!1587861))

(declare-fun m!1587863 () Bool)

(assert (=> b!1409323 m!1587863))

(declare-fun m!1587865 () Bool)

(assert (=> b!1409323 m!1587865))

(assert (=> b!1409323 m!1587865))

(declare-fun m!1587867 () Bool)

(assert (=> b!1409323 m!1587867))

(assert (=> b!1409323 m!1587859))

(assert (=> b!1409323 m!1587863))

(declare-fun m!1587869 () Bool)

(assert (=> b!1409323 m!1587869))

(assert (=> b!1409323 m!1587863))

(declare-fun m!1587871 () Bool)

(assert (=> b!1409323 m!1587871))

(declare-fun m!1587873 () Bool)

(assert (=> b!1409323 m!1587873))

(declare-fun m!1587875 () Bool)

(assert (=> b!1409323 m!1587875))

(declare-fun m!1587877 () Bool)

(assert (=> b!1409323 m!1587877))

(declare-fun m!1587879 () Bool)

(assert (=> b!1409323 m!1587879))

(declare-fun m!1587881 () Bool)

(assert (=> b!1409323 m!1587881))

(declare-fun m!1587883 () Bool)

(assert (=> b!1409323 m!1587883))

(assert (=> b!1409323 m!1587863))

(declare-fun m!1587885 () Bool)

(assert (=> b!1409323 m!1587885))

(assert (=> b!1409323 m!1586563))

(assert (=> b!1409323 m!1587875))

(assert (=> b!1409323 m!1587857))

(declare-fun m!1587887 () Bool)

(assert (=> b!1409323 m!1587887))

(declare-fun m!1587889 () Bool)

(assert (=> b!1409323 m!1587889))

(declare-fun m!1587891 () Bool)

(assert (=> b!1409323 m!1587891))

(declare-fun m!1587893 () Bool)

(assert (=> b!1409323 m!1587893))

(declare-fun m!1587895 () Bool)

(assert (=> b!1409323 m!1587895))

(declare-fun m!1587897 () Bool)

(assert (=> b!1409323 m!1587897))

(assert (=> b!1409323 m!1587897))

(declare-fun m!1587899 () Bool)

(assert (=> b!1409323 m!1587899))

(declare-fun m!1587901 () Bool)

(assert (=> b!1409323 m!1587901))

(declare-fun m!1587903 () Bool)

(assert (=> b!1409323 m!1587903))

(assert (=> b!1409323 m!1587859))

(assert (=> b!1409323 m!1587871))

(declare-fun m!1587905 () Bool)

(assert (=> b!1409323 m!1587905))

(declare-fun m!1587907 () Bool)

(assert (=> b!1409323 m!1587907))

(declare-fun m!1587909 () Bool)

(assert (=> b!1409323 m!1587909))

(assert (=> d!402266 d!402726))

(declare-fun d!402728 () Bool)

(assert (=> d!402728 (= (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (ite ((_ is Empty!4748) (left!12263 (c!231483 (tokens!1708 acc!229)))) 0 (ite ((_ is Leaf!7190) (left!12263 (c!231483 (tokens!1708 acc!229)))) 1 (cheight!4959 (left!12263 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1408409 d!402728))

(declare-fun d!402730 () Bool)

(assert (=> d!402730 (= (height!686 (right!12593 (c!231483 (tokens!1708 acc!229)))) (ite ((_ is Empty!4748) (right!12593 (c!231483 (tokens!1708 acc!229)))) 0 (ite ((_ is Leaf!7190) (right!12593 (c!231483 (tokens!1708 acc!229)))) 1 (cheight!4959 (right!12593 (c!231483 (tokens!1708 acc!229)))))))))

(assert (=> b!1408409 d!402730))

(declare-fun d!402732 () Bool)

(declare-fun lt!470476 () Bool)

(assert (=> d!402732 (= lt!470476 (forall!3482 (list!5615 (xs!7476 (c!231484 objs!24))) lambda!62281))))

(declare-fun choose!8708 (IArray!9503 Int) Bool)

(assert (=> d!402732 (= lt!470476 (choose!8708 (xs!7476 (c!231484 objs!24)) lambda!62281))))

(assert (=> d!402732 (= (forall!3489 (xs!7476 (c!231484 objs!24)) lambda!62281) lt!470476)))

(declare-fun bs!338795 () Bool)

(assert (= bs!338795 d!402732))

(assert (=> bs!338795 m!1586185))

(assert (=> bs!338795 m!1586185))

(declare-fun m!1587911 () Bool)

(assert (=> bs!338795 m!1587911))

(declare-fun m!1587913 () Bool)

(assert (=> bs!338795 m!1587913))

(assert (=> b!1408469 d!402732))

(declare-fun d!402734 () Bool)

(declare-fun res!638304 () Bool)

(declare-fun e!899692 () Bool)

(assert (=> d!402734 (=> (not res!638304) (not e!899692))))

(assert (=> d!402734 (= res!638304 (<= (size!11819 (list!5617 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229)))))) 512))))

(assert (=> d!402734 (= (inv!18692 (right!12593 (c!231483 (tokens!1708 acc!229)))) e!899692)))

(declare-fun b!1409326 () Bool)

(declare-fun res!638305 () Bool)

(assert (=> b!1409326 (=> (not res!638305) (not e!899692))))

(assert (=> b!1409326 (= res!638305 (= (csize!9727 (right!12593 (c!231483 (tokens!1708 acc!229)))) (size!11819 (list!5617 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))))

(declare-fun b!1409327 () Bool)

(assert (=> b!1409327 (= e!899692 (and (> (csize!9727 (right!12593 (c!231483 (tokens!1708 acc!229)))) 0) (<= (csize!9727 (right!12593 (c!231483 (tokens!1708 acc!229)))) 512)))))

(assert (= (and d!402734 res!638304) b!1409326))

(assert (= (and b!1409326 res!638305) b!1409327))

(declare-fun m!1587915 () Bool)

(assert (=> d!402734 m!1587915))

(assert (=> d!402734 m!1587915))

(declare-fun m!1587917 () Bool)

(assert (=> d!402734 m!1587917))

(assert (=> b!1409326 m!1587915))

(assert (=> b!1409326 m!1587915))

(assert (=> b!1409326 m!1587917))

(assert (=> b!1408670 d!402734))

(declare-fun d!402736 () Bool)

(declare-fun res!638306 () Bool)

(declare-fun e!899693 () Bool)

(assert (=> d!402736 (=> (not res!638306) (not e!899693))))

(assert (=> d!402736 (= res!638306 (= (csize!9728 (left!12264 (c!231484 objs!24))) (+ (size!11816 (left!12264 (left!12264 (c!231484 objs!24)))) (size!11816 (right!12594 (left!12264 (c!231484 objs!24)))))))))

(assert (=> d!402736 (= (inv!18693 (left!12264 (c!231484 objs!24))) e!899693)))

(declare-fun b!1409328 () Bool)

(declare-fun res!638307 () Bool)

(assert (=> b!1409328 (=> (not res!638307) (not e!899693))))

(assert (=> b!1409328 (= res!638307 (and (not (= (left!12264 (left!12264 (c!231484 objs!24))) Empty!4749)) (not (= (right!12594 (left!12264 (c!231484 objs!24))) Empty!4749))))))

(declare-fun b!1409329 () Bool)

(declare-fun res!638308 () Bool)

(assert (=> b!1409329 (=> (not res!638308) (not e!899693))))

(assert (=> b!1409329 (= res!638308 (= (cheight!4960 (left!12264 (c!231484 objs!24))) (+ (max!0 (height!687 (left!12264 (left!12264 (c!231484 objs!24)))) (height!687 (right!12594 (left!12264 (c!231484 objs!24))))) 1)))))

(declare-fun b!1409330 () Bool)

(assert (=> b!1409330 (= e!899693 (<= 0 (cheight!4960 (left!12264 (c!231484 objs!24)))))))

(assert (= (and d!402736 res!638306) b!1409328))

(assert (= (and b!1409328 res!638307) b!1409329))

(assert (= (and b!1409329 res!638308) b!1409330))

(declare-fun m!1587919 () Bool)

(assert (=> d!402736 m!1587919))

(declare-fun m!1587921 () Bool)

(assert (=> d!402736 m!1587921))

(assert (=> b!1409329 m!1587703))

(assert (=> b!1409329 m!1587705))

(assert (=> b!1409329 m!1587703))

(assert (=> b!1409329 m!1587705))

(declare-fun m!1587923 () Bool)

(assert (=> b!1409329 m!1587923))

(assert (=> b!1408343 d!402736))

(declare-fun d!402738 () Bool)

(declare-fun lt!470477 () Bool)

(assert (=> d!402738 (= lt!470477 (isEmpty!8751 (list!5616 (left!12264 (c!231484 objs!24)))))))

(assert (=> d!402738 (= lt!470477 (= (size!11816 (left!12264 (c!231484 objs!24))) 0))))

(assert (=> d!402738 (= (isEmpty!8752 (left!12264 (c!231484 objs!24))) lt!470477)))

(declare-fun bs!338796 () Bool)

(assert (= bs!338796 d!402738))

(assert (=> bs!338796 m!1586285))

(assert (=> bs!338796 m!1586285))

(declare-fun m!1587925 () Bool)

(assert (=> bs!338796 m!1587925))

(assert (=> bs!338796 m!1586319))

(assert (=> b!1408683 d!402738))

(declare-fun d!402740 () Bool)

(assert (=> d!402740 (= (max!0 (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229))))) (ite (< (height!686 (left!12263 (c!231483 (tokens!1708 acc!229)))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229))))) (height!686 (right!12593 (c!231483 (tokens!1708 acc!229)))) (height!686 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> b!1408690 d!402740))

(assert (=> b!1408690 d!402728))

(assert (=> b!1408690 d!402730))

(declare-fun d!402742 () Bool)

(declare-fun lt!470478 () Int)

(assert (=> d!402742 (>= lt!470478 0)))

(declare-fun e!899694 () Int)

(assert (=> d!402742 (= lt!470478 e!899694)))

(declare-fun c!231603 () Bool)

(assert (=> d!402742 (= c!231603 ((_ is Nil!14364) (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402742 (= (size!11819 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))) lt!470478)))

(declare-fun b!1409331 () Bool)

(assert (=> b!1409331 (= e!899694 0)))

(declare-fun b!1409332 () Bool)

(assert (=> b!1409332 (= e!899694 (+ 1 (size!11819 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(assert (= (and d!402742 c!231603) b!1409331))

(assert (= (and d!402742 (not c!231603)) b!1409332))

(declare-fun m!1587927 () Bool)

(assert (=> b!1409332 m!1587927))

(assert (=> d!402148 d!402742))

(assert (=> d!402136 d!402386))

(assert (=> b!1408687 d!402680))

(assert (=> b!1408687 d!402682))

(declare-fun d!402744 () Bool)

(declare-fun c!231604 () Bool)

(assert (=> d!402744 (= c!231604 ((_ is Node!4748) (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun e!899695 () Bool)

(assert (=> d!402744 (= (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) e!899695)))

(declare-fun b!1409333 () Bool)

(assert (=> b!1409333 (= e!899695 (inv!18691 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409334 () Bool)

(declare-fun e!899696 () Bool)

(assert (=> b!1409334 (= e!899695 e!899696)))

(declare-fun res!638309 () Bool)

(assert (=> b!1409334 (= res!638309 (not ((_ is Leaf!7190) (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1409334 (=> res!638309 e!899696)))

(declare-fun b!1409335 () Bool)

(assert (=> b!1409335 (= e!899696 (inv!18692 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402744 c!231604) b!1409333))

(assert (= (and d!402744 (not c!231604)) b!1409334))

(assert (= (and b!1409334 (not res!638309)) b!1409335))

(declare-fun m!1587929 () Bool)

(assert (=> b!1409333 m!1587929))

(declare-fun m!1587931 () Bool)

(assert (=> b!1409335 m!1587931))

(assert (=> b!1408739 d!402744))

(declare-fun d!402746 () Bool)

(declare-fun c!231605 () Bool)

(assert (=> d!402746 (= c!231605 ((_ is Node!4748) (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun e!899697 () Bool)

(assert (=> d!402746 (= (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))) e!899697)))

(declare-fun b!1409336 () Bool)

(assert (=> b!1409336 (= e!899697 (inv!18691 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409337 () Bool)

(declare-fun e!899698 () Bool)

(assert (=> b!1409337 (= e!899697 e!899698)))

(declare-fun res!638310 () Bool)

(assert (=> b!1409337 (= res!638310 (not ((_ is Leaf!7190) (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(assert (=> b!1409337 (=> res!638310 e!899698)))

(declare-fun b!1409338 () Bool)

(assert (=> b!1409338 (= e!899698 (inv!18692 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (= (and d!402746 c!231605) b!1409336))

(assert (= (and d!402746 (not c!231605)) b!1409337))

(assert (= (and b!1409337 (not res!638310)) b!1409338))

(declare-fun m!1587933 () Bool)

(assert (=> b!1409336 m!1587933))

(declare-fun m!1587935 () Bool)

(assert (=> b!1409338 m!1587935))

(assert (=> b!1408739 d!402746))

(declare-fun d!402748 () Bool)

(assert (=> d!402748 (= (inv!18673 (tag!2753 (h!19766 (t!123166 (rules!10954 acc!229))))) (= (mod (str.len (value!80625 (tag!2753 (h!19766 (t!123166 (rules!10954 acc!229)))))) 2) 0))))

(assert (=> b!1408750 d!402748))

(declare-fun d!402750 () Bool)

(declare-fun res!638311 () Bool)

(declare-fun e!899699 () Bool)

(assert (=> d!402750 (=> (not res!638311) (not e!899699))))

(assert (=> d!402750 (= res!638311 (semiInverseModEq!968 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229)))))))))

(assert (=> d!402750 (= (inv!18696 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) e!899699)))

(declare-fun b!1409339 () Bool)

(assert (=> b!1409339 (= e!899699 (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229)))))))))

(assert (= (and d!402750 res!638311) b!1409339))

(declare-fun m!1587937 () Bool)

(assert (=> d!402750 m!1587937))

(declare-fun m!1587939 () Bool)

(assert (=> b!1409339 m!1587939))

(assert (=> b!1408750 d!402750))

(declare-fun d!402752 () Bool)

(declare-fun res!638312 () Bool)

(declare-fun e!899700 () Bool)

(assert (=> d!402752 (=> res!638312 e!899700)))

(assert (=> d!402752 (= res!638312 ((_ is Nil!14366) (t!123167 (list!5609 objs!24))))))

(assert (=> d!402752 (= (forall!3482 (t!123167 (list!5609 objs!24)) lambda!62281) e!899700)))

(declare-fun b!1409340 () Bool)

(declare-fun e!899701 () Bool)

(assert (=> b!1409340 (= e!899700 e!899701)))

(declare-fun res!638313 () Bool)

(assert (=> b!1409340 (=> (not res!638313) (not e!899701))))

(assert (=> b!1409340 (= res!638313 (dynLambda!6656 lambda!62281 (h!19767 (t!123167 (list!5609 objs!24)))))))

(declare-fun b!1409341 () Bool)

(assert (=> b!1409341 (= e!899701 (forall!3482 (t!123167 (t!123167 (list!5609 objs!24))) lambda!62281))))

(assert (= (and d!402752 (not res!638312)) b!1409340))

(assert (= (and b!1409340 res!638313) b!1409341))

(declare-fun b_lambda!44473 () Bool)

(assert (=> (not b_lambda!44473) (not b!1409340)))

(declare-fun m!1587941 () Bool)

(assert (=> b!1409340 m!1587941))

(declare-fun m!1587943 () Bool)

(assert (=> b!1409341 m!1587943))

(assert (=> b!1408442 d!402752))

(declare-fun bs!338797 () Bool)

(declare-fun d!402754 () Bool)

(assert (= bs!338797 (and d!402754 d!402122)))

(declare-fun lambda!62324 () Int)

(assert (=> bs!338797 (= (= (rules!10954 acc!229) (rules!10954 sep!3)) (= lambda!62324 lambda!62291))))

(declare-fun bs!338798 () Bool)

(assert (= bs!338798 (and d!402754 d!402268)))

(assert (=> bs!338798 (= lambda!62324 lambda!62293)))

(declare-fun bs!338799 () Bool)

(assert (= bs!338799 (and d!402754 d!402692)))

(assert (=> bs!338799 (= (= (rules!10954 acc!229) (rules!10954 sep!3)) (= lambda!62324 lambda!62322))))

(declare-fun b!1409346 () Bool)

(declare-fun e!899706 () Bool)

(assert (=> b!1409346 (= e!899706 true)))

(declare-fun b!1409345 () Bool)

(declare-fun e!899705 () Bool)

(assert (=> b!1409345 (= e!899705 e!899706)))

(declare-fun b!1409344 () Bool)

(declare-fun e!899704 () Bool)

(assert (=> b!1409344 (= e!899704 e!899705)))

(assert (=> d!402754 e!899704))

(assert (= b!1409345 b!1409346))

(assert (= b!1409344 b!1409345))

(assert (= (and d!402754 ((_ is Cons!14365) (rules!10954 acc!229))) b!1409344))

(assert (=> b!1409346 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6654 order!8771 lambda!62324))))

(assert (=> b!1409346 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6654 order!8771 lambda!62324))))

(assert (=> d!402754 true))

(declare-fun lt!470479 () Bool)

(assert (=> d!402754 (= lt!470479 (forall!3487 (list!5613 (tokens!1708 acc!229)) lambda!62324))))

(declare-fun e!899703 () Bool)

(assert (=> d!402754 (= lt!470479 e!899703)))

(declare-fun res!638315 () Bool)

(assert (=> d!402754 (=> res!638315 e!899703)))

(assert (=> d!402754 (= res!638315 (not ((_ is Cons!14364) (list!5613 (tokens!1708 acc!229)))))))

(assert (=> d!402754 (not (isEmpty!8750 (rules!10954 acc!229)))))

(assert (=> d!402754 (= (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 acc!229) (list!5613 (tokens!1708 acc!229))) lt!470479)))

(declare-fun b!1409342 () Bool)

(declare-fun e!899702 () Bool)

(assert (=> b!1409342 (= e!899703 e!899702)))

(declare-fun res!638314 () Bool)

(assert (=> b!1409342 (=> (not res!638314) (not e!899702))))

(assert (=> b!1409342 (= res!638314 (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) (h!19765 (list!5613 (tokens!1708 acc!229)))))))

(declare-fun b!1409343 () Bool)

(assert (=> b!1409343 (= e!899702 (rulesProduceEachTokenIndividuallyList!667 Lexer!2181 (rules!10954 acc!229) (t!123165 (list!5613 (tokens!1708 acc!229)))))))

(assert (= (and d!402754 (not res!638315)) b!1409342))

(assert (= (and b!1409342 res!638314) b!1409343))

(assert (=> d!402754 m!1586563))

(declare-fun m!1587945 () Bool)

(assert (=> d!402754 m!1587945))

(assert (=> d!402754 m!1586015))

(declare-fun m!1587947 () Bool)

(assert (=> b!1409342 m!1587947))

(declare-fun m!1587949 () Bool)

(assert (=> b!1409343 m!1587949))

(assert (=> b!1408695 d!402754))

(declare-fun d!402756 () Bool)

(assert (=> d!402756 (= (list!5613 (tokens!1708 acc!229)) (list!5621 (c!231483 (tokens!1708 acc!229))))))

(declare-fun bs!338800 () Bool)

(assert (= bs!338800 d!402756))

(declare-fun m!1587951 () Bool)

(assert (=> bs!338800 m!1587951))

(assert (=> b!1408695 d!402756))

(declare-fun d!402758 () Bool)

(declare-fun lt!470480 () Int)

(assert (=> d!402758 (>= lt!470480 0)))

(declare-fun e!899707 () Int)

(assert (=> d!402758 (= lt!470480 e!899707)))

(declare-fun c!231606 () Bool)

(assert (=> d!402758 (= c!231606 ((_ is Nil!14366) (list!5615 (xs!7476 (c!231484 objs!24)))))))

(assert (=> d!402758 (= (size!11815 (list!5615 (xs!7476 (c!231484 objs!24)))) lt!470480)))

(declare-fun b!1409347 () Bool)

(assert (=> b!1409347 (= e!899707 0)))

(declare-fun b!1409348 () Bool)

(assert (=> b!1409348 (= e!899707 (+ 1 (size!11815 (t!123167 (list!5615 (xs!7476 (c!231484 objs!24)))))))))

(assert (= (and d!402758 c!231606) b!1409347))

(assert (= (and d!402758 (not c!231606)) b!1409348))

(declare-fun m!1587953 () Bool)

(assert (=> b!1409348 m!1587953))

(assert (=> d!402132 d!402758))

(declare-fun d!402760 () Bool)

(assert (=> d!402760 (= (list!5615 (xs!7476 (c!231484 objs!24))) (innerList!4809 (xs!7476 (c!231484 objs!24))))))

(assert (=> d!402132 d!402760))

(declare-fun d!402762 () Bool)

(declare-fun res!638320 () Bool)

(declare-fun e!899712 () Bool)

(assert (=> d!402762 (=> res!638320 e!899712)))

(assert (=> d!402762 (= res!638320 ((_ is Nil!14364) (list!5613 (tokens!1708 sep!3))))))

(assert (=> d!402762 (= (forall!3487 (list!5613 (tokens!1708 sep!3)) lambda!62291) e!899712)))

(declare-fun b!1409353 () Bool)

(declare-fun e!899713 () Bool)

(assert (=> b!1409353 (= e!899712 e!899713)))

(declare-fun res!638321 () Bool)

(assert (=> b!1409353 (=> (not res!638321) (not e!899713))))

(declare-fun dynLambda!6664 (Int Token!4644) Bool)

(assert (=> b!1409353 (= res!638321 (dynLambda!6664 lambda!62291 (h!19765 (list!5613 (tokens!1708 sep!3)))))))

(declare-fun b!1409354 () Bool)

(assert (=> b!1409354 (= e!899713 (forall!3487 (t!123165 (list!5613 (tokens!1708 sep!3))) lambda!62291))))

(assert (= (and d!402762 (not res!638320)) b!1409353))

(assert (= (and b!1409353 res!638321) b!1409354))

(declare-fun b_lambda!44475 () Bool)

(assert (=> (not b_lambda!44475) (not b!1409353)))

(declare-fun m!1587955 () Bool)

(assert (=> b!1409353 m!1587955))

(declare-fun m!1587957 () Bool)

(assert (=> b!1409354 m!1587957))

(assert (=> d!402122 d!402762))

(assert (=> d!402122 d!402694))

(declare-fun d!402764 () Bool)

(declare-fun lt!470483 () Bool)

(assert (=> d!402764 (= lt!470483 (forall!3487 (list!5613 (tokens!1708 sep!3)) lambda!62291))))

(declare-fun forall!3493 (Conc!4748 Int) Bool)

(assert (=> d!402764 (= lt!470483 (forall!3493 (c!231483 (tokens!1708 sep!3)) lambda!62291))))

(assert (=> d!402764 (= (forall!3488 (tokens!1708 sep!3) lambda!62291) lt!470483)))

(declare-fun bs!338801 () Bool)

(assert (= bs!338801 d!402764))

(assert (=> bs!338801 m!1586169))

(assert (=> bs!338801 m!1586169))

(assert (=> bs!338801 m!1586171))

(declare-fun m!1587959 () Bool)

(assert (=> bs!338801 m!1587959))

(assert (=> d!402122 d!402764))

(assert (=> d!402122 d!402146))

(declare-fun d!402766 () Bool)

(assert (=> d!402766 (= (inv!18697 (xs!7476 (left!12264 (c!231484 objs!24)))) (<= (size!11815 (innerList!4809 (xs!7476 (left!12264 (c!231484 objs!24))))) 2147483647))))

(declare-fun bs!338802 () Bool)

(assert (= bs!338802 d!402766))

(declare-fun m!1587961 () Bool)

(assert (=> bs!338802 m!1587961))

(assert (=> b!1408714 d!402766))

(declare-fun d!402768 () Bool)

(declare-fun e!899716 () Bool)

(assert (=> d!402768 (= (forall!3482 (++!3732 (list!5616 (left!12264 (c!231484 objs!24))) (list!5616 (right!12594 (c!231484 objs!24)))) lambda!62281) e!899716)))

(declare-fun res!638324 () Bool)

(assert (=> d!402768 (=> (not res!638324) (not e!899716))))

(assert (=> d!402768 (= res!638324 (forall!3482 (list!5616 (left!12264 (c!231484 objs!24))) lambda!62281))))

(declare-fun lt!470486 () Unit!20733)

(declare-fun choose!8709 (List!14432 List!14432 Int) Unit!20733)

(assert (=> d!402768 (= lt!470486 (choose!8709 (list!5616 (left!12264 (c!231484 objs!24))) (list!5616 (right!12594 (c!231484 objs!24))) lambda!62281))))

(assert (=> d!402768 (= (lemmaForallConcat!124 (list!5616 (left!12264 (c!231484 objs!24))) (list!5616 (right!12594 (c!231484 objs!24))) lambda!62281) lt!470486)))

(declare-fun b!1409357 () Bool)

(assert (=> b!1409357 (= e!899716 (forall!3482 (list!5616 (right!12594 (c!231484 objs!24))) lambda!62281))))

(assert (= (and d!402768 res!638324) b!1409357))

(assert (=> d!402768 m!1586285))

(assert (=> d!402768 m!1586287))

(assert (=> d!402768 m!1586859))

(assert (=> d!402768 m!1586859))

(declare-fun m!1587963 () Bool)

(assert (=> d!402768 m!1587963))

(assert (=> d!402768 m!1586285))

(declare-fun m!1587965 () Bool)

(assert (=> d!402768 m!1587965))

(assert (=> d!402768 m!1586285))

(assert (=> d!402768 m!1586287))

(declare-fun m!1587967 () Bool)

(assert (=> d!402768 m!1587967))

(assert (=> b!1409357 m!1586287))

(assert (=> b!1409357 m!1587791))

(assert (=> b!1408470 d!402768))

(declare-fun b!1409358 () Bool)

(declare-fun e!899717 () List!14432)

(assert (=> b!1409358 (= e!899717 Nil!14366)))

(declare-fun d!402770 () Bool)

(declare-fun c!231607 () Bool)

(assert (=> d!402770 (= c!231607 ((_ is Empty!4749) (left!12264 (c!231484 objs!24))))))

(assert (=> d!402770 (= (list!5616 (left!12264 (c!231484 objs!24))) e!899717)))

(declare-fun b!1409361 () Bool)

(declare-fun e!899718 () List!14432)

(assert (=> b!1409361 (= e!899718 (++!3732 (list!5616 (left!12264 (left!12264 (c!231484 objs!24)))) (list!5616 (right!12594 (left!12264 (c!231484 objs!24))))))))

(declare-fun b!1409360 () Bool)

(assert (=> b!1409360 (= e!899718 (list!5615 (xs!7476 (left!12264 (c!231484 objs!24)))))))

(declare-fun b!1409359 () Bool)

(assert (=> b!1409359 (= e!899717 e!899718)))

(declare-fun c!231608 () Bool)

(assert (=> b!1409359 (= c!231608 ((_ is Leaf!7191) (left!12264 (c!231484 objs!24))))))

(assert (= (and d!402770 c!231607) b!1409358))

(assert (= (and d!402770 (not c!231607)) b!1409359))

(assert (= (and b!1409359 c!231608) b!1409360))

(assert (= (and b!1409359 (not c!231608)) b!1409361))

(declare-fun m!1587969 () Bool)

(assert (=> b!1409361 m!1587969))

(declare-fun m!1587971 () Bool)

(assert (=> b!1409361 m!1587971))

(assert (=> b!1409361 m!1587969))

(assert (=> b!1409361 m!1587971))

(declare-fun m!1587973 () Bool)

(assert (=> b!1409361 m!1587973))

(assert (=> b!1409360 m!1586897))

(assert (=> b!1408470 d!402770))

(declare-fun b!1409362 () Bool)

(declare-fun e!899719 () List!14432)

(assert (=> b!1409362 (= e!899719 Nil!14366)))

(declare-fun d!402772 () Bool)

(declare-fun c!231609 () Bool)

(assert (=> d!402772 (= c!231609 ((_ is Empty!4749) (right!12594 (c!231484 objs!24))))))

(assert (=> d!402772 (= (list!5616 (right!12594 (c!231484 objs!24))) e!899719)))

(declare-fun b!1409365 () Bool)

(declare-fun e!899720 () List!14432)

(assert (=> b!1409365 (= e!899720 (++!3732 (list!5616 (left!12264 (right!12594 (c!231484 objs!24)))) (list!5616 (right!12594 (right!12594 (c!231484 objs!24))))))))

(declare-fun b!1409364 () Bool)

(assert (=> b!1409364 (= e!899720 (list!5615 (xs!7476 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1409363 () Bool)

(assert (=> b!1409363 (= e!899719 e!899720)))

(declare-fun c!231610 () Bool)

(assert (=> b!1409363 (= c!231610 ((_ is Leaf!7191) (right!12594 (c!231484 objs!24))))))

(assert (= (and d!402772 c!231609) b!1409362))

(assert (= (and d!402772 (not c!231609)) b!1409363))

(assert (= (and b!1409363 c!231610) b!1409364))

(assert (= (and b!1409363 (not c!231610)) b!1409365))

(assert (=> b!1409365 m!1587781))

(assert (=> b!1409365 m!1587783))

(assert (=> b!1409365 m!1587781))

(assert (=> b!1409365 m!1587783))

(declare-fun m!1587975 () Bool)

(assert (=> b!1409365 m!1587975))

(assert (=> b!1409364 m!1587695))

(assert (=> b!1408470 d!402772))

(declare-fun b!1409369 () Bool)

(declare-fun e!899721 () Bool)

(assert (=> b!1409369 (= e!899721 (forall!3483 (right!12594 (left!12264 (c!231484 objs!24))) lambda!62281))))

(declare-fun b!1409368 () Bool)

(declare-fun e!899722 () Bool)

(assert (=> b!1409368 (= e!899722 e!899721)))

(declare-fun lt!470487 () Unit!20733)

(assert (=> b!1409368 (= lt!470487 (lemmaForallConcat!124 (list!5616 (left!12264 (left!12264 (c!231484 objs!24)))) (list!5616 (right!12594 (left!12264 (c!231484 objs!24)))) lambda!62281))))

(declare-fun res!638326 () Bool)

(assert (=> b!1409368 (= res!638326 (forall!3483 (left!12264 (left!12264 (c!231484 objs!24))) lambda!62281))))

(assert (=> b!1409368 (=> (not res!638326) (not e!899721))))

(declare-fun b!1409367 () Bool)

(assert (=> b!1409367 (= e!899722 (forall!3489 (xs!7476 (left!12264 (c!231484 objs!24))) lambda!62281))))

(declare-fun b!1409366 () Bool)

(declare-fun e!899723 () Bool)

(assert (=> b!1409366 (= e!899723 e!899722)))

(declare-fun c!231611 () Bool)

(assert (=> b!1409366 (= c!231611 ((_ is Leaf!7191) (left!12264 (c!231484 objs!24))))))

(declare-fun d!402774 () Bool)

(declare-fun lt!470488 () Bool)

(assert (=> d!402774 (= lt!470488 (forall!3482 (list!5616 (left!12264 (c!231484 objs!24))) lambda!62281))))

(assert (=> d!402774 (= lt!470488 e!899723)))

(declare-fun res!638325 () Bool)

(assert (=> d!402774 (=> res!638325 e!899723)))

(assert (=> d!402774 (= res!638325 ((_ is Empty!4749) (left!12264 (c!231484 objs!24))))))

(assert (=> d!402774 (= (forall!3483 (left!12264 (c!231484 objs!24)) lambda!62281) lt!470488)))

(assert (= (and d!402774 (not res!638325)) b!1409366))

(assert (= (and b!1409366 c!231611) b!1409367))

(assert (= (and b!1409366 (not c!231611)) b!1409368))

(assert (= (and b!1409368 res!638326) b!1409369))

(declare-fun m!1587977 () Bool)

(assert (=> b!1409369 m!1587977))

(assert (=> b!1409368 m!1587969))

(assert (=> b!1409368 m!1587971))

(assert (=> b!1409368 m!1587969))

(assert (=> b!1409368 m!1587971))

(declare-fun m!1587979 () Bool)

(assert (=> b!1409368 m!1587979))

(declare-fun m!1587981 () Bool)

(assert (=> b!1409368 m!1587981))

(declare-fun m!1587983 () Bool)

(assert (=> b!1409367 m!1587983))

(assert (=> d!402774 m!1586285))

(assert (=> d!402774 m!1586285))

(assert (=> d!402774 m!1587965))

(assert (=> b!1408470 d!402774))

(assert (=> b!1408659 d!402410))

(assert (=> b!1408659 d!402412))

(declare-fun d!402776 () Bool)

(declare-fun c!231612 () Bool)

(assert (=> d!402776 (= c!231612 ((_ is Node!4749) (left!12264 (right!12594 (c!231484 objs!24)))))))

(declare-fun e!899724 () Bool)

(assert (=> d!402776 (= (inv!18679 (left!12264 (right!12594 (c!231484 objs!24)))) e!899724)))

(declare-fun b!1409370 () Bool)

(assert (=> b!1409370 (= e!899724 (inv!18693 (left!12264 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1409371 () Bool)

(declare-fun e!899725 () Bool)

(assert (=> b!1409371 (= e!899724 e!899725)))

(declare-fun res!638327 () Bool)

(assert (=> b!1409371 (= res!638327 (not ((_ is Leaf!7191) (left!12264 (right!12594 (c!231484 objs!24))))))))

(assert (=> b!1409371 (=> res!638327 e!899725)))

(declare-fun b!1409372 () Bool)

(assert (=> b!1409372 (= e!899725 (inv!18694 (left!12264 (right!12594 (c!231484 objs!24)))))))

(assert (= (and d!402776 c!231612) b!1409370))

(assert (= (and d!402776 (not c!231612)) b!1409371))

(assert (= (and b!1409371 (not res!638327)) b!1409372))

(declare-fun m!1587985 () Bool)

(assert (=> b!1409370 m!1587985))

(declare-fun m!1587987 () Bool)

(assert (=> b!1409372 m!1587987))

(assert (=> b!1408716 d!402776))

(declare-fun d!402778 () Bool)

(declare-fun c!231613 () Bool)

(assert (=> d!402778 (= c!231613 ((_ is Node!4749) (right!12594 (right!12594 (c!231484 objs!24)))))))

(declare-fun e!899726 () Bool)

(assert (=> d!402778 (= (inv!18679 (right!12594 (right!12594 (c!231484 objs!24)))) e!899726)))

(declare-fun b!1409373 () Bool)

(assert (=> b!1409373 (= e!899726 (inv!18693 (right!12594 (right!12594 (c!231484 objs!24)))))))

(declare-fun b!1409374 () Bool)

(declare-fun e!899727 () Bool)

(assert (=> b!1409374 (= e!899726 e!899727)))

(declare-fun res!638328 () Bool)

(assert (=> b!1409374 (= res!638328 (not ((_ is Leaf!7191) (right!12594 (right!12594 (c!231484 objs!24))))))))

(assert (=> b!1409374 (=> res!638328 e!899727)))

(declare-fun b!1409375 () Bool)

(assert (=> b!1409375 (= e!899727 (inv!18694 (right!12594 (right!12594 (c!231484 objs!24)))))))

(assert (= (and d!402778 c!231613) b!1409373))

(assert (= (and d!402778 (not c!231613)) b!1409374))

(assert (= (and b!1409374 (not res!638328)) b!1409375))

(declare-fun m!1587989 () Bool)

(assert (=> b!1409373 m!1587989))

(declare-fun m!1587991 () Bool)

(assert (=> b!1409375 m!1587991))

(assert (=> b!1408716 d!402778))

(declare-fun d!402780 () Bool)

(declare-fun lt!470489 () Bool)

(assert (=> d!402780 (= lt!470489 (isEmpty!8758 (list!5621 (left!12263 (c!231483 (tokens!1708 acc!229))))))))

(assert (=> d!402780 (= lt!470489 (= (size!11820 (left!12263 (c!231483 (tokens!1708 acc!229)))) 0))))

(assert (=> d!402780 (= (isEmpty!8754 (left!12263 (c!231483 (tokens!1708 acc!229)))) lt!470489)))

(declare-fun bs!338803 () Bool)

(assert (= bs!338803 d!402780))

(assert (=> bs!338803 m!1587245))

(assert (=> bs!338803 m!1587245))

(declare-fun m!1587993 () Bool)

(assert (=> bs!338803 m!1587993))

(assert (=> bs!338803 m!1586547))

(assert (=> b!1408410 d!402780))

(declare-fun b!1409376 () Bool)

(declare-fun e!899729 () Bool)

(assert (=> b!1409376 (= e!899729 (inv!16 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409377 () Bool)

(declare-fun e!899730 () Bool)

(assert (=> b!1409377 (= e!899729 e!899730)))

(declare-fun c!231615 () Bool)

(assert (=> b!1409377 (= c!231615 ((_ is IntegerValue!7744) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409378 () Bool)

(declare-fun res!638329 () Bool)

(declare-fun e!899728 () Bool)

(assert (=> b!1409378 (=> res!638329 e!899728)))

(assert (=> b!1409378 (= res!638329 (not ((_ is IntegerValue!7745) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))))

(assert (=> b!1409378 (= e!899730 e!899728)))

(declare-fun b!1409379 () Bool)

(assert (=> b!1409379 (= e!899730 (inv!17 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409380 () Bool)

(assert (=> b!1409380 (= e!899728 (inv!15 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun d!402782 () Bool)

(declare-fun c!231614 () Bool)

(assert (=> d!402782 (= c!231614 ((_ is IntegerValue!7743) (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))))

(assert (=> d!402782 (= (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))) e!899729)))

(assert (= (and d!402782 c!231614) b!1409376))

(assert (= (and d!402782 (not c!231614)) b!1409377))

(assert (= (and b!1409377 c!231615) b!1409379))

(assert (= (and b!1409377 (not c!231615)) b!1409378))

(assert (= (and b!1409378 (not res!638329)) b!1409380))

(declare-fun m!1587995 () Bool)

(assert (=> b!1409376 m!1587995))

(declare-fun m!1587997 () Bool)

(assert (=> b!1409379 m!1587997))

(declare-fun m!1587999 () Bool)

(assert (=> b!1409380 m!1587999))

(assert (=> b!1408710 d!402782))

(declare-fun d!402784 () Bool)

(declare-fun res!638330 () Bool)

(declare-fun e!899731 () Bool)

(assert (=> d!402784 (=> (not res!638330) (not e!899731))))

(assert (=> d!402784 (= res!638330 (= (csize!9728 (right!12594 (c!231484 objs!24))) (+ (size!11816 (left!12264 (right!12594 (c!231484 objs!24)))) (size!11816 (right!12594 (right!12594 (c!231484 objs!24)))))))))

(assert (=> d!402784 (= (inv!18693 (right!12594 (c!231484 objs!24))) e!899731)))

(declare-fun b!1409381 () Bool)

(declare-fun res!638331 () Bool)

(assert (=> b!1409381 (=> (not res!638331) (not e!899731))))

(assert (=> b!1409381 (= res!638331 (and (not (= (left!12264 (right!12594 (c!231484 objs!24))) Empty!4749)) (not (= (right!12594 (right!12594 (c!231484 objs!24))) Empty!4749))))))

(declare-fun b!1409382 () Bool)

(declare-fun res!638332 () Bool)

(assert (=> b!1409382 (=> (not res!638332) (not e!899731))))

(assert (=> b!1409382 (= res!638332 (= (cheight!4960 (right!12594 (c!231484 objs!24))) (+ (max!0 (height!687 (left!12264 (right!12594 (c!231484 objs!24)))) (height!687 (right!12594 (right!12594 (c!231484 objs!24))))) 1)))))

(declare-fun b!1409383 () Bool)

(assert (=> b!1409383 (= e!899731 (<= 0 (cheight!4960 (right!12594 (c!231484 objs!24)))))))

(assert (= (and d!402784 res!638330) b!1409381))

(assert (= (and b!1409381 res!638331) b!1409382))

(assert (= (and b!1409382 res!638332) b!1409383))

(declare-fun m!1588001 () Bool)

(assert (=> d!402784 m!1588001))

(declare-fun m!1588003 () Bool)

(assert (=> d!402784 m!1588003))

(assert (=> b!1409382 m!1587229))

(assert (=> b!1409382 m!1587231))

(assert (=> b!1409382 m!1587229))

(assert (=> b!1409382 m!1587231))

(declare-fun m!1588005 () Bool)

(assert (=> b!1409382 m!1588005))

(assert (=> b!1408346 d!402784))

(assert (=> b!1408326 d!402254))

(assert (=> b!1408326 d!402256))

(declare-fun bs!338804 () Bool)

(declare-fun d!402786 () Bool)

(assert (= bs!338804 (and d!402786 d!402406)))

(declare-fun lambda!62325 () Int)

(assert (=> bs!338804 (= (= (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 sep!3))))) (= lambda!62325 lambda!62309))))

(assert (=> d!402786 true))

(assert (=> d!402786 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (dynLambda!6662 order!8779 lambda!62325))))

(assert (=> d!402786 (= (equivClasses!927 (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toValue!3782 (transformation!2491 (h!19766 (rules!10954 acc!229))))) (Forall2!453 lambda!62325))))

(declare-fun bs!338805 () Bool)

(assert (= bs!338805 d!402786))

(declare-fun m!1588007 () Bool)

(assert (=> bs!338805 m!1588007))

(assert (=> b!1408381 d!402786))

(declare-fun d!402788 () Bool)

(declare-fun res!638333 () Bool)

(declare-fun e!899732 () Bool)

(assert (=> d!402788 (=> res!638333 e!899732)))

(assert (=> d!402788 (= res!638333 ((_ is Nil!14364) (list!5613 (tokens!1708 acc!229))))))

(assert (=> d!402788 (= (forall!3487 (list!5613 (tokens!1708 acc!229)) lambda!62293) e!899732)))

(declare-fun b!1409384 () Bool)

(declare-fun e!899733 () Bool)

(assert (=> b!1409384 (= e!899732 e!899733)))

(declare-fun res!638334 () Bool)

(assert (=> b!1409384 (=> (not res!638334) (not e!899733))))

(assert (=> b!1409384 (= res!638334 (dynLambda!6664 lambda!62293 (h!19765 (list!5613 (tokens!1708 acc!229)))))))

(declare-fun b!1409385 () Bool)

(assert (=> b!1409385 (= e!899733 (forall!3487 (t!123165 (list!5613 (tokens!1708 acc!229))) lambda!62293))))

(assert (= (and d!402788 (not res!638333)) b!1409384))

(assert (= (and b!1409384 res!638334) b!1409385))

(declare-fun b_lambda!44477 () Bool)

(assert (=> (not b_lambda!44477) (not b!1409384)))

(declare-fun m!1588009 () Bool)

(assert (=> b!1409384 m!1588009))

(declare-fun m!1588011 () Bool)

(assert (=> b!1409385 m!1588011))

(assert (=> d!402268 d!402788))

(assert (=> d!402268 d!402756))

(declare-fun d!402790 () Bool)

(declare-fun lt!470490 () Bool)

(assert (=> d!402790 (= lt!470490 (forall!3487 (list!5613 (tokens!1708 acc!229)) lambda!62293))))

(assert (=> d!402790 (= lt!470490 (forall!3493 (c!231483 (tokens!1708 acc!229)) lambda!62293))))

(assert (=> d!402790 (= (forall!3488 (tokens!1708 acc!229) lambda!62293) lt!470490)))

(declare-fun bs!338806 () Bool)

(assert (= bs!338806 d!402790))

(assert (=> bs!338806 m!1586563))

(assert (=> bs!338806 m!1586563))

(assert (=> bs!338806 m!1586565))

(declare-fun m!1588013 () Bool)

(assert (=> bs!338806 m!1588013))

(assert (=> d!402268 d!402790))

(assert (=> d!402268 d!402150))

(assert (=> b!1408389 d!402758))

(assert (=> b!1408389 d!402760))

(declare-fun d!402792 () Bool)

(declare-fun c!231616 () Bool)

(assert (=> d!402792 (= c!231616 ((_ is Node!4748) (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))))))

(declare-fun e!899734 () Bool)

(assert (=> d!402792 (= (inv!18680 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))) e!899734)))

(declare-fun b!1409386 () Bool)

(assert (=> b!1409386 (= e!899734 (inv!18691 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))))))

(declare-fun b!1409387 () Bool)

(declare-fun e!899735 () Bool)

(assert (=> b!1409387 (= e!899734 e!899735)))

(declare-fun res!638335 () Bool)

(assert (=> b!1409387 (= res!638335 (not ((_ is Leaf!7190) (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))))))

(assert (=> b!1409387 (=> res!638335 e!899735)))

(declare-fun b!1409388 () Bool)

(assert (=> b!1409388 (= e!899735 (inv!18692 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))))))

(assert (= (and d!402792 c!231616) b!1409386))

(assert (= (and d!402792 (not c!231616)) b!1409387))

(assert (= (and b!1409387 (not res!638335)) b!1409388))

(declare-fun m!1588015 () Bool)

(assert (=> b!1409386 m!1588015))

(declare-fun m!1588017 () Bool)

(assert (=> b!1409388 m!1588017))

(assert (=> b!1408729 d!402792))

(declare-fun b!1409389 () Bool)

(declare-fun e!899736 () Bool)

(declare-fun e!899737 () Bool)

(assert (=> b!1409389 (= e!899736 e!899737)))

(declare-fun res!638339 () Bool)

(assert (=> b!1409389 (=> (not res!638339) (not e!899737))))

(assert (=> b!1409389 (= res!638339 (<= (- 1) (- (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))))

(declare-fun b!1409390 () Bool)

(declare-fun res!638340 () Bool)

(assert (=> b!1409390 (=> (not res!638340) (not e!899737))))

(assert (=> b!1409390 (= res!638340 (not (isEmpty!8754 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun b!1409391 () Bool)

(declare-fun res!638341 () Bool)

(assert (=> b!1409391 (=> (not res!638341) (not e!899737))))

(assert (=> b!1409391 (= res!638341 (isBalanced!1399 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409392 () Bool)

(assert (=> b!1409392 (= e!899737 (not (isEmpty!8754 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))))))

(declare-fun d!402794 () Bool)

(declare-fun res!638338 () Bool)

(assert (=> d!402794 (=> res!638338 e!899736)))

(assert (=> d!402794 (= res!638338 (not ((_ is Node!4748) (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(assert (=> d!402794 (= (isBalanced!1399 (right!12593 (c!231483 (tokens!1708 sep!3)))) e!899736)))

(declare-fun b!1409393 () Bool)

(declare-fun res!638336 () Bool)

(assert (=> b!1409393 (=> (not res!638336) (not e!899737))))

(assert (=> b!1409393 (= res!638336 (isBalanced!1399 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))))))

(declare-fun b!1409394 () Bool)

(declare-fun res!638337 () Bool)

(assert (=> b!1409394 (=> (not res!638337) (not e!899737))))

(assert (=> b!1409394 (= res!638337 (<= (- (height!686 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) (height!686 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) 1))))

(assert (= (and d!402794 (not res!638338)) b!1409389))

(assert (= (and b!1409389 res!638339) b!1409394))

(assert (= (and b!1409394 res!638337) b!1409391))

(assert (= (and b!1409391 res!638341) b!1409393))

(assert (= (and b!1409393 res!638336) b!1409390))

(assert (= (and b!1409390 res!638340) b!1409392))

(declare-fun m!1588019 () Bool)

(assert (=> b!1409392 m!1588019))

(assert (=> b!1409394 m!1586837))

(assert (=> b!1409394 m!1586839))

(declare-fun m!1588021 () Bool)

(assert (=> b!1409391 m!1588021))

(assert (=> b!1409389 m!1586837))

(assert (=> b!1409389 m!1586839))

(declare-fun m!1588023 () Bool)

(assert (=> b!1409393 m!1588023))

(declare-fun m!1588025 () Bool)

(assert (=> b!1409390 m!1588025))

(assert (=> b!1408663 d!402794))

(assert (=> b!1408414 d!402728))

(assert (=> b!1408414 d!402730))

(declare-fun e!899738 () Bool)

(declare-fun tp!400128 () Bool)

(declare-fun b!1409395 () Bool)

(declare-fun tp!400127 () Bool)

(assert (=> b!1409395 (= e!899738 (and (inv!18680 (left!12263 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))) tp!400127 (inv!18680 (right!12593 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))) tp!400128))))

(declare-fun b!1409397 () Bool)

(declare-fun e!899739 () Bool)

(declare-fun tp!400126 () Bool)

(assert (=> b!1409397 (= e!899739 tp!400126)))

(declare-fun b!1409396 () Bool)

(assert (=> b!1409396 (= e!899738 (and (inv!18695 (xs!7475 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))) e!899739))))

(assert (=> b!1408730 (= tp!400023 (and (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229))))) e!899738))))

(assert (= (and b!1408730 ((_ is Node!4748) (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))) b!1409395))

(assert (= b!1409396 b!1409397))

(assert (= (and b!1408730 ((_ is Leaf!7190) (left!12263 (left!12263 (c!231483 (tokens!1708 acc!229)))))) b!1409396))

(declare-fun m!1588027 () Bool)

(assert (=> b!1409395 m!1588027))

(declare-fun m!1588029 () Bool)

(assert (=> b!1409395 m!1588029))

(declare-fun m!1588031 () Bool)

(assert (=> b!1409396 m!1588031))

(assert (=> b!1408730 m!1586597))

(declare-fun b!1409398 () Bool)

(declare-fun tp!400130 () Bool)

(declare-fun tp!400131 () Bool)

(declare-fun e!899740 () Bool)

(assert (=> b!1409398 (= e!899740 (and (inv!18680 (left!12263 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) tp!400130 (inv!18680 (right!12593 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) tp!400131))))

(declare-fun b!1409400 () Bool)

(declare-fun e!899741 () Bool)

(declare-fun tp!400129 () Bool)

(assert (=> b!1409400 (= e!899741 tp!400129)))

(declare-fun b!1409399 () Bool)

(assert (=> b!1409399 (= e!899740 (and (inv!18695 (xs!7475 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) e!899741))))

(assert (=> b!1408730 (= tp!400024 (and (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229))))) e!899740))))

(assert (= (and b!1408730 ((_ is Node!4748) (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) b!1409398))

(assert (= b!1409399 b!1409400))

(assert (= (and b!1408730 ((_ is Leaf!7190) (right!12593 (left!12263 (c!231483 (tokens!1708 acc!229)))))) b!1409399))

(declare-fun m!1588033 () Bool)

(assert (=> b!1409398 m!1588033))

(declare-fun m!1588035 () Bool)

(assert (=> b!1409398 m!1588035))

(declare-fun m!1588037 () Bool)

(assert (=> b!1409399 m!1588037))

(assert (=> b!1408730 m!1586599))

(declare-fun b!1409404 () Bool)

(declare-fun b_free!34491 () Bool)

(declare-fun b_next!35195 () Bool)

(assert (=> b!1409404 (= b_free!34491 (not b_next!35195))))

(declare-fun tp!400133 () Bool)

(declare-fun b_and!94411 () Bool)

(assert (=> b!1409404 (= tp!400133 b_and!94411)))

(declare-fun b_free!34493 () Bool)

(declare-fun b_next!35197 () Bool)

(assert (=> b!1409404 (= b_free!34493 (not b_next!35197))))

(declare-fun t!123319 () Bool)

(declare-fun tb!73293 () Bool)

(assert (=> (and b!1409404 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123319) tb!73293))

(declare-fun result!89158 () Bool)

(assert (= result!89158 result!89070))

(assert (=> b!1408894 t!123319))

(declare-fun t!123321 () Bool)

(declare-fun tb!73295 () Bool)

(assert (=> (and b!1409404 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123321) tb!73295))

(declare-fun result!89160 () Bool)

(assert (= result!89160 result!89146))

(assert (=> b!1409272 t!123321))

(declare-fun b_and!94413 () Bool)

(declare-fun tp!400134 () Bool)

(assert (=> b!1409404 (= tp!400134 (and (=> t!123319 result!89158) (=> t!123321 result!89160) b_and!94413))))

(declare-fun e!899745 () Bool)

(assert (=> b!1408741 (= tp!400031 e!899745)))

(declare-fun e!899743 () Bool)

(assert (=> b!1409404 (= e!899743 (and tp!400133 tp!400134))))

(declare-fun b!1409402 () Bool)

(declare-fun e!899742 () Bool)

(declare-fun e!899746 () Bool)

(assert (=> b!1409402 (= e!899742 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3)))))))) e!899746))))

(declare-fun b!1409401 () Bool)

(declare-fun tp!400132 () Bool)

(assert (=> b!1409401 (= e!899745 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))) e!899742 tp!400132))))

(declare-fun b!1409403 () Bool)

(assert (=> b!1409403 (= e!899746 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) e!899743))))

(assert (= b!1409403 b!1409404))

(assert (= b!1409402 b!1409403))

(assert (= b!1409401 b!1409402))

(assert (= (and b!1408741 ((_ is Cons!14364) (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))) b!1409401))

(declare-fun m!1588039 () Bool)

(assert (=> b!1409402 m!1588039))

(declare-fun m!1588041 () Bool)

(assert (=> b!1409401 m!1588041))

(declare-fun m!1588043 () Bool)

(assert (=> b!1409403 m!1588043))

(declare-fun m!1588045 () Bool)

(assert (=> b!1409403 m!1588045))

(declare-fun b!1409408 () Bool)

(declare-fun b_free!34495 () Bool)

(declare-fun b_next!35199 () Bool)

(assert (=> b!1409408 (= b_free!34495 (not b_next!35199))))

(declare-fun tp!400136 () Bool)

(declare-fun b_and!94415 () Bool)

(assert (=> b!1409408 (= tp!400136 b_and!94415)))

(declare-fun b_free!34497 () Bool)

(declare-fun b_next!35201 () Bool)

(assert (=> b!1409408 (= b_free!34497 (not b_next!35201))))

(declare-fun tb!73297 () Bool)

(declare-fun t!123323 () Bool)

(assert (=> (and b!1409408 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123323) tb!73297))

(declare-fun result!89162 () Bool)

(assert (= result!89162 result!89070))

(assert (=> b!1408894 t!123323))

(declare-fun t!123325 () Bool)

(declare-fun tb!73299 () Bool)

(assert (=> (and b!1409408 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123325) tb!73299))

(declare-fun result!89164 () Bool)

(assert (= result!89164 result!89146))

(assert (=> b!1409272 t!123325))

(declare-fun tp!400137 () Bool)

(declare-fun b_and!94417 () Bool)

(assert (=> b!1409408 (= tp!400137 (and (=> t!123323 result!89162) (=> t!123325 result!89164) b_and!94417))))

(declare-fun e!899751 () Bool)

(assert (=> b!1408732 (= tp!400022 e!899751)))

(declare-fun e!899749 () Bool)

(assert (=> b!1409408 (= e!899749 (and tp!400136 tp!400137))))

(declare-fun b!1409406 () Bool)

(declare-fun e!899748 () Bool)

(declare-fun e!899752 () Bool)

(assert (=> b!1409406 (= e!899748 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229)))))))) e!899752))))

(declare-fun b!1409405 () Bool)

(declare-fun tp!400135 () Bool)

(assert (=> b!1409405 (= e!899751 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))) e!899748 tp!400135))))

(declare-fun b!1409407 () Bool)

(assert (=> b!1409407 (= e!899752 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) e!899749))))

(assert (= b!1409407 b!1409408))

(assert (= b!1409406 b!1409407))

(assert (= b!1409405 b!1409406))

(assert (= (and b!1408732 ((_ is Cons!14364) (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))) b!1409405))

(declare-fun m!1588047 () Bool)

(assert (=> b!1409406 m!1588047))

(declare-fun m!1588049 () Bool)

(assert (=> b!1409405 m!1588049))

(declare-fun m!1588051 () Bool)

(assert (=> b!1409407 m!1588051))

(declare-fun m!1588053 () Bool)

(assert (=> b!1409407 m!1588053))

(declare-fun b!1409412 () Bool)

(declare-fun b_free!34499 () Bool)

(declare-fun b_next!35203 () Bool)

(assert (=> b!1409412 (= b_free!34499 (not b_next!35203))))

(declare-fun tp!400139 () Bool)

(declare-fun b_and!94419 () Bool)

(assert (=> b!1409412 (= tp!400139 b_and!94419)))

(declare-fun b_free!34501 () Bool)

(declare-fun b_next!35205 () Bool)

(assert (=> b!1409412 (= b_free!34501 (not b_next!35205))))

(declare-fun tb!73301 () Bool)

(declare-fun t!123327 () Bool)

(assert (=> (and b!1409412 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123327) tb!73301))

(declare-fun result!89166 () Bool)

(assert (= result!89166 result!89070))

(assert (=> b!1408894 t!123327))

(declare-fun t!123329 () Bool)

(declare-fun tb!73303 () Bool)

(assert (=> (and b!1409412 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123329) tb!73303))

(declare-fun result!89168 () Bool)

(assert (= result!89168 result!89146))

(assert (=> b!1409272 t!123329))

(declare-fun b_and!94421 () Bool)

(declare-fun tp!400140 () Bool)

(assert (=> b!1409412 (= tp!400140 (and (=> t!123327 result!89166) (=> t!123329 result!89168) b_and!94421))))

(declare-fun e!899757 () Bool)

(assert (=> b!1408735 (= tp!400025 e!899757)))

(declare-fun e!899755 () Bool)

(assert (=> b!1409412 (= e!899755 (and tp!400139 tp!400140))))

(declare-fun b!1409410 () Bool)

(declare-fun e!899754 () Bool)

(declare-fun e!899758 () Bool)

(assert (=> b!1409410 (= e!899754 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229)))))))) e!899758))))

(declare-fun tp!400138 () Bool)

(declare-fun b!1409409 () Bool)

(assert (=> b!1409409 (= e!899757 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))) e!899754 tp!400138))))

(declare-fun b!1409411 () Bool)

(assert (=> b!1409411 (= e!899758 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) e!899755))))

(assert (= b!1409411 b!1409412))

(assert (= b!1409410 b!1409411))

(assert (= b!1409409 b!1409410))

(assert (= (and b!1408735 ((_ is Cons!14364) (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))) b!1409409))

(declare-fun m!1588055 () Bool)

(assert (=> b!1409410 m!1588055))

(declare-fun m!1588057 () Bool)

(assert (=> b!1409409 m!1588057))

(declare-fun m!1588059 () Bool)

(assert (=> b!1409411 m!1588059))

(declare-fun m!1588061 () Bool)

(assert (=> b!1409411 m!1588061))

(declare-fun b!1409415 () Bool)

(declare-fun e!899762 () Bool)

(assert (=> b!1409415 (= e!899762 true)))

(declare-fun b!1409414 () Bool)

(declare-fun e!899761 () Bool)

(assert (=> b!1409414 (= e!899761 e!899762)))

(declare-fun b!1409413 () Bool)

(declare-fun e!899760 () Bool)

(assert (=> b!1409413 (= e!899760 e!899761)))

(assert (=> b!1408696 e!899760))

(assert (= b!1409414 b!1409415))

(assert (= b!1409413 b!1409414))

(assert (= (and b!1408696 ((_ is Cons!14365) (t!123166 (rules!10954 acc!229)))) b!1409413))

(assert (=> b!1409415 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229)))))) (dynLambda!6654 order!8771 lambda!62293))))

(assert (=> b!1409415 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229)))))) (dynLambda!6654 order!8771 lambda!62293))))

(declare-fun b!1409419 () Bool)

(declare-fun b_free!34503 () Bool)

(declare-fun b_next!35207 () Bool)

(assert (=> b!1409419 (= b_free!34503 (not b_next!35207))))

(declare-fun tp!400142 () Bool)

(declare-fun b_and!94423 () Bool)

(assert (=> b!1409419 (= tp!400142 b_and!94423)))

(declare-fun b_free!34505 () Bool)

(declare-fun b_next!35209 () Bool)

(assert (=> b!1409419 (= b_free!34505 (not b_next!35209))))

(declare-fun tb!73305 () Bool)

(declare-fun t!123331 () Bool)

(assert (=> (and b!1409419 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123331) tb!73305))

(declare-fun result!89170 () Bool)

(assert (= result!89170 result!89070))

(assert (=> b!1408894 t!123331))

(declare-fun t!123333 () Bool)

(declare-fun tb!73307 () Bool)

(assert (=> (and b!1409419 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123333) tb!73307))

(declare-fun result!89172 () Bool)

(assert (= result!89172 result!89146))

(assert (=> b!1409272 t!123333))

(declare-fun b_and!94425 () Bool)

(declare-fun tp!400143 () Bool)

(assert (=> b!1409419 (= tp!400143 (and (=> t!123331 result!89170) (=> t!123333 result!89172) b_and!94425))))

(declare-fun e!899766 () Bool)

(assert (=> b!1408742 (= tp!400034 e!899766)))

(declare-fun e!899764 () Bool)

(assert (=> b!1409419 (= e!899764 (and tp!400142 tp!400143))))

(declare-fun b!1409417 () Bool)

(declare-fun e!899763 () Bool)

(declare-fun e!899767 () Bool)

(assert (=> b!1409417 (= e!899763 (and (inv!21 (value!80626 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) e!899767))))

(declare-fun tp!400141 () Bool)

(declare-fun b!1409416 () Bool)

(assert (=> b!1409416 (= e!899766 (and (inv!18699 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))) e!899763 tp!400141))))

(declare-fun b!1409418 () Bool)

(assert (=> b!1409418 (= e!899767 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) e!899764))))

(assert (= b!1409418 b!1409419))

(assert (= b!1409417 b!1409418))

(assert (= b!1409416 b!1409417))

(assert (= (and b!1408742 ((_ is Cons!14364) (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))) b!1409416))

(declare-fun m!1588063 () Bool)

(assert (=> b!1409417 m!1588063))

(declare-fun m!1588065 () Bool)

(assert (=> b!1409416 m!1588065))

(declare-fun m!1588067 () Bool)

(assert (=> b!1409418 m!1588067))

(declare-fun m!1588069 () Bool)

(assert (=> b!1409418 m!1588069))

(declare-fun tp!400146 () Bool)

(declare-fun tp!400145 () Bool)

(declare-fun e!899769 () Bool)

(declare-fun b!1409420 () Bool)

(assert (=> b!1409420 (= e!899769 (and (inv!18680 (left!12263 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))) tp!400145 (inv!18680 (right!12593 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))) tp!400146))))

(declare-fun b!1409422 () Bool)

(declare-fun e!899770 () Bool)

(declare-fun tp!400144 () Bool)

(assert (=> b!1409422 (= e!899770 tp!400144)))

(declare-fun b!1409421 () Bool)

(assert (=> b!1409421 (= e!899769 (and (inv!18695 (xs!7475 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))) e!899770))))

(assert (=> b!1408739 (= tp!400032 (and (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3))))) e!899769))))

(assert (= (and b!1408739 ((_ is Node!4748) (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))) b!1409420))

(assert (= b!1409421 b!1409422))

(assert (= (and b!1408739 ((_ is Leaf!7190) (left!12263 (right!12593 (c!231483 (tokens!1708 sep!3)))))) b!1409421))

(declare-fun m!1588071 () Bool)

(assert (=> b!1409420 m!1588071))

(declare-fun m!1588073 () Bool)

(assert (=> b!1409420 m!1588073))

(declare-fun m!1588075 () Bool)

(assert (=> b!1409421 m!1588075))

(assert (=> b!1408739 m!1586615))

(declare-fun tp!400148 () Bool)

(declare-fun e!899771 () Bool)

(declare-fun tp!400149 () Bool)

(declare-fun b!1409423 () Bool)

(assert (=> b!1409423 (= e!899771 (and (inv!18680 (left!12263 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) tp!400148 (inv!18680 (right!12593 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) tp!400149))))

(declare-fun b!1409425 () Bool)

(declare-fun e!899772 () Bool)

(declare-fun tp!400147 () Bool)

(assert (=> b!1409425 (= e!899772 tp!400147)))

(declare-fun b!1409424 () Bool)

(assert (=> b!1409424 (= e!899771 (and (inv!18695 (xs!7475 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) e!899772))))

(assert (=> b!1408739 (= tp!400033 (and (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3))))) e!899771))))

(assert (= (and b!1408739 ((_ is Node!4748) (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) b!1409423))

(assert (= b!1409424 b!1409425))

(assert (= (and b!1408739 ((_ is Leaf!7190) (right!12593 (right!12593 (c!231483 (tokens!1708 sep!3)))))) b!1409424))

(declare-fun m!1588077 () Bool)

(assert (=> b!1409423 m!1588077))

(declare-fun m!1588079 () Bool)

(assert (=> b!1409423 m!1588079))

(declare-fun m!1588081 () Bool)

(assert (=> b!1409424 m!1588081))

(assert (=> b!1408739 m!1586617))

(declare-fun b!1409428 () Bool)

(declare-fun b_free!34507 () Bool)

(declare-fun b_next!35211 () Bool)

(assert (=> b!1409428 (= b_free!34507 (not b_next!35211))))

(declare-fun tp!400152 () Bool)

(declare-fun b_and!94427 () Bool)

(assert (=> b!1409428 (= tp!400152 b_and!94427)))

(declare-fun b_free!34509 () Bool)

(declare-fun b_next!35213 () Bool)

(assert (=> b!1409428 (= b_free!34509 (not b_next!35213))))

(declare-fun tb!73309 () Bool)

(declare-fun t!123335 () Bool)

(assert (=> (and b!1409428 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123335) tb!73309))

(declare-fun result!89174 () Bool)

(assert (= result!89174 result!89070))

(assert (=> b!1408894 t!123335))

(declare-fun t!123337 () Bool)

(declare-fun tb!73311 () Bool)

(assert (=> (and b!1409428 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123337) tb!73311))

(declare-fun result!89176 () Bool)

(assert (= result!89176 result!89146))

(assert (=> b!1409272 t!123337))

(declare-fun b_and!94429 () Bool)

(declare-fun tp!400150 () Bool)

(assert (=> b!1409428 (= tp!400150 (and (=> t!123335 result!89174) (=> t!123337 result!89176) b_and!94429))))

(declare-fun e!899776 () Bool)

(assert (=> b!1409428 (= e!899776 (and tp!400152 tp!400150))))

(declare-fun b!1409427 () Bool)

(declare-fun e!899773 () Bool)

(assert (=> b!1409427 (= e!899773 (and (inv!18673 (tag!2753 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) (inv!18696 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) e!899776))))

(declare-fun b!1409426 () Bool)

(declare-fun e!899774 () Bool)

(declare-fun tp!400151 () Bool)

(assert (=> b!1409426 (= e!899774 (and e!899773 tp!400151))))

(assert (=> b!1408749 (= tp!400041 e!899774)))

(assert (= b!1409427 b!1409428))

(assert (= b!1409426 b!1409427))

(assert (= (and b!1408749 ((_ is Cons!14365) (t!123166 (t!123166 (rules!10954 acc!229))))) b!1409426))

(declare-fun m!1588083 () Bool)

(assert (=> b!1409427 m!1588083))

(declare-fun m!1588085 () Bool)

(assert (=> b!1409427 m!1588085))

(declare-fun tp!400153 () Bool)

(declare-fun b!1409429 () Bool)

(declare-fun tp!400155 () Bool)

(declare-fun e!899777 () Bool)

(assert (=> b!1409429 (= e!899777 (and (inv!18679 (left!12264 (left!12264 (left!12264 (c!231484 objs!24))))) tp!400153 (inv!18679 (right!12594 (left!12264 (left!12264 (c!231484 objs!24))))) tp!400155))))

(declare-fun b!1409431 () Bool)

(declare-fun e!899778 () Bool)

(declare-fun tp!400154 () Bool)

(assert (=> b!1409431 (= e!899778 tp!400154)))

(declare-fun b!1409430 () Bool)

(assert (=> b!1409430 (= e!899777 (and (inv!18697 (xs!7476 (left!12264 (left!12264 (c!231484 objs!24))))) e!899778))))

(assert (=> b!1408713 (= tp!400007 (and (inv!18679 (left!12264 (left!12264 (c!231484 objs!24)))) e!899777))))

(assert (= (and b!1408713 ((_ is Node!4749) (left!12264 (left!12264 (c!231484 objs!24))))) b!1409429))

(assert (= b!1409430 b!1409431))

(assert (= (and b!1408713 ((_ is Leaf!7191) (left!12264 (left!12264 (c!231484 objs!24))))) b!1409430))

(declare-fun m!1588087 () Bool)

(assert (=> b!1409429 m!1588087))

(declare-fun m!1588089 () Bool)

(assert (=> b!1409429 m!1588089))

(declare-fun m!1588091 () Bool)

(assert (=> b!1409430 m!1588091))

(assert (=> b!1408713 m!1586579))

(declare-fun tp!400158 () Bool)

(declare-fun e!899779 () Bool)

(declare-fun tp!400156 () Bool)

(declare-fun b!1409432 () Bool)

(assert (=> b!1409432 (= e!899779 (and (inv!18679 (left!12264 (right!12594 (left!12264 (c!231484 objs!24))))) tp!400156 (inv!18679 (right!12594 (right!12594 (left!12264 (c!231484 objs!24))))) tp!400158))))

(declare-fun b!1409434 () Bool)

(declare-fun e!899780 () Bool)

(declare-fun tp!400157 () Bool)

(assert (=> b!1409434 (= e!899780 tp!400157)))

(declare-fun b!1409433 () Bool)

(assert (=> b!1409433 (= e!899779 (and (inv!18697 (xs!7476 (right!12594 (left!12264 (c!231484 objs!24))))) e!899780))))

(assert (=> b!1408713 (= tp!400009 (and (inv!18679 (right!12594 (left!12264 (c!231484 objs!24)))) e!899779))))

(assert (= (and b!1408713 ((_ is Node!4749) (right!12594 (left!12264 (c!231484 objs!24))))) b!1409432))

(assert (= b!1409433 b!1409434))

(assert (= (and b!1408713 ((_ is Leaf!7191) (right!12594 (left!12264 (c!231484 objs!24))))) b!1409433))

(declare-fun m!1588093 () Bool)

(assert (=> b!1409432 m!1588093))

(declare-fun m!1588095 () Bool)

(assert (=> b!1409432 m!1588095))

(declare-fun m!1588097 () Bool)

(assert (=> b!1409433 m!1588097))

(assert (=> b!1408713 m!1586581))

(declare-fun e!899781 () Bool)

(declare-fun b!1409435 () Bool)

(declare-fun tp!400161 () Bool)

(declare-fun tp!400160 () Bool)

(assert (=> b!1409435 (= e!899781 (and (inv!18680 (left!12263 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))) tp!400160 (inv!18680 (right!12593 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))) tp!400161))))

(declare-fun b!1409437 () Bool)

(declare-fun e!899782 () Bool)

(declare-fun tp!400159 () Bool)

(assert (=> b!1409437 (= e!899782 tp!400159)))

(declare-fun b!1409436 () Bool)

(assert (=> b!1409436 (= e!899781 (and (inv!18695 (xs!7475 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))) e!899782))))

(assert (=> b!1408733 (= tp!400026 (and (inv!18680 (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229))))) e!899781))))

(assert (= (and b!1408733 ((_ is Node!4748) (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))) b!1409435))

(assert (= b!1409436 b!1409437))

(assert (= (and b!1408733 ((_ is Leaf!7190) (left!12263 (right!12593 (c!231483 (tokens!1708 acc!229)))))) b!1409436))

(declare-fun m!1588099 () Bool)

(assert (=> b!1409435 m!1588099))

(declare-fun m!1588101 () Bool)

(assert (=> b!1409435 m!1588101))

(declare-fun m!1588103 () Bool)

(assert (=> b!1409436 m!1588103))

(assert (=> b!1408733 m!1586603))

(declare-fun e!899783 () Bool)

(declare-fun tp!400164 () Bool)

(declare-fun b!1409438 () Bool)

(declare-fun tp!400163 () Bool)

(assert (=> b!1409438 (= e!899783 (and (inv!18680 (left!12263 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) tp!400163 (inv!18680 (right!12593 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) tp!400164))))

(declare-fun b!1409440 () Bool)

(declare-fun e!899784 () Bool)

(declare-fun tp!400162 () Bool)

(assert (=> b!1409440 (= e!899784 tp!400162)))

(declare-fun b!1409439 () Bool)

(assert (=> b!1409439 (= e!899783 (and (inv!18695 (xs!7475 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) e!899784))))

(assert (=> b!1408733 (= tp!400027 (and (inv!18680 (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229))))) e!899783))))

(assert (= (and b!1408733 ((_ is Node!4748) (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) b!1409438))

(assert (= b!1409439 b!1409440))

(assert (= (and b!1408733 ((_ is Leaf!7190) (right!12593 (right!12593 (c!231483 (tokens!1708 acc!229)))))) b!1409439))

(declare-fun m!1588105 () Bool)

(assert (=> b!1409438 m!1588105))

(declare-fun m!1588107 () Bool)

(assert (=> b!1409438 m!1588107))

(declare-fun m!1588109 () Bool)

(assert (=> b!1409439 m!1588109))

(assert (=> b!1408733 m!1586605))

(declare-fun b!1409443 () Bool)

(declare-fun e!899785 () Bool)

(declare-fun tp!400167 () Bool)

(assert (=> b!1409443 (= e!899785 (and (inv!18680 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (left!12264 (c!231484 objs!24)))))))) tp!400167))))

(declare-fun tp!400166 () Bool)

(declare-fun e!899786 () Bool)

(declare-fun b!1409442 () Bool)

(assert (=> b!1409442 (= e!899786 (and tp!400166 (inv!18683 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (left!12264 (c!231484 objs!24))))))) e!899785))))

(declare-fun e!899787 () Bool)

(declare-fun b!1409441 () Bool)

(declare-fun tp!400165 () Bool)

(assert (=> b!1409441 (= e!899787 (and (inv!18682 (h!19767 (innerList!4809 (xs!7476 (left!12264 (c!231484 objs!24)))))) e!899786 tp!400165))))

(assert (=> b!1408715 (= tp!400008 e!899787)))

(assert (= b!1409442 b!1409443))

(assert (= b!1409441 b!1409442))

(assert (= (and b!1408715 ((_ is Cons!14366) (innerList!4809 (xs!7476 (left!12264 (c!231484 objs!24)))))) b!1409441))

(declare-fun m!1588111 () Bool)

(assert (=> b!1409443 m!1588111))

(declare-fun m!1588113 () Bool)

(assert (=> b!1409442 m!1588113))

(declare-fun m!1588115 () Bool)

(assert (=> b!1409441 m!1588115))

(declare-fun b!1409444 () Bool)

(declare-fun e!899788 () Bool)

(declare-fun tp!400168 () Bool)

(declare-fun tp!400170 () Bool)

(assert (=> b!1409444 (= e!899788 (and (inv!18679 (left!12264 (left!12264 (right!12594 (c!231484 objs!24))))) tp!400168 (inv!18679 (right!12594 (left!12264 (right!12594 (c!231484 objs!24))))) tp!400170))))

(declare-fun b!1409446 () Bool)

(declare-fun e!899789 () Bool)

(declare-fun tp!400169 () Bool)

(assert (=> b!1409446 (= e!899789 tp!400169)))

(declare-fun b!1409445 () Bool)

(assert (=> b!1409445 (= e!899788 (and (inv!18697 (xs!7476 (left!12264 (right!12594 (c!231484 objs!24))))) e!899789))))

(assert (=> b!1408716 (= tp!400010 (and (inv!18679 (left!12264 (right!12594 (c!231484 objs!24)))) e!899788))))

(assert (= (and b!1408716 ((_ is Node!4749) (left!12264 (right!12594 (c!231484 objs!24))))) b!1409444))

(assert (= b!1409445 b!1409446))

(assert (= (and b!1408716 ((_ is Leaf!7191) (left!12264 (right!12594 (c!231484 objs!24))))) b!1409445))

(declare-fun m!1588117 () Bool)

(assert (=> b!1409444 m!1588117))

(declare-fun m!1588119 () Bool)

(assert (=> b!1409444 m!1588119))

(declare-fun m!1588121 () Bool)

(assert (=> b!1409445 m!1588121))

(assert (=> b!1408716 m!1586585))

(declare-fun e!899790 () Bool)

(declare-fun tp!400173 () Bool)

(declare-fun tp!400171 () Bool)

(declare-fun b!1409447 () Bool)

(assert (=> b!1409447 (= e!899790 (and (inv!18679 (left!12264 (right!12594 (right!12594 (c!231484 objs!24))))) tp!400171 (inv!18679 (right!12594 (right!12594 (right!12594 (c!231484 objs!24))))) tp!400173))))

(declare-fun b!1409449 () Bool)

(declare-fun e!899791 () Bool)

(declare-fun tp!400172 () Bool)

(assert (=> b!1409449 (= e!899791 tp!400172)))

(declare-fun b!1409448 () Bool)

(assert (=> b!1409448 (= e!899790 (and (inv!18697 (xs!7476 (right!12594 (right!12594 (c!231484 objs!24))))) e!899791))))

(assert (=> b!1408716 (= tp!400012 (and (inv!18679 (right!12594 (right!12594 (c!231484 objs!24)))) e!899790))))

(assert (= (and b!1408716 ((_ is Node!4749) (right!12594 (right!12594 (c!231484 objs!24))))) b!1409447))

(assert (= b!1409448 b!1409449))

(assert (= (and b!1408716 ((_ is Leaf!7191) (right!12594 (right!12594 (c!231484 objs!24))))) b!1409448))

(declare-fun m!1588123 () Bool)

(assert (=> b!1409447 m!1588123))

(declare-fun m!1588125 () Bool)

(assert (=> b!1409447 m!1588125))

(declare-fun m!1588127 () Bool)

(assert (=> b!1409448 m!1588127))

(assert (=> b!1408716 m!1586587))

(declare-fun b!1409453 () Bool)

(declare-fun b_free!34511 () Bool)

(declare-fun b_next!35215 () Bool)

(assert (=> b!1409453 (= b_free!34511 (not b_next!35215))))

(declare-fun tp!400175 () Bool)

(declare-fun b_and!94431 () Bool)

(assert (=> b!1409453 (= tp!400175 b_and!94431)))

(declare-fun b_free!34513 () Bool)

(declare-fun b_next!35217 () Bool)

(assert (=> b!1409453 (= b_free!34513 (not b_next!35217))))

(declare-fun t!123339 () Bool)

(declare-fun tb!73313 () Bool)

(assert (=> (and b!1409453 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123339) tb!73313))

(declare-fun result!89178 () Bool)

(assert (= result!89178 result!89070))

(assert (=> b!1408894 t!123339))

(declare-fun tb!73315 () Bool)

(declare-fun t!123341 () Bool)

(assert (=> (and b!1409453 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123341) tb!73315))

(declare-fun result!89180 () Bool)

(assert (= result!89180 result!89146))

(assert (=> b!1409272 t!123341))

(declare-fun tp!400176 () Bool)

(declare-fun b_and!94433 () Bool)

(assert (=> b!1409453 (= tp!400176 (and (=> t!123339 result!89178) (=> t!123341 result!89180) b_and!94433))))

(declare-fun e!899795 () Bool)

(assert (=> b!1408709 (= tp!400004 e!899795)))

(declare-fun e!899793 () Bool)

(assert (=> b!1409453 (= e!899793 (and tp!400175 tp!400176))))

(declare-fun b!1409451 () Bool)

(declare-fun e!899792 () Bool)

(declare-fun e!899796 () Bool)

(assert (=> b!1409451 (= e!899792 (and (inv!21 (value!80626 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) e!899796))))

(declare-fun tp!400174 () Bool)

(declare-fun b!1409450 () Bool)

(assert (=> b!1409450 (= e!899795 (and (inv!18699 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))) e!899792 tp!400174))))

(declare-fun b!1409452 () Bool)

(assert (=> b!1409452 (= e!899796 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) e!899793))))

(assert (= b!1409452 b!1409453))

(assert (= b!1409451 b!1409452))

(assert (= b!1409450 b!1409451))

(assert (= (and b!1408709 ((_ is Cons!14364) (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))) b!1409450))

(declare-fun m!1588129 () Bool)

(assert (=> b!1409451 m!1588129))

(declare-fun m!1588131 () Bool)

(assert (=> b!1409450 m!1588131))

(declare-fun m!1588133 () Bool)

(assert (=> b!1409452 m!1588133))

(declare-fun m!1588135 () Bool)

(assert (=> b!1409452 m!1588135))

(declare-fun b!1409456 () Bool)

(declare-fun b_free!34515 () Bool)

(declare-fun b_next!35219 () Bool)

(assert (=> b!1409456 (= b_free!34515 (not b_next!35219))))

(declare-fun tp!400179 () Bool)

(declare-fun b_and!94435 () Bool)

(assert (=> b!1409456 (= tp!400179 b_and!94435)))

(declare-fun b_free!34517 () Bool)

(declare-fun b_next!35221 () Bool)

(assert (=> b!1409456 (= b_free!34517 (not b_next!35221))))

(declare-fun t!123343 () Bool)

(declare-fun tb!73317 () Bool)

(assert (=> (and b!1409456 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123343) tb!73317))

(declare-fun result!89182 () Bool)

(assert (= result!89182 result!89070))

(assert (=> b!1408894 t!123343))

(declare-fun t!123345 () Bool)

(declare-fun tb!73319 () Bool)

(assert (=> (and b!1409456 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123345) tb!73319))

(declare-fun result!89184 () Bool)

(assert (= result!89184 result!89146))

(assert (=> b!1409272 t!123345))

(declare-fun tp!400177 () Bool)

(declare-fun b_and!94437 () Bool)

(assert (=> b!1409456 (= tp!400177 (and (=> t!123343 result!89182) (=> t!123345 result!89184) b_and!94437))))

(declare-fun e!899801 () Bool)

(assert (=> b!1409456 (= e!899801 (and tp!400179 tp!400177))))

(declare-fun b!1409455 () Bool)

(declare-fun e!899798 () Bool)

(assert (=> b!1409455 (= e!899798 (and (inv!18673 (tag!2753 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) (inv!18696 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) e!899801))))

(declare-fun b!1409454 () Bool)

(declare-fun e!899799 () Bool)

(declare-fun tp!400178 () Bool)

(assert (=> b!1409454 (= e!899799 (and e!899798 tp!400178))))

(assert (=> b!1408746 (= tp!400038 e!899799)))

(assert (= b!1409455 b!1409456))

(assert (= b!1409454 b!1409455))

(assert (= (and b!1408746 ((_ is Cons!14365) (t!123166 (t!123166 (rules!10954 sep!3))))) b!1409454))

(declare-fun m!1588137 () Bool)

(assert (=> b!1409455 m!1588137))

(declare-fun m!1588139 () Bool)

(assert (=> b!1409455 m!1588139))

(declare-fun tp!400182 () Bool)

(declare-fun e!899802 () Bool)

(declare-fun tp!400181 () Bool)

(declare-fun b!1409457 () Bool)

(assert (=> b!1409457 (= e!899802 (and (inv!18680 (left!12263 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))) tp!400181 (inv!18680 (right!12593 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))) tp!400182))))

(declare-fun b!1409459 () Bool)

(declare-fun e!899803 () Bool)

(declare-fun tp!400180 () Bool)

(assert (=> b!1409459 (= e!899803 tp!400180)))

(declare-fun b!1409458 () Bool)

(assert (=> b!1409458 (= e!899802 (and (inv!18695 (xs!7475 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))) e!899803))))

(assert (=> b!1408736 (= tp!400029 (and (inv!18680 (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3))))) e!899802))))

(assert (= (and b!1408736 ((_ is Node!4748) (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))) b!1409457))

(assert (= b!1409458 b!1409459))

(assert (= (and b!1408736 ((_ is Leaf!7190) (left!12263 (left!12263 (c!231483 (tokens!1708 sep!3)))))) b!1409458))

(declare-fun m!1588141 () Bool)

(assert (=> b!1409457 m!1588141))

(declare-fun m!1588143 () Bool)

(assert (=> b!1409457 m!1588143))

(declare-fun m!1588145 () Bool)

(assert (=> b!1409458 m!1588145))

(assert (=> b!1408736 m!1586609))

(declare-fun tp!400185 () Bool)

(declare-fun b!1409460 () Bool)

(declare-fun e!899804 () Bool)

(declare-fun tp!400184 () Bool)

(assert (=> b!1409460 (= e!899804 (and (inv!18680 (left!12263 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) tp!400184 (inv!18680 (right!12593 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) tp!400185))))

(declare-fun b!1409462 () Bool)

(declare-fun e!899805 () Bool)

(declare-fun tp!400183 () Bool)

(assert (=> b!1409462 (= e!899805 tp!400183)))

(declare-fun b!1409461 () Bool)

(assert (=> b!1409461 (= e!899804 (and (inv!18695 (xs!7475 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) e!899805))))

(assert (=> b!1408736 (= tp!400030 (and (inv!18680 (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3))))) e!899804))))

(assert (= (and b!1408736 ((_ is Node!4748) (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) b!1409460))

(assert (= b!1409461 b!1409462))

(assert (= (and b!1408736 ((_ is Leaf!7190) (right!12593 (left!12263 (c!231483 (tokens!1708 sep!3)))))) b!1409461))

(declare-fun m!1588147 () Bool)

(assert (=> b!1409460 m!1588147))

(declare-fun m!1588149 () Bool)

(assert (=> b!1409460 m!1588149))

(declare-fun m!1588151 () Bool)

(assert (=> b!1409461 m!1588151))

(assert (=> b!1408736 m!1586611))

(declare-fun b!1409465 () Bool)

(declare-fun e!899806 () Bool)

(declare-fun tp!400188 () Bool)

(assert (=> b!1409465 (= e!899806 (and (inv!18680 (c!231483 (tokens!1708 (h!19767 (t!123167 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) tp!400188))))

(declare-fun tp!400187 () Bool)

(declare-fun b!1409464 () Bool)

(declare-fun e!899807 () Bool)

(assert (=> b!1409464 (= e!899807 (and tp!400187 (inv!18683 (tokens!1708 (h!19767 (t!123167 (innerList!4809 (xs!7476 (c!231484 objs!24))))))) e!899806))))

(declare-fun b!1409463 () Bool)

(declare-fun tp!400186 () Bool)

(declare-fun e!899808 () Bool)

(assert (=> b!1409463 (= e!899808 (and (inv!18682 (h!19767 (t!123167 (innerList!4809 (xs!7476 (c!231484 objs!24)))))) e!899807 tp!400186))))

(assert (=> b!1408727 (= tp!400019 e!899808)))

(assert (= b!1409464 b!1409465))

(assert (= b!1409463 b!1409464))

(assert (= (and b!1408727 ((_ is Cons!14366) (t!123167 (innerList!4809 (xs!7476 (c!231484 objs!24)))))) b!1409463))

(declare-fun m!1588153 () Bool)

(assert (=> b!1409465 m!1588153))

(declare-fun m!1588155 () Bool)

(assert (=> b!1409464 m!1588155))

(declare-fun m!1588157 () Bool)

(assert (=> b!1409463 m!1588157))

(declare-fun b!1409468 () Bool)

(declare-fun e!899811 () Bool)

(assert (=> b!1409468 (= e!899811 true)))

(declare-fun b!1409467 () Bool)

(declare-fun e!899810 () Bool)

(assert (=> b!1409467 (= e!899810 e!899811)))

(declare-fun b!1409466 () Bool)

(declare-fun e!899809 () Bool)

(assert (=> b!1409466 (= e!899809 e!899810)))

(assert (=> b!1408376 e!899809))

(assert (= b!1409467 b!1409468))

(assert (= b!1409466 b!1409467))

(assert (= (and b!1408376 ((_ is Cons!14365) (t!123166 (rules!10954 sep!3)))) b!1409466))

(assert (=> b!1409468 (< (dynLambda!6653 order!8769 (toValue!3782 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3)))))) (dynLambda!6654 order!8771 lambda!62291))))

(assert (=> b!1409468 (< (dynLambda!6655 order!8773 (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3)))))) (dynLambda!6654 order!8771 lambda!62291))))

(declare-fun b!1409471 () Bool)

(declare-fun e!899812 () Bool)

(declare-fun tp!400191 () Bool)

(assert (=> b!1409471 (= e!899812 (and (inv!18680 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (right!12594 (c!231484 objs!24)))))))) tp!400191))))

(declare-fun e!899813 () Bool)

(declare-fun tp!400190 () Bool)

(declare-fun b!1409470 () Bool)

(assert (=> b!1409470 (= e!899813 (and tp!400190 (inv!18683 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (right!12594 (c!231484 objs!24))))))) e!899812))))

(declare-fun b!1409469 () Bool)

(declare-fun tp!400189 () Bool)

(declare-fun e!899814 () Bool)

(assert (=> b!1409469 (= e!899814 (and (inv!18682 (h!19767 (innerList!4809 (xs!7476 (right!12594 (c!231484 objs!24)))))) e!899813 tp!400189))))

(assert (=> b!1408718 (= tp!400011 e!899814)))

(assert (= b!1409470 b!1409471))

(assert (= b!1409469 b!1409470))

(assert (= (and b!1408718 ((_ is Cons!14366) (innerList!4809 (xs!7476 (right!12594 (c!231484 objs!24)))))) b!1409469))

(declare-fun m!1588159 () Bool)

(assert (=> b!1409471 m!1588159))

(declare-fun m!1588161 () Bool)

(assert (=> b!1409470 m!1588161))

(declare-fun m!1588163 () Bool)

(assert (=> b!1409469 m!1588163))

(declare-fun b!1409475 () Bool)

(declare-fun b_free!34519 () Bool)

(declare-fun b_next!35223 () Bool)

(assert (=> b!1409475 (= b_free!34519 (not b_next!35223))))

(declare-fun tp!400193 () Bool)

(declare-fun b_and!94439 () Bool)

(assert (=> b!1409475 (= tp!400193 b_and!94439)))

(declare-fun b_free!34521 () Bool)

(declare-fun b_next!35225 () Bool)

(assert (=> b!1409475 (= b_free!34521 (not b_next!35225))))

(declare-fun t!123347 () Bool)

(declare-fun tb!73321 () Bool)

(assert (=> (and b!1409475 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123347) tb!73321))

(declare-fun result!89186 () Bool)

(assert (= result!89186 result!89070))

(assert (=> b!1408894 t!123347))

(declare-fun tb!73323 () Bool)

(declare-fun t!123349 () Bool)

(assert (=> (and b!1409475 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123349) tb!73323))

(declare-fun result!89188 () Bool)

(assert (= result!89188 result!89146))

(assert (=> b!1409272 t!123349))

(declare-fun b_and!94441 () Bool)

(declare-fun tp!400194 () Bool)

(assert (=> b!1409475 (= tp!400194 (and (=> t!123347 result!89186) (=> t!123349 result!89188) b_and!94441))))

(declare-fun e!899818 () Bool)

(assert (=> b!1408738 (= tp!400028 e!899818)))

(declare-fun e!899816 () Bool)

(assert (=> b!1409475 (= e!899816 (and tp!400193 tp!400194))))

(declare-fun b!1409473 () Bool)

(declare-fun e!899815 () Bool)

(declare-fun e!899819 () Bool)

(assert (=> b!1409473 (= e!899815 (and (inv!21 (value!80626 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3)))))))) e!899819))))

(declare-fun b!1409472 () Bool)

(declare-fun tp!400192 () Bool)

(assert (=> b!1409472 (= e!899818 (and (inv!18699 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))) e!899815 tp!400192))))

(declare-fun b!1409474 () Bool)

(assert (=> b!1409474 (= e!899819 (and (inv!18673 (tag!2753 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) (inv!18696 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) e!899816))))

(assert (= b!1409474 b!1409475))

(assert (= b!1409473 b!1409474))

(assert (= b!1409472 b!1409473))

(assert (= (and b!1408738 ((_ is Cons!14364) (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))) b!1409472))

(declare-fun m!1588165 () Bool)

(assert (=> b!1409473 m!1588165))

(declare-fun m!1588167 () Bool)

(assert (=> b!1409472 m!1588167))

(declare-fun m!1588169 () Bool)

(assert (=> b!1409474 m!1588169))

(declare-fun m!1588171 () Bool)

(assert (=> b!1409474 m!1588171))

(declare-fun b!1409478 () Bool)

(declare-fun b_free!34523 () Bool)

(declare-fun b_next!35227 () Bool)

(assert (=> b!1409478 (= b_free!34523 (not b_next!35227))))

(declare-fun tp!400197 () Bool)

(declare-fun b_and!94443 () Bool)

(assert (=> b!1409478 (= tp!400197 b_and!94443)))

(declare-fun b_free!34525 () Bool)

(declare-fun b_next!35229 () Bool)

(assert (=> b!1409478 (= b_free!34525 (not b_next!35229))))

(declare-fun t!123351 () Bool)

(declare-fun tb!73325 () Bool)

(assert (=> (and b!1409478 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) t!123351) tb!73325))

(declare-fun result!89190 () Bool)

(assert (= result!89190 result!89070))

(assert (=> b!1408894 t!123351))

(declare-fun t!123353 () Bool)

(declare-fun tb!73327 () Bool)

(assert (=> (and b!1409478 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) t!123353) tb!73327))

(declare-fun result!89192 () Bool)

(assert (= result!89192 result!89146))

(assert (=> b!1409272 t!123353))

(declare-fun tp!400195 () Bool)

(declare-fun b_and!94445 () Bool)

(assert (=> b!1409478 (= tp!400195 (and (=> t!123351 result!89190) (=> t!123353 result!89192) b_and!94445))))

(declare-fun e!899824 () Bool)

(assert (=> b!1409478 (= e!899824 (and tp!400197 tp!400195))))

(declare-fun b!1409477 () Bool)

(declare-fun e!899821 () Bool)

(assert (=> b!1409477 (= e!899821 (and (inv!18673 (tag!2753 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) (inv!18696 (transformation!2491 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) e!899824))))

(declare-fun b!1409476 () Bool)

(declare-fun e!899822 () Bool)

(declare-fun tp!400196 () Bool)

(assert (=> b!1409476 (= e!899822 (and e!899821 tp!400196))))

(assert (=> b!1408728 (= tp!400020 e!899822)))

(assert (= b!1409477 b!1409478))

(assert (= b!1409476 b!1409477))

(assert (= (and b!1408728 ((_ is Cons!14365) (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))) b!1409476))

(declare-fun m!1588173 () Bool)

(assert (=> b!1409477 m!1588173))

(declare-fun m!1588175 () Bool)

(assert (=> b!1409477 m!1588175))

(declare-fun tp!400199 () Bool)

(declare-fun e!899825 () Bool)

(declare-fun tp!400200 () Bool)

(declare-fun b!1409479 () Bool)

(assert (=> b!1409479 (= e!899825 (and (inv!18680 (left!12263 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) tp!400199 (inv!18680 (right!12593 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) tp!400200))))

(declare-fun b!1409481 () Bool)

(declare-fun e!899826 () Bool)

(declare-fun tp!400198 () Bool)

(assert (=> b!1409481 (= e!899826 tp!400198)))

(declare-fun b!1409480 () Bool)

(assert (=> b!1409480 (= e!899825 (and (inv!18695 (xs!7475 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) e!899826))))

(assert (=> b!1408729 (= tp!400021 (and (inv!18680 (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24))))))) e!899825))))

(assert (= (and b!1408729 ((_ is Node!4748) (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) b!1409479))

(assert (= b!1409480 b!1409481))

(assert (= (and b!1408729 ((_ is Leaf!7190) (c!231483 (tokens!1708 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) b!1409480))

(declare-fun m!1588177 () Bool)

(assert (=> b!1409479 m!1588177))

(declare-fun m!1588179 () Bool)

(assert (=> b!1409479 m!1588179))

(declare-fun m!1588181 () Bool)

(assert (=> b!1409480 m!1588181))

(assert (=> b!1408729 m!1586591))

(declare-fun b_lambda!44479 () Bool)

(assert (= b_lambda!44443 (or (and b!1409412 b_free!34501 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409478 b_free!34525 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409428 b_free!34509 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408322 b_free!34417 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409456 b_free!34517 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408325 b_free!34421 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408748 b_free!34449 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408745 b_free!34445 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408712 b_free!34441) (and b!1409404 b_free!34493 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409453 b_free!34513 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1408751 b_free!34453 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409408 b_free!34497 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409475 b_free!34521 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) (and b!1409419 b_free!34505 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))))) b_lambda!44479)))

(declare-fun b_lambda!44481 () Bool)

(assert (= b_lambda!44477 (or d!402268 b_lambda!44481)))

(declare-fun bs!338807 () Bool)

(declare-fun d!402796 () Bool)

(assert (= bs!338807 (and d!402796 d!402268)))

(assert (=> bs!338807 (= (dynLambda!6664 lambda!62293 (h!19765 (list!5613 (tokens!1708 acc!229)))) (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 acc!229) (h!19765 (list!5613 (tokens!1708 acc!229)))))))

(assert (=> bs!338807 m!1587947))

(assert (=> b!1409384 d!402796))

(declare-fun b_lambda!44483 () Bool)

(assert (= b_lambda!44471 (or start!128468 b_lambda!44483)))

(declare-fun bs!338808 () Bool)

(declare-fun d!402798 () Bool)

(assert (= bs!338808 (and d!402798 start!128468)))

(assert (=> bs!338808 (= (dynLambda!6656 lambda!62281 (h!19767 (list!5616 (c!231484 objs!24)))) (usesJsonRules!0 (h!19767 (list!5616 (c!231484 objs!24)))))))

(declare-fun m!1588183 () Bool)

(assert (=> bs!338808 m!1588183))

(assert (=> b!1409316 d!402798))

(declare-fun b_lambda!44485 () Bool)

(assert (= b_lambda!44475 (or d!402122 b_lambda!44485)))

(declare-fun bs!338809 () Bool)

(declare-fun d!402800 () Bool)

(assert (= bs!338809 (and d!402800 d!402122)))

(assert (=> bs!338809 (= (dynLambda!6664 lambda!62291 (h!19765 (list!5613 (tokens!1708 sep!3)))) (rulesProduceIndividualToken!1151 Lexer!2181 (rules!10954 sep!3) (h!19765 (list!5613 (tokens!1708 sep!3)))))))

(assert (=> bs!338809 m!1587765))

(assert (=> b!1409353 d!402800))

(declare-fun b_lambda!44487 () Bool)

(assert (= b_lambda!44469 (or (and b!1409453 b_free!34513 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1408325 b_free!34421 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 acc!229)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409428 b_free!34509 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 acc!229)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1408745 b_free!34445) (and b!1408751 b_free!34453 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 acc!229))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409478 b_free!34525 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 (h!19767 (innerList!4809 (xs!7476 (c!231484 objs!24)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409408 b_free!34497 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409456 b_free!34517 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (t!123166 (rules!10954 sep!3)))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1408322 b_free!34417 (= (toChars!3641 (transformation!2491 (h!19766 (rules!10954 sep!3)))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1408748 b_free!34449 (= (toChars!3641 (transformation!2491 (h!19766 (t!123166 (rules!10954 sep!3))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409419 b_free!34505 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (t!123165 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409475 b_free!34521 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (left!12263 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409404 b_free!34493 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 sep!3))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1409412 b_free!34501 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (right!12593 (c!231483 (tokens!1708 acc!229))))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) (and b!1408712 b_free!34441 (= (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 sep!3)))))))) (toChars!3641 (transformation!2491 (rule!4254 (h!19765 (innerList!4808 (xs!7475 (c!231483 (tokens!1708 acc!229)))))))))) b_lambda!44487)))

(declare-fun b_lambda!44489 () Bool)

(assert (= b_lambda!44473 (or start!128468 b_lambda!44489)))

(declare-fun bs!338810 () Bool)

(declare-fun d!402802 () Bool)

(assert (= bs!338810 (and d!402802 start!128468)))

(assert (=> bs!338810 (= (dynLambda!6656 lambda!62281 (h!19767 (t!123167 (list!5609 objs!24)))) (usesJsonRules!0 (h!19767 (t!123167 (list!5609 objs!24)))))))

(declare-fun m!1588185 () Bool)

(assert (=> bs!338810 m!1588185))

(assert (=> b!1409340 d!402802))

(check-sat (not b!1409304) (not b!1409421) (not b!1409319) (not b!1408922) (not b!1409449) (not b!1409063) (not b!1409276) b_and!94439 (not d!402504) (not d!402734) (not b!1408926) (not b!1409410) (not b_next!35147) (not d!402508) (not d!402378) (not b!1409289) b_and!94443 b_and!94415 (not b!1409388) (not b!1409394) (not b!1409477) (not d!402784) (not b!1409259) (not b!1409286) (not d!402754) (not b!1408894) b_and!94413 (not d!402420) (not b!1409339) (not b_next!35223) (not b!1408901) (not b!1409427) (not b!1409361) (not b_next!35199) (not d!402702) (not b!1409422) (not b_lambda!44441) (not b!1409332) (not d!402712) (not b!1409344) (not d!402686) (not b!1409420) (not b!1408886) (not b!1409444) (not d!402376) (not b!1408931) (not bs!338809) (not b!1409409) b_and!94323 (not b!1409253) (not bs!338807) (not b_next!35157) (not b!1409479) (not b!1409397) (not b_lambda!44489) (not b!1409389) (not b!1409250) (not b_lambda!44479) (not d!402668) (not b!1409037) (not bs!338810) (not b_next!35125) (not d!402398) (not d!402522) (not d!402768) (not b!1409430) b_and!94429 (not d!402674) b_and!94319 (not d!402750) (not b!1409338) (not d!402524) (not d!402726) (not d!402368) (not bs!338808) (not b!1409462) (not d!402774) b_and!94407 (not b_next!35207) (not b!1408915) (not b!1409400) (not d!402424) (not b!1409393) (not d!402738) (not b!1409310) (not d!402694) b_and!94435 (not b!1408924) (not b!1409395) (not b!1409326) (not b!1409342) (not b_next!35219) (not b!1409335) b_and!94315 (not b!1409379) (not d!402664) (not b!1408913) (not b_next!35119) (not b!1409299) (not b!1409323) (not b!1409297) (not b!1409455) (not b!1408716) (not b!1409454) (not b!1409278) (not b!1409447) b_and!94425 (not d!402766) (not b!1409264) (not b!1408729) (not b!1409261) (not d!402414) (not b_next!35213) (not d!402764) (not b!1408739) (not b_next!35155) (not b_lambda!44483) (not b!1409254) (not b_lambda!44481) (not b!1408881) b_and!94287 b_and!94423 (not b!1409255) (not d!402736) (not b!1409407) (not d!402704) (not b!1409272) (not b!1409324) (not d!402426) (not b!1409301) b_and!94405 (not b!1409432) b_and!94421 (not b!1409411) (not b_next!35153) (not d!402396) (not b_next!35203) (not b!1409480) (not b!1409263) (not b!1408888) (not d!402418) (not b!1409260) b_and!94431 (not d!402364) (not b!1408895) (not d!402696) (not b!1409425) (not b!1409403) (not b!1409239) b_and!94445 (not b!1409433) (not b!1409067) (not b!1409284) (not b!1409066) (not b!1409396) (not b!1409401) (not d!402780) (not d!402672) (not b!1409300) (not b!1409273) b_and!94401 (not b!1408900) (not b!1409460) (not b_next!35229) (not b!1409054) (not b!1409269) (not b!1409367) (not b!1409424) (not b!1409429) (not b!1409448) (not b!1409241) (not b!1409354) (not d!402790) (not b!1409392) (not b!1409325) (not b!1409333) (not b!1409267) (not b!1409294) (not b!1408883) (not b!1409313) (not b!1409303) (not b!1409416) (not b!1409318) (not b!1408923) (not d!402718) (not b_next!35121) (not b!1409373) (not b_next!35209) (not b!1409307) (not b!1409270) (not b!1409445) (not b!1408879) (not b!1409473) (not b!1409309) (not d!402448) (not b!1409246) (not b!1409038) (not b!1409437) (not b!1409242) (not b_next!35123) b_and!94433 (not b!1409438) b_and!94417 (not b!1409035) (not b!1409465) (not b!1409440) b_and!94291 (not b!1409461) (not d!402520) (not b!1409452) (not b_lambda!44485) (not d!402362) (not b!1409382) (not d!402416) (not b!1409062) (not b!1409315) (not b!1409390) (not b!1409406) (not b_lambda!44487) (not d!402360) (not d!402662) (not b!1409308) (not b!1409357) (not b!1409459) (not b!1408876) (not b!1409336) (not b!1409474) (not b!1409443) (not b!1409391) (not d!402366) (not b!1409442) (not b!1409312) (not d!402400) (not b!1409292) (not b!1409435) (not b!1409399) (not b!1409417) (not b_next!35225) (not b!1409457) (not d!402540) (not d!402708) (not b!1409360) (not b!1408937) (not b_next!35145) (not b!1409341) (not d!402406) (not b!1409243) (not b!1409451) (not b_next!35149) (not b!1409472) (not b!1409470) (not b!1409471) (not d!402786) (not d!402370) (not b!1409245) (not b!1409402) (not b!1409244) (not b!1408713) (not b!1409423) (not b!1409386) (not b_next!35217) (not b!1409262) (not b!1408925) b_and!94441 (not d!402430) (not b!1409247) b_and!94311 (not b!1408730) (not b!1409375) (not d!402688) (not b!1409385) (not b!1408927) (not d!402732) (not b!1409469) (not b!1409434) (not b!1409040) (not b!1409380) (not b!1409431) (not d!402404) (not b!1409446) (not d!402756) (not b!1409458) (not b!1409296) (not d!402468) (not b!1409248) (not b!1409464) (not b!1408884) (not b!1409405) (not b!1409249) (not b!1409369) (not b!1409055) (not b!1409348) (not b!1409051) (not b!1409238) (not b!1409370) (not b!1409306) b_and!94403 (not d!402666) (not d!402706) (not b!1409039) (not b_next!35215) (not b!1409398) (not b!1409466) b_and!94411 b_and!94437 (not b!1409258) (not tb!73209) b_and!94409 (not b_next!35211) (not b!1409413) (not b!1409285) (not b!1409426) (not b!1409329) (not b!1409418) (not b!1409372) (not b!1408736) (not b!1409274) (not b!1408733) (not b!1409365) (not d!402512) (not b!1409364) (not b!1409343) (not b!1409476) (not b!1409450) (not d!402652) (not b!1409305) (not d!402382) (not b!1409376) (not d!402530) (not b!1409036) b_and!94427 (not d!402692) (not b_next!35197) (not d!402428) (not b_next!35221) (not b!1409251) (not d!402690) (not b!1408875) (not b!1409064) (not d!402434) (not b!1409322) (not b!1409321) (not b!1409291) (not b!1408874) (not b_next!35195) (not b!1409298) b_and!94399 (not d!402656) (not b!1408912) (not d!402528) (not b!1409441) (not d!402714) (not tb!73281) (not d!402422) (not b!1408929) (not b_next!35201) (not b!1409436) (not b!1408920) (not b!1409317) (not b!1409252) (not b!1409320) (not b_next!35205) (not b!1409368) (not b_next!35227) b_and!94419 (not b!1409240) (not d!402542) (not b_next!35143) (not b!1408921) (not b!1409481) (not b!1409463) (not b!1409069) (not b!1409439) (not b_next!35151))
(check-sat b_and!94435 b_and!94425 (not b_next!35225) (not b_next!35145) (not b_next!35149) (not b_next!35217) b_and!94403 (not b_next!35201) (not b_next!35147) b_and!94439 b_and!94443 b_and!94415 b_and!94413 (not b_next!35223) (not b_next!35199) b_and!94323 (not b_next!35157) (not b_next!35125) b_and!94429 b_and!94319 b_and!94407 (not b_next!35207) (not b_next!35219) (not b_next!35119) b_and!94315 b_and!94423 (not b_next!35213) (not b_next!35155) b_and!94287 b_and!94405 b_and!94421 (not b_next!35153) (not b_next!35203) b_and!94431 b_and!94445 (not b_next!35229) b_and!94401 (not b_next!35121) (not b_next!35209) (not b_next!35123) b_and!94433 b_and!94417 b_and!94291 b_and!94441 b_and!94311 (not b_next!35215) b_and!94411 b_and!94437 b_and!94409 (not b_next!35211) b_and!94427 (not b_next!35197) (not b_next!35221) b_and!94399 (not b_next!35195) (not b_next!35205) (not b_next!35227) b_and!94419 (not b_next!35151) (not b_next!35143))
