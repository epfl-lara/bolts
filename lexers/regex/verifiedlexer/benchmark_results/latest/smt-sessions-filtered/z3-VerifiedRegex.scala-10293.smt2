; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535538 () Bool)

(assert start!535538)

(declare-fun b!5076654 () Bool)

(declare-fun res!2161389 () Bool)

(declare-fun e!3167165 () Bool)

(assert (=> b!5076654 (=> (not res!2161389) (not e!3167165))))

(declare-datatypes ((T!105216 0))(
  ( (T!105217 (val!23662 Int)) )
))
(declare-datatypes ((List!58572 0))(
  ( (Nil!58448) (Cons!58448 (h!64896 T!105216) (t!371369 List!58572)) )
))
(declare-datatypes ((IArray!31217 0))(
  ( (IArray!31218 (innerList!15666 List!58572)) )
))
(declare-datatypes ((Conc!15578 0))(
  ( (Node!15578 (left!42837 Conc!15578) (right!43167 Conc!15578) (csize!31386 Int) (cheight!15789 Int)) (Leaf!25872 (xs!18944 IArray!31217) (csize!31387 Int)) (Empty!15578) )
))
(declare-fun ys!41 () Conc!15578)

(get-info :version)

(assert (=> b!5076654 (= res!2161389 ((_ is Node!15578) (left!42837 ys!41)))))

(declare-fun b!5076656 () Bool)

(declare-fun e!3167166 () Bool)

(declare-fun xs!286 () Conc!15578)

(declare-fun e!3167164 () Bool)

(declare-fun inv!77632 (IArray!31217) Bool)

(assert (=> b!5076656 (= e!3167166 (and (inv!77632 (xs!18944 xs!286)) e!3167164))))

(declare-fun tp!1416512 () Bool)

(declare-fun tp!1416510 () Bool)

(declare-fun e!3167163 () Bool)

(declare-fun b!5076657 () Bool)

(declare-fun inv!77633 (Conc!15578) Bool)

(assert (=> b!5076657 (= e!3167163 (and (inv!77633 (left!42837 ys!41)) tp!1416512 (inv!77633 (right!43167 ys!41)) tp!1416510))))

(declare-fun b!5076658 () Bool)

(declare-fun e!3167161 () Bool)

(assert (=> b!5076658 (= e!3167161 e!3167165)))

(declare-fun res!2161391 () Bool)

(assert (=> b!5076658 (=> (not res!2161391) (not e!3167165))))

(declare-fun lt!2090324 () Int)

(assert (=> b!5076658 (= res!2161391 (and (or (> (- 1) lt!2090324) (> lt!2090324 1)) (>= lt!2090324 (- 1)) ((_ is Node!15578) ys!41)))))

(declare-fun lt!2090325 () Int)

(declare-fun lt!2090323 () Int)

(assert (=> b!5076658 (= lt!2090324 (- lt!2090325 lt!2090323))))

(declare-fun height!2155 (Conc!15578) Int)

(assert (=> b!5076658 (= lt!2090323 (height!2155 xs!286))))

(assert (=> b!5076658 (= lt!2090325 (height!2155 ys!41))))

(declare-fun b!5076659 () Bool)

(declare-fun tp!1416515 () Bool)

(assert (=> b!5076659 (= e!3167164 tp!1416515)))

(declare-fun b!5076660 () Bool)

(declare-fun res!2161387 () Bool)

(assert (=> b!5076660 (=> (not res!2161387) (not e!3167165))))

(assert (=> b!5076660 (= res!2161387 (< (height!2155 (right!43167 ys!41)) (height!2155 (left!42837 ys!41))))))

(declare-fun tp!1416514 () Bool)

(declare-fun b!5076661 () Bool)

(declare-fun tp!1416511 () Bool)

(assert (=> b!5076661 (= e!3167166 (and (inv!77633 (left!42837 xs!286)) tp!1416514 (inv!77633 (right!43167 xs!286)) tp!1416511))))

(declare-fun b!5076662 () Bool)

(declare-fun e!3167162 () Bool)

(declare-fun tp!1416513 () Bool)

(assert (=> b!5076662 (= e!3167162 tp!1416513)))

(declare-fun b!5076663 () Bool)

(declare-fun res!2161386 () Bool)

(assert (=> b!5076663 (=> (not res!2161386) (not e!3167161))))

(assert (=> b!5076663 (= res!2161386 (and (not (= xs!286 Empty!15578)) (not (= ys!41 Empty!15578))))))

(declare-fun b!5076664 () Bool)

(assert (=> b!5076664 (= e!3167163 (and (inv!77632 (xs!18944 ys!41)) e!3167162))))

(declare-fun b!5076665 () Bool)

(declare-fun res!2161388 () Bool)

(assert (=> b!5076665 (=> (not res!2161388) (not e!3167161))))

(declare-fun isBalanced!4440 (Conc!15578) Bool)

(assert (=> b!5076665 (= res!2161388 (isBalanced!4440 ys!41))))

(declare-fun res!2161390 () Bool)

(assert (=> start!535538 (=> (not res!2161390) (not e!3167161))))

(assert (=> start!535538 (= res!2161390 (isBalanced!4440 xs!286))))

(assert (=> start!535538 e!3167161))

(assert (=> start!535538 (and (inv!77633 xs!286) e!3167166)))

(assert (=> start!535538 (and (inv!77633 ys!41) e!3167163)))

(declare-fun b!5076655 () Bool)

(declare-fun abs!0 (Int) Int)

(assert (=> b!5076655 (= e!3167165 (>= (abs!0 (- lt!2090323 (height!2155 (left!42837 (left!42837 ys!41))))) (abs!0 (- lt!2090323 lt!2090325))))))

(assert (= (and start!535538 res!2161390) b!5076665))

(assert (= (and b!5076665 res!2161388) b!5076663))

(assert (= (and b!5076663 res!2161386) b!5076658))

(assert (= (and b!5076658 res!2161391) b!5076660))

(assert (= (and b!5076660 res!2161387) b!5076654))

(assert (= (and b!5076654 res!2161389) b!5076655))

(assert (= (and start!535538 ((_ is Node!15578) xs!286)) b!5076661))

(assert (= b!5076656 b!5076659))

(assert (= (and start!535538 ((_ is Leaf!25872) xs!286)) b!5076656))

(assert (= (and start!535538 ((_ is Node!15578) ys!41)) b!5076657))

(assert (= b!5076664 b!5076662))

(assert (= (and start!535538 ((_ is Leaf!25872) ys!41)) b!5076664))

(declare-fun m!6126504 () Bool)

(assert (=> b!5076665 m!6126504))

(declare-fun m!6126506 () Bool)

(assert (=> b!5076660 m!6126506))

(declare-fun m!6126508 () Bool)

(assert (=> b!5076660 m!6126508))

(declare-fun m!6126510 () Bool)

(assert (=> start!535538 m!6126510))

(declare-fun m!6126512 () Bool)

(assert (=> start!535538 m!6126512))

(declare-fun m!6126514 () Bool)

(assert (=> start!535538 m!6126514))

(declare-fun m!6126516 () Bool)

(assert (=> b!5076664 m!6126516))

(declare-fun m!6126518 () Bool)

(assert (=> b!5076661 m!6126518))

(declare-fun m!6126520 () Bool)

(assert (=> b!5076661 m!6126520))

(declare-fun m!6126522 () Bool)

(assert (=> b!5076656 m!6126522))

(declare-fun m!6126524 () Bool)

(assert (=> b!5076658 m!6126524))

(declare-fun m!6126526 () Bool)

(assert (=> b!5076658 m!6126526))

(declare-fun m!6126528 () Bool)

(assert (=> b!5076657 m!6126528))

(declare-fun m!6126530 () Bool)

(assert (=> b!5076657 m!6126530))

(declare-fun m!6126532 () Bool)

(assert (=> b!5076655 m!6126532))

(declare-fun m!6126534 () Bool)

(assert (=> b!5076655 m!6126534))

(declare-fun m!6126536 () Bool)

(assert (=> b!5076655 m!6126536))

(check-sat (not b!5076664) (not b!5076656) (not b!5076660) (not b!5076665) (not b!5076662) (not b!5076657) (not b!5076659) (not b!5076661) (not b!5076658) (not b!5076655) (not start!535538))
(check-sat)
(get-model)

(declare-fun d!1640014 () Bool)

(declare-fun c!871828 () Bool)

(assert (=> d!1640014 (= c!871828 ((_ is Node!15578) (left!42837 ys!41)))))

(declare-fun e!3167171 () Bool)

(assert (=> d!1640014 (= (inv!77633 (left!42837 ys!41)) e!3167171)))

(declare-fun b!5076672 () Bool)

(declare-fun inv!77634 (Conc!15578) Bool)

(assert (=> b!5076672 (= e!3167171 (inv!77634 (left!42837 ys!41)))))

(declare-fun b!5076673 () Bool)

(declare-fun e!3167172 () Bool)

(assert (=> b!5076673 (= e!3167171 e!3167172)))

(declare-fun res!2161394 () Bool)

(assert (=> b!5076673 (= res!2161394 (not ((_ is Leaf!25872) (left!42837 ys!41))))))

(assert (=> b!5076673 (=> res!2161394 e!3167172)))

(declare-fun b!5076674 () Bool)

(declare-fun inv!77635 (Conc!15578) Bool)

(assert (=> b!5076674 (= e!3167172 (inv!77635 (left!42837 ys!41)))))

(assert (= (and d!1640014 c!871828) b!5076672))

(assert (= (and d!1640014 (not c!871828)) b!5076673))

(assert (= (and b!5076673 (not res!2161394)) b!5076674))

(declare-fun m!6126538 () Bool)

(assert (=> b!5076672 m!6126538))

(declare-fun m!6126540 () Bool)

(assert (=> b!5076674 m!6126540))

(assert (=> b!5076657 d!1640014))

(declare-fun d!1640018 () Bool)

(declare-fun c!871829 () Bool)

(assert (=> d!1640018 (= c!871829 ((_ is Node!15578) (right!43167 ys!41)))))

(declare-fun e!3167173 () Bool)

(assert (=> d!1640018 (= (inv!77633 (right!43167 ys!41)) e!3167173)))

(declare-fun b!5076675 () Bool)

(assert (=> b!5076675 (= e!3167173 (inv!77634 (right!43167 ys!41)))))

(declare-fun b!5076676 () Bool)

(declare-fun e!3167174 () Bool)

(assert (=> b!5076676 (= e!3167173 e!3167174)))

(declare-fun res!2161395 () Bool)

(assert (=> b!5076676 (= res!2161395 (not ((_ is Leaf!25872) (right!43167 ys!41))))))

(assert (=> b!5076676 (=> res!2161395 e!3167174)))

(declare-fun b!5076677 () Bool)

(assert (=> b!5076677 (= e!3167174 (inv!77635 (right!43167 ys!41)))))

(assert (= (and d!1640018 c!871829) b!5076675))

(assert (= (and d!1640018 (not c!871829)) b!5076676))

(assert (= (and b!5076676 (not res!2161395)) b!5076677))

(declare-fun m!6126542 () Bool)

(assert (=> b!5076675 m!6126542))

(declare-fun m!6126544 () Bool)

(assert (=> b!5076677 m!6126544))

(assert (=> b!5076657 d!1640018))

(declare-fun d!1640020 () Bool)

(declare-fun res!2161422 () Bool)

(declare-fun e!3167192 () Bool)

(assert (=> d!1640020 (=> res!2161422 e!3167192)))

(assert (=> d!1640020 (= res!2161422 (not ((_ is Node!15578) xs!286)))))

(assert (=> d!1640020 (= (isBalanced!4440 xs!286) e!3167192)))

(declare-fun b!5076706 () Bool)

(declare-fun res!2161420 () Bool)

(declare-fun e!3167191 () Bool)

(assert (=> b!5076706 (=> (not res!2161420) (not e!3167191))))

(assert (=> b!5076706 (= res!2161420 (isBalanced!4440 (right!43167 xs!286)))))

(declare-fun b!5076707 () Bool)

(declare-fun res!2161418 () Bool)

(assert (=> b!5076707 (=> (not res!2161418) (not e!3167191))))

(assert (=> b!5076707 (= res!2161418 (isBalanced!4440 (left!42837 xs!286)))))

(declare-fun b!5076708 () Bool)

(declare-fun isEmpty!31658 (Conc!15578) Bool)

(assert (=> b!5076708 (= e!3167191 (not (isEmpty!31658 (right!43167 xs!286))))))

(declare-fun b!5076709 () Bool)

(declare-fun res!2161419 () Bool)

(assert (=> b!5076709 (=> (not res!2161419) (not e!3167191))))

(assert (=> b!5076709 (= res!2161419 (not (isEmpty!31658 (left!42837 xs!286))))))

(declare-fun b!5076710 () Bool)

(declare-fun res!2161421 () Bool)

(assert (=> b!5076710 (=> (not res!2161421) (not e!3167191))))

(assert (=> b!5076710 (= res!2161421 (<= (- (height!2155 (left!42837 xs!286)) (height!2155 (right!43167 xs!286))) 1))))

(declare-fun b!5076711 () Bool)

(assert (=> b!5076711 (= e!3167192 e!3167191)))

(declare-fun res!2161423 () Bool)

(assert (=> b!5076711 (=> (not res!2161423) (not e!3167191))))

(assert (=> b!5076711 (= res!2161423 (<= (- 1) (- (height!2155 (left!42837 xs!286)) (height!2155 (right!43167 xs!286)))))))

(assert (= (and d!1640020 (not res!2161422)) b!5076711))

(assert (= (and b!5076711 res!2161423) b!5076710))

(assert (= (and b!5076710 res!2161421) b!5076707))

(assert (= (and b!5076707 res!2161418) b!5076706))

(assert (= (and b!5076706 res!2161420) b!5076709))

(assert (= (and b!5076709 res!2161419) b!5076708))

(declare-fun m!6126554 () Bool)

(assert (=> b!5076708 m!6126554))

(declare-fun m!6126556 () Bool)

(assert (=> b!5076707 m!6126556))

(declare-fun m!6126558 () Bool)

(assert (=> b!5076706 m!6126558))

(declare-fun m!6126560 () Bool)

(assert (=> b!5076710 m!6126560))

(declare-fun m!6126562 () Bool)

(assert (=> b!5076710 m!6126562))

(assert (=> b!5076711 m!6126560))

(assert (=> b!5076711 m!6126562))

(declare-fun m!6126564 () Bool)

(assert (=> b!5076709 m!6126564))

(assert (=> start!535538 d!1640020))

(declare-fun d!1640030 () Bool)

(declare-fun c!871834 () Bool)

(assert (=> d!1640030 (= c!871834 ((_ is Node!15578) xs!286))))

(declare-fun e!3167193 () Bool)

(assert (=> d!1640030 (= (inv!77633 xs!286) e!3167193)))

(declare-fun b!5076720 () Bool)

(assert (=> b!5076720 (= e!3167193 (inv!77634 xs!286))))

(declare-fun b!5076721 () Bool)

(declare-fun e!3167194 () Bool)

(assert (=> b!5076721 (= e!3167193 e!3167194)))

(declare-fun res!2161430 () Bool)

(assert (=> b!5076721 (= res!2161430 (not ((_ is Leaf!25872) xs!286)))))

(assert (=> b!5076721 (=> res!2161430 e!3167194)))

(declare-fun b!5076722 () Bool)

(assert (=> b!5076722 (= e!3167194 (inv!77635 xs!286))))

(assert (= (and d!1640030 c!871834) b!5076720))

(assert (= (and d!1640030 (not c!871834)) b!5076721))

(assert (= (and b!5076721 (not res!2161430)) b!5076722))

(declare-fun m!6126566 () Bool)

(assert (=> b!5076720 m!6126566))

(declare-fun m!6126568 () Bool)

(assert (=> b!5076722 m!6126568))

(assert (=> start!535538 d!1640030))

(declare-fun d!1640032 () Bool)

(declare-fun c!871835 () Bool)

(assert (=> d!1640032 (= c!871835 ((_ is Node!15578) ys!41))))

(declare-fun e!3167195 () Bool)

(assert (=> d!1640032 (= (inv!77633 ys!41) e!3167195)))

(declare-fun b!5076723 () Bool)

(assert (=> b!5076723 (= e!3167195 (inv!77634 ys!41))))

(declare-fun b!5076724 () Bool)

(declare-fun e!3167196 () Bool)

(assert (=> b!5076724 (= e!3167195 e!3167196)))

(declare-fun res!2161431 () Bool)

(assert (=> b!5076724 (= res!2161431 (not ((_ is Leaf!25872) ys!41)))))

(assert (=> b!5076724 (=> res!2161431 e!3167196)))

(declare-fun b!5076725 () Bool)

(assert (=> b!5076725 (= e!3167196 (inv!77635 ys!41))))

(assert (= (and d!1640032 c!871835) b!5076723))

(assert (= (and d!1640032 (not c!871835)) b!5076724))

(assert (= (and b!5076724 (not res!2161431)) b!5076725))

(declare-fun m!6126570 () Bool)

(assert (=> b!5076723 m!6126570))

(declare-fun m!6126572 () Bool)

(assert (=> b!5076725 m!6126572))

(assert (=> start!535538 d!1640032))

(declare-fun d!1640034 () Bool)

(declare-fun c!871836 () Bool)

(assert (=> d!1640034 (= c!871836 ((_ is Node!15578) (left!42837 xs!286)))))

(declare-fun e!3167197 () Bool)

(assert (=> d!1640034 (= (inv!77633 (left!42837 xs!286)) e!3167197)))

(declare-fun b!5076726 () Bool)

(assert (=> b!5076726 (= e!3167197 (inv!77634 (left!42837 xs!286)))))

(declare-fun b!5076727 () Bool)

(declare-fun e!3167198 () Bool)

(assert (=> b!5076727 (= e!3167197 e!3167198)))

(declare-fun res!2161432 () Bool)

(assert (=> b!5076727 (= res!2161432 (not ((_ is Leaf!25872) (left!42837 xs!286))))))

(assert (=> b!5076727 (=> res!2161432 e!3167198)))

(declare-fun b!5076728 () Bool)

(assert (=> b!5076728 (= e!3167198 (inv!77635 (left!42837 xs!286)))))

(assert (= (and d!1640034 c!871836) b!5076726))

(assert (= (and d!1640034 (not c!871836)) b!5076727))

(assert (= (and b!5076727 (not res!2161432)) b!5076728))

(declare-fun m!6126574 () Bool)

(assert (=> b!5076726 m!6126574))

(declare-fun m!6126576 () Bool)

(assert (=> b!5076728 m!6126576))

(assert (=> b!5076661 d!1640034))

(declare-fun d!1640036 () Bool)

(declare-fun c!871837 () Bool)

(assert (=> d!1640036 (= c!871837 ((_ is Node!15578) (right!43167 xs!286)))))

(declare-fun e!3167199 () Bool)

(assert (=> d!1640036 (= (inv!77633 (right!43167 xs!286)) e!3167199)))

(declare-fun b!5076729 () Bool)

(assert (=> b!5076729 (= e!3167199 (inv!77634 (right!43167 xs!286)))))

(declare-fun b!5076730 () Bool)

(declare-fun e!3167200 () Bool)

(assert (=> b!5076730 (= e!3167199 e!3167200)))

(declare-fun res!2161433 () Bool)

(assert (=> b!5076730 (= res!2161433 (not ((_ is Leaf!25872) (right!43167 xs!286))))))

(assert (=> b!5076730 (=> res!2161433 e!3167200)))

(declare-fun b!5076731 () Bool)

(assert (=> b!5076731 (= e!3167200 (inv!77635 (right!43167 xs!286)))))

(assert (= (and d!1640036 c!871837) b!5076729))

(assert (= (and d!1640036 (not c!871837)) b!5076730))

(assert (= (and b!5076730 (not res!2161433)) b!5076731))

(declare-fun m!6126578 () Bool)

(assert (=> b!5076729 m!6126578))

(declare-fun m!6126580 () Bool)

(assert (=> b!5076731 m!6126580))

(assert (=> b!5076661 d!1640036))

(declare-fun d!1640038 () Bool)

(declare-fun size!39102 (List!58572) Int)

(assert (=> d!1640038 (= (inv!77632 (xs!18944 xs!286)) (<= (size!39102 (innerList!15666 (xs!18944 xs!286))) 2147483647))))

(declare-fun bs!1190438 () Bool)

(assert (= bs!1190438 d!1640038))

(declare-fun m!6126584 () Bool)

(assert (=> bs!1190438 m!6126584))

(assert (=> b!5076656 d!1640038))

(declare-fun d!1640040 () Bool)

(declare-fun res!2161444 () Bool)

(declare-fun e!3167204 () Bool)

(assert (=> d!1640040 (=> res!2161444 e!3167204)))

(assert (=> d!1640040 (= res!2161444 (not ((_ is Node!15578) ys!41)))))

(assert (=> d!1640040 (= (isBalanced!4440 ys!41) e!3167204)))

(declare-fun b!5076738 () Bool)

(declare-fun res!2161442 () Bool)

(declare-fun e!3167203 () Bool)

(assert (=> b!5076738 (=> (not res!2161442) (not e!3167203))))

(assert (=> b!5076738 (= res!2161442 (isBalanced!4440 (right!43167 ys!41)))))

(declare-fun b!5076739 () Bool)

(declare-fun res!2161440 () Bool)

(assert (=> b!5076739 (=> (not res!2161440) (not e!3167203))))

(assert (=> b!5076739 (= res!2161440 (isBalanced!4440 (left!42837 ys!41)))))

(declare-fun b!5076740 () Bool)

(assert (=> b!5076740 (= e!3167203 (not (isEmpty!31658 (right!43167 ys!41))))))

(declare-fun b!5076741 () Bool)

(declare-fun res!2161441 () Bool)

(assert (=> b!5076741 (=> (not res!2161441) (not e!3167203))))

(assert (=> b!5076741 (= res!2161441 (not (isEmpty!31658 (left!42837 ys!41))))))

(declare-fun b!5076742 () Bool)

(declare-fun res!2161443 () Bool)

(assert (=> b!5076742 (=> (not res!2161443) (not e!3167203))))

(assert (=> b!5076742 (= res!2161443 (<= (- (height!2155 (left!42837 ys!41)) (height!2155 (right!43167 ys!41))) 1))))

(declare-fun b!5076743 () Bool)

(assert (=> b!5076743 (= e!3167204 e!3167203)))

(declare-fun res!2161445 () Bool)

(assert (=> b!5076743 (=> (not res!2161445) (not e!3167203))))

(assert (=> b!5076743 (= res!2161445 (<= (- 1) (- (height!2155 (left!42837 ys!41)) (height!2155 (right!43167 ys!41)))))))

(assert (= (and d!1640040 (not res!2161444)) b!5076743))

(assert (= (and b!5076743 res!2161445) b!5076742))

(assert (= (and b!5076742 res!2161443) b!5076739))

(assert (= (and b!5076739 res!2161440) b!5076738))

(assert (= (and b!5076738 res!2161442) b!5076741))

(assert (= (and b!5076741 res!2161441) b!5076740))

(declare-fun m!6126600 () Bool)

(assert (=> b!5076740 m!6126600))

(declare-fun m!6126602 () Bool)

(assert (=> b!5076739 m!6126602))

(declare-fun m!6126604 () Bool)

(assert (=> b!5076738 m!6126604))

(assert (=> b!5076742 m!6126508))

(assert (=> b!5076742 m!6126506))

(assert (=> b!5076743 m!6126508))

(assert (=> b!5076743 m!6126506))

(declare-fun m!6126610 () Bool)

(assert (=> b!5076741 m!6126610))

(assert (=> b!5076665 d!1640040))

(declare-fun d!1640048 () Bool)

(assert (=> d!1640048 (= (abs!0 (- lt!2090323 (height!2155 (left!42837 (left!42837 ys!41))))) (ite (<= 0 (- lt!2090323 (height!2155 (left!42837 (left!42837 ys!41))))) (- lt!2090323 (height!2155 (left!42837 (left!42837 ys!41)))) (- (- lt!2090323 (height!2155 (left!42837 (left!42837 ys!41)))))))))

(assert (=> b!5076655 d!1640048))

(declare-fun d!1640056 () Bool)

(assert (=> d!1640056 (= (height!2155 (left!42837 (left!42837 ys!41))) (ite ((_ is Empty!15578) (left!42837 (left!42837 ys!41))) 0 (ite ((_ is Leaf!25872) (left!42837 (left!42837 ys!41))) 1 (cheight!15789 (left!42837 (left!42837 ys!41))))))))

(assert (=> b!5076655 d!1640056))

(declare-fun d!1640058 () Bool)

(assert (=> d!1640058 (= (abs!0 (- lt!2090323 lt!2090325)) (ite (<= 0 (- lt!2090323 lt!2090325)) (- lt!2090323 lt!2090325) (- (- lt!2090323 lt!2090325))))))

(assert (=> b!5076655 d!1640058))

(declare-fun d!1640060 () Bool)

(assert (=> d!1640060 (= (height!2155 (right!43167 ys!41)) (ite ((_ is Empty!15578) (right!43167 ys!41)) 0 (ite ((_ is Leaf!25872) (right!43167 ys!41)) 1 (cheight!15789 (right!43167 ys!41)))))))

(assert (=> b!5076660 d!1640060))

(declare-fun d!1640062 () Bool)

(assert (=> d!1640062 (= (height!2155 (left!42837 ys!41)) (ite ((_ is Empty!15578) (left!42837 ys!41)) 0 (ite ((_ is Leaf!25872) (left!42837 ys!41)) 1 (cheight!15789 (left!42837 ys!41)))))))

(assert (=> b!5076660 d!1640062))

(declare-fun d!1640064 () Bool)

(assert (=> d!1640064 (= (height!2155 xs!286) (ite ((_ is Empty!15578) xs!286) 0 (ite ((_ is Leaf!25872) xs!286) 1 (cheight!15789 xs!286))))))

(assert (=> b!5076658 d!1640064))

(declare-fun d!1640066 () Bool)

(assert (=> d!1640066 (= (height!2155 ys!41) (ite ((_ is Empty!15578) ys!41) 0 (ite ((_ is Leaf!25872) ys!41) 1 (cheight!15789 ys!41))))))

(assert (=> b!5076658 d!1640066))

(declare-fun d!1640068 () Bool)

(assert (=> d!1640068 (= (inv!77632 (xs!18944 ys!41)) (<= (size!39102 (innerList!15666 (xs!18944 ys!41))) 2147483647))))

(declare-fun bs!1190439 () Bool)

(assert (= bs!1190439 d!1640068))

(declare-fun m!6126620 () Bool)

(assert (=> bs!1190439 m!6126620))

(assert (=> b!5076664 d!1640068))

(declare-fun e!3167218 () Bool)

(declare-fun tp!1416523 () Bool)

(declare-fun b!5076767 () Bool)

(declare-fun tp!1416524 () Bool)

(assert (=> b!5076767 (= e!3167218 (and (inv!77633 (left!42837 (left!42837 ys!41))) tp!1416524 (inv!77633 (right!43167 (left!42837 ys!41))) tp!1416523))))

(declare-fun b!5076769 () Bool)

(declare-fun e!3167217 () Bool)

(declare-fun tp!1416522 () Bool)

(assert (=> b!5076769 (= e!3167217 tp!1416522)))

(declare-fun b!5076768 () Bool)

(assert (=> b!5076768 (= e!3167218 (and (inv!77632 (xs!18944 (left!42837 ys!41))) e!3167217))))

(assert (=> b!5076657 (= tp!1416512 (and (inv!77633 (left!42837 ys!41)) e!3167218))))

(assert (= (and b!5076657 ((_ is Node!15578) (left!42837 ys!41))) b!5076767))

(assert (= b!5076768 b!5076769))

(assert (= (and b!5076657 ((_ is Leaf!25872) (left!42837 ys!41))) b!5076768))

(declare-fun m!6126634 () Bool)

(assert (=> b!5076767 m!6126634))

(declare-fun m!6126636 () Bool)

(assert (=> b!5076767 m!6126636))

(declare-fun m!6126638 () Bool)

(assert (=> b!5076768 m!6126638))

(assert (=> b!5076657 m!6126528))

(declare-fun e!3167224 () Bool)

(declare-fun tp!1416529 () Bool)

(declare-fun b!5076777 () Bool)

(declare-fun tp!1416528 () Bool)

(assert (=> b!5076777 (= e!3167224 (and (inv!77633 (left!42837 (right!43167 ys!41))) tp!1416529 (inv!77633 (right!43167 (right!43167 ys!41))) tp!1416528))))

(declare-fun b!5076779 () Bool)

(declare-fun e!3167223 () Bool)

(declare-fun tp!1416527 () Bool)

(assert (=> b!5076779 (= e!3167223 tp!1416527)))

(declare-fun b!5076778 () Bool)

(assert (=> b!5076778 (= e!3167224 (and (inv!77632 (xs!18944 (right!43167 ys!41))) e!3167223))))

(assert (=> b!5076657 (= tp!1416510 (and (inv!77633 (right!43167 ys!41)) e!3167224))))

(assert (= (and b!5076657 ((_ is Node!15578) (right!43167 ys!41))) b!5076777))

(assert (= b!5076778 b!5076779))

(assert (= (and b!5076657 ((_ is Leaf!25872) (right!43167 ys!41))) b!5076778))

(declare-fun m!6126640 () Bool)

(assert (=> b!5076777 m!6126640))

(declare-fun m!6126642 () Bool)

(assert (=> b!5076777 m!6126642))

(declare-fun m!6126644 () Bool)

(assert (=> b!5076778 m!6126644))

(assert (=> b!5076657 m!6126530))

(declare-fun b!5076788 () Bool)

(declare-fun e!3167229 () Bool)

(declare-fun tp_is_empty!37077 () Bool)

(declare-fun tp!1416536 () Bool)

(assert (=> b!5076788 (= e!3167229 (and tp_is_empty!37077 tp!1416536))))

(assert (=> b!5076662 (= tp!1416513 e!3167229)))

(assert (= (and b!5076662 ((_ is Cons!58448) (innerList!15666 (xs!18944 ys!41)))) b!5076788))

(declare-fun b!5076789 () Bool)

(declare-fun tp!1416538 () Bool)

(declare-fun tp!1416539 () Bool)

(declare-fun e!3167231 () Bool)

(assert (=> b!5076789 (= e!3167231 (and (inv!77633 (left!42837 (left!42837 xs!286))) tp!1416539 (inv!77633 (right!43167 (left!42837 xs!286))) tp!1416538))))

(declare-fun b!5076791 () Bool)

(declare-fun e!3167230 () Bool)

(declare-fun tp!1416537 () Bool)

(assert (=> b!5076791 (= e!3167230 tp!1416537)))

(declare-fun b!5076790 () Bool)

(assert (=> b!5076790 (= e!3167231 (and (inv!77632 (xs!18944 (left!42837 xs!286))) e!3167230))))

(assert (=> b!5076661 (= tp!1416514 (and (inv!77633 (left!42837 xs!286)) e!3167231))))

(assert (= (and b!5076661 ((_ is Node!15578) (left!42837 xs!286))) b!5076789))

(assert (= b!5076790 b!5076791))

(assert (= (and b!5076661 ((_ is Leaf!25872) (left!42837 xs!286))) b!5076790))

(declare-fun m!6126646 () Bool)

(assert (=> b!5076789 m!6126646))

(declare-fun m!6126648 () Bool)

(assert (=> b!5076789 m!6126648))

(declare-fun m!6126650 () Bool)

(assert (=> b!5076790 m!6126650))

(assert (=> b!5076661 m!6126518))

(declare-fun tp!1416541 () Bool)

(declare-fun e!3167233 () Bool)

(declare-fun tp!1416542 () Bool)

(declare-fun b!5076792 () Bool)

(assert (=> b!5076792 (= e!3167233 (and (inv!77633 (left!42837 (right!43167 xs!286))) tp!1416542 (inv!77633 (right!43167 (right!43167 xs!286))) tp!1416541))))

(declare-fun b!5076794 () Bool)

(declare-fun e!3167232 () Bool)

(declare-fun tp!1416540 () Bool)

(assert (=> b!5076794 (= e!3167232 tp!1416540)))

(declare-fun b!5076793 () Bool)

(assert (=> b!5076793 (= e!3167233 (and (inv!77632 (xs!18944 (right!43167 xs!286))) e!3167232))))

(assert (=> b!5076661 (= tp!1416511 (and (inv!77633 (right!43167 xs!286)) e!3167233))))

(assert (= (and b!5076661 ((_ is Node!15578) (right!43167 xs!286))) b!5076792))

(assert (= b!5076793 b!5076794))

(assert (= (and b!5076661 ((_ is Leaf!25872) (right!43167 xs!286))) b!5076793))

(declare-fun m!6126652 () Bool)

(assert (=> b!5076792 m!6126652))

(declare-fun m!6126654 () Bool)

(assert (=> b!5076792 m!6126654))

(declare-fun m!6126656 () Bool)

(assert (=> b!5076793 m!6126656))

(assert (=> b!5076661 m!6126520))

(declare-fun b!5076798 () Bool)

(declare-fun e!3167236 () Bool)

(declare-fun tp!1416546 () Bool)

(assert (=> b!5076798 (= e!3167236 (and tp_is_empty!37077 tp!1416546))))

(assert (=> b!5076659 (= tp!1416515 e!3167236)))

(assert (= (and b!5076659 ((_ is Cons!58448) (innerList!15666 (xs!18944 xs!286)))) b!5076798))

(check-sat (not b!5076778) (not b!5076731) (not b!5076739) (not b!5076777) (not b!5076738) (not b!5076657) (not b!5076722) (not b!5076768) (not b!5076728) (not b!5076720) (not b!5076661) (not b!5076706) (not b!5076769) (not b!5076743) (not b!5076767) (not b!5076674) (not b!5076791) (not d!1640038) (not b!5076792) (not b!5076794) (not b!5076711) (not b!5076677) (not b!5076788) (not b!5076790) (not b!5076710) (not b!5076708) (not b!5076675) (not b!5076741) (not b!5076726) (not b!5076789) (not b!5076709) (not b!5076740) (not d!1640068) (not b!5076707) tp_is_empty!37077 (not b!5076779) (not b!5076798) (not b!5076793) (not b!5076672) (not b!5076742) (not b!5076723) (not b!5076729) (not b!5076725))
(check-sat)
(get-model)

(assert (=> b!5076657 d!1640014))

(assert (=> b!5076657 d!1640018))

(declare-fun d!1640082 () Bool)

(declare-fun c!871842 () Bool)

(assert (=> d!1640082 (= c!871842 ((_ is Node!15578) (left!42837 (right!43167 xs!286))))))

(declare-fun e!3167247 () Bool)

(assert (=> d!1640082 (= (inv!77633 (left!42837 (right!43167 xs!286))) e!3167247)))

(declare-fun b!5076814 () Bool)

(assert (=> b!5076814 (= e!3167247 (inv!77634 (left!42837 (right!43167 xs!286))))))

(declare-fun b!5076815 () Bool)

(declare-fun e!3167248 () Bool)

(assert (=> b!5076815 (= e!3167247 e!3167248)))

(declare-fun res!2161456 () Bool)

(assert (=> b!5076815 (= res!2161456 (not ((_ is Leaf!25872) (left!42837 (right!43167 xs!286)))))))

