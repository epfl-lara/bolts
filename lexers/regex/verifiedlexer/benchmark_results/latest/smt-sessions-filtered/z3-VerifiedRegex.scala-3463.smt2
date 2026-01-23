; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200408 () Bool)

(assert start!200408)

(declare-fun b_free!56783 () Bool)

(declare-fun b_next!57487 () Bool)

(assert (=> start!200408 (= b_free!56783 (not b_next!57487))))

(declare-fun tp!604380 () Bool)

(declare-fun b_and!162519 () Bool)

(assert (=> start!200408 (= tp!604380 b_and!162519)))

(declare-datatypes ((T!35836 0))(
  ( (T!35837 (val!6452 Int)) )
))
(declare-datatypes ((List!22335 0))(
  ( (Nil!22253) (Cons!22253 (h!27654 T!35836) (t!191156 List!22335)) )
))
(declare-datatypes ((IArray!14895 0))(
  ( (IArray!14896 (innerList!7505 List!22335)) )
))
(declare-datatypes ((Conc!7445 0))(
  ( (Node!7445 (left!17704 Conc!7445) (right!18034 Conc!7445) (csize!15120 Int) (cheight!7656 Int)) (Leaf!10909 (xs!10347 IArray!14895) (csize!15121 Int)) (Empty!7445) )
))
(declare-datatypes ((BalanceConc!14706 0))(
  ( (BalanceConc!14707 (c!329421 Conc!7445)) )
))
(declare-fun thiss!5851 () BalanceConc!14706)

(declare-fun p!1446 () Int)

(declare-fun inv!29449 (BalanceConc!14706) Bool)

(declare-fun filter!428 (Conc!7445 Int) Conc!7445)

(assert (=> start!200408 (not (inv!29449 (BalanceConc!14707 (filter!428 (c!329421 thiss!5851) p!1446))))))

(declare-fun e!1285075 () Bool)

(assert (=> start!200408 (and (inv!29449 thiss!5851) e!1285075)))

(assert (=> start!200408 tp!604380))

(declare-fun b!2034632 () Bool)

(declare-fun tp!604379 () Bool)

(declare-fun inv!29450 (Conc!7445) Bool)

(assert (=> b!2034632 (= e!1285075 (and (inv!29450 (c!329421 thiss!5851)) tp!604379))))

(assert (= start!200408 b!2034632))

(declare-fun m!2477253 () Bool)

(assert (=> start!200408 m!2477253))

(declare-fun m!2477255 () Bool)

(assert (=> start!200408 m!2477255))

(declare-fun m!2477257 () Bool)

(assert (=> start!200408 m!2477257))

(declare-fun m!2477259 () Bool)

(assert (=> b!2034632 m!2477259))

(check-sat (not b!2034632) (not start!200408) b_and!162519 (not b_next!57487))
(check-sat b_and!162519 (not b_next!57487))
(get-model)

(declare-fun d!622906 () Bool)

(declare-fun c!329427 () Bool)

(get-info :version)

(assert (=> d!622906 (= c!329427 ((_ is Node!7445) (c!329421 thiss!5851)))))

(declare-fun e!1285086 () Bool)

(assert (=> d!622906 (= (inv!29450 (c!329421 thiss!5851)) e!1285086)))

(declare-fun b!2034648 () Bool)

(declare-fun inv!29451 (Conc!7445) Bool)

(assert (=> b!2034648 (= e!1285086 (inv!29451 (c!329421 thiss!5851)))))

(declare-fun b!2034649 () Bool)

(declare-fun e!1285087 () Bool)

(assert (=> b!2034649 (= e!1285086 e!1285087)))

(declare-fun res!892229 () Bool)

(assert (=> b!2034649 (= res!892229 (not ((_ is Leaf!10909) (c!329421 thiss!5851))))))

(assert (=> b!2034649 (=> res!892229 e!1285087)))

(declare-fun b!2034650 () Bool)

(declare-fun inv!29452 (Conc!7445) Bool)

(assert (=> b!2034650 (= e!1285087 (inv!29452 (c!329421 thiss!5851)))))

(assert (= (and d!622906 c!329427) b!2034648))

(assert (= (and d!622906 (not c!329427)) b!2034649))

(assert (= (and b!2034649 (not res!892229)) b!2034650))

