; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533026 () Bool)

(assert start!533026)

(declare-fun b!5038234 () Bool)

(declare-fun e!3146696 () Bool)

(declare-datatypes ((T!104124 0))(
  ( (T!104125 (val!23506 Int)) )
))
(declare-datatypes ((List!58416 0))(
  ( (Nil!58292) (Cons!58292 (h!64740 T!104124) (t!370933 List!58416)) )
))
(declare-datatypes ((IArray!31069 0))(
  ( (IArray!31070 (innerList!15592 List!58416)) )
))
(declare-datatypes ((Conc!15504 0))(
  ( (Node!15504 (left!42685 Conc!15504) (right!43015 Conc!15504) (csize!31238 Int) (cheight!15715 Int)) (Leaf!25720 (xs!18830 IArray!31069) (csize!31239 Int)) (Empty!15504) )
))
(declare-fun t!4198 () Conc!15504)

(declare-fun e!3146698 () Bool)

(declare-fun inv!77106 (IArray!31069) Bool)

(assert (=> b!5038234 (= e!3146696 (and (inv!77106 (xs!18830 t!4198)) e!3146698))))

(declare-fun b!5038235 () Bool)

(declare-fun res!2146634 () Bool)

(declare-fun e!3146697 () Bool)

(assert (=> b!5038235 (=> (not res!2146634) (not e!3146697))))

(declare-fun i!618 () Int)

(declare-fun size!38881 (Conc!15504) Int)

(assert (=> b!5038235 (= res!2146634 (<= i!618 (size!38881 t!4198)))))

(declare-fun b!5038236 () Bool)

(declare-fun tp!1410626 () Bool)

(assert (=> b!5038236 (= e!3146698 tp!1410626)))

(declare-fun b!5038237 () Bool)

(declare-fun res!2146635 () Bool)

(assert (=> b!5038237 (=> (not res!2146635) (not e!3146697))))

(assert (=> b!5038237 (= res!2146635 (<= 0 i!618))))

(declare-fun res!2146633 () Bool)

(assert (=> start!533026 (=> (not res!2146633) (not e!3146697))))

(declare-fun isBalanced!4366 (Conc!15504) Bool)

(assert (=> start!533026 (= res!2146633 (isBalanced!4366 t!4198))))

(assert (=> start!533026 e!3146697))

(declare-fun inv!77107 (Conc!15504) Bool)

(assert (=> start!533026 (and (inv!77107 t!4198) e!3146696)))

(assert (=> start!533026 true))

(declare-fun b!5038238 () Bool)

(declare-fun lt!2083974 () List!58416)

(declare-datatypes ((tuple2!63226 0))(
  ( (tuple2!63227 (_1!34916 List!58416) (_2!34916 List!58416)) )
))
(declare-fun splitAtIndex!203 (List!58416 Int) tuple2!63226)

(assert (=> b!5038238 (= e!3146697 (not (= (tuple2!63227 lt!2083974 lt!2083974) (splitAtIndex!203 lt!2083974 i!618))))))

(declare-fun list!18897 (Conc!15504) List!58416)

(assert (=> b!5038238 (= lt!2083974 (list!18897 t!4198))))

(declare-fun b!5038239 () Bool)

(declare-fun tp!1410624 () Bool)

(declare-fun tp!1410625 () Bool)

(assert (=> b!5038239 (= e!3146696 (and (inv!77107 (left!42685 t!4198)) tp!1410624 (inv!77107 (right!43015 t!4198)) tp!1410625))))

(declare-fun b!5038240 () Bool)

(declare-fun res!2146632 () Bool)

(assert (=> b!5038240 (=> (not res!2146632) (not e!3146697))))

(get-info :version)

(assert (=> b!5038240 (= res!2146632 ((_ is Empty!15504) t!4198))))

(assert (= (and start!533026 res!2146633) b!5038237))

(assert (= (and b!5038237 res!2146635) b!5038235))

(assert (= (and b!5038235 res!2146634) b!5038240))

(assert (= (and b!5038240 res!2146632) b!5038238))