(assert (=> b!5076815 (=> res!2161456 e!3167248)))

(declare-fun b!5076816 () Bool)

(assert (=> b!5076816 (= e!3167248 (inv!77635 (left!42837 (right!43167 xs!286))))))

(assert (= (and d!1640082 c!871842) b!5076814))

(assert (= (and d!1640082 (not c!871842)) b!5076815))

(assert (= (and b!5076815 (not res!2161456)) b!5076816))

(declare-fun m!6126682 () Bool)

(assert (=> b!5076814 m!6126682))

(declare-fun m!6126684 () Bool)

(assert (=> b!5076816 m!6126684))

(assert (=> b!5076792 d!1640082))

(declare-fun d!1640084 () Bool)

(declare-fun c!871843 () Bool)

(assert (=> d!1640084 (= c!871843 ((_ is Node!15578) (right!43167 (right!43167 xs!286))))))

(declare-fun e!3167249 () Bool)

(assert (=> d!1640084 (= (inv!77633 (right!43167 (right!43167 xs!286))) e!3167249)))

(declare-fun b!5076817 () Bool)

(assert (=> b!5076817 (= e!3167249 (inv!77634 (right!43167 (right!43167 xs!286))))))

(declare-fun b!5076818 () Bool)

(declare-fun e!3167250 () Bool)

(assert (=> b!5076818 (= e!3167249 e!3167250)))

(declare-fun res!2161457 () Bool)

(assert (=> b!5076818 (= res!2161457 (not ((_ is Leaf!25872) (right!43167 (right!43167 xs!286)))))))

(assert (=> b!5076818 (=> res!2161457 e!3167250)))

(declare-fun b!5076819 () Bool)

(assert (=> b!5076819 (= e!3167250 (inv!77635 (right!43167 (right!43167 xs!286))))))

(assert (= (and d!1640084 c!871843) b!5076817))

(assert (= (and d!1640084 (not c!871843)) b!5076818))

(assert (= (and b!5076818 (not res!2161457)) b!5076819))

(declare-fun m!6126686 () Bool)

(assert (=> b!5076817 m!6126686))

(declare-fun m!6126688 () Bool)

(assert (=> b!5076819 m!6126688))

(assert (=> b!5076792 d!1640084))

(declare-fun d!1640086 () Bool)

(declare-fun res!2161464 () Bool)

(declare-fun e!3167253 () Bool)

(assert (=> d!1640086 (=> (not res!2161464) (not e!3167253))))

(declare-fun size!39104 (Conc!15578) Int)

(assert (=> d!1640086 (= res!2161464 (= (csize!31386 (right!43167 xs!286)) (+ (size!39104 (left!42837 (right!43167 xs!286))) (size!39104 (right!43167 (right!43167 xs!286))))))))

(assert (=> d!1640086 (= (inv!77634 (right!43167 xs!286)) e!3167253)))

(declare-fun b!5076826 () Bool)

(declare-fun res!2161465 () Bool)

(assert (=> b!5076826 (=> (not res!2161465) (not e!3167253))))

(assert (=> b!5076826 (= res!2161465 (and (not (= (left!42837 (right!43167 xs!286)) Empty!15578)) (not (= (right!43167 (right!43167 xs!286)) Empty!15578))))))

(declare-fun b!5076827 () Bool)

(declare-fun res!2161466 () Bool)

(assert (=> b!5076827 (=> (not res!2161466) (not e!3167253))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5076827 (= res!2161466 (= (cheight!15789 (right!43167 xs!286)) (+ (max!0 (height!2155 (left!42837 (right!43167 xs!286))) (height!2155 (right!43167 (right!43167 xs!286)))) 1)))))

(declare-fun b!5076828 () Bool)

(assert (=> b!5076828 (= e!3167253 (<= 0 (cheight!15789 (right!43167 xs!286))))))

(assert (= (and d!1640086 res!2161464) b!5076826))

(assert (= (and b!5076826 res!2161465) b!5076827))

(assert (= (and b!5076827 res!2161466) b!5076828))

(declare-fun m!6126690 () Bool)

(assert (=> d!1640086 m!6126690))

(declare-fun m!6126692 () Bool)

(assert (=> d!1640086 m!6126692))

(declare-fun m!6126694 () Bool)

(assert (=> b!5076827 m!6126694))

(declare-fun m!6126696 () Bool)

(assert (=> b!5076827 m!6126696))

(assert (=> b!5076827 m!6126694))

(assert (=> b!5076827 m!6126696))

(declare-fun m!6126698 () Bool)

(assert (=> b!5076827 m!6126698))

(assert (=> b!5076729 d!1640086))

(declare-fun d!1640088 () Bool)

(declare-fun res!2161467 () Bool)

(declare-fun e!3167254 () Bool)

(assert (=> d!1640088 (=> (not res!2161467) (not e!3167254))))

(assert (=> d!1640088 (= res!2161467 (= (csize!31386 (right!43167 ys!41)) (+ (size!39104 (left!42837 (right!43167 ys!41))) (size!39104 (right!43167 (right!43167 ys!41))))))))

(assert (=> d!1640088 (= (inv!77634 (right!43167 ys!41)) e!3167254)))

(declare-fun b!5076829 () Bool)

(declare-fun res!2161468 () Bool)

(assert (=> b!5076829 (=> (not res!2161468) (not e!3167254))))

(assert (=> b!5076829 (= res!2161468 (and (not (= (left!42837 (right!43167 ys!41)) Empty!15578)) (not (= (right!43167 (right!43167 ys!41)) Empty!15578))))))

(declare-fun b!5076830 () Bool)

(declare-fun res!2161469 () Bool)

(assert (=> b!5076830 (=> (not res!2161469) (not e!3167254))))

(assert (=> b!5076830 (= res!2161469 (= (cheight!15789 (right!43167 ys!41)) (+ (max!0 (height!2155 (left!42837 (right!43167 ys!41))) (height!2155 (right!43167 (right!43167 ys!41)))) 1)))))

(declare-fun b!5076831 () Bool)

(assert (=> b!5076831 (= e!3167254 (<= 0 (cheight!15789 (right!43167 ys!41))))))

(assert (= (and d!1640088 res!2161467) b!5076829))

(assert (= (and b!5076829 res!2161468) b!5076830))

(assert (= (and b!5076830 res!2161469) b!5076831))

(declare-fun m!6126700 () Bool)

(assert (=> d!1640088 m!6126700))

(declare-fun m!6126702 () Bool)

(assert (=> d!1640088 m!6126702))

(declare-fun m!6126704 () Bool)

(assert (=> b!5076830 m!6126704))

(declare-fun m!6126706 () Bool)

(assert (=> b!5076830 m!6126706))

(assert (=> b!5076830 m!6126704))

(assert (=> b!5076830 m!6126706))

(declare-fun m!6126708 () Bool)

(assert (=> b!5076830 m!6126708))

(assert (=> b!5076675 d!1640088))

(declare-fun d!1640090 () Bool)

(declare-fun res!2161474 () Bool)

(declare-fun e!3167257 () Bool)

(assert (=> d!1640090 (=> (not res!2161474) (not e!3167257))))

(declare-fun list!19016 (IArray!31217) List!58572)

(assert (=> d!1640090 (= res!2161474 (<= (size!39102 (list!19016 (xs!18944 ys!41))) 512))))

(assert (=> d!1640090 (= (inv!77635 ys!41) e!3167257)))

(declare-fun b!5076836 () Bool)

(declare-fun res!2161475 () Bool)

(assert (=> b!5076836 (=> (not res!2161475) (not e!3167257))))

(assert (=> b!5076836 (= res!2161475 (= (csize!31387 ys!41) (size!39102 (list!19016 (xs!18944 ys!41)))))))

(declare-fun b!5076837 () Bool)

(assert (=> b!5076837 (= e!3167257 (and (> (csize!31387 ys!41) 0) (<= (csize!31387 ys!41) 512)))))

(assert (= (and d!1640090 res!2161474) b!5076836))

(assert (= (and b!5076836 res!2161475) b!5076837))

(declare-fun m!6126710 () Bool)

(assert (=> d!1640090 m!6126710))

(assert (=> d!1640090 m!6126710))

(declare-fun m!6126712 () Bool)

(assert (=> d!1640090 m!6126712))

(assert (=> b!5076836 m!6126710))

(assert (=> b!5076836 m!6126710))

(assert (=> b!5076836 m!6126712))

(assert (=> b!5076725 d!1640090))

(declare-fun d!1640092 () Bool)

(declare-fun res!2161476 () Bool)

(declare-fun e!3167258 () Bool)

(assert (=> d!1640092 (=> (not res!2161476) (not e!3167258))))

(assert (=> d!1640092 (= res!2161476 (<= (size!39102 (list!19016 (xs!18944 xs!286))) 512))))

(assert (=> d!1640092 (= (inv!77635 xs!286) e!3167258)))

(declare-fun b!5076838 () Bool)

(declare-fun res!2161477 () Bool)

(assert (=> b!5076838 (=> (not res!2161477) (not e!3167258))))

(assert (=> b!5076838 (= res!2161477 (= (csize!31387 xs!286) (size!39102 (list!19016 (xs!18944 xs!286)))))))

(declare-fun b!5076839 () Bool)

(assert (=> b!5076839 (= e!3167258 (and (> (csize!31387 xs!286) 0) (<= (csize!31387 xs!286) 512)))))

(assert (= (and d!1640092 res!2161476) b!5076838))

(assert (= (and b!5076838 res!2161477) b!5076839))

(declare-fun m!6126714 () Bool)

(assert (=> d!1640092 m!6126714))

(assert (=> d!1640092 m!6126714))

(declare-fun m!6126716 () Bool)

(assert (=> d!1640092 m!6126716))

(assert (=> b!5076838 m!6126714))

(assert (=> b!5076838 m!6126714))

(assert (=> b!5076838 m!6126716))

(assert (=> b!5076722 d!1640092))

(declare-fun d!1640094 () Bool)

(declare-fun lt!2090328 () Bool)

(declare-fun isEmpty!31660 (List!58572) Bool)

(declare-fun list!19017 (Conc!15578) List!58572)

(assert (=> d!1640094 (= lt!2090328 (isEmpty!31660 (list!19017 (right!43167 ys!41))))))

(assert (=> d!1640094 (= lt!2090328 (= (size!39104 (right!43167 ys!41)) 0))))

(assert (=> d!1640094 (= (isEmpty!31658 (right!43167 ys!41)) lt!2090328)))

(declare-fun bs!1190442 () Bool)

(assert (= bs!1190442 d!1640094))

(declare-fun m!6126718 () Bool)

(assert (=> bs!1190442 m!6126718))

(assert (=> bs!1190442 m!6126718))

(declare-fun m!6126720 () Bool)

(assert (=> bs!1190442 m!6126720))

(declare-fun m!6126722 () Bool)

(assert (=> bs!1190442 m!6126722))

(assert (=> b!5076740 d!1640094))

(assert (=> b!5076661 d!1640034))

(assert (=> b!5076661 d!1640036))

(declare-fun d!1640096 () Bool)

(declare-fun res!2161482 () Bool)

(declare-fun e!3167260 () Bool)

(assert (=> d!1640096 (=> res!2161482 e!3167260)))

(assert (=> d!1640096 (= res!2161482 (not ((_ is Node!15578) (right!43167 ys!41))))))

(assert (=> d!1640096 (= (isBalanced!4440 (right!43167 ys!41)) e!3167260)))

(declare-fun b!5076840 () Bool)

(declare-fun res!2161480 () Bool)

(declare-fun e!3167259 () Bool)

(assert (=> b!5076840 (=> (not res!2161480) (not e!3167259))))

(assert (=> b!5076840 (= res!2161480 (isBalanced!4440 (right!43167 (right!43167 ys!41))))))

(declare-fun b!5076841 () Bool)

(declare-fun res!2161478 () Bool)

(assert (=> b!5076841 (=> (not res!2161478) (not e!3167259))))

(assert (=> b!5076841 (= res!2161478 (isBalanced!4440 (left!42837 (right!43167 ys!41))))))

(declare-fun b!5076842 () Bool)

(assert (=> b!5076842 (= e!3167259 (not (isEmpty!31658 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5076843 () Bool)

(declare-fun res!2161479 () Bool)

(assert (=> b!5076843 (=> (not res!2161479) (not e!3167259))))

(assert (=> b!5076843 (= res!2161479 (not (isEmpty!31658 (left!42837 (right!43167 ys!41)))))))

(declare-fun b!5076844 () Bool)

(declare-fun res!2161481 () Bool)

(assert (=> b!5076844 (=> (not res!2161481) (not e!3167259))))

(assert (=> b!5076844 (= res!2161481 (<= (- (height!2155 (left!42837 (right!43167 ys!41))) (height!2155 (right!43167 (right!43167 ys!41)))) 1))))

(declare-fun b!5076845 () Bool)

(assert (=> b!5076845 (= e!3167260 e!3167259)))

(declare-fun res!2161483 () Bool)

(assert (=> b!5076845 (=> (not res!2161483) (not e!3167259))))

(assert (=> b!5076845 (= res!2161483 (<= (- 1) (- (height!2155 (left!42837 (right!43167 ys!41))) (height!2155 (right!43167 (right!43167 ys!41))))))))

(assert (= (and d!1640096 (not res!2161482)) b!5076845))

(assert (= (and b!5076845 res!2161483) b!5076844))

(assert (= (and b!5076844 res!2161481) b!5076841))

(assert (= (and b!5076841 res!2161478) b!5076840))

(assert (= (and b!5076840 res!2161480) b!5076843))

(assert (= (and b!5076843 res!2161479) b!5076842))

(declare-fun m!6126724 () Bool)

(assert (=> b!5076842 m!6126724))

(declare-fun m!6126726 () Bool)

(assert (=> b!5076841 m!6126726))

(declare-fun m!6126728 () Bool)

(assert (=> b!5076840 m!6126728))

(assert (=> b!5076844 m!6126704))

(assert (=> b!5076844 m!6126706))

(assert (=> b!5076845 m!6126704))

(assert (=> b!5076845 m!6126706))

(declare-fun m!6126730 () Bool)

(assert (=> b!5076843 m!6126730))

(assert (=> b!5076738 d!1640096))

(declare-fun d!1640098 () Bool)

(declare-fun res!2161488 () Bool)

(declare-fun e!3167262 () Bool)

(assert (=> d!1640098 (=> res!2161488 e!3167262)))

(assert (=> d!1640098 (= res!2161488 (not ((_ is Node!15578) (left!42837 ys!41))))))

(assert (=> d!1640098 (= (isBalanced!4440 (left!42837 ys!41)) e!3167262)))

(declare-fun b!5076846 () Bool)

(declare-fun res!2161486 () Bool)

(declare-fun e!3167261 () Bool)

(assert (=> b!5076846 (=> (not res!2161486) (not e!3167261))))

(assert (=> b!5076846 (= res!2161486 (isBalanced!4440 (right!43167 (left!42837 ys!41))))))

(declare-fun b!5076847 () Bool)

(declare-fun res!2161484 () Bool)

(assert (=> b!5076847 (=> (not res!2161484) (not e!3167261))))

(assert (=> b!5076847 (= res!2161484 (isBalanced!4440 (left!42837 (left!42837 ys!41))))))

(declare-fun b!5076848 () Bool)

(assert (=> b!5076848 (= e!3167261 (not (isEmpty!31658 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5076849 () Bool)

(declare-fun res!2161485 () Bool)

(assert (=> b!5076849 (=> (not res!2161485) (not e!3167261))))

(assert (=> b!5076849 (= res!2161485 (not (isEmpty!31658 (left!42837 (left!42837 ys!41)))))))

(declare-fun b!5076850 () Bool)

(declare-fun res!2161487 () Bool)

(assert (=> b!5076850 (=> (not res!2161487) (not e!3167261))))

(assert (=> b!5076850 (= res!2161487 (<= (- (height!2155 (left!42837 (left!42837 ys!41))) (height!2155 (right!43167 (left!42837 ys!41)))) 1))))

(declare-fun b!5076851 () Bool)

(assert (=> b!5076851 (= e!3167262 e!3167261)))

(declare-fun res!2161489 () Bool)

(assert (=> b!5076851 (=> (not res!2161489) (not e!3167261))))

(assert (=> b!5076851 (= res!2161489 (<= (- 1) (- (height!2155 (left!42837 (left!42837 ys!41))) (height!2155 (right!43167 (left!42837 ys!41))))))))

(assert (= (and d!1640098 (not res!2161488)) b!5076851))

(assert (= (and b!5076851 res!2161489) b!5076850))

(assert (= (and b!5076850 res!2161487) b!5076847))

(assert (= (and b!5076847 res!2161484) b!5076846))

(assert (= (and b!5076846 res!2161486) b!5076849))

(assert (= (and b!5076849 res!2161485) b!5076848))

(declare-fun m!6126732 () Bool)

(assert (=> b!5076848 m!6126732))

(declare-fun m!6126734 () Bool)

(assert (=> b!5076847 m!6126734))

(declare-fun m!6126736 () Bool)

(assert (=> b!5076846 m!6126736))

(assert (=> b!5076850 m!6126532))

(declare-fun m!6126738 () Bool)

(assert (=> b!5076850 m!6126738))

(assert (=> b!5076851 m!6126532))

(assert (=> b!5076851 m!6126738))

(declare-fun m!6126740 () Bool)

(assert (=> b!5076849 m!6126740))

(assert (=> b!5076739 d!1640098))

(declare-fun d!1640100 () Bool)

(declare-fun res!2161490 () Bool)

(declare-fun e!3167263 () Bool)

(assert (=> d!1640100 (=> (not res!2161490) (not e!3167263))))

(assert (=> d!1640100 (= res!2161490 (= (csize!31386 xs!286) (+ (size!39104 (left!42837 xs!286)) (size!39104 (right!43167 xs!286)))))))

(assert (=> d!1640100 (= (inv!77634 xs!286) e!3167263)))

(declare-fun b!5076852 () Bool)

(declare-fun res!2161491 () Bool)

(assert (=> b!5076852 (=> (not res!2161491) (not e!3167263))))

(assert (=> b!5076852 (= res!2161491 (and (not (= (left!42837 xs!286) Empty!15578)) (not (= (right!43167 xs!286) Empty!15578))))))

(declare-fun b!5076853 () Bool)

(declare-fun res!2161492 () Bool)

(assert (=> b!5076853 (=> (not res!2161492) (not e!3167263))))

(assert (=> b!5076853 (= res!2161492 (= (cheight!15789 xs!286) (+ (max!0 (height!2155 (left!42837 xs!286)) (height!2155 (right!43167 xs!286))) 1)))))

(declare-fun b!5076854 () Bool)

(assert (=> b!5076854 (= e!3167263 (<= 0 (cheight!15789 xs!286)))))

(assert (= (and d!1640100 res!2161490) b!5076852))

(assert (= (and b!5076852 res!2161491) b!5076853))

(assert (= (and b!5076853 res!2161492) b!5076854))

(declare-fun m!6126742 () Bool)

(assert (=> d!1640100 m!6126742))

(declare-fun m!6126744 () Bool)

(assert (=> d!1640100 m!6126744))

(assert (=> b!5076853 m!6126560))

(assert (=> b!5076853 m!6126562))

(assert (=> b!5076853 m!6126560))

(assert (=> b!5076853 m!6126562))

(declare-fun m!6126746 () Bool)

(assert (=> b!5076853 m!6126746))

(assert (=> b!5076720 d!1640100))

(declare-fun d!1640102 () Bool)

(declare-fun res!2161493 () Bool)

(declare-fun e!3167264 () Bool)

(assert (=> d!1640102 (=> (not res!2161493) (not e!3167264))))

(assert (=> d!1640102 (= res!2161493 (<= (size!39102 (list!19016 (xs!18944 (right!43167 xs!286)))) 512))))

(assert (=> d!1640102 (= (inv!77635 (right!43167 xs!286)) e!3167264)))

(declare-fun b!5076855 () Bool)

(declare-fun res!2161494 () Bool)

(assert (=> b!5076855 (=> (not res!2161494) (not e!3167264))))

(assert (=> b!5076855 (= res!2161494 (= (csize!31387 (right!43167 xs!286)) (size!39102 (list!19016 (xs!18944 (right!43167 xs!286))))))))

(declare-fun b!5076856 () Bool)

(assert (=> b!5076856 (= e!3167264 (and (> (csize!31387 (right!43167 xs!286)) 0) (<= (csize!31387 (right!43167 xs!286)) 512)))))

(assert (= (and d!1640102 res!2161493) b!5076855))

(assert (= (and b!5076855 res!2161494) b!5076856))

(declare-fun m!6126748 () Bool)

(assert (=> d!1640102 m!6126748))

(assert (=> d!1640102 m!6126748))

(declare-fun m!6126750 () Bool)

(assert (=> d!1640102 m!6126750))

(assert (=> b!5076855 m!6126748))

(assert (=> b!5076855 m!6126748))

(assert (=> b!5076855 m!6126750))

(assert (=> b!5076731 d!1640102))

(declare-fun d!1640104 () Bool)

(declare-fun res!2161495 () Bool)

(declare-fun e!3167265 () Bool)

(assert (=> d!1640104 (=> (not res!2161495) (not e!3167265))))

(assert (=> d!1640104 (= res!2161495 (<= (size!39102 (list!19016 (xs!18944 (right!43167 ys!41)))) 512))))

(assert (=> d!1640104 (= (inv!77635 (right!43167 ys!41)) e!3167265)))

(declare-fun b!5076857 () Bool)

(declare-fun res!2161496 () Bool)

(assert (=> b!5076857 (=> (not res!2161496) (not e!3167265))))

(assert (=> b!5076857 (= res!2161496 (= (csize!31387 (right!43167 ys!41)) (size!39102 (list!19016 (xs!18944 (right!43167 ys!41))))))))

(declare-fun b!5076858 () Bool)

(assert (=> b!5076858 (= e!3167265 (and (> (csize!31387 (right!43167 ys!41)) 0) (<= (csize!31387 (right!43167 ys!41)) 512)))))

(assert (= (and d!1640104 res!2161495) b!5076857))

(assert (= (and b!5076857 res!2161496) b!5076858))

(declare-fun m!6126752 () Bool)

(assert (=> d!1640104 m!6126752))

(assert (=> d!1640104 m!6126752))

(declare-fun m!6126754 () Bool)

(assert (=> d!1640104 m!6126754))

(assert (=> b!5076857 m!6126752))

(assert (=> b!5076857 m!6126752))

(assert (=> b!5076857 m!6126754))

(assert (=> b!5076677 d!1640104))

(declare-fun d!1640106 () Bool)

(assert (=> d!1640106 (= (inv!77632 (xs!18944 (right!43167 xs!286))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 xs!286)))) 2147483647))))

(declare-fun bs!1190443 () Bool)

(assert (= bs!1190443 d!1640106))

(declare-fun m!6126756 () Bool)

(assert (=> bs!1190443 m!6126756))

(assert (=> b!5076793 d!1640106))

(declare-fun d!1640108 () Bool)

(declare-fun lt!2090329 () Bool)

(assert (=> d!1640108 (= lt!2090329 (isEmpty!31660 (list!19017 (left!42837 xs!286))))))

(assert (=> d!1640108 (= lt!2090329 (= (size!39104 (left!42837 xs!286)) 0))))

(assert (=> d!1640108 (= (isEmpty!31658 (left!42837 xs!286)) lt!2090329)))

(declare-fun bs!1190444 () Bool)

(assert (= bs!1190444 d!1640108))

(declare-fun m!6126758 () Bool)

(assert (=> bs!1190444 m!6126758))

(assert (=> bs!1190444 m!6126758))

(declare-fun m!6126760 () Bool)

(assert (=> bs!1190444 m!6126760))

(assert (=> bs!1190444 m!6126742))

(assert (=> b!5076709 d!1640108))

(declare-fun d!1640110 () Bool)

(assert (=> d!1640110 (= (inv!77632 (xs!18944 (right!43167 ys!41))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 ys!41)))) 2147483647))))

(declare-fun bs!1190445 () Bool)

(assert (= bs!1190445 d!1640110))

(declare-fun m!6126762 () Bool)

(assert (=> bs!1190445 m!6126762))

(assert (=> b!5076778 d!1640110))

(declare-fun d!1640112 () Bool)

(assert (=> d!1640112 (= (inv!77632 (xs!18944 (left!42837 xs!286))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 xs!286)))) 2147483647))))

(declare-fun bs!1190446 () Bool)

(assert (= bs!1190446 d!1640112))

(declare-fun m!6126764 () Bool)

(assert (=> bs!1190446 m!6126764))

(assert (=> b!5076790 d!1640112))

(declare-fun d!1640114 () Bool)

(declare-fun lt!2090330 () Bool)

(assert (=> d!1640114 (= lt!2090330 (isEmpty!31660 (list!19017 (right!43167 xs!286))))))

(assert (=> d!1640114 (= lt!2090330 (= (size!39104 (right!43167 xs!286)) 0))))

(assert (=> d!1640114 (= (isEmpty!31658 (right!43167 xs!286)) lt!2090330)))

(declare-fun bs!1190447 () Bool)

(assert (= bs!1190447 d!1640114))

(declare-fun m!6126766 () Bool)

(assert (=> bs!1190447 m!6126766))

(assert (=> bs!1190447 m!6126766))

(declare-fun m!6126768 () Bool)

(assert (=> bs!1190447 m!6126768))

(assert (=> bs!1190447 m!6126744))

(assert (=> b!5076708 d!1640114))

(declare-fun d!1640116 () Bool)

(declare-fun res!2161497 () Bool)

(declare-fun e!3167266 () Bool)

(assert (=> d!1640116 (=> (not res!2161497) (not e!3167266))))

(assert (=> d!1640116 (= res!2161497 (<= (size!39102 (list!19016 (xs!18944 (left!42837 xs!286)))) 512))))

(assert (=> d!1640116 (= (inv!77635 (left!42837 xs!286)) e!3167266)))

(declare-fun b!5076859 () Bool)

(declare-fun res!2161498 () Bool)

(assert (=> b!5076859 (=> (not res!2161498) (not e!3167266))))

(assert (=> b!5076859 (= res!2161498 (= (csize!31387 (left!42837 xs!286)) (size!39102 (list!19016 (xs!18944 (left!42837 xs!286))))))))

(declare-fun b!5076860 () Bool)

(assert (=> b!5076860 (= e!3167266 (and (> (csize!31387 (left!42837 xs!286)) 0) (<= (csize!31387 (left!42837 xs!286)) 512)))))

(assert (= (and d!1640116 res!2161497) b!5076859))

(assert (= (and b!5076859 res!2161498) b!5076860))

(declare-fun m!6126770 () Bool)

(assert (=> d!1640116 m!6126770))

(assert (=> d!1640116 m!6126770))

(declare-fun m!6126772 () Bool)

(assert (=> d!1640116 m!6126772))

(assert (=> b!5076859 m!6126770))

(assert (=> b!5076859 m!6126770))

(assert (=> b!5076859 m!6126772))

(assert (=> b!5076728 d!1640116))

(declare-fun d!1640118 () Bool)

(declare-fun res!2161499 () Bool)

(declare-fun e!3167267 () Bool)

(assert (=> d!1640118 (=> (not res!2161499) (not e!3167267))))

(assert (=> d!1640118 (= res!2161499 (<= (size!39102 (list!19016 (xs!18944 (left!42837 ys!41)))) 512))))

(assert (=> d!1640118 (= (inv!77635 (left!42837 ys!41)) e!3167267)))

(declare-fun b!5076861 () Bool)

(declare-fun res!2161500 () Bool)

(assert (=> b!5076861 (=> (not res!2161500) (not e!3167267))))

(assert (=> b!5076861 (= res!2161500 (= (csize!31387 (left!42837 ys!41)) (size!39102 (list!19016 (xs!18944 (left!42837 ys!41))))))))

(declare-fun b!5076862 () Bool)

(assert (=> b!5076862 (= e!3167267 (and (> (csize!31387 (left!42837 ys!41)) 0) (<= (csize!31387 (left!42837 ys!41)) 512)))))

(assert (= (and d!1640118 res!2161499) b!5076861))

(assert (= (and b!5076861 res!2161500) b!5076862))

(declare-fun m!6126774 () Bool)

(assert (=> d!1640118 m!6126774))

(assert (=> d!1640118 m!6126774))

(declare-fun m!6126776 () Bool)

(assert (=> d!1640118 m!6126776))

(assert (=> b!5076861 m!6126774))

(assert (=> b!5076861 m!6126774))

(assert (=> b!5076861 m!6126776))

(assert (=> b!5076674 d!1640118))

(declare-fun d!1640120 () Bool)

(declare-fun c!871844 () Bool)

(assert (=> d!1640120 (= c!871844 ((_ is Node!15578) (left!42837 (right!43167 ys!41))))))

(declare-fun e!3167268 () Bool)

(assert (=> d!1640120 (= (inv!77633 (left!42837 (right!43167 ys!41))) e!3167268)))

(declare-fun b!5076863 () Bool)

(assert (=> b!5076863 (= e!3167268 (inv!77634 (left!42837 (right!43167 ys!41))))))

(declare-fun b!5076864 () Bool)

(declare-fun e!3167269 () Bool)

(assert (=> b!5076864 (= e!3167268 e!3167269)))

(declare-fun res!2161501 () Bool)

(assert (=> b!5076864 (= res!2161501 (not ((_ is Leaf!25872) (left!42837 (right!43167 ys!41)))))))

(assert (=> b!5076864 (=> res!2161501 e!3167269)))

(declare-fun b!5076865 () Bool)

(assert (=> b!5076865 (= e!3167269 (inv!77635 (left!42837 (right!43167 ys!41))))))

(assert (= (and d!1640120 c!871844) b!5076863))

(assert (= (and d!1640120 (not c!871844)) b!5076864))

(assert (= (and b!5076864 (not res!2161501)) b!5076865))

(declare-fun m!6126778 () Bool)

(assert (=> b!5076863 m!6126778))

(declare-fun m!6126780 () Bool)

(assert (=> b!5076865 m!6126780))

(assert (=> b!5076777 d!1640120))

(declare-fun d!1640122 () Bool)

(declare-fun c!871845 () Bool)

(assert (=> d!1640122 (= c!871845 ((_ is Node!15578) (right!43167 (right!43167 ys!41))))))

(declare-fun e!3167270 () Bool)

(assert (=> d!1640122 (= (inv!77633 (right!43167 (right!43167 ys!41))) e!3167270)))

(declare-fun b!5076866 () Bool)

(assert (=> b!5076866 (= e!3167270 (inv!77634 (right!43167 (right!43167 ys!41))))))

(declare-fun b!5076867 () Bool)

(declare-fun e!3167271 () Bool)

(assert (=> b!5076867 (= e!3167270 e!3167271)))

(declare-fun res!2161502 () Bool)

(assert (=> b!5076867 (= res!2161502 (not ((_ is Leaf!25872) (right!43167 (right!43167 ys!41)))))))

(assert (=> b!5076867 (=> res!2161502 e!3167271)))

(declare-fun b!5076868 () Bool)

(assert (=> b!5076868 (= e!3167271 (inv!77635 (right!43167 (right!43167 ys!41))))))

(assert (= (and d!1640122 c!871845) b!5076866))

(assert (= (and d!1640122 (not c!871845)) b!5076867))

(assert (= (and b!5076867 (not res!2161502)) b!5076868))

(declare-fun m!6126782 () Bool)

(assert (=> b!5076866 m!6126782))

(declare-fun m!6126784 () Bool)

(assert (=> b!5076868 m!6126784))

(assert (=> b!5076777 d!1640122))

(declare-fun d!1640124 () Bool)

(declare-fun c!871846 () Bool)

(assert (=> d!1640124 (= c!871846 ((_ is Node!15578) (left!42837 (left!42837 xs!286))))))

(declare-fun e!3167272 () Bool)

(assert (=> d!1640124 (= (inv!77633 (left!42837 (left!42837 xs!286))) e!3167272)))

(declare-fun b!5076869 () Bool)

(assert (=> b!5076869 (= e!3167272 (inv!77634 (left!42837 (left!42837 xs!286))))))

(declare-fun b!5076870 () Bool)

(declare-fun e!3167273 () Bool)

(assert (=> b!5076870 (= e!3167272 e!3167273)))

(declare-fun res!2161503 () Bool)

(assert (=> b!5076870 (= res!2161503 (not ((_ is Leaf!25872) (left!42837 (left!42837 xs!286)))))))

(assert (=> b!5076870 (=> res!2161503 e!3167273)))

(declare-fun b!5076871 () Bool)

(assert (=> b!5076871 (= e!3167273 (inv!77635 (left!42837 (left!42837 xs!286))))))

(assert (= (and d!1640124 c!871846) b!5076869))

(assert (= (and d!1640124 (not c!871846)) b!5076870))

(assert (= (and b!5076870 (not res!2161503)) b!5076871))

(declare-fun m!6126786 () Bool)

(assert (=> b!5076869 m!6126786))

(declare-fun m!6126788 () Bool)

(assert (=> b!5076871 m!6126788))

(assert (=> b!5076789 d!1640124))

(declare-fun d!1640126 () Bool)

(declare-fun c!871847 () Bool)

(assert (=> d!1640126 (= c!871847 ((_ is Node!15578) (right!43167 (left!42837 xs!286))))))

(declare-fun e!3167274 () Bool)

(assert (=> d!1640126 (= (inv!77633 (right!43167 (left!42837 xs!286))) e!3167274)))

(declare-fun b!5076872 () Bool)

(assert (=> b!5076872 (= e!3167274 (inv!77634 (right!43167 (left!42837 xs!286))))))

(declare-fun b!5076873 () Bool)

(declare-fun e!3167275 () Bool)

(assert (=> b!5076873 (= e!3167274 e!3167275)))

(declare-fun res!2161504 () Bool)

(assert (=> b!5076873 (= res!2161504 (not ((_ is Leaf!25872) (right!43167 (left!42837 xs!286)))))))

(assert (=> b!5076873 (=> res!2161504 e!3167275)))

(declare-fun b!5076874 () Bool)

(assert (=> b!5076874 (= e!3167275 (inv!77635 (right!43167 (left!42837 xs!286))))))

(assert (= (and d!1640126 c!871847) b!5076872))

(assert (= (and d!1640126 (not c!871847)) b!5076873))

(assert (= (and b!5076873 (not res!2161504)) b!5076874))

(declare-fun m!6126790 () Bool)

(assert (=> b!5076872 m!6126790))

(declare-fun m!6126792 () Bool)

(assert (=> b!5076874 m!6126792))

(assert (=> b!5076789 d!1640126))

(declare-fun d!1640128 () Bool)

(declare-fun res!2161509 () Bool)

(declare-fun e!3167277 () Bool)

(assert (=> d!1640128 (=> res!2161509 e!3167277)))

(assert (=> d!1640128 (= res!2161509 (not ((_ is Node!15578) (right!43167 xs!286))))))

(assert (=> d!1640128 (= (isBalanced!4440 (right!43167 xs!286)) e!3167277)))

(declare-fun b!5076875 () Bool)

(declare-fun res!2161507 () Bool)

(declare-fun e!3167276 () Bool)

(assert (=> b!5076875 (=> (not res!2161507) (not e!3167276))))

