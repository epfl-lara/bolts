; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!535296 () Bool)

(assert start!535296)

(declare-fun b!5071706 () Bool)

(declare-fun e!3164521 () Bool)

(declare-fun tp!1415624 () Bool)

(assert (=> b!5071706 (= e!3164521 tp!1415624)))

(declare-fun b!5071707 () Bool)

(declare-fun e!3164517 () Bool)

(declare-datatypes ((T!105158 0))(
  ( (T!105159 (val!23653 Int)) )
))
(declare-datatypes ((List!58563 0))(
  ( (Nil!58439) (Cons!58439 (h!64887 T!105158) (t!371326 List!58563)) )
))
(declare-datatypes ((IArray!31199 0))(
  ( (IArray!31200 (innerList!15657 List!58563)) )
))
(declare-datatypes ((Conc!15569 0))(
  ( (Node!15569 (left!42824 Conc!15569) (right!43154 Conc!15569) (csize!31368 Int) (cheight!15780 Int)) (Leaf!25859 (xs!18927 IArray!31199) (csize!31369 Int)) (Empty!15569) )
))
(declare-fun ys!41 () Conc!15569)

(declare-fun e!3164519 () Bool)

(declare-fun inv!77586 (IArray!31199) Bool)

(assert (=> b!5071707 (= e!3164517 (and (inv!77586 (xs!18927 ys!41)) e!3164519))))

(declare-fun b!5071708 () Bool)

(declare-fun e!3164518 () Bool)

(declare-fun lt!2089670 () Int)

(declare-fun xs!286 () Conc!15569)

(assert (=> b!5071708 (= e!3164518 (and (or (> (- 1) lt!2089670) (> lt!2089670 1)) (< lt!2089670 (- 1)) (not (is-Node!15569 xs!286))))))

(declare-fun height!2146 (Conc!15569) Int)

(assert (=> b!5071708 (= lt!2089670 (- (height!2146 ys!41) (height!2146 xs!286)))))

(declare-fun b!5071709 () Bool)

(declare-fun res!2159295 () Bool)

(assert (=> b!5071709 (=> (not res!2159295) (not e!3164518))))

(declare-fun isBalanced!4431 (Conc!15569) Bool)

(assert (=> b!5071709 (= res!2159295 (isBalanced!4431 ys!41))))

(declare-fun b!5071710 () Bool)

(declare-fun e!3164520 () Bool)

(assert (=> b!5071710 (= e!3164520 (and (inv!77586 (xs!18927 xs!286)) e!3164521))))

(declare-fun res!2159296 () Bool)

(assert (=> start!535296 (=> (not res!2159296) (not e!3164518))))

(assert (=> start!535296 (= res!2159296 (isBalanced!4431 xs!286))))

(assert (=> start!535296 e!3164518))

(declare-fun inv!77587 (Conc!15569) Bool)

(assert (=> start!535296 (and (inv!77587 xs!286) e!3164520)))

(assert (=> start!535296 (and (inv!77587 ys!41) e!3164517)))

(declare-fun tp!1415627 () Bool)

(declare-fun b!5071711 () Bool)

(declare-fun tp!1415623 () Bool)

(assert (=> b!5071711 (= e!3164517 (and (inv!77587 (left!42824 ys!41)) tp!1415623 (inv!77587 (right!43154 ys!41)) tp!1415627))))

(declare-fun b!5071712 () Bool)

(declare-fun res!2159294 () Bool)

(assert (=> b!5071712 (=> (not res!2159294) (not e!3164518))))

(assert (=> b!5071712 (= res!2159294 (and (not (= xs!286 Empty!15569)) (not (= ys!41 Empty!15569))))))

(declare-fun b!5071713 () Bool)

(declare-fun tp!1415622 () Bool)

(assert (=> b!5071713 (= e!3164519 tp!1415622)))

(declare-fun tp!1415625 () Bool)

(declare-fun b!5071714 () Bool)

(declare-fun tp!1415626 () Bool)

(assert (=> b!5071714 (= e!3164520 (and (inv!77587 (left!42824 xs!286)) tp!1415625 (inv!77587 (right!43154 xs!286)) tp!1415626))))

(assert (= (and start!535296 res!2159296) b!5071709))

(assert (= (and b!5071709 res!2159295) b!5071712))

(assert (= (and b!5071712 res!2159294) b!5071708))

(assert (= (and start!535296 (is-Node!15569 xs!286)) b!5071714))

(assert (= b!5071710 b!5071706))

(assert (= (and start!535296 (is-Leaf!25859 xs!286)) b!5071710))

(assert (= (and start!535296 (is-Node!15569 ys!41)) b!5071711))

(assert (= b!5071707 b!5071713))

(assert (= (and start!535296 (is-Leaf!25859 ys!41)) b!5071707))

(declare-fun m!6118254 () Bool)

(assert (=> b!5071708 m!6118254))

(declare-fun m!6118256 () Bool)

(assert (=> b!5071708 m!6118256))

(declare-fun m!6118258 () Bool)

(assert (=> b!5071714 m!6118258))

(declare-fun m!6118260 () Bool)

(assert (=> b!5071714 m!6118260))

(declare-fun m!6118262 () Bool)

(assert (=> b!5071707 m!6118262))

(declare-fun m!6118264 () Bool)

(assert (=> start!535296 m!6118264))

(declare-fun m!6118266 () Bool)

(assert (=> start!535296 m!6118266))

(declare-fun m!6118268 () Bool)

(assert (=> start!535296 m!6118268))

(declare-fun m!6118270 () Bool)

(assert (=> b!5071711 m!6118270))

(declare-fun m!6118272 () Bool)

(assert (=> b!5071711 m!6118272))

(declare-fun m!6118274 () Bool)

(assert (=> b!5071710 m!6118274))

(declare-fun m!6118276 () Bool)

(assert (=> b!5071709 m!6118276))

(push 1)

(assert (not b!5071714))

(assert (not b!5071710))

(assert (not b!5071707))

(assert (not start!535296))

(assert (not b!5071708))

(assert (not b!5071713))

(assert (not b!5071706))

(assert (not b!5071709))