(assert (= (and start!533026 ((_ is Node!15504) t!4198)) b!5038239))

(assert (= b!5038234 b!5038236))

(assert (= (and start!533026 ((_ is Leaf!25720) t!4198)) b!5038234))

(declare-fun m!6072048 () Bool)

(assert (=> b!5038239 m!6072048))

(declare-fun m!6072050 () Bool)

(assert (=> b!5038239 m!6072050))

(declare-fun m!6072052 () Bool)

(assert (=> b!5038234 m!6072052))

(declare-fun m!6072054 () Bool)

(assert (=> b!5038235 m!6072054))

(declare-fun m!6072056 () Bool)

(assert (=> start!533026 m!6072056))

(declare-fun m!6072058 () Bool)

(assert (=> start!533026 m!6072058))

(declare-fun m!6072060 () Bool)

(assert (=> b!5038238 m!6072060))

(declare-fun m!6072062 () Bool)

(assert (=> b!5038238 m!6072062))

(check-sat (not b!5038236) (not b!5038239) (not b!5038234) (not b!5038235) (not start!533026) (not b!5038238))
(check-sat)
(get-model)

(declare-fun d!1620538 () Bool)

(declare-fun lt!2083980 () Int)

(declare-fun size!38883 (List!58416) Int)

(assert (=> d!1620538 (= lt!2083980 (size!38883 (list!18897 t!4198)))))

(assert (=> d!1620538 (= lt!2083980 (ite ((_ is Empty!15504) t!4198) 0 (ite ((_ is Leaf!25720) t!4198) (csize!31239 t!4198) (csize!31238 t!4198))))))

(assert (=> d!1620538 (= (size!38881 t!4198) lt!2083980)))

(declare-fun bs!1188817 () Bool)

(assert (= bs!1188817 d!1620538))

(assert (=> bs!1188817 m!6072062))

(assert (=> bs!1188817 m!6072062))

(declare-fun m!6072066 () Bool)

(assert (=> bs!1188817 m!6072066))

(assert (=> b!5038235 d!1620538))

(declare-fun d!1620542 () Bool)

(declare-fun c!863129 () Bool)

(assert (=> d!1620542 (= c!863129 ((_ is Node!15504) (left!42685 t!4198)))))

(declare-fun e!3146709 () Bool)

(assert (=> d!1620542 (= (inv!77107 (left!42685 t!4198)) e!3146709)))

(declare-fun b!5038256 () Bool)

(declare-fun inv!77109 (Conc!15504) Bool)

(assert (=> b!5038256 (= e!3146709 (inv!77109 (left!42685 t!4198)))))

(declare-fun b!5038257 () Bool)

(declare-fun e!3146710 () Bool)

(assert (=> b!5038257 (= e!3146709 e!3146710)))

(declare-fun res!2146641 () Bool)

(assert (=> b!5038257 (= res!2146641 (not ((_ is Leaf!25720) (left!42685 t!4198))))))

(assert (=> b!5038257 (=> res!2146641 e!3146710)))

(declare-fun b!5038258 () Bool)

(declare-fun inv!77111 (Conc!15504) Bool)

(assert (=> b!5038258 (= e!3146710 (inv!77111 (left!42685 t!4198)))))

(assert (= (and d!1620542 c!863129) b!5038256))

(assert (= (and d!1620542 (not c!863129)) b!5038257))

(assert (= (and b!5038257 (not res!2146641)) b!5038258))

(declare-fun m!6072072 () Bool)

(assert (=> b!5038256 m!6072072))

(declare-fun m!6072074 () Bool)

(assert (=> b!5038258 m!6072074))

(assert (=> b!5038239 d!1620542))

(declare-fun d!1620546 () Bool)

(declare-fun c!863131 () Bool)

(assert (=> d!1620546 (= c!863131 ((_ is Node!15504) (right!43015 t!4198)))))

(declare-fun e!3146713 () Bool)

(assert (=> d!1620546 (= (inv!77107 (right!43015 t!4198)) e!3146713)))