(assert (=> b!5076875 (= res!2161507 (isBalanced!4440 (right!43167 (right!43167 xs!286))))))

(declare-fun b!5076876 () Bool)

(declare-fun res!2161505 () Bool)

(assert (=> b!5076876 (=> (not res!2161505) (not e!3167276))))

(assert (=> b!5076876 (= res!2161505 (isBalanced!4440 (left!42837 (right!43167 xs!286))))))

(declare-fun b!5076877 () Bool)

(assert (=> b!5076877 (= e!3167276 (not (isEmpty!31658 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5076878 () Bool)

(declare-fun res!2161506 () Bool)

(assert (=> b!5076878 (=> (not res!2161506) (not e!3167276))))

(assert (=> b!5076878 (= res!2161506 (not (isEmpty!31658 (left!42837 (right!43167 xs!286)))))))

(declare-fun b!5076879 () Bool)

(declare-fun res!2161508 () Bool)

(assert (=> b!5076879 (=> (not res!2161508) (not e!3167276))))

(assert (=> b!5076879 (= res!2161508 (<= (- (height!2155 (left!42837 (right!43167 xs!286))) (height!2155 (right!43167 (right!43167 xs!286)))) 1))))

(declare-fun b!5076880 () Bool)

(assert (=> b!5076880 (= e!3167277 e!3167276)))

(declare-fun res!2161510 () Bool)

(assert (=> b!5076880 (=> (not res!2161510) (not e!3167276))))

(assert (=> b!5076880 (= res!2161510 (<= (- 1) (- (height!2155 (left!42837 (right!43167 xs!286))) (height!2155 (right!43167 (right!43167 xs!286))))))))

(assert (= (and d!1640128 (not res!2161509)) b!5076880))

(assert (= (and b!5076880 res!2161510) b!5076879))

(assert (= (and b!5076879 res!2161508) b!5076876))

(assert (= (and b!5076876 res!2161505) b!5076875))

(assert (= (and b!5076875 res!2161507) b!5076878))

(assert (= (and b!5076878 res!2161506) b!5076877))

(declare-fun m!6126794 () Bool)

(assert (=> b!5076877 m!6126794))

(declare-fun m!6126796 () Bool)

(assert (=> b!5076876 m!6126796))

(declare-fun m!6126798 () Bool)

(assert (=> b!5076875 m!6126798))

(assert (=> b!5076879 m!6126694))

(assert (=> b!5076879 m!6126696))

(assert (=> b!5076880 m!6126694))

(assert (=> b!5076880 m!6126696))

(declare-fun m!6126800 () Bool)

(assert (=> b!5076878 m!6126800))

(assert (=> b!5076706 d!1640128))

(declare-fun d!1640130 () Bool)

(declare-fun res!2161511 () Bool)

(declare-fun e!3167278 () Bool)

(assert (=> d!1640130 (=> (not res!2161511) (not e!3167278))))

(assert (=> d!1640130 (= res!2161511 (= (csize!31386 (left!42837 xs!286)) (+ (size!39104 (left!42837 (left!42837 xs!286))) (size!39104 (right!43167 (left!42837 xs!286))))))))

(assert (=> d!1640130 (= (inv!77634 (left!42837 xs!286)) e!3167278)))

(declare-fun b!5076881 () Bool)

(declare-fun res!2161512 () Bool)

(assert (=> b!5076881 (=> (not res!2161512) (not e!3167278))))

(assert (=> b!5076881 (= res!2161512 (and (not (= (left!42837 (left!42837 xs!286)) Empty!15578)) (not (= (right!43167 (left!42837 xs!286)) Empty!15578))))))

(declare-fun b!5076882 () Bool)

(declare-fun res!2161513 () Bool)

(assert (=> b!5076882 (=> (not res!2161513) (not e!3167278))))

(assert (=> b!5076882 (= res!2161513 (= (cheight!15789 (left!42837 xs!286)) (+ (max!0 (height!2155 (left!42837 (left!42837 xs!286))) (height!2155 (right!43167 (left!42837 xs!286)))) 1)))))

(declare-fun b!5076883 () Bool)

(assert (=> b!5076883 (= e!3167278 (<= 0 (cheight!15789 (left!42837 xs!286))))))

(assert (= (and d!1640130 res!2161511) b!5076881))

(assert (= (and b!5076881 res!2161512) b!5076882))

(assert (= (and b!5076882 res!2161513) b!5076883))

(declare-fun m!6126802 () Bool)

(assert (=> d!1640130 m!6126802))

(declare-fun m!6126804 () Bool)

(assert (=> d!1640130 m!6126804))

(declare-fun m!6126806 () Bool)

(assert (=> b!5076882 m!6126806))

(declare-fun m!6126808 () Bool)

(assert (=> b!5076882 m!6126808))

(assert (=> b!5076882 m!6126806))

(assert (=> b!5076882 m!6126808))

(declare-fun m!6126810 () Bool)

(assert (=> b!5076882 m!6126810))

(assert (=> b!5076726 d!1640130))

(declare-fun d!1640132 () Bool)

(declare-fun res!2161514 () Bool)

(declare-fun e!3167279 () Bool)

(assert (=> d!1640132 (=> (not res!2161514) (not e!3167279))))

(assert (=> d!1640132 (= res!2161514 (= (csize!31386 (left!42837 ys!41)) (+ (size!39104 (left!42837 (left!42837 ys!41))) (size!39104 (right!43167 (left!42837 ys!41))))))))

(assert (=> d!1640132 (= (inv!77634 (left!42837 ys!41)) e!3167279)))

(declare-fun b!5076884 () Bool)

(declare-fun res!2161515 () Bool)

(assert (=> b!5076884 (=> (not res!2161515) (not e!3167279))))

(assert (=> b!5076884 (= res!2161515 (and (not (= (left!42837 (left!42837 ys!41)) Empty!15578)) (not (= (right!43167 (left!42837 ys!41)) Empty!15578))))))

(declare-fun b!5076885 () Bool)

(declare-fun res!2161516 () Bool)

(assert (=> b!5076885 (=> (not res!2161516) (not e!3167279))))

(assert (=> b!5076885 (= res!2161516 (= (cheight!15789 (left!42837 ys!41)) (+ (max!0 (height!2155 (left!42837 (left!42837 ys!41))) (height!2155 (right!43167 (left!42837 ys!41)))) 1)))))

(declare-fun b!5076886 () Bool)

(assert (=> b!5076886 (= e!3167279 (<= 0 (cheight!15789 (left!42837 ys!41))))))

(assert (= (and d!1640132 res!2161514) b!5076884))

(assert (= (and b!5076884 res!2161515) b!5076885))

(assert (= (and b!5076885 res!2161516) b!5076886))

(declare-fun m!6126812 () Bool)

(assert (=> d!1640132 m!6126812))

(declare-fun m!6126814 () Bool)

(assert (=> d!1640132 m!6126814))

(assert (=> b!5076885 m!6126532))

(assert (=> b!5076885 m!6126738))

(assert (=> b!5076885 m!6126532))

(assert (=> b!5076885 m!6126738))

(declare-fun m!6126816 () Bool)

(assert (=> b!5076885 m!6126816))

(assert (=> b!5076672 d!1640132))

(assert (=> b!5076742 d!1640062))

(assert (=> b!5076742 d!1640060))

(declare-fun d!1640134 () Bool)

(declare-fun res!2161521 () Bool)

(declare-fun e!3167281 () Bool)

(assert (=> d!1640134 (=> res!2161521 e!3167281)))

(assert (=> d!1640134 (= res!2161521 (not ((_ is Node!15578) (left!42837 xs!286))))))

(assert (=> d!1640134 (= (isBalanced!4440 (left!42837 xs!286)) e!3167281)))

(declare-fun b!5076887 () Bool)

(declare-fun res!2161519 () Bool)

(declare-fun e!3167280 () Bool)

(assert (=> b!5076887 (=> (not res!2161519) (not e!3167280))))

(assert (=> b!5076887 (= res!2161519 (isBalanced!4440 (right!43167 (left!42837 xs!286))))))

(declare-fun b!5076888 () Bool)

(declare-fun res!2161517 () Bool)

(assert (=> b!5076888 (=> (not res!2161517) (not e!3167280))))

(assert (=> b!5076888 (= res!2161517 (isBalanced!4440 (left!42837 (left!42837 xs!286))))))

(declare-fun b!5076889 () Bool)

(assert (=> b!5076889 (= e!3167280 (not (isEmpty!31658 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5076890 () Bool)

(declare-fun res!2161518 () Bool)

(assert (=> b!5076890 (=> (not res!2161518) (not e!3167280))))

(assert (=> b!5076890 (= res!2161518 (not (isEmpty!31658 (left!42837 (left!42837 xs!286)))))))

(declare-fun b!5076891 () Bool)

(declare-fun res!2161520 () Bool)

(assert (=> b!5076891 (=> (not res!2161520) (not e!3167280))))

(assert (=> b!5076891 (= res!2161520 (<= (- (height!2155 (left!42837 (left!42837 xs!286))) (height!2155 (right!43167 (left!42837 xs!286)))) 1))))

(declare-fun b!5076892 () Bool)

(assert (=> b!5076892 (= e!3167281 e!3167280)))

(declare-fun res!2161522 () Bool)

(assert (=> b!5076892 (=> (not res!2161522) (not e!3167280))))

(assert (=> b!5076892 (= res!2161522 (<= (- 1) (- (height!2155 (left!42837 (left!42837 xs!286))) (height!2155 (right!43167 (left!42837 xs!286))))))))

(assert (= (and d!1640134 (not res!2161521)) b!5076892))

(assert (= (and b!5076892 res!2161522) b!5076891))

(assert (= (and b!5076891 res!2161520) b!5076888))

(assert (= (and b!5076888 res!2161517) b!5076887))

(assert (= (and b!5076887 res!2161519) b!5076890))

(assert (= (and b!5076890 res!2161518) b!5076889))

(declare-fun m!6126818 () Bool)

(assert (=> b!5076889 m!6126818))

(declare-fun m!6126820 () Bool)

(assert (=> b!5076888 m!6126820))

(declare-fun m!6126822 () Bool)

(assert (=> b!5076887 m!6126822))

(assert (=> b!5076891 m!6126806))

(assert (=> b!5076891 m!6126808))

(assert (=> b!5076892 m!6126806))

(assert (=> b!5076892 m!6126808))

(declare-fun m!6126824 () Bool)

(assert (=> b!5076890 m!6126824))

(assert (=> b!5076707 d!1640134))

(assert (=> b!5076743 d!1640062))

(assert (=> b!5076743 d!1640060))

(declare-fun d!1640136 () Bool)

(declare-fun lt!2090331 () Bool)

(assert (=> d!1640136 (= lt!2090331 (isEmpty!31660 (list!19017 (left!42837 ys!41))))))

(assert (=> d!1640136 (= lt!2090331 (= (size!39104 (left!42837 ys!41)) 0))))

(assert (=> d!1640136 (= (isEmpty!31658 (left!42837 ys!41)) lt!2090331)))

(declare-fun bs!1190448 () Bool)

(assert (= bs!1190448 d!1640136))

(declare-fun m!6126826 () Bool)

(assert (=> bs!1190448 m!6126826))

(assert (=> bs!1190448 m!6126826))

(declare-fun m!6126828 () Bool)

(assert (=> bs!1190448 m!6126828))

(declare-fun m!6126830 () Bool)

(assert (=> bs!1190448 m!6126830))

(assert (=> b!5076741 d!1640136))

(declare-fun d!1640138 () Bool)

(declare-fun lt!2090334 () Int)

(assert (=> d!1640138 (>= lt!2090334 0)))

(declare-fun e!3167284 () Int)

(assert (=> d!1640138 (= lt!2090334 e!3167284)))

(declare-fun c!871850 () Bool)

(assert (=> d!1640138 (= c!871850 ((_ is Nil!58448) (innerList!15666 (xs!18944 xs!286))))))

(assert (=> d!1640138 (= (size!39102 (innerList!15666 (xs!18944 xs!286))) lt!2090334)))

(declare-fun b!5076897 () Bool)

(assert (=> b!5076897 (= e!3167284 0)))

(declare-fun b!5076898 () Bool)

(assert (=> b!5076898 (= e!3167284 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 xs!286))))))))

(assert (= (and d!1640138 c!871850) b!5076897))

(assert (= (and d!1640138 (not c!871850)) b!5076898))

(declare-fun m!6126832 () Bool)

(assert (=> b!5076898 m!6126832))

(assert (=> d!1640038 d!1640138))

(declare-fun d!1640140 () Bool)

(declare-fun res!2161523 () Bool)

(declare-fun e!3167285 () Bool)

(assert (=> d!1640140 (=> (not res!2161523) (not e!3167285))))

(assert (=> d!1640140 (= res!2161523 (= (csize!31386 ys!41) (+ (size!39104 (left!42837 ys!41)) (size!39104 (right!43167 ys!41)))))))

(assert (=> d!1640140 (= (inv!77634 ys!41) e!3167285)))

(declare-fun b!5076899 () Bool)

(declare-fun res!2161524 () Bool)

(assert (=> b!5076899 (=> (not res!2161524) (not e!3167285))))

(assert (=> b!5076899 (= res!2161524 (and (not (= (left!42837 ys!41) Empty!15578)) (not (= (right!43167 ys!41) Empty!15578))))))

(declare-fun b!5076900 () Bool)

(declare-fun res!2161525 () Bool)

(assert (=> b!5076900 (=> (not res!2161525) (not e!3167285))))

(assert (=> b!5076900 (= res!2161525 (= (cheight!15789 ys!41) (+ (max!0 (height!2155 (left!42837 ys!41)) (height!2155 (right!43167 ys!41))) 1)))))

(declare-fun b!5076901 () Bool)

(assert (=> b!5076901 (= e!3167285 (<= 0 (cheight!15789 ys!41)))))

(assert (= (and d!1640140 res!2161523) b!5076899))

(assert (= (and b!5076899 res!2161524) b!5076900))

(assert (= (and b!5076900 res!2161525) b!5076901))

(assert (=> d!1640140 m!6126830))

(assert (=> d!1640140 m!6126722))

(assert (=> b!5076900 m!6126508))

(assert (=> b!5076900 m!6126506))

(assert (=> b!5076900 m!6126508))

(assert (=> b!5076900 m!6126506))

(declare-fun m!6126834 () Bool)

(assert (=> b!5076900 m!6126834))

(assert (=> b!5076723 d!1640140))

(declare-fun d!1640142 () Bool)

(assert (=> d!1640142 (= (inv!77632 (xs!18944 (left!42837 ys!41))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 ys!41)))) 2147483647))))

(declare-fun bs!1190449 () Bool)

(assert (= bs!1190449 d!1640142))

(declare-fun m!6126836 () Bool)

(assert (=> bs!1190449 m!6126836))

(assert (=> b!5076768 d!1640142))

(declare-fun d!1640144 () Bool)

(declare-fun lt!2090335 () Int)

(assert (=> d!1640144 (>= lt!2090335 0)))

(declare-fun e!3167286 () Int)

(assert (=> d!1640144 (= lt!2090335 e!3167286)))

(declare-fun c!871851 () Bool)

(assert (=> d!1640144 (= c!871851 ((_ is Nil!58448) (innerList!15666 (xs!18944 ys!41))))))

(assert (=> d!1640144 (= (size!39102 (innerList!15666 (xs!18944 ys!41))) lt!2090335)))

(declare-fun b!5076902 () Bool)

(assert (=> b!5076902 (= e!3167286 0)))

(declare-fun b!5076903 () Bool)

(assert (=> b!5076903 (= e!3167286 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 ys!41))))))))

(assert (= (and d!1640144 c!871851) b!5076902))

(assert (= (and d!1640144 (not c!871851)) b!5076903))

(declare-fun m!6126838 () Bool)

(assert (=> b!5076903 m!6126838))

(assert (=> d!1640068 d!1640144))

(declare-fun d!1640146 () Bool)

(declare-fun c!871852 () Bool)

(assert (=> d!1640146 (= c!871852 ((_ is Node!15578) (left!42837 (left!42837 ys!41))))))

(declare-fun e!3167287 () Bool)

(assert (=> d!1640146 (= (inv!77633 (left!42837 (left!42837 ys!41))) e!3167287)))

(declare-fun b!5076904 () Bool)

(assert (=> b!5076904 (= e!3167287 (inv!77634 (left!42837 (left!42837 ys!41))))))

(declare-fun b!5076905 () Bool)

(declare-fun e!3167288 () Bool)

(assert (=> b!5076905 (= e!3167287 e!3167288)))

(declare-fun res!2161526 () Bool)

(assert (=> b!5076905 (= res!2161526 (not ((_ is Leaf!25872) (left!42837 (left!42837 ys!41)))))))

(assert (=> b!5076905 (=> res!2161526 e!3167288)))

(declare-fun b!5076906 () Bool)

(assert (=> b!5076906 (= e!3167288 (inv!77635 (left!42837 (left!42837 ys!41))))))

(assert (= (and d!1640146 c!871852) b!5076904))

(assert (= (and d!1640146 (not c!871852)) b!5076905))

(assert (= (and b!5076905 (not res!2161526)) b!5076906))

(declare-fun m!6126840 () Bool)

(assert (=> b!5076904 m!6126840))

(declare-fun m!6126842 () Bool)

(assert (=> b!5076906 m!6126842))

(assert (=> b!5076767 d!1640146))

(declare-fun d!1640148 () Bool)

(declare-fun c!871853 () Bool)

(assert (=> d!1640148 (= c!871853 ((_ is Node!15578) (right!43167 (left!42837 ys!41))))))

(declare-fun e!3167289 () Bool)

(assert (=> d!1640148 (= (inv!77633 (right!43167 (left!42837 ys!41))) e!3167289)))

(declare-fun b!5076907 () Bool)

(assert (=> b!5076907 (= e!3167289 (inv!77634 (right!43167 (left!42837 ys!41))))))

(declare-fun b!5076908 () Bool)

(declare-fun e!3167290 () Bool)

(assert (=> b!5076908 (= e!3167289 e!3167290)))

(declare-fun res!2161527 () Bool)

(assert (=> b!5076908 (= res!2161527 (not ((_ is Leaf!25872) (right!43167 (left!42837 ys!41)))))))

(assert (=> b!5076908 (=> res!2161527 e!3167290)))

(declare-fun b!5076909 () Bool)

(assert (=> b!5076909 (= e!3167290 (inv!77635 (right!43167 (left!42837 ys!41))))))

(assert (= (and d!1640148 c!871853) b!5076907))

(assert (= (and d!1640148 (not c!871853)) b!5076908))

(assert (= (and b!5076908 (not res!2161527)) b!5076909))

(declare-fun m!6126844 () Bool)

(assert (=> b!5076907 m!6126844))

(declare-fun m!6126846 () Bool)

(assert (=> b!5076909 m!6126846))

(assert (=> b!5076767 d!1640148))

(declare-fun d!1640150 () Bool)

(assert (=> d!1640150 (= (height!2155 (left!42837 xs!286)) (ite ((_ is Empty!15578) (left!42837 xs!286)) 0 (ite ((_ is Leaf!25872) (left!42837 xs!286)) 1 (cheight!15789 (left!42837 xs!286)))))))

(assert (=> b!5076710 d!1640150))

(declare-fun d!1640152 () Bool)

(assert (=> d!1640152 (= (height!2155 (right!43167 xs!286)) (ite ((_ is Empty!15578) (right!43167 xs!286)) 0 (ite ((_ is Leaf!25872) (right!43167 xs!286)) 1 (cheight!15789 (right!43167 xs!286)))))))

(assert (=> b!5076710 d!1640152))

(assert (=> b!5076711 d!1640150))

(assert (=> b!5076711 d!1640152))

(declare-fun e!3167292 () Bool)

(declare-fun tp!1416562 () Bool)

(declare-fun tp!1416561 () Bool)

(declare-fun b!5076910 () Bool)

(assert (=> b!5076910 (= e!3167292 (and (inv!77633 (left!42837 (left!42837 (right!43167 xs!286)))) tp!1416562 (inv!77633 (right!43167 (left!42837 (right!43167 xs!286)))) tp!1416561))))

(declare-fun b!5076912 () Bool)

(declare-fun e!3167291 () Bool)

(declare-fun tp!1416560 () Bool)

(assert (=> b!5076912 (= e!3167291 tp!1416560)))

(declare-fun b!5076911 () Bool)

(assert (=> b!5076911 (= e!3167292 (and (inv!77632 (xs!18944 (left!42837 (right!43167 xs!286)))) e!3167291))))

(assert (=> b!5076792 (= tp!1416542 (and (inv!77633 (left!42837 (right!43167 xs!286))) e!3167292))))

(assert (= (and b!5076792 ((_ is Node!15578) (left!42837 (right!43167 xs!286)))) b!5076910))

(assert (= b!5076911 b!5076912))

(assert (= (and b!5076792 ((_ is Leaf!25872) (left!42837 (right!43167 xs!286)))) b!5076911))

(declare-fun m!6126848 () Bool)

(assert (=> b!5076910 m!6126848))

(declare-fun m!6126850 () Bool)

(assert (=> b!5076910 m!6126850))

(declare-fun m!6126852 () Bool)

(assert (=> b!5076911 m!6126852))

(assert (=> b!5076792 m!6126652))

(declare-fun tp!1416565 () Bool)

(declare-fun tp!1416564 () Bool)

(declare-fun e!3167294 () Bool)

(declare-fun b!5076913 () Bool)

(assert (=> b!5076913 (= e!3167294 (and (inv!77633 (left!42837 (right!43167 (right!43167 xs!286)))) tp!1416565 (inv!77633 (right!43167 (right!43167 (right!43167 xs!286)))) tp!1416564))))

(declare-fun b!5076915 () Bool)

(declare-fun e!3167293 () Bool)

(declare-fun tp!1416563 () Bool)

(assert (=> b!5076915 (= e!3167293 tp!1416563)))

(declare-fun b!5076914 () Bool)

(assert (=> b!5076914 (= e!3167294 (and (inv!77632 (xs!18944 (right!43167 (right!43167 xs!286)))) e!3167293))))

(assert (=> b!5076792 (= tp!1416541 (and (inv!77633 (right!43167 (right!43167 xs!286))) e!3167294))))

(assert (= (and b!5076792 ((_ is Node!15578) (right!43167 (right!43167 xs!286)))) b!5076913))

(assert (= b!5076914 b!5076915))

(assert (= (and b!5076792 ((_ is Leaf!25872) (right!43167 (right!43167 xs!286)))) b!5076914))

(declare-fun m!6126854 () Bool)

(assert (=> b!5076913 m!6126854))

(declare-fun m!6126856 () Bool)

(assert (=> b!5076913 m!6126856))

(declare-fun m!6126858 () Bool)

(assert (=> b!5076914 m!6126858))

(assert (=> b!5076792 m!6126654))

(declare-fun b!5076916 () Bool)

(declare-fun e!3167295 () Bool)

(declare-fun tp!1416566 () Bool)

(assert (=> b!5076916 (= e!3167295 (and tp_is_empty!37077 tp!1416566))))

(assert (=> b!5076798 (= tp!1416546 e!3167295)))

(assert (= (and b!5076798 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 xs!286))))) b!5076916))

(declare-fun e!3167297 () Bool)

(declare-fun tp!1416569 () Bool)

(declare-fun b!5076917 () Bool)

(declare-fun tp!1416568 () Bool)

(assert (=> b!5076917 (= e!3167297 (and (inv!77633 (left!42837 (left!42837 (left!42837 ys!41)))) tp!1416569 (inv!77633 (right!43167 (left!42837 (left!42837 ys!41)))) tp!1416568))))

(declare-fun b!5076919 () Bool)

(declare-fun e!3167296 () Bool)

(declare-fun tp!1416567 () Bool)

(assert (=> b!5076919 (= e!3167296 tp!1416567)))

(declare-fun b!5076918 () Bool)

(assert (=> b!5076918 (= e!3167297 (and (inv!77632 (xs!18944 (left!42837 (left!42837 ys!41)))) e!3167296))))

(assert (=> b!5076767 (= tp!1416524 (and (inv!77633 (left!42837 (left!42837 ys!41))) e!3167297))))

(assert (= (and b!5076767 ((_ is Node!15578) (left!42837 (left!42837 ys!41)))) b!5076917))

(assert (= b!5076918 b!5076919))

(assert (= (and b!5076767 ((_ is Leaf!25872) (left!42837 (left!42837 ys!41)))) b!5076918))

(declare-fun m!6126860 () Bool)

(assert (=> b!5076917 m!6126860))

(declare-fun m!6126862 () Bool)

(assert (=> b!5076917 m!6126862))

(declare-fun m!6126864 () Bool)

(assert (=> b!5076918 m!6126864))

(assert (=> b!5076767 m!6126634))

(declare-fun tp!1416571 () Bool)

(declare-fun tp!1416572 () Bool)

(declare-fun b!5076920 () Bool)

(declare-fun e!3167299 () Bool)

(assert (=> b!5076920 (= e!3167299 (and (inv!77633 (left!42837 (right!43167 (left!42837 ys!41)))) tp!1416572 (inv!77633 (right!43167 (right!43167 (left!42837 ys!41)))) tp!1416571))))

(declare-fun b!5076922 () Bool)

(declare-fun e!3167298 () Bool)

(declare-fun tp!1416570 () Bool)

(assert (=> b!5076922 (= e!3167298 tp!1416570)))

(declare-fun b!5076921 () Bool)

(assert (=> b!5076921 (= e!3167299 (and (inv!77632 (xs!18944 (right!43167 (left!42837 ys!41)))) e!3167298))))

(assert (=> b!5076767 (= tp!1416523 (and (inv!77633 (right!43167 (left!42837 ys!41))) e!3167299))))

(assert (= (and b!5076767 ((_ is Node!15578) (right!43167 (left!42837 ys!41)))) b!5076920))

(assert (= b!5076921 b!5076922))

(assert (= (and b!5076767 ((_ is Leaf!25872) (right!43167 (left!42837 ys!41)))) b!5076921))

(declare-fun m!6126866 () Bool)

(assert (=> b!5076920 m!6126866))

(declare-fun m!6126868 () Bool)

(assert (=> b!5076920 m!6126868))

(declare-fun m!6126870 () Bool)

(assert (=> b!5076921 m!6126870))

(assert (=> b!5076767 m!6126636))

(declare-fun b!5076923 () Bool)

(declare-fun e!3167300 () Bool)

(declare-fun tp!1416573 () Bool)

(assert (=> b!5076923 (= e!3167300 (and tp_is_empty!37077 tp!1416573))))

(assert (=> b!5076791 (= tp!1416537 e!3167300)))

(assert (= (and b!5076791 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 xs!286))))) b!5076923))

(declare-fun tp!1416575 () Bool)

(declare-fun b!5076924 () Bool)

(declare-fun tp!1416576 () Bool)

(declare-fun e!3167302 () Bool)

(assert (=> b!5076924 (= e!3167302 (and (inv!77633 (left!42837 (left!42837 (right!43167 ys!41)))) tp!1416576 (inv!77633 (right!43167 (left!42837 (right!43167 ys!41)))) tp!1416575))))

(declare-fun b!5076926 () Bool)

(declare-fun e!3167301 () Bool)

(declare-fun tp!1416574 () Bool)

(assert (=> b!5076926 (= e!3167301 tp!1416574)))

(declare-fun b!5076925 () Bool)

(assert (=> b!5076925 (= e!3167302 (and (inv!77632 (xs!18944 (left!42837 (right!43167 ys!41)))) e!3167301))))

(assert (=> b!5076777 (= tp!1416529 (and (inv!77633 (left!42837 (right!43167 ys!41))) e!3167302))))

(assert (= (and b!5076777 ((_ is Node!15578) (left!42837 (right!43167 ys!41)))) b!5076924))

(assert (= b!5076925 b!5076926))

(assert (= (and b!5076777 ((_ is Leaf!25872) (left!42837 (right!43167 ys!41)))) b!5076925))

(declare-fun m!6126872 () Bool)

(assert (=> b!5076924 m!6126872))

(declare-fun m!6126874 () Bool)

(assert (=> b!5076924 m!6126874))

(declare-fun m!6126876 () Bool)

(assert (=> b!5076925 m!6126876))

(assert (=> b!5076777 m!6126640))

(declare-fun b!5076927 () Bool)

(declare-fun tp!1416578 () Bool)

(declare-fun e!3167304 () Bool)

(declare-fun tp!1416579 () Bool)

(assert (=> b!5076927 (= e!3167304 (and (inv!77633 (left!42837 (right!43167 (right!43167 ys!41)))) tp!1416579 (inv!77633 (right!43167 (right!43167 (right!43167 ys!41)))) tp!1416578))))

(declare-fun b!5076929 () Bool)

(declare-fun e!3167303 () Bool)

(declare-fun tp!1416577 () Bool)

(assert (=> b!5076929 (= e!3167303 tp!1416577)))

(declare-fun b!5076928 () Bool)

(assert (=> b!5076928 (= e!3167304 (and (inv!77632 (xs!18944 (right!43167 (right!43167 ys!41)))) e!3167303))))

(assert (=> b!5076777 (= tp!1416528 (and (inv!77633 (right!43167 (right!43167 ys!41))) e!3167304))))

(assert (= (and b!5076777 ((_ is Node!15578) (right!43167 (right!43167 ys!41)))) b!5076927))

(assert (= b!5076928 b!5076929))

(assert (= (and b!5076777 ((_ is Leaf!25872) (right!43167 (right!43167 ys!41)))) b!5076928))

(declare-fun m!6126878 () Bool)

(assert (=> b!5076927 m!6126878))

(declare-fun m!6126880 () Bool)

(assert (=> b!5076927 m!6126880))

(declare-fun m!6126882 () Bool)

(assert (=> b!5076928 m!6126882))

(assert (=> b!5076777 m!6126642))

(declare-fun b!5076930 () Bool)

(declare-fun e!3167305 () Bool)

(declare-fun tp!1416580 () Bool)

(assert (=> b!5076930 (= e!3167305 (and tp_is_empty!37077 tp!1416580))))

(assert (=> b!5076794 (= tp!1416540 e!3167305)))

(assert (= (and b!5076794 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 xs!286))))) b!5076930))

(declare-fun tp!1416583 () Bool)

(declare-fun e!3167307 () Bool)

(declare-fun b!5076931 () Bool)

(declare-fun tp!1416582 () Bool)

(assert (=> b!5076931 (= e!3167307 (and (inv!77633 (left!42837 (left!42837 (left!42837 xs!286)))) tp!1416583 (inv!77633 (right!43167 (left!42837 (left!42837 xs!286)))) tp!1416582))))

(declare-fun b!5076933 () Bool)

(declare-fun e!3167306 () Bool)

(declare-fun tp!1416581 () Bool)

(assert (=> b!5076933 (= e!3167306 tp!1416581)))

(declare-fun b!5076932 () Bool)

(assert (=> b!5076932 (= e!3167307 (and (inv!77632 (xs!18944 (left!42837 (left!42837 xs!286)))) e!3167306))))

(assert (=> b!5076789 (= tp!1416539 (and (inv!77633 (left!42837 (left!42837 xs!286))) e!3167307))))

(assert (= (and b!5076789 ((_ is Node!15578) (left!42837 (left!42837 xs!286)))) b!5076931))

(assert (= b!5076932 b!5076933))

(assert (= (and b!5076789 ((_ is Leaf!25872) (left!42837 (left!42837 xs!286)))) b!5076932))

(declare-fun m!6126884 () Bool)

(assert (=> b!5076931 m!6126884))

(declare-fun m!6126886 () Bool)

(assert (=> b!5076931 m!6126886))

(declare-fun m!6126888 () Bool)

(assert (=> b!5076932 m!6126888))

(assert (=> b!5076789 m!6126646))

(declare-fun e!3167309 () Bool)

(declare-fun tp!1416586 () Bool)

(declare-fun b!5076934 () Bool)

(declare-fun tp!1416585 () Bool)

(assert (=> b!5076934 (= e!3167309 (and (inv!77633 (left!42837 (right!43167 (left!42837 xs!286)))) tp!1416586 (inv!77633 (right!43167 (right!43167 (left!42837 xs!286)))) tp!1416585))))

(declare-fun b!5076936 () Bool)

(declare-fun e!3167308 () Bool)

(declare-fun tp!1416584 () Bool)

(assert (=> b!5076936 (= e!3167308 tp!1416584)))

(declare-fun b!5076935 () Bool)

(assert (=> b!5076935 (= e!3167309 (and (inv!77632 (xs!18944 (right!43167 (left!42837 xs!286)))) e!3167308))))

(assert (=> b!5076789 (= tp!1416538 (and (inv!77633 (right!43167 (left!42837 xs!286))) e!3167309))))

(assert (= (and b!5076789 ((_ is Node!15578) (right!43167 (left!42837 xs!286)))) b!5076934))

(assert (= b!5076935 b!5076936))

(assert (= (and b!5076789 ((_ is Leaf!25872) (right!43167 (left!42837 xs!286)))) b!5076935))

(declare-fun m!6126890 () Bool)

(assert (=> b!5076934 m!6126890))

(declare-fun m!6126892 () Bool)

(assert (=> b!5076934 m!6126892))

(declare-fun m!6126894 () Bool)

(assert (=> b!5076935 m!6126894))

(assert (=> b!5076789 m!6126648))

(declare-fun b!5076937 () Bool)

(declare-fun e!3167310 () Bool)

(declare-fun tp!1416587 () Bool)

(assert (=> b!5076937 (= e!3167310 (and tp_is_empty!37077 tp!1416587))))

(assert (=> b!5076769 (= tp!1416522 e!3167310)))

(assert (= (and b!5076769 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 ys!41))))) b!5076937))

(declare-fun b!5076938 () Bool)

(declare-fun e!3167311 () Bool)

(declare-fun tp!1416588 () Bool)

(assert (=> b!5076938 (= e!3167311 (and tp_is_empty!37077 tp!1416588))))

(assert (=> b!5076779 (= tp!1416527 e!3167311)))

(assert (= (and b!5076779 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 ys!41))))) b!5076938))

(declare-fun b!5076939 () Bool)

(declare-fun e!3167312 () Bool)

(declare-fun tp!1416589 () Bool)

(assert (=> b!5076939 (= e!3167312 (and tp_is_empty!37077 tp!1416589))))

(assert (=> b!5076788 (= tp!1416536 e!3167312)))

(assert (= (and b!5076788 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 ys!41))))) b!5076939))

