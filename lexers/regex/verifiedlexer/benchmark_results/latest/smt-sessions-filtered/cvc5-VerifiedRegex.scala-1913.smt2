; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94536 () Bool)

(assert start!94536)

(declare-fun res!488188 () Bool)

(declare-fun e!696941 () Bool)

(assert (=> start!94536 (=> (not res!488188) (not e!696941))))

(declare-datatypes ((List!10603 0))(
  ( (Nil!10587) (Cons!10587 (h!15988 (_ BitVec 16)) (t!103851 List!10603)) )
))
(declare-datatypes ((TokenValue!1881 0))(
  ( (FloatLiteralValue!3762 (text!13612 List!10603)) (TokenValueExt!1880 (__x!7463 Int)) (Broken!9405 (value!59656 List!10603)) (Object!1896) (End!1881) (Def!1881) (Underscore!1881) (Match!1881) (Else!1881) (Error!1881) (Case!1881) (If!1881) (Extends!1881) (Abstract!1881) (Class!1881) (Val!1881) (DelimiterValue!3762 (del!1941 List!10603)) (KeywordValue!1887 (value!59657 List!10603)) (CommentValue!3762 (value!59658 List!10603)) (WhitespaceValue!3762 (value!59659 List!10603)) (IndentationValue!1881 (value!59660 List!10603)) (String!12976) (Int32!1881) (Broken!9406 (value!59661 List!10603)) (Boolean!1882) (Unit!16199) (OperatorValue!1884 (op!1941 List!10603)) (IdentifierValue!3762 (value!59662 List!10603)) (IdentifierValue!3763 (value!59663 List!10603)) (WhitespaceValue!3763 (value!59664 List!10603)) (True!3762) (False!3762) (Broken!9407 (value!59665 List!10603)) (Broken!9408 (value!59666 List!10603)) (True!3763) (RightBrace!1881) (RightBracket!1881) (Colon!1881) (Null!1881) (Comma!1881) (LeftBracket!1881) (False!3763) (LeftBrace!1881) (ImaginaryLiteralValue!1881 (text!13613 List!10603)) (StringLiteralValue!5643 (value!59667 List!10603)) (EOFValue!1881 (value!59668 List!10603)) (IdentValue!1881 (value!59669 List!10603)) (DelimiterValue!3763 (value!59670 List!10603)) (DedentValue!1881 (value!59671 List!10603)) (NewLineValue!1881 (value!59672 List!10603)) (IntegerValue!5643 (value!59673 (_ BitVec 32)) (text!13614 List!10603)) (IntegerValue!5644 (value!59674 Int) (text!13615 List!10603)) (Times!1881) (Or!1881) (Equal!1881) (Minus!1881) (Broken!9409 (value!59675 List!10603)) (And!1881) (Div!1881) (LessEqual!1881) (Mod!1881) (Concat!4965) (Not!1881) (Plus!1881) (SpaceValue!1881 (value!59676 List!10603)) (IntegerValue!5645 (value!59677 Int) (text!13616 List!10603)) (StringLiteralValue!5644 (text!13617 List!10603)) (FloatLiteralValue!3763 (text!13618 List!10603)) (BytesLiteralValue!1881 (value!59678 List!10603)) (CommentValue!3763 (value!59679 List!10603)) (StringLiteralValue!5645 (value!59680 List!10603)) (ErrorTokenValue!1881 (msg!1942 List!10603)) )
))
(declare-datatypes ((Regex!3084 0))(
  ( (ElementMatch!3084 (c!186830 (_ BitVec 16))) (Concat!4966 (regOne!6680 Regex!3084) (regTwo!6680 Regex!3084)) (EmptyExpr!3084) (Star!3084 (reg!3413 Regex!3084)) (EmptyLang!3084) (Union!3084 (regOne!6681 Regex!3084) (regTwo!6681 Regex!3084)) )
))
(declare-datatypes ((String!12977 0))(
  ( (String!12978 (value!59681 String)) )
))
(declare-datatypes ((IArray!6549 0))(
  ( (IArray!6550 (innerList!3332 List!10603)) )
))
(declare-datatypes ((Conc!3272 0))(
  ( (Node!3272 (left!9139 Conc!3272) (right!9469 Conc!3272) (csize!6774 Int) (cheight!3483 Int)) (Leaf!5186 (xs!5965 IArray!6549) (csize!6775 Int)) (Empty!3272) )
))
(declare-datatypes ((BalanceConc!6558 0))(
  ( (BalanceConc!6559 (c!186831 Conc!3272)) )
))
(declare-datatypes ((TokenValueInjection!3462 0))(
  ( (TokenValueInjection!3463 (toValue!2892 Int) (toChars!2751 Int)) )
))
(declare-datatypes ((Rule!3430 0))(
  ( (Rule!3431 (regex!1815 Regex!3084) (tag!2077 String!12977) (isSeparator!1815 Bool) (transformation!1815 TokenValueInjection!3462)) )
))
(declare-datatypes ((Token!3296 0))(
  ( (Token!3297 (value!59682 TokenValue!1881) (rule!3238 Rule!3430) (size!8217 Int) (originalCharacters!2371 List!10603)) )
))
(declare-datatypes ((List!10604 0))(
  ( (Nil!10588) (Cons!10588 (h!15989 Token!3296) (t!103852 List!10604)) )
))
(declare-datatypes ((IArray!6551 0))(
  ( (IArray!6552 (innerList!3333 List!10604)) )
))
(declare-datatypes ((Conc!3273 0))(
  ( (Node!3273 (left!9140 Conc!3273) (right!9470 Conc!3273) (csize!6776 Int) (cheight!3484 Int)) (Leaf!5187 (xs!5966 IArray!6551) (csize!6777 Int)) (Empty!3273) )
))
(declare-datatypes ((List!10605 0))(
  ( (Nil!10589) (Cons!10589 (h!15990 Rule!3430) (t!103853 List!10605)) )
))
(declare-datatypes ((BalanceConc!6560 0))(
  ( (BalanceConc!6561 (c!186832 Conc!3273)) )
))
(declare-datatypes ((PrintableTokens!346 0))(
  ( (PrintableTokens!347 (rules!9102 List!10605) (tokens!1374 BalanceConc!6560)) )
))
(declare-datatypes ((tuple2!11756 0))(
  ( (tuple2!11757 (_1!6704 Int) (_2!6704 PrintableTokens!346)) )
))
(declare-datatypes ((List!10606 0))(
  ( (Nil!10590) (Cons!10590 (h!15991 tuple2!11756) (t!103854 List!10606)) )
))
(declare-datatypes ((IArray!6553 0))(
  ( (IArray!6554 (innerList!3334 List!10606)) )
))
(declare-datatypes ((Conc!3274 0))(
  ( (Node!3274 (left!9141 Conc!3274) (right!9471 Conc!3274) (csize!6778 Int) (cheight!3485 Int)) (Leaf!5188 (xs!5967 IArray!6553) (csize!6779 Int)) (Empty!3274) )
))
(declare-datatypes ((BalanceConc!6562 0))(
  ( (BalanceConc!6563 (c!186833 Conc!3274)) )
))
(declare-fun objs!8 () BalanceConc!6562)