(declare-fun b!5038262 () Bool)

(assert (=> b!5038262 (= e!3146713 (inv!77109 (right!43015 t!4198)))))

(declare-fun b!5038263 () Bool)

(declare-fun e!3146714 () Bool)

(assert (=> b!5038263 (= e!3146713 e!3146714)))

(declare-fun res!2146643 () Bool)

(assert (=> b!5038263 (= res!2146643 (not ((_ is Leaf!25720) (right!43015 t!4198))))))

(assert (=> b!5038263 (=> res!2146643 e!3146714)))

(declare-fun b!5038264 () Bool)

(assert (=> b!5038264 (= e!3146714 (inv!77111 (right!43015 t!4198)))))

(assert (= (and d!1620546 c!863131) b!5038262))

(assert (= (and d!1620546 (not c!863131)) b!5038263))

(assert (= (and b!5038263 (not res!2146643)) b!5038264))

(declare-fun m!6072080 () Bool)

(assert (=> b!5038262 m!6072080))

(declare-fun m!6072082 () Bool)

(assert (=> b!5038264 m!6072082))

(assert (=> b!5038239 d!1620546))

(declare-fun b!5038290 () Bool)

(declare-fun res!2146675 () Bool)

(declare-fun e!3146726 () Bool)

(assert (=> b!5038290 (=> (not res!2146675) (not e!3146726))))

(declare-fun height!2082 (Conc!15504) Int)

(assert (=> b!5038290 (= res!2146675 (<= (- (height!2082 (left!42685 t!4198)) (height!2082 (right!43015 t!4198))) 1))))

(declare-fun b!5038294 () Bool)

(declare-fun isEmpty!31522 (Conc!15504) Bool)

(assert (=> b!5038294 (= e!3146726 (not (isEmpty!31522 (right!43015 t!4198))))))

(declare-fun b!5038296 () Bool)

(declare-fun res!2146669 () Bool)

(assert (=> b!5038296 (=> (not res!2146669) (not e!3146726))))

(assert (=> b!5038296 (= res!2146669 (isBalanced!4366 (right!43015 t!4198)))))

(declare-fun b!5038298 () Bool)

(declare-fun e!3146724 () Bool)

(assert (=> b!5038298 (= e!3146724 e!3146726)))

(declare-fun res!2146671 () Bool)

(assert (=> b!5038298 (=> (not res!2146671) (not e!3146726))))

(assert (=> b!5038298 (= res!2146671 (<= (- 1) (- (height!2082 (left!42685 t!4198)) (height!2082 (right!43015 t!4198)))))))

(declare-fun b!5038300 () Bool)

(declare-fun res!2146678 () Bool)

(assert (=> b!5038300 (=> (not res!2146678) (not e!3146726))))

(assert (=> b!5038300 (= res!2146678 (isBalanced!4366 (left!42685 t!4198)))))

(declare-fun b!5038292 () Bool)

(declare-fun res!2146676 () Bool)

(assert (=> b!5038292 (=> (not res!2146676) (not e!3146726))))

(assert (=> b!5038292 (= res!2146676 (not (isEmpty!31522 (left!42685 t!4198))))))

(declare-fun d!1620550 () Bool)

(declare-fun res!2146673 () Bool)

(assert (=> d!1620550 (=> res!2146673 e!3146724)))

(assert (=> d!1620550 (= res!2146673 (not ((_ is Node!15504) t!4198)))))

(assert (=> d!1620550 (= (isBalanced!4366 t!4198) e!3146724)))

(assert (= (and d!1620550 (not res!2146673)) b!5038298))

(assert (= (and b!5038298 res!2146671) b!5038290))

(assert (= (and b!5038290 res!2146675) b!5038300))

(assert (= (and b!5038300 res!2146678) b!5038296))

(assert (= (and b!5038296 res!2146669) b!5038292))

(assert (= (and b!5038292 res!2146676) b!5038294))

(declare-fun m!6072086 () Bool)

(assert (=> b!5038296 m!6072086))