(check-sat (not d!1640104) (not b!5076939) (not b!5076904) (not b!5076934) (not b!5076767) (not b!5076817) (not b!5076921) (not b!5076909) (not b!5076913) (not b!5076925) (not d!1640132) (not b!5076816) (not b!5076792) (not b!5076857) (not b!5076911) (not b!5076917) (not d!1640108) (not b!5076865) (not b!5076882) (not b!5076907) (not b!5076869) (not d!1640130) (not d!1640090) (not b!5076906) (not d!1640114) (not d!1640088) (not b!5076910) (not b!5076932) (not b!5076878) (not b!5076936) (not b!5076890) (not b!5076847) (not b!5076836) (not b!5076929) (not b!5076885) (not d!1640118) (not b!5076849) (not b!5076855) (not b!5076845) (not b!5076843) (not b!5076935) (not b!5076841) (not b!5076937) (not b!5076814) (not b!5076777) (not b!5076861) (not b!5076853) (not b!5076879) (not b!5076889) (not b!5076900) (not b!5076871) (not b!5076926) (not b!5076887) (not b!5076898) (not b!5076827) (not b!5076851) (not d!1640110) (not b!5076846) (not b!5076914) (not b!5076789) (not b!5076842) (not b!5076919) (not b!5076877) (not d!1640112) (not b!5076819) (not b!5076866) (not b!5076922) (not b!5076928) (not b!5076923) (not d!1640086) (not b!5076850) (not b!5076918) (not b!5076920) (not d!1640136) (not d!1640100) (not b!5076924) (not b!5076915) (not b!5076916) (not d!1640094) (not b!5076859) (not d!1640140) (not b!5076927) (not b!5076892) (not b!5076838) (not d!1640116) (not b!5076872) (not b!5076938) (not d!1640102) (not b!5076875) (not b!5076863) (not b!5076880) (not b!5076868) (not d!1640092) (not b!5076933) (not d!1640142) (not b!5076840) (not b!5076912) (not b!5076848) tp_is_empty!37077 (not b!5076930) (not b!5076891) (not d!1640106) (not b!5076874) (not b!5076876) (not b!5076830) (not b!5076844) (not b!5076931) (not b!5076888) (not b!5076903))
(check-sat)
(get-model)

(declare-fun d!1640226 () Bool)

(assert (=> d!1640226 (= (inv!77632 (xs!18944 (right!43167 (left!42837 ys!41)))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 (left!42837 ys!41))))) 2147483647))))

(declare-fun bs!1190458 () Bool)

(assert (= bs!1190458 d!1640226))

(declare-fun m!6127110 () Bool)

(assert (=> bs!1190458 m!6127110))

(assert (=> b!5076921 d!1640226))

(declare-fun d!1640228 () Bool)

(declare-fun lt!2090346 () Bool)

(assert (=> d!1640228 (= lt!2090346 (isEmpty!31660 (list!19017 (left!42837 (left!42837 xs!286)))))))

(assert (=> d!1640228 (= lt!2090346 (= (size!39104 (left!42837 (left!42837 xs!286))) 0))))

(assert (=> d!1640228 (= (isEmpty!31658 (left!42837 (left!42837 xs!286))) lt!2090346)))

(declare-fun bs!1190459 () Bool)

(assert (= bs!1190459 d!1640228))

(declare-fun m!6127112 () Bool)

(assert (=> bs!1190459 m!6127112))

(assert (=> bs!1190459 m!6127112))

(declare-fun m!6127114 () Bool)

(assert (=> bs!1190459 m!6127114))

(assert (=> bs!1190459 m!6126802))

(assert (=> b!5076890 d!1640228))

(declare-fun d!1640230 () Bool)

(assert (=> d!1640230 (= (max!0 (height!2155 (left!42837 (left!42837 ys!41))) (height!2155 (right!43167 (left!42837 ys!41)))) (ite (< (height!2155 (left!42837 (left!42837 ys!41))) (height!2155 (right!43167 (left!42837 ys!41)))) (height!2155 (right!43167 (left!42837 ys!41))) (height!2155 (left!42837 (left!42837 ys!41)))))))

(assert (=> b!5076885 d!1640230))

(assert (=> b!5076885 d!1640056))

(declare-fun d!1640232 () Bool)

(assert (=> d!1640232 (= (height!2155 (right!43167 (left!42837 ys!41))) (ite ((_ is Empty!15578) (right!43167 (left!42837 ys!41))) 0 (ite ((_ is Leaf!25872) (right!43167 (left!42837 ys!41))) 1 (cheight!15789 (right!43167 (left!42837 ys!41))))))))

(assert (=> b!5076885 d!1640232))

(declare-fun d!1640234 () Bool)

(assert (=> d!1640234 (= (isEmpty!31660 (list!19017 (right!43167 ys!41))) ((_ is Nil!58448) (list!19017 (right!43167 ys!41))))))

(assert (=> d!1640094 d!1640234))

(declare-fun b!5077075 () Bool)

(declare-fun e!3167383 () List!58572)

(declare-fun e!3167384 () List!58572)

(assert (=> b!5077075 (= e!3167383 e!3167384)))

(declare-fun c!871871 () Bool)

(assert (=> b!5077075 (= c!871871 ((_ is Leaf!25872) (right!43167 ys!41)))))

(declare-fun b!5077076 () Bool)

(assert (=> b!5077076 (= e!3167384 (list!19016 (xs!18944 (right!43167 ys!41))))))

(declare-fun b!5077077 () Bool)

(declare-fun ++!12802 (List!58572 List!58572) List!58572)

