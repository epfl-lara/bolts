; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408054 () Bool)

(assert start!408054)

(declare-fun b_free!126677 () Bool)

(declare-fun b_next!127381 () Bool)

(assert (=> start!408054 (= b_free!126677 (not b_next!127381))))

(declare-fun tp!1306658 () Bool)

(declare-fun b_and!337563 () Bool)

(assert (=> start!408054 (= tp!1306658 b_and!337563)))

(declare-fun b!4258135 () Bool)

(declare-fun e!2644619 () Bool)

(declare-fun tp!1306660 () Bool)

(assert (=> b!4258135 (= e!2644619 tp!1306660)))

(declare-fun res!1750471 () Bool)

(declare-fun e!2644620 () Bool)

(assert (=> start!408054 (=> (not res!1750471) (not e!2644620))))

(declare-datatypes ((T!79378 0))(
  ( (T!79379 (val!15225 Int)) )
))
(declare-datatypes ((List!47354 0))(
  ( (Nil!47230) (Cons!47230 (h!52650 T!79378) (t!353021 List!47354)) )
))
(declare-datatypes ((IArray!28481 0))(
  ( (IArray!28482 (innerList!14298 List!47354)) )
))
(declare-datatypes ((Conc!14238 0))(
  ( (Node!14238 (left!35012 Conc!14238) (right!35342 Conc!14238) (csize!28706 Int) (cheight!14449 Int)) (Leaf!22005 (xs!17544 IArray!28481) (csize!28707 Int)) (Empty!14238) )
))
(declare-fun t!4386 () Conc!14238)

(declare-fun isBalanced!3796 (Conc!14238) Bool)

(assert (=> start!408054 (= res!1750471 (isBalanced!3796 t!4386))))

(assert (=> start!408054 e!2644620))

(declare-fun e!2644621 () Bool)

(declare-fun inv!62108 (Conc!14238) Bool)

(assert (=> start!408054 (and (inv!62108 t!4386) e!2644621)))

(assert (=> start!408054 tp!1306658))

(declare-fun b!4258136 () Bool)

(declare-fun res!1750472 () Bool)

(assert (=> b!4258136 (=> (not res!1750472) (not e!2644620))))

(get-info :version)

(assert (=> b!4258136 (= res!1750472 (and (not ((_ is Empty!14238) t!4386)) (not ((_ is Leaf!22005) t!4386))))))

(declare-fun tp!1306659 () Bool)

(declare-fun b!4258137 () Bool)

(declare-fun tp!1306657 () Bool)

(assert (=> b!4258137 (= e!2644621 (and (inv!62108 (left!35012 t!4386)) tp!1306657 (inv!62108 (right!35342 t!4386)) tp!1306659))))

(declare-fun b!4258138 () Bool)

(declare-fun e!2644622 () Bool)

(assert (=> b!4258138 (= e!2644620 e!2644622)))

(declare-fun res!1750473 () Bool)

(assert (=> b!4258138 (=> (not res!1750473) (not e!2644622))))

(declare-fun lt!1510051 () List!47354)

(declare-fun f!428 () Int)

(declare-fun lt!1510052 () List!47354)

(declare-datatypes ((B!2813 0))(
  ( (B!2814 (val!15226 Int)) )
))
(declare-datatypes ((List!47355 0))(
  ( (Nil!47231) (Cons!47231 (h!52651 B!2813) (t!353022 List!47355)) )
))
(declare-fun map!9657 (List!47354 Int) List!47355)

(declare-fun ++!12023 (List!47354 List!47354) List!47354)

(declare-fun ++!12024 (List!47355 List!47355) List!47355)

(assert (=> b!4258138 (= res!1750473 (= (map!9657 (++!12023 lt!1510052 lt!1510051) f!428) (++!12024 (map!9657 lt!1510052 f!428) (map!9657 lt!1510051 f!428))))))

(declare-datatypes ((Unit!66127 0))(
  ( (Unit!66128) )
))
(declare-fun lt!1510050 () Unit!66127)

(declare-fun lemmaMapConcat!26 (List!47354 List!47354 Int) Unit!66127)

(assert (=> b!4258138 (= lt!1510050 (lemmaMapConcat!26 lt!1510052 lt!1510051 f!428))))

(declare-fun list!17046 (Conc!14238) List!47354)

(assert (=> b!4258138 (= lt!1510051 (list!17046 (right!35342 t!4386)))))

(assert (=> b!4258138 (= lt!1510052 (list!17046 (left!35012 t!4386)))))

(declare-fun b!4258139 () Bool)

(declare-fun inv!62109 (IArray!28481) Bool)

(assert (=> b!4258139 (= e!2644621 (and (inv!62109 (xs!17544 t!4386)) e!2644619))))

(declare-fun b!4258140 () Bool)

(declare-datatypes ((IArray!28483 0))(
  ( (IArray!28484 (innerList!14299 List!47355)) )
))
(declare-datatypes ((Conc!14239 0))(
  ( (Node!14239 (left!35013 Conc!14239) (right!35343 Conc!14239) (csize!28708 Int) (cheight!14450 Int)) (Leaf!22006 (xs!17545 IArray!28483) (csize!28709 Int)) (Empty!14239) )
))
(declare-fun inv!62110 (Conc!14239) Bool)

(declare-fun map!9658 (Conc!14238 Int) Conc!14239)

(assert (=> b!4258140 (= e!2644622 (not (inv!62110 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))

(assert (= (and start!408054 res!1750471) b!4258136))

(assert (= (and b!4258136 res!1750472) b!4258138))

(assert (= (and b!4258138 res!1750473) b!4258140))

(assert (= (and start!408054 ((_ is Node!14238) t!4386)) b!4258137))

(assert (= b!4258139 b!4258135))

(assert (= (and start!408054 ((_ is Leaf!22005) t!4386)) b!4258139))

(declare-fun m!4843647 () Bool)

(assert (=> start!408054 m!4843647))

(declare-fun m!4843649 () Bool)

(assert (=> start!408054 m!4843649))

(declare-fun m!4843651 () Bool)

(assert (=> b!4258138 m!4843651))

(declare-fun m!4843653 () Bool)

(assert (=> b!4258138 m!4843653))

(declare-fun m!4843655 () Bool)

(assert (=> b!4258138 m!4843655))

(declare-fun m!4843657 () Bool)

(assert (=> b!4258138 m!4843657))

(declare-fun m!4843659 () Bool)

(assert (=> b!4258138 m!4843659))

(assert (=> b!4258138 m!4843653))

(declare-fun m!4843661 () Bool)

(assert (=> b!4258138 m!4843661))

(declare-fun m!4843663 () Bool)

(assert (=> b!4258138 m!4843663))

(declare-fun m!4843665 () Bool)

(assert (=> b!4258138 m!4843665))

(assert (=> b!4258138 m!4843663))

(assert (=> b!4258138 m!4843655))

(declare-fun m!4843667 () Bool)

(assert (=> b!4258137 m!4843667))

(declare-fun m!4843669 () Bool)

(assert (=> b!4258137 m!4843669))

(declare-fun m!4843671 () Bool)

(assert (=> b!4258139 m!4843671))

(declare-fun m!4843673 () Bool)

(assert (=> b!4258140 m!4843673))

(declare-fun m!4843675 () Bool)

(assert (=> b!4258140 m!4843675))

(declare-fun m!4843677 () Bool)

(assert (=> b!4258140 m!4843677))

(check-sat (not start!408054) (not b_next!127381) b_and!337563 (not b!4258138) (not b!4258137) (not b!4258135) (not b!4258139) (not b!4258140))
(check-sat b_and!337563 (not b_next!127381))
(get-model)

(declare-fun d!1252329 () Bool)

(declare-fun size!34581 (List!47354) Int)

(assert (=> d!1252329 (= (inv!62109 (xs!17544 t!4386)) (<= (size!34581 (innerList!14298 (xs!17544 t!4386))) 2147483647))))

(declare-fun bs!598910 () Bool)

(assert (= bs!598910 d!1252329))

(declare-fun m!4843679 () Bool)

(assert (=> bs!598910 m!4843679))

(assert (=> b!4258139 d!1252329))

(declare-fun b!4258171 () Bool)

(declare-fun e!2644634 () Bool)

(declare-fun e!2644633 () Bool)

(assert (=> b!4258171 (= e!2644634 e!2644633)))

(declare-fun res!1750508 () Bool)

(assert (=> b!4258171 (=> (not res!1750508) (not e!2644633))))

(declare-fun height!1862 (Conc!14238) Int)

(assert (=> b!4258171 (= res!1750508 (<= (- 1) (- (height!1862 (left!35012 t!4386)) (height!1862 (right!35342 t!4386)))))))

(declare-fun b!4258172 () Bool)

(declare-fun isEmpty!27967 (Conc!14238) Bool)

(assert (=> b!4258172 (= e!2644633 (not (isEmpty!27967 (right!35342 t!4386))))))

(declare-fun d!1252331 () Bool)

(declare-fun res!1750506 () Bool)

(assert (=> d!1252331 (=> res!1750506 e!2644634)))

(assert (=> d!1252331 (= res!1750506 (not ((_ is Node!14238) t!4386)))))

(assert (=> d!1252331 (= (isBalanced!3796 t!4386) e!2644634)))

(declare-fun b!4258173 () Bool)

(declare-fun res!1750509 () Bool)

(assert (=> b!4258173 (=> (not res!1750509) (not e!2644633))))

(assert (=> b!4258173 (= res!1750509 (<= (- (height!1862 (left!35012 t!4386)) (height!1862 (right!35342 t!4386))) 1))))

(declare-fun b!4258174 () Bool)

(declare-fun res!1750505 () Bool)

(assert (=> b!4258174 (=> (not res!1750505) (not e!2644633))))

(assert (=> b!4258174 (= res!1750505 (not (isEmpty!27967 (left!35012 t!4386))))))

(declare-fun b!4258175 () Bool)

(declare-fun res!1750504 () Bool)

(assert (=> b!4258175 (=> (not res!1750504) (not e!2644633))))

(assert (=> b!4258175 (= res!1750504 (isBalanced!3796 (right!35342 t!4386)))))

(declare-fun b!4258176 () Bool)

(declare-fun res!1750507 () Bool)

(assert (=> b!4258176 (=> (not res!1750507) (not e!2644633))))

(assert (=> b!4258176 (= res!1750507 (isBalanced!3796 (left!35012 t!4386)))))

(assert (= (and d!1252331 (not res!1750506)) b!4258171))

(assert (= (and b!4258171 res!1750508) b!4258173))

(assert (= (and b!4258173 res!1750509) b!4258176))

(assert (= (and b!4258176 res!1750507) b!4258175))

(assert (= (and b!4258175 res!1750504) b!4258174))

(assert (= (and b!4258174 res!1750505) b!4258172))

(declare-fun m!4843693 () Bool)

(assert (=> b!4258171 m!4843693))

(declare-fun m!4843695 () Bool)

(assert (=> b!4258171 m!4843695))

(declare-fun m!4843697 () Bool)

(assert (=> b!4258172 m!4843697))

(declare-fun m!4843699 () Bool)

(assert (=> b!4258176 m!4843699))

(assert (=> b!4258173 m!4843693))

(assert (=> b!4258173 m!4843695))

(declare-fun m!4843701 () Bool)

(assert (=> b!4258175 m!4843701))

(declare-fun m!4843703 () Bool)

(assert (=> b!4258174 m!4843703))

(assert (=> start!408054 d!1252331))

(declare-fun d!1252335 () Bool)

(declare-fun c!722951 () Bool)

(assert (=> d!1252335 (= c!722951 ((_ is Node!14238) t!4386))))

(declare-fun e!2644645 () Bool)

(assert (=> d!1252335 (= (inv!62108 t!4386) e!2644645)))

(declare-fun b!4258192 () Bool)

(declare-fun inv!62113 (Conc!14238) Bool)

(assert (=> b!4258192 (= e!2644645 (inv!62113 t!4386))))

(declare-fun b!4258193 () Bool)

(declare-fun e!2644646 () Bool)

(assert (=> b!4258193 (= e!2644645 e!2644646)))

(declare-fun res!1750515 () Bool)

(assert (=> b!4258193 (= res!1750515 (not ((_ is Leaf!22005) t!4386)))))

(assert (=> b!4258193 (=> res!1750515 e!2644646)))

(declare-fun b!4258194 () Bool)

(declare-fun inv!62114 (Conc!14238) Bool)

(assert (=> b!4258194 (= e!2644646 (inv!62114 t!4386))))

(assert (= (and d!1252335 c!722951) b!4258192))

(assert (= (and d!1252335 (not c!722951)) b!4258193))

(assert (= (and b!4258193 (not res!1750515)) b!4258194))

(declare-fun m!4843709 () Bool)

(assert (=> b!4258192 m!4843709))

(declare-fun m!4843711 () Bool)

(assert (=> b!4258194 m!4843711))

(assert (=> start!408054 d!1252335))

(declare-fun d!1252339 () Bool)

(declare-fun lt!1510058 () List!47355)

(declare-fun size!34584 (List!47355) Int)

(assert (=> d!1252339 (= (size!34584 lt!1510058) (size!34581 lt!1510052))))

(declare-fun e!2644652 () List!47355)

(assert (=> d!1252339 (= lt!1510058 e!2644652)))

(declare-fun c!722957 () Bool)

(assert (=> d!1252339 (= c!722957 ((_ is Nil!47230) lt!1510052))))

(assert (=> d!1252339 (= (map!9657 lt!1510052 f!428) lt!1510058)))

(declare-fun b!4258207 () Bool)

(assert (=> b!4258207 (= e!2644652 Nil!47231)))

(declare-fun b!4258208 () Bool)

(declare-fun $colon$colon!627 (List!47355 B!2813) List!47355)

(declare-fun dynLambda!20215 (Int T!79378) B!2813)

(assert (=> b!4258208 (= e!2644652 ($colon$colon!627 (map!9657 (t!353021 lt!1510052) f!428) (dynLambda!20215 f!428 (h!52650 lt!1510052))))))

(assert (= (and d!1252339 c!722957) b!4258207))

(assert (= (and d!1252339 (not c!722957)) b!4258208))

(declare-fun b_lambda!125461 () Bool)

(assert (=> (not b_lambda!125461) (not b!4258208)))

(declare-fun t!353029 () Bool)

(declare-fun tb!256769 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353029) tb!256769))

(declare-fun result!313300 () Bool)

(declare-fun tp_is_empty!22857 () Bool)

(assert (=> tb!256769 (= result!313300 tp_is_empty!22857)))

(assert (=> b!4258208 t!353029))

(declare-fun b_and!337567 () Bool)

(assert (= b_and!337563 (and (=> t!353029 result!313300) b_and!337567)))

(declare-fun m!4843723 () Bool)

(assert (=> d!1252339 m!4843723))

(declare-fun m!4843725 () Bool)

(assert (=> d!1252339 m!4843725))

(declare-fun m!4843727 () Bool)

(assert (=> b!4258208 m!4843727))

(declare-fun m!4843729 () Bool)

(assert (=> b!4258208 m!4843729))

(assert (=> b!4258208 m!4843727))

(assert (=> b!4258208 m!4843729))

(declare-fun m!4843731 () Bool)

(assert (=> b!4258208 m!4843731))

(assert (=> b!4258138 d!1252339))

(declare-fun d!1252343 () Bool)

(declare-fun lt!1510059 () List!47355)

(assert (=> d!1252343 (= (size!34584 lt!1510059) (size!34581 (++!12023 lt!1510052 lt!1510051)))))

(declare-fun e!2644657 () List!47355)

(assert (=> d!1252343 (= lt!1510059 e!2644657)))

(declare-fun c!722962 () Bool)

(assert (=> d!1252343 (= c!722962 ((_ is Nil!47230) (++!12023 lt!1510052 lt!1510051)))))

(assert (=> d!1252343 (= (map!9657 (++!12023 lt!1510052 lt!1510051) f!428) lt!1510059)))

(declare-fun b!4258219 () Bool)

(assert (=> b!4258219 (= e!2644657 Nil!47231)))

(declare-fun b!4258220 () Bool)

(assert (=> b!4258220 (= e!2644657 ($colon$colon!627 (map!9657 (t!353021 (++!12023 lt!1510052 lt!1510051)) f!428) (dynLambda!20215 f!428 (h!52650 (++!12023 lt!1510052 lt!1510051)))))))

(assert (= (and d!1252343 c!722962) b!4258219))

(assert (= (and d!1252343 (not c!722962)) b!4258220))

(declare-fun b_lambda!125463 () Bool)

(assert (=> (not b_lambda!125463) (not b!4258220)))

(declare-fun t!353031 () Bool)

(declare-fun tb!256771 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353031) tb!256771))

(declare-fun result!313304 () Bool)

(assert (=> tb!256771 (= result!313304 tp_is_empty!22857)))

(assert (=> b!4258220 t!353031))

(declare-fun b_and!337569 () Bool)

(assert (= b_and!337567 (and (=> t!353031 result!313304) b_and!337569)))

(declare-fun m!4843733 () Bool)

(assert (=> d!1252343 m!4843733))

(assert (=> d!1252343 m!4843663))

(declare-fun m!4843735 () Bool)

(assert (=> d!1252343 m!4843735))

(declare-fun m!4843737 () Bool)

(assert (=> b!4258220 m!4843737))

(declare-fun m!4843739 () Bool)

(assert (=> b!4258220 m!4843739))

(assert (=> b!4258220 m!4843737))

(assert (=> b!4258220 m!4843739))

(declare-fun m!4843741 () Bool)

(assert (=> b!4258220 m!4843741))

(assert (=> b!4258138 d!1252343))

(declare-fun lt!1510064 () List!47354)

(declare-fun b!4258244 () Bool)

(declare-fun e!2644669 () Bool)

(assert (=> b!4258244 (= e!2644669 (or (not (= lt!1510051 Nil!47230)) (= lt!1510064 lt!1510052)))))

(declare-fun b!4258243 () Bool)

(declare-fun res!1750524 () Bool)

(assert (=> b!4258243 (=> (not res!1750524) (not e!2644669))))

(assert (=> b!4258243 (= res!1750524 (= (size!34581 lt!1510064) (+ (size!34581 lt!1510052) (size!34581 lt!1510051))))))

(declare-fun b!4258241 () Bool)

(declare-fun e!2644668 () List!47354)

(assert (=> b!4258241 (= e!2644668 lt!1510051)))

(declare-fun b!4258242 () Bool)

(assert (=> b!4258242 (= e!2644668 (Cons!47230 (h!52650 lt!1510052) (++!12023 (t!353021 lt!1510052) lt!1510051)))))

(declare-fun d!1252345 () Bool)

(assert (=> d!1252345 e!2644669))

(declare-fun res!1750525 () Bool)

(assert (=> d!1252345 (=> (not res!1750525) (not e!2644669))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7434 (List!47354) (InoxSet T!79378))

(assert (=> d!1252345 (= res!1750525 (= (content!7434 lt!1510064) ((_ map or) (content!7434 lt!1510052) (content!7434 lt!1510051))))))

(assert (=> d!1252345 (= lt!1510064 e!2644668)))

(declare-fun c!722969 () Bool)

(assert (=> d!1252345 (= c!722969 ((_ is Nil!47230) lt!1510052))))

(assert (=> d!1252345 (= (++!12023 lt!1510052 lt!1510051) lt!1510064)))

(assert (= (and d!1252345 c!722969) b!4258241))

(assert (= (and d!1252345 (not c!722969)) b!4258242))

(assert (= (and d!1252345 res!1750525) b!4258243))

(assert (= (and b!4258243 res!1750524) b!4258244))

(declare-fun m!4843751 () Bool)

(assert (=> b!4258243 m!4843751))

(assert (=> b!4258243 m!4843725))

(declare-fun m!4843753 () Bool)

(assert (=> b!4258243 m!4843753))

(declare-fun m!4843755 () Bool)

(assert (=> b!4258242 m!4843755))

(declare-fun m!4843757 () Bool)

(assert (=> d!1252345 m!4843757))

(declare-fun m!4843759 () Bool)

(assert (=> d!1252345 m!4843759))

(declare-fun m!4843761 () Bool)

(assert (=> d!1252345 m!4843761))

(assert (=> b!4258138 d!1252345))

(declare-fun b!4258263 () Bool)

(declare-fun e!2644679 () List!47354)

(assert (=> b!4258263 (= e!2644679 Nil!47230)))

(declare-fun b!4258265 () Bool)

(declare-fun e!2644680 () List!47354)

(declare-fun list!17048 (IArray!28481) List!47354)

(assert (=> b!4258265 (= e!2644680 (list!17048 (xs!17544 (right!35342 t!4386))))))

(declare-fun d!1252349 () Bool)

(declare-fun c!722978 () Bool)

(assert (=> d!1252349 (= c!722978 ((_ is Empty!14238) (right!35342 t!4386)))))

(assert (=> d!1252349 (= (list!17046 (right!35342 t!4386)) e!2644679)))

(declare-fun b!4258264 () Bool)

(assert (=> b!4258264 (= e!2644679 e!2644680)))

(declare-fun c!722979 () Bool)

(assert (=> b!4258264 (= c!722979 ((_ is Leaf!22005) (right!35342 t!4386)))))

(declare-fun b!4258266 () Bool)

(assert (=> b!4258266 (= e!2644680 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252349 c!722978) b!4258263))

(assert (= (and d!1252349 (not c!722978)) b!4258264))

(assert (= (and b!4258264 c!722979) b!4258265))

(assert (= (and b!4258264 (not c!722979)) b!4258266))

(declare-fun m!4843793 () Bool)

(assert (=> b!4258265 m!4843793))

(declare-fun m!4843795 () Bool)

(assert (=> b!4258266 m!4843795))

(declare-fun m!4843797 () Bool)

(assert (=> b!4258266 m!4843797))

(assert (=> b!4258266 m!4843795))

(assert (=> b!4258266 m!4843797))

(declare-fun m!4843799 () Bool)

(assert (=> b!4258266 m!4843799))

(assert (=> b!4258138 d!1252349))

(declare-fun e!2644689 () List!47355)

(declare-fun b!4258284 () Bool)

(assert (=> b!4258284 (= e!2644689 (Cons!47231 (h!52651 (map!9657 lt!1510052 f!428)) (++!12024 (t!353022 (map!9657 lt!1510052 f!428)) (map!9657 lt!1510051 f!428))))))

(declare-fun e!2644690 () Bool)

(declare-fun b!4258286 () Bool)

(declare-fun lt!1510074 () List!47355)

(assert (=> b!4258286 (= e!2644690 (or (not (= (map!9657 lt!1510051 f!428) Nil!47231)) (= lt!1510074 (map!9657 lt!1510052 f!428))))))

(declare-fun b!4258283 () Bool)

(assert (=> b!4258283 (= e!2644689 (map!9657 lt!1510051 f!428))))

(declare-fun b!4258285 () Bool)

(declare-fun res!1750537 () Bool)

(assert (=> b!4258285 (=> (not res!1750537) (not e!2644690))))

(assert (=> b!4258285 (= res!1750537 (= (size!34584 lt!1510074) (+ (size!34584 (map!9657 lt!1510052 f!428)) (size!34584 (map!9657 lt!1510051 f!428)))))))

(declare-fun d!1252357 () Bool)

(assert (=> d!1252357 e!2644690))

(declare-fun res!1750536 () Bool)

(assert (=> d!1252357 (=> (not res!1750536) (not e!2644690))))

(declare-fun content!7436 (List!47355) (InoxSet B!2813))

(assert (=> d!1252357 (= res!1750536 (= (content!7436 lt!1510074) ((_ map or) (content!7436 (map!9657 lt!1510052 f!428)) (content!7436 (map!9657 lt!1510051 f!428)))))))

(assert (=> d!1252357 (= lt!1510074 e!2644689)))

(declare-fun c!722984 () Bool)

(assert (=> d!1252357 (= c!722984 ((_ is Nil!47231) (map!9657 lt!1510052 f!428)))))

(assert (=> d!1252357 (= (++!12024 (map!9657 lt!1510052 f!428) (map!9657 lt!1510051 f!428)) lt!1510074)))

(assert (= (and d!1252357 c!722984) b!4258283))

(assert (= (and d!1252357 (not c!722984)) b!4258284))

(assert (= (and d!1252357 res!1750536) b!4258285))

(assert (= (and b!4258285 res!1750537) b!4258286))

(assert (=> b!4258284 m!4843655))

(declare-fun m!4843803 () Bool)

(assert (=> b!4258284 m!4843803))

(declare-fun m!4843805 () Bool)

(assert (=> b!4258285 m!4843805))

(assert (=> b!4258285 m!4843653))

(declare-fun m!4843807 () Bool)

(assert (=> b!4258285 m!4843807))

(assert (=> b!4258285 m!4843655))

(declare-fun m!4843809 () Bool)

(assert (=> b!4258285 m!4843809))

(declare-fun m!4843811 () Bool)

(assert (=> d!1252357 m!4843811))

(assert (=> d!1252357 m!4843653))

(declare-fun m!4843813 () Bool)

(assert (=> d!1252357 m!4843813))

(assert (=> d!1252357 m!4843655))

(declare-fun m!4843815 () Bool)

(assert (=> d!1252357 m!4843815))

(assert (=> b!4258138 d!1252357))

(declare-fun d!1252361 () Bool)

(assert (=> d!1252361 (= (map!9657 (++!12023 lt!1510052 lt!1510051) f!428) (++!12024 (map!9657 lt!1510052 f!428) (map!9657 lt!1510051 f!428)))))

(declare-fun lt!1510079 () Unit!66127)

(declare-fun choose!25978 (List!47354 List!47354 Int) Unit!66127)

(assert (=> d!1252361 (= lt!1510079 (choose!25978 lt!1510052 lt!1510051 f!428))))

(assert (=> d!1252361 (= (lemmaMapConcat!26 lt!1510052 lt!1510051 f!428) lt!1510079)))

(declare-fun bs!598912 () Bool)

(assert (= bs!598912 d!1252361))

(assert (=> bs!598912 m!4843653))

(assert (=> bs!598912 m!4843655))

(assert (=> bs!598912 m!4843657))

(declare-fun m!4843839 () Bool)

(assert (=> bs!598912 m!4843839))

(assert (=> bs!598912 m!4843655))

(assert (=> bs!598912 m!4843663))

(assert (=> bs!598912 m!4843665))

(assert (=> bs!598912 m!4843663))

(assert (=> bs!598912 m!4843653))

(assert (=> b!4258138 d!1252361))

(declare-fun d!1252369 () Bool)

(declare-fun lt!1510080 () List!47355)

(assert (=> d!1252369 (= (size!34584 lt!1510080) (size!34581 lt!1510051))))

(declare-fun e!2644695 () List!47355)

(assert (=> d!1252369 (= lt!1510080 e!2644695)))

(declare-fun c!722988 () Bool)

(assert (=> d!1252369 (= c!722988 ((_ is Nil!47230) lt!1510051))))

(assert (=> d!1252369 (= (map!9657 lt!1510051 f!428) lt!1510080)))

(declare-fun b!4258293 () Bool)

(assert (=> b!4258293 (= e!2644695 Nil!47231)))

(declare-fun b!4258295 () Bool)

(assert (=> b!4258295 (= e!2644695 ($colon$colon!627 (map!9657 (t!353021 lt!1510051) f!428) (dynLambda!20215 f!428 (h!52650 lt!1510051))))))

(assert (= (and d!1252369 c!722988) b!4258293))

(assert (= (and d!1252369 (not c!722988)) b!4258295))

(declare-fun b_lambda!125469 () Bool)

(assert (=> (not b_lambda!125469) (not b!4258295)))

(declare-fun t!353038 () Bool)

(declare-fun tb!256777 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353038) tb!256777))

(declare-fun result!313310 () Bool)

(assert (=> tb!256777 (= result!313310 tp_is_empty!22857)))

(assert (=> b!4258295 t!353038))

(declare-fun b_and!337575 () Bool)

(assert (= b_and!337569 (and (=> t!353038 result!313310) b_and!337575)))

(declare-fun m!4843847 () Bool)

(assert (=> d!1252369 m!4843847))

(assert (=> d!1252369 m!4843753))

(declare-fun m!4843853 () Bool)

(assert (=> b!4258295 m!4843853))

(declare-fun m!4843855 () Bool)

(assert (=> b!4258295 m!4843855))

(assert (=> b!4258295 m!4843853))

(assert (=> b!4258295 m!4843855))

(declare-fun m!4843857 () Bool)

(assert (=> b!4258295 m!4843857))

(assert (=> b!4258138 d!1252369))

(declare-fun b!4258301 () Bool)

(declare-fun e!2644699 () List!47354)

(assert (=> b!4258301 (= e!2644699 Nil!47230)))

(declare-fun b!4258303 () Bool)

(declare-fun e!2644700 () List!47354)

(assert (=> b!4258303 (= e!2644700 (list!17048 (xs!17544 (left!35012 t!4386))))))

(declare-fun d!1252375 () Bool)

(declare-fun c!722990 () Bool)

(assert (=> d!1252375 (= c!722990 ((_ is Empty!14238) (left!35012 t!4386)))))

(assert (=> d!1252375 (= (list!17046 (left!35012 t!4386)) e!2644699)))

(declare-fun b!4258302 () Bool)

(assert (=> b!4258302 (= e!2644699 e!2644700)))

(declare-fun c!722991 () Bool)

(assert (=> b!4258302 (= c!722991 ((_ is Leaf!22005) (left!35012 t!4386)))))

(declare-fun b!4258304 () Bool)

(assert (=> b!4258304 (= e!2644700 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252375 c!722990) b!4258301))

(assert (= (and d!1252375 (not c!722990)) b!4258302))

(assert (= (and b!4258302 c!722991) b!4258303))

(assert (= (and b!4258302 (not c!722991)) b!4258304))

(declare-fun m!4843859 () Bool)

(assert (=> b!4258303 m!4843859))

(declare-fun m!4843861 () Bool)

(assert (=> b!4258304 m!4843861))

(declare-fun m!4843863 () Bool)

(assert (=> b!4258304 m!4843863))

(assert (=> b!4258304 m!4843861))

(assert (=> b!4258304 m!4843863))

(declare-fun m!4843865 () Bool)

(assert (=> b!4258304 m!4843865))

(assert (=> b!4258138 d!1252375))

(declare-fun d!1252377 () Bool)

(declare-fun c!722992 () Bool)

(assert (=> d!1252377 (= c!722992 ((_ is Node!14238) (left!35012 t!4386)))))

(declare-fun e!2644701 () Bool)

(assert (=> d!1252377 (= (inv!62108 (left!35012 t!4386)) e!2644701)))

(declare-fun b!4258305 () Bool)

(assert (=> b!4258305 (= e!2644701 (inv!62113 (left!35012 t!4386)))))

(declare-fun b!4258306 () Bool)

(declare-fun e!2644702 () Bool)

(assert (=> b!4258306 (= e!2644701 e!2644702)))

(declare-fun res!1750542 () Bool)

(assert (=> b!4258306 (= res!1750542 (not ((_ is Leaf!22005) (left!35012 t!4386))))))

(assert (=> b!4258306 (=> res!1750542 e!2644702)))

(declare-fun b!4258307 () Bool)

(assert (=> b!4258307 (= e!2644702 (inv!62114 (left!35012 t!4386)))))

(assert (= (and d!1252377 c!722992) b!4258305))

(assert (= (and d!1252377 (not c!722992)) b!4258306))

(assert (= (and b!4258306 (not res!1750542)) b!4258307))

(declare-fun m!4843867 () Bool)

(assert (=> b!4258305 m!4843867))

(declare-fun m!4843869 () Bool)

(assert (=> b!4258307 m!4843869))

(assert (=> b!4258137 d!1252377))

(declare-fun d!1252379 () Bool)

(declare-fun c!722993 () Bool)

(assert (=> d!1252379 (= c!722993 ((_ is Node!14238) (right!35342 t!4386)))))

(declare-fun e!2644703 () Bool)

(assert (=> d!1252379 (= (inv!62108 (right!35342 t!4386)) e!2644703)))

(declare-fun b!4258308 () Bool)

(assert (=> b!4258308 (= e!2644703 (inv!62113 (right!35342 t!4386)))))

(declare-fun b!4258309 () Bool)

(declare-fun e!2644704 () Bool)

(assert (=> b!4258309 (= e!2644703 e!2644704)))

(declare-fun res!1750543 () Bool)

(assert (=> b!4258309 (= res!1750543 (not ((_ is Leaf!22005) (right!35342 t!4386))))))

(assert (=> b!4258309 (=> res!1750543 e!2644704)))

(declare-fun b!4258310 () Bool)

(assert (=> b!4258310 (= e!2644704 (inv!62114 (right!35342 t!4386)))))

(assert (= (and d!1252379 c!722993) b!4258308))

(assert (= (and d!1252379 (not c!722993)) b!4258309))

(assert (= (and b!4258309 (not res!1750543)) b!4258310))

(declare-fun m!4843871 () Bool)

(assert (=> b!4258308 m!4843871))

(declare-fun m!4843873 () Bool)

(assert (=> b!4258310 m!4843873))

(assert (=> b!4258137 d!1252379))

(declare-fun d!1252381 () Bool)

(declare-fun c!722999 () Bool)

(assert (=> d!1252381 (= c!722999 ((_ is Node!14239) (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))

(declare-fun e!2644715 () Bool)

(assert (=> d!1252381 (= (inv!62110 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) e!2644715)))

(declare-fun b!4258326 () Bool)

(declare-fun inv!62117 (Conc!14239) Bool)

(assert (=> b!4258326 (= e!2644715 (inv!62117 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))

(declare-fun b!4258327 () Bool)

(declare-fun e!2644716 () Bool)

(assert (=> b!4258327 (= e!2644715 e!2644716)))

(declare-fun res!1750549 () Bool)

(assert (=> b!4258327 (= res!1750549 (not ((_ is Leaf!22006) (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))

(assert (=> b!4258327 (=> res!1750549 e!2644716)))

(declare-fun b!4258328 () Bool)

(declare-fun inv!62118 (Conc!14239) Bool)

(assert (=> b!4258328 (= e!2644716 (inv!62118 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))

(assert (= (and d!1252381 c!722999) b!4258326))

(assert (= (and d!1252381 (not c!722999)) b!4258327))

(assert (= (and b!4258327 (not res!1750549)) b!4258328))

(declare-fun m!4843879 () Bool)

(assert (=> b!4258326 m!4843879))

(declare-fun m!4843881 () Bool)

(assert (=> b!4258328 m!4843881))

(assert (=> b!4258140 d!1252381))

(declare-fun b!4258378 () Bool)

(declare-fun e!2644746 () Conc!14239)

(assert (=> b!4258378 (= e!2644746 Empty!14239)))

(declare-fun b!4258379 () Bool)

(declare-fun e!2644748 () Conc!14239)

(assert (=> b!4258379 (= e!2644746 e!2644748)))

(declare-fun c!723012 () Bool)

(assert (=> b!4258379 (= c!723012 ((_ is Leaf!22005) (left!35012 t!4386)))))

(declare-fun b!4258380 () Bool)

(declare-fun lt!1510094 () Unit!66127)

(assert (=> b!4258380 (= lt!1510094 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))) f!428))))

(assert (=> b!4258380 (= e!2644748 (Node!14239 (map!9658 (left!35012 (left!35012 t!4386)) f!428) (map!9658 (right!35342 (left!35012 t!4386)) f!428) (csize!28706 (left!35012 t!4386)) (cheight!14449 (left!35012 t!4386))))))

(declare-fun d!1252385 () Bool)

(declare-fun e!2644747 () Bool)

(assert (=> d!1252385 e!2644747))

(declare-fun res!1750556 () Bool)

(assert (=> d!1252385 (=> (not res!1750556) (not e!2644747))))

(declare-fun lt!1510093 () Conc!14239)

(declare-fun list!17050 (Conc!14239) List!47355)

(assert (=> d!1252385 (= res!1750556 (= (list!17050 lt!1510093) (map!9657 (list!17046 (left!35012 t!4386)) f!428)))))

(assert (=> d!1252385 (= lt!1510093 e!2644746)))

(declare-fun c!723013 () Bool)

(assert (=> d!1252385 (= c!723013 ((_ is Empty!14238) (left!35012 t!4386)))))

(assert (=> d!1252385 (isBalanced!3796 (left!35012 t!4386))))

(assert (=> d!1252385 (= (map!9658 (left!35012 t!4386) f!428) lt!1510093)))

(declare-fun b!4258381 () Bool)

(declare-fun isBalanced!3798 (Conc!14239) Bool)

(assert (=> b!4258381 (= e!2644747 (isBalanced!3798 lt!1510093))))

(declare-fun b!4258382 () Bool)

(declare-fun map!9660 (IArray!28481 Int) IArray!28483)

(assert (=> b!4258382 (= e!2644748 (Leaf!22006 (map!9660 (xs!17544 (left!35012 t!4386)) f!428) (csize!28707 (left!35012 t!4386))))))

(assert (= (and d!1252385 c!723013) b!4258378))

(assert (= (and d!1252385 (not c!723013)) b!4258379))

(assert (= (and b!4258379 c!723012) b!4258382))

(assert (= (and b!4258379 (not c!723012)) b!4258380))

(assert (= (and d!1252385 res!1750556) b!4258381))

(assert (=> b!4258380 m!4843863))

(assert (=> b!4258380 m!4843861))

(assert (=> b!4258380 m!4843863))

(declare-fun m!4843923 () Bool)

(assert (=> b!4258380 m!4843923))

(declare-fun m!4843925 () Bool)

(assert (=> b!4258380 m!4843925))

(assert (=> b!4258380 m!4843861))

(declare-fun m!4843927 () Bool)

(assert (=> b!4258380 m!4843927))

(declare-fun m!4843929 () Bool)

(assert (=> d!1252385 m!4843929))

(assert (=> d!1252385 m!4843659))

(assert (=> d!1252385 m!4843659))

(declare-fun m!4843931 () Bool)

(assert (=> d!1252385 m!4843931))

(assert (=> d!1252385 m!4843699))

(declare-fun m!4843933 () Bool)

(assert (=> b!4258381 m!4843933))

(declare-fun m!4843935 () Bool)

(assert (=> b!4258382 m!4843935))

(assert (=> b!4258140 d!1252385))

(declare-fun b!4258383 () Bool)

(declare-fun e!2644749 () Conc!14239)

(assert (=> b!4258383 (= e!2644749 Empty!14239)))

(declare-fun b!4258384 () Bool)

(declare-fun e!2644751 () Conc!14239)

(assert (=> b!4258384 (= e!2644749 e!2644751)))

(declare-fun c!723014 () Bool)

(assert (=> b!4258384 (= c!723014 ((_ is Leaf!22005) (right!35342 t!4386)))))

(declare-fun b!4258385 () Bool)

(declare-fun lt!1510096 () Unit!66127)

(assert (=> b!4258385 (= lt!1510096 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))) f!428))))

(assert (=> b!4258385 (= e!2644751 (Node!14239 (map!9658 (left!35012 (right!35342 t!4386)) f!428) (map!9658 (right!35342 (right!35342 t!4386)) f!428) (csize!28706 (right!35342 t!4386)) (cheight!14449 (right!35342 t!4386))))))

(declare-fun d!1252389 () Bool)

(declare-fun e!2644750 () Bool)

(assert (=> d!1252389 e!2644750))

(declare-fun res!1750557 () Bool)

(assert (=> d!1252389 (=> (not res!1750557) (not e!2644750))))

(declare-fun lt!1510095 () Conc!14239)

(assert (=> d!1252389 (= res!1750557 (= (list!17050 lt!1510095) (map!9657 (list!17046 (right!35342 t!4386)) f!428)))))

(assert (=> d!1252389 (= lt!1510095 e!2644749)))

(declare-fun c!723015 () Bool)

(assert (=> d!1252389 (= c!723015 ((_ is Empty!14238) (right!35342 t!4386)))))

(assert (=> d!1252389 (isBalanced!3796 (right!35342 t!4386))))

(assert (=> d!1252389 (= (map!9658 (right!35342 t!4386) f!428) lt!1510095)))

(declare-fun b!4258386 () Bool)

(assert (=> b!4258386 (= e!2644750 (isBalanced!3798 lt!1510095))))

(declare-fun b!4258387 () Bool)

(assert (=> b!4258387 (= e!2644751 (Leaf!22006 (map!9660 (xs!17544 (right!35342 t!4386)) f!428) (csize!28707 (right!35342 t!4386))))))

(assert (= (and d!1252389 c!723015) b!4258383))

(assert (= (and d!1252389 (not c!723015)) b!4258384))

(assert (= (and b!4258384 c!723014) b!4258387))

(assert (= (and b!4258384 (not c!723014)) b!4258385))

(assert (= (and d!1252389 res!1750557) b!4258386))

(assert (=> b!4258385 m!4843797))

(assert (=> b!4258385 m!4843795))

(assert (=> b!4258385 m!4843797))

(declare-fun m!4843937 () Bool)

(assert (=> b!4258385 m!4843937))

(declare-fun m!4843939 () Bool)

(assert (=> b!4258385 m!4843939))

(assert (=> b!4258385 m!4843795))

(declare-fun m!4843941 () Bool)

(assert (=> b!4258385 m!4843941))

(declare-fun m!4843943 () Bool)

(assert (=> d!1252389 m!4843943))

(assert (=> d!1252389 m!4843661))

(assert (=> d!1252389 m!4843661))

(declare-fun m!4843945 () Bool)

(assert (=> d!1252389 m!4843945))

(assert (=> d!1252389 m!4843701))

(declare-fun m!4843947 () Bool)

(assert (=> b!4258386 m!4843947))

(declare-fun m!4843949 () Bool)

(assert (=> b!4258387 m!4843949))

(assert (=> b!4258140 d!1252389))

(declare-fun b!4258396 () Bool)

(declare-fun tp!1306682 () Bool)

(declare-fun tp!1306684 () Bool)

(declare-fun e!2644757 () Bool)

(assert (=> b!4258396 (= e!2644757 (and (inv!62108 (left!35012 (left!35012 t!4386))) tp!1306684 (inv!62108 (right!35342 (left!35012 t!4386))) tp!1306682))))

(declare-fun b!4258398 () Bool)

(declare-fun e!2644756 () Bool)

(declare-fun tp!1306683 () Bool)

(assert (=> b!4258398 (= e!2644756 tp!1306683)))

(declare-fun b!4258397 () Bool)

(assert (=> b!4258397 (= e!2644757 (and (inv!62109 (xs!17544 (left!35012 t!4386))) e!2644756))))

(assert (=> b!4258137 (= tp!1306657 (and (inv!62108 (left!35012 t!4386)) e!2644757))))

(assert (= (and b!4258137 ((_ is Node!14238) (left!35012 t!4386))) b!4258396))

(assert (= b!4258397 b!4258398))

(assert (= (and b!4258137 ((_ is Leaf!22005) (left!35012 t!4386))) b!4258397))

(declare-fun m!4843951 () Bool)

(assert (=> b!4258396 m!4843951))

(declare-fun m!4843953 () Bool)

(assert (=> b!4258396 m!4843953))

(declare-fun m!4843955 () Bool)

(assert (=> b!4258397 m!4843955))

(assert (=> b!4258137 m!4843667))

(declare-fun e!2644759 () Bool)

(declare-fun tp!1306687 () Bool)

(declare-fun b!4258399 () Bool)

(declare-fun tp!1306685 () Bool)

(assert (=> b!4258399 (= e!2644759 (and (inv!62108 (left!35012 (right!35342 t!4386))) tp!1306687 (inv!62108 (right!35342 (right!35342 t!4386))) tp!1306685))))

(declare-fun b!4258401 () Bool)

(declare-fun e!2644758 () Bool)

(declare-fun tp!1306686 () Bool)

(assert (=> b!4258401 (= e!2644758 tp!1306686)))

(declare-fun b!4258400 () Bool)

(assert (=> b!4258400 (= e!2644759 (and (inv!62109 (xs!17544 (right!35342 t!4386))) e!2644758))))

(assert (=> b!4258137 (= tp!1306659 (and (inv!62108 (right!35342 t!4386)) e!2644759))))

(assert (= (and b!4258137 ((_ is Node!14238) (right!35342 t!4386))) b!4258399))

(assert (= b!4258400 b!4258401))

(assert (= (and b!4258137 ((_ is Leaf!22005) (right!35342 t!4386))) b!4258400))

(declare-fun m!4843957 () Bool)

(assert (=> b!4258399 m!4843957))

(declare-fun m!4843959 () Bool)

(assert (=> b!4258399 m!4843959))

(declare-fun m!4843961 () Bool)

(assert (=> b!4258400 m!4843961))

(assert (=> b!4258137 m!4843669))

(declare-fun b!4258406 () Bool)

(declare-fun e!2644762 () Bool)

(declare-fun tp_is_empty!22861 () Bool)

(declare-fun tp!1306690 () Bool)

(assert (=> b!4258406 (= e!2644762 (and tp_is_empty!22861 tp!1306690))))

(assert (=> b!4258135 (= tp!1306660 e!2644762)))

(assert (= (and b!4258135 ((_ is Cons!47230) (innerList!14298 (xs!17544 t!4386)))) b!4258406))

(declare-fun b_lambda!125477 () Bool)

(assert (= b_lambda!125469 (or (and start!408054 b_free!126677) b_lambda!125477)))

(declare-fun b_lambda!125479 () Bool)

(assert (= b_lambda!125463 (or (and start!408054 b_free!126677) b_lambda!125479)))

(declare-fun b_lambda!125481 () Bool)

(assert (= b_lambda!125461 (or (and start!408054 b_free!126677) b_lambda!125481)))

(check-sat (not b!4258326) (not b_next!127381) (not b!4258397) tp_is_empty!22861 b_and!337575 (not b!4258208) (not b!4258174) (not d!1252329) (not d!1252357) (not d!1252385) (not b!4258387) (not b!4258307) (not d!1252361) (not b!4258310) (not b!4258380) (not b!4258406) (not b!4258381) (not b!4258173) (not b!4258305) (not b_lambda!125477) (not b!4258194) (not b!4258400) (not b!4258385) (not d!1252345) (not b!4258304) (not b!4258171) (not b_lambda!125481) (not b!4258176) (not b!4258398) (not b!4258266) (not b!4258396) (not b!4258220) (not b!4258175) (not b!4258137) (not d!1252343) (not d!1252369) (not b!4258401) (not b!4258382) (not b!4258285) (not b!4258242) tp_is_empty!22857 (not b!4258265) (not b!4258243) (not b!4258386) (not b!4258399) (not d!1252389) (not b!4258308) (not b!4258295) (not b_lambda!125479) (not b!4258303) (not d!1252339) (not b!4258192) (not b!4258284) (not b!4258172) (not b!4258328))
(check-sat b_and!337575 (not b_next!127381))
(get-model)

(declare-fun d!1252391 () Bool)

(assert (=> d!1252391 (= (list!17048 (xs!17544 (right!35342 t!4386))) (innerList!14298 (xs!17544 (right!35342 t!4386))))))

(assert (=> b!4258265 d!1252391))

(declare-fun d!1252393 () Bool)

(declare-fun lt!1510099 () Bool)

(declare-fun isEmpty!27968 (List!47354) Bool)

(assert (=> d!1252393 (= lt!1510099 (isEmpty!27968 (list!17046 (left!35012 t!4386))))))

(declare-fun size!34585 (Conc!14238) Int)

(assert (=> d!1252393 (= lt!1510099 (= (size!34585 (left!35012 t!4386)) 0))))

(assert (=> d!1252393 (= (isEmpty!27967 (left!35012 t!4386)) lt!1510099)))

(declare-fun bs!598914 () Bool)

(assert (= bs!598914 d!1252393))

(assert (=> bs!598914 m!4843659))

(assert (=> bs!598914 m!4843659))

(declare-fun m!4843963 () Bool)

(assert (=> bs!598914 m!4843963))

(declare-fun m!4843965 () Bool)

(assert (=> bs!598914 m!4843965))

(assert (=> b!4258174 d!1252393))

(declare-fun b!4258407 () Bool)

(declare-fun e!2644763 () Conc!14239)

(assert (=> b!4258407 (= e!2644763 Empty!14239)))

(declare-fun b!4258408 () Bool)

(declare-fun e!2644765 () Conc!14239)

(assert (=> b!4258408 (= e!2644763 e!2644765)))

(declare-fun c!723016 () Bool)

(assert (=> b!4258408 (= c!723016 ((_ is Leaf!22005) (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258409 () Bool)

(declare-fun lt!1510101 () Unit!66127)

(assert (=> b!4258409 (= lt!1510101 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) f!428))))

(assert (=> b!4258409 (= e!2644765 (Node!14239 (map!9658 (left!35012 (right!35342 (right!35342 t!4386))) f!428) (map!9658 (right!35342 (right!35342 (right!35342 t!4386))) f!428) (csize!28706 (right!35342 (right!35342 t!4386))) (cheight!14449 (right!35342 (right!35342 t!4386)))))))

(declare-fun d!1252395 () Bool)

(declare-fun e!2644764 () Bool)

(assert (=> d!1252395 e!2644764))

(declare-fun res!1750558 () Bool)

(assert (=> d!1252395 (=> (not res!1750558) (not e!2644764))))

(declare-fun lt!1510100 () Conc!14239)

(assert (=> d!1252395 (= res!1750558 (= (list!17050 lt!1510100) (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)))))

(assert (=> d!1252395 (= lt!1510100 e!2644763)))

(declare-fun c!723017 () Bool)

(assert (=> d!1252395 (= c!723017 ((_ is Empty!14238) (right!35342 (right!35342 t!4386))))))

(assert (=> d!1252395 (isBalanced!3796 (right!35342 (right!35342 t!4386)))))

(assert (=> d!1252395 (= (map!9658 (right!35342 (right!35342 t!4386)) f!428) lt!1510100)))

(declare-fun b!4258410 () Bool)

(assert (=> b!4258410 (= e!2644764 (isBalanced!3798 lt!1510100))))

(declare-fun b!4258411 () Bool)

(assert (=> b!4258411 (= e!2644765 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (right!35342 t!4386))) f!428) (csize!28707 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252395 c!723017) b!4258407))

(assert (= (and d!1252395 (not c!723017)) b!4258408))

(assert (= (and b!4258408 c!723016) b!4258411))

(assert (= (and b!4258408 (not c!723016)) b!4258409))

(assert (= (and d!1252395 res!1750558) b!4258410))

(declare-fun m!4843967 () Bool)

(assert (=> b!4258409 m!4843967))

(declare-fun m!4843969 () Bool)

(assert (=> b!4258409 m!4843969))

(assert (=> b!4258409 m!4843967))

(declare-fun m!4843971 () Bool)

(assert (=> b!4258409 m!4843971))

(declare-fun m!4843973 () Bool)

(assert (=> b!4258409 m!4843973))

(assert (=> b!4258409 m!4843969))

(declare-fun m!4843975 () Bool)

(assert (=> b!4258409 m!4843975))

(declare-fun m!4843977 () Bool)

(assert (=> d!1252395 m!4843977))

(assert (=> d!1252395 m!4843797))

(assert (=> d!1252395 m!4843797))

(declare-fun m!4843979 () Bool)

(assert (=> d!1252395 m!4843979))

(declare-fun m!4843981 () Bool)

(assert (=> d!1252395 m!4843981))

(declare-fun m!4843983 () Bool)

(assert (=> b!4258410 m!4843983))

(declare-fun m!4843985 () Bool)

(assert (=> b!4258411 m!4843985))

(assert (=> b!4258385 d!1252395))

(declare-fun b!4258412 () Bool)

(declare-fun e!2644766 () List!47354)

(assert (=> b!4258412 (= e!2644766 Nil!47230)))

(declare-fun b!4258414 () Bool)

(declare-fun e!2644767 () List!47354)

(assert (=> b!4258414 (= e!2644767 (list!17048 (xs!17544 (left!35012 (right!35342 t!4386)))))))

(declare-fun d!1252397 () Bool)

(declare-fun c!723018 () Bool)

(assert (=> d!1252397 (= c!723018 ((_ is Empty!14238) (left!35012 (right!35342 t!4386))))))

(assert (=> d!1252397 (= (list!17046 (left!35012 (right!35342 t!4386))) e!2644766)))

(declare-fun b!4258413 () Bool)

(assert (=> b!4258413 (= e!2644766 e!2644767)))

(declare-fun c!723019 () Bool)

(assert (=> b!4258413 (= c!723019 ((_ is Leaf!22005) (left!35012 (right!35342 t!4386))))))

(declare-fun b!4258415 () Bool)

(assert (=> b!4258415 (= e!2644767 (++!12023 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386))))))))

(assert (= (and d!1252397 c!723018) b!4258412))

(assert (= (and d!1252397 (not c!723018)) b!4258413))

(assert (= (and b!4258413 c!723019) b!4258414))

(assert (= (and b!4258413 (not c!723019)) b!4258415))

(declare-fun m!4843987 () Bool)

(assert (=> b!4258414 m!4843987))

(declare-fun m!4843989 () Bool)

(assert (=> b!4258415 m!4843989))

(declare-fun m!4843991 () Bool)

(assert (=> b!4258415 m!4843991))

(assert (=> b!4258415 m!4843989))

(assert (=> b!4258415 m!4843991))

(declare-fun m!4843993 () Bool)

(assert (=> b!4258415 m!4843993))

(assert (=> b!4258385 d!1252397))

(declare-fun b!4258416 () Bool)

(declare-fun e!2644768 () List!47354)

(assert (=> b!4258416 (= e!2644768 Nil!47230)))

(declare-fun b!4258418 () Bool)

(declare-fun e!2644769 () List!47354)

(assert (=> b!4258418 (= e!2644769 (list!17048 (xs!17544 (right!35342 (right!35342 t!4386)))))))

(declare-fun d!1252399 () Bool)

(declare-fun c!723020 () Bool)

(assert (=> d!1252399 (= c!723020 ((_ is Empty!14238) (right!35342 (right!35342 t!4386))))))

(assert (=> d!1252399 (= (list!17046 (right!35342 (right!35342 t!4386))) e!2644768)))

(declare-fun b!4258417 () Bool)

(assert (=> b!4258417 (= e!2644768 e!2644769)))

(declare-fun c!723021 () Bool)

(assert (=> b!4258417 (= c!723021 ((_ is Leaf!22005) (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258419 () Bool)

(assert (=> b!4258419 (= e!2644769 (++!12023 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386))))))))

(assert (= (and d!1252399 c!723020) b!4258416))

(assert (= (and d!1252399 (not c!723020)) b!4258417))

(assert (= (and b!4258417 c!723021) b!4258418))

(assert (= (and b!4258417 (not c!723021)) b!4258419))

(declare-fun m!4843995 () Bool)

(assert (=> b!4258418 m!4843995))

(assert (=> b!4258419 m!4843969))

(assert (=> b!4258419 m!4843967))

(assert (=> b!4258419 m!4843969))

(assert (=> b!4258419 m!4843967))

(declare-fun m!4843997 () Bool)

(assert (=> b!4258419 m!4843997))

(assert (=> b!4258385 d!1252399))

(declare-fun b!4258420 () Bool)

(declare-fun e!2644770 () Conc!14239)

(assert (=> b!4258420 (= e!2644770 Empty!14239)))

(declare-fun b!4258421 () Bool)

(declare-fun e!2644772 () Conc!14239)

(assert (=> b!4258421 (= e!2644770 e!2644772)))

(declare-fun c!723022 () Bool)

(assert (=> b!4258421 (= c!723022 ((_ is Leaf!22005) (left!35012 (right!35342 t!4386))))))

(declare-fun b!4258422 () Bool)

(declare-fun lt!1510103 () Unit!66127)

(assert (=> b!4258422 (= lt!1510103 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) f!428))))

(assert (=> b!4258422 (= e!2644772 (Node!14239 (map!9658 (left!35012 (left!35012 (right!35342 t!4386))) f!428) (map!9658 (right!35342 (left!35012 (right!35342 t!4386))) f!428) (csize!28706 (left!35012 (right!35342 t!4386))) (cheight!14449 (left!35012 (right!35342 t!4386)))))))

(declare-fun d!1252401 () Bool)

(declare-fun e!2644771 () Bool)

(assert (=> d!1252401 e!2644771))

(declare-fun res!1750559 () Bool)

(assert (=> d!1252401 (=> (not res!1750559) (not e!2644771))))

(declare-fun lt!1510102 () Conc!14239)

(assert (=> d!1252401 (= res!1750559 (= (list!17050 lt!1510102) (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)))))

(assert (=> d!1252401 (= lt!1510102 e!2644770)))

(declare-fun c!723023 () Bool)

(assert (=> d!1252401 (= c!723023 ((_ is Empty!14238) (left!35012 (right!35342 t!4386))))))

(assert (=> d!1252401 (isBalanced!3796 (left!35012 (right!35342 t!4386)))))

(assert (=> d!1252401 (= (map!9658 (left!35012 (right!35342 t!4386)) f!428) lt!1510102)))

(declare-fun b!4258423 () Bool)

(assert (=> b!4258423 (= e!2644771 (isBalanced!3798 lt!1510102))))

(declare-fun b!4258424 () Bool)

(assert (=> b!4258424 (= e!2644772 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (right!35342 t!4386))) f!428) (csize!28707 (left!35012 (right!35342 t!4386)))))))

(assert (= (and d!1252401 c!723023) b!4258420))

(assert (= (and d!1252401 (not c!723023)) b!4258421))

(assert (= (and b!4258421 c!723022) b!4258424))

(assert (= (and b!4258421 (not c!723022)) b!4258422))

(assert (= (and d!1252401 res!1750559) b!4258423))

(assert (=> b!4258422 m!4843991))

(assert (=> b!4258422 m!4843989))

(assert (=> b!4258422 m!4843991))

(declare-fun m!4843999 () Bool)

(assert (=> b!4258422 m!4843999))

(declare-fun m!4844001 () Bool)

(assert (=> b!4258422 m!4844001))

(assert (=> b!4258422 m!4843989))

(declare-fun m!4844003 () Bool)

(assert (=> b!4258422 m!4844003))

(declare-fun m!4844005 () Bool)

(assert (=> d!1252401 m!4844005))

(assert (=> d!1252401 m!4843795))

(assert (=> d!1252401 m!4843795))

(declare-fun m!4844007 () Bool)

(assert (=> d!1252401 m!4844007))

(declare-fun m!4844009 () Bool)

(assert (=> d!1252401 m!4844009))

(declare-fun m!4844011 () Bool)

(assert (=> b!4258423 m!4844011))

(declare-fun m!4844013 () Bool)

(assert (=> b!4258424 m!4844013))

(assert (=> b!4258385 d!1252401))

(declare-fun d!1252403 () Bool)

(assert (=> d!1252403 (= (map!9657 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386)))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)))))

(declare-fun lt!1510104 () Unit!66127)

(assert (=> d!1252403 (= lt!1510104 (choose!25978 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))) f!428))))

(assert (=> d!1252403 (= (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))) f!428) lt!1510104)))

(declare-fun bs!598915 () Bool)

(assert (= bs!598915 d!1252403))

(assert (=> bs!598915 m!4844007))

(assert (=> bs!598915 m!4843979))

(declare-fun m!4844015 () Bool)

(assert (=> bs!598915 m!4844015))

(assert (=> bs!598915 m!4843795))

(assert (=> bs!598915 m!4843797))

(declare-fun m!4844017 () Bool)

(assert (=> bs!598915 m!4844017))

(assert (=> bs!598915 m!4843797))

(assert (=> bs!598915 m!4843979))

(assert (=> bs!598915 m!4843799))

(declare-fun m!4844019 () Bool)

(assert (=> bs!598915 m!4844019))

(assert (=> bs!598915 m!4843795))

(assert (=> bs!598915 m!4843797))

(assert (=> bs!598915 m!4843799))

(assert (=> bs!598915 m!4843795))

(assert (=> bs!598915 m!4844007))

(assert (=> b!4258385 d!1252403))

(declare-fun d!1252405 () Bool)

(declare-fun lt!1510107 () Int)

(assert (=> d!1252405 (>= lt!1510107 0)))

(declare-fun e!2644775 () Int)

(assert (=> d!1252405 (= lt!1510107 e!2644775)))

(declare-fun c!723026 () Bool)

(assert (=> d!1252405 (= c!723026 ((_ is Nil!47231) lt!1510080))))

(assert (=> d!1252405 (= (size!34584 lt!1510080) lt!1510107)))

(declare-fun b!4258429 () Bool)

(assert (=> b!4258429 (= e!2644775 0)))

(declare-fun b!4258430 () Bool)

(assert (=> b!4258430 (= e!2644775 (+ 1 (size!34584 (t!353022 lt!1510080))))))

(assert (= (and d!1252405 c!723026) b!4258429))

(assert (= (and d!1252405 (not c!723026)) b!4258430))

(declare-fun m!4844021 () Bool)

(assert (=> b!4258430 m!4844021))

(assert (=> d!1252369 d!1252405))

(declare-fun d!1252407 () Bool)

(declare-fun lt!1510110 () Int)

(assert (=> d!1252407 (>= lt!1510110 0)))

(declare-fun e!2644778 () Int)

(assert (=> d!1252407 (= lt!1510110 e!2644778)))

(declare-fun c!723029 () Bool)

(assert (=> d!1252407 (= c!723029 ((_ is Nil!47230) lt!1510051))))

(assert (=> d!1252407 (= (size!34581 lt!1510051) lt!1510110)))

(declare-fun b!4258435 () Bool)

(assert (=> b!4258435 (= e!2644778 0)))

(declare-fun b!4258436 () Bool)

(assert (=> b!4258436 (= e!2644778 (+ 1 (size!34581 (t!353021 lt!1510051))))))

(assert (= (and d!1252407 c!723029) b!4258435))

(assert (= (and d!1252407 (not c!723029)) b!4258436))

(declare-fun m!4844023 () Bool)

(assert (=> b!4258436 m!4844023))

(assert (=> d!1252369 d!1252407))

(declare-fun d!1252409 () Bool)

(assert (=> d!1252409 (= (height!1862 (left!35012 t!4386)) (ite ((_ is Empty!14238) (left!35012 t!4386)) 0 (ite ((_ is Leaf!22005) (left!35012 t!4386)) 1 (cheight!14449 (left!35012 t!4386)))))))

(assert (=> b!4258173 d!1252409))

(declare-fun d!1252411 () Bool)

(assert (=> d!1252411 (= (height!1862 (right!35342 t!4386)) (ite ((_ is Empty!14238) (right!35342 t!4386)) 0 (ite ((_ is Leaf!22005) (right!35342 t!4386)) 1 (cheight!14449 (right!35342 t!4386)))))))

(assert (=> b!4258173 d!1252411))

(declare-fun b!4258449 () Bool)

(declare-fun res!1750576 () Bool)

(declare-fun e!2644783 () Bool)

(assert (=> b!4258449 (=> (not res!1750576) (not e!2644783))))

(assert (=> b!4258449 (= res!1750576 (isBalanced!3798 (left!35013 lt!1510095)))))

(declare-fun b!4258450 () Bool)

(declare-fun res!1750572 () Bool)

(assert (=> b!4258450 (=> (not res!1750572) (not e!2644783))))

(declare-fun height!1863 (Conc!14239) Int)

(assert (=> b!4258450 (= res!1750572 (<= (- (height!1863 (left!35013 lt!1510095)) (height!1863 (right!35343 lt!1510095))) 1))))

(declare-fun b!4258451 () Bool)

(declare-fun res!1750575 () Bool)

(assert (=> b!4258451 (=> (not res!1750575) (not e!2644783))))

(assert (=> b!4258451 (= res!1750575 (isBalanced!3798 (right!35343 lt!1510095)))))

(declare-fun b!4258452 () Bool)

(declare-fun e!2644784 () Bool)

(assert (=> b!4258452 (= e!2644784 e!2644783)))

(declare-fun res!1750574 () Bool)

(assert (=> b!4258452 (=> (not res!1750574) (not e!2644783))))

(assert (=> b!4258452 (= res!1750574 (<= (- 1) (- (height!1863 (left!35013 lt!1510095)) (height!1863 (right!35343 lt!1510095)))))))

(declare-fun b!4258453 () Bool)

(declare-fun isEmpty!27969 (Conc!14239) Bool)

(assert (=> b!4258453 (= e!2644783 (not (isEmpty!27969 (right!35343 lt!1510095))))))

(declare-fun b!4258454 () Bool)

(declare-fun res!1750573 () Bool)

(assert (=> b!4258454 (=> (not res!1750573) (not e!2644783))))

(assert (=> b!4258454 (= res!1750573 (not (isEmpty!27969 (left!35013 lt!1510095))))))

(declare-fun d!1252413 () Bool)

(declare-fun res!1750577 () Bool)

(assert (=> d!1252413 (=> res!1750577 e!2644784)))

(assert (=> d!1252413 (= res!1750577 (not ((_ is Node!14239) lt!1510095)))))

(assert (=> d!1252413 (= (isBalanced!3798 lt!1510095) e!2644784)))

(assert (= (and d!1252413 (not res!1750577)) b!4258452))

(assert (= (and b!4258452 res!1750574) b!4258450))

(assert (= (and b!4258450 res!1750572) b!4258449))

(assert (= (and b!4258449 res!1750576) b!4258451))

(assert (= (and b!4258451 res!1750575) b!4258454))

(assert (= (and b!4258454 res!1750573) b!4258453))

(declare-fun m!4844025 () Bool)

(assert (=> b!4258453 m!4844025))

(declare-fun m!4844027 () Bool)

(assert (=> b!4258454 m!4844027))

(declare-fun m!4844029 () Bool)

(assert (=> b!4258452 m!4844029))

(declare-fun m!4844031 () Bool)

(assert (=> b!4258452 m!4844031))

(assert (=> b!4258450 m!4844029))

(assert (=> b!4258450 m!4844031))

(declare-fun m!4844033 () Bool)

(assert (=> b!4258449 m!4844033))

(declare-fun m!4844035 () Bool)

(assert (=> b!4258451 m!4844035))

(assert (=> b!4258386 d!1252413))

(declare-fun d!1252415 () Bool)

(declare-fun res!1750582 () Bool)

(declare-fun e!2644787 () Bool)

(assert (=> d!1252415 (=> (not res!1750582) (not e!2644787))))

(declare-fun list!17051 (IArray!28483) List!47355)

(assert (=> d!1252415 (= res!1750582 (<= (size!34584 (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))) 512))))

(assert (=> d!1252415 (= (inv!62118 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) e!2644787)))

(declare-fun b!4258459 () Bool)

(declare-fun res!1750583 () Bool)

(assert (=> b!4258459 (=> (not res!1750583) (not e!2644787))))

(assert (=> b!4258459 (= res!1750583 (= (csize!28709 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) (size!34584 (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(declare-fun b!4258460 () Bool)

(assert (=> b!4258460 (= e!2644787 (and (> (csize!28709 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) 0) (<= (csize!28709 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) 512)))))

(assert (= (and d!1252415 res!1750582) b!4258459))

(assert (= (and b!4258459 res!1750583) b!4258460))

(declare-fun m!4844037 () Bool)

(assert (=> d!1252415 m!4844037))

(assert (=> d!1252415 m!4844037))

(declare-fun m!4844039 () Bool)

(assert (=> d!1252415 m!4844039))

(assert (=> b!4258459 m!4844037))

(assert (=> b!4258459 m!4844037))

(assert (=> b!4258459 m!4844039))

(assert (=> b!4258328 d!1252415))

(declare-fun d!1252417 () Bool)

(declare-fun lt!1510111 () Bool)

(assert (=> d!1252417 (= lt!1510111 (isEmpty!27968 (list!17046 (right!35342 t!4386))))))

(assert (=> d!1252417 (= lt!1510111 (= (size!34585 (right!35342 t!4386)) 0))))

(assert (=> d!1252417 (= (isEmpty!27967 (right!35342 t!4386)) lt!1510111)))

(declare-fun bs!598916 () Bool)

(assert (= bs!598916 d!1252417))

(assert (=> bs!598916 m!4843661))

(assert (=> bs!598916 m!4843661))

(declare-fun m!4844041 () Bool)

(assert (=> bs!598916 m!4844041))

(declare-fun m!4844043 () Bool)

(assert (=> bs!598916 m!4844043))

(assert (=> b!4258172 d!1252417))

(declare-fun d!1252419 () Bool)

(declare-fun res!1750588 () Bool)

(declare-fun e!2644790 () Bool)

(assert (=> d!1252419 (=> (not res!1750588) (not e!2644790))))

(assert (=> d!1252419 (= res!1750588 (<= (size!34581 (list!17048 (xs!17544 (right!35342 t!4386)))) 512))))

(assert (=> d!1252419 (= (inv!62114 (right!35342 t!4386)) e!2644790)))

(declare-fun b!4258465 () Bool)

(declare-fun res!1750589 () Bool)

(assert (=> b!4258465 (=> (not res!1750589) (not e!2644790))))

(assert (=> b!4258465 (= res!1750589 (= (csize!28707 (right!35342 t!4386)) (size!34581 (list!17048 (xs!17544 (right!35342 t!4386))))))))

(declare-fun b!4258466 () Bool)

(assert (=> b!4258466 (= e!2644790 (and (> (csize!28707 (right!35342 t!4386)) 0) (<= (csize!28707 (right!35342 t!4386)) 512)))))

(assert (= (and d!1252419 res!1750588) b!4258465))

(assert (= (and b!4258465 res!1750589) b!4258466))

(assert (=> d!1252419 m!4843793))

(assert (=> d!1252419 m!4843793))

(declare-fun m!4844045 () Bool)

(assert (=> d!1252419 m!4844045))

(assert (=> b!4258465 m!4843793))

(assert (=> b!4258465 m!4843793))

(assert (=> b!4258465 m!4844045))

(assert (=> b!4258310 d!1252419))

(declare-fun b!4258467 () Bool)

(declare-fun e!2644792 () Bool)

(declare-fun e!2644791 () Bool)

(assert (=> b!4258467 (= e!2644792 e!2644791)))

(declare-fun res!1750594 () Bool)

(assert (=> b!4258467 (=> (not res!1750594) (not e!2644791))))

(assert (=> b!4258467 (= res!1750594 (<= (- 1) (- (height!1862 (left!35012 (left!35012 t!4386))) (height!1862 (right!35342 (left!35012 t!4386))))))))

(declare-fun b!4258468 () Bool)

(assert (=> b!4258468 (= e!2644791 (not (isEmpty!27967 (right!35342 (left!35012 t!4386)))))))

(declare-fun d!1252421 () Bool)

(declare-fun res!1750592 () Bool)

(assert (=> d!1252421 (=> res!1750592 e!2644792)))

(assert (=> d!1252421 (= res!1750592 (not ((_ is Node!14238) (left!35012 t!4386))))))

(assert (=> d!1252421 (= (isBalanced!3796 (left!35012 t!4386)) e!2644792)))

(declare-fun b!4258469 () Bool)

(declare-fun res!1750595 () Bool)

(assert (=> b!4258469 (=> (not res!1750595) (not e!2644791))))

(assert (=> b!4258469 (= res!1750595 (<= (- (height!1862 (left!35012 (left!35012 t!4386))) (height!1862 (right!35342 (left!35012 t!4386)))) 1))))

(declare-fun b!4258470 () Bool)

(declare-fun res!1750591 () Bool)

(assert (=> b!4258470 (=> (not res!1750591) (not e!2644791))))

(assert (=> b!4258470 (= res!1750591 (not (isEmpty!27967 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4258471 () Bool)

(declare-fun res!1750590 () Bool)

(assert (=> b!4258471 (=> (not res!1750590) (not e!2644791))))

(assert (=> b!4258471 (= res!1750590 (isBalanced!3796 (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258472 () Bool)

(declare-fun res!1750593 () Bool)

(assert (=> b!4258472 (=> (not res!1750593) (not e!2644791))))

(assert (=> b!4258472 (= res!1750593 (isBalanced!3796 (left!35012 (left!35012 t!4386))))))

(assert (= (and d!1252421 (not res!1750592)) b!4258467))

(assert (= (and b!4258467 res!1750594) b!4258469))

(assert (= (and b!4258469 res!1750595) b!4258472))

(assert (= (and b!4258472 res!1750593) b!4258471))

(assert (= (and b!4258471 res!1750590) b!4258470))

(assert (= (and b!4258470 res!1750591) b!4258468))

(declare-fun m!4844047 () Bool)

(assert (=> b!4258467 m!4844047))

(declare-fun m!4844049 () Bool)

(assert (=> b!4258467 m!4844049))

(declare-fun m!4844051 () Bool)

(assert (=> b!4258468 m!4844051))

(declare-fun m!4844053 () Bool)

(assert (=> b!4258472 m!4844053))

(assert (=> b!4258469 m!4844047))

(assert (=> b!4258469 m!4844049))

(declare-fun m!4844055 () Bool)

(assert (=> b!4258471 m!4844055))

(declare-fun m!4844057 () Bool)

(assert (=> b!4258470 m!4844057))

(assert (=> b!4258176 d!1252421))

(declare-fun d!1252423 () Bool)

(declare-fun c!723030 () Bool)

(assert (=> d!1252423 (= c!723030 ((_ is Node!14238) (left!35012 (left!35012 t!4386))))))

(declare-fun e!2644793 () Bool)

(assert (=> d!1252423 (= (inv!62108 (left!35012 (left!35012 t!4386))) e!2644793)))

(declare-fun b!4258473 () Bool)

(assert (=> b!4258473 (= e!2644793 (inv!62113 (left!35012 (left!35012 t!4386))))))

(declare-fun b!4258474 () Bool)

(declare-fun e!2644794 () Bool)

(assert (=> b!4258474 (= e!2644793 e!2644794)))

(declare-fun res!1750596 () Bool)

(assert (=> b!4258474 (= res!1750596 (not ((_ is Leaf!22005) (left!35012 (left!35012 t!4386)))))))

(assert (=> b!4258474 (=> res!1750596 e!2644794)))

(declare-fun b!4258475 () Bool)

(assert (=> b!4258475 (= e!2644794 (inv!62114 (left!35012 (left!35012 t!4386))))))

(assert (= (and d!1252423 c!723030) b!4258473))

(assert (= (and d!1252423 (not c!723030)) b!4258474))

(assert (= (and b!4258474 (not res!1750596)) b!4258475))

(declare-fun m!4844059 () Bool)

(assert (=> b!4258473 m!4844059))

(declare-fun m!4844061 () Bool)

(assert (=> b!4258475 m!4844061))

(assert (=> b!4258396 d!1252423))

(declare-fun d!1252425 () Bool)

(declare-fun c!723031 () Bool)

(assert (=> d!1252425 (= c!723031 ((_ is Node!14238) (right!35342 (left!35012 t!4386))))))

(declare-fun e!2644795 () Bool)

(assert (=> d!1252425 (= (inv!62108 (right!35342 (left!35012 t!4386))) e!2644795)))

(declare-fun b!4258476 () Bool)

(assert (=> b!4258476 (= e!2644795 (inv!62113 (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258477 () Bool)

(declare-fun e!2644796 () Bool)

(assert (=> b!4258477 (= e!2644795 e!2644796)))

(declare-fun res!1750597 () Bool)

(assert (=> b!4258477 (= res!1750597 (not ((_ is Leaf!22005) (right!35342 (left!35012 t!4386)))))))

(assert (=> b!4258477 (=> res!1750597 e!2644796)))

(declare-fun b!4258478 () Bool)

(assert (=> b!4258478 (= e!2644796 (inv!62114 (right!35342 (left!35012 t!4386))))))

(assert (= (and d!1252425 c!723031) b!4258476))

(assert (= (and d!1252425 (not c!723031)) b!4258477))

(assert (= (and b!4258477 (not res!1750597)) b!4258478))

(declare-fun m!4844063 () Bool)

(assert (=> b!4258476 m!4844063))

(declare-fun m!4844065 () Bool)

(assert (=> b!4258478 m!4844065))

(assert (=> b!4258396 d!1252425))

(declare-fun d!1252429 () Bool)

(declare-fun lt!1510112 () Int)

(assert (=> d!1252429 (>= lt!1510112 0)))

(declare-fun e!2644797 () Int)

(assert (=> d!1252429 (= lt!1510112 e!2644797)))

(declare-fun c!723032 () Bool)

(assert (=> d!1252429 (= c!723032 ((_ is Nil!47231) lt!1510059))))

(assert (=> d!1252429 (= (size!34584 lt!1510059) lt!1510112)))

(declare-fun b!4258479 () Bool)

(assert (=> b!4258479 (= e!2644797 0)))

(declare-fun b!4258480 () Bool)

(assert (=> b!4258480 (= e!2644797 (+ 1 (size!34584 (t!353022 lt!1510059))))))

(assert (= (and d!1252429 c!723032) b!4258479))

(assert (= (and d!1252429 (not c!723032)) b!4258480))

(declare-fun m!4844067 () Bool)

(assert (=> b!4258480 m!4844067))

(assert (=> d!1252343 d!1252429))

(declare-fun d!1252431 () Bool)

(declare-fun lt!1510113 () Int)

(assert (=> d!1252431 (>= lt!1510113 0)))

(declare-fun e!2644798 () Int)

(assert (=> d!1252431 (= lt!1510113 e!2644798)))

(declare-fun c!723033 () Bool)

(assert (=> d!1252431 (= c!723033 ((_ is Nil!47230) (++!12023 lt!1510052 lt!1510051)))))

(assert (=> d!1252431 (= (size!34581 (++!12023 lt!1510052 lt!1510051)) lt!1510113)))

(declare-fun b!4258481 () Bool)

(assert (=> b!4258481 (= e!2644798 0)))

(declare-fun b!4258482 () Bool)

(assert (=> b!4258482 (= e!2644798 (+ 1 (size!34581 (t!353021 (++!12023 lt!1510052 lt!1510051)))))))

(assert (= (and d!1252431 c!723033) b!4258481))

(assert (= (and d!1252431 (not c!723033)) b!4258482))

(declare-fun m!4844069 () Bool)

(assert (=> b!4258482 m!4844069))

(assert (=> d!1252343 d!1252431))

(declare-fun b!4258483 () Bool)

(declare-fun e!2644800 () Bool)

(declare-fun e!2644799 () Bool)

(assert (=> b!4258483 (= e!2644800 e!2644799)))

(declare-fun res!1750602 () Bool)

(assert (=> b!4258483 (=> (not res!1750602) (not e!2644799))))

(assert (=> b!4258483 (= res!1750602 (<= (- 1) (- (height!1862 (left!35012 (right!35342 t!4386))) (height!1862 (right!35342 (right!35342 t!4386))))))))

(declare-fun b!4258484 () Bool)

(assert (=> b!4258484 (= e!2644799 (not (isEmpty!27967 (right!35342 (right!35342 t!4386)))))))

(declare-fun d!1252433 () Bool)

(declare-fun res!1750600 () Bool)

(assert (=> d!1252433 (=> res!1750600 e!2644800)))

(assert (=> d!1252433 (= res!1750600 (not ((_ is Node!14238) (right!35342 t!4386))))))

(assert (=> d!1252433 (= (isBalanced!3796 (right!35342 t!4386)) e!2644800)))

(declare-fun b!4258485 () Bool)

(declare-fun res!1750603 () Bool)

(assert (=> b!4258485 (=> (not res!1750603) (not e!2644799))))

(assert (=> b!4258485 (= res!1750603 (<= (- (height!1862 (left!35012 (right!35342 t!4386))) (height!1862 (right!35342 (right!35342 t!4386)))) 1))))

(declare-fun b!4258486 () Bool)

(declare-fun res!1750599 () Bool)

(assert (=> b!4258486 (=> (not res!1750599) (not e!2644799))))

(assert (=> b!4258486 (= res!1750599 (not (isEmpty!27967 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4258487 () Bool)

(declare-fun res!1750598 () Bool)

(assert (=> b!4258487 (=> (not res!1750598) (not e!2644799))))

(assert (=> b!4258487 (= res!1750598 (isBalanced!3796 (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258488 () Bool)

(declare-fun res!1750601 () Bool)

(assert (=> b!4258488 (=> (not res!1750601) (not e!2644799))))

(assert (=> b!4258488 (= res!1750601 (isBalanced!3796 (left!35012 (right!35342 t!4386))))))

(assert (= (and d!1252433 (not res!1750600)) b!4258483))

(assert (= (and b!4258483 res!1750602) b!4258485))

(assert (= (and b!4258485 res!1750603) b!4258488))

(assert (= (and b!4258488 res!1750601) b!4258487))

(assert (= (and b!4258487 res!1750598) b!4258486))

(assert (= (and b!4258486 res!1750599) b!4258484))

(declare-fun m!4844071 () Bool)

(assert (=> b!4258483 m!4844071))

(declare-fun m!4844073 () Bool)

(assert (=> b!4258483 m!4844073))

(declare-fun m!4844075 () Bool)

(assert (=> b!4258484 m!4844075))

(assert (=> b!4258488 m!4844009))

(assert (=> b!4258485 m!4844071))

(assert (=> b!4258485 m!4844073))

(assert (=> b!4258487 m!4843981))

(declare-fun m!4844077 () Bool)

(assert (=> b!4258486 m!4844077))

(assert (=> b!4258175 d!1252433))

(declare-fun d!1252437 () Bool)

(declare-fun res!1750612 () Bool)

(declare-fun e!2644808 () Bool)

(assert (=> d!1252437 (=> (not res!1750612) (not e!2644808))))

(assert (=> d!1252437 (= res!1750612 (= (csize!28706 (right!35342 t!4386)) (+ (size!34585 (left!35012 (right!35342 t!4386))) (size!34585 (right!35342 (right!35342 t!4386))))))))

(assert (=> d!1252437 (= (inv!62113 (right!35342 t!4386)) e!2644808)))

(declare-fun b!4258505 () Bool)

(declare-fun res!1750613 () Bool)

(assert (=> b!4258505 (=> (not res!1750613) (not e!2644808))))

(assert (=> b!4258505 (= res!1750613 (and (not (= (left!35012 (right!35342 t!4386)) Empty!14238)) (not (= (right!35342 (right!35342 t!4386)) Empty!14238))))))

(declare-fun b!4258506 () Bool)

(declare-fun res!1750614 () Bool)

(assert (=> b!4258506 (=> (not res!1750614) (not e!2644808))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4258506 (= res!1750614 (= (cheight!14449 (right!35342 t!4386)) (+ (max!0 (height!1862 (left!35012 (right!35342 t!4386))) (height!1862 (right!35342 (right!35342 t!4386)))) 1)))))

(declare-fun b!4258507 () Bool)

(assert (=> b!4258507 (= e!2644808 (<= 0 (cheight!14449 (right!35342 t!4386))))))

(assert (= (and d!1252437 res!1750612) b!4258505))

(assert (= (and b!4258505 res!1750613) b!4258506))

(assert (= (and b!4258506 res!1750614) b!4258507))

(declare-fun m!4844101 () Bool)

(assert (=> d!1252437 m!4844101))

(declare-fun m!4844103 () Bool)

(assert (=> d!1252437 m!4844103))

(assert (=> b!4258506 m!4844071))

(assert (=> b!4258506 m!4844073))

(assert (=> b!4258506 m!4844071))

(assert (=> b!4258506 m!4844073))

(declare-fun m!4844105 () Bool)

(assert (=> b!4258506 m!4844105))

(assert (=> b!4258308 d!1252437))

(declare-fun b!4258517 () Bool)

(declare-fun e!2644813 () Bool)

(declare-fun lt!1510121 () List!47354)

(assert (=> b!4258517 (= e!2644813 (or (not (= (list!17046 (right!35342 (right!35342 t!4386))) Nil!47230)) (= lt!1510121 (list!17046 (left!35012 (right!35342 t!4386))))))))

(declare-fun b!4258516 () Bool)

(declare-fun res!1750615 () Bool)

(assert (=> b!4258516 (=> (not res!1750615) (not e!2644813))))

(assert (=> b!4258516 (= res!1750615 (= (size!34581 lt!1510121) (+ (size!34581 (list!17046 (left!35012 (right!35342 t!4386)))) (size!34581 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(declare-fun b!4258514 () Bool)

(declare-fun e!2644812 () List!47354)

(assert (=> b!4258514 (= e!2644812 (list!17046 (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258515 () Bool)

(assert (=> b!4258515 (= e!2644812 (Cons!47230 (h!52650 (list!17046 (left!35012 (right!35342 t!4386)))) (++!12023 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252445 () Bool)

(assert (=> d!1252445 e!2644813))

(declare-fun res!1750616 () Bool)

(assert (=> d!1252445 (=> (not res!1750616) (not e!2644813))))

(assert (=> d!1252445 (= res!1750616 (= (content!7434 lt!1510121) ((_ map or) (content!7434 (list!17046 (left!35012 (right!35342 t!4386)))) (content!7434 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(assert (=> d!1252445 (= lt!1510121 e!2644812)))

(declare-fun c!723041 () Bool)

(assert (=> d!1252445 (= c!723041 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252445 (= (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386)))) lt!1510121)))

(assert (= (and d!1252445 c!723041) b!4258514))

(assert (= (and d!1252445 (not c!723041)) b!4258515))

(assert (= (and d!1252445 res!1750616) b!4258516))

(assert (= (and b!4258516 res!1750615) b!4258517))

(declare-fun m!4844109 () Bool)

(assert (=> b!4258516 m!4844109))

(assert (=> b!4258516 m!4843795))

(declare-fun m!4844111 () Bool)

(assert (=> b!4258516 m!4844111))

(assert (=> b!4258516 m!4843797))

(declare-fun m!4844113 () Bool)

(assert (=> b!4258516 m!4844113))

(assert (=> b!4258515 m!4843797))

(declare-fun m!4844115 () Bool)

(assert (=> b!4258515 m!4844115))

(declare-fun m!4844117 () Bool)

(assert (=> d!1252445 m!4844117))

(assert (=> d!1252445 m!4843795))

(declare-fun m!4844119 () Bool)

(assert (=> d!1252445 m!4844119))

(assert (=> d!1252445 m!4843797))

(declare-fun m!4844121 () Bool)

(assert (=> d!1252445 m!4844121))

(assert (=> b!4258266 d!1252445))

(assert (=> b!4258266 d!1252397))

(assert (=> b!4258266 d!1252399))

(declare-fun d!1252451 () Bool)

(declare-fun lt!1510126 () IArray!28483)

(assert (=> d!1252451 (= lt!1510126 (IArray!28484 (map!9657 (list!17048 (xs!17544 (right!35342 t!4386))) f!428)))))

(declare-fun choose!25979 (IArray!28481 Int) IArray!28483)

(assert (=> d!1252451 (= lt!1510126 (choose!25979 (xs!17544 (right!35342 t!4386)) f!428))))

(assert (=> d!1252451 (= (map!9660 (xs!17544 (right!35342 t!4386)) f!428) lt!1510126)))

(declare-fun bs!598917 () Bool)

(assert (= bs!598917 d!1252451))

(assert (=> bs!598917 m!4843793))

(assert (=> bs!598917 m!4843793))

(declare-fun m!4844123 () Bool)

(assert (=> bs!598917 m!4844123))

(declare-fun m!4844125 () Bool)

(assert (=> bs!598917 m!4844125))

(assert (=> b!4258387 d!1252451))

(declare-fun b!4258544 () Bool)

(declare-fun e!2644827 () List!47355)

(assert (=> b!4258544 (= e!2644827 Nil!47231)))

(declare-fun b!4258547 () Bool)

(declare-fun e!2644828 () List!47355)

(assert (=> b!4258547 (= e!2644828 (++!12024 (list!17050 (left!35013 lt!1510093)) (list!17050 (right!35343 lt!1510093))))))

(declare-fun b!4258545 () Bool)

(assert (=> b!4258545 (= e!2644827 e!2644828)))

(declare-fun c!723055 () Bool)

(assert (=> b!4258545 (= c!723055 ((_ is Leaf!22006) lt!1510093))))

(declare-fun b!4258546 () Bool)

(assert (=> b!4258546 (= e!2644828 (list!17051 (xs!17545 lt!1510093)))))

(declare-fun d!1252453 () Bool)

(declare-fun c!723054 () Bool)

(assert (=> d!1252453 (= c!723054 ((_ is Empty!14239) lt!1510093))))

(assert (=> d!1252453 (= (list!17050 lt!1510093) e!2644827)))

(assert (= (and d!1252453 c!723054) b!4258544))

(assert (= (and d!1252453 (not c!723054)) b!4258545))

(assert (= (and b!4258545 c!723055) b!4258546))

(assert (= (and b!4258545 (not c!723055)) b!4258547))

(declare-fun m!4844139 () Bool)

(assert (=> b!4258547 m!4844139))

(declare-fun m!4844141 () Bool)

(assert (=> b!4258547 m!4844141))

(assert (=> b!4258547 m!4844139))

(assert (=> b!4258547 m!4844141))

(declare-fun m!4844143 () Bool)

(assert (=> b!4258547 m!4844143))

(declare-fun m!4844145 () Bool)

(assert (=> b!4258546 m!4844145))

(assert (=> d!1252385 d!1252453))

(declare-fun d!1252463 () Bool)

(declare-fun lt!1510131 () List!47355)

(assert (=> d!1252463 (= (size!34584 lt!1510131) (size!34581 (list!17046 (left!35012 t!4386))))))

(declare-fun e!2644830 () List!47355)

(assert (=> d!1252463 (= lt!1510131 e!2644830)))

(declare-fun c!723057 () Bool)

(assert (=> d!1252463 (= c!723057 ((_ is Nil!47230) (list!17046 (left!35012 t!4386))))))

(assert (=> d!1252463 (= (map!9657 (list!17046 (left!35012 t!4386)) f!428) lt!1510131)))

(declare-fun b!4258550 () Bool)

(assert (=> b!4258550 (= e!2644830 Nil!47231)))

(declare-fun b!4258551 () Bool)

(assert (=> b!4258551 (= e!2644830 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (left!35012 t!4386))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (left!35012 t!4386))))))))

(assert (= (and d!1252463 c!723057) b!4258550))

(assert (= (and d!1252463 (not c!723057)) b!4258551))

(declare-fun b_lambda!125485 () Bool)

(assert (=> (not b_lambda!125485) (not b!4258551)))

(declare-fun t!353049 () Bool)

(declare-fun tb!256781 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353049) tb!256781))

(declare-fun result!313322 () Bool)

(assert (=> tb!256781 (= result!313322 tp_is_empty!22857)))

(assert (=> b!4258551 t!353049))

(declare-fun b_and!337579 () Bool)

(assert (= b_and!337575 (and (=> t!353049 result!313322) b_and!337579)))

(declare-fun m!4844153 () Bool)

(assert (=> d!1252463 m!4844153))

(assert (=> d!1252463 m!4843659))

(declare-fun m!4844155 () Bool)

(assert (=> d!1252463 m!4844155))

(declare-fun m!4844157 () Bool)

(assert (=> b!4258551 m!4844157))

(declare-fun m!4844159 () Bool)

(assert (=> b!4258551 m!4844159))

(assert (=> b!4258551 m!4844157))

(assert (=> b!4258551 m!4844159))

(declare-fun m!4844161 () Bool)

(assert (=> b!4258551 m!4844161))

(assert (=> d!1252385 d!1252463))

(assert (=> d!1252385 d!1252375))

(assert (=> d!1252385 d!1252421))

(declare-fun d!1252469 () Bool)

(declare-fun lt!1510132 () Int)

(assert (=> d!1252469 (>= lt!1510132 0)))

(declare-fun e!2644833 () Int)

(assert (=> d!1252469 (= lt!1510132 e!2644833)))

(declare-fun c!723060 () Bool)

(assert (=> d!1252469 (= c!723060 ((_ is Nil!47231) lt!1510058))))

(assert (=> d!1252469 (= (size!34584 lt!1510058) lt!1510132)))

(declare-fun b!4258556 () Bool)

(assert (=> b!4258556 (= e!2644833 0)))

(declare-fun b!4258557 () Bool)

(assert (=> b!4258557 (= e!2644833 (+ 1 (size!34584 (t!353022 lt!1510058))))))

(assert (= (and d!1252469 c!723060) b!4258556))

(assert (= (and d!1252469 (not c!723060)) b!4258557))

(declare-fun m!4844167 () Bool)

(assert (=> b!4258557 m!4844167))

(assert (=> d!1252339 d!1252469))

(declare-fun d!1252473 () Bool)

(declare-fun lt!1510133 () Int)

(assert (=> d!1252473 (>= lt!1510133 0)))

(declare-fun e!2644834 () Int)

(assert (=> d!1252473 (= lt!1510133 e!2644834)))

(declare-fun c!723061 () Bool)

(assert (=> d!1252473 (= c!723061 ((_ is Nil!47230) lt!1510052))))

(assert (=> d!1252473 (= (size!34581 lt!1510052) lt!1510133)))

(declare-fun b!4258558 () Bool)

(assert (=> b!4258558 (= e!2644834 0)))

(declare-fun b!4258559 () Bool)

(assert (=> b!4258559 (= e!2644834 (+ 1 (size!34581 (t!353021 lt!1510052))))))

(assert (= (and d!1252473 c!723061) b!4258558))

(assert (= (and d!1252473 (not c!723061)) b!4258559))

(declare-fun m!4844169 () Bool)

(assert (=> b!4258559 m!4844169))

(assert (=> d!1252339 d!1252473))

(declare-fun d!1252475 () Bool)

(assert (=> d!1252475 (= (inv!62109 (xs!17544 (left!35012 t!4386))) (<= (size!34581 (innerList!14298 (xs!17544 (left!35012 t!4386)))) 2147483647))))

(declare-fun bs!598918 () Bool)

(assert (= bs!598918 d!1252475))

(declare-fun m!4844171 () Bool)

(assert (=> bs!598918 m!4844171))

(assert (=> b!4258397 d!1252475))

(declare-fun d!1252477 () Bool)

(declare-fun res!1750619 () Bool)

(declare-fun e!2644835 () Bool)

(assert (=> d!1252477 (=> (not res!1750619) (not e!2644835))))

(assert (=> d!1252477 (= res!1750619 (= (csize!28706 t!4386) (+ (size!34585 (left!35012 t!4386)) (size!34585 (right!35342 t!4386)))))))

(assert (=> d!1252477 (= (inv!62113 t!4386) e!2644835)))

(declare-fun b!4258560 () Bool)

(declare-fun res!1750620 () Bool)

(assert (=> b!4258560 (=> (not res!1750620) (not e!2644835))))

(assert (=> b!4258560 (= res!1750620 (and (not (= (left!35012 t!4386) Empty!14238)) (not (= (right!35342 t!4386) Empty!14238))))))

(declare-fun b!4258561 () Bool)

(declare-fun res!1750621 () Bool)

(assert (=> b!4258561 (=> (not res!1750621) (not e!2644835))))

(assert (=> b!4258561 (= res!1750621 (= (cheight!14449 t!4386) (+ (max!0 (height!1862 (left!35012 t!4386)) (height!1862 (right!35342 t!4386))) 1)))))

(declare-fun b!4258562 () Bool)

(assert (=> b!4258562 (= e!2644835 (<= 0 (cheight!14449 t!4386)))))

(assert (= (and d!1252477 res!1750619) b!4258560))

(assert (= (and b!4258560 res!1750620) b!4258561))

(assert (= (and b!4258561 res!1750621) b!4258562))

(assert (=> d!1252477 m!4843965))

(assert (=> d!1252477 m!4844043))

(assert (=> b!4258561 m!4843693))

(assert (=> b!4258561 m!4843695))

(assert (=> b!4258561 m!4843693))

(assert (=> b!4258561 m!4843695))

(declare-fun m!4844173 () Bool)

(assert (=> b!4258561 m!4844173))

(assert (=> b!4258192 d!1252477))

(declare-fun d!1252479 () Bool)

(declare-fun c!723064 () Bool)

(assert (=> d!1252479 (= c!723064 ((_ is Nil!47230) lt!1510064))))

(declare-fun e!2644838 () (InoxSet T!79378))

(assert (=> d!1252479 (= (content!7434 lt!1510064) e!2644838)))

(declare-fun b!4258567 () Bool)

(assert (=> b!4258567 (= e!2644838 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258568 () Bool)

(assert (=> b!4258568 (= e!2644838 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510064) true) (content!7434 (t!353021 lt!1510064))))))

(assert (= (and d!1252479 c!723064) b!4258567))

(assert (= (and d!1252479 (not c!723064)) b!4258568))

(declare-fun m!4844175 () Bool)

(assert (=> b!4258568 m!4844175))

(declare-fun m!4844177 () Bool)

(assert (=> b!4258568 m!4844177))

(assert (=> d!1252345 d!1252479))

(declare-fun d!1252481 () Bool)

(declare-fun c!723065 () Bool)

(assert (=> d!1252481 (= c!723065 ((_ is Nil!47230) lt!1510052))))

(declare-fun e!2644839 () (InoxSet T!79378))

(assert (=> d!1252481 (= (content!7434 lt!1510052) e!2644839)))

(declare-fun b!4258569 () Bool)

(assert (=> b!4258569 (= e!2644839 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258570 () Bool)

(assert (=> b!4258570 (= e!2644839 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510052) true) (content!7434 (t!353021 lt!1510052))))))

(assert (= (and d!1252481 c!723065) b!4258569))

(assert (= (and d!1252481 (not c!723065)) b!4258570))

(declare-fun m!4844179 () Bool)

(assert (=> b!4258570 m!4844179))

(declare-fun m!4844181 () Bool)

(assert (=> b!4258570 m!4844181))

(assert (=> d!1252345 d!1252481))

(declare-fun d!1252483 () Bool)

(declare-fun c!723066 () Bool)

(assert (=> d!1252483 (= c!723066 ((_ is Nil!47230) lt!1510051))))

(declare-fun e!2644840 () (InoxSet T!79378))

(assert (=> d!1252483 (= (content!7434 lt!1510051) e!2644840)))

(declare-fun b!4258571 () Bool)

(assert (=> b!4258571 (= e!2644840 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258572 () Bool)

(assert (=> b!4258572 (= e!2644840 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510051) true) (content!7434 (t!353021 lt!1510051))))))

(assert (= (and d!1252483 c!723066) b!4258571))

(assert (= (and d!1252483 (not c!723066)) b!4258572))

(declare-fun m!4844183 () Bool)

(assert (=> b!4258572 m!4844183))

(declare-fun m!4844185 () Bool)

(assert (=> b!4258572 m!4844185))

(assert (=> d!1252345 d!1252483))

(declare-fun b!4258575 () Bool)

(declare-fun e!2644843 () Conc!14239)

(assert (=> b!4258575 (= e!2644843 Empty!14239)))

(declare-fun b!4258576 () Bool)

(declare-fun e!2644845 () Conc!14239)

(assert (=> b!4258576 (= e!2644843 e!2644845)))

(declare-fun c!723067 () Bool)

(assert (=> b!4258576 (= c!723067 ((_ is Leaf!22005) (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258577 () Bool)

(declare-fun lt!1510135 () Unit!66127)

(assert (=> b!4258577 (= lt!1510135 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) f!428))))

(assert (=> b!4258577 (= e!2644845 (Node!14239 (map!9658 (left!35012 (right!35342 (left!35012 t!4386))) f!428) (map!9658 (right!35342 (right!35342 (left!35012 t!4386))) f!428) (csize!28706 (right!35342 (left!35012 t!4386))) (cheight!14449 (right!35342 (left!35012 t!4386)))))))

(declare-fun d!1252485 () Bool)

(declare-fun e!2644844 () Bool)

(assert (=> d!1252485 e!2644844))

(declare-fun res!1750624 () Bool)

(assert (=> d!1252485 (=> (not res!1750624) (not e!2644844))))

(declare-fun lt!1510134 () Conc!14239)

(assert (=> d!1252485 (= res!1750624 (= (list!17050 lt!1510134) (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)))))

(assert (=> d!1252485 (= lt!1510134 e!2644843)))

(declare-fun c!723068 () Bool)

(assert (=> d!1252485 (= c!723068 ((_ is Empty!14238) (right!35342 (left!35012 t!4386))))))

(assert (=> d!1252485 (isBalanced!3796 (right!35342 (left!35012 t!4386)))))

(assert (=> d!1252485 (= (map!9658 (right!35342 (left!35012 t!4386)) f!428) lt!1510134)))

(declare-fun b!4258578 () Bool)

(assert (=> b!4258578 (= e!2644844 (isBalanced!3798 lt!1510134))))

(declare-fun b!4258579 () Bool)

(assert (=> b!4258579 (= e!2644845 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (left!35012 t!4386))) f!428) (csize!28707 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252485 c!723068) b!4258575))

(assert (= (and d!1252485 (not c!723068)) b!4258576))

(assert (= (and b!4258576 c!723067) b!4258579))

(assert (= (and b!4258576 (not c!723067)) b!4258577))

(assert (= (and d!1252485 res!1750624) b!4258578))

(declare-fun m!4844187 () Bool)

(assert (=> b!4258577 m!4844187))

(declare-fun m!4844189 () Bool)

(assert (=> b!4258577 m!4844189))

(assert (=> b!4258577 m!4844187))

(declare-fun m!4844191 () Bool)

(assert (=> b!4258577 m!4844191))

(declare-fun m!4844193 () Bool)

(assert (=> b!4258577 m!4844193))

(assert (=> b!4258577 m!4844189))

(declare-fun m!4844195 () Bool)

(assert (=> b!4258577 m!4844195))

(declare-fun m!4844197 () Bool)

(assert (=> d!1252485 m!4844197))

(assert (=> d!1252485 m!4843863))

(assert (=> d!1252485 m!4843863))

(declare-fun m!4844199 () Bool)

(assert (=> d!1252485 m!4844199))

(assert (=> d!1252485 m!4844055))

(declare-fun m!4844201 () Bool)

(assert (=> b!4258578 m!4844201))

(declare-fun m!4844203 () Bool)

(assert (=> b!4258579 m!4844203))

(assert (=> b!4258380 d!1252485))

(declare-fun b!4258584 () Bool)

(declare-fun e!2644846 () List!47354)

(assert (=> b!4258584 (= e!2644846 Nil!47230)))

(declare-fun b!4258586 () Bool)

(declare-fun e!2644847 () List!47354)

(assert (=> b!4258586 (= e!2644847 (list!17048 (xs!17544 (left!35012 (left!35012 t!4386)))))))

(declare-fun d!1252487 () Bool)

(declare-fun c!723069 () Bool)

(assert (=> d!1252487 (= c!723069 ((_ is Empty!14238) (left!35012 (left!35012 t!4386))))))

(assert (=> d!1252487 (= (list!17046 (left!35012 (left!35012 t!4386))) e!2644846)))

(declare-fun b!4258585 () Bool)

(assert (=> b!4258585 (= e!2644846 e!2644847)))

(declare-fun c!723070 () Bool)

(assert (=> b!4258585 (= c!723070 ((_ is Leaf!22005) (left!35012 (left!35012 t!4386))))))

(declare-fun b!4258587 () Bool)

(assert (=> b!4258587 (= e!2644847 (++!12023 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386))))))))

(assert (= (and d!1252487 c!723069) b!4258584))

(assert (= (and d!1252487 (not c!723069)) b!4258585))

(assert (= (and b!4258585 c!723070) b!4258586))

(assert (= (and b!4258585 (not c!723070)) b!4258587))

(declare-fun m!4844205 () Bool)

(assert (=> b!4258586 m!4844205))

(declare-fun m!4844207 () Bool)

(assert (=> b!4258587 m!4844207))

(declare-fun m!4844209 () Bool)

(assert (=> b!4258587 m!4844209))

(assert (=> b!4258587 m!4844207))

(assert (=> b!4258587 m!4844209))

(declare-fun m!4844211 () Bool)

(assert (=> b!4258587 m!4844211))

(assert (=> b!4258380 d!1252487))

(declare-fun b!4258588 () Bool)

(declare-fun e!2644848 () Conc!14239)

(assert (=> b!4258588 (= e!2644848 Empty!14239)))

(declare-fun b!4258589 () Bool)

(declare-fun e!2644850 () Conc!14239)

(assert (=> b!4258589 (= e!2644848 e!2644850)))

(declare-fun c!723071 () Bool)

(assert (=> b!4258589 (= c!723071 ((_ is Leaf!22005) (left!35012 (left!35012 t!4386))))))

(declare-fun b!4258590 () Bool)

(declare-fun lt!1510137 () Unit!66127)

(assert (=> b!4258590 (= lt!1510137 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) f!428))))

(assert (=> b!4258590 (= e!2644850 (Node!14239 (map!9658 (left!35012 (left!35012 (left!35012 t!4386))) f!428) (map!9658 (right!35342 (left!35012 (left!35012 t!4386))) f!428) (csize!28706 (left!35012 (left!35012 t!4386))) (cheight!14449 (left!35012 (left!35012 t!4386)))))))

(declare-fun d!1252489 () Bool)

(declare-fun e!2644849 () Bool)

(assert (=> d!1252489 e!2644849))

(declare-fun res!1750629 () Bool)

(assert (=> d!1252489 (=> (not res!1750629) (not e!2644849))))

(declare-fun lt!1510136 () Conc!14239)

(assert (=> d!1252489 (= res!1750629 (= (list!17050 lt!1510136) (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)))))

(assert (=> d!1252489 (= lt!1510136 e!2644848)))

(declare-fun c!723072 () Bool)

(assert (=> d!1252489 (= c!723072 ((_ is Empty!14238) (left!35012 (left!35012 t!4386))))))

(assert (=> d!1252489 (isBalanced!3796 (left!35012 (left!35012 t!4386)))))

(assert (=> d!1252489 (= (map!9658 (left!35012 (left!35012 t!4386)) f!428) lt!1510136)))

(declare-fun b!4258591 () Bool)

(assert (=> b!4258591 (= e!2644849 (isBalanced!3798 lt!1510136))))

(declare-fun b!4258592 () Bool)

(assert (=> b!4258592 (= e!2644850 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (left!35012 t!4386))) f!428) (csize!28707 (left!35012 (left!35012 t!4386)))))))

(assert (= (and d!1252489 c!723072) b!4258588))

(assert (= (and d!1252489 (not c!723072)) b!4258589))

(assert (= (and b!4258589 c!723071) b!4258592))

(assert (= (and b!4258589 (not c!723071)) b!4258590))

(assert (= (and d!1252489 res!1750629) b!4258591))

(assert (=> b!4258590 m!4844209))

(assert (=> b!4258590 m!4844207))

(assert (=> b!4258590 m!4844209))

(declare-fun m!4844213 () Bool)

(assert (=> b!4258590 m!4844213))

(declare-fun m!4844215 () Bool)

(assert (=> b!4258590 m!4844215))

(assert (=> b!4258590 m!4844207))

(declare-fun m!4844217 () Bool)

(assert (=> b!4258590 m!4844217))

(declare-fun m!4844219 () Bool)

(assert (=> d!1252489 m!4844219))

(assert (=> d!1252489 m!4843861))

(assert (=> d!1252489 m!4843861))

(declare-fun m!4844221 () Bool)

(assert (=> d!1252489 m!4844221))

(assert (=> d!1252489 m!4844053))

(declare-fun m!4844223 () Bool)

(assert (=> b!4258591 m!4844223))

(declare-fun m!4844225 () Bool)

(assert (=> b!4258592 m!4844225))

(assert (=> b!4258380 d!1252489))

(declare-fun d!1252491 () Bool)

(assert (=> d!1252491 (= (map!9657 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386)))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)))))

(declare-fun lt!1510138 () Unit!66127)

(assert (=> d!1252491 (= lt!1510138 (choose!25978 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))) f!428))))

(assert (=> d!1252491 (= (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))) f!428) lt!1510138)))

(declare-fun bs!598919 () Bool)

(assert (= bs!598919 d!1252491))

(assert (=> bs!598919 m!4844221))

(assert (=> bs!598919 m!4844199))

(declare-fun m!4844227 () Bool)

(assert (=> bs!598919 m!4844227))

(assert (=> bs!598919 m!4843861))

(assert (=> bs!598919 m!4843863))

(declare-fun m!4844229 () Bool)

(assert (=> bs!598919 m!4844229))

(assert (=> bs!598919 m!4843863))

(assert (=> bs!598919 m!4844199))

(assert (=> bs!598919 m!4843865))

(declare-fun m!4844237 () Bool)

(assert (=> bs!598919 m!4844237))

(assert (=> bs!598919 m!4843861))

(assert (=> bs!598919 m!4843863))

(assert (=> bs!598919 m!4843865))

(assert (=> bs!598919 m!4843861))

(assert (=> bs!598919 m!4844221))

(assert (=> b!4258380 d!1252491))

(declare-fun b!4258596 () Bool)

(declare-fun e!2644852 () List!47354)

(assert (=> b!4258596 (= e!2644852 Nil!47230)))

(declare-fun b!4258598 () Bool)

(declare-fun e!2644853 () List!47354)

(assert (=> b!4258598 (= e!2644853 (list!17048 (xs!17544 (right!35342 (left!35012 t!4386)))))))

(declare-fun d!1252493 () Bool)

(declare-fun c!723073 () Bool)

(assert (=> d!1252493 (= c!723073 ((_ is Empty!14238) (right!35342 (left!35012 t!4386))))))

(assert (=> d!1252493 (= (list!17046 (right!35342 (left!35012 t!4386))) e!2644852)))

(declare-fun b!4258597 () Bool)

(assert (=> b!4258597 (= e!2644852 e!2644853)))

(declare-fun c!723074 () Bool)

(assert (=> b!4258597 (= c!723074 ((_ is Leaf!22005) (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258599 () Bool)

(assert (=> b!4258599 (= e!2644853 (++!12023 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386))))))))

(assert (= (and d!1252493 c!723073) b!4258596))

(assert (= (and d!1252493 (not c!723073)) b!4258597))

(assert (= (and b!4258597 c!723074) b!4258598))

(assert (= (and b!4258597 (not c!723074)) b!4258599))

(declare-fun m!4844243 () Bool)

(assert (=> b!4258598 m!4844243))

(assert (=> b!4258599 m!4844189))

(assert (=> b!4258599 m!4844187))

(assert (=> b!4258599 m!4844189))

(assert (=> b!4258599 m!4844187))

(declare-fun m!4844245 () Bool)

(assert (=> b!4258599 m!4844245))

(assert (=> b!4258380 d!1252493))

(declare-fun d!1252497 () Bool)

(assert (=> d!1252497 (= ($colon$colon!627 (map!9657 (t!353021 (++!12023 lt!1510052 lt!1510051)) f!428) (dynLambda!20215 f!428 (h!52650 (++!12023 lt!1510052 lt!1510051)))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (++!12023 lt!1510052 lt!1510051))) (map!9657 (t!353021 (++!12023 lt!1510052 lt!1510051)) f!428)))))

(assert (=> b!4258220 d!1252497))

(declare-fun d!1252499 () Bool)

(declare-fun lt!1510139 () List!47355)

(assert (=> d!1252499 (= (size!34584 lt!1510139) (size!34581 (t!353021 (++!12023 lt!1510052 lt!1510051))))))

(declare-fun e!2644854 () List!47355)

(assert (=> d!1252499 (= lt!1510139 e!2644854)))

(declare-fun c!723075 () Bool)

(assert (=> d!1252499 (= c!723075 ((_ is Nil!47230) (t!353021 (++!12023 lt!1510052 lt!1510051))))))

(assert (=> d!1252499 (= (map!9657 (t!353021 (++!12023 lt!1510052 lt!1510051)) f!428) lt!1510139)))

(declare-fun b!4258600 () Bool)

(assert (=> b!4258600 (= e!2644854 Nil!47231)))

(declare-fun b!4258601 () Bool)

(assert (=> b!4258601 (= e!2644854 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (++!12023 lt!1510052 lt!1510051))))))))

(assert (= (and d!1252499 c!723075) b!4258600))

(assert (= (and d!1252499 (not c!723075)) b!4258601))

(declare-fun b_lambda!125487 () Bool)

(assert (=> (not b_lambda!125487) (not b!4258601)))

(declare-fun t!353052 () Bool)

(declare-fun tb!256783 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353052) tb!256783))

(declare-fun result!313324 () Bool)

(assert (=> tb!256783 (= result!313324 tp_is_empty!22857)))

(assert (=> b!4258601 t!353052))

(declare-fun b_and!337581 () Bool)

(assert (= b_and!337579 (and (=> t!353052 result!313324) b_and!337581)))

(declare-fun m!4844247 () Bool)

(assert (=> d!1252499 m!4844247))

(assert (=> d!1252499 m!4844069))

(declare-fun m!4844249 () Bool)

(assert (=> b!4258601 m!4844249))

(declare-fun m!4844251 () Bool)

(assert (=> b!4258601 m!4844251))

(assert (=> b!4258601 m!4844249))

(assert (=> b!4258601 m!4844251))

(declare-fun m!4844253 () Bool)

(assert (=> b!4258601 m!4844253))

(assert (=> b!4258220 d!1252499))

(declare-fun d!1252501 () Bool)

(declare-fun c!723084 () Bool)

(assert (=> d!1252501 (= c!723084 ((_ is Nil!47231) lt!1510074))))

(declare-fun e!2644863 () (InoxSet B!2813))

(assert (=> d!1252501 (= (content!7436 lt!1510074) e!2644863)))

(declare-fun b!4258618 () Bool)

(assert (=> b!4258618 (= e!2644863 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4258619 () Bool)

(assert (=> b!4258619 (= e!2644863 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 lt!1510074) true) (content!7436 (t!353022 lt!1510074))))))

(assert (= (and d!1252501 c!723084) b!4258618))

(assert (= (and d!1252501 (not c!723084)) b!4258619))

(declare-fun m!4844255 () Bool)

(assert (=> b!4258619 m!4844255))

(declare-fun m!4844259 () Bool)

(assert (=> b!4258619 m!4844259))

(assert (=> d!1252357 d!1252501))

(declare-fun d!1252503 () Bool)

(declare-fun c!723085 () Bool)

(assert (=> d!1252503 (= c!723085 ((_ is Nil!47231) (map!9657 lt!1510052 f!428)))))

(declare-fun e!2644864 () (InoxSet B!2813))

(assert (=> d!1252503 (= (content!7436 (map!9657 lt!1510052 f!428)) e!2644864)))

(declare-fun b!4258620 () Bool)

(assert (=> b!4258620 (= e!2644864 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4258621 () Bool)

(assert (=> b!4258621 (= e!2644864 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 (map!9657 lt!1510052 f!428)) true) (content!7436 (t!353022 (map!9657 lt!1510052 f!428)))))))

(assert (= (and d!1252503 c!723085) b!4258620))

(assert (= (and d!1252503 (not c!723085)) b!4258621))

(declare-fun m!4844267 () Bool)

(assert (=> b!4258621 m!4844267))

(declare-fun m!4844269 () Bool)

(assert (=> b!4258621 m!4844269))

(assert (=> d!1252357 d!1252503))

(declare-fun d!1252507 () Bool)

(declare-fun c!723087 () Bool)

(assert (=> d!1252507 (= c!723087 ((_ is Nil!47231) (map!9657 lt!1510051 f!428)))))

(declare-fun e!2644866 () (InoxSet B!2813))

(assert (=> d!1252507 (= (content!7436 (map!9657 lt!1510051 f!428)) e!2644866)))

(declare-fun b!4258624 () Bool)

(assert (=> b!4258624 (= e!2644866 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4258625 () Bool)

(assert (=> b!4258625 (= e!2644866 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 (map!9657 lt!1510051 f!428)) true) (content!7436 (t!353022 (map!9657 lt!1510051 f!428)))))))

(assert (= (and d!1252507 c!723087) b!4258624))

(assert (= (and d!1252507 (not c!723087)) b!4258625))

(declare-fun m!4844271 () Bool)

(assert (=> b!4258625 m!4844271))

(declare-fun m!4844273 () Bool)

(assert (=> b!4258625 m!4844273))

(assert (=> d!1252357 d!1252507))

(declare-fun b!4258626 () Bool)

(declare-fun res!1750637 () Bool)

(declare-fun e!2644867 () Bool)

(assert (=> b!4258626 (=> (not res!1750637) (not e!2644867))))

(assert (=> b!4258626 (= res!1750637 (isBalanced!3798 (left!35013 lt!1510093)))))

(declare-fun b!4258627 () Bool)

(declare-fun res!1750633 () Bool)

(assert (=> b!4258627 (=> (not res!1750633) (not e!2644867))))

(assert (=> b!4258627 (= res!1750633 (<= (- (height!1863 (left!35013 lt!1510093)) (height!1863 (right!35343 lt!1510093))) 1))))

(declare-fun b!4258628 () Bool)

(declare-fun res!1750636 () Bool)

(assert (=> b!4258628 (=> (not res!1750636) (not e!2644867))))

(assert (=> b!4258628 (= res!1750636 (isBalanced!3798 (right!35343 lt!1510093)))))

(declare-fun b!4258629 () Bool)

(declare-fun e!2644868 () Bool)

(assert (=> b!4258629 (= e!2644868 e!2644867)))

(declare-fun res!1750635 () Bool)

(assert (=> b!4258629 (=> (not res!1750635) (not e!2644867))))

(assert (=> b!4258629 (= res!1750635 (<= (- 1) (- (height!1863 (left!35013 lt!1510093)) (height!1863 (right!35343 lt!1510093)))))))

(declare-fun b!4258630 () Bool)

(assert (=> b!4258630 (= e!2644867 (not (isEmpty!27969 (right!35343 lt!1510093))))))

(declare-fun b!4258631 () Bool)

(declare-fun res!1750634 () Bool)

(assert (=> b!4258631 (=> (not res!1750634) (not e!2644867))))

(assert (=> b!4258631 (= res!1750634 (not (isEmpty!27969 (left!35013 lt!1510093))))))

(declare-fun d!1252509 () Bool)

(declare-fun res!1750638 () Bool)

(assert (=> d!1252509 (=> res!1750638 e!2644868)))

(assert (=> d!1252509 (= res!1750638 (not ((_ is Node!14239) lt!1510093)))))

(assert (=> d!1252509 (= (isBalanced!3798 lt!1510093) e!2644868)))

(assert (= (and d!1252509 (not res!1750638)) b!4258629))

(assert (= (and b!4258629 res!1750635) b!4258627))

(assert (= (and b!4258627 res!1750633) b!4258626))

(assert (= (and b!4258626 res!1750637) b!4258628))

(assert (= (and b!4258628 res!1750636) b!4258631))

(assert (= (and b!4258631 res!1750634) b!4258630))

(declare-fun m!4844285 () Bool)

(assert (=> b!4258630 m!4844285))

(declare-fun m!4844287 () Bool)

(assert (=> b!4258631 m!4844287))

(declare-fun m!4844289 () Bool)

(assert (=> b!4258629 m!4844289))

(declare-fun m!4844291 () Bool)

(assert (=> b!4258629 m!4844291))

(assert (=> b!4258627 m!4844289))

(assert (=> b!4258627 m!4844291))

(declare-fun m!4844293 () Bool)

(assert (=> b!4258626 m!4844293))

(declare-fun m!4844295 () Bool)

(assert (=> b!4258628 m!4844295))

(assert (=> b!4258381 d!1252509))

(declare-fun d!1252513 () Bool)

(declare-fun lt!1510141 () IArray!28483)

(assert (=> d!1252513 (= lt!1510141 (IArray!28484 (map!9657 (list!17048 (xs!17544 (left!35012 t!4386))) f!428)))))

(assert (=> d!1252513 (= lt!1510141 (choose!25979 (xs!17544 (left!35012 t!4386)) f!428))))

(assert (=> d!1252513 (= (map!9660 (xs!17544 (left!35012 t!4386)) f!428) lt!1510141)))

(declare-fun bs!598920 () Bool)

(assert (= bs!598920 d!1252513))

(assert (=> bs!598920 m!4843859))

(assert (=> bs!598920 m!4843859))

(declare-fun m!4844297 () Bool)

(assert (=> bs!598920 m!4844297))

(declare-fun m!4844299 () Bool)

(assert (=> bs!598920 m!4844299))

(assert (=> b!4258382 d!1252513))

(declare-fun d!1252515 () Bool)

(declare-fun res!1750645 () Bool)

(declare-fun e!2644871 () Bool)

(assert (=> d!1252515 (=> (not res!1750645) (not e!2644871))))

(assert (=> d!1252515 (= res!1750645 (<= (size!34581 (list!17048 (xs!17544 t!4386))) 512))))

(assert (=> d!1252515 (= (inv!62114 t!4386) e!2644871)))

(declare-fun b!4258638 () Bool)

(declare-fun res!1750646 () Bool)

(assert (=> b!4258638 (=> (not res!1750646) (not e!2644871))))

(assert (=> b!4258638 (= res!1750646 (= (csize!28707 t!4386) (size!34581 (list!17048 (xs!17544 t!4386)))))))

(declare-fun b!4258639 () Bool)

(assert (=> b!4258639 (= e!2644871 (and (> (csize!28707 t!4386) 0) (<= (csize!28707 t!4386) 512)))))

(assert (= (and d!1252515 res!1750645) b!4258638))

(assert (= (and b!4258638 res!1750646) b!4258639))

(declare-fun m!4844309 () Bool)

(assert (=> d!1252515 m!4844309))

(assert (=> d!1252515 m!4844309))

(declare-fun m!4844311 () Bool)

(assert (=> d!1252515 m!4844311))

(assert (=> b!4258638 m!4844309))

(assert (=> b!4258638 m!4844309))

(assert (=> b!4258638 m!4844311))

(assert (=> b!4258194 d!1252515))

(declare-fun b!4258642 () Bool)

(declare-fun e!2644873 () List!47355)

(assert (=> b!4258642 (= e!2644873 Nil!47231)))

(declare-fun b!4258645 () Bool)

(declare-fun e!2644874 () List!47355)

(assert (=> b!4258645 (= e!2644874 (++!12024 (list!17050 (left!35013 lt!1510095)) (list!17050 (right!35343 lt!1510095))))))

(declare-fun b!4258643 () Bool)

(assert (=> b!4258643 (= e!2644873 e!2644874)))

(declare-fun c!723090 () Bool)

(assert (=> b!4258643 (= c!723090 ((_ is Leaf!22006) lt!1510095))))

(declare-fun b!4258644 () Bool)

(assert (=> b!4258644 (= e!2644874 (list!17051 (xs!17545 lt!1510095)))))

(declare-fun d!1252521 () Bool)

(declare-fun c!723089 () Bool)

(assert (=> d!1252521 (= c!723089 ((_ is Empty!14239) lt!1510095))))

(assert (=> d!1252521 (= (list!17050 lt!1510095) e!2644873)))

(assert (= (and d!1252521 c!723089) b!4258642))

(assert (= (and d!1252521 (not c!723089)) b!4258643))

(assert (= (and b!4258643 c!723090) b!4258644))

(assert (= (and b!4258643 (not c!723090)) b!4258645))

(declare-fun m!4844313 () Bool)

(assert (=> b!4258645 m!4844313))

(declare-fun m!4844315 () Bool)

(assert (=> b!4258645 m!4844315))

(assert (=> b!4258645 m!4844313))

(assert (=> b!4258645 m!4844315))

(declare-fun m!4844317 () Bool)

(assert (=> b!4258645 m!4844317))

(declare-fun m!4844319 () Bool)

(assert (=> b!4258644 m!4844319))

(assert (=> d!1252389 d!1252521))

(declare-fun d!1252523 () Bool)

(declare-fun lt!1510143 () List!47355)

(assert (=> d!1252523 (= (size!34584 lt!1510143) (size!34581 (list!17046 (right!35342 t!4386))))))

(declare-fun e!2644875 () List!47355)

(assert (=> d!1252523 (= lt!1510143 e!2644875)))

(declare-fun c!723091 () Bool)

(assert (=> d!1252523 (= c!723091 ((_ is Nil!47230) (list!17046 (right!35342 t!4386))))))

(assert (=> d!1252523 (= (map!9657 (list!17046 (right!35342 t!4386)) f!428) lt!1510143)))

(declare-fun b!4258646 () Bool)

(assert (=> b!4258646 (= e!2644875 Nil!47231)))

(declare-fun b!4258647 () Bool)

(assert (=> b!4258647 (= e!2644875 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (right!35342 t!4386))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (right!35342 t!4386))))))))

(assert (= (and d!1252523 c!723091) b!4258646))

(assert (= (and d!1252523 (not c!723091)) b!4258647))

(declare-fun b_lambda!125493 () Bool)

(assert (=> (not b_lambda!125493) (not b!4258647)))

(declare-fun t!353059 () Bool)

(declare-fun tb!256789 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353059) tb!256789))

(declare-fun result!313330 () Bool)

(assert (=> tb!256789 (= result!313330 tp_is_empty!22857)))

(assert (=> b!4258647 t!353059))

(declare-fun b_and!337587 () Bool)

(assert (= b_and!337581 (and (=> t!353059 result!313330) b_and!337587)))

(declare-fun m!4844329 () Bool)

(assert (=> d!1252523 m!4844329))

(assert (=> d!1252523 m!4843661))

(declare-fun m!4844331 () Bool)

(assert (=> d!1252523 m!4844331))

(declare-fun m!4844333 () Bool)

(assert (=> b!4258647 m!4844333))

(declare-fun m!4844335 () Bool)

(assert (=> b!4258647 m!4844335))

(assert (=> b!4258647 m!4844333))

(assert (=> b!4258647 m!4844335))

(declare-fun m!4844337 () Bool)

(assert (=> b!4258647 m!4844337))

(assert (=> d!1252389 d!1252523))

(assert (=> d!1252389 d!1252349))

(assert (=> d!1252389 d!1252433))

(declare-fun d!1252527 () Bool)

(assert (=> d!1252527 (= ($colon$colon!627 (map!9657 (t!353021 lt!1510051) f!428) (dynLambda!20215 f!428 (h!52650 lt!1510051))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 lt!1510051)) (map!9657 (t!353021 lt!1510051) f!428)))))

(assert (=> b!4258295 d!1252527))

(declare-fun d!1252529 () Bool)

(declare-fun lt!1510146 () List!47355)

(assert (=> d!1252529 (= (size!34584 lt!1510146) (size!34581 (t!353021 lt!1510051)))))

(declare-fun e!2644879 () List!47355)

(assert (=> d!1252529 (= lt!1510146 e!2644879)))

(declare-fun c!723094 () Bool)

(assert (=> d!1252529 (= c!723094 ((_ is Nil!47230) (t!353021 lt!1510051)))))

(assert (=> d!1252529 (= (map!9657 (t!353021 lt!1510051) f!428) lt!1510146)))

(declare-fun b!4258653 () Bool)

(assert (=> b!4258653 (= e!2644879 Nil!47231)))

(declare-fun b!4258654 () Bool)

(assert (=> b!4258654 (= e!2644879 ($colon$colon!627 (map!9657 (t!353021 (t!353021 lt!1510051)) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510051)))))))

(assert (= (and d!1252529 c!723094) b!4258653))

(assert (= (and d!1252529 (not c!723094)) b!4258654))

(declare-fun b_lambda!125495 () Bool)

(assert (=> (not b_lambda!125495) (not b!4258654)))

(declare-fun t!353061 () Bool)

(declare-fun tb!256791 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353061) tb!256791))

(declare-fun result!313332 () Bool)

(assert (=> tb!256791 (= result!313332 tp_is_empty!22857)))

(assert (=> b!4258654 t!353061))

(declare-fun b_and!337589 () Bool)

(assert (= b_and!337587 (and (=> t!353061 result!313332) b_and!337589)))

(declare-fun m!4844359 () Bool)

(assert (=> d!1252529 m!4844359))

(assert (=> d!1252529 m!4844023))

(declare-fun m!4844361 () Bool)

(assert (=> b!4258654 m!4844361))

(declare-fun m!4844363 () Bool)

(assert (=> b!4258654 m!4844363))

(assert (=> b!4258654 m!4844361))

(assert (=> b!4258654 m!4844363))

(declare-fun m!4844367 () Bool)

(assert (=> b!4258654 m!4844367))

(assert (=> b!4258295 d!1252529))

(declare-fun d!1252533 () Bool)

(declare-fun res!1750648 () Bool)

(declare-fun e!2644882 () Bool)

(assert (=> d!1252533 (=> (not res!1750648) (not e!2644882))))

(assert (=> d!1252533 (= res!1750648 (= (csize!28706 (left!35012 t!4386)) (+ (size!34585 (left!35012 (left!35012 t!4386))) (size!34585 (right!35342 (left!35012 t!4386))))))))

(assert (=> d!1252533 (= (inv!62113 (left!35012 t!4386)) e!2644882)))

(declare-fun b!4258659 () Bool)

(declare-fun res!1750649 () Bool)

(assert (=> b!4258659 (=> (not res!1750649) (not e!2644882))))

(assert (=> b!4258659 (= res!1750649 (and (not (= (left!35012 (left!35012 t!4386)) Empty!14238)) (not (= (right!35342 (left!35012 t!4386)) Empty!14238))))))

(declare-fun b!4258660 () Bool)

(declare-fun res!1750650 () Bool)

(assert (=> b!4258660 (=> (not res!1750650) (not e!2644882))))

(assert (=> b!4258660 (= res!1750650 (= (cheight!14449 (left!35012 t!4386)) (+ (max!0 (height!1862 (left!35012 (left!35012 t!4386))) (height!1862 (right!35342 (left!35012 t!4386)))) 1)))))

(declare-fun b!4258661 () Bool)

(assert (=> b!4258661 (= e!2644882 (<= 0 (cheight!14449 (left!35012 t!4386))))))

(assert (= (and d!1252533 res!1750648) b!4258659))

(assert (= (and b!4258659 res!1750649) b!4258660))

(assert (= (and b!4258660 res!1750650) b!4258661))

(declare-fun m!4844375 () Bool)

(assert (=> d!1252533 m!4844375))

(declare-fun m!4844377 () Bool)

(assert (=> d!1252533 m!4844377))

(assert (=> b!4258660 m!4844047))

(assert (=> b!4258660 m!4844049))

(assert (=> b!4258660 m!4844047))

(assert (=> b!4258660 m!4844049))

(declare-fun m!4844379 () Bool)

(assert (=> b!4258660 m!4844379))

(assert (=> b!4258305 d!1252533))

(assert (=> d!1252361 d!1252369))

(assert (=> d!1252361 d!1252339))

(assert (=> d!1252361 d!1252345))

(assert (=> d!1252361 d!1252357))

(declare-fun d!1252537 () Bool)

(assert (=> d!1252537 (= (map!9657 (++!12023 lt!1510052 lt!1510051) f!428) (++!12024 (map!9657 lt!1510052 f!428) (map!9657 lt!1510051 f!428)))))

(assert (=> d!1252537 true))

(declare-fun _$82!88 () Unit!66127)

(assert (=> d!1252537 (= (choose!25978 lt!1510052 lt!1510051 f!428) _$82!88)))

(declare-fun bs!598922 () Bool)

(assert (= bs!598922 d!1252537))

(assert (=> bs!598922 m!4843653))

(assert (=> bs!598922 m!4843663))

(assert (=> bs!598922 m!4843665))

(assert (=> bs!598922 m!4843655))

(assert (=> bs!598922 m!4843653))

(assert (=> bs!598922 m!4843655))

(assert (=> bs!598922 m!4843657))

(assert (=> bs!598922 m!4843663))

(assert (=> d!1252361 d!1252537))

(assert (=> d!1252361 d!1252343))

(declare-fun d!1252545 () Bool)

(declare-fun res!1750652 () Bool)

(declare-fun e!2644888 () Bool)

(assert (=> d!1252545 (=> (not res!1750652) (not e!2644888))))

(assert (=> d!1252545 (= res!1750652 (<= (size!34581 (list!17048 (xs!17544 (left!35012 t!4386)))) 512))))

(assert (=> d!1252545 (= (inv!62114 (left!35012 t!4386)) e!2644888)))

(declare-fun b!4258671 () Bool)

(declare-fun res!1750653 () Bool)

(assert (=> b!4258671 (=> (not res!1750653) (not e!2644888))))

(assert (=> b!4258671 (= res!1750653 (= (csize!28707 (left!35012 t!4386)) (size!34581 (list!17048 (xs!17544 (left!35012 t!4386))))))))

(declare-fun b!4258672 () Bool)

(assert (=> b!4258672 (= e!2644888 (and (> (csize!28707 (left!35012 t!4386)) 0) (<= (csize!28707 (left!35012 t!4386)) 512)))))

(assert (= (and d!1252545 res!1750652) b!4258671))

(assert (= (and b!4258671 res!1750653) b!4258672))

(assert (=> d!1252545 m!4843859))

(assert (=> d!1252545 m!4843859))

(declare-fun m!4844407 () Bool)

(assert (=> d!1252545 m!4844407))

(assert (=> b!4258671 m!4843859))

(assert (=> b!4258671 m!4843859))

(assert (=> b!4258671 m!4844407))

(assert (=> b!4258307 d!1252545))

(declare-fun b!4258676 () Bool)

(declare-fun e!2644890 () Bool)

(declare-fun lt!1510150 () List!47354)

(assert (=> b!4258676 (= e!2644890 (or (not (= (list!17046 (right!35342 (left!35012 t!4386))) Nil!47230)) (= lt!1510150 (list!17046 (left!35012 (left!35012 t!4386))))))))

(declare-fun b!4258675 () Bool)

(declare-fun res!1750654 () Bool)

(assert (=> b!4258675 (=> (not res!1750654) (not e!2644890))))

(assert (=> b!4258675 (= res!1750654 (= (size!34581 lt!1510150) (+ (size!34581 (list!17046 (left!35012 (left!35012 t!4386)))) (size!34581 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(declare-fun b!4258673 () Bool)

(declare-fun e!2644889 () List!47354)

(assert (=> b!4258673 (= e!2644889 (list!17046 (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258674 () Bool)

(assert (=> b!4258674 (= e!2644889 (Cons!47230 (h!52650 (list!17046 (left!35012 (left!35012 t!4386)))) (++!12023 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252547 () Bool)

(assert (=> d!1252547 e!2644890))

(declare-fun res!1750655 () Bool)

(assert (=> d!1252547 (=> (not res!1750655) (not e!2644890))))

(assert (=> d!1252547 (= res!1750655 (= (content!7434 lt!1510150) ((_ map or) (content!7434 (list!17046 (left!35012 (left!35012 t!4386)))) (content!7434 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(assert (=> d!1252547 (= lt!1510150 e!2644889)))

(declare-fun c!723101 () Bool)

(assert (=> d!1252547 (= c!723101 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252547 (= (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386)))) lt!1510150)))

(assert (= (and d!1252547 c!723101) b!4258673))

(assert (= (and d!1252547 (not c!723101)) b!4258674))

(assert (= (and d!1252547 res!1750655) b!4258675))

(assert (= (and b!4258675 res!1750654) b!4258676))

(declare-fun m!4844409 () Bool)

(assert (=> b!4258675 m!4844409))

(assert (=> b!4258675 m!4843861))

(declare-fun m!4844411 () Bool)

(assert (=> b!4258675 m!4844411))

(assert (=> b!4258675 m!4843863))

(declare-fun m!4844413 () Bool)

(assert (=> b!4258675 m!4844413))

(assert (=> b!4258674 m!4843863))

(declare-fun m!4844415 () Bool)

(assert (=> b!4258674 m!4844415))

(declare-fun m!4844417 () Bool)

(assert (=> d!1252547 m!4844417))

(assert (=> d!1252547 m!4843861))

(declare-fun m!4844419 () Bool)

(assert (=> d!1252547 m!4844419))

(assert (=> d!1252547 m!4843863))

(declare-fun m!4844421 () Bool)

(assert (=> d!1252547 m!4844421))

(assert (=> b!4258304 d!1252547))

(assert (=> b!4258304 d!1252487))

(assert (=> b!4258304 d!1252493))

(declare-fun d!1252549 () Bool)

(assert (=> d!1252549 (= ($colon$colon!627 (map!9657 (t!353021 lt!1510052) f!428) (dynLambda!20215 f!428 (h!52650 lt!1510052))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 lt!1510052)) (map!9657 (t!353021 lt!1510052) f!428)))))

(assert (=> b!4258208 d!1252549))

(declare-fun d!1252551 () Bool)

(declare-fun lt!1510151 () List!47355)

(assert (=> d!1252551 (= (size!34584 lt!1510151) (size!34581 (t!353021 lt!1510052)))))

(declare-fun e!2644893 () List!47355)

(assert (=> d!1252551 (= lt!1510151 e!2644893)))

(declare-fun c!723102 () Bool)

(assert (=> d!1252551 (= c!723102 ((_ is Nil!47230) (t!353021 lt!1510052)))))

(assert (=> d!1252551 (= (map!9657 (t!353021 lt!1510052) f!428) lt!1510151)))

(declare-fun b!4258681 () Bool)

(assert (=> b!4258681 (= e!2644893 Nil!47231)))

(declare-fun b!4258682 () Bool)

(assert (=> b!4258682 (= e!2644893 ($colon$colon!627 (map!9657 (t!353021 (t!353021 lt!1510052)) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510052)))))))

(assert (= (and d!1252551 c!723102) b!4258681))

(assert (= (and d!1252551 (not c!723102)) b!4258682))

(declare-fun b_lambda!125497 () Bool)

(assert (=> (not b_lambda!125497) (not b!4258682)))

(declare-fun t!353063 () Bool)

(declare-fun tb!256793 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353063) tb!256793))

(declare-fun result!313334 () Bool)

(assert (=> tb!256793 (= result!313334 tp_is_empty!22857)))

(assert (=> b!4258682 t!353063))

(declare-fun b_and!337591 () Bool)

(assert (= b_and!337589 (and (=> t!353063 result!313334) b_and!337591)))

(declare-fun m!4844423 () Bool)

(assert (=> d!1252551 m!4844423))

(assert (=> d!1252551 m!4844169))

(declare-fun m!4844425 () Bool)

(assert (=> b!4258682 m!4844425))

(declare-fun m!4844427 () Bool)

(assert (=> b!4258682 m!4844427))

(assert (=> b!4258682 m!4844425))

(assert (=> b!4258682 m!4844427))

(declare-fun m!4844429 () Bool)

(assert (=> b!4258682 m!4844429))

(assert (=> b!4258208 d!1252551))

(declare-fun b!4258684 () Bool)

(declare-fun e!2644894 () List!47355)

(assert (=> b!4258684 (= e!2644894 (Cons!47231 (h!52651 (t!353022 (map!9657 lt!1510052 f!428))) (++!12024 (t!353022 (t!353022 (map!9657 lt!1510052 f!428))) (map!9657 lt!1510051 f!428))))))

(declare-fun lt!1510152 () List!47355)

(declare-fun b!4258686 () Bool)

(declare-fun e!2644895 () Bool)

(assert (=> b!4258686 (= e!2644895 (or (not (= (map!9657 lt!1510051 f!428) Nil!47231)) (= lt!1510152 (t!353022 (map!9657 lt!1510052 f!428)))))))

(declare-fun b!4258683 () Bool)

(assert (=> b!4258683 (= e!2644894 (map!9657 lt!1510051 f!428))))

(declare-fun b!4258685 () Bool)

(declare-fun res!1750661 () Bool)

(assert (=> b!4258685 (=> (not res!1750661) (not e!2644895))))

(assert (=> b!4258685 (= res!1750661 (= (size!34584 lt!1510152) (+ (size!34584 (t!353022 (map!9657 lt!1510052 f!428))) (size!34584 (map!9657 lt!1510051 f!428)))))))

(declare-fun d!1252553 () Bool)

(assert (=> d!1252553 e!2644895))

(declare-fun res!1750660 () Bool)

(assert (=> d!1252553 (=> (not res!1750660) (not e!2644895))))

(assert (=> d!1252553 (= res!1750660 (= (content!7436 lt!1510152) ((_ map or) (content!7436 (t!353022 (map!9657 lt!1510052 f!428))) (content!7436 (map!9657 lt!1510051 f!428)))))))

(assert (=> d!1252553 (= lt!1510152 e!2644894)))

(declare-fun c!723103 () Bool)

(assert (=> d!1252553 (= c!723103 ((_ is Nil!47231) (t!353022 (map!9657 lt!1510052 f!428))))))

(assert (=> d!1252553 (= (++!12024 (t!353022 (map!9657 lt!1510052 f!428)) (map!9657 lt!1510051 f!428)) lt!1510152)))

(assert (= (and d!1252553 c!723103) b!4258683))

(assert (= (and d!1252553 (not c!723103)) b!4258684))

(assert (= (and d!1252553 res!1750660) b!4258685))

(assert (= (and b!4258685 res!1750661) b!4258686))

(assert (=> b!4258684 m!4843655))

(declare-fun m!4844431 () Bool)

(assert (=> b!4258684 m!4844431))

(declare-fun m!4844433 () Bool)

(assert (=> b!4258685 m!4844433))

(declare-fun m!4844435 () Bool)

(assert (=> b!4258685 m!4844435))

(assert (=> b!4258685 m!4843655))

(assert (=> b!4258685 m!4843809))

(declare-fun m!4844437 () Bool)

(assert (=> d!1252553 m!4844437))

(assert (=> d!1252553 m!4844269))

(assert (=> d!1252553 m!4843655))

(assert (=> d!1252553 m!4843815))

(assert (=> b!4258284 d!1252553))

(assert (=> b!4258137 d!1252377))

(assert (=> b!4258137 d!1252379))

(declare-fun d!1252555 () Bool)

(assert (=> d!1252555 (= (list!17048 (xs!17544 (left!35012 t!4386))) (innerList!14298 (xs!17544 (left!35012 t!4386))))))

(assert (=> b!4258303 d!1252555))

(assert (=> b!4258171 d!1252409))

(assert (=> b!4258171 d!1252411))

(declare-fun d!1252557 () Bool)

(declare-fun res!1750672 () Bool)

(declare-fun e!2644905 () Bool)

(assert (=> d!1252557 (=> (not res!1750672) (not e!2644905))))

(declare-fun size!34587 (Conc!14239) Int)

(assert (=> d!1252557 (= res!1750672 (= (csize!28708 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) (+ (size!34587 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (size!34587 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(assert (=> d!1252557 (= (inv!62117 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) e!2644905)))

(declare-fun b!4258707 () Bool)

(declare-fun res!1750673 () Bool)

(assert (=> b!4258707 (=> (not res!1750673) (not e!2644905))))

(assert (=> b!4258707 (= res!1750673 (and (not (= (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) Empty!14239)) (not (= (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) Empty!14239))))))

(declare-fun b!4258708 () Bool)

(declare-fun res!1750674 () Bool)

(assert (=> b!4258708 (=> (not res!1750674) (not e!2644905))))

(assert (=> b!4258708 (= res!1750674 (= (cheight!14450 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))) (+ (max!0 (height!1863 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (height!1863 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))) 1)))))

(declare-fun b!4258709 () Bool)

(assert (=> b!4258709 (= e!2644905 (<= 0 (cheight!14450 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))

(assert (= (and d!1252557 res!1750672) b!4258707))

(assert (= (and b!4258707 res!1750673) b!4258708))

(assert (= (and b!4258708 res!1750674) b!4258709))

(declare-fun m!4844471 () Bool)

(assert (=> d!1252557 m!4844471))

(declare-fun m!4844473 () Bool)

(assert (=> d!1252557 m!4844473))

(declare-fun m!4844475 () Bool)

(assert (=> b!4258708 m!4844475))

(declare-fun m!4844477 () Bool)

(assert (=> b!4258708 m!4844477))

(assert (=> b!4258708 m!4844475))

(assert (=> b!4258708 m!4844477))

(declare-fun m!4844479 () Bool)

(assert (=> b!4258708 m!4844479))

(assert (=> b!4258326 d!1252557))

(declare-fun d!1252567 () Bool)

(declare-fun lt!1510154 () Int)

(assert (=> d!1252567 (>= lt!1510154 0)))

(declare-fun e!2644906 () Int)

(assert (=> d!1252567 (= lt!1510154 e!2644906)))

(declare-fun c!723109 () Bool)

(assert (=> d!1252567 (= c!723109 ((_ is Nil!47230) lt!1510064))))

(assert (=> d!1252567 (= (size!34581 lt!1510064) lt!1510154)))

(declare-fun b!4258710 () Bool)

(assert (=> b!4258710 (= e!2644906 0)))

(declare-fun b!4258711 () Bool)

(assert (=> b!4258711 (= e!2644906 (+ 1 (size!34581 (t!353021 lt!1510064))))))

(assert (= (and d!1252567 c!723109) b!4258710))

(assert (= (and d!1252567 (not c!723109)) b!4258711))

(declare-fun m!4844481 () Bool)

(assert (=> b!4258711 m!4844481))

(assert (=> b!4258243 d!1252567))

(assert (=> b!4258243 d!1252473))

(assert (=> b!4258243 d!1252407))

(declare-fun d!1252569 () Bool)

(declare-fun lt!1510155 () Int)

(assert (=> d!1252569 (>= lt!1510155 0)))

(declare-fun e!2644907 () Int)

(assert (=> d!1252569 (= lt!1510155 e!2644907)))

(declare-fun c!723110 () Bool)

(assert (=> d!1252569 (= c!723110 ((_ is Nil!47230) (innerList!14298 (xs!17544 t!4386))))))

(assert (=> d!1252569 (= (size!34581 (innerList!14298 (xs!17544 t!4386))) lt!1510155)))

(declare-fun b!4258712 () Bool)

(assert (=> b!4258712 (= e!2644907 0)))

(declare-fun b!4258713 () Bool)

(assert (=> b!4258713 (= e!2644907 (+ 1 (size!34581 (t!353021 (innerList!14298 (xs!17544 t!4386))))))))

(assert (= (and d!1252569 c!723110) b!4258712))

(assert (= (and d!1252569 (not c!723110)) b!4258713))

(declare-fun m!4844483 () Bool)

(assert (=> b!4258713 m!4844483))

(assert (=> d!1252329 d!1252569))

(declare-fun d!1252571 () Bool)

(declare-fun lt!1510156 () Int)

(assert (=> d!1252571 (>= lt!1510156 0)))

(declare-fun e!2644908 () Int)

(assert (=> d!1252571 (= lt!1510156 e!2644908)))

(declare-fun c!723111 () Bool)

(assert (=> d!1252571 (= c!723111 ((_ is Nil!47231) lt!1510074))))

(assert (=> d!1252571 (= (size!34584 lt!1510074) lt!1510156)))

(declare-fun b!4258714 () Bool)

(assert (=> b!4258714 (= e!2644908 0)))

(declare-fun b!4258715 () Bool)

(assert (=> b!4258715 (= e!2644908 (+ 1 (size!34584 (t!353022 lt!1510074))))))

(assert (= (and d!1252571 c!723111) b!4258714))

(assert (= (and d!1252571 (not c!723111)) b!4258715))

(declare-fun m!4844485 () Bool)

(assert (=> b!4258715 m!4844485))

(assert (=> b!4258285 d!1252571))

(declare-fun d!1252573 () Bool)

(declare-fun lt!1510157 () Int)

(assert (=> d!1252573 (>= lt!1510157 0)))

(declare-fun e!2644909 () Int)

(assert (=> d!1252573 (= lt!1510157 e!2644909)))

(declare-fun c!723112 () Bool)

(assert (=> d!1252573 (= c!723112 ((_ is Nil!47231) (map!9657 lt!1510052 f!428)))))

(assert (=> d!1252573 (= (size!34584 (map!9657 lt!1510052 f!428)) lt!1510157)))

(declare-fun b!4258716 () Bool)

(assert (=> b!4258716 (= e!2644909 0)))

(declare-fun b!4258717 () Bool)

(assert (=> b!4258717 (= e!2644909 (+ 1 (size!34584 (t!353022 (map!9657 lt!1510052 f!428)))))))

(assert (= (and d!1252573 c!723112) b!4258716))

(assert (= (and d!1252573 (not c!723112)) b!4258717))

(assert (=> b!4258717 m!4844435))

(assert (=> b!4258285 d!1252573))

(declare-fun d!1252575 () Bool)

(declare-fun lt!1510158 () Int)

(assert (=> d!1252575 (>= lt!1510158 0)))

(declare-fun e!2644910 () Int)

(assert (=> d!1252575 (= lt!1510158 e!2644910)))

(declare-fun c!723113 () Bool)

(assert (=> d!1252575 (= c!723113 ((_ is Nil!47231) (map!9657 lt!1510051 f!428)))))

(assert (=> d!1252575 (= (size!34584 (map!9657 lt!1510051 f!428)) lt!1510158)))

(declare-fun b!4258718 () Bool)

(assert (=> b!4258718 (= e!2644910 0)))

(declare-fun b!4258719 () Bool)

(assert (=> b!4258719 (= e!2644910 (+ 1 (size!34584 (t!353022 (map!9657 lt!1510051 f!428)))))))

(assert (= (and d!1252575 c!723113) b!4258718))

(assert (= (and d!1252575 (not c!723113)) b!4258719))

(declare-fun m!4844487 () Bool)

(assert (=> b!4258719 m!4844487))

(assert (=> b!4258285 d!1252575))

(declare-fun d!1252577 () Bool)

(declare-fun c!723114 () Bool)

(assert (=> d!1252577 (= c!723114 ((_ is Node!14238) (left!35012 (right!35342 t!4386))))))

(declare-fun e!2644911 () Bool)

(assert (=> d!1252577 (= (inv!62108 (left!35012 (right!35342 t!4386))) e!2644911)))

(declare-fun b!4258720 () Bool)

(assert (=> b!4258720 (= e!2644911 (inv!62113 (left!35012 (right!35342 t!4386))))))

(declare-fun b!4258721 () Bool)

(declare-fun e!2644912 () Bool)

(assert (=> b!4258721 (= e!2644911 e!2644912)))

(declare-fun res!1750675 () Bool)

(assert (=> b!4258721 (= res!1750675 (not ((_ is Leaf!22005) (left!35012 (right!35342 t!4386)))))))

(assert (=> b!4258721 (=> res!1750675 e!2644912)))

(declare-fun b!4258722 () Bool)

(assert (=> b!4258722 (= e!2644912 (inv!62114 (left!35012 (right!35342 t!4386))))))

(assert (= (and d!1252577 c!723114) b!4258720))

(assert (= (and d!1252577 (not c!723114)) b!4258721))

(assert (= (and b!4258721 (not res!1750675)) b!4258722))

(declare-fun m!4844489 () Bool)

(assert (=> b!4258720 m!4844489))

(declare-fun m!4844491 () Bool)

(assert (=> b!4258722 m!4844491))

(assert (=> b!4258399 d!1252577))

(declare-fun d!1252579 () Bool)

(declare-fun c!723115 () Bool)

(assert (=> d!1252579 (= c!723115 ((_ is Node!14238) (right!35342 (right!35342 t!4386))))))

(declare-fun e!2644913 () Bool)

(assert (=> d!1252579 (= (inv!62108 (right!35342 (right!35342 t!4386))) e!2644913)))

(declare-fun b!4258723 () Bool)

(assert (=> b!4258723 (= e!2644913 (inv!62113 (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258724 () Bool)

(declare-fun e!2644914 () Bool)

(assert (=> b!4258724 (= e!2644913 e!2644914)))

(declare-fun res!1750676 () Bool)

(assert (=> b!4258724 (= res!1750676 (not ((_ is Leaf!22005) (right!35342 (right!35342 t!4386)))))))

(assert (=> b!4258724 (=> res!1750676 e!2644914)))

(declare-fun b!4258725 () Bool)

(assert (=> b!4258725 (= e!2644914 (inv!62114 (right!35342 (right!35342 t!4386))))))

(assert (= (and d!1252579 c!723115) b!4258723))

(assert (= (and d!1252579 (not c!723115)) b!4258724))

(assert (= (and b!4258724 (not res!1750676)) b!4258725))

(declare-fun m!4844493 () Bool)

(assert (=> b!4258723 m!4844493))

(declare-fun m!4844495 () Bool)

(assert (=> b!4258725 m!4844495))

(assert (=> b!4258399 d!1252579))

(declare-fun d!1252581 () Bool)

(assert (=> d!1252581 (= (inv!62109 (xs!17544 (right!35342 t!4386))) (<= (size!34581 (innerList!14298 (xs!17544 (right!35342 t!4386)))) 2147483647))))

(declare-fun bs!598923 () Bool)

(assert (= bs!598923 d!1252581))

(declare-fun m!4844497 () Bool)

(assert (=> bs!598923 m!4844497))

(assert (=> b!4258400 d!1252581))

(declare-fun e!2644916 () Bool)

(declare-fun lt!1510159 () List!47354)

(declare-fun b!4258729 () Bool)

(assert (=> b!4258729 (= e!2644916 (or (not (= lt!1510051 Nil!47230)) (= lt!1510159 (t!353021 lt!1510052))))))

(declare-fun b!4258728 () Bool)

(declare-fun res!1750677 () Bool)

(assert (=> b!4258728 (=> (not res!1750677) (not e!2644916))))

(assert (=> b!4258728 (= res!1750677 (= (size!34581 lt!1510159) (+ (size!34581 (t!353021 lt!1510052)) (size!34581 lt!1510051))))))

(declare-fun b!4258726 () Bool)

(declare-fun e!2644915 () List!47354)

(assert (=> b!4258726 (= e!2644915 lt!1510051)))

(declare-fun b!4258727 () Bool)

(assert (=> b!4258727 (= e!2644915 (Cons!47230 (h!52650 (t!353021 lt!1510052)) (++!12023 (t!353021 (t!353021 lt!1510052)) lt!1510051)))))

(declare-fun d!1252583 () Bool)

(assert (=> d!1252583 e!2644916))

(declare-fun res!1750678 () Bool)

(assert (=> d!1252583 (=> (not res!1750678) (not e!2644916))))

(assert (=> d!1252583 (= res!1750678 (= (content!7434 lt!1510159) ((_ map or) (content!7434 (t!353021 lt!1510052)) (content!7434 lt!1510051))))))

(assert (=> d!1252583 (= lt!1510159 e!2644915)))

(declare-fun c!723116 () Bool)

(assert (=> d!1252583 (= c!723116 ((_ is Nil!47230) (t!353021 lt!1510052)))))

(assert (=> d!1252583 (= (++!12023 (t!353021 lt!1510052) lt!1510051) lt!1510159)))

(assert (= (and d!1252583 c!723116) b!4258726))

(assert (= (and d!1252583 (not c!723116)) b!4258727))

(assert (= (and d!1252583 res!1750678) b!4258728))

(assert (= (and b!4258728 res!1750677) b!4258729))

(declare-fun m!4844499 () Bool)

(assert (=> b!4258728 m!4844499))

(assert (=> b!4258728 m!4844169))

(assert (=> b!4258728 m!4843753))

(declare-fun m!4844501 () Bool)

(assert (=> b!4258727 m!4844501))

(declare-fun m!4844503 () Bool)

(assert (=> d!1252583 m!4844503))

(assert (=> d!1252583 m!4844181))

(assert (=> d!1252583 m!4843761))

(assert (=> b!4258242 d!1252583))

(declare-fun b!4258730 () Bool)

(declare-fun e!2644917 () Bool)

(declare-fun tp!1306691 () Bool)

(assert (=> b!4258730 (= e!2644917 (and tp_is_empty!22861 tp!1306691))))

(assert (=> b!4258398 (= tp!1306683 e!2644917)))

(assert (= (and b!4258398 ((_ is Cons!47230) (innerList!14298 (xs!17544 (left!35012 t!4386))))) b!4258730))

(declare-fun b!4258731 () Bool)

(declare-fun e!2644918 () Bool)

(declare-fun tp!1306692 () Bool)

(assert (=> b!4258731 (= e!2644918 (and tp_is_empty!22861 tp!1306692))))

(assert (=> b!4258406 (= tp!1306690 e!2644918)))

(assert (= (and b!4258406 ((_ is Cons!47230) (t!353021 (innerList!14298 (xs!17544 t!4386))))) b!4258731))

(declare-fun b!4258732 () Bool)

(declare-fun e!2644919 () Bool)

(declare-fun tp!1306693 () Bool)

(assert (=> b!4258732 (= e!2644919 (and tp_is_empty!22861 tp!1306693))))

(assert (=> b!4258401 (= tp!1306686 e!2644919)))

(assert (= (and b!4258401 ((_ is Cons!47230) (innerList!14298 (xs!17544 (right!35342 t!4386))))) b!4258732))

(declare-fun b!4258733 () Bool)

(declare-fun e!2644921 () Bool)

(declare-fun tp!1306696 () Bool)

(declare-fun tp!1306694 () Bool)

(assert (=> b!4258733 (= e!2644921 (and (inv!62108 (left!35012 (left!35012 (left!35012 t!4386)))) tp!1306696 (inv!62108 (right!35342 (left!35012 (left!35012 t!4386)))) tp!1306694))))

(declare-fun b!4258735 () Bool)

(declare-fun e!2644920 () Bool)

(declare-fun tp!1306695 () Bool)

(assert (=> b!4258735 (= e!2644920 tp!1306695)))

(declare-fun b!4258734 () Bool)

(assert (=> b!4258734 (= e!2644921 (and (inv!62109 (xs!17544 (left!35012 (left!35012 t!4386)))) e!2644920))))

(assert (=> b!4258396 (= tp!1306684 (and (inv!62108 (left!35012 (left!35012 t!4386))) e!2644921))))

(assert (= (and b!4258396 ((_ is Node!14238) (left!35012 (left!35012 t!4386)))) b!4258733))

(assert (= b!4258734 b!4258735))

(assert (= (and b!4258396 ((_ is Leaf!22005) (left!35012 (left!35012 t!4386)))) b!4258734))

(declare-fun m!4844505 () Bool)

(assert (=> b!4258733 m!4844505))

(declare-fun m!4844507 () Bool)

(assert (=> b!4258733 m!4844507))

(declare-fun m!4844509 () Bool)

(assert (=> b!4258734 m!4844509))

(assert (=> b!4258396 m!4843951))

(declare-fun e!2644923 () Bool)

(declare-fun b!4258736 () Bool)

(declare-fun tp!1306699 () Bool)

(declare-fun tp!1306697 () Bool)

(assert (=> b!4258736 (= e!2644923 (and (inv!62108 (left!35012 (right!35342 (left!35012 t!4386)))) tp!1306699 (inv!62108 (right!35342 (right!35342 (left!35012 t!4386)))) tp!1306697))))

(declare-fun b!4258738 () Bool)

(declare-fun e!2644922 () Bool)

(declare-fun tp!1306698 () Bool)

(assert (=> b!4258738 (= e!2644922 tp!1306698)))

(declare-fun b!4258737 () Bool)

(assert (=> b!4258737 (= e!2644923 (and (inv!62109 (xs!17544 (right!35342 (left!35012 t!4386)))) e!2644922))))

(assert (=> b!4258396 (= tp!1306682 (and (inv!62108 (right!35342 (left!35012 t!4386))) e!2644923))))

(assert (= (and b!4258396 ((_ is Node!14238) (right!35342 (left!35012 t!4386)))) b!4258736))

(assert (= b!4258737 b!4258738))

(assert (= (and b!4258396 ((_ is Leaf!22005) (right!35342 (left!35012 t!4386)))) b!4258737))

(declare-fun m!4844511 () Bool)

(assert (=> b!4258736 m!4844511))

(declare-fun m!4844513 () Bool)

(assert (=> b!4258736 m!4844513))

(declare-fun m!4844515 () Bool)

(assert (=> b!4258737 m!4844515))

(assert (=> b!4258396 m!4843953))

(declare-fun tp!1306702 () Bool)

(declare-fun b!4258739 () Bool)

(declare-fun tp!1306700 () Bool)

(declare-fun e!2644925 () Bool)

(assert (=> b!4258739 (= e!2644925 (and (inv!62108 (left!35012 (left!35012 (right!35342 t!4386)))) tp!1306702 (inv!62108 (right!35342 (left!35012 (right!35342 t!4386)))) tp!1306700))))

(declare-fun b!4258741 () Bool)

(declare-fun e!2644924 () Bool)

(declare-fun tp!1306701 () Bool)

(assert (=> b!4258741 (= e!2644924 tp!1306701)))

(declare-fun b!4258740 () Bool)

(assert (=> b!4258740 (= e!2644925 (and (inv!62109 (xs!17544 (left!35012 (right!35342 t!4386)))) e!2644924))))

(assert (=> b!4258399 (= tp!1306687 (and (inv!62108 (left!35012 (right!35342 t!4386))) e!2644925))))

(assert (= (and b!4258399 ((_ is Node!14238) (left!35012 (right!35342 t!4386)))) b!4258739))

(assert (= b!4258740 b!4258741))

(assert (= (and b!4258399 ((_ is Leaf!22005) (left!35012 (right!35342 t!4386)))) b!4258740))

(declare-fun m!4844517 () Bool)

(assert (=> b!4258739 m!4844517))

(declare-fun m!4844519 () Bool)

(assert (=> b!4258739 m!4844519))

(declare-fun m!4844521 () Bool)

(assert (=> b!4258740 m!4844521))

(assert (=> b!4258399 m!4843957))

(declare-fun tp!1306703 () Bool)

(declare-fun tp!1306705 () Bool)

(declare-fun b!4258742 () Bool)

(declare-fun e!2644927 () Bool)

(assert (=> b!4258742 (= e!2644927 (and (inv!62108 (left!35012 (right!35342 (right!35342 t!4386)))) tp!1306705 (inv!62108 (right!35342 (right!35342 (right!35342 t!4386)))) tp!1306703))))

(declare-fun b!4258744 () Bool)

(declare-fun e!2644926 () Bool)

(declare-fun tp!1306704 () Bool)

(assert (=> b!4258744 (= e!2644926 tp!1306704)))

(declare-fun b!4258743 () Bool)

(assert (=> b!4258743 (= e!2644927 (and (inv!62109 (xs!17544 (right!35342 (right!35342 t!4386)))) e!2644926))))

(assert (=> b!4258399 (= tp!1306685 (and (inv!62108 (right!35342 (right!35342 t!4386))) e!2644927))))

(assert (= (and b!4258399 ((_ is Node!14238) (right!35342 (right!35342 t!4386)))) b!4258742))

(assert (= b!4258743 b!4258744))

(assert (= (and b!4258399 ((_ is Leaf!22005) (right!35342 (right!35342 t!4386)))) b!4258743))

(declare-fun m!4844523 () Bool)

(assert (=> b!4258742 m!4844523))

(declare-fun m!4844525 () Bool)

(assert (=> b!4258742 m!4844525))

(declare-fun m!4844527 () Bool)

(assert (=> b!4258743 m!4844527))

(assert (=> b!4258399 m!4843959))

(declare-fun b_lambda!125499 () Bool)

(assert (= b_lambda!125485 (or (and start!408054 b_free!126677) b_lambda!125499)))

(declare-fun b_lambda!125501 () Bool)

(assert (= b_lambda!125493 (or (and start!408054 b_free!126677) b_lambda!125501)))

(declare-fun b_lambda!125503 () Bool)

(assert (= b_lambda!125487 (or (and start!408054 b_free!126677) b_lambda!125503)))

(declare-fun b_lambda!125505 () Bool)

(assert (= b_lambda!125495 (or (and start!408054 b_free!126677) b_lambda!125505)))

(declare-fun b_lambda!125507 () Bool)

(assert (= b_lambda!125497 (or (and start!408054 b_free!126677) b_lambda!125507)))

(check-sat (not b!4258720) (not b!4258598) (not b!4258715) (not b!4258587) (not b!4258473) (not b!4258739) (not b!4258506) (not b!4258730) (not d!1252437) (not b!4258475) (not b!4258645) (not b!4258570) (not b!4258423) (not b!4258654) (not b!4258741) (not b!4258471) (not d!1252415) (not d!1252529) (not d!1252547) (not b!4258482) (not b!4258557) (not d!1252583) (not b!4258468) (not d!1252445) (not b!4258734) (not d!1252489) (not b!4258451) (not b_next!127381) (not b!4258723) (not d!1252485) (not b!4258453) (not d!1252401) (not d!1252557) (not b!4258546) (not d!1252553) (not b!4258436) (not d!1252499) (not b!4258452) (not b_lambda!125477) (not b!4258631) (not b!4258743) (not d!1252545) (not b!4258469) (not b!4258449) (not b!4258685) (not b!4258465) (not b!4258625) (not b!4258424) (not b!4258621) (not b!4258485) (not b!4258478) (not b!4258713) (not d!1252477) (not b!4258592) (not b!4258601) (not b!4258627) (not d!1252581) (not b!4258572) (not b_lambda!125481) (not d!1252395) (not d!1252533) (not b!4258727) (not d!1252551) (not b!4258409) (not b!4258740) (not b!4258590) (not b!4258418) (not d!1252491) (not b!4258450) (not b!4258487) (not b_lambda!125499) (not b!4258742) (not b!4258414) (not b!4258547) (not b!4258682) (not b!4258396) (not b!4258719) (not b!4258599) (not b!4258516) b_and!337591 tp_is_empty!22861 (not b!4258630) (not b!4258568) (not b!4258619) (not d!1252523) (not b!4258647) (not b!4258454) (not b!4258586) (not b!4258559) (not b!4258737) (not b!4258732) (not d!1252419) (not b!4258731) (not b!4258638) (not b!4258628) (not b!4258675) (not b!4258459) (not b!4258674) (not b!4258577) (not d!1252403) (not b!4258422) (not b!4258411) (not b!4258578) (not d!1252463) (not d!1252417) (not b!4258551) (not b!4258419) (not d!1252513) (not b!4258708) (not b!4258722) (not b_lambda!125503) (not b!4258483) (not b!4258591) (not b!4258484) (not b!4258579) (not d!1252393) (not b!4258515) (not b!4258626) (not b!4258733) (not b_lambda!125501) (not b!4258486) (not b!4258728) (not b!4258467) (not b!4258561) tp_is_empty!22857 (not b_lambda!125507) (not b!4258711) (not b!4258684) (not b!4258476) (not b!4258415) (not b!4258735) (not b!4258399) (not b_lambda!125505) (not d!1252515) (not b!4258671) (not b!4258629) (not b!4258410) (not b_lambda!125479) (not b!4258660) (not b!4258717) (not b!4258480) (not b!4258744) (not b!4258644) (not d!1252537) (not b!4258725) (not b!4258736) (not d!1252451) (not b!4258430) (not b!4258738) (not d!1252475) (not b!4258472) (not b!4258470) (not b!4258488))
(check-sat b_and!337591 (not b_next!127381))
(get-model)

(declare-fun d!1252663 () Bool)

(declare-fun lt!1510181 () Int)

(assert (=> d!1252663 (>= lt!1510181 0)))

(declare-fun e!2644989 () Int)

(assert (=> d!1252663 (= lt!1510181 e!2644989)))

(declare-fun c!723140 () Bool)

(assert (=> d!1252663 (= c!723140 ((_ is Nil!47231) (t!353022 lt!1510058)))))

(assert (=> d!1252663 (= (size!34584 (t!353022 lt!1510058)) lt!1510181)))

(declare-fun b!4258869 () Bool)

(assert (=> b!4258869 (= e!2644989 0)))

(declare-fun b!4258870 () Bool)

(assert (=> b!4258870 (= e!2644989 (+ 1 (size!34584 (t!353022 (t!353022 lt!1510058)))))))

(assert (= (and d!1252663 c!723140) b!4258869))

(assert (= (and d!1252663 (not c!723140)) b!4258870))

(declare-fun m!4844743 () Bool)

(assert (=> b!4258870 m!4844743))

(assert (=> b!4258557 d!1252663))

(declare-fun d!1252665 () Bool)

(declare-fun lt!1510182 () Int)

(assert (=> d!1252665 (>= lt!1510182 0)))

(declare-fun e!2644990 () Int)

(assert (=> d!1252665 (= lt!1510182 e!2644990)))

(declare-fun c!723141 () Bool)

(assert (=> d!1252665 (= c!723141 ((_ is Nil!47231) lt!1510146))))

(assert (=> d!1252665 (= (size!34584 lt!1510146) lt!1510182)))

(declare-fun b!4258871 () Bool)

(assert (=> b!4258871 (= e!2644990 0)))

(declare-fun b!4258872 () Bool)

(assert (=> b!4258872 (= e!2644990 (+ 1 (size!34584 (t!353022 lt!1510146))))))

(assert (= (and d!1252665 c!723141) b!4258871))

(assert (= (and d!1252665 (not c!723141)) b!4258872))

(declare-fun m!4844745 () Bool)

(assert (=> b!4258872 m!4844745))

(assert (=> d!1252529 d!1252665))

(declare-fun d!1252667 () Bool)

(declare-fun lt!1510183 () Int)

(assert (=> d!1252667 (>= lt!1510183 0)))

(declare-fun e!2644991 () Int)

(assert (=> d!1252667 (= lt!1510183 e!2644991)))

(declare-fun c!723142 () Bool)

(assert (=> d!1252667 (= c!723142 ((_ is Nil!47230) (t!353021 lt!1510051)))))

(assert (=> d!1252667 (= (size!34581 (t!353021 lt!1510051)) lt!1510183)))

(declare-fun b!4258873 () Bool)

(assert (=> b!4258873 (= e!2644991 0)))

(declare-fun b!4258874 () Bool)

(assert (=> b!4258874 (= e!2644991 (+ 1 (size!34581 (t!353021 (t!353021 lt!1510051)))))))

(assert (= (and d!1252667 c!723142) b!4258873))

(assert (= (and d!1252667 (not c!723142)) b!4258874))

(declare-fun m!4844747 () Bool)

(assert (=> b!4258874 m!4844747))

(assert (=> d!1252529 d!1252667))

(declare-fun d!1252669 () Bool)

(assert (=> d!1252669 (= (list!17048 (xs!17544 (right!35342 (right!35342 t!4386)))) (innerList!14298 (xs!17544 (right!35342 (right!35342 t!4386)))))))

(assert (=> b!4258418 d!1252669))

(declare-fun b!4258878 () Bool)

(declare-fun e!2644993 () Bool)

(declare-fun lt!1510184 () List!47354)

(assert (=> b!4258878 (= e!2644993 (or (not (= (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) Nil!47230)) (= lt!1510184 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))))))))

(declare-fun b!4258877 () Bool)

(declare-fun res!1750742 () Bool)

(assert (=> b!4258877 (=> (not res!1750742) (not e!2644993))))

(assert (=> b!4258877 (= res!1750742 (= (size!34581 lt!1510184) (+ (size!34581 (list!17046 (left!35012 (left!35012 (right!35342 t!4386))))) (size!34581 (list!17046 (right!35342 (left!35012 (right!35342 t!4386))))))))))

(declare-fun b!4258875 () Bool)

(declare-fun e!2644992 () List!47354)

(assert (=> b!4258875 (= e!2644992 (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4258876 () Bool)

(assert (=> b!4258876 (= e!2644992 (Cons!47230 (h!52650 (list!17046 (left!35012 (left!35012 (right!35342 t!4386))))) (++!12023 (t!353021 (list!17046 (left!35012 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))))))))

(declare-fun d!1252671 () Bool)

(assert (=> d!1252671 e!2644993))

(declare-fun res!1750743 () Bool)

(assert (=> d!1252671 (=> (not res!1750743) (not e!2644993))))

(assert (=> d!1252671 (= res!1750743 (= (content!7434 lt!1510184) ((_ map or) (content!7434 (list!17046 (left!35012 (left!35012 (right!35342 t!4386))))) (content!7434 (list!17046 (right!35342 (left!35012 (right!35342 t!4386))))))))))

(assert (=> d!1252671 (= lt!1510184 e!2644992)))

(declare-fun c!723143 () Bool)

(assert (=> d!1252671 (= c!723143 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 (right!35342 t!4386))))))))

(assert (=> d!1252671 (= (++!12023 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386))))) lt!1510184)))

(assert (= (and d!1252671 c!723143) b!4258875))

(assert (= (and d!1252671 (not c!723143)) b!4258876))

(assert (= (and d!1252671 res!1750743) b!4258877))

(assert (= (and b!4258877 res!1750742) b!4258878))

(declare-fun m!4844749 () Bool)

(assert (=> b!4258877 m!4844749))

(assert (=> b!4258877 m!4843989))

(declare-fun m!4844751 () Bool)

(assert (=> b!4258877 m!4844751))

(assert (=> b!4258877 m!4843991))

(declare-fun m!4844753 () Bool)

(assert (=> b!4258877 m!4844753))

(assert (=> b!4258876 m!4843991))

(declare-fun m!4844755 () Bool)

(assert (=> b!4258876 m!4844755))

(declare-fun m!4844757 () Bool)

(assert (=> d!1252671 m!4844757))

(assert (=> d!1252671 m!4843989))

(declare-fun m!4844759 () Bool)

(assert (=> d!1252671 m!4844759))

(assert (=> d!1252671 m!4843991))

(declare-fun m!4844761 () Bool)

(assert (=> d!1252671 m!4844761))

(assert (=> b!4258415 d!1252671))

(declare-fun b!4258879 () Bool)

(declare-fun e!2644994 () List!47354)

(assert (=> b!4258879 (= e!2644994 Nil!47230)))

(declare-fun b!4258881 () Bool)

(declare-fun e!2644995 () List!47354)

(assert (=> b!4258881 (= e!2644995 (list!17048 (xs!17544 (left!35012 (left!35012 (right!35342 t!4386))))))))

(declare-fun d!1252673 () Bool)

(declare-fun c!723144 () Bool)

(assert (=> d!1252673 (= c!723144 ((_ is Empty!14238) (left!35012 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252673 (= (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) e!2644994)))

(declare-fun b!4258880 () Bool)

(assert (=> b!4258880 (= e!2644994 e!2644995)))

(declare-fun c!723145 () Bool)

(assert (=> b!4258880 (= c!723145 ((_ is Leaf!22005) (left!35012 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4258882 () Bool)

(assert (=> b!4258882 (= e!2644995 (++!12023 (list!17046 (left!35012 (left!35012 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (left!35012 (left!35012 (right!35342 t!4386)))))))))

(assert (= (and d!1252673 c!723144) b!4258879))

(assert (= (and d!1252673 (not c!723144)) b!4258880))

(assert (= (and b!4258880 c!723145) b!4258881))

(assert (= (and b!4258880 (not c!723145)) b!4258882))

(declare-fun m!4844763 () Bool)

(assert (=> b!4258881 m!4844763))

(declare-fun m!4844765 () Bool)

(assert (=> b!4258882 m!4844765))

(declare-fun m!4844767 () Bool)

(assert (=> b!4258882 m!4844767))

(assert (=> b!4258882 m!4844765))

(assert (=> b!4258882 m!4844767))

(declare-fun m!4844769 () Bool)

(assert (=> b!4258882 m!4844769))

(assert (=> b!4258415 d!1252673))

(declare-fun b!4258883 () Bool)

(declare-fun e!2644996 () List!47354)

(assert (=> b!4258883 (= e!2644996 Nil!47230)))

(declare-fun b!4258885 () Bool)

(declare-fun e!2644997 () List!47354)

(assert (=> b!4258885 (= e!2644997 (list!17048 (xs!17544 (right!35342 (left!35012 (right!35342 t!4386))))))))

(declare-fun d!1252675 () Bool)

(declare-fun c!723146 () Bool)

(assert (=> d!1252675 (= c!723146 ((_ is Empty!14238) (right!35342 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252675 (= (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) e!2644996)))

(declare-fun b!4258884 () Bool)

(assert (=> b!4258884 (= e!2644996 e!2644997)))

(declare-fun c!723147 () Bool)

(assert (=> b!4258884 (= c!723147 ((_ is Leaf!22005) (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4258886 () Bool)

(assert (=> b!4258886 (= e!2644997 (++!12023 (list!17046 (left!35012 (right!35342 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 (left!35012 (right!35342 t!4386)))))))))

(assert (= (and d!1252675 c!723146) b!4258883))

(assert (= (and d!1252675 (not c!723146)) b!4258884))

(assert (= (and b!4258884 c!723147) b!4258885))

(assert (= (and b!4258884 (not c!723147)) b!4258886))

(declare-fun m!4844771 () Bool)

(assert (=> b!4258885 m!4844771))

(declare-fun m!4844773 () Bool)

(assert (=> b!4258886 m!4844773))

(declare-fun m!4844775 () Bool)

(assert (=> b!4258886 m!4844775))

(assert (=> b!4258886 m!4844773))

(assert (=> b!4258886 m!4844775))

(declare-fun m!4844777 () Bool)

(assert (=> b!4258886 m!4844777))

(assert (=> b!4258415 d!1252675))

(declare-fun d!1252677 () Bool)

(declare-fun res!1750744 () Bool)

(declare-fun e!2644998 () Bool)

(assert (=> d!1252677 (=> (not res!1750744) (not e!2644998))))

(assert (=> d!1252677 (= res!1750744 (= (csize!28706 (right!35342 (right!35342 t!4386))) (+ (size!34585 (left!35012 (right!35342 (right!35342 t!4386)))) (size!34585 (right!35342 (right!35342 (right!35342 t!4386)))))))))

(assert (=> d!1252677 (= (inv!62113 (right!35342 (right!35342 t!4386))) e!2644998)))

(declare-fun b!4258887 () Bool)

(declare-fun res!1750745 () Bool)

(assert (=> b!4258887 (=> (not res!1750745) (not e!2644998))))

(assert (=> b!4258887 (= res!1750745 (and (not (= (left!35012 (right!35342 (right!35342 t!4386))) Empty!14238)) (not (= (right!35342 (right!35342 (right!35342 t!4386))) Empty!14238))))))

(declare-fun b!4258888 () Bool)

(declare-fun res!1750746 () Bool)

(assert (=> b!4258888 (=> (not res!1750746) (not e!2644998))))

(assert (=> b!4258888 (= res!1750746 (= (cheight!14449 (right!35342 (right!35342 t!4386))) (+ (max!0 (height!1862 (left!35012 (right!35342 (right!35342 t!4386)))) (height!1862 (right!35342 (right!35342 (right!35342 t!4386))))) 1)))))

(declare-fun b!4258889 () Bool)

(assert (=> b!4258889 (= e!2644998 (<= 0 (cheight!14449 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252677 res!1750744) b!4258887))

(assert (= (and b!4258887 res!1750745) b!4258888))

(assert (= (and b!4258888 res!1750746) b!4258889))

(declare-fun m!4844779 () Bool)

(assert (=> d!1252677 m!4844779))

(declare-fun m!4844781 () Bool)

(assert (=> d!1252677 m!4844781))

(declare-fun m!4844783 () Bool)

(assert (=> b!4258888 m!4844783))

(declare-fun m!4844785 () Bool)

(assert (=> b!4258888 m!4844785))

(assert (=> b!4258888 m!4844783))

(assert (=> b!4258888 m!4844785))

(declare-fun m!4844787 () Bool)

(assert (=> b!4258888 m!4844787))

(assert (=> b!4258723 d!1252677))

(declare-fun b!4258893 () Bool)

(declare-fun e!2645000 () Bool)

(declare-fun lt!1510185 () List!47354)

(assert (=> b!4258893 (= e!2645000 (or (not (= lt!1510051 Nil!47230)) (= lt!1510185 (t!353021 (t!353021 lt!1510052)))))))

(declare-fun b!4258892 () Bool)

(declare-fun res!1750747 () Bool)

(assert (=> b!4258892 (=> (not res!1750747) (not e!2645000))))

(assert (=> b!4258892 (= res!1750747 (= (size!34581 lt!1510185) (+ (size!34581 (t!353021 (t!353021 lt!1510052))) (size!34581 lt!1510051))))))

(declare-fun b!4258890 () Bool)

(declare-fun e!2644999 () List!47354)

(assert (=> b!4258890 (= e!2644999 lt!1510051)))

(declare-fun b!4258891 () Bool)

(assert (=> b!4258891 (= e!2644999 (Cons!47230 (h!52650 (t!353021 (t!353021 lt!1510052))) (++!12023 (t!353021 (t!353021 (t!353021 lt!1510052))) lt!1510051)))))

(declare-fun d!1252679 () Bool)

(assert (=> d!1252679 e!2645000))

(declare-fun res!1750748 () Bool)

(assert (=> d!1252679 (=> (not res!1750748) (not e!2645000))))

(assert (=> d!1252679 (= res!1750748 (= (content!7434 lt!1510185) ((_ map or) (content!7434 (t!353021 (t!353021 lt!1510052))) (content!7434 lt!1510051))))))

(assert (=> d!1252679 (= lt!1510185 e!2644999)))

(declare-fun c!723148 () Bool)

(assert (=> d!1252679 (= c!723148 ((_ is Nil!47230) (t!353021 (t!353021 lt!1510052))))))

(assert (=> d!1252679 (= (++!12023 (t!353021 (t!353021 lt!1510052)) lt!1510051) lt!1510185)))

(assert (= (and d!1252679 c!723148) b!4258890))

(assert (= (and d!1252679 (not c!723148)) b!4258891))

(assert (= (and d!1252679 res!1750748) b!4258892))

(assert (= (and b!4258892 res!1750747) b!4258893))

(declare-fun m!4844789 () Bool)

(assert (=> b!4258892 m!4844789))

(declare-fun m!4844791 () Bool)

(assert (=> b!4258892 m!4844791))

(assert (=> b!4258892 m!4843753))

(declare-fun m!4844793 () Bool)

(assert (=> b!4258891 m!4844793))

(declare-fun m!4844795 () Bool)

(assert (=> d!1252679 m!4844795))

(declare-fun m!4844797 () Bool)

(assert (=> d!1252679 m!4844797))

(assert (=> d!1252679 m!4843761))

(assert (=> b!4258727 d!1252679))

(declare-fun d!1252681 () Bool)

(assert (=> d!1252681 (= (height!1863 (left!35013 lt!1510093)) (ite ((_ is Empty!14239) (left!35013 lt!1510093)) 0 (ite ((_ is Leaf!22006) (left!35013 lt!1510093)) 1 (cheight!14450 (left!35013 lt!1510093)))))))

(assert (=> b!4258627 d!1252681))

(declare-fun d!1252683 () Bool)

(assert (=> d!1252683 (= (height!1863 (right!35343 lt!1510093)) (ite ((_ is Empty!14239) (right!35343 lt!1510093)) 0 (ite ((_ is Leaf!22006) (right!35343 lt!1510093)) 1 (cheight!14450 (right!35343 lt!1510093)))))))

(assert (=> b!4258627 d!1252683))

(assert (=> b!4258436 d!1252667))

(declare-fun d!1252685 () Bool)

(declare-fun c!723149 () Bool)

(assert (=> d!1252685 (= c!723149 ((_ is Nil!47230) lt!1510150))))

(declare-fun e!2645001 () (InoxSet T!79378))

(assert (=> d!1252685 (= (content!7434 lt!1510150) e!2645001)))

(declare-fun b!4258894 () Bool)

(assert (=> b!4258894 (= e!2645001 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258895 () Bool)

(assert (=> b!4258895 (= e!2645001 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510150) true) (content!7434 (t!353021 lt!1510150))))))

(assert (= (and d!1252685 c!723149) b!4258894))

(assert (= (and d!1252685 (not c!723149)) b!4258895))

(declare-fun m!4844799 () Bool)

(assert (=> b!4258895 m!4844799))

(declare-fun m!4844801 () Bool)

(assert (=> b!4258895 m!4844801))

(assert (=> d!1252547 d!1252685))

(declare-fun d!1252687 () Bool)

(declare-fun c!723150 () Bool)

(assert (=> d!1252687 (= c!723150 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 t!4386)))))))

(declare-fun e!2645002 () (InoxSet T!79378))

(assert (=> d!1252687 (= (content!7434 (list!17046 (left!35012 (left!35012 t!4386)))) e!2645002)))

(declare-fun b!4258896 () Bool)

(assert (=> b!4258896 (= e!2645002 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258897 () Bool)

(assert (=> b!4258897 (= e!2645002 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (list!17046 (left!35012 (left!35012 t!4386)))) true) (content!7434 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))))))))

(assert (= (and d!1252687 c!723150) b!4258896))

(assert (= (and d!1252687 (not c!723150)) b!4258897))

(declare-fun m!4844803 () Bool)

(assert (=> b!4258897 m!4844803))

(declare-fun m!4844805 () Bool)

(assert (=> b!4258897 m!4844805))

(assert (=> d!1252547 d!1252687))

(declare-fun d!1252689 () Bool)

(declare-fun c!723151 () Bool)

(assert (=> d!1252689 (= c!723151 ((_ is Nil!47230) (list!17046 (right!35342 (left!35012 t!4386)))))))

(declare-fun e!2645003 () (InoxSet T!79378))

(assert (=> d!1252689 (= (content!7434 (list!17046 (right!35342 (left!35012 t!4386)))) e!2645003)))

(declare-fun b!4258898 () Bool)

(assert (=> b!4258898 (= e!2645003 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258899 () Bool)

(assert (=> b!4258899 (= e!2645003 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (list!17046 (right!35342 (left!35012 t!4386)))) true) (content!7434 (t!353021 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(assert (= (and d!1252689 c!723151) b!4258898))

(assert (= (and d!1252689 (not c!723151)) b!4258899))

(declare-fun m!4844807 () Bool)

(assert (=> b!4258899 m!4844807))

(declare-fun m!4844809 () Bool)

(assert (=> b!4258899 m!4844809))

(assert (=> d!1252547 d!1252689))

(declare-fun d!1252691 () Bool)

(assert (=> d!1252691 (= ($colon$colon!627 (map!9657 (t!353021 (t!353021 lt!1510052)) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510052)))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510052))) (map!9657 (t!353021 (t!353021 lt!1510052)) f!428)))))

(assert (=> b!4258682 d!1252691))

(declare-fun d!1252693 () Bool)

(declare-fun lt!1510186 () List!47355)

(assert (=> d!1252693 (= (size!34584 lt!1510186) (size!34581 (t!353021 (t!353021 lt!1510052))))))

(declare-fun e!2645004 () List!47355)

(assert (=> d!1252693 (= lt!1510186 e!2645004)))

(declare-fun c!723152 () Bool)

(assert (=> d!1252693 (= c!723152 ((_ is Nil!47230) (t!353021 (t!353021 lt!1510052))))))

(assert (=> d!1252693 (= (map!9657 (t!353021 (t!353021 lt!1510052)) f!428) lt!1510186)))

(declare-fun b!4258900 () Bool)

(assert (=> b!4258900 (= e!2645004 Nil!47231)))

(declare-fun b!4258901 () Bool)

(assert (=> b!4258901 (= e!2645004 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (t!353021 lt!1510052))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (t!353021 lt!1510052))))))))

(assert (= (and d!1252693 c!723152) b!4258900))

(assert (= (and d!1252693 (not c!723152)) b!4258901))

(declare-fun b_lambda!125523 () Bool)

(assert (=> (not b_lambda!125523) (not b!4258901)))

(declare-fun t!353073 () Bool)

(declare-fun tb!256799 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353073) tb!256799))

(declare-fun result!313340 () Bool)

(assert (=> tb!256799 (= result!313340 tp_is_empty!22857)))

(assert (=> b!4258901 t!353073))

(declare-fun b_and!337597 () Bool)

(assert (= b_and!337591 (and (=> t!353073 result!313340) b_and!337597)))

(declare-fun m!4844811 () Bool)

(assert (=> d!1252693 m!4844811))

(assert (=> d!1252693 m!4844791))

(declare-fun m!4844813 () Bool)

(assert (=> b!4258901 m!4844813))

(declare-fun m!4844815 () Bool)

(assert (=> b!4258901 m!4844815))

(assert (=> b!4258901 m!4844813))

(assert (=> b!4258901 m!4844815))

(declare-fun m!4844817 () Bool)

(assert (=> b!4258901 m!4844817))

(assert (=> b!4258682 d!1252693))

(declare-fun d!1252695 () Bool)

(assert (=> d!1252695 (= (height!1862 (left!35012 (right!35342 t!4386))) (ite ((_ is Empty!14238) (left!35012 (right!35342 t!4386))) 0 (ite ((_ is Leaf!22005) (left!35012 (right!35342 t!4386))) 1 (cheight!14449 (left!35012 (right!35342 t!4386))))))))

(assert (=> b!4258485 d!1252695))

(declare-fun d!1252697 () Bool)

(assert (=> d!1252697 (= (height!1862 (right!35342 (right!35342 t!4386))) (ite ((_ is Empty!14238) (right!35342 (right!35342 t!4386))) 0 (ite ((_ is Leaf!22005) (right!35342 (right!35342 t!4386))) 1 (cheight!14449 (right!35342 (right!35342 t!4386))))))))

(assert (=> b!4258485 d!1252697))

(declare-fun d!1252699 () Bool)

(declare-fun lt!1510187 () IArray!28483)

(assert (=> d!1252699 (= lt!1510187 (IArray!28484 (map!9657 (list!17048 (xs!17544 (left!35012 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252699 (= lt!1510187 (choose!25979 (xs!17544 (left!35012 (left!35012 t!4386))) f!428))))

(assert (=> d!1252699 (= (map!9660 (xs!17544 (left!35012 (left!35012 t!4386))) f!428) lt!1510187)))

(declare-fun bs!598932 () Bool)

(assert (= bs!598932 d!1252699))

(assert (=> bs!598932 m!4844205))

(assert (=> bs!598932 m!4844205))

(declare-fun m!4844819 () Bool)

(assert (=> bs!598932 m!4844819))

(declare-fun m!4844821 () Bool)

(assert (=> bs!598932 m!4844821))

(assert (=> b!4258592 d!1252699))

(declare-fun d!1252701 () Bool)

(declare-fun lt!1510190 () Int)

(assert (=> d!1252701 (= lt!1510190 (size!34584 (list!17050 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))))

(assert (=> d!1252701 (= lt!1510190 (ite ((_ is Empty!14239) (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 0 (ite ((_ is Leaf!22006) (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (csize!28709 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (csize!28708 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(assert (=> d!1252701 (= (size!34587 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) lt!1510190)))

(declare-fun bs!598933 () Bool)

(assert (= bs!598933 d!1252701))

(declare-fun m!4844823 () Bool)

(assert (=> bs!598933 m!4844823))

(assert (=> bs!598933 m!4844823))

(declare-fun m!4844825 () Bool)

(assert (=> bs!598933 m!4844825))

(assert (=> d!1252557 d!1252701))

(declare-fun d!1252703 () Bool)

(declare-fun lt!1510191 () Int)

(assert (=> d!1252703 (= lt!1510191 (size!34584 (list!17050 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))))

(assert (=> d!1252703 (= lt!1510191 (ite ((_ is Empty!14239) (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 0 (ite ((_ is Leaf!22006) (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (csize!28709 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (csize!28708 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(assert (=> d!1252703 (= (size!34587 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) lt!1510191)))

(declare-fun bs!598934 () Bool)

(assert (= bs!598934 d!1252703))

(declare-fun m!4844827 () Bool)

(assert (=> bs!598934 m!4844827))

(assert (=> bs!598934 m!4844827))

(declare-fun m!4844829 () Bool)

(assert (=> bs!598934 m!4844829))

(assert (=> d!1252557 d!1252703))

(declare-fun d!1252705 () Bool)

(declare-fun lt!1510192 () Int)

(assert (=> d!1252705 (>= lt!1510192 0)))

(declare-fun e!2645005 () Int)

(assert (=> d!1252705 (= lt!1510192 e!2645005)))

(declare-fun c!723153 () Bool)

(assert (=> d!1252705 (= c!723153 ((_ is Nil!47231) (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))))

(assert (=> d!1252705 (= (size!34584 (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))) lt!1510192)))

(declare-fun b!4258902 () Bool)

(assert (=> b!4258902 (= e!2645005 0)))

(declare-fun b!4258903 () Bool)

(assert (=> b!4258903 (= e!2645005 (+ 1 (size!34584 (t!353022 (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))))))

(assert (= (and d!1252705 c!723153) b!4258902))

(assert (= (and d!1252705 (not c!723153)) b!4258903))

(declare-fun m!4844831 () Bool)

(assert (=> b!4258903 m!4844831))

(assert (=> b!4258459 d!1252705))

(declare-fun d!1252707 () Bool)

(assert (=> d!1252707 (= (list!17051 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (innerList!14299 (xs!17545 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))

(assert (=> b!4258459 d!1252707))

(declare-fun d!1252709 () Bool)

(declare-fun lt!1510193 () Int)

(assert (=> d!1252709 (>= lt!1510193 0)))

(declare-fun e!2645006 () Int)

(assert (=> d!1252709 (= lt!1510193 e!2645006)))

(declare-fun c!723154 () Bool)

(assert (=> d!1252709 (= c!723154 ((_ is Nil!47231) (t!353022 lt!1510074)))))

(assert (=> d!1252709 (= (size!34584 (t!353022 lt!1510074)) lt!1510193)))

(declare-fun b!4258904 () Bool)

(assert (=> b!4258904 (= e!2645006 0)))

(declare-fun b!4258905 () Bool)

(assert (=> b!4258905 (= e!2645006 (+ 1 (size!34584 (t!353022 (t!353022 lt!1510074)))))))

(assert (= (and d!1252709 c!723154) b!4258904))

(assert (= (and d!1252709 (not c!723154)) b!4258905))

(declare-fun m!4844833 () Bool)

(assert (=> b!4258905 m!4844833))

(assert (=> b!4258715 d!1252709))

(declare-fun d!1252711 () Bool)

(declare-fun lt!1510196 () Bool)

(declare-fun isEmpty!27972 (List!47355) Bool)

(assert (=> d!1252711 (= lt!1510196 (isEmpty!27972 (list!17050 (left!35013 lt!1510093))))))

(assert (=> d!1252711 (= lt!1510196 (= (size!34587 (left!35013 lt!1510093)) 0))))

(assert (=> d!1252711 (= (isEmpty!27969 (left!35013 lt!1510093)) lt!1510196)))

(declare-fun bs!598935 () Bool)

(assert (= bs!598935 d!1252711))

(assert (=> bs!598935 m!4844139))

(assert (=> bs!598935 m!4844139))

(declare-fun m!4844835 () Bool)

(assert (=> bs!598935 m!4844835))

(declare-fun m!4844837 () Bool)

(assert (=> bs!598935 m!4844837))

(assert (=> b!4258631 d!1252711))

(declare-fun d!1252713 () Bool)

(declare-fun lt!1510197 () Int)

(assert (=> d!1252713 (>= lt!1510197 0)))

(declare-fun e!2645007 () Int)

(assert (=> d!1252713 (= lt!1510197 e!2645007)))

(declare-fun c!723155 () Bool)

(assert (=> d!1252713 (= c!723155 ((_ is Nil!47230) (innerList!14298 (xs!17544 (right!35342 t!4386)))))))

(assert (=> d!1252713 (= (size!34581 (innerList!14298 (xs!17544 (right!35342 t!4386)))) lt!1510197)))

(declare-fun b!4258906 () Bool)

(assert (=> b!4258906 (= e!2645007 0)))

(declare-fun b!4258907 () Bool)

(assert (=> b!4258907 (= e!2645007 (+ 1 (size!34581 (t!353021 (innerList!14298 (xs!17544 (right!35342 t!4386)))))))))

(assert (= (and d!1252713 c!723155) b!4258906))

(assert (= (and d!1252713 (not c!723155)) b!4258907))

(declare-fun m!4844839 () Bool)

(assert (=> b!4258907 m!4844839))

(assert (=> d!1252581 d!1252713))

(declare-fun d!1252715 () Bool)

(declare-fun lt!1510198 () IArray!28483)

(assert (=> d!1252715 (= lt!1510198 (IArray!28484 (map!9657 (list!17048 (xs!17544 (right!35342 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252715 (= lt!1510198 (choose!25979 (xs!17544 (right!35342 (left!35012 t!4386))) f!428))))

(assert (=> d!1252715 (= (map!9660 (xs!17544 (right!35342 (left!35012 t!4386))) f!428) lt!1510198)))

(declare-fun bs!598936 () Bool)

(assert (= bs!598936 d!1252715))

(assert (=> bs!598936 m!4844243))

(assert (=> bs!598936 m!4844243))

(declare-fun m!4844841 () Bool)

(assert (=> bs!598936 m!4844841))

(declare-fun m!4844843 () Bool)

(assert (=> bs!598936 m!4844843))

(assert (=> b!4258579 d!1252715))

(declare-fun d!1252717 () Bool)

(assert (=> d!1252717 (= (height!1862 (left!35012 (left!35012 t!4386))) (ite ((_ is Empty!14238) (left!35012 (left!35012 t!4386))) 0 (ite ((_ is Leaf!22005) (left!35012 (left!35012 t!4386))) 1 (cheight!14449 (left!35012 (left!35012 t!4386))))))))

(assert (=> b!4258467 d!1252717))

(declare-fun d!1252719 () Bool)

(assert (=> d!1252719 (= (height!1862 (right!35342 (left!35012 t!4386))) (ite ((_ is Empty!14238) (right!35342 (left!35012 t!4386))) 0 (ite ((_ is Leaf!22005) (right!35342 (left!35012 t!4386))) 1 (cheight!14449 (right!35342 (left!35012 t!4386))))))))

(assert (=> b!4258467 d!1252719))

(declare-fun b!4258909 () Bool)

(declare-fun e!2645008 () List!47355)

(assert (=> b!4258909 (= e!2645008 (Cons!47231 (h!52651 (list!17050 (left!35013 lt!1510095))) (++!12024 (t!353022 (list!17050 (left!35013 lt!1510095))) (list!17050 (right!35343 lt!1510095)))))))

(declare-fun b!4258911 () Bool)

(declare-fun e!2645009 () Bool)

(declare-fun lt!1510199 () List!47355)

(assert (=> b!4258911 (= e!2645009 (or (not (= (list!17050 (right!35343 lt!1510095)) Nil!47231)) (= lt!1510199 (list!17050 (left!35013 lt!1510095)))))))

(declare-fun b!4258908 () Bool)

(assert (=> b!4258908 (= e!2645008 (list!17050 (right!35343 lt!1510095)))))

(declare-fun b!4258910 () Bool)

(declare-fun res!1750750 () Bool)

(assert (=> b!4258910 (=> (not res!1750750) (not e!2645009))))

(assert (=> b!4258910 (= res!1750750 (= (size!34584 lt!1510199) (+ (size!34584 (list!17050 (left!35013 lt!1510095))) (size!34584 (list!17050 (right!35343 lt!1510095))))))))

(declare-fun d!1252721 () Bool)

(assert (=> d!1252721 e!2645009))

(declare-fun res!1750749 () Bool)

(assert (=> d!1252721 (=> (not res!1750749) (not e!2645009))))

(assert (=> d!1252721 (= res!1750749 (= (content!7436 lt!1510199) ((_ map or) (content!7436 (list!17050 (left!35013 lt!1510095))) (content!7436 (list!17050 (right!35343 lt!1510095))))))))

(assert (=> d!1252721 (= lt!1510199 e!2645008)))

(declare-fun c!723156 () Bool)

(assert (=> d!1252721 (= c!723156 ((_ is Nil!47231) (list!17050 (left!35013 lt!1510095))))))

(assert (=> d!1252721 (= (++!12024 (list!17050 (left!35013 lt!1510095)) (list!17050 (right!35343 lt!1510095))) lt!1510199)))

(assert (= (and d!1252721 c!723156) b!4258908))

(assert (= (and d!1252721 (not c!723156)) b!4258909))

(assert (= (and d!1252721 res!1750749) b!4258910))

(assert (= (and b!4258910 res!1750750) b!4258911))

(assert (=> b!4258909 m!4844315))

(declare-fun m!4844845 () Bool)

(assert (=> b!4258909 m!4844845))

(declare-fun m!4844847 () Bool)

(assert (=> b!4258910 m!4844847))

(assert (=> b!4258910 m!4844313))

(declare-fun m!4844849 () Bool)

(assert (=> b!4258910 m!4844849))

(assert (=> b!4258910 m!4844315))

(declare-fun m!4844851 () Bool)

(assert (=> b!4258910 m!4844851))

(declare-fun m!4844853 () Bool)

(assert (=> d!1252721 m!4844853))

(assert (=> d!1252721 m!4844313))

(declare-fun m!4844855 () Bool)

(assert (=> d!1252721 m!4844855))

(assert (=> d!1252721 m!4844315))

(declare-fun m!4844857 () Bool)

(assert (=> d!1252721 m!4844857))

(assert (=> b!4258645 d!1252721))

(declare-fun b!4258912 () Bool)

(declare-fun e!2645010 () List!47355)

(assert (=> b!4258912 (= e!2645010 Nil!47231)))

(declare-fun b!4258915 () Bool)

(declare-fun e!2645011 () List!47355)

(assert (=> b!4258915 (= e!2645011 (++!12024 (list!17050 (left!35013 (left!35013 lt!1510095))) (list!17050 (right!35343 (left!35013 lt!1510095)))))))

(declare-fun b!4258913 () Bool)

(assert (=> b!4258913 (= e!2645010 e!2645011)))

(declare-fun c!723158 () Bool)

(assert (=> b!4258913 (= c!723158 ((_ is Leaf!22006) (left!35013 lt!1510095)))))

(declare-fun b!4258914 () Bool)

(assert (=> b!4258914 (= e!2645011 (list!17051 (xs!17545 (left!35013 lt!1510095))))))

(declare-fun d!1252723 () Bool)

(declare-fun c!723157 () Bool)

(assert (=> d!1252723 (= c!723157 ((_ is Empty!14239) (left!35013 lt!1510095)))))

(assert (=> d!1252723 (= (list!17050 (left!35013 lt!1510095)) e!2645010)))

(assert (= (and d!1252723 c!723157) b!4258912))

(assert (= (and d!1252723 (not c!723157)) b!4258913))

(assert (= (and b!4258913 c!723158) b!4258914))

(assert (= (and b!4258913 (not c!723158)) b!4258915))

(declare-fun m!4844859 () Bool)

(assert (=> b!4258915 m!4844859))

(declare-fun m!4844861 () Bool)

(assert (=> b!4258915 m!4844861))

(assert (=> b!4258915 m!4844859))

(assert (=> b!4258915 m!4844861))

(declare-fun m!4844863 () Bool)

(assert (=> b!4258915 m!4844863))

(declare-fun m!4844865 () Bool)

(assert (=> b!4258914 m!4844865))

(assert (=> b!4258645 d!1252723))

(declare-fun b!4258916 () Bool)

(declare-fun e!2645012 () List!47355)

(assert (=> b!4258916 (= e!2645012 Nil!47231)))

(declare-fun b!4258919 () Bool)

(declare-fun e!2645013 () List!47355)

(assert (=> b!4258919 (= e!2645013 (++!12024 (list!17050 (left!35013 (right!35343 lt!1510095))) (list!17050 (right!35343 (right!35343 lt!1510095)))))))

(declare-fun b!4258917 () Bool)

(assert (=> b!4258917 (= e!2645012 e!2645013)))

(declare-fun c!723160 () Bool)

(assert (=> b!4258917 (= c!723160 ((_ is Leaf!22006) (right!35343 lt!1510095)))))

(declare-fun b!4258918 () Bool)

(assert (=> b!4258918 (= e!2645013 (list!17051 (xs!17545 (right!35343 lt!1510095))))))

(declare-fun d!1252725 () Bool)

(declare-fun c!723159 () Bool)

(assert (=> d!1252725 (= c!723159 ((_ is Empty!14239) (right!35343 lt!1510095)))))

(assert (=> d!1252725 (= (list!17050 (right!35343 lt!1510095)) e!2645012)))

(assert (= (and d!1252725 c!723159) b!4258916))

(assert (= (and d!1252725 (not c!723159)) b!4258917))

(assert (= (and b!4258917 c!723160) b!4258918))

(assert (= (and b!4258917 (not c!723160)) b!4258919))

(declare-fun m!4844867 () Bool)

(assert (=> b!4258919 m!4844867))

(declare-fun m!4844869 () Bool)

(assert (=> b!4258919 m!4844869))

(assert (=> b!4258919 m!4844867))

(assert (=> b!4258919 m!4844869))

(declare-fun m!4844871 () Bool)

(assert (=> b!4258919 m!4844871))

(declare-fun m!4844873 () Bool)

(assert (=> b!4258918 m!4844873))

(assert (=> b!4258645 d!1252725))

(declare-fun b!4258923 () Bool)

(declare-fun e!2645015 () Bool)

(declare-fun lt!1510200 () List!47354)

(assert (=> b!4258923 (= e!2645015 (or (not (= (list!17046 (right!35342 (left!35012 t!4386))) Nil!47230)) (= lt!1510200 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))))))))

(declare-fun b!4258922 () Bool)

(declare-fun res!1750751 () Bool)

(assert (=> b!4258922 (=> (not res!1750751) (not e!2645015))))

(assert (=> b!4258922 (= res!1750751 (= (size!34581 lt!1510200) (+ (size!34581 (t!353021 (list!17046 (left!35012 (left!35012 t!4386))))) (size!34581 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(declare-fun b!4258920 () Bool)

(declare-fun e!2645014 () List!47354)

(assert (=> b!4258920 (= e!2645014 (list!17046 (right!35342 (left!35012 t!4386))))))

(declare-fun b!4258921 () Bool)

(assert (=> b!4258921 (= e!2645014 (Cons!47230 (h!52650 (t!353021 (list!17046 (left!35012 (left!35012 t!4386))))) (++!12023 (t!353021 (t!353021 (list!17046 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252727 () Bool)

(assert (=> d!1252727 e!2645015))

(declare-fun res!1750752 () Bool)

(assert (=> d!1252727 (=> (not res!1750752) (not e!2645015))))

(assert (=> d!1252727 (= res!1750752 (= (content!7434 lt!1510200) ((_ map or) (content!7434 (t!353021 (list!17046 (left!35012 (left!35012 t!4386))))) (content!7434 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(assert (=> d!1252727 (= lt!1510200 e!2645014)))

(declare-fun c!723161 () Bool)

(assert (=> d!1252727 (= c!723161 ((_ is Nil!47230) (t!353021 (list!17046 (left!35012 (left!35012 t!4386))))))))

(assert (=> d!1252727 (= (++!12023 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 t!4386)))) lt!1510200)))

(assert (= (and d!1252727 c!723161) b!4258920))

(assert (= (and d!1252727 (not c!723161)) b!4258921))

(assert (= (and d!1252727 res!1750752) b!4258922))

(assert (= (and b!4258922 res!1750751) b!4258923))

(declare-fun m!4844875 () Bool)

(assert (=> b!4258922 m!4844875))

(declare-fun m!4844877 () Bool)

(assert (=> b!4258922 m!4844877))

(assert (=> b!4258922 m!4843863))

(assert (=> b!4258922 m!4844413))

(assert (=> b!4258921 m!4843863))

(declare-fun m!4844879 () Bool)

(assert (=> b!4258921 m!4844879))

(declare-fun m!4844881 () Bool)

(assert (=> d!1252727 m!4844881))

(assert (=> d!1252727 m!4844805))

(assert (=> d!1252727 m!4843863))

(assert (=> d!1252727 m!4844421))

(assert (=> b!4258674 d!1252727))

(declare-fun d!1252729 () Bool)

(declare-fun res!1750753 () Bool)

(declare-fun e!2645016 () Bool)

(assert (=> d!1252729 (=> (not res!1750753) (not e!2645016))))

(assert (=> d!1252729 (= res!1750753 (= (csize!28706 (left!35012 (right!35342 t!4386))) (+ (size!34585 (left!35012 (left!35012 (right!35342 t!4386)))) (size!34585 (right!35342 (left!35012 (right!35342 t!4386)))))))))

(assert (=> d!1252729 (= (inv!62113 (left!35012 (right!35342 t!4386))) e!2645016)))

(declare-fun b!4258924 () Bool)

(declare-fun res!1750754 () Bool)

(assert (=> b!4258924 (=> (not res!1750754) (not e!2645016))))

(assert (=> b!4258924 (= res!1750754 (and (not (= (left!35012 (left!35012 (right!35342 t!4386))) Empty!14238)) (not (= (right!35342 (left!35012 (right!35342 t!4386))) Empty!14238))))))

(declare-fun b!4258925 () Bool)

(declare-fun res!1750755 () Bool)

(assert (=> b!4258925 (=> (not res!1750755) (not e!2645016))))

(assert (=> b!4258925 (= res!1750755 (= (cheight!14449 (left!35012 (right!35342 t!4386))) (+ (max!0 (height!1862 (left!35012 (left!35012 (right!35342 t!4386)))) (height!1862 (right!35342 (left!35012 (right!35342 t!4386))))) 1)))))

(declare-fun b!4258926 () Bool)

(assert (=> b!4258926 (= e!2645016 (<= 0 (cheight!14449 (left!35012 (right!35342 t!4386)))))))

(assert (= (and d!1252729 res!1750753) b!4258924))

(assert (= (and b!4258924 res!1750754) b!4258925))

(assert (= (and b!4258925 res!1750755) b!4258926))

(declare-fun m!4844883 () Bool)

(assert (=> d!1252729 m!4844883))

(declare-fun m!4844885 () Bool)

(assert (=> d!1252729 m!4844885))

(declare-fun m!4844887 () Bool)

(assert (=> b!4258925 m!4844887))

(declare-fun m!4844889 () Bool)

(assert (=> b!4258925 m!4844889))

(assert (=> b!4258925 m!4844887))

(assert (=> b!4258925 m!4844889))

(declare-fun m!4844891 () Bool)

(assert (=> b!4258925 m!4844891))

(assert (=> b!4258720 d!1252729))

(declare-fun d!1252731 () Bool)

(declare-fun lt!1510201 () Int)

(assert (=> d!1252731 (>= lt!1510201 0)))

(declare-fun e!2645017 () Int)

(assert (=> d!1252731 (= lt!1510201 e!2645017)))

(declare-fun c!723162 () Bool)

(assert (=> d!1252731 (= c!723162 ((_ is Nil!47231) lt!1510152))))

(assert (=> d!1252731 (= (size!34584 lt!1510152) lt!1510201)))

(declare-fun b!4258927 () Bool)

(assert (=> b!4258927 (= e!2645017 0)))

(declare-fun b!4258928 () Bool)

(assert (=> b!4258928 (= e!2645017 (+ 1 (size!34584 (t!353022 lt!1510152))))))

(assert (= (and d!1252731 c!723162) b!4258927))

(assert (= (and d!1252731 (not c!723162)) b!4258928))

(declare-fun m!4844893 () Bool)

(assert (=> b!4258928 m!4844893))

(assert (=> b!4258685 d!1252731))

(declare-fun d!1252733 () Bool)

(declare-fun lt!1510202 () Int)

(assert (=> d!1252733 (>= lt!1510202 0)))

(declare-fun e!2645018 () Int)

(assert (=> d!1252733 (= lt!1510202 e!2645018)))

(declare-fun c!723163 () Bool)

(assert (=> d!1252733 (= c!723163 ((_ is Nil!47231) (t!353022 (map!9657 lt!1510052 f!428))))))

(assert (=> d!1252733 (= (size!34584 (t!353022 (map!9657 lt!1510052 f!428))) lt!1510202)))

(declare-fun b!4258929 () Bool)

(assert (=> b!4258929 (= e!2645018 0)))

(declare-fun b!4258930 () Bool)

(assert (=> b!4258930 (= e!2645018 (+ 1 (size!34584 (t!353022 (t!353022 (map!9657 lt!1510052 f!428))))))))

(assert (= (and d!1252733 c!723163) b!4258929))

(assert (= (and d!1252733 (not c!723163)) b!4258930))

(declare-fun m!4844895 () Bool)

(assert (=> b!4258930 m!4844895))

(assert (=> b!4258685 d!1252733))

(assert (=> b!4258685 d!1252575))

(declare-fun d!1252735 () Bool)

(assert (=> d!1252735 (= (height!1863 (left!35013 lt!1510095)) (ite ((_ is Empty!14239) (left!35013 lt!1510095)) 0 (ite ((_ is Leaf!22006) (left!35013 lt!1510095)) 1 (cheight!14450 (left!35013 lt!1510095)))))))

(assert (=> b!4258452 d!1252735))

(declare-fun d!1252737 () Bool)

(assert (=> d!1252737 (= (height!1863 (right!35343 lt!1510095)) (ite ((_ is Empty!14239) (right!35343 lt!1510095)) 0 (ite ((_ is Leaf!22006) (right!35343 lt!1510095)) 1 (cheight!14450 (right!35343 lt!1510095)))))))

(assert (=> b!4258452 d!1252737))

(declare-fun d!1252739 () Bool)

(declare-fun c!723164 () Bool)

(assert (=> d!1252739 (= c!723164 ((_ is Nil!47230) (t!353021 lt!1510052)))))

(declare-fun e!2645019 () (InoxSet T!79378))

(assert (=> d!1252739 (= (content!7434 (t!353021 lt!1510052)) e!2645019)))

(declare-fun b!4258931 () Bool)

(assert (=> b!4258931 (= e!2645019 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4258932 () Bool)

(assert (=> b!4258932 (= e!2645019 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (t!353021 lt!1510052)) true) (content!7434 (t!353021 (t!353021 lt!1510052)))))))

(assert (= (and d!1252739 c!723164) b!4258931))

(assert (= (and d!1252739 (not c!723164)) b!4258932))

(declare-fun m!4844897 () Bool)

(assert (=> b!4258932 m!4844897))

(assert (=> b!4258932 m!4844797))

(assert (=> b!4258570 d!1252739))

(declare-fun b!4258936 () Bool)

(declare-fun e!2645021 () Bool)

(declare-fun lt!1510203 () List!47354)

(assert (=> b!4258936 (= e!2645021 (or (not (= (list!17046 (right!35342 (right!35342 t!4386))) Nil!47230)) (= lt!1510203 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))))))))

(declare-fun b!4258935 () Bool)

(declare-fun res!1750756 () Bool)

(assert (=> b!4258935 (=> (not res!1750756) (not e!2645021))))

(assert (=> b!4258935 (= res!1750756 (= (size!34581 lt!1510203) (+ (size!34581 (t!353021 (list!17046 (left!35012 (right!35342 t!4386))))) (size!34581 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(declare-fun b!4258933 () Bool)

(declare-fun e!2645020 () List!47354)

(assert (=> b!4258933 (= e!2645020 (list!17046 (right!35342 (right!35342 t!4386))))))

(declare-fun b!4258934 () Bool)

(assert (=> b!4258934 (= e!2645020 (Cons!47230 (h!52650 (t!353021 (list!17046 (left!35012 (right!35342 t!4386))))) (++!12023 (t!353021 (t!353021 (list!17046 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252741 () Bool)

(assert (=> d!1252741 e!2645021))

(declare-fun res!1750757 () Bool)

(assert (=> d!1252741 (=> (not res!1750757) (not e!2645021))))

(assert (=> d!1252741 (= res!1750757 (= (content!7434 lt!1510203) ((_ map or) (content!7434 (t!353021 (list!17046 (left!35012 (right!35342 t!4386))))) (content!7434 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(assert (=> d!1252741 (= lt!1510203 e!2645020)))

(declare-fun c!723165 () Bool)

(assert (=> d!1252741 (= c!723165 ((_ is Nil!47230) (t!353021 (list!17046 (left!35012 (right!35342 t!4386))))))))

(assert (=> d!1252741 (= (++!12023 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 t!4386)))) lt!1510203)))

(assert (= (and d!1252741 c!723165) b!4258933))

(assert (= (and d!1252741 (not c!723165)) b!4258934))

(assert (= (and d!1252741 res!1750757) b!4258935))

(assert (= (and b!4258935 res!1750756) b!4258936))

(declare-fun m!4844899 () Bool)

(assert (=> b!4258935 m!4844899))

(declare-fun m!4844901 () Bool)

(assert (=> b!4258935 m!4844901))

(assert (=> b!4258935 m!4843797))

(assert (=> b!4258935 m!4844113))

(assert (=> b!4258934 m!4843797))

(declare-fun m!4844903 () Bool)

(assert (=> b!4258934 m!4844903))

(declare-fun m!4844905 () Bool)

(assert (=> d!1252741 m!4844905))

(declare-fun m!4844907 () Bool)

(assert (=> d!1252741 m!4844907))

(assert (=> d!1252741 m!4843797))

(assert (=> d!1252741 m!4844121))

(assert (=> b!4258515 d!1252741))

(declare-fun b!4258937 () Bool)

(declare-fun e!2645022 () List!47355)

(assert (=> b!4258937 (= e!2645022 Nil!47231)))

(declare-fun b!4258940 () Bool)

(declare-fun e!2645023 () List!47355)

(assert (=> b!4258940 (= e!2645023 (++!12024 (list!17050 (left!35013 lt!1510136)) (list!17050 (right!35343 lt!1510136))))))

(declare-fun b!4258938 () Bool)

(assert (=> b!4258938 (= e!2645022 e!2645023)))

(declare-fun c!723167 () Bool)

(assert (=> b!4258938 (= c!723167 ((_ is Leaf!22006) lt!1510136))))

(declare-fun b!4258939 () Bool)

(assert (=> b!4258939 (= e!2645023 (list!17051 (xs!17545 lt!1510136)))))

(declare-fun d!1252743 () Bool)

(declare-fun c!723166 () Bool)

(assert (=> d!1252743 (= c!723166 ((_ is Empty!14239) lt!1510136))))

(assert (=> d!1252743 (= (list!17050 lt!1510136) e!2645022)))

(assert (= (and d!1252743 c!723166) b!4258937))

(assert (= (and d!1252743 (not c!723166)) b!4258938))

(assert (= (and b!4258938 c!723167) b!4258939))

(assert (= (and b!4258938 (not c!723167)) b!4258940))

(declare-fun m!4844909 () Bool)

(assert (=> b!4258940 m!4844909))

(declare-fun m!4844911 () Bool)

(assert (=> b!4258940 m!4844911))

(assert (=> b!4258940 m!4844909))

(assert (=> b!4258940 m!4844911))

(declare-fun m!4844913 () Bool)

(assert (=> b!4258940 m!4844913))

(declare-fun m!4844915 () Bool)

(assert (=> b!4258939 m!4844915))

(assert (=> d!1252489 d!1252743))

(declare-fun d!1252745 () Bool)

(declare-fun lt!1510204 () List!47355)

(assert (=> d!1252745 (= (size!34584 lt!1510204) (size!34581 (list!17046 (left!35012 (left!35012 t!4386)))))))

(declare-fun e!2645024 () List!47355)

(assert (=> d!1252745 (= lt!1510204 e!2645024)))

(declare-fun c!723168 () Bool)

(assert (=> d!1252745 (= c!723168 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252745 (= (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428) lt!1510204)))

(declare-fun b!4258941 () Bool)

(assert (=> b!4258941 (= e!2645024 Nil!47231)))

(declare-fun b!4258942 () Bool)

(assert (=> b!4258942 (= e!2645024 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (left!35012 (left!35012 t!4386)))))))))

(assert (= (and d!1252745 c!723168) b!4258941))

(assert (= (and d!1252745 (not c!723168)) b!4258942))

(declare-fun b_lambda!125525 () Bool)

(assert (=> (not b_lambda!125525) (not b!4258942)))

(declare-fun t!353077 () Bool)

(declare-fun tb!256801 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353077) tb!256801))

(declare-fun result!313342 () Bool)

(assert (=> tb!256801 (= result!313342 tp_is_empty!22857)))

(assert (=> b!4258942 t!353077))

(declare-fun b_and!337599 () Bool)

(assert (= b_and!337597 (and (=> t!353077 result!313342) b_and!337599)))

(declare-fun m!4844917 () Bool)

(assert (=> d!1252745 m!4844917))

(assert (=> d!1252745 m!4843861))

(assert (=> d!1252745 m!4844411))

(declare-fun m!4844919 () Bool)

(assert (=> b!4258942 m!4844919))

(declare-fun m!4844921 () Bool)

(assert (=> b!4258942 m!4844921))

(assert (=> b!4258942 m!4844919))

(assert (=> b!4258942 m!4844921))

(declare-fun m!4844923 () Bool)

(assert (=> b!4258942 m!4844923))

(assert (=> d!1252489 d!1252745))

(assert (=> d!1252489 d!1252487))

(declare-fun b!4258943 () Bool)

(declare-fun e!2645026 () Bool)

(declare-fun e!2645025 () Bool)

(assert (=> b!4258943 (= e!2645026 e!2645025)))

(declare-fun res!1750762 () Bool)

(assert (=> b!4258943 (=> (not res!1750762) (not e!2645025))))

(assert (=> b!4258943 (= res!1750762 (<= (- 1) (- (height!1862 (left!35012 (left!35012 (left!35012 t!4386)))) (height!1862 (right!35342 (left!35012 (left!35012 t!4386)))))))))

(declare-fun b!4258944 () Bool)

(assert (=> b!4258944 (= e!2645025 (not (isEmpty!27967 (right!35342 (left!35012 (left!35012 t!4386))))))))

(declare-fun d!1252747 () Bool)

(declare-fun res!1750760 () Bool)

(assert (=> d!1252747 (=> res!1750760 e!2645026)))

(assert (=> d!1252747 (= res!1750760 (not ((_ is Node!14238) (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252747 (= (isBalanced!3796 (left!35012 (left!35012 t!4386))) e!2645026)))

(declare-fun b!4258945 () Bool)

(declare-fun res!1750763 () Bool)

(assert (=> b!4258945 (=> (not res!1750763) (not e!2645025))))

(assert (=> b!4258945 (= res!1750763 (<= (- (height!1862 (left!35012 (left!35012 (left!35012 t!4386)))) (height!1862 (right!35342 (left!35012 (left!35012 t!4386))))) 1))))

(declare-fun b!4258946 () Bool)

(declare-fun res!1750759 () Bool)

(assert (=> b!4258946 (=> (not res!1750759) (not e!2645025))))

(assert (=> b!4258946 (= res!1750759 (not (isEmpty!27967 (left!35012 (left!35012 (left!35012 t!4386))))))))

(declare-fun b!4258947 () Bool)

(declare-fun res!1750758 () Bool)

(assert (=> b!4258947 (=> (not res!1750758) (not e!2645025))))

(assert (=> b!4258947 (= res!1750758 (isBalanced!3796 (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4258948 () Bool)

(declare-fun res!1750761 () Bool)

(assert (=> b!4258948 (=> (not res!1750761) (not e!2645025))))

(assert (=> b!4258948 (= res!1750761 (isBalanced!3796 (left!35012 (left!35012 (left!35012 t!4386)))))))

(assert (= (and d!1252747 (not res!1750760)) b!4258943))

(assert (= (and b!4258943 res!1750762) b!4258945))

(assert (= (and b!4258945 res!1750763) b!4258948))

(assert (= (and b!4258948 res!1750761) b!4258947))

(assert (= (and b!4258947 res!1750758) b!4258946))

(assert (= (and b!4258946 res!1750759) b!4258944))

(declare-fun m!4844925 () Bool)

(assert (=> b!4258943 m!4844925))

(declare-fun m!4844927 () Bool)

(assert (=> b!4258943 m!4844927))

(declare-fun m!4844929 () Bool)

(assert (=> b!4258944 m!4844929))

(declare-fun m!4844931 () Bool)

(assert (=> b!4258948 m!4844931))

(assert (=> b!4258945 m!4844925))

(assert (=> b!4258945 m!4844927))

(declare-fun m!4844933 () Bool)

(assert (=> b!4258947 m!4844933))

(declare-fun m!4844935 () Bool)

(assert (=> b!4258946 m!4844935))

(assert (=> d!1252489 d!1252747))

(declare-fun d!1252749 () Bool)

(declare-fun lt!1510205 () Int)

(assert (=> d!1252749 (>= lt!1510205 0)))

(declare-fun e!2645027 () Int)

(assert (=> d!1252749 (= lt!1510205 e!2645027)))

(declare-fun c!723169 () Bool)

(assert (=> d!1252749 (= c!723169 ((_ is Nil!47230) (list!17048 (xs!17544 (left!35012 t!4386)))))))

(assert (=> d!1252749 (= (size!34581 (list!17048 (xs!17544 (left!35012 t!4386)))) lt!1510205)))

(declare-fun b!4258949 () Bool)

(assert (=> b!4258949 (= e!2645027 0)))

(declare-fun b!4258950 () Bool)

(assert (=> b!4258950 (= e!2645027 (+ 1 (size!34581 (t!353021 (list!17048 (xs!17544 (left!35012 t!4386)))))))))

(assert (= (and d!1252749 c!723169) b!4258949))

(assert (= (and d!1252749 (not c!723169)) b!4258950))

(declare-fun m!4844937 () Bool)

(assert (=> b!4258950 m!4844937))

(assert (=> d!1252545 d!1252749))

(assert (=> d!1252545 d!1252555))

(declare-fun d!1252751 () Bool)

(declare-fun lt!1510206 () IArray!28483)

(assert (=> d!1252751 (= lt!1510206 (IArray!28484 (map!9657 (list!17048 (xs!17544 (right!35342 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252751 (= lt!1510206 (choose!25979 (xs!17544 (right!35342 (right!35342 t!4386))) f!428))))

(assert (=> d!1252751 (= (map!9660 (xs!17544 (right!35342 (right!35342 t!4386))) f!428) lt!1510206)))

(declare-fun bs!598937 () Bool)

(assert (= bs!598937 d!1252751))

(assert (=> bs!598937 m!4843995))

(assert (=> bs!598937 m!4843995))

(declare-fun m!4844939 () Bool)

(assert (=> bs!598937 m!4844939))

(declare-fun m!4844941 () Bool)

(assert (=> bs!598937 m!4844941))

(assert (=> b!4258411 d!1252751))

(declare-fun b!4258951 () Bool)

(declare-fun e!2645029 () Bool)

(declare-fun e!2645028 () Bool)

(assert (=> b!4258951 (= e!2645029 e!2645028)))

(declare-fun res!1750768 () Bool)

(assert (=> b!4258951 (=> (not res!1750768) (not e!2645028))))

(assert (=> b!4258951 (= res!1750768 (<= (- 1) (- (height!1862 (left!35012 (right!35342 (left!35012 t!4386)))) (height!1862 (right!35342 (right!35342 (left!35012 t!4386)))))))))

(declare-fun b!4258952 () Bool)

(assert (=> b!4258952 (= e!2645028 (not (isEmpty!27967 (right!35342 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252753 () Bool)

(declare-fun res!1750766 () Bool)

(assert (=> d!1252753 (=> res!1750766 e!2645029)))

(assert (=> d!1252753 (= res!1750766 (not ((_ is Node!14238) (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252753 (= (isBalanced!3796 (right!35342 (left!35012 t!4386))) e!2645029)))

(declare-fun b!4258953 () Bool)

(declare-fun res!1750769 () Bool)

(assert (=> b!4258953 (=> (not res!1750769) (not e!2645028))))

(assert (=> b!4258953 (= res!1750769 (<= (- (height!1862 (left!35012 (right!35342 (left!35012 t!4386)))) (height!1862 (right!35342 (right!35342 (left!35012 t!4386))))) 1))))

(declare-fun b!4258954 () Bool)

(declare-fun res!1750765 () Bool)

(assert (=> b!4258954 (=> (not res!1750765) (not e!2645028))))

(assert (=> b!4258954 (= res!1750765 (not (isEmpty!27967 (left!35012 (right!35342 (left!35012 t!4386))))))))

(declare-fun b!4258955 () Bool)

(declare-fun res!1750764 () Bool)

(assert (=> b!4258955 (=> (not res!1750764) (not e!2645028))))

(assert (=> b!4258955 (= res!1750764 (isBalanced!3796 (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4258956 () Bool)

(declare-fun res!1750767 () Bool)

(assert (=> b!4258956 (=> (not res!1750767) (not e!2645028))))

(assert (=> b!4258956 (= res!1750767 (isBalanced!3796 (left!35012 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252753 (not res!1750766)) b!4258951))

(assert (= (and b!4258951 res!1750768) b!4258953))

(assert (= (and b!4258953 res!1750769) b!4258956))

(assert (= (and b!4258956 res!1750767) b!4258955))

(assert (= (and b!4258955 res!1750764) b!4258954))

(assert (= (and b!4258954 res!1750765) b!4258952))

(declare-fun m!4844943 () Bool)

(assert (=> b!4258951 m!4844943))

(declare-fun m!4844945 () Bool)

(assert (=> b!4258951 m!4844945))

(declare-fun m!4844947 () Bool)

(assert (=> b!4258952 m!4844947))

(declare-fun m!4844949 () Bool)

(assert (=> b!4258956 m!4844949))

(assert (=> b!4258953 m!4844943))

(assert (=> b!4258953 m!4844945))

(declare-fun m!4844951 () Bool)

(assert (=> b!4258955 m!4844951))

(declare-fun m!4844953 () Bool)

(assert (=> b!4258954 m!4844953))

(assert (=> b!4258471 d!1252753))

(assert (=> b!4258671 d!1252749))

(assert (=> b!4258671 d!1252555))

(declare-fun d!1252755 () Bool)

(declare-fun lt!1510207 () IArray!28483)

(assert (=> d!1252755 (= lt!1510207 (IArray!28484 (map!9657 (list!17048 (xs!17544 (left!35012 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252755 (= lt!1510207 (choose!25979 (xs!17544 (left!35012 (right!35342 t!4386))) f!428))))

(assert (=> d!1252755 (= (map!9660 (xs!17544 (left!35012 (right!35342 t!4386))) f!428) lt!1510207)))

(declare-fun bs!598938 () Bool)

(assert (= bs!598938 d!1252755))

(assert (=> bs!598938 m!4843987))

(assert (=> bs!598938 m!4843987))

(declare-fun m!4844955 () Bool)

(assert (=> bs!598938 m!4844955))

(declare-fun m!4844957 () Bool)

(assert (=> bs!598938 m!4844957))

(assert (=> b!4258424 d!1252755))

(declare-fun d!1252757 () Bool)

(declare-fun c!723170 () Bool)

(assert (=> d!1252757 (= c!723170 ((_ is Node!14238) (left!35012 (right!35342 (left!35012 t!4386)))))))

(declare-fun e!2645030 () Bool)

(assert (=> d!1252757 (= (inv!62108 (left!35012 (right!35342 (left!35012 t!4386)))) e!2645030)))

(declare-fun b!4258957 () Bool)

(assert (=> b!4258957 (= e!2645030 (inv!62113 (left!35012 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4258958 () Bool)

(declare-fun e!2645031 () Bool)

(assert (=> b!4258958 (= e!2645030 e!2645031)))

(declare-fun res!1750770 () Bool)

(assert (=> b!4258958 (= res!1750770 (not ((_ is Leaf!22005) (left!35012 (right!35342 (left!35012 t!4386))))))))

(assert (=> b!4258958 (=> res!1750770 e!2645031)))

(declare-fun b!4258959 () Bool)

(assert (=> b!4258959 (= e!2645031 (inv!62114 (left!35012 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252757 c!723170) b!4258957))

(assert (= (and d!1252757 (not c!723170)) b!4258958))

(assert (= (and b!4258958 (not res!1750770)) b!4258959))

(declare-fun m!4844959 () Bool)

(assert (=> b!4258957 m!4844959))

(declare-fun m!4844961 () Bool)

(assert (=> b!4258959 m!4844961))

(assert (=> b!4258736 d!1252757))

(declare-fun d!1252759 () Bool)

(declare-fun c!723171 () Bool)

(assert (=> d!1252759 (= c!723171 ((_ is Node!14238) (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun e!2645032 () Bool)

(assert (=> d!1252759 (= (inv!62108 (right!35342 (right!35342 (left!35012 t!4386)))) e!2645032)))

(declare-fun b!4258960 () Bool)

(assert (=> b!4258960 (= e!2645032 (inv!62113 (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4258961 () Bool)

(declare-fun e!2645033 () Bool)

(assert (=> b!4258961 (= e!2645032 e!2645033)))

(declare-fun res!1750771 () Bool)

(assert (=> b!4258961 (= res!1750771 (not ((_ is Leaf!22005) (right!35342 (right!35342 (left!35012 t!4386))))))))

(assert (=> b!4258961 (=> res!1750771 e!2645033)))

(declare-fun b!4258962 () Bool)

(assert (=> b!4258962 (= e!2645033 (inv!62114 (right!35342 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252759 c!723171) b!4258960))

(assert (= (and d!1252759 (not c!723171)) b!4258961))

(assert (= (and b!4258961 (not res!1750771)) b!4258962))

(declare-fun m!4844963 () Bool)

(assert (=> b!4258960 m!4844963))

(declare-fun m!4844965 () Bool)

(assert (=> b!4258962 m!4844965))

(assert (=> b!4258736 d!1252759))

(assert (=> b!4258399 d!1252577))

(assert (=> b!4258399 d!1252579))

(declare-fun d!1252761 () Bool)

(assert (=> d!1252761 (= ($colon$colon!627 (map!9657 (t!353021 (list!17046 (left!35012 t!4386))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (left!35012 t!4386))))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (list!17046 (left!35012 t!4386)))) (map!9657 (t!353021 (list!17046 (left!35012 t!4386))) f!428)))))

(assert (=> b!4258551 d!1252761))

(declare-fun d!1252763 () Bool)

(declare-fun lt!1510208 () List!47355)

(assert (=> d!1252763 (= (size!34584 lt!1510208) (size!34581 (t!353021 (list!17046 (left!35012 t!4386)))))))

(declare-fun e!2645034 () List!47355)

(assert (=> d!1252763 (= lt!1510208 e!2645034)))

(declare-fun c!723172 () Bool)

(assert (=> d!1252763 (= c!723172 ((_ is Nil!47230) (t!353021 (list!17046 (left!35012 t!4386)))))))

(assert (=> d!1252763 (= (map!9657 (t!353021 (list!17046 (left!35012 t!4386))) f!428) lt!1510208)))

(declare-fun b!4258963 () Bool)

(assert (=> b!4258963 (= e!2645034 Nil!47231)))

(declare-fun b!4258964 () Bool)

(assert (=> b!4258964 (= e!2645034 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (list!17046 (left!35012 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (list!17046 (left!35012 t!4386)))))))))

(assert (= (and d!1252763 c!723172) b!4258963))

(assert (= (and d!1252763 (not c!723172)) b!4258964))

(declare-fun b_lambda!125527 () Bool)

(assert (=> (not b_lambda!125527) (not b!4258964)))

(declare-fun t!353079 () Bool)

(declare-fun tb!256803 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353079) tb!256803))

(declare-fun result!313344 () Bool)

(assert (=> tb!256803 (= result!313344 tp_is_empty!22857)))

(assert (=> b!4258964 t!353079))

(declare-fun b_and!337601 () Bool)

(assert (= b_and!337599 (and (=> t!353079 result!313344) b_and!337601)))

(declare-fun m!4844967 () Bool)

(assert (=> d!1252763 m!4844967))

(declare-fun m!4844969 () Bool)

(assert (=> d!1252763 m!4844969))

(declare-fun m!4844971 () Bool)

(assert (=> b!4258964 m!4844971))

(declare-fun m!4844973 () Bool)

(assert (=> b!4258964 m!4844973))

(assert (=> b!4258964 m!4844971))

(assert (=> b!4258964 m!4844973))

(declare-fun m!4844975 () Bool)

(assert (=> b!4258964 m!4844975))

(assert (=> b!4258551 d!1252763))

(declare-fun d!1252765 () Bool)

(declare-fun lt!1510209 () Int)

(assert (=> d!1252765 (>= lt!1510209 0)))

(declare-fun e!2645035 () Int)

(assert (=> d!1252765 (= lt!1510209 e!2645035)))

(declare-fun c!723173 () Bool)

(assert (=> d!1252765 (= c!723173 ((_ is Nil!47230) (t!353021 (innerList!14298 (xs!17544 t!4386)))))))

(assert (=> d!1252765 (= (size!34581 (t!353021 (innerList!14298 (xs!17544 t!4386)))) lt!1510209)))

(declare-fun b!4258965 () Bool)

(assert (=> b!4258965 (= e!2645035 0)))

(declare-fun b!4258966 () Bool)

(assert (=> b!4258966 (= e!2645035 (+ 1 (size!34581 (t!353021 (t!353021 (innerList!14298 (xs!17544 t!4386)))))))))

(assert (= (and d!1252765 c!723173) b!4258965))

(assert (= (and d!1252765 (not c!723173)) b!4258966))

(declare-fun m!4844977 () Bool)

(assert (=> b!4258966 m!4844977))

(assert (=> b!4258713 d!1252765))

(declare-fun d!1252767 () Bool)

(declare-fun lt!1510210 () Int)

(assert (=> d!1252767 (>= lt!1510210 0)))

(declare-fun e!2645036 () Int)

(assert (=> d!1252767 (= lt!1510210 e!2645036)))

(declare-fun c!723174 () Bool)

(assert (=> d!1252767 (= c!723174 ((_ is Nil!47231) lt!1510151))))

(assert (=> d!1252767 (= (size!34584 lt!1510151) lt!1510210)))

(declare-fun b!4258967 () Bool)

(assert (=> b!4258967 (= e!2645036 0)))

(declare-fun b!4258968 () Bool)

(assert (=> b!4258968 (= e!2645036 (+ 1 (size!34584 (t!353022 lt!1510151))))))

(assert (= (and d!1252767 c!723174) b!4258967))

(assert (= (and d!1252767 (not c!723174)) b!4258968))

(declare-fun m!4844979 () Bool)

(assert (=> b!4258968 m!4844979))

(assert (=> d!1252551 d!1252767))

(declare-fun d!1252769 () Bool)

(declare-fun lt!1510211 () Int)

(assert (=> d!1252769 (>= lt!1510211 0)))

(declare-fun e!2645037 () Int)

(assert (=> d!1252769 (= lt!1510211 e!2645037)))

(declare-fun c!723175 () Bool)

(assert (=> d!1252769 (= c!723175 ((_ is Nil!47230) (t!353021 lt!1510052)))))

(assert (=> d!1252769 (= (size!34581 (t!353021 lt!1510052)) lt!1510211)))

(declare-fun b!4258969 () Bool)

(assert (=> b!4258969 (= e!2645037 0)))

(declare-fun b!4258970 () Bool)

(assert (=> b!4258970 (= e!2645037 (+ 1 (size!34581 (t!353021 (t!353021 lt!1510052)))))))

(assert (= (and d!1252769 c!723175) b!4258969))

(assert (= (and d!1252769 (not c!723175)) b!4258970))

(assert (=> b!4258970 m!4844791))

(assert (=> d!1252551 d!1252769))

(declare-fun d!1252771 () Bool)

(declare-fun lt!1510212 () Int)

(assert (=> d!1252771 (>= lt!1510212 0)))

(declare-fun e!2645038 () Int)

(assert (=> d!1252771 (= lt!1510212 e!2645038)))

(declare-fun c!723176 () Bool)

(assert (=> d!1252771 (= c!723176 ((_ is Nil!47231) (t!353022 lt!1510080)))))

(assert (=> d!1252771 (= (size!34584 (t!353022 lt!1510080)) lt!1510212)))

(declare-fun b!4258971 () Bool)

(assert (=> b!4258971 (= e!2645038 0)))

(declare-fun b!4258972 () Bool)

(assert (=> b!4258972 (= e!2645038 (+ 1 (size!34584 (t!353022 (t!353022 lt!1510080)))))))

(assert (= (and d!1252771 c!723176) b!4258971))

(assert (= (and d!1252771 (not c!723176)) b!4258972))

(declare-fun m!4844981 () Bool)

(assert (=> b!4258972 m!4844981))

(assert (=> b!4258430 d!1252771))

(declare-fun d!1252773 () Bool)

(assert (=> d!1252773 (= (max!0 (height!1862 (left!35012 (right!35342 t!4386))) (height!1862 (right!35342 (right!35342 t!4386)))) (ite (< (height!1862 (left!35012 (right!35342 t!4386))) (height!1862 (right!35342 (right!35342 t!4386)))) (height!1862 (right!35342 (right!35342 t!4386))) (height!1862 (left!35012 (right!35342 t!4386)))))))

(assert (=> b!4258506 d!1252773))

(assert (=> b!4258506 d!1252695))

(assert (=> b!4258506 d!1252697))

(declare-fun d!1252775 () Bool)

(declare-fun c!723177 () Bool)

(assert (=> d!1252775 (= c!723177 ((_ is Nil!47231) (t!353022 (map!9657 lt!1510051 f!428))))))

(declare-fun e!2645039 () (InoxSet B!2813))

(assert (=> d!1252775 (= (content!7436 (t!353022 (map!9657 lt!1510051 f!428))) e!2645039)))

(declare-fun b!4258973 () Bool)

(assert (=> b!4258973 (= e!2645039 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4258974 () Bool)

(assert (=> b!4258974 (= e!2645039 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 (t!353022 (map!9657 lt!1510051 f!428))) true) (content!7436 (t!353022 (t!353022 (map!9657 lt!1510051 f!428))))))))

(assert (= (and d!1252775 c!723177) b!4258973))

(assert (= (and d!1252775 (not c!723177)) b!4258974))

(declare-fun m!4844983 () Bool)

(assert (=> b!4258974 m!4844983))

(declare-fun m!4844985 () Bool)

(assert (=> b!4258974 m!4844985))

(assert (=> b!4258625 d!1252775))

(declare-fun b!4258975 () Bool)

(declare-fun e!2645040 () List!47355)

(assert (=> b!4258975 (= e!2645040 Nil!47231)))

(declare-fun b!4258978 () Bool)

(declare-fun e!2645041 () List!47355)

(assert (=> b!4258978 (= e!2645041 (++!12024 (list!17050 (left!35013 lt!1510100)) (list!17050 (right!35343 lt!1510100))))))

(declare-fun b!4258976 () Bool)

(assert (=> b!4258976 (= e!2645040 e!2645041)))

(declare-fun c!723179 () Bool)

(assert (=> b!4258976 (= c!723179 ((_ is Leaf!22006) lt!1510100))))

(declare-fun b!4258977 () Bool)

(assert (=> b!4258977 (= e!2645041 (list!17051 (xs!17545 lt!1510100)))))

(declare-fun d!1252777 () Bool)

(declare-fun c!723178 () Bool)

(assert (=> d!1252777 (= c!723178 ((_ is Empty!14239) lt!1510100))))

(assert (=> d!1252777 (= (list!17050 lt!1510100) e!2645040)))

(assert (= (and d!1252777 c!723178) b!4258975))

(assert (= (and d!1252777 (not c!723178)) b!4258976))

(assert (= (and b!4258976 c!723179) b!4258977))

(assert (= (and b!4258976 (not c!723179)) b!4258978))

(declare-fun m!4844987 () Bool)

(assert (=> b!4258978 m!4844987))

(declare-fun m!4844989 () Bool)

(assert (=> b!4258978 m!4844989))

(assert (=> b!4258978 m!4844987))

(assert (=> b!4258978 m!4844989))

(declare-fun m!4844991 () Bool)

(assert (=> b!4258978 m!4844991))

(declare-fun m!4844993 () Bool)

(assert (=> b!4258977 m!4844993))

(assert (=> d!1252395 d!1252777))

(declare-fun d!1252779 () Bool)

(declare-fun lt!1510213 () List!47355)

(assert (=> d!1252779 (= (size!34584 lt!1510213) (size!34581 (list!17046 (right!35342 (right!35342 t!4386)))))))

(declare-fun e!2645042 () List!47355)

(assert (=> d!1252779 (= lt!1510213 e!2645042)))

(declare-fun c!723180 () Bool)

(assert (=> d!1252779 (= c!723180 ((_ is Nil!47230) (list!17046 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252779 (= (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428) lt!1510213)))

(declare-fun b!4258979 () Bool)

(assert (=> b!4258979 (= e!2645042 Nil!47231)))

(declare-fun b!4258980 () Bool)

(assert (=> b!4258980 (= e!2645042 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (right!35342 (right!35342 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(assert (= (and d!1252779 c!723180) b!4258979))

(assert (= (and d!1252779 (not c!723180)) b!4258980))

(declare-fun b_lambda!125529 () Bool)

(assert (=> (not b_lambda!125529) (not b!4258980)))

(declare-fun t!353081 () Bool)

(declare-fun tb!256805 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353081) tb!256805))

(declare-fun result!313346 () Bool)

(assert (=> tb!256805 (= result!313346 tp_is_empty!22857)))

(assert (=> b!4258980 t!353081))

(declare-fun b_and!337603 () Bool)

(assert (= b_and!337601 (and (=> t!353081 result!313346) b_and!337603)))

(declare-fun m!4844995 () Bool)

(assert (=> d!1252779 m!4844995))

(assert (=> d!1252779 m!4843797))

(assert (=> d!1252779 m!4844113))

(declare-fun m!4844997 () Bool)

(assert (=> b!4258980 m!4844997))

(declare-fun m!4844999 () Bool)

(assert (=> b!4258980 m!4844999))

(assert (=> b!4258980 m!4844997))

(assert (=> b!4258980 m!4844999))

(declare-fun m!4845001 () Bool)

(assert (=> b!4258980 m!4845001))

(assert (=> d!1252395 d!1252779))

(assert (=> d!1252395 d!1252399))

(declare-fun b!4258981 () Bool)

(declare-fun e!2645044 () Bool)

(declare-fun e!2645043 () Bool)

(assert (=> b!4258981 (= e!2645044 e!2645043)))

(declare-fun res!1750776 () Bool)

(assert (=> b!4258981 (=> (not res!1750776) (not e!2645043))))

(assert (=> b!4258981 (= res!1750776 (<= (- 1) (- (height!1862 (left!35012 (right!35342 (right!35342 t!4386)))) (height!1862 (right!35342 (right!35342 (right!35342 t!4386)))))))))

(declare-fun b!4258982 () Bool)

(assert (=> b!4258982 (= e!2645043 (not (isEmpty!27967 (right!35342 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252781 () Bool)

(declare-fun res!1750774 () Bool)

(assert (=> d!1252781 (=> res!1750774 e!2645044)))

(assert (=> d!1252781 (= res!1750774 (not ((_ is Node!14238) (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252781 (= (isBalanced!3796 (right!35342 (right!35342 t!4386))) e!2645044)))

(declare-fun b!4258983 () Bool)

(declare-fun res!1750777 () Bool)

(assert (=> b!4258983 (=> (not res!1750777) (not e!2645043))))

(assert (=> b!4258983 (= res!1750777 (<= (- (height!1862 (left!35012 (right!35342 (right!35342 t!4386)))) (height!1862 (right!35342 (right!35342 (right!35342 t!4386))))) 1))))

(declare-fun b!4258984 () Bool)

(declare-fun res!1750773 () Bool)

(assert (=> b!4258984 (=> (not res!1750773) (not e!2645043))))

(assert (=> b!4258984 (= res!1750773 (not (isEmpty!27967 (left!35012 (right!35342 (right!35342 t!4386))))))))

(declare-fun b!4258985 () Bool)

(declare-fun res!1750772 () Bool)

(assert (=> b!4258985 (=> (not res!1750772) (not e!2645043))))

(assert (=> b!4258985 (= res!1750772 (isBalanced!3796 (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4258986 () Bool)

(declare-fun res!1750775 () Bool)

(assert (=> b!4258986 (=> (not res!1750775) (not e!2645043))))

(assert (=> b!4258986 (= res!1750775 (isBalanced!3796 (left!35012 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252781 (not res!1750774)) b!4258981))

(assert (= (and b!4258981 res!1750776) b!4258983))

(assert (= (and b!4258983 res!1750777) b!4258986))

(assert (= (and b!4258986 res!1750775) b!4258985))

(assert (= (and b!4258985 res!1750772) b!4258984))

(assert (= (and b!4258984 res!1750773) b!4258982))

(assert (=> b!4258981 m!4844783))

(assert (=> b!4258981 m!4844785))

(declare-fun m!4845003 () Bool)

(assert (=> b!4258982 m!4845003))

(declare-fun m!4845005 () Bool)

(assert (=> b!4258986 m!4845005))

(assert (=> b!4258983 m!4844783))

(assert (=> b!4258983 m!4844785))

(declare-fun m!4845007 () Bool)

(assert (=> b!4258985 m!4845007))

(declare-fun m!4845009 () Bool)

(assert (=> b!4258984 m!4845009))

(assert (=> d!1252395 d!1252781))

(declare-fun d!1252783 () Bool)

(declare-fun lt!1510214 () Int)

(assert (=> d!1252783 (>= lt!1510214 0)))

(declare-fun e!2645045 () Int)

(assert (=> d!1252783 (= lt!1510214 e!2645045)))

(declare-fun c!723181 () Bool)

(assert (=> d!1252783 (= c!723181 ((_ is Nil!47231) (t!353022 (map!9657 lt!1510051 f!428))))))

(assert (=> d!1252783 (= (size!34584 (t!353022 (map!9657 lt!1510051 f!428))) lt!1510214)))

(declare-fun b!4258987 () Bool)

(assert (=> b!4258987 (= e!2645045 0)))

(declare-fun b!4258988 () Bool)

(assert (=> b!4258988 (= e!2645045 (+ 1 (size!34584 (t!353022 (t!353022 (map!9657 lt!1510051 f!428))))))))

(assert (= (and d!1252783 c!723181) b!4258987))

(assert (= (and d!1252783 (not c!723181)) b!4258988))

(declare-fun m!4845011 () Bool)

(assert (=> b!4258988 m!4845011))

(assert (=> b!4258719 d!1252783))

(declare-fun d!1252785 () Bool)

(assert (=> d!1252785 (= (list!17048 (xs!17544 (left!35012 (right!35342 t!4386)))) (innerList!14298 (xs!17544 (left!35012 (right!35342 t!4386)))))))

(assert (=> b!4258414 d!1252785))

(declare-fun b!4258989 () Bool)

(declare-fun res!1750782 () Bool)

(declare-fun e!2645046 () Bool)

(assert (=> b!4258989 (=> (not res!1750782) (not e!2645046))))

(assert (=> b!4258989 (= res!1750782 (isBalanced!3798 (left!35013 (left!35013 lt!1510093))))))

(declare-fun b!4258990 () Bool)

(declare-fun res!1750778 () Bool)

(assert (=> b!4258990 (=> (not res!1750778) (not e!2645046))))

(assert (=> b!4258990 (= res!1750778 (<= (- (height!1863 (left!35013 (left!35013 lt!1510093))) (height!1863 (right!35343 (left!35013 lt!1510093)))) 1))))

(declare-fun b!4258991 () Bool)

(declare-fun res!1750781 () Bool)

(assert (=> b!4258991 (=> (not res!1750781) (not e!2645046))))

(assert (=> b!4258991 (= res!1750781 (isBalanced!3798 (right!35343 (left!35013 lt!1510093))))))

(declare-fun b!4258992 () Bool)

(declare-fun e!2645047 () Bool)

(assert (=> b!4258992 (= e!2645047 e!2645046)))

(declare-fun res!1750780 () Bool)

(assert (=> b!4258992 (=> (not res!1750780) (not e!2645046))))

(assert (=> b!4258992 (= res!1750780 (<= (- 1) (- (height!1863 (left!35013 (left!35013 lt!1510093))) (height!1863 (right!35343 (left!35013 lt!1510093))))))))

(declare-fun b!4258993 () Bool)

(assert (=> b!4258993 (= e!2645046 (not (isEmpty!27969 (right!35343 (left!35013 lt!1510093)))))))

(declare-fun b!4258994 () Bool)

(declare-fun res!1750779 () Bool)

(assert (=> b!4258994 (=> (not res!1750779) (not e!2645046))))

(assert (=> b!4258994 (= res!1750779 (not (isEmpty!27969 (left!35013 (left!35013 lt!1510093)))))))

(declare-fun d!1252787 () Bool)

(declare-fun res!1750783 () Bool)

(assert (=> d!1252787 (=> res!1750783 e!2645047)))

(assert (=> d!1252787 (= res!1750783 (not ((_ is Node!14239) (left!35013 lt!1510093))))))

(assert (=> d!1252787 (= (isBalanced!3798 (left!35013 lt!1510093)) e!2645047)))

(assert (= (and d!1252787 (not res!1750783)) b!4258992))

(assert (= (and b!4258992 res!1750780) b!4258990))

(assert (= (and b!4258990 res!1750778) b!4258989))

(assert (= (and b!4258989 res!1750782) b!4258991))

(assert (= (and b!4258991 res!1750781) b!4258994))

(assert (= (and b!4258994 res!1750779) b!4258993))

(declare-fun m!4845013 () Bool)

(assert (=> b!4258993 m!4845013))

(declare-fun m!4845015 () Bool)

(assert (=> b!4258994 m!4845015))

(declare-fun m!4845017 () Bool)

(assert (=> b!4258992 m!4845017))

(declare-fun m!4845019 () Bool)

(assert (=> b!4258992 m!4845019))

(assert (=> b!4258990 m!4845017))

(assert (=> b!4258990 m!4845019))

(declare-fun m!4845021 () Bool)

(assert (=> b!4258989 m!4845021))

(declare-fun m!4845023 () Bool)

(assert (=> b!4258991 m!4845023))

(assert (=> b!4258626 d!1252787))

(declare-fun d!1252789 () Bool)

(declare-fun res!1750784 () Bool)

(declare-fun e!2645048 () Bool)

(assert (=> d!1252789 (=> (not res!1750784) (not e!2645048))))

(assert (=> d!1252789 (= res!1750784 (= (csize!28706 (right!35342 (left!35012 t!4386))) (+ (size!34585 (left!35012 (right!35342 (left!35012 t!4386)))) (size!34585 (right!35342 (right!35342 (left!35012 t!4386)))))))))

(assert (=> d!1252789 (= (inv!62113 (right!35342 (left!35012 t!4386))) e!2645048)))

(declare-fun b!4258995 () Bool)

(declare-fun res!1750785 () Bool)

(assert (=> b!4258995 (=> (not res!1750785) (not e!2645048))))

(assert (=> b!4258995 (= res!1750785 (and (not (= (left!35012 (right!35342 (left!35012 t!4386))) Empty!14238)) (not (= (right!35342 (right!35342 (left!35012 t!4386))) Empty!14238))))))

(declare-fun b!4258996 () Bool)

(declare-fun res!1750786 () Bool)

(assert (=> b!4258996 (=> (not res!1750786) (not e!2645048))))

(assert (=> b!4258996 (= res!1750786 (= (cheight!14449 (right!35342 (left!35012 t!4386))) (+ (max!0 (height!1862 (left!35012 (right!35342 (left!35012 t!4386)))) (height!1862 (right!35342 (right!35342 (left!35012 t!4386))))) 1)))))

(declare-fun b!4258997 () Bool)

(assert (=> b!4258997 (= e!2645048 (<= 0 (cheight!14449 (right!35342 (left!35012 t!4386)))))))

(assert (= (and d!1252789 res!1750784) b!4258995))

(assert (= (and b!4258995 res!1750785) b!4258996))

(assert (= (and b!4258996 res!1750786) b!4258997))

(declare-fun m!4845025 () Bool)

(assert (=> d!1252789 m!4845025))

(declare-fun m!4845027 () Bool)

(assert (=> d!1252789 m!4845027))

(assert (=> b!4258996 m!4844943))

(assert (=> b!4258996 m!4844945))

(assert (=> b!4258996 m!4844943))

(assert (=> b!4258996 m!4844945))

(declare-fun m!4845029 () Bool)

(assert (=> b!4258996 m!4845029))

(assert (=> b!4258476 d!1252789))

(declare-fun b!4258998 () Bool)

(declare-fun e!2645049 () List!47355)

(assert (=> b!4258998 (= e!2645049 Nil!47231)))

(declare-fun b!4259001 () Bool)

(declare-fun e!2645050 () List!47355)

(assert (=> b!4259001 (= e!2645050 (++!12024 (list!17050 (left!35013 lt!1510102)) (list!17050 (right!35343 lt!1510102))))))

(declare-fun b!4258999 () Bool)

(assert (=> b!4258999 (= e!2645049 e!2645050)))

(declare-fun c!723183 () Bool)

(assert (=> b!4258999 (= c!723183 ((_ is Leaf!22006) lt!1510102))))

(declare-fun b!4259000 () Bool)

(assert (=> b!4259000 (= e!2645050 (list!17051 (xs!17545 lt!1510102)))))

(declare-fun d!1252791 () Bool)

(declare-fun c!723182 () Bool)

(assert (=> d!1252791 (= c!723182 ((_ is Empty!14239) lt!1510102))))

(assert (=> d!1252791 (= (list!17050 lt!1510102) e!2645049)))

(assert (= (and d!1252791 c!723182) b!4258998))

(assert (= (and d!1252791 (not c!723182)) b!4258999))

(assert (= (and b!4258999 c!723183) b!4259000))

(assert (= (and b!4258999 (not c!723183)) b!4259001))

(declare-fun m!4845031 () Bool)

(assert (=> b!4259001 m!4845031))

(declare-fun m!4845033 () Bool)

(assert (=> b!4259001 m!4845033))

(assert (=> b!4259001 m!4845031))

(assert (=> b!4259001 m!4845033))

(declare-fun m!4845035 () Bool)

(assert (=> b!4259001 m!4845035))

(declare-fun m!4845037 () Bool)

(assert (=> b!4259000 m!4845037))

(assert (=> d!1252401 d!1252791))

(declare-fun d!1252793 () Bool)

(declare-fun lt!1510215 () List!47355)

(assert (=> d!1252793 (= (size!34584 lt!1510215) (size!34581 (list!17046 (left!35012 (right!35342 t!4386)))))))

(declare-fun e!2645051 () List!47355)

(assert (=> d!1252793 (= lt!1510215 e!2645051)))

(declare-fun c!723184 () Bool)

(assert (=> d!1252793 (= c!723184 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252793 (= (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428) lt!1510215)))

(declare-fun b!4259002 () Bool)

(assert (=> b!4259002 (= e!2645051 Nil!47231)))

(declare-fun b!4259003 () Bool)

(assert (=> b!4259003 (= e!2645051 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (left!35012 (right!35342 t!4386)))))))))

(assert (= (and d!1252793 c!723184) b!4259002))

(assert (= (and d!1252793 (not c!723184)) b!4259003))

(declare-fun b_lambda!125531 () Bool)

(assert (=> (not b_lambda!125531) (not b!4259003)))

(declare-fun t!353083 () Bool)

(declare-fun tb!256807 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353083) tb!256807))

(declare-fun result!313348 () Bool)

(assert (=> tb!256807 (= result!313348 tp_is_empty!22857)))

(assert (=> b!4259003 t!353083))

(declare-fun b_and!337605 () Bool)

(assert (= b_and!337603 (and (=> t!353083 result!313348) b_and!337605)))

(declare-fun m!4845039 () Bool)

(assert (=> d!1252793 m!4845039))

(assert (=> d!1252793 m!4843795))

(assert (=> d!1252793 m!4844111))

(declare-fun m!4845041 () Bool)

(assert (=> b!4259003 m!4845041))

(declare-fun m!4845043 () Bool)

(assert (=> b!4259003 m!4845043))

(assert (=> b!4259003 m!4845041))

(assert (=> b!4259003 m!4845043))

(declare-fun m!4845045 () Bool)

(assert (=> b!4259003 m!4845045))

(assert (=> d!1252401 d!1252793))

(assert (=> d!1252401 d!1252397))

(declare-fun b!4259004 () Bool)

(declare-fun e!2645053 () Bool)

(declare-fun e!2645052 () Bool)

(assert (=> b!4259004 (= e!2645053 e!2645052)))

(declare-fun res!1750791 () Bool)

(assert (=> b!4259004 (=> (not res!1750791) (not e!2645052))))

(assert (=> b!4259004 (= res!1750791 (<= (- 1) (- (height!1862 (left!35012 (left!35012 (right!35342 t!4386)))) (height!1862 (right!35342 (left!35012 (right!35342 t!4386)))))))))

(declare-fun b!4259005 () Bool)

(assert (=> b!4259005 (= e!2645052 (not (isEmpty!27967 (right!35342 (left!35012 (right!35342 t!4386))))))))

(declare-fun d!1252795 () Bool)

(declare-fun res!1750789 () Bool)

(assert (=> d!1252795 (=> res!1750789 e!2645053)))

(assert (=> d!1252795 (= res!1750789 (not ((_ is Node!14238) (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252795 (= (isBalanced!3796 (left!35012 (right!35342 t!4386))) e!2645053)))

(declare-fun b!4259006 () Bool)

(declare-fun res!1750792 () Bool)

(assert (=> b!4259006 (=> (not res!1750792) (not e!2645052))))

(assert (=> b!4259006 (= res!1750792 (<= (- (height!1862 (left!35012 (left!35012 (right!35342 t!4386)))) (height!1862 (right!35342 (left!35012 (right!35342 t!4386))))) 1))))

(declare-fun b!4259007 () Bool)

(declare-fun res!1750788 () Bool)

(assert (=> b!4259007 (=> (not res!1750788) (not e!2645052))))

(assert (=> b!4259007 (= res!1750788 (not (isEmpty!27967 (left!35012 (left!35012 (right!35342 t!4386))))))))

(declare-fun b!4259008 () Bool)

(declare-fun res!1750787 () Bool)

(assert (=> b!4259008 (=> (not res!1750787) (not e!2645052))))

(assert (=> b!4259008 (= res!1750787 (isBalanced!3796 (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4259009 () Bool)

(declare-fun res!1750790 () Bool)

(assert (=> b!4259009 (=> (not res!1750790) (not e!2645052))))

(assert (=> b!4259009 (= res!1750790 (isBalanced!3796 (left!35012 (left!35012 (right!35342 t!4386)))))))

(assert (= (and d!1252795 (not res!1750789)) b!4259004))

(assert (= (and b!4259004 res!1750791) b!4259006))

(assert (= (and b!4259006 res!1750792) b!4259009))

(assert (= (and b!4259009 res!1750790) b!4259008))

(assert (= (and b!4259008 res!1750787) b!4259007))

(assert (= (and b!4259007 res!1750788) b!4259005))

(assert (=> b!4259004 m!4844887))

(assert (=> b!4259004 m!4844889))

(declare-fun m!4845047 () Bool)

(assert (=> b!4259005 m!4845047))

(declare-fun m!4845049 () Bool)

(assert (=> b!4259009 m!4845049))

(assert (=> b!4259006 m!4844887))

(assert (=> b!4259006 m!4844889))

(declare-fun m!4845051 () Bool)

(assert (=> b!4259008 m!4845051))

(declare-fun m!4845053 () Bool)

(assert (=> b!4259007 m!4845053))

(assert (=> d!1252401 d!1252795))

(declare-fun b!4259010 () Bool)

(declare-fun res!1750797 () Bool)

(declare-fun e!2645054 () Bool)

(assert (=> b!4259010 (=> (not res!1750797) (not e!2645054))))

(assert (=> b!4259010 (= res!1750797 (isBalanced!3798 (left!35013 lt!1510136)))))

(declare-fun b!4259011 () Bool)

(declare-fun res!1750793 () Bool)

(assert (=> b!4259011 (=> (not res!1750793) (not e!2645054))))

(assert (=> b!4259011 (= res!1750793 (<= (- (height!1863 (left!35013 lt!1510136)) (height!1863 (right!35343 lt!1510136))) 1))))

(declare-fun b!4259012 () Bool)

(declare-fun res!1750796 () Bool)

(assert (=> b!4259012 (=> (not res!1750796) (not e!2645054))))

(assert (=> b!4259012 (= res!1750796 (isBalanced!3798 (right!35343 lt!1510136)))))

(declare-fun b!4259013 () Bool)

(declare-fun e!2645055 () Bool)

(assert (=> b!4259013 (= e!2645055 e!2645054)))

(declare-fun res!1750795 () Bool)

(assert (=> b!4259013 (=> (not res!1750795) (not e!2645054))))

(assert (=> b!4259013 (= res!1750795 (<= (- 1) (- (height!1863 (left!35013 lt!1510136)) (height!1863 (right!35343 lt!1510136)))))))

(declare-fun b!4259014 () Bool)

(assert (=> b!4259014 (= e!2645054 (not (isEmpty!27969 (right!35343 lt!1510136))))))

(declare-fun b!4259015 () Bool)

(declare-fun res!1750794 () Bool)

(assert (=> b!4259015 (=> (not res!1750794) (not e!2645054))))

(assert (=> b!4259015 (= res!1750794 (not (isEmpty!27969 (left!35013 lt!1510136))))))

(declare-fun d!1252797 () Bool)

(declare-fun res!1750798 () Bool)

(assert (=> d!1252797 (=> res!1750798 e!2645055)))

(assert (=> d!1252797 (= res!1750798 (not ((_ is Node!14239) lt!1510136)))))

(assert (=> d!1252797 (= (isBalanced!3798 lt!1510136) e!2645055)))

(assert (= (and d!1252797 (not res!1750798)) b!4259013))

(assert (= (and b!4259013 res!1750795) b!4259011))

(assert (= (and b!4259011 res!1750793) b!4259010))

(assert (= (and b!4259010 res!1750797) b!4259012))

(assert (= (and b!4259012 res!1750796) b!4259015))

(assert (= (and b!4259015 res!1750794) b!4259014))

(declare-fun m!4845055 () Bool)

(assert (=> b!4259014 m!4845055))

(declare-fun m!4845057 () Bool)

(assert (=> b!4259015 m!4845057))

(declare-fun m!4845059 () Bool)

(assert (=> b!4259013 m!4845059))

(declare-fun m!4845061 () Bool)

(assert (=> b!4259013 m!4845061))

(assert (=> b!4259011 m!4845059))

(assert (=> b!4259011 m!4845061))

(declare-fun m!4845063 () Bool)

(assert (=> b!4259010 m!4845063))

(declare-fun m!4845065 () Bool)

(assert (=> b!4259012 m!4845065))

(assert (=> b!4258591 d!1252797))

(declare-fun d!1252799 () Bool)

(assert (=> d!1252799 (= (inv!62109 (xs!17544 (left!35012 (left!35012 t!4386)))) (<= (size!34581 (innerList!14298 (xs!17544 (left!35012 (left!35012 t!4386))))) 2147483647))))

(declare-fun bs!598939 () Bool)

(assert (= bs!598939 d!1252799))

(declare-fun m!4845067 () Bool)

(assert (=> bs!598939 m!4845067))

(assert (=> b!4258734 d!1252799))

(declare-fun d!1252801 () Bool)

(declare-fun lt!1510216 () Bool)

(assert (=> d!1252801 (= lt!1510216 (isEmpty!27972 (list!17050 (right!35343 lt!1510093))))))

(assert (=> d!1252801 (= lt!1510216 (= (size!34587 (right!35343 lt!1510093)) 0))))

(assert (=> d!1252801 (= (isEmpty!27969 (right!35343 lt!1510093)) lt!1510216)))

(declare-fun bs!598940 () Bool)

(assert (= bs!598940 d!1252801))

(assert (=> bs!598940 m!4844141))

(assert (=> bs!598940 m!4844141))

(declare-fun m!4845069 () Bool)

(assert (=> bs!598940 m!4845069))

(declare-fun m!4845071 () Bool)

(assert (=> bs!598940 m!4845071))

(assert (=> b!4258630 d!1252801))

(declare-fun d!1252803 () Bool)

(assert (=> d!1252803 (= (inv!62109 (xs!17544 (right!35342 (right!35342 t!4386)))) (<= (size!34581 (innerList!14298 (xs!17544 (right!35342 (right!35342 t!4386))))) 2147483647))))

(declare-fun bs!598941 () Bool)

(assert (= bs!598941 d!1252803))

(declare-fun m!4845073 () Bool)

(assert (=> bs!598941 m!4845073))

(assert (=> b!4258743 d!1252803))

(declare-fun d!1252805 () Bool)

(declare-fun c!723185 () Bool)

(assert (=> d!1252805 (= c!723185 ((_ is Nil!47231) lt!1510152))))

(declare-fun e!2645056 () (InoxSet B!2813))

(assert (=> d!1252805 (= (content!7436 lt!1510152) e!2645056)))

(declare-fun b!4259016 () Bool)

(assert (=> b!4259016 (= e!2645056 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4259017 () Bool)

(assert (=> b!4259017 (= e!2645056 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 lt!1510152) true) (content!7436 (t!353022 lt!1510152))))))

(assert (= (and d!1252805 c!723185) b!4259016))

(assert (= (and d!1252805 (not c!723185)) b!4259017))

(declare-fun m!4845075 () Bool)

(assert (=> b!4259017 m!4845075))

(declare-fun m!4845077 () Bool)

(assert (=> b!4259017 m!4845077))

(assert (=> d!1252553 d!1252805))

(declare-fun d!1252807 () Bool)

(declare-fun c!723186 () Bool)

(assert (=> d!1252807 (= c!723186 ((_ is Nil!47231) (t!353022 (map!9657 lt!1510052 f!428))))))

(declare-fun e!2645057 () (InoxSet B!2813))

(assert (=> d!1252807 (= (content!7436 (t!353022 (map!9657 lt!1510052 f!428))) e!2645057)))

(declare-fun b!4259018 () Bool)

(assert (=> b!4259018 (= e!2645057 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4259019 () Bool)

(assert (=> b!4259019 (= e!2645057 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 (t!353022 (map!9657 lt!1510052 f!428))) true) (content!7436 (t!353022 (t!353022 (map!9657 lt!1510052 f!428))))))))

(assert (= (and d!1252807 c!723186) b!4259018))

(assert (= (and d!1252807 (not c!723186)) b!4259019))

(declare-fun m!4845079 () Bool)

(assert (=> b!4259019 m!4845079))

(declare-fun m!4845081 () Bool)

(assert (=> b!4259019 m!4845081))

(assert (=> d!1252553 d!1252807))

(assert (=> d!1252553 d!1252507))

(declare-fun d!1252809 () Bool)

(declare-fun lt!1510217 () Bool)

(assert (=> d!1252809 (= lt!1510217 (isEmpty!27968 (list!17046 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252809 (= lt!1510217 (= (size!34585 (right!35342 (right!35342 t!4386))) 0))))

(assert (=> d!1252809 (= (isEmpty!27967 (right!35342 (right!35342 t!4386))) lt!1510217)))

(declare-fun bs!598942 () Bool)

(assert (= bs!598942 d!1252809))

(assert (=> bs!598942 m!4843797))

(assert (=> bs!598942 m!4843797))

(declare-fun m!4845083 () Bool)

(assert (=> bs!598942 m!4845083))

(assert (=> bs!598942 m!4844103))

(assert (=> b!4258484 d!1252809))

(declare-fun d!1252811 () Bool)

(declare-fun lt!1510220 () Int)

(assert (=> d!1252811 (= lt!1510220 (size!34581 (list!17046 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252811 (= lt!1510220 (ite ((_ is Empty!14238) (left!35012 (right!35342 t!4386))) 0 (ite ((_ is Leaf!22005) (left!35012 (right!35342 t!4386))) (csize!28707 (left!35012 (right!35342 t!4386))) (csize!28706 (left!35012 (right!35342 t!4386))))))))

(assert (=> d!1252811 (= (size!34585 (left!35012 (right!35342 t!4386))) lt!1510220)))

(declare-fun bs!598943 () Bool)

(assert (= bs!598943 d!1252811))

(assert (=> bs!598943 m!4843795))

(assert (=> bs!598943 m!4843795))

(assert (=> bs!598943 m!4844111))

(assert (=> d!1252437 d!1252811))

(declare-fun d!1252813 () Bool)

(declare-fun lt!1510221 () Int)

(assert (=> d!1252813 (= lt!1510221 (size!34581 (list!17046 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252813 (= lt!1510221 (ite ((_ is Empty!14238) (right!35342 (right!35342 t!4386))) 0 (ite ((_ is Leaf!22005) (right!35342 (right!35342 t!4386))) (csize!28707 (right!35342 (right!35342 t!4386))) (csize!28706 (right!35342 (right!35342 t!4386))))))))

(assert (=> d!1252813 (= (size!34585 (right!35342 (right!35342 t!4386))) lt!1510221)))

(declare-fun bs!598944 () Bool)

(assert (= bs!598944 d!1252813))

(assert (=> bs!598944 m!4843797))

(assert (=> bs!598944 m!4843797))

(assert (=> bs!598944 m!4844113))

(assert (=> d!1252437 d!1252813))

(assert (=> d!1252491 d!1252745))

(declare-fun d!1252815 () Bool)

(declare-fun lt!1510222 () List!47355)

(assert (=> d!1252815 (= (size!34584 lt!1510222) (size!34581 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))))))))

(declare-fun e!2645058 () List!47355)

(assert (=> d!1252815 (= lt!1510222 e!2645058)))

(declare-fun c!723187 () Bool)

(assert (=> d!1252815 (= c!723187 ((_ is Nil!47230) (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))))))))

(assert (=> d!1252815 (= (map!9657 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386)))) f!428) lt!1510222)))

(declare-fun b!4259020 () Bool)

(assert (=> b!4259020 (= e!2645058 Nil!47231)))

(declare-fun b!4259021 () Bool)

(assert (=> b!4259021 (= e!2645058 ($colon$colon!627 (map!9657 (t!353021 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))))) f!428) (dynLambda!20215 f!428 (h!52650 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))))))))))

(assert (= (and d!1252815 c!723187) b!4259020))

(assert (= (and d!1252815 (not c!723187)) b!4259021))

(declare-fun b_lambda!125533 () Bool)

(assert (=> (not b_lambda!125533) (not b!4259021)))

(declare-fun t!353086 () Bool)

(declare-fun tb!256809 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353086) tb!256809))

(declare-fun result!313350 () Bool)

(assert (=> tb!256809 (= result!313350 tp_is_empty!22857)))

(assert (=> b!4259021 t!353086))

(declare-fun b_and!337607 () Bool)

(assert (= b_and!337605 (and (=> t!353086 result!313350) b_and!337607)))

(declare-fun m!4845085 () Bool)

(assert (=> d!1252815 m!4845085))

(assert (=> d!1252815 m!4843865))

(declare-fun m!4845087 () Bool)

(assert (=> d!1252815 m!4845087))

(declare-fun m!4845089 () Bool)

(assert (=> b!4259021 m!4845089))

(declare-fun m!4845091 () Bool)

(assert (=> b!4259021 m!4845091))

(assert (=> b!4259021 m!4845089))

(assert (=> b!4259021 m!4845091))

(declare-fun m!4845093 () Bool)

(assert (=> b!4259021 m!4845093))

(assert (=> d!1252491 d!1252815))

(declare-fun d!1252817 () Bool)

(assert (=> d!1252817 (= (map!9657 (++!12023 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386)))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)))))

(assert (=> d!1252817 true))

(declare-fun _$82!92 () Unit!66127)

(assert (=> d!1252817 (= (choose!25978 (list!17046 (left!35012 (left!35012 t!4386))) (list!17046 (right!35342 (left!35012 t!4386))) f!428) _$82!92)))

(declare-fun bs!598945 () Bool)

(assert (= bs!598945 d!1252817))

(assert (=> bs!598945 m!4843861))

(assert (=> bs!598945 m!4844221))

(assert (=> bs!598945 m!4843865))

(assert (=> bs!598945 m!4844237))

(assert (=> bs!598945 m!4843863))

(assert (=> bs!598945 m!4844199))

(assert (=> bs!598945 m!4844221))

(assert (=> bs!598945 m!4844199))

(assert (=> bs!598945 m!4844227))

(assert (=> bs!598945 m!4843861))

(assert (=> bs!598945 m!4843863))

(assert (=> bs!598945 m!4843865))

(assert (=> d!1252491 d!1252817))

(assert (=> d!1252491 d!1252547))

(declare-fun b!4259023 () Bool)

(declare-fun e!2645059 () List!47355)

(assert (=> b!4259023 (= e!2645059 (Cons!47231 (h!52651 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)) (++!12024 (t!353022 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)) (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428))))))

(declare-fun b!4259025 () Bool)

(declare-fun e!2645060 () Bool)

(declare-fun lt!1510223 () List!47355)

(assert (=> b!4259025 (= e!2645060 (or (not (= (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428) Nil!47231)) (= lt!1510223 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428))))))

(declare-fun b!4259022 () Bool)

(assert (=> b!4259022 (= e!2645059 (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428))))

(declare-fun b!4259024 () Bool)

(declare-fun res!1750800 () Bool)

(assert (=> b!4259024 (=> (not res!1750800) (not e!2645060))))

(assert (=> b!4259024 (= res!1750800 (= (size!34584 lt!1510223) (+ (size!34584 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)) (size!34584 (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)))))))

(declare-fun d!1252819 () Bool)

(assert (=> d!1252819 e!2645060))

(declare-fun res!1750799 () Bool)

(assert (=> d!1252819 (=> (not res!1750799) (not e!2645060))))

(assert (=> d!1252819 (= res!1750799 (= (content!7436 lt!1510223) ((_ map or) (content!7436 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)) (content!7436 (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)))))))

(assert (=> d!1252819 (= lt!1510223 e!2645059)))

(declare-fun c!723188 () Bool)

(assert (=> d!1252819 (= c!723188 ((_ is Nil!47231) (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428)))))

(assert (=> d!1252819 (= (++!12024 (map!9657 (list!17046 (left!35012 (left!35012 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428)) lt!1510223)))

(assert (= (and d!1252819 c!723188) b!4259022))

(assert (= (and d!1252819 (not c!723188)) b!4259023))

(assert (= (and d!1252819 res!1750799) b!4259024))

(assert (= (and b!4259024 res!1750800) b!4259025))

(assert (=> b!4259023 m!4844199))

(declare-fun m!4845095 () Bool)

(assert (=> b!4259023 m!4845095))

(declare-fun m!4845097 () Bool)

(assert (=> b!4259024 m!4845097))

(assert (=> b!4259024 m!4844221))

(declare-fun m!4845099 () Bool)

(assert (=> b!4259024 m!4845099))

(assert (=> b!4259024 m!4844199))

(declare-fun m!4845101 () Bool)

(assert (=> b!4259024 m!4845101))

(declare-fun m!4845103 () Bool)

(assert (=> d!1252819 m!4845103))

(assert (=> d!1252819 m!4844221))

(declare-fun m!4845105 () Bool)

(assert (=> d!1252819 m!4845105))

(assert (=> d!1252819 m!4844199))

(declare-fun m!4845107 () Bool)

(assert (=> d!1252819 m!4845107))

(assert (=> d!1252491 d!1252819))

(declare-fun d!1252821 () Bool)

(declare-fun lt!1510224 () List!47355)

(assert (=> d!1252821 (= (size!34584 lt!1510224) (size!34581 (list!17046 (right!35342 (left!35012 t!4386)))))))

(declare-fun e!2645061 () List!47355)

(assert (=> d!1252821 (= lt!1510224 e!2645061)))

(declare-fun c!723189 () Bool)

(assert (=> d!1252821 (= c!723189 ((_ is Nil!47230) (list!17046 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252821 (= (map!9657 (list!17046 (right!35342 (left!35012 t!4386))) f!428) lt!1510224)))

(declare-fun b!4259026 () Bool)

(assert (=> b!4259026 (= e!2645061 Nil!47231)))

(declare-fun b!4259027 () Bool)

(assert (=> b!4259027 (= e!2645061 ($colon$colon!627 (map!9657 (t!353021 (list!17046 (right!35342 (left!35012 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(assert (= (and d!1252821 c!723189) b!4259026))

(assert (= (and d!1252821 (not c!723189)) b!4259027))

(declare-fun b_lambda!125535 () Bool)

(assert (=> (not b_lambda!125535) (not b!4259027)))

(declare-fun t!353088 () Bool)

(declare-fun tb!256811 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353088) tb!256811))

(declare-fun result!313352 () Bool)

(assert (=> tb!256811 (= result!313352 tp_is_empty!22857)))

(assert (=> b!4259027 t!353088))

(declare-fun b_and!337609 () Bool)

(assert (= b_and!337607 (and (=> t!353088 result!313352) b_and!337609)))

(declare-fun m!4845109 () Bool)

(assert (=> d!1252821 m!4845109))

(assert (=> d!1252821 m!4843863))

(assert (=> d!1252821 m!4844413))

(declare-fun m!4845111 () Bool)

(assert (=> b!4259027 m!4845111))

(declare-fun m!4845113 () Bool)

(assert (=> b!4259027 m!4845113))

(assert (=> b!4259027 m!4845111))

(assert (=> b!4259027 m!4845113))

(declare-fun m!4845115 () Bool)

(assert (=> b!4259027 m!4845115))

(assert (=> d!1252491 d!1252821))

(assert (=> b!4258488 d!1252795))

(declare-fun d!1252823 () Bool)

(declare-fun lt!1510225 () Int)

(assert (=> d!1252823 (>= lt!1510225 0)))

(declare-fun e!2645062 () Int)

(assert (=> d!1252823 (= lt!1510225 e!2645062)))

(declare-fun c!723190 () Bool)

(assert (=> d!1252823 (= c!723190 ((_ is Nil!47231) lt!1510131))))

(assert (=> d!1252823 (= (size!34584 lt!1510131) lt!1510225)))

(declare-fun b!4259028 () Bool)

(assert (=> b!4259028 (= e!2645062 0)))

(declare-fun b!4259029 () Bool)

(assert (=> b!4259029 (= e!2645062 (+ 1 (size!34584 (t!353022 lt!1510131))))))

(assert (= (and d!1252823 c!723190) b!4259028))

(assert (= (and d!1252823 (not c!723190)) b!4259029))

(declare-fun m!4845117 () Bool)

(assert (=> b!4259029 m!4845117))

(assert (=> d!1252463 d!1252823))

(declare-fun d!1252825 () Bool)

(declare-fun lt!1510226 () Int)

(assert (=> d!1252825 (>= lt!1510226 0)))

(declare-fun e!2645063 () Int)

(assert (=> d!1252825 (= lt!1510226 e!2645063)))

(declare-fun c!723191 () Bool)

(assert (=> d!1252825 (= c!723191 ((_ is Nil!47230) (list!17046 (left!35012 t!4386))))))

(assert (=> d!1252825 (= (size!34581 (list!17046 (left!35012 t!4386))) lt!1510226)))

(declare-fun b!4259030 () Bool)

(assert (=> b!4259030 (= e!2645063 0)))

(declare-fun b!4259031 () Bool)

(assert (=> b!4259031 (= e!2645063 (+ 1 (size!34581 (t!353021 (list!17046 (left!35012 t!4386))))))))

(assert (= (and d!1252825 c!723191) b!4259030))

(assert (= (and d!1252825 (not c!723191)) b!4259031))

(assert (=> b!4259031 m!4844969))

(assert (=> d!1252463 d!1252825))

(declare-fun d!1252827 () Bool)

(assert (=> d!1252827 (= (list!17051 (xs!17545 lt!1510095)) (innerList!14299 (xs!17545 lt!1510095)))))

(assert (=> b!4258644 d!1252827))

(declare-fun d!1252829 () Bool)

(assert (=> d!1252829 (= (max!0 (height!1862 (left!35012 t!4386)) (height!1862 (right!35342 t!4386))) (ite (< (height!1862 (left!35012 t!4386)) (height!1862 (right!35342 t!4386))) (height!1862 (right!35342 t!4386)) (height!1862 (left!35012 t!4386))))))

(assert (=> b!4258561 d!1252829))

(assert (=> b!4258561 d!1252409))

(assert (=> b!4258561 d!1252411))

(assert (=> d!1252415 d!1252705))

(assert (=> d!1252415 d!1252707))

(declare-fun d!1252831 () Bool)

(assert (=> d!1252831 (= (isEmpty!27968 (list!17046 (left!35012 t!4386))) ((_ is Nil!47230) (list!17046 (left!35012 t!4386))))))

(assert (=> d!1252393 d!1252831))

(assert (=> d!1252393 d!1252375))

(declare-fun d!1252833 () Bool)

(declare-fun lt!1510227 () Int)

(assert (=> d!1252833 (= lt!1510227 (size!34581 (list!17046 (left!35012 t!4386))))))

(assert (=> d!1252833 (= lt!1510227 (ite ((_ is Empty!14238) (left!35012 t!4386)) 0 (ite ((_ is Leaf!22005) (left!35012 t!4386)) (csize!28707 (left!35012 t!4386)) (csize!28706 (left!35012 t!4386)))))))

(assert (=> d!1252833 (= (size!34585 (left!35012 t!4386)) lt!1510227)))

(declare-fun bs!598946 () Bool)

(assert (= bs!598946 d!1252833))

(assert (=> bs!598946 m!4843659))

(assert (=> bs!598946 m!4843659))

(assert (=> bs!598946 m!4844155))

(assert (=> d!1252393 d!1252833))

(declare-fun d!1252835 () Bool)

(declare-fun lt!1510228 () Int)

(assert (=> d!1252835 (>= lt!1510228 0)))

(declare-fun e!2645064 () Int)

(assert (=> d!1252835 (= lt!1510228 e!2645064)))

(declare-fun c!723192 () Bool)

(assert (=> d!1252835 (= c!723192 ((_ is Nil!47230) (t!353021 lt!1510064)))))

(assert (=> d!1252835 (= (size!34581 (t!353021 lt!1510064)) lt!1510228)))

(declare-fun b!4259032 () Bool)

(assert (=> b!4259032 (= e!2645064 0)))

(declare-fun b!4259033 () Bool)

(assert (=> b!4259033 (= e!2645064 (+ 1 (size!34581 (t!353021 (t!353021 lt!1510064)))))))

(assert (= (and d!1252835 c!723192) b!4259032))

(assert (= (and d!1252835 (not c!723192)) b!4259033))

(declare-fun m!4845119 () Bool)

(assert (=> b!4259033 m!4845119))

(assert (=> b!4258711 d!1252835))

(declare-fun b!4259034 () Bool)

(declare-fun res!1750805 () Bool)

(declare-fun e!2645065 () Bool)

(assert (=> b!4259034 (=> (not res!1750805) (not e!2645065))))

(assert (=> b!4259034 (= res!1750805 (isBalanced!3798 (left!35013 (right!35343 lt!1510095))))))

(declare-fun b!4259035 () Bool)

(declare-fun res!1750801 () Bool)

(assert (=> b!4259035 (=> (not res!1750801) (not e!2645065))))

(assert (=> b!4259035 (= res!1750801 (<= (- (height!1863 (left!35013 (right!35343 lt!1510095))) (height!1863 (right!35343 (right!35343 lt!1510095)))) 1))))

(declare-fun b!4259036 () Bool)

(declare-fun res!1750804 () Bool)

(assert (=> b!4259036 (=> (not res!1750804) (not e!2645065))))

(assert (=> b!4259036 (= res!1750804 (isBalanced!3798 (right!35343 (right!35343 lt!1510095))))))

(declare-fun b!4259037 () Bool)

(declare-fun e!2645066 () Bool)

(assert (=> b!4259037 (= e!2645066 e!2645065)))

(declare-fun res!1750803 () Bool)

(assert (=> b!4259037 (=> (not res!1750803) (not e!2645065))))

(assert (=> b!4259037 (= res!1750803 (<= (- 1) (- (height!1863 (left!35013 (right!35343 lt!1510095))) (height!1863 (right!35343 (right!35343 lt!1510095))))))))

(declare-fun b!4259038 () Bool)

(assert (=> b!4259038 (= e!2645065 (not (isEmpty!27969 (right!35343 (right!35343 lt!1510095)))))))

(declare-fun b!4259039 () Bool)

(declare-fun res!1750802 () Bool)

(assert (=> b!4259039 (=> (not res!1750802) (not e!2645065))))

(assert (=> b!4259039 (= res!1750802 (not (isEmpty!27969 (left!35013 (right!35343 lt!1510095)))))))

(declare-fun d!1252837 () Bool)

(declare-fun res!1750806 () Bool)

(assert (=> d!1252837 (=> res!1750806 e!2645066)))

(assert (=> d!1252837 (= res!1750806 (not ((_ is Node!14239) (right!35343 lt!1510095))))))

(assert (=> d!1252837 (= (isBalanced!3798 (right!35343 lt!1510095)) e!2645066)))

(assert (= (and d!1252837 (not res!1750806)) b!4259037))

(assert (= (and b!4259037 res!1750803) b!4259035))

(assert (= (and b!4259035 res!1750801) b!4259034))

(assert (= (and b!4259034 res!1750805) b!4259036))

(assert (= (and b!4259036 res!1750804) b!4259039))

(assert (= (and b!4259039 res!1750802) b!4259038))

(declare-fun m!4845121 () Bool)

(assert (=> b!4259038 m!4845121))

(declare-fun m!4845123 () Bool)

(assert (=> b!4259039 m!4845123))

(declare-fun m!4845125 () Bool)

(assert (=> b!4259037 m!4845125))

(declare-fun m!4845127 () Bool)

(assert (=> b!4259037 m!4845127))

(assert (=> b!4259035 m!4845125))

(assert (=> b!4259035 m!4845127))

(declare-fun m!4845129 () Bool)

(assert (=> b!4259034 m!4845129))

(declare-fun m!4845131 () Bool)

(assert (=> b!4259036 m!4845131))

(assert (=> b!4258451 d!1252837))

(declare-fun b!4259040 () Bool)

(declare-fun res!1750811 () Bool)

(declare-fun e!2645067 () Bool)

(assert (=> b!4259040 (=> (not res!1750811) (not e!2645067))))

(assert (=> b!4259040 (= res!1750811 (isBalanced!3798 (left!35013 lt!1510134)))))

(declare-fun b!4259041 () Bool)

(declare-fun res!1750807 () Bool)

(assert (=> b!4259041 (=> (not res!1750807) (not e!2645067))))

(assert (=> b!4259041 (= res!1750807 (<= (- (height!1863 (left!35013 lt!1510134)) (height!1863 (right!35343 lt!1510134))) 1))))

(declare-fun b!4259042 () Bool)

(declare-fun res!1750810 () Bool)

(assert (=> b!4259042 (=> (not res!1750810) (not e!2645067))))

(assert (=> b!4259042 (= res!1750810 (isBalanced!3798 (right!35343 lt!1510134)))))

(declare-fun b!4259043 () Bool)

(declare-fun e!2645068 () Bool)

(assert (=> b!4259043 (= e!2645068 e!2645067)))

(declare-fun res!1750809 () Bool)

(assert (=> b!4259043 (=> (not res!1750809) (not e!2645067))))

(assert (=> b!4259043 (= res!1750809 (<= (- 1) (- (height!1863 (left!35013 lt!1510134)) (height!1863 (right!35343 lt!1510134)))))))

(declare-fun b!4259044 () Bool)

(assert (=> b!4259044 (= e!2645067 (not (isEmpty!27969 (right!35343 lt!1510134))))))

(declare-fun b!4259045 () Bool)

(declare-fun res!1750808 () Bool)

(assert (=> b!4259045 (=> (not res!1750808) (not e!2645067))))

(assert (=> b!4259045 (= res!1750808 (not (isEmpty!27969 (left!35013 lt!1510134))))))

(declare-fun d!1252839 () Bool)

(declare-fun res!1750812 () Bool)

(assert (=> d!1252839 (=> res!1750812 e!2645068)))

(assert (=> d!1252839 (= res!1750812 (not ((_ is Node!14239) lt!1510134)))))

(assert (=> d!1252839 (= (isBalanced!3798 lt!1510134) e!2645068)))

(assert (= (and d!1252839 (not res!1750812)) b!4259043))

(assert (= (and b!4259043 res!1750809) b!4259041))

(assert (= (and b!4259041 res!1750807) b!4259040))

(assert (= (and b!4259040 res!1750811) b!4259042))

(assert (= (and b!4259042 res!1750810) b!4259045))

(assert (= (and b!4259045 res!1750808) b!4259044))

(declare-fun m!4845133 () Bool)

(assert (=> b!4259044 m!4845133))

(declare-fun m!4845135 () Bool)

(assert (=> b!4259045 m!4845135))

(declare-fun m!4845137 () Bool)

(assert (=> b!4259043 m!4845137))

(declare-fun m!4845139 () Bool)

(assert (=> b!4259043 m!4845139))

(assert (=> b!4259041 m!4845137))

(assert (=> b!4259041 m!4845139))

(declare-fun m!4845141 () Bool)

(assert (=> b!4259040 m!4845141))

(declare-fun m!4845143 () Bool)

(assert (=> b!4259042 m!4845143))

(assert (=> b!4258578 d!1252839))

(declare-fun d!1252841 () Bool)

(declare-fun lt!1510229 () Bool)

(assert (=> d!1252841 (= lt!1510229 (isEmpty!27968 (list!17046 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252841 (= lt!1510229 (= (size!34585 (left!35012 (left!35012 t!4386))) 0))))

(assert (=> d!1252841 (= (isEmpty!27967 (left!35012 (left!35012 t!4386))) lt!1510229)))

(declare-fun bs!598947 () Bool)

(assert (= bs!598947 d!1252841))

(assert (=> bs!598947 m!4843861))

(assert (=> bs!598947 m!4843861))

(declare-fun m!4845145 () Bool)

(assert (=> bs!598947 m!4845145))

(assert (=> bs!598947 m!4844375))

(assert (=> b!4258470 d!1252841))

(declare-fun d!1252843 () Bool)

(declare-fun res!1750813 () Bool)

(declare-fun e!2645069 () Bool)

(assert (=> d!1252843 (=> (not res!1750813) (not e!2645069))))

(assert (=> d!1252843 (= res!1750813 (= (csize!28706 (left!35012 (left!35012 t!4386))) (+ (size!34585 (left!35012 (left!35012 (left!35012 t!4386)))) (size!34585 (right!35342 (left!35012 (left!35012 t!4386)))))))))

(assert (=> d!1252843 (= (inv!62113 (left!35012 (left!35012 t!4386))) e!2645069)))

(declare-fun b!4259046 () Bool)

(declare-fun res!1750814 () Bool)

(assert (=> b!4259046 (=> (not res!1750814) (not e!2645069))))

(assert (=> b!4259046 (= res!1750814 (and (not (= (left!35012 (left!35012 (left!35012 t!4386))) Empty!14238)) (not (= (right!35342 (left!35012 (left!35012 t!4386))) Empty!14238))))))

(declare-fun b!4259047 () Bool)

(declare-fun res!1750815 () Bool)

(assert (=> b!4259047 (=> (not res!1750815) (not e!2645069))))

(assert (=> b!4259047 (= res!1750815 (= (cheight!14449 (left!35012 (left!35012 t!4386))) (+ (max!0 (height!1862 (left!35012 (left!35012 (left!35012 t!4386)))) (height!1862 (right!35342 (left!35012 (left!35012 t!4386))))) 1)))))

(declare-fun b!4259048 () Bool)

(assert (=> b!4259048 (= e!2645069 (<= 0 (cheight!14449 (left!35012 (left!35012 t!4386)))))))

(assert (= (and d!1252843 res!1750813) b!4259046))

(assert (= (and b!4259046 res!1750814) b!4259047))

(assert (= (and b!4259047 res!1750815) b!4259048))

(declare-fun m!4845147 () Bool)

(assert (=> d!1252843 m!4845147))

(declare-fun m!4845149 () Bool)

(assert (=> d!1252843 m!4845149))

(assert (=> b!4259047 m!4844925))

(assert (=> b!4259047 m!4844927))

(assert (=> b!4259047 m!4844925))

(assert (=> b!4259047 m!4844927))

(declare-fun m!4845151 () Bool)

(assert (=> b!4259047 m!4845151))

(assert (=> b!4258473 d!1252843))

(declare-fun d!1252845 () Bool)

(assert (=> d!1252845 (= ($colon$colon!627 (map!9657 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (++!12023 lt!1510052 lt!1510051))))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (t!353021 (++!12023 lt!1510052 lt!1510051)))) (map!9657 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051))) f!428)))))

(assert (=> b!4258601 d!1252845))

(declare-fun d!1252847 () Bool)

(declare-fun lt!1510230 () List!47355)

(assert (=> d!1252847 (= (size!34584 lt!1510230) (size!34581 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051)))))))

(declare-fun e!2645070 () List!47355)

(assert (=> d!1252847 (= lt!1510230 e!2645070)))

(declare-fun c!723193 () Bool)

(assert (=> d!1252847 (= c!723193 ((_ is Nil!47230) (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051)))))))

(assert (=> d!1252847 (= (map!9657 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051))) f!428) lt!1510230)))

(declare-fun b!4259049 () Bool)

(assert (=> b!4259049 (= e!2645070 Nil!47231)))

(declare-fun b!4259050 () Bool)

(assert (=> b!4259050 (= e!2645070 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051)))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051)))))))))

(assert (= (and d!1252847 c!723193) b!4259049))

(assert (= (and d!1252847 (not c!723193)) b!4259050))

(declare-fun b_lambda!125537 () Bool)

(assert (=> (not b_lambda!125537) (not b!4259050)))

(declare-fun t!353090 () Bool)

(declare-fun tb!256813 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353090) tb!256813))

(declare-fun result!313354 () Bool)

(assert (=> tb!256813 (= result!313354 tp_is_empty!22857)))

(assert (=> b!4259050 t!353090))

(declare-fun b_and!337611 () Bool)

(assert (= b_and!337609 (and (=> t!353090 result!313354) b_and!337611)))

(declare-fun m!4845153 () Bool)

(assert (=> d!1252847 m!4845153))

(declare-fun m!4845155 () Bool)

(assert (=> d!1252847 m!4845155))

(declare-fun m!4845157 () Bool)

(assert (=> b!4259050 m!4845157))

(declare-fun m!4845159 () Bool)

(assert (=> b!4259050 m!4845159))

(assert (=> b!4259050 m!4845157))

(assert (=> b!4259050 m!4845159))

(declare-fun m!4845161 () Bool)

(assert (=> b!4259050 m!4845161))

(assert (=> b!4258601 d!1252847))

(declare-fun b!4259052 () Bool)

(declare-fun e!2645071 () List!47355)

(assert (=> b!4259052 (= e!2645071 (Cons!47231 (h!52651 (t!353022 (t!353022 (map!9657 lt!1510052 f!428)))) (++!12024 (t!353022 (t!353022 (t!353022 (map!9657 lt!1510052 f!428)))) (map!9657 lt!1510051 f!428))))))

(declare-fun b!4259054 () Bool)

(declare-fun e!2645072 () Bool)

(declare-fun lt!1510231 () List!47355)

(assert (=> b!4259054 (= e!2645072 (or (not (= (map!9657 lt!1510051 f!428) Nil!47231)) (= lt!1510231 (t!353022 (t!353022 (map!9657 lt!1510052 f!428))))))))

(declare-fun b!4259051 () Bool)

(assert (=> b!4259051 (= e!2645071 (map!9657 lt!1510051 f!428))))

(declare-fun b!4259053 () Bool)

(declare-fun res!1750817 () Bool)

(assert (=> b!4259053 (=> (not res!1750817) (not e!2645072))))

(assert (=> b!4259053 (= res!1750817 (= (size!34584 lt!1510231) (+ (size!34584 (t!353022 (t!353022 (map!9657 lt!1510052 f!428)))) (size!34584 (map!9657 lt!1510051 f!428)))))))

(declare-fun d!1252849 () Bool)

(assert (=> d!1252849 e!2645072))

(declare-fun res!1750816 () Bool)

(assert (=> d!1252849 (=> (not res!1750816) (not e!2645072))))

(assert (=> d!1252849 (= res!1750816 (= (content!7436 lt!1510231) ((_ map or) (content!7436 (t!353022 (t!353022 (map!9657 lt!1510052 f!428)))) (content!7436 (map!9657 lt!1510051 f!428)))))))

(assert (=> d!1252849 (= lt!1510231 e!2645071)))

(declare-fun c!723194 () Bool)

(assert (=> d!1252849 (= c!723194 ((_ is Nil!47231) (t!353022 (t!353022 (map!9657 lt!1510052 f!428)))))))

(assert (=> d!1252849 (= (++!12024 (t!353022 (t!353022 (map!9657 lt!1510052 f!428))) (map!9657 lt!1510051 f!428)) lt!1510231)))

(assert (= (and d!1252849 c!723194) b!4259051))

(assert (= (and d!1252849 (not c!723194)) b!4259052))

(assert (= (and d!1252849 res!1750816) b!4259053))

(assert (= (and b!4259053 res!1750817) b!4259054))

(assert (=> b!4259052 m!4843655))

(declare-fun m!4845163 () Bool)

(assert (=> b!4259052 m!4845163))

(declare-fun m!4845165 () Bool)

(assert (=> b!4259053 m!4845165))

(assert (=> b!4259053 m!4844895))

(assert (=> b!4259053 m!4843655))

(assert (=> b!4259053 m!4843809))

(declare-fun m!4845167 () Bool)

(assert (=> d!1252849 m!4845167))

(assert (=> d!1252849 m!4845081))

(assert (=> d!1252849 m!4843655))

(assert (=> d!1252849 m!4843815))

(assert (=> b!4258684 d!1252849))

(declare-fun b!4259058 () Bool)

(declare-fun e!2645074 () Bool)

(declare-fun lt!1510232 () List!47354)

(assert (=> b!4259058 (= e!2645074 (or (not (= (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) Nil!47230)) (= lt!1510232 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))))))))

(declare-fun b!4259057 () Bool)

(declare-fun res!1750818 () Bool)

(assert (=> b!4259057 (=> (not res!1750818) (not e!2645074))))

(assert (=> b!4259057 (= res!1750818 (= (size!34581 lt!1510232) (+ (size!34581 (list!17046 (left!35012 (right!35342 (left!35012 t!4386))))) (size!34581 (list!17046 (right!35342 (right!35342 (left!35012 t!4386))))))))))

(declare-fun b!4259055 () Bool)

(declare-fun e!2645073 () List!47354)

(assert (=> b!4259055 (= e!2645073 (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4259056 () Bool)

(assert (=> b!4259056 (= e!2645073 (Cons!47230 (h!52650 (list!17046 (left!35012 (right!35342 (left!35012 t!4386))))) (++!12023 (t!353021 (list!17046 (left!35012 (right!35342 (left!35012 t!4386))))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))))))))

(declare-fun d!1252851 () Bool)

(assert (=> d!1252851 e!2645074))

(declare-fun res!1750819 () Bool)

(assert (=> d!1252851 (=> (not res!1750819) (not e!2645074))))

(assert (=> d!1252851 (= res!1750819 (= (content!7434 lt!1510232) ((_ map or) (content!7434 (list!17046 (left!35012 (right!35342 (left!35012 t!4386))))) (content!7434 (list!17046 (right!35342 (right!35342 (left!35012 t!4386))))))))))

(assert (=> d!1252851 (= lt!1510232 e!2645073)))

(declare-fun c!723195 () Bool)

(assert (=> d!1252851 (= c!723195 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 (left!35012 t!4386))))))))

(assert (=> d!1252851 (= (++!12023 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386))))) lt!1510232)))

(assert (= (and d!1252851 c!723195) b!4259055))

(assert (= (and d!1252851 (not c!723195)) b!4259056))

(assert (= (and d!1252851 res!1750819) b!4259057))

(assert (= (and b!4259057 res!1750818) b!4259058))

(declare-fun m!4845169 () Bool)

(assert (=> b!4259057 m!4845169))

(assert (=> b!4259057 m!4844189))

(declare-fun m!4845171 () Bool)

(assert (=> b!4259057 m!4845171))

(assert (=> b!4259057 m!4844187))

(declare-fun m!4845173 () Bool)

(assert (=> b!4259057 m!4845173))

(assert (=> b!4259056 m!4844187))

(declare-fun m!4845175 () Bool)

(assert (=> b!4259056 m!4845175))

(declare-fun m!4845177 () Bool)

(assert (=> d!1252851 m!4845177))

(assert (=> d!1252851 m!4844189))

(declare-fun m!4845179 () Bool)

(assert (=> d!1252851 m!4845179))

(assert (=> d!1252851 m!4844187))

(declare-fun m!4845181 () Bool)

(assert (=> d!1252851 m!4845181))

(assert (=> b!4258599 d!1252851))

(declare-fun b!4259059 () Bool)

(declare-fun e!2645075 () List!47354)

(assert (=> b!4259059 (= e!2645075 Nil!47230)))

(declare-fun b!4259061 () Bool)

(declare-fun e!2645076 () List!47354)

(assert (=> b!4259061 (= e!2645076 (list!17048 (xs!17544 (left!35012 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252853 () Bool)

(declare-fun c!723196 () Bool)

(assert (=> d!1252853 (= c!723196 ((_ is Empty!14238) (left!35012 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252853 (= (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) e!2645075)))

(declare-fun b!4259060 () Bool)

(assert (=> b!4259060 (= e!2645075 e!2645076)))

(declare-fun c!723197 () Bool)

(assert (=> b!4259060 (= c!723197 ((_ is Leaf!22005) (left!35012 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4259062 () Bool)

(assert (=> b!4259062 (= e!2645076 (++!12023 (list!17046 (left!35012 (left!35012 (right!35342 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 (right!35342 (left!35012 t!4386)))))))))

(assert (= (and d!1252853 c!723196) b!4259059))

(assert (= (and d!1252853 (not c!723196)) b!4259060))

(assert (= (and b!4259060 c!723197) b!4259061))

(assert (= (and b!4259060 (not c!723197)) b!4259062))

(declare-fun m!4845183 () Bool)

(assert (=> b!4259061 m!4845183))

(declare-fun m!4845185 () Bool)

(assert (=> b!4259062 m!4845185))

(declare-fun m!4845187 () Bool)

(assert (=> b!4259062 m!4845187))

(assert (=> b!4259062 m!4845185))

(assert (=> b!4259062 m!4845187))

(declare-fun m!4845189 () Bool)

(assert (=> b!4259062 m!4845189))

(assert (=> b!4258599 d!1252853))

(declare-fun b!4259063 () Bool)

(declare-fun e!2645077 () List!47354)

(assert (=> b!4259063 (= e!2645077 Nil!47230)))

(declare-fun b!4259065 () Bool)

(declare-fun e!2645078 () List!47354)

(assert (=> b!4259065 (= e!2645078 (list!17048 (xs!17544 (right!35342 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252855 () Bool)

(declare-fun c!723198 () Bool)

(assert (=> d!1252855 (= c!723198 ((_ is Empty!14238) (right!35342 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252855 (= (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) e!2645077)))

(declare-fun b!4259064 () Bool)

(assert (=> b!4259064 (= e!2645077 e!2645078)))

(declare-fun c!723199 () Bool)

(assert (=> b!4259064 (= c!723199 ((_ is Leaf!22005) (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4259066 () Bool)

(assert (=> b!4259066 (= e!2645078 (++!12023 (list!17046 (left!35012 (right!35342 (right!35342 (left!35012 t!4386))))) (list!17046 (right!35342 (right!35342 (right!35342 (left!35012 t!4386)))))))))

(assert (= (and d!1252855 c!723198) b!4259063))

(assert (= (and d!1252855 (not c!723198)) b!4259064))

(assert (= (and b!4259064 c!723199) b!4259065))

(assert (= (and b!4259064 (not c!723199)) b!4259066))

(declare-fun m!4845191 () Bool)

(assert (=> b!4259065 m!4845191))

(declare-fun m!4845193 () Bool)

(assert (=> b!4259066 m!4845193))

(declare-fun m!4845195 () Bool)

(assert (=> b!4259066 m!4845195))

(assert (=> b!4259066 m!4845193))

(assert (=> b!4259066 m!4845195))

(declare-fun m!4845197 () Bool)

(assert (=> b!4259066 m!4845197))

(assert (=> b!4258599 d!1252855))

(declare-fun d!1252857 () Bool)

(assert (=> d!1252857 (= (isEmpty!27968 (list!17046 (right!35342 t!4386))) ((_ is Nil!47230) (list!17046 (right!35342 t!4386))))))

(assert (=> d!1252417 d!1252857))

(assert (=> d!1252417 d!1252349))

(declare-fun d!1252859 () Bool)

(declare-fun lt!1510233 () Int)

(assert (=> d!1252859 (= lt!1510233 (size!34581 (list!17046 (right!35342 t!4386))))))

(assert (=> d!1252859 (= lt!1510233 (ite ((_ is Empty!14238) (right!35342 t!4386)) 0 (ite ((_ is Leaf!22005) (right!35342 t!4386)) (csize!28707 (right!35342 t!4386)) (csize!28706 (right!35342 t!4386)))))))

(assert (=> d!1252859 (= (size!34585 (right!35342 t!4386)) lt!1510233)))

(declare-fun bs!598948 () Bool)

(assert (= bs!598948 d!1252859))

(assert (=> bs!598948 m!4843661))

(assert (=> bs!598948 m!4843661))

(assert (=> bs!598948 m!4844331))

(assert (=> d!1252417 d!1252859))

(declare-fun b!4259067 () Bool)

(declare-fun res!1750824 () Bool)

(declare-fun e!2645079 () Bool)

(assert (=> b!4259067 (=> (not res!1750824) (not e!2645079))))

(assert (=> b!4259067 (= res!1750824 (isBalanced!3798 (left!35013 lt!1510100)))))

(declare-fun b!4259068 () Bool)

(declare-fun res!1750820 () Bool)

(assert (=> b!4259068 (=> (not res!1750820) (not e!2645079))))

(assert (=> b!4259068 (= res!1750820 (<= (- (height!1863 (left!35013 lt!1510100)) (height!1863 (right!35343 lt!1510100))) 1))))

(declare-fun b!4259069 () Bool)

(declare-fun res!1750823 () Bool)

(assert (=> b!4259069 (=> (not res!1750823) (not e!2645079))))

(assert (=> b!4259069 (= res!1750823 (isBalanced!3798 (right!35343 lt!1510100)))))

(declare-fun b!4259070 () Bool)

(declare-fun e!2645080 () Bool)

(assert (=> b!4259070 (= e!2645080 e!2645079)))

(declare-fun res!1750822 () Bool)

(assert (=> b!4259070 (=> (not res!1750822) (not e!2645079))))

(assert (=> b!4259070 (= res!1750822 (<= (- 1) (- (height!1863 (left!35013 lt!1510100)) (height!1863 (right!35343 lt!1510100)))))))

(declare-fun b!4259071 () Bool)

(assert (=> b!4259071 (= e!2645079 (not (isEmpty!27969 (right!35343 lt!1510100))))))

(declare-fun b!4259072 () Bool)

(declare-fun res!1750821 () Bool)

(assert (=> b!4259072 (=> (not res!1750821) (not e!2645079))))

(assert (=> b!4259072 (= res!1750821 (not (isEmpty!27969 (left!35013 lt!1510100))))))

(declare-fun d!1252861 () Bool)

(declare-fun res!1750825 () Bool)

(assert (=> d!1252861 (=> res!1750825 e!2645080)))

(assert (=> d!1252861 (= res!1750825 (not ((_ is Node!14239) lt!1510100)))))

(assert (=> d!1252861 (= (isBalanced!3798 lt!1510100) e!2645080)))

(assert (= (and d!1252861 (not res!1750825)) b!4259070))

(assert (= (and b!4259070 res!1750822) b!4259068))

(assert (= (and b!4259068 res!1750820) b!4259067))

(assert (= (and b!4259067 res!1750824) b!4259069))

(assert (= (and b!4259069 res!1750823) b!4259072))

(assert (= (and b!4259072 res!1750821) b!4259071))

(declare-fun m!4845199 () Bool)

(assert (=> b!4259071 m!4845199))

(declare-fun m!4845201 () Bool)

(assert (=> b!4259072 m!4845201))

(declare-fun m!4845203 () Bool)

(assert (=> b!4259070 m!4845203))

(declare-fun m!4845205 () Bool)

(assert (=> b!4259070 m!4845205))

(assert (=> b!4259068 m!4845203))

(assert (=> b!4259068 m!4845205))

(declare-fun m!4845207 () Bool)

(assert (=> b!4259067 m!4845207))

(declare-fun m!4845209 () Bool)

(assert (=> b!4259069 m!4845209))

(assert (=> b!4258410 d!1252861))

(declare-fun d!1252863 () Bool)

(declare-fun lt!1510234 () Int)

(assert (=> d!1252863 (>= lt!1510234 0)))

(declare-fun e!2645081 () Int)

(assert (=> d!1252863 (= lt!1510234 e!2645081)))

(declare-fun c!723200 () Bool)

(assert (=> d!1252863 (= c!723200 ((_ is Nil!47230) (list!17048 (xs!17544 (right!35342 t!4386)))))))

(assert (=> d!1252863 (= (size!34581 (list!17048 (xs!17544 (right!35342 t!4386)))) lt!1510234)))

(declare-fun b!4259073 () Bool)

(assert (=> b!4259073 (= e!2645081 0)))

(declare-fun b!4259074 () Bool)

(assert (=> b!4259074 (= e!2645081 (+ 1 (size!34581 (t!353021 (list!17048 (xs!17544 (right!35342 t!4386)))))))))

(assert (= (and d!1252863 c!723200) b!4259073))

(assert (= (and d!1252863 (not c!723200)) b!4259074))

(declare-fun m!4845211 () Bool)

(assert (=> b!4259074 m!4845211))

(assert (=> b!4258465 d!1252863))

(assert (=> b!4258465 d!1252391))

(declare-fun d!1252865 () Bool)

(assert (=> d!1252865 (= (max!0 (height!1862 (left!35012 (left!35012 t!4386))) (height!1862 (right!35342 (left!35012 t!4386)))) (ite (< (height!1862 (left!35012 (left!35012 t!4386))) (height!1862 (right!35342 (left!35012 t!4386)))) (height!1862 (right!35342 (left!35012 t!4386))) (height!1862 (left!35012 (left!35012 t!4386)))))))

(assert (=> b!4258660 d!1252865))

(assert (=> b!4258660 d!1252717))

(assert (=> b!4258660 d!1252719))

(declare-fun b!4259075 () Bool)

(declare-fun res!1750830 () Bool)

(declare-fun e!2645082 () Bool)

(assert (=> b!4259075 (=> (not res!1750830) (not e!2645082))))

(assert (=> b!4259075 (= res!1750830 (isBalanced!3798 (left!35013 lt!1510102)))))

(declare-fun b!4259076 () Bool)

(declare-fun res!1750826 () Bool)

(assert (=> b!4259076 (=> (not res!1750826) (not e!2645082))))

(assert (=> b!4259076 (= res!1750826 (<= (- (height!1863 (left!35013 lt!1510102)) (height!1863 (right!35343 lt!1510102))) 1))))

(declare-fun b!4259077 () Bool)

(declare-fun res!1750829 () Bool)

(assert (=> b!4259077 (=> (not res!1750829) (not e!2645082))))

(assert (=> b!4259077 (= res!1750829 (isBalanced!3798 (right!35343 lt!1510102)))))

(declare-fun b!4259078 () Bool)

(declare-fun e!2645083 () Bool)

(assert (=> b!4259078 (= e!2645083 e!2645082)))

(declare-fun res!1750828 () Bool)

(assert (=> b!4259078 (=> (not res!1750828) (not e!2645082))))

(assert (=> b!4259078 (= res!1750828 (<= (- 1) (- (height!1863 (left!35013 lt!1510102)) (height!1863 (right!35343 lt!1510102)))))))

(declare-fun b!4259079 () Bool)

(assert (=> b!4259079 (= e!2645082 (not (isEmpty!27969 (right!35343 lt!1510102))))))

(declare-fun b!4259080 () Bool)

(declare-fun res!1750827 () Bool)

(assert (=> b!4259080 (=> (not res!1750827) (not e!2645082))))

(assert (=> b!4259080 (= res!1750827 (not (isEmpty!27969 (left!35013 lt!1510102))))))

(declare-fun d!1252867 () Bool)

(declare-fun res!1750831 () Bool)

(assert (=> d!1252867 (=> res!1750831 e!2645083)))

(assert (=> d!1252867 (= res!1750831 (not ((_ is Node!14239) lt!1510102)))))

(assert (=> d!1252867 (= (isBalanced!3798 lt!1510102) e!2645083)))

(assert (= (and d!1252867 (not res!1750831)) b!4259078))

(assert (= (and b!4259078 res!1750828) b!4259076))

(assert (= (and b!4259076 res!1750826) b!4259075))

(assert (= (and b!4259075 res!1750830) b!4259077))

(assert (= (and b!4259077 res!1750829) b!4259080))

(assert (= (and b!4259080 res!1750827) b!4259079))

(declare-fun m!4845213 () Bool)

(assert (=> b!4259079 m!4845213))

(declare-fun m!4845215 () Bool)

(assert (=> b!4259080 m!4845215))

(declare-fun m!4845217 () Bool)

(assert (=> b!4259078 m!4845217))

(declare-fun m!4845219 () Bool)

(assert (=> b!4259078 m!4845219))

(assert (=> b!4259076 m!4845217))

(assert (=> b!4259076 m!4845219))

(declare-fun m!4845221 () Bool)

(assert (=> b!4259075 m!4845221))

(declare-fun m!4845223 () Bool)

(assert (=> b!4259077 m!4845223))

(assert (=> b!4258423 d!1252867))

(assert (=> b!4258396 d!1252423))

(assert (=> b!4258396 d!1252425))

(assert (=> d!1252419 d!1252863))

(assert (=> d!1252419 d!1252391))

(declare-fun d!1252869 () Bool)

(declare-fun c!723201 () Bool)

(assert (=> d!1252869 (= c!723201 ((_ is Node!14238) (left!35012 (left!35012 (left!35012 t!4386)))))))

(declare-fun e!2645084 () Bool)

(assert (=> d!1252869 (= (inv!62108 (left!35012 (left!35012 (left!35012 t!4386)))) e!2645084)))

(declare-fun b!4259081 () Bool)

(assert (=> b!4259081 (= e!2645084 (inv!62113 (left!35012 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259082 () Bool)

(declare-fun e!2645085 () Bool)

(assert (=> b!4259082 (= e!2645084 e!2645085)))

(declare-fun res!1750832 () Bool)

(assert (=> b!4259082 (= res!1750832 (not ((_ is Leaf!22005) (left!35012 (left!35012 (left!35012 t!4386))))))))

(assert (=> b!4259082 (=> res!1750832 e!2645085)))

(declare-fun b!4259083 () Bool)

(assert (=> b!4259083 (= e!2645085 (inv!62114 (left!35012 (left!35012 (left!35012 t!4386)))))))

(assert (= (and d!1252869 c!723201) b!4259081))

(assert (= (and d!1252869 (not c!723201)) b!4259082))

(assert (= (and b!4259082 (not res!1750832)) b!4259083))

(declare-fun m!4845225 () Bool)

(assert (=> b!4259081 m!4845225))

(declare-fun m!4845227 () Bool)

(assert (=> b!4259083 m!4845227))

(assert (=> b!4258733 d!1252869))

(declare-fun d!1252871 () Bool)

(declare-fun c!723202 () Bool)

(assert (=> d!1252871 (= c!723202 ((_ is Node!14238) (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun e!2645086 () Bool)

(assert (=> d!1252871 (= (inv!62108 (right!35342 (left!35012 (left!35012 t!4386)))) e!2645086)))

(declare-fun b!4259084 () Bool)

(assert (=> b!4259084 (= e!2645086 (inv!62113 (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259085 () Bool)

(declare-fun e!2645087 () Bool)

(assert (=> b!4259085 (= e!2645086 e!2645087)))

(declare-fun res!1750833 () Bool)

(assert (=> b!4259085 (= res!1750833 (not ((_ is Leaf!22005) (right!35342 (left!35012 (left!35012 t!4386))))))))

(assert (=> b!4259085 (=> res!1750833 e!2645087)))

(declare-fun b!4259086 () Bool)

(assert (=> b!4259086 (= e!2645087 (inv!62114 (right!35342 (left!35012 (left!35012 t!4386)))))))

(assert (= (and d!1252871 c!723202) b!4259084))

(assert (= (and d!1252871 (not c!723202)) b!4259085))

(assert (= (and b!4259085 (not res!1750833)) b!4259086))

(declare-fun m!4845229 () Bool)

(assert (=> b!4259084 m!4845229))

(declare-fun m!4845231 () Bool)

(assert (=> b!4259086 m!4845231))

(assert (=> b!4258733 d!1252871))

(declare-fun d!1252873 () Bool)

(declare-fun c!723203 () Bool)

(assert (=> d!1252873 (= c!723203 ((_ is Node!14238) (left!35012 (right!35342 (right!35342 t!4386)))))))

(declare-fun e!2645088 () Bool)

(assert (=> d!1252873 (= (inv!62108 (left!35012 (right!35342 (right!35342 t!4386)))) e!2645088)))

(declare-fun b!4259087 () Bool)

(assert (=> b!4259087 (= e!2645088 (inv!62113 (left!35012 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259088 () Bool)

(declare-fun e!2645089 () Bool)

(assert (=> b!4259088 (= e!2645088 e!2645089)))

(declare-fun res!1750834 () Bool)

(assert (=> b!4259088 (= res!1750834 (not ((_ is Leaf!22005) (left!35012 (right!35342 (right!35342 t!4386))))))))

(assert (=> b!4259088 (=> res!1750834 e!2645089)))

(declare-fun b!4259089 () Bool)

(assert (=> b!4259089 (= e!2645089 (inv!62114 (left!35012 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252873 c!723203) b!4259087))

(assert (= (and d!1252873 (not c!723203)) b!4259088))

(assert (= (and b!4259088 (not res!1750834)) b!4259089))

(declare-fun m!4845233 () Bool)

(assert (=> b!4259087 m!4845233))

(declare-fun m!4845235 () Bool)

(assert (=> b!4259089 m!4845235))

(assert (=> b!4258742 d!1252873))

(declare-fun d!1252875 () Bool)

(declare-fun c!723204 () Bool)

(assert (=> d!1252875 (= c!723204 ((_ is Node!14238) (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun e!2645090 () Bool)

(assert (=> d!1252875 (= (inv!62108 (right!35342 (right!35342 (right!35342 t!4386)))) e!2645090)))

(declare-fun b!4259090 () Bool)

(assert (=> b!4259090 (= e!2645090 (inv!62113 (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259091 () Bool)

(declare-fun e!2645091 () Bool)

(assert (=> b!4259091 (= e!2645090 e!2645091)))

(declare-fun res!1750835 () Bool)

(assert (=> b!4259091 (= res!1750835 (not ((_ is Leaf!22005) (right!35342 (right!35342 (right!35342 t!4386))))))))

(assert (=> b!4259091 (=> res!1750835 e!2645091)))

(declare-fun b!4259092 () Bool)

(assert (=> b!4259092 (= e!2645091 (inv!62114 (right!35342 (right!35342 (right!35342 t!4386)))))))

(assert (= (and d!1252875 c!723204) b!4259090))

(assert (= (and d!1252875 (not c!723204)) b!4259091))

(assert (= (and b!4259091 (not res!1750835)) b!4259092))

(declare-fun m!4845237 () Bool)

(assert (=> b!4259090 m!4845237))

(declare-fun m!4845239 () Bool)

(assert (=> b!4259092 m!4845239))

(assert (=> b!4258742 d!1252875))

(assert (=> b!4258629 d!1252681))

(assert (=> b!4258629 d!1252683))

(declare-fun d!1252877 () Bool)

(declare-fun c!723205 () Bool)

(assert (=> d!1252877 (= c!723205 ((_ is Nil!47230) (t!353021 lt!1510064)))))

(declare-fun e!2645092 () (InoxSet T!79378))

(assert (=> d!1252877 (= (content!7434 (t!353021 lt!1510064)) e!2645092)))

(declare-fun b!4259093 () Bool)

(assert (=> b!4259093 (= e!2645092 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259094 () Bool)

(assert (=> b!4259094 (= e!2645092 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (t!353021 lt!1510064)) true) (content!7434 (t!353021 (t!353021 lt!1510064)))))))

(assert (= (and d!1252877 c!723205) b!4259093))

(assert (= (and d!1252877 (not c!723205)) b!4259094))

(declare-fun m!4845241 () Bool)

(assert (=> b!4259094 m!4845241))

(declare-fun m!4845243 () Bool)

(assert (=> b!4259094 m!4845243))

(assert (=> b!4258568 d!1252877))

(declare-fun d!1252879 () Bool)

(declare-fun res!1750836 () Bool)

(declare-fun e!2645093 () Bool)

(assert (=> d!1252879 (=> (not res!1750836) (not e!2645093))))

(assert (=> d!1252879 (= res!1750836 (<= (size!34581 (list!17048 (xs!17544 (right!35342 (right!35342 t!4386))))) 512))))

(assert (=> d!1252879 (= (inv!62114 (right!35342 (right!35342 t!4386))) e!2645093)))

(declare-fun b!4259095 () Bool)

(declare-fun res!1750837 () Bool)

(assert (=> b!4259095 (=> (not res!1750837) (not e!2645093))))

(assert (=> b!4259095 (= res!1750837 (= (csize!28707 (right!35342 (right!35342 t!4386))) (size!34581 (list!17048 (xs!17544 (right!35342 (right!35342 t!4386)))))))))

(declare-fun b!4259096 () Bool)

(assert (=> b!4259096 (= e!2645093 (and (> (csize!28707 (right!35342 (right!35342 t!4386))) 0) (<= (csize!28707 (right!35342 (right!35342 t!4386))) 512)))))

(assert (= (and d!1252879 res!1750836) b!4259095))

(assert (= (and b!4259095 res!1750837) b!4259096))

(assert (=> d!1252879 m!4843995))

(assert (=> d!1252879 m!4843995))

(declare-fun m!4845245 () Bool)

(assert (=> d!1252879 m!4845245))

(assert (=> b!4259095 m!4843995))

(assert (=> b!4259095 m!4843995))

(assert (=> b!4259095 m!4845245))

(assert (=> b!4258725 d!1252879))

(assert (=> b!4258483 d!1252695))

(assert (=> b!4258483 d!1252697))

(declare-fun b!4259097 () Bool)

(declare-fun e!2645094 () Conc!14239)

(assert (=> b!4259097 (= e!2645094 Empty!14239)))

(declare-fun b!4259098 () Bool)

(declare-fun e!2645096 () Conc!14239)

(assert (=> b!4259098 (= e!2645094 e!2645096)))

(declare-fun c!723206 () Bool)

(assert (=> b!4259098 (= c!723206 ((_ is Leaf!22005) (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259099 () Bool)

(declare-fun lt!1510236 () Unit!66127)

(assert (=> b!4259099 (= lt!1510236 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (right!35342 (left!35012 (left!35012 t!4386))))) f!428))))

(assert (=> b!4259099 (= e!2645096 (Node!14239 (map!9658 (left!35012 (right!35342 (left!35012 (left!35012 t!4386)))) f!428) (map!9658 (right!35342 (right!35342 (left!35012 (left!35012 t!4386)))) f!428) (csize!28706 (right!35342 (left!35012 (left!35012 t!4386)))) (cheight!14449 (right!35342 (left!35012 (left!35012 t!4386))))))))

(declare-fun d!1252881 () Bool)

(declare-fun e!2645095 () Bool)

(assert (=> d!1252881 e!2645095))

(declare-fun res!1750838 () Bool)

(assert (=> d!1252881 (=> (not res!1750838) (not e!2645095))))

(declare-fun lt!1510235 () Conc!14239)

(assert (=> d!1252881 (= res!1750838 (= (list!17050 lt!1510235) (map!9657 (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252881 (= lt!1510235 e!2645094)))

(declare-fun c!723207 () Bool)

(assert (=> d!1252881 (= c!723207 ((_ is Empty!14238) (right!35342 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252881 (isBalanced!3796 (right!35342 (left!35012 (left!35012 t!4386))))))

(assert (=> d!1252881 (= (map!9658 (right!35342 (left!35012 (left!35012 t!4386))) f!428) lt!1510235)))

(declare-fun b!4259100 () Bool)

(assert (=> b!4259100 (= e!2645095 (isBalanced!3798 lt!1510235))))

(declare-fun b!4259101 () Bool)

(assert (=> b!4259101 (= e!2645096 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (left!35012 (left!35012 t!4386)))) f!428) (csize!28707 (right!35342 (left!35012 (left!35012 t!4386))))))))

(assert (= (and d!1252881 c!723207) b!4259097))

(assert (= (and d!1252881 (not c!723207)) b!4259098))

(assert (= (and b!4259098 c!723206) b!4259101))

(assert (= (and b!4259098 (not c!723206)) b!4259099))

(assert (= (and d!1252881 res!1750838) b!4259100))

(declare-fun m!4845247 () Bool)

(assert (=> b!4259099 m!4845247))

(declare-fun m!4845249 () Bool)

(assert (=> b!4259099 m!4845249))

(assert (=> b!4259099 m!4845247))

(declare-fun m!4845251 () Bool)

(assert (=> b!4259099 m!4845251))

(declare-fun m!4845253 () Bool)

(assert (=> b!4259099 m!4845253))

(assert (=> b!4259099 m!4845249))

(declare-fun m!4845255 () Bool)

(assert (=> b!4259099 m!4845255))

(declare-fun m!4845257 () Bool)

(assert (=> d!1252881 m!4845257))

(assert (=> d!1252881 m!4844209))

(assert (=> d!1252881 m!4844209))

(declare-fun m!4845259 () Bool)

(assert (=> d!1252881 m!4845259))

(assert (=> d!1252881 m!4844933))

(declare-fun m!4845261 () Bool)

(assert (=> b!4259100 m!4845261))

(declare-fun m!4845263 () Bool)

(assert (=> b!4259101 m!4845263))

(assert (=> b!4258590 d!1252881))

(declare-fun b!4259102 () Bool)

(declare-fun e!2645097 () Conc!14239)

(assert (=> b!4259102 (= e!2645097 Empty!14239)))

(declare-fun b!4259103 () Bool)

(declare-fun e!2645099 () Conc!14239)

(assert (=> b!4259103 (= e!2645097 e!2645099)))

(declare-fun c!723208 () Bool)

(assert (=> b!4259103 (= c!723208 ((_ is Leaf!22005) (left!35012 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259104 () Bool)

(declare-fun lt!1510238 () Unit!66127)

(assert (=> b!4259104 (= lt!1510238 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 (left!35012 (left!35012 t!4386))))) f!428))))

(assert (=> b!4259104 (= e!2645099 (Node!14239 (map!9658 (left!35012 (left!35012 (left!35012 (left!35012 t!4386)))) f!428) (map!9658 (right!35342 (left!35012 (left!35012 (left!35012 t!4386)))) f!428) (csize!28706 (left!35012 (left!35012 (left!35012 t!4386)))) (cheight!14449 (left!35012 (left!35012 (left!35012 t!4386))))))))

(declare-fun d!1252883 () Bool)

(declare-fun e!2645098 () Bool)

(assert (=> d!1252883 e!2645098))

(declare-fun res!1750839 () Bool)

(assert (=> d!1252883 (=> (not res!1750839) (not e!2645098))))

(declare-fun lt!1510237 () Conc!14239)

(assert (=> d!1252883 (= res!1750839 (= (list!17050 lt!1510237) (map!9657 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252883 (= lt!1510237 e!2645097)))

(declare-fun c!723209 () Bool)

(assert (=> d!1252883 (= c!723209 ((_ is Empty!14238) (left!35012 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252883 (isBalanced!3796 (left!35012 (left!35012 (left!35012 t!4386))))))

(assert (=> d!1252883 (= (map!9658 (left!35012 (left!35012 (left!35012 t!4386))) f!428) lt!1510237)))

(declare-fun b!4259105 () Bool)

(assert (=> b!4259105 (= e!2645098 (isBalanced!3798 lt!1510237))))

(declare-fun b!4259106 () Bool)

(assert (=> b!4259106 (= e!2645099 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (left!35012 (left!35012 t!4386)))) f!428) (csize!28707 (left!35012 (left!35012 (left!35012 t!4386))))))))

(assert (= (and d!1252883 c!723209) b!4259102))

(assert (= (and d!1252883 (not c!723209)) b!4259103))

(assert (= (and b!4259103 c!723208) b!4259106))

(assert (= (and b!4259103 (not c!723208)) b!4259104))

(assert (= (and d!1252883 res!1750839) b!4259105))

(declare-fun m!4845265 () Bool)

(assert (=> b!4259104 m!4845265))

(declare-fun m!4845267 () Bool)

(assert (=> b!4259104 m!4845267))

(assert (=> b!4259104 m!4845265))

(declare-fun m!4845269 () Bool)

(assert (=> b!4259104 m!4845269))

(declare-fun m!4845271 () Bool)

(assert (=> b!4259104 m!4845271))

(assert (=> b!4259104 m!4845267))

(declare-fun m!4845273 () Bool)

(assert (=> b!4259104 m!4845273))

(declare-fun m!4845275 () Bool)

(assert (=> d!1252883 m!4845275))

(assert (=> d!1252883 m!4844207))

(assert (=> d!1252883 m!4844207))

(declare-fun m!4845277 () Bool)

(assert (=> d!1252883 m!4845277))

(assert (=> d!1252883 m!4844931))

(declare-fun m!4845279 () Bool)

(assert (=> b!4259105 m!4845279))

(declare-fun m!4845281 () Bool)

(assert (=> b!4259106 m!4845281))

(assert (=> b!4258590 d!1252883))

(declare-fun b!4259107 () Bool)

(declare-fun e!2645100 () List!47354)

(assert (=> b!4259107 (= e!2645100 Nil!47230)))

(declare-fun b!4259109 () Bool)

(declare-fun e!2645101 () List!47354)

(assert (=> b!4259109 (= e!2645101 (list!17048 (xs!17544 (right!35342 (left!35012 (left!35012 t!4386))))))))

(declare-fun d!1252885 () Bool)

(declare-fun c!723210 () Bool)

(assert (=> d!1252885 (= c!723210 ((_ is Empty!14238) (right!35342 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252885 (= (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) e!2645100)))

(declare-fun b!4259108 () Bool)

(assert (=> b!4259108 (= e!2645100 e!2645101)))

(declare-fun c!723211 () Bool)

(assert (=> b!4259108 (= c!723211 ((_ is Leaf!22005) (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259110 () Bool)

(assert (=> b!4259110 (= e!2645101 (++!12023 (list!17046 (left!35012 (right!35342 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (right!35342 (left!35012 (left!35012 t!4386)))))))))

(assert (= (and d!1252885 c!723210) b!4259107))

(assert (= (and d!1252885 (not c!723210)) b!4259108))

(assert (= (and b!4259108 c!723211) b!4259109))

(assert (= (and b!4259108 (not c!723211)) b!4259110))

(declare-fun m!4845283 () Bool)

(assert (=> b!4259109 m!4845283))

(assert (=> b!4259110 m!4845249))

(assert (=> b!4259110 m!4845247))

(assert (=> b!4259110 m!4845249))

(assert (=> b!4259110 m!4845247))

(declare-fun m!4845285 () Bool)

(assert (=> b!4259110 m!4845285))

(assert (=> b!4258590 d!1252885))

(declare-fun d!1252887 () Bool)

(assert (=> d!1252887 (= (map!9657 (++!12023 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386))))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) f!428) (map!9657 (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) f!428)))))

(declare-fun lt!1510239 () Unit!66127)

(assert (=> d!1252887 (= lt!1510239 (choose!25978 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) f!428))))

(assert (=> d!1252887 (= (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) f!428) lt!1510239)))

(declare-fun bs!598949 () Bool)

(assert (= bs!598949 d!1252887))

(assert (=> bs!598949 m!4845277))

(assert (=> bs!598949 m!4845259))

(declare-fun m!4845287 () Bool)

(assert (=> bs!598949 m!4845287))

(assert (=> bs!598949 m!4844207))

(assert (=> bs!598949 m!4844209))

(declare-fun m!4845289 () Bool)

(assert (=> bs!598949 m!4845289))

(assert (=> bs!598949 m!4844209))

(assert (=> bs!598949 m!4845259))

(assert (=> bs!598949 m!4844211))

(declare-fun m!4845291 () Bool)

(assert (=> bs!598949 m!4845291))

(assert (=> bs!598949 m!4844207))

(assert (=> bs!598949 m!4844209))

(assert (=> bs!598949 m!4844211))

(assert (=> bs!598949 m!4844207))

(assert (=> bs!598949 m!4845277))

(assert (=> b!4258590 d!1252887))

(declare-fun b!4259111 () Bool)

(declare-fun e!2645102 () List!47354)

(assert (=> b!4259111 (= e!2645102 Nil!47230)))

(declare-fun b!4259113 () Bool)

(declare-fun e!2645103 () List!47354)

(assert (=> b!4259113 (= e!2645103 (list!17048 (xs!17544 (left!35012 (left!35012 (left!35012 t!4386))))))))

(declare-fun d!1252889 () Bool)

(declare-fun c!723212 () Bool)

(assert (=> d!1252889 (= c!723212 ((_ is Empty!14238) (left!35012 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252889 (= (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) e!2645102)))

(declare-fun b!4259112 () Bool)

(assert (=> b!4259112 (= e!2645102 e!2645103)))

(declare-fun c!723213 () Bool)

(assert (=> b!4259112 (= c!723213 ((_ is Leaf!22005) (left!35012 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259114 () Bool)

(assert (=> b!4259114 (= e!2645103 (++!12023 (list!17046 (left!35012 (left!35012 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 (left!35012 (left!35012 t!4386)))))))))

(assert (= (and d!1252889 c!723212) b!4259111))

(assert (= (and d!1252889 (not c!723212)) b!4259112))

(assert (= (and b!4259112 c!723213) b!4259113))

(assert (= (and b!4259112 (not c!723213)) b!4259114))

(declare-fun m!4845293 () Bool)

(assert (=> b!4259113 m!4845293))

(assert (=> b!4259114 m!4845267))

(assert (=> b!4259114 m!4845265))

(assert (=> b!4259114 m!4845267))

(assert (=> b!4259114 m!4845265))

(declare-fun m!4845295 () Bool)

(assert (=> b!4259114 m!4845295))

(assert (=> b!4258590 d!1252889))

(declare-fun b!4259118 () Bool)

(declare-fun e!2645105 () Bool)

(declare-fun lt!1510240 () List!47354)

(assert (=> b!4259118 (= e!2645105 (or (not (= (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))) Nil!47230)) (= lt!1510240 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))))))))

(declare-fun b!4259117 () Bool)

(declare-fun res!1750840 () Bool)

(assert (=> b!4259117 (=> (not res!1750840) (not e!2645105))))

(assert (=> b!4259117 (= res!1750840 (= (size!34581 lt!1510240) (+ (size!34581 (list!17046 (left!35012 (left!35012 (left!35012 t!4386))))) (size!34581 (list!17046 (right!35342 (left!35012 (left!35012 t!4386))))))))))

(declare-fun b!4259115 () Bool)

(declare-fun e!2645104 () List!47354)

(assert (=> b!4259115 (= e!2645104 (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))))))

(declare-fun b!4259116 () Bool)

(assert (=> b!4259116 (= e!2645104 (Cons!47230 (h!52650 (list!17046 (left!35012 (left!35012 (left!35012 t!4386))))) (++!12023 (t!353021 (list!17046 (left!35012 (left!35012 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386)))))))))

(declare-fun d!1252891 () Bool)

(assert (=> d!1252891 e!2645105))

(declare-fun res!1750841 () Bool)

(assert (=> d!1252891 (=> (not res!1750841) (not e!2645105))))

(assert (=> d!1252891 (= res!1750841 (= (content!7434 lt!1510240) ((_ map or) (content!7434 (list!17046 (left!35012 (left!35012 (left!35012 t!4386))))) (content!7434 (list!17046 (right!35342 (left!35012 (left!35012 t!4386))))))))))

(assert (=> d!1252891 (= lt!1510240 e!2645104)))

(declare-fun c!723214 () Bool)

(assert (=> d!1252891 (= c!723214 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 (left!35012 t!4386))))))))

(assert (=> d!1252891 (= (++!12023 (list!17046 (left!35012 (left!35012 (left!35012 t!4386)))) (list!17046 (right!35342 (left!35012 (left!35012 t!4386))))) lt!1510240)))

(assert (= (and d!1252891 c!723214) b!4259115))

(assert (= (and d!1252891 (not c!723214)) b!4259116))

(assert (= (and d!1252891 res!1750841) b!4259117))

(assert (= (and b!4259117 res!1750840) b!4259118))

(declare-fun m!4845297 () Bool)

(assert (=> b!4259117 m!4845297))

(assert (=> b!4259117 m!4844207))

(declare-fun m!4845299 () Bool)

(assert (=> b!4259117 m!4845299))

(assert (=> b!4259117 m!4844209))

(declare-fun m!4845301 () Bool)

(assert (=> b!4259117 m!4845301))

(assert (=> b!4259116 m!4844209))

(declare-fun m!4845303 () Bool)

(assert (=> b!4259116 m!4845303))

(declare-fun m!4845305 () Bool)

(assert (=> d!1252891 m!4845305))

(assert (=> d!1252891 m!4844207))

(declare-fun m!4845307 () Bool)

(assert (=> d!1252891 m!4845307))

(assert (=> d!1252891 m!4844209))

(declare-fun m!4845309 () Bool)

(assert (=> d!1252891 m!4845309))

(assert (=> b!4258587 d!1252891))

(assert (=> b!4258587 d!1252889))

(assert (=> b!4258587 d!1252885))

(declare-fun d!1252893 () Bool)

(declare-fun lt!1510241 () Int)

(assert (=> d!1252893 (>= lt!1510241 0)))

(declare-fun e!2645106 () Int)

(assert (=> d!1252893 (= lt!1510241 e!2645106)))

(declare-fun c!723215 () Bool)

(assert (=> d!1252893 (= c!723215 ((_ is Nil!47230) (t!353021 (++!12023 lt!1510052 lt!1510051))))))

(assert (=> d!1252893 (= (size!34581 (t!353021 (++!12023 lt!1510052 lt!1510051))) lt!1510241)))

(declare-fun b!4259119 () Bool)

(assert (=> b!4259119 (= e!2645106 0)))

(declare-fun b!4259120 () Bool)

(assert (=> b!4259120 (= e!2645106 (+ 1 (size!34581 (t!353021 (t!353021 (++!12023 lt!1510052 lt!1510051))))))))

(assert (= (and d!1252893 c!723215) b!4259119))

(assert (= (and d!1252893 (not c!723215)) b!4259120))

(assert (=> b!4259120 m!4845155))

(assert (=> b!4258482 d!1252893))

(assert (=> b!4258487 d!1252781))

(declare-fun d!1252895 () Bool)

(declare-fun lt!1510242 () List!47355)

(assert (=> d!1252895 (= (size!34584 lt!1510242) (size!34581 (list!17048 (xs!17544 (left!35012 t!4386)))))))

(declare-fun e!2645107 () List!47355)

(assert (=> d!1252895 (= lt!1510242 e!2645107)))

(declare-fun c!723216 () Bool)

(assert (=> d!1252895 (= c!723216 ((_ is Nil!47230) (list!17048 (xs!17544 (left!35012 t!4386)))))))

(assert (=> d!1252895 (= (map!9657 (list!17048 (xs!17544 (left!35012 t!4386))) f!428) lt!1510242)))

(declare-fun b!4259121 () Bool)

(assert (=> b!4259121 (= e!2645107 Nil!47231)))

(declare-fun b!4259122 () Bool)

(assert (=> b!4259122 (= e!2645107 ($colon$colon!627 (map!9657 (t!353021 (list!17048 (xs!17544 (left!35012 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17048 (xs!17544 (left!35012 t!4386)))))))))

(assert (= (and d!1252895 c!723216) b!4259121))

(assert (= (and d!1252895 (not c!723216)) b!4259122))

(declare-fun b_lambda!125539 () Bool)

(assert (=> (not b_lambda!125539) (not b!4259122)))

(declare-fun t!353092 () Bool)

(declare-fun tb!256815 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353092) tb!256815))

(declare-fun result!313356 () Bool)

(assert (=> tb!256815 (= result!313356 tp_is_empty!22857)))

(assert (=> b!4259122 t!353092))

(declare-fun b_and!337613 () Bool)

(assert (= b_and!337611 (and (=> t!353092 result!313356) b_and!337613)))

(declare-fun m!4845311 () Bool)

(assert (=> d!1252895 m!4845311))

(assert (=> d!1252895 m!4843859))

(assert (=> d!1252895 m!4844407))

(declare-fun m!4845313 () Bool)

(assert (=> b!4259122 m!4845313))

(declare-fun m!4845315 () Bool)

(assert (=> b!4259122 m!4845315))

(assert (=> b!4259122 m!4845313))

(assert (=> b!4259122 m!4845315))

(declare-fun m!4845317 () Bool)

(assert (=> b!4259122 m!4845317))

(assert (=> d!1252513 d!1252895))

(assert (=> d!1252513 d!1252555))

(declare-fun d!1252897 () Bool)

(declare-fun _$10!118 () IArray!28483)

(assert (=> d!1252897 (= _$10!118 (IArray!28484 (map!9657 (list!17048 (xs!17544 (left!35012 t!4386))) f!428)))))

(declare-fun e!2645110 () Bool)

(declare-fun inv!62119 (IArray!28483) Bool)

(assert (=> d!1252897 (and (inv!62119 _$10!118) e!2645110)))

(assert (=> d!1252897 (= (choose!25979 (xs!17544 (left!35012 t!4386)) f!428) _$10!118)))

(declare-fun b!4259125 () Bool)

(declare-fun tp!1306723 () Bool)

(assert (=> b!4259125 (= e!2645110 tp!1306723)))

(assert (= d!1252897 b!4259125))

(assert (=> d!1252897 m!4843859))

(assert (=> d!1252897 m!4843859))

(assert (=> d!1252897 m!4844297))

(declare-fun m!4845319 () Bool)

(assert (=> d!1252897 m!4845319))

(assert (=> d!1252513 d!1252897))

(declare-fun d!1252899 () Bool)

(declare-fun lt!1510243 () Int)

(assert (=> d!1252899 (>= lt!1510243 0)))

(declare-fun e!2645111 () Int)

(assert (=> d!1252899 (= lt!1510243 e!2645111)))

(declare-fun c!723217 () Bool)

(assert (=> d!1252899 (= c!723217 ((_ is Nil!47231) lt!1510139))))

(assert (=> d!1252899 (= (size!34584 lt!1510139) lt!1510243)))

(declare-fun b!4259126 () Bool)

(assert (=> b!4259126 (= e!2645111 0)))

(declare-fun b!4259127 () Bool)

(assert (=> b!4259127 (= e!2645111 (+ 1 (size!34584 (t!353022 lt!1510139))))))

(assert (= (and d!1252899 c!723217) b!4259126))

(assert (= (and d!1252899 (not c!723217)) b!4259127))

(declare-fun m!4845321 () Bool)

(assert (=> b!4259127 m!4845321))

(assert (=> d!1252499 d!1252899))

(assert (=> d!1252499 d!1252893))

(assert (=> b!4258450 d!1252735))

(assert (=> b!4258450 d!1252737))

(declare-fun d!1252901 () Bool)

(assert (=> d!1252901 (= (map!9657 (++!12023 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386))))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) f!428) (map!9657 (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) f!428)))))

(declare-fun lt!1510244 () Unit!66127)

(assert (=> d!1252901 (= lt!1510244 (choose!25978 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) f!428))))

(assert (=> d!1252901 (= (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) f!428) lt!1510244)))

(declare-fun bs!598950 () Bool)

(assert (= bs!598950 d!1252901))

(declare-fun m!4845323 () Bool)

(assert (=> bs!598950 m!4845323))

(declare-fun m!4845325 () Bool)

(assert (=> bs!598950 m!4845325))

(declare-fun m!4845327 () Bool)

(assert (=> bs!598950 m!4845327))

(assert (=> bs!598950 m!4844189))

(assert (=> bs!598950 m!4844187))

(declare-fun m!4845329 () Bool)

(assert (=> bs!598950 m!4845329))

(assert (=> bs!598950 m!4844187))

(assert (=> bs!598950 m!4845325))

(assert (=> bs!598950 m!4844245))

(declare-fun m!4845331 () Bool)

(assert (=> bs!598950 m!4845331))

(assert (=> bs!598950 m!4844189))

(assert (=> bs!598950 m!4844187))

(assert (=> bs!598950 m!4844245))

(assert (=> bs!598950 m!4844189))

(assert (=> bs!598950 m!4845323))

(assert (=> b!4258577 d!1252901))

(assert (=> b!4258577 d!1252853))

(declare-fun b!4259128 () Bool)

(declare-fun e!2645112 () Conc!14239)

(assert (=> b!4259128 (= e!2645112 Empty!14239)))

(declare-fun b!4259129 () Bool)

(declare-fun e!2645114 () Conc!14239)

(assert (=> b!4259129 (= e!2645112 e!2645114)))

(declare-fun c!723218 () Bool)

(assert (=> b!4259129 (= c!723218 ((_ is Leaf!22005) (right!35342 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4259130 () Bool)

(declare-fun lt!1510246 () Unit!66127)

(assert (=> b!4259130 (= lt!1510246 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (right!35342 (left!35012 t!4386))))) (list!17046 (right!35342 (right!35342 (right!35342 (left!35012 t!4386))))) f!428))))

(assert (=> b!4259130 (= e!2645114 (Node!14239 (map!9658 (left!35012 (right!35342 (right!35342 (left!35012 t!4386)))) f!428) (map!9658 (right!35342 (right!35342 (right!35342 (left!35012 t!4386)))) f!428) (csize!28706 (right!35342 (right!35342 (left!35012 t!4386)))) (cheight!14449 (right!35342 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252903 () Bool)

(declare-fun e!2645113 () Bool)

(assert (=> d!1252903 e!2645113))

(declare-fun res!1750842 () Bool)

(assert (=> d!1252903 (=> (not res!1750842) (not e!2645113))))

(declare-fun lt!1510245 () Conc!14239)

(assert (=> d!1252903 (= res!1750842 (= (list!17050 lt!1510245) (map!9657 (list!17046 (right!35342 (right!35342 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252903 (= lt!1510245 e!2645112)))

(declare-fun c!723219 () Bool)

(assert (=> d!1252903 (= c!723219 ((_ is Empty!14238) (right!35342 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252903 (isBalanced!3796 (right!35342 (right!35342 (left!35012 t!4386))))))

(assert (=> d!1252903 (= (map!9658 (right!35342 (right!35342 (left!35012 t!4386))) f!428) lt!1510245)))

(declare-fun b!4259131 () Bool)

(assert (=> b!4259131 (= e!2645113 (isBalanced!3798 lt!1510245))))

(declare-fun b!4259132 () Bool)

(assert (=> b!4259132 (= e!2645114 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (right!35342 (left!35012 t!4386)))) f!428) (csize!28707 (right!35342 (right!35342 (left!35012 t!4386))))))))

(assert (= (and d!1252903 c!723219) b!4259128))

(assert (= (and d!1252903 (not c!723219)) b!4259129))

(assert (= (and b!4259129 c!723218) b!4259132))

(assert (= (and b!4259129 (not c!723218)) b!4259130))

(assert (= (and d!1252903 res!1750842) b!4259131))

(assert (=> b!4259130 m!4845195))

(assert (=> b!4259130 m!4845193))

(assert (=> b!4259130 m!4845195))

(declare-fun m!4845333 () Bool)

(assert (=> b!4259130 m!4845333))

(declare-fun m!4845335 () Bool)

(assert (=> b!4259130 m!4845335))

(assert (=> b!4259130 m!4845193))

(declare-fun m!4845337 () Bool)

(assert (=> b!4259130 m!4845337))

(declare-fun m!4845339 () Bool)

(assert (=> d!1252903 m!4845339))

(assert (=> d!1252903 m!4844187))

(assert (=> d!1252903 m!4844187))

(assert (=> d!1252903 m!4845325))

(assert (=> d!1252903 m!4844951))

(declare-fun m!4845341 () Bool)

(assert (=> b!4259131 m!4845341))

(declare-fun m!4845343 () Bool)

(assert (=> b!4259132 m!4845343))

(assert (=> b!4258577 d!1252903))

(declare-fun b!4259133 () Bool)

(declare-fun e!2645115 () Conc!14239)

(assert (=> b!4259133 (= e!2645115 Empty!14239)))

(declare-fun b!4259134 () Bool)

(declare-fun e!2645117 () Conc!14239)

(assert (=> b!4259134 (= e!2645115 e!2645117)))

(declare-fun c!723220 () Bool)

(assert (=> b!4259134 (= c!723220 ((_ is Leaf!22005) (left!35012 (right!35342 (left!35012 t!4386)))))))

(declare-fun b!4259135 () Bool)

(declare-fun lt!1510248 () Unit!66127)

(assert (=> b!4259135 (= lt!1510248 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (right!35342 (left!35012 t!4386))))) (list!17046 (right!35342 (left!35012 (right!35342 (left!35012 t!4386))))) f!428))))

(assert (=> b!4259135 (= e!2645117 (Node!14239 (map!9658 (left!35012 (left!35012 (right!35342 (left!35012 t!4386)))) f!428) (map!9658 (right!35342 (left!35012 (right!35342 (left!35012 t!4386)))) f!428) (csize!28706 (left!35012 (right!35342 (left!35012 t!4386)))) (cheight!14449 (left!35012 (right!35342 (left!35012 t!4386))))))))

(declare-fun d!1252905 () Bool)

(declare-fun e!2645116 () Bool)

(assert (=> d!1252905 e!2645116))

(declare-fun res!1750843 () Bool)

(assert (=> d!1252905 (=> (not res!1750843) (not e!2645116))))

(declare-fun lt!1510247 () Conc!14239)

(assert (=> d!1252905 (= res!1750843 (= (list!17050 lt!1510247) (map!9657 (list!17046 (left!35012 (right!35342 (left!35012 t!4386)))) f!428)))))

(assert (=> d!1252905 (= lt!1510247 e!2645115)))

(declare-fun c!723221 () Bool)

(assert (=> d!1252905 (= c!723221 ((_ is Empty!14238) (left!35012 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252905 (isBalanced!3796 (left!35012 (right!35342 (left!35012 t!4386))))))

(assert (=> d!1252905 (= (map!9658 (left!35012 (right!35342 (left!35012 t!4386))) f!428) lt!1510247)))

(declare-fun b!4259136 () Bool)

(assert (=> b!4259136 (= e!2645116 (isBalanced!3798 lt!1510247))))

(declare-fun b!4259137 () Bool)

(assert (=> b!4259137 (= e!2645117 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (right!35342 (left!35012 t!4386)))) f!428) (csize!28707 (left!35012 (right!35342 (left!35012 t!4386))))))))

(assert (= (and d!1252905 c!723221) b!4259133))

(assert (= (and d!1252905 (not c!723221)) b!4259134))

(assert (= (and b!4259134 c!723220) b!4259137))

(assert (= (and b!4259134 (not c!723220)) b!4259135))

(assert (= (and d!1252905 res!1750843) b!4259136))

(assert (=> b!4259135 m!4845187))

(assert (=> b!4259135 m!4845185))

(assert (=> b!4259135 m!4845187))

(declare-fun m!4845345 () Bool)

(assert (=> b!4259135 m!4845345))

(declare-fun m!4845347 () Bool)

(assert (=> b!4259135 m!4845347))

(assert (=> b!4259135 m!4845185))

(declare-fun m!4845349 () Bool)

(assert (=> b!4259135 m!4845349))

(declare-fun m!4845351 () Bool)

(assert (=> d!1252905 m!4845351))

(assert (=> d!1252905 m!4844189))

(assert (=> d!1252905 m!4844189))

(assert (=> d!1252905 m!4845323))

(assert (=> d!1252905 m!4844949))

(declare-fun m!4845353 () Bool)

(assert (=> b!4259136 m!4845353))

(declare-fun m!4845355 () Bool)

(assert (=> b!4259137 m!4845355))

(assert (=> b!4258577 d!1252905))

(assert (=> b!4258577 d!1252855))

(declare-fun d!1252907 () Bool)

(assert (=> d!1252907 (= (inv!62109 (xs!17544 (left!35012 (right!35342 t!4386)))) (<= (size!34581 (innerList!14298 (xs!17544 (left!35012 (right!35342 t!4386))))) 2147483647))))

(declare-fun bs!598951 () Bool)

(assert (= bs!598951 d!1252907))

(declare-fun m!4845357 () Bool)

(assert (=> bs!598951 m!4845357))

(assert (=> b!4258740 d!1252907))

(declare-fun d!1252909 () Bool)

(declare-fun c!723222 () Bool)

(assert (=> d!1252909 (= c!723222 ((_ is Nil!47231) (t!353022 lt!1510074)))))

(declare-fun e!2645118 () (InoxSet B!2813))

(assert (=> d!1252909 (= (content!7436 (t!353022 lt!1510074)) e!2645118)))

(declare-fun b!4259138 () Bool)

(assert (=> b!4259138 (= e!2645118 ((as const (Array B!2813 Bool)) false))))

(declare-fun b!4259139 () Bool)

(assert (=> b!4259139 (= e!2645118 ((_ map or) (store ((as const (Array B!2813 Bool)) false) (h!52651 (t!353022 lt!1510074)) true) (content!7436 (t!353022 (t!353022 lt!1510074)))))))

(assert (= (and d!1252909 c!723222) b!4259138))

(assert (= (and d!1252909 (not c!723222)) b!4259139))

(declare-fun m!4845359 () Bool)

(assert (=> b!4259139 m!4845359))

(declare-fun m!4845361 () Bool)

(assert (=> b!4259139 m!4845361))

(assert (=> b!4258619 d!1252909))

(declare-fun b!4259140 () Bool)

(declare-fun e!2645119 () List!47354)

(assert (=> b!4259140 (= e!2645119 Nil!47230)))

(declare-fun b!4259142 () Bool)

(declare-fun e!2645120 () List!47354)

(assert (=> b!4259142 (= e!2645120 (list!17048 (xs!17544 (left!35012 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252911 () Bool)

(declare-fun c!723223 () Bool)

(assert (=> d!1252911 (= c!723223 ((_ is Empty!14238) (left!35012 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252911 (= (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) e!2645119)))

(declare-fun b!4259141 () Bool)

(assert (=> b!4259141 (= e!2645119 e!2645120)))

(declare-fun c!723224 () Bool)

(assert (=> b!4259141 (= c!723224 ((_ is Leaf!22005) (left!35012 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259143 () Bool)

(assert (=> b!4259143 (= e!2645120 (++!12023 (list!17046 (left!35012 (left!35012 (right!35342 (right!35342 t!4386))))) (list!17046 (right!35342 (left!35012 (right!35342 (right!35342 t!4386)))))))))

(assert (= (and d!1252911 c!723223) b!4259140))

(assert (= (and d!1252911 (not c!723223)) b!4259141))

(assert (= (and b!4259141 c!723224) b!4259142))

(assert (= (and b!4259141 (not c!723224)) b!4259143))

(declare-fun m!4845363 () Bool)

(assert (=> b!4259142 m!4845363))

(declare-fun m!4845365 () Bool)

(assert (=> b!4259143 m!4845365))

(declare-fun m!4845367 () Bool)

(assert (=> b!4259143 m!4845367))

(assert (=> b!4259143 m!4845365))

(assert (=> b!4259143 m!4845367))

(declare-fun m!4845369 () Bool)

(assert (=> b!4259143 m!4845369))

(assert (=> b!4258409 d!1252911))

(declare-fun b!4259144 () Bool)

(declare-fun e!2645121 () Conc!14239)

(assert (=> b!4259144 (= e!2645121 Empty!14239)))

(declare-fun b!4259145 () Bool)

(declare-fun e!2645123 () Conc!14239)

(assert (=> b!4259145 (= e!2645121 e!2645123)))

(declare-fun c!723225 () Bool)

(assert (=> b!4259145 (= c!723225 ((_ is Leaf!22005) (left!35012 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259146 () Bool)

(declare-fun lt!1510250 () Unit!66127)

(assert (=> b!4259146 (= lt!1510250 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (right!35342 (right!35342 t!4386))))) (list!17046 (right!35342 (left!35012 (right!35342 (right!35342 t!4386))))) f!428))))

(assert (=> b!4259146 (= e!2645123 (Node!14239 (map!9658 (left!35012 (left!35012 (right!35342 (right!35342 t!4386)))) f!428) (map!9658 (right!35342 (left!35012 (right!35342 (right!35342 t!4386)))) f!428) (csize!28706 (left!35012 (right!35342 (right!35342 t!4386)))) (cheight!14449 (left!35012 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252913 () Bool)

(declare-fun e!2645122 () Bool)

(assert (=> d!1252913 e!2645122))

(declare-fun res!1750844 () Bool)

(assert (=> d!1252913 (=> (not res!1750844) (not e!2645122))))

(declare-fun lt!1510249 () Conc!14239)

(assert (=> d!1252913 (= res!1750844 (= (list!17050 lt!1510249) (map!9657 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252913 (= lt!1510249 e!2645121)))

(declare-fun c!723226 () Bool)

(assert (=> d!1252913 (= c!723226 ((_ is Empty!14238) (left!35012 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252913 (isBalanced!3796 (left!35012 (right!35342 (right!35342 t!4386))))))

(assert (=> d!1252913 (= (map!9658 (left!35012 (right!35342 (right!35342 t!4386))) f!428) lt!1510249)))

(declare-fun b!4259147 () Bool)

(assert (=> b!4259147 (= e!2645122 (isBalanced!3798 lt!1510249))))

(declare-fun b!4259148 () Bool)

(assert (=> b!4259148 (= e!2645123 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (right!35342 (right!35342 t!4386)))) f!428) (csize!28707 (left!35012 (right!35342 (right!35342 t!4386))))))))

(assert (= (and d!1252913 c!723226) b!4259144))

(assert (= (and d!1252913 (not c!723226)) b!4259145))

(assert (= (and b!4259145 c!723225) b!4259148))

(assert (= (and b!4259145 (not c!723225)) b!4259146))

(assert (= (and d!1252913 res!1750844) b!4259147))

(assert (=> b!4259146 m!4845367))

(assert (=> b!4259146 m!4845365))

(assert (=> b!4259146 m!4845367))

(declare-fun m!4845371 () Bool)

(assert (=> b!4259146 m!4845371))

(declare-fun m!4845373 () Bool)

(assert (=> b!4259146 m!4845373))

(assert (=> b!4259146 m!4845365))

(declare-fun m!4845375 () Bool)

(assert (=> b!4259146 m!4845375))

(declare-fun m!4845377 () Bool)

(assert (=> d!1252913 m!4845377))

(assert (=> d!1252913 m!4843969))

(assert (=> d!1252913 m!4843969))

(declare-fun m!4845379 () Bool)

(assert (=> d!1252913 m!4845379))

(assert (=> d!1252913 m!4845005))

(declare-fun m!4845381 () Bool)

(assert (=> b!4259147 m!4845381))

(declare-fun m!4845383 () Bool)

(assert (=> b!4259148 m!4845383))

(assert (=> b!4258409 d!1252913))

(declare-fun d!1252915 () Bool)

(assert (=> d!1252915 (= (map!9657 (++!12023 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386))))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) f!428) (map!9657 (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) f!428)))))

(declare-fun lt!1510251 () Unit!66127)

(assert (=> d!1252915 (= lt!1510251 (choose!25978 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) f!428))))

(assert (=> d!1252915 (= (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) f!428) lt!1510251)))

(declare-fun bs!598952 () Bool)

(assert (= bs!598952 d!1252915))

(assert (=> bs!598952 m!4845379))

(declare-fun m!4845385 () Bool)

(assert (=> bs!598952 m!4845385))

(declare-fun m!4845387 () Bool)

(assert (=> bs!598952 m!4845387))

(assert (=> bs!598952 m!4843969))

(assert (=> bs!598952 m!4843967))

(declare-fun m!4845389 () Bool)

(assert (=> bs!598952 m!4845389))

(assert (=> bs!598952 m!4843967))

(assert (=> bs!598952 m!4845385))

(assert (=> bs!598952 m!4843997))

(declare-fun m!4845391 () Bool)

(assert (=> bs!598952 m!4845391))

(assert (=> bs!598952 m!4843969))

(assert (=> bs!598952 m!4843967))

(assert (=> bs!598952 m!4843997))

(assert (=> bs!598952 m!4843969))

(assert (=> bs!598952 m!4845379))

(assert (=> b!4258409 d!1252915))

(declare-fun b!4259149 () Bool)

(declare-fun e!2645124 () Conc!14239)

(assert (=> b!4259149 (= e!2645124 Empty!14239)))

(declare-fun b!4259150 () Bool)

(declare-fun e!2645126 () Conc!14239)

(assert (=> b!4259150 (= e!2645124 e!2645126)))

(declare-fun c!723227 () Bool)

(assert (=> b!4259150 (= c!723227 ((_ is Leaf!22005) (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259151 () Bool)

(declare-fun lt!1510253 () Unit!66127)

(assert (=> b!4259151 (= lt!1510253 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (right!35342 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 (right!35342 (right!35342 t!4386))))) f!428))))

(assert (=> b!4259151 (= e!2645126 (Node!14239 (map!9658 (left!35012 (right!35342 (right!35342 (right!35342 t!4386)))) f!428) (map!9658 (right!35342 (right!35342 (right!35342 (right!35342 t!4386)))) f!428) (csize!28706 (right!35342 (right!35342 (right!35342 t!4386)))) (cheight!14449 (right!35342 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252917 () Bool)

(declare-fun e!2645125 () Bool)

(assert (=> d!1252917 e!2645125))

(declare-fun res!1750845 () Bool)

(assert (=> d!1252917 (=> (not res!1750845) (not e!2645125))))

(declare-fun lt!1510252 () Conc!14239)

(assert (=> d!1252917 (= res!1750845 (= (list!17050 lt!1510252) (map!9657 (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252917 (= lt!1510252 e!2645124)))

(declare-fun c!723228 () Bool)

(assert (=> d!1252917 (= c!723228 ((_ is Empty!14238) (right!35342 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252917 (isBalanced!3796 (right!35342 (right!35342 (right!35342 t!4386))))))

(assert (=> d!1252917 (= (map!9658 (right!35342 (right!35342 (right!35342 t!4386))) f!428) lt!1510252)))

(declare-fun b!4259152 () Bool)

(assert (=> b!4259152 (= e!2645125 (isBalanced!3798 lt!1510252))))

(declare-fun b!4259153 () Bool)

(assert (=> b!4259153 (= e!2645126 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (right!35342 (right!35342 t!4386)))) f!428) (csize!28707 (right!35342 (right!35342 (right!35342 t!4386))))))))

(assert (= (and d!1252917 c!723228) b!4259149))

(assert (= (and d!1252917 (not c!723228)) b!4259150))

(assert (= (and b!4259150 c!723227) b!4259153))

(assert (= (and b!4259150 (not c!723227)) b!4259151))

(assert (= (and d!1252917 res!1750845) b!4259152))

(declare-fun m!4845393 () Bool)

(assert (=> b!4259151 m!4845393))

(declare-fun m!4845395 () Bool)

(assert (=> b!4259151 m!4845395))

(assert (=> b!4259151 m!4845393))

(declare-fun m!4845397 () Bool)

(assert (=> b!4259151 m!4845397))

(declare-fun m!4845399 () Bool)

(assert (=> b!4259151 m!4845399))

(assert (=> b!4259151 m!4845395))

(declare-fun m!4845401 () Bool)

(assert (=> b!4259151 m!4845401))

(declare-fun m!4845403 () Bool)

(assert (=> d!1252917 m!4845403))

(assert (=> d!1252917 m!4843967))

(assert (=> d!1252917 m!4843967))

(assert (=> d!1252917 m!4845385))

(assert (=> d!1252917 m!4845007))

(declare-fun m!4845405 () Bool)

(assert (=> b!4259152 m!4845405))

(declare-fun m!4845407 () Bool)

(assert (=> b!4259153 m!4845407))

(assert (=> b!4258409 d!1252917))

(declare-fun b!4259154 () Bool)

(declare-fun e!2645127 () List!47354)

(assert (=> b!4259154 (= e!2645127 Nil!47230)))

(declare-fun b!4259156 () Bool)

(declare-fun e!2645128 () List!47354)

(assert (=> b!4259156 (= e!2645128 (list!17048 (xs!17544 (right!35342 (right!35342 (right!35342 t!4386))))))))

(declare-fun d!1252919 () Bool)

(declare-fun c!723229 () Bool)

(assert (=> d!1252919 (= c!723229 ((_ is Empty!14238) (right!35342 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1252919 (= (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) e!2645127)))

(declare-fun b!4259155 () Bool)

(assert (=> b!4259155 (= e!2645127 e!2645128)))

(declare-fun c!723230 () Bool)

(assert (=> b!4259155 (= c!723230 ((_ is Leaf!22005) (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259157 () Bool)

(assert (=> b!4259157 (= e!2645128 (++!12023 (list!17046 (left!35012 (right!35342 (right!35342 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 (right!35342 (right!35342 t!4386)))))))))

(assert (= (and d!1252919 c!723229) b!4259154))

(assert (= (and d!1252919 (not c!723229)) b!4259155))

(assert (= (and b!4259155 c!723230) b!4259156))

(assert (= (and b!4259155 (not c!723230)) b!4259157))

(declare-fun m!4845409 () Bool)

(assert (=> b!4259156 m!4845409))

(assert (=> b!4259157 m!4845395))

(assert (=> b!4259157 m!4845393))

(assert (=> b!4259157 m!4845395))

(assert (=> b!4259157 m!4845393))

(declare-fun m!4845411 () Bool)

(assert (=> b!4259157 m!4845411))

(assert (=> b!4258409 d!1252919))

(assert (=> b!4258469 d!1252717))

(assert (=> b!4258469 d!1252719))

(declare-fun d!1252921 () Bool)

(declare-fun res!1750846 () Bool)

(declare-fun e!2645129 () Bool)

(assert (=> d!1252921 (=> (not res!1750846) (not e!2645129))))

(assert (=> d!1252921 (= res!1750846 (<= (size!34581 (list!17048 (xs!17544 (left!35012 (right!35342 t!4386))))) 512))))

(assert (=> d!1252921 (= (inv!62114 (left!35012 (right!35342 t!4386))) e!2645129)))

(declare-fun b!4259158 () Bool)

(declare-fun res!1750847 () Bool)

(assert (=> b!4259158 (=> (not res!1750847) (not e!2645129))))

(assert (=> b!4259158 (= res!1750847 (= (csize!28707 (left!35012 (right!35342 t!4386))) (size!34581 (list!17048 (xs!17544 (left!35012 (right!35342 t!4386)))))))))

(declare-fun b!4259159 () Bool)

(assert (=> b!4259159 (= e!2645129 (and (> (csize!28707 (left!35012 (right!35342 t!4386))) 0) (<= (csize!28707 (left!35012 (right!35342 t!4386))) 512)))))

(assert (= (and d!1252921 res!1750846) b!4259158))

(assert (= (and b!4259158 res!1750847) b!4259159))

(assert (=> d!1252921 m!4843987))

(assert (=> d!1252921 m!4843987))

(declare-fun m!4845413 () Bool)

(assert (=> d!1252921 m!4845413))

(assert (=> b!4259158 m!4843987))

(assert (=> b!4259158 m!4843987))

(assert (=> b!4259158 m!4845413))

(assert (=> b!4258722 d!1252921))

(declare-fun d!1252923 () Bool)

(assert (=> d!1252923 (= (max!0 (height!1863 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (height!1863 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))) (ite (< (height!1863 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (height!1863 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))) (height!1863 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (height!1863 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386))))))))

(assert (=> b!4258708 d!1252923))

(declare-fun d!1252925 () Bool)

(assert (=> d!1252925 (= (height!1863 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (ite ((_ is Empty!14239) (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 0 (ite ((_ is Leaf!22006) (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 1 (cheight!14450 (left!35013 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(assert (=> b!4258708 d!1252925))

(declare-fun d!1252927 () Bool)

(assert (=> d!1252927 (= (height!1863 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) (ite ((_ is Empty!14239) (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 0 (ite ((_ is Leaf!22006) (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))) 1 (cheight!14450 (right!35343 (Node!14239 (map!9658 (left!35012 t!4386) f!428) (map!9658 (right!35342 t!4386) f!428) (csize!28706 t!4386) (cheight!14449 t!4386)))))))))

(assert (=> b!4258708 d!1252927))

(declare-fun d!1252929 () Bool)

(declare-fun lt!1510254 () Int)

(assert (=> d!1252929 (>= lt!1510254 0)))

(declare-fun e!2645130 () Int)

(assert (=> d!1252929 (= lt!1510254 e!2645130)))

(declare-fun c!723231 () Bool)

(assert (=> d!1252929 (= c!723231 ((_ is Nil!47230) (list!17048 (xs!17544 t!4386))))))

(assert (=> d!1252929 (= (size!34581 (list!17048 (xs!17544 t!4386))) lt!1510254)))

(declare-fun b!4259160 () Bool)

(assert (=> b!4259160 (= e!2645130 0)))

(declare-fun b!4259161 () Bool)

(assert (=> b!4259161 (= e!2645130 (+ 1 (size!34581 (t!353021 (list!17048 (xs!17544 t!4386))))))))

(assert (= (and d!1252929 c!723231) b!4259160))

(assert (= (and d!1252929 (not c!723231)) b!4259161))

(declare-fun m!4845415 () Bool)

(assert (=> b!4259161 m!4845415))

(assert (=> d!1252515 d!1252929))

(declare-fun d!1252931 () Bool)

(assert (=> d!1252931 (= (list!17048 (xs!17544 t!4386)) (innerList!14298 (xs!17544 t!4386)))))

(assert (=> d!1252515 d!1252931))

(assert (=> b!4258422 d!1252675))

(declare-fun b!4259162 () Bool)

(declare-fun e!2645131 () Conc!14239)

(assert (=> b!4259162 (= e!2645131 Empty!14239)))

(declare-fun b!4259163 () Bool)

(declare-fun e!2645133 () Conc!14239)

(assert (=> b!4259163 (= e!2645131 e!2645133)))

(declare-fun c!723232 () Bool)

(assert (=> b!4259163 (= c!723232 ((_ is Leaf!22005) (left!35012 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4259164 () Bool)

(declare-fun lt!1510256 () Unit!66127)

(assert (=> b!4259164 (= lt!1510256 (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (left!35012 (left!35012 (right!35342 t!4386))))) f!428))))

(assert (=> b!4259164 (= e!2645133 (Node!14239 (map!9658 (left!35012 (left!35012 (left!35012 (right!35342 t!4386)))) f!428) (map!9658 (right!35342 (left!35012 (left!35012 (right!35342 t!4386)))) f!428) (csize!28706 (left!35012 (left!35012 (right!35342 t!4386)))) (cheight!14449 (left!35012 (left!35012 (right!35342 t!4386))))))))

(declare-fun d!1252933 () Bool)

(declare-fun e!2645132 () Bool)

(assert (=> d!1252933 e!2645132))

(declare-fun res!1750848 () Bool)

(assert (=> d!1252933 (=> (not res!1750848) (not e!2645132))))

(declare-fun lt!1510255 () Conc!14239)

(assert (=> d!1252933 (= res!1750848 (= (list!17050 lt!1510255) (map!9657 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252933 (= lt!1510255 e!2645131)))

(declare-fun c!723233 () Bool)

(assert (=> d!1252933 (= c!723233 ((_ is Empty!14238) (left!35012 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252933 (isBalanced!3796 (left!35012 (left!35012 (right!35342 t!4386))))))

(assert (=> d!1252933 (= (map!9658 (left!35012 (left!35012 (right!35342 t!4386))) f!428) lt!1510255)))

(declare-fun b!4259165 () Bool)

(assert (=> b!4259165 (= e!2645132 (isBalanced!3798 lt!1510255))))

(declare-fun b!4259166 () Bool)

(assert (=> b!4259166 (= e!2645133 (Leaf!22006 (map!9660 (xs!17544 (left!35012 (left!35012 (right!35342 t!4386)))) f!428) (csize!28707 (left!35012 (left!35012 (right!35342 t!4386))))))))

(assert (= (and d!1252933 c!723233) b!4259162))

(assert (= (and d!1252933 (not c!723233)) b!4259163))

(assert (= (and b!4259163 c!723232) b!4259166))

(assert (= (and b!4259163 (not c!723232)) b!4259164))

(assert (= (and d!1252933 res!1750848) b!4259165))

(assert (=> b!4259164 m!4844767))

(assert (=> b!4259164 m!4844765))

(assert (=> b!4259164 m!4844767))

(declare-fun m!4845417 () Bool)

(assert (=> b!4259164 m!4845417))

(declare-fun m!4845419 () Bool)

(assert (=> b!4259164 m!4845419))

(assert (=> b!4259164 m!4844765))

(declare-fun m!4845421 () Bool)

(assert (=> b!4259164 m!4845421))

(declare-fun m!4845423 () Bool)

(assert (=> d!1252933 m!4845423))

(assert (=> d!1252933 m!4843989))

(assert (=> d!1252933 m!4843989))

(declare-fun m!4845425 () Bool)

(assert (=> d!1252933 m!4845425))

(assert (=> d!1252933 m!4845049))

(declare-fun m!4845427 () Bool)

(assert (=> b!4259165 m!4845427))

(declare-fun m!4845429 () Bool)

(assert (=> b!4259166 m!4845429))

(assert (=> b!4258422 d!1252933))

(declare-fun d!1252935 () Bool)

(assert (=> d!1252935 (= (map!9657 (++!12023 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386))))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) f!428) (map!9657 (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) f!428)))))

(declare-fun lt!1510257 () Unit!66127)

(assert (=> d!1252935 (= lt!1510257 (choose!25978 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) f!428))))

(assert (=> d!1252935 (= (lemmaMapConcat!26 (list!17046 (left!35012 (left!35012 (right!35342 t!4386)))) (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) f!428) lt!1510257)))

(declare-fun bs!598953 () Bool)

(assert (= bs!598953 d!1252935))

(assert (=> bs!598953 m!4845425))

(declare-fun m!4845431 () Bool)

(assert (=> bs!598953 m!4845431))

(declare-fun m!4845433 () Bool)

(assert (=> bs!598953 m!4845433))

(assert (=> bs!598953 m!4843989))

(assert (=> bs!598953 m!4843991))

(declare-fun m!4845435 () Bool)

(assert (=> bs!598953 m!4845435))

(assert (=> bs!598953 m!4843991))

(assert (=> bs!598953 m!4845431))

(assert (=> bs!598953 m!4843993))

(declare-fun m!4845437 () Bool)

(assert (=> bs!598953 m!4845437))

(assert (=> bs!598953 m!4843989))

(assert (=> bs!598953 m!4843991))

(assert (=> bs!598953 m!4843993))

(assert (=> bs!598953 m!4843989))

(assert (=> bs!598953 m!4845425))

(assert (=> b!4258422 d!1252935))

(declare-fun b!4259167 () Bool)

(declare-fun e!2645134 () Conc!14239)

(assert (=> b!4259167 (= e!2645134 Empty!14239)))

(declare-fun b!4259168 () Bool)

(declare-fun e!2645136 () Conc!14239)

(assert (=> b!4259168 (= e!2645134 e!2645136)))

(declare-fun c!723234 () Bool)

(assert (=> b!4259168 (= c!723234 ((_ is Leaf!22005) (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4259169 () Bool)

(declare-fun lt!1510259 () Unit!66127)

(assert (=> b!4259169 (= lt!1510259 (lemmaMapConcat!26 (list!17046 (left!35012 (right!35342 (left!35012 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 (left!35012 (right!35342 t!4386))))) f!428))))

(assert (=> b!4259169 (= e!2645136 (Node!14239 (map!9658 (left!35012 (right!35342 (left!35012 (right!35342 t!4386)))) f!428) (map!9658 (right!35342 (right!35342 (left!35012 (right!35342 t!4386)))) f!428) (csize!28706 (right!35342 (left!35012 (right!35342 t!4386)))) (cheight!14449 (right!35342 (left!35012 (right!35342 t!4386))))))))

(declare-fun d!1252937 () Bool)

(declare-fun e!2645135 () Bool)

(assert (=> d!1252937 e!2645135))

(declare-fun res!1750849 () Bool)

(assert (=> d!1252937 (=> (not res!1750849) (not e!2645135))))

(declare-fun lt!1510258 () Conc!14239)

(assert (=> d!1252937 (= res!1750849 (= (list!17050 lt!1510258) (map!9657 (list!17046 (right!35342 (left!35012 (right!35342 t!4386)))) f!428)))))

(assert (=> d!1252937 (= lt!1510258 e!2645134)))

(declare-fun c!723235 () Bool)

(assert (=> d!1252937 (= c!723235 ((_ is Empty!14238) (right!35342 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252937 (isBalanced!3796 (right!35342 (left!35012 (right!35342 t!4386))))))

(assert (=> d!1252937 (= (map!9658 (right!35342 (left!35012 (right!35342 t!4386))) f!428) lt!1510258)))

(declare-fun b!4259170 () Bool)

(assert (=> b!4259170 (= e!2645135 (isBalanced!3798 lt!1510258))))

(declare-fun b!4259171 () Bool)

(assert (=> b!4259171 (= e!2645136 (Leaf!22006 (map!9660 (xs!17544 (right!35342 (left!35012 (right!35342 t!4386)))) f!428) (csize!28707 (right!35342 (left!35012 (right!35342 t!4386))))))))

(assert (= (and d!1252937 c!723235) b!4259167))

(assert (= (and d!1252937 (not c!723235)) b!4259168))

(assert (= (and b!4259168 c!723234) b!4259171))

(assert (= (and b!4259168 (not c!723234)) b!4259169))

(assert (= (and d!1252937 res!1750849) b!4259170))

(assert (=> b!4259169 m!4844775))

(assert (=> b!4259169 m!4844773))

(assert (=> b!4259169 m!4844775))

(declare-fun m!4845439 () Bool)

(assert (=> b!4259169 m!4845439))

(declare-fun m!4845441 () Bool)

(assert (=> b!4259169 m!4845441))

(assert (=> b!4259169 m!4844773))

(declare-fun m!4845443 () Bool)

(assert (=> b!4259169 m!4845443))

(declare-fun m!4845445 () Bool)

(assert (=> d!1252937 m!4845445))

(assert (=> d!1252937 m!4843991))

(assert (=> d!1252937 m!4843991))

(assert (=> d!1252937 m!4845431))

(assert (=> d!1252937 m!4845051))

(declare-fun m!4845447 () Bool)

(assert (=> b!4259170 m!4845447))

(declare-fun m!4845449 () Bool)

(assert (=> b!4259171 m!4845449))

(assert (=> b!4258422 d!1252937))

(assert (=> b!4258422 d!1252673))

(declare-fun d!1252939 () Bool)

(declare-fun lt!1510260 () Bool)

(assert (=> d!1252939 (= lt!1510260 (isEmpty!27972 (list!17050 (left!35013 lt!1510095))))))

(assert (=> d!1252939 (= lt!1510260 (= (size!34587 (left!35013 lt!1510095)) 0))))

(assert (=> d!1252939 (= (isEmpty!27969 (left!35013 lt!1510095)) lt!1510260)))

(declare-fun bs!598954 () Bool)

(assert (= bs!598954 d!1252939))

(assert (=> bs!598954 m!4844313))

(assert (=> bs!598954 m!4844313))

(declare-fun m!4845451 () Bool)

(assert (=> bs!598954 m!4845451))

(declare-fun m!4845453 () Bool)

(assert (=> bs!598954 m!4845453))

(assert (=> b!4258454 d!1252939))

(declare-fun d!1252941 () Bool)

(assert (=> d!1252941 (= (list!17048 (xs!17544 (right!35342 (left!35012 t!4386)))) (innerList!14298 (xs!17544 (right!35342 (left!35012 t!4386)))))))

(assert (=> b!4258598 d!1252941))

(declare-fun d!1252943 () Bool)

(assert (=> d!1252943 (= ($colon$colon!627 (map!9657 (t!353021 (list!17046 (right!35342 t!4386))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17046 (right!35342 t!4386))))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (list!17046 (right!35342 t!4386)))) (map!9657 (t!353021 (list!17046 (right!35342 t!4386))) f!428)))))

(assert (=> b!4258647 d!1252943))

(declare-fun d!1252945 () Bool)

(declare-fun lt!1510261 () List!47355)

(assert (=> d!1252945 (= (size!34584 lt!1510261) (size!34581 (t!353021 (list!17046 (right!35342 t!4386)))))))

(declare-fun e!2645137 () List!47355)

(assert (=> d!1252945 (= lt!1510261 e!2645137)))

(declare-fun c!723236 () Bool)

(assert (=> d!1252945 (= c!723236 ((_ is Nil!47230) (t!353021 (list!17046 (right!35342 t!4386)))))))

(assert (=> d!1252945 (= (map!9657 (t!353021 (list!17046 (right!35342 t!4386))) f!428) lt!1510261)))

(declare-fun b!4259172 () Bool)

(assert (=> b!4259172 (= e!2645137 Nil!47231)))

(declare-fun b!4259173 () Bool)

(assert (=> b!4259173 (= e!2645137 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (list!17046 (right!35342 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (list!17046 (right!35342 t!4386)))))))))

(assert (= (and d!1252945 c!723236) b!4259172))

(assert (= (and d!1252945 (not c!723236)) b!4259173))

(declare-fun b_lambda!125541 () Bool)

(assert (=> (not b_lambda!125541) (not b!4259173)))

(declare-fun t!353094 () Bool)

(declare-fun tb!256817 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353094) tb!256817))

(declare-fun result!313358 () Bool)

(assert (=> tb!256817 (= result!313358 tp_is_empty!22857)))

(assert (=> b!4259173 t!353094))

(declare-fun b_and!337615 () Bool)

(assert (= b_and!337613 (and (=> t!353094 result!313358) b_and!337615)))

(declare-fun m!4845455 () Bool)

(assert (=> d!1252945 m!4845455))

(declare-fun m!4845457 () Bool)

(assert (=> d!1252945 m!4845457))

(declare-fun m!4845459 () Bool)

(assert (=> b!4259173 m!4845459))

(declare-fun m!4845461 () Bool)

(assert (=> b!4259173 m!4845461))

(assert (=> b!4259173 m!4845459))

(assert (=> b!4259173 m!4845461))

(declare-fun m!4845463 () Bool)

(assert (=> b!4259173 m!4845463))

(assert (=> b!4258647 d!1252945))

(declare-fun b!4259174 () Bool)

(declare-fun e!2645138 () List!47355)

(assert (=> b!4259174 (= e!2645138 Nil!47231)))

(declare-fun b!4259177 () Bool)

(declare-fun e!2645139 () List!47355)

(assert (=> b!4259177 (= e!2645139 (++!12024 (list!17050 (left!35013 lt!1510134)) (list!17050 (right!35343 lt!1510134))))))

(declare-fun b!4259175 () Bool)

(assert (=> b!4259175 (= e!2645138 e!2645139)))

(declare-fun c!723238 () Bool)

(assert (=> b!4259175 (= c!723238 ((_ is Leaf!22006) lt!1510134))))

(declare-fun b!4259176 () Bool)

(assert (=> b!4259176 (= e!2645139 (list!17051 (xs!17545 lt!1510134)))))

(declare-fun d!1252947 () Bool)

(declare-fun c!723237 () Bool)

(assert (=> d!1252947 (= c!723237 ((_ is Empty!14239) lt!1510134))))

(assert (=> d!1252947 (= (list!17050 lt!1510134) e!2645138)))

(assert (= (and d!1252947 c!723237) b!4259174))

(assert (= (and d!1252947 (not c!723237)) b!4259175))

(assert (= (and b!4259175 c!723238) b!4259176))

(assert (= (and b!4259175 (not c!723238)) b!4259177))

(declare-fun m!4845465 () Bool)

(assert (=> b!4259177 m!4845465))

(declare-fun m!4845467 () Bool)

(assert (=> b!4259177 m!4845467))

(assert (=> b!4259177 m!4845465))

(assert (=> b!4259177 m!4845467))

(declare-fun m!4845469 () Bool)

(assert (=> b!4259177 m!4845469))

(declare-fun m!4845471 () Bool)

(assert (=> b!4259176 m!4845471))

(assert (=> d!1252485 d!1252947))

(assert (=> d!1252485 d!1252821))

(assert (=> d!1252485 d!1252493))

(assert (=> d!1252485 d!1252753))

(declare-fun d!1252949 () Bool)

(declare-fun c!723239 () Bool)

(assert (=> d!1252949 (= c!723239 ((_ is Nil!47230) lt!1510121))))

(declare-fun e!2645140 () (InoxSet T!79378))

(assert (=> d!1252949 (= (content!7434 lt!1510121) e!2645140)))

(declare-fun b!4259178 () Bool)

(assert (=> b!4259178 (= e!2645140 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259179 () Bool)

(assert (=> b!4259179 (= e!2645140 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510121) true) (content!7434 (t!353021 lt!1510121))))))

(assert (= (and d!1252949 c!723239) b!4259178))

(assert (= (and d!1252949 (not c!723239)) b!4259179))

(declare-fun m!4845473 () Bool)

(assert (=> b!4259179 m!4845473))

(declare-fun m!4845475 () Bool)

(assert (=> b!4259179 m!4845475))

(assert (=> d!1252445 d!1252949))

(declare-fun d!1252951 () Bool)

(declare-fun c!723240 () Bool)

(assert (=> d!1252951 (= c!723240 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 t!4386)))))))

(declare-fun e!2645141 () (InoxSet T!79378))

(assert (=> d!1252951 (= (content!7434 (list!17046 (left!35012 (right!35342 t!4386)))) e!2645141)))

(declare-fun b!4259180 () Bool)

(assert (=> b!4259180 (= e!2645141 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259181 () Bool)

(assert (=> b!4259181 (= e!2645141 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (list!17046 (left!35012 (right!35342 t!4386)))) true) (content!7434 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))))))))

(assert (= (and d!1252951 c!723240) b!4259180))

(assert (= (and d!1252951 (not c!723240)) b!4259181))

(declare-fun m!4845477 () Bool)

(assert (=> b!4259181 m!4845477))

(assert (=> b!4259181 m!4844907))

(assert (=> d!1252445 d!1252951))

(declare-fun d!1252953 () Bool)

(declare-fun c!723241 () Bool)

(assert (=> d!1252953 (= c!723241 ((_ is Nil!47230) (list!17046 (right!35342 (right!35342 t!4386)))))))

(declare-fun e!2645142 () (InoxSet T!79378))

(assert (=> d!1252953 (= (content!7434 (list!17046 (right!35342 (right!35342 t!4386)))) e!2645142)))

(declare-fun b!4259182 () Bool)

(assert (=> b!4259182 (= e!2645142 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259183 () Bool)

(assert (=> b!4259183 (= e!2645142 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (list!17046 (right!35342 (right!35342 t!4386)))) true) (content!7434 (t!353021 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(assert (= (and d!1252953 c!723241) b!4259182))

(assert (= (and d!1252953 (not c!723241)) b!4259183))

(declare-fun m!4845479 () Bool)

(assert (=> b!4259183 m!4845479))

(declare-fun m!4845481 () Bool)

(assert (=> b!4259183 m!4845481))

(assert (=> d!1252445 d!1252953))

(declare-fun b!4259185 () Bool)

(declare-fun e!2645143 () List!47355)

(assert (=> b!4259185 (= e!2645143 (Cons!47231 (h!52651 (list!17050 (left!35013 lt!1510093))) (++!12024 (t!353022 (list!17050 (left!35013 lt!1510093))) (list!17050 (right!35343 lt!1510093)))))))

(declare-fun b!4259187 () Bool)

(declare-fun e!2645144 () Bool)

(declare-fun lt!1510262 () List!47355)

(assert (=> b!4259187 (= e!2645144 (or (not (= (list!17050 (right!35343 lt!1510093)) Nil!47231)) (= lt!1510262 (list!17050 (left!35013 lt!1510093)))))))

(declare-fun b!4259184 () Bool)

(assert (=> b!4259184 (= e!2645143 (list!17050 (right!35343 lt!1510093)))))

(declare-fun b!4259186 () Bool)

(declare-fun res!1750851 () Bool)

(assert (=> b!4259186 (=> (not res!1750851) (not e!2645144))))

(assert (=> b!4259186 (= res!1750851 (= (size!34584 lt!1510262) (+ (size!34584 (list!17050 (left!35013 lt!1510093))) (size!34584 (list!17050 (right!35343 lt!1510093))))))))

(declare-fun d!1252955 () Bool)

(assert (=> d!1252955 e!2645144))

(declare-fun res!1750850 () Bool)

(assert (=> d!1252955 (=> (not res!1750850) (not e!2645144))))

(assert (=> d!1252955 (= res!1750850 (= (content!7436 lt!1510262) ((_ map or) (content!7436 (list!17050 (left!35013 lt!1510093))) (content!7436 (list!17050 (right!35343 lt!1510093))))))))

(assert (=> d!1252955 (= lt!1510262 e!2645143)))

(declare-fun c!723242 () Bool)

(assert (=> d!1252955 (= c!723242 ((_ is Nil!47231) (list!17050 (left!35013 lt!1510093))))))

(assert (=> d!1252955 (= (++!12024 (list!17050 (left!35013 lt!1510093)) (list!17050 (right!35343 lt!1510093))) lt!1510262)))

(assert (= (and d!1252955 c!723242) b!4259184))

(assert (= (and d!1252955 (not c!723242)) b!4259185))

(assert (= (and d!1252955 res!1750850) b!4259186))

(assert (= (and b!4259186 res!1750851) b!4259187))

(assert (=> b!4259185 m!4844141))

(declare-fun m!4845483 () Bool)

(assert (=> b!4259185 m!4845483))

(declare-fun m!4845485 () Bool)

(assert (=> b!4259186 m!4845485))

(assert (=> b!4259186 m!4844139))

(declare-fun m!4845487 () Bool)

(assert (=> b!4259186 m!4845487))

(assert (=> b!4259186 m!4844141))

(declare-fun m!4845489 () Bool)

(assert (=> b!4259186 m!4845489))

(declare-fun m!4845491 () Bool)

(assert (=> d!1252955 m!4845491))

(assert (=> d!1252955 m!4844139))

(declare-fun m!4845493 () Bool)

(assert (=> d!1252955 m!4845493))

(assert (=> d!1252955 m!4844141))

(declare-fun m!4845495 () Bool)

(assert (=> d!1252955 m!4845495))

(assert (=> b!4258547 d!1252955))

(declare-fun b!4259188 () Bool)

(declare-fun e!2645145 () List!47355)

(assert (=> b!4259188 (= e!2645145 Nil!47231)))

(declare-fun b!4259191 () Bool)

(declare-fun e!2645146 () List!47355)

(assert (=> b!4259191 (= e!2645146 (++!12024 (list!17050 (left!35013 (left!35013 lt!1510093))) (list!17050 (right!35343 (left!35013 lt!1510093)))))))

(declare-fun b!4259189 () Bool)

(assert (=> b!4259189 (= e!2645145 e!2645146)))

(declare-fun c!723244 () Bool)

(assert (=> b!4259189 (= c!723244 ((_ is Leaf!22006) (left!35013 lt!1510093)))))

(declare-fun b!4259190 () Bool)

(assert (=> b!4259190 (= e!2645146 (list!17051 (xs!17545 (left!35013 lt!1510093))))))

(declare-fun d!1252957 () Bool)

(declare-fun c!723243 () Bool)

(assert (=> d!1252957 (= c!723243 ((_ is Empty!14239) (left!35013 lt!1510093)))))

(assert (=> d!1252957 (= (list!17050 (left!35013 lt!1510093)) e!2645145)))

(assert (= (and d!1252957 c!723243) b!4259188))

(assert (= (and d!1252957 (not c!723243)) b!4259189))

(assert (= (and b!4259189 c!723244) b!4259190))

(assert (= (and b!4259189 (not c!723244)) b!4259191))

(declare-fun m!4845497 () Bool)

(assert (=> b!4259191 m!4845497))

(declare-fun m!4845499 () Bool)

(assert (=> b!4259191 m!4845499))

(assert (=> b!4259191 m!4845497))

(assert (=> b!4259191 m!4845499))

(declare-fun m!4845501 () Bool)

(assert (=> b!4259191 m!4845501))

(declare-fun m!4845503 () Bool)

(assert (=> b!4259190 m!4845503))

(assert (=> b!4258547 d!1252957))

(declare-fun b!4259192 () Bool)

(declare-fun e!2645147 () List!47355)

(assert (=> b!4259192 (= e!2645147 Nil!47231)))

(declare-fun b!4259195 () Bool)

(declare-fun e!2645148 () List!47355)

(assert (=> b!4259195 (= e!2645148 (++!12024 (list!17050 (left!35013 (right!35343 lt!1510093))) (list!17050 (right!35343 (right!35343 lt!1510093)))))))

(declare-fun b!4259193 () Bool)

(assert (=> b!4259193 (= e!2645147 e!2645148)))

(declare-fun c!723246 () Bool)

(assert (=> b!4259193 (= c!723246 ((_ is Leaf!22006) (right!35343 lt!1510093)))))

(declare-fun b!4259194 () Bool)

(assert (=> b!4259194 (= e!2645148 (list!17051 (xs!17545 (right!35343 lt!1510093))))))

(declare-fun d!1252959 () Bool)

(declare-fun c!723245 () Bool)

(assert (=> d!1252959 (= c!723245 ((_ is Empty!14239) (right!35343 lt!1510093)))))

(assert (=> d!1252959 (= (list!17050 (right!35343 lt!1510093)) e!2645147)))

(assert (= (and d!1252959 c!723245) b!4259192))

(assert (= (and d!1252959 (not c!723245)) b!4259193))

(assert (= (and b!4259193 c!723246) b!4259194))

(assert (= (and b!4259193 (not c!723246)) b!4259195))

(declare-fun m!4845505 () Bool)

(assert (=> b!4259195 m!4845505))

(declare-fun m!4845507 () Bool)

(assert (=> b!4259195 m!4845507))

(assert (=> b!4259195 m!4845505))

(assert (=> b!4259195 m!4845507))

(declare-fun m!4845509 () Bool)

(assert (=> b!4259195 m!4845509))

(declare-fun m!4845511 () Bool)

(assert (=> b!4259194 m!4845511))

(assert (=> b!4258547 d!1252959))

(declare-fun b!4259199 () Bool)

(declare-fun e!2645150 () Bool)

(declare-fun lt!1510263 () List!47354)

(assert (=> b!4259199 (= e!2645150 (or (not (= (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))) Nil!47230)) (= lt!1510263 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))))))))

(declare-fun b!4259198 () Bool)

(declare-fun res!1750852 () Bool)

(assert (=> b!4259198 (=> (not res!1750852) (not e!2645150))))

(assert (=> b!4259198 (= res!1750852 (= (size!34581 lt!1510263) (+ (size!34581 (list!17046 (left!35012 (right!35342 (right!35342 t!4386))))) (size!34581 (list!17046 (right!35342 (right!35342 (right!35342 t!4386))))))))))

(declare-fun b!4259196 () Bool)

(declare-fun e!2645149 () List!47354)

(assert (=> b!4259196 (= e!2645149 (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))))))

(declare-fun b!4259197 () Bool)

(assert (=> b!4259197 (= e!2645149 (Cons!47230 (h!52650 (list!17046 (left!35012 (right!35342 (right!35342 t!4386))))) (++!12023 (t!353021 (list!17046 (left!35012 (right!35342 (right!35342 t!4386))))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386)))))))))

(declare-fun d!1252961 () Bool)

(assert (=> d!1252961 e!2645150))

(declare-fun res!1750853 () Bool)

(assert (=> d!1252961 (=> (not res!1750853) (not e!2645150))))

(assert (=> d!1252961 (= res!1750853 (= (content!7434 lt!1510263) ((_ map or) (content!7434 (list!17046 (left!35012 (right!35342 (right!35342 t!4386))))) (content!7434 (list!17046 (right!35342 (right!35342 (right!35342 t!4386))))))))))

(assert (=> d!1252961 (= lt!1510263 e!2645149)))

(declare-fun c!723247 () Bool)

(assert (=> d!1252961 (= c!723247 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 (right!35342 t!4386))))))))

(assert (=> d!1252961 (= (++!12023 (list!17046 (left!35012 (right!35342 (right!35342 t!4386)))) (list!17046 (right!35342 (right!35342 (right!35342 t!4386))))) lt!1510263)))

(assert (= (and d!1252961 c!723247) b!4259196))

(assert (= (and d!1252961 (not c!723247)) b!4259197))

(assert (= (and d!1252961 res!1750853) b!4259198))

(assert (= (and b!4259198 res!1750852) b!4259199))

(declare-fun m!4845513 () Bool)

(assert (=> b!4259198 m!4845513))

(assert (=> b!4259198 m!4843969))

(declare-fun m!4845515 () Bool)

(assert (=> b!4259198 m!4845515))

(assert (=> b!4259198 m!4843967))

(declare-fun m!4845517 () Bool)

(assert (=> b!4259198 m!4845517))

(assert (=> b!4259197 m!4843967))

(declare-fun m!4845519 () Bool)

(assert (=> b!4259197 m!4845519))

(declare-fun m!4845521 () Bool)

(assert (=> d!1252961 m!4845521))

(assert (=> d!1252961 m!4843969))

(declare-fun m!4845523 () Bool)

(assert (=> d!1252961 m!4845523))

(assert (=> d!1252961 m!4843967))

(declare-fun m!4845525 () Bool)

(assert (=> d!1252961 m!4845525))

(assert (=> b!4258419 d!1252961))

(assert (=> b!4258419 d!1252911))

(assert (=> b!4258419 d!1252919))

(assert (=> b!4258638 d!1252929))

(assert (=> b!4258638 d!1252931))

(declare-fun d!1252963 () Bool)

(declare-fun lt!1510264 () Int)

(assert (=> d!1252963 (>= lt!1510264 0)))

(declare-fun e!2645151 () Int)

(assert (=> d!1252963 (= lt!1510264 e!2645151)))

(declare-fun c!723248 () Bool)

(assert (=> d!1252963 (= c!723248 ((_ is Nil!47231) (t!353022 lt!1510059)))))

(assert (=> d!1252963 (= (size!34584 (t!353022 lt!1510059)) lt!1510264)))

(declare-fun b!4259200 () Bool)

(assert (=> b!4259200 (= e!2645151 0)))

(declare-fun b!4259201 () Bool)

(assert (=> b!4259201 (= e!2645151 (+ 1 (size!34584 (t!353022 (t!353022 lt!1510059)))))))

(assert (= (and d!1252963 c!723248) b!4259200))

(assert (= (and d!1252963 (not c!723248)) b!4259201))

(declare-fun m!4845527 () Bool)

(assert (=> b!4259201 m!4845527))

(assert (=> b!4258480 d!1252963))

(declare-fun d!1252965 () Bool)

(assert (=> d!1252965 (= (list!17048 (xs!17544 (left!35012 (left!35012 t!4386)))) (innerList!14298 (xs!17544 (left!35012 (left!35012 t!4386)))))))

(assert (=> b!4258586 d!1252965))

(assert (=> d!1252477 d!1252833))

(assert (=> d!1252477 d!1252859))

(declare-fun d!1252967 () Bool)

(declare-fun lt!1510265 () Int)

(assert (=> d!1252967 (>= lt!1510265 0)))

(declare-fun e!2645152 () Int)

(assert (=> d!1252967 (= lt!1510265 e!2645152)))

(declare-fun c!723249 () Bool)

(assert (=> d!1252967 (= c!723249 ((_ is Nil!47230) lt!1510159))))

(assert (=> d!1252967 (= (size!34581 lt!1510159) lt!1510265)))

(declare-fun b!4259202 () Bool)

(assert (=> b!4259202 (= e!2645152 0)))

(declare-fun b!4259203 () Bool)

(assert (=> b!4259203 (= e!2645152 (+ 1 (size!34581 (t!353021 lt!1510159))))))

(assert (= (and d!1252967 c!723249) b!4259202))

(assert (= (and d!1252967 (not c!723249)) b!4259203))

(declare-fun m!4845529 () Bool)

(assert (=> b!4259203 m!4845529))

(assert (=> b!4258728 d!1252967))

(assert (=> b!4258728 d!1252769))

(assert (=> b!4258728 d!1252407))

(assert (=> d!1252537 d!1252369))

(assert (=> d!1252537 d!1252339))

(assert (=> d!1252537 d!1252343))

(assert (=> d!1252537 d!1252345))

(assert (=> d!1252537 d!1252357))

(declare-fun b!4259204 () Bool)

(declare-fun res!1750858 () Bool)

(declare-fun e!2645153 () Bool)

(assert (=> b!4259204 (=> (not res!1750858) (not e!2645153))))

(assert (=> b!4259204 (= res!1750858 (isBalanced!3798 (left!35013 (right!35343 lt!1510093))))))

(declare-fun b!4259205 () Bool)

(declare-fun res!1750854 () Bool)

(assert (=> b!4259205 (=> (not res!1750854) (not e!2645153))))

(assert (=> b!4259205 (= res!1750854 (<= (- (height!1863 (left!35013 (right!35343 lt!1510093))) (height!1863 (right!35343 (right!35343 lt!1510093)))) 1))))

(declare-fun b!4259206 () Bool)

(declare-fun res!1750857 () Bool)

(assert (=> b!4259206 (=> (not res!1750857) (not e!2645153))))

(assert (=> b!4259206 (= res!1750857 (isBalanced!3798 (right!35343 (right!35343 lt!1510093))))))

(declare-fun b!4259207 () Bool)

(declare-fun e!2645154 () Bool)

(assert (=> b!4259207 (= e!2645154 e!2645153)))

(declare-fun res!1750856 () Bool)

(assert (=> b!4259207 (=> (not res!1750856) (not e!2645153))))

(assert (=> b!4259207 (= res!1750856 (<= (- 1) (- (height!1863 (left!35013 (right!35343 lt!1510093))) (height!1863 (right!35343 (right!35343 lt!1510093))))))))

(declare-fun b!4259208 () Bool)

(assert (=> b!4259208 (= e!2645153 (not (isEmpty!27969 (right!35343 (right!35343 lt!1510093)))))))

(declare-fun b!4259209 () Bool)

(declare-fun res!1750855 () Bool)

(assert (=> b!4259209 (=> (not res!1750855) (not e!2645153))))

(assert (=> b!4259209 (= res!1750855 (not (isEmpty!27969 (left!35013 (right!35343 lt!1510093)))))))

(declare-fun d!1252969 () Bool)

(declare-fun res!1750859 () Bool)

(assert (=> d!1252969 (=> res!1750859 e!2645154)))

(assert (=> d!1252969 (= res!1750859 (not ((_ is Node!14239) (right!35343 lt!1510093))))))

(assert (=> d!1252969 (= (isBalanced!3798 (right!35343 lt!1510093)) e!2645154)))

(assert (= (and d!1252969 (not res!1750859)) b!4259207))

(assert (= (and b!4259207 res!1750856) b!4259205))

(assert (= (and b!4259205 res!1750854) b!4259204))

(assert (= (and b!4259204 res!1750858) b!4259206))

(assert (= (and b!4259206 res!1750857) b!4259209))

(assert (= (and b!4259209 res!1750855) b!4259208))

(declare-fun m!4845531 () Bool)

(assert (=> b!4259208 m!4845531))

(declare-fun m!4845533 () Bool)

(assert (=> b!4259209 m!4845533))

(declare-fun m!4845535 () Bool)

(assert (=> b!4259207 m!4845535))

(declare-fun m!4845537 () Bool)

(assert (=> b!4259207 m!4845537))

(assert (=> b!4259205 m!4845535))

(assert (=> b!4259205 m!4845537))

(declare-fun m!4845539 () Bool)

(assert (=> b!4259204 m!4845539))

(declare-fun m!4845541 () Bool)

(assert (=> b!4259206 m!4845541))

(assert (=> b!4258628 d!1252969))

(declare-fun d!1252971 () Bool)

(declare-fun c!723250 () Bool)

(assert (=> d!1252971 (= c!723250 ((_ is Nil!47230) (t!353021 lt!1510051)))))

(declare-fun e!2645155 () (InoxSet T!79378))

(assert (=> d!1252971 (= (content!7434 (t!353021 lt!1510051)) e!2645155)))

(declare-fun b!4259210 () Bool)

(assert (=> b!4259210 (= e!2645155 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259211 () Bool)

(assert (=> b!4259211 (= e!2645155 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 (t!353021 lt!1510051)) true) (content!7434 (t!353021 (t!353021 lt!1510051)))))))

(assert (= (and d!1252971 c!723250) b!4259210))

(assert (= (and d!1252971 (not c!723250)) b!4259211))

(declare-fun m!4845543 () Bool)

(assert (=> b!4259211 m!4845543))

(declare-fun m!4845545 () Bool)

(assert (=> b!4259211 m!4845545))

(assert (=> b!4258572 d!1252971))

(assert (=> b!4258621 d!1252807))

(declare-fun d!1252973 () Bool)

(declare-fun lt!1510266 () Bool)

(assert (=> d!1252973 (= lt!1510266 (isEmpty!27968 (list!17046 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1252973 (= lt!1510266 (= (size!34585 (left!35012 (right!35342 t!4386))) 0))))

(assert (=> d!1252973 (= (isEmpty!27967 (left!35012 (right!35342 t!4386))) lt!1510266)))

(declare-fun bs!598955 () Bool)

(assert (= bs!598955 d!1252973))

(assert (=> bs!598955 m!4843795))

(assert (=> bs!598955 m!4843795))

(declare-fun m!4845547 () Bool)

(assert (=> bs!598955 m!4845547))

(assert (=> bs!598955 m!4844101))

(assert (=> b!4258486 d!1252973))

(declare-fun d!1252975 () Bool)

(declare-fun res!1750860 () Bool)

(declare-fun e!2645156 () Bool)

(assert (=> d!1252975 (=> (not res!1750860) (not e!2645156))))

(assert (=> d!1252975 (= res!1750860 (<= (size!34581 (list!17048 (xs!17544 (right!35342 (left!35012 t!4386))))) 512))))

(assert (=> d!1252975 (= (inv!62114 (right!35342 (left!35012 t!4386))) e!2645156)))

(declare-fun b!4259212 () Bool)

(declare-fun res!1750861 () Bool)

(assert (=> b!4259212 (=> (not res!1750861) (not e!2645156))))

(assert (=> b!4259212 (= res!1750861 (= (csize!28707 (right!35342 (left!35012 t!4386))) (size!34581 (list!17048 (xs!17544 (right!35342 (left!35012 t!4386)))))))))

(declare-fun b!4259213 () Bool)

(assert (=> b!4259213 (= e!2645156 (and (> (csize!28707 (right!35342 (left!35012 t!4386))) 0) (<= (csize!28707 (right!35342 (left!35012 t!4386))) 512)))))

(assert (= (and d!1252975 res!1750860) b!4259212))

(assert (= (and b!4259212 res!1750861) b!4259213))

(assert (=> d!1252975 m!4844243))

(assert (=> d!1252975 m!4844243))

(declare-fun m!4845549 () Bool)

(assert (=> d!1252975 m!4845549))

(assert (=> b!4259212 m!4844243))

(assert (=> b!4259212 m!4844243))

(assert (=> b!4259212 m!4845549))

(assert (=> b!4258478 d!1252975))

(declare-fun d!1252977 () Bool)

(declare-fun lt!1510267 () Int)

(assert (=> d!1252977 (>= lt!1510267 0)))

(declare-fun e!2645157 () Int)

(assert (=> d!1252977 (= lt!1510267 e!2645157)))

(declare-fun c!723251 () Bool)

(assert (=> d!1252977 (= c!723251 ((_ is Nil!47231) lt!1510143))))

(assert (=> d!1252977 (= (size!34584 lt!1510143) lt!1510267)))

(declare-fun b!4259214 () Bool)

(assert (=> b!4259214 (= e!2645157 0)))

(declare-fun b!4259215 () Bool)

(assert (=> b!4259215 (= e!2645157 (+ 1 (size!34584 (t!353022 lt!1510143))))))

(assert (= (and d!1252977 c!723251) b!4259214))

(assert (= (and d!1252977 (not c!723251)) b!4259215))

(declare-fun m!4845551 () Bool)

(assert (=> b!4259215 m!4845551))

(assert (=> d!1252523 d!1252977))

(declare-fun d!1252979 () Bool)

(declare-fun lt!1510268 () Int)

(assert (=> d!1252979 (>= lt!1510268 0)))

(declare-fun e!2645158 () Int)

(assert (=> d!1252979 (= lt!1510268 e!2645158)))

(declare-fun c!723252 () Bool)

(assert (=> d!1252979 (= c!723252 ((_ is Nil!47230) (list!17046 (right!35342 t!4386))))))

(assert (=> d!1252979 (= (size!34581 (list!17046 (right!35342 t!4386))) lt!1510268)))

(declare-fun b!4259216 () Bool)

(assert (=> b!4259216 (= e!2645158 0)))

(declare-fun b!4259217 () Bool)

(assert (=> b!4259217 (= e!2645158 (+ 1 (size!34581 (t!353021 (list!17046 (right!35342 t!4386))))))))

(assert (= (and d!1252979 c!723252) b!4259216))

(assert (= (and d!1252979 (not c!723252)) b!4259217))

(assert (=> b!4259217 m!4845457))

(assert (=> d!1252523 d!1252979))

(declare-fun d!1252981 () Bool)

(declare-fun c!723253 () Bool)

(assert (=> d!1252981 (= c!723253 ((_ is Node!14238) (left!35012 (left!35012 (right!35342 t!4386)))))))

(declare-fun e!2645159 () Bool)

(assert (=> d!1252981 (= (inv!62108 (left!35012 (left!35012 (right!35342 t!4386)))) e!2645159)))

(declare-fun b!4259218 () Bool)

(assert (=> b!4259218 (= e!2645159 (inv!62113 (left!35012 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4259219 () Bool)

(declare-fun e!2645160 () Bool)

(assert (=> b!4259219 (= e!2645159 e!2645160)))

(declare-fun res!1750862 () Bool)

(assert (=> b!4259219 (= res!1750862 (not ((_ is Leaf!22005) (left!35012 (left!35012 (right!35342 t!4386))))))))

(assert (=> b!4259219 (=> res!1750862 e!2645160)))

(declare-fun b!4259220 () Bool)

(assert (=> b!4259220 (= e!2645160 (inv!62114 (left!35012 (left!35012 (right!35342 t!4386)))))))

(assert (= (and d!1252981 c!723253) b!4259218))

(assert (= (and d!1252981 (not c!723253)) b!4259219))

(assert (= (and b!4259219 (not res!1750862)) b!4259220))

(declare-fun m!4845553 () Bool)

(assert (=> b!4259218 m!4845553))

(declare-fun m!4845555 () Bool)

(assert (=> b!4259220 m!4845555))

(assert (=> b!4258739 d!1252981))

(declare-fun d!1252983 () Bool)

(declare-fun c!723254 () Bool)

(assert (=> d!1252983 (= c!723254 ((_ is Node!14238) (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun e!2645161 () Bool)

(assert (=> d!1252983 (= (inv!62108 (right!35342 (left!35012 (right!35342 t!4386)))) e!2645161)))

(declare-fun b!4259221 () Bool)

(assert (=> b!4259221 (= e!2645161 (inv!62113 (right!35342 (left!35012 (right!35342 t!4386)))))))

(declare-fun b!4259222 () Bool)

(declare-fun e!2645162 () Bool)

(assert (=> b!4259222 (= e!2645161 e!2645162)))

(declare-fun res!1750863 () Bool)

(assert (=> b!4259222 (= res!1750863 (not ((_ is Leaf!22005) (right!35342 (left!35012 (right!35342 t!4386))))))))

(assert (=> b!4259222 (=> res!1750863 e!2645162)))

(declare-fun b!4259223 () Bool)

(assert (=> b!4259223 (= e!2645162 (inv!62114 (right!35342 (left!35012 (right!35342 t!4386)))))))

(assert (= (and d!1252983 c!723254) b!4259221))

(assert (= (and d!1252983 (not c!723254)) b!4259222))

(assert (= (and b!4259222 (not res!1750863)) b!4259223))

(declare-fun m!4845557 () Bool)

(assert (=> b!4259221 m!4845557))

(declare-fun m!4845559 () Bool)

(assert (=> b!4259223 m!4845559))

(assert (=> b!4258739 d!1252983))

(declare-fun d!1252985 () Bool)

(declare-fun lt!1510269 () Int)

(assert (=> d!1252985 (>= lt!1510269 0)))

(declare-fun e!2645163 () Int)

(assert (=> d!1252985 (= lt!1510269 e!2645163)))

(declare-fun c!723255 () Bool)

(assert (=> d!1252985 (= c!723255 ((_ is Nil!47230) lt!1510150))))

(assert (=> d!1252985 (= (size!34581 lt!1510150) lt!1510269)))

(declare-fun b!4259224 () Bool)

(assert (=> b!4259224 (= e!2645163 0)))

(declare-fun b!4259225 () Bool)

(assert (=> b!4259225 (= e!2645163 (+ 1 (size!34581 (t!353021 lt!1510150))))))

(assert (= (and d!1252985 c!723255) b!4259224))

(assert (= (and d!1252985 (not c!723255)) b!4259225))

(declare-fun m!4845561 () Bool)

(assert (=> b!4259225 m!4845561))

(assert (=> b!4258675 d!1252985))

(declare-fun d!1252987 () Bool)

(declare-fun lt!1510270 () Int)

(assert (=> d!1252987 (>= lt!1510270 0)))

(declare-fun e!2645164 () Int)

(assert (=> d!1252987 (= lt!1510270 e!2645164)))

(declare-fun c!723256 () Bool)

(assert (=> d!1252987 (= c!723256 ((_ is Nil!47230) (list!17046 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1252987 (= (size!34581 (list!17046 (left!35012 (left!35012 t!4386)))) lt!1510270)))

(declare-fun b!4259226 () Bool)

(assert (=> b!4259226 (= e!2645164 0)))

(declare-fun b!4259227 () Bool)

(assert (=> b!4259227 (= e!2645164 (+ 1 (size!34581 (t!353021 (list!17046 (left!35012 (left!35012 t!4386)))))))))

(assert (= (and d!1252987 c!723256) b!4259226))

(assert (= (and d!1252987 (not c!723256)) b!4259227))

(assert (=> b!4259227 m!4844877))

(assert (=> b!4258675 d!1252987))

(declare-fun d!1252989 () Bool)

(declare-fun lt!1510271 () Int)

(assert (=> d!1252989 (>= lt!1510271 0)))

(declare-fun e!2645165 () Int)

(assert (=> d!1252989 (= lt!1510271 e!2645165)))

(declare-fun c!723257 () Bool)

(assert (=> d!1252989 (= c!723257 ((_ is Nil!47230) (list!17046 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252989 (= (size!34581 (list!17046 (right!35342 (left!35012 t!4386)))) lt!1510271)))

(declare-fun b!4259228 () Bool)

(assert (=> b!4259228 (= e!2645165 0)))

(declare-fun b!4259229 () Bool)

(assert (=> b!4259229 (= e!2645165 (+ 1 (size!34581 (t!353021 (list!17046 (right!35342 (left!35012 t!4386)))))))))

(assert (= (and d!1252989 c!723257) b!4259228))

(assert (= (and d!1252989 (not c!723257)) b!4259229))

(declare-fun m!4845563 () Bool)

(assert (=> b!4259229 m!4845563))

(assert (=> b!4258675 d!1252989))

(declare-fun b!4259230 () Bool)

(declare-fun res!1750868 () Bool)

(declare-fun e!2645166 () Bool)

(assert (=> b!4259230 (=> (not res!1750868) (not e!2645166))))

(assert (=> b!4259230 (= res!1750868 (isBalanced!3798 (left!35013 (left!35013 lt!1510095))))))

(declare-fun b!4259231 () Bool)

(declare-fun res!1750864 () Bool)

(assert (=> b!4259231 (=> (not res!1750864) (not e!2645166))))

(assert (=> b!4259231 (= res!1750864 (<= (- (height!1863 (left!35013 (left!35013 lt!1510095))) (height!1863 (right!35343 (left!35013 lt!1510095)))) 1))))

(declare-fun b!4259232 () Bool)

(declare-fun res!1750867 () Bool)

(assert (=> b!4259232 (=> (not res!1750867) (not e!2645166))))

(assert (=> b!4259232 (= res!1750867 (isBalanced!3798 (right!35343 (left!35013 lt!1510095))))))

(declare-fun b!4259233 () Bool)

(declare-fun e!2645167 () Bool)

(assert (=> b!4259233 (= e!2645167 e!2645166)))

(declare-fun res!1750866 () Bool)

(assert (=> b!4259233 (=> (not res!1750866) (not e!2645166))))

(assert (=> b!4259233 (= res!1750866 (<= (- 1) (- (height!1863 (left!35013 (left!35013 lt!1510095))) (height!1863 (right!35343 (left!35013 lt!1510095))))))))

(declare-fun b!4259234 () Bool)

(assert (=> b!4259234 (= e!2645166 (not (isEmpty!27969 (right!35343 (left!35013 lt!1510095)))))))

(declare-fun b!4259235 () Bool)

(declare-fun res!1750865 () Bool)

(assert (=> b!4259235 (=> (not res!1750865) (not e!2645166))))

(assert (=> b!4259235 (= res!1750865 (not (isEmpty!27969 (left!35013 (left!35013 lt!1510095)))))))

(declare-fun d!1252991 () Bool)

(declare-fun res!1750869 () Bool)

(assert (=> d!1252991 (=> res!1750869 e!2645167)))

(assert (=> d!1252991 (= res!1750869 (not ((_ is Node!14239) (left!35013 lt!1510095))))))

(assert (=> d!1252991 (= (isBalanced!3798 (left!35013 lt!1510095)) e!2645167)))

(assert (= (and d!1252991 (not res!1750869)) b!4259233))

(assert (= (and b!4259233 res!1750866) b!4259231))

(assert (= (and b!4259231 res!1750864) b!4259230))

(assert (= (and b!4259230 res!1750868) b!4259232))

(assert (= (and b!4259232 res!1750867) b!4259235))

(assert (= (and b!4259235 res!1750865) b!4259234))

(declare-fun m!4845565 () Bool)

(assert (=> b!4259234 m!4845565))

(declare-fun m!4845567 () Bool)

(assert (=> b!4259235 m!4845567))

(declare-fun m!4845569 () Bool)

(assert (=> b!4259233 m!4845569))

(declare-fun m!4845571 () Bool)

(assert (=> b!4259233 m!4845571))

(assert (=> b!4259231 m!4845569))

(assert (=> b!4259231 m!4845571))

(declare-fun m!4845573 () Bool)

(assert (=> b!4259230 m!4845573))

(declare-fun m!4845575 () Bool)

(assert (=> b!4259232 m!4845575))

(assert (=> b!4258449 d!1252991))

(declare-fun d!1252993 () Bool)

(assert (=> d!1252993 (= ($colon$colon!627 (map!9657 (t!353021 (t!353021 lt!1510051)) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510051)))) (Cons!47231 (dynLambda!20215 f!428 (h!52650 (t!353021 lt!1510051))) (map!9657 (t!353021 (t!353021 lt!1510051)) f!428)))))

(assert (=> b!4258654 d!1252993))

(declare-fun d!1252995 () Bool)

(declare-fun lt!1510272 () List!47355)

(assert (=> d!1252995 (= (size!34584 lt!1510272) (size!34581 (t!353021 (t!353021 lt!1510051))))))

(declare-fun e!2645168 () List!47355)

(assert (=> d!1252995 (= lt!1510272 e!2645168)))

(declare-fun c!723258 () Bool)

(assert (=> d!1252995 (= c!723258 ((_ is Nil!47230) (t!353021 (t!353021 lt!1510051))))))

(assert (=> d!1252995 (= (map!9657 (t!353021 (t!353021 lt!1510051)) f!428) lt!1510272)))

(declare-fun b!4259236 () Bool)

(assert (=> b!4259236 (= e!2645168 Nil!47231)))

(declare-fun b!4259237 () Bool)

(assert (=> b!4259237 (= e!2645168 ($colon$colon!627 (map!9657 (t!353021 (t!353021 (t!353021 lt!1510051))) f!428) (dynLambda!20215 f!428 (h!52650 (t!353021 (t!353021 lt!1510051))))))))

(assert (= (and d!1252995 c!723258) b!4259236))

(assert (= (and d!1252995 (not c!723258)) b!4259237))

(declare-fun b_lambda!125543 () Bool)

(assert (=> (not b_lambda!125543) (not b!4259237)))

(declare-fun t!353096 () Bool)

(declare-fun tb!256819 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353096) tb!256819))

(declare-fun result!313360 () Bool)

(assert (=> tb!256819 (= result!313360 tp_is_empty!22857)))

(assert (=> b!4259237 t!353096))

(declare-fun b_and!337617 () Bool)

(assert (= b_and!337615 (and (=> t!353096 result!313360) b_and!337617)))

(declare-fun m!4845577 () Bool)

(assert (=> d!1252995 m!4845577))

(assert (=> d!1252995 m!4844747))

(declare-fun m!4845579 () Bool)

(assert (=> b!4259237 m!4845579))

(declare-fun m!4845581 () Bool)

(assert (=> b!4259237 m!4845581))

(assert (=> b!4259237 m!4845579))

(assert (=> b!4259237 m!4845581))

(declare-fun m!4845583 () Bool)

(assert (=> b!4259237 m!4845583))

(assert (=> b!4258654 d!1252995))

(declare-fun d!1252997 () Bool)

(declare-fun lt!1510273 () Bool)

(assert (=> d!1252997 (= lt!1510273 (isEmpty!27972 (list!17050 (right!35343 lt!1510095))))))

(assert (=> d!1252997 (= lt!1510273 (= (size!34587 (right!35343 lt!1510095)) 0))))

(assert (=> d!1252997 (= (isEmpty!27969 (right!35343 lt!1510095)) lt!1510273)))

(declare-fun bs!598956 () Bool)

(assert (= bs!598956 d!1252997))

(assert (=> bs!598956 m!4844315))

(assert (=> bs!598956 m!4844315))

(declare-fun m!4845585 () Bool)

(assert (=> bs!598956 m!4845585))

(declare-fun m!4845587 () Bool)

(assert (=> bs!598956 m!4845587))

(assert (=> b!4258453 d!1252997))

(assert (=> b!4258559 d!1252769))

(declare-fun d!1252999 () Bool)

(declare-fun lt!1510274 () Bool)

(assert (=> d!1252999 (= lt!1510274 (isEmpty!27968 (list!17046 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1252999 (= lt!1510274 (= (size!34585 (right!35342 (left!35012 t!4386))) 0))))

(assert (=> d!1252999 (= (isEmpty!27967 (right!35342 (left!35012 t!4386))) lt!1510274)))

(declare-fun bs!598957 () Bool)

(assert (= bs!598957 d!1252999))

(assert (=> bs!598957 m!4843863))

(assert (=> bs!598957 m!4843863))

(declare-fun m!4845589 () Bool)

(assert (=> bs!598957 m!4845589))

(assert (=> bs!598957 m!4844377))

(assert (=> b!4258468 d!1252999))

(declare-fun d!1253001 () Bool)

(declare-fun lt!1510275 () Int)

(assert (=> d!1253001 (= lt!1510275 (size!34581 (list!17046 (left!35012 (left!35012 t!4386)))))))

(assert (=> d!1253001 (= lt!1510275 (ite ((_ is Empty!14238) (left!35012 (left!35012 t!4386))) 0 (ite ((_ is Leaf!22005) (left!35012 (left!35012 t!4386))) (csize!28707 (left!35012 (left!35012 t!4386))) (csize!28706 (left!35012 (left!35012 t!4386))))))))

(assert (=> d!1253001 (= (size!34585 (left!35012 (left!35012 t!4386))) lt!1510275)))

(declare-fun bs!598958 () Bool)

(assert (= bs!598958 d!1253001))

(assert (=> bs!598958 m!4843861))

(assert (=> bs!598958 m!4843861))

(assert (=> bs!598958 m!4844411))

(assert (=> d!1252533 d!1253001))

(declare-fun d!1253003 () Bool)

(declare-fun lt!1510276 () Int)

(assert (=> d!1253003 (= lt!1510276 (size!34581 (list!17046 (right!35342 (left!35012 t!4386)))))))

(assert (=> d!1253003 (= lt!1510276 (ite ((_ is Empty!14238) (right!35342 (left!35012 t!4386))) 0 (ite ((_ is Leaf!22005) (right!35342 (left!35012 t!4386))) (csize!28707 (right!35342 (left!35012 t!4386))) (csize!28706 (right!35342 (left!35012 t!4386))))))))

(assert (=> d!1253003 (= (size!34585 (right!35342 (left!35012 t!4386))) lt!1510276)))

(declare-fun bs!598959 () Bool)

(assert (= bs!598959 d!1253003))

(assert (=> bs!598959 m!4843863))

(assert (=> bs!598959 m!4843863))

(assert (=> bs!598959 m!4844413))

(assert (=> d!1252533 d!1253003))

(assert (=> b!4258472 d!1252747))

(declare-fun d!1253005 () Bool)

(declare-fun res!1750870 () Bool)

(declare-fun e!2645169 () Bool)

(assert (=> d!1253005 (=> (not res!1750870) (not e!2645169))))

(assert (=> d!1253005 (= res!1750870 (<= (size!34581 (list!17048 (xs!17544 (left!35012 (left!35012 t!4386))))) 512))))

(assert (=> d!1253005 (= (inv!62114 (left!35012 (left!35012 t!4386))) e!2645169)))

(declare-fun b!4259238 () Bool)

(declare-fun res!1750871 () Bool)

(assert (=> b!4259238 (=> (not res!1750871) (not e!2645169))))

(assert (=> b!4259238 (= res!1750871 (= (csize!28707 (left!35012 (left!35012 t!4386))) (size!34581 (list!17048 (xs!17544 (left!35012 (left!35012 t!4386)))))))))

(declare-fun b!4259239 () Bool)

(assert (=> b!4259239 (= e!2645169 (and (> (csize!28707 (left!35012 (left!35012 t!4386))) 0) (<= (csize!28707 (left!35012 (left!35012 t!4386))) 512)))))

(assert (= (and d!1253005 res!1750870) b!4259238))

(assert (= (and b!4259238 res!1750871) b!4259239))

(assert (=> d!1253005 m!4844205))

(assert (=> d!1253005 m!4844205))

(declare-fun m!4845591 () Bool)

(assert (=> d!1253005 m!4845591))

(assert (=> b!4259238 m!4844205))

(assert (=> b!4259238 m!4844205))

(assert (=> b!4259238 m!4845591))

(assert (=> b!4258475 d!1253005))

(declare-fun d!1253007 () Bool)

(declare-fun c!723259 () Bool)

(assert (=> d!1253007 (= c!723259 ((_ is Nil!47230) lt!1510159))))

(declare-fun e!2645170 () (InoxSet T!79378))

(assert (=> d!1253007 (= (content!7434 lt!1510159) e!2645170)))

(declare-fun b!4259240 () Bool)

(assert (=> b!4259240 (= e!2645170 ((as const (Array T!79378 Bool)) false))))

(declare-fun b!4259241 () Bool)

(assert (=> b!4259241 (= e!2645170 ((_ map or) (store ((as const (Array T!79378 Bool)) false) (h!52650 lt!1510159) true) (content!7434 (t!353021 lt!1510159))))))

(assert (= (and d!1253007 c!723259) b!4259240))

(assert (= (and d!1253007 (not c!723259)) b!4259241))

(declare-fun m!4845593 () Bool)

(assert (=> b!4259241 m!4845593))

(declare-fun m!4845595 () Bool)

(assert (=> b!4259241 m!4845595))

(assert (=> d!1252583 d!1253007))

(assert (=> d!1252583 d!1252739))

(assert (=> d!1252583 d!1252483))

(declare-fun d!1253009 () Bool)

(declare-fun lt!1510277 () List!47355)

(assert (=> d!1253009 (= (size!34584 lt!1510277) (size!34581 (list!17048 (xs!17544 (right!35342 t!4386)))))))

(declare-fun e!2645171 () List!47355)

(assert (=> d!1253009 (= lt!1510277 e!2645171)))

(declare-fun c!723260 () Bool)

(assert (=> d!1253009 (= c!723260 ((_ is Nil!47230) (list!17048 (xs!17544 (right!35342 t!4386)))))))

(assert (=> d!1253009 (= (map!9657 (list!17048 (xs!17544 (right!35342 t!4386))) f!428) lt!1510277)))

(declare-fun b!4259242 () Bool)

(assert (=> b!4259242 (= e!2645171 Nil!47231)))

(declare-fun b!4259243 () Bool)

(assert (=> b!4259243 (= e!2645171 ($colon$colon!627 (map!9657 (t!353021 (list!17048 (xs!17544 (right!35342 t!4386)))) f!428) (dynLambda!20215 f!428 (h!52650 (list!17048 (xs!17544 (right!35342 t!4386)))))))))

(assert (= (and d!1253009 c!723260) b!4259242))

(assert (= (and d!1253009 (not c!723260)) b!4259243))

(declare-fun b_lambda!125545 () Bool)

(assert (=> (not b_lambda!125545) (not b!4259243)))

(declare-fun t!353098 () Bool)

(declare-fun tb!256821 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353098) tb!256821))

(declare-fun result!313362 () Bool)

(assert (=> tb!256821 (= result!313362 tp_is_empty!22857)))

(assert (=> b!4259243 t!353098))

(declare-fun b_and!337619 () Bool)

(assert (= b_and!337617 (and (=> t!353098 result!313362) b_and!337619)))

(declare-fun m!4845597 () Bool)

(assert (=> d!1253009 m!4845597))

(assert (=> d!1253009 m!4843793))

(assert (=> d!1253009 m!4844045))

(declare-fun m!4845599 () Bool)

(assert (=> b!4259243 m!4845599))

(declare-fun m!4845601 () Bool)

(assert (=> b!4259243 m!4845601))

(assert (=> b!4259243 m!4845599))

(assert (=> b!4259243 m!4845601))

(declare-fun m!4845603 () Bool)

(assert (=> b!4259243 m!4845603))

(assert (=> d!1252451 d!1253009))

(assert (=> d!1252451 d!1252391))

(declare-fun d!1253011 () Bool)

(declare-fun _$10!119 () IArray!28483)

(assert (=> d!1253011 (= _$10!119 (IArray!28484 (map!9657 (list!17048 (xs!17544 (right!35342 t!4386))) f!428)))))

(declare-fun e!2645172 () Bool)

(assert (=> d!1253011 (and (inv!62119 _$10!119) e!2645172)))

(assert (=> d!1253011 (= (choose!25979 (xs!17544 (right!35342 t!4386)) f!428) _$10!119)))

(declare-fun b!4259244 () Bool)

(declare-fun tp!1306724 () Bool)

(assert (=> b!4259244 (= e!2645172 tp!1306724)))

(assert (= d!1253011 b!4259244))

(assert (=> d!1253011 m!4843793))

(assert (=> d!1253011 m!4843793))

(assert (=> d!1253011 m!4844123))

(declare-fun m!4845605 () Bool)

(assert (=> d!1253011 m!4845605))

(assert (=> d!1252451 d!1253011))

(declare-fun d!1253013 () Bool)

(declare-fun lt!1510278 () Int)

(assert (=> d!1253013 (>= lt!1510278 0)))

(declare-fun e!2645173 () Int)

(assert (=> d!1253013 (= lt!1510278 e!2645173)))

(declare-fun c!723261 () Bool)

(assert (=> d!1253013 (= c!723261 ((_ is Nil!47230) lt!1510121))))

(assert (=> d!1253013 (= (size!34581 lt!1510121) lt!1510278)))

(declare-fun b!4259245 () Bool)

(assert (=> b!4259245 (= e!2645173 0)))

(declare-fun b!4259246 () Bool)

(assert (=> b!4259246 (= e!2645173 (+ 1 (size!34581 (t!353021 lt!1510121))))))

(assert (= (and d!1253013 c!723261) b!4259245))

(assert (= (and d!1253013 (not c!723261)) b!4259246))

(declare-fun m!4845607 () Bool)

(assert (=> b!4259246 m!4845607))

(assert (=> b!4258516 d!1253013))

(declare-fun d!1253015 () Bool)

(declare-fun lt!1510279 () Int)

(assert (=> d!1253015 (>= lt!1510279 0)))

(declare-fun e!2645174 () Int)

(assert (=> d!1253015 (= lt!1510279 e!2645174)))

(declare-fun c!723262 () Bool)

(assert (=> d!1253015 (= c!723262 ((_ is Nil!47230) (list!17046 (left!35012 (right!35342 t!4386)))))))

(assert (=> d!1253015 (= (size!34581 (list!17046 (left!35012 (right!35342 t!4386)))) lt!1510279)))

(declare-fun b!4259247 () Bool)

(assert (=> b!4259247 (= e!2645174 0)))

(declare-fun b!4259248 () Bool)

(assert (=> b!4259248 (= e!2645174 (+ 1 (size!34581 (t!353021 (list!17046 (left!35012 (right!35342 t!4386)))))))))

(assert (= (and d!1253015 c!723262) b!4259247))

(assert (= (and d!1253015 (not c!723262)) b!4259248))

(assert (=> b!4259248 m!4844901))

(assert (=> b!4258516 d!1253015))

(declare-fun d!1253017 () Bool)

(declare-fun lt!1510280 () Int)

(assert (=> d!1253017 (>= lt!1510280 0)))

(declare-fun e!2645175 () Int)

(assert (=> d!1253017 (= lt!1510280 e!2645175)))

(declare-fun c!723263 () Bool)

(assert (=> d!1253017 (= c!723263 ((_ is Nil!47230) (list!17046 (right!35342 (right!35342 t!4386)))))))

(assert (=> d!1253017 (= (size!34581 (list!17046 (right!35342 (right!35342 t!4386)))) lt!1510280)))

(declare-fun b!4259249 () Bool)

(assert (=> b!4259249 (= e!2645175 0)))

(declare-fun b!4259250 () Bool)

(assert (=> b!4259250 (= e!2645175 (+ 1 (size!34581 (t!353021 (list!17046 (right!35342 (right!35342 t!4386)))))))))

(assert (= (and d!1253017 c!723263) b!4259249))

(assert (= (and d!1253017 (not c!723263)) b!4259250))

(declare-fun m!4845609 () Bool)

(assert (=> b!4259250 m!4845609))

(assert (=> b!4258516 d!1253017))

(declare-fun b!4259252 () Bool)

(declare-fun e!2645176 () List!47355)

(assert (=> b!4259252 (= e!2645176 (Cons!47231 (h!52651 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)) (++!12024 (t!353022 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)) (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428))))))

(declare-fun lt!1510281 () List!47355)

(declare-fun e!2645177 () Bool)

(declare-fun b!4259254 () Bool)

(assert (=> b!4259254 (= e!2645177 (or (not (= (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428) Nil!47231)) (= lt!1510281 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428))))))

(declare-fun b!4259251 () Bool)

(assert (=> b!4259251 (= e!2645176 (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428))))

(declare-fun b!4259253 () Bool)

(declare-fun res!1750873 () Bool)

(assert (=> b!4259253 (=> (not res!1750873) (not e!2645177))))

(assert (=> b!4259253 (= res!1750873 (= (size!34584 lt!1510281) (+ (size!34584 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)) (size!34584 (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)))))))

(declare-fun d!1253019 () Bool)

(assert (=> d!1253019 e!2645177))

(declare-fun res!1750872 () Bool)

(assert (=> d!1253019 (=> (not res!1750872) (not e!2645177))))

(assert (=> d!1253019 (= res!1750872 (= (content!7436 lt!1510281) ((_ map or) (content!7436 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)) (content!7436 (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)))))))

(assert (=> d!1253019 (= lt!1510281 e!2645176)))

(declare-fun c!723264 () Bool)

(assert (=> d!1253019 (= c!723264 ((_ is Nil!47231) (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428)))))

(assert (=> d!1253019 (= (++!12024 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)) lt!1510281)))

(assert (= (and d!1253019 c!723264) b!4259251))

(assert (= (and d!1253019 (not c!723264)) b!4259252))

(assert (= (and d!1253019 res!1750872) b!4259253))

(assert (= (and b!4259253 res!1750873) b!4259254))

(assert (=> b!4259252 m!4843979))

(declare-fun m!4845611 () Bool)

(assert (=> b!4259252 m!4845611))

(declare-fun m!4845613 () Bool)

(assert (=> b!4259253 m!4845613))

(assert (=> b!4259253 m!4844007))

(declare-fun m!4845615 () Bool)

(assert (=> b!4259253 m!4845615))

(assert (=> b!4259253 m!4843979))

(declare-fun m!4845617 () Bool)

(assert (=> b!4259253 m!4845617))

(declare-fun m!4845619 () Bool)

(assert (=> d!1253019 m!4845619))

(assert (=> d!1253019 m!4844007))

(declare-fun m!4845621 () Bool)

(assert (=> d!1253019 m!4845621))

(assert (=> d!1253019 m!4843979))

(declare-fun m!4845623 () Bool)

(assert (=> d!1253019 m!4845623))

(assert (=> d!1252403 d!1253019))

(assert (=> d!1252403 d!1252779))

(declare-fun d!1253021 () Bool)

(declare-fun lt!1510282 () List!47355)

(assert (=> d!1253021 (= (size!34584 lt!1510282) (size!34581 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))))))))

(declare-fun e!2645178 () List!47355)

(assert (=> d!1253021 (= lt!1510282 e!2645178)))

(declare-fun c!723265 () Bool)

(assert (=> d!1253021 (= c!723265 ((_ is Nil!47230) (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))))))))

(assert (=> d!1253021 (= (map!9657 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386)))) f!428) lt!1510282)))

(declare-fun b!4259255 () Bool)

(assert (=> b!4259255 (= e!2645178 Nil!47231)))

(declare-fun b!4259256 () Bool)

(assert (=> b!4259256 (= e!2645178 ($colon$colon!627 (map!9657 (t!353021 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))))) f!428) (dynLambda!20215 f!428 (h!52650 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))))))))))

(assert (= (and d!1253021 c!723265) b!4259255))

(assert (= (and d!1253021 (not c!723265)) b!4259256))

(declare-fun b_lambda!125547 () Bool)

(assert (=> (not b_lambda!125547) (not b!4259256)))

(declare-fun t!353100 () Bool)

(declare-fun tb!256823 () Bool)

(assert (=> (and start!408054 (= f!428 f!428) t!353100) tb!256823))

(declare-fun result!313364 () Bool)

(assert (=> tb!256823 (= result!313364 tp_is_empty!22857)))

(assert (=> b!4259256 t!353100))

(declare-fun b_and!337621 () Bool)

(assert (= b_and!337619 (and (=> t!353100 result!313364) b_and!337621)))

(declare-fun m!4845625 () Bool)

(assert (=> d!1253021 m!4845625))

(assert (=> d!1253021 m!4843799))

(declare-fun m!4845627 () Bool)

(assert (=> d!1253021 m!4845627))

(declare-fun m!4845629 () Bool)

(assert (=> b!4259256 m!4845629))

(declare-fun m!4845631 () Bool)

(assert (=> b!4259256 m!4845631))

(assert (=> b!4259256 m!4845629))

(assert (=> b!4259256 m!4845631))

(declare-fun m!4845633 () Bool)

(assert (=> b!4259256 m!4845633))

(assert (=> d!1252403 d!1253021))

(assert (=> d!1252403 d!1252445))

(declare-fun d!1253023 () Bool)

(assert (=> d!1253023 (= (map!9657 (++!12023 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386)))) f!428) (++!12024 (map!9657 (list!17046 (left!35012 (right!35342 t!4386))) f!428) (map!9657 (list!17046 (right!35342 (right!35342 t!4386))) f!428)))))

(assert (=> d!1253023 true))

(declare-fun _$82!93 () Unit!66127)

(assert (=> d!1253023 (= (choose!25978 (list!17046 (left!35012 (right!35342 t!4386))) (list!17046 (right!35342 (right!35342 t!4386))) f!428) _$82!93)))

(declare-fun bs!598960 () Bool)

(assert (= bs!598960 d!1253023))

(assert (=> bs!598960 m!4843795))

(assert (=> bs!598960 m!4844007))

(assert (=> bs!598960 m!4843799))

(assert (=> bs!598960 m!4844019))

(assert (=> bs!598960 m!4843797))

(assert (=> bs!598960 m!4843979))

(assert (=> bs!598960 m!4844007))

(assert (=> bs!598960 m!4843979))

(assert (=> bs!598960 m!4844015))

(assert (=> bs!598960 m!4843795))

(assert (=> bs!598960 m!4843797))

(assert (=> bs!598960 m!4843799))

(assert (=> d!1252403 d!1253023))

(assert (=> d!1252403 d!1252793))

(assert (=> b!4258717 d!1252733))

(declare-fun d!1253025 () Bool)

(assert (=> d!1253025 (= (list!17051 (xs!17545 lt!1510093)) (innerList!14299 (xs!17545 lt!1510093)))))

(assert (=> b!4258546 d!1253025))

(declare-fun d!1253027 () Bool)

(declare-fun lt!1510283 () Int)

(assert (=> d!1253027 (>= lt!1510283 0)))

(declare-fun e!2645179 () Int)

(assert (=> d!1253027 (= lt!1510283 e!2645179)))

(declare-fun c!723266 () Bool)

(assert (=> d!1253027 (= c!723266 ((_ is Nil!47230) (innerList!14298 (xs!17544 (left!35012 t!4386)))))))

(assert (=> d!1253027 (= (size!34581 (innerList!14298 (xs!17544 (left!35012 t!4386)))) lt!1510283)))

(declare-fun b!4259257 () Bool)

(assert (=> b!4259257 (= e!2645179 0)))

(declare-fun b!4259258 () Bool)

(assert (=> b!4259258 (= e!2645179 (+ 1 (size!34581 (t!353021 (innerList!14298 (xs!17544 (left!35012 t!4386)))))))))

(assert (= (and d!1253027 c!723266) b!4259257))

(assert (= (and d!1253027 (not c!723266)) b!4259258))

(declare-fun m!4845635 () Bool)

(assert (=> b!4259258 m!4845635))

(assert (=> d!1252475 d!1253027))

(declare-fun d!1253029 () Bool)

(assert (=> d!1253029 (= (inv!62109 (xs!17544 (right!35342 (left!35012 t!4386)))) (<= (size!34581 (innerList!14298 (xs!17544 (right!35342 (left!35012 t!4386))))) 2147483647))))

(declare-fun bs!598961 () Bool)

(assert (= bs!598961 d!1253029))

(declare-fun m!4845637 () Bool)

(assert (=> bs!598961 m!4845637))

(assert (=> b!4258737 d!1253029))

(declare-fun b!4259259 () Bool)

(declare-fun e!2645181 () Bool)

(declare-fun tp!1306725 () Bool)

(declare-fun tp!1306727 () Bool)

(assert (=> b!4259259 (= e!2645181 (and (inv!62108 (left!35012 (left!35012 (left!35012 (right!35342 t!4386))))) tp!1306727 (inv!62108 (right!35342 (left!35012 (left!35012 (right!35342 t!4386))))) tp!1306725))))

(declare-fun b!4259261 () Bool)

(declare-fun e!2645180 () Bool)

(declare-fun tp!1306726 () Bool)

(assert (=> b!4259261 (= e!2645180 tp!1306726)))

(declare-fun b!4259260 () Bool)

(assert (=> b!4259260 (= e!2645181 (and (inv!62109 (xs!17544 (left!35012 (left!35012 (right!35342 t!4386))))) e!2645180))))

(assert (=> b!4258739 (= tp!1306702 (and (inv!62108 (left!35012 (left!35012 (right!35342 t!4386)))) e!2645181))))

(assert (= (and b!4258739 ((_ is Node!14238) (left!35012 (left!35012 (right!35342 t!4386))))) b!4259259))

(assert (= b!4259260 b!4259261))

(assert (= (and b!4258739 ((_ is Leaf!22005) (left!35012 (left!35012 (right!35342 t!4386))))) b!4259260))

(declare-fun m!4845639 () Bool)

(assert (=> b!4259259 m!4845639))

(declare-fun m!4845641 () Bool)

(assert (=> b!4259259 m!4845641))

(declare-fun m!4845643 () Bool)

(assert (=> b!4259260 m!4845643))

(assert (=> b!4258739 m!4844517))

(declare-fun tp!1306730 () Bool)

(declare-fun b!4259262 () Bool)

(declare-fun e!2645183 () Bool)

(declare-fun tp!1306728 () Bool)

(assert (=> b!4259262 (= e!2645183 (and (inv!62108 (left!35012 (right!35342 (left!35012 (right!35342 t!4386))))) tp!1306730 (inv!62108 (right!35342 (right!35342 (left!35012 (right!35342 t!4386))))) tp!1306728))))

(declare-fun b!4259264 () Bool)

(declare-fun e!2645182 () Bool)

(declare-fun tp!1306729 () Bool)

(assert (=> b!4259264 (= e!2645182 tp!1306729)))

(declare-fun b!4259263 () Bool)

(assert (=> b!4259263 (= e!2645183 (and (inv!62109 (xs!17544 (right!35342 (left!35012 (right!35342 t!4386))))) e!2645182))))

(assert (=> b!4258739 (= tp!1306700 (and (inv!62108 (right!35342 (left!35012 (right!35342 t!4386)))) e!2645183))))

(assert (= (and b!4258739 ((_ is Node!14238) (right!35342 (left!35012 (right!35342 t!4386))))) b!4259262))

(assert (= b!4259263 b!4259264))

(assert (= (and b!4258739 ((_ is Leaf!22005) (right!35342 (left!35012 (right!35342 t!4386))))) b!4259263))

(declare-fun m!4845645 () Bool)

(assert (=> b!4259262 m!4845645))

(declare-fun m!4845647 () Bool)

(assert (=> b!4259262 m!4845647))

(declare-fun m!4845649 () Bool)

(assert (=> b!4259263 m!4845649))

(assert (=> b!4258739 m!4844519))

(declare-fun b!4259265 () Bool)

(declare-fun e!2645184 () Bool)

(declare-fun tp!1306731 () Bool)

(assert (=> b!4259265 (= e!2645184 (and tp_is_empty!22861 tp!1306731))))

(assert (=> b!4258730 (= tp!1306691 e!2645184)))

(assert (= (and b!4258730 ((_ is Cons!47230) (t!353021 (innerList!14298 (xs!17544 (left!35012 t!4386)))))) b!4259265))

(declare-fun b!4259266 () Bool)

(declare-fun e!2645185 () Bool)

(declare-fun tp!1306732 () Bool)

(assert (=> b!4259266 (= e!2645185 (and tp_is_empty!22861 tp!1306732))))

(assert (=> b!4258741 (= tp!1306701 e!2645185)))

(assert (= (and b!4258741 ((_ is Cons!47230) (innerList!14298 (xs!17544 (left!35012 (right!35342 t!4386)))))) b!4259266))

(declare-fun e!2645187 () Bool)

(declare-fun tp!1306733 () Bool)

(declare-fun b!4259267 () Bool)

(declare-fun tp!1306735 () Bool)

(assert (=> b!4259267 (= e!2645187 (and (inv!62108 (left!35012 (left!35012 (left!35012 (left!35012 t!4386))))) tp!1306735 (inv!62108 (right!35342 (left!35012 (left!35012 (left!35012 t!4386))))) tp!1306733))))

(declare-fun b!4259269 () Bool)

(declare-fun e!2645186 () Bool)

(declare-fun tp!1306734 () Bool)

(assert (=> b!4259269 (= e!2645186 tp!1306734)))

(declare-fun b!4259268 () Bool)

(assert (=> b!4259268 (= e!2645187 (and (inv!62109 (xs!17544 (left!35012 (left!35012 (left!35012 t!4386))))) e!2645186))))

(assert (=> b!4258733 (= tp!1306696 (and (inv!62108 (left!35012 (left!35012 (left!35012 t!4386)))) e!2645187))))

(assert (= (and b!4258733 ((_ is Node!14238) (left!35012 (left!35012 (left!35012 t!4386))))) b!4259267))

(assert (= b!4259268 b!4259269))

(assert (= (and b!4258733 ((_ is Leaf!22005) (left!35012 (left!35012 (left!35012 t!4386))))) b!4259268))

(declare-fun m!4845651 () Bool)

(assert (=> b!4259267 m!4845651))

(declare-fun m!4845653 () Bool)

(assert (=> b!4259267 m!4845653))

(declare-fun m!4845655 () Bool)

(assert (=> b!4259268 m!4845655))

(assert (=> b!4258733 m!4844505))

(declare-fun b!4259270 () Bool)

(declare-fun tp!1306738 () Bool)

(declare-fun e!2645189 () Bool)

(declare-fun tp!1306736 () Bool)

(assert (=> b!4259270 (= e!2645189 (and (inv!62108 (left!35012 (right!35342 (left!35012 (left!35012 t!4386))))) tp!1306738 (inv!62108 (right!35342 (right!35342 (left!35012 (left!35012 t!4386))))) tp!1306736))))

(declare-fun b!4259272 () Bool)

(declare-fun e!2645188 () Bool)

(declare-fun tp!1306737 () Bool)

(assert (=> b!4259272 (= e!2645188 tp!1306737)))

(declare-fun b!4259271 () Bool)

(assert (=> b!4259271 (= e!2645189 (and (inv!62109 (xs!17544 (right!35342 (left!35012 (left!35012 t!4386))))) e!2645188))))

(assert (=> b!4258733 (= tp!1306694 (and (inv!62108 (right!35342 (left!35012 (left!35012 t!4386)))) e!2645189))))

(assert (= (and b!4258733 ((_ is Node!14238) (right!35342 (left!35012 (left!35012 t!4386))))) b!4259270))

(assert (= b!4259271 b!4259272))

(assert (= (and b!4258733 ((_ is Leaf!22005) (right!35342 (left!35012 (left!35012 t!4386))))) b!4259271))

(declare-fun m!4845657 () Bool)

(assert (=> b!4259270 m!4845657))

(declare-fun m!4845659 () Bool)

(assert (=> b!4259270 m!4845659))

(declare-fun m!4845661 () Bool)

(assert (=> b!4259271 m!4845661))

(assert (=> b!4258733 m!4844507))

(declare-fun b!4259273 () Bool)

(declare-fun e!2645191 () Bool)

(declare-fun tp!1306739 () Bool)

(declare-fun tp!1306741 () Bool)

(assert (=> b!4259273 (= e!2645191 (and (inv!62108 (left!35012 (left!35012 (right!35342 (right!35342 t!4386))))) tp!1306741 (inv!62108 (right!35342 (left!35012 (right!35342 (right!35342 t!4386))))) tp!1306739))))

(declare-fun b!4259275 () Bool)

(declare-fun e!2645190 () Bool)

(declare-fun tp!1306740 () Bool)

(assert (=> b!4259275 (= e!2645190 tp!1306740)))

(declare-fun b!4259274 () Bool)

(assert (=> b!4259274 (= e!2645191 (and (inv!62109 (xs!17544 (left!35012 (right!35342 (right!35342 t!4386))))) e!2645190))))

(assert (=> b!4258742 (= tp!1306705 (and (inv!62108 (left!35012 (right!35342 (right!35342 t!4386)))) e!2645191))))

(assert (= (and b!4258742 ((_ is Node!14238) (left!35012 (right!35342 (right!35342 t!4386))))) b!4259273))

(assert (= b!4259274 b!4259275))

(assert (= (and b!4258742 ((_ is Leaf!22005) (left!35012 (right!35342 (right!35342 t!4386))))) b!4259274))

(declare-fun m!4845663 () Bool)

(assert (=> b!4259273 m!4845663))

(declare-fun m!4845665 () Bool)

(assert (=> b!4259273 m!4845665))

(declare-fun m!4845667 () Bool)

(assert (=> b!4259274 m!4845667))

(assert (=> b!4258742 m!4844523))

(declare-fun tp!1306742 () Bool)

(declare-fun b!4259276 () Bool)

(declare-fun e!2645193 () Bool)

(declare-fun tp!1306744 () Bool)

(assert (=> b!4259276 (= e!2645193 (and (inv!62108 (left!35012 (right!35342 (right!35342 (right!35342 t!4386))))) tp!1306744 (inv!62108 (right!35342 (right!35342 (right!35342 (right!35342 t!4386))))) tp!1306742))))

(declare-fun b!4259278 () Bool)

(declare-fun e!2645192 () Bool)

(declare-fun tp!1306743 () Bool)

(assert (=> b!4259278 (= e!2645192 tp!1306743)))

(declare-fun b!4259277 () Bool)

(assert (=> b!4259277 (= e!2645193 (and (inv!62109 (xs!17544 (right!35342 (right!35342 (right!35342 t!4386))))) e!2645192))))

(assert (=> b!4258742 (= tp!1306703 (and (inv!62108 (right!35342 (right!35342 (right!35342 t!4386)))) e!2645193))))

(assert (= (and b!4258742 ((_ is Node!14238) (right!35342 (right!35342 (right!35342 t!4386))))) b!4259276))

(assert (= b!4259277 b!4259278))

(assert (= (and b!4258742 ((_ is Leaf!22005) (right!35342 (right!35342 (right!35342 t!4386))))) b!4259277))

(declare-fun m!4845669 () Bool)

(assert (=> b!4259276 m!4845669))

(declare-fun m!4845671 () Bool)

(assert (=> b!4259276 m!4845671))

(declare-fun m!4845673 () Bool)

(assert (=> b!4259277 m!4845673))

(assert (=> b!4258742 m!4844525))

(declare-fun b!4259279 () Bool)

(declare-fun e!2645194 () Bool)

(declare-fun tp!1306745 () Bool)

(assert (=> b!4259279 (= e!2645194 (and tp_is_empty!22861 tp!1306745))))

(assert (=> b!4258744 (= tp!1306704 e!2645194)))

(assert (= (and b!4258744 ((_ is Cons!47230) (innerList!14298 (xs!17544 (right!35342 (right!35342 t!4386)))))) b!4259279))

(declare-fun b!4259280 () Bool)

(declare-fun e!2645195 () Bool)

(declare-fun tp!1306746 () Bool)

(assert (=> b!4259280 (= e!2645195 (and tp_is_empty!22861 tp!1306746))))

(assert (=> b!4258735 (= tp!1306695 e!2645195)))

(assert (= (and b!4258735 ((_ is Cons!47230) (innerList!14298 (xs!17544 (left!35012 (left!35012 t!4386)))))) b!4259280))

(declare-fun b!4259281 () Bool)

(declare-fun e!2645196 () Bool)

(declare-fun tp!1306747 () Bool)

(assert (=> b!4259281 (= e!2645196 (and tp_is_empty!22861 tp!1306747))))

(assert (=> b!4258731 (= tp!1306692 e!2645196)))

(assert (= (and b!4258731 ((_ is Cons!47230) (t!353021 (t!353021 (innerList!14298 (xs!17544 t!4386)))))) b!4259281))

(declare-fun tp!1306748 () Bool)

(declare-fun e!2645198 () Bool)

(declare-fun tp!1306750 () Bool)

(declare-fun b!4259282 () Bool)

(assert (=> b!4259282 (= e!2645198 (and (inv!62108 (left!35012 (left!35012 (right!35342 (left!35012 t!4386))))) tp!1306750 (inv!62108 (right!35342 (left!35012 (right!35342 (left!35012 t!4386))))) tp!1306748))))

(declare-fun b!4259284 () Bool)

(declare-fun e!2645197 () Bool)

(declare-fun tp!1306749 () Bool)

(assert (=> b!4259284 (= e!2645197 tp!1306749)))

(declare-fun b!4259283 () Bool)

(assert (=> b!4259283 (= e!2645198 (and (inv!62109 (xs!17544 (left!35012 (right!35342 (left!35012 t!4386))))) e!2645197))))

(assert (=> b!4258736 (= tp!1306699 (and (inv!62108 (left!35012 (right!35342 (left!35012 t!4386)))) e!2645198))))

(assert (= (and b!4258736 ((_ is Node!14238) (left!35012 (right!35342 (left!35012 t!4386))))) b!4259282))

(assert (= b!4259283 b!4259284))

(assert (= (and b!4258736 ((_ is Leaf!22005) (left!35012 (right!35342 (left!35012 t!4386))))) b!4259283))

(declare-fun m!4845675 () Bool)

(assert (=> b!4259282 m!4845675))

(declare-fun m!4845677 () Bool)

(assert (=> b!4259282 m!4845677))

(declare-fun m!4845679 () Bool)

(assert (=> b!4259283 m!4845679))

(assert (=> b!4258736 m!4844511))

(declare-fun b!4259285 () Bool)

(declare-fun tp!1306753 () Bool)

(declare-fun tp!1306751 () Bool)

(declare-fun e!2645200 () Bool)

(assert (=> b!4259285 (= e!2645200 (and (inv!62108 (left!35012 (right!35342 (right!35342 (left!35012 t!4386))))) tp!1306753 (inv!62108 (right!35342 (right!35342 (right!35342 (left!35012 t!4386))))) tp!1306751))))

(declare-fun b!4259287 () Bool)

(declare-fun e!2645199 () Bool)

(declare-fun tp!1306752 () Bool)

(assert (=> b!4259287 (= e!2645199 tp!1306752)))

(declare-fun b!4259286 () Bool)

(assert (=> b!4259286 (= e!2645200 (and (inv!62109 (xs!17544 (right!35342 (right!35342 (left!35012 t!4386))))) e!2645199))))

(assert (=> b!4258736 (= tp!1306697 (and (inv!62108 (right!35342 (right!35342 (left!35012 t!4386)))) e!2645200))))

(assert (= (and b!4258736 ((_ is Node!14238) (right!35342 (right!35342 (left!35012 t!4386))))) b!4259285))

(assert (= b!4259286 b!4259287))

(assert (= (and b!4258736 ((_ is Leaf!22005) (right!35342 (right!35342 (left!35012 t!4386))))) b!4259286))

(declare-fun m!4845681 () Bool)

(assert (=> b!4259285 m!4845681))

(declare-fun m!4845683 () Bool)

(assert (=> b!4259285 m!4845683))

(declare-fun m!4845685 () Bool)

(assert (=> b!4259286 m!4845685))

(assert (=> b!4258736 m!4844513))

(declare-fun b!4259288 () Bool)

(declare-fun e!2645201 () Bool)

(declare-fun tp!1306754 () Bool)

(assert (=> b!4259288 (= e!2645201 (and tp_is_empty!22861 tp!1306754))))

(assert (=> b!4258738 (= tp!1306698 e!2645201)))

(assert (= (and b!4258738 ((_ is Cons!47230) (innerList!14298 (xs!17544 (right!35342 (left!35012 t!4386)))))) b!4259288))

(declare-fun b!4259289 () Bool)

(declare-fun e!2645202 () Bool)

(declare-fun tp!1306755 () Bool)

(assert (=> b!4259289 (= e!2645202 (and tp_is_empty!22861 tp!1306755))))

(assert (=> b!4258732 (= tp!1306693 e!2645202)))

(assert (= (and b!4258732 ((_ is Cons!47230) (t!353021 (innerList!14298 (xs!17544 (right!35342 t!4386)))))) b!4259289))

(declare-fun b_lambda!125549 () Bool)

(assert (= b_lambda!125545 (or (and start!408054 b_free!126677) b_lambda!125549)))

(declare-fun b_lambda!125551 () Bool)

(assert (= b_lambda!125543 (or (and start!408054 b_free!126677) b_lambda!125551)))

(declare-fun b_lambda!125553 () Bool)

(assert (= b_lambda!125547 (or (and start!408054 b_free!126677) b_lambda!125553)))

(declare-fun b_lambda!125555 () Bool)

(assert (= b_lambda!125529 (or (and start!408054 b_free!126677) b_lambda!125555)))

(declare-fun b_lambda!125557 () Bool)

(assert (= b_lambda!125525 (or (and start!408054 b_free!126677) b_lambda!125557)))

(declare-fun b_lambda!125559 () Bool)

(assert (= b_lambda!125541 (or (and start!408054 b_free!126677) b_lambda!125559)))

(declare-fun b_lambda!125561 () Bool)

(assert (= b_lambda!125533 (or (and start!408054 b_free!126677) b_lambda!125561)))

(declare-fun b_lambda!125563 () Bool)

(assert (= b_lambda!125531 (or (and start!408054 b_free!126677) b_lambda!125563)))

(declare-fun b_lambda!125565 () Bool)

(assert (= b_lambda!125539 (or (and start!408054 b_free!126677) b_lambda!125565)))

(declare-fun b_lambda!125567 () Bool)

(assert (= b_lambda!125523 (or (and start!408054 b_free!126677) b_lambda!125567)))

(declare-fun b_lambda!125569 () Bool)

(assert (= b_lambda!125535 (or (and start!408054 b_free!126677) b_lambda!125569)))

(declare-fun b_lambda!125571 () Bool)

(assert (= b_lambda!125537 (or (and start!408054 b_free!126677) b_lambda!125571)))

(declare-fun b_lambda!125573 () Bool)

(assert (= b_lambda!125527 (or (and start!408054 b_free!126677) b_lambda!125573)))

(check-sat (not b!4259130) (not b_lambda!125549) (not b!4258872) (not b!4259146) (not b!4259147) (not b!4259031) (not b!4259248) (not b!4259078) (not b!4258739) (not b!4258946) (not b!4259068) (not b!4259090) (not d!1252799) (not b_lambda!125571) (not d!1252921) (not b!4259264) (not b!4259066) (not b!4259185) (not b!4258950) (not b!4259241) (not b!4258919) (not b!4259206) (not b!4258996) (not d!1252803) (not b!4259262) (not b!4259050) (not b!4259179) (not b!4258968) (not b!4258947) (not d!1252843) (not d!1252729) (not b!4259053) (not b_lambda!125567) (not b!4259127) (not b!4258992) (not b!4259166) (not d!1252763) (not b!4259117) (not d!1252793) (not b!4258984) (not b!4259243) (not b!4259009) (not d!1252851) (not d!1252741) (not b!4259263) (not b!4259132) (not b!4259265) (not d!1252727) (not b!4258910) (not b_lambda!125569) (not b!4259135) (not b!4258940) (not b!4258957) (not b!4258932) (not b!4259037) (not b!4258953) (not b!4259231) (not b!4259101) (not b!4259158) (not b_next!127381) (not b!4259157) (not b!4259142) (not b!4258983) (not b!4258945) (not b!4259081) (not d!1252881) (not b!4258978) (not b!4259235) (not b!4259277) (not b!4259047) (not b!4259232) (not d!1252779) (not b!4259023) (not b!4259177) (not b!4259207) (not b!4259198) (not d!1252961) (not b!4259005) (not b!4259253) (not b!4259287) (not b!4259116) (not d!1252945) (not b!4259152) (not b!4259230) (not b!4259021) (not b_lambda!125477) (not d!1252833) (not b!4258895) (not b!4258914) (not b!4258876) (not b!4259087) (not b_lambda!125561) (not b_lambda!125551) (not b!4259203) (not b!4259233) (not b!4258922) (not b!4259171) (not d!1253009) (not b!4259280) (not b!4259169) (not b!4259217) (not b!4259190) (not b!4259083) (not d!1252715) (not d!1253029) (not b!4259113) (not b!4259092) (not b!4259004) (not b!4259105) (not b!4259095) (not d!1252751) (not b!4259151) (not b!4259070) (not b!4259215) (not b!4258903) (not b!4259069) (not d!1252879) (not b!4259011) (not b!4258934) (not b!4259015) (not b!4259204) (not b!4259100) (not b!4259039) (not d!1252935) (not d!1252711) (not b!4258959) (not b!4259223) (not b!4258974) (not d!1252755) (not b_lambda!125481) (not b!4258881) (not b!4259061) (not b!4258970) (not b!4259229) (not d!1252905) (not d!1252937) (not b!4258991) (not d!1252721) (not b!4258966) (not b!4259259) (not b!4259288) (not d!1252915) (not b_lambda!125559) (not b!4259008) (not b_lambda!125565) (not b!4259165) (not d!1252671) (not b_lambda!125557) (not b!4258962) (not b_lambda!125499) (not b!4258742) (not d!1252887) (not b!4259238) (not b!4259041) (not b!4259268) (not b!4259279) (not b!4259077) (not b!4259278) (not b!4259153) (not b!4258901) (not b!4259218) (not b!4258907) (not b!4258943) (not b!4259013) (not b!4258956) (not b_lambda!125555) (not b!4259234) (not d!1252933) (not d!1252939) (not b!4259079) (not d!1253011) (not d!1252997) (not b!4259286) (not b!4259040) (not b!4259071) (not d!1252975) (not b!4259000) (not b!4259176) (not b!4259106) (not d!1252995) (not b!4259194) (not d!1252701) tp_is_empty!22861 (not b!4259183) (not b!4259148) (not b!4259244) (not d!1253021) (not d!1252849) (not b!4259029) (not b!4259120) (not d!1252789) (not b!4259038) (not b!4258993) (not b!4258891) (not d!1252955) (not b!4259001) (not b!4258939) (not b!4259139) (not b!4259273) (not d!1252699) (not b_lambda!125563) (not b!4259261) (not b!4258952) (not b!4259274) (not d!1252917) (not b!4259044) (not b!4258964) (not b!4258874) (not d!1252897) (not b!4259086) (not b!4259221) (not b!4258981) (not b!4259252) (not b!4259042) (not b!4258930) (not d!1252677) (not d!1252891) (not b!4259208) (not b!4259067) (not b!4258948) (not b!4259246) (not b!4259191) (not b!4258921) (not b!4258985) (not b!4258951) (not d!1252859) (not b!4259256) (not b_lambda!125503) (not d!1252809) (not b!4258877) (not b!4259275) (not b!4259173) (not b!4259143) (not b!4259205) (not b!4258870) (not b!4258989) (not b!4259104) (not b!4259284) (not b!4259197) (not b!4259076) (not b!4259012) (not b!4259045) (not b!4258733) (not d!1252745) (not b_lambda!125501) (not b!4258994) (not d!1253001) (not b!4259057) (not b!4258980) (not d!1253023) (not b!4258915) (not b!4259282) (not d!1252895) (not b!4259269) (not b!4258982) (not b!4259074) (not b!4258935) (not d!1252703) (not b!4259276) (not b!4259212) (not b!4259209) (not d!1252883) (not d!1252817) (not b!4259258) (not b!4258988) (not b!4259211) (not b!4259122) (not d!1252913) (not b!4259094) (not b!4259084) (not d!1252815) (not b!4258955) (not d!1252903) (not b!4259237) tp_is_empty!22857 (not b!4258942) (not b!4259266) (not d!1252679) (not d!1252907) (not b!4259036) (not b!4258925) (not b_lambda!125553) (not b!4259220) (not b!4259227) (not d!1253019) (not b!4259156) (not b_lambda!125507) (not b!4259260) (not b!4258918) (not b!4259034) (not b!4258909) (not b!4259089) (not b!4259024) (not b!4259099) (not d!1252999) (not d!1253005) (not b!4259062) (not b!4259181) (not b!4259137) (not b_lambda!125505) (not d!1253003) (not b!4258885) (not b!4259271) (not b!4259110) (not b!4258897) (not b!4259283) (not b!4259164) (not b!4259052) (not b!4259114) (not b!4258986) (not d!1252901) (not b!4258954) (not b!4259161) (not d!1252819) (not d!1252693) (not b!4259010) (not b!4259027) (not b!4258892) (not b!4259136) (not b!4259289) (not b!4259080) (not b!4259003) (not b!4258905) (not b!4258990) (not b!4259201) (not b!4259014) (not b!4259109) (not b_lambda!125479) (not b!4259225) (not b!4259006) (not b!4259007) (not b!4258972) (not b!4258944) (not b!4259267) (not b!4258888) (not d!1252841) (not b!4258886) (not b!4259250) (not b!4258960) (not b!4259285) (not b!4259072) b_and!337621 (not b!4258928) (not d!1252813) (not d!1252847) (not b!4259270) (not b!4259017) (not b!4259019) (not b!4259170) (not b!4259075) (not d!1252821) (not b!4258899) (not b_lambda!125573) (not b!4258736) (not b!4259131) (not d!1252801) (not b!4258882) (not b!4259272) (not b!4259056) (not d!1252811) (not b!4259195) (not b!4259186) (not b!4259125) (not b!4259033) (not d!1252973) (not b!4259281) (not b!4259035) (not b!4259065) (not b!4258977) (not b!4259043))
(check-sat b_and!337621 (not b_next!127381))
