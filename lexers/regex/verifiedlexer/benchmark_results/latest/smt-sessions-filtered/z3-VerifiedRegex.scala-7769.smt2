; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408410 () Bool)

(assert start!408410)

(declare-fun b_free!126689 () Bool)

(declare-fun b_next!127393 () Bool)

(assert (=> start!408410 (= b_free!126689 (not b_next!127393))))

(declare-fun tp!1307112 () Bool)

(declare-fun b_and!337755 () Bool)

(assert (=> start!408410 (= tp!1307112 b_and!337755)))

(declare-fun b!4262130 () Bool)

(declare-fun e!2646672 () Bool)

(declare-fun tp!1307111 () Bool)

(assert (=> b!4262130 (= e!2646672 tp!1307111)))

(declare-fun res!1751781 () Bool)

(declare-fun e!2646673 () Bool)

(assert (=> start!408410 (=> (not res!1751781) (not e!2646673))))

(declare-datatypes ((T!79420 0))(
  ( (T!79421 (val!15237 Int)) )
))
(declare-datatypes ((List!47366 0))(
  ( (Nil!47242) (Cons!47242 (h!52662 T!79420) (t!353271 List!47366)) )
))
(declare-datatypes ((IArray!28501 0))(
  ( (IArray!28502 (innerList!14308 List!47366)) )
))
(declare-datatypes ((Conc!14248 0))(
  ( (Node!14248 (left!35025 Conc!14248) (right!35355 Conc!14248) (csize!28726 Int) (cheight!14459 Int)) (Leaf!22018 (xs!17554 IArray!28501) (csize!28727 Int)) (Empty!14248) )
))
(declare-fun t!4386 () Conc!14248)

(declare-fun isBalanced!3807 (Conc!14248) Bool)

(assert (=> start!408410 (= res!1751781 (isBalanced!3807 t!4386))))

(assert (=> start!408410 e!2646673))

(declare-fun e!2646670 () Bool)

(declare-fun inv!62149 (Conc!14248) Bool)

(assert (=> start!408410 (and (inv!62149 t!4386) e!2646670)))

(assert (=> start!408410 tp!1307112))

(declare-fun b!4262131 () Bool)

(declare-fun inv!62150 (IArray!28501) Bool)

(assert (=> b!4262131 (= e!2646670 (and (inv!62150 (xs!17554 t!4386)) e!2646672))))

(declare-fun b!4262132 () Bool)

(declare-fun e!2646674 () Bool)

(declare-datatypes ((B!2825 0))(
  ( (B!2826 (val!15238 Int)) )
))
(declare-datatypes ((List!47367 0))(
  ( (Nil!47243) (Cons!47243 (h!52663 B!2825) (t!353272 List!47367)) )
))
(declare-datatypes ((IArray!28503 0))(
  ( (IArray!28504 (innerList!14309 List!47367)) )
))
(declare-datatypes ((Conc!14249 0))(
  ( (Node!14249 (left!35026 Conc!14249) (right!35356 Conc!14249) (csize!28728 Int) (cheight!14460 Int)) (Leaf!22019 (xs!17555 IArray!28503) (csize!28729 Int)) (Empty!14249) )
))
(declare-fun lt!1510890 () Conc!14249)

(declare-fun isBalanced!3808 (Conc!14249) Bool)

(assert (=> b!4262132 (= e!2646674 (not (isBalanced!3808 lt!1510890)))))

(declare-fun tp!1307109 () Bool)

(declare-fun tp!1307110 () Bool)

(declare-fun b!4262133 () Bool)

(assert (=> b!4262133 (= e!2646670 (and (inv!62149 (left!35025 t!4386)) tp!1307109 (inv!62149 (right!35355 t!4386)) tp!1307110))))

(declare-fun b!4262134 () Bool)

(declare-fun e!2646671 () Bool)

(assert (=> b!4262134 (= e!2646671 e!2646674)))

(declare-fun res!1751783 () Bool)

(assert (=> b!4262134 (=> res!1751783 e!2646674)))

(declare-fun f!428 () Int)

(declare-fun list!17067 (Conc!14249) List!47367)

(declare-fun map!9674 (List!47366 Int) List!47367)

(declare-fun list!17068 (Conc!14248) List!47366)

(assert (=> b!4262134 (= res!1751783 (not (= (list!17067 lt!1510890) (map!9674 (list!17068 t!4386) f!428))))))

(declare-fun map!9675 (Conc!14248 Int) Conc!14249)

(assert (=> b!4262134 (= lt!1510890 (Node!14249 (map!9675 (left!35025 t!4386) f!428) (map!9675 (right!35355 t!4386) f!428) (csize!28726 t!4386) (cheight!14459 t!4386)))))

(declare-fun b!4262135 () Bool)

(assert (=> b!4262135 (= e!2646673 e!2646671)))

(declare-fun res!1751782 () Bool)

(assert (=> b!4262135 (=> (not res!1751782) (not e!2646671))))

(declare-fun lt!1510889 () List!47366)

(declare-fun lt!1510891 () List!47366)

(declare-fun ++!12035 (List!47366 List!47366) List!47366)

(declare-fun ++!12036 (List!47367 List!47367) List!47367)

(assert (=> b!4262135 (= res!1751782 (= (map!9674 (++!12035 lt!1510891 lt!1510889) f!428) (++!12036 (map!9674 lt!1510891 f!428) (map!9674 lt!1510889 f!428))))))

(declare-datatypes ((Unit!66139 0))(
  ( (Unit!66140) )
))
(declare-fun lt!1510892 () Unit!66139)

(declare-fun lemmaMapConcat!32 (List!47366 List!47366 Int) Unit!66139)

(assert (=> b!4262135 (= lt!1510892 (lemmaMapConcat!32 lt!1510891 lt!1510889 f!428))))

(assert (=> b!4262135 (= lt!1510889 (list!17068 (right!35355 t!4386)))))

(assert (=> b!4262135 (= lt!1510891 (list!17068 (left!35025 t!4386)))))

(declare-fun b!4262136 () Bool)

(declare-fun res!1751780 () Bool)

(assert (=> b!4262136 (=> (not res!1751780) (not e!2646673))))

(get-info :version)

(assert (=> b!4262136 (= res!1751780 (and (not ((_ is Empty!14248) t!4386)) (not ((_ is Leaf!22018) t!4386))))))

(assert (= (and start!408410 res!1751781) b!4262136))

(assert (= (and b!4262136 res!1751780) b!4262135))

(assert (= (and b!4262135 res!1751782) b!4262134))

(assert (= (and b!4262134 (not res!1751783)) b!4262132))

(assert (= (and start!408410 ((_ is Node!14248) t!4386)) b!4262133))

(assert (= b!4262131 b!4262130))

(assert (= (and start!408410 ((_ is Leaf!22018) t!4386)) b!4262131))

(declare-fun m!4850657 () Bool)

(assert (=> b!4262133 m!4850657))

(declare-fun m!4850659 () Bool)

(assert (=> b!4262133 m!4850659))

(declare-fun m!4850661 () Bool)

(assert (=> b!4262131 m!4850661))

(declare-fun m!4850663 () Bool)

(assert (=> b!4262132 m!4850663))

(declare-fun m!4850665 () Bool)

(assert (=> b!4262134 m!4850665))

(declare-fun m!4850667 () Bool)

(assert (=> b!4262134 m!4850667))

(declare-fun m!4850669 () Bool)

(assert (=> b!4262134 m!4850669))

(declare-fun m!4850671 () Bool)

(assert (=> b!4262134 m!4850671))

(assert (=> b!4262134 m!4850665))

(declare-fun m!4850673 () Bool)

(assert (=> b!4262134 m!4850673))

(declare-fun m!4850675 () Bool)

(assert (=> b!4262135 m!4850675))

(declare-fun m!4850677 () Bool)

(assert (=> b!4262135 m!4850677))

(declare-fun m!4850679 () Bool)

(assert (=> b!4262135 m!4850679))

(declare-fun m!4850681 () Bool)

(assert (=> b!4262135 m!4850681))

(declare-fun m!4850683 () Bool)

(assert (=> b!4262135 m!4850683))

(assert (=> b!4262135 m!4850681))

(assert (=> b!4262135 m!4850675))

(assert (=> b!4262135 m!4850677))

(declare-fun m!4850685 () Bool)

(assert (=> b!4262135 m!4850685))

(declare-fun m!4850687 () Bool)

(assert (=> b!4262135 m!4850687))

(declare-fun m!4850689 () Bool)

(assert (=> b!4262135 m!4850689))

(declare-fun m!4850691 () Bool)

(assert (=> start!408410 m!4850691))

(declare-fun m!4850693 () Bool)

(assert (=> start!408410 m!4850693))

(check-sat (not start!408410) (not b!4262132) (not b!4262135) (not b_next!127393) (not b!4262130) b_and!337755 (not b!4262131) (not b!4262133) (not b!4262134))
(check-sat b_and!337755 (not b_next!127393))
(get-model)

(declare-fun b!4262169 () Bool)

(declare-fun res!1751801 () Bool)

(declare-fun e!2646691 () Bool)

(assert (=> b!4262169 (=> (not res!1751801) (not e!2646691))))

(assert (=> b!4262169 (= res!1751801 (isBalanced!3808 (left!35026 lt!1510890)))))

(declare-fun b!4262170 () Bool)

(declare-fun res!1751803 () Bool)

(assert (=> b!4262170 (=> (not res!1751803) (not e!2646691))))

(assert (=> b!4262170 (= res!1751803 (isBalanced!3808 (right!35356 lt!1510890)))))

(declare-fun d!1254984 () Bool)

(declare-fun res!1751800 () Bool)

(declare-fun e!2646690 () Bool)

(assert (=> d!1254984 (=> res!1751800 e!2646690)))

(assert (=> d!1254984 (= res!1751800 (not ((_ is Node!14249) lt!1510890)))))

(assert (=> d!1254984 (= (isBalanced!3808 lt!1510890) e!2646690)))

(declare-fun b!4262171 () Bool)

(declare-fun res!1751802 () Bool)

(assert (=> b!4262171 (=> (not res!1751802) (not e!2646691))))

(declare-fun isEmpty!27986 (Conc!14249) Bool)

(assert (=> b!4262171 (= res!1751802 (not (isEmpty!27986 (left!35026 lt!1510890))))))

(declare-fun b!4262172 () Bool)

(assert (=> b!4262172 (= e!2646691 (not (isEmpty!27986 (right!35356 lt!1510890))))))

(declare-fun b!4262173 () Bool)

(assert (=> b!4262173 (= e!2646690 e!2646691)))

(declare-fun res!1751805 () Bool)

(assert (=> b!4262173 (=> (not res!1751805) (not e!2646691))))

(declare-fun height!1871 (Conc!14249) Int)

(assert (=> b!4262173 (= res!1751805 (<= (- 1) (- (height!1871 (left!35026 lt!1510890)) (height!1871 (right!35356 lt!1510890)))))))

(declare-fun b!4262174 () Bool)

(declare-fun res!1751804 () Bool)

(assert (=> b!4262174 (=> (not res!1751804) (not e!2646691))))

(assert (=> b!4262174 (= res!1751804 (<= (- (height!1871 (left!35026 lt!1510890)) (height!1871 (right!35356 lt!1510890))) 1))))

(assert (= (and d!1254984 (not res!1751800)) b!4262173))

(assert (= (and b!4262173 res!1751805) b!4262174))

(assert (= (and b!4262174 res!1751804) b!4262169))

(assert (= (and b!4262169 res!1751801) b!4262170))

(assert (= (and b!4262170 res!1751803) b!4262171))

(assert (= (and b!4262171 res!1751802) b!4262172))

(declare-fun m!4850713 () Bool)

(assert (=> b!4262169 m!4850713))

(declare-fun m!4850715 () Bool)

(assert (=> b!4262172 m!4850715))

(declare-fun m!4850717 () Bool)

(assert (=> b!4262171 m!4850717))

(declare-fun m!4850719 () Bool)

(assert (=> b!4262174 m!4850719))

(declare-fun m!4850721 () Bool)

(assert (=> b!4262174 m!4850721))

(assert (=> b!4262173 m!4850719))

(assert (=> b!4262173 m!4850721))

(declare-fun m!4850723 () Bool)

(assert (=> b!4262170 m!4850723))

(assert (=> b!4262132 d!1254984))

(declare-fun b!4262201 () Bool)

(declare-fun res!1751820 () Bool)

(declare-fun e!2646703 () Bool)

(assert (=> b!4262201 (=> (not res!1751820) (not e!2646703))))

(assert (=> b!4262201 (= res!1751820 (isBalanced!3807 (left!35025 t!4386)))))

(declare-fun b!4262202 () Bool)

(declare-fun res!1751819 () Bool)

(assert (=> b!4262202 (=> (not res!1751819) (not e!2646703))))

(declare-fun height!1872 (Conc!14248) Int)

(assert (=> b!4262202 (= res!1751819 (<= (- (height!1872 (left!35025 t!4386)) (height!1872 (right!35355 t!4386))) 1))))

(declare-fun b!4262203 () Bool)

(declare-fun res!1751818 () Bool)

(assert (=> b!4262203 (=> (not res!1751818) (not e!2646703))))

(declare-fun isEmpty!27987 (Conc!14248) Bool)

(assert (=> b!4262203 (= res!1751818 (not (isEmpty!27987 (left!35025 t!4386))))))

(declare-fun b!4262204 () Bool)

(assert (=> b!4262204 (= e!2646703 (not (isEmpty!27987 (right!35355 t!4386))))))

(declare-fun d!1254992 () Bool)

(declare-fun res!1751822 () Bool)

(declare-fun e!2646704 () Bool)

(assert (=> d!1254992 (=> res!1751822 e!2646704)))

(assert (=> d!1254992 (= res!1751822 (not ((_ is Node!14248) t!4386)))))

(assert (=> d!1254992 (= (isBalanced!3807 t!4386) e!2646704)))

(declare-fun b!4262205 () Bool)

(assert (=> b!4262205 (= e!2646704 e!2646703)))

(declare-fun res!1751823 () Bool)

(assert (=> b!4262205 (=> (not res!1751823) (not e!2646703))))

(assert (=> b!4262205 (= res!1751823 (<= (- 1) (- (height!1872 (left!35025 t!4386)) (height!1872 (right!35355 t!4386)))))))

(declare-fun b!4262206 () Bool)

(declare-fun res!1751821 () Bool)

(assert (=> b!4262206 (=> (not res!1751821) (not e!2646703))))

(assert (=> b!4262206 (= res!1751821 (isBalanced!3807 (right!35355 t!4386)))))

(assert (= (and d!1254992 (not res!1751822)) b!4262205))

(assert (= (and b!4262205 res!1751823) b!4262202))

(assert (= (and b!4262202 res!1751819) b!4262201))

(assert (= (and b!4262201 res!1751820) b!4262206))

(assert (= (and b!4262206 res!1751821) b!4262203))

(assert (= (and b!4262203 res!1751818) b!4262204))

(declare-fun m!4850743 () Bool)

(assert (=> b!4262203 m!4850743))

(declare-fun m!4850745 () Bool)

(assert (=> b!4262201 m!4850745))

(declare-fun m!4850747 () Bool)

(assert (=> b!4262206 m!4850747))

(declare-fun m!4850749 () Bool)

(assert (=> b!4262204 m!4850749))

(declare-fun m!4850751 () Bool)

(assert (=> b!4262205 m!4850751))

(declare-fun m!4850755 () Bool)

(assert (=> b!4262205 m!4850755))

(assert (=> b!4262202 m!4850751))

(assert (=> b!4262202 m!4850755))

(assert (=> start!408410 d!1254992))

(declare-fun d!1254998 () Bool)

(declare-fun c!724073 () Bool)

(assert (=> d!1254998 (= c!724073 ((_ is Node!14248) t!4386))))

(declare-fun e!2646712 () Bool)

(assert (=> d!1254998 (= (inv!62149 t!4386) e!2646712)))

(declare-fun b!4262219 () Bool)

(declare-fun inv!62153 (Conc!14248) Bool)

(assert (=> b!4262219 (= e!2646712 (inv!62153 t!4386))))

(declare-fun b!4262220 () Bool)

(declare-fun e!2646713 () Bool)

(assert (=> b!4262220 (= e!2646712 e!2646713)))

(declare-fun res!1751826 () Bool)

(assert (=> b!4262220 (= res!1751826 (not ((_ is Leaf!22018) t!4386)))))

(assert (=> b!4262220 (=> res!1751826 e!2646713)))

(declare-fun b!4262221 () Bool)

(declare-fun inv!62154 (Conc!14248) Bool)

(assert (=> b!4262221 (= e!2646713 (inv!62154 t!4386))))

(assert (= (and d!1254998 c!724073) b!4262219))

(assert (= (and d!1254998 (not c!724073)) b!4262220))

(assert (= (and b!4262220 (not res!1751826)) b!4262221))

(declare-fun m!4850775 () Bool)

(assert (=> b!4262219 m!4850775))

(declare-fun m!4850777 () Bool)

(assert (=> b!4262221 m!4850777))

(assert (=> start!408410 d!1254998))

(declare-fun d!1255006 () Bool)

(declare-fun c!724076 () Bool)

(assert (=> d!1255006 (= c!724076 ((_ is Node!14248) (left!35025 t!4386)))))

(declare-fun e!2646716 () Bool)

(assert (=> d!1255006 (= (inv!62149 (left!35025 t!4386)) e!2646716)))

(declare-fun b!4262226 () Bool)

(assert (=> b!4262226 (= e!2646716 (inv!62153 (left!35025 t!4386)))))

(declare-fun b!4262227 () Bool)

(declare-fun e!2646717 () Bool)

(assert (=> b!4262227 (= e!2646716 e!2646717)))

(declare-fun res!1751827 () Bool)

(assert (=> b!4262227 (= res!1751827 (not ((_ is Leaf!22018) (left!35025 t!4386))))))

(assert (=> b!4262227 (=> res!1751827 e!2646717)))

(declare-fun b!4262228 () Bool)

(assert (=> b!4262228 (= e!2646717 (inv!62154 (left!35025 t!4386)))))

(assert (= (and d!1255006 c!724076) b!4262226))

(assert (= (and d!1255006 (not c!724076)) b!4262227))

(assert (= (and b!4262227 (not res!1751827)) b!4262228))

(declare-fun m!4850779 () Bool)

(assert (=> b!4262226 m!4850779))

(declare-fun m!4850781 () Bool)

(assert (=> b!4262228 m!4850781))

(assert (=> b!4262133 d!1255006))

(declare-fun d!1255008 () Bool)

(declare-fun c!724077 () Bool)

(assert (=> d!1255008 (= c!724077 ((_ is Node!14248) (right!35355 t!4386)))))

(declare-fun e!2646720 () Bool)

(assert (=> d!1255008 (= (inv!62149 (right!35355 t!4386)) e!2646720)))

(declare-fun b!4262229 () Bool)

(assert (=> b!4262229 (= e!2646720 (inv!62153 (right!35355 t!4386)))))

(declare-fun b!4262230 () Bool)

(declare-fun e!2646721 () Bool)

(assert (=> b!4262230 (= e!2646720 e!2646721)))

(declare-fun res!1751830 () Bool)

(assert (=> b!4262230 (= res!1751830 (not ((_ is Leaf!22018) (right!35355 t!4386))))))

(assert (=> b!4262230 (=> res!1751830 e!2646721)))

(declare-fun b!4262231 () Bool)

(assert (=> b!4262231 (= e!2646721 (inv!62154 (right!35355 t!4386)))))

(assert (= (and d!1255008 c!724077) b!4262229))

(assert (= (and d!1255008 (not c!724077)) b!4262230))

(assert (= (and b!4262230 (not res!1751830)) b!4262231))

(declare-fun m!4850783 () Bool)

(assert (=> b!4262229 m!4850783))

(declare-fun m!4850785 () Bool)

(assert (=> b!4262231 m!4850785))

(assert (=> b!4262133 d!1255008))

(declare-fun b!4262248 () Bool)

(declare-fun e!2646728 () List!47367)

(assert (=> b!4262248 (= e!2646728 Nil!47243)))

(declare-fun b!4262250 () Bool)

(declare-fun e!2646729 () List!47367)

(declare-fun list!17070 (IArray!28503) List!47367)

(assert (=> b!4262250 (= e!2646729 (list!17070 (xs!17555 lt!1510890)))))

(declare-fun b!4262251 () Bool)

(assert (=> b!4262251 (= e!2646729 (++!12036 (list!17067 (left!35026 lt!1510890)) (list!17067 (right!35356 lt!1510890))))))

(declare-fun b!4262249 () Bool)

(assert (=> b!4262249 (= e!2646728 e!2646729)))

(declare-fun c!724084 () Bool)

(assert (=> b!4262249 (= c!724084 ((_ is Leaf!22019) lt!1510890))))

(declare-fun d!1255010 () Bool)

(declare-fun c!724083 () Bool)

(assert (=> d!1255010 (= c!724083 ((_ is Empty!14249) lt!1510890))))

(assert (=> d!1255010 (= (list!17067 lt!1510890) e!2646728)))

(assert (= (and d!1255010 c!724083) b!4262248))

(assert (= (and d!1255010 (not c!724083)) b!4262249))

(assert (= (and b!4262249 c!724084) b!4262250))

(assert (= (and b!4262249 (not c!724084)) b!4262251))

(declare-fun m!4850797 () Bool)

(assert (=> b!4262250 m!4850797))

(declare-fun m!4850799 () Bool)

(assert (=> b!4262251 m!4850799))

(declare-fun m!4850801 () Bool)

(assert (=> b!4262251 m!4850801))

(assert (=> b!4262251 m!4850799))

(assert (=> b!4262251 m!4850801))

(declare-fun m!4850803 () Bool)

(assert (=> b!4262251 m!4850803))

(assert (=> b!4262134 d!1255010))

(declare-fun b!4262286 () Bool)

(declare-fun e!2646748 () Conc!14249)

(declare-fun e!2646746 () Conc!14249)

(assert (=> b!4262286 (= e!2646748 e!2646746)))

(declare-fun c!724092 () Bool)

(assert (=> b!4262286 (= c!724092 ((_ is Leaf!22018) (left!35025 t!4386)))))

(declare-fun b!4262287 () Bool)

(declare-fun e!2646747 () Bool)

(declare-fun lt!1510912 () Conc!14249)

(assert (=> b!4262287 (= e!2646747 (isBalanced!3808 lt!1510912))))

(declare-fun d!1255014 () Bool)

(assert (=> d!1255014 e!2646747))

(declare-fun res!1751855 () Bool)

(assert (=> d!1255014 (=> (not res!1751855) (not e!2646747))))

(assert (=> d!1255014 (= res!1751855 (= (list!17067 lt!1510912) (map!9674 (list!17068 (left!35025 t!4386)) f!428)))))

(assert (=> d!1255014 (= lt!1510912 e!2646748)))

(declare-fun c!724093 () Bool)

(assert (=> d!1255014 (= c!724093 ((_ is Empty!14248) (left!35025 t!4386)))))

(assert (=> d!1255014 (isBalanced!3807 (left!35025 t!4386))))

(assert (=> d!1255014 (= (map!9675 (left!35025 t!4386) f!428) lt!1510912)))

(declare-fun b!4262288 () Bool)

(assert (=> b!4262288 (= e!2646748 Empty!14249)))

(declare-fun b!4262289 () Bool)

(declare-fun lt!1510911 () Unit!66139)

(assert (=> b!4262289 (= lt!1510911 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))) f!428))))

(assert (=> b!4262289 (= e!2646746 (Node!14249 (map!9675 (left!35025 (left!35025 t!4386)) f!428) (map!9675 (right!35355 (left!35025 t!4386)) f!428) (csize!28726 (left!35025 t!4386)) (cheight!14459 (left!35025 t!4386))))))

(declare-fun b!4262290 () Bool)

(declare-fun map!9676 (IArray!28501 Int) IArray!28503)

(assert (=> b!4262290 (= e!2646746 (Leaf!22019 (map!9676 (xs!17554 (left!35025 t!4386)) f!428) (csize!28727 (left!35025 t!4386))))))

(assert (= (and d!1255014 c!724093) b!4262288))

(assert (= (and d!1255014 (not c!724093)) b!4262286))

(assert (= (and b!4262286 c!724092) b!4262290))

(assert (= (and b!4262286 (not c!724092)) b!4262289))

(assert (= (and d!1255014 res!1751855) b!4262287))

(declare-fun m!4850819 () Bool)

(assert (=> b!4262287 m!4850819))

(declare-fun m!4850821 () Bool)

(assert (=> d!1255014 m!4850821))

(assert (=> d!1255014 m!4850685))

(assert (=> d!1255014 m!4850685))

(declare-fun m!4850823 () Bool)

(assert (=> d!1255014 m!4850823))

(assert (=> d!1255014 m!4850745))

(declare-fun m!4850825 () Bool)

(assert (=> b!4262289 m!4850825))

(declare-fun m!4850827 () Bool)

(assert (=> b!4262289 m!4850827))

(declare-fun m!4850829 () Bool)

(assert (=> b!4262289 m!4850829))

(assert (=> b!4262289 m!4850829))

(assert (=> b!4262289 m!4850827))

(declare-fun m!4850831 () Bool)

(assert (=> b!4262289 m!4850831))

(declare-fun m!4850833 () Bool)

(assert (=> b!4262289 m!4850833))

(declare-fun m!4850835 () Bool)

(assert (=> b!4262290 m!4850835))

(assert (=> b!4262134 d!1255014))

(declare-fun d!1255018 () Bool)

(declare-fun lt!1510915 () List!47367)

(declare-fun size!34605 (List!47367) Int)

(declare-fun size!34606 (List!47366) Int)

(assert (=> d!1255018 (= (size!34605 lt!1510915) (size!34606 (list!17068 t!4386)))))

(declare-fun e!2646757 () List!47367)

(assert (=> d!1255018 (= lt!1510915 e!2646757)))

(declare-fun c!724100 () Bool)

(assert (=> d!1255018 (= c!724100 ((_ is Nil!47242) (list!17068 t!4386)))))

(assert (=> d!1255018 (= (map!9674 (list!17068 t!4386) f!428) lt!1510915)))

(declare-fun b!4262309 () Bool)

(assert (=> b!4262309 (= e!2646757 Nil!47243)))

(declare-fun b!4262310 () Bool)

(declare-fun $colon$colon!633 (List!47367 B!2825) List!47367)

(declare-fun dynLambda!20221 (Int T!79420) B!2825)

(assert (=> b!4262310 (= e!2646757 ($colon$colon!633 (map!9674 (t!353271 (list!17068 t!4386)) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 t!4386)))))))

(assert (= (and d!1255018 c!724100) b!4262309))

(assert (= (and d!1255018 (not c!724100)) b!4262310))

(declare-fun b_lambda!125825 () Bool)

(assert (=> (not b_lambda!125825) (not b!4262310)))

(declare-fun t!353287 () Bool)

(declare-fun tb!256953 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353287) tb!256953))

(declare-fun result!313520 () Bool)

(declare-fun tp_is_empty!22881 () Bool)

(assert (=> tb!256953 (= result!313520 tp_is_empty!22881)))

(assert (=> b!4262310 t!353287))

(declare-fun b_and!337763 () Bool)

(assert (= b_and!337755 (and (=> t!353287 result!313520) b_and!337763)))

(declare-fun m!4850857 () Bool)

(assert (=> d!1255018 m!4850857))

(assert (=> d!1255018 m!4850665))

(declare-fun m!4850859 () Bool)

(assert (=> d!1255018 m!4850859))

(declare-fun m!4850861 () Bool)

(assert (=> b!4262310 m!4850861))

(declare-fun m!4850863 () Bool)

(assert (=> b!4262310 m!4850863))

(assert (=> b!4262310 m!4850861))

(assert (=> b!4262310 m!4850863))

(declare-fun m!4850865 () Bool)

(assert (=> b!4262310 m!4850865))

(assert (=> b!4262134 d!1255018))

(declare-fun b!4262317 () Bool)

(declare-fun e!2646762 () Conc!14249)

(declare-fun e!2646760 () Conc!14249)

(assert (=> b!4262317 (= e!2646762 e!2646760)))

(declare-fun c!724103 () Bool)

(assert (=> b!4262317 (= c!724103 ((_ is Leaf!22018) (right!35355 t!4386)))))

(declare-fun b!4262318 () Bool)

(declare-fun e!2646761 () Bool)

(declare-fun lt!1510917 () Conc!14249)

(assert (=> b!4262318 (= e!2646761 (isBalanced!3808 lt!1510917))))

(declare-fun d!1255024 () Bool)

(assert (=> d!1255024 e!2646761))

(declare-fun res!1751862 () Bool)

(assert (=> d!1255024 (=> (not res!1751862) (not e!2646761))))

(assert (=> d!1255024 (= res!1751862 (= (list!17067 lt!1510917) (map!9674 (list!17068 (right!35355 t!4386)) f!428)))))

(assert (=> d!1255024 (= lt!1510917 e!2646762)))

(declare-fun c!724104 () Bool)

(assert (=> d!1255024 (= c!724104 ((_ is Empty!14248) (right!35355 t!4386)))))

(assert (=> d!1255024 (isBalanced!3807 (right!35355 t!4386))))

(assert (=> d!1255024 (= (map!9675 (right!35355 t!4386) f!428) lt!1510917)))

(declare-fun b!4262319 () Bool)

(assert (=> b!4262319 (= e!2646762 Empty!14249)))

(declare-fun b!4262320 () Bool)

(declare-fun lt!1510916 () Unit!66139)

(assert (=> b!4262320 (= lt!1510916 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))) f!428))))

(assert (=> b!4262320 (= e!2646760 (Node!14249 (map!9675 (left!35025 (right!35355 t!4386)) f!428) (map!9675 (right!35355 (right!35355 t!4386)) f!428) (csize!28726 (right!35355 t!4386)) (cheight!14459 (right!35355 t!4386))))))

(declare-fun b!4262321 () Bool)

(assert (=> b!4262321 (= e!2646760 (Leaf!22019 (map!9676 (xs!17554 (right!35355 t!4386)) f!428) (csize!28727 (right!35355 t!4386))))))

(assert (= (and d!1255024 c!724104) b!4262319))

(assert (= (and d!1255024 (not c!724104)) b!4262317))

(assert (= (and b!4262317 c!724103) b!4262321))

(assert (= (and b!4262317 (not c!724103)) b!4262320))

(assert (= (and d!1255024 res!1751862) b!4262318))

(declare-fun m!4850867 () Bool)

(assert (=> b!4262318 m!4850867))

(declare-fun m!4850869 () Bool)

(assert (=> d!1255024 m!4850869))

(assert (=> d!1255024 m!4850687))

(assert (=> d!1255024 m!4850687))

(declare-fun m!4850871 () Bool)

(assert (=> d!1255024 m!4850871))

(assert (=> d!1255024 m!4850747))

(declare-fun m!4850873 () Bool)

(assert (=> b!4262320 m!4850873))

(declare-fun m!4850875 () Bool)

(assert (=> b!4262320 m!4850875))

(declare-fun m!4850877 () Bool)

(assert (=> b!4262320 m!4850877))

(assert (=> b!4262320 m!4850877))

(assert (=> b!4262320 m!4850875))

(declare-fun m!4850879 () Bool)

(assert (=> b!4262320 m!4850879))

(declare-fun m!4850881 () Bool)

(assert (=> b!4262320 m!4850881))

(declare-fun m!4850883 () Bool)

(assert (=> b!4262321 m!4850883))

(assert (=> b!4262134 d!1255024))

(declare-fun b!4262341 () Bool)

(declare-fun e!2646772 () List!47366)

(assert (=> b!4262341 (= e!2646772 (++!12035 (list!17068 (left!35025 t!4386)) (list!17068 (right!35355 t!4386))))))

(declare-fun b!4262339 () Bool)

(declare-fun e!2646771 () List!47366)

(assert (=> b!4262339 (= e!2646771 e!2646772)))

(declare-fun c!724114 () Bool)

(assert (=> b!4262339 (= c!724114 ((_ is Leaf!22018) t!4386))))

(declare-fun b!4262338 () Bool)

(assert (=> b!4262338 (= e!2646771 Nil!47242)))

(declare-fun b!4262340 () Bool)

(declare-fun list!17072 (IArray!28501) List!47366)

(assert (=> b!4262340 (= e!2646772 (list!17072 (xs!17554 t!4386)))))

(declare-fun d!1255026 () Bool)

(declare-fun c!724113 () Bool)

(assert (=> d!1255026 (= c!724113 ((_ is Empty!14248) t!4386))))

(assert (=> d!1255026 (= (list!17068 t!4386) e!2646771)))

(assert (= (and d!1255026 c!724113) b!4262338))

(assert (= (and d!1255026 (not c!724113)) b!4262339))

(assert (= (and b!4262339 c!724114) b!4262340))

(assert (= (and b!4262339 (not c!724114)) b!4262341))

(assert (=> b!4262341 m!4850685))

(assert (=> b!4262341 m!4850687))

(assert (=> b!4262341 m!4850685))

(assert (=> b!4262341 m!4850687))

(declare-fun m!4850885 () Bool)

(assert (=> b!4262341 m!4850885))

(declare-fun m!4850887 () Bool)

(assert (=> b!4262340 m!4850887))

(assert (=> b!4262134 d!1255026))

(declare-fun b!4262345 () Bool)

(declare-fun e!2646774 () List!47366)

(assert (=> b!4262345 (= e!2646774 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4262343 () Bool)

(declare-fun e!2646773 () List!47366)

(assert (=> b!4262343 (= e!2646773 e!2646774)))

(declare-fun c!724116 () Bool)

(assert (=> b!4262343 (= c!724116 ((_ is Leaf!22018) (left!35025 t!4386)))))

(declare-fun b!4262342 () Bool)

(assert (=> b!4262342 (= e!2646773 Nil!47242)))

(declare-fun b!4262344 () Bool)

(assert (=> b!4262344 (= e!2646774 (list!17072 (xs!17554 (left!35025 t!4386))))))

(declare-fun d!1255028 () Bool)

(declare-fun c!724115 () Bool)

(assert (=> d!1255028 (= c!724115 ((_ is Empty!14248) (left!35025 t!4386)))))

(assert (=> d!1255028 (= (list!17068 (left!35025 t!4386)) e!2646773)))

(assert (= (and d!1255028 c!724115) b!4262342))

(assert (= (and d!1255028 (not c!724115)) b!4262343))

(assert (= (and b!4262343 c!724116) b!4262344))

(assert (= (and b!4262343 (not c!724116)) b!4262345))

(assert (=> b!4262345 m!4850829))

(assert (=> b!4262345 m!4850827))

(assert (=> b!4262345 m!4850829))

(assert (=> b!4262345 m!4850827))

(declare-fun m!4850889 () Bool)

(assert (=> b!4262345 m!4850889))

(declare-fun m!4850891 () Bool)

(assert (=> b!4262344 m!4850891))

(assert (=> b!4262135 d!1255028))

(declare-fun d!1255030 () Bool)

(declare-fun lt!1510922 () List!47367)

(assert (=> d!1255030 (= (size!34605 lt!1510922) (size!34606 lt!1510891))))

(declare-fun e!2646777 () List!47367)

(assert (=> d!1255030 (= lt!1510922 e!2646777)))

(declare-fun c!724117 () Bool)

(assert (=> d!1255030 (= c!724117 ((_ is Nil!47242) lt!1510891))))

(assert (=> d!1255030 (= (map!9674 lt!1510891 f!428) lt!1510922)))

(declare-fun b!4262348 () Bool)

(assert (=> b!4262348 (= e!2646777 Nil!47243)))

(declare-fun b!4262349 () Bool)

(assert (=> b!4262349 (= e!2646777 ($colon$colon!633 (map!9674 (t!353271 lt!1510891) f!428) (dynLambda!20221 f!428 (h!52662 lt!1510891))))))

(assert (= (and d!1255030 c!724117) b!4262348))

(assert (= (and d!1255030 (not c!724117)) b!4262349))

(declare-fun b_lambda!125827 () Bool)

(assert (=> (not b_lambda!125827) (not b!4262349)))

(declare-fun t!353291 () Bool)

(declare-fun tb!256955 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353291) tb!256955))

(declare-fun result!313524 () Bool)

(assert (=> tb!256955 (= result!313524 tp_is_empty!22881)))

(assert (=> b!4262349 t!353291))

(declare-fun b_and!337765 () Bool)

(assert (= b_and!337763 (and (=> t!353291 result!313524) b_and!337765)))

(declare-fun m!4850893 () Bool)

(assert (=> d!1255030 m!4850893))

(declare-fun m!4850895 () Bool)

(assert (=> d!1255030 m!4850895))

(declare-fun m!4850897 () Bool)

(assert (=> b!4262349 m!4850897))

(declare-fun m!4850899 () Bool)

(assert (=> b!4262349 m!4850899))

(assert (=> b!4262349 m!4850897))

(assert (=> b!4262349 m!4850899))

(declare-fun m!4850901 () Bool)

(assert (=> b!4262349 m!4850901))

(assert (=> b!4262135 d!1255030))

(declare-fun d!1255032 () Bool)

(declare-fun lt!1510923 () List!47367)

(assert (=> d!1255032 (= (size!34605 lt!1510923) (size!34606 (++!12035 lt!1510891 lt!1510889)))))

(declare-fun e!2646778 () List!47367)

(assert (=> d!1255032 (= lt!1510923 e!2646778)))

(declare-fun c!724118 () Bool)

(assert (=> d!1255032 (= c!724118 ((_ is Nil!47242) (++!12035 lt!1510891 lt!1510889)))))

(assert (=> d!1255032 (= (map!9674 (++!12035 lt!1510891 lt!1510889) f!428) lt!1510923)))

(declare-fun b!4262350 () Bool)

(assert (=> b!4262350 (= e!2646778 Nil!47243)))

(declare-fun b!4262351 () Bool)

(assert (=> b!4262351 (= e!2646778 ($colon$colon!633 (map!9674 (t!353271 (++!12035 lt!1510891 lt!1510889)) f!428) (dynLambda!20221 f!428 (h!52662 (++!12035 lt!1510891 lt!1510889)))))))

(assert (= (and d!1255032 c!724118) b!4262350))

(assert (= (and d!1255032 (not c!724118)) b!4262351))

(declare-fun b_lambda!125829 () Bool)

(assert (=> (not b_lambda!125829) (not b!4262351)))

(declare-fun t!353293 () Bool)

(declare-fun tb!256957 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353293) tb!256957))

(declare-fun result!313526 () Bool)

(assert (=> tb!256957 (= result!313526 tp_is_empty!22881)))

(assert (=> b!4262351 t!353293))

(declare-fun b_and!337767 () Bool)

(assert (= b_and!337765 (and (=> t!353293 result!313526) b_and!337767)))

(declare-fun m!4850903 () Bool)

(assert (=> d!1255032 m!4850903))

(assert (=> d!1255032 m!4850681))

(declare-fun m!4850905 () Bool)

(assert (=> d!1255032 m!4850905))

(declare-fun m!4850907 () Bool)

(assert (=> b!4262351 m!4850907))

(declare-fun m!4850909 () Bool)

(assert (=> b!4262351 m!4850909))

(assert (=> b!4262351 m!4850907))

(assert (=> b!4262351 m!4850909))

(declare-fun m!4850911 () Bool)

(assert (=> b!4262351 m!4850911))

(assert (=> b!4262135 d!1255032))

(declare-fun d!1255034 () Bool)

(assert (=> d!1255034 (= (map!9674 (++!12035 lt!1510891 lt!1510889) f!428) (++!12036 (map!9674 lt!1510891 f!428) (map!9674 lt!1510889 f!428)))))

(declare-fun lt!1510931 () Unit!66139)

(declare-fun choose!25988 (List!47366 List!47366 Int) Unit!66139)

(assert (=> d!1255034 (= lt!1510931 (choose!25988 lt!1510891 lt!1510889 f!428))))

(assert (=> d!1255034 (= (lemmaMapConcat!32 lt!1510891 lt!1510889 f!428) lt!1510931)))

(declare-fun bs!599101 () Bool)

(assert (= bs!599101 d!1255034))

(declare-fun m!4850959 () Bool)

(assert (=> bs!599101 m!4850959))

(assert (=> bs!599101 m!4850677))

(assert (=> bs!599101 m!4850681))

(assert (=> bs!599101 m!4850683))

(assert (=> bs!599101 m!4850675))

(assert (=> bs!599101 m!4850677))

(assert (=> bs!599101 m!4850679))

(assert (=> bs!599101 m!4850681))

(assert (=> bs!599101 m!4850675))

(assert (=> b!4262135 d!1255034))

(declare-fun b!4262390 () Bool)

(declare-fun res!1751883 () Bool)

(declare-fun e!2646796 () Bool)

(assert (=> b!4262390 (=> (not res!1751883) (not e!2646796))))

(declare-fun lt!1510934 () List!47367)

(assert (=> b!4262390 (= res!1751883 (= (size!34605 lt!1510934) (+ (size!34605 (map!9674 lt!1510891 f!428)) (size!34605 (map!9674 lt!1510889 f!428)))))))

(declare-fun b!4262389 () Bool)

(declare-fun e!2646797 () List!47367)

(assert (=> b!4262389 (= e!2646797 (Cons!47243 (h!52663 (map!9674 lt!1510891 f!428)) (++!12036 (t!353272 (map!9674 lt!1510891 f!428)) (map!9674 lt!1510889 f!428))))))

(declare-fun b!4262391 () Bool)

(assert (=> b!4262391 (= e!2646796 (or (not (= (map!9674 lt!1510889 f!428) Nil!47243)) (= lt!1510934 (map!9674 lt!1510891 f!428))))))

(declare-fun b!4262388 () Bool)

(assert (=> b!4262388 (= e!2646797 (map!9674 lt!1510889 f!428))))

(declare-fun d!1255044 () Bool)

(assert (=> d!1255044 e!2646796))

(declare-fun res!1751884 () Bool)

(assert (=> d!1255044 (=> (not res!1751884) (not e!2646796))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7447 (List!47367) (InoxSet B!2825))

(assert (=> d!1255044 (= res!1751884 (= (content!7447 lt!1510934) ((_ map or) (content!7447 (map!9674 lt!1510891 f!428)) (content!7447 (map!9674 lt!1510889 f!428)))))))

(assert (=> d!1255044 (= lt!1510934 e!2646797)))

(declare-fun c!724128 () Bool)

(assert (=> d!1255044 (= c!724128 ((_ is Nil!47243) (map!9674 lt!1510891 f!428)))))

(assert (=> d!1255044 (= (++!12036 (map!9674 lt!1510891 f!428) (map!9674 lt!1510889 f!428)) lt!1510934)))

(assert (= (and d!1255044 c!724128) b!4262388))

(assert (= (and d!1255044 (not c!724128)) b!4262389))

(assert (= (and d!1255044 res!1751884) b!4262390))

(assert (= (and b!4262390 res!1751883) b!4262391))

(declare-fun m!4850963 () Bool)

(assert (=> b!4262390 m!4850963))

(assert (=> b!4262390 m!4850675))

(declare-fun m!4850965 () Bool)

(assert (=> b!4262390 m!4850965))

(assert (=> b!4262390 m!4850677))

(declare-fun m!4850967 () Bool)

(assert (=> b!4262390 m!4850967))

(assert (=> b!4262389 m!4850677))

(declare-fun m!4850969 () Bool)

(assert (=> b!4262389 m!4850969))

(declare-fun m!4850971 () Bool)

(assert (=> d!1255044 m!4850971))

(assert (=> d!1255044 m!4850675))

(declare-fun m!4850973 () Bool)

(assert (=> d!1255044 m!4850973))

(assert (=> d!1255044 m!4850677))

(declare-fun m!4850975 () Bool)

(assert (=> d!1255044 m!4850975))

(assert (=> b!4262135 d!1255044))

(declare-fun b!4262431 () Bool)

(declare-fun e!2646818 () Bool)

(declare-fun lt!1510937 () List!47366)

(assert (=> b!4262431 (= e!2646818 (or (not (= lt!1510889 Nil!47242)) (= lt!1510937 lt!1510891)))))

(declare-fun b!4262430 () Bool)

(declare-fun res!1751897 () Bool)

(assert (=> b!4262430 (=> (not res!1751897) (not e!2646818))))

(assert (=> b!4262430 (= res!1751897 (= (size!34606 lt!1510937) (+ (size!34606 lt!1510891) (size!34606 lt!1510889))))))

(declare-fun d!1255048 () Bool)

(assert (=> d!1255048 e!2646818))

(declare-fun res!1751896 () Bool)

(assert (=> d!1255048 (=> (not res!1751896) (not e!2646818))))

(declare-fun content!7448 (List!47366) (InoxSet T!79420))

(assert (=> d!1255048 (= res!1751896 (= (content!7448 lt!1510937) ((_ map or) (content!7448 lt!1510891) (content!7448 lt!1510889))))))

(declare-fun e!2646817 () List!47366)

(assert (=> d!1255048 (= lt!1510937 e!2646817)))

(declare-fun c!724132 () Bool)

(assert (=> d!1255048 (= c!724132 ((_ is Nil!47242) lt!1510891))))

(assert (=> d!1255048 (= (++!12035 lt!1510891 lt!1510889) lt!1510937)))

(declare-fun b!4262428 () Bool)

(assert (=> b!4262428 (= e!2646817 lt!1510889)))

(declare-fun b!4262429 () Bool)

(assert (=> b!4262429 (= e!2646817 (Cons!47242 (h!52662 lt!1510891) (++!12035 (t!353271 lt!1510891) lt!1510889)))))

(assert (= (and d!1255048 c!724132) b!4262428))

(assert (= (and d!1255048 (not c!724132)) b!4262429))

(assert (= (and d!1255048 res!1751896) b!4262430))

(assert (= (and b!4262430 res!1751897) b!4262431))

(declare-fun m!4851001 () Bool)

(assert (=> b!4262430 m!4851001))

(assert (=> b!4262430 m!4850895))

(declare-fun m!4851003 () Bool)

(assert (=> b!4262430 m!4851003))

(declare-fun m!4851005 () Bool)

(assert (=> d!1255048 m!4851005))

(declare-fun m!4851007 () Bool)

(assert (=> d!1255048 m!4851007))

(declare-fun m!4851009 () Bool)

(assert (=> d!1255048 m!4851009))

(declare-fun m!4851011 () Bool)

(assert (=> b!4262429 m!4851011))

(assert (=> b!4262135 d!1255048))

(declare-fun b!4262435 () Bool)

(declare-fun e!2646820 () List!47366)

(assert (=> b!4262435 (= e!2646820 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4262433 () Bool)

(declare-fun e!2646819 () List!47366)

(assert (=> b!4262433 (= e!2646819 e!2646820)))

(declare-fun c!724134 () Bool)

(assert (=> b!4262433 (= c!724134 ((_ is Leaf!22018) (right!35355 t!4386)))))

(declare-fun b!4262432 () Bool)

(assert (=> b!4262432 (= e!2646819 Nil!47242)))

(declare-fun b!4262434 () Bool)

(assert (=> b!4262434 (= e!2646820 (list!17072 (xs!17554 (right!35355 t!4386))))))

(declare-fun d!1255052 () Bool)

(declare-fun c!724133 () Bool)

(assert (=> d!1255052 (= c!724133 ((_ is Empty!14248) (right!35355 t!4386)))))

(assert (=> d!1255052 (= (list!17068 (right!35355 t!4386)) e!2646819)))

(assert (= (and d!1255052 c!724133) b!4262432))

(assert (= (and d!1255052 (not c!724133)) b!4262433))

(assert (= (and b!4262433 c!724134) b!4262434))

(assert (= (and b!4262433 (not c!724134)) b!4262435))

(assert (=> b!4262435 m!4850877))

(assert (=> b!4262435 m!4850875))

(assert (=> b!4262435 m!4850877))

(assert (=> b!4262435 m!4850875))

(declare-fun m!4851013 () Bool)

(assert (=> b!4262435 m!4851013))

(declare-fun m!4851015 () Bool)

(assert (=> b!4262434 m!4851015))

(assert (=> b!4262135 d!1255052))

(declare-fun d!1255054 () Bool)

(declare-fun lt!1510938 () List!47367)

(assert (=> d!1255054 (= (size!34605 lt!1510938) (size!34606 lt!1510889))))

(declare-fun e!2646821 () List!47367)

(assert (=> d!1255054 (= lt!1510938 e!2646821)))

(declare-fun c!724135 () Bool)

(assert (=> d!1255054 (= c!724135 ((_ is Nil!47242) lt!1510889))))

(assert (=> d!1255054 (= (map!9674 lt!1510889 f!428) lt!1510938)))

(declare-fun b!4262436 () Bool)

(assert (=> b!4262436 (= e!2646821 Nil!47243)))

(declare-fun b!4262437 () Bool)

(assert (=> b!4262437 (= e!2646821 ($colon$colon!633 (map!9674 (t!353271 lt!1510889) f!428) (dynLambda!20221 f!428 (h!52662 lt!1510889))))))

(assert (= (and d!1255054 c!724135) b!4262436))

(assert (= (and d!1255054 (not c!724135)) b!4262437))

(declare-fun b_lambda!125841 () Bool)

(assert (=> (not b_lambda!125841) (not b!4262437)))

(declare-fun t!353298 () Bool)

(declare-fun tb!256961 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353298) tb!256961))

(declare-fun result!313534 () Bool)

(assert (=> tb!256961 (= result!313534 tp_is_empty!22881)))

(assert (=> b!4262437 t!353298))

(declare-fun b_and!337771 () Bool)

(assert (= b_and!337767 (and (=> t!353298 result!313534) b_and!337771)))

(declare-fun m!4851017 () Bool)

(assert (=> d!1255054 m!4851017))

(assert (=> d!1255054 m!4851003))

(declare-fun m!4851019 () Bool)

(assert (=> b!4262437 m!4851019))

(declare-fun m!4851021 () Bool)

(assert (=> b!4262437 m!4851021))

(assert (=> b!4262437 m!4851019))

(assert (=> b!4262437 m!4851021))

(declare-fun m!4851023 () Bool)

(assert (=> b!4262437 m!4851023))

(assert (=> b!4262135 d!1255054))

(declare-fun d!1255056 () Bool)

(assert (=> d!1255056 (= (inv!62150 (xs!17554 t!4386)) (<= (size!34606 (innerList!14308 (xs!17554 t!4386))) 2147483647))))

(declare-fun bs!599103 () Bool)

(assert (= bs!599103 d!1255056))

(declare-fun m!4851025 () Bool)

(assert (=> bs!599103 m!4851025))

(assert (=> b!4262131 d!1255056))

(declare-fun b!4262446 () Bool)

(declare-fun tp!1307135 () Bool)

(declare-fun tp!1307134 () Bool)

(declare-fun e!2646827 () Bool)

(assert (=> b!4262446 (= e!2646827 (and (inv!62149 (left!35025 (left!35025 t!4386))) tp!1307135 (inv!62149 (right!35355 (left!35025 t!4386))) tp!1307134))))

(declare-fun b!4262448 () Bool)

(declare-fun e!2646826 () Bool)

(declare-fun tp!1307136 () Bool)

(assert (=> b!4262448 (= e!2646826 tp!1307136)))

(declare-fun b!4262447 () Bool)

(assert (=> b!4262447 (= e!2646827 (and (inv!62150 (xs!17554 (left!35025 t!4386))) e!2646826))))

(assert (=> b!4262133 (= tp!1307109 (and (inv!62149 (left!35025 t!4386)) e!2646827))))

(assert (= (and b!4262133 ((_ is Node!14248) (left!35025 t!4386))) b!4262446))

(assert (= b!4262447 b!4262448))

(assert (= (and b!4262133 ((_ is Leaf!22018) (left!35025 t!4386))) b!4262447))

(declare-fun m!4851027 () Bool)

(assert (=> b!4262446 m!4851027))

(declare-fun m!4851029 () Bool)

(assert (=> b!4262446 m!4851029))

(declare-fun m!4851031 () Bool)

(assert (=> b!4262447 m!4851031))

(assert (=> b!4262133 m!4850657))

(declare-fun tp!1307137 () Bool)

(declare-fun tp!1307138 () Bool)

(declare-fun b!4262449 () Bool)

(declare-fun e!2646829 () Bool)

(assert (=> b!4262449 (= e!2646829 (and (inv!62149 (left!35025 (right!35355 t!4386))) tp!1307138 (inv!62149 (right!35355 (right!35355 t!4386))) tp!1307137))))

(declare-fun b!4262451 () Bool)

(declare-fun e!2646828 () Bool)

(declare-fun tp!1307139 () Bool)

(assert (=> b!4262451 (= e!2646828 tp!1307139)))

(declare-fun b!4262450 () Bool)

(assert (=> b!4262450 (= e!2646829 (and (inv!62150 (xs!17554 (right!35355 t!4386))) e!2646828))))

(assert (=> b!4262133 (= tp!1307110 (and (inv!62149 (right!35355 t!4386)) e!2646829))))

(assert (= (and b!4262133 ((_ is Node!14248) (right!35355 t!4386))) b!4262449))

(assert (= b!4262450 b!4262451))

(assert (= (and b!4262133 ((_ is Leaf!22018) (right!35355 t!4386))) b!4262450))

(declare-fun m!4851033 () Bool)

(assert (=> b!4262449 m!4851033))

(declare-fun m!4851035 () Bool)

(assert (=> b!4262449 m!4851035))

(declare-fun m!4851037 () Bool)

(assert (=> b!4262450 m!4851037))

(assert (=> b!4262133 m!4850659))

(declare-fun b!4262456 () Bool)

(declare-fun e!2646832 () Bool)

(declare-fun tp_is_empty!22885 () Bool)

(declare-fun tp!1307142 () Bool)

(assert (=> b!4262456 (= e!2646832 (and tp_is_empty!22885 tp!1307142))))

(assert (=> b!4262130 (= tp!1307111 e!2646832)))

(assert (= (and b!4262130 ((_ is Cons!47242) (innerList!14308 (xs!17554 t!4386)))) b!4262456))

(declare-fun b_lambda!125843 () Bool)

(assert (= b_lambda!125825 (or (and start!408410 b_free!126689) b_lambda!125843)))

(declare-fun b_lambda!125845 () Bool)

(assert (= b_lambda!125827 (or (and start!408410 b_free!126689) b_lambda!125845)))

(declare-fun b_lambda!125847 () Bool)

(assert (= b_lambda!125841 (or (and start!408410 b_free!126689) b_lambda!125847)))

(declare-fun b_lambda!125849 () Bool)

(assert (= b_lambda!125829 (or (and start!408410 b_free!126689) b_lambda!125849)))

(check-sat (not d!1255034) (not b!4262250) tp_is_empty!22881 (not b!4262448) (not b!4262290) (not b!4262172) (not b!4262310) (not b_lambda!125849) (not b!4262170) (not b!4262345) (not b!4262341) (not b!4262450) (not b!4262451) (not b!4262340) (not d!1255032) (not b!4262173) (not d!1255044) (not b!4262206) (not b!4262251) (not b!4262456) (not d!1255030) (not b!4262287) (not b!4262447) (not b!4262435) (not b!4262318) (not b_lambda!125847) (not b_lambda!125845) (not b!4262202) (not b!4262169) (not b!4262344) (not b!4262321) (not b!4262351) (not d!1255054) (not b!4262203) (not d!1255048) (not b!4262390) (not b!4262437) (not d!1255014) (not b!4262231) (not b!4262434) (not b!4262228) (not b_next!127393) (not d!1255018) (not b!4262221) (not b!4262449) (not b!4262204) (not d!1255024) (not b!4262229) (not b!4262320) (not b!4262205) (not d!1255056) (not b!4262219) (not b_lambda!125843) (not b!4262429) (not b!4262133) (not b!4262171) (not b!4262430) tp_is_empty!22885 (not b!4262389) (not b!4262446) (not b!4262201) b_and!337771 (not b!4262226) (not b!4262289) (not b!4262174) (not b!4262349))
(check-sat b_and!337771 (not b_next!127393))
(get-model)

(declare-fun b!4262457 () Bool)

(declare-fun e!2646833 () List!47367)

(assert (=> b!4262457 (= e!2646833 Nil!47243)))

(declare-fun b!4262459 () Bool)

(declare-fun e!2646834 () List!47367)

(assert (=> b!4262459 (= e!2646834 (list!17070 (xs!17555 lt!1510917)))))

(declare-fun b!4262460 () Bool)

(assert (=> b!4262460 (= e!2646834 (++!12036 (list!17067 (left!35026 lt!1510917)) (list!17067 (right!35356 lt!1510917))))))

(declare-fun b!4262458 () Bool)

(assert (=> b!4262458 (= e!2646833 e!2646834)))

(declare-fun c!724137 () Bool)

(assert (=> b!4262458 (= c!724137 ((_ is Leaf!22019) lt!1510917))))

(declare-fun d!1255058 () Bool)

(declare-fun c!724136 () Bool)

(assert (=> d!1255058 (= c!724136 ((_ is Empty!14249) lt!1510917))))

(assert (=> d!1255058 (= (list!17067 lt!1510917) e!2646833)))

(assert (= (and d!1255058 c!724136) b!4262457))

(assert (= (and d!1255058 (not c!724136)) b!4262458))

(assert (= (and b!4262458 c!724137) b!4262459))

(assert (= (and b!4262458 (not c!724137)) b!4262460))

(declare-fun m!4851039 () Bool)

(assert (=> b!4262459 m!4851039))

(declare-fun m!4851041 () Bool)

(assert (=> b!4262460 m!4851041))

(declare-fun m!4851043 () Bool)

(assert (=> b!4262460 m!4851043))

(assert (=> b!4262460 m!4851041))

(assert (=> b!4262460 m!4851043))

(declare-fun m!4851045 () Bool)

(assert (=> b!4262460 m!4851045))

(assert (=> d!1255024 d!1255058))

(declare-fun d!1255060 () Bool)

(declare-fun lt!1510939 () List!47367)

(assert (=> d!1255060 (= (size!34605 lt!1510939) (size!34606 (list!17068 (right!35355 t!4386))))))

(declare-fun e!2646835 () List!47367)

(assert (=> d!1255060 (= lt!1510939 e!2646835)))

(declare-fun c!724138 () Bool)

(assert (=> d!1255060 (= c!724138 ((_ is Nil!47242) (list!17068 (right!35355 t!4386))))))

(assert (=> d!1255060 (= (map!9674 (list!17068 (right!35355 t!4386)) f!428) lt!1510939)))

(declare-fun b!4262461 () Bool)

(assert (=> b!4262461 (= e!2646835 Nil!47243)))

(declare-fun b!4262462 () Bool)

(assert (=> b!4262462 (= e!2646835 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (right!35355 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (right!35355 t!4386))))))))

(assert (= (and d!1255060 c!724138) b!4262461))

(assert (= (and d!1255060 (not c!724138)) b!4262462))

(declare-fun b_lambda!125851 () Bool)

(assert (=> (not b_lambda!125851) (not b!4262462)))

(declare-fun t!353300 () Bool)

(declare-fun tb!256963 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353300) tb!256963))

(declare-fun result!313540 () Bool)

(assert (=> tb!256963 (= result!313540 tp_is_empty!22881)))

(assert (=> b!4262462 t!353300))

(declare-fun b_and!337773 () Bool)

(assert (= b_and!337771 (and (=> t!353300 result!313540) b_and!337773)))

(declare-fun m!4851047 () Bool)

(assert (=> d!1255060 m!4851047))

(assert (=> d!1255060 m!4850687))

(declare-fun m!4851049 () Bool)

(assert (=> d!1255060 m!4851049))

(declare-fun m!4851051 () Bool)

(assert (=> b!4262462 m!4851051))

(declare-fun m!4851053 () Bool)

(assert (=> b!4262462 m!4851053))

(assert (=> b!4262462 m!4851051))

(assert (=> b!4262462 m!4851053))

(declare-fun m!4851055 () Bool)

(assert (=> b!4262462 m!4851055))

(assert (=> d!1255024 d!1255060))

(assert (=> d!1255024 d!1255052))

(declare-fun b!4262463 () Bool)

(declare-fun res!1751900 () Bool)

(declare-fun e!2646836 () Bool)

(assert (=> b!4262463 (=> (not res!1751900) (not e!2646836))))

(assert (=> b!4262463 (= res!1751900 (isBalanced!3807 (left!35025 (right!35355 t!4386))))))

(declare-fun b!4262464 () Bool)

(declare-fun res!1751899 () Bool)

(assert (=> b!4262464 (=> (not res!1751899) (not e!2646836))))

(assert (=> b!4262464 (= res!1751899 (<= (- (height!1872 (left!35025 (right!35355 t!4386))) (height!1872 (right!35355 (right!35355 t!4386)))) 1))))

(declare-fun b!4262465 () Bool)

(declare-fun res!1751898 () Bool)

(assert (=> b!4262465 (=> (not res!1751898) (not e!2646836))))

(assert (=> b!4262465 (= res!1751898 (not (isEmpty!27987 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4262466 () Bool)

(assert (=> b!4262466 (= e!2646836 (not (isEmpty!27987 (right!35355 (right!35355 t!4386)))))))

(declare-fun d!1255062 () Bool)

(declare-fun res!1751902 () Bool)

(declare-fun e!2646837 () Bool)

(assert (=> d!1255062 (=> res!1751902 e!2646837)))

(assert (=> d!1255062 (= res!1751902 (not ((_ is Node!14248) (right!35355 t!4386))))))

(assert (=> d!1255062 (= (isBalanced!3807 (right!35355 t!4386)) e!2646837)))

(declare-fun b!4262467 () Bool)

(assert (=> b!4262467 (= e!2646837 e!2646836)))

(declare-fun res!1751903 () Bool)

(assert (=> b!4262467 (=> (not res!1751903) (not e!2646836))))

(assert (=> b!4262467 (= res!1751903 (<= (- 1) (- (height!1872 (left!35025 (right!35355 t!4386))) (height!1872 (right!35355 (right!35355 t!4386))))))))

(declare-fun b!4262468 () Bool)

(declare-fun res!1751901 () Bool)

(assert (=> b!4262468 (=> (not res!1751901) (not e!2646836))))

(assert (=> b!4262468 (= res!1751901 (isBalanced!3807 (right!35355 (right!35355 t!4386))))))

(assert (= (and d!1255062 (not res!1751902)) b!4262467))

(assert (= (and b!4262467 res!1751903) b!4262464))

(assert (= (and b!4262464 res!1751899) b!4262463))

(assert (= (and b!4262463 res!1751900) b!4262468))

(assert (= (and b!4262468 res!1751901) b!4262465))

(assert (= (and b!4262465 res!1751898) b!4262466))

(declare-fun m!4851057 () Bool)

(assert (=> b!4262465 m!4851057))

(declare-fun m!4851059 () Bool)

(assert (=> b!4262463 m!4851059))

(declare-fun m!4851061 () Bool)

(assert (=> b!4262468 m!4851061))

(declare-fun m!4851063 () Bool)

(assert (=> b!4262466 m!4851063))

(declare-fun m!4851065 () Bool)

(assert (=> b!4262467 m!4851065))

(declare-fun m!4851067 () Bool)

(assert (=> b!4262467 m!4851067))

(assert (=> b!4262464 m!4851065))

(assert (=> b!4262464 m!4851067))

(assert (=> d!1255024 d!1255062))

(declare-fun d!1255064 () Bool)

(assert (=> d!1255064 (= (inv!62150 (xs!17554 (right!35355 t!4386))) (<= (size!34606 (innerList!14308 (xs!17554 (right!35355 t!4386)))) 2147483647))))

(declare-fun bs!599104 () Bool)

(assert (= bs!599104 d!1255064))

(declare-fun m!4851069 () Bool)

(assert (=> bs!599104 m!4851069))

(assert (=> b!4262450 d!1255064))

(declare-fun d!1255066 () Bool)

(declare-fun lt!1510942 () Int)

(assert (=> d!1255066 (>= lt!1510942 0)))

(declare-fun e!2646840 () Int)

(assert (=> d!1255066 (= lt!1510942 e!2646840)))

(declare-fun c!724141 () Bool)

(assert (=> d!1255066 (= c!724141 ((_ is Nil!47242) lt!1510937))))

(assert (=> d!1255066 (= (size!34606 lt!1510937) lt!1510942)))

(declare-fun b!4262473 () Bool)

(assert (=> b!4262473 (= e!2646840 0)))

(declare-fun b!4262474 () Bool)

(assert (=> b!4262474 (= e!2646840 (+ 1 (size!34606 (t!353271 lt!1510937))))))

(assert (= (and d!1255066 c!724141) b!4262473))

(assert (= (and d!1255066 (not c!724141)) b!4262474))

(declare-fun m!4851071 () Bool)

(assert (=> b!4262474 m!4851071))

(assert (=> b!4262430 d!1255066))

(declare-fun d!1255068 () Bool)

(declare-fun lt!1510943 () Int)

(assert (=> d!1255068 (>= lt!1510943 0)))

(declare-fun e!2646841 () Int)

(assert (=> d!1255068 (= lt!1510943 e!2646841)))

(declare-fun c!724142 () Bool)

(assert (=> d!1255068 (= c!724142 ((_ is Nil!47242) lt!1510891))))

(assert (=> d!1255068 (= (size!34606 lt!1510891) lt!1510943)))

(declare-fun b!4262475 () Bool)

(assert (=> b!4262475 (= e!2646841 0)))

(declare-fun b!4262476 () Bool)

(assert (=> b!4262476 (= e!2646841 (+ 1 (size!34606 (t!353271 lt!1510891))))))

(assert (= (and d!1255068 c!724142) b!4262475))

(assert (= (and d!1255068 (not c!724142)) b!4262476))

(declare-fun m!4851073 () Bool)

(assert (=> b!4262476 m!4851073))

(assert (=> b!4262430 d!1255068))

(declare-fun d!1255070 () Bool)

(declare-fun lt!1510944 () Int)

(assert (=> d!1255070 (>= lt!1510944 0)))

(declare-fun e!2646842 () Int)

(assert (=> d!1255070 (= lt!1510944 e!2646842)))

(declare-fun c!724143 () Bool)

(assert (=> d!1255070 (= c!724143 ((_ is Nil!47242) lt!1510889))))

(assert (=> d!1255070 (= (size!34606 lt!1510889) lt!1510944)))

(declare-fun b!4262477 () Bool)

(assert (=> b!4262477 (= e!2646842 0)))

(declare-fun b!4262478 () Bool)

(assert (=> b!4262478 (= e!2646842 (+ 1 (size!34606 (t!353271 lt!1510889))))))

(assert (= (and d!1255070 c!724143) b!4262477))

(assert (= (and d!1255070 (not c!724143)) b!4262478))

(declare-fun m!4851075 () Bool)

(assert (=> b!4262478 m!4851075))

(assert (=> b!4262430 d!1255070))

(declare-fun d!1255072 () Bool)

(assert (=> d!1255072 (= (height!1872 (left!35025 t!4386)) (ite ((_ is Empty!14248) (left!35025 t!4386)) 0 (ite ((_ is Leaf!22018) (left!35025 t!4386)) 1 (cheight!14459 (left!35025 t!4386)))))))

(assert (=> b!4262202 d!1255072))

(declare-fun d!1255074 () Bool)

(assert (=> d!1255074 (= (height!1872 (right!35355 t!4386)) (ite ((_ is Empty!14248) (right!35355 t!4386)) 0 (ite ((_ is Leaf!22018) (right!35355 t!4386)) 1 (cheight!14459 (right!35355 t!4386)))))))

(assert (=> b!4262202 d!1255074))

(declare-fun b!4262482 () Bool)

(declare-fun e!2646844 () Bool)

(declare-fun lt!1510945 () List!47366)

(assert (=> b!4262482 (= e!2646844 (or (not (= (list!17068 (right!35355 (right!35355 t!4386))) Nil!47242)) (= lt!1510945 (list!17068 (left!35025 (right!35355 t!4386))))))))

(declare-fun b!4262481 () Bool)

(declare-fun res!1751905 () Bool)

(assert (=> b!4262481 (=> (not res!1751905) (not e!2646844))))

(assert (=> b!4262481 (= res!1751905 (= (size!34606 lt!1510945) (+ (size!34606 (list!17068 (left!35025 (right!35355 t!4386)))) (size!34606 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(declare-fun d!1255076 () Bool)

(assert (=> d!1255076 e!2646844))

(declare-fun res!1751904 () Bool)

(assert (=> d!1255076 (=> (not res!1751904) (not e!2646844))))

(assert (=> d!1255076 (= res!1751904 (= (content!7448 lt!1510945) ((_ map or) (content!7448 (list!17068 (left!35025 (right!35355 t!4386)))) (content!7448 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(declare-fun e!2646843 () List!47366)

(assert (=> d!1255076 (= lt!1510945 e!2646843)))

(declare-fun c!724144 () Bool)

(assert (=> d!1255076 (= c!724144 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255076 (= (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386)))) lt!1510945)))

(declare-fun b!4262479 () Bool)

(assert (=> b!4262479 (= e!2646843 (list!17068 (right!35355 (right!35355 t!4386))))))

(declare-fun b!4262480 () Bool)

(assert (=> b!4262480 (= e!2646843 (Cons!47242 (h!52662 (list!17068 (left!35025 (right!35355 t!4386)))) (++!12035 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 t!4386))))))))

(assert (= (and d!1255076 c!724144) b!4262479))

(assert (= (and d!1255076 (not c!724144)) b!4262480))

(assert (= (and d!1255076 res!1751904) b!4262481))

(assert (= (and b!4262481 res!1751905) b!4262482))

(declare-fun m!4851077 () Bool)

(assert (=> b!4262481 m!4851077))

(assert (=> b!4262481 m!4850877))

(declare-fun m!4851079 () Bool)

(assert (=> b!4262481 m!4851079))

(assert (=> b!4262481 m!4850875))

(declare-fun m!4851081 () Bool)

(assert (=> b!4262481 m!4851081))

(declare-fun m!4851083 () Bool)

(assert (=> d!1255076 m!4851083))

(assert (=> d!1255076 m!4850877))

(declare-fun m!4851085 () Bool)

(assert (=> d!1255076 m!4851085))

(assert (=> d!1255076 m!4850875))

(declare-fun m!4851087 () Bool)

(assert (=> d!1255076 m!4851087))

(assert (=> b!4262480 m!4850875))

(declare-fun m!4851089 () Bool)

(assert (=> b!4262480 m!4851089))

(assert (=> b!4262435 d!1255076))

(declare-fun b!4262486 () Bool)

(declare-fun e!2646846 () List!47366)

(assert (=> b!4262486 (= e!2646846 (++!12035 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386))))))))

(declare-fun b!4262484 () Bool)

(declare-fun e!2646845 () List!47366)

(assert (=> b!4262484 (= e!2646845 e!2646846)))

(declare-fun c!724146 () Bool)

(assert (=> b!4262484 (= c!724146 ((_ is Leaf!22018) (left!35025 (right!35355 t!4386))))))

(declare-fun b!4262483 () Bool)

(assert (=> b!4262483 (= e!2646845 Nil!47242)))

(declare-fun b!4262485 () Bool)

(assert (=> b!4262485 (= e!2646846 (list!17072 (xs!17554 (left!35025 (right!35355 t!4386)))))))

(declare-fun d!1255078 () Bool)

(declare-fun c!724145 () Bool)

(assert (=> d!1255078 (= c!724145 ((_ is Empty!14248) (left!35025 (right!35355 t!4386))))))

(assert (=> d!1255078 (= (list!17068 (left!35025 (right!35355 t!4386))) e!2646845)))

(assert (= (and d!1255078 c!724145) b!4262483))

(assert (= (and d!1255078 (not c!724145)) b!4262484))

(assert (= (and b!4262484 c!724146) b!4262485))

(assert (= (and b!4262484 (not c!724146)) b!4262486))

(declare-fun m!4851091 () Bool)

(assert (=> b!4262486 m!4851091))

(declare-fun m!4851093 () Bool)

(assert (=> b!4262486 m!4851093))

(assert (=> b!4262486 m!4851091))

(assert (=> b!4262486 m!4851093))

(declare-fun m!4851095 () Bool)

(assert (=> b!4262486 m!4851095))

(declare-fun m!4851097 () Bool)

(assert (=> b!4262485 m!4851097))

(assert (=> b!4262435 d!1255078))

(declare-fun b!4262490 () Bool)

(declare-fun e!2646848 () List!47366)

(assert (=> b!4262490 (= e!2646848 (++!12035 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386))))))))

(declare-fun b!4262488 () Bool)

(declare-fun e!2646847 () List!47366)

(assert (=> b!4262488 (= e!2646847 e!2646848)))

(declare-fun c!724148 () Bool)

(assert (=> b!4262488 (= c!724148 ((_ is Leaf!22018) (right!35355 (right!35355 t!4386))))))

(declare-fun b!4262487 () Bool)

(assert (=> b!4262487 (= e!2646847 Nil!47242)))

(declare-fun b!4262489 () Bool)

(assert (=> b!4262489 (= e!2646848 (list!17072 (xs!17554 (right!35355 (right!35355 t!4386)))))))

(declare-fun d!1255080 () Bool)

(declare-fun c!724147 () Bool)

(assert (=> d!1255080 (= c!724147 ((_ is Empty!14248) (right!35355 (right!35355 t!4386))))))

(assert (=> d!1255080 (= (list!17068 (right!35355 (right!35355 t!4386))) e!2646847)))

(assert (= (and d!1255080 c!724147) b!4262487))

(assert (= (and d!1255080 (not c!724147)) b!4262488))

(assert (= (and b!4262488 c!724148) b!4262489))

(assert (= (and b!4262488 (not c!724148)) b!4262490))

(declare-fun m!4851099 () Bool)

(assert (=> b!4262490 m!4851099))

(declare-fun m!4851101 () Bool)

(assert (=> b!4262490 m!4851101))

(assert (=> b!4262490 m!4851099))

(assert (=> b!4262490 m!4851101))

(declare-fun m!4851103 () Bool)

(assert (=> b!4262490 m!4851103))

(declare-fun m!4851105 () Bool)

(assert (=> b!4262489 m!4851105))

(assert (=> b!4262435 d!1255080))

(declare-fun d!1255082 () Bool)

(declare-fun lt!1510948 () IArray!28503)

(assert (=> d!1255082 (= lt!1510948 (IArray!28504 (map!9674 (list!17072 (xs!17554 (left!35025 t!4386))) f!428)))))

(declare-fun choose!25989 (IArray!28501 Int) IArray!28503)

(assert (=> d!1255082 (= lt!1510948 (choose!25989 (xs!17554 (left!35025 t!4386)) f!428))))

(assert (=> d!1255082 (= (map!9676 (xs!17554 (left!35025 t!4386)) f!428) lt!1510948)))

(declare-fun bs!599105 () Bool)

(assert (= bs!599105 d!1255082))

(assert (=> bs!599105 m!4850891))

(assert (=> bs!599105 m!4850891))

(declare-fun m!4851107 () Bool)

(assert (=> bs!599105 m!4851107))

(declare-fun m!4851109 () Bool)

(assert (=> bs!599105 m!4851109))

(assert (=> b!4262290 d!1255082))

(declare-fun d!1255084 () Bool)

(assert (=> d!1255084 (= ($colon$colon!633 (map!9674 (t!353271 (list!17068 t!4386)) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 t!4386)))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (list!17068 t!4386))) (map!9674 (t!353271 (list!17068 t!4386)) f!428)))))

(assert (=> b!4262310 d!1255084))

(declare-fun d!1255086 () Bool)

(declare-fun lt!1510949 () List!47367)

(assert (=> d!1255086 (= (size!34605 lt!1510949) (size!34606 (t!353271 (list!17068 t!4386))))))

(declare-fun e!2646849 () List!47367)

(assert (=> d!1255086 (= lt!1510949 e!2646849)))

(declare-fun c!724149 () Bool)

(assert (=> d!1255086 (= c!724149 ((_ is Nil!47242) (t!353271 (list!17068 t!4386))))))

(assert (=> d!1255086 (= (map!9674 (t!353271 (list!17068 t!4386)) f!428) lt!1510949)))

(declare-fun b!4262491 () Bool)

(assert (=> b!4262491 (= e!2646849 Nil!47243)))

(declare-fun b!4262492 () Bool)

(assert (=> b!4262492 (= e!2646849 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (list!17068 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (list!17068 t!4386))))))))

(assert (= (and d!1255086 c!724149) b!4262491))

(assert (= (and d!1255086 (not c!724149)) b!4262492))

(declare-fun b_lambda!125853 () Bool)

(assert (=> (not b_lambda!125853) (not b!4262492)))

(declare-fun t!353304 () Bool)

(declare-fun tb!256965 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353304) tb!256965))

(declare-fun result!313542 () Bool)

(assert (=> tb!256965 (= result!313542 tp_is_empty!22881)))

(assert (=> b!4262492 t!353304))

(declare-fun b_and!337775 () Bool)

(assert (= b_and!337773 (and (=> t!353304 result!313542) b_and!337775)))

(declare-fun m!4851111 () Bool)

(assert (=> d!1255086 m!4851111))

(declare-fun m!4851113 () Bool)

(assert (=> d!1255086 m!4851113))

(declare-fun m!4851115 () Bool)

(assert (=> b!4262492 m!4851115))

(declare-fun m!4851117 () Bool)

(assert (=> b!4262492 m!4851117))

(assert (=> b!4262492 m!4851115))

(assert (=> b!4262492 m!4851117))

(declare-fun m!4851119 () Bool)

(assert (=> b!4262492 m!4851119))

(assert (=> b!4262310 d!1255086))

(declare-fun d!1255088 () Bool)

(declare-fun lt!1510952 () Bool)

(declare-fun isEmpty!27990 (List!47367) Bool)

(assert (=> d!1255088 (= lt!1510952 (isEmpty!27990 (list!17067 (right!35356 lt!1510890))))))

(declare-fun size!34607 (Conc!14249) Int)

(assert (=> d!1255088 (= lt!1510952 (= (size!34607 (right!35356 lt!1510890)) 0))))

(assert (=> d!1255088 (= (isEmpty!27986 (right!35356 lt!1510890)) lt!1510952)))

(declare-fun bs!599106 () Bool)

(assert (= bs!599106 d!1255088))

(assert (=> bs!599106 m!4850801))

(assert (=> bs!599106 m!4850801))

(declare-fun m!4851121 () Bool)

(assert (=> bs!599106 m!4851121))

(declare-fun m!4851123 () Bool)

(assert (=> bs!599106 m!4851123))

(assert (=> b!4262172 d!1255088))

(declare-fun d!1255090 () Bool)

(declare-fun res!1751910 () Bool)

(declare-fun e!2646852 () Bool)

(assert (=> d!1255090 (=> (not res!1751910) (not e!2646852))))

(assert (=> d!1255090 (= res!1751910 (<= (size!34606 (list!17072 (xs!17554 (left!35025 t!4386)))) 512))))

(assert (=> d!1255090 (= (inv!62154 (left!35025 t!4386)) e!2646852)))

(declare-fun b!4262497 () Bool)

(declare-fun res!1751911 () Bool)

(assert (=> b!4262497 (=> (not res!1751911) (not e!2646852))))

(assert (=> b!4262497 (= res!1751911 (= (csize!28727 (left!35025 t!4386)) (size!34606 (list!17072 (xs!17554 (left!35025 t!4386))))))))

(declare-fun b!4262498 () Bool)

(assert (=> b!4262498 (= e!2646852 (and (> (csize!28727 (left!35025 t!4386)) 0) (<= (csize!28727 (left!35025 t!4386)) 512)))))

(assert (= (and d!1255090 res!1751910) b!4262497))

(assert (= (and b!4262497 res!1751911) b!4262498))

(assert (=> d!1255090 m!4850891))

(assert (=> d!1255090 m!4850891))

(declare-fun m!4851125 () Bool)

(assert (=> d!1255090 m!4851125))

(assert (=> b!4262497 m!4850891))

(assert (=> b!4262497 m!4850891))

(assert (=> b!4262497 m!4851125))

(assert (=> b!4262228 d!1255090))

(declare-fun b!4262502 () Bool)

(declare-fun e!2646854 () Bool)

(declare-fun lt!1510953 () List!47366)

(assert (=> b!4262502 (= e!2646854 (or (not (= (list!17068 (right!35355 t!4386)) Nil!47242)) (= lt!1510953 (list!17068 (left!35025 t!4386)))))))

(declare-fun b!4262501 () Bool)

(declare-fun res!1751913 () Bool)

(assert (=> b!4262501 (=> (not res!1751913) (not e!2646854))))

(assert (=> b!4262501 (= res!1751913 (= (size!34606 lt!1510953) (+ (size!34606 (list!17068 (left!35025 t!4386))) (size!34606 (list!17068 (right!35355 t!4386))))))))

(declare-fun d!1255092 () Bool)

(assert (=> d!1255092 e!2646854))

(declare-fun res!1751912 () Bool)

(assert (=> d!1255092 (=> (not res!1751912) (not e!2646854))))

(assert (=> d!1255092 (= res!1751912 (= (content!7448 lt!1510953) ((_ map or) (content!7448 (list!17068 (left!35025 t!4386))) (content!7448 (list!17068 (right!35355 t!4386))))))))

(declare-fun e!2646853 () List!47366)

(assert (=> d!1255092 (= lt!1510953 e!2646853)))

(declare-fun c!724150 () Bool)

(assert (=> d!1255092 (= c!724150 ((_ is Nil!47242) (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255092 (= (++!12035 (list!17068 (left!35025 t!4386)) (list!17068 (right!35355 t!4386))) lt!1510953)))

(declare-fun b!4262499 () Bool)

(assert (=> b!4262499 (= e!2646853 (list!17068 (right!35355 t!4386)))))

(declare-fun b!4262500 () Bool)

(assert (=> b!4262500 (= e!2646853 (Cons!47242 (h!52662 (list!17068 (left!35025 t!4386))) (++!12035 (t!353271 (list!17068 (left!35025 t!4386))) (list!17068 (right!35355 t!4386)))))))

(assert (= (and d!1255092 c!724150) b!4262499))

(assert (= (and d!1255092 (not c!724150)) b!4262500))

(assert (= (and d!1255092 res!1751912) b!4262501))

(assert (= (and b!4262501 res!1751913) b!4262502))

(declare-fun m!4851127 () Bool)

(assert (=> b!4262501 m!4851127))

(assert (=> b!4262501 m!4850685))

(declare-fun m!4851129 () Bool)

(assert (=> b!4262501 m!4851129))

(assert (=> b!4262501 m!4850687))

(assert (=> b!4262501 m!4851049))

(declare-fun m!4851131 () Bool)

(assert (=> d!1255092 m!4851131))

(assert (=> d!1255092 m!4850685))

(declare-fun m!4851133 () Bool)

(assert (=> d!1255092 m!4851133))

(assert (=> d!1255092 m!4850687))

(declare-fun m!4851135 () Bool)

(assert (=> d!1255092 m!4851135))

(assert (=> b!4262500 m!4850687))

(declare-fun m!4851137 () Bool)

(assert (=> b!4262500 m!4851137))

(assert (=> b!4262341 d!1255092))

(assert (=> b!4262341 d!1255028))

(assert (=> b!4262341 d!1255052))

(declare-fun d!1255094 () Bool)

(assert (=> d!1255094 (= (height!1871 (left!35026 lt!1510890)) (ite ((_ is Empty!14249) (left!35026 lt!1510890)) 0 (ite ((_ is Leaf!22019) (left!35026 lt!1510890)) 1 (cheight!14460 (left!35026 lt!1510890)))))))

(assert (=> b!4262174 d!1255094))

(declare-fun d!1255096 () Bool)

(assert (=> d!1255096 (= (height!1871 (right!35356 lt!1510890)) (ite ((_ is Empty!14249) (right!35356 lt!1510890)) 0 (ite ((_ is Leaf!22019) (right!35356 lt!1510890)) 1 (cheight!14460 (right!35356 lt!1510890)))))))

(assert (=> b!4262174 d!1255096))

(declare-fun b!4262503 () Bool)

(declare-fun e!2646855 () List!47367)

(assert (=> b!4262503 (= e!2646855 Nil!47243)))

(declare-fun b!4262505 () Bool)

(declare-fun e!2646856 () List!47367)

(assert (=> b!4262505 (= e!2646856 (list!17070 (xs!17555 lt!1510912)))))

(declare-fun b!4262506 () Bool)

(assert (=> b!4262506 (= e!2646856 (++!12036 (list!17067 (left!35026 lt!1510912)) (list!17067 (right!35356 lt!1510912))))))

(declare-fun b!4262504 () Bool)

(assert (=> b!4262504 (= e!2646855 e!2646856)))

(declare-fun c!724152 () Bool)

(assert (=> b!4262504 (= c!724152 ((_ is Leaf!22019) lt!1510912))))

(declare-fun d!1255098 () Bool)

(declare-fun c!724151 () Bool)

(assert (=> d!1255098 (= c!724151 ((_ is Empty!14249) lt!1510912))))

(assert (=> d!1255098 (= (list!17067 lt!1510912) e!2646855)))

(assert (= (and d!1255098 c!724151) b!4262503))

(assert (= (and d!1255098 (not c!724151)) b!4262504))

(assert (= (and b!4262504 c!724152) b!4262505))

(assert (= (and b!4262504 (not c!724152)) b!4262506))

(declare-fun m!4851139 () Bool)

(assert (=> b!4262505 m!4851139))

(declare-fun m!4851141 () Bool)

(assert (=> b!4262506 m!4851141))

(declare-fun m!4851143 () Bool)

(assert (=> b!4262506 m!4851143))

(assert (=> b!4262506 m!4851141))

(assert (=> b!4262506 m!4851143))

(declare-fun m!4851145 () Bool)

(assert (=> b!4262506 m!4851145))

(assert (=> d!1255014 d!1255098))

(declare-fun d!1255100 () Bool)

(declare-fun lt!1510954 () List!47367)

(assert (=> d!1255100 (= (size!34605 lt!1510954) (size!34606 (list!17068 (left!35025 t!4386))))))

(declare-fun e!2646857 () List!47367)

(assert (=> d!1255100 (= lt!1510954 e!2646857)))

(declare-fun c!724153 () Bool)

(assert (=> d!1255100 (= c!724153 ((_ is Nil!47242) (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255100 (= (map!9674 (list!17068 (left!35025 t!4386)) f!428) lt!1510954)))

(declare-fun b!4262507 () Bool)

(assert (=> b!4262507 (= e!2646857 Nil!47243)))

(declare-fun b!4262508 () Bool)

(assert (=> b!4262508 (= e!2646857 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (left!35025 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (left!35025 t!4386))))))))

(assert (= (and d!1255100 c!724153) b!4262507))

(assert (= (and d!1255100 (not c!724153)) b!4262508))

(declare-fun b_lambda!125855 () Bool)

(assert (=> (not b_lambda!125855) (not b!4262508)))

(declare-fun t!353308 () Bool)

(declare-fun tb!256967 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353308) tb!256967))

(declare-fun result!313544 () Bool)

(assert (=> tb!256967 (= result!313544 tp_is_empty!22881)))

(assert (=> b!4262508 t!353308))

(declare-fun b_and!337777 () Bool)

(assert (= b_and!337775 (and (=> t!353308 result!313544) b_and!337777)))

(declare-fun m!4851147 () Bool)

(assert (=> d!1255100 m!4851147))

(assert (=> d!1255100 m!4850685))

(assert (=> d!1255100 m!4851129))

(declare-fun m!4851149 () Bool)

(assert (=> b!4262508 m!4851149))

(declare-fun m!4851151 () Bool)

(assert (=> b!4262508 m!4851151))

(assert (=> b!4262508 m!4851149))

(assert (=> b!4262508 m!4851151))

(declare-fun m!4851153 () Bool)

(assert (=> b!4262508 m!4851153))

(assert (=> d!1255014 d!1255100))

(assert (=> d!1255014 d!1255028))

(declare-fun b!4262509 () Bool)

(declare-fun res!1751916 () Bool)

(declare-fun e!2646858 () Bool)

(assert (=> b!4262509 (=> (not res!1751916) (not e!2646858))))

(assert (=> b!4262509 (= res!1751916 (isBalanced!3807 (left!35025 (left!35025 t!4386))))))

(declare-fun b!4262510 () Bool)

(declare-fun res!1751915 () Bool)

(assert (=> b!4262510 (=> (not res!1751915) (not e!2646858))))

(assert (=> b!4262510 (= res!1751915 (<= (- (height!1872 (left!35025 (left!35025 t!4386))) (height!1872 (right!35355 (left!35025 t!4386)))) 1))))

(declare-fun b!4262511 () Bool)

(declare-fun res!1751914 () Bool)

(assert (=> b!4262511 (=> (not res!1751914) (not e!2646858))))

(assert (=> b!4262511 (= res!1751914 (not (isEmpty!27987 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4262512 () Bool)

(assert (=> b!4262512 (= e!2646858 (not (isEmpty!27987 (right!35355 (left!35025 t!4386)))))))

(declare-fun d!1255102 () Bool)

(declare-fun res!1751918 () Bool)

(declare-fun e!2646859 () Bool)

(assert (=> d!1255102 (=> res!1751918 e!2646859)))

(assert (=> d!1255102 (= res!1751918 (not ((_ is Node!14248) (left!35025 t!4386))))))

(assert (=> d!1255102 (= (isBalanced!3807 (left!35025 t!4386)) e!2646859)))

(declare-fun b!4262513 () Bool)

(assert (=> b!4262513 (= e!2646859 e!2646858)))

(declare-fun res!1751919 () Bool)

(assert (=> b!4262513 (=> (not res!1751919) (not e!2646858))))

(assert (=> b!4262513 (= res!1751919 (<= (- 1) (- (height!1872 (left!35025 (left!35025 t!4386))) (height!1872 (right!35355 (left!35025 t!4386))))))))

(declare-fun b!4262514 () Bool)

(declare-fun res!1751917 () Bool)

(assert (=> b!4262514 (=> (not res!1751917) (not e!2646858))))

(assert (=> b!4262514 (= res!1751917 (isBalanced!3807 (right!35355 (left!35025 t!4386))))))

(assert (= (and d!1255102 (not res!1751918)) b!4262513))

(assert (= (and b!4262513 res!1751919) b!4262510))

(assert (= (and b!4262510 res!1751915) b!4262509))

(assert (= (and b!4262509 res!1751916) b!4262514))

(assert (= (and b!4262514 res!1751917) b!4262511))

(assert (= (and b!4262511 res!1751914) b!4262512))

(declare-fun m!4851155 () Bool)

(assert (=> b!4262511 m!4851155))

(declare-fun m!4851157 () Bool)

(assert (=> b!4262509 m!4851157))

(declare-fun m!4851159 () Bool)

(assert (=> b!4262514 m!4851159))

(declare-fun m!4851161 () Bool)

(assert (=> b!4262512 m!4851161))

(declare-fun m!4851163 () Bool)

(assert (=> b!4262513 m!4851163))

(declare-fun m!4851165 () Bool)

(assert (=> b!4262513 m!4851165))

(assert (=> b!4262510 m!4851163))

(assert (=> b!4262510 m!4851165))

(assert (=> d!1255014 d!1255102))

(declare-fun d!1255104 () Bool)

(declare-fun res!1751926 () Bool)

(declare-fun e!2646862 () Bool)

(assert (=> d!1255104 (=> (not res!1751926) (not e!2646862))))

(declare-fun size!34608 (Conc!14248) Int)

(assert (=> d!1255104 (= res!1751926 (= (csize!28726 (right!35355 t!4386)) (+ (size!34608 (left!35025 (right!35355 t!4386))) (size!34608 (right!35355 (right!35355 t!4386))))))))

(assert (=> d!1255104 (= (inv!62153 (right!35355 t!4386)) e!2646862)))

(declare-fun b!4262521 () Bool)

(declare-fun res!1751927 () Bool)

(assert (=> b!4262521 (=> (not res!1751927) (not e!2646862))))

(assert (=> b!4262521 (= res!1751927 (and (not (= (left!35025 (right!35355 t!4386)) Empty!14248)) (not (= (right!35355 (right!35355 t!4386)) Empty!14248))))))

(declare-fun b!4262522 () Bool)

(declare-fun res!1751928 () Bool)

(assert (=> b!4262522 (=> (not res!1751928) (not e!2646862))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4262522 (= res!1751928 (= (cheight!14459 (right!35355 t!4386)) (+ (max!0 (height!1872 (left!35025 (right!35355 t!4386))) (height!1872 (right!35355 (right!35355 t!4386)))) 1)))))

(declare-fun b!4262523 () Bool)

(assert (=> b!4262523 (= e!2646862 (<= 0 (cheight!14459 (right!35355 t!4386))))))

(assert (= (and d!1255104 res!1751926) b!4262521))

(assert (= (and b!4262521 res!1751927) b!4262522))

(assert (= (and b!4262522 res!1751928) b!4262523))

(declare-fun m!4851167 () Bool)

(assert (=> d!1255104 m!4851167))

(declare-fun m!4851169 () Bool)

(assert (=> d!1255104 m!4851169))

(assert (=> b!4262522 m!4851065))

(assert (=> b!4262522 m!4851067))

(assert (=> b!4262522 m!4851065))

(assert (=> b!4262522 m!4851067))

(declare-fun m!4851171 () Bool)

(assert (=> b!4262522 m!4851171))

(assert (=> b!4262229 d!1255104))

(declare-fun d!1255106 () Bool)

(declare-fun res!1751929 () Bool)

(declare-fun e!2646863 () Bool)

(assert (=> d!1255106 (=> (not res!1751929) (not e!2646863))))

(assert (=> d!1255106 (= res!1751929 (<= (size!34606 (list!17072 (xs!17554 t!4386))) 512))))

(assert (=> d!1255106 (= (inv!62154 t!4386) e!2646863)))

(declare-fun b!4262524 () Bool)

(declare-fun res!1751930 () Bool)

(assert (=> b!4262524 (=> (not res!1751930) (not e!2646863))))

(assert (=> b!4262524 (= res!1751930 (= (csize!28727 t!4386) (size!34606 (list!17072 (xs!17554 t!4386)))))))

(declare-fun b!4262525 () Bool)

(assert (=> b!4262525 (= e!2646863 (and (> (csize!28727 t!4386) 0) (<= (csize!28727 t!4386) 512)))))

(assert (= (and d!1255106 res!1751929) b!4262524))

(assert (= (and b!4262524 res!1751930) b!4262525))

(assert (=> d!1255106 m!4850887))

(assert (=> d!1255106 m!4850887))

(declare-fun m!4851173 () Bool)

(assert (=> d!1255106 m!4851173))

(assert (=> b!4262524 m!4850887))

(assert (=> b!4262524 m!4850887))

(assert (=> b!4262524 m!4851173))

(assert (=> b!4262221 d!1255106))

(declare-fun d!1255108 () Bool)

(assert (=> d!1255108 (= (list!17072 (xs!17554 (left!35025 t!4386))) (innerList!14308 (xs!17554 (left!35025 t!4386))))))

(assert (=> b!4262344 d!1255108))

(declare-fun d!1255110 () Bool)

(declare-fun res!1751931 () Bool)

(declare-fun e!2646864 () Bool)

(assert (=> d!1255110 (=> (not res!1751931) (not e!2646864))))

(assert (=> d!1255110 (= res!1751931 (<= (size!34606 (list!17072 (xs!17554 (right!35355 t!4386)))) 512))))

(assert (=> d!1255110 (= (inv!62154 (right!35355 t!4386)) e!2646864)))

(declare-fun b!4262526 () Bool)

(declare-fun res!1751932 () Bool)

(assert (=> b!4262526 (=> (not res!1751932) (not e!2646864))))

(assert (=> b!4262526 (= res!1751932 (= (csize!28727 (right!35355 t!4386)) (size!34606 (list!17072 (xs!17554 (right!35355 t!4386))))))))

(declare-fun b!4262527 () Bool)

(assert (=> b!4262527 (= e!2646864 (and (> (csize!28727 (right!35355 t!4386)) 0) (<= (csize!28727 (right!35355 t!4386)) 512)))))

(assert (= (and d!1255110 res!1751931) b!4262526))

(assert (= (and b!4262526 res!1751932) b!4262527))

(assert (=> d!1255110 m!4851015))

(assert (=> d!1255110 m!4851015))

(declare-fun m!4851175 () Bool)

(assert (=> d!1255110 m!4851175))

(assert (=> b!4262526 m!4851015))

(assert (=> b!4262526 m!4851015))

(assert (=> b!4262526 m!4851175))

(assert (=> b!4262231 d!1255110))

(declare-fun d!1255112 () Bool)

(declare-fun lt!1510955 () IArray!28503)

(assert (=> d!1255112 (= lt!1510955 (IArray!28504 (map!9674 (list!17072 (xs!17554 (right!35355 t!4386))) f!428)))))

(assert (=> d!1255112 (= lt!1510955 (choose!25989 (xs!17554 (right!35355 t!4386)) f!428))))

(assert (=> d!1255112 (= (map!9676 (xs!17554 (right!35355 t!4386)) f!428) lt!1510955)))

(declare-fun bs!599107 () Bool)

(assert (= bs!599107 d!1255112))

(assert (=> bs!599107 m!4851015))

(assert (=> bs!599107 m!4851015))

(declare-fun m!4851177 () Bool)

(assert (=> bs!599107 m!4851177))

(declare-fun m!4851179 () Bool)

(assert (=> bs!599107 m!4851179))

(assert (=> b!4262321 d!1255112))

(declare-fun d!1255114 () Bool)

(assert (=> d!1255114 (= ($colon$colon!633 (map!9674 (t!353271 lt!1510889) f!428) (dynLambda!20221 f!428 (h!52662 lt!1510889))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 lt!1510889)) (map!9674 (t!353271 lt!1510889) f!428)))))

(assert (=> b!4262437 d!1255114))

(declare-fun d!1255116 () Bool)

(declare-fun lt!1510956 () List!47367)

(assert (=> d!1255116 (= (size!34605 lt!1510956) (size!34606 (t!353271 lt!1510889)))))

(declare-fun e!2646865 () List!47367)

(assert (=> d!1255116 (= lt!1510956 e!2646865)))

(declare-fun c!724154 () Bool)

(assert (=> d!1255116 (= c!724154 ((_ is Nil!47242) (t!353271 lt!1510889)))))

(assert (=> d!1255116 (= (map!9674 (t!353271 lt!1510889) f!428) lt!1510956)))

(declare-fun b!4262528 () Bool)

(assert (=> b!4262528 (= e!2646865 Nil!47243)))

(declare-fun b!4262529 () Bool)

(assert (=> b!4262529 (= e!2646865 ($colon$colon!633 (map!9674 (t!353271 (t!353271 lt!1510889)) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510889)))))))

(assert (= (and d!1255116 c!724154) b!4262528))

(assert (= (and d!1255116 (not c!724154)) b!4262529))

(declare-fun b_lambda!125857 () Bool)

(assert (=> (not b_lambda!125857) (not b!4262529)))

(declare-fun t!353310 () Bool)

(declare-fun tb!256969 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353310) tb!256969))

(declare-fun result!313546 () Bool)

(assert (=> tb!256969 (= result!313546 tp_is_empty!22881)))

(assert (=> b!4262529 t!353310))

(declare-fun b_and!337779 () Bool)

(assert (= b_and!337777 (and (=> t!353310 result!313546) b_and!337779)))

(declare-fun m!4851181 () Bool)

(assert (=> d!1255116 m!4851181))

(assert (=> d!1255116 m!4851075))

(declare-fun m!4851183 () Bool)

(assert (=> b!4262529 m!4851183))

(declare-fun m!4851185 () Bool)

(assert (=> b!4262529 m!4851185))

(assert (=> b!4262529 m!4851183))

(assert (=> b!4262529 m!4851185))

(declare-fun m!4851187 () Bool)

(assert (=> b!4262529 m!4851187))

(assert (=> b!4262437 d!1255116))

(declare-fun b!4262530 () Bool)

(declare-fun res!1751934 () Bool)

(declare-fun e!2646867 () Bool)

(assert (=> b!4262530 (=> (not res!1751934) (not e!2646867))))

(assert (=> b!4262530 (= res!1751934 (isBalanced!3808 (left!35026 (right!35356 lt!1510890))))))

(declare-fun b!4262531 () Bool)

(declare-fun res!1751936 () Bool)

(assert (=> b!4262531 (=> (not res!1751936) (not e!2646867))))

(assert (=> b!4262531 (= res!1751936 (isBalanced!3808 (right!35356 (right!35356 lt!1510890))))))

(declare-fun d!1255118 () Bool)

(declare-fun res!1751933 () Bool)

(declare-fun e!2646866 () Bool)

(assert (=> d!1255118 (=> res!1751933 e!2646866)))

(assert (=> d!1255118 (= res!1751933 (not ((_ is Node!14249) (right!35356 lt!1510890))))))

(assert (=> d!1255118 (= (isBalanced!3808 (right!35356 lt!1510890)) e!2646866)))

(declare-fun b!4262532 () Bool)

(declare-fun res!1751935 () Bool)

(assert (=> b!4262532 (=> (not res!1751935) (not e!2646867))))

(assert (=> b!4262532 (= res!1751935 (not (isEmpty!27986 (left!35026 (right!35356 lt!1510890)))))))

(declare-fun b!4262533 () Bool)

(assert (=> b!4262533 (= e!2646867 (not (isEmpty!27986 (right!35356 (right!35356 lt!1510890)))))))

(declare-fun b!4262534 () Bool)

(assert (=> b!4262534 (= e!2646866 e!2646867)))

(declare-fun res!1751938 () Bool)

(assert (=> b!4262534 (=> (not res!1751938) (not e!2646867))))

(assert (=> b!4262534 (= res!1751938 (<= (- 1) (- (height!1871 (left!35026 (right!35356 lt!1510890))) (height!1871 (right!35356 (right!35356 lt!1510890))))))))

(declare-fun b!4262535 () Bool)

(declare-fun res!1751937 () Bool)

(assert (=> b!4262535 (=> (not res!1751937) (not e!2646867))))

(assert (=> b!4262535 (= res!1751937 (<= (- (height!1871 (left!35026 (right!35356 lt!1510890))) (height!1871 (right!35356 (right!35356 lt!1510890)))) 1))))

(assert (= (and d!1255118 (not res!1751933)) b!4262534))

(assert (= (and b!4262534 res!1751938) b!4262535))

(assert (= (and b!4262535 res!1751937) b!4262530))

(assert (= (and b!4262530 res!1751934) b!4262531))

(assert (= (and b!4262531 res!1751936) b!4262532))

(assert (= (and b!4262532 res!1751935) b!4262533))

(declare-fun m!4851189 () Bool)

(assert (=> b!4262530 m!4851189))

(declare-fun m!4851191 () Bool)

(assert (=> b!4262533 m!4851191))

(declare-fun m!4851193 () Bool)

(assert (=> b!4262532 m!4851193))

(declare-fun m!4851195 () Bool)

(assert (=> b!4262535 m!4851195))

(declare-fun m!4851197 () Bool)

(assert (=> b!4262535 m!4851197))

(assert (=> b!4262534 m!4851195))

(assert (=> b!4262534 m!4851197))

(declare-fun m!4851199 () Bool)

(assert (=> b!4262531 m!4851199))

(assert (=> b!4262170 d!1255118))

(assert (=> d!1255034 d!1255030))

(declare-fun d!1255120 () Bool)

(assert (=> d!1255120 (= (map!9674 (++!12035 lt!1510891 lt!1510889) f!428) (++!12036 (map!9674 lt!1510891 f!428) (map!9674 lt!1510889 f!428)))))

(assert (=> d!1255120 true))

(declare-fun _$82!112 () Unit!66139)

(assert (=> d!1255120 (= (choose!25988 lt!1510891 lt!1510889 f!428) _$82!112)))

(declare-fun bs!599108 () Bool)

(assert (= bs!599108 d!1255120))

(assert (=> bs!599108 m!4850681))

(assert (=> bs!599108 m!4850677))

(assert (=> bs!599108 m!4850675))

(assert (=> bs!599108 m!4850677))

(assert (=> bs!599108 m!4850679))

(assert (=> bs!599108 m!4850675))

(assert (=> bs!599108 m!4850681))

(assert (=> bs!599108 m!4850683))

(assert (=> d!1255034 d!1255120))

(assert (=> d!1255034 d!1255032))

(assert (=> d!1255034 d!1255044))

(assert (=> d!1255034 d!1255054))

(assert (=> d!1255034 d!1255048))

(declare-fun d!1255122 () Bool)

(declare-fun res!1751939 () Bool)

(declare-fun e!2646868 () Bool)

(assert (=> d!1255122 (=> (not res!1751939) (not e!2646868))))

(assert (=> d!1255122 (= res!1751939 (= (csize!28726 (left!35025 t!4386)) (+ (size!34608 (left!35025 (left!35025 t!4386))) (size!34608 (right!35355 (left!35025 t!4386))))))))

(assert (=> d!1255122 (= (inv!62153 (left!35025 t!4386)) e!2646868)))

(declare-fun b!4262536 () Bool)

(declare-fun res!1751940 () Bool)

(assert (=> b!4262536 (=> (not res!1751940) (not e!2646868))))

(assert (=> b!4262536 (= res!1751940 (and (not (= (left!35025 (left!35025 t!4386)) Empty!14248)) (not (= (right!35355 (left!35025 t!4386)) Empty!14248))))))

(declare-fun b!4262537 () Bool)

(declare-fun res!1751941 () Bool)

(assert (=> b!4262537 (=> (not res!1751941) (not e!2646868))))

(assert (=> b!4262537 (= res!1751941 (= (cheight!14459 (left!35025 t!4386)) (+ (max!0 (height!1872 (left!35025 (left!35025 t!4386))) (height!1872 (right!35355 (left!35025 t!4386)))) 1)))))

(declare-fun b!4262538 () Bool)

(assert (=> b!4262538 (= e!2646868 (<= 0 (cheight!14459 (left!35025 t!4386))))))

(assert (= (and d!1255122 res!1751939) b!4262536))

(assert (= (and b!4262536 res!1751940) b!4262537))

(assert (= (and b!4262537 res!1751941) b!4262538))

(declare-fun m!4851201 () Bool)

(assert (=> d!1255122 m!4851201))

(declare-fun m!4851203 () Bool)

(assert (=> d!1255122 m!4851203))

(assert (=> b!4262537 m!4851163))

(assert (=> b!4262537 m!4851165))

(assert (=> b!4262537 m!4851163))

(assert (=> b!4262537 m!4851165))

(declare-fun m!4851205 () Bool)

(assert (=> b!4262537 m!4851205))

(assert (=> b!4262226 d!1255122))

(assert (=> b!4262205 d!1255072))

(assert (=> b!4262205 d!1255074))

(assert (=> b!4262133 d!1255006))

(assert (=> b!4262133 d!1255008))

(declare-fun d!1255124 () Bool)

(assert (=> d!1255124 (= (inv!62150 (xs!17554 (left!35025 t!4386))) (<= (size!34606 (innerList!14308 (xs!17554 (left!35025 t!4386)))) 2147483647))))

(declare-fun bs!599109 () Bool)

(assert (= bs!599109 d!1255124))

(declare-fun m!4851207 () Bool)

(assert (=> bs!599109 m!4851207))

(assert (=> b!4262447 d!1255124))

(declare-fun d!1255126 () Bool)

(declare-fun res!1751942 () Bool)

(declare-fun e!2646869 () Bool)

(assert (=> d!1255126 (=> (not res!1751942) (not e!2646869))))

(assert (=> d!1255126 (= res!1751942 (= (csize!28726 t!4386) (+ (size!34608 (left!35025 t!4386)) (size!34608 (right!35355 t!4386)))))))

(assert (=> d!1255126 (= (inv!62153 t!4386) e!2646869)))

(declare-fun b!4262539 () Bool)

(declare-fun res!1751943 () Bool)

(assert (=> b!4262539 (=> (not res!1751943) (not e!2646869))))

(assert (=> b!4262539 (= res!1751943 (and (not (= (left!35025 t!4386) Empty!14248)) (not (= (right!35355 t!4386) Empty!14248))))))

(declare-fun b!4262540 () Bool)

(declare-fun res!1751944 () Bool)

(assert (=> b!4262540 (=> (not res!1751944) (not e!2646869))))

(assert (=> b!4262540 (= res!1751944 (= (cheight!14459 t!4386) (+ (max!0 (height!1872 (left!35025 t!4386)) (height!1872 (right!35355 t!4386))) 1)))))

(declare-fun b!4262541 () Bool)

(assert (=> b!4262541 (= e!2646869 (<= 0 (cheight!14459 t!4386)))))

(assert (= (and d!1255126 res!1751942) b!4262539))

(assert (= (and b!4262539 res!1751943) b!4262540))

(assert (= (and b!4262540 res!1751944) b!4262541))

(declare-fun m!4851209 () Bool)

(assert (=> d!1255126 m!4851209))

(declare-fun m!4851211 () Bool)

(assert (=> d!1255126 m!4851211))

(assert (=> b!4262540 m!4850751))

(assert (=> b!4262540 m!4850755))

(assert (=> b!4262540 m!4850751))

(assert (=> b!4262540 m!4850755))

(declare-fun m!4851213 () Bool)

(assert (=> b!4262540 m!4851213))

(assert (=> b!4262219 d!1255126))

(declare-fun d!1255128 () Bool)

(declare-fun lt!1510959 () Int)

(assert (=> d!1255128 (>= lt!1510959 0)))

(declare-fun e!2646872 () Int)

(assert (=> d!1255128 (= lt!1510959 e!2646872)))

(declare-fun c!724157 () Bool)

(assert (=> d!1255128 (= c!724157 ((_ is Nil!47243) lt!1510923))))

(assert (=> d!1255128 (= (size!34605 lt!1510923) lt!1510959)))

(declare-fun b!4262546 () Bool)

(assert (=> b!4262546 (= e!2646872 0)))

(declare-fun b!4262547 () Bool)

(assert (=> b!4262547 (= e!2646872 (+ 1 (size!34605 (t!353272 lt!1510923))))))

(assert (= (and d!1255128 c!724157) b!4262546))

(assert (= (and d!1255128 (not c!724157)) b!4262547))

(declare-fun m!4851215 () Bool)

(assert (=> b!4262547 m!4851215))

(assert (=> d!1255032 d!1255128))

(declare-fun d!1255132 () Bool)

(declare-fun lt!1510960 () Int)

(assert (=> d!1255132 (>= lt!1510960 0)))

(declare-fun e!2646873 () Int)

(assert (=> d!1255132 (= lt!1510960 e!2646873)))

(declare-fun c!724158 () Bool)

(assert (=> d!1255132 (= c!724158 ((_ is Nil!47242) (++!12035 lt!1510891 lt!1510889)))))

(assert (=> d!1255132 (= (size!34606 (++!12035 lt!1510891 lt!1510889)) lt!1510960)))

(declare-fun b!4262548 () Bool)

(assert (=> b!4262548 (= e!2646873 0)))

(declare-fun b!4262549 () Bool)

(assert (=> b!4262549 (= e!2646873 (+ 1 (size!34606 (t!353271 (++!12035 lt!1510891 lt!1510889)))))))

(assert (= (and d!1255132 c!724158) b!4262548))

(assert (= (and d!1255132 (not c!724158)) b!4262549))

(declare-fun m!4851217 () Bool)

(assert (=> b!4262549 m!4851217))

(assert (=> d!1255032 d!1255132))

(declare-fun b!4262552 () Bool)

(declare-fun res!1751945 () Bool)

(declare-fun e!2646874 () Bool)

(assert (=> b!4262552 (=> (not res!1751945) (not e!2646874))))

(declare-fun lt!1510961 () List!47367)

(assert (=> b!4262552 (= res!1751945 (= (size!34605 lt!1510961) (+ (size!34605 (list!17067 (left!35026 lt!1510890))) (size!34605 (list!17067 (right!35356 lt!1510890))))))))

(declare-fun b!4262551 () Bool)

(declare-fun e!2646875 () List!47367)

(assert (=> b!4262551 (= e!2646875 (Cons!47243 (h!52663 (list!17067 (left!35026 lt!1510890))) (++!12036 (t!353272 (list!17067 (left!35026 lt!1510890))) (list!17067 (right!35356 lt!1510890)))))))

(declare-fun b!4262553 () Bool)

(assert (=> b!4262553 (= e!2646874 (or (not (= (list!17067 (right!35356 lt!1510890)) Nil!47243)) (= lt!1510961 (list!17067 (left!35026 lt!1510890)))))))

(declare-fun b!4262550 () Bool)

(assert (=> b!4262550 (= e!2646875 (list!17067 (right!35356 lt!1510890)))))

(declare-fun d!1255134 () Bool)

(assert (=> d!1255134 e!2646874))

(declare-fun res!1751946 () Bool)

(assert (=> d!1255134 (=> (not res!1751946) (not e!2646874))))

(assert (=> d!1255134 (= res!1751946 (= (content!7447 lt!1510961) ((_ map or) (content!7447 (list!17067 (left!35026 lt!1510890))) (content!7447 (list!17067 (right!35356 lt!1510890))))))))

(assert (=> d!1255134 (= lt!1510961 e!2646875)))

(declare-fun c!724159 () Bool)

(assert (=> d!1255134 (= c!724159 ((_ is Nil!47243) (list!17067 (left!35026 lt!1510890))))))

(assert (=> d!1255134 (= (++!12036 (list!17067 (left!35026 lt!1510890)) (list!17067 (right!35356 lt!1510890))) lt!1510961)))

(assert (= (and d!1255134 c!724159) b!4262550))

(assert (= (and d!1255134 (not c!724159)) b!4262551))

(assert (= (and d!1255134 res!1751946) b!4262552))

(assert (= (and b!4262552 res!1751945) b!4262553))

(declare-fun m!4851219 () Bool)

(assert (=> b!4262552 m!4851219))

(assert (=> b!4262552 m!4850799))

(declare-fun m!4851221 () Bool)

(assert (=> b!4262552 m!4851221))

(assert (=> b!4262552 m!4850801))

(declare-fun m!4851223 () Bool)

(assert (=> b!4262552 m!4851223))

(assert (=> b!4262551 m!4850801))

(declare-fun m!4851225 () Bool)

(assert (=> b!4262551 m!4851225))

(declare-fun m!4851227 () Bool)

(assert (=> d!1255134 m!4851227))

(assert (=> d!1255134 m!4850799))

(declare-fun m!4851229 () Bool)

(assert (=> d!1255134 m!4851229))

(assert (=> d!1255134 m!4850801))

(declare-fun m!4851231 () Bool)

(assert (=> d!1255134 m!4851231))

(assert (=> b!4262251 d!1255134))

(declare-fun b!4262556 () Bool)

(declare-fun e!2646877 () List!47367)

(assert (=> b!4262556 (= e!2646877 Nil!47243)))

(declare-fun b!4262558 () Bool)

(declare-fun e!2646878 () List!47367)

(assert (=> b!4262558 (= e!2646878 (list!17070 (xs!17555 (left!35026 lt!1510890))))))

(declare-fun b!4262559 () Bool)

(assert (=> b!4262559 (= e!2646878 (++!12036 (list!17067 (left!35026 (left!35026 lt!1510890))) (list!17067 (right!35356 (left!35026 lt!1510890)))))))

(declare-fun b!4262557 () Bool)

(assert (=> b!4262557 (= e!2646877 e!2646878)))

(declare-fun c!724162 () Bool)

(assert (=> b!4262557 (= c!724162 ((_ is Leaf!22019) (left!35026 lt!1510890)))))

(declare-fun d!1255138 () Bool)

(declare-fun c!724161 () Bool)

(assert (=> d!1255138 (= c!724161 ((_ is Empty!14249) (left!35026 lt!1510890)))))

(assert (=> d!1255138 (= (list!17067 (left!35026 lt!1510890)) e!2646877)))

(assert (= (and d!1255138 c!724161) b!4262556))

(assert (= (and d!1255138 (not c!724161)) b!4262557))

(assert (= (and b!4262557 c!724162) b!4262558))

(assert (= (and b!4262557 (not c!724162)) b!4262559))

(declare-fun m!4851233 () Bool)

(assert (=> b!4262558 m!4851233))

(declare-fun m!4851235 () Bool)

(assert (=> b!4262559 m!4851235))

(declare-fun m!4851237 () Bool)

(assert (=> b!4262559 m!4851237))

(assert (=> b!4262559 m!4851235))

(assert (=> b!4262559 m!4851237))

(declare-fun m!4851239 () Bool)

(assert (=> b!4262559 m!4851239))

(assert (=> b!4262251 d!1255138))

(declare-fun b!4262560 () Bool)

(declare-fun e!2646879 () List!47367)

(assert (=> b!4262560 (= e!2646879 Nil!47243)))

(declare-fun b!4262562 () Bool)

(declare-fun e!2646880 () List!47367)

(assert (=> b!4262562 (= e!2646880 (list!17070 (xs!17555 (right!35356 lt!1510890))))))

(declare-fun b!4262563 () Bool)

(assert (=> b!4262563 (= e!2646880 (++!12036 (list!17067 (left!35026 (right!35356 lt!1510890))) (list!17067 (right!35356 (right!35356 lt!1510890)))))))

(declare-fun b!4262561 () Bool)

(assert (=> b!4262561 (= e!2646879 e!2646880)))

(declare-fun c!724164 () Bool)

(assert (=> b!4262561 (= c!724164 ((_ is Leaf!22019) (right!35356 lt!1510890)))))

(declare-fun d!1255140 () Bool)

(declare-fun c!724163 () Bool)

(assert (=> d!1255140 (= c!724163 ((_ is Empty!14249) (right!35356 lt!1510890)))))

(assert (=> d!1255140 (= (list!17067 (right!35356 lt!1510890)) e!2646879)))

(assert (= (and d!1255140 c!724163) b!4262560))

(assert (= (and d!1255140 (not c!724163)) b!4262561))

(assert (= (and b!4262561 c!724164) b!4262562))

(assert (= (and b!4262561 (not c!724164)) b!4262563))

(declare-fun m!4851249 () Bool)

(assert (=> b!4262562 m!4851249))

(declare-fun m!4851251 () Bool)

(assert (=> b!4262563 m!4851251))

(declare-fun m!4851255 () Bool)

(assert (=> b!4262563 m!4851255))

(assert (=> b!4262563 m!4851251))

(assert (=> b!4262563 m!4851255))

(declare-fun m!4851257 () Bool)

(assert (=> b!4262563 m!4851257))

(assert (=> b!4262251 d!1255140))

(declare-fun b!4262566 () Bool)

(declare-fun res!1751947 () Bool)

(declare-fun e!2646881 () Bool)

(assert (=> b!4262566 (=> (not res!1751947) (not e!2646881))))

(declare-fun lt!1510963 () List!47367)

(assert (=> b!4262566 (= res!1751947 (= (size!34605 lt!1510963) (+ (size!34605 (t!353272 (map!9674 lt!1510891 f!428))) (size!34605 (map!9674 lt!1510889 f!428)))))))

(declare-fun b!4262565 () Bool)

(declare-fun e!2646882 () List!47367)

(assert (=> b!4262565 (= e!2646882 (Cons!47243 (h!52663 (t!353272 (map!9674 lt!1510891 f!428))) (++!12036 (t!353272 (t!353272 (map!9674 lt!1510891 f!428))) (map!9674 lt!1510889 f!428))))))

(declare-fun b!4262567 () Bool)

(assert (=> b!4262567 (= e!2646881 (or (not (= (map!9674 lt!1510889 f!428) Nil!47243)) (= lt!1510963 (t!353272 (map!9674 lt!1510891 f!428)))))))

(declare-fun b!4262564 () Bool)

(assert (=> b!4262564 (= e!2646882 (map!9674 lt!1510889 f!428))))

(declare-fun d!1255144 () Bool)

(assert (=> d!1255144 e!2646881))

(declare-fun res!1751948 () Bool)

(assert (=> d!1255144 (=> (not res!1751948) (not e!2646881))))

(assert (=> d!1255144 (= res!1751948 (= (content!7447 lt!1510963) ((_ map or) (content!7447 (t!353272 (map!9674 lt!1510891 f!428))) (content!7447 (map!9674 lt!1510889 f!428)))))))

(assert (=> d!1255144 (= lt!1510963 e!2646882)))

(declare-fun c!724165 () Bool)

(assert (=> d!1255144 (= c!724165 ((_ is Nil!47243) (t!353272 (map!9674 lt!1510891 f!428))))))

(assert (=> d!1255144 (= (++!12036 (t!353272 (map!9674 lt!1510891 f!428)) (map!9674 lt!1510889 f!428)) lt!1510963)))

(assert (= (and d!1255144 c!724165) b!4262564))

(assert (= (and d!1255144 (not c!724165)) b!4262565))

(assert (= (and d!1255144 res!1751948) b!4262566))

(assert (= (and b!4262566 res!1751947) b!4262567))

(declare-fun m!4851259 () Bool)

(assert (=> b!4262566 m!4851259))

(declare-fun m!4851261 () Bool)

(assert (=> b!4262566 m!4851261))

(assert (=> b!4262566 m!4850677))

(assert (=> b!4262566 m!4850967))

(assert (=> b!4262565 m!4850677))

(declare-fun m!4851263 () Bool)

(assert (=> b!4262565 m!4851263))

(declare-fun m!4851265 () Bool)

(assert (=> d!1255144 m!4851265))

(declare-fun m!4851267 () Bool)

(assert (=> d!1255144 m!4851267))

(assert (=> d!1255144 m!4850677))

(assert (=> d!1255144 m!4850975))

(assert (=> b!4262389 d!1255144))

(declare-fun d!1255146 () Bool)

(declare-fun c!724166 () Bool)

(assert (=> d!1255146 (= c!724166 ((_ is Node!14248) (left!35025 (right!35355 t!4386))))))

(declare-fun e!2646883 () Bool)

(assert (=> d!1255146 (= (inv!62149 (left!35025 (right!35355 t!4386))) e!2646883)))

(declare-fun b!4262568 () Bool)

(assert (=> b!4262568 (= e!2646883 (inv!62153 (left!35025 (right!35355 t!4386))))))

(declare-fun b!4262569 () Bool)

(declare-fun e!2646884 () Bool)

(assert (=> b!4262569 (= e!2646883 e!2646884)))

(declare-fun res!1751949 () Bool)

(assert (=> b!4262569 (= res!1751949 (not ((_ is Leaf!22018) (left!35025 (right!35355 t!4386)))))))

(assert (=> b!4262569 (=> res!1751949 e!2646884)))

(declare-fun b!4262570 () Bool)

(assert (=> b!4262570 (= e!2646884 (inv!62154 (left!35025 (right!35355 t!4386))))))

(assert (= (and d!1255146 c!724166) b!4262568))

(assert (= (and d!1255146 (not c!724166)) b!4262569))

(assert (= (and b!4262569 (not res!1751949)) b!4262570))

(declare-fun m!4851269 () Bool)

(assert (=> b!4262568 m!4851269))

(declare-fun m!4851271 () Bool)

(assert (=> b!4262570 m!4851271))

(assert (=> b!4262449 d!1255146))

(declare-fun d!1255148 () Bool)

(declare-fun c!724167 () Bool)

(assert (=> d!1255148 (= c!724167 ((_ is Node!14248) (right!35355 (right!35355 t!4386))))))

(declare-fun e!2646885 () Bool)

(assert (=> d!1255148 (= (inv!62149 (right!35355 (right!35355 t!4386))) e!2646885)))

(declare-fun b!4262571 () Bool)

(assert (=> b!4262571 (= e!2646885 (inv!62153 (right!35355 (right!35355 t!4386))))))

(declare-fun b!4262572 () Bool)

(declare-fun e!2646886 () Bool)

(assert (=> b!4262572 (= e!2646885 e!2646886)))

(declare-fun res!1751950 () Bool)

(assert (=> b!4262572 (= res!1751950 (not ((_ is Leaf!22018) (right!35355 (right!35355 t!4386)))))))

(assert (=> b!4262572 (=> res!1751950 e!2646886)))

(declare-fun b!4262573 () Bool)

(assert (=> b!4262573 (= e!2646886 (inv!62154 (right!35355 (right!35355 t!4386))))))

(assert (= (and d!1255148 c!724167) b!4262571))

(assert (= (and d!1255148 (not c!724167)) b!4262572))

(assert (= (and b!4262572 (not res!1751950)) b!4262573))

(declare-fun m!4851273 () Bool)

(assert (=> b!4262571 m!4851273))

(declare-fun m!4851275 () Bool)

(assert (=> b!4262573 m!4851275))

(assert (=> b!4262449 d!1255148))

(declare-fun b!4262577 () Bool)

(declare-fun e!2646888 () Bool)

(declare-fun lt!1510964 () List!47366)

(assert (=> b!4262577 (= e!2646888 (or (not (= lt!1510889 Nil!47242)) (= lt!1510964 (t!353271 lt!1510891))))))

(declare-fun b!4262576 () Bool)

(declare-fun res!1751952 () Bool)

(assert (=> b!4262576 (=> (not res!1751952) (not e!2646888))))

(assert (=> b!4262576 (= res!1751952 (= (size!34606 lt!1510964) (+ (size!34606 (t!353271 lt!1510891)) (size!34606 lt!1510889))))))

(declare-fun d!1255150 () Bool)

(assert (=> d!1255150 e!2646888))

(declare-fun res!1751951 () Bool)

(assert (=> d!1255150 (=> (not res!1751951) (not e!2646888))))

(assert (=> d!1255150 (= res!1751951 (= (content!7448 lt!1510964) ((_ map or) (content!7448 (t!353271 lt!1510891)) (content!7448 lt!1510889))))))

(declare-fun e!2646887 () List!47366)

(assert (=> d!1255150 (= lt!1510964 e!2646887)))

(declare-fun c!724168 () Bool)

(assert (=> d!1255150 (= c!724168 ((_ is Nil!47242) (t!353271 lt!1510891)))))

(assert (=> d!1255150 (= (++!12035 (t!353271 lt!1510891) lt!1510889) lt!1510964)))

(declare-fun b!4262574 () Bool)

(assert (=> b!4262574 (= e!2646887 lt!1510889)))

(declare-fun b!4262575 () Bool)

(assert (=> b!4262575 (= e!2646887 (Cons!47242 (h!52662 (t!353271 lt!1510891)) (++!12035 (t!353271 (t!353271 lt!1510891)) lt!1510889)))))

(assert (= (and d!1255150 c!724168) b!4262574))

(assert (= (and d!1255150 (not c!724168)) b!4262575))

(assert (= (and d!1255150 res!1751951) b!4262576))

(assert (= (and b!4262576 res!1751952) b!4262577))

(declare-fun m!4851277 () Bool)

(assert (=> b!4262576 m!4851277))

(assert (=> b!4262576 m!4851073))

(assert (=> b!4262576 m!4851003))

(declare-fun m!4851279 () Bool)

(assert (=> d!1255150 m!4851279))

(declare-fun m!4851281 () Bool)

(assert (=> d!1255150 m!4851281))

(assert (=> d!1255150 m!4851009))

(declare-fun m!4851283 () Bool)

(assert (=> b!4262575 m!4851283))

(assert (=> b!4262429 d!1255150))

(assert (=> b!4262201 d!1255102))

(declare-fun d!1255152 () Bool)

(assert (=> d!1255152 (= (list!17072 (xs!17554 (right!35355 t!4386))) (innerList!14308 (xs!17554 (right!35355 t!4386))))))

(assert (=> b!4262434 d!1255152))

(declare-fun d!1255154 () Bool)

(declare-fun lt!1510965 () Int)

(assert (=> d!1255154 (>= lt!1510965 0)))

(declare-fun e!2646889 () Int)

(assert (=> d!1255154 (= lt!1510965 e!2646889)))

(declare-fun c!724169 () Bool)

(assert (=> d!1255154 (= c!724169 ((_ is Nil!47243) lt!1510922))))

(assert (=> d!1255154 (= (size!34605 lt!1510922) lt!1510965)))

(declare-fun b!4262578 () Bool)

(assert (=> b!4262578 (= e!2646889 0)))

(declare-fun b!4262579 () Bool)

(assert (=> b!4262579 (= e!2646889 (+ 1 (size!34605 (t!353272 lt!1510922))))))

(assert (= (and d!1255154 c!724169) b!4262578))

(assert (= (and d!1255154 (not c!724169)) b!4262579))

(declare-fun m!4851285 () Bool)

(assert (=> b!4262579 m!4851285))

(assert (=> d!1255030 d!1255154))

(assert (=> d!1255030 d!1255068))

(declare-fun d!1255156 () Bool)

(declare-fun lt!1510971 () Bool)

(declare-fun isEmpty!27992 (List!47366) Bool)

(assert (=> d!1255156 (= lt!1510971 (isEmpty!27992 (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255156 (= lt!1510971 (= (size!34608 (left!35025 t!4386)) 0))))

(assert (=> d!1255156 (= (isEmpty!27987 (left!35025 t!4386)) lt!1510971)))

(declare-fun bs!599111 () Bool)

(assert (= bs!599111 d!1255156))

(assert (=> bs!599111 m!4850685))

(assert (=> bs!599111 m!4850685))

(declare-fun m!4851291 () Bool)

(assert (=> bs!599111 m!4851291))

(assert (=> bs!599111 m!4851209))

(assert (=> b!4262203 d!1255156))

(declare-fun d!1255160 () Bool)

(declare-fun lt!1510972 () Bool)

(assert (=> d!1255160 (= lt!1510972 (isEmpty!27990 (list!17067 (left!35026 lt!1510890))))))

(assert (=> d!1255160 (= lt!1510972 (= (size!34607 (left!35026 lt!1510890)) 0))))

(assert (=> d!1255160 (= (isEmpty!27986 (left!35026 lt!1510890)) lt!1510972)))

(declare-fun bs!599112 () Bool)

(assert (= bs!599112 d!1255160))

(assert (=> bs!599112 m!4850799))

(assert (=> bs!599112 m!4850799))

(declare-fun m!4851293 () Bool)

(assert (=> bs!599112 m!4851293))

(declare-fun m!4851295 () Bool)

(assert (=> bs!599112 m!4851295))

(assert (=> b!4262171 d!1255160))

(declare-fun d!1255162 () Bool)

(assert (=> d!1255162 (= (list!17072 (xs!17554 t!4386)) (innerList!14308 (xs!17554 t!4386)))))

(assert (=> b!4262340 d!1255162))

(assert (=> b!4262173 d!1255094))

(assert (=> b!4262173 d!1255096))

(declare-fun d!1255164 () Bool)

(declare-fun c!724172 () Bool)

(assert (=> d!1255164 (= c!724172 ((_ is Nil!47242) lt!1510937))))

(declare-fun e!2646894 () (InoxSet T!79420))

(assert (=> d!1255164 (= (content!7448 lt!1510937) e!2646894)))

(declare-fun b!4262590 () Bool)

(assert (=> b!4262590 (= e!2646894 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4262591 () Bool)

(assert (=> b!4262591 (= e!2646894 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510937) true) (content!7448 (t!353271 lt!1510937))))))

(assert (= (and d!1255164 c!724172) b!4262590))

(assert (= (and d!1255164 (not c!724172)) b!4262591))

(declare-fun m!4851309 () Bool)

(assert (=> b!4262591 m!4851309))

(declare-fun m!4851311 () Bool)

(assert (=> b!4262591 m!4851311))

(assert (=> d!1255048 d!1255164))

(declare-fun d!1255172 () Bool)

(declare-fun c!724173 () Bool)

(assert (=> d!1255172 (= c!724173 ((_ is Nil!47242) lt!1510891))))

(declare-fun e!2646895 () (InoxSet T!79420))

(assert (=> d!1255172 (= (content!7448 lt!1510891) e!2646895)))

(declare-fun b!4262592 () Bool)

(assert (=> b!4262592 (= e!2646895 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4262593 () Bool)

(assert (=> b!4262593 (= e!2646895 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510891) true) (content!7448 (t!353271 lt!1510891))))))

(assert (= (and d!1255172 c!724173) b!4262592))

(assert (= (and d!1255172 (not c!724173)) b!4262593))

(declare-fun m!4851313 () Bool)

(assert (=> b!4262593 m!4851313))

(assert (=> b!4262593 m!4851281))

(assert (=> d!1255048 d!1255172))

(declare-fun d!1255174 () Bool)

(declare-fun c!724174 () Bool)

(assert (=> d!1255174 (= c!724174 ((_ is Nil!47242) lt!1510889))))

(declare-fun e!2646896 () (InoxSet T!79420))

(assert (=> d!1255174 (= (content!7448 lt!1510889) e!2646896)))

(declare-fun b!4262594 () Bool)

(assert (=> b!4262594 (= e!2646896 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4262595 () Bool)

(assert (=> b!4262595 (= e!2646896 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510889) true) (content!7448 (t!353271 lt!1510889))))))

(assert (= (and d!1255174 c!724174) b!4262594))

(assert (= (and d!1255174 (not c!724174)) b!4262595))

(declare-fun m!4851315 () Bool)

(assert (=> b!4262595 m!4851315))

(declare-fun m!4851317 () Bool)

(assert (=> b!4262595 m!4851317))

(assert (=> d!1255048 d!1255174))

(declare-fun b!4262596 () Bool)

(declare-fun res!1751960 () Bool)

(declare-fun e!2646898 () Bool)

(assert (=> b!4262596 (=> (not res!1751960) (not e!2646898))))

(assert (=> b!4262596 (= res!1751960 (isBalanced!3808 (left!35026 lt!1510917)))))

(declare-fun b!4262597 () Bool)

(declare-fun res!1751962 () Bool)

(assert (=> b!4262597 (=> (not res!1751962) (not e!2646898))))

(assert (=> b!4262597 (= res!1751962 (isBalanced!3808 (right!35356 lt!1510917)))))

(declare-fun d!1255178 () Bool)

(declare-fun res!1751959 () Bool)

(declare-fun e!2646897 () Bool)

(assert (=> d!1255178 (=> res!1751959 e!2646897)))

(assert (=> d!1255178 (= res!1751959 (not ((_ is Node!14249) lt!1510917)))))

(assert (=> d!1255178 (= (isBalanced!3808 lt!1510917) e!2646897)))

(declare-fun b!4262598 () Bool)

(declare-fun res!1751961 () Bool)

(assert (=> b!4262598 (=> (not res!1751961) (not e!2646898))))

(assert (=> b!4262598 (= res!1751961 (not (isEmpty!27986 (left!35026 lt!1510917))))))

(declare-fun b!4262599 () Bool)

(assert (=> b!4262599 (= e!2646898 (not (isEmpty!27986 (right!35356 lt!1510917))))))

(declare-fun b!4262600 () Bool)

(assert (=> b!4262600 (= e!2646897 e!2646898)))

(declare-fun res!1751964 () Bool)

(assert (=> b!4262600 (=> (not res!1751964) (not e!2646898))))

(assert (=> b!4262600 (= res!1751964 (<= (- 1) (- (height!1871 (left!35026 lt!1510917)) (height!1871 (right!35356 lt!1510917)))))))

(declare-fun b!4262601 () Bool)

(declare-fun res!1751963 () Bool)

(assert (=> b!4262601 (=> (not res!1751963) (not e!2646898))))

(assert (=> b!4262601 (= res!1751963 (<= (- (height!1871 (left!35026 lt!1510917)) (height!1871 (right!35356 lt!1510917))) 1))))

(assert (= (and d!1255178 (not res!1751959)) b!4262600))

(assert (= (and b!4262600 res!1751964) b!4262601))

(assert (= (and b!4262601 res!1751963) b!4262596))

(assert (= (and b!4262596 res!1751960) b!4262597))

(assert (= (and b!4262597 res!1751962) b!4262598))

(assert (= (and b!4262598 res!1751961) b!4262599))

(declare-fun m!4851319 () Bool)

(assert (=> b!4262596 m!4851319))

(declare-fun m!4851321 () Bool)

(assert (=> b!4262599 m!4851321))

(declare-fun m!4851323 () Bool)

(assert (=> b!4262598 m!4851323))

(declare-fun m!4851325 () Bool)

(assert (=> b!4262601 m!4851325))

(declare-fun m!4851327 () Bool)

(assert (=> b!4262601 m!4851327))

(assert (=> b!4262600 m!4851325))

(assert (=> b!4262600 m!4851327))

(declare-fun m!4851329 () Bool)

(assert (=> b!4262597 m!4851329))

(assert (=> b!4262318 d!1255178))

(declare-fun d!1255180 () Bool)

(declare-fun lt!1510974 () Int)

(assert (=> d!1255180 (>= lt!1510974 0)))

(declare-fun e!2646901 () Int)

(assert (=> d!1255180 (= lt!1510974 e!2646901)))

(declare-fun c!724176 () Bool)

(assert (=> d!1255180 (= c!724176 ((_ is Nil!47243) lt!1510934))))

(assert (=> d!1255180 (= (size!34605 lt!1510934) lt!1510974)))

(declare-fun b!4262606 () Bool)

(assert (=> b!4262606 (= e!2646901 0)))

(declare-fun b!4262607 () Bool)

(assert (=> b!4262607 (= e!2646901 (+ 1 (size!34605 (t!353272 lt!1510934))))))

(assert (= (and d!1255180 c!724176) b!4262606))

(assert (= (and d!1255180 (not c!724176)) b!4262607))

(declare-fun m!4851343 () Bool)

(assert (=> b!4262607 m!4851343))

(assert (=> b!4262390 d!1255180))

(declare-fun d!1255182 () Bool)

(declare-fun lt!1510975 () Int)

(assert (=> d!1255182 (>= lt!1510975 0)))

(declare-fun e!2646902 () Int)

(assert (=> d!1255182 (= lt!1510975 e!2646902)))

(declare-fun c!724177 () Bool)

(assert (=> d!1255182 (= c!724177 ((_ is Nil!47243) (map!9674 lt!1510891 f!428)))))

(assert (=> d!1255182 (= (size!34605 (map!9674 lt!1510891 f!428)) lt!1510975)))

(declare-fun b!4262608 () Bool)

(assert (=> b!4262608 (= e!2646902 0)))

(declare-fun b!4262609 () Bool)

(assert (=> b!4262609 (= e!2646902 (+ 1 (size!34605 (t!353272 (map!9674 lt!1510891 f!428)))))))

(assert (= (and d!1255182 c!724177) b!4262608))

(assert (= (and d!1255182 (not c!724177)) b!4262609))

(assert (=> b!4262609 m!4851261))

(assert (=> b!4262390 d!1255182))

(declare-fun d!1255186 () Bool)

(declare-fun lt!1510976 () Int)

(assert (=> d!1255186 (>= lt!1510976 0)))

(declare-fun e!2646905 () Int)

(assert (=> d!1255186 (= lt!1510976 e!2646905)))

(declare-fun c!724180 () Bool)

(assert (=> d!1255186 (= c!724180 ((_ is Nil!47243) (map!9674 lt!1510889 f!428)))))

(assert (=> d!1255186 (= (size!34605 (map!9674 lt!1510889 f!428)) lt!1510976)))

(declare-fun b!4262614 () Bool)

(assert (=> b!4262614 (= e!2646905 0)))

(declare-fun b!4262615 () Bool)

(assert (=> b!4262615 (= e!2646905 (+ 1 (size!34605 (t!353272 (map!9674 lt!1510889 f!428)))))))

(assert (= (and d!1255186 c!724180) b!4262614))

(assert (= (and d!1255186 (not c!724180)) b!4262615))

(declare-fun m!4851347 () Bool)

(assert (=> b!4262615 m!4851347))

(assert (=> b!4262390 d!1255186))

(declare-fun b!4262616 () Bool)

(declare-fun res!1751968 () Bool)

(declare-fun e!2646907 () Bool)

(assert (=> b!4262616 (=> (not res!1751968) (not e!2646907))))

(assert (=> b!4262616 (= res!1751968 (isBalanced!3808 (left!35026 lt!1510912)))))

(declare-fun b!4262617 () Bool)

(declare-fun res!1751970 () Bool)

(assert (=> b!4262617 (=> (not res!1751970) (not e!2646907))))

(assert (=> b!4262617 (= res!1751970 (isBalanced!3808 (right!35356 lt!1510912)))))

(declare-fun d!1255188 () Bool)

(declare-fun res!1751967 () Bool)

(declare-fun e!2646906 () Bool)

(assert (=> d!1255188 (=> res!1751967 e!2646906)))

(assert (=> d!1255188 (= res!1751967 (not ((_ is Node!14249) lt!1510912)))))

(assert (=> d!1255188 (= (isBalanced!3808 lt!1510912) e!2646906)))

(declare-fun b!4262618 () Bool)

(declare-fun res!1751969 () Bool)

(assert (=> b!4262618 (=> (not res!1751969) (not e!2646907))))

(assert (=> b!4262618 (= res!1751969 (not (isEmpty!27986 (left!35026 lt!1510912))))))

(declare-fun b!4262619 () Bool)

(assert (=> b!4262619 (= e!2646907 (not (isEmpty!27986 (right!35356 lt!1510912))))))

(declare-fun b!4262620 () Bool)

(assert (=> b!4262620 (= e!2646906 e!2646907)))

(declare-fun res!1751972 () Bool)

(assert (=> b!4262620 (=> (not res!1751972) (not e!2646907))))

(assert (=> b!4262620 (= res!1751972 (<= (- 1) (- (height!1871 (left!35026 lt!1510912)) (height!1871 (right!35356 lt!1510912)))))))

(declare-fun b!4262621 () Bool)

(declare-fun res!1751971 () Bool)

(assert (=> b!4262621 (=> (not res!1751971) (not e!2646907))))

(assert (=> b!4262621 (= res!1751971 (<= (- (height!1871 (left!35026 lt!1510912)) (height!1871 (right!35356 lt!1510912))) 1))))

(assert (= (and d!1255188 (not res!1751967)) b!4262620))

(assert (= (and b!4262620 res!1751972) b!4262621))

(assert (= (and b!4262621 res!1751971) b!4262616))

(assert (= (and b!4262616 res!1751968) b!4262617))

(assert (= (and b!4262617 res!1751970) b!4262618))

(assert (= (and b!4262618 res!1751969) b!4262619))

(declare-fun m!4851357 () Bool)

(assert (=> b!4262616 m!4851357))

(declare-fun m!4851359 () Bool)

(assert (=> b!4262619 m!4851359))

(declare-fun m!4851361 () Bool)

(assert (=> b!4262618 m!4851361))

(declare-fun m!4851363 () Bool)

(assert (=> b!4262621 m!4851363))

(declare-fun m!4851365 () Bool)

(assert (=> b!4262621 m!4851365))

(assert (=> b!4262620 m!4851363))

(assert (=> b!4262620 m!4851365))

(declare-fun m!4851367 () Bool)

(assert (=> b!4262617 m!4851367))

(assert (=> b!4262287 d!1255188))

(declare-fun b!4262626 () Bool)

(declare-fun e!2646912 () Conc!14249)

(declare-fun e!2646910 () Conc!14249)

(assert (=> b!4262626 (= e!2646912 e!2646910)))

(declare-fun c!724183 () Bool)

(assert (=> b!4262626 (= c!724183 ((_ is Leaf!22018) (right!35355 (right!35355 t!4386))))))

(declare-fun b!4262627 () Bool)

(declare-fun e!2646911 () Bool)

(declare-fun lt!1510978 () Conc!14249)

(assert (=> b!4262627 (= e!2646911 (isBalanced!3808 lt!1510978))))

(declare-fun d!1255192 () Bool)

(assert (=> d!1255192 e!2646911))

(declare-fun res!1751973 () Bool)

(assert (=> d!1255192 (=> (not res!1751973) (not e!2646911))))

(assert (=> d!1255192 (= res!1751973 (= (list!17067 lt!1510978) (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)))))

(assert (=> d!1255192 (= lt!1510978 e!2646912)))

(declare-fun c!724184 () Bool)

(assert (=> d!1255192 (= c!724184 ((_ is Empty!14248) (right!35355 (right!35355 t!4386))))))

(assert (=> d!1255192 (isBalanced!3807 (right!35355 (right!35355 t!4386)))))

(assert (=> d!1255192 (= (map!9675 (right!35355 (right!35355 t!4386)) f!428) lt!1510978)))

(declare-fun b!4262628 () Bool)

(assert (=> b!4262628 (= e!2646912 Empty!14249)))

(declare-fun b!4262629 () Bool)

(declare-fun lt!1510977 () Unit!66139)

(assert (=> b!4262629 (= lt!1510977 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) f!428))))

(assert (=> b!4262629 (= e!2646910 (Node!14249 (map!9675 (left!35025 (right!35355 (right!35355 t!4386))) f!428) (map!9675 (right!35355 (right!35355 (right!35355 t!4386))) f!428) (csize!28726 (right!35355 (right!35355 t!4386))) (cheight!14459 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4262630 () Bool)

(assert (=> b!4262630 (= e!2646910 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (right!35355 t!4386))) f!428) (csize!28727 (right!35355 (right!35355 t!4386)))))))

(assert (= (and d!1255192 c!724184) b!4262628))

(assert (= (and d!1255192 (not c!724184)) b!4262626))

(assert (= (and b!4262626 c!724183) b!4262630))

(assert (= (and b!4262626 (not c!724183)) b!4262629))

(assert (= (and d!1255192 res!1751973) b!4262627))

(declare-fun m!4851377 () Bool)

(assert (=> b!4262627 m!4851377))

(declare-fun m!4851379 () Bool)

(assert (=> d!1255192 m!4851379))

(assert (=> d!1255192 m!4850875))

(assert (=> d!1255192 m!4850875))

(declare-fun m!4851381 () Bool)

(assert (=> d!1255192 m!4851381))

(assert (=> d!1255192 m!4851061))

(declare-fun m!4851383 () Bool)

(assert (=> b!4262629 m!4851383))

(assert (=> b!4262629 m!4851101))

(assert (=> b!4262629 m!4851099))

(assert (=> b!4262629 m!4851099))

(assert (=> b!4262629 m!4851101))

(declare-fun m!4851385 () Bool)

(assert (=> b!4262629 m!4851385))

(declare-fun m!4851387 () Bool)

(assert (=> b!4262629 m!4851387))

(declare-fun m!4851389 () Bool)

(assert (=> b!4262630 m!4851389))

(assert (=> b!4262320 d!1255192))

(assert (=> b!4262320 d!1255078))

(assert (=> b!4262320 d!1255080))

(declare-fun b!4262631 () Bool)

(declare-fun e!2646915 () Conc!14249)

(declare-fun e!2646913 () Conc!14249)

(assert (=> b!4262631 (= e!2646915 e!2646913)))

(declare-fun c!724185 () Bool)

(assert (=> b!4262631 (= c!724185 ((_ is Leaf!22018) (left!35025 (right!35355 t!4386))))))

(declare-fun b!4262632 () Bool)

(declare-fun e!2646914 () Bool)

(declare-fun lt!1510980 () Conc!14249)

(assert (=> b!4262632 (= e!2646914 (isBalanced!3808 lt!1510980))))

(declare-fun d!1255196 () Bool)

(assert (=> d!1255196 e!2646914))

(declare-fun res!1751974 () Bool)

(assert (=> d!1255196 (=> (not res!1751974) (not e!2646914))))

(assert (=> d!1255196 (= res!1751974 (= (list!17067 lt!1510980) (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)))))

(assert (=> d!1255196 (= lt!1510980 e!2646915)))

(declare-fun c!724186 () Bool)

(assert (=> d!1255196 (= c!724186 ((_ is Empty!14248) (left!35025 (right!35355 t!4386))))))

(assert (=> d!1255196 (isBalanced!3807 (left!35025 (right!35355 t!4386)))))

(assert (=> d!1255196 (= (map!9675 (left!35025 (right!35355 t!4386)) f!428) lt!1510980)))

(declare-fun b!4262633 () Bool)

(assert (=> b!4262633 (= e!2646915 Empty!14249)))

(declare-fun b!4262634 () Bool)

(declare-fun lt!1510979 () Unit!66139)

(assert (=> b!4262634 (= lt!1510979 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) f!428))))

(assert (=> b!4262634 (= e!2646913 (Node!14249 (map!9675 (left!35025 (left!35025 (right!35355 t!4386))) f!428) (map!9675 (right!35355 (left!35025 (right!35355 t!4386))) f!428) (csize!28726 (left!35025 (right!35355 t!4386))) (cheight!14459 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4262635 () Bool)

(assert (=> b!4262635 (= e!2646913 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (right!35355 t!4386))) f!428) (csize!28727 (left!35025 (right!35355 t!4386)))))))

(assert (= (and d!1255196 c!724186) b!4262633))

(assert (= (and d!1255196 (not c!724186)) b!4262631))

(assert (= (and b!4262631 c!724185) b!4262635))

(assert (= (and b!4262631 (not c!724185)) b!4262634))

(assert (= (and d!1255196 res!1751974) b!4262632))

(declare-fun m!4851391 () Bool)

(assert (=> b!4262632 m!4851391))

(declare-fun m!4851393 () Bool)

(assert (=> d!1255196 m!4851393))

(assert (=> d!1255196 m!4850877))

(assert (=> d!1255196 m!4850877))

(declare-fun m!4851395 () Bool)

(assert (=> d!1255196 m!4851395))

(assert (=> d!1255196 m!4851059))

(declare-fun m!4851397 () Bool)

(assert (=> b!4262634 m!4851397))

(assert (=> b!4262634 m!4851093))

(assert (=> b!4262634 m!4851091))

(assert (=> b!4262634 m!4851091))

(assert (=> b!4262634 m!4851093))

(declare-fun m!4851399 () Bool)

(assert (=> b!4262634 m!4851399))

(declare-fun m!4851401 () Bool)

(assert (=> b!4262634 m!4851401))

(declare-fun m!4851403 () Bool)

(assert (=> b!4262635 m!4851403))

(assert (=> b!4262320 d!1255196))

(declare-fun d!1255198 () Bool)

(assert (=> d!1255198 (= (map!9674 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386)))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)))))

(declare-fun lt!1510983 () Unit!66139)

(assert (=> d!1255198 (= lt!1510983 (choose!25988 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))) f!428))))

(assert (=> d!1255198 (= (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))) f!428) lt!1510983)))

(declare-fun bs!599113 () Bool)

(assert (= bs!599113 d!1255198))

(assert (=> bs!599113 m!4850877))

(assert (=> bs!599113 m!4850875))

(declare-fun m!4851405 () Bool)

(assert (=> bs!599113 m!4851405))

(assert (=> bs!599113 m!4850875))

(assert (=> bs!599113 m!4851381))

(assert (=> bs!599113 m!4851013))

(declare-fun m!4851407 () Bool)

(assert (=> bs!599113 m!4851407))

(assert (=> bs!599113 m!4851395))

(assert (=> bs!599113 m!4851381))

(declare-fun m!4851409 () Bool)

(assert (=> bs!599113 m!4851409))

(assert (=> bs!599113 m!4850877))

(assert (=> bs!599113 m!4850875))

(assert (=> bs!599113 m!4851013))

(assert (=> bs!599113 m!4850877))

(assert (=> bs!599113 m!4851395))

(assert (=> b!4262320 d!1255198))

(declare-fun b!4262643 () Bool)

(declare-fun e!2646919 () Bool)

(declare-fun lt!1510984 () List!47366)

(assert (=> b!4262643 (= e!2646919 (or (not (= (list!17068 (right!35355 (left!35025 t!4386))) Nil!47242)) (= lt!1510984 (list!17068 (left!35025 (left!35025 t!4386))))))))

(declare-fun b!4262642 () Bool)

(declare-fun res!1751976 () Bool)

(assert (=> b!4262642 (=> (not res!1751976) (not e!2646919))))

(assert (=> b!4262642 (= res!1751976 (= (size!34606 lt!1510984) (+ (size!34606 (list!17068 (left!35025 (left!35025 t!4386)))) (size!34606 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(declare-fun d!1255200 () Bool)

(assert (=> d!1255200 e!2646919))

(declare-fun res!1751975 () Bool)

(assert (=> d!1255200 (=> (not res!1751975) (not e!2646919))))

(assert (=> d!1255200 (= res!1751975 (= (content!7448 lt!1510984) ((_ map or) (content!7448 (list!17068 (left!35025 (left!35025 t!4386)))) (content!7448 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(declare-fun e!2646918 () List!47366)

(assert (=> d!1255200 (= lt!1510984 e!2646918)))

(declare-fun c!724189 () Bool)

(assert (=> d!1255200 (= c!724189 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255200 (= (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386)))) lt!1510984)))

(declare-fun b!4262640 () Bool)

(assert (=> b!4262640 (= e!2646918 (list!17068 (right!35355 (left!35025 t!4386))))))

(declare-fun b!4262641 () Bool)

(assert (=> b!4262641 (= e!2646918 (Cons!47242 (h!52662 (list!17068 (left!35025 (left!35025 t!4386)))) (++!12035 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 t!4386))))))))

(assert (= (and d!1255200 c!724189) b!4262640))

(assert (= (and d!1255200 (not c!724189)) b!4262641))

(assert (= (and d!1255200 res!1751975) b!4262642))

(assert (= (and b!4262642 res!1751976) b!4262643))

(declare-fun m!4851411 () Bool)

(assert (=> b!4262642 m!4851411))

(assert (=> b!4262642 m!4850829))

(declare-fun m!4851413 () Bool)

(assert (=> b!4262642 m!4851413))

(assert (=> b!4262642 m!4850827))

(declare-fun m!4851415 () Bool)

(assert (=> b!4262642 m!4851415))

(declare-fun m!4851417 () Bool)

(assert (=> d!1255200 m!4851417))

(assert (=> d!1255200 m!4850829))

(declare-fun m!4851419 () Bool)

(assert (=> d!1255200 m!4851419))

(assert (=> d!1255200 m!4850827))

(declare-fun m!4851421 () Bool)

(assert (=> d!1255200 m!4851421))

(assert (=> b!4262641 m!4850827))

(declare-fun m!4851423 () Bool)

(assert (=> b!4262641 m!4851423))

(assert (=> b!4262345 d!1255200))

(declare-fun b!4262649 () Bool)

(declare-fun e!2646921 () List!47366)

(assert (=> b!4262649 (= e!2646921 (++!12035 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386))))))))

(declare-fun b!4262645 () Bool)

(declare-fun e!2646920 () List!47366)

(assert (=> b!4262645 (= e!2646920 e!2646921)))

(declare-fun c!724191 () Bool)

(assert (=> b!4262645 (= c!724191 ((_ is Leaf!22018) (left!35025 (left!35025 t!4386))))))

(declare-fun b!4262644 () Bool)

(assert (=> b!4262644 (= e!2646920 Nil!47242)))

(declare-fun b!4262647 () Bool)

(assert (=> b!4262647 (= e!2646921 (list!17072 (xs!17554 (left!35025 (left!35025 t!4386)))))))

(declare-fun d!1255202 () Bool)

(declare-fun c!724190 () Bool)

(assert (=> d!1255202 (= c!724190 ((_ is Empty!14248) (left!35025 (left!35025 t!4386))))))

(assert (=> d!1255202 (= (list!17068 (left!35025 (left!35025 t!4386))) e!2646920)))

(assert (= (and d!1255202 c!724190) b!4262644))

(assert (= (and d!1255202 (not c!724190)) b!4262645))

(assert (= (and b!4262645 c!724191) b!4262647))

(assert (= (and b!4262645 (not c!724191)) b!4262649))

(declare-fun m!4851425 () Bool)

(assert (=> b!4262649 m!4851425))

(declare-fun m!4851427 () Bool)

(assert (=> b!4262649 m!4851427))

(assert (=> b!4262649 m!4851425))

(assert (=> b!4262649 m!4851427))

(declare-fun m!4851431 () Bool)

(assert (=> b!4262649 m!4851431))

(declare-fun m!4851433 () Bool)

(assert (=> b!4262647 m!4851433))

(assert (=> b!4262345 d!1255202))

(declare-fun b!4262653 () Bool)

(declare-fun e!2646924 () List!47366)

(assert (=> b!4262653 (= e!2646924 (++!12035 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386))))))))

(declare-fun b!4262651 () Bool)

(declare-fun e!2646923 () List!47366)

(assert (=> b!4262651 (= e!2646923 e!2646924)))

(declare-fun c!724194 () Bool)

(assert (=> b!4262651 (= c!724194 ((_ is Leaf!22018) (right!35355 (left!35025 t!4386))))))

(declare-fun b!4262650 () Bool)

(assert (=> b!4262650 (= e!2646923 Nil!47242)))

(declare-fun b!4262652 () Bool)

(assert (=> b!4262652 (= e!2646924 (list!17072 (xs!17554 (right!35355 (left!35025 t!4386)))))))

(declare-fun d!1255206 () Bool)

(declare-fun c!724193 () Bool)

(assert (=> d!1255206 (= c!724193 ((_ is Empty!14248) (right!35355 (left!35025 t!4386))))))

(assert (=> d!1255206 (= (list!17068 (right!35355 (left!35025 t!4386))) e!2646923)))

(assert (= (and d!1255206 c!724193) b!4262650))

(assert (= (and d!1255206 (not c!724193)) b!4262651))

(assert (= (and b!4262651 c!724194) b!4262652))

(assert (= (and b!4262651 (not c!724194)) b!4262653))

(declare-fun m!4851435 () Bool)

(assert (=> b!4262653 m!4851435))

(declare-fun m!4851437 () Bool)

(assert (=> b!4262653 m!4851437))

(assert (=> b!4262653 m!4851435))

(assert (=> b!4262653 m!4851437))

(declare-fun m!4851439 () Bool)

(assert (=> b!4262653 m!4851439))

(declare-fun m!4851441 () Bool)

(assert (=> b!4262652 m!4851441))

(assert (=> b!4262345 d!1255206))

(declare-fun b!4262654 () Bool)

(declare-fun res!1751978 () Bool)

(declare-fun e!2646926 () Bool)

(assert (=> b!4262654 (=> (not res!1751978) (not e!2646926))))

(assert (=> b!4262654 (= res!1751978 (isBalanced!3808 (left!35026 (left!35026 lt!1510890))))))

(declare-fun b!4262655 () Bool)

(declare-fun res!1751980 () Bool)

(assert (=> b!4262655 (=> (not res!1751980) (not e!2646926))))

(assert (=> b!4262655 (= res!1751980 (isBalanced!3808 (right!35356 (left!35026 lt!1510890))))))

(declare-fun d!1255208 () Bool)

(declare-fun res!1751977 () Bool)

(declare-fun e!2646925 () Bool)

(assert (=> d!1255208 (=> res!1751977 e!2646925)))

(assert (=> d!1255208 (= res!1751977 (not ((_ is Node!14249) (left!35026 lt!1510890))))))

(assert (=> d!1255208 (= (isBalanced!3808 (left!35026 lt!1510890)) e!2646925)))

(declare-fun b!4262656 () Bool)

(declare-fun res!1751979 () Bool)

(assert (=> b!4262656 (=> (not res!1751979) (not e!2646926))))

(assert (=> b!4262656 (= res!1751979 (not (isEmpty!27986 (left!35026 (left!35026 lt!1510890)))))))

(declare-fun b!4262657 () Bool)

(assert (=> b!4262657 (= e!2646926 (not (isEmpty!27986 (right!35356 (left!35026 lt!1510890)))))))

(declare-fun b!4262658 () Bool)

(assert (=> b!4262658 (= e!2646925 e!2646926)))

(declare-fun res!1751982 () Bool)

(assert (=> b!4262658 (=> (not res!1751982) (not e!2646926))))

(assert (=> b!4262658 (= res!1751982 (<= (- 1) (- (height!1871 (left!35026 (left!35026 lt!1510890))) (height!1871 (right!35356 (left!35026 lt!1510890))))))))

(declare-fun b!4262659 () Bool)

(declare-fun res!1751981 () Bool)

(assert (=> b!4262659 (=> (not res!1751981) (not e!2646926))))

(assert (=> b!4262659 (= res!1751981 (<= (- (height!1871 (left!35026 (left!35026 lt!1510890))) (height!1871 (right!35356 (left!35026 lt!1510890)))) 1))))

(assert (= (and d!1255208 (not res!1751977)) b!4262658))

(assert (= (and b!4262658 res!1751982) b!4262659))

(assert (= (and b!4262659 res!1751981) b!4262654))

(assert (= (and b!4262654 res!1751978) b!4262655))

(assert (= (and b!4262655 res!1751980) b!4262656))

(assert (= (and b!4262656 res!1751979) b!4262657))

(declare-fun m!4851443 () Bool)

(assert (=> b!4262654 m!4851443))

(declare-fun m!4851445 () Bool)

(assert (=> b!4262657 m!4851445))

(declare-fun m!4851447 () Bool)

(assert (=> b!4262656 m!4851447))

(declare-fun m!4851449 () Bool)

(assert (=> b!4262659 m!4851449))

(declare-fun m!4851451 () Bool)

(assert (=> b!4262659 m!4851451))

(assert (=> b!4262658 m!4851449))

(assert (=> b!4262658 m!4851451))

(declare-fun m!4851453 () Bool)

(assert (=> b!4262655 m!4851453))

(assert (=> b!4262169 d!1255208))

(declare-fun d!1255210 () Bool)

(declare-fun lt!1510986 () Int)

(assert (=> d!1255210 (>= lt!1510986 0)))

(declare-fun e!2646927 () Int)

(assert (=> d!1255210 (= lt!1510986 e!2646927)))

(declare-fun c!724195 () Bool)

(assert (=> d!1255210 (= c!724195 ((_ is Nil!47242) (innerList!14308 (xs!17554 t!4386))))))

(assert (=> d!1255210 (= (size!34606 (innerList!14308 (xs!17554 t!4386))) lt!1510986)))

(declare-fun b!4262660 () Bool)

(assert (=> b!4262660 (= e!2646927 0)))

(declare-fun b!4262661 () Bool)

(assert (=> b!4262661 (= e!2646927 (+ 1 (size!34606 (t!353271 (innerList!14308 (xs!17554 t!4386))))))))

(assert (= (and d!1255210 c!724195) b!4262660))

(assert (= (and d!1255210 (not c!724195)) b!4262661))

(declare-fun m!4851455 () Bool)

(assert (=> b!4262661 m!4851455))

(assert (=> d!1255056 d!1255210))

(declare-fun b!4262666 () Bool)

(declare-fun e!2646932 () Conc!14249)

(declare-fun e!2646930 () Conc!14249)

(assert (=> b!4262666 (= e!2646932 e!2646930)))

(declare-fun c!724198 () Bool)

(assert (=> b!4262666 (= c!724198 ((_ is Leaf!22018) (right!35355 (left!35025 t!4386))))))

(declare-fun b!4262667 () Bool)

(declare-fun e!2646931 () Bool)

(declare-fun lt!1510990 () Conc!14249)

(assert (=> b!4262667 (= e!2646931 (isBalanced!3808 lt!1510990))))

(declare-fun d!1255212 () Bool)

(assert (=> d!1255212 e!2646931))

(declare-fun res!1751983 () Bool)

(assert (=> d!1255212 (=> (not res!1751983) (not e!2646931))))

(assert (=> d!1255212 (= res!1751983 (= (list!17067 lt!1510990) (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)))))

(assert (=> d!1255212 (= lt!1510990 e!2646932)))

(declare-fun c!724199 () Bool)

(assert (=> d!1255212 (= c!724199 ((_ is Empty!14248) (right!35355 (left!35025 t!4386))))))

(assert (=> d!1255212 (isBalanced!3807 (right!35355 (left!35025 t!4386)))))

(assert (=> d!1255212 (= (map!9675 (right!35355 (left!35025 t!4386)) f!428) lt!1510990)))

(declare-fun b!4262668 () Bool)

(assert (=> b!4262668 (= e!2646932 Empty!14249)))

(declare-fun b!4262669 () Bool)

(declare-fun lt!1510989 () Unit!66139)

(assert (=> b!4262669 (= lt!1510989 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) f!428))))

(assert (=> b!4262669 (= e!2646930 (Node!14249 (map!9675 (left!35025 (right!35355 (left!35025 t!4386))) f!428) (map!9675 (right!35355 (right!35355 (left!35025 t!4386))) f!428) (csize!28726 (right!35355 (left!35025 t!4386))) (cheight!14459 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4262670 () Bool)

(assert (=> b!4262670 (= e!2646930 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (left!35025 t!4386))) f!428) (csize!28727 (right!35355 (left!35025 t!4386)))))))

(assert (= (and d!1255212 c!724199) b!4262668))

(assert (= (and d!1255212 (not c!724199)) b!4262666))

(assert (= (and b!4262666 c!724198) b!4262670))

(assert (= (and b!4262666 (not c!724198)) b!4262669))

(assert (= (and d!1255212 res!1751983) b!4262667))

(declare-fun m!4851457 () Bool)

(assert (=> b!4262667 m!4851457))

(declare-fun m!4851459 () Bool)

(assert (=> d!1255212 m!4851459))

(assert (=> d!1255212 m!4850827))

(assert (=> d!1255212 m!4850827))

(declare-fun m!4851461 () Bool)

(assert (=> d!1255212 m!4851461))

(assert (=> d!1255212 m!4851159))

(declare-fun m!4851463 () Bool)

(assert (=> b!4262669 m!4851463))

(assert (=> b!4262669 m!4851437))

(assert (=> b!4262669 m!4851435))

(assert (=> b!4262669 m!4851435))

(assert (=> b!4262669 m!4851437))

(declare-fun m!4851465 () Bool)

(assert (=> b!4262669 m!4851465))

(declare-fun m!4851467 () Bool)

(assert (=> b!4262669 m!4851467))

(declare-fun m!4851469 () Bool)

(assert (=> b!4262670 m!4851469))

(assert (=> b!4262289 d!1255212))

(assert (=> b!4262289 d!1255202))

(declare-fun b!4262671 () Bool)

(declare-fun e!2646935 () Conc!14249)

(declare-fun e!2646933 () Conc!14249)

(assert (=> b!4262671 (= e!2646935 e!2646933)))

(declare-fun c!724200 () Bool)

(assert (=> b!4262671 (= c!724200 ((_ is Leaf!22018) (left!35025 (left!35025 t!4386))))))

(declare-fun b!4262672 () Bool)

(declare-fun e!2646934 () Bool)

(declare-fun lt!1510992 () Conc!14249)

(assert (=> b!4262672 (= e!2646934 (isBalanced!3808 lt!1510992))))

(declare-fun d!1255214 () Bool)

(assert (=> d!1255214 e!2646934))

(declare-fun res!1751984 () Bool)

(assert (=> d!1255214 (=> (not res!1751984) (not e!2646934))))

(assert (=> d!1255214 (= res!1751984 (= (list!17067 lt!1510992) (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)))))

(assert (=> d!1255214 (= lt!1510992 e!2646935)))

(declare-fun c!724201 () Bool)

(assert (=> d!1255214 (= c!724201 ((_ is Empty!14248) (left!35025 (left!35025 t!4386))))))

(assert (=> d!1255214 (isBalanced!3807 (left!35025 (left!35025 t!4386)))))

(assert (=> d!1255214 (= (map!9675 (left!35025 (left!35025 t!4386)) f!428) lt!1510992)))

(declare-fun b!4262673 () Bool)

(assert (=> b!4262673 (= e!2646935 Empty!14249)))

(declare-fun b!4262674 () Bool)

(declare-fun lt!1510991 () Unit!66139)

(assert (=> b!4262674 (= lt!1510991 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) f!428))))

(assert (=> b!4262674 (= e!2646933 (Node!14249 (map!9675 (left!35025 (left!35025 (left!35025 t!4386))) f!428) (map!9675 (right!35355 (left!35025 (left!35025 t!4386))) f!428) (csize!28726 (left!35025 (left!35025 t!4386))) (cheight!14459 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4262675 () Bool)

(assert (=> b!4262675 (= e!2646933 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (left!35025 t!4386))) f!428) (csize!28727 (left!35025 (left!35025 t!4386)))))))

(assert (= (and d!1255214 c!724201) b!4262673))

(assert (= (and d!1255214 (not c!724201)) b!4262671))

(assert (= (and b!4262671 c!724200) b!4262675))

(assert (= (and b!4262671 (not c!724200)) b!4262674))

(assert (= (and d!1255214 res!1751984) b!4262672))

(declare-fun m!4851471 () Bool)

(assert (=> b!4262672 m!4851471))

(declare-fun m!4851473 () Bool)

(assert (=> d!1255214 m!4851473))

(assert (=> d!1255214 m!4850829))

(assert (=> d!1255214 m!4850829))

(declare-fun m!4851475 () Bool)

(assert (=> d!1255214 m!4851475))

(assert (=> d!1255214 m!4851157))

(declare-fun m!4851477 () Bool)

(assert (=> b!4262674 m!4851477))

(assert (=> b!4262674 m!4851427))

(assert (=> b!4262674 m!4851425))

(assert (=> b!4262674 m!4851425))

(assert (=> b!4262674 m!4851427))

(declare-fun m!4851479 () Bool)

(assert (=> b!4262674 m!4851479))

(declare-fun m!4851481 () Bool)

(assert (=> b!4262674 m!4851481))

(declare-fun m!4851483 () Bool)

(assert (=> b!4262675 m!4851483))

(assert (=> b!4262289 d!1255214))

(declare-fun d!1255216 () Bool)

(assert (=> d!1255216 (= (map!9674 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386)))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)))))

(declare-fun lt!1510994 () Unit!66139)

(assert (=> d!1255216 (= lt!1510994 (choose!25988 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))) f!428))))

(assert (=> d!1255216 (= (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))) f!428) lt!1510994)))

(declare-fun bs!599114 () Bool)

(assert (= bs!599114 d!1255216))

(assert (=> bs!599114 m!4850829))

(assert (=> bs!599114 m!4850827))

(declare-fun m!4851487 () Bool)

(assert (=> bs!599114 m!4851487))

(assert (=> bs!599114 m!4850827))

(assert (=> bs!599114 m!4851461))

(assert (=> bs!599114 m!4850889))

(declare-fun m!4851489 () Bool)

(assert (=> bs!599114 m!4851489))

(assert (=> bs!599114 m!4851475))

(assert (=> bs!599114 m!4851461))

(declare-fun m!4851491 () Bool)

(assert (=> bs!599114 m!4851491))

(assert (=> bs!599114 m!4850829))

(assert (=> bs!599114 m!4850827))

(assert (=> bs!599114 m!4850889))

(assert (=> bs!599114 m!4850829))

(assert (=> bs!599114 m!4851475))

(assert (=> b!4262289 d!1255216))

(assert (=> b!4262289 d!1255206))

(declare-fun d!1255220 () Bool)

(assert (=> d!1255220 (= ($colon$colon!633 (map!9674 (t!353271 (++!12035 lt!1510891 lt!1510889)) f!428) (dynLambda!20221 f!428 (h!52662 (++!12035 lt!1510891 lt!1510889)))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (++!12035 lt!1510891 lt!1510889))) (map!9674 (t!353271 (++!12035 lt!1510891 lt!1510889)) f!428)))))

(assert (=> b!4262351 d!1255220))

(declare-fun d!1255222 () Bool)

(declare-fun lt!1510995 () List!47367)

(assert (=> d!1255222 (= (size!34605 lt!1510995) (size!34606 (t!353271 (++!12035 lt!1510891 lt!1510889))))))

(declare-fun e!2646939 () List!47367)

(assert (=> d!1255222 (= lt!1510995 e!2646939)))

(declare-fun c!724203 () Bool)

(assert (=> d!1255222 (= c!724203 ((_ is Nil!47242) (t!353271 (++!12035 lt!1510891 lt!1510889))))))

(assert (=> d!1255222 (= (map!9674 (t!353271 (++!12035 lt!1510891 lt!1510889)) f!428) lt!1510995)))

(declare-fun b!4262684 () Bool)

(assert (=> b!4262684 (= e!2646939 Nil!47243)))

(declare-fun b!4262685 () Bool)

(assert (=> b!4262685 (= e!2646939 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (++!12035 lt!1510891 lt!1510889))))))))

(assert (= (and d!1255222 c!724203) b!4262684))

(assert (= (and d!1255222 (not c!724203)) b!4262685))

(declare-fun b_lambda!125861 () Bool)

(assert (=> (not b_lambda!125861) (not b!4262685)))

(declare-fun t!353318 () Bool)

(declare-fun tb!256973 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353318) tb!256973))

(declare-fun result!313550 () Bool)

(assert (=> tb!256973 (= result!313550 tp_is_empty!22881)))

(assert (=> b!4262685 t!353318))

(declare-fun b_and!337783 () Bool)

(assert (= b_and!337779 (and (=> t!353318 result!313550) b_and!337783)))

(declare-fun m!4851493 () Bool)

(assert (=> d!1255222 m!4851493))

(assert (=> d!1255222 m!4851217))

(declare-fun m!4851495 () Bool)

(assert (=> b!4262685 m!4851495))

(declare-fun m!4851497 () Bool)

(assert (=> b!4262685 m!4851497))

(assert (=> b!4262685 m!4851495))

(assert (=> b!4262685 m!4851497))

(declare-fun m!4851499 () Bool)

(assert (=> b!4262685 m!4851499))

(assert (=> b!4262351 d!1255222))

(declare-fun d!1255224 () Bool)

(declare-fun lt!1510996 () Int)

(assert (=> d!1255224 (>= lt!1510996 0)))

(declare-fun e!2646940 () Int)

(assert (=> d!1255224 (= lt!1510996 e!2646940)))

(declare-fun c!724204 () Bool)

(assert (=> d!1255224 (= c!724204 ((_ is Nil!47243) lt!1510915))))

(assert (=> d!1255224 (= (size!34605 lt!1510915) lt!1510996)))

(declare-fun b!4262686 () Bool)

(assert (=> b!4262686 (= e!2646940 0)))

(declare-fun b!4262687 () Bool)

(assert (=> b!4262687 (= e!2646940 (+ 1 (size!34605 (t!353272 lt!1510915))))))

(assert (= (and d!1255224 c!724204) b!4262686))

(assert (= (and d!1255224 (not c!724204)) b!4262687))

(declare-fun m!4851505 () Bool)

(assert (=> b!4262687 m!4851505))

(assert (=> d!1255018 d!1255224))

(declare-fun d!1255226 () Bool)

(declare-fun lt!1510997 () Int)

(assert (=> d!1255226 (>= lt!1510997 0)))

(declare-fun e!2646941 () Int)

(assert (=> d!1255226 (= lt!1510997 e!2646941)))

(declare-fun c!724205 () Bool)

(assert (=> d!1255226 (= c!724205 ((_ is Nil!47242) (list!17068 t!4386)))))

(assert (=> d!1255226 (= (size!34606 (list!17068 t!4386)) lt!1510997)))

(declare-fun b!4262688 () Bool)

(assert (=> b!4262688 (= e!2646941 0)))

(declare-fun b!4262689 () Bool)

(assert (=> b!4262689 (= e!2646941 (+ 1 (size!34606 (t!353271 (list!17068 t!4386)))))))

(assert (= (and d!1255226 c!724205) b!4262688))

(assert (= (and d!1255226 (not c!724205)) b!4262689))

(assert (=> b!4262689 m!4851113))

(assert (=> d!1255018 d!1255226))

(declare-fun d!1255228 () Bool)

(declare-fun lt!1510998 () Bool)

(assert (=> d!1255228 (= lt!1510998 (isEmpty!27992 (list!17068 (right!35355 t!4386))))))

(assert (=> d!1255228 (= lt!1510998 (= (size!34608 (right!35355 t!4386)) 0))))

(assert (=> d!1255228 (= (isEmpty!27987 (right!35355 t!4386)) lt!1510998)))

(declare-fun bs!599115 () Bool)

(assert (= bs!599115 d!1255228))

(assert (=> bs!599115 m!4850687))

(assert (=> bs!599115 m!4850687))

(declare-fun m!4851515 () Bool)

(assert (=> bs!599115 m!4851515))

(assert (=> bs!599115 m!4851211))

(assert (=> b!4262204 d!1255228))

(declare-fun d!1255232 () Bool)

(declare-fun c!724208 () Bool)

(assert (=> d!1255232 (= c!724208 ((_ is Nil!47243) lt!1510934))))

(declare-fun e!2646946 () (InoxSet B!2825))

(assert (=> d!1255232 (= (content!7447 lt!1510934) e!2646946)))

(declare-fun b!4262700 () Bool)

(assert (=> b!4262700 (= e!2646946 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4262701 () Bool)

(assert (=> b!4262701 (= e!2646946 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 lt!1510934) true) (content!7447 (t!353272 lt!1510934))))))

(assert (= (and d!1255232 c!724208) b!4262700))

(assert (= (and d!1255232 (not c!724208)) b!4262701))

(declare-fun m!4851529 () Bool)

(assert (=> b!4262701 m!4851529))

(declare-fun m!4851531 () Bool)

(assert (=> b!4262701 m!4851531))

(assert (=> d!1255044 d!1255232))

(declare-fun d!1255238 () Bool)

(declare-fun c!724210 () Bool)

(assert (=> d!1255238 (= c!724210 ((_ is Nil!47243) (map!9674 lt!1510891 f!428)))))

(declare-fun e!2646948 () (InoxSet B!2825))

(assert (=> d!1255238 (= (content!7447 (map!9674 lt!1510891 f!428)) e!2646948)))

(declare-fun b!4262704 () Bool)

(assert (=> b!4262704 (= e!2646948 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4262705 () Bool)

(assert (=> b!4262705 (= e!2646948 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (map!9674 lt!1510891 f!428)) true) (content!7447 (t!353272 (map!9674 lt!1510891 f!428)))))))

(assert (= (and d!1255238 c!724210) b!4262704))

(assert (= (and d!1255238 (not c!724210)) b!4262705))

(declare-fun m!4851533 () Bool)

(assert (=> b!4262705 m!4851533))

(assert (=> b!4262705 m!4851267))

(assert (=> d!1255044 d!1255238))

(declare-fun d!1255240 () Bool)

(declare-fun c!724211 () Bool)

(assert (=> d!1255240 (= c!724211 ((_ is Nil!47243) (map!9674 lt!1510889 f!428)))))

(declare-fun e!2646949 () (InoxSet B!2825))

(assert (=> d!1255240 (= (content!7447 (map!9674 lt!1510889 f!428)) e!2646949)))

(declare-fun b!4262706 () Bool)

(assert (=> b!4262706 (= e!2646949 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4262707 () Bool)

(assert (=> b!4262707 (= e!2646949 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (map!9674 lt!1510889 f!428)) true) (content!7447 (t!353272 (map!9674 lt!1510889 f!428)))))))

(assert (= (and d!1255240 c!724211) b!4262706))

(assert (= (and d!1255240 (not c!724211)) b!4262707))

(declare-fun m!4851535 () Bool)

(assert (=> b!4262707 m!4851535))

(declare-fun m!4851537 () Bool)

(assert (=> b!4262707 m!4851537))

(assert (=> d!1255044 d!1255240))

(declare-fun d!1255242 () Bool)

(declare-fun c!724212 () Bool)

(assert (=> d!1255242 (= c!724212 ((_ is Node!14248) (left!35025 (left!35025 t!4386))))))

(declare-fun e!2646950 () Bool)

(assert (=> d!1255242 (= (inv!62149 (left!35025 (left!35025 t!4386))) e!2646950)))

(declare-fun b!4262708 () Bool)

(assert (=> b!4262708 (= e!2646950 (inv!62153 (left!35025 (left!35025 t!4386))))))

(declare-fun b!4262709 () Bool)

(declare-fun e!2646951 () Bool)

(assert (=> b!4262709 (= e!2646950 e!2646951)))

(declare-fun res!1751997 () Bool)

(assert (=> b!4262709 (= res!1751997 (not ((_ is Leaf!22018) (left!35025 (left!35025 t!4386)))))))

(assert (=> b!4262709 (=> res!1751997 e!2646951)))

(declare-fun b!4262710 () Bool)

(assert (=> b!4262710 (= e!2646951 (inv!62154 (left!35025 (left!35025 t!4386))))))

(assert (= (and d!1255242 c!724212) b!4262708))

(assert (= (and d!1255242 (not c!724212)) b!4262709))

(assert (= (and b!4262709 (not res!1751997)) b!4262710))

(declare-fun m!4851539 () Bool)

(assert (=> b!4262708 m!4851539))

(declare-fun m!4851541 () Bool)

(assert (=> b!4262710 m!4851541))

(assert (=> b!4262446 d!1255242))

(declare-fun d!1255244 () Bool)

(declare-fun c!724213 () Bool)

(assert (=> d!1255244 (= c!724213 ((_ is Node!14248) (right!35355 (left!35025 t!4386))))))

(declare-fun e!2646952 () Bool)

(assert (=> d!1255244 (= (inv!62149 (right!35355 (left!35025 t!4386))) e!2646952)))

(declare-fun b!4262711 () Bool)

(assert (=> b!4262711 (= e!2646952 (inv!62153 (right!35355 (left!35025 t!4386))))))

(declare-fun b!4262712 () Bool)

(declare-fun e!2646953 () Bool)

(assert (=> b!4262712 (= e!2646952 e!2646953)))

(declare-fun res!1751998 () Bool)

(assert (=> b!4262712 (= res!1751998 (not ((_ is Leaf!22018) (right!35355 (left!35025 t!4386)))))))

(assert (=> b!4262712 (=> res!1751998 e!2646953)))

(declare-fun b!4262713 () Bool)

(assert (=> b!4262713 (= e!2646953 (inv!62154 (right!35355 (left!35025 t!4386))))))

(assert (= (and d!1255244 c!724213) b!4262711))

(assert (= (and d!1255244 (not c!724213)) b!4262712))

(assert (= (and b!4262712 (not res!1751998)) b!4262713))

(declare-fun m!4851543 () Bool)

(assert (=> b!4262711 m!4851543))

(declare-fun m!4851545 () Bool)

(assert (=> b!4262713 m!4851545))

(assert (=> b!4262446 d!1255244))

(assert (=> b!4262206 d!1255062))

(declare-fun d!1255246 () Bool)

(assert (=> d!1255246 (= ($colon$colon!633 (map!9674 (t!353271 lt!1510891) f!428) (dynLambda!20221 f!428 (h!52662 lt!1510891))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 lt!1510891)) (map!9674 (t!353271 lt!1510891) f!428)))))

(assert (=> b!4262349 d!1255246))

(declare-fun d!1255248 () Bool)

(declare-fun lt!1511000 () List!47367)

(assert (=> d!1255248 (= (size!34605 lt!1511000) (size!34606 (t!353271 lt!1510891)))))

(declare-fun e!2646954 () List!47367)

(assert (=> d!1255248 (= lt!1511000 e!2646954)))

(declare-fun c!724214 () Bool)

(assert (=> d!1255248 (= c!724214 ((_ is Nil!47242) (t!353271 lt!1510891)))))

(assert (=> d!1255248 (= (map!9674 (t!353271 lt!1510891) f!428) lt!1511000)))

(declare-fun b!4262714 () Bool)

(assert (=> b!4262714 (= e!2646954 Nil!47243)))

(declare-fun b!4262715 () Bool)

(assert (=> b!4262715 (= e!2646954 ($colon$colon!633 (map!9674 (t!353271 (t!353271 lt!1510891)) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510891)))))))

(assert (= (and d!1255248 c!724214) b!4262714))

(assert (= (and d!1255248 (not c!724214)) b!4262715))

(declare-fun b_lambda!125865 () Bool)

(assert (=> (not b_lambda!125865) (not b!4262715)))

(declare-fun t!353322 () Bool)

(declare-fun tb!256977 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353322) tb!256977))

(declare-fun result!313554 () Bool)

(assert (=> tb!256977 (= result!313554 tp_is_empty!22881)))

(assert (=> b!4262715 t!353322))

(declare-fun b_and!337787 () Bool)

(assert (= b_and!337783 (and (=> t!353322 result!313554) b_and!337787)))

(declare-fun m!4851555 () Bool)

(assert (=> d!1255248 m!4851555))

(assert (=> d!1255248 m!4851073))

(declare-fun m!4851557 () Bool)

(assert (=> b!4262715 m!4851557))

(declare-fun m!4851559 () Bool)

(assert (=> b!4262715 m!4851559))

(assert (=> b!4262715 m!4851557))

(assert (=> b!4262715 m!4851559))

(declare-fun m!4851563 () Bool)

(assert (=> b!4262715 m!4851563))

(assert (=> b!4262349 d!1255248))

(declare-fun d!1255252 () Bool)

(assert (=> d!1255252 (= (list!17070 (xs!17555 lt!1510890)) (innerList!14309 (xs!17555 lt!1510890)))))

(assert (=> b!4262250 d!1255252))

(declare-fun d!1255254 () Bool)

(declare-fun lt!1511001 () Int)

(assert (=> d!1255254 (>= lt!1511001 0)))

(declare-fun e!2646957 () Int)

(assert (=> d!1255254 (= lt!1511001 e!2646957)))

(declare-fun c!724215 () Bool)

(assert (=> d!1255254 (= c!724215 ((_ is Nil!47243) lt!1510938))))

(assert (=> d!1255254 (= (size!34605 lt!1510938) lt!1511001)))

(declare-fun b!4262722 () Bool)

(assert (=> b!4262722 (= e!2646957 0)))

(declare-fun b!4262723 () Bool)

(assert (=> b!4262723 (= e!2646957 (+ 1 (size!34605 (t!353272 lt!1510938))))))

(assert (= (and d!1255254 c!724215) b!4262722))

(assert (= (and d!1255254 (not c!724215)) b!4262723))

(declare-fun m!4851565 () Bool)

(assert (=> b!4262723 m!4851565))

(assert (=> d!1255054 d!1255254))

(assert (=> d!1255054 d!1255070))

(declare-fun tp!1307143 () Bool)

(declare-fun b!4262724 () Bool)

(declare-fun e!2646959 () Bool)

(declare-fun tp!1307144 () Bool)

(assert (=> b!4262724 (= e!2646959 (and (inv!62149 (left!35025 (left!35025 (right!35355 t!4386)))) tp!1307144 (inv!62149 (right!35355 (left!35025 (right!35355 t!4386)))) tp!1307143))))

(declare-fun b!4262726 () Bool)

(declare-fun e!2646958 () Bool)

(declare-fun tp!1307145 () Bool)

(assert (=> b!4262726 (= e!2646958 tp!1307145)))

(declare-fun b!4262725 () Bool)

(assert (=> b!4262725 (= e!2646959 (and (inv!62150 (xs!17554 (left!35025 (right!35355 t!4386)))) e!2646958))))

(assert (=> b!4262449 (= tp!1307138 (and (inv!62149 (left!35025 (right!35355 t!4386))) e!2646959))))

(assert (= (and b!4262449 ((_ is Node!14248) (left!35025 (right!35355 t!4386)))) b!4262724))

(assert (= b!4262725 b!4262726))

(assert (= (and b!4262449 ((_ is Leaf!22018) (left!35025 (right!35355 t!4386)))) b!4262725))

(declare-fun m!4851568 () Bool)

(assert (=> b!4262724 m!4851568))

(declare-fun m!4851571 () Bool)

(assert (=> b!4262724 m!4851571))

(declare-fun m!4851573 () Bool)

(assert (=> b!4262725 m!4851573))

(assert (=> b!4262449 m!4851033))

(declare-fun tp!1307146 () Bool)

(declare-fun tp!1307147 () Bool)

(declare-fun e!2646961 () Bool)

(declare-fun b!4262727 () Bool)

(assert (=> b!4262727 (= e!2646961 (and (inv!62149 (left!35025 (right!35355 (right!35355 t!4386)))) tp!1307147 (inv!62149 (right!35355 (right!35355 (right!35355 t!4386)))) tp!1307146))))

(declare-fun b!4262729 () Bool)

(declare-fun e!2646960 () Bool)

(declare-fun tp!1307148 () Bool)

(assert (=> b!4262729 (= e!2646960 tp!1307148)))

(declare-fun b!4262728 () Bool)

(assert (=> b!4262728 (= e!2646961 (and (inv!62150 (xs!17554 (right!35355 (right!35355 t!4386)))) e!2646960))))

(assert (=> b!4262449 (= tp!1307137 (and (inv!62149 (right!35355 (right!35355 t!4386))) e!2646961))))

(assert (= (and b!4262449 ((_ is Node!14248) (right!35355 (right!35355 t!4386)))) b!4262727))

(assert (= b!4262728 b!4262729))

(assert (= (and b!4262449 ((_ is Leaf!22018) (right!35355 (right!35355 t!4386)))) b!4262728))

(declare-fun m!4851585 () Bool)

(assert (=> b!4262727 m!4851585))

(declare-fun m!4851587 () Bool)

(assert (=> b!4262727 m!4851587))

(declare-fun m!4851589 () Bool)

(assert (=> b!4262728 m!4851589))

(assert (=> b!4262449 m!4851035))

(declare-fun b!4262730 () Bool)

(declare-fun e!2646962 () Bool)

(declare-fun tp!1307149 () Bool)

(assert (=> b!4262730 (= e!2646962 (and tp_is_empty!22885 tp!1307149))))

(assert (=> b!4262456 (= tp!1307142 e!2646962)))

(assert (= (and b!4262456 ((_ is Cons!47242) (t!353271 (innerList!14308 (xs!17554 t!4386))))) b!4262730))

(declare-fun b!4262737 () Bool)

(declare-fun e!2646965 () Bool)

(declare-fun tp!1307150 () Bool)

(assert (=> b!4262737 (= e!2646965 (and tp_is_empty!22885 tp!1307150))))

(assert (=> b!4262451 (= tp!1307139 e!2646965)))

(assert (= (and b!4262451 ((_ is Cons!47242) (innerList!14308 (xs!17554 (right!35355 t!4386))))) b!4262737))

(declare-fun e!2646967 () Bool)

(declare-fun b!4262738 () Bool)

(declare-fun tp!1307151 () Bool)

(declare-fun tp!1307152 () Bool)

(assert (=> b!4262738 (= e!2646967 (and (inv!62149 (left!35025 (left!35025 (left!35025 t!4386)))) tp!1307152 (inv!62149 (right!35355 (left!35025 (left!35025 t!4386)))) tp!1307151))))

(declare-fun b!4262740 () Bool)

(declare-fun e!2646966 () Bool)

(declare-fun tp!1307153 () Bool)

(assert (=> b!4262740 (= e!2646966 tp!1307153)))

(declare-fun b!4262739 () Bool)

(assert (=> b!4262739 (= e!2646967 (and (inv!62150 (xs!17554 (left!35025 (left!35025 t!4386)))) e!2646966))))

(assert (=> b!4262446 (= tp!1307135 (and (inv!62149 (left!35025 (left!35025 t!4386))) e!2646967))))

(assert (= (and b!4262446 ((_ is Node!14248) (left!35025 (left!35025 t!4386)))) b!4262738))

(assert (= b!4262739 b!4262740))

(assert (= (and b!4262446 ((_ is Leaf!22018) (left!35025 (left!35025 t!4386)))) b!4262739))

(declare-fun m!4851591 () Bool)

(assert (=> b!4262738 m!4851591))

(declare-fun m!4851593 () Bool)

(assert (=> b!4262738 m!4851593))

(declare-fun m!4851595 () Bool)

(assert (=> b!4262739 m!4851595))

(assert (=> b!4262446 m!4851027))

(declare-fun b!4262741 () Bool)

(declare-fun e!2646969 () Bool)

(declare-fun tp!1307155 () Bool)

(declare-fun tp!1307154 () Bool)

(assert (=> b!4262741 (= e!2646969 (and (inv!62149 (left!35025 (right!35355 (left!35025 t!4386)))) tp!1307155 (inv!62149 (right!35355 (right!35355 (left!35025 t!4386)))) tp!1307154))))

(declare-fun b!4262743 () Bool)

(declare-fun e!2646968 () Bool)

(declare-fun tp!1307156 () Bool)

(assert (=> b!4262743 (= e!2646968 tp!1307156)))

(declare-fun b!4262742 () Bool)

(assert (=> b!4262742 (= e!2646969 (and (inv!62150 (xs!17554 (right!35355 (left!35025 t!4386)))) e!2646968))))

(assert (=> b!4262446 (= tp!1307134 (and (inv!62149 (right!35355 (left!35025 t!4386))) e!2646969))))

(assert (= (and b!4262446 ((_ is Node!14248) (right!35355 (left!35025 t!4386)))) b!4262741))

(assert (= b!4262742 b!4262743))

(assert (= (and b!4262446 ((_ is Leaf!22018) (right!35355 (left!35025 t!4386)))) b!4262742))

(declare-fun m!4851597 () Bool)

(assert (=> b!4262741 m!4851597))

(declare-fun m!4851599 () Bool)

(assert (=> b!4262741 m!4851599))

(declare-fun m!4851601 () Bool)

(assert (=> b!4262742 m!4851601))

(assert (=> b!4262446 m!4851029))

(declare-fun b!4262744 () Bool)

(declare-fun e!2646970 () Bool)

(declare-fun tp!1307157 () Bool)

(assert (=> b!4262744 (= e!2646970 (and tp_is_empty!22885 tp!1307157))))

(assert (=> b!4262448 (= tp!1307136 e!2646970)))

(assert (= (and b!4262448 ((_ is Cons!47242) (innerList!14308 (xs!17554 (left!35025 t!4386))))) b!4262744))

(declare-fun b_lambda!125867 () Bool)

(assert (= b_lambda!125853 (or (and start!408410 b_free!126689) b_lambda!125867)))

(declare-fun b_lambda!125869 () Bool)

(assert (= b_lambda!125857 (or (and start!408410 b_free!126689) b_lambda!125869)))

(declare-fun b_lambda!125871 () Bool)

(assert (= b_lambda!125861 (or (and start!408410 b_free!126689) b_lambda!125871)))

(declare-fun b_lambda!125873 () Bool)

(assert (= b_lambda!125855 (or (and start!408410 b_free!126689) b_lambda!125873)))

(declare-fun b_lambda!125875 () Bool)

(assert (= b_lambda!125851 (or (and start!408410 b_free!126689) b_lambda!125875)))

(declare-fun b_lambda!125877 () Bool)

(assert (= b_lambda!125865 (or (and start!408410 b_free!126689) b_lambda!125877)))

(check-sat (not b!4262618) (not d!1255214) (not b!4262739) (not b!4262533) (not b!4262620) (not d!1255060) (not b_lambda!125849) (not d!1255192) (not b!4262506) (not b!4262535) (not b!4262509) (not b!4262601) (not b!4262537) (not b!4262508) (not b!4262649) (not b!4262570) (not b!4262659) (not d!1255124) (not b!4262474) (not b!4262728) (not b!4262661) (not b!4262723) (not b!4262685) (not b!4262689) (not d!1255120) (not b!4262744) (not d!1255104) (not b!4262616) (not b!4262687) (not d!1255106) (not b!4262710) (not b!4262619) (not b!4262593) (not b!4262670) (not b!4262510) (not b!4262617) (not b!4262675) (not b!4262534) (not b!4262596) (not b!4262568) (not b!4262462) (not b!4262657) (not b!4262552) (not d!1255222) (not b!4262634) (not d!1255156) (not b!4262465) (not b!4262658) (not b!4262654) (not b!4262513) (not b!4262621) (not b!4262463) (not d!1255110) (not b!4262715) (not b!4262737) (not b_lambda!125847) (not b!4262701) (not b!4262597) (not b_lambda!125845) (not b!4262481) (not b!4262727) (not b_lambda!125875) (not d!1255116) (not b!4262512) (not b!4262652) (not b!4262579) (not d!1255150) (not b!4262742) (not b!4262559) (not b!4262558) (not b!4262729) (not b!4262500) (not b!4262730) (not b!4262655) (not b!4262501) (not b!4262466) (not b!4262485) (not b!4262530) (not d!1255196) (not b!4262647) (not b!4262609) (not b!4262529) (not b!4262468) (not b!4262674) (not b!4262524) (not b!4262599) (not b!4262467) (not b!4262615) (not d!1255082) (not b!4262629) (not b!4262600) (not b!4262741) (not b!4262489) (not b_next!127393) (not d!1255076) (not b!4262449) (not b!4262492) (not b!4262725) (not b!4262476) (not b!4262522) (not b!4262549) (not d!1255122) (not b!4262486) (not b!4262526) (not d!1255086) tp_is_empty!22881 (not b!4262743) (not b!4262708) (not b_lambda!125867) (not b!4262460) (not b!4262591) (not b!4262532) (not b!4262480) (not b!4262632) (not b!4262726) (not d!1255112) (not b_lambda!125869) (not b!4262459) (not b!4262635) (not b!4262724) (not b!4262547) (not b!4262738) (not b!4262627) (not b!4262563) (not b!4262598) (not d!1255228) (not b!4262497) (not b_lambda!125873) (not b!4262669) b_and!337787 (not b!4262711) (not b!4262478) (not b!4262464) (not b!4262540) (not d!1255100) (not d!1255088) (not d!1255090) (not b!4262630) (not b_lambda!125843) (not d!1255134) (not d!1255216) (not d!1255212) (not b!4262641) (not b_lambda!125877) (not b!4262705) (not b!4262642) (not b!4262607) (not d!1255200) (not b!4262514) (not b!4262505) (not d!1255198) (not b!4262511) (not d!1255126) (not d!1255064) (not b!4262575) (not b!4262713) (not b!4262653) (not d!1255144) (not b!4262672) tp_is_empty!22885 (not b!4262595) (not b!4262566) (not b!4262551) (not d!1255092) (not d!1255160) (not b!4262446) (not b!4262667) (not b!4262490) (not b!4262531) (not b!4262565) (not b!4262562) (not b!4262571) (not b!4262740) (not d!1255248) (not b!4262656) (not b_lambda!125871) (not b!4262707) (not b!4262573) (not b!4262576))
(check-sat b_and!337787 (not b_next!127393))
(get-model)

(declare-fun d!1255386 () Bool)

(declare-fun lt!1511041 () Int)

(assert (=> d!1255386 (>= lt!1511041 0)))

(declare-fun e!2647061 () Int)

(assert (=> d!1255386 (= lt!1511041 e!2647061)))

(declare-fun c!724270 () Bool)

(assert (=> d!1255386 (= c!724270 ((_ is Nil!47243) lt!1510956))))

(assert (=> d!1255386 (= (size!34605 lt!1510956) lt!1511041)))

(declare-fun b!4262917 () Bool)

(assert (=> b!4262917 (= e!2647061 0)))

(declare-fun b!4262918 () Bool)

(assert (=> b!4262918 (= e!2647061 (+ 1 (size!34605 (t!353272 lt!1510956))))))

(assert (= (and d!1255386 c!724270) b!4262917))

(assert (= (and d!1255386 (not c!724270)) b!4262918))

(declare-fun m!4851955 () Bool)

(assert (=> b!4262918 m!4851955))

(assert (=> d!1255116 d!1255386))

(declare-fun d!1255388 () Bool)

(declare-fun lt!1511042 () Int)

(assert (=> d!1255388 (>= lt!1511042 0)))

(declare-fun e!2647062 () Int)

(assert (=> d!1255388 (= lt!1511042 e!2647062)))

(declare-fun c!724271 () Bool)

(assert (=> d!1255388 (= c!724271 ((_ is Nil!47242) (t!353271 lt!1510889)))))

(assert (=> d!1255388 (= (size!34606 (t!353271 lt!1510889)) lt!1511042)))

(declare-fun b!4262919 () Bool)

(assert (=> b!4262919 (= e!2647062 0)))

(declare-fun b!4262920 () Bool)

(assert (=> b!4262920 (= e!2647062 (+ 1 (size!34606 (t!353271 (t!353271 lt!1510889)))))))

(assert (= (and d!1255388 c!724271) b!4262919))

(assert (= (and d!1255388 (not c!724271)) b!4262920))

(declare-fun m!4851957 () Bool)

(assert (=> b!4262920 m!4851957))

(assert (=> d!1255116 d!1255388))

(declare-fun d!1255390 () Bool)

(assert (=> d!1255390 (= (list!17072 (xs!17554 (left!35025 (left!35025 t!4386)))) (innerList!14308 (xs!17554 (left!35025 (left!35025 t!4386)))))))

(assert (=> b!4262647 d!1255390))

(declare-fun d!1255392 () Bool)

(declare-fun lt!1511043 () Int)

(assert (=> d!1255392 (>= lt!1511043 0)))

(declare-fun e!2647063 () Int)

(assert (=> d!1255392 (= lt!1511043 e!2647063)))

(declare-fun c!724272 () Bool)

(assert (=> d!1255392 (= c!724272 ((_ is Nil!47243) (t!353272 lt!1510934)))))

(assert (=> d!1255392 (= (size!34605 (t!353272 lt!1510934)) lt!1511043)))

(declare-fun b!4262921 () Bool)

(assert (=> b!4262921 (= e!2647063 0)))

(declare-fun b!4262922 () Bool)

(assert (=> b!4262922 (= e!2647063 (+ 1 (size!34605 (t!353272 (t!353272 lt!1510934)))))))

(assert (= (and d!1255392 c!724272) b!4262921))

(assert (= (and d!1255392 (not c!724272)) b!4262922))

(declare-fun m!4851959 () Bool)

(assert (=> b!4262922 m!4851959))

(assert (=> b!4262607 d!1255392))

(declare-fun d!1255394 () Bool)

(declare-fun c!724273 () Bool)

(assert (=> d!1255394 (= c!724273 ((_ is Nil!47243) (t!353272 (map!9674 lt!1510891 f!428))))))

(declare-fun e!2647064 () (InoxSet B!2825))

(assert (=> d!1255394 (= (content!7447 (t!353272 (map!9674 lt!1510891 f!428))) e!2647064)))

(declare-fun b!4262923 () Bool)

(assert (=> b!4262923 (= e!2647064 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4262924 () Bool)

(assert (=> b!4262924 (= e!2647064 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (t!353272 (map!9674 lt!1510891 f!428))) true) (content!7447 (t!353272 (t!353272 (map!9674 lt!1510891 f!428))))))))

(assert (= (and d!1255394 c!724273) b!4262923))

(assert (= (and d!1255394 (not c!724273)) b!4262924))

(declare-fun m!4851961 () Bool)

(assert (=> b!4262924 m!4851961))

(declare-fun m!4851963 () Bool)

(assert (=> b!4262924 m!4851963))

(assert (=> b!4262705 d!1255394))

(declare-fun b!4262925 () Bool)

(declare-fun res!1752062 () Bool)

(declare-fun e!2647065 () Bool)

(assert (=> b!4262925 (=> (not res!1752062) (not e!2647065))))

(assert (=> b!4262925 (= res!1752062 (isBalanced!3807 (left!35025 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4262926 () Bool)

(declare-fun res!1752061 () Bool)

(assert (=> b!4262926 (=> (not res!1752061) (not e!2647065))))

(assert (=> b!4262926 (= res!1752061 (<= (- (height!1872 (left!35025 (right!35355 (left!35025 t!4386)))) (height!1872 (right!35355 (right!35355 (left!35025 t!4386))))) 1))))

(declare-fun b!4262927 () Bool)

(declare-fun res!1752060 () Bool)

(assert (=> b!4262927 (=> (not res!1752060) (not e!2647065))))

(assert (=> b!4262927 (= res!1752060 (not (isEmpty!27987 (left!35025 (right!35355 (left!35025 t!4386))))))))

(declare-fun b!4262928 () Bool)

(assert (=> b!4262928 (= e!2647065 (not (isEmpty!27987 (right!35355 (right!35355 (left!35025 t!4386))))))))

(declare-fun d!1255396 () Bool)

(declare-fun res!1752064 () Bool)

(declare-fun e!2647066 () Bool)

(assert (=> d!1255396 (=> res!1752064 e!2647066)))

(assert (=> d!1255396 (= res!1752064 (not ((_ is Node!14248) (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255396 (= (isBalanced!3807 (right!35355 (left!35025 t!4386))) e!2647066)))

(declare-fun b!4262929 () Bool)

(assert (=> b!4262929 (= e!2647066 e!2647065)))

(declare-fun res!1752065 () Bool)

(assert (=> b!4262929 (=> (not res!1752065) (not e!2647065))))

(assert (=> b!4262929 (= res!1752065 (<= (- 1) (- (height!1872 (left!35025 (right!35355 (left!35025 t!4386)))) (height!1872 (right!35355 (right!35355 (left!35025 t!4386)))))))))

(declare-fun b!4262930 () Bool)

(declare-fun res!1752063 () Bool)

(assert (=> b!4262930 (=> (not res!1752063) (not e!2647065))))

(assert (=> b!4262930 (= res!1752063 (isBalanced!3807 (right!35355 (right!35355 (left!35025 t!4386)))))))

(assert (= (and d!1255396 (not res!1752064)) b!4262929))

(assert (= (and b!4262929 res!1752065) b!4262926))

(assert (= (and b!4262926 res!1752061) b!4262925))

(assert (= (and b!4262925 res!1752062) b!4262930))

(assert (= (and b!4262930 res!1752063) b!4262927))

(assert (= (and b!4262927 res!1752060) b!4262928))

(declare-fun m!4851965 () Bool)

(assert (=> b!4262927 m!4851965))

(declare-fun m!4851967 () Bool)

(assert (=> b!4262925 m!4851967))

(declare-fun m!4851969 () Bool)

(assert (=> b!4262930 m!4851969))

(declare-fun m!4851971 () Bool)

(assert (=> b!4262928 m!4851971))

(declare-fun m!4851973 () Bool)

(assert (=> b!4262929 m!4851973))

(declare-fun m!4851975 () Bool)

(assert (=> b!4262929 m!4851975))

(assert (=> b!4262926 m!4851973))

(assert (=> b!4262926 m!4851975))

(assert (=> b!4262514 d!1255396))

(declare-fun d!1255398 () Bool)

(declare-fun res!1752066 () Bool)

(declare-fun e!2647067 () Bool)

(assert (=> d!1255398 (=> (not res!1752066) (not e!2647067))))

(assert (=> d!1255398 (= res!1752066 (<= (size!34606 (list!17072 (xs!17554 (left!35025 (left!35025 t!4386))))) 512))))

(assert (=> d!1255398 (= (inv!62154 (left!35025 (left!35025 t!4386))) e!2647067)))

(declare-fun b!4262931 () Bool)

(declare-fun res!1752067 () Bool)

(assert (=> b!4262931 (=> (not res!1752067) (not e!2647067))))

(assert (=> b!4262931 (= res!1752067 (= (csize!28727 (left!35025 (left!35025 t!4386))) (size!34606 (list!17072 (xs!17554 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4262932 () Bool)

(assert (=> b!4262932 (= e!2647067 (and (> (csize!28727 (left!35025 (left!35025 t!4386))) 0) (<= (csize!28727 (left!35025 (left!35025 t!4386))) 512)))))

(assert (= (and d!1255398 res!1752066) b!4262931))

(assert (= (and b!4262931 res!1752067) b!4262932))

(assert (=> d!1255398 m!4851433))

(assert (=> d!1255398 m!4851433))

(declare-fun m!4851977 () Bool)

(assert (=> d!1255398 m!4851977))

(assert (=> b!4262931 m!4851433))

(assert (=> b!4262931 m!4851433))

(assert (=> b!4262931 m!4851977))

(assert (=> b!4262710 d!1255398))

(declare-fun b!4262933 () Bool)

(declare-fun e!2647068 () List!47367)

(assert (=> b!4262933 (= e!2647068 Nil!47243)))

(declare-fun b!4262935 () Bool)

(declare-fun e!2647069 () List!47367)

(assert (=> b!4262935 (= e!2647069 (list!17070 (xs!17555 lt!1510990)))))

(declare-fun b!4262936 () Bool)

(assert (=> b!4262936 (= e!2647069 (++!12036 (list!17067 (left!35026 lt!1510990)) (list!17067 (right!35356 lt!1510990))))))

(declare-fun b!4262934 () Bool)

(assert (=> b!4262934 (= e!2647068 e!2647069)))

(declare-fun c!724275 () Bool)

(assert (=> b!4262934 (= c!724275 ((_ is Leaf!22019) lt!1510990))))

(declare-fun d!1255400 () Bool)

(declare-fun c!724274 () Bool)

(assert (=> d!1255400 (= c!724274 ((_ is Empty!14249) lt!1510990))))

(assert (=> d!1255400 (= (list!17067 lt!1510990) e!2647068)))

(assert (= (and d!1255400 c!724274) b!4262933))

(assert (= (and d!1255400 (not c!724274)) b!4262934))

(assert (= (and b!4262934 c!724275) b!4262935))

(assert (= (and b!4262934 (not c!724275)) b!4262936))

(declare-fun m!4851979 () Bool)

(assert (=> b!4262935 m!4851979))

(declare-fun m!4851981 () Bool)

(assert (=> b!4262936 m!4851981))

(declare-fun m!4851983 () Bool)

(assert (=> b!4262936 m!4851983))

(assert (=> b!4262936 m!4851981))

(assert (=> b!4262936 m!4851983))

(declare-fun m!4851985 () Bool)

(assert (=> b!4262936 m!4851985))

(assert (=> d!1255212 d!1255400))

(declare-fun d!1255402 () Bool)

(declare-fun lt!1511044 () List!47367)

(assert (=> d!1255402 (= (size!34605 lt!1511044) (size!34606 (list!17068 (right!35355 (left!35025 t!4386)))))))

(declare-fun e!2647070 () List!47367)

(assert (=> d!1255402 (= lt!1511044 e!2647070)))

(declare-fun c!724276 () Bool)

(assert (=> d!1255402 (= c!724276 ((_ is Nil!47242) (list!17068 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255402 (= (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428) lt!1511044)))

(declare-fun b!4262937 () Bool)

(assert (=> b!4262937 (= e!2647070 Nil!47243)))

(declare-fun b!4262938 () Bool)

(assert (=> b!4262938 (= e!2647070 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (right!35355 (left!35025 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(assert (= (and d!1255402 c!724276) b!4262937))

(assert (= (and d!1255402 (not c!724276)) b!4262938))

(declare-fun b_lambda!125899 () Bool)

(assert (=> (not b_lambda!125899) (not b!4262938)))

(declare-fun t!353334 () Bool)

(declare-fun tb!256987 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353334) tb!256987))

(declare-fun result!313564 () Bool)

(assert (=> tb!256987 (= result!313564 tp_is_empty!22881)))

(assert (=> b!4262938 t!353334))

(declare-fun b_and!337797 () Bool)

(assert (= b_and!337787 (and (=> t!353334 result!313564) b_and!337797)))

(declare-fun m!4851987 () Bool)

(assert (=> d!1255402 m!4851987))

(assert (=> d!1255402 m!4850827))

(assert (=> d!1255402 m!4851415))

(declare-fun m!4851989 () Bool)

(assert (=> b!4262938 m!4851989))

(declare-fun m!4851991 () Bool)

(assert (=> b!4262938 m!4851991))

(assert (=> b!4262938 m!4851989))

(assert (=> b!4262938 m!4851991))

(declare-fun m!4851993 () Bool)

(assert (=> b!4262938 m!4851993))

(assert (=> d!1255212 d!1255402))

(assert (=> d!1255212 d!1255206))

(assert (=> d!1255212 d!1255396))

(declare-fun b!4262939 () Bool)

(declare-fun res!1752070 () Bool)

(declare-fun e!2647071 () Bool)

(assert (=> b!4262939 (=> (not res!1752070) (not e!2647071))))

(assert (=> b!4262939 (= res!1752070 (isBalanced!3807 (left!35025 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4262940 () Bool)

(declare-fun res!1752069 () Bool)

(assert (=> b!4262940 (=> (not res!1752069) (not e!2647071))))

(assert (=> b!4262940 (= res!1752069 (<= (- (height!1872 (left!35025 (right!35355 (right!35355 t!4386)))) (height!1872 (right!35355 (right!35355 (right!35355 t!4386))))) 1))))

(declare-fun b!4262941 () Bool)

(declare-fun res!1752068 () Bool)

(assert (=> b!4262941 (=> (not res!1752068) (not e!2647071))))

(assert (=> b!4262941 (= res!1752068 (not (isEmpty!27987 (left!35025 (right!35355 (right!35355 t!4386))))))))

(declare-fun b!4262942 () Bool)

(assert (=> b!4262942 (= e!2647071 (not (isEmpty!27987 (right!35355 (right!35355 (right!35355 t!4386))))))))

(declare-fun d!1255404 () Bool)

(declare-fun res!1752072 () Bool)

(declare-fun e!2647072 () Bool)

(assert (=> d!1255404 (=> res!1752072 e!2647072)))

(assert (=> d!1255404 (= res!1752072 (not ((_ is Node!14248) (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255404 (= (isBalanced!3807 (right!35355 (right!35355 t!4386))) e!2647072)))

(declare-fun b!4262943 () Bool)

(assert (=> b!4262943 (= e!2647072 e!2647071)))

(declare-fun res!1752073 () Bool)

(assert (=> b!4262943 (=> (not res!1752073) (not e!2647071))))

(assert (=> b!4262943 (= res!1752073 (<= (- 1) (- (height!1872 (left!35025 (right!35355 (right!35355 t!4386)))) (height!1872 (right!35355 (right!35355 (right!35355 t!4386)))))))))

(declare-fun b!4262944 () Bool)

(declare-fun res!1752071 () Bool)

(assert (=> b!4262944 (=> (not res!1752071) (not e!2647071))))

(assert (=> b!4262944 (= res!1752071 (isBalanced!3807 (right!35355 (right!35355 (right!35355 t!4386)))))))

(assert (= (and d!1255404 (not res!1752072)) b!4262943))

(assert (= (and b!4262943 res!1752073) b!4262940))

(assert (= (and b!4262940 res!1752069) b!4262939))

(assert (= (and b!4262939 res!1752070) b!4262944))

(assert (= (and b!4262944 res!1752071) b!4262941))

(assert (= (and b!4262941 res!1752068) b!4262942))

(declare-fun m!4851995 () Bool)

(assert (=> b!4262941 m!4851995))

(declare-fun m!4851997 () Bool)

(assert (=> b!4262939 m!4851997))

(declare-fun m!4851999 () Bool)

(assert (=> b!4262944 m!4851999))

(declare-fun m!4852001 () Bool)

(assert (=> b!4262942 m!4852001))

(declare-fun m!4852003 () Bool)

(assert (=> b!4262943 m!4852003))

(declare-fun m!4852005 () Bool)

(assert (=> b!4262943 m!4852005))

(assert (=> b!4262940 m!4852003))

(assert (=> b!4262940 m!4852005))

(assert (=> b!4262468 d!1255404))

(declare-fun d!1255406 () Bool)

(declare-fun lt!1511045 () IArray!28503)

(assert (=> d!1255406 (= lt!1511045 (IArray!28504 (map!9674 (list!17072 (xs!17554 (left!35025 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255406 (= lt!1511045 (choose!25989 (xs!17554 (left!35025 (left!35025 t!4386))) f!428))))

(assert (=> d!1255406 (= (map!9676 (xs!17554 (left!35025 (left!35025 t!4386))) f!428) lt!1511045)))

(declare-fun bs!599126 () Bool)

(assert (= bs!599126 d!1255406))

(assert (=> bs!599126 m!4851433))

(assert (=> bs!599126 m!4851433))

(declare-fun m!4852007 () Bool)

(assert (=> bs!599126 m!4852007))

(declare-fun m!4852009 () Bool)

(assert (=> bs!599126 m!4852009))

(assert (=> b!4262675 d!1255406))

(declare-fun d!1255408 () Bool)

(declare-fun lt!1511046 () List!47367)

(assert (=> d!1255408 (= (size!34605 lt!1511046) (size!34606 (list!17068 (left!35025 (left!35025 t!4386)))))))

(declare-fun e!2647073 () List!47367)

(assert (=> d!1255408 (= lt!1511046 e!2647073)))

(declare-fun c!724277 () Bool)

(assert (=> d!1255408 (= c!724277 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255408 (= (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428) lt!1511046)))

(declare-fun b!4262945 () Bool)

(assert (=> b!4262945 (= e!2647073 Nil!47243)))

(declare-fun b!4262946 () Bool)

(assert (=> b!4262946 (= e!2647073 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (left!35025 (left!35025 t!4386)))))))))

(assert (= (and d!1255408 c!724277) b!4262945))

(assert (= (and d!1255408 (not c!724277)) b!4262946))

(declare-fun b_lambda!125901 () Bool)

(assert (=> (not b_lambda!125901) (not b!4262946)))

(declare-fun t!353336 () Bool)

(declare-fun tb!256989 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353336) tb!256989))

(declare-fun result!313566 () Bool)

(assert (=> tb!256989 (= result!313566 tp_is_empty!22881)))

(assert (=> b!4262946 t!353336))

(declare-fun b_and!337799 () Bool)

(assert (= b_and!337797 (and (=> t!353336 result!313566) b_and!337799)))

(declare-fun m!4852011 () Bool)

(assert (=> d!1255408 m!4852011))

(assert (=> d!1255408 m!4850829))

(assert (=> d!1255408 m!4851413))

(declare-fun m!4852013 () Bool)

(assert (=> b!4262946 m!4852013))

(declare-fun m!4852015 () Bool)

(assert (=> b!4262946 m!4852015))

(assert (=> b!4262946 m!4852013))

(assert (=> b!4262946 m!4852015))

(declare-fun m!4852017 () Bool)

(assert (=> b!4262946 m!4852017))

(assert (=> d!1255216 d!1255408))

(declare-fun d!1255410 () Bool)

(declare-fun lt!1511047 () List!47367)

(assert (=> d!1255410 (= (size!34605 lt!1511047) (size!34606 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))))))))

(declare-fun e!2647074 () List!47367)

(assert (=> d!1255410 (= lt!1511047 e!2647074)))

(declare-fun c!724278 () Bool)

(assert (=> d!1255410 (= c!724278 ((_ is Nil!47242) (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))))))))

(assert (=> d!1255410 (= (map!9674 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386)))) f!428) lt!1511047)))

(declare-fun b!4262947 () Bool)

(assert (=> b!4262947 (= e!2647074 Nil!47243)))

(declare-fun b!4262948 () Bool)

(assert (=> b!4262948 (= e!2647074 ($colon$colon!633 (map!9674 (t!353271 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))))) f!428) (dynLambda!20221 f!428 (h!52662 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))))))))))

(assert (= (and d!1255410 c!724278) b!4262947))

(assert (= (and d!1255410 (not c!724278)) b!4262948))

(declare-fun b_lambda!125903 () Bool)

(assert (=> (not b_lambda!125903) (not b!4262948)))

(declare-fun t!353338 () Bool)

(declare-fun tb!256991 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353338) tb!256991))

(declare-fun result!313568 () Bool)

(assert (=> tb!256991 (= result!313568 tp_is_empty!22881)))

(assert (=> b!4262948 t!353338))

(declare-fun b_and!337801 () Bool)

(assert (= b_and!337799 (and (=> t!353338 result!313568) b_and!337801)))

(declare-fun m!4852019 () Bool)

(assert (=> d!1255410 m!4852019))

(assert (=> d!1255410 m!4850889))

(declare-fun m!4852021 () Bool)

(assert (=> d!1255410 m!4852021))

(declare-fun m!4852023 () Bool)

(assert (=> b!4262948 m!4852023))

(declare-fun m!4852025 () Bool)

(assert (=> b!4262948 m!4852025))

(assert (=> b!4262948 m!4852023))

(assert (=> b!4262948 m!4852025))

(declare-fun m!4852027 () Bool)

(assert (=> b!4262948 m!4852027))

(assert (=> d!1255216 d!1255410))

(declare-fun d!1255412 () Bool)

(assert (=> d!1255412 (= (map!9674 (++!12035 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386)))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)))))

(assert (=> d!1255412 true))

(declare-fun _$82!116 () Unit!66139)

(assert (=> d!1255412 (= (choose!25988 (list!17068 (left!35025 (left!35025 t!4386))) (list!17068 (right!35355 (left!35025 t!4386))) f!428) _$82!116)))

(declare-fun bs!599127 () Bool)

(assert (= bs!599127 d!1255412))

(assert (=> bs!599127 m!4850829))

(assert (=> bs!599127 m!4850827))

(assert (=> bs!599127 m!4850889))

(assert (=> bs!599127 m!4850827))

(assert (=> bs!599127 m!4851461))

(assert (=> bs!599127 m!4851475))

(assert (=> bs!599127 m!4851461))

(assert (=> bs!599127 m!4851491))

(assert (=> bs!599127 m!4850829))

(assert (=> bs!599127 m!4851475))

(assert (=> bs!599127 m!4850889))

(assert (=> bs!599127 m!4851489))

(assert (=> d!1255216 d!1255412))

(assert (=> d!1255216 d!1255200))

(declare-fun b!4262951 () Bool)

(declare-fun res!1752074 () Bool)

(declare-fun e!2647075 () Bool)

(assert (=> b!4262951 (=> (not res!1752074) (not e!2647075))))

(declare-fun lt!1511048 () List!47367)

(assert (=> b!4262951 (= res!1752074 (= (size!34605 lt!1511048) (+ (size!34605 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)) (size!34605 (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)))))))

(declare-fun b!4262950 () Bool)

(declare-fun e!2647076 () List!47367)

(assert (=> b!4262950 (= e!2647076 (Cons!47243 (h!52663 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)) (++!12036 (t!353272 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)) (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428))))))

(declare-fun b!4262952 () Bool)

(assert (=> b!4262952 (= e!2647075 (or (not (= (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428) Nil!47243)) (= lt!1511048 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428))))))

(declare-fun b!4262949 () Bool)

(assert (=> b!4262949 (= e!2647076 (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428))))

(declare-fun d!1255414 () Bool)

(assert (=> d!1255414 e!2647075))

(declare-fun res!1752075 () Bool)

(assert (=> d!1255414 (=> (not res!1752075) (not e!2647075))))

(assert (=> d!1255414 (= res!1752075 (= (content!7447 lt!1511048) ((_ map or) (content!7447 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)) (content!7447 (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)))))))

(assert (=> d!1255414 (= lt!1511048 e!2647076)))

(declare-fun c!724279 () Bool)

(assert (=> d!1255414 (= c!724279 ((_ is Nil!47243) (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428)))))

(assert (=> d!1255414 (= (++!12036 (map!9674 (list!17068 (left!35025 (left!35025 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (left!35025 t!4386))) f!428)) lt!1511048)))

(assert (= (and d!1255414 c!724279) b!4262949))

(assert (= (and d!1255414 (not c!724279)) b!4262950))

(assert (= (and d!1255414 res!1752075) b!4262951))

(assert (= (and b!4262951 res!1752074) b!4262952))

(declare-fun m!4852029 () Bool)

(assert (=> b!4262951 m!4852029))

(assert (=> b!4262951 m!4851475))

(declare-fun m!4852031 () Bool)

(assert (=> b!4262951 m!4852031))

(assert (=> b!4262951 m!4851461))

(declare-fun m!4852033 () Bool)

(assert (=> b!4262951 m!4852033))

(assert (=> b!4262950 m!4851461))

(declare-fun m!4852035 () Bool)

(assert (=> b!4262950 m!4852035))

(declare-fun m!4852037 () Bool)

(assert (=> d!1255414 m!4852037))

(assert (=> d!1255414 m!4851475))

(declare-fun m!4852039 () Bool)

(assert (=> d!1255414 m!4852039))

(assert (=> d!1255414 m!4851461))

(declare-fun m!4852041 () Bool)

(assert (=> d!1255414 m!4852041))

(assert (=> d!1255216 d!1255414))

(assert (=> d!1255216 d!1255402))

(declare-fun b!4262953 () Bool)

(declare-fun res!1752077 () Bool)

(declare-fun e!2647078 () Bool)

(assert (=> b!4262953 (=> (not res!1752077) (not e!2647078))))

(assert (=> b!4262953 (= res!1752077 (isBalanced!3808 (left!35026 (right!35356 lt!1510912))))))

(declare-fun b!4262954 () Bool)

(declare-fun res!1752079 () Bool)

(assert (=> b!4262954 (=> (not res!1752079) (not e!2647078))))

(assert (=> b!4262954 (= res!1752079 (isBalanced!3808 (right!35356 (right!35356 lt!1510912))))))

(declare-fun d!1255416 () Bool)

(declare-fun res!1752076 () Bool)

(declare-fun e!2647077 () Bool)

(assert (=> d!1255416 (=> res!1752076 e!2647077)))

(assert (=> d!1255416 (= res!1752076 (not ((_ is Node!14249) (right!35356 lt!1510912))))))

(assert (=> d!1255416 (= (isBalanced!3808 (right!35356 lt!1510912)) e!2647077)))

(declare-fun b!4262955 () Bool)

(declare-fun res!1752078 () Bool)

(assert (=> b!4262955 (=> (not res!1752078) (not e!2647078))))

(assert (=> b!4262955 (= res!1752078 (not (isEmpty!27986 (left!35026 (right!35356 lt!1510912)))))))

(declare-fun b!4262956 () Bool)

(assert (=> b!4262956 (= e!2647078 (not (isEmpty!27986 (right!35356 (right!35356 lt!1510912)))))))

(declare-fun b!4262957 () Bool)

(assert (=> b!4262957 (= e!2647077 e!2647078)))

(declare-fun res!1752081 () Bool)

(assert (=> b!4262957 (=> (not res!1752081) (not e!2647078))))

(assert (=> b!4262957 (= res!1752081 (<= (- 1) (- (height!1871 (left!35026 (right!35356 lt!1510912))) (height!1871 (right!35356 (right!35356 lt!1510912))))))))

(declare-fun b!4262958 () Bool)

(declare-fun res!1752080 () Bool)

(assert (=> b!4262958 (=> (not res!1752080) (not e!2647078))))

(assert (=> b!4262958 (= res!1752080 (<= (- (height!1871 (left!35026 (right!35356 lt!1510912))) (height!1871 (right!35356 (right!35356 lt!1510912)))) 1))))

(assert (= (and d!1255416 (not res!1752076)) b!4262957))

(assert (= (and b!4262957 res!1752081) b!4262958))

(assert (= (and b!4262958 res!1752080) b!4262953))

(assert (= (and b!4262953 res!1752077) b!4262954))

(assert (= (and b!4262954 res!1752079) b!4262955))

(assert (= (and b!4262955 res!1752078) b!4262956))

(declare-fun m!4852043 () Bool)

(assert (=> b!4262953 m!4852043))

(declare-fun m!4852045 () Bool)

(assert (=> b!4262956 m!4852045))

(declare-fun m!4852047 () Bool)

(assert (=> b!4262955 m!4852047))

(declare-fun m!4852049 () Bool)

(assert (=> b!4262958 m!4852049))

(declare-fun m!4852051 () Bool)

(assert (=> b!4262958 m!4852051))

(assert (=> b!4262957 m!4852049))

(assert (=> b!4262957 m!4852051))

(declare-fun m!4852053 () Bool)

(assert (=> b!4262954 m!4852053))

(assert (=> b!4262617 d!1255416))

(declare-fun d!1255418 () Bool)

(assert (=> d!1255418 (= (list!17070 (xs!17555 lt!1510912)) (innerList!14309 (xs!17555 lt!1510912)))))

(assert (=> b!4262505 d!1255418))

(declare-fun b!4262959 () Bool)

(declare-fun e!2647079 () List!47367)

(assert (=> b!4262959 (= e!2647079 Nil!47243)))

(declare-fun b!4262961 () Bool)

(declare-fun e!2647080 () List!47367)

(assert (=> b!4262961 (= e!2647080 (list!17070 (xs!17555 lt!1510992)))))

(declare-fun b!4262962 () Bool)

(assert (=> b!4262962 (= e!2647080 (++!12036 (list!17067 (left!35026 lt!1510992)) (list!17067 (right!35356 lt!1510992))))))

(declare-fun b!4262960 () Bool)

(assert (=> b!4262960 (= e!2647079 e!2647080)))

(declare-fun c!724281 () Bool)

(assert (=> b!4262960 (= c!724281 ((_ is Leaf!22019) lt!1510992))))

(declare-fun d!1255420 () Bool)

(declare-fun c!724280 () Bool)

(assert (=> d!1255420 (= c!724280 ((_ is Empty!14249) lt!1510992))))

(assert (=> d!1255420 (= (list!17067 lt!1510992) e!2647079)))

(assert (= (and d!1255420 c!724280) b!4262959))

(assert (= (and d!1255420 (not c!724280)) b!4262960))

(assert (= (and b!4262960 c!724281) b!4262961))

(assert (= (and b!4262960 (not c!724281)) b!4262962))

(declare-fun m!4852055 () Bool)

(assert (=> b!4262961 m!4852055))

(declare-fun m!4852057 () Bool)

(assert (=> b!4262962 m!4852057))

(declare-fun m!4852059 () Bool)

(assert (=> b!4262962 m!4852059))

(assert (=> b!4262962 m!4852057))

(assert (=> b!4262962 m!4852059))

(declare-fun m!4852061 () Bool)

(assert (=> b!4262962 m!4852061))

(assert (=> d!1255214 d!1255420))

(assert (=> d!1255214 d!1255408))

(assert (=> d!1255214 d!1255202))

(declare-fun b!4262963 () Bool)

(declare-fun res!1752084 () Bool)

(declare-fun e!2647081 () Bool)

(assert (=> b!4262963 (=> (not res!1752084) (not e!2647081))))

(assert (=> b!4262963 (= res!1752084 (isBalanced!3807 (left!35025 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4262964 () Bool)

(declare-fun res!1752083 () Bool)

(assert (=> b!4262964 (=> (not res!1752083) (not e!2647081))))

(assert (=> b!4262964 (= res!1752083 (<= (- (height!1872 (left!35025 (left!35025 (left!35025 t!4386)))) (height!1872 (right!35355 (left!35025 (left!35025 t!4386))))) 1))))

(declare-fun b!4262965 () Bool)

(declare-fun res!1752082 () Bool)

(assert (=> b!4262965 (=> (not res!1752082) (not e!2647081))))

(assert (=> b!4262965 (= res!1752082 (not (isEmpty!27987 (left!35025 (left!35025 (left!35025 t!4386))))))))

(declare-fun b!4262966 () Bool)

(assert (=> b!4262966 (= e!2647081 (not (isEmpty!27987 (right!35355 (left!35025 (left!35025 t!4386))))))))

(declare-fun d!1255422 () Bool)

(declare-fun res!1752086 () Bool)

(declare-fun e!2647082 () Bool)

(assert (=> d!1255422 (=> res!1752086 e!2647082)))

(assert (=> d!1255422 (= res!1752086 (not ((_ is Node!14248) (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255422 (= (isBalanced!3807 (left!35025 (left!35025 t!4386))) e!2647082)))

(declare-fun b!4262967 () Bool)

(assert (=> b!4262967 (= e!2647082 e!2647081)))

(declare-fun res!1752087 () Bool)

(assert (=> b!4262967 (=> (not res!1752087) (not e!2647081))))

(assert (=> b!4262967 (= res!1752087 (<= (- 1) (- (height!1872 (left!35025 (left!35025 (left!35025 t!4386)))) (height!1872 (right!35355 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4262968 () Bool)

(declare-fun res!1752085 () Bool)

(assert (=> b!4262968 (=> (not res!1752085) (not e!2647081))))

(assert (=> b!4262968 (= res!1752085 (isBalanced!3807 (right!35355 (left!35025 (left!35025 t!4386)))))))

(assert (= (and d!1255422 (not res!1752086)) b!4262967))

(assert (= (and b!4262967 res!1752087) b!4262964))

(assert (= (and b!4262964 res!1752083) b!4262963))

(assert (= (and b!4262963 res!1752084) b!4262968))

(assert (= (and b!4262968 res!1752085) b!4262965))

(assert (= (and b!4262965 res!1752082) b!4262966))

(declare-fun m!4852063 () Bool)

(assert (=> b!4262965 m!4852063))

(declare-fun m!4852065 () Bool)

(assert (=> b!4262963 m!4852065))

(declare-fun m!4852067 () Bool)

(assert (=> b!4262968 m!4852067))

(declare-fun m!4852069 () Bool)

(assert (=> b!4262966 m!4852069))

(declare-fun m!4852071 () Bool)

(assert (=> b!4262967 m!4852071))

(declare-fun m!4852073 () Bool)

(assert (=> b!4262967 m!4852073))

(assert (=> b!4262964 m!4852071))

(assert (=> b!4262964 m!4852073))

(assert (=> d!1255214 d!1255422))

(declare-fun d!1255424 () Bool)

(declare-fun lt!1511049 () Int)

(assert (=> d!1255424 (>= lt!1511049 0)))

(declare-fun e!2647083 () Int)

(assert (=> d!1255424 (= lt!1511049 e!2647083)))

(declare-fun c!724282 () Bool)

(assert (=> d!1255424 (= c!724282 ((_ is Nil!47243) (t!353272 lt!1510922)))))

(assert (=> d!1255424 (= (size!34605 (t!353272 lt!1510922)) lt!1511049)))

(declare-fun b!4262969 () Bool)

(assert (=> b!4262969 (= e!2647083 0)))

(declare-fun b!4262970 () Bool)

(assert (=> b!4262970 (= e!2647083 (+ 1 (size!34605 (t!353272 (t!353272 lt!1510922)))))))

(assert (= (and d!1255424 c!724282) b!4262969))

(assert (= (and d!1255424 (not c!724282)) b!4262970))

(declare-fun m!4852075 () Bool)

(assert (=> b!4262970 m!4852075))

(assert (=> b!4262579 d!1255424))

(declare-fun d!1255426 () Bool)

(declare-fun lt!1511050 () Int)

(assert (=> d!1255426 (>= lt!1511050 0)))

(declare-fun e!2647084 () Int)

(assert (=> d!1255426 (= lt!1511050 e!2647084)))

(declare-fun c!724283 () Bool)

(assert (=> d!1255426 (= c!724283 ((_ is Nil!47243) (t!353272 lt!1510938)))))

(assert (=> d!1255426 (= (size!34605 (t!353272 lt!1510938)) lt!1511050)))

(declare-fun b!4262971 () Bool)

(assert (=> b!4262971 (= e!2647084 0)))

(declare-fun b!4262972 () Bool)

(assert (=> b!4262972 (= e!2647084 (+ 1 (size!34605 (t!353272 (t!353272 lt!1510938)))))))

(assert (= (and d!1255426 c!724283) b!4262971))

(assert (= (and d!1255426 (not c!724283)) b!4262972))

(declare-fun m!4852077 () Bool)

(assert (=> b!4262972 m!4852077))

(assert (=> b!4262723 d!1255426))

(declare-fun d!1255428 () Bool)

(assert (=> d!1255428 (= (height!1871 (left!35026 (right!35356 lt!1510890))) (ite ((_ is Empty!14249) (left!35026 (right!35356 lt!1510890))) 0 (ite ((_ is Leaf!22019) (left!35026 (right!35356 lt!1510890))) 1 (cheight!14460 (left!35026 (right!35356 lt!1510890))))))))

(assert (=> b!4262534 d!1255428))

(declare-fun d!1255430 () Bool)

(assert (=> d!1255430 (= (height!1871 (right!35356 (right!35356 lt!1510890))) (ite ((_ is Empty!14249) (right!35356 (right!35356 lt!1510890))) 0 (ite ((_ is Leaf!22019) (right!35356 (right!35356 lt!1510890))) 1 (cheight!14460 (right!35356 (right!35356 lt!1510890))))))))

(assert (=> b!4262534 d!1255430))

(declare-fun d!1255432 () Bool)

(declare-fun c!724284 () Bool)

(assert (=> d!1255432 (= c!724284 ((_ is Node!14248) (left!35025 (right!35355 (left!35025 t!4386)))))))

(declare-fun e!2647085 () Bool)

(assert (=> d!1255432 (= (inv!62149 (left!35025 (right!35355 (left!35025 t!4386)))) e!2647085)))

(declare-fun b!4262973 () Bool)

(assert (=> b!4262973 (= e!2647085 (inv!62153 (left!35025 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4262974 () Bool)

(declare-fun e!2647086 () Bool)

(assert (=> b!4262974 (= e!2647085 e!2647086)))

(declare-fun res!1752088 () Bool)

(assert (=> b!4262974 (= res!1752088 (not ((_ is Leaf!22018) (left!35025 (right!35355 (left!35025 t!4386))))))))

(assert (=> b!4262974 (=> res!1752088 e!2647086)))

(declare-fun b!4262975 () Bool)

(assert (=> b!4262975 (= e!2647086 (inv!62154 (left!35025 (right!35355 (left!35025 t!4386)))))))

(assert (= (and d!1255432 c!724284) b!4262973))

(assert (= (and d!1255432 (not c!724284)) b!4262974))

(assert (= (and b!4262974 (not res!1752088)) b!4262975))

(declare-fun m!4852079 () Bool)

(assert (=> b!4262973 m!4852079))

(declare-fun m!4852081 () Bool)

(assert (=> b!4262975 m!4852081))

(assert (=> b!4262741 d!1255432))

(declare-fun d!1255434 () Bool)

(declare-fun c!724285 () Bool)

(assert (=> d!1255434 (= c!724285 ((_ is Node!14248) (right!35355 (right!35355 (left!35025 t!4386)))))))

(declare-fun e!2647087 () Bool)

(assert (=> d!1255434 (= (inv!62149 (right!35355 (right!35355 (left!35025 t!4386)))) e!2647087)))

(declare-fun b!4262976 () Bool)

(assert (=> b!4262976 (= e!2647087 (inv!62153 (right!35355 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4262977 () Bool)

(declare-fun e!2647088 () Bool)

(assert (=> b!4262977 (= e!2647087 e!2647088)))

(declare-fun res!1752089 () Bool)

(assert (=> b!4262977 (= res!1752089 (not ((_ is Leaf!22018) (right!35355 (right!35355 (left!35025 t!4386))))))))

(assert (=> b!4262977 (=> res!1752089 e!2647088)))

(declare-fun b!4262978 () Bool)

(assert (=> b!4262978 (= e!2647088 (inv!62154 (right!35355 (right!35355 (left!35025 t!4386)))))))

(assert (= (and d!1255434 c!724285) b!4262976))

(assert (= (and d!1255434 (not c!724285)) b!4262977))

(assert (= (and b!4262977 (not res!1752089)) b!4262978))

(declare-fun m!4852083 () Bool)

(assert (=> b!4262976 m!4852083))

(declare-fun m!4852085 () Bool)

(assert (=> b!4262978 m!4852085))

(assert (=> b!4262741 d!1255434))

(declare-fun b!4262979 () Bool)

(declare-fun res!1752091 () Bool)

(declare-fun e!2647090 () Bool)

(assert (=> b!4262979 (=> (not res!1752091) (not e!2647090))))

(assert (=> b!4262979 (= res!1752091 (isBalanced!3808 (left!35026 (left!35026 lt!1510917))))))

(declare-fun b!4262980 () Bool)

(declare-fun res!1752093 () Bool)

(assert (=> b!4262980 (=> (not res!1752093) (not e!2647090))))

(assert (=> b!4262980 (= res!1752093 (isBalanced!3808 (right!35356 (left!35026 lt!1510917))))))

(declare-fun d!1255436 () Bool)

(declare-fun res!1752090 () Bool)

(declare-fun e!2647089 () Bool)

(assert (=> d!1255436 (=> res!1752090 e!2647089)))

(assert (=> d!1255436 (= res!1752090 (not ((_ is Node!14249) (left!35026 lt!1510917))))))

(assert (=> d!1255436 (= (isBalanced!3808 (left!35026 lt!1510917)) e!2647089)))

(declare-fun b!4262981 () Bool)

(declare-fun res!1752092 () Bool)

(assert (=> b!4262981 (=> (not res!1752092) (not e!2647090))))

(assert (=> b!4262981 (= res!1752092 (not (isEmpty!27986 (left!35026 (left!35026 lt!1510917)))))))

(declare-fun b!4262982 () Bool)

(assert (=> b!4262982 (= e!2647090 (not (isEmpty!27986 (right!35356 (left!35026 lt!1510917)))))))

(declare-fun b!4262983 () Bool)

(assert (=> b!4262983 (= e!2647089 e!2647090)))

(declare-fun res!1752095 () Bool)

(assert (=> b!4262983 (=> (not res!1752095) (not e!2647090))))

(assert (=> b!4262983 (= res!1752095 (<= (- 1) (- (height!1871 (left!35026 (left!35026 lt!1510917))) (height!1871 (right!35356 (left!35026 lt!1510917))))))))

(declare-fun b!4262984 () Bool)

(declare-fun res!1752094 () Bool)

(assert (=> b!4262984 (=> (not res!1752094) (not e!2647090))))

(assert (=> b!4262984 (= res!1752094 (<= (- (height!1871 (left!35026 (left!35026 lt!1510917))) (height!1871 (right!35356 (left!35026 lt!1510917)))) 1))))

(assert (= (and d!1255436 (not res!1752090)) b!4262983))

(assert (= (and b!4262983 res!1752095) b!4262984))

(assert (= (and b!4262984 res!1752094) b!4262979))

(assert (= (and b!4262979 res!1752091) b!4262980))

(assert (= (and b!4262980 res!1752093) b!4262981))

(assert (= (and b!4262981 res!1752092) b!4262982))

(declare-fun m!4852087 () Bool)

(assert (=> b!4262979 m!4852087))

(declare-fun m!4852089 () Bool)

(assert (=> b!4262982 m!4852089))

(declare-fun m!4852091 () Bool)

(assert (=> b!4262981 m!4852091))

(declare-fun m!4852093 () Bool)

(assert (=> b!4262984 m!4852093))

(declare-fun m!4852095 () Bool)

(assert (=> b!4262984 m!4852095))

(assert (=> b!4262983 m!4852093))

(assert (=> b!4262983 m!4852095))

(declare-fun m!4852097 () Bool)

(assert (=> b!4262980 m!4852097))

(assert (=> b!4262596 d!1255436))

(declare-fun d!1255438 () Bool)

(declare-fun c!724286 () Bool)

(assert (=> d!1255438 (= c!724286 ((_ is Nil!47243) (t!353272 lt!1510934)))))

(declare-fun e!2647091 () (InoxSet B!2825))

(assert (=> d!1255438 (= (content!7447 (t!353272 lt!1510934)) e!2647091)))

(declare-fun b!4262985 () Bool)

(assert (=> b!4262985 (= e!2647091 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4262986 () Bool)

(assert (=> b!4262986 (= e!2647091 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (t!353272 lt!1510934)) true) (content!7447 (t!353272 (t!353272 lt!1510934)))))))

(assert (= (and d!1255438 c!724286) b!4262985))

(assert (= (and d!1255438 (not c!724286)) b!4262986))

(declare-fun m!4852099 () Bool)

(assert (=> b!4262986 m!4852099))

(declare-fun m!4852101 () Bool)

(assert (=> b!4262986 m!4852101))

(assert (=> b!4262701 d!1255438))

(declare-fun d!1255440 () Bool)

(declare-fun lt!1511051 () Bool)

(assert (=> d!1255440 (= lt!1511051 (isEmpty!27990 (list!17067 (right!35356 (left!35026 lt!1510890)))))))

(assert (=> d!1255440 (= lt!1511051 (= (size!34607 (right!35356 (left!35026 lt!1510890))) 0))))

(assert (=> d!1255440 (= (isEmpty!27986 (right!35356 (left!35026 lt!1510890))) lt!1511051)))

(declare-fun bs!599128 () Bool)

(assert (= bs!599128 d!1255440))

(assert (=> bs!599128 m!4851237))

(assert (=> bs!599128 m!4851237))

(declare-fun m!4852103 () Bool)

(assert (=> bs!599128 m!4852103))

(declare-fun m!4852105 () Bool)

(assert (=> bs!599128 m!4852105))

(assert (=> b!4262657 d!1255440))

(declare-fun d!1255442 () Bool)

(assert (=> d!1255442 (= (height!1872 (left!35025 (left!35025 t!4386))) (ite ((_ is Empty!14248) (left!35025 (left!35025 t!4386))) 0 (ite ((_ is Leaf!22018) (left!35025 (left!35025 t!4386))) 1 (cheight!14459 (left!35025 (left!35025 t!4386))))))))

(assert (=> b!4262510 d!1255442))

(declare-fun d!1255444 () Bool)

(assert (=> d!1255444 (= (height!1872 (right!35355 (left!35025 t!4386))) (ite ((_ is Empty!14248) (right!35355 (left!35025 t!4386))) 0 (ite ((_ is Leaf!22018) (right!35355 (left!35025 t!4386))) 1 (cheight!14459 (right!35355 (left!35025 t!4386))))))))

(assert (=> b!4262510 d!1255444))

(declare-fun b!4262989 () Bool)

(declare-fun res!1752096 () Bool)

(declare-fun e!2647092 () Bool)

(assert (=> b!4262989 (=> (not res!1752096) (not e!2647092))))

(declare-fun lt!1511052 () List!47367)

(assert (=> b!4262989 (= res!1752096 (= (size!34605 lt!1511052) (+ (size!34605 (t!353272 (t!353272 (map!9674 lt!1510891 f!428)))) (size!34605 (map!9674 lt!1510889 f!428)))))))

(declare-fun b!4262988 () Bool)

(declare-fun e!2647093 () List!47367)

(assert (=> b!4262988 (= e!2647093 (Cons!47243 (h!52663 (t!353272 (t!353272 (map!9674 lt!1510891 f!428)))) (++!12036 (t!353272 (t!353272 (t!353272 (map!9674 lt!1510891 f!428)))) (map!9674 lt!1510889 f!428))))))

(declare-fun b!4262990 () Bool)

(assert (=> b!4262990 (= e!2647092 (or (not (= (map!9674 lt!1510889 f!428) Nil!47243)) (= lt!1511052 (t!353272 (t!353272 (map!9674 lt!1510891 f!428))))))))

(declare-fun b!4262987 () Bool)

(assert (=> b!4262987 (= e!2647093 (map!9674 lt!1510889 f!428))))

(declare-fun d!1255446 () Bool)

(assert (=> d!1255446 e!2647092))

(declare-fun res!1752097 () Bool)

(assert (=> d!1255446 (=> (not res!1752097) (not e!2647092))))

(assert (=> d!1255446 (= res!1752097 (= (content!7447 lt!1511052) ((_ map or) (content!7447 (t!353272 (t!353272 (map!9674 lt!1510891 f!428)))) (content!7447 (map!9674 lt!1510889 f!428)))))))

(assert (=> d!1255446 (= lt!1511052 e!2647093)))

(declare-fun c!724287 () Bool)

(assert (=> d!1255446 (= c!724287 ((_ is Nil!47243) (t!353272 (t!353272 (map!9674 lt!1510891 f!428)))))))

(assert (=> d!1255446 (= (++!12036 (t!353272 (t!353272 (map!9674 lt!1510891 f!428))) (map!9674 lt!1510889 f!428)) lt!1511052)))

(assert (= (and d!1255446 c!724287) b!4262987))

(assert (= (and d!1255446 (not c!724287)) b!4262988))

(assert (= (and d!1255446 res!1752097) b!4262989))

(assert (= (and b!4262989 res!1752096) b!4262990))

(declare-fun m!4852107 () Bool)

(assert (=> b!4262989 m!4852107))

(declare-fun m!4852109 () Bool)

(assert (=> b!4262989 m!4852109))

(assert (=> b!4262989 m!4850677))

(assert (=> b!4262989 m!4850967))

(assert (=> b!4262988 m!4850677))

(declare-fun m!4852111 () Bool)

(assert (=> b!4262988 m!4852111))

(declare-fun m!4852113 () Bool)

(assert (=> d!1255446 m!4852113))

(assert (=> d!1255446 m!4851963))

(assert (=> d!1255446 m!4850677))

(assert (=> d!1255446 m!4850975))

(assert (=> b!4262565 d!1255446))

(declare-fun d!1255448 () Bool)

(declare-fun lt!1511053 () Int)

(assert (=> d!1255448 (>= lt!1511053 0)))

(declare-fun e!2647094 () Int)

(assert (=> d!1255448 (= lt!1511053 e!2647094)))

(declare-fun c!724288 () Bool)

(assert (=> d!1255448 (= c!724288 ((_ is Nil!47242) (t!353271 (innerList!14308 (xs!17554 t!4386)))))))

(assert (=> d!1255448 (= (size!34606 (t!353271 (innerList!14308 (xs!17554 t!4386)))) lt!1511053)))

(declare-fun b!4262991 () Bool)

(assert (=> b!4262991 (= e!2647094 0)))

(declare-fun b!4262992 () Bool)

(assert (=> b!4262992 (= e!2647094 (+ 1 (size!34606 (t!353271 (t!353271 (innerList!14308 (xs!17554 t!4386)))))))))

(assert (= (and d!1255448 c!724288) b!4262991))

(assert (= (and d!1255448 (not c!724288)) b!4262992))

(declare-fun m!4852115 () Bool)

(assert (=> b!4262992 m!4852115))

(assert (=> b!4262661 d!1255448))

(declare-fun d!1255450 () Bool)

(declare-fun res!1752098 () Bool)

(declare-fun e!2647095 () Bool)

(assert (=> d!1255450 (=> (not res!1752098) (not e!2647095))))

(assert (=> d!1255450 (= res!1752098 (<= (size!34606 (list!17072 (xs!17554 (left!35025 (right!35355 t!4386))))) 512))))

(assert (=> d!1255450 (= (inv!62154 (left!35025 (right!35355 t!4386))) e!2647095)))

(declare-fun b!4262993 () Bool)

(declare-fun res!1752099 () Bool)

(assert (=> b!4262993 (=> (not res!1752099) (not e!2647095))))

(assert (=> b!4262993 (= res!1752099 (= (csize!28727 (left!35025 (right!35355 t!4386))) (size!34606 (list!17072 (xs!17554 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4262994 () Bool)

(assert (=> b!4262994 (= e!2647095 (and (> (csize!28727 (left!35025 (right!35355 t!4386))) 0) (<= (csize!28727 (left!35025 (right!35355 t!4386))) 512)))))

(assert (= (and d!1255450 res!1752098) b!4262993))

(assert (= (and b!4262993 res!1752099) b!4262994))

(assert (=> d!1255450 m!4851097))

(assert (=> d!1255450 m!4851097))

(declare-fun m!4852117 () Bool)

(assert (=> d!1255450 m!4852117))

(assert (=> b!4262993 m!4851097))

(assert (=> b!4262993 m!4851097))

(assert (=> b!4262993 m!4852117))

(assert (=> b!4262570 d!1255450))

(declare-fun d!1255452 () Bool)

(assert (=> d!1255452 (= (height!1872 (left!35025 (right!35355 t!4386))) (ite ((_ is Empty!14248) (left!35025 (right!35355 t!4386))) 0 (ite ((_ is Leaf!22018) (left!35025 (right!35355 t!4386))) 1 (cheight!14459 (left!35025 (right!35355 t!4386))))))))

(assert (=> b!4262464 d!1255452))

(declare-fun d!1255454 () Bool)

(assert (=> d!1255454 (= (height!1872 (right!35355 (right!35355 t!4386))) (ite ((_ is Empty!14248) (right!35355 (right!35355 t!4386))) 0 (ite ((_ is Leaf!22018) (right!35355 (right!35355 t!4386))) 1 (cheight!14459 (right!35355 (right!35355 t!4386))))))))

(assert (=> b!4262464 d!1255454))

(declare-fun d!1255456 () Bool)

(declare-fun lt!1511056 () Int)

(assert (=> d!1255456 (= lt!1511056 (size!34606 (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255456 (= lt!1511056 (ite ((_ is Empty!14248) (left!35025 t!4386)) 0 (ite ((_ is Leaf!22018) (left!35025 t!4386)) (csize!28727 (left!35025 t!4386)) (csize!28726 (left!35025 t!4386)))))))

(assert (=> d!1255456 (= (size!34608 (left!35025 t!4386)) lt!1511056)))

(declare-fun bs!599129 () Bool)

(assert (= bs!599129 d!1255456))

(assert (=> bs!599129 m!4850685))

(assert (=> bs!599129 m!4850685))

(assert (=> bs!599129 m!4851129))

(assert (=> d!1255126 d!1255456))

(declare-fun d!1255458 () Bool)

(declare-fun lt!1511057 () Int)

(assert (=> d!1255458 (= lt!1511057 (size!34606 (list!17068 (right!35355 t!4386))))))

(assert (=> d!1255458 (= lt!1511057 (ite ((_ is Empty!14248) (right!35355 t!4386)) 0 (ite ((_ is Leaf!22018) (right!35355 t!4386)) (csize!28727 (right!35355 t!4386)) (csize!28726 (right!35355 t!4386)))))))

(assert (=> d!1255458 (= (size!34608 (right!35355 t!4386)) lt!1511057)))

(declare-fun bs!599130 () Bool)

(assert (= bs!599130 d!1255458))

(assert (=> bs!599130 m!4850687))

(assert (=> bs!599130 m!4850687))

(assert (=> bs!599130 m!4851049))

(assert (=> d!1255126 d!1255458))

(declare-fun d!1255460 () Bool)

(declare-fun c!724289 () Bool)

(assert (=> d!1255460 (= c!724289 ((_ is Nil!47242) lt!1510953))))

(declare-fun e!2647096 () (InoxSet T!79420))

(assert (=> d!1255460 (= (content!7448 lt!1510953) e!2647096)))

(declare-fun b!4262995 () Bool)

(assert (=> b!4262995 (= e!2647096 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4262996 () Bool)

(assert (=> b!4262996 (= e!2647096 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510953) true) (content!7448 (t!353271 lt!1510953))))))

(assert (= (and d!1255460 c!724289) b!4262995))

(assert (= (and d!1255460 (not c!724289)) b!4262996))

(declare-fun m!4852119 () Bool)

(assert (=> b!4262996 m!4852119))

(declare-fun m!4852121 () Bool)

(assert (=> b!4262996 m!4852121))

(assert (=> d!1255092 d!1255460))

(declare-fun d!1255462 () Bool)

(declare-fun c!724290 () Bool)

(assert (=> d!1255462 (= c!724290 ((_ is Nil!47242) (list!17068 (left!35025 t!4386))))))

(declare-fun e!2647097 () (InoxSet T!79420))

(assert (=> d!1255462 (= (content!7448 (list!17068 (left!35025 t!4386))) e!2647097)))

(declare-fun b!4262997 () Bool)

(assert (=> b!4262997 (= e!2647097 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4262998 () Bool)

(assert (=> b!4262998 (= e!2647097 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (left!35025 t!4386))) true) (content!7448 (t!353271 (list!17068 (left!35025 t!4386))))))))

(assert (= (and d!1255462 c!724290) b!4262997))

(assert (= (and d!1255462 (not c!724290)) b!4262998))

(declare-fun m!4852123 () Bool)

(assert (=> b!4262998 m!4852123))

(declare-fun m!4852125 () Bool)

(assert (=> b!4262998 m!4852125))

(assert (=> d!1255092 d!1255462))

(declare-fun d!1255464 () Bool)

(declare-fun c!724291 () Bool)

(assert (=> d!1255464 (= c!724291 ((_ is Nil!47242) (list!17068 (right!35355 t!4386))))))

(declare-fun e!2647098 () (InoxSet T!79420))

(assert (=> d!1255464 (= (content!7448 (list!17068 (right!35355 t!4386))) e!2647098)))

(declare-fun b!4262999 () Bool)

(assert (=> b!4262999 (= e!2647098 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263000 () Bool)

(assert (=> b!4263000 (= e!2647098 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (right!35355 t!4386))) true) (content!7448 (t!353271 (list!17068 (right!35355 t!4386))))))))

(assert (= (and d!1255464 c!724291) b!4262999))

(assert (= (and d!1255464 (not c!724291)) b!4263000))

(declare-fun m!4852127 () Bool)

(assert (=> b!4263000 m!4852127))

(declare-fun m!4852129 () Bool)

(assert (=> b!4263000 m!4852129))

(assert (=> d!1255092 d!1255464))

(declare-fun d!1255466 () Bool)

(declare-fun res!1752100 () Bool)

(declare-fun e!2647099 () Bool)

(assert (=> d!1255466 (=> (not res!1752100) (not e!2647099))))

(assert (=> d!1255466 (= res!1752100 (= (csize!28726 (right!35355 (left!35025 t!4386))) (+ (size!34608 (left!35025 (right!35355 (left!35025 t!4386)))) (size!34608 (right!35355 (right!35355 (left!35025 t!4386)))))))))

(assert (=> d!1255466 (= (inv!62153 (right!35355 (left!35025 t!4386))) e!2647099)))

(declare-fun b!4263001 () Bool)

(declare-fun res!1752101 () Bool)

(assert (=> b!4263001 (=> (not res!1752101) (not e!2647099))))

(assert (=> b!4263001 (= res!1752101 (and (not (= (left!35025 (right!35355 (left!35025 t!4386))) Empty!14248)) (not (= (right!35355 (right!35355 (left!35025 t!4386))) Empty!14248))))))

(declare-fun b!4263002 () Bool)

(declare-fun res!1752102 () Bool)

(assert (=> b!4263002 (=> (not res!1752102) (not e!2647099))))

(assert (=> b!4263002 (= res!1752102 (= (cheight!14459 (right!35355 (left!35025 t!4386))) (+ (max!0 (height!1872 (left!35025 (right!35355 (left!35025 t!4386)))) (height!1872 (right!35355 (right!35355 (left!35025 t!4386))))) 1)))))

(declare-fun b!4263003 () Bool)

(assert (=> b!4263003 (= e!2647099 (<= 0 (cheight!14459 (right!35355 (left!35025 t!4386)))))))

(assert (= (and d!1255466 res!1752100) b!4263001))

(assert (= (and b!4263001 res!1752101) b!4263002))

(assert (= (and b!4263002 res!1752102) b!4263003))

(declare-fun m!4852131 () Bool)

(assert (=> d!1255466 m!4852131))

(declare-fun m!4852133 () Bool)

(assert (=> d!1255466 m!4852133))

(assert (=> b!4263002 m!4851973))

(assert (=> b!4263002 m!4851975))

(assert (=> b!4263002 m!4851973))

(assert (=> b!4263002 m!4851975))

(declare-fun m!4852135 () Bool)

(assert (=> b!4263002 m!4852135))

(assert (=> b!4262711 d!1255466))

(declare-fun d!1255468 () Bool)

(declare-fun lt!1511058 () IArray!28503)

(assert (=> d!1255468 (= lt!1511058 (IArray!28504 (map!9674 (list!17072 (xs!17554 (right!35355 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255468 (= lt!1511058 (choose!25989 (xs!17554 (right!35355 (left!35025 t!4386))) f!428))))

(assert (=> d!1255468 (= (map!9676 (xs!17554 (right!35355 (left!35025 t!4386))) f!428) lt!1511058)))

(declare-fun bs!599131 () Bool)

(assert (= bs!599131 d!1255468))

(assert (=> bs!599131 m!4851441))

(assert (=> bs!599131 m!4851441))

(declare-fun m!4852137 () Bool)

(assert (=> bs!599131 m!4852137))

(declare-fun m!4852139 () Bool)

(assert (=> bs!599131 m!4852139))

(assert (=> b!4262670 d!1255468))

(declare-fun b!4263004 () Bool)

(declare-fun res!1752104 () Bool)

(declare-fun e!2647101 () Bool)

(assert (=> b!4263004 (=> (not res!1752104) (not e!2647101))))

(assert (=> b!4263004 (= res!1752104 (isBalanced!3808 (left!35026 (left!35026 (right!35356 lt!1510890)))))))

(declare-fun b!4263005 () Bool)

(declare-fun res!1752106 () Bool)

(assert (=> b!4263005 (=> (not res!1752106) (not e!2647101))))

(assert (=> b!4263005 (= res!1752106 (isBalanced!3808 (right!35356 (left!35026 (right!35356 lt!1510890)))))))

(declare-fun d!1255470 () Bool)

(declare-fun res!1752103 () Bool)

(declare-fun e!2647100 () Bool)

(assert (=> d!1255470 (=> res!1752103 e!2647100)))

(assert (=> d!1255470 (= res!1752103 (not ((_ is Node!14249) (left!35026 (right!35356 lt!1510890)))))))

(assert (=> d!1255470 (= (isBalanced!3808 (left!35026 (right!35356 lt!1510890))) e!2647100)))

(declare-fun b!4263006 () Bool)

(declare-fun res!1752105 () Bool)

(assert (=> b!4263006 (=> (not res!1752105) (not e!2647101))))

(assert (=> b!4263006 (= res!1752105 (not (isEmpty!27986 (left!35026 (left!35026 (right!35356 lt!1510890))))))))

(declare-fun b!4263007 () Bool)

(assert (=> b!4263007 (= e!2647101 (not (isEmpty!27986 (right!35356 (left!35026 (right!35356 lt!1510890))))))))

(declare-fun b!4263008 () Bool)

(assert (=> b!4263008 (= e!2647100 e!2647101)))

(declare-fun res!1752108 () Bool)

(assert (=> b!4263008 (=> (not res!1752108) (not e!2647101))))

(assert (=> b!4263008 (= res!1752108 (<= (- 1) (- (height!1871 (left!35026 (left!35026 (right!35356 lt!1510890)))) (height!1871 (right!35356 (left!35026 (right!35356 lt!1510890)))))))))

(declare-fun b!4263009 () Bool)

(declare-fun res!1752107 () Bool)

(assert (=> b!4263009 (=> (not res!1752107) (not e!2647101))))

(assert (=> b!4263009 (= res!1752107 (<= (- (height!1871 (left!35026 (left!35026 (right!35356 lt!1510890)))) (height!1871 (right!35356 (left!35026 (right!35356 lt!1510890))))) 1))))

(assert (= (and d!1255470 (not res!1752103)) b!4263008))

(assert (= (and b!4263008 res!1752108) b!4263009))

(assert (= (and b!4263009 res!1752107) b!4263004))

(assert (= (and b!4263004 res!1752104) b!4263005))

(assert (= (and b!4263005 res!1752106) b!4263006))

(assert (= (and b!4263006 res!1752105) b!4263007))

(declare-fun m!4852141 () Bool)

(assert (=> b!4263004 m!4852141))

(declare-fun m!4852143 () Bool)

(assert (=> b!4263007 m!4852143))

(declare-fun m!4852145 () Bool)

(assert (=> b!4263006 m!4852145))

(declare-fun m!4852147 () Bool)

(assert (=> b!4263009 m!4852147))

(declare-fun m!4852149 () Bool)

(assert (=> b!4263009 m!4852149))

(assert (=> b!4263008 m!4852147))

(assert (=> b!4263008 m!4852149))

(declare-fun m!4852151 () Bool)

(assert (=> b!4263005 m!4852151))

(assert (=> b!4262530 d!1255470))

(declare-fun d!1255472 () Bool)

(assert (=> d!1255472 (= (height!1871 (left!35026 lt!1510917)) (ite ((_ is Empty!14249) (left!35026 lt!1510917)) 0 (ite ((_ is Leaf!22019) (left!35026 lt!1510917)) 1 (cheight!14460 (left!35026 lt!1510917)))))))

(assert (=> b!4262601 d!1255472))

(declare-fun d!1255474 () Bool)

(assert (=> d!1255474 (= (height!1871 (right!35356 lt!1510917)) (ite ((_ is Empty!14249) (right!35356 lt!1510917)) 0 (ite ((_ is Leaf!22019) (right!35356 lt!1510917)) 1 (cheight!14460 (right!35356 lt!1510917)))))))

(assert (=> b!4262601 d!1255474))

(declare-fun b!4263012 () Bool)

(declare-fun res!1752109 () Bool)

(declare-fun e!2647102 () Bool)

(assert (=> b!4263012 (=> (not res!1752109) (not e!2647102))))

(declare-fun lt!1511059 () List!47367)

(assert (=> b!4263012 (= res!1752109 (= (size!34605 lt!1511059) (+ (size!34605 (list!17067 (left!35026 (left!35026 lt!1510890)))) (size!34605 (list!17067 (right!35356 (left!35026 lt!1510890)))))))))

(declare-fun b!4263011 () Bool)

(declare-fun e!2647103 () List!47367)

(assert (=> b!4263011 (= e!2647103 (Cons!47243 (h!52663 (list!17067 (left!35026 (left!35026 lt!1510890)))) (++!12036 (t!353272 (list!17067 (left!35026 (left!35026 lt!1510890)))) (list!17067 (right!35356 (left!35026 lt!1510890))))))))

(declare-fun b!4263013 () Bool)

(assert (=> b!4263013 (= e!2647102 (or (not (= (list!17067 (right!35356 (left!35026 lt!1510890))) Nil!47243)) (= lt!1511059 (list!17067 (left!35026 (left!35026 lt!1510890))))))))

(declare-fun b!4263010 () Bool)

(assert (=> b!4263010 (= e!2647103 (list!17067 (right!35356 (left!35026 lt!1510890))))))

(declare-fun d!1255476 () Bool)

(assert (=> d!1255476 e!2647102))

(declare-fun res!1752110 () Bool)

(assert (=> d!1255476 (=> (not res!1752110) (not e!2647102))))

(assert (=> d!1255476 (= res!1752110 (= (content!7447 lt!1511059) ((_ map or) (content!7447 (list!17067 (left!35026 (left!35026 lt!1510890)))) (content!7447 (list!17067 (right!35356 (left!35026 lt!1510890)))))))))

(assert (=> d!1255476 (= lt!1511059 e!2647103)))

(declare-fun c!724292 () Bool)

(assert (=> d!1255476 (= c!724292 ((_ is Nil!47243) (list!17067 (left!35026 (left!35026 lt!1510890)))))))

(assert (=> d!1255476 (= (++!12036 (list!17067 (left!35026 (left!35026 lt!1510890))) (list!17067 (right!35356 (left!35026 lt!1510890)))) lt!1511059)))

(assert (= (and d!1255476 c!724292) b!4263010))

(assert (= (and d!1255476 (not c!724292)) b!4263011))

(assert (= (and d!1255476 res!1752110) b!4263012))

(assert (= (and b!4263012 res!1752109) b!4263013))

(declare-fun m!4852153 () Bool)

(assert (=> b!4263012 m!4852153))

(assert (=> b!4263012 m!4851235))

(declare-fun m!4852155 () Bool)

(assert (=> b!4263012 m!4852155))

(assert (=> b!4263012 m!4851237))

(declare-fun m!4852157 () Bool)

(assert (=> b!4263012 m!4852157))

(assert (=> b!4263011 m!4851237))

(declare-fun m!4852159 () Bool)

(assert (=> b!4263011 m!4852159))

(declare-fun m!4852161 () Bool)

(assert (=> d!1255476 m!4852161))

(assert (=> d!1255476 m!4851235))

(declare-fun m!4852163 () Bool)

(assert (=> d!1255476 m!4852163))

(assert (=> d!1255476 m!4851237))

(declare-fun m!4852165 () Bool)

(assert (=> d!1255476 m!4852165))

(assert (=> b!4262559 d!1255476))

(declare-fun b!4263014 () Bool)

(declare-fun e!2647104 () List!47367)

(assert (=> b!4263014 (= e!2647104 Nil!47243)))

(declare-fun b!4263016 () Bool)

(declare-fun e!2647105 () List!47367)

(assert (=> b!4263016 (= e!2647105 (list!17070 (xs!17555 (left!35026 (left!35026 lt!1510890)))))))

(declare-fun b!4263017 () Bool)

(assert (=> b!4263017 (= e!2647105 (++!12036 (list!17067 (left!35026 (left!35026 (left!35026 lt!1510890)))) (list!17067 (right!35356 (left!35026 (left!35026 lt!1510890))))))))

(declare-fun b!4263015 () Bool)

(assert (=> b!4263015 (= e!2647104 e!2647105)))

(declare-fun c!724294 () Bool)

(assert (=> b!4263015 (= c!724294 ((_ is Leaf!22019) (left!35026 (left!35026 lt!1510890))))))

(declare-fun d!1255478 () Bool)

(declare-fun c!724293 () Bool)

(assert (=> d!1255478 (= c!724293 ((_ is Empty!14249) (left!35026 (left!35026 lt!1510890))))))

(assert (=> d!1255478 (= (list!17067 (left!35026 (left!35026 lt!1510890))) e!2647104)))

(assert (= (and d!1255478 c!724293) b!4263014))

(assert (= (and d!1255478 (not c!724293)) b!4263015))

(assert (= (and b!4263015 c!724294) b!4263016))

(assert (= (and b!4263015 (not c!724294)) b!4263017))

(declare-fun m!4852167 () Bool)

(assert (=> b!4263016 m!4852167))

(declare-fun m!4852169 () Bool)

(assert (=> b!4263017 m!4852169))

(declare-fun m!4852171 () Bool)

(assert (=> b!4263017 m!4852171))

(assert (=> b!4263017 m!4852169))

(assert (=> b!4263017 m!4852171))

(declare-fun m!4852173 () Bool)

(assert (=> b!4263017 m!4852173))

(assert (=> b!4262559 d!1255478))

(declare-fun b!4263018 () Bool)

(declare-fun e!2647106 () List!47367)

(assert (=> b!4263018 (= e!2647106 Nil!47243)))

(declare-fun b!4263020 () Bool)

(declare-fun e!2647107 () List!47367)

(assert (=> b!4263020 (= e!2647107 (list!17070 (xs!17555 (right!35356 (left!35026 lt!1510890)))))))

(declare-fun b!4263021 () Bool)

(assert (=> b!4263021 (= e!2647107 (++!12036 (list!17067 (left!35026 (right!35356 (left!35026 lt!1510890)))) (list!17067 (right!35356 (right!35356 (left!35026 lt!1510890))))))))

(declare-fun b!4263019 () Bool)

(assert (=> b!4263019 (= e!2647106 e!2647107)))

(declare-fun c!724296 () Bool)

(assert (=> b!4263019 (= c!724296 ((_ is Leaf!22019) (right!35356 (left!35026 lt!1510890))))))

(declare-fun d!1255480 () Bool)

(declare-fun c!724295 () Bool)

(assert (=> d!1255480 (= c!724295 ((_ is Empty!14249) (right!35356 (left!35026 lt!1510890))))))

(assert (=> d!1255480 (= (list!17067 (right!35356 (left!35026 lt!1510890))) e!2647106)))

(assert (= (and d!1255480 c!724295) b!4263018))

(assert (= (and d!1255480 (not c!724295)) b!4263019))

(assert (= (and b!4263019 c!724296) b!4263020))

(assert (= (and b!4263019 (not c!724296)) b!4263021))

(declare-fun m!4852175 () Bool)

(assert (=> b!4263020 m!4852175))

(declare-fun m!4852177 () Bool)

(assert (=> b!4263021 m!4852177))

(declare-fun m!4852179 () Bool)

(assert (=> b!4263021 m!4852179))

(assert (=> b!4263021 m!4852177))

(assert (=> b!4263021 m!4852179))

(declare-fun m!4852181 () Bool)

(assert (=> b!4263021 m!4852181))

(assert (=> b!4262559 d!1255480))

(declare-fun b!4263025 () Bool)

(declare-fun e!2647109 () Bool)

(declare-fun lt!1511060 () List!47366)

(assert (=> b!4263025 (= e!2647109 (or (not (= (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) Nil!47242)) (= lt!1511060 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))))))))

(declare-fun b!4263024 () Bool)

(declare-fun res!1752112 () Bool)

(assert (=> b!4263024 (=> (not res!1752112) (not e!2647109))))

(assert (=> b!4263024 (= res!1752112 (= (size!34606 lt!1511060) (+ (size!34606 (list!17068 (left!35025 (right!35355 (right!35355 t!4386))))) (size!34606 (list!17068 (right!35355 (right!35355 (right!35355 t!4386))))))))))

(declare-fun d!1255482 () Bool)

(assert (=> d!1255482 e!2647109))

(declare-fun res!1752111 () Bool)

(assert (=> d!1255482 (=> (not res!1752111) (not e!2647109))))

(assert (=> d!1255482 (= res!1752111 (= (content!7448 lt!1511060) ((_ map or) (content!7448 (list!17068 (left!35025 (right!35355 (right!35355 t!4386))))) (content!7448 (list!17068 (right!35355 (right!35355 (right!35355 t!4386))))))))))

(declare-fun e!2647108 () List!47366)

(assert (=> d!1255482 (= lt!1511060 e!2647108)))

(declare-fun c!724297 () Bool)

(assert (=> d!1255482 (= c!724297 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 (right!35355 t!4386))))))))

(assert (=> d!1255482 (= (++!12035 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386))))) lt!1511060)))

(declare-fun b!4263022 () Bool)

(assert (=> b!4263022 (= e!2647108 (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263023 () Bool)

(assert (=> b!4263023 (= e!2647108 (Cons!47242 (h!52662 (list!17068 (left!35025 (right!35355 (right!35355 t!4386))))) (++!12035 (t!353271 (list!17068 (left!35025 (right!35355 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))))))))

(assert (= (and d!1255482 c!724297) b!4263022))

(assert (= (and d!1255482 (not c!724297)) b!4263023))

(assert (= (and d!1255482 res!1752111) b!4263024))

(assert (= (and b!4263024 res!1752112) b!4263025))

(declare-fun m!4852183 () Bool)

(assert (=> b!4263024 m!4852183))

(assert (=> b!4263024 m!4851099))

(declare-fun m!4852185 () Bool)

(assert (=> b!4263024 m!4852185))

(assert (=> b!4263024 m!4851101))

(declare-fun m!4852187 () Bool)

(assert (=> b!4263024 m!4852187))

(declare-fun m!4852189 () Bool)

(assert (=> d!1255482 m!4852189))

(assert (=> d!1255482 m!4851099))

(declare-fun m!4852191 () Bool)

(assert (=> d!1255482 m!4852191))

(assert (=> d!1255482 m!4851101))

(declare-fun m!4852193 () Bool)

(assert (=> d!1255482 m!4852193))

(assert (=> b!4263023 m!4851101))

(declare-fun m!4852195 () Bool)

(assert (=> b!4263023 m!4852195))

(assert (=> b!4262490 d!1255482))

(declare-fun b!4263029 () Bool)

(declare-fun e!2647111 () List!47366)

(assert (=> b!4263029 (= e!2647111 (++!12035 (list!17068 (left!35025 (left!35025 (right!35355 (right!35355 t!4386))))) (list!17068 (right!35355 (left!35025 (right!35355 (right!35355 t!4386)))))))))

(declare-fun b!4263027 () Bool)

(declare-fun e!2647110 () List!47366)

(assert (=> b!4263027 (= e!2647110 e!2647111)))

(declare-fun c!724299 () Bool)

(assert (=> b!4263027 (= c!724299 ((_ is Leaf!22018) (left!35025 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263026 () Bool)

(assert (=> b!4263026 (= e!2647110 Nil!47242)))

(declare-fun b!4263028 () Bool)

(assert (=> b!4263028 (= e!2647111 (list!17072 (xs!17554 (left!35025 (right!35355 (right!35355 t!4386))))))))

(declare-fun d!1255484 () Bool)

(declare-fun c!724298 () Bool)

(assert (=> d!1255484 (= c!724298 ((_ is Empty!14248) (left!35025 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255484 (= (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) e!2647110)))

(assert (= (and d!1255484 c!724298) b!4263026))

(assert (= (and d!1255484 (not c!724298)) b!4263027))

(assert (= (and b!4263027 c!724299) b!4263028))

(assert (= (and b!4263027 (not c!724299)) b!4263029))

(declare-fun m!4852197 () Bool)

(assert (=> b!4263029 m!4852197))

(declare-fun m!4852199 () Bool)

(assert (=> b!4263029 m!4852199))

(assert (=> b!4263029 m!4852197))

(assert (=> b!4263029 m!4852199))

(declare-fun m!4852201 () Bool)

(assert (=> b!4263029 m!4852201))

(declare-fun m!4852203 () Bool)

(assert (=> b!4263028 m!4852203))

(assert (=> b!4262490 d!1255484))

(declare-fun b!4263033 () Bool)

(declare-fun e!2647113 () List!47366)

(assert (=> b!4263033 (= e!2647113 (++!12035 (list!17068 (left!35025 (right!35355 (right!35355 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 (right!35355 (right!35355 t!4386)))))))))

(declare-fun b!4263031 () Bool)

(declare-fun e!2647112 () List!47366)

(assert (=> b!4263031 (= e!2647112 e!2647113)))

(declare-fun c!724301 () Bool)

(assert (=> b!4263031 (= c!724301 ((_ is Leaf!22018) (right!35355 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263030 () Bool)

(assert (=> b!4263030 (= e!2647112 Nil!47242)))

(declare-fun b!4263032 () Bool)

(assert (=> b!4263032 (= e!2647113 (list!17072 (xs!17554 (right!35355 (right!35355 (right!35355 t!4386))))))))

(declare-fun d!1255486 () Bool)

(declare-fun c!724300 () Bool)

(assert (=> d!1255486 (= c!724300 ((_ is Empty!14248) (right!35355 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255486 (= (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) e!2647112)))

(assert (= (and d!1255486 c!724300) b!4263030))

(assert (= (and d!1255486 (not c!724300)) b!4263031))

(assert (= (and b!4263031 c!724301) b!4263032))

(assert (= (and b!4263031 (not c!724301)) b!4263033))

(declare-fun m!4852205 () Bool)

(assert (=> b!4263033 m!4852205))

(declare-fun m!4852207 () Bool)

(assert (=> b!4263033 m!4852207))

(assert (=> b!4263033 m!4852205))

(assert (=> b!4263033 m!4852207))

(declare-fun m!4852209 () Bool)

(assert (=> b!4263033 m!4852209))

(declare-fun m!4852211 () Bool)

(assert (=> b!4263032 m!4852211))

(assert (=> b!4262490 d!1255486))

(declare-fun d!1255488 () Bool)

(declare-fun lt!1511061 () Bool)

(assert (=> d!1255488 (= lt!1511061 (isEmpty!27990 (list!17067 (left!35026 lt!1510912))))))

(assert (=> d!1255488 (= lt!1511061 (= (size!34607 (left!35026 lt!1510912)) 0))))

(assert (=> d!1255488 (= (isEmpty!27986 (left!35026 lt!1510912)) lt!1511061)))

(declare-fun bs!599132 () Bool)

(assert (= bs!599132 d!1255488))

(assert (=> bs!599132 m!4851141))

(assert (=> bs!599132 m!4851141))

(declare-fun m!4852213 () Bool)

(assert (=> bs!599132 m!4852213))

(declare-fun m!4852215 () Bool)

(assert (=> bs!599132 m!4852215))

(assert (=> b!4262618 d!1255488))

(assert (=> b!4262478 d!1255388))

(declare-fun d!1255490 () Bool)

(assert (=> d!1255490 (= ($colon$colon!633 (map!9674 (t!353271 (t!353271 lt!1510889)) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510889)))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510889))) (map!9674 (t!353271 (t!353271 lt!1510889)) f!428)))))

(assert (=> b!4262529 d!1255490))

(declare-fun d!1255492 () Bool)

(declare-fun lt!1511062 () List!47367)

(assert (=> d!1255492 (= (size!34605 lt!1511062) (size!34606 (t!353271 (t!353271 lt!1510889))))))

(declare-fun e!2647114 () List!47367)

(assert (=> d!1255492 (= lt!1511062 e!2647114)))

(declare-fun c!724302 () Bool)

(assert (=> d!1255492 (= c!724302 ((_ is Nil!47242) (t!353271 (t!353271 lt!1510889))))))

(assert (=> d!1255492 (= (map!9674 (t!353271 (t!353271 lt!1510889)) f!428) lt!1511062)))

(declare-fun b!4263034 () Bool)

(assert (=> b!4263034 (= e!2647114 Nil!47243)))

(declare-fun b!4263035 () Bool)

(assert (=> b!4263035 (= e!2647114 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (t!353271 lt!1510889))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (t!353271 lt!1510889))))))))

(assert (= (and d!1255492 c!724302) b!4263034))

(assert (= (and d!1255492 (not c!724302)) b!4263035))

(declare-fun b_lambda!125905 () Bool)

(assert (=> (not b_lambda!125905) (not b!4263035)))

(declare-fun t!353341 () Bool)

(declare-fun tb!256993 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353341) tb!256993))

(declare-fun result!313570 () Bool)

(assert (=> tb!256993 (= result!313570 tp_is_empty!22881)))

(assert (=> b!4263035 t!353341))

(declare-fun b_and!337803 () Bool)

(assert (= b_and!337801 (and (=> t!353341 result!313570) b_and!337803)))

(declare-fun m!4852217 () Bool)

(assert (=> d!1255492 m!4852217))

(assert (=> d!1255492 m!4851957))

(declare-fun m!4852219 () Bool)

(assert (=> b!4263035 m!4852219))

(declare-fun m!4852221 () Bool)

(assert (=> b!4263035 m!4852221))

(assert (=> b!4263035 m!4852219))

(assert (=> b!4263035 m!4852221))

(declare-fun m!4852223 () Bool)

(assert (=> b!4263035 m!4852223))

(assert (=> b!4262529 d!1255492))

(declare-fun d!1255494 () Bool)

(declare-fun c!724303 () Bool)

(assert (=> d!1255494 (= c!724303 ((_ is Nil!47243) lt!1510963))))

(declare-fun e!2647115 () (InoxSet B!2825))

(assert (=> d!1255494 (= (content!7447 lt!1510963) e!2647115)))

(declare-fun b!4263036 () Bool)

(assert (=> b!4263036 (= e!2647115 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4263037 () Bool)

(assert (=> b!4263037 (= e!2647115 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 lt!1510963) true) (content!7447 (t!353272 lt!1510963))))))

(assert (= (and d!1255494 c!724303) b!4263036))

(assert (= (and d!1255494 (not c!724303)) b!4263037))

(declare-fun m!4852225 () Bool)

(assert (=> b!4263037 m!4852225))

(declare-fun m!4852227 () Bool)

(assert (=> b!4263037 m!4852227))

(assert (=> d!1255144 d!1255494))

(assert (=> d!1255144 d!1255394))

(assert (=> d!1255144 d!1255240))

(declare-fun d!1255496 () Bool)

(declare-fun res!1752113 () Bool)

(declare-fun e!2647116 () Bool)

(assert (=> d!1255496 (=> (not res!1752113) (not e!2647116))))

(assert (=> d!1255496 (= res!1752113 (<= (size!34606 (list!17072 (xs!17554 (right!35355 (right!35355 t!4386))))) 512))))

(assert (=> d!1255496 (= (inv!62154 (right!35355 (right!35355 t!4386))) e!2647116)))

(declare-fun b!4263038 () Bool)

(declare-fun res!1752114 () Bool)

(assert (=> b!4263038 (=> (not res!1752114) (not e!2647116))))

(assert (=> b!4263038 (= res!1752114 (= (csize!28727 (right!35355 (right!35355 t!4386))) (size!34606 (list!17072 (xs!17554 (right!35355 (right!35355 t!4386)))))))))

(declare-fun b!4263039 () Bool)

(assert (=> b!4263039 (= e!2647116 (and (> (csize!28727 (right!35355 (right!35355 t!4386))) 0) (<= (csize!28727 (right!35355 (right!35355 t!4386))) 512)))))

(assert (= (and d!1255496 res!1752113) b!4263038))

(assert (= (and b!4263038 res!1752114) b!4263039))

(assert (=> d!1255496 m!4851105))

(assert (=> d!1255496 m!4851105))

(declare-fun m!4852229 () Bool)

(assert (=> d!1255496 m!4852229))

(assert (=> b!4263038 m!4851105))

(assert (=> b!4263038 m!4851105))

(assert (=> b!4263038 m!4852229))

(assert (=> b!4262573 d!1255496))

(declare-fun d!1255498 () Bool)

(declare-fun lt!1511063 () IArray!28503)

(assert (=> d!1255498 (= lt!1511063 (IArray!28504 (map!9674 (list!17072 (xs!17554 (right!35355 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255498 (= lt!1511063 (choose!25989 (xs!17554 (right!35355 (right!35355 t!4386))) f!428))))

(assert (=> d!1255498 (= (map!9676 (xs!17554 (right!35355 (right!35355 t!4386))) f!428) lt!1511063)))

(declare-fun bs!599133 () Bool)

(assert (= bs!599133 d!1255498))

(assert (=> bs!599133 m!4851105))

(assert (=> bs!599133 m!4851105))

(declare-fun m!4852231 () Bool)

(assert (=> bs!599133 m!4852231))

(declare-fun m!4852233 () Bool)

(assert (=> bs!599133 m!4852233))

(assert (=> b!4262630 d!1255498))

(declare-fun d!1255500 () Bool)

(assert (=> d!1255500 (= (inv!62150 (xs!17554 (left!35025 (right!35355 t!4386)))) (<= (size!34606 (innerList!14308 (xs!17554 (left!35025 (right!35355 t!4386))))) 2147483647))))

(declare-fun bs!599134 () Bool)

(assert (= bs!599134 d!1255500))

(declare-fun m!4852235 () Bool)

(assert (=> bs!599134 m!4852235))

(assert (=> b!4262725 d!1255500))

(declare-fun d!1255502 () Bool)

(declare-fun lt!1511064 () Int)

(assert (=> d!1255502 (>= lt!1511064 0)))

(declare-fun e!2647117 () Int)

(assert (=> d!1255502 (= lt!1511064 e!2647117)))

(declare-fun c!724304 () Bool)

(assert (=> d!1255502 (= c!724304 ((_ is Nil!47242) lt!1510953))))

(assert (=> d!1255502 (= (size!34606 lt!1510953) lt!1511064)))

(declare-fun b!4263040 () Bool)

(assert (=> b!4263040 (= e!2647117 0)))

(declare-fun b!4263041 () Bool)

(assert (=> b!4263041 (= e!2647117 (+ 1 (size!34606 (t!353271 lt!1510953))))))

(assert (= (and d!1255502 c!724304) b!4263040))

(assert (= (and d!1255502 (not c!724304)) b!4263041))

(declare-fun m!4852237 () Bool)

(assert (=> b!4263041 m!4852237))

(assert (=> b!4262501 d!1255502))

(declare-fun d!1255504 () Bool)

(declare-fun lt!1511065 () Int)

(assert (=> d!1255504 (>= lt!1511065 0)))

(declare-fun e!2647118 () Int)

(assert (=> d!1255504 (= lt!1511065 e!2647118)))

(declare-fun c!724305 () Bool)

(assert (=> d!1255504 (= c!724305 ((_ is Nil!47242) (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255504 (= (size!34606 (list!17068 (left!35025 t!4386))) lt!1511065)))

(declare-fun b!4263042 () Bool)

(assert (=> b!4263042 (= e!2647118 0)))

(declare-fun b!4263043 () Bool)

(assert (=> b!4263043 (= e!2647118 (+ 1 (size!34606 (t!353271 (list!17068 (left!35025 t!4386))))))))

(assert (= (and d!1255504 c!724305) b!4263042))

(assert (= (and d!1255504 (not c!724305)) b!4263043))

(declare-fun m!4852239 () Bool)

(assert (=> b!4263043 m!4852239))

(assert (=> b!4262501 d!1255504))

(declare-fun d!1255506 () Bool)

(declare-fun lt!1511066 () Int)

(assert (=> d!1255506 (>= lt!1511066 0)))

(declare-fun e!2647119 () Int)

(assert (=> d!1255506 (= lt!1511066 e!2647119)))

(declare-fun c!724306 () Bool)

(assert (=> d!1255506 (= c!724306 ((_ is Nil!47242) (list!17068 (right!35355 t!4386))))))

(assert (=> d!1255506 (= (size!34606 (list!17068 (right!35355 t!4386))) lt!1511066)))

(declare-fun b!4263044 () Bool)

(assert (=> b!4263044 (= e!2647119 0)))

(declare-fun b!4263045 () Bool)

(assert (=> b!4263045 (= e!2647119 (+ 1 (size!34606 (t!353271 (list!17068 (right!35355 t!4386))))))))

(assert (= (and d!1255506 c!724306) b!4263044))

(assert (= (and d!1255506 (not c!724306)) b!4263045))

(declare-fun m!4852241 () Bool)

(assert (=> b!4263045 m!4852241))

(assert (=> b!4262501 d!1255506))

(declare-fun b!4263049 () Bool)

(declare-fun e!2647121 () Bool)

(declare-fun lt!1511067 () List!47366)

(assert (=> b!4263049 (= e!2647121 (or (not (= (list!17068 (right!35355 (left!35025 t!4386))) Nil!47242)) (= lt!1511067 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4263048 () Bool)

(declare-fun res!1752116 () Bool)

(assert (=> b!4263048 (=> (not res!1752116) (not e!2647121))))

(assert (=> b!4263048 (= res!1752116 (= (size!34606 lt!1511067) (+ (size!34606 (t!353271 (list!17068 (left!35025 (left!35025 t!4386))))) (size!34606 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(declare-fun d!1255508 () Bool)

(assert (=> d!1255508 e!2647121))

(declare-fun res!1752115 () Bool)

(assert (=> d!1255508 (=> (not res!1752115) (not e!2647121))))

(assert (=> d!1255508 (= res!1752115 (= (content!7448 lt!1511067) ((_ map or) (content!7448 (t!353271 (list!17068 (left!35025 (left!35025 t!4386))))) (content!7448 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(declare-fun e!2647120 () List!47366)

(assert (=> d!1255508 (= lt!1511067 e!2647120)))

(declare-fun c!724307 () Bool)

(assert (=> d!1255508 (= c!724307 ((_ is Nil!47242) (t!353271 (list!17068 (left!35025 (left!35025 t!4386))))))))

(assert (=> d!1255508 (= (++!12035 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 t!4386)))) lt!1511067)))

(declare-fun b!4263046 () Bool)

(assert (=> b!4263046 (= e!2647120 (list!17068 (right!35355 (left!35025 t!4386))))))

(declare-fun b!4263047 () Bool)

(assert (=> b!4263047 (= e!2647120 (Cons!47242 (h!52662 (t!353271 (list!17068 (left!35025 (left!35025 t!4386))))) (++!12035 (t!353271 (t!353271 (list!17068 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 t!4386))))))))

(assert (= (and d!1255508 c!724307) b!4263046))

(assert (= (and d!1255508 (not c!724307)) b!4263047))

(assert (= (and d!1255508 res!1752115) b!4263048))

(assert (= (and b!4263048 res!1752116) b!4263049))

(declare-fun m!4852243 () Bool)

(assert (=> b!4263048 m!4852243))

(declare-fun m!4852245 () Bool)

(assert (=> b!4263048 m!4852245))

(assert (=> b!4263048 m!4850827))

(assert (=> b!4263048 m!4851415))

(declare-fun m!4852247 () Bool)

(assert (=> d!1255508 m!4852247))

(declare-fun m!4852249 () Bool)

(assert (=> d!1255508 m!4852249))

(assert (=> d!1255508 m!4850827))

(assert (=> d!1255508 m!4851421))

(assert (=> b!4263047 m!4850827))

(declare-fun m!4852251 () Bool)

(assert (=> b!4263047 m!4852251))

(assert (=> b!4262641 d!1255508))

(declare-fun d!1255510 () Bool)

(declare-fun lt!1511068 () Bool)

(assert (=> d!1255510 (= lt!1511068 (isEmpty!27992 (list!17068 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255510 (= lt!1511068 (= (size!34608 (left!35025 (right!35355 t!4386))) 0))))

(assert (=> d!1255510 (= (isEmpty!27987 (left!35025 (right!35355 t!4386))) lt!1511068)))

(declare-fun bs!599135 () Bool)

(assert (= bs!599135 d!1255510))

(assert (=> bs!599135 m!4850877))

(assert (=> bs!599135 m!4850877))

(declare-fun m!4852253 () Bool)

(assert (=> bs!599135 m!4852253))

(assert (=> bs!599135 m!4851167))

(assert (=> b!4262465 d!1255510))

(declare-fun d!1255512 () Bool)

(declare-fun lt!1511069 () Int)

(assert (=> d!1255512 (= lt!1511069 (size!34606 (list!17068 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255512 (= lt!1511069 (ite ((_ is Empty!14248) (left!35025 (left!35025 t!4386))) 0 (ite ((_ is Leaf!22018) (left!35025 (left!35025 t!4386))) (csize!28727 (left!35025 (left!35025 t!4386))) (csize!28726 (left!35025 (left!35025 t!4386))))))))

(assert (=> d!1255512 (= (size!34608 (left!35025 (left!35025 t!4386))) lt!1511069)))

(declare-fun bs!599136 () Bool)

(assert (= bs!599136 d!1255512))

(assert (=> bs!599136 m!4850829))

(assert (=> bs!599136 m!4850829))

(assert (=> bs!599136 m!4851413))

(assert (=> d!1255122 d!1255512))

(declare-fun d!1255514 () Bool)

(declare-fun lt!1511070 () Int)

(assert (=> d!1255514 (= lt!1511070 (size!34606 (list!17068 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255514 (= lt!1511070 (ite ((_ is Empty!14248) (right!35355 (left!35025 t!4386))) 0 (ite ((_ is Leaf!22018) (right!35355 (left!35025 t!4386))) (csize!28727 (right!35355 (left!35025 t!4386))) (csize!28726 (right!35355 (left!35025 t!4386))))))))

(assert (=> d!1255514 (= (size!34608 (right!35355 (left!35025 t!4386))) lt!1511070)))

(declare-fun bs!599137 () Bool)

(assert (= bs!599137 d!1255514))

(assert (=> bs!599137 m!4850827))

(assert (=> bs!599137 m!4850827))

(assert (=> bs!599137 m!4851415))

(assert (=> d!1255122 d!1255514))

(declare-fun b!4263050 () Bool)

(declare-fun res!1752118 () Bool)

(declare-fun e!2647123 () Bool)

(assert (=> b!4263050 (=> (not res!1752118) (not e!2647123))))

(assert (=> b!4263050 (= res!1752118 (isBalanced!3808 (left!35026 (left!35026 (left!35026 lt!1510890)))))))

(declare-fun b!4263051 () Bool)

(declare-fun res!1752120 () Bool)

(assert (=> b!4263051 (=> (not res!1752120) (not e!2647123))))

(assert (=> b!4263051 (= res!1752120 (isBalanced!3808 (right!35356 (left!35026 (left!35026 lt!1510890)))))))

(declare-fun d!1255516 () Bool)

(declare-fun res!1752117 () Bool)

(declare-fun e!2647122 () Bool)

(assert (=> d!1255516 (=> res!1752117 e!2647122)))

(assert (=> d!1255516 (= res!1752117 (not ((_ is Node!14249) (left!35026 (left!35026 lt!1510890)))))))

(assert (=> d!1255516 (= (isBalanced!3808 (left!35026 (left!35026 lt!1510890))) e!2647122)))

(declare-fun b!4263052 () Bool)

(declare-fun res!1752119 () Bool)

(assert (=> b!4263052 (=> (not res!1752119) (not e!2647123))))

(assert (=> b!4263052 (= res!1752119 (not (isEmpty!27986 (left!35026 (left!35026 (left!35026 lt!1510890))))))))

(declare-fun b!4263053 () Bool)

(assert (=> b!4263053 (= e!2647123 (not (isEmpty!27986 (right!35356 (left!35026 (left!35026 lt!1510890))))))))

(declare-fun b!4263054 () Bool)

(assert (=> b!4263054 (= e!2647122 e!2647123)))

(declare-fun res!1752122 () Bool)

(assert (=> b!4263054 (=> (not res!1752122) (not e!2647123))))

(assert (=> b!4263054 (= res!1752122 (<= (- 1) (- (height!1871 (left!35026 (left!35026 (left!35026 lt!1510890)))) (height!1871 (right!35356 (left!35026 (left!35026 lt!1510890)))))))))

(declare-fun b!4263055 () Bool)

(declare-fun res!1752121 () Bool)

(assert (=> b!4263055 (=> (not res!1752121) (not e!2647123))))

(assert (=> b!4263055 (= res!1752121 (<= (- (height!1871 (left!35026 (left!35026 (left!35026 lt!1510890)))) (height!1871 (right!35356 (left!35026 (left!35026 lt!1510890))))) 1))))

(assert (= (and d!1255516 (not res!1752117)) b!4263054))

(assert (= (and b!4263054 res!1752122) b!4263055))

(assert (= (and b!4263055 res!1752121) b!4263050))

(assert (= (and b!4263050 res!1752118) b!4263051))

(assert (= (and b!4263051 res!1752120) b!4263052))

(assert (= (and b!4263052 res!1752119) b!4263053))

(declare-fun m!4852255 () Bool)

(assert (=> b!4263050 m!4852255))

(declare-fun m!4852257 () Bool)

(assert (=> b!4263053 m!4852257))

(declare-fun m!4852259 () Bool)

(assert (=> b!4263052 m!4852259))

(declare-fun m!4852261 () Bool)

(assert (=> b!4263055 m!4852261))

(declare-fun m!4852263 () Bool)

(assert (=> b!4263055 m!4852263))

(assert (=> b!4263054 m!4852261))

(assert (=> b!4263054 m!4852263))

(declare-fun m!4852265 () Bool)

(assert (=> b!4263051 m!4852265))

(assert (=> b!4262654 d!1255516))

(declare-fun d!1255518 () Bool)

(declare-fun lt!1511071 () Int)

(assert (=> d!1255518 (>= lt!1511071 0)))

(declare-fun e!2647124 () Int)

(assert (=> d!1255518 (= lt!1511071 e!2647124)))

(declare-fun c!724308 () Bool)

(assert (=> d!1255518 (= c!724308 ((_ is Nil!47243) lt!1510949))))

(assert (=> d!1255518 (= (size!34605 lt!1510949) lt!1511071)))

(declare-fun b!4263056 () Bool)

(assert (=> b!4263056 (= e!2647124 0)))

(declare-fun b!4263057 () Bool)

(assert (=> b!4263057 (= e!2647124 (+ 1 (size!34605 (t!353272 lt!1510949))))))

(assert (= (and d!1255518 c!724308) b!4263056))

(assert (= (and d!1255518 (not c!724308)) b!4263057))

(declare-fun m!4852267 () Bool)

(assert (=> b!4263057 m!4852267))

(assert (=> d!1255086 d!1255518))

(declare-fun d!1255520 () Bool)

(declare-fun lt!1511072 () Int)

(assert (=> d!1255520 (>= lt!1511072 0)))

(declare-fun e!2647125 () Int)

(assert (=> d!1255520 (= lt!1511072 e!2647125)))

(declare-fun c!724309 () Bool)

(assert (=> d!1255520 (= c!724309 ((_ is Nil!47242) (t!353271 (list!17068 t!4386))))))

(assert (=> d!1255520 (= (size!34606 (t!353271 (list!17068 t!4386))) lt!1511072)))

(declare-fun b!4263058 () Bool)

(assert (=> b!4263058 (= e!2647125 0)))

(declare-fun b!4263059 () Bool)

(assert (=> b!4263059 (= e!2647125 (+ 1 (size!34606 (t!353271 (t!353271 (list!17068 t!4386))))))))

(assert (= (and d!1255520 c!724309) b!4263058))

(assert (= (and d!1255520 (not c!724309)) b!4263059))

(declare-fun m!4852269 () Bool)

(assert (=> b!4263059 m!4852269))

(assert (=> d!1255086 d!1255520))

(declare-fun d!1255522 () Bool)

(declare-fun c!724310 () Bool)

(assert (=> d!1255522 (= c!724310 ((_ is Nil!47242) (t!353271 lt!1510891)))))

(declare-fun e!2647126 () (InoxSet T!79420))

(assert (=> d!1255522 (= (content!7448 (t!353271 lt!1510891)) e!2647126)))

(declare-fun b!4263060 () Bool)

(assert (=> b!4263060 (= e!2647126 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263061 () Bool)

(assert (=> b!4263061 (= e!2647126 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (t!353271 lt!1510891)) true) (content!7448 (t!353271 (t!353271 lt!1510891)))))))

(assert (= (and d!1255522 c!724310) b!4263060))

(assert (= (and d!1255522 (not c!724310)) b!4263061))

(declare-fun m!4852271 () Bool)

(assert (=> b!4263061 m!4852271))

(declare-fun m!4852273 () Bool)

(assert (=> b!4263061 m!4852273))

(assert (=> b!4262593 d!1255522))

(declare-fun b!4263064 () Bool)

(declare-fun res!1752123 () Bool)

(declare-fun e!2647127 () Bool)

(assert (=> b!4263064 (=> (not res!1752123) (not e!2647127))))

(declare-fun lt!1511073 () List!47367)

(assert (=> b!4263064 (= res!1752123 (= (size!34605 lt!1511073) (+ (size!34605 (t!353272 (list!17067 (left!35026 lt!1510890)))) (size!34605 (list!17067 (right!35356 lt!1510890))))))))

(declare-fun b!4263063 () Bool)

(declare-fun e!2647128 () List!47367)

(assert (=> b!4263063 (= e!2647128 (Cons!47243 (h!52663 (t!353272 (list!17067 (left!35026 lt!1510890)))) (++!12036 (t!353272 (t!353272 (list!17067 (left!35026 lt!1510890)))) (list!17067 (right!35356 lt!1510890)))))))

(declare-fun b!4263065 () Bool)

(assert (=> b!4263065 (= e!2647127 (or (not (= (list!17067 (right!35356 lt!1510890)) Nil!47243)) (= lt!1511073 (t!353272 (list!17067 (left!35026 lt!1510890))))))))

(declare-fun b!4263062 () Bool)

(assert (=> b!4263062 (= e!2647128 (list!17067 (right!35356 lt!1510890)))))

(declare-fun d!1255524 () Bool)

(assert (=> d!1255524 e!2647127))

(declare-fun res!1752124 () Bool)

(assert (=> d!1255524 (=> (not res!1752124) (not e!2647127))))

(assert (=> d!1255524 (= res!1752124 (= (content!7447 lt!1511073) ((_ map or) (content!7447 (t!353272 (list!17067 (left!35026 lt!1510890)))) (content!7447 (list!17067 (right!35356 lt!1510890))))))))

(assert (=> d!1255524 (= lt!1511073 e!2647128)))

(declare-fun c!724311 () Bool)

(assert (=> d!1255524 (= c!724311 ((_ is Nil!47243) (t!353272 (list!17067 (left!35026 lt!1510890)))))))

(assert (=> d!1255524 (= (++!12036 (t!353272 (list!17067 (left!35026 lt!1510890))) (list!17067 (right!35356 lt!1510890))) lt!1511073)))

(assert (= (and d!1255524 c!724311) b!4263062))

(assert (= (and d!1255524 (not c!724311)) b!4263063))

(assert (= (and d!1255524 res!1752124) b!4263064))

(assert (= (and b!4263064 res!1752123) b!4263065))

(declare-fun m!4852275 () Bool)

(assert (=> b!4263064 m!4852275))

(declare-fun m!4852277 () Bool)

(assert (=> b!4263064 m!4852277))

(assert (=> b!4263064 m!4850801))

(assert (=> b!4263064 m!4851223))

(assert (=> b!4263063 m!4850801))

(declare-fun m!4852279 () Bool)

(assert (=> b!4263063 m!4852279))

(declare-fun m!4852281 () Bool)

(assert (=> d!1255524 m!4852281))

(declare-fun m!4852283 () Bool)

(assert (=> d!1255524 m!4852283))

(assert (=> d!1255524 m!4850801))

(assert (=> d!1255524 m!4851231))

(assert (=> b!4262551 d!1255524))

(declare-fun d!1255526 () Bool)

(declare-fun lt!1511074 () Int)

(assert (=> d!1255526 (>= lt!1511074 0)))

(declare-fun e!2647129 () Int)

(assert (=> d!1255526 (= lt!1511074 e!2647129)))

(declare-fun c!724312 () Bool)

(assert (=> d!1255526 (= c!724312 ((_ is Nil!47243) lt!1510939))))

(assert (=> d!1255526 (= (size!34605 lt!1510939) lt!1511074)))

(declare-fun b!4263066 () Bool)

(assert (=> b!4263066 (= e!2647129 0)))

(declare-fun b!4263067 () Bool)

(assert (=> b!4263067 (= e!2647129 (+ 1 (size!34605 (t!353272 lt!1510939))))))

(assert (= (and d!1255526 c!724312) b!4263066))

(assert (= (and d!1255526 (not c!724312)) b!4263067))

(declare-fun m!4852285 () Bool)

(assert (=> b!4263067 m!4852285))

(assert (=> d!1255060 d!1255526))

(assert (=> d!1255060 d!1255506))

(declare-fun b!4263070 () Bool)

(declare-fun res!1752125 () Bool)

(declare-fun e!2647130 () Bool)

(assert (=> b!4263070 (=> (not res!1752125) (not e!2647130))))

(declare-fun lt!1511075 () List!47367)

(assert (=> b!4263070 (= res!1752125 (= (size!34605 lt!1511075) (+ (size!34605 (list!17067 (left!35026 (right!35356 lt!1510890)))) (size!34605 (list!17067 (right!35356 (right!35356 lt!1510890)))))))))

(declare-fun b!4263069 () Bool)

(declare-fun e!2647131 () List!47367)

(assert (=> b!4263069 (= e!2647131 (Cons!47243 (h!52663 (list!17067 (left!35026 (right!35356 lt!1510890)))) (++!12036 (t!353272 (list!17067 (left!35026 (right!35356 lt!1510890)))) (list!17067 (right!35356 (right!35356 lt!1510890))))))))

(declare-fun b!4263071 () Bool)

(assert (=> b!4263071 (= e!2647130 (or (not (= (list!17067 (right!35356 (right!35356 lt!1510890))) Nil!47243)) (= lt!1511075 (list!17067 (left!35026 (right!35356 lt!1510890))))))))

(declare-fun b!4263068 () Bool)

(assert (=> b!4263068 (= e!2647131 (list!17067 (right!35356 (right!35356 lt!1510890))))))

(declare-fun d!1255528 () Bool)

(assert (=> d!1255528 e!2647130))

(declare-fun res!1752126 () Bool)

(assert (=> d!1255528 (=> (not res!1752126) (not e!2647130))))

(assert (=> d!1255528 (= res!1752126 (= (content!7447 lt!1511075) ((_ map or) (content!7447 (list!17067 (left!35026 (right!35356 lt!1510890)))) (content!7447 (list!17067 (right!35356 (right!35356 lt!1510890)))))))))

(assert (=> d!1255528 (= lt!1511075 e!2647131)))

(declare-fun c!724313 () Bool)

(assert (=> d!1255528 (= c!724313 ((_ is Nil!47243) (list!17067 (left!35026 (right!35356 lt!1510890)))))))

(assert (=> d!1255528 (= (++!12036 (list!17067 (left!35026 (right!35356 lt!1510890))) (list!17067 (right!35356 (right!35356 lt!1510890)))) lt!1511075)))

(assert (= (and d!1255528 c!724313) b!4263068))

(assert (= (and d!1255528 (not c!724313)) b!4263069))

(assert (= (and d!1255528 res!1752126) b!4263070))

(assert (= (and b!4263070 res!1752125) b!4263071))

(declare-fun m!4852287 () Bool)

(assert (=> b!4263070 m!4852287))

(assert (=> b!4263070 m!4851251))

(declare-fun m!4852289 () Bool)

(assert (=> b!4263070 m!4852289))

(assert (=> b!4263070 m!4851255))

(declare-fun m!4852291 () Bool)

(assert (=> b!4263070 m!4852291))

(assert (=> b!4263069 m!4851255))

(declare-fun m!4852293 () Bool)

(assert (=> b!4263069 m!4852293))

(declare-fun m!4852295 () Bool)

(assert (=> d!1255528 m!4852295))

(assert (=> d!1255528 m!4851251))

(declare-fun m!4852297 () Bool)

(assert (=> d!1255528 m!4852297))

(assert (=> d!1255528 m!4851255))

(declare-fun m!4852299 () Bool)

(assert (=> d!1255528 m!4852299))

(assert (=> b!4262563 d!1255528))

(declare-fun b!4263072 () Bool)

(declare-fun e!2647132 () List!47367)

(assert (=> b!4263072 (= e!2647132 Nil!47243)))

(declare-fun b!4263074 () Bool)

(declare-fun e!2647133 () List!47367)

(assert (=> b!4263074 (= e!2647133 (list!17070 (xs!17555 (left!35026 (right!35356 lt!1510890)))))))

(declare-fun b!4263075 () Bool)

(assert (=> b!4263075 (= e!2647133 (++!12036 (list!17067 (left!35026 (left!35026 (right!35356 lt!1510890)))) (list!17067 (right!35356 (left!35026 (right!35356 lt!1510890))))))))

(declare-fun b!4263073 () Bool)

(assert (=> b!4263073 (= e!2647132 e!2647133)))

(declare-fun c!724315 () Bool)

(assert (=> b!4263073 (= c!724315 ((_ is Leaf!22019) (left!35026 (right!35356 lt!1510890))))))

(declare-fun d!1255530 () Bool)

(declare-fun c!724314 () Bool)

(assert (=> d!1255530 (= c!724314 ((_ is Empty!14249) (left!35026 (right!35356 lt!1510890))))))

(assert (=> d!1255530 (= (list!17067 (left!35026 (right!35356 lt!1510890))) e!2647132)))

(assert (= (and d!1255530 c!724314) b!4263072))

(assert (= (and d!1255530 (not c!724314)) b!4263073))

(assert (= (and b!4263073 c!724315) b!4263074))

(assert (= (and b!4263073 (not c!724315)) b!4263075))

(declare-fun m!4852301 () Bool)

(assert (=> b!4263074 m!4852301))

(declare-fun m!4852303 () Bool)

(assert (=> b!4263075 m!4852303))

(declare-fun m!4852305 () Bool)

(assert (=> b!4263075 m!4852305))

(assert (=> b!4263075 m!4852303))

(assert (=> b!4263075 m!4852305))

(declare-fun m!4852307 () Bool)

(assert (=> b!4263075 m!4852307))

(assert (=> b!4262563 d!1255530))

(declare-fun b!4263076 () Bool)

(declare-fun e!2647134 () List!47367)

(assert (=> b!4263076 (= e!2647134 Nil!47243)))

(declare-fun b!4263078 () Bool)

(declare-fun e!2647135 () List!47367)

(assert (=> b!4263078 (= e!2647135 (list!17070 (xs!17555 (right!35356 (right!35356 lt!1510890)))))))

(declare-fun b!4263079 () Bool)

(assert (=> b!4263079 (= e!2647135 (++!12036 (list!17067 (left!35026 (right!35356 (right!35356 lt!1510890)))) (list!17067 (right!35356 (right!35356 (right!35356 lt!1510890))))))))

(declare-fun b!4263077 () Bool)

(assert (=> b!4263077 (= e!2647134 e!2647135)))

(declare-fun c!724317 () Bool)

(assert (=> b!4263077 (= c!724317 ((_ is Leaf!22019) (right!35356 (right!35356 lt!1510890))))))

(declare-fun d!1255532 () Bool)

(declare-fun c!724316 () Bool)

(assert (=> d!1255532 (= c!724316 ((_ is Empty!14249) (right!35356 (right!35356 lt!1510890))))))

(assert (=> d!1255532 (= (list!17067 (right!35356 (right!35356 lt!1510890))) e!2647134)))

(assert (= (and d!1255532 c!724316) b!4263076))

(assert (= (and d!1255532 (not c!724316)) b!4263077))

(assert (= (and b!4263077 c!724317) b!4263078))

(assert (= (and b!4263077 (not c!724317)) b!4263079))

(declare-fun m!4852309 () Bool)

(assert (=> b!4263078 m!4852309))

(declare-fun m!4852311 () Bool)

(assert (=> b!4263079 m!4852311))

(declare-fun m!4852313 () Bool)

(assert (=> b!4263079 m!4852313))

(assert (=> b!4263079 m!4852311))

(assert (=> b!4263079 m!4852313))

(declare-fun m!4852315 () Bool)

(assert (=> b!4263079 m!4852315))

(assert (=> b!4262563 d!1255532))

(declare-fun d!1255534 () Bool)

(declare-fun lt!1511076 () Int)

(assert (=> d!1255534 (= lt!1511076 (size!34606 (list!17068 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255534 (= lt!1511076 (ite ((_ is Empty!14248) (left!35025 (right!35355 t!4386))) 0 (ite ((_ is Leaf!22018) (left!35025 (right!35355 t!4386))) (csize!28727 (left!35025 (right!35355 t!4386))) (csize!28726 (left!35025 (right!35355 t!4386))))))))

(assert (=> d!1255534 (= (size!34608 (left!35025 (right!35355 t!4386))) lt!1511076)))

(declare-fun bs!599138 () Bool)

(assert (= bs!599138 d!1255534))

(assert (=> bs!599138 m!4850877))

(assert (=> bs!599138 m!4850877))

(assert (=> bs!599138 m!4851079))

(assert (=> d!1255104 d!1255534))

(declare-fun d!1255536 () Bool)

(declare-fun lt!1511077 () Int)

(assert (=> d!1255536 (= lt!1511077 (size!34606 (list!17068 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255536 (= lt!1511077 (ite ((_ is Empty!14248) (right!35355 (right!35355 t!4386))) 0 (ite ((_ is Leaf!22018) (right!35355 (right!35355 t!4386))) (csize!28727 (right!35355 (right!35355 t!4386))) (csize!28726 (right!35355 (right!35355 t!4386))))))))

(assert (=> d!1255536 (= (size!34608 (right!35355 (right!35355 t!4386))) lt!1511077)))

(declare-fun bs!599139 () Bool)

(assert (= bs!599139 d!1255536))

(assert (=> bs!599139 m!4850875))

(assert (=> bs!599139 m!4850875))

(assert (=> bs!599139 m!4851081))

(assert (=> d!1255104 d!1255536))

(declare-fun b!4263080 () Bool)

(declare-fun res!1752128 () Bool)

(declare-fun e!2647137 () Bool)

(assert (=> b!4263080 (=> (not res!1752128) (not e!2647137))))

(assert (=> b!4263080 (= res!1752128 (isBalanced!3808 (left!35026 lt!1510980)))))

(declare-fun b!4263081 () Bool)

(declare-fun res!1752130 () Bool)

(assert (=> b!4263081 (=> (not res!1752130) (not e!2647137))))

(assert (=> b!4263081 (= res!1752130 (isBalanced!3808 (right!35356 lt!1510980)))))

(declare-fun d!1255538 () Bool)

(declare-fun res!1752127 () Bool)

(declare-fun e!2647136 () Bool)

(assert (=> d!1255538 (=> res!1752127 e!2647136)))

(assert (=> d!1255538 (= res!1752127 (not ((_ is Node!14249) lt!1510980)))))

(assert (=> d!1255538 (= (isBalanced!3808 lt!1510980) e!2647136)))

(declare-fun b!4263082 () Bool)

(declare-fun res!1752129 () Bool)

(assert (=> b!4263082 (=> (not res!1752129) (not e!2647137))))

(assert (=> b!4263082 (= res!1752129 (not (isEmpty!27986 (left!35026 lt!1510980))))))

(declare-fun b!4263083 () Bool)

(assert (=> b!4263083 (= e!2647137 (not (isEmpty!27986 (right!35356 lt!1510980))))))

(declare-fun b!4263084 () Bool)

(assert (=> b!4263084 (= e!2647136 e!2647137)))

(declare-fun res!1752132 () Bool)

(assert (=> b!4263084 (=> (not res!1752132) (not e!2647137))))

(assert (=> b!4263084 (= res!1752132 (<= (- 1) (- (height!1871 (left!35026 lt!1510980)) (height!1871 (right!35356 lt!1510980)))))))

(declare-fun b!4263085 () Bool)

(declare-fun res!1752131 () Bool)

(assert (=> b!4263085 (=> (not res!1752131) (not e!2647137))))

(assert (=> b!4263085 (= res!1752131 (<= (- (height!1871 (left!35026 lt!1510980)) (height!1871 (right!35356 lt!1510980))) 1))))

(assert (= (and d!1255538 (not res!1752127)) b!4263084))

(assert (= (and b!4263084 res!1752132) b!4263085))

(assert (= (and b!4263085 res!1752131) b!4263080))

(assert (= (and b!4263080 res!1752128) b!4263081))

(assert (= (and b!4263081 res!1752130) b!4263082))

(assert (= (and b!4263082 res!1752129) b!4263083))

(declare-fun m!4852317 () Bool)

(assert (=> b!4263080 m!4852317))

(declare-fun m!4852319 () Bool)

(assert (=> b!4263083 m!4852319))

(declare-fun m!4852321 () Bool)

(assert (=> b!4263082 m!4852321))

(declare-fun m!4852323 () Bool)

(assert (=> b!4263085 m!4852323))

(declare-fun m!4852325 () Bool)

(assert (=> b!4263085 m!4852325))

(assert (=> b!4263084 m!4852323))

(assert (=> b!4263084 m!4852325))

(declare-fun m!4852327 () Bool)

(assert (=> b!4263081 m!4852327))

(assert (=> b!4262632 d!1255538))

(declare-fun d!1255540 () Bool)

(declare-fun lt!1511078 () Int)

(assert (=> d!1255540 (>= lt!1511078 0)))

(declare-fun e!2647138 () Int)

(assert (=> d!1255540 (= lt!1511078 e!2647138)))

(declare-fun c!724318 () Bool)

(assert (=> d!1255540 (= c!724318 ((_ is Nil!47243) lt!1510995))))

(assert (=> d!1255540 (= (size!34605 lt!1510995) lt!1511078)))

(declare-fun b!4263086 () Bool)

(assert (=> b!4263086 (= e!2647138 0)))

(declare-fun b!4263087 () Bool)

(assert (=> b!4263087 (= e!2647138 (+ 1 (size!34605 (t!353272 lt!1510995))))))

(assert (= (and d!1255540 c!724318) b!4263086))

(assert (= (and d!1255540 (not c!724318)) b!4263087))

(declare-fun m!4852329 () Bool)

(assert (=> b!4263087 m!4852329))

(assert (=> d!1255222 d!1255540))

(declare-fun d!1255542 () Bool)

(declare-fun lt!1511079 () Int)

(assert (=> d!1255542 (>= lt!1511079 0)))

(declare-fun e!2647139 () Int)

(assert (=> d!1255542 (= lt!1511079 e!2647139)))

(declare-fun c!724319 () Bool)

(assert (=> d!1255542 (= c!724319 ((_ is Nil!47242) (t!353271 (++!12035 lt!1510891 lt!1510889))))))

(assert (=> d!1255542 (= (size!34606 (t!353271 (++!12035 lt!1510891 lt!1510889))) lt!1511079)))

(declare-fun b!4263088 () Bool)

(assert (=> b!4263088 (= e!2647139 0)))

(declare-fun b!4263089 () Bool)

(assert (=> b!4263089 (= e!2647139 (+ 1 (size!34606 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889))))))))

(assert (= (and d!1255542 c!724319) b!4263088))

(assert (= (and d!1255542 (not c!724319)) b!4263089))

(declare-fun m!4852331 () Bool)

(assert (=> b!4263089 m!4852331))

(assert (=> d!1255222 d!1255542))

(declare-fun d!1255544 () Bool)

(declare-fun lt!1511080 () Int)

(assert (=> d!1255544 (>= lt!1511080 0)))

(declare-fun e!2647140 () Int)

(assert (=> d!1255544 (= lt!1511080 e!2647140)))

(declare-fun c!724320 () Bool)

(assert (=> d!1255544 (= c!724320 ((_ is Nil!47242) (innerList!14308 (xs!17554 (right!35355 t!4386)))))))

(assert (=> d!1255544 (= (size!34606 (innerList!14308 (xs!17554 (right!35355 t!4386)))) lt!1511080)))

(declare-fun b!4263090 () Bool)

(assert (=> b!4263090 (= e!2647140 0)))

(declare-fun b!4263091 () Bool)

(assert (=> b!4263091 (= e!2647140 (+ 1 (size!34606 (t!353271 (innerList!14308 (xs!17554 (right!35355 t!4386)))))))))

(assert (= (and d!1255544 c!724320) b!4263090))

(assert (= (and d!1255544 (not c!724320)) b!4263091))

(declare-fun m!4852333 () Bool)

(assert (=> b!4263091 m!4852333))

(assert (=> d!1255064 d!1255544))

(declare-fun d!1255546 () Bool)

(declare-fun c!724321 () Bool)

(assert (=> d!1255546 (= c!724321 ((_ is Nil!47242) lt!1510984))))

(declare-fun e!2647141 () (InoxSet T!79420))

(assert (=> d!1255546 (= (content!7448 lt!1510984) e!2647141)))

(declare-fun b!4263092 () Bool)

(assert (=> b!4263092 (= e!2647141 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263093 () Bool)

(assert (=> b!4263093 (= e!2647141 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510984) true) (content!7448 (t!353271 lt!1510984))))))

(assert (= (and d!1255546 c!724321) b!4263092))

(assert (= (and d!1255546 (not c!724321)) b!4263093))

(declare-fun m!4852335 () Bool)

(assert (=> b!4263093 m!4852335))

(declare-fun m!4852337 () Bool)

(assert (=> b!4263093 m!4852337))

(assert (=> d!1255200 d!1255546))

(declare-fun d!1255548 () Bool)

(declare-fun c!724322 () Bool)

(assert (=> d!1255548 (= c!724322 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 t!4386)))))))

(declare-fun e!2647142 () (InoxSet T!79420))

(assert (=> d!1255548 (= (content!7448 (list!17068 (left!35025 (left!35025 t!4386)))) e!2647142)))

(declare-fun b!4263094 () Bool)

(assert (=> b!4263094 (= e!2647142 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263095 () Bool)

(assert (=> b!4263095 (= e!2647142 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (left!35025 (left!35025 t!4386)))) true) (content!7448 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))))))))

(assert (= (and d!1255548 c!724322) b!4263094))

(assert (= (and d!1255548 (not c!724322)) b!4263095))

(declare-fun m!4852339 () Bool)

(assert (=> b!4263095 m!4852339))

(assert (=> b!4263095 m!4852249))

(assert (=> d!1255200 d!1255548))

(declare-fun d!1255550 () Bool)

(declare-fun c!724323 () Bool)

(assert (=> d!1255550 (= c!724323 ((_ is Nil!47242) (list!17068 (right!35355 (left!35025 t!4386)))))))

(declare-fun e!2647143 () (InoxSet T!79420))

(assert (=> d!1255550 (= (content!7448 (list!17068 (right!35355 (left!35025 t!4386)))) e!2647143)))

(declare-fun b!4263096 () Bool)

(assert (=> b!4263096 (= e!2647143 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263097 () Bool)

(assert (=> b!4263097 (= e!2647143 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (right!35355 (left!35025 t!4386)))) true) (content!7448 (t!353271 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(assert (= (and d!1255550 c!724323) b!4263096))

(assert (= (and d!1255550 (not c!724323)) b!4263097))

(declare-fun m!4852341 () Bool)

(assert (=> b!4263097 m!4852341))

(declare-fun m!4852343 () Bool)

(assert (=> b!4263097 m!4852343))

(assert (=> d!1255200 d!1255550))

(declare-fun b!4263100 () Bool)

(declare-fun res!1752133 () Bool)

(declare-fun e!2647144 () Bool)

(assert (=> b!4263100 (=> (not res!1752133) (not e!2647144))))

(declare-fun lt!1511081 () List!47367)

(assert (=> b!4263100 (= res!1752133 (= (size!34605 lt!1511081) (+ (size!34605 (list!17067 (left!35026 lt!1510912))) (size!34605 (list!17067 (right!35356 lt!1510912))))))))

(declare-fun b!4263099 () Bool)

(declare-fun e!2647145 () List!47367)

(assert (=> b!4263099 (= e!2647145 (Cons!47243 (h!52663 (list!17067 (left!35026 lt!1510912))) (++!12036 (t!353272 (list!17067 (left!35026 lt!1510912))) (list!17067 (right!35356 lt!1510912)))))))

(declare-fun b!4263101 () Bool)

(assert (=> b!4263101 (= e!2647144 (or (not (= (list!17067 (right!35356 lt!1510912)) Nil!47243)) (= lt!1511081 (list!17067 (left!35026 lt!1510912)))))))

(declare-fun b!4263098 () Bool)

(assert (=> b!4263098 (= e!2647145 (list!17067 (right!35356 lt!1510912)))))

(declare-fun d!1255552 () Bool)

(assert (=> d!1255552 e!2647144))

(declare-fun res!1752134 () Bool)

(assert (=> d!1255552 (=> (not res!1752134) (not e!2647144))))

(assert (=> d!1255552 (= res!1752134 (= (content!7447 lt!1511081) ((_ map or) (content!7447 (list!17067 (left!35026 lt!1510912))) (content!7447 (list!17067 (right!35356 lt!1510912))))))))

(assert (=> d!1255552 (= lt!1511081 e!2647145)))

(declare-fun c!724324 () Bool)

(assert (=> d!1255552 (= c!724324 ((_ is Nil!47243) (list!17067 (left!35026 lt!1510912))))))

(assert (=> d!1255552 (= (++!12036 (list!17067 (left!35026 lt!1510912)) (list!17067 (right!35356 lt!1510912))) lt!1511081)))

(assert (= (and d!1255552 c!724324) b!4263098))

(assert (= (and d!1255552 (not c!724324)) b!4263099))

(assert (= (and d!1255552 res!1752134) b!4263100))

(assert (= (and b!4263100 res!1752133) b!4263101))

(declare-fun m!4852345 () Bool)

(assert (=> b!4263100 m!4852345))

(assert (=> b!4263100 m!4851141))

(declare-fun m!4852347 () Bool)

(assert (=> b!4263100 m!4852347))

(assert (=> b!4263100 m!4851143))

(declare-fun m!4852349 () Bool)

(assert (=> b!4263100 m!4852349))

(assert (=> b!4263099 m!4851143))

(declare-fun m!4852351 () Bool)

(assert (=> b!4263099 m!4852351))

(declare-fun m!4852353 () Bool)

(assert (=> d!1255552 m!4852353))

(assert (=> d!1255552 m!4851141))

(declare-fun m!4852355 () Bool)

(assert (=> d!1255552 m!4852355))

(assert (=> d!1255552 m!4851143))

(declare-fun m!4852357 () Bool)

(assert (=> d!1255552 m!4852357))

(assert (=> b!4262506 d!1255552))

(declare-fun b!4263102 () Bool)

(declare-fun e!2647146 () List!47367)

(assert (=> b!4263102 (= e!2647146 Nil!47243)))

(declare-fun b!4263104 () Bool)

(declare-fun e!2647147 () List!47367)

(assert (=> b!4263104 (= e!2647147 (list!17070 (xs!17555 (left!35026 lt!1510912))))))

(declare-fun b!4263105 () Bool)

(assert (=> b!4263105 (= e!2647147 (++!12036 (list!17067 (left!35026 (left!35026 lt!1510912))) (list!17067 (right!35356 (left!35026 lt!1510912)))))))

(declare-fun b!4263103 () Bool)

(assert (=> b!4263103 (= e!2647146 e!2647147)))

(declare-fun c!724326 () Bool)

(assert (=> b!4263103 (= c!724326 ((_ is Leaf!22019) (left!35026 lt!1510912)))))

(declare-fun d!1255554 () Bool)

(declare-fun c!724325 () Bool)

(assert (=> d!1255554 (= c!724325 ((_ is Empty!14249) (left!35026 lt!1510912)))))

(assert (=> d!1255554 (= (list!17067 (left!35026 lt!1510912)) e!2647146)))

(assert (= (and d!1255554 c!724325) b!4263102))

(assert (= (and d!1255554 (not c!724325)) b!4263103))

(assert (= (and b!4263103 c!724326) b!4263104))

(assert (= (and b!4263103 (not c!724326)) b!4263105))

(declare-fun m!4852359 () Bool)

(assert (=> b!4263104 m!4852359))

(declare-fun m!4852361 () Bool)

(assert (=> b!4263105 m!4852361))

(declare-fun m!4852363 () Bool)

(assert (=> b!4263105 m!4852363))

(assert (=> b!4263105 m!4852361))

(assert (=> b!4263105 m!4852363))

(declare-fun m!4852365 () Bool)

(assert (=> b!4263105 m!4852365))

(assert (=> b!4262506 d!1255554))

(declare-fun b!4263106 () Bool)

(declare-fun e!2647148 () List!47367)

(assert (=> b!4263106 (= e!2647148 Nil!47243)))

(declare-fun b!4263108 () Bool)

(declare-fun e!2647149 () List!47367)

(assert (=> b!4263108 (= e!2647149 (list!17070 (xs!17555 (right!35356 lt!1510912))))))

(declare-fun b!4263109 () Bool)

(assert (=> b!4263109 (= e!2647149 (++!12036 (list!17067 (left!35026 (right!35356 lt!1510912))) (list!17067 (right!35356 (right!35356 lt!1510912)))))))

(declare-fun b!4263107 () Bool)

(assert (=> b!4263107 (= e!2647148 e!2647149)))

(declare-fun c!724328 () Bool)

(assert (=> b!4263107 (= c!724328 ((_ is Leaf!22019) (right!35356 lt!1510912)))))

(declare-fun d!1255556 () Bool)

(declare-fun c!724327 () Bool)

(assert (=> d!1255556 (= c!724327 ((_ is Empty!14249) (right!35356 lt!1510912)))))

(assert (=> d!1255556 (= (list!17067 (right!35356 lt!1510912)) e!2647148)))

(assert (= (and d!1255556 c!724327) b!4263106))

(assert (= (and d!1255556 (not c!724327)) b!4263107))

(assert (= (and b!4263107 c!724328) b!4263108))

(assert (= (and b!4263107 (not c!724328)) b!4263109))

(declare-fun m!4852367 () Bool)

(assert (=> b!4263108 m!4852367))

(declare-fun m!4852369 () Bool)

(assert (=> b!4263109 m!4852369))

(declare-fun m!4852371 () Bool)

(assert (=> b!4263109 m!4852371))

(assert (=> b!4263109 m!4852369))

(assert (=> b!4263109 m!4852371))

(declare-fun m!4852373 () Bool)

(assert (=> b!4263109 m!4852373))

(assert (=> b!4262506 d!1255556))

(declare-fun d!1255558 () Bool)

(assert (=> d!1255558 (= (inv!62150 (xs!17554 (right!35355 (left!35025 t!4386)))) (<= (size!34606 (innerList!14308 (xs!17554 (right!35355 (left!35025 t!4386))))) 2147483647))))

(declare-fun bs!599140 () Bool)

(assert (= bs!599140 d!1255558))

(declare-fun m!4852375 () Bool)

(assert (=> bs!599140 m!4852375))

(assert (=> b!4262742 d!1255558))

(declare-fun b!4263110 () Bool)

(declare-fun res!1752136 () Bool)

(declare-fun e!2647151 () Bool)

(assert (=> b!4263110 (=> (not res!1752136) (not e!2647151))))

(assert (=> b!4263110 (= res!1752136 (isBalanced!3808 (left!35026 (right!35356 lt!1510917))))))

(declare-fun b!4263111 () Bool)

(declare-fun res!1752138 () Bool)

(assert (=> b!4263111 (=> (not res!1752138) (not e!2647151))))

(assert (=> b!4263111 (= res!1752138 (isBalanced!3808 (right!35356 (right!35356 lt!1510917))))))

(declare-fun d!1255560 () Bool)

(declare-fun res!1752135 () Bool)

(declare-fun e!2647150 () Bool)

(assert (=> d!1255560 (=> res!1752135 e!2647150)))

(assert (=> d!1255560 (= res!1752135 (not ((_ is Node!14249) (right!35356 lt!1510917))))))

(assert (=> d!1255560 (= (isBalanced!3808 (right!35356 lt!1510917)) e!2647150)))

(declare-fun b!4263112 () Bool)

(declare-fun res!1752137 () Bool)

(assert (=> b!4263112 (=> (not res!1752137) (not e!2647151))))

(assert (=> b!4263112 (= res!1752137 (not (isEmpty!27986 (left!35026 (right!35356 lt!1510917)))))))

(declare-fun b!4263113 () Bool)

(assert (=> b!4263113 (= e!2647151 (not (isEmpty!27986 (right!35356 (right!35356 lt!1510917)))))))

(declare-fun b!4263114 () Bool)

(assert (=> b!4263114 (= e!2647150 e!2647151)))

(declare-fun res!1752140 () Bool)

(assert (=> b!4263114 (=> (not res!1752140) (not e!2647151))))

(assert (=> b!4263114 (= res!1752140 (<= (- 1) (- (height!1871 (left!35026 (right!35356 lt!1510917))) (height!1871 (right!35356 (right!35356 lt!1510917))))))))

(declare-fun b!4263115 () Bool)

(declare-fun res!1752139 () Bool)

(assert (=> b!4263115 (=> (not res!1752139) (not e!2647151))))

(assert (=> b!4263115 (= res!1752139 (<= (- (height!1871 (left!35026 (right!35356 lt!1510917))) (height!1871 (right!35356 (right!35356 lt!1510917)))) 1))))

(assert (= (and d!1255560 (not res!1752135)) b!4263114))

(assert (= (and b!4263114 res!1752140) b!4263115))

(assert (= (and b!4263115 res!1752139) b!4263110))

(assert (= (and b!4263110 res!1752136) b!4263111))

(assert (= (and b!4263111 res!1752138) b!4263112))

(assert (= (and b!4263112 res!1752137) b!4263113))

(declare-fun m!4852377 () Bool)

(assert (=> b!4263110 m!4852377))

(declare-fun m!4852379 () Bool)

(assert (=> b!4263113 m!4852379))

(declare-fun m!4852381 () Bool)

(assert (=> b!4263112 m!4852381))

(declare-fun m!4852383 () Bool)

(assert (=> b!4263115 m!4852383))

(declare-fun m!4852385 () Bool)

(assert (=> b!4263115 m!4852385))

(assert (=> b!4263114 m!4852383))

(assert (=> b!4263114 m!4852385))

(declare-fun m!4852387 () Bool)

(assert (=> b!4263111 m!4852387))

(assert (=> b!4262597 d!1255560))

(declare-fun d!1255562 () Bool)

(assert (=> d!1255562 (= (height!1871 (left!35026 (left!35026 lt!1510890))) (ite ((_ is Empty!14249) (left!35026 (left!35026 lt!1510890))) 0 (ite ((_ is Leaf!22019) (left!35026 (left!35026 lt!1510890))) 1 (cheight!14460 (left!35026 (left!35026 lt!1510890))))))))

(assert (=> b!4262658 d!1255562))

(declare-fun d!1255564 () Bool)

(assert (=> d!1255564 (= (height!1871 (right!35356 (left!35026 lt!1510890))) (ite ((_ is Empty!14249) (right!35356 (left!35026 lt!1510890))) 0 (ite ((_ is Leaf!22019) (right!35356 (left!35026 lt!1510890))) 1 (cheight!14460 (right!35356 (left!35026 lt!1510890))))))))

(assert (=> b!4262658 d!1255564))

(assert (=> b!4262535 d!1255428))

(assert (=> b!4262535 d!1255430))

(declare-fun d!1255566 () Bool)

(declare-fun lt!1511082 () Int)

(assert (=> d!1255566 (>= lt!1511082 0)))

(declare-fun e!2647152 () Int)

(assert (=> d!1255566 (= lt!1511082 e!2647152)))

(declare-fun c!724329 () Bool)

(assert (=> d!1255566 (= c!724329 ((_ is Nil!47243) lt!1510963))))

(assert (=> d!1255566 (= (size!34605 lt!1510963) lt!1511082)))

(declare-fun b!4263116 () Bool)

(assert (=> b!4263116 (= e!2647152 0)))

(declare-fun b!4263117 () Bool)

(assert (=> b!4263117 (= e!2647152 (+ 1 (size!34605 (t!353272 lt!1510963))))))

(assert (= (and d!1255566 c!724329) b!4263116))

(assert (= (and d!1255566 (not c!724329)) b!4263117))

(declare-fun m!4852389 () Bool)

(assert (=> b!4263117 m!4852389))

(assert (=> b!4262566 d!1255566))

(declare-fun d!1255568 () Bool)

(declare-fun lt!1511083 () Int)

(assert (=> d!1255568 (>= lt!1511083 0)))

(declare-fun e!2647153 () Int)

(assert (=> d!1255568 (= lt!1511083 e!2647153)))

(declare-fun c!724330 () Bool)

(assert (=> d!1255568 (= c!724330 ((_ is Nil!47243) (t!353272 (map!9674 lt!1510891 f!428))))))

(assert (=> d!1255568 (= (size!34605 (t!353272 (map!9674 lt!1510891 f!428))) lt!1511083)))

(declare-fun b!4263118 () Bool)

(assert (=> b!4263118 (= e!2647153 0)))

(declare-fun b!4263119 () Bool)

(assert (=> b!4263119 (= e!2647153 (+ 1 (size!34605 (t!353272 (t!353272 (map!9674 lt!1510891 f!428))))))))

(assert (= (and d!1255568 c!724330) b!4263118))

(assert (= (and d!1255568 (not c!724330)) b!4263119))

(assert (=> b!4263119 m!4852109))

(assert (=> b!4262566 d!1255568))

(assert (=> b!4262566 d!1255186))

(declare-fun d!1255570 () Bool)

(declare-fun lt!1511084 () Bool)

(assert (=> d!1255570 (= lt!1511084 (isEmpty!27992 (list!17068 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255570 (= lt!1511084 (= (size!34608 (left!35025 (left!35025 t!4386))) 0))))

(assert (=> d!1255570 (= (isEmpty!27987 (left!35025 (left!35025 t!4386))) lt!1511084)))

(declare-fun bs!599141 () Bool)

(assert (= bs!599141 d!1255570))

(assert (=> bs!599141 m!4850829))

(assert (=> bs!599141 m!4850829))

(declare-fun m!4852391 () Bool)

(assert (=> bs!599141 m!4852391))

(assert (=> bs!599141 m!4851201))

(assert (=> b!4262511 d!1255570))

(declare-fun b!4263120 () Bool)

(declare-fun res!1752142 () Bool)

(declare-fun e!2647155 () Bool)

(assert (=> b!4263120 (=> (not res!1752142) (not e!2647155))))

(assert (=> b!4263120 (= res!1752142 (isBalanced!3808 (left!35026 lt!1510978)))))

(declare-fun b!4263121 () Bool)

(declare-fun res!1752144 () Bool)

(assert (=> b!4263121 (=> (not res!1752144) (not e!2647155))))

(assert (=> b!4263121 (= res!1752144 (isBalanced!3808 (right!35356 lt!1510978)))))

(declare-fun d!1255572 () Bool)

(declare-fun res!1752141 () Bool)

(declare-fun e!2647154 () Bool)

(assert (=> d!1255572 (=> res!1752141 e!2647154)))

(assert (=> d!1255572 (= res!1752141 (not ((_ is Node!14249) lt!1510978)))))

(assert (=> d!1255572 (= (isBalanced!3808 lt!1510978) e!2647154)))

(declare-fun b!4263122 () Bool)

(declare-fun res!1752143 () Bool)

(assert (=> b!4263122 (=> (not res!1752143) (not e!2647155))))

(assert (=> b!4263122 (= res!1752143 (not (isEmpty!27986 (left!35026 lt!1510978))))))

(declare-fun b!4263123 () Bool)

(assert (=> b!4263123 (= e!2647155 (not (isEmpty!27986 (right!35356 lt!1510978))))))

(declare-fun b!4263124 () Bool)

(assert (=> b!4263124 (= e!2647154 e!2647155)))

(declare-fun res!1752146 () Bool)

(assert (=> b!4263124 (=> (not res!1752146) (not e!2647155))))

(assert (=> b!4263124 (= res!1752146 (<= (- 1) (- (height!1871 (left!35026 lt!1510978)) (height!1871 (right!35356 lt!1510978)))))))

(declare-fun b!4263125 () Bool)

(declare-fun res!1752145 () Bool)

(assert (=> b!4263125 (=> (not res!1752145) (not e!2647155))))

(assert (=> b!4263125 (= res!1752145 (<= (- (height!1871 (left!35026 lt!1510978)) (height!1871 (right!35356 lt!1510978))) 1))))

(assert (= (and d!1255572 (not res!1752141)) b!4263124))

(assert (= (and b!4263124 res!1752146) b!4263125))

(assert (= (and b!4263125 res!1752145) b!4263120))

(assert (= (and b!4263120 res!1752142) b!4263121))

(assert (= (and b!4263121 res!1752144) b!4263122))

(assert (= (and b!4263122 res!1752143) b!4263123))

(declare-fun m!4852393 () Bool)

(assert (=> b!4263120 m!4852393))

(declare-fun m!4852395 () Bool)

(assert (=> b!4263123 m!4852395))

(declare-fun m!4852397 () Bool)

(assert (=> b!4263122 m!4852397))

(declare-fun m!4852399 () Bool)

(assert (=> b!4263125 m!4852399))

(declare-fun m!4852401 () Bool)

(assert (=> b!4263125 m!4852401))

(assert (=> b!4263124 m!4852399))

(assert (=> b!4263124 m!4852401))

(declare-fun m!4852403 () Bool)

(assert (=> b!4263121 m!4852403))

(assert (=> b!4262627 d!1255572))

(declare-fun d!1255574 () Bool)

(assert (=> d!1255574 (= ($colon$colon!633 (map!9674 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (++!12035 lt!1510891 lt!1510889))))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (t!353271 (++!12035 lt!1510891 lt!1510889)))) (map!9674 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889))) f!428)))))

(assert (=> b!4262685 d!1255574))

(declare-fun d!1255576 () Bool)

(declare-fun lt!1511085 () List!47367)

(assert (=> d!1255576 (= (size!34605 lt!1511085) (size!34606 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889)))))))

(declare-fun e!2647156 () List!47367)

(assert (=> d!1255576 (= lt!1511085 e!2647156)))

(declare-fun c!724331 () Bool)

(assert (=> d!1255576 (= c!724331 ((_ is Nil!47242) (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889)))))))

(assert (=> d!1255576 (= (map!9674 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889))) f!428) lt!1511085)))

(declare-fun b!4263126 () Bool)

(assert (=> b!4263126 (= e!2647156 Nil!47243)))

(declare-fun b!4263127 () Bool)

(assert (=> b!4263127 (= e!2647156 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889)))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (t!353271 (++!12035 lt!1510891 lt!1510889)))))))))

(assert (= (and d!1255576 c!724331) b!4263126))

(assert (= (and d!1255576 (not c!724331)) b!4263127))

(declare-fun b_lambda!125907 () Bool)

(assert (=> (not b_lambda!125907) (not b!4263127)))

(declare-fun t!353343 () Bool)

(declare-fun tb!256995 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353343) tb!256995))

(declare-fun result!313572 () Bool)

(assert (=> tb!256995 (= result!313572 tp_is_empty!22881)))

(assert (=> b!4263127 t!353343))

(declare-fun b_and!337805 () Bool)

(assert (= b_and!337803 (and (=> t!353343 result!313572) b_and!337805)))

(declare-fun m!4852405 () Bool)

(assert (=> d!1255576 m!4852405))

(assert (=> d!1255576 m!4852331))

(declare-fun m!4852407 () Bool)

(assert (=> b!4263127 m!4852407))

(declare-fun m!4852409 () Bool)

(assert (=> b!4263127 m!4852409))

(assert (=> b!4263127 m!4852407))

(assert (=> b!4263127 m!4852409))

(declare-fun m!4852411 () Bool)

(assert (=> b!4263127 m!4852411))

(assert (=> b!4262685 d!1255576))

(declare-fun d!1255578 () Bool)

(declare-fun c!724332 () Bool)

(assert (=> d!1255578 (= c!724332 ((_ is Nil!47243) lt!1510961))))

(declare-fun e!2647157 () (InoxSet B!2825))

(assert (=> d!1255578 (= (content!7447 lt!1510961) e!2647157)))

(declare-fun b!4263128 () Bool)

(assert (=> b!4263128 (= e!2647157 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4263129 () Bool)

(assert (=> b!4263129 (= e!2647157 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 lt!1510961) true) (content!7447 (t!353272 lt!1510961))))))

(assert (= (and d!1255578 c!724332) b!4263128))

(assert (= (and d!1255578 (not c!724332)) b!4263129))

(declare-fun m!4852413 () Bool)

(assert (=> b!4263129 m!4852413))

(declare-fun m!4852415 () Bool)

(assert (=> b!4263129 m!4852415))

(assert (=> d!1255134 d!1255578))

(declare-fun d!1255580 () Bool)

(declare-fun c!724333 () Bool)

(assert (=> d!1255580 (= c!724333 ((_ is Nil!47243) (list!17067 (left!35026 lt!1510890))))))

(declare-fun e!2647158 () (InoxSet B!2825))

(assert (=> d!1255580 (= (content!7447 (list!17067 (left!35026 lt!1510890))) e!2647158)))

(declare-fun b!4263130 () Bool)

(assert (=> b!4263130 (= e!2647158 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4263131 () Bool)

(assert (=> b!4263131 (= e!2647158 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (list!17067 (left!35026 lt!1510890))) true) (content!7447 (t!353272 (list!17067 (left!35026 lt!1510890))))))))

(assert (= (and d!1255580 c!724333) b!4263130))

(assert (= (and d!1255580 (not c!724333)) b!4263131))

(declare-fun m!4852417 () Bool)

(assert (=> b!4263131 m!4852417))

(assert (=> b!4263131 m!4852283))

(assert (=> d!1255134 d!1255580))

(declare-fun d!1255582 () Bool)

(declare-fun c!724334 () Bool)

(assert (=> d!1255582 (= c!724334 ((_ is Nil!47243) (list!17067 (right!35356 lt!1510890))))))

(declare-fun e!2647159 () (InoxSet B!2825))

(assert (=> d!1255582 (= (content!7447 (list!17067 (right!35356 lt!1510890))) e!2647159)))

(declare-fun b!4263132 () Bool)

(assert (=> b!4263132 (= e!2647159 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4263133 () Bool)

(assert (=> b!4263133 (= e!2647159 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (list!17067 (right!35356 lt!1510890))) true) (content!7447 (t!353272 (list!17067 (right!35356 lt!1510890))))))))

(assert (= (and d!1255582 c!724334) b!4263132))

(assert (= (and d!1255582 (not c!724334)) b!4263133))

(declare-fun m!4852419 () Bool)

(assert (=> b!4263133 m!4852419))

(declare-fun m!4852421 () Bool)

(assert (=> b!4263133 m!4852421))

(assert (=> d!1255134 d!1255582))

(declare-fun d!1255584 () Bool)

(declare-fun lt!1511086 () Bool)

(assert (=> d!1255584 (= lt!1511086 (isEmpty!27990 (list!17067 (right!35356 lt!1510912))))))

(assert (=> d!1255584 (= lt!1511086 (= (size!34607 (right!35356 lt!1510912)) 0))))

(assert (=> d!1255584 (= (isEmpty!27986 (right!35356 lt!1510912)) lt!1511086)))

(declare-fun bs!599142 () Bool)

(assert (= bs!599142 d!1255584))

(assert (=> bs!599142 m!4851143))

(assert (=> bs!599142 m!4851143))

(declare-fun m!4852423 () Bool)

(assert (=> bs!599142 m!4852423))

(declare-fun m!4852425 () Bool)

(assert (=> bs!599142 m!4852425))

(assert (=> b!4262619 d!1255584))

(declare-fun d!1255586 () Bool)

(declare-fun lt!1511087 () Int)

(assert (=> d!1255586 (>= lt!1511087 0)))

(declare-fun e!2647160 () Int)

(assert (=> d!1255586 (= lt!1511087 e!2647160)))

(declare-fun c!724335 () Bool)

(assert (=> d!1255586 (= c!724335 ((_ is Nil!47243) lt!1511000))))

(assert (=> d!1255586 (= (size!34605 lt!1511000) lt!1511087)))

(declare-fun b!4263134 () Bool)

(assert (=> b!4263134 (= e!2647160 0)))

(declare-fun b!4263135 () Bool)

(assert (=> b!4263135 (= e!2647160 (+ 1 (size!34605 (t!353272 lt!1511000))))))

(assert (= (and d!1255586 c!724335) b!4263134))

(assert (= (and d!1255586 (not c!724335)) b!4263135))

(declare-fun m!4852427 () Bool)

(assert (=> b!4263135 m!4852427))

(assert (=> d!1255248 d!1255586))

(declare-fun d!1255588 () Bool)

(declare-fun lt!1511088 () Int)

(assert (=> d!1255588 (>= lt!1511088 0)))

(declare-fun e!2647161 () Int)

(assert (=> d!1255588 (= lt!1511088 e!2647161)))

(declare-fun c!724336 () Bool)

(assert (=> d!1255588 (= c!724336 ((_ is Nil!47242) (t!353271 lt!1510891)))))

(assert (=> d!1255588 (= (size!34606 (t!353271 lt!1510891)) lt!1511088)))

(declare-fun b!4263136 () Bool)

(assert (=> b!4263136 (= e!2647161 0)))

(declare-fun b!4263137 () Bool)

(assert (=> b!4263137 (= e!2647161 (+ 1 (size!34606 (t!353271 (t!353271 lt!1510891)))))))

(assert (= (and d!1255588 c!724336) b!4263136))

(assert (= (and d!1255588 (not c!724336)) b!4263137))

(declare-fun m!4852429 () Bool)

(assert (=> b!4263137 m!4852429))

(assert (=> d!1255248 d!1255588))

(declare-fun b!4263138 () Bool)

(declare-fun res!1752148 () Bool)

(declare-fun e!2647163 () Bool)

(assert (=> b!4263138 (=> (not res!1752148) (not e!2647163))))

(assert (=> b!4263138 (= res!1752148 (isBalanced!3808 (left!35026 lt!1510990)))))

(declare-fun b!4263139 () Bool)

(declare-fun res!1752150 () Bool)

(assert (=> b!4263139 (=> (not res!1752150) (not e!2647163))))

(assert (=> b!4263139 (= res!1752150 (isBalanced!3808 (right!35356 lt!1510990)))))

(declare-fun d!1255590 () Bool)

(declare-fun res!1752147 () Bool)

(declare-fun e!2647162 () Bool)

(assert (=> d!1255590 (=> res!1752147 e!2647162)))

(assert (=> d!1255590 (= res!1752147 (not ((_ is Node!14249) lt!1510990)))))

(assert (=> d!1255590 (= (isBalanced!3808 lt!1510990) e!2647162)))

(declare-fun b!4263140 () Bool)

(declare-fun res!1752149 () Bool)

(assert (=> b!4263140 (=> (not res!1752149) (not e!2647163))))

(assert (=> b!4263140 (= res!1752149 (not (isEmpty!27986 (left!35026 lt!1510990))))))

(declare-fun b!4263141 () Bool)

(assert (=> b!4263141 (= e!2647163 (not (isEmpty!27986 (right!35356 lt!1510990))))))

(declare-fun b!4263142 () Bool)

(assert (=> b!4263142 (= e!2647162 e!2647163)))

(declare-fun res!1752152 () Bool)

(assert (=> b!4263142 (=> (not res!1752152) (not e!2647163))))

(assert (=> b!4263142 (= res!1752152 (<= (- 1) (- (height!1871 (left!35026 lt!1510990)) (height!1871 (right!35356 lt!1510990)))))))

(declare-fun b!4263143 () Bool)

(declare-fun res!1752151 () Bool)

(assert (=> b!4263143 (=> (not res!1752151) (not e!2647163))))

(assert (=> b!4263143 (= res!1752151 (<= (- (height!1871 (left!35026 lt!1510990)) (height!1871 (right!35356 lt!1510990))) 1))))

(assert (= (and d!1255590 (not res!1752147)) b!4263142))

(assert (= (and b!4263142 res!1752152) b!4263143))

(assert (= (and b!4263143 res!1752151) b!4263138))

(assert (= (and b!4263138 res!1752148) b!4263139))

(assert (= (and b!4263139 res!1752150) b!4263140))

(assert (= (and b!4263140 res!1752149) b!4263141))

(declare-fun m!4852431 () Bool)

(assert (=> b!4263138 m!4852431))

(declare-fun m!4852433 () Bool)

(assert (=> b!4263141 m!4852433))

(declare-fun m!4852435 () Bool)

(assert (=> b!4263140 m!4852435))

(declare-fun m!4852437 () Bool)

(assert (=> b!4263143 m!4852437))

(declare-fun m!4852439 () Bool)

(assert (=> b!4263143 m!4852439))

(assert (=> b!4263142 m!4852437))

(assert (=> b!4263142 m!4852439))

(declare-fun m!4852441 () Bool)

(assert (=> b!4263139 m!4852441))

(assert (=> b!4262667 d!1255590))

(declare-fun e!2647165 () Bool)

(declare-fun b!4263147 () Bool)

(declare-fun lt!1511089 () List!47366)

(assert (=> b!4263147 (= e!2647165 (or (not (= lt!1510889 Nil!47242)) (= lt!1511089 (t!353271 (t!353271 lt!1510891)))))))

(declare-fun b!4263146 () Bool)

(declare-fun res!1752154 () Bool)

(assert (=> b!4263146 (=> (not res!1752154) (not e!2647165))))

(assert (=> b!4263146 (= res!1752154 (= (size!34606 lt!1511089) (+ (size!34606 (t!353271 (t!353271 lt!1510891))) (size!34606 lt!1510889))))))

(declare-fun d!1255592 () Bool)

(assert (=> d!1255592 e!2647165))

(declare-fun res!1752153 () Bool)

(assert (=> d!1255592 (=> (not res!1752153) (not e!2647165))))

(assert (=> d!1255592 (= res!1752153 (= (content!7448 lt!1511089) ((_ map or) (content!7448 (t!353271 (t!353271 lt!1510891))) (content!7448 lt!1510889))))))

(declare-fun e!2647164 () List!47366)

(assert (=> d!1255592 (= lt!1511089 e!2647164)))

(declare-fun c!724337 () Bool)

(assert (=> d!1255592 (= c!724337 ((_ is Nil!47242) (t!353271 (t!353271 lt!1510891))))))

(assert (=> d!1255592 (= (++!12035 (t!353271 (t!353271 lt!1510891)) lt!1510889) lt!1511089)))

(declare-fun b!4263144 () Bool)

(assert (=> b!4263144 (= e!2647164 lt!1510889)))

(declare-fun b!4263145 () Bool)

(assert (=> b!4263145 (= e!2647164 (Cons!47242 (h!52662 (t!353271 (t!353271 lt!1510891))) (++!12035 (t!353271 (t!353271 (t!353271 lt!1510891))) lt!1510889)))))

(assert (= (and d!1255592 c!724337) b!4263144))

(assert (= (and d!1255592 (not c!724337)) b!4263145))

(assert (= (and d!1255592 res!1752153) b!4263146))

(assert (= (and b!4263146 res!1752154) b!4263147))

(declare-fun m!4852443 () Bool)

(assert (=> b!4263146 m!4852443))

(assert (=> b!4263146 m!4852429))

(assert (=> b!4263146 m!4851003))

(declare-fun m!4852445 () Bool)

(assert (=> d!1255592 m!4852445))

(assert (=> d!1255592 m!4852273))

(assert (=> d!1255592 m!4851009))

(declare-fun m!4852447 () Bool)

(assert (=> b!4263145 m!4852447))

(assert (=> b!4262575 d!1255592))

(declare-fun b!4263148 () Bool)

(declare-fun res!1752156 () Bool)

(declare-fun e!2647167 () Bool)

(assert (=> b!4263148 (=> (not res!1752156) (not e!2647167))))

(assert (=> b!4263148 (= res!1752156 (isBalanced!3808 (left!35026 (right!35356 (right!35356 lt!1510890)))))))

(declare-fun b!4263149 () Bool)

(declare-fun res!1752158 () Bool)

(assert (=> b!4263149 (=> (not res!1752158) (not e!2647167))))

(assert (=> b!4263149 (= res!1752158 (isBalanced!3808 (right!35356 (right!35356 (right!35356 lt!1510890)))))))

(declare-fun d!1255594 () Bool)

(declare-fun res!1752155 () Bool)

(declare-fun e!2647166 () Bool)

(assert (=> d!1255594 (=> res!1752155 e!2647166)))

(assert (=> d!1255594 (= res!1752155 (not ((_ is Node!14249) (right!35356 (right!35356 lt!1510890)))))))

(assert (=> d!1255594 (= (isBalanced!3808 (right!35356 (right!35356 lt!1510890))) e!2647166)))

(declare-fun b!4263150 () Bool)

(declare-fun res!1752157 () Bool)

(assert (=> b!4263150 (=> (not res!1752157) (not e!2647167))))

(assert (=> b!4263150 (= res!1752157 (not (isEmpty!27986 (left!35026 (right!35356 (right!35356 lt!1510890))))))))

(declare-fun b!4263151 () Bool)

(assert (=> b!4263151 (= e!2647167 (not (isEmpty!27986 (right!35356 (right!35356 (right!35356 lt!1510890))))))))

(declare-fun b!4263152 () Bool)

(assert (=> b!4263152 (= e!2647166 e!2647167)))

(declare-fun res!1752160 () Bool)

(assert (=> b!4263152 (=> (not res!1752160) (not e!2647167))))

(assert (=> b!4263152 (= res!1752160 (<= (- 1) (- (height!1871 (left!35026 (right!35356 (right!35356 lt!1510890)))) (height!1871 (right!35356 (right!35356 (right!35356 lt!1510890)))))))))

(declare-fun b!4263153 () Bool)

(declare-fun res!1752159 () Bool)

(assert (=> b!4263153 (=> (not res!1752159) (not e!2647167))))

(assert (=> b!4263153 (= res!1752159 (<= (- (height!1871 (left!35026 (right!35356 (right!35356 lt!1510890)))) (height!1871 (right!35356 (right!35356 (right!35356 lt!1510890))))) 1))))

(assert (= (and d!1255594 (not res!1752155)) b!4263152))

(assert (= (and b!4263152 res!1752160) b!4263153))

(assert (= (and b!4263153 res!1752159) b!4263148))

(assert (= (and b!4263148 res!1752156) b!4263149))

(assert (= (and b!4263149 res!1752158) b!4263150))

(assert (= (and b!4263150 res!1752157) b!4263151))

(declare-fun m!4852449 () Bool)

(assert (=> b!4263148 m!4852449))

(declare-fun m!4852451 () Bool)

(assert (=> b!4263151 m!4852451))

(declare-fun m!4852453 () Bool)

(assert (=> b!4263150 m!4852453))

(declare-fun m!4852455 () Bool)

(assert (=> b!4263153 m!4852455))

(declare-fun m!4852457 () Bool)

(assert (=> b!4263153 m!4852457))

(assert (=> b!4263152 m!4852455))

(assert (=> b!4263152 m!4852457))

(declare-fun m!4852459 () Bool)

(assert (=> b!4263149 m!4852459))

(assert (=> b!4262531 d!1255594))

(declare-fun d!1255596 () Bool)

(assert (=> d!1255596 (= (max!0 (height!1872 (left!35025 t!4386)) (height!1872 (right!35355 t!4386))) (ite (< (height!1872 (left!35025 t!4386)) (height!1872 (right!35355 t!4386))) (height!1872 (right!35355 t!4386)) (height!1872 (left!35025 t!4386))))))

(assert (=> b!4262540 d!1255596))

(assert (=> b!4262540 d!1255072))

(assert (=> b!4262540 d!1255074))

(declare-fun b!4263154 () Bool)

(declare-fun res!1752162 () Bool)

(declare-fun e!2647169 () Bool)

(assert (=> b!4263154 (=> (not res!1752162) (not e!2647169))))

(assert (=> b!4263154 (= res!1752162 (isBalanced!3808 (left!35026 lt!1510992)))))

(declare-fun b!4263155 () Bool)

(declare-fun res!1752164 () Bool)

(assert (=> b!4263155 (=> (not res!1752164) (not e!2647169))))

(assert (=> b!4263155 (= res!1752164 (isBalanced!3808 (right!35356 lt!1510992)))))

(declare-fun d!1255598 () Bool)

(declare-fun res!1752161 () Bool)

(declare-fun e!2647168 () Bool)

(assert (=> d!1255598 (=> res!1752161 e!2647168)))

(assert (=> d!1255598 (= res!1752161 (not ((_ is Node!14249) lt!1510992)))))

(assert (=> d!1255598 (= (isBalanced!3808 lt!1510992) e!2647168)))

(declare-fun b!4263156 () Bool)

(declare-fun res!1752163 () Bool)

(assert (=> b!4263156 (=> (not res!1752163) (not e!2647169))))

(assert (=> b!4263156 (= res!1752163 (not (isEmpty!27986 (left!35026 lt!1510992))))))

(declare-fun b!4263157 () Bool)

(assert (=> b!4263157 (= e!2647169 (not (isEmpty!27986 (right!35356 lt!1510992))))))

(declare-fun b!4263158 () Bool)

(assert (=> b!4263158 (= e!2647168 e!2647169)))

(declare-fun res!1752166 () Bool)

(assert (=> b!4263158 (=> (not res!1752166) (not e!2647169))))

(assert (=> b!4263158 (= res!1752166 (<= (- 1) (- (height!1871 (left!35026 lt!1510992)) (height!1871 (right!35356 lt!1510992)))))))

(declare-fun b!4263159 () Bool)

(declare-fun res!1752165 () Bool)

(assert (=> b!4263159 (=> (not res!1752165) (not e!2647169))))

(assert (=> b!4263159 (= res!1752165 (<= (- (height!1871 (left!35026 lt!1510992)) (height!1871 (right!35356 lt!1510992))) 1))))

(assert (= (and d!1255598 (not res!1752161)) b!4263158))

(assert (= (and b!4263158 res!1752166) b!4263159))

(assert (= (and b!4263159 res!1752165) b!4263154))

(assert (= (and b!4263154 res!1752162) b!4263155))

(assert (= (and b!4263155 res!1752164) b!4263156))

(assert (= (and b!4263156 res!1752163) b!4263157))

(declare-fun m!4852461 () Bool)

(assert (=> b!4263154 m!4852461))

(declare-fun m!4852463 () Bool)

(assert (=> b!4263157 m!4852463))

(declare-fun m!4852465 () Bool)

(assert (=> b!4263156 m!4852465))

(declare-fun m!4852467 () Bool)

(assert (=> b!4263159 m!4852467))

(declare-fun m!4852469 () Bool)

(assert (=> b!4263159 m!4852469))

(assert (=> b!4263158 m!4852467))

(assert (=> b!4263158 m!4852469))

(declare-fun m!4852471 () Bool)

(assert (=> b!4263155 m!4852471))

(assert (=> b!4262672 d!1255598))

(declare-fun d!1255600 () Bool)

(assert (=> d!1255600 (= ($colon$colon!633 (map!9674 (t!353271 (t!353271 (list!17068 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (list!17068 t!4386))))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (t!353271 (list!17068 t!4386)))) (map!9674 (t!353271 (t!353271 (list!17068 t!4386))) f!428)))))

(assert (=> b!4262492 d!1255600))

(declare-fun d!1255602 () Bool)

(declare-fun lt!1511090 () List!47367)

(assert (=> d!1255602 (= (size!34605 lt!1511090) (size!34606 (t!353271 (t!353271 (list!17068 t!4386)))))))

(declare-fun e!2647170 () List!47367)

(assert (=> d!1255602 (= lt!1511090 e!2647170)))

(declare-fun c!724338 () Bool)

(assert (=> d!1255602 (= c!724338 ((_ is Nil!47242) (t!353271 (t!353271 (list!17068 t!4386)))))))

(assert (=> d!1255602 (= (map!9674 (t!353271 (t!353271 (list!17068 t!4386))) f!428) lt!1511090)))

(declare-fun b!4263160 () Bool)

(assert (=> b!4263160 (= e!2647170 Nil!47243)))

(declare-fun b!4263161 () Bool)

(assert (=> b!4263161 (= e!2647170 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (t!353271 (list!17068 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (t!353271 (list!17068 t!4386)))))))))

(assert (= (and d!1255602 c!724338) b!4263160))

(assert (= (and d!1255602 (not c!724338)) b!4263161))

(declare-fun b_lambda!125909 () Bool)

(assert (=> (not b_lambda!125909) (not b!4263161)))

(declare-fun t!353345 () Bool)

(declare-fun tb!256997 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353345) tb!256997))

(declare-fun result!313574 () Bool)

(assert (=> tb!256997 (= result!313574 tp_is_empty!22881)))

(assert (=> b!4263161 t!353345))

(declare-fun b_and!337807 () Bool)

(assert (= b_and!337805 (and (=> t!353345 result!313574) b_and!337807)))

(declare-fun m!4852473 () Bool)

(assert (=> d!1255602 m!4852473))

(assert (=> d!1255602 m!4852269))

(declare-fun m!4852475 () Bool)

(assert (=> b!4263161 m!4852475))

(declare-fun m!4852477 () Bool)

(assert (=> b!4263161 m!4852477))

(assert (=> b!4263161 m!4852475))

(assert (=> b!4263161 m!4852477))

(declare-fun m!4852479 () Bool)

(assert (=> b!4263161 m!4852479))

(assert (=> b!4262492 d!1255602))

(assert (=> b!4262446 d!1255242))

(assert (=> b!4262446 d!1255244))

(declare-fun d!1255604 () Bool)

(declare-fun lt!1511091 () Int)

(assert (=> d!1255604 (>= lt!1511091 0)))

(declare-fun e!2647171 () Int)

(assert (=> d!1255604 (= lt!1511091 e!2647171)))

(declare-fun c!724339 () Bool)

(assert (=> d!1255604 (= c!724339 ((_ is Nil!47242) (list!17072 (xs!17554 (right!35355 t!4386)))))))

(assert (=> d!1255604 (= (size!34606 (list!17072 (xs!17554 (right!35355 t!4386)))) lt!1511091)))

(declare-fun b!4263162 () Bool)

(assert (=> b!4263162 (= e!2647171 0)))

(declare-fun b!4263163 () Bool)

(assert (=> b!4263163 (= e!2647171 (+ 1 (size!34606 (t!353271 (list!17072 (xs!17554 (right!35355 t!4386)))))))))

(assert (= (and d!1255604 c!724339) b!4263162))

(assert (= (and d!1255604 (not c!724339)) b!4263163))

(declare-fun m!4852481 () Bool)

(assert (=> b!4263163 m!4852481))

(assert (=> b!4262526 d!1255604))

(assert (=> b!4262526 d!1255152))

(declare-fun d!1255606 () Bool)

(declare-fun lt!1511092 () Int)

(assert (=> d!1255606 (>= lt!1511092 0)))

(declare-fun e!2647172 () Int)

(assert (=> d!1255606 (= lt!1511092 e!2647172)))

(declare-fun c!724340 () Bool)

(assert (=> d!1255606 (= c!724340 ((_ is Nil!47243) (t!353272 lt!1510923)))))

(assert (=> d!1255606 (= (size!34605 (t!353272 lt!1510923)) lt!1511092)))

(declare-fun b!4263164 () Bool)

(assert (=> b!4263164 (= e!2647172 0)))

(declare-fun b!4263165 () Bool)

(assert (=> b!4263165 (= e!2647172 (+ 1 (size!34605 (t!353272 (t!353272 lt!1510923)))))))

(assert (= (and d!1255606 c!724340) b!4263164))

(assert (= (and d!1255606 (not c!724340)) b!4263165))

(declare-fun m!4852483 () Bool)

(assert (=> b!4263165 m!4852483))

(assert (=> b!4262547 d!1255606))

(declare-fun d!1255608 () Bool)

(declare-fun lt!1511093 () Int)

(assert (=> d!1255608 (>= lt!1511093 0)))

(declare-fun e!2647173 () Int)

(assert (=> d!1255608 (= lt!1511093 e!2647173)))

(declare-fun c!724341 () Bool)

(assert (=> d!1255608 (= c!724341 ((_ is Nil!47243) (t!353272 lt!1510915)))))

(assert (=> d!1255608 (= (size!34605 (t!353272 lt!1510915)) lt!1511093)))

(declare-fun b!4263166 () Bool)

(assert (=> b!4263166 (= e!2647173 0)))

(declare-fun b!4263167 () Bool)

(assert (=> b!4263167 (= e!2647173 (+ 1 (size!34605 (t!353272 (t!353272 lt!1510915)))))))

(assert (= (and d!1255608 c!724341) b!4263166))

(assert (= (and d!1255608 (not c!724341)) b!4263167))

(declare-fun m!4852485 () Bool)

(assert (=> b!4263167 m!4852485))

(assert (=> b!4262687 d!1255608))

(declare-fun d!1255610 () Bool)

(declare-fun lt!1511094 () Int)

(assert (=> d!1255610 (>= lt!1511094 0)))

(declare-fun e!2647174 () Int)

(assert (=> d!1255610 (= lt!1511094 e!2647174)))

(declare-fun c!724342 () Bool)

(assert (=> d!1255610 (= c!724342 ((_ is Nil!47242) lt!1510984))))

(assert (=> d!1255610 (= (size!34606 lt!1510984) lt!1511094)))

(declare-fun b!4263168 () Bool)

(assert (=> b!4263168 (= e!2647174 0)))

(declare-fun b!4263169 () Bool)

(assert (=> b!4263169 (= e!2647174 (+ 1 (size!34606 (t!353271 lt!1510984))))))

(assert (= (and d!1255610 c!724342) b!4263168))

(assert (= (and d!1255610 (not c!724342)) b!4263169))

(declare-fun m!4852487 () Bool)

(assert (=> b!4263169 m!4852487))

(assert (=> b!4262642 d!1255610))

(declare-fun d!1255612 () Bool)

(declare-fun lt!1511095 () Int)

(assert (=> d!1255612 (>= lt!1511095 0)))

(declare-fun e!2647175 () Int)

(assert (=> d!1255612 (= lt!1511095 e!2647175)))

(declare-fun c!724343 () Bool)

(assert (=> d!1255612 (= c!724343 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255612 (= (size!34606 (list!17068 (left!35025 (left!35025 t!4386)))) lt!1511095)))

(declare-fun b!4263170 () Bool)

(assert (=> b!4263170 (= e!2647175 0)))

(declare-fun b!4263171 () Bool)

(assert (=> b!4263171 (= e!2647175 (+ 1 (size!34606 (t!353271 (list!17068 (left!35025 (left!35025 t!4386)))))))))

(assert (= (and d!1255612 c!724343) b!4263170))

(assert (= (and d!1255612 (not c!724343)) b!4263171))

(assert (=> b!4263171 m!4852245))

(assert (=> b!4262642 d!1255612))

(declare-fun d!1255614 () Bool)

(declare-fun lt!1511096 () Int)

(assert (=> d!1255614 (>= lt!1511096 0)))

(declare-fun e!2647176 () Int)

(assert (=> d!1255614 (= lt!1511096 e!2647176)))

(declare-fun c!724344 () Bool)

(assert (=> d!1255614 (= c!724344 ((_ is Nil!47242) (list!17068 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255614 (= (size!34606 (list!17068 (right!35355 (left!35025 t!4386)))) lt!1511096)))

(declare-fun b!4263172 () Bool)

(assert (=> b!4263172 (= e!2647176 0)))

(declare-fun b!4263173 () Bool)

(assert (=> b!4263173 (= e!2647176 (+ 1 (size!34606 (t!353271 (list!17068 (right!35355 (left!35025 t!4386)))))))))

(assert (= (and d!1255614 c!724344) b!4263172))

(assert (= (and d!1255614 (not c!724344)) b!4263173))

(declare-fun m!4852489 () Bool)

(assert (=> b!4263173 m!4852489))

(assert (=> b!4262642 d!1255614))

(declare-fun d!1255616 () Bool)

(assert (=> d!1255616 (= (isEmpty!27992 (list!17068 (right!35355 t!4386))) ((_ is Nil!47242) (list!17068 (right!35355 t!4386))))))

(assert (=> d!1255228 d!1255616))

(assert (=> d!1255228 d!1255052))

(assert (=> d!1255228 d!1255458))

(declare-fun d!1255618 () Bool)

(assert (=> d!1255618 (= ($colon$colon!633 (map!9674 (t!353271 (list!17068 (right!35355 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (right!35355 t!4386))))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (list!17068 (right!35355 t!4386)))) (map!9674 (t!353271 (list!17068 (right!35355 t!4386))) f!428)))))

(assert (=> b!4262462 d!1255618))

(declare-fun d!1255620 () Bool)

(declare-fun lt!1511097 () List!47367)

(assert (=> d!1255620 (= (size!34605 lt!1511097) (size!34606 (t!353271 (list!17068 (right!35355 t!4386)))))))

(declare-fun e!2647177 () List!47367)

(assert (=> d!1255620 (= lt!1511097 e!2647177)))

(declare-fun c!724345 () Bool)

(assert (=> d!1255620 (= c!724345 ((_ is Nil!47242) (t!353271 (list!17068 (right!35355 t!4386)))))))

(assert (=> d!1255620 (= (map!9674 (t!353271 (list!17068 (right!35355 t!4386))) f!428) lt!1511097)))

(declare-fun b!4263174 () Bool)

(assert (=> b!4263174 (= e!2647177 Nil!47243)))

(declare-fun b!4263175 () Bool)

(assert (=> b!4263175 (= e!2647177 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (list!17068 (right!35355 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (list!17068 (right!35355 t!4386)))))))))

(assert (= (and d!1255620 c!724345) b!4263174))

(assert (= (and d!1255620 (not c!724345)) b!4263175))

(declare-fun b_lambda!125911 () Bool)

(assert (=> (not b_lambda!125911) (not b!4263175)))

(declare-fun t!353347 () Bool)

(declare-fun tb!256999 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353347) tb!256999))

(declare-fun result!313576 () Bool)

(assert (=> tb!256999 (= result!313576 tp_is_empty!22881)))

(assert (=> b!4263175 t!353347))

(declare-fun b_and!337809 () Bool)

(assert (= b_and!337807 (and (=> t!353347 result!313576) b_and!337809)))

(declare-fun m!4852491 () Bool)

(assert (=> d!1255620 m!4852491))

(assert (=> d!1255620 m!4852241))

(declare-fun m!4852493 () Bool)

(assert (=> b!4263175 m!4852493))

(declare-fun m!4852495 () Bool)

(assert (=> b!4263175 m!4852495))

(assert (=> b!4263175 m!4852493))

(assert (=> b!4263175 m!4852495))

(declare-fun m!4852497 () Bool)

(assert (=> b!4263175 m!4852497))

(assert (=> b!4262462 d!1255620))

(declare-fun b!4263176 () Bool)

(declare-fun res!1752168 () Bool)

(declare-fun e!2647179 () Bool)

(assert (=> b!4263176 (=> (not res!1752168) (not e!2647179))))

(assert (=> b!4263176 (= res!1752168 (isBalanced!3808 (left!35026 (right!35356 (left!35026 lt!1510890)))))))

(declare-fun b!4263177 () Bool)

(declare-fun res!1752170 () Bool)

(assert (=> b!4263177 (=> (not res!1752170) (not e!2647179))))

(assert (=> b!4263177 (= res!1752170 (isBalanced!3808 (right!35356 (right!35356 (left!35026 lt!1510890)))))))

(declare-fun d!1255622 () Bool)

(declare-fun res!1752167 () Bool)

(declare-fun e!2647178 () Bool)

(assert (=> d!1255622 (=> res!1752167 e!2647178)))

(assert (=> d!1255622 (= res!1752167 (not ((_ is Node!14249) (right!35356 (left!35026 lt!1510890)))))))

(assert (=> d!1255622 (= (isBalanced!3808 (right!35356 (left!35026 lt!1510890))) e!2647178)))

(declare-fun b!4263178 () Bool)

(declare-fun res!1752169 () Bool)

(assert (=> b!4263178 (=> (not res!1752169) (not e!2647179))))

(assert (=> b!4263178 (= res!1752169 (not (isEmpty!27986 (left!35026 (right!35356 (left!35026 lt!1510890))))))))

(declare-fun b!4263179 () Bool)

(assert (=> b!4263179 (= e!2647179 (not (isEmpty!27986 (right!35356 (right!35356 (left!35026 lt!1510890))))))))

(declare-fun b!4263180 () Bool)

(assert (=> b!4263180 (= e!2647178 e!2647179)))

(declare-fun res!1752172 () Bool)

(assert (=> b!4263180 (=> (not res!1752172) (not e!2647179))))

(assert (=> b!4263180 (= res!1752172 (<= (- 1) (- (height!1871 (left!35026 (right!35356 (left!35026 lt!1510890)))) (height!1871 (right!35356 (right!35356 (left!35026 lt!1510890)))))))))

(declare-fun b!4263181 () Bool)

(declare-fun res!1752171 () Bool)

(assert (=> b!4263181 (=> (not res!1752171) (not e!2647179))))

(assert (=> b!4263181 (= res!1752171 (<= (- (height!1871 (left!35026 (right!35356 (left!35026 lt!1510890)))) (height!1871 (right!35356 (right!35356 (left!35026 lt!1510890))))) 1))))

(assert (= (and d!1255622 (not res!1752167)) b!4263180))

(assert (= (and b!4263180 res!1752172) b!4263181))

(assert (= (and b!4263181 res!1752171) b!4263176))

(assert (= (and b!4263176 res!1752168) b!4263177))

(assert (= (and b!4263177 res!1752170) b!4263178))

(assert (= (and b!4263178 res!1752169) b!4263179))

(declare-fun m!4852499 () Bool)

(assert (=> b!4263176 m!4852499))

(declare-fun m!4852501 () Bool)

(assert (=> b!4263179 m!4852501))

(declare-fun m!4852503 () Bool)

(assert (=> b!4263178 m!4852503))

(declare-fun m!4852505 () Bool)

(assert (=> b!4263181 m!4852505))

(declare-fun m!4852507 () Bool)

(assert (=> b!4263181 m!4852507))

(assert (=> b!4263180 m!4852505))

(assert (=> b!4263180 m!4852507))

(declare-fun m!4852509 () Bool)

(assert (=> b!4263177 m!4852509))

(assert (=> b!4262655 d!1255622))

(declare-fun d!1255624 () Bool)

(declare-fun lt!1511098 () Bool)

(assert (=> d!1255624 (= lt!1511098 (isEmpty!27992 (list!17068 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255624 (= lt!1511098 (= (size!34608 (right!35355 (left!35025 t!4386))) 0))))

(assert (=> d!1255624 (= (isEmpty!27987 (right!35355 (left!35025 t!4386))) lt!1511098)))

(declare-fun bs!599143 () Bool)

(assert (= bs!599143 d!1255624))

(assert (=> bs!599143 m!4850827))

(assert (=> bs!599143 m!4850827))

(declare-fun m!4852511 () Bool)

(assert (=> bs!599143 m!4852511))

(assert (=> bs!599143 m!4851203))

(assert (=> b!4262512 d!1255624))

(declare-fun d!1255626 () Bool)

(declare-fun res!1752173 () Bool)

(declare-fun e!2647180 () Bool)

(assert (=> d!1255626 (=> (not res!1752173) (not e!2647180))))

(assert (=> d!1255626 (= res!1752173 (= (csize!28726 (left!35025 (right!35355 t!4386))) (+ (size!34608 (left!35025 (left!35025 (right!35355 t!4386)))) (size!34608 (right!35355 (left!35025 (right!35355 t!4386)))))))))

(assert (=> d!1255626 (= (inv!62153 (left!35025 (right!35355 t!4386))) e!2647180)))

(declare-fun b!4263182 () Bool)

(declare-fun res!1752174 () Bool)

(assert (=> b!4263182 (=> (not res!1752174) (not e!2647180))))

(assert (=> b!4263182 (= res!1752174 (and (not (= (left!35025 (left!35025 (right!35355 t!4386))) Empty!14248)) (not (= (right!35355 (left!35025 (right!35355 t!4386))) Empty!14248))))))

(declare-fun b!4263183 () Bool)

(declare-fun res!1752175 () Bool)

(assert (=> b!4263183 (=> (not res!1752175) (not e!2647180))))

(assert (=> b!4263183 (= res!1752175 (= (cheight!14459 (left!35025 (right!35355 t!4386))) (+ (max!0 (height!1872 (left!35025 (left!35025 (right!35355 t!4386)))) (height!1872 (right!35355 (left!35025 (right!35355 t!4386))))) 1)))))

(declare-fun b!4263184 () Bool)

(assert (=> b!4263184 (= e!2647180 (<= 0 (cheight!14459 (left!35025 (right!35355 t!4386)))))))

(assert (= (and d!1255626 res!1752173) b!4263182))

(assert (= (and b!4263182 res!1752174) b!4263183))

(assert (= (and b!4263183 res!1752175) b!4263184))

(declare-fun m!4852513 () Bool)

(assert (=> d!1255626 m!4852513))

(declare-fun m!4852515 () Bool)

(assert (=> d!1255626 m!4852515))

(declare-fun m!4852517 () Bool)

(assert (=> b!4263183 m!4852517))

(declare-fun m!4852519 () Bool)

(assert (=> b!4263183 m!4852519))

(assert (=> b!4263183 m!4852517))

(assert (=> b!4263183 m!4852519))

(declare-fun m!4852521 () Bool)

(assert (=> b!4263183 m!4852521))

(assert (=> b!4262568 d!1255626))

(declare-fun d!1255628 () Bool)

(declare-fun lt!1511099 () Bool)

(assert (=> d!1255628 (= lt!1511099 (isEmpty!27992 (list!17068 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255628 (= lt!1511099 (= (size!34608 (right!35355 (right!35355 t!4386))) 0))))

(assert (=> d!1255628 (= (isEmpty!27987 (right!35355 (right!35355 t!4386))) lt!1511099)))

(declare-fun bs!599144 () Bool)

(assert (= bs!599144 d!1255628))

(assert (=> bs!599144 m!4850875))

(assert (=> bs!599144 m!4850875))

(declare-fun m!4852523 () Bool)

(assert (=> bs!599144 m!4852523))

(assert (=> bs!599144 m!4851169))

(assert (=> b!4262466 d!1255628))

(declare-fun d!1255630 () Bool)

(declare-fun c!724346 () Bool)

(assert (=> d!1255630 (= c!724346 ((_ is Nil!47242) lt!1510964))))

(declare-fun e!2647181 () (InoxSet T!79420))

(assert (=> d!1255630 (= (content!7448 lt!1510964) e!2647181)))

(declare-fun b!4263185 () Bool)

(assert (=> b!4263185 (= e!2647181 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263186 () Bool)

(assert (=> b!4263186 (= e!2647181 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510964) true) (content!7448 (t!353271 lt!1510964))))))

(assert (= (and d!1255630 c!724346) b!4263185))

(assert (= (and d!1255630 (not c!724346)) b!4263186))

(declare-fun m!4852525 () Bool)

(assert (=> b!4263186 m!4852525))

(declare-fun m!4852527 () Bool)

(assert (=> b!4263186 m!4852527))

(assert (=> d!1255150 d!1255630))

(assert (=> d!1255150 d!1255522))

(assert (=> d!1255150 d!1255174))

(declare-fun b!4263187 () Bool)

(declare-fun e!2647182 () List!47367)

(assert (=> b!4263187 (= e!2647182 Nil!47243)))

(declare-fun b!4263189 () Bool)

(declare-fun e!2647183 () List!47367)

(assert (=> b!4263189 (= e!2647183 (list!17070 (xs!17555 lt!1510978)))))

(declare-fun b!4263190 () Bool)

(assert (=> b!4263190 (= e!2647183 (++!12036 (list!17067 (left!35026 lt!1510978)) (list!17067 (right!35356 lt!1510978))))))

(declare-fun b!4263188 () Bool)

(assert (=> b!4263188 (= e!2647182 e!2647183)))

(declare-fun c!724348 () Bool)

(assert (=> b!4263188 (= c!724348 ((_ is Leaf!22019) lt!1510978))))

(declare-fun d!1255632 () Bool)

(declare-fun c!724347 () Bool)

(assert (=> d!1255632 (= c!724347 ((_ is Empty!14249) lt!1510978))))

(assert (=> d!1255632 (= (list!17067 lt!1510978) e!2647182)))

(assert (= (and d!1255632 c!724347) b!4263187))

(assert (= (and d!1255632 (not c!724347)) b!4263188))

(assert (= (and b!4263188 c!724348) b!4263189))

(assert (= (and b!4263188 (not c!724348)) b!4263190))

(declare-fun m!4852529 () Bool)

(assert (=> b!4263189 m!4852529))

(declare-fun m!4852531 () Bool)

(assert (=> b!4263190 m!4852531))

(declare-fun m!4852533 () Bool)

(assert (=> b!4263190 m!4852533))

(assert (=> b!4263190 m!4852531))

(assert (=> b!4263190 m!4852533))

(declare-fun m!4852535 () Bool)

(assert (=> b!4263190 m!4852535))

(assert (=> d!1255192 d!1255632))

(declare-fun d!1255634 () Bool)

(declare-fun lt!1511100 () List!47367)

(assert (=> d!1255634 (= (size!34605 lt!1511100) (size!34606 (list!17068 (right!35355 (right!35355 t!4386)))))))

(declare-fun e!2647184 () List!47367)

(assert (=> d!1255634 (= lt!1511100 e!2647184)))

(declare-fun c!724349 () Bool)

(assert (=> d!1255634 (= c!724349 ((_ is Nil!47242) (list!17068 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255634 (= (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428) lt!1511100)))

(declare-fun b!4263191 () Bool)

(assert (=> b!4263191 (= e!2647184 Nil!47243)))

(declare-fun b!4263192 () Bool)

(assert (=> b!4263192 (= e!2647184 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (right!35355 (right!35355 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(assert (= (and d!1255634 c!724349) b!4263191))

(assert (= (and d!1255634 (not c!724349)) b!4263192))

(declare-fun b_lambda!125913 () Bool)

(assert (=> (not b_lambda!125913) (not b!4263192)))

(declare-fun t!353349 () Bool)

(declare-fun tb!257001 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353349) tb!257001))

(declare-fun result!313578 () Bool)

(assert (=> tb!257001 (= result!313578 tp_is_empty!22881)))

(assert (=> b!4263192 t!353349))

(declare-fun b_and!337811 () Bool)

(assert (= b_and!337809 (and (=> t!353349 result!313578) b_and!337811)))

(declare-fun m!4852537 () Bool)

(assert (=> d!1255634 m!4852537))

(assert (=> d!1255634 m!4850875))

(assert (=> d!1255634 m!4851081))

(declare-fun m!4852539 () Bool)

(assert (=> b!4263192 m!4852539))

(declare-fun m!4852541 () Bool)

(assert (=> b!4263192 m!4852541))

(assert (=> b!4263192 m!4852539))

(assert (=> b!4263192 m!4852541))

(declare-fun m!4852543 () Bool)

(assert (=> b!4263192 m!4852543))

(assert (=> d!1255192 d!1255634))

(assert (=> d!1255192 d!1255080))

(assert (=> d!1255192 d!1255404))

(declare-fun d!1255636 () Bool)

(declare-fun lt!1511101 () List!47367)

(assert (=> d!1255636 (= (size!34605 lt!1511101) (size!34606 (list!17072 (xs!17554 (left!35025 t!4386)))))))

(declare-fun e!2647185 () List!47367)

(assert (=> d!1255636 (= lt!1511101 e!2647185)))

(declare-fun c!724350 () Bool)

(assert (=> d!1255636 (= c!724350 ((_ is Nil!47242) (list!17072 (xs!17554 (left!35025 t!4386)))))))

(assert (=> d!1255636 (= (map!9674 (list!17072 (xs!17554 (left!35025 t!4386))) f!428) lt!1511101)))

(declare-fun b!4263193 () Bool)

(assert (=> b!4263193 (= e!2647185 Nil!47243)))

(declare-fun b!4263194 () Bool)

(assert (=> b!4263194 (= e!2647185 ($colon$colon!633 (map!9674 (t!353271 (list!17072 (xs!17554 (left!35025 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17072 (xs!17554 (left!35025 t!4386)))))))))

(assert (= (and d!1255636 c!724350) b!4263193))

(assert (= (and d!1255636 (not c!724350)) b!4263194))

(declare-fun b_lambda!125915 () Bool)

(assert (=> (not b_lambda!125915) (not b!4263194)))

(declare-fun t!353351 () Bool)

(declare-fun tb!257003 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353351) tb!257003))

(declare-fun result!313580 () Bool)

(assert (=> tb!257003 (= result!313580 tp_is_empty!22881)))

(assert (=> b!4263194 t!353351))

(declare-fun b_and!337813 () Bool)

(assert (= b_and!337811 (and (=> t!353351 result!313580) b_and!337813)))

(declare-fun m!4852545 () Bool)

(assert (=> d!1255636 m!4852545))

(assert (=> d!1255636 m!4850891))

(assert (=> d!1255636 m!4851125))

(declare-fun m!4852547 () Bool)

(assert (=> b!4263194 m!4852547))

(declare-fun m!4852549 () Bool)

(assert (=> b!4263194 m!4852549))

(assert (=> b!4263194 m!4852547))

(assert (=> b!4263194 m!4852549))

(declare-fun m!4852551 () Bool)

(assert (=> b!4263194 m!4852551))

(assert (=> d!1255082 d!1255636))

(assert (=> d!1255082 d!1255108))

(declare-fun d!1255638 () Bool)

(declare-fun _$10!132 () IArray!28503)

(assert (=> d!1255638 (= _$10!132 (IArray!28504 (map!9674 (list!17072 (xs!17554 (left!35025 t!4386))) f!428)))))

(declare-fun e!2647188 () Bool)

(declare-fun inv!62155 (IArray!28503) Bool)

(assert (=> d!1255638 (and (inv!62155 _$10!132) e!2647188)))

(assert (=> d!1255638 (= (choose!25989 (xs!17554 (left!35025 t!4386)) f!428) _$10!132)))

(declare-fun b!4263197 () Bool)

(declare-fun tp!1307175 () Bool)

(assert (=> b!4263197 (= e!2647188 tp!1307175)))

(assert (= d!1255638 b!4263197))

(assert (=> d!1255638 m!4850891))

(assert (=> d!1255638 m!4850891))

(assert (=> d!1255638 m!4851107))

(declare-fun m!4852553 () Bool)

(assert (=> d!1255638 m!4852553))

(assert (=> d!1255082 d!1255638))

(declare-fun d!1255640 () Bool)

(declare-fun lt!1511102 () Int)

(assert (=> d!1255640 (>= lt!1511102 0)))

(declare-fun e!2647189 () Int)

(assert (=> d!1255640 (= lt!1511102 e!2647189)))

(declare-fun c!724351 () Bool)

(assert (=> d!1255640 (= c!724351 ((_ is Nil!47243) lt!1510961))))

(assert (=> d!1255640 (= (size!34605 lt!1510961) lt!1511102)))

(declare-fun b!4263198 () Bool)

(assert (=> b!4263198 (= e!2647189 0)))

(declare-fun b!4263199 () Bool)

(assert (=> b!4263199 (= e!2647189 (+ 1 (size!34605 (t!353272 lt!1510961))))))

(assert (= (and d!1255640 c!724351) b!4263198))

(assert (= (and d!1255640 (not c!724351)) b!4263199))

(declare-fun m!4852555 () Bool)

(assert (=> b!4263199 m!4852555))

(assert (=> b!4262552 d!1255640))

(declare-fun d!1255642 () Bool)

(declare-fun lt!1511103 () Int)

(assert (=> d!1255642 (>= lt!1511103 0)))

(declare-fun e!2647190 () Int)

(assert (=> d!1255642 (= lt!1511103 e!2647190)))

(declare-fun c!724352 () Bool)

(assert (=> d!1255642 (= c!724352 ((_ is Nil!47243) (list!17067 (left!35026 lt!1510890))))))

(assert (=> d!1255642 (= (size!34605 (list!17067 (left!35026 lt!1510890))) lt!1511103)))

(declare-fun b!4263200 () Bool)

(assert (=> b!4263200 (= e!2647190 0)))

(declare-fun b!4263201 () Bool)

(assert (=> b!4263201 (= e!2647190 (+ 1 (size!34605 (t!353272 (list!17067 (left!35026 lt!1510890))))))))

(assert (= (and d!1255642 c!724352) b!4263200))

(assert (= (and d!1255642 (not c!724352)) b!4263201))

(assert (=> b!4263201 m!4852277))

(assert (=> b!4262552 d!1255642))

(declare-fun d!1255644 () Bool)

(declare-fun lt!1511104 () Int)

(assert (=> d!1255644 (>= lt!1511104 0)))

(declare-fun e!2647191 () Int)

(assert (=> d!1255644 (= lt!1511104 e!2647191)))

(declare-fun c!724353 () Bool)

(assert (=> d!1255644 (= c!724353 ((_ is Nil!47243) (list!17067 (right!35356 lt!1510890))))))

(assert (=> d!1255644 (= (size!34605 (list!17067 (right!35356 lt!1510890))) lt!1511104)))

(declare-fun b!4263202 () Bool)

(assert (=> b!4263202 (= e!2647191 0)))

(declare-fun b!4263203 () Bool)

(assert (=> b!4263203 (= e!2647191 (+ 1 (size!34605 (t!353272 (list!17067 (right!35356 lt!1510890))))))))

(assert (= (and d!1255644 c!724353) b!4263202))

(assert (= (and d!1255644 (not c!724353)) b!4263203))

(declare-fun m!4852557 () Bool)

(assert (=> b!4263203 m!4852557))

(assert (=> b!4262552 d!1255644))

(assert (=> d!1255110 d!1255604))

(assert (=> d!1255110 d!1255152))

(assert (=> b!4262609 d!1255568))

(declare-fun d!1255646 () Bool)

(declare-fun res!1752176 () Bool)

(declare-fun e!2647192 () Bool)

(assert (=> d!1255646 (=> (not res!1752176) (not e!2647192))))

(assert (=> d!1255646 (= res!1752176 (= (csize!28726 (left!35025 (left!35025 t!4386))) (+ (size!34608 (left!35025 (left!35025 (left!35025 t!4386)))) (size!34608 (right!35355 (left!35025 (left!35025 t!4386)))))))))

(assert (=> d!1255646 (= (inv!62153 (left!35025 (left!35025 t!4386))) e!2647192)))

(declare-fun b!4263204 () Bool)

(declare-fun res!1752177 () Bool)

(assert (=> b!4263204 (=> (not res!1752177) (not e!2647192))))

(assert (=> b!4263204 (= res!1752177 (and (not (= (left!35025 (left!35025 (left!35025 t!4386))) Empty!14248)) (not (= (right!35355 (left!35025 (left!35025 t!4386))) Empty!14248))))))

(declare-fun b!4263205 () Bool)

(declare-fun res!1752178 () Bool)

(assert (=> b!4263205 (=> (not res!1752178) (not e!2647192))))

(assert (=> b!4263205 (= res!1752178 (= (cheight!14459 (left!35025 (left!35025 t!4386))) (+ (max!0 (height!1872 (left!35025 (left!35025 (left!35025 t!4386)))) (height!1872 (right!35355 (left!35025 (left!35025 t!4386))))) 1)))))

(declare-fun b!4263206 () Bool)

(assert (=> b!4263206 (= e!2647192 (<= 0 (cheight!14459 (left!35025 (left!35025 t!4386)))))))

(assert (= (and d!1255646 res!1752176) b!4263204))

(assert (= (and b!4263204 res!1752177) b!4263205))

(assert (= (and b!4263205 res!1752178) b!4263206))

(declare-fun m!4852559 () Bool)

(assert (=> d!1255646 m!4852559))

(declare-fun m!4852561 () Bool)

(assert (=> d!1255646 m!4852561))

(assert (=> b!4263205 m!4852071))

(assert (=> b!4263205 m!4852073))

(assert (=> b!4263205 m!4852071))

(assert (=> b!4263205 m!4852073))

(declare-fun m!4852563 () Bool)

(assert (=> b!4263205 m!4852563))

(assert (=> b!4262708 d!1255646))

(assert (=> b!4262549 d!1255542))

(declare-fun d!1255648 () Bool)

(assert (=> d!1255648 (= (list!17072 (xs!17554 (left!35025 (right!35355 t!4386)))) (innerList!14308 (xs!17554 (left!35025 (right!35355 t!4386)))))))

(assert (=> b!4262485 d!1255648))

(declare-fun d!1255650 () Bool)

(declare-fun lt!1511105 () Bool)

(assert (=> d!1255650 (= lt!1511105 (isEmpty!27990 (list!17067 (left!35026 lt!1510917))))))

(assert (=> d!1255650 (= lt!1511105 (= (size!34607 (left!35026 lt!1510917)) 0))))

(assert (=> d!1255650 (= (isEmpty!27986 (left!35026 lt!1510917)) lt!1511105)))

(declare-fun bs!599145 () Bool)

(assert (= bs!599145 d!1255650))

(assert (=> bs!599145 m!4851041))

(assert (=> bs!599145 m!4851041))

(declare-fun m!4852565 () Bool)

(assert (=> bs!599145 m!4852565))

(declare-fun m!4852567 () Bool)

(assert (=> bs!599145 m!4852567))

(assert (=> b!4262598 d!1255650))

(assert (=> b!4262659 d!1255562))

(assert (=> b!4262659 d!1255564))

(declare-fun d!1255652 () Bool)

(declare-fun c!724354 () Bool)

(assert (=> d!1255652 (= c!724354 ((_ is Nil!47242) (t!353271 lt!1510937)))))

(declare-fun e!2647193 () (InoxSet T!79420))

(assert (=> d!1255652 (= (content!7448 (t!353271 lt!1510937)) e!2647193)))

(declare-fun b!4263207 () Bool)

(assert (=> b!4263207 (= e!2647193 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263208 () Bool)

(assert (=> b!4263208 (= e!2647193 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (t!353271 lt!1510937)) true) (content!7448 (t!353271 (t!353271 lt!1510937)))))))

(assert (= (and d!1255652 c!724354) b!4263207))

(assert (= (and d!1255652 (not c!724354)) b!4263208))

(declare-fun m!4852569 () Bool)

(assert (=> b!4263208 m!4852569))

(declare-fun m!4852571 () Bool)

(assert (=> b!4263208 m!4852571))

(assert (=> b!4262591 d!1255652))

(declare-fun b!4263212 () Bool)

(declare-fun e!2647195 () Bool)

(declare-fun lt!1511106 () List!47366)

(assert (=> b!4263212 (= e!2647195 (or (not (= (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) Nil!47242)) (= lt!1511106 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4263211 () Bool)

(declare-fun res!1752180 () Bool)

(assert (=> b!4263211 (=> (not res!1752180) (not e!2647195))))

(assert (=> b!4263211 (= res!1752180 (= (size!34606 lt!1511106) (+ (size!34606 (list!17068 (left!35025 (left!35025 (left!35025 t!4386))))) (size!34606 (list!17068 (right!35355 (left!35025 (left!35025 t!4386))))))))))

(declare-fun d!1255654 () Bool)

(assert (=> d!1255654 e!2647195))

(declare-fun res!1752179 () Bool)

(assert (=> d!1255654 (=> (not res!1752179) (not e!2647195))))

(assert (=> d!1255654 (= res!1752179 (= (content!7448 lt!1511106) ((_ map or) (content!7448 (list!17068 (left!35025 (left!35025 (left!35025 t!4386))))) (content!7448 (list!17068 (right!35355 (left!35025 (left!35025 t!4386))))))))))

(declare-fun e!2647194 () List!47366)

(assert (=> d!1255654 (= lt!1511106 e!2647194)))

(declare-fun c!724355 () Bool)

(assert (=> d!1255654 (= c!724355 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 (left!35025 t!4386))))))))

(assert (=> d!1255654 (= (++!12035 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386))))) lt!1511106)))

(declare-fun b!4263209 () Bool)

(assert (=> b!4263209 (= e!2647194 (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263210 () Bool)

(assert (=> b!4263210 (= e!2647194 (Cons!47242 (h!52662 (list!17068 (left!35025 (left!35025 (left!35025 t!4386))))) (++!12035 (t!353271 (list!17068 (left!35025 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))))))))

(assert (= (and d!1255654 c!724355) b!4263209))

(assert (= (and d!1255654 (not c!724355)) b!4263210))

(assert (= (and d!1255654 res!1752179) b!4263211))

(assert (= (and b!4263211 res!1752180) b!4263212))

(declare-fun m!4852573 () Bool)

(assert (=> b!4263211 m!4852573))

(assert (=> b!4263211 m!4851425))

(declare-fun m!4852575 () Bool)

(assert (=> b!4263211 m!4852575))

(assert (=> b!4263211 m!4851427))

(declare-fun m!4852577 () Bool)

(assert (=> b!4263211 m!4852577))

(declare-fun m!4852579 () Bool)

(assert (=> d!1255654 m!4852579))

(assert (=> d!1255654 m!4851425))

(declare-fun m!4852581 () Bool)

(assert (=> d!1255654 m!4852581))

(assert (=> d!1255654 m!4851427))

(declare-fun m!4852583 () Bool)

(assert (=> d!1255654 m!4852583))

(assert (=> b!4263210 m!4851427))

(declare-fun m!4852585 () Bool)

(assert (=> b!4263210 m!4852585))

(assert (=> b!4262649 d!1255654))

(declare-fun b!4263216 () Bool)

(declare-fun e!2647197 () List!47366)

(assert (=> b!4263216 (= e!2647197 (++!12035 (list!17068 (left!35025 (left!35025 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4263214 () Bool)

(declare-fun e!2647196 () List!47366)

(assert (=> b!4263214 (= e!2647196 e!2647197)))

(declare-fun c!724357 () Bool)

(assert (=> b!4263214 (= c!724357 ((_ is Leaf!22018) (left!35025 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263213 () Bool)

(assert (=> b!4263213 (= e!2647196 Nil!47242)))

(declare-fun b!4263215 () Bool)

(assert (=> b!4263215 (= e!2647197 (list!17072 (xs!17554 (left!35025 (left!35025 (left!35025 t!4386))))))))

(declare-fun d!1255656 () Bool)

(declare-fun c!724356 () Bool)

(assert (=> d!1255656 (= c!724356 ((_ is Empty!14248) (left!35025 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255656 (= (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) e!2647196)))

(assert (= (and d!1255656 c!724356) b!4263213))

(assert (= (and d!1255656 (not c!724356)) b!4263214))

(assert (= (and b!4263214 c!724357) b!4263215))

(assert (= (and b!4263214 (not c!724357)) b!4263216))

(declare-fun m!4852587 () Bool)

(assert (=> b!4263216 m!4852587))

(declare-fun m!4852589 () Bool)

(assert (=> b!4263216 m!4852589))

(assert (=> b!4263216 m!4852587))

(assert (=> b!4263216 m!4852589))

(declare-fun m!4852591 () Bool)

(assert (=> b!4263216 m!4852591))

(declare-fun m!4852593 () Bool)

(assert (=> b!4263215 m!4852593))

(assert (=> b!4262649 d!1255656))

(declare-fun b!4263220 () Bool)

(declare-fun e!2647199 () List!47366)

(assert (=> b!4263220 (= e!2647199 (++!12035 (list!17068 (left!35025 (right!35355 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (right!35355 (left!35025 (left!35025 t!4386)))))))))

(declare-fun b!4263218 () Bool)

(declare-fun e!2647198 () List!47366)

(assert (=> b!4263218 (= e!2647198 e!2647199)))

(declare-fun c!724359 () Bool)

(assert (=> b!4263218 (= c!724359 ((_ is Leaf!22018) (right!35355 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263217 () Bool)

(assert (=> b!4263217 (= e!2647198 Nil!47242)))

(declare-fun b!4263219 () Bool)

(assert (=> b!4263219 (= e!2647199 (list!17072 (xs!17554 (right!35355 (left!35025 (left!35025 t!4386))))))))

(declare-fun d!1255658 () Bool)

(declare-fun c!724358 () Bool)

(assert (=> d!1255658 (= c!724358 ((_ is Empty!14248) (right!35355 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255658 (= (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) e!2647198)))

(assert (= (and d!1255658 c!724358) b!4263217))

(assert (= (and d!1255658 (not c!724358)) b!4263218))

(assert (= (and b!4263218 c!724359) b!4263219))

(assert (= (and b!4263218 (not c!724359)) b!4263220))

(declare-fun m!4852595 () Bool)

(assert (=> b!4263220 m!4852595))

(declare-fun m!4852597 () Bool)

(assert (=> b!4263220 m!4852597))

(assert (=> b!4263220 m!4852595))

(assert (=> b!4263220 m!4852597))

(declare-fun m!4852599 () Bool)

(assert (=> b!4263220 m!4852599))

(declare-fun m!4852601 () Bool)

(assert (=> b!4263219 m!4852601))

(assert (=> b!4262649 d!1255658))

(declare-fun d!1255660 () Bool)

(assert (=> d!1255660 (= (list!17072 (xs!17554 (right!35355 (left!35025 t!4386)))) (innerList!14308 (xs!17554 (right!35355 (left!35025 t!4386)))))))

(assert (=> b!4262652 d!1255660))

(declare-fun d!1255662 () Bool)

(declare-fun c!724360 () Bool)

(assert (=> d!1255662 (= c!724360 ((_ is Node!14248) (left!35025 (left!35025 (left!35025 t!4386)))))))

(declare-fun e!2647200 () Bool)

(assert (=> d!1255662 (= (inv!62149 (left!35025 (left!35025 (left!35025 t!4386)))) e!2647200)))

(declare-fun b!4263221 () Bool)

(assert (=> b!4263221 (= e!2647200 (inv!62153 (left!35025 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263222 () Bool)

(declare-fun e!2647201 () Bool)

(assert (=> b!4263222 (= e!2647200 e!2647201)))

(declare-fun res!1752181 () Bool)

(assert (=> b!4263222 (= res!1752181 (not ((_ is Leaf!22018) (left!35025 (left!35025 (left!35025 t!4386))))))))

(assert (=> b!4263222 (=> res!1752181 e!2647201)))

(declare-fun b!4263223 () Bool)

(assert (=> b!4263223 (= e!2647201 (inv!62154 (left!35025 (left!35025 (left!35025 t!4386)))))))

(assert (= (and d!1255662 c!724360) b!4263221))

(assert (= (and d!1255662 (not c!724360)) b!4263222))

(assert (= (and b!4263222 (not res!1752181)) b!4263223))

(declare-fun m!4852603 () Bool)

(assert (=> b!4263221 m!4852603))

(declare-fun m!4852605 () Bool)

(assert (=> b!4263223 m!4852605))

(assert (=> b!4262738 d!1255662))

(declare-fun d!1255664 () Bool)

(declare-fun c!724361 () Bool)

(assert (=> d!1255664 (= c!724361 ((_ is Node!14248) (right!35355 (left!35025 (left!35025 t!4386)))))))

(declare-fun e!2647202 () Bool)

(assert (=> d!1255664 (= (inv!62149 (right!35355 (left!35025 (left!35025 t!4386)))) e!2647202)))

(declare-fun b!4263224 () Bool)

(assert (=> b!4263224 (= e!2647202 (inv!62153 (right!35355 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263225 () Bool)

(declare-fun e!2647203 () Bool)

(assert (=> b!4263225 (= e!2647202 e!2647203)))

(declare-fun res!1752182 () Bool)

(assert (=> b!4263225 (= res!1752182 (not ((_ is Leaf!22018) (right!35355 (left!35025 (left!35025 t!4386))))))))

(assert (=> b!4263225 (=> res!1752182 e!2647203)))

(declare-fun b!4263226 () Bool)

(assert (=> b!4263226 (= e!2647203 (inv!62154 (right!35355 (left!35025 (left!35025 t!4386)))))))

(assert (= (and d!1255664 c!724361) b!4263224))

(assert (= (and d!1255664 (not c!724361)) b!4263225))

(assert (= (and b!4263225 (not res!1752182)) b!4263226))

(declare-fun m!4852607 () Bool)

(assert (=> b!4263224 m!4852607))

(declare-fun m!4852609 () Bool)

(assert (=> b!4263226 m!4852609))

(assert (=> b!4262738 d!1255664))

(assert (=> d!1255120 d!1255030))

(assert (=> d!1255120 d!1255032))

(assert (=> d!1255120 d!1255044))

(assert (=> d!1255120 d!1255054))

(assert (=> d!1255120 d!1255048))

(declare-fun d!1255666 () Bool)

(declare-fun lt!1511107 () List!47367)

(assert (=> d!1255666 (= (size!34605 lt!1511107) (size!34606 (list!17072 (xs!17554 (right!35355 t!4386)))))))

(declare-fun e!2647204 () List!47367)

(assert (=> d!1255666 (= lt!1511107 e!2647204)))

(declare-fun c!724362 () Bool)

(assert (=> d!1255666 (= c!724362 ((_ is Nil!47242) (list!17072 (xs!17554 (right!35355 t!4386)))))))

(assert (=> d!1255666 (= (map!9674 (list!17072 (xs!17554 (right!35355 t!4386))) f!428) lt!1511107)))

(declare-fun b!4263227 () Bool)

(assert (=> b!4263227 (= e!2647204 Nil!47243)))

(declare-fun b!4263228 () Bool)

(assert (=> b!4263228 (= e!2647204 ($colon$colon!633 (map!9674 (t!353271 (list!17072 (xs!17554 (right!35355 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17072 (xs!17554 (right!35355 t!4386)))))))))

(assert (= (and d!1255666 c!724362) b!4263227))

(assert (= (and d!1255666 (not c!724362)) b!4263228))

(declare-fun b_lambda!125917 () Bool)

(assert (=> (not b_lambda!125917) (not b!4263228)))

(declare-fun t!353353 () Bool)

(declare-fun tb!257005 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353353) tb!257005))

(declare-fun result!313582 () Bool)

(assert (=> tb!257005 (= result!313582 tp_is_empty!22881)))

(assert (=> b!4263228 t!353353))

(declare-fun b_and!337815 () Bool)

(assert (= b_and!337813 (and (=> t!353353 result!313582) b_and!337815)))

(declare-fun m!4852611 () Bool)

(assert (=> d!1255666 m!4852611))

(assert (=> d!1255666 m!4851015))

(assert (=> d!1255666 m!4851175))

(declare-fun m!4852613 () Bool)

(assert (=> b!4263228 m!4852613))

(declare-fun m!4852615 () Bool)

(assert (=> b!4263228 m!4852615))

(assert (=> b!4263228 m!4852613))

(assert (=> b!4263228 m!4852615))

(declare-fun m!4852617 () Bool)

(assert (=> b!4263228 m!4852617))

(assert (=> d!1255112 d!1255666))

(assert (=> d!1255112 d!1255152))

(declare-fun d!1255668 () Bool)

(declare-fun _$10!133 () IArray!28503)

(assert (=> d!1255668 (= _$10!133 (IArray!28504 (map!9674 (list!17072 (xs!17554 (right!35355 t!4386))) f!428)))))

(declare-fun e!2647205 () Bool)

(assert (=> d!1255668 (and (inv!62155 _$10!133) e!2647205)))

(assert (=> d!1255668 (= (choose!25989 (xs!17554 (right!35355 t!4386)) f!428) _$10!133)))

(declare-fun b!4263229 () Bool)

(declare-fun tp!1307176 () Bool)

(assert (=> b!4263229 (= e!2647205 tp!1307176)))

(assert (= d!1255668 b!4263229))

(assert (=> d!1255668 m!4851015))

(assert (=> d!1255668 m!4851015))

(assert (=> d!1255668 m!4851177))

(declare-fun m!4852619 () Bool)

(assert (=> d!1255668 m!4852619))

(assert (=> d!1255112 d!1255668))

(declare-fun b!4263233 () Bool)

(declare-fun e!2647207 () Bool)

(declare-fun lt!1511108 () List!47366)

(assert (=> b!4263233 (= e!2647207 (or (not (= (list!17068 (right!35355 (right!35355 t!4386))) Nil!47242)) (= lt!1511108 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4263232 () Bool)

(declare-fun res!1752184 () Bool)

(assert (=> b!4263232 (=> (not res!1752184) (not e!2647207))))

(assert (=> b!4263232 (= res!1752184 (= (size!34606 lt!1511108) (+ (size!34606 (t!353271 (list!17068 (left!35025 (right!35355 t!4386))))) (size!34606 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(declare-fun d!1255670 () Bool)

(assert (=> d!1255670 e!2647207))

(declare-fun res!1752183 () Bool)

(assert (=> d!1255670 (=> (not res!1752183) (not e!2647207))))

(assert (=> d!1255670 (= res!1752183 (= (content!7448 lt!1511108) ((_ map or) (content!7448 (t!353271 (list!17068 (left!35025 (right!35355 t!4386))))) (content!7448 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(declare-fun e!2647206 () List!47366)

(assert (=> d!1255670 (= lt!1511108 e!2647206)))

(declare-fun c!724363 () Bool)

(assert (=> d!1255670 (= c!724363 ((_ is Nil!47242) (t!353271 (list!17068 (left!35025 (right!35355 t!4386))))))))

(assert (=> d!1255670 (= (++!12035 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 t!4386)))) lt!1511108)))

(declare-fun b!4263230 () Bool)

(assert (=> b!4263230 (= e!2647206 (list!17068 (right!35355 (right!35355 t!4386))))))

(declare-fun b!4263231 () Bool)

(assert (=> b!4263231 (= e!2647206 (Cons!47242 (h!52662 (t!353271 (list!17068 (left!35025 (right!35355 t!4386))))) (++!12035 (t!353271 (t!353271 (list!17068 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 t!4386))))))))

(assert (= (and d!1255670 c!724363) b!4263230))

(assert (= (and d!1255670 (not c!724363)) b!4263231))

(assert (= (and d!1255670 res!1752183) b!4263232))

(assert (= (and b!4263232 res!1752184) b!4263233))

(declare-fun m!4852621 () Bool)

(assert (=> b!4263232 m!4852621))

(declare-fun m!4852623 () Bool)

(assert (=> b!4263232 m!4852623))

(assert (=> b!4263232 m!4850875))

(assert (=> b!4263232 m!4851081))

(declare-fun m!4852625 () Bool)

(assert (=> d!1255670 m!4852625))

(declare-fun m!4852627 () Bool)

(assert (=> d!1255670 m!4852627))

(assert (=> d!1255670 m!4850875))

(assert (=> d!1255670 m!4851087))

(assert (=> b!4263231 m!4850875))

(declare-fun m!4852629 () Bool)

(assert (=> b!4263231 m!4852629))

(assert (=> b!4262480 d!1255670))

(declare-fun d!1255672 () Bool)

(assert (=> d!1255672 (= (height!1871 (left!35026 lt!1510912)) (ite ((_ is Empty!14249) (left!35026 lt!1510912)) 0 (ite ((_ is Leaf!22019) (left!35026 lt!1510912)) 1 (cheight!14460 (left!35026 lt!1510912)))))))

(assert (=> b!4262620 d!1255672))

(declare-fun d!1255674 () Bool)

(assert (=> d!1255674 (= (height!1871 (right!35356 lt!1510912)) (ite ((_ is Empty!14249) (right!35356 lt!1510912)) 0 (ite ((_ is Leaf!22019) (right!35356 lt!1510912)) 1 (cheight!14460 (right!35356 lt!1510912)))))))

(assert (=> b!4262620 d!1255674))

(declare-fun d!1255676 () Bool)

(declare-fun lt!1511109 () Int)

(assert (=> d!1255676 (>= lt!1511109 0)))

(declare-fun e!2647208 () Int)

(assert (=> d!1255676 (= lt!1511109 e!2647208)))

(declare-fun c!724364 () Bool)

(assert (=> d!1255676 (= c!724364 ((_ is Nil!47242) lt!1510964))))

(assert (=> d!1255676 (= (size!34606 lt!1510964) lt!1511109)))

(declare-fun b!4263234 () Bool)

(assert (=> b!4263234 (= e!2647208 0)))

(declare-fun b!4263235 () Bool)

(assert (=> b!4263235 (= e!2647208 (+ 1 (size!34606 (t!353271 lt!1510964))))))

(assert (= (and d!1255676 c!724364) b!4263234))

(assert (= (and d!1255676 (not c!724364)) b!4263235))

(declare-fun m!4852631 () Bool)

(assert (=> b!4263235 m!4852631))

(assert (=> b!4262576 d!1255676))

(assert (=> b!4262576 d!1255588))

(assert (=> b!4262576 d!1255070))

(declare-fun b!4263239 () Bool)

(declare-fun e!2647210 () List!47366)

(assert (=> b!4263239 (= e!2647210 (++!12035 (list!17068 (left!35025 (right!35355 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4263237 () Bool)

(declare-fun e!2647209 () List!47366)

(assert (=> b!4263237 (= e!2647209 e!2647210)))

(declare-fun c!724366 () Bool)

(assert (=> b!4263237 (= c!724366 ((_ is Leaf!22018) (right!35355 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263236 () Bool)

(assert (=> b!4263236 (= e!2647209 Nil!47242)))

(declare-fun b!4263238 () Bool)

(assert (=> b!4263238 (= e!2647210 (list!17072 (xs!17554 (right!35355 (left!35025 (right!35355 t!4386))))))))

(declare-fun d!1255678 () Bool)

(declare-fun c!724365 () Bool)

(assert (=> d!1255678 (= c!724365 ((_ is Empty!14248) (right!35355 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255678 (= (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) e!2647209)))

(assert (= (and d!1255678 c!724365) b!4263236))

(assert (= (and d!1255678 (not c!724365)) b!4263237))

(assert (= (and b!4263237 c!724366) b!4263238))

(assert (= (and b!4263237 (not c!724366)) b!4263239))

(declare-fun m!4852633 () Bool)

(assert (=> b!4263239 m!4852633))

(declare-fun m!4852635 () Bool)

(assert (=> b!4263239 m!4852635))

(assert (=> b!4263239 m!4852633))

(assert (=> b!4263239 m!4852635))

(declare-fun m!4852637 () Bool)

(assert (=> b!4263239 m!4852637))

(declare-fun m!4852639 () Bool)

(assert (=> b!4263238 m!4852639))

(assert (=> b!4262634 d!1255678))

(declare-fun b!4263240 () Bool)

(declare-fun e!2647213 () Conc!14249)

(declare-fun e!2647211 () Conc!14249)

(assert (=> b!4263240 (= e!2647213 e!2647211)))

(declare-fun c!724367 () Bool)

(assert (=> b!4263240 (= c!724367 ((_ is Leaf!22018) (left!35025 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263241 () Bool)

(declare-fun e!2647212 () Bool)

(declare-fun lt!1511111 () Conc!14249)

(assert (=> b!4263241 (= e!2647212 (isBalanced!3808 lt!1511111))))

(declare-fun d!1255680 () Bool)

(assert (=> d!1255680 e!2647212))

(declare-fun res!1752185 () Bool)

(assert (=> d!1255680 (=> (not res!1752185) (not e!2647212))))

(assert (=> d!1255680 (= res!1752185 (= (list!17067 lt!1511111) (map!9674 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255680 (= lt!1511111 e!2647213)))

(declare-fun c!724368 () Bool)

(assert (=> d!1255680 (= c!724368 ((_ is Empty!14248) (left!35025 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255680 (isBalanced!3807 (left!35025 (left!35025 (right!35355 t!4386))))))

(assert (=> d!1255680 (= (map!9675 (left!35025 (left!35025 (right!35355 t!4386))) f!428) lt!1511111)))

(declare-fun b!4263242 () Bool)

(assert (=> b!4263242 (= e!2647213 Empty!14249)))

(declare-fun b!4263243 () Bool)

(declare-fun lt!1511110 () Unit!66139)

(assert (=> b!4263243 (= lt!1511110 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (left!35025 (left!35025 (right!35355 t!4386))))) f!428))))

(assert (=> b!4263243 (= e!2647211 (Node!14249 (map!9675 (left!35025 (left!35025 (left!35025 (right!35355 t!4386)))) f!428) (map!9675 (right!35355 (left!35025 (left!35025 (right!35355 t!4386)))) f!428) (csize!28726 (left!35025 (left!35025 (right!35355 t!4386)))) (cheight!14459 (left!35025 (left!35025 (right!35355 t!4386))))))))

(declare-fun b!4263244 () Bool)

(assert (=> b!4263244 (= e!2647211 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (left!35025 (right!35355 t!4386)))) f!428) (csize!28727 (left!35025 (left!35025 (right!35355 t!4386))))))))

(assert (= (and d!1255680 c!724368) b!4263242))

(assert (= (and d!1255680 (not c!724368)) b!4263240))

(assert (= (and b!4263240 c!724367) b!4263244))

(assert (= (and b!4263240 (not c!724367)) b!4263243))

(assert (= (and d!1255680 res!1752185) b!4263241))

(declare-fun m!4852641 () Bool)

(assert (=> b!4263241 m!4852641))

(declare-fun m!4852643 () Bool)

(assert (=> d!1255680 m!4852643))

(assert (=> d!1255680 m!4851091))

(assert (=> d!1255680 m!4851091))

(declare-fun m!4852645 () Bool)

(assert (=> d!1255680 m!4852645))

(declare-fun m!4852647 () Bool)

(assert (=> d!1255680 m!4852647))

(declare-fun m!4852649 () Bool)

(assert (=> b!4263243 m!4852649))

(declare-fun m!4852651 () Bool)

(assert (=> b!4263243 m!4852651))

(declare-fun m!4852653 () Bool)

(assert (=> b!4263243 m!4852653))

(assert (=> b!4263243 m!4852653))

(assert (=> b!4263243 m!4852651))

(declare-fun m!4852655 () Bool)

(assert (=> b!4263243 m!4852655))

(declare-fun m!4852657 () Bool)

(assert (=> b!4263243 m!4852657))

(declare-fun m!4852659 () Bool)

(assert (=> b!4263244 m!4852659))

(assert (=> b!4262634 d!1255680))

(declare-fun d!1255682 () Bool)

(assert (=> d!1255682 (= (map!9674 (++!12035 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386))))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) f!428) (map!9674 (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) f!428)))))

(declare-fun lt!1511112 () Unit!66139)

(assert (=> d!1255682 (= lt!1511112 (choose!25988 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) f!428))))

(assert (=> d!1255682 (= (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) f!428) lt!1511112)))

(declare-fun bs!599146 () Bool)

(assert (= bs!599146 d!1255682))

(assert (=> bs!599146 m!4851091))

(assert (=> bs!599146 m!4851093))

(declare-fun m!4852661 () Bool)

(assert (=> bs!599146 m!4852661))

(assert (=> bs!599146 m!4851093))

(declare-fun m!4852663 () Bool)

(assert (=> bs!599146 m!4852663))

(assert (=> bs!599146 m!4851095))

(declare-fun m!4852665 () Bool)

(assert (=> bs!599146 m!4852665))

(assert (=> bs!599146 m!4852645))

(assert (=> bs!599146 m!4852663))

(declare-fun m!4852667 () Bool)

(assert (=> bs!599146 m!4852667))

(assert (=> bs!599146 m!4851091))

(assert (=> bs!599146 m!4851093))

(assert (=> bs!599146 m!4851095))

(assert (=> bs!599146 m!4851091))

(assert (=> bs!599146 m!4852645))

(assert (=> b!4262634 d!1255682))

(declare-fun b!4263245 () Bool)

(declare-fun e!2647216 () Conc!14249)

(declare-fun e!2647214 () Conc!14249)

(assert (=> b!4263245 (= e!2647216 e!2647214)))

(declare-fun c!724369 () Bool)

(assert (=> b!4263245 (= c!724369 ((_ is Leaf!22018) (right!35355 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263246 () Bool)

(declare-fun e!2647215 () Bool)

(declare-fun lt!1511114 () Conc!14249)

(assert (=> b!4263246 (= e!2647215 (isBalanced!3808 lt!1511114))))

(declare-fun d!1255684 () Bool)

(assert (=> d!1255684 e!2647215))

(declare-fun res!1752186 () Bool)

(assert (=> d!1255684 (=> (not res!1752186) (not e!2647215))))

(assert (=> d!1255684 (= res!1752186 (= (list!17067 lt!1511114) (map!9674 (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255684 (= lt!1511114 e!2647216)))

(declare-fun c!724370 () Bool)

(assert (=> d!1255684 (= c!724370 ((_ is Empty!14248) (right!35355 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255684 (isBalanced!3807 (right!35355 (left!35025 (right!35355 t!4386))))))

(assert (=> d!1255684 (= (map!9675 (right!35355 (left!35025 (right!35355 t!4386))) f!428) lt!1511114)))

(declare-fun b!4263247 () Bool)

(assert (=> b!4263247 (= e!2647216 Empty!14249)))

(declare-fun b!4263248 () Bool)

(declare-fun lt!1511113 () Unit!66139)

(assert (=> b!4263248 (= lt!1511113 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 (left!35025 (right!35355 t!4386))))) f!428))))

(assert (=> b!4263248 (= e!2647214 (Node!14249 (map!9675 (left!35025 (right!35355 (left!35025 (right!35355 t!4386)))) f!428) (map!9675 (right!35355 (right!35355 (left!35025 (right!35355 t!4386)))) f!428) (csize!28726 (right!35355 (left!35025 (right!35355 t!4386)))) (cheight!14459 (right!35355 (left!35025 (right!35355 t!4386))))))))

(declare-fun b!4263249 () Bool)

(assert (=> b!4263249 (= e!2647214 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (left!35025 (right!35355 t!4386)))) f!428) (csize!28727 (right!35355 (left!35025 (right!35355 t!4386))))))))

(assert (= (and d!1255684 c!724370) b!4263247))

(assert (= (and d!1255684 (not c!724370)) b!4263245))

(assert (= (and b!4263245 c!724369) b!4263249))

(assert (= (and b!4263245 (not c!724369)) b!4263248))

(assert (= (and d!1255684 res!1752186) b!4263246))

(declare-fun m!4852669 () Bool)

(assert (=> b!4263246 m!4852669))

(declare-fun m!4852671 () Bool)

(assert (=> d!1255684 m!4852671))

(assert (=> d!1255684 m!4851093))

(assert (=> d!1255684 m!4851093))

(assert (=> d!1255684 m!4852663))

(declare-fun m!4852673 () Bool)

(assert (=> d!1255684 m!4852673))

(declare-fun m!4852675 () Bool)

(assert (=> b!4263248 m!4852675))

(assert (=> b!4263248 m!4852635))

(assert (=> b!4263248 m!4852633))

(assert (=> b!4263248 m!4852633))

(assert (=> b!4263248 m!4852635))

(declare-fun m!4852677 () Bool)

(assert (=> b!4263248 m!4852677))

(declare-fun m!4852679 () Bool)

(assert (=> b!4263248 m!4852679))

(declare-fun m!4852681 () Bool)

(assert (=> b!4263249 m!4852681))

(assert (=> b!4262634 d!1255684))

(declare-fun b!4263253 () Bool)

(declare-fun e!2647218 () List!47366)

(assert (=> b!4263253 (= e!2647218 (++!12035 (list!17068 (left!35025 (left!35025 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (left!35025 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4263251 () Bool)

(declare-fun e!2647217 () List!47366)

(assert (=> b!4263251 (= e!2647217 e!2647218)))

(declare-fun c!724372 () Bool)

(assert (=> b!4263251 (= c!724372 ((_ is Leaf!22018) (left!35025 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263250 () Bool)

(assert (=> b!4263250 (= e!2647217 Nil!47242)))

(declare-fun b!4263252 () Bool)

(assert (=> b!4263252 (= e!2647218 (list!17072 (xs!17554 (left!35025 (left!35025 (right!35355 t!4386))))))))

(declare-fun d!1255686 () Bool)

(declare-fun c!724371 () Bool)

(assert (=> d!1255686 (= c!724371 ((_ is Empty!14248) (left!35025 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255686 (= (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) e!2647217)))

(assert (= (and d!1255686 c!724371) b!4263250))

(assert (= (and d!1255686 (not c!724371)) b!4263251))

(assert (= (and b!4263251 c!724372) b!4263252))

(assert (= (and b!4263251 (not c!724372)) b!4263253))

(assert (=> b!4263253 m!4852653))

(assert (=> b!4263253 m!4852651))

(assert (=> b!4263253 m!4852653))

(assert (=> b!4263253 m!4852651))

(declare-fun m!4852683 () Bool)

(assert (=> b!4263253 m!4852683))

(declare-fun m!4852685 () Bool)

(assert (=> b!4263252 m!4852685))

(assert (=> b!4262634 d!1255686))

(declare-fun d!1255688 () Bool)

(assert (=> d!1255688 (= (list!17070 (xs!17555 lt!1510917)) (innerList!14309 (xs!17555 lt!1510917)))))

(assert (=> b!4262459 d!1255688))

(declare-fun d!1255690 () Bool)

(declare-fun lt!1511115 () Bool)

(assert (=> d!1255690 (= lt!1511115 (isEmpty!27990 (list!17067 (left!35026 (right!35356 lt!1510890)))))))

(assert (=> d!1255690 (= lt!1511115 (= (size!34607 (left!35026 (right!35356 lt!1510890))) 0))))

(assert (=> d!1255690 (= (isEmpty!27986 (left!35026 (right!35356 lt!1510890))) lt!1511115)))

(declare-fun bs!599147 () Bool)

(assert (= bs!599147 d!1255690))

(assert (=> bs!599147 m!4851251))

(assert (=> bs!599147 m!4851251))

(declare-fun m!4852687 () Bool)

(assert (=> bs!599147 m!4852687))

(declare-fun m!4852689 () Bool)

(assert (=> bs!599147 m!4852689))

(assert (=> b!4262532 d!1255690))

(declare-fun d!1255692 () Bool)

(declare-fun lt!1511116 () Bool)

(assert (=> d!1255692 (= lt!1511116 (isEmpty!27990 (list!17067 (right!35356 lt!1510917))))))

(assert (=> d!1255692 (= lt!1511116 (= (size!34607 (right!35356 lt!1510917)) 0))))

(assert (=> d!1255692 (= (isEmpty!27986 (right!35356 lt!1510917)) lt!1511116)))

(declare-fun bs!599148 () Bool)

(assert (= bs!599148 d!1255692))

(assert (=> bs!599148 m!4851043))

(assert (=> bs!599148 m!4851043))

(declare-fun m!4852691 () Bool)

(assert (=> bs!599148 m!4852691))

(declare-fun m!4852693 () Bool)

(assert (=> bs!599148 m!4852693))

(assert (=> b!4262599 d!1255692))

(declare-fun d!1255694 () Bool)

(declare-fun lt!1511117 () Int)

(assert (=> d!1255694 (>= lt!1511117 0)))

(declare-fun e!2647219 () Int)

(assert (=> d!1255694 (= lt!1511117 e!2647219)))

(declare-fun c!724373 () Bool)

(assert (=> d!1255694 (= c!724373 ((_ is Nil!47243) lt!1510954))))

(assert (=> d!1255694 (= (size!34605 lt!1510954) lt!1511117)))

(declare-fun b!4263254 () Bool)

(assert (=> b!4263254 (= e!2647219 0)))

(declare-fun b!4263255 () Bool)

(assert (=> b!4263255 (= e!2647219 (+ 1 (size!34605 (t!353272 lt!1510954))))))

(assert (= (and d!1255694 c!724373) b!4263254))

(assert (= (and d!1255694 (not c!724373)) b!4263255))

(declare-fun m!4852695 () Bool)

(assert (=> b!4263255 m!4852695))

(assert (=> d!1255100 d!1255694))

(assert (=> d!1255100 d!1255504))

(declare-fun d!1255696 () Bool)

(assert (=> d!1255696 (= (max!0 (height!1872 (left!35025 (left!35025 t!4386))) (height!1872 (right!35355 (left!35025 t!4386)))) (ite (< (height!1872 (left!35025 (left!35025 t!4386))) (height!1872 (right!35355 (left!35025 t!4386)))) (height!1872 (right!35355 (left!35025 t!4386))) (height!1872 (left!35025 (left!35025 t!4386)))))))

(assert (=> b!4262537 d!1255696))

(assert (=> b!4262537 d!1255442))

(assert (=> b!4262537 d!1255444))

(declare-fun d!1255698 () Bool)

(assert (=> d!1255698 (= (isEmpty!27990 (list!17067 (right!35356 lt!1510890))) ((_ is Nil!47243) (list!17067 (right!35356 lt!1510890))))))

(assert (=> d!1255088 d!1255698))

(assert (=> d!1255088 d!1255140))

(declare-fun d!1255700 () Bool)

(declare-fun lt!1511120 () Int)

(assert (=> d!1255700 (= lt!1511120 (size!34605 (list!17067 (right!35356 lt!1510890))))))

(assert (=> d!1255700 (= lt!1511120 (ite ((_ is Empty!14249) (right!35356 lt!1510890)) 0 (ite ((_ is Leaf!22019) (right!35356 lt!1510890)) (csize!28729 (right!35356 lt!1510890)) (csize!28728 (right!35356 lt!1510890)))))))

(assert (=> d!1255700 (= (size!34607 (right!35356 lt!1510890)) lt!1511120)))

(declare-fun bs!599149 () Bool)

(assert (= bs!599149 d!1255700))

(assert (=> bs!599149 m!4850801))

(assert (=> bs!599149 m!4850801))

(assert (=> bs!599149 m!4851223))

(assert (=> d!1255088 d!1255700))

(declare-fun d!1255702 () Bool)

(declare-fun lt!1511121 () Int)

(assert (=> d!1255702 (>= lt!1511121 0)))

(declare-fun e!2647220 () Int)

(assert (=> d!1255702 (= lt!1511121 e!2647220)))

(declare-fun c!724374 () Bool)

(assert (=> d!1255702 (= c!724374 ((_ is Nil!47243) (t!353272 (map!9674 lt!1510889 f!428))))))

(assert (=> d!1255702 (= (size!34605 (t!353272 (map!9674 lt!1510889 f!428))) lt!1511121)))

(declare-fun b!4263256 () Bool)

(assert (=> b!4263256 (= e!2647220 0)))

(declare-fun b!4263257 () Bool)

(assert (=> b!4263257 (= e!2647220 (+ 1 (size!34605 (t!353272 (t!353272 (map!9674 lt!1510889 f!428))))))))

(assert (= (and d!1255702 c!724374) b!4263256))

(assert (= (and d!1255702 (not c!724374)) b!4263257))

(declare-fun m!4852697 () Bool)

(assert (=> b!4263257 m!4852697))

(assert (=> b!4262615 d!1255702))

(declare-fun d!1255704 () Bool)

(declare-fun res!1752187 () Bool)

(declare-fun e!2647221 () Bool)

(assert (=> d!1255704 (=> (not res!1752187) (not e!2647221))))

(assert (=> d!1255704 (= res!1752187 (<= (size!34606 (list!17072 (xs!17554 (right!35355 (left!35025 t!4386))))) 512))))

(assert (=> d!1255704 (= (inv!62154 (right!35355 (left!35025 t!4386))) e!2647221)))

(declare-fun b!4263258 () Bool)

(declare-fun res!1752188 () Bool)

(assert (=> b!4263258 (=> (not res!1752188) (not e!2647221))))

(assert (=> b!4263258 (= res!1752188 (= (csize!28727 (right!35355 (left!35025 t!4386))) (size!34606 (list!17072 (xs!17554 (right!35355 (left!35025 t!4386)))))))))

(declare-fun b!4263259 () Bool)

(assert (=> b!4263259 (= e!2647221 (and (> (csize!28727 (right!35355 (left!35025 t!4386))) 0) (<= (csize!28727 (right!35355 (left!35025 t!4386))) 512)))))

(assert (= (and d!1255704 res!1752187) b!4263258))

(assert (= (and b!4263258 res!1752188) b!4263259))

(assert (=> d!1255704 m!4851441))

(assert (=> d!1255704 m!4851441))

(declare-fun m!4852699 () Bool)

(assert (=> d!1255704 m!4852699))

(assert (=> b!4263258 m!4851441))

(assert (=> b!4263258 m!4851441))

(assert (=> b!4263258 m!4852699))

(assert (=> b!4262713 d!1255704))

(declare-fun d!1255706 () Bool)

(declare-fun res!1752189 () Bool)

(declare-fun e!2647222 () Bool)

(assert (=> d!1255706 (=> (not res!1752189) (not e!2647222))))

(assert (=> d!1255706 (= res!1752189 (= (csize!28726 (right!35355 (right!35355 t!4386))) (+ (size!34608 (left!35025 (right!35355 (right!35355 t!4386)))) (size!34608 (right!35355 (right!35355 (right!35355 t!4386)))))))))

(assert (=> d!1255706 (= (inv!62153 (right!35355 (right!35355 t!4386))) e!2647222)))

(declare-fun b!4263260 () Bool)

(declare-fun res!1752190 () Bool)

(assert (=> b!4263260 (=> (not res!1752190) (not e!2647222))))

(assert (=> b!4263260 (= res!1752190 (and (not (= (left!35025 (right!35355 (right!35355 t!4386))) Empty!14248)) (not (= (right!35355 (right!35355 (right!35355 t!4386))) Empty!14248))))))

(declare-fun b!4263261 () Bool)

(declare-fun res!1752191 () Bool)

(assert (=> b!4263261 (=> (not res!1752191) (not e!2647222))))

(assert (=> b!4263261 (= res!1752191 (= (cheight!14459 (right!35355 (right!35355 t!4386))) (+ (max!0 (height!1872 (left!35025 (right!35355 (right!35355 t!4386)))) (height!1872 (right!35355 (right!35355 (right!35355 t!4386))))) 1)))))

(declare-fun b!4263262 () Bool)

(assert (=> b!4263262 (= e!2647222 (<= 0 (cheight!14459 (right!35355 (right!35355 t!4386)))))))

(assert (= (and d!1255706 res!1752189) b!4263260))

(assert (= (and b!4263260 res!1752190) b!4263261))

(assert (= (and b!4263261 res!1752191) b!4263262))

(declare-fun m!4852701 () Bool)

(assert (=> d!1255706 m!4852701))

(declare-fun m!4852703 () Bool)

(assert (=> d!1255706 m!4852703))

(assert (=> b!4263261 m!4852003))

(assert (=> b!4263261 m!4852005))

(assert (=> b!4263261 m!4852003))

(assert (=> b!4263261 m!4852005))

(declare-fun m!4852705 () Bool)

(assert (=> b!4263261 m!4852705))

(assert (=> b!4262571 d!1255706))

(declare-fun d!1255708 () Bool)

(assert (=> d!1255708 (= ($colon$colon!633 (map!9674 (t!353271 (t!353271 lt!1510891)) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510891)))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (t!353271 lt!1510891))) (map!9674 (t!353271 (t!353271 lt!1510891)) f!428)))))

(assert (=> b!4262715 d!1255708))

(declare-fun d!1255710 () Bool)

(declare-fun lt!1511122 () List!47367)

(assert (=> d!1255710 (= (size!34605 lt!1511122) (size!34606 (t!353271 (t!353271 lt!1510891))))))

(declare-fun e!2647223 () List!47367)

(assert (=> d!1255710 (= lt!1511122 e!2647223)))

(declare-fun c!724375 () Bool)

(assert (=> d!1255710 (= c!724375 ((_ is Nil!47242) (t!353271 (t!353271 lt!1510891))))))

(assert (=> d!1255710 (= (map!9674 (t!353271 (t!353271 lt!1510891)) f!428) lt!1511122)))

(declare-fun b!4263263 () Bool)

(assert (=> b!4263263 (= e!2647223 Nil!47243)))

(declare-fun b!4263264 () Bool)

(assert (=> b!4263264 (= e!2647223 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (t!353271 lt!1510891))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (t!353271 lt!1510891))))))))

(assert (= (and d!1255710 c!724375) b!4263263))

(assert (= (and d!1255710 (not c!724375)) b!4263264))

(declare-fun b_lambda!125919 () Bool)

(assert (=> (not b_lambda!125919) (not b!4263264)))

(declare-fun t!353356 () Bool)

(declare-fun tb!257007 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353356) tb!257007))

(declare-fun result!313584 () Bool)

(assert (=> tb!257007 (= result!313584 tp_is_empty!22881)))

(assert (=> b!4263264 t!353356))

(declare-fun b_and!337817 () Bool)

(assert (= b_and!337815 (and (=> t!353356 result!313584) b_and!337817)))

(declare-fun m!4852707 () Bool)

(assert (=> d!1255710 m!4852707))

(assert (=> d!1255710 m!4852429))

(declare-fun m!4852709 () Bool)

(assert (=> b!4263264 m!4852709))

(declare-fun m!4852711 () Bool)

(assert (=> b!4263264 m!4852711))

(assert (=> b!4263264 m!4852709))

(assert (=> b!4263264 m!4852711))

(declare-fun m!4852713 () Bool)

(assert (=> b!4263264 m!4852713))

(assert (=> b!4262715 d!1255710))

(declare-fun d!1255712 () Bool)

(assert (=> d!1255712 (= (isEmpty!27990 (list!17067 (left!35026 lt!1510890))) ((_ is Nil!47243) (list!17067 (left!35026 lt!1510890))))))

(assert (=> d!1255160 d!1255712))

(assert (=> d!1255160 d!1255138))

(declare-fun d!1255714 () Bool)

(declare-fun lt!1511123 () Int)

(assert (=> d!1255714 (= lt!1511123 (size!34605 (list!17067 (left!35026 lt!1510890))))))

(assert (=> d!1255714 (= lt!1511123 (ite ((_ is Empty!14249) (left!35026 lt!1510890)) 0 (ite ((_ is Leaf!22019) (left!35026 lt!1510890)) (csize!28729 (left!35026 lt!1510890)) (csize!28728 (left!35026 lt!1510890)))))))

(assert (=> d!1255714 (= (size!34607 (left!35026 lt!1510890)) lt!1511123)))

(declare-fun bs!599150 () Bool)

(assert (= bs!599150 d!1255714))

(assert (=> bs!599150 m!4850799))

(assert (=> bs!599150 m!4850799))

(assert (=> bs!599150 m!4851221))

(assert (=> d!1255160 d!1255714))

(declare-fun d!1255716 () Bool)

(declare-fun c!724376 () Bool)

(assert (=> d!1255716 (= c!724376 ((_ is Node!14248) (left!35025 (right!35355 (right!35355 t!4386)))))))

(declare-fun e!2647224 () Bool)

(assert (=> d!1255716 (= (inv!62149 (left!35025 (right!35355 (right!35355 t!4386)))) e!2647224)))

(declare-fun b!4263265 () Bool)

(assert (=> b!4263265 (= e!2647224 (inv!62153 (left!35025 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263266 () Bool)

(declare-fun e!2647225 () Bool)

(assert (=> b!4263266 (= e!2647224 e!2647225)))

(declare-fun res!1752192 () Bool)

(assert (=> b!4263266 (= res!1752192 (not ((_ is Leaf!22018) (left!35025 (right!35355 (right!35355 t!4386))))))))

(assert (=> b!4263266 (=> res!1752192 e!2647225)))

(declare-fun b!4263267 () Bool)

(assert (=> b!4263267 (= e!2647225 (inv!62154 (left!35025 (right!35355 (right!35355 t!4386)))))))

(assert (= (and d!1255716 c!724376) b!4263265))

(assert (= (and d!1255716 (not c!724376)) b!4263266))

(assert (= (and b!4263266 (not res!1752192)) b!4263267))

(declare-fun m!4852715 () Bool)

(assert (=> b!4263265 m!4852715))

(declare-fun m!4852717 () Bool)

(assert (=> b!4263267 m!4852717))

(assert (=> b!4262727 d!1255716))

(declare-fun d!1255718 () Bool)

(declare-fun c!724377 () Bool)

(assert (=> d!1255718 (= c!724377 ((_ is Node!14248) (right!35355 (right!35355 (right!35355 t!4386)))))))

(declare-fun e!2647226 () Bool)

(assert (=> d!1255718 (= (inv!62149 (right!35355 (right!35355 (right!35355 t!4386)))) e!2647226)))

(declare-fun b!4263268 () Bool)

(assert (=> b!4263268 (= e!2647226 (inv!62153 (right!35355 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263269 () Bool)

(declare-fun e!2647227 () Bool)

(assert (=> b!4263269 (= e!2647226 e!2647227)))

(declare-fun res!1752193 () Bool)

(assert (=> b!4263269 (= res!1752193 (not ((_ is Leaf!22018) (right!35355 (right!35355 (right!35355 t!4386))))))))

(assert (=> b!4263269 (=> res!1752193 e!2647227)))

(declare-fun b!4263270 () Bool)

(assert (=> b!4263270 (= e!2647227 (inv!62154 (right!35355 (right!35355 (right!35355 t!4386)))))))

(assert (= (and d!1255718 c!724377) b!4263268))

(assert (= (and d!1255718 (not c!724377)) b!4263269))

(assert (= (and b!4263269 (not res!1752193)) b!4263270))

(declare-fun m!4852719 () Bool)

(assert (=> b!4263268 m!4852719))

(declare-fun m!4852721 () Bool)

(assert (=> b!4263270 m!4852721))

(assert (=> b!4262727 d!1255718))

(assert (=> b!4262449 d!1255146))

(assert (=> b!4262449 d!1255148))

(assert (=> b!4262513 d!1255442))

(assert (=> b!4262513 d!1255444))

(assert (=> b!4262467 d!1255452))

(assert (=> b!4262467 d!1255454))

(declare-fun b!4263271 () Bool)

(declare-fun e!2647230 () Conc!14249)

(declare-fun e!2647228 () Conc!14249)

(assert (=> b!4263271 (= e!2647230 e!2647228)))

(declare-fun c!724378 () Bool)

(assert (=> b!4263271 (= c!724378 ((_ is Leaf!22018) (right!35355 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263272 () Bool)

(declare-fun e!2647229 () Bool)

(declare-fun lt!1511125 () Conc!14249)

(assert (=> b!4263272 (= e!2647229 (isBalanced!3808 lt!1511125))))

(declare-fun d!1255720 () Bool)

(assert (=> d!1255720 e!2647229))

(declare-fun res!1752194 () Bool)

(assert (=> d!1255720 (=> (not res!1752194) (not e!2647229))))

(assert (=> d!1255720 (= res!1752194 (= (list!17067 lt!1511125) (map!9674 (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255720 (= lt!1511125 e!2647230)))

(declare-fun c!724379 () Bool)

(assert (=> d!1255720 (= c!724379 ((_ is Empty!14248) (right!35355 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255720 (isBalanced!3807 (right!35355 (left!35025 (left!35025 t!4386))))))

(assert (=> d!1255720 (= (map!9675 (right!35355 (left!35025 (left!35025 t!4386))) f!428) lt!1511125)))

(declare-fun b!4263273 () Bool)

(assert (=> b!4263273 (= e!2647230 Empty!14249)))

(declare-fun b!4263274 () Bool)

(declare-fun lt!1511124 () Unit!66139)

(assert (=> b!4263274 (= lt!1511124 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (right!35355 (left!35025 (left!35025 t!4386))))) f!428))))

(assert (=> b!4263274 (= e!2647228 (Node!14249 (map!9675 (left!35025 (right!35355 (left!35025 (left!35025 t!4386)))) f!428) (map!9675 (right!35355 (right!35355 (left!35025 (left!35025 t!4386)))) f!428) (csize!28726 (right!35355 (left!35025 (left!35025 t!4386)))) (cheight!14459 (right!35355 (left!35025 (left!35025 t!4386))))))))

(declare-fun b!4263275 () Bool)

(assert (=> b!4263275 (= e!2647228 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (left!35025 (left!35025 t!4386)))) f!428) (csize!28727 (right!35355 (left!35025 (left!35025 t!4386))))))))

(assert (= (and d!1255720 c!724379) b!4263273))

(assert (= (and d!1255720 (not c!724379)) b!4263271))

(assert (= (and b!4263271 c!724378) b!4263275))

(assert (= (and b!4263271 (not c!724378)) b!4263274))

(assert (= (and d!1255720 res!1752194) b!4263272))

(declare-fun m!4852723 () Bool)

(assert (=> b!4263272 m!4852723))

(declare-fun m!4852725 () Bool)

(assert (=> d!1255720 m!4852725))

(assert (=> d!1255720 m!4851427))

(assert (=> d!1255720 m!4851427))

(declare-fun m!4852727 () Bool)

(assert (=> d!1255720 m!4852727))

(assert (=> d!1255720 m!4852067))

(declare-fun m!4852729 () Bool)

(assert (=> b!4263274 m!4852729))

(assert (=> b!4263274 m!4852597))

(assert (=> b!4263274 m!4852595))

(assert (=> b!4263274 m!4852595))

(assert (=> b!4263274 m!4852597))

(declare-fun m!4852731 () Bool)

(assert (=> b!4263274 m!4852731))

(declare-fun m!4852733 () Bool)

(assert (=> b!4263274 m!4852733))

(declare-fun m!4852735 () Bool)

(assert (=> b!4263275 m!4852735))

(assert (=> b!4262674 d!1255720))

(declare-fun b!4263276 () Bool)

(declare-fun e!2647233 () Conc!14249)

(declare-fun e!2647231 () Conc!14249)

(assert (=> b!4263276 (= e!2647233 e!2647231)))

(declare-fun c!724380 () Bool)

(assert (=> b!4263276 (= c!724380 ((_ is Leaf!22018) (left!35025 (left!35025 (left!35025 t!4386)))))))

(declare-fun b!4263277 () Bool)

(declare-fun e!2647232 () Bool)

(declare-fun lt!1511127 () Conc!14249)

(assert (=> b!4263277 (= e!2647232 (isBalanced!3808 lt!1511127))))

(declare-fun d!1255722 () Bool)

(assert (=> d!1255722 e!2647232))

(declare-fun res!1752195 () Bool)

(assert (=> d!1255722 (=> (not res!1752195) (not e!2647232))))

(assert (=> d!1255722 (= res!1752195 (= (list!17067 lt!1511127) (map!9674 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255722 (= lt!1511127 e!2647233)))

(declare-fun c!724381 () Bool)

(assert (=> d!1255722 (= c!724381 ((_ is Empty!14248) (left!35025 (left!35025 (left!35025 t!4386)))))))

(assert (=> d!1255722 (isBalanced!3807 (left!35025 (left!35025 (left!35025 t!4386))))))

(assert (=> d!1255722 (= (map!9675 (left!35025 (left!35025 (left!35025 t!4386))) f!428) lt!1511127)))

(declare-fun b!4263278 () Bool)

(assert (=> b!4263278 (= e!2647233 Empty!14249)))

(declare-fun b!4263279 () Bool)

(declare-fun lt!1511126 () Unit!66139)

(assert (=> b!4263279 (= lt!1511126 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (left!35025 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 (left!35025 (left!35025 t!4386))))) f!428))))

(assert (=> b!4263279 (= e!2647231 (Node!14249 (map!9675 (left!35025 (left!35025 (left!35025 (left!35025 t!4386)))) f!428) (map!9675 (right!35355 (left!35025 (left!35025 (left!35025 t!4386)))) f!428) (csize!28726 (left!35025 (left!35025 (left!35025 t!4386)))) (cheight!14459 (left!35025 (left!35025 (left!35025 t!4386))))))))

(declare-fun b!4263280 () Bool)

(assert (=> b!4263280 (= e!2647231 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (left!35025 (left!35025 t!4386)))) f!428) (csize!28727 (left!35025 (left!35025 (left!35025 t!4386))))))))

(assert (= (and d!1255722 c!724381) b!4263278))

(assert (= (and d!1255722 (not c!724381)) b!4263276))

(assert (= (and b!4263276 c!724380) b!4263280))

(assert (= (and b!4263276 (not c!724380)) b!4263279))

(assert (= (and d!1255722 res!1752195) b!4263277))

(declare-fun m!4852737 () Bool)

(assert (=> b!4263277 m!4852737))

(declare-fun m!4852739 () Bool)

(assert (=> d!1255722 m!4852739))

(assert (=> d!1255722 m!4851425))

(assert (=> d!1255722 m!4851425))

(declare-fun m!4852741 () Bool)

(assert (=> d!1255722 m!4852741))

(assert (=> d!1255722 m!4852065))

(declare-fun m!4852743 () Bool)

(assert (=> b!4263279 m!4852743))

(assert (=> b!4263279 m!4852589))

(assert (=> b!4263279 m!4852587))

(assert (=> b!4263279 m!4852587))

(assert (=> b!4263279 m!4852589))

(declare-fun m!4852745 () Bool)

(assert (=> b!4263279 m!4852745))

(declare-fun m!4852747 () Bool)

(assert (=> b!4263279 m!4852747))

(declare-fun m!4852749 () Bool)

(assert (=> b!4263280 m!4852749))

(assert (=> b!4262674 d!1255722))

(assert (=> b!4262674 d!1255658))

(declare-fun d!1255724 () Bool)

(assert (=> d!1255724 (= (map!9674 (++!12035 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386))))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) f!428) (map!9674 (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) f!428)))))

(declare-fun lt!1511128 () Unit!66139)

(assert (=> d!1255724 (= lt!1511128 (choose!25988 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) f!428))))

(assert (=> d!1255724 (= (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (left!35025 t!4386)))) (list!17068 (right!35355 (left!35025 (left!35025 t!4386)))) f!428) lt!1511128)))

(declare-fun bs!599151 () Bool)

(assert (= bs!599151 d!1255724))

(assert (=> bs!599151 m!4851425))

(assert (=> bs!599151 m!4851427))

(declare-fun m!4852751 () Bool)

(assert (=> bs!599151 m!4852751))

(assert (=> bs!599151 m!4851427))

(assert (=> bs!599151 m!4852727))

(assert (=> bs!599151 m!4851431))

(declare-fun m!4852753 () Bool)

(assert (=> bs!599151 m!4852753))

(assert (=> bs!599151 m!4852741))

(assert (=> bs!599151 m!4852727))

(declare-fun m!4852755 () Bool)

(assert (=> bs!599151 m!4852755))

(assert (=> bs!599151 m!4851425))

(assert (=> bs!599151 m!4851427))

(assert (=> bs!599151 m!4851431))

(assert (=> bs!599151 m!4851425))

(assert (=> bs!599151 m!4852741))

(assert (=> b!4262674 d!1255724))

(assert (=> b!4262674 d!1255656))

(declare-fun d!1255726 () Bool)

(declare-fun c!724382 () Bool)

(assert (=> d!1255726 (= c!724382 ((_ is Nil!47242) lt!1510945))))

(declare-fun e!2647234 () (InoxSet T!79420))

(assert (=> d!1255726 (= (content!7448 lt!1510945) e!2647234)))

(declare-fun b!4263281 () Bool)

(assert (=> b!4263281 (= e!2647234 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263282 () Bool)

(assert (=> b!4263282 (= e!2647234 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 lt!1510945) true) (content!7448 (t!353271 lt!1510945))))))

(assert (= (and d!1255726 c!724382) b!4263281))

(assert (= (and d!1255726 (not c!724382)) b!4263282))

(declare-fun m!4852757 () Bool)

(assert (=> b!4263282 m!4852757))

(declare-fun m!4852759 () Bool)

(assert (=> b!4263282 m!4852759))

(assert (=> d!1255076 d!1255726))

(declare-fun d!1255728 () Bool)

(declare-fun c!724383 () Bool)

(assert (=> d!1255728 (= c!724383 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 t!4386)))))))

(declare-fun e!2647235 () (InoxSet T!79420))

(assert (=> d!1255728 (= (content!7448 (list!17068 (left!35025 (right!35355 t!4386)))) e!2647235)))

(declare-fun b!4263283 () Bool)

(assert (=> b!4263283 (= e!2647235 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263284 () Bool)

(assert (=> b!4263284 (= e!2647235 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (left!35025 (right!35355 t!4386)))) true) (content!7448 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))))))))

(assert (= (and d!1255728 c!724383) b!4263283))

(assert (= (and d!1255728 (not c!724383)) b!4263284))

(declare-fun m!4852761 () Bool)

(assert (=> b!4263284 m!4852761))

(assert (=> b!4263284 m!4852627))

(assert (=> d!1255076 d!1255728))

(declare-fun d!1255730 () Bool)

(declare-fun c!724384 () Bool)

(assert (=> d!1255730 (= c!724384 ((_ is Nil!47242) (list!17068 (right!35355 (right!35355 t!4386)))))))

(declare-fun e!2647236 () (InoxSet T!79420))

(assert (=> d!1255730 (= (content!7448 (list!17068 (right!35355 (right!35355 t!4386)))) e!2647236)))

(declare-fun b!4263285 () Bool)

(assert (=> b!4263285 (= e!2647236 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263286 () Bool)

(assert (=> b!4263286 (= e!2647236 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (list!17068 (right!35355 (right!35355 t!4386)))) true) (content!7448 (t!353271 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(assert (= (and d!1255730 c!724384) b!4263285))

(assert (= (and d!1255730 (not c!724384)) b!4263286))

(declare-fun m!4852763 () Bool)

(assert (=> b!4263286 m!4852763))

(declare-fun m!4852765 () Bool)

(assert (=> b!4263286 m!4852765))

(assert (=> d!1255076 d!1255730))

(declare-fun b!4263287 () Bool)

(declare-fun e!2647237 () List!47367)

(assert (=> b!4263287 (= e!2647237 Nil!47243)))

(declare-fun b!4263289 () Bool)

(declare-fun e!2647238 () List!47367)

(assert (=> b!4263289 (= e!2647238 (list!17070 (xs!17555 lt!1510980)))))

(declare-fun b!4263290 () Bool)

(assert (=> b!4263290 (= e!2647238 (++!12036 (list!17067 (left!35026 lt!1510980)) (list!17067 (right!35356 lt!1510980))))))

(declare-fun b!4263288 () Bool)

(assert (=> b!4263288 (= e!2647237 e!2647238)))

(declare-fun c!724386 () Bool)

(assert (=> b!4263288 (= c!724386 ((_ is Leaf!22019) lt!1510980))))

(declare-fun d!1255732 () Bool)

(declare-fun c!724385 () Bool)

(assert (=> d!1255732 (= c!724385 ((_ is Empty!14249) lt!1510980))))

(assert (=> d!1255732 (= (list!17067 lt!1510980) e!2647237)))

(assert (= (and d!1255732 c!724385) b!4263287))

(assert (= (and d!1255732 (not c!724385)) b!4263288))

(assert (= (and b!4263288 c!724386) b!4263289))

(assert (= (and b!4263288 (not c!724386)) b!4263290))

(declare-fun m!4852767 () Bool)

(assert (=> b!4263289 m!4852767))

(declare-fun m!4852769 () Bool)

(assert (=> b!4263290 m!4852769))

(declare-fun m!4852771 () Bool)

(assert (=> b!4263290 m!4852771))

(assert (=> b!4263290 m!4852769))

(assert (=> b!4263290 m!4852771))

(declare-fun m!4852773 () Bool)

(assert (=> b!4263290 m!4852773))

(assert (=> d!1255196 d!1255732))

(declare-fun d!1255734 () Bool)

(declare-fun lt!1511129 () List!47367)

(assert (=> d!1255734 (= (size!34605 lt!1511129) (size!34606 (list!17068 (left!35025 (right!35355 t!4386)))))))

(declare-fun e!2647239 () List!47367)

(assert (=> d!1255734 (= lt!1511129 e!2647239)))

(declare-fun c!724387 () Bool)

(assert (=> d!1255734 (= c!724387 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255734 (= (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428) lt!1511129)))

(declare-fun b!4263291 () Bool)

(assert (=> b!4263291 (= e!2647239 Nil!47243)))

(declare-fun b!4263292 () Bool)

(assert (=> b!4263292 (= e!2647239 ($colon$colon!633 (map!9674 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (left!35025 (right!35355 t!4386)))))))))

(assert (= (and d!1255734 c!724387) b!4263291))

(assert (= (and d!1255734 (not c!724387)) b!4263292))

(declare-fun b_lambda!125921 () Bool)

(assert (=> (not b_lambda!125921) (not b!4263292)))

(declare-fun t!353358 () Bool)

(declare-fun tb!257009 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353358) tb!257009))

(declare-fun result!313586 () Bool)

(assert (=> tb!257009 (= result!313586 tp_is_empty!22881)))

(assert (=> b!4263292 t!353358))

(declare-fun b_and!337819 () Bool)

(assert (= b_and!337817 (and (=> t!353358 result!313586) b_and!337819)))

(declare-fun m!4852775 () Bool)

(assert (=> d!1255734 m!4852775))

(assert (=> d!1255734 m!4850877))

(assert (=> d!1255734 m!4851079))

(declare-fun m!4852777 () Bool)

(assert (=> b!4263292 m!4852777))

(declare-fun m!4852779 () Bool)

(assert (=> b!4263292 m!4852779))

(assert (=> b!4263292 m!4852777))

(assert (=> b!4263292 m!4852779))

(declare-fun m!4852781 () Bool)

(assert (=> b!4263292 m!4852781))

(assert (=> d!1255196 d!1255734))

(assert (=> d!1255196 d!1255078))

(declare-fun b!4263293 () Bool)

(declare-fun res!1752198 () Bool)

(declare-fun e!2647240 () Bool)

(assert (=> b!4263293 (=> (not res!1752198) (not e!2647240))))

(assert (=> b!4263293 (= res!1752198 (isBalanced!3807 (left!35025 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263294 () Bool)

(declare-fun res!1752197 () Bool)

(assert (=> b!4263294 (=> (not res!1752197) (not e!2647240))))

(assert (=> b!4263294 (= res!1752197 (<= (- (height!1872 (left!35025 (left!35025 (right!35355 t!4386)))) (height!1872 (right!35355 (left!35025 (right!35355 t!4386))))) 1))))

(declare-fun b!4263295 () Bool)

(declare-fun res!1752196 () Bool)

(assert (=> b!4263295 (=> (not res!1752196) (not e!2647240))))

(assert (=> b!4263295 (= res!1752196 (not (isEmpty!27987 (left!35025 (left!35025 (right!35355 t!4386))))))))

(declare-fun b!4263296 () Bool)

(assert (=> b!4263296 (= e!2647240 (not (isEmpty!27987 (right!35355 (left!35025 (right!35355 t!4386))))))))

(declare-fun d!1255736 () Bool)

(declare-fun res!1752200 () Bool)

(declare-fun e!2647241 () Bool)

(assert (=> d!1255736 (=> res!1752200 e!2647241)))

(assert (=> d!1255736 (= res!1752200 (not ((_ is Node!14248) (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255736 (= (isBalanced!3807 (left!35025 (right!35355 t!4386))) e!2647241)))

(declare-fun b!4263297 () Bool)

(assert (=> b!4263297 (= e!2647241 e!2647240)))

(declare-fun res!1752201 () Bool)

(assert (=> b!4263297 (=> (not res!1752201) (not e!2647240))))

(assert (=> b!4263297 (= res!1752201 (<= (- 1) (- (height!1872 (left!35025 (left!35025 (right!35355 t!4386)))) (height!1872 (right!35355 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4263298 () Bool)

(declare-fun res!1752199 () Bool)

(assert (=> b!4263298 (=> (not res!1752199) (not e!2647240))))

(assert (=> b!4263298 (= res!1752199 (isBalanced!3807 (right!35355 (left!35025 (right!35355 t!4386)))))))

(assert (= (and d!1255736 (not res!1752200)) b!4263297))

(assert (= (and b!4263297 res!1752201) b!4263294))

(assert (= (and b!4263294 res!1752197) b!4263293))

(assert (= (and b!4263293 res!1752198) b!4263298))

(assert (= (and b!4263298 res!1752199) b!4263295))

(assert (= (and b!4263295 res!1752196) b!4263296))

(declare-fun m!4852783 () Bool)

(assert (=> b!4263295 m!4852783))

(assert (=> b!4263293 m!4852647))

(assert (=> b!4263298 m!4852673))

(declare-fun m!4852785 () Bool)

(assert (=> b!4263296 m!4852785))

(assert (=> b!4263297 m!4852517))

(assert (=> b!4263297 m!4852519))

(assert (=> b!4263294 m!4852517))

(assert (=> b!4263294 m!4852519))

(assert (=> d!1255196 d!1255736))

(declare-fun b!4263301 () Bool)

(declare-fun res!1752202 () Bool)

(declare-fun e!2647242 () Bool)

(assert (=> b!4263301 (=> (not res!1752202) (not e!2647242))))

(declare-fun lt!1511130 () List!47367)

(assert (=> b!4263301 (= res!1752202 (= (size!34605 lt!1511130) (+ (size!34605 (list!17067 (left!35026 lt!1510917))) (size!34605 (list!17067 (right!35356 lt!1510917))))))))

(declare-fun b!4263300 () Bool)

(declare-fun e!2647243 () List!47367)

(assert (=> b!4263300 (= e!2647243 (Cons!47243 (h!52663 (list!17067 (left!35026 lt!1510917))) (++!12036 (t!353272 (list!17067 (left!35026 lt!1510917))) (list!17067 (right!35356 lt!1510917)))))))

(declare-fun b!4263302 () Bool)

(assert (=> b!4263302 (= e!2647242 (or (not (= (list!17067 (right!35356 lt!1510917)) Nil!47243)) (= lt!1511130 (list!17067 (left!35026 lt!1510917)))))))

(declare-fun b!4263299 () Bool)

(assert (=> b!4263299 (= e!2647243 (list!17067 (right!35356 lt!1510917)))))

(declare-fun d!1255738 () Bool)

(assert (=> d!1255738 e!2647242))

(declare-fun res!1752203 () Bool)

(assert (=> d!1255738 (=> (not res!1752203) (not e!2647242))))

(assert (=> d!1255738 (= res!1752203 (= (content!7447 lt!1511130) ((_ map or) (content!7447 (list!17067 (left!35026 lt!1510917))) (content!7447 (list!17067 (right!35356 lt!1510917))))))))

(assert (=> d!1255738 (= lt!1511130 e!2647243)))

(declare-fun c!724388 () Bool)

(assert (=> d!1255738 (= c!724388 ((_ is Nil!47243) (list!17067 (left!35026 lt!1510917))))))

(assert (=> d!1255738 (= (++!12036 (list!17067 (left!35026 lt!1510917)) (list!17067 (right!35356 lt!1510917))) lt!1511130)))

(assert (= (and d!1255738 c!724388) b!4263299))

(assert (= (and d!1255738 (not c!724388)) b!4263300))

(assert (= (and d!1255738 res!1752203) b!4263301))

(assert (= (and b!4263301 res!1752202) b!4263302))

(declare-fun m!4852787 () Bool)

(assert (=> b!4263301 m!4852787))

(assert (=> b!4263301 m!4851041))

(declare-fun m!4852789 () Bool)

(assert (=> b!4263301 m!4852789))

(assert (=> b!4263301 m!4851043))

(declare-fun m!4852791 () Bool)

(assert (=> b!4263301 m!4852791))

(assert (=> b!4263300 m!4851043))

(declare-fun m!4852793 () Bool)

(assert (=> b!4263300 m!4852793))

(declare-fun m!4852795 () Bool)

(assert (=> d!1255738 m!4852795))

(assert (=> d!1255738 m!4851041))

(declare-fun m!4852797 () Bool)

(assert (=> d!1255738 m!4852797))

(assert (=> d!1255738 m!4851043))

(declare-fun m!4852799 () Bool)

(assert (=> d!1255738 m!4852799))

(assert (=> b!4262460 d!1255738))

(declare-fun b!4263303 () Bool)

(declare-fun e!2647244 () List!47367)

(assert (=> b!4263303 (= e!2647244 Nil!47243)))

(declare-fun b!4263305 () Bool)

(declare-fun e!2647245 () List!47367)

(assert (=> b!4263305 (= e!2647245 (list!17070 (xs!17555 (left!35026 lt!1510917))))))

(declare-fun b!4263306 () Bool)

(assert (=> b!4263306 (= e!2647245 (++!12036 (list!17067 (left!35026 (left!35026 lt!1510917))) (list!17067 (right!35356 (left!35026 lt!1510917)))))))

(declare-fun b!4263304 () Bool)

(assert (=> b!4263304 (= e!2647244 e!2647245)))

(declare-fun c!724390 () Bool)

(assert (=> b!4263304 (= c!724390 ((_ is Leaf!22019) (left!35026 lt!1510917)))))

(declare-fun d!1255740 () Bool)

(declare-fun c!724389 () Bool)

(assert (=> d!1255740 (= c!724389 ((_ is Empty!14249) (left!35026 lt!1510917)))))

(assert (=> d!1255740 (= (list!17067 (left!35026 lt!1510917)) e!2647244)))

(assert (= (and d!1255740 c!724389) b!4263303))

(assert (= (and d!1255740 (not c!724389)) b!4263304))

(assert (= (and b!4263304 c!724390) b!4263305))

(assert (= (and b!4263304 (not c!724390)) b!4263306))

(declare-fun m!4852801 () Bool)

(assert (=> b!4263305 m!4852801))

(declare-fun m!4852803 () Bool)

(assert (=> b!4263306 m!4852803))

(declare-fun m!4852805 () Bool)

(assert (=> b!4263306 m!4852805))

(assert (=> b!4263306 m!4852803))

(assert (=> b!4263306 m!4852805))

(declare-fun m!4852807 () Bool)

(assert (=> b!4263306 m!4852807))

(assert (=> b!4262460 d!1255740))

(declare-fun b!4263307 () Bool)

(declare-fun e!2647246 () List!47367)

(assert (=> b!4263307 (= e!2647246 Nil!47243)))

(declare-fun b!4263309 () Bool)

(declare-fun e!2647247 () List!47367)

(assert (=> b!4263309 (= e!2647247 (list!17070 (xs!17555 (right!35356 lt!1510917))))))

(declare-fun b!4263310 () Bool)

(assert (=> b!4263310 (= e!2647247 (++!12036 (list!17067 (left!35026 (right!35356 lt!1510917))) (list!17067 (right!35356 (right!35356 lt!1510917)))))))

(declare-fun b!4263308 () Bool)

(assert (=> b!4263308 (= e!2647246 e!2647247)))

(declare-fun c!724392 () Bool)

(assert (=> b!4263308 (= c!724392 ((_ is Leaf!22019) (right!35356 lt!1510917)))))

(declare-fun d!1255742 () Bool)

(declare-fun c!724391 () Bool)

(assert (=> d!1255742 (= c!724391 ((_ is Empty!14249) (right!35356 lt!1510917)))))

(assert (=> d!1255742 (= (list!17067 (right!35356 lt!1510917)) e!2647246)))

(assert (= (and d!1255742 c!724391) b!4263307))

(assert (= (and d!1255742 (not c!724391)) b!4263308))

(assert (= (and b!4263308 c!724392) b!4263309))

(assert (= (and b!4263308 (not c!724392)) b!4263310))

(declare-fun m!4852809 () Bool)

(assert (=> b!4263309 m!4852809))

(declare-fun m!4852811 () Bool)

(assert (=> b!4263310 m!4852811))

(declare-fun m!4852813 () Bool)

(assert (=> b!4263310 m!4852813))

(assert (=> b!4263310 m!4852811))

(assert (=> b!4263310 m!4852813))

(declare-fun m!4852815 () Bool)

(assert (=> b!4263310 m!4852815))

(assert (=> b!4262460 d!1255742))

(declare-fun d!1255744 () Bool)

(declare-fun lt!1511131 () Int)

(assert (=> d!1255744 (>= lt!1511131 0)))

(declare-fun e!2647248 () Int)

(assert (=> d!1255744 (= lt!1511131 e!2647248)))

(declare-fun c!724393 () Bool)

(assert (=> d!1255744 (= c!724393 ((_ is Nil!47242) (innerList!14308 (xs!17554 (left!35025 t!4386)))))))

(assert (=> d!1255744 (= (size!34606 (innerList!14308 (xs!17554 (left!35025 t!4386)))) lt!1511131)))

(declare-fun b!4263311 () Bool)

(assert (=> b!4263311 (= e!2647248 0)))

(declare-fun b!4263312 () Bool)

(assert (=> b!4263312 (= e!2647248 (+ 1 (size!34606 (t!353271 (innerList!14308 (xs!17554 (left!35025 t!4386)))))))))

(assert (= (and d!1255744 c!724393) b!4263311))

(assert (= (and d!1255744 (not c!724393)) b!4263312))

(declare-fun m!4852817 () Bool)

(assert (=> b!4263312 m!4852817))

(assert (=> d!1255124 d!1255744))

(declare-fun d!1255746 () Bool)

(declare-fun lt!1511132 () Int)

(assert (=> d!1255746 (>= lt!1511132 0)))

(declare-fun e!2647249 () Int)

(assert (=> d!1255746 (= lt!1511132 e!2647249)))

(declare-fun c!724394 () Bool)

(assert (=> d!1255746 (= c!724394 ((_ is Nil!47242) (list!17072 (xs!17554 (left!35025 t!4386)))))))

(assert (=> d!1255746 (= (size!34606 (list!17072 (xs!17554 (left!35025 t!4386)))) lt!1511132)))

(declare-fun b!4263313 () Bool)

(assert (=> b!4263313 (= e!2647249 0)))

(declare-fun b!4263314 () Bool)

(assert (=> b!4263314 (= e!2647249 (+ 1 (size!34606 (t!353271 (list!17072 (xs!17554 (left!35025 t!4386)))))))))

(assert (= (and d!1255746 c!724394) b!4263313))

(assert (= (and d!1255746 (not c!724394)) b!4263314))

(declare-fun m!4852819 () Bool)

(assert (=> b!4263314 m!4852819))

(assert (=> b!4262497 d!1255746))

(assert (=> b!4262497 d!1255108))

(declare-fun d!1255748 () Bool)

(declare-fun lt!1511133 () Bool)

(assert (=> d!1255748 (= lt!1511133 (isEmpty!27990 (list!17067 (right!35356 (right!35356 lt!1510890)))))))

(assert (=> d!1255748 (= lt!1511133 (= (size!34607 (right!35356 (right!35356 lt!1510890))) 0))))

(assert (=> d!1255748 (= (isEmpty!27986 (right!35356 (right!35356 lt!1510890))) lt!1511133)))

(declare-fun bs!599152 () Bool)

(assert (= bs!599152 d!1255748))

(assert (=> bs!599152 m!4851255))

(assert (=> bs!599152 m!4851255))

(declare-fun m!4852821 () Bool)

(assert (=> bs!599152 m!4852821))

(declare-fun m!4852823 () Bool)

(assert (=> bs!599152 m!4852823))

(assert (=> b!4262533 d!1255748))

(declare-fun b!4263315 () Bool)

(declare-fun res!1752205 () Bool)

(declare-fun e!2647251 () Bool)

(assert (=> b!4263315 (=> (not res!1752205) (not e!2647251))))

(assert (=> b!4263315 (= res!1752205 (isBalanced!3808 (left!35026 (left!35026 lt!1510912))))))

(declare-fun b!4263316 () Bool)

(declare-fun res!1752207 () Bool)

(assert (=> b!4263316 (=> (not res!1752207) (not e!2647251))))

(assert (=> b!4263316 (= res!1752207 (isBalanced!3808 (right!35356 (left!35026 lt!1510912))))))

(declare-fun d!1255750 () Bool)

(declare-fun res!1752204 () Bool)

(declare-fun e!2647250 () Bool)

(assert (=> d!1255750 (=> res!1752204 e!2647250)))

(assert (=> d!1255750 (= res!1752204 (not ((_ is Node!14249) (left!35026 lt!1510912))))))

(assert (=> d!1255750 (= (isBalanced!3808 (left!35026 lt!1510912)) e!2647250)))

(declare-fun b!4263317 () Bool)

(declare-fun res!1752206 () Bool)

(assert (=> b!4263317 (=> (not res!1752206) (not e!2647251))))

(assert (=> b!4263317 (= res!1752206 (not (isEmpty!27986 (left!35026 (left!35026 lt!1510912)))))))

(declare-fun b!4263318 () Bool)

(assert (=> b!4263318 (= e!2647251 (not (isEmpty!27986 (right!35356 (left!35026 lt!1510912)))))))

(declare-fun b!4263319 () Bool)

(assert (=> b!4263319 (= e!2647250 e!2647251)))

(declare-fun res!1752209 () Bool)

(assert (=> b!4263319 (=> (not res!1752209) (not e!2647251))))

(assert (=> b!4263319 (= res!1752209 (<= (- 1) (- (height!1871 (left!35026 (left!35026 lt!1510912))) (height!1871 (right!35356 (left!35026 lt!1510912))))))))

(declare-fun b!4263320 () Bool)

(declare-fun res!1752208 () Bool)

(assert (=> b!4263320 (=> (not res!1752208) (not e!2647251))))

(assert (=> b!4263320 (= res!1752208 (<= (- (height!1871 (left!35026 (left!35026 lt!1510912))) (height!1871 (right!35356 (left!35026 lt!1510912)))) 1))))

(assert (= (and d!1255750 (not res!1752204)) b!4263319))

(assert (= (and b!4263319 res!1752209) b!4263320))

(assert (= (and b!4263320 res!1752208) b!4263315))

(assert (= (and b!4263315 res!1752205) b!4263316))

(assert (= (and b!4263316 res!1752207) b!4263317))

(assert (= (and b!4263317 res!1752206) b!4263318))

(declare-fun m!4852825 () Bool)

(assert (=> b!4263315 m!4852825))

(declare-fun m!4852827 () Bool)

(assert (=> b!4263318 m!4852827))

(declare-fun m!4852829 () Bool)

(assert (=> b!4263317 m!4852829))

(declare-fun m!4852831 () Bool)

(assert (=> b!4263320 m!4852831))

(declare-fun m!4852833 () Bool)

(assert (=> b!4263320 m!4852833))

(assert (=> b!4263319 m!4852831))

(assert (=> b!4263319 m!4852833))

(declare-fun m!4852835 () Bool)

(assert (=> b!4263316 m!4852835))

(assert (=> b!4262616 d!1255750))

(declare-fun b!4263324 () Bool)

(declare-fun e!2647253 () Bool)

(declare-fun lt!1511134 () List!47366)

(assert (=> b!4263324 (= e!2647253 (or (not (= (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))) Nil!47242)) (= lt!1511134 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))))))))

(declare-fun b!4263323 () Bool)

(declare-fun res!1752211 () Bool)

(assert (=> b!4263323 (=> (not res!1752211) (not e!2647253))))

(assert (=> b!4263323 (= res!1752211 (= (size!34606 lt!1511134) (+ (size!34606 (list!17068 (left!35025 (left!35025 (right!35355 t!4386))))) (size!34606 (list!17068 (right!35355 (left!35025 (right!35355 t!4386))))))))))

(declare-fun d!1255752 () Bool)

(assert (=> d!1255752 e!2647253))

(declare-fun res!1752210 () Bool)

(assert (=> d!1255752 (=> (not res!1752210) (not e!2647253))))

(assert (=> d!1255752 (= res!1752210 (= (content!7448 lt!1511134) ((_ map or) (content!7448 (list!17068 (left!35025 (left!35025 (right!35355 t!4386))))) (content!7448 (list!17068 (right!35355 (left!35025 (right!35355 t!4386))))))))))

(declare-fun e!2647252 () List!47366)

(assert (=> d!1255752 (= lt!1511134 e!2647252)))

(declare-fun c!724395 () Bool)

(assert (=> d!1255752 (= c!724395 ((_ is Nil!47242) (list!17068 (left!35025 (left!35025 (right!35355 t!4386))))))))

(assert (=> d!1255752 (= (++!12035 (list!17068 (left!35025 (left!35025 (right!35355 t!4386)))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386))))) lt!1511134)))

(declare-fun b!4263321 () Bool)

(assert (=> b!4263321 (= e!2647252 (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263322 () Bool)

(assert (=> b!4263322 (= e!2647252 (Cons!47242 (h!52662 (list!17068 (left!35025 (left!35025 (right!35355 t!4386))))) (++!12035 (t!353271 (list!17068 (left!35025 (left!35025 (right!35355 t!4386))))) (list!17068 (right!35355 (left!35025 (right!35355 t!4386)))))))))

(assert (= (and d!1255752 c!724395) b!4263321))

(assert (= (and d!1255752 (not c!724395)) b!4263322))

(assert (= (and d!1255752 res!1752210) b!4263323))

(assert (= (and b!4263323 res!1752211) b!4263324))

(declare-fun m!4852837 () Bool)

(assert (=> b!4263323 m!4852837))

(assert (=> b!4263323 m!4851091))

(declare-fun m!4852839 () Bool)

(assert (=> b!4263323 m!4852839))

(assert (=> b!4263323 m!4851093))

(declare-fun m!4852841 () Bool)

(assert (=> b!4263323 m!4852841))

(declare-fun m!4852843 () Bool)

(assert (=> d!1255752 m!4852843))

(assert (=> d!1255752 m!4851091))

(declare-fun m!4852845 () Bool)

(assert (=> d!1255752 m!4852845))

(assert (=> d!1255752 m!4851093))

(declare-fun m!4852847 () Bool)

(assert (=> d!1255752 m!4852847))

(assert (=> b!4263322 m!4851093))

(declare-fun m!4852849 () Bool)

(assert (=> b!4263322 m!4852849))

(assert (=> b!4262486 d!1255752))

(assert (=> b!4262486 d!1255686))

(assert (=> b!4262486 d!1255678))

(declare-fun d!1255754 () Bool)

(assert (=> d!1255754 (= (max!0 (height!1872 (left!35025 (right!35355 t!4386))) (height!1872 (right!35355 (right!35355 t!4386)))) (ite (< (height!1872 (left!35025 (right!35355 t!4386))) (height!1872 (right!35355 (right!35355 t!4386)))) (height!1872 (right!35355 (right!35355 t!4386))) (height!1872 (left!35025 (right!35355 t!4386)))))))

(assert (=> b!4262522 d!1255754))

(assert (=> b!4262522 d!1255452))

(assert (=> b!4262522 d!1255454))

(assert (=> b!4262509 d!1255422))

(declare-fun d!1255756 () Bool)

(declare-fun lt!1511135 () Int)

(assert (=> d!1255756 (>= lt!1511135 0)))

(declare-fun e!2647254 () Int)

(assert (=> d!1255756 (= lt!1511135 e!2647254)))

(declare-fun c!724396 () Bool)

(assert (=> d!1255756 (= c!724396 ((_ is Nil!47242) (t!353271 lt!1510937)))))

(assert (=> d!1255756 (= (size!34606 (t!353271 lt!1510937)) lt!1511135)))

(declare-fun b!4263325 () Bool)

(assert (=> b!4263325 (= e!2647254 0)))

(declare-fun b!4263326 () Bool)

(assert (=> b!4263326 (= e!2647254 (+ 1 (size!34606 (t!353271 (t!353271 lt!1510937)))))))

(assert (= (and d!1255756 c!724396) b!4263325))

(assert (= (and d!1255756 (not c!724396)) b!4263326))

(declare-fun m!4852851 () Bool)

(assert (=> b!4263326 m!4852851))

(assert (=> b!4262474 d!1255756))

(assert (=> b!4262463 d!1255736))

(declare-fun b!4263330 () Bool)

(declare-fun e!2647256 () Bool)

(declare-fun lt!1511136 () List!47366)

(assert (=> b!4263330 (= e!2647256 (or (not (= (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) Nil!47242)) (= lt!1511136 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))))))))

(declare-fun b!4263329 () Bool)

(declare-fun res!1752213 () Bool)

(assert (=> b!4263329 (=> (not res!1752213) (not e!2647256))))

(assert (=> b!4263329 (= res!1752213 (= (size!34606 lt!1511136) (+ (size!34606 (list!17068 (left!35025 (right!35355 (left!35025 t!4386))))) (size!34606 (list!17068 (right!35355 (right!35355 (left!35025 t!4386))))))))))

(declare-fun d!1255758 () Bool)

(assert (=> d!1255758 e!2647256))

(declare-fun res!1752212 () Bool)

(assert (=> d!1255758 (=> (not res!1752212) (not e!2647256))))

(assert (=> d!1255758 (= res!1752212 (= (content!7448 lt!1511136) ((_ map or) (content!7448 (list!17068 (left!35025 (right!35355 (left!35025 t!4386))))) (content!7448 (list!17068 (right!35355 (right!35355 (left!35025 t!4386))))))))))

(declare-fun e!2647255 () List!47366)

(assert (=> d!1255758 (= lt!1511136 e!2647255)))

(declare-fun c!724397 () Bool)

(assert (=> d!1255758 (= c!724397 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 (left!35025 t!4386))))))))

(assert (=> d!1255758 (= (++!12035 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386))))) lt!1511136)))

(declare-fun b!4263327 () Bool)

(assert (=> b!4263327 (= e!2647255 (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4263328 () Bool)

(assert (=> b!4263328 (= e!2647255 (Cons!47242 (h!52662 (list!17068 (left!35025 (right!35355 (left!35025 t!4386))))) (++!12035 (t!353271 (list!17068 (left!35025 (right!35355 (left!35025 t!4386))))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))))))))

(assert (= (and d!1255758 c!724397) b!4263327))

(assert (= (and d!1255758 (not c!724397)) b!4263328))

(assert (= (and d!1255758 res!1752212) b!4263329))

(assert (= (and b!4263329 res!1752213) b!4263330))

(declare-fun m!4852853 () Bool)

(assert (=> b!4263329 m!4852853))

(assert (=> b!4263329 m!4851435))

(declare-fun m!4852855 () Bool)

(assert (=> b!4263329 m!4852855))

(assert (=> b!4263329 m!4851437))

(declare-fun m!4852857 () Bool)

(assert (=> b!4263329 m!4852857))

(declare-fun m!4852859 () Bool)

(assert (=> d!1255758 m!4852859))

(assert (=> d!1255758 m!4851435))

(declare-fun m!4852861 () Bool)

(assert (=> d!1255758 m!4852861))

(assert (=> d!1255758 m!4851437))

(declare-fun m!4852863 () Bool)

(assert (=> d!1255758 m!4852863))

(assert (=> b!4263328 m!4851437))

(declare-fun m!4852865 () Bool)

(assert (=> b!4263328 m!4852865))

(assert (=> b!4262653 d!1255758))

(declare-fun b!4263334 () Bool)

(declare-fun e!2647258 () List!47366)

(assert (=> b!4263334 (= e!2647258 (++!12035 (list!17068 (left!35025 (left!35025 (right!35355 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 (right!35355 (left!35025 t!4386)))))))))

(declare-fun b!4263332 () Bool)

(declare-fun e!2647257 () List!47366)

(assert (=> b!4263332 (= e!2647257 e!2647258)))

(declare-fun c!724399 () Bool)

(assert (=> b!4263332 (= c!724399 ((_ is Leaf!22018) (left!35025 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4263331 () Bool)

(assert (=> b!4263331 (= e!2647257 Nil!47242)))

(declare-fun b!4263333 () Bool)

(assert (=> b!4263333 (= e!2647258 (list!17072 (xs!17554 (left!35025 (right!35355 (left!35025 t!4386))))))))

(declare-fun d!1255760 () Bool)

(declare-fun c!724398 () Bool)

(assert (=> d!1255760 (= c!724398 ((_ is Empty!14248) (left!35025 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255760 (= (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) e!2647257)))

(assert (= (and d!1255760 c!724398) b!4263331))

(assert (= (and d!1255760 (not c!724398)) b!4263332))

(assert (= (and b!4263332 c!724399) b!4263333))

(assert (= (and b!4263332 (not c!724399)) b!4263334))

(declare-fun m!4852867 () Bool)

(assert (=> b!4263334 m!4852867))

(declare-fun m!4852869 () Bool)

(assert (=> b!4263334 m!4852869))

(assert (=> b!4263334 m!4852867))

(assert (=> b!4263334 m!4852869))

(declare-fun m!4852871 () Bool)

(assert (=> b!4263334 m!4852871))

(declare-fun m!4852873 () Bool)

(assert (=> b!4263333 m!4852873))

(assert (=> b!4262653 d!1255760))

(declare-fun b!4263338 () Bool)

(declare-fun e!2647260 () List!47366)

(assert (=> b!4263338 (= e!2647260 (++!12035 (list!17068 (left!35025 (right!35355 (right!35355 (left!35025 t!4386))))) (list!17068 (right!35355 (right!35355 (right!35355 (left!35025 t!4386)))))))))

(declare-fun b!4263336 () Bool)

(declare-fun e!2647259 () List!47366)

(assert (=> b!4263336 (= e!2647259 e!2647260)))

(declare-fun c!724401 () Bool)

(assert (=> b!4263336 (= c!724401 ((_ is Leaf!22018) (right!35355 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4263335 () Bool)

(assert (=> b!4263335 (= e!2647259 Nil!47242)))

(declare-fun b!4263337 () Bool)

(assert (=> b!4263337 (= e!2647260 (list!17072 (xs!17554 (right!35355 (right!35355 (left!35025 t!4386))))))))

(declare-fun d!1255762 () Bool)

(declare-fun c!724400 () Bool)

(assert (=> d!1255762 (= c!724400 ((_ is Empty!14248) (right!35355 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255762 (= (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) e!2647259)))

(assert (= (and d!1255762 c!724400) b!4263335))

(assert (= (and d!1255762 (not c!724400)) b!4263336))

(assert (= (and b!4263336 c!724401) b!4263337))

(assert (= (and b!4263336 (not c!724401)) b!4263338))

(declare-fun m!4852875 () Bool)

(assert (=> b!4263338 m!4852875))

(declare-fun m!4852877 () Bool)

(assert (=> b!4263338 m!4852877))

(assert (=> b!4263338 m!4852875))

(assert (=> b!4263338 m!4852877))

(declare-fun m!4852879 () Bool)

(assert (=> b!4263338 m!4852879))

(declare-fun m!4852881 () Bool)

(assert (=> b!4263337 m!4852881))

(assert (=> b!4262653 d!1255762))

(assert (=> d!1255090 d!1255746))

(assert (=> d!1255090 d!1255108))

(declare-fun d!1255764 () Bool)

(declare-fun lt!1511137 () Bool)

(assert (=> d!1255764 (= lt!1511137 (isEmpty!27990 (list!17067 (left!35026 (left!35026 lt!1510890)))))))

(assert (=> d!1255764 (= lt!1511137 (= (size!34607 (left!35026 (left!35026 lt!1510890))) 0))))

(assert (=> d!1255764 (= (isEmpty!27986 (left!35026 (left!35026 lt!1510890))) lt!1511137)))

(declare-fun bs!599153 () Bool)

(assert (= bs!599153 d!1255764))

(assert (=> bs!599153 m!4851235))

(assert (=> bs!599153 m!4851235))

(declare-fun m!4852883 () Bool)

(assert (=> bs!599153 m!4852883))

(declare-fun m!4852885 () Bool)

(assert (=> bs!599153 m!4852885))

(assert (=> b!4262656 d!1255764))

(declare-fun d!1255766 () Bool)

(assert (=> d!1255766 (= ($colon$colon!633 (map!9674 (t!353271 (list!17068 (left!35025 t!4386))) f!428) (dynLambda!20221 f!428 (h!52662 (list!17068 (left!35025 t!4386))))) (Cons!47243 (dynLambda!20221 f!428 (h!52662 (list!17068 (left!35025 t!4386)))) (map!9674 (t!353271 (list!17068 (left!35025 t!4386))) f!428)))))

(assert (=> b!4262508 d!1255766))

(declare-fun d!1255768 () Bool)

(declare-fun lt!1511138 () List!47367)

(assert (=> d!1255768 (= (size!34605 lt!1511138) (size!34606 (t!353271 (list!17068 (left!35025 t!4386)))))))

(declare-fun e!2647261 () List!47367)

(assert (=> d!1255768 (= lt!1511138 e!2647261)))

(declare-fun c!724402 () Bool)

(assert (=> d!1255768 (= c!724402 ((_ is Nil!47242) (t!353271 (list!17068 (left!35025 t!4386)))))))

(assert (=> d!1255768 (= (map!9674 (t!353271 (list!17068 (left!35025 t!4386))) f!428) lt!1511138)))

(declare-fun b!4263339 () Bool)

(assert (=> b!4263339 (= e!2647261 Nil!47243)))

(declare-fun b!4263340 () Bool)

(assert (=> b!4263340 (= e!2647261 ($colon$colon!633 (map!9674 (t!353271 (t!353271 (list!17068 (left!35025 t!4386)))) f!428) (dynLambda!20221 f!428 (h!52662 (t!353271 (list!17068 (left!35025 t!4386)))))))))

(assert (= (and d!1255768 c!724402) b!4263339))

(assert (= (and d!1255768 (not c!724402)) b!4263340))

(declare-fun b_lambda!125923 () Bool)

(assert (=> (not b_lambda!125923) (not b!4263340)))

(declare-fun t!353360 () Bool)

(declare-fun tb!257011 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353360) tb!257011))

(declare-fun result!313588 () Bool)

(assert (=> tb!257011 (= result!313588 tp_is_empty!22881)))

(assert (=> b!4263340 t!353360))

(declare-fun b_and!337821 () Bool)

(assert (= b_and!337819 (and (=> t!353360 result!313588) b_and!337821)))

(declare-fun m!4852887 () Bool)

(assert (=> d!1255768 m!4852887))

(assert (=> d!1255768 m!4852239))

(declare-fun m!4852889 () Bool)

(assert (=> b!4263340 m!4852889))

(declare-fun m!4852891 () Bool)

(assert (=> b!4263340 m!4852891))

(assert (=> b!4263340 m!4852889))

(assert (=> b!4263340 m!4852891))

(declare-fun m!4852893 () Bool)

(assert (=> b!4263340 m!4852893))

(assert (=> b!4262508 d!1255768))

(assert (=> b!4262621 d!1255672))

(assert (=> b!4262621 d!1255674))

(declare-fun d!1255770 () Bool)

(assert (=> d!1255770 (= (map!9674 (++!12035 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386))))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) f!428) (map!9674 (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) f!428)))))

(declare-fun lt!1511139 () Unit!66139)

(assert (=> d!1255770 (= lt!1511139 (choose!25988 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) f!428))))

(assert (=> d!1255770 (= (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) f!428) lt!1511139)))

(declare-fun bs!599154 () Bool)

(assert (= bs!599154 d!1255770))

(assert (=> bs!599154 m!4851435))

(assert (=> bs!599154 m!4851437))

(declare-fun m!4852895 () Bool)

(assert (=> bs!599154 m!4852895))

(assert (=> bs!599154 m!4851437))

(declare-fun m!4852897 () Bool)

(assert (=> bs!599154 m!4852897))

(assert (=> bs!599154 m!4851439))

(declare-fun m!4852899 () Bool)

(assert (=> bs!599154 m!4852899))

(declare-fun m!4852901 () Bool)

(assert (=> bs!599154 m!4852901))

(assert (=> bs!599154 m!4852897))

(declare-fun m!4852903 () Bool)

(assert (=> bs!599154 m!4852903))

(assert (=> bs!599154 m!4851435))

(assert (=> bs!599154 m!4851437))

(assert (=> bs!599154 m!4851439))

(assert (=> bs!599154 m!4851435))

(assert (=> bs!599154 m!4852901))

(assert (=> b!4262669 d!1255770))

(assert (=> b!4262669 d!1255760))

(declare-fun b!4263341 () Bool)

(declare-fun e!2647264 () Conc!14249)

(declare-fun e!2647262 () Conc!14249)

(assert (=> b!4263341 (= e!2647264 e!2647262)))

(declare-fun c!724403 () Bool)

(assert (=> b!4263341 (= c!724403 ((_ is Leaf!22018) (right!35355 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4263342 () Bool)

(declare-fun e!2647263 () Bool)

(declare-fun lt!1511141 () Conc!14249)

(assert (=> b!4263342 (= e!2647263 (isBalanced!3808 lt!1511141))))

(declare-fun d!1255772 () Bool)

(assert (=> d!1255772 e!2647263))

(declare-fun res!1752214 () Bool)

(assert (=> d!1255772 (=> (not res!1752214) (not e!2647263))))

(assert (=> d!1255772 (= res!1752214 (= (list!17067 lt!1511141) (map!9674 (list!17068 (right!35355 (right!35355 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255772 (= lt!1511141 e!2647264)))

(declare-fun c!724404 () Bool)

(assert (=> d!1255772 (= c!724404 ((_ is Empty!14248) (right!35355 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255772 (isBalanced!3807 (right!35355 (right!35355 (left!35025 t!4386))))))

(assert (=> d!1255772 (= (map!9675 (right!35355 (right!35355 (left!35025 t!4386))) f!428) lt!1511141)))

(declare-fun b!4263343 () Bool)

(assert (=> b!4263343 (= e!2647264 Empty!14249)))

(declare-fun b!4263344 () Bool)

(declare-fun lt!1511140 () Unit!66139)

(assert (=> b!4263344 (= lt!1511140 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (right!35355 (left!35025 t!4386))))) (list!17068 (right!35355 (right!35355 (right!35355 (left!35025 t!4386))))) f!428))))

(assert (=> b!4263344 (= e!2647262 (Node!14249 (map!9675 (left!35025 (right!35355 (right!35355 (left!35025 t!4386)))) f!428) (map!9675 (right!35355 (right!35355 (right!35355 (left!35025 t!4386)))) f!428) (csize!28726 (right!35355 (right!35355 (left!35025 t!4386)))) (cheight!14459 (right!35355 (right!35355 (left!35025 t!4386))))))))

(declare-fun b!4263345 () Bool)

(assert (=> b!4263345 (= e!2647262 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (right!35355 (left!35025 t!4386)))) f!428) (csize!28727 (right!35355 (right!35355 (left!35025 t!4386))))))))

(assert (= (and d!1255772 c!724404) b!4263343))

(assert (= (and d!1255772 (not c!724404)) b!4263341))

(assert (= (and b!4263341 c!724403) b!4263345))

(assert (= (and b!4263341 (not c!724403)) b!4263344))

(assert (= (and d!1255772 res!1752214) b!4263342))

(declare-fun m!4852905 () Bool)

(assert (=> b!4263342 m!4852905))

(declare-fun m!4852907 () Bool)

(assert (=> d!1255772 m!4852907))

(assert (=> d!1255772 m!4851437))

(assert (=> d!1255772 m!4851437))

(assert (=> d!1255772 m!4852897))

(assert (=> d!1255772 m!4851969))

(declare-fun m!4852909 () Bool)

(assert (=> b!4263344 m!4852909))

(assert (=> b!4263344 m!4852877))

(assert (=> b!4263344 m!4852875))

(assert (=> b!4263344 m!4852875))

(assert (=> b!4263344 m!4852877))

(declare-fun m!4852911 () Bool)

(assert (=> b!4263344 m!4852911))

(declare-fun m!4852913 () Bool)

(assert (=> b!4263344 m!4852913))

(declare-fun m!4852915 () Bool)

(assert (=> b!4263345 m!4852915))

(assert (=> b!4262669 d!1255772))

(declare-fun b!4263346 () Bool)

(declare-fun e!2647267 () Conc!14249)

(declare-fun e!2647265 () Conc!14249)

(assert (=> b!4263346 (= e!2647267 e!2647265)))

(declare-fun c!724405 () Bool)

(assert (=> b!4263346 (= c!724405 ((_ is Leaf!22018) (left!35025 (right!35355 (left!35025 t!4386)))))))

(declare-fun b!4263347 () Bool)

(declare-fun e!2647266 () Bool)

(declare-fun lt!1511143 () Conc!14249)

(assert (=> b!4263347 (= e!2647266 (isBalanced!3808 lt!1511143))))

(declare-fun d!1255774 () Bool)

(assert (=> d!1255774 e!2647266))

(declare-fun res!1752215 () Bool)

(assert (=> d!1255774 (=> (not res!1752215) (not e!2647266))))

(assert (=> d!1255774 (= res!1752215 (= (list!17067 lt!1511143) (map!9674 (list!17068 (left!35025 (right!35355 (left!35025 t!4386)))) f!428)))))

(assert (=> d!1255774 (= lt!1511143 e!2647267)))

(declare-fun c!724406 () Bool)

(assert (=> d!1255774 (= c!724406 ((_ is Empty!14248) (left!35025 (right!35355 (left!35025 t!4386)))))))

(assert (=> d!1255774 (isBalanced!3807 (left!35025 (right!35355 (left!35025 t!4386))))))

(assert (=> d!1255774 (= (map!9675 (left!35025 (right!35355 (left!35025 t!4386))) f!428) lt!1511143)))

(declare-fun b!4263348 () Bool)

(assert (=> b!4263348 (= e!2647267 Empty!14249)))

(declare-fun b!4263349 () Bool)

(declare-fun lt!1511142 () Unit!66139)

(assert (=> b!4263349 (= lt!1511142 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (right!35355 (left!35025 t!4386))))) (list!17068 (right!35355 (left!35025 (right!35355 (left!35025 t!4386))))) f!428))))

(assert (=> b!4263349 (= e!2647265 (Node!14249 (map!9675 (left!35025 (left!35025 (right!35355 (left!35025 t!4386)))) f!428) (map!9675 (right!35355 (left!35025 (right!35355 (left!35025 t!4386)))) f!428) (csize!28726 (left!35025 (right!35355 (left!35025 t!4386)))) (cheight!14459 (left!35025 (right!35355 (left!35025 t!4386))))))))

(declare-fun b!4263350 () Bool)

(assert (=> b!4263350 (= e!2647265 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (right!35355 (left!35025 t!4386)))) f!428) (csize!28727 (left!35025 (right!35355 (left!35025 t!4386))))))))

(assert (= (and d!1255774 c!724406) b!4263348))

(assert (= (and d!1255774 (not c!724406)) b!4263346))

(assert (= (and b!4263346 c!724405) b!4263350))

(assert (= (and b!4263346 (not c!724405)) b!4263349))

(assert (= (and d!1255774 res!1752215) b!4263347))

(declare-fun m!4852917 () Bool)

(assert (=> b!4263347 m!4852917))

(declare-fun m!4852919 () Bool)

(assert (=> d!1255774 m!4852919))

(assert (=> d!1255774 m!4851435))

(assert (=> d!1255774 m!4851435))

(assert (=> d!1255774 m!4852901))

(assert (=> d!1255774 m!4851967))

(declare-fun m!4852921 () Bool)

(assert (=> b!4263349 m!4852921))

(assert (=> b!4263349 m!4852869))

(assert (=> b!4263349 m!4852867))

(assert (=> b!4263349 m!4852867))

(assert (=> b!4263349 m!4852869))

(declare-fun m!4852923 () Bool)

(assert (=> b!4263349 m!4852923))

(declare-fun m!4852925 () Bool)

(assert (=> b!4263349 m!4852925))

(declare-fun m!4852927 () Bool)

(assert (=> b!4263350 m!4852927))

(assert (=> b!4262669 d!1255774))

(assert (=> b!4262669 d!1255762))

(declare-fun d!1255776 () Bool)

(assert (=> d!1255776 (= (isEmpty!27992 (list!17068 (left!35025 t!4386))) ((_ is Nil!47242) (list!17068 (left!35025 t!4386))))))

(assert (=> d!1255156 d!1255776))

(assert (=> d!1255156 d!1255028))

(assert (=> d!1255156 d!1255456))

(declare-fun d!1255778 () Bool)

(assert (=> d!1255778 (= (list!17072 (xs!17554 (right!35355 (right!35355 t!4386)))) (innerList!14308 (xs!17554 (right!35355 (right!35355 t!4386)))))))

(assert (=> b!4262489 d!1255778))

(declare-fun d!1255780 () Bool)

(declare-fun lt!1511144 () IArray!28503)

(assert (=> d!1255780 (= lt!1511144 (IArray!28504 (map!9674 (list!17072 (xs!17554 (left!35025 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255780 (= lt!1511144 (choose!25989 (xs!17554 (left!35025 (right!35355 t!4386))) f!428))))

(assert (=> d!1255780 (= (map!9676 (xs!17554 (left!35025 (right!35355 t!4386))) f!428) lt!1511144)))

(declare-fun bs!599155 () Bool)

(assert (= bs!599155 d!1255780))

(assert (=> bs!599155 m!4851097))

(assert (=> bs!599155 m!4851097))

(declare-fun m!4852929 () Bool)

(assert (=> bs!599155 m!4852929))

(declare-fun m!4852931 () Bool)

(assert (=> bs!599155 m!4852931))

(assert (=> b!4262635 d!1255780))

(declare-fun d!1255782 () Bool)

(declare-fun lt!1511145 () Int)

(assert (=> d!1255782 (>= lt!1511145 0)))

(declare-fun e!2647268 () Int)

(assert (=> d!1255782 (= lt!1511145 e!2647268)))

(declare-fun c!724407 () Bool)

(assert (=> d!1255782 (= c!724407 ((_ is Nil!47242) (list!17072 (xs!17554 t!4386))))))

(assert (=> d!1255782 (= (size!34606 (list!17072 (xs!17554 t!4386))) lt!1511145)))

(declare-fun b!4263351 () Bool)

(assert (=> b!4263351 (= e!2647268 0)))

(declare-fun b!4263352 () Bool)

(assert (=> b!4263352 (= e!2647268 (+ 1 (size!34606 (t!353271 (list!17072 (xs!17554 t!4386))))))))

(assert (= (and d!1255782 c!724407) b!4263351))

(assert (= (and d!1255782 (not c!724407)) b!4263352))

(declare-fun m!4852933 () Bool)

(assert (=> b!4263352 m!4852933))

(assert (=> b!4262524 d!1255782))

(assert (=> b!4262524 d!1255162))

(declare-fun d!1255784 () Bool)

(declare-fun lt!1511146 () Int)

(assert (=> d!1255784 (>= lt!1511146 0)))

(declare-fun e!2647269 () Int)

(assert (=> d!1255784 (= lt!1511146 e!2647269)))

(declare-fun c!724408 () Bool)

(assert (=> d!1255784 (= c!724408 ((_ is Nil!47242) lt!1510945))))

(assert (=> d!1255784 (= (size!34606 lt!1510945) lt!1511146)))

(declare-fun b!4263353 () Bool)

(assert (=> b!4263353 (= e!2647269 0)))

(declare-fun b!4263354 () Bool)

(assert (=> b!4263354 (= e!2647269 (+ 1 (size!34606 (t!353271 lt!1510945))))))

(assert (= (and d!1255784 c!724408) b!4263353))

(assert (= (and d!1255784 (not c!724408)) b!4263354))

(declare-fun m!4852935 () Bool)

(assert (=> b!4263354 m!4852935))

(assert (=> b!4262481 d!1255784))

(declare-fun d!1255786 () Bool)

(declare-fun lt!1511147 () Int)

(assert (=> d!1255786 (>= lt!1511147 0)))

(declare-fun e!2647270 () Int)

(assert (=> d!1255786 (= lt!1511147 e!2647270)))

(declare-fun c!724409 () Bool)

(assert (=> d!1255786 (= c!724409 ((_ is Nil!47242) (list!17068 (left!35025 (right!35355 t!4386)))))))

(assert (=> d!1255786 (= (size!34606 (list!17068 (left!35025 (right!35355 t!4386)))) lt!1511147)))

(declare-fun b!4263355 () Bool)

(assert (=> b!4263355 (= e!2647270 0)))

(declare-fun b!4263356 () Bool)

(assert (=> b!4263356 (= e!2647270 (+ 1 (size!34606 (t!353271 (list!17068 (left!35025 (right!35355 t!4386)))))))))

(assert (= (and d!1255786 c!724409) b!4263355))

(assert (= (and d!1255786 (not c!724409)) b!4263356))

(assert (=> b!4263356 m!4852623))

(assert (=> b!4262481 d!1255786))

(declare-fun d!1255788 () Bool)

(declare-fun lt!1511148 () Int)

(assert (=> d!1255788 (>= lt!1511148 0)))

(declare-fun e!2647271 () Int)

(assert (=> d!1255788 (= lt!1511148 e!2647271)))

(declare-fun c!724410 () Bool)

(assert (=> d!1255788 (= c!724410 ((_ is Nil!47242) (list!17068 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255788 (= (size!34606 (list!17068 (right!35355 (right!35355 t!4386)))) lt!1511148)))

(declare-fun b!4263357 () Bool)

(assert (=> b!4263357 (= e!2647271 0)))

(declare-fun b!4263358 () Bool)

(assert (=> b!4263358 (= e!2647271 (+ 1 (size!34606 (t!353271 (list!17068 (right!35355 (right!35355 t!4386)))))))))

(assert (= (and d!1255788 c!724410) b!4263357))

(assert (= (and d!1255788 (not c!724410)) b!4263358))

(declare-fun m!4852937 () Bool)

(assert (=> b!4263358 m!4852937))

(assert (=> b!4262481 d!1255788))

(assert (=> b!4262689 d!1255520))

(declare-fun d!1255790 () Bool)

(declare-fun c!724411 () Bool)

(assert (=> d!1255790 (= c!724411 ((_ is Nil!47242) (t!353271 lt!1510889)))))

(declare-fun e!2647272 () (InoxSet T!79420))

(assert (=> d!1255790 (= (content!7448 (t!353271 lt!1510889)) e!2647272)))

(declare-fun b!4263359 () Bool)

(assert (=> b!4263359 (= e!2647272 ((as const (Array T!79420 Bool)) false))))

(declare-fun b!4263360 () Bool)

(assert (=> b!4263360 (= e!2647272 ((_ map or) (store ((as const (Array T!79420 Bool)) false) (h!52662 (t!353271 lt!1510889)) true) (content!7448 (t!353271 (t!353271 lt!1510889)))))))

(assert (= (and d!1255790 c!724411) b!4263359))

(assert (= (and d!1255790 (not c!724411)) b!4263360))

(declare-fun m!4852939 () Bool)

(assert (=> b!4263360 m!4852939))

(declare-fun m!4852941 () Bool)

(assert (=> b!4263360 m!4852941))

(assert (=> b!4262595 d!1255790))

(assert (=> b!4262600 d!1255472))

(assert (=> b!4262600 d!1255474))

(declare-fun d!1255792 () Bool)

(assert (=> d!1255792 (= (list!17070 (xs!17555 (left!35026 lt!1510890))) (innerList!14309 (xs!17555 (left!35026 lt!1510890))))))

(assert (=> b!4262558 d!1255792))

(declare-fun d!1255794 () Bool)

(declare-fun c!724412 () Bool)

(assert (=> d!1255794 (= c!724412 ((_ is Nil!47243) (t!353272 (map!9674 lt!1510889 f!428))))))

(declare-fun e!2647273 () (InoxSet B!2825))

(assert (=> d!1255794 (= (content!7447 (t!353272 (map!9674 lt!1510889 f!428))) e!2647273)))

(declare-fun b!4263361 () Bool)

(assert (=> b!4263361 (= e!2647273 ((as const (Array B!2825 Bool)) false))))

(declare-fun b!4263362 () Bool)

(assert (=> b!4263362 (= e!2647273 ((_ map or) (store ((as const (Array B!2825 Bool)) false) (h!52663 (t!353272 (map!9674 lt!1510889 f!428))) true) (content!7447 (t!353272 (t!353272 (map!9674 lt!1510889 f!428))))))))

(assert (= (and d!1255794 c!724412) b!4263361))

(assert (= (and d!1255794 (not c!724412)) b!4263362))

(declare-fun m!4852943 () Bool)

(assert (=> b!4263362 m!4852943))

(declare-fun m!4852945 () Bool)

(assert (=> b!4263362 m!4852945))

(assert (=> b!4262707 d!1255794))

(declare-fun b!4263365 () Bool)

(declare-fun res!1752216 () Bool)

(declare-fun e!2647274 () Bool)

(assert (=> b!4263365 (=> (not res!1752216) (not e!2647274))))

(declare-fun lt!1511149 () List!47367)

(assert (=> b!4263365 (= res!1752216 (= (size!34605 lt!1511149) (+ (size!34605 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)) (size!34605 (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)))))))

(declare-fun b!4263364 () Bool)

(declare-fun e!2647275 () List!47367)

(assert (=> b!4263364 (= e!2647275 (Cons!47243 (h!52663 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)) (++!12036 (t!353272 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)) (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428))))))

(declare-fun b!4263366 () Bool)

(assert (=> b!4263366 (= e!2647274 (or (not (= (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428) Nil!47243)) (= lt!1511149 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428))))))

(declare-fun b!4263363 () Bool)

(assert (=> b!4263363 (= e!2647275 (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428))))

(declare-fun d!1255796 () Bool)

(assert (=> d!1255796 e!2647274))

(declare-fun res!1752217 () Bool)

(assert (=> d!1255796 (=> (not res!1752217) (not e!2647274))))

(assert (=> d!1255796 (= res!1752217 (= (content!7447 lt!1511149) ((_ map or) (content!7447 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)) (content!7447 (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)))))))

(assert (=> d!1255796 (= lt!1511149 e!2647275)))

(declare-fun c!724413 () Bool)

(assert (=> d!1255796 (= c!724413 ((_ is Nil!47243) (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428)))))

(assert (=> d!1255796 (= (++!12036 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)) lt!1511149)))

(assert (= (and d!1255796 c!724413) b!4263363))

(assert (= (and d!1255796 (not c!724413)) b!4263364))

(assert (= (and d!1255796 res!1752217) b!4263365))

(assert (= (and b!4263365 res!1752216) b!4263366))

(declare-fun m!4852947 () Bool)

(assert (=> b!4263365 m!4852947))

(assert (=> b!4263365 m!4851395))

(declare-fun m!4852949 () Bool)

(assert (=> b!4263365 m!4852949))

(assert (=> b!4263365 m!4851381))

(declare-fun m!4852951 () Bool)

(assert (=> b!4263365 m!4852951))

(assert (=> b!4263364 m!4851381))

(declare-fun m!4852953 () Bool)

(assert (=> b!4263364 m!4852953))

(declare-fun m!4852955 () Bool)

(assert (=> d!1255796 m!4852955))

(assert (=> d!1255796 m!4851395))

(declare-fun m!4852957 () Bool)

(assert (=> d!1255796 m!4852957))

(assert (=> d!1255796 m!4851381))

(declare-fun m!4852959 () Bool)

(assert (=> d!1255796 m!4852959))

(assert (=> d!1255198 d!1255796))

(assert (=> d!1255198 d!1255634))

(declare-fun d!1255798 () Bool)

(declare-fun lt!1511150 () List!47367)

(assert (=> d!1255798 (= (size!34605 lt!1511150) (size!34606 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))))))))

(declare-fun e!2647276 () List!47367)

(assert (=> d!1255798 (= lt!1511150 e!2647276)))

(declare-fun c!724414 () Bool)

(assert (=> d!1255798 (= c!724414 ((_ is Nil!47242) (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))))))))

(assert (=> d!1255798 (= (map!9674 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386)))) f!428) lt!1511150)))

(declare-fun b!4263367 () Bool)

(assert (=> b!4263367 (= e!2647276 Nil!47243)))

(declare-fun b!4263368 () Bool)

(assert (=> b!4263368 (= e!2647276 ($colon$colon!633 (map!9674 (t!353271 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))))) f!428) (dynLambda!20221 f!428 (h!52662 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))))))))))

(assert (= (and d!1255798 c!724414) b!4263367))

(assert (= (and d!1255798 (not c!724414)) b!4263368))

(declare-fun b_lambda!125925 () Bool)

(assert (=> (not b_lambda!125925) (not b!4263368)))

(declare-fun t!353362 () Bool)

(declare-fun tb!257013 () Bool)

(assert (=> (and start!408410 (= f!428 f!428) t!353362) tb!257013))

(declare-fun result!313590 () Bool)

(assert (=> tb!257013 (= result!313590 tp_is_empty!22881)))

(assert (=> b!4263368 t!353362))

(declare-fun b_and!337823 () Bool)

(assert (= b_and!337821 (and (=> t!353362 result!313590) b_and!337823)))

(declare-fun m!4852961 () Bool)

(assert (=> d!1255798 m!4852961))

(assert (=> d!1255798 m!4851013))

(declare-fun m!4852963 () Bool)

(assert (=> d!1255798 m!4852963))

(declare-fun m!4852965 () Bool)

(assert (=> b!4263368 m!4852965))

(declare-fun m!4852967 () Bool)

(assert (=> b!4263368 m!4852967))

(assert (=> b!4263368 m!4852965))

(assert (=> b!4263368 m!4852967))

(declare-fun m!4852969 () Bool)

(assert (=> b!4263368 m!4852969))

(assert (=> d!1255198 d!1255798))

(assert (=> d!1255198 d!1255076))

(declare-fun d!1255800 () Bool)

(assert (=> d!1255800 (= (map!9674 (++!12035 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386)))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (right!35355 t!4386))) f!428) (map!9674 (list!17068 (right!35355 (right!35355 t!4386))) f!428)))))

(assert (=> d!1255800 true))

(declare-fun _$82!117 () Unit!66139)

(assert (=> d!1255800 (= (choose!25988 (list!17068 (left!35025 (right!35355 t!4386))) (list!17068 (right!35355 (right!35355 t!4386))) f!428) _$82!117)))

(declare-fun bs!599156 () Bool)

(assert (= bs!599156 d!1255800))

(assert (=> bs!599156 m!4850877))

(assert (=> bs!599156 m!4850875))

(assert (=> bs!599156 m!4851013))

(assert (=> bs!599156 m!4850875))

(assert (=> bs!599156 m!4851381))

(assert (=> bs!599156 m!4851395))

(assert (=> bs!599156 m!4851381))

(assert (=> bs!599156 m!4851409))

(assert (=> bs!599156 m!4850877))

(assert (=> bs!599156 m!4851395))

(assert (=> bs!599156 m!4851013))

(assert (=> bs!599156 m!4851407))

(assert (=> d!1255198 d!1255800))

(assert (=> d!1255198 d!1255734))

(assert (=> b!4262476 d!1255588))

(declare-fun d!1255802 () Bool)

(assert (=> d!1255802 (= (list!17070 (xs!17555 (right!35356 lt!1510890))) (innerList!14309 (xs!17555 (right!35356 lt!1510890))))))

(assert (=> b!4262562 d!1255802))

(declare-fun b!4263372 () Bool)

(declare-fun e!2647278 () Bool)

(declare-fun lt!1511151 () List!47366)

(assert (=> b!4263372 (= e!2647278 (or (not (= (list!17068 (right!35355 t!4386)) Nil!47242)) (= lt!1511151 (t!353271 (list!17068 (left!35025 t!4386))))))))

(declare-fun b!4263371 () Bool)

(declare-fun res!1752219 () Bool)

(assert (=> b!4263371 (=> (not res!1752219) (not e!2647278))))

(assert (=> b!4263371 (= res!1752219 (= (size!34606 lt!1511151) (+ (size!34606 (t!353271 (list!17068 (left!35025 t!4386)))) (size!34606 (list!17068 (right!35355 t!4386))))))))

(declare-fun d!1255804 () Bool)

(assert (=> d!1255804 e!2647278))

(declare-fun res!1752218 () Bool)

(assert (=> d!1255804 (=> (not res!1752218) (not e!2647278))))

(assert (=> d!1255804 (= res!1752218 (= (content!7448 lt!1511151) ((_ map or) (content!7448 (t!353271 (list!17068 (left!35025 t!4386)))) (content!7448 (list!17068 (right!35355 t!4386))))))))

(declare-fun e!2647277 () List!47366)

(assert (=> d!1255804 (= lt!1511151 e!2647277)))

(declare-fun c!724415 () Bool)

(assert (=> d!1255804 (= c!724415 ((_ is Nil!47242) (t!353271 (list!17068 (left!35025 t!4386)))))))

(assert (=> d!1255804 (= (++!12035 (t!353271 (list!17068 (left!35025 t!4386))) (list!17068 (right!35355 t!4386))) lt!1511151)))

(declare-fun b!4263369 () Bool)

(assert (=> b!4263369 (= e!2647277 (list!17068 (right!35355 t!4386)))))

(declare-fun b!4263370 () Bool)

(assert (=> b!4263370 (= e!2647277 (Cons!47242 (h!52662 (t!353271 (list!17068 (left!35025 t!4386)))) (++!12035 (t!353271 (t!353271 (list!17068 (left!35025 t!4386)))) (list!17068 (right!35355 t!4386)))))))

(assert (= (and d!1255804 c!724415) b!4263369))

(assert (= (and d!1255804 (not c!724415)) b!4263370))

(assert (= (and d!1255804 res!1752218) b!4263371))

(assert (= (and b!4263371 res!1752219) b!4263372))

(declare-fun m!4852971 () Bool)

(assert (=> b!4263371 m!4852971))

(assert (=> b!4263371 m!4852239))

(assert (=> b!4263371 m!4850687))

(assert (=> b!4263371 m!4851049))

(declare-fun m!4852973 () Bool)

(assert (=> d!1255804 m!4852973))

(assert (=> d!1255804 m!4852125))

(assert (=> d!1255804 m!4850687))

(assert (=> d!1255804 m!4851135))

(assert (=> b!4263370 m!4850687))

(declare-fun m!4852975 () Bool)

(assert (=> b!4263370 m!4852975))

(assert (=> b!4262500 d!1255804))

(assert (=> b!4262629 d!1255484))

(declare-fun b!4263373 () Bool)

(declare-fun e!2647281 () Conc!14249)

(declare-fun e!2647279 () Conc!14249)

(assert (=> b!4263373 (= e!2647281 e!2647279)))

(declare-fun c!724416 () Bool)

(assert (=> b!4263373 (= c!724416 ((_ is Leaf!22018) (left!35025 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263374 () Bool)

(declare-fun e!2647280 () Bool)

(declare-fun lt!1511153 () Conc!14249)

(assert (=> b!4263374 (= e!2647280 (isBalanced!3808 lt!1511153))))

(declare-fun d!1255806 () Bool)

(assert (=> d!1255806 e!2647280))

(declare-fun res!1752220 () Bool)

(assert (=> d!1255806 (=> (not res!1752220) (not e!2647280))))

(assert (=> d!1255806 (= res!1752220 (= (list!17067 lt!1511153) (map!9674 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255806 (= lt!1511153 e!2647281)))

(declare-fun c!724417 () Bool)

(assert (=> d!1255806 (= c!724417 ((_ is Empty!14248) (left!35025 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255806 (isBalanced!3807 (left!35025 (right!35355 (right!35355 t!4386))))))

(assert (=> d!1255806 (= (map!9675 (left!35025 (right!35355 (right!35355 t!4386))) f!428) lt!1511153)))

(declare-fun b!4263375 () Bool)

(assert (=> b!4263375 (= e!2647281 Empty!14249)))

(declare-fun b!4263376 () Bool)

(declare-fun lt!1511152 () Unit!66139)

(assert (=> b!4263376 (= lt!1511152 (lemmaMapConcat!32 (list!17068 (left!35025 (left!35025 (right!35355 (right!35355 t!4386))))) (list!17068 (right!35355 (left!35025 (right!35355 (right!35355 t!4386))))) f!428))))

(assert (=> b!4263376 (= e!2647279 (Node!14249 (map!9675 (left!35025 (left!35025 (right!35355 (right!35355 t!4386)))) f!428) (map!9675 (right!35355 (left!35025 (right!35355 (right!35355 t!4386)))) f!428) (csize!28726 (left!35025 (right!35355 (right!35355 t!4386)))) (cheight!14459 (left!35025 (right!35355 (right!35355 t!4386))))))))

(declare-fun b!4263377 () Bool)

(assert (=> b!4263377 (= e!2647279 (Leaf!22019 (map!9676 (xs!17554 (left!35025 (right!35355 (right!35355 t!4386)))) f!428) (csize!28727 (left!35025 (right!35355 (right!35355 t!4386))))))))

(assert (= (and d!1255806 c!724417) b!4263375))

(assert (= (and d!1255806 (not c!724417)) b!4263373))

(assert (= (and b!4263373 c!724416) b!4263377))

(assert (= (and b!4263373 (not c!724416)) b!4263376))

(assert (= (and d!1255806 res!1752220) b!4263374))

(declare-fun m!4852977 () Bool)

(assert (=> b!4263374 m!4852977))

(declare-fun m!4852979 () Bool)

(assert (=> d!1255806 m!4852979))

(assert (=> d!1255806 m!4851099))

(assert (=> d!1255806 m!4851099))

(declare-fun m!4852981 () Bool)

(assert (=> d!1255806 m!4852981))

(assert (=> d!1255806 m!4851997))

(declare-fun m!4852983 () Bool)

(assert (=> b!4263376 m!4852983))

(assert (=> b!4263376 m!4852199))

(assert (=> b!4263376 m!4852197))

(assert (=> b!4263376 m!4852197))

(assert (=> b!4263376 m!4852199))

(declare-fun m!4852985 () Bool)

(assert (=> b!4263376 m!4852985))

(declare-fun m!4852987 () Bool)

(assert (=> b!4263376 m!4852987))

(declare-fun m!4852989 () Bool)

(assert (=> b!4263377 m!4852989))

(assert (=> b!4262629 d!1255806))

(declare-fun d!1255808 () Bool)

(assert (=> d!1255808 (= (map!9674 (++!12035 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386))))) f!428) (++!12036 (map!9674 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) f!428) (map!9674 (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) f!428)))))

(declare-fun lt!1511154 () Unit!66139)

(assert (=> d!1255808 (= lt!1511154 (choose!25988 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) f!428))))

(assert (=> d!1255808 (= (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (right!35355 t!4386)))) (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) f!428) lt!1511154)))

(declare-fun bs!599157 () Bool)

(assert (= bs!599157 d!1255808))

(assert (=> bs!599157 m!4851099))

(assert (=> bs!599157 m!4851101))

(declare-fun m!4852991 () Bool)

(assert (=> bs!599157 m!4852991))

(assert (=> bs!599157 m!4851101))

(declare-fun m!4852993 () Bool)

(assert (=> bs!599157 m!4852993))

(assert (=> bs!599157 m!4851103))

(declare-fun m!4852995 () Bool)

(assert (=> bs!599157 m!4852995))

(assert (=> bs!599157 m!4852981))

(assert (=> bs!599157 m!4852993))

(declare-fun m!4852997 () Bool)

(assert (=> bs!599157 m!4852997))

(assert (=> bs!599157 m!4851099))

(assert (=> bs!599157 m!4851101))

(assert (=> bs!599157 m!4851103))

(assert (=> bs!599157 m!4851099))

(assert (=> bs!599157 m!4852981))

(assert (=> b!4262629 d!1255808))

(declare-fun b!4263378 () Bool)

(declare-fun e!2647284 () Conc!14249)

(declare-fun e!2647282 () Conc!14249)

(assert (=> b!4263378 (= e!2647284 e!2647282)))

(declare-fun c!724418 () Bool)

(assert (=> b!4263378 (= c!724418 ((_ is Leaf!22018) (right!35355 (right!35355 (right!35355 t!4386)))))))

(declare-fun b!4263379 () Bool)

(declare-fun e!2647283 () Bool)

(declare-fun lt!1511156 () Conc!14249)

(assert (=> b!4263379 (= e!2647283 (isBalanced!3808 lt!1511156))))

(declare-fun d!1255810 () Bool)

(assert (=> d!1255810 e!2647283))

(declare-fun res!1752221 () Bool)

(assert (=> d!1255810 (=> (not res!1752221) (not e!2647283))))

(assert (=> d!1255810 (= res!1752221 (= (list!17067 lt!1511156) (map!9674 (list!17068 (right!35355 (right!35355 (right!35355 t!4386)))) f!428)))))

(assert (=> d!1255810 (= lt!1511156 e!2647284)))

(declare-fun c!724419 () Bool)

(assert (=> d!1255810 (= c!724419 ((_ is Empty!14248) (right!35355 (right!35355 (right!35355 t!4386)))))))

(assert (=> d!1255810 (isBalanced!3807 (right!35355 (right!35355 (right!35355 t!4386))))))

(assert (=> d!1255810 (= (map!9675 (right!35355 (right!35355 (right!35355 t!4386))) f!428) lt!1511156)))

(declare-fun b!4263380 () Bool)

(assert (=> b!4263380 (= e!2647284 Empty!14249)))

(declare-fun b!4263381 () Bool)

(declare-fun lt!1511155 () Unit!66139)

(assert (=> b!4263381 (= lt!1511155 (lemmaMapConcat!32 (list!17068 (left!35025 (right!35355 (right!35355 (right!35355 t!4386))))) (list!17068 (right!35355 (right!35355 (right!35355 (right!35355 t!4386))))) f!428))))

(assert (=> b!4263381 (= e!2647282 (Node!14249 (map!9675 (left!35025 (right!35355 (right!35355 (right!35355 t!4386)))) f!428) (map!9675 (right!35355 (right!35355 (right!35355 (right!35355 t!4386)))) f!428) (csize!28726 (right!35355 (right!35355 (right!35355 t!4386)))) (cheight!14459 (right!35355 (right!35355 (right!35355 t!4386))))))))

(declare-fun b!4263382 () Bool)

(assert (=> b!4263382 (= e!2647282 (Leaf!22019 (map!9676 (xs!17554 (right!35355 (right!35355 (right!35355 t!4386)))) f!428) (csize!28727 (right!35355 (right!35355 (right!35355 t!4386))))))))

(assert (= (and d!1255810 c!724419) b!4263380))

(assert (= (and d!1255810 (not c!724419)) b!4263378))

(assert (= (and b!4263378 c!724418) b!4263382))

(assert (= (and b!4263378 (not c!724418)) b!4263381))

(assert (= (and d!1255810 res!1752221) b!4263379))

(declare-fun m!4852999 () Bool)

(assert (=> b!4263379 m!4852999))

(declare-fun m!4853001 () Bool)

(assert (=> d!1255810 m!4853001))

(assert (=> d!1255810 m!4851101))

(assert (=> d!1255810 m!4851101))

(assert (=> d!1255810 m!4852993))

(assert (=> d!1255810 m!4851999))

(declare-fun m!4853003 () Bool)

(assert (=> b!4263381 m!4853003))

(assert (=> b!4263381 m!4852207))

(assert (=> b!4263381 m!4852205))

(assert (=> b!4263381 m!4852205))

(assert (=> b!4263381 m!4852207))

(declare-fun m!4853005 () Bool)

(assert (=> b!4263381 m!4853005))

(declare-fun m!4853007 () Bool)

(assert (=> b!4263381 m!4853007))

(declare-fun m!4853009 () Bool)

(assert (=> b!4263382 m!4853009))

(assert (=> b!4262629 d!1255810))

(assert (=> b!4262629 d!1255486))

(declare-fun d!1255812 () Bool)

(declare-fun c!724420 () Bool)

(assert (=> d!1255812 (= c!724420 ((_ is Node!14248) (left!35025 (left!35025 (right!35355 t!4386)))))))

(declare-fun e!2647285 () Bool)

(assert (=> d!1255812 (= (inv!62149 (left!35025 (left!35025 (right!35355 t!4386)))) e!2647285)))

(declare-fun b!4263383 () Bool)

(assert (=> b!4263383 (= e!2647285 (inv!62153 (left!35025 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263384 () Bool)

(declare-fun e!2647286 () Bool)

(assert (=> b!4263384 (= e!2647285 e!2647286)))

(declare-fun res!1752222 () Bool)

(assert (=> b!4263384 (= res!1752222 (not ((_ is Leaf!22018) (left!35025 (left!35025 (right!35355 t!4386))))))))

(assert (=> b!4263384 (=> res!1752222 e!2647286)))

(declare-fun b!4263385 () Bool)

(assert (=> b!4263385 (= e!2647286 (inv!62154 (left!35025 (left!35025 (right!35355 t!4386)))))))

(assert (= (and d!1255812 c!724420) b!4263383))

(assert (= (and d!1255812 (not c!724420)) b!4263384))

(assert (= (and b!4263384 (not res!1752222)) b!4263385))

(declare-fun m!4853011 () Bool)

(assert (=> b!4263383 m!4853011))

(declare-fun m!4853013 () Bool)

(assert (=> b!4263385 m!4853013))

(assert (=> b!4262724 d!1255812))

(declare-fun d!1255814 () Bool)

(declare-fun c!724421 () Bool)

(assert (=> d!1255814 (= c!724421 ((_ is Node!14248) (right!35355 (left!35025 (right!35355 t!4386)))))))

(declare-fun e!2647287 () Bool)

(assert (=> d!1255814 (= (inv!62149 (right!35355 (left!35025 (right!35355 t!4386)))) e!2647287)))

(declare-fun b!4263386 () Bool)

(assert (=> b!4263386 (= e!2647287 (inv!62153 (right!35355 (left!35025 (right!35355 t!4386)))))))

(declare-fun b!4263387 () Bool)

(declare-fun e!2647288 () Bool)

(assert (=> b!4263387 (= e!2647287 e!2647288)))

(declare-fun res!1752223 () Bool)

(assert (=> b!4263387 (= res!1752223 (not ((_ is Leaf!22018) (right!35355 (left!35025 (right!35355 t!4386))))))))

(assert (=> b!4263387 (=> res!1752223 e!2647288)))

(declare-fun b!4263388 () Bool)

(assert (=> b!4263388 (= e!2647288 (inv!62154 (right!35355 (left!35025 (right!35355 t!4386)))))))

(assert (= (and d!1255814 c!724421) b!4263386))

(assert (= (and d!1255814 (not c!724421)) b!4263387))

(assert (= (and b!4263387 (not res!1752223)) b!4263388))

(declare-fun m!4853015 () Bool)

(assert (=> b!4263386 m!4853015))

(declare-fun m!4853017 () Bool)

(assert (=> b!4263388 m!4853017))

(assert (=> b!4262724 d!1255814))

(declare-fun d!1255816 () Bool)

(assert (=> d!1255816 (= (inv!62150 (xs!17554 (right!35355 (right!35355 t!4386)))) (<= (size!34606 (innerList!14308 (xs!17554 (right!35355 (right!35355 t!4386))))) 2147483647))))

(declare-fun bs!599158 () Bool)

(assert (= bs!599158 d!1255816))

(declare-fun m!4853019 () Bool)

(assert (=> bs!599158 m!4853019))

(assert (=> b!4262728 d!1255816))

(assert (=> d!1255106 d!1255782))

(assert (=> d!1255106 d!1255162))

(declare-fun d!1255818 () Bool)

(assert (=> d!1255818 (= (inv!62150 (xs!17554 (left!35025 (left!35025 t!4386)))) (<= (size!34606 (innerList!14308 (xs!17554 (left!35025 (left!35025 t!4386))))) 2147483647))))

(declare-fun bs!599159 () Bool)

(assert (= bs!599159 d!1255818))

(declare-fun m!4853021 () Bool)

(assert (=> bs!599159 m!4853021))

(assert (=> b!4262739 d!1255818))

(declare-fun e!2647290 () Bool)

(declare-fun tp!1307177 () Bool)

(declare-fun tp!1307178 () Bool)

(declare-fun b!4263389 () Bool)

(assert (=> b!4263389 (= e!2647290 (and (inv!62149 (left!35025 (left!35025 (left!35025 (left!35025 t!4386))))) tp!1307178 (inv!62149 (right!35355 (left!35025 (left!35025 (left!35025 t!4386))))) tp!1307177))))

(declare-fun b!4263391 () Bool)

(declare-fun e!2647289 () Bool)

(declare-fun tp!1307179 () Bool)

(assert (=> b!4263391 (= e!2647289 tp!1307179)))

(declare-fun b!4263390 () Bool)

(assert (=> b!4263390 (= e!2647290 (and (inv!62150 (xs!17554 (left!35025 (left!35025 (left!35025 t!4386))))) e!2647289))))

(assert (=> b!4262738 (= tp!1307152 (and (inv!62149 (left!35025 (left!35025 (left!35025 t!4386)))) e!2647290))))

(assert (= (and b!4262738 ((_ is Node!14248) (left!35025 (left!35025 (left!35025 t!4386))))) b!4263389))

(assert (= b!4263390 b!4263391))

(assert (= (and b!4262738 ((_ is Leaf!22018) (left!35025 (left!35025 (left!35025 t!4386))))) b!4263390))

(declare-fun m!4853023 () Bool)

(assert (=> b!4263389 m!4853023))

(declare-fun m!4853025 () Bool)

(assert (=> b!4263389 m!4853025))

(declare-fun m!4853027 () Bool)

(assert (=> b!4263390 m!4853027))

(assert (=> b!4262738 m!4851591))

(declare-fun tp!1307180 () Bool)

(declare-fun tp!1307181 () Bool)

(declare-fun b!4263392 () Bool)

(declare-fun e!2647292 () Bool)

(assert (=> b!4263392 (= e!2647292 (and (inv!62149 (left!35025 (right!35355 (left!35025 (left!35025 t!4386))))) tp!1307181 (inv!62149 (right!35355 (right!35355 (left!35025 (left!35025 t!4386))))) tp!1307180))))

(declare-fun b!4263394 () Bool)

(declare-fun e!2647291 () Bool)

(declare-fun tp!1307182 () Bool)

(assert (=> b!4263394 (= e!2647291 tp!1307182)))

(declare-fun b!4263393 () Bool)

(assert (=> b!4263393 (= e!2647292 (and (inv!62150 (xs!17554 (right!35355 (left!35025 (left!35025 t!4386))))) e!2647291))))

(assert (=> b!4262738 (= tp!1307151 (and (inv!62149 (right!35355 (left!35025 (left!35025 t!4386)))) e!2647292))))

(assert (= (and b!4262738 ((_ is Node!14248) (right!35355 (left!35025 (left!35025 t!4386))))) b!4263392))

(assert (= b!4263393 b!4263394))

(assert (= (and b!4262738 ((_ is Leaf!22018) (right!35355 (left!35025 (left!35025 t!4386))))) b!4263393))

(declare-fun m!4853029 () Bool)

(assert (=> b!4263392 m!4853029))

(declare-fun m!4853031 () Bool)

(assert (=> b!4263392 m!4853031))

(declare-fun m!4853033 () Bool)

(assert (=> b!4263393 m!4853033))

(assert (=> b!4262738 m!4851593))

(declare-fun b!4263395 () Bool)

(declare-fun e!2647293 () Bool)

(declare-fun tp!1307183 () Bool)

(assert (=> b!4263395 (= e!2647293 (and tp_is_empty!22885 tp!1307183))))

(assert (=> b!4262730 (= tp!1307149 e!2647293)))

(assert (= (and b!4262730 ((_ is Cons!47242) (t!353271 (t!353271 (innerList!14308 (xs!17554 t!4386)))))) b!4263395))

(declare-fun b!4263396 () Bool)

(declare-fun e!2647294 () Bool)

(declare-fun tp!1307184 () Bool)

(assert (=> b!4263396 (= e!2647294 (and tp_is_empty!22885 tp!1307184))))

(assert (=> b!4262743 (= tp!1307156 e!2647294)))

(assert (= (and b!4262743 ((_ is Cons!47242) (innerList!14308 (xs!17554 (right!35355 (left!35025 t!4386)))))) b!4263396))

(declare-fun b!4263397 () Bool)

(declare-fun e!2647295 () Bool)

(declare-fun tp!1307185 () Bool)

(assert (=> b!4263397 (= e!2647295 (and tp_is_empty!22885 tp!1307185))))

(assert (=> b!4262737 (= tp!1307150 e!2647295)))

(assert (= (and b!4262737 ((_ is Cons!47242) (t!353271 (innerList!14308 (xs!17554 (right!35355 t!4386)))))) b!4263397))

(declare-fun b!4263398 () Bool)

(declare-fun e!2647296 () Bool)

(declare-fun tp!1307186 () Bool)

(assert (=> b!4263398 (= e!2647296 (and tp_is_empty!22885 tp!1307186))))

(assert (=> b!4262726 (= tp!1307145 e!2647296)))

(assert (= (and b!4262726 ((_ is Cons!47242) (innerList!14308 (xs!17554 (left!35025 (right!35355 t!4386)))))) b!4263398))

(declare-fun e!2647298 () Bool)

(declare-fun b!4263399 () Bool)

(declare-fun tp!1307188 () Bool)

(declare-fun tp!1307187 () Bool)

(assert (=> b!4263399 (= e!2647298 (and (inv!62149 (left!35025 (left!35025 (right!35355 (left!35025 t!4386))))) tp!1307188 (inv!62149 (right!35355 (left!35025 (right!35355 (left!35025 t!4386))))) tp!1307187))))

(declare-fun b!4263401 () Bool)

(declare-fun e!2647297 () Bool)

(declare-fun tp!1307189 () Bool)

(assert (=> b!4263401 (= e!2647297 tp!1307189)))

(declare-fun b!4263400 () Bool)

(assert (=> b!4263400 (= e!2647298 (and (inv!62150 (xs!17554 (left!35025 (right!35355 (left!35025 t!4386))))) e!2647297))))

(assert (=> b!4262741 (= tp!1307155 (and (inv!62149 (left!35025 (right!35355 (left!35025 t!4386)))) e!2647298))))

(assert (= (and b!4262741 ((_ is Node!14248) (left!35025 (right!35355 (left!35025 t!4386))))) b!4263399))

(assert (= b!4263400 b!4263401))

(assert (= (and b!4262741 ((_ is Leaf!22018) (left!35025 (right!35355 (left!35025 t!4386))))) b!4263400))

(declare-fun m!4853035 () Bool)

(assert (=> b!4263399 m!4853035))

(declare-fun m!4853037 () Bool)

(assert (=> b!4263399 m!4853037))

(declare-fun m!4853039 () Bool)

(assert (=> b!4263400 m!4853039))

(assert (=> b!4262741 m!4851597))

(declare-fun tp!1307190 () Bool)

(declare-fun e!2647300 () Bool)

(declare-fun b!4263402 () Bool)

(declare-fun tp!1307191 () Bool)

(assert (=> b!4263402 (= e!2647300 (and (inv!62149 (left!35025 (right!35355 (right!35355 (left!35025 t!4386))))) tp!1307191 (inv!62149 (right!35355 (right!35355 (right!35355 (left!35025 t!4386))))) tp!1307190))))

(declare-fun b!4263404 () Bool)

(declare-fun e!2647299 () Bool)

(declare-fun tp!1307192 () Bool)

(assert (=> b!4263404 (= e!2647299 tp!1307192)))

(declare-fun b!4263403 () Bool)

(assert (=> b!4263403 (= e!2647300 (and (inv!62150 (xs!17554 (right!35355 (right!35355 (left!35025 t!4386))))) e!2647299))))

(assert (=> b!4262741 (= tp!1307154 (and (inv!62149 (right!35355 (right!35355 (left!35025 t!4386)))) e!2647300))))

(assert (= (and b!4262741 ((_ is Node!14248) (right!35355 (right!35355 (left!35025 t!4386))))) b!4263402))

(assert (= b!4263403 b!4263404))

(assert (= (and b!4262741 ((_ is Leaf!22018) (right!35355 (right!35355 (left!35025 t!4386))))) b!4263403))

(declare-fun m!4853041 () Bool)

(assert (=> b!4263402 m!4853041))

(declare-fun m!4853043 () Bool)

(assert (=> b!4263402 m!4853043))

(declare-fun m!4853045 () Bool)

(assert (=> b!4263403 m!4853045))

(assert (=> b!4262741 m!4851599))

(declare-fun b!4263405 () Bool)

(declare-fun e!2647301 () Bool)

(declare-fun tp!1307193 () Bool)

(assert (=> b!4263405 (= e!2647301 (and tp_is_empty!22885 tp!1307193))))

(assert (=> b!4262744 (= tp!1307157 e!2647301)))

(assert (= (and b!4262744 ((_ is Cons!47242) (t!353271 (innerList!14308 (xs!17554 (left!35025 t!4386)))))) b!4263405))

(declare-fun b!4263406 () Bool)

(declare-fun e!2647302 () Bool)

(declare-fun tp!1307194 () Bool)

(assert (=> b!4263406 (= e!2647302 (and tp_is_empty!22885 tp!1307194))))

(assert (=> b!4262729 (= tp!1307148 e!2647302)))

(assert (= (and b!4262729 ((_ is Cons!47242) (innerList!14308 (xs!17554 (right!35355 (right!35355 t!4386)))))) b!4263406))

(declare-fun tp!1307196 () Bool)

(declare-fun tp!1307195 () Bool)

(declare-fun b!4263407 () Bool)

(declare-fun e!2647304 () Bool)

(assert (=> b!4263407 (= e!2647304 (and (inv!62149 (left!35025 (left!35025 (left!35025 (right!35355 t!4386))))) tp!1307196 (inv!62149 (right!35355 (left!35025 (left!35025 (right!35355 t!4386))))) tp!1307195))))

(declare-fun b!4263409 () Bool)

(declare-fun e!2647303 () Bool)

(declare-fun tp!1307197 () Bool)

(assert (=> b!4263409 (= e!2647303 tp!1307197)))

(declare-fun b!4263408 () Bool)

(assert (=> b!4263408 (= e!2647304 (and (inv!62150 (xs!17554 (left!35025 (left!35025 (right!35355 t!4386))))) e!2647303))))

(assert (=> b!4262724 (= tp!1307144 (and (inv!62149 (left!35025 (left!35025 (right!35355 t!4386)))) e!2647304))))

(assert (= (and b!4262724 ((_ is Node!14248) (left!35025 (left!35025 (right!35355 t!4386))))) b!4263407))

(assert (= b!4263408 b!4263409))

(assert (= (and b!4262724 ((_ is Leaf!22018) (left!35025 (left!35025 (right!35355 t!4386))))) b!4263408))

(declare-fun m!4853047 () Bool)

(assert (=> b!4263407 m!4853047))

(declare-fun m!4853049 () Bool)

(assert (=> b!4263407 m!4853049))

(declare-fun m!4853051 () Bool)

(assert (=> b!4263408 m!4853051))

(assert (=> b!4262724 m!4851568))

(declare-fun tp!1307199 () Bool)

(declare-fun e!2647306 () Bool)

(declare-fun tp!1307198 () Bool)

(declare-fun b!4263410 () Bool)

(assert (=> b!4263410 (= e!2647306 (and (inv!62149 (left!35025 (right!35355 (left!35025 (right!35355 t!4386))))) tp!1307199 (inv!62149 (right!35355 (right!35355 (left!35025 (right!35355 t!4386))))) tp!1307198))))

(declare-fun b!4263412 () Bool)

(declare-fun e!2647305 () Bool)

(declare-fun tp!1307200 () Bool)

(assert (=> b!4263412 (= e!2647305 tp!1307200)))

(declare-fun b!4263411 () Bool)

(assert (=> b!4263411 (= e!2647306 (and (inv!62150 (xs!17554 (right!35355 (left!35025 (right!35355 t!4386))))) e!2647305))))

(assert (=> b!4262724 (= tp!1307143 (and (inv!62149 (right!35355 (left!35025 (right!35355 t!4386)))) e!2647306))))

(assert (= (and b!4262724 ((_ is Node!14248) (right!35355 (left!35025 (right!35355 t!4386))))) b!4263410))

(assert (= b!4263411 b!4263412))

(assert (= (and b!4262724 ((_ is Leaf!22018) (right!35355 (left!35025 (right!35355 t!4386))))) b!4263411))

(declare-fun m!4853053 () Bool)

(assert (=> b!4263410 m!4853053))

(declare-fun m!4853055 () Bool)

(assert (=> b!4263410 m!4853055))

(declare-fun m!4853057 () Bool)

(assert (=> b!4263411 m!4853057))

(assert (=> b!4262724 m!4851571))

(declare-fun b!4263413 () Bool)

(declare-fun e!2647307 () Bool)

(declare-fun tp!1307201 () Bool)

(assert (=> b!4263413 (= e!2647307 (and tp_is_empty!22885 tp!1307201))))

(assert (=> b!4262740 (= tp!1307153 e!2647307)))

(assert (= (and b!4262740 ((_ is Cons!47242) (innerList!14308 (xs!17554 (left!35025 (left!35025 t!4386)))))) b!4263413))

(declare-fun tp!1307203 () Bool)

(declare-fun tp!1307202 () Bool)

(declare-fun e!2647309 () Bool)

(declare-fun b!4263414 () Bool)

(assert (=> b!4263414 (= e!2647309 (and (inv!62149 (left!35025 (left!35025 (right!35355 (right!35355 t!4386))))) tp!1307203 (inv!62149 (right!35355 (left!35025 (right!35355 (right!35355 t!4386))))) tp!1307202))))

(declare-fun b!4263416 () Bool)

(declare-fun e!2647308 () Bool)

(declare-fun tp!1307204 () Bool)

(assert (=> b!4263416 (= e!2647308 tp!1307204)))

(declare-fun b!4263415 () Bool)

(assert (=> b!4263415 (= e!2647309 (and (inv!62150 (xs!17554 (left!35025 (right!35355 (right!35355 t!4386))))) e!2647308))))

(assert (=> b!4262727 (= tp!1307147 (and (inv!62149 (left!35025 (right!35355 (right!35355 t!4386)))) e!2647309))))

(assert (= (and b!4262727 ((_ is Node!14248) (left!35025 (right!35355 (right!35355 t!4386))))) b!4263414))

(assert (= b!4263415 b!4263416))

(assert (= (and b!4262727 ((_ is Leaf!22018) (left!35025 (right!35355 (right!35355 t!4386))))) b!4263415))

(declare-fun m!4853059 () Bool)

(assert (=> b!4263414 m!4853059))

(declare-fun m!4853061 () Bool)

(assert (=> b!4263414 m!4853061))

(declare-fun m!4853063 () Bool)

(assert (=> b!4263415 m!4853063))

(assert (=> b!4262727 m!4851585))

(declare-fun b!4263417 () Bool)

(declare-fun e!2647311 () Bool)

(declare-fun tp!1307205 () Bool)

(declare-fun tp!1307206 () Bool)

(assert (=> b!4263417 (= e!2647311 (and (inv!62149 (left!35025 (right!35355 (right!35355 (right!35355 t!4386))))) tp!1307206 (inv!62149 (right!35355 (right!35355 (right!35355 (right!35355 t!4386))))) tp!1307205))))

(declare-fun b!4263419 () Bool)

(declare-fun e!2647310 () Bool)

(declare-fun tp!1307207 () Bool)

(assert (=> b!4263419 (= e!2647310 tp!1307207)))

(declare-fun b!4263418 () Bool)

(assert (=> b!4263418 (= e!2647311 (and (inv!62150 (xs!17554 (right!35355 (right!35355 (right!35355 t!4386))))) e!2647310))))

(assert (=> b!4262727 (= tp!1307146 (and (inv!62149 (right!35355 (right!35355 (right!35355 t!4386)))) e!2647311))))

(assert (= (and b!4262727 ((_ is Node!14248) (right!35355 (right!35355 (right!35355 t!4386))))) b!4263417))

(assert (= b!4263418 b!4263419))

(assert (= (and b!4262727 ((_ is Leaf!22018) (right!35355 (right!35355 (right!35355 t!4386))))) b!4263418))

(declare-fun m!4853065 () Bool)

(assert (=> b!4263417 m!4853065))

(declare-fun m!4853067 () Bool)

(assert (=> b!4263417 m!4853067))

(declare-fun m!4853069 () Bool)

(assert (=> b!4263418 m!4853069))

(assert (=> b!4262727 m!4851587))

(declare-fun b_lambda!125927 () Bool)

(assert (= b_lambda!125917 (or (and start!408410 b_free!126689) b_lambda!125927)))

(declare-fun b_lambda!125929 () Bool)

(assert (= b_lambda!125925 (or (and start!408410 b_free!126689) b_lambda!125929)))

(declare-fun b_lambda!125931 () Bool)

(assert (= b_lambda!125923 (or (and start!408410 b_free!126689) b_lambda!125931)))

(declare-fun b_lambda!125933 () Bool)

(assert (= b_lambda!125899 (or (and start!408410 b_free!126689) b_lambda!125933)))

(declare-fun b_lambda!125935 () Bool)

(assert (= b_lambda!125919 (or (and start!408410 b_free!126689) b_lambda!125935)))

(declare-fun b_lambda!125937 () Bool)

(assert (= b_lambda!125911 (or (and start!408410 b_free!126689) b_lambda!125937)))

(declare-fun b_lambda!125939 () Bool)

(assert (= b_lambda!125905 (or (and start!408410 b_free!126689) b_lambda!125939)))

(declare-fun b_lambda!125941 () Bool)

(assert (= b_lambda!125907 (or (and start!408410 b_free!126689) b_lambda!125941)))

(declare-fun b_lambda!125943 () Bool)

(assert (= b_lambda!125901 (or (and start!408410 b_free!126689) b_lambda!125943)))

(declare-fun b_lambda!125945 () Bool)

(assert (= b_lambda!125921 (or (and start!408410 b_free!126689) b_lambda!125945)))

(declare-fun b_lambda!125947 () Bool)

(assert (= b_lambda!125903 (or (and start!408410 b_free!126689) b_lambda!125947)))

(declare-fun b_lambda!125949 () Bool)

(assert (= b_lambda!125913 (or (and start!408410 b_free!126689) b_lambda!125949)))

(declare-fun b_lambda!125951 () Bool)

(assert (= b_lambda!125915 (or (and start!408410 b_free!126689) b_lambda!125951)))

(declare-fun b_lambda!125953 () Bool)

(assert (= b_lambda!125909 (or (and start!408410 b_free!126689) b_lambda!125953)))

(check-sat (not b_lambda!125849) (not b!4263123) (not b!4263286) (not d!1255706) (not b!4263329) (not b!4263150) (not b!4263152) (not b!4262996) (not b!4262989) (not b!4262954) (not b!4263158) (not b!4263305) (not b_lambda!125933) (not b!4263131) (not b!4262967) (not b!4263064) (not b!4263319) (not b!4263133) (not b!4263000) (not b!4263080) (not b!4263310) (not d!1255650) (not b!4263192) (not d!1255456) (not b!4262922) (not b!4263394) (not b!4263228) (not b!4263416) (not b!4263153) (not b!4263223) (not b!4263292) (not b!4263268) (not b!4263157) (not b!4262998) (not b!4263301) (not b!4263391) (not b!4263328) (not b!4263053) (not d!1255634) (not d!1255602) (not b!4263005) (not b!4263224) (not b!4263037) (not d!1255758) (not b!4263167) (not b!4263139) (not b!4263052) (not b!4262918) (not b!4262993) (not b!4262924) (not b!4263181) (not d!1255752) (not b!4263035) (not b!4263258) (not d!1255468) (not b!4262979) (not b!4263241) (not b!4262925) (not b!4263176) (not b!4263238) (not b!4262980) (not b!4262963) (not b!4263050) (not b!4263253) (not b!4263362) (not d!1255666) (not b!4263403) (not d!1255514) (not b!4263231) (not b!4263388) (not b!4263122) (not b!4263099) (not d!1255534) (not b!4263383) (not b_lambda!125931) (not b!4263290) (not b!4263407) (not b!4262951) (not b!4262984) (not b!4263248) (not b!4262946) (not b!4263138) (not b!4263294) (not d!1255690) (not b!4263159) (not b!4263093) (not d!1255626) (not b!4263379) (not d!1255482) (not d!1255646) (not b!4263041) (not b!4263337) (not d!1255810) (not d!1255770) (not b!4263398) (not b!4263252) b_and!337823 (not b!4263047) (not b!4263401) (not b!4262920) (not b!4262988) (not d!1255722) (not b!4263075) (not b!4263270) (not b!4262970) (not d!1255576) (not b!4263028) (not b!4263061) (not b!4262965) (not d!1255620) (not b!4263063) (not b!4262982) (not b!4263392) (not b_lambda!125951) (not b!4263219) (not d!1255680) (not b!4263312) (not b!4263095) (not b!4263017) (not b!4263295) (not b!4263399) (not b!4263113) (not b!4263249) (not b!4263334) (not b!4263125) (not d!1255458) (not b!4263054) (not b!4263296) (not b!4263059) (not d!1255402) (not b!4263004) (not d!1255670) (not b!4263074) (not d!1255636) (not d!1255798) (not d!1255704) (not b!4262940) (not b!4263111) (not d!1255510) (not b!4263023) (not b!4262939) (not b!4263386) (not b!4263114) (not d!1255772) (not b!4263322) (not b!4263226) (not b_lambda!125847) (not b_lambda!125845) (not b!4263390) (not d!1255682) (not b!4262727) (not b_lambda!125875) (not b!4262929) (not b!4263083) (not b!4263082) (not b!4263232) (not b!4263154) (not b!4263255) (not b_lambda!125941) (not b!4263045) (not b!4262930) (not b!4263100) (not b!4263402) (not b!4263318) (not b!4263084) (not b!4263091) (not b!4263418) (not b!4262964) (not b!4263186) (not b!4263264) (not b!4263395) (not b!4263280) (not b!4263007) (not b!4263089) (not b_lambda!125939) (not b!4263216) (not b!4262978) (not d!1255512) (not d!1255628) (not b!4263360) (not b!4262927) (not b!4263173) (not b!4263274) (not b!4263358) (not b!4263410) (not d!1255524) (not b!4263155) (not d!1255570) (not b!4263298) (not b!4263239) (not d!1255668) (not d!1255528) (not b!4263105) (not b!4263365) (not b!4263112) (not d!1255492) (not b!4263009) (not b!4263145) (not d!1255710) (not b_lambda!125929) (not b!4263235) (not b!4263141) (not b!4263211) (not b!4263352) (not b!4263229) (not b!4263119) (not b!4263117) (not d!1255552) (not b!4263354) (not b!4263011) (not d!1255440) (not b!4263293) (not b!4263104) (not b!4263043) (not d!1255476) (not b!4263161) (not b!4263178) (not b!4263033) (not b!4263397) (not b!4262957) (not b!4263349) (not b!4262975) (not d!1255558) (not d!1255412) (not b!4263257) (not b!4263127) (not b!4263393) (not b!4263016) (not d!1255734) (not d!1255466) (not b!4263297) (not b!4263405) (not b!4262741) (not b!4263396) (not b!4263244) (not b_next!127393) (not b!4263370) (not b_lambda!125945) (not b!4262938) (not b!4263282) (not d!1255818) (not b!4263163) (not b!4263338) (not b!4262992) (not b!4263377) (not b!4263404) (not b!4263190) (not b!4263124) (not b_lambda!125947) (not d!1255584) (not b!4262986) (not b_lambda!125943) (not b!4262981) (not b!4263177) (not b!4263197) (not b!4263208) (not b!4263135) (not b!4262944) (not b!4263265) (not b!4263179) (not b!4263002) tp_is_empty!22881 (not d!1255638) (not b_lambda!125867) (not b!4263069) (not b!4263129) (not d!1255748) (not b!4263081) (not d!1255724) (not b!4263315) (not b!4263078) (not b!4262942) (not b!4263246) (not b_lambda!125869) (not b!4262966) (not b!4263121) (not b!4263110) (not b!4262724) (not b!4263272) (not b!4263221) (not b_lambda!125949) (not b!4263038) (not b!4263085) (not b!4263400) (not b!4263020) (not b!4263115) (not b!4263368) (not b!4262738) (not b!4263175) (not b!4263374) (not b!4263109) (not b!4263140) (not b!4263079) (not b!4263279) (not b!4263406) (not b!4262961) (not d!1255592) (not b!4263149) (not b!4263108) (not b!4262928) (not b_lambda!125873) (not b_lambda!125937) (not d!1255406) (not b!4263289) (not b!4263097) (not d!1255498) (not d!1255488) (not b!4263180) (not d!1255450) (not b_lambda!125927) (not b!4263201) (not d!1255408) (not b!4263381) (not b!4263275) (not b!4263340) (not d!1255684) (not b!4263048) (not b!4263183) (not b!4263364) (not b!4263409) (not b!4263057) (not b!4263419) (not b!4263356) (not b!4262936) (not b!4263317) (not b!4263314) (not b!4263267) (not b!4263148) (not b!4263151) (not b!4263032) (not b!4262962) (not b!4263165) (not b_lambda!125843) (not d!1255796) (not b!4263342) (not b!4263309) (not b!4263067) (not d!1255780) (not b!4263189) (not d!1255536) (not b!4263137) (not b!4263382) (not d!1255720) (not b!4263220) (not d!1255700) (not b_lambda!125935) (not b!4263029) (not b_lambda!125877) (not d!1255410) (not d!1255496) (not b!4263376) (not b!4263210) (not b!4262953) (not b!4263087) (not b!4263347) (not b!4263326) (not b_lambda!125953) (not b!4263414) (not b!4263243) (not b!4263408) (not d!1255692) (not b!4263300) (not b!4263316) (not b!4262941) (not b!4263417) (not b!4263012) (not b!4263333) (not b!4263411) (not b!4262983) (not b!4263199) (not b!4263051) (not b!4263146) (not b!4263055) (not b!4263350) (not b!4262972) (not b!4263006) (not b!4263412) (not b!4263142) (not d!1255804) (not b!4262935) (not b!4263345) (not d!1255768) (not b!4263024) (not d!1255816) (not b!4263120) (not b!4263306) (not d!1255714) (not b!4263203) tp_is_empty!22885 (not b!4262968) (not b!4263344) (not b!4263021) (not b!4263284) (not d!1255738) (not d!1255800) (not b!4263194) (not b!4263156) (not b!4263320) (not b!4262976) (not d!1255398) (not d!1255624) (not d!1255808) (not d!1255446) (not b!4263277) (not b!4262955) (not b!4263389) (not b!4262943) (not d!1255806) (not b!4263143) (not b!4262931) (not b!4263413) (not d!1255500) (not b!4263323) (not b!4262950) (not b!4263171) (not b!4263205) (not b!4263169) (not b!4262956) (not b_lambda!125871) (not b!4262958) (not b!4263215) (not d!1255764) (not b!4263008) (not b!4263261) (not b!4262926) (not d!1255654) (not b!4262973) (not d!1255414) (not b!4263070) (not d!1255508) (not d!1255774) (not b!4263415) (not b!4263385) (not b!4262948) (not b!4263371))
(check-sat b_and!337823 (not b_next!127393))
