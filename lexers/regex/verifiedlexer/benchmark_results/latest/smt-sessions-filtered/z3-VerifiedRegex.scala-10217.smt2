; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533074 () Bool)

(assert start!533074)

(declare-datatypes ((T!104152 0))(
  ( (T!104153 (val!23510 Int)) )
))
(declare-datatypes ((List!58420 0))(
  ( (Nil!58296) (Cons!58296 (h!64744 T!104152) (t!370947 List!58420)) )
))
(declare-datatypes ((IArray!31077 0))(
  ( (IArray!31078 (innerList!15596 List!58420)) )
))
(declare-datatypes ((Conc!15508 0))(
  ( (Node!15508 (left!42691 Conc!15508) (right!43021 Conc!15508) (csize!31246 Int) (cheight!15719 Int)) (Leaf!25726 (xs!18834 IArray!31077) (csize!31247 Int)) (Empty!15508) )
))
(declare-fun t!4198 () Conc!15508)

(declare-fun e!3146879 () Bool)

(declare-fun b!5038597 () Bool)

(declare-fun tp!1410721 () Bool)

(declare-fun tp!1410722 () Bool)

(declare-fun inv!77128 (Conc!15508) Bool)

(assert (=> b!5038597 (= e!3146879 (and (inv!77128 (left!42691 t!4198)) tp!1410722 (inv!77128 (right!43021 t!4198)) tp!1410721))))

(declare-fun b!5038598 () Bool)

(declare-fun i!618 () Int)

(declare-fun e!3146880 () Bool)

(declare-fun lt!2084009 () List!58420)

(declare-fun lt!2084010 () List!58420)

(declare-datatypes ((tuple2!63230 0))(
  ( (tuple2!63231 (_1!34918 List!58420) (_2!34918 List!58420)) )
))
(declare-fun splitAtIndex!205 (List!58420 Int) tuple2!63230)

(assert (=> b!5038598 (= e!3146880 (not (= (tuple2!63231 lt!2084010 lt!2084009) (splitAtIndex!205 lt!2084009 i!618))))))

(declare-fun list!18903 (Conc!15508) List!58420)

(assert (=> b!5038598 (= lt!2084009 (list!18903 t!4198))))

(assert (=> b!5038598 (= lt!2084010 (list!18903 Empty!15508))))

(declare-fun res!2146791 () Bool)

(declare-fun e!3146882 () Bool)

(assert (=> start!533074 (=> (not res!2146791) (not e!3146882))))

(declare-fun isBalanced!4370 (Conc!15508) Bool)

(assert (=> start!533074 (= res!2146791 (isBalanced!4370 t!4198))))

(assert (=> start!533074 e!3146882))

(assert (=> start!533074 (and (inv!77128 t!4198) e!3146879)))

(assert (=> start!533074 true))

(declare-fun b!5038599 () Bool)

(assert (=> b!5038599 (= e!3146882 e!3146880)))

(declare-fun res!2146793 () Bool)

(assert (=> b!5038599 (=> res!2146793 e!3146880)))

(assert (=> b!5038599 (= res!2146793 (not (isBalanced!4370 Empty!15508)))))

(declare-fun b!5038600 () Bool)

(declare-fun res!2146792 () Bool)

(assert (=> b!5038600 (=> (not res!2146792) (not e!3146882))))

(get-info :version)

(assert (=> b!5038600 (= res!2146792 (and (not ((_ is Empty!15508) t!4198)) ((_ is Leaf!25726) t!4198) (<= i!618 0)))))

(declare-fun b!5038601 () Bool)

(declare-fun res!2146795 () Bool)

(assert (=> b!5038601 (=> (not res!2146795) (not e!3146882))))

(declare-fun size!38889 (Conc!15508) Int)

(assert (=> b!5038601 (= res!2146795 (<= i!618 (size!38889 t!4198)))))

(declare-fun b!5038602 () Bool)

(declare-fun e!3146881 () Bool)

(declare-fun tp!1410720 () Bool)

(assert (=> b!5038602 (= e!3146881 tp!1410720)))

(declare-fun b!5038603 () Bool)

(declare-fun res!2146794 () Bool)

(assert (=> b!5038603 (=> (not res!2146794) (not e!3146882))))

(assert (=> b!5038603 (= res!2146794 (<= 0 i!618))))

(declare-fun b!5038604 () Bool)

