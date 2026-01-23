; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534590 () Bool)

(assert start!534590)

(declare-fun b!5055143 () Bool)

(declare-fun e!3155731 () Bool)

(declare-datatypes ((T!105006 0))(
  ( (T!105007 (val!23632 Int)) )
))
(declare-datatypes ((List!58542 0))(
  ( (Nil!58418) (Cons!58418 (h!64866 T!105006) (t!371207 List!58542)) )
))
(declare-fun lt!2087338 () List!58542)

(declare-fun lt!2087339 () List!58542)

(declare-fun ++!12769 (List!58542 List!58542) List!58542)

(assert (=> b!5055143 (= e!3155731 (not (= lt!2087338 (++!12769 lt!2087339 lt!2087338))))))

(declare-datatypes ((IArray!31157 0))(
  ( (IArray!31158 (innerList!15636 List!58542)) )
))
(declare-datatypes ((Conc!15548 0))(
  ( (Node!15548 (left!42792 Conc!15548) (right!43122 Conc!15548) (csize!31326 Int) (cheight!15759 Int)) (Leaf!25827 (xs!18878 IArray!31157) (csize!31327 Int)) (Empty!15548) )
))
(declare-fun ys!41 () Conc!15548)

(declare-fun list!18961 (Conc!15548) List!58542)

(assert (=> b!5055143 (= lt!2087338 (list!18961 ys!41))))

(declare-fun xs!286 () Conc!15548)

(assert (=> b!5055143 (= lt!2087339 (list!18961 xs!286))))

(declare-fun b!5055144 () Bool)

(declare-fun e!3155727 () Bool)

(declare-fun e!3155732 () Bool)

(declare-fun inv!77467 (IArray!31157) Bool)

(assert (=> b!5055144 (= e!3155727 (and (inv!77467 (xs!18878 xs!286)) e!3155732))))

(declare-fun b!5055145 () Bool)

(declare-fun e!3155726 () Bool)

(declare-fun e!3155728 () Bool)

(assert (=> b!5055145 (= e!3155726 (and (inv!77467 (xs!18878 ys!41)) e!3155728))))

(declare-fun b!5055146 () Bool)

(declare-fun res!2152565 () Bool)

(declare-fun e!3155729 () Bool)

(assert (=> b!5055146 (=> (not res!2152565) (not e!3155729))))

(assert (=> b!5055146 (= res!2152565 (= xs!286 Empty!15548))))

(declare-fun tp!1413046 () Bool)

(declare-fun tp!1413049 () Bool)

(declare-fun b!5055147 () Bool)

(declare-fun inv!77468 (Conc!15548) Bool)

(assert (=> b!5055147 (= e!3155726 (and (inv!77468 (left!42792 ys!41)) tp!1413046 (inv!77468 (right!43122 ys!41)) tp!1413049))))

(declare-fun tp!1413047 () Bool)

(declare-fun b!5055148 () Bool)

(declare-fun tp!1413045 () Bool)

(assert (=> b!5055148 (= e!3155727 (and (inv!77468 (left!42792 xs!286)) tp!1413045 (inv!77468 (right!43122 xs!286)) tp!1413047))))

(declare-fun b!5055149 () Bool)

(declare-fun res!2152569 () Bool)

(assert (=> b!5055149 (=> (not res!2152569) (not e!3155729))))

(declare-fun isBalanced!4410 (Conc!15548) Bool)

(assert (=> b!5055149 (= res!2152569 (isBalanced!4410 ys!41))))

(declare-fun res!2152566 () Bool)

(assert (=> start!534590 (=> (not res!2152566) (not e!3155729))))

(assert (=> start!534590 (= res!2152566 (isBalanced!4410 xs!286))))

(assert (=> start!534590 e!3155729))

(assert (=> start!534590 (and (inv!77468 xs!286) e!3155727)))

(assert (=> start!534590 (and (inv!77468 ys!41) e!3155726)))

(declare-fun b!5055150 () Bool)

(declare-fun tp!1413048 () Bool)

(assert (=> b!5055150 (= e!3155732 tp!1413048)))

(declare-fun b!5055151 () Bool)

(declare-fun e!3155730 () Bool)

(assert (=> b!5055151 (= e!3155729 e!3155730)))

(declare-fun res!2152568 () Bool)

(assert (=> b!5055151 (=> res!2152568 e!3155730)))

(declare-fun appendAssocInst!900 (Conc!15548 Conc!15548) Bool)

(assert (=> b!5055151 (= res!2152568 (not (appendAssocInst!900 xs!286 ys!41)))))

(declare-fun b!5055152 () Bool)

(assert (=> b!5055152 (= e!3155730 e!3155731)))

(declare-fun res!2152567 () Bool)

(assert (=> b!5055152 (=> res!2152567 e!3155731)))

(declare-fun lt!2087337 () Int)

(declare-fun lt!2087336 () Int)

(assert (=> b!5055152 (= res!2152567 (or (> lt!2087337 (+ 1 lt!2087336)) (< lt!2087337 lt!2087336)))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2125 (Conc!15548) Int)

(assert (=> b!5055152 (= lt!2087336 (max!0 (height!2125 xs!286) lt!2087337))))

(assert (=> b!5055152 (= lt!2087337 (height!2125 ys!41))))

(declare-fun b!5055153 () Bool)

(declare-fun tp!1413044 () Bool)

(assert (=> b!5055153 (= e!3155728 tp!1413044)))

(assert (= (and start!534590 res!2152566) b!5055149))

(assert (= (and b!5055149 res!2152569) b!5055146))

(assert (= (and b!5055146 res!2152565) b!5055151))

(assert (= (and b!5055151 (not res!2152568)) b!5055152))

(assert (= (and b!5055152 (not res!2152567)) b!5055143))

(get-info :version)

(assert (= (and start!534590 ((_ is Node!15548) xs!286)) b!5055148))

(assert (= b!5055144 b!5055150))

(assert (= (and start!534590 ((_ is Leaf!25827) xs!286)) b!5055144))

(assert (= (and start!534590 ((_ is Node!15548) ys!41)) b!5055147))

(assert (= b!5055145 b!5055153))

(assert (= (and start!534590 ((_ is Leaf!25827) ys!41)) b!5055145))

(declare-fun m!6089628 () Bool)

(assert (=> b!5055144 m!6089628))

(declare-fun m!6089630 () Bool)

(assert (=> b!5055145 m!6089630))

(declare-fun m!6089632 () Bool)

(assert (=> b!5055148 m!6089632))

(declare-fun m!6089634 () Bool)

(assert (=> b!5055148 m!6089634))

(declare-fun m!6089636 () Bool)

(assert (=> b!5055149 m!6089636))

(declare-fun m!6089638 () Bool)

(assert (=> b!5055147 m!6089638))

(declare-fun m!6089640 () Bool)

(assert (=> b!5055147 m!6089640))

(declare-fun m!6089642 () Bool)

(assert (=> b!5055152 m!6089642))

(assert (=> b!5055152 m!6089642))

(declare-fun m!6089644 () Bool)

(assert (=> b!5055152 m!6089644))

(declare-fun m!6089646 () Bool)

(assert (=> b!5055152 m!6089646))

(declare-fun m!6089648 () Bool)

(assert (=> start!534590 m!6089648))

(declare-fun m!6089650 () Bool)

(assert (=> start!534590 m!6089650))

(declare-fun m!6089652 () Bool)

(assert (=> start!534590 m!6089652))

(declare-fun m!6089654 () Bool)

(assert (=> b!5055151 m!6089654))

(declare-fun m!6089656 () Bool)

(assert (=> b!5055143 m!6089656))

(declare-fun m!6089658 () Bool)

(assert (=> b!5055143 m!6089658))

(declare-fun m!6089660 () Bool)

(assert (=> b!5055143 m!6089660))

(check-sat (not b!5055152) (not b!5055145) (not b!5055150) (not b!5055149) (not b!5055143) (not b!5055144) (not b!5055147) (not start!534590) (not b!5055148) (not b!5055153) (not b!5055151))
(check-sat)
(get-model)

(declare-fun d!1626743 () Bool)

(assert (=> d!1626743 (= (max!0 (height!2125 xs!286) lt!2087337) (ite (< (height!2125 xs!286) lt!2087337) lt!2087337 (height!2125 xs!286)))))

(assert (=> b!5055152 d!1626743))

(declare-fun d!1626745 () Bool)

(assert (=> d!1626745 (= (height!2125 xs!286) (ite ((_ is Empty!15548) xs!286) 0 (ite ((_ is Leaf!25827) xs!286) 1 (cheight!15759 xs!286))))))

(assert (=> b!5055152 d!1626745))

(declare-fun d!1626747 () Bool)

(assert (=> d!1626747 (= (height!2125 ys!41) (ite ((_ is Empty!15548) ys!41) 0 (ite ((_ is Leaf!25827) ys!41) 1 (cheight!15759 ys!41))))))

(assert (=> b!5055152 d!1626747))

(declare-fun d!1626749 () Bool)

(declare-fun c!867276 () Bool)

(assert (=> d!1626749 (= c!867276 ((_ is Node!15548) (left!42792 ys!41)))))

(declare-fun e!3155737 () Bool)

(assert (=> d!1626749 (= (inv!77468 (left!42792 ys!41)) e!3155737)))

(declare-fun b!5055160 () Bool)

(declare-fun inv!77469 (Conc!15548) Bool)

(assert (=> b!5055160 (= e!3155737 (inv!77469 (left!42792 ys!41)))))

(declare-fun b!5055161 () Bool)

(declare-fun e!3155738 () Bool)

(assert (=> b!5055161 (= e!3155737 e!3155738)))

(declare-fun res!2152572 () Bool)

(assert (=> b!5055161 (= res!2152572 (not ((_ is Leaf!25827) (left!42792 ys!41))))))

(assert (=> b!5055161 (=> res!2152572 e!3155738)))

(declare-fun b!5055162 () Bool)

(declare-fun inv!77470 (Conc!15548) Bool)

(assert (=> b!5055162 (= e!3155738 (inv!77470 (left!42792 ys!41)))))

(assert (= (and d!1626749 c!867276) b!5055160))

(assert (= (and d!1626749 (not c!867276)) b!5055161))

(assert (= (and b!5055161 (not res!2152572)) b!5055162))

(declare-fun m!6089662 () Bool)

(assert (=> b!5055160 m!6089662))

(declare-fun m!6089664 () Bool)

(assert (=> b!5055162 m!6089664))

(assert (=> b!5055147 d!1626749))

(declare-fun d!1626753 () Bool)

(declare-fun c!867277 () Bool)

(assert (=> d!1626753 (= c!867277 ((_ is Node!15548) (right!43122 ys!41)))))

(declare-fun e!3155739 () Bool)

(assert (=> d!1626753 (= (inv!77468 (right!43122 ys!41)) e!3155739)))

(declare-fun b!5055163 () Bool)

(assert (=> b!5055163 (= e!3155739 (inv!77469 (right!43122 ys!41)))))

(declare-fun b!5055164 () Bool)

(declare-fun e!3155740 () Bool)

(assert (=> b!5055164 (= e!3155739 e!3155740)))

(declare-fun res!2152573 () Bool)

(assert (=> b!5055164 (= res!2152573 (not ((_ is Leaf!25827) (right!43122 ys!41))))))

(assert (=> b!5055164 (=> res!2152573 e!3155740)))

(declare-fun b!5055165 () Bool)

(assert (=> b!5055165 (= e!3155740 (inv!77470 (right!43122 ys!41)))))

(assert (= (and d!1626753 c!867277) b!5055163))

(assert (= (and d!1626753 (not c!867277)) b!5055164))

(assert (= (and b!5055164 (not res!2152573)) b!5055165))

(declare-fun m!6089666 () Bool)

(assert (=> b!5055163 m!6089666))

(declare-fun m!6089668 () Bool)

(assert (=> b!5055165 m!6089668))

(assert (=> b!5055147 d!1626753))

(declare-fun d!1626755 () Bool)

(declare-fun size!39044 (List!58542) Int)

(assert (=> d!1626755 (= (inv!77467 (xs!18878 ys!41)) (<= (size!39044 (innerList!15636 (xs!18878 ys!41))) 2147483647))))

(declare-fun bs!1189360 () Bool)

(assert (= bs!1189360 d!1626755))

(declare-fun m!6089670 () Bool)

(assert (=> bs!1189360 m!6089670))

(assert (=> b!5055145 d!1626755))

(declare-fun b!5055211 () Bool)

(declare-fun e!3155790 () Bool)

(declare-fun appendAssoc!292 (List!58542 List!58542 List!58542) Bool)

(assert (=> b!5055211 (= e!3155790 (appendAssoc!292 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))) (list!18961 (right!43122 (left!42792 ys!41))) (list!18961 (right!43122 ys!41))))))

(declare-fun d!1626757 () Bool)

(declare-fun e!3155793 () Bool)

(assert (=> d!1626757 e!3155793))

(declare-fun res!2152625 () Bool)

(assert (=> d!1626757 (=> (not res!2152625) (not e!3155793))))

(declare-fun e!3155788 () Bool)

(assert (=> d!1626757 (= res!2152625 e!3155788)))

(declare-fun res!2152624 () Bool)

(assert (=> d!1626757 (=> res!2152624 e!3155788)))

(assert (=> d!1626757 (= res!2152624 (not ((_ is Node!15548) xs!286)))))

(assert (=> d!1626757 (= (appendAssocInst!900 xs!286 ys!41) true)))

(declare-fun b!5055212 () Bool)

(declare-fun e!3155787 () Bool)

(declare-fun e!3155794 () Bool)

(assert (=> b!5055212 (= e!3155787 e!3155794)))

(declare-fun res!2152619 () Bool)

(assert (=> b!5055212 (=> (not res!2152619) (not e!3155794))))

(assert (=> b!5055212 (= res!2152619 (appendAssoc!292 (list!18961 xs!286) (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))))))

(declare-fun b!5055213 () Bool)

(declare-fun e!3155786 () Bool)

(assert (=> b!5055213 (= e!3155786 (appendAssoc!292 (list!18961 (left!42792 xs!286)) (list!18961 (left!42792 (right!43122 xs!286))) (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41))))))

(declare-fun b!5055214 () Bool)

(declare-fun e!3155789 () Bool)

(assert (=> b!5055214 (= e!3155789 e!3155786)))

(declare-fun res!2152627 () Bool)

(assert (=> b!5055214 (=> (not res!2152627) (not e!3155786))))

(assert (=> b!5055214 (= res!2152627 (appendAssoc!292 (list!18961 (left!42792 (right!43122 xs!286))) (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41)))))

(declare-fun b!5055215 () Bool)

(declare-fun e!3155791 () Bool)

(assert (=> b!5055215 (= e!3155788 e!3155791)))

(declare-fun res!2152622 () Bool)

(assert (=> b!5055215 (=> (not res!2152622) (not e!3155791))))

(assert (=> b!5055215 (= res!2152622 (appendAssoc!292 (list!18961 (left!42792 xs!286)) (list!18961 (right!43122 xs!286)) (list!18961 ys!41)))))

(declare-fun b!5055216 () Bool)

(assert (=> b!5055216 (= e!3155791 e!3155789)))

(declare-fun res!2152623 () Bool)

(assert (=> b!5055216 (=> res!2152623 e!3155789)))

(assert (=> b!5055216 (= res!2152623 (not ((_ is Node!15548) (right!43122 xs!286))))))

(declare-fun b!5055217 () Bool)

(declare-fun e!3155792 () Bool)

(assert (=> b!5055217 (= e!3155792 e!3155790)))

(declare-fun res!2152621 () Bool)

(assert (=> b!5055217 (=> (not res!2152621) (not e!3155790))))

(assert (=> b!5055217 (= res!2152621 (appendAssoc!292 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41))) (list!18961 (right!43122 (left!42792 ys!41)))))))

(declare-fun b!5055218 () Bool)

(assert (=> b!5055218 (= e!3155794 e!3155792)))

(declare-fun res!2152626 () Bool)

(assert (=> b!5055218 (=> res!2152626 e!3155792)))

(assert (=> b!5055218 (= res!2152626 (not ((_ is Node!15548) (left!42792 ys!41))))))

(declare-fun b!5055219 () Bool)

(assert (=> b!5055219 (= e!3155793 e!3155787)))

(declare-fun res!2152620 () Bool)

(assert (=> b!5055219 (=> res!2152620 e!3155787)))

(assert (=> b!5055219 (= res!2152620 (not ((_ is Node!15548) ys!41)))))

(assert (= (and d!1626757 (not res!2152624)) b!5055215))

(assert (= (and b!5055215 res!2152622) b!5055216))

(assert (= (and b!5055216 (not res!2152623)) b!5055214))

(assert (= (and b!5055214 res!2152627) b!5055213))

(assert (= (and d!1626757 res!2152625) b!5055219))

(assert (= (and b!5055219 (not res!2152620)) b!5055212))

(assert (= (and b!5055212 res!2152619) b!5055218))

(assert (= (and b!5055218 (not res!2152626)) b!5055217))

(assert (= (and b!5055217 res!2152621) b!5055211))

(declare-fun m!6089704 () Bool)

(assert (=> b!5055211 m!6089704))

(assert (=> b!5055211 m!6089660))

(declare-fun m!6089706 () Bool)

(assert (=> b!5055211 m!6089706))

(declare-fun m!6089708 () Bool)

(assert (=> b!5055211 m!6089708))

(assert (=> b!5055211 m!6089708))

(declare-fun m!6089710 () Bool)

(assert (=> b!5055211 m!6089710))

(assert (=> b!5055211 m!6089704))

(declare-fun m!6089712 () Bool)

(assert (=> b!5055211 m!6089712))

(assert (=> b!5055211 m!6089706))

(assert (=> b!5055211 m!6089710))

(assert (=> b!5055211 m!6089660))

(declare-fun m!6089714 () Bool)

(assert (=> b!5055213 m!6089714))

(assert (=> b!5055213 m!6089658))

(declare-fun m!6089716 () Bool)

(assert (=> b!5055213 m!6089716))

(declare-fun m!6089718 () Bool)

(assert (=> b!5055213 m!6089718))

(declare-fun m!6089720 () Bool)

(assert (=> b!5055213 m!6089720))

(assert (=> b!5055213 m!6089716))

(declare-fun m!6089722 () Bool)

(assert (=> b!5055213 m!6089722))

(assert (=> b!5055213 m!6089714))

(assert (=> b!5055213 m!6089720))

(assert (=> b!5055213 m!6089658))

(assert (=> b!5055213 m!6089718))

(assert (=> b!5055217 m!6089660))

(assert (=> b!5055217 m!6089706))

(assert (=> b!5055217 m!6089710))

(assert (=> b!5055217 m!6089660))

(assert (=> b!5055217 m!6089706))

(assert (=> b!5055217 m!6089710))

(declare-fun m!6089724 () Bool)

(assert (=> b!5055217 m!6089724))

(assert (=> b!5055214 m!6089720))

(assert (=> b!5055214 m!6089714))

(assert (=> b!5055214 m!6089658))

(assert (=> b!5055214 m!6089720))

(assert (=> b!5055214 m!6089714))

(assert (=> b!5055214 m!6089658))

(declare-fun m!6089726 () Bool)

(assert (=> b!5055214 m!6089726))

(assert (=> b!5055212 m!6089660))

(declare-fun m!6089728 () Bool)

(assert (=> b!5055212 m!6089728))

(assert (=> b!5055212 m!6089704))

(assert (=> b!5055212 m!6089660))

(assert (=> b!5055212 m!6089728))

(assert (=> b!5055212 m!6089704))

(declare-fun m!6089730 () Bool)

(assert (=> b!5055212 m!6089730))

(assert (=> b!5055215 m!6089718))

(declare-fun m!6089732 () Bool)

(assert (=> b!5055215 m!6089732))

(assert (=> b!5055215 m!6089658))

(assert (=> b!5055215 m!6089718))

(assert (=> b!5055215 m!6089732))

(assert (=> b!5055215 m!6089658))

(declare-fun m!6089734 () Bool)

(assert (=> b!5055215 m!6089734))

(assert (=> b!5055151 d!1626757))

(declare-fun d!1626761 () Bool)

(assert (=> d!1626761 (= (inv!77467 (xs!18878 xs!286)) (<= (size!39044 (innerList!15636 (xs!18878 xs!286))) 2147483647))))

(declare-fun bs!1189361 () Bool)

(assert (= bs!1189361 d!1626761))

(declare-fun m!6089740 () Bool)

(assert (=> bs!1189361 m!6089740))

(assert (=> b!5055144 d!1626761))

(declare-fun b!5055256 () Bool)

(declare-fun e!3155812 () Bool)

(declare-fun isEmpty!31600 (Conc!15548) Bool)

(assert (=> b!5055256 (= e!3155812 (not (isEmpty!31600 (right!43122 ys!41))))))

(declare-fun b!5055257 () Bool)

(declare-fun res!2152661 () Bool)

(assert (=> b!5055257 (=> (not res!2152661) (not e!3155812))))

(assert (=> b!5055257 (= res!2152661 (isBalanced!4410 (right!43122 ys!41)))))

(declare-fun b!5055258 () Bool)

(declare-fun res!2152660 () Bool)

(assert (=> b!5055258 (=> (not res!2152660) (not e!3155812))))

(assert (=> b!5055258 (= res!2152660 (not (isEmpty!31600 (left!42792 ys!41))))))

(declare-fun d!1626765 () Bool)

(declare-fun res!2152656 () Bool)

(declare-fun e!3155811 () Bool)

(assert (=> d!1626765 (=> res!2152656 e!3155811)))

(assert (=> d!1626765 (= res!2152656 (not ((_ is Node!15548) ys!41)))))

(assert (=> d!1626765 (= (isBalanced!4410 ys!41) e!3155811)))

(declare-fun b!5055259 () Bool)

(assert (=> b!5055259 (= e!3155811 e!3155812)))

(declare-fun res!2152657 () Bool)

(assert (=> b!5055259 (=> (not res!2152657) (not e!3155812))))

(assert (=> b!5055259 (= res!2152657 (<= (- 1) (- (height!2125 (left!42792 ys!41)) (height!2125 (right!43122 ys!41)))))))

(declare-fun b!5055260 () Bool)

(declare-fun res!2152658 () Bool)

(assert (=> b!5055260 (=> (not res!2152658) (not e!3155812))))