(assert (=> b!5077077 (= e!3167384 (++!12802 (list!19017 (left!42837 (right!43167 ys!41))) (list!19017 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5077074 () Bool)

(assert (=> b!5077074 (= e!3167383 Nil!58448)))

(declare-fun d!1640236 () Bool)

(declare-fun c!871870 () Bool)

(assert (=> d!1640236 (= c!871870 ((_ is Empty!15578) (right!43167 ys!41)))))

(assert (=> d!1640236 (= (list!19017 (right!43167 ys!41)) e!3167383)))

(assert (= (and d!1640236 c!871870) b!5077074))

(assert (= (and d!1640236 (not c!871870)) b!5077075))

(assert (= (and b!5077075 c!871871) b!5077076))

(assert (= (and b!5077075 (not c!871871)) b!5077077))

(assert (=> b!5077076 m!6126752))

(declare-fun m!6127116 () Bool)

(assert (=> b!5077077 m!6127116))

(declare-fun m!6127118 () Bool)

(assert (=> b!5077077 m!6127118))

(assert (=> b!5077077 m!6127116))

(assert (=> b!5077077 m!6127118))

(declare-fun m!6127120 () Bool)

(assert (=> b!5077077 m!6127120))

(assert (=> d!1640094 d!1640236))

(declare-fun d!1640238 () Bool)

(declare-fun lt!2090349 () Int)

(assert (=> d!1640238 (= lt!2090349 (size!39102 (list!19017 (right!43167 ys!41))))))

(assert (=> d!1640238 (= lt!2090349 (ite ((_ is Empty!15578) (right!43167 ys!41)) 0 (ite ((_ is Leaf!25872) (right!43167 ys!41)) (csize!31387 (right!43167 ys!41)) (csize!31386 (right!43167 ys!41)))))))

(assert (=> d!1640238 (= (size!39104 (right!43167 ys!41)) lt!2090349)))

(declare-fun bs!1190460 () Bool)

(assert (= bs!1190460 d!1640238))

(assert (=> bs!1190460 m!6126718))

(assert (=> bs!1190460 m!6126718))

(declare-fun m!6127122 () Bool)

(assert (=> bs!1190460 m!6127122))

(assert (=> d!1640094 d!1640238))

(declare-fun d!1640240 () Bool)

(assert (=> d!1640240 (= (isEmpty!31660 (list!19017 (left!42837 xs!286))) ((_ is Nil!58448) (list!19017 (left!42837 xs!286))))))

(assert (=> d!1640108 d!1640240))

(declare-fun b!5077079 () Bool)

(declare-fun e!3167385 () List!58572)

(declare-fun e!3167386 () List!58572)

(assert (=> b!5077079 (= e!3167385 e!3167386)))

(declare-fun c!871873 () Bool)

(assert (=> b!5077079 (= c!871873 ((_ is Leaf!25872) (left!42837 xs!286)))))

(declare-fun b!5077080 () Bool)

(assert (=> b!5077080 (= e!3167386 (list!19016 (xs!18944 (left!42837 xs!286))))))

(declare-fun b!5077081 () Bool)

(assert (=> b!5077081 (= e!3167386 (++!12802 (list!19017 (left!42837 (left!42837 xs!286))) (list!19017 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5077078 () Bool)

(assert (=> b!5077078 (= e!3167385 Nil!58448)))

(declare-fun d!1640242 () Bool)

(declare-fun c!871872 () Bool)

(assert (=> d!1640242 (= c!871872 ((_ is Empty!15578) (left!42837 xs!286)))))

(assert (=> d!1640242 (= (list!19017 (left!42837 xs!286)) e!3167385)))

(assert (= (and d!1640242 c!871872) b!5077078))

(assert (= (and d!1640242 (not c!871872)) b!5077079))

(assert (= (and b!5077079 c!871873) b!5077080))

(assert (= (and b!5077079 (not c!871873)) b!5077081))

(assert (=> b!5077080 m!6126770))

(assert (=> b!5077081 m!6127112))

(declare-fun m!6127124 () Bool)

(assert (=> b!5077081 m!6127124))

(assert (=> b!5077081 m!6127112))

(assert (=> b!5077081 m!6127124))

(declare-fun m!6127126 () Bool)

(assert (=> b!5077081 m!6127126))

(assert (=> d!1640108 d!1640242))

(declare-fun d!1640244 () Bool)

(declare-fun lt!2090350 () Int)

(assert (=> d!1640244 (= lt!2090350 (size!39102 (list!19017 (left!42837 xs!286))))))

(assert (=> d!1640244 (= lt!2090350 (ite ((_ is Empty!15578) (left!42837 xs!286)) 0 (ite ((_ is Leaf!25872) (left!42837 xs!286)) (csize!31387 (left!42837 xs!286)) (csize!31386 (left!42837 xs!286)))))))

(assert (=> d!1640244 (= (size!39104 (left!42837 xs!286)) lt!2090350)))

(declare-fun bs!1190461 () Bool)

(assert (= bs!1190461 d!1640244))

(assert (=> bs!1190461 m!6126758))

(assert (=> bs!1190461 m!6126758))

(declare-fun m!6127128 () Bool)

(assert (=> bs!1190461 m!6127128))

(assert (=> d!1640108 d!1640244))

(declare-fun d!1640246 () Bool)

(declare-fun lt!2090351 () Int)

(assert (=> d!1640246 (>= lt!2090351 0)))

(declare-fun e!3167387 () Int)

(assert (=> d!1640246 (= lt!2090351 e!3167387)))

(declare-fun c!871874 () Bool)

(assert (=> d!1640246 (= c!871874 ((_ is Nil!58448) (list!19016 (xs!18944 (right!43167 xs!286)))))))

(assert (=> d!1640246 (= (size!39102 (list!19016 (xs!18944 (right!43167 xs!286)))) lt!2090351)))

(declare-fun b!5077082 () Bool)

(assert (=> b!5077082 (= e!3167387 0)))

(declare-fun b!5077083 () Bool)

(assert (=> b!5077083 (= e!3167387 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 (right!43167 xs!286)))))))))

(assert (= (and d!1640246 c!871874) b!5077082))

(assert (= (and d!1640246 (not c!871874)) b!5077083))

(declare-fun m!6127130 () Bool)

(assert (=> b!5077083 m!6127130))

(assert (=> b!5076855 d!1640246))

(declare-fun d!1640248 () Bool)

(assert (=> d!1640248 (= (list!19016 (xs!18944 (right!43167 xs!286))) (innerList!15666 (xs!18944 (right!43167 xs!286))))))

(assert (=> b!5076855 d!1640248))

(declare-fun d!1640250 () Bool)

(assert (=> d!1640250 (= (max!0 (height!2155 (left!42837 (right!43167 xs!286))) (height!2155 (right!43167 (right!43167 xs!286)))) (ite (< (height!2155 (left!42837 (right!43167 xs!286))) (height!2155 (right!43167 (right!43167 xs!286)))) (height!2155 (right!43167 (right!43167 xs!286))) (height!2155 (left!42837 (right!43167 xs!286)))))))

(assert (=> b!5076827 d!1640250))

(declare-fun d!1640252 () Bool)

(assert (=> d!1640252 (= (height!2155 (left!42837 (right!43167 xs!286))) (ite ((_ is Empty!15578) (left!42837 (right!43167 xs!286))) 0 (ite ((_ is Leaf!25872) (left!42837 (right!43167 xs!286))) 1 (cheight!15789 (left!42837 (right!43167 xs!286))))))))

(assert (=> b!5076827 d!1640252))

(declare-fun d!1640254 () Bool)

(assert (=> d!1640254 (= (height!2155 (right!43167 (right!43167 xs!286))) (ite ((_ is Empty!15578) (right!43167 (right!43167 xs!286))) 0 (ite ((_ is Leaf!25872) (right!43167 (right!43167 xs!286))) 1 (cheight!15789 (right!43167 (right!43167 xs!286))))))))

(assert (=> b!5076827 d!1640254))

(declare-fun d!1640256 () Bool)

(declare-fun lt!2090352 () Int)

(assert (=> d!1640256 (>= lt!2090352 0)))

(declare-fun e!3167388 () Int)

(assert (=> d!1640256 (= lt!2090352 e!3167388)))

(declare-fun c!871875 () Bool)

(assert (=> d!1640256 (= c!871875 ((_ is Nil!58448) (t!371369 (innerList!15666 (xs!18944 xs!286)))))))

(assert (=> d!1640256 (= (size!39102 (t!371369 (innerList!15666 (xs!18944 xs!286)))) lt!2090352)))

(declare-fun b!5077084 () Bool)

(assert (=> b!5077084 (= e!3167388 0)))

(declare-fun b!5077085 () Bool)

(assert (=> b!5077085 (= e!3167388 (+ 1 (size!39102 (t!371369 (t!371369 (innerList!15666 (xs!18944 xs!286)))))))))

(assert (= (and d!1640256 c!871875) b!5077084))

(assert (= (and d!1640256 (not c!871875)) b!5077085))

(declare-fun m!6127132 () Bool)

(assert (=> b!5077085 m!6127132))

(assert (=> b!5076898 d!1640256))

(declare-fun d!1640258 () Bool)

(declare-fun res!2161600 () Bool)

(declare-fun e!3167389 () Bool)

(assert (=> d!1640258 (=> (not res!2161600) (not e!3167389))))

(assert (=> d!1640258 (= res!2161600 (<= (size!39102 (list!19016 (xs!18944 (left!42837 (right!43167 xs!286))))) 512))))

(assert (=> d!1640258 (= (inv!77635 (left!42837 (right!43167 xs!286))) e!3167389)))

(declare-fun b!5077086 () Bool)

(declare-fun res!2161601 () Bool)

(assert (=> b!5077086 (=> (not res!2161601) (not e!3167389))))

(assert (=> b!5077086 (= res!2161601 (= (csize!31387 (left!42837 (right!43167 xs!286))) (size!39102 (list!19016 (xs!18944 (left!42837 (right!43167 xs!286)))))))))

(declare-fun b!5077087 () Bool)

(assert (=> b!5077087 (= e!3167389 (and (> (csize!31387 (left!42837 (right!43167 xs!286))) 0) (<= (csize!31387 (left!42837 (right!43167 xs!286))) 512)))))

(assert (= (and d!1640258 res!2161600) b!5077086))

(assert (= (and b!5077086 res!2161601) b!5077087))

(declare-fun m!6127134 () Bool)

(assert (=> d!1640258 m!6127134))

(assert (=> d!1640258 m!6127134))

(declare-fun m!6127136 () Bool)

(assert (=> d!1640258 m!6127136))

(assert (=> b!5077086 m!6127134))

(assert (=> b!5077086 m!6127134))

(assert (=> b!5077086 m!6127136))

(assert (=> b!5076816 d!1640258))

(declare-fun d!1640260 () Bool)

(declare-fun res!2161606 () Bool)

(declare-fun e!3167391 () Bool)

(assert (=> d!1640260 (=> res!2161606 e!3167391)))

(assert (=> d!1640260 (= res!2161606 (not ((_ is Node!15578) (left!42837 (left!42837 xs!286)))))))

(assert (=> d!1640260 (= (isBalanced!4440 (left!42837 (left!42837 xs!286))) e!3167391)))

(declare-fun b!5077088 () Bool)

(declare-fun res!2161604 () Bool)

(declare-fun e!3167390 () Bool)

(assert (=> b!5077088 (=> (not res!2161604) (not e!3167390))))

(assert (=> b!5077088 (= res!2161604 (isBalanced!4440 (right!43167 (left!42837 (left!42837 xs!286)))))))

(declare-fun b!5077089 () Bool)

(declare-fun res!2161602 () Bool)

(assert (=> b!5077089 (=> (not res!2161602) (not e!3167390))))

(assert (=> b!5077089 (= res!2161602 (isBalanced!4440 (left!42837 (left!42837 (left!42837 xs!286)))))))

(declare-fun b!5077090 () Bool)

(assert (=> b!5077090 (= e!3167390 (not (isEmpty!31658 (right!43167 (left!42837 (left!42837 xs!286))))))))

(declare-fun b!5077091 () Bool)

(declare-fun res!2161603 () Bool)

(assert (=> b!5077091 (=> (not res!2161603) (not e!3167390))))

(assert (=> b!5077091 (= res!2161603 (not (isEmpty!31658 (left!42837 (left!42837 (left!42837 xs!286))))))))

(declare-fun b!5077092 () Bool)

(declare-fun res!2161605 () Bool)

(assert (=> b!5077092 (=> (not res!2161605) (not e!3167390))))

(assert (=> b!5077092 (= res!2161605 (<= (- (height!2155 (left!42837 (left!42837 (left!42837 xs!286)))) (height!2155 (right!43167 (left!42837 (left!42837 xs!286))))) 1))))

(declare-fun b!5077093 () Bool)

(assert (=> b!5077093 (= e!3167391 e!3167390)))

(declare-fun res!2161607 () Bool)

(assert (=> b!5077093 (=> (not res!2161607) (not e!3167390))))

(assert (=> b!5077093 (= res!2161607 (<= (- 1) (- (height!2155 (left!42837 (left!42837 (left!42837 xs!286)))) (height!2155 (right!43167 (left!42837 (left!42837 xs!286)))))))))

(assert (= (and d!1640260 (not res!2161606)) b!5077093))

(assert (= (and b!5077093 res!2161607) b!5077092))

(assert (= (and b!5077092 res!2161605) b!5077089))

(assert (= (and b!5077089 res!2161602) b!5077088))

(assert (= (and b!5077088 res!2161604) b!5077091))

(assert (= (and b!5077091 res!2161603) b!5077090))

(declare-fun m!6127138 () Bool)

(assert (=> b!5077090 m!6127138))

(declare-fun m!6127140 () Bool)

(assert (=> b!5077089 m!6127140))

(declare-fun m!6127142 () Bool)

(assert (=> b!5077088 m!6127142))

(declare-fun m!6127144 () Bool)

(assert (=> b!5077092 m!6127144))

(declare-fun m!6127146 () Bool)

(assert (=> b!5077092 m!6127146))

(assert (=> b!5077093 m!6127144))

(assert (=> b!5077093 m!6127146))

(declare-fun m!6127148 () Bool)

(assert (=> b!5077091 m!6127148))

(assert (=> b!5076888 d!1640260))

(declare-fun d!1640262 () Bool)

(declare-fun res!2161608 () Bool)

(declare-fun e!3167392 () Bool)

(assert (=> d!1640262 (=> (not res!2161608) (not e!3167392))))

(assert (=> d!1640262 (= res!2161608 (= (csize!31386 (left!42837 (right!43167 xs!286))) (+ (size!39104 (left!42837 (left!42837 (right!43167 xs!286)))) (size!39104 (right!43167 (left!42837 (right!43167 xs!286)))))))))

(assert (=> d!1640262 (= (inv!77634 (left!42837 (right!43167 xs!286))) e!3167392)))

(declare-fun b!5077094 () Bool)

(declare-fun res!2161609 () Bool)

(assert (=> b!5077094 (=> (not res!2161609) (not e!3167392))))

(assert (=> b!5077094 (= res!2161609 (and (not (= (left!42837 (left!42837 (right!43167 xs!286))) Empty!15578)) (not (= (right!43167 (left!42837 (right!43167 xs!286))) Empty!15578))))))

(declare-fun b!5077095 () Bool)

(declare-fun res!2161610 () Bool)

(assert (=> b!5077095 (=> (not res!2161610) (not e!3167392))))

(assert (=> b!5077095 (= res!2161610 (= (cheight!15789 (left!42837 (right!43167 xs!286))) (+ (max!0 (height!2155 (left!42837 (left!42837 (right!43167 xs!286)))) (height!2155 (right!43167 (left!42837 (right!43167 xs!286))))) 1)))))

(declare-fun b!5077096 () Bool)

(assert (=> b!5077096 (= e!3167392 (<= 0 (cheight!15789 (left!42837 (right!43167 xs!286)))))))

(assert (= (and d!1640262 res!2161608) b!5077094))

(assert (= (and b!5077094 res!2161609) b!5077095))

(assert (= (and b!5077095 res!2161610) b!5077096))

(declare-fun m!6127150 () Bool)

(assert (=> d!1640262 m!6127150))

(declare-fun m!6127152 () Bool)

(assert (=> d!1640262 m!6127152))

(declare-fun m!6127154 () Bool)

(assert (=> b!5077095 m!6127154))

(declare-fun m!6127156 () Bool)

(assert (=> b!5077095 m!6127156))

(assert (=> b!5077095 m!6127154))

(assert (=> b!5077095 m!6127156))

(declare-fun m!6127158 () Bool)

(assert (=> b!5077095 m!6127158))

(assert (=> b!5076814 d!1640262))

(declare-fun d!1640264 () Bool)

(declare-fun lt!2090353 () Int)

(assert (=> d!1640264 (= lt!2090353 (size!39102 (list!19017 (left!42837 (right!43167 xs!286)))))))

(assert (=> d!1640264 (= lt!2090353 (ite ((_ is Empty!15578) (left!42837 (right!43167 xs!286))) 0 (ite ((_ is Leaf!25872) (left!42837 (right!43167 xs!286))) (csize!31387 (left!42837 (right!43167 xs!286))) (csize!31386 (left!42837 (right!43167 xs!286))))))))

(assert (=> d!1640264 (= (size!39104 (left!42837 (right!43167 xs!286))) lt!2090353)))

(declare-fun bs!1190462 () Bool)

(assert (= bs!1190462 d!1640264))

(declare-fun m!6127160 () Bool)

(assert (=> bs!1190462 m!6127160))

(assert (=> bs!1190462 m!6127160))

(declare-fun m!6127162 () Bool)

(assert (=> bs!1190462 m!6127162))

(assert (=> d!1640086 d!1640264))

(declare-fun d!1640266 () Bool)

(declare-fun lt!2090354 () Int)

(assert (=> d!1640266 (= lt!2090354 (size!39102 (list!19017 (right!43167 (right!43167 xs!286)))))))

(assert (=> d!1640266 (= lt!2090354 (ite ((_ is Empty!15578) (right!43167 (right!43167 xs!286))) 0 (ite ((_ is Leaf!25872) (right!43167 (right!43167 xs!286))) (csize!31387 (right!43167 (right!43167 xs!286))) (csize!31386 (right!43167 (right!43167 xs!286))))))))

(assert (=> d!1640266 (= (size!39104 (right!43167 (right!43167 xs!286))) lt!2090354)))

(declare-fun bs!1190463 () Bool)

(assert (= bs!1190463 d!1640266))

(declare-fun m!6127164 () Bool)

(assert (=> bs!1190463 m!6127164))

(assert (=> bs!1190463 m!6127164))

(declare-fun m!6127166 () Bool)

(assert (=> bs!1190463 m!6127166))

(assert (=> d!1640086 d!1640266))

(declare-fun d!1640268 () Bool)

(declare-fun c!871876 () Bool)

(assert (=> d!1640268 (= c!871876 ((_ is Node!15578) (left!42837 (left!42837 (right!43167 xs!286)))))))

(declare-fun e!3167393 () Bool)

(assert (=> d!1640268 (= (inv!77633 (left!42837 (left!42837 (right!43167 xs!286)))) e!3167393)))

(declare-fun b!5077097 () Bool)

(assert (=> b!5077097 (= e!3167393 (inv!77634 (left!42837 (left!42837 (right!43167 xs!286)))))))

(declare-fun b!5077098 () Bool)

(declare-fun e!3167394 () Bool)

(assert (=> b!5077098 (= e!3167393 e!3167394)))

(declare-fun res!2161611 () Bool)

(assert (=> b!5077098 (= res!2161611 (not ((_ is Leaf!25872) (left!42837 (left!42837 (right!43167 xs!286))))))))

(assert (=> b!5077098 (=> res!2161611 e!3167394)))

(declare-fun b!5077099 () Bool)

(assert (=> b!5077099 (= e!3167394 (inv!77635 (left!42837 (left!42837 (right!43167 xs!286)))))))

(assert (= (and d!1640268 c!871876) b!5077097))

(assert (= (and d!1640268 (not c!871876)) b!5077098))

(assert (= (and b!5077098 (not res!2161611)) b!5077099))

(declare-fun m!6127168 () Bool)

(assert (=> b!5077097 m!6127168))

(declare-fun m!6127170 () Bool)

(assert (=> b!5077099 m!6127170))

(assert (=> b!5076910 d!1640268))

(declare-fun d!1640270 () Bool)

(declare-fun c!871877 () Bool)

(assert (=> d!1640270 (= c!871877 ((_ is Node!15578) (right!43167 (left!42837 (right!43167 xs!286)))))))

(declare-fun e!3167395 () Bool)

(assert (=> d!1640270 (= (inv!77633 (right!43167 (left!42837 (right!43167 xs!286)))) e!3167395)))

(declare-fun b!5077100 () Bool)

(assert (=> b!5077100 (= e!3167395 (inv!77634 (right!43167 (left!42837 (right!43167 xs!286)))))))

(declare-fun b!5077101 () Bool)

(declare-fun e!3167396 () Bool)

(assert (=> b!5077101 (= e!3167395 e!3167396)))

(declare-fun res!2161612 () Bool)

(assert (=> b!5077101 (= res!2161612 (not ((_ is Leaf!25872) (right!43167 (left!42837 (right!43167 xs!286))))))))

(assert (=> b!5077101 (=> res!2161612 e!3167396)))

(declare-fun b!5077102 () Bool)

(assert (=> b!5077102 (= e!3167396 (inv!77635 (right!43167 (left!42837 (right!43167 xs!286)))))))

(assert (= (and d!1640270 c!871877) b!5077100))

(assert (= (and d!1640270 (not c!871877)) b!5077101))

(assert (= (and b!5077101 (not res!2161612)) b!5077102))

(declare-fun m!6127172 () Bool)

(assert (=> b!5077100 m!6127172))

(declare-fun m!6127174 () Bool)

(assert (=> b!5077102 m!6127174))

(assert (=> b!5076910 d!1640270))

(declare-fun d!1640272 () Bool)

(declare-fun c!871878 () Bool)

(assert (=> d!1640272 (= c!871878 ((_ is Node!15578) (left!42837 (right!43167 (left!42837 xs!286)))))))

(declare-fun e!3167397 () Bool)

(assert (=> d!1640272 (= (inv!77633 (left!42837 (right!43167 (left!42837 xs!286)))) e!3167397)))

(declare-fun b!5077103 () Bool)

(assert (=> b!5077103 (= e!3167397 (inv!77634 (left!42837 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5077104 () Bool)

(declare-fun e!3167398 () Bool)

(assert (=> b!5077104 (= e!3167397 e!3167398)))

(declare-fun res!2161613 () Bool)

(assert (=> b!5077104 (= res!2161613 (not ((_ is Leaf!25872) (left!42837 (right!43167 (left!42837 xs!286))))))))

(assert (=> b!5077104 (=> res!2161613 e!3167398)))

(declare-fun b!5077105 () Bool)

(assert (=> b!5077105 (= e!3167398 (inv!77635 (left!42837 (right!43167 (left!42837 xs!286)))))))

(assert (= (and d!1640272 c!871878) b!5077103))

(assert (= (and d!1640272 (not c!871878)) b!5077104))

(assert (= (and b!5077104 (not res!2161613)) b!5077105))

(declare-fun m!6127176 () Bool)

(assert (=> b!5077103 m!6127176))

(declare-fun m!6127178 () Bool)

(assert (=> b!5077105 m!6127178))

(assert (=> b!5076934 d!1640272))

(declare-fun d!1640274 () Bool)

(declare-fun c!871879 () Bool)

(assert (=> d!1640274 (= c!871879 ((_ is Node!15578) (right!43167 (right!43167 (left!42837 xs!286)))))))

(declare-fun e!3167399 () Bool)

(assert (=> d!1640274 (= (inv!77633 (right!43167 (right!43167 (left!42837 xs!286)))) e!3167399)))

(declare-fun b!5077106 () Bool)

(assert (=> b!5077106 (= e!3167399 (inv!77634 (right!43167 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5077107 () Bool)

(declare-fun e!3167400 () Bool)

(assert (=> b!5077107 (= e!3167399 e!3167400)))

(declare-fun res!2161614 () Bool)

(assert (=> b!5077107 (= res!2161614 (not ((_ is Leaf!25872) (right!43167 (right!43167 (left!42837 xs!286))))))))

(assert (=> b!5077107 (=> res!2161614 e!3167400)))

(declare-fun b!5077108 () Bool)

(assert (=> b!5077108 (= e!3167400 (inv!77635 (right!43167 (right!43167 (left!42837 xs!286)))))))

(assert (= (and d!1640274 c!871879) b!5077106))

(assert (= (and d!1640274 (not c!871879)) b!5077107))

(assert (= (and b!5077107 (not res!2161614)) b!5077108))

(declare-fun m!6127180 () Bool)

(assert (=> b!5077106 m!6127180))

(declare-fun m!6127182 () Bool)

(assert (=> b!5077108 m!6127182))

(assert (=> b!5076934 d!1640274))

(declare-fun d!1640276 () Bool)

(declare-fun lt!2090355 () Int)

(assert (=> d!1640276 (= lt!2090355 (size!39102 (list!19017 (left!42837 (left!42837 xs!286)))))))

(assert (=> d!1640276 (= lt!2090355 (ite ((_ is Empty!15578) (left!42837 (left!42837 xs!286))) 0 (ite ((_ is Leaf!25872) (left!42837 (left!42837 xs!286))) (csize!31387 (left!42837 (left!42837 xs!286))) (csize!31386 (left!42837 (left!42837 xs!286))))))))

(assert (=> d!1640276 (= (size!39104 (left!42837 (left!42837 xs!286))) lt!2090355)))

(declare-fun bs!1190464 () Bool)

(assert (= bs!1190464 d!1640276))

(assert (=> bs!1190464 m!6127112))

(assert (=> bs!1190464 m!6127112))

(declare-fun m!6127184 () Bool)

(assert (=> bs!1190464 m!6127184))

(assert (=> d!1640130 d!1640276))

(declare-fun d!1640278 () Bool)

(declare-fun lt!2090356 () Int)

(assert (=> d!1640278 (= lt!2090356 (size!39102 (list!19017 (right!43167 (left!42837 xs!286)))))))

(assert (=> d!1640278 (= lt!2090356 (ite ((_ is Empty!15578) (right!43167 (left!42837 xs!286))) 0 (ite ((_ is Leaf!25872) (right!43167 (left!42837 xs!286))) (csize!31387 (right!43167 (left!42837 xs!286))) (csize!31386 (right!43167 (left!42837 xs!286))))))))

(assert (=> d!1640278 (= (size!39104 (right!43167 (left!42837 xs!286))) lt!2090356)))

(declare-fun bs!1190465 () Bool)

(assert (= bs!1190465 d!1640278))

(assert (=> bs!1190465 m!6127124))

(assert (=> bs!1190465 m!6127124))

(declare-fun m!6127186 () Bool)

(assert (=> bs!1190465 m!6127186))

(assert (=> d!1640130 d!1640278))

(declare-fun d!1640280 () Bool)

(assert (=> d!1640280 (= (inv!77632 (xs!18944 (left!42837 (left!42837 xs!286)))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 (left!42837 xs!286))))) 2147483647))))

(declare-fun bs!1190466 () Bool)

(assert (= bs!1190466 d!1640280))

(declare-fun m!6127188 () Bool)

(assert (=> bs!1190466 m!6127188))

(assert (=> b!5076932 d!1640280))

(declare-fun d!1640282 () Bool)

(declare-fun lt!2090357 () Bool)

(assert (=> d!1640282 (= lt!2090357 (isEmpty!31660 (list!19017 (right!43167 (right!43167 xs!286)))))))

(assert (=> d!1640282 (= lt!2090357 (= (size!39104 (right!43167 (right!43167 xs!286))) 0))))

(assert (=> d!1640282 (= (isEmpty!31658 (right!43167 (right!43167 xs!286))) lt!2090357)))

(declare-fun bs!1190467 () Bool)

(assert (= bs!1190467 d!1640282))

(assert (=> bs!1190467 m!6127164))

(assert (=> bs!1190467 m!6127164))

(declare-fun m!6127190 () Bool)

(assert (=> bs!1190467 m!6127190))

(assert (=> bs!1190467 m!6126692))

(assert (=> b!5076877 d!1640282))

(declare-fun d!1640284 () Bool)

(declare-fun lt!2090358 () Bool)

(assert (=> d!1640284 (= lt!2090358 (isEmpty!31660 (list!19017 (left!42837 (right!43167 ys!41)))))))

(assert (=> d!1640284 (= lt!2090358 (= (size!39104 (left!42837 (right!43167 ys!41))) 0))))

(assert (=> d!1640284 (= (isEmpty!31658 (left!42837 (right!43167 ys!41))) lt!2090358)))

(declare-fun bs!1190468 () Bool)

(assert (= bs!1190468 d!1640284))

(assert (=> bs!1190468 m!6127116))

(assert (=> bs!1190468 m!6127116))

(declare-fun m!6127192 () Bool)

(assert (=> bs!1190468 m!6127192))

(assert (=> bs!1190468 m!6126700))

(assert (=> b!5076843 d!1640284))

(declare-fun d!1640286 () Bool)

(declare-fun res!2161619 () Bool)

(declare-fun e!3167402 () Bool)

(assert (=> d!1640286 (=> res!2161619 e!3167402)))

(assert (=> d!1640286 (= res!2161619 (not ((_ is Node!15578) (right!43167 (left!42837 ys!41)))))))

(assert (=> d!1640286 (= (isBalanced!4440 (right!43167 (left!42837 ys!41))) e!3167402)))

(declare-fun b!5077109 () Bool)

(declare-fun res!2161617 () Bool)

(declare-fun e!3167401 () Bool)

(assert (=> b!5077109 (=> (not res!2161617) (not e!3167401))))

(assert (=> b!5077109 (= res!2161617 (isBalanced!4440 (right!43167 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5077110 () Bool)

(declare-fun res!2161615 () Bool)

(assert (=> b!5077110 (=> (not res!2161615) (not e!3167401))))

(assert (=> b!5077110 (= res!2161615 (isBalanced!4440 (left!42837 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5077111 () Bool)

(assert (=> b!5077111 (= e!3167401 (not (isEmpty!31658 (right!43167 (right!43167 (left!42837 ys!41))))))))

(declare-fun b!5077112 () Bool)

(declare-fun res!2161616 () Bool)

(assert (=> b!5077112 (=> (not res!2161616) (not e!3167401))))

(assert (=> b!5077112 (= res!2161616 (not (isEmpty!31658 (left!42837 (right!43167 (left!42837 ys!41))))))))

(declare-fun b!5077113 () Bool)

(declare-fun res!2161618 () Bool)

(assert (=> b!5077113 (=> (not res!2161618) (not e!3167401))))

(assert (=> b!5077113 (= res!2161618 (<= (- (height!2155 (left!42837 (right!43167 (left!42837 ys!41)))) (height!2155 (right!43167 (right!43167 (left!42837 ys!41))))) 1))))

(declare-fun b!5077114 () Bool)

(assert (=> b!5077114 (= e!3167402 e!3167401)))

(declare-fun res!2161620 () Bool)

(assert (=> b!5077114 (=> (not res!2161620) (not e!3167401))))

(assert (=> b!5077114 (= res!2161620 (<= (- 1) (- (height!2155 (left!42837 (right!43167 (left!42837 ys!41)))) (height!2155 (right!43167 (right!43167 (left!42837 ys!41)))))))))

(assert (= (and d!1640286 (not res!2161619)) b!5077114))

(assert (= (and b!5077114 res!2161620) b!5077113))

(assert (= (and b!5077113 res!2161618) b!5077110))

(assert (= (and b!5077110 res!2161615) b!5077109))

(assert (= (and b!5077109 res!2161617) b!5077112))

(assert (= (and b!5077112 res!2161616) b!5077111))

(declare-fun m!6127194 () Bool)

(assert (=> b!5077111 m!6127194))

(declare-fun m!6127196 () Bool)

(assert (=> b!5077110 m!6127196))

(declare-fun m!6127198 () Bool)

(assert (=> b!5077109 m!6127198))

(declare-fun m!6127200 () Bool)

(assert (=> b!5077113 m!6127200))

(declare-fun m!6127202 () Bool)

(assert (=> b!5077113 m!6127202))

(assert (=> b!5077114 m!6127200))

(assert (=> b!5077114 m!6127202))

(declare-fun m!6127204 () Bool)

(assert (=> b!5077112 m!6127204))

(assert (=> b!5076846 d!1640286))

(declare-fun d!1640288 () Bool)

(declare-fun c!871880 () Bool)

(assert (=> d!1640288 (= c!871880 ((_ is Node!15578) (left!42837 (left!42837 (left!42837 ys!41)))))))

(declare-fun e!3167403 () Bool)

(assert (=> d!1640288 (= (inv!77633 (left!42837 (left!42837 (left!42837 ys!41)))) e!3167403)))

(declare-fun b!5077115 () Bool)

(assert (=> b!5077115 (= e!3167403 (inv!77634 (left!42837 (left!42837 (left!42837 ys!41)))))))

(declare-fun b!5077116 () Bool)

(declare-fun e!3167404 () Bool)

(assert (=> b!5077116 (= e!3167403 e!3167404)))

(declare-fun res!2161621 () Bool)

(assert (=> b!5077116 (= res!2161621 (not ((_ is Leaf!25872) (left!42837 (left!42837 (left!42837 ys!41))))))))

(assert (=> b!5077116 (=> res!2161621 e!3167404)))

(declare-fun b!5077117 () Bool)

(assert (=> b!5077117 (= e!3167404 (inv!77635 (left!42837 (left!42837 (left!42837 ys!41)))))))

(assert (= (and d!1640288 c!871880) b!5077115))

(assert (= (and d!1640288 (not c!871880)) b!5077116))

(assert (= (and b!5077116 (not res!2161621)) b!5077117))

(declare-fun m!6127206 () Bool)

(assert (=> b!5077115 m!6127206))

(declare-fun m!6127208 () Bool)

(assert (=> b!5077117 m!6127208))

(assert (=> b!5076917 d!1640288))

(declare-fun d!1640290 () Bool)

(declare-fun c!871881 () Bool)

(assert (=> d!1640290 (= c!871881 ((_ is Node!15578) (right!43167 (left!42837 (left!42837 ys!41)))))))

(declare-fun e!3167405 () Bool)

(assert (=> d!1640290 (= (inv!77633 (right!43167 (left!42837 (left!42837 ys!41)))) e!3167405)))

(declare-fun b!5077118 () Bool)

(assert (=> b!5077118 (= e!3167405 (inv!77634 (right!43167 (left!42837 (left!42837 ys!41)))))))

(declare-fun b!5077119 () Bool)

(declare-fun e!3167406 () Bool)

(assert (=> b!5077119 (= e!3167405 e!3167406)))

(declare-fun res!2161622 () Bool)

(assert (=> b!5077119 (= res!2161622 (not ((_ is Leaf!25872) (right!43167 (left!42837 (left!42837 ys!41))))))))

(assert (=> b!5077119 (=> res!2161622 e!3167406)))

(declare-fun b!5077120 () Bool)

(assert (=> b!5077120 (= e!3167406 (inv!77635 (right!43167 (left!42837 (left!42837 ys!41)))))))

(assert (= (and d!1640290 c!871881) b!5077118))

(assert (= (and d!1640290 (not c!871881)) b!5077119))

(assert (= (and b!5077119 (not res!2161622)) b!5077120))

(declare-fun m!6127210 () Bool)

(assert (=> b!5077118 m!6127210))

(declare-fun m!6127212 () Bool)

(assert (=> b!5077120 m!6127212))

(assert (=> b!5076917 d!1640290))

(declare-fun d!1640292 () Bool)

(declare-fun res!2161627 () Bool)

(declare-fun e!3167408 () Bool)

(assert (=> d!1640292 (=> res!2161627 e!3167408)))

(assert (=> d!1640292 (= res!2161627 (not ((_ is Node!15578) (left!42837 (right!43167 ys!41)))))))

(assert (=> d!1640292 (= (isBalanced!4440 (left!42837 (right!43167 ys!41))) e!3167408)))

(declare-fun b!5077121 () Bool)

(declare-fun res!2161625 () Bool)

(declare-fun e!3167407 () Bool)

(assert (=> b!5077121 (=> (not res!2161625) (not e!3167407))))

(assert (=> b!5077121 (= res!2161625 (isBalanced!4440 (right!43167 (left!42837 (right!43167 ys!41)))))))

(declare-fun b!5077122 () Bool)

(declare-fun res!2161623 () Bool)

(assert (=> b!5077122 (=> (not res!2161623) (not e!3167407))))

(assert (=> b!5077122 (= res!2161623 (isBalanced!4440 (left!42837 (left!42837 (right!43167 ys!41)))))))

(declare-fun b!5077123 () Bool)

(assert (=> b!5077123 (= e!3167407 (not (isEmpty!31658 (right!43167 (left!42837 (right!43167 ys!41))))))))

(declare-fun b!5077124 () Bool)

(declare-fun res!2161624 () Bool)

(assert (=> b!5077124 (=> (not res!2161624) (not e!3167407))))

(assert (=> b!5077124 (= res!2161624 (not (isEmpty!31658 (left!42837 (left!42837 (right!43167 ys!41))))))))

(declare-fun b!5077125 () Bool)

(declare-fun res!2161626 () Bool)

(assert (=> b!5077125 (=> (not res!2161626) (not e!3167407))))

(assert (=> b!5077125 (= res!2161626 (<= (- (height!2155 (left!42837 (left!42837 (right!43167 ys!41)))) (height!2155 (right!43167 (left!42837 (right!43167 ys!41))))) 1))))

(declare-fun b!5077126 () Bool)

(assert (=> b!5077126 (= e!3167408 e!3167407)))

(declare-fun res!2161628 () Bool)

(assert (=> b!5077126 (=> (not res!2161628) (not e!3167407))))

(assert (=> b!5077126 (= res!2161628 (<= (- 1) (- (height!2155 (left!42837 (left!42837 (right!43167 ys!41)))) (height!2155 (right!43167 (left!42837 (right!43167 ys!41)))))))))

(assert (= (and d!1640292 (not res!2161627)) b!5077126))

(assert (= (and b!5077126 res!2161628) b!5077125))

(assert (= (and b!5077125 res!2161626) b!5077122))

(assert (= (and b!5077122 res!2161623) b!5077121))

(assert (= (and b!5077121 res!2161625) b!5077124))

(assert (= (and b!5077124 res!2161624) b!5077123))

(declare-fun m!6127214 () Bool)

(assert (=> b!5077123 m!6127214))

(declare-fun m!6127216 () Bool)

(assert (=> b!5077122 m!6127216))

(declare-fun m!6127218 () Bool)

(assert (=> b!5077121 m!6127218))

(declare-fun m!6127220 () Bool)

(assert (=> b!5077125 m!6127220))

(declare-fun m!6127222 () Bool)

(assert (=> b!5077125 m!6127222))

(assert (=> b!5077126 m!6127220))

(assert (=> b!5077126 m!6127222))

(declare-fun m!6127224 () Bool)

(assert (=> b!5077124 m!6127224))

(assert (=> b!5076841 d!1640292))

(declare-fun d!1640294 () Bool)

(assert (=> d!1640294 (= (max!0 (height!2155 (left!42837 (left!42837 xs!286))) (height!2155 (right!43167 (left!42837 xs!286)))) (ite (< (height!2155 (left!42837 (left!42837 xs!286))) (height!2155 (right!43167 (left!42837 xs!286)))) (height!2155 (right!43167 (left!42837 xs!286))) (height!2155 (left!42837 (left!42837 xs!286)))))))

(assert (=> b!5076882 d!1640294))

(declare-fun d!1640296 () Bool)

(assert (=> d!1640296 (= (height!2155 (left!42837 (left!42837 xs!286))) (ite ((_ is Empty!15578) (left!42837 (left!42837 xs!286))) 0 (ite ((_ is Leaf!25872) (left!42837 (left!42837 xs!286))) 1 (cheight!15789 (left!42837 (left!42837 xs!286))))))))

(assert (=> b!5076882 d!1640296))

(declare-fun d!1640298 () Bool)

(assert (=> d!1640298 (= (height!2155 (right!43167 (left!42837 xs!286))) (ite ((_ is Empty!15578) (right!43167 (left!42837 xs!286))) 0 (ite ((_ is Leaf!25872) (right!43167 (left!42837 xs!286))) 1 (cheight!15789 (right!43167 (left!42837 xs!286))))))))

(assert (=> b!5076882 d!1640298))

(declare-fun d!1640300 () Bool)

(declare-fun res!2161633 () Bool)

(declare-fun e!3167410 () Bool)

(assert (=> d!1640300 (=> res!2161633 e!3167410)))

(assert (=> d!1640300 (= res!2161633 (not ((_ is Node!15578) (right!43167 (right!43167 xs!286)))))))

(assert (=> d!1640300 (= (isBalanced!4440 (right!43167 (right!43167 xs!286))) e!3167410)))

(declare-fun b!5077127 () Bool)

(declare-fun res!2161631 () Bool)

(declare-fun e!3167409 () Bool)

(assert (=> b!5077127 (=> (not res!2161631) (not e!3167409))))

(assert (=> b!5077127 (= res!2161631 (isBalanced!4440 (right!43167 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5077128 () Bool)

(declare-fun res!2161629 () Bool)

(assert (=> b!5077128 (=> (not res!2161629) (not e!3167409))))

(assert (=> b!5077128 (= res!2161629 (isBalanced!4440 (left!42837 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5077129 () Bool)

(assert (=> b!5077129 (= e!3167409 (not (isEmpty!31658 (right!43167 (right!43167 (right!43167 xs!286))))))))

(declare-fun b!5077130 () Bool)

(declare-fun res!2161630 () Bool)

(assert (=> b!5077130 (=> (not res!2161630) (not e!3167409))))

(assert (=> b!5077130 (= res!2161630 (not (isEmpty!31658 (left!42837 (right!43167 (right!43167 xs!286))))))))

(declare-fun b!5077131 () Bool)

(declare-fun res!2161632 () Bool)

(assert (=> b!5077131 (=> (not res!2161632) (not e!3167409))))

(assert (=> b!5077131 (= res!2161632 (<= (- (height!2155 (left!42837 (right!43167 (right!43167 xs!286)))) (height!2155 (right!43167 (right!43167 (right!43167 xs!286))))) 1))))

(declare-fun b!5077132 () Bool)

(assert (=> b!5077132 (= e!3167410 e!3167409)))

(declare-fun res!2161634 () Bool)

(assert (=> b!5077132 (=> (not res!2161634) (not e!3167409))))

(assert (=> b!5077132 (= res!2161634 (<= (- 1) (- (height!2155 (left!42837 (right!43167 (right!43167 xs!286)))) (height!2155 (right!43167 (right!43167 (right!43167 xs!286)))))))))

(assert (= (and d!1640300 (not res!2161633)) b!5077132))

(assert (= (and b!5077132 res!2161634) b!5077131))

(assert (= (and b!5077131 res!2161632) b!5077128))

(assert (= (and b!5077128 res!2161629) b!5077127))

(assert (= (and b!5077127 res!2161631) b!5077130))

(assert (= (and b!5077130 res!2161630) b!5077129))

(declare-fun m!6127226 () Bool)

(assert (=> b!5077129 m!6127226))

(declare-fun m!6127228 () Bool)

(assert (=> b!5077128 m!6127228))

(declare-fun m!6127230 () Bool)

(assert (=> b!5077127 m!6127230))

(declare-fun m!6127232 () Bool)

(assert (=> b!5077131 m!6127232))

(declare-fun m!6127234 () Bool)

(assert (=> b!5077131 m!6127234))

(assert (=> b!5077132 m!6127232))

(assert (=> b!5077132 m!6127234))

(declare-fun m!6127236 () Bool)

(assert (=> b!5077130 m!6127236))

(assert (=> b!5076875 d!1640300))

(assert (=> d!1640100 d!1640244))

(declare-fun d!1640302 () Bool)

(declare-fun lt!2090359 () Int)

(assert (=> d!1640302 (= lt!2090359 (size!39102 (list!19017 (right!43167 xs!286))))))

(assert (=> d!1640302 (= lt!2090359 (ite ((_ is Empty!15578) (right!43167 xs!286)) 0 (ite ((_ is Leaf!25872) (right!43167 xs!286)) (csize!31387 (right!43167 xs!286)) (csize!31386 (right!43167 xs!286)))))))

(assert (=> d!1640302 (= (size!39104 (right!43167 xs!286)) lt!2090359)))

(declare-fun bs!1190469 () Bool)

(assert (= bs!1190469 d!1640302))

(assert (=> bs!1190469 m!6126766))

(assert (=> bs!1190469 m!6126766))

(declare-fun m!6127238 () Bool)

(assert (=> bs!1190469 m!6127238))

(assert (=> d!1640100 d!1640302))

(declare-fun d!1640304 () Bool)

(declare-fun lt!2090360 () Int)

(assert (=> d!1640304 (>= lt!2090360 0)))

(declare-fun e!3167411 () Int)

(assert (=> d!1640304 (= lt!2090360 e!3167411)))

(declare-fun c!871882 () Bool)

(assert (=> d!1640304 (= c!871882 ((_ is Nil!58448) (t!371369 (innerList!15666 (xs!18944 ys!41)))))))

(assert (=> d!1640304 (= (size!39102 (t!371369 (innerList!15666 (xs!18944 ys!41)))) lt!2090360)))

(declare-fun b!5077133 () Bool)

(assert (=> b!5077133 (= e!3167411 0)))

(declare-fun b!5077134 () Bool)

(assert (=> b!5077134 (= e!3167411 (+ 1 (size!39102 (t!371369 (t!371369 (innerList!15666 (xs!18944 ys!41)))))))))

(assert (= (and d!1640304 c!871882) b!5077133))

(assert (= (and d!1640304 (not c!871882)) b!5077134))

(declare-fun m!6127240 () Bool)

(assert (=> b!5077134 m!6127240))

(assert (=> b!5076903 d!1640304))

(declare-fun d!1640306 () Bool)

(declare-fun lt!2090361 () Int)

(assert (=> d!1640306 (= lt!2090361 (size!39102 (list!19017 (left!42837 ys!41))))))

(assert (=> d!1640306 (= lt!2090361 (ite ((_ is Empty!15578) (left!42837 ys!41)) 0 (ite ((_ is Leaf!25872) (left!42837 ys!41)) (csize!31387 (left!42837 ys!41)) (csize!31386 (left!42837 ys!41)))))))

(assert (=> d!1640306 (= (size!39104 (left!42837 ys!41)) lt!2090361)))

(declare-fun bs!1190470 () Bool)

(assert (= bs!1190470 d!1640306))

(assert (=> bs!1190470 m!6126826))

(assert (=> bs!1190470 m!6126826))

(declare-fun m!6127242 () Bool)

(assert (=> bs!1190470 m!6127242))

(assert (=> d!1640140 d!1640306))

(assert (=> d!1640140 d!1640238))

(assert (=> b!5076892 d!1640296))

(assert (=> b!5076892 d!1640298))

(declare-fun d!1640308 () Bool)

(declare-fun lt!2090362 () Int)

(assert (=> d!1640308 (>= lt!2090362 0)))

(declare-fun e!3167412 () Int)

(assert (=> d!1640308 (= lt!2090362 e!3167412)))

(declare-fun c!871883 () Bool)

(assert (=> d!1640308 (= c!871883 ((_ is Nil!58448) (list!19016 (xs!18944 xs!286))))))

(assert (=> d!1640308 (= (size!39102 (list!19016 (xs!18944 xs!286))) lt!2090362)))

(declare-fun b!5077135 () Bool)

(assert (=> b!5077135 (= e!3167412 0)))

(declare-fun b!5077136 () Bool)

(assert (=> b!5077136 (= e!3167412 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 xs!286))))))))

(assert (= (and d!1640308 c!871883) b!5077135))

(assert (= (and d!1640308 (not c!871883)) b!5077136))

(declare-fun m!6127244 () Bool)

(assert (=> b!5077136 m!6127244))

(assert (=> d!1640092 d!1640308))

(declare-fun d!1640310 () Bool)

(assert (=> d!1640310 (= (list!19016 (xs!18944 xs!286)) (innerList!15666 (xs!18944 xs!286)))))

(assert (=> d!1640092 d!1640310))

(declare-fun d!1640312 () Bool)

(declare-fun c!871884 () Bool)

(assert (=> d!1640312 (= c!871884 ((_ is Node!15578) (left!42837 (right!43167 (right!43167 xs!286)))))))

(declare-fun e!3167413 () Bool)

(assert (=> d!1640312 (= (inv!77633 (left!42837 (right!43167 (right!43167 xs!286)))) e!3167413)))

(declare-fun b!5077137 () Bool)

(assert (=> b!5077137 (= e!3167413 (inv!77634 (left!42837 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5077138 () Bool)

(declare-fun e!3167414 () Bool)

(assert (=> b!5077138 (= e!3167413 e!3167414)))

(declare-fun res!2161635 () Bool)

(assert (=> b!5077138 (= res!2161635 (not ((_ is Leaf!25872) (left!42837 (right!43167 (right!43167 xs!286))))))))

(assert (=> b!5077138 (=> res!2161635 e!3167414)))

(declare-fun b!5077139 () Bool)

(assert (=> b!5077139 (= e!3167414 (inv!77635 (left!42837 (right!43167 (right!43167 xs!286)))))))

(assert (= (and d!1640312 c!871884) b!5077137))

(assert (= (and d!1640312 (not c!871884)) b!5077138))

(assert (= (and b!5077138 (not res!2161635)) b!5077139))

(declare-fun m!6127246 () Bool)

(assert (=> b!5077137 m!6127246))

(declare-fun m!6127248 () Bool)

(assert (=> b!5077139 m!6127248))

(assert (=> b!5076913 d!1640312))

(declare-fun d!1640314 () Bool)

(declare-fun c!871885 () Bool)

(assert (=> d!1640314 (= c!871885 ((_ is Node!15578) (right!43167 (right!43167 (right!43167 xs!286)))))))

(declare-fun e!3167415 () Bool)

(assert (=> d!1640314 (= (inv!77633 (right!43167 (right!43167 (right!43167 xs!286)))) e!3167415)))

(declare-fun b!5077140 () Bool)

(assert (=> b!5077140 (= e!3167415 (inv!77634 (right!43167 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5077141 () Bool)

(declare-fun e!3167416 () Bool)

(assert (=> b!5077141 (= e!3167415 e!3167416)))

(declare-fun res!2161636 () Bool)

(assert (=> b!5077141 (= res!2161636 (not ((_ is Leaf!25872) (right!43167 (right!43167 (right!43167 xs!286))))))))

(assert (=> b!5077141 (=> res!2161636 e!3167416)))

(declare-fun b!5077142 () Bool)

(assert (=> b!5077142 (= e!3167416 (inv!77635 (right!43167 (right!43167 (right!43167 xs!286)))))))

(assert (= (and d!1640314 c!871885) b!5077140))

(assert (= (and d!1640314 (not c!871885)) b!5077141))

(assert (= (and b!5077141 (not res!2161636)) b!5077142))

(declare-fun m!6127250 () Bool)

(assert (=> b!5077140 m!6127250))

(declare-fun m!6127252 () Bool)

(assert (=> b!5077142 m!6127252))

(assert (=> b!5076913 d!1640314))

(declare-fun d!1640316 () Bool)

(assert (=> d!1640316 (= (inv!77632 (xs!18944 (right!43167 (right!43167 ys!41)))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 (right!43167 ys!41))))) 2147483647))))

(declare-fun bs!1190471 () Bool)

(assert (= bs!1190471 d!1640316))

(declare-fun m!6127254 () Bool)

(assert (=> bs!1190471 m!6127254))

(assert (=> b!5076928 d!1640316))

(declare-fun d!1640318 () Bool)

(declare-fun res!2161637 () Bool)

(declare-fun e!3167417 () Bool)

(assert (=> d!1640318 (=> (not res!2161637) (not e!3167417))))

(assert (=> d!1640318 (= res!2161637 (<= (size!39102 (list!19016 (xs!18944 (right!43167 (left!42837 xs!286))))) 512))))

(assert (=> d!1640318 (= (inv!77635 (right!43167 (left!42837 xs!286))) e!3167417)))

(declare-fun b!5077143 () Bool)

(declare-fun res!2161638 () Bool)

(assert (=> b!5077143 (=> (not res!2161638) (not e!3167417))))

(assert (=> b!5077143 (= res!2161638 (= (csize!31387 (right!43167 (left!42837 xs!286))) (size!39102 (list!19016 (xs!18944 (right!43167 (left!42837 xs!286)))))))))

(declare-fun b!5077144 () Bool)

(assert (=> b!5077144 (= e!3167417 (and (> (csize!31387 (right!43167 (left!42837 xs!286))) 0) (<= (csize!31387 (right!43167 (left!42837 xs!286))) 512)))))

(assert (= (and d!1640318 res!2161637) b!5077143))

(assert (= (and b!5077143 res!2161638) b!5077144))

(declare-fun m!6127256 () Bool)

(assert (=> d!1640318 m!6127256))

(assert (=> d!1640318 m!6127256))

(declare-fun m!6127258 () Bool)

(assert (=> d!1640318 m!6127258))

(assert (=> b!5077143 m!6127256))

(assert (=> b!5077143 m!6127256))

(assert (=> b!5077143 m!6127258))

(assert (=> b!5076874 d!1640318))

(assert (=> b!5076850 d!1640056))

(assert (=> b!5076850 d!1640232))

(declare-fun d!1640320 () Bool)

(assert (=> d!1640320 (= (height!2155 (left!42837 (right!43167 ys!41))) (ite ((_ is Empty!15578) (left!42837 (right!43167 ys!41))) 0 (ite ((_ is Leaf!25872) (left!42837 (right!43167 ys!41))) 1 (cheight!15789 (left!42837 (right!43167 ys!41))))))))

(assert (=> b!5076845 d!1640320))

(declare-fun d!1640322 () Bool)

(assert (=> d!1640322 (= (height!2155 (right!43167 (right!43167 ys!41))) (ite ((_ is Empty!15578) (right!43167 (right!43167 ys!41))) 0 (ite ((_ is Leaf!25872) (right!43167 (right!43167 ys!41))) 1 (cheight!15789 (right!43167 (right!43167 ys!41))))))))

(assert (=> b!5076845 d!1640322))

(assert (=> b!5076789 d!1640124))

(assert (=> b!5076789 d!1640126))

(declare-fun d!1640324 () Bool)

(declare-fun lt!2090363 () Bool)

(assert (=> d!1640324 (= lt!2090363 (isEmpty!31660 (list!19017 (right!43167 (left!42837 ys!41)))))))

(assert (=> d!1640324 (= lt!2090363 (= (size!39104 (right!43167 (left!42837 ys!41))) 0))))

(assert (=> d!1640324 (= (isEmpty!31658 (right!43167 (left!42837 ys!41))) lt!2090363)))

(declare-fun bs!1190472 () Bool)

(assert (= bs!1190472 d!1640324))

(declare-fun m!6127260 () Bool)

(assert (=> bs!1190472 m!6127260))

(assert (=> bs!1190472 m!6127260))

(declare-fun m!6127262 () Bool)

(assert (=> bs!1190472 m!6127262))

(assert (=> bs!1190472 m!6126814))

(assert (=> b!5076848 d!1640324))

(declare-fun d!1640326 () Bool)

(declare-fun lt!2090364 () Int)

(assert (=> d!1640326 (>= lt!2090364 0)))

(declare-fun e!3167418 () Int)

(assert (=> d!1640326 (= lt!2090364 e!3167418)))

(declare-fun c!871886 () Bool)

(assert (=> d!1640326 (= c!871886 ((_ is Nil!58448) (innerList!15666 (xs!18944 (right!43167 ys!41)))))))

(assert (=> d!1640326 (= (size!39102 (innerList!15666 (xs!18944 (right!43167 ys!41)))) lt!2090364)))

(declare-fun b!5077145 () Bool)

(assert (=> b!5077145 (= e!3167418 0)))

(declare-fun b!5077146 () Bool)

(assert (=> b!5077146 (= e!3167418 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 (right!43167 ys!41)))))))))

(assert (= (and d!1640326 c!871886) b!5077145))

(assert (= (and d!1640326 (not c!871886)) b!5077146))

(declare-fun m!6127264 () Bool)

(assert (=> b!5077146 m!6127264))

(assert (=> d!1640110 d!1640326))

(assert (=> b!5076879 d!1640252))

(assert (=> b!5076879 d!1640254))

(declare-fun d!1640328 () Bool)

(assert (=> d!1640328 (= (max!0 (height!2155 (left!42837 ys!41)) (height!2155 (right!43167 ys!41))) (ite (< (height!2155 (left!42837 ys!41)) (height!2155 (right!43167 ys!41))) (height!2155 (right!43167 ys!41)) (height!2155 (left!42837 ys!41))))))

(assert (=> b!5076900 d!1640328))

(assert (=> b!5076900 d!1640062))

(assert (=> b!5076900 d!1640060))

(declare-fun d!1640330 () Bool)

(assert (=> d!1640330 (= (max!0 (height!2155 (left!42837 xs!286)) (height!2155 (right!43167 xs!286))) (ite (< (height!2155 (left!42837 xs!286)) (height!2155 (right!43167 xs!286))) (height!2155 (right!43167 xs!286)) (height!2155 (left!42837 xs!286))))))

(assert (=> b!5076853 d!1640330))

(assert (=> b!5076853 d!1640150))

(assert (=> b!5076853 d!1640152))

(declare-fun d!1640332 () Bool)

(declare-fun res!2161639 () Bool)

(declare-fun e!3167419 () Bool)

(assert (=> d!1640332 (=> (not res!2161639) (not e!3167419))))

(assert (=> d!1640332 (= res!2161639 (= (csize!31386 (right!43167 (left!42837 xs!286))) (+ (size!39104 (left!42837 (right!43167 (left!42837 xs!286)))) (size!39104 (right!43167 (right!43167 (left!42837 xs!286)))))))))

(assert (=> d!1640332 (= (inv!77634 (right!43167 (left!42837 xs!286))) e!3167419)))

(declare-fun b!5077147 () Bool)

(declare-fun res!2161640 () Bool)

(assert (=> b!5077147 (=> (not res!2161640) (not e!3167419))))

(assert (=> b!5077147 (= res!2161640 (and (not (= (left!42837 (right!43167 (left!42837 xs!286))) Empty!15578)) (not (= (right!43167 (right!43167 (left!42837 xs!286))) Empty!15578))))))

(declare-fun b!5077148 () Bool)

(declare-fun res!2161641 () Bool)

(assert (=> b!5077148 (=> (not res!2161641) (not e!3167419))))

(assert (=> b!5077148 (= res!2161641 (= (cheight!15789 (right!43167 (left!42837 xs!286))) (+ (max!0 (height!2155 (left!42837 (right!43167 (left!42837 xs!286)))) (height!2155 (right!43167 (right!43167 (left!42837 xs!286))))) 1)))))

(declare-fun b!5077149 () Bool)

(assert (=> b!5077149 (= e!3167419 (<= 0 (cheight!15789 (right!43167 (left!42837 xs!286)))))))

(assert (= (and d!1640332 res!2161639) b!5077147))

(assert (= (and b!5077147 res!2161640) b!5077148))

(assert (= (and b!5077148 res!2161641) b!5077149))

(declare-fun m!6127266 () Bool)

(assert (=> d!1640332 m!6127266))

(declare-fun m!6127268 () Bool)

(assert (=> d!1640332 m!6127268))

(declare-fun m!6127270 () Bool)

(assert (=> b!5077148 m!6127270))

(declare-fun m!6127272 () Bool)

(assert (=> b!5077148 m!6127272))

(assert (=> b!5077148 m!6127270))

(assert (=> b!5077148 m!6127272))

(declare-fun m!6127274 () Bool)

(assert (=> b!5077148 m!6127274))

(assert (=> b!5076872 d!1640332))

(declare-fun d!1640334 () Bool)

(declare-fun c!871887 () Bool)

(assert (=> d!1640334 (= c!871887 ((_ is Node!15578) (left!42837 (left!42837 (right!43167 ys!41)))))))

(declare-fun e!3167420 () Bool)

(assert (=> d!1640334 (= (inv!77633 (left!42837 (left!42837 (right!43167 ys!41)))) e!3167420)))

(declare-fun b!5077150 () Bool)

(assert (=> b!5077150 (= e!3167420 (inv!77634 (left!42837 (left!42837 (right!43167 ys!41)))))))

(declare-fun b!5077151 () Bool)

(declare-fun e!3167421 () Bool)

(assert (=> b!5077151 (= e!3167420 e!3167421)))

(declare-fun res!2161642 () Bool)

(assert (=> b!5077151 (= res!2161642 (not ((_ is Leaf!25872) (left!42837 (left!42837 (right!43167 ys!41))))))))

(assert (=> b!5077151 (=> res!2161642 e!3167421)))

(declare-fun b!5077152 () Bool)

(assert (=> b!5077152 (= e!3167421 (inv!77635 (left!42837 (left!42837 (right!43167 ys!41)))))))

(assert (= (and d!1640334 c!871887) b!5077150))

(assert (= (and d!1640334 (not c!871887)) b!5077151))

(assert (= (and b!5077151 (not res!2161642)) b!5077152))

(declare-fun m!6127276 () Bool)

(assert (=> b!5077150 m!6127276))

(declare-fun m!6127278 () Bool)

(assert (=> b!5077152 m!6127278))

(assert (=> b!5076924 d!1640334))

(declare-fun d!1640336 () Bool)

(declare-fun c!871888 () Bool)

(assert (=> d!1640336 (= c!871888 ((_ is Node!15578) (right!43167 (left!42837 (right!43167 ys!41)))))))

(declare-fun e!3167422 () Bool)

(assert (=> d!1640336 (= (inv!77633 (right!43167 (left!42837 (right!43167 ys!41)))) e!3167422)))

(declare-fun b!5077153 () Bool)

(assert (=> b!5077153 (= e!3167422 (inv!77634 (right!43167 (left!42837 (right!43167 ys!41)))))))

(declare-fun b!5077154 () Bool)

(declare-fun e!3167423 () Bool)

(assert (=> b!5077154 (= e!3167422 e!3167423)))

(declare-fun res!2161643 () Bool)

(assert (=> b!5077154 (= res!2161643 (not ((_ is Leaf!25872) (right!43167 (left!42837 (right!43167 ys!41))))))))

(assert (=> b!5077154 (=> res!2161643 e!3167423)))

(declare-fun b!5077155 () Bool)

(assert (=> b!5077155 (= e!3167423 (inv!77635 (right!43167 (left!42837 (right!43167 ys!41)))))))

(assert (= (and d!1640336 c!871888) b!5077153))

(assert (= (and d!1640336 (not c!871888)) b!5077154))

(assert (= (and b!5077154 (not res!2161643)) b!5077155))

(declare-fun m!6127280 () Bool)

(assert (=> b!5077153 m!6127280))

(declare-fun m!6127282 () Bool)

(assert (=> b!5077155 m!6127282))

(assert (=> b!5076924 d!1640336))

(declare-fun d!1640338 () Bool)

(declare-fun res!2161644 () Bool)

(declare-fun e!3167424 () Bool)

(assert (=> d!1640338 (=> (not res!2161644) (not e!3167424))))

(assert (=> d!1640338 (= res!2161644 (= (csize!31386 (left!42837 (left!42837 xs!286))) (+ (size!39104 (left!42837 (left!42837 (left!42837 xs!286)))) (size!39104 (right!43167 (left!42837 (left!42837 xs!286)))))))))

(assert (=> d!1640338 (= (inv!77634 (left!42837 (left!42837 xs!286))) e!3167424)))

(declare-fun b!5077156 () Bool)

(declare-fun res!2161645 () Bool)

(assert (=> b!5077156 (=> (not res!2161645) (not e!3167424))))

(assert (=> b!5077156 (= res!2161645 (and (not (= (left!42837 (left!42837 (left!42837 xs!286))) Empty!15578)) (not (= (right!43167 (left!42837 (left!42837 xs!286))) Empty!15578))))))

(declare-fun b!5077157 () Bool)

(declare-fun res!2161646 () Bool)

(assert (=> b!5077157 (=> (not res!2161646) (not e!3167424))))

(assert (=> b!5077157 (= res!2161646 (= (cheight!15789 (left!42837 (left!42837 xs!286))) (+ (max!0 (height!2155 (left!42837 (left!42837 (left!42837 xs!286)))) (height!2155 (right!43167 (left!42837 (left!42837 xs!286))))) 1)))))

(declare-fun b!5077158 () Bool)

(assert (=> b!5077158 (= e!3167424 (<= 0 (cheight!15789 (left!42837 (left!42837 xs!286)))))))

(assert (= (and d!1640338 res!2161644) b!5077156))

(assert (= (and b!5077156 res!2161645) b!5077157))

(assert (= (and b!5077157 res!2161646) b!5077158))

(declare-fun m!6127284 () Bool)

(assert (=> d!1640338 m!6127284))

(declare-fun m!6127286 () Bool)

(assert (=> d!1640338 m!6127286))

(assert (=> b!5077157 m!6127144))

(assert (=> b!5077157 m!6127146))

(assert (=> b!5077157 m!6127144))

(assert (=> b!5077157 m!6127146))

(declare-fun m!6127288 () Bool)

(assert (=> b!5077157 m!6127288))

(assert (=> b!5076869 d!1640338))

(declare-fun d!1640340 () Bool)

(declare-fun lt!2090365 () Int)

(assert (=> d!1640340 (>= lt!2090365 0)))

(declare-fun e!3167425 () Int)

(assert (=> d!1640340 (= lt!2090365 e!3167425)))

(declare-fun c!871889 () Bool)

(assert (=> d!1640340 (= c!871889 ((_ is Nil!58448) (list!19016 (xs!18944 (left!42837 ys!41)))))))

(assert (=> d!1640340 (= (size!39102 (list!19016 (xs!18944 (left!42837 ys!41)))) lt!2090365)))

(declare-fun b!5077159 () Bool)

(assert (=> b!5077159 (= e!3167425 0)))

(declare-fun b!5077160 () Bool)

(assert (=> b!5077160 (= e!3167425 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 (left!42837 ys!41)))))))))

(assert (= (and d!1640340 c!871889) b!5077159))

(assert (= (and d!1640340 (not c!871889)) b!5077160))

(declare-fun m!6127290 () Bool)

(assert (=> b!5077160 m!6127290))

(assert (=> d!1640118 d!1640340))

(declare-fun d!1640342 () Bool)

(assert (=> d!1640342 (= (list!19016 (xs!18944 (left!42837 ys!41))) (innerList!15666 (xs!18944 (left!42837 ys!41))))))

(assert (=> d!1640118 d!1640342))

(assert (=> b!5076838 d!1640308))

(assert (=> b!5076838 d!1640310))

(assert (=> b!5076767 d!1640146))

(assert (=> b!5076767 d!1640148))

(declare-fun d!1640344 () Bool)

(assert (=> d!1640344 (= (isEmpty!31660 (list!19017 (left!42837 ys!41))) ((_ is Nil!58448) (list!19017 (left!42837 ys!41))))))

(assert (=> d!1640136 d!1640344))

(declare-fun b!5077162 () Bool)

(declare-fun e!3167426 () List!58572)

(declare-fun e!3167427 () List!58572)

(assert (=> b!5077162 (= e!3167426 e!3167427)))

(declare-fun c!871891 () Bool)

(assert (=> b!5077162 (= c!871891 ((_ is Leaf!25872) (left!42837 ys!41)))))

(declare-fun b!5077163 () Bool)

(assert (=> b!5077163 (= e!3167427 (list!19016 (xs!18944 (left!42837 ys!41))))))

(declare-fun b!5077164 () Bool)

(assert (=> b!5077164 (= e!3167427 (++!12802 (list!19017 (left!42837 (left!42837 ys!41))) (list!19017 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5077161 () Bool)

(assert (=> b!5077161 (= e!3167426 Nil!58448)))

(declare-fun d!1640346 () Bool)

(declare-fun c!871890 () Bool)

(assert (=> d!1640346 (= c!871890 ((_ is Empty!15578) (left!42837 ys!41)))))

(assert (=> d!1640346 (= (list!19017 (left!42837 ys!41)) e!3167426)))

(assert (= (and d!1640346 c!871890) b!5077161))

(assert (= (and d!1640346 (not c!871890)) b!5077162))

(assert (= (and b!5077162 c!871891) b!5077163))

(assert (= (and b!5077162 (not c!871891)) b!5077164))

(assert (=> b!5077163 m!6126774))

(declare-fun m!6127292 () Bool)

(assert (=> b!5077164 m!6127292))

(assert (=> b!5077164 m!6127260))

(assert (=> b!5077164 m!6127292))

(assert (=> b!5077164 m!6127260))

(declare-fun m!6127294 () Bool)

(assert (=> b!5077164 m!6127294))

(assert (=> d!1640136 d!1640346))

(assert (=> d!1640136 d!1640306))

(assert (=> b!5076792 d!1640082))

(assert (=> b!5076792 d!1640084))

(declare-fun d!1640348 () Bool)

(declare-fun c!871892 () Bool)

(assert (=> d!1640348 (= c!871892 ((_ is Node!15578) (left!42837 (right!43167 (left!42837 ys!41)))))))

(declare-fun e!3167428 () Bool)

(assert (=> d!1640348 (= (inv!77633 (left!42837 (right!43167 (left!42837 ys!41)))) e!3167428)))

(declare-fun b!5077165 () Bool)

(assert (=> b!5077165 (= e!3167428 (inv!77634 (left!42837 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5077166 () Bool)

(declare-fun e!3167429 () Bool)

(assert (=> b!5077166 (= e!3167428 e!3167429)))

(declare-fun res!2161647 () Bool)

(assert (=> b!5077166 (= res!2161647 (not ((_ is Leaf!25872) (left!42837 (right!43167 (left!42837 ys!41))))))))

(assert (=> b!5077166 (=> res!2161647 e!3167429)))

(declare-fun b!5077167 () Bool)

(assert (=> b!5077167 (= e!3167429 (inv!77635 (left!42837 (right!43167 (left!42837 ys!41)))))))

(assert (= (and d!1640348 c!871892) b!5077165))

(assert (= (and d!1640348 (not c!871892)) b!5077166))

(assert (= (and b!5077166 (not res!2161647)) b!5077167))

(declare-fun m!6127296 () Bool)

(assert (=> b!5077165 m!6127296))

(declare-fun m!6127298 () Bool)

(assert (=> b!5077167 m!6127298))

(assert (=> b!5076920 d!1640348))

(declare-fun d!1640350 () Bool)

(declare-fun c!871893 () Bool)

(assert (=> d!1640350 (= c!871893 ((_ is Node!15578) (right!43167 (right!43167 (left!42837 ys!41)))))))

(declare-fun e!3167430 () Bool)

(assert (=> d!1640350 (= (inv!77633 (right!43167 (right!43167 (left!42837 ys!41)))) e!3167430)))

(declare-fun b!5077168 () Bool)

(assert (=> b!5077168 (= e!3167430 (inv!77634 (right!43167 (right!43167 (left!42837 ys!41)))))))

(declare-fun b!5077169 () Bool)

(declare-fun e!3167431 () Bool)

(assert (=> b!5077169 (= e!3167430 e!3167431)))

(declare-fun res!2161648 () Bool)

(assert (=> b!5077169 (= res!2161648 (not ((_ is Leaf!25872) (right!43167 (right!43167 (left!42837 ys!41))))))))

(assert (=> b!5077169 (=> res!2161648 e!3167431)))

(declare-fun b!5077170 () Bool)

(assert (=> b!5077170 (= e!3167431 (inv!77635 (right!43167 (right!43167 (left!42837 ys!41)))))))

(assert (= (and d!1640350 c!871893) b!5077168))

(assert (= (and d!1640350 (not c!871893)) b!5077169))

(assert (= (and b!5077169 (not res!2161648)) b!5077170))

(declare-fun m!6127300 () Bool)

(assert (=> b!5077168 m!6127300))

(declare-fun m!6127302 () Bool)

(assert (=> b!5077170 m!6127302))

(assert (=> b!5076920 d!1640350))

(declare-fun d!1640352 () Bool)

(declare-fun lt!2090366 () Bool)

(assert (=> d!1640352 (= lt!2090366 (isEmpty!31660 (list!19017 (right!43167 (left!42837 xs!286)))))))

(assert (=> d!1640352 (= lt!2090366 (= (size!39104 (right!43167 (left!42837 xs!286))) 0))))

(assert (=> d!1640352 (= (isEmpty!31658 (right!43167 (left!42837 xs!286))) lt!2090366)))

(declare-fun bs!1190473 () Bool)

(assert (= bs!1190473 d!1640352))

(assert (=> bs!1190473 m!6127124))

(assert (=> bs!1190473 m!6127124))

(declare-fun m!6127304 () Bool)

(assert (=> bs!1190473 m!6127304))

(assert (=> bs!1190473 m!6126804))

(assert (=> b!5076889 d!1640352))

(assert (=> b!5076861 d!1640340))

(assert (=> b!5076861 d!1640342))

(declare-fun d!1640354 () Bool)

(declare-fun res!2161653 () Bool)

(declare-fun e!3167433 () Bool)

(assert (=> d!1640354 (=> res!2161653 e!3167433)))

(assert (=> d!1640354 (= res!2161653 (not ((_ is Node!15578) (right!43167 (left!42837 xs!286)))))))

(assert (=> d!1640354 (= (isBalanced!4440 (right!43167 (left!42837 xs!286))) e!3167433)))

(declare-fun b!5077171 () Bool)

(declare-fun res!2161651 () Bool)

(declare-fun e!3167432 () Bool)

(assert (=> b!5077171 (=> (not res!2161651) (not e!3167432))))

(assert (=> b!5077171 (= res!2161651 (isBalanced!4440 (right!43167 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5077172 () Bool)

(declare-fun res!2161649 () Bool)

(assert (=> b!5077172 (=> (not res!2161649) (not e!3167432))))

(assert (=> b!5077172 (= res!2161649 (isBalanced!4440 (left!42837 (right!43167 (left!42837 xs!286)))))))

(declare-fun b!5077173 () Bool)

(assert (=> b!5077173 (= e!3167432 (not (isEmpty!31658 (right!43167 (right!43167 (left!42837 xs!286))))))))

(declare-fun b!5077174 () Bool)

(declare-fun res!2161650 () Bool)

(assert (=> b!5077174 (=> (not res!2161650) (not e!3167432))))

(assert (=> b!5077174 (= res!2161650 (not (isEmpty!31658 (left!42837 (right!43167 (left!42837 xs!286))))))))

(declare-fun b!5077175 () Bool)

(declare-fun res!2161652 () Bool)

(assert (=> b!5077175 (=> (not res!2161652) (not e!3167432))))

(assert (=> b!5077175 (= res!2161652 (<= (- (height!2155 (left!42837 (right!43167 (left!42837 xs!286)))) (height!2155 (right!43167 (right!43167 (left!42837 xs!286))))) 1))))

(declare-fun b!5077176 () Bool)

(assert (=> b!5077176 (= e!3167433 e!3167432)))

(declare-fun res!2161654 () Bool)

(assert (=> b!5077176 (=> (not res!2161654) (not e!3167432))))

(assert (=> b!5077176 (= res!2161654 (<= (- 1) (- (height!2155 (left!42837 (right!43167 (left!42837 xs!286)))) (height!2155 (right!43167 (right!43167 (left!42837 xs!286)))))))))

(assert (= (and d!1640354 (not res!2161653)) b!5077176))

(assert (= (and b!5077176 res!2161654) b!5077175))

(assert (= (and b!5077175 res!2161652) b!5077172))

(assert (= (and b!5077172 res!2161649) b!5077171))

(assert (= (and b!5077171 res!2161651) b!5077174))

(assert (= (and b!5077174 res!2161650) b!5077173))

(declare-fun m!6127306 () Bool)

(assert (=> b!5077173 m!6127306))

(declare-fun m!6127308 () Bool)

(assert (=> b!5077172 m!6127308))

(declare-fun m!6127310 () Bool)

(assert (=> b!5077171 m!6127310))

(assert (=> b!5077175 m!6127270))

(assert (=> b!5077175 m!6127272))

(assert (=> b!5077176 m!6127270))

(assert (=> b!5077176 m!6127272))

(declare-fun m!6127312 () Bool)

(assert (=> b!5077174 m!6127312))

(assert (=> b!5076887 d!1640354))

(declare-fun d!1640356 () Bool)

(assert (=> d!1640356 (= (inv!77632 (xs!18944 (left!42837 (right!43167 xs!286)))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 (right!43167 xs!286))))) 2147483647))))

(declare-fun bs!1190474 () Bool)

(assert (= bs!1190474 d!1640356))

(declare-fun m!6127314 () Bool)

(assert (=> bs!1190474 m!6127314))

(assert (=> b!5076911 d!1640356))

(declare-fun d!1640358 () Bool)

(assert (=> d!1640358 (= (isEmpty!31660 (list!19017 (right!43167 xs!286))) ((_ is Nil!58448) (list!19017 (right!43167 xs!286))))))

(assert (=> d!1640114 d!1640358))

(declare-fun b!5077178 () Bool)

(declare-fun e!3167434 () List!58572)

(declare-fun e!3167435 () List!58572)

(assert (=> b!5077178 (= e!3167434 e!3167435)))

(declare-fun c!871895 () Bool)

(assert (=> b!5077178 (= c!871895 ((_ is Leaf!25872) (right!43167 xs!286)))))

(declare-fun b!5077179 () Bool)

(assert (=> b!5077179 (= e!3167435 (list!19016 (xs!18944 (right!43167 xs!286))))))

(declare-fun b!5077180 () Bool)

(assert (=> b!5077180 (= e!3167435 (++!12802 (list!19017 (left!42837 (right!43167 xs!286))) (list!19017 (right!43167 (right!43167 xs!286)))))))

(declare-fun b!5077177 () Bool)

(assert (=> b!5077177 (= e!3167434 Nil!58448)))

(declare-fun d!1640360 () Bool)

(declare-fun c!871894 () Bool)

(assert (=> d!1640360 (= c!871894 ((_ is Empty!15578) (right!43167 xs!286)))))

(assert (=> d!1640360 (= (list!19017 (right!43167 xs!286)) e!3167434)))

(assert (= (and d!1640360 c!871894) b!5077177))

(assert (= (and d!1640360 (not c!871894)) b!5077178))

(assert (= (and b!5077178 c!871895) b!5077179))

(assert (= (and b!5077178 (not c!871895)) b!5077180))

(assert (=> b!5077179 m!6126748))

(assert (=> b!5077180 m!6127160))

(assert (=> b!5077180 m!6127164))

(assert (=> b!5077180 m!6127160))

(assert (=> b!5077180 m!6127164))

(declare-fun m!6127316 () Bool)

(assert (=> b!5077180 m!6127316))

(assert (=> d!1640114 d!1640360))

(assert (=> d!1640114 d!1640302))

(declare-fun d!1640362 () Bool)

(assert (=> d!1640362 (= (inv!77632 (xs!18944 (right!43167 (left!42837 xs!286)))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 (left!42837 xs!286))))) 2147483647))))

(declare-fun bs!1190475 () Bool)

(assert (= bs!1190475 d!1640362))

(declare-fun m!6127318 () Bool)

(assert (=> bs!1190475 m!6127318))

(assert (=> b!5076935 d!1640362))

(declare-fun d!1640364 () Bool)

(declare-fun lt!2090367 () Int)

(assert (=> d!1640364 (>= lt!2090367 0)))

(declare-fun e!3167436 () Int)

(assert (=> d!1640364 (= lt!2090367 e!3167436)))

(declare-fun c!871896 () Bool)

(assert (=> d!1640364 (= c!871896 ((_ is Nil!58448) (innerList!15666 (xs!18944 (right!43167 xs!286)))))))

(assert (=> d!1640364 (= (size!39102 (innerList!15666 (xs!18944 (right!43167 xs!286)))) lt!2090367)))

(declare-fun b!5077181 () Bool)

(assert (=> b!5077181 (= e!3167436 0)))

(declare-fun b!5077182 () Bool)

(assert (=> b!5077182 (= e!3167436 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 (right!43167 xs!286)))))))))

(assert (= (and d!1640364 c!871896) b!5077181))

(assert (= (and d!1640364 (not c!871896)) b!5077182))

(declare-fun m!6127320 () Bool)

(assert (=> b!5077182 m!6127320))

(assert (=> d!1640106 d!1640364))

(declare-fun d!1640366 () Bool)

(declare-fun res!2161655 () Bool)

(declare-fun e!3167437 () Bool)

(assert (=> d!1640366 (=> (not res!2161655) (not e!3167437))))

(assert (=> d!1640366 (= res!2161655 (<= (size!39102 (list!19016 (xs!18944 (left!42837 (left!42837 xs!286))))) 512))))

(assert (=> d!1640366 (= (inv!77635 (left!42837 (left!42837 xs!286))) e!3167437)))

(declare-fun b!5077183 () Bool)

(declare-fun res!2161656 () Bool)

(assert (=> b!5077183 (=> (not res!2161656) (not e!3167437))))

(assert (=> b!5077183 (= res!2161656 (= (csize!31387 (left!42837 (left!42837 xs!286))) (size!39102 (list!19016 (xs!18944 (left!42837 (left!42837 xs!286)))))))))

(declare-fun b!5077184 () Bool)

(assert (=> b!5077184 (= e!3167437 (and (> (csize!31387 (left!42837 (left!42837 xs!286))) 0) (<= (csize!31387 (left!42837 (left!42837 xs!286))) 512)))))

(assert (= (and d!1640366 res!2161655) b!5077183))

(assert (= (and b!5077183 res!2161656) b!5077184))

(declare-fun m!6127322 () Bool)

(assert (=> d!1640366 m!6127322))

(assert (=> d!1640366 m!6127322))

(declare-fun m!6127324 () Bool)

(assert (=> d!1640366 m!6127324))

(assert (=> b!5077183 m!6127322))

(assert (=> b!5077183 m!6127322))

(assert (=> b!5077183 m!6127324))

(assert (=> b!5076871 d!1640366))

(declare-fun d!1640368 () Bool)

(declare-fun lt!2090368 () Bool)

(assert (=> d!1640368 (= lt!2090368 (isEmpty!31660 (list!19017 (right!43167 (right!43167 ys!41)))))))

(assert (=> d!1640368 (= lt!2090368 (= (size!39104 (right!43167 (right!43167 ys!41))) 0))))

(assert (=> d!1640368 (= (isEmpty!31658 (right!43167 (right!43167 ys!41))) lt!2090368)))

(declare-fun bs!1190476 () Bool)

(assert (= bs!1190476 d!1640368))

(assert (=> bs!1190476 m!6127118))

(assert (=> bs!1190476 m!6127118))

(declare-fun m!6127326 () Bool)

(assert (=> bs!1190476 m!6127326))

(assert (=> bs!1190476 m!6126702))

(assert (=> b!5076842 d!1640368))

(declare-fun d!1640370 () Bool)

(declare-fun lt!2090369 () Int)

(assert (=> d!1640370 (>= lt!2090369 0)))

(declare-fun e!3167438 () Int)

(assert (=> d!1640370 (= lt!2090369 e!3167438)))

(declare-fun c!871897 () Bool)

(assert (=> d!1640370 (= c!871897 ((_ is Nil!58448) (list!19016 (xs!18944 (left!42837 xs!286)))))))

(assert (=> d!1640370 (= (size!39102 (list!19016 (xs!18944 (left!42837 xs!286)))) lt!2090369)))

(declare-fun b!5077185 () Bool)

(assert (=> b!5077185 (= e!3167438 0)))

(declare-fun b!5077186 () Bool)

(assert (=> b!5077186 (= e!3167438 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 (left!42837 xs!286)))))))))

(assert (= (and d!1640370 c!871897) b!5077185))

(assert (= (and d!1640370 (not c!871897)) b!5077186))

(declare-fun m!6127328 () Bool)

(assert (=> b!5077186 m!6127328))

(assert (=> d!1640116 d!1640370))

(declare-fun d!1640372 () Bool)

(assert (=> d!1640372 (= (list!19016 (xs!18944 (left!42837 xs!286))) (innerList!15666 (xs!18944 (left!42837 xs!286))))))

(assert (=> d!1640116 d!1640372))

(declare-fun d!1640374 () Bool)

(declare-fun lt!2090370 () Bool)

(assert (=> d!1640374 (= lt!2090370 (isEmpty!31660 (list!19017 (left!42837 (right!43167 xs!286)))))))

(assert (=> d!1640374 (= lt!2090370 (= (size!39104 (left!42837 (right!43167 xs!286))) 0))))

(assert (=> d!1640374 (= (isEmpty!31658 (left!42837 (right!43167 xs!286))) lt!2090370)))

(declare-fun bs!1190477 () Bool)

(assert (= bs!1190477 d!1640374))

(assert (=> bs!1190477 m!6127160))

(assert (=> bs!1190477 m!6127160))

(declare-fun m!6127330 () Bool)

(assert (=> bs!1190477 m!6127330))

(assert (=> bs!1190477 m!6126690))

(assert (=> b!5076878 d!1640374))

(declare-fun d!1640376 () Bool)

(declare-fun lt!2090371 () Int)

(assert (=> d!1640376 (>= lt!2090371 0)))

(declare-fun e!3167439 () Int)

(assert (=> d!1640376 (= lt!2090371 e!3167439)))

(declare-fun c!871898 () Bool)

(assert (=> d!1640376 (= c!871898 ((_ is Nil!58448) (list!19016 (xs!18944 (right!43167 ys!41)))))))

(assert (=> d!1640376 (= (size!39102 (list!19016 (xs!18944 (right!43167 ys!41)))) lt!2090371)))

(declare-fun b!5077187 () Bool)

(assert (=> b!5077187 (= e!3167439 0)))

(declare-fun b!5077188 () Bool)

(assert (=> b!5077188 (= e!3167439 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 (right!43167 ys!41)))))))))

(assert (= (and d!1640376 c!871898) b!5077187))

(assert (= (and d!1640376 (not c!871898)) b!5077188))

(declare-fun m!6127332 () Bool)

(assert (=> b!5077188 m!6127332))

(assert (=> d!1640104 d!1640376))

(declare-fun d!1640378 () Bool)

(assert (=> d!1640378 (= (list!19016 (xs!18944 (right!43167 ys!41))) (innerList!15666 (xs!18944 (right!43167 ys!41))))))

(assert (=> d!1640104 d!1640378))

(declare-fun d!1640380 () Bool)

(declare-fun res!2161657 () Bool)

(declare-fun e!3167440 () Bool)

(assert (=> d!1640380 (=> (not res!2161657) (not e!3167440))))

(assert (=> d!1640380 (= res!2161657 (<= (size!39102 (list!19016 (xs!18944 (right!43167 (left!42837 ys!41))))) 512))))

(assert (=> d!1640380 (= (inv!77635 (right!43167 (left!42837 ys!41))) e!3167440)))

(declare-fun b!5077189 () Bool)

(declare-fun res!2161658 () Bool)

(assert (=> b!5077189 (=> (not res!2161658) (not e!3167440))))

(assert (=> b!5077189 (= res!2161658 (= (csize!31387 (right!43167 (left!42837 ys!41))) (size!39102 (list!19016 (xs!18944 (right!43167 (left!42837 ys!41)))))))))

(declare-fun b!5077190 () Bool)

(assert (=> b!5077190 (= e!3167440 (and (> (csize!31387 (right!43167 (left!42837 ys!41))) 0) (<= (csize!31387 (right!43167 (left!42837 ys!41))) 512)))))

(assert (= (and d!1640380 res!2161657) b!5077189))

(assert (= (and b!5077189 res!2161658) b!5077190))

(declare-fun m!6127334 () Bool)

(assert (=> d!1640380 m!6127334))

(assert (=> d!1640380 m!6127334))

(declare-fun m!6127336 () Bool)

(assert (=> d!1640380 m!6127336))

(assert (=> b!5077189 m!6127334))

(assert (=> b!5077189 m!6127334))

(assert (=> b!5077189 m!6127336))

(assert (=> b!5076909 d!1640380))

(declare-fun d!1640382 () Bool)

(declare-fun lt!2090372 () Int)

(assert (=> d!1640382 (>= lt!2090372 0)))

(declare-fun e!3167441 () Int)

(assert (=> d!1640382 (= lt!2090372 e!3167441)))

(declare-fun c!871899 () Bool)

(assert (=> d!1640382 (= c!871899 ((_ is Nil!58448) (list!19016 (xs!18944 ys!41))))))

(assert (=> d!1640382 (= (size!39102 (list!19016 (xs!18944 ys!41))) lt!2090372)))

(declare-fun b!5077191 () Bool)

(assert (=> b!5077191 (= e!3167441 0)))

(declare-fun b!5077192 () Bool)

(assert (=> b!5077192 (= e!3167441 (+ 1 (size!39102 (t!371369 (list!19016 (xs!18944 ys!41))))))))

(assert (= (and d!1640382 c!871899) b!5077191))

(assert (= (and d!1640382 (not c!871899)) b!5077192))

(declare-fun m!6127338 () Bool)

(assert (=> b!5077192 m!6127338))

(assert (=> b!5076836 d!1640382))

(declare-fun d!1640384 () Bool)

(assert (=> d!1640384 (= (list!19016 (xs!18944 ys!41)) (innerList!15666 (xs!18944 ys!41)))))

(assert (=> b!5076836 d!1640384))

(declare-fun d!1640386 () Bool)

(declare-fun c!871900 () Bool)

(assert (=> d!1640386 (= c!871900 ((_ is Node!15578) (left!42837 (left!42837 (left!42837 xs!286)))))))

(declare-fun e!3167442 () Bool)

(assert (=> d!1640386 (= (inv!77633 (left!42837 (left!42837 (left!42837 xs!286)))) e!3167442)))

(declare-fun b!5077193 () Bool)

(assert (=> b!5077193 (= e!3167442 (inv!77634 (left!42837 (left!42837 (left!42837 xs!286)))))))

(declare-fun b!5077194 () Bool)

(declare-fun e!3167443 () Bool)

(assert (=> b!5077194 (= e!3167442 e!3167443)))

(declare-fun res!2161659 () Bool)

(assert (=> b!5077194 (= res!2161659 (not ((_ is Leaf!25872) (left!42837 (left!42837 (left!42837 xs!286))))))))

(assert (=> b!5077194 (=> res!2161659 e!3167443)))

(declare-fun b!5077195 () Bool)

(assert (=> b!5077195 (= e!3167443 (inv!77635 (left!42837 (left!42837 (left!42837 xs!286)))))))

(assert (= (and d!1640386 c!871900) b!5077193))

(assert (= (and d!1640386 (not c!871900)) b!5077194))

(assert (= (and b!5077194 (not res!2161659)) b!5077195))

(declare-fun m!6127340 () Bool)

(assert (=> b!5077193 m!6127340))

(declare-fun m!6127342 () Bool)

(assert (=> b!5077195 m!6127342))

(assert (=> b!5076931 d!1640386))

(declare-fun d!1640388 () Bool)

(declare-fun c!871901 () Bool)

(assert (=> d!1640388 (= c!871901 ((_ is Node!15578) (right!43167 (left!42837 (left!42837 xs!286)))))))

(declare-fun e!3167444 () Bool)

(assert (=> d!1640388 (= (inv!77633 (right!43167 (left!42837 (left!42837 xs!286)))) e!3167444)))

(declare-fun b!5077196 () Bool)

(assert (=> b!5077196 (= e!3167444 (inv!77634 (right!43167 (left!42837 (left!42837 xs!286)))))))

(declare-fun b!5077197 () Bool)

(declare-fun e!3167445 () Bool)

(assert (=> b!5077197 (= e!3167444 e!3167445)))

(declare-fun res!2161660 () Bool)

(assert (=> b!5077197 (= res!2161660 (not ((_ is Leaf!25872) (right!43167 (left!42837 (left!42837 xs!286))))))))

(assert (=> b!5077197 (=> res!2161660 e!3167445)))

(declare-fun b!5077198 () Bool)

(assert (=> b!5077198 (= e!3167445 (inv!77635 (right!43167 (left!42837 (left!42837 xs!286)))))))

(assert (= (and d!1640388 c!871901) b!5077196))

(assert (= (and d!1640388 (not c!871901)) b!5077197))

(assert (= (and b!5077197 (not res!2161660)) b!5077198))

(declare-fun m!6127344 () Bool)

(assert (=> b!5077196 m!6127344))

(declare-fun m!6127346 () Bool)

(assert (=> b!5077198 m!6127346))

(assert (=> b!5076931 d!1640388))

(declare-fun d!1640390 () Bool)

(declare-fun res!2161665 () Bool)

(declare-fun e!3167447 () Bool)

(assert (=> d!1640390 (=> res!2161665 e!3167447)))

(assert (=> d!1640390 (= res!2161665 (not ((_ is Node!15578) (left!42837 (right!43167 xs!286)))))))

(assert (=> d!1640390 (= (isBalanced!4440 (left!42837 (right!43167 xs!286))) e!3167447)))

(declare-fun b!5077199 () Bool)

(declare-fun res!2161663 () Bool)

(declare-fun e!3167446 () Bool)

(assert (=> b!5077199 (=> (not res!2161663) (not e!3167446))))

(assert (=> b!5077199 (= res!2161663 (isBalanced!4440 (right!43167 (left!42837 (right!43167 xs!286)))))))

(declare-fun b!5077200 () Bool)

(declare-fun res!2161661 () Bool)

(assert (=> b!5077200 (=> (not res!2161661) (not e!3167446))))

(assert (=> b!5077200 (= res!2161661 (isBalanced!4440 (left!42837 (left!42837 (right!43167 xs!286)))))))

(declare-fun b!5077201 () Bool)

(assert (=> b!5077201 (= e!3167446 (not (isEmpty!31658 (right!43167 (left!42837 (right!43167 xs!286))))))))

(declare-fun b!5077202 () Bool)

(declare-fun res!2161662 () Bool)

(assert (=> b!5077202 (=> (not res!2161662) (not e!3167446))))

(assert (=> b!5077202 (= res!2161662 (not (isEmpty!31658 (left!42837 (left!42837 (right!43167 xs!286))))))))

(declare-fun b!5077203 () Bool)

(declare-fun res!2161664 () Bool)

(assert (=> b!5077203 (=> (not res!2161664) (not e!3167446))))

(assert (=> b!5077203 (= res!2161664 (<= (- (height!2155 (left!42837 (left!42837 (right!43167 xs!286)))) (height!2155 (right!43167 (left!42837 (right!43167 xs!286))))) 1))))

(declare-fun b!5077204 () Bool)

(assert (=> b!5077204 (= e!3167447 e!3167446)))

(declare-fun res!2161666 () Bool)

(assert (=> b!5077204 (=> (not res!2161666) (not e!3167446))))

(assert (=> b!5077204 (= res!2161666 (<= (- 1) (- (height!2155 (left!42837 (left!42837 (right!43167 xs!286)))) (height!2155 (right!43167 (left!42837 (right!43167 xs!286)))))))))

(assert (= (and d!1640390 (not res!2161665)) b!5077204))

(assert (= (and b!5077204 res!2161666) b!5077203))

(assert (= (and b!5077203 res!2161664) b!5077200))

(assert (= (and b!5077200 res!2161661) b!5077199))

(assert (= (and b!5077199 res!2161663) b!5077202))

(assert (= (and b!5077202 res!2161662) b!5077201))

(declare-fun m!6127348 () Bool)

(assert (=> b!5077201 m!6127348))

(declare-fun m!6127350 () Bool)

(assert (=> b!5077200 m!6127350))

(declare-fun m!6127352 () Bool)

(assert (=> b!5077199 m!6127352))

(assert (=> b!5077203 m!6127154))

(assert (=> b!5077203 m!6127156))

(assert (=> b!5077204 m!6127154))

(assert (=> b!5077204 m!6127156))

(declare-fun m!6127354 () Bool)

(assert (=> b!5077202 m!6127354))

(assert (=> b!5076876 d!1640390))

(declare-fun d!1640392 () Bool)

(declare-fun res!2161667 () Bool)

(declare-fun e!3167448 () Bool)

(assert (=> d!1640392 (=> (not res!2161667) (not e!3167448))))

(assert (=> d!1640392 (= res!2161667 (<= (size!39102 (list!19016 (xs!18944 (right!43167 (right!43167 ys!41))))) 512))))

(assert (=> d!1640392 (= (inv!77635 (right!43167 (right!43167 ys!41))) e!3167448)))

(declare-fun b!5077205 () Bool)

(declare-fun res!2161668 () Bool)

(assert (=> b!5077205 (=> (not res!2161668) (not e!3167448))))

(assert (=> b!5077205 (= res!2161668 (= (csize!31387 (right!43167 (right!43167 ys!41))) (size!39102 (list!19016 (xs!18944 (right!43167 (right!43167 ys!41)))))))))

(declare-fun b!5077206 () Bool)

(assert (=> b!5077206 (= e!3167448 (and (> (csize!31387 (right!43167 (right!43167 ys!41))) 0) (<= (csize!31387 (right!43167 (right!43167 ys!41))) 512)))))

(assert (= (and d!1640392 res!2161667) b!5077205))

(assert (= (and b!5077205 res!2161668) b!5077206))

(declare-fun m!6127356 () Bool)

(assert (=> d!1640392 m!6127356))

(assert (=> d!1640392 m!6127356))

(declare-fun m!6127358 () Bool)

(assert (=> d!1640392 m!6127358))

(assert (=> b!5077205 m!6127356))

(assert (=> b!5077205 m!6127356))

(assert (=> b!5077205 m!6127358))

(assert (=> b!5076868 d!1640392))

(declare-fun d!1640394 () Bool)

(declare-fun res!2161669 () Bool)

(declare-fun e!3167449 () Bool)

(assert (=> d!1640394 (=> (not res!2161669) (not e!3167449))))

(assert (=> d!1640394 (= res!2161669 (= (csize!31386 (right!43167 (right!43167 ys!41))) (+ (size!39104 (left!42837 (right!43167 (right!43167 ys!41)))) (size!39104 (right!43167 (right!43167 (right!43167 ys!41)))))))))

(assert (=> d!1640394 (= (inv!77634 (right!43167 (right!43167 ys!41))) e!3167449)))

(declare-fun b!5077207 () Bool)

(declare-fun res!2161670 () Bool)

(assert (=> b!5077207 (=> (not res!2161670) (not e!3167449))))

(assert (=> b!5077207 (= res!2161670 (and (not (= (left!42837 (right!43167 (right!43167 ys!41))) Empty!15578)) (not (= (right!43167 (right!43167 (right!43167 ys!41))) Empty!15578))))))

(declare-fun b!5077208 () Bool)

(declare-fun res!2161671 () Bool)

(assert (=> b!5077208 (=> (not res!2161671) (not e!3167449))))

(assert (=> b!5077208 (= res!2161671 (= (cheight!15789 (right!43167 (right!43167 ys!41))) (+ (max!0 (height!2155 (left!42837 (right!43167 (right!43167 ys!41)))) (height!2155 (right!43167 (right!43167 (right!43167 ys!41))))) 1)))))

(declare-fun b!5077209 () Bool)

(assert (=> b!5077209 (= e!3167449 (<= 0 (cheight!15789 (right!43167 (right!43167 ys!41)))))))

(assert (= (and d!1640394 res!2161669) b!5077207))

(assert (= (and b!5077207 res!2161670) b!5077208))

(assert (= (and b!5077208 res!2161671) b!5077209))

(declare-fun m!6127360 () Bool)

(assert (=> d!1640394 m!6127360))

(declare-fun m!6127362 () Bool)

(assert (=> d!1640394 m!6127362))

(declare-fun m!6127364 () Bool)

(assert (=> b!5077208 m!6127364))

(declare-fun m!6127366 () Bool)

(assert (=> b!5077208 m!6127366))

(assert (=> b!5077208 m!6127364))

(assert (=> b!5077208 m!6127366))

(declare-fun m!6127368 () Bool)

(assert (=> b!5077208 m!6127368))

(assert (=> b!5076866 d!1640394))

(declare-fun d!1640396 () Bool)

(declare-fun res!2161676 () Bool)

(declare-fun e!3167451 () Bool)

(assert (=> d!1640396 (=> res!2161676 e!3167451)))

(assert (=> d!1640396 (= res!2161676 (not ((_ is Node!15578) (right!43167 (right!43167 ys!41)))))))

(assert (=> d!1640396 (= (isBalanced!4440 (right!43167 (right!43167 ys!41))) e!3167451)))

(declare-fun b!5077210 () Bool)

(declare-fun res!2161674 () Bool)

(declare-fun e!3167450 () Bool)

(assert (=> b!5077210 (=> (not res!2161674) (not e!3167450))))

(assert (=> b!5077210 (= res!2161674 (isBalanced!4440 (right!43167 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5077211 () Bool)

(declare-fun res!2161672 () Bool)

(assert (=> b!5077211 (=> (not res!2161672) (not e!3167450))))

(assert (=> b!5077211 (= res!2161672 (isBalanced!4440 (left!42837 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5077212 () Bool)

(assert (=> b!5077212 (= e!3167450 (not (isEmpty!31658 (right!43167 (right!43167 (right!43167 ys!41))))))))

(declare-fun b!5077213 () Bool)

(declare-fun res!2161673 () Bool)

(assert (=> b!5077213 (=> (not res!2161673) (not e!3167450))))

(assert (=> b!5077213 (= res!2161673 (not (isEmpty!31658 (left!42837 (right!43167 (right!43167 ys!41))))))))

(declare-fun b!5077214 () Bool)

(declare-fun res!2161675 () Bool)

(assert (=> b!5077214 (=> (not res!2161675) (not e!3167450))))

(assert (=> b!5077214 (= res!2161675 (<= (- (height!2155 (left!42837 (right!43167 (right!43167 ys!41)))) (height!2155 (right!43167 (right!43167 (right!43167 ys!41))))) 1))))

(declare-fun b!5077215 () Bool)

(assert (=> b!5077215 (= e!3167451 e!3167450)))

(declare-fun res!2161677 () Bool)

(assert (=> b!5077215 (=> (not res!2161677) (not e!3167450))))

(assert (=> b!5077215 (= res!2161677 (<= (- 1) (- (height!2155 (left!42837 (right!43167 (right!43167 ys!41)))) (height!2155 (right!43167 (right!43167 (right!43167 ys!41)))))))))

(assert (= (and d!1640396 (not res!2161676)) b!5077215))

(assert (= (and b!5077215 res!2161677) b!5077214))

(assert (= (and b!5077214 res!2161675) b!5077211))

(assert (= (and b!5077211 res!2161672) b!5077210))

(assert (= (and b!5077210 res!2161674) b!5077213))

(assert (= (and b!5077213 res!2161673) b!5077212))

(declare-fun m!6127370 () Bool)

(assert (=> b!5077212 m!6127370))

(declare-fun m!6127372 () Bool)

(assert (=> b!5077211 m!6127372))

(declare-fun m!6127374 () Bool)

(assert (=> b!5077210 m!6127374))

(assert (=> b!5077214 m!6127364))

(assert (=> b!5077214 m!6127366))

(assert (=> b!5077215 m!6127364))

(assert (=> b!5077215 m!6127366))

(declare-fun m!6127376 () Bool)

(assert (=> b!5077213 m!6127376))

(assert (=> b!5076840 d!1640396))

(assert (=> b!5076891 d!1640296))

(assert (=> b!5076891 d!1640298))

(declare-fun d!1640398 () Bool)

(declare-fun res!2161678 () Bool)

(declare-fun e!3167452 () Bool)

(assert (=> d!1640398 (=> (not res!2161678) (not e!3167452))))

(assert (=> d!1640398 (= res!2161678 (= (csize!31386 (right!43167 (left!42837 ys!41))) (+ (size!39104 (left!42837 (right!43167 (left!42837 ys!41)))) (size!39104 (right!43167 (right!43167 (left!42837 ys!41)))))))))

(assert (=> d!1640398 (= (inv!77634 (right!43167 (left!42837 ys!41))) e!3167452)))

(declare-fun b!5077216 () Bool)

(declare-fun res!2161679 () Bool)

(assert (=> b!5077216 (=> (not res!2161679) (not e!3167452))))

(assert (=> b!5077216 (= res!2161679 (and (not (= (left!42837 (right!43167 (left!42837 ys!41))) Empty!15578)) (not (= (right!43167 (right!43167 (left!42837 ys!41))) Empty!15578))))))

(declare-fun b!5077217 () Bool)

(declare-fun res!2161680 () Bool)

(assert (=> b!5077217 (=> (not res!2161680) (not e!3167452))))

(assert (=> b!5077217 (= res!2161680 (= (cheight!15789 (right!43167 (left!42837 ys!41))) (+ (max!0 (height!2155 (left!42837 (right!43167 (left!42837 ys!41)))) (height!2155 (right!43167 (right!43167 (left!42837 ys!41))))) 1)))))

(declare-fun b!5077218 () Bool)

(assert (=> b!5077218 (= e!3167452 (<= 0 (cheight!15789 (right!43167 (left!42837 ys!41)))))))

(assert (= (and d!1640398 res!2161678) b!5077216))

(assert (= (and b!5077216 res!2161679) b!5077217))

(assert (= (and b!5077217 res!2161680) b!5077218))

(declare-fun m!6127378 () Bool)

(assert (=> d!1640398 m!6127378))

(declare-fun m!6127380 () Bool)

(assert (=> d!1640398 m!6127380))

(assert (=> b!5077217 m!6127200))

(assert (=> b!5077217 m!6127202))

(assert (=> b!5077217 m!6127200))

(assert (=> b!5077217 m!6127202))

(declare-fun m!6127382 () Bool)

(assert (=> b!5077217 m!6127382))

(assert (=> b!5076907 d!1640398))

(assert (=> b!5076851 d!1640056))

(assert (=> b!5076851 d!1640232))

(declare-fun d!1640400 () Bool)

(declare-fun lt!2090373 () Int)

(assert (=> d!1640400 (= lt!2090373 (size!39102 (list!19017 (left!42837 (right!43167 ys!41)))))))

(assert (=> d!1640400 (= lt!2090373 (ite ((_ is Empty!15578) (left!42837 (right!43167 ys!41))) 0 (ite ((_ is Leaf!25872) (left!42837 (right!43167 ys!41))) (csize!31387 (left!42837 (right!43167 ys!41))) (csize!31386 (left!42837 (right!43167 ys!41))))))))

(assert (=> d!1640400 (= (size!39104 (left!42837 (right!43167 ys!41))) lt!2090373)))

(declare-fun bs!1190478 () Bool)

(assert (= bs!1190478 d!1640400))

(assert (=> bs!1190478 m!6127116))

(assert (=> bs!1190478 m!6127116))

(declare-fun m!6127384 () Bool)

(assert (=> bs!1190478 m!6127384))

(assert (=> d!1640088 d!1640400))

(declare-fun d!1640402 () Bool)

(declare-fun lt!2090374 () Int)

(assert (=> d!1640402 (= lt!2090374 (size!39102 (list!19017 (right!43167 (right!43167 ys!41)))))))

(assert (=> d!1640402 (= lt!2090374 (ite ((_ is Empty!15578) (right!43167 (right!43167 ys!41))) 0 (ite ((_ is Leaf!25872) (right!43167 (right!43167 ys!41))) (csize!31387 (right!43167 (right!43167 ys!41))) (csize!31386 (right!43167 (right!43167 ys!41))))))))

(assert (=> d!1640402 (= (size!39104 (right!43167 (right!43167 ys!41))) lt!2090374)))

(declare-fun bs!1190479 () Bool)

(assert (= bs!1190479 d!1640402))

(assert (=> bs!1190479 m!6127118))

(assert (=> bs!1190479 m!6127118))

(declare-fun m!6127386 () Bool)

(assert (=> bs!1190479 m!6127386))

(assert (=> d!1640088 d!1640402))

(declare-fun d!1640404 () Bool)

(declare-fun res!2161681 () Bool)

(declare-fun e!3167453 () Bool)

(assert (=> d!1640404 (=> (not res!2161681) (not e!3167453))))

(assert (=> d!1640404 (= res!2161681 (= (csize!31386 (left!42837 (right!43167 ys!41))) (+ (size!39104 (left!42837 (left!42837 (right!43167 ys!41)))) (size!39104 (right!43167 (left!42837 (right!43167 ys!41)))))))))

(assert (=> d!1640404 (= (inv!77634 (left!42837 (right!43167 ys!41))) e!3167453)))

(declare-fun b!5077219 () Bool)

(declare-fun res!2161682 () Bool)

(assert (=> b!5077219 (=> (not res!2161682) (not e!3167453))))

(assert (=> b!5077219 (= res!2161682 (and (not (= (left!42837 (left!42837 (right!43167 ys!41))) Empty!15578)) (not (= (right!43167 (left!42837 (right!43167 ys!41))) Empty!15578))))))

(declare-fun b!5077220 () Bool)

(declare-fun res!2161683 () Bool)

(assert (=> b!5077220 (=> (not res!2161683) (not e!3167453))))

(assert (=> b!5077220 (= res!2161683 (= (cheight!15789 (left!42837 (right!43167 ys!41))) (+ (max!0 (height!2155 (left!42837 (left!42837 (right!43167 ys!41)))) (height!2155 (right!43167 (left!42837 (right!43167 ys!41))))) 1)))))

(declare-fun b!5077221 () Bool)

(assert (=> b!5077221 (= e!3167453 (<= 0 (cheight!15789 (left!42837 (right!43167 ys!41)))))))

(assert (= (and d!1640404 res!2161681) b!5077219))

(assert (= (and b!5077219 res!2161682) b!5077220))

(assert (= (and b!5077220 res!2161683) b!5077221))

(declare-fun m!6127388 () Bool)

(assert (=> d!1640404 m!6127388))

(declare-fun m!6127390 () Bool)

(assert (=> d!1640404 m!6127390))

(assert (=> b!5077220 m!6127220))

(assert (=> b!5077220 m!6127222))

(assert (=> b!5077220 m!6127220))

(assert (=> b!5077220 m!6127222))

(declare-fun m!6127392 () Bool)

(assert (=> b!5077220 m!6127392))

(assert (=> b!5076863 d!1640404))

(declare-fun d!1640406 () Bool)

(declare-fun res!2161684 () Bool)

(declare-fun e!3167454 () Bool)

(assert (=> d!1640406 (=> (not res!2161684) (not e!3167454))))

(assert (=> d!1640406 (= res!2161684 (<= (size!39102 (list!19016 (xs!18944 (right!43167 (right!43167 xs!286))))) 512))))

(assert (=> d!1640406 (= (inv!77635 (right!43167 (right!43167 xs!286))) e!3167454)))

(declare-fun b!5077222 () Bool)

(declare-fun res!2161685 () Bool)

(assert (=> b!5077222 (=> (not res!2161685) (not e!3167454))))

(assert (=> b!5077222 (= res!2161685 (= (csize!31387 (right!43167 (right!43167 xs!286))) (size!39102 (list!19016 (xs!18944 (right!43167 (right!43167 xs!286)))))))))

(declare-fun b!5077223 () Bool)

(assert (=> b!5077223 (= e!3167454 (and (> (csize!31387 (right!43167 (right!43167 xs!286))) 0) (<= (csize!31387 (right!43167 (right!43167 xs!286))) 512)))))

(assert (= (and d!1640406 res!2161684) b!5077222))

(assert (= (and b!5077222 res!2161685) b!5077223))

(declare-fun m!6127394 () Bool)

(assert (=> d!1640406 m!6127394))

(assert (=> d!1640406 m!6127394))

(declare-fun m!6127396 () Bool)

(assert (=> d!1640406 m!6127396))

(assert (=> b!5077222 m!6127394))

(assert (=> b!5077222 m!6127394))

(assert (=> b!5077222 m!6127396))

(assert (=> b!5076819 d!1640406))

(declare-fun d!1640408 () Bool)

(assert (=> d!1640408 (= (inv!77632 (xs!18944 (right!43167 (right!43167 xs!286)))) (<= (size!39102 (innerList!15666 (xs!18944 (right!43167 (right!43167 xs!286))))) 2147483647))))

(declare-fun bs!1190480 () Bool)

(assert (= bs!1190480 d!1640408))

(declare-fun m!6127398 () Bool)

(assert (=> bs!1190480 m!6127398))

(assert (=> b!5076914 d!1640408))

(declare-fun d!1640410 () Bool)

(declare-fun res!2161686 () Bool)

(declare-fun e!3167455 () Bool)

(assert (=> d!1640410 (=> (not res!2161686) (not e!3167455))))

(assert (=> d!1640410 (= res!2161686 (= (csize!31386 (right!43167 (right!43167 xs!286))) (+ (size!39104 (left!42837 (right!43167 (right!43167 xs!286)))) (size!39104 (right!43167 (right!43167 (right!43167 xs!286)))))))))

(assert (=> d!1640410 (= (inv!77634 (right!43167 (right!43167 xs!286))) e!3167455)))

(declare-fun b!5077224 () Bool)

(declare-fun res!2161687 () Bool)

(assert (=> b!5077224 (=> (not res!2161687) (not e!3167455))))

(assert (=> b!5077224 (= res!2161687 (and (not (= (left!42837 (right!43167 (right!43167 xs!286))) Empty!15578)) (not (= (right!43167 (right!43167 (right!43167 xs!286))) Empty!15578))))))

(declare-fun b!5077225 () Bool)

(declare-fun res!2161688 () Bool)

(assert (=> b!5077225 (=> (not res!2161688) (not e!3167455))))

(assert (=> b!5077225 (= res!2161688 (= (cheight!15789 (right!43167 (right!43167 xs!286))) (+ (max!0 (height!2155 (left!42837 (right!43167 (right!43167 xs!286)))) (height!2155 (right!43167 (right!43167 (right!43167 xs!286))))) 1)))))

(declare-fun b!5077226 () Bool)

(assert (=> b!5077226 (= e!3167455 (<= 0 (cheight!15789 (right!43167 (right!43167 xs!286)))))))

(assert (= (and d!1640410 res!2161686) b!5077224))

(assert (= (and b!5077224 res!2161687) b!5077225))

(assert (= (and b!5077225 res!2161688) b!5077226))

(declare-fun m!6127400 () Bool)

(assert (=> d!1640410 m!6127400))

(declare-fun m!6127402 () Bool)

(assert (=> d!1640410 m!6127402))

(assert (=> b!5077225 m!6127232))

(assert (=> b!5077225 m!6127234))

(assert (=> b!5077225 m!6127232))

(assert (=> b!5077225 m!6127234))

(declare-fun m!6127404 () Bool)

(assert (=> b!5077225 m!6127404))

(assert (=> b!5076817 d!1640410))

(assert (=> b!5076859 d!1640370))

(assert (=> b!5076859 d!1640372))

(assert (=> b!5076777 d!1640120))

(assert (=> b!5076777 d!1640122))

(declare-fun d!1640412 () Bool)

(declare-fun res!2161689 () Bool)

(declare-fun e!3167456 () Bool)

(assert (=> d!1640412 (=> (not res!2161689) (not e!3167456))))

(assert (=> d!1640412 (= res!2161689 (= (csize!31386 (left!42837 (left!42837 ys!41))) (+ (size!39104 (left!42837 (left!42837 (left!42837 ys!41)))) (size!39104 (right!43167 (left!42837 (left!42837 ys!41)))))))))

(assert (=> d!1640412 (= (inv!77634 (left!42837 (left!42837 ys!41))) e!3167456)))

(declare-fun b!5077227 () Bool)

(declare-fun res!2161690 () Bool)

(assert (=> b!5077227 (=> (not res!2161690) (not e!3167456))))

(assert (=> b!5077227 (= res!2161690 (and (not (= (left!42837 (left!42837 (left!42837 ys!41))) Empty!15578)) (not (= (right!43167 (left!42837 (left!42837 ys!41))) Empty!15578))))))

(declare-fun b!5077228 () Bool)

(declare-fun res!2161691 () Bool)

(assert (=> b!5077228 (=> (not res!2161691) (not e!3167456))))

(assert (=> b!5077228 (= res!2161691 (= (cheight!15789 (left!42837 (left!42837 ys!41))) (+ (max!0 (height!2155 (left!42837 (left!42837 (left!42837 ys!41)))) (height!2155 (right!43167 (left!42837 (left!42837 ys!41))))) 1)))))

(declare-fun b!5077229 () Bool)

(assert (=> b!5077229 (= e!3167456 (<= 0 (cheight!15789 (left!42837 (left!42837 ys!41)))))))

(assert (= (and d!1640412 res!2161689) b!5077227))

(assert (= (and b!5077227 res!2161690) b!5077228))

(assert (= (and b!5077228 res!2161691) b!5077229))

(declare-fun m!6127406 () Bool)

(assert (=> d!1640412 m!6127406))

(declare-fun m!6127408 () Bool)

(assert (=> d!1640412 m!6127408))

(declare-fun m!6127410 () Bool)

(assert (=> b!5077228 m!6127410))

(declare-fun m!6127412 () Bool)

(assert (=> b!5077228 m!6127412))

(assert (=> b!5077228 m!6127410))

(assert (=> b!5077228 m!6127412))

(declare-fun m!6127414 () Bool)

(assert (=> b!5077228 m!6127414))

(assert (=> b!5076904 d!1640412))

(assert (=> b!5076857 d!1640376))

(assert (=> b!5076857 d!1640378))

(assert (=> d!1640090 d!1640382))

(assert (=> d!1640090 d!1640384))

(assert (=> b!5076880 d!1640252))

(assert (=> b!5076880 d!1640254))

(declare-fun d!1640414 () Bool)

(declare-fun lt!2090375 () Bool)

(assert (=> d!1640414 (= lt!2090375 (isEmpty!31660 (list!19017 (left!42837 (left!42837 ys!41)))))))

(assert (=> d!1640414 (= lt!2090375 (= (size!39104 (left!42837 (left!42837 ys!41))) 0))))

(assert (=> d!1640414 (= (isEmpty!31658 (left!42837 (left!42837 ys!41))) lt!2090375)))

(declare-fun bs!1190481 () Bool)

(assert (= bs!1190481 d!1640414))

(assert (=> bs!1190481 m!6127292))

(assert (=> bs!1190481 m!6127292))

(declare-fun m!6127416 () Bool)

(assert (=> bs!1190481 m!6127416))

(assert (=> bs!1190481 m!6126812))

(assert (=> b!5076849 d!1640414))

(declare-fun d!1640416 () Bool)

(declare-fun c!871902 () Bool)

(assert (=> d!1640416 (= c!871902 ((_ is Node!15578) (left!42837 (right!43167 (right!43167 ys!41)))))))

(declare-fun e!3167457 () Bool)

(assert (=> d!1640416 (= (inv!77633 (left!42837 (right!43167 (right!43167 ys!41)))) e!3167457)))

(declare-fun b!5077230 () Bool)

(assert (=> b!5077230 (= e!3167457 (inv!77634 (left!42837 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5077231 () Bool)

(declare-fun e!3167458 () Bool)

(assert (=> b!5077231 (= e!3167457 e!3167458)))

(declare-fun res!2161692 () Bool)

(assert (=> b!5077231 (= res!2161692 (not ((_ is Leaf!25872) (left!42837 (right!43167 (right!43167 ys!41))))))))

(assert (=> b!5077231 (=> res!2161692 e!3167458)))

(declare-fun b!5077232 () Bool)

(assert (=> b!5077232 (= e!3167458 (inv!77635 (left!42837 (right!43167 (right!43167 ys!41)))))))

(assert (= (and d!1640416 c!871902) b!5077230))

(assert (= (and d!1640416 (not c!871902)) b!5077231))

(assert (= (and b!5077231 (not res!2161692)) b!5077232))

(declare-fun m!6127418 () Bool)

(assert (=> b!5077230 m!6127418))

(declare-fun m!6127420 () Bool)

(assert (=> b!5077232 m!6127420))

(assert (=> b!5076927 d!1640416))

(declare-fun d!1640418 () Bool)

(declare-fun c!871903 () Bool)

(assert (=> d!1640418 (= c!871903 ((_ is Node!15578) (right!43167 (right!43167 (right!43167 ys!41)))))))

(declare-fun e!3167459 () Bool)

(assert (=> d!1640418 (= (inv!77633 (right!43167 (right!43167 (right!43167 ys!41)))) e!3167459)))

(declare-fun b!5077233 () Bool)

(assert (=> b!5077233 (= e!3167459 (inv!77634 (right!43167 (right!43167 (right!43167 ys!41)))))))

(declare-fun b!5077234 () Bool)

(declare-fun e!3167460 () Bool)

(assert (=> b!5077234 (= e!3167459 e!3167460)))

(declare-fun res!2161693 () Bool)

(assert (=> b!5077234 (= res!2161693 (not ((_ is Leaf!25872) (right!43167 (right!43167 (right!43167 ys!41))))))))

(assert (=> b!5077234 (=> res!2161693 e!3167460)))

(declare-fun b!5077235 () Bool)

(assert (=> b!5077235 (= e!3167460 (inv!77635 (right!43167 (right!43167 (right!43167 ys!41)))))))

(assert (= (and d!1640418 c!871903) b!5077233))

(assert (= (and d!1640418 (not c!871903)) b!5077234))

(assert (= (and b!5077234 (not res!2161693)) b!5077235))

(declare-fun m!6127422 () Bool)

(assert (=> b!5077233 m!6127422))

(declare-fun m!6127424 () Bool)

(assert (=> b!5077235 m!6127424))

(assert (=> b!5076927 d!1640418))

(declare-fun d!1640420 () Bool)

(declare-fun res!2161698 () Bool)

(declare-fun e!3167462 () Bool)

(assert (=> d!1640420 (=> res!2161698 e!3167462)))

(assert (=> d!1640420 (= res!2161698 (not ((_ is Node!15578) (left!42837 (left!42837 ys!41)))))))

(assert (=> d!1640420 (= (isBalanced!4440 (left!42837 (left!42837 ys!41))) e!3167462)))

(declare-fun b!5077236 () Bool)

(declare-fun res!2161696 () Bool)

(declare-fun e!3167461 () Bool)

(assert (=> b!5077236 (=> (not res!2161696) (not e!3167461))))

(assert (=> b!5077236 (= res!2161696 (isBalanced!4440 (right!43167 (left!42837 (left!42837 ys!41)))))))

(declare-fun b!5077237 () Bool)

(declare-fun res!2161694 () Bool)

(assert (=> b!5077237 (=> (not res!2161694) (not e!3167461))))

(assert (=> b!5077237 (= res!2161694 (isBalanced!4440 (left!42837 (left!42837 (left!42837 ys!41)))))))

(declare-fun b!5077238 () Bool)

(assert (=> b!5077238 (= e!3167461 (not (isEmpty!31658 (right!43167 (left!42837 (left!42837 ys!41))))))))

(declare-fun b!5077239 () Bool)

(declare-fun res!2161695 () Bool)

(assert (=> b!5077239 (=> (not res!2161695) (not e!3167461))))

(assert (=> b!5077239 (= res!2161695 (not (isEmpty!31658 (left!42837 (left!42837 (left!42837 ys!41))))))))

(declare-fun b!5077240 () Bool)

(declare-fun res!2161697 () Bool)

(assert (=> b!5077240 (=> (not res!2161697) (not e!3167461))))

(assert (=> b!5077240 (= res!2161697 (<= (- (height!2155 (left!42837 (left!42837 (left!42837 ys!41)))) (height!2155 (right!43167 (left!42837 (left!42837 ys!41))))) 1))))

(declare-fun b!5077241 () Bool)

(assert (=> b!5077241 (= e!3167462 e!3167461)))

(declare-fun res!2161699 () Bool)

(assert (=> b!5077241 (=> (not res!2161699) (not e!3167461))))

(assert (=> b!5077241 (= res!2161699 (<= (- 1) (- (height!2155 (left!42837 (left!42837 (left!42837 ys!41)))) (height!2155 (right!43167 (left!42837 (left!42837 ys!41)))))))))

(assert (= (and d!1640420 (not res!2161698)) b!5077241))

(assert (= (and b!5077241 res!2161699) b!5077240))

(assert (= (and b!5077240 res!2161697) b!5077237))

(assert (= (and b!5077237 res!2161694) b!5077236))

(assert (= (and b!5077236 res!2161696) b!5077239))

(assert (= (and b!5077239 res!2161695) b!5077238))

(declare-fun m!6127426 () Bool)

(assert (=> b!5077238 m!6127426))

(declare-fun m!6127428 () Bool)

(assert (=> b!5077237 m!6127428))

(declare-fun m!6127430 () Bool)

(assert (=> b!5077236 m!6127430))

(assert (=> b!5077240 m!6127410))

(assert (=> b!5077240 m!6127412))

(assert (=> b!5077241 m!6127410))

(assert (=> b!5077241 m!6127412))

(declare-fun m!6127432 () Bool)

(assert (=> b!5077239 m!6127432))

(assert (=> b!5076847 d!1640420))

(declare-fun d!1640422 () Bool)

(assert (=> d!1640422 (= (inv!77632 (xs!18944 (left!42837 (left!42837 ys!41)))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 (left!42837 ys!41))))) 2147483647))))

(declare-fun bs!1190482 () Bool)

(assert (= bs!1190482 d!1640422))

(declare-fun m!6127434 () Bool)

(assert (=> bs!1190482 m!6127434))

(assert (=> b!5076918 d!1640422))

(assert (=> b!5076844 d!1640320))

(assert (=> b!5076844 d!1640322))

(declare-fun d!1640424 () Bool)

(declare-fun lt!2090376 () Int)

(assert (=> d!1640424 (= lt!2090376 (size!39102 (list!19017 (left!42837 (left!42837 ys!41)))))))

(assert (=> d!1640424 (= lt!2090376 (ite ((_ is Empty!15578) (left!42837 (left!42837 ys!41))) 0 (ite ((_ is Leaf!25872) (left!42837 (left!42837 ys!41))) (csize!31387 (left!42837 (left!42837 ys!41))) (csize!31386 (left!42837 (left!42837 ys!41))))))))

(assert (=> d!1640424 (= (size!39104 (left!42837 (left!42837 ys!41))) lt!2090376)))

(declare-fun bs!1190483 () Bool)

(assert (= bs!1190483 d!1640424))

(assert (=> bs!1190483 m!6127292))

(assert (=> bs!1190483 m!6127292))

(declare-fun m!6127436 () Bool)

(assert (=> bs!1190483 m!6127436))

(assert (=> d!1640132 d!1640424))

(declare-fun d!1640426 () Bool)

(declare-fun lt!2090377 () Int)

(assert (=> d!1640426 (= lt!2090377 (size!39102 (list!19017 (right!43167 (left!42837 ys!41)))))))

(assert (=> d!1640426 (= lt!2090377 (ite ((_ is Empty!15578) (right!43167 (left!42837 ys!41))) 0 (ite ((_ is Leaf!25872) (right!43167 (left!42837 ys!41))) (csize!31387 (right!43167 (left!42837 ys!41))) (csize!31386 (right!43167 (left!42837 ys!41))))))))

(assert (=> d!1640426 (= (size!39104 (right!43167 (left!42837 ys!41))) lt!2090377)))

(declare-fun bs!1190484 () Bool)

(assert (= bs!1190484 d!1640426))

(assert (=> bs!1190484 m!6127260))

(assert (=> bs!1190484 m!6127260))

(declare-fun m!6127438 () Bool)

(assert (=> bs!1190484 m!6127438))

(assert (=> d!1640132 d!1640426))

(assert (=> d!1640102 d!1640246))

(assert (=> d!1640102 d!1640248))

(declare-fun d!1640428 () Bool)

(assert (=> d!1640428 (= (max!0 (height!2155 (left!42837 (right!43167 ys!41))) (height!2155 (right!43167 (right!43167 ys!41)))) (ite (< (height!2155 (left!42837 (right!43167 ys!41))) (height!2155 (right!43167 (right!43167 ys!41)))) (height!2155 (right!43167 (right!43167 ys!41))) (height!2155 (left!42837 (right!43167 ys!41)))))))

(assert (=> b!5076830 d!1640428))

(assert (=> b!5076830 d!1640320))

(assert (=> b!5076830 d!1640322))

(declare-fun d!1640430 () Bool)

(assert (=> d!1640430 (= (inv!77632 (xs!18944 (left!42837 (right!43167 ys!41)))) (<= (size!39102 (innerList!15666 (xs!18944 (left!42837 (right!43167 ys!41))))) 2147483647))))

(declare-fun bs!1190485 () Bool)

(assert (= bs!1190485 d!1640430))

(declare-fun m!6127440 () Bool)

(assert (=> bs!1190485 m!6127440))

(assert (=> b!5076925 d!1640430))

(declare-fun d!1640432 () Bool)

(declare-fun res!2161700 () Bool)

(declare-fun e!3167463 () Bool)

(assert (=> d!1640432 (=> (not res!2161700) (not e!3167463))))

(assert (=> d!1640432 (= res!2161700 (<= (size!39102 (list!19016 (xs!18944 (left!42837 (right!43167 ys!41))))) 512))))

(assert (=> d!1640432 (= (inv!77635 (left!42837 (right!43167 ys!41))) e!3167463)))

(declare-fun b!5077242 () Bool)

(declare-fun res!2161701 () Bool)

(assert (=> b!5077242 (=> (not res!2161701) (not e!3167463))))

(assert (=> b!5077242 (= res!2161701 (= (csize!31387 (left!42837 (right!43167 ys!41))) (size!39102 (list!19016 (xs!18944 (left!42837 (right!43167 ys!41)))))))))

(declare-fun b!5077243 () Bool)

(assert (=> b!5077243 (= e!3167463 (and (> (csize!31387 (left!42837 (right!43167 ys!41))) 0) (<= (csize!31387 (left!42837 (right!43167 ys!41))) 512)))))

(assert (= (and d!1640432 res!2161700) b!5077242))

(assert (= (and b!5077242 res!2161701) b!5077243))

(declare-fun m!6127442 () Bool)

(assert (=> d!1640432 m!6127442))

(assert (=> d!1640432 m!6127442))

(declare-fun m!6127444 () Bool)

(assert (=> d!1640432 m!6127444))

(assert (=> b!5077242 m!6127442))

(assert (=> b!5077242 m!6127442))

(assert (=> b!5077242 m!6127444))

(assert (=> b!5076865 d!1640432))

(declare-fun d!1640434 () Bool)

(declare-fun lt!2090378 () Int)

(assert (=> d!1640434 (>= lt!2090378 0)))

(declare-fun e!3167464 () Int)

(assert (=> d!1640434 (= lt!2090378 e!3167464)))

(declare-fun c!871904 () Bool)

(assert (=> d!1640434 (= c!871904 ((_ is Nil!58448) (innerList!15666 (xs!18944 (left!42837 xs!286)))))))

(assert (=> d!1640434 (= (size!39102 (innerList!15666 (xs!18944 (left!42837 xs!286)))) lt!2090378)))

(declare-fun b!5077244 () Bool)

(assert (=> b!5077244 (= e!3167464 0)))

(declare-fun b!5077245 () Bool)

(assert (=> b!5077245 (= e!3167464 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 (left!42837 xs!286)))))))))

(assert (= (and d!1640434 c!871904) b!5077244))

(assert (= (and d!1640434 (not c!871904)) b!5077245))

(declare-fun m!6127446 () Bool)

(assert (=> b!5077245 m!6127446))

(assert (=> d!1640112 d!1640434))

(declare-fun d!1640436 () Bool)

(declare-fun res!2161702 () Bool)

(declare-fun e!3167465 () Bool)

(assert (=> d!1640436 (=> (not res!2161702) (not e!3167465))))

(assert (=> d!1640436 (= res!2161702 (<= (size!39102 (list!19016 (xs!18944 (left!42837 (left!42837 ys!41))))) 512))))

(assert (=> d!1640436 (= (inv!77635 (left!42837 (left!42837 ys!41))) e!3167465)))

(declare-fun b!5077246 () Bool)

(declare-fun res!2161703 () Bool)

(assert (=> b!5077246 (=> (not res!2161703) (not e!3167465))))

(assert (=> b!5077246 (= res!2161703 (= (csize!31387 (left!42837 (left!42837 ys!41))) (size!39102 (list!19016 (xs!18944 (left!42837 (left!42837 ys!41)))))))))

(declare-fun b!5077247 () Bool)

(assert (=> b!5077247 (= e!3167465 (and (> (csize!31387 (left!42837 (left!42837 ys!41))) 0) (<= (csize!31387 (left!42837 (left!42837 ys!41))) 512)))))

(assert (= (and d!1640436 res!2161702) b!5077246))

(assert (= (and b!5077246 res!2161703) b!5077247))

(declare-fun m!6127448 () Bool)

(assert (=> d!1640436 m!6127448))

(assert (=> d!1640436 m!6127448))

(declare-fun m!6127450 () Bool)

(assert (=> d!1640436 m!6127450))

(assert (=> b!5077246 m!6127448))

(assert (=> b!5077246 m!6127448))

(assert (=> b!5077246 m!6127450))

(assert (=> b!5076906 d!1640436))

(declare-fun d!1640438 () Bool)

(declare-fun lt!2090379 () Int)

(assert (=> d!1640438 (>= lt!2090379 0)))

(declare-fun e!3167466 () Int)

(assert (=> d!1640438 (= lt!2090379 e!3167466)))

(declare-fun c!871905 () Bool)

(assert (=> d!1640438 (= c!871905 ((_ is Nil!58448) (innerList!15666 (xs!18944 (left!42837 ys!41)))))))

(assert (=> d!1640438 (= (size!39102 (innerList!15666 (xs!18944 (left!42837 ys!41)))) lt!2090379)))

(declare-fun b!5077248 () Bool)

(assert (=> b!5077248 (= e!3167466 0)))

(declare-fun b!5077249 () Bool)

(assert (=> b!5077249 (= e!3167466 (+ 1 (size!39102 (t!371369 (innerList!15666 (xs!18944 (left!42837 ys!41)))))))))

(assert (= (and d!1640438 c!871905) b!5077248))

(assert (= (and d!1640438 (not c!871905)) b!5077249))

(declare-fun m!6127452 () Bool)

(assert (=> b!5077249 m!6127452))

(assert (=> d!1640142 d!1640438))

(declare-fun tp!1416622 () Bool)

(declare-fun b!5077250 () Bool)

(declare-fun e!3167468 () Bool)

(declare-fun tp!1416621 () Bool)

(assert (=> b!5077250 (= e!3167468 (and (inv!77633 (left!42837 (left!42837 (right!43167 (right!43167 xs!286))))) tp!1416622 (inv!77633 (right!43167 (left!42837 (right!43167 (right!43167 xs!286))))) tp!1416621))))

(declare-fun b!5077252 () Bool)

(declare-fun e!3167467 () Bool)

(declare-fun tp!1416620 () Bool)

(assert (=> b!5077252 (= e!3167467 tp!1416620)))

(declare-fun b!5077251 () Bool)

(assert (=> b!5077251 (= e!3167468 (and (inv!77632 (xs!18944 (left!42837 (right!43167 (right!43167 xs!286))))) e!3167467))))

(assert (=> b!5076913 (= tp!1416565 (and (inv!77633 (left!42837 (right!43167 (right!43167 xs!286)))) e!3167468))))

(assert (= (and b!5076913 ((_ is Node!15578) (left!42837 (right!43167 (right!43167 xs!286))))) b!5077250))

(assert (= b!5077251 b!5077252))

(assert (= (and b!5076913 ((_ is Leaf!25872) (left!42837 (right!43167 (right!43167 xs!286))))) b!5077251))

(declare-fun m!6127454 () Bool)

(assert (=> b!5077250 m!6127454))

(declare-fun m!6127456 () Bool)

(assert (=> b!5077250 m!6127456))

(declare-fun m!6127458 () Bool)

(assert (=> b!5077251 m!6127458))

(assert (=> b!5076913 m!6126854))

(declare-fun b!5077253 () Bool)

(declare-fun tp!1416624 () Bool)

(declare-fun e!3167470 () Bool)

(declare-fun tp!1416625 () Bool)

(assert (=> b!5077253 (= e!3167470 (and (inv!77633 (left!42837 (right!43167 (right!43167 (right!43167 xs!286))))) tp!1416625 (inv!77633 (right!43167 (right!43167 (right!43167 (right!43167 xs!286))))) tp!1416624))))

(declare-fun b!5077255 () Bool)

(declare-fun e!3167469 () Bool)

(declare-fun tp!1416623 () Bool)

(assert (=> b!5077255 (= e!3167469 tp!1416623)))

(declare-fun b!5077254 () Bool)

(assert (=> b!5077254 (= e!3167470 (and (inv!77632 (xs!18944 (right!43167 (right!43167 (right!43167 xs!286))))) e!3167469))))

(assert (=> b!5076913 (= tp!1416564 (and (inv!77633 (right!43167 (right!43167 (right!43167 xs!286)))) e!3167470))))

(assert (= (and b!5076913 ((_ is Node!15578) (right!43167 (right!43167 (right!43167 xs!286))))) b!5077253))

(assert (= b!5077254 b!5077255))

(assert (= (and b!5076913 ((_ is Leaf!25872) (right!43167 (right!43167 (right!43167 xs!286))))) b!5077254))

(declare-fun m!6127460 () Bool)

(assert (=> b!5077253 m!6127460))

(declare-fun m!6127462 () Bool)

(assert (=> b!5077253 m!6127462))

(declare-fun m!6127464 () Bool)

(assert (=> b!5077254 m!6127464))

(assert (=> b!5076913 m!6126856))

(declare-fun b!5077256 () Bool)

(declare-fun e!3167471 () Bool)

(declare-fun tp!1416626 () Bool)

(assert (=> b!5077256 (= e!3167471 (and tp_is_empty!37077 tp!1416626))))

(assert (=> b!5076929 (= tp!1416577 e!3167471)))

(assert (= (and b!5076929 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 (right!43167 ys!41)))))) b!5077256))

