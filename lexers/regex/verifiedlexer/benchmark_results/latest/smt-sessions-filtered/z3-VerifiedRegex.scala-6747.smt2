; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352344 () Bool)

(assert start!352344)

(declare-fun b_free!100419 () Bool)

(declare-fun b_next!101123 () Bool)

(assert (=> start!352344 (= b_free!100419 (not b_next!101123))))

(declare-fun tp!1145758 () Bool)

(declare-fun b_and!278833 () Bool)

(assert (=> start!352344 (= tp!1145758 b_and!278833)))

(declare-fun res!1520580 () Bool)

(declare-fun e!2320954 () Bool)

(assert (=> start!352344 (=> (not res!1520580) (not e!2320954))))

(declare-datatypes ((T!69112 0))(
  ( (T!69113 (val!13174 Int)) )
))
(declare-datatypes ((List!40133 0))(
  ( (Nil!40009) (Cons!40009 (h!45429 T!69112) (t!303156 List!40133)) )
))
(declare-datatypes ((IArray!24475 0))(
  ( (IArray!24476 (innerList!12295 List!40133)) )
))
(declare-datatypes ((Conc!12235 0))(
  ( (Node!12235 (left!30974 Conc!12235) (right!31304 Conc!12235) (csize!24700 Int) (cheight!12446 Int)) (Leaf!18983 (xs!15437 IArray!24475) (csize!24701 Int)) (Empty!12235) )
))
(declare-fun t!3709 () Conc!12235)

(get-info :version)

(assert (=> start!352344 (= res!1520580 (and (not ((_ is Empty!12235) t!3709)) (not ((_ is Leaf!18983) t!3709))))))

(assert (=> start!352344 e!2320954))

(declare-fun e!2320953 () Bool)

(declare-fun inv!53565 (Conc!12235) Bool)

(assert (=> start!352344 (and (inv!53565 t!3709) e!2320953)))

(assert (=> start!352344 tp!1145758))

(declare-fun b!3752178 () Bool)

(declare-fun e!2320951 () Bool)

(declare-fun tp!1145760 () Bool)

(assert (=> b!3752178 (= e!2320951 tp!1145760)))

(declare-fun b!3752179 () Bool)

(declare-fun e!2320952 () Bool)

(declare-fun height!1744 (Conc!12235) Int)

(assert (=> b!3752179 (= e!2320952 (>= (height!1744 (right!31304 t!3709)) (height!1744 t!3709)))))

(declare-fun tp!1145757 () Bool)

(declare-fun b!3752180 () Bool)

(declare-fun tp!1145759 () Bool)

(assert (=> b!3752180 (= e!2320953 (and (inv!53565 (left!30974 t!3709)) tp!1145759 (inv!53565 (right!31304 t!3709)) tp!1145757))))

(declare-fun b!3752181 () Bool)

(declare-fun inv!53566 (IArray!24475) Bool)

(assert (=> b!3752181 (= e!2320953 (and (inv!53566 (xs!15437 t!3709)) e!2320951))))

(declare-fun b!3752182 () Bool)

(assert (=> b!3752182 (= e!2320954 e!2320952)))

(declare-fun res!1520581 () Bool)

(assert (=> b!3752182 (=> (not res!1520581) (not e!2320952))))

(declare-fun p!1451 () Int)

(declare-fun forall!8229 (Conc!12235 Int) Bool)

(assert (=> b!3752182 (= res!1520581 (forall!8229 (left!30974 t!3709) p!1451))))

(declare-datatypes ((Unit!57738 0))(
  ( (Unit!57739) )
))
(declare-fun lt!1299965 () Unit!57738)

(declare-fun lemmaForallConcat!211 (List!40133 List!40133 Int) Unit!57738)

(declare-fun list!14742 (Conc!12235) List!40133)

(assert (=> b!3752182 (= lt!1299965 (lemmaForallConcat!211 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)) p!1451))))

(assert (= (and start!352344 res!1520580) b!3752182))

(assert (= (and b!3752182 res!1520581) b!3752179))

(assert (= (and start!352344 ((_ is Node!12235) t!3709)) b!3752180))

(assert (= b!3752181 b!3752178))

(assert (= (and start!352344 ((_ is Leaf!18983) t!3709)) b!3752181))

(declare-fun m!4243409 () Bool)

(assert (=> start!352344 m!4243409))

(declare-fun m!4243411 () Bool)

(assert (=> b!3752182 m!4243411))

(declare-fun m!4243413 () Bool)

(assert (=> b!3752182 m!4243413))

(declare-fun m!4243415 () Bool)

(assert (=> b!3752182 m!4243415))

(assert (=> b!3752182 m!4243413))

(assert (=> b!3752182 m!4243415))

(declare-fun m!4243417 () Bool)

(assert (=> b!3752182 m!4243417))

(declare-fun m!4243419 () Bool)

(assert (=> b!3752181 m!4243419))

(declare-fun m!4243421 () Bool)

(assert (=> b!3752179 m!4243421))

(declare-fun m!4243423 () Bool)

(assert (=> b!3752179 m!4243423))

(declare-fun m!4243425 () Bool)

(assert (=> b!3752180 m!4243425))

(declare-fun m!4243427 () Bool)

(assert (=> b!3752180 m!4243427))

(check-sat (not b!3752182) (not b!3752178) (not b_next!101123) (not b!3752180) (not start!352344) b_and!278833 (not b!3752181) (not b!3752179))
(check-sat b_and!278833 (not b_next!101123))
(get-model)

(declare-fun d!1094688 () Bool)

(assert (=> d!1094688 (= (height!1744 (right!31304 t!3709)) (ite ((_ is Empty!12235) (right!31304 t!3709)) 0 (ite ((_ is Leaf!18983) (right!31304 t!3709)) 1 (cheight!12446 (right!31304 t!3709)))))))

(assert (=> b!3752179 d!1094688))

(declare-fun d!1094690 () Bool)

(assert (=> d!1094690 (= (height!1744 t!3709) (ite ((_ is Empty!12235) t!3709) 0 (ite ((_ is Leaf!18983) t!3709) 1 (cheight!12446 t!3709))))))

(assert (=> b!3752179 d!1094690))

(declare-fun d!1094692 () Bool)

(declare-fun c!649465 () Bool)

(assert (=> d!1094692 (= c!649465 ((_ is Node!12235) t!3709))))

(declare-fun e!2320965 () Bool)

(assert (=> d!1094692 (= (inv!53565 t!3709) e!2320965)))

(declare-fun b!3752198 () Bool)

(declare-fun inv!53567 (Conc!12235) Bool)

(assert (=> b!3752198 (= e!2320965 (inv!53567 t!3709))))

(declare-fun b!3752199 () Bool)

(declare-fun e!2320966 () Bool)

(assert (=> b!3752199 (= e!2320965 e!2320966)))

(declare-fun res!1520587 () Bool)

(assert (=> b!3752199 (= res!1520587 (not ((_ is Leaf!18983) t!3709)))))

(assert (=> b!3752199 (=> res!1520587 e!2320966)))

(declare-fun b!3752200 () Bool)

(declare-fun inv!53568 (Conc!12235) Bool)

(assert (=> b!3752200 (= e!2320966 (inv!53568 t!3709))))

(assert (= (and d!1094692 c!649465) b!3752198))

(assert (= (and d!1094692 (not c!649465)) b!3752199))

(assert (= (and b!3752199 (not res!1520587)) b!3752200))

(declare-fun m!4243433 () Bool)

(assert (=> b!3752198 m!4243433))

(declare-fun m!4243435 () Bool)

(assert (=> b!3752200 m!4243435))

(assert (=> start!352344 d!1094692))

(declare-fun b!3752218 () Bool)

(declare-fun e!2320979 () Bool)

(assert (=> b!3752218 (= e!2320979 (forall!8229 (right!31304 (left!30974 t!3709)) p!1451))))

(declare-fun b!3752217 () Bool)

(declare-fun e!2320977 () Bool)

(assert (=> b!3752217 (= e!2320977 e!2320979)))

(declare-fun lt!1299971 () Unit!57738)

(assert (=> b!3752217 (= lt!1299971 (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))) p!1451))))

(declare-fun res!1520594 () Bool)

(assert (=> b!3752217 (= res!1520594 (forall!8229 (left!30974 (left!30974 t!3709)) p!1451))))

(assert (=> b!3752217 (=> (not res!1520594) (not e!2320979))))

(declare-fun b!3752216 () Bool)

(declare-fun forall!8230 (IArray!24475 Int) Bool)

(assert (=> b!3752216 (= e!2320977 (forall!8230 (xs!15437 (left!30974 t!3709)) p!1451))))

(declare-fun d!1094696 () Bool)

(declare-fun lt!1299970 () Bool)

(declare-fun forall!8231 (List!40133 Int) Bool)

(assert (=> d!1094696 (= lt!1299970 (forall!8231 (list!14742 (left!30974 t!3709)) p!1451))))

(declare-fun e!2320978 () Bool)

(assert (=> d!1094696 (= lt!1299970 e!2320978)))

(declare-fun res!1520595 () Bool)

(assert (=> d!1094696 (=> res!1520595 e!2320978)))

(assert (=> d!1094696 (= res!1520595 ((_ is Empty!12235) (left!30974 t!3709)))))

(assert (=> d!1094696 (= (forall!8229 (left!30974 t!3709) p!1451) lt!1299970)))

(declare-fun b!3752215 () Bool)

(assert (=> b!3752215 (= e!2320978 e!2320977)))

(declare-fun c!649470 () Bool)

(assert (=> b!3752215 (= c!649470 ((_ is Leaf!18983) (left!30974 t!3709)))))

(assert (= (and d!1094696 (not res!1520595)) b!3752215))

(assert (= (and b!3752215 c!649470) b!3752216))

(assert (= (and b!3752215 (not c!649470)) b!3752217))

(assert (= (and b!3752217 res!1520594) b!3752218))

(declare-fun m!4243447 () Bool)

(assert (=> b!3752218 m!4243447))

(declare-fun m!4243449 () Bool)

(assert (=> b!3752217 m!4243449))

(declare-fun m!4243451 () Bool)

(assert (=> b!3752217 m!4243451))

(assert (=> b!3752217 m!4243449))

(assert (=> b!3752217 m!4243451))

(declare-fun m!4243453 () Bool)

(assert (=> b!3752217 m!4243453))

(declare-fun m!4243455 () Bool)

(assert (=> b!3752217 m!4243455))

(declare-fun m!4243457 () Bool)

(assert (=> b!3752216 m!4243457))

(assert (=> d!1094696 m!4243413))

(assert (=> d!1094696 m!4243413))

(declare-fun m!4243459 () Bool)

(assert (=> d!1094696 m!4243459))

(assert (=> b!3752182 d!1094696))

(declare-fun d!1094708 () Bool)

(declare-fun e!2320991 () Bool)

(declare-fun ++!9902 (List!40133 List!40133) List!40133)

(assert (=> d!1094708 (= (forall!8231 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))) p!1451) e!2320991)))

(declare-fun res!1520604 () Bool)

(assert (=> d!1094708 (=> (not res!1520604) (not e!2320991))))

(assert (=> d!1094708 (= res!1520604 (forall!8231 (list!14742 (left!30974 t!3709)) p!1451))))

(declare-fun lt!1299980 () Unit!57738)

(declare-fun choose!22255 (List!40133 List!40133 Int) Unit!57738)

(assert (=> d!1094708 (= lt!1299980 (choose!22255 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)) p!1451))))

(assert (=> d!1094708 (= (lemmaForallConcat!211 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)) p!1451) lt!1299980)))

(declare-fun b!3752233 () Bool)

(assert (=> b!3752233 (= e!2320991 (forall!8231 (list!14742 (right!31304 t!3709)) p!1451))))

(assert (= (and d!1094708 res!1520604) b!3752233))

(assert (=> d!1094708 m!4243413))

(assert (=> d!1094708 m!4243415))

(declare-fun m!4243461 () Bool)

(assert (=> d!1094708 m!4243461))

(assert (=> d!1094708 m!4243461))

(declare-fun m!4243463 () Bool)

(assert (=> d!1094708 m!4243463))

(assert (=> d!1094708 m!4243413))

(assert (=> d!1094708 m!4243459))

(assert (=> d!1094708 m!4243413))

(assert (=> d!1094708 m!4243415))

(declare-fun m!4243467 () Bool)

(assert (=> d!1094708 m!4243467))

(assert (=> b!3752233 m!4243415))

(declare-fun m!4243471 () Bool)

(assert (=> b!3752233 m!4243471))

(assert (=> b!3752182 d!1094708))

(declare-fun b!3752246 () Bool)

(declare-fun e!2320999 () List!40133)

(declare-fun list!14743 (IArray!24475) List!40133)

(assert (=> b!3752246 (= e!2320999 (list!14743 (xs!15437 (left!30974 t!3709))))))

(declare-fun b!3752245 () Bool)

(declare-fun e!2320998 () List!40133)

(assert (=> b!3752245 (= e!2320998 e!2320999)))

(declare-fun c!649479 () Bool)

(assert (=> b!3752245 (= c!649479 ((_ is Leaf!18983) (left!30974 t!3709)))))

(declare-fun d!1094710 () Bool)

(declare-fun c!649478 () Bool)

(assert (=> d!1094710 (= c!649478 ((_ is Empty!12235) (left!30974 t!3709)))))

(assert (=> d!1094710 (= (list!14742 (left!30974 t!3709)) e!2320998)))

(declare-fun b!3752247 () Bool)

(assert (=> b!3752247 (= e!2320999 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))))))

(declare-fun b!3752244 () Bool)

(assert (=> b!3752244 (= e!2320998 Nil!40009)))

(assert (= (and d!1094710 c!649478) b!3752244))

(assert (= (and d!1094710 (not c!649478)) b!3752245))

(assert (= (and b!3752245 c!649479) b!3752246))

(assert (= (and b!3752245 (not c!649479)) b!3752247))

(declare-fun m!4243483 () Bool)

(assert (=> b!3752246 m!4243483))

(assert (=> b!3752247 m!4243449))

(assert (=> b!3752247 m!4243451))

(assert (=> b!3752247 m!4243449))

(assert (=> b!3752247 m!4243451))

(declare-fun m!4243485 () Bool)

(assert (=> b!3752247 m!4243485))

(assert (=> b!3752182 d!1094710))

(declare-fun b!3752250 () Bool)

(declare-fun e!2321001 () List!40133)

(assert (=> b!3752250 (= e!2321001 (list!14743 (xs!15437 (right!31304 t!3709))))))

(declare-fun b!3752249 () Bool)

(declare-fun e!2321000 () List!40133)

(assert (=> b!3752249 (= e!2321000 e!2321001)))

(declare-fun c!649481 () Bool)

(assert (=> b!3752249 (= c!649481 ((_ is Leaf!18983) (right!31304 t!3709)))))

(declare-fun d!1094714 () Bool)

(declare-fun c!649480 () Bool)

(assert (=> d!1094714 (= c!649480 ((_ is Empty!12235) (right!31304 t!3709)))))

(assert (=> d!1094714 (= (list!14742 (right!31304 t!3709)) e!2321000)))

(declare-fun b!3752251 () Bool)

(assert (=> b!3752251 (= e!2321001 (++!9902 (list!14742 (left!30974 (right!31304 t!3709))) (list!14742 (right!31304 (right!31304 t!3709)))))))

(declare-fun b!3752248 () Bool)

(assert (=> b!3752248 (= e!2321000 Nil!40009)))

(assert (= (and d!1094714 c!649480) b!3752248))

(assert (= (and d!1094714 (not c!649480)) b!3752249))

(assert (= (and b!3752249 c!649481) b!3752250))

(assert (= (and b!3752249 (not c!649481)) b!3752251))

(declare-fun m!4243487 () Bool)

(assert (=> b!3752250 m!4243487))

(declare-fun m!4243489 () Bool)

(assert (=> b!3752251 m!4243489))

(declare-fun m!4243491 () Bool)

(assert (=> b!3752251 m!4243491))

(assert (=> b!3752251 m!4243489))

(assert (=> b!3752251 m!4243491))

(declare-fun m!4243493 () Bool)

(assert (=> b!3752251 m!4243493))

(assert (=> b!3752182 d!1094714))

(declare-fun d!1094716 () Bool)

(declare-fun size!30104 (List!40133) Int)

(assert (=> d!1094716 (= (inv!53566 (xs!15437 t!3709)) (<= (size!30104 (innerList!12295 (xs!15437 t!3709))) 2147483647))))

(declare-fun bs!575428 () Bool)

(assert (= bs!575428 d!1094716))

(declare-fun m!4243503 () Bool)

(assert (=> bs!575428 m!4243503))

(assert (=> b!3752181 d!1094716))

(declare-fun d!1094720 () Bool)

(declare-fun c!649482 () Bool)

(assert (=> d!1094720 (= c!649482 ((_ is Node!12235) (left!30974 t!3709)))))

(declare-fun e!2321003 () Bool)

(assert (=> d!1094720 (= (inv!53565 (left!30974 t!3709)) e!2321003)))

(declare-fun b!3752253 () Bool)

(assert (=> b!3752253 (= e!2321003 (inv!53567 (left!30974 t!3709)))))

(declare-fun b!3752254 () Bool)

(declare-fun e!2321004 () Bool)

(assert (=> b!3752254 (= e!2321003 e!2321004)))

(declare-fun res!1520608 () Bool)

(assert (=> b!3752254 (= res!1520608 (not ((_ is Leaf!18983) (left!30974 t!3709))))))

(assert (=> b!3752254 (=> res!1520608 e!2321004)))

(declare-fun b!3752255 () Bool)

(assert (=> b!3752255 (= e!2321004 (inv!53568 (left!30974 t!3709)))))

(assert (= (and d!1094720 c!649482) b!3752253))

(assert (= (and d!1094720 (not c!649482)) b!3752254))

(assert (= (and b!3752254 (not res!1520608)) b!3752255))

(declare-fun m!4243505 () Bool)

(assert (=> b!3752253 m!4243505))

(declare-fun m!4243507 () Bool)

(assert (=> b!3752255 m!4243507))

(assert (=> b!3752180 d!1094720))

(declare-fun d!1094722 () Bool)

(declare-fun c!649483 () Bool)

(assert (=> d!1094722 (= c!649483 ((_ is Node!12235) (right!31304 t!3709)))))

(declare-fun e!2321005 () Bool)

(assert (=> d!1094722 (= (inv!53565 (right!31304 t!3709)) e!2321005)))

(declare-fun b!3752256 () Bool)

(assert (=> b!3752256 (= e!2321005 (inv!53567 (right!31304 t!3709)))))

(declare-fun b!3752257 () Bool)

(declare-fun e!2321006 () Bool)

(assert (=> b!3752257 (= e!2321005 e!2321006)))

(declare-fun res!1520609 () Bool)

(assert (=> b!3752257 (= res!1520609 (not ((_ is Leaf!18983) (right!31304 t!3709))))))

(assert (=> b!3752257 (=> res!1520609 e!2321006)))

(declare-fun b!3752258 () Bool)

(assert (=> b!3752258 (= e!2321006 (inv!53568 (right!31304 t!3709)))))

(assert (= (and d!1094722 c!649483) b!3752256))

(assert (= (and d!1094722 (not c!649483)) b!3752257))

(assert (= (and b!3752257 (not res!1520609)) b!3752258))

(declare-fun m!4243509 () Bool)

(assert (=> b!3752256 m!4243509))

(declare-fun m!4243511 () Bool)

(assert (=> b!3752258 m!4243511))

(assert (=> b!3752180 d!1094722))

(declare-fun b!3752263 () Bool)

(declare-fun e!2321009 () Bool)

(declare-fun tp_is_empty!19051 () Bool)

(declare-fun tp!1145763 () Bool)

(assert (=> b!3752263 (= e!2321009 (and tp_is_empty!19051 tp!1145763))))

(assert (=> b!3752178 (= tp!1145760 e!2321009)))

(assert (= (and b!3752178 ((_ is Cons!40009) (innerList!12295 (xs!15437 t!3709)))) b!3752263))

(declare-fun e!2321018 () Bool)

(declare-fun tp!1145771 () Bool)

(declare-fun tp!1145770 () Bool)

(declare-fun b!3752280 () Bool)

(assert (=> b!3752280 (= e!2321018 (and (inv!53565 (left!30974 (left!30974 t!3709))) tp!1145771 (inv!53565 (right!31304 (left!30974 t!3709))) tp!1145770))))

(declare-fun b!3752282 () Bool)

(declare-fun e!2321019 () Bool)

(declare-fun tp!1145772 () Bool)

(assert (=> b!3752282 (= e!2321019 tp!1145772)))

(declare-fun b!3752281 () Bool)

(assert (=> b!3752281 (= e!2321018 (and (inv!53566 (xs!15437 (left!30974 t!3709))) e!2321019))))

(assert (=> b!3752180 (= tp!1145759 (and (inv!53565 (left!30974 t!3709)) e!2321018))))

(assert (= (and b!3752180 ((_ is Node!12235) (left!30974 t!3709))) b!3752280))

(assert (= b!3752281 b!3752282))

(assert (= (and b!3752180 ((_ is Leaf!18983) (left!30974 t!3709))) b!3752281))

(declare-fun m!4243513 () Bool)

(assert (=> b!3752280 m!4243513))

(declare-fun m!4243515 () Bool)

(assert (=> b!3752280 m!4243515))

(declare-fun m!4243517 () Bool)

(assert (=> b!3752281 m!4243517))

(assert (=> b!3752180 m!4243425))

(declare-fun b!3752283 () Bool)

(declare-fun tp!1145774 () Bool)

(declare-fun e!2321020 () Bool)

(declare-fun tp!1145773 () Bool)

(assert (=> b!3752283 (= e!2321020 (and (inv!53565 (left!30974 (right!31304 t!3709))) tp!1145774 (inv!53565 (right!31304 (right!31304 t!3709))) tp!1145773))))

(declare-fun b!3752285 () Bool)

(declare-fun e!2321021 () Bool)

(declare-fun tp!1145775 () Bool)

(assert (=> b!3752285 (= e!2321021 tp!1145775)))

(declare-fun b!3752284 () Bool)

(assert (=> b!3752284 (= e!2321020 (and (inv!53566 (xs!15437 (right!31304 t!3709))) e!2321021))))

(assert (=> b!3752180 (= tp!1145757 (and (inv!53565 (right!31304 t!3709)) e!2321020))))

(assert (= (and b!3752180 ((_ is Node!12235) (right!31304 t!3709))) b!3752283))

(assert (= b!3752284 b!3752285))

(assert (= (and b!3752180 ((_ is Leaf!18983) (right!31304 t!3709))) b!3752284))

(declare-fun m!4243519 () Bool)

(assert (=> b!3752283 m!4243519))

(declare-fun m!4243521 () Bool)

(assert (=> b!3752283 m!4243521))

(declare-fun m!4243523 () Bool)

(assert (=> b!3752284 m!4243523))

(assert (=> b!3752180 m!4243427))

(check-sat (not b!3752253) (not d!1094708) (not b!3752198) (not b!3752256) (not d!1094696) (not b!3752255) (not b!3752217) (not b!3752250) (not b!3752247) (not b!3752216) (not b!3752280) (not b!3752258) (not d!1094716) (not b!3752284) tp_is_empty!19051 (not b!3752263) (not b!3752200) (not b!3752283) (not b!3752282) (not b_next!101123) (not b!3752218) (not b!3752246) (not b!3752233) (not b!3752251) (not b!3752180) b_and!278833 (not b!3752285) (not b!3752281))
(check-sat b_and!278833 (not b_next!101123))
(get-model)

(declare-fun d!1094726 () Bool)

(declare-fun res!1520614 () Bool)

(declare-fun e!2321041 () Bool)

(assert (=> d!1094726 (=> res!1520614 e!2321041)))

(assert (=> d!1094726 (= res!1520614 ((_ is Nil!40009) (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)))))))

(assert (=> d!1094726 (= (forall!8231 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))) p!1451) e!2321041)))

(declare-fun b!3752317 () Bool)

(declare-fun e!2321042 () Bool)

(assert (=> b!3752317 (= e!2321041 e!2321042)))

(declare-fun res!1520615 () Bool)

(assert (=> b!3752317 (=> (not res!1520615) (not e!2321042))))

(declare-fun dynLambda!17301 (Int T!69112) Bool)

(assert (=> b!3752317 (= res!1520615 (dynLambda!17301 p!1451 (h!45429 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))))))))

(declare-fun b!3752318 () Bool)

(assert (=> b!3752318 (= e!2321042 (forall!8231 (t!303156 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)))) p!1451))))

(assert (= (and d!1094726 (not res!1520614)) b!3752317))

(assert (= (and b!3752317 res!1520615) b!3752318))

(declare-fun b_lambda!110039 () Bool)

(assert (=> (not b_lambda!110039) (not b!3752317)))

(declare-fun t!303164 () Bool)

(declare-fun tb!214673 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303164) tb!214673))

(declare-fun result!262162 () Bool)

(assert (=> tb!214673 (= result!262162 true)))

(assert (=> b!3752317 t!303164))

(declare-fun b_and!278835 () Bool)

(assert (= b_and!278833 (and (=> t!303164 result!262162) b_and!278835)))

(declare-fun m!4243549 () Bool)

(assert (=> b!3752317 m!4243549))

(declare-fun m!4243551 () Bool)

(assert (=> b!3752318 m!4243551))

(assert (=> d!1094708 d!1094726))

(declare-fun b!3752327 () Bool)

(declare-fun e!2321047 () List!40133)

(assert (=> b!3752327 (= e!2321047 (list!14742 (right!31304 t!3709)))))

(declare-fun b!3752329 () Bool)

(declare-fun res!1520620 () Bool)

(declare-fun e!2321048 () Bool)

(assert (=> b!3752329 (=> (not res!1520620) (not e!2321048))))

(declare-fun lt!1299986 () List!40133)

(assert (=> b!3752329 (= res!1520620 (= (size!30104 lt!1299986) (+ (size!30104 (list!14742 (left!30974 t!3709))) (size!30104 (list!14742 (right!31304 t!3709))))))))

(declare-fun b!3752330 () Bool)

(assert (=> b!3752330 (= e!2321048 (or (not (= (list!14742 (right!31304 t!3709)) Nil!40009)) (= lt!1299986 (list!14742 (left!30974 t!3709)))))))

(declare-fun d!1094728 () Bool)

(assert (=> d!1094728 e!2321048))

(declare-fun res!1520621 () Bool)

(assert (=> d!1094728 (=> (not res!1520621) (not e!2321048))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5867 (List!40133) (InoxSet T!69112))

(assert (=> d!1094728 (= res!1520621 (= (content!5867 lt!1299986) ((_ map or) (content!5867 (list!14742 (left!30974 t!3709))) (content!5867 (list!14742 (right!31304 t!3709))))))))

(assert (=> d!1094728 (= lt!1299986 e!2321047)))

(declare-fun c!649494 () Bool)

(assert (=> d!1094728 (= c!649494 ((_ is Nil!40009) (list!14742 (left!30974 t!3709))))))

(assert (=> d!1094728 (= (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))) lt!1299986)))

(declare-fun b!3752328 () Bool)

(assert (=> b!3752328 (= e!2321047 (Cons!40009 (h!45429 (list!14742 (left!30974 t!3709))) (++!9902 (t!303156 (list!14742 (left!30974 t!3709))) (list!14742 (right!31304 t!3709)))))))

(assert (= (and d!1094728 c!649494) b!3752327))

(assert (= (and d!1094728 (not c!649494)) b!3752328))

(assert (= (and d!1094728 res!1520621) b!3752329))

(assert (= (and b!3752329 res!1520620) b!3752330))

(declare-fun m!4243553 () Bool)

(assert (=> b!3752329 m!4243553))

(assert (=> b!3752329 m!4243413))

(declare-fun m!4243555 () Bool)

(assert (=> b!3752329 m!4243555))

(assert (=> b!3752329 m!4243415))

(declare-fun m!4243557 () Bool)

(assert (=> b!3752329 m!4243557))

(declare-fun m!4243559 () Bool)

(assert (=> d!1094728 m!4243559))

(assert (=> d!1094728 m!4243413))

(declare-fun m!4243561 () Bool)

(assert (=> d!1094728 m!4243561))

(assert (=> d!1094728 m!4243415))

(declare-fun m!4243563 () Bool)

(assert (=> d!1094728 m!4243563))

(assert (=> b!3752328 m!4243415))

(declare-fun m!4243565 () Bool)

(assert (=> b!3752328 m!4243565))

(assert (=> d!1094708 d!1094728))

(declare-fun d!1094730 () Bool)

(declare-fun res!1520622 () Bool)

(declare-fun e!2321049 () Bool)

(assert (=> d!1094730 (=> res!1520622 e!2321049)))

(assert (=> d!1094730 (= res!1520622 ((_ is Nil!40009) (list!14742 (left!30974 t!3709))))))

(assert (=> d!1094730 (= (forall!8231 (list!14742 (left!30974 t!3709)) p!1451) e!2321049)))

(declare-fun b!3752331 () Bool)

(declare-fun e!2321050 () Bool)

(assert (=> b!3752331 (= e!2321049 e!2321050)))

(declare-fun res!1520623 () Bool)

(assert (=> b!3752331 (=> (not res!1520623) (not e!2321050))))

(assert (=> b!3752331 (= res!1520623 (dynLambda!17301 p!1451 (h!45429 (list!14742 (left!30974 t!3709)))))))

(declare-fun b!3752332 () Bool)

(assert (=> b!3752332 (= e!2321050 (forall!8231 (t!303156 (list!14742 (left!30974 t!3709))) p!1451))))

(assert (= (and d!1094730 (not res!1520622)) b!3752331))

(assert (= (and b!3752331 res!1520623) b!3752332))

(declare-fun b_lambda!110041 () Bool)

(assert (=> (not b_lambda!110041) (not b!3752331)))

(declare-fun t!303166 () Bool)

(declare-fun tb!214675 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303166) tb!214675))

(declare-fun result!262164 () Bool)

(assert (=> tb!214675 (= result!262164 true)))

(assert (=> b!3752331 t!303166))

(declare-fun b_and!278837 () Bool)

(assert (= b_and!278835 (and (=> t!303166 result!262164) b_and!278837)))

(declare-fun m!4243567 () Bool)

(assert (=> b!3752331 m!4243567))

(declare-fun m!4243569 () Bool)

(assert (=> b!3752332 m!4243569))

(assert (=> d!1094708 d!1094730))

(declare-fun d!1094732 () Bool)

(declare-fun e!2321053 () Bool)

(assert (=> d!1094732 (= (forall!8231 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))) p!1451) e!2321053)))

(declare-fun res!1520626 () Bool)