(assert (=> b!5055260 (= res!2152658 (<= (- (height!2125 (left!42792 ys!41)) (height!2125 (right!43122 ys!41))) 1))))

(declare-fun b!5055261 () Bool)

(declare-fun res!2152659 () Bool)

(assert (=> b!5055261 (=> (not res!2152659) (not e!3155812))))

(assert (=> b!5055261 (= res!2152659 (isBalanced!4410 (left!42792 ys!41)))))

(assert (= (and d!1626765 (not res!2152656)) b!5055259))

(assert (= (and b!5055259 res!2152657) b!5055260))

(assert (= (and b!5055260 res!2152658) b!5055261))

(assert (= (and b!5055261 res!2152659) b!5055257))

(assert (= (and b!5055257 res!2152661) b!5055258))

(assert (= (and b!5055258 res!2152660) b!5055256))

(declare-fun m!6089746 () Bool)

(assert (=> b!5055257 m!6089746))

(declare-fun m!6089748 () Bool)

(assert (=> b!5055261 m!6089748))

(declare-fun m!6089750 () Bool)

(assert (=> b!5055259 m!6089750))

(declare-fun m!6089752 () Bool)

(assert (=> b!5055259 m!6089752))

(assert (=> b!5055260 m!6089750))

(assert (=> b!5055260 m!6089752))

(declare-fun m!6089758 () Bool)

(assert (=> b!5055256 m!6089758))

(declare-fun m!6089762 () Bool)

(assert (=> b!5055258 m!6089762))

(assert (=> b!5055149 d!1626765))

(declare-fun b!5055268 () Bool)

(declare-fun e!3155816 () Bool)

(assert (=> b!5055268 (= e!3155816 (not (isEmpty!31600 (right!43122 xs!286))))))

(declare-fun b!5055269 () Bool)

(declare-fun res!2152673 () Bool)

(assert (=> b!5055269 (=> (not res!2152673) (not e!3155816))))

(assert (=> b!5055269 (= res!2152673 (isBalanced!4410 (right!43122 xs!286)))))

(declare-fun b!5055270 () Bool)

(declare-fun res!2152672 () Bool)

(assert (=> b!5055270 (=> (not res!2152672) (not e!3155816))))

(assert (=> b!5055270 (= res!2152672 (not (isEmpty!31600 (left!42792 xs!286))))))

(declare-fun d!1626769 () Bool)

(declare-fun res!2152668 () Bool)

(declare-fun e!3155815 () Bool)

(assert (=> d!1626769 (=> res!2152668 e!3155815)))

(assert (=> d!1626769 (= res!2152668 (not ((_ is Node!15548) xs!286)))))

(assert (=> d!1626769 (= (isBalanced!4410 xs!286) e!3155815)))

(declare-fun b!5055271 () Bool)

(assert (=> b!5055271 (= e!3155815 e!3155816)))

(declare-fun res!2152669 () Bool)

(assert (=> b!5055271 (=> (not res!2152669) (not e!3155816))))

(assert (=> b!5055271 (= res!2152669 (<= (- 1) (- (height!2125 (left!42792 xs!286)) (height!2125 (right!43122 xs!286)))))))

(declare-fun b!5055272 () Bool)

(declare-fun res!2152670 () Bool)

(assert (=> b!5055272 (=> (not res!2152670) (not e!3155816))))

(assert (=> b!5055272 (= res!2152670 (<= (- (height!2125 (left!42792 xs!286)) (height!2125 (right!43122 xs!286))) 1))))

(declare-fun b!5055273 () Bool)

(declare-fun res!2152671 () Bool)

(assert (=> b!5055273 (=> (not res!2152671) (not e!3155816))))

(assert (=> b!5055273 (= res!2152671 (isBalanced!4410 (left!42792 xs!286)))))

(assert (= (and d!1626769 (not res!2152668)) b!5055271))

(assert (= (and b!5055271 res!2152669) b!5055272))

(assert (= (and b!5055272 res!2152670) b!5055273))

(assert (= (and b!5055273 res!2152671) b!5055269))

(assert (= (and b!5055269 res!2152673) b!5055270))

(assert (= (and b!5055270 res!2152672) b!5055268))

(declare-fun m!6089774 () Bool)

(assert (=> b!5055269 m!6089774))

(declare-fun m!6089776 () Bool)

(assert (=> b!5055273 m!6089776))

(declare-fun m!6089778 () Bool)

(assert (=> b!5055271 m!6089778))

(declare-fun m!6089780 () Bool)

(assert (=> b!5055271 m!6089780))

(assert (=> b!5055272 m!6089778))

(assert (=> b!5055272 m!6089780))

(declare-fun m!6089786 () Bool)

(assert (=> b!5055268 m!6089786))

(declare-fun m!6089788 () Bool)

(assert (=> b!5055270 m!6089788))

(assert (=> start!534590 d!1626769))

(declare-fun d!1626777 () Bool)

(declare-fun c!867284 () Bool)

(assert (=> d!1626777 (= c!867284 ((_ is Node!15548) xs!286))))

(declare-fun e!3155821 () Bool)

(assert (=> d!1626777 (= (inv!77468 xs!286) e!3155821)))

(declare-fun b!5055280 () Bool)

(assert (=> b!5055280 (= e!3155821 (inv!77469 xs!286))))

(declare-fun b!5055281 () Bool)

(declare-fun e!3155822 () Bool)

(assert (=> b!5055281 (= e!3155821 e!3155822)))

(declare-fun res!2152676 () Bool)

(assert (=> b!5055281 (= res!2152676 (not ((_ is Leaf!25827) xs!286)))))

(assert (=> b!5055281 (=> res!2152676 e!3155822)))

(declare-fun b!5055282 () Bool)

(assert (=> b!5055282 (= e!3155822 (inv!77470 xs!286))))

(assert (= (and d!1626777 c!867284) b!5055280))

(assert (= (and d!1626777 (not c!867284)) b!5055281))

(assert (= (and b!5055281 (not res!2152676)) b!5055282))

(declare-fun m!6089790 () Bool)

(assert (=> b!5055280 m!6089790))

(declare-fun m!6089792 () Bool)

(assert (=> b!5055282 m!6089792))

(assert (=> start!534590 d!1626777))

(declare-fun d!1626779 () Bool)

(declare-fun c!867285 () Bool)

(assert (=> d!1626779 (= c!867285 ((_ is Node!15548) ys!41))))

(declare-fun e!3155823 () Bool)

(assert (=> d!1626779 (= (inv!77468 ys!41) e!3155823)))

(declare-fun b!5055283 () Bool)

(assert (=> b!5055283 (= e!3155823 (inv!77469 ys!41))))

(declare-fun b!5055284 () Bool)

(declare-fun e!3155824 () Bool)

(assert (=> b!5055284 (= e!3155823 e!3155824)))

(declare-fun res!2152677 () Bool)

(assert (=> b!5055284 (= res!2152677 (not ((_ is Leaf!25827) ys!41)))))

(assert (=> b!5055284 (=> res!2152677 e!3155824)))

(declare-fun b!5055285 () Bool)

(assert (=> b!5055285 (= e!3155824 (inv!77470 ys!41))))

(assert (= (and d!1626779 c!867285) b!5055283))

(assert (= (and d!1626779 (not c!867285)) b!5055284))

(assert (= (and b!5055284 (not res!2152677)) b!5055285))

(declare-fun m!6089794 () Bool)

(assert (=> b!5055283 m!6089794))

(declare-fun m!6089796 () Bool)

(assert (=> b!5055285 m!6089796))

(assert (=> start!534590 d!1626779))

(declare-fun d!1626781 () Bool)

(declare-fun c!867286 () Bool)

(assert (=> d!1626781 (= c!867286 ((_ is Node!15548) (left!42792 xs!286)))))

(declare-fun e!3155825 () Bool)

(assert (=> d!1626781 (= (inv!77468 (left!42792 xs!286)) e!3155825)))

(declare-fun b!5055286 () Bool)

(assert (=> b!5055286 (= e!3155825 (inv!77469 (left!42792 xs!286)))))

(declare-fun b!5055287 () Bool)

(declare-fun e!3155826 () Bool)

(assert (=> b!5055287 (= e!3155825 e!3155826)))

(declare-fun res!2152678 () Bool)

(assert (=> b!5055287 (= res!2152678 (not ((_ is Leaf!25827) (left!42792 xs!286))))))

(assert (=> b!5055287 (=> res!2152678 e!3155826)))

(declare-fun b!5055288 () Bool)

(assert (=> b!5055288 (= e!3155826 (inv!77470 (left!42792 xs!286)))))

(assert (= (and d!1626781 c!867286) b!5055286))

(assert (= (and d!1626781 (not c!867286)) b!5055287))

(assert (= (and b!5055287 (not res!2152678)) b!5055288))

(declare-fun m!6089798 () Bool)

(assert (=> b!5055286 m!6089798))

(declare-fun m!6089800 () Bool)

(assert (=> b!5055288 m!6089800))

(assert (=> b!5055148 d!1626781))

(declare-fun d!1626783 () Bool)

(declare-fun c!867287 () Bool)

(assert (=> d!1626783 (= c!867287 ((_ is Node!15548) (right!43122 xs!286)))))

(declare-fun e!3155827 () Bool)

(assert (=> d!1626783 (= (inv!77468 (right!43122 xs!286)) e!3155827)))

(declare-fun b!5055289 () Bool)

(assert (=> b!5055289 (= e!3155827 (inv!77469 (right!43122 xs!286)))))

(declare-fun b!5055290 () Bool)

(declare-fun e!3155828 () Bool)

(assert (=> b!5055290 (= e!3155827 e!3155828)))

(declare-fun res!2152679 () Bool)

(assert (=> b!5055290 (= res!2152679 (not ((_ is Leaf!25827) (right!43122 xs!286))))))

(assert (=> b!5055290 (=> res!2152679 e!3155828)))

(declare-fun b!5055291 () Bool)

(assert (=> b!5055291 (= e!3155828 (inv!77470 (right!43122 xs!286)))))

(assert (= (and d!1626783 c!867287) b!5055289))

(assert (= (and d!1626783 (not c!867287)) b!5055290))

(assert (= (and b!5055290 (not res!2152679)) b!5055291))

(declare-fun m!6089804 () Bool)

(assert (=> b!5055289 m!6089804))

(declare-fun m!6089806 () Bool)

(assert (=> b!5055291 m!6089806))

(assert (=> b!5055148 d!1626783))

(declare-fun b!5055313 () Bool)

(declare-fun e!3155839 () List!58542)

(assert (=> b!5055313 (= e!3155839 (Cons!58418 (h!64866 lt!2087339) (++!12769 (t!371207 lt!2087339) lt!2087338)))))

(declare-fun d!1626787 () Bool)

(declare-fun e!3155840 () Bool)

(assert (=> d!1626787 e!3155840))

(declare-fun res!2152692 () Bool)

(assert (=> d!1626787 (=> (not res!2152692) (not e!3155840))))

(declare-fun lt!2087342 () List!58542)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10408 (List!58542) (InoxSet T!105006))

(assert (=> d!1626787 (= res!2152692 (= (content!10408 lt!2087342) ((_ map or) (content!10408 lt!2087339) (content!10408 lt!2087338))))))

(assert (=> d!1626787 (= lt!2087342 e!3155839)))

(declare-fun c!867292 () Bool)

(assert (=> d!1626787 (= c!867292 ((_ is Nil!58418) lt!2087339))))

(assert (=> d!1626787 (= (++!12769 lt!2087339 lt!2087338) lt!2087342)))

(declare-fun b!5055315 () Bool)

(assert (=> b!5055315 (= e!3155840 (or (not (= lt!2087338 Nil!58418)) (= lt!2087342 lt!2087339)))))

(declare-fun b!5055312 () Bool)

(assert (=> b!5055312 (= e!3155839 lt!2087338)))

(declare-fun b!5055314 () Bool)

(declare-fun res!2152693 () Bool)

(assert (=> b!5055314 (=> (not res!2152693) (not e!3155840))))

(assert (=> b!5055314 (= res!2152693 (= (size!39044 lt!2087342) (+ (size!39044 lt!2087339) (size!39044 lt!2087338))))))

(assert (= (and d!1626787 c!867292) b!5055312))

(assert (= (and d!1626787 (not c!867292)) b!5055313))

(assert (= (and d!1626787 res!2152692) b!5055314))

(assert (= (and b!5055314 res!2152693) b!5055315))

(declare-fun m!6089830 () Bool)

(assert (=> b!5055313 m!6089830))

(declare-fun m!6089832 () Bool)

(assert (=> d!1626787 m!6089832))

(declare-fun m!6089834 () Bool)

(assert (=> d!1626787 m!6089834))

(declare-fun m!6089836 () Bool)

(assert (=> d!1626787 m!6089836))

(declare-fun m!6089838 () Bool)

(assert (=> b!5055314 m!6089838))

(declare-fun m!6089840 () Bool)

(assert (=> b!5055314 m!6089840))

(declare-fun m!6089842 () Bool)

(assert (=> b!5055314 m!6089842))

(assert (=> b!5055143 d!1626787))

(declare-fun d!1626803 () Bool)

(declare-fun c!867300 () Bool)

(assert (=> d!1626803 (= c!867300 ((_ is Empty!15548) ys!41))))

(declare-fun e!3155851 () List!58542)

(assert (=> d!1626803 (= (list!18961 ys!41) e!3155851)))

(declare-fun b!5055337 () Bool)

(declare-fun e!3155852 () List!58542)

(assert (=> b!5055337 (= e!3155851 e!3155852)))

(declare-fun c!867301 () Bool)

(assert (=> b!5055337 (= c!867301 ((_ is Leaf!25827) ys!41))))

(declare-fun b!5055336 () Bool)

(assert (=> b!5055336 (= e!3155851 Nil!58418)))

(declare-fun b!5055338 () Bool)

(declare-fun list!18963 (IArray!31157) List!58542)

(assert (=> b!5055338 (= e!3155852 (list!18963 (xs!18878 ys!41)))))

(declare-fun b!5055339 () Bool)

(assert (=> b!5055339 (= e!3155852 (++!12769 (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))))))

(assert (= (and d!1626803 c!867300) b!5055336))

(assert (= (and d!1626803 (not c!867300)) b!5055337))

(assert (= (and b!5055337 c!867301) b!5055338))

(assert (= (and b!5055337 (not c!867301)) b!5055339))

(declare-fun m!6089858 () Bool)

(assert (=> b!5055338 m!6089858))

(assert (=> b!5055339 m!6089728))

(assert (=> b!5055339 m!6089704))

(assert (=> b!5055339 m!6089728))

(assert (=> b!5055339 m!6089704))

(declare-fun m!6089860 () Bool)

(assert (=> b!5055339 m!6089860))

(assert (=> b!5055143 d!1626803))

(declare-fun d!1626807 () Bool)

(declare-fun c!867302 () Bool)

(assert (=> d!1626807 (= c!867302 ((_ is Empty!15548) xs!286))))

(declare-fun e!3155853 () List!58542)

(assert (=> d!1626807 (= (list!18961 xs!286) e!3155853)))

(declare-fun b!5055341 () Bool)

(declare-fun e!3155854 () List!58542)

(assert (=> b!5055341 (= e!3155853 e!3155854)))

(declare-fun c!867303 () Bool)

(assert (=> b!5055341 (= c!867303 ((_ is Leaf!25827) xs!286))))

(declare-fun b!5055340 () Bool)

(assert (=> b!5055340 (= e!3155853 Nil!58418)))

(declare-fun b!5055342 () Bool)

(assert (=> b!5055342 (= e!3155854 (list!18963 (xs!18878 xs!286)))))

(declare-fun b!5055343 () Bool)

(assert (=> b!5055343 (= e!3155854 (++!12769 (list!18961 (left!42792 xs!286)) (list!18961 (right!43122 xs!286))))))

(assert (= (and d!1626807 c!867302) b!5055340))

(assert (= (and d!1626807 (not c!867302)) b!5055341))

(assert (= (and b!5055341 c!867303) b!5055342))

(assert (= (and b!5055341 (not c!867303)) b!5055343))

(declare-fun m!6089862 () Bool)

(assert (=> b!5055342 m!6089862))

(assert (=> b!5055343 m!6089718))

(assert (=> b!5055343 m!6089732))

(assert (=> b!5055343 m!6089718))

(assert (=> b!5055343 m!6089732))

(declare-fun m!6089864 () Bool)

(assert (=> b!5055343 m!6089864))

(assert (=> b!5055143 d!1626807))

(declare-fun e!3155866 () Bool)

(declare-fun tp!1413058 () Bool)

(declare-fun b!5055364 () Bool)

(declare-fun tp!1413057 () Bool)

(assert (=> b!5055364 (= e!3155866 (and (inv!77468 (left!42792 (left!42792 ys!41))) tp!1413058 (inv!77468 (right!43122 (left!42792 ys!41))) tp!1413057))))

(declare-fun b!5055366 () Bool)

(declare-fun e!3155865 () Bool)

(declare-fun tp!1413056 () Bool)

(assert (=> b!5055366 (= e!3155865 tp!1413056)))

(declare-fun b!5055365 () Bool)

(assert (=> b!5055365 (= e!3155866 (and (inv!77467 (xs!18878 (left!42792 ys!41))) e!3155865))))

(assert (=> b!5055147 (= tp!1413046 (and (inv!77468 (left!42792 ys!41)) e!3155866))))

(assert (= (and b!5055147 ((_ is Node!15548) (left!42792 ys!41))) b!5055364))

(assert (= b!5055365 b!5055366))

(assert (= (and b!5055147 ((_ is Leaf!25827) (left!42792 ys!41))) b!5055365))

(declare-fun m!6089870 () Bool)

(assert (=> b!5055364 m!6089870))

(declare-fun m!6089872 () Bool)

(assert (=> b!5055364 m!6089872))

(declare-fun m!6089874 () Bool)

(assert (=> b!5055365 m!6089874))

(assert (=> b!5055147 m!6089638))

(declare-fun tp!1413061 () Bool)

(declare-fun b!5055371 () Bool)

(declare-fun tp!1413060 () Bool)

(declare-fun e!3155870 () Bool)

(assert (=> b!5055371 (= e!3155870 (and (inv!77468 (left!42792 (right!43122 ys!41))) tp!1413061 (inv!77468 (right!43122 (right!43122 ys!41))) tp!1413060))))

(declare-fun b!5055373 () Bool)

(declare-fun e!3155869 () Bool)

(declare-fun tp!1413059 () Bool)

(assert (=> b!5055373 (= e!3155869 tp!1413059)))

(declare-fun b!5055372 () Bool)

(assert (=> b!5055372 (= e!3155870 (and (inv!77467 (xs!18878 (right!43122 ys!41))) e!3155869))))

(assert (=> b!5055147 (= tp!1413049 (and (inv!77468 (right!43122 ys!41)) e!3155870))))

(assert (= (and b!5055147 ((_ is Node!15548) (right!43122 ys!41))) b!5055371))

(assert (= b!5055372 b!5055373))

(assert (= (and b!5055147 ((_ is Leaf!25827) (right!43122 ys!41))) b!5055372))

(declare-fun m!6089880 () Bool)

(assert (=> b!5055371 m!6089880))

(declare-fun m!6089882 () Bool)

(assert (=> b!5055371 m!6089882))

(declare-fun m!6089884 () Bool)

(assert (=> b!5055372 m!6089884))

(assert (=> b!5055147 m!6089640))

(declare-fun b!5055386 () Bool)

(declare-fun e!3155877 () Bool)

(declare-fun tp_is_empty!37019 () Bool)

(declare-fun tp!1413067 () Bool)

(assert (=> b!5055386 (= e!3155877 (and tp_is_empty!37019 tp!1413067))))

(assert (=> b!5055150 (= tp!1413048 e!3155877)))

(assert (= (and b!5055150 ((_ is Cons!58418) (innerList!15636 (xs!18878 xs!286)))) b!5055386))

(declare-fun tp!1413073 () Bool)

(declare-fun b!5055388 () Bool)

(declare-fun e!3155880 () Bool)

(declare-fun tp!1413074 () Bool)

(assert (=> b!5055388 (= e!3155880 (and (inv!77468 (left!42792 (left!42792 xs!286))) tp!1413074 (inv!77468 (right!43122 (left!42792 xs!286))) tp!1413073))))

(declare-fun b!5055390 () Bool)

(declare-fun e!3155879 () Bool)

(declare-fun tp!1413072 () Bool)

(assert (=> b!5055390 (= e!3155879 tp!1413072)))

(declare-fun b!5055389 () Bool)

(assert (=> b!5055389 (= e!3155880 (and (inv!77467 (xs!18878 (left!42792 xs!286))) e!3155879))))

(assert (=> b!5055148 (= tp!1413045 (and (inv!77468 (left!42792 xs!286)) e!3155880))))

(assert (= (and b!5055148 ((_ is Node!15548) (left!42792 xs!286))) b!5055388))

(assert (= b!5055389 b!5055390))

(assert (= (and b!5055148 ((_ is Leaf!25827) (left!42792 xs!286))) b!5055389))

(declare-fun m!6089886 () Bool)

(assert (=> b!5055388 m!6089886))

(declare-fun m!6089888 () Bool)

(assert (=> b!5055388 m!6089888))

(declare-fun m!6089890 () Bool)

(assert (=> b!5055389 m!6089890))

(assert (=> b!5055148 m!6089632))

(declare-fun tp!1413078 () Bool)

(declare-fun tp!1413079 () Bool)

(declare-fun b!5055395 () Bool)

(declare-fun e!3155884 () Bool)

(assert (=> b!5055395 (= e!3155884 (and (inv!77468 (left!42792 (right!43122 xs!286))) tp!1413079 (inv!77468 (right!43122 (right!43122 xs!286))) tp!1413078))))

(declare-fun b!5055397 () Bool)

(declare-fun e!3155883 () Bool)

(declare-fun tp!1413077 () Bool)

(assert (=> b!5055397 (= e!3155883 tp!1413077)))

(declare-fun b!5055396 () Bool)

(assert (=> b!5055396 (= e!3155884 (and (inv!77467 (xs!18878 (right!43122 xs!286))) e!3155883))))

(assert (=> b!5055148 (= tp!1413047 (and (inv!77468 (right!43122 xs!286)) e!3155884))))

(assert (= (and b!5055148 ((_ is Node!15548) (right!43122 xs!286))) b!5055395))