(declare-fun inv!77129 (IArray!31077) Bool)

(assert (=> b!5038604 (= e!3146879 (and (inv!77129 (xs!18834 t!4198)) e!3146881))))

(assert (= (and start!533074 res!2146791) b!5038603))

(assert (= (and b!5038603 res!2146794) b!5038601))

(assert (= (and b!5038601 res!2146795) b!5038600))

(assert (= (and b!5038600 res!2146792) b!5038599))

(assert (= (and b!5038599 (not res!2146793)) b!5038598))

(assert (= (and start!533074 ((_ is Node!15508) t!4198)) b!5038597))

(assert (= b!5038604 b!5038602))

(assert (= (and start!533074 ((_ is Leaf!25726) t!4198)) b!5038604))

(declare-fun m!6072316 () Bool)

(assert (=> b!5038601 m!6072316))

(declare-fun m!6072318 () Bool)

(assert (=> b!5038598 m!6072318))

(declare-fun m!6072320 () Bool)

(assert (=> b!5038598 m!6072320))

(declare-fun m!6072322 () Bool)

(assert (=> b!5038598 m!6072322))

(declare-fun m!6072324 () Bool)

(assert (=> start!533074 m!6072324))

(declare-fun m!6072326 () Bool)

(assert (=> start!533074 m!6072326))

(declare-fun m!6072328 () Bool)

(assert (=> b!5038604 m!6072328))

(declare-fun m!6072330 () Bool)

(assert (=> b!5038597 m!6072330))

(declare-fun m!6072332 () Bool)

(assert (=> b!5038597 m!6072332))

(declare-fun m!6072334 () Bool)

(assert (=> b!5038599 m!6072334))

(check-sat (not b!5038598) (not b!5038597) (not b!5038602) (not b!5038601) (not b!5038599) (not start!533074) (not b!5038604))
(check-sat)
(get-model)

(declare-fun b!5038635 () Bool)

(declare-fun res!2146829 () Bool)

(declare-fun e!3146893 () Bool)

(assert (=> b!5038635 (=> (not res!2146829) (not e!3146893))))

(declare-fun isEmpty!31526 (Conc!15508) Bool)

(assert (=> b!5038635 (= res!2146829 (not (isEmpty!31526 (left!42691 Empty!15508))))))

(declare-fun d!1620600 () Bool)

(declare-fun res!2146831 () Bool)

(declare-fun e!3146894 () Bool)

(assert (=> d!1620600 (=> res!2146831 e!3146894)))

(assert (=> d!1620600 (= res!2146831 (not ((_ is Node!15508) Empty!15508)))))

(assert (=> d!1620600 (= (isBalanced!4370 Empty!15508) e!3146894)))

(declare-fun b!5038636 () Bool)

(declare-fun res!2146826 () Bool)

(assert (=> b!5038636 (=> (not res!2146826) (not e!3146893))))

(assert (=> b!5038636 (= res!2146826 (isBalanced!4370 (left!42691 Empty!15508)))))

(declare-fun b!5038637 () Bool)

(declare-fun res!2146828 () Bool)

(assert (=> b!5038637 (=> (not res!2146828) (not e!3146893))))

(declare-fun height!2087 (Conc!15508) Int)

(assert (=> b!5038637 (= res!2146828 (<= (- (height!2087 (left!42691 Empty!15508)) (height!2087 (right!43021 Empty!15508))) 1))))

(declare-fun b!5038638 () Bool)

(assert (=> b!5038638 (= e!3146893 (not (isEmpty!31526 (right!43021 Empty!15508))))))

(declare-fun b!5038639 () Bool)

(declare-fun res!2146827 () Bool)

(assert (=> b!5038639 (=> (not res!2146827) (not e!3146893))))

(assert (=> b!5038639 (= res!2146827 (isBalanced!4370 (right!43021 Empty!15508)))))

(declare-fun b!5038640 () Bool)

(assert (=> b!5038640 (= e!3146894 e!3146893)))

(declare-fun res!2146830 () Bool)

(assert (=> b!5038640 (=> (not res!2146830) (not e!3146893))))

(assert (=> b!5038640 (= res!2146830 (<= (- 1) (- (height!2087 (left!42691 Empty!15508)) (height!2087 (right!43021 Empty!15508)))))))

(assert (= (and d!1620600 (not res!2146831)) b!5038640))

(assert (= (and b!5038640 res!2146830) b!5038637))

