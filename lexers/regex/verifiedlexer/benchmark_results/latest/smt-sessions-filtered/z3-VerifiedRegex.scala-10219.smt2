; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533122 () Bool)

(assert start!533122)

(declare-fun b!5038981 () Bool)

(declare-fun res!2146965 () Bool)

(declare-fun e!3147074 () Bool)

(assert (=> b!5038981 (=> (not res!2146965) (not e!3147074))))

(declare-fun i!618 () Int)

(assert (=> b!5038981 (= res!2146965 (<= 0 i!618))))

(declare-fun b!5038982 () Bool)

(declare-fun e!3147073 () Bool)

(assert (=> b!5038982 (= e!3147074 e!3147073)))

(declare-fun res!2146964 () Bool)

(assert (=> b!5038982 (=> res!2146964 e!3147073)))

(declare-datatypes ((T!104180 0))(
  ( (T!104181 (val!23514 Int)) )
))
(declare-datatypes ((List!58424 0))(
  ( (Nil!58300) (Cons!58300 (h!64748 T!104180) (t!370961 List!58424)) )
))
(declare-datatypes ((IArray!31085 0))(
  ( (IArray!31086 (innerList!15600 List!58424)) )
))
(declare-datatypes ((Conc!15512 0))(
  ( (Node!15512 (left!42697 Conc!15512) (right!43027 Conc!15512) (csize!31254 Int) (cheight!15723 Int)) (Leaf!25732 (xs!18838 IArray!31085) (csize!31255 Int)) (Empty!15512) )
))
(declare-fun isBalanced!4374 (Conc!15512) Bool)

(assert (=> b!5038982 (= res!2146964 (not (isBalanced!4374 Empty!15512)))))

(declare-fun b!5038983 () Bool)

(declare-fun lt!2084040 () List!58424)

(declare-datatypes ((tuple2!63234 0))(
  ( (tuple2!63235 (_1!34920 List!58424) (_2!34920 List!58424)) )
))
(declare-fun list!18909 (Conc!15512) List!58424)

(declare-fun splitAtIndex!207 (List!58424 Int) tuple2!63234)

(assert (=> b!5038983 (= e!3147073 (not (= (tuple2!63235 lt!2084040 (list!18909 Empty!15512)) (splitAtIndex!207 lt!2084040 i!618))))))

(declare-fun t!4198 () Conc!15512)

(assert (=> b!5038983 (= lt!2084040 (list!18909 t!4198))))

(declare-fun b!5038984 () Bool)

(declare-fun tp!1410817 () Bool)

(declare-fun e!3147072 () Bool)

(declare-fun tp!1410816 () Bool)

(declare-fun inv!77150 (Conc!15512) Bool)

(assert (=> b!5038984 (= e!3147072 (and (inv!77150 (left!42697 t!4198)) tp!1410817 (inv!77150 (right!43027 t!4198)) tp!1410816))))

(declare-fun b!5038985 () Bool)

(declare-fun e!3147071 () Bool)

(declare-fun inv!77151 (IArray!31085) Bool)

(assert (=> b!5038985 (= e!3147072 (and (inv!77151 (xs!18838 t!4198)) e!3147071))))

(declare-fun res!2146967 () Bool)

(assert (=> start!533122 (=> (not res!2146967) (not e!3147074))))

(assert (=> start!533122 (= res!2146967 (isBalanced!4374 t!4198))))

(assert (=> start!533122 e!3147074))

(assert (=> start!533122 (and (inv!77150 t!4198) e!3147072)))

(assert (=> start!533122 true))

(declare-fun b!5038986 () Bool)

(declare-fun res!2146966 () Bool)

(assert (=> b!5038986 (=> (not res!2146966) (not e!3147074))))

(declare-fun size!38897 (Conc!15512) Int)

(assert (=> b!5038986 (= res!2146966 (<= i!618 (size!38897 t!4198)))))

(declare-fun b!5038987 () Bool)

(declare-fun tp!1410818 () Bool)

(assert (=> b!5038987 (= e!3147071 tp!1410818)))

(declare-fun b!5038988 () Bool)

(declare-fun res!2146963 () Bool)

(assert (=> b!5038988 (=> (not res!2146963) (not e!3147074))))

(get-info :version)

(assert (=> b!5038988 (= res!2146963 (and (not ((_ is Empty!15512) t!4198)) ((_ is Leaf!25732) t!4198) (> i!618 0) (= i!618 (csize!31255 t!4198))))))

(assert (= (and start!533122 res!2146967) b!5038981))

(assert (= (and b!5038981 res!2146965) b!5038986))

(assert (= (and b!5038986 res!2146966) b!5038988))

(assert (= (and b!5038988 res!2146963) b!5038982))

(assert (= (and b!5038982 (not res!2146964)) b!5038983))

(assert (= (and start!533122 ((_ is Node!15512) t!4198)) b!5038984))

(assert (= b!5038985 b!5038987))

(assert (= (and start!533122 ((_ is Leaf!25732) t!4198)) b!5038985))

(declare-fun m!6072628 () Bool)

(assert (=> b!5038984 m!6072628))

(declare-fun m!6072630 () Bool)

(assert (=> b!5038984 m!6072630))

(declare-fun m!6072632 () Bool)

(assert (=> b!5038985 m!6072632))

(declare-fun m!6072634 () Bool)

(assert (=> start!533122 m!6072634))

(declare-fun m!6072636 () Bool)

(assert (=> start!533122 m!6072636))

(declare-fun m!6072638 () Bool)

(assert (=> b!5038983 m!6072638))

(declare-fun m!6072640 () Bool)

(assert (=> b!5038983 m!6072640))

(declare-fun m!6072642 () Bool)

(assert (=> b!5038983 m!6072642))

(declare-fun m!6072644 () Bool)

(assert (=> b!5038982 m!6072644))

(declare-fun m!6072646 () Bool)

(assert (=> b!5038986 m!6072646))

(check-sat (not b!5038983) (not b!5038982) (not b!5038986) (not b!5038984) (not b!5038985) (not start!533122) (not b!5038987))
(check-sat)
(get-model)

(declare-fun d!1620668 () Bool)

(declare-fun size!38898 (List!58424) Int)

(assert (=> d!1620668 (= (inv!77151 (xs!18838 t!4198)) (<= (size!38898 (innerList!15600 (xs!18838 t!4198))) 2147483647))))

(declare-fun bs!1188840 () Bool)

(assert (= bs!1188840 d!1620668))

(declare-fun m!6072648 () Bool)

(assert (=> bs!1188840 m!6072648))

(assert (=> b!5038985 d!1620668))

(declare-fun d!1620672 () Bool)

(declare-fun c!863222 () Bool)

(assert (=> d!1620672 (= c!863222 ((_ is Node!15512) (left!42697 t!4198)))))

(declare-fun e!3147083 () Bool)

(assert (=> d!1620672 (= (inv!77150 (left!42697 t!4198)) e!3147083)))

(declare-fun b!5039007 () Bool)

(declare-fun inv!77152 (Conc!15512) Bool)

(assert (=> b!5039007 (= e!3147083 (inv!77152 (left!42697 t!4198)))))

(declare-fun b!5039008 () Bool)

(declare-fun e!3147084 () Bool)

(assert (=> b!5039008 (= e!3147083 e!3147084)))

(declare-fun res!2146982 () Bool)

(assert (=> b!5039008 (= res!2146982 (not ((_ is Leaf!25732) (left!42697 t!4198))))))

(assert (=> b!5039008 (=> res!2146982 e!3147084)))

(declare-fun b!5039009 () Bool)

(declare-fun inv!77153 (Conc!15512) Bool)

(assert (=> b!5039009 (= e!3147084 (inv!77153 (left!42697 t!4198)))))

(assert (= (and d!1620672 c!863222) b!5039007))

(assert (= (and d!1620672 (not c!863222)) b!5039008))

(assert (= (and b!5039008 (not res!2146982)) b!5039009))

(declare-fun m!6072650 () Bool)

(assert (=> b!5039007 m!6072650))

(declare-fun m!6072652 () Bool)

(assert (=> b!5039009 m!6072652))

(assert (=> b!5038984 d!1620672))

(declare-fun d!1620674 () Bool)

(declare-fun c!863223 () Bool)

(assert (=> d!1620674 (= c!863223 ((_ is Node!15512) (right!43027 t!4198)))))

(declare-fun e!3147085 () Bool)

(assert (=> d!1620674 (= (inv!77150 (right!43027 t!4198)) e!3147085)))

(declare-fun b!5039010 () Bool)

(assert (=> b!5039010 (= e!3147085 (inv!77152 (right!43027 t!4198)))))

(declare-fun b!5039011 () Bool)

(declare-fun e!3147086 () Bool)

(assert (=> b!5039011 (= e!3147085 e!3147086)))

(declare-fun res!2146983 () Bool)

(assert (=> b!5039011 (= res!2146983 (not ((_ is Leaf!25732) (right!43027 t!4198))))))

(assert (=> b!5039011 (=> res!2146983 e!3147086)))

(declare-fun b!5039012 () Bool)

(assert (=> b!5039012 (= e!3147086 (inv!77153 (right!43027 t!4198)))))

(assert (= (and d!1620674 c!863223) b!5039010))

(assert (= (and d!1620674 (not c!863223)) b!5039011))

(assert (= (and b!5039011 (not res!2146983)) b!5039012))

(declare-fun m!6072654 () Bool)

(assert (=> b!5039010 m!6072654))

(declare-fun m!6072656 () Bool)

(assert (=> b!5039012 m!6072656))

(assert (=> b!5038984 d!1620674))

(declare-fun d!1620676 () Bool)

(declare-fun lt!2084043 () Int)

(assert (=> d!1620676 (= lt!2084043 (size!38898 (list!18909 t!4198)))))

(assert (=> d!1620676 (= lt!2084043 (ite ((_ is Empty!15512) t!4198) 0 (ite ((_ is Leaf!25732) t!4198) (csize!31255 t!4198) (csize!31254 t!4198))))))

(assert (=> d!1620676 (= (size!38897 t!4198) lt!2084043)))

(declare-fun bs!1188841 () Bool)

(assert (= bs!1188841 d!1620676))

(assert (=> bs!1188841 m!6072642))

(assert (=> bs!1188841 m!6072642))

(declare-fun m!6072658 () Bool)

(assert (=> bs!1188841 m!6072658))

(assert (=> b!5038986 d!1620676))

(declare-fun b!5039046 () Bool)

(declare-fun res!2147011 () Bool)

(declare-fun e!3147102 () Bool)

(assert (=> b!5039046 (=> (not res!2147011) (not e!3147102))))

(assert (=> b!5039046 (= res!2147011 (isBalanced!4374 (left!42697 Empty!15512)))))

(declare-fun b!5039047 () Bool)

(declare-fun res!2147016 () Bool)

(assert (=> b!5039047 (=> (not res!2147016) (not e!3147102))))

(declare-fun isEmpty!31530 (Conc!15512) Bool)

(assert (=> b!5039047 (= res!2147016 (not (isEmpty!31530 (left!42697 Empty!15512))))))

(declare-fun b!5039048 () Bool)

(declare-fun res!2147015 () Bool)

(assert (=> b!5039048 (=> (not res!2147015) (not e!3147102))))

(assert (=> b!5039048 (= res!2147015 (isBalanced!4374 (right!43027 Empty!15512)))))

(declare-fun b!5039049 () Bool)

(declare-fun e!3147101 () Bool)

(assert (=> b!5039049 (= e!3147101 e!3147102)))

(declare-fun res!2147013 () Bool)

(assert (=> b!5039049 (=> (not res!2147013) (not e!3147102))))

(declare-fun height!2091 (Conc!15512) Int)

(assert (=> b!5039049 (= res!2147013 (<= (- 1) (- (height!2091 (left!42697 Empty!15512)) (height!2091 (right!43027 Empty!15512)))))))

(declare-fun b!5039050 () Bool)

(assert (=> b!5039050 (= e!3147102 (not (isEmpty!31530 (right!43027 Empty!15512))))))

(declare-fun b!5039051 () Bool)

(declare-fun res!2147012 () Bool)

(assert (=> b!5039051 (=> (not res!2147012) (not e!3147102))))

(assert (=> b!5039051 (= res!2147012 (<= (- (height!2091 (left!42697 Empty!15512)) (height!2091 (right!43027 Empty!15512))) 1))))

(declare-fun d!1620678 () Bool)

(declare-fun res!2147014 () Bool)

(assert (=> d!1620678 (=> res!2147014 e!3147101)))

(assert (=> d!1620678 (= res!2147014 (not ((_ is Node!15512) Empty!15512)))))

(assert (=> d!1620678 (= (isBalanced!4374 Empty!15512) e!3147101)))

(assert (= (and d!1620678 (not res!2147014)) b!5039049))

(assert (= (and b!5039049 res!2147013) b!5039051))

(assert (= (and b!5039051 res!2147012) b!5039046))

(assert (= (and b!5039046 res!2147011) b!5039048))

(assert (= (and b!5039048 res!2147015) b!5039047))

(assert (= (and b!5039047 res!2147016) b!5039050))

(declare-fun m!6072688 () Bool)

(assert (=> b!5039047 m!6072688))

(declare-fun m!6072690 () Bool)

(assert (=> b!5039051 m!6072690))

(declare-fun m!6072692 () Bool)

(assert (=> b!5039051 m!6072692))

(declare-fun m!6072694 () Bool)

(assert (=> b!5039046 m!6072694))

(declare-fun m!6072696 () Bool)

(assert (=> b!5039050 m!6072696))

(declare-fun m!6072698 () Bool)

(assert (=> b!5039048 m!6072698))

(assert (=> b!5039049 m!6072690))

(assert (=> b!5039049 m!6072692))

(assert (=> b!5038982 d!1620678))

(declare-fun b!5039055 () Bool)

(declare-fun res!2147018 () Bool)

(declare-fun e!3147106 () Bool)

(assert (=> b!5039055 (=> (not res!2147018) (not e!3147106))))

(assert (=> b!5039055 (= res!2147018 (isBalanced!4374 (left!42697 t!4198)))))

(declare-fun b!5039056 () Bool)

(declare-fun res!2147023 () Bool)

(assert (=> b!5039056 (=> (not res!2147023) (not e!3147106))))

(assert (=> b!5039056 (= res!2147023 (not (isEmpty!31530 (left!42697 t!4198))))))

(declare-fun b!5039057 () Bool)

(declare-fun res!2147022 () Bool)

(assert (=> b!5039057 (=> (not res!2147022) (not e!3147106))))

(assert (=> b!5039057 (= res!2147022 (isBalanced!4374 (right!43027 t!4198)))))

(declare-fun b!5039058 () Bool)

(declare-fun e!3147105 () Bool)

(assert (=> b!5039058 (= e!3147105 e!3147106)))

(declare-fun res!2147020 () Bool)

(assert (=> b!5039058 (=> (not res!2147020) (not e!3147106))))

(assert (=> b!5039058 (= res!2147020 (<= (- 1) (- (height!2091 (left!42697 t!4198)) (height!2091 (right!43027 t!4198)))))))

(declare-fun b!5039059 () Bool)

(assert (=> b!5039059 (= e!3147106 (not (isEmpty!31530 (right!43027 t!4198))))))

(declare-fun b!5039060 () Bool)

(declare-fun res!2147019 () Bool)

(assert (=> b!5039060 (=> (not res!2147019) (not e!3147106))))

(assert (=> b!5039060 (= res!2147019 (<= (- (height!2091 (left!42697 t!4198)) (height!2091 (right!43027 t!4198))) 1))))

(declare-fun d!1620686 () Bool)

(declare-fun res!2147021 () Bool)

(assert (=> d!1620686 (=> res!2147021 e!3147105)))

(assert (=> d!1620686 (= res!2147021 (not ((_ is Node!15512) t!4198)))))

(assert (=> d!1620686 (= (isBalanced!4374 t!4198) e!3147105)))

(assert (= (and d!1620686 (not res!2147021)) b!5039058))

(assert (= (and b!5039058 res!2147020) b!5039060))

(assert (= (and b!5039060 res!2147019) b!5039055))

(assert (= (and b!5039055 res!2147018) b!5039057))

(assert (= (and b!5039057 res!2147022) b!5039056))

(assert (= (and b!5039056 res!2147023) b!5039059))

(declare-fun m!6072708 () Bool)

(assert (=> b!5039056 m!6072708))

(declare-fun m!6072710 () Bool)

(assert (=> b!5039060 m!6072710))

(declare-fun m!6072712 () Bool)

(assert (=> b!5039060 m!6072712))

(declare-fun m!6072714 () Bool)

(assert (=> b!5039055 m!6072714))

(declare-fun m!6072716 () Bool)

(assert (=> b!5039059 m!6072716))

(declare-fun m!6072718 () Bool)

(assert (=> b!5039057 m!6072718))

(assert (=> b!5039058 m!6072710))

(assert (=> b!5039058 m!6072712))

(assert (=> start!533122 d!1620686))

(declare-fun d!1620692 () Bool)

(declare-fun c!863229 () Bool)

(assert (=> d!1620692 (= c!863229 ((_ is Node!15512) t!4198))))

(declare-fun e!3147109 () Bool)

(assert (=> d!1620692 (= (inv!77150 t!4198) e!3147109)))

(declare-fun b!5039064 () Bool)

(assert (=> b!5039064 (= e!3147109 (inv!77152 t!4198))))

(declare-fun b!5039065 () Bool)

(declare-fun e!3147110 () Bool)

(assert (=> b!5039065 (= e!3147109 e!3147110)))

(declare-fun res!2147025 () Bool)

(assert (=> b!5039065 (= res!2147025 (not ((_ is Leaf!25732) t!4198)))))

(assert (=> b!5039065 (=> res!2147025 e!3147110)))

(declare-fun b!5039066 () Bool)

(assert (=> b!5039066 (= e!3147110 (inv!77153 t!4198))))

(assert (= (and d!1620692 c!863229) b!5039064))

(assert (= (and d!1620692 (not c!863229)) b!5039065))

(assert (= (and b!5039065 (not res!2147025)) b!5039066))

(declare-fun m!6072720 () Bool)

(assert (=> b!5039064 m!6072720))

(declare-fun m!6072722 () Bool)

(assert (=> b!5039066 m!6072722))

(assert (=> start!533122 d!1620692))

(declare-fun d!1620694 () Bool)

(declare-fun c!863238 () Bool)

(assert (=> d!1620694 (= c!863238 ((_ is Empty!15512) Empty!15512))))

(declare-fun e!3147119 () List!58424)

(assert (=> d!1620694 (= (list!18909 Empty!15512) e!3147119)))

(declare-fun b!5039084 () Bool)

(declare-fun e!3147120 () List!58424)

(assert (=> b!5039084 (= e!3147119 e!3147120)))

(declare-fun c!863239 () Bool)

(assert (=> b!5039084 (= c!863239 ((_ is Leaf!25732) Empty!15512))))

(declare-fun b!5039083 () Bool)

(assert (=> b!5039083 (= e!3147119 Nil!58300)))

(declare-fun b!5039086 () Bool)

(declare-fun ++!12724 (List!58424 List!58424) List!58424)

(assert (=> b!5039086 (= e!3147120 (++!12724 (list!18909 (left!42697 Empty!15512)) (list!18909 (right!43027 Empty!15512))))))

(declare-fun b!5039085 () Bool)

(declare-fun list!18910 (IArray!31085) List!58424)

(assert (=> b!5039085 (= e!3147120 (list!18910 (xs!18838 Empty!15512)))))

(assert (= (and d!1620694 c!863238) b!5039083))

(assert (= (and d!1620694 (not c!863238)) b!5039084))

(assert (= (and b!5039084 c!863239) b!5039085))

(assert (= (and b!5039084 (not c!863239)) b!5039086))

(declare-fun m!6072724 () Bool)

(assert (=> b!5039086 m!6072724))

(declare-fun m!6072726 () Bool)

(assert (=> b!5039086 m!6072726))

(assert (=> b!5039086 m!6072724))

(assert (=> b!5039086 m!6072726))

(declare-fun m!6072728 () Bool)

(assert (=> b!5039086 m!6072728))

(declare-fun m!6072730 () Bool)

(assert (=> b!5039085 m!6072730))

(assert (=> b!5038983 d!1620694))

(declare-fun b!5039116 () Bool)

(declare-fun lt!2084053 () tuple2!63234)

(assert (=> b!5039116 (= lt!2084053 (splitAtIndex!207 (t!370961 lt!2084040) (- i!618 1)))))

(declare-fun e!3147137 () tuple2!63234)

(assert (=> b!5039116 (= e!3147137 (tuple2!63235 (Cons!58300 (h!64748 lt!2084040) (_1!34920 lt!2084053)) (_2!34920 lt!2084053)))))

(declare-fun b!5039117 () Bool)

(declare-fun e!3147136 () tuple2!63234)

(assert (=> b!5039117 (= e!3147136 (tuple2!63235 Nil!58300 Nil!58300))))

(declare-fun lt!2084052 () tuple2!63234)

(declare-fun e!3147135 () Bool)

(declare-fun b!5039118 () Bool)

(declare-fun drop!2629 (List!58424 Int) List!58424)

(assert (=> b!5039118 (= e!3147135 (= (_2!34920 lt!2084052) (drop!2629 lt!2084040 i!618)))))

(declare-fun b!5039119 () Bool)

(assert (=> b!5039119 (= e!3147136 e!3147137)))

(declare-fun c!863251 () Bool)

(assert (=> b!5039119 (= c!863251 (<= i!618 0))))

(declare-fun b!5039120 () Bool)

(declare-fun res!2147034 () Bool)

(assert (=> b!5039120 (=> (not res!2147034) (not e!3147135))))

(declare-fun take!822 (List!58424 Int) List!58424)

(assert (=> b!5039120 (= res!2147034 (= (_1!34920 lt!2084052) (take!822 lt!2084040 i!618)))))

(declare-fun b!5039115 () Bool)

(assert (=> b!5039115 (= e!3147137 (tuple2!63235 Nil!58300 lt!2084040))))

(declare-fun d!1620696 () Bool)

(assert (=> d!1620696 e!3147135))

(declare-fun res!2147035 () Bool)

(assert (=> d!1620696 (=> (not res!2147035) (not e!3147135))))

(assert (=> d!1620696 (= res!2147035 (= (++!12724 (_1!34920 lt!2084052) (_2!34920 lt!2084052)) lt!2084040))))

(assert (=> d!1620696 (= lt!2084052 e!3147136)))

(declare-fun c!863250 () Bool)

(assert (=> d!1620696 (= c!863250 ((_ is Nil!58300) lt!2084040))))

(assert (=> d!1620696 (= (splitAtIndex!207 lt!2084040 i!618) lt!2084052)))

(assert (= (and d!1620696 c!863250) b!5039117))

(assert (= (and d!1620696 (not c!863250)) b!5039119))

(assert (= (and b!5039119 c!863251) b!5039115))

(assert (= (and b!5039119 (not c!863251)) b!5039116))

(assert (= (and d!1620696 res!2147035) b!5039120))

(assert (= (and b!5039120 res!2147034) b!5039118))

(declare-fun m!6072740 () Bool)

(assert (=> b!5039116 m!6072740))

(declare-fun m!6072742 () Bool)

(assert (=> b!5039118 m!6072742))

(declare-fun m!6072744 () Bool)

(assert (=> b!5039120 m!6072744))

(declare-fun m!6072746 () Bool)

(assert (=> d!1620696 m!6072746))

(assert (=> b!5038983 d!1620696))

(declare-fun d!1620700 () Bool)

(declare-fun c!863252 () Bool)

(assert (=> d!1620700 (= c!863252 ((_ is Empty!15512) t!4198))))

(declare-fun e!3147138 () List!58424)

(assert (=> d!1620700 (= (list!18909 t!4198) e!3147138)))

(declare-fun b!5039122 () Bool)

(declare-fun e!3147139 () List!58424)

(assert (=> b!5039122 (= e!3147138 e!3147139)))

(declare-fun c!863253 () Bool)

(assert (=> b!5039122 (= c!863253 ((_ is Leaf!25732) t!4198))))

(declare-fun b!5039121 () Bool)

(assert (=> b!5039121 (= e!3147138 Nil!58300)))

(declare-fun b!5039124 () Bool)

(assert (=> b!5039124 (= e!3147139 (++!12724 (list!18909 (left!42697 t!4198)) (list!18909 (right!43027 t!4198))))))

(declare-fun b!5039123 () Bool)

(assert (=> b!5039123 (= e!3147139 (list!18910 (xs!18838 t!4198)))))

(assert (= (and d!1620700 c!863252) b!5039121))

(assert (= (and d!1620700 (not c!863252)) b!5039122))

(assert (= (and b!5039122 c!863253) b!5039123))

(assert (= (and b!5039122 (not c!863253)) b!5039124))

(declare-fun m!6072748 () Bool)

(assert (=> b!5039124 m!6072748))

(declare-fun m!6072750 () Bool)

(assert (=> b!5039124 m!6072750))

(assert (=> b!5039124 m!6072748))

(assert (=> b!5039124 m!6072750))

(declare-fun m!6072752 () Bool)

(assert (=> b!5039124 m!6072752))

(declare-fun m!6072754 () Bool)

(assert (=> b!5039123 m!6072754))

(assert (=> b!5038983 d!1620700))

(declare-fun e!3147148 () Bool)

(declare-fun tp!1410826 () Bool)

(declare-fun b!5039139 () Bool)

(declare-fun tp!1410825 () Bool)

(assert (=> b!5039139 (= e!3147148 (and (inv!77150 (left!42697 (left!42697 t!4198))) tp!1410826 (inv!77150 (right!43027 (left!42697 t!4198))) tp!1410825))))

(declare-fun b!5039141 () Bool)

(declare-fun e!3147147 () Bool)

(declare-fun tp!1410827 () Bool)

(assert (=> b!5039141 (= e!3147147 tp!1410827)))

(declare-fun b!5039140 () Bool)

(assert (=> b!5039140 (= e!3147148 (and (inv!77151 (xs!18838 (left!42697 t!4198))) e!3147147))))

(assert (=> b!5038984 (= tp!1410817 (and (inv!77150 (left!42697 t!4198)) e!3147148))))

(assert (= (and b!5038984 ((_ is Node!15512) (left!42697 t!4198))) b!5039139))

(assert (= b!5039140 b!5039141))

(assert (= (and b!5038984 ((_ is Leaf!25732) (left!42697 t!4198))) b!5039140))

(declare-fun m!6072764 () Bool)

(assert (=> b!5039139 m!6072764))

(declare-fun m!6072766 () Bool)

(assert (=> b!5039139 m!6072766))

(declare-fun m!6072768 () Bool)

(assert (=> b!5039140 m!6072768))

(assert (=> b!5038984 m!6072628))

(declare-fun e!3147152 () Bool)

(declare-fun tp!1410829 () Bool)

(declare-fun tp!1410828 () Bool)

(declare-fun b!5039146 () Bool)

(assert (=> b!5039146 (= e!3147152 (and (inv!77150 (left!42697 (right!43027 t!4198))) tp!1410829 (inv!77150 (right!43027 (right!43027 t!4198))) tp!1410828))))

(declare-fun b!5039148 () Bool)

(declare-fun e!3147151 () Bool)

(declare-fun tp!1410830 () Bool)

(assert (=> b!5039148 (= e!3147151 tp!1410830)))

(declare-fun b!5039147 () Bool)

(assert (=> b!5039147 (= e!3147152 (and (inv!77151 (xs!18838 (right!43027 t!4198))) e!3147151))))

(assert (=> b!5038984 (= tp!1410816 (and (inv!77150 (right!43027 t!4198)) e!3147152))))

(assert (= (and b!5038984 ((_ is Node!15512) (right!43027 t!4198))) b!5039146))

(assert (= b!5039147 b!5039148))

(assert (= (and b!5038984 ((_ is Leaf!25732) (right!43027 t!4198))) b!5039147))

(declare-fun m!6072778 () Bool)

(assert (=> b!5039146 m!6072778))

(declare-fun m!6072780 () Bool)

(assert (=> b!5039146 m!6072780))

(declare-fun m!6072782 () Bool)

(assert (=> b!5039147 m!6072782))

(assert (=> b!5038984 m!6072630))

(declare-fun b!5039153 () Bool)

(declare-fun e!3147155 () Bool)

(declare-fun tp_is_empty!36785 () Bool)

(declare-fun tp!1410833 () Bool)

(assert (=> b!5039153 (= e!3147155 (and tp_is_empty!36785 tp!1410833))))

(assert (=> b!5038987 (= tp!1410818 e!3147155)))

(assert (= (and b!5038987 ((_ is Cons!58300) (innerList!15600 (xs!18838 t!4198)))) b!5039153))

(check-sat (not b!5039057) (not b!5039153) (not b!5039048) tp_is_empty!36785 (not b!5039123) (not b!5039124) (not b!5039140) (not b!5039086) (not d!1620696) (not b!5039012) (not b!5039056) (not d!1620676) (not d!1620668) (not b!5039007) (not b!5039058) (not b!5039141) (not b!5039049) (not b!5039147) (not b!5039009) (not b!5039139) (not b!5039066) (not b!5039120) (not b!5039047) (not b!5039059) (not b!5039146) (not b!5039064) (not b!5039060) (not b!5039085) (not b!5039050) (not b!5039148) (not b!5039116) (not b!5038984) (not b!5039046) (not b!5039051) (not b!5039055) (not b!5039010) (not b!5039118))
(check-sat)
(get-model)

(declare-fun b!5039191 () Bool)

(declare-fun e!3147179 () Int)

(declare-fun call!351393 () Int)

(assert (=> b!5039191 (= e!3147179 (- call!351393 i!618))))

(declare-fun b!5039192 () Bool)

(declare-fun e!3147178 () Int)

(assert (=> b!5039192 (= e!3147178 call!351393)))

(declare-fun b!5039193 () Bool)

(declare-fun e!3147181 () List!58424)

(assert (=> b!5039193 (= e!3147181 lt!2084040)))

(declare-fun b!5039194 () Bool)

(declare-fun e!3147177 () List!58424)

(assert (=> b!5039194 (= e!3147177 Nil!58300)))

(declare-fun d!1620708 () Bool)

(declare-fun e!3147180 () Bool)

(assert (=> d!1620708 e!3147180))

(declare-fun res!2147040 () Bool)

(assert (=> d!1620708 (=> (not res!2147040) (not e!3147180))))

(declare-fun lt!2084061 () List!58424)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10352 (List!58424) (InoxSet T!104180))

(assert (=> d!1620708 (= res!2147040 (= ((_ map implies) (content!10352 lt!2084061) (content!10352 lt!2084040)) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1620708 (= lt!2084061 e!3147177)))

(declare-fun c!863267 () Bool)

(assert (=> d!1620708 (= c!863267 ((_ is Nil!58300) lt!2084040))))

(assert (=> d!1620708 (= (drop!2629 lt!2084040 i!618) lt!2084061)))

(declare-fun b!5039195 () Bool)

(assert (=> b!5039195 (= e!3147178 e!3147179)))

(declare-fun c!863266 () Bool)

(assert (=> b!5039195 (= c!863266 (>= i!618 call!351393))))

(declare-fun bm!351388 () Bool)

(assert (=> bm!351388 (= call!351393 (size!38898 lt!2084040))))

(declare-fun b!5039196 () Bool)

(assert (=> b!5039196 (= e!3147177 e!3147181)))

(declare-fun c!863269 () Bool)

(assert (=> b!5039196 (= c!863269 (<= i!618 0))))

(declare-fun b!5039197 () Bool)

(assert (=> b!5039197 (= e!3147179 0)))

(declare-fun b!5039198 () Bool)

(assert (=> b!5039198 (= e!3147181 (drop!2629 (t!370961 lt!2084040) (- i!618 1)))))

(declare-fun b!5039199 () Bool)

(assert (=> b!5039199 (= e!3147180 (= (size!38898 lt!2084061) e!3147178))))

(declare-fun c!863268 () Bool)

(assert (=> b!5039199 (= c!863268 (<= i!618 0))))

(assert (= (and d!1620708 c!863267) b!5039194))

(assert (= (and d!1620708 (not c!863267)) b!5039196))

(assert (= (and b!5039196 c!863269) b!5039193))

(assert (= (and b!5039196 (not c!863269)) b!5039198))

(assert (= (and d!1620708 res!2147040) b!5039199))

(assert (= (and b!5039199 c!863268) b!5039192))

(assert (= (and b!5039199 (not c!863268)) b!5039195))

(assert (= (and b!5039195 c!863266) b!5039197))

(assert (= (and b!5039195 (not c!863266)) b!5039191))

(assert (= (or b!5039192 b!5039195 b!5039191) bm!351388))

(declare-fun m!6072800 () Bool)

(assert (=> d!1620708 m!6072800))

(declare-fun m!6072802 () Bool)

(assert (=> d!1620708 m!6072802))

(declare-fun m!6072804 () Bool)

(assert (=> bm!351388 m!6072804))

(declare-fun m!6072806 () Bool)

(assert (=> b!5039198 m!6072806))

(declare-fun m!6072808 () Bool)

(assert (=> b!5039199 m!6072808))

(assert (=> b!5039118 d!1620708))

(declare-fun d!1620710 () Bool)

(assert (not d!1620710))

(assert (=> b!5039047 d!1620710))

(declare-fun b!5039214 () Bool)

(declare-fun e!3147193 () Int)

(declare-fun e!3147192 () Int)

(assert (=> b!5039214 (= e!3147193 e!3147192)))

(declare-fun c!863277 () Bool)

(assert (=> b!5039214 (= c!863277 (>= i!618 (size!38898 lt!2084040)))))

(declare-fun b!5039215 () Bool)

(declare-fun e!3147190 () List!58424)

(assert (=> b!5039215 (= e!3147190 (Cons!58300 (h!64748 lt!2084040) (take!822 (t!370961 lt!2084040) (- i!618 1))))))

(declare-fun b!5039216 () Bool)

(declare-fun e!3147191 () Bool)

(declare-fun lt!2084064 () List!58424)

(assert (=> b!5039216 (= e!3147191 (= (size!38898 lt!2084064) e!3147193))))

(declare-fun c!863276 () Bool)

(assert (=> b!5039216 (= c!863276 (<= i!618 0))))

(declare-fun b!5039217 () Bool)

(assert (=> b!5039217 (= e!3147193 0)))

(declare-fun d!1620712 () Bool)

(assert (=> d!1620712 e!3147191))

(declare-fun res!2147043 () Bool)

(assert (=> d!1620712 (=> (not res!2147043) (not e!3147191))))

(assert (=> d!1620712 (= res!2147043 (= ((_ map implies) (content!10352 lt!2084064) (content!10352 lt!2084040)) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1620712 (= lt!2084064 e!3147190)))

(declare-fun c!863278 () Bool)

(assert (=> d!1620712 (= c!863278 (or ((_ is Nil!58300) lt!2084040) (<= i!618 0)))))

(assert (=> d!1620712 (= (take!822 lt!2084040 i!618) lt!2084064)))

(declare-fun b!5039218 () Bool)

(assert (=> b!5039218 (= e!3147192 i!618)))

(declare-fun b!5039219 () Bool)

(assert (=> b!5039219 (= e!3147192 (size!38898 lt!2084040))))

(declare-fun b!5039220 () Bool)

(assert (=> b!5039220 (= e!3147190 Nil!58300)))

(assert (= (and d!1620712 c!863278) b!5039220))

(assert (= (and d!1620712 (not c!863278)) b!5039215))

(assert (= (and d!1620712 res!2147043) b!5039216))

(assert (= (and b!5039216 c!863276) b!5039217))

(assert (= (and b!5039216 (not c!863276)) b!5039214))

(assert (= (and b!5039214 c!863277) b!5039219))

(assert (= (and b!5039214 (not c!863277)) b!5039218))

(declare-fun m!6072810 () Bool)

(assert (=> b!5039215 m!6072810))

(assert (=> b!5039219 m!6072804))

(declare-fun m!6072812 () Bool)

(assert (=> b!5039216 m!6072812))

(assert (=> b!5039214 m!6072804))

(declare-fun m!6072814 () Bool)

(assert (=> d!1620712 m!6072814))

(assert (=> d!1620712 m!6072802))

(assert (=> b!5039120 d!1620712))

(declare-fun d!1620714 () Bool)

(assert (not d!1620714))

(assert (=> b!5039049 d!1620714))

(declare-fun d!1620716 () Bool)

(assert (not d!1620716))

(assert (=> b!5039049 d!1620716))

(declare-fun d!1620718 () Bool)

(declare-fun lt!2084067 () Int)

(assert (=> d!1620718 (>= lt!2084067 0)))

(declare-fun e!3147196 () Int)

(assert (=> d!1620718 (= lt!2084067 e!3147196)))

(declare-fun c!863281 () Bool)

(assert (=> d!1620718 (= c!863281 ((_ is Nil!58300) (list!18909 t!4198)))))

(assert (=> d!1620718 (= (size!38898 (list!18909 t!4198)) lt!2084067)))

(declare-fun b!5039225 () Bool)

(assert (=> b!5039225 (= e!3147196 0)))

(declare-fun b!5039226 () Bool)

(assert (=> b!5039226 (= e!3147196 (+ 1 (size!38898 (t!370961 (list!18909 t!4198)))))))

(assert (= (and d!1620718 c!863281) b!5039225))

(assert (= (and d!1620718 (not c!863281)) b!5039226))

(declare-fun m!6072816 () Bool)

(assert (=> b!5039226 m!6072816))

(assert (=> d!1620676 d!1620718))

(assert (=> d!1620676 d!1620700))

(declare-fun d!1620720 () Bool)

(assert (not d!1620720))

(assert (=> b!5039048 d!1620720))

(declare-fun d!1620722 () Bool)

(assert (=> d!1620722 (= (list!18910 (xs!18838 t!4198)) (innerList!15600 (xs!18838 t!4198)))))

(assert (=> b!5039123 d!1620722))

(declare-fun d!1620724 () Bool)

(assert (not d!1620724))

(assert (=> b!5039086 d!1620724))

(declare-fun d!1620726 () Bool)

(assert (not d!1620726))

(assert (=> b!5039086 d!1620726))

(declare-fun d!1620728 () Bool)

(assert (not d!1620728))

(assert (=> b!5039086 d!1620728))

(declare-fun b!5039228 () Bool)

(declare-fun lt!2084069 () tuple2!63234)

(assert (=> b!5039228 (= lt!2084069 (splitAtIndex!207 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1)))))

(declare-fun e!3147199 () tuple2!63234)

(assert (=> b!5039228 (= e!3147199 (tuple2!63235 (Cons!58300 (h!64748 (t!370961 lt!2084040)) (_1!34920 lt!2084069)) (_2!34920 lt!2084069)))))

(declare-fun b!5039229 () Bool)

(declare-fun e!3147198 () tuple2!63234)

(assert (=> b!5039229 (= e!3147198 (tuple2!63235 Nil!58300 Nil!58300))))

(declare-fun b!5039230 () Bool)

(declare-fun e!3147197 () Bool)

(declare-fun lt!2084068 () tuple2!63234)

(assert (=> b!5039230 (= e!3147197 (= (_2!34920 lt!2084068) (drop!2629 (t!370961 lt!2084040) (- i!618 1))))))

(declare-fun b!5039231 () Bool)

(assert (=> b!5039231 (= e!3147198 e!3147199)))

(declare-fun c!863283 () Bool)

(assert (=> b!5039231 (= c!863283 (<= (- i!618 1) 0))))

(declare-fun b!5039232 () Bool)

(declare-fun res!2147044 () Bool)

(assert (=> b!5039232 (=> (not res!2147044) (not e!3147197))))

(assert (=> b!5039232 (= res!2147044 (= (_1!34920 lt!2084068) (take!822 (t!370961 lt!2084040) (- i!618 1))))))

(declare-fun b!5039227 () Bool)

(assert (=> b!5039227 (= e!3147199 (tuple2!63235 Nil!58300 (t!370961 lt!2084040)))))

(declare-fun d!1620730 () Bool)

(assert (=> d!1620730 e!3147197))

(declare-fun res!2147045 () Bool)

(assert (=> d!1620730 (=> (not res!2147045) (not e!3147197))))

(assert (=> d!1620730 (= res!2147045 (= (++!12724 (_1!34920 lt!2084068) (_2!34920 lt!2084068)) (t!370961 lt!2084040)))))

(assert (=> d!1620730 (= lt!2084068 e!3147198)))

(declare-fun c!863282 () Bool)

(assert (=> d!1620730 (= c!863282 ((_ is Nil!58300) (t!370961 lt!2084040)))))

(assert (=> d!1620730 (= (splitAtIndex!207 (t!370961 lt!2084040) (- i!618 1)) lt!2084068)))

(assert (= (and d!1620730 c!863282) b!5039229))

(assert (= (and d!1620730 (not c!863282)) b!5039231))

(assert (= (and b!5039231 c!863283) b!5039227))

(assert (= (and b!5039231 (not c!863283)) b!5039228))

(assert (= (and d!1620730 res!2147045) b!5039232))

(assert (= (and b!5039232 res!2147044) b!5039230))

(declare-fun m!6072818 () Bool)

(assert (=> b!5039228 m!6072818))

(assert (=> b!5039230 m!6072806))

(assert (=> b!5039232 m!6072810))

(declare-fun m!6072820 () Bool)

(assert (=> d!1620730 m!6072820))

(assert (=> b!5039116 d!1620730))

(declare-fun d!1620732 () Bool)

(assert (=> d!1620732 (= (inv!77151 (xs!18838 (right!43027 t!4198))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 t!4198)))) 2147483647))))

(declare-fun bs!1188844 () Bool)

(assert (= bs!1188844 d!1620732))

(declare-fun m!6072822 () Bool)

(assert (=> bs!1188844 m!6072822))

(assert (=> b!5039147 d!1620732))

(declare-fun d!1620734 () Bool)

(assert (not d!1620734))

(assert (=> b!5039046 d!1620734))

(declare-fun d!1620736 () Bool)

(declare-fun e!3147205 () Bool)

(assert (=> d!1620736 e!3147205))

(declare-fun res!2147051 () Bool)

(assert (=> d!1620736 (=> (not res!2147051) (not e!3147205))))

(declare-fun lt!2084072 () List!58424)

(assert (=> d!1620736 (= res!2147051 (= (content!10352 lt!2084072) ((_ map or) (content!10352 (list!18909 (left!42697 t!4198))) (content!10352 (list!18909 (right!43027 t!4198))))))))

(declare-fun e!3147204 () List!58424)

(assert (=> d!1620736 (= lt!2084072 e!3147204)))

(declare-fun c!863286 () Bool)

(assert (=> d!1620736 (= c!863286 ((_ is Nil!58300) (list!18909 (left!42697 t!4198))))))

(assert (=> d!1620736 (= (++!12724 (list!18909 (left!42697 t!4198)) (list!18909 (right!43027 t!4198))) lt!2084072)))

(declare-fun b!5039243 () Bool)

(declare-fun res!2147050 () Bool)

(assert (=> b!5039243 (=> (not res!2147050) (not e!3147205))))

(assert (=> b!5039243 (= res!2147050 (= (size!38898 lt!2084072) (+ (size!38898 (list!18909 (left!42697 t!4198))) (size!38898 (list!18909 (right!43027 t!4198))))))))

(declare-fun b!5039241 () Bool)

(assert (=> b!5039241 (= e!3147204 (list!18909 (right!43027 t!4198)))))

(declare-fun b!5039242 () Bool)

(assert (=> b!5039242 (= e!3147204 (Cons!58300 (h!64748 (list!18909 (left!42697 t!4198))) (++!12724 (t!370961 (list!18909 (left!42697 t!4198))) (list!18909 (right!43027 t!4198)))))))

(declare-fun b!5039244 () Bool)

(assert (=> b!5039244 (= e!3147205 (or (not (= (list!18909 (right!43027 t!4198)) Nil!58300)) (= lt!2084072 (list!18909 (left!42697 t!4198)))))))

(assert (= (and d!1620736 c!863286) b!5039241))

(assert (= (and d!1620736 (not c!863286)) b!5039242))

(assert (= (and d!1620736 res!2147051) b!5039243))

(assert (= (and b!5039243 res!2147050) b!5039244))

(declare-fun m!6072824 () Bool)

(assert (=> d!1620736 m!6072824))

(assert (=> d!1620736 m!6072748))

(declare-fun m!6072826 () Bool)

(assert (=> d!1620736 m!6072826))

(assert (=> d!1620736 m!6072750))

(declare-fun m!6072828 () Bool)

(assert (=> d!1620736 m!6072828))

(declare-fun m!6072830 () Bool)

(assert (=> b!5039243 m!6072830))

(assert (=> b!5039243 m!6072748))

(declare-fun m!6072832 () Bool)

(assert (=> b!5039243 m!6072832))

(assert (=> b!5039243 m!6072750))

(declare-fun m!6072834 () Bool)

(assert (=> b!5039243 m!6072834))

(assert (=> b!5039242 m!6072750))

(declare-fun m!6072836 () Bool)

(assert (=> b!5039242 m!6072836))

(assert (=> b!5039124 d!1620736))

(declare-fun d!1620738 () Bool)

(declare-fun c!863287 () Bool)

(assert (=> d!1620738 (= c!863287 ((_ is Empty!15512) (left!42697 t!4198)))))

(declare-fun e!3147206 () List!58424)

(assert (=> d!1620738 (= (list!18909 (left!42697 t!4198)) e!3147206)))

(declare-fun b!5039246 () Bool)

(declare-fun e!3147207 () List!58424)

(assert (=> b!5039246 (= e!3147206 e!3147207)))

(declare-fun c!863288 () Bool)

(assert (=> b!5039246 (= c!863288 ((_ is Leaf!25732) (left!42697 t!4198)))))

(declare-fun b!5039245 () Bool)

(assert (=> b!5039245 (= e!3147206 Nil!58300)))

(declare-fun b!5039248 () Bool)

(assert (=> b!5039248 (= e!3147207 (++!12724 (list!18909 (left!42697 (left!42697 t!4198))) (list!18909 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039247 () Bool)

(assert (=> b!5039247 (= e!3147207 (list!18910 (xs!18838 (left!42697 t!4198))))))

(assert (= (and d!1620738 c!863287) b!5039245))

(assert (= (and d!1620738 (not c!863287)) b!5039246))

(assert (= (and b!5039246 c!863288) b!5039247))

(assert (= (and b!5039246 (not c!863288)) b!5039248))

(declare-fun m!6072838 () Bool)

(assert (=> b!5039248 m!6072838))

(declare-fun m!6072840 () Bool)

(assert (=> b!5039248 m!6072840))

(assert (=> b!5039248 m!6072838))

(assert (=> b!5039248 m!6072840))

(declare-fun m!6072842 () Bool)

(assert (=> b!5039248 m!6072842))

(declare-fun m!6072844 () Bool)

(assert (=> b!5039247 m!6072844))

(assert (=> b!5039124 d!1620738))

(declare-fun d!1620740 () Bool)

(declare-fun c!863289 () Bool)

(assert (=> d!1620740 (= c!863289 ((_ is Empty!15512) (right!43027 t!4198)))))

(declare-fun e!3147208 () List!58424)

(assert (=> d!1620740 (= (list!18909 (right!43027 t!4198)) e!3147208)))

(declare-fun b!5039250 () Bool)

(declare-fun e!3147209 () List!58424)

(assert (=> b!5039250 (= e!3147208 e!3147209)))

(declare-fun c!863290 () Bool)

(assert (=> b!5039250 (= c!863290 ((_ is Leaf!25732) (right!43027 t!4198)))))

(declare-fun b!5039249 () Bool)

(assert (=> b!5039249 (= e!3147208 Nil!58300)))

(declare-fun b!5039252 () Bool)

(assert (=> b!5039252 (= e!3147209 (++!12724 (list!18909 (left!42697 (right!43027 t!4198))) (list!18909 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039251 () Bool)

(assert (=> b!5039251 (= e!3147209 (list!18910 (xs!18838 (right!43027 t!4198))))))

(assert (= (and d!1620740 c!863289) b!5039249))

(assert (= (and d!1620740 (not c!863289)) b!5039250))

(assert (= (and b!5039250 c!863290) b!5039251))

(assert (= (and b!5039250 (not c!863290)) b!5039252))

(declare-fun m!6072846 () Bool)

(assert (=> b!5039252 m!6072846))

(declare-fun m!6072848 () Bool)

(assert (=> b!5039252 m!6072848))

(assert (=> b!5039252 m!6072846))

(assert (=> b!5039252 m!6072848))

(declare-fun m!6072850 () Bool)

(assert (=> b!5039252 m!6072850))

(declare-fun m!6072852 () Bool)

(assert (=> b!5039251 m!6072852))

(assert (=> b!5039124 d!1620740))

(declare-fun d!1620742 () Bool)

(declare-fun c!863291 () Bool)

(assert (=> d!1620742 (= c!863291 ((_ is Node!15512) (left!42697 (right!43027 t!4198))))))

(declare-fun e!3147210 () Bool)

(assert (=> d!1620742 (= (inv!77150 (left!42697 (right!43027 t!4198))) e!3147210)))

(declare-fun b!5039253 () Bool)

(assert (=> b!5039253 (= e!3147210 (inv!77152 (left!42697 (right!43027 t!4198))))))

(declare-fun b!5039254 () Bool)

(declare-fun e!3147211 () Bool)

(assert (=> b!5039254 (= e!3147210 e!3147211)))

(declare-fun res!2147052 () Bool)

(assert (=> b!5039254 (= res!2147052 (not ((_ is Leaf!25732) (left!42697 (right!43027 t!4198)))))))

(assert (=> b!5039254 (=> res!2147052 e!3147211)))

(declare-fun b!5039255 () Bool)

(assert (=> b!5039255 (= e!3147211 (inv!77153 (left!42697 (right!43027 t!4198))))))

(assert (= (and d!1620742 c!863291) b!5039253))

(assert (= (and d!1620742 (not c!863291)) b!5039254))

(assert (= (and b!5039254 (not res!2147052)) b!5039255))

(declare-fun m!6072854 () Bool)

(assert (=> b!5039253 m!6072854))

(declare-fun m!6072856 () Bool)

(assert (=> b!5039255 m!6072856))

(assert (=> b!5039146 d!1620742))

(declare-fun d!1620744 () Bool)

(declare-fun c!863292 () Bool)

(assert (=> d!1620744 (= c!863292 ((_ is Node!15512) (right!43027 (right!43027 t!4198))))))

(declare-fun e!3147212 () Bool)

(assert (=> d!1620744 (= (inv!77150 (right!43027 (right!43027 t!4198))) e!3147212)))

(declare-fun b!5039256 () Bool)

(assert (=> b!5039256 (= e!3147212 (inv!77152 (right!43027 (right!43027 t!4198))))))

(declare-fun b!5039257 () Bool)

(declare-fun e!3147213 () Bool)

(assert (=> b!5039257 (= e!3147212 e!3147213)))

(declare-fun res!2147053 () Bool)

(assert (=> b!5039257 (= res!2147053 (not ((_ is Leaf!25732) (right!43027 (right!43027 t!4198)))))))

(assert (=> b!5039257 (=> res!2147053 e!3147213)))

(declare-fun b!5039258 () Bool)

(assert (=> b!5039258 (= e!3147213 (inv!77153 (right!43027 (right!43027 t!4198))))))

(assert (= (and d!1620744 c!863292) b!5039256))

(assert (= (and d!1620744 (not c!863292)) b!5039257))

(assert (= (and b!5039257 (not res!2147053)) b!5039258))

(declare-fun m!6072858 () Bool)

(assert (=> b!5039256 m!6072858))

(declare-fun m!6072860 () Bool)

(assert (=> b!5039258 m!6072860))

(assert (=> b!5039146 d!1620744))

(declare-fun d!1620746 () Bool)

(declare-fun e!3147215 () Bool)

(assert (=> d!1620746 e!3147215))

(declare-fun res!2147055 () Bool)

(assert (=> d!1620746 (=> (not res!2147055) (not e!3147215))))

(declare-fun lt!2084073 () List!58424)

(assert (=> d!1620746 (= res!2147055 (= (content!10352 lt!2084073) ((_ map or) (content!10352 (_1!34920 lt!2084052)) (content!10352 (_2!34920 lt!2084052)))))))

(declare-fun e!3147214 () List!58424)

(assert (=> d!1620746 (= lt!2084073 e!3147214)))

(declare-fun c!863293 () Bool)

(assert (=> d!1620746 (= c!863293 ((_ is Nil!58300) (_1!34920 lt!2084052)))))

(assert (=> d!1620746 (= (++!12724 (_1!34920 lt!2084052) (_2!34920 lt!2084052)) lt!2084073)))

(declare-fun b!5039261 () Bool)

(declare-fun res!2147054 () Bool)

(assert (=> b!5039261 (=> (not res!2147054) (not e!3147215))))

(assert (=> b!5039261 (= res!2147054 (= (size!38898 lt!2084073) (+ (size!38898 (_1!34920 lt!2084052)) (size!38898 (_2!34920 lt!2084052)))))))

(declare-fun b!5039259 () Bool)

(assert (=> b!5039259 (= e!3147214 (_2!34920 lt!2084052))))

(declare-fun b!5039260 () Bool)

(assert (=> b!5039260 (= e!3147214 (Cons!58300 (h!64748 (_1!34920 lt!2084052)) (++!12724 (t!370961 (_1!34920 lt!2084052)) (_2!34920 lt!2084052))))))

(declare-fun b!5039262 () Bool)

(assert (=> b!5039262 (= e!3147215 (or (not (= (_2!34920 lt!2084052) Nil!58300)) (= lt!2084073 (_1!34920 lt!2084052))))))

(assert (= (and d!1620746 c!863293) b!5039259))

(assert (= (and d!1620746 (not c!863293)) b!5039260))

(assert (= (and d!1620746 res!2147055) b!5039261))

(assert (= (and b!5039261 res!2147054) b!5039262))

(declare-fun m!6072862 () Bool)

(assert (=> d!1620746 m!6072862))

(declare-fun m!6072864 () Bool)

(assert (=> d!1620746 m!6072864))

(declare-fun m!6072866 () Bool)

(assert (=> d!1620746 m!6072866))

(declare-fun m!6072868 () Bool)

(assert (=> b!5039261 m!6072868))

(declare-fun m!6072870 () Bool)

(assert (=> b!5039261 m!6072870))

(declare-fun m!6072872 () Bool)

(assert (=> b!5039261 m!6072872))

(declare-fun m!6072874 () Bool)

(assert (=> b!5039260 m!6072874))

(assert (=> d!1620696 d!1620746))

(declare-fun d!1620748 () Bool)

(assert (not d!1620748))

(assert (=> b!5039085 d!1620748))

(declare-fun d!1620750 () Bool)

(declare-fun res!2147060 () Bool)

(declare-fun e!3147218 () Bool)

(assert (=> d!1620750 (=> (not res!2147060) (not e!3147218))))

(assert (=> d!1620750 (= res!2147060 (<= (size!38898 (list!18910 (xs!18838 (right!43027 t!4198)))) 512))))

(assert (=> d!1620750 (= (inv!77153 (right!43027 t!4198)) e!3147218)))

(declare-fun b!5039267 () Bool)

(declare-fun res!2147061 () Bool)

(assert (=> b!5039267 (=> (not res!2147061) (not e!3147218))))

(assert (=> b!5039267 (= res!2147061 (= (csize!31255 (right!43027 t!4198)) (size!38898 (list!18910 (xs!18838 (right!43027 t!4198))))))))

(declare-fun b!5039268 () Bool)

(assert (=> b!5039268 (= e!3147218 (and (> (csize!31255 (right!43027 t!4198)) 0) (<= (csize!31255 (right!43027 t!4198)) 512)))))

(assert (= (and d!1620750 res!2147060) b!5039267))

(assert (= (and b!5039267 res!2147061) b!5039268))

(assert (=> d!1620750 m!6072852))

(assert (=> d!1620750 m!6072852))

(declare-fun m!6072876 () Bool)

(assert (=> d!1620750 m!6072876))

(assert (=> b!5039267 m!6072852))

(assert (=> b!5039267 m!6072852))

(assert (=> b!5039267 m!6072876))

(assert (=> b!5039012 d!1620750))

(declare-fun d!1620752 () Bool)

(assert (=> d!1620752 (= (inv!77151 (xs!18838 (left!42697 t!4198))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 t!4198)))) 2147483647))))

(declare-fun bs!1188845 () Bool)

(assert (= bs!1188845 d!1620752))

(declare-fun m!6072878 () Bool)

(assert (=> bs!1188845 m!6072878))

(assert (=> b!5039140 d!1620752))

(declare-fun d!1620754 () Bool)

(declare-fun c!863294 () Bool)

(assert (=> d!1620754 (= c!863294 ((_ is Node!15512) (left!42697 (left!42697 t!4198))))))

(declare-fun e!3147219 () Bool)

(assert (=> d!1620754 (= (inv!77150 (left!42697 (left!42697 t!4198))) e!3147219)))

(declare-fun b!5039269 () Bool)

(assert (=> b!5039269 (= e!3147219 (inv!77152 (left!42697 (left!42697 t!4198))))))

(declare-fun b!5039270 () Bool)

(declare-fun e!3147220 () Bool)

(assert (=> b!5039270 (= e!3147219 e!3147220)))

(declare-fun res!2147062 () Bool)

(assert (=> b!5039270 (= res!2147062 (not ((_ is Leaf!25732) (left!42697 (left!42697 t!4198)))))))

(assert (=> b!5039270 (=> res!2147062 e!3147220)))

(declare-fun b!5039271 () Bool)

(assert (=> b!5039271 (= e!3147220 (inv!77153 (left!42697 (left!42697 t!4198))))))

(assert (= (and d!1620754 c!863294) b!5039269))

(assert (= (and d!1620754 (not c!863294)) b!5039270))

(assert (= (and b!5039270 (not res!2147062)) b!5039271))

(declare-fun m!6072880 () Bool)

(assert (=> b!5039269 m!6072880))

(declare-fun m!6072882 () Bool)

(assert (=> b!5039271 m!6072882))

(assert (=> b!5039139 d!1620754))

(declare-fun d!1620756 () Bool)

(declare-fun c!863295 () Bool)

(assert (=> d!1620756 (= c!863295 ((_ is Node!15512) (right!43027 (left!42697 t!4198))))))

(declare-fun e!3147221 () Bool)

(assert (=> d!1620756 (= (inv!77150 (right!43027 (left!42697 t!4198))) e!3147221)))

(declare-fun b!5039272 () Bool)

(assert (=> b!5039272 (= e!3147221 (inv!77152 (right!43027 (left!42697 t!4198))))))

(declare-fun b!5039273 () Bool)

(declare-fun e!3147222 () Bool)

(assert (=> b!5039273 (= e!3147221 e!3147222)))

(declare-fun res!2147063 () Bool)

(assert (=> b!5039273 (= res!2147063 (not ((_ is Leaf!25732) (right!43027 (left!42697 t!4198)))))))

(assert (=> b!5039273 (=> res!2147063 e!3147222)))

(declare-fun b!5039274 () Bool)

(assert (=> b!5039274 (= e!3147222 (inv!77153 (right!43027 (left!42697 t!4198))))))

(assert (= (and d!1620756 c!863295) b!5039272))

(assert (= (and d!1620756 (not c!863295)) b!5039273))

(assert (= (and b!5039273 (not res!2147063)) b!5039274))

(declare-fun m!6072884 () Bool)

(assert (=> b!5039272 m!6072884))

(declare-fun m!6072886 () Bool)

(assert (=> b!5039274 m!6072886))

(assert (=> b!5039139 d!1620756))

(declare-fun d!1620758 () Bool)

(declare-fun lt!2084076 () Bool)

(declare-fun isEmpty!31531 (List!58424) Bool)

(assert (=> d!1620758 (= lt!2084076 (isEmpty!31531 (list!18909 (right!43027 t!4198))))))

(assert (=> d!1620758 (= lt!2084076 (= (size!38897 (right!43027 t!4198)) 0))))

(assert (=> d!1620758 (= (isEmpty!31530 (right!43027 t!4198)) lt!2084076)))

(declare-fun bs!1188846 () Bool)

(assert (= bs!1188846 d!1620758))

(assert (=> bs!1188846 m!6072750))

(assert (=> bs!1188846 m!6072750))

(declare-fun m!6072888 () Bool)

(assert (=> bs!1188846 m!6072888))

(declare-fun m!6072890 () Bool)

(assert (=> bs!1188846 m!6072890))

(assert (=> b!5039059 d!1620758))

(declare-fun d!1620760 () Bool)

(declare-fun res!2147070 () Bool)

(declare-fun e!3147225 () Bool)

(assert (=> d!1620760 (=> (not res!2147070) (not e!3147225))))

(assert (=> d!1620760 (= res!2147070 (= (csize!31254 (right!43027 t!4198)) (+ (size!38897 (left!42697 (right!43027 t!4198))) (size!38897 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1620760 (= (inv!77152 (right!43027 t!4198)) e!3147225)))

(declare-fun b!5039281 () Bool)

(declare-fun res!2147071 () Bool)

(assert (=> b!5039281 (=> (not res!2147071) (not e!3147225))))

(assert (=> b!5039281 (= res!2147071 (and (not (= (left!42697 (right!43027 t!4198)) Empty!15512)) (not (= (right!43027 (right!43027 t!4198)) Empty!15512))))))

(declare-fun b!5039282 () Bool)

(declare-fun res!2147072 () Bool)

(assert (=> b!5039282 (=> (not res!2147072) (not e!3147225))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5039282 (= res!2147072 (= (cheight!15723 (right!43027 t!4198)) (+ (max!0 (height!2091 (left!42697 (right!43027 t!4198))) (height!2091 (right!43027 (right!43027 t!4198)))) 1)))))

(declare-fun b!5039283 () Bool)

(assert (=> b!5039283 (= e!3147225 (<= 0 (cheight!15723 (right!43027 t!4198))))))

(assert (= (and d!1620760 res!2147070) b!5039281))

(assert (= (and b!5039281 res!2147071) b!5039282))

(assert (= (and b!5039282 res!2147072) b!5039283))

(declare-fun m!6072892 () Bool)

(assert (=> d!1620760 m!6072892))

(declare-fun m!6072894 () Bool)

(assert (=> d!1620760 m!6072894))

(declare-fun m!6072896 () Bool)

(assert (=> b!5039282 m!6072896))

(declare-fun m!6072898 () Bool)

(assert (=> b!5039282 m!6072898))

(assert (=> b!5039282 m!6072896))

(assert (=> b!5039282 m!6072898))

(declare-fun m!6072900 () Bool)

(assert (=> b!5039282 m!6072900))

(assert (=> b!5039010 d!1620760))

(declare-fun d!1620762 () Bool)

(assert (=> d!1620762 (= (height!2091 (left!42697 t!4198)) (ite ((_ is Empty!15512) (left!42697 t!4198)) 0 (ite ((_ is Leaf!25732) (left!42697 t!4198)) 1 (cheight!15723 (left!42697 t!4198)))))))

(assert (=> b!5039060 d!1620762))

(declare-fun d!1620764 () Bool)

(assert (=> d!1620764 (= (height!2091 (right!43027 t!4198)) (ite ((_ is Empty!15512) (right!43027 t!4198)) 0 (ite ((_ is Leaf!25732) (right!43027 t!4198)) 1 (cheight!15723 (right!43027 t!4198)))))))

(assert (=> b!5039060 d!1620764))

(declare-fun b!5039284 () Bool)

(declare-fun res!2147073 () Bool)

(declare-fun e!3147227 () Bool)

(assert (=> b!5039284 (=> (not res!2147073) (not e!3147227))))

(assert (=> b!5039284 (= res!2147073 (isBalanced!4374 (left!42697 (right!43027 t!4198))))))

(declare-fun b!5039285 () Bool)

(declare-fun res!2147078 () Bool)

(assert (=> b!5039285 (=> (not res!2147078) (not e!3147227))))

(assert (=> b!5039285 (= res!2147078 (not (isEmpty!31530 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5039286 () Bool)

(declare-fun res!2147077 () Bool)

(assert (=> b!5039286 (=> (not res!2147077) (not e!3147227))))

(assert (=> b!5039286 (= res!2147077 (isBalanced!4374 (right!43027 (right!43027 t!4198))))))

(declare-fun b!5039287 () Bool)

(declare-fun e!3147226 () Bool)

(assert (=> b!5039287 (= e!3147226 e!3147227)))

(declare-fun res!2147075 () Bool)

(assert (=> b!5039287 (=> (not res!2147075) (not e!3147227))))

(assert (=> b!5039287 (= res!2147075 (<= (- 1) (- (height!2091 (left!42697 (right!43027 t!4198))) (height!2091 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039288 () Bool)

(assert (=> b!5039288 (= e!3147227 (not (isEmpty!31530 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039289 () Bool)

(declare-fun res!2147074 () Bool)

(assert (=> b!5039289 (=> (not res!2147074) (not e!3147227))))

(assert (=> b!5039289 (= res!2147074 (<= (- (height!2091 (left!42697 (right!43027 t!4198))) (height!2091 (right!43027 (right!43027 t!4198)))) 1))))

(declare-fun d!1620766 () Bool)

(declare-fun res!2147076 () Bool)

(assert (=> d!1620766 (=> res!2147076 e!3147226)))

(assert (=> d!1620766 (= res!2147076 (not ((_ is Node!15512) (right!43027 t!4198))))))

(assert (=> d!1620766 (= (isBalanced!4374 (right!43027 t!4198)) e!3147226)))

(assert (= (and d!1620766 (not res!2147076)) b!5039287))

(assert (= (and b!5039287 res!2147075) b!5039289))

(assert (= (and b!5039289 res!2147074) b!5039284))

(assert (= (and b!5039284 res!2147073) b!5039286))

(assert (= (and b!5039286 res!2147077) b!5039285))

(assert (= (and b!5039285 res!2147078) b!5039288))

(declare-fun m!6072902 () Bool)

(assert (=> b!5039285 m!6072902))

(assert (=> b!5039289 m!6072896))

(assert (=> b!5039289 m!6072898))

(declare-fun m!6072904 () Bool)

(assert (=> b!5039284 m!6072904))

(declare-fun m!6072906 () Bool)

(assert (=> b!5039288 m!6072906))

(declare-fun m!6072908 () Bool)

(assert (=> b!5039286 m!6072908))

(assert (=> b!5039287 m!6072896))

(assert (=> b!5039287 m!6072898))

(assert (=> b!5039057 d!1620766))

(declare-fun d!1620768 () Bool)

(declare-fun lt!2084077 () Bool)

(assert (=> d!1620768 (= lt!2084077 (isEmpty!31531 (list!18909 (left!42697 t!4198))))))

(assert (=> d!1620768 (= lt!2084077 (= (size!38897 (left!42697 t!4198)) 0))))

(assert (=> d!1620768 (= (isEmpty!31530 (left!42697 t!4198)) lt!2084077)))

(declare-fun bs!1188847 () Bool)

(assert (= bs!1188847 d!1620768))

(assert (=> bs!1188847 m!6072748))

(assert (=> bs!1188847 m!6072748))

(declare-fun m!6072910 () Bool)

(assert (=> bs!1188847 m!6072910))

(declare-fun m!6072912 () Bool)

(assert (=> bs!1188847 m!6072912))

(assert (=> b!5039056 d!1620768))

(assert (=> b!5038984 d!1620672))

(assert (=> b!5038984 d!1620674))

(assert (=> b!5039058 d!1620762))

(assert (=> b!5039058 d!1620764))

(declare-fun d!1620770 () Bool)

(declare-fun res!2147079 () Bool)

(declare-fun e!3147228 () Bool)

(assert (=> d!1620770 (=> (not res!2147079) (not e!3147228))))

(assert (=> d!1620770 (= res!2147079 (<= (size!38898 (list!18910 (xs!18838 t!4198))) 512))))

(assert (=> d!1620770 (= (inv!77153 t!4198) e!3147228)))

(declare-fun b!5039290 () Bool)

(declare-fun res!2147080 () Bool)

(assert (=> b!5039290 (=> (not res!2147080) (not e!3147228))))

(assert (=> b!5039290 (= res!2147080 (= (csize!31255 t!4198) (size!38898 (list!18910 (xs!18838 t!4198)))))))

(declare-fun b!5039291 () Bool)

(assert (=> b!5039291 (= e!3147228 (and (> (csize!31255 t!4198) 0) (<= (csize!31255 t!4198) 512)))))

(assert (= (and d!1620770 res!2147079) b!5039290))

(assert (= (and b!5039290 res!2147080) b!5039291))

(assert (=> d!1620770 m!6072754))

(assert (=> d!1620770 m!6072754))

(declare-fun m!6072914 () Bool)

(assert (=> d!1620770 m!6072914))

(assert (=> b!5039290 m!6072754))

(assert (=> b!5039290 m!6072754))

(assert (=> b!5039290 m!6072914))

(assert (=> b!5039066 d!1620770))

(declare-fun b!5039292 () Bool)

(declare-fun res!2147081 () Bool)

(declare-fun e!3147230 () Bool)

(assert (=> b!5039292 (=> (not res!2147081) (not e!3147230))))

(assert (=> b!5039292 (= res!2147081 (isBalanced!4374 (left!42697 (left!42697 t!4198))))))

(declare-fun b!5039293 () Bool)

(declare-fun res!2147086 () Bool)

(assert (=> b!5039293 (=> (not res!2147086) (not e!3147230))))

(assert (=> b!5039293 (= res!2147086 (not (isEmpty!31530 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5039294 () Bool)

(declare-fun res!2147085 () Bool)

(assert (=> b!5039294 (=> (not res!2147085) (not e!3147230))))

(assert (=> b!5039294 (= res!2147085 (isBalanced!4374 (right!43027 (left!42697 t!4198))))))

(declare-fun b!5039295 () Bool)

(declare-fun e!3147229 () Bool)

(assert (=> b!5039295 (= e!3147229 e!3147230)))

(declare-fun res!2147083 () Bool)

(assert (=> b!5039295 (=> (not res!2147083) (not e!3147230))))

(assert (=> b!5039295 (= res!2147083 (<= (- 1) (- (height!2091 (left!42697 (left!42697 t!4198))) (height!2091 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039296 () Bool)

(assert (=> b!5039296 (= e!3147230 (not (isEmpty!31530 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039297 () Bool)

(declare-fun res!2147082 () Bool)

(assert (=> b!5039297 (=> (not res!2147082) (not e!3147230))))

(assert (=> b!5039297 (= res!2147082 (<= (- (height!2091 (left!42697 (left!42697 t!4198))) (height!2091 (right!43027 (left!42697 t!4198)))) 1))))

(declare-fun d!1620772 () Bool)

(declare-fun res!2147084 () Bool)

(assert (=> d!1620772 (=> res!2147084 e!3147229)))

(assert (=> d!1620772 (= res!2147084 (not ((_ is Node!15512) (left!42697 t!4198))))))

(assert (=> d!1620772 (= (isBalanced!4374 (left!42697 t!4198)) e!3147229)))

(assert (= (and d!1620772 (not res!2147084)) b!5039295))

(assert (= (and b!5039295 res!2147083) b!5039297))

(assert (= (and b!5039297 res!2147082) b!5039292))

(assert (= (and b!5039292 res!2147081) b!5039294))

(assert (= (and b!5039294 res!2147085) b!5039293))

(assert (= (and b!5039293 res!2147086) b!5039296))

(declare-fun m!6072916 () Bool)

(assert (=> b!5039293 m!6072916))

(declare-fun m!6072918 () Bool)

(assert (=> b!5039297 m!6072918))

(declare-fun m!6072920 () Bool)

(assert (=> b!5039297 m!6072920))

(declare-fun m!6072922 () Bool)

(assert (=> b!5039292 m!6072922))

(declare-fun m!6072924 () Bool)

(assert (=> b!5039296 m!6072924))

(declare-fun m!6072926 () Bool)

(assert (=> b!5039294 m!6072926))

(assert (=> b!5039295 m!6072918))

(assert (=> b!5039295 m!6072920))

(assert (=> b!5039055 d!1620772))

(declare-fun d!1620774 () Bool)

(declare-fun res!2147087 () Bool)

(declare-fun e!3147231 () Bool)

(assert (=> d!1620774 (=> (not res!2147087) (not e!3147231))))

(assert (=> d!1620774 (= res!2147087 (= (csize!31254 t!4198) (+ (size!38897 (left!42697 t!4198)) (size!38897 (right!43027 t!4198)))))))

(assert (=> d!1620774 (= (inv!77152 t!4198) e!3147231)))

(declare-fun b!5039298 () Bool)

(declare-fun res!2147088 () Bool)

(assert (=> b!5039298 (=> (not res!2147088) (not e!3147231))))

(assert (=> b!5039298 (= res!2147088 (and (not (= (left!42697 t!4198) Empty!15512)) (not (= (right!43027 t!4198) Empty!15512))))))

(declare-fun b!5039299 () Bool)

(declare-fun res!2147089 () Bool)

(assert (=> b!5039299 (=> (not res!2147089) (not e!3147231))))

(assert (=> b!5039299 (= res!2147089 (= (cheight!15723 t!4198) (+ (max!0 (height!2091 (left!42697 t!4198)) (height!2091 (right!43027 t!4198))) 1)))))

(declare-fun b!5039300 () Bool)

(assert (=> b!5039300 (= e!3147231 (<= 0 (cheight!15723 t!4198)))))

(assert (= (and d!1620774 res!2147087) b!5039298))

(assert (= (and b!5039298 res!2147088) b!5039299))

(assert (= (and b!5039299 res!2147089) b!5039300))

(assert (=> d!1620774 m!6072912))

(assert (=> d!1620774 m!6072890))

(assert (=> b!5039299 m!6072710))

(assert (=> b!5039299 m!6072712))

(assert (=> b!5039299 m!6072710))

(assert (=> b!5039299 m!6072712))

(declare-fun m!6072928 () Bool)

(assert (=> b!5039299 m!6072928))

(assert (=> b!5039064 d!1620774))

(declare-fun d!1620776 () Bool)

(declare-fun lt!2084078 () Int)

(assert (=> d!1620776 (>= lt!2084078 0)))

(declare-fun e!3147232 () Int)

(assert (=> d!1620776 (= lt!2084078 e!3147232)))

(declare-fun c!863296 () Bool)

(assert (=> d!1620776 (= c!863296 ((_ is Nil!58300) (innerList!15600 (xs!18838 t!4198))))))

(assert (=> d!1620776 (= (size!38898 (innerList!15600 (xs!18838 t!4198))) lt!2084078)))

(declare-fun b!5039301 () Bool)

(assert (=> b!5039301 (= e!3147232 0)))

(declare-fun b!5039302 () Bool)

(assert (=> b!5039302 (= e!3147232 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 t!4198))))))))

(assert (= (and d!1620776 c!863296) b!5039301))

(assert (= (and d!1620776 (not c!863296)) b!5039302))

(declare-fun m!6072930 () Bool)

(assert (=> b!5039302 m!6072930))

(assert (=> d!1620668 d!1620776))

(declare-fun d!1620778 () Bool)

(assert (not d!1620778))

(assert (=> b!5039050 d!1620778))

(declare-fun d!1620780 () Bool)

(declare-fun res!2147090 () Bool)

(declare-fun e!3147233 () Bool)

(assert (=> d!1620780 (=> (not res!2147090) (not e!3147233))))

(assert (=> d!1620780 (= res!2147090 (= (csize!31254 (left!42697 t!4198)) (+ (size!38897 (left!42697 (left!42697 t!4198))) (size!38897 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1620780 (= (inv!77152 (left!42697 t!4198)) e!3147233)))

(declare-fun b!5039303 () Bool)

(declare-fun res!2147091 () Bool)

(assert (=> b!5039303 (=> (not res!2147091) (not e!3147233))))

(assert (=> b!5039303 (= res!2147091 (and (not (= (left!42697 (left!42697 t!4198)) Empty!15512)) (not (= (right!43027 (left!42697 t!4198)) Empty!15512))))))

(declare-fun b!5039304 () Bool)

(declare-fun res!2147092 () Bool)

(assert (=> b!5039304 (=> (not res!2147092) (not e!3147233))))

(assert (=> b!5039304 (= res!2147092 (= (cheight!15723 (left!42697 t!4198)) (+ (max!0 (height!2091 (left!42697 (left!42697 t!4198))) (height!2091 (right!43027 (left!42697 t!4198)))) 1)))))

(declare-fun b!5039305 () Bool)

(assert (=> b!5039305 (= e!3147233 (<= 0 (cheight!15723 (left!42697 t!4198))))))

(assert (= (and d!1620780 res!2147090) b!5039303))

(assert (= (and b!5039303 res!2147091) b!5039304))

(assert (= (and b!5039304 res!2147092) b!5039305))

(declare-fun m!6072932 () Bool)

(assert (=> d!1620780 m!6072932))

(declare-fun m!6072934 () Bool)

(assert (=> d!1620780 m!6072934))

(assert (=> b!5039304 m!6072918))

(assert (=> b!5039304 m!6072920))

(assert (=> b!5039304 m!6072918))

(assert (=> b!5039304 m!6072920))

(declare-fun m!6072936 () Bool)

(assert (=> b!5039304 m!6072936))

(assert (=> b!5039007 d!1620780))

(declare-fun d!1620782 () Bool)

(declare-fun res!2147093 () Bool)

(declare-fun e!3147234 () Bool)

(assert (=> d!1620782 (=> (not res!2147093) (not e!3147234))))

(assert (=> d!1620782 (= res!2147093 (<= (size!38898 (list!18910 (xs!18838 (left!42697 t!4198)))) 512))))

(assert (=> d!1620782 (= (inv!77153 (left!42697 t!4198)) e!3147234)))

(declare-fun b!5039306 () Bool)

(declare-fun res!2147094 () Bool)

(assert (=> b!5039306 (=> (not res!2147094) (not e!3147234))))

(assert (=> b!5039306 (= res!2147094 (= (csize!31255 (left!42697 t!4198)) (size!38898 (list!18910 (xs!18838 (left!42697 t!4198))))))))

(declare-fun b!5039307 () Bool)

(assert (=> b!5039307 (= e!3147234 (and (> (csize!31255 (left!42697 t!4198)) 0) (<= (csize!31255 (left!42697 t!4198)) 512)))))

(assert (= (and d!1620782 res!2147093) b!5039306))

(assert (= (and b!5039306 res!2147094) b!5039307))

(assert (=> d!1620782 m!6072844))

(assert (=> d!1620782 m!6072844))

(declare-fun m!6072938 () Bool)

(assert (=> d!1620782 m!6072938))

(assert (=> b!5039306 m!6072844))

(assert (=> b!5039306 m!6072844))

(assert (=> b!5039306 m!6072938))

(assert (=> b!5039009 d!1620782))

(assert (=> b!5039051 d!1620714))

(assert (=> b!5039051 d!1620716))

(declare-fun tp!1410850 () Bool)

(declare-fun b!5039308 () Bool)

(declare-fun tp!1410849 () Bool)

(declare-fun e!3147236 () Bool)

(assert (=> b!5039308 (= e!3147236 (and (inv!77150 (left!42697 (left!42697 (right!43027 t!4198)))) tp!1410850 (inv!77150 (right!43027 (left!42697 (right!43027 t!4198)))) tp!1410849))))

(declare-fun b!5039310 () Bool)

(declare-fun e!3147235 () Bool)

(declare-fun tp!1410851 () Bool)

(assert (=> b!5039310 (= e!3147235 tp!1410851)))

(declare-fun b!5039309 () Bool)

(assert (=> b!5039309 (= e!3147236 (and (inv!77151 (xs!18838 (left!42697 (right!43027 t!4198)))) e!3147235))))

(assert (=> b!5039146 (= tp!1410829 (and (inv!77150 (left!42697 (right!43027 t!4198))) e!3147236))))

(assert (= (and b!5039146 ((_ is Node!15512) (left!42697 (right!43027 t!4198)))) b!5039308))

(assert (= b!5039309 b!5039310))

(assert (= (and b!5039146 ((_ is Leaf!25732) (left!42697 (right!43027 t!4198)))) b!5039309))

(declare-fun m!6072940 () Bool)

(assert (=> b!5039308 m!6072940))

(declare-fun m!6072942 () Bool)

(assert (=> b!5039308 m!6072942))

(declare-fun m!6072944 () Bool)

(assert (=> b!5039309 m!6072944))

(assert (=> b!5039146 m!6072778))

(declare-fun e!3147238 () Bool)

(declare-fun tp!1410853 () Bool)

(declare-fun b!5039311 () Bool)

(declare-fun tp!1410852 () Bool)

(assert (=> b!5039311 (= e!3147238 (and (inv!77150 (left!42697 (right!43027 (right!43027 t!4198)))) tp!1410853 (inv!77150 (right!43027 (right!43027 (right!43027 t!4198)))) tp!1410852))))

(declare-fun b!5039313 () Bool)

(declare-fun e!3147237 () Bool)

(declare-fun tp!1410854 () Bool)

(assert (=> b!5039313 (= e!3147237 tp!1410854)))

(declare-fun b!5039312 () Bool)

(assert (=> b!5039312 (= e!3147238 (and (inv!77151 (xs!18838 (right!43027 (right!43027 t!4198)))) e!3147237))))

(assert (=> b!5039146 (= tp!1410828 (and (inv!77150 (right!43027 (right!43027 t!4198))) e!3147238))))

(assert (= (and b!5039146 ((_ is Node!15512) (right!43027 (right!43027 t!4198)))) b!5039311))

(assert (= b!5039312 b!5039313))

(assert (= (and b!5039146 ((_ is Leaf!25732) (right!43027 (right!43027 t!4198)))) b!5039312))

(declare-fun m!6072946 () Bool)

(assert (=> b!5039311 m!6072946))

(declare-fun m!6072948 () Bool)

(assert (=> b!5039311 m!6072948))

(declare-fun m!6072950 () Bool)

(assert (=> b!5039312 m!6072950))

(assert (=> b!5039146 m!6072780))

(declare-fun tp!1410856 () Bool)

(declare-fun tp!1410855 () Bool)

(declare-fun e!3147240 () Bool)

(declare-fun b!5039314 () Bool)

(assert (=> b!5039314 (= e!3147240 (and (inv!77150 (left!42697 (left!42697 (left!42697 t!4198)))) tp!1410856 (inv!77150 (right!43027 (left!42697 (left!42697 t!4198)))) tp!1410855))))

(declare-fun b!5039316 () Bool)

(declare-fun e!3147239 () Bool)

(declare-fun tp!1410857 () Bool)

(assert (=> b!5039316 (= e!3147239 tp!1410857)))

(declare-fun b!5039315 () Bool)

(assert (=> b!5039315 (= e!3147240 (and (inv!77151 (xs!18838 (left!42697 (left!42697 t!4198)))) e!3147239))))

(assert (=> b!5039139 (= tp!1410826 (and (inv!77150 (left!42697 (left!42697 t!4198))) e!3147240))))

(assert (= (and b!5039139 ((_ is Node!15512) (left!42697 (left!42697 t!4198)))) b!5039314))

(assert (= b!5039315 b!5039316))

(assert (= (and b!5039139 ((_ is Leaf!25732) (left!42697 (left!42697 t!4198)))) b!5039315))

(declare-fun m!6072952 () Bool)

(assert (=> b!5039314 m!6072952))

(declare-fun m!6072954 () Bool)

(assert (=> b!5039314 m!6072954))

(declare-fun m!6072956 () Bool)

(assert (=> b!5039315 m!6072956))

(assert (=> b!5039139 m!6072764))

(declare-fun e!3147242 () Bool)

(declare-fun tp!1410859 () Bool)

(declare-fun tp!1410858 () Bool)

(declare-fun b!5039317 () Bool)

(assert (=> b!5039317 (= e!3147242 (and (inv!77150 (left!42697 (right!43027 (left!42697 t!4198)))) tp!1410859 (inv!77150 (right!43027 (right!43027 (left!42697 t!4198)))) tp!1410858))))

(declare-fun b!5039319 () Bool)

(declare-fun e!3147241 () Bool)

(declare-fun tp!1410860 () Bool)

(assert (=> b!5039319 (= e!3147241 tp!1410860)))

(declare-fun b!5039318 () Bool)

(assert (=> b!5039318 (= e!3147242 (and (inv!77151 (xs!18838 (right!43027 (left!42697 t!4198)))) e!3147241))))

(assert (=> b!5039139 (= tp!1410825 (and (inv!77150 (right!43027 (left!42697 t!4198))) e!3147242))))

(assert (= (and b!5039139 ((_ is Node!15512) (right!43027 (left!42697 t!4198)))) b!5039317))

(assert (= b!5039318 b!5039319))

(assert (= (and b!5039139 ((_ is Leaf!25732) (right!43027 (left!42697 t!4198)))) b!5039318))

(declare-fun m!6072958 () Bool)

(assert (=> b!5039317 m!6072958))

(declare-fun m!6072960 () Bool)

(assert (=> b!5039317 m!6072960))

(declare-fun m!6072962 () Bool)

(assert (=> b!5039318 m!6072962))

(assert (=> b!5039139 m!6072766))

(declare-fun b!5039320 () Bool)

(declare-fun e!3147243 () Bool)

(declare-fun tp!1410861 () Bool)

(assert (=> b!5039320 (= e!3147243 (and tp_is_empty!36785 tp!1410861))))

(assert (=> b!5039141 (= tp!1410827 e!3147243)))

(assert (= (and b!5039141 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 t!4198))))) b!5039320))

(declare-fun b!5039321 () Bool)

(declare-fun e!3147244 () Bool)

(declare-fun tp!1410862 () Bool)

(assert (=> b!5039321 (= e!3147244 (and tp_is_empty!36785 tp!1410862))))

(assert (=> b!5039153 (= tp!1410833 e!3147244)))

(assert (= (and b!5039153 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 t!4198))))) b!5039321))

(declare-fun b!5039322 () Bool)

(declare-fun e!3147245 () Bool)

(declare-fun tp!1410863 () Bool)

(assert (=> b!5039322 (= e!3147245 (and tp_is_empty!36785 tp!1410863))))

(assert (=> b!5039148 (= tp!1410830 e!3147245)))

(assert (= (and b!5039148 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 t!4198))))) b!5039322))

(check-sat (not b!5039139) (not b!5039294) (not b!5039226) (not b!5039260) (not b!5039312) (not b!5039286) (not b!5039261) (not d!1620752) (not d!1620746) (not b!5039199) (not b!5039258) (not d!1620768) (not b!5039256) (not d!1620750) (not d!1620712) (not b!5039253) (not b!5039317) (not b!5039284) (not d!1620736) (not b!5039146) (not b!5039315) (not b!5039316) (not b!5039311) (not b!5039247) (not b!5039242) (not b!5039299) (not b!5039274) (not b!5039215) (not b!5039321) (not b!5039293) tp_is_empty!36785 (not b!5039198) (not b!5039302) (not b!5039228) (not b!5039320) (not bm!351388) (not b!5039318) (not b!5039306) (not b!5039289) (not b!5039288) (not b!5039232) (not b!5039219) (not b!5039271) (not d!1620758) (not b!5039255) (not b!5039216) (not b!5039295) (not d!1620780) (not b!5039230) (not b!5039282) (not b!5039310) (not d!1620732) (not d!1620760) (not b!5039248) (not b!5039267) (not b!5039304) (not b!5039322) (not b!5039309) (not b!5039285) (not b!5039313) (not b!5039290) (not d!1620774) (not b!5039243) (not b!5039292) (not b!5039319) (not d!1620730) (not b!5039214) (not b!5039296) (not b!5039269) (not d!1620708) (not b!5039251) (not d!1620782) (not b!5039314) (not d!1620770) (not b!5039297) (not b!5039308) (not b!5039272) (not b!5039252) (not b!5039287))
(check-sat)
(get-model)

(declare-fun d!1620860 () Bool)

(declare-fun res!2147152 () Bool)

(declare-fun e!3147325 () Bool)

(assert (=> d!1620860 (=> (not res!2147152) (not e!3147325))))

(assert (=> d!1620860 (= res!2147152 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 t!4198))))) 512))))

(assert (=> d!1620860 (= (inv!77153 (left!42697 (right!43027 t!4198))) e!3147325)))

(declare-fun b!5039473 () Bool)

(declare-fun res!2147153 () Bool)

(assert (=> b!5039473 (=> (not res!2147153) (not e!3147325))))

(assert (=> b!5039473 (= res!2147153 (= (csize!31255 (left!42697 (right!43027 t!4198))) (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5039474 () Bool)

(assert (=> b!5039474 (= e!3147325 (and (> (csize!31255 (left!42697 (right!43027 t!4198))) 0) (<= (csize!31255 (left!42697 (right!43027 t!4198))) 512)))))

(assert (= (and d!1620860 res!2147152) b!5039473))

(assert (= (and b!5039473 res!2147153) b!5039474))

(declare-fun m!6073128 () Bool)

(assert (=> d!1620860 m!6073128))

(assert (=> d!1620860 m!6073128))

(declare-fun m!6073130 () Bool)

(assert (=> d!1620860 m!6073130))

(assert (=> b!5039473 m!6073128))

(assert (=> b!5039473 m!6073128))

(assert (=> b!5039473 m!6073130))

(assert (=> b!5039255 d!1620860))

(declare-fun d!1620862 () Bool)

(declare-fun c!863336 () Bool)

(assert (=> d!1620862 (= c!863336 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 t!4198)))))))

(declare-fun e!3147326 () Bool)

(assert (=> d!1620862 (= (inv!77150 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147326)))

(declare-fun b!5039475 () Bool)

(assert (=> b!5039475 (= e!3147326 (inv!77152 (left!42697 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5039476 () Bool)

(declare-fun e!3147327 () Bool)

(assert (=> b!5039476 (= e!3147326 e!3147327)))

(declare-fun res!2147154 () Bool)

(assert (=> b!5039476 (= res!2147154 (not ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> b!5039476 (=> res!2147154 e!3147327)))

(declare-fun b!5039477 () Bool)

(assert (=> b!5039477 (= e!3147327 (inv!77153 (left!42697 (left!42697 (right!43027 t!4198)))))))

(assert (= (and d!1620862 c!863336) b!5039475))

(assert (= (and d!1620862 (not c!863336)) b!5039476))

(assert (= (and b!5039476 (not res!2147154)) b!5039477))

(declare-fun m!6073132 () Bool)

(assert (=> b!5039475 m!6073132))

(declare-fun m!6073134 () Bool)

(assert (=> b!5039477 m!6073134))

(assert (=> b!5039308 d!1620862))

(declare-fun d!1620864 () Bool)

(declare-fun c!863337 () Bool)

(assert (=> d!1620864 (= c!863337 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun e!3147328 () Bool)

(assert (=> d!1620864 (= (inv!77150 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147328)))

(declare-fun b!5039478 () Bool)

(assert (=> b!5039478 (= e!3147328 (inv!77152 (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5039479 () Bool)

(declare-fun e!3147329 () Bool)

(assert (=> b!5039479 (= e!3147328 e!3147329)))

(declare-fun res!2147155 () Bool)

(assert (=> b!5039479 (= res!2147155 (not ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (=> b!5039479 (=> res!2147155 e!3147329)))

(declare-fun b!5039480 () Bool)

(assert (=> b!5039480 (= e!3147329 (inv!77153 (right!43027 (left!42697 (right!43027 t!4198)))))))

(assert (= (and d!1620864 c!863337) b!5039478))

(assert (= (and d!1620864 (not c!863337)) b!5039479))

(assert (= (and b!5039479 (not res!2147155)) b!5039480))

(declare-fun m!6073136 () Bool)

(assert (=> b!5039478 m!6073136))

(declare-fun m!6073138 () Bool)

(assert (=> b!5039480 m!6073138))

(assert (=> b!5039308 d!1620864))

(declare-fun d!1620866 () Bool)

(declare-fun lt!2084099 () Bool)

(assert (=> d!1620866 (= lt!2084099 (isEmpty!31531 (list!18909 (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1620866 (= lt!2084099 (= (size!38897 (right!43027 (right!43027 t!4198))) 0))))

(assert (=> d!1620866 (= (isEmpty!31530 (right!43027 (right!43027 t!4198))) lt!2084099)))

(declare-fun bs!1188852 () Bool)

(assert (= bs!1188852 d!1620866))

(assert (=> bs!1188852 m!6072848))

(assert (=> bs!1188852 m!6072848))

(declare-fun m!6073140 () Bool)

(assert (=> bs!1188852 m!6073140))

(assert (=> bs!1188852 m!6072894))

(assert (=> b!5039288 d!1620866))

(declare-fun b!5039481 () Bool)

(declare-fun e!3147333 () Int)

(declare-fun e!3147332 () Int)

(assert (=> b!5039481 (= e!3147333 e!3147332)))

(declare-fun c!863339 () Bool)

(assert (=> b!5039481 (= c!863339 (>= (- i!618 1) (size!38898 (t!370961 lt!2084040))))))

(declare-fun b!5039482 () Bool)

(declare-fun e!3147330 () List!58424)

(assert (=> b!5039482 (= e!3147330 (Cons!58300 (h!64748 (t!370961 lt!2084040)) (take!822 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1))))))

(declare-fun b!5039483 () Bool)

(declare-fun e!3147331 () Bool)

(declare-fun lt!2084100 () List!58424)

(assert (=> b!5039483 (= e!3147331 (= (size!38898 lt!2084100) e!3147333))))

(declare-fun c!863338 () Bool)

(assert (=> b!5039483 (= c!863338 (<= (- i!618 1) 0))))

(declare-fun b!5039484 () Bool)

(assert (=> b!5039484 (= e!3147333 0)))

(declare-fun d!1620868 () Bool)

(assert (=> d!1620868 e!3147331))

(declare-fun res!2147156 () Bool)

(assert (=> d!1620868 (=> (not res!2147156) (not e!3147331))))

(assert (=> d!1620868 (= res!2147156 (= ((_ map implies) (content!10352 lt!2084100) (content!10352 (t!370961 lt!2084040))) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1620868 (= lt!2084100 e!3147330)))

(declare-fun c!863340 () Bool)

(assert (=> d!1620868 (= c!863340 (or ((_ is Nil!58300) (t!370961 lt!2084040)) (<= (- i!618 1) 0)))))

(assert (=> d!1620868 (= (take!822 (t!370961 lt!2084040) (- i!618 1)) lt!2084100)))

(declare-fun b!5039485 () Bool)

(assert (=> b!5039485 (= e!3147332 (- i!618 1))))

(declare-fun b!5039486 () Bool)

(assert (=> b!5039486 (= e!3147332 (size!38898 (t!370961 lt!2084040)))))

(declare-fun b!5039487 () Bool)

(assert (=> b!5039487 (= e!3147330 Nil!58300)))

(assert (= (and d!1620868 c!863340) b!5039487))

(assert (= (and d!1620868 (not c!863340)) b!5039482))

(assert (= (and d!1620868 res!2147156) b!5039483))

(assert (= (and b!5039483 c!863338) b!5039484))

(assert (= (and b!5039483 (not c!863338)) b!5039481))

(assert (= (and b!5039481 c!863339) b!5039486))

(assert (= (and b!5039481 (not c!863339)) b!5039485))

(declare-fun m!6073142 () Bool)

(assert (=> b!5039482 m!6073142))

(declare-fun m!6073144 () Bool)

(assert (=> b!5039486 m!6073144))

(declare-fun m!6073146 () Bool)

(assert (=> b!5039483 m!6073146))

(assert (=> b!5039481 m!6073144))

(declare-fun m!6073148 () Bool)

(assert (=> d!1620868 m!6073148))

(declare-fun m!6073150 () Bool)

(assert (=> d!1620868 m!6073150))

(assert (=> b!5039232 d!1620868))

(declare-fun d!1620870 () Bool)

(declare-fun c!863341 () Bool)

(assert (=> d!1620870 (= c!863341 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 t!4198)))))))

(declare-fun e!3147334 () Bool)

(assert (=> d!1620870 (= (inv!77150 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147334)))

(declare-fun b!5039488 () Bool)

(assert (=> b!5039488 (= e!3147334 (inv!77152 (left!42697 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039489 () Bool)

(declare-fun e!3147335 () Bool)

(assert (=> b!5039489 (= e!3147334 e!3147335)))

(declare-fun res!2147157 () Bool)

(assert (=> b!5039489 (= res!2147157 (not ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> b!5039489 (=> res!2147157 e!3147335)))

(declare-fun b!5039490 () Bool)

(assert (=> b!5039490 (= e!3147335 (inv!77153 (left!42697 (right!43027 (left!42697 t!4198)))))))

(assert (= (and d!1620870 c!863341) b!5039488))

(assert (= (and d!1620870 (not c!863341)) b!5039489))

(assert (= (and b!5039489 (not res!2147157)) b!5039490))

(declare-fun m!6073152 () Bool)

(assert (=> b!5039488 m!6073152))

(declare-fun m!6073154 () Bool)

(assert (=> b!5039490 m!6073154))

(assert (=> b!5039317 d!1620870))

(declare-fun d!1620872 () Bool)

(declare-fun c!863342 () Bool)

(assert (=> d!1620872 (= c!863342 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun e!3147336 () Bool)

(assert (=> d!1620872 (= (inv!77150 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147336)))

(declare-fun b!5039491 () Bool)

(assert (=> b!5039491 (= e!3147336 (inv!77152 (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039492 () Bool)

(declare-fun e!3147337 () Bool)

(assert (=> b!5039492 (= e!3147336 e!3147337)))

(declare-fun res!2147158 () Bool)

(assert (=> b!5039492 (= res!2147158 (not ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (=> b!5039492 (=> res!2147158 e!3147337)))

(declare-fun b!5039493 () Bool)

(assert (=> b!5039493 (= e!3147337 (inv!77153 (right!43027 (right!43027 (left!42697 t!4198)))))))

(assert (= (and d!1620872 c!863342) b!5039491))

(assert (= (and d!1620872 (not c!863342)) b!5039492))

(assert (= (and b!5039492 (not res!2147158)) b!5039493))

(declare-fun m!6073156 () Bool)

(assert (=> b!5039491 m!6073156))

(declare-fun m!6073158 () Bool)

(assert (=> b!5039493 m!6073158))

(assert (=> b!5039317 d!1620872))

(declare-fun d!1620874 () Bool)

(declare-fun lt!2084101 () Int)

(assert (=> d!1620874 (>= lt!2084101 0)))

(declare-fun e!3147338 () Int)

(assert (=> d!1620874 (= lt!2084101 e!3147338)))

(declare-fun c!863343 () Bool)

(assert (=> d!1620874 (= c!863343 ((_ is Nil!58300) (list!18910 (xs!18838 t!4198))))))

(assert (=> d!1620874 (= (size!38898 (list!18910 (xs!18838 t!4198))) lt!2084101)))

(declare-fun b!5039494 () Bool)

(assert (=> b!5039494 (= e!3147338 0)))

(declare-fun b!5039495 () Bool)

(assert (=> b!5039495 (= e!3147338 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 t!4198))))))))

(assert (= (and d!1620874 c!863343) b!5039494))

(assert (= (and d!1620874 (not c!863343)) b!5039495))

(declare-fun m!6073160 () Bool)

(assert (=> b!5039495 m!6073160))

(assert (=> b!5039290 d!1620874))

(assert (=> b!5039290 d!1620722))

(declare-fun d!1620876 () Bool)

(declare-fun lt!2084102 () Int)

(assert (=> d!1620876 (>= lt!2084102 0)))

(declare-fun e!3147339 () Int)

(assert (=> d!1620876 (= lt!2084102 e!3147339)))

(declare-fun c!863344 () Bool)

(assert (=> d!1620876 (= c!863344 ((_ is Nil!58300) (list!18910 (xs!18838 (right!43027 t!4198)))))))

(assert (=> d!1620876 (= (size!38898 (list!18910 (xs!18838 (right!43027 t!4198)))) lt!2084102)))

(declare-fun b!5039496 () Bool)

(assert (=> b!5039496 (= e!3147339 0)))

(declare-fun b!5039497 () Bool)

(assert (=> b!5039497 (= e!3147339 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (right!43027 t!4198)))))))))

(assert (= (and d!1620876 c!863344) b!5039496))

(assert (= (and d!1620876 (not c!863344)) b!5039497))

(declare-fun m!6073162 () Bool)

(assert (=> b!5039497 m!6073162))

(assert (=> b!5039267 d!1620876))

(declare-fun d!1620878 () Bool)

(assert (=> d!1620878 (= (list!18910 (xs!18838 (right!43027 t!4198))) (innerList!15600 (xs!18838 (right!43027 t!4198))))))

(assert (=> b!5039267 d!1620878))

(assert (=> d!1620770 d!1620874))

(assert (=> d!1620770 d!1620722))

(declare-fun d!1620880 () Bool)

(declare-fun c!863347 () Bool)

(assert (=> d!1620880 (= c!863347 ((_ is Nil!58300) lt!2084073))))

(declare-fun e!3147342 () (InoxSet T!104180))

(assert (=> d!1620880 (= (content!10352 lt!2084073) e!3147342)))

(declare-fun b!5039502 () Bool)

(assert (=> b!5039502 (= e!3147342 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039503 () Bool)

(assert (=> b!5039503 (= e!3147342 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084073) true) (content!10352 (t!370961 lt!2084073))))))

(assert (= (and d!1620880 c!863347) b!5039502))

(assert (= (and d!1620880 (not c!863347)) b!5039503))

(declare-fun m!6073164 () Bool)

(assert (=> b!5039503 m!6073164))

(declare-fun m!6073166 () Bool)

(assert (=> b!5039503 m!6073166))

(assert (=> d!1620746 d!1620880))

(declare-fun d!1620882 () Bool)

(declare-fun c!863348 () Bool)

(assert (=> d!1620882 (= c!863348 ((_ is Nil!58300) (_1!34920 lt!2084052)))))

(declare-fun e!3147343 () (InoxSet T!104180))

(assert (=> d!1620882 (= (content!10352 (_1!34920 lt!2084052)) e!3147343)))

(declare-fun b!5039504 () Bool)

(assert (=> b!5039504 (= e!3147343 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039505 () Bool)

(assert (=> b!5039505 (= e!3147343 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (_1!34920 lt!2084052)) true) (content!10352 (t!370961 (_1!34920 lt!2084052)))))))

(assert (= (and d!1620882 c!863348) b!5039504))

(assert (= (and d!1620882 (not c!863348)) b!5039505))

(declare-fun m!6073168 () Bool)

(assert (=> b!5039505 m!6073168))

(declare-fun m!6073170 () Bool)

(assert (=> b!5039505 m!6073170))

(assert (=> d!1620746 d!1620882))

(declare-fun d!1620884 () Bool)

(declare-fun c!863349 () Bool)

(assert (=> d!1620884 (= c!863349 ((_ is Nil!58300) (_2!34920 lt!2084052)))))

(declare-fun e!3147344 () (InoxSet T!104180))

(assert (=> d!1620884 (= (content!10352 (_2!34920 lt!2084052)) e!3147344)))

(declare-fun b!5039506 () Bool)

(assert (=> b!5039506 (= e!3147344 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039507 () Bool)

(assert (=> b!5039507 (= e!3147344 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (_2!34920 lt!2084052)) true) (content!10352 (t!370961 (_2!34920 lt!2084052)))))))

(assert (= (and d!1620884 c!863349) b!5039506))

(assert (= (and d!1620884 (not c!863349)) b!5039507))

(declare-fun m!6073172 () Bool)

(assert (=> b!5039507 m!6073172))

(declare-fun m!6073174 () Bool)

(assert (=> b!5039507 m!6073174))

(assert (=> d!1620746 d!1620884))

(declare-fun b!5039508 () Bool)

(declare-fun e!3147347 () Int)

(declare-fun call!351397 () Int)

(assert (=> b!5039508 (= e!3147347 (- call!351397 (- i!618 1)))))

(declare-fun b!5039509 () Bool)

(declare-fun e!3147346 () Int)

(assert (=> b!5039509 (= e!3147346 call!351397)))

(declare-fun b!5039510 () Bool)

(declare-fun e!3147349 () List!58424)

(assert (=> b!5039510 (= e!3147349 (t!370961 lt!2084040))))

(declare-fun b!5039511 () Bool)

(declare-fun e!3147345 () List!58424)

(assert (=> b!5039511 (= e!3147345 Nil!58300)))

(declare-fun d!1620886 () Bool)

(declare-fun e!3147348 () Bool)

(assert (=> d!1620886 e!3147348))

(declare-fun res!2147159 () Bool)

(assert (=> d!1620886 (=> (not res!2147159) (not e!3147348))))

(declare-fun lt!2084103 () List!58424)

(assert (=> d!1620886 (= res!2147159 (= ((_ map implies) (content!10352 lt!2084103) (content!10352 (t!370961 lt!2084040))) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1620886 (= lt!2084103 e!3147345)))

(declare-fun c!863351 () Bool)

(assert (=> d!1620886 (= c!863351 ((_ is Nil!58300) (t!370961 lt!2084040)))))

(assert (=> d!1620886 (= (drop!2629 (t!370961 lt!2084040) (- i!618 1)) lt!2084103)))

(declare-fun b!5039512 () Bool)

(assert (=> b!5039512 (= e!3147346 e!3147347)))

(declare-fun c!863350 () Bool)

(assert (=> b!5039512 (= c!863350 (>= (- i!618 1) call!351397))))

(declare-fun bm!351392 () Bool)

(assert (=> bm!351392 (= call!351397 (size!38898 (t!370961 lt!2084040)))))

(declare-fun b!5039513 () Bool)

(assert (=> b!5039513 (= e!3147345 e!3147349)))

(declare-fun c!863353 () Bool)

(assert (=> b!5039513 (= c!863353 (<= (- i!618 1) 0))))

(declare-fun b!5039514 () Bool)

(assert (=> b!5039514 (= e!3147347 0)))

(declare-fun b!5039515 () Bool)

(assert (=> b!5039515 (= e!3147349 (drop!2629 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1)))))

(declare-fun b!5039516 () Bool)

(assert (=> b!5039516 (= e!3147348 (= (size!38898 lt!2084103) e!3147346))))

(declare-fun c!863352 () Bool)

(assert (=> b!5039516 (= c!863352 (<= (- i!618 1) 0))))

(assert (= (and d!1620886 c!863351) b!5039511))

(assert (= (and d!1620886 (not c!863351)) b!5039513))

(assert (= (and b!5039513 c!863353) b!5039510))

(assert (= (and b!5039513 (not c!863353)) b!5039515))

(assert (= (and d!1620886 res!2147159) b!5039516))

(assert (= (and b!5039516 c!863352) b!5039509))

(assert (= (and b!5039516 (not c!863352)) b!5039512))

(assert (= (and b!5039512 c!863350) b!5039514))

(assert (= (and b!5039512 (not c!863350)) b!5039508))

(assert (= (or b!5039509 b!5039512 b!5039508) bm!351392))

(declare-fun m!6073176 () Bool)

(assert (=> d!1620886 m!6073176))

(assert (=> d!1620886 m!6073150))

(assert (=> bm!351392 m!6073144))

(declare-fun m!6073178 () Bool)

(assert (=> b!5039515 m!6073178))

(declare-fun m!6073180 () Bool)

(assert (=> b!5039516 m!6073180))

(assert (=> b!5039230 d!1620886))

(declare-fun d!1620888 () Bool)

(assert (=> d!1620888 (= (height!2091 (left!42697 (left!42697 t!4198))) (ite ((_ is Empty!15512) (left!42697 (left!42697 t!4198))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 t!4198))) 1 (cheight!15723 (left!42697 (left!42697 t!4198))))))))

(assert (=> b!5039295 d!1620888))

(declare-fun d!1620890 () Bool)

(assert (=> d!1620890 (= (height!2091 (right!43027 (left!42697 t!4198))) (ite ((_ is Empty!15512) (right!43027 (left!42697 t!4198))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 t!4198))) 1 (cheight!15723 (right!43027 (left!42697 t!4198))))))))

(assert (=> b!5039295 d!1620890))

(declare-fun d!1620892 () Bool)

(declare-fun res!2147160 () Bool)

(declare-fun e!3147350 () Bool)

(assert (=> d!1620892 (=> (not res!2147160) (not e!3147350))))

(assert (=> d!1620892 (= res!2147160 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 t!4198))))) 512))))

(assert (=> d!1620892 (= (inv!77153 (left!42697 (left!42697 t!4198))) e!3147350)))

(declare-fun b!5039517 () Bool)

(declare-fun res!2147161 () Bool)

(assert (=> b!5039517 (=> (not res!2147161) (not e!3147350))))

(assert (=> b!5039517 (= res!2147161 (= (csize!31255 (left!42697 (left!42697 t!4198))) (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5039518 () Bool)

(assert (=> b!5039518 (= e!3147350 (and (> (csize!31255 (left!42697 (left!42697 t!4198))) 0) (<= (csize!31255 (left!42697 (left!42697 t!4198))) 512)))))

(assert (= (and d!1620892 res!2147160) b!5039517))

(assert (= (and b!5039517 res!2147161) b!5039518))

(declare-fun m!6073182 () Bool)

(assert (=> d!1620892 m!6073182))

(assert (=> d!1620892 m!6073182))

(declare-fun m!6073184 () Bool)

(assert (=> d!1620892 m!6073184))

(assert (=> b!5039517 m!6073182))

(assert (=> b!5039517 m!6073182))

(assert (=> b!5039517 m!6073184))

(assert (=> b!5039271 d!1620892))

(declare-fun b!5039519 () Bool)

(declare-fun res!2147162 () Bool)

(declare-fun e!3147352 () Bool)

(assert (=> b!5039519 (=> (not res!2147162) (not e!3147352))))

(assert (=> b!5039519 (= res!2147162 (isBalanced!4374 (left!42697 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039520 () Bool)

(declare-fun res!2147167 () Bool)

(assert (=> b!5039520 (=> (not res!2147167) (not e!3147352))))

(assert (=> b!5039520 (= res!2147167 (not (isEmpty!31530 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039521 () Bool)

(declare-fun res!2147166 () Bool)

(assert (=> b!5039521 (=> (not res!2147166) (not e!3147352))))

(assert (=> b!5039521 (= res!2147166 (isBalanced!4374 (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039522 () Bool)

(declare-fun e!3147351 () Bool)

(assert (=> b!5039522 (= e!3147351 e!3147352)))

(declare-fun res!2147164 () Bool)

(assert (=> b!5039522 (=> (not res!2147164) (not e!3147352))))

(assert (=> b!5039522 (= res!2147164 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5039523 () Bool)

(assert (=> b!5039523 (= e!3147352 (not (isEmpty!31530 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039524 () Bool)

(declare-fun res!2147163 () Bool)

(assert (=> b!5039524 (=> (not res!2147163) (not e!3147352))))

(assert (=> b!5039524 (= res!2147163 (<= (- (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198))))) 1))))

(declare-fun d!1620894 () Bool)

(declare-fun res!2147165 () Bool)

(assert (=> d!1620894 (=> res!2147165 e!3147351)))

(assert (=> d!1620894 (= res!2147165 (not ((_ is Node!15512) (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1620894 (= (isBalanced!4374 (right!43027 (right!43027 t!4198))) e!3147351)))

(assert (= (and d!1620894 (not res!2147165)) b!5039522))

(assert (= (and b!5039522 res!2147164) b!5039524))

(assert (= (and b!5039524 res!2147163) b!5039519))

(assert (= (and b!5039519 res!2147162) b!5039521))

(assert (= (and b!5039521 res!2147166) b!5039520))

(assert (= (and b!5039520 res!2147167) b!5039523))

(declare-fun m!6073186 () Bool)

(assert (=> b!5039520 m!6073186))

(declare-fun m!6073188 () Bool)

(assert (=> b!5039524 m!6073188))

(declare-fun m!6073190 () Bool)

(assert (=> b!5039524 m!6073190))

(declare-fun m!6073192 () Bool)

(assert (=> b!5039519 m!6073192))

(declare-fun m!6073194 () Bool)

(assert (=> b!5039523 m!6073194))

(declare-fun m!6073196 () Bool)

(assert (=> b!5039521 m!6073196))

(assert (=> b!5039522 m!6073188))

(assert (=> b!5039522 m!6073190))

(assert (=> b!5039286 d!1620894))

(declare-fun d!1620896 () Bool)

(declare-fun res!2147168 () Bool)

(declare-fun e!3147353 () Bool)

(assert (=> d!1620896 (=> (not res!2147168) (not e!3147353))))

(assert (=> d!1620896 (= res!2147168 (= (csize!31254 (left!42697 (right!43027 t!4198))) (+ (size!38897 (left!42697 (left!42697 (right!43027 t!4198)))) (size!38897 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(assert (=> d!1620896 (= (inv!77152 (left!42697 (right!43027 t!4198))) e!3147353)))

(declare-fun b!5039525 () Bool)

(declare-fun res!2147169 () Bool)

(assert (=> b!5039525 (=> (not res!2147169) (not e!3147353))))

(assert (=> b!5039525 (= res!2147169 (and (not (= (left!42697 (left!42697 (right!43027 t!4198))) Empty!15512)) (not (= (right!43027 (left!42697 (right!43027 t!4198))) Empty!15512))))))

(declare-fun b!5039526 () Bool)

(declare-fun res!2147170 () Bool)

(assert (=> b!5039526 (=> (not res!2147170) (not e!3147353))))

(assert (=> b!5039526 (= res!2147170 (= (cheight!15723 (left!42697 (right!43027 t!4198))) (+ (max!0 (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198))))) 1)))))

(declare-fun b!5039527 () Bool)

(assert (=> b!5039527 (= e!3147353 (<= 0 (cheight!15723 (left!42697 (right!43027 t!4198)))))))

(assert (= (and d!1620896 res!2147168) b!5039525))

(assert (= (and b!5039525 res!2147169) b!5039526))

(assert (= (and b!5039526 res!2147170) b!5039527))

(declare-fun m!6073198 () Bool)

(assert (=> d!1620896 m!6073198))

(declare-fun m!6073200 () Bool)

(assert (=> d!1620896 m!6073200))

(declare-fun m!6073202 () Bool)

(assert (=> b!5039526 m!6073202))

(declare-fun m!6073204 () Bool)

(assert (=> b!5039526 m!6073204))

(assert (=> b!5039526 m!6073202))

(assert (=> b!5039526 m!6073204))

(declare-fun m!6073206 () Bool)

(assert (=> b!5039526 m!6073206))

(assert (=> b!5039253 d!1620896))

(assert (=> b!5039297 d!1620888))

(assert (=> b!5039297 d!1620890))

(declare-fun d!1620898 () Bool)

(declare-fun res!2147171 () Bool)

(declare-fun e!3147354 () Bool)

(assert (=> d!1620898 (=> (not res!2147171) (not e!3147354))))

(assert (=> d!1620898 (= res!2147171 (= (csize!31254 (left!42697 (left!42697 t!4198))) (+ (size!38897 (left!42697 (left!42697 (left!42697 t!4198)))) (size!38897 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(assert (=> d!1620898 (= (inv!77152 (left!42697 (left!42697 t!4198))) e!3147354)))

(declare-fun b!5039528 () Bool)

(declare-fun res!2147172 () Bool)

(assert (=> b!5039528 (=> (not res!2147172) (not e!3147354))))

(assert (=> b!5039528 (= res!2147172 (and (not (= (left!42697 (left!42697 (left!42697 t!4198))) Empty!15512)) (not (= (right!43027 (left!42697 (left!42697 t!4198))) Empty!15512))))))

(declare-fun b!5039529 () Bool)

(declare-fun res!2147173 () Bool)

(assert (=> b!5039529 (=> (not res!2147173) (not e!3147354))))

(assert (=> b!5039529 (= res!2147173 (= (cheight!15723 (left!42697 (left!42697 t!4198))) (+ (max!0 (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198))))) 1)))))

(declare-fun b!5039530 () Bool)

(assert (=> b!5039530 (= e!3147354 (<= 0 (cheight!15723 (left!42697 (left!42697 t!4198)))))))

(assert (= (and d!1620898 res!2147171) b!5039528))

(assert (= (and b!5039528 res!2147172) b!5039529))

(assert (= (and b!5039529 res!2147173) b!5039530))

(declare-fun m!6073208 () Bool)

(assert (=> d!1620898 m!6073208))

(declare-fun m!6073210 () Bool)

(assert (=> d!1620898 m!6073210))

(declare-fun m!6073212 () Bool)

(assert (=> b!5039529 m!6073212))

(declare-fun m!6073214 () Bool)

(assert (=> b!5039529 m!6073214))

(assert (=> b!5039529 m!6073212))

(assert (=> b!5039529 m!6073214))

(declare-fun m!6073216 () Bool)

(assert (=> b!5039529 m!6073216))

(assert (=> b!5039269 d!1620898))

(declare-fun d!1620900 () Bool)

(assert (=> d!1620900 (= (isEmpty!31531 (list!18909 (right!43027 t!4198))) ((_ is Nil!58300) (list!18909 (right!43027 t!4198))))))

(assert (=> d!1620758 d!1620900))

(assert (=> d!1620758 d!1620740))

(declare-fun d!1620902 () Bool)

(declare-fun lt!2084104 () Int)

(assert (=> d!1620902 (= lt!2084104 (size!38898 (list!18909 (right!43027 t!4198))))))

(assert (=> d!1620902 (= lt!2084104 (ite ((_ is Empty!15512) (right!43027 t!4198)) 0 (ite ((_ is Leaf!25732) (right!43027 t!4198)) (csize!31255 (right!43027 t!4198)) (csize!31254 (right!43027 t!4198)))))))

(assert (=> d!1620902 (= (size!38897 (right!43027 t!4198)) lt!2084104)))

(declare-fun bs!1188853 () Bool)

(assert (= bs!1188853 d!1620902))

(assert (=> bs!1188853 m!6072750))

(assert (=> bs!1188853 m!6072750))

(assert (=> bs!1188853 m!6072834))

(assert (=> d!1620758 d!1620902))

(declare-fun d!1620904 () Bool)

(declare-fun lt!2084105 () Bool)

(assert (=> d!1620904 (= lt!2084105 (isEmpty!31531 (list!18909 (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1620904 (= lt!2084105 (= (size!38897 (left!42697 (left!42697 t!4198))) 0))))

(assert (=> d!1620904 (= (isEmpty!31530 (left!42697 (left!42697 t!4198))) lt!2084105)))

(declare-fun bs!1188854 () Bool)

(assert (= bs!1188854 d!1620904))

(assert (=> bs!1188854 m!6072838))

(assert (=> bs!1188854 m!6072838))

(declare-fun m!6073218 () Bool)

(assert (=> bs!1188854 m!6073218))

(assert (=> bs!1188854 m!6072932))

(assert (=> b!5039293 d!1620904))

(declare-fun b!5039531 () Bool)

(declare-fun res!2147174 () Bool)

(declare-fun e!3147356 () Bool)

(assert (=> b!5039531 (=> (not res!2147174) (not e!3147356))))

(assert (=> b!5039531 (= res!2147174 (isBalanced!4374 (left!42697 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5039532 () Bool)

(declare-fun res!2147179 () Bool)

(assert (=> b!5039532 (=> (not res!2147179) (not e!3147356))))

(assert (=> b!5039532 (= res!2147179 (not (isEmpty!31530 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5039533 () Bool)

(declare-fun res!2147178 () Bool)

(assert (=> b!5039533 (=> (not res!2147178) (not e!3147356))))

(assert (=> b!5039533 (= res!2147178 (isBalanced!4374 (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5039534 () Bool)

(declare-fun e!3147355 () Bool)

(assert (=> b!5039534 (= e!3147355 e!3147356)))

(declare-fun res!2147176 () Bool)

(assert (=> b!5039534 (=> (not res!2147176) (not e!3147356))))

(assert (=> b!5039534 (= res!2147176 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5039535 () Bool)

(assert (=> b!5039535 (= e!3147356 (not (isEmpty!31530 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5039536 () Bool)

(declare-fun res!2147175 () Bool)

(assert (=> b!5039536 (=> (not res!2147175) (not e!3147356))))

(assert (=> b!5039536 (= res!2147175 (<= (- (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198))))) 1))))

(declare-fun d!1620906 () Bool)

(declare-fun res!2147177 () Bool)

(assert (=> d!1620906 (=> res!2147177 e!3147355)))

(assert (=> d!1620906 (= res!2147177 (not ((_ is Node!15512) (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1620906 (= (isBalanced!4374 (left!42697 (right!43027 t!4198))) e!3147355)))

(assert (= (and d!1620906 (not res!2147177)) b!5039534))

(assert (= (and b!5039534 res!2147176) b!5039536))

(assert (= (and b!5039536 res!2147175) b!5039531))

(assert (= (and b!5039531 res!2147174) b!5039533))

(assert (= (and b!5039533 res!2147178) b!5039532))

(assert (= (and b!5039532 res!2147179) b!5039535))

(declare-fun m!6073220 () Bool)

(assert (=> b!5039532 m!6073220))

(assert (=> b!5039536 m!6073202))

(assert (=> b!5039536 m!6073204))

(declare-fun m!6073222 () Bool)

(assert (=> b!5039531 m!6073222))

(declare-fun m!6073224 () Bool)

(assert (=> b!5039535 m!6073224))

(declare-fun m!6073226 () Bool)

(assert (=> b!5039533 m!6073226))

(assert (=> b!5039534 m!6073202))

(assert (=> b!5039534 m!6073204))

(assert (=> b!5039284 d!1620906))

(declare-fun b!5039538 () Bool)

(declare-fun lt!2084107 () tuple2!63234)

(assert (=> b!5039538 (= lt!2084107 (splitAtIndex!207 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1)))))

(declare-fun e!3147359 () tuple2!63234)

(assert (=> b!5039538 (= e!3147359 (tuple2!63235 (Cons!58300 (h!64748 (t!370961 (t!370961 lt!2084040))) (_1!34920 lt!2084107)) (_2!34920 lt!2084107)))))

(declare-fun b!5039539 () Bool)

(declare-fun e!3147358 () tuple2!63234)

(assert (=> b!5039539 (= e!3147358 (tuple2!63235 Nil!58300 Nil!58300))))

(declare-fun e!3147357 () Bool)

(declare-fun lt!2084106 () tuple2!63234)

(declare-fun b!5039540 () Bool)

(assert (=> b!5039540 (= e!3147357 (= (_2!34920 lt!2084106) (drop!2629 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1))))))

(declare-fun b!5039541 () Bool)

(assert (=> b!5039541 (= e!3147358 e!3147359)))

(declare-fun c!863355 () Bool)

(assert (=> b!5039541 (= c!863355 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5039542 () Bool)

(declare-fun res!2147180 () Bool)

(assert (=> b!5039542 (=> (not res!2147180) (not e!3147357))))

(assert (=> b!5039542 (= res!2147180 (= (_1!34920 lt!2084106) (take!822 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1))))))

(declare-fun b!5039537 () Bool)

(assert (=> b!5039537 (= e!3147359 (tuple2!63235 Nil!58300 (t!370961 (t!370961 lt!2084040))))))

(declare-fun d!1620908 () Bool)

(assert (=> d!1620908 e!3147357))

(declare-fun res!2147181 () Bool)

(assert (=> d!1620908 (=> (not res!2147181) (not e!3147357))))

(assert (=> d!1620908 (= res!2147181 (= (++!12724 (_1!34920 lt!2084106) (_2!34920 lt!2084106)) (t!370961 (t!370961 lt!2084040))))))

(assert (=> d!1620908 (= lt!2084106 e!3147358)))

(declare-fun c!863354 () Bool)

(assert (=> d!1620908 (= c!863354 ((_ is Nil!58300) (t!370961 (t!370961 lt!2084040))))))

(assert (=> d!1620908 (= (splitAtIndex!207 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1)) lt!2084106)))

(assert (= (and d!1620908 c!863354) b!5039539))

(assert (= (and d!1620908 (not c!863354)) b!5039541))

(assert (= (and b!5039541 c!863355) b!5039537))

(assert (= (and b!5039541 (not c!863355)) b!5039538))

(assert (= (and d!1620908 res!2147181) b!5039542))

(assert (= (and b!5039542 res!2147180) b!5039540))

(declare-fun m!6073228 () Bool)

(assert (=> b!5039538 m!6073228))

(assert (=> b!5039540 m!6073178))

(assert (=> b!5039542 m!6073142))

(declare-fun m!6073230 () Bool)

(assert (=> d!1620908 m!6073230))

(assert (=> b!5039228 d!1620908))

(assert (=> b!5039139 d!1620754))

(assert (=> b!5039139 d!1620756))

(declare-fun d!1620910 () Bool)

(declare-fun res!2147182 () Bool)

(declare-fun e!3147360 () Bool)

(assert (=> d!1620910 (=> (not res!2147182) (not e!3147360))))

(assert (=> d!1620910 (= res!2147182 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 t!4198))))) 512))))

(assert (=> d!1620910 (= (inv!77153 (right!43027 (right!43027 t!4198))) e!3147360)))

(declare-fun b!5039543 () Bool)

(declare-fun res!2147183 () Bool)

(assert (=> b!5039543 (=> (not res!2147183) (not e!3147360))))

(assert (=> b!5039543 (= res!2147183 (= (csize!31255 (right!43027 (right!43027 t!4198))) (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5039544 () Bool)

(assert (=> b!5039544 (= e!3147360 (and (> (csize!31255 (right!43027 (right!43027 t!4198))) 0) (<= (csize!31255 (right!43027 (right!43027 t!4198))) 512)))))

(assert (= (and d!1620910 res!2147182) b!5039543))

(assert (= (and b!5039543 res!2147183) b!5039544))

(declare-fun m!6073232 () Bool)

(assert (=> d!1620910 m!6073232))

(assert (=> d!1620910 m!6073232))

(declare-fun m!6073234 () Bool)

(assert (=> d!1620910 m!6073234))

(assert (=> b!5039543 m!6073232))

(assert (=> b!5039543 m!6073232))

(assert (=> b!5039543 m!6073234))

(assert (=> b!5039258 d!1620910))

(declare-fun d!1620912 () Bool)

(declare-fun lt!2084108 () Int)

(assert (=> d!1620912 (>= lt!2084108 0)))

(declare-fun e!3147361 () Int)

(assert (=> d!1620912 (= lt!2084108 e!3147361)))

(declare-fun c!863356 () Bool)

(assert (=> d!1620912 (= c!863356 ((_ is Nil!58300) lt!2084061))))

(assert (=> d!1620912 (= (size!38898 lt!2084061) lt!2084108)))

(declare-fun b!5039545 () Bool)

(assert (=> b!5039545 (= e!3147361 0)))

(declare-fun b!5039546 () Bool)

(assert (=> b!5039546 (= e!3147361 (+ 1 (size!38898 (t!370961 lt!2084061))))))

(assert (= (and d!1620912 c!863356) b!5039545))

(assert (= (and d!1620912 (not c!863356)) b!5039546))

(declare-fun m!6073236 () Bool)

(assert (=> b!5039546 m!6073236))

(assert (=> b!5039199 d!1620912))

(declare-fun d!1620914 () Bool)

(assert (=> d!1620914 (= (inv!77151 (xs!18838 (right!43027 (right!43027 t!4198)))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198))))) 2147483647))))

(declare-fun bs!1188855 () Bool)

(assert (= bs!1188855 d!1620914))

(declare-fun m!6073238 () Bool)

(assert (=> bs!1188855 m!6073238))

(assert (=> b!5039312 d!1620914))

(declare-fun d!1620916 () Bool)

(assert (=> d!1620916 (= (isEmpty!31531 (list!18909 (left!42697 t!4198))) ((_ is Nil!58300) (list!18909 (left!42697 t!4198))))))

(assert (=> d!1620768 d!1620916))

(assert (=> d!1620768 d!1620738))

(declare-fun d!1620918 () Bool)

(declare-fun lt!2084109 () Int)

(assert (=> d!1620918 (= lt!2084109 (size!38898 (list!18909 (left!42697 t!4198))))))

(assert (=> d!1620918 (= lt!2084109 (ite ((_ is Empty!15512) (left!42697 t!4198)) 0 (ite ((_ is Leaf!25732) (left!42697 t!4198)) (csize!31255 (left!42697 t!4198)) (csize!31254 (left!42697 t!4198)))))))

(assert (=> d!1620918 (= (size!38897 (left!42697 t!4198)) lt!2084109)))

(declare-fun bs!1188856 () Bool)

(assert (= bs!1188856 d!1620918))

(assert (=> bs!1188856 m!6072748))

(assert (=> bs!1188856 m!6072748))

(assert (=> bs!1188856 m!6072832))

(assert (=> d!1620768 d!1620918))

(declare-fun d!1620920 () Bool)

(declare-fun res!2147184 () Bool)

(declare-fun e!3147362 () Bool)

(assert (=> d!1620920 (=> (not res!2147184) (not e!3147362))))

(assert (=> d!1620920 (= res!2147184 (= (csize!31254 (right!43027 (right!43027 t!4198))) (+ (size!38897 (left!42697 (right!43027 (right!43027 t!4198)))) (size!38897 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(assert (=> d!1620920 (= (inv!77152 (right!43027 (right!43027 t!4198))) e!3147362)))

(declare-fun b!5039547 () Bool)

(declare-fun res!2147185 () Bool)

(assert (=> b!5039547 (=> (not res!2147185) (not e!3147362))))

(assert (=> b!5039547 (= res!2147185 (and (not (= (left!42697 (right!43027 (right!43027 t!4198))) Empty!15512)) (not (= (right!43027 (right!43027 (right!43027 t!4198))) Empty!15512))))))

(declare-fun b!5039548 () Bool)

(declare-fun res!2147186 () Bool)

(assert (=> b!5039548 (=> (not res!2147186) (not e!3147362))))

(assert (=> b!5039548 (= res!2147186 (= (cheight!15723 (right!43027 (right!43027 t!4198))) (+ (max!0 (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198))))) 1)))))

(declare-fun b!5039549 () Bool)

(assert (=> b!5039549 (= e!3147362 (<= 0 (cheight!15723 (right!43027 (right!43027 t!4198)))))))

(assert (= (and d!1620920 res!2147184) b!5039547))

(assert (= (and b!5039547 res!2147185) b!5039548))

(assert (= (and b!5039548 res!2147186) b!5039549))

(declare-fun m!6073240 () Bool)

(assert (=> d!1620920 m!6073240))

(declare-fun m!6073242 () Bool)

(assert (=> d!1620920 m!6073242))

(assert (=> b!5039548 m!6073188))

(assert (=> b!5039548 m!6073190))

(assert (=> b!5039548 m!6073188))

(assert (=> b!5039548 m!6073190))

(declare-fun m!6073244 () Bool)

(assert (=> b!5039548 m!6073244))

(assert (=> b!5039256 d!1620920))

(declare-fun d!1620922 () Bool)

(declare-fun lt!2084110 () Int)

(assert (=> d!1620922 (>= lt!2084110 0)))

(declare-fun e!3147363 () Int)

(assert (=> d!1620922 (= lt!2084110 e!3147363)))

(declare-fun c!863357 () Bool)

(assert (=> d!1620922 (= c!863357 ((_ is Nil!58300) lt!2084040))))

(assert (=> d!1620922 (= (size!38898 lt!2084040) lt!2084110)))

(declare-fun b!5039550 () Bool)

(assert (=> b!5039550 (= e!3147363 0)))

(declare-fun b!5039551 () Bool)

(assert (=> b!5039551 (= e!3147363 (+ 1 (size!38898 (t!370961 lt!2084040))))))

(assert (= (and d!1620922 c!863357) b!5039550))

(assert (= (and d!1620922 (not c!863357)) b!5039551))

(assert (=> b!5039551 m!6073144))

(assert (=> b!5039214 d!1620922))

(declare-fun d!1620924 () Bool)

(declare-fun lt!2084111 () Int)

(assert (=> d!1620924 (>= lt!2084111 0)))

(declare-fun e!3147364 () Int)

(assert (=> d!1620924 (= lt!2084111 e!3147364)))

(declare-fun c!863358 () Bool)

(assert (=> d!1620924 (= c!863358 ((_ is Nil!58300) lt!2084064))))

(assert (=> d!1620924 (= (size!38898 lt!2084064) lt!2084111)))

(declare-fun b!5039552 () Bool)

(assert (=> b!5039552 (= e!3147364 0)))

(declare-fun b!5039553 () Bool)

(assert (=> b!5039553 (= e!3147364 (+ 1 (size!38898 (t!370961 lt!2084064))))))

(assert (= (and d!1620924 c!863358) b!5039552))

(assert (= (and d!1620924 (not c!863358)) b!5039553))

(declare-fun m!6073246 () Bool)

(assert (=> b!5039553 m!6073246))

(assert (=> b!5039216 d!1620924))

(declare-fun d!1620926 () Bool)

(declare-fun res!2147187 () Bool)

(declare-fun e!3147365 () Bool)

(assert (=> d!1620926 (=> (not res!2147187) (not e!3147365))))

(assert (=> d!1620926 (= res!2147187 (= (csize!31254 (right!43027 (left!42697 t!4198))) (+ (size!38897 (left!42697 (right!43027 (left!42697 t!4198)))) (size!38897 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(assert (=> d!1620926 (= (inv!77152 (right!43027 (left!42697 t!4198))) e!3147365)))

(declare-fun b!5039554 () Bool)

(declare-fun res!2147188 () Bool)

(assert (=> b!5039554 (=> (not res!2147188) (not e!3147365))))

(assert (=> b!5039554 (= res!2147188 (and (not (= (left!42697 (right!43027 (left!42697 t!4198))) Empty!15512)) (not (= (right!43027 (right!43027 (left!42697 t!4198))) Empty!15512))))))

(declare-fun b!5039555 () Bool)

(declare-fun res!2147189 () Bool)

(assert (=> b!5039555 (=> (not res!2147189) (not e!3147365))))

(assert (=> b!5039555 (= res!2147189 (= (cheight!15723 (right!43027 (left!42697 t!4198))) (+ (max!0 (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198))))) 1)))))

(declare-fun b!5039556 () Bool)

(assert (=> b!5039556 (= e!3147365 (<= 0 (cheight!15723 (right!43027 (left!42697 t!4198)))))))

(assert (= (and d!1620926 res!2147187) b!5039554))

(assert (= (and b!5039554 res!2147188) b!5039555))

(assert (= (and b!5039555 res!2147189) b!5039556))

(declare-fun m!6073248 () Bool)

(assert (=> d!1620926 m!6073248))

(declare-fun m!6073250 () Bool)

(assert (=> d!1620926 m!6073250))

(declare-fun m!6073252 () Bool)

(assert (=> b!5039555 m!6073252))

(declare-fun m!6073254 () Bool)

(assert (=> b!5039555 m!6073254))

(assert (=> b!5039555 m!6073252))

(assert (=> b!5039555 m!6073254))

(declare-fun m!6073256 () Bool)

(assert (=> b!5039555 m!6073256))

(assert (=> b!5039272 d!1620926))

(declare-fun d!1620928 () Bool)

(declare-fun lt!2084112 () Int)

(assert (=> d!1620928 (>= lt!2084112 0)))

(declare-fun e!3147366 () Int)

(assert (=> d!1620928 (= lt!2084112 e!3147366)))

(declare-fun c!863359 () Bool)

(assert (=> d!1620928 (= c!863359 ((_ is Nil!58300) (t!370961 (innerList!15600 (xs!18838 t!4198)))))))

(assert (=> d!1620928 (= (size!38898 (t!370961 (innerList!15600 (xs!18838 t!4198)))) lt!2084112)))

(declare-fun b!5039557 () Bool)

(assert (=> b!5039557 (= e!3147366 0)))

(declare-fun b!5039558 () Bool)

(assert (=> b!5039558 (= e!3147366 (+ 1 (size!38898 (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198)))))))))

(assert (= (and d!1620928 c!863359) b!5039557))

(assert (= (and d!1620928 (not c!863359)) b!5039558))

(declare-fun m!6073258 () Bool)

(assert (=> b!5039558 m!6073258))

(assert (=> b!5039302 d!1620928))

(declare-fun d!1620930 () Bool)

(declare-fun lt!2084113 () Int)

(assert (=> d!1620930 (= lt!2084113 (size!38898 (list!18909 (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1620930 (= lt!2084113 (ite ((_ is Empty!15512) (left!42697 (right!43027 t!4198))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 t!4198))) (csize!31255 (left!42697 (right!43027 t!4198))) (csize!31254 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1620930 (= (size!38897 (left!42697 (right!43027 t!4198))) lt!2084113)))

(declare-fun bs!1188857 () Bool)

(assert (= bs!1188857 d!1620930))

(assert (=> bs!1188857 m!6072846))

(assert (=> bs!1188857 m!6072846))

(declare-fun m!6073260 () Bool)

(assert (=> bs!1188857 m!6073260))

(assert (=> d!1620760 d!1620930))

(declare-fun d!1620932 () Bool)

(declare-fun lt!2084114 () Int)

(assert (=> d!1620932 (= lt!2084114 (size!38898 (list!18909 (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1620932 (= lt!2084114 (ite ((_ is Empty!15512) (right!43027 (right!43027 t!4198))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 t!4198))) (csize!31255 (right!43027 (right!43027 t!4198))) (csize!31254 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1620932 (= (size!38897 (right!43027 (right!43027 t!4198))) lt!2084114)))

(declare-fun bs!1188858 () Bool)

(assert (= bs!1188858 d!1620932))

(assert (=> bs!1188858 m!6072848))

(assert (=> bs!1188858 m!6072848))

(declare-fun m!6073262 () Bool)

(assert (=> bs!1188858 m!6073262))

(assert (=> d!1620760 d!1620932))

(declare-fun d!1620934 () Bool)

(declare-fun c!863360 () Bool)

(assert (=> d!1620934 (= c!863360 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 t!4198)))))))

(declare-fun e!3147367 () Bool)

(assert (=> d!1620934 (= (inv!77150 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147367)))

(declare-fun b!5039559 () Bool)

(assert (=> b!5039559 (= e!3147367 (inv!77152 (left!42697 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5039560 () Bool)

(declare-fun e!3147368 () Bool)

(assert (=> b!5039560 (= e!3147367 e!3147368)))

(declare-fun res!2147190 () Bool)

(assert (=> b!5039560 (= res!2147190 (not ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> b!5039560 (=> res!2147190 e!3147368)))

(declare-fun b!5039561 () Bool)

(assert (=> b!5039561 (= e!3147368 (inv!77153 (left!42697 (left!42697 (left!42697 t!4198)))))))

(assert (= (and d!1620934 c!863360) b!5039559))

(assert (= (and d!1620934 (not c!863360)) b!5039560))

(assert (= (and b!5039560 (not res!2147190)) b!5039561))

(declare-fun m!6073264 () Bool)

(assert (=> b!5039559 m!6073264))

(declare-fun m!6073266 () Bool)

(assert (=> b!5039561 m!6073266))

(assert (=> b!5039314 d!1620934))

(declare-fun d!1620936 () Bool)

(declare-fun c!863361 () Bool)

(assert (=> d!1620936 (= c!863361 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun e!3147369 () Bool)

(assert (=> d!1620936 (= (inv!77150 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147369)))

(declare-fun b!5039562 () Bool)

(assert (=> b!5039562 (= e!3147369 (inv!77152 (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5039563 () Bool)

(declare-fun e!3147370 () Bool)

(assert (=> b!5039563 (= e!3147369 e!3147370)))

(declare-fun res!2147191 () Bool)

(assert (=> b!5039563 (= res!2147191 (not ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (=> b!5039563 (=> res!2147191 e!3147370)))

(declare-fun b!5039564 () Bool)

(assert (=> b!5039564 (= e!3147370 (inv!77153 (right!43027 (left!42697 (left!42697 t!4198)))))))

(assert (= (and d!1620936 c!863361) b!5039562))

(assert (= (and d!1620936 (not c!863361)) b!5039563))

(assert (= (and b!5039563 (not res!2147191)) b!5039564))

(declare-fun m!6073268 () Bool)

(assert (=> b!5039562 m!6073268))

(declare-fun m!6073270 () Bool)

(assert (=> b!5039564 m!6073270))

(assert (=> b!5039314 d!1620936))

(declare-fun d!1620938 () Bool)

(declare-fun e!3147372 () Bool)

(assert (=> d!1620938 e!3147372))

(declare-fun res!2147193 () Bool)

(assert (=> d!1620938 (=> (not res!2147193) (not e!3147372))))

(declare-fun lt!2084115 () List!58424)

(assert (=> d!1620938 (= res!2147193 (= (content!10352 lt!2084115) ((_ map or) (content!10352 (list!18909 (left!42697 (left!42697 t!4198)))) (content!10352 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(declare-fun e!3147371 () List!58424)

(assert (=> d!1620938 (= lt!2084115 e!3147371)))

(declare-fun c!863362 () Bool)

(assert (=> d!1620938 (= c!863362 ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1620938 (= (++!12724 (list!18909 (left!42697 (left!42697 t!4198))) (list!18909 (right!43027 (left!42697 t!4198)))) lt!2084115)))

(declare-fun b!5039567 () Bool)

(declare-fun res!2147192 () Bool)

(assert (=> b!5039567 (=> (not res!2147192) (not e!3147372))))

(assert (=> b!5039567 (= res!2147192 (= (size!38898 lt!2084115) (+ (size!38898 (list!18909 (left!42697 (left!42697 t!4198)))) (size!38898 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039565 () Bool)

(assert (=> b!5039565 (= e!3147371 (list!18909 (right!43027 (left!42697 t!4198))))))

(declare-fun b!5039566 () Bool)

(assert (=> b!5039566 (= e!3147371 (Cons!58300 (h!64748 (list!18909 (left!42697 (left!42697 t!4198)))) (++!12724 (t!370961 (list!18909 (left!42697 (left!42697 t!4198)))) (list!18909 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039568 () Bool)

(assert (=> b!5039568 (= e!3147372 (or (not (= (list!18909 (right!43027 (left!42697 t!4198))) Nil!58300)) (= lt!2084115 (list!18909 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1620938 c!863362) b!5039565))

(assert (= (and d!1620938 (not c!863362)) b!5039566))

(assert (= (and d!1620938 res!2147193) b!5039567))

(assert (= (and b!5039567 res!2147192) b!5039568))

(declare-fun m!6073272 () Bool)

(assert (=> d!1620938 m!6073272))

(assert (=> d!1620938 m!6072838))

(declare-fun m!6073274 () Bool)

(assert (=> d!1620938 m!6073274))

(assert (=> d!1620938 m!6072840))

(declare-fun m!6073276 () Bool)

(assert (=> d!1620938 m!6073276))

(declare-fun m!6073278 () Bool)

(assert (=> b!5039567 m!6073278))

(assert (=> b!5039567 m!6072838))

(declare-fun m!6073280 () Bool)

(assert (=> b!5039567 m!6073280))

(assert (=> b!5039567 m!6072840))

(declare-fun m!6073282 () Bool)

(assert (=> b!5039567 m!6073282))

(assert (=> b!5039566 m!6072840))

(declare-fun m!6073284 () Bool)

(assert (=> b!5039566 m!6073284))

(assert (=> b!5039248 d!1620938))

(declare-fun d!1620940 () Bool)

(declare-fun c!863363 () Bool)

(assert (=> d!1620940 (= c!863363 ((_ is Empty!15512) (left!42697 (left!42697 t!4198))))))

(declare-fun e!3147373 () List!58424)

(assert (=> d!1620940 (= (list!18909 (left!42697 (left!42697 t!4198))) e!3147373)))

(declare-fun b!5039570 () Bool)

(declare-fun e!3147374 () List!58424)

(assert (=> b!5039570 (= e!3147373 e!3147374)))

(declare-fun c!863364 () Bool)

(assert (=> b!5039570 (= c!863364 ((_ is Leaf!25732) (left!42697 (left!42697 t!4198))))))

(declare-fun b!5039569 () Bool)

(assert (=> b!5039569 (= e!3147373 Nil!58300)))

(declare-fun b!5039572 () Bool)

(assert (=> b!5039572 (= e!3147374 (++!12724 (list!18909 (left!42697 (left!42697 (left!42697 t!4198)))) (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039571 () Bool)

(assert (=> b!5039571 (= e!3147374 (list!18910 (xs!18838 (left!42697 (left!42697 t!4198)))))))

(assert (= (and d!1620940 c!863363) b!5039569))

(assert (= (and d!1620940 (not c!863363)) b!5039570))

(assert (= (and b!5039570 c!863364) b!5039571))

(assert (= (and b!5039570 (not c!863364)) b!5039572))

(declare-fun m!6073286 () Bool)

(assert (=> b!5039572 m!6073286))

(declare-fun m!6073288 () Bool)

(assert (=> b!5039572 m!6073288))

(assert (=> b!5039572 m!6073286))

(assert (=> b!5039572 m!6073288))

(declare-fun m!6073290 () Bool)

(assert (=> b!5039572 m!6073290))

(assert (=> b!5039571 m!6073182))

(assert (=> b!5039248 d!1620940))

(declare-fun d!1620942 () Bool)

(declare-fun c!863365 () Bool)

(assert (=> d!1620942 (= c!863365 ((_ is Empty!15512) (right!43027 (left!42697 t!4198))))))

(declare-fun e!3147375 () List!58424)

(assert (=> d!1620942 (= (list!18909 (right!43027 (left!42697 t!4198))) e!3147375)))

(declare-fun b!5039574 () Bool)

(declare-fun e!3147376 () List!58424)

(assert (=> b!5039574 (= e!3147375 e!3147376)))

(declare-fun c!863366 () Bool)

(assert (=> b!5039574 (= c!863366 ((_ is Leaf!25732) (right!43027 (left!42697 t!4198))))))

(declare-fun b!5039573 () Bool)

(assert (=> b!5039573 (= e!3147375 Nil!58300)))

(declare-fun b!5039576 () Bool)

(assert (=> b!5039576 (= e!3147376 (++!12724 (list!18909 (left!42697 (right!43027 (left!42697 t!4198)))) (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039575 () Bool)

(assert (=> b!5039575 (= e!3147376 (list!18910 (xs!18838 (right!43027 (left!42697 t!4198)))))))

(assert (= (and d!1620942 c!863365) b!5039573))

(assert (= (and d!1620942 (not c!863365)) b!5039574))

(assert (= (and b!5039574 c!863366) b!5039575))

(assert (= (and b!5039574 (not c!863366)) b!5039576))

(declare-fun m!6073292 () Bool)

(assert (=> b!5039576 m!6073292))

(declare-fun m!6073294 () Bool)

(assert (=> b!5039576 m!6073294))

(assert (=> b!5039576 m!6073292))

(assert (=> b!5039576 m!6073294))

(declare-fun m!6073296 () Bool)

(assert (=> b!5039576 m!6073296))

(declare-fun m!6073298 () Bool)

(assert (=> b!5039575 m!6073298))

(assert (=> b!5039248 d!1620942))

(declare-fun d!1620944 () Bool)

(assert (=> d!1620944 (= (max!0 (height!2091 (left!42697 (right!43027 t!4198))) (height!2091 (right!43027 (right!43027 t!4198)))) (ite (< (height!2091 (left!42697 (right!43027 t!4198))) (height!2091 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 t!4198))) (height!2091 (left!42697 (right!43027 t!4198)))))))

(assert (=> b!5039282 d!1620944))

(declare-fun d!1620946 () Bool)

(assert (=> d!1620946 (= (height!2091 (left!42697 (right!43027 t!4198))) (ite ((_ is Empty!15512) (left!42697 (right!43027 t!4198))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 t!4198))) 1 (cheight!15723 (left!42697 (right!43027 t!4198))))))))

(assert (=> b!5039282 d!1620946))

(declare-fun d!1620948 () Bool)

(assert (=> d!1620948 (= (height!2091 (right!43027 (right!43027 t!4198))) (ite ((_ is Empty!15512) (right!43027 (right!43027 t!4198))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 t!4198))) 1 (cheight!15723 (right!43027 (right!43027 t!4198))))))))

(assert (=> b!5039282 d!1620948))

(declare-fun d!1620950 () Bool)

(declare-fun res!2147194 () Bool)

(declare-fun e!3147377 () Bool)

(assert (=> d!1620950 (=> (not res!2147194) (not e!3147377))))

(assert (=> d!1620950 (= res!2147194 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 t!4198))))) 512))))

(assert (=> d!1620950 (= (inv!77153 (right!43027 (left!42697 t!4198))) e!3147377)))

(declare-fun b!5039577 () Bool)

(declare-fun res!2147195 () Bool)

(assert (=> b!5039577 (=> (not res!2147195) (not e!3147377))))

(assert (=> b!5039577 (= res!2147195 (= (csize!31255 (right!43027 (left!42697 t!4198))) (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039578 () Bool)

(assert (=> b!5039578 (= e!3147377 (and (> (csize!31255 (right!43027 (left!42697 t!4198))) 0) (<= (csize!31255 (right!43027 (left!42697 t!4198))) 512)))))

(assert (= (and d!1620950 res!2147194) b!5039577))

(assert (= (and b!5039577 res!2147195) b!5039578))

(assert (=> d!1620950 m!6073298))

(assert (=> d!1620950 m!6073298))

(declare-fun m!6073300 () Bool)

(assert (=> d!1620950 m!6073300))

(assert (=> b!5039577 m!6073298))

(assert (=> b!5039577 m!6073298))

(assert (=> b!5039577 m!6073300))

(assert (=> b!5039274 d!1620950))

(assert (=> bm!351388 d!1620922))

(declare-fun d!1620952 () Bool)

(declare-fun lt!2084116 () Int)

(assert (=> d!1620952 (>= lt!2084116 0)))

(declare-fun e!3147378 () Int)

(assert (=> d!1620952 (= lt!2084116 e!3147378)))

(declare-fun c!863367 () Bool)

(assert (=> d!1620952 (= c!863367 ((_ is Nil!58300) (t!370961 (list!18909 t!4198))))))

(assert (=> d!1620952 (= (size!38898 (t!370961 (list!18909 t!4198))) lt!2084116)))

(declare-fun b!5039579 () Bool)

(assert (=> b!5039579 (= e!3147378 0)))

(declare-fun b!5039580 () Bool)

(assert (=> b!5039580 (= e!3147378 (+ 1 (size!38898 (t!370961 (t!370961 (list!18909 t!4198))))))))

(assert (= (and d!1620952 c!863367) b!5039579))

(assert (= (and d!1620952 (not c!863367)) b!5039580))

(declare-fun m!6073302 () Bool)

(assert (=> b!5039580 m!6073302))

(assert (=> b!5039226 d!1620952))

(declare-fun d!1620954 () Bool)

(declare-fun lt!2084117 () Int)

(assert (=> d!1620954 (>= lt!2084117 0)))

(declare-fun e!3147379 () Int)

(assert (=> d!1620954 (= lt!2084117 e!3147379)))

(declare-fun c!863368 () Bool)

(assert (=> d!1620954 (= c!863368 ((_ is Nil!58300) lt!2084073))))

(assert (=> d!1620954 (= (size!38898 lt!2084073) lt!2084117)))

(declare-fun b!5039581 () Bool)

(assert (=> b!5039581 (= e!3147379 0)))

(declare-fun b!5039582 () Bool)

(assert (=> b!5039582 (= e!3147379 (+ 1 (size!38898 (t!370961 lt!2084073))))))

(assert (= (and d!1620954 c!863368) b!5039581))

(assert (= (and d!1620954 (not c!863368)) b!5039582))

(declare-fun m!6073304 () Bool)

(assert (=> b!5039582 m!6073304))

(assert (=> b!5039261 d!1620954))

(declare-fun d!1620956 () Bool)

(declare-fun lt!2084118 () Int)

(assert (=> d!1620956 (>= lt!2084118 0)))

(declare-fun e!3147380 () Int)

(assert (=> d!1620956 (= lt!2084118 e!3147380)))

(declare-fun c!863369 () Bool)

(assert (=> d!1620956 (= c!863369 ((_ is Nil!58300) (_1!34920 lt!2084052)))))

(assert (=> d!1620956 (= (size!38898 (_1!34920 lt!2084052)) lt!2084118)))

(declare-fun b!5039583 () Bool)

(assert (=> b!5039583 (= e!3147380 0)))

(declare-fun b!5039584 () Bool)

(assert (=> b!5039584 (= e!3147380 (+ 1 (size!38898 (t!370961 (_1!34920 lt!2084052)))))))

(assert (= (and d!1620956 c!863369) b!5039583))

(assert (= (and d!1620956 (not c!863369)) b!5039584))

(declare-fun m!6073306 () Bool)

(assert (=> b!5039584 m!6073306))

(assert (=> b!5039261 d!1620956))

(declare-fun d!1620958 () Bool)

(declare-fun lt!2084119 () Int)

(assert (=> d!1620958 (>= lt!2084119 0)))

(declare-fun e!3147381 () Int)

(assert (=> d!1620958 (= lt!2084119 e!3147381)))

(declare-fun c!863370 () Bool)

(assert (=> d!1620958 (= c!863370 ((_ is Nil!58300) (_2!34920 lt!2084052)))))

(assert (=> d!1620958 (= (size!38898 (_2!34920 lt!2084052)) lt!2084119)))

(declare-fun b!5039585 () Bool)

(assert (=> b!5039585 (= e!3147381 0)))

(declare-fun b!5039586 () Bool)

(assert (=> b!5039586 (= e!3147381 (+ 1 (size!38898 (t!370961 (_2!34920 lt!2084052)))))))

(assert (= (and d!1620958 c!863370) b!5039585))

(assert (= (and d!1620958 (not c!863370)) b!5039586))

(declare-fun m!6073308 () Bool)

(assert (=> b!5039586 m!6073308))

(assert (=> b!5039261 d!1620958))

(declare-fun d!1620960 () Bool)

(declare-fun c!863371 () Bool)

(assert (=> d!1620960 (= c!863371 ((_ is Nil!58300) lt!2084064))))

(declare-fun e!3147382 () (InoxSet T!104180))

(assert (=> d!1620960 (= (content!10352 lt!2084064) e!3147382)))

(declare-fun b!5039587 () Bool)

(assert (=> b!5039587 (= e!3147382 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039588 () Bool)

(assert (=> b!5039588 (= e!3147382 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084064) true) (content!10352 (t!370961 lt!2084064))))))

(assert (= (and d!1620960 c!863371) b!5039587))

(assert (= (and d!1620960 (not c!863371)) b!5039588))

(declare-fun m!6073310 () Bool)

(assert (=> b!5039588 m!6073310))

(declare-fun m!6073312 () Bool)

(assert (=> b!5039588 m!6073312))

(assert (=> d!1620712 d!1620960))

(declare-fun d!1620962 () Bool)

(declare-fun c!863372 () Bool)

(assert (=> d!1620962 (= c!863372 ((_ is Nil!58300) lt!2084040))))

(declare-fun e!3147383 () (InoxSet T!104180))

(assert (=> d!1620962 (= (content!10352 lt!2084040) e!3147383)))

(declare-fun b!5039589 () Bool)

(assert (=> b!5039589 (= e!3147383 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039590 () Bool)

(assert (=> b!5039590 (= e!3147383 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084040) true) (content!10352 (t!370961 lt!2084040))))))

(assert (= (and d!1620962 c!863372) b!5039589))

(assert (= (and d!1620962 (not c!863372)) b!5039590))

(declare-fun m!6073314 () Bool)

(assert (=> b!5039590 m!6073314))

(assert (=> b!5039590 m!6073150))

(assert (=> d!1620712 d!1620962))

(declare-fun d!1620964 () Bool)

(declare-fun lt!2084120 () Int)

(assert (=> d!1620964 (>= lt!2084120 0)))

(declare-fun e!3147384 () Int)

(assert (=> d!1620964 (= lt!2084120 e!3147384)))

(declare-fun c!863373 () Bool)

(assert (=> d!1620964 (= c!863373 ((_ is Nil!58300) (innerList!15600 (xs!18838 (left!42697 t!4198)))))))

(assert (=> d!1620964 (= (size!38898 (innerList!15600 (xs!18838 (left!42697 t!4198)))) lt!2084120)))

(declare-fun b!5039591 () Bool)

(assert (=> b!5039591 (= e!3147384 0)))

(declare-fun b!5039592 () Bool)

(assert (=> b!5039592 (= e!3147384 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198)))))))))

(assert (= (and d!1620964 c!863373) b!5039591))

(assert (= (and d!1620964 (not c!863373)) b!5039592))

(declare-fun m!6073316 () Bool)

(assert (=> b!5039592 m!6073316))

(assert (=> d!1620752 d!1620964))

(declare-fun d!1620966 () Bool)

(assert (=> d!1620966 (= (inv!77151 (xs!18838 (right!43027 (left!42697 t!4198)))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198))))) 2147483647))))

(declare-fun bs!1188859 () Bool)

(assert (= bs!1188859 d!1620966))

(declare-fun m!6073318 () Bool)

(assert (=> bs!1188859 m!6073318))

(assert (=> b!5039318 d!1620966))

(declare-fun d!1620968 () Bool)

(declare-fun lt!2084121 () Int)

(assert (=> d!1620968 (>= lt!2084121 0)))

(declare-fun e!3147385 () Int)

(assert (=> d!1620968 (= lt!2084121 e!3147385)))

(declare-fun c!863374 () Bool)

(assert (=> d!1620968 (= c!863374 ((_ is Nil!58300) lt!2084072))))

(assert (=> d!1620968 (= (size!38898 lt!2084072) lt!2084121)))

(declare-fun b!5039593 () Bool)

(assert (=> b!5039593 (= e!3147385 0)))

(declare-fun b!5039594 () Bool)

(assert (=> b!5039594 (= e!3147385 (+ 1 (size!38898 (t!370961 lt!2084072))))))

(assert (= (and d!1620968 c!863374) b!5039593))

(assert (= (and d!1620968 (not c!863374)) b!5039594))

(declare-fun m!6073320 () Bool)

(assert (=> b!5039594 m!6073320))

(assert (=> b!5039243 d!1620968))

(declare-fun d!1620970 () Bool)

(declare-fun lt!2084122 () Int)

(assert (=> d!1620970 (>= lt!2084122 0)))

(declare-fun e!3147386 () Int)

(assert (=> d!1620970 (= lt!2084122 e!3147386)))

(declare-fun c!863375 () Bool)

(assert (=> d!1620970 (= c!863375 ((_ is Nil!58300) (list!18909 (left!42697 t!4198))))))

(assert (=> d!1620970 (= (size!38898 (list!18909 (left!42697 t!4198))) lt!2084122)))

(declare-fun b!5039595 () Bool)

(assert (=> b!5039595 (= e!3147386 0)))

(declare-fun b!5039596 () Bool)

(assert (=> b!5039596 (= e!3147386 (+ 1 (size!38898 (t!370961 (list!18909 (left!42697 t!4198))))))))

(assert (= (and d!1620970 c!863375) b!5039595))

(assert (= (and d!1620970 (not c!863375)) b!5039596))

(declare-fun m!6073322 () Bool)

(assert (=> b!5039596 m!6073322))

(assert (=> b!5039243 d!1620970))

(declare-fun d!1620972 () Bool)

(declare-fun lt!2084123 () Int)

(assert (=> d!1620972 (>= lt!2084123 0)))

(declare-fun e!3147387 () Int)

(assert (=> d!1620972 (= lt!2084123 e!3147387)))

(declare-fun c!863376 () Bool)

(assert (=> d!1620972 (= c!863376 ((_ is Nil!58300) (list!18909 (right!43027 t!4198))))))

(assert (=> d!1620972 (= (size!38898 (list!18909 (right!43027 t!4198))) lt!2084123)))

(declare-fun b!5039597 () Bool)

(assert (=> b!5039597 (= e!3147387 0)))

(declare-fun b!5039598 () Bool)

(assert (=> b!5039598 (= e!3147387 (+ 1 (size!38898 (t!370961 (list!18909 (right!43027 t!4198))))))))

(assert (= (and d!1620972 c!863376) b!5039597))

(assert (= (and d!1620972 (not c!863376)) b!5039598))

(declare-fun m!6073324 () Bool)

(assert (=> b!5039598 m!6073324))

(assert (=> b!5039243 d!1620972))

(assert (=> b!5039251 d!1620878))

(assert (=> b!5039289 d!1620946))

(assert (=> b!5039289 d!1620948))

(declare-fun d!1620974 () Bool)

(assert (=> d!1620974 (= (inv!77151 (xs!18838 (left!42697 (right!43027 t!4198)))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198))))) 2147483647))))

(declare-fun bs!1188860 () Bool)

(assert (= bs!1188860 d!1620974))

(declare-fun m!6073326 () Bool)

(assert (=> bs!1188860 m!6073326))

(assert (=> b!5039309 d!1620974))

(declare-fun d!1620976 () Bool)

(declare-fun lt!2084124 () Bool)

(assert (=> d!1620976 (= lt!2084124 (isEmpty!31531 (list!18909 (right!43027 (left!42697 t!4198)))))))

(assert (=> d!1620976 (= lt!2084124 (= (size!38897 (right!43027 (left!42697 t!4198))) 0))))

(assert (=> d!1620976 (= (isEmpty!31530 (right!43027 (left!42697 t!4198))) lt!2084124)))

(declare-fun bs!1188861 () Bool)

(assert (= bs!1188861 d!1620976))

(assert (=> bs!1188861 m!6072840))

(assert (=> bs!1188861 m!6072840))

(declare-fun m!6073328 () Bool)

(assert (=> bs!1188861 m!6073328))

(assert (=> bs!1188861 m!6072934))

(assert (=> b!5039296 d!1620976))

(declare-fun d!1620978 () Bool)

(assert (=> d!1620978 (= (max!0 (height!2091 (left!42697 t!4198)) (height!2091 (right!43027 t!4198))) (ite (< (height!2091 (left!42697 t!4198)) (height!2091 (right!43027 t!4198))) (height!2091 (right!43027 t!4198)) (height!2091 (left!42697 t!4198))))))

(assert (=> b!5039299 d!1620978))

(assert (=> b!5039299 d!1620762))

(assert (=> b!5039299 d!1620764))

(assert (=> b!5039287 d!1620946))

(assert (=> b!5039287 d!1620948))

(declare-fun d!1620980 () Bool)

(assert (=> d!1620980 (= (max!0 (height!2091 (left!42697 (left!42697 t!4198))) (height!2091 (right!43027 (left!42697 t!4198)))) (ite (< (height!2091 (left!42697 (left!42697 t!4198))) (height!2091 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 t!4198))) (height!2091 (left!42697 (left!42697 t!4198)))))))

(assert (=> b!5039304 d!1620980))

(assert (=> b!5039304 d!1620888))

(assert (=> b!5039304 d!1620890))

(assert (=> b!5039146 d!1620742))

(assert (=> b!5039146 d!1620744))

(declare-fun b!5039599 () Bool)

(declare-fun res!2147196 () Bool)

(declare-fun e!3147389 () Bool)

(assert (=> b!5039599 (=> (not res!2147196) (not e!3147389))))

(assert (=> b!5039599 (= res!2147196 (isBalanced!4374 (left!42697 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039600 () Bool)

(declare-fun res!2147201 () Bool)

(assert (=> b!5039600 (=> (not res!2147201) (not e!3147389))))

(assert (=> b!5039600 (= res!2147201 (not (isEmpty!31530 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039601 () Bool)

(declare-fun res!2147200 () Bool)

(assert (=> b!5039601 (=> (not res!2147200) (not e!3147389))))

(assert (=> b!5039601 (= res!2147200 (isBalanced!4374 (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5039602 () Bool)

(declare-fun e!3147388 () Bool)

(assert (=> b!5039602 (= e!3147388 e!3147389)))

(declare-fun res!2147198 () Bool)

(assert (=> b!5039602 (=> (not res!2147198) (not e!3147389))))

(assert (=> b!5039602 (= res!2147198 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039603 () Bool)

(assert (=> b!5039603 (= e!3147389 (not (isEmpty!31530 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039604 () Bool)

(declare-fun res!2147197 () Bool)

(assert (=> b!5039604 (=> (not res!2147197) (not e!3147389))))

(assert (=> b!5039604 (= res!2147197 (<= (- (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198))))) 1))))

(declare-fun d!1620982 () Bool)

(declare-fun res!2147199 () Bool)

(assert (=> d!1620982 (=> res!2147199 e!3147388)))

(assert (=> d!1620982 (= res!2147199 (not ((_ is Node!15512) (right!43027 (left!42697 t!4198)))))))

(assert (=> d!1620982 (= (isBalanced!4374 (right!43027 (left!42697 t!4198))) e!3147388)))

(assert (= (and d!1620982 (not res!2147199)) b!5039602))

(assert (= (and b!5039602 res!2147198) b!5039604))

(assert (= (and b!5039604 res!2147197) b!5039599))

(assert (= (and b!5039599 res!2147196) b!5039601))

(assert (= (and b!5039601 res!2147200) b!5039600))

(assert (= (and b!5039600 res!2147201) b!5039603))

(declare-fun m!6073330 () Bool)

(assert (=> b!5039600 m!6073330))

(assert (=> b!5039604 m!6073252))

(assert (=> b!5039604 m!6073254))

(declare-fun m!6073332 () Bool)

(assert (=> b!5039599 m!6073332))

(declare-fun m!6073334 () Bool)

(assert (=> b!5039603 m!6073334))

(declare-fun m!6073336 () Bool)

(assert (=> b!5039601 m!6073336))

(assert (=> b!5039602 m!6073252))

(assert (=> b!5039602 m!6073254))

(assert (=> b!5039294 d!1620982))

(declare-fun d!1620984 () Bool)

(declare-fun lt!2084125 () Bool)

(assert (=> d!1620984 (= lt!2084125 (isEmpty!31531 (list!18909 (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1620984 (= lt!2084125 (= (size!38897 (left!42697 (right!43027 t!4198))) 0))))

(assert (=> d!1620984 (= (isEmpty!31530 (left!42697 (right!43027 t!4198))) lt!2084125)))

(declare-fun bs!1188862 () Bool)

(assert (= bs!1188862 d!1620984))

(assert (=> bs!1188862 m!6072846))

(assert (=> bs!1188862 m!6072846))

(declare-fun m!6073338 () Bool)

(assert (=> bs!1188862 m!6073338))

(assert (=> bs!1188862 m!6072892))

(assert (=> b!5039285 d!1620984))

(declare-fun d!1620986 () Bool)

(declare-fun c!863377 () Bool)

(assert (=> d!1620986 (= c!863377 ((_ is Nil!58300) lt!2084072))))

(declare-fun e!3147390 () (InoxSet T!104180))

(assert (=> d!1620986 (= (content!10352 lt!2084072) e!3147390)))

(declare-fun b!5039605 () Bool)

(assert (=> b!5039605 (= e!3147390 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039606 () Bool)

(assert (=> b!5039606 (= e!3147390 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084072) true) (content!10352 (t!370961 lt!2084072))))))

(assert (= (and d!1620986 c!863377) b!5039605))

(assert (= (and d!1620986 (not c!863377)) b!5039606))

(declare-fun m!6073340 () Bool)

(assert (=> b!5039606 m!6073340))

(declare-fun m!6073342 () Bool)

(assert (=> b!5039606 m!6073342))

(assert (=> d!1620736 d!1620986))

(declare-fun d!1620988 () Bool)

(declare-fun c!863378 () Bool)

(assert (=> d!1620988 (= c!863378 ((_ is Nil!58300) (list!18909 (left!42697 t!4198))))))

(declare-fun e!3147391 () (InoxSet T!104180))

(assert (=> d!1620988 (= (content!10352 (list!18909 (left!42697 t!4198))) e!3147391)))

(declare-fun b!5039607 () Bool)

(assert (=> b!5039607 (= e!3147391 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039608 () Bool)

(assert (=> b!5039608 (= e!3147391 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (left!42697 t!4198))) true) (content!10352 (t!370961 (list!18909 (left!42697 t!4198))))))))

(assert (= (and d!1620988 c!863378) b!5039607))

(assert (= (and d!1620988 (not c!863378)) b!5039608))

(declare-fun m!6073344 () Bool)

(assert (=> b!5039608 m!6073344))

(declare-fun m!6073346 () Bool)

(assert (=> b!5039608 m!6073346))

(assert (=> d!1620736 d!1620988))

(declare-fun d!1620990 () Bool)

(declare-fun c!863379 () Bool)

(assert (=> d!1620990 (= c!863379 ((_ is Nil!58300) (list!18909 (right!43027 t!4198))))))

(declare-fun e!3147392 () (InoxSet T!104180))

(assert (=> d!1620990 (= (content!10352 (list!18909 (right!43027 t!4198))) e!3147392)))

(declare-fun b!5039609 () Bool)

(assert (=> b!5039609 (= e!3147392 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039610 () Bool)

(assert (=> b!5039610 (= e!3147392 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (right!43027 t!4198))) true) (content!10352 (t!370961 (list!18909 (right!43027 t!4198))))))))

(assert (= (and d!1620990 c!863379) b!5039609))

(assert (= (and d!1620990 (not c!863379)) b!5039610))

(declare-fun m!6073348 () Bool)

(assert (=> b!5039610 m!6073348))

(declare-fun m!6073350 () Bool)

(assert (=> b!5039610 m!6073350))

(assert (=> d!1620736 d!1620990))

(assert (=> d!1620774 d!1620918))

(assert (=> d!1620774 d!1620902))

(declare-fun d!1620992 () Bool)

(declare-fun c!863380 () Bool)

(assert (=> d!1620992 (= c!863380 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 t!4198)))))))

(declare-fun e!3147393 () Bool)

(assert (=> d!1620992 (= (inv!77150 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147393)))

(declare-fun b!5039611 () Bool)

(assert (=> b!5039611 (= e!3147393 (inv!77152 (left!42697 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039612 () Bool)

(declare-fun e!3147394 () Bool)

(assert (=> b!5039612 (= e!3147393 e!3147394)))

(declare-fun res!2147202 () Bool)

(assert (=> b!5039612 (= res!2147202 (not ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> b!5039612 (=> res!2147202 e!3147394)))

(declare-fun b!5039613 () Bool)

(assert (=> b!5039613 (= e!3147394 (inv!77153 (left!42697 (right!43027 (right!43027 t!4198)))))))

(assert (= (and d!1620992 c!863380) b!5039611))

(assert (= (and d!1620992 (not c!863380)) b!5039612))

(assert (= (and b!5039612 (not res!2147202)) b!5039613))

(declare-fun m!6073352 () Bool)

(assert (=> b!5039611 m!6073352))

(declare-fun m!6073354 () Bool)

(assert (=> b!5039613 m!6073354))

(assert (=> b!5039311 d!1620992))

(declare-fun d!1620994 () Bool)

(declare-fun c!863381 () Bool)

(assert (=> d!1620994 (= c!863381 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun e!3147395 () Bool)

(assert (=> d!1620994 (= (inv!77150 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147395)))

(declare-fun b!5039614 () Bool)

(assert (=> b!5039614 (= e!3147395 (inv!77152 (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5039615 () Bool)

(declare-fun e!3147396 () Bool)

(assert (=> b!5039615 (= e!3147395 e!3147396)))

(declare-fun res!2147203 () Bool)

(assert (=> b!5039615 (= res!2147203 (not ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (=> b!5039615 (=> res!2147203 e!3147396)))

(declare-fun b!5039616 () Bool)

(assert (=> b!5039616 (= e!3147396 (inv!77153 (right!43027 (right!43027 (right!43027 t!4198)))))))

(assert (= (and d!1620994 c!863381) b!5039614))

(assert (= (and d!1620994 (not c!863381)) b!5039615))

(assert (= (and b!5039615 (not res!2147203)) b!5039616))

(declare-fun m!6073356 () Bool)

(assert (=> b!5039614 m!6073356))

(declare-fun m!6073358 () Bool)

(assert (=> b!5039616 m!6073358))

(assert (=> b!5039311 d!1620994))

(declare-fun d!1620996 () Bool)

(declare-fun lt!2084126 () Int)

(assert (=> d!1620996 (= lt!2084126 (size!38898 (list!18909 (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1620996 (= lt!2084126 (ite ((_ is Empty!15512) (left!42697 (left!42697 t!4198))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 t!4198))) (csize!31255 (left!42697 (left!42697 t!4198))) (csize!31254 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1620996 (= (size!38897 (left!42697 (left!42697 t!4198))) lt!2084126)))

(declare-fun bs!1188863 () Bool)

(assert (= bs!1188863 d!1620996))

(assert (=> bs!1188863 m!6072838))

(assert (=> bs!1188863 m!6072838))

(assert (=> bs!1188863 m!6073280))

(assert (=> d!1620780 d!1620996))

(declare-fun d!1620998 () Bool)

(declare-fun lt!2084127 () Int)

(assert (=> d!1620998 (= lt!2084127 (size!38898 (list!18909 (right!43027 (left!42697 t!4198)))))))

(assert (=> d!1620998 (= lt!2084127 (ite ((_ is Empty!15512) (right!43027 (left!42697 t!4198))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 t!4198))) (csize!31255 (right!43027 (left!42697 t!4198))) (csize!31254 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1620998 (= (size!38897 (right!43027 (left!42697 t!4198))) lt!2084127)))

(declare-fun bs!1188864 () Bool)

(assert (= bs!1188864 d!1620998))

(assert (=> bs!1188864 m!6072840))

(assert (=> bs!1188864 m!6072840))

(assert (=> bs!1188864 m!6073282))

(assert (=> d!1620780 d!1620998))

(assert (=> b!5039219 d!1620922))

(declare-fun b!5039617 () Bool)

(declare-fun res!2147204 () Bool)

(declare-fun e!3147398 () Bool)

(assert (=> b!5039617 (=> (not res!2147204) (not e!3147398))))

(assert (=> b!5039617 (= res!2147204 (isBalanced!4374 (left!42697 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5039618 () Bool)

(declare-fun res!2147209 () Bool)

(assert (=> b!5039618 (=> (not res!2147209) (not e!3147398))))

(assert (=> b!5039618 (= res!2147209 (not (isEmpty!31530 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039619 () Bool)

(declare-fun res!2147208 () Bool)

(assert (=> b!5039619 (=> (not res!2147208) (not e!3147398))))

(assert (=> b!5039619 (= res!2147208 (isBalanced!4374 (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5039620 () Bool)

(declare-fun e!3147397 () Bool)

(assert (=> b!5039620 (= e!3147397 e!3147398)))

(declare-fun res!2147206 () Bool)

(assert (=> b!5039620 (=> (not res!2147206) (not e!3147398))))

(assert (=> b!5039620 (= res!2147206 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5039621 () Bool)

(assert (=> b!5039621 (= e!3147398 (not (isEmpty!31530 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039622 () Bool)

(declare-fun res!2147205 () Bool)

(assert (=> b!5039622 (=> (not res!2147205) (not e!3147398))))

(assert (=> b!5039622 (= res!2147205 (<= (- (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198))))) 1))))

(declare-fun d!1621000 () Bool)

(declare-fun res!2147207 () Bool)

(assert (=> d!1621000 (=> res!2147207 e!3147397)))

(assert (=> d!1621000 (= res!2147207 (not ((_ is Node!15512) (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1621000 (= (isBalanced!4374 (left!42697 (left!42697 t!4198))) e!3147397)))

(assert (= (and d!1621000 (not res!2147207)) b!5039620))

(assert (= (and b!5039620 res!2147206) b!5039622))

(assert (= (and b!5039622 res!2147205) b!5039617))

(assert (= (and b!5039617 res!2147204) b!5039619))

(assert (= (and b!5039619 res!2147208) b!5039618))

(assert (= (and b!5039618 res!2147209) b!5039621))

(declare-fun m!6073360 () Bool)

(assert (=> b!5039618 m!6073360))

(assert (=> b!5039622 m!6073212))

(assert (=> b!5039622 m!6073214))

(declare-fun m!6073362 () Bool)

(assert (=> b!5039617 m!6073362))

(declare-fun m!6073364 () Bool)

(assert (=> b!5039621 m!6073364))

(declare-fun m!6073366 () Bool)

(assert (=> b!5039619 m!6073366))

(assert (=> b!5039620 m!6073212))

(assert (=> b!5039620 m!6073214))

(assert (=> b!5039292 d!1621000))

(assert (=> b!5039215 d!1620868))

(assert (=> b!5039198 d!1620886))

(declare-fun d!1621002 () Bool)

(declare-fun lt!2084128 () Int)

(assert (=> d!1621002 (>= lt!2084128 0)))

(declare-fun e!3147399 () Int)

(assert (=> d!1621002 (= lt!2084128 e!3147399)))

(declare-fun c!863382 () Bool)

(assert (=> d!1621002 (= c!863382 ((_ is Nil!58300) (list!18910 (xs!18838 (left!42697 t!4198)))))))

(assert (=> d!1621002 (= (size!38898 (list!18910 (xs!18838 (left!42697 t!4198)))) lt!2084128)))

(declare-fun b!5039623 () Bool)

(assert (=> b!5039623 (= e!3147399 0)))

(declare-fun b!5039624 () Bool)

(assert (=> b!5039624 (= e!3147399 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (left!42697 t!4198)))))))))

(assert (= (and d!1621002 c!863382) b!5039623))

(assert (= (and d!1621002 (not c!863382)) b!5039624))

(declare-fun m!6073368 () Bool)

(assert (=> b!5039624 m!6073368))

(assert (=> b!5039306 d!1621002))

(declare-fun d!1621004 () Bool)

(assert (=> d!1621004 (= (list!18910 (xs!18838 (left!42697 t!4198))) (innerList!15600 (xs!18838 (left!42697 t!4198))))))

(assert (=> b!5039306 d!1621004))

(assert (=> d!1620782 d!1621002))

(assert (=> d!1620782 d!1621004))

(declare-fun d!1621006 () Bool)

(assert (=> d!1621006 (= (inv!77151 (xs!18838 (left!42697 (left!42697 t!4198)))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198))))) 2147483647))))

(declare-fun bs!1188865 () Bool)

(assert (= bs!1188865 d!1621006))

(declare-fun m!6073370 () Bool)

(assert (=> bs!1188865 m!6073370))

(assert (=> b!5039315 d!1621006))

(assert (=> d!1620750 d!1620876))

(assert (=> d!1620750 d!1620878))

(declare-fun d!1621008 () Bool)

(declare-fun e!3147401 () Bool)

(assert (=> d!1621008 e!3147401))

(declare-fun res!2147211 () Bool)

(assert (=> d!1621008 (=> (not res!2147211) (not e!3147401))))

(declare-fun lt!2084129 () List!58424)

(assert (=> d!1621008 (= res!2147211 (= (content!10352 lt!2084129) ((_ map or) (content!10352 (t!370961 (_1!34920 lt!2084052))) (content!10352 (_2!34920 lt!2084052)))))))

(declare-fun e!3147400 () List!58424)

(assert (=> d!1621008 (= lt!2084129 e!3147400)))

(declare-fun c!863383 () Bool)

(assert (=> d!1621008 (= c!863383 ((_ is Nil!58300) (t!370961 (_1!34920 lt!2084052))))))

(assert (=> d!1621008 (= (++!12724 (t!370961 (_1!34920 lt!2084052)) (_2!34920 lt!2084052)) lt!2084129)))

(declare-fun b!5039627 () Bool)

(declare-fun res!2147210 () Bool)

(assert (=> b!5039627 (=> (not res!2147210) (not e!3147401))))

(assert (=> b!5039627 (= res!2147210 (= (size!38898 lt!2084129) (+ (size!38898 (t!370961 (_1!34920 lt!2084052))) (size!38898 (_2!34920 lt!2084052)))))))

(declare-fun b!5039625 () Bool)

(assert (=> b!5039625 (= e!3147400 (_2!34920 lt!2084052))))

(declare-fun b!5039626 () Bool)

(assert (=> b!5039626 (= e!3147400 (Cons!58300 (h!64748 (t!370961 (_1!34920 lt!2084052))) (++!12724 (t!370961 (t!370961 (_1!34920 lt!2084052))) (_2!34920 lt!2084052))))))

(declare-fun b!5039628 () Bool)

(assert (=> b!5039628 (= e!3147401 (or (not (= (_2!34920 lt!2084052) Nil!58300)) (= lt!2084129 (t!370961 (_1!34920 lt!2084052)))))))

(assert (= (and d!1621008 c!863383) b!5039625))

(assert (= (and d!1621008 (not c!863383)) b!5039626))

(assert (= (and d!1621008 res!2147211) b!5039627))

(assert (= (and b!5039627 res!2147210) b!5039628))

(declare-fun m!6073372 () Bool)

(assert (=> d!1621008 m!6073372))

(assert (=> d!1621008 m!6073170))

(assert (=> d!1621008 m!6072866))

(declare-fun m!6073374 () Bool)

(assert (=> b!5039627 m!6073374))

(assert (=> b!5039627 m!6073306))

(assert (=> b!5039627 m!6072872))

(declare-fun m!6073376 () Bool)

(assert (=> b!5039626 m!6073376))

(assert (=> b!5039260 d!1621008))

(declare-fun d!1621010 () Bool)

(declare-fun lt!2084130 () Int)

(assert (=> d!1621010 (>= lt!2084130 0)))

(declare-fun e!3147402 () Int)

(assert (=> d!1621010 (= lt!2084130 e!3147402)))

(declare-fun c!863384 () Bool)

(assert (=> d!1621010 (= c!863384 ((_ is Nil!58300) (innerList!15600 (xs!18838 (right!43027 t!4198)))))))

(assert (=> d!1621010 (= (size!38898 (innerList!15600 (xs!18838 (right!43027 t!4198)))) lt!2084130)))

(declare-fun b!5039629 () Bool)

(assert (=> b!5039629 (= e!3147402 0)))

(declare-fun b!5039630 () Bool)

(assert (=> b!5039630 (= e!3147402 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198)))))))))

(assert (= (and d!1621010 c!863384) b!5039629))

(assert (= (and d!1621010 (not c!863384)) b!5039630))

(declare-fun m!6073378 () Bool)

(assert (=> b!5039630 m!6073378))

(assert (=> d!1620732 d!1621010))

(assert (=> b!5039247 d!1621004))

(declare-fun d!1621012 () Bool)

(declare-fun c!863385 () Bool)

(assert (=> d!1621012 (= c!863385 ((_ is Nil!58300) lt!2084061))))

(declare-fun e!3147403 () (InoxSet T!104180))

(assert (=> d!1621012 (= (content!10352 lt!2084061) e!3147403)))

(declare-fun b!5039631 () Bool)

(assert (=> b!5039631 (= e!3147403 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039632 () Bool)

(assert (=> b!5039632 (= e!3147403 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084061) true) (content!10352 (t!370961 lt!2084061))))))

(assert (= (and d!1621012 c!863385) b!5039631))

(assert (= (and d!1621012 (not c!863385)) b!5039632))

(declare-fun m!6073380 () Bool)

(assert (=> b!5039632 m!6073380))

(declare-fun m!6073382 () Bool)

(assert (=> b!5039632 m!6073382))

(assert (=> d!1620708 d!1621012))

(assert (=> d!1620708 d!1620962))

(declare-fun d!1621014 () Bool)

(declare-fun e!3147405 () Bool)

(assert (=> d!1621014 e!3147405))

(declare-fun res!2147213 () Bool)

(assert (=> d!1621014 (=> (not res!2147213) (not e!3147405))))

(declare-fun lt!2084131 () List!58424)

(assert (=> d!1621014 (= res!2147213 (= (content!10352 lt!2084131) ((_ map or) (content!10352 (_1!34920 lt!2084068)) (content!10352 (_2!34920 lt!2084068)))))))

(declare-fun e!3147404 () List!58424)

(assert (=> d!1621014 (= lt!2084131 e!3147404)))

(declare-fun c!863386 () Bool)

(assert (=> d!1621014 (= c!863386 ((_ is Nil!58300) (_1!34920 lt!2084068)))))

(assert (=> d!1621014 (= (++!12724 (_1!34920 lt!2084068) (_2!34920 lt!2084068)) lt!2084131)))

(declare-fun b!5039635 () Bool)

(declare-fun res!2147212 () Bool)

(assert (=> b!5039635 (=> (not res!2147212) (not e!3147405))))

(assert (=> b!5039635 (= res!2147212 (= (size!38898 lt!2084131) (+ (size!38898 (_1!34920 lt!2084068)) (size!38898 (_2!34920 lt!2084068)))))))

(declare-fun b!5039633 () Bool)

(assert (=> b!5039633 (= e!3147404 (_2!34920 lt!2084068))))

(declare-fun b!5039634 () Bool)

(assert (=> b!5039634 (= e!3147404 (Cons!58300 (h!64748 (_1!34920 lt!2084068)) (++!12724 (t!370961 (_1!34920 lt!2084068)) (_2!34920 lt!2084068))))))

(declare-fun b!5039636 () Bool)

(assert (=> b!5039636 (= e!3147405 (or (not (= (_2!34920 lt!2084068) Nil!58300)) (= lt!2084131 (_1!34920 lt!2084068))))))

(assert (= (and d!1621014 c!863386) b!5039633))

(assert (= (and d!1621014 (not c!863386)) b!5039634))

(assert (= (and d!1621014 res!2147213) b!5039635))

(assert (= (and b!5039635 res!2147212) b!5039636))

(declare-fun m!6073384 () Bool)

(assert (=> d!1621014 m!6073384))

(declare-fun m!6073386 () Bool)

(assert (=> d!1621014 m!6073386))

(declare-fun m!6073388 () Bool)

(assert (=> d!1621014 m!6073388))

(declare-fun m!6073390 () Bool)

(assert (=> b!5039635 m!6073390))

(declare-fun m!6073392 () Bool)

(assert (=> b!5039635 m!6073392))

(declare-fun m!6073394 () Bool)

(assert (=> b!5039635 m!6073394))

(declare-fun m!6073396 () Bool)

(assert (=> b!5039634 m!6073396))

(assert (=> d!1620730 d!1621014))

(declare-fun d!1621016 () Bool)

(declare-fun e!3147407 () Bool)

(assert (=> d!1621016 e!3147407))

(declare-fun res!2147215 () Bool)

(assert (=> d!1621016 (=> (not res!2147215) (not e!3147407))))

(declare-fun lt!2084132 () List!58424)

(assert (=> d!1621016 (= res!2147215 (= (content!10352 lt!2084132) ((_ map or) (content!10352 (t!370961 (list!18909 (left!42697 t!4198)))) (content!10352 (list!18909 (right!43027 t!4198))))))))

(declare-fun e!3147406 () List!58424)

(assert (=> d!1621016 (= lt!2084132 e!3147406)))

(declare-fun c!863387 () Bool)

(assert (=> d!1621016 (= c!863387 ((_ is Nil!58300) (t!370961 (list!18909 (left!42697 t!4198)))))))

(assert (=> d!1621016 (= (++!12724 (t!370961 (list!18909 (left!42697 t!4198))) (list!18909 (right!43027 t!4198))) lt!2084132)))

(declare-fun b!5039639 () Bool)

(declare-fun res!2147214 () Bool)

(assert (=> b!5039639 (=> (not res!2147214) (not e!3147407))))

(assert (=> b!5039639 (= res!2147214 (= (size!38898 lt!2084132) (+ (size!38898 (t!370961 (list!18909 (left!42697 t!4198)))) (size!38898 (list!18909 (right!43027 t!4198))))))))

(declare-fun b!5039637 () Bool)

(assert (=> b!5039637 (= e!3147406 (list!18909 (right!43027 t!4198)))))

(declare-fun b!5039638 () Bool)

(assert (=> b!5039638 (= e!3147406 (Cons!58300 (h!64748 (t!370961 (list!18909 (left!42697 t!4198)))) (++!12724 (t!370961 (t!370961 (list!18909 (left!42697 t!4198)))) (list!18909 (right!43027 t!4198)))))))

(declare-fun b!5039640 () Bool)

(assert (=> b!5039640 (= e!3147407 (or (not (= (list!18909 (right!43027 t!4198)) Nil!58300)) (= lt!2084132 (t!370961 (list!18909 (left!42697 t!4198))))))))

(assert (= (and d!1621016 c!863387) b!5039637))

(assert (= (and d!1621016 (not c!863387)) b!5039638))

(assert (= (and d!1621016 res!2147215) b!5039639))

(assert (= (and b!5039639 res!2147214) b!5039640))

(declare-fun m!6073398 () Bool)

(assert (=> d!1621016 m!6073398))

(assert (=> d!1621016 m!6073346))

(assert (=> d!1621016 m!6072750))

(assert (=> d!1621016 m!6072828))

(declare-fun m!6073400 () Bool)

(assert (=> b!5039639 m!6073400))

(assert (=> b!5039639 m!6073322))

(assert (=> b!5039639 m!6072750))

(assert (=> b!5039639 m!6072834))

(assert (=> b!5039638 m!6072750))

(declare-fun m!6073402 () Bool)

(assert (=> b!5039638 m!6073402))

(assert (=> b!5039242 d!1621016))

(declare-fun d!1621018 () Bool)

(declare-fun e!3147409 () Bool)

(assert (=> d!1621018 e!3147409))

(declare-fun res!2147217 () Bool)

(assert (=> d!1621018 (=> (not res!2147217) (not e!3147409))))

(declare-fun lt!2084133 () List!58424)

(assert (=> d!1621018 (= res!2147217 (= (content!10352 lt!2084133) ((_ map or) (content!10352 (list!18909 (left!42697 (right!43027 t!4198)))) (content!10352 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(declare-fun e!3147408 () List!58424)

(assert (=> d!1621018 (= lt!2084133 e!3147408)))

(declare-fun c!863388 () Bool)

(assert (=> d!1621018 (= c!863388 ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1621018 (= (++!12724 (list!18909 (left!42697 (right!43027 t!4198))) (list!18909 (right!43027 (right!43027 t!4198)))) lt!2084133)))

(declare-fun b!5039643 () Bool)

(declare-fun res!2147216 () Bool)

(assert (=> b!5039643 (=> (not res!2147216) (not e!3147409))))

(assert (=> b!5039643 (= res!2147216 (= (size!38898 lt!2084133) (+ (size!38898 (list!18909 (left!42697 (right!43027 t!4198)))) (size!38898 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5039641 () Bool)

(assert (=> b!5039641 (= e!3147408 (list!18909 (right!43027 (right!43027 t!4198))))))

(declare-fun b!5039642 () Bool)

(assert (=> b!5039642 (= e!3147408 (Cons!58300 (h!64748 (list!18909 (left!42697 (right!43027 t!4198)))) (++!12724 (t!370961 (list!18909 (left!42697 (right!43027 t!4198)))) (list!18909 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039644 () Bool)

(assert (=> b!5039644 (= e!3147409 (or (not (= (list!18909 (right!43027 (right!43027 t!4198))) Nil!58300)) (= lt!2084133 (list!18909 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621018 c!863388) b!5039641))

(assert (= (and d!1621018 (not c!863388)) b!5039642))

(assert (= (and d!1621018 res!2147217) b!5039643))

(assert (= (and b!5039643 res!2147216) b!5039644))

(declare-fun m!6073404 () Bool)

(assert (=> d!1621018 m!6073404))

(assert (=> d!1621018 m!6072846))

(declare-fun m!6073406 () Bool)

(assert (=> d!1621018 m!6073406))

(assert (=> d!1621018 m!6072848))

(declare-fun m!6073408 () Bool)

(assert (=> d!1621018 m!6073408))

(declare-fun m!6073410 () Bool)

(assert (=> b!5039643 m!6073410))

(assert (=> b!5039643 m!6072846))

(assert (=> b!5039643 m!6073260))

(assert (=> b!5039643 m!6072848))

(assert (=> b!5039643 m!6073262))

(assert (=> b!5039642 m!6072848))

(declare-fun m!6073412 () Bool)

(assert (=> b!5039642 m!6073412))

(assert (=> b!5039252 d!1621018))

(declare-fun d!1621020 () Bool)

(declare-fun c!863389 () Bool)

(assert (=> d!1621020 (= c!863389 ((_ is Empty!15512) (left!42697 (right!43027 t!4198))))))

(declare-fun e!3147410 () List!58424)

(assert (=> d!1621020 (= (list!18909 (left!42697 (right!43027 t!4198))) e!3147410)))

(declare-fun b!5039646 () Bool)

(declare-fun e!3147411 () List!58424)

(assert (=> b!5039646 (= e!3147410 e!3147411)))

(declare-fun c!863390 () Bool)

(assert (=> b!5039646 (= c!863390 ((_ is Leaf!25732) (left!42697 (right!43027 t!4198))))))

(declare-fun b!5039645 () Bool)

(assert (=> b!5039645 (= e!3147410 Nil!58300)))

(declare-fun b!5039648 () Bool)

(assert (=> b!5039648 (= e!3147411 (++!12724 (list!18909 (left!42697 (left!42697 (right!43027 t!4198)))) (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5039647 () Bool)

(assert (=> b!5039647 (= e!3147411 (list!18910 (xs!18838 (left!42697 (right!43027 t!4198)))))))

(assert (= (and d!1621020 c!863389) b!5039645))

(assert (= (and d!1621020 (not c!863389)) b!5039646))

(assert (= (and b!5039646 c!863390) b!5039647))

(assert (= (and b!5039646 (not c!863390)) b!5039648))

(declare-fun m!6073414 () Bool)

(assert (=> b!5039648 m!6073414))

(declare-fun m!6073416 () Bool)

(assert (=> b!5039648 m!6073416))

(assert (=> b!5039648 m!6073414))

(assert (=> b!5039648 m!6073416))

(declare-fun m!6073418 () Bool)

(assert (=> b!5039648 m!6073418))

(assert (=> b!5039647 m!6073128))

(assert (=> b!5039252 d!1621020))

(declare-fun d!1621022 () Bool)

(declare-fun c!863391 () Bool)

(assert (=> d!1621022 (= c!863391 ((_ is Empty!15512) (right!43027 (right!43027 t!4198))))))

(declare-fun e!3147412 () List!58424)

(assert (=> d!1621022 (= (list!18909 (right!43027 (right!43027 t!4198))) e!3147412)))

(declare-fun b!5039650 () Bool)

(declare-fun e!3147413 () List!58424)

(assert (=> b!5039650 (= e!3147412 e!3147413)))

(declare-fun c!863392 () Bool)

(assert (=> b!5039650 (= c!863392 ((_ is Leaf!25732) (right!43027 (right!43027 t!4198))))))

(declare-fun b!5039649 () Bool)

(assert (=> b!5039649 (= e!3147412 Nil!58300)))

(declare-fun b!5039652 () Bool)

(assert (=> b!5039652 (= e!3147413 (++!12724 (list!18909 (left!42697 (right!43027 (right!43027 t!4198)))) (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039651 () Bool)

(assert (=> b!5039651 (= e!3147413 (list!18910 (xs!18838 (right!43027 (right!43027 t!4198)))))))

(assert (= (and d!1621022 c!863391) b!5039649))

(assert (= (and d!1621022 (not c!863391)) b!5039650))

(assert (= (and b!5039650 c!863392) b!5039651))

(assert (= (and b!5039650 (not c!863392)) b!5039652))

(declare-fun m!6073420 () Bool)

(assert (=> b!5039652 m!6073420))

(declare-fun m!6073422 () Bool)

(assert (=> b!5039652 m!6073422))

(assert (=> b!5039652 m!6073420))

(assert (=> b!5039652 m!6073422))

(declare-fun m!6073424 () Bool)

(assert (=> b!5039652 m!6073424))

(assert (=> b!5039651 m!6073232))

(assert (=> b!5039252 d!1621022))

(declare-fun e!3147415 () Bool)

(declare-fun tp!1410880 () Bool)

(declare-fun b!5039653 () Bool)

(declare-fun tp!1410879 () Bool)

(assert (=> b!5039653 (= e!3147415 (and (inv!77150 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) tp!1410880 (inv!77150 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))) tp!1410879))))

(declare-fun b!5039655 () Bool)

(declare-fun e!3147414 () Bool)

(declare-fun tp!1410881 () Bool)

(assert (=> b!5039655 (= e!3147414 tp!1410881)))

(declare-fun b!5039654 () Bool)

(assert (=> b!5039654 (= e!3147415 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198))))) e!3147414))))

(assert (=> b!5039308 (= tp!1410850 (and (inv!77150 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147415))))

(assert (= (and b!5039308 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 t!4198))))) b!5039653))

(assert (= b!5039654 b!5039655))

(assert (= (and b!5039308 ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 t!4198))))) b!5039654))

(declare-fun m!6073426 () Bool)

(assert (=> b!5039653 m!6073426))

(declare-fun m!6073428 () Bool)

(assert (=> b!5039653 m!6073428))

(declare-fun m!6073430 () Bool)

(assert (=> b!5039654 m!6073430))

(assert (=> b!5039308 m!6072940))

(declare-fun e!3147417 () Bool)

(declare-fun tp!1410882 () Bool)

(declare-fun b!5039656 () Bool)

(declare-fun tp!1410883 () Bool)

(assert (=> b!5039656 (= e!3147417 (and (inv!77150 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) tp!1410883 (inv!77150 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))) tp!1410882))))

(declare-fun b!5039658 () Bool)

(declare-fun e!3147416 () Bool)

(declare-fun tp!1410884 () Bool)

(assert (=> b!5039658 (= e!3147416 tp!1410884)))

(declare-fun b!5039657 () Bool)

(assert (=> b!5039657 (= e!3147417 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198))))) e!3147416))))

(assert (=> b!5039308 (= tp!1410849 (and (inv!77150 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147417))))

(assert (= (and b!5039308 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 t!4198))))) b!5039656))

(assert (= b!5039657 b!5039658))

(assert (= (and b!5039308 ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 t!4198))))) b!5039657))

(declare-fun m!6073432 () Bool)

(assert (=> b!5039656 m!6073432))

(declare-fun m!6073434 () Bool)

(assert (=> b!5039656 m!6073434))

(declare-fun m!6073436 () Bool)

(assert (=> b!5039657 m!6073436))

(assert (=> b!5039308 m!6072942))

(declare-fun b!5039659 () Bool)

(declare-fun e!3147418 () Bool)

(declare-fun tp!1410885 () Bool)

(assert (=> b!5039659 (= e!3147418 (and tp_is_empty!36785 tp!1410885))))

(assert (=> b!5039313 (= tp!1410854 e!3147418)))

(assert (= (and b!5039313 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198)))))) b!5039659))

(declare-fun b!5039660 () Bool)

(declare-fun e!3147419 () Bool)

(declare-fun tp!1410886 () Bool)

(assert (=> b!5039660 (= e!3147419 (and tp_is_empty!36785 tp!1410886))))

(assert (=> b!5039316 (= tp!1410857 e!3147419)))

(assert (= (and b!5039316 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198)))))) b!5039660))

(declare-fun tp!1410888 () Bool)

(declare-fun tp!1410887 () Bool)

(declare-fun e!3147421 () Bool)

(declare-fun b!5039661 () Bool)

(assert (=> b!5039661 (= e!3147421 (and (inv!77150 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) tp!1410888 (inv!77150 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))) tp!1410887))))

(declare-fun b!5039663 () Bool)

(declare-fun e!3147420 () Bool)

(declare-fun tp!1410889 () Bool)

(assert (=> b!5039663 (= e!3147420 tp!1410889)))

(declare-fun b!5039662 () Bool)

(assert (=> b!5039662 (= e!3147421 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198))))) e!3147420))))

(assert (=> b!5039317 (= tp!1410859 (and (inv!77150 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147421))))

(assert (= (and b!5039317 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 t!4198))))) b!5039661))

(assert (= b!5039662 b!5039663))

(assert (= (and b!5039317 ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 t!4198))))) b!5039662))

(declare-fun m!6073438 () Bool)

(assert (=> b!5039661 m!6073438))

(declare-fun m!6073440 () Bool)

(assert (=> b!5039661 m!6073440))

(declare-fun m!6073442 () Bool)

(assert (=> b!5039662 m!6073442))

(assert (=> b!5039317 m!6072958))

(declare-fun tp!1410891 () Bool)

(declare-fun e!3147423 () Bool)

(declare-fun tp!1410890 () Bool)

(declare-fun b!5039664 () Bool)

(assert (=> b!5039664 (= e!3147423 (and (inv!77150 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) tp!1410891 (inv!77150 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))) tp!1410890))))

(declare-fun b!5039666 () Bool)

(declare-fun e!3147422 () Bool)

(declare-fun tp!1410892 () Bool)

(assert (=> b!5039666 (= e!3147422 tp!1410892)))

(declare-fun b!5039665 () Bool)

(assert (=> b!5039665 (= e!3147423 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198))))) e!3147422))))

(assert (=> b!5039317 (= tp!1410858 (and (inv!77150 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147423))))

(assert (= (and b!5039317 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 t!4198))))) b!5039664))

(assert (= b!5039665 b!5039666))

(assert (= (and b!5039317 ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 t!4198))))) b!5039665))

(declare-fun m!6073444 () Bool)

(assert (=> b!5039664 m!6073444))

(declare-fun m!6073446 () Bool)

(assert (=> b!5039664 m!6073446))

(declare-fun m!6073448 () Bool)

(assert (=> b!5039665 m!6073448))

(assert (=> b!5039317 m!6072960))

(declare-fun b!5039667 () Bool)

(declare-fun e!3147424 () Bool)

(declare-fun tp!1410893 () Bool)

(assert (=> b!5039667 (= e!3147424 (and tp_is_empty!36785 tp!1410893))))

(assert (=> b!5039310 (= tp!1410851 e!3147424)))

(assert (= (and b!5039310 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198)))))) b!5039667))

(declare-fun b!5039668 () Bool)

(declare-fun e!3147425 () Bool)

(declare-fun tp!1410894 () Bool)

(assert (=> b!5039668 (= e!3147425 (and tp_is_empty!36785 tp!1410894))))

(assert (=> b!5039320 (= tp!1410861 e!3147425)))

(assert (= (and b!5039320 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198)))))) b!5039668))

(declare-fun b!5039669 () Bool)

(declare-fun e!3147426 () Bool)

(declare-fun tp!1410895 () Bool)

(assert (=> b!5039669 (= e!3147426 (and tp_is_empty!36785 tp!1410895))))

(assert (=> b!5039322 (= tp!1410863 e!3147426)))

(assert (= (and b!5039322 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198)))))) b!5039669))

(declare-fun e!3147428 () Bool)

(declare-fun b!5039670 () Bool)

(declare-fun tp!1410897 () Bool)

(declare-fun tp!1410896 () Bool)

(assert (=> b!5039670 (= e!3147428 (and (inv!77150 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) tp!1410897 (inv!77150 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))) tp!1410896))))

(declare-fun b!5039672 () Bool)

(declare-fun e!3147427 () Bool)

(declare-fun tp!1410898 () Bool)

(assert (=> b!5039672 (= e!3147427 tp!1410898)))

(declare-fun b!5039671 () Bool)

(assert (=> b!5039671 (= e!3147428 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198))))) e!3147427))))

(assert (=> b!5039311 (= tp!1410853 (and (inv!77150 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147428))))

(assert (= (and b!5039311 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 t!4198))))) b!5039670))

(assert (= b!5039671 b!5039672))

(assert (= (and b!5039311 ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 t!4198))))) b!5039671))

(declare-fun m!6073450 () Bool)

(assert (=> b!5039670 m!6073450))

(declare-fun m!6073452 () Bool)

(assert (=> b!5039670 m!6073452))

(declare-fun m!6073454 () Bool)

(assert (=> b!5039671 m!6073454))

(assert (=> b!5039311 m!6072946))

(declare-fun tp!1410899 () Bool)

(declare-fun b!5039673 () Bool)

(declare-fun e!3147430 () Bool)

(declare-fun tp!1410900 () Bool)

(assert (=> b!5039673 (= e!3147430 (and (inv!77150 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) tp!1410900 (inv!77150 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))) tp!1410899))))

(declare-fun b!5039675 () Bool)

(declare-fun e!3147429 () Bool)

(declare-fun tp!1410901 () Bool)

(assert (=> b!5039675 (= e!3147429 tp!1410901)))

(declare-fun b!5039674 () Bool)

(assert (=> b!5039674 (= e!3147430 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198))))) e!3147429))))

(assert (=> b!5039311 (= tp!1410852 (and (inv!77150 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147430))))

(assert (= (and b!5039311 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 t!4198))))) b!5039673))

(assert (= b!5039674 b!5039675))

(assert (= (and b!5039311 ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 t!4198))))) b!5039674))

(declare-fun m!6073456 () Bool)

(assert (=> b!5039673 m!6073456))

(declare-fun m!6073458 () Bool)

(assert (=> b!5039673 m!6073458))

(declare-fun m!6073460 () Bool)

(assert (=> b!5039674 m!6073460))

(assert (=> b!5039311 m!6072948))

(declare-fun tp!1410903 () Bool)

(declare-fun tp!1410902 () Bool)

(declare-fun e!3147432 () Bool)

(declare-fun b!5039676 () Bool)

(assert (=> b!5039676 (= e!3147432 (and (inv!77150 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) tp!1410903 (inv!77150 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))) tp!1410902))))

(declare-fun b!5039678 () Bool)

(declare-fun e!3147431 () Bool)

(declare-fun tp!1410904 () Bool)

(assert (=> b!5039678 (= e!3147431 tp!1410904)))

(declare-fun b!5039677 () Bool)

(assert (=> b!5039677 (= e!3147432 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198))))) e!3147431))))

(assert (=> b!5039314 (= tp!1410856 (and (inv!77150 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147432))))

(assert (= (and b!5039314 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 t!4198))))) b!5039676))

(assert (= b!5039677 b!5039678))

(assert (= (and b!5039314 ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 t!4198))))) b!5039677))

(declare-fun m!6073462 () Bool)

(assert (=> b!5039676 m!6073462))

(declare-fun m!6073464 () Bool)

(assert (=> b!5039676 m!6073464))

(declare-fun m!6073466 () Bool)

(assert (=> b!5039677 m!6073466))

(assert (=> b!5039314 m!6072952))

(declare-fun b!5039679 () Bool)

(declare-fun tp!1410905 () Bool)

(declare-fun e!3147434 () Bool)

(declare-fun tp!1410906 () Bool)

(assert (=> b!5039679 (= e!3147434 (and (inv!77150 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) tp!1410906 (inv!77150 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))) tp!1410905))))

(declare-fun b!5039681 () Bool)

(declare-fun e!3147433 () Bool)

(declare-fun tp!1410907 () Bool)

(assert (=> b!5039681 (= e!3147433 tp!1410907)))

(declare-fun b!5039680 () Bool)

(assert (=> b!5039680 (= e!3147434 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198))))) e!3147433))))

(assert (=> b!5039314 (= tp!1410855 (and (inv!77150 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147434))))

(assert (= (and b!5039314 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 t!4198))))) b!5039679))

(assert (= b!5039680 b!5039681))

(assert (= (and b!5039314 ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 t!4198))))) b!5039680))

(declare-fun m!6073468 () Bool)

(assert (=> b!5039679 m!6073468))

(declare-fun m!6073470 () Bool)

(assert (=> b!5039679 m!6073470))

(declare-fun m!6073472 () Bool)

(assert (=> b!5039680 m!6073472))

(assert (=> b!5039314 m!6072954))

(declare-fun b!5039682 () Bool)

(declare-fun e!3147435 () Bool)

(declare-fun tp!1410908 () Bool)

(assert (=> b!5039682 (= e!3147435 (and tp_is_empty!36785 tp!1410908))))

(assert (=> b!5039319 (= tp!1410860 e!3147435)))

(assert (= (and b!5039319 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198)))))) b!5039682))

(declare-fun b!5039683 () Bool)

(declare-fun e!3147436 () Bool)

(declare-fun tp!1410909 () Bool)

(assert (=> b!5039683 (= e!3147436 (and tp_is_empty!36785 tp!1410909))))

(assert (=> b!5039321 (= tp!1410862 e!3147436)))

(assert (= (and b!5039321 ((_ is Cons!58300) (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198)))))) b!5039683))

(check-sat (not b!5039580) (not b!5039617) (not b!5039543) (not b!5039676) (not b!5039478) (not b!5039648) (not b!5039516) (not b!5039677) (not b!5039630) (not d!1620950) (not b!5039538) (not b!5039602) (not b!5039493) (not b!5039531) (not b!5039480) (not b!5039503) (not b!5039559) (not b!5039621) (not b!5039483) (not b!5039548) (not b!5039616) (not b!5039632) (not b!5039647) (not b!5039657) (not d!1620896) (not b!5039671) (not d!1620908) (not b!5039529) (not b!5039582) (not b!5039532) (not b!5039507) (not b!5039658) (not b!5039665) (not b!5039606) (not b!5039317) (not d!1621006) (not d!1620998) (not b!5039661) (not d!1620984) (not b!5039515) (not b!5039666) (not d!1620996) (not b!5039673) (not b!5039680) (not b!5039551) (not d!1621008) (not b!5039611) (not b!5039526) (not b!5039683) (not b!5039311) (not b!5039590) (not b!5039490) (not b!5039656) (not b!5039588) (not b!5039667) (not b!5039678) (not b!5039553) (not b!5039481) (not b!5039561) (not b!5039653) (not b!5039592) (not b!5039668) (not b!5039619) (not b!5039603) (not b!5039533) (not b!5039517) tp_is_empty!36785 (not b!5039610) (not d!1620904) (not b!5039672) (not d!1620974) (not b!5039622) (not b!5039540) (not b!5039634) (not b!5039586) (not d!1620920) (not b!5039542) (not d!1620902) (not b!5039664) (not b!5039675) (not b!5039613) (not b!5039614) (not b!5039562) (not d!1621016) (not b!5039535) (not b!5039594) (not b!5039475) (not d!1620930) (not b!5039670) (not b!5039522) (not d!1620932) (not d!1620914) (not b!5039520) (not b!5039626) (not b!5039534) (not b!5039576) (not d!1621018) (not b!5039497) (not bm!351392) (not b!5039473) (not b!5039652) (not b!5039624) (not b!5039598) (not b!5039620) (not d!1620886) (not b!5039558) (not b!5039681) (not b!5039608) (not b!5039477) (not d!1620866) (not b!5039642) (not b!5039660) (not b!5039669) (not b!5039654) (not b!5039572) (not b!5039566) (not d!1620966) (not b!5039638) (not b!5039600) (not b!5039495) (not d!1620938) (not b!5039536) (not b!5039524) (not b!5039604) (not b!5039564) (not b!5039618) (not d!1620868) (not b!5039491) (not b!5039571) (not b!5039651) (not b!5039482) (not b!5039523) (not b!5039577) (not b!5039682) (not b!5039599) (not b!5039521) (not d!1620926) (not b!5039584) (not b!5039601) (not b!5039674) (not d!1621014) (not d!1620892) (not b!5039639) (not b!5039488) (not d!1620910) (not b!5039519) (not b!5039596) (not b!5039662) (not b!5039635) (not b!5039546) (not d!1620860) (not d!1620918) (not d!1620898) (not b!5039659) (not d!1620976) (not b!5039314) (not b!5039567) (not b!5039575) (not b!5039679) (not b!5039643) (not b!5039655) (not b!5039505) (not b!5039627) (not b!5039308) (not b!5039555) (not b!5039663) (not b!5039486))
(check-sat)
(get-model)

(assert (=> b!5039308 d!1620862))

(assert (=> b!5039308 d!1620864))

(declare-fun d!1621188 () Bool)

(declare-fun lt!2084169 () Int)

(assert (=> d!1621188 (>= lt!2084169 0)))

(declare-fun e!3147549 () Int)

(assert (=> d!1621188 (= lt!2084169 e!3147549)))

(declare-fun c!863450 () Bool)

(assert (=> d!1621188 (= c!863450 ((_ is Nil!58300) (list!18910 (xs!18838 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621188 (= (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 t!4198))))) lt!2084169)))

(declare-fun b!5039895 () Bool)

(assert (=> b!5039895 (= e!3147549 0)))

(declare-fun b!5039896 () Bool)

(assert (=> b!5039896 (= e!3147549 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (right!43027 (right!43027 t!4198))))))))))

(assert (= (and d!1621188 c!863450) b!5039895))

(assert (= (and d!1621188 (not c!863450)) b!5039896))

(declare-fun m!6073820 () Bool)

(assert (=> b!5039896 m!6073820))

(assert (=> d!1620910 d!1621188))

(declare-fun d!1621190 () Bool)

(assert (=> d!1621190 (= (list!18910 (xs!18838 (right!43027 (right!43027 t!4198)))) (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1620910 d!1621190))

(declare-fun d!1621192 () Bool)

(declare-fun e!3147551 () Bool)

(assert (=> d!1621192 e!3147551))

(declare-fun res!2147285 () Bool)

(assert (=> d!1621192 (=> (not res!2147285) (not e!3147551))))

(declare-fun lt!2084170 () List!58424)

(assert (=> d!1621192 (= res!2147285 (= (content!10352 lt!2084170) ((_ map or) (content!10352 (_1!34920 lt!2084106)) (content!10352 (_2!34920 lt!2084106)))))))

(declare-fun e!3147550 () List!58424)

(assert (=> d!1621192 (= lt!2084170 e!3147550)))

(declare-fun c!863451 () Bool)

(assert (=> d!1621192 (= c!863451 ((_ is Nil!58300) (_1!34920 lt!2084106)))))

(assert (=> d!1621192 (= (++!12724 (_1!34920 lt!2084106) (_2!34920 lt!2084106)) lt!2084170)))

(declare-fun b!5039899 () Bool)

(declare-fun res!2147284 () Bool)

(assert (=> b!5039899 (=> (not res!2147284) (not e!3147551))))

(assert (=> b!5039899 (= res!2147284 (= (size!38898 lt!2084170) (+ (size!38898 (_1!34920 lt!2084106)) (size!38898 (_2!34920 lt!2084106)))))))

(declare-fun b!5039897 () Bool)

(assert (=> b!5039897 (= e!3147550 (_2!34920 lt!2084106))))

(declare-fun b!5039898 () Bool)

(assert (=> b!5039898 (= e!3147550 (Cons!58300 (h!64748 (_1!34920 lt!2084106)) (++!12724 (t!370961 (_1!34920 lt!2084106)) (_2!34920 lt!2084106))))))

(declare-fun b!5039900 () Bool)

(assert (=> b!5039900 (= e!3147551 (or (not (= (_2!34920 lt!2084106) Nil!58300)) (= lt!2084170 (_1!34920 lt!2084106))))))

(assert (= (and d!1621192 c!863451) b!5039897))

(assert (= (and d!1621192 (not c!863451)) b!5039898))

(assert (= (and d!1621192 res!2147285) b!5039899))

(assert (= (and b!5039899 res!2147284) b!5039900))

(declare-fun m!6073822 () Bool)

(assert (=> d!1621192 m!6073822))

(declare-fun m!6073824 () Bool)

(assert (=> d!1621192 m!6073824))

(declare-fun m!6073826 () Bool)

(assert (=> d!1621192 m!6073826))

(declare-fun m!6073828 () Bool)

(assert (=> b!5039899 m!6073828))

(declare-fun m!6073830 () Bool)

(assert (=> b!5039899 m!6073830))

(declare-fun m!6073832 () Bool)

(assert (=> b!5039899 m!6073832))

(declare-fun m!6073834 () Bool)

(assert (=> b!5039898 m!6073834))

(assert (=> d!1620908 d!1621192))

(declare-fun d!1621194 () Bool)

(declare-fun res!2147286 () Bool)

(declare-fun e!3147552 () Bool)

(assert (=> d!1621194 (=> (not res!2147286) (not e!3147552))))

(assert (=> d!1621194 (= res!2147286 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198)))))) 512))))

(assert (=> d!1621194 (= (inv!77153 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147552)))

(declare-fun b!5039901 () Bool)

(declare-fun res!2147287 () Bool)

(assert (=> b!5039901 (=> (not res!2147287) (not e!3147552))))

(assert (=> b!5039901 (= res!2147287 (= (csize!31255 (right!43027 (left!42697 (right!43027 t!4198)))) (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198))))))))))

(declare-fun b!5039902 () Bool)

(assert (=> b!5039902 (= e!3147552 (and (> (csize!31255 (right!43027 (left!42697 (right!43027 t!4198)))) 0) (<= (csize!31255 (right!43027 (left!42697 (right!43027 t!4198)))) 512)))))

(assert (= (and d!1621194 res!2147286) b!5039901))

(assert (= (and b!5039901 res!2147287) b!5039902))

(declare-fun m!6073836 () Bool)

(assert (=> d!1621194 m!6073836))

(assert (=> d!1621194 m!6073836))

(declare-fun m!6073838 () Bool)

(assert (=> d!1621194 m!6073838))

(assert (=> b!5039901 m!6073836))

(assert (=> b!5039901 m!6073836))

(assert (=> b!5039901 m!6073838))

(assert (=> b!5039480 d!1621194))

(declare-fun d!1621196 () Bool)

(declare-fun lt!2084171 () Int)

(assert (=> d!1621196 (>= lt!2084171 0)))

(declare-fun e!3147553 () Int)

(assert (=> d!1621196 (= lt!2084171 e!3147553)))

(declare-fun c!863452 () Bool)

(assert (=> d!1621196 (= c!863452 ((_ is Nil!58300) (list!18909 (right!43027 (left!42697 t!4198)))))))

(assert (=> d!1621196 (= (size!38898 (list!18909 (right!43027 (left!42697 t!4198)))) lt!2084171)))

(declare-fun b!5039903 () Bool)

(assert (=> b!5039903 (= e!3147553 0)))

(declare-fun b!5039904 () Bool)

(assert (=> b!5039904 (= e!3147553 (+ 1 (size!38898 (t!370961 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(assert (= (and d!1621196 c!863452) b!5039903))

(assert (= (and d!1621196 (not c!863452)) b!5039904))

(declare-fun m!6073840 () Bool)

(assert (=> b!5039904 m!6073840))

(assert (=> d!1620998 d!1621196))

(assert (=> d!1620998 d!1620942))

(declare-fun d!1621198 () Bool)

(declare-fun res!2147288 () Bool)

(declare-fun e!3147554 () Bool)

(assert (=> d!1621198 (=> (not res!2147288) (not e!3147554))))

(assert (=> d!1621198 (= res!2147288 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198)))))) 512))))

(assert (=> d!1621198 (= (inv!77153 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147554)))

(declare-fun b!5039905 () Bool)

(declare-fun res!2147289 () Bool)

(assert (=> b!5039905 (=> (not res!2147289) (not e!3147554))))

(assert (=> b!5039905 (= res!2147289 (= (csize!31255 (left!42697 (left!42697 (left!42697 t!4198)))) (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198))))))))))

(declare-fun b!5039906 () Bool)

(assert (=> b!5039906 (= e!3147554 (and (> (csize!31255 (left!42697 (left!42697 (left!42697 t!4198)))) 0) (<= (csize!31255 (left!42697 (left!42697 (left!42697 t!4198)))) 512)))))

(assert (= (and d!1621198 res!2147288) b!5039905))

(assert (= (and b!5039905 res!2147289) b!5039906))

(declare-fun m!6073842 () Bool)

(assert (=> d!1621198 m!6073842))

(assert (=> d!1621198 m!6073842))

(declare-fun m!6073844 () Bool)

(assert (=> d!1621198 m!6073844))

(assert (=> b!5039905 m!6073842))

(assert (=> b!5039905 m!6073842))

(assert (=> b!5039905 m!6073844))

(assert (=> b!5039561 d!1621198))

(declare-fun d!1621200 () Bool)

(declare-fun lt!2084172 () Bool)

(assert (=> d!1621200 (= lt!2084172 (isEmpty!31531 (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621200 (= lt!2084172 (= (size!38897 (right!43027 (left!42697 (left!42697 t!4198)))) 0))))

(assert (=> d!1621200 (= (isEmpty!31530 (right!43027 (left!42697 (left!42697 t!4198)))) lt!2084172)))

(declare-fun bs!1188880 () Bool)

(assert (= bs!1188880 d!1621200))

(assert (=> bs!1188880 m!6073288))

(assert (=> bs!1188880 m!6073288))

(declare-fun m!6073846 () Bool)

(assert (=> bs!1188880 m!6073846))

(assert (=> bs!1188880 m!6073210))

(assert (=> b!5039621 d!1621200))

(declare-fun d!1621202 () Bool)

(declare-fun lt!2084173 () Int)

(assert (=> d!1621202 (>= lt!2084173 0)))

(declare-fun e!3147555 () Int)

(assert (=> d!1621202 (= lt!2084173 e!3147555)))

(declare-fun c!863453 () Bool)

(assert (=> d!1621202 (= c!863453 ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1621202 (= (size!38898 (list!18909 (left!42697 (left!42697 t!4198)))) lt!2084173)))

(declare-fun b!5039907 () Bool)

(assert (=> b!5039907 (= e!3147555 0)))

(declare-fun b!5039908 () Bool)

(assert (=> b!5039908 (= e!3147555 (+ 1 (size!38898 (t!370961 (list!18909 (left!42697 (left!42697 t!4198)))))))))

(assert (= (and d!1621202 c!863453) b!5039907))

(assert (= (and d!1621202 (not c!863453)) b!5039908))

(declare-fun m!6073848 () Bool)

(assert (=> b!5039908 m!6073848))

(assert (=> d!1620996 d!1621202))

(assert (=> d!1620996 d!1620940))

(declare-fun d!1621204 () Bool)

(declare-fun c!863454 () Bool)

(assert (=> d!1621204 (= c!863454 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun e!3147556 () Bool)

(assert (=> d!1621204 (= (inv!77150 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) e!3147556)))

(declare-fun b!5039909 () Bool)

(assert (=> b!5039909 (= e!3147556 (inv!77152 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039910 () Bool)

(declare-fun e!3147557 () Bool)

(assert (=> b!5039910 (= e!3147556 e!3147557)))

(declare-fun res!2147290 () Bool)

(assert (=> b!5039910 (= res!2147290 (not ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5039910 (=> res!2147290 e!3147557)))

(declare-fun b!5039911 () Bool)

(assert (=> b!5039911 (= e!3147557 (inv!77153 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621204 c!863454) b!5039909))

(assert (= (and d!1621204 (not c!863454)) b!5039910))

(assert (= (and b!5039910 (not res!2147290)) b!5039911))

(declare-fun m!6073850 () Bool)

(assert (=> b!5039909 m!6073850))

(declare-fun m!6073852 () Bool)

(assert (=> b!5039911 m!6073852))

(assert (=> b!5039664 d!1621204))

(declare-fun d!1621206 () Bool)

(declare-fun c!863455 () Bool)

(assert (=> d!1621206 (= c!863455 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun e!3147558 () Bool)

(assert (=> d!1621206 (= (inv!77150 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))) e!3147558)))

(declare-fun b!5039912 () Bool)

(assert (=> b!5039912 (= e!3147558 (inv!77152 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039913 () Bool)

(declare-fun e!3147559 () Bool)

(assert (=> b!5039913 (= e!3147558 e!3147559)))

(declare-fun res!2147291 () Bool)

(assert (=> b!5039913 (= res!2147291 (not ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5039913 (=> res!2147291 e!3147559)))

(declare-fun b!5039914 () Bool)

(assert (=> b!5039914 (= e!3147559 (inv!77153 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621206 c!863455) b!5039912))

(assert (= (and d!1621206 (not c!863455)) b!5039913))

(assert (= (and b!5039913 (not res!2147291)) b!5039914))

(declare-fun m!6073854 () Bool)

(assert (=> b!5039912 m!6073854))

(declare-fun m!6073856 () Bool)

(assert (=> b!5039914 m!6073856))

(assert (=> b!5039664 d!1621206))

(declare-fun d!1621208 () Bool)

(declare-fun res!2147292 () Bool)

(declare-fun e!3147560 () Bool)

(assert (=> d!1621208 (=> (not res!2147292) (not e!3147560))))

(assert (=> d!1621208 (= res!2147292 (= (csize!31254 (left!42697 (right!43027 (right!43027 t!4198)))) (+ (size!38897 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) (size!38897 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))))

(assert (=> d!1621208 (= (inv!77152 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147560)))

(declare-fun b!5039915 () Bool)

(declare-fun res!2147293 () Bool)

(assert (=> b!5039915 (=> (not res!2147293) (not e!3147560))))

(assert (=> b!5039915 (= res!2147293 (and (not (= (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))) Empty!15512)) (not (= (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))) Empty!15512))))))

(declare-fun b!5039916 () Bool)

(declare-fun res!2147294 () Bool)

(assert (=> b!5039916 (=> (not res!2147294) (not e!3147560))))

(assert (=> b!5039916 (= res!2147294 (= (cheight!15723 (left!42697 (right!43027 (right!43027 t!4198)))) (+ (max!0 (height!2091 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) 1)))))

(declare-fun b!5039917 () Bool)

(assert (=> b!5039917 (= e!3147560 (<= 0 (cheight!15723 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621208 res!2147292) b!5039915))

(assert (= (and b!5039915 res!2147293) b!5039916))

(assert (= (and b!5039916 res!2147294) b!5039917))

(declare-fun m!6073858 () Bool)

(assert (=> d!1621208 m!6073858))

(declare-fun m!6073860 () Bool)

(assert (=> d!1621208 m!6073860))

(declare-fun m!6073862 () Bool)

(assert (=> b!5039916 m!6073862))

(declare-fun m!6073864 () Bool)

(assert (=> b!5039916 m!6073864))

(assert (=> b!5039916 m!6073862))

(assert (=> b!5039916 m!6073864))

(declare-fun m!6073866 () Bool)

(assert (=> b!5039916 m!6073866))

(assert (=> b!5039611 d!1621208))

(declare-fun d!1621210 () Bool)

(declare-fun c!863456 () Bool)

(assert (=> d!1621210 (= c!863456 ((_ is Nil!58300) (t!370961 (list!18909 (left!42697 t!4198)))))))

(declare-fun e!3147561 () (InoxSet T!104180))

(assert (=> d!1621210 (= (content!10352 (t!370961 (list!18909 (left!42697 t!4198)))) e!3147561)))

(declare-fun b!5039918 () Bool)

(assert (=> b!5039918 (= e!3147561 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039919 () Bool)

(assert (=> b!5039919 (= e!3147561 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 (list!18909 (left!42697 t!4198)))) true) (content!10352 (t!370961 (t!370961 (list!18909 (left!42697 t!4198)))))))))

(assert (= (and d!1621210 c!863456) b!5039918))

(assert (= (and d!1621210 (not c!863456)) b!5039919))

(declare-fun m!6073868 () Bool)

(assert (=> b!5039919 m!6073868))

(declare-fun m!6073870 () Bool)

(assert (=> b!5039919 m!6073870))

(assert (=> b!5039608 d!1621210))

(declare-fun d!1621212 () Bool)

(declare-fun lt!2084174 () Int)

(assert (=> d!1621212 (>= lt!2084174 0)))

(declare-fun e!3147562 () Int)

(assert (=> d!1621212 (= lt!2084174 e!3147562)))

(declare-fun c!863457 () Bool)

(assert (=> d!1621212 (= c!863457 ((_ is Nil!58300) (t!370961 (list!18909 (right!43027 t!4198)))))))

(assert (=> d!1621212 (= (size!38898 (t!370961 (list!18909 (right!43027 t!4198)))) lt!2084174)))

(declare-fun b!5039920 () Bool)

(assert (=> b!5039920 (= e!3147562 0)))

(declare-fun b!5039921 () Bool)

(assert (=> b!5039921 (= e!3147562 (+ 1 (size!38898 (t!370961 (t!370961 (list!18909 (right!43027 t!4198)))))))))

(assert (= (and d!1621212 c!863457) b!5039920))

(assert (= (and d!1621212 (not c!863457)) b!5039921))

(declare-fun m!6073872 () Bool)

(assert (=> b!5039921 m!6073872))

(assert (=> b!5039598 d!1621212))

(declare-fun d!1621214 () Bool)

(declare-fun c!863458 () Bool)

(assert (=> d!1621214 (= c!863458 ((_ is Nil!58300) (t!370961 lt!2084073)))))

(declare-fun e!3147563 () (InoxSet T!104180))

(assert (=> d!1621214 (= (content!10352 (t!370961 lt!2084073)) e!3147563)))

(declare-fun b!5039922 () Bool)

(assert (=> b!5039922 (= e!3147563 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039923 () Bool)

(assert (=> b!5039923 (= e!3147563 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 lt!2084073)) true) (content!10352 (t!370961 (t!370961 lt!2084073)))))))

(assert (= (and d!1621214 c!863458) b!5039922))

(assert (= (and d!1621214 (not c!863458)) b!5039923))

(declare-fun m!6073874 () Bool)

(assert (=> b!5039923 m!6073874))

(declare-fun m!6073876 () Bool)

(assert (=> b!5039923 m!6073876))

(assert (=> b!5039503 d!1621214))

(declare-fun d!1621216 () Bool)

(declare-fun lt!2084175 () Int)

(assert (=> d!1621216 (>= lt!2084175 0)))

(declare-fun e!3147564 () Int)

(assert (=> d!1621216 (= lt!2084175 e!3147564)))

(declare-fun c!863459 () Bool)

(assert (=> d!1621216 (= c!863459 ((_ is Nil!58300) (t!370961 (list!18910 (xs!18838 (right!43027 t!4198))))))))

(assert (=> d!1621216 (= (size!38898 (t!370961 (list!18910 (xs!18838 (right!43027 t!4198))))) lt!2084175)))

(declare-fun b!5039924 () Bool)

(assert (=> b!5039924 (= e!3147564 0)))

(declare-fun b!5039925 () Bool)

(assert (=> b!5039925 (= e!3147564 (+ 1 (size!38898 (t!370961 (t!370961 (list!18910 (xs!18838 (right!43027 t!4198))))))))))

(assert (= (and d!1621216 c!863459) b!5039924))

(assert (= (and d!1621216 (not c!863459)) b!5039925))

(declare-fun m!6073878 () Bool)

(assert (=> b!5039925 m!6073878))

(assert (=> b!5039497 d!1621216))

(declare-fun b!5039926 () Bool)

(declare-fun e!3147567 () Int)

(declare-fun call!351399 () Int)

(assert (=> b!5039926 (= e!3147567 (- call!351399 (- (- i!618 1) 1)))))

(declare-fun b!5039927 () Bool)

(declare-fun e!3147566 () Int)

(assert (=> b!5039927 (= e!3147566 call!351399)))

(declare-fun b!5039928 () Bool)

(declare-fun e!3147569 () List!58424)

(assert (=> b!5039928 (= e!3147569 (t!370961 (t!370961 lt!2084040)))))

(declare-fun b!5039929 () Bool)

(declare-fun e!3147565 () List!58424)

(assert (=> b!5039929 (= e!3147565 Nil!58300)))

(declare-fun d!1621218 () Bool)

(declare-fun e!3147568 () Bool)

(assert (=> d!1621218 e!3147568))

(declare-fun res!2147295 () Bool)

(assert (=> d!1621218 (=> (not res!2147295) (not e!3147568))))

(declare-fun lt!2084176 () List!58424)

(assert (=> d!1621218 (= res!2147295 (= ((_ map implies) (content!10352 lt!2084176) (content!10352 (t!370961 (t!370961 lt!2084040)))) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1621218 (= lt!2084176 e!3147565)))

(declare-fun c!863461 () Bool)

(assert (=> d!1621218 (= c!863461 ((_ is Nil!58300) (t!370961 (t!370961 lt!2084040))))))

(assert (=> d!1621218 (= (drop!2629 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1)) lt!2084176)))

(declare-fun b!5039930 () Bool)

(assert (=> b!5039930 (= e!3147566 e!3147567)))

(declare-fun c!863460 () Bool)

(assert (=> b!5039930 (= c!863460 (>= (- (- i!618 1) 1) call!351399))))

(declare-fun bm!351394 () Bool)

(assert (=> bm!351394 (= call!351399 (size!38898 (t!370961 (t!370961 lt!2084040))))))

(declare-fun b!5039931 () Bool)

(assert (=> b!5039931 (= e!3147565 e!3147569)))

(declare-fun c!863463 () Bool)

(assert (=> b!5039931 (= c!863463 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5039932 () Bool)

(assert (=> b!5039932 (= e!3147567 0)))

(declare-fun b!5039933 () Bool)

(assert (=> b!5039933 (= e!3147569 (drop!2629 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1)))))

(declare-fun b!5039934 () Bool)

(assert (=> b!5039934 (= e!3147568 (= (size!38898 lt!2084176) e!3147566))))

(declare-fun c!863462 () Bool)

(assert (=> b!5039934 (= c!863462 (<= (- (- i!618 1) 1) 0))))

(assert (= (and d!1621218 c!863461) b!5039929))

(assert (= (and d!1621218 (not c!863461)) b!5039931))

(assert (= (and b!5039931 c!863463) b!5039928))

(assert (= (and b!5039931 (not c!863463)) b!5039933))

(assert (= (and d!1621218 res!2147295) b!5039934))

(assert (= (and b!5039934 c!863462) b!5039927))

(assert (= (and b!5039934 (not c!863462)) b!5039930))

(assert (= (and b!5039930 c!863460) b!5039932))

(assert (= (and b!5039930 (not c!863460)) b!5039926))

(assert (= (or b!5039927 b!5039930 b!5039926) bm!351394))

(declare-fun m!6073880 () Bool)

(assert (=> d!1621218 m!6073880))

(declare-fun m!6073882 () Bool)

(assert (=> d!1621218 m!6073882))

(declare-fun m!6073884 () Bool)

(assert (=> bm!351394 m!6073884))

(declare-fun m!6073886 () Bool)

(assert (=> b!5039933 m!6073886))

(declare-fun m!6073888 () Bool)

(assert (=> b!5039934 m!6073888))

(assert (=> b!5039540 d!1621218))

(declare-fun d!1621220 () Bool)

(assert (=> d!1621220 (= (max!0 (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198))))) (ite (< (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 t!4198)))) (height!2091 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> b!5039526 d!1621220))

(declare-fun d!1621222 () Bool)

(assert (=> d!1621222 (= (height!2091 (left!42697 (left!42697 (right!43027 t!4198)))) (ite ((_ is Empty!15512) (left!42697 (left!42697 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 t!4198)))) 1 (cheight!15723 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5039526 d!1621222))

(declare-fun d!1621224 () Bool)

(assert (=> d!1621224 (= (height!2091 (right!43027 (left!42697 (right!43027 t!4198)))) (ite ((_ is Empty!15512) (right!43027 (left!42697 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 t!4198)))) 1 (cheight!15723 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5039526 d!1621224))

(declare-fun d!1621226 () Bool)

(assert (=> d!1621226 (= (inv!77151 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198)))))) 2147483647))))

(declare-fun bs!1188881 () Bool)

(assert (= bs!1188881 d!1621226))

(declare-fun m!6073890 () Bool)

(assert (=> bs!1188881 m!6073890))

(assert (=> b!5039674 d!1621226))

(declare-fun b!5039935 () Bool)

(declare-fun res!2147296 () Bool)

(declare-fun e!3147571 () Bool)

(assert (=> b!5039935 (=> (not res!2147296) (not e!3147571))))

(assert (=> b!5039935 (= res!2147296 (isBalanced!4374 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039936 () Bool)

(declare-fun res!2147301 () Bool)

(assert (=> b!5039936 (=> (not res!2147301) (not e!3147571))))

(assert (=> b!5039936 (= res!2147301 (not (isEmpty!31530 (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5039937 () Bool)

(declare-fun res!2147300 () Bool)

(assert (=> b!5039937 (=> (not res!2147300) (not e!3147571))))

(assert (=> b!5039937 (= res!2147300 (isBalanced!4374 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039938 () Bool)

(declare-fun e!3147570 () Bool)

(assert (=> b!5039938 (= e!3147570 e!3147571)))

(declare-fun res!2147298 () Bool)

(assert (=> b!5039938 (=> (not res!2147298) (not e!3147571))))

(assert (=> b!5039938 (= res!2147298 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))))

(declare-fun b!5039939 () Bool)

(assert (=> b!5039939 (= e!3147571 (not (isEmpty!31530 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5039940 () Bool)

(declare-fun res!2147297 () Bool)

(assert (=> b!5039940 (=> (not res!2147297) (not e!3147571))))

(assert (=> b!5039940 (= res!2147297 (<= (- (height!2091 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) 1))))

(declare-fun d!1621228 () Bool)

(declare-fun res!2147299 () Bool)

(assert (=> d!1621228 (=> res!2147299 e!3147570)))

(assert (=> d!1621228 (= res!2147299 (not ((_ is Node!15512) (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621228 (= (isBalanced!4374 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147570)))

(assert (= (and d!1621228 (not res!2147299)) b!5039938))

(assert (= (and b!5039938 res!2147298) b!5039940))

(assert (= (and b!5039940 res!2147297) b!5039935))

(assert (= (and b!5039935 res!2147296) b!5039937))

(assert (= (and b!5039937 res!2147300) b!5039936))

(assert (= (and b!5039936 res!2147301) b!5039939))

(declare-fun m!6073892 () Bool)

(assert (=> b!5039936 m!6073892))

(declare-fun m!6073894 () Bool)

(assert (=> b!5039940 m!6073894))

(declare-fun m!6073896 () Bool)

(assert (=> b!5039940 m!6073896))

(declare-fun m!6073898 () Bool)

(assert (=> b!5039935 m!6073898))

(declare-fun m!6073900 () Bool)

(assert (=> b!5039939 m!6073900))

(declare-fun m!6073902 () Bool)

(assert (=> b!5039937 m!6073902))

(assert (=> b!5039938 m!6073894))

(assert (=> b!5039938 m!6073896))

(assert (=> b!5039617 d!1621228))

(declare-fun d!1621230 () Bool)

(declare-fun lt!2084177 () Bool)

(assert (=> d!1621230 (= lt!2084177 (isEmpty!31531 (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621230 (= lt!2084177 (= (size!38897 (right!43027 (right!43027 (right!43027 t!4198)))) 0))))

(assert (=> d!1621230 (= (isEmpty!31530 (right!43027 (right!43027 (right!43027 t!4198)))) lt!2084177)))

(declare-fun bs!1188882 () Bool)

(assert (= bs!1188882 d!1621230))

(assert (=> bs!1188882 m!6073422))

(assert (=> bs!1188882 m!6073422))

(declare-fun m!6073904 () Bool)

(assert (=> bs!1188882 m!6073904))

(assert (=> bs!1188882 m!6073242))

(assert (=> b!5039523 d!1621230))

(declare-fun d!1621232 () Bool)

(declare-fun res!2147302 () Bool)

(declare-fun e!3147572 () Bool)

(assert (=> d!1621232 (=> (not res!2147302) (not e!3147572))))

(assert (=> d!1621232 (= res!2147302 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198)))))) 512))))

(assert (=> d!1621232 (= (inv!77153 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147572)))

(declare-fun b!5039941 () Bool)

(declare-fun res!2147303 () Bool)

(assert (=> b!5039941 (=> (not res!2147303) (not e!3147572))))

(assert (=> b!5039941 (= res!2147303 (= (csize!31255 (right!43027 (left!42697 (left!42697 t!4198)))) (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198))))))))))

(declare-fun b!5039942 () Bool)

(assert (=> b!5039942 (= e!3147572 (and (> (csize!31255 (right!43027 (left!42697 (left!42697 t!4198)))) 0) (<= (csize!31255 (right!43027 (left!42697 (left!42697 t!4198)))) 512)))))

(assert (= (and d!1621232 res!2147302) b!5039941))

(assert (= (and b!5039941 res!2147303) b!5039942))

(declare-fun m!6073906 () Bool)

(assert (=> d!1621232 m!6073906))

(assert (=> d!1621232 m!6073906))

(declare-fun m!6073908 () Bool)

(assert (=> d!1621232 m!6073908))

(assert (=> b!5039941 m!6073906))

(assert (=> b!5039941 m!6073906))

(assert (=> b!5039941 m!6073908))

(assert (=> b!5039564 d!1621232))

(declare-fun b!5039943 () Bool)

(declare-fun res!2147304 () Bool)

(declare-fun e!3147574 () Bool)

(assert (=> b!5039943 (=> (not res!2147304) (not e!3147574))))

(assert (=> b!5039943 (= res!2147304 (isBalanced!4374 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039944 () Bool)

(declare-fun res!2147309 () Bool)

(assert (=> b!5039944 (=> (not res!2147309) (not e!3147574))))

(assert (=> b!5039944 (= res!2147309 (not (isEmpty!31530 (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5039945 () Bool)

(declare-fun res!2147308 () Bool)

(assert (=> b!5039945 (=> (not res!2147308) (not e!3147574))))

(assert (=> b!5039945 (= res!2147308 (isBalanced!4374 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5039946 () Bool)

(declare-fun e!3147573 () Bool)

(assert (=> b!5039946 (= e!3147573 e!3147574)))

(declare-fun res!2147306 () Bool)

(assert (=> b!5039946 (=> (not res!2147306) (not e!3147574))))

(assert (=> b!5039946 (= res!2147306 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))))

(declare-fun b!5039947 () Bool)

(assert (=> b!5039947 (= e!3147574 (not (isEmpty!31530 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5039948 () Bool)

(declare-fun res!2147305 () Bool)

(assert (=> b!5039948 (=> (not res!2147305) (not e!3147574))))

(assert (=> b!5039948 (= res!2147305 (<= (- (height!2091 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) 1))))

(declare-fun d!1621234 () Bool)

(declare-fun res!2147307 () Bool)

(assert (=> d!1621234 (=> res!2147307 e!3147573)))

(assert (=> d!1621234 (= res!2147307 (not ((_ is Node!15512) (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621234 (= (isBalanced!4374 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147573)))

(assert (= (and d!1621234 (not res!2147307)) b!5039946))

(assert (= (and b!5039946 res!2147306) b!5039948))

(assert (= (and b!5039948 res!2147305) b!5039943))

(assert (= (and b!5039943 res!2147304) b!5039945))

(assert (= (and b!5039945 res!2147308) b!5039944))

(assert (= (and b!5039944 res!2147309) b!5039947))

(declare-fun m!6073910 () Bool)

(assert (=> b!5039944 m!6073910))

(assert (=> b!5039948 m!6073862))

(assert (=> b!5039948 m!6073864))

(declare-fun m!6073912 () Bool)

(assert (=> b!5039943 m!6073912))

(declare-fun m!6073914 () Bool)

(assert (=> b!5039947 m!6073914))

(declare-fun m!6073916 () Bool)

(assert (=> b!5039945 m!6073916))

(assert (=> b!5039946 m!6073862))

(assert (=> b!5039946 m!6073864))

(assert (=> b!5039519 d!1621234))

(declare-fun d!1621236 () Bool)

(declare-fun res!2147310 () Bool)

(declare-fun e!3147575 () Bool)

(assert (=> d!1621236 (=> (not res!2147310) (not e!3147575))))

(assert (=> d!1621236 (= res!2147310 (= (csize!31254 (right!43027 (right!43027 (right!43027 t!4198)))) (+ (size!38897 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) (size!38897 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))))

(assert (=> d!1621236 (= (inv!77152 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147575)))

(declare-fun b!5039949 () Bool)

(declare-fun res!2147311 () Bool)

(assert (=> b!5039949 (=> (not res!2147311) (not e!3147575))))

(assert (=> b!5039949 (= res!2147311 (and (not (= (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))) Empty!15512)) (not (= (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))) Empty!15512))))))

(declare-fun b!5039950 () Bool)

(declare-fun res!2147312 () Bool)

(assert (=> b!5039950 (=> (not res!2147312) (not e!3147575))))

(assert (=> b!5039950 (= res!2147312 (= (cheight!15723 (right!43027 (right!43027 (right!43027 t!4198)))) (+ (max!0 (height!2091 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) 1)))))

(declare-fun b!5039951 () Bool)

(assert (=> b!5039951 (= e!3147575 (<= 0 (cheight!15723 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621236 res!2147310) b!5039949))

(assert (= (and b!5039949 res!2147311) b!5039950))

(assert (= (and b!5039950 res!2147312) b!5039951))

(declare-fun m!6073918 () Bool)

(assert (=> d!1621236 m!6073918))

(declare-fun m!6073920 () Bool)

(assert (=> d!1621236 m!6073920))

(declare-fun m!6073922 () Bool)

(assert (=> b!5039950 m!6073922))

(declare-fun m!6073924 () Bool)

(assert (=> b!5039950 m!6073924))

(assert (=> b!5039950 m!6073922))

(assert (=> b!5039950 m!6073924))

(declare-fun m!6073926 () Bool)

(assert (=> b!5039950 m!6073926))

(assert (=> b!5039614 d!1621236))

(declare-fun b!5039952 () Bool)

(declare-fun res!2147313 () Bool)

(declare-fun e!3147577 () Bool)

(assert (=> b!5039952 (=> (not res!2147313) (not e!3147577))))

(assert (=> b!5039952 (= res!2147313 (isBalanced!4374 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039953 () Bool)

(declare-fun res!2147318 () Bool)

(assert (=> b!5039953 (=> (not res!2147318) (not e!3147577))))

(assert (=> b!5039953 (= res!2147318 (not (isEmpty!31530 (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039954 () Bool)

(declare-fun res!2147317 () Bool)

(assert (=> b!5039954 (=> (not res!2147317) (not e!3147577))))

(assert (=> b!5039954 (= res!2147317 (isBalanced!4374 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039955 () Bool)

(declare-fun e!3147576 () Bool)

(assert (=> b!5039955 (= e!3147576 e!3147577)))

(declare-fun res!2147315 () Bool)

(assert (=> b!5039955 (=> (not res!2147315) (not e!3147577))))

(assert (=> b!5039955 (= res!2147315 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))))

(declare-fun b!5039956 () Bool)

(assert (=> b!5039956 (= e!3147577 (not (isEmpty!31530 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039957 () Bool)

(declare-fun res!2147314 () Bool)

(assert (=> b!5039957 (=> (not res!2147314) (not e!3147577))))

(assert (=> b!5039957 (= res!2147314 (<= (- (height!2091 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) 1))))

(declare-fun d!1621238 () Bool)

(declare-fun res!2147316 () Bool)

(assert (=> d!1621238 (=> res!2147316 e!3147576)))

(assert (=> d!1621238 (= res!2147316 (not ((_ is Node!15512) (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621238 (= (isBalanced!4374 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147576)))

(assert (= (and d!1621238 (not res!2147316)) b!5039955))

(assert (= (and b!5039955 res!2147315) b!5039957))

(assert (= (and b!5039957 res!2147314) b!5039952))

(assert (= (and b!5039952 res!2147313) b!5039954))

(assert (= (and b!5039954 res!2147317) b!5039953))

(assert (= (and b!5039953 res!2147318) b!5039956))

(declare-fun m!6073928 () Bool)

(assert (=> b!5039953 m!6073928))

(declare-fun m!6073930 () Bool)

(assert (=> b!5039957 m!6073930))

(declare-fun m!6073932 () Bool)

(assert (=> b!5039957 m!6073932))

(declare-fun m!6073934 () Bool)

(assert (=> b!5039952 m!6073934))

(declare-fun m!6073936 () Bool)

(assert (=> b!5039956 m!6073936))

(declare-fun m!6073938 () Bool)

(assert (=> b!5039954 m!6073938))

(assert (=> b!5039955 m!6073930))

(assert (=> b!5039955 m!6073932))

(assert (=> b!5039601 d!1621238))

(declare-fun d!1621240 () Bool)

(assert (=> d!1621240 (= (isEmpty!31531 (list!18909 (right!43027 (left!42697 t!4198)))) ((_ is Nil!58300) (list!18909 (right!43027 (left!42697 t!4198)))))))

(assert (=> d!1620976 d!1621240))

(assert (=> d!1620976 d!1620942))

(assert (=> d!1620976 d!1620998))

(declare-fun d!1621242 () Bool)

(declare-fun lt!2084178 () Int)

(assert (=> d!1621242 (>= lt!2084178 0)))

(declare-fun e!3147578 () Int)

(assert (=> d!1621242 (= lt!2084178 e!3147578)))

(declare-fun c!863464 () Bool)

(assert (=> d!1621242 (= c!863464 ((_ is Nil!58300) (t!370961 lt!2084040)))))

(assert (=> d!1621242 (= (size!38898 (t!370961 lt!2084040)) lt!2084178)))

(declare-fun b!5039958 () Bool)

(assert (=> b!5039958 (= e!3147578 0)))

(declare-fun b!5039959 () Bool)

(assert (=> b!5039959 (= e!3147578 (+ 1 (size!38898 (t!370961 (t!370961 lt!2084040)))))))

(assert (= (and d!1621242 c!863464) b!5039958))

(assert (= (and d!1621242 (not c!863464)) b!5039959))

(assert (=> b!5039959 m!6073884))

(assert (=> b!5039551 d!1621242))

(assert (=> b!5039314 d!1620934))

(assert (=> b!5039314 d!1620936))

(assert (=> b!5039534 d!1621222))

(assert (=> b!5039534 d!1621224))

(declare-fun d!1621244 () Bool)

(declare-fun lt!2084179 () Int)

(assert (=> d!1621244 (>= lt!2084179 0)))

(declare-fun e!3147579 () Int)

(assert (=> d!1621244 (= lt!2084179 e!3147579)))

(declare-fun c!863465 () Bool)

(assert (=> d!1621244 (= c!863465 ((_ is Nil!58300) (list!18910 (xs!18838 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621244 (= (size!38898 (list!18910 (xs!18838 (right!43027 (left!42697 t!4198))))) lt!2084179)))

(declare-fun b!5039960 () Bool)

(assert (=> b!5039960 (= e!3147579 0)))

(declare-fun b!5039961 () Bool)

(assert (=> b!5039961 (= e!3147579 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (right!43027 (left!42697 t!4198))))))))))

(assert (= (and d!1621244 c!863465) b!5039960))

(assert (= (and d!1621244 (not c!863465)) b!5039961))

(declare-fun m!6073940 () Bool)

(assert (=> b!5039961 m!6073940))

(assert (=> b!5039577 d!1621244))

(declare-fun d!1621246 () Bool)

(assert (=> d!1621246 (= (list!18910 (xs!18838 (right!43027 (left!42697 t!4198)))) (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198)))))))

(assert (=> b!5039577 d!1621246))

(declare-fun d!1621248 () Bool)

(declare-fun e!3147581 () Bool)

(assert (=> d!1621248 e!3147581))

(declare-fun res!2147320 () Bool)

(assert (=> d!1621248 (=> (not res!2147320) (not e!3147581))))

(declare-fun lt!2084180 () List!58424)

(assert (=> d!1621248 (= res!2147320 (= (content!10352 lt!2084180) ((_ map or) (content!10352 (t!370961 (_1!34920 lt!2084068))) (content!10352 (_2!34920 lt!2084068)))))))

(declare-fun e!3147580 () List!58424)

(assert (=> d!1621248 (= lt!2084180 e!3147580)))

(declare-fun c!863466 () Bool)

(assert (=> d!1621248 (= c!863466 ((_ is Nil!58300) (t!370961 (_1!34920 lt!2084068))))))

(assert (=> d!1621248 (= (++!12724 (t!370961 (_1!34920 lt!2084068)) (_2!34920 lt!2084068)) lt!2084180)))

(declare-fun b!5039964 () Bool)

(declare-fun res!2147319 () Bool)

(assert (=> b!5039964 (=> (not res!2147319) (not e!3147581))))

(assert (=> b!5039964 (= res!2147319 (= (size!38898 lt!2084180) (+ (size!38898 (t!370961 (_1!34920 lt!2084068))) (size!38898 (_2!34920 lt!2084068)))))))

(declare-fun b!5039962 () Bool)

(assert (=> b!5039962 (= e!3147580 (_2!34920 lt!2084068))))

(declare-fun b!5039963 () Bool)

(assert (=> b!5039963 (= e!3147580 (Cons!58300 (h!64748 (t!370961 (_1!34920 lt!2084068))) (++!12724 (t!370961 (t!370961 (_1!34920 lt!2084068))) (_2!34920 lt!2084068))))))

(declare-fun b!5039965 () Bool)

(assert (=> b!5039965 (= e!3147581 (or (not (= (_2!34920 lt!2084068) Nil!58300)) (= lt!2084180 (t!370961 (_1!34920 lt!2084068)))))))

(assert (= (and d!1621248 c!863466) b!5039962))

(assert (= (and d!1621248 (not c!863466)) b!5039963))

(assert (= (and d!1621248 res!2147320) b!5039964))

(assert (= (and b!5039964 res!2147319) b!5039965))

(declare-fun m!6073942 () Bool)

(assert (=> d!1621248 m!6073942))

(declare-fun m!6073944 () Bool)

(assert (=> d!1621248 m!6073944))

(assert (=> d!1621248 m!6073388))

(declare-fun m!6073946 () Bool)

(assert (=> b!5039964 m!6073946))

(declare-fun m!6073948 () Bool)

(assert (=> b!5039964 m!6073948))

(assert (=> b!5039964 m!6073394))

(declare-fun m!6073950 () Bool)

(assert (=> b!5039963 m!6073950))

(assert (=> b!5039634 d!1621248))

(assert (=> d!1620950 d!1621244))

(assert (=> d!1620950 d!1621246))

(assert (=> b!5039575 d!1621246))

(declare-fun d!1621250 () Bool)

(declare-fun lt!2084181 () Int)

(assert (=> d!1621250 (= lt!2084181 (size!38898 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621250 (= lt!2084181 (ite ((_ is Empty!15512) (left!42697 (left!42697 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 t!4198)))) (csize!31255 (left!42697 (left!42697 (left!42697 t!4198)))) (csize!31254 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(assert (=> d!1621250 (= (size!38897 (left!42697 (left!42697 (left!42697 t!4198)))) lt!2084181)))

(declare-fun bs!1188883 () Bool)

(assert (= bs!1188883 d!1621250))

(assert (=> bs!1188883 m!6073286))

(assert (=> bs!1188883 m!6073286))

(declare-fun m!6073952 () Bool)

(assert (=> bs!1188883 m!6073952))

(assert (=> d!1620898 d!1621250))

(declare-fun d!1621252 () Bool)

(declare-fun lt!2084182 () Int)

(assert (=> d!1621252 (= lt!2084182 (size!38898 (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621252 (= lt!2084182 (ite ((_ is Empty!15512) (right!43027 (left!42697 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 t!4198)))) (csize!31255 (right!43027 (left!42697 (left!42697 t!4198)))) (csize!31254 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(assert (=> d!1621252 (= (size!38897 (right!43027 (left!42697 (left!42697 t!4198)))) lt!2084182)))

(declare-fun bs!1188884 () Bool)

(assert (= bs!1188884 d!1621252))

(assert (=> bs!1188884 m!6073288))

(assert (=> bs!1188884 m!6073288))

(declare-fun m!6073954 () Bool)

(assert (=> bs!1188884 m!6073954))

(assert (=> d!1620898 d!1621252))

(declare-fun d!1621254 () Bool)

(declare-fun c!863467 () Bool)

(assert (=> d!1621254 (= c!863467 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun e!3147582 () Bool)

(assert (=> d!1621254 (= (inv!77150 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) e!3147582)))

(declare-fun b!5039966 () Bool)

(assert (=> b!5039966 (= e!3147582 (inv!77152 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039967 () Bool)

(declare-fun e!3147583 () Bool)

(assert (=> b!5039967 (= e!3147582 e!3147583)))

(declare-fun res!2147321 () Bool)

(assert (=> b!5039967 (= res!2147321 (not ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5039967 (=> res!2147321 e!3147583)))

(declare-fun b!5039968 () Bool)

(assert (=> b!5039968 (= e!3147583 (inv!77153 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621254 c!863467) b!5039966))

(assert (= (and d!1621254 (not c!863467)) b!5039967))

(assert (= (and b!5039967 (not res!2147321)) b!5039968))

(declare-fun m!6073956 () Bool)

(assert (=> b!5039966 m!6073956))

(declare-fun m!6073958 () Bool)

(assert (=> b!5039968 m!6073958))

(assert (=> b!5039676 d!1621254))

(declare-fun d!1621256 () Bool)

(declare-fun c!863468 () Bool)

(assert (=> d!1621256 (= c!863468 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun e!3147584 () Bool)

(assert (=> d!1621256 (= (inv!77150 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))) e!3147584)))

(declare-fun b!5039969 () Bool)

(assert (=> b!5039969 (= e!3147584 (inv!77152 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5039970 () Bool)

(declare-fun e!3147585 () Bool)

(assert (=> b!5039970 (= e!3147584 e!3147585)))

(declare-fun res!2147322 () Bool)

(assert (=> b!5039970 (= res!2147322 (not ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5039970 (=> res!2147322 e!3147585)))

(declare-fun b!5039971 () Bool)

(assert (=> b!5039971 (= e!3147585 (inv!77153 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621256 c!863468) b!5039969))

(assert (= (and d!1621256 (not c!863468)) b!5039970))

(assert (= (and b!5039970 (not res!2147322)) b!5039971))

(declare-fun m!6073960 () Bool)

(assert (=> b!5039969 m!6073960))

(declare-fun m!6073962 () Bool)

(assert (=> b!5039971 m!6073962))

(assert (=> b!5039676 d!1621256))

(declare-fun d!1621258 () Bool)

(assert (=> d!1621258 (= (inv!77151 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198)))))) 2147483647))))

(declare-fun bs!1188885 () Bool)

(assert (= bs!1188885 d!1621258))

(declare-fun m!6073964 () Bool)

(assert (=> bs!1188885 m!6073964))

(assert (=> b!5039657 d!1621258))

(declare-fun d!1621260 () Bool)

(assert (=> d!1621260 (= (max!0 (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198))))) (ite (< (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 t!4198)))) (height!2091 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> b!5039555 d!1621260))

(declare-fun d!1621262 () Bool)

(assert (=> d!1621262 (= (height!2091 (left!42697 (right!43027 (left!42697 t!4198)))) (ite ((_ is Empty!15512) (left!42697 (right!43027 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 t!4198)))) 1 (cheight!15723 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5039555 d!1621262))

(declare-fun d!1621264 () Bool)

(assert (=> d!1621264 (= (height!2091 (right!43027 (right!43027 (left!42697 t!4198)))) (ite ((_ is Empty!15512) (right!43027 (right!43027 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 t!4198)))) 1 (cheight!15723 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5039555 d!1621264))

(declare-fun d!1621266 () Bool)

(declare-fun res!2147323 () Bool)

(declare-fun e!3147586 () Bool)

(assert (=> d!1621266 (=> (not res!2147323) (not e!3147586))))

(assert (=> d!1621266 (= res!2147323 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198)))))) 512))))

(assert (=> d!1621266 (= (inv!77153 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147586)))

(declare-fun b!5039972 () Bool)

(declare-fun res!2147324 () Bool)

(assert (=> b!5039972 (=> (not res!2147324) (not e!3147586))))

(assert (=> b!5039972 (= res!2147324 (= (csize!31255 (left!42697 (right!43027 (left!42697 t!4198)))) (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198))))))))))

(declare-fun b!5039973 () Bool)

(assert (=> b!5039973 (= e!3147586 (and (> (csize!31255 (left!42697 (right!43027 (left!42697 t!4198)))) 0) (<= (csize!31255 (left!42697 (right!43027 (left!42697 t!4198)))) 512)))))

(assert (= (and d!1621266 res!2147323) b!5039972))

(assert (= (and b!5039972 res!2147324) b!5039973))

(declare-fun m!6073966 () Bool)

(assert (=> d!1621266 m!6073966))

(assert (=> d!1621266 m!6073966))

(declare-fun m!6073968 () Bool)

(assert (=> d!1621266 m!6073968))

(assert (=> b!5039972 m!6073966))

(assert (=> b!5039972 m!6073966))

(assert (=> b!5039972 m!6073968))

(assert (=> b!5039490 d!1621266))

(declare-fun d!1621268 () Bool)

(declare-fun c!863469 () Bool)

(assert (=> d!1621268 (= c!863469 ((_ is Nil!58300) (t!370961 lt!2084040)))))

(declare-fun e!3147587 () (InoxSet T!104180))

(assert (=> d!1621268 (= (content!10352 (t!370961 lt!2084040)) e!3147587)))

(declare-fun b!5039974 () Bool)

(assert (=> b!5039974 (= e!3147587 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039975 () Bool)

(assert (=> b!5039975 (= e!3147587 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 lt!2084040)) true) (content!10352 (t!370961 (t!370961 lt!2084040)))))))

(assert (= (and d!1621268 c!863469) b!5039974))

(assert (= (and d!1621268 (not c!863469)) b!5039975))

(declare-fun m!6073970 () Bool)

(assert (=> b!5039975 m!6073970))

(assert (=> b!5039975 m!6073882))

(assert (=> b!5039590 d!1621268))

(assert (=> b!5039481 d!1621242))

(declare-fun d!1621270 () Bool)

(declare-fun c!863470 () Bool)

(assert (=> d!1621270 (= c!863470 ((_ is Nil!58300) lt!2084131))))

(declare-fun e!3147588 () (InoxSet T!104180))

(assert (=> d!1621270 (= (content!10352 lt!2084131) e!3147588)))

(declare-fun b!5039976 () Bool)

(assert (=> b!5039976 (= e!3147588 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039977 () Bool)

(assert (=> b!5039977 (= e!3147588 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084131) true) (content!10352 (t!370961 lt!2084131))))))

(assert (= (and d!1621270 c!863470) b!5039976))

(assert (= (and d!1621270 (not c!863470)) b!5039977))

(declare-fun m!6073972 () Bool)

(assert (=> b!5039977 m!6073972))

(declare-fun m!6073974 () Bool)

(assert (=> b!5039977 m!6073974))

(assert (=> d!1621014 d!1621270))

(declare-fun d!1621272 () Bool)

(declare-fun c!863471 () Bool)

(assert (=> d!1621272 (= c!863471 ((_ is Nil!58300) (_1!34920 lt!2084068)))))

(declare-fun e!3147589 () (InoxSet T!104180))

(assert (=> d!1621272 (= (content!10352 (_1!34920 lt!2084068)) e!3147589)))

(declare-fun b!5039978 () Bool)

(assert (=> b!5039978 (= e!3147589 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039979 () Bool)

(assert (=> b!5039979 (= e!3147589 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (_1!34920 lt!2084068)) true) (content!10352 (t!370961 (_1!34920 lt!2084068)))))))

(assert (= (and d!1621272 c!863471) b!5039978))

(assert (= (and d!1621272 (not c!863471)) b!5039979))

(declare-fun m!6073976 () Bool)

(assert (=> b!5039979 m!6073976))

(assert (=> b!5039979 m!6073944))

(assert (=> d!1621014 d!1621272))

(declare-fun d!1621274 () Bool)

(declare-fun c!863472 () Bool)

(assert (=> d!1621274 (= c!863472 ((_ is Nil!58300) (_2!34920 lt!2084068)))))

(declare-fun e!3147590 () (InoxSet T!104180))

(assert (=> d!1621274 (= (content!10352 (_2!34920 lt!2084068)) e!3147590)))

(declare-fun b!5039980 () Bool)

(assert (=> b!5039980 (= e!3147590 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039981 () Bool)

(assert (=> b!5039981 (= e!3147590 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (_2!34920 lt!2084068)) true) (content!10352 (t!370961 (_2!34920 lt!2084068)))))))

(assert (= (and d!1621274 c!863472) b!5039980))

(assert (= (and d!1621274 (not c!863472)) b!5039981))

(declare-fun m!6073978 () Bool)

(assert (=> b!5039981 m!6073978))

(declare-fun m!6073980 () Bool)

(assert (=> b!5039981 m!6073980))

(assert (=> d!1621014 d!1621274))

(declare-fun d!1621276 () Bool)

(declare-fun lt!2084183 () Int)

(assert (=> d!1621276 (>= lt!2084183 0)))

(declare-fun e!3147591 () Int)

(assert (=> d!1621276 (= lt!2084183 e!3147591)))

(declare-fun c!863473 () Bool)

(assert (=> d!1621276 (= c!863473 ((_ is Nil!58300) (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621276 (= (size!38898 (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198))))) lt!2084183)))

(declare-fun b!5039982 () Bool)

(assert (=> b!5039982 (= e!3147591 0)))

(declare-fun b!5039983 () Bool)

(assert (=> b!5039983 (= e!3147591 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198))))))))))

(assert (= (and d!1621276 c!863473) b!5039982))

(assert (= (and d!1621276 (not c!863473)) b!5039983))

(declare-fun m!6073982 () Bool)

(assert (=> b!5039983 m!6073982))

(assert (=> d!1621006 d!1621276))

(declare-fun d!1621278 () Bool)

(assert (=> d!1621278 (= (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (ite ((_ is Empty!15512) (left!42697 (left!42697 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 t!4198)))) 1 (cheight!15723 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5039622 d!1621278))

(declare-fun d!1621280 () Bool)

(assert (=> d!1621280 (= (height!2091 (right!43027 (left!42697 (left!42697 t!4198)))) (ite ((_ is Empty!15512) (right!43027 (left!42697 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 t!4198)))) 1 (cheight!15723 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5039622 d!1621280))

(declare-fun d!1621282 () Bool)

(assert (=> d!1621282 (= (inv!77151 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198)))))) 2147483647))))

(declare-fun bs!1188886 () Bool)

(assert (= bs!1188886 d!1621282))

(declare-fun m!6073984 () Bool)

(assert (=> bs!1188886 m!6073984))

(assert (=> b!5039665 d!1621282))

(declare-fun d!1621284 () Bool)

(declare-fun c!863474 () Bool)

(assert (=> d!1621284 (= c!863474 ((_ is Nil!58300) lt!2084103))))

(declare-fun e!3147592 () (InoxSet T!104180))

(assert (=> d!1621284 (= (content!10352 lt!2084103) e!3147592)))

(declare-fun b!5039984 () Bool)

(assert (=> b!5039984 (= e!3147592 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5039985 () Bool)

(assert (=> b!5039985 (= e!3147592 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084103) true) (content!10352 (t!370961 lt!2084103))))))

(assert (= (and d!1621284 c!863474) b!5039984))

(assert (= (and d!1621284 (not c!863474)) b!5039985))

(declare-fun m!6073986 () Bool)

(assert (=> b!5039985 m!6073986))

(declare-fun m!6073988 () Bool)

(assert (=> b!5039985 m!6073988))

(assert (=> d!1620886 d!1621284))

(assert (=> d!1620886 d!1621268))

(assert (=> b!5039515 d!1621218))

(declare-fun d!1621286 () Bool)

(assert (=> d!1621286 (= (isEmpty!31531 (list!18909 (left!42697 (right!43027 t!4198)))) ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1620984 d!1621286))

(assert (=> d!1620984 d!1621020))

(assert (=> d!1620984 d!1620930))

(declare-fun d!1621288 () Bool)

(assert (=> d!1621288 (= (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (ite ((_ is Empty!15512) (left!42697 (right!43027 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 t!4198)))) 1 (cheight!15723 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5039524 d!1621288))

(declare-fun d!1621290 () Bool)

(assert (=> d!1621290 (= (height!2091 (right!43027 (right!43027 (right!43027 t!4198)))) (ite ((_ is Empty!15512) (right!43027 (right!43027 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 t!4198)))) 1 (cheight!15723 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5039524 d!1621290))

(declare-fun d!1621292 () Bool)

(declare-fun lt!2084184 () Int)

(assert (=> d!1621292 (>= lt!2084184 0)))

(declare-fun e!3147593 () Int)

(assert (=> d!1621292 (= lt!2084184 e!3147593)))

(declare-fun c!863475 () Bool)

(assert (=> d!1621292 (= c!863475 ((_ is Nil!58300) (list!18910 (xs!18838 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621292 (= (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 t!4198))))) lt!2084184)))

(declare-fun b!5039986 () Bool)

(assert (=> b!5039986 (= e!3147593 0)))

(declare-fun b!5039987 () Bool)

(assert (=> b!5039987 (= e!3147593 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (left!42697 (left!42697 t!4198))))))))))

(assert (= (and d!1621292 c!863475) b!5039986))

(assert (= (and d!1621292 (not c!863475)) b!5039987))

(declare-fun m!6073990 () Bool)

(assert (=> b!5039987 m!6073990))

(assert (=> b!5039517 d!1621292))

(declare-fun d!1621294 () Bool)

(assert (=> d!1621294 (= (list!18910 (xs!18838 (left!42697 (left!42697 t!4198)))) (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198)))))))

(assert (=> b!5039517 d!1621294))

(declare-fun d!1621296 () Bool)

(declare-fun res!2147325 () Bool)

(declare-fun e!3147594 () Bool)

(assert (=> d!1621296 (=> (not res!2147325) (not e!3147594))))

(assert (=> d!1621296 (= res!2147325 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198)))))) 512))))

(assert (=> d!1621296 (= (inv!77153 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147594)))

(declare-fun b!5039988 () Bool)

(declare-fun res!2147326 () Bool)

(assert (=> b!5039988 (=> (not res!2147326) (not e!3147594))))

(assert (=> b!5039988 (= res!2147326 (= (csize!31255 (right!43027 (right!43027 (left!42697 t!4198)))) (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198))))))))))

(declare-fun b!5039989 () Bool)

(assert (=> b!5039989 (= e!3147594 (and (> (csize!31255 (right!43027 (right!43027 (left!42697 t!4198)))) 0) (<= (csize!31255 (right!43027 (right!43027 (left!42697 t!4198)))) 512)))))

(assert (= (and d!1621296 res!2147325) b!5039988))

(assert (= (and b!5039988 res!2147326) b!5039989))

(declare-fun m!6073992 () Bool)

(assert (=> d!1621296 m!6073992))

(assert (=> d!1621296 m!6073992))

(declare-fun m!6073994 () Bool)

(assert (=> d!1621296 m!6073994))

(assert (=> b!5039988 m!6073992))

(assert (=> b!5039988 m!6073992))

(assert (=> b!5039988 m!6073994))

(assert (=> b!5039493 d!1621296))

(assert (=> b!5039311 d!1620992))

(assert (=> b!5039311 d!1620994))

(declare-fun d!1621298 () Bool)

(declare-fun lt!2084185 () Int)

(assert (=> d!1621298 (>= lt!2084185 0)))

(declare-fun e!3147595 () Int)

(assert (=> d!1621298 (= lt!2084185 e!3147595)))

(declare-fun c!863476 () Bool)

(assert (=> d!1621298 (= c!863476 ((_ is Nil!58300) (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621298 (= (size!38898 (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198))))) lt!2084185)))

(declare-fun b!5039990 () Bool)

(assert (=> b!5039990 (= e!3147595 0)))

(declare-fun b!5039991 () Bool)

(assert (=> b!5039991 (= e!3147595 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198))))))))))

(assert (= (and d!1621298 c!863476) b!5039990))

(assert (= (and d!1621298 (not c!863476)) b!5039991))

(declare-fun m!6073996 () Bool)

(assert (=> b!5039991 m!6073996))

(assert (=> d!1620966 d!1621298))

(declare-fun d!1621300 () Bool)

(declare-fun lt!2084186 () Bool)

(assert (=> d!1621300 (= lt!2084186 (isEmpty!31531 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621300 (= lt!2084186 (= (size!38897 (left!42697 (left!42697 (left!42697 t!4198)))) 0))))

(assert (=> d!1621300 (= (isEmpty!31530 (left!42697 (left!42697 (left!42697 t!4198)))) lt!2084186)))

(declare-fun bs!1188887 () Bool)

(assert (= bs!1188887 d!1621300))

(assert (=> bs!1188887 m!6073286))

(assert (=> bs!1188887 m!6073286))

(declare-fun m!6073998 () Bool)

(assert (=> bs!1188887 m!6073998))

(assert (=> bs!1188887 m!6073208))

(assert (=> b!5039618 d!1621300))

(declare-fun d!1621302 () Bool)

(declare-fun lt!2084187 () Bool)

(assert (=> d!1621302 (= lt!2084187 (isEmpty!31531 (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621302 (= lt!2084187 (= (size!38897 (right!43027 (left!42697 (right!43027 t!4198)))) 0))))

(assert (=> d!1621302 (= (isEmpty!31530 (right!43027 (left!42697 (right!43027 t!4198)))) lt!2084187)))

(declare-fun bs!1188888 () Bool)

(assert (= bs!1188888 d!1621302))

(assert (=> bs!1188888 m!6073416))

(assert (=> bs!1188888 m!6073416))

(declare-fun m!6074000 () Bool)

(assert (=> bs!1188888 m!6074000))

(assert (=> bs!1188888 m!6073200))

(assert (=> b!5039535 d!1621302))

(declare-fun d!1621304 () Bool)

(declare-fun e!3147597 () Bool)

(assert (=> d!1621304 e!3147597))

(declare-fun res!2147328 () Bool)

(assert (=> d!1621304 (=> (not res!2147328) (not e!3147597))))

(declare-fun lt!2084188 () List!58424)

(assert (=> d!1621304 (= res!2147328 (= (content!10352 lt!2084188) ((_ map or) (content!10352 (t!370961 (t!370961 (_1!34920 lt!2084052)))) (content!10352 (_2!34920 lt!2084052)))))))

(declare-fun e!3147596 () List!58424)

(assert (=> d!1621304 (= lt!2084188 e!3147596)))

(declare-fun c!863477 () Bool)

(assert (=> d!1621304 (= c!863477 ((_ is Nil!58300) (t!370961 (t!370961 (_1!34920 lt!2084052)))))))

(assert (=> d!1621304 (= (++!12724 (t!370961 (t!370961 (_1!34920 lt!2084052))) (_2!34920 lt!2084052)) lt!2084188)))

(declare-fun b!5039994 () Bool)

(declare-fun res!2147327 () Bool)

(assert (=> b!5039994 (=> (not res!2147327) (not e!3147597))))

(assert (=> b!5039994 (= res!2147327 (= (size!38898 lt!2084188) (+ (size!38898 (t!370961 (t!370961 (_1!34920 lt!2084052)))) (size!38898 (_2!34920 lt!2084052)))))))

(declare-fun b!5039992 () Bool)

(assert (=> b!5039992 (= e!3147596 (_2!34920 lt!2084052))))

(declare-fun b!5039993 () Bool)

(assert (=> b!5039993 (= e!3147596 (Cons!58300 (h!64748 (t!370961 (t!370961 (_1!34920 lt!2084052)))) (++!12724 (t!370961 (t!370961 (t!370961 (_1!34920 lt!2084052)))) (_2!34920 lt!2084052))))))

(declare-fun b!5039995 () Bool)

(assert (=> b!5039995 (= e!3147597 (or (not (= (_2!34920 lt!2084052) Nil!58300)) (= lt!2084188 (t!370961 (t!370961 (_1!34920 lt!2084052))))))))

(assert (= (and d!1621304 c!863477) b!5039992))

(assert (= (and d!1621304 (not c!863477)) b!5039993))

(assert (= (and d!1621304 res!2147328) b!5039994))

(assert (= (and b!5039994 res!2147327) b!5039995))

(declare-fun m!6074002 () Bool)

(assert (=> d!1621304 m!6074002))

(declare-fun m!6074004 () Bool)

(assert (=> d!1621304 m!6074004))

(assert (=> d!1621304 m!6072866))

(declare-fun m!6074006 () Bool)

(assert (=> b!5039994 m!6074006))

(declare-fun m!6074008 () Bool)

(assert (=> b!5039994 m!6074008))

(assert (=> b!5039994 m!6072872))

(declare-fun m!6074010 () Bool)

(assert (=> b!5039993 m!6074010))

(assert (=> b!5039626 d!1621304))

(assert (=> b!5039571 d!1621294))

(declare-fun d!1621306 () Bool)

(declare-fun lt!2084189 () Bool)

(assert (=> d!1621306 (= lt!2084189 (isEmpty!31531 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621306 (= lt!2084189 (= (size!38897 (left!42697 (right!43027 (right!43027 t!4198)))) 0))))

(assert (=> d!1621306 (= (isEmpty!31530 (left!42697 (right!43027 (right!43027 t!4198)))) lt!2084189)))

(declare-fun bs!1188889 () Bool)

(assert (= bs!1188889 d!1621306))

(assert (=> bs!1188889 m!6073420))

(assert (=> bs!1188889 m!6073420))

(declare-fun m!6074012 () Bool)

(assert (=> bs!1188889 m!6074012))

(assert (=> bs!1188889 m!6073240))

(assert (=> b!5039520 d!1621306))

(assert (=> d!1620892 d!1621292))

(assert (=> d!1620892 d!1621294))

(declare-fun d!1621308 () Bool)

(declare-fun e!3147599 () Bool)

(assert (=> d!1621308 e!3147599))

(declare-fun res!2147330 () Bool)

(assert (=> d!1621308 (=> (not res!2147330) (not e!3147599))))

(declare-fun lt!2084190 () List!58424)

(assert (=> d!1621308 (= res!2147330 (= (content!10352 lt!2084190) ((_ map or) (content!10352 (t!370961 (list!18909 (left!42697 (left!42697 t!4198))))) (content!10352 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(declare-fun e!3147598 () List!58424)

(assert (=> d!1621308 (= lt!2084190 e!3147598)))

(declare-fun c!863478 () Bool)

(assert (=> d!1621308 (= c!863478 ((_ is Nil!58300) (t!370961 (list!18909 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621308 (= (++!12724 (t!370961 (list!18909 (left!42697 (left!42697 t!4198)))) (list!18909 (right!43027 (left!42697 t!4198)))) lt!2084190)))

(declare-fun b!5039998 () Bool)

(declare-fun res!2147329 () Bool)

(assert (=> b!5039998 (=> (not res!2147329) (not e!3147599))))

(assert (=> b!5039998 (= res!2147329 (= (size!38898 lt!2084190) (+ (size!38898 (t!370961 (list!18909 (left!42697 (left!42697 t!4198))))) (size!38898 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5039996 () Bool)

(assert (=> b!5039996 (= e!3147598 (list!18909 (right!43027 (left!42697 t!4198))))))

(declare-fun b!5039997 () Bool)

(assert (=> b!5039997 (= e!3147598 (Cons!58300 (h!64748 (t!370961 (list!18909 (left!42697 (left!42697 t!4198))))) (++!12724 (t!370961 (t!370961 (list!18909 (left!42697 (left!42697 t!4198))))) (list!18909 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5039999 () Bool)

(assert (=> b!5039999 (= e!3147599 (or (not (= (list!18909 (right!43027 (left!42697 t!4198))) Nil!58300)) (= lt!2084190 (t!370961 (list!18909 (left!42697 (left!42697 t!4198)))))))))

(assert (= (and d!1621308 c!863478) b!5039996))

(assert (= (and d!1621308 (not c!863478)) b!5039997))

(assert (= (and d!1621308 res!2147330) b!5039998))

(assert (= (and b!5039998 res!2147329) b!5039999))

(declare-fun m!6074014 () Bool)

(assert (=> d!1621308 m!6074014))

(declare-fun m!6074016 () Bool)

(assert (=> d!1621308 m!6074016))

(assert (=> d!1621308 m!6072840))

(assert (=> d!1621308 m!6073276))

(declare-fun m!6074018 () Bool)

(assert (=> b!5039998 m!6074018))

(assert (=> b!5039998 m!6073848))

(assert (=> b!5039998 m!6072840))

(assert (=> b!5039998 m!6073282))

(assert (=> b!5039997 m!6072840))

(declare-fun m!6074020 () Bool)

(assert (=> b!5039997 m!6074020))

(assert (=> b!5039566 d!1621308))

(declare-fun d!1621310 () Bool)

(declare-fun c!863479 () Bool)

(assert (=> d!1621310 (= c!863479 ((_ is Nil!58300) (t!370961 (list!18909 (right!43027 t!4198)))))))

(declare-fun e!3147600 () (InoxSet T!104180))

(assert (=> d!1621310 (= (content!10352 (t!370961 (list!18909 (right!43027 t!4198)))) e!3147600)))

(declare-fun b!5040000 () Bool)

(assert (=> b!5040000 (= e!3147600 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040001 () Bool)

(assert (=> b!5040001 (= e!3147600 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 (list!18909 (right!43027 t!4198)))) true) (content!10352 (t!370961 (t!370961 (list!18909 (right!43027 t!4198)))))))))

(assert (= (and d!1621310 c!863479) b!5040000))

(assert (= (and d!1621310 (not c!863479)) b!5040001))

(declare-fun m!6074022 () Bool)

(assert (=> b!5040001 m!6074022))

(declare-fun m!6074024 () Bool)

(assert (=> b!5040001 m!6074024))

(assert (=> b!5039610 d!1621310))

(assert (=> b!5039602 d!1621262))

(assert (=> b!5039602 d!1621264))

(declare-fun d!1621312 () Bool)

(declare-fun lt!2084191 () Int)

(assert (=> d!1621312 (= lt!2084191 (size!38898 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621312 (= lt!2084191 (ite ((_ is Empty!15512) (left!42697 (right!43027 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 t!4198)))) (csize!31255 (left!42697 (right!43027 (right!43027 t!4198)))) (csize!31254 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(assert (=> d!1621312 (= (size!38897 (left!42697 (right!43027 (right!43027 t!4198)))) lt!2084191)))

(declare-fun bs!1188890 () Bool)

(assert (= bs!1188890 d!1621312))

(assert (=> bs!1188890 m!6073420))

(assert (=> bs!1188890 m!6073420))

(declare-fun m!6074026 () Bool)

(assert (=> bs!1188890 m!6074026))

(assert (=> d!1620920 d!1621312))

(declare-fun d!1621314 () Bool)

(declare-fun lt!2084192 () Int)

(assert (=> d!1621314 (= lt!2084192 (size!38898 (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621314 (= lt!2084192 (ite ((_ is Empty!15512) (right!43027 (right!43027 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 t!4198)))) (csize!31255 (right!43027 (right!43027 (right!43027 t!4198)))) (csize!31254 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(assert (=> d!1621314 (= (size!38897 (right!43027 (right!43027 (right!43027 t!4198)))) lt!2084192)))

(declare-fun bs!1188891 () Bool)

(assert (= bs!1188891 d!1621314))

(assert (=> bs!1188891 m!6073422))

(assert (=> bs!1188891 m!6073422))

(declare-fun m!6074028 () Bool)

(assert (=> bs!1188891 m!6074028))

(assert (=> d!1620920 d!1621314))

(declare-fun d!1621316 () Bool)

(declare-fun lt!2084193 () Int)

(assert (=> d!1621316 (>= lt!2084193 0)))

(declare-fun e!3147601 () Int)

(assert (=> d!1621316 (= lt!2084193 e!3147601)))

(declare-fun c!863480 () Bool)

(assert (=> d!1621316 (= c!863480 ((_ is Nil!58300) (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198))))))))

(assert (=> d!1621316 (= (size!38898 (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198))))) lt!2084193)))

(declare-fun b!5040002 () Bool)

(assert (=> b!5040002 (= e!3147601 0)))

(declare-fun b!5040003 () Bool)

(assert (=> b!5040003 (= e!3147601 (+ 1 (size!38898 (t!370961 (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198))))))))))

(assert (= (and d!1621316 c!863480) b!5040002))

(assert (= (and d!1621316 (not c!863480)) b!5040003))

(declare-fun m!6074030 () Bool)

(assert (=> b!5040003 m!6074030))

(assert (=> b!5039592 d!1621316))

(declare-fun d!1621318 () Bool)

(declare-fun e!3147603 () Bool)

(assert (=> d!1621318 e!3147603))

(declare-fun res!2147332 () Bool)

(assert (=> d!1621318 (=> (not res!2147332) (not e!3147603))))

(declare-fun lt!2084194 () List!58424)

(assert (=> d!1621318 (= res!2147332 (= (content!10352 lt!2084194) ((_ map or) (content!10352 (t!370961 (t!370961 (list!18909 (left!42697 t!4198))))) (content!10352 (list!18909 (right!43027 t!4198))))))))

(declare-fun e!3147602 () List!58424)

(assert (=> d!1621318 (= lt!2084194 e!3147602)))

(declare-fun c!863481 () Bool)

(assert (=> d!1621318 (= c!863481 ((_ is Nil!58300) (t!370961 (t!370961 (list!18909 (left!42697 t!4198))))))))

(assert (=> d!1621318 (= (++!12724 (t!370961 (t!370961 (list!18909 (left!42697 t!4198)))) (list!18909 (right!43027 t!4198))) lt!2084194)))

(declare-fun b!5040006 () Bool)

(declare-fun res!2147331 () Bool)

(assert (=> b!5040006 (=> (not res!2147331) (not e!3147603))))

(assert (=> b!5040006 (= res!2147331 (= (size!38898 lt!2084194) (+ (size!38898 (t!370961 (t!370961 (list!18909 (left!42697 t!4198))))) (size!38898 (list!18909 (right!43027 t!4198))))))))

(declare-fun b!5040004 () Bool)

(assert (=> b!5040004 (= e!3147602 (list!18909 (right!43027 t!4198)))))

(declare-fun b!5040005 () Bool)

(assert (=> b!5040005 (= e!3147602 (Cons!58300 (h!64748 (t!370961 (t!370961 (list!18909 (left!42697 t!4198))))) (++!12724 (t!370961 (t!370961 (t!370961 (list!18909 (left!42697 t!4198))))) (list!18909 (right!43027 t!4198)))))))

(declare-fun b!5040007 () Bool)

(assert (=> b!5040007 (= e!3147603 (or (not (= (list!18909 (right!43027 t!4198)) Nil!58300)) (= lt!2084194 (t!370961 (t!370961 (list!18909 (left!42697 t!4198)))))))))

(assert (= (and d!1621318 c!863481) b!5040004))

(assert (= (and d!1621318 (not c!863481)) b!5040005))

(assert (= (and d!1621318 res!2147332) b!5040006))

(assert (= (and b!5040006 res!2147331) b!5040007))

(declare-fun m!6074032 () Bool)

(assert (=> d!1621318 m!6074032))

(assert (=> d!1621318 m!6073870))

(assert (=> d!1621318 m!6072750))

(assert (=> d!1621318 m!6072828))

(declare-fun m!6074034 () Bool)

(assert (=> b!5040006 m!6074034))

(declare-fun m!6074036 () Bool)

(assert (=> b!5040006 m!6074036))

(assert (=> b!5040006 m!6072750))

(assert (=> b!5040006 m!6072834))

(assert (=> b!5040005 m!6072750))

(declare-fun m!6074038 () Bool)

(assert (=> b!5040005 m!6074038))

(assert (=> b!5039638 d!1621318))

(assert (=> d!1620918 d!1620970))

(assert (=> d!1620918 d!1620738))

(assert (=> b!5039486 d!1621242))

(declare-fun d!1621320 () Bool)

(declare-fun lt!2084195 () Int)

(assert (=> d!1621320 (>= lt!2084195 0)))

(declare-fun e!3147604 () Int)

(assert (=> d!1621320 (= lt!2084195 e!3147604)))

(declare-fun c!863482 () Bool)

(assert (=> d!1621320 (= c!863482 ((_ is Nil!58300) lt!2084131))))

(assert (=> d!1621320 (= (size!38898 lt!2084131) lt!2084195)))

(declare-fun b!5040008 () Bool)

(assert (=> b!5040008 (= e!3147604 0)))

(declare-fun b!5040009 () Bool)

(assert (=> b!5040009 (= e!3147604 (+ 1 (size!38898 (t!370961 lt!2084131))))))

(assert (= (and d!1621320 c!863482) b!5040008))

(assert (= (and d!1621320 (not c!863482)) b!5040009))

(declare-fun m!6074040 () Bool)

(assert (=> b!5040009 m!6074040))

(assert (=> b!5039635 d!1621320))

(declare-fun d!1621322 () Bool)

(declare-fun lt!2084196 () Int)

(assert (=> d!1621322 (>= lt!2084196 0)))

(declare-fun e!3147605 () Int)

(assert (=> d!1621322 (= lt!2084196 e!3147605)))

(declare-fun c!863483 () Bool)

(assert (=> d!1621322 (= c!863483 ((_ is Nil!58300) (_1!34920 lt!2084068)))))

(assert (=> d!1621322 (= (size!38898 (_1!34920 lt!2084068)) lt!2084196)))

(declare-fun b!5040010 () Bool)

(assert (=> b!5040010 (= e!3147605 0)))

(declare-fun b!5040011 () Bool)

(assert (=> b!5040011 (= e!3147605 (+ 1 (size!38898 (t!370961 (_1!34920 lt!2084068)))))))

(assert (= (and d!1621322 c!863483) b!5040010))

(assert (= (and d!1621322 (not c!863483)) b!5040011))

(assert (=> b!5040011 m!6073948))

(assert (=> b!5039635 d!1621322))

(declare-fun d!1621324 () Bool)

(declare-fun lt!2084197 () Int)

(assert (=> d!1621324 (>= lt!2084197 0)))

(declare-fun e!3147606 () Int)

(assert (=> d!1621324 (= lt!2084197 e!3147606)))

(declare-fun c!863484 () Bool)

(assert (=> d!1621324 (= c!863484 ((_ is Nil!58300) (_2!34920 lt!2084068)))))

(assert (=> d!1621324 (= (size!38898 (_2!34920 lt!2084068)) lt!2084197)))

(declare-fun b!5040012 () Bool)

(assert (=> b!5040012 (= e!3147606 0)))

(declare-fun b!5040013 () Bool)

(assert (=> b!5040013 (= e!3147606 (+ 1 (size!38898 (t!370961 (_2!34920 lt!2084068)))))))

(assert (= (and d!1621324 c!863484) b!5040012))

(assert (= (and d!1621324 (not c!863484)) b!5040013))

(declare-fun m!6074042 () Bool)

(assert (=> b!5040013 m!6074042))

(assert (=> b!5039635 d!1621324))

(declare-fun d!1621326 () Bool)

(declare-fun res!2147333 () Bool)

(declare-fun e!3147607 () Bool)

(assert (=> d!1621326 (=> (not res!2147333) (not e!3147607))))

(assert (=> d!1621326 (= res!2147333 (= (csize!31254 (left!42697 (left!42697 (right!43027 t!4198)))) (+ (size!38897 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) (size!38897 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))))

(assert (=> d!1621326 (= (inv!77152 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147607)))

(declare-fun b!5040014 () Bool)

(declare-fun res!2147334 () Bool)

(assert (=> b!5040014 (=> (not res!2147334) (not e!3147607))))

(assert (=> b!5040014 (= res!2147334 (and (not (= (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))) Empty!15512)) (not (= (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))) Empty!15512))))))

(declare-fun b!5040015 () Bool)

(declare-fun res!2147335 () Bool)

(assert (=> b!5040015 (=> (not res!2147335) (not e!3147607))))

(assert (=> b!5040015 (= res!2147335 (= (cheight!15723 (left!42697 (left!42697 (right!43027 t!4198)))) (+ (max!0 (height!2091 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) 1)))))

(declare-fun b!5040016 () Bool)

(assert (=> b!5040016 (= e!3147607 (<= 0 (cheight!15723 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621326 res!2147333) b!5040014))

(assert (= (and b!5040014 res!2147334) b!5040015))

(assert (= (and b!5040015 res!2147335) b!5040016))

(declare-fun m!6074044 () Bool)

(assert (=> d!1621326 m!6074044))

(declare-fun m!6074046 () Bool)

(assert (=> d!1621326 m!6074046))

(declare-fun m!6074048 () Bool)

(assert (=> b!5040015 m!6074048))

(declare-fun m!6074050 () Bool)

(assert (=> b!5040015 m!6074050))

(assert (=> b!5040015 m!6074048))

(assert (=> b!5040015 m!6074050))

(declare-fun m!6074052 () Bool)

(assert (=> b!5040015 m!6074052))

(assert (=> b!5039475 d!1621326))

(declare-fun b!5040017 () Bool)

(declare-fun res!2147336 () Bool)

(declare-fun e!3147609 () Bool)

(assert (=> b!5040017 (=> (not res!2147336) (not e!3147609))))

(assert (=> b!5040017 (= res!2147336 (isBalanced!4374 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040018 () Bool)

(declare-fun res!2147341 () Bool)

(assert (=> b!5040018 (=> (not res!2147341) (not e!3147609))))

(assert (=> b!5040018 (= res!2147341 (not (isEmpty!31530 (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040019 () Bool)

(declare-fun res!2147340 () Bool)

(assert (=> b!5040019 (=> (not res!2147340) (not e!3147609))))

(assert (=> b!5040019 (= res!2147340 (isBalanced!4374 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040020 () Bool)

(declare-fun e!3147608 () Bool)

(assert (=> b!5040020 (= e!3147608 e!3147609)))

(declare-fun res!2147338 () Bool)

(assert (=> b!5040020 (=> (not res!2147338) (not e!3147609))))

(assert (=> b!5040020 (= res!2147338 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))))

(declare-fun b!5040021 () Bool)

(assert (=> b!5040021 (= e!3147609 (not (isEmpty!31530 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040022 () Bool)

(declare-fun res!2147337 () Bool)

(assert (=> b!5040022 (=> (not res!2147337) (not e!3147609))))

(assert (=> b!5040022 (= res!2147337 (<= (- (height!2091 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) 1))))

(declare-fun d!1621328 () Bool)

(declare-fun res!2147339 () Bool)

(assert (=> d!1621328 (=> res!2147339 e!3147608)))

(assert (=> d!1621328 (= res!2147339 (not ((_ is Node!15512) (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621328 (= (isBalanced!4374 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147608)))

(assert (= (and d!1621328 (not res!2147339)) b!5040020))

(assert (= (and b!5040020 res!2147338) b!5040022))

(assert (= (and b!5040022 res!2147337) b!5040017))

(assert (= (and b!5040017 res!2147336) b!5040019))

(assert (= (and b!5040019 res!2147340) b!5040018))

(assert (= (and b!5040018 res!2147341) b!5040021))

(declare-fun m!6074054 () Bool)

(assert (=> b!5040018 m!6074054))

(assert (=> b!5040022 m!6074048))

(assert (=> b!5040022 m!6074050))

(declare-fun m!6074056 () Bool)

(assert (=> b!5040017 m!6074056))

(declare-fun m!6074058 () Bool)

(assert (=> b!5040021 m!6074058))

(declare-fun m!6074060 () Bool)

(assert (=> b!5040019 m!6074060))

(assert (=> b!5040020 m!6074048))

(assert (=> b!5040020 m!6074050))

(assert (=> b!5039531 d!1621328))

(declare-fun d!1621330 () Bool)

(assert (=> d!1621330 (= (isEmpty!31531 (list!18909 (right!43027 (right!43027 t!4198)))) ((_ is Nil!58300) (list!18909 (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1620866 d!1621330))

(assert (=> d!1620866 d!1621022))

(assert (=> d!1620866 d!1620932))

(declare-fun d!1621332 () Bool)

(declare-fun e!3147611 () Bool)

(assert (=> d!1621332 e!3147611))

(declare-fun res!2147343 () Bool)

(assert (=> d!1621332 (=> (not res!2147343) (not e!3147611))))

(declare-fun lt!2084198 () List!58424)

(assert (=> d!1621332 (= res!2147343 (= (content!10352 lt!2084198) ((_ map or) (content!10352 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))) (content!10352 (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))))))))

(declare-fun e!3147610 () List!58424)

(assert (=> d!1621332 (= lt!2084198 e!3147610)))

(declare-fun c!863485 () Bool)

(assert (=> d!1621332 (= c!863485 ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621332 (= (++!12724 (list!18909 (left!42697 (right!43027 (left!42697 t!4198)))) (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))) lt!2084198)))

(declare-fun b!5040025 () Bool)

(declare-fun res!2147342 () Bool)

(assert (=> b!5040025 (=> (not res!2147342) (not e!3147611))))

(assert (=> b!5040025 (= res!2147342 (= (size!38898 lt!2084198) (+ (size!38898 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))) (size!38898 (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))))))))

(declare-fun b!5040023 () Bool)

(assert (=> b!5040023 (= e!3147610 (list!18909 (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5040024 () Bool)

(assert (=> b!5040024 (= e!3147610 (Cons!58300 (h!64748 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))) (++!12724 (t!370961 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))) (list!18909 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5040026 () Bool)

(assert (=> b!5040026 (= e!3147611 (or (not (= (list!18909 (right!43027 (right!43027 (left!42697 t!4198)))) Nil!58300)) (= lt!2084198 (list!18909 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(assert (= (and d!1621332 c!863485) b!5040023))

(assert (= (and d!1621332 (not c!863485)) b!5040024))

(assert (= (and d!1621332 res!2147343) b!5040025))

(assert (= (and b!5040025 res!2147342) b!5040026))

(declare-fun m!6074062 () Bool)

(assert (=> d!1621332 m!6074062))

(assert (=> d!1621332 m!6073292))

(declare-fun m!6074064 () Bool)

(assert (=> d!1621332 m!6074064))

(assert (=> d!1621332 m!6073294))

(declare-fun m!6074066 () Bool)

(assert (=> d!1621332 m!6074066))

(declare-fun m!6074068 () Bool)

(assert (=> b!5040025 m!6074068))

(assert (=> b!5040025 m!6073292))

(declare-fun m!6074070 () Bool)

(assert (=> b!5040025 m!6074070))

(assert (=> b!5040025 m!6073294))

(declare-fun m!6074072 () Bool)

(assert (=> b!5040025 m!6074072))

(assert (=> b!5040024 m!6073294))

(declare-fun m!6074074 () Bool)

(assert (=> b!5040024 m!6074074))

(assert (=> b!5039576 d!1621332))

(declare-fun d!1621334 () Bool)

(declare-fun c!863486 () Bool)

(assert (=> d!1621334 (= c!863486 ((_ is Empty!15512) (left!42697 (right!43027 (left!42697 t!4198)))))))

(declare-fun e!3147612 () List!58424)

(assert (=> d!1621334 (= (list!18909 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147612)))

(declare-fun b!5040028 () Bool)

(declare-fun e!3147613 () List!58424)

(assert (=> b!5040028 (= e!3147612 e!3147613)))

(declare-fun c!863487 () Bool)

(assert (=> b!5040028 (= c!863487 ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5040027 () Bool)

(assert (=> b!5040027 (= e!3147612 Nil!58300)))

(declare-fun b!5040030 () Bool)

(assert (=> b!5040030 (= e!3147613 (++!12724 (list!18909 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) (list!18909 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5040029 () Bool)

(assert (=> b!5040029 (= e!3147613 (list!18910 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621334 c!863486) b!5040027))

(assert (= (and d!1621334 (not c!863486)) b!5040028))

(assert (= (and b!5040028 c!863487) b!5040029))

(assert (= (and b!5040028 (not c!863487)) b!5040030))

(declare-fun m!6074076 () Bool)

(assert (=> b!5040030 m!6074076))

(declare-fun m!6074078 () Bool)

(assert (=> b!5040030 m!6074078))

(assert (=> b!5040030 m!6074076))

(assert (=> b!5040030 m!6074078))

(declare-fun m!6074080 () Bool)

(assert (=> b!5040030 m!6074080))

(assert (=> b!5040029 m!6073966))

(assert (=> b!5039576 d!1621334))

(declare-fun d!1621336 () Bool)

(declare-fun c!863488 () Bool)

(assert (=> d!1621336 (= c!863488 ((_ is Empty!15512) (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun e!3147614 () List!58424)

(assert (=> d!1621336 (= (list!18909 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147614)))

(declare-fun b!5040032 () Bool)

(declare-fun e!3147615 () List!58424)

(assert (=> b!5040032 (= e!3147614 e!3147615)))

(declare-fun c!863489 () Bool)

(assert (=> b!5040032 (= c!863489 ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 t!4198)))))))

(declare-fun b!5040031 () Bool)

(assert (=> b!5040031 (= e!3147614 Nil!58300)))

(declare-fun b!5040034 () Bool)

(assert (=> b!5040034 (= e!3147615 (++!12724 (list!18909 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) (list!18909 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5040033 () Bool)

(assert (=> b!5040033 (= e!3147615 (list!18910 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621336 c!863488) b!5040031))

(assert (= (and d!1621336 (not c!863488)) b!5040032))

(assert (= (and b!5040032 c!863489) b!5040033))

(assert (= (and b!5040032 (not c!863489)) b!5040034))

(declare-fun m!6074082 () Bool)

(assert (=> b!5040034 m!6074082))

(declare-fun m!6074084 () Bool)

(assert (=> b!5040034 m!6074084))

(assert (=> b!5040034 m!6074082))

(assert (=> b!5040034 m!6074084))

(declare-fun m!6074086 () Bool)

(assert (=> b!5040034 m!6074086))

(assert (=> b!5040033 m!6073992))

(assert (=> b!5039576 d!1621336))

(declare-fun d!1621338 () Bool)

(assert (=> d!1621338 (= (inv!77151 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198)))))) 2147483647))))

(declare-fun bs!1188892 () Bool)

(assert (= bs!1188892 d!1621338))

(declare-fun m!6074088 () Bool)

(assert (=> bs!1188892 m!6074088))

(assert (=> b!5039677 d!1621338))

(declare-fun d!1621340 () Bool)

(declare-fun c!863490 () Bool)

(assert (=> d!1621340 (= c!863490 ((_ is Nil!58300) lt!2084129))))

(declare-fun e!3147616 () (InoxSet T!104180))

(assert (=> d!1621340 (= (content!10352 lt!2084129) e!3147616)))

(declare-fun b!5040035 () Bool)

(assert (=> b!5040035 (= e!3147616 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040036 () Bool)

(assert (=> b!5040036 (= e!3147616 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084129) true) (content!10352 (t!370961 lt!2084129))))))

(assert (= (and d!1621340 c!863490) b!5040035))

(assert (= (and d!1621340 (not c!863490)) b!5040036))

(declare-fun m!6074090 () Bool)

(assert (=> b!5040036 m!6074090))

(declare-fun m!6074092 () Bool)

(assert (=> b!5040036 m!6074092))

(assert (=> d!1621008 d!1621340))

(declare-fun d!1621342 () Bool)

(declare-fun c!863491 () Bool)

(assert (=> d!1621342 (= c!863491 ((_ is Nil!58300) (t!370961 (_1!34920 lt!2084052))))))

(declare-fun e!3147617 () (InoxSet T!104180))

(assert (=> d!1621342 (= (content!10352 (t!370961 (_1!34920 lt!2084052))) e!3147617)))

(declare-fun b!5040037 () Bool)

(assert (=> b!5040037 (= e!3147617 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040038 () Bool)

(assert (=> b!5040038 (= e!3147617 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 (_1!34920 lt!2084052))) true) (content!10352 (t!370961 (t!370961 (_1!34920 lt!2084052))))))))

(assert (= (and d!1621342 c!863491) b!5040037))

(assert (= (and d!1621342 (not c!863491)) b!5040038))

(declare-fun m!6074094 () Bool)

(assert (=> b!5040038 m!6074094))

(assert (=> b!5040038 m!6074004))

(assert (=> d!1621008 d!1621342))

(assert (=> d!1621008 d!1620884))

(assert (=> b!5039505 d!1621342))

(declare-fun d!1621344 () Bool)

(declare-fun lt!2084199 () Int)

(assert (=> d!1621344 (>= lt!2084199 0)))

(declare-fun e!3147618 () Int)

(assert (=> d!1621344 (= lt!2084199 e!3147618)))

(declare-fun c!863492 () Bool)

(assert (=> d!1621344 (= c!863492 ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 t!4198)))))))

(assert (=> d!1621344 (= (size!38898 (list!18909 (left!42697 (right!43027 t!4198)))) lt!2084199)))

(declare-fun b!5040039 () Bool)

(assert (=> b!5040039 (= e!3147618 0)))

(declare-fun b!5040040 () Bool)

(assert (=> b!5040040 (= e!3147618 (+ 1 (size!38898 (t!370961 (list!18909 (left!42697 (right!43027 t!4198)))))))))

(assert (= (and d!1621344 c!863492) b!5040039))

(assert (= (and d!1621344 (not c!863492)) b!5040040))

(declare-fun m!6074096 () Bool)

(assert (=> b!5040040 m!6074096))

(assert (=> d!1620930 d!1621344))

(assert (=> d!1620930 d!1621020))

(declare-fun d!1621346 () Bool)

(declare-fun c!863493 () Bool)

(assert (=> d!1621346 (= c!863493 ((_ is Nil!58300) lt!2084115))))

(declare-fun e!3147619 () (InoxSet T!104180))

(assert (=> d!1621346 (= (content!10352 lt!2084115) e!3147619)))

(declare-fun b!5040041 () Bool)

(assert (=> b!5040041 (= e!3147619 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040042 () Bool)

(assert (=> b!5040042 (= e!3147619 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084115) true) (content!10352 (t!370961 lt!2084115))))))

(assert (= (and d!1621346 c!863493) b!5040041))

(assert (= (and d!1621346 (not c!863493)) b!5040042))

(declare-fun m!6074098 () Bool)

(assert (=> b!5040042 m!6074098))

(declare-fun m!6074100 () Bool)

(assert (=> b!5040042 m!6074100))

(assert (=> d!1620938 d!1621346))

(declare-fun d!1621348 () Bool)

(declare-fun c!863494 () Bool)

(assert (=> d!1621348 (= c!863494 ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 t!4198)))))))

(declare-fun e!3147620 () (InoxSet T!104180))

(assert (=> d!1621348 (= (content!10352 (list!18909 (left!42697 (left!42697 t!4198)))) e!3147620)))

(declare-fun b!5040043 () Bool)

(assert (=> b!5040043 (= e!3147620 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040044 () Bool)

(assert (=> b!5040044 (= e!3147620 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (left!42697 (left!42697 t!4198)))) true) (content!10352 (t!370961 (list!18909 (left!42697 (left!42697 t!4198)))))))))

(assert (= (and d!1621348 c!863494) b!5040043))

(assert (= (and d!1621348 (not c!863494)) b!5040044))

(declare-fun m!6074102 () Bool)

(assert (=> b!5040044 m!6074102))

(assert (=> b!5040044 m!6074016))

(assert (=> d!1620938 d!1621348))

(declare-fun d!1621350 () Bool)

(declare-fun c!863495 () Bool)

(assert (=> d!1621350 (= c!863495 ((_ is Nil!58300) (list!18909 (right!43027 (left!42697 t!4198)))))))

(declare-fun e!3147621 () (InoxSet T!104180))

(assert (=> d!1621350 (= (content!10352 (list!18909 (right!43027 (left!42697 t!4198)))) e!3147621)))

(declare-fun b!5040045 () Bool)

(assert (=> b!5040045 (= e!3147621 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040046 () Bool)

(assert (=> b!5040046 (= e!3147621 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (right!43027 (left!42697 t!4198)))) true) (content!10352 (t!370961 (list!18909 (right!43027 (left!42697 t!4198)))))))))

(assert (= (and d!1621350 c!863495) b!5040045))

(assert (= (and d!1621350 (not c!863495)) b!5040046))

(declare-fun m!6074104 () Bool)

(assert (=> b!5040046 m!6074104))

(declare-fun m!6074106 () Bool)

(assert (=> b!5040046 m!6074106))

(assert (=> d!1620938 d!1621350))

(declare-fun d!1621352 () Bool)

(declare-fun res!2147344 () Bool)

(declare-fun e!3147622 () Bool)

(assert (=> d!1621352 (=> (not res!2147344) (not e!3147622))))

(assert (=> d!1621352 (= res!2147344 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198)))))) 512))))

(assert (=> d!1621352 (= (inv!77153 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147622)))

(declare-fun b!5040047 () Bool)

(declare-fun res!2147345 () Bool)

(assert (=> b!5040047 (=> (not res!2147345) (not e!3147622))))

(assert (=> b!5040047 (= res!2147345 (= (csize!31255 (left!42697 (right!43027 (right!43027 t!4198)))) (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198))))))))))

(declare-fun b!5040048 () Bool)

(assert (=> b!5040048 (= e!3147622 (and (> (csize!31255 (left!42697 (right!43027 (right!43027 t!4198)))) 0) (<= (csize!31255 (left!42697 (right!43027 (right!43027 t!4198)))) 512)))))

(assert (= (and d!1621352 res!2147344) b!5040047))

(assert (= (and b!5040047 res!2147345) b!5040048))

(declare-fun m!6074108 () Bool)

(assert (=> d!1621352 m!6074108))

(assert (=> d!1621352 m!6074108))

(declare-fun m!6074110 () Bool)

(assert (=> d!1621352 m!6074110))

(assert (=> b!5040047 m!6074108))

(assert (=> b!5040047 m!6074108))

(assert (=> b!5040047 m!6074110))

(assert (=> b!5039613 d!1621352))

(declare-fun d!1621354 () Bool)

(declare-fun res!2147346 () Bool)

(declare-fun e!3147623 () Bool)

(assert (=> d!1621354 (=> (not res!2147346) (not e!3147623))))

(assert (=> d!1621354 (= res!2147346 (= (csize!31254 (left!42697 (left!42697 (left!42697 t!4198)))) (+ (size!38897 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) (size!38897 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))))))))

(assert (=> d!1621354 (= (inv!77152 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147623)))

(declare-fun b!5040049 () Bool)

(declare-fun res!2147347 () Bool)

(assert (=> b!5040049 (=> (not res!2147347) (not e!3147623))))

(assert (=> b!5040049 (= res!2147347 (and (not (= (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))) Empty!15512)) (not (= (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))) Empty!15512))))))

(declare-fun b!5040050 () Bool)

(declare-fun res!2147348 () Bool)

(assert (=> b!5040050 (=> (not res!2147348) (not e!3147623))))

(assert (=> b!5040050 (= res!2147348 (= (cheight!15723 (left!42697 (left!42697 (left!42697 t!4198)))) (+ (max!0 (height!2091 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) 1)))))

(declare-fun b!5040051 () Bool)

(assert (=> b!5040051 (= e!3147623 (<= 0 (cheight!15723 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621354 res!2147346) b!5040049))

(assert (= (and b!5040049 res!2147347) b!5040050))

(assert (= (and b!5040050 res!2147348) b!5040051))

(declare-fun m!6074112 () Bool)

(assert (=> d!1621354 m!6074112))

(declare-fun m!6074114 () Bool)

(assert (=> d!1621354 m!6074114))

(assert (=> b!5040050 m!6073894))

(assert (=> b!5040050 m!6073896))

(assert (=> b!5040050 m!6073894))

(assert (=> b!5040050 m!6073896))

(declare-fun m!6074116 () Bool)

(assert (=> b!5040050 m!6074116))

(assert (=> b!5039559 d!1621354))

(declare-fun d!1621356 () Bool)

(declare-fun lt!2084200 () Int)

(assert (=> d!1621356 (>= lt!2084200 0)))

(declare-fun e!3147624 () Int)

(assert (=> d!1621356 (= lt!2084200 e!3147624)))

(declare-fun c!863496 () Bool)

(assert (=> d!1621356 (= c!863496 ((_ is Nil!58300) lt!2084103))))

(assert (=> d!1621356 (= (size!38898 lt!2084103) lt!2084200)))

(declare-fun b!5040052 () Bool)

(assert (=> b!5040052 (= e!3147624 0)))

(declare-fun b!5040053 () Bool)

(assert (=> b!5040053 (= e!3147624 (+ 1 (size!38898 (t!370961 lt!2084103))))))

(assert (= (and d!1621356 c!863496) b!5040052))

(assert (= (and d!1621356 (not c!863496)) b!5040053))

(declare-fun m!6074118 () Bool)

(assert (=> b!5040053 m!6074118))

(assert (=> b!5039516 d!1621356))

(declare-fun d!1621358 () Bool)

(declare-fun lt!2084201 () Int)

(assert (=> d!1621358 (>= lt!2084201 0)))

(declare-fun e!3147625 () Int)

(assert (=> d!1621358 (= lt!2084201 e!3147625)))

(declare-fun c!863497 () Bool)

(assert (=> d!1621358 (= c!863497 ((_ is Nil!58300) (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198))))))))

(assert (=> d!1621358 (= (size!38898 (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198))))) lt!2084201)))

(declare-fun b!5040054 () Bool)

(assert (=> b!5040054 (= e!3147625 0)))

(declare-fun b!5040055 () Bool)

(assert (=> b!5040055 (= e!3147625 (+ 1 (size!38898 (t!370961 (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198))))))))))

(assert (= (and d!1621358 c!863497) b!5040054))

(assert (= (and d!1621358 (not c!863497)) b!5040055))

(declare-fun m!6074120 () Bool)

(assert (=> b!5040055 m!6074120))

(assert (=> b!5039558 d!1621358))

(assert (=> b!5039651 d!1621190))

(assert (=> b!5039317 d!1620870))

(assert (=> b!5039317 d!1620872))

(declare-fun b!5040056 () Bool)

(declare-fun e!3147629 () Int)

(declare-fun e!3147628 () Int)

(assert (=> b!5040056 (= e!3147629 e!3147628)))

(declare-fun c!863499 () Bool)

(assert (=> b!5040056 (= c!863499 (>= (- (- i!618 1) 1) (size!38898 (t!370961 (t!370961 lt!2084040)))))))

(declare-fun b!5040057 () Bool)

(declare-fun e!3147626 () List!58424)

(assert (=> b!5040057 (= e!3147626 (Cons!58300 (h!64748 (t!370961 (t!370961 lt!2084040))) (take!822 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1))))))

(declare-fun b!5040058 () Bool)

(declare-fun e!3147627 () Bool)

(declare-fun lt!2084202 () List!58424)

(assert (=> b!5040058 (= e!3147627 (= (size!38898 lt!2084202) e!3147629))))

(declare-fun c!863498 () Bool)

(assert (=> b!5040058 (= c!863498 (<= (- (- i!618 1) 1) 0))))

(declare-fun b!5040059 () Bool)

(assert (=> b!5040059 (= e!3147629 0)))

(declare-fun d!1621360 () Bool)

(assert (=> d!1621360 e!3147627))

(declare-fun res!2147349 () Bool)

(assert (=> d!1621360 (=> (not res!2147349) (not e!3147627))))

(assert (=> d!1621360 (= res!2147349 (= ((_ map implies) (content!10352 lt!2084202) (content!10352 (t!370961 (t!370961 lt!2084040)))) ((as const (InoxSet T!104180)) true)))))

(assert (=> d!1621360 (= lt!2084202 e!3147626)))

(declare-fun c!863500 () Bool)

(assert (=> d!1621360 (= c!863500 (or ((_ is Nil!58300) (t!370961 (t!370961 lt!2084040))) (<= (- (- i!618 1) 1) 0)))))

(assert (=> d!1621360 (= (take!822 (t!370961 (t!370961 lt!2084040)) (- (- i!618 1) 1)) lt!2084202)))

(declare-fun b!5040060 () Bool)

(assert (=> b!5040060 (= e!3147628 (- (- i!618 1) 1))))

(declare-fun b!5040061 () Bool)

(assert (=> b!5040061 (= e!3147628 (size!38898 (t!370961 (t!370961 lt!2084040))))))

(declare-fun b!5040062 () Bool)

(assert (=> b!5040062 (= e!3147626 Nil!58300)))

(assert (= (and d!1621360 c!863500) b!5040062))

(assert (= (and d!1621360 (not c!863500)) b!5040057))

(assert (= (and d!1621360 res!2147349) b!5040058))

(assert (= (and b!5040058 c!863498) b!5040059))

(assert (= (and b!5040058 (not c!863498)) b!5040056))

(assert (= (and b!5040056 c!863499) b!5040061))

(assert (= (and b!5040056 (not c!863499)) b!5040060))

(declare-fun m!6074122 () Bool)

(assert (=> b!5040057 m!6074122))

(assert (=> b!5040061 m!6073884))

(declare-fun m!6074124 () Bool)

(assert (=> b!5040058 m!6074124))

(assert (=> b!5040056 m!6073884))

(declare-fun m!6074126 () Bool)

(assert (=> d!1621360 m!6074126))

(assert (=> d!1621360 m!6073882))

(assert (=> b!5039482 d!1621360))

(declare-fun d!1621362 () Bool)

(declare-fun c!863501 () Bool)

(assert (=> d!1621362 (= c!863501 ((_ is Nil!58300) lt!2084132))))

(declare-fun e!3147630 () (InoxSet T!104180))

(assert (=> d!1621362 (= (content!10352 lt!2084132) e!3147630)))

(declare-fun b!5040063 () Bool)

(assert (=> b!5040063 (= e!3147630 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040064 () Bool)

(assert (=> b!5040064 (= e!3147630 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084132) true) (content!10352 (t!370961 lt!2084132))))))

(assert (= (and d!1621362 c!863501) b!5040063))

(assert (= (and d!1621362 (not c!863501)) b!5040064))

(declare-fun m!6074128 () Bool)

(assert (=> b!5040064 m!6074128))

(declare-fun m!6074130 () Bool)

(assert (=> b!5040064 m!6074130))

(assert (=> d!1621016 d!1621362))

(assert (=> d!1621016 d!1621210))

(assert (=> d!1621016 d!1620990))

(declare-fun d!1621364 () Bool)

(declare-fun lt!2084203 () Int)

(assert (=> d!1621364 (>= lt!2084203 0)))

(declare-fun e!3147631 () Int)

(assert (=> d!1621364 (= lt!2084203 e!3147631)))

(declare-fun c!863502 () Bool)

(assert (=> d!1621364 (= c!863502 ((_ is Nil!58300) (t!370961 (t!370961 (list!18909 t!4198)))))))

(assert (=> d!1621364 (= (size!38898 (t!370961 (t!370961 (list!18909 t!4198)))) lt!2084203)))

(declare-fun b!5040065 () Bool)

(assert (=> b!5040065 (= e!3147631 0)))

(declare-fun b!5040066 () Bool)

(assert (=> b!5040066 (= e!3147631 (+ 1 (size!38898 (t!370961 (t!370961 (t!370961 (list!18909 t!4198)))))))))

(assert (= (and d!1621364 c!863502) b!5040065))

(assert (= (and d!1621364 (not c!863502)) b!5040066))

(declare-fun m!6074132 () Bool)

(assert (=> b!5040066 m!6074132))

(assert (=> b!5039580 d!1621364))

(declare-fun d!1621366 () Bool)

(declare-fun res!2147350 () Bool)

(declare-fun e!3147632 () Bool)

(assert (=> d!1621366 (=> (not res!2147350) (not e!3147632))))

(assert (=> d!1621366 (= res!2147350 (= (csize!31254 (right!43027 (left!42697 (right!43027 t!4198)))) (+ (size!38897 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) (size!38897 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))))

(assert (=> d!1621366 (= (inv!77152 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147632)))

(declare-fun b!5040067 () Bool)

(declare-fun res!2147351 () Bool)

(assert (=> b!5040067 (=> (not res!2147351) (not e!3147632))))

(assert (=> b!5040067 (= res!2147351 (and (not (= (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))) Empty!15512)) (not (= (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))) Empty!15512))))))

(declare-fun b!5040068 () Bool)

(declare-fun res!2147352 () Bool)

(assert (=> b!5040068 (=> (not res!2147352) (not e!3147632))))

(assert (=> b!5040068 (= res!2147352 (= (cheight!15723 (right!43027 (left!42697 (right!43027 t!4198)))) (+ (max!0 (height!2091 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) 1)))))

(declare-fun b!5040069 () Bool)

(assert (=> b!5040069 (= e!3147632 (<= 0 (cheight!15723 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621366 res!2147350) b!5040067))

(assert (= (and b!5040067 res!2147351) b!5040068))

(assert (= (and b!5040068 res!2147352) b!5040069))

(declare-fun m!6074134 () Bool)

(assert (=> d!1621366 m!6074134))

(declare-fun m!6074136 () Bool)

(assert (=> d!1621366 m!6074136))

(declare-fun m!6074138 () Bool)

(assert (=> b!5040068 m!6074138))

(declare-fun m!6074140 () Bool)

(assert (=> b!5040068 m!6074140))

(assert (=> b!5040068 m!6074138))

(assert (=> b!5040068 m!6074140))

(declare-fun m!6074142 () Bool)

(assert (=> b!5040068 m!6074142))

(assert (=> b!5039478 d!1621366))

(declare-fun d!1621368 () Bool)

(declare-fun c!863503 () Bool)

(assert (=> d!1621368 (= c!863503 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun e!3147633 () Bool)

(assert (=> d!1621368 (= (inv!77150 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) e!3147633)))

(declare-fun b!5040070 () Bool)

(assert (=> b!5040070 (= e!3147633 (inv!77152 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5040071 () Bool)

(declare-fun e!3147634 () Bool)

(assert (=> b!5040071 (= e!3147633 e!3147634)))

(declare-fun res!2147353 () Bool)

(assert (=> b!5040071 (= res!2147353 (not ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5040071 (=> res!2147353 e!3147634)))

(declare-fun b!5040072 () Bool)

(assert (=> b!5040072 (= e!3147634 (inv!77153 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621368 c!863503) b!5040070))

(assert (= (and d!1621368 (not c!863503)) b!5040071))

(assert (= (and b!5040071 (not res!2147353)) b!5040072))

(declare-fun m!6074144 () Bool)

(assert (=> b!5040070 m!6074144))

(declare-fun m!6074146 () Bool)

(assert (=> b!5040072 m!6074146))

(assert (=> b!5039679 d!1621368))

(declare-fun d!1621370 () Bool)

(declare-fun c!863504 () Bool)

(assert (=> d!1621370 (= c!863504 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun e!3147635 () Bool)

(assert (=> d!1621370 (= (inv!77150 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))) e!3147635)))

(declare-fun b!5040073 () Bool)

(assert (=> b!5040073 (= e!3147635 (inv!77152 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5040074 () Bool)

(declare-fun e!3147636 () Bool)

(assert (=> b!5040074 (= e!3147635 e!3147636)))

(declare-fun res!2147354 () Bool)

(assert (=> b!5040074 (= res!2147354 (not ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(assert (=> b!5040074 (=> res!2147354 e!3147636)))

(declare-fun b!5040075 () Bool)

(assert (=> b!5040075 (= e!3147636 (inv!77153 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621370 c!863504) b!5040073))

(assert (= (and d!1621370 (not c!863504)) b!5040074))

(assert (= (and b!5040074 (not res!2147354)) b!5040075))

(declare-fun m!6074148 () Bool)

(assert (=> b!5040073 m!6074148))

(declare-fun m!6074150 () Bool)

(assert (=> b!5040075 m!6074150))

(assert (=> b!5039679 d!1621370))

(declare-fun d!1621372 () Bool)

(declare-fun c!863505 () Bool)

(assert (=> d!1621372 (= c!863505 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun e!3147637 () Bool)

(assert (=> d!1621372 (= (inv!77150 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) e!3147637)))

(declare-fun b!5040076 () Bool)

(assert (=> b!5040076 (= e!3147637 (inv!77152 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040077 () Bool)

(declare-fun e!3147638 () Bool)

(assert (=> b!5040077 (= e!3147637 e!3147638)))

(declare-fun res!2147355 () Bool)

(assert (=> b!5040077 (= res!2147355 (not ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5040077 (=> res!2147355 e!3147638)))

(declare-fun b!5040078 () Bool)

(assert (=> b!5040078 (= e!3147638 (inv!77153 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621372 c!863505) b!5040076))

(assert (= (and d!1621372 (not c!863505)) b!5040077))

(assert (= (and b!5040077 (not res!2147355)) b!5040078))

(declare-fun m!6074152 () Bool)

(assert (=> b!5040076 m!6074152))

(declare-fun m!6074154 () Bool)

(assert (=> b!5040078 m!6074154))

(assert (=> b!5039670 d!1621372))

(declare-fun d!1621374 () Bool)

(declare-fun c!863506 () Bool)

(assert (=> d!1621374 (= c!863506 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun e!3147639 () Bool)

(assert (=> d!1621374 (= (inv!77150 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))) e!3147639)))

(declare-fun b!5040079 () Bool)

(assert (=> b!5040079 (= e!3147639 (inv!77152 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040080 () Bool)

(declare-fun e!3147640 () Bool)

(assert (=> b!5040080 (= e!3147639 e!3147640)))

(declare-fun res!2147356 () Bool)

(assert (=> b!5040080 (= res!2147356 (not ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5040080 (=> res!2147356 e!3147640)))

(declare-fun b!5040081 () Bool)

(assert (=> b!5040081 (= e!3147640 (inv!77153 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621374 c!863506) b!5040079))

(assert (= (and d!1621374 (not c!863506)) b!5040080))

(assert (= (and b!5040080 (not res!2147356)) b!5040081))

(declare-fun m!6074156 () Bool)

(assert (=> b!5040079 m!6074156))

(declare-fun m!6074158 () Bool)

(assert (=> b!5040081 m!6074158))

(assert (=> b!5039670 d!1621374))

(declare-fun d!1621376 () Bool)

(declare-fun lt!2084204 () Int)

(assert (=> d!1621376 (>= lt!2084204 0)))

(declare-fun e!3147641 () Int)

(assert (=> d!1621376 (= lt!2084204 e!3147641)))

(declare-fun c!863507 () Bool)

(assert (=> d!1621376 (= c!863507 ((_ is Nil!58300) (list!18910 (xs!18838 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621376 (= (size!38898 (list!18910 (xs!18838 (left!42697 (right!43027 t!4198))))) lt!2084204)))

(declare-fun b!5040082 () Bool)

(assert (=> b!5040082 (= e!3147641 0)))

(declare-fun b!5040083 () Bool)

(assert (=> b!5040083 (= e!3147641 (+ 1 (size!38898 (t!370961 (list!18910 (xs!18838 (left!42697 (right!43027 t!4198))))))))))

(assert (= (and d!1621376 c!863507) b!5040082))

(assert (= (and d!1621376 (not c!863507)) b!5040083))

(declare-fun m!6074160 () Bool)

(assert (=> b!5040083 m!6074160))

(assert (=> b!5039473 d!1621376))

(declare-fun d!1621378 () Bool)

(assert (=> d!1621378 (= (list!18910 (xs!18838 (left!42697 (right!43027 t!4198)))) (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198)))))))

(assert (=> b!5039473 d!1621378))

(declare-fun b!5040084 () Bool)

(declare-fun res!2147357 () Bool)

(declare-fun e!3147643 () Bool)

(assert (=> b!5040084 (=> (not res!2147357) (not e!3147643))))

(assert (=> b!5040084 (= res!2147357 (isBalanced!4374 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5040085 () Bool)

(declare-fun res!2147362 () Bool)

(assert (=> b!5040085 (=> (not res!2147362) (not e!3147643))))

(assert (=> b!5040085 (= res!2147362 (not (isEmpty!31530 (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5040086 () Bool)

(declare-fun res!2147361 () Bool)

(assert (=> b!5040086 (=> (not res!2147361) (not e!3147643))))

(assert (=> b!5040086 (= res!2147361 (isBalanced!4374 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))

(declare-fun b!5040087 () Bool)

(declare-fun e!3147642 () Bool)

(assert (=> b!5040087 (= e!3147642 e!3147643)))

(declare-fun res!2147359 () Bool)

(assert (=> b!5040087 (=> (not res!2147359) (not e!3147643))))

(assert (=> b!5040087 (= res!2147359 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))))

(declare-fun b!5040088 () Bool)

(assert (=> b!5040088 (= e!3147643 (not (isEmpty!31530 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5040089 () Bool)

(declare-fun res!2147358 () Bool)

(assert (=> b!5040089 (=> (not res!2147358) (not e!3147643))))

(assert (=> b!5040089 (= res!2147358 (<= (- (height!2091 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) 1))))

(declare-fun d!1621380 () Bool)

(declare-fun res!2147360 () Bool)

(assert (=> d!1621380 (=> res!2147360 e!3147642)))

(assert (=> d!1621380 (= res!2147360 (not ((_ is Node!15512) (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621380 (= (isBalanced!4374 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147642)))

(assert (= (and d!1621380 (not res!2147360)) b!5040087))

(assert (= (and b!5040087 res!2147359) b!5040089))

(assert (= (and b!5040089 res!2147358) b!5040084))

(assert (= (and b!5040084 res!2147357) b!5040086))

(assert (= (and b!5040086 res!2147361) b!5040085))

(assert (= (and b!5040085 res!2147362) b!5040088))

(declare-fun m!6074162 () Bool)

(assert (=> b!5040085 m!6074162))

(declare-fun m!6074164 () Bool)

(assert (=> b!5040089 m!6074164))

(declare-fun m!6074166 () Bool)

(assert (=> b!5040089 m!6074166))

(declare-fun m!6074168 () Bool)

(assert (=> b!5040084 m!6074168))

(declare-fun m!6074170 () Bool)

(assert (=> b!5040088 m!6074170))

(declare-fun m!6074172 () Bool)

(assert (=> b!5040086 m!6074172))

(assert (=> b!5040087 m!6074164))

(assert (=> b!5040087 m!6074166))

(assert (=> b!5039619 d!1621380))

(assert (=> bm!351392 d!1621242))

(declare-fun d!1621382 () Bool)

(declare-fun res!2147363 () Bool)

(declare-fun e!3147644 () Bool)

(assert (=> d!1621382 (=> (not res!2147363) (not e!3147644))))

(assert (=> d!1621382 (= res!2147363 (= (csize!31254 (right!43027 (left!42697 (left!42697 t!4198)))) (+ (size!38897 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) (size!38897 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))))))))

(assert (=> d!1621382 (= (inv!77152 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147644)))

(declare-fun b!5040090 () Bool)

(declare-fun res!2147364 () Bool)

(assert (=> b!5040090 (=> (not res!2147364) (not e!3147644))))

(assert (=> b!5040090 (= res!2147364 (and (not (= (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))) Empty!15512)) (not (= (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))) Empty!15512))))))

(declare-fun b!5040091 () Bool)

(declare-fun res!2147365 () Bool)

(assert (=> b!5040091 (=> (not res!2147365) (not e!3147644))))

(assert (=> b!5040091 (= res!2147365 (= (cheight!15723 (right!43027 (left!42697 (left!42697 t!4198)))) (+ (max!0 (height!2091 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) 1)))))

(declare-fun b!5040092 () Bool)

(assert (=> b!5040092 (= e!3147644 (<= 0 (cheight!15723 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621382 res!2147363) b!5040090))

(assert (= (and b!5040090 res!2147364) b!5040091))

(assert (= (and b!5040091 res!2147365) b!5040092))

(declare-fun m!6074174 () Bool)

(assert (=> d!1621382 m!6074174))

(declare-fun m!6074176 () Bool)

(assert (=> d!1621382 m!6074176))

(assert (=> b!5040091 m!6074164))

(assert (=> b!5040091 m!6074166))

(assert (=> b!5040091 m!6074164))

(assert (=> b!5040091 m!6074166))

(declare-fun m!6074178 () Bool)

(assert (=> b!5040091 m!6074178))

(assert (=> b!5039562 d!1621382))

(declare-fun d!1621384 () Bool)

(declare-fun c!863508 () Bool)

(assert (=> d!1621384 (= c!863508 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun e!3147645 () Bool)

(assert (=> d!1621384 (= (inv!77150 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) e!3147645)))

(declare-fun b!5040093 () Bool)

(assert (=> b!5040093 (= e!3147645 (inv!77152 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040094 () Bool)

(declare-fun e!3147646 () Bool)

(assert (=> b!5040094 (= e!3147645 e!3147646)))

(declare-fun res!2147366 () Bool)

(assert (=> b!5040094 (= res!2147366 (not ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5040094 (=> res!2147366 e!3147646)))

(declare-fun b!5040095 () Bool)

(assert (=> b!5040095 (= e!3147646 (inv!77153 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621384 c!863508) b!5040093))

(assert (= (and d!1621384 (not c!863508)) b!5040094))

(assert (= (and b!5040094 (not res!2147366)) b!5040095))

(declare-fun m!6074180 () Bool)

(assert (=> b!5040093 m!6074180))

(declare-fun m!6074182 () Bool)

(assert (=> b!5040095 m!6074182))

(assert (=> b!5039653 d!1621384))

(declare-fun d!1621386 () Bool)

(declare-fun c!863509 () Bool)

(assert (=> d!1621386 (= c!863509 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun e!3147647 () Bool)

(assert (=> d!1621386 (= (inv!77150 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))) e!3147647)))

(declare-fun b!5040096 () Bool)

(assert (=> b!5040096 (= e!3147647 (inv!77152 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040097 () Bool)

(declare-fun e!3147648 () Bool)

(assert (=> b!5040097 (= e!3147647 e!3147648)))

(declare-fun res!2147367 () Bool)

(assert (=> b!5040097 (= res!2147367 (not ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5040097 (=> res!2147367 e!3147648)))

(declare-fun b!5040098 () Bool)

(assert (=> b!5040098 (= e!3147648 (inv!77153 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621386 c!863509) b!5040096))

(assert (= (and d!1621386 (not c!863509)) b!5040097))

(assert (= (and b!5040097 (not res!2147367)) b!5040098))

(declare-fun m!6074184 () Bool)

(assert (=> b!5040096 m!6074184))

(declare-fun m!6074186 () Bool)

(assert (=> b!5040098 m!6074186))

(assert (=> b!5039653 d!1621386))

(assert (=> b!5039542 d!1621360))

(declare-fun d!1621388 () Bool)

(declare-fun lt!2084205 () Int)

(assert (=> d!1621388 (>= lt!2084205 0)))

(declare-fun e!3147649 () Int)

(assert (=> d!1621388 (= lt!2084205 e!3147649)))

(declare-fun c!863510 () Bool)

(assert (=> d!1621388 (= c!863510 ((_ is Nil!58300) lt!2084132))))

(assert (=> d!1621388 (= (size!38898 lt!2084132) lt!2084205)))

(declare-fun b!5040099 () Bool)

(assert (=> b!5040099 (= e!3147649 0)))

(declare-fun b!5040100 () Bool)

(assert (=> b!5040100 (= e!3147649 (+ 1 (size!38898 (t!370961 lt!2084132))))))

(assert (= (and d!1621388 c!863510) b!5040099))

(assert (= (and d!1621388 (not c!863510)) b!5040100))

(declare-fun m!6074188 () Bool)

(assert (=> b!5040100 m!6074188))

(assert (=> b!5039639 d!1621388))

(declare-fun d!1621390 () Bool)

(declare-fun lt!2084206 () Int)

(assert (=> d!1621390 (>= lt!2084206 0)))

(declare-fun e!3147650 () Int)

(assert (=> d!1621390 (= lt!2084206 e!3147650)))

(declare-fun c!863511 () Bool)

(assert (=> d!1621390 (= c!863511 ((_ is Nil!58300) (t!370961 (list!18909 (left!42697 t!4198)))))))

(assert (=> d!1621390 (= (size!38898 (t!370961 (list!18909 (left!42697 t!4198)))) lt!2084206)))

(declare-fun b!5040101 () Bool)

(assert (=> b!5040101 (= e!3147650 0)))

(declare-fun b!5040102 () Bool)

(assert (=> b!5040102 (= e!3147650 (+ 1 (size!38898 (t!370961 (t!370961 (list!18909 (left!42697 t!4198)))))))))

(assert (= (and d!1621390 c!863511) b!5040101))

(assert (= (and d!1621390 (not c!863511)) b!5040102))

(assert (=> b!5040102 m!6074036))

(assert (=> b!5039639 d!1621390))

(assert (=> b!5039639 d!1620972))

(declare-fun b!5040104 () Bool)

(declare-fun lt!2084208 () tuple2!63234)

(assert (=> b!5040104 (= lt!2084208 (splitAtIndex!207 (t!370961 (t!370961 (t!370961 (t!370961 lt!2084040)))) (- (- (- (- i!618 1) 1) 1) 1)))))

(declare-fun e!3147653 () tuple2!63234)

(assert (=> b!5040104 (= e!3147653 (tuple2!63235 (Cons!58300 (h!64748 (t!370961 (t!370961 (t!370961 lt!2084040)))) (_1!34920 lt!2084208)) (_2!34920 lt!2084208)))))

(declare-fun b!5040105 () Bool)

(declare-fun e!3147652 () tuple2!63234)

(assert (=> b!5040105 (= e!3147652 (tuple2!63235 Nil!58300 Nil!58300))))

(declare-fun b!5040106 () Bool)

(declare-fun lt!2084207 () tuple2!63234)

(declare-fun e!3147651 () Bool)

(assert (=> b!5040106 (= e!3147651 (= (_2!34920 lt!2084207) (drop!2629 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1))))))

(declare-fun b!5040107 () Bool)

(assert (=> b!5040107 (= e!3147652 e!3147653)))

(declare-fun c!863513 () Bool)

(assert (=> b!5040107 (= c!863513 (<= (- (- (- i!618 1) 1) 1) 0))))

(declare-fun b!5040108 () Bool)

(declare-fun res!2147368 () Bool)

(assert (=> b!5040108 (=> (not res!2147368) (not e!3147651))))

(assert (=> b!5040108 (= res!2147368 (= (_1!34920 lt!2084207) (take!822 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1))))))

(declare-fun b!5040103 () Bool)

(assert (=> b!5040103 (= e!3147653 (tuple2!63235 Nil!58300 (t!370961 (t!370961 (t!370961 lt!2084040)))))))

(declare-fun d!1621392 () Bool)

(assert (=> d!1621392 e!3147651))

(declare-fun res!2147369 () Bool)

(assert (=> d!1621392 (=> (not res!2147369) (not e!3147651))))

(assert (=> d!1621392 (= res!2147369 (= (++!12724 (_1!34920 lt!2084207) (_2!34920 lt!2084207)) (t!370961 (t!370961 (t!370961 lt!2084040)))))))

(assert (=> d!1621392 (= lt!2084207 e!3147652)))

(declare-fun c!863512 () Bool)

(assert (=> d!1621392 (= c!863512 ((_ is Nil!58300) (t!370961 (t!370961 (t!370961 lt!2084040)))))))

(assert (=> d!1621392 (= (splitAtIndex!207 (t!370961 (t!370961 (t!370961 lt!2084040))) (- (- (- i!618 1) 1) 1)) lt!2084207)))

(assert (= (and d!1621392 c!863512) b!5040105))

(assert (= (and d!1621392 (not c!863512)) b!5040107))

(assert (= (and b!5040107 c!863513) b!5040103))

(assert (= (and b!5040107 (not c!863513)) b!5040104))

(assert (= (and d!1621392 res!2147369) b!5040108))

(assert (= (and b!5040108 res!2147368) b!5040106))

(declare-fun m!6074190 () Bool)

(assert (=> b!5040104 m!6074190))

(assert (=> b!5040106 m!6073886))

(assert (=> b!5040108 m!6074122))

(declare-fun m!6074192 () Bool)

(assert (=> d!1621392 m!6074192))

(assert (=> b!5039538 d!1621392))

(assert (=> b!5039536 d!1621222))

(assert (=> b!5039536 d!1621224))

(assert (=> d!1620860 d!1621376))

(assert (=> d!1620860 d!1621378))

(declare-fun d!1621394 () Bool)

(declare-fun lt!2084209 () Int)

(assert (=> d!1621394 (>= lt!2084209 0)))

(declare-fun e!3147654 () Int)

(assert (=> d!1621394 (= lt!2084209 e!3147654)))

(declare-fun c!863514 () Bool)

(assert (=> d!1621394 (= c!863514 ((_ is Nil!58300) lt!2084129))))

(assert (=> d!1621394 (= (size!38898 lt!2084129) lt!2084209)))

(declare-fun b!5040109 () Bool)

(assert (=> b!5040109 (= e!3147654 0)))

(declare-fun b!5040110 () Bool)

(assert (=> b!5040110 (= e!3147654 (+ 1 (size!38898 (t!370961 lt!2084129))))))

(assert (= (and d!1621394 c!863514) b!5040109))

(assert (= (and d!1621394 (not c!863514)) b!5040110))

(declare-fun m!6074194 () Bool)

(assert (=> b!5040110 m!6074194))

(assert (=> b!5039627 d!1621394))

(declare-fun d!1621396 () Bool)

(declare-fun lt!2084210 () Int)

(assert (=> d!1621396 (>= lt!2084210 0)))

(declare-fun e!3147655 () Int)

(assert (=> d!1621396 (= lt!2084210 e!3147655)))

(declare-fun c!863515 () Bool)

(assert (=> d!1621396 (= c!863515 ((_ is Nil!58300) (t!370961 (_1!34920 lt!2084052))))))

(assert (=> d!1621396 (= (size!38898 (t!370961 (_1!34920 lt!2084052))) lt!2084210)))

(declare-fun b!5040111 () Bool)

(assert (=> b!5040111 (= e!3147655 0)))

(declare-fun b!5040112 () Bool)

(assert (=> b!5040112 (= e!3147655 (+ 1 (size!38898 (t!370961 (t!370961 (_1!34920 lt!2084052))))))))

(assert (= (and d!1621396 c!863515) b!5040111))

(assert (= (and d!1621396 (not c!863515)) b!5040112))

(assert (=> b!5040112 m!6074008))

(assert (=> b!5039627 d!1621396))

(assert (=> b!5039627 d!1620958))

(declare-fun d!1621398 () Bool)

(assert (=> d!1621398 (= (max!0 (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198))))) (ite (< (height!2091 (left!42697 (left!42697 (left!42697 t!4198)))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (left!42697 t!4198)))) (height!2091 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> b!5039529 d!1621398))

(assert (=> b!5039529 d!1621278))

(assert (=> b!5039529 d!1621280))

(declare-fun d!1621400 () Bool)

(declare-fun e!3147657 () Bool)

(assert (=> d!1621400 e!3147657))

(declare-fun res!2147371 () Bool)

(assert (=> d!1621400 (=> (not res!2147371) (not e!3147657))))

(declare-fun lt!2084211 () List!58424)

(assert (=> d!1621400 (= res!2147371 (= (content!10352 lt!2084211) ((_ map or) (content!10352 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))) (content!10352 (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))))))))

(declare-fun e!3147656 () List!58424)

(assert (=> d!1621400 (= lt!2084211 e!3147656)))

(declare-fun c!863516 () Bool)

(assert (=> d!1621400 (= c!863516 ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (=> d!1621400 (= (++!12724 (list!18909 (left!42697 (left!42697 (left!42697 t!4198)))) (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))) lt!2084211)))

(declare-fun b!5040115 () Bool)

(declare-fun res!2147370 () Bool)

(assert (=> b!5040115 (=> (not res!2147370) (not e!3147657))))

(assert (=> b!5040115 (= res!2147370 (= (size!38898 lt!2084211) (+ (size!38898 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))) (size!38898 (list!18909 (right!43027 (left!42697 (left!42697 t!4198))))))))))

(declare-fun b!5040113 () Bool)

(assert (=> b!5040113 (= e!3147656 (list!18909 (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5040114 () Bool)

(assert (=> b!5040114 (= e!3147656 (Cons!58300 (h!64748 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))) (++!12724 (t!370961 (list!18909 (left!42697 (left!42697 (left!42697 t!4198))))) (list!18909 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5040116 () Bool)

(assert (=> b!5040116 (= e!3147657 (or (not (= (list!18909 (right!43027 (left!42697 (left!42697 t!4198)))) Nil!58300)) (= lt!2084211 (list!18909 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(assert (= (and d!1621400 c!863516) b!5040113))

(assert (= (and d!1621400 (not c!863516)) b!5040114))

(assert (= (and d!1621400 res!2147371) b!5040115))

(assert (= (and b!5040115 res!2147370) b!5040116))

(declare-fun m!6074196 () Bool)

(assert (=> d!1621400 m!6074196))

(assert (=> d!1621400 m!6073286))

(declare-fun m!6074198 () Bool)

(assert (=> d!1621400 m!6074198))

(assert (=> d!1621400 m!6073288))

(declare-fun m!6074200 () Bool)

(assert (=> d!1621400 m!6074200))

(declare-fun m!6074202 () Bool)

(assert (=> b!5040115 m!6074202))

(assert (=> b!5040115 m!6073286))

(assert (=> b!5040115 m!6073952))

(assert (=> b!5040115 m!6073288))

(assert (=> b!5040115 m!6073954))

(assert (=> b!5040114 m!6073288))

(declare-fun m!6074204 () Bool)

(assert (=> b!5040114 m!6074204))

(assert (=> b!5039572 d!1621400))

(declare-fun d!1621402 () Bool)

(declare-fun c!863517 () Bool)

(assert (=> d!1621402 (= c!863517 ((_ is Empty!15512) (left!42697 (left!42697 (left!42697 t!4198)))))))

(declare-fun e!3147658 () List!58424)

(assert (=> d!1621402 (= (list!18909 (left!42697 (left!42697 (left!42697 t!4198)))) e!3147658)))

(declare-fun b!5040118 () Bool)

(declare-fun e!3147659 () List!58424)

(assert (=> b!5040118 (= e!3147658 e!3147659)))

(declare-fun c!863518 () Bool)

(assert (=> b!5040118 (= c!863518 ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5040117 () Bool)

(assert (=> b!5040117 (= e!3147658 Nil!58300)))

(declare-fun b!5040120 () Bool)

(assert (=> b!5040120 (= e!3147659 (++!12724 (list!18909 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) (list!18909 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5040119 () Bool)

(assert (=> b!5040119 (= e!3147659 (list!18910 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621402 c!863517) b!5040117))

(assert (= (and d!1621402 (not c!863517)) b!5040118))

(assert (= (and b!5040118 c!863518) b!5040119))

(assert (= (and b!5040118 (not c!863518)) b!5040120))

(declare-fun m!6074206 () Bool)

(assert (=> b!5040120 m!6074206))

(declare-fun m!6074208 () Bool)

(assert (=> b!5040120 m!6074208))

(assert (=> b!5040120 m!6074206))

(assert (=> b!5040120 m!6074208))

(declare-fun m!6074210 () Bool)

(assert (=> b!5040120 m!6074210))

(assert (=> b!5040119 m!6073842))

(assert (=> b!5039572 d!1621402))

(declare-fun d!1621404 () Bool)

(declare-fun c!863519 () Bool)

(assert (=> d!1621404 (= c!863519 ((_ is Empty!15512) (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun e!3147660 () List!58424)

(assert (=> d!1621404 (= (list!18909 (right!43027 (left!42697 (left!42697 t!4198)))) e!3147660)))

(declare-fun b!5040122 () Bool)

(declare-fun e!3147661 () List!58424)

(assert (=> b!5040122 (= e!3147660 e!3147661)))

(declare-fun c!863520 () Bool)

(assert (=> b!5040122 (= c!863520 ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 t!4198)))))))

(declare-fun b!5040121 () Bool)

(assert (=> b!5040121 (= e!3147660 Nil!58300)))

(declare-fun b!5040124 () Bool)

(assert (=> b!5040124 (= e!3147661 (++!12724 (list!18909 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) (list!18909 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))))))

(declare-fun b!5040123 () Bool)

(assert (=> b!5040123 (= e!3147661 (list!18910 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198))))))))

(assert (= (and d!1621404 c!863519) b!5040121))

(assert (= (and d!1621404 (not c!863519)) b!5040122))

(assert (= (and b!5040122 c!863520) b!5040123))

(assert (= (and b!5040122 (not c!863520)) b!5040124))

(declare-fun m!6074212 () Bool)

(assert (=> b!5040124 m!6074212))

(declare-fun m!6074214 () Bool)

(assert (=> b!5040124 m!6074214))

(assert (=> b!5040124 m!6074212))

(assert (=> b!5040124 m!6074214))

(declare-fun m!6074216 () Bool)

(assert (=> b!5040124 m!6074216))

(assert (=> b!5040123 m!6073906))

(assert (=> b!5039572 d!1621404))

(declare-fun b!5040125 () Bool)

(declare-fun res!2147372 () Bool)

(declare-fun e!3147663 () Bool)

(assert (=> b!5040125 (=> (not res!2147372) (not e!3147663))))

(assert (=> b!5040125 (= res!2147372 (isBalanced!4374 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040126 () Bool)

(declare-fun res!2147377 () Bool)

(assert (=> b!5040126 (=> (not res!2147377) (not e!3147663))))

(assert (=> b!5040126 (= res!2147377 (not (isEmpty!31530 (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040127 () Bool)

(declare-fun res!2147376 () Bool)

(assert (=> b!5040127 (=> (not res!2147376) (not e!3147663))))

(assert (=> b!5040127 (= res!2147376 (isBalanced!4374 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040128 () Bool)

(declare-fun e!3147662 () Bool)

(assert (=> b!5040128 (= e!3147662 e!3147663)))

(declare-fun res!2147374 () Bool)

(assert (=> b!5040128 (=> (not res!2147374) (not e!3147663))))

(assert (=> b!5040128 (= res!2147374 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))))

(declare-fun b!5040129 () Bool)

(assert (=> b!5040129 (= e!3147663 (not (isEmpty!31530 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040130 () Bool)

(declare-fun res!2147373 () Bool)

(assert (=> b!5040130 (=> (not res!2147373) (not e!3147663))))

(assert (=> b!5040130 (= res!2147373 (<= (- (height!2091 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) 1))))

(declare-fun d!1621406 () Bool)

(declare-fun res!2147375 () Bool)

(assert (=> d!1621406 (=> res!2147375 e!3147662)))

(assert (=> d!1621406 (= res!2147375 (not ((_ is Node!15512) (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621406 (= (isBalanced!4374 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147662)))

(assert (= (and d!1621406 (not res!2147375)) b!5040128))

(assert (= (and b!5040128 res!2147374) b!5040130))

(assert (= (and b!5040130 res!2147373) b!5040125))

(assert (= (and b!5040125 res!2147372) b!5040127))

(assert (= (and b!5040127 res!2147376) b!5040126))

(assert (= (and b!5040126 res!2147377) b!5040129))

(declare-fun m!6074218 () Bool)

(assert (=> b!5040126 m!6074218))

(assert (=> b!5040130 m!6073922))

(assert (=> b!5040130 m!6073924))

(declare-fun m!6074220 () Bool)

(assert (=> b!5040125 m!6074220))

(declare-fun m!6074222 () Bool)

(assert (=> b!5040129 m!6074222))

(declare-fun m!6074224 () Bool)

(assert (=> b!5040127 m!6074224))

(assert (=> b!5040128 m!6073922))

(assert (=> b!5040128 m!6073924))

(assert (=> b!5039521 d!1621406))

(declare-fun d!1621408 () Bool)

(declare-fun res!2147378 () Bool)

(declare-fun e!3147664 () Bool)

(assert (=> d!1621408 (=> (not res!2147378) (not e!3147664))))

(assert (=> d!1621408 (= res!2147378 (<= (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198)))))) 512))))

(assert (=> d!1621408 (= (inv!77153 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147664)))

(declare-fun b!5040131 () Bool)

(declare-fun res!2147379 () Bool)

(assert (=> b!5040131 (=> (not res!2147379) (not e!3147664))))

(assert (=> b!5040131 (= res!2147379 (= (csize!31255 (right!43027 (right!43027 (right!43027 t!4198)))) (size!38898 (list!18910 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198))))))))))

(declare-fun b!5040132 () Bool)

(assert (=> b!5040132 (= e!3147664 (and (> (csize!31255 (right!43027 (right!43027 (right!43027 t!4198)))) 0) (<= (csize!31255 (right!43027 (right!43027 (right!43027 t!4198)))) 512)))))

(assert (= (and d!1621408 res!2147378) b!5040131))

(assert (= (and b!5040131 res!2147379) b!5040132))

(declare-fun m!6074226 () Bool)

(assert (=> d!1621408 m!6074226))

(assert (=> d!1621408 m!6074226))

(declare-fun m!6074228 () Bool)

(assert (=> d!1621408 m!6074228))

(assert (=> b!5040131 m!6074226))

(assert (=> b!5040131 m!6074226))

(assert (=> b!5040131 m!6074228))

(assert (=> b!5039616 d!1621408))

(declare-fun d!1621410 () Bool)

(declare-fun lt!2084212 () Int)

(assert (=> d!1621410 (= lt!2084212 (size!38898 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621410 (= lt!2084212 (ite ((_ is Empty!15512) (left!42697 (left!42697 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 t!4198)))) (csize!31255 (left!42697 (left!42697 (right!43027 t!4198)))) (csize!31254 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(assert (=> d!1621410 (= (size!38897 (left!42697 (left!42697 (right!43027 t!4198)))) lt!2084212)))

(declare-fun bs!1188893 () Bool)

(assert (= bs!1188893 d!1621410))

(assert (=> bs!1188893 m!6073414))

(assert (=> bs!1188893 m!6073414))

(declare-fun m!6074230 () Bool)

(assert (=> bs!1188893 m!6074230))

(assert (=> d!1620896 d!1621410))

(declare-fun d!1621412 () Bool)

(declare-fun lt!2084213 () Int)

(assert (=> d!1621412 (= lt!2084213 (size!38898 (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621412 (= lt!2084213 (ite ((_ is Empty!15512) (right!43027 (left!42697 (right!43027 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 t!4198)))) (csize!31255 (right!43027 (left!42697 (right!43027 t!4198)))) (csize!31254 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(assert (=> d!1621412 (= (size!38897 (right!43027 (left!42697 (right!43027 t!4198)))) lt!2084213)))

(declare-fun bs!1188894 () Bool)

(assert (= bs!1188894 d!1621412))

(assert (=> bs!1188894 m!6073416))

(assert (=> bs!1188894 m!6073416))

(declare-fun m!6074232 () Bool)

(assert (=> bs!1188894 m!6074232))

(assert (=> d!1620896 d!1621412))

(declare-fun d!1621414 () Bool)

(declare-fun lt!2084214 () Int)

(assert (=> d!1621414 (>= lt!2084214 0)))

(declare-fun e!3147665 () Int)

(assert (=> d!1621414 (= lt!2084214 e!3147665)))

(declare-fun c!863521 () Bool)

(assert (=> d!1621414 (= c!863521 ((_ is Nil!58300) lt!2084115))))

(assert (=> d!1621414 (= (size!38898 lt!2084115) lt!2084214)))

(declare-fun b!5040133 () Bool)

(assert (=> b!5040133 (= e!3147665 0)))

(declare-fun b!5040134 () Bool)

(assert (=> b!5040134 (= e!3147665 (+ 1 (size!38898 (t!370961 lt!2084115))))))

(assert (= (and d!1621414 c!863521) b!5040133))

(assert (= (and d!1621414 (not c!863521)) b!5040134))

(declare-fun m!6074234 () Bool)

(assert (=> b!5040134 m!6074234))

(assert (=> b!5039567 d!1621414))

(assert (=> b!5039567 d!1621202))

(assert (=> b!5039567 d!1621196))

(declare-fun d!1621416 () Bool)

(declare-fun c!863522 () Bool)

(assert (=> d!1621416 (= c!863522 ((_ is Nil!58300) (t!370961 lt!2084072)))))

(declare-fun e!3147666 () (InoxSet T!104180))

(assert (=> d!1621416 (= (content!10352 (t!370961 lt!2084072)) e!3147666)))

(declare-fun b!5040135 () Bool)

(assert (=> b!5040135 (= e!3147666 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040136 () Bool)

(assert (=> b!5040136 (= e!3147666 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 lt!2084072)) true) (content!10352 (t!370961 (t!370961 lt!2084072)))))))

(assert (= (and d!1621416 c!863522) b!5040135))

(assert (= (and d!1621416 (not c!863522)) b!5040136))

(declare-fun m!6074236 () Bool)

(assert (=> b!5040136 m!6074236))

(declare-fun m!6074238 () Bool)

(assert (=> b!5040136 m!6074238))

(assert (=> b!5039606 d!1621416))

(declare-fun d!1621418 () Bool)

(declare-fun lt!2084215 () Bool)

(assert (=> d!1621418 (= lt!2084215 (isEmpty!31531 (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621418 (= lt!2084215 (= (size!38897 (right!43027 (right!43027 (left!42697 t!4198)))) 0))))

(assert (=> d!1621418 (= (isEmpty!31530 (right!43027 (right!43027 (left!42697 t!4198)))) lt!2084215)))

(declare-fun bs!1188895 () Bool)

(assert (= bs!1188895 d!1621418))

(assert (=> bs!1188895 m!6073294))

(assert (=> bs!1188895 m!6073294))

(declare-fun m!6074240 () Bool)

(assert (=> bs!1188895 m!6074240))

(assert (=> bs!1188895 m!6073250))

(assert (=> b!5039603 d!1621418))

(declare-fun d!1621420 () Bool)

(declare-fun c!863523 () Bool)

(assert (=> d!1621420 (= c!863523 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun e!3147667 () Bool)

(assert (=> d!1621420 (= (inv!77150 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) e!3147667)))

(declare-fun b!5040137 () Bool)

(assert (=> b!5040137 (= e!3147667 (inv!77152 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5040138 () Bool)

(declare-fun e!3147668 () Bool)

(assert (=> b!5040138 (= e!3147667 e!3147668)))

(declare-fun res!2147380 () Bool)

(assert (=> b!5040138 (= res!2147380 (not ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5040138 (=> res!2147380 e!3147668)))

(declare-fun b!5040139 () Bool)

(assert (=> b!5040139 (= e!3147668 (inv!77153 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621420 c!863523) b!5040137))

(assert (= (and d!1621420 (not c!863523)) b!5040138))

(assert (= (and b!5040138 (not res!2147380)) b!5040139))

(declare-fun m!6074242 () Bool)

(assert (=> b!5040137 m!6074242))

(declare-fun m!6074244 () Bool)

(assert (=> b!5040139 m!6074244))

(assert (=> b!5039661 d!1621420))

(declare-fun d!1621422 () Bool)

(declare-fun c!863524 () Bool)

(assert (=> d!1621422 (= c!863524 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun e!3147669 () Bool)

(assert (=> d!1621422 (= (inv!77150 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))) e!3147669)))

(declare-fun b!5040140 () Bool)

(assert (=> b!5040140 (= e!3147669 (inv!77152 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5040141 () Bool)

(declare-fun e!3147670 () Bool)

(assert (=> b!5040141 (= e!3147669 e!3147670)))

(declare-fun res!2147381 () Bool)

(assert (=> b!5040141 (= res!2147381 (not ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(assert (=> b!5040141 (=> res!2147381 e!3147670)))

(declare-fun b!5040142 () Bool)

(assert (=> b!5040142 (= e!3147670 (inv!77153 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621422 c!863524) b!5040140))

(assert (= (and d!1621422 (not c!863524)) b!5040141))

(assert (= (and b!5040141 (not res!2147381)) b!5040142))

(declare-fun m!6074246 () Bool)

(assert (=> b!5040140 m!6074246))

(declare-fun m!6074248 () Bool)

(assert (=> b!5040142 m!6074248))

(assert (=> b!5039661 d!1621422))

(declare-fun b!5040143 () Bool)

(declare-fun res!2147382 () Bool)

(declare-fun e!3147672 () Bool)

(assert (=> b!5040143 (=> (not res!2147382) (not e!3147672))))

(assert (=> b!5040143 (= res!2147382 (isBalanced!4374 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5040144 () Bool)

(declare-fun res!2147387 () Bool)

(assert (=> b!5040144 (=> (not res!2147387) (not e!3147672))))

(assert (=> b!5040144 (= res!2147387 (not (isEmpty!31530 (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5040145 () Bool)

(declare-fun res!2147386 () Bool)

(assert (=> b!5040145 (=> (not res!2147386) (not e!3147672))))

(assert (=> b!5040145 (= res!2147386 (isBalanced!4374 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))

(declare-fun b!5040146 () Bool)

(declare-fun e!3147671 () Bool)

(assert (=> b!5040146 (= e!3147671 e!3147672)))

(declare-fun res!2147384 () Bool)

(assert (=> b!5040146 (=> (not res!2147384) (not e!3147672))))

(assert (=> b!5040146 (= res!2147384 (<= (- 1) (- (height!2091 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))))

(declare-fun b!5040147 () Bool)

(assert (=> b!5040147 (= e!3147672 (not (isEmpty!31530 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(declare-fun b!5040148 () Bool)

(declare-fun res!2147383 () Bool)

(assert (=> b!5040148 (=> (not res!2147383) (not e!3147672))))

(assert (=> b!5040148 (= res!2147383 (<= (- (height!2091 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) 1))))

(declare-fun d!1621424 () Bool)

(declare-fun res!2147385 () Bool)

(assert (=> d!1621424 (=> res!2147385 e!3147671)))

(assert (=> d!1621424 (= res!2147385 (not ((_ is Node!15512) (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621424 (= (isBalanced!4374 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147671)))

(assert (= (and d!1621424 (not res!2147385)) b!5040146))

(assert (= (and b!5040146 res!2147384) b!5040148))

(assert (= (and b!5040148 res!2147383) b!5040143))

(assert (= (and b!5040143 res!2147382) b!5040145))

(assert (= (and b!5040145 res!2147386) b!5040144))

(assert (= (and b!5040144 res!2147387) b!5040147))

(declare-fun m!6074250 () Bool)

(assert (=> b!5040144 m!6074250))

(declare-fun m!6074252 () Bool)

(assert (=> b!5040148 m!6074252))

(declare-fun m!6074254 () Bool)

(assert (=> b!5040148 m!6074254))

(declare-fun m!6074256 () Bool)

(assert (=> b!5040143 m!6074256))

(declare-fun m!6074258 () Bool)

(assert (=> b!5040147 m!6074258))

(declare-fun m!6074260 () Bool)

(assert (=> b!5040145 m!6074260))

(assert (=> b!5040146 m!6074252))

(assert (=> b!5040146 m!6074254))

(assert (=> b!5039599 d!1621424))

(assert (=> b!5039647 d!1621378))

(declare-fun d!1621426 () Bool)

(declare-fun e!3147674 () Bool)

(assert (=> d!1621426 e!3147674))

(declare-fun res!2147389 () Bool)

(assert (=> d!1621426 (=> (not res!2147389) (not e!3147674))))

(declare-fun lt!2084216 () List!58424)

(assert (=> d!1621426 (= res!2147389 (= (content!10352 lt!2084216) ((_ map or) (content!10352 (t!370961 (list!18909 (left!42697 (right!43027 t!4198))))) (content!10352 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(declare-fun e!3147673 () List!58424)

(assert (=> d!1621426 (= lt!2084216 e!3147673)))

(declare-fun c!863525 () Bool)

(assert (=> d!1621426 (= c!863525 ((_ is Nil!58300) (t!370961 (list!18909 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621426 (= (++!12724 (t!370961 (list!18909 (left!42697 (right!43027 t!4198)))) (list!18909 (right!43027 (right!43027 t!4198)))) lt!2084216)))

(declare-fun b!5040151 () Bool)

(declare-fun res!2147388 () Bool)

(assert (=> b!5040151 (=> (not res!2147388) (not e!3147674))))

(assert (=> b!5040151 (= res!2147388 (= (size!38898 lt!2084216) (+ (size!38898 (t!370961 (list!18909 (left!42697 (right!43027 t!4198))))) (size!38898 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040149 () Bool)

(assert (=> b!5040149 (= e!3147673 (list!18909 (right!43027 (right!43027 t!4198))))))

(declare-fun b!5040150 () Bool)

(assert (=> b!5040150 (= e!3147673 (Cons!58300 (h!64748 (t!370961 (list!18909 (left!42697 (right!43027 t!4198))))) (++!12724 (t!370961 (t!370961 (list!18909 (left!42697 (right!43027 t!4198))))) (list!18909 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040152 () Bool)

(assert (=> b!5040152 (= e!3147674 (or (not (= (list!18909 (right!43027 (right!43027 t!4198))) Nil!58300)) (= lt!2084216 (t!370961 (list!18909 (left!42697 (right!43027 t!4198)))))))))

(assert (= (and d!1621426 c!863525) b!5040149))

(assert (= (and d!1621426 (not c!863525)) b!5040150))

(assert (= (and d!1621426 res!2147389) b!5040151))

(assert (= (and b!5040151 res!2147388) b!5040152))

(declare-fun m!6074262 () Bool)

(assert (=> d!1621426 m!6074262))

(declare-fun m!6074264 () Bool)

(assert (=> d!1621426 m!6074264))

(assert (=> d!1621426 m!6072848))

(assert (=> d!1621426 m!6073408))

(declare-fun m!6074266 () Bool)

(assert (=> b!5040151 m!6074266))

(assert (=> b!5040151 m!6074096))

(assert (=> b!5040151 m!6072848))

(assert (=> b!5040151 m!6073262))

(assert (=> b!5040150 m!6072848))

(declare-fun m!6074268 () Bool)

(assert (=> b!5040150 m!6074268))

(assert (=> b!5039642 d!1621426))

(declare-fun d!1621428 () Bool)

(declare-fun lt!2084217 () Int)

(assert (=> d!1621428 (>= lt!2084217 0)))

(declare-fun e!3147675 () Int)

(assert (=> d!1621428 (= lt!2084217 e!3147675)))

(declare-fun c!863526 () Bool)

(assert (=> d!1621428 (= c!863526 ((_ is Nil!58300) (t!370961 lt!2084073)))))

(assert (=> d!1621428 (= (size!38898 (t!370961 lt!2084073)) lt!2084217)))

(declare-fun b!5040153 () Bool)

(assert (=> b!5040153 (= e!3147675 0)))

(declare-fun b!5040154 () Bool)

(assert (=> b!5040154 (= e!3147675 (+ 1 (size!38898 (t!370961 (t!370961 lt!2084073)))))))

(assert (= (and d!1621428 c!863526) b!5040153))

(assert (= (and d!1621428 (not c!863526)) b!5040154))

(declare-fun m!6074270 () Bool)

(assert (=> b!5040154 m!6074270))

(assert (=> b!5039582 d!1621428))

(declare-fun d!1621430 () Bool)

(declare-fun lt!2084218 () Bool)

(assert (=> d!1621430 (= lt!2084218 (isEmpty!31531 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621430 (= lt!2084218 (= (size!38897 (left!42697 (left!42697 (right!43027 t!4198)))) 0))))

(assert (=> d!1621430 (= (isEmpty!31530 (left!42697 (left!42697 (right!43027 t!4198)))) lt!2084218)))

(declare-fun bs!1188896 () Bool)

(assert (= bs!1188896 d!1621430))

(assert (=> bs!1188896 m!6073414))

(assert (=> bs!1188896 m!6073414))

(declare-fun m!6074272 () Bool)

(assert (=> bs!1188896 m!6074272))

(assert (=> bs!1188896 m!6073198))

(assert (=> b!5039532 d!1621430))

(declare-fun d!1621432 () Bool)

(declare-fun res!2147390 () Bool)

(declare-fun e!3147676 () Bool)

(assert (=> d!1621432 (=> (not res!2147390) (not e!3147676))))

(assert (=> d!1621432 (= res!2147390 (= (csize!31254 (left!42697 (right!43027 (left!42697 t!4198)))) (+ (size!38897 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) (size!38897 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))))))))

(assert (=> d!1621432 (= (inv!77152 (left!42697 (right!43027 (left!42697 t!4198)))) e!3147676)))

(declare-fun b!5040155 () Bool)

(declare-fun res!2147391 () Bool)

(assert (=> b!5040155 (=> (not res!2147391) (not e!3147676))))

(assert (=> b!5040155 (= res!2147391 (and (not (= (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))) Empty!15512)) (not (= (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))) Empty!15512))))))

(declare-fun b!5040156 () Bool)

(declare-fun res!2147392 () Bool)

(assert (=> b!5040156 (=> (not res!2147392) (not e!3147676))))

(assert (=> b!5040156 (= res!2147392 (= (cheight!15723 (left!42697 (right!43027 (left!42697 t!4198)))) (+ (max!0 (height!2091 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) 1)))))

(declare-fun b!5040157 () Bool)

(assert (=> b!5040157 (= e!3147676 (<= 0 (cheight!15723 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621432 res!2147390) b!5040155))

(assert (= (and b!5040155 res!2147391) b!5040156))

(assert (= (and b!5040156 res!2147392) b!5040157))

(declare-fun m!6074274 () Bool)

(assert (=> d!1621432 m!6074274))

(declare-fun m!6074276 () Bool)

(assert (=> d!1621432 m!6074276))

(assert (=> b!5040156 m!6074252))

(assert (=> b!5040156 m!6074254))

(assert (=> b!5040156 m!6074252))

(assert (=> b!5040156 m!6074254))

(declare-fun m!6074278 () Bool)

(assert (=> b!5040156 m!6074278))

(assert (=> b!5039488 d!1621432))

(declare-fun d!1621434 () Bool)

(declare-fun lt!2084219 () Int)

(assert (=> d!1621434 (>= lt!2084219 0)))

(declare-fun e!3147677 () Int)

(assert (=> d!1621434 (= lt!2084219 e!3147677)))

(declare-fun c!863527 () Bool)

(assert (=> d!1621434 (= c!863527 ((_ is Nil!58300) (t!370961 lt!2084072)))))

(assert (=> d!1621434 (= (size!38898 (t!370961 lt!2084072)) lt!2084219)))

(declare-fun b!5040158 () Bool)

(assert (=> b!5040158 (= e!3147677 0)))

(declare-fun b!5040159 () Bool)

(assert (=> b!5040159 (= e!3147677 (+ 1 (size!38898 (t!370961 (t!370961 lt!2084072)))))))

(assert (= (and d!1621434 c!863527) b!5040158))

(assert (= (and d!1621434 (not c!863527)) b!5040159))

(declare-fun m!6074280 () Bool)

(assert (=> b!5040159 m!6074280))

(assert (=> b!5039594 d!1621434))

(declare-fun d!1621436 () Bool)

(declare-fun lt!2084220 () Int)

(assert (=> d!1621436 (>= lt!2084220 0)))

(declare-fun e!3147678 () Int)

(assert (=> d!1621436 (= lt!2084220 e!3147678)))

(declare-fun c!863528 () Bool)

(assert (=> d!1621436 (= c!863528 ((_ is Nil!58300) lt!2084100))))

(assert (=> d!1621436 (= (size!38898 lt!2084100) lt!2084220)))

(declare-fun b!5040160 () Bool)

(assert (=> b!5040160 (= e!3147678 0)))

(declare-fun b!5040161 () Bool)

(assert (=> b!5040161 (= e!3147678 (+ 1 (size!38898 (t!370961 lt!2084100))))))

(assert (= (and d!1621436 c!863528) b!5040160))

(assert (= (and d!1621436 (not c!863528)) b!5040161))

(declare-fun m!6074282 () Bool)

(assert (=> b!5040161 m!6074282))

(assert (=> b!5039483 d!1621436))

(declare-fun d!1621438 () Bool)

(assert (=> d!1621438 (= (inv!77151 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198)))))) 2147483647))))

(declare-fun bs!1188897 () Bool)

(assert (= bs!1188897 d!1621438))

(declare-fun m!6074284 () Bool)

(assert (=> bs!1188897 m!6074284))

(assert (=> b!5039680 d!1621438))

(declare-fun d!1621440 () Bool)

(assert (=> d!1621440 (= (inv!77151 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198)))))) 2147483647))))

(declare-fun bs!1188898 () Bool)

(assert (= bs!1188898 d!1621440))

(declare-fun m!6074286 () Bool)

(assert (=> bs!1188898 m!6074286))

(assert (=> b!5039671 d!1621440))

(declare-fun d!1621442 () Bool)

(declare-fun e!3147680 () Bool)

(assert (=> d!1621442 e!3147680))

(declare-fun res!2147394 () Bool)

(assert (=> d!1621442 (=> (not res!2147394) (not e!3147680))))

(declare-fun lt!2084221 () List!58424)

(assert (=> d!1621442 (= res!2147394 (= (content!10352 lt!2084221) ((_ map or) (content!10352 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))) (content!10352 (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))))))))

(declare-fun e!3147679 () List!58424)

(assert (=> d!1621442 (= lt!2084221 e!3147679)))

(declare-fun c!863529 () Bool)

(assert (=> d!1621442 (= c!863529 ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621442 (= (++!12724 (list!18909 (left!42697 (right!43027 (right!43027 t!4198)))) (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))) lt!2084221)))

(declare-fun b!5040164 () Bool)

(declare-fun res!2147393 () Bool)

(assert (=> b!5040164 (=> (not res!2147393) (not e!3147680))))

(assert (=> b!5040164 (= res!2147393 (= (size!38898 lt!2084221) (+ (size!38898 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))) (size!38898 (list!18909 (right!43027 (right!43027 (right!43027 t!4198))))))))))

(declare-fun b!5040162 () Bool)

(assert (=> b!5040162 (= e!3147679 (list!18909 (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5040163 () Bool)

(assert (=> b!5040163 (= e!3147679 (Cons!58300 (h!64748 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))) (++!12724 (t!370961 (list!18909 (left!42697 (right!43027 (right!43027 t!4198))))) (list!18909 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040165 () Bool)

(assert (=> b!5040165 (= e!3147680 (or (not (= (list!18909 (right!43027 (right!43027 (right!43027 t!4198)))) Nil!58300)) (= lt!2084221 (list!18909 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(assert (= (and d!1621442 c!863529) b!5040162))

(assert (= (and d!1621442 (not c!863529)) b!5040163))

(assert (= (and d!1621442 res!2147394) b!5040164))

(assert (= (and b!5040164 res!2147393) b!5040165))

(declare-fun m!6074288 () Bool)

(assert (=> d!1621442 m!6074288))

(assert (=> d!1621442 m!6073420))

(declare-fun m!6074290 () Bool)

(assert (=> d!1621442 m!6074290))

(assert (=> d!1621442 m!6073422))

(declare-fun m!6074292 () Bool)

(assert (=> d!1621442 m!6074292))

(declare-fun m!6074294 () Bool)

(assert (=> b!5040164 m!6074294))

(assert (=> b!5040164 m!6073420))

(assert (=> b!5040164 m!6074026))

(assert (=> b!5040164 m!6073422))

(assert (=> b!5040164 m!6074028))

(assert (=> b!5040163 m!6073422))

(declare-fun m!6074296 () Bool)

(assert (=> b!5040163 m!6074296))

(assert (=> b!5039652 d!1621442))

(declare-fun d!1621444 () Bool)

(declare-fun c!863530 () Bool)

(assert (=> d!1621444 (= c!863530 ((_ is Empty!15512) (left!42697 (right!43027 (right!43027 t!4198)))))))

(declare-fun e!3147681 () List!58424)

(assert (=> d!1621444 (= (list!18909 (left!42697 (right!43027 (right!43027 t!4198)))) e!3147681)))

(declare-fun b!5040167 () Bool)

(declare-fun e!3147682 () List!58424)

(assert (=> b!5040167 (= e!3147681 e!3147682)))

(declare-fun c!863531 () Bool)

(assert (=> b!5040167 (= c!863531 ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5040166 () Bool)

(assert (=> b!5040166 (= e!3147681 Nil!58300)))

(declare-fun b!5040169 () Bool)

(assert (=> b!5040169 (= e!3147682 (++!12724 (list!18909 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) (list!18909 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040168 () Bool)

(assert (=> b!5040168 (= e!3147682 (list!18910 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621444 c!863530) b!5040166))

(assert (= (and d!1621444 (not c!863530)) b!5040167))

(assert (= (and b!5040167 c!863531) b!5040168))

(assert (= (and b!5040167 (not c!863531)) b!5040169))

(declare-fun m!6074298 () Bool)

(assert (=> b!5040169 m!6074298))

(declare-fun m!6074300 () Bool)

(assert (=> b!5040169 m!6074300))

(assert (=> b!5040169 m!6074298))

(assert (=> b!5040169 m!6074300))

(declare-fun m!6074302 () Bool)

(assert (=> b!5040169 m!6074302))

(assert (=> b!5040168 m!6074108))

(assert (=> b!5039652 d!1621444))

(declare-fun d!1621446 () Bool)

(declare-fun c!863532 () Bool)

(assert (=> d!1621446 (= c!863532 ((_ is Empty!15512) (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun e!3147683 () List!58424)

(assert (=> d!1621446 (= (list!18909 (right!43027 (right!43027 (right!43027 t!4198)))) e!3147683)))

(declare-fun b!5040171 () Bool)

(declare-fun e!3147684 () List!58424)

(assert (=> b!5040171 (= e!3147683 e!3147684)))

(declare-fun c!863533 () Bool)

(assert (=> b!5040171 (= c!863533 ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 t!4198)))))))

(declare-fun b!5040170 () Bool)

(assert (=> b!5040170 (= e!3147683 Nil!58300)))

(declare-fun b!5040173 () Bool)

(assert (=> b!5040173 (= e!3147684 (++!12724 (list!18909 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) (list!18909 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(declare-fun b!5040172 () Bool)

(assert (=> b!5040172 (= e!3147684 (list!18910 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621446 c!863532) b!5040170))

(assert (= (and d!1621446 (not c!863532)) b!5040171))

(assert (= (and b!5040171 c!863533) b!5040172))

(assert (= (and b!5040171 (not c!863533)) b!5040173))

(declare-fun m!6074304 () Bool)

(assert (=> b!5040173 m!6074304))

(declare-fun m!6074306 () Bool)

(assert (=> b!5040173 m!6074306))

(assert (=> b!5040173 m!6074304))

(assert (=> b!5040173 m!6074306))

(declare-fun m!6074308 () Bool)

(assert (=> b!5040173 m!6074308))

(assert (=> b!5040172 m!6074226))

(assert (=> b!5039652 d!1621446))

(declare-fun d!1621448 () Bool)

(declare-fun lt!2084222 () Int)

(assert (=> d!1621448 (= lt!2084222 (size!38898 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621448 (= lt!2084222 (ite ((_ is Empty!15512) (left!42697 (right!43027 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 t!4198)))) (csize!31255 (left!42697 (right!43027 (left!42697 t!4198)))) (csize!31254 (left!42697 (right!43027 (left!42697 t!4198)))))))))

(assert (=> d!1621448 (= (size!38897 (left!42697 (right!43027 (left!42697 t!4198)))) lt!2084222)))

(declare-fun bs!1188899 () Bool)

(assert (= bs!1188899 d!1621448))

(assert (=> bs!1188899 m!6073292))

(assert (=> bs!1188899 m!6073292))

(assert (=> bs!1188899 m!6074070))

(assert (=> d!1620926 d!1621448))

(declare-fun d!1621450 () Bool)

(declare-fun lt!2084223 () Int)

(assert (=> d!1621450 (= lt!2084223 (size!38898 (list!18909 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621450 (= lt!2084223 (ite ((_ is Empty!15512) (right!43027 (right!43027 (left!42697 t!4198)))) 0 (ite ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 t!4198)))) (csize!31255 (right!43027 (right!43027 (left!42697 t!4198)))) (csize!31254 (right!43027 (right!43027 (left!42697 t!4198)))))))))

(assert (=> d!1621450 (= (size!38897 (right!43027 (right!43027 (left!42697 t!4198)))) lt!2084223)))

(declare-fun bs!1188900 () Bool)

(assert (= bs!1188900 d!1621450))

(assert (=> bs!1188900 m!6073294))

(assert (=> bs!1188900 m!6073294))

(assert (=> bs!1188900 m!6074072))

(assert (=> d!1620926 d!1621450))

(declare-fun d!1621452 () Bool)

(declare-fun lt!2084224 () Int)

(assert (=> d!1621452 (>= lt!2084224 0)))

(declare-fun e!3147685 () Int)

(assert (=> d!1621452 (= lt!2084224 e!3147685)))

(declare-fun c!863534 () Bool)

(assert (=> d!1621452 (= c!863534 ((_ is Nil!58300) (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198))))))))

(assert (=> d!1621452 (= (size!38898 (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198))))) lt!2084224)))

(declare-fun b!5040174 () Bool)

(assert (=> b!5040174 (= e!3147685 0)))

(declare-fun b!5040175 () Bool)

(assert (=> b!5040175 (= e!3147685 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198))))))))))

(assert (= (and d!1621452 c!863534) b!5040174))

(assert (= (and d!1621452 (not c!863534)) b!5040175))

(declare-fun m!6074310 () Bool)

(assert (=> b!5040175 m!6074310))

(assert (=> d!1620914 d!1621452))

(declare-fun d!1621454 () Bool)

(declare-fun c!863535 () Bool)

(assert (=> d!1621454 (= c!863535 ((_ is Nil!58300) lt!2084133))))

(declare-fun e!3147686 () (InoxSet T!104180))

(assert (=> d!1621454 (= (content!10352 lt!2084133) e!3147686)))

(declare-fun b!5040176 () Bool)

(assert (=> b!5040176 (= e!3147686 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040177 () Bool)

(assert (=> b!5040177 (= e!3147686 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084133) true) (content!10352 (t!370961 lt!2084133))))))

(assert (= (and d!1621454 c!863535) b!5040176))

(assert (= (and d!1621454 (not c!863535)) b!5040177))

(declare-fun m!6074312 () Bool)

(assert (=> b!5040177 m!6074312))

(declare-fun m!6074314 () Bool)

(assert (=> b!5040177 m!6074314))

(assert (=> d!1621018 d!1621454))

(declare-fun d!1621456 () Bool)

(declare-fun c!863536 () Bool)

(assert (=> d!1621456 (= c!863536 ((_ is Nil!58300) (list!18909 (left!42697 (right!43027 t!4198)))))))

(declare-fun e!3147687 () (InoxSet T!104180))

(assert (=> d!1621456 (= (content!10352 (list!18909 (left!42697 (right!43027 t!4198)))) e!3147687)))

(declare-fun b!5040178 () Bool)

(assert (=> b!5040178 (= e!3147687 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040179 () Bool)

(assert (=> b!5040179 (= e!3147687 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (left!42697 (right!43027 t!4198)))) true) (content!10352 (t!370961 (list!18909 (left!42697 (right!43027 t!4198)))))))))

(assert (= (and d!1621456 c!863536) b!5040178))

(assert (= (and d!1621456 (not c!863536)) b!5040179))

(declare-fun m!6074316 () Bool)

(assert (=> b!5040179 m!6074316))

(assert (=> b!5040179 m!6074264))

(assert (=> d!1621018 d!1621456))

(declare-fun d!1621458 () Bool)

(declare-fun c!863537 () Bool)

(assert (=> d!1621458 (= c!863537 ((_ is Nil!58300) (list!18909 (right!43027 (right!43027 t!4198)))))))

(declare-fun e!3147688 () (InoxSet T!104180))

(assert (=> d!1621458 (= (content!10352 (list!18909 (right!43027 (right!43027 t!4198)))) e!3147688)))

(declare-fun b!5040180 () Bool)

(assert (=> b!5040180 (= e!3147688 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040181 () Bool)

(assert (=> b!5040181 (= e!3147688 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (list!18909 (right!43027 (right!43027 t!4198)))) true) (content!10352 (t!370961 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(assert (= (and d!1621458 c!863537) b!5040180))

(assert (= (and d!1621458 (not c!863537)) b!5040181))

(declare-fun m!6074318 () Bool)

(assert (=> b!5040181 m!6074318))

(declare-fun m!6074320 () Bool)

(assert (=> b!5040181 m!6074320))

(assert (=> d!1621018 d!1621458))

(declare-fun d!1621460 () Bool)

(declare-fun lt!2084225 () Int)

(assert (=> d!1621460 (>= lt!2084225 0)))

(declare-fun e!3147689 () Int)

(assert (=> d!1621460 (= lt!2084225 e!3147689)))

(declare-fun c!863538 () Bool)

(assert (=> d!1621460 (= c!863538 ((_ is Nil!58300) (t!370961 lt!2084061)))))

(assert (=> d!1621460 (= (size!38898 (t!370961 lt!2084061)) lt!2084225)))

(declare-fun b!5040182 () Bool)

(assert (=> b!5040182 (= e!3147689 0)))

(declare-fun b!5040183 () Bool)

(assert (=> b!5040183 (= e!3147689 (+ 1 (size!38898 (t!370961 (t!370961 lt!2084061)))))))

(assert (= (and d!1621460 c!863538) b!5040182))

(assert (= (and d!1621460 (not c!863538)) b!5040183))

(declare-fun m!6074322 () Bool)

(assert (=> b!5040183 m!6074322))

(assert (=> b!5039546 d!1621460))

(declare-fun d!1621462 () Bool)

(declare-fun res!2147395 () Bool)

(declare-fun e!3147690 () Bool)

(assert (=> d!1621462 (=> (not res!2147395) (not e!3147690))))

(assert (=> d!1621462 (= res!2147395 (= (csize!31254 (right!43027 (right!43027 (left!42697 t!4198)))) (+ (size!38897 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) (size!38897 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))))))))

(assert (=> d!1621462 (= (inv!77152 (right!43027 (right!43027 (left!42697 t!4198)))) e!3147690)))

(declare-fun b!5040184 () Bool)

(declare-fun res!2147396 () Bool)

(assert (=> b!5040184 (=> (not res!2147396) (not e!3147690))))

(assert (=> b!5040184 (= res!2147396 (and (not (= (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))) Empty!15512)) (not (= (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))) Empty!15512))))))

(declare-fun b!5040185 () Bool)

(declare-fun res!2147397 () Bool)

(assert (=> b!5040185 (=> (not res!2147397) (not e!3147690))))

(assert (=> b!5040185 (= res!2147397 (= (cheight!15723 (right!43027 (right!43027 (left!42697 t!4198)))) (+ (max!0 (height!2091 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) 1)))))

(declare-fun b!5040186 () Bool)

(assert (=> b!5040186 (= e!3147690 (<= 0 (cheight!15723 (right!43027 (right!43027 (left!42697 t!4198))))))))

(assert (= (and d!1621462 res!2147395) b!5040184))

(assert (= (and b!5040184 res!2147396) b!5040185))

(assert (= (and b!5040185 res!2147397) b!5040186))

(declare-fun m!6074324 () Bool)

(assert (=> d!1621462 m!6074324))

(declare-fun m!6074326 () Bool)

(assert (=> d!1621462 m!6074326))

(assert (=> b!5040185 m!6073930))

(assert (=> b!5040185 m!6073932))

(assert (=> b!5040185 m!6073930))

(assert (=> b!5040185 m!6073932))

(declare-fun m!6074328 () Bool)

(assert (=> b!5040185 m!6074328))

(assert (=> b!5039491 d!1621462))

(assert (=> b!5039584 d!1621396))

(assert (=> b!5039620 d!1621278))

(assert (=> b!5039620 d!1621280))

(declare-fun d!1621464 () Bool)

(declare-fun lt!2084226 () Int)

(assert (=> d!1621464 (>= lt!2084226 0)))

(declare-fun e!3147691 () Int)

(assert (=> d!1621464 (= lt!2084226 e!3147691)))

(declare-fun c!863539 () Bool)

(assert (=> d!1621464 (= c!863539 ((_ is Nil!58300) (t!370961 (list!18910 (xs!18838 (left!42697 t!4198))))))))

(assert (=> d!1621464 (= (size!38898 (t!370961 (list!18910 (xs!18838 (left!42697 t!4198))))) lt!2084226)))

(declare-fun b!5040187 () Bool)

(assert (=> b!5040187 (= e!3147691 0)))

(declare-fun b!5040188 () Bool)

(assert (=> b!5040188 (= e!3147691 (+ 1 (size!38898 (t!370961 (t!370961 (list!18910 (xs!18838 (left!42697 t!4198))))))))))

(assert (= (and d!1621464 c!863539) b!5040187))

(assert (= (and d!1621464 (not c!863539)) b!5040188))

(declare-fun m!6074330 () Bool)

(assert (=> b!5040188 m!6074330))

(assert (=> b!5039624 d!1621464))

(declare-fun d!1621466 () Bool)

(declare-fun c!863540 () Bool)

(assert (=> d!1621466 (= c!863540 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun e!3147692 () Bool)

(assert (=> d!1621466 (= (inv!77150 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) e!3147692)))

(declare-fun b!5040189 () Bool)

(assert (=> b!5040189 (= e!3147692 (inv!77152 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040190 () Bool)

(declare-fun e!3147693 () Bool)

(assert (=> b!5040190 (= e!3147692 e!3147693)))

(declare-fun res!2147398 () Bool)

(assert (=> b!5040190 (= res!2147398 (not ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5040190 (=> res!2147398 e!3147693)))

(declare-fun b!5040191 () Bool)

(assert (=> b!5040191 (= e!3147693 (inv!77153 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621466 c!863540) b!5040189))

(assert (= (and d!1621466 (not c!863540)) b!5040190))

(assert (= (and b!5040190 (not res!2147398)) b!5040191))

(declare-fun m!6074332 () Bool)

(assert (=> b!5040189 m!6074332))

(declare-fun m!6074334 () Bool)

(assert (=> b!5040191 m!6074334))

(assert (=> b!5039673 d!1621466))

(declare-fun d!1621468 () Bool)

(declare-fun c!863541 () Bool)

(assert (=> d!1621468 (= c!863541 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun e!3147694 () Bool)

(assert (=> d!1621468 (= (inv!77150 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))) e!3147694)))

(declare-fun b!5040192 () Bool)

(assert (=> b!5040192 (= e!3147694 (inv!77152 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))

(declare-fun b!5040193 () Bool)

(declare-fun e!3147695 () Bool)

(assert (=> b!5040193 (= e!3147694 e!3147695)))

(declare-fun res!2147399 () Bool)

(assert (=> b!5040193 (= res!2147399 (not ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))))))

(assert (=> b!5040193 (=> res!2147399 e!3147695)))

(declare-fun b!5040194 () Bool)

(assert (=> b!5040194 (= e!3147695 (inv!77153 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))))))

(assert (= (and d!1621468 c!863541) b!5040192))

(assert (= (and d!1621468 (not c!863541)) b!5040193))

(assert (= (and b!5040193 (not res!2147399)) b!5040194))

(declare-fun m!6074336 () Bool)

(assert (=> b!5040192 m!6074336))

(declare-fun m!6074338 () Bool)

(assert (=> b!5040194 m!6074338))

(assert (=> b!5039673 d!1621468))

(assert (=> b!5039522 d!1621288))

(assert (=> b!5039522 d!1621290))

(declare-fun d!1621470 () Bool)

(declare-fun c!863542 () Bool)

(assert (=> d!1621470 (= c!863542 ((_ is Nil!58300) (t!370961 (_2!34920 lt!2084052))))))

(declare-fun e!3147696 () (InoxSet T!104180))

(assert (=> d!1621470 (= (content!10352 (t!370961 (_2!34920 lt!2084052))) e!3147696)))

(declare-fun b!5040195 () Bool)

(assert (=> b!5040195 (= e!3147696 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040196 () Bool)

(assert (=> b!5040196 (= e!3147696 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 (_2!34920 lt!2084052))) true) (content!10352 (t!370961 (t!370961 (_2!34920 lt!2084052))))))))

(assert (= (and d!1621470 c!863542) b!5040195))

(assert (= (and d!1621470 (not c!863542)) b!5040196))

(declare-fun m!6074340 () Bool)

(assert (=> b!5040196 m!6074340))

(declare-fun m!6074342 () Bool)

(assert (=> b!5040196 m!6074342))

(assert (=> b!5039507 d!1621470))

(declare-fun d!1621472 () Bool)

(assert (=> d!1621472 (= (inv!77151 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198)))))) 2147483647))))

(declare-fun bs!1188901 () Bool)

(assert (= bs!1188901 d!1621472))

(declare-fun m!6074344 () Bool)

(assert (=> bs!1188901 m!6074344))

(assert (=> b!5039654 d!1621472))

(declare-fun d!1621474 () Bool)

(declare-fun lt!2084227 () Int)

(assert (=> d!1621474 (>= lt!2084227 0)))

(declare-fun e!3147697 () Int)

(assert (=> d!1621474 (= lt!2084227 e!3147697)))

(declare-fun c!863543 () Bool)

(assert (=> d!1621474 (= c!863543 ((_ is Nil!58300) (t!370961 lt!2084064)))))

(assert (=> d!1621474 (= (size!38898 (t!370961 lt!2084064)) lt!2084227)))

(declare-fun b!5040197 () Bool)

(assert (=> b!5040197 (= e!3147697 0)))

(declare-fun b!5040198 () Bool)

(assert (=> b!5040198 (= e!3147697 (+ 1 (size!38898 (t!370961 (t!370961 lt!2084064)))))))

(assert (= (and d!1621474 c!863543) b!5040197))

(assert (= (and d!1621474 (not c!863543)) b!5040198))

(declare-fun m!6074346 () Bool)

(assert (=> b!5040198 m!6074346))

(assert (=> b!5039553 d!1621474))

(declare-fun d!1621476 () Bool)

(assert (=> d!1621476 (= (max!0 (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198))))) (ite (< (height!2091 (left!42697 (right!43027 (right!43027 t!4198)))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (right!43027 t!4198)))) (height!2091 (left!42697 (right!43027 (right!43027 t!4198))))))))

(assert (=> b!5039548 d!1621476))

(assert (=> b!5039548 d!1621288))

(assert (=> b!5039548 d!1621290))

(declare-fun d!1621478 () Bool)

(declare-fun lt!2084228 () Int)

(assert (=> d!1621478 (>= lt!2084228 0)))

(declare-fun e!3147698 () Int)

(assert (=> d!1621478 (= lt!2084228 e!3147698)))

(declare-fun c!863544 () Bool)

(assert (=> d!1621478 (= c!863544 ((_ is Nil!58300) (list!18909 (right!43027 (right!43027 t!4198)))))))

(assert (=> d!1621478 (= (size!38898 (list!18909 (right!43027 (right!43027 t!4198)))) lt!2084228)))

(declare-fun b!5040199 () Bool)

(assert (=> b!5040199 (= e!3147698 0)))

(declare-fun b!5040200 () Bool)

(assert (=> b!5040200 (= e!3147698 (+ 1 (size!38898 (t!370961 (list!18909 (right!43027 (right!43027 t!4198)))))))))

(assert (= (and d!1621478 c!863544) b!5040199))

(assert (= (and d!1621478 (not c!863544)) b!5040200))

(declare-fun m!6074348 () Bool)

(assert (=> b!5040200 m!6074348))

(assert (=> d!1620932 d!1621478))

(assert (=> d!1620932 d!1621022))

(assert (=> b!5039604 d!1621262))

(assert (=> b!5039604 d!1621264))

(assert (=> b!5039596 d!1621390))

(declare-fun d!1621480 () Bool)

(declare-fun c!863545 () Bool)

(assert (=> d!1621480 (= c!863545 ((_ is Nil!58300) (t!370961 lt!2084064)))))

(declare-fun e!3147699 () (InoxSet T!104180))

(assert (=> d!1621480 (= (content!10352 (t!370961 lt!2084064)) e!3147699)))

(declare-fun b!5040201 () Bool)

(assert (=> b!5040201 (= e!3147699 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040202 () Bool)

(assert (=> b!5040202 (= e!3147699 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 lt!2084064)) true) (content!10352 (t!370961 (t!370961 lt!2084064)))))))

(assert (= (and d!1621480 c!863545) b!5040201))

(assert (= (and d!1621480 (not c!863545)) b!5040202))

(declare-fun m!6074350 () Bool)

(assert (=> b!5040202 m!6074350))

(declare-fun m!6074352 () Bool)

(assert (=> b!5040202 m!6074352))

(assert (=> b!5039588 d!1621480))

(declare-fun d!1621482 () Bool)

(declare-fun c!863546 () Bool)

(assert (=> d!1621482 (= c!863546 ((_ is Nil!58300) (t!370961 lt!2084061)))))

(declare-fun e!3147700 () (InoxSet T!104180))

(assert (=> d!1621482 (= (content!10352 (t!370961 lt!2084061)) e!3147700)))

(declare-fun b!5040203 () Bool)

(assert (=> b!5040203 (= e!3147700 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040204 () Bool)

(assert (=> b!5040204 (= e!3147700 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 (t!370961 lt!2084061)) true) (content!10352 (t!370961 (t!370961 lt!2084061)))))))

(assert (= (and d!1621482 c!863546) b!5040203))

(assert (= (and d!1621482 (not c!863546)) b!5040204))

(declare-fun m!6074354 () Bool)

(assert (=> b!5040204 m!6074354))

(declare-fun m!6074356 () Bool)

(assert (=> b!5040204 m!6074356))

(assert (=> b!5039632 d!1621482))

(declare-fun d!1621484 () Bool)

(declare-fun c!863547 () Bool)

(assert (=> d!1621484 (= c!863547 ((_ is Nil!58300) lt!2084100))))

(declare-fun e!3147701 () (InoxSet T!104180))

(assert (=> d!1621484 (= (content!10352 lt!2084100) e!3147701)))

(declare-fun b!5040205 () Bool)

(assert (=> b!5040205 (= e!3147701 ((as const (Array T!104180 Bool)) false))))

(declare-fun b!5040206 () Bool)

(assert (=> b!5040206 (= e!3147701 ((_ map or) (store ((as const (Array T!104180 Bool)) false) (h!64748 lt!2084100) true) (content!10352 (t!370961 lt!2084100))))))

(assert (= (and d!1621484 c!863547) b!5040205))

(assert (= (and d!1621484 (not c!863547)) b!5040206))

(declare-fun m!6074358 () Bool)

(assert (=> b!5040206 m!6074358))

(declare-fun m!6074360 () Bool)

(assert (=> b!5040206 m!6074360))

(assert (=> d!1620868 d!1621484))

(assert (=> d!1620868 d!1621268))

(declare-fun d!1621486 () Bool)

(assert (=> d!1621486 (= (isEmpty!31531 (list!18909 (left!42697 (left!42697 t!4198)))) ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 t!4198)))))))

(assert (=> d!1620904 d!1621486))

(assert (=> d!1620904 d!1620940))

(assert (=> d!1620904 d!1620996))

(declare-fun d!1621488 () Bool)

(declare-fun res!2147400 () Bool)

(declare-fun e!3147702 () Bool)

(assert (=> d!1621488 (=> (not res!2147400) (not e!3147702))))

(assert (=> d!1621488 (= res!2147400 (<= (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198)))))) 512))))

(assert (=> d!1621488 (= (inv!77153 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147702)))

(declare-fun b!5040207 () Bool)

(declare-fun res!2147401 () Bool)

(assert (=> b!5040207 (=> (not res!2147401) (not e!3147702))))

(assert (=> b!5040207 (= res!2147401 (= (csize!31255 (left!42697 (left!42697 (right!43027 t!4198)))) (size!38898 (list!18910 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198))))))))))

(declare-fun b!5040208 () Bool)

(assert (=> b!5040208 (= e!3147702 (and (> (csize!31255 (left!42697 (left!42697 (right!43027 t!4198)))) 0) (<= (csize!31255 (left!42697 (left!42697 (right!43027 t!4198)))) 512)))))

(assert (= (and d!1621488 res!2147400) b!5040207))

(assert (= (and b!5040207 res!2147401) b!5040208))

(declare-fun m!6074362 () Bool)

(assert (=> d!1621488 m!6074362))

(assert (=> d!1621488 m!6074362))

(declare-fun m!6074364 () Bool)

(assert (=> d!1621488 m!6074364))

(assert (=> b!5040207 m!6074362))

(assert (=> b!5040207 m!6074362))

(assert (=> b!5040207 m!6074364))

(assert (=> b!5039477 d!1621488))

(declare-fun b!5040209 () Bool)

(declare-fun res!2147402 () Bool)

(declare-fun e!3147704 () Bool)

(assert (=> b!5040209 (=> (not res!2147402) (not e!3147704))))

(assert (=> b!5040209 (= res!2147402 (isBalanced!4374 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040210 () Bool)

(declare-fun res!2147407 () Bool)

(assert (=> b!5040210 (=> (not res!2147407) (not e!3147704))))

(assert (=> b!5040210 (= res!2147407 (not (isEmpty!31530 (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040211 () Bool)

(declare-fun res!2147406 () Bool)

(assert (=> b!5040211 (=> (not res!2147406) (not e!3147704))))

(assert (=> b!5040211 (= res!2147406 (isBalanced!4374 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040212 () Bool)

(declare-fun e!3147703 () Bool)

(assert (=> b!5040212 (= e!3147703 e!3147704)))

(declare-fun res!2147404 () Bool)

(assert (=> b!5040212 (=> (not res!2147404) (not e!3147704))))

(assert (=> b!5040212 (= res!2147404 (<= (- 1) (- (height!2091 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))))

(declare-fun b!5040213 () Bool)

(assert (=> b!5040213 (= e!3147704 (not (isEmpty!31530 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040214 () Bool)

(declare-fun res!2147403 () Bool)

(assert (=> b!5040214 (=> (not res!2147403) (not e!3147704))))

(assert (=> b!5040214 (= res!2147403 (<= (- (height!2091 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) (height!2091 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) 1))))

(declare-fun d!1621490 () Bool)

(declare-fun res!2147405 () Bool)

(assert (=> d!1621490 (=> res!2147405 e!3147703)))

(assert (=> d!1621490 (= res!2147405 (not ((_ is Node!15512) (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621490 (= (isBalanced!4374 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147703)))

(assert (= (and d!1621490 (not res!2147405)) b!5040212))

(assert (= (and b!5040212 res!2147404) b!5040214))

(assert (= (and b!5040214 res!2147403) b!5040209))

(assert (= (and b!5040209 res!2147402) b!5040211))

(assert (= (and b!5040211 res!2147406) b!5040210))

(assert (= (and b!5040210 res!2147407) b!5040213))

(declare-fun m!6074366 () Bool)

(assert (=> b!5040210 m!6074366))

(assert (=> b!5040214 m!6074138))

(assert (=> b!5040214 m!6074140))

(declare-fun m!6074368 () Bool)

(assert (=> b!5040209 m!6074368))

(declare-fun m!6074370 () Bool)

(assert (=> b!5040213 m!6074370))

(declare-fun m!6074372 () Bool)

(assert (=> b!5040211 m!6074372))

(assert (=> b!5040212 m!6074138))

(assert (=> b!5040212 m!6074140))

(assert (=> b!5039533 d!1621490))

(assert (=> d!1620902 d!1620972))

(assert (=> d!1620902 d!1620740))

(declare-fun d!1621492 () Bool)

(assert (=> d!1621492 (= (inv!77151 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198))))) (<= (size!38898 (innerList!15600 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198)))))) 2147483647))))

(declare-fun bs!1188902 () Bool)

(assert (= bs!1188902 d!1621492))

(declare-fun m!6074374 () Bool)

(assert (=> bs!1188902 m!6074374))

(assert (=> b!5039662 d!1621492))

(declare-fun d!1621494 () Bool)

(declare-fun c!863548 () Bool)

(assert (=> d!1621494 (= c!863548 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun e!3147705 () Bool)

(assert (=> d!1621494 (= (inv!77150 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) e!3147705)))

(declare-fun b!5040215 () Bool)

(assert (=> b!5040215 (= e!3147705 (inv!77152 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040216 () Bool)

(declare-fun e!3147706 () Bool)

(assert (=> b!5040216 (= e!3147705 e!3147706)))

(declare-fun res!2147408 () Bool)

(assert (=> b!5040216 (= res!2147408 (not ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5040216 (=> res!2147408 e!3147706)))

(declare-fun b!5040217 () Bool)

(assert (=> b!5040217 (= e!3147706 (inv!77153 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621494 c!863548) b!5040215))

(assert (= (and d!1621494 (not c!863548)) b!5040216))

(assert (= (and b!5040216 (not res!2147408)) b!5040217))

(declare-fun m!6074376 () Bool)

(assert (=> b!5040215 m!6074376))

(declare-fun m!6074378 () Bool)

(assert (=> b!5040217 m!6074378))

(assert (=> b!5039656 d!1621494))

(declare-fun d!1621496 () Bool)

(declare-fun c!863549 () Bool)

(assert (=> d!1621496 (= c!863549 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun e!3147707 () Bool)

(assert (=> d!1621496 (= (inv!77150 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))) e!3147707)))

(declare-fun b!5040218 () Bool)

(assert (=> b!5040218 (= e!3147707 (inv!77152 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))

(declare-fun b!5040219 () Bool)

(declare-fun e!3147708 () Bool)

(assert (=> b!5040219 (= e!3147707 e!3147708)))

(declare-fun res!2147409 () Bool)

(assert (=> b!5040219 (= res!2147409 (not ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(assert (=> b!5040219 (=> res!2147409 e!3147708)))

(declare-fun b!5040220 () Bool)

(assert (=> b!5040220 (= e!3147708 (inv!77153 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621496 c!863549) b!5040218))

(assert (= (and d!1621496 (not c!863549)) b!5040219))

(assert (= (and b!5040219 (not res!2147409)) b!5040220))

(declare-fun m!6074380 () Bool)

(assert (=> b!5040218 m!6074380))

(declare-fun m!6074382 () Bool)

(assert (=> b!5040220 m!6074382))

(assert (=> b!5039656 d!1621496))

(declare-fun d!1621498 () Bool)

(declare-fun lt!2084229 () Bool)

(assert (=> d!1621498 (= lt!2084229 (isEmpty!31531 (list!18909 (left!42697 (right!43027 (left!42697 t!4198))))))))

(assert (=> d!1621498 (= lt!2084229 (= (size!38897 (left!42697 (right!43027 (left!42697 t!4198)))) 0))))

(assert (=> d!1621498 (= (isEmpty!31530 (left!42697 (right!43027 (left!42697 t!4198)))) lt!2084229)))

(declare-fun bs!1188903 () Bool)

(assert (= bs!1188903 d!1621498))

(assert (=> bs!1188903 m!6073292))

(assert (=> bs!1188903 m!6073292))

(declare-fun m!6074384 () Bool)

(assert (=> bs!1188903 m!6074384))

(assert (=> bs!1188903 m!6073248))

(assert (=> b!5039600 d!1621498))

(declare-fun d!1621500 () Bool)

(declare-fun lt!2084230 () Int)

(assert (=> d!1621500 (>= lt!2084230 0)))

(declare-fun e!3147709 () Int)

(assert (=> d!1621500 (= lt!2084230 e!3147709)))

(declare-fun c!863550 () Bool)

(assert (=> d!1621500 (= c!863550 ((_ is Nil!58300) (t!370961 (list!18910 (xs!18838 t!4198)))))))

(assert (=> d!1621500 (= (size!38898 (t!370961 (list!18910 (xs!18838 t!4198)))) lt!2084230)))

(declare-fun b!5040221 () Bool)

(assert (=> b!5040221 (= e!3147709 0)))

(declare-fun b!5040222 () Bool)

(assert (=> b!5040222 (= e!3147709 (+ 1 (size!38898 (t!370961 (t!370961 (list!18910 (xs!18838 t!4198)))))))))

(assert (= (and d!1621500 c!863550) b!5040221))

(assert (= (and d!1621500 (not c!863550)) b!5040222))

(declare-fun m!6074386 () Bool)

(assert (=> b!5040222 m!6074386))

(assert (=> b!5039495 d!1621500))

(declare-fun d!1621502 () Bool)

(declare-fun e!3147711 () Bool)

(assert (=> d!1621502 e!3147711))

(declare-fun res!2147411 () Bool)

(assert (=> d!1621502 (=> (not res!2147411) (not e!3147711))))

(declare-fun lt!2084231 () List!58424)

(assert (=> d!1621502 (= res!2147411 (= (content!10352 lt!2084231) ((_ map or) (content!10352 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))) (content!10352 (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))))))))

(declare-fun e!3147710 () List!58424)

(assert (=> d!1621502 (= lt!2084231 e!3147710)))

(declare-fun c!863551 () Bool)

(assert (=> d!1621502 (= c!863551 ((_ is Nil!58300) (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621502 (= (++!12724 (list!18909 (left!42697 (left!42697 (right!43027 t!4198)))) (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))) lt!2084231)))

(declare-fun b!5040225 () Bool)

(declare-fun res!2147410 () Bool)

(assert (=> b!5040225 (=> (not res!2147410) (not e!3147711))))

(assert (=> b!5040225 (= res!2147410 (= (size!38898 lt!2084231) (+ (size!38898 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))) (size!38898 (list!18909 (right!43027 (left!42697 (right!43027 t!4198))))))))))

(declare-fun b!5040223 () Bool)

(assert (=> b!5040223 (= e!3147710 (list!18909 (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5040224 () Bool)

(assert (=> b!5040224 (= e!3147710 (Cons!58300 (h!64748 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))) (++!12724 (t!370961 (list!18909 (left!42697 (left!42697 (right!43027 t!4198))))) (list!18909 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040226 () Bool)

(assert (=> b!5040226 (= e!3147711 (or (not (= (list!18909 (right!43027 (left!42697 (right!43027 t!4198)))) Nil!58300)) (= lt!2084231 (list!18909 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(assert (= (and d!1621502 c!863551) b!5040223))

(assert (= (and d!1621502 (not c!863551)) b!5040224))

(assert (= (and d!1621502 res!2147411) b!5040225))

(assert (= (and b!5040225 res!2147410) b!5040226))

(declare-fun m!6074388 () Bool)

(assert (=> d!1621502 m!6074388))

(assert (=> d!1621502 m!6073414))

(declare-fun m!6074390 () Bool)

(assert (=> d!1621502 m!6074390))

(assert (=> d!1621502 m!6073416))

(declare-fun m!6074392 () Bool)

(assert (=> d!1621502 m!6074392))

(declare-fun m!6074394 () Bool)

(assert (=> b!5040225 m!6074394))

(assert (=> b!5040225 m!6073414))

(assert (=> b!5040225 m!6074230))

(assert (=> b!5040225 m!6073416))

(assert (=> b!5040225 m!6074232))

(assert (=> b!5040224 m!6073416))

(declare-fun m!6074396 () Bool)

(assert (=> b!5040224 m!6074396))

(assert (=> b!5039648 d!1621502))

(declare-fun d!1621504 () Bool)

(declare-fun c!863552 () Bool)

(assert (=> d!1621504 (= c!863552 ((_ is Empty!15512) (left!42697 (left!42697 (right!43027 t!4198)))))))

(declare-fun e!3147712 () List!58424)

(assert (=> d!1621504 (= (list!18909 (left!42697 (left!42697 (right!43027 t!4198)))) e!3147712)))

(declare-fun b!5040228 () Bool)

(declare-fun e!3147713 () List!58424)

(assert (=> b!5040228 (= e!3147712 e!3147713)))

(declare-fun c!863553 () Bool)

(assert (=> b!5040228 (= c!863553 ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5040227 () Bool)

(assert (=> b!5040227 (= e!3147712 Nil!58300)))

(declare-fun b!5040230 () Bool)

(assert (=> b!5040230 (= e!3147713 (++!12724 (list!18909 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) (list!18909 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040229 () Bool)

(assert (=> b!5040229 (= e!3147713 (list!18910 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621504 c!863552) b!5040227))

(assert (= (and d!1621504 (not c!863552)) b!5040228))

(assert (= (and b!5040228 c!863553) b!5040229))

(assert (= (and b!5040228 (not c!863553)) b!5040230))

(declare-fun m!6074398 () Bool)

(assert (=> b!5040230 m!6074398))

(declare-fun m!6074400 () Bool)

(assert (=> b!5040230 m!6074400))

(assert (=> b!5040230 m!6074398))

(assert (=> b!5040230 m!6074400))

(declare-fun m!6074402 () Bool)

(assert (=> b!5040230 m!6074402))

(assert (=> b!5040229 m!6074362))

(assert (=> b!5039648 d!1621504))

(declare-fun d!1621506 () Bool)

(declare-fun c!863554 () Bool)

(assert (=> d!1621506 (= c!863554 ((_ is Empty!15512) (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun e!3147714 () List!58424)

(assert (=> d!1621506 (= (list!18909 (right!43027 (left!42697 (right!43027 t!4198)))) e!3147714)))

(declare-fun b!5040232 () Bool)

(declare-fun e!3147715 () List!58424)

(assert (=> b!5040232 (= e!3147714 e!3147715)))

(declare-fun c!863555 () Bool)

(assert (=> b!5040232 (= c!863555 ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 t!4198)))))))

(declare-fun b!5040231 () Bool)

(assert (=> b!5040231 (= e!3147714 Nil!58300)))

(declare-fun b!5040234 () Bool)

(assert (=> b!5040234 (= e!3147715 (++!12724 (list!18909 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) (list!18909 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))))))

(declare-fun b!5040233 () Bool)

(assert (=> b!5040233 (= e!3147715 (list!18910 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198))))))))

(assert (= (and d!1621506 c!863554) b!5040231))

(assert (= (and d!1621506 (not c!863554)) b!5040232))

(assert (= (and b!5040232 c!863555) b!5040233))

(assert (= (and b!5040232 (not c!863555)) b!5040234))

(declare-fun m!6074404 () Bool)

(assert (=> b!5040234 m!6074404))

(declare-fun m!6074406 () Bool)

(assert (=> b!5040234 m!6074406))

(assert (=> b!5040234 m!6074404))

(assert (=> b!5040234 m!6074406))

(declare-fun m!6074408 () Bool)

(assert (=> b!5040234 m!6074408))

(assert (=> b!5040233 m!6073836))

(assert (=> b!5039648 d!1621506))

(declare-fun d!1621508 () Bool)

(declare-fun lt!2084232 () Int)

(assert (=> d!1621508 (>= lt!2084232 0)))

(declare-fun e!3147716 () Int)

(assert (=> d!1621508 (= lt!2084232 e!3147716)))

(declare-fun c!863556 () Bool)

(assert (=> d!1621508 (= c!863556 ((_ is Nil!58300) lt!2084133))))

(assert (=> d!1621508 (= (size!38898 lt!2084133) lt!2084232)))

(declare-fun b!5040235 () Bool)

(assert (=> b!5040235 (= e!3147716 0)))

(declare-fun b!5040236 () Bool)

(assert (=> b!5040236 (= e!3147716 (+ 1 (size!38898 (t!370961 lt!2084133))))))

(assert (= (and d!1621508 c!863556) b!5040235))

(assert (= (and d!1621508 (not c!863556)) b!5040236))

(declare-fun m!6074410 () Bool)

(assert (=> b!5040236 m!6074410))

(assert (=> b!5039643 d!1621508))

(assert (=> b!5039643 d!1621344))

(assert (=> b!5039643 d!1621478))

(declare-fun d!1621510 () Bool)

(declare-fun lt!2084233 () Int)

(assert (=> d!1621510 (>= lt!2084233 0)))

(declare-fun e!3147717 () Int)

(assert (=> d!1621510 (= lt!2084233 e!3147717)))

(declare-fun c!863557 () Bool)

(assert (=> d!1621510 (= c!863557 ((_ is Nil!58300) (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198))))))))

(assert (=> d!1621510 (= (size!38898 (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198))))) lt!2084233)))

(declare-fun b!5040237 () Bool)

(assert (=> b!5040237 (= e!3147717 0)))

(declare-fun b!5040238 () Bool)

(assert (=> b!5040238 (= e!3147717 (+ 1 (size!38898 (t!370961 (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198))))))))))

(assert (= (and d!1621510 c!863557) b!5040237))

(assert (= (and d!1621510 (not c!863557)) b!5040238))

(declare-fun m!6074412 () Bool)

(assert (=> b!5040238 m!6074412))

(assert (=> d!1620974 d!1621510))

(assert (=> b!5039543 d!1621188))

(assert (=> b!5039543 d!1621190))

(declare-fun d!1621512 () Bool)

(declare-fun lt!2084234 () Int)

(assert (=> d!1621512 (>= lt!2084234 0)))

(declare-fun e!3147718 () Int)

(assert (=> d!1621512 (= lt!2084234 e!3147718)))

(declare-fun c!863558 () Bool)

(assert (=> d!1621512 (= c!863558 ((_ is Nil!58300) (t!370961 (_2!34920 lt!2084052))))))

(assert (=> d!1621512 (= (size!38898 (t!370961 (_2!34920 lt!2084052))) lt!2084234)))

(declare-fun b!5040239 () Bool)

(assert (=> b!5040239 (= e!3147718 0)))

(declare-fun b!5040240 () Bool)

(assert (=> b!5040240 (= e!3147718 (+ 1 (size!38898 (t!370961 (t!370961 (_2!34920 lt!2084052))))))))

(assert (= (and d!1621512 c!863558) b!5040239))

(assert (= (and d!1621512 (not c!863558)) b!5040240))

(declare-fun m!6074414 () Bool)

(assert (=> b!5040240 m!6074414))

(assert (=> b!5039586 d!1621512))

(declare-fun d!1621514 () Bool)

(declare-fun lt!2084235 () Int)

(assert (=> d!1621514 (>= lt!2084235 0)))

(declare-fun e!3147719 () Int)

(assert (=> d!1621514 (= lt!2084235 e!3147719)))

(declare-fun c!863559 () Bool)

(assert (=> d!1621514 (= c!863559 ((_ is Nil!58300) (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198))))))))

(assert (=> d!1621514 (= (size!38898 (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198))))) lt!2084235)))

(declare-fun b!5040241 () Bool)

(assert (=> b!5040241 (= e!3147719 0)))

(declare-fun b!5040242 () Bool)

(assert (=> b!5040242 (= e!3147719 (+ 1 (size!38898 (t!370961 (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198))))))))))

(assert (= (and d!1621514 c!863559) b!5040241))

(assert (= (and d!1621514 (not c!863559)) b!5040242))

(declare-fun m!6074416 () Bool)

(assert (=> b!5040242 m!6074416))

(assert (=> b!5039630 d!1621514))

(declare-fun b!5040243 () Bool)

(declare-fun e!3147720 () Bool)

(declare-fun tp!1410941 () Bool)

(assert (=> b!5040243 (= e!3147720 (and tp_is_empty!36785 tp!1410941))))

(assert (=> b!5039666 (= tp!1410892 e!3147720)))

(assert (= (and b!5039666 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (right!43027 (left!42697 t!4198))))))) b!5040243))

(declare-fun b!5040244 () Bool)

(declare-fun e!3147721 () Bool)

(declare-fun tp!1410942 () Bool)

(assert (=> b!5040244 (= e!3147721 (and tp_is_empty!36785 tp!1410942))))

(assert (=> b!5039681 (= tp!1410907 e!3147721)))

(assert (= (and b!5039681 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (left!42697 (left!42697 t!4198))))))) b!5040244))

(declare-fun b!5040245 () Bool)

(declare-fun e!3147722 () Bool)

(declare-fun tp!1410943 () Bool)

(assert (=> b!5040245 (= e!3147722 (and tp_is_empty!36785 tp!1410943))))

(assert (=> b!5039668 (= tp!1410894 e!3147722)))

(assert (= (and b!5039668 ((_ is Cons!58300) (t!370961 (t!370961 (innerList!15600 (xs!18838 (left!42697 t!4198))))))) b!5040245))

(declare-fun b!5040246 () Bool)

(declare-fun e!3147723 () Bool)

(declare-fun tp!1410944 () Bool)

(assert (=> b!5040246 (= e!3147723 (and tp_is_empty!36785 tp!1410944))))

(assert (=> b!5039672 (= tp!1410898 e!3147723)))

(assert (= (and b!5039672 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (right!43027 (right!43027 t!4198))))))) b!5040246))

(declare-fun b!5040247 () Bool)

(declare-fun e!3147724 () Bool)

(declare-fun tp!1410945 () Bool)

(assert (=> b!5040247 (= e!3147724 (and tp_is_empty!36785 tp!1410945))))

(assert (=> b!5039683 (= tp!1410909 e!3147724)))

(assert (= (and b!5039683 ((_ is Cons!58300) (t!370961 (t!370961 (t!370961 (innerList!15600 (xs!18838 t!4198))))))) b!5040247))

(declare-fun b!5040248 () Bool)

(declare-fun e!3147725 () Bool)

(declare-fun tp!1410946 () Bool)

(assert (=> b!5040248 (= e!3147725 (and tp_is_empty!36785 tp!1410946))))

(assert (=> b!5039678 (= tp!1410904 e!3147725)))

(assert (= (and b!5039678 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (left!42697 (left!42697 t!4198))))))) b!5040248))

(declare-fun b!5040249 () Bool)

(declare-fun e!3147726 () Bool)

(declare-fun tp!1410947 () Bool)

(assert (=> b!5040249 (= e!3147726 (and tp_is_empty!36785 tp!1410947))))

(assert (=> b!5039658 (= tp!1410884 e!3147726)))

(assert (= (and b!5039658 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (left!42697 (right!43027 t!4198))))))) b!5040249))

(declare-fun tp!1410948 () Bool)

(declare-fun b!5040250 () Bool)

(declare-fun tp!1410949 () Bool)

(declare-fun e!3147728 () Bool)

(assert (=> b!5040250 (= e!3147728 (and (inv!77150 (left!42697 (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))) tp!1410949 (inv!77150 (right!43027 (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))) tp!1410948))))

(declare-fun b!5040252 () Bool)

(declare-fun e!3147727 () Bool)

(declare-fun tp!1410950 () Bool)

(assert (=> b!5040252 (= e!3147727 tp!1410950)))

(declare-fun b!5040251 () Bool)

(assert (=> b!5040251 (= e!3147728 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))) e!3147727))))

(assert (=> b!5039664 (= tp!1410891 (and (inv!77150 (left!42697 (right!43027 (right!43027 (left!42697 t!4198))))) e!3147728))))

(assert (= (and b!5039664 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))) b!5040250))

(assert (= b!5040251 b!5040252))

(assert (= (and b!5039664 ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 (left!42697 t!4198)))))) b!5040251))

(declare-fun m!6074418 () Bool)

(assert (=> b!5040250 m!6074418))

(declare-fun m!6074420 () Bool)

(assert (=> b!5040250 m!6074420))

(declare-fun m!6074422 () Bool)

(assert (=> b!5040251 m!6074422))

(assert (=> b!5039664 m!6073444))

(declare-fun b!5040253 () Bool)

(declare-fun tp!1410952 () Bool)

(declare-fun tp!1410951 () Bool)

(declare-fun e!3147730 () Bool)

(assert (=> b!5040253 (= e!3147730 (and (inv!77150 (left!42697 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) tp!1410952 (inv!77150 (right!43027 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) tp!1410951))))

(declare-fun b!5040255 () Bool)

(declare-fun e!3147729 () Bool)

(declare-fun tp!1410953 () Bool)

(assert (=> b!5040255 (= e!3147729 tp!1410953)))

(declare-fun b!5040254 () Bool)

(assert (=> b!5040254 (= e!3147730 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) e!3147729))))

(assert (=> b!5039664 (= tp!1410890 (and (inv!77150 (right!43027 (right!43027 (right!43027 (left!42697 t!4198))))) e!3147730))))

(assert (= (and b!5039664 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) b!5040253))

(assert (= b!5040254 b!5040255))

(assert (= (and b!5039664 ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 (left!42697 t!4198)))))) b!5040254))

(declare-fun m!6074424 () Bool)

(assert (=> b!5040253 m!6074424))

(declare-fun m!6074426 () Bool)

(assert (=> b!5040253 m!6074426))

(declare-fun m!6074428 () Bool)

(assert (=> b!5040254 m!6074428))

(assert (=> b!5039664 m!6073446))

(declare-fun b!5040256 () Bool)

(declare-fun e!3147731 () Bool)

(declare-fun tp!1410954 () Bool)

(assert (=> b!5040256 (= e!3147731 (and tp_is_empty!36785 tp!1410954))))

(assert (=> b!5039667 (= tp!1410893 e!3147731)))

(assert (= (and b!5039667 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (left!42697 (right!43027 t!4198))))))) b!5040256))

(declare-fun tp!1410956 () Bool)

(declare-fun tp!1410955 () Bool)

(declare-fun b!5040257 () Bool)

(declare-fun e!3147733 () Bool)

(assert (=> b!5040257 (= e!3147733 (and (inv!77150 (left!42697 (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))) tp!1410956 (inv!77150 (right!43027 (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))) tp!1410955))))

(declare-fun b!5040259 () Bool)

(declare-fun e!3147732 () Bool)

(declare-fun tp!1410957 () Bool)

(assert (=> b!5040259 (= e!3147732 tp!1410957)))

(declare-fun b!5040258 () Bool)

(assert (=> b!5040258 (= e!3147733 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))) e!3147732))))

(assert (=> b!5039679 (= tp!1410906 (and (inv!77150 (left!42697 (right!43027 (left!42697 (left!42697 t!4198))))) e!3147733))))

(assert (= (and b!5039679 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))) b!5040257))

(assert (= b!5040258 b!5040259))

(assert (= (and b!5039679 ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 (left!42697 t!4198)))))) b!5040258))

(declare-fun m!6074430 () Bool)

(assert (=> b!5040257 m!6074430))

(declare-fun m!6074432 () Bool)

(assert (=> b!5040257 m!6074432))

(declare-fun m!6074434 () Bool)

(assert (=> b!5040258 m!6074434))

(assert (=> b!5039679 m!6073468))

(declare-fun tp!1410958 () Bool)

(declare-fun tp!1410959 () Bool)

(declare-fun b!5040260 () Bool)

(declare-fun e!3147735 () Bool)

(assert (=> b!5040260 (= e!3147735 (and (inv!77150 (left!42697 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) tp!1410959 (inv!77150 (right!43027 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) tp!1410958))))

(declare-fun b!5040262 () Bool)

(declare-fun e!3147734 () Bool)

(declare-fun tp!1410960 () Bool)

(assert (=> b!5040262 (= e!3147734 tp!1410960)))

(declare-fun b!5040261 () Bool)

(assert (=> b!5040261 (= e!3147735 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) e!3147734))))

(assert (=> b!5039679 (= tp!1410905 (and (inv!77150 (right!43027 (right!43027 (left!42697 (left!42697 t!4198))))) e!3147735))))

(assert (= (and b!5039679 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) b!5040260))

(assert (= b!5040261 b!5040262))

(assert (= (and b!5039679 ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 (left!42697 t!4198)))))) b!5040261))

(declare-fun m!6074436 () Bool)

(assert (=> b!5040260 m!6074436))

(declare-fun m!6074438 () Bool)

(assert (=> b!5040260 m!6074438))

(declare-fun m!6074440 () Bool)

(assert (=> b!5040261 m!6074440))

(assert (=> b!5039679 m!6073470))

(declare-fun b!5040263 () Bool)

(declare-fun e!3147736 () Bool)

(declare-fun tp!1410961 () Bool)

(assert (=> b!5040263 (= e!3147736 (and tp_is_empty!36785 tp!1410961))))

(assert (=> b!5039682 (= tp!1410908 e!3147736)))

(assert (= (and b!5039682 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (right!43027 (left!42697 t!4198))))))) b!5040263))

(declare-fun b!5040264 () Bool)

(declare-fun e!3147737 () Bool)

(declare-fun tp!1410962 () Bool)

(assert (=> b!5040264 (= e!3147737 (and tp_is_empty!36785 tp!1410962))))

(assert (=> b!5039660 (= tp!1410886 e!3147737)))

(assert (= (and b!5039660 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (left!42697 (left!42697 t!4198))))))) b!5040264))

(declare-fun b!5040265 () Bool)

(declare-fun tp!1410964 () Bool)

(declare-fun tp!1410963 () Bool)

(declare-fun e!3147739 () Bool)

(assert (=> b!5040265 (= e!3147739 (and (inv!77150 (left!42697 (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))) tp!1410964 (inv!77150 (right!43027 (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))) tp!1410963))))

(declare-fun b!5040267 () Bool)

(declare-fun e!3147738 () Bool)

(declare-fun tp!1410965 () Bool)

(assert (=> b!5040267 (= e!3147738 tp!1410965)))

(declare-fun b!5040266 () Bool)

(assert (=> b!5040266 (= e!3147739 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))) e!3147738))))

(assert (=> b!5039670 (= tp!1410897 (and (inv!77150 (left!42697 (left!42697 (right!43027 (right!43027 t!4198))))) e!3147739))))

(assert (= (and b!5039670 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))) b!5040265))

(assert (= b!5040266 b!5040267))

(assert (= (and b!5039670 ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 (right!43027 t!4198)))))) b!5040266))

(declare-fun m!6074442 () Bool)

(assert (=> b!5040265 m!6074442))

(declare-fun m!6074444 () Bool)

(assert (=> b!5040265 m!6074444))

(declare-fun m!6074446 () Bool)

(assert (=> b!5040266 m!6074446))

(assert (=> b!5039670 m!6073450))

(declare-fun b!5040268 () Bool)

(declare-fun tp!1410966 () Bool)

(declare-fun tp!1410967 () Bool)

(declare-fun e!3147741 () Bool)

(assert (=> b!5040268 (= e!3147741 (and (inv!77150 (left!42697 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) tp!1410967 (inv!77150 (right!43027 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) tp!1410966))))

(declare-fun b!5040270 () Bool)

(declare-fun e!3147740 () Bool)

(declare-fun tp!1410968 () Bool)

(assert (=> b!5040270 (= e!3147740 tp!1410968)))

(declare-fun b!5040269 () Bool)

(assert (=> b!5040269 (= e!3147741 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) e!3147740))))

(assert (=> b!5039670 (= tp!1410896 (and (inv!77150 (right!43027 (left!42697 (right!43027 (right!43027 t!4198))))) e!3147741))))

(assert (= (and b!5039670 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) b!5040268))

(assert (= b!5040269 b!5040270))

(assert (= (and b!5039670 ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 (right!43027 t!4198)))))) b!5040269))

(declare-fun m!6074448 () Bool)

(assert (=> b!5040268 m!6074448))

(declare-fun m!6074450 () Bool)

(assert (=> b!5040268 m!6074450))

(declare-fun m!6074452 () Bool)

(assert (=> b!5040269 m!6074452))

(assert (=> b!5039670 m!6073452))

(declare-fun b!5040271 () Bool)

(declare-fun e!3147742 () Bool)

(declare-fun tp!1410969 () Bool)

(assert (=> b!5040271 (= e!3147742 (and tp_is_empty!36785 tp!1410969))))

(assert (=> b!5039655 (= tp!1410881 e!3147742)))

(assert (= (and b!5039655 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (left!42697 (right!43027 t!4198))))))) b!5040271))

(declare-fun tp!1410970 () Bool)

(declare-fun e!3147744 () Bool)

(declare-fun tp!1410971 () Bool)

(declare-fun b!5040272 () Bool)

(assert (=> b!5040272 (= e!3147744 (and (inv!77150 (left!42697 (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))) tp!1410971 (inv!77150 (right!43027 (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))) tp!1410970))))

(declare-fun b!5040274 () Bool)

(declare-fun e!3147743 () Bool)

(declare-fun tp!1410972 () Bool)

(assert (=> b!5040274 (= e!3147743 tp!1410972)))

(declare-fun b!5040273 () Bool)

(assert (=> b!5040273 (= e!3147744 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))) e!3147743))))

(assert (=> b!5039661 (= tp!1410888 (and (inv!77150 (left!42697 (left!42697 (right!43027 (left!42697 t!4198))))) e!3147744))))

(assert (= (and b!5039661 ((_ is Node!15512) (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))) b!5040272))

(assert (= b!5040273 b!5040274))

(assert (= (and b!5039661 ((_ is Leaf!25732) (left!42697 (left!42697 (right!43027 (left!42697 t!4198)))))) b!5040273))

(declare-fun m!6074454 () Bool)

(assert (=> b!5040272 m!6074454))

(declare-fun m!6074456 () Bool)

(assert (=> b!5040272 m!6074456))

(declare-fun m!6074458 () Bool)

(assert (=> b!5040273 m!6074458))

(assert (=> b!5039661 m!6073438))

(declare-fun tp!1410973 () Bool)

(declare-fun b!5040275 () Bool)

(declare-fun e!3147746 () Bool)

(declare-fun tp!1410974 () Bool)

(assert (=> b!5040275 (= e!3147746 (and (inv!77150 (left!42697 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) tp!1410974 (inv!77150 (right!43027 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) tp!1410973))))

(declare-fun b!5040277 () Bool)

(declare-fun e!3147745 () Bool)

(declare-fun tp!1410975 () Bool)

(assert (=> b!5040277 (= e!3147745 tp!1410975)))

(declare-fun b!5040276 () Bool)

(assert (=> b!5040276 (= e!3147746 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) e!3147745))))

(assert (=> b!5039661 (= tp!1410887 (and (inv!77150 (right!43027 (left!42697 (right!43027 (left!42697 t!4198))))) e!3147746))))

(assert (= (and b!5039661 ((_ is Node!15512) (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) b!5040275))

(assert (= b!5040276 b!5040277))

(assert (= (and b!5039661 ((_ is Leaf!25732) (right!43027 (left!42697 (right!43027 (left!42697 t!4198)))))) b!5040276))

(declare-fun m!6074460 () Bool)

(assert (=> b!5040275 m!6074460))

(declare-fun m!6074462 () Bool)

(assert (=> b!5040275 m!6074462))

(declare-fun m!6074464 () Bool)

(assert (=> b!5040276 m!6074464))

(assert (=> b!5039661 m!6073440))

(declare-fun tp!1410977 () Bool)

(declare-fun b!5040278 () Bool)

(declare-fun e!3147748 () Bool)

(declare-fun tp!1410976 () Bool)

(assert (=> b!5040278 (= e!3147748 (and (inv!77150 (left!42697 (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))) tp!1410977 (inv!77150 (right!43027 (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))) tp!1410976))))

(declare-fun b!5040280 () Bool)

(declare-fun e!3147747 () Bool)

(declare-fun tp!1410978 () Bool)

(assert (=> b!5040280 (= e!3147747 tp!1410978)))

(declare-fun b!5040279 () Bool)

(assert (=> b!5040279 (= e!3147748 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))) e!3147747))))

(assert (=> b!5039676 (= tp!1410903 (and (inv!77150 (left!42697 (left!42697 (left!42697 (left!42697 t!4198))))) e!3147748))))

(assert (= (and b!5039676 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))) b!5040278))

(assert (= b!5040279 b!5040280))

(assert (= (and b!5039676 ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 (left!42697 t!4198)))))) b!5040279))

(declare-fun m!6074466 () Bool)

(assert (=> b!5040278 m!6074466))

(declare-fun m!6074468 () Bool)

(assert (=> b!5040278 m!6074468))

(declare-fun m!6074470 () Bool)

(assert (=> b!5040279 m!6074470))

(assert (=> b!5039676 m!6073462))

(declare-fun b!5040281 () Bool)

(declare-fun tp!1410980 () Bool)

(declare-fun tp!1410979 () Bool)

(declare-fun e!3147750 () Bool)

(assert (=> b!5040281 (= e!3147750 (and (inv!77150 (left!42697 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) tp!1410980 (inv!77150 (right!43027 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) tp!1410979))))

(declare-fun b!5040283 () Bool)

(declare-fun e!3147749 () Bool)

(declare-fun tp!1410981 () Bool)

(assert (=> b!5040283 (= e!3147749 tp!1410981)))

(declare-fun b!5040282 () Bool)

(assert (=> b!5040282 (= e!3147750 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) e!3147749))))

(assert (=> b!5039676 (= tp!1410902 (and (inv!77150 (right!43027 (left!42697 (left!42697 (left!42697 t!4198))))) e!3147750))))

(assert (= (and b!5039676 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) b!5040281))

(assert (= b!5040282 b!5040283))

(assert (= (and b!5039676 ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 (left!42697 t!4198)))))) b!5040282))

(declare-fun m!6074472 () Bool)

(assert (=> b!5040281 m!6074472))

(declare-fun m!6074474 () Bool)

(assert (=> b!5040281 m!6074474))

(declare-fun m!6074476 () Bool)

(assert (=> b!5040282 m!6074476))

(assert (=> b!5039676 m!6073464))

(declare-fun b!5040284 () Bool)

(declare-fun tp!1410983 () Bool)

(declare-fun e!3147752 () Bool)

(declare-fun tp!1410982 () Bool)

(assert (=> b!5040284 (= e!3147752 (and (inv!77150 (left!42697 (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))) tp!1410983 (inv!77150 (right!43027 (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))) tp!1410982))))

(declare-fun b!5040286 () Bool)

(declare-fun e!3147751 () Bool)

(declare-fun tp!1410984 () Bool)

(assert (=> b!5040286 (= e!3147751 tp!1410984)))

(declare-fun b!5040285 () Bool)

(assert (=> b!5040285 (= e!3147752 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))) e!3147751))))

(assert (=> b!5039656 (= tp!1410883 (and (inv!77150 (left!42697 (right!43027 (left!42697 (right!43027 t!4198))))) e!3147752))))

(assert (= (and b!5039656 ((_ is Node!15512) (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))) b!5040284))

(assert (= b!5040285 b!5040286))

(assert (= (and b!5039656 ((_ is Leaf!25732) (left!42697 (right!43027 (left!42697 (right!43027 t!4198)))))) b!5040285))

(declare-fun m!6074478 () Bool)

(assert (=> b!5040284 m!6074478))

(declare-fun m!6074480 () Bool)

(assert (=> b!5040284 m!6074480))

(declare-fun m!6074482 () Bool)

(assert (=> b!5040285 m!6074482))

(assert (=> b!5039656 m!6073432))

(declare-fun b!5040287 () Bool)

(declare-fun tp!1410986 () Bool)

(declare-fun tp!1410985 () Bool)

(declare-fun e!3147754 () Bool)

(assert (=> b!5040287 (= e!3147754 (and (inv!77150 (left!42697 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) tp!1410986 (inv!77150 (right!43027 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) tp!1410985))))

(declare-fun b!5040289 () Bool)

(declare-fun e!3147753 () Bool)

(declare-fun tp!1410987 () Bool)

(assert (=> b!5040289 (= e!3147753 tp!1410987)))

(declare-fun b!5040288 () Bool)

(assert (=> b!5040288 (= e!3147754 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) e!3147753))))

(assert (=> b!5039656 (= tp!1410882 (and (inv!77150 (right!43027 (right!43027 (left!42697 (right!43027 t!4198))))) e!3147754))))

(assert (= (and b!5039656 ((_ is Node!15512) (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) b!5040287))

(assert (= b!5040288 b!5040289))

(assert (= (and b!5039656 ((_ is Leaf!25732) (right!43027 (right!43027 (left!42697 (right!43027 t!4198)))))) b!5040288))

(declare-fun m!6074484 () Bool)

(assert (=> b!5040287 m!6074484))

(declare-fun m!6074486 () Bool)

(assert (=> b!5040287 m!6074486))

(declare-fun m!6074488 () Bool)

(assert (=> b!5040288 m!6074488))

(assert (=> b!5039656 m!6073434))

(declare-fun b!5040290 () Bool)

(declare-fun e!3147755 () Bool)

(declare-fun tp!1410988 () Bool)

(assert (=> b!5040290 (= e!3147755 (and tp_is_empty!36785 tp!1410988))))

(assert (=> b!5039659 (= tp!1410885 e!3147755)))

(assert (= (and b!5039659 ((_ is Cons!58300) (t!370961 (innerList!15600 (xs!18838 (right!43027 (right!43027 t!4198))))))) b!5040290))

(declare-fun b!5040291 () Bool)

(declare-fun e!3147756 () Bool)

(declare-fun tp!1410989 () Bool)

(assert (=> b!5040291 (= e!3147756 (and tp_is_empty!36785 tp!1410989))))

(assert (=> b!5039663 (= tp!1410889 e!3147756)))

(assert (= (and b!5039663 ((_ is Cons!58300) (innerList!15600 (xs!18838 (left!42697 (right!43027 (left!42697 t!4198))))))) b!5040291))

(declare-fun e!3147758 () Bool)

(declare-fun tp!1410990 () Bool)

(declare-fun b!5040292 () Bool)

(declare-fun tp!1410991 () Bool)

(assert (=> b!5040292 (= e!3147758 (and (inv!77150 (left!42697 (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))) tp!1410991 (inv!77150 (right!43027 (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))) tp!1410990))))

(declare-fun b!5040294 () Bool)

(declare-fun e!3147757 () Bool)

(declare-fun tp!1410992 () Bool)

(assert (=> b!5040294 (= e!3147757 tp!1410992)))

(declare-fun b!5040293 () Bool)

(assert (=> b!5040293 (= e!3147758 (and (inv!77151 (xs!18838 (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))) e!3147757))))

(assert (=> b!5039673 (= tp!1410900 (and (inv!77150 (left!42697 (right!43027 (right!43027 (right!43027 t!4198))))) e!3147758))))

(assert (= (and b!5039673 ((_ is Node!15512) (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))) b!5040292))

(assert (= b!5040293 b!5040294))

(assert (= (and b!5039673 ((_ is Leaf!25732) (left!42697 (right!43027 (right!43027 (right!43027 t!4198)))))) b!5040293))

(declare-fun m!6074490 () Bool)

(assert (=> b!5040292 m!6074490))

(declare-fun m!6074492 () Bool)

(assert (=> b!5040292 m!6074492))

(declare-fun m!6074494 () Bool)

(assert (=> b!5040293 m!6074494))

(assert (=> b!5039673 m!6073456))

(declare-fun tp!1410993 () Bool)

(declare-fun b!5040295 () Bool)

(declare-fun e!3147760 () Bool)

(declare-fun tp!1410994 () Bool)

(assert (=> b!5040295 (= e!3147760 (and (inv!77150 (left!42697 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) tp!1410994 (inv!77150 (right!43027 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) tp!1410993))))

(declare-fun b!5040297 () Bool)

(declare-fun e!3147759 () Bool)

(declare-fun tp!1410995 () Bool)

(assert (=> b!5040297 (= e!3147759 tp!1410995)))

(declare-fun b!5040296 () Bool)

(assert (=> b!5040296 (= e!3147760 (and (inv!77151 (xs!18838 (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) e!3147759))))

(assert (=> b!5039673 (= tp!1410899 (and (inv!77150 (right!43027 (right!43027 (right!43027 (right!43027 t!4198))))) e!3147760))))

(assert (= (and b!5039673 ((_ is Node!15512) (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) b!5040295))

(assert (= b!5040296 b!5040297))

(assert (= (and b!5039673 ((_ is Leaf!25732) (right!43027 (right!43027 (right!43027 (right!43027 t!4198)))))) b!5040296))

(declare-fun m!6074496 () Bool)

(assert (=> b!5040295 m!6074496))

(declare-fun m!6074498 () Bool)

(assert (=> b!5040295 m!6074498))

(declare-fun m!6074500 () Bool)

(assert (=> b!5040296 m!6074500))

(assert (=> b!5039673 m!6073458))

(declare-fun tp!1410997 () Bool)

(declare-fun b!5040298 () Bool)

(declare-fun tp!1410996 () Bool)

(declare-fun e!3147762 () Bool)

(assert (=> b!5040298 (= e!3147762 (and (inv!77150 (left!42697 (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))) tp!1410997 (inv!77150 (right!43027 (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))) tp!1410996))))

(declare-fun b!5040300 () Bool)

(declare-fun e!3147761 () Bool)

(declare-fun tp!1410998 () Bool)

(assert (=> b!5040300 (= e!3147761 tp!1410998)))

(declare-fun b!5040299 () Bool)

(assert (=> b!5040299 (= e!3147762 (and (inv!77151 (xs!18838 (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))) e!3147761))))

(assert (=> b!5039653 (= tp!1410880 (and (inv!77150 (left!42697 (left!42697 (left!42697 (right!43027 t!4198))))) e!3147762))))

(assert (= (and b!5039653 ((_ is Node!15512) (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))) b!5040298))

(assert (= b!5040299 b!5040300))

(assert (= (and b!5039653 ((_ is Leaf!25732) (left!42697 (left!42697 (left!42697 (right!43027 t!4198)))))) b!5040299))

(declare-fun m!6074502 () Bool)

(assert (=> b!5040298 m!6074502))

(declare-fun m!6074504 () Bool)

(assert (=> b!5040298 m!6074504))

(declare-fun m!6074506 () Bool)

(assert (=> b!5040299 m!6074506))

(assert (=> b!5039653 m!6073426))

(declare-fun tp!1411000 () Bool)

(declare-fun b!5040301 () Bool)

(declare-fun e!3147764 () Bool)

(declare-fun tp!1410999 () Bool)

(assert (=> b!5040301 (= e!3147764 (and (inv!77150 (left!42697 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) tp!1411000 (inv!77150 (right!43027 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) tp!1410999))))

(declare-fun b!5040303 () Bool)

(declare-fun e!3147763 () Bool)

(declare-fun tp!1411001 () Bool)

(assert (=> b!5040303 (= e!3147763 tp!1411001)))

(declare-fun b!5040302 () Bool)

(assert (=> b!5040302 (= e!3147764 (and (inv!77151 (xs!18838 (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) e!3147763))))

(assert (=> b!5039653 (= tp!1410879 (and (inv!77150 (right!43027 (left!42697 (left!42697 (right!43027 t!4198))))) e!3147764))))

(assert (= (and b!5039653 ((_ is Node!15512) (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) b!5040301))

(assert (= b!5040302 b!5040303))

(assert (= (and b!5039653 ((_ is Leaf!25732) (right!43027 (left!42697 (left!42697 (right!43027 t!4198)))))) b!5040302))

(declare-fun m!6074508 () Bool)

(assert (=> b!5040301 m!6074508))

(declare-fun m!6074510 () Bool)

(assert (=> b!5040301 m!6074510))

(declare-fun m!6074512 () Bool)

(assert (=> b!5040302 m!6074512))

(assert (=> b!5039653 m!6073428))

(declare-fun b!5040304 () Bool)

(declare-fun e!3147765 () Bool)

(declare-fun tp!1411002 () Bool)

(assert (=> b!5040304 (= e!3147765 (and tp_is_empty!36785 tp!1411002))))

(assert (=> b!5039669 (= tp!1410895 e!3147765)))

(assert (= (and b!5039669 ((_ is Cons!58300) (t!370961 (t!370961 (innerList!15600 (xs!18838 (right!43027 t!4198))))))) b!5040304))

(declare-fun b!5040305 () Bool)

(declare-fun e!3147766 () Bool)

(declare-fun tp!1411003 () Bool)

(assert (=> b!5040305 (= e!3147766 (and tp_is_empty!36785 tp!1411003))))

(assert (=> b!5039675 (= tp!1410901 e!3147766)))

(assert (= (and b!5039675 ((_ is Cons!58300) (innerList!15600 (xs!18838 (right!43027 (right!43027 (right!43027 t!4198))))))) b!5040305))

(check-sat (not b!5039979) (not b!5039961) (not b!5040050) (not b!5040249) (not b!5040058) (not b!5039676) (not b!5040265) (not b!5040215) (not b!5039955) (not b!5040025) (not b!5039923) (not b!5040119) (not d!1621200) (not b!5040286) (not b!5040251) (not d!1621258) (not b!5040125) (not b!5040244) (not d!1621502) (not b!5040260) (not b!5040137) (not b!5039983) (not b!5040029) (not b!5040005) (not b!5040144) (not b!5040088) (not b!5040253) (not b!5040282) (not d!1621472) (not b!5040247) (not b!5040047) (not b!5040210) (not d!1621450) (not b!5040198) (not b!5040112) (not b!5040262) (not b!5039966) (not b!5040139) (not b!5040022) (not b!5040302) (not b!5040038) (not b!5040257) (not b!5039937) (not b!5039969) (not b!5040234) (not b!5040276) (not b!5039947) (not b!5040202) (not b!5040013) (not b!5040114) (not b!5040147) (not b!5039957) (not b!5040277) (not b!5040281) (not b!5040258) (not b!5040106) (not b!5039935) (not b!5039997) (not b!5040213) (not b!5039940) (not b!5039661) (not d!1621252) (not b!5039925) (not b!5039896) (not b!5040145) (not b!5039945) (not d!1621300) (not d!1621462) (not b!5040217) (not d!1621448) (not b!5040291) (not d!1621442) (not b!5040288) (not b!5039911) (not b!5040006) (not b!5040019) (not b!5040261) (not b!5040305) (not b!5040044) (not b!5040271) (not b!5040192) (not d!1621366) (not b!5039981) (not b!5040168) (not b!5040159) (not b!5040270) (not b!5039908) (not b!5040066) (not b!5039673) (not d!1621304) (not b!5040075) (not b!5040033) (not d!1621318) (not b!5039944) (not d!1621226) (not b!5040078) (not d!1621236) (not b!5040100) (not b!5040057) (not d!1621306) (not b!5039656) (not b!5040127) (not b!5039998) (not b!5040204) (not b!5040285) (not b!5039968) (not b!5040298) (not b!5040297) (not d!1621440) (not d!1621232) (not b!5040034) (not b!5040098) (not b!5040108) (not b!5039653) (not b!5040040) (not b!5040172) (not b!5040003) (not b!5039934) (not b!5039953) (not d!1621326) (not b!5040072) (not b!5040240) (not d!1621400) tp_is_empty!36785 (not b!5040061) (not b!5040267) (not d!1621382) (not b!5039988) (not b!5040189) (not b!5040126) (not b!5039993) (not b!5040015) (not b!5039956) (not b!5040131) (not b!5040179) (not b!5040001) (not b!5040301) (not b!5040233) (not b!5040275) (not b!5040018) (not b!5040284) (not b!5040024) (not b!5040252) (not b!5040196) (not b!5040273) (not b!5040134) (not b!5040056) (not b!5040064) (not b!5039664) (not d!1621194) (not d!1621354) (not b!5040214) (not b!5040211) (not d!1621302) (not b!5040086) (not b!5040250) (not d!1621296) (not d!1621492) (not b!5040296) (not b!5040030) (not b!5039899) (not b!5040011) (not b!5040161) (not b!5040154) (not d!1621410) (not b!5040102) (not b!5040236) (not b!5040055) (not b!5040142) (not b!5040046) (not b!5040194) (not b!5039670) (not d!1621352) (not b!5040156) (not b!5040009) (not b!5040079) (not b!5040206) (not b!5039963) (not b!5040256) (not b!5040220) (not b!5040295) (not b!5040128) (not d!1621392) (not b!5040303) (not d!1621438) (not b!5039975) (not b!5040177) (not b!5040136) (not b!5039948) (not b!5039914) (not b!5039909) (not b!5039985) (not d!1621332) (not b!5040268) (not b!5039939) (not b!5039921) (not b!5040248) (not b!5040283) (not b!5040017) (not b!5040185) (not d!1621198) (not d!1621248) (not b!5040254) (not b!5040068) (not b!5040083) (not b!5040070) (not d!1621418) (not b!5040191) (not b!5039904) (not b!5040278) (not b!5040173) (not d!1621218) (not b!5040245) (not b!5039971) (not b!5040222) (not b!5039952) (not b!5040129) (not d!1621360) (not d!1621430) (not d!1621432) (not b!5039936) (not b!5040224) (not b!5040246) (not b!5039964) (not d!1621498) (not b!5040294) (not b!5040076) (not b!5040287) (not b!5040274) (not b!5040183) (not b!5040110) (not b!5040212) (not b!5039938) (not b!5040263) (not b!5040091) (not b!5040279) (not b!5039943) (not d!1621312) (not b!5040272) (not b!5040280) (not b!5040255) (not b!5040021) (not b!5040124) (not b!5039987) (not bm!351394) (not b!5040242) (not b!5040304) (not b!5040130) (not b!5040181) (not b!5040096) (not b!5039905) (not b!5039916) (not b!5040290) (not b!5040266) (not b!5040164) (not b!5040020) (not b!5040225) (not b!5040042) (not b!5039994) (not b!5040200) (not b!5039959) (not b!5040093) (not d!1621308) (not b!5040073) (not b!5040095) (not d!1621338) (not b!5039950) (not d!1621208) (not b!5040175) (not b!5040188) (not d!1621426) (not b!5040146) (not b!5040264) (not b!5040292) (not b!5040269) (not b!5040300) (not b!5039912) (not d!1621282) (not b!5040123) (not b!5040230) (not b!5040148) (not b!5040207) (not b!5040243) (not b!5040293) (not b!5040259) (not b!5040115) (not b!5039898) (not d!1621192) (not d!1621412) (not b!5039941) (not d!1621250) (not b!5040053) (not b!5040104) (not b!5039991) (not d!1621230) (not d!1621408) (not b!5039972) (not b!5040036) (not b!5040085) (not b!5039954) (not d!1621266) (not d!1621314) (not b!5040081) (not b!5039679) (not b!5040209) (not b!5040218) (not b!5040150) (not b!5039901) (not b!5040169) (not b!5040084) (not b!5040299) (not b!5040140) (not b!5040087) (not b!5040238) (not b!5039946) (not d!1621488) (not b!5040229) (not b!5039919) (not b!5039933) (not b!5040143) (not b!5040289) (not b!5039977) (not b!5040089) (not b!5040163) (not b!5040151) (not b!5040120))
(check-sat)