(assert (= b!5055396 b!5055397))

(assert (= (and b!5055148 ((_ is Leaf!25827) (right!43122 xs!286))) b!5055396))

(declare-fun m!6089892 () Bool)

(assert (=> b!5055395 m!6089892))

(declare-fun m!6089894 () Bool)

(assert (=> b!5055395 m!6089894))

(declare-fun m!6089896 () Bool)

(assert (=> b!5055396 m!6089896))

(assert (=> b!5055148 m!6089634))

(declare-fun b!5055398 () Bool)

(declare-fun e!3155885 () Bool)

(declare-fun tp!1413080 () Bool)

(assert (=> b!5055398 (= e!3155885 (and tp_is_empty!37019 tp!1413080))))

(assert (=> b!5055153 (= tp!1413044 e!3155885)))

(assert (= (and b!5055153 ((_ is Cons!58418) (innerList!15636 (xs!18878 ys!41)))) b!5055398))

(check-sat (not b!5055258) (not b!5055289) (not b!5055364) (not b!5055165) (not b!5055388) (not b!5055260) (not b!5055285) (not b!5055213) (not b!5055257) (not b!5055366) (not b!5055286) (not b!5055162) (not b!5055396) (not b!5055282) (not b!5055343) (not d!1626787) (not b!5055261) (not b!5055259) (not b!5055212) (not b!5055211) (not b!5055372) (not b!5055339) (not b!5055373) (not b!5055148) (not b!5055163) (not b!5055386) (not b!5055269) (not b!5055280) (not d!1626755) (not b!5055338) (not b!5055214) tp_is_empty!37019 (not b!5055313) (not b!5055365) (not b!5055215) (not b!5055397) (not b!5055342) (not b!5055398) (not b!5055389) (not b!5055283) (not b!5055390) (not b!5055271) (not b!5055160) (not b!5055314) (not b!5055272) (not b!5055273) (not b!5055147) (not b!5055395) (not b!5055268) (not b!5055270) (not b!5055288) (not d!1626761) (not b!5055256) (not b!5055371) (not b!5055291) (not b!5055217))
(check-sat)
(get-model)

(declare-fun d!1626811 () Bool)

(declare-fun c!867312 () Bool)

(assert (=> d!1626811 (= c!867312 ((_ is Node!15548) (left!42792 (left!42792 ys!41))))))

(declare-fun e!3155895 () Bool)

(assert (=> d!1626811 (= (inv!77468 (left!42792 (left!42792 ys!41))) e!3155895)))

(declare-fun b!5055412 () Bool)

(assert (=> b!5055412 (= e!3155895 (inv!77469 (left!42792 (left!42792 ys!41))))))

(declare-fun b!5055413 () Bool)

(declare-fun e!3155896 () Bool)

(assert (=> b!5055413 (= e!3155895 e!3155896)))

(declare-fun res!2152700 () Bool)

(assert (=> b!5055413 (= res!2152700 (not ((_ is Leaf!25827) (left!42792 (left!42792 ys!41)))))))

(assert (=> b!5055413 (=> res!2152700 e!3155896)))

(declare-fun b!5055414 () Bool)

(assert (=> b!5055414 (= e!3155896 (inv!77470 (left!42792 (left!42792 ys!41))))))

(assert (= (and d!1626811 c!867312) b!5055412))

(assert (= (and d!1626811 (not c!867312)) b!5055413))

(assert (= (and b!5055413 (not res!2152700)) b!5055414))

(declare-fun m!6089922 () Bool)

(assert (=> b!5055412 m!6089922))

(declare-fun m!6089924 () Bool)

(assert (=> b!5055414 m!6089924))

(assert (=> b!5055364 d!1626811))

(declare-fun d!1626813 () Bool)

(declare-fun c!867313 () Bool)

(assert (=> d!1626813 (= c!867313 ((_ is Node!15548) (right!43122 (left!42792 ys!41))))))

(declare-fun e!3155897 () Bool)

(assert (=> d!1626813 (= (inv!77468 (right!43122 (left!42792 ys!41))) e!3155897)))

(declare-fun b!5055415 () Bool)

(assert (=> b!5055415 (= e!3155897 (inv!77469 (right!43122 (left!42792 ys!41))))))

(declare-fun b!5055416 () Bool)

(declare-fun e!3155898 () Bool)

(assert (=> b!5055416 (= e!3155897 e!3155898)))

(declare-fun res!2152701 () Bool)

(assert (=> b!5055416 (= res!2152701 (not ((_ is Leaf!25827) (right!43122 (left!42792 ys!41)))))))

(assert (=> b!5055416 (=> res!2152701 e!3155898)))

(declare-fun b!5055417 () Bool)

(assert (=> b!5055417 (= e!3155898 (inv!77470 (right!43122 (left!42792 ys!41))))))

(assert (= (and d!1626813 c!867313) b!5055415))

(assert (= (and d!1626813 (not c!867313)) b!5055416))

(assert (= (and b!5055416 (not res!2152701)) b!5055417))

(declare-fun m!6089926 () Bool)

(assert (=> b!5055415 m!6089926))

(declare-fun m!6089928 () Bool)

(assert (=> b!5055417 m!6089928))

(assert (=> b!5055364 d!1626813))

(declare-fun d!1626815 () Bool)

(declare-fun res!2152708 () Bool)

(declare-fun e!3155901 () Bool)

(assert (=> d!1626815 (=> (not res!2152708) (not e!3155901))))

(declare-fun size!39046 (Conc!15548) Int)

(assert (=> d!1626815 (= res!2152708 (= (csize!31326 (left!42792 xs!286)) (+ (size!39046 (left!42792 (left!42792 xs!286))) (size!39046 (right!43122 (left!42792 xs!286))))))))

(assert (=> d!1626815 (= (inv!77469 (left!42792 xs!286)) e!3155901)))

(declare-fun b!5055424 () Bool)

(declare-fun res!2152709 () Bool)

(assert (=> b!5055424 (=> (not res!2152709) (not e!3155901))))

(assert (=> b!5055424 (= res!2152709 (and (not (= (left!42792 (left!42792 xs!286)) Empty!15548)) (not (= (right!43122 (left!42792 xs!286)) Empty!15548))))))

(declare-fun b!5055425 () Bool)

(declare-fun res!2152710 () Bool)

(assert (=> b!5055425 (=> (not res!2152710) (not e!3155901))))

(assert (=> b!5055425 (= res!2152710 (= (cheight!15759 (left!42792 xs!286)) (+ (max!0 (height!2125 (left!42792 (left!42792 xs!286))) (height!2125 (right!43122 (left!42792 xs!286)))) 1)))))

(declare-fun b!5055426 () Bool)

(assert (=> b!5055426 (= e!3155901 (<= 0 (cheight!15759 (left!42792 xs!286))))))

(assert (= (and d!1626815 res!2152708) b!5055424))

(assert (= (and b!5055424 res!2152709) b!5055425))

(assert (= (and b!5055425 res!2152710) b!5055426))

(declare-fun m!6089930 () Bool)

(assert (=> d!1626815 m!6089930))

(declare-fun m!6089932 () Bool)

(assert (=> d!1626815 m!6089932))

(declare-fun m!6089934 () Bool)

(assert (=> b!5055425 m!6089934))

(declare-fun m!6089936 () Bool)

(assert (=> b!5055425 m!6089936))

(assert (=> b!5055425 m!6089934))

(assert (=> b!5055425 m!6089936))

(declare-fun m!6089938 () Bool)

(assert (=> b!5055425 m!6089938))

(assert (=> b!5055286 d!1626815))

(declare-fun d!1626817 () Bool)

(declare-fun res!2152711 () Bool)

(declare-fun e!3155902 () Bool)

(assert (=> d!1626817 (=> (not res!2152711) (not e!3155902))))

(assert (=> d!1626817 (= res!2152711 (= (csize!31326 (right!43122 ys!41)) (+ (size!39046 (left!42792 (right!43122 ys!41))) (size!39046 (right!43122 (right!43122 ys!41))))))))

(assert (=> d!1626817 (= (inv!77469 (right!43122 ys!41)) e!3155902)))

(declare-fun b!5055427 () Bool)

(declare-fun res!2152712 () Bool)

(assert (=> b!5055427 (=> (not res!2152712) (not e!3155902))))

(assert (=> b!5055427 (= res!2152712 (and (not (= (left!42792 (right!43122 ys!41)) Empty!15548)) (not (= (right!43122 (right!43122 ys!41)) Empty!15548))))))

(declare-fun b!5055428 () Bool)

(declare-fun res!2152713 () Bool)

(assert (=> b!5055428 (=> (not res!2152713) (not e!3155902))))

(assert (=> b!5055428 (= res!2152713 (= (cheight!15759 (right!43122 ys!41)) (+ (max!0 (height!2125 (left!42792 (right!43122 ys!41))) (height!2125 (right!43122 (right!43122 ys!41)))) 1)))))

(declare-fun b!5055429 () Bool)

(assert (=> b!5055429 (= e!3155902 (<= 0 (cheight!15759 (right!43122 ys!41))))))

(assert (= (and d!1626817 res!2152711) b!5055427))

(assert (= (and b!5055427 res!2152712) b!5055428))

(assert (= (and b!5055428 res!2152713) b!5055429))

(declare-fun m!6089940 () Bool)

(assert (=> d!1626817 m!6089940))

(declare-fun m!6089942 () Bool)

(assert (=> d!1626817 m!6089942))

(declare-fun m!6089944 () Bool)

(assert (=> b!5055428 m!6089944))

(declare-fun m!6089946 () Bool)

(assert (=> b!5055428 m!6089946))

(assert (=> b!5055428 m!6089944))

(assert (=> b!5055428 m!6089946))

(declare-fun m!6089948 () Bool)

(assert (=> b!5055428 m!6089948))

(assert (=> b!5055163 d!1626817))

(declare-fun b!5055431 () Bool)

(declare-fun e!3155903 () List!58542)

(assert (=> b!5055431 (= e!3155903 (Cons!58418 (h!64866 (list!18961 (left!42792 xs!286))) (++!12769 (t!371207 (list!18961 (left!42792 xs!286))) (list!18961 (right!43122 xs!286)))))))

(declare-fun d!1626819 () Bool)

(declare-fun e!3155904 () Bool)

(assert (=> d!1626819 e!3155904))

(declare-fun res!2152714 () Bool)

(assert (=> d!1626819 (=> (not res!2152714) (not e!3155904))))

(declare-fun lt!2087346 () List!58542)

(assert (=> d!1626819 (= res!2152714 (= (content!10408 lt!2087346) ((_ map or) (content!10408 (list!18961 (left!42792 xs!286))) (content!10408 (list!18961 (right!43122 xs!286))))))))

(assert (=> d!1626819 (= lt!2087346 e!3155903)))

(declare-fun c!867314 () Bool)

(assert (=> d!1626819 (= c!867314 ((_ is Nil!58418) (list!18961 (left!42792 xs!286))))))

(assert (=> d!1626819 (= (++!12769 (list!18961 (left!42792 xs!286)) (list!18961 (right!43122 xs!286))) lt!2087346)))

(declare-fun b!5055433 () Bool)

(assert (=> b!5055433 (= e!3155904 (or (not (= (list!18961 (right!43122 xs!286)) Nil!58418)) (= lt!2087346 (list!18961 (left!42792 xs!286)))))))

(declare-fun b!5055430 () Bool)

(assert (=> b!5055430 (= e!3155903 (list!18961 (right!43122 xs!286)))))

(declare-fun b!5055432 () Bool)

(declare-fun res!2152715 () Bool)

(assert (=> b!5055432 (=> (not res!2152715) (not e!3155904))))

(assert (=> b!5055432 (= res!2152715 (= (size!39044 lt!2087346) (+ (size!39044 (list!18961 (left!42792 xs!286))) (size!39044 (list!18961 (right!43122 xs!286))))))))

(assert (= (and d!1626819 c!867314) b!5055430))

(assert (= (and d!1626819 (not c!867314)) b!5055431))

(assert (= (and d!1626819 res!2152714) b!5055432))

(assert (= (and b!5055432 res!2152715) b!5055433))

(assert (=> b!5055431 m!6089732))

(declare-fun m!6089950 () Bool)

(assert (=> b!5055431 m!6089950))

(declare-fun m!6089952 () Bool)

(assert (=> d!1626819 m!6089952))

(assert (=> d!1626819 m!6089718))

(declare-fun m!6089954 () Bool)

(assert (=> d!1626819 m!6089954))

(assert (=> d!1626819 m!6089732))

(declare-fun m!6089956 () Bool)

(assert (=> d!1626819 m!6089956))

(declare-fun m!6089958 () Bool)

(assert (=> b!5055432 m!6089958))

(assert (=> b!5055432 m!6089718))

(declare-fun m!6089960 () Bool)

(assert (=> b!5055432 m!6089960))

(assert (=> b!5055432 m!6089732))

(declare-fun m!6089962 () Bool)

(assert (=> b!5055432 m!6089962))

(assert (=> b!5055343 d!1626819))

(declare-fun d!1626821 () Bool)

(declare-fun c!867315 () Bool)

(assert (=> d!1626821 (= c!867315 ((_ is Empty!15548) (left!42792 xs!286)))))

(declare-fun e!3155905 () List!58542)

(assert (=> d!1626821 (= (list!18961 (left!42792 xs!286)) e!3155905)))

(declare-fun b!5055435 () Bool)

(declare-fun e!3155906 () List!58542)

(assert (=> b!5055435 (= e!3155905 e!3155906)))

(declare-fun c!867316 () Bool)

(assert (=> b!5055435 (= c!867316 ((_ is Leaf!25827) (left!42792 xs!286)))))

(declare-fun b!5055434 () Bool)

(assert (=> b!5055434 (= e!3155905 Nil!58418)))

(declare-fun b!5055436 () Bool)

(assert (=> b!5055436 (= e!3155906 (list!18963 (xs!18878 (left!42792 xs!286))))))

(declare-fun b!5055437 () Bool)

(assert (=> b!5055437 (= e!3155906 (++!12769 (list!18961 (left!42792 (left!42792 xs!286))) (list!18961 (right!43122 (left!42792 xs!286)))))))

(assert (= (and d!1626821 c!867315) b!5055434))

(assert (= (and d!1626821 (not c!867315)) b!5055435))

(assert (= (and b!5055435 c!867316) b!5055436))

(assert (= (and b!5055435 (not c!867316)) b!5055437))

(declare-fun m!6089964 () Bool)

(assert (=> b!5055436 m!6089964))

(declare-fun m!6089966 () Bool)

(assert (=> b!5055437 m!6089966))

(declare-fun m!6089968 () Bool)

(assert (=> b!5055437 m!6089968))

(assert (=> b!5055437 m!6089966))

(assert (=> b!5055437 m!6089968))

(declare-fun m!6089970 () Bool)

(assert (=> b!5055437 m!6089970))

(assert (=> b!5055343 d!1626821))

(declare-fun d!1626823 () Bool)

(declare-fun c!867317 () Bool)

(assert (=> d!1626823 (= c!867317 ((_ is Empty!15548) (right!43122 xs!286)))))

(declare-fun e!3155907 () List!58542)

(assert (=> d!1626823 (= (list!18961 (right!43122 xs!286)) e!3155907)))

(declare-fun b!5055439 () Bool)

(declare-fun e!3155908 () List!58542)

(assert (=> b!5055439 (= e!3155907 e!3155908)))

(declare-fun c!867318 () Bool)

(assert (=> b!5055439 (= c!867318 ((_ is Leaf!25827) (right!43122 xs!286)))))

(declare-fun b!5055438 () Bool)

(assert (=> b!5055438 (= e!3155907 Nil!58418)))

(declare-fun b!5055440 () Bool)

(assert (=> b!5055440 (= e!3155908 (list!18963 (xs!18878 (right!43122 xs!286))))))

(declare-fun b!5055441 () Bool)

(assert (=> b!5055441 (= e!3155908 (++!12769 (list!18961 (left!42792 (right!43122 xs!286))) (list!18961 (right!43122 (right!43122 xs!286)))))))

(assert (= (and d!1626823 c!867317) b!5055438))

(assert (= (and d!1626823 (not c!867317)) b!5055439))

(assert (= (and b!5055439 c!867318) b!5055440))

(assert (= (and b!5055439 (not c!867318)) b!5055441))

(declare-fun m!6089972 () Bool)

(assert (=> b!5055440 m!6089972))

(assert (=> b!5055441 m!6089720))

(assert (=> b!5055441 m!6089714))

(assert (=> b!5055441 m!6089720))

(assert (=> b!5055441 m!6089714))

(declare-fun m!6089974 () Bool)

(assert (=> b!5055441 m!6089974))

(assert (=> b!5055343 d!1626823))

(declare-fun b!5055443 () Bool)

(declare-fun e!3155909 () List!58542)

(assert (=> b!5055443 (= e!3155909 (Cons!58418 (h!64866 (t!371207 lt!2087339)) (++!12769 (t!371207 (t!371207 lt!2087339)) lt!2087338)))))

(declare-fun d!1626825 () Bool)

(declare-fun e!3155910 () Bool)

(assert (=> d!1626825 e!3155910))

(declare-fun res!2152716 () Bool)

(assert (=> d!1626825 (=> (not res!2152716) (not e!3155910))))

(declare-fun lt!2087347 () List!58542)

(assert (=> d!1626825 (= res!2152716 (= (content!10408 lt!2087347) ((_ map or) (content!10408 (t!371207 lt!2087339)) (content!10408 lt!2087338))))))

(assert (=> d!1626825 (= lt!2087347 e!3155909)))

(declare-fun c!867319 () Bool)

(assert (=> d!1626825 (= c!867319 ((_ is Nil!58418) (t!371207 lt!2087339)))))

(assert (=> d!1626825 (= (++!12769 (t!371207 lt!2087339) lt!2087338) lt!2087347)))

(declare-fun b!5055445 () Bool)

(assert (=> b!5055445 (= e!3155910 (or (not (= lt!2087338 Nil!58418)) (= lt!2087347 (t!371207 lt!2087339))))))

(declare-fun b!5055442 () Bool)

(assert (=> b!5055442 (= e!3155909 lt!2087338)))

(declare-fun b!5055444 () Bool)

(declare-fun res!2152717 () Bool)

(assert (=> b!5055444 (=> (not res!2152717) (not e!3155910))))

(assert (=> b!5055444 (= res!2152717 (= (size!39044 lt!2087347) (+ (size!39044 (t!371207 lt!2087339)) (size!39044 lt!2087338))))))

(assert (= (and d!1626825 c!867319) b!5055442))

(assert (= (and d!1626825 (not c!867319)) b!5055443))

(assert (= (and d!1626825 res!2152716) b!5055444))

(assert (= (and b!5055444 res!2152717) b!5055445))

(declare-fun m!6089976 () Bool)

(assert (=> b!5055443 m!6089976))

(declare-fun m!6089978 () Bool)

(assert (=> d!1626825 m!6089978))

(declare-fun m!6089980 () Bool)

(assert (=> d!1626825 m!6089980))

(assert (=> d!1626825 m!6089836))

(declare-fun m!6089982 () Bool)

(assert (=> b!5055444 m!6089982))

(declare-fun m!6089984 () Bool)

(assert (=> b!5055444 m!6089984))

(assert (=> b!5055444 m!6089842))

(assert (=> b!5055313 d!1626825))

(declare-fun d!1626827 () Bool)

(declare-fun res!2152722 () Bool)

(declare-fun e!3155913 () Bool)

(assert (=> d!1626827 (=> (not res!2152722) (not e!3155913))))

(assert (=> d!1626827 (= res!2152722 (<= (size!39044 (list!18963 (xs!18878 (left!42792 xs!286)))) 512))))

(assert (=> d!1626827 (= (inv!77470 (left!42792 xs!286)) e!3155913)))

(declare-fun b!5055450 () Bool)

(declare-fun res!2152723 () Bool)

(assert (=> b!5055450 (=> (not res!2152723) (not e!3155913))))

(assert (=> b!5055450 (= res!2152723 (= (csize!31327 (left!42792 xs!286)) (size!39044 (list!18963 (xs!18878 (left!42792 xs!286))))))))

(declare-fun b!5055451 () Bool)

(assert (=> b!5055451 (= e!3155913 (and (> (csize!31327 (left!42792 xs!286)) 0) (<= (csize!31327 (left!42792 xs!286)) 512)))))

(assert (= (and d!1626827 res!2152722) b!5055450))

(assert (= (and b!5055450 res!2152723) b!5055451))

(assert (=> d!1626827 m!6089964))

(assert (=> d!1626827 m!6089964))

(declare-fun m!6089986 () Bool)

(assert (=> d!1626827 m!6089986))

(assert (=> b!5055450 m!6089964))

(assert (=> b!5055450 m!6089964))

(assert (=> b!5055450 m!6089986))

(assert (=> b!5055288 d!1626827))

(assert (=> b!5055211 d!1626807))

(declare-fun d!1626829 () Bool)

(declare-fun c!867320 () Bool)

(assert (=> d!1626829 (= c!867320 ((_ is Empty!15548) (right!43122 ys!41)))))

(declare-fun e!3155914 () List!58542)

(assert (=> d!1626829 (= (list!18961 (right!43122 ys!41)) e!3155914)))

(declare-fun b!5055453 () Bool)

(declare-fun e!3155915 () List!58542)

(assert (=> b!5055453 (= e!3155914 e!3155915)))

(declare-fun c!867321 () Bool)

(assert (=> b!5055453 (= c!867321 ((_ is Leaf!25827) (right!43122 ys!41)))))

(declare-fun b!5055452 () Bool)

(assert (=> b!5055452 (= e!3155914 Nil!58418)))

(declare-fun b!5055454 () Bool)

(assert (=> b!5055454 (= e!3155915 (list!18963 (xs!18878 (right!43122 ys!41))))))

(declare-fun b!5055455 () Bool)

(assert (=> b!5055455 (= e!3155915 (++!12769 (list!18961 (left!42792 (right!43122 ys!41))) (list!18961 (right!43122 (right!43122 ys!41)))))))

(assert (= (and d!1626829 c!867320) b!5055452))

(assert (= (and d!1626829 (not c!867320)) b!5055453))

(assert (= (and b!5055453 c!867321) b!5055454))

(assert (= (and b!5055453 (not c!867321)) b!5055455))

(declare-fun m!6089988 () Bool)