(declare-fun m!2477267 () Bool)

(assert (=> b!2034648 m!2477267))

(declare-fun m!2477269 () Bool)

(assert (=> b!2034650 m!2477269))

(assert (=> b!2034632 d!622906))

(declare-fun d!622912 () Bool)

(declare-fun isBalanced!2322 (Conc!7445) Bool)

(assert (=> d!622912 (= (inv!29449 (BalanceConc!14707 (filter!428 (c!329421 thiss!5851) p!1446))) (isBalanced!2322 (c!329421 (BalanceConc!14707 (filter!428 (c!329421 thiss!5851) p!1446)))))))

(declare-fun bs!421300 () Bool)

(assert (= bs!421300 d!622912))

(declare-fun m!2477271 () Bool)

(assert (=> bs!421300 m!2477271))

(assert (=> start!200408 d!622912))

(declare-fun b!2034679 () Bool)

(declare-fun c!329440 () Bool)

(declare-fun lt!764521 () IArray!14895)

(declare-fun size!17385 (IArray!14895) Int)

(assert (=> b!2034679 (= c!329440 (= (size!17385 lt!764521) 0))))

(declare-fun filter!429 (IArray!14895 Int) IArray!14895)

(assert (=> b!2034679 (= lt!764521 (filter!429 (xs!10347 (c!329421 thiss!5851)) p!1446))))

(declare-fun e!1285105 () Conc!7445)

(declare-fun e!1285104 () Conc!7445)

(assert (=> b!2034679 (= e!1285105 e!1285104)))

(declare-fun b!2034680 () Bool)

(declare-fun e!1285107 () Conc!7445)

(assert (=> b!2034680 (= e!1285107 (c!329421 thiss!5851))))

(declare-fun b!2034681 () Bool)

(declare-datatypes ((Unit!36946 0))(
  ( (Unit!36947) )
))
(declare-fun lt!764519 () Unit!36946)

(declare-fun lemmaFilterConcat!15 (List!22335 List!22335 Int) Unit!36946)

(declare-fun list!9094 (Conc!7445) List!22335)

(assert (=> b!2034681 (= lt!764519 (lemmaFilterConcat!15 (list!9094 (left!17704 (c!329421 thiss!5851))) (list!9094 (right!18034 (c!329421 thiss!5851))) p!1446))))

(declare-fun ++!6026 (Conc!7445 Conc!7445) Conc!7445)

(assert (=> b!2034681 (= e!1285105 (++!6026 (filter!428 (left!17704 (c!329421 thiss!5851)) p!1446) (filter!428 (right!18034 (c!329421 thiss!5851)) p!1446)))))

(declare-fun b!2034682 () Bool)

(assert (=> b!2034682 (= e!1285104 Empty!7445)))

(declare-fun b!2034683 () Bool)

(assert (=> b!2034683 (= e!1285104 (Leaf!10909 lt!764521 (size!17385 lt!764521)))))

(declare-fun d!622914 () Bool)

(declare-fun e!1285106 () Bool)

(assert (=> d!622914 e!1285106))

(declare-fun res!892234 () Bool)

(assert (=> d!622914 (=> (not res!892234) (not e!1285106))))

(declare-fun lt!764520 () Conc!7445)

(assert (=> d!622914 (= res!892234 (isBalanced!2322 lt!764520))))

(assert (=> d!622914 (= lt!764520 e!1285107)))

(declare-fun c!329442 () Bool)

(assert (=> d!622914 (= c!329442 ((_ is Empty!7445) (c!329421 thiss!5851)))))

(assert (=> d!622914 (isBalanced!2322 (c!329421 thiss!5851))))

(assert (=> d!622914 (= (filter!428 (c!329421 thiss!5851) p!1446) lt!764520)))

(declare-fun b!2034684 () Bool)

(declare-fun filter!430 (List!22335 Int) List!22335)

(assert (=> b!2034684 (= e!1285106 (= (list!9094 lt!764520) (filter!430 (list!9094 (c!329421 thiss!5851)) p!1446)))))

(declare-fun b!2034685 () Bool)

(assert (=> b!2034685 (= e!1285107 e!1285105)))

(declare-fun c!329441 () Bool)

(assert (=> b!2034685 (= c!329441 ((_ is Leaf!10909) (c!329421 thiss!5851)))))