(declare-fun b!5077257 () Bool)

(declare-fun e!3167472 () Bool)

(declare-fun tp!1416627 () Bool)

(assert (=> b!5077257 (= e!3167472 (and tp_is_empty!37077 tp!1416627))))

(assert (=> b!5076938 (= tp!1416588 e!3167472)))

(assert (= (and b!5076938 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 (right!43167 ys!41)))))) b!5077257))

(declare-fun b!5077258 () Bool)

(declare-fun e!3167473 () Bool)

(declare-fun tp!1416628 () Bool)

(assert (=> b!5077258 (= e!3167473 (and tp_is_empty!37077 tp!1416628))))

(assert (=> b!5076916 (= tp!1416566 e!3167473)))

(assert (= (and b!5076916 ((_ is Cons!58448) (t!371369 (t!371369 (innerList!15666 (xs!18944 xs!286)))))) b!5077258))

(declare-fun b!5077259 () Bool)

(declare-fun e!3167474 () Bool)

(declare-fun tp!1416629 () Bool)

(assert (=> b!5077259 (= e!3167474 (and tp_is_empty!37077 tp!1416629))))

(assert (=> b!5076922 (= tp!1416570 e!3167474)))

(assert (= (and b!5076922 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 (left!42837 ys!41)))))) b!5077259))