(assert (=> b!5055454 m!6089988))

(declare-fun m!6089990 () Bool)

(assert (=> b!5055455 m!6089990))

(declare-fun m!6089992 () Bool)

(assert (=> b!5055455 m!6089992))

(assert (=> b!5055455 m!6089990))

(assert (=> b!5055455 m!6089992))

(declare-fun m!6089994 () Bool)

(assert (=> b!5055455 m!6089994))

(assert (=> b!5055211 d!1626829))

(declare-fun d!1626831 () Bool)

(declare-fun c!867322 () Bool)

(assert (=> d!1626831 (= c!867322 ((_ is Empty!15548) (right!43122 (left!42792 ys!41))))))

(declare-fun e!3155916 () List!58542)

(assert (=> d!1626831 (= (list!18961 (right!43122 (left!42792 ys!41))) e!3155916)))

(declare-fun b!5055457 () Bool)

(declare-fun e!3155917 () List!58542)

(assert (=> b!5055457 (= e!3155916 e!3155917)))

(declare-fun c!867323 () Bool)

(assert (=> b!5055457 (= c!867323 ((_ is Leaf!25827) (right!43122 (left!42792 ys!41))))))

(declare-fun b!5055456 () Bool)

(assert (=> b!5055456 (= e!3155916 Nil!58418)))

(declare-fun b!5055458 () Bool)

(assert (=> b!5055458 (= e!3155917 (list!18963 (xs!18878 (right!43122 (left!42792 ys!41)))))))

(declare-fun b!5055459 () Bool)

(assert (=> b!5055459 (= e!3155917 (++!12769 (list!18961 (left!42792 (right!43122 (left!42792 ys!41)))) (list!18961 (right!43122 (right!43122 (left!42792 ys!41))))))))

(assert (= (and d!1626831 c!867322) b!5055456))

(assert (= (and d!1626831 (not c!867322)) b!5055457))

(assert (= (and b!5055457 c!867323) b!5055458))

(assert (= (and b!5055457 (not c!867323)) b!5055459))

(declare-fun m!6089996 () Bool)

(assert (=> b!5055458 m!6089996))

(declare-fun m!6089998 () Bool)

(assert (=> b!5055459 m!6089998))

(declare-fun m!6090000 () Bool)

(assert (=> b!5055459 m!6090000))

(assert (=> b!5055459 m!6089998))

(assert (=> b!5055459 m!6090000))

(declare-fun m!6090002 () Bool)

(assert (=> b!5055459 m!6090002))

(assert (=> b!5055211 d!1626831))

(declare-fun bm!352041 () Bool)

(declare-fun call!352049 () List!58542)

(assert (=> bm!352041 (= call!352049 (++!12769 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))) (list!18961 (right!43122 (left!42792 ys!41)))))))

(declare-fun bm!352042 () Bool)

(declare-fun call!352046 () List!58542)

(assert (=> bm!352042 (= call!352046 (++!12769 call!352049 (list!18961 (right!43122 ys!41))))))

(declare-fun bm!352043 () Bool)

(declare-fun call!352047 () List!58542)

(declare-fun call!352048 () List!58542)

(assert (=> bm!352043 (= call!352047 (++!12769 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))) call!352048))))

(declare-fun bm!352044 () Bool)

(assert (=> bm!352044 (= call!352048 (++!12769 (list!18961 (right!43122 (left!42792 ys!41))) (list!18961 (right!43122 ys!41))))))

(declare-fun b!5055464 () Bool)

(declare-fun e!3155920 () Bool)

(assert (=> b!5055464 (= e!3155920 (= call!352046 call!352047))))

(declare-fun lt!2087350 () Bool)

(assert (=> b!5055464 (= lt!2087350 (appendAssoc!292 (t!371207 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41))))) (list!18961 (right!43122 (left!42792 ys!41))) (list!18961 (right!43122 ys!41))))))

(declare-fun b!5055465 () Bool)

(assert (=> b!5055465 (= e!3155920 (= call!352046 call!352047))))

(declare-fun d!1626833 () Bool)

(assert (=> d!1626833 e!3155920))

(declare-fun c!867326 () Bool)

(assert (=> d!1626833 (= c!867326 ((_ is Nil!58418) (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41))))))))

(assert (=> d!1626833 (= (appendAssoc!292 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))) (list!18961 (right!43122 (left!42792 ys!41))) (list!18961 (right!43122 ys!41))) true)))

(assert (= (and d!1626833 c!867326) b!5055465))

(assert (= (and d!1626833 (not c!867326)) b!5055464))

(assert (= (or b!5055465 b!5055464) bm!352041))

(assert (= (or b!5055465 b!5055464) bm!352044))

(assert (= (or b!5055465 b!5055464) bm!352043))

(assert (= (or b!5055465 b!5055464) bm!352042))

(assert (=> bm!352041 m!6089708))

(assert (=> bm!352041 m!6089710))

(declare-fun m!6090004 () Bool)

(assert (=> bm!352041 m!6090004))

(assert (=> bm!352042 m!6089704))

(declare-fun m!6090006 () Bool)

(assert (=> bm!352042 m!6090006))

(assert (=> bm!352043 m!6089708))

(declare-fun m!6090008 () Bool)

(assert (=> bm!352043 m!6090008))

(assert (=> bm!352044 m!6089710))

(assert (=> bm!352044 m!6089704))

(declare-fun m!6090010 () Bool)

(assert (=> bm!352044 m!6090010))

(assert (=> b!5055464 m!6089710))

(assert (=> b!5055464 m!6089704))

(declare-fun m!6090012 () Bool)

(assert (=> b!5055464 m!6090012))

(assert (=> b!5055211 d!1626833))

(declare-fun b!5055467 () Bool)

(declare-fun e!3155921 () List!58542)

(assert (=> b!5055467 (= e!3155921 (Cons!58418 (h!64866 (list!18961 xs!286)) (++!12769 (t!371207 (list!18961 xs!286)) (list!18961 (left!42792 (left!42792 ys!41))))))))

(declare-fun d!1626835 () Bool)

(declare-fun e!3155922 () Bool)

(assert (=> d!1626835 e!3155922))

(declare-fun res!2152724 () Bool)

(assert (=> d!1626835 (=> (not res!2152724) (not e!3155922))))

(declare-fun lt!2087351 () List!58542)

(assert (=> d!1626835 (= res!2152724 (= (content!10408 lt!2087351) ((_ map or) (content!10408 (list!18961 xs!286)) (content!10408 (list!18961 (left!42792 (left!42792 ys!41)))))))))

(assert (=> d!1626835 (= lt!2087351 e!3155921)))

(declare-fun c!867327 () Bool)

(assert (=> d!1626835 (= c!867327 ((_ is Nil!58418) (list!18961 xs!286)))))

(assert (=> d!1626835 (= (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))) lt!2087351)))

(declare-fun b!5055469 () Bool)

(assert (=> b!5055469 (= e!3155922 (or (not (= (list!18961 (left!42792 (left!42792 ys!41))) Nil!58418)) (= lt!2087351 (list!18961 xs!286))))))

(declare-fun b!5055466 () Bool)

(assert (=> b!5055466 (= e!3155921 (list!18961 (left!42792 (left!42792 ys!41))))))

(declare-fun b!5055468 () Bool)

(declare-fun res!2152725 () Bool)

(assert (=> b!5055468 (=> (not res!2152725) (not e!3155922))))

(assert (=> b!5055468 (= res!2152725 (= (size!39044 lt!2087351) (+ (size!39044 (list!18961 xs!286)) (size!39044 (list!18961 (left!42792 (left!42792 ys!41)))))))))

(assert (= (and d!1626835 c!867327) b!5055466))

(assert (= (and d!1626835 (not c!867327)) b!5055467))

(assert (= (and d!1626835 res!2152724) b!5055468))

(assert (= (and b!5055468 res!2152725) b!5055469))

(assert (=> b!5055467 m!6089706))

(declare-fun m!6090014 () Bool)

(assert (=> b!5055467 m!6090014))

(declare-fun m!6090016 () Bool)

(assert (=> d!1626835 m!6090016))

(assert (=> d!1626835 m!6089660))

(declare-fun m!6090018 () Bool)

(assert (=> d!1626835 m!6090018))

(assert (=> d!1626835 m!6089706))

(declare-fun m!6090020 () Bool)

(assert (=> d!1626835 m!6090020))

(declare-fun m!6090022 () Bool)

(assert (=> b!5055468 m!6090022))

(assert (=> b!5055468 m!6089660))

(declare-fun m!6090024 () Bool)

(assert (=> b!5055468 m!6090024))

(assert (=> b!5055468 m!6089706))

(declare-fun m!6090026 () Bool)

(assert (=> b!5055468 m!6090026))

(assert (=> b!5055211 d!1626835))

(declare-fun d!1626837 () Bool)

(declare-fun c!867328 () Bool)

(assert (=> d!1626837 (= c!867328 ((_ is Empty!15548) (left!42792 (left!42792 ys!41))))))

(declare-fun e!3155923 () List!58542)

(assert (=> d!1626837 (= (list!18961 (left!42792 (left!42792 ys!41))) e!3155923)))

(declare-fun b!5055471 () Bool)

(declare-fun e!3155924 () List!58542)

(assert (=> b!5055471 (= e!3155923 e!3155924)))

(declare-fun c!867329 () Bool)

(assert (=> b!5055471 (= c!867329 ((_ is Leaf!25827) (left!42792 (left!42792 ys!41))))))

(declare-fun b!5055470 () Bool)

(assert (=> b!5055470 (= e!3155923 Nil!58418)))

(declare-fun b!5055472 () Bool)

(assert (=> b!5055472 (= e!3155924 (list!18963 (xs!18878 (left!42792 (left!42792 ys!41)))))))

(declare-fun b!5055473 () Bool)

(assert (=> b!5055473 (= e!3155924 (++!12769 (list!18961 (left!42792 (left!42792 (left!42792 ys!41)))) (list!18961 (right!43122 (left!42792 (left!42792 ys!41))))))))

(assert (= (and d!1626837 c!867328) b!5055470))

(assert (= (and d!1626837 (not c!867328)) b!5055471))

(assert (= (and b!5055471 c!867329) b!5055472))

(assert (= (and b!5055471 (not c!867329)) b!5055473))

(declare-fun m!6090028 () Bool)

(assert (=> b!5055472 m!6090028))

(declare-fun m!6090030 () Bool)

(assert (=> b!5055473 m!6090030))

(declare-fun m!6090032 () Bool)

(assert (=> b!5055473 m!6090032))

(assert (=> b!5055473 m!6090030))

(assert (=> b!5055473 m!6090032))

(declare-fun m!6090034 () Bool)

(assert (=> b!5055473 m!6090034))

(assert (=> b!5055211 d!1626837))

(declare-fun d!1626839 () Bool)

(declare-fun res!2152726 () Bool)

(declare-fun e!3155925 () Bool)

(assert (=> d!1626839 (=> (not res!2152726) (not e!3155925))))

(assert (=> d!1626839 (= res!2152726 (<= (size!39044 (list!18963 (xs!18878 (right!43122 xs!286)))) 512))))

(assert (=> d!1626839 (= (inv!77470 (right!43122 xs!286)) e!3155925)))

(declare-fun b!5055474 () Bool)

(declare-fun res!2152727 () Bool)

(assert (=> b!5055474 (=> (not res!2152727) (not e!3155925))))

(assert (=> b!5055474 (= res!2152727 (= (csize!31327 (right!43122 xs!286)) (size!39044 (list!18963 (xs!18878 (right!43122 xs!286))))))))

(declare-fun b!5055475 () Bool)

(assert (=> b!5055475 (= e!3155925 (and (> (csize!31327 (right!43122 xs!286)) 0) (<= (csize!31327 (right!43122 xs!286)) 512)))))

(assert (= (and d!1626839 res!2152726) b!5055474))

(assert (= (and b!5055474 res!2152727) b!5055475))

(assert (=> d!1626839 m!6089972))

(assert (=> d!1626839 m!6089972))

(declare-fun m!6090036 () Bool)

(assert (=> d!1626839 m!6090036))

(assert (=> b!5055474 m!6089972))

(assert (=> b!5055474 m!6089972))

(assert (=> b!5055474 m!6090036))

(assert (=> b!5055291 d!1626839))

(declare-fun d!1626841 () Bool)

(assert (=> d!1626841 (= (height!2125 (left!42792 ys!41)) (ite ((_ is Empty!15548) (left!42792 ys!41)) 0 (ite ((_ is Leaf!25827) (left!42792 ys!41)) 1 (cheight!15759 (left!42792 ys!41)))))))

(assert (=> b!5055259 d!1626841))

(declare-fun d!1626843 () Bool)

(assert (=> d!1626843 (= (height!2125 (right!43122 ys!41)) (ite ((_ is Empty!15548) (right!43122 ys!41)) 0 (ite ((_ is Leaf!25827) (right!43122 ys!41)) 1 (cheight!15759 (right!43122 ys!41)))))))

(assert (=> b!5055259 d!1626843))

(declare-fun b!5055476 () Bool)

(declare-fun e!3155927 () Bool)

(assert (=> b!5055476 (= e!3155927 (not (isEmpty!31600 (right!43122 (right!43122 ys!41)))))))

(declare-fun b!5055477 () Bool)

(declare-fun res!2152733 () Bool)

(assert (=> b!5055477 (=> (not res!2152733) (not e!3155927))))

(assert (=> b!5055477 (= res!2152733 (isBalanced!4410 (right!43122 (right!43122 ys!41))))))

(declare-fun b!5055478 () Bool)

(declare-fun res!2152732 () Bool)

(assert (=> b!5055478 (=> (not res!2152732) (not e!3155927))))

(assert (=> b!5055478 (= res!2152732 (not (isEmpty!31600 (left!42792 (right!43122 ys!41)))))))

(declare-fun d!1626845 () Bool)

(declare-fun res!2152728 () Bool)

(declare-fun e!3155926 () Bool)

(assert (=> d!1626845 (=> res!2152728 e!3155926)))

(assert (=> d!1626845 (= res!2152728 (not ((_ is Node!15548) (right!43122 ys!41))))))

(assert (=> d!1626845 (= (isBalanced!4410 (right!43122 ys!41)) e!3155926)))

(declare-fun b!5055479 () Bool)

(assert (=> b!5055479 (= e!3155926 e!3155927)))

(declare-fun res!2152729 () Bool)

(assert (=> b!5055479 (=> (not res!2152729) (not e!3155927))))

(assert (=> b!5055479 (= res!2152729 (<= (- 1) (- (height!2125 (left!42792 (right!43122 ys!41))) (height!2125 (right!43122 (right!43122 ys!41))))))))

(declare-fun b!5055480 () Bool)

(declare-fun res!2152730 () Bool)

(assert (=> b!5055480 (=> (not res!2152730) (not e!3155927))))

(assert (=> b!5055480 (= res!2152730 (<= (- (height!2125 (left!42792 (right!43122 ys!41))) (height!2125 (right!43122 (right!43122 ys!41)))) 1))))

(declare-fun b!5055481 () Bool)

(declare-fun res!2152731 () Bool)

(assert (=> b!5055481 (=> (not res!2152731) (not e!3155927))))

(assert (=> b!5055481 (= res!2152731 (isBalanced!4410 (left!42792 (right!43122 ys!41))))))

(assert (= (and d!1626845 (not res!2152728)) b!5055479))

(assert (= (and b!5055479 res!2152729) b!5055480))

(assert (= (and b!5055480 res!2152730) b!5055481))

(assert (= (and b!5055481 res!2152731) b!5055477))

(assert (= (and b!5055477 res!2152733) b!5055478))

(assert (= (and b!5055478 res!2152732) b!5055476))

(declare-fun m!6090038 () Bool)

(assert (=> b!5055477 m!6090038))

(declare-fun m!6090040 () Bool)

(assert (=> b!5055481 m!6090040))

(assert (=> b!5055479 m!6089944))

(assert (=> b!5055479 m!6089946))

(assert (=> b!5055480 m!6089944))

(assert (=> b!5055480 m!6089946))

(declare-fun m!6090042 () Bool)

(assert (=> b!5055476 m!6090042))

(declare-fun m!6090044 () Bool)

(assert (=> b!5055478 m!6090044))

(assert (=> b!5055257 d!1626845))

(declare-fun d!1626847 () Bool)

(declare-fun res!2152734 () Bool)

(declare-fun e!3155928 () Bool)

(assert (=> d!1626847 (=> (not res!2152734) (not e!3155928))))

(assert (=> d!1626847 (= res!2152734 (<= (size!39044 (list!18963 (xs!18878 xs!286))) 512))))

(assert (=> d!1626847 (= (inv!77470 xs!286) e!3155928)))

(declare-fun b!5055482 () Bool)

(declare-fun res!2152735 () Bool)

(assert (=> b!5055482 (=> (not res!2152735) (not e!3155928))))

(assert (=> b!5055482 (= res!2152735 (= (csize!31327 xs!286) (size!39044 (list!18963 (xs!18878 xs!286)))))))

(declare-fun b!5055483 () Bool)

(assert (=> b!5055483 (= e!3155928 (and (> (csize!31327 xs!286) 0) (<= (csize!31327 xs!286) 512)))))

(assert (= (and d!1626847 res!2152734) b!5055482))

(assert (= (and b!5055482 res!2152735) b!5055483))

(assert (=> d!1626847 m!6089862))

(assert (=> d!1626847 m!6089862))

(declare-fun m!6090046 () Bool)

(assert (=> d!1626847 m!6090046))

(assert (=> b!5055482 m!6089862))

(assert (=> b!5055482 m!6089862))

(assert (=> b!5055482 m!6090046))

(assert (=> b!5055282 d!1626847))

(declare-fun b!5055484 () Bool)

(declare-fun e!3155930 () Bool)

(assert (=> b!5055484 (= e!3155930 (not (isEmpty!31600 (right!43122 (left!42792 ys!41)))))))

(declare-fun b!5055485 () Bool)

(declare-fun res!2152741 () Bool)

(assert (=> b!5055485 (=> (not res!2152741) (not e!3155930))))

(assert (=> b!5055485 (= res!2152741 (isBalanced!4410 (right!43122 (left!42792 ys!41))))))

(declare-fun b!5055486 () Bool)

(declare-fun res!2152740 () Bool)

(assert (=> b!5055486 (=> (not res!2152740) (not e!3155930))))

(assert (=> b!5055486 (= res!2152740 (not (isEmpty!31600 (left!42792 (left!42792 ys!41)))))))

(declare-fun d!1626849 () Bool)

(declare-fun res!2152736 () Bool)

(declare-fun e!3155929 () Bool)

(assert (=> d!1626849 (=> res!2152736 e!3155929)))

(assert (=> d!1626849 (= res!2152736 (not ((_ is Node!15548) (left!42792 ys!41))))))

(assert (=> d!1626849 (= (isBalanced!4410 (left!42792 ys!41)) e!3155929)))

(declare-fun b!5055487 () Bool)

(assert (=> b!5055487 (= e!3155929 e!3155930)))

(declare-fun res!2152737 () Bool)

(assert (=> b!5055487 (=> (not res!2152737) (not e!3155930))))

(assert (=> b!5055487 (= res!2152737 (<= (- 1) (- (height!2125 (left!42792 (left!42792 ys!41))) (height!2125 (right!43122 (left!42792 ys!41))))))))

(declare-fun b!5055488 () Bool)

(declare-fun res!2152738 () Bool)

(assert (=> b!5055488 (=> (not res!2152738) (not e!3155930))))

(assert (=> b!5055488 (= res!2152738 (<= (- (height!2125 (left!42792 (left!42792 ys!41))) (height!2125 (right!43122 (left!42792 ys!41)))) 1))))

(declare-fun b!5055489 () Bool)

(declare-fun res!2152739 () Bool)

(assert (=> b!5055489 (=> (not res!2152739) (not e!3155930))))

(assert (=> b!5055489 (= res!2152739 (isBalanced!4410 (left!42792 (left!42792 ys!41))))))

(assert (= (and d!1626849 (not res!2152736)) b!5055487))

(assert (= (and b!5055487 res!2152737) b!5055488))

(assert (= (and b!5055488 res!2152738) b!5055489))

(assert (= (and b!5055489 res!2152739) b!5055485))

(assert (= (and b!5055485 res!2152741) b!5055486))

(assert (= (and b!5055486 res!2152740) b!5055484))

(declare-fun m!6090048 () Bool)

(assert (=> b!5055485 m!6090048))

(declare-fun m!6090050 () Bool)

(assert (=> b!5055489 m!6090050))

(declare-fun m!6090052 () Bool)

(assert (=> b!5055487 m!6090052))

(declare-fun m!6090054 () Bool)

(assert (=> b!5055487 m!6090054))

(assert (=> b!5055488 m!6090052))

(assert (=> b!5055488 m!6090054))

(declare-fun m!6090056 () Bool)

(assert (=> b!5055484 m!6090056))

(declare-fun m!6090058 () Bool)

(assert (=> b!5055486 m!6090058))

(assert (=> b!5055261 d!1626849))

(declare-fun b!5055491 () Bool)

(declare-fun e!3155931 () List!58542)

(assert (=> b!5055491 (= e!3155931 (Cons!58418 (h!64866 (list!18961 (left!42792 ys!41))) (++!12769 (t!371207 (list!18961 (left!42792 ys!41))) (list!18961 (right!43122 ys!41)))))))

(declare-fun d!1626851 () Bool)

(declare-fun e!3155932 () Bool)

(assert (=> d!1626851 e!3155932))

(declare-fun res!2152742 () Bool)

(assert (=> d!1626851 (=> (not res!2152742) (not e!3155932))))

(declare-fun lt!2087352 () List!58542)

(assert (=> d!1626851 (= res!2152742 (= (content!10408 lt!2087352) ((_ map or) (content!10408 (list!18961 (left!42792 ys!41))) (content!10408 (list!18961 (right!43122 ys!41))))))))

(assert (=> d!1626851 (= lt!2087352 e!3155931)))

(declare-fun c!867330 () Bool)

(assert (=> d!1626851 (= c!867330 ((_ is Nil!58418) (list!18961 (left!42792 ys!41))))))

(assert (=> d!1626851 (= (++!12769 (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))) lt!2087352)))

(declare-fun b!5055493 () Bool)