(assert (=> d!1094732 (=> (not res!1520626) (not e!2321053))))

(assert (=> d!1094732 (= res!1520626 (forall!8231 (list!14742 (left!30974 t!3709)) p!1451))))

(assert (=> d!1094732 true))

(declare-fun _$79!150 () Unit!57738)

(assert (=> d!1094732 (= (choose!22255 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)) p!1451) _$79!150)))

(declare-fun b!3752335 () Bool)

(assert (=> b!3752335 (= e!2321053 (forall!8231 (list!14742 (right!31304 t!3709)) p!1451))))

(assert (= (and d!1094732 res!1520626) b!3752335))

(assert (=> d!1094732 m!4243413))

(assert (=> d!1094732 m!4243415))

(assert (=> d!1094732 m!4243461))

(assert (=> d!1094732 m!4243461))

(assert (=> d!1094732 m!4243463))

(assert (=> d!1094732 m!4243413))

(assert (=> d!1094732 m!4243459))

(assert (=> b!3752335 m!4243415))

(assert (=> b!3752335 m!4243471))

(assert (=> d!1094708 d!1094732))

(declare-fun d!1094734 () Bool)

(declare-fun res!1520631 () Bool)

(declare-fun e!2321056 () Bool)

(assert (=> d!1094734 (=> (not res!1520631) (not e!2321056))))

(assert (=> d!1094734 (= res!1520631 (<= (size!30104 (list!14743 (xs!15437 (left!30974 t!3709)))) 512))))

(assert (=> d!1094734 (= (inv!53568 (left!30974 t!3709)) e!2321056)))

(declare-fun b!3752340 () Bool)

(declare-fun res!1520632 () Bool)

(assert (=> b!3752340 (=> (not res!1520632) (not e!2321056))))

(assert (=> b!3752340 (= res!1520632 (= (csize!24701 (left!30974 t!3709)) (size!30104 (list!14743 (xs!15437 (left!30974 t!3709))))))))

(declare-fun b!3752341 () Bool)

(assert (=> b!3752341 (= e!2321056 (and (> (csize!24701 (left!30974 t!3709)) 0) (<= (csize!24701 (left!30974 t!3709)) 512)))))

(assert (= (and d!1094734 res!1520631) b!3752340))

(assert (= (and b!3752340 res!1520632) b!3752341))

(assert (=> d!1094734 m!4243483))

(assert (=> d!1094734 m!4243483))

(declare-fun m!4243571 () Bool)

(assert (=> d!1094734 m!4243571))

(assert (=> b!3752340 m!4243483))

(assert (=> b!3752340 m!4243483))

(assert (=> b!3752340 m!4243571))

(assert (=> b!3752255 d!1094734))

(declare-fun d!1094736 () Bool)

(assert (=> d!1094736 (= (inv!53566 (xs!15437 (right!31304 t!3709))) (<= (size!30104 (innerList!12295 (xs!15437 (right!31304 t!3709)))) 2147483647))))

(declare-fun bs!575429 () Bool)

(assert (= bs!575429 d!1094736))

(declare-fun m!4243573 () Bool)

(assert (=> bs!575429 m!4243573))

(assert (=> b!3752284 d!1094736))

(declare-fun b!3752345 () Bool)

(declare-fun e!2321059 () Bool)

(assert (=> b!3752345 (= e!2321059 (forall!8229 (right!31304 (right!31304 (left!30974 t!3709))) p!1451))))

(declare-fun b!3752344 () Bool)

(declare-fun e!2321057 () Bool)

(assert (=> b!3752344 (= e!2321057 e!2321059)))

(declare-fun lt!1299988 () Unit!57738)