(assert (= (and b!5038637 res!2146828) b!5038636))

(assert (= (and b!5038636 res!2146826) b!5038639))

(assert (= (and b!5038639 res!2146827) b!5038635))

(assert (= (and b!5038635 res!2146829) b!5038638))

(declare-fun m!6072348 () Bool)

(assert (=> b!5038636 m!6072348))

(declare-fun m!6072350 () Bool)

(assert (=> b!5038635 m!6072350))

(declare-fun m!6072352 () Bool)

(assert (=> b!5038637 m!6072352))

(declare-fun m!6072354 () Bool)

(assert (=> b!5038637 m!6072354))

(declare-fun m!6072356 () Bool)

(assert (=> b!5038639 m!6072356))

(assert (=> b!5038640 m!6072352))

(assert (=> b!5038640 m!6072354))

(declare-fun m!6072358 () Bool)

(assert (=> b!5038638 m!6072358))

(assert (=> b!5038599 d!1620600))

(declare-fun b!5038671 () Bool)

(declare-fun res!2146842 () Bool)

(declare-fun e!3146912 () Bool)

(assert (=> b!5038671 (=> (not res!2146842) (not e!3146912))))

(declare-fun lt!2084021 () tuple2!63230)

(declare-fun take!821 (List!58420 Int) List!58420)

(assert (=> b!5038671 (= res!2146842 (= (_1!34918 lt!2084021) (take!821 lt!2084009 i!618)))))

(declare-fun d!1620604 () Bool)

(assert (=> d!1620604 e!3146912))

(declare-fun res!2146843 () Bool)

(assert (=> d!1620604 (=> (not res!2146843) (not e!3146912))))

(declare-fun ++!12722 (List!58420 List!58420) List!58420)

(assert (=> d!1620604 (= res!2146843 (= (++!12722 (_1!34918 lt!2084021) (_2!34918 lt!2084021)) lt!2084009))))

(declare-fun e!3146911 () tuple2!63230)

(assert (=> d!1620604 (= lt!2084021 e!3146911)))

(declare-fun c!863181 () Bool)

(assert (=> d!1620604 (= c!863181 ((_ is Nil!58296) lt!2084009))))

(assert (=> d!1620604 (= (splitAtIndex!205 lt!2084009 i!618) lt!2084021)))

(declare-fun b!5038672 () Bool)

(declare-fun lt!2084022 () tuple2!63230)

(assert (=> b!5038672 (= lt!2084022 (splitAtIndex!205 (t!370947 lt!2084009) (- i!618 1)))))

(declare-fun e!3146910 () tuple2!63230)

(assert (=> b!5038672 (= e!3146910 (tuple2!63231 (Cons!58296 (h!64744 lt!2084009) (_1!34918 lt!2084022)) (_2!34918 lt!2084022)))))

(declare-fun b!5038673 () Bool)

(assert (=> b!5038673 (= e!3146910 (tuple2!63231 Nil!58296 lt!2084009))))

(declare-fun b!5038674 () Bool)

(declare-fun drop!2628 (List!58420 Int) List!58420)

(assert (=> b!5038674 (= e!3146912 (= (_2!34918 lt!2084021) (drop!2628 lt!2084009 i!618)))))

(declare-fun b!5038675 () Bool)

(assert (=> b!5038675 (= e!3146911 e!3146910)))

(declare-fun c!863180 () Bool)

(assert (=> b!5038675 (= c!863180 (<= i!618 0))))

(declare-fun b!5038676 () Bool)

(assert (=> b!5038676 (= e!3146911 (tuple2!63231 Nil!58296 Nil!58296))))

(assert (= (and d!1620604 c!863181) b!5038676))

(assert (= (and d!1620604 (not c!863181)) b!5038675))

(assert (= (and b!5038675 c!863180) b!5038673))

(assert (= (and b!5038675 (not c!863180)) b!5038672))

(assert (= (and d!1620604 res!2146843) b!5038671))

(assert (= (and b!5038671 res!2146842) b!5038674))

(declare-fun m!6072368 () Bool)

(assert (=> b!5038671 m!6072368))

(declare-fun m!6072370 () Bool)

(assert (=> d!1620604 m!6072370))

(declare-fun m!6072372 () Bool)

(assert (=> b!5038672 m!6072372))

(declare-fun m!6072374 () Bool)