(assert (= (and d!622914 c!329442) b!2034680))

(assert (= (and d!622914 (not c!329442)) b!2034685))

(assert (= (and b!2034685 c!329441) b!2034679))

(assert (= (and b!2034685 (not c!329441)) b!2034681))

(assert (= (and b!2034679 c!329440) b!2034682))

(assert (= (and b!2034679 (not c!329440)) b!2034683))

(assert (= (and d!622914 res!892234) b!2034684))

(declare-fun m!2477273 () Bool)

(assert (=> d!622914 m!2477273))

(declare-fun m!2477275 () Bool)

(assert (=> d!622914 m!2477275))

(declare-fun m!2477277 () Bool)

(assert (=> b!2034681 m!2477277))

(declare-fun m!2477279 () Bool)

(assert (=> b!2034681 m!2477279))

(assert (=> b!2034681 m!2477279))

(declare-fun m!2477281 () Bool)

(assert (=> b!2034681 m!2477281))

(declare-fun m!2477283 () Bool)

(assert (=> b!2034681 m!2477283))

(assert (=> b!2034681 m!2477281))

(declare-fun m!2477285 () Bool)

(assert (=> b!2034681 m!2477285))

(assert (=> b!2034681 m!2477277))

(declare-fun m!2477287 () Bool)

(assert (=> b!2034681 m!2477287))

(assert (=> b!2034681 m!2477285))

(declare-fun m!2477289 () Bool)

(assert (=> b!2034684 m!2477289))

(declare-fun m!2477291 () Bool)

(assert (=> b!2034684 m!2477291))

(assert (=> b!2034684 m!2477291))

(declare-fun m!2477293 () Bool)

(assert (=> b!2034684 m!2477293))

(declare-fun m!2477295 () Bool)

(assert (=> b!2034683 m!2477295))

(assert (=> b!2034679 m!2477295))

(declare-fun m!2477297 () Bool)

(assert (=> b!2034679 m!2477297))

(assert (=> start!200408 d!622914))

(declare-fun d!622916 () Bool)

(assert (=> d!622916 (= (inv!29449 thiss!5851) (isBalanced!2322 (c!329421 thiss!5851)))))

(declare-fun bs!421301 () Bool)

(assert (= bs!421301 d!622916))

(assert (=> bs!421301 m!2477275))

(assert (=> start!200408 d!622916))

(declare-fun tp!604387 () Bool)

(declare-fun e!1285117 () Bool)

(declare-fun tp!604389 () Bool)

(declare-fun b!2034701 () Bool)

(assert (=> b!2034701 (= e!1285117 (and (inv!29450 (left!17704 (c!329421 thiss!5851))) tp!604387 (inv!29450 (right!18034 (c!329421 thiss!5851))) tp!604389))))

(declare-fun b!2034703 () Bool)

(declare-fun e!1285116 () Bool)

(declare-fun tp!604388 () Bool)

(assert (=> b!2034703 (= e!1285116 tp!604388)))

(declare-fun b!2034702 () Bool)

(declare-fun inv!29455 (IArray!14895) Bool)

(assert (=> b!2034702 (= e!1285117 (and (inv!29455 (xs!10347 (c!329421 thiss!5851))) e!1285116))))

(assert (=> b!2034632 (= tp!604379 (and (inv!29450 (c!329421 thiss!5851)) e!1285117))))

(assert (= (and b!2034632 ((_ is Node!7445) (c!329421 thiss!5851))) b!2034701))

(assert (= b!2034702 b!2034703))

(assert (= (and b!2034632 ((_ is Leaf!10909) (c!329421 thiss!5851))) b!2034702))

(declare-fun m!2477325 () Bool)

(assert (=> b!2034701 m!2477325))

(declare-fun m!2477327 () Bool)

(assert (=> b!2034701 m!2477327))

(declare-fun m!2477329 () Bool)

(assert (=> b!2034702 m!2477329))

(assert (=> b!2034632 m!2477259))

(check-sat (not b!2034648) (not b!2034650) (not b!2034632) (not b_next!57487) (not d!622914) (not b!2034681) (not b!2034683) (not d!622916) (not b!2034679) (not b!2034703) (not d!622912) (not b!2034684) (not b!2034702) (not b!2034701) b_and!162519)
(check-sat b_and!162519 (not b_next!57487))