(declare-fun m!6072090 () Bool)

(assert (=> b!5038294 m!6072090))

(declare-fun m!6072094 () Bool)

(assert (=> b!5038292 m!6072094))

(declare-fun m!6072098 () Bool)

(assert (=> b!5038300 m!6072098))

(declare-fun m!6072102 () Bool)

(assert (=> b!5038298 m!6072102))

(declare-fun m!6072106 () Bool)

(assert (=> b!5038298 m!6072106))

(assert (=> b!5038290 m!6072102))

(assert (=> b!5038290 m!6072106))

(assert (=> start!533026 d!1620550))

(declare-fun d!1620552 () Bool)

(declare-fun c!863132 () Bool)

(assert (=> d!1620552 (= c!863132 ((_ is Node!15504) t!4198))))

(declare-fun e!3146727 () Bool)

(assert (=> d!1620552 (= (inv!77107 t!4198) e!3146727)))

(declare-fun b!5038301 () Bool)

(assert (=> b!5038301 (= e!3146727 (inv!77109 t!4198))))

(declare-fun b!5038302 () Bool)

(declare-fun e!3146728 () Bool)

(assert (=> b!5038302 (= e!3146727 e!3146728)))

(declare-fun res!2146680 () Bool)

(assert (=> b!5038302 (= res!2146680 (not ((_ is Leaf!25720) t!4198)))))

(assert (=> b!5038302 (=> res!2146680 e!3146728)))

(declare-fun b!5038303 () Bool)

(assert (=> b!5038303 (= e!3146728 (inv!77111 t!4198))))

(assert (= (and d!1620552 c!863132) b!5038301))

(assert (= (and d!1620552 (not c!863132)) b!5038302))

(assert (= (and b!5038302 (not res!2146680)) b!5038303))

(declare-fun m!6072108 () Bool)

(assert (=> b!5038301 m!6072108))

(declare-fun m!6072110 () Bool)

(assert (=> b!5038303 m!6072110))

(assert (=> start!533026 d!1620552))

(declare-fun d!1620556 () Bool)

(assert (=> d!1620556 (= (inv!77106 (xs!18830 t!4198)) (<= (size!38883 (innerList!15592 (xs!18830 t!4198))) 2147483647))))

(declare-fun bs!1188818 () Bool)

(assert (= bs!1188818 d!1620556))

(declare-fun m!6072116 () Bool)

(assert (=> bs!1188818 m!6072116))

(assert (=> b!5038234 d!1620556))

(declare-fun b!5038337 () Bool)

(declare-fun e!3146747 () tuple2!63226)

(assert (=> b!5038337 (= e!3146747 (tuple2!63227 Nil!58292 Nil!58292))))

(declare-fun lt!2083991 () tuple2!63226)

(declare-fun e!3146746 () Bool)

(declare-fun b!5038338 () Bool)

(declare-fun drop!2625 (List!58416 Int) List!58416)

(assert (=> b!5038338 (= e!3146746 (= (_2!34916 lt!2083991) (drop!2625 lt!2083974 i!618)))))

(declare-fun d!1620562 () Bool)

(assert (=> d!1620562 e!3146746))

(declare-fun res!2146693 () Bool)

(assert (=> d!1620562 (=> (not res!2146693) (not e!3146746))))

(declare-fun ++!12720 (List!58416 List!58416) List!58416)

(assert (=> d!1620562 (= res!2146693 (= (++!12720 (_1!34916 lt!2083991) (_2!34916 lt!2083991)) lt!2083974))))

(assert (=> d!1620562 (= lt!2083991 e!3146747)))

(declare-fun c!863145 () Bool)

(assert (=> d!1620562 (= c!863145 ((_ is Nil!58292) lt!2083974))))

(assert (=> d!1620562 (= (splitAtIndex!203 lt!2083974 i!618) lt!2083991)))

(declare-fun b!5038339 () Bool)

(declare-fun lt!2083992 () tuple2!63226)

(assert (=> b!5038339 (= lt!2083992 (splitAtIndex!203 (t!370933 lt!2083974) (- i!618 1)))))