(declare-fun b!5077260 () Bool)

(declare-fun e!3167475 () Bool)

(declare-fun tp!1416630 () Bool)

(assert (=> b!5077260 (= e!3167475 (and tp_is_empty!37077 tp!1416630))))

(assert (=> b!5076912 (= tp!1416560 e!3167475)))

(assert (= (and b!5076912 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 (right!43167 xs!286)))))) b!5077260))

(declare-fun b!5077261 () Bool)

(declare-fun e!3167476 () Bool)

(declare-fun tp!1416631 () Bool)

(assert (=> b!5077261 (= e!3167476 (and tp_is_empty!37077 tp!1416631))))

(assert (=> b!5076936 (= tp!1416584 e!3167476)))

(assert (= (and b!5076936 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 (left!42837 xs!286)))))) b!5077261))

(declare-fun b!5077262 () Bool)

(declare-fun e!3167478 () Bool)

(declare-fun tp!1416633 () Bool)

(declare-fun tp!1416634 () Bool)

(assert (=> b!5077262 (= e!3167478 (and (inv!77633 (left!42837 (left!42837 (right!43167 (left!42837 ys!41))))) tp!1416634 (inv!77633 (right!43167 (left!42837 (right!43167 (left!42837 ys!41))))) tp!1416633))))