(assert (=> b!5055493 (= e!3155932 (or (not (= (list!18961 (right!43122 ys!41)) Nil!58418)) (= lt!2087352 (list!18961 (left!42792 ys!41)))))))

(declare-fun b!5055490 () Bool)

(assert (=> b!5055490 (= e!3155931 (list!18961 (right!43122 ys!41)))))

(declare-fun b!5055492 () Bool)

(declare-fun res!2152743 () Bool)

(assert (=> b!5055492 (=> (not res!2152743) (not e!3155932))))

(assert (=> b!5055492 (= res!2152743 (= (size!39044 lt!2087352) (+ (size!39044 (list!18961 (left!42792 ys!41))) (size!39044 (list!18961 (right!43122 ys!41))))))))

(assert (= (and d!1626851 c!867330) b!5055490))

(assert (= (and d!1626851 (not c!867330)) b!5055491))

(assert (= (and d!1626851 res!2152742) b!5055492))

(assert (= (and b!5055492 res!2152743) b!5055493))

(assert (=> b!5055491 m!6089704))

(declare-fun m!6090060 () Bool)

(assert (=> b!5055491 m!6090060))

(declare-fun m!6090062 () Bool)

(assert (=> d!1626851 m!6090062))

(assert (=> d!1626851 m!6089728))

(declare-fun m!6090064 () Bool)

(assert (=> d!1626851 m!6090064))

(assert (=> d!1626851 m!6089704))

(declare-fun m!6090066 () Bool)

(assert (=> d!1626851 m!6090066))

(declare-fun m!6090068 () Bool)

(assert (=> b!5055492 m!6090068))

(assert (=> b!5055492 m!6089728))

(declare-fun m!6090070 () Bool)

(assert (=> b!5055492 m!6090070))

(assert (=> b!5055492 m!6089704))

(declare-fun m!6090072 () Bool)

(assert (=> b!5055492 m!6090072))

(assert (=> b!5055339 d!1626851))

(declare-fun d!1626853 () Bool)

(declare-fun c!867331 () Bool)

(assert (=> d!1626853 (= c!867331 ((_ is Empty!15548) (left!42792 ys!41)))))

(declare-fun e!3155933 () List!58542)

(assert (=> d!1626853 (= (list!18961 (left!42792 ys!41)) e!3155933)))

(declare-fun b!5055495 () Bool)

(declare-fun e!3155934 () List!58542)

(assert (=> b!5055495 (= e!3155933 e!3155934)))

(declare-fun c!867332 () Bool)

(assert (=> b!5055495 (= c!867332 ((_ is Leaf!25827) (left!42792 ys!41)))))

(declare-fun b!5055494 () Bool)

(assert (=> b!5055494 (= e!3155933 Nil!58418)))

(declare-fun b!5055496 () Bool)

(assert (=> b!5055496 (= e!3155934 (list!18963 (xs!18878 (left!42792 ys!41))))))

(declare-fun b!5055497 () Bool)

(assert (=> b!5055497 (= e!3155934 (++!12769 (list!18961 (left!42792 (left!42792 ys!41))) (list!18961 (right!43122 (left!42792 ys!41)))))))

(assert (= (and d!1626853 c!867331) b!5055494))

(assert (= (and d!1626853 (not c!867331)) b!5055495))

(assert (= (and b!5055495 c!867332) b!5055496))

(assert (= (and b!5055495 (not c!867332)) b!5055497))

(declare-fun m!6090074 () Bool)

(assert (=> b!5055496 m!6090074))

(assert (=> b!5055497 m!6089706))

(assert (=> b!5055497 m!6089710))

(assert (=> b!5055497 m!6089706))

(assert (=> b!5055497 m!6089710))

(declare-fun m!6090076 () Bool)

(assert (=> b!5055497 m!6090076))

(assert (=> b!5055339 d!1626853))

(assert (=> b!5055339 d!1626829))

(declare-fun d!1626855 () Bool)

(declare-fun res!2152744 () Bool)

(declare-fun e!3155935 () Bool)

(assert (=> d!1626855 (=> (not res!2152744) (not e!3155935))))

(assert (=> d!1626855 (= res!2152744 (= (csize!31326 (right!43122 xs!286)) (+ (size!39046 (left!42792 (right!43122 xs!286))) (size!39046 (right!43122 (right!43122 xs!286))))))))

(assert (=> d!1626855 (= (inv!77469 (right!43122 xs!286)) e!3155935)))

(declare-fun b!5055498 () Bool)

(declare-fun res!2152745 () Bool)

(assert (=> b!5055498 (=> (not res!2152745) (not e!3155935))))

(assert (=> b!5055498 (= res!2152745 (and (not (= (left!42792 (right!43122 xs!286)) Empty!15548)) (not (= (right!43122 (right!43122 xs!286)) Empty!15548))))))

(declare-fun b!5055499 () Bool)

(declare-fun res!2152746 () Bool)

(assert (=> b!5055499 (=> (not res!2152746) (not e!3155935))))

(assert (=> b!5055499 (= res!2152746 (= (cheight!15759 (right!43122 xs!286)) (+ (max!0 (height!2125 (left!42792 (right!43122 xs!286))) (height!2125 (right!43122 (right!43122 xs!286)))) 1)))))

(declare-fun b!5055500 () Bool)

(assert (=> b!5055500 (= e!3155935 (<= 0 (cheight!15759 (right!43122 xs!286))))))

(assert (= (and d!1626855 res!2152744) b!5055498))

(assert (= (and b!5055498 res!2152745) b!5055499))

(assert (= (and b!5055499 res!2152746) b!5055500))

(declare-fun m!6090078 () Bool)

(assert (=> d!1626855 m!6090078))

(declare-fun m!6090080 () Bool)

(assert (=> d!1626855 m!6090080))

(declare-fun m!6090082 () Bool)

(assert (=> b!5055499 m!6090082))

(declare-fun m!6090084 () Bool)

(assert (=> b!5055499 m!6090084))

(assert (=> b!5055499 m!6090082))

(assert (=> b!5055499 m!6090084))

(declare-fun m!6090086 () Bool)

(assert (=> b!5055499 m!6090086))

(assert (=> b!5055289 d!1626855))

(assert (=> b!5055148 d!1626781))

(assert (=> b!5055148 d!1626783))

(declare-fun d!1626857 () Bool)

(declare-fun res!2152747 () Bool)

(declare-fun e!3155936 () Bool)

(assert (=> d!1626857 (=> (not res!2152747) (not e!3155936))))

(assert (=> d!1626857 (= res!2152747 (= (csize!31326 xs!286) (+ (size!39046 (left!42792 xs!286)) (size!39046 (right!43122 xs!286)))))))

(assert (=> d!1626857 (= (inv!77469 xs!286) e!3155936)))

(declare-fun b!5055501 () Bool)

(declare-fun res!2152748 () Bool)

(assert (=> b!5055501 (=> (not res!2152748) (not e!3155936))))

(assert (=> b!5055501 (= res!2152748 (and (not (= (left!42792 xs!286) Empty!15548)) (not (= (right!43122 xs!286) Empty!15548))))))

(declare-fun b!5055502 () Bool)

(declare-fun res!2152749 () Bool)

(assert (=> b!5055502 (=> (not res!2152749) (not e!3155936))))

(assert (=> b!5055502 (= res!2152749 (= (cheight!15759 xs!286) (+ (max!0 (height!2125 (left!42792 xs!286)) (height!2125 (right!43122 xs!286))) 1)))))

(declare-fun b!5055503 () Bool)

(assert (=> b!5055503 (= e!3155936 (<= 0 (cheight!15759 xs!286)))))

(assert (= (and d!1626857 res!2152747) b!5055501))

(assert (= (and b!5055501 res!2152748) b!5055502))

(assert (= (and b!5055502 res!2152749) b!5055503))

(declare-fun m!6090088 () Bool)

(assert (=> d!1626857 m!6090088))

(declare-fun m!6090090 () Bool)

(assert (=> d!1626857 m!6090090))

(assert (=> b!5055502 m!6089778))

(assert (=> b!5055502 m!6089780))

(assert (=> b!5055502 m!6089778))

(assert (=> b!5055502 m!6089780))

(declare-fun m!6090092 () Bool)

(assert (=> b!5055502 m!6090092))

(assert (=> b!5055280 d!1626857))

(declare-fun d!1626861 () Bool)

(declare-fun c!867333 () Bool)

(assert (=> d!1626861 (= c!867333 ((_ is Node!15548) (left!42792 (right!43122 ys!41))))))

(declare-fun e!3155937 () Bool)

(assert (=> d!1626861 (= (inv!77468 (left!42792 (right!43122 ys!41))) e!3155937)))

(declare-fun b!5055504 () Bool)

(assert (=> b!5055504 (= e!3155937 (inv!77469 (left!42792 (right!43122 ys!41))))))

(declare-fun b!5055505 () Bool)

(declare-fun e!3155938 () Bool)

(assert (=> b!5055505 (= e!3155937 e!3155938)))

(declare-fun res!2152750 () Bool)

(assert (=> b!5055505 (= res!2152750 (not ((_ is Leaf!25827) (left!42792 (right!43122 ys!41)))))))

(assert (=> b!5055505 (=> res!2152750 e!3155938)))

(declare-fun b!5055506 () Bool)

(assert (=> b!5055506 (= e!3155938 (inv!77470 (left!42792 (right!43122 ys!41))))))

(assert (= (and d!1626861 c!867333) b!5055504))

(assert (= (and d!1626861 (not c!867333)) b!5055505))

(assert (= (and b!5055505 (not res!2152750)) b!5055506))

(declare-fun m!6090094 () Bool)

(assert (=> b!5055504 m!6090094))

(declare-fun m!6090096 () Bool)

(assert (=> b!5055506 m!6090096))

(assert (=> b!5055371 d!1626861))

(declare-fun d!1626863 () Bool)

(declare-fun c!867334 () Bool)

(assert (=> d!1626863 (= c!867334 ((_ is Node!15548) (right!43122 (right!43122 ys!41))))))

(declare-fun e!3155939 () Bool)

(assert (=> d!1626863 (= (inv!77468 (right!43122 (right!43122 ys!41))) e!3155939)))

(declare-fun b!5055507 () Bool)

(assert (=> b!5055507 (= e!3155939 (inv!77469 (right!43122 (right!43122 ys!41))))))

(declare-fun b!5055508 () Bool)

(declare-fun e!3155940 () Bool)

(assert (=> b!5055508 (= e!3155939 e!3155940)))

(declare-fun res!2152751 () Bool)

(assert (=> b!5055508 (= res!2152751 (not ((_ is Leaf!25827) (right!43122 (right!43122 ys!41)))))))

(assert (=> b!5055508 (=> res!2152751 e!3155940)))

(declare-fun b!5055509 () Bool)

(assert (=> b!5055509 (= e!3155940 (inv!77470 (right!43122 (right!43122 ys!41))))))

(assert (= (and d!1626863 c!867334) b!5055507))

(assert (= (and d!1626863 (not c!867334)) b!5055508))

(assert (= (and b!5055508 (not res!2152751)) b!5055509))

(declare-fun m!6090098 () Bool)

(assert (=> b!5055507 m!6090098))

(declare-fun m!6090100 () Bool)

(assert (=> b!5055509 m!6090100))

(assert (=> b!5055371 d!1626863))

(declare-fun d!1626865 () Bool)

(declare-fun lt!2087357 () Bool)

(declare-fun isEmpty!31603 (List!58542) Bool)

(assert (=> d!1626865 (= lt!2087357 (isEmpty!31603 (list!18961 (left!42792 xs!286))))))

(assert (=> d!1626865 (= lt!2087357 (= (size!39046 (left!42792 xs!286)) 0))))

(assert (=> d!1626865 (= (isEmpty!31600 (left!42792 xs!286)) lt!2087357)))

(declare-fun bs!1189364 () Bool)

(assert (= bs!1189364 d!1626865))

(assert (=> bs!1189364 m!6089718))

(assert (=> bs!1189364 m!6089718))

(declare-fun m!6090102 () Bool)

(assert (=> bs!1189364 m!6090102))

(assert (=> bs!1189364 m!6090088))

(assert (=> b!5055270 d!1626865))

(declare-fun bm!352045 () Bool)

(declare-fun call!352053 () List!58542)

(assert (=> bm!352045 (= call!352053 (++!12769 (list!18961 (left!42792 (right!43122 xs!286))) (list!18961 (right!43122 (right!43122 xs!286)))))))

(declare-fun bm!352046 () Bool)

(declare-fun call!352050 () List!58542)

(assert (=> bm!352046 (= call!352050 (++!12769 call!352053 (list!18961 ys!41)))))

(declare-fun bm!352047 () Bool)

(declare-fun call!352051 () List!58542)

(declare-fun call!352052 () List!58542)

(assert (=> bm!352047 (= call!352051 (++!12769 (list!18961 (left!42792 (right!43122 xs!286))) call!352052))))

(declare-fun bm!352048 () Bool)

(assert (=> bm!352048 (= call!352052 (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41)))))

(declare-fun b!5055510 () Bool)

(declare-fun e!3155941 () Bool)

(assert (=> b!5055510 (= e!3155941 (= call!352050 call!352051))))

(declare-fun lt!2087358 () Bool)

(assert (=> b!5055510 (= lt!2087358 (appendAssoc!292 (t!371207 (list!18961 (left!42792 (right!43122 xs!286)))) (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41)))))

(declare-fun b!5055511 () Bool)

(assert (=> b!5055511 (= e!3155941 (= call!352050 call!352051))))

(declare-fun d!1626867 () Bool)

(assert (=> d!1626867 e!3155941))

(declare-fun c!867335 () Bool)

(assert (=> d!1626867 (= c!867335 ((_ is Nil!58418) (list!18961 (left!42792 (right!43122 xs!286)))))))

(assert (=> d!1626867 (= (appendAssoc!292 (list!18961 (left!42792 (right!43122 xs!286))) (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41)) true)))

(assert (= (and d!1626867 c!867335) b!5055511))

(assert (= (and d!1626867 (not c!867335)) b!5055510))

(assert (= (or b!5055511 b!5055510) bm!352045))

(assert (= (or b!5055511 b!5055510) bm!352048))

(assert (= (or b!5055511 b!5055510) bm!352047))

(assert (= (or b!5055511 b!5055510) bm!352046))

(assert (=> bm!352045 m!6089720))

(assert (=> bm!352045 m!6089714))

(assert (=> bm!352045 m!6089974))

(assert (=> bm!352046 m!6089658))

(declare-fun m!6090108 () Bool)

(assert (=> bm!352046 m!6090108))

(assert (=> bm!352047 m!6089720))

(declare-fun m!6090110 () Bool)

(assert (=> bm!352047 m!6090110))

(assert (=> bm!352048 m!6089714))

(assert (=> bm!352048 m!6089658))

(assert (=> bm!352048 m!6089716))

(assert (=> b!5055510 m!6089714))

(assert (=> b!5055510 m!6089658))

(declare-fun m!6090112 () Bool)

(assert (=> b!5055510 m!6090112))

(assert (=> b!5055214 d!1626867))

(declare-fun d!1626871 () Bool)

(declare-fun c!867336 () Bool)

(assert (=> d!1626871 (= c!867336 ((_ is Empty!15548) (left!42792 (right!43122 xs!286))))))

(declare-fun e!3155942 () List!58542)

(assert (=> d!1626871 (= (list!18961 (left!42792 (right!43122 xs!286))) e!3155942)))

(declare-fun b!5055513 () Bool)

(declare-fun e!3155943 () List!58542)

(assert (=> b!5055513 (= e!3155942 e!3155943)))

(declare-fun c!867337 () Bool)

(assert (=> b!5055513 (= c!867337 ((_ is Leaf!25827) (left!42792 (right!43122 xs!286))))))

(declare-fun b!5055512 () Bool)

(assert (=> b!5055512 (= e!3155942 Nil!58418)))

(declare-fun b!5055514 () Bool)

(assert (=> b!5055514 (= e!3155943 (list!18963 (xs!18878 (left!42792 (right!43122 xs!286)))))))

(declare-fun b!5055515 () Bool)

(assert (=> b!5055515 (= e!3155943 (++!12769 (list!18961 (left!42792 (left!42792 (right!43122 xs!286)))) (list!18961 (right!43122 (left!42792 (right!43122 xs!286))))))))

(assert (= (and d!1626871 c!867336) b!5055512))

(assert (= (and d!1626871 (not c!867336)) b!5055513))

(assert (= (and b!5055513 c!867337) b!5055514))

(assert (= (and b!5055513 (not c!867337)) b!5055515))

(declare-fun m!6090114 () Bool)

(assert (=> b!5055514 m!6090114))

(declare-fun m!6090116 () Bool)

(assert (=> b!5055515 m!6090116))

(declare-fun m!6090118 () Bool)

(assert (=> b!5055515 m!6090118))

(assert (=> b!5055515 m!6090116))

(assert (=> b!5055515 m!6090118))

(declare-fun m!6090120 () Bool)

(assert (=> b!5055515 m!6090120))

(assert (=> b!5055214 d!1626871))

(declare-fun d!1626873 () Bool)

(declare-fun c!867338 () Bool)

(assert (=> d!1626873 (= c!867338 ((_ is Empty!15548) (right!43122 (right!43122 xs!286))))))

(declare-fun e!3155944 () List!58542)

(assert (=> d!1626873 (= (list!18961 (right!43122 (right!43122 xs!286))) e!3155944)))

(declare-fun b!5055517 () Bool)

(declare-fun e!3155945 () List!58542)

(assert (=> b!5055517 (= e!3155944 e!3155945)))

(declare-fun c!867339 () Bool)

(assert (=> b!5055517 (= c!867339 ((_ is Leaf!25827) (right!43122 (right!43122 xs!286))))))

(declare-fun b!5055516 () Bool)

(assert (=> b!5055516 (= e!3155944 Nil!58418)))

(declare-fun b!5055518 () Bool)

(assert (=> b!5055518 (= e!3155945 (list!18963 (xs!18878 (right!43122 (right!43122 xs!286)))))))

(declare-fun b!5055519 () Bool)

(assert (=> b!5055519 (= e!3155945 (++!12769 (list!18961 (left!42792 (right!43122 (right!43122 xs!286)))) (list!18961 (right!43122 (right!43122 (right!43122 xs!286))))))))

(assert (= (and d!1626873 c!867338) b!5055516))

(assert (= (and d!1626873 (not c!867338)) b!5055517))

(assert (= (and b!5055517 c!867339) b!5055518))

(assert (= (and b!5055517 (not c!867339)) b!5055519))

(declare-fun m!6090122 () Bool)

(assert (=> b!5055518 m!6090122))

(declare-fun m!6090124 () Bool)

(assert (=> b!5055519 m!6090124))

(declare-fun m!6090126 () Bool)

(assert (=> b!5055519 m!6090126))

(assert (=> b!5055519 m!6090124))

(assert (=> b!5055519 m!6090126))

(declare-fun m!6090128 () Bool)

(assert (=> b!5055519 m!6090128))

(assert (=> b!5055214 d!1626873))

(assert (=> b!5055214 d!1626803))

(declare-fun d!1626875 () Bool)

(declare-fun res!2152752 () Bool)

(declare-fun e!3155946 () Bool)

(assert (=> d!1626875 (=> (not res!2152752) (not e!3155946))))

(assert (=> d!1626875 (= res!2152752 (= (csize!31326 ys!41) (+ (size!39046 (left!42792 ys!41)) (size!39046 (right!43122 ys!41)))))))

(assert (=> d!1626875 (= (inv!77469 ys!41) e!3155946)))

(declare-fun b!5055520 () Bool)

(declare-fun res!2152753 () Bool)

(assert (=> b!5055520 (=> (not res!2152753) (not e!3155946))))

(assert (=> b!5055520 (= res!2152753 (and (not (= (left!42792 ys!41) Empty!15548)) (not (= (right!43122 ys!41) Empty!15548))))))

(declare-fun b!5055521 () Bool)

(declare-fun res!2152754 () Bool)

(assert (=> b!5055521 (=> (not res!2152754) (not e!3155946))))

(assert (=> b!5055521 (= res!2152754 (= (cheight!15759 ys!41) (+ (max!0 (height!2125 (left!42792 ys!41)) (height!2125 (right!43122 ys!41))) 1)))))

(declare-fun b!5055522 () Bool)

(assert (=> b!5055522 (= e!3155946 (<= 0 (cheight!15759 ys!41)))))

(assert (= (and d!1626875 res!2152752) b!5055520))

(assert (= (and b!5055520 res!2152753) b!5055521))

(assert (= (and b!5055521 res!2152754) b!5055522))

(declare-fun m!6090130 () Bool)

(assert (=> d!1626875 m!6090130))

(declare-fun m!6090132 () Bool)

(assert (=> d!1626875 m!6090132))

(assert (=> b!5055521 m!6089750))

(assert (=> b!5055521 m!6089752))

(assert (=> b!5055521 m!6089750))

(assert (=> b!5055521 m!6089752))

(declare-fun m!6090134 () Bool)

(assert (=> b!5055521 m!6090134))

(assert (=> b!5055283 d!1626875))

(declare-fun d!1626877 () Bool)

(declare-fun c!867340 () Bool)

(assert (=> d!1626877 (= c!867340 ((_ is Node!15548) (left!42792 (right!43122 xs!286))))))

(declare-fun e!3155947 () Bool)

(assert (=> d!1626877 (= (inv!77468 (left!42792 (right!43122 xs!286))) e!3155947)))

(declare-fun b!5055523 () Bool)

(assert (=> b!5055523 (= e!3155947 (inv!77469 (left!42792 (right!43122 xs!286))))))

(declare-fun b!5055524 () Bool)

(declare-fun e!3155948 () Bool)

(assert (=> b!5055524 (= e!3155947 e!3155948)))

(declare-fun res!2152755 () Bool)

(assert (=> b!5055524 (= res!2152755 (not ((_ is Leaf!25827) (left!42792 (right!43122 xs!286)))))))

(assert (=> b!5055524 (=> res!2152755 e!3155948)))

(declare-fun b!5055525 () Bool)

(assert (=> b!5055525 (= e!3155948 (inv!77470 (left!42792 (right!43122 xs!286))))))

(assert (= (and d!1626877 c!867340) b!5055523))

(assert (= (and d!1626877 (not c!867340)) b!5055524))

(assert (= (and b!5055524 (not res!2152755)) b!5055525))

(declare-fun m!6090136 () Bool)