(assert (=> b!5038674 m!6072374))

(assert (=> b!5038598 d!1620604))

(declare-fun d!1620608 () Bool)

(declare-fun c!863194 () Bool)

(assert (=> d!1620608 (= c!863194 ((_ is Empty!15508) t!4198))))

(declare-fun e!3146925 () List!58420)

(assert (=> d!1620608 (= (list!18903 t!4198) e!3146925)))

(declare-fun b!5038703 () Bool)

(declare-fun e!3146926 () List!58420)

(declare-fun list!18905 (IArray!31077) List!58420)

(assert (=> b!5038703 (= e!3146926 (list!18905 (xs!18834 t!4198)))))

(declare-fun b!5038701 () Bool)

(assert (=> b!5038701 (= e!3146925 Nil!58296)))

(declare-fun b!5038702 () Bool)

(assert (=> b!5038702 (= e!3146925 e!3146926)))

(declare-fun c!863195 () Bool)

(assert (=> b!5038702 (= c!863195 ((_ is Leaf!25726) t!4198))))

(declare-fun b!5038704 () Bool)

(assert (=> b!5038704 (= e!3146926 (++!12722 (list!18903 (left!42691 t!4198)) (list!18903 (right!43021 t!4198))))))

(assert (= (and d!1620608 c!863194) b!5038701))

(assert (= (and d!1620608 (not c!863194)) b!5038702))

(assert (= (and b!5038702 c!863195) b!5038703))

(assert (= (and b!5038702 (not c!863195)) b!5038704))

(declare-fun m!6072392 () Bool)

(assert (=> b!5038703 m!6072392))

(declare-fun m!6072394 () Bool)

(assert (=> b!5038704 m!6072394))

(declare-fun m!6072396 () Bool)

(assert (=> b!5038704 m!6072396))

(assert (=> b!5038704 m!6072394))

(assert (=> b!5038704 m!6072396))

(declare-fun m!6072398 () Bool)

(assert (=> b!5038704 m!6072398))

(assert (=> b!5038598 d!1620608))

(declare-fun d!1620614 () Bool)

(declare-fun c!863196 () Bool)

(assert (=> d!1620614 (= c!863196 ((_ is Empty!15508) Empty!15508))))

(declare-fun e!3146927 () List!58420)

(assert (=> d!1620614 (= (list!18903 Empty!15508) e!3146927)))

(declare-fun b!5038707 () Bool)

(declare-fun e!3146928 () List!58420)

(assert (=> b!5038707 (= e!3146928 (list!18905 (xs!18834 Empty!15508)))))

(declare-fun b!5038705 () Bool)

(assert (=> b!5038705 (= e!3146927 Nil!58296)))

(declare-fun b!5038706 () Bool)

(assert (=> b!5038706 (= e!3146927 e!3146928)))

(declare-fun c!863197 () Bool)

(assert (=> b!5038706 (= c!863197 ((_ is Leaf!25726) Empty!15508))))

(declare-fun b!5038708 () Bool)

(assert (=> b!5038708 (= e!3146928 (++!12722 (list!18903 (left!42691 Empty!15508)) (list!18903 (right!43021 Empty!15508))))))

(assert (= (and d!1620614 c!863196) b!5038705))

(assert (= (and d!1620614 (not c!863196)) b!5038706))

(assert (= (and b!5038706 c!863197) b!5038707))

(assert (= (and b!5038706 (not c!863197)) b!5038708))

(declare-fun m!6072400 () Bool)

(assert (=> b!5038707 m!6072400))

(declare-fun m!6072402 () Bool)

(assert (=> b!5038708 m!6072402))

(declare-fun m!6072404 () Bool)

(assert (=> b!5038708 m!6072404))

(assert (=> b!5038708 m!6072402))

(assert (=> b!5038708 m!6072404))

(declare-fun m!6072406 () Bool)

(assert (=> b!5038708 m!6072406))

(assert (=> b!5038598 d!1620614))

(declare-fun d!1620616 () Bool)

(declare-fun size!38891 (List!58420) Int)

(assert (=> d!1620616 (= (inv!77129 (xs!18834 t!4198)) (<= (size!38891 (innerList!15596 (xs!18834 t!4198))) 2147483647))))

(declare-fun bs!1188829 () Bool)

(assert (= bs!1188829 d!1620616))

(declare-fun m!6072410 () Bool)