(declare-fun lambda!43239 () Int)

(declare-fun forall!2428 (BalanceConc!6562 Int) Bool)

(assert (=> start!94536 (= res!488188 (forall!2428 objs!8 lambda!43239))))

(assert (=> start!94536 e!696941))

(declare-fun e!696942 () Bool)

(declare-fun inv!13607 (BalanceConc!6562) Bool)

(assert (=> start!94536 (and (inv!13607 objs!8) e!696942)))

(declare-fun b!1100524 () Bool)

(declare-fun size!8218 (BalanceConc!6562) Int)

(assert (=> b!1100524 (= e!696941 (< (size!8218 objs!8) 0))))

(declare-fun b!1100525 () Bool)

(declare-fun tp!326927 () Bool)

(declare-fun inv!13608 (Conc!3274) Bool)

(assert (=> b!1100525 (= e!696942 (and (inv!13608 (c!186833 objs!8)) tp!326927))))

(assert (= (and start!94536 res!488188) b!1100524))

(assert (= start!94536 b!1100525))

(declare-fun m!1256475 () Bool)

(assert (=> start!94536 m!1256475))

(declare-fun m!1256477 () Bool)

(assert (=> start!94536 m!1256477))

(declare-fun m!1256479 () Bool)

(assert (=> b!1100524 m!1256479))

(declare-fun m!1256481 () Bool)

(assert (=> b!1100525 m!1256481))

(push 1)

(assert (not b!1100524))

(assert (not start!94536))