(assert (=> b!5055523 m!6090136))

(declare-fun m!6090138 () Bool)

(assert (=> b!5055525 m!6090138))

(assert (=> b!5055395 d!1626877))

(declare-fun d!1626879 () Bool)

(declare-fun c!867341 () Bool)

(assert (=> d!1626879 (= c!867341 ((_ is Node!15548) (right!43122 (right!43122 xs!286))))))

(declare-fun e!3155949 () Bool)

(assert (=> d!1626879 (= (inv!77468 (right!43122 (right!43122 xs!286))) e!3155949)))

(declare-fun b!5055526 () Bool)

(assert (=> b!5055526 (= e!3155949 (inv!77469 (right!43122 (right!43122 xs!286))))))

(declare-fun b!5055527 () Bool)

(declare-fun e!3155950 () Bool)

(assert (=> b!5055527 (= e!3155949 e!3155950)))

(declare-fun res!2152756 () Bool)

(assert (=> b!5055527 (= res!2152756 (not ((_ is Leaf!25827) (right!43122 (right!43122 xs!286)))))))

(assert (=> b!5055527 (=> res!2152756 e!3155950)))

(declare-fun b!5055528 () Bool)

(assert (=> b!5055528 (= e!3155950 (inv!77470 (right!43122 (right!43122 xs!286))))))

(assert (= (and d!1626879 c!867341) b!5055526))

(assert (= (and d!1626879 (not c!867341)) b!5055527))

(assert (= (and b!5055527 (not res!2152756)) b!5055528))

(declare-fun m!6090140 () Bool)

(assert (=> b!5055526 m!6090140))

(declare-fun m!6090142 () Bool)

(assert (=> b!5055528 m!6090142))

(assert (=> b!5055395 d!1626879))

(declare-fun d!1626881 () Bool)

(declare-fun lt!2087362 () Int)

(assert (=> d!1626881 (>= lt!2087362 0)))

(declare-fun e!3155955 () Int)

(assert (=> d!1626881 (= lt!2087362 e!3155955)))

(declare-fun c!867344 () Bool)

(assert (=> d!1626881 (= c!867344 ((_ is Nil!58418) (innerList!15636 (xs!18878 xs!286))))))

(assert (=> d!1626881 (= (size!39044 (innerList!15636 (xs!18878 xs!286))) lt!2087362)))

(declare-fun b!5055539 () Bool)

(assert (=> b!5055539 (= e!3155955 0)))

(declare-fun b!5055540 () Bool)

(assert (=> b!5055540 (= e!3155955 (+ 1 (size!39044 (t!371207 (innerList!15636 (xs!18878 xs!286))))))))

(assert (= (and d!1626881 c!867344) b!5055539))

(assert (= (and d!1626881 (not c!867344)) b!5055540))

(declare-fun m!6090144 () Bool)

(assert (=> b!5055540 m!6090144))

(assert (=> d!1626761 d!1626881))

(declare-fun d!1626883 () Bool)

(assert (=> d!1626883 (= (inv!77467 (xs!18878 (left!42792 xs!286))) (<= (size!39044 (innerList!15636 (xs!18878 (left!42792 xs!286)))) 2147483647))))

(declare-fun bs!1189366 () Bool)

(assert (= bs!1189366 d!1626883))

(declare-fun m!6090146 () Bool)

(assert (=> bs!1189366 m!6090146))

(assert (=> b!5055389 d!1626883))

(declare-fun d!1626885 () Bool)

(declare-fun res!2152763 () Bool)

(declare-fun e!3155956 () Bool)

(assert (=> d!1626885 (=> (not res!2152763) (not e!3155956))))

(assert (=> d!1626885 (= res!2152763 (<= (size!39044 (list!18963 (xs!18878 ys!41))) 512))))

(assert (=> d!1626885 (= (inv!77470 ys!41) e!3155956)))

(declare-fun b!5055541 () Bool)

(declare-fun res!2152764 () Bool)

(assert (=> b!5055541 (=> (not res!2152764) (not e!3155956))))

(assert (=> b!5055541 (= res!2152764 (= (csize!31327 ys!41) (size!39044 (list!18963 (xs!18878 ys!41)))))))

(declare-fun b!5055542 () Bool)

(assert (=> b!5055542 (= e!3155956 (and (> (csize!31327 ys!41) 0) (<= (csize!31327 ys!41) 512)))))

(assert (= (and d!1626885 res!2152763) b!5055541))

(assert (= (and b!5055541 res!2152764) b!5055542))

(assert (=> d!1626885 m!6089858))

(assert (=> d!1626885 m!6089858))

(declare-fun m!6090148 () Bool)

(assert (=> d!1626885 m!6090148))

(assert (=> b!5055541 m!6089858))

(assert (=> b!5055541 m!6089858))

(assert (=> b!5055541 m!6090148))

(assert (=> b!5055285 d!1626885))

(declare-fun d!1626887 () Bool)

(assert (=> d!1626887 (= (height!2125 (left!42792 xs!286)) (ite ((_ is Empty!15548) (left!42792 xs!286)) 0 (ite ((_ is Leaf!25827) (left!42792 xs!286)) 1 (cheight!15759 (left!42792 xs!286)))))))

(assert (=> b!5055272 d!1626887))

(declare-fun d!1626889 () Bool)

(assert (=> d!1626889 (= (height!2125 (right!43122 xs!286)) (ite ((_ is Empty!15548) (right!43122 xs!286)) 0 (ite ((_ is Leaf!25827) (right!43122 xs!286)) 1 (cheight!15759 (right!43122 xs!286)))))))

(assert (=> b!5055272 d!1626889))

(declare-fun d!1626891 () Bool)

(assert (=> d!1626891 (= (inv!77467 (xs!18878 (left!42792 ys!41))) (<= (size!39044 (innerList!15636 (xs!18878 (left!42792 ys!41)))) 2147483647))))

(declare-fun bs!1189367 () Bool)

(assert (= bs!1189367 d!1626891))

(declare-fun m!6090150 () Bool)

(assert (=> bs!1189367 m!6090150))

(assert (=> b!5055365 d!1626891))

(declare-fun bm!352049 () Bool)

(declare-fun call!352057 () List!58542)

(assert (=> bm!352049 (= call!352057 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 ys!41))))))

(declare-fun bm!352050 () Bool)

(declare-fun call!352054 () List!58542)

(assert (=> bm!352050 (= call!352054 (++!12769 call!352057 (list!18961 (right!43122 ys!41))))))

(declare-fun bm!352051 () Bool)

(declare-fun call!352055 () List!58542)

(declare-fun call!352056 () List!58542)

(assert (=> bm!352051 (= call!352055 (++!12769 (list!18961 xs!286) call!352056))))

(declare-fun bm!352052 () Bool)

(assert (=> bm!352052 (= call!352056 (++!12769 (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))))))

(declare-fun b!5055546 () Bool)

(declare-fun e!3155958 () Bool)

(assert (=> b!5055546 (= e!3155958 (= call!352054 call!352055))))

(declare-fun lt!2087363 () Bool)

(assert (=> b!5055546 (= lt!2087363 (appendAssoc!292 (t!371207 (list!18961 xs!286)) (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))))))

(declare-fun b!5055547 () Bool)

(assert (=> b!5055547 (= e!3155958 (= call!352054 call!352055))))

(declare-fun d!1626893 () Bool)

(assert (=> d!1626893 e!3155958))

(declare-fun c!867345 () Bool)

(assert (=> d!1626893 (= c!867345 ((_ is Nil!58418) (list!18961 xs!286)))))

(assert (=> d!1626893 (= (appendAssoc!292 (list!18961 xs!286) (list!18961 (left!42792 ys!41)) (list!18961 (right!43122 ys!41))) true)))

(assert (= (and d!1626893 c!867345) b!5055547))

(assert (= (and d!1626893 (not c!867345)) b!5055546))

(assert (= (or b!5055547 b!5055546) bm!352049))

(assert (= (or b!5055547 b!5055546) bm!352052))

(assert (= (or b!5055547 b!5055546) bm!352051))

(assert (= (or b!5055547 b!5055546) bm!352050))

(assert (=> bm!352049 m!6089660))

(assert (=> bm!352049 m!6089728))

(declare-fun m!6090154 () Bool)

(assert (=> bm!352049 m!6090154))

(assert (=> bm!352050 m!6089704))

(declare-fun m!6090160 () Bool)

(assert (=> bm!352050 m!6090160))

(assert (=> bm!352051 m!6089660))

(declare-fun m!6090164 () Bool)

(assert (=> bm!352051 m!6090164))

(assert (=> bm!352052 m!6089728))

(assert (=> bm!352052 m!6089704))

(assert (=> bm!352052 m!6089860))

(assert (=> b!5055546 m!6089728))

(assert (=> b!5055546 m!6089704))

(declare-fun m!6090168 () Bool)

(assert (=> b!5055546 m!6090168))

(assert (=> b!5055212 d!1626893))

(assert (=> b!5055212 d!1626807))

(assert (=> b!5055212 d!1626853))

(assert (=> b!5055212 d!1626829))

(declare-fun d!1626897 () Bool)

(assert (=> d!1626897 (= (list!18963 (xs!18878 xs!286)) (innerList!15636 (xs!18878 xs!286)))))

(assert (=> b!5055342 d!1626897))

(declare-fun d!1626899 () Bool)

(declare-fun lt!2087364 () Bool)

(assert (=> d!1626899 (= lt!2087364 (isEmpty!31603 (list!18961 (right!43122 xs!286))))))

(assert (=> d!1626899 (= lt!2087364 (= (size!39046 (right!43122 xs!286)) 0))))

(assert (=> d!1626899 (= (isEmpty!31600 (right!43122 xs!286)) lt!2087364)))

(declare-fun bs!1189368 () Bool)

(assert (= bs!1189368 d!1626899))

(assert (=> bs!1189368 m!6089732))

(assert (=> bs!1189368 m!6089732))

(declare-fun m!6090170 () Bool)

(assert (=> bs!1189368 m!6090170))

(assert (=> bs!1189368 m!6090090))

(assert (=> b!5055268 d!1626899))

(declare-fun d!1626901 () Bool)

(declare-fun lt!2087365 () Int)

(assert (=> d!1626901 (>= lt!2087365 0)))

(declare-fun e!3155959 () Int)

(assert (=> d!1626901 (= lt!2087365 e!3155959)))

(declare-fun c!867346 () Bool)

(assert (=> d!1626901 (= c!867346 ((_ is Nil!58418) lt!2087342))))

(assert (=> d!1626901 (= (size!39044 lt!2087342) lt!2087365)))

(declare-fun b!5055548 () Bool)

(assert (=> b!5055548 (= e!3155959 0)))

(declare-fun b!5055549 () Bool)

(assert (=> b!5055549 (= e!3155959 (+ 1 (size!39044 (t!371207 lt!2087342))))))

(assert (= (and d!1626901 c!867346) b!5055548))

(assert (= (and d!1626901 (not c!867346)) b!5055549))

(declare-fun m!6090172 () Bool)

(assert (=> b!5055549 m!6090172))

(assert (=> b!5055314 d!1626901))

(declare-fun d!1626903 () Bool)

(declare-fun lt!2087366 () Int)

(assert (=> d!1626903 (>= lt!2087366 0)))

(declare-fun e!3155960 () Int)

(assert (=> d!1626903 (= lt!2087366 e!3155960)))

(declare-fun c!867347 () Bool)

(assert (=> d!1626903 (= c!867347 ((_ is Nil!58418) lt!2087339))))

(assert (=> d!1626903 (= (size!39044 lt!2087339) lt!2087366)))

(declare-fun b!5055550 () Bool)

(assert (=> b!5055550 (= e!3155960 0)))

(declare-fun b!5055551 () Bool)

(assert (=> b!5055551 (= e!3155960 (+ 1 (size!39044 (t!371207 lt!2087339))))))

(assert (= (and d!1626903 c!867347) b!5055550))

(assert (= (and d!1626903 (not c!867347)) b!5055551))

(assert (=> b!5055551 m!6089984))

(assert (=> b!5055314 d!1626903))

(declare-fun d!1626905 () Bool)

(declare-fun lt!2087367 () Int)

(assert (=> d!1626905 (>= lt!2087367 0)))

(declare-fun e!3155961 () Int)

(assert (=> d!1626905 (= lt!2087367 e!3155961)))

(declare-fun c!867348 () Bool)

(assert (=> d!1626905 (= c!867348 ((_ is Nil!58418) lt!2087338))))

(assert (=> d!1626905 (= (size!39044 lt!2087338) lt!2087367)))

(declare-fun b!5055552 () Bool)

(assert (=> b!5055552 (= e!3155961 0)))

(declare-fun b!5055553 () Bool)

(assert (=> b!5055553 (= e!3155961 (+ 1 (size!39044 (t!371207 lt!2087338))))))

(assert (= (and d!1626905 c!867348) b!5055552))

(assert (= (and d!1626905 (not c!867348)) b!5055553))

(declare-fun m!6090174 () Bool)

(assert (=> b!5055553 m!6090174))

(assert (=> b!5055314 d!1626905))

(declare-fun d!1626907 () Bool)

(declare-fun lt!2087368 () Bool)

(assert (=> d!1626907 (= lt!2087368 (isEmpty!31603 (list!18961 (left!42792 ys!41))))))

(assert (=> d!1626907 (= lt!2087368 (= (size!39046 (left!42792 ys!41)) 0))))

(assert (=> d!1626907 (= (isEmpty!31600 (left!42792 ys!41)) lt!2087368)))

(declare-fun bs!1189369 () Bool)

(assert (= bs!1189369 d!1626907))

(assert (=> bs!1189369 m!6089728))

(assert (=> bs!1189369 m!6089728))

(declare-fun m!6090176 () Bool)

(assert (=> bs!1189369 m!6090176))

(assert (=> bs!1189369 m!6090130))

(assert (=> b!5055258 d!1626907))

(assert (=> b!5055260 d!1626841))

(assert (=> b!5055260 d!1626843))

(declare-fun d!1626909 () Bool)

(declare-fun c!867351 () Bool)

(assert (=> d!1626909 (= c!867351 ((_ is Nil!58418) lt!2087342))))

(declare-fun e!3155967 () (InoxSet T!105006))

(assert (=> d!1626909 (= (content!10408 lt!2087342) e!3155967)))

(declare-fun b!5055564 () Bool)

(assert (=> b!5055564 (= e!3155967 ((as const (Array T!105006 Bool)) false))))

(declare-fun b!5055565 () Bool)

(assert (=> b!5055565 (= e!3155967 ((_ map or) (store ((as const (Array T!105006 Bool)) false) (h!64866 lt!2087342) true) (content!10408 (t!371207 lt!2087342))))))

(assert (= (and d!1626909 c!867351) b!5055564))

(assert (= (and d!1626909 (not c!867351)) b!5055565))

(declare-fun m!6090180 () Bool)

(assert (=> b!5055565 m!6090180))

(declare-fun m!6090184 () Bool)

(assert (=> b!5055565 m!6090184))

(assert (=> d!1626787 d!1626909))

(declare-fun d!1626911 () Bool)

(declare-fun c!867352 () Bool)

(assert (=> d!1626911 (= c!867352 ((_ is Nil!58418) lt!2087339))))

(declare-fun e!3155968 () (InoxSet T!105006))

(assert (=> d!1626911 (= (content!10408 lt!2087339) e!3155968)))

(declare-fun b!5055566 () Bool)

(assert (=> b!5055566 (= e!3155968 ((as const (Array T!105006 Bool)) false))))

(declare-fun b!5055567 () Bool)

(assert (=> b!5055567 (= e!3155968 ((_ map or) (store ((as const (Array T!105006 Bool)) false) (h!64866 lt!2087339) true) (content!10408 (t!371207 lt!2087339))))))

(assert (= (and d!1626911 c!867352) b!5055566))

(assert (= (and d!1626911 (not c!867352)) b!5055567))

(declare-fun m!6090186 () Bool)

(assert (=> b!5055567 m!6090186))

(assert (=> b!5055567 m!6089980))

(assert (=> d!1626787 d!1626911))

(declare-fun d!1626915 () Bool)

(declare-fun c!867353 () Bool)

(assert (=> d!1626915 (= c!867353 ((_ is Nil!58418) lt!2087338))))

(declare-fun e!3155970 () (InoxSet T!105006))

(assert (=> d!1626915 (= (content!10408 lt!2087338) e!3155970)))

(declare-fun b!5055571 () Bool)

(assert (=> b!5055571 (= e!3155970 ((as const (Array T!105006 Bool)) false))))

(declare-fun b!5055572 () Bool)

(assert (=> b!5055572 (= e!3155970 ((_ map or) (store ((as const (Array T!105006 Bool)) false) (h!64866 lt!2087338) true) (content!10408 (t!371207 lt!2087338))))))

(assert (= (and d!1626915 c!867353) b!5055571))

(assert (= (and d!1626915 (not c!867353)) b!5055572))

(declare-fun m!6090188 () Bool)

(assert (=> b!5055572 m!6090188))

(declare-fun m!6090190 () Bool)

(assert (=> b!5055572 m!6090190))

(assert (=> d!1626787 d!1626915))

(declare-fun d!1626917 () Bool)

(declare-fun res!2152777 () Bool)

(declare-fun e!3155971 () Bool)

(assert (=> d!1626917 (=> (not res!2152777) (not e!3155971))))

(assert (=> d!1626917 (= res!2152777 (= (csize!31326 (left!42792 ys!41)) (+ (size!39046 (left!42792 (left!42792 ys!41))) (size!39046 (right!43122 (left!42792 ys!41))))))))

(assert (=> d!1626917 (= (inv!77469 (left!42792 ys!41)) e!3155971)))

(declare-fun b!5055573 () Bool)

(declare-fun res!2152778 () Bool)

(assert (=> b!5055573 (=> (not res!2152778) (not e!3155971))))

(assert (=> b!5055573 (= res!2152778 (and (not (= (left!42792 (left!42792 ys!41)) Empty!15548)) (not (= (right!43122 (left!42792 ys!41)) Empty!15548))))))

(declare-fun b!5055574 () Bool)

(declare-fun res!2152779 () Bool)

(assert (=> b!5055574 (=> (not res!2152779) (not e!3155971))))

(assert (=> b!5055574 (= res!2152779 (= (cheight!15759 (left!42792 ys!41)) (+ (max!0 (height!2125 (left!42792 (left!42792 ys!41))) (height!2125 (right!43122 (left!42792 ys!41)))) 1)))))

(declare-fun b!5055575 () Bool)

(assert (=> b!5055575 (= e!3155971 (<= 0 (cheight!15759 (left!42792 ys!41))))))

(assert (= (and d!1626917 res!2152777) b!5055573))

(assert (= (and b!5055573 res!2152778) b!5055574))

(assert (= (and b!5055574 res!2152779) b!5055575))

(declare-fun m!6090202 () Bool)

(assert (=> d!1626917 m!6090202))

(declare-fun m!6090204 () Bool)

(assert (=> d!1626917 m!6090204))

(assert (=> b!5055574 m!6090052))

(assert (=> b!5055574 m!6090054))

(assert (=> b!5055574 m!6090052))

(assert (=> b!5055574 m!6090054))

(declare-fun m!6090206 () Bool)

(assert (=> b!5055574 m!6090206))

(assert (=> b!5055160 d!1626917))

(declare-fun d!1626921 () Bool)

(declare-fun lt!2087369 () Int)

(assert (=> d!1626921 (>= lt!2087369 0)))

(declare-fun e!3155972 () Int)

(assert (=> d!1626921 (= lt!2087369 e!3155972)))

(declare-fun c!867354 () Bool)

(assert (=> d!1626921 (= c!867354 ((_ is Nil!58418) (innerList!15636 (xs!18878 ys!41))))))

(assert (=> d!1626921 (= (size!39044 (innerList!15636 (xs!18878 ys!41))) lt!2087369)))

(declare-fun b!5055576 () Bool)

(assert (=> b!5055576 (= e!3155972 0)))

(declare-fun b!5055577 () Bool)

(assert (=> b!5055577 (= e!3155972 (+ 1 (size!39044 (t!371207 (innerList!15636 (xs!18878 ys!41))))))))

(assert (= (and d!1626921 c!867354) b!5055576))

(assert (= (and d!1626921 (not c!867354)) b!5055577))

(declare-fun m!6090208 () Bool)

(assert (=> b!5055577 m!6090208))

(assert (=> d!1626755 d!1626921))

(assert (=> b!5055147 d!1626749))

(assert (=> b!5055147 d!1626753))

(declare-fun d!1626923 () Bool)

(assert (=> d!1626923 (= (list!18963 (xs!18878 ys!41)) (innerList!15636 (xs!18878 ys!41)))))

(assert (=> b!5055338 d!1626923))

(declare-fun d!1626925 () Bool)

(declare-fun lt!2087370 () Bool)

(assert (=> d!1626925 (= lt!2087370 (isEmpty!31603 (list!18961 (right!43122 ys!41))))))

(assert (=> d!1626925 (= lt!2087370 (= (size!39046 (right!43122 ys!41)) 0))))

(assert (=> d!1626925 (= (isEmpty!31600 (right!43122 ys!41)) lt!2087370)))

(declare-fun bs!1189370 () Bool)

(assert (= bs!1189370 d!1626925))

(assert (=> bs!1189370 m!6089704))

(assert (=> bs!1189370 m!6089704))

(declare-fun m!6090210 () Bool)

(assert (=> bs!1189370 m!6090210))

(assert (=> bs!1189370 m!6090132))

(assert (=> b!5055256 d!1626925))

(declare-fun d!1626927 () Bool)

(declare-fun res!2152780 () Bool)

(declare-fun e!3155973 () Bool)

(assert (=> d!1626927 (=> (not res!2152780) (not e!3155973))))

(assert (=> d!1626927 (= res!2152780 (<= (size!39044 (list!18963 (xs!18878 (left!42792 ys!41)))) 512))))

(assert (=> d!1626927 (= (inv!77470 (left!42792 ys!41)) e!3155973)))

(declare-fun b!5055578 () Bool)

(declare-fun res!2152781 () Bool)

(assert (=> b!5055578 (=> (not res!2152781) (not e!3155973))))

(assert (=> b!5055578 (= res!2152781 (= (csize!31327 (left!42792 ys!41)) (size!39044 (list!18963 (xs!18878 (left!42792 ys!41))))))))