(assert (=> bs!1188829 m!6072410))

(assert (=> b!5038604 d!1620616))

(declare-fun b!5038709 () Bool)

(declare-fun res!2146847 () Bool)

(declare-fun e!3146929 () Bool)

(assert (=> b!5038709 (=> (not res!2146847) (not e!3146929))))

(assert (=> b!5038709 (= res!2146847 (not (isEmpty!31526 (left!42691 t!4198))))))

(declare-fun d!1620620 () Bool)

(declare-fun res!2146849 () Bool)

(declare-fun e!3146930 () Bool)

(assert (=> d!1620620 (=> res!2146849 e!3146930)))

(assert (=> d!1620620 (= res!2146849 (not ((_ is Node!15508) t!4198)))))

(assert (=> d!1620620 (= (isBalanced!4370 t!4198) e!3146930)))

(declare-fun b!5038710 () Bool)

(declare-fun res!2146844 () Bool)

(assert (=> b!5038710 (=> (not res!2146844) (not e!3146929))))

(assert (=> b!5038710 (= res!2146844 (isBalanced!4370 (left!42691 t!4198)))))

(declare-fun b!5038711 () Bool)

(declare-fun res!2146846 () Bool)

(assert (=> b!5038711 (=> (not res!2146846) (not e!3146929))))

(assert (=> b!5038711 (= res!2146846 (<= (- (height!2087 (left!42691 t!4198)) (height!2087 (right!43021 t!4198))) 1))))

(declare-fun b!5038712 () Bool)

(assert (=> b!5038712 (= e!3146929 (not (isEmpty!31526 (right!43021 t!4198))))))

(declare-fun b!5038713 () Bool)

(declare-fun res!2146845 () Bool)

(assert (=> b!5038713 (=> (not res!2146845) (not e!3146929))))

(assert (=> b!5038713 (= res!2146845 (isBalanced!4370 (right!43021 t!4198)))))

(declare-fun b!5038714 () Bool)

(assert (=> b!5038714 (= e!3146930 e!3146929)))

(declare-fun res!2146848 () Bool)

(assert (=> b!5038714 (=> (not res!2146848) (not e!3146929))))

(assert (=> b!5038714 (= res!2146848 (<= (- 1) (- (height!2087 (left!42691 t!4198)) (height!2087 (right!43021 t!4198)))))))

(assert (= (and d!1620620 (not res!2146849)) b!5038714))

(assert (= (and b!5038714 res!2146848) b!5038711))

(assert (= (and b!5038711 res!2146846) b!5038710))

(assert (= (and b!5038710 res!2146844) b!5038713))

(assert (= (and b!5038713 res!2146845) b!5038709))

(assert (= (and b!5038709 res!2146847) b!5038712))

(declare-fun m!6072412 () Bool)

(assert (=> b!5038710 m!6072412))

(declare-fun m!6072414 () Bool)

(assert (=> b!5038709 m!6072414))

(declare-fun m!6072416 () Bool)

(assert (=> b!5038711 m!6072416))

(declare-fun m!6072418 () Bool)

(assert (=> b!5038711 m!6072418))

(declare-fun m!6072420 () Bool)

(assert (=> b!5038713 m!6072420))

(assert (=> b!5038714 m!6072416))

(assert (=> b!5038714 m!6072418))

(declare-fun m!6072422 () Bool)

(assert (=> b!5038712 m!6072422))

(assert (=> start!533074 d!1620620))

(declare-fun d!1620622 () Bool)

(declare-fun c!863204 () Bool)

(assert (=> d!1620622 (= c!863204 ((_ is Node!15508) t!4198))))

(declare-fun e!3146945 () Bool)

(assert (=> d!1620622 (= (inv!77128 t!4198) e!3146945)))

(declare-fun b!5038739 () Bool)

(declare-fun inv!77132 (Conc!15508) Bool)

(assert (=> b!5038739 (= e!3146945 (inv!77132 t!4198))))

(declare-fun b!5038740 () Bool)

(declare-fun e!3146946 () Bool)

(assert (=> b!5038740 (= e!3146945 e!3146946)))

(declare-fun res!2146862 () Bool)

(assert (=> b!5038740 (= res!2146862 (not ((_ is Leaf!25726) t!4198)))))

(assert (=> b!5038740 (=> res!2146862 e!3146946)))

(declare-fun b!5038741 () Bool)