(declare-fun e!3146748 () tuple2!63226)

(assert (=> b!5038339 (= e!3146748 (tuple2!63227 (Cons!58292 (h!64740 lt!2083974) (_1!34916 lt!2083992)) (_2!34916 lt!2083992)))))

(declare-fun b!5038340 () Bool)

(assert (=> b!5038340 (= e!3146748 (tuple2!63227 Nil!58292 lt!2083974))))

(declare-fun b!5038341 () Bool)

(assert (=> b!5038341 (= e!3146747 e!3146748)))

(declare-fun c!863144 () Bool)

(assert (=> b!5038341 (= c!863144 (<= i!618 0))))

(declare-fun b!5038342 () Bool)

(declare-fun res!2146692 () Bool)

(assert (=> b!5038342 (=> (not res!2146692) (not e!3146746))))

(declare-fun take!819 (List!58416 Int) List!58416)

(assert (=> b!5038342 (= res!2146692 (= (_1!34916 lt!2083991) (take!819 lt!2083974 i!618)))))

(assert (= (and d!1620562 c!863145) b!5038337))

(assert (= (and d!1620562 (not c!863145)) b!5038341))

(assert (= (and b!5038341 c!863144) b!5038340))

(assert (= (and b!5038341 (not c!863144)) b!5038339))

(assert (= (and d!1620562 res!2146693) b!5038342))

(assert (= (and b!5038342 res!2146692) b!5038338))

(declare-fun m!6072126 () Bool)

(assert (=> b!5038338 m!6072126))

(declare-fun m!6072130 () Bool)

(assert (=> d!1620562 m!6072130))

(declare-fun m!6072132 () Bool)

(assert (=> b!5038339 m!6072132))

(declare-fun m!6072134 () Bool)

(assert (=> b!5038342 m!6072134))

(assert (=> b!5038238 d!1620562))

(declare-fun d!1620566 () Bool)

(declare-fun c!863156 () Bool)

(assert (=> d!1620566 (= c!863156 ((_ is Empty!15504) t!4198))))

(declare-fun e!3146759 () List!58416)

(assert (=> d!1620566 (= (list!18897 t!4198) e!3146759)))

(declare-fun b!5038366 () Bool)

(declare-fun e!3146760 () List!58416)

(assert (=> b!5038366 (= e!3146760 (++!12720 (list!18897 (left!42685 t!4198)) (list!18897 (right!43015 t!4198))))))

(declare-fun b!5038363 () Bool)

(assert (=> b!5038363 (= e!3146759 Nil!58292)))

(declare-fun b!5038365 () Bool)

(declare-fun list!18899 (IArray!31069) List!58416)

(assert (=> b!5038365 (= e!3146760 (list!18899 (xs!18830 t!4198)))))

(declare-fun b!5038364 () Bool)

(assert (=> b!5038364 (= e!3146759 e!3146760)))

(declare-fun c!863157 () Bool)

(assert (=> b!5038364 (= c!863157 ((_ is Leaf!25720) t!4198))))

(assert (= (and d!1620566 c!863156) b!5038363))

(assert (= (and d!1620566 (not c!863156)) b!5038364))

(assert (= (and b!5038364 c!863157) b!5038365))

(assert (= (and b!5038364 (not c!863157)) b!5038366))

(declare-fun m!6072142 () Bool)

(assert (=> b!5038366 m!6072142))

(declare-fun m!6072144 () Bool)

(assert (=> b!5038366 m!6072144))

(assert (=> b!5038366 m!6072142))

(assert (=> b!5038366 m!6072144))

(declare-fun m!6072148 () Bool)

(assert (=> b!5038366 m!6072148))

(declare-fun m!6072150 () Bool)

(assert (=> b!5038365 m!6072150))

(assert (=> b!5038238 d!1620566))

(declare-fun b!5038376 () Bool)

(declare-fun e!3146766 () Bool)

(declare-fun tp_is_empty!36771 () Bool)