(declare-fun b!5055579 () Bool)

(assert (=> b!5055579 (= e!3155973 (and (> (csize!31327 (left!42792 ys!41)) 0) (<= (csize!31327 (left!42792 ys!41)) 512)))))

(assert (= (and d!1626927 res!2152780) b!5055578))

(assert (= (and b!5055578 res!2152781) b!5055579))

(assert (=> d!1626927 m!6090074))

(assert (=> d!1626927 m!6090074))

(declare-fun m!6090212 () Bool)

(assert (=> d!1626927 m!6090212))

(assert (=> b!5055578 m!6090074))

(assert (=> b!5055578 m!6090074))

(assert (=> b!5055578 m!6090212))

(assert (=> b!5055162 d!1626927))

(declare-fun d!1626929 () Bool)

(declare-fun res!2152782 () Bool)

(declare-fun e!3155974 () Bool)

(assert (=> d!1626929 (=> (not res!2152782) (not e!3155974))))

(assert (=> d!1626929 (= res!2152782 (<= (size!39044 (list!18963 (xs!18878 (right!43122 ys!41)))) 512))))

(assert (=> d!1626929 (= (inv!77470 (right!43122 ys!41)) e!3155974)))

(declare-fun b!5055580 () Bool)

(declare-fun res!2152783 () Bool)

(assert (=> b!5055580 (=> (not res!2152783) (not e!3155974))))

(assert (=> b!5055580 (= res!2152783 (= (csize!31327 (right!43122 ys!41)) (size!39044 (list!18963 (xs!18878 (right!43122 ys!41))))))))

(declare-fun b!5055581 () Bool)

(assert (=> b!5055581 (= e!3155974 (and (> (csize!31327 (right!43122 ys!41)) 0) (<= (csize!31327 (right!43122 ys!41)) 512)))))

(assert (= (and d!1626929 res!2152782) b!5055580))

(assert (= (and b!5055580 res!2152783) b!5055581))

(assert (=> d!1626929 m!6089988))

(assert (=> d!1626929 m!6089988))

(declare-fun m!6090214 () Bool)

(assert (=> d!1626929 m!6090214))

(assert (=> b!5055580 m!6089988))

(assert (=> b!5055580 m!6089988))

(assert (=> b!5055580 m!6090214))

(assert (=> b!5055165 d!1626929))

(declare-fun bm!352053 () Bool)

(declare-fun call!352061 () List!58542)

(assert (=> bm!352053 (= call!352061 (++!12769 (list!18961 (left!42792 xs!286)) (list!18961 (right!43122 xs!286))))))

(declare-fun bm!352054 () Bool)

(declare-fun call!352058 () List!58542)

(assert (=> bm!352054 (= call!352058 (++!12769 call!352061 (list!18961 ys!41)))))

(declare-fun bm!352055 () Bool)

(declare-fun call!352059 () List!58542)

(declare-fun call!352060 () List!58542)

(assert (=> bm!352055 (= call!352059 (++!12769 (list!18961 (left!42792 xs!286)) call!352060))))

(declare-fun bm!352056 () Bool)

(assert (=> bm!352056 (= call!352060 (++!12769 (list!18961 (right!43122 xs!286)) (list!18961 ys!41)))))

(declare-fun b!5055586 () Bool)

(declare-fun e!3155977 () Bool)

(assert (=> b!5055586 (= e!3155977 (= call!352058 call!352059))))

(declare-fun lt!2087373 () Bool)

(assert (=> b!5055586 (= lt!2087373 (appendAssoc!292 (t!371207 (list!18961 (left!42792 xs!286))) (list!18961 (right!43122 xs!286)) (list!18961 ys!41)))))

(declare-fun b!5055587 () Bool)

(assert (=> b!5055587 (= e!3155977 (= call!352058 call!352059))))

(declare-fun d!1626931 () Bool)

(assert (=> d!1626931 e!3155977))

(declare-fun c!867357 () Bool)

(assert (=> d!1626931 (= c!867357 ((_ is Nil!58418) (list!18961 (left!42792 xs!286))))))

(assert (=> d!1626931 (= (appendAssoc!292 (list!18961 (left!42792 xs!286)) (list!18961 (right!43122 xs!286)) (list!18961 ys!41)) true)))

(assert (= (and d!1626931 c!867357) b!5055587))

(assert (= (and d!1626931 (not c!867357)) b!5055586))

(assert (= (or b!5055587 b!5055586) bm!352053))

(assert (= (or b!5055587 b!5055586) bm!352056))

(assert (= (or b!5055587 b!5055586) bm!352055))

(assert (= (or b!5055587 b!5055586) bm!352054))

(assert (=> bm!352053 m!6089718))

(assert (=> bm!352053 m!6089732))

(assert (=> bm!352053 m!6089864))

(assert (=> bm!352054 m!6089658))

(declare-fun m!6090216 () Bool)

(assert (=> bm!352054 m!6090216))

(assert (=> bm!352055 m!6089718))

(declare-fun m!6090218 () Bool)

(assert (=> bm!352055 m!6090218))

(assert (=> bm!352056 m!6089732))

(assert (=> bm!352056 m!6089658))

(declare-fun m!6090220 () Bool)

(assert (=> bm!352056 m!6090220))

(assert (=> b!5055586 m!6089732))

(assert (=> b!5055586 m!6089658))

(declare-fun m!6090222 () Bool)

(assert (=> b!5055586 m!6090222))

(assert (=> b!5055215 d!1626931))

(assert (=> b!5055215 d!1626821))

(assert (=> b!5055215 d!1626823))

(assert (=> b!5055215 d!1626803))

(declare-fun d!1626933 () Bool)

(assert (=> d!1626933 (= (inv!77467 (xs!18878 (right!43122 ys!41))) (<= (size!39044 (innerList!15636 (xs!18878 (right!43122 ys!41)))) 2147483647))))

(declare-fun bs!1189371 () Bool)

(assert (= bs!1189371 d!1626933))

(declare-fun m!6090224 () Bool)

(assert (=> bs!1189371 m!6090224))

(assert (=> b!5055372 d!1626933))

(assert (=> b!5055213 d!1626803))

(assert (=> b!5055213 d!1626821))

(assert (=> b!5055213 d!1626873))

(declare-fun bm!352057 () Bool)

(declare-fun call!352065 () List!58542)

(assert (=> bm!352057 (= call!352065 (++!12769 (list!18961 (left!42792 xs!286)) (list!18961 (left!42792 (right!43122 xs!286)))))))

(declare-fun bm!352058 () Bool)

(declare-fun call!352062 () List!58542)

(assert (=> bm!352058 (= call!352062 (++!12769 call!352065 (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41))))))

(declare-fun bm!352059 () Bool)

(declare-fun call!352063 () List!58542)

(declare-fun call!352064 () List!58542)

(assert (=> bm!352059 (= call!352063 (++!12769 (list!18961 (left!42792 xs!286)) call!352064))))

(declare-fun bm!352060 () Bool)

(assert (=> bm!352060 (= call!352064 (++!12769 (list!18961 (left!42792 (right!43122 xs!286))) (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41))))))

(declare-fun b!5055590 () Bool)

(declare-fun e!3155979 () Bool)

(assert (=> b!5055590 (= e!3155979 (= call!352062 call!352063))))

(declare-fun lt!2087375 () Bool)

(assert (=> b!5055590 (= lt!2087375 (appendAssoc!292 (t!371207 (list!18961 (left!42792 xs!286))) (list!18961 (left!42792 (right!43122 xs!286))) (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41))))))

(declare-fun b!5055591 () Bool)

(assert (=> b!5055591 (= e!3155979 (= call!352062 call!352063))))

(declare-fun d!1626935 () Bool)

(assert (=> d!1626935 e!3155979))

(declare-fun c!867359 () Bool)

(assert (=> d!1626935 (= c!867359 ((_ is Nil!58418) (list!18961 (left!42792 xs!286))))))

(assert (=> d!1626935 (= (appendAssoc!292 (list!18961 (left!42792 xs!286)) (list!18961 (left!42792 (right!43122 xs!286))) (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41))) true)))

(assert (= (and d!1626935 c!867359) b!5055591))

(assert (= (and d!1626935 (not c!867359)) b!5055590))

(assert (= (or b!5055591 b!5055590) bm!352057))

(assert (= (or b!5055591 b!5055590) bm!352060))

(assert (= (or b!5055591 b!5055590) bm!352059))

(assert (= (or b!5055591 b!5055590) bm!352058))

(assert (=> bm!352057 m!6089718))

(assert (=> bm!352057 m!6089720))

(declare-fun m!6090228 () Bool)

(assert (=> bm!352057 m!6090228))

(assert (=> bm!352058 m!6089716))

(declare-fun m!6090230 () Bool)

(assert (=> bm!352058 m!6090230))

(assert (=> bm!352059 m!6089718))

(declare-fun m!6090232 () Bool)

(assert (=> bm!352059 m!6090232))

(assert (=> bm!352060 m!6089720))

(assert (=> bm!352060 m!6089716))

(declare-fun m!6090234 () Bool)

(assert (=> bm!352060 m!6090234))

(assert (=> b!5055590 m!6089720))

(assert (=> b!5055590 m!6089716))

(declare-fun m!6090236 () Bool)

(assert (=> b!5055590 m!6090236))

(assert (=> b!5055213 d!1626935))

(assert (=> b!5055213 d!1626871))

(declare-fun b!5055596 () Bool)

(declare-fun e!3155981 () List!58542)

(assert (=> b!5055596 (= e!3155981 (Cons!58418 (h!64866 (list!18961 (right!43122 (right!43122 xs!286)))) (++!12769 (t!371207 (list!18961 (right!43122 (right!43122 xs!286)))) (list!18961 ys!41))))))

(declare-fun d!1626939 () Bool)

(declare-fun e!3155982 () Bool)

(assert (=> d!1626939 e!3155982))

(declare-fun res!2152787 () Bool)

(assert (=> d!1626939 (=> (not res!2152787) (not e!3155982))))

(declare-fun lt!2087376 () List!58542)

(assert (=> d!1626939 (= res!2152787 (= (content!10408 lt!2087376) ((_ map or) (content!10408 (list!18961 (right!43122 (right!43122 xs!286)))) (content!10408 (list!18961 ys!41)))))))

(assert (=> d!1626939 (= lt!2087376 e!3155981)))

(declare-fun c!867360 () Bool)

(assert (=> d!1626939 (= c!867360 ((_ is Nil!58418) (list!18961 (right!43122 (right!43122 xs!286)))))))

(assert (=> d!1626939 (= (++!12769 (list!18961 (right!43122 (right!43122 xs!286))) (list!18961 ys!41)) lt!2087376)))

(declare-fun b!5055598 () Bool)

(assert (=> b!5055598 (= e!3155982 (or (not (= (list!18961 ys!41) Nil!58418)) (= lt!2087376 (list!18961 (right!43122 (right!43122 xs!286))))))))

(declare-fun b!5055595 () Bool)

(assert (=> b!5055595 (= e!3155981 (list!18961 ys!41))))

(declare-fun b!5055597 () Bool)

(declare-fun res!2152788 () Bool)

(assert (=> b!5055597 (=> (not res!2152788) (not e!3155982))))

(assert (=> b!5055597 (= res!2152788 (= (size!39044 lt!2087376) (+ (size!39044 (list!18961 (right!43122 (right!43122 xs!286)))) (size!39044 (list!18961 ys!41)))))))

(assert (= (and d!1626939 c!867360) b!5055595))

(assert (= (and d!1626939 (not c!867360)) b!5055596))

(assert (= (and d!1626939 res!2152787) b!5055597))

(assert (= (and b!5055597 res!2152788) b!5055598))

(assert (=> b!5055596 m!6089658))

(declare-fun m!6090244 () Bool)

(assert (=> b!5055596 m!6090244))

(declare-fun m!6090246 () Bool)

(assert (=> d!1626939 m!6090246))

(assert (=> d!1626939 m!6089714))

(declare-fun m!6090248 () Bool)

(assert (=> d!1626939 m!6090248))

(assert (=> d!1626939 m!6089658))

(declare-fun m!6090250 () Bool)

(assert (=> d!1626939 m!6090250))

(declare-fun m!6090252 () Bool)

(assert (=> b!5055597 m!6090252))

(assert (=> b!5055597 m!6089714))

(declare-fun m!6090254 () Bool)

(assert (=> b!5055597 m!6090254))

(assert (=> b!5055597 m!6089658))

(declare-fun m!6090256 () Bool)

(assert (=> b!5055597 m!6090256))

(assert (=> b!5055213 d!1626939))

(declare-fun b!5055605 () Bool)

(declare-fun e!3155986 () Bool)

(assert (=> b!5055605 (= e!3155986 (not (isEmpty!31600 (right!43122 (right!43122 xs!286)))))))

(declare-fun b!5055606 () Bool)

(declare-fun res!2152800 () Bool)

(assert (=> b!5055606 (=> (not res!2152800) (not e!3155986))))

(assert (=> b!5055606 (= res!2152800 (isBalanced!4410 (right!43122 (right!43122 xs!286))))))

(declare-fun b!5055607 () Bool)

(declare-fun res!2152799 () Bool)

(assert (=> b!5055607 (=> (not res!2152799) (not e!3155986))))

(assert (=> b!5055607 (= res!2152799 (not (isEmpty!31600 (left!42792 (right!43122 xs!286)))))))

(declare-fun d!1626943 () Bool)

(declare-fun res!2152795 () Bool)

(declare-fun e!3155985 () Bool)

(assert (=> d!1626943 (=> res!2152795 e!3155985)))

(assert (=> d!1626943 (= res!2152795 (not ((_ is Node!15548) (right!43122 xs!286))))))

(assert (=> d!1626943 (= (isBalanced!4410 (right!43122 xs!286)) e!3155985)))

(declare-fun b!5055608 () Bool)

(assert (=> b!5055608 (= e!3155985 e!3155986)))

(declare-fun res!2152796 () Bool)

(assert (=> b!5055608 (=> (not res!2152796) (not e!3155986))))

(assert (=> b!5055608 (= res!2152796 (<= (- 1) (- (height!2125 (left!42792 (right!43122 xs!286))) (height!2125 (right!43122 (right!43122 xs!286))))))))

(declare-fun b!5055609 () Bool)

(declare-fun res!2152797 () Bool)

(assert (=> b!5055609 (=> (not res!2152797) (not e!3155986))))

(assert (=> b!5055609 (= res!2152797 (<= (- (height!2125 (left!42792 (right!43122 xs!286))) (height!2125 (right!43122 (right!43122 xs!286)))) 1))))

(declare-fun b!5055610 () Bool)

(declare-fun res!2152798 () Bool)

(assert (=> b!5055610 (=> (not res!2152798) (not e!3155986))))

(assert (=> b!5055610 (= res!2152798 (isBalanced!4410 (left!42792 (right!43122 xs!286))))))

(assert (= (and d!1626943 (not res!2152795)) b!5055608))

(assert (= (and b!5055608 res!2152796) b!5055609))

(assert (= (and b!5055609 res!2152797) b!5055610))

(assert (= (and b!5055610 res!2152798) b!5055606))

(assert (= (and b!5055606 res!2152800) b!5055607))

(assert (= (and b!5055607 res!2152799) b!5055605))

(declare-fun m!6090266 () Bool)

(assert (=> b!5055606 m!6090266))

(declare-fun m!6090268 () Bool)

(assert (=> b!5055610 m!6090268))

(assert (=> b!5055608 m!6090082))

(assert (=> b!5055608 m!6090084))

(assert (=> b!5055609 m!6090082))

(assert (=> b!5055609 m!6090084))

(declare-fun m!6090270 () Bool)

(assert (=> b!5055605 m!6090270))

(declare-fun m!6090272 () Bool)

(assert (=> b!5055607 m!6090272))

(assert (=> b!5055269 d!1626943))

(declare-fun bm!352061 () Bool)

(declare-fun call!352069 () List!58542)

(assert (=> bm!352061 (= call!352069 (++!12769 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41)))))))

(declare-fun bm!352062 () Bool)

(declare-fun call!352066 () List!58542)

(assert (=> bm!352062 (= call!352066 (++!12769 call!352069 (list!18961 (right!43122 (left!42792 ys!41)))))))

(declare-fun bm!352063 () Bool)

(declare-fun call!352067 () List!58542)

(declare-fun call!352068 () List!58542)

(assert (=> bm!352063 (= call!352067 (++!12769 (list!18961 xs!286) call!352068))))

(declare-fun bm!352064 () Bool)

(assert (=> bm!352064 (= call!352068 (++!12769 (list!18961 (left!42792 (left!42792 ys!41))) (list!18961 (right!43122 (left!42792 ys!41)))))))

(declare-fun b!5055613 () Bool)

(declare-fun e!3155988 () Bool)

(assert (=> b!5055613 (= e!3155988 (= call!352066 call!352067))))

(declare-fun lt!2087377 () Bool)

(assert (=> b!5055613 (= lt!2087377 (appendAssoc!292 (t!371207 (list!18961 xs!286)) (list!18961 (left!42792 (left!42792 ys!41))) (list!18961 (right!43122 (left!42792 ys!41)))))))

(declare-fun b!5055614 () Bool)

(assert (=> b!5055614 (= e!3155988 (= call!352066 call!352067))))

(declare-fun d!1626951 () Bool)

(assert (=> d!1626951 e!3155988))

(declare-fun c!867361 () Bool)

(assert (=> d!1626951 (= c!867361 ((_ is Nil!58418) (list!18961 xs!286)))))

(assert (=> d!1626951 (= (appendAssoc!292 (list!18961 xs!286) (list!18961 (left!42792 (left!42792 ys!41))) (list!18961 (right!43122 (left!42792 ys!41)))) true)))

(assert (= (and d!1626951 c!867361) b!5055614))

(assert (= (and d!1626951 (not c!867361)) b!5055613))

(assert (= (or b!5055614 b!5055613) bm!352061))

(assert (= (or b!5055614 b!5055613) bm!352064))

(assert (= (or b!5055614 b!5055613) bm!352063))

(assert (= (or b!5055614 b!5055613) bm!352062))

(assert (=> bm!352061 m!6089660))

(assert (=> bm!352061 m!6089706))

(assert (=> bm!352061 m!6089708))

(assert (=> bm!352062 m!6089710))

(declare-fun m!6090276 () Bool)

(assert (=> bm!352062 m!6090276))

(assert (=> bm!352063 m!6089660))

(declare-fun m!6090278 () Bool)

(assert (=> bm!352063 m!6090278))

(assert (=> bm!352064 m!6089706))

(assert (=> bm!352064 m!6089710))

(assert (=> bm!352064 m!6090076))

(assert (=> b!5055613 m!6089706))

(assert (=> b!5055613 m!6089710))

(declare-fun m!6090280 () Bool)

(assert (=> b!5055613 m!6090280))

(assert (=> b!5055217 d!1626951))

(assert (=> b!5055217 d!1626807))

(assert (=> b!5055217 d!1626837))

(assert (=> b!5055217 d!1626831))

(declare-fun b!5055618 () Bool)

(declare-fun e!3155992 () Bool)

(assert (=> b!5055618 (= e!3155992 (not (isEmpty!31600 (right!43122 (left!42792 xs!286)))))))

(declare-fun b!5055619 () Bool)

(declare-fun res!2152809 () Bool)

(assert (=> b!5055619 (=> (not res!2152809) (not e!3155992))))

(assert (=> b!5055619 (= res!2152809 (isBalanced!4410 (right!43122 (left!42792 xs!286))))))

(declare-fun b!5055620 () Bool)

(declare-fun res!2152808 () Bool)

(assert (=> b!5055620 (=> (not res!2152808) (not e!3155992))))

(assert (=> b!5055620 (= res!2152808 (not (isEmpty!31600 (left!42792 (left!42792 xs!286)))))))

(declare-fun d!1626955 () Bool)

(declare-fun res!2152804 () Bool)

(declare-fun e!3155991 () Bool)

(assert (=> d!1626955 (=> res!2152804 e!3155991)))

(assert (=> d!1626955 (= res!2152804 (not ((_ is Node!15548) (left!42792 xs!286))))))

(assert (=> d!1626955 (= (isBalanced!4410 (left!42792 xs!286)) e!3155991)))

(declare-fun b!5055621 () Bool)

(assert (=> b!5055621 (= e!3155991 e!3155992)))

(declare-fun res!2152805 () Bool)

(assert (=> b!5055621 (=> (not res!2152805) (not e!3155992))))

(assert (=> b!5055621 (= res!2152805 (<= (- 1) (- (height!2125 (left!42792 (left!42792 xs!286))) (height!2125 (right!43122 (left!42792 xs!286))))))))

(declare-fun b!5055622 () Bool)

(declare-fun res!2152806 () Bool)

(assert (=> b!5055622 (=> (not res!2152806) (not e!3155992))))

(assert (=> b!5055622 (= res!2152806 (<= (- (height!2125 (left!42792 (left!42792 xs!286))) (height!2125 (right!43122 (left!42792 xs!286)))) 1))))

(declare-fun b!5055623 () Bool)

(declare-fun res!2152807 () Bool)

(assert (=> b!5055623 (=> (not res!2152807) (not e!3155992))))

(assert (=> b!5055623 (= res!2152807 (isBalanced!4410 (left!42792 (left!42792 xs!286))))))

(assert (= (and d!1626955 (not res!2152804)) b!5055621))

(assert (= (and b!5055621 res!2152805) b!5055622))

(assert (= (and b!5055622 res!2152806) b!5055623))

(assert (= (and b!5055623 res!2152807) b!5055619))

(assert (= (and b!5055619 res!2152809) b!5055620))

(assert (= (and b!5055620 res!2152808) b!5055618))

(declare-fun m!6090290 () Bool)

(assert (=> b!5055619 m!6090290))

(declare-fun m!6090294 () Bool)

(assert (=> b!5055623 m!6090294))

(assert (=> b!5055621 m!6089934))

(assert (=> b!5055621 m!6089936))

(assert (=> b!5055622 m!6089934))

(assert (=> b!5055622 m!6089936))

(declare-fun m!6090296 () Bool)

(assert (=> b!5055618 m!6090296))

(declare-fun m!6090298 () Bool)

(assert (=> b!5055620 m!6090298))

(assert (=> b!5055273 d!1626955))

(declare-fun d!1626963 () Bool)