(declare-fun inv!77133 (Conc!15508) Bool)

(assert (=> b!5038741 (= e!3146946 (inv!77133 t!4198))))

(assert (= (and d!1620622 c!863204) b!5038739))

(assert (= (and d!1620622 (not c!863204)) b!5038740))

(assert (= (and b!5038740 (not res!2146862)) b!5038741))

(declare-fun m!6072444 () Bool)

(assert (=> b!5038739 m!6072444))

(declare-fun m!6072446 () Bool)

(assert (=> b!5038741 m!6072446))

(assert (=> start!533074 d!1620622))

(declare-fun d!1620630 () Bool)

(declare-fun c!863206 () Bool)

(assert (=> d!1620630 (= c!863206 ((_ is Node!15508) (left!42691 t!4198)))))

(declare-fun e!3146949 () Bool)

(assert (=> d!1620630 (= (inv!77128 (left!42691 t!4198)) e!3146949)))

(declare-fun b!5038745 () Bool)

(assert (=> b!5038745 (= e!3146949 (inv!77132 (left!42691 t!4198)))))

(declare-fun b!5038746 () Bool)

(declare-fun e!3146950 () Bool)

(assert (=> b!5038746 (= e!3146949 e!3146950)))

(declare-fun res!2146864 () Bool)

(assert (=> b!5038746 (= res!2146864 (not ((_ is Leaf!25726) (left!42691 t!4198))))))

(assert (=> b!5038746 (=> res!2146864 e!3146950)))

(declare-fun b!5038747 () Bool)

(assert (=> b!5038747 (= e!3146950 (inv!77133 (left!42691 t!4198)))))

(assert (= (and d!1620630 c!863206) b!5038745))

(assert (= (and d!1620630 (not c!863206)) b!5038746))

(assert (= (and b!5038746 (not res!2146864)) b!5038747))

(declare-fun m!6072452 () Bool)

(assert (=> b!5038745 m!6072452))

(declare-fun m!6072454 () Bool)

(assert (=> b!5038747 m!6072454))

(assert (=> b!5038597 d!1620630))

(declare-fun d!1620634 () Bool)

(declare-fun c!863207 () Bool)

(assert (=> d!1620634 (= c!863207 ((_ is Node!15508) (right!43021 t!4198)))))

(declare-fun e!3146951 () Bool)

(assert (=> d!1620634 (= (inv!77128 (right!43021 t!4198)) e!3146951)))

(declare-fun b!5038748 () Bool)

(assert (=> b!5038748 (= e!3146951 (inv!77132 (right!43021 t!4198)))))

(declare-fun b!5038749 () Bool)

(declare-fun e!3146952 () Bool)

(assert (=> b!5038749 (= e!3146951 e!3146952)))

(declare-fun res!2146865 () Bool)

(assert (=> b!5038749 (= res!2146865 (not ((_ is Leaf!25726) (right!43021 t!4198))))))

(assert (=> b!5038749 (=> res!2146865 e!3146952)))

(declare-fun b!5038750 () Bool)

(assert (=> b!5038750 (= e!3146952 (inv!77133 (right!43021 t!4198)))))

(assert (= (and d!1620634 c!863207) b!5038748))

(assert (= (and d!1620634 (not c!863207)) b!5038749))

(assert (= (and b!5038749 (not res!2146865)) b!5038750))

(declare-fun m!6072456 () Bool)

(assert (=> b!5038748 m!6072456))

(declare-fun m!6072458 () Bool)

(assert (=> b!5038750 m!6072458))

(assert (=> b!5038597 d!1620634))

(declare-fun d!1620636 () Bool)

(declare-fun lt!2084028 () Int)

(assert (=> d!1620636 (= lt!2084028 (size!38891 (list!18903 t!4198)))))

(assert (=> d!1620636 (= lt!2084028 (ite ((_ is Empty!15508) t!4198) 0 (ite ((_ is Leaf!25726) t!4198) (csize!31247 t!4198) (csize!31246 t!4198))))))

(assert (=> d!1620636 (= (size!38889 t!4198) lt!2084028)))

(declare-fun bs!1188831 () Bool)

(assert (= bs!1188831 d!1620636))

(assert (=> bs!1188831 m!6072320))

(assert (=> bs!1188831 m!6072320))

(declare-fun m!6072462 () Bool)

(assert (=> bs!1188831 m!6072462))

(assert (=> b!5038601 d!1620636))