(assert (=> b!3752344 (= lt!1299988 (lemmaForallConcat!211 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun res!1520633 () Bool)

(assert (=> b!3752344 (= res!1520633 (forall!8229 (left!30974 (right!31304 (left!30974 t!3709))) p!1451))))

(assert (=> b!3752344 (=> (not res!1520633) (not e!2321059))))

(declare-fun b!3752343 () Bool)

(assert (=> b!3752343 (= e!2321057 (forall!8230 (xs!15437 (right!31304 (left!30974 t!3709))) p!1451))))

(declare-fun d!1094738 () Bool)

(declare-fun lt!1299987 () Bool)

(assert (=> d!1094738 (= lt!1299987 (forall!8231 (list!14742 (right!31304 (left!30974 t!3709))) p!1451))))

(declare-fun e!2321058 () Bool)

(assert (=> d!1094738 (= lt!1299987 e!2321058)))

(declare-fun res!1520634 () Bool)

(assert (=> d!1094738 (=> res!1520634 e!2321058)))

(assert (=> d!1094738 (= res!1520634 ((_ is Empty!12235) (right!31304 (left!30974 t!3709))))))

(assert (=> d!1094738 (= (forall!8229 (right!31304 (left!30974 t!3709)) p!1451) lt!1299987)))

(declare-fun b!3752342 () Bool)

(assert (=> b!3752342 (= e!2321058 e!2321057)))

(declare-fun c!649495 () Bool)

(assert (=> b!3752342 (= c!649495 ((_ is Leaf!18983) (right!31304 (left!30974 t!3709))))))

(assert (= (and d!1094738 (not res!1520634)) b!3752342))

(assert (= (and b!3752342 c!649495) b!3752343))

(assert (= (and b!3752342 (not c!649495)) b!3752344))

(assert (= (and b!3752344 res!1520633) b!3752345))

(declare-fun m!4243575 () Bool)

(assert (=> b!3752345 m!4243575))

(declare-fun m!4243577 () Bool)

(assert (=> b!3752344 m!4243577))

(declare-fun m!4243579 () Bool)

(assert (=> b!3752344 m!4243579))

(assert (=> b!3752344 m!4243577))

(assert (=> b!3752344 m!4243579))

(declare-fun m!4243581 () Bool)

(assert (=> b!3752344 m!4243581))

(declare-fun m!4243583 () Bool)

(assert (=> b!3752344 m!4243583))

(declare-fun m!4243585 () Bool)

(assert (=> b!3752343 m!4243585))

(assert (=> d!1094738 m!4243451))

(assert (=> d!1094738 m!4243451))

(declare-fun m!4243587 () Bool)

(assert (=> d!1094738 m!4243587))

(assert (=> b!3752218 d!1094738))

(declare-fun b!3752346 () Bool)

(declare-fun e!2321060 () List!40133)

(assert (=> b!3752346 (= e!2321060 (list!14742 (right!31304 (left!30974 t!3709))))))

(declare-fun b!3752348 () Bool)

(declare-fun res!1520635 () Bool)

(declare-fun e!2321061 () Bool)

(assert (=> b!3752348 (=> (not res!1520635) (not e!2321061))))

(declare-fun lt!1299989 () List!40133)

(assert (=> b!3752348 (= res!1520635 (= (size!30104 lt!1299989) (+ (size!30104 (list!14742 (left!30974 (left!30974 t!3709)))) (size!30104 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752349 () Bool)

(assert (=> b!3752349 (= e!2321061 (or (not (= (list!14742 (right!31304 (left!30974 t!3709))) Nil!40009)) (= lt!1299989 (list!14742 (left!30974 (left!30974 t!3709))))))))

(declare-fun d!1094740 () Bool)

(assert (=> d!1094740 e!2321061))

(declare-fun res!1520636 () Bool)

(assert (=> d!1094740 (=> (not res!1520636) (not e!2321061))))

(assert (=> d!1094740 (= res!1520636 (= (content!5867 lt!1299989) ((_ map or) (content!5867 (list!14742 (left!30974 (left!30974 t!3709)))) (content!5867 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(assert (=> d!1094740 (= lt!1299989 e!2321060)))

(declare-fun c!649496 () Bool)

(assert (=> d!1094740 (= c!649496 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094740 (= (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))) lt!1299989)))

(declare-fun b!3752347 () Bool)

(assert (=> b!3752347 (= e!2321060 (Cons!40009 (h!45429 (list!14742 (left!30974 (left!30974 t!3709)))) (++!9902 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 t!3709))))))))

(assert (= (and d!1094740 c!649496) b!3752346))

(assert (= (and d!1094740 (not c!649496)) b!3752347))

(assert (= (and d!1094740 res!1520636) b!3752348))

(assert (= (and b!3752348 res!1520635) b!3752349))

(declare-fun m!4243589 () Bool)

(assert (=> b!3752348 m!4243589))

(assert (=> b!3752348 m!4243449))

(declare-fun m!4243591 () Bool)

(assert (=> b!3752348 m!4243591))

(assert (=> b!3752348 m!4243451))

(declare-fun m!4243593 () Bool)

(assert (=> b!3752348 m!4243593))

(declare-fun m!4243595 () Bool)

(assert (=> d!1094740 m!4243595))

(assert (=> d!1094740 m!4243449))

(declare-fun m!4243597 () Bool)

(assert (=> d!1094740 m!4243597))

(assert (=> d!1094740 m!4243451))

(declare-fun m!4243599 () Bool)

(assert (=> d!1094740 m!4243599))

(assert (=> b!3752347 m!4243451))

(declare-fun m!4243601 () Bool)

(assert (=> b!3752347 m!4243601))

(assert (=> b!3752247 d!1094740))

(declare-fun b!3752352 () Bool)

(declare-fun e!2321063 () List!40133)

(assert (=> b!3752352 (= e!2321063 (list!14743 (xs!15437 (left!30974 (left!30974 t!3709)))))))

(declare-fun b!3752351 () Bool)

(declare-fun e!2321062 () List!40133)

(assert (=> b!3752351 (= e!2321062 e!2321063)))

(declare-fun c!649498 () Bool)

(assert (=> b!3752351 (= c!649498 ((_ is Leaf!18983) (left!30974 (left!30974 t!3709))))))

(declare-fun d!1094742 () Bool)

(declare-fun c!649497 () Bool)

(assert (=> d!1094742 (= c!649497 ((_ is Empty!12235) (left!30974 (left!30974 t!3709))))))

(assert (=> d!1094742 (= (list!14742 (left!30974 (left!30974 t!3709))) e!2321062)))

(declare-fun b!3752353 () Bool)

(assert (=> b!3752353 (= e!2321063 (++!9902 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709))))))))

(declare-fun b!3752350 () Bool)

(assert (=> b!3752350 (= e!2321062 Nil!40009)))

(assert (= (and d!1094742 c!649497) b!3752350))

(assert (= (and d!1094742 (not c!649497)) b!3752351))

(assert (= (and b!3752351 c!649498) b!3752352))

(assert (= (and b!3752351 (not c!649498)) b!3752353))

(declare-fun m!4243603 () Bool)

(assert (=> b!3752352 m!4243603))

(declare-fun m!4243605 () Bool)

(assert (=> b!3752353 m!4243605))

(declare-fun m!4243607 () Bool)

(assert (=> b!3752353 m!4243607))

(assert (=> b!3752353 m!4243605))

(assert (=> b!3752353 m!4243607))

(declare-fun m!4243609 () Bool)

(assert (=> b!3752353 m!4243609))

(assert (=> b!3752247 d!1094742))

(declare-fun b!3752356 () Bool)

(declare-fun e!2321065 () List!40133)

(assert (=> b!3752356 (= e!2321065 (list!14743 (xs!15437 (right!31304 (left!30974 t!3709)))))))

(declare-fun b!3752355 () Bool)

(declare-fun e!2321064 () List!40133)

(assert (=> b!3752355 (= e!2321064 e!2321065)))

(declare-fun c!649500 () Bool)

(assert (=> b!3752355 (= c!649500 ((_ is Leaf!18983) (right!31304 (left!30974 t!3709))))))

(declare-fun d!1094744 () Bool)

(declare-fun c!649499 () Bool)

(assert (=> d!1094744 (= c!649499 ((_ is Empty!12235) (right!31304 (left!30974 t!3709))))))

(assert (=> d!1094744 (= (list!14742 (right!31304 (left!30974 t!3709))) e!2321064)))

(declare-fun b!3752357 () Bool)

(assert (=> b!3752357 (= e!2321065 (++!9902 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709))))))))

(declare-fun b!3752354 () Bool)

(assert (=> b!3752354 (= e!2321064 Nil!40009)))

(assert (= (and d!1094744 c!649499) b!3752354))

(assert (= (and d!1094744 (not c!649499)) b!3752355))

(assert (= (and b!3752355 c!649500) b!3752356))

(assert (= (and b!3752355 (not c!649500)) b!3752357))

(declare-fun m!4243611 () Bool)

(assert (=> b!3752356 m!4243611))

(assert (=> b!3752357 m!4243577))

(assert (=> b!3752357 m!4243579))

(assert (=> b!3752357 m!4243577))

(assert (=> b!3752357 m!4243579))

(declare-fun m!4243613 () Bool)

(assert (=> b!3752357 m!4243613))

(assert (=> b!3752247 d!1094744))

(declare-fun d!1094746 () Bool)

(declare-fun res!1520643 () Bool)

(declare-fun e!2321068 () Bool)

(assert (=> d!1094746 (=> (not res!1520643) (not e!2321068))))

(declare-fun size!30105 (Conc!12235) Int)

(assert (=> d!1094746 (= res!1520643 (= (csize!24700 (right!31304 t!3709)) (+ (size!30105 (left!30974 (right!31304 t!3709))) (size!30105 (right!31304 (right!31304 t!3709))))))))

(assert (=> d!1094746 (= (inv!53567 (right!31304 t!3709)) e!2321068)))

(declare-fun b!3752364 () Bool)

(declare-fun res!1520644 () Bool)

(assert (=> b!3752364 (=> (not res!1520644) (not e!2321068))))

(assert (=> b!3752364 (= res!1520644 (and (not (= (left!30974 (right!31304 t!3709)) Empty!12235)) (not (= (right!31304 (right!31304 t!3709)) Empty!12235))))))

(declare-fun b!3752365 () Bool)

(declare-fun res!1520645 () Bool)

(assert (=> b!3752365 (=> (not res!1520645) (not e!2321068))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3752365 (= res!1520645 (= (cheight!12446 (right!31304 t!3709)) (+ (max!0 (height!1744 (left!30974 (right!31304 t!3709))) (height!1744 (right!31304 (right!31304 t!3709)))) 1)))))

(declare-fun b!3752366 () Bool)

(assert (=> b!3752366 (= e!2321068 (<= 0 (cheight!12446 (right!31304 t!3709))))))

(assert (= (and d!1094746 res!1520643) b!3752364))

(assert (= (and b!3752364 res!1520644) b!3752365))

(assert (= (and b!3752365 res!1520645) b!3752366))

(declare-fun m!4243615 () Bool)

(assert (=> d!1094746 m!4243615))

(declare-fun m!4243617 () Bool)

(assert (=> d!1094746 m!4243617))

(declare-fun m!4243619 () Bool)

(assert (=> b!3752365 m!4243619))

(declare-fun m!4243621 () Bool)

(assert (=> b!3752365 m!4243621))

(assert (=> b!3752365 m!4243619))

(assert (=> b!3752365 m!4243621))

(declare-fun m!4243623 () Bool)

(assert (=> b!3752365 m!4243623))

(assert (=> b!3752256 d!1094746))

(declare-fun b!3752367 () Bool)

(declare-fun e!2321069 () List!40133)

(assert (=> b!3752367 (= e!2321069 (list!14742 (right!31304 (right!31304 t!3709))))))

(declare-fun b!3752369 () Bool)

(declare-fun res!1520646 () Bool)

(declare-fun e!2321070 () Bool)

(assert (=> b!3752369 (=> (not res!1520646) (not e!2321070))))

(declare-fun lt!1299990 () List!40133)

(assert (=> b!3752369 (= res!1520646 (= (size!30104 lt!1299990) (+ (size!30104 (list!14742 (left!30974 (right!31304 t!3709)))) (size!30104 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(declare-fun b!3752370 () Bool)

(assert (=> b!3752370 (= e!2321070 (or (not (= (list!14742 (right!31304 (right!31304 t!3709))) Nil!40009)) (= lt!1299990 (list!14742 (left!30974 (right!31304 t!3709))))))))

(declare-fun d!1094748 () Bool)

(assert (=> d!1094748 e!2321070))

(declare-fun res!1520647 () Bool)

(assert (=> d!1094748 (=> (not res!1520647) (not e!2321070))))

(assert (=> d!1094748 (= res!1520647 (= (content!5867 lt!1299990) ((_ map or) (content!5867 (list!14742 (left!30974 (right!31304 t!3709)))) (content!5867 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(assert (=> d!1094748 (= lt!1299990 e!2321069)))

(declare-fun c!649501 () Bool)

(assert (=> d!1094748 (= c!649501 ((_ is Nil!40009) (list!14742 (left!30974 (right!31304 t!3709)))))))

(assert (=> d!1094748 (= (++!9902 (list!14742 (left!30974 (right!31304 t!3709))) (list!14742 (right!31304 (right!31304 t!3709)))) lt!1299990)))

(declare-fun b!3752368 () Bool)

(assert (=> b!3752368 (= e!2321069 (Cons!40009 (h!45429 (list!14742 (left!30974 (right!31304 t!3709)))) (++!9902 (t!303156 (list!14742 (left!30974 (right!31304 t!3709)))) (list!14742 (right!31304 (right!31304 t!3709))))))))

(assert (= (and d!1094748 c!649501) b!3752367))

(assert (= (and d!1094748 (not c!649501)) b!3752368))

(assert (= (and d!1094748 res!1520647) b!3752369))

(assert (= (and b!3752369 res!1520646) b!3752370))

(declare-fun m!4243625 () Bool)

(assert (=> b!3752369 m!4243625))

(assert (=> b!3752369 m!4243489))

(declare-fun m!4243627 () Bool)

(assert (=> b!3752369 m!4243627))

(assert (=> b!3752369 m!4243491))

(declare-fun m!4243629 () Bool)

(assert (=> b!3752369 m!4243629))

(declare-fun m!4243631 () Bool)

(assert (=> d!1094748 m!4243631))

(assert (=> d!1094748 m!4243489))

(declare-fun m!4243633 () Bool)

(assert (=> d!1094748 m!4243633))

(assert (=> d!1094748 m!4243491))

(declare-fun m!4243635 () Bool)

(assert (=> d!1094748 m!4243635))

(assert (=> b!3752368 m!4243491))

(declare-fun m!4243637 () Bool)

(assert (=> b!3752368 m!4243637))

(assert (=> b!3752251 d!1094748))

(declare-fun b!3752373 () Bool)

(declare-fun e!2321072 () List!40133)

(assert (=> b!3752373 (= e!2321072 (list!14743 (xs!15437 (left!30974 (right!31304 t!3709)))))))

(declare-fun b!3752372 () Bool)

(declare-fun e!2321071 () List!40133)

(assert (=> b!3752372 (= e!2321071 e!2321072)))

(declare-fun c!649503 () Bool)

(assert (=> b!3752372 (= c!649503 ((_ is Leaf!18983) (left!30974 (right!31304 t!3709))))))

(declare-fun d!1094750 () Bool)

(declare-fun c!649502 () Bool)

(assert (=> d!1094750 (= c!649502 ((_ is Empty!12235) (left!30974 (right!31304 t!3709))))))

(assert (=> d!1094750 (= (list!14742 (left!30974 (right!31304 t!3709))) e!2321071)))

(declare-fun b!3752374 () Bool)

(assert (=> b!3752374 (= e!2321072 (++!9902 (list!14742 (left!30974 (left!30974 (right!31304 t!3709)))) (list!14742 (right!31304 (left!30974 (right!31304 t!3709))))))))

(declare-fun b!3752371 () Bool)

(assert (=> b!3752371 (= e!2321071 Nil!40009)))

(assert (= (and d!1094750 c!649502) b!3752371))

(assert (= (and d!1094750 (not c!649502)) b!3752372))

(assert (= (and b!3752372 c!649503) b!3752373))

(assert (= (and b!3752372 (not c!649503)) b!3752374))

(declare-fun m!4243639 () Bool)

(assert (=> b!3752373 m!4243639))

(declare-fun m!4243641 () Bool)

(assert (=> b!3752374 m!4243641))

(declare-fun m!4243643 () Bool)

(assert (=> b!3752374 m!4243643))

(assert (=> b!3752374 m!4243641))

(assert (=> b!3752374 m!4243643))

(declare-fun m!4243645 () Bool)

(assert (=> b!3752374 m!4243645))

(assert (=> b!3752251 d!1094750))

(declare-fun b!3752377 () Bool)

(declare-fun e!2321074 () List!40133)

(assert (=> b!3752377 (= e!2321074 (list!14743 (xs!15437 (right!31304 (right!31304 t!3709)))))))

(declare-fun b!3752376 () Bool)

(declare-fun e!2321073 () List!40133)

(assert (=> b!3752376 (= e!2321073 e!2321074)))

(declare-fun c!649505 () Bool)

(assert (=> b!3752376 (= c!649505 ((_ is Leaf!18983) (right!31304 (right!31304 t!3709))))))

(declare-fun d!1094752 () Bool)

(declare-fun c!649504 () Bool)

(assert (=> d!1094752 (= c!649504 ((_ is Empty!12235) (right!31304 (right!31304 t!3709))))))

(assert (=> d!1094752 (= (list!14742 (right!31304 (right!31304 t!3709))) e!2321073)))

(declare-fun b!3752378 () Bool)

(assert (=> b!3752378 (= e!2321074 (++!9902 (list!14742 (left!30974 (right!31304 (right!31304 t!3709)))) (list!14742 (right!31304 (right!31304 (right!31304 t!3709))))))))

(declare-fun b!3752375 () Bool)

(assert (=> b!3752375 (= e!2321073 Nil!40009)))

(assert (= (and d!1094752 c!649504) b!3752375))

(assert (= (and d!1094752 (not c!649504)) b!3752376))

(assert (= (and b!3752376 c!649505) b!3752377))

(assert (= (and b!3752376 (not c!649505)) b!3752378))

(declare-fun m!4243647 () Bool)

(assert (=> b!3752377 m!4243647))

(declare-fun m!4243649 () Bool)

(assert (=> b!3752378 m!4243649))

(declare-fun m!4243651 () Bool)

(assert (=> b!3752378 m!4243651))

(assert (=> b!3752378 m!4243649))

(assert (=> b!3752378 m!4243651))

(declare-fun m!4243653 () Bool)

(assert (=> b!3752378 m!4243653))

(assert (=> b!3752251 d!1094752))

(declare-fun d!1094754 () Bool)

(declare-fun res!1520648 () Bool)

(declare-fun e!2321075 () Bool)

(assert (=> d!1094754 (=> (not res!1520648) (not e!2321075))))

(assert (=> d!1094754 (= res!1520648 (<= (size!30104 (list!14743 (xs!15437 (right!31304 t!3709)))) 512))))

(assert (=> d!1094754 (= (inv!53568 (right!31304 t!3709)) e!2321075)))

(declare-fun b!3752379 () Bool)

(declare-fun res!1520649 () Bool)

(assert (=> b!3752379 (=> (not res!1520649) (not e!2321075))))

(assert (=> b!3752379 (= res!1520649 (= (csize!24701 (right!31304 t!3709)) (size!30104 (list!14743 (xs!15437 (right!31304 t!3709))))))))

(declare-fun b!3752380 () Bool)

(assert (=> b!3752380 (= e!2321075 (and (> (csize!24701 (right!31304 t!3709)) 0) (<= (csize!24701 (right!31304 t!3709)) 512)))))

(assert (= (and d!1094754 res!1520648) b!3752379))

(assert (= (and b!3752379 res!1520649) b!3752380))

(assert (=> d!1094754 m!4243487))

(assert (=> d!1094754 m!4243487))

(declare-fun m!4243655 () Bool)

(assert (=> d!1094754 m!4243655))

(assert (=> b!3752379 m!4243487))

(assert (=> b!3752379 m!4243487))

(assert (=> b!3752379 m!4243655))

(assert (=> b!3752258 d!1094754))

(declare-fun d!1094756 () Bool)

(assert (=> d!1094756 (= (list!14743 (xs!15437 (right!31304 t!3709))) (innerList!12295 (xs!15437 (right!31304 t!3709))))))

(assert (=> b!3752250 d!1094756))

(assert (=> b!3752180 d!1094720))

(assert (=> b!3752180 d!1094722))

(declare-fun d!1094758 () Bool)

(declare-fun c!649506 () Bool)

(assert (=> d!1094758 (= c!649506 ((_ is Node!12235) (left!30974 (left!30974 t!3709))))))

(declare-fun e!2321076 () Bool)

(assert (=> d!1094758 (= (inv!53565 (left!30974 (left!30974 t!3709))) e!2321076)))

(declare-fun b!3752381 () Bool)

(assert (=> b!3752381 (= e!2321076 (inv!53567 (left!30974 (left!30974 t!3709))))))

(declare-fun b!3752382 () Bool)

(declare-fun e!2321077 () Bool)

(assert (=> b!3752382 (= e!2321076 e!2321077)))

(declare-fun res!1520650 () Bool)

(assert (=> b!3752382 (= res!1520650 (not ((_ is Leaf!18983) (left!30974 (left!30974 t!3709)))))))

(assert (=> b!3752382 (=> res!1520650 e!2321077)))

(declare-fun b!3752383 () Bool)

(assert (=> b!3752383 (= e!2321077 (inv!53568 (left!30974 (left!30974 t!3709))))))

(assert (= (and d!1094758 c!649506) b!3752381))

(assert (= (and d!1094758 (not c!649506)) b!3752382))

(assert (= (and b!3752382 (not res!1520650)) b!3752383))

(declare-fun m!4243657 () Bool)

(assert (=> b!3752381 m!4243657))

(declare-fun m!4243659 () Bool)

(assert (=> b!3752383 m!4243659))

(assert (=> b!3752280 d!1094758))

(declare-fun d!1094760 () Bool)

(declare-fun c!649507 () Bool)

(assert (=> d!1094760 (= c!649507 ((_ is Node!12235) (right!31304 (left!30974 t!3709))))))

(declare-fun e!2321078 () Bool)

(assert (=> d!1094760 (= (inv!53565 (right!31304 (left!30974 t!3709))) e!2321078)))

(declare-fun b!3752384 () Bool)

(assert (=> b!3752384 (= e!2321078 (inv!53567 (right!31304 (left!30974 t!3709))))))

(declare-fun b!3752385 () Bool)

(declare-fun e!2321079 () Bool)

(assert (=> b!3752385 (= e!2321078 e!2321079)))

(declare-fun res!1520651 () Bool)

(assert (=> b!3752385 (= res!1520651 (not ((_ is Leaf!18983) (right!31304 (left!30974 t!3709)))))))

(assert (=> b!3752385 (=> res!1520651 e!2321079)))

(declare-fun b!3752386 () Bool)

(assert (=> b!3752386 (= e!2321079 (inv!53568 (right!31304 (left!30974 t!3709))))))

(assert (= (and d!1094760 c!649507) b!3752384))

(assert (= (and d!1094760 (not c!649507)) b!3752385))

(assert (= (and b!3752385 (not res!1520651)) b!3752386))

(declare-fun m!4243661 () Bool)

(assert (=> b!3752384 m!4243661))

(declare-fun m!4243663 () Bool)

(assert (=> b!3752386 m!4243663))

(assert (=> b!3752280 d!1094760))

(declare-fun d!1094762 () Bool)

(declare-fun lt!1299993 () Int)

(assert (=> d!1094762 (>= lt!1299993 0)))

(declare-fun e!2321082 () Int)

(assert (=> d!1094762 (= lt!1299993 e!2321082)))

(declare-fun c!649510 () Bool)

(assert (=> d!1094762 (= c!649510 ((_ is Nil!40009) (innerList!12295 (xs!15437 t!3709))))))

(assert (=> d!1094762 (= (size!30104 (innerList!12295 (xs!15437 t!3709))) lt!1299993)))

(declare-fun b!3752391 () Bool)

(assert (=> b!3752391 (= e!2321082 0)))

(declare-fun b!3752392 () Bool)

(assert (=> b!3752392 (= e!2321082 (+ 1 (size!30104 (t!303156 (innerList!12295 (xs!15437 t!3709))))))))

(assert (= (and d!1094762 c!649510) b!3752391))

(assert (= (and d!1094762 (not c!649510)) b!3752392))

(declare-fun m!4243665 () Bool)

(assert (=> b!3752392 m!4243665))

(assert (=> d!1094716 d!1094762))

(declare-fun d!1094764 () Bool)

(declare-fun res!1520652 () Bool)

(declare-fun e!2321083 () Bool)

(assert (=> d!1094764 (=> (not res!1520652) (not e!2321083))))

(assert (=> d!1094764 (= res!1520652 (= (csize!24700 t!3709) (+ (size!30105 (left!30974 t!3709)) (size!30105 (right!31304 t!3709)))))))

(assert (=> d!1094764 (= (inv!53567 t!3709) e!2321083)))

(declare-fun b!3752393 () Bool)

(declare-fun res!1520653 () Bool)

(assert (=> b!3752393 (=> (not res!1520653) (not e!2321083))))

(assert (=> b!3752393 (= res!1520653 (and (not (= (left!30974 t!3709) Empty!12235)) (not (= (right!31304 t!3709) Empty!12235))))))

(declare-fun b!3752394 () Bool)

(declare-fun res!1520654 () Bool)

(assert (=> b!3752394 (=> (not res!1520654) (not e!2321083))))

(assert (=> b!3752394 (= res!1520654 (= (cheight!12446 t!3709) (+ (max!0 (height!1744 (left!30974 t!3709)) (height!1744 (right!31304 t!3709))) 1)))))

(declare-fun b!3752395 () Bool)

(assert (=> b!3752395 (= e!2321083 (<= 0 (cheight!12446 t!3709)))))

(assert (= (and d!1094764 res!1520652) b!3752393))

(assert (= (and b!3752393 res!1520653) b!3752394))

(assert (= (and b!3752394 res!1520654) b!3752395))

(declare-fun m!4243667 () Bool)

(assert (=> d!1094764 m!4243667))

(declare-fun m!4243669 () Bool)

(assert (=> d!1094764 m!4243669))

(declare-fun m!4243671 () Bool)

(assert (=> b!3752394 m!4243671))

(assert (=> b!3752394 m!4243421))

(assert (=> b!3752394 m!4243671))

(assert (=> b!3752394 m!4243421))

(declare-fun m!4243673 () Bool)

(assert (=> b!3752394 m!4243673))

(assert (=> b!3752198 d!1094764))

(declare-fun d!1094766 () Bool)

(assert (=> d!1094766 (= (inv!53566 (xs!15437 (left!30974 t!3709))) (<= (size!30104 (innerList!12295 (xs!15437 (left!30974 t!3709)))) 2147483647))))

(declare-fun bs!575430 () Bool)

(assert (= bs!575430 d!1094766))

(declare-fun m!4243675 () Bool)

(assert (=> bs!575430 m!4243675))

(assert (=> b!3752281 d!1094766))

(assert (=> d!1094696 d!1094730))

(assert (=> d!1094696 d!1094710))

(declare-fun d!1094768 () Bool)

(declare-fun res!1520655 () Bool)

(declare-fun e!2321084 () Bool)

(assert (=> d!1094768 (=> (not res!1520655) (not e!2321084))))

(assert (=> d!1094768 (= res!1520655 (<= (size!30104 (list!14743 (xs!15437 t!3709))) 512))))

(assert (=> d!1094768 (= (inv!53568 t!3709) e!2321084)))

(declare-fun b!3752396 () Bool)

(declare-fun res!1520656 () Bool)

(assert (=> b!3752396 (=> (not res!1520656) (not e!2321084))))

(assert (=> b!3752396 (= res!1520656 (= (csize!24701 t!3709) (size!30104 (list!14743 (xs!15437 t!3709)))))))

(declare-fun b!3752397 () Bool)

(assert (=> b!3752397 (= e!2321084 (and (> (csize!24701 t!3709) 0) (<= (csize!24701 t!3709) 512)))))

(assert (= (and d!1094768 res!1520655) b!3752396))

(assert (= (and b!3752396 res!1520656) b!3752397))

(declare-fun m!4243677 () Bool)

(assert (=> d!1094768 m!4243677))

(assert (=> d!1094768 m!4243677))

(declare-fun m!4243679 () Bool)

(assert (=> d!1094768 m!4243679))

(assert (=> b!3752396 m!4243677))

(assert (=> b!3752396 m!4243677))

(assert (=> b!3752396 m!4243679))

(assert (=> b!3752200 d!1094768))

(declare-fun d!1094770 () Bool)

(declare-fun res!1520657 () Bool)

(declare-fun e!2321085 () Bool)

(assert (=> d!1094770 (=> res!1520657 e!2321085)))

(assert (=> d!1094770 (= res!1520657 ((_ is Nil!40009) (list!14742 (right!31304 t!3709))))))

(assert (=> d!1094770 (= (forall!8231 (list!14742 (right!31304 t!3709)) p!1451) e!2321085)))

(declare-fun b!3752398 () Bool)

(declare-fun e!2321086 () Bool)

(assert (=> b!3752398 (= e!2321085 e!2321086)))

(declare-fun res!1520658 () Bool)

(assert (=> b!3752398 (=> (not res!1520658) (not e!2321086))))

(assert (=> b!3752398 (= res!1520658 (dynLambda!17301 p!1451 (h!45429 (list!14742 (right!31304 t!3709)))))))

(declare-fun b!3752399 () Bool)

(assert (=> b!3752399 (= e!2321086 (forall!8231 (t!303156 (list!14742 (right!31304 t!3709))) p!1451))))

(assert (= (and d!1094770 (not res!1520657)) b!3752398))

(assert (= (and b!3752398 res!1520658) b!3752399))

(declare-fun b_lambda!110043 () Bool)

(assert (=> (not b_lambda!110043) (not b!3752398)))

(declare-fun t!303168 () Bool)

(declare-fun tb!214677 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303168) tb!214677))

(declare-fun result!262166 () Bool)

(assert (=> tb!214677 (= result!262166 true)))

(assert (=> b!3752398 t!303168))

(declare-fun b_and!278839 () Bool)

(assert (= b_and!278837 (and (=> t!303168 result!262166) b_and!278839)))

(declare-fun m!4243681 () Bool)

(assert (=> b!3752398 m!4243681))

(declare-fun m!4243683 () Bool)

(assert (=> b!3752399 m!4243683))

(assert (=> b!3752233 d!1094770))

(declare-fun d!1094772 () Bool)

(declare-fun c!649511 () Bool)

(assert (=> d!1094772 (= c!649511 ((_ is Node!12235) (left!30974 (right!31304 t!3709))))))

(declare-fun e!2321087 () Bool)

(assert (=> d!1094772 (= (inv!53565 (left!30974 (right!31304 t!3709))) e!2321087)))

(declare-fun b!3752400 () Bool)

(assert (=> b!3752400 (= e!2321087 (inv!53567 (left!30974 (right!31304 t!3709))))))

(declare-fun b!3752401 () Bool)

(declare-fun e!2321088 () Bool)

(assert (=> b!3752401 (= e!2321087 e!2321088)))

(declare-fun res!1520659 () Bool)

(assert (=> b!3752401 (= res!1520659 (not ((_ is Leaf!18983) (left!30974 (right!31304 t!3709)))))))

(assert (=> b!3752401 (=> res!1520659 e!2321088)))

(declare-fun b!3752402 () Bool)

(assert (=> b!3752402 (= e!2321088 (inv!53568 (left!30974 (right!31304 t!3709))))))

(assert (= (and d!1094772 c!649511) b!3752400))

(assert (= (and d!1094772 (not c!649511)) b!3752401))

(assert (= (and b!3752401 (not res!1520659)) b!3752402))

(declare-fun m!4243685 () Bool)

(assert (=> b!3752400 m!4243685))

(declare-fun m!4243687 () Bool)

(assert (=> b!3752402 m!4243687))

(assert (=> b!3752283 d!1094772))

(declare-fun d!1094774 () Bool)

(declare-fun c!649512 () Bool)

(assert (=> d!1094774 (= c!649512 ((_ is Node!12235) (right!31304 (right!31304 t!3709))))))

(declare-fun e!2321089 () Bool)

(assert (=> d!1094774 (= (inv!53565 (right!31304 (right!31304 t!3709))) e!2321089)))

(declare-fun b!3752403 () Bool)

(assert (=> b!3752403 (= e!2321089 (inv!53567 (right!31304 (right!31304 t!3709))))))

(declare-fun b!3752404 () Bool)

(declare-fun e!2321090 () Bool)

(assert (=> b!3752404 (= e!2321089 e!2321090)))

(declare-fun res!1520660 () Bool)

(assert (=> b!3752404 (= res!1520660 (not ((_ is Leaf!18983) (right!31304 (right!31304 t!3709)))))))

(assert (=> b!3752404 (=> res!1520660 e!2321090)))

(declare-fun b!3752405 () Bool)

(assert (=> b!3752405 (= e!2321090 (inv!53568 (right!31304 (right!31304 t!3709))))))

(assert (= (and d!1094774 c!649512) b!3752403))

(assert (= (and d!1094774 (not c!649512)) b!3752404))

(assert (= (and b!3752404 (not res!1520660)) b!3752405))

(declare-fun m!4243689 () Bool)

(assert (=> b!3752403 m!4243689))

(declare-fun m!4243691 () Bool)

(assert (=> b!3752405 m!4243691))

(assert (=> b!3752283 d!1094774))

(declare-fun d!1094776 () Bool)

(declare-fun e!2321091 () Bool)

(assert (=> d!1094776 (= (forall!8231 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))) p!1451) e!2321091)))

(declare-fun res!1520661 () Bool)

(assert (=> d!1094776 (=> (not res!1520661) (not e!2321091))))

(assert (=> d!1094776 (= res!1520661 (forall!8231 (list!14742 (left!30974 (left!30974 t!3709))) p!1451))))

(declare-fun lt!1299994 () Unit!57738)

(assert (=> d!1094776 (= lt!1299994 (choose!22255 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))) p!1451))))

(assert (=> d!1094776 (= (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))) p!1451) lt!1299994)))

(declare-fun b!3752406 () Bool)

(assert (=> b!3752406 (= e!2321091 (forall!8231 (list!14742 (right!31304 (left!30974 t!3709))) p!1451))))

(assert (= (and d!1094776 res!1520661) b!3752406))

(assert (=> d!1094776 m!4243449))

(assert (=> d!1094776 m!4243451))

(assert (=> d!1094776 m!4243485))

(assert (=> d!1094776 m!4243485))

(declare-fun m!4243693 () Bool)

(assert (=> d!1094776 m!4243693))

(assert (=> d!1094776 m!4243449))

(declare-fun m!4243695 () Bool)

(assert (=> d!1094776 m!4243695))

(assert (=> d!1094776 m!4243449))

(assert (=> d!1094776 m!4243451))

(declare-fun m!4243697 () Bool)

(assert (=> d!1094776 m!4243697))

(assert (=> b!3752406 m!4243451))

(assert (=> b!3752406 m!4243587))

(assert (=> b!3752217 d!1094776))

(assert (=> b!3752217 d!1094742))

(assert (=> b!3752217 d!1094744))

(declare-fun b!3752410 () Bool)

(declare-fun e!2321094 () Bool)

(assert (=> b!3752410 (= e!2321094 (forall!8229 (right!31304 (left!30974 (left!30974 t!3709))) p!1451))))

(declare-fun b!3752409 () Bool)

(declare-fun e!2321092 () Bool)

(assert (=> b!3752409 (= e!2321092 e!2321094)))

(declare-fun lt!1299996 () Unit!57738)

(assert (=> b!3752409 (= lt!1299996 (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun res!1520662 () Bool)

(assert (=> b!3752409 (= res!1520662 (forall!8229 (left!30974 (left!30974 (left!30974 t!3709))) p!1451))))

(assert (=> b!3752409 (=> (not res!1520662) (not e!2321094))))

(declare-fun b!3752408 () Bool)

(assert (=> b!3752408 (= e!2321092 (forall!8230 (xs!15437 (left!30974 (left!30974 t!3709))) p!1451))))

(declare-fun d!1094778 () Bool)

(declare-fun lt!1299995 () Bool)

(assert (=> d!1094778 (= lt!1299995 (forall!8231 (list!14742 (left!30974 (left!30974 t!3709))) p!1451))))

(declare-fun e!2321093 () Bool)

(assert (=> d!1094778 (= lt!1299995 e!2321093)))

(declare-fun res!1520663 () Bool)

(assert (=> d!1094778 (=> res!1520663 e!2321093)))

(assert (=> d!1094778 (= res!1520663 ((_ is Empty!12235) (left!30974 (left!30974 t!3709))))))

(assert (=> d!1094778 (= (forall!8229 (left!30974 (left!30974 t!3709)) p!1451) lt!1299995)))

(declare-fun b!3752407 () Bool)

(assert (=> b!3752407 (= e!2321093 e!2321092)))

(declare-fun c!649513 () Bool)

(assert (=> b!3752407 (= c!649513 ((_ is Leaf!18983) (left!30974 (left!30974 t!3709))))))

(assert (= (and d!1094778 (not res!1520663)) b!3752407))

(assert (= (and b!3752407 c!649513) b!3752408))

(assert (= (and b!3752407 (not c!649513)) b!3752409))

(assert (= (and b!3752409 res!1520662) b!3752410))

(declare-fun m!4243699 () Bool)

(assert (=> b!3752410 m!4243699))

(assert (=> b!3752409 m!4243605))

(assert (=> b!3752409 m!4243607))

(assert (=> b!3752409 m!4243605))

(assert (=> b!3752409 m!4243607))

(declare-fun m!4243701 () Bool)

(assert (=> b!3752409 m!4243701))

(declare-fun m!4243703 () Bool)

(assert (=> b!3752409 m!4243703))

(declare-fun m!4243705 () Bool)

(assert (=> b!3752408 m!4243705))

(assert (=> d!1094778 m!4243449))

(assert (=> d!1094778 m!4243449))

(assert (=> d!1094778 m!4243695))

(assert (=> b!3752217 d!1094778))

(declare-fun d!1094780 () Bool)

(assert (=> d!1094780 (= (list!14743 (xs!15437 (left!30974 t!3709))) (innerList!12295 (xs!15437 (left!30974 t!3709))))))

(assert (=> b!3752246 d!1094780))

(declare-fun d!1094782 () Bool)

(declare-fun res!1520664 () Bool)

(declare-fun e!2321095 () Bool)

(assert (=> d!1094782 (=> (not res!1520664) (not e!2321095))))

(assert (=> d!1094782 (= res!1520664 (= (csize!24700 (left!30974 t!3709)) (+ (size!30105 (left!30974 (left!30974 t!3709))) (size!30105 (right!31304 (left!30974 t!3709))))))))

(assert (=> d!1094782 (= (inv!53567 (left!30974 t!3709)) e!2321095)))

(declare-fun b!3752411 () Bool)

(declare-fun res!1520665 () Bool)

(assert (=> b!3752411 (=> (not res!1520665) (not e!2321095))))

(assert (=> b!3752411 (= res!1520665 (and (not (= (left!30974 (left!30974 t!3709)) Empty!12235)) (not (= (right!31304 (left!30974 t!3709)) Empty!12235))))))

(declare-fun b!3752412 () Bool)

(declare-fun res!1520666 () Bool)

(assert (=> b!3752412 (=> (not res!1520666) (not e!2321095))))

(assert (=> b!3752412 (= res!1520666 (= (cheight!12446 (left!30974 t!3709)) (+ (max!0 (height!1744 (left!30974 (left!30974 t!3709))) (height!1744 (right!31304 (left!30974 t!3709)))) 1)))))

(declare-fun b!3752413 () Bool)

(assert (=> b!3752413 (= e!2321095 (<= 0 (cheight!12446 (left!30974 t!3709))))))

(assert (= (and d!1094782 res!1520664) b!3752411))

(assert (= (and b!3752411 res!1520665) b!3752412))

(assert (= (and b!3752412 res!1520666) b!3752413))

(declare-fun m!4243707 () Bool)

(assert (=> d!1094782 m!4243707))

(declare-fun m!4243709 () Bool)

(assert (=> d!1094782 m!4243709))

(declare-fun m!4243711 () Bool)

(assert (=> b!3752412 m!4243711))

(declare-fun m!4243713 () Bool)

(assert (=> b!3752412 m!4243713))

(assert (=> b!3752412 m!4243711))

(assert (=> b!3752412 m!4243713))

(declare-fun m!4243715 () Bool)

(assert (=> b!3752412 m!4243715))

(assert (=> b!3752253 d!1094782))

(declare-fun d!1094784 () Bool)

(declare-fun lt!1299999 () Bool)

(assert (=> d!1094784 (= lt!1299999 (forall!8231 (list!14743 (xs!15437 (left!30974 t!3709))) p!1451))))

(declare-fun choose!22257 (IArray!24475 Int) Bool)

(assert (=> d!1094784 (= lt!1299999 (choose!22257 (xs!15437 (left!30974 t!3709)) p!1451))))

(assert (=> d!1094784 (= (forall!8230 (xs!15437 (left!30974 t!3709)) p!1451) lt!1299999)))

(declare-fun bs!575431 () Bool)

(assert (= bs!575431 d!1094784))

(assert (=> bs!575431 m!4243483))

(assert (=> bs!575431 m!4243483))

(declare-fun m!4243717 () Bool)

(assert (=> bs!575431 m!4243717))

(declare-fun m!4243719 () Bool)

(assert (=> bs!575431 m!4243719))

(assert (=> b!3752216 d!1094784))

(declare-fun e!2321096 () Bool)

(declare-fun b!3752414 () Bool)

(declare-fun tp!1145791 () Bool)

(declare-fun tp!1145792 () Bool)

(assert (=> b!3752414 (= e!2321096 (and (inv!53565 (left!30974 (left!30974 (left!30974 t!3709)))) tp!1145792 (inv!53565 (right!31304 (left!30974 (left!30974 t!3709)))) tp!1145791))))

(declare-fun b!3752416 () Bool)

(declare-fun e!2321097 () Bool)

(declare-fun tp!1145793 () Bool)

(assert (=> b!3752416 (= e!2321097 tp!1145793)))

(declare-fun b!3752415 () Bool)

(assert (=> b!3752415 (= e!2321096 (and (inv!53566 (xs!15437 (left!30974 (left!30974 t!3709)))) e!2321097))))

(assert (=> b!3752280 (= tp!1145771 (and (inv!53565 (left!30974 (left!30974 t!3709))) e!2321096))))

(assert (= (and b!3752280 ((_ is Node!12235) (left!30974 (left!30974 t!3709)))) b!3752414))

(assert (= b!3752415 b!3752416))

(assert (= (and b!3752280 ((_ is Leaf!18983) (left!30974 (left!30974 t!3709)))) b!3752415))

(declare-fun m!4243721 () Bool)

(assert (=> b!3752414 m!4243721))

(declare-fun m!4243723 () Bool)

(assert (=> b!3752414 m!4243723))

(declare-fun m!4243725 () Bool)

(assert (=> b!3752415 m!4243725))

(assert (=> b!3752280 m!4243513))

(declare-fun e!2321098 () Bool)

(declare-fun tp!1145794 () Bool)

(declare-fun b!3752417 () Bool)

(declare-fun tp!1145795 () Bool)

(assert (=> b!3752417 (= e!2321098 (and (inv!53565 (left!30974 (right!31304 (left!30974 t!3709)))) tp!1145795 (inv!53565 (right!31304 (right!31304 (left!30974 t!3709)))) tp!1145794))))

(declare-fun b!3752419 () Bool)

(declare-fun e!2321099 () Bool)

(declare-fun tp!1145796 () Bool)

(assert (=> b!3752419 (= e!2321099 tp!1145796)))

(declare-fun b!3752418 () Bool)

(assert (=> b!3752418 (= e!2321098 (and (inv!53566 (xs!15437 (right!31304 (left!30974 t!3709)))) e!2321099))))

(assert (=> b!3752280 (= tp!1145770 (and (inv!53565 (right!31304 (left!30974 t!3709))) e!2321098))))

(assert (= (and b!3752280 ((_ is Node!12235) (right!31304 (left!30974 t!3709)))) b!3752417))

(assert (= b!3752418 b!3752419))

(assert (= (and b!3752280 ((_ is Leaf!18983) (right!31304 (left!30974 t!3709)))) b!3752418))

(declare-fun m!4243727 () Bool)

(assert (=> b!3752417 m!4243727))

(declare-fun m!4243729 () Bool)

(assert (=> b!3752417 m!4243729))

(declare-fun m!4243731 () Bool)

(assert (=> b!3752418 m!4243731))

(assert (=> b!3752280 m!4243515))

(declare-fun b!3752420 () Bool)

(declare-fun e!2321100 () Bool)

(declare-fun tp!1145797 () Bool)

(assert (=> b!3752420 (= e!2321100 (and tp_is_empty!19051 tp!1145797))))

(assert (=> b!3752285 (= tp!1145775 e!2321100)))

(assert (= (and b!3752285 ((_ is Cons!40009) (innerList!12295 (xs!15437 (right!31304 t!3709))))) b!3752420))

(declare-fun b!3752421 () Bool)

(declare-fun e!2321101 () Bool)

(declare-fun tp!1145798 () Bool)

(assert (=> b!3752421 (= e!2321101 (and tp_is_empty!19051 tp!1145798))))

(assert (=> b!3752263 (= tp!1145763 e!2321101)))

(assert (= (and b!3752263 ((_ is Cons!40009) (t!303156 (innerList!12295 (xs!15437 t!3709))))) b!3752421))

(declare-fun tp!1145800 () Bool)

(declare-fun e!2321102 () Bool)

(declare-fun b!3752422 () Bool)

(declare-fun tp!1145799 () Bool)

(assert (=> b!3752422 (= e!2321102 (and (inv!53565 (left!30974 (left!30974 (right!31304 t!3709)))) tp!1145800 (inv!53565 (right!31304 (left!30974 (right!31304 t!3709)))) tp!1145799))))

(declare-fun b!3752424 () Bool)

(declare-fun e!2321103 () Bool)

(declare-fun tp!1145801 () Bool)

(assert (=> b!3752424 (= e!2321103 tp!1145801)))

(declare-fun b!3752423 () Bool)

(assert (=> b!3752423 (= e!2321102 (and (inv!53566 (xs!15437 (left!30974 (right!31304 t!3709)))) e!2321103))))

(assert (=> b!3752283 (= tp!1145774 (and (inv!53565 (left!30974 (right!31304 t!3709))) e!2321102))))

(assert (= (and b!3752283 ((_ is Node!12235) (left!30974 (right!31304 t!3709)))) b!3752422))

(assert (= b!3752423 b!3752424))

(assert (= (and b!3752283 ((_ is Leaf!18983) (left!30974 (right!31304 t!3709)))) b!3752423))

(declare-fun m!4243733 () Bool)

(assert (=> b!3752422 m!4243733))

(declare-fun m!4243735 () Bool)

(assert (=> b!3752422 m!4243735))

(declare-fun m!4243737 () Bool)

(assert (=> b!3752423 m!4243737))

(assert (=> b!3752283 m!4243519))

(declare-fun e!2321104 () Bool)

(declare-fun tp!1145803 () Bool)

(declare-fun b!3752425 () Bool)

(declare-fun tp!1145802 () Bool)

(assert (=> b!3752425 (= e!2321104 (and (inv!53565 (left!30974 (right!31304 (right!31304 t!3709)))) tp!1145803 (inv!53565 (right!31304 (right!31304 (right!31304 t!3709)))) tp!1145802))))

(declare-fun b!3752427 () Bool)

(declare-fun e!2321105 () Bool)

(declare-fun tp!1145804 () Bool)

(assert (=> b!3752427 (= e!2321105 tp!1145804)))

(declare-fun b!3752426 () Bool)

(assert (=> b!3752426 (= e!2321104 (and (inv!53566 (xs!15437 (right!31304 (right!31304 t!3709)))) e!2321105))))

(assert (=> b!3752283 (= tp!1145773 (and (inv!53565 (right!31304 (right!31304 t!3709))) e!2321104))))

(assert (= (and b!3752283 ((_ is Node!12235) (right!31304 (right!31304 t!3709)))) b!3752425))

(assert (= b!3752426 b!3752427))

(assert (= (and b!3752283 ((_ is Leaf!18983) (right!31304 (right!31304 t!3709)))) b!3752426))

(declare-fun m!4243739 () Bool)

(assert (=> b!3752425 m!4243739))

(declare-fun m!4243741 () Bool)

(assert (=> b!3752425 m!4243741))

(declare-fun m!4243743 () Bool)

(assert (=> b!3752426 m!4243743))

(assert (=> b!3752283 m!4243521))

(declare-fun b!3752428 () Bool)

(declare-fun e!2321106 () Bool)

(declare-fun tp!1145805 () Bool)

(assert (=> b!3752428 (= e!2321106 (and tp_is_empty!19051 tp!1145805))))

(assert (=> b!3752282 (= tp!1145772 e!2321106)))

(assert (= (and b!3752282 ((_ is Cons!40009) (innerList!12295 (xs!15437 (left!30974 t!3709))))) b!3752428))

(declare-fun b_lambda!110045 () Bool)

(assert (= b_lambda!110041 (or (and start!352344 b_free!100419) b_lambda!110045)))

(declare-fun b_lambda!110047 () Bool)

(assert (= b_lambda!110043 (or (and start!352344 b_free!100419) b_lambda!110047)))

(declare-fun b_lambda!110049 () Bool)

(assert (= b_lambda!110039 (or (and start!352344 b_free!100419) b_lambda!110049)))

(check-sat (not b!3752386) (not b!3752427) (not d!1094738) (not b!3752423) (not b!3752328) (not b!3752425) (not d!1094776) (not b!3752399) (not b!3752419) (not b!3752400) (not d!1094748) (not b!3752369) (not b!3752379) (not b!3752345) (not b!3752368) (not b!3752424) (not b!3752412) (not d!1094732) (not b!3752348) (not d!1094782) (not b!3752365) (not b!3752402) (not b!3752340) (not d!1094768) (not b!3752374) (not b!3752318) (not b!3752357) (not b!3752381) (not d!1094764) (not b!3752280) (not b!3752415) (not b!3752421) (not b!3752409) (not b!3752410) (not b!3752418) (not b_lambda!110045) tp_is_empty!19051 (not b!3752408) (not b!3752377) (not b!3752405) (not b!3752403) (not b!3752383) (not b!3752332) (not b!3752417) (not b!3752416) (not d!1094784) (not b!3752373) (not d!1094734) (not d!1094736) (not b!3752283) (not b_next!101123) (not b!3752422) (not b!3752352) (not b!3752329) (not d!1094728) (not b!3752426) (not d!1094766) (not d!1094740) (not b!3752392) (not b!3752384) (not b!3752394) (not b!3752378) (not b!3752420) (not b!3752335) (not b_lambda!110049) (not b!3752406) b_and!278839 (not b!3752344) (not d!1094754) (not b!3752347) (not b_lambda!110047) (not d!1094778) (not d!1094746) (not b!3752396) (not b!3752353) (not b!3752343) (not b!3752356) (not b!3752428) (not b!3752414))
(check-sat b_and!278839 (not b_next!101123))
(get-model)

(declare-fun d!1094846 () Bool)

(declare-fun res!1520724 () Bool)

(declare-fun e!2321177 () Bool)

(assert (=> d!1094846 (=> (not res!1520724) (not e!2321177))))

(assert (=> d!1094846 (= res!1520724 (<= (size!30104 (list!14743 (xs!15437 (left!30974 (left!30974 t!3709))))) 512))))

(assert (=> d!1094846 (= (inv!53568 (left!30974 (left!30974 t!3709))) e!2321177)))

(declare-fun b!3752545 () Bool)

(declare-fun res!1520725 () Bool)

(assert (=> b!3752545 (=> (not res!1520725) (not e!2321177))))

(assert (=> b!3752545 (= res!1520725 (= (csize!24701 (left!30974 (left!30974 t!3709))) (size!30104 (list!14743 (xs!15437 (left!30974 (left!30974 t!3709)))))))))

(declare-fun b!3752546 () Bool)

(assert (=> b!3752546 (= e!2321177 (and (> (csize!24701 (left!30974 (left!30974 t!3709))) 0) (<= (csize!24701 (left!30974 (left!30974 t!3709))) 512)))))

(assert (= (and d!1094846 res!1520724) b!3752545))

(assert (= (and b!3752545 res!1520725) b!3752546))

(assert (=> d!1094846 m!4243603))

(assert (=> d!1094846 m!4243603))

(declare-fun m!4243941 () Bool)

(assert (=> d!1094846 m!4243941))

(assert (=> b!3752545 m!4243603))

(assert (=> b!3752545 m!4243603))

(assert (=> b!3752545 m!4243941))

(assert (=> b!3752383 d!1094846))

(declare-fun d!1094848 () Bool)

(declare-fun lt!1300016 () Int)

(assert (=> d!1094848 (>= lt!1300016 0)))

(declare-fun e!2321178 () Int)

(assert (=> d!1094848 (= lt!1300016 e!2321178)))

(declare-fun c!649536 () Bool)

(assert (=> d!1094848 (= c!649536 ((_ is Nil!40009) (list!14743 (xs!15437 (right!31304 t!3709)))))))

(assert (=> d!1094848 (= (size!30104 (list!14743 (xs!15437 (right!31304 t!3709)))) lt!1300016)))

(declare-fun b!3752547 () Bool)

(assert (=> b!3752547 (= e!2321178 0)))

(declare-fun b!3752548 () Bool)

(assert (=> b!3752548 (= e!2321178 (+ 1 (size!30104 (t!303156 (list!14743 (xs!15437 (right!31304 t!3709)))))))))

(assert (= (and d!1094848 c!649536) b!3752547))

(assert (= (and d!1094848 (not c!649536)) b!3752548))

(declare-fun m!4243943 () Bool)

(assert (=> b!3752548 m!4243943))

(assert (=> d!1094754 d!1094848))

(assert (=> d!1094754 d!1094756))

(declare-fun d!1094850 () Bool)

(declare-fun lt!1300017 () Int)

(assert (=> d!1094850 (>= lt!1300017 0)))

(declare-fun e!2321179 () Int)

(assert (=> d!1094850 (= lt!1300017 e!2321179)))

(declare-fun c!649537 () Bool)

(assert (=> d!1094850 (= c!649537 ((_ is Nil!40009) (innerList!12295 (xs!15437 (right!31304 t!3709)))))))

(assert (=> d!1094850 (= (size!30104 (innerList!12295 (xs!15437 (right!31304 t!3709)))) lt!1300017)))

(declare-fun b!3752549 () Bool)

(assert (=> b!3752549 (= e!2321179 0)))

(declare-fun b!3752550 () Bool)

(assert (=> b!3752550 (= e!2321179 (+ 1 (size!30104 (t!303156 (innerList!12295 (xs!15437 (right!31304 t!3709)))))))))

(assert (= (and d!1094850 c!649537) b!3752549))

(assert (= (and d!1094850 (not c!649537)) b!3752550))

(declare-fun m!4243945 () Bool)

(assert (=> b!3752550 m!4243945))

(assert (=> d!1094736 d!1094850))

(declare-fun d!1094852 () Bool)

(declare-fun c!649538 () Bool)

(assert (=> d!1094852 (= c!649538 ((_ is Node!12235) (left!30974 (left!30974 (left!30974 t!3709)))))))

(declare-fun e!2321180 () Bool)

(assert (=> d!1094852 (= (inv!53565 (left!30974 (left!30974 (left!30974 t!3709)))) e!2321180)))

(declare-fun b!3752551 () Bool)

(assert (=> b!3752551 (= e!2321180 (inv!53567 (left!30974 (left!30974 (left!30974 t!3709)))))))

(declare-fun b!3752552 () Bool)

(declare-fun e!2321181 () Bool)

(assert (=> b!3752552 (= e!2321180 e!2321181)))

(declare-fun res!1520726 () Bool)

(assert (=> b!3752552 (= res!1520726 (not ((_ is Leaf!18983) (left!30974 (left!30974 (left!30974 t!3709))))))))

(assert (=> b!3752552 (=> res!1520726 e!2321181)))

(declare-fun b!3752553 () Bool)

(assert (=> b!3752553 (= e!2321181 (inv!53568 (left!30974 (left!30974 (left!30974 t!3709)))))))

(assert (= (and d!1094852 c!649538) b!3752551))

(assert (= (and d!1094852 (not c!649538)) b!3752552))

(assert (= (and b!3752552 (not res!1520726)) b!3752553))

(declare-fun m!4243947 () Bool)

(assert (=> b!3752551 m!4243947))

(declare-fun m!4243949 () Bool)

(assert (=> b!3752553 m!4243949))

(assert (=> b!3752414 d!1094852))

(declare-fun d!1094854 () Bool)

(declare-fun c!649539 () Bool)

(assert (=> d!1094854 (= c!649539 ((_ is Node!12235) (right!31304 (left!30974 (left!30974 t!3709)))))))

(declare-fun e!2321182 () Bool)

(assert (=> d!1094854 (= (inv!53565 (right!31304 (left!30974 (left!30974 t!3709)))) e!2321182)))

(declare-fun b!3752554 () Bool)

(assert (=> b!3752554 (= e!2321182 (inv!53567 (right!31304 (left!30974 (left!30974 t!3709)))))))

(declare-fun b!3752555 () Bool)

(declare-fun e!2321183 () Bool)

(assert (=> b!3752555 (= e!2321182 e!2321183)))

(declare-fun res!1520727 () Bool)

(assert (=> b!3752555 (= res!1520727 (not ((_ is Leaf!18983) (right!31304 (left!30974 (left!30974 t!3709))))))))

(assert (=> b!3752555 (=> res!1520727 e!2321183)))

(declare-fun b!3752556 () Bool)

(assert (=> b!3752556 (= e!2321183 (inv!53568 (right!31304 (left!30974 (left!30974 t!3709)))))))

(assert (= (and d!1094854 c!649539) b!3752554))

(assert (= (and d!1094854 (not c!649539)) b!3752555))

(assert (= (and b!3752555 (not res!1520727)) b!3752556))

(declare-fun m!4243951 () Bool)

(assert (=> b!3752554 m!4243951))

(declare-fun m!4243953 () Bool)

(assert (=> b!3752556 m!4243953))

(assert (=> b!3752414 d!1094854))

(assert (=> b!3752379 d!1094848))

(assert (=> b!3752379 d!1094756))

(declare-fun d!1094856 () Bool)

(assert (=> d!1094856 (= (list!14743 (xs!15437 (right!31304 (left!30974 t!3709)))) (innerList!12295 (xs!15437 (right!31304 (left!30974 t!3709)))))))

(assert (=> b!3752356 d!1094856))

(declare-fun d!1094858 () Bool)

(declare-fun lt!1300018 () Int)

(assert (=> d!1094858 (>= lt!1300018 0)))

(declare-fun e!2321184 () Int)

(assert (=> d!1094858 (= lt!1300018 e!2321184)))

(declare-fun c!649540 () Bool)

(assert (=> d!1094858 (= c!649540 ((_ is Nil!40009) lt!1299989))))

(assert (=> d!1094858 (= (size!30104 lt!1299989) lt!1300018)))

(declare-fun b!3752557 () Bool)

(assert (=> b!3752557 (= e!2321184 0)))

(declare-fun b!3752558 () Bool)

(assert (=> b!3752558 (= e!2321184 (+ 1 (size!30104 (t!303156 lt!1299989))))))

(assert (= (and d!1094858 c!649540) b!3752557))

(assert (= (and d!1094858 (not c!649540)) b!3752558))

(declare-fun m!4243955 () Bool)

(assert (=> b!3752558 m!4243955))

(assert (=> b!3752348 d!1094858))

(declare-fun d!1094860 () Bool)

(declare-fun lt!1300019 () Int)

(assert (=> d!1094860 (>= lt!1300019 0)))

(declare-fun e!2321185 () Int)

(assert (=> d!1094860 (= lt!1300019 e!2321185)))

(declare-fun c!649541 () Bool)

(assert (=> d!1094860 (= c!649541 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094860 (= (size!30104 (list!14742 (left!30974 (left!30974 t!3709)))) lt!1300019)))

(declare-fun b!3752559 () Bool)

(assert (=> b!3752559 (= e!2321185 0)))

(declare-fun b!3752560 () Bool)

(assert (=> b!3752560 (= e!2321185 (+ 1 (size!30104 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))))))))

(assert (= (and d!1094860 c!649541) b!3752559))

(assert (= (and d!1094860 (not c!649541)) b!3752560))

(declare-fun m!4243957 () Bool)

(assert (=> b!3752560 m!4243957))

(assert (=> b!3752348 d!1094860))

(declare-fun d!1094862 () Bool)

(declare-fun lt!1300020 () Int)

(assert (=> d!1094862 (>= lt!1300020 0)))

(declare-fun e!2321186 () Int)

(assert (=> d!1094862 (= lt!1300020 e!2321186)))

(declare-fun c!649542 () Bool)

(assert (=> d!1094862 (= c!649542 ((_ is Nil!40009) (list!14742 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094862 (= (size!30104 (list!14742 (right!31304 (left!30974 t!3709)))) lt!1300020)))

(declare-fun b!3752561 () Bool)

(assert (=> b!3752561 (= e!2321186 0)))

(declare-fun b!3752562 () Bool)

(assert (=> b!3752562 (= e!2321186 (+ 1 (size!30104 (t!303156 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(assert (= (and d!1094862 c!649542) b!3752561))

(assert (= (and d!1094862 (not c!649542)) b!3752562))

(declare-fun m!4243959 () Bool)

(assert (=> b!3752562 m!4243959))

(assert (=> b!3752348 d!1094862))

(declare-fun d!1094864 () Bool)

(declare-fun lt!1300021 () Int)

(assert (=> d!1094864 (>= lt!1300021 0)))

(declare-fun e!2321187 () Int)

(assert (=> d!1094864 (= lt!1300021 e!2321187)))

(declare-fun c!649543 () Bool)

(assert (=> d!1094864 (= c!649543 ((_ is Nil!40009) (list!14743 (xs!15437 t!3709))))))

(assert (=> d!1094864 (= (size!30104 (list!14743 (xs!15437 t!3709))) lt!1300021)))

(declare-fun b!3752563 () Bool)

(assert (=> b!3752563 (= e!2321187 0)))

(declare-fun b!3752564 () Bool)

(assert (=> b!3752564 (= e!2321187 (+ 1 (size!30104 (t!303156 (list!14743 (xs!15437 t!3709))))))))

(assert (= (and d!1094864 c!649543) b!3752563))

(assert (= (and d!1094864 (not c!649543)) b!3752564))

(declare-fun m!4243961 () Bool)

(assert (=> b!3752564 m!4243961))

(assert (=> b!3752396 d!1094864))

(declare-fun d!1094866 () Bool)

(assert (=> d!1094866 (= (list!14743 (xs!15437 t!3709)) (innerList!12295 (xs!15437 t!3709)))))

(assert (=> b!3752396 d!1094866))

(declare-fun d!1094868 () Bool)

(declare-fun c!649544 () Bool)

(assert (=> d!1094868 (= c!649544 ((_ is Node!12235) (left!30974 (left!30974 (right!31304 t!3709)))))))

(declare-fun e!2321188 () Bool)

(assert (=> d!1094868 (= (inv!53565 (left!30974 (left!30974 (right!31304 t!3709)))) e!2321188)))

(declare-fun b!3752565 () Bool)

(assert (=> b!3752565 (= e!2321188 (inv!53567 (left!30974 (left!30974 (right!31304 t!3709)))))))

(declare-fun b!3752566 () Bool)

(declare-fun e!2321189 () Bool)

(assert (=> b!3752566 (= e!2321188 e!2321189)))

(declare-fun res!1520728 () Bool)

(assert (=> b!3752566 (= res!1520728 (not ((_ is Leaf!18983) (left!30974 (left!30974 (right!31304 t!3709))))))))

(assert (=> b!3752566 (=> res!1520728 e!2321189)))

(declare-fun b!3752567 () Bool)

(assert (=> b!3752567 (= e!2321189 (inv!53568 (left!30974 (left!30974 (right!31304 t!3709)))))))

(assert (= (and d!1094868 c!649544) b!3752565))

(assert (= (and d!1094868 (not c!649544)) b!3752566))

(assert (= (and b!3752566 (not res!1520728)) b!3752567))

(declare-fun m!4243963 () Bool)

(assert (=> b!3752565 m!4243963))

(declare-fun m!4243965 () Bool)

(assert (=> b!3752567 m!4243965))

(assert (=> b!3752422 d!1094868))

(declare-fun d!1094870 () Bool)

(declare-fun c!649545 () Bool)

(assert (=> d!1094870 (= c!649545 ((_ is Node!12235) (right!31304 (left!30974 (right!31304 t!3709)))))))

(declare-fun e!2321190 () Bool)

(assert (=> d!1094870 (= (inv!53565 (right!31304 (left!30974 (right!31304 t!3709)))) e!2321190)))

(declare-fun b!3752568 () Bool)

(assert (=> b!3752568 (= e!2321190 (inv!53567 (right!31304 (left!30974 (right!31304 t!3709)))))))

(declare-fun b!3752569 () Bool)

(declare-fun e!2321191 () Bool)

(assert (=> b!3752569 (= e!2321190 e!2321191)))

(declare-fun res!1520729 () Bool)

(assert (=> b!3752569 (= res!1520729 (not ((_ is Leaf!18983) (right!31304 (left!30974 (right!31304 t!3709))))))))

(assert (=> b!3752569 (=> res!1520729 e!2321191)))

(declare-fun b!3752570 () Bool)

(assert (=> b!3752570 (= e!2321191 (inv!53568 (right!31304 (left!30974 (right!31304 t!3709)))))))

(assert (= (and d!1094870 c!649545) b!3752568))

(assert (= (and d!1094870 (not c!649545)) b!3752569))

(assert (= (and b!3752569 (not res!1520729)) b!3752570))

(declare-fun m!4243967 () Bool)

(assert (=> b!3752568 m!4243967))

(declare-fun m!4243969 () Bool)

(assert (=> b!3752570 m!4243969))

(assert (=> b!3752422 d!1094870))

(declare-fun d!1094872 () Bool)

(declare-fun res!1520730 () Bool)

(declare-fun e!2321192 () Bool)

(assert (=> d!1094872 (=> res!1520730 e!2321192)))

(assert (=> d!1094872 (= res!1520730 ((_ is Nil!40009) (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))))))))

(assert (=> d!1094872 (= (forall!8231 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))) p!1451) e!2321192)))

(declare-fun b!3752571 () Bool)

(declare-fun e!2321193 () Bool)

(assert (=> b!3752571 (= e!2321192 e!2321193)))

(declare-fun res!1520731 () Bool)

(assert (=> b!3752571 (=> (not res!1520731) (not e!2321193))))

(assert (=> b!3752571 (= res!1520731 (dynLambda!17301 p!1451 (h!45429 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752572 () Bool)

(assert (=> b!3752572 (= e!2321193 (forall!8231 (t!303156 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))))) p!1451))))

(assert (= (and d!1094872 (not res!1520730)) b!3752571))

(assert (= (and b!3752571 res!1520731) b!3752572))

(declare-fun b_lambda!110063 () Bool)

(assert (=> (not b_lambda!110063) (not b!3752571)))

(declare-fun t!303176 () Bool)

(declare-fun tb!214685 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303176) tb!214685))

(declare-fun result!262174 () Bool)

(assert (=> tb!214685 (= result!262174 true)))

(assert (=> b!3752571 t!303176))

(declare-fun b_and!278847 () Bool)

(assert (= b_and!278839 (and (=> t!303176 result!262174) b_and!278847)))

(declare-fun m!4243971 () Bool)

(assert (=> b!3752571 m!4243971))

(declare-fun m!4243973 () Bool)

(assert (=> b!3752572 m!4243973))

(assert (=> d!1094776 d!1094872))

(assert (=> d!1094776 d!1094740))

(declare-fun d!1094874 () Bool)

(declare-fun res!1520732 () Bool)

(declare-fun e!2321194 () Bool)

(assert (=> d!1094874 (=> res!1520732 e!2321194)))

(assert (=> d!1094874 (= res!1520732 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094874 (= (forall!8231 (list!14742 (left!30974 (left!30974 t!3709))) p!1451) e!2321194)))

(declare-fun b!3752573 () Bool)

(declare-fun e!2321195 () Bool)

(assert (=> b!3752573 (= e!2321194 e!2321195)))

(declare-fun res!1520733 () Bool)

(assert (=> b!3752573 (=> (not res!1520733) (not e!2321195))))

(assert (=> b!3752573 (= res!1520733 (dynLambda!17301 p!1451 (h!45429 (list!14742 (left!30974 (left!30974 t!3709))))))))

(declare-fun b!3752574 () Bool)

(assert (=> b!3752574 (= e!2321195 (forall!8231 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1094874 (not res!1520732)) b!3752573))

(assert (= (and b!3752573 res!1520733) b!3752574))

(declare-fun b_lambda!110065 () Bool)

(assert (=> (not b_lambda!110065) (not b!3752573)))

(declare-fun t!303178 () Bool)

(declare-fun tb!214687 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303178) tb!214687))

(declare-fun result!262176 () Bool)

(assert (=> tb!214687 (= result!262176 true)))

(assert (=> b!3752573 t!303178))

(declare-fun b_and!278849 () Bool)

(assert (= b_and!278847 (and (=> t!303178 result!262176) b_and!278849)))

(declare-fun m!4243975 () Bool)

(assert (=> b!3752573 m!4243975))

(declare-fun m!4243977 () Bool)

(assert (=> b!3752574 m!4243977))

(assert (=> d!1094776 d!1094874))

(declare-fun d!1094876 () Bool)

(declare-fun e!2321196 () Bool)

(assert (=> d!1094876 (= (forall!8231 (++!9902 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709)))) p!1451) e!2321196)))

(declare-fun res!1520734 () Bool)

(assert (=> d!1094876 (=> (not res!1520734) (not e!2321196))))

(assert (=> d!1094876 (= res!1520734 (forall!8231 (list!14742 (left!30974 (left!30974 t!3709))) p!1451))))

(assert (=> d!1094876 true))

(declare-fun _$79!154 () Unit!57738)

(assert (=> d!1094876 (= (choose!22255 (list!14742 (left!30974 (left!30974 t!3709))) (list!14742 (right!31304 (left!30974 t!3709))) p!1451) _$79!154)))

(declare-fun b!3752575 () Bool)

(assert (=> b!3752575 (= e!2321196 (forall!8231 (list!14742 (right!31304 (left!30974 t!3709))) p!1451))))

(assert (= (and d!1094876 res!1520734) b!3752575))

(assert (=> d!1094876 m!4243449))

(assert (=> d!1094876 m!4243451))

(assert (=> d!1094876 m!4243485))

(assert (=> d!1094876 m!4243485))

(assert (=> d!1094876 m!4243693))

(assert (=> d!1094876 m!4243449))

(assert (=> d!1094876 m!4243695))

(assert (=> b!3752575 m!4243451))

(assert (=> b!3752575 m!4243587))

(assert (=> d!1094776 d!1094876))

(declare-fun d!1094878 () Bool)

(declare-fun res!1520735 () Bool)

(declare-fun e!2321197 () Bool)

(assert (=> d!1094878 (=> (not res!1520735) (not e!2321197))))

(assert (=> d!1094878 (= res!1520735 (<= (size!30104 (list!14743 (xs!15437 (left!30974 (right!31304 t!3709))))) 512))))

(assert (=> d!1094878 (= (inv!53568 (left!30974 (right!31304 t!3709))) e!2321197)))

(declare-fun b!3752576 () Bool)

(declare-fun res!1520736 () Bool)

(assert (=> b!3752576 (=> (not res!1520736) (not e!2321197))))

(assert (=> b!3752576 (= res!1520736 (= (csize!24701 (left!30974 (right!31304 t!3709))) (size!30104 (list!14743 (xs!15437 (left!30974 (right!31304 t!3709)))))))))

(declare-fun b!3752577 () Bool)

(assert (=> b!3752577 (= e!2321197 (and (> (csize!24701 (left!30974 (right!31304 t!3709))) 0) (<= (csize!24701 (left!30974 (right!31304 t!3709))) 512)))))

(assert (= (and d!1094878 res!1520735) b!3752576))

(assert (= (and b!3752576 res!1520736) b!3752577))

(assert (=> d!1094878 m!4243639))

(assert (=> d!1094878 m!4243639))

(declare-fun m!4243979 () Bool)

(assert (=> d!1094878 m!4243979))

(assert (=> b!3752576 m!4243639))

(assert (=> b!3752576 m!4243639))

(assert (=> b!3752576 m!4243979))

(assert (=> b!3752402 d!1094878))

(declare-fun d!1094880 () Bool)

(declare-fun res!1520737 () Bool)

(declare-fun e!2321198 () Bool)

(assert (=> d!1094880 (=> (not res!1520737) (not e!2321198))))

(assert (=> d!1094880 (= res!1520737 (= (csize!24700 (left!30974 (right!31304 t!3709))) (+ (size!30105 (left!30974 (left!30974 (right!31304 t!3709)))) (size!30105 (right!31304 (left!30974 (right!31304 t!3709)))))))))

(assert (=> d!1094880 (= (inv!53567 (left!30974 (right!31304 t!3709))) e!2321198)))

(declare-fun b!3752578 () Bool)

(declare-fun res!1520738 () Bool)

(assert (=> b!3752578 (=> (not res!1520738) (not e!2321198))))

(assert (=> b!3752578 (= res!1520738 (and (not (= (left!30974 (left!30974 (right!31304 t!3709))) Empty!12235)) (not (= (right!31304 (left!30974 (right!31304 t!3709))) Empty!12235))))))

(declare-fun b!3752579 () Bool)

(declare-fun res!1520739 () Bool)

(assert (=> b!3752579 (=> (not res!1520739) (not e!2321198))))

(assert (=> b!3752579 (= res!1520739 (= (cheight!12446 (left!30974 (right!31304 t!3709))) (+ (max!0 (height!1744 (left!30974 (left!30974 (right!31304 t!3709)))) (height!1744 (right!31304 (left!30974 (right!31304 t!3709))))) 1)))))

(declare-fun b!3752580 () Bool)

(assert (=> b!3752580 (= e!2321198 (<= 0 (cheight!12446 (left!30974 (right!31304 t!3709)))))))

(assert (= (and d!1094880 res!1520737) b!3752578))

(assert (= (and b!3752578 res!1520738) b!3752579))

(assert (= (and b!3752579 res!1520739) b!3752580))

(declare-fun m!4243981 () Bool)

(assert (=> d!1094880 m!4243981))

(declare-fun m!4243983 () Bool)

(assert (=> d!1094880 m!4243983))

(declare-fun m!4243985 () Bool)

(assert (=> b!3752579 m!4243985))

(declare-fun m!4243987 () Bool)

(assert (=> b!3752579 m!4243987))

(assert (=> b!3752579 m!4243985))

(assert (=> b!3752579 m!4243987))

(declare-fun m!4243989 () Bool)

(assert (=> b!3752579 m!4243989))

(assert (=> b!3752400 d!1094880))

(declare-fun d!1094882 () Bool)

(declare-fun res!1520740 () Bool)

(declare-fun e!2321199 () Bool)

(assert (=> d!1094882 (=> res!1520740 e!2321199)))

(assert (=> d!1094882 (= res!1520740 ((_ is Nil!40009) (t!303156 (list!14742 (right!31304 t!3709)))))))

(assert (=> d!1094882 (= (forall!8231 (t!303156 (list!14742 (right!31304 t!3709))) p!1451) e!2321199)))

(declare-fun b!3752581 () Bool)

(declare-fun e!2321200 () Bool)

(assert (=> b!3752581 (= e!2321199 e!2321200)))

(declare-fun res!1520741 () Bool)

(assert (=> b!3752581 (=> (not res!1520741) (not e!2321200))))

(assert (=> b!3752581 (= res!1520741 (dynLambda!17301 p!1451 (h!45429 (t!303156 (list!14742 (right!31304 t!3709))))))))

(declare-fun b!3752582 () Bool)

(assert (=> b!3752582 (= e!2321200 (forall!8231 (t!303156 (t!303156 (list!14742 (right!31304 t!3709)))) p!1451))))

(assert (= (and d!1094882 (not res!1520740)) b!3752581))

(assert (= (and b!3752581 res!1520741) b!3752582))

(declare-fun b_lambda!110067 () Bool)

(assert (=> (not b_lambda!110067) (not b!3752581)))

(declare-fun t!303180 () Bool)

(declare-fun tb!214689 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303180) tb!214689))