(assert (not b!1100525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311216 () Bool)

(declare-fun lt!371786 () Int)

(declare-fun size!8221 (List!10606) Int)

(declare-fun list!3816 (BalanceConc!6562) List!10606)

(assert (=> d!311216 (= lt!371786 (size!8221 (list!3816 objs!8)))))

(declare-fun size!8222 (Conc!3274) Int)

(assert (=> d!311216 (= lt!371786 (size!8222 (c!186833 objs!8)))))

(assert (=> d!311216 (= (size!8218 objs!8) lt!371786)))

(declare-fun bs!259383 () Bool)

(assert (= bs!259383 d!311216))

(declare-fun m!1256491 () Bool)

(assert (=> bs!259383 m!1256491))

(assert (=> bs!259383 m!1256491))

(declare-fun m!1256493 () Bool)

(assert (=> bs!259383 m!1256493))

(declare-fun m!1256495 () Bool)

(assert (=> bs!259383 m!1256495))

(assert (=> b!1100524 d!311216))

(declare-fun d!311218 () Bool)

(declare-fun lt!371789 () Bool)

(declare-fun forall!2430 (List!10606 Int) Bool)

(assert (=> d!311218 (= lt!371789 (forall!2430 (list!3816 objs!8) lambda!43239))))

(declare-fun forall!2431 (Conc!3274 Int) Bool)

(assert (=> d!311218 (= lt!371789 (forall!2431 (c!186833 objs!8) lambda!43239))))

(assert (=> d!311218 (= (forall!2428 objs!8 lambda!43239) lt!371789)))

(declare-fun bs!259384 () Bool)

(assert (= bs!259384 d!311218))

(assert (=> bs!259384 m!1256491))

(assert (=> bs!259384 m!1256491))

(declare-fun m!1256497 () Bool)

(assert (=> bs!259384 m!1256497))

(declare-fun m!1256499 () Bool)

(assert (=> bs!259384 m!1256499))

(assert (=> start!94536 d!311218))

(declare-fun d!311222 () Bool)

(declare-fun isBalanced!907 (Conc!3274) Bool)

(assert (=> d!311222 (= (inv!13607 objs!8) (isBalanced!907 (c!186833 objs!8)))))

(declare-fun bs!259385 () Bool)

(assert (= bs!259385 d!311222))

(declare-fun m!1256501 () Bool)

(assert (=> bs!259385 m!1256501))

(assert (=> start!94536 d!311222))

(declare-fun d!311224 () Bool)

(declare-fun c!186840 () Bool)

(assert (=> d!311224 (= c!186840 (is-Node!3274 (c!186833 objs!8)))))

(declare-fun e!696953 () Bool)

(assert (=> d!311224 (= (inv!13608 (c!186833 objs!8)) e!696953)))

(declare-fun b!1100538 () Bool)

(declare-fun inv!13611 (Conc!3274) Bool)

(assert (=> b!1100538 (= e!696953 (inv!13611 (c!186833 objs!8)))))

(declare-fun b!1100539 () Bool)

(declare-fun e!696954 () Bool)

(assert (=> b!1100539 (= e!696953 e!696954)))

(declare-fun res!488194 () Bool)

(assert (=> b!1100539 (= res!488194 (not (is-Leaf!5188 (c!186833 objs!8))))))

(assert (=> b!1100539 (=> res!488194 e!696954)))

(declare-fun b!1100540 () Bool)

(declare-fun inv!13612 (Conc!3274) Bool)

(assert (=> b!1100540 (= e!696954 (inv!13612 (c!186833 objs!8)))))

(assert (= (and d!311224 c!186840) b!1100538))

(assert (= (and d!311224 (not c!186840)) b!1100539))

(assert (= (and b!1100539 (not res!488194)) b!1100540))

(declare-fun m!1256503 () Bool)

(assert (=> b!1100538 m!1256503))

(declare-fun m!1256505 () Bool)

(assert (=> b!1100540 m!1256505))

(assert (=> b!1100525 d!311224))

(declare-fun tp!326937 () Bool)

(declare-fun b!1100549 () Bool)

(declare-fun e!696959 () Bool)

(declare-fun tp!326939 () Bool)

(assert (=> b!1100549 (= e!696959 (and (inv!13608 (left!9141 (c!186833 objs!8))) tp!326937 (inv!13608 (right!9471 (c!186833 objs!8))) tp!326939))))

(declare-fun b!1100551 () Bool)

(declare-fun e!696960 () Bool)

(declare-fun tp!326938 () Bool)

(assert (=> b!1100551 (= e!696960 tp!326938)))

(declare-fun b!1100550 () Bool)

(declare-fun inv!13613 (IArray!6553) Bool)

(assert (=> b!1100550 (= e!696959 (and (inv!13613 (xs!5967 (c!186833 objs!8))) e!696960))))

(assert (=> b!1100525 (= tp!326927 (and (inv!13608 (c!186833 objs!8)) e!696959))))

(assert (= (and b!1100525 (is-Node!3274 (c!186833 objs!8))) b!1100549))

(assert (= b!1100550 b!1100551))

(assert (= (and b!1100525 (is-Leaf!5188 (c!186833 objs!8))) b!1100550))

(declare-fun m!1256513 () Bool)

(assert (=> b!1100549 m!1256513))

(declare-fun m!1256515 () Bool)

(assert (=> b!1100549 m!1256515))

(declare-fun m!1256517 () Bool)

(assert (=> b!1100550 m!1256517))

(assert (=> b!1100525 m!1256481))

(push 1)

(assert (not b!1100549))

(assert (not b!1100551))

(assert (not d!311218))

(assert (not b!1100540))

(assert (not b!1100550))

(assert (not b!1100538))

(assert (not b!1100525))

(assert (not d!311216))

(assert (not d!311222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311232 () Bool)

(declare-fun res!488202 () Bool)

(declare-fun e!696977 () Bool)

(assert (=> d!311232 (=> res!488202 e!696977)))

(assert (=> d!311232 (= res!488202 (is-Nil!10590 (list!3816 objs!8)))))

(assert (=> d!311232 (= (forall!2430 (list!3816 objs!8) lambda!43239) e!696977)))

(declare-fun b!1100576 () Bool)

(declare-fun e!696978 () Bool)

(assert (=> b!1100576 (= e!696977 e!696978)))

(declare-fun res!488203 () Bool)

(assert (=> b!1100576 (=> (not res!488203) (not e!696978))))

(declare-fun dynLambda!4665 (Int tuple2!11756) Bool)

(assert (=> b!1100576 (= res!488203 (dynLambda!4665 lambda!43239 (h!15991 (list!3816 objs!8))))))

(declare-fun b!1100577 () Bool)

(assert (=> b!1100577 (= e!696978 (forall!2430 (t!103854 (list!3816 objs!8)) lambda!43239))))

(assert (= (and d!311232 (not res!488202)) b!1100576))

(assert (= (and b!1100576 res!488203) b!1100577))

(declare-fun b_lambda!32147 () Bool)

(assert (=> (not b_lambda!32147) (not b!1100576)))

(declare-fun m!1256535 () Bool)

(assert (=> b!1100576 m!1256535))

(declare-fun m!1256537 () Bool)

(assert (=> b!1100577 m!1256537))

(assert (=> d!311218 d!311232))

(declare-fun d!311234 () Bool)

(declare-fun list!3818 (Conc!3274) List!10606)

(assert (=> d!311234 (= (list!3816 objs!8) (list!3818 (c!186833 objs!8)))))

(declare-fun bs!259389 () Bool)

(assert (= bs!259389 d!311234))

(declare-fun m!1256539 () Bool)

(assert (=> bs!259389 m!1256539))

(assert (=> d!311218 d!311234))

(declare-fun b!1100586 () Bool)

(declare-fun e!696987 () Bool)

(declare-fun e!696985 () Bool)

(assert (=> b!1100586 (= e!696987 e!696985)))

(declare-fun c!186846 () Bool)

(assert (=> b!1100586 (= c!186846 (is-Leaf!5188 (c!186833 objs!8)))))

(declare-fun b!1100587 () Bool)

(declare-fun forall!2434 (IArray!6553 Int) Bool)

(assert (=> b!1100587 (= e!696985 (forall!2434 (xs!5967 (c!186833 objs!8)) lambda!43239))))

(declare-fun d!311236 () Bool)

(declare-fun lt!371801 () Bool)

(assert (=> d!311236 (= lt!371801 (forall!2430 (list!3818 (c!186833 objs!8)) lambda!43239))))

(assert (=> d!311236 (= lt!371801 e!696987)))

(declare-fun res!488209 () Bool)

(assert (=> d!311236 (=> res!488209 e!696987)))

(assert (=> d!311236 (= res!488209 (is-Empty!3274 (c!186833 objs!8)))))

(assert (=> d!311236 (= (forall!2431 (c!186833 objs!8) lambda!43239) lt!371801)))

(declare-fun b!1100589 () Bool)

(declare-fun e!696986 () Bool)

(assert (=> b!1100589 (= e!696986 (forall!2431 (right!9471 (c!186833 objs!8)) lambda!43239))))

(declare-fun b!1100588 () Bool)

(assert (=> b!1100588 (= e!696985 e!696986)))

(declare-datatypes ((Unit!16201 0))(
  ( (Unit!16202) )
))
(declare-fun lt!371800 () Unit!16201)

(declare-fun lemmaForallConcat!69 (List!10606 List!10606 Int) Unit!16201)

(assert (=> b!1100588 (= lt!371800 (lemmaForallConcat!69 (list!3818 (left!9141 (c!186833 objs!8))) (list!3818 (right!9471 (c!186833 objs!8))) lambda!43239))))

(declare-fun res!488208 () Bool)

(assert (=> b!1100588 (= res!488208 (forall!2431 (left!9141 (c!186833 objs!8)) lambda!43239))))

(assert (=> b!1100588 (=> (not res!488208) (not e!696986))))

(assert (= (and d!311236 (not res!488209)) b!1100586))

(assert (= (and b!1100586 c!186846) b!1100587))

(assert (= (and b!1100586 (not c!186846)) b!1100588))

(assert (= (and b!1100588 res!488208) b!1100589))

(declare-fun m!1256541 () Bool)

(assert (=> b!1100587 m!1256541))

(assert (=> d!311236 m!1256539))

(assert (=> d!311236 m!1256539))

(declare-fun m!1256543 () Bool)

(assert (=> d!311236 m!1256543))

(declare-fun m!1256545 () Bool)

(assert (=> b!1100589 m!1256545))

(declare-fun m!1256547 () Bool)

(assert (=> b!1100588 m!1256547))

(declare-fun m!1256549 () Bool)

(assert (=> b!1100588 m!1256549))

(assert (=> b!1100588 m!1256547))

(assert (=> b!1100588 m!1256549))

(declare-fun m!1256551 () Bool)

(assert (=> b!1100588 m!1256551))

(declare-fun m!1256553 () Bool)

(assert (=> b!1100588 m!1256553))

(assert (=> d!311218 d!311236))

(declare-fun d!311238 () Bool)

(declare-fun res!488216 () Bool)

(declare-fun e!696990 () Bool)

(assert (=> d!311238 (=> (not res!488216) (not e!696990))))

(assert (=> d!311238 (= res!488216 (= (csize!6778 (c!186833 objs!8)) (+ (size!8222 (left!9141 (c!186833 objs!8))) (size!8222 (right!9471 (c!186833 objs!8))))))))

(assert (=> d!311238 (= (inv!13611 (c!186833 objs!8)) e!696990)))

(declare-fun b!1100596 () Bool)

(declare-fun res!488217 () Bool)

(assert (=> b!1100596 (=> (not res!488217) (not e!696990))))

(assert (=> b!1100596 (= res!488217 (and (not (= (left!9141 (c!186833 objs!8)) Empty!3274)) (not (= (right!9471 (c!186833 objs!8)) Empty!3274))))))

(declare-fun b!1100597 () Bool)

(declare-fun res!488218 () Bool)

(assert (=> b!1100597 (=> (not res!488218) (not e!696990))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!431 (Conc!3274) Int)

(assert (=> b!1100597 (= res!488218 (= (cheight!3485 (c!186833 objs!8)) (+ (max!0 (height!431 (left!9141 (c!186833 objs!8))) (height!431 (right!9471 (c!186833 objs!8)))) 1)))))

(declare-fun b!1100598 () Bool)

(assert (=> b!1100598 (= e!696990 (<= 0 (cheight!3485 (c!186833 objs!8))))))

(assert (= (and d!311238 res!488216) b!1100596))

(assert (= (and b!1100596 res!488217) b!1100597))

(assert (= (and b!1100597 res!488218) b!1100598))

(declare-fun m!1256555 () Bool)

(assert (=> d!311238 m!1256555))

(declare-fun m!1256557 () Bool)

(assert (=> d!311238 m!1256557))

(declare-fun m!1256559 () Bool)

(assert (=> b!1100597 m!1256559))

(declare-fun m!1256561 () Bool)

(assert (=> b!1100597 m!1256561))

(assert (=> b!1100597 m!1256559))

(assert (=> b!1100597 m!1256561))

(declare-fun m!1256563 () Bool)

(assert (=> b!1100597 m!1256563))

(assert (=> b!1100538 d!311238))

(declare-fun d!311240 () Bool)

(declare-fun lt!371804 () Int)

(assert (=> d!311240 (>= lt!371804 0)))

(declare-fun e!696993 () Int)

(assert (=> d!311240 (= lt!371804 e!696993)))

(declare-fun c!186849 () Bool)

(assert (=> d!311240 (= c!186849 (is-Nil!10590 (list!3816 objs!8)))))

(assert (=> d!311240 (= (size!8221 (list!3816 objs!8)) lt!371804)))

(declare-fun b!1100603 () Bool)

(assert (=> b!1100603 (= e!696993 0)))

(declare-fun b!1100604 () Bool)

(assert (=> b!1100604 (= e!696993 (+ 1 (size!8221 (t!103854 (list!3816 objs!8)))))))

(assert (= (and d!311240 c!186849) b!1100603))

(assert (= (and d!311240 (not c!186849)) b!1100604))

(declare-fun m!1256565 () Bool)

(assert (=> b!1100604 m!1256565))

(assert (=> d!311216 d!311240))

(assert (=> d!311216 d!311234))

(declare-fun d!311242 () Bool)

(declare-fun lt!371807 () Int)

(assert (=> d!311242 (= lt!371807 (size!8221 (list!3818 (c!186833 objs!8))))))

(assert (=> d!311242 (= lt!371807 (ite (is-Empty!3274 (c!186833 objs!8)) 0 (ite (is-Leaf!5188 (c!186833 objs!8)) (csize!6779 (c!186833 objs!8)) (csize!6778 (c!186833 objs!8)))))))

(assert (=> d!311242 (= (size!8222 (c!186833 objs!8)) lt!371807)))

(declare-fun bs!259390 () Bool)

(assert (= bs!259390 d!311242))

(assert (=> bs!259390 m!1256539))

(assert (=> bs!259390 m!1256539))

(declare-fun m!1256567 () Bool)

(assert (=> bs!259390 m!1256567))

(assert (=> d!311216 d!311242))

(declare-fun b!1100617 () Bool)

(declare-fun res!488236 () Bool)

(declare-fun e!696999 () Bool)

(assert (=> b!1100617 (=> (not res!488236) (not e!696999))))

(assert (=> b!1100617 (= res!488236 (isBalanced!907 (left!9141 (c!186833 objs!8))))))

(declare-fun b!1100618 () Bool)

(declare-fun res!488235 () Bool)

(assert (=> b!1100618 (=> (not res!488235) (not e!696999))))

(declare-fun isEmpty!6691 (Conc!3274) Bool)

(assert (=> b!1100618 (= res!488235 (not (isEmpty!6691 (left!9141 (c!186833 objs!8)))))))

(declare-fun b!1100620 () Bool)

(declare-fun e!696998 () Bool)

(assert (=> b!1100620 (= e!696998 e!696999)))

(declare-fun res!488231 () Bool)

(assert (=> b!1100620 (=> (not res!488231) (not e!696999))))

(assert (=> b!1100620 (= res!488231 (<= (- 1) (- (height!431 (left!9141 (c!186833 objs!8))) (height!431 (right!9471 (c!186833 objs!8))))))))

(declare-fun b!1100621 () Bool)

(declare-fun res!488234 () Bool)

(assert (=> b!1100621 (=> (not res!488234) (not e!696999))))

(assert (=> b!1100621 (= res!488234 (isBalanced!907 (right!9471 (c!186833 objs!8))))))

(declare-fun b!1100622 () Bool)

(declare-fun res!488233 () Bool)

(assert (=> b!1100622 (=> (not res!488233) (not e!696999))))

(assert (=> b!1100622 (= res!488233 (<= (- (height!431 (left!9141 (c!186833 objs!8))) (height!431 (right!9471 (c!186833 objs!8)))) 1))))

(declare-fun b!1100619 () Bool)

(assert (=> b!1100619 (= e!696999 (not (isEmpty!6691 (right!9471 (c!186833 objs!8)))))))

(declare-fun d!311244 () Bool)

(declare-fun res!488232 () Bool)

(assert (=> d!311244 (=> res!488232 e!696998)))

(assert (=> d!311244 (= res!488232 (not (is-Node!3274 (c!186833 objs!8))))))

(assert (=> d!311244 (= (isBalanced!907 (c!186833 objs!8)) e!696998)))

(assert (= (and d!311244 (not res!488232)) b!1100620))

(assert (= (and b!1100620 res!488231) b!1100622))

(assert (= (and b!1100622 res!488233) b!1100617))

(assert (= (and b!1100617 res!488236) b!1100621))

(assert (= (and b!1100621 res!488234) b!1100618))

(assert (= (and b!1100618 res!488235) b!1100619))

(declare-fun m!1256569 () Bool)

(assert (=> b!1100618 m!1256569))

(declare-fun m!1256571 () Bool)

(assert (=> b!1100617 m!1256571))

(assert (=> b!1100622 m!1256559))

(assert (=> b!1100622 m!1256561))

(declare-fun m!1256573 () Bool)

(assert (=> b!1100619 m!1256573))

(declare-fun m!1256575 () Bool)

(assert (=> b!1100621 m!1256575))

(assert (=> b!1100620 m!1256559))

(assert (=> b!1100620 m!1256561))

(assert (=> d!311222 d!311244))

(declare-fun d!311246 () Bool)

(declare-fun c!186850 () Bool)

(assert (=> d!311246 (= c!186850 (is-Node!3274 (left!9141 (c!186833 objs!8))))))

(declare-fun e!697000 () Bool)

(assert (=> d!311246 (= (inv!13608 (left!9141 (c!186833 objs!8))) e!697000)))

(declare-fun b!1100623 () Bool)

(assert (=> b!1100623 (= e!697000 (inv!13611 (left!9141 (c!186833 objs!8))))))

(declare-fun b!1100624 () Bool)

(declare-fun e!697001 () Bool)

(assert (=> b!1100624 (= e!697000 e!697001)))

(declare-fun res!488237 () Bool)

(assert (=> b!1100624 (= res!488237 (not (is-Leaf!5188 (left!9141 (c!186833 objs!8)))))))

(assert (=> b!1100624 (=> res!488237 e!697001)))

(declare-fun b!1100625 () Bool)

(assert (=> b!1100625 (= e!697001 (inv!13612 (left!9141 (c!186833 objs!8))))))

(assert (= (and d!311246 c!186850) b!1100623))

(assert (= (and d!311246 (not c!186850)) b!1100624))

(assert (= (and b!1100624 (not res!488237)) b!1100625))

(declare-fun m!1256577 () Bool)

(assert (=> b!1100623 m!1256577))

(declare-fun m!1256579 () Bool)

(assert (=> b!1100625 m!1256579))

(assert (=> b!1100549 d!311246))

(declare-fun d!311248 () Bool)

(declare-fun c!186851 () Bool)

(assert (=> d!311248 (= c!186851 (is-Node!3274 (right!9471 (c!186833 objs!8))))))

(declare-fun e!697002 () Bool)

(assert (=> d!311248 (= (inv!13608 (right!9471 (c!186833 objs!8))) e!697002)))

(declare-fun b!1100626 () Bool)

(assert (=> b!1100626 (= e!697002 (inv!13611 (right!9471 (c!186833 objs!8))))))

(declare-fun b!1100627 () Bool)

(declare-fun e!697003 () Bool)

(assert (=> b!1100627 (= e!697002 e!697003)))

(declare-fun res!488238 () Bool)

(assert (=> b!1100627 (= res!488238 (not (is-Leaf!5188 (right!9471 (c!186833 objs!8)))))))

(assert (=> b!1100627 (=> res!488238 e!697003)))

(declare-fun b!1100628 () Bool)

(assert (=> b!1100628 (= e!697003 (inv!13612 (right!9471 (c!186833 objs!8))))))

(assert (= (and d!311248 c!186851) b!1100626))

(assert (= (and d!311248 (not c!186851)) b!1100627))

(assert (= (and b!1100627 (not res!488238)) b!1100628))

(declare-fun m!1256581 () Bool)

(assert (=> b!1100626 m!1256581))

(declare-fun m!1256583 () Bool)

(assert (=> b!1100628 m!1256583))

(assert (=> b!1100549 d!311248))

(declare-fun d!311250 () Bool)

(declare-fun res!488243 () Bool)

(declare-fun e!697006 () Bool)

(assert (=> d!311250 (=> (not res!488243) (not e!697006))))

(declare-fun list!3819 (IArray!6553) List!10606)

(assert (=> d!311250 (= res!488243 (<= (size!8221 (list!3819 (xs!5967 (c!186833 objs!8)))) 512))))

(assert (=> d!311250 (= (inv!13612 (c!186833 objs!8)) e!697006)))

(declare-fun b!1100633 () Bool)

(declare-fun res!488244 () Bool)

(assert (=> b!1100633 (=> (not res!488244) (not e!697006))))

(assert (=> b!1100633 (= res!488244 (= (csize!6779 (c!186833 objs!8)) (size!8221 (list!3819 (xs!5967 (c!186833 objs!8))))))))

(declare-fun b!1100634 () Bool)

(assert (=> b!1100634 (= e!697006 (and (> (csize!6779 (c!186833 objs!8)) 0) (<= (csize!6779 (c!186833 objs!8)) 512)))))

(assert (= (and d!311250 res!488243) b!1100633))

(assert (= (and b!1100633 res!488244) b!1100634))

(declare-fun m!1256585 () Bool)

(assert (=> d!311250 m!1256585))

(assert (=> d!311250 m!1256585))

(declare-fun m!1256587 () Bool)

(assert (=> d!311250 m!1256587))

(assert (=> b!1100633 m!1256585))

(assert (=> b!1100633 m!1256585))

(assert (=> b!1100633 m!1256587))

(assert (=> b!1100540 d!311250))

(assert (=> b!1100525 d!311224))

(declare-fun d!311252 () Bool)

(assert (=> d!311252 (= (inv!13613 (xs!5967 (c!186833 objs!8))) (<= (size!8221 (innerList!3334 (xs!5967 (c!186833 objs!8)))) 2147483647))))

(declare-fun bs!259391 () Bool)

(assert (= bs!259391 d!311252))

(declare-fun m!1256589 () Bool)

(assert (=> bs!259391 m!1256589))

(assert (=> b!1100550 d!311252))

(declare-fun tp!326951 () Bool)

(declare-fun e!697007 () Bool)

(declare-fun b!1100635 () Bool)

(declare-fun tp!326949 () Bool)

(assert (=> b!1100635 (= e!697007 (and (inv!13608 (left!9141 (left!9141 (c!186833 objs!8)))) tp!326949 (inv!13608 (right!9471 (left!9141 (c!186833 objs!8)))) tp!326951))))

(declare-fun b!1100637 () Bool)

(declare-fun e!697008 () Bool)

(declare-fun tp!326950 () Bool)

(assert (=> b!1100637 (= e!697008 tp!326950)))

(declare-fun b!1100636 () Bool)

(assert (=> b!1100636 (= e!697007 (and (inv!13613 (xs!5967 (left!9141 (c!186833 objs!8)))) e!697008))))

(assert (=> b!1100549 (= tp!326937 (and (inv!13608 (left!9141 (c!186833 objs!8))) e!697007))))

(assert (= (and b!1100549 (is-Node!3274 (left!9141 (c!186833 objs!8)))) b!1100635))

(assert (= b!1100636 b!1100637))

(assert (= (and b!1100549 (is-Leaf!5188 (left!9141 (c!186833 objs!8)))) b!1100636))

(declare-fun m!1256591 () Bool)

(assert (=> b!1100635 m!1256591))

(declare-fun m!1256593 () Bool)

(assert (=> b!1100635 m!1256593))

(declare-fun m!1256595 () Bool)

(assert (=> b!1100636 m!1256595))

(assert (=> b!1100549 m!1256513))

(declare-fun tp!326954 () Bool)

(declare-fun e!697009 () Bool)

(declare-fun tp!326952 () Bool)

(declare-fun b!1100638 () Bool)

(assert (=> b!1100638 (= e!697009 (and (inv!13608 (left!9141 (right!9471 (c!186833 objs!8)))) tp!326952 (inv!13608 (right!9471 (right!9471 (c!186833 objs!8)))) tp!326954))))

(declare-fun b!1100640 () Bool)

(declare-fun e!697010 () Bool)

(declare-fun tp!326953 () Bool)

(assert (=> b!1100640 (= e!697010 tp!326953)))

(declare-fun b!1100639 () Bool)

(assert (=> b!1100639 (= e!697009 (and (inv!13613 (xs!5967 (right!9471 (c!186833 objs!8)))) e!697010))))

(assert (=> b!1100549 (= tp!326939 (and (inv!13608 (right!9471 (c!186833 objs!8))) e!697009))))

(assert (= (and b!1100549 (is-Node!3274 (right!9471 (c!186833 objs!8)))) b!1100638))

(assert (= b!1100639 b!1100640))

(assert (= (and b!1100549 (is-Leaf!5188 (right!9471 (c!186833 objs!8)))) b!1100639))

(declare-fun m!1256597 () Bool)

(assert (=> b!1100638 m!1256597))

(declare-fun m!1256599 () Bool)

(assert (=> b!1100638 m!1256599))

(declare-fun m!1256601 () Bool)

(assert (=> b!1100639 m!1256601))

(assert (=> b!1100549 m!1256515))

(declare-fun b!1100663 () Bool)

(declare-fun e!697025 () Bool)

(declare-fun tp!326962 () Bool)

(declare-fun inv!13617 (Conc!3273) Bool)

(assert (=> b!1100663 (= e!697025 (and (inv!13617 (c!186832 (tokens!1374 (_2!6704 (h!15991 (innerList!3334 (xs!5967 (c!186833 objs!8)))))))) tp!326962))))

(declare-fun e!697024 () Bool)

(declare-fun tp!326963 () Bool)

(declare-fun b!1100662 () Bool)

(declare-fun inv!13618 (BalanceConc!6560) Bool)

(assert (=> b!1100662 (= e!697024 (and tp!326963 (inv!13618 (tokens!1374 (_2!6704 (h!15991 (innerList!3334 (xs!5967 (c!186833 objs!8))))))) e!697025))))

(declare-fun e!697026 () Bool)

(declare-fun tp!326961 () Bool)

(declare-fun b!1100661 () Bool)

(declare-fun inv!13619 (PrintableTokens!346) Bool)

(assert (=> b!1100661 (= e!697026 (and (inv!13619 (_2!6704 (h!15991 (innerList!3334 (xs!5967 (c!186833 objs!8)))))) e!697024 tp!326961))))

(assert (=> b!1100551 (= tp!326938 e!697026)))

(assert (= b!1100662 b!1100663))

(assert (= b!1100661 b!1100662))

(assert (= (and b!1100551 (is-Cons!10590 (innerList!3334 (xs!5967 (c!186833 objs!8))))) b!1100661))

(declare-fun m!1256615 () Bool)

(assert (=> b!1100663 m!1256615))

(declare-fun m!1256617 () Bool)

(assert (=> b!1100662 m!1256617))

(declare-fun m!1256619 () Bool)

(assert (=> b!1100661 m!1256619))

(declare-fun b_lambda!32149 () Bool)

(assert (= b_lambda!32147 (or start!94536 b_lambda!32149)))

(declare-fun bs!259392 () Bool)

(declare-fun d!311262 () Bool)

(assert (= bs!259392 (and d!311262 start!94536)))

(declare-fun usesJsonRules!0 (PrintableTokens!346) Bool)

(assert (=> bs!259392 (= (dynLambda!4665 lambda!43239 (h!15991 (list!3816 objs!8))) (usesJsonRules!0 (_2!6704 (h!15991 (list!3816 objs!8)))))))

(declare-fun m!1256621 () Bool)

(assert (=> bs!259392 m!1256621))

(assert (=> b!1100576 d!311262))

(push 1)

(assert (not b!1100662))

(assert (not b!1100577))

(assert (not b!1100633))

(assert (not b_lambda!32149))

(assert (not b!1100639))

(assert (not b!1100587))

(assert (not d!311252))

(assert (not b!1100618))

(assert (not b!1100637))

(assert (not b!1100626))

(assert (not b!1100620))

(assert (not b!1100623))

(assert (not d!311238))

(assert (not b!1100661))

(assert (not b!1100604))

(assert (not b!1100589))

(assert (not b!1100628))

(assert (not b!1100663))

(assert (not b!1100617))

(assert (not b!1100621))

(assert (not d!311242))

(assert (not b!1100619))

(assert (not b!1100625))

(assert (not b!1100636))

(assert (not d!311234))

(assert (not b!1100588))

(assert (not b!1100597))

(assert (not b!1100640))

(assert (not bs!259392))

(assert (not b!1100549))

(assert (not d!311236))

(assert (not b!1100635))

(assert (not d!311250))

(assert (not b!1100622))

(assert (not b!1100638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