(declare-fun b!5077264 () Bool)

(declare-fun e!3167477 () Bool)

(declare-fun tp!1416632 () Bool)

(assert (=> b!5077264 (= e!3167477 tp!1416632)))

(declare-fun b!5077263 () Bool)

(assert (=> b!5077263 (= e!3167478 (and (inv!77632 (xs!18944 (left!42837 (right!43167 (left!42837 ys!41))))) e!3167477))))

(assert (=> b!5076920 (= tp!1416572 (and (inv!77633 (left!42837 (right!43167 (left!42837 ys!41)))) e!3167478))))

(assert (= (and b!5076920 ((_ is Node!15578) (left!42837 (right!43167 (left!42837 ys!41))))) b!5077262))

(assert (= b!5077263 b!5077264))

(assert (= (and b!5076920 ((_ is Leaf!25872) (left!42837 (right!43167 (left!42837 ys!41))))) b!5077263))

(declare-fun m!6127466 () Bool)

(assert (=> b!5077262 m!6127466))

(declare-fun m!6127468 () Bool)

(assert (=> b!5077262 m!6127468))

(declare-fun m!6127470 () Bool)

(assert (=> b!5077263 m!6127470))

(assert (=> b!5076920 m!6126866))

(declare-fun e!3167480 () Bool)

(declare-fun b!5077265 () Bool)

(declare-fun tp!1416636 () Bool)

(declare-fun tp!1416637 () Bool)

(assert (=> b!5077265 (= e!3167480 (and (inv!77633 (left!42837 (right!43167 (right!43167 (left!42837 ys!41))))) tp!1416637 (inv!77633 (right!43167 (right!43167 (right!43167 (left!42837 ys!41))))) tp!1416636))))

(declare-fun b!5077267 () Bool)

(declare-fun e!3167479 () Bool)

(declare-fun tp!1416635 () Bool)

(assert (=> b!5077267 (= e!3167479 tp!1416635)))

(declare-fun b!5077266 () Bool)

(assert (=> b!5077266 (= e!3167480 (and (inv!77632 (xs!18944 (right!43167 (right!43167 (left!42837 ys!41))))) e!3167479))))

(assert (=> b!5076920 (= tp!1416571 (and (inv!77633 (right!43167 (right!43167 (left!42837 ys!41)))) e!3167480))))

(assert (= (and b!5076920 ((_ is Node!15578) (right!43167 (right!43167 (left!42837 ys!41))))) b!5077265))

(assert (= b!5077266 b!5077267))

(assert (= (and b!5076920 ((_ is Leaf!25872) (right!43167 (right!43167 (left!42837 ys!41))))) b!5077266))

(declare-fun m!6127472 () Bool)

(assert (=> b!5077265 m!6127472))

(declare-fun m!6127474 () Bool)

(assert (=> b!5077265 m!6127474))

(declare-fun m!6127476 () Bool)

(assert (=> b!5077266 m!6127476))

(assert (=> b!5076920 m!6126868))

(declare-fun b!5077268 () Bool)

(declare-fun e!3167481 () Bool)

(declare-fun tp!1416638 () Bool)

(assert (=> b!5077268 (= e!3167481 (and tp_is_empty!37077 tp!1416638))))

(assert (=> b!5076923 (= tp!1416573 e!3167481)))

(assert (= (and b!5076923 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 (left!42837 xs!286)))))) b!5077268))

(declare-fun b!5077269 () Bool)

(declare-fun e!3167482 () Bool)

(declare-fun tp!1416639 () Bool)

(assert (=> b!5077269 (= e!3167482 (and tp_is_empty!37077 tp!1416639))))

(assert (=> b!5076937 (= tp!1416587 e!3167482)))

(assert (= (and b!5076937 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 (left!42837 ys!41)))))) b!5077269))

(declare-fun b!5077270 () Bool)

(declare-fun e!3167483 () Bool)

(declare-fun tp!1416640 () Bool)

(assert (=> b!5077270 (= e!3167483 (and tp_is_empty!37077 tp!1416640))))

(assert (=> b!5076919 (= tp!1416567 e!3167483)))

(assert (= (and b!5076919 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 (left!42837 ys!41)))))) b!5077270))

(declare-fun tp!1416643 () Bool)

(declare-fun tp!1416642 () Bool)

(declare-fun b!5077271 () Bool)

(declare-fun e!3167485 () Bool)

(assert (=> b!5077271 (= e!3167485 (and (inv!77633 (left!42837 (left!42837 (right!43167 (right!43167 ys!41))))) tp!1416643 (inv!77633 (right!43167 (left!42837 (right!43167 (right!43167 ys!41))))) tp!1416642))))

(declare-fun b!5077273 () Bool)

(declare-fun e!3167484 () Bool)

(declare-fun tp!1416641 () Bool)

(assert (=> b!5077273 (= e!3167484 tp!1416641)))

(declare-fun b!5077272 () Bool)

(assert (=> b!5077272 (= e!3167485 (and (inv!77632 (xs!18944 (left!42837 (right!43167 (right!43167 ys!41))))) e!3167484))))

(assert (=> b!5076927 (= tp!1416579 (and (inv!77633 (left!42837 (right!43167 (right!43167 ys!41)))) e!3167485))))

(assert (= (and b!5076927 ((_ is Node!15578) (left!42837 (right!43167 (right!43167 ys!41))))) b!5077271))

(assert (= b!5077272 b!5077273))

(assert (= (and b!5076927 ((_ is Leaf!25872) (left!42837 (right!43167 (right!43167 ys!41))))) b!5077272))

(declare-fun m!6127478 () Bool)

(assert (=> b!5077271 m!6127478))

(declare-fun m!6127480 () Bool)

(assert (=> b!5077271 m!6127480))

(declare-fun m!6127482 () Bool)

(assert (=> b!5077272 m!6127482))

(assert (=> b!5076927 m!6126878))

(declare-fun tp!1416646 () Bool)

(declare-fun tp!1416645 () Bool)

(declare-fun b!5077274 () Bool)

(declare-fun e!3167487 () Bool)

(assert (=> b!5077274 (= e!3167487 (and (inv!77633 (left!42837 (right!43167 (right!43167 (right!43167 ys!41))))) tp!1416646 (inv!77633 (right!43167 (right!43167 (right!43167 (right!43167 ys!41))))) tp!1416645))))

(declare-fun b!5077276 () Bool)

(declare-fun e!3167486 () Bool)

(declare-fun tp!1416644 () Bool)

(assert (=> b!5077276 (= e!3167486 tp!1416644)))

(declare-fun b!5077275 () Bool)

(assert (=> b!5077275 (= e!3167487 (and (inv!77632 (xs!18944 (right!43167 (right!43167 (right!43167 ys!41))))) e!3167486))))

(assert (=> b!5076927 (= tp!1416578 (and (inv!77633 (right!43167 (right!43167 (right!43167 ys!41)))) e!3167487))))

(assert (= (and b!5076927 ((_ is Node!15578) (right!43167 (right!43167 (right!43167 ys!41))))) b!5077274))

(assert (= b!5077275 b!5077276))

(assert (= (and b!5076927 ((_ is Leaf!25872) (right!43167 (right!43167 (right!43167 ys!41))))) b!5077275))

(declare-fun m!6127484 () Bool)

(assert (=> b!5077274 m!6127484))

(declare-fun m!6127486 () Bool)

(assert (=> b!5077274 m!6127486))

(declare-fun m!6127488 () Bool)

(assert (=> b!5077275 m!6127488))

(assert (=> b!5076927 m!6126880))

(declare-fun b!5077277 () Bool)

(declare-fun e!3167488 () Bool)

(declare-fun tp!1416647 () Bool)

(assert (=> b!5077277 (= e!3167488 (and tp_is_empty!37077 tp!1416647))))

(assert (=> b!5076930 (= tp!1416580 e!3167488)))

(assert (= (and b!5076930 ((_ is Cons!58448) (t!371369 (innerList!15666 (xs!18944 (right!43167 xs!286)))))) b!5077277))

(declare-fun tp!1416649 () Bool)

(declare-fun e!3167490 () Bool)

(declare-fun b!5077278 () Bool)

(declare-fun tp!1416650 () Bool)

(assert (=> b!5077278 (= e!3167490 (and (inv!77633 (left!42837 (left!42837 (left!42837 (right!43167 xs!286))))) tp!1416650 (inv!77633 (right!43167 (left!42837 (left!42837 (right!43167 xs!286))))) tp!1416649))))

(declare-fun b!5077280 () Bool)

(declare-fun e!3167489 () Bool)

(declare-fun tp!1416648 () Bool)

(assert (=> b!5077280 (= e!3167489 tp!1416648)))

(declare-fun b!5077279 () Bool)

(assert (=> b!5077279 (= e!3167490 (and (inv!77632 (xs!18944 (left!42837 (left!42837 (right!43167 xs!286))))) e!3167489))))

(assert (=> b!5076910 (= tp!1416562 (and (inv!77633 (left!42837 (left!42837 (right!43167 xs!286)))) e!3167490))))

(assert (= (and b!5076910 ((_ is Node!15578) (left!42837 (left!42837 (right!43167 xs!286))))) b!5077278))

(assert (= b!5077279 b!5077280))

(assert (= (and b!5076910 ((_ is Leaf!25872) (left!42837 (left!42837 (right!43167 xs!286))))) b!5077279))

(declare-fun m!6127490 () Bool)

(assert (=> b!5077278 m!6127490))

(declare-fun m!6127492 () Bool)

(assert (=> b!5077278 m!6127492))

(declare-fun m!6127494 () Bool)

(assert (=> b!5077279 m!6127494))

(assert (=> b!5076910 m!6126848))

(declare-fun tp!1416652 () Bool)

(declare-fun tp!1416653 () Bool)

(declare-fun b!5077281 () Bool)

(declare-fun e!3167492 () Bool)

(assert (=> b!5077281 (= e!3167492 (and (inv!77633 (left!42837 (right!43167 (left!42837 (right!43167 xs!286))))) tp!1416653 (inv!77633 (right!43167 (right!43167 (left!42837 (right!43167 xs!286))))) tp!1416652))))

(declare-fun b!5077283 () Bool)

(declare-fun e!3167491 () Bool)

(declare-fun tp!1416651 () Bool)

(assert (=> b!5077283 (= e!3167491 tp!1416651)))

(declare-fun b!5077282 () Bool)

(assert (=> b!5077282 (= e!3167492 (and (inv!77632 (xs!18944 (right!43167 (left!42837 (right!43167 xs!286))))) e!3167491))))

(assert (=> b!5076910 (= tp!1416561 (and (inv!77633 (right!43167 (left!42837 (right!43167 xs!286)))) e!3167492))))

(assert (= (and b!5076910 ((_ is Node!15578) (right!43167 (left!42837 (right!43167 xs!286))))) b!5077281))

(assert (= b!5077282 b!5077283))

(assert (= (and b!5076910 ((_ is Leaf!25872) (right!43167 (left!42837 (right!43167 xs!286))))) b!5077282))

(declare-fun m!6127496 () Bool)

(assert (=> b!5077281 m!6127496))

(declare-fun m!6127498 () Bool)

(assert (=> b!5077281 m!6127498))

(declare-fun m!6127500 () Bool)

(assert (=> b!5077282 m!6127500))

(assert (=> b!5076910 m!6126850))

(declare-fun b!5077284 () Bool)

(declare-fun e!3167493 () Bool)

(declare-fun tp!1416654 () Bool)

(assert (=> b!5077284 (= e!3167493 (and tp_is_empty!37077 tp!1416654))))

(assert (=> b!5076926 (= tp!1416574 e!3167493)))

(assert (= (and b!5076926 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 (right!43167 ys!41)))))) b!5077284))

(declare-fun b!5077285 () Bool)

(declare-fun tp!1416657 () Bool)

(declare-fun e!3167495 () Bool)

(declare-fun tp!1416656 () Bool)

(assert (=> b!5077285 (= e!3167495 (and (inv!77633 (left!42837 (left!42837 (right!43167 (left!42837 xs!286))))) tp!1416657 (inv!77633 (right!43167 (left!42837 (right!43167 (left!42837 xs!286))))) tp!1416656))))

(declare-fun b!5077287 () Bool)

(declare-fun e!3167494 () Bool)

(declare-fun tp!1416655 () Bool)

(assert (=> b!5077287 (= e!3167494 tp!1416655)))

(declare-fun b!5077286 () Bool)

(assert (=> b!5077286 (= e!3167495 (and (inv!77632 (xs!18944 (left!42837 (right!43167 (left!42837 xs!286))))) e!3167494))))

(assert (=> b!5076934 (= tp!1416586 (and (inv!77633 (left!42837 (right!43167 (left!42837 xs!286)))) e!3167495))))

(assert (= (and b!5076934 ((_ is Node!15578) (left!42837 (right!43167 (left!42837 xs!286))))) b!5077285))

(assert (= b!5077286 b!5077287))

(assert (= (and b!5076934 ((_ is Leaf!25872) (left!42837 (right!43167 (left!42837 xs!286))))) b!5077286))

(declare-fun m!6127502 () Bool)

(assert (=> b!5077285 m!6127502))

(declare-fun m!6127504 () Bool)

(assert (=> b!5077285 m!6127504))

(declare-fun m!6127506 () Bool)

(assert (=> b!5077286 m!6127506))

(assert (=> b!5076934 m!6126890))

(declare-fun e!3167497 () Bool)

(declare-fun tp!1416660 () Bool)

(declare-fun tp!1416659 () Bool)

(declare-fun b!5077288 () Bool)

(assert (=> b!5077288 (= e!3167497 (and (inv!77633 (left!42837 (right!43167 (right!43167 (left!42837 xs!286))))) tp!1416660 (inv!77633 (right!43167 (right!43167 (right!43167 (left!42837 xs!286))))) tp!1416659))))

(declare-fun b!5077290 () Bool)

(declare-fun e!3167496 () Bool)

(declare-fun tp!1416658 () Bool)

(assert (=> b!5077290 (= e!3167496 tp!1416658)))

(declare-fun b!5077289 () Bool)

(assert (=> b!5077289 (= e!3167497 (and (inv!77632 (xs!18944 (right!43167 (right!43167 (left!42837 xs!286))))) e!3167496))))

(assert (=> b!5076934 (= tp!1416585 (and (inv!77633 (right!43167 (right!43167 (left!42837 xs!286)))) e!3167497))))

(assert (= (and b!5076934 ((_ is Node!15578) (right!43167 (right!43167 (left!42837 xs!286))))) b!5077288))

(assert (= b!5077289 b!5077290))

(assert (= (and b!5076934 ((_ is Leaf!25872) (right!43167 (right!43167 (left!42837 xs!286))))) b!5077289))

(declare-fun m!6127508 () Bool)

(assert (=> b!5077288 m!6127508))

(declare-fun m!6127510 () Bool)

(assert (=> b!5077288 m!6127510))

(declare-fun m!6127512 () Bool)

(assert (=> b!5077289 m!6127512))

(assert (=> b!5076934 m!6126892))

(declare-fun e!3167499 () Bool)

(declare-fun b!5077291 () Bool)

(declare-fun tp!1416663 () Bool)

(declare-fun tp!1416662 () Bool)

(assert (=> b!5077291 (= e!3167499 (and (inv!77633 (left!42837 (left!42837 (left!42837 (right!43167 ys!41))))) tp!1416663 (inv!77633 (right!43167 (left!42837 (left!42837 (right!43167 ys!41))))) tp!1416662))))

(declare-fun b!5077293 () Bool)

(declare-fun e!3167498 () Bool)

(declare-fun tp!1416661 () Bool)

(assert (=> b!5077293 (= e!3167498 tp!1416661)))

(declare-fun b!5077292 () Bool)

(assert (=> b!5077292 (= e!3167499 (and (inv!77632 (xs!18944 (left!42837 (left!42837 (right!43167 ys!41))))) e!3167498))))

(assert (=> b!5076924 (= tp!1416576 (and (inv!77633 (left!42837 (left!42837 (right!43167 ys!41)))) e!3167499))))

(assert (= (and b!5076924 ((_ is Node!15578) (left!42837 (left!42837 (right!43167 ys!41))))) b!5077291))

(assert (= b!5077292 b!5077293))

(assert (= (and b!5076924 ((_ is Leaf!25872) (left!42837 (left!42837 (right!43167 ys!41))))) b!5077292))

(declare-fun m!6127514 () Bool)

(assert (=> b!5077291 m!6127514))

(declare-fun m!6127516 () Bool)

(assert (=> b!5077291 m!6127516))

(declare-fun m!6127518 () Bool)

(assert (=> b!5077292 m!6127518))

(assert (=> b!5076924 m!6126872))

(declare-fun tp!1416666 () Bool)

(declare-fun b!5077294 () Bool)

(declare-fun e!3167501 () Bool)

(declare-fun tp!1416665 () Bool)

(assert (=> b!5077294 (= e!3167501 (and (inv!77633 (left!42837 (right!43167 (left!42837 (right!43167 ys!41))))) tp!1416666 (inv!77633 (right!43167 (right!43167 (left!42837 (right!43167 ys!41))))) tp!1416665))))

(declare-fun b!5077296 () Bool)

(declare-fun e!3167500 () Bool)

(declare-fun tp!1416664 () Bool)

(assert (=> b!5077296 (= e!3167500 tp!1416664)))

(declare-fun b!5077295 () Bool)

(assert (=> b!5077295 (= e!3167501 (and (inv!77632 (xs!18944 (right!43167 (left!42837 (right!43167 ys!41))))) e!3167500))))

(assert (=> b!5076924 (= tp!1416575 (and (inv!77633 (right!43167 (left!42837 (right!43167 ys!41)))) e!3167501))))

(assert (= (and b!5076924 ((_ is Node!15578) (right!43167 (left!42837 (right!43167 ys!41))))) b!5077294))

(assert (= b!5077295 b!5077296))

(assert (= (and b!5076924 ((_ is Leaf!25872) (right!43167 (left!42837 (right!43167 ys!41))))) b!5077295))

(declare-fun m!6127520 () Bool)

(assert (=> b!5077294 m!6127520))

(declare-fun m!6127522 () Bool)

(assert (=> b!5077294 m!6127522))

(declare-fun m!6127524 () Bool)

(assert (=> b!5077295 m!6127524))

(assert (=> b!5076924 m!6126874))

(declare-fun b!5077297 () Bool)

(declare-fun e!3167502 () Bool)

(declare-fun tp!1416667 () Bool)

(assert (=> b!5077297 (= e!3167502 (and tp_is_empty!37077 tp!1416667))))

(assert (=> b!5076933 (= tp!1416581 e!3167502)))

(assert (= (and b!5076933 ((_ is Cons!58448) (innerList!15666 (xs!18944 (left!42837 (left!42837 xs!286)))))) b!5077297))

(declare-fun b!5077298 () Bool)

(declare-fun tp!1416669 () Bool)

(declare-fun e!3167504 () Bool)

(declare-fun tp!1416670 () Bool)

(assert (=> b!5077298 (= e!3167504 (and (inv!77633 (left!42837 (left!42837 (left!42837 (left!42837 ys!41))))) tp!1416670 (inv!77633 (right!43167 (left!42837 (left!42837 (left!42837 ys!41))))) tp!1416669))))

(declare-fun b!5077300 () Bool)

(declare-fun e!3167503 () Bool)

(declare-fun tp!1416668 () Bool)

(assert (=> b!5077300 (= e!3167503 tp!1416668)))

(declare-fun b!5077299 () Bool)

(assert (=> b!5077299 (= e!3167504 (and (inv!77632 (xs!18944 (left!42837 (left!42837 (left!42837 ys!41))))) e!3167503))))

(assert (=> b!5076917 (= tp!1416569 (and (inv!77633 (left!42837 (left!42837 (left!42837 ys!41)))) e!3167504))))

(assert (= (and b!5076917 ((_ is Node!15578) (left!42837 (left!42837 (left!42837 ys!41))))) b!5077298))

(assert (= b!5077299 b!5077300))

(assert (= (and b!5076917 ((_ is Leaf!25872) (left!42837 (left!42837 (left!42837 ys!41))))) b!5077299))

(declare-fun m!6127526 () Bool)

(assert (=> b!5077298 m!6127526))

(declare-fun m!6127528 () Bool)

(assert (=> b!5077298 m!6127528))

(declare-fun m!6127530 () Bool)

(assert (=> b!5077299 m!6127530))

(assert (=> b!5076917 m!6126860))

(declare-fun e!3167506 () Bool)

(declare-fun b!5077301 () Bool)

(declare-fun tp!1416672 () Bool)

(declare-fun tp!1416673 () Bool)

(assert (=> b!5077301 (= e!3167506 (and (inv!77633 (left!42837 (right!43167 (left!42837 (left!42837 ys!41))))) tp!1416673 (inv!77633 (right!43167 (right!43167 (left!42837 (left!42837 ys!41))))) tp!1416672))))

(declare-fun b!5077303 () Bool)

(declare-fun e!3167505 () Bool)

(declare-fun tp!1416671 () Bool)

(assert (=> b!5077303 (= e!3167505 tp!1416671)))

(declare-fun b!5077302 () Bool)

(assert (=> b!5077302 (= e!3167506 (and (inv!77632 (xs!18944 (right!43167 (left!42837 (left!42837 ys!41))))) e!3167505))))

(assert (=> b!5076917 (= tp!1416568 (and (inv!77633 (right!43167 (left!42837 (left!42837 ys!41)))) e!3167506))))

(assert (= (and b!5076917 ((_ is Node!15578) (right!43167 (left!42837 (left!42837 ys!41))))) b!5077301))

(assert (= b!5077302 b!5077303))

(assert (= (and b!5076917 ((_ is Leaf!25872) (right!43167 (left!42837 (left!42837 ys!41))))) b!5077302))

(declare-fun m!6127532 () Bool)

(assert (=> b!5077301 m!6127532))

(declare-fun m!6127534 () Bool)

(assert (=> b!5077301 m!6127534))

(declare-fun m!6127536 () Bool)

(assert (=> b!5077302 m!6127536))

(assert (=> b!5076917 m!6126862))

(declare-fun b!5077304 () Bool)

(declare-fun tp!1416676 () Bool)

(declare-fun e!3167508 () Bool)

(declare-fun tp!1416675 () Bool)

(assert (=> b!5077304 (= e!3167508 (and (inv!77633 (left!42837 (left!42837 (left!42837 (left!42837 xs!286))))) tp!1416676 (inv!77633 (right!43167 (left!42837 (left!42837 (left!42837 xs!286))))) tp!1416675))))

(declare-fun b!5077306 () Bool)

(declare-fun e!3167507 () Bool)

(declare-fun tp!1416674 () Bool)

(assert (=> b!5077306 (= e!3167507 tp!1416674)))

(declare-fun b!5077305 () Bool)

(assert (=> b!5077305 (= e!3167508 (and (inv!77632 (xs!18944 (left!42837 (left!42837 (left!42837 xs!286))))) e!3167507))))

(assert (=> b!5076931 (= tp!1416583 (and (inv!77633 (left!42837 (left!42837 (left!42837 xs!286)))) e!3167508))))

(assert (= (and b!5076931 ((_ is Node!15578) (left!42837 (left!42837 (left!42837 xs!286))))) b!5077304))

(assert (= b!5077305 b!5077306))

(assert (= (and b!5076931 ((_ is Leaf!25872) (left!42837 (left!42837 (left!42837 xs!286))))) b!5077305))

(declare-fun m!6127538 () Bool)

(assert (=> b!5077304 m!6127538))

(declare-fun m!6127540 () Bool)

(assert (=> b!5077304 m!6127540))

(declare-fun m!6127542 () Bool)

(assert (=> b!5077305 m!6127542))

(assert (=> b!5076931 m!6126884))

(declare-fun b!5077307 () Bool)

(declare-fun e!3167510 () Bool)

(declare-fun tp!1416678 () Bool)

(declare-fun tp!1416679 () Bool)

(assert (=> b!5077307 (= e!3167510 (and (inv!77633 (left!42837 (right!43167 (left!42837 (left!42837 xs!286))))) tp!1416679 (inv!77633 (right!43167 (right!43167 (left!42837 (left!42837 xs!286))))) tp!1416678))))

(declare-fun b!5077309 () Bool)

(declare-fun e!3167509 () Bool)

(declare-fun tp!1416677 () Bool)

(assert (=> b!5077309 (= e!3167509 tp!1416677)))

(declare-fun b!5077308 () Bool)

(assert (=> b!5077308 (= e!3167510 (and (inv!77632 (xs!18944 (right!43167 (left!42837 (left!42837 xs!286))))) e!3167509))))

(assert (=> b!5076931 (= tp!1416582 (and (inv!77633 (right!43167 (left!42837 (left!42837 xs!286)))) e!3167510))))

(assert (= (and b!5076931 ((_ is Node!15578) (right!43167 (left!42837 (left!42837 xs!286))))) b!5077307))

(assert (= b!5077308 b!5077309))

(assert (= (and b!5076931 ((_ is Leaf!25872) (right!43167 (left!42837 (left!42837 xs!286))))) b!5077308))

(declare-fun m!6127544 () Bool)

(assert (=> b!5077307 m!6127544))

(declare-fun m!6127546 () Bool)

(assert (=> b!5077307 m!6127546))

(declare-fun m!6127548 () Bool)

(assert (=> b!5077308 m!6127548))

(assert (=> b!5076931 m!6126886))

(declare-fun b!5077310 () Bool)

(declare-fun e!3167511 () Bool)

(declare-fun tp!1416680 () Bool)

(assert (=> b!5077310 (= e!3167511 (and tp_is_empty!37077 tp!1416680))))

(assert (=> b!5076939 (= tp!1416589 e!3167511)))

(assert (= (and b!5076939 ((_ is Cons!58448) (t!371369 (t!371369 (innerList!15666 (xs!18944 ys!41)))))) b!5077310))

(declare-fun b!5077311 () Bool)

(declare-fun e!3167512 () Bool)

(declare-fun tp!1416681 () Bool)

(assert (=> b!5077311 (= e!3167512 (and tp_is_empty!37077 tp!1416681))))

(assert (=> b!5076915 (= tp!1416563 e!3167512)))

(assert (= (and b!5076915 ((_ is Cons!58448) (innerList!15666 (xs!18944 (right!43167 (right!43167 xs!286)))))) b!5077311))

(check-sat (not b!5077171) (not b!5077121) (not b!5076934) (not b!5077270) (not b!5077285) (not d!1640430) (not b!5077299) (not b!5077303) (not b!5077176) (not b!5077130) (not b!5077238) (not b!5077217) (not b!5077150) (not b!5077228) (not b!5077182) (not d!1640368) (not b!5077097) (not b!5076913) (not b!5077211) (not d!1640264) (not b!5077275) (not d!1640278) (not b!5077268) (not b!5077278) (not d!1640432) (not b!5077301) (not b!5077241) (not b!5077230) (not b!5076917) (not b!5077155) (not b!5077255) (not b!5077298) (not d!1640424) (not b!5077146) (not b!5077213) (not d!1640406) (not b!5077136) (not d!1640318) (not b!5077297) (not d!1640276) (not b!5077100) (not b!5077269) (not b!5077175) (not b!5077276) (not b!5077126) (not b!5077152) (not b!5076910) (not b!5077293) (not d!1640422) (not b!5077263) (not b!5077310) (not b!5077300) (not d!1640380) (not b!5077196) (not b!5077160) (not b!5077311) (not b!5077186) (not b!5077286) (not b!5077260) (not b!5077193) (not d!1640414) (not d!1640400) (not b!5077295) (not b!5077305) (not b!5077220) (not b!5077273) (not b!5077272) (not b!5077265) (not b!5077080) (not b!5077232) (not b!5077183) (not d!1640352) (not b!5077164) (not d!1640394) (not b!5077172) (not b!5077246) (not b!5077254) (not b!5077210) (not b!5077118) (not b!5077261) (not b!5077239) (not b!5077306) (not b!5077148) (not b!5077292) (not b!5077142) (not d!1640266) (not d!1640282) (not b!5077088) (not b!5077137) (not b!5077256) (not b!5077111) (not b!5077089) (not b!5077077) (not b!5077099) (not b!5077290) (not b!5077117) (not d!1640316) (not b!5077170) (not b!5077215) (not b!5077204) (not b!5077173) (not b!5077225) (not b!5077236) (not d!1640436) (not b!5077108) (not b!5077212) (not b!5077271) (not b!5077123) (not d!1640226) (not b!5077112) (not b!5077200) (not d!1640408) (not b!5077294) (not b!5076920) (not d!1640398) (not b!5077076) (not b!5077140) (not b!5077208) (not b!5077124) (not b!5077202) (not b!5077233) (not b!5077242) (not b!5077168) (not b!5077288) (not d!1640412) (not b!5077113) (not b!5077203) (not b!5077235) (not b!5077105) (not b!5076924) (not b!5077163) (not b!5077128) (not b!5077249) (not b!5077179) (not b!5077129) (not b!5077086) (not d!1640356) (not b!5077287) (not b!5076927) (not b!5077253) (not b!5077252) (not b!5077192) (not b!5077127) (not b!5077165) (not d!1640284) (not b!5077266) (not b!5077205) (not b!5077092) (not d!1640258) (not b!5077302) (not b!5077174) (not b!5077264) (not b!5077139) (not b!5077277) (not d!1640238) (not d!1640426) (not b!5077237) (not b!5077106) (not b!5077214) (not b!5077091) (not b!5077222) (not b!5077125) (not b!5077281) (not d!1640306) (not d!1640280) (not d!1640410) (not b!5077279) (not d!1640404) (not b!5077095) (not d!1640362) (not b!5077081) (not d!1640262) (not b!5077134) (not b!5077102) (not b!5077289) (not d!1640324) (not b!5077240) (not d!1640402) (not b!5077309) (not b!5077307) (not b!5077115) (not b!5077262) (not b!5077090) (not b!5077245) (not b!5077167) (not b!5077274) (not b!5077120) (not b!5077114) (not b!5077291) (not b!5077251) (not d!1640392) (not b!5077109) (not d!1640366) (not d!1640374) (not b!5077282) (not d!1640338) (not d!1640332) tp_is_empty!37077 (not d!1640244) (not b!5077198) (not b!5077122) (not b!5077304) (not b!5077267) (not b!5077083) (not b!5077093) (not b!5077250) (not b!5077258) (not b!5077284) (not b!5077153) (not b!5077259) (not b!5077257) (not b!5077283) (not b!5077308) (not b!5077280) (not b!5077188) (not b!5077131) (not d!1640302) (not b!5077103) (not b!5077296) (not b!5077085) (not b!5077189) (not b!5077201) (not b!5076931) (not b!5077157) (not b!5077110) (not b!5077199) (not b!5077195) (not d!1640228) (not b!5077132) (not b!5077180) (not b!5077143))
(check-sat)