(assert (not b!5071711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1637126 () Bool)

(declare-fun size!39086 (List!58563) Int)

(assert (=> d!1637126 (= (inv!77586 (xs!18927 ys!41)) (<= (size!39086 (innerList!15657 (xs!18927 ys!41))) 2147483647))))

(declare-fun bs!1190198 () Bool)

(assert (= bs!1190198 d!1637126))

(declare-fun m!6118302 () Bool)

(assert (=> bs!1190198 m!6118302))

(assert (=> b!5071707 d!1637126))

(declare-fun b!5071754 () Bool)

(declare-fun e!3164541 () Bool)

(declare-fun e!3164542 () Bool)

(assert (=> b!5071754 (= e!3164541 e!3164542)))

(declare-fun res!2159319 () Bool)

(assert (=> b!5071754 (=> (not res!2159319) (not e!3164542))))

(assert (=> b!5071754 (= res!2159319 (<= (- 1) (- (height!2146 (left!42824 xs!286)) (height!2146 (right!43154 xs!286)))))))

(declare-fun b!5071755 () Bool)

(declare-fun res!2159320 () Bool)

(assert (=> b!5071755 (=> (not res!2159320) (not e!3164542))))

(assert (=> b!5071755 (= res!2159320 (isBalanced!4431 (left!42824 xs!286)))))

(declare-fun b!5071756 () Bool)

(declare-fun res!2159323 () Bool)

(assert (=> b!5071756 (=> (not res!2159323) (not e!3164542))))

(declare-fun isEmpty!31642 (Conc!15569) Bool)

(assert (=> b!5071756 (= res!2159323 (not (isEmpty!31642 (left!42824 xs!286))))))

(declare-fun b!5071757 () Bool)

(assert (=> b!5071757 (= e!3164542 (not (isEmpty!31642 (right!43154 xs!286))))))

(declare-fun b!5071758 () Bool)

(declare-fun res!2159318 () Bool)

(assert (=> b!5071758 (=> (not res!2159318) (not e!3164542))))

(assert (=> b!5071758 (= res!2159318 (<= (- (height!2146 (left!42824 xs!286)) (height!2146 (right!43154 xs!286))) 1))))

(declare-fun b!5071759 () Bool)

(declare-fun res!2159321 () Bool)

(assert (=> b!5071759 (=> (not res!2159321) (not e!3164542))))

(assert (=> b!5071759 (= res!2159321 (isBalanced!4431 (right!43154 xs!286)))))

(declare-fun d!1637128 () Bool)

(declare-fun res!2159322 () Bool)

(assert (=> d!1637128 (=> res!2159322 e!3164541)))

(assert (=> d!1637128 (= res!2159322 (not (is-Node!15569 xs!286)))))

(assert (=> d!1637128 (= (isBalanced!4431 xs!286) e!3164541)))

(assert (= (and d!1637128 (not res!2159322)) b!5071754))

(assert (= (and b!5071754 res!2159319) b!5071758))

(assert (= (and b!5071758 res!2159318) b!5071755))

(assert (= (and b!5071755 res!2159320) b!5071759))

(assert (= (and b!5071759 res!2159321) b!5071756))

(assert (= (and b!5071756 res!2159323) b!5071757))

(declare-fun m!6118304 () Bool)

(assert (=> b!5071758 m!6118304))

(declare-fun m!6118306 () Bool)

(assert (=> b!5071758 m!6118306))

(assert (=> b!5071754 m!6118304))

(assert (=> b!5071754 m!6118306))

(declare-fun m!6118308 () Bool)

(assert (=> b!5071756 m!6118308))

(declare-fun m!6118310 () Bool)

(assert (=> b!5071757 m!6118310))

(declare-fun m!6118312 () Bool)

(assert (=> b!5071759 m!6118312))

(declare-fun m!6118314 () Bool)

(assert (=> b!5071755 m!6118314))

(assert (=> start!535296 d!1637128))

(declare-fun d!1637132 () Bool)

(declare-fun c!870862 () Bool)

(assert (=> d!1637132 (= c!870862 (is-Node!15569 xs!286))))

(declare-fun e!3164551 () Bool)

(assert (=> d!1637132 (= (inv!77587 xs!286) e!3164551)))

(declare-fun b!5071772 () Bool)

(declare-fun inv!77590 (Conc!15569) Bool)

(assert (=> b!5071772 (= e!3164551 (inv!77590 xs!286))))

(declare-fun b!5071773 () Bool)

(declare-fun e!3164552 () Bool)

(assert (=> b!5071773 (= e!3164551 e!3164552)))

(declare-fun res!2159328 () Bool)

(assert (=> b!5071773 (= res!2159328 (not (is-Leaf!25859 xs!286)))))

(assert (=> b!5071773 (=> res!2159328 e!3164552)))

(declare-fun b!5071774 () Bool)

(declare-fun inv!77591 (Conc!15569) Bool)

(assert (=> b!5071774 (= e!3164552 (inv!77591 xs!286))))

(assert (= (and d!1637132 c!870862) b!5071772))

(assert (= (and d!1637132 (not c!870862)) b!5071773))

(assert (= (and b!5071773 (not res!2159328)) b!5071774))

(declare-fun m!6118316 () Bool)

(assert (=> b!5071772 m!6118316))

(declare-fun m!6118318 () Bool)

(assert (=> b!5071774 m!6118318))

(assert (=> start!535296 d!1637132))

(declare-fun d!1637134 () Bool)

(declare-fun c!870863 () Bool)

(assert (=> d!1637134 (= c!870863 (is-Node!15569 ys!41))))

(declare-fun e!3164553 () Bool)

(assert (=> d!1637134 (= (inv!77587 ys!41) e!3164553)))

(declare-fun b!5071775 () Bool)

(assert (=> b!5071775 (= e!3164553 (inv!77590 ys!41))))

(declare-fun b!5071776 () Bool)

(declare-fun e!3164554 () Bool)

(assert (=> b!5071776 (= e!3164553 e!3164554)))

(declare-fun res!2159329 () Bool)

(assert (=> b!5071776 (= res!2159329 (not (is-Leaf!25859 ys!41)))))

(assert (=> b!5071776 (=> res!2159329 e!3164554)))

(declare-fun b!5071777 () Bool)

(assert (=> b!5071777 (= e!3164554 (inv!77591 ys!41))))

(assert (= (and d!1637134 c!870863) b!5071775))

(assert (= (and d!1637134 (not c!870863)) b!5071776))

(assert (= (and b!5071776 (not res!2159329)) b!5071777))

(declare-fun m!6118320 () Bool)

(assert (=> b!5071775 m!6118320))

(declare-fun m!6118322 () Bool)

(assert (=> b!5071777 m!6118322))

(assert (=> start!535296 d!1637134))

(declare-fun d!1637136 () Bool)

(declare-fun c!870864 () Bool)

(assert (=> d!1637136 (= c!870864 (is-Node!15569 (left!42824 ys!41)))))

(declare-fun e!3164555 () Bool)

(assert (=> d!1637136 (= (inv!77587 (left!42824 ys!41)) e!3164555)))

(declare-fun b!5071778 () Bool)

(assert (=> b!5071778 (= e!3164555 (inv!77590 (left!42824 ys!41)))))

(declare-fun b!5071779 () Bool)

(declare-fun e!3164556 () Bool)

(assert (=> b!5071779 (= e!3164555 e!3164556)))

(declare-fun res!2159330 () Bool)

(assert (=> b!5071779 (= res!2159330 (not (is-Leaf!25859 (left!42824 ys!41))))))

(assert (=> b!5071779 (=> res!2159330 e!3164556)))

(declare-fun b!5071780 () Bool)

(assert (=> b!5071780 (= e!3164556 (inv!77591 (left!42824 ys!41)))))

(assert (= (and d!1637136 c!870864) b!5071778))

(assert (= (and d!1637136 (not c!870864)) b!5071779))

(assert (= (and b!5071779 (not res!2159330)) b!5071780))

(declare-fun m!6118324 () Bool)

(assert (=> b!5071778 m!6118324))

(declare-fun m!6118326 () Bool)

(assert (=> b!5071780 m!6118326))

(assert (=> b!5071711 d!1637136))

(declare-fun d!1637138 () Bool)

(declare-fun c!870865 () Bool)

(assert (=> d!1637138 (= c!870865 (is-Node!15569 (right!43154 ys!41)))))

(declare-fun e!3164557 () Bool)

(assert (=> d!1637138 (= (inv!77587 (right!43154 ys!41)) e!3164557)))

(declare-fun b!5071781 () Bool)

(assert (=> b!5071781 (= e!3164557 (inv!77590 (right!43154 ys!41)))))

(declare-fun b!5071782 () Bool)

(declare-fun e!3164558 () Bool)

(assert (=> b!5071782 (= e!3164557 e!3164558)))

(declare-fun res!2159331 () Bool)

(assert (=> b!5071782 (= res!2159331 (not (is-Leaf!25859 (right!43154 ys!41))))))

(assert (=> b!5071782 (=> res!2159331 e!3164558)))

(declare-fun b!5071783 () Bool)

(assert (=> b!5071783 (= e!3164558 (inv!77591 (right!43154 ys!41)))))

(assert (= (and d!1637138 c!870865) b!5071781))

(assert (= (and d!1637138 (not c!870865)) b!5071782))

(assert (= (and b!5071782 (not res!2159331)) b!5071783))

(declare-fun m!6118328 () Bool)

(assert (=> b!5071781 m!6118328))

(declare-fun m!6118330 () Bool)

(assert (=> b!5071783 m!6118330))

(assert (=> b!5071711 d!1637138))

(declare-fun b!5071784 () Bool)

(declare-fun e!3164559 () Bool)

(declare-fun e!3164560 () Bool)

(assert (=> b!5071784 (= e!3164559 e!3164560)))

(declare-fun res!2159333 () Bool)

(assert (=> b!5071784 (=> (not res!2159333) (not e!3164560))))

(assert (=> b!5071784 (= res!2159333 (<= (- 1) (- (height!2146 (left!42824 ys!41)) (height!2146 (right!43154 ys!41)))))))

(declare-fun b!5071785 () Bool)

(declare-fun res!2159334 () Bool)

(assert (=> b!5071785 (=> (not res!2159334) (not e!3164560))))

(assert (=> b!5071785 (= res!2159334 (isBalanced!4431 (left!42824 ys!41)))))

(declare-fun b!5071786 () Bool)

(declare-fun res!2159337 () Bool)

(assert (=> b!5071786 (=> (not res!2159337) (not e!3164560))))

(assert (=> b!5071786 (= res!2159337 (not (isEmpty!31642 (left!42824 ys!41))))))

(declare-fun b!5071787 () Bool)

(assert (=> b!5071787 (= e!3164560 (not (isEmpty!31642 (right!43154 ys!41))))))

(declare-fun b!5071788 () Bool)

(declare-fun res!2159332 () Bool)

(assert (=> b!5071788 (=> (not res!2159332) (not e!3164560))))

(assert (=> b!5071788 (= res!2159332 (<= (- (height!2146 (left!42824 ys!41)) (height!2146 (right!43154 ys!41))) 1))))

(declare-fun b!5071789 () Bool)

(declare-fun res!2159335 () Bool)

(assert (=> b!5071789 (=> (not res!2159335) (not e!3164560))))

(assert (=> b!5071789 (= res!2159335 (isBalanced!4431 (right!43154 ys!41)))))

(declare-fun d!1637140 () Bool)

(declare-fun res!2159336 () Bool)

(assert (=> d!1637140 (=> res!2159336 e!3164559)))

(assert (=> d!1637140 (= res!2159336 (not (is-Node!15569 ys!41)))))

(assert (=> d!1637140 (= (isBalanced!4431 ys!41) e!3164559)))

(assert (= (and d!1637140 (not res!2159336)) b!5071784))

(assert (= (and b!5071784 res!2159333) b!5071788))

(assert (= (and b!5071788 res!2159332) b!5071785))

(assert (= (and b!5071785 res!2159334) b!5071789))

(assert (= (and b!5071789 res!2159335) b!5071786))

(assert (= (and b!5071786 res!2159337) b!5071787))

(declare-fun m!6118332 () Bool)

(assert (=> b!5071788 m!6118332))

(declare-fun m!6118334 () Bool)

(assert (=> b!5071788 m!6118334))

(assert (=> b!5071784 m!6118332))

(assert (=> b!5071784 m!6118334))

(declare-fun m!6118336 () Bool)

(assert (=> b!5071786 m!6118336))

(declare-fun m!6118338 () Bool)

(assert (=> b!5071787 m!6118338))

(declare-fun m!6118340 () Bool)

(assert (=> b!5071789 m!6118340))

(declare-fun m!6118342 () Bool)

(assert (=> b!5071785 m!6118342))

(assert (=> b!5071709 d!1637140))

(declare-fun d!1637142 () Bool)

(assert (=> d!1637142 (= (inv!77586 (xs!18927 xs!286)) (<= (size!39086 (innerList!15657 (xs!18927 xs!286))) 2147483647))))

(declare-fun bs!1190199 () Bool)

(assert (= bs!1190199 d!1637142))

(declare-fun m!6118344 () Bool)

(assert (=> bs!1190199 m!6118344))

(assert (=> b!5071710 d!1637142))

(declare-fun d!1637144 () Bool)

(assert (=> d!1637144 (= (height!2146 ys!41) (ite (is-Empty!15569 ys!41) 0 (ite (is-Leaf!25859 ys!41) 1 (cheight!15780 ys!41))))))

(assert (=> b!5071708 d!1637144))

(declare-fun d!1637146 () Bool)

(assert (=> d!1637146 (= (height!2146 xs!286) (ite (is-Empty!15569 xs!286) 0 (ite (is-Leaf!25859 xs!286) 1 (cheight!15780 xs!286))))))

(assert (=> b!5071708 d!1637146))

(declare-fun d!1637148 () Bool)

(declare-fun c!870867 () Bool)

(assert (=> d!1637148 (= c!870867 (is-Node!15569 (left!42824 xs!286)))))

(declare-fun e!3164563 () Bool)

(assert (=> d!1637148 (= (inv!77587 (left!42824 xs!286)) e!3164563)))

(declare-fun b!5071793 () Bool)

(assert (=> b!5071793 (= e!3164563 (inv!77590 (left!42824 xs!286)))))

(declare-fun b!5071794 () Bool)

(declare-fun e!3164564 () Bool)

(assert (=> b!5071794 (= e!3164563 e!3164564)))

(declare-fun res!2159339 () Bool)

(assert (=> b!5071794 (= res!2159339 (not (is-Leaf!25859 (left!42824 xs!286))))))

(assert (=> b!5071794 (=> res!2159339 e!3164564)))

(declare-fun b!5071795 () Bool)

(assert (=> b!5071795 (= e!3164564 (inv!77591 (left!42824 xs!286)))))

(assert (= (and d!1637148 c!870867) b!5071793))

(assert (= (and d!1637148 (not c!870867)) b!5071794))

(assert (= (and b!5071794 (not res!2159339)) b!5071795))

(declare-fun m!6118346 () Bool)

(assert (=> b!5071793 m!6118346))

(declare-fun m!6118348 () Bool)

(assert (=> b!5071795 m!6118348))

(assert (=> b!5071714 d!1637148))

(declare-fun d!1637150 () Bool)

(declare-fun c!870868 () Bool)

(assert (=> d!1637150 (= c!870868 (is-Node!15569 (right!43154 xs!286)))))

(declare-fun e!3164565 () Bool)

(assert (=> d!1637150 (= (inv!77587 (right!43154 xs!286)) e!3164565)))

(declare-fun b!5071796 () Bool)

(assert (=> b!5071796 (= e!3164565 (inv!77590 (right!43154 xs!286)))))

(declare-fun b!5071797 () Bool)

(declare-fun e!3164566 () Bool)

(assert (=> b!5071797 (= e!3164565 e!3164566)))

(declare-fun res!2159340 () Bool)

(assert (=> b!5071797 (= res!2159340 (not (is-Leaf!25859 (right!43154 xs!286))))))

(assert (=> b!5071797 (=> res!2159340 e!3164566)))

(declare-fun b!5071798 () Bool)

(assert (=> b!5071798 (= e!3164566 (inv!77591 (right!43154 xs!286)))))

(assert (= (and d!1637150 c!870868) b!5071796))

(assert (= (and d!1637150 (not c!870868)) b!5071797))

(assert (= (and b!5071797 (not res!2159340)) b!5071798))

(declare-fun m!6118350 () Bool)

(assert (=> b!5071796 m!6118350))

(declare-fun m!6118352 () Bool)

(assert (=> b!5071798 m!6118352))

(assert (=> b!5071714 d!1637150))

(declare-fun b!5071806 () Bool)

(declare-fun e!3164571 () Bool)

(declare-fun tp_is_empty!37061 () Bool)

(declare-fun tp!1415648 () Bool)

(assert (=> b!5071806 (= e!3164571 (and tp_is_empty!37061 tp!1415648))))

(assert (=> b!5071706 (= tp!1415624 e!3164571)))

(assert (= (and b!5071706 (is-Cons!58439 (innerList!15657 (xs!18927 xs!286)))) b!5071806))

(declare-fun tp!1415656 () Bool)

(declare-fun tp!1415655 () Bool)

(declare-fun b!5071815 () Bool)

(declare-fun e!3164577 () Bool)

(assert (=> b!5071815 (= e!3164577 (and (inv!77587 (left!42824 (left!42824 ys!41))) tp!1415656 (inv!77587 (right!43154 (left!42824 ys!41))) tp!1415655))))

(declare-fun b!5071817 () Bool)

(declare-fun e!3164576 () Bool)

(declare-fun tp!1415657 () Bool)

(assert (=> b!5071817 (= e!3164576 tp!1415657)))

(declare-fun b!5071816 () Bool)

(assert (=> b!5071816 (= e!3164577 (and (inv!77586 (xs!18927 (left!42824 ys!41))) e!3164576))))

(assert (=> b!5071711 (= tp!1415623 (and (inv!77587 (left!42824 ys!41)) e!3164577))))

(assert (= (and b!5071711 (is-Node!15569 (left!42824 ys!41))) b!5071815))

(assert (= b!5071816 b!5071817))

(assert (= (and b!5071711 (is-Leaf!25859 (left!42824 ys!41))) b!5071816))

(declare-fun m!6118362 () Bool)

(assert (=> b!5071815 m!6118362))

(declare-fun m!6118364 () Bool)

(assert (=> b!5071815 m!6118364))

(declare-fun m!6118366 () Bool)

(assert (=> b!5071816 m!6118366))

(assert (=> b!5071711 m!6118270))

(declare-fun b!5071818 () Bool)

(declare-fun e!3164579 () Bool)

(declare-fun tp!1415658 () Bool)

(declare-fun tp!1415659 () Bool)

(assert (=> b!5071818 (= e!3164579 (and (inv!77587 (left!42824 (right!43154 ys!41))) tp!1415659 (inv!77587 (right!43154 (right!43154 ys!41))) tp!1415658))))

(declare-fun b!5071820 () Bool)

(declare-fun e!3164578 () Bool)

(declare-fun tp!1415660 () Bool)

(assert (=> b!5071820 (= e!3164578 tp!1415660)))

(declare-fun b!5071819 () Bool)

(assert (=> b!5071819 (= e!3164579 (and (inv!77586 (xs!18927 (right!43154 ys!41))) e!3164578))))

(assert (=> b!5071711 (= tp!1415627 (and (inv!77587 (right!43154 ys!41)) e!3164579))))

(assert (= (and b!5071711 (is-Node!15569 (right!43154 ys!41))) b!5071818))

(assert (= b!5071819 b!5071820))

(assert (= (and b!5071711 (is-Leaf!25859 (right!43154 ys!41))) b!5071819))

(declare-fun m!6118368 () Bool)

(assert (=> b!5071818 m!6118368))

(declare-fun m!6118370 () Bool)

(assert (=> b!5071818 m!6118370))

(declare-fun m!6118372 () Bool)

(assert (=> b!5071819 m!6118372))

(assert (=> b!5071711 m!6118272))

(declare-fun b!5071821 () Bool)

(declare-fun e!3164580 () Bool)

(declare-fun tp!1415661 () Bool)

(assert (=> b!5071821 (= e!3164580 (and tp_is_empty!37061 tp!1415661))))

(assert (=> b!5071713 (= tp!1415622 e!3164580)))

(assert (= (and b!5071713 (is-Cons!58439 (innerList!15657 (xs!18927 ys!41)))) b!5071821))

(declare-fun tp!1415663 () Bool)

(declare-fun tp!1415662 () Bool)

(declare-fun e!3164582 () Bool)

(declare-fun b!5071822 () Bool)

(assert (=> b!5071822 (= e!3164582 (and (inv!77587 (left!42824 (left!42824 xs!286))) tp!1415663 (inv!77587 (right!43154 (left!42824 xs!286))) tp!1415662))))

(declare-fun b!5071824 () Bool)

(declare-fun e!3164581 () Bool)

(declare-fun tp!1415664 () Bool)

(assert (=> b!5071824 (= e!3164581 tp!1415664)))

(declare-fun b!5071823 () Bool)

(assert (=> b!5071823 (= e!3164582 (and (inv!77586 (xs!18927 (left!42824 xs!286))) e!3164581))))

(assert (=> b!5071714 (= tp!1415625 (and (inv!77587 (left!42824 xs!286)) e!3164582))))

(assert (= (and b!5071714 (is-Node!15569 (left!42824 xs!286))) b!5071822))

(assert (= b!5071823 b!5071824))

(assert (= (and b!5071714 (is-Leaf!25859 (left!42824 xs!286))) b!5071823))

(declare-fun m!6118374 () Bool)

(assert (=> b!5071822 m!6118374))

(declare-fun m!6118376 () Bool)

(assert (=> b!5071822 m!6118376))

(declare-fun m!6118378 () Bool)

(assert (=> b!5071823 m!6118378))

(assert (=> b!5071714 m!6118258))

(declare-fun b!5071825 () Bool)

(declare-fun tp!1415666 () Bool)

(declare-fun e!3164584 () Bool)

(declare-fun tp!1415665 () Bool)

(assert (=> b!5071825 (= e!3164584 (and (inv!77587 (left!42824 (right!43154 xs!286))) tp!1415666 (inv!77587 (right!43154 (right!43154 xs!286))) tp!1415665))))

(declare-fun b!5071827 () Bool)

(declare-fun e!3164583 () Bool)

(declare-fun tp!1415667 () Bool)

(assert (=> b!5071827 (= e!3164583 tp!1415667)))

(declare-fun b!5071826 () Bool)

(assert (=> b!5071826 (= e!3164584 (and (inv!77586 (xs!18927 (right!43154 xs!286))) e!3164583))))

(assert (=> b!5071714 (= tp!1415626 (and (inv!77587 (right!43154 xs!286)) e!3164584))))

(assert (= (and b!5071714 (is-Node!15569 (right!43154 xs!286))) b!5071825))

(assert (= b!5071826 b!5071827))

(assert (= (and b!5071714 (is-Leaf!25859 (right!43154 xs!286))) b!5071826))

(declare-fun m!6118380 () Bool)

(assert (=> b!5071825 m!6118380))

(declare-fun m!6118382 () Bool)

(assert (=> b!5071825 m!6118382))

(declare-fun m!6118384 () Bool)

(assert (=> b!5071826 m!6118384))

(assert (=> b!5071714 m!6118260))

(push 1)

(assert (not b!5071795))

(assert (not b!5071785))

(assert (not b!5071787))

(assert (not b!5071789))

(assert (not b!5071819))

(assert (not b!5071821))

(assert (not b!5071757))

(assert (not d!1637126))

(assert (not b!5071796))

(assert (not b!5071786))

(assert (not b!5071714))

(assert (not b!5071793))

(assert (not b!5071755))

(assert (not b!5071824))

(assert (not b!5071781))

(assert (not b!5071780))

(assert (not b!5071817))

(assert (not b!5071777))

(assert (not b!5071784))

(assert (not b!5071823))

(assert (not b!5071827))

(assert (not b!5071822))

(assert (not b!5071806))

(assert (not b!5071783))

(assert (not b!5071758))

(assert (not b!5071774))

(assert tp_is_empty!37061)

(assert (not b!5071759))

(assert (not b!5071754))

(assert (not b!5071775))

(assert (not b!5071778))

(assert (not d!1637142))

(assert (not b!5071798))

(assert (not b!5071788))

(assert (not b!5071816))

(assert (not b!5071711))

(assert (not b!5071772))

(assert (not b!5071818))

(assert (not b!5071756))

(assert (not b!5071826))

(assert (not b!5071815))

(assert (not b!5071825))

(assert (not b!5071820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5071890 () Bool)

(declare-fun e!3164617 () Bool)

(declare-fun e!3164618 () Bool)

(assert (=> b!5071890 (= e!3164617 e!3164618)))

(declare-fun res!2159371 () Bool)

(assert (=> b!5071890 (=> (not res!2159371) (not e!3164618))))

(assert (=> b!5071890 (= res!2159371 (<= (- 1) (- (height!2146 (left!42824 (left!42824 ys!41))) (height!2146 (right!43154 (left!42824 ys!41))))))))

(declare-fun b!5071891 () Bool)

(declare-fun res!2159372 () Bool)

(assert (=> b!5071891 (=> (not res!2159372) (not e!3164618))))

(assert (=> b!5071891 (= res!2159372 (isBalanced!4431 (left!42824 (left!42824 ys!41))))))

(declare-fun b!5071892 () Bool)

(declare-fun res!2159375 () Bool)

(assert (=> b!5071892 (=> (not res!2159375) (not e!3164618))))

(assert (=> b!5071892 (= res!2159375 (not (isEmpty!31642 (left!42824 (left!42824 ys!41)))))))

(declare-fun b!5071893 () Bool)

(assert (=> b!5071893 (= e!3164618 (not (isEmpty!31642 (right!43154 (left!42824 ys!41)))))))

(declare-fun b!5071894 () Bool)

(declare-fun res!2159370 () Bool)

(assert (=> b!5071894 (=> (not res!2159370) (not e!3164618))))

(assert (=> b!5071894 (= res!2159370 (<= (- (height!2146 (left!42824 (left!42824 ys!41))) (height!2146 (right!43154 (left!42824 ys!41)))) 1))))

(declare-fun b!5071895 () Bool)

(declare-fun res!2159373 () Bool)

(assert (=> b!5071895 (=> (not res!2159373) (not e!3164618))))

(assert (=> b!5071895 (= res!2159373 (isBalanced!4431 (right!43154 (left!42824 ys!41))))))

(declare-fun d!1637174 () Bool)

(declare-fun res!2159374 () Bool)

(assert (=> d!1637174 (=> res!2159374 e!3164617)))

(assert (=> d!1637174 (= res!2159374 (not (is-Node!15569 (left!42824 ys!41))))))

(assert (=> d!1637174 (= (isBalanced!4431 (left!42824 ys!41)) e!3164617)))

(assert (= (and d!1637174 (not res!2159374)) b!5071890))

(assert (= (and b!5071890 res!2159371) b!5071894))

(assert (= (and b!5071894 res!2159370) b!5071891))

(assert (= (and b!5071891 res!2159372) b!5071895))

(assert (= (and b!5071895 res!2159373) b!5071892))

(assert (= (and b!5071892 res!2159375) b!5071893))

(declare-fun m!6118454 () Bool)

(assert (=> b!5071894 m!6118454))

(declare-fun m!6118456 () Bool)

(assert (=> b!5071894 m!6118456))

(assert (=> b!5071890 m!6118454))

(assert (=> b!5071890 m!6118456))

(declare-fun m!6118458 () Bool)

(assert (=> b!5071892 m!6118458))

(declare-fun m!6118460 () Bool)

(assert (=> b!5071893 m!6118460))

(declare-fun m!6118462 () Bool)

(assert (=> b!5071895 m!6118462))

(declare-fun m!6118464 () Bool)

(assert (=> b!5071891 m!6118464))

(assert (=> b!5071785 d!1637174))

(declare-fun d!1637176 () Bool)

(assert (=> d!1637176 (= (inv!77586 (xs!18927 (right!43154 xs!286))) (<= (size!39086 (innerList!15657 (xs!18927 (right!43154 xs!286)))) 2147483647))))

(declare-fun bs!1190202 () Bool)

(assert (= bs!1190202 d!1637176))

(declare-fun m!6118466 () Bool)

(assert (=> bs!1190202 m!6118466))

(assert (=> b!5071826 d!1637176))

(declare-fun d!1637178 () Bool)

(declare-fun lt!2089676 () Bool)

(declare-fun isEmpty!31644 (List!58563) Bool)

(declare-fun list!19000 (Conc!15569) List!58563)

(assert (=> d!1637178 (= lt!2089676 (isEmpty!31644 (list!19000 (left!42824 ys!41))))))

(declare-fun size!39088 (Conc!15569) Int)

(assert (=> d!1637178 (= lt!2089676 (= (size!39088 (left!42824 ys!41)) 0))))

(assert (=> d!1637178 (= (isEmpty!31642 (left!42824 ys!41)) lt!2089676)))

(declare-fun bs!1190203 () Bool)

(assert (= bs!1190203 d!1637178))

(declare-fun m!6118468 () Bool)

(assert (=> bs!1190203 m!6118468))

(assert (=> bs!1190203 m!6118468))

(declare-fun m!6118470 () Bool)

(assert (=> bs!1190203 m!6118470))

(declare-fun m!6118472 () Bool)

(assert (=> bs!1190203 m!6118472))

(assert (=> b!5071786 d!1637178))

(declare-fun d!1637180 () Bool)

(declare-fun res!2159380 () Bool)

(declare-fun e!3164621 () Bool)

(assert (=> d!1637180 (=> (not res!2159380) (not e!3164621))))

(declare-fun list!19001 (IArray!31199) List!58563)

(assert (=> d!1637180 (= res!2159380 (<= (size!39086 (list!19001 (xs!18927 ys!41))) 512))))

(assert (=> d!1637180 (= (inv!77591 ys!41) e!3164621)))

(declare-fun b!5071900 () Bool)

(declare-fun res!2159381 () Bool)

(assert (=> b!5071900 (=> (not res!2159381) (not e!3164621))))

(assert (=> b!5071900 (= res!2159381 (= (csize!31369 ys!41) (size!39086 (list!19001 (xs!18927 ys!41)))))))

(declare-fun b!5071901 () Bool)

(assert (=> b!5071901 (= e!3164621 (and (> (csize!31369 ys!41) 0) (<= (csize!31369 ys!41) 512)))))

(assert (= (and d!1637180 res!2159380) b!5071900))

(assert (= (and b!5071900 res!2159381) b!5071901))

(declare-fun m!6118474 () Bool)

(assert (=> d!1637180 m!6118474))

(assert (=> d!1637180 m!6118474))

(declare-fun m!6118476 () Bool)

(assert (=> d!1637180 m!6118476))

(assert (=> b!5071900 m!6118474))

(assert (=> b!5071900 m!6118474))

(assert (=> b!5071900 m!6118476))

(assert (=> b!5071777 d!1637180))

(declare-fun d!1637182 () Bool)

(assert (=> d!1637182 (= (height!2146 (left!42824 ys!41)) (ite (is-Empty!15569 (left!42824 ys!41)) 0 (ite (is-Leaf!25859 (left!42824 ys!41)) 1 (cheight!15780 (left!42824 ys!41)))))))

(assert (=> b!5071784 d!1637182))

(declare-fun d!1637184 () Bool)

(assert (=> d!1637184 (= (height!2146 (right!43154 ys!41)) (ite (is-Empty!15569 (right!43154 ys!41)) 0 (ite (is-Leaf!25859 (right!43154 ys!41)) 1 (cheight!15780 (right!43154 ys!41)))))))

(assert (=> b!5071784 d!1637184))

(declare-fun d!1637186 () Bool)

(declare-fun res!2159388 () Bool)

(declare-fun e!3164624 () Bool)

(assert (=> d!1637186 (=> (not res!2159388) (not e!3164624))))

(assert (=> d!1637186 (= res!2159388 (= (csize!31368 ys!41) (+ (size!39088 (left!42824 ys!41)) (size!39088 (right!43154 ys!41)))))))

(assert (=> d!1637186 (= (inv!77590 ys!41) e!3164624)))

(declare-fun b!5071908 () Bool)

(declare-fun res!2159389 () Bool)

(assert (=> b!5071908 (=> (not res!2159389) (not e!3164624))))

(assert (=> b!5071908 (= res!2159389 (and (not (= (left!42824 ys!41) Empty!15569)) (not (= (right!43154 ys!41) Empty!15569))))))

(declare-fun b!5071909 () Bool)

(declare-fun res!2159390 () Bool)

(assert (=> b!5071909 (=> (not res!2159390) (not e!3164624))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5071909 (= res!2159390 (= (cheight!15780 ys!41) (+ (max!0 (height!2146 (left!42824 ys!41)) (height!2146 (right!43154 ys!41))) 1)))))

(declare-fun b!5071910 () Bool)

(assert (=> b!5071910 (= e!3164624 (<= 0 (cheight!15780 ys!41)))))

(assert (= (and d!1637186 res!2159388) b!5071908))

(assert (= (and b!5071908 res!2159389) b!5071909))

(assert (= (and b!5071909 res!2159390) b!5071910))

(assert (=> d!1637186 m!6118472))

(declare-fun m!6118478 () Bool)

(assert (=> d!1637186 m!6118478))

(assert (=> b!5071909 m!6118332))

(assert (=> b!5071909 m!6118334))

(assert (=> b!5071909 m!6118332))

(assert (=> b!5071909 m!6118334))

(declare-fun m!6118480 () Bool)

(assert (=> b!5071909 m!6118480))

(assert (=> b!5071775 d!1637186))

(declare-fun d!1637188 () Bool)

(declare-fun c!870874 () Bool)

(assert (=> d!1637188 (= c!870874 (is-Node!15569 (left!42824 (right!43154 xs!286))))))

(declare-fun e!3164625 () Bool)

(assert (=> d!1637188 (= (inv!77587 (left!42824 (right!43154 xs!286))) e!3164625)))

(declare-fun b!5071911 () Bool)

(assert (=> b!5071911 (= e!3164625 (inv!77590 (left!42824 (right!43154 xs!286))))))

(declare-fun b!5071912 () Bool)

(declare-fun e!3164626 () Bool)

(assert (=> b!5071912 (= e!3164625 e!3164626)))

(declare-fun res!2159391 () Bool)

(assert (=> b!5071912 (= res!2159391 (not (is-Leaf!25859 (left!42824 (right!43154 xs!286)))))))

(assert (=> b!5071912 (=> res!2159391 e!3164626)))

(declare-fun b!5071913 () Bool)

(assert (=> b!5071913 (= e!3164626 (inv!77591 (left!42824 (right!43154 xs!286))))))

(assert (= (and d!1637188 c!870874) b!5071911))

(assert (= (and d!1637188 (not c!870874)) b!5071912))

(assert (= (and b!5071912 (not res!2159391)) b!5071913))

(declare-fun m!6118482 () Bool)

(assert (=> b!5071911 m!6118482))

(declare-fun m!6118484 () Bool)

(assert (=> b!5071913 m!6118484))

(assert (=> b!5071825 d!1637188))

(declare-fun d!1637190 () Bool)

(declare-fun c!870875 () Bool)

(assert (=> d!1637190 (= c!870875 (is-Node!15569 (right!43154 (right!43154 xs!286))))))

(declare-fun e!3164627 () Bool)

(assert (=> d!1637190 (= (inv!77587 (right!43154 (right!43154 xs!286))) e!3164627)))

(declare-fun b!5071914 () Bool)

(assert (=> b!5071914 (= e!3164627 (inv!77590 (right!43154 (right!43154 xs!286))))))

(declare-fun b!5071915 () Bool)

(declare-fun e!3164628 () Bool)

(assert (=> b!5071915 (= e!3164627 e!3164628)))

(declare-fun res!2159392 () Bool)

(assert (=> b!5071915 (= res!2159392 (not (is-Leaf!25859 (right!43154 (right!43154 xs!286)))))))

(assert (=> b!5071915 (=> res!2159392 e!3164628)))

(declare-fun b!5071916 () Bool)

(assert (=> b!5071916 (= e!3164628 (inv!77591 (right!43154 (right!43154 xs!286))))))

(assert (= (and d!1637190 c!870875) b!5071914))

(assert (= (and d!1637190 (not c!870875)) b!5071915))

(assert (= (and b!5071915 (not res!2159392)) b!5071916))

(declare-fun m!6118486 () Bool)

(assert (=> b!5071914 m!6118486))

(declare-fun m!6118488 () Bool)

(assert (=> b!5071916 m!6118488))

(assert (=> b!5071825 d!1637190))

(declare-fun d!1637192 () Bool)

(declare-fun res!2159393 () Bool)

(declare-fun e!3164629 () Bool)

(assert (=> d!1637192 (=> (not res!2159393) (not e!3164629))))

(assert (=> d!1637192 (= res!2159393 (= (csize!31368 (left!42824 xs!286)) (+ (size!39088 (left!42824 (left!42824 xs!286))) (size!39088 (right!43154 (left!42824 xs!286))))))))

(assert (=> d!1637192 (= (inv!77590 (left!42824 xs!286)) e!3164629)))

(declare-fun b!5071917 () Bool)

(declare-fun res!2159394 () Bool)

(assert (=> b!5071917 (=> (not res!2159394) (not e!3164629))))

(assert (=> b!5071917 (= res!2159394 (and (not (= (left!42824 (left!42824 xs!286)) Empty!15569)) (not (= (right!43154 (left!42824 xs!286)) Empty!15569))))))

(declare-fun b!5071918 () Bool)

(declare-fun res!2159395 () Bool)

(assert (=> b!5071918 (=> (not res!2159395) (not e!3164629))))

(assert (=> b!5071918 (= res!2159395 (= (cheight!15780 (left!42824 xs!286)) (+ (max!0 (height!2146 (left!42824 (left!42824 xs!286))) (height!2146 (right!43154 (left!42824 xs!286)))) 1)))))

(declare-fun b!5071919 () Bool)

(assert (=> b!5071919 (= e!3164629 (<= 0 (cheight!15780 (left!42824 xs!286))))))

(assert (= (and d!1637192 res!2159393) b!5071917))

(assert (= (and b!5071917 res!2159394) b!5071918))

(assert (= (and b!5071918 res!2159395) b!5071919))

(declare-fun m!6118490 () Bool)

(assert (=> d!1637192 m!6118490))

(declare-fun m!6118492 () Bool)

(assert (=> d!1637192 m!6118492))

(declare-fun m!6118494 () Bool)

(assert (=> b!5071918 m!6118494))

(declare-fun m!6118496 () Bool)

(assert (=> b!5071918 m!6118496))

(assert (=> b!5071918 m!6118494))

(assert (=> b!5071918 m!6118496))

(declare-fun m!6118498 () Bool)

(assert (=> b!5071918 m!6118498))

(assert (=> b!5071793 d!1637192))

(assert (=> b!5071711 d!1637136))

(assert (=> b!5071711 d!1637138))

(assert (=> b!5071788 d!1637182))

(assert (=> b!5071788 d!1637184))

(declare-fun d!1637194 () Bool)

(declare-fun res!2159396 () Bool)

(declare-fun e!3164630 () Bool)

(assert (=> d!1637194 (=> (not res!2159396) (not e!3164630))))

(assert (=> d!1637194 (= res!2159396 (= (csize!31368 (right!43154 ys!41)) (+ (size!39088 (left!42824 (right!43154 ys!41))) (size!39088 (right!43154 (right!43154 ys!41))))))))

(assert (=> d!1637194 (= (inv!77590 (right!43154 ys!41)) e!3164630)))

(declare-fun b!5071920 () Bool)

(declare-fun res!2159397 () Bool)

(assert (=> b!5071920 (=> (not res!2159397) (not e!3164630))))

(assert (=> b!5071920 (= res!2159397 (and (not (= (left!42824 (right!43154 ys!41)) Empty!15569)) (not (= (right!43154 (right!43154 ys!41)) Empty!15569))))))

(declare-fun b!5071921 () Bool)

(declare-fun res!2159398 () Bool)

(assert (=> b!5071921 (=> (not res!2159398) (not e!3164630))))

(assert (=> b!5071921 (= res!2159398 (= (cheight!15780 (right!43154 ys!41)) (+ (max!0 (height!2146 (left!42824 (right!43154 ys!41))) (height!2146 (right!43154 (right!43154 ys!41)))) 1)))))

(declare-fun b!5071922 () Bool)

(assert (=> b!5071922 (= e!3164630 (<= 0 (cheight!15780 (right!43154 ys!41))))))

(assert (= (and d!1637194 res!2159396) b!5071920))

(assert (= (and b!5071920 res!2159397) b!5071921))

(assert (= (and b!5071921 res!2159398) b!5071922))

(declare-fun m!6118500 () Bool)

(assert (=> d!1637194 m!6118500))

(declare-fun m!6118502 () Bool)

(assert (=> d!1637194 m!6118502))

(declare-fun m!6118504 () Bool)

(assert (=> b!5071921 m!6118504))

(declare-fun m!6118506 () Bool)

(assert (=> b!5071921 m!6118506))

(assert (=> b!5071921 m!6118504))

(assert (=> b!5071921 m!6118506))

(declare-fun m!6118508 () Bool)

(assert (=> b!5071921 m!6118508))

(assert (=> b!5071781 d!1637194))

(declare-fun d!1637196 () Bool)

(declare-fun res!2159399 () Bool)

(declare-fun e!3164631 () Bool)

(assert (=> d!1637196 (=> (not res!2159399) (not e!3164631))))

(assert (=> d!1637196 (= res!2159399 (<= (size!39086 (list!19001 (xs!18927 (left!42824 xs!286)))) 512))))

(assert (=> d!1637196 (= (inv!77591 (left!42824 xs!286)) e!3164631)))

(declare-fun b!5071923 () Bool)

(declare-fun res!2159400 () Bool)

(assert (=> b!5071923 (=> (not res!2159400) (not e!3164631))))

(assert (=> b!5071923 (= res!2159400 (= (csize!31369 (left!42824 xs!286)) (size!39086 (list!19001 (xs!18927 (left!42824 xs!286))))))))

(declare-fun b!5071924 () Bool)

(assert (=> b!5071924 (= e!3164631 (and (> (csize!31369 (left!42824 xs!286)) 0) (<= (csize!31369 (left!42824 xs!286)) 512)))))

(assert (= (and d!1637196 res!2159399) b!5071923))

(assert (= (and b!5071923 res!2159400) b!5071924))

(declare-fun m!6118510 () Bool)

(assert (=> d!1637196 m!6118510))

(assert (=> d!1637196 m!6118510))

(declare-fun m!6118512 () Bool)

(assert (=> d!1637196 m!6118512))

(assert (=> b!5071923 m!6118510))

(assert (=> b!5071923 m!6118510))

(assert (=> b!5071923 m!6118512))

(assert (=> b!5071795 d!1637196))

(assert (=> b!5071714 d!1637148))

(assert (=> b!5071714 d!1637150))

(declare-fun d!1637198 () Bool)

(declare-fun lt!2089677 () Bool)

(assert (=> d!1637198 (= lt!2089677 (isEmpty!31644 (list!19000 (right!43154 ys!41))))))

(assert (=> d!1637198 (= lt!2089677 (= (size!39088 (right!43154 ys!41)) 0))))

(assert (=> d!1637198 (= (isEmpty!31642 (right!43154 ys!41)) lt!2089677)))

(declare-fun bs!1190204 () Bool)

(assert (= bs!1190204 d!1637198))

(declare-fun m!6118514 () Bool)

(assert (=> bs!1190204 m!6118514))

(assert (=> bs!1190204 m!6118514))

(declare-fun m!6118516 () Bool)

(assert (=> bs!1190204 m!6118516))

(assert (=> bs!1190204 m!6118478))

(assert (=> b!5071787 d!1637198))

(declare-fun d!1637200 () Bool)

(declare-fun lt!2089680 () Int)

(assert (=> d!1637200 (>= lt!2089680 0)))

(declare-fun e!3164634 () Int)

(assert (=> d!1637200 (= lt!2089680 e!3164634)))

(declare-fun c!870878 () Bool)

(assert (=> d!1637200 (= c!870878 (is-Nil!58439 (innerList!15657 (xs!18927 ys!41))))))

(assert (=> d!1637200 (= (size!39086 (innerList!15657 (xs!18927 ys!41))) lt!2089680)))

(declare-fun b!5071929 () Bool)

(assert (=> b!5071929 (= e!3164634 0)))

(declare-fun b!5071930 () Bool)

(assert (=> b!5071930 (= e!3164634 (+ 1 (size!39086 (t!371326 (innerList!15657 (xs!18927 ys!41))))))))

(assert (= (and d!1637200 c!870878) b!5071929))

(assert (= (and d!1637200 (not c!870878)) b!5071930))

(declare-fun m!6118518 () Bool)

(assert (=> b!5071930 m!6118518))

(assert (=> d!1637126 d!1637200))

(declare-fun d!1637202 () Bool)

(declare-fun res!2159401 () Bool)

(declare-fun e!3164635 () Bool)

(assert (=> d!1637202 (=> (not res!2159401) (not e!3164635))))

(assert (=> d!1637202 (= res!2159401 (<= (size!39086 (list!19001 (xs!18927 (right!43154 ys!41)))) 512))))

(assert (=> d!1637202 (= (inv!77591 (right!43154 ys!41)) e!3164635)))

(declare-fun b!5071931 () Bool)

(declare-fun res!2159402 () Bool)

(assert (=> b!5071931 (=> (not res!2159402) (not e!3164635))))

(assert (=> b!5071931 (= res!2159402 (= (csize!31369 (right!43154 ys!41)) (size!39086 (list!19001 (xs!18927 (right!43154 ys!41))))))))

(declare-fun b!5071932 () Bool)

(assert (=> b!5071932 (= e!3164635 (and (> (csize!31369 (right!43154 ys!41)) 0) (<= (csize!31369 (right!43154 ys!41)) 512)))))

(assert (= (and d!1637202 res!2159401) b!5071931))

(assert (= (and b!5071931 res!2159402) b!5071932))

(declare-fun m!6118520 () Bool)

(assert (=> d!1637202 m!6118520))

(assert (=> d!1637202 m!6118520))

(declare-fun m!6118522 () Bool)

(assert (=> d!1637202 m!6118522))

(assert (=> b!5071931 m!6118520))

(assert (=> b!5071931 m!6118520))

(assert (=> b!5071931 m!6118522))

(assert (=> b!5071783 d!1637202))

(declare-fun b!5071933 () Bool)

(declare-fun e!3164636 () Bool)

(declare-fun e!3164637 () Bool)

(assert (=> b!5071933 (= e!3164636 e!3164637)))

(declare-fun res!2159404 () Bool)

(assert (=> b!5071933 (=> (not res!2159404) (not e!3164637))))

(assert (=> b!5071933 (= res!2159404 (<= (- 1) (- (height!2146 (left!42824 (right!43154 ys!41))) (height!2146 (right!43154 (right!43154 ys!41))))))))

(declare-fun b!5071934 () Bool)

(declare-fun res!2159405 () Bool)

(assert (=> b!5071934 (=> (not res!2159405) (not e!3164637))))

(assert (=> b!5071934 (= res!2159405 (isBalanced!4431 (left!42824 (right!43154 ys!41))))))

(declare-fun b!5071935 () Bool)

(declare-fun res!2159408 () Bool)

(assert (=> b!5071935 (=> (not res!2159408) (not e!3164637))))

(assert (=> b!5071935 (= res!2159408 (not (isEmpty!31642 (left!42824 (right!43154 ys!41)))))))

(declare-fun b!5071936 () Bool)

(assert (=> b!5071936 (= e!3164637 (not (isEmpty!31642 (right!43154 (right!43154 ys!41)))))))

(declare-fun b!5071937 () Bool)

(declare-fun res!2159403 () Bool)

(assert (=> b!5071937 (=> (not res!2159403) (not e!3164637))))

(assert (=> b!5071937 (= res!2159403 (<= (- (height!2146 (left!42824 (right!43154 ys!41))) (height!2146 (right!43154 (right!43154 ys!41)))) 1))))

(declare-fun b!5071938 () Bool)

(declare-fun res!2159406 () Bool)

(assert (=> b!5071938 (=> (not res!2159406) (not e!3164637))))

(assert (=> b!5071938 (= res!2159406 (isBalanced!4431 (right!43154 (right!43154 ys!41))))))

(declare-fun d!1637204 () Bool)

(declare-fun res!2159407 () Bool)

(assert (=> d!1637204 (=> res!2159407 e!3164636)))

(assert (=> d!1637204 (= res!2159407 (not (is-Node!15569 (right!43154 ys!41))))))

(assert (=> d!1637204 (= (isBalanced!4431 (right!43154 ys!41)) e!3164636)))

(assert (= (and d!1637204 (not res!2159407)) b!5071933))

(assert (= (and b!5071933 res!2159404) b!5071937))

(assert (= (and b!5071937 res!2159403) b!5071934))

(assert (= (and b!5071934 res!2159405) b!5071938))

(assert (= (and b!5071938 res!2159406) b!5071935))

(assert (= (and b!5071935 res!2159408) b!5071936))

(assert (=> b!5071937 m!6118504))

(assert (=> b!5071937 m!6118506))

(assert (=> b!5071933 m!6118504))

(assert (=> b!5071933 m!6118506))

(declare-fun m!6118524 () Bool)

(assert (=> b!5071935 m!6118524))

(declare-fun m!6118526 () Bool)

(assert (=> b!5071936 m!6118526))

(declare-fun m!6118528 () Bool)

(assert (=> b!5071938 m!6118528))

(declare-fun m!6118530 () Bool)

(assert (=> b!5071934 m!6118530))

(assert (=> b!5071789 d!1637204))

(declare-fun d!1637206 () Bool)

(declare-fun res!2159409 () Bool)

(declare-fun e!3164638 () Bool)

(assert (=> d!1637206 (=> (not res!2159409) (not e!3164638))))

(assert (=> d!1637206 (= res!2159409 (<= (size!39086 (list!19001 (xs!18927 xs!286))) 512))))

(assert (=> d!1637206 (= (inv!77591 xs!286) e!3164638)))

(declare-fun b!5071939 () Bool)

(declare-fun res!2159410 () Bool)

(assert (=> b!5071939 (=> (not res!2159410) (not e!3164638))))

(assert (=> b!5071939 (= res!2159410 (= (csize!31369 xs!286) (size!39086 (list!19001 (xs!18927 xs!286)))))))

(declare-fun b!5071940 () Bool)

(assert (=> b!5071940 (= e!3164638 (and (> (csize!31369 xs!286) 0) (<= (csize!31369 xs!286) 512)))))

(assert (= (and d!1637206 res!2159409) b!5071939))

(assert (= (and b!5071939 res!2159410) b!5071940))

(declare-fun m!6118532 () Bool)

(assert (=> d!1637206 m!6118532))

(assert (=> d!1637206 m!6118532))

(declare-fun m!6118534 () Bool)

(assert (=> d!1637206 m!6118534))

(assert (=> b!5071939 m!6118532))

(assert (=> b!5071939 m!6118532))

(assert (=> b!5071939 m!6118534))

(assert (=> b!5071774 d!1637206))

(declare-fun d!1637208 () Bool)

(declare-fun res!2159411 () Bool)

(declare-fun e!3164639 () Bool)

(assert (=> d!1637208 (=> (not res!2159411) (not e!3164639))))

(assert (=> d!1637208 (= res!2159411 (= (csize!31368 xs!286) (+ (size!39088 (left!42824 xs!286)) (size!39088 (right!43154 xs!286)))))))

(assert (=> d!1637208 (= (inv!77590 xs!286) e!3164639)))

(declare-fun b!5071941 () Bool)

(declare-fun res!2159412 () Bool)

(assert (=> b!5071941 (=> (not res!2159412) (not e!3164639))))

(assert (=> b!5071941 (= res!2159412 (and (not (= (left!42824 xs!286) Empty!15569)) (not (= (right!43154 xs!286) Empty!15569))))))

(declare-fun b!5071942 () Bool)

(declare-fun res!2159413 () Bool)

(assert (=> b!5071942 (=> (not res!2159413) (not e!3164639))))

(assert (=> b!5071942 (= res!2159413 (= (cheight!15780 xs!286) (+ (max!0 (height!2146 (left!42824 xs!286)) (height!2146 (right!43154 xs!286))) 1)))))

(declare-fun b!5071943 () Bool)

(assert (=> b!5071943 (= e!3164639 (<= 0 (cheight!15780 xs!286)))))

(assert (= (and d!1637208 res!2159411) b!5071941))

(assert (= (and b!5071941 res!2159412) b!5071942))

(assert (= (and b!5071942 res!2159413) b!5071943))

(declare-fun m!6118536 () Bool)

(assert (=> d!1637208 m!6118536))

(declare-fun m!6118538 () Bool)

(assert (=> d!1637208 m!6118538))

(assert (=> b!5071942 m!6118304))

(assert (=> b!5071942 m!6118306))

(assert (=> b!5071942 m!6118304))

(assert (=> b!5071942 m!6118306))

(declare-fun m!6118540 () Bool)

(assert (=> b!5071942 m!6118540))

(assert (=> b!5071772 d!1637208))

(declare-fun d!1637210 () Bool)

(declare-fun c!870879 () Bool)

(assert (=> d!1637210 (= c!870879 (is-Node!15569 (left!42824 (left!42824 xs!286))))))

(declare-fun e!3164640 () Bool)

(assert (=> d!1637210 (= (inv!77587 (left!42824 (left!42824 xs!286))) e!3164640)))

(declare-fun b!5071944 () Bool)

(assert (=> b!5071944 (= e!3164640 (inv!77590 (left!42824 (left!42824 xs!286))))))

(declare-fun b!5071945 () Bool)

(declare-fun e!3164641 () Bool)

(assert (=> b!5071945 (= e!3164640 e!3164641)))

(declare-fun res!2159414 () Bool)

(assert (=> b!5071945 (= res!2159414 (not (is-Leaf!25859 (left!42824 (left!42824 xs!286)))))))

(assert (=> b!5071945 (=> res!2159414 e!3164641)))

(declare-fun b!5071946 () Bool)

(assert (=> b!5071946 (= e!3164641 (inv!77591 (left!42824 (left!42824 xs!286))))))

(assert (= (and d!1637210 c!870879) b!5071944))

(assert (= (and d!1637210 (not c!870879)) b!5071945))

(assert (= (and b!5071945 (not res!2159414)) b!5071946))

(declare-fun m!6118542 () Bool)

(assert (=> b!5071944 m!6118542))

(declare-fun m!6118544 () Bool)

(assert (=> b!5071946 m!6118544))

(assert (=> b!5071822 d!1637210))

(declare-fun d!1637212 () Bool)

(declare-fun c!870880 () Bool)

(assert (=> d!1637212 (= c!870880 (is-Node!15569 (right!43154 (left!42824 xs!286))))))

(declare-fun e!3164642 () Bool)

(assert (=> d!1637212 (= (inv!77587 (right!43154 (left!42824 xs!286))) e!3164642)))

(declare-fun b!5071947 () Bool)

(assert (=> b!5071947 (= e!3164642 (inv!77590 (right!43154 (left!42824 xs!286))))))

(declare-fun b!5071948 () Bool)

(declare-fun e!3164643 () Bool)

(assert (=> b!5071948 (= e!3164642 e!3164643)))

(declare-fun res!2159415 () Bool)

(assert (=> b!5071948 (= res!2159415 (not (is-Leaf!25859 (right!43154 (left!42824 xs!286)))))))

(assert (=> b!5071948 (=> res!2159415 e!3164643)))

(declare-fun b!5071949 () Bool)

(assert (=> b!5071949 (= e!3164643 (inv!77591 (right!43154 (left!42824 xs!286))))))

(assert (= (and d!1637212 c!870880) b!5071947))

(assert (= (and d!1637212 (not c!870880)) b!5071948))

(assert (= (and b!5071948 (not res!2159415)) b!5071949))

(declare-fun m!6118546 () Bool)

(assert (=> b!5071947 m!6118546))

(declare-fun m!6118548 () Bool)

(assert (=> b!5071949 m!6118548))

(assert (=> b!5071822 d!1637212))

(declare-fun d!1637214 () Bool)

(assert (=> d!1637214 (= (inv!77586 (xs!18927 (left!42824 xs!286))) (<= (size!39086 (innerList!15657 (xs!18927 (left!42824 xs!286)))) 2147483647))))

(declare-fun bs!1190205 () Bool)

(assert (= bs!1190205 d!1637214))

(declare-fun m!6118550 () Bool)

(assert (=> bs!1190205 m!6118550))

(assert (=> b!5071823 d!1637214))

(declare-fun d!1637216 () Bool)

(declare-fun c!870881 () Bool)

(assert (=> d!1637216 (= c!870881 (is-Node!15569 (left!42824 (right!43154 ys!41))))))

(declare-fun e!3164644 () Bool)

(assert (=> d!1637216 (= (inv!77587 (left!42824 (right!43154 ys!41))) e!3164644)))

(declare-fun b!5071950 () Bool)

(assert (=> b!5071950 (= e!3164644 (inv!77590 (left!42824 (right!43154 ys!41))))))

(declare-fun b!5071951 () Bool)

(declare-fun e!3164645 () Bool)

(assert (=> b!5071951 (= e!3164644 e!3164645)))

(declare-fun res!2159416 () Bool)

(assert (=> b!5071951 (= res!2159416 (not (is-Leaf!25859 (left!42824 (right!43154 ys!41)))))))

(assert (=> b!5071951 (=> res!2159416 e!3164645)))

(declare-fun b!5071952 () Bool)

(assert (=> b!5071952 (= e!3164645 (inv!77591 (left!42824 (right!43154 ys!41))))))

(assert (= (and d!1637216 c!870881) b!5071950))

(assert (= (and d!1637216 (not c!870881)) b!5071951))

(assert (= (and b!5071951 (not res!2159416)) b!5071952))

(declare-fun m!6118552 () Bool)

(assert (=> b!5071950 m!6118552))

(declare-fun m!6118554 () Bool)

(assert (=> b!5071952 m!6118554))

(assert (=> b!5071818 d!1637216))

(declare-fun d!1637218 () Bool)

(declare-fun c!870882 () Bool)

(assert (=> d!1637218 (= c!870882 (is-Node!15569 (right!43154 (right!43154 ys!41))))))

(declare-fun e!3164646 () Bool)

(assert (=> d!1637218 (= (inv!77587 (right!43154 (right!43154 ys!41))) e!3164646)))

(declare-fun b!5071953 () Bool)

(assert (=> b!5071953 (= e!3164646 (inv!77590 (right!43154 (right!43154 ys!41))))))

(declare-fun b!5071954 () Bool)

(declare-fun e!3164647 () Bool)

(assert (=> b!5071954 (= e!3164646 e!3164647)))

(declare-fun res!2159417 () Bool)

(assert (=> b!5071954 (= res!2159417 (not (is-Leaf!25859 (right!43154 (right!43154 ys!41)))))))

(assert (=> b!5071954 (=> res!2159417 e!3164647)))

(declare-fun b!5071955 () Bool)

(assert (=> b!5071955 (= e!3164647 (inv!77591 (right!43154 (right!43154 ys!41))))))

(assert (= (and d!1637218 c!870882) b!5071953))

(assert (= (and d!1637218 (not c!870882)) b!5071954))

(assert (= (and b!5071954 (not res!2159417)) b!5071955))

(declare-fun m!6118556 () Bool)

(assert (=> b!5071953 m!6118556))

(declare-fun m!6118558 () Bool)

(assert (=> b!5071955 m!6118558))

(assert (=> b!5071818 d!1637218))

(declare-fun d!1637220 () Bool)

(declare-fun res!2159418 () Bool)

(declare-fun e!3164648 () Bool)

(assert (=> d!1637220 (=> (not res!2159418) (not e!3164648))))

(assert (=> d!1637220 (= res!2159418 (= (csize!31368 (left!42824 ys!41)) (+ (size!39088 (left!42824 (left!42824 ys!41))) (size!39088 (right!43154 (left!42824 ys!41))))))))

(assert (=> d!1637220 (= (inv!77590 (left!42824 ys!41)) e!3164648)))

(declare-fun b!5071956 () Bool)

(declare-fun res!2159419 () Bool)

(assert (=> b!5071956 (=> (not res!2159419) (not e!3164648))))

(assert (=> b!5071956 (= res!2159419 (and (not (= (left!42824 (left!42824 ys!41)) Empty!15569)) (not (= (right!43154 (left!42824 ys!41)) Empty!15569))))))

(declare-fun b!5071957 () Bool)

(declare-fun res!2159420 () Bool)

(assert (=> b!5071957 (=> (not res!2159420) (not e!3164648))))

(assert (=> b!5071957 (= res!2159420 (= (cheight!15780 (left!42824 ys!41)) (+ (max!0 (height!2146 (left!42824 (left!42824 ys!41))) (height!2146 (right!43154 (left!42824 ys!41)))) 1)))))

(declare-fun b!5071958 () Bool)

(assert (=> b!5071958 (= e!3164648 (<= 0 (cheight!15780 (left!42824 ys!41))))))

(assert (= (and d!1637220 res!2159418) b!5071956))

(assert (= (and b!5071956 res!2159419) b!5071957))

(assert (= (and b!5071957 res!2159420) b!5071958))

(declare-fun m!6118560 () Bool)

(assert (=> d!1637220 m!6118560))

(declare-fun m!6118562 () Bool)

(assert (=> d!1637220 m!6118562))

(assert (=> b!5071957 m!6118454))

(assert (=> b!5071957 m!6118456))

(assert (=> b!5071957 m!6118454))

(assert (=> b!5071957 m!6118456))

(declare-fun m!6118564 () Bool)

(assert (=> b!5071957 m!6118564))

(assert (=> b!5071778 d!1637220))

(declare-fun d!1637222 () Bool)

(declare-fun res!2159421 () Bool)

(declare-fun e!3164649 () Bool)

(assert (=> d!1637222 (=> (not res!2159421) (not e!3164649))))

(assert (=> d!1637222 (= res!2159421 (<= (size!39086 (list!19001 (xs!18927 (left!42824 ys!41)))) 512))))

(assert (=> d!1637222 (= (inv!77591 (left!42824 ys!41)) e!3164649)))

(declare-fun b!5071959 () Bool)

(declare-fun res!2159422 () Bool)

(assert (=> b!5071959 (=> (not res!2159422) (not e!3164649))))

(assert (=> b!5071959 (= res!2159422 (= (csize!31369 (left!42824 ys!41)) (size!39086 (list!19001 (xs!18927 (left!42824 ys!41))))))))

(declare-fun b!5071960 () Bool)

(assert (=> b!5071960 (= e!3164649 (and (> (csize!31369 (left!42824 ys!41)) 0) (<= (csize!31369 (left!42824 ys!41)) 512)))))

(assert (= (and d!1637222 res!2159421) b!5071959))

(assert (= (and b!5071959 res!2159422) b!5071960))

(declare-fun m!6118566 () Bool)

(assert (=> d!1637222 m!6118566))

(assert (=> d!1637222 m!6118566))

(declare-fun m!6118568 () Bool)

(assert (=> d!1637222 m!6118568))

(assert (=> b!5071959 m!6118566))

(assert (=> b!5071959 m!6118566))

(assert (=> b!5071959 m!6118568))

(assert (=> b!5071780 d!1637222))

(declare-fun d!1637224 () Bool)

(declare-fun res!2159423 () Bool)

(declare-fun e!3164650 () Bool)

(assert (=> d!1637224 (=> (not res!2159423) (not e!3164650))))

(assert (=> d!1637224 (= res!2159423 (<= (size!39086 (list!19001 (xs!18927 (right!43154 xs!286)))) 512))))

(assert (=> d!1637224 (= (inv!77591 (right!43154 xs!286)) e!3164650)))

(declare-fun b!5071961 () Bool)

(declare-fun res!2159424 () Bool)

(assert (=> b!5071961 (=> (not res!2159424) (not e!3164650))))

(assert (=> b!5071961 (= res!2159424 (= (csize!31369 (right!43154 xs!286)) (size!39086 (list!19001 (xs!18927 (right!43154 xs!286))))))))

(declare-fun b!5071962 () Bool)

(assert (=> b!5071962 (= e!3164650 (and (> (csize!31369 (right!43154 xs!286)) 0) (<= (csize!31369 (right!43154 xs!286)) 512)))))

(assert (= (and d!1637224 res!2159423) b!5071961))

(assert (= (and b!5071961 res!2159424) b!5071962))

(declare-fun m!6118570 () Bool)

(assert (=> d!1637224 m!6118570))

(assert (=> d!1637224 m!6118570))

(declare-fun m!6118572 () Bool)

(assert (=> d!1637224 m!6118572))

(assert (=> b!5071961 m!6118570))

(assert (=> b!5071961 m!6118570))

(assert (=> b!5071961 m!6118572))

(assert (=> b!5071798 d!1637224))

(declare-fun b!5071963 () Bool)

(declare-fun e!3164651 () Bool)

(declare-fun e!3164652 () Bool)

(assert (=> b!5071963 (= e!3164651 e!3164652)))

(declare-fun res!2159426 () Bool)

(assert (=> b!5071963 (=> (not res!2159426) (not e!3164652))))

(assert (=> b!5071963 (= res!2159426 (<= (- 1) (- (height!2146 (left!42824 (left!42824 xs!286))) (height!2146 (right!43154 (left!42824 xs!286))))))))

(declare-fun b!5071964 () Bool)

(declare-fun res!2159427 () Bool)

(assert (=> b!5071964 (=> (not res!2159427) (not e!3164652))))

(assert (=> b!5071964 (= res!2159427 (isBalanced!4431 (left!42824 (left!42824 xs!286))))))

(declare-fun b!5071965 () Bool)

(declare-fun res!2159430 () Bool)

(assert (=> b!5071965 (=> (not res!2159430) (not e!3164652))))

(assert (=> b!5071965 (= res!2159430 (not (isEmpty!31642 (left!42824 (left!42824 xs!286)))))))

(declare-fun b!5071966 () Bool)

(assert (=> b!5071966 (= e!3164652 (not (isEmpty!31642 (right!43154 (left!42824 xs!286)))))))

(declare-fun b!5071967 () Bool)

(declare-fun res!2159425 () Bool)

(assert (=> b!5071967 (=> (not res!2159425) (not e!3164652))))

(assert (=> b!5071967 (= res!2159425 (<= (- (height!2146 (left!42824 (left!42824 xs!286))) (height!2146 (right!43154 (left!42824 xs!286)))) 1))))

(declare-fun b!5071968 () Bool)

(declare-fun res!2159428 () Bool)

(assert (=> b!5071968 (=> (not res!2159428) (not e!3164652))))

(assert (=> b!5071968 (= res!2159428 (isBalanced!4431 (right!43154 (left!42824 xs!286))))))

(declare-fun d!1637226 () Bool)

(declare-fun res!2159429 () Bool)

(assert (=> d!1637226 (=> res!2159429 e!3164651)))

(assert (=> d!1637226 (= res!2159429 (not (is-Node!15569 (left!42824 xs!286))))))

(assert (=> d!1637226 (= (isBalanced!4431 (left!42824 xs!286)) e!3164651)))

(assert (= (and d!1637226 (not res!2159429)) b!5071963))

(assert (= (and b!5071963 res!2159426) b!5071967))

(assert (= (and b!5071967 res!2159425) b!5071964))

(assert (= (and b!5071964 res!2159427) b!5071968))

(assert (= (and b!5071968 res!2159428) b!5071965))

(assert (= (and b!5071965 res!2159430) b!5071966))

(assert (=> b!5071967 m!6118494))

(assert (=> b!5071967 m!6118496))

(assert (=> b!5071963 m!6118494))

(assert (=> b!5071963 m!6118496))

(declare-fun m!6118574 () Bool)

(assert (=> b!5071965 m!6118574))

(declare-fun m!6118576 () Bool)

(assert (=> b!5071966 m!6118576))

(declare-fun m!6118578 () Bool)

(assert (=> b!5071968 m!6118578))

(declare-fun m!6118580 () Bool)

(assert (=> b!5071964 m!6118580))

(assert (=> b!5071755 d!1637226))

(declare-fun d!1637228 () Bool)

(declare-fun res!2159431 () Bool)

(declare-fun e!3164653 () Bool)

(assert (=> d!1637228 (=> (not res!2159431) (not e!3164653))))

(assert (=> d!1637228 (= res!2159431 (= (csize!31368 (right!43154 xs!286)) (+ (size!39088 (left!42824 (right!43154 xs!286))) (size!39088 (right!43154 (right!43154 xs!286))))))))

(assert (=> d!1637228 (= (inv!77590 (right!43154 xs!286)) e!3164653)))

(declare-fun b!5071969 () Bool)

(declare-fun res!2159432 () Bool)

(assert (=> b!5071969 (=> (not res!2159432) (not e!3164653))))

(assert (=> b!5071969 (= res!2159432 (and (not (= (left!42824 (right!43154 xs!286)) Empty!15569)) (not (= (right!43154 (right!43154 xs!286)) Empty!15569))))))

(declare-fun b!5071970 () Bool)

(declare-fun res!2159433 () Bool)

(assert (=> b!5071970 (=> (not res!2159433) (not e!3164653))))

(assert (=> b!5071970 (= res!2159433 (= (cheight!15780 (right!43154 xs!286)) (+ (max!0 (height!2146 (left!42824 (right!43154 xs!286))) (height!2146 (right!43154 (right!43154 xs!286)))) 1)))))

(declare-fun b!5071971 () Bool)

(assert (=> b!5071971 (= e!3164653 (<= 0 (cheight!15780 (right!43154 xs!286))))))

(assert (= (and d!1637228 res!2159431) b!5071969))

(assert (= (and b!5071969 res!2159432) b!5071970))

(assert (= (and b!5071970 res!2159433) b!5071971))

(declare-fun m!6118582 () Bool)

(assert (=> d!1637228 m!6118582))

(declare-fun m!6118584 () Bool)

(assert (=> d!1637228 m!6118584))

(declare-fun m!6118586 () Bool)

(assert (=> b!5071970 m!6118586))

(declare-fun m!6118588 () Bool)

(assert (=> b!5071970 m!6118588))

(assert (=> b!5071970 m!6118586))

(assert (=> b!5071970 m!6118588))

(declare-fun m!6118590 () Bool)

(assert (=> b!5071970 m!6118590))

(assert (=> b!5071796 d!1637228))

(declare-fun d!1637230 () Bool)

(assert (=> d!1637230 (= (inv!77586 (xs!18927 (right!43154 ys!41))) (<= (size!39086 (innerList!15657 (xs!18927 (right!43154 ys!41)))) 2147483647))))

(declare-fun bs!1190206 () Bool)

(assert (= bs!1190206 d!1637230))

(declare-fun m!6118592 () Bool)

(assert (=> bs!1190206 m!6118592))

(assert (=> b!5071819 d!1637230))

(declare-fun d!1637232 () Bool)

(assert (=> d!1637232 (= (height!2146 (left!42824 xs!286)) (ite (is-Empty!15569 (left!42824 xs!286)) 0 (ite (is-Leaf!25859 (left!42824 xs!286)) 1 (cheight!15780 (left!42824 xs!286)))))))

(assert (=> b!5071754 d!1637232))

(declare-fun d!1637234 () Bool)

(assert (=> d!1637234 (= (height!2146 (right!43154 xs!286)) (ite (is-Empty!15569 (right!43154 xs!286)) 0 (ite (is-Leaf!25859 (right!43154 xs!286)) 1 (cheight!15780 (right!43154 xs!286)))))))

(assert (=> b!5071754 d!1637234))

(declare-fun d!1637236 () Bool)

(declare-fun lt!2089681 () Bool)

(assert (=> d!1637236 (= lt!2089681 (isEmpty!31644 (list!19000 (right!43154 xs!286))))))

(assert (=> d!1637236 (= lt!2089681 (= (size!39088 (right!43154 xs!286)) 0))))

(assert (=> d!1637236 (= (isEmpty!31642 (right!43154 xs!286)) lt!2089681)))

(declare-fun bs!1190207 () Bool)

(assert (= bs!1190207 d!1637236))

(declare-fun m!6118594 () Bool)

(assert (=> bs!1190207 m!6118594))

(assert (=> bs!1190207 m!6118594))

(declare-fun m!6118596 () Bool)

(assert (=> bs!1190207 m!6118596))

(assert (=> bs!1190207 m!6118538))

(assert (=> b!5071757 d!1637236))

(assert (=> b!5071758 d!1637232))

(assert (=> b!5071758 d!1637234))

(declare-fun d!1637238 () Bool)

(declare-fun lt!2089682 () Bool)

(assert (=> d!1637238 (= lt!2089682 (isEmpty!31644 (list!19000 (left!42824 xs!286))))))

(assert (=> d!1637238 (= lt!2089682 (= (size!39088 (left!42824 xs!286)) 0))))

(assert (=> d!1637238 (= (isEmpty!31642 (left!42824 xs!286)) lt!2089682)))

(declare-fun bs!1190208 () Bool)

(assert (= bs!1190208 d!1637238))

(declare-fun m!6118598 () Bool)

(assert (=> bs!1190208 m!6118598))

(assert (=> bs!1190208 m!6118598))

(declare-fun m!6118600 () Bool)

(assert (=> bs!1190208 m!6118600))

(assert (=> bs!1190208 m!6118536))

(assert (=> b!5071756 d!1637238))

(declare-fun d!1637240 () Bool)

(assert (=> d!1637240 (= (inv!77586 (xs!18927 (left!42824 ys!41))) (<= (size!39086 (innerList!15657 (xs!18927 (left!42824 ys!41)))) 2147483647))))

(declare-fun bs!1190209 () Bool)

(assert (= bs!1190209 d!1637240))

(declare-fun m!6118602 () Bool)

(assert (=> bs!1190209 m!6118602))

(assert (=> b!5071816 d!1637240))

(declare-fun d!1637242 () Bool)

(declare-fun c!870883 () Bool)

(assert (=> d!1637242 (= c!870883 (is-Node!15569 (left!42824 (left!42824 ys!41))))))

(declare-fun e!3164654 () Bool)

(assert (=> d!1637242 (= (inv!77587 (left!42824 (left!42824 ys!41))) e!3164654)))

(declare-fun b!5071972 () Bool)

(assert (=> b!5071972 (= e!3164654 (inv!77590 (left!42824 (left!42824 ys!41))))))

(declare-fun b!5071973 () Bool)

(declare-fun e!3164655 () Bool)

(assert (=> b!5071973 (= e!3164654 e!3164655)))

(declare-fun res!2159434 () Bool)

(assert (=> b!5071973 (= res!2159434 (not (is-Leaf!25859 (left!42824 (left!42824 ys!41)))))))

(assert (=> b!5071973 (=> res!2159434 e!3164655)))

(declare-fun b!5071974 () Bool)

(assert (=> b!5071974 (= e!3164655 (inv!77591 (left!42824 (left!42824 ys!41))))))

(assert (= (and d!1637242 c!870883) b!5071972))

(assert (= (and d!1637242 (not c!870883)) b!5071973))

(assert (= (and b!5071973 (not res!2159434)) b!5071974))

(declare-fun m!6118604 () Bool)

(assert (=> b!5071972 m!6118604))

(declare-fun m!6118606 () Bool)

(assert (=> b!5071974 m!6118606))

(assert (=> b!5071815 d!1637242))

(declare-fun d!1637244 () Bool)

(declare-fun c!870884 () Bool)

(assert (=> d!1637244 (= c!870884 (is-Node!15569 (right!43154 (left!42824 ys!41))))))

(declare-fun e!3164656 () Bool)

(assert (=> d!1637244 (= (inv!77587 (right!43154 (left!42824 ys!41))) e!3164656)))

(declare-fun b!5071975 () Bool)

(assert (=> b!5071975 (= e!3164656 (inv!77590 (right!43154 (left!42824 ys!41))))))

(declare-fun b!5071976 () Bool)

(declare-fun e!3164657 () Bool)

(assert (=> b!5071976 (= e!3164656 e!3164657)))

(declare-fun res!2159435 () Bool)

(assert (=> b!5071976 (= res!2159435 (not (is-Leaf!25859 (right!43154 (left!42824 ys!41)))))))

(assert (=> b!5071976 (=> res!2159435 e!3164657)))

(declare-fun b!5071977 () Bool)

(assert (=> b!5071977 (= e!3164657 (inv!77591 (right!43154 (left!42824 ys!41))))))

(assert (= (and d!1637244 c!870884) b!5071975))

(assert (= (and d!1637244 (not c!870884)) b!5071976))

(assert (= (and b!5071976 (not res!2159435)) b!5071977))

(declare-fun m!6118608 () Bool)

(assert (=> b!5071975 m!6118608))

(declare-fun m!6118610 () Bool)

(assert (=> b!5071977 m!6118610))

(assert (=> b!5071815 d!1637244))

(declare-fun d!1637246 () Bool)

(declare-fun lt!2089683 () Int)

(assert (=> d!1637246 (>= lt!2089683 0)))

(declare-fun e!3164658 () Int)

(assert (=> d!1637246 (= lt!2089683 e!3164658)))

(declare-fun c!870885 () Bool)

(assert (=> d!1637246 (= c!870885 (is-Nil!58439 (innerList!15657 (xs!18927 xs!286))))))

(assert (=> d!1637246 (= (size!39086 (innerList!15657 (xs!18927 xs!286))) lt!2089683)))

(declare-fun b!5071978 () Bool)

(assert (=> b!5071978 (= e!3164658 0)))

(declare-fun b!5071979 () Bool)

(assert (=> b!5071979 (= e!3164658 (+ 1 (size!39086 (t!371326 (innerList!15657 (xs!18927 xs!286))))))))

(assert (= (and d!1637246 c!870885) b!5071978))

(assert (= (and d!1637246 (not c!870885)) b!5071979))

(declare-fun m!6118612 () Bool)

(assert (=> b!5071979 m!6118612))

(assert (=> d!1637142 d!1637246))

(declare-fun b!5071980 () Bool)

(declare-fun e!3164659 () Bool)

(declare-fun e!3164660 () Bool)

(assert (=> b!5071980 (= e!3164659 e!3164660)))

(declare-fun res!2159437 () Bool)

(assert (=> b!5071980 (=> (not res!2159437) (not e!3164660))))

(assert (=> b!5071980 (= res!2159437 (<= (- 1) (- (height!2146 (left!42824 (right!43154 xs!286))) (height!2146 (right!43154 (right!43154 xs!286))))))))

(declare-fun b!5071981 () Bool)

(declare-fun res!2159438 () Bool)

(assert (=> b!5071981 (=> (not res!2159438) (not e!3164660))))

(assert (=> b!5071981 (= res!2159438 (isBalanced!4431 (left!42824 (right!43154 xs!286))))))

(declare-fun b!5071982 () Bool)

(declare-fun res!2159441 () Bool)

(assert (=> b!5071982 (=> (not res!2159441) (not e!3164660))))

(assert (=> b!5071982 (= res!2159441 (not (isEmpty!31642 (left!42824 (right!43154 xs!286)))))))

(declare-fun b!5071983 () Bool)

(assert (=> b!5071983 (= e!3164660 (not (isEmpty!31642 (right!43154 (right!43154 xs!286)))))))

(declare-fun b!5071984 () Bool)

(declare-fun res!2159436 () Bool)

(assert (=> b!5071984 (=> (not res!2159436) (not e!3164660))))

(assert (=> b!5071984 (= res!2159436 (<= (- (height!2146 (left!42824 (right!43154 xs!286))) (height!2146 (right!43154 (right!43154 xs!286)))) 1))))

(declare-fun b!5071985 () Bool)

(declare-fun res!2159439 () Bool)

(assert (=> b!5071985 (=> (not res!2159439) (not e!3164660))))

(assert (=> b!5071985 (= res!2159439 (isBalanced!4431 (right!43154 (right!43154 xs!286))))))

(declare-fun d!1637248 () Bool)

(declare-fun res!2159440 () Bool)

(assert (=> d!1637248 (=> res!2159440 e!3164659)))

(assert (=> d!1637248 (= res!2159440 (not (is-Node!15569 (right!43154 xs!286))))))

(assert (=> d!1637248 (= (isBalanced!4431 (right!43154 xs!286)) e!3164659)))

(assert (= (and d!1637248 (not res!2159440)) b!5071980))

(assert (= (and b!5071980 res!2159437) b!5071984))

(assert (= (and b!5071984 res!2159436) b!5071981))

(assert (= (and b!5071981 res!2159438) b!5071985))

(assert (= (and b!5071985 res!2159439) b!5071982))

(assert (= (and b!5071982 res!2159441) b!5071983))

(assert (=> b!5071984 m!6118586))

(assert (=> b!5071984 m!6118588))

(assert (=> b!5071980 m!6118586))

(assert (=> b!5071980 m!6118588))

(declare-fun m!6118614 () Bool)

(assert (=> b!5071982 m!6118614))

(declare-fun m!6118616 () Bool)

(assert (=> b!5071983 m!6118616))

(declare-fun m!6118618 () Bool)

(assert (=> b!5071985 m!6118618))

(declare-fun m!6118620 () Bool)

(assert (=> b!5071981 m!6118620))

(assert (=> b!5071759 d!1637248))

(declare-fun b!5071986 () Bool)

(declare-fun e!3164661 () Bool)

(declare-fun tp!1415690 () Bool)

(assert (=> b!5071986 (= e!3164661 (and tp_is_empty!37061 tp!1415690))))

(assert (=> b!5071806 (= tp!1415648 e!3164661)))

(assert (= (and b!5071806 (is-Cons!58439 (t!371326 (innerList!15657 (xs!18927 xs!286))))) b!5071986))

(declare-fun b!5071987 () Bool)

(declare-fun tp!1415692 () Bool)

(declare-fun tp!1415691 () Bool)

(declare-fun e!3164663 () Bool)

(assert (=> b!5071987 (= e!3164663 (and (inv!77587 (left!42824 (left!42824 (right!43154 ys!41)))) tp!1415692 (inv!77587 (right!43154 (left!42824 (right!43154 ys!41)))) tp!1415691))))

(declare-fun b!5071989 () Bool)

(declare-fun e!3164662 () Bool)

(declare-fun tp!1415693 () Bool)

(assert (=> b!5071989 (= e!3164662 tp!1415693)))

(declare-fun b!5071988 () Bool)

(assert (=> b!5071988 (= e!3164663 (and (inv!77586 (xs!18927 (left!42824 (right!43154 ys!41)))) e!3164662))))

(assert (=> b!5071818 (= tp!1415659 (and (inv!77587 (left!42824 (right!43154 ys!41))) e!3164663))))

(assert (= (and b!5071818 (is-Node!15569 (left!42824 (right!43154 ys!41)))) b!5071987))

(assert (= b!5071988 b!5071989))

(assert (= (and b!5071818 (is-Leaf!25859 (left!42824 (right!43154 ys!41)))) b!5071988))

(declare-fun m!6118622 () Bool)

(assert (=> b!5071987 m!6118622))

(declare-fun m!6118624 () Bool)

(assert (=> b!5071987 m!6118624))

(declare-fun m!6118626 () Bool)

(assert (=> b!5071988 m!6118626))

(assert (=> b!5071818 m!6118368))

(declare-fun tp!1415695 () Bool)

(declare-fun e!3164665 () Bool)

(declare-fun b!5071990 () Bool)

(declare-fun tp!1415694 () Bool)

(assert (=> b!5071990 (= e!3164665 (and (inv!77587 (left!42824 (right!43154 (right!43154 ys!41)))) tp!1415695 (inv!77587 (right!43154 (right!43154 (right!43154 ys!41)))) tp!1415694))))

(declare-fun b!5071992 () Bool)

(declare-fun e!3164664 () Bool)

(declare-fun tp!1415696 () Bool)

(assert (=> b!5071992 (= e!3164664 tp!1415696)))

(declare-fun b!5071991 () Bool)

(assert (=> b!5071991 (= e!3164665 (and (inv!77586 (xs!18927 (right!43154 (right!43154 ys!41)))) e!3164664))))

(assert (=> b!5071818 (= tp!1415658 (and (inv!77587 (right!43154 (right!43154 ys!41))) e!3164665))))

(assert (= (and b!5071818 (is-Node!15569 (right!43154 (right!43154 ys!41)))) b!5071990))

(assert (= b!5071991 b!5071992))

(assert (= (and b!5071818 (is-Leaf!25859 (right!43154 (right!43154 ys!41)))) b!5071991))

(declare-fun m!6118628 () Bool)

(assert (=> b!5071990 m!6118628))

(declare-fun m!6118630 () Bool)

(assert (=> b!5071990 m!6118630))

(declare-fun m!6118632 () Bool)

(assert (=> b!5071991 m!6118632))

(assert (=> b!5071818 m!6118370))

(declare-fun b!5071993 () Bool)

(declare-fun e!3164666 () Bool)

(declare-fun tp!1415697 () Bool)

(assert (=> b!5071993 (= e!3164666 (and tp_is_empty!37061 tp!1415697))))

(assert (=> b!5071821 (= tp!1415661 e!3164666)))

(assert (= (and b!5071821 (is-Cons!58439 (t!371326 (innerList!15657 (xs!18927 ys!41))))) b!5071993))

(declare-fun b!5071994 () Bool)

(declare-fun e!3164667 () Bool)

(declare-fun tp!1415698 () Bool)

(assert (=> b!5071994 (= e!3164667 (and tp_is_empty!37061 tp!1415698))))

(assert (=> b!5071817 (= tp!1415657 e!3164667)))

(assert (= (and b!5071817 (is-Cons!58439 (innerList!15657 (xs!18927 (left!42824 ys!41))))) b!5071994))

(declare-fun tp!1415699 () Bool)

(declare-fun e!3164669 () Bool)

(declare-fun b!5071995 () Bool)

(declare-fun tp!1415700 () Bool)

(assert (=> b!5071995 (= e!3164669 (and (inv!77587 (left!42824 (left!42824 (right!43154 xs!286)))) tp!1415700 (inv!77587 (right!43154 (left!42824 (right!43154 xs!286)))) tp!1415699))))

(declare-fun b!5071997 () Bool)

(declare-fun e!3164668 () Bool)

(declare-fun tp!1415701 () Bool)

(assert (=> b!5071997 (= e!3164668 tp!1415701)))

(declare-fun b!5071996 () Bool)

(assert (=> b!5071996 (= e!3164669 (and (inv!77586 (xs!18927 (left!42824 (right!43154 xs!286)))) e!3164668))))

(assert (=> b!5071825 (= tp!1415666 (and (inv!77587 (left!42824 (right!43154 xs!286))) e!3164669))))

(assert (= (and b!5071825 (is-Node!15569 (left!42824 (right!43154 xs!286)))) b!5071995))

(assert (= b!5071996 b!5071997))

(assert (= (and b!5071825 (is-Leaf!25859 (left!42824 (right!43154 xs!286)))) b!5071996))

(declare-fun m!6118634 () Bool)

(assert (=> b!5071995 m!6118634))

(declare-fun m!6118636 () Bool)

(assert (=> b!5071995 m!6118636))

(declare-fun m!6118638 () Bool)

(assert (=> b!5071996 m!6118638))

(assert (=> b!5071825 m!6118380))

(declare-fun tp!1415703 () Bool)

(declare-fun b!5071998 () Bool)

(declare-fun e!3164671 () Bool)

(declare-fun tp!1415702 () Bool)

(assert (=> b!5071998 (= e!3164671 (and (inv!77587 (left!42824 (right!43154 (right!43154 xs!286)))) tp!1415703 (inv!77587 (right!43154 (right!43154 (right!43154 xs!286)))) tp!1415702))))

(declare-fun b!5072000 () Bool)

(declare-fun e!3164670 () Bool)

(declare-fun tp!1415704 () Bool)

(assert (=> b!5072000 (= e!3164670 tp!1415704)))

(declare-fun b!5071999 () Bool)

(assert (=> b!5071999 (= e!3164671 (and (inv!77586 (xs!18927 (right!43154 (right!43154 xs!286)))) e!3164670))))

(assert (=> b!5071825 (= tp!1415665 (and (inv!77587 (right!43154 (right!43154 xs!286))) e!3164671))))

(assert (= (and b!5071825 (is-Node!15569 (right!43154 (right!43154 xs!286)))) b!5071998))

(assert (= b!5071999 b!5072000))

(assert (= (and b!5071825 (is-Leaf!25859 (right!43154 (right!43154 xs!286)))) b!5071999))

(declare-fun m!6118640 () Bool)

(assert (=> b!5071998 m!6118640))

(declare-fun m!6118642 () Bool)

(assert (=> b!5071998 m!6118642))

(declare-fun m!6118644 () Bool)

(assert (=> b!5071999 m!6118644))

(assert (=> b!5071825 m!6118382))

(declare-fun b!5072001 () Bool)

(declare-fun e!3164672 () Bool)

(declare-fun tp!1415705 () Bool)

(assert (=> b!5072001 (= e!3164672 (and tp_is_empty!37061 tp!1415705))))

(assert (=> b!5071824 (= tp!1415664 e!3164672)))

(assert (= (and b!5071824 (is-Cons!58439 (innerList!15657 (xs!18927 (left!42824 xs!286))))) b!5072001))

(declare-fun b!5072002 () Bool)

(declare-fun e!3164673 () Bool)

(declare-fun tp!1415706 () Bool)

(assert (=> b!5072002 (= e!3164673 (and tp_is_empty!37061 tp!1415706))))

(assert (=> b!5071827 (= tp!1415667 e!3164673)))

(assert (= (and b!5071827 (is-Cons!58439 (innerList!15657 (xs!18927 (right!43154 xs!286))))) b!5072002))

(declare-fun e!3164675 () Bool)

(declare-fun tp!1415708 () Bool)

(declare-fun b!5072003 () Bool)

(declare-fun tp!1415707 () Bool)

(assert (=> b!5072003 (= e!3164675 (and (inv!77587 (left!42824 (left!42824 (left!42824 xs!286)))) tp!1415708 (inv!77587 (right!43154 (left!42824 (left!42824 xs!286)))) tp!1415707))))

(declare-fun b!5072005 () Bool)

(declare-fun e!3164674 () Bool)

(declare-fun tp!1415709 () Bool)

(assert (=> b!5072005 (= e!3164674 tp!1415709)))

(declare-fun b!5072004 () Bool)

(assert (=> b!5072004 (= e!3164675 (and (inv!77586 (xs!18927 (left!42824 (left!42824 xs!286)))) e!3164674))))

(assert (=> b!5071822 (= tp!1415663 (and (inv!77587 (left!42824 (left!42824 xs!286))) e!3164675))))

(assert (= (and b!5071822 (is-Node!15569 (left!42824 (left!42824 xs!286)))) b!5072003))

(assert (= b!5072004 b!5072005))

(assert (= (and b!5071822 (is-Leaf!25859 (left!42824 (left!42824 xs!286)))) b!5072004))

(declare-fun m!6118646 () Bool)

(assert (=> b!5072003 m!6118646))

(declare-fun m!6118648 () Bool)

(assert (=> b!5072003 m!6118648))

(declare-fun m!6118650 () Bool)

(assert (=> b!5072004 m!6118650))

(assert (=> b!5071822 m!6118374))

(declare-fun tp!1415711 () Bool)

(declare-fun b!5072006 () Bool)

(declare-fun e!3164677 () Bool)

(declare-fun tp!1415710 () Bool)

(assert (=> b!5072006 (= e!3164677 (and (inv!77587 (left!42824 (right!43154 (left!42824 xs!286)))) tp!1415711 (inv!77587 (right!43154 (right!43154 (left!42824 xs!286)))) tp!1415710))))

(declare-fun b!5072008 () Bool)

(declare-fun e!3164676 () Bool)

(declare-fun tp!1415712 () Bool)

(assert (=> b!5072008 (= e!3164676 tp!1415712)))

(declare-fun b!5072007 () Bool)

(assert (=> b!5072007 (= e!3164677 (and (inv!77586 (xs!18927 (right!43154 (left!42824 xs!286)))) e!3164676))))

(assert (=> b!5071822 (= tp!1415662 (and (inv!77587 (right!43154 (left!42824 xs!286))) e!3164677))))

(assert (= (and b!5071822 (is-Node!15569 (right!43154 (left!42824 xs!286)))) b!5072006))

(assert (= b!5072007 b!5072008))

(assert (= (and b!5071822 (is-Leaf!25859 (right!43154 (left!42824 xs!286)))) b!5072007))

(declare-fun m!6118652 () Bool)

(assert (=> b!5072006 m!6118652))

(declare-fun m!6118654 () Bool)

(assert (=> b!5072006 m!6118654))

(declare-fun m!6118656 () Bool)

(assert (=> b!5072007 m!6118656))

(assert (=> b!5071822 m!6118376))

(declare-fun b!5072009 () Bool)

(declare-fun e!3164678 () Bool)

(declare-fun tp!1415713 () Bool)

(assert (=> b!5072009 (= e!3164678 (and tp_is_empty!37061 tp!1415713))))

(assert (=> b!5071820 (= tp!1415660 e!3164678)))

(assert (= (and b!5071820 (is-Cons!58439 (innerList!15657 (xs!18927 (right!43154 ys!41))))) b!5072009))

(declare-fun b!5072010 () Bool)

(declare-fun tp!1415714 () Bool)

(declare-fun e!3164680 () Bool)

(declare-fun tp!1415715 () Bool)

(assert (=> b!5072010 (= e!3164680 (and (inv!77587 (left!42824 (left!42824 (left!42824 ys!41)))) tp!1415715 (inv!77587 (right!43154 (left!42824 (left!42824 ys!41)))) tp!1415714))))

(declare-fun b!5072012 () Bool)

(declare-fun e!3164679 () Bool)

(declare-fun tp!1415716 () Bool)

(assert (=> b!5072012 (= e!3164679 tp!1415716)))

(declare-fun b!5072011 () Bool)

(assert (=> b!5072011 (= e!3164680 (and (inv!77586 (xs!18927 (left!42824 (left!42824 ys!41)))) e!3164679))))

(assert (=> b!5071815 (= tp!1415656 (and (inv!77587 (left!42824 (left!42824 ys!41))) e!3164680))))

(assert (= (and b!5071815 (is-Node!15569 (left!42824 (left!42824 ys!41)))) b!5072010))

(assert (= b!5072011 b!5072012))

(assert (= (and b!5071815 (is-Leaf!25859 (left!42824 (left!42824 ys!41)))) b!5072011))

(declare-fun m!6118658 () Bool)

(assert (=> b!5072010 m!6118658))

(declare-fun m!6118660 () Bool)

(assert (=> b!5072010 m!6118660))

(declare-fun m!6118662 () Bool)

(assert (=> b!5072011 m!6118662))

(assert (=> b!5071815 m!6118362))

(declare-fun b!5072013 () Bool)

(declare-fun e!3164682 () Bool)

(declare-fun tp!1415717 () Bool)

(declare-fun tp!1415718 () Bool)

(assert (=> b!5072013 (= e!3164682 (and (inv!77587 (left!42824 (right!43154 (left!42824 ys!41)))) tp!1415718 (inv!77587 (right!43154 (right!43154 (left!42824 ys!41)))) tp!1415717))))

(declare-fun b!5072015 () Bool)

(declare-fun e!3164681 () Bool)

(declare-fun tp!1415719 () Bool)

(assert (=> b!5072015 (= e!3164681 tp!1415719)))

(declare-fun b!5072014 () Bool)

(assert (=> b!5072014 (= e!3164682 (and (inv!77586 (xs!18927 (right!43154 (left!42824 ys!41)))) e!3164681))))

(assert (=> b!5071815 (= tp!1415655 (and (inv!77587 (right!43154 (left!42824 ys!41))) e!3164682))))

(assert (= (and b!5071815 (is-Node!15569 (right!43154 (left!42824 ys!41)))) b!5072013))

(assert (= b!5072014 b!5072015))

(assert (= (and b!5071815 (is-Leaf!25859 (right!43154 (left!42824 ys!41)))) b!5072014))

(declare-fun m!6118664 () Bool)

(assert (=> b!5072013 m!6118664))

(declare-fun m!6118666 () Bool)

(assert (=> b!5072013 m!6118666))

(declare-fun m!6118668 () Bool)

(assert (=> b!5072014 m!6118668))

(assert (=> b!5071815 m!6118364))

(push 1)

(assert (not b!5071934))

(assert (not b!5071953))

(assert (not b!5071967))

(assert (not b!5071994))

(assert (not d!1637208))

(assert (not b!5071892))

(assert (not b!5071982))

(assert (not b!5071893))

(assert (not b!5071988))

(assert (not b!5072012))

(assert (not d!1637194))

(assert (not b!5071963))

(assert (not b!5071983))

(assert (not b!5071949))

(assert (not b!5072014))

(assert (not b!5072010))

(assert (not b!5071975))

(assert (not b!5071990))

(assert (not b!5071933))

(assert (not b!5071909))

(assert (not d!1637198))

(assert (not b!5071894))

(assert (not b!5071911))

(assert (not b!5071996))

(assert (not b!5071918))

(assert (not d!1637180))

(assert (not b!5071986))

(assert (not b!5071891))

(assert (not b!5071957))

(assert (not b!5071992))

(assert (not d!1637220))

(assert (not d!1637186))

(assert (not d!1637224))

(assert (not b!5072015))

(assert (not b!5071935))

(assert (not d!1637192))

(assert (not b!5071900))

(assert (not b!5071974))

(assert (not b!5071970))

(assert (not d!1637196))

(assert (not b!5071822))

(assert (not b!5071952))

(assert (not b!5071895))

(assert (not d!1637222))

(assert (not b!5071989))

(assert (not d!1637236))

(assert (not d!1637214))

(assert (not b!5071999))

(assert (not b!5071939))

(assert (not b!5072002))

(assert (not b!5071921))

(assert (not b!5071913))

(assert (not b!5071950))

(assert (not b!5072011))

(assert (not b!5071964))

(assert (not b!5071944))

(assert (not d!1637238))

(assert (not b!5071966))

(assert (not b!5072000))

(assert tp_is_empty!37061)

(assert (not b!5071968))

(assert (not b!5071947))

(assert (not d!1637206))

(assert (not b!5072009))

(assert (not b!5071931))

(assert (not b!5071991))

(assert (not b!5071946))

(assert (not b!5071995))

(assert (not b!5071965))

(assert (not b!5071997))

(assert (not b!5071985))

(assert (not b!5071998))

(assert (not b!5072008))

(assert (not b!5071914))

(assert (not b!5071980))

(assert (not b!5071923))

(assert (not d!1637176))

(assert (not b!5071979))

(assert (not b!5071959))

(assert (not b!5072006))

(assert (not b!5071890))

(assert (not b!5071936))

(assert (not d!1637202))

(assert (not b!5071993))

(assert (not b!5071981))

(assert (not b!5072007))

(assert (not d!1637178))

(assert (not b!5072004))

(assert (not b!5071984))

(assert (not d!1637228))

(assert (not b!5071937))

(assert (not b!5071818))

(assert (not b!5071955))

(assert (not b!5072013))

(assert (not b!5072001))

(assert (not b!5071930))

(assert (not d!1637230))

(assert (not b!5072003))

(assert (not b!5071961))

(assert (not b!5071942))

(assert (not b!5071972))

(assert (not b!5071916))

(assert (not b!5071815))

(assert (not b!5071987))

(assert (not b!5071825))

(assert (not b!5072005))

(assert (not d!1637240))

(assert (not b!5071938))

(assert (not b!5071977))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