(declare-fun result!262178 () Bool)

(assert (=> tb!214689 (= result!262178 true)))

(assert (=> b!3752581 t!303180))

(declare-fun b_and!278851 () Bool)

(assert (= b_and!278849 (and (=> t!303180 result!262178) b_and!278851)))

(declare-fun m!4243991 () Bool)

(assert (=> b!3752581 m!4243991))

(declare-fun m!4243993 () Bool)

(assert (=> b!3752582 m!4243993))

(assert (=> b!3752399 d!1094882))

(declare-fun d!1094884 () Bool)

(declare-fun e!2321201 () Bool)

(assert (=> d!1094884 (= (forall!8231 (++!9902 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709))))) p!1451) e!2321201)))

(declare-fun res!1520742 () Bool)

(assert (=> d!1094884 (=> (not res!1520742) (not e!2321201))))

(assert (=> d!1094884 (= res!1520742 (forall!8231 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun lt!1300022 () Unit!57738)

(assert (=> d!1094884 (= lt!1300022 (choose!22255 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (=> d!1094884 (= (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451) lt!1300022)))

(declare-fun b!3752583 () Bool)

(assert (=> b!3752583 (= e!2321201 (forall!8231 (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1094884 res!1520742) b!3752583))

(assert (=> d!1094884 m!4243605))

(assert (=> d!1094884 m!4243607))

(assert (=> d!1094884 m!4243609))

(assert (=> d!1094884 m!4243609))

(declare-fun m!4243995 () Bool)

(assert (=> d!1094884 m!4243995))

(assert (=> d!1094884 m!4243605))

(declare-fun m!4243997 () Bool)

(assert (=> d!1094884 m!4243997))

(assert (=> d!1094884 m!4243605))

(assert (=> d!1094884 m!4243607))

(declare-fun m!4243999 () Bool)

(assert (=> d!1094884 m!4243999))

(assert (=> b!3752583 m!4243607))

(declare-fun m!4244001 () Bool)

(assert (=> b!3752583 m!4244001))

(assert (=> b!3752409 d!1094884))

(declare-fun b!3752586 () Bool)

(declare-fun e!2321203 () List!40133)

(assert (=> b!3752586 (= e!2321203 (list!14743 (xs!15437 (left!30974 (left!30974 (left!30974 t!3709))))))))

(declare-fun b!3752585 () Bool)

(declare-fun e!2321202 () List!40133)

(assert (=> b!3752585 (= e!2321202 e!2321203)))

(declare-fun c!649547 () Bool)

(assert (=> b!3752585 (= c!649547 ((_ is Leaf!18983) (left!30974 (left!30974 (left!30974 t!3709)))))))

(declare-fun d!1094886 () Bool)

(declare-fun c!649546 () Bool)

(assert (=> d!1094886 (= c!649546 ((_ is Empty!12235) (left!30974 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094886 (= (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) e!2321202)))

(declare-fun b!3752587 () Bool)

(assert (=> b!3752587 (= e!2321203 (++!9902 (list!14742 (left!30974 (left!30974 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 (left!30974 (left!30974 t!3709)))))))))

(declare-fun b!3752584 () Bool)

(assert (=> b!3752584 (= e!2321202 Nil!40009)))

(assert (= (and d!1094886 c!649546) b!3752584))

(assert (= (and d!1094886 (not c!649546)) b!3752585))

(assert (= (and b!3752585 c!649547) b!3752586))

(assert (= (and b!3752585 (not c!649547)) b!3752587))

(declare-fun m!4244003 () Bool)

(assert (=> b!3752586 m!4244003))

(declare-fun m!4244005 () Bool)

(assert (=> b!3752587 m!4244005))

(declare-fun m!4244007 () Bool)

(assert (=> b!3752587 m!4244007))

(assert (=> b!3752587 m!4244005))

(assert (=> b!3752587 m!4244007))

(declare-fun m!4244009 () Bool)

(assert (=> b!3752587 m!4244009))

(assert (=> b!3752409 d!1094886))

(declare-fun b!3752590 () Bool)

(declare-fun e!2321205 () List!40133)

(assert (=> b!3752590 (= e!2321205 (list!14743 (xs!15437 (right!31304 (left!30974 (left!30974 t!3709))))))))

(declare-fun b!3752589 () Bool)

(declare-fun e!2321204 () List!40133)

(assert (=> b!3752589 (= e!2321204 e!2321205)))

(declare-fun c!649549 () Bool)

(assert (=> b!3752589 (= c!649549 ((_ is Leaf!18983) (right!31304 (left!30974 (left!30974 t!3709)))))))

(declare-fun d!1094888 () Bool)

(declare-fun c!649548 () Bool)

(assert (=> d!1094888 (= c!649548 ((_ is Empty!12235) (right!31304 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094888 (= (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) e!2321204)))

(declare-fun b!3752591 () Bool)

(assert (=> b!3752591 (= e!2321205 (++!9902 (list!14742 (left!30974 (right!31304 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (right!31304 (left!30974 (left!30974 t!3709)))))))))

(declare-fun b!3752588 () Bool)

(assert (=> b!3752588 (= e!2321204 Nil!40009)))

(assert (= (and d!1094888 c!649548) b!3752588))

(assert (= (and d!1094888 (not c!649548)) b!3752589))

(assert (= (and b!3752589 c!649549) b!3752590))

(assert (= (and b!3752589 (not c!649549)) b!3752591))

(declare-fun m!4244011 () Bool)

(assert (=> b!3752590 m!4244011))

(declare-fun m!4244013 () Bool)

(assert (=> b!3752591 m!4244013))

(declare-fun m!4244015 () Bool)

(assert (=> b!3752591 m!4244015))

(assert (=> b!3752591 m!4244013))

(assert (=> b!3752591 m!4244015))

(declare-fun m!4244017 () Bool)

(assert (=> b!3752591 m!4244017))

(assert (=> b!3752409 d!1094888))

(declare-fun b!3752595 () Bool)

(declare-fun e!2321208 () Bool)

(assert (=> b!3752595 (= e!2321208 (forall!8229 (right!31304 (left!30974 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun b!3752594 () Bool)

(declare-fun e!2321206 () Bool)

(assert (=> b!3752594 (= e!2321206 e!2321208)))

(declare-fun lt!1300024 () Unit!57738)

(assert (=> b!3752594 (= lt!1300024 (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 (left!30974 (left!30974 t!3709))))) p!1451))))

(declare-fun res!1520743 () Bool)

(assert (=> b!3752594 (= res!1520743 (forall!8229 (left!30974 (left!30974 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (=> b!3752594 (=> (not res!1520743) (not e!2321208))))

(declare-fun b!3752593 () Bool)

(assert (=> b!3752593 (= e!2321206 (forall!8230 (xs!15437 (left!30974 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun d!1094890 () Bool)

(declare-fun lt!1300023 () Bool)

(assert (=> d!1094890 (= lt!1300023 (forall!8231 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun e!2321207 () Bool)

(assert (=> d!1094890 (= lt!1300023 e!2321207)))

(declare-fun res!1520744 () Bool)

(assert (=> d!1094890 (=> res!1520744 e!2321207)))

(assert (=> d!1094890 (= res!1520744 ((_ is Empty!12235) (left!30974 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094890 (= (forall!8229 (left!30974 (left!30974 (left!30974 t!3709))) p!1451) lt!1300023)))

(declare-fun b!3752592 () Bool)

(assert (=> b!3752592 (= e!2321207 e!2321206)))

(declare-fun c!649550 () Bool)

(assert (=> b!3752592 (= c!649550 ((_ is Leaf!18983) (left!30974 (left!30974 (left!30974 t!3709)))))))

(assert (= (and d!1094890 (not res!1520744)) b!3752592))

(assert (= (and b!3752592 c!649550) b!3752593))

(assert (= (and b!3752592 (not c!649550)) b!3752594))

(assert (= (and b!3752594 res!1520743) b!3752595))

(declare-fun m!4244019 () Bool)

(assert (=> b!3752595 m!4244019))

(assert (=> b!3752594 m!4244005))

(assert (=> b!3752594 m!4244007))

(assert (=> b!3752594 m!4244005))

(assert (=> b!3752594 m!4244007))

(declare-fun m!4244021 () Bool)

(assert (=> b!3752594 m!4244021))

(declare-fun m!4244023 () Bool)

(assert (=> b!3752594 m!4244023))

(declare-fun m!4244025 () Bool)

(assert (=> b!3752593 m!4244025))

(assert (=> d!1094890 m!4243605))

(assert (=> d!1094890 m!4243605))

(assert (=> d!1094890 m!4243997))

(assert (=> b!3752409 d!1094890))

(declare-fun d!1094892 () Bool)

(declare-fun res!1520745 () Bool)

(declare-fun e!2321209 () Bool)

(assert (=> d!1094892 (=> (not res!1520745) (not e!2321209))))

(assert (=> d!1094892 (= res!1520745 (= (csize!24700 (left!30974 (left!30974 t!3709))) (+ (size!30105 (left!30974 (left!30974 (left!30974 t!3709)))) (size!30105 (right!31304 (left!30974 (left!30974 t!3709)))))))))

(assert (=> d!1094892 (= (inv!53567 (left!30974 (left!30974 t!3709))) e!2321209)))

(declare-fun b!3752596 () Bool)

(declare-fun res!1520746 () Bool)

(assert (=> b!3752596 (=> (not res!1520746) (not e!2321209))))

(assert (=> b!3752596 (= res!1520746 (and (not (= (left!30974 (left!30974 (left!30974 t!3709))) Empty!12235)) (not (= (right!31304 (left!30974 (left!30974 t!3709))) Empty!12235))))))

(declare-fun b!3752597 () Bool)

(declare-fun res!1520747 () Bool)

(assert (=> b!3752597 (=> (not res!1520747) (not e!2321209))))

(assert (=> b!3752597 (= res!1520747 (= (cheight!12446 (left!30974 (left!30974 t!3709))) (+ (max!0 (height!1744 (left!30974 (left!30974 (left!30974 t!3709)))) (height!1744 (right!31304 (left!30974 (left!30974 t!3709))))) 1)))))

(declare-fun b!3752598 () Bool)

(assert (=> b!3752598 (= e!2321209 (<= 0 (cheight!12446 (left!30974 (left!30974 t!3709)))))))

(assert (= (and d!1094892 res!1520745) b!3752596))

(assert (= (and b!3752596 res!1520746) b!3752597))

(assert (= (and b!3752597 res!1520747) b!3752598))

(declare-fun m!4244027 () Bool)

(assert (=> d!1094892 m!4244027))

(declare-fun m!4244029 () Bool)

(assert (=> d!1094892 m!4244029))

(declare-fun m!4244031 () Bool)

(assert (=> b!3752597 m!4244031))

(declare-fun m!4244033 () Bool)

(assert (=> b!3752597 m!4244033))

(assert (=> b!3752597 m!4244031))

(assert (=> b!3752597 m!4244033))

(declare-fun m!4244035 () Bool)

(assert (=> b!3752597 m!4244035))

(assert (=> b!3752381 d!1094892))

(assert (=> d!1094768 d!1094864))

(assert (=> d!1094768 d!1094866))

(declare-fun b!3752602 () Bool)

(declare-fun e!2321212 () Bool)

(assert (=> b!3752602 (= e!2321212 (forall!8229 (right!31304 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun b!3752601 () Bool)

(declare-fun e!2321210 () Bool)

(assert (=> b!3752601 (= e!2321210 e!2321212)))

(declare-fun lt!1300026 () Unit!57738)

(assert (=> b!3752601 (= lt!1300026 (lemmaForallConcat!211 (list!14742 (left!30974 (right!31304 (right!31304 (left!30974 t!3709))))) (list!14742 (right!31304 (right!31304 (right!31304 (left!30974 t!3709))))) p!1451))))

(declare-fun res!1520748 () Bool)

(assert (=> b!3752601 (= res!1520748 (forall!8229 (left!30974 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (=> b!3752601 (=> (not res!1520748) (not e!2321212))))

(declare-fun b!3752600 () Bool)

(assert (=> b!3752600 (= e!2321210 (forall!8230 (xs!15437 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun d!1094894 () Bool)

(declare-fun lt!1300025 () Bool)

(assert (=> d!1094894 (= lt!1300025 (forall!8231 (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun e!2321211 () Bool)

(assert (=> d!1094894 (= lt!1300025 e!2321211)))

(declare-fun res!1520749 () Bool)

(assert (=> d!1094894 (=> res!1520749 e!2321211)))

(assert (=> d!1094894 (= res!1520749 ((_ is Empty!12235) (right!31304 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094894 (= (forall!8229 (right!31304 (right!31304 (left!30974 t!3709))) p!1451) lt!1300025)))

(declare-fun b!3752599 () Bool)

(assert (=> b!3752599 (= e!2321211 e!2321210)))

(declare-fun c!649551 () Bool)

(assert (=> b!3752599 (= c!649551 ((_ is Leaf!18983) (right!31304 (right!31304 (left!30974 t!3709)))))))

(assert (= (and d!1094894 (not res!1520749)) b!3752599))

(assert (= (and b!3752599 c!649551) b!3752600))

(assert (= (and b!3752599 (not c!649551)) b!3752601))

(assert (= (and b!3752601 res!1520748) b!3752602))

(declare-fun m!4244037 () Bool)

(assert (=> b!3752602 m!4244037))

(declare-fun m!4244039 () Bool)

(assert (=> b!3752601 m!4244039))

(declare-fun m!4244041 () Bool)

(assert (=> b!3752601 m!4244041))

(assert (=> b!3752601 m!4244039))

(assert (=> b!3752601 m!4244041))

(declare-fun m!4244043 () Bool)

(assert (=> b!3752601 m!4244043))

(declare-fun m!4244045 () Bool)

(assert (=> b!3752601 m!4244045))

(declare-fun m!4244047 () Bool)

(assert (=> b!3752600 m!4244047))

(assert (=> d!1094894 m!4243579))

(assert (=> d!1094894 m!4243579))

(declare-fun m!4244049 () Bool)

(assert (=> d!1094894 m!4244049))

(assert (=> b!3752345 d!1094894))

(declare-fun d!1094896 () Bool)

(assert (=> d!1094896 (= (inv!53566 (xs!15437 (right!31304 (left!30974 t!3709)))) (<= (size!30104 (innerList!12295 (xs!15437 (right!31304 (left!30974 t!3709))))) 2147483647))))

(declare-fun bs!575435 () Bool)

(assert (= bs!575435 d!1094896))

(declare-fun m!4244051 () Bool)

(assert (=> bs!575435 m!4244051))

(assert (=> b!3752418 d!1094896))

(declare-fun d!1094898 () Bool)

(declare-fun c!649554 () Bool)

(assert (=> d!1094898 (= c!649554 ((_ is Nil!40009) lt!1299986))))

(declare-fun e!2321215 () (InoxSet T!69112))

(assert (=> d!1094898 (= (content!5867 lt!1299986) e!2321215)))

(declare-fun b!3752607 () Bool)

(assert (=> b!3752607 (= e!2321215 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752608 () Bool)

(assert (=> b!3752608 (= e!2321215 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 lt!1299986) true) (content!5867 (t!303156 lt!1299986))))))

(assert (= (and d!1094898 c!649554) b!3752607))

(assert (= (and d!1094898 (not c!649554)) b!3752608))

(declare-fun m!4244053 () Bool)

(assert (=> b!3752608 m!4244053))

(declare-fun m!4244055 () Bool)

(assert (=> b!3752608 m!4244055))

(assert (=> d!1094728 d!1094898))

(declare-fun d!1094900 () Bool)

(declare-fun c!649555 () Bool)

(assert (=> d!1094900 (= c!649555 ((_ is Nil!40009) (list!14742 (left!30974 t!3709))))))

(declare-fun e!2321216 () (InoxSet T!69112))

(assert (=> d!1094900 (= (content!5867 (list!14742 (left!30974 t!3709))) e!2321216)))

(declare-fun b!3752609 () Bool)

(assert (=> b!3752609 (= e!2321216 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752610 () Bool)

(assert (=> b!3752610 (= e!2321216 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (left!30974 t!3709))) true) (content!5867 (t!303156 (list!14742 (left!30974 t!3709))))))))

(assert (= (and d!1094900 c!649555) b!3752609))

(assert (= (and d!1094900 (not c!649555)) b!3752610))

(declare-fun m!4244057 () Bool)

(assert (=> b!3752610 m!4244057))

(declare-fun m!4244059 () Bool)

(assert (=> b!3752610 m!4244059))

(assert (=> d!1094728 d!1094900))

(declare-fun d!1094902 () Bool)

(declare-fun c!649556 () Bool)

(assert (=> d!1094902 (= c!649556 ((_ is Nil!40009) (list!14742 (right!31304 t!3709))))))

(declare-fun e!2321217 () (InoxSet T!69112))

(assert (=> d!1094902 (= (content!5867 (list!14742 (right!31304 t!3709))) e!2321217)))

(declare-fun b!3752611 () Bool)

(assert (=> b!3752611 (= e!2321217 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752612 () Bool)

(assert (=> b!3752612 (= e!2321217 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (right!31304 t!3709))) true) (content!5867 (t!303156 (list!14742 (right!31304 t!3709))))))))

(assert (= (and d!1094902 c!649556) b!3752611))

(assert (= (and d!1094902 (not c!649556)) b!3752612))

(declare-fun m!4244061 () Bool)

(assert (=> b!3752612 m!4244061))

(declare-fun m!4244063 () Bool)

(assert (=> b!3752612 m!4244063))

(assert (=> d!1094728 d!1094902))

(declare-fun d!1094904 () Bool)

(declare-fun lt!1300027 () Bool)

(assert (=> d!1094904 (= lt!1300027 (forall!8231 (list!14743 (xs!15437 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (=> d!1094904 (= lt!1300027 (choose!22257 (xs!15437 (right!31304 (left!30974 t!3709))) p!1451))))

(assert (=> d!1094904 (= (forall!8230 (xs!15437 (right!31304 (left!30974 t!3709))) p!1451) lt!1300027)))

(declare-fun bs!575436 () Bool)

(assert (= bs!575436 d!1094904))

(assert (=> bs!575436 m!4243611))

(assert (=> bs!575436 m!4243611))

(declare-fun m!4244065 () Bool)

(assert (=> bs!575436 m!4244065))

(declare-fun m!4244067 () Bool)

(assert (=> bs!575436 m!4244067))

(assert (=> b!3752343 d!1094904))

(declare-fun d!1094906 () Bool)

(declare-fun res!1520750 () Bool)

(declare-fun e!2321218 () Bool)

(assert (=> d!1094906 (=> res!1520750 e!2321218)))

(assert (=> d!1094906 (= res!1520750 ((_ is Nil!40009) (list!14742 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094906 (= (forall!8231 (list!14742 (right!31304 (left!30974 t!3709))) p!1451) e!2321218)))

(declare-fun b!3752613 () Bool)

(declare-fun e!2321219 () Bool)

(assert (=> b!3752613 (= e!2321218 e!2321219)))

(declare-fun res!1520751 () Bool)

(assert (=> b!3752613 (=> (not res!1520751) (not e!2321219))))

(assert (=> b!3752613 (= res!1520751 (dynLambda!17301 p!1451 (h!45429 (list!14742 (right!31304 (left!30974 t!3709))))))))

(declare-fun b!3752614 () Bool)

(assert (=> b!3752614 (= e!2321219 (forall!8231 (t!303156 (list!14742 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1094906 (not res!1520750)) b!3752613))

(assert (= (and b!3752613 res!1520751) b!3752614))

(declare-fun b_lambda!110069 () Bool)

(assert (=> (not b_lambda!110069) (not b!3752613)))

(declare-fun t!303182 () Bool)

(declare-fun tb!214691 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303182) tb!214691))

(declare-fun result!262180 () Bool)

(assert (=> tb!214691 (= result!262180 true)))

(assert (=> b!3752613 t!303182))

(declare-fun b_and!278853 () Bool)

(assert (= b_and!278851 (and (=> t!303182 result!262180) b_and!278853)))

(declare-fun m!4244069 () Bool)

(assert (=> b!3752613 m!4244069))

(declare-fun m!4244071 () Bool)

(assert (=> b!3752614 m!4244071))

(assert (=> b!3752406 d!1094906))

(declare-fun b!3752615 () Bool)

(declare-fun e!2321220 () List!40133)

(assert (=> b!3752615 (= e!2321220 (list!14742 (right!31304 (right!31304 (right!31304 t!3709)))))))

(declare-fun b!3752617 () Bool)

(declare-fun res!1520752 () Bool)

(declare-fun e!2321221 () Bool)

(assert (=> b!3752617 (=> (not res!1520752) (not e!2321221))))

(declare-fun lt!1300028 () List!40133)

(assert (=> b!3752617 (= res!1520752 (= (size!30104 lt!1300028) (+ (size!30104 (list!14742 (left!30974 (right!31304 (right!31304 t!3709))))) (size!30104 (list!14742 (right!31304 (right!31304 (right!31304 t!3709))))))))))

(declare-fun b!3752618 () Bool)

(assert (=> b!3752618 (= e!2321221 (or (not (= (list!14742 (right!31304 (right!31304 (right!31304 t!3709)))) Nil!40009)) (= lt!1300028 (list!14742 (left!30974 (right!31304 (right!31304 t!3709)))))))))

(declare-fun d!1094908 () Bool)

(assert (=> d!1094908 e!2321221))

(declare-fun res!1520753 () Bool)

(assert (=> d!1094908 (=> (not res!1520753) (not e!2321221))))

(assert (=> d!1094908 (= res!1520753 (= (content!5867 lt!1300028) ((_ map or) (content!5867 (list!14742 (left!30974 (right!31304 (right!31304 t!3709))))) (content!5867 (list!14742 (right!31304 (right!31304 (right!31304 t!3709))))))))))

(assert (=> d!1094908 (= lt!1300028 e!2321220)))

(declare-fun c!649557 () Bool)

(assert (=> d!1094908 (= c!649557 ((_ is Nil!40009) (list!14742 (left!30974 (right!31304 (right!31304 t!3709))))))))

(assert (=> d!1094908 (= (++!9902 (list!14742 (left!30974 (right!31304 (right!31304 t!3709)))) (list!14742 (right!31304 (right!31304 (right!31304 t!3709))))) lt!1300028)))

(declare-fun b!3752616 () Bool)

(assert (=> b!3752616 (= e!2321220 (Cons!40009 (h!45429 (list!14742 (left!30974 (right!31304 (right!31304 t!3709))))) (++!9902 (t!303156 (list!14742 (left!30974 (right!31304 (right!31304 t!3709))))) (list!14742 (right!31304 (right!31304 (right!31304 t!3709)))))))))

(assert (= (and d!1094908 c!649557) b!3752615))

(assert (= (and d!1094908 (not c!649557)) b!3752616))

(assert (= (and d!1094908 res!1520753) b!3752617))

(assert (= (and b!3752617 res!1520752) b!3752618))

(declare-fun m!4244073 () Bool)

(assert (=> b!3752617 m!4244073))

(assert (=> b!3752617 m!4243649))

(declare-fun m!4244075 () Bool)

(assert (=> b!3752617 m!4244075))

(assert (=> b!3752617 m!4243651))

(declare-fun m!4244077 () Bool)

(assert (=> b!3752617 m!4244077))

(declare-fun m!4244079 () Bool)

(assert (=> d!1094908 m!4244079))

(assert (=> d!1094908 m!4243649))

(declare-fun m!4244081 () Bool)

(assert (=> d!1094908 m!4244081))

(assert (=> d!1094908 m!4243651))

(declare-fun m!4244083 () Bool)

(assert (=> d!1094908 m!4244083))

(assert (=> b!3752616 m!4243651))

(declare-fun m!4244085 () Bool)

(assert (=> b!3752616 m!4244085))

(assert (=> b!3752378 d!1094908))

(declare-fun b!3752621 () Bool)

(declare-fun e!2321223 () List!40133)

(assert (=> b!3752621 (= e!2321223 (list!14743 (xs!15437 (left!30974 (right!31304 (right!31304 t!3709))))))))

(declare-fun b!3752620 () Bool)

(declare-fun e!2321222 () List!40133)

(assert (=> b!3752620 (= e!2321222 e!2321223)))

(declare-fun c!649559 () Bool)

(assert (=> b!3752620 (= c!649559 ((_ is Leaf!18983) (left!30974 (right!31304 (right!31304 t!3709)))))))

(declare-fun d!1094910 () Bool)

(declare-fun c!649558 () Bool)

(assert (=> d!1094910 (= c!649558 ((_ is Empty!12235) (left!30974 (right!31304 (right!31304 t!3709)))))))

(assert (=> d!1094910 (= (list!14742 (left!30974 (right!31304 (right!31304 t!3709)))) e!2321222)))

(declare-fun b!3752622 () Bool)

(assert (=> b!3752622 (= e!2321223 (++!9902 (list!14742 (left!30974 (left!30974 (right!31304 (right!31304 t!3709))))) (list!14742 (right!31304 (left!30974 (right!31304 (right!31304 t!3709)))))))))

(declare-fun b!3752619 () Bool)

(assert (=> b!3752619 (= e!2321222 Nil!40009)))

(assert (= (and d!1094910 c!649558) b!3752619))

(assert (= (and d!1094910 (not c!649558)) b!3752620))

(assert (= (and b!3752620 c!649559) b!3752621))

(assert (= (and b!3752620 (not c!649559)) b!3752622))

(declare-fun m!4244087 () Bool)

(assert (=> b!3752621 m!4244087))

(declare-fun m!4244089 () Bool)

(assert (=> b!3752622 m!4244089))

(declare-fun m!4244091 () Bool)

(assert (=> b!3752622 m!4244091))

(assert (=> b!3752622 m!4244089))

(assert (=> b!3752622 m!4244091))

(declare-fun m!4244093 () Bool)

(assert (=> b!3752622 m!4244093))

(assert (=> b!3752378 d!1094910))

(declare-fun b!3752625 () Bool)

(declare-fun e!2321225 () List!40133)

(assert (=> b!3752625 (= e!2321225 (list!14743 (xs!15437 (right!31304 (right!31304 (right!31304 t!3709))))))))

(declare-fun b!3752624 () Bool)

(declare-fun e!2321224 () List!40133)

(assert (=> b!3752624 (= e!2321224 e!2321225)))

(declare-fun c!649561 () Bool)

(assert (=> b!3752624 (= c!649561 ((_ is Leaf!18983) (right!31304 (right!31304 (right!31304 t!3709)))))))

(declare-fun d!1094912 () Bool)

(declare-fun c!649560 () Bool)

(assert (=> d!1094912 (= c!649560 ((_ is Empty!12235) (right!31304 (right!31304 (right!31304 t!3709)))))))

(assert (=> d!1094912 (= (list!14742 (right!31304 (right!31304 (right!31304 t!3709)))) e!2321224)))

(declare-fun b!3752626 () Bool)

(assert (=> b!3752626 (= e!2321225 (++!9902 (list!14742 (left!30974 (right!31304 (right!31304 (right!31304 t!3709))))) (list!14742 (right!31304 (right!31304 (right!31304 (right!31304 t!3709)))))))))

(declare-fun b!3752623 () Bool)

(assert (=> b!3752623 (= e!2321224 Nil!40009)))

(assert (= (and d!1094912 c!649560) b!3752623))

(assert (= (and d!1094912 (not c!649560)) b!3752624))

(assert (= (and b!3752624 c!649561) b!3752625))

(assert (= (and b!3752624 (not c!649561)) b!3752626))

(declare-fun m!4244095 () Bool)

(assert (=> b!3752625 m!4244095))

(declare-fun m!4244097 () Bool)

(assert (=> b!3752626 m!4244097))

(declare-fun m!4244099 () Bool)

(assert (=> b!3752626 m!4244099))

(assert (=> b!3752626 m!4244097))

(assert (=> b!3752626 m!4244099))

(declare-fun m!4244101 () Bool)

(assert (=> b!3752626 m!4244101))

(assert (=> b!3752378 d!1094912))

(declare-fun b!3752627 () Bool)

(declare-fun e!2321226 () List!40133)

(assert (=> b!3752627 (= e!2321226 (list!14742 (right!31304 (right!31304 t!3709))))))

(declare-fun b!3752629 () Bool)

(declare-fun res!1520754 () Bool)

(declare-fun e!2321227 () Bool)

(assert (=> b!3752629 (=> (not res!1520754) (not e!2321227))))

(declare-fun lt!1300029 () List!40133)

(assert (=> b!3752629 (= res!1520754 (= (size!30104 lt!1300029) (+ (size!30104 (t!303156 (list!14742 (left!30974 (right!31304 t!3709))))) (size!30104 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(declare-fun b!3752630 () Bool)

(assert (=> b!3752630 (= e!2321227 (or (not (= (list!14742 (right!31304 (right!31304 t!3709))) Nil!40009)) (= lt!1300029 (t!303156 (list!14742 (left!30974 (right!31304 t!3709)))))))))

(declare-fun d!1094914 () Bool)

(assert (=> d!1094914 e!2321227))

(declare-fun res!1520755 () Bool)

(assert (=> d!1094914 (=> (not res!1520755) (not e!2321227))))

(assert (=> d!1094914 (= res!1520755 (= (content!5867 lt!1300029) ((_ map or) (content!5867 (t!303156 (list!14742 (left!30974 (right!31304 t!3709))))) (content!5867 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(assert (=> d!1094914 (= lt!1300029 e!2321226)))

(declare-fun c!649562 () Bool)

(assert (=> d!1094914 (= c!649562 ((_ is Nil!40009) (t!303156 (list!14742 (left!30974 (right!31304 t!3709))))))))

(assert (=> d!1094914 (= (++!9902 (t!303156 (list!14742 (left!30974 (right!31304 t!3709)))) (list!14742 (right!31304 (right!31304 t!3709)))) lt!1300029)))

(declare-fun b!3752628 () Bool)

(assert (=> b!3752628 (= e!2321226 (Cons!40009 (h!45429 (t!303156 (list!14742 (left!30974 (right!31304 t!3709))))) (++!9902 (t!303156 (t!303156 (list!14742 (left!30974 (right!31304 t!3709))))) (list!14742 (right!31304 (right!31304 t!3709))))))))

(assert (= (and d!1094914 c!649562) b!3752627))

(assert (= (and d!1094914 (not c!649562)) b!3752628))

(assert (= (and d!1094914 res!1520755) b!3752629))

(assert (= (and b!3752629 res!1520754) b!3752630))

(declare-fun m!4244103 () Bool)

(assert (=> b!3752629 m!4244103))

(declare-fun m!4244105 () Bool)

(assert (=> b!3752629 m!4244105))

(assert (=> b!3752629 m!4243491))

(assert (=> b!3752629 m!4243629))

(declare-fun m!4244107 () Bool)

(assert (=> d!1094914 m!4244107))

(declare-fun m!4244109 () Bool)

(assert (=> d!1094914 m!4244109))

(assert (=> d!1094914 m!4243491))

(assert (=> d!1094914 m!4243635))

(assert (=> b!3752628 m!4243491))

(declare-fun m!4244111 () Bool)

(assert (=> b!3752628 m!4244111))

(assert (=> b!3752368 d!1094914))

(declare-fun d!1094916 () Bool)

(assert (=> d!1094916 (= (max!0 (height!1744 (left!30974 (right!31304 t!3709))) (height!1744 (right!31304 (right!31304 t!3709)))) (ite (< (height!1744 (left!30974 (right!31304 t!3709))) (height!1744 (right!31304 (right!31304 t!3709)))) (height!1744 (right!31304 (right!31304 t!3709))) (height!1744 (left!30974 (right!31304 t!3709)))))))

(assert (=> b!3752365 d!1094916))

(declare-fun d!1094918 () Bool)

(assert (=> d!1094918 (= (height!1744 (left!30974 (right!31304 t!3709))) (ite ((_ is Empty!12235) (left!30974 (right!31304 t!3709))) 0 (ite ((_ is Leaf!18983) (left!30974 (right!31304 t!3709))) 1 (cheight!12446 (left!30974 (right!31304 t!3709))))))))

(assert (=> b!3752365 d!1094918))

(declare-fun d!1094920 () Bool)

(assert (=> d!1094920 (= (height!1744 (right!31304 (right!31304 t!3709))) (ite ((_ is Empty!12235) (right!31304 (right!31304 t!3709))) 0 (ite ((_ is Leaf!18983) (right!31304 (right!31304 t!3709))) 1 (cheight!12446 (right!31304 (right!31304 t!3709))))))))

(assert (=> b!3752365 d!1094920))

(declare-fun d!1094922 () Bool)

(declare-fun res!1520756 () Bool)

(declare-fun e!2321228 () Bool)

(assert (=> d!1094922 (=> (not res!1520756) (not e!2321228))))

(assert (=> d!1094922 (= res!1520756 (= (csize!24700 (right!31304 (left!30974 t!3709))) (+ (size!30105 (left!30974 (right!31304 (left!30974 t!3709)))) (size!30105 (right!31304 (right!31304 (left!30974 t!3709)))))))))

(assert (=> d!1094922 (= (inv!53567 (right!31304 (left!30974 t!3709))) e!2321228)))

(declare-fun b!3752631 () Bool)

(declare-fun res!1520757 () Bool)

(assert (=> b!3752631 (=> (not res!1520757) (not e!2321228))))

(assert (=> b!3752631 (= res!1520757 (and (not (= (left!30974 (right!31304 (left!30974 t!3709))) Empty!12235)) (not (= (right!31304 (right!31304 (left!30974 t!3709))) Empty!12235))))))

(declare-fun b!3752632 () Bool)

(declare-fun res!1520758 () Bool)

(assert (=> b!3752632 (=> (not res!1520758) (not e!2321228))))

(assert (=> b!3752632 (= res!1520758 (= (cheight!12446 (right!31304 (left!30974 t!3709))) (+ (max!0 (height!1744 (left!30974 (right!31304 (left!30974 t!3709)))) (height!1744 (right!31304 (right!31304 (left!30974 t!3709))))) 1)))))

(declare-fun b!3752633 () Bool)

(assert (=> b!3752633 (= e!2321228 (<= 0 (cheight!12446 (right!31304 (left!30974 t!3709)))))))

(assert (= (and d!1094922 res!1520756) b!3752631))

(assert (= (and b!3752631 res!1520757) b!3752632))

(assert (= (and b!3752632 res!1520758) b!3752633))

(declare-fun m!4244113 () Bool)

(assert (=> d!1094922 m!4244113))

(declare-fun m!4244115 () Bool)

(assert (=> d!1094922 m!4244115))

(declare-fun m!4244117 () Bool)

(assert (=> b!3752632 m!4244117))

(declare-fun m!4244119 () Bool)

(assert (=> b!3752632 m!4244119))

(assert (=> b!3752632 m!4244117))

(assert (=> b!3752632 m!4244119))

(declare-fun m!4244121 () Bool)

(assert (=> b!3752632 m!4244121))

(assert (=> b!3752384 d!1094922))

(declare-fun d!1094924 () Bool)

(assert (=> d!1094924 (= (list!14743 (xs!15437 (left!30974 (right!31304 t!3709)))) (innerList!12295 (xs!15437 (left!30974 (right!31304 t!3709)))))))

(assert (=> b!3752373 d!1094924))

(declare-fun d!1094926 () Bool)

(declare-fun res!1520759 () Bool)

(declare-fun e!2321229 () Bool)

(assert (=> d!1094926 (=> (not res!1520759) (not e!2321229))))

(assert (=> d!1094926 (= res!1520759 (<= (size!30104 (list!14743 (xs!15437 (right!31304 (left!30974 t!3709))))) 512))))

(assert (=> d!1094926 (= (inv!53568 (right!31304 (left!30974 t!3709))) e!2321229)))

(declare-fun b!3752634 () Bool)

(declare-fun res!1520760 () Bool)

(assert (=> b!3752634 (=> (not res!1520760) (not e!2321229))))

(assert (=> b!3752634 (= res!1520760 (= (csize!24701 (right!31304 (left!30974 t!3709))) (size!30104 (list!14743 (xs!15437 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752635 () Bool)

(assert (=> b!3752635 (= e!2321229 (and (> (csize!24701 (right!31304 (left!30974 t!3709))) 0) (<= (csize!24701 (right!31304 (left!30974 t!3709))) 512)))))

(assert (= (and d!1094926 res!1520759) b!3752634))

(assert (= (and b!3752634 res!1520760) b!3752635))

(assert (=> d!1094926 m!4243611))

(assert (=> d!1094926 m!4243611))

(declare-fun m!4244123 () Bool)

(assert (=> d!1094926 m!4244123))

(assert (=> b!3752634 m!4243611))

(assert (=> b!3752634 m!4243611))

(assert (=> b!3752634 m!4244123))

(assert (=> b!3752386 d!1094926))

(declare-fun d!1094928 () Bool)

(assert (=> d!1094928 (= (max!0 (height!1744 (left!30974 (left!30974 t!3709))) (height!1744 (right!31304 (left!30974 t!3709)))) (ite (< (height!1744 (left!30974 (left!30974 t!3709))) (height!1744 (right!31304 (left!30974 t!3709)))) (height!1744 (right!31304 (left!30974 t!3709))) (height!1744 (left!30974 (left!30974 t!3709)))))))

(assert (=> b!3752412 d!1094928))

(declare-fun d!1094930 () Bool)

(assert (=> d!1094930 (= (height!1744 (left!30974 (left!30974 t!3709))) (ite ((_ is Empty!12235) (left!30974 (left!30974 t!3709))) 0 (ite ((_ is Leaf!18983) (left!30974 (left!30974 t!3709))) 1 (cheight!12446 (left!30974 (left!30974 t!3709))))))))

(assert (=> b!3752412 d!1094930))

(declare-fun d!1094932 () Bool)

(assert (=> d!1094932 (= (height!1744 (right!31304 (left!30974 t!3709))) (ite ((_ is Empty!12235) (right!31304 (left!30974 t!3709))) 0 (ite ((_ is Leaf!18983) (right!31304 (left!30974 t!3709))) 1 (cheight!12446 (right!31304 (left!30974 t!3709))))))))

(assert (=> b!3752412 d!1094932))

(assert (=> d!1094732 d!1094726))

(assert (=> d!1094732 d!1094728))

(assert (=> d!1094732 d!1094730))

(declare-fun d!1094934 () Bool)

(assert (=> d!1094934 (= (list!14743 (xs!15437 (left!30974 (left!30974 t!3709)))) (innerList!12295 (xs!15437 (left!30974 (left!30974 t!3709)))))))

(assert (=> b!3752352 d!1094934))

(declare-fun d!1094936 () Bool)

(declare-fun res!1520761 () Bool)

(declare-fun e!2321230 () Bool)

(assert (=> d!1094936 (=> res!1520761 e!2321230)))

(assert (=> d!1094936 (= res!1520761 ((_ is Nil!40009) (list!14743 (xs!15437 (left!30974 t!3709)))))))

(assert (=> d!1094936 (= (forall!8231 (list!14743 (xs!15437 (left!30974 t!3709))) p!1451) e!2321230)))

(declare-fun b!3752636 () Bool)

(declare-fun e!2321231 () Bool)

(assert (=> b!3752636 (= e!2321230 e!2321231)))

(declare-fun res!1520762 () Bool)

(assert (=> b!3752636 (=> (not res!1520762) (not e!2321231))))

(assert (=> b!3752636 (= res!1520762 (dynLambda!17301 p!1451 (h!45429 (list!14743 (xs!15437 (left!30974 t!3709))))))))

(declare-fun b!3752637 () Bool)

(assert (=> b!3752637 (= e!2321231 (forall!8231 (t!303156 (list!14743 (xs!15437 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1094936 (not res!1520761)) b!3752636))

(assert (= (and b!3752636 res!1520762) b!3752637))

(declare-fun b_lambda!110071 () Bool)

(assert (=> (not b_lambda!110071) (not b!3752636)))

(declare-fun t!303184 () Bool)

(declare-fun tb!214693 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303184) tb!214693))

(declare-fun result!262182 () Bool)

(assert (=> tb!214693 (= result!262182 true)))

(assert (=> b!3752636 t!303184))

(declare-fun b_and!278855 () Bool)

(assert (= b_and!278853 (and (=> t!303184 result!262182) b_and!278855)))

(declare-fun m!4244125 () Bool)

(assert (=> b!3752636 m!4244125))

(declare-fun m!4244127 () Bool)

(assert (=> b!3752637 m!4244127))

(assert (=> d!1094784 d!1094936))

(assert (=> d!1094784 d!1094780))

(declare-fun d!1094938 () Bool)

(declare-fun _$8!533 () Bool)

(assert (=> d!1094938 (= _$8!533 (forall!8231 (list!14743 (xs!15437 (left!30974 t!3709))) p!1451))))

(assert (=> d!1094938 true))

(assert (=> d!1094938 (= (choose!22257 (xs!15437 (left!30974 t!3709)) p!1451) _$8!533)))

(declare-fun bs!575437 () Bool)

(assert (= bs!575437 d!1094938))

(assert (=> bs!575437 m!4243483))

(assert (=> bs!575437 m!4243483))

(assert (=> bs!575437 m!4243717))

(assert (=> d!1094784 d!1094938))

(declare-fun d!1094940 () Bool)

(declare-fun lt!1300032 () Int)

(assert (=> d!1094940 (= lt!1300032 (size!30104 (list!14742 (left!30974 (right!31304 t!3709)))))))

(assert (=> d!1094940 (= lt!1300032 (ite ((_ is Empty!12235) (left!30974 (right!31304 t!3709))) 0 (ite ((_ is Leaf!18983) (left!30974 (right!31304 t!3709))) (csize!24701 (left!30974 (right!31304 t!3709))) (csize!24700 (left!30974 (right!31304 t!3709))))))))

(assert (=> d!1094940 (= (size!30105 (left!30974 (right!31304 t!3709))) lt!1300032)))

(declare-fun bs!575438 () Bool)

(assert (= bs!575438 d!1094940))

(assert (=> bs!575438 m!4243489))

(assert (=> bs!575438 m!4243489))

(assert (=> bs!575438 m!4243627))

(assert (=> d!1094746 d!1094940))

(declare-fun d!1094942 () Bool)

(declare-fun lt!1300033 () Int)

(assert (=> d!1094942 (= lt!1300033 (size!30104 (list!14742 (right!31304 (right!31304 t!3709)))))))

(assert (=> d!1094942 (= lt!1300033 (ite ((_ is Empty!12235) (right!31304 (right!31304 t!3709))) 0 (ite ((_ is Leaf!18983) (right!31304 (right!31304 t!3709))) (csize!24701 (right!31304 (right!31304 t!3709))) (csize!24700 (right!31304 (right!31304 t!3709))))))))

(assert (=> d!1094942 (= (size!30105 (right!31304 (right!31304 t!3709))) lt!1300033)))

(declare-fun bs!575439 () Bool)

(assert (= bs!575439 d!1094942))

(assert (=> bs!575439 m!4243491))

(assert (=> bs!575439 m!4243491))

(assert (=> bs!575439 m!4243629))

(assert (=> d!1094746 d!1094942))

(declare-fun d!1094944 () Bool)

(declare-fun res!1520763 () Bool)

(declare-fun e!2321232 () Bool)

(assert (=> d!1094944 (=> (not res!1520763) (not e!2321232))))

(assert (=> d!1094944 (= res!1520763 (= (csize!24700 (right!31304 (right!31304 t!3709))) (+ (size!30105 (left!30974 (right!31304 (right!31304 t!3709)))) (size!30105 (right!31304 (right!31304 (right!31304 t!3709)))))))))

(assert (=> d!1094944 (= (inv!53567 (right!31304 (right!31304 t!3709))) e!2321232)))

(declare-fun b!3752638 () Bool)

(declare-fun res!1520764 () Bool)

(assert (=> b!3752638 (=> (not res!1520764) (not e!2321232))))

(assert (=> b!3752638 (= res!1520764 (and (not (= (left!30974 (right!31304 (right!31304 t!3709))) Empty!12235)) (not (= (right!31304 (right!31304 (right!31304 t!3709))) Empty!12235))))))

(declare-fun b!3752639 () Bool)

(declare-fun res!1520765 () Bool)

(assert (=> b!3752639 (=> (not res!1520765) (not e!2321232))))

(assert (=> b!3752639 (= res!1520765 (= (cheight!12446 (right!31304 (right!31304 t!3709))) (+ (max!0 (height!1744 (left!30974 (right!31304 (right!31304 t!3709)))) (height!1744 (right!31304 (right!31304 (right!31304 t!3709))))) 1)))))

(declare-fun b!3752640 () Bool)

(assert (=> b!3752640 (= e!2321232 (<= 0 (cheight!12446 (right!31304 (right!31304 t!3709)))))))

(assert (= (and d!1094944 res!1520763) b!3752638))

(assert (= (and b!3752638 res!1520764) b!3752639))

(assert (= (and b!3752639 res!1520765) b!3752640))

(declare-fun m!4244129 () Bool)

(assert (=> d!1094944 m!4244129))

(declare-fun m!4244131 () Bool)

(assert (=> d!1094944 m!4244131))

(declare-fun m!4244133 () Bool)

(assert (=> b!3752639 m!4244133))

(declare-fun m!4244135 () Bool)

(assert (=> b!3752639 m!4244135))

(assert (=> b!3752639 m!4244133))

(assert (=> b!3752639 m!4244135))

(declare-fun m!4244137 () Bool)

(assert (=> b!3752639 m!4244137))

(assert (=> b!3752403 d!1094944))

(declare-fun b!3752641 () Bool)

(declare-fun e!2321233 () List!40133)

(assert (=> b!3752641 (= e!2321233 (list!14742 (right!31304 t!3709)))))

(declare-fun b!3752643 () Bool)

(declare-fun res!1520766 () Bool)

(declare-fun e!2321234 () Bool)

(assert (=> b!3752643 (=> (not res!1520766) (not e!2321234))))

(declare-fun lt!1300034 () List!40133)

(assert (=> b!3752643 (= res!1520766 (= (size!30104 lt!1300034) (+ (size!30104 (t!303156 (list!14742 (left!30974 t!3709)))) (size!30104 (list!14742 (right!31304 t!3709))))))))

(declare-fun b!3752644 () Bool)

(assert (=> b!3752644 (= e!2321234 (or (not (= (list!14742 (right!31304 t!3709)) Nil!40009)) (= lt!1300034 (t!303156 (list!14742 (left!30974 t!3709))))))))

(declare-fun d!1094946 () Bool)

(assert (=> d!1094946 e!2321234))

(declare-fun res!1520767 () Bool)

(assert (=> d!1094946 (=> (not res!1520767) (not e!2321234))))

(assert (=> d!1094946 (= res!1520767 (= (content!5867 lt!1300034) ((_ map or) (content!5867 (t!303156 (list!14742 (left!30974 t!3709)))) (content!5867 (list!14742 (right!31304 t!3709))))))))

(assert (=> d!1094946 (= lt!1300034 e!2321233)))

(declare-fun c!649563 () Bool)

(assert (=> d!1094946 (= c!649563 ((_ is Nil!40009) (t!303156 (list!14742 (left!30974 t!3709)))))))

(assert (=> d!1094946 (= (++!9902 (t!303156 (list!14742 (left!30974 t!3709))) (list!14742 (right!31304 t!3709))) lt!1300034)))

(declare-fun b!3752642 () Bool)

(assert (=> b!3752642 (= e!2321233 (Cons!40009 (h!45429 (t!303156 (list!14742 (left!30974 t!3709)))) (++!9902 (t!303156 (t!303156 (list!14742 (left!30974 t!3709)))) (list!14742 (right!31304 t!3709)))))))

(assert (= (and d!1094946 c!649563) b!3752641))

(assert (= (and d!1094946 (not c!649563)) b!3752642))

(assert (= (and d!1094946 res!1520767) b!3752643))

(assert (= (and b!3752643 res!1520766) b!3752644))

(declare-fun m!4244139 () Bool)

(assert (=> b!3752643 m!4244139))

(declare-fun m!4244141 () Bool)

(assert (=> b!3752643 m!4244141))

(assert (=> b!3752643 m!4243415))

(assert (=> b!3752643 m!4243557))

(declare-fun m!4244143 () Bool)

(assert (=> d!1094946 m!4244143))

(assert (=> d!1094946 m!4244059))

(assert (=> d!1094946 m!4243415))

(assert (=> d!1094946 m!4243563))

(assert (=> b!3752642 m!4243415))

(declare-fun m!4244145 () Bool)

(assert (=> b!3752642 m!4244145))

(assert (=> b!3752328 d!1094946))

(declare-fun d!1094948 () Bool)

(declare-fun res!1520768 () Bool)

(declare-fun e!2321235 () Bool)

(assert (=> d!1094948 (=> (not res!1520768) (not e!2321235))))

(assert (=> d!1094948 (= res!1520768 (<= (size!30104 (list!14743 (xs!15437 (right!31304 (right!31304 t!3709))))) 512))))

(assert (=> d!1094948 (= (inv!53568 (right!31304 (right!31304 t!3709))) e!2321235)))

(declare-fun b!3752645 () Bool)

(declare-fun res!1520769 () Bool)

(assert (=> b!3752645 (=> (not res!1520769) (not e!2321235))))

(assert (=> b!3752645 (= res!1520769 (= (csize!24701 (right!31304 (right!31304 t!3709))) (size!30104 (list!14743 (xs!15437 (right!31304 (right!31304 t!3709)))))))))

(declare-fun b!3752646 () Bool)

(assert (=> b!3752646 (= e!2321235 (and (> (csize!24701 (right!31304 (right!31304 t!3709))) 0) (<= (csize!24701 (right!31304 (right!31304 t!3709))) 512)))))

(assert (= (and d!1094948 res!1520768) b!3752645))

(assert (= (and b!3752645 res!1520769) b!3752646))

(assert (=> d!1094948 m!4243647))

(assert (=> d!1094948 m!4243647))

(declare-fun m!4244147 () Bool)

(assert (=> d!1094948 m!4244147))

(assert (=> b!3752645 m!4243647))

(assert (=> b!3752645 m!4243647))

(assert (=> b!3752645 m!4244147))

(assert (=> b!3752405 d!1094948))

(declare-fun d!1094950 () Bool)

(assert (=> d!1094950 (= (inv!53566 (xs!15437 (right!31304 (right!31304 t!3709)))) (<= (size!30104 (innerList!12295 (xs!15437 (right!31304 (right!31304 t!3709))))) 2147483647))))

(declare-fun bs!575440 () Bool)

(assert (= bs!575440 d!1094950))

(declare-fun m!4244149 () Bool)

(assert (=> bs!575440 m!4244149))

(assert (=> b!3752426 d!1094950))

(assert (=> d!1094738 d!1094906))

(assert (=> d!1094738 d!1094744))

(declare-fun d!1094952 () Bool)

(declare-fun lt!1300035 () Int)

(assert (=> d!1094952 (= lt!1300035 (size!30104 (list!14742 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1094952 (= lt!1300035 (ite ((_ is Empty!12235) (left!30974 (left!30974 t!3709))) 0 (ite ((_ is Leaf!18983) (left!30974 (left!30974 t!3709))) (csize!24701 (left!30974 (left!30974 t!3709))) (csize!24700 (left!30974 (left!30974 t!3709))))))))

(assert (=> d!1094952 (= (size!30105 (left!30974 (left!30974 t!3709))) lt!1300035)))

(declare-fun bs!575441 () Bool)

(assert (= bs!575441 d!1094952))

(assert (=> bs!575441 m!4243449))

(assert (=> bs!575441 m!4243449))

(assert (=> bs!575441 m!4243591))

(assert (=> d!1094782 d!1094952))

(declare-fun d!1094954 () Bool)

(declare-fun lt!1300036 () Int)

(assert (=> d!1094954 (= lt!1300036 (size!30104 (list!14742 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094954 (= lt!1300036 (ite ((_ is Empty!12235) (right!31304 (left!30974 t!3709))) 0 (ite ((_ is Leaf!18983) (right!31304 (left!30974 t!3709))) (csize!24701 (right!31304 (left!30974 t!3709))) (csize!24700 (right!31304 (left!30974 t!3709))))))))

(assert (=> d!1094954 (= (size!30105 (right!31304 (left!30974 t!3709))) lt!1300036)))

(declare-fun bs!575442 () Bool)

(assert (= bs!575442 d!1094954))

(assert (=> bs!575442 m!4243451))

(assert (=> bs!575442 m!4243451))

(assert (=> bs!575442 m!4243593))

(assert (=> d!1094782 d!1094954))

(assert (=> b!3752335 d!1094770))

(declare-fun b!3752647 () Bool)

(declare-fun e!2321236 () List!40133)

(assert (=> b!3752647 (= e!2321236 (list!14742 (right!31304 (left!30974 t!3709))))))

(declare-fun b!3752649 () Bool)

(declare-fun res!1520770 () Bool)

(declare-fun e!2321237 () Bool)

(assert (=> b!3752649 (=> (not res!1520770) (not e!2321237))))

(declare-fun lt!1300037 () List!40133)

(assert (=> b!3752649 (= res!1520770 (= (size!30104 lt!1300037) (+ (size!30104 (t!303156 (list!14742 (left!30974 (left!30974 t!3709))))) (size!30104 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752650 () Bool)

(assert (=> b!3752650 (= e!2321237 (or (not (= (list!14742 (right!31304 (left!30974 t!3709))) Nil!40009)) (= lt!1300037 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))))))))

(declare-fun d!1094956 () Bool)

(assert (=> d!1094956 e!2321237))

(declare-fun res!1520771 () Bool)

(assert (=> d!1094956 (=> (not res!1520771) (not e!2321237))))

(assert (=> d!1094956 (= res!1520771 (= (content!5867 lt!1300037) ((_ map or) (content!5867 (t!303156 (list!14742 (left!30974 (left!30974 t!3709))))) (content!5867 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(assert (=> d!1094956 (= lt!1300037 e!2321236)))

(declare-fun c!649564 () Bool)

(assert (=> d!1094956 (= c!649564 ((_ is Nil!40009) (t!303156 (list!14742 (left!30974 (left!30974 t!3709))))))))

(assert (=> d!1094956 (= (++!9902 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 t!3709)))) lt!1300037)))

(declare-fun b!3752648 () Bool)

(assert (=> b!3752648 (= e!2321236 (Cons!40009 (h!45429 (t!303156 (list!14742 (left!30974 (left!30974 t!3709))))) (++!9902 (t!303156 (t!303156 (list!14742 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 t!3709))))))))

(assert (= (and d!1094956 c!649564) b!3752647))

(assert (= (and d!1094956 (not c!649564)) b!3752648))

(assert (= (and d!1094956 res!1520771) b!3752649))

(assert (= (and b!3752649 res!1520770) b!3752650))

(declare-fun m!4244151 () Bool)

(assert (=> b!3752649 m!4244151))

(assert (=> b!3752649 m!4243957))

(assert (=> b!3752649 m!4243451))

(assert (=> b!3752649 m!4243593))

(declare-fun m!4244153 () Bool)

(assert (=> d!1094956 m!4244153))

(declare-fun m!4244155 () Bool)

(assert (=> d!1094956 m!4244155))

(assert (=> d!1094956 m!4243451))

(assert (=> d!1094956 m!4243599))

(assert (=> b!3752648 m!4243451))

(declare-fun m!4244157 () Bool)

(assert (=> b!3752648 m!4244157))

(assert (=> b!3752347 d!1094956))

(declare-fun d!1094958 () Bool)

(assert (=> d!1094958 (= (max!0 (height!1744 (left!30974 t!3709)) (height!1744 (right!31304 t!3709))) (ite (< (height!1744 (left!30974 t!3709)) (height!1744 (right!31304 t!3709))) (height!1744 (right!31304 t!3709)) (height!1744 (left!30974 t!3709))))))

(assert (=> b!3752394 d!1094958))

(declare-fun d!1094960 () Bool)

(assert (=> d!1094960 (= (height!1744 (left!30974 t!3709)) (ite ((_ is Empty!12235) (left!30974 t!3709)) 0 (ite ((_ is Leaf!18983) (left!30974 t!3709)) 1 (cheight!12446 (left!30974 t!3709)))))))

(assert (=> b!3752394 d!1094960))

(assert (=> b!3752394 d!1094688))

(declare-fun d!1094962 () Bool)

(declare-fun c!649565 () Bool)

(assert (=> d!1094962 (= c!649565 ((_ is Nil!40009) lt!1299990))))

(declare-fun e!2321238 () (InoxSet T!69112))

(assert (=> d!1094962 (= (content!5867 lt!1299990) e!2321238)))

(declare-fun b!3752651 () Bool)

(assert (=> b!3752651 (= e!2321238 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752652 () Bool)

(assert (=> b!3752652 (= e!2321238 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 lt!1299990) true) (content!5867 (t!303156 lt!1299990))))))

(assert (= (and d!1094962 c!649565) b!3752651))

(assert (= (and d!1094962 (not c!649565)) b!3752652))

(declare-fun m!4244159 () Bool)

(assert (=> b!3752652 m!4244159))

(declare-fun m!4244161 () Bool)

(assert (=> b!3752652 m!4244161))

(assert (=> d!1094748 d!1094962))

(declare-fun d!1094964 () Bool)

(declare-fun c!649566 () Bool)

(assert (=> d!1094964 (= c!649566 ((_ is Nil!40009) (list!14742 (left!30974 (right!31304 t!3709)))))))

(declare-fun e!2321239 () (InoxSet T!69112))

(assert (=> d!1094964 (= (content!5867 (list!14742 (left!30974 (right!31304 t!3709)))) e!2321239)))

(declare-fun b!3752653 () Bool)

(assert (=> b!3752653 (= e!2321239 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752654 () Bool)

(assert (=> b!3752654 (= e!2321239 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (left!30974 (right!31304 t!3709)))) true) (content!5867 (t!303156 (list!14742 (left!30974 (right!31304 t!3709)))))))))

(assert (= (and d!1094964 c!649566) b!3752653))

(assert (= (and d!1094964 (not c!649566)) b!3752654))

(declare-fun m!4244163 () Bool)

(assert (=> b!3752654 m!4244163))

(assert (=> b!3752654 m!4244109))

(assert (=> d!1094748 d!1094964))

(declare-fun d!1094966 () Bool)

(declare-fun c!649567 () Bool)

(assert (=> d!1094966 (= c!649567 ((_ is Nil!40009) (list!14742 (right!31304 (right!31304 t!3709)))))))

(declare-fun e!2321240 () (InoxSet T!69112))

(assert (=> d!1094966 (= (content!5867 (list!14742 (right!31304 (right!31304 t!3709)))) e!2321240)))

(declare-fun b!3752655 () Bool)

(assert (=> b!3752655 (= e!2321240 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752656 () Bool)

(assert (=> b!3752656 (= e!2321240 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (right!31304 (right!31304 t!3709)))) true) (content!5867 (t!303156 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(assert (= (and d!1094966 c!649567) b!3752655))

(assert (= (and d!1094966 (not c!649567)) b!3752656))

(declare-fun m!4244165 () Bool)

(assert (=> b!3752656 m!4244165))

(declare-fun m!4244167 () Bool)

(assert (=> b!3752656 m!4244167))

(assert (=> d!1094748 d!1094966))

(declare-fun d!1094968 () Bool)

(declare-fun res!1520772 () Bool)

(declare-fun e!2321241 () Bool)

(assert (=> d!1094968 (=> res!1520772 e!2321241)))

(assert (=> d!1094968 (= res!1520772 ((_ is Nil!40009) (t!303156 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))))))))

(assert (=> d!1094968 (= (forall!8231 (t!303156 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)))) p!1451) e!2321241)))

(declare-fun b!3752657 () Bool)

(declare-fun e!2321242 () Bool)

(assert (=> b!3752657 (= e!2321241 e!2321242)))

(declare-fun res!1520773 () Bool)

(assert (=> b!3752657 (=> (not res!1520773) (not e!2321242))))

(assert (=> b!3752657 (= res!1520773 (dynLambda!17301 p!1451 (h!45429 (t!303156 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709)))))))))

(declare-fun b!3752658 () Bool)

(assert (=> b!3752658 (= e!2321242 (forall!8231 (t!303156 (t!303156 (++!9902 (list!14742 (left!30974 t!3709)) (list!14742 (right!31304 t!3709))))) p!1451))))

(assert (= (and d!1094968 (not res!1520772)) b!3752657))

(assert (= (and b!3752657 res!1520773) b!3752658))

(declare-fun b_lambda!110073 () Bool)

(assert (=> (not b_lambda!110073) (not b!3752657)))

(declare-fun t!303187 () Bool)

(declare-fun tb!214695 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303187) tb!214695))

(declare-fun result!262184 () Bool)

(assert (=> tb!214695 (= result!262184 true)))

(assert (=> b!3752657 t!303187))

(declare-fun b_and!278857 () Bool)

(assert (= b_and!278855 (and (=> t!303187 result!262184) b_and!278857)))

(declare-fun m!4244169 () Bool)

(assert (=> b!3752657 m!4244169))

(declare-fun m!4244171 () Bool)

(assert (=> b!3752658 m!4244171))

(assert (=> b!3752318 d!1094968))

(declare-fun d!1094970 () Bool)

(assert (=> d!1094970 (= (inv!53566 (xs!15437 (left!30974 (left!30974 t!3709)))) (<= (size!30104 (innerList!12295 (xs!15437 (left!30974 (left!30974 t!3709))))) 2147483647))))

(declare-fun bs!575443 () Bool)

(assert (= bs!575443 d!1094970))

(declare-fun m!4244173 () Bool)

(assert (=> bs!575443 m!4244173))

(assert (=> b!3752415 d!1094970))

(declare-fun d!1094972 () Bool)

(declare-fun lt!1300038 () Int)

(assert (=> d!1094972 (>= lt!1300038 0)))

(declare-fun e!2321243 () Int)

(assert (=> d!1094972 (= lt!1300038 e!2321243)))

(declare-fun c!649568 () Bool)

(assert (=> d!1094972 (= c!649568 ((_ is Nil!40009) (list!14743 (xs!15437 (left!30974 t!3709)))))))

(assert (=> d!1094972 (= (size!30104 (list!14743 (xs!15437 (left!30974 t!3709)))) lt!1300038)))

(declare-fun b!3752659 () Bool)

(assert (=> b!3752659 (= e!2321243 0)))

(declare-fun b!3752660 () Bool)

(assert (=> b!3752660 (= e!2321243 (+ 1 (size!30104 (t!303156 (list!14743 (xs!15437 (left!30974 t!3709)))))))))

(assert (= (and d!1094972 c!649568) b!3752659))

(assert (= (and d!1094972 (not c!649568)) b!3752660))

(declare-fun m!4244175 () Bool)

(assert (=> b!3752660 m!4244175))

(assert (=> d!1094734 d!1094972))

(assert (=> d!1094734 d!1094780))

(declare-fun b!3752661 () Bool)

(declare-fun e!2321244 () List!40133)

(assert (=> b!3752661 (= e!2321244 (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))))))

(declare-fun b!3752663 () Bool)

(declare-fun res!1520774 () Bool)

(declare-fun e!2321245 () Bool)

(assert (=> b!3752663 (=> (not res!1520774) (not e!2321245))))

(declare-fun lt!1300039 () List!40133)

(assert (=> b!3752663 (= res!1520774 (= (size!30104 lt!1300039) (+ (size!30104 (list!14742 (left!30974 (right!31304 (left!30974 t!3709))))) (size!30104 (list!14742 (right!31304 (right!31304 (left!30974 t!3709))))))))))

(declare-fun b!3752664 () Bool)

(assert (=> b!3752664 (= e!2321245 (or (not (= (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) Nil!40009)) (= lt!1300039 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))))))))

(declare-fun d!1094974 () Bool)

(assert (=> d!1094974 e!2321245))

(declare-fun res!1520775 () Bool)

(assert (=> d!1094974 (=> (not res!1520775) (not e!2321245))))

(assert (=> d!1094974 (= res!1520775 (= (content!5867 lt!1300039) ((_ map or) (content!5867 (list!14742 (left!30974 (right!31304 (left!30974 t!3709))))) (content!5867 (list!14742 (right!31304 (right!31304 (left!30974 t!3709))))))))))

(assert (=> d!1094974 (= lt!1300039 e!2321244)))

(declare-fun c!649569 () Bool)

(assert (=> d!1094974 (= c!649569 ((_ is Nil!40009) (list!14742 (left!30974 (right!31304 (left!30974 t!3709))))))))

(assert (=> d!1094974 (= (++!9902 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709))))) lt!1300039)))

(declare-fun b!3752662 () Bool)

(assert (=> b!3752662 (= e!2321244 (Cons!40009 (h!45429 (list!14742 (left!30974 (right!31304 (left!30974 t!3709))))) (++!9902 (t!303156 (list!14742 (left!30974 (right!31304 (left!30974 t!3709))))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))))))))

(assert (= (and d!1094974 c!649569) b!3752661))

(assert (= (and d!1094974 (not c!649569)) b!3752662))

(assert (= (and d!1094974 res!1520775) b!3752663))

(assert (= (and b!3752663 res!1520774) b!3752664))

(declare-fun m!4244177 () Bool)

(assert (=> b!3752663 m!4244177))

(assert (=> b!3752663 m!4243577))

(declare-fun m!4244179 () Bool)

(assert (=> b!3752663 m!4244179))

(assert (=> b!3752663 m!4243579))

(declare-fun m!4244181 () Bool)

(assert (=> b!3752663 m!4244181))

(declare-fun m!4244183 () Bool)

(assert (=> d!1094974 m!4244183))

(assert (=> d!1094974 m!4243577))

(declare-fun m!4244185 () Bool)

(assert (=> d!1094974 m!4244185))

(assert (=> d!1094974 m!4243579))

(declare-fun m!4244187 () Bool)

(assert (=> d!1094974 m!4244187))

(assert (=> b!3752662 m!4243579))

(declare-fun m!4244189 () Bool)

(assert (=> b!3752662 m!4244189))

(assert (=> b!3752357 d!1094974))

(declare-fun b!3752667 () Bool)

(declare-fun e!2321247 () List!40133)

(assert (=> b!3752667 (= e!2321247 (list!14743 (xs!15437 (left!30974 (right!31304 (left!30974 t!3709))))))))

(declare-fun b!3752666 () Bool)

(declare-fun e!2321246 () List!40133)

(assert (=> b!3752666 (= e!2321246 e!2321247)))

(declare-fun c!649571 () Bool)

(assert (=> b!3752666 (= c!649571 ((_ is Leaf!18983) (left!30974 (right!31304 (left!30974 t!3709)))))))

(declare-fun d!1094976 () Bool)

(declare-fun c!649570 () Bool)

(assert (=> d!1094976 (= c!649570 ((_ is Empty!12235) (left!30974 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094976 (= (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) e!2321246)))

(declare-fun b!3752668 () Bool)

(assert (=> b!3752668 (= e!2321247 (++!9902 (list!14742 (left!30974 (left!30974 (right!31304 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752665 () Bool)

(assert (=> b!3752665 (= e!2321246 Nil!40009)))

(assert (= (and d!1094976 c!649570) b!3752665))

(assert (= (and d!1094976 (not c!649570)) b!3752666))

(assert (= (and b!3752666 c!649571) b!3752667))

(assert (= (and b!3752666 (not c!649571)) b!3752668))

(declare-fun m!4244191 () Bool)

(assert (=> b!3752667 m!4244191))

(declare-fun m!4244193 () Bool)

(assert (=> b!3752668 m!4244193))

(declare-fun m!4244195 () Bool)

(assert (=> b!3752668 m!4244195))

(assert (=> b!3752668 m!4244193))

(assert (=> b!3752668 m!4244195))

(declare-fun m!4244197 () Bool)

(assert (=> b!3752668 m!4244197))

(assert (=> b!3752357 d!1094976))

(declare-fun b!3752671 () Bool)

(declare-fun e!2321249 () List!40133)

(assert (=> b!3752671 (= e!2321249 (list!14743 (xs!15437 (right!31304 (right!31304 (left!30974 t!3709))))))))

(declare-fun b!3752670 () Bool)

(declare-fun e!2321248 () List!40133)

(assert (=> b!3752670 (= e!2321248 e!2321249)))

(declare-fun c!649573 () Bool)

(assert (=> b!3752670 (= c!649573 ((_ is Leaf!18983) (right!31304 (right!31304 (left!30974 t!3709)))))))

(declare-fun d!1094978 () Bool)

(declare-fun c!649572 () Bool)

(assert (=> d!1094978 (= c!649572 ((_ is Empty!12235) (right!31304 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094978 (= (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) e!2321248)))

(declare-fun b!3752672 () Bool)

(assert (=> b!3752672 (= e!2321249 (++!9902 (list!14742 (left!30974 (right!31304 (right!31304 (left!30974 t!3709))))) (list!14742 (right!31304 (right!31304 (right!31304 (left!30974 t!3709)))))))))

(declare-fun b!3752669 () Bool)

(assert (=> b!3752669 (= e!2321248 Nil!40009)))

(assert (= (and d!1094978 c!649572) b!3752669))

(assert (= (and d!1094978 (not c!649572)) b!3752670))

(assert (= (and b!3752670 c!649573) b!3752671))

(assert (= (and b!3752670 (not c!649573)) b!3752672))

(declare-fun m!4244199 () Bool)

(assert (=> b!3752671 m!4244199))

(assert (=> b!3752672 m!4244039))

(assert (=> b!3752672 m!4244041))

(assert (=> b!3752672 m!4244039))

(assert (=> b!3752672 m!4244041))

(declare-fun m!4244201 () Bool)

(assert (=> b!3752672 m!4244201))

(assert (=> b!3752357 d!1094978))

(declare-fun d!1094980 () Bool)

(declare-fun lt!1300040 () Bool)

(assert (=> d!1094980 (= lt!1300040 (forall!8231 (list!14743 (xs!15437 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (=> d!1094980 (= lt!1300040 (choose!22257 (xs!15437 (left!30974 (left!30974 t!3709))) p!1451))))

(assert (=> d!1094980 (= (forall!8230 (xs!15437 (left!30974 (left!30974 t!3709))) p!1451) lt!1300040)))

(declare-fun bs!575444 () Bool)

(assert (= bs!575444 d!1094980))

(assert (=> bs!575444 m!4243603))

(assert (=> bs!575444 m!4243603))

(declare-fun m!4244203 () Bool)

(assert (=> bs!575444 m!4244203))

(declare-fun m!4244205 () Bool)

(assert (=> bs!575444 m!4244205))

(assert (=> b!3752408 d!1094980))

(declare-fun d!1094982 () Bool)

(declare-fun lt!1300041 () Int)

(assert (=> d!1094982 (>= lt!1300041 0)))

(declare-fun e!2321250 () Int)

(assert (=> d!1094982 (= lt!1300041 e!2321250)))

(declare-fun c!649574 () Bool)

(assert (=> d!1094982 (= c!649574 ((_ is Nil!40009) (innerList!12295 (xs!15437 (left!30974 t!3709)))))))

(assert (=> d!1094982 (= (size!30104 (innerList!12295 (xs!15437 (left!30974 t!3709)))) lt!1300041)))

(declare-fun b!3752673 () Bool)

(assert (=> b!3752673 (= e!2321250 0)))

(declare-fun b!3752674 () Bool)

(assert (=> b!3752674 (= e!2321250 (+ 1 (size!30104 (t!303156 (innerList!12295 (xs!15437 (left!30974 t!3709)))))))))

(assert (= (and d!1094982 c!649574) b!3752673))

(assert (= (and d!1094982 (not c!649574)) b!3752674))

(declare-fun m!4244207 () Bool)

(assert (=> b!3752674 m!4244207))

(assert (=> d!1094766 d!1094982))

(declare-fun d!1094984 () Bool)

(declare-fun lt!1300042 () Int)

(assert (=> d!1094984 (>= lt!1300042 0)))

(declare-fun e!2321251 () Int)

(assert (=> d!1094984 (= lt!1300042 e!2321251)))

(declare-fun c!649575 () Bool)

(assert (=> d!1094984 (= c!649575 ((_ is Nil!40009) (t!303156 (innerList!12295 (xs!15437 t!3709)))))))

(assert (=> d!1094984 (= (size!30104 (t!303156 (innerList!12295 (xs!15437 t!3709)))) lt!1300042)))

(declare-fun b!3752675 () Bool)

(assert (=> b!3752675 (= e!2321251 0)))

(declare-fun b!3752676 () Bool)

(assert (=> b!3752676 (= e!2321251 (+ 1 (size!30104 (t!303156 (t!303156 (innerList!12295 (xs!15437 t!3709)))))))))

(assert (= (and d!1094984 c!649575) b!3752675))

(assert (= (and d!1094984 (not c!649575)) b!3752676))

(declare-fun m!4244209 () Bool)

(assert (=> b!3752676 m!4244209))

(assert (=> b!3752392 d!1094984))

(declare-fun d!1094986 () Bool)

(declare-fun c!649576 () Bool)

(assert (=> d!1094986 (= c!649576 ((_ is Node!12235) (left!30974 (right!31304 (left!30974 t!3709)))))))

(declare-fun e!2321252 () Bool)

(assert (=> d!1094986 (= (inv!53565 (left!30974 (right!31304 (left!30974 t!3709)))) e!2321252)))

(declare-fun b!3752677 () Bool)

(assert (=> b!3752677 (= e!2321252 (inv!53567 (left!30974 (right!31304 (left!30974 t!3709)))))))

(declare-fun b!3752678 () Bool)

(declare-fun e!2321253 () Bool)

(assert (=> b!3752678 (= e!2321252 e!2321253)))

(declare-fun res!1520776 () Bool)

(assert (=> b!3752678 (= res!1520776 (not ((_ is Leaf!18983) (left!30974 (right!31304 (left!30974 t!3709))))))))

(assert (=> b!3752678 (=> res!1520776 e!2321253)))

(declare-fun b!3752679 () Bool)

(assert (=> b!3752679 (= e!2321253 (inv!53568 (left!30974 (right!31304 (left!30974 t!3709)))))))

(assert (= (and d!1094986 c!649576) b!3752677))

(assert (= (and d!1094986 (not c!649576)) b!3752678))

(assert (= (and b!3752678 (not res!1520776)) b!3752679))

(declare-fun m!4244211 () Bool)

(assert (=> b!3752677 m!4244211))

(declare-fun m!4244213 () Bool)

(assert (=> b!3752679 m!4244213))

(assert (=> b!3752417 d!1094986))

(declare-fun d!1094988 () Bool)

(declare-fun c!649577 () Bool)

(assert (=> d!1094988 (= c!649577 ((_ is Node!12235) (right!31304 (right!31304 (left!30974 t!3709)))))))

(declare-fun e!2321254 () Bool)

(assert (=> d!1094988 (= (inv!53565 (right!31304 (right!31304 (left!30974 t!3709)))) e!2321254)))

(declare-fun b!3752680 () Bool)

(assert (=> b!3752680 (= e!2321254 (inv!53567 (right!31304 (right!31304 (left!30974 t!3709)))))))

(declare-fun b!3752681 () Bool)

(declare-fun e!2321255 () Bool)

(assert (=> b!3752681 (= e!2321254 e!2321255)))

(declare-fun res!1520777 () Bool)

(assert (=> b!3752681 (= res!1520777 (not ((_ is Leaf!18983) (right!31304 (right!31304 (left!30974 t!3709))))))))

(assert (=> b!3752681 (=> res!1520777 e!2321255)))

(declare-fun b!3752682 () Bool)

(assert (=> b!3752682 (= e!2321255 (inv!53568 (right!31304 (right!31304 (left!30974 t!3709)))))))

(assert (= (and d!1094988 c!649577) b!3752680))

(assert (= (and d!1094988 (not c!649577)) b!3752681))

(assert (= (and b!3752681 (not res!1520777)) b!3752682))

(declare-fun m!4244215 () Bool)

(assert (=> b!3752680 m!4244215))

(declare-fun m!4244217 () Bool)

(assert (=> b!3752682 m!4244217))

(assert (=> b!3752417 d!1094988))

(declare-fun d!1094990 () Bool)

(assert (=> d!1094990 (= (inv!53566 (xs!15437 (left!30974 (right!31304 t!3709)))) (<= (size!30104 (innerList!12295 (xs!15437 (left!30974 (right!31304 t!3709))))) 2147483647))))

(declare-fun bs!575445 () Bool)

(assert (= bs!575445 d!1094990))

(declare-fun m!4244219 () Bool)

(assert (=> bs!575445 m!4244219))

(assert (=> b!3752423 d!1094990))

(declare-fun d!1094992 () Bool)

(declare-fun e!2321256 () Bool)

(assert (=> d!1094992 (= (forall!8231 (++!9902 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709))))) p!1451) e!2321256)))

(declare-fun res!1520778 () Bool)

(assert (=> d!1094992 (=> (not res!1520778) (not e!2321256))))

(assert (=> d!1094992 (= res!1520778 (forall!8231 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun lt!1300043 () Unit!57738)

(assert (=> d!1094992 (= lt!1300043 (choose!22255 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (=> d!1094992 (= (lemmaForallConcat!211 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451) lt!1300043)))

(declare-fun b!3752683 () Bool)

(assert (=> b!3752683 (= e!2321256 (forall!8231 (list!14742 (right!31304 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1094992 res!1520778) b!3752683))

(assert (=> d!1094992 m!4243577))

(assert (=> d!1094992 m!4243579))

(assert (=> d!1094992 m!4243613))

(assert (=> d!1094992 m!4243613))

(declare-fun m!4244221 () Bool)

(assert (=> d!1094992 m!4244221))

(assert (=> d!1094992 m!4243577))

(declare-fun m!4244223 () Bool)

(assert (=> d!1094992 m!4244223))

(assert (=> d!1094992 m!4243577))

(assert (=> d!1094992 m!4243579))

(declare-fun m!4244225 () Bool)

(assert (=> d!1094992 m!4244225))

(assert (=> b!3752683 m!4243579))

(assert (=> b!3752683 m!4244049))

(assert (=> b!3752344 d!1094992))

(assert (=> b!3752344 d!1094976))

(assert (=> b!3752344 d!1094978))

(declare-fun b!3752687 () Bool)

(declare-fun e!2321259 () Bool)

(assert (=> b!3752687 (= e!2321259 (forall!8229 (right!31304 (left!30974 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun b!3752686 () Bool)

(declare-fun e!2321257 () Bool)

(assert (=> b!3752686 (= e!2321257 e!2321259)))

(declare-fun lt!1300045 () Unit!57738)

(assert (=> b!3752686 (= lt!1300045 (lemmaForallConcat!211 (list!14742 (left!30974 (left!30974 (right!31304 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 (right!31304 (left!30974 t!3709))))) p!1451))))

(declare-fun res!1520779 () Bool)

(assert (=> b!3752686 (= res!1520779 (forall!8229 (left!30974 (left!30974 (right!31304 (left!30974 t!3709)))) p!1451))))

(assert (=> b!3752686 (=> (not res!1520779) (not e!2321259))))

(declare-fun b!3752685 () Bool)

(assert (=> b!3752685 (= e!2321257 (forall!8230 (xs!15437 (left!30974 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun d!1094994 () Bool)

(declare-fun lt!1300044 () Bool)

(assert (=> d!1094994 (= lt!1300044 (forall!8231 (list!14742 (left!30974 (right!31304 (left!30974 t!3709)))) p!1451))))

(declare-fun e!2321258 () Bool)

(assert (=> d!1094994 (= lt!1300044 e!2321258)))

(declare-fun res!1520780 () Bool)

(assert (=> d!1094994 (=> res!1520780 e!2321258)))

(assert (=> d!1094994 (= res!1520780 ((_ is Empty!12235) (left!30974 (right!31304 (left!30974 t!3709)))))))

(assert (=> d!1094994 (= (forall!8229 (left!30974 (right!31304 (left!30974 t!3709))) p!1451) lt!1300044)))

(declare-fun b!3752684 () Bool)

(assert (=> b!3752684 (= e!2321258 e!2321257)))

(declare-fun c!649578 () Bool)

(assert (=> b!3752684 (= c!649578 ((_ is Leaf!18983) (left!30974 (right!31304 (left!30974 t!3709)))))))

(assert (= (and d!1094994 (not res!1520780)) b!3752684))

(assert (= (and b!3752684 c!649578) b!3752685))

(assert (= (and b!3752684 (not c!649578)) b!3752686))

(assert (= (and b!3752686 res!1520779) b!3752687))

(declare-fun m!4244227 () Bool)

(assert (=> b!3752687 m!4244227))

(assert (=> b!3752686 m!4244193))

(assert (=> b!3752686 m!4244195))

(assert (=> b!3752686 m!4244193))

(assert (=> b!3752686 m!4244195))

(declare-fun m!4244229 () Bool)

(assert (=> b!3752686 m!4244229))

(declare-fun m!4244231 () Bool)

(assert (=> b!3752686 m!4244231))

(declare-fun m!4244233 () Bool)

(assert (=> b!3752685 m!4244233))

(assert (=> d!1094994 m!4243577))

(assert (=> d!1094994 m!4243577))

(assert (=> d!1094994 m!4244223))

(assert (=> b!3752344 d!1094994))

(declare-fun d!1094996 () Bool)

(declare-fun lt!1300046 () Int)

(assert (=> d!1094996 (= lt!1300046 (size!30104 (list!14742 (left!30974 t!3709))))))

(assert (=> d!1094996 (= lt!1300046 (ite ((_ is Empty!12235) (left!30974 t!3709)) 0 (ite ((_ is Leaf!18983) (left!30974 t!3709)) (csize!24701 (left!30974 t!3709)) (csize!24700 (left!30974 t!3709)))))))

(assert (=> d!1094996 (= (size!30105 (left!30974 t!3709)) lt!1300046)))

(declare-fun bs!575446 () Bool)

(assert (= bs!575446 d!1094996))

(assert (=> bs!575446 m!4243413))

(assert (=> bs!575446 m!4243413))

(assert (=> bs!575446 m!4243555))

(assert (=> d!1094764 d!1094996))

(declare-fun d!1094998 () Bool)

(declare-fun lt!1300047 () Int)

(assert (=> d!1094998 (= lt!1300047 (size!30104 (list!14742 (right!31304 t!3709))))))

(assert (=> d!1094998 (= lt!1300047 (ite ((_ is Empty!12235) (right!31304 t!3709)) 0 (ite ((_ is Leaf!18983) (right!31304 t!3709)) (csize!24701 (right!31304 t!3709)) (csize!24700 (right!31304 t!3709)))))))

(assert (=> d!1094998 (= (size!30105 (right!31304 t!3709)) lt!1300047)))

(declare-fun bs!575447 () Bool)

(assert (= bs!575447 d!1094998))

(assert (=> bs!575447 m!4243415))

(assert (=> bs!575447 m!4243415))

(assert (=> bs!575447 m!4243557))

(assert (=> d!1094764 d!1094998))

(assert (=> b!3752340 d!1094972))

(assert (=> b!3752340 d!1094780))

(assert (=> b!3752283 d!1094772))

(assert (=> b!3752283 d!1094774))

(declare-fun b!3752691 () Bool)

(declare-fun e!2321262 () Bool)

(assert (=> b!3752691 (= e!2321262 (forall!8229 (right!31304 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun b!3752690 () Bool)

(declare-fun e!2321260 () Bool)

(assert (=> b!3752690 (= e!2321260 e!2321262)))

(declare-fun lt!1300049 () Unit!57738)

(assert (=> b!3752690 (= lt!1300049 (lemmaForallConcat!211 (list!14742 (left!30974 (right!31304 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (right!31304 (left!30974 (left!30974 t!3709))))) p!1451))))

(declare-fun res!1520781 () Bool)

(assert (=> b!3752690 (= res!1520781 (forall!8229 (left!30974 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(assert (=> b!3752690 (=> (not res!1520781) (not e!2321262))))

(declare-fun b!3752689 () Bool)

(assert (=> b!3752689 (= e!2321260 (forall!8230 (xs!15437 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun d!1095000 () Bool)

(declare-fun lt!1300048 () Bool)

(assert (=> d!1095000 (= lt!1300048 (forall!8231 (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) p!1451))))

(declare-fun e!2321261 () Bool)

(assert (=> d!1095000 (= lt!1300048 e!2321261)))

(declare-fun res!1520782 () Bool)

(assert (=> d!1095000 (=> res!1520782 e!2321261)))

(assert (=> d!1095000 (= res!1520782 ((_ is Empty!12235) (right!31304 (left!30974 (left!30974 t!3709)))))))

(assert (=> d!1095000 (= (forall!8229 (right!31304 (left!30974 (left!30974 t!3709))) p!1451) lt!1300048)))

(declare-fun b!3752688 () Bool)

(assert (=> b!3752688 (= e!2321261 e!2321260)))

(declare-fun c!649579 () Bool)

(assert (=> b!3752688 (= c!649579 ((_ is Leaf!18983) (right!31304 (left!30974 (left!30974 t!3709)))))))

(assert (= (and d!1095000 (not res!1520782)) b!3752688))

(assert (= (and b!3752688 c!649579) b!3752689))

(assert (= (and b!3752688 (not c!649579)) b!3752690))

(assert (= (and b!3752690 res!1520781) b!3752691))

(declare-fun m!4244235 () Bool)

(assert (=> b!3752691 m!4244235))

(assert (=> b!3752690 m!4244013))

(assert (=> b!3752690 m!4244015))

(assert (=> b!3752690 m!4244013))

(assert (=> b!3752690 m!4244015))

(declare-fun m!4244237 () Bool)

(assert (=> b!3752690 m!4244237))

(declare-fun m!4244239 () Bool)

(assert (=> b!3752690 m!4244239))

(declare-fun m!4244241 () Bool)

(assert (=> b!3752689 m!4244241))

(assert (=> d!1095000 m!4243607))

(assert (=> d!1095000 m!4243607))

(assert (=> d!1095000 m!4244001))

(assert (=> b!3752410 d!1095000))

(declare-fun d!1095002 () Bool)

(declare-fun lt!1300050 () Int)

(assert (=> d!1095002 (>= lt!1300050 0)))

(declare-fun e!2321263 () Int)

(assert (=> d!1095002 (= lt!1300050 e!2321263)))

(declare-fun c!649580 () Bool)

(assert (=> d!1095002 (= c!649580 ((_ is Nil!40009) lt!1299990))))

(assert (=> d!1095002 (= (size!30104 lt!1299990) lt!1300050)))

(declare-fun b!3752692 () Bool)

(assert (=> b!3752692 (= e!2321263 0)))

(declare-fun b!3752693 () Bool)

(assert (=> b!3752693 (= e!2321263 (+ 1 (size!30104 (t!303156 lt!1299990))))))

(assert (= (and d!1095002 c!649580) b!3752692))

(assert (= (and d!1095002 (not c!649580)) b!3752693))

(declare-fun m!4244243 () Bool)

(assert (=> b!3752693 m!4244243))

(assert (=> b!3752369 d!1095002))

(declare-fun d!1095004 () Bool)

(declare-fun lt!1300051 () Int)

(assert (=> d!1095004 (>= lt!1300051 0)))

(declare-fun e!2321264 () Int)

(assert (=> d!1095004 (= lt!1300051 e!2321264)))

(declare-fun c!649581 () Bool)

(assert (=> d!1095004 (= c!649581 ((_ is Nil!40009) (list!14742 (left!30974 (right!31304 t!3709)))))))

(assert (=> d!1095004 (= (size!30104 (list!14742 (left!30974 (right!31304 t!3709)))) lt!1300051)))

(declare-fun b!3752694 () Bool)

(assert (=> b!3752694 (= e!2321264 0)))

(declare-fun b!3752695 () Bool)

(assert (=> b!3752695 (= e!2321264 (+ 1 (size!30104 (t!303156 (list!14742 (left!30974 (right!31304 t!3709)))))))))

(assert (= (and d!1095004 c!649581) b!3752694))

(assert (= (and d!1095004 (not c!649581)) b!3752695))

(assert (=> b!3752695 m!4244105))

(assert (=> b!3752369 d!1095004))

(declare-fun d!1095006 () Bool)

(declare-fun lt!1300052 () Int)

(assert (=> d!1095006 (>= lt!1300052 0)))

(declare-fun e!2321265 () Int)

(assert (=> d!1095006 (= lt!1300052 e!2321265)))

(declare-fun c!649582 () Bool)

(assert (=> d!1095006 (= c!649582 ((_ is Nil!40009) (list!14742 (right!31304 (right!31304 t!3709)))))))

(assert (=> d!1095006 (= (size!30104 (list!14742 (right!31304 (right!31304 t!3709)))) lt!1300052)))

(declare-fun b!3752696 () Bool)

(assert (=> b!3752696 (= e!2321265 0)))

(declare-fun b!3752697 () Bool)

(assert (=> b!3752697 (= e!2321265 (+ 1 (size!30104 (t!303156 (list!14742 (right!31304 (right!31304 t!3709)))))))))

(assert (= (and d!1095006 c!649582) b!3752696))

(assert (= (and d!1095006 (not c!649582)) b!3752697))

(declare-fun m!4244245 () Bool)

(assert (=> b!3752697 m!4244245))

(assert (=> b!3752369 d!1095006))

(declare-fun d!1095008 () Bool)

(declare-fun res!1520783 () Bool)

(declare-fun e!2321266 () Bool)

(assert (=> d!1095008 (=> res!1520783 e!2321266)))

(assert (=> d!1095008 (= res!1520783 ((_ is Nil!40009) (t!303156 (list!14742 (left!30974 t!3709)))))))

(assert (=> d!1095008 (= (forall!8231 (t!303156 (list!14742 (left!30974 t!3709))) p!1451) e!2321266)))

(declare-fun b!3752698 () Bool)

(declare-fun e!2321267 () Bool)

(assert (=> b!3752698 (= e!2321266 e!2321267)))

(declare-fun res!1520784 () Bool)

(assert (=> b!3752698 (=> (not res!1520784) (not e!2321267))))

(assert (=> b!3752698 (= res!1520784 (dynLambda!17301 p!1451 (h!45429 (t!303156 (list!14742 (left!30974 t!3709))))))))

(declare-fun b!3752699 () Bool)

(assert (=> b!3752699 (= e!2321267 (forall!8231 (t!303156 (t!303156 (list!14742 (left!30974 t!3709)))) p!1451))))

(assert (= (and d!1095008 (not res!1520783)) b!3752698))

(assert (= (and b!3752698 res!1520784) b!3752699))

(declare-fun b_lambda!110075 () Bool)

(assert (=> (not b_lambda!110075) (not b!3752698)))

(declare-fun t!303189 () Bool)

(declare-fun tb!214697 () Bool)

(assert (=> (and start!352344 (= p!1451 p!1451) t!303189) tb!214697))

(declare-fun result!262186 () Bool)

(assert (=> tb!214697 (= result!262186 true)))

(assert (=> b!3752698 t!303189))

(declare-fun b_and!278859 () Bool)

(assert (= b_and!278857 (and (=> t!303189 result!262186) b_and!278859)))

(declare-fun m!4244247 () Bool)

(assert (=> b!3752698 m!4244247))

(declare-fun m!4244249 () Bool)

(assert (=> b!3752699 m!4244249))

(assert (=> b!3752332 d!1095008))

(declare-fun d!1095010 () Bool)

(assert (=> d!1095010 (= (list!14743 (xs!15437 (right!31304 (right!31304 t!3709)))) (innerList!12295 (xs!15437 (right!31304 (right!31304 t!3709)))))))

(assert (=> b!3752377 d!1095010))

(declare-fun b!3752700 () Bool)

(declare-fun e!2321268 () List!40133)

(assert (=> b!3752700 (= e!2321268 (list!14742 (right!31304 (left!30974 (right!31304 t!3709)))))))

(declare-fun b!3752702 () Bool)

(declare-fun res!1520785 () Bool)

(declare-fun e!2321269 () Bool)

(assert (=> b!3752702 (=> (not res!1520785) (not e!2321269))))

(declare-fun lt!1300053 () List!40133)

(assert (=> b!3752702 (= res!1520785 (= (size!30104 lt!1300053) (+ (size!30104 (list!14742 (left!30974 (left!30974 (right!31304 t!3709))))) (size!30104 (list!14742 (right!31304 (left!30974 (right!31304 t!3709))))))))))

(declare-fun b!3752703 () Bool)

(assert (=> b!3752703 (= e!2321269 (or (not (= (list!14742 (right!31304 (left!30974 (right!31304 t!3709)))) Nil!40009)) (= lt!1300053 (list!14742 (left!30974 (left!30974 (right!31304 t!3709)))))))))

(declare-fun d!1095012 () Bool)

(assert (=> d!1095012 e!2321269))

(declare-fun res!1520786 () Bool)

(assert (=> d!1095012 (=> (not res!1520786) (not e!2321269))))

(assert (=> d!1095012 (= res!1520786 (= (content!5867 lt!1300053) ((_ map or) (content!5867 (list!14742 (left!30974 (left!30974 (right!31304 t!3709))))) (content!5867 (list!14742 (right!31304 (left!30974 (right!31304 t!3709))))))))))

(assert (=> d!1095012 (= lt!1300053 e!2321268)))

(declare-fun c!649583 () Bool)

(assert (=> d!1095012 (= c!649583 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 (right!31304 t!3709))))))))

(assert (=> d!1095012 (= (++!9902 (list!14742 (left!30974 (left!30974 (right!31304 t!3709)))) (list!14742 (right!31304 (left!30974 (right!31304 t!3709))))) lt!1300053)))

(declare-fun b!3752701 () Bool)

(assert (=> b!3752701 (= e!2321268 (Cons!40009 (h!45429 (list!14742 (left!30974 (left!30974 (right!31304 t!3709))))) (++!9902 (t!303156 (list!14742 (left!30974 (left!30974 (right!31304 t!3709))))) (list!14742 (right!31304 (left!30974 (right!31304 t!3709)))))))))

(assert (= (and d!1095012 c!649583) b!3752700))

(assert (= (and d!1095012 (not c!649583)) b!3752701))

(assert (= (and d!1095012 res!1520786) b!3752702))

(assert (= (and b!3752702 res!1520785) b!3752703))

(declare-fun m!4244251 () Bool)

(assert (=> b!3752702 m!4244251))

(assert (=> b!3752702 m!4243641))

(declare-fun m!4244253 () Bool)

(assert (=> b!3752702 m!4244253))

(assert (=> b!3752702 m!4243643))

(declare-fun m!4244255 () Bool)

(assert (=> b!3752702 m!4244255))

(declare-fun m!4244257 () Bool)

(assert (=> d!1095012 m!4244257))

(assert (=> d!1095012 m!4243641))

(declare-fun m!4244259 () Bool)

(assert (=> d!1095012 m!4244259))

(assert (=> d!1095012 m!4243643))

(declare-fun m!4244261 () Bool)

(assert (=> d!1095012 m!4244261))

(assert (=> b!3752701 m!4243643))

(declare-fun m!4244263 () Bool)

(assert (=> b!3752701 m!4244263))

(assert (=> b!3752374 d!1095012))

(declare-fun b!3752706 () Bool)

(declare-fun e!2321271 () List!40133)

(assert (=> b!3752706 (= e!2321271 (list!14743 (xs!15437 (left!30974 (left!30974 (right!31304 t!3709))))))))

(declare-fun b!3752705 () Bool)

(declare-fun e!2321270 () List!40133)

(assert (=> b!3752705 (= e!2321270 e!2321271)))

(declare-fun c!649585 () Bool)

(assert (=> b!3752705 (= c!649585 ((_ is Leaf!18983) (left!30974 (left!30974 (right!31304 t!3709)))))))

(declare-fun d!1095014 () Bool)

(declare-fun c!649584 () Bool)

(assert (=> d!1095014 (= c!649584 ((_ is Empty!12235) (left!30974 (left!30974 (right!31304 t!3709)))))))

(assert (=> d!1095014 (= (list!14742 (left!30974 (left!30974 (right!31304 t!3709)))) e!2321270)))

(declare-fun b!3752707 () Bool)

(assert (=> b!3752707 (= e!2321271 (++!9902 (list!14742 (left!30974 (left!30974 (left!30974 (right!31304 t!3709))))) (list!14742 (right!31304 (left!30974 (left!30974 (right!31304 t!3709)))))))))

(declare-fun b!3752704 () Bool)

(assert (=> b!3752704 (= e!2321270 Nil!40009)))

(assert (= (and d!1095014 c!649584) b!3752704))

(assert (= (and d!1095014 (not c!649584)) b!3752705))

(assert (= (and b!3752705 c!649585) b!3752706))

(assert (= (and b!3752705 (not c!649585)) b!3752707))

(declare-fun m!4244265 () Bool)

(assert (=> b!3752706 m!4244265))

(declare-fun m!4244267 () Bool)

(assert (=> b!3752707 m!4244267))

(declare-fun m!4244269 () Bool)

(assert (=> b!3752707 m!4244269))

(assert (=> b!3752707 m!4244267))

(assert (=> b!3752707 m!4244269))

(declare-fun m!4244271 () Bool)

(assert (=> b!3752707 m!4244271))

(assert (=> b!3752374 d!1095014))

(declare-fun b!3752710 () Bool)

(declare-fun e!2321273 () List!40133)

(assert (=> b!3752710 (= e!2321273 (list!14743 (xs!15437 (right!31304 (left!30974 (right!31304 t!3709))))))))

(declare-fun b!3752709 () Bool)

(declare-fun e!2321272 () List!40133)

(assert (=> b!3752709 (= e!2321272 e!2321273)))

(declare-fun c!649587 () Bool)

(assert (=> b!3752709 (= c!649587 ((_ is Leaf!18983) (right!31304 (left!30974 (right!31304 t!3709)))))))

(declare-fun d!1095016 () Bool)

(declare-fun c!649586 () Bool)

(assert (=> d!1095016 (= c!649586 ((_ is Empty!12235) (right!31304 (left!30974 (right!31304 t!3709)))))))

(assert (=> d!1095016 (= (list!14742 (right!31304 (left!30974 (right!31304 t!3709)))) e!2321272)))

(declare-fun b!3752711 () Bool)

(assert (=> b!3752711 (= e!2321273 (++!9902 (list!14742 (left!30974 (right!31304 (left!30974 (right!31304 t!3709))))) (list!14742 (right!31304 (right!31304 (left!30974 (right!31304 t!3709)))))))))

(declare-fun b!3752708 () Bool)

(assert (=> b!3752708 (= e!2321272 Nil!40009)))

(assert (= (and d!1095016 c!649586) b!3752708))

(assert (= (and d!1095016 (not c!649586)) b!3752709))

(assert (= (and b!3752709 c!649587) b!3752710))

(assert (= (and b!3752709 (not c!649587)) b!3752711))

(declare-fun m!4244273 () Bool)

(assert (=> b!3752710 m!4244273))

(declare-fun m!4244275 () Bool)

(assert (=> b!3752711 m!4244275))

(declare-fun m!4244277 () Bool)

(assert (=> b!3752711 m!4244277))

(assert (=> b!3752711 m!4244275))

(assert (=> b!3752711 m!4244277))

(declare-fun m!4244279 () Bool)

(assert (=> b!3752711 m!4244279))

(assert (=> b!3752374 d!1095016))

(declare-fun d!1095018 () Bool)

(declare-fun c!649588 () Bool)

(assert (=> d!1095018 (= c!649588 ((_ is Nil!40009) lt!1299989))))

(declare-fun e!2321274 () (InoxSet T!69112))

(assert (=> d!1095018 (= (content!5867 lt!1299989) e!2321274)))

(declare-fun b!3752712 () Bool)

(assert (=> b!3752712 (= e!2321274 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752713 () Bool)

(assert (=> b!3752713 (= e!2321274 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 lt!1299989) true) (content!5867 (t!303156 lt!1299989))))))

(assert (= (and d!1095018 c!649588) b!3752712))

(assert (= (and d!1095018 (not c!649588)) b!3752713))

(declare-fun m!4244281 () Bool)

(assert (=> b!3752713 m!4244281))

(declare-fun m!4244283 () Bool)

(assert (=> b!3752713 m!4244283))

(assert (=> d!1094740 d!1095018))

(declare-fun d!1095020 () Bool)

(declare-fun c!649589 () Bool)

(assert (=> d!1095020 (= c!649589 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 t!3709)))))))

(declare-fun e!2321275 () (InoxSet T!69112))

(assert (=> d!1095020 (= (content!5867 (list!14742 (left!30974 (left!30974 t!3709)))) e!2321275)))

(declare-fun b!3752714 () Bool)

(assert (=> b!3752714 (= e!2321275 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752715 () Bool)

(assert (=> b!3752715 (= e!2321275 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (left!30974 (left!30974 t!3709)))) true) (content!5867 (t!303156 (list!14742 (left!30974 (left!30974 t!3709)))))))))

(assert (= (and d!1095020 c!649589) b!3752714))

(assert (= (and d!1095020 (not c!649589)) b!3752715))

(declare-fun m!4244285 () Bool)

(assert (=> b!3752715 m!4244285))

(assert (=> b!3752715 m!4244155))

(assert (=> d!1094740 d!1095020))

(declare-fun d!1095022 () Bool)

(declare-fun c!649590 () Bool)

(assert (=> d!1095022 (= c!649590 ((_ is Nil!40009) (list!14742 (right!31304 (left!30974 t!3709)))))))

(declare-fun e!2321276 () (InoxSet T!69112))

(assert (=> d!1095022 (= (content!5867 (list!14742 (right!31304 (left!30974 t!3709)))) e!2321276)))

(declare-fun b!3752716 () Bool)

(assert (=> b!3752716 (= e!2321276 ((as const (Array T!69112 Bool)) false))))

(declare-fun b!3752717 () Bool)

(assert (=> b!3752717 (= e!2321276 ((_ map or) (store ((as const (Array T!69112 Bool)) false) (h!45429 (list!14742 (right!31304 (left!30974 t!3709)))) true) (content!5867 (t!303156 (list!14742 (right!31304 (left!30974 t!3709)))))))))

(assert (= (and d!1095022 c!649590) b!3752716))

(assert (= (and d!1095022 (not c!649590)) b!3752717))

(declare-fun m!4244287 () Bool)

(assert (=> b!3752717 m!4244287))

(declare-fun m!4244289 () Bool)

(assert (=> b!3752717 m!4244289))

(assert (=> d!1094740 d!1095022))

(assert (=> b!3752280 d!1094758))

(assert (=> b!3752280 d!1094760))

(declare-fun b!3752718 () Bool)

(declare-fun e!2321277 () List!40133)

(assert (=> b!3752718 (= e!2321277 (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))))))

(declare-fun b!3752720 () Bool)

(declare-fun res!1520787 () Bool)

(declare-fun e!2321278 () Bool)

(assert (=> b!3752720 (=> (not res!1520787) (not e!2321278))))

(declare-fun lt!1300054 () List!40133)

(assert (=> b!3752720 (= res!1520787 (= (size!30104 lt!1300054) (+ (size!30104 (list!14742 (left!30974 (left!30974 (left!30974 t!3709))))) (size!30104 (list!14742 (right!31304 (left!30974 (left!30974 t!3709))))))))))

(declare-fun b!3752721 () Bool)

(assert (=> b!3752721 (= e!2321278 (or (not (= (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))) Nil!40009)) (= lt!1300054 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))))))))

(declare-fun d!1095024 () Bool)

(assert (=> d!1095024 e!2321278))

(declare-fun res!1520788 () Bool)

(assert (=> d!1095024 (=> (not res!1520788) (not e!2321278))))

(assert (=> d!1095024 (= res!1520788 (= (content!5867 lt!1300054) ((_ map or) (content!5867 (list!14742 (left!30974 (left!30974 (left!30974 t!3709))))) (content!5867 (list!14742 (right!31304 (left!30974 (left!30974 t!3709))))))))))

(assert (=> d!1095024 (= lt!1300054 e!2321277)))

(declare-fun c!649591 () Bool)

(assert (=> d!1095024 (= c!649591 ((_ is Nil!40009) (list!14742 (left!30974 (left!30974 (left!30974 t!3709))))))))

(assert (=> d!1095024 (= (++!9902 (list!14742 (left!30974 (left!30974 (left!30974 t!3709)))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709))))) lt!1300054)))

(declare-fun b!3752719 () Bool)

(assert (=> b!3752719 (= e!2321277 (Cons!40009 (h!45429 (list!14742 (left!30974 (left!30974 (left!30974 t!3709))))) (++!9902 (t!303156 (list!14742 (left!30974 (left!30974 (left!30974 t!3709))))) (list!14742 (right!31304 (left!30974 (left!30974 t!3709)))))))))

(assert (= (and d!1095024 c!649591) b!3752718))

(assert (= (and d!1095024 (not c!649591)) b!3752719))

(assert (= (and d!1095024 res!1520788) b!3752720))

(assert (= (and b!3752720 res!1520787) b!3752721))

(declare-fun m!4244291 () Bool)

(assert (=> b!3752720 m!4244291))

(assert (=> b!3752720 m!4243605))

(declare-fun m!4244293 () Bool)

(assert (=> b!3752720 m!4244293))

(assert (=> b!3752720 m!4243607))

(declare-fun m!4244295 () Bool)

(assert (=> b!3752720 m!4244295))

(declare-fun m!4244297 () Bool)

(assert (=> d!1095024 m!4244297))

(assert (=> d!1095024 m!4243605))

(declare-fun m!4244299 () Bool)

(assert (=> d!1095024 m!4244299))

(assert (=> d!1095024 m!4243607))

(declare-fun m!4244301 () Bool)

(assert (=> d!1095024 m!4244301))

(assert (=> b!3752719 m!4243607))

(declare-fun m!4244303 () Bool)

(assert (=> b!3752719 m!4244303))

(assert (=> b!3752353 d!1095024))

(assert (=> b!3752353 d!1094886))

(assert (=> b!3752353 d!1094888))

(assert (=> d!1094778 d!1094874))

(assert (=> d!1094778 d!1094742))

(declare-fun d!1095026 () Bool)

(declare-fun lt!1300055 () Int)

(assert (=> d!1095026 (>= lt!1300055 0)))

(declare-fun e!2321279 () Int)

(assert (=> d!1095026 (= lt!1300055 e!2321279)))

(declare-fun c!649592 () Bool)

(assert (=> d!1095026 (= c!649592 ((_ is Nil!40009) lt!1299986))))

(assert (=> d!1095026 (= (size!30104 lt!1299986) lt!1300055)))

(declare-fun b!3752722 () Bool)

(assert (=> b!3752722 (= e!2321279 0)))

(declare-fun b!3752723 () Bool)

(assert (=> b!3752723 (= e!2321279 (+ 1 (size!30104 (t!303156 lt!1299986))))))

(assert (= (and d!1095026 c!649592) b!3752722))

(assert (= (and d!1095026 (not c!649592)) b!3752723))

(declare-fun m!4244305 () Bool)

(assert (=> b!3752723 m!4244305))

(assert (=> b!3752329 d!1095026))

(declare-fun d!1095028 () Bool)

(declare-fun lt!1300056 () Int)

(assert (=> d!1095028 (>= lt!1300056 0)))

(declare-fun e!2321280 () Int)

(assert (=> d!1095028 (= lt!1300056 e!2321280)))

(declare-fun c!649593 () Bool)

(assert (=> d!1095028 (= c!649593 ((_ is Nil!40009) (list!14742 (left!30974 t!3709))))))

(assert (=> d!1095028 (= (size!30104 (list!14742 (left!30974 t!3709))) lt!1300056)))

(declare-fun b!3752724 () Bool)

(assert (=> b!3752724 (= e!2321280 0)))

(declare-fun b!3752725 () Bool)

(assert (=> b!3752725 (= e!2321280 (+ 1 (size!30104 (t!303156 (list!14742 (left!30974 t!3709))))))))

(assert (= (and d!1095028 c!649593) b!3752724))

(assert (= (and d!1095028 (not c!649593)) b!3752725))

(assert (=> b!3752725 m!4244141))

(assert (=> b!3752329 d!1095028))

(declare-fun d!1095030 () Bool)

(declare-fun lt!1300057 () Int)

(assert (=> d!1095030 (>= lt!1300057 0)))

(declare-fun e!2321281 () Int)

(assert (=> d!1095030 (= lt!1300057 e!2321281)))

(declare-fun c!649594 () Bool)

(assert (=> d!1095030 (= c!649594 ((_ is Nil!40009) (list!14742 (right!31304 t!3709))))))

(assert (=> d!1095030 (= (size!30104 (list!14742 (right!31304 t!3709))) lt!1300057)))

(declare-fun b!3752726 () Bool)

(assert (=> b!3752726 (= e!2321281 0)))

(declare-fun b!3752727 () Bool)

(assert (=> b!3752727 (= e!2321281 (+ 1 (size!30104 (t!303156 (list!14742 (right!31304 t!3709))))))))

(assert (= (and d!1095030 c!649594) b!3752726))

(assert (= (and d!1095030 (not c!649594)) b!3752727))

(declare-fun m!4244307 () Bool)

(assert (=> b!3752727 m!4244307))

(assert (=> b!3752329 d!1095030))

(declare-fun d!1095032 () Bool)

(declare-fun c!649595 () Bool)

(assert (=> d!1095032 (= c!649595 ((_ is Node!12235) (left!30974 (right!31304 (right!31304 t!3709)))))))

(declare-fun e!2321282 () Bool)

(assert (=> d!1095032 (= (inv!53565 (left!30974 (right!31304 (right!31304 t!3709)))) e!2321282)))

(declare-fun b!3752728 () Bool)

(assert (=> b!3752728 (= e!2321282 (inv!53567 (left!30974 (right!31304 (right!31304 t!3709)))))))

(declare-fun b!3752729 () Bool)

(declare-fun e!2321283 () Bool)

(assert (=> b!3752729 (= e!2321282 e!2321283)))

(declare-fun res!1520789 () Bool)

(assert (=> b!3752729 (= res!1520789 (not ((_ is Leaf!18983) (left!30974 (right!31304 (right!31304 t!3709))))))))

(assert (=> b!3752729 (=> res!1520789 e!2321283)))

(declare-fun b!3752730 () Bool)

(assert (=> b!3752730 (= e!2321283 (inv!53568 (left!30974 (right!31304 (right!31304 t!3709)))))))

(assert (= (and d!1095032 c!649595) b!3752728))

(assert (= (and d!1095032 (not c!649595)) b!3752729))

(assert (= (and b!3752729 (not res!1520789)) b!3752730))

(declare-fun m!4244309 () Bool)

(assert (=> b!3752728 m!4244309))

(declare-fun m!4244311 () Bool)

(assert (=> b!3752730 m!4244311))

(assert (=> b!3752425 d!1095032))

(declare-fun d!1095034 () Bool)

(declare-fun c!649596 () Bool)

(assert (=> d!1095034 (= c!649596 ((_ is Node!12235) (right!31304 (right!31304 (right!31304 t!3709)))))))

(declare-fun e!2321284 () Bool)

(assert (=> d!1095034 (= (inv!53565 (right!31304 (right!31304 (right!31304 t!3709)))) e!2321284)))

(declare-fun b!3752731 () Bool)

(assert (=> b!3752731 (= e!2321284 (inv!53567 (right!31304 (right!31304 (right!31304 t!3709)))))))

(declare-fun b!3752732 () Bool)

(declare-fun e!2321285 () Bool)

(assert (=> b!3752732 (= e!2321284 e!2321285)))

(declare-fun res!1520790 () Bool)

(assert (=> b!3752732 (= res!1520790 (not ((_ is Leaf!18983) (right!31304 (right!31304 (right!31304 t!3709))))))))

(assert (=> b!3752732 (=> res!1520790 e!2321285)))

(declare-fun b!3752733 () Bool)

(assert (=> b!3752733 (= e!2321285 (inv!53568 (right!31304 (right!31304 (right!31304 t!3709)))))))

(assert (= (and d!1095034 c!649596) b!3752731))

(assert (= (and d!1095034 (not c!649596)) b!3752732))

(assert (= (and b!3752732 (not res!1520790)) b!3752733))

(declare-fun m!4244313 () Bool)

(assert (=> b!3752731 m!4244313))

(declare-fun m!4244315 () Bool)

(assert (=> b!3752733 m!4244315))

(assert (=> b!3752425 d!1095034))

(declare-fun b!3752734 () Bool)

(declare-fun e!2321286 () Bool)

(declare-fun tp!1145821 () Bool)

(assert (=> b!3752734 (= e!2321286 (and tp_is_empty!19051 tp!1145821))))

(assert (=> b!3752416 (= tp!1145793 e!2321286)))

(assert (= (and b!3752416 ((_ is Cons!40009) (innerList!12295 (xs!15437 (left!30974 (left!30974 t!3709)))))) b!3752734))

(declare-fun e!2321287 () Bool)

(declare-fun tp!1145823 () Bool)

(declare-fun b!3752735 () Bool)

(declare-fun tp!1145822 () Bool)

(assert (=> b!3752735 (= e!2321287 (and (inv!53565 (left!30974 (left!30974 (left!30974 (right!31304 t!3709))))) tp!1145823 (inv!53565 (right!31304 (left!30974 (left!30974 (right!31304 t!3709))))) tp!1145822))))

(declare-fun b!3752737 () Bool)

(declare-fun e!2321288 () Bool)

(declare-fun tp!1145824 () Bool)

(assert (=> b!3752737 (= e!2321288 tp!1145824)))

(declare-fun b!3752736 () Bool)

(assert (=> b!3752736 (= e!2321287 (and (inv!53566 (xs!15437 (left!30974 (left!30974 (right!31304 t!3709))))) e!2321288))))

(assert (=> b!3752422 (= tp!1145800 (and (inv!53565 (left!30974 (left!30974 (right!31304 t!3709)))) e!2321287))))

(assert (= (and b!3752422 ((_ is Node!12235) (left!30974 (left!30974 (right!31304 t!3709))))) b!3752735))

(assert (= b!3752736 b!3752737))

(assert (= (and b!3752422 ((_ is Leaf!18983) (left!30974 (left!30974 (right!31304 t!3709))))) b!3752736))

(declare-fun m!4244317 () Bool)

(assert (=> b!3752735 m!4244317))

(declare-fun m!4244319 () Bool)

(assert (=> b!3752735 m!4244319))

(declare-fun m!4244321 () Bool)

(assert (=> b!3752736 m!4244321))

(assert (=> b!3752422 m!4243733))

(declare-fun e!2321289 () Bool)

(declare-fun tp!1145825 () Bool)

(declare-fun tp!1145826 () Bool)

(declare-fun b!3752738 () Bool)

(assert (=> b!3752738 (= e!2321289 (and (inv!53565 (left!30974 (right!31304 (left!30974 (right!31304 t!3709))))) tp!1145826 (inv!53565 (right!31304 (right!31304 (left!30974 (right!31304 t!3709))))) tp!1145825))))

(declare-fun b!3752740 () Bool)

(declare-fun e!2321290 () Bool)

(declare-fun tp!1145827 () Bool)

(assert (=> b!3752740 (= e!2321290 tp!1145827)))

(declare-fun b!3752739 () Bool)

(assert (=> b!3752739 (= e!2321289 (and (inv!53566 (xs!15437 (right!31304 (left!30974 (right!31304 t!3709))))) e!2321290))))

(assert (=> b!3752422 (= tp!1145799 (and (inv!53565 (right!31304 (left!30974 (right!31304 t!3709)))) e!2321289))))

(assert (= (and b!3752422 ((_ is Node!12235) (right!31304 (left!30974 (right!31304 t!3709))))) b!3752738))

(assert (= b!3752739 b!3752740))

(assert (= (and b!3752422 ((_ is Leaf!18983) (right!31304 (left!30974 (right!31304 t!3709))))) b!3752739))

(declare-fun m!4244323 () Bool)

(assert (=> b!3752738 m!4244323))

(declare-fun m!4244325 () Bool)

(assert (=> b!3752738 m!4244325))

(declare-fun m!4244327 () Bool)

(assert (=> b!3752739 m!4244327))

(assert (=> b!3752422 m!4243735))

(declare-fun b!3752741 () Bool)

(declare-fun e!2321291 () Bool)

(declare-fun tp!1145828 () Bool)

(assert (=> b!3752741 (= e!2321291 (and tp_is_empty!19051 tp!1145828))))

(assert (=> b!3752427 (= tp!1145804 e!2321291)))

(assert (= (and b!3752427 ((_ is Cons!40009) (innerList!12295 (xs!15437 (right!31304 (right!31304 t!3709)))))) b!3752741))

(declare-fun b!3752742 () Bool)

(declare-fun e!2321292 () Bool)

(declare-fun tp!1145829 () Bool)

(assert (=> b!3752742 (= e!2321292 (and tp_is_empty!19051 tp!1145829))))

(assert (=> b!3752424 (= tp!1145801 e!2321292)))

(assert (= (and b!3752424 ((_ is Cons!40009) (innerList!12295 (xs!15437 (left!30974 (right!31304 t!3709)))))) b!3752742))

(declare-fun b!3752743 () Bool)

(declare-fun e!2321293 () Bool)

(declare-fun tp!1145830 () Bool)

(assert (=> b!3752743 (= e!2321293 (and tp_is_empty!19051 tp!1145830))))

(assert (=> b!3752420 (= tp!1145797 e!2321293)))

(assert (= (and b!3752420 ((_ is Cons!40009) (t!303156 (innerList!12295 (xs!15437 (right!31304 t!3709)))))) b!3752743))

(declare-fun b!3752744 () Bool)

(declare-fun e!2321294 () Bool)

(declare-fun tp!1145832 () Bool)

(declare-fun tp!1145831 () Bool)

(assert (=> b!3752744 (= e!2321294 (and (inv!53565 (left!30974 (left!30974 (right!31304 (left!30974 t!3709))))) tp!1145832 (inv!53565 (right!31304 (left!30974 (right!31304 (left!30974 t!3709))))) tp!1145831))))

(declare-fun b!3752746 () Bool)

(declare-fun e!2321295 () Bool)

(declare-fun tp!1145833 () Bool)

(assert (=> b!3752746 (= e!2321295 tp!1145833)))

(declare-fun b!3752745 () Bool)

(assert (=> b!3752745 (= e!2321294 (and (inv!53566 (xs!15437 (left!30974 (right!31304 (left!30974 t!3709))))) e!2321295))))

(assert (=> b!3752417 (= tp!1145795 (and (inv!53565 (left!30974 (right!31304 (left!30974 t!3709)))) e!2321294))))

(assert (= (and b!3752417 ((_ is Node!12235) (left!30974 (right!31304 (left!30974 t!3709))))) b!3752744))

(assert (= b!3752745 b!3752746))

(assert (= (and b!3752417 ((_ is Leaf!18983) (left!30974 (right!31304 (left!30974 t!3709))))) b!3752745))

(declare-fun m!4244329 () Bool)

(assert (=> b!3752744 m!4244329))

(declare-fun m!4244331 () Bool)

(assert (=> b!3752744 m!4244331))

(declare-fun m!4244333 () Bool)

(assert (=> b!3752745 m!4244333))

(assert (=> b!3752417 m!4243727))

(declare-fun e!2321296 () Bool)

(declare-fun b!3752747 () Bool)

(declare-fun tp!1145835 () Bool)

(declare-fun tp!1145834 () Bool)

(assert (=> b!3752747 (= e!2321296 (and (inv!53565 (left!30974 (right!31304 (right!31304 (left!30974 t!3709))))) tp!1145835 (inv!53565 (right!31304 (right!31304 (right!31304 (left!30974 t!3709))))) tp!1145834))))

(declare-fun b!3752749 () Bool)

(declare-fun e!2321297 () Bool)

(declare-fun tp!1145836 () Bool)

(assert (=> b!3752749 (= e!2321297 tp!1145836)))

(declare-fun b!3752748 () Bool)

(assert (=> b!3752748 (= e!2321296 (and (inv!53566 (xs!15437 (right!31304 (right!31304 (left!30974 t!3709))))) e!2321297))))

(assert (=> b!3752417 (= tp!1145794 (and (inv!53565 (right!31304 (right!31304 (left!30974 t!3709)))) e!2321296))))

(assert (= (and b!3752417 ((_ is Node!12235) (right!31304 (right!31304 (left!30974 t!3709))))) b!3752747))

(assert (= b!3752748 b!3752749))

(assert (= (and b!3752417 ((_ is Leaf!18983) (right!31304 (right!31304 (left!30974 t!3709))))) b!3752748))

(declare-fun m!4244335 () Bool)

(assert (=> b!3752747 m!4244335))

(declare-fun m!4244337 () Bool)

(assert (=> b!3752747 m!4244337))

(declare-fun m!4244339 () Bool)

(assert (=> b!3752748 m!4244339))

(assert (=> b!3752417 m!4243729))

(declare-fun tp!1145838 () Bool)

(declare-fun b!3752750 () Bool)

(declare-fun e!2321298 () Bool)

(declare-fun tp!1145837 () Bool)

(assert (=> b!3752750 (= e!2321298 (and (inv!53565 (left!30974 (left!30974 (left!30974 (left!30974 t!3709))))) tp!1145838 (inv!53565 (right!31304 (left!30974 (left!30974 (left!30974 t!3709))))) tp!1145837))))

(declare-fun b!3752752 () Bool)

(declare-fun e!2321299 () Bool)

(declare-fun tp!1145839 () Bool)

(assert (=> b!3752752 (= e!2321299 tp!1145839)))

(declare-fun b!3752751 () Bool)

(assert (=> b!3752751 (= e!2321298 (and (inv!53566 (xs!15437 (left!30974 (left!30974 (left!30974 t!3709))))) e!2321299))))

(assert (=> b!3752414 (= tp!1145792 (and (inv!53565 (left!30974 (left!30974 (left!30974 t!3709)))) e!2321298))))

(assert (= (and b!3752414 ((_ is Node!12235) (left!30974 (left!30974 (left!30974 t!3709))))) b!3752750))

(assert (= b!3752751 b!3752752))

(assert (= (and b!3752414 ((_ is Leaf!18983) (left!30974 (left!30974 (left!30974 t!3709))))) b!3752751))

(declare-fun m!4244341 () Bool)

(assert (=> b!3752750 m!4244341))

(declare-fun m!4244343 () Bool)

(assert (=> b!3752750 m!4244343))

(declare-fun m!4244345 () Bool)

(assert (=> b!3752751 m!4244345))

(assert (=> b!3752414 m!4243721))

(declare-fun b!3752753 () Bool)

(declare-fun e!2321300 () Bool)

(declare-fun tp!1145840 () Bool)

(declare-fun tp!1145841 () Bool)

(assert (=> b!3752753 (= e!2321300 (and (inv!53565 (left!30974 (right!31304 (left!30974 (left!30974 t!3709))))) tp!1145841 (inv!53565 (right!31304 (right!31304 (left!30974 (left!30974 t!3709))))) tp!1145840))))

(declare-fun b!3752755 () Bool)

(declare-fun e!2321301 () Bool)

(declare-fun tp!1145842 () Bool)

(assert (=> b!3752755 (= e!2321301 tp!1145842)))

(declare-fun b!3752754 () Bool)

(assert (=> b!3752754 (= e!2321300 (and (inv!53566 (xs!15437 (right!31304 (left!30974 (left!30974 t!3709))))) e!2321301))))

(assert (=> b!3752414 (= tp!1145791 (and (inv!53565 (right!31304 (left!30974 (left!30974 t!3709)))) e!2321300))))

(assert (= (and b!3752414 ((_ is Node!12235) (right!31304 (left!30974 (left!30974 t!3709))))) b!3752753))

(assert (= b!3752754 b!3752755))

(assert (= (and b!3752414 ((_ is Leaf!18983) (right!31304 (left!30974 (left!30974 t!3709))))) b!3752754))

(declare-fun m!4244347 () Bool)

(assert (=> b!3752753 m!4244347))

(declare-fun m!4244349 () Bool)

(assert (=> b!3752753 m!4244349))

(declare-fun m!4244351 () Bool)

(assert (=> b!3752754 m!4244351))

(assert (=> b!3752414 m!4243723))

(declare-fun b!3752756 () Bool)

(declare-fun e!2321302 () Bool)

(declare-fun tp!1145843 () Bool)

(assert (=> b!3752756 (= e!2321302 (and tp_is_empty!19051 tp!1145843))))

(assert (=> b!3752419 (= tp!1145796 e!2321302)))

(assert (= (and b!3752419 ((_ is Cons!40009) (innerList!12295 (xs!15437 (right!31304 (left!30974 t!3709)))))) b!3752756))

(declare-fun b!3752757 () Bool)

(declare-fun tp!1145844 () Bool)

(declare-fun e!2321303 () Bool)

(declare-fun tp!1145845 () Bool)

(assert (=> b!3752757 (= e!2321303 (and (inv!53565 (left!30974 (left!30974 (right!31304 (right!31304 t!3709))))) tp!1145845 (inv!53565 (right!31304 (left!30974 (right!31304 (right!31304 t!3709))))) tp!1145844))))

(declare-fun b!3752759 () Bool)

(declare-fun e!2321304 () Bool)

(declare-fun tp!1145846 () Bool)

(assert (=> b!3752759 (= e!2321304 tp!1145846)))

(declare-fun b!3752758 () Bool)

(assert (=> b!3752758 (= e!2321303 (and (inv!53566 (xs!15437 (left!30974 (right!31304 (right!31304 t!3709))))) e!2321304))))

(assert (=> b!3752425 (= tp!1145803 (and (inv!53565 (left!30974 (right!31304 (right!31304 t!3709)))) e!2321303))))

(assert (= (and b!3752425 ((_ is Node!12235) (left!30974 (right!31304 (right!31304 t!3709))))) b!3752757))

(assert (= b!3752758 b!3752759))

(assert (= (and b!3752425 ((_ is Leaf!18983) (left!30974 (right!31304 (right!31304 t!3709))))) b!3752758))

(declare-fun m!4244353 () Bool)

(assert (=> b!3752757 m!4244353))

(declare-fun m!4244355 () Bool)

(assert (=> b!3752757 m!4244355))

(declare-fun m!4244357 () Bool)

(assert (=> b!3752758 m!4244357))

(assert (=> b!3752425 m!4243739))

(declare-fun b!3752760 () Bool)

(declare-fun tp!1145847 () Bool)

(declare-fun e!2321305 () Bool)

(declare-fun tp!1145848 () Bool)

(assert (=> b!3752760 (= e!2321305 (and (inv!53565 (left!30974 (right!31304 (right!31304 (right!31304 t!3709))))) tp!1145848 (inv!53565 (right!31304 (right!31304 (right!31304 (right!31304 t!3709))))) tp!1145847))))

(declare-fun b!3752762 () Bool)

(declare-fun e!2321306 () Bool)

(declare-fun tp!1145849 () Bool)

(assert (=> b!3752762 (= e!2321306 tp!1145849)))

(declare-fun b!3752761 () Bool)

(assert (=> b!3752761 (= e!2321305 (and (inv!53566 (xs!15437 (right!31304 (right!31304 (right!31304 t!3709))))) e!2321306))))

(assert (=> b!3752425 (= tp!1145802 (and (inv!53565 (right!31304 (right!31304 (right!31304 t!3709)))) e!2321305))))

(assert (= (and b!3752425 ((_ is Node!12235) (right!31304 (right!31304 (right!31304 t!3709))))) b!3752760))

(assert (= b!3752761 b!3752762))

(assert (= (and b!3752425 ((_ is Leaf!18983) (right!31304 (right!31304 (right!31304 t!3709))))) b!3752761))

(declare-fun m!4244359 () Bool)

(assert (=> b!3752760 m!4244359))

(declare-fun m!4244361 () Bool)

(assert (=> b!3752760 m!4244361))

(declare-fun m!4244363 () Bool)

(assert (=> b!3752761 m!4244363))

(assert (=> b!3752425 m!4243741))

(declare-fun b!3752763 () Bool)

(declare-fun e!2321307 () Bool)

(declare-fun tp!1145850 () Bool)

(assert (=> b!3752763 (= e!2321307 (and tp_is_empty!19051 tp!1145850))))

(assert (=> b!3752421 (= tp!1145798 e!2321307)))

(assert (= (and b!3752421 ((_ is Cons!40009) (t!303156 (t!303156 (innerList!12295 (xs!15437 t!3709)))))) b!3752763))

(declare-fun b!3752764 () Bool)

(declare-fun e!2321308 () Bool)

(declare-fun tp!1145851 () Bool)

(assert (=> b!3752764 (= e!2321308 (and tp_is_empty!19051 tp!1145851))))

(assert (=> b!3752428 (= tp!1145805 e!2321308)))

(assert (= (and b!3752428 ((_ is Cons!40009) (t!303156 (innerList!12295 (xs!15437 (left!30974 t!3709)))))) b!3752764))

(declare-fun b_lambda!110077 () Bool)

(assert (= b_lambda!110067 (or (and start!352344 b_free!100419) b_lambda!110077)))

(declare-fun b_lambda!110079 () Bool)

(assert (= b_lambda!110073 (or (and start!352344 b_free!100419) b_lambda!110079)))

(declare-fun b_lambda!110081 () Bool)

(assert (= b_lambda!110071 (or (and start!352344 b_free!100419) b_lambda!110081)))

(declare-fun b_lambda!110083 () Bool)

(assert (= b_lambda!110075 (or (and start!352344 b_free!100419) b_lambda!110083)))

(declare-fun b_lambda!110085 () Bool)

(assert (= b_lambda!110069 (or (and start!352344 b_free!100419) b_lambda!110085)))

(declare-fun b_lambda!110087 () Bool)

(assert (= b_lambda!110063 (or (and start!352344 b_free!100419) b_lambda!110087)))

(declare-fun b_lambda!110089 () Bool)

(assert (= b_lambda!110065 (or (and start!352344 b_free!100419) b_lambda!110089)))

(check-sat (not b!3752745) (not b!3752560) (not b!3752667) (not b!3752643) (not b!3752425) (not b!3752602) (not b!3752717) (not b_lambda!110079) (not b!3752628) (not b!3752685) (not b!3752591) (not b!3752764) (not d!1094940) (not b!3752752) (not d!1094970) (not b!3752614) (not b!3752735) (not d!1094956) (not b!3752612) (not b!3752680) (not b!3752740) (not b!3752689) (not b!3752600) (not b!3752634) (not d!1095000) (not b!3752706) (not b!3752625) (not d!1095012) (not b!3752682) (not d!1094896) (not d!1094884) (not b!3752579) (not b!3752639) (not b!3752637) (not b!3752749) (not b!3752761) (not d!1094948) (not b!3752587) (not b!3752762) (not d!1094974) (not b_lambda!110083) (not b!3752545) (not b!3752697) (not b!3752642) (not b!3752593) (not b!3752677) (not d!1094892) (not b!3752707) (not d!1094944) (not b!3752648) (not b!3752608) (not b!3752699) (not b!3752610) (not b!3752758) (not b!3752756) (not b!3752720) (not b!3752649) (not d!1094904) (not b!3752586) (not b!3752556) (not b!3752663) (not b!3752746) (not b!3752582) (not d!1094922) (not b!3752668) (not b!3752550) (not d!1094950) (not b!3752652) (not b!3752763) (not b_lambda!110085) (not b!3752742) (not b!3752672) (not b!3752748) (not b!3752686) (not b!3752757) (not d!1094846) (not b!3752723) (not d!1094938) (not b!3752679) (not b!3752691) (not b_lambda!110089) (not b!3752727) (not d!1095024) (not b!3752683) (not b_lambda!110045) (not d!1094880) (not d!1094946) (not b!3752645) (not b!3752701) (not b!3752617) (not d!1094980) (not d!1094994) (not d!1094908) (not b!3752565) tp_is_empty!19051 (not b!3752713) (not d!1094990) (not b!3752632) (not b!3752572) (not b!3752576) (not d!1094876) (not b!3752755) (not d!1094942) (not b!3752590) (not b!3752551) (not b!3752594) (not b!3752417) (not b!3752658) (not b!3752731) (not b!3752690) (not d!1094914) (not b!3752671) (not b!3752554) b_and!278859 (not b!3752754) (not b!3752621) (not b!3752676) (not b!3752753) (not b!3752674) (not b!3752564) (not b!3752570) (not b_lambda!110077) (not b!3752747) (not b!3752616) (not b_next!101123) (not b_lambda!110081) (not b!3752575) (not b!3752751) (not b!3752739) (not b!3752629) (not b!3752422) (not b!3752558) (not b!3752734) (not d!1094894) (not d!1094998) (not b!3752736) (not b!3752656) (not d!1094952) (not d!1094954) (not b!3752695) (not b!3752562) (not b!3752741) (not b!3752733) (not d!1094890) (not b!3752760) (not b!3752725) (not b!3752737) (not b!3752711) (not b_lambda!110049) (not d!1094996) (not b!3752626) (not b!3752702) (not b!3752730) (not b!3752567) (not b!3752719) (not b!3752568) (not b!3752687) (not b!3752601) (not b!3752548) (not b!3752662) (not b!3752595) (not d!1094878) (not d!1094926) (not b!3752728) (not b!3752622) (not b!3752654) (not b!3752750) (not b!3752715) (not b!3752744) (not d!1094992) (not b!3752583) (not b!3752743) (not b!3752693) (not b_lambda!110047) (not b!3752759) (not b!3752738) (not b!3752710) (not b!3752597) (not b_lambda!110087) (not b!3752660) (not b!3752553) (not b!3752574) (not b!3752414))
(check-sat b_and!278859 (not b_next!101123))