(declare-fun b!5038771 () Bool)

(declare-fun e!3146964 () Bool)

(declare-fun tp_is_empty!36779 () Bool)

(declare-fun tp!1410737 () Bool)

(assert (=> b!5038771 (= e!3146964 (and tp_is_empty!36779 tp!1410737))))

(assert (=> b!5038602 (= tp!1410720 e!3146964)))

(assert (= (and b!5038602 ((_ is Cons!58296) (innerList!15596 (xs!18834 t!4198)))) b!5038771))

(declare-fun e!3146972 () Bool)

(declare-fun tp!1410749 () Bool)

(declare-fun b!5038783 () Bool)

(declare-fun tp!1410748 () Bool)

(assert (=> b!5038783 (= e!3146972 (and (inv!77128 (left!42691 (left!42691 t!4198))) tp!1410749 (inv!77128 (right!43021 (left!42691 t!4198))) tp!1410748))))

(declare-fun b!5038785 () Bool)

(declare-fun e!3146971 () Bool)

(declare-fun tp!1410747 () Bool)

(assert (=> b!5038785 (= e!3146971 tp!1410747)))

(declare-fun b!5038784 () Bool)

(assert (=> b!5038784 (= e!3146972 (and (inv!77129 (xs!18834 (left!42691 t!4198))) e!3146971))))

(assert (=> b!5038597 (= tp!1410722 (and (inv!77128 (left!42691 t!4198)) e!3146972))))

(assert (= (and b!5038597 ((_ is Node!15508) (left!42691 t!4198))) b!5038783))

(assert (= b!5038784 b!5038785))

(assert (= (and b!5038597 ((_ is Leaf!25726) (left!42691 t!4198))) b!5038784))

(declare-fun m!6072476 () Bool)

(assert (=> b!5038783 m!6072476))

(declare-fun m!6072478 () Bool)

(assert (=> b!5038783 m!6072478))

(declare-fun m!6072480 () Bool)

(assert (=> b!5038784 m!6072480))

(assert (=> b!5038597 m!6072330))

(declare-fun b!5038786 () Bool)

(declare-fun e!3146974 () Bool)

(declare-fun tp!1410752 () Bool)

(declare-fun tp!1410751 () Bool)

(assert (=> b!5038786 (= e!3146974 (and (inv!77128 (left!42691 (right!43021 t!4198))) tp!1410752 (inv!77128 (right!43021 (right!43021 t!4198))) tp!1410751))))

(declare-fun b!5038788 () Bool)

(declare-fun e!3146973 () Bool)

(declare-fun tp!1410750 () Bool)

(assert (=> b!5038788 (= e!3146973 tp!1410750)))

(declare-fun b!5038787 () Bool)

(assert (=> b!5038787 (= e!3146974 (and (inv!77129 (xs!18834 (right!43021 t!4198))) e!3146973))))

(assert (=> b!5038597 (= tp!1410721 (and (inv!77128 (right!43021 t!4198)) e!3146974))))

(assert (= (and b!5038597 ((_ is Node!15508) (right!43021 t!4198))) b!5038786))

(assert (= b!5038787 b!5038788))

(assert (= (and b!5038597 ((_ is Leaf!25726) (right!43021 t!4198))) b!5038787))

(declare-fun m!6072482 () Bool)

(assert (=> b!5038786 m!6072482))

(declare-fun m!6072484 () Bool)

(assert (=> b!5038786 m!6072484))

(declare-fun m!6072486 () Bool)

(assert (=> b!5038787 m!6072486))

(assert (=> b!5038597 m!6072332))

(check-sat (not b!5038748) (not d!1620636) (not b!5038745) (not b!5038783) (not b!5038739) (not b!5038747) (not b!5038704) (not b!5038786) (not b!5038710) (not b!5038636) (not b!5038713) (not b!5038674) (not b!5038785) (not d!1620616) (not b!5038771) (not b!5038711) (not b!5038639) (not b!5038709) (not b!5038640) (not b!5038788) (not b!5038597) (not b!5038638) (not b!5038741) (not b!5038703) (not b!5038712) (not b!5038784) (not b!5038787) (not b!5038672) (not b!5038637) (not b!5038708) (not b!5038750) (not d!1620604) tp_is_empty!36779 (not b!5038671) (not b!5038707) (not b!5038714) (not b!5038635))
(check-sat)