(declare-fun tp!1410632 () Bool)

(assert (=> b!5038376 (= e!3146766 (and tp_is_empty!36771 tp!1410632))))

(assert (=> b!5038236 (= tp!1410626 e!3146766)))

(assert (= (and b!5038236 ((_ is Cons!58292) (innerList!15592 (xs!18830 t!4198)))) b!5038376))

(declare-fun e!3146775 () Bool)

(declare-fun b!5038393 () Bool)

(declare-fun tp!1410647 () Bool)

(declare-fun tp!1410645 () Bool)

(assert (=> b!5038393 (= e!3146775 (and (inv!77107 (left!42685 (left!42685 t!4198))) tp!1410647 (inv!77107 (right!43015 (left!42685 t!4198))) tp!1410645))))

(declare-fun b!5038397 () Bool)

(declare-fun e!3146777 () Bool)

(declare-fun tp!1410650 () Bool)

(assert (=> b!5038397 (= e!3146777 tp!1410650)))

(declare-fun b!5038395 () Bool)

(assert (=> b!5038395 (= e!3146775 (and (inv!77106 (xs!18830 (left!42685 t!4198))) e!3146777))))

(assert (=> b!5038239 (= tp!1410624 (and (inv!77107 (left!42685 t!4198)) e!3146775))))

(assert (= (and b!5038239 ((_ is Node!15504) (left!42685 t!4198))) b!5038393))

(assert (= b!5038395 b!5038397))

(assert (= (and b!5038239 ((_ is Leaf!25720) (left!42685 t!4198))) b!5038395))

(declare-fun m!6072154 () Bool)

(assert (=> b!5038393 m!6072154))

(declare-fun m!6072158 () Bool)

(assert (=> b!5038393 m!6072158))

(declare-fun m!6072162 () Bool)

(assert (=> b!5038395 m!6072162))

(assert (=> b!5038239 m!6072048))

(declare-fun tp!1410653 () Bool)

(declare-fun tp!1410651 () Bool)

(declare-fun e!3146779 () Bool)

(declare-fun b!5038399 () Bool)

(assert (=> b!5038399 (= e!3146779 (and (inv!77107 (left!42685 (right!43015 t!4198))) tp!1410653 (inv!77107 (right!43015 (right!43015 t!4198))) tp!1410651))))

(declare-fun b!5038403 () Bool)

(declare-fun e!3146781 () Bool)

(declare-fun tp!1410656 () Bool)

(assert (=> b!5038403 (= e!3146781 tp!1410656)))

(declare-fun b!5038401 () Bool)

(assert (=> b!5038401 (= e!3146779 (and (inv!77106 (xs!18830 (right!43015 t!4198))) e!3146781))))

(assert (=> b!5038239 (= tp!1410625 (and (inv!77107 (right!43015 t!4198)) e!3146779))))

(assert (= (and b!5038239 ((_ is Node!15504) (right!43015 t!4198))) b!5038399))

(assert (= b!5038401 b!5038403))

(assert (= (and b!5038239 ((_ is Leaf!25720) (right!43015 t!4198))) b!5038401))

(declare-fun m!6072166 () Bool)

(assert (=> b!5038399 m!6072166))

(declare-fun m!6072170 () Bool)

(assert (=> b!5038399 m!6072170))

(declare-fun m!6072174 () Bool)

(assert (=> b!5038401 m!6072174))

(assert (=> b!5038239 m!6072050))

(check-sat (not d!1620562) (not b!5038397) (not d!1620556) (not b!5038300) (not b!5038399) (not b!5038401) (not b!5038258) (not b!5038403) (not b!5038262) (not b!5038338) (not b!5038296) tp_is_empty!36771 (not b!5038393) (not b!5038395) (not b!5038303) (not b!5038342) (not b!5038294) (not b!5038239) (not b!5038339) (not b!5038366) (not b!5038301) (not b!5038290) (not b!5038365) (not b!5038298) (not b!5038376) (not b!5038264) (not d!1620538) (not b!5038256) (not b!5038292))
(check-sat)