(assert (=> d!1626963 (= (inv!77467 (xs!18878 (right!43122 xs!286))) (<= (size!39044 (innerList!15636 (xs!18878 (right!43122 xs!286)))) 2147483647))))

(declare-fun bs!1189373 () Bool)

(assert (= bs!1189373 d!1626963))

(declare-fun m!6090300 () Bool)

(assert (=> bs!1189373 m!6090300))

(assert (=> b!5055396 d!1626963))

(assert (=> b!5055271 d!1626887))

(assert (=> b!5055271 d!1626889))

(declare-fun d!1626965 () Bool)

(declare-fun c!867364 () Bool)

(assert (=> d!1626965 (= c!867364 ((_ is Node!15548) (left!42792 (left!42792 xs!286))))))

(declare-fun e!3155996 () Bool)

(assert (=> d!1626965 (= (inv!77468 (left!42792 (left!42792 xs!286))) e!3155996)))

(declare-fun b!5055629 () Bool)

(assert (=> b!5055629 (= e!3155996 (inv!77469 (left!42792 (left!42792 xs!286))))))

(declare-fun b!5055630 () Bool)

(declare-fun e!3155997 () Bool)

(assert (=> b!5055630 (= e!3155996 e!3155997)))

(declare-fun res!2152813 () Bool)

(assert (=> b!5055630 (= res!2152813 (not ((_ is Leaf!25827) (left!42792 (left!42792 xs!286)))))))

(assert (=> b!5055630 (=> res!2152813 e!3155997)))

(declare-fun b!5055631 () Bool)

(assert (=> b!5055631 (= e!3155997 (inv!77470 (left!42792 (left!42792 xs!286))))))

(assert (= (and d!1626965 c!867364) b!5055629))

(assert (= (and d!1626965 (not c!867364)) b!5055630))

(assert (= (and b!5055630 (not res!2152813)) b!5055631))

(declare-fun m!6090304 () Bool)

(assert (=> b!5055629 m!6090304))

(declare-fun m!6090306 () Bool)

(assert (=> b!5055631 m!6090306))

(assert (=> b!5055388 d!1626965))

(declare-fun d!1626969 () Bool)

(declare-fun c!867365 () Bool)

(assert (=> d!1626969 (= c!867365 ((_ is Node!15548) (right!43122 (left!42792 xs!286))))))

(declare-fun e!3155998 () Bool)

(assert (=> d!1626969 (= (inv!77468 (right!43122 (left!42792 xs!286))) e!3155998)))

(declare-fun b!5055632 () Bool)

(assert (=> b!5055632 (= e!3155998 (inv!77469 (right!43122 (left!42792 xs!286))))))

(declare-fun b!5055633 () Bool)

(declare-fun e!3155999 () Bool)

(assert (=> b!5055633 (= e!3155998 e!3155999)))

(declare-fun res!2152814 () Bool)

(assert (=> b!5055633 (= res!2152814 (not ((_ is Leaf!25827) (right!43122 (left!42792 xs!286)))))))

(assert (=> b!5055633 (=> res!2152814 e!3155999)))

(declare-fun b!5055634 () Bool)

(assert (=> b!5055634 (= e!3155999 (inv!77470 (right!43122 (left!42792 xs!286))))))

(assert (= (and d!1626969 c!867365) b!5055632))

(assert (= (and d!1626969 (not c!867365)) b!5055633))

(assert (= (and b!5055633 (not res!2152814)) b!5055634))

(declare-fun m!6090310 () Bool)

(assert (=> b!5055632 m!6090310))

(declare-fun m!6090312 () Bool)

(assert (=> b!5055634 m!6090312))

(assert (=> b!5055388 d!1626969))

(declare-fun tp!1413096 () Bool)

(declare-fun b!5055635 () Bool)

(declare-fun tp!1413095 () Bool)

(declare-fun e!3156001 () Bool)

(assert (=> b!5055635 (= e!3156001 (and (inv!77468 (left!42792 (left!42792 (right!43122 ys!41)))) tp!1413096 (inv!77468 (right!43122 (left!42792 (right!43122 ys!41)))) tp!1413095))))

(declare-fun b!5055637 () Bool)

(declare-fun e!3156000 () Bool)

(declare-fun tp!1413094 () Bool)

(assert (=> b!5055637 (= e!3156000 tp!1413094)))

(declare-fun b!5055636 () Bool)

(assert (=> b!5055636 (= e!3156001 (and (inv!77467 (xs!18878 (left!42792 (right!43122 ys!41)))) e!3156000))))

(assert (=> b!5055371 (= tp!1413061 (and (inv!77468 (left!42792 (right!43122 ys!41))) e!3156001))))

(assert (= (and b!5055371 ((_ is Node!15548) (left!42792 (right!43122 ys!41)))) b!5055635))

(assert (= b!5055636 b!5055637))

(assert (= (and b!5055371 ((_ is Leaf!25827) (left!42792 (right!43122 ys!41)))) b!5055636))

(declare-fun m!6090314 () Bool)

(assert (=> b!5055635 m!6090314))

(declare-fun m!6090316 () Bool)

(assert (=> b!5055635 m!6090316))

(declare-fun m!6090318 () Bool)

(assert (=> b!5055636 m!6090318))

(assert (=> b!5055371 m!6089880))

(declare-fun e!3156005 () Bool)

(declare-fun b!5055642 () Bool)

(declare-fun tp!1413098 () Bool)

(declare-fun tp!1413099 () Bool)

(assert (=> b!5055642 (= e!3156005 (and (inv!77468 (left!42792 (right!43122 (right!43122 ys!41)))) tp!1413099 (inv!77468 (right!43122 (right!43122 (right!43122 ys!41)))) tp!1413098))))

(declare-fun b!5055644 () Bool)

(declare-fun e!3156004 () Bool)

(declare-fun tp!1413097 () Bool)

(assert (=> b!5055644 (= e!3156004 tp!1413097)))

(declare-fun b!5055643 () Bool)

(assert (=> b!5055643 (= e!3156005 (and (inv!77467 (xs!18878 (right!43122 (right!43122 ys!41)))) e!3156004))))

(assert (=> b!5055371 (= tp!1413060 (and (inv!77468 (right!43122 (right!43122 ys!41))) e!3156005))))

(assert (= (and b!5055371 ((_ is Node!15548) (right!43122 (right!43122 ys!41)))) b!5055642))

(assert (= b!5055643 b!5055644))

(assert (= (and b!5055371 ((_ is Leaf!25827) (right!43122 (right!43122 ys!41)))) b!5055643))

(declare-fun m!6090320 () Bool)

(assert (=> b!5055642 m!6090320))

(declare-fun m!6090322 () Bool)

(assert (=> b!5055642 m!6090322))

(declare-fun m!6090324 () Bool)

(assert (=> b!5055643 m!6090324))

(assert (=> b!5055371 m!6089882))

(declare-fun b!5055645 () Bool)

(declare-fun e!3156006 () Bool)

(declare-fun tp!1413100 () Bool)

(assert (=> b!5055645 (= e!3156006 (and tp_is_empty!37019 tp!1413100))))

(assert (=> b!5055366 (= tp!1413056 e!3156006)))

(assert (= (and b!5055366 ((_ is Cons!58418) (innerList!15636 (xs!18878 (left!42792 ys!41))))) b!5055645))

(declare-fun b!5055646 () Bool)

(declare-fun tp!1413102 () Bool)

(declare-fun tp!1413103 () Bool)

(declare-fun e!3156008 () Bool)

(assert (=> b!5055646 (= e!3156008 (and (inv!77468 (left!42792 (left!42792 (left!42792 ys!41)))) tp!1413103 (inv!77468 (right!43122 (left!42792 (left!42792 ys!41)))) tp!1413102))))

(declare-fun b!5055648 () Bool)

(declare-fun e!3156007 () Bool)

(declare-fun tp!1413101 () Bool)

(assert (=> b!5055648 (= e!3156007 tp!1413101)))

(declare-fun b!5055647 () Bool)

(assert (=> b!5055647 (= e!3156008 (and (inv!77467 (xs!18878 (left!42792 (left!42792 ys!41)))) e!3156007))))

(assert (=> b!5055364 (= tp!1413058 (and (inv!77468 (left!42792 (left!42792 ys!41))) e!3156008))))

(assert (= (and b!5055364 ((_ is Node!15548) (left!42792 (left!42792 ys!41)))) b!5055646))

(assert (= b!5055647 b!5055648))

(assert (= (and b!5055364 ((_ is Leaf!25827) (left!42792 (left!42792 ys!41)))) b!5055647))

(declare-fun m!6090340 () Bool)

(assert (=> b!5055646 m!6090340))

(declare-fun m!6090342 () Bool)

(assert (=> b!5055646 m!6090342))

(declare-fun m!6090344 () Bool)

(assert (=> b!5055647 m!6090344))

(assert (=> b!5055364 m!6089870))

(declare-fun tp!1413106 () Bool)

(declare-fun e!3156012 () Bool)

(declare-fun b!5055653 () Bool)

(declare-fun tp!1413105 () Bool)

(assert (=> b!5055653 (= e!3156012 (and (inv!77468 (left!42792 (right!43122 (left!42792 ys!41)))) tp!1413106 (inv!77468 (right!43122 (right!43122 (left!42792 ys!41)))) tp!1413105))))

(declare-fun b!5055655 () Bool)

(declare-fun e!3156011 () Bool)

(declare-fun tp!1413104 () Bool)

(assert (=> b!5055655 (= e!3156011 tp!1413104)))

(declare-fun b!5055654 () Bool)

(assert (=> b!5055654 (= e!3156012 (and (inv!77467 (xs!18878 (right!43122 (left!42792 ys!41)))) e!3156011))))

(assert (=> b!5055364 (= tp!1413057 (and (inv!77468 (right!43122 (left!42792 ys!41))) e!3156012))))

(assert (= (and b!5055364 ((_ is Node!15548) (right!43122 (left!42792 ys!41)))) b!5055653))

(assert (= b!5055654 b!5055655))

(assert (= (and b!5055364 ((_ is Leaf!25827) (right!43122 (left!42792 ys!41)))) b!5055654))

(declare-fun m!6090346 () Bool)

(assert (=> b!5055653 m!6090346))

(declare-fun m!6090348 () Bool)

(assert (=> b!5055653 m!6090348))

(declare-fun m!6090350 () Bool)

(assert (=> b!5055654 m!6090350))

(assert (=> b!5055364 m!6089872))

(declare-fun b!5055656 () Bool)

(declare-fun e!3156013 () Bool)

(declare-fun tp!1413107 () Bool)

(assert (=> b!5055656 (= e!3156013 (and tp_is_empty!37019 tp!1413107))))

(assert (=> b!5055390 (= tp!1413072 e!3156013)))

(assert (= (and b!5055390 ((_ is Cons!58418) (innerList!15636 (xs!18878 (left!42792 xs!286))))) b!5055656))

(declare-fun b!5055658 () Bool)

(declare-fun e!3156016 () Bool)

(declare-fun tp!1413108 () Bool)

(assert (=> b!5055658 (= e!3156016 (and tp_is_empty!37019 tp!1413108))))

(assert (=> b!5055397 (= tp!1413077 e!3156016)))

(assert (= (and b!5055397 ((_ is Cons!58418) (innerList!15636 (xs!18878 (right!43122 xs!286))))) b!5055658))

(declare-fun tp!1413110 () Bool)

(declare-fun tp!1413111 () Bool)

(declare-fun e!3156018 () Bool)

(declare-fun b!5055662 () Bool)

(assert (=> b!5055662 (= e!3156018 (and (inv!77468 (left!42792 (left!42792 (right!43122 xs!286)))) tp!1413111 (inv!77468 (right!43122 (left!42792 (right!43122 xs!286)))) tp!1413110))))

(declare-fun b!5055664 () Bool)

(declare-fun e!3156017 () Bool)

(declare-fun tp!1413109 () Bool)

(assert (=> b!5055664 (= e!3156017 tp!1413109)))

(declare-fun b!5055663 () Bool)

(assert (=> b!5055663 (= e!3156018 (and (inv!77467 (xs!18878 (left!42792 (right!43122 xs!286)))) e!3156017))))

(assert (=> b!5055395 (= tp!1413079 (and (inv!77468 (left!42792 (right!43122 xs!286))) e!3156018))))

(assert (= (and b!5055395 ((_ is Node!15548) (left!42792 (right!43122 xs!286)))) b!5055662))

(assert (= b!5055663 b!5055664))

(assert (= (and b!5055395 ((_ is Leaf!25827) (left!42792 (right!43122 xs!286)))) b!5055663))

(declare-fun m!6090360 () Bool)

(assert (=> b!5055662 m!6090360))

(declare-fun m!6090363 () Bool)

(assert (=> b!5055662 m!6090363))

(declare-fun m!6090366 () Bool)

(assert (=> b!5055663 m!6090366))

(assert (=> b!5055395 m!6089892))

(declare-fun tp!1413113 () Bool)

(declare-fun b!5055665 () Bool)

(declare-fun tp!1413114 () Bool)

(declare-fun e!3156020 () Bool)

(assert (=> b!5055665 (= e!3156020 (and (inv!77468 (left!42792 (right!43122 (right!43122 xs!286)))) tp!1413114 (inv!77468 (right!43122 (right!43122 (right!43122 xs!286)))) tp!1413113))))

(declare-fun b!5055667 () Bool)

(declare-fun e!3156019 () Bool)

(declare-fun tp!1413112 () Bool)

(assert (=> b!5055667 (= e!3156019 tp!1413112)))

(declare-fun b!5055666 () Bool)

(assert (=> b!5055666 (= e!3156020 (and (inv!77467 (xs!18878 (right!43122 (right!43122 xs!286)))) e!3156019))))

(assert (=> b!5055395 (= tp!1413078 (and (inv!77468 (right!43122 (right!43122 xs!286))) e!3156020))))

(assert (= (and b!5055395 ((_ is Node!15548) (right!43122 (right!43122 xs!286)))) b!5055665))

(assert (= b!5055666 b!5055667))

(assert (= (and b!5055395 ((_ is Leaf!25827) (right!43122 (right!43122 xs!286)))) b!5055666))

(declare-fun m!6090368 () Bool)

(assert (=> b!5055665 m!6090368))

(declare-fun m!6090370 () Bool)

(assert (=> b!5055665 m!6090370))

(declare-fun m!6090372 () Bool)

(assert (=> b!5055666 m!6090372))

(assert (=> b!5055395 m!6089894))

(declare-fun b!5055672 () Bool)

(declare-fun e!3156023 () Bool)

(declare-fun tp!1413115 () Bool)

(assert (=> b!5055672 (= e!3156023 (and tp_is_empty!37019 tp!1413115))))

(assert (=> b!5055398 (= tp!1413080 e!3156023)))

(assert (= (and b!5055398 ((_ is Cons!58418) (t!371207 (innerList!15636 (xs!18878 ys!41))))) b!5055672))

(declare-fun b!5055673 () Bool)

(declare-fun e!3156024 () Bool)

(declare-fun tp!1413116 () Bool)

(assert (=> b!5055673 (= e!3156024 (and tp_is_empty!37019 tp!1413116))))

(assert (=> b!5055386 (= tp!1413067 e!3156024)))

(assert (= (and b!5055386 ((_ is Cons!58418) (t!371207 (innerList!15636 (xs!18878 xs!286))))) b!5055673))

(declare-fun b!5055678 () Bool)

(declare-fun e!3156027 () Bool)

(declare-fun tp!1413117 () Bool)

(assert (=> b!5055678 (= e!3156027 (and tp_is_empty!37019 tp!1413117))))

(assert (=> b!5055373 (= tp!1413059 e!3156027)))

(assert (= (and b!5055373 ((_ is Cons!58418) (innerList!15636 (xs!18878 (right!43122 ys!41))))) b!5055678))

(declare-fun b!5055679 () Bool)

(declare-fun e!3156029 () Bool)

(declare-fun tp!1413119 () Bool)

(declare-fun tp!1413120 () Bool)

(assert (=> b!5055679 (= e!3156029 (and (inv!77468 (left!42792 (left!42792 (left!42792 xs!286)))) tp!1413120 (inv!77468 (right!43122 (left!42792 (left!42792 xs!286)))) tp!1413119))))

(declare-fun b!5055681 () Bool)

(declare-fun e!3156028 () Bool)

(declare-fun tp!1413118 () Bool)

(assert (=> b!5055681 (= e!3156028 tp!1413118)))

(declare-fun b!5055680 () Bool)

(assert (=> b!5055680 (= e!3156029 (and (inv!77467 (xs!18878 (left!42792 (left!42792 xs!286)))) e!3156028))))

(assert (=> b!5055388 (= tp!1413074 (and (inv!77468 (left!42792 (left!42792 xs!286))) e!3156029))))

(assert (= (and b!5055388 ((_ is Node!15548) (left!42792 (left!42792 xs!286)))) b!5055679))

(assert (= b!5055680 b!5055681))

(assert (= (and b!5055388 ((_ is Leaf!25827) (left!42792 (left!42792 xs!286)))) b!5055680))

(declare-fun m!6090390 () Bool)

(assert (=> b!5055679 m!6090390))

(declare-fun m!6090392 () Bool)

(assert (=> b!5055679 m!6090392))

(declare-fun m!6090394 () Bool)

(assert (=> b!5055680 m!6090394))

(assert (=> b!5055388 m!6089886))

(declare-fun e!3156031 () Bool)

(declare-fun tp!1413123 () Bool)

(declare-fun b!5055682 () Bool)

(declare-fun tp!1413122 () Bool)

(assert (=> b!5055682 (= e!3156031 (and (inv!77468 (left!42792 (right!43122 (left!42792 xs!286)))) tp!1413123 (inv!77468 (right!43122 (right!43122 (left!42792 xs!286)))) tp!1413122))))

(declare-fun b!5055684 () Bool)

(declare-fun e!3156030 () Bool)

(declare-fun tp!1413121 () Bool)

(assert (=> b!5055684 (= e!3156030 tp!1413121)))

(declare-fun b!5055683 () Bool)

(assert (=> b!5055683 (= e!3156031 (and (inv!77467 (xs!18878 (right!43122 (left!42792 xs!286)))) e!3156030))))

(assert (=> b!5055388 (= tp!1413073 (and (inv!77468 (right!43122 (left!42792 xs!286))) e!3156031))))

(assert (= (and b!5055388 ((_ is Node!15548) (right!43122 (left!42792 xs!286)))) b!5055682))

(assert (= b!5055683 b!5055684))

(assert (= (and b!5055388 ((_ is Leaf!25827) (right!43122 (left!42792 xs!286)))) b!5055683))

(declare-fun m!6090396 () Bool)

(assert (=> b!5055682 m!6090396))

(declare-fun m!6090398 () Bool)

(assert (=> b!5055682 m!6090398))

(declare-fun m!6090400 () Bool)

(assert (=> b!5055683 m!6090400))

(assert (=> b!5055388 m!6089888))

(check-sat (not b!5055417) (not b!5055596) (not b!5055610) (not b!5055459) (not d!1626907) (not d!1626857) (not bm!352056) (not b!5055667) (not b!5055590) (not bm!352043) (not d!1626819) (not b!5055428) (not b!5055480) (not b!5055632) (not b!5055637) (not d!1626851) (not b!5055680) (not b!5055497) (not bm!352059) (not b!5055580) (not b!5055605) (not b!5055436) (not d!1626883) (not b!5055678) (not d!1626917) (not d!1626815) (not b!5055492) (not b!5055473) (not d!1626875) (not b!5055526) (not b!5055663) (not d!1626925) (not b!5055578) (not b!5055504) (not b!5055521) (not b!5055364) (not b!5055414) (not b!5055506) (not b!5055523) (not b!5055629) (not d!1626835) (not b!5055549) (not b!5055488) (not b!5055653) (not b!5055607) (not b!5055648) (not bm!352064) (not b!5055507) (not b!5055478) (not b!5055464) (not b!5055415) (not b!5055481) (not b!5055388) (not b!5055622) (not b!5055665) (not b!5055525) (not b!5055621) (not bm!352049) tp_is_empty!37019 (not b!5055684) (not b!5055683) (not d!1626885) (not b!5055487) (not b!5055412) (not b!5055467) (not b!5055553) (not bm!352042) (not b!5055572) (not bm!352060) (not b!5055502) (not b!5055606) (not b!5055515) (not d!1626827) (not b!5055574) (not b!5055642) (not b!5055519) (not b!5055656) (not b!5055546) (not d!1626825) (not b!5055444) (not b!5055432) (not b!5055567) (not d!1626929) (not b!5055441) (not b!5055440) (not b!5055528) (not bm!352062) (not b!5055645) (not d!1626939) (not b!5055654) (not b!5055586) (not b!5055679) (not b!5055646) (not bm!352055) (not b!5055496) (not b!5055455) (not bm!352061) (not b!5055518) (not b!5055647) (not b!5055486) (not b!5055565) (not b!5055540) (not b!5055450) (not b!5055431) (not bm!352052) (not b!5055620) (not bm!352053) (not b!5055468) (not d!1626933) (not b!5055644) (not b!5055673) (not b!5055458) (not bm!352048) (not b!5055479) (not d!1626891) (not d!1626817) (not b!5055454) (not b!5055613) (not b!5055635) (not b!5055482) (not bm!352044) (not bm!352063) (not b!5055491) (not b!5055541) (not b!5055655) (not b!5055623) (not d!1626963) (not bm!352054) (not bm!352045) (not b!5055608) (not b!5055666) (not b!5055499) (not bm!352051) (not b!5055597) (not b!5055664) (not b!5055474) (not b!5055443) (not d!1626855) (not b!5055472) (not d!1626899) (not b!5055437) (not b!5055672) (not d!1626865) (not b!5055681) (not b!5055636) (not b!5055510) (not b!5055577) (not b!5055476) (not b!5055551) (not d!1626839) (not b!5055662) (not b!5055484) (not bm!352057) (not b!5055509) (not b!5055425) (not b!5055658) (not b!5055395) (not b!5055485) (not b!5055618) (not d!1626847) (not bm!352050) (not b!5055489) (not b!5055634) (not b!5055371) (not d!1626927) (not b!5055514) (not bm!352041) (not b!5055682) (not b!5055477) (not b!5055609) (not b!5055619) (not bm!352058) (not b!5055631) (not bm!352046) (not bm!352047) (not b!5055643))
(check-sat)
