; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200520 () Bool)

(assert start!200520)

(declare-fun b_free!56799 () Bool)

(declare-fun b_next!57503 () Bool)

(assert (=> start!200520 (= b_free!56799 (not b_next!57503))))

(declare-fun tp!604560 () Bool)

(declare-fun b_and!162563 () Bool)

(assert (=> start!200520 (= tp!604560 b_and!162563)))

(declare-fun b!2035510 () Bool)

(declare-fun e!1285555 () Bool)

(declare-fun tp!604559 () Bool)

(assert (=> b!2035510 (= e!1285555 tp!604559)))

(declare-fun b!2035511 () Bool)

(declare-fun e!1285554 () Bool)

(declare-fun e!1285553 () Bool)

(assert (=> b!2035511 (= e!1285554 e!1285553)))

(declare-fun res!892554 () Bool)

(assert (=> b!2035511 (=> res!892554 e!1285553)))

(declare-datatypes ((T!35892 0))(
  ( (T!35893 (val!6460 Int)) )
))
(declare-datatypes ((List!22343 0))(
  ( (Nil!22261) (Cons!22261 (h!27662 T!35892) (t!191208 List!22343)) )
))
(declare-datatypes ((IArray!14911 0))(
  ( (IArray!14912 (innerList!7513 List!22343)) )
))
(declare-datatypes ((Conc!7453 0))(
  ( (Node!7453 (left!17716 Conc!7453) (right!18046 Conc!7453) (csize!15136 Int) (cheight!7664 Int)) (Leaf!10921 (xs!10355 IArray!14911) (csize!15137 Int)) (Empty!7453) )
))
(declare-fun lt!764692 () Conc!7453)

(declare-fun isBalanced!2331 (Conc!7453) Bool)

(assert (=> b!2035511 (= res!892554 (not (isBalanced!2331 lt!764692)))))

(declare-fun lt!764688 () Conc!7453)

(declare-fun t!4319 () Conc!7453)

(declare-fun p!1489 () Int)

(declare-fun filter!449 (Conc!7453 Int) Conc!7453)

(assert (=> b!2035511 (= lt!764688 (filter!449 (right!18046 t!4319) p!1489))))

(assert (=> b!2035511 (= lt!764692 (filter!449 (left!17716 t!4319) p!1489))))

(declare-fun b!2035512 () Bool)

(assert (=> b!2035512 (= e!1285553 (not (isBalanced!2331 lt!764688)))))

(declare-fun res!892555 () Bool)

(declare-fun e!1285551 () Bool)

(assert (=> start!200520 (=> (not res!892555) (not e!1285551))))

(assert (=> start!200520 (= res!892555 (isBalanced!2331 t!4319))))

(assert (=> start!200520 e!1285551))

(declare-fun e!1285552 () Bool)

(declare-fun inv!29495 (Conc!7453) Bool)

(assert (=> start!200520 (and (inv!29495 t!4319) e!1285552)))

(assert (=> start!200520 tp!604560))

(declare-fun b!2035513 () Bool)

(declare-fun inv!29496 (IArray!14911) Bool)

(assert (=> b!2035513 (= e!1285552 (and (inv!29496 (xs!10355 t!4319)) e!1285555))))

(declare-fun b!2035514 () Bool)

(assert (=> b!2035514 (= e!1285551 e!1285554)))

(declare-fun res!892553 () Bool)

(assert (=> b!2035514 (=> (not res!892553) (not e!1285554))))

(declare-fun lt!764690 () List!22343)

(declare-fun lt!764689 () List!22343)

(declare-fun filter!450 (List!22343 Int) List!22343)

(declare-fun ++!6037 (List!22343 List!22343) List!22343)

(assert (=> b!2035514 (= res!892553 (= (filter!450 (++!6037 lt!764689 lt!764690) p!1489) (++!6037 (filter!450 lt!764689 p!1489) (filter!450 lt!764690 p!1489))))))

(declare-datatypes ((Unit!36964 0))(
  ( (Unit!36965) )
))
(declare-fun lt!764691 () Unit!36964)

(declare-fun lemmaFilterConcat!24 (List!22343 List!22343 Int) Unit!36964)

(assert (=> b!2035514 (= lt!764691 (lemmaFilterConcat!24 lt!764689 lt!764690 p!1489))))

(declare-fun list!9109 (Conc!7453) List!22343)

(assert (=> b!2035514 (= lt!764690 (list!9109 (right!18046 t!4319)))))

(assert (=> b!2035514 (= lt!764689 (list!9109 (left!17716 t!4319)))))

(declare-fun tp!604558 () Bool)

(declare-fun tp!604557 () Bool)

(declare-fun b!2035515 () Bool)

(assert (=> b!2035515 (= e!1285552 (and (inv!29495 (left!17716 t!4319)) tp!604558 (inv!29495 (right!18046 t!4319)) tp!604557))))

(declare-fun b!2035516 () Bool)

(declare-fun res!892552 () Bool)

(assert (=> b!2035516 (=> (not res!892552) (not e!1285551))))

(get-info :version)

(assert (=> b!2035516 (= res!892552 (and (not ((_ is Empty!7453) t!4319)) (not ((_ is Leaf!10921) t!4319))))))

(assert (= (and start!200520 res!892555) b!2035516))

(assert (= (and b!2035516 res!892552) b!2035514))

(assert (= (and b!2035514 res!892553) b!2035511))

(assert (= (and b!2035511 (not res!892554)) b!2035512))

(assert (= (and start!200520 ((_ is Node!7453) t!4319)) b!2035515))

(assert (= b!2035513 b!2035510))

(assert (= (and start!200520 ((_ is Leaf!10921) t!4319)) b!2035513))

(declare-fun m!2478191 () Bool)

(assert (=> b!2035511 m!2478191))

(declare-fun m!2478193 () Bool)

(assert (=> b!2035511 m!2478193))

(declare-fun m!2478195 () Bool)

(assert (=> b!2035511 m!2478195))

(declare-fun m!2478197 () Bool)

(assert (=> b!2035515 m!2478197))

(declare-fun m!2478199 () Bool)

(assert (=> b!2035515 m!2478199))

(declare-fun m!2478201 () Bool)

(assert (=> b!2035514 m!2478201))

(declare-fun m!2478203 () Bool)

(assert (=> b!2035514 m!2478203))

(declare-fun m!2478205 () Bool)

(assert (=> b!2035514 m!2478205))

(declare-fun m!2478207 () Bool)

(assert (=> b!2035514 m!2478207))

(declare-fun m!2478209 () Bool)

(assert (=> b!2035514 m!2478209))

(assert (=> b!2035514 m!2478205))

(assert (=> b!2035514 m!2478203))

(declare-fun m!2478211 () Bool)

(assert (=> b!2035514 m!2478211))

(declare-fun m!2478213 () Bool)

(assert (=> b!2035514 m!2478213))

(assert (=> b!2035514 m!2478211))

(declare-fun m!2478215 () Bool)

(assert (=> b!2035514 m!2478215))

(declare-fun m!2478217 () Bool)

(assert (=> start!200520 m!2478217))

(declare-fun m!2478219 () Bool)

(assert (=> start!200520 m!2478219))

(declare-fun m!2478221 () Bool)

(assert (=> b!2035512 m!2478221))

(declare-fun m!2478223 () Bool)

(assert (=> b!2035513 m!2478223))

(check-sat (not start!200520) (not b!2035511) (not b!2035513) (not b!2035515) (not b!2035514) b_and!162563 (not b_next!57503) (not b!2035510) (not b!2035512))
(check-sat b_and!162563 (not b_next!57503))
(get-model)

(declare-fun d!623070 () Bool)

(declare-fun size!17397 (List!22343) Int)

(assert (=> d!623070 (= (inv!29496 (xs!10355 t!4319)) (<= (size!17397 (innerList!7513 (xs!10355 t!4319))) 2147483647))))

(declare-fun bs!421325 () Bool)

(assert (= bs!421325 d!623070))

(declare-fun m!2478225 () Bool)

(assert (=> bs!421325 m!2478225))

(assert (=> b!2035513 d!623070))

(declare-fun d!623072 () Bool)

(declare-fun e!1285570 () Bool)

(assert (=> d!623072 e!1285570))

(declare-fun res!892579 () Bool)

(assert (=> d!623072 (=> (not res!892579) (not e!1285570))))

(declare-fun lt!764695 () List!22343)

(assert (=> d!623072 (= res!892579 (<= (size!17397 lt!764695) (size!17397 lt!764690)))))

(declare-fun e!1285568 () List!22343)

(assert (=> d!623072 (= lt!764695 e!1285568)))

(declare-fun c!329614 () Bool)

(assert (=> d!623072 (= c!329614 ((_ is Nil!22261) lt!764690))))

(assert (=> d!623072 (= (filter!450 lt!764690 p!1489) lt!764695)))

(declare-fun b!2035547 () Bool)

(assert (=> b!2035547 (= e!1285568 Nil!22261)))

(declare-fun b!2035548 () Bool)

(declare-fun forall!4743 (List!22343 Int) Bool)

(assert (=> b!2035548 (= e!1285570 (forall!4743 lt!764695 p!1489))))

(declare-fun b!2035549 () Bool)

(declare-fun e!1285569 () List!22343)

(declare-fun call!124903 () List!22343)

(assert (=> b!2035549 (= e!1285569 call!124903)))

(declare-fun bm!124898 () Bool)

(assert (=> bm!124898 (= call!124903 (filter!450 (t!191208 lt!764690) p!1489))))

(declare-fun b!2035550 () Bool)

(declare-fun res!892578 () Bool)

(assert (=> b!2035550 (=> (not res!892578) (not e!1285570))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3296 (List!22343) (InoxSet T!35892))

(assert (=> b!2035550 (= res!892578 (= ((_ map implies) (content!3296 lt!764695) (content!3296 lt!764690)) ((as const (InoxSet T!35892)) true)))))

(declare-fun b!2035551 () Bool)

(assert (=> b!2035551 (= e!1285569 (Cons!22261 (h!27662 lt!764690) call!124903))))

(declare-fun b!2035552 () Bool)

(assert (=> b!2035552 (= e!1285568 e!1285569)))

(declare-fun c!329615 () Bool)

(declare-fun dynLambda!11093 (Int T!35892) Bool)

(assert (=> b!2035552 (= c!329615 (dynLambda!11093 p!1489 (h!27662 lt!764690)))))

(assert (= (and d!623072 c!329614) b!2035547))

(assert (= (and d!623072 (not c!329614)) b!2035552))

(assert (= (and b!2035552 c!329615) b!2035551))

(assert (= (and b!2035552 (not c!329615)) b!2035549))

(assert (= (or b!2035551 b!2035549) bm!124898))

(assert (= (and d!623072 res!892579) b!2035550))

(assert (= (and b!2035550 res!892578) b!2035548))

(declare-fun b_lambda!68701 () Bool)

(assert (=> (not b_lambda!68701) (not b!2035552)))

(declare-fun t!191211 () Bool)

(declare-fun tb!128805 () Bool)

(assert (=> (and start!200520 (= p!1489 p!1489) t!191211) tb!128805))

(declare-fun result!154044 () Bool)

(assert (=> tb!128805 (= result!154044 true)))

(assert (=> b!2035552 t!191211))

(declare-fun b_and!162565 () Bool)

(assert (= b_and!162563 (and (=> t!191211 result!154044) b_and!162565)))

(declare-fun m!2478239 () Bool)

(assert (=> b!2035550 m!2478239))

(declare-fun m!2478241 () Bool)

(assert (=> b!2035550 m!2478241))

(declare-fun m!2478243 () Bool)

(assert (=> bm!124898 m!2478243))

(declare-fun m!2478245 () Bool)

(assert (=> b!2035552 m!2478245))

(declare-fun m!2478247 () Bool)

(assert (=> b!2035548 m!2478247))

(declare-fun m!2478249 () Bool)

(assert (=> d!623072 m!2478249))

(declare-fun m!2478251 () Bool)

(assert (=> d!623072 m!2478251))

(assert (=> b!2035514 d!623072))

(declare-fun d!623076 () Bool)

(declare-fun e!1285573 () Bool)

(assert (=> d!623076 e!1285573))

(declare-fun res!892581 () Bool)

(assert (=> d!623076 (=> (not res!892581) (not e!1285573))))

(declare-fun lt!764696 () List!22343)

(assert (=> d!623076 (= res!892581 (<= (size!17397 lt!764696) (size!17397 (++!6037 lt!764689 lt!764690))))))

(declare-fun e!1285571 () List!22343)

(assert (=> d!623076 (= lt!764696 e!1285571)))

(declare-fun c!329616 () Bool)

(assert (=> d!623076 (= c!329616 ((_ is Nil!22261) (++!6037 lt!764689 lt!764690)))))

(assert (=> d!623076 (= (filter!450 (++!6037 lt!764689 lt!764690) p!1489) lt!764696)))

(declare-fun b!2035553 () Bool)

(assert (=> b!2035553 (= e!1285571 Nil!22261)))

(declare-fun b!2035554 () Bool)

(assert (=> b!2035554 (= e!1285573 (forall!4743 lt!764696 p!1489))))

(declare-fun b!2035555 () Bool)

(declare-fun e!1285572 () List!22343)

(declare-fun call!124904 () List!22343)

(assert (=> b!2035555 (= e!1285572 call!124904)))

(declare-fun bm!124899 () Bool)

(assert (=> bm!124899 (= call!124904 (filter!450 (t!191208 (++!6037 lt!764689 lt!764690)) p!1489))))

(declare-fun b!2035556 () Bool)

(declare-fun res!892580 () Bool)

(assert (=> b!2035556 (=> (not res!892580) (not e!1285573))))

(assert (=> b!2035556 (= res!892580 (= ((_ map implies) (content!3296 lt!764696) (content!3296 (++!6037 lt!764689 lt!764690))) ((as const (InoxSet T!35892)) true)))))

(declare-fun b!2035557 () Bool)

(assert (=> b!2035557 (= e!1285572 (Cons!22261 (h!27662 (++!6037 lt!764689 lt!764690)) call!124904))))

(declare-fun b!2035558 () Bool)

(assert (=> b!2035558 (= e!1285571 e!1285572)))

(declare-fun c!329617 () Bool)

(assert (=> b!2035558 (= c!329617 (dynLambda!11093 p!1489 (h!27662 (++!6037 lt!764689 lt!764690))))))

(assert (= (and d!623076 c!329616) b!2035553))

(assert (= (and d!623076 (not c!329616)) b!2035558))

(assert (= (and b!2035558 c!329617) b!2035557))

(assert (= (and b!2035558 (not c!329617)) b!2035555))

(assert (= (or b!2035557 b!2035555) bm!124899))

(assert (= (and d!623076 res!892581) b!2035556))

(assert (= (and b!2035556 res!892580) b!2035554))

(declare-fun b_lambda!68703 () Bool)

(assert (=> (not b_lambda!68703) (not b!2035558)))

(declare-fun t!191213 () Bool)

(declare-fun tb!128807 () Bool)

(assert (=> (and start!200520 (= p!1489 p!1489) t!191213) tb!128807))

(declare-fun result!154046 () Bool)

(assert (=> tb!128807 (= result!154046 true)))

(assert (=> b!2035558 t!191213))

(declare-fun b_and!162567 () Bool)

(assert (= b_and!162565 (and (=> t!191213 result!154046) b_and!162567)))

(declare-fun m!2478253 () Bool)

(assert (=> b!2035556 m!2478253))

(assert (=> b!2035556 m!2478211))

(declare-fun m!2478255 () Bool)

(assert (=> b!2035556 m!2478255))

(declare-fun m!2478257 () Bool)

(assert (=> bm!124899 m!2478257))

(declare-fun m!2478259 () Bool)

(assert (=> b!2035558 m!2478259))

(declare-fun m!2478261 () Bool)

(assert (=> b!2035554 m!2478261))

(declare-fun m!2478263 () Bool)

(assert (=> d!623076 m!2478263))

(assert (=> d!623076 m!2478211))

(declare-fun m!2478265 () Bool)

(assert (=> d!623076 m!2478265))

(assert (=> b!2035514 d!623076))

(declare-fun b!2035569 () Bool)

(declare-fun e!1285579 () List!22343)

(declare-fun list!9110 (IArray!14911) List!22343)

(assert (=> b!2035569 (= e!1285579 (list!9110 (xs!10355 (left!17716 t!4319))))))

(declare-fun b!2035568 () Bool)

(declare-fun e!1285578 () List!22343)

(assert (=> b!2035568 (= e!1285578 e!1285579)))

(declare-fun c!329623 () Bool)

(assert (=> b!2035568 (= c!329623 ((_ is Leaf!10921) (left!17716 t!4319)))))

(declare-fun d!623078 () Bool)

(declare-fun c!329622 () Bool)

(assert (=> d!623078 (= c!329622 ((_ is Empty!7453) (left!17716 t!4319)))))

(assert (=> d!623078 (= (list!9109 (left!17716 t!4319)) e!1285578)))

(declare-fun b!2035570 () Bool)

(assert (=> b!2035570 (= e!1285579 (++!6037 (list!9109 (left!17716 (left!17716 t!4319))) (list!9109 (right!18046 (left!17716 t!4319)))))))

(declare-fun b!2035567 () Bool)

(assert (=> b!2035567 (= e!1285578 Nil!22261)))

(assert (= (and d!623078 c!329622) b!2035567))

(assert (= (and d!623078 (not c!329622)) b!2035568))

(assert (= (and b!2035568 c!329623) b!2035569))

(assert (= (and b!2035568 (not c!329623)) b!2035570))

(declare-fun m!2478267 () Bool)

(assert (=> b!2035569 m!2478267))

(declare-fun m!2478269 () Bool)

(assert (=> b!2035570 m!2478269))

(declare-fun m!2478271 () Bool)

(assert (=> b!2035570 m!2478271))

(assert (=> b!2035570 m!2478269))

(assert (=> b!2035570 m!2478271))

(declare-fun m!2478273 () Bool)

(assert (=> b!2035570 m!2478273))

(assert (=> b!2035514 d!623078))

(declare-fun d!623080 () Bool)

(assert (=> d!623080 (= (filter!450 (++!6037 lt!764689 lt!764690) p!1489) (++!6037 (filter!450 lt!764689 p!1489) (filter!450 lt!764690 p!1489)))))

(declare-fun lt!764705 () Unit!36964)

(declare-fun choose!12421 (List!22343 List!22343 Int) Unit!36964)

(assert (=> d!623080 (= lt!764705 (choose!12421 lt!764689 lt!764690 p!1489))))

(assert (=> d!623080 (= (lemmaFilterConcat!24 lt!764689 lt!764690 p!1489) lt!764705)))

(declare-fun bs!421326 () Bool)

(assert (= bs!421326 d!623080))

(assert (=> bs!421326 m!2478211))

(assert (=> bs!421326 m!2478215))

(declare-fun m!2478275 () Bool)

(assert (=> bs!421326 m!2478275))

(assert (=> bs!421326 m!2478203))

(assert (=> bs!421326 m!2478205))

(assert (=> bs!421326 m!2478203))

(assert (=> bs!421326 m!2478205))

(assert (=> bs!421326 m!2478207))

(assert (=> bs!421326 m!2478211))

(assert (=> b!2035514 d!623080))

(declare-fun b!2035587 () Bool)

(declare-fun e!1285589 () List!22343)

(assert (=> b!2035587 (= e!1285589 (list!9110 (xs!10355 (right!18046 t!4319))))))

(declare-fun b!2035586 () Bool)

(declare-fun e!1285588 () List!22343)

(assert (=> b!2035586 (= e!1285588 e!1285589)))

(declare-fun c!329631 () Bool)

(assert (=> b!2035586 (= c!329631 ((_ is Leaf!10921) (right!18046 t!4319)))))

(declare-fun d!623082 () Bool)

(declare-fun c!329630 () Bool)

(assert (=> d!623082 (= c!329630 ((_ is Empty!7453) (right!18046 t!4319)))))

(assert (=> d!623082 (= (list!9109 (right!18046 t!4319)) e!1285588)))

(declare-fun b!2035588 () Bool)

(assert (=> b!2035588 (= e!1285589 (++!6037 (list!9109 (left!17716 (right!18046 t!4319))) (list!9109 (right!18046 (right!18046 t!4319)))))))

(declare-fun b!2035585 () Bool)

(assert (=> b!2035585 (= e!1285588 Nil!22261)))

(assert (= (and d!623082 c!329630) b!2035585))

(assert (= (and d!623082 (not c!329630)) b!2035586))

(assert (= (and b!2035586 c!329631) b!2035587))

(assert (= (and b!2035586 (not c!329631)) b!2035588))

(declare-fun m!2478277 () Bool)

(assert (=> b!2035587 m!2478277))

(declare-fun m!2478279 () Bool)

(assert (=> b!2035588 m!2478279))

(declare-fun m!2478281 () Bool)

(assert (=> b!2035588 m!2478281))

(assert (=> b!2035588 m!2478279))

(assert (=> b!2035588 m!2478281))

(declare-fun m!2478283 () Bool)

(assert (=> b!2035588 m!2478283))

(assert (=> b!2035514 d!623082))

(declare-fun b!2035620 () Bool)

(declare-fun e!1285605 () Bool)

(declare-fun lt!764714 () List!22343)

(assert (=> b!2035620 (= e!1285605 (or (not (= lt!764690 Nil!22261)) (= lt!764714 lt!764689)))))

(declare-fun b!2035617 () Bool)

(declare-fun e!1285604 () List!22343)

(assert (=> b!2035617 (= e!1285604 lt!764690)))

(declare-fun d!623084 () Bool)

(assert (=> d!623084 e!1285605))

(declare-fun res!892596 () Bool)

(assert (=> d!623084 (=> (not res!892596) (not e!1285605))))

(assert (=> d!623084 (= res!892596 (= (content!3296 lt!764714) ((_ map or) (content!3296 lt!764689) (content!3296 lt!764690))))))

(assert (=> d!623084 (= lt!764714 e!1285604)))

(declare-fun c!329640 () Bool)

(assert (=> d!623084 (= c!329640 ((_ is Nil!22261) lt!764689))))

(assert (=> d!623084 (= (++!6037 lt!764689 lt!764690) lt!764714)))

(declare-fun b!2035619 () Bool)

(declare-fun res!892597 () Bool)

(assert (=> b!2035619 (=> (not res!892597) (not e!1285605))))

(assert (=> b!2035619 (= res!892597 (= (size!17397 lt!764714) (+ (size!17397 lt!764689) (size!17397 lt!764690))))))

(declare-fun b!2035618 () Bool)

(assert (=> b!2035618 (= e!1285604 (Cons!22261 (h!27662 lt!764689) (++!6037 (t!191208 lt!764689) lt!764690)))))

(assert (= (and d!623084 c!329640) b!2035617))

(assert (= (and d!623084 (not c!329640)) b!2035618))

(assert (= (and d!623084 res!892596) b!2035619))

(assert (= (and b!2035619 res!892597) b!2035620))

(declare-fun m!2478345 () Bool)

(assert (=> d!623084 m!2478345))

(declare-fun m!2478347 () Bool)

(assert (=> d!623084 m!2478347))

(assert (=> d!623084 m!2478241))

(declare-fun m!2478349 () Bool)

(assert (=> b!2035619 m!2478349))

(declare-fun m!2478351 () Bool)

(assert (=> b!2035619 m!2478351))

(assert (=> b!2035619 m!2478251))

(declare-fun m!2478353 () Bool)

(assert (=> b!2035618 m!2478353))

(assert (=> b!2035514 d!623084))

(declare-fun d!623092 () Bool)

(declare-fun e!1285608 () Bool)

(assert (=> d!623092 e!1285608))

(declare-fun res!892599 () Bool)

(assert (=> d!623092 (=> (not res!892599) (not e!1285608))))

(declare-fun lt!764715 () List!22343)

(assert (=> d!623092 (= res!892599 (<= (size!17397 lt!764715) (size!17397 lt!764689)))))

(declare-fun e!1285606 () List!22343)

(assert (=> d!623092 (= lt!764715 e!1285606)))

(declare-fun c!329641 () Bool)

(assert (=> d!623092 (= c!329641 ((_ is Nil!22261) lt!764689))))

(assert (=> d!623092 (= (filter!450 lt!764689 p!1489) lt!764715)))

(declare-fun b!2035621 () Bool)

(assert (=> b!2035621 (= e!1285606 Nil!22261)))

(declare-fun b!2035622 () Bool)

(assert (=> b!2035622 (= e!1285608 (forall!4743 lt!764715 p!1489))))

(declare-fun b!2035623 () Bool)

(declare-fun e!1285607 () List!22343)

(declare-fun call!124905 () List!22343)

(assert (=> b!2035623 (= e!1285607 call!124905)))

(declare-fun bm!124900 () Bool)

(assert (=> bm!124900 (= call!124905 (filter!450 (t!191208 lt!764689) p!1489))))

(declare-fun b!2035624 () Bool)

(declare-fun res!892598 () Bool)

(assert (=> b!2035624 (=> (not res!892598) (not e!1285608))))

(assert (=> b!2035624 (= res!892598 (= ((_ map implies) (content!3296 lt!764715) (content!3296 lt!764689)) ((as const (InoxSet T!35892)) true)))))

(declare-fun b!2035625 () Bool)

(assert (=> b!2035625 (= e!1285607 (Cons!22261 (h!27662 lt!764689) call!124905))))

(declare-fun b!2035626 () Bool)

(assert (=> b!2035626 (= e!1285606 e!1285607)))

(declare-fun c!329642 () Bool)

(assert (=> b!2035626 (= c!329642 (dynLambda!11093 p!1489 (h!27662 lt!764689)))))

(assert (= (and d!623092 c!329641) b!2035621))

(assert (= (and d!623092 (not c!329641)) b!2035626))

(assert (= (and b!2035626 c!329642) b!2035625))

(assert (= (and b!2035626 (not c!329642)) b!2035623))

(assert (= (or b!2035625 b!2035623) bm!124900))

(assert (= (and d!623092 res!892599) b!2035624))

(assert (= (and b!2035624 res!892598) b!2035622))

(declare-fun b_lambda!68705 () Bool)

(assert (=> (not b_lambda!68705) (not b!2035626)))

(declare-fun t!191217 () Bool)

(declare-fun tb!128809 () Bool)

(assert (=> (and start!200520 (= p!1489 p!1489) t!191217) tb!128809))

(declare-fun result!154048 () Bool)

(assert (=> tb!128809 (= result!154048 true)))

(assert (=> b!2035626 t!191217))

(declare-fun b_and!162569 () Bool)

(assert (= b_and!162567 (and (=> t!191217 result!154048) b_and!162569)))

(declare-fun m!2478357 () Bool)

(assert (=> b!2035624 m!2478357))

(assert (=> b!2035624 m!2478347))

(declare-fun m!2478359 () Bool)

(assert (=> bm!124900 m!2478359))

(declare-fun m!2478361 () Bool)

(assert (=> b!2035626 m!2478361))

(declare-fun m!2478363 () Bool)

(assert (=> b!2035622 m!2478363))

(declare-fun m!2478365 () Bool)

(assert (=> d!623092 m!2478365))

(assert (=> d!623092 m!2478351))

(assert (=> b!2035514 d!623092))

(declare-fun e!1285610 () Bool)

(declare-fun b!2035630 () Bool)

(declare-fun lt!764716 () List!22343)

(assert (=> b!2035630 (= e!1285610 (or (not (= (filter!450 lt!764690 p!1489) Nil!22261)) (= lt!764716 (filter!450 lt!764689 p!1489))))))

(declare-fun b!2035627 () Bool)

(declare-fun e!1285609 () List!22343)

(assert (=> b!2035627 (= e!1285609 (filter!450 lt!764690 p!1489))))

(declare-fun d!623096 () Bool)

(assert (=> d!623096 e!1285610))

(declare-fun res!892600 () Bool)

(assert (=> d!623096 (=> (not res!892600) (not e!1285610))))

(assert (=> d!623096 (= res!892600 (= (content!3296 lt!764716) ((_ map or) (content!3296 (filter!450 lt!764689 p!1489)) (content!3296 (filter!450 lt!764690 p!1489)))))))

(assert (=> d!623096 (= lt!764716 e!1285609)))

(declare-fun c!329643 () Bool)

(assert (=> d!623096 (= c!329643 ((_ is Nil!22261) (filter!450 lt!764689 p!1489)))))

(assert (=> d!623096 (= (++!6037 (filter!450 lt!764689 p!1489) (filter!450 lt!764690 p!1489)) lt!764716)))

(declare-fun b!2035629 () Bool)

(declare-fun res!892601 () Bool)

(assert (=> b!2035629 (=> (not res!892601) (not e!1285610))))

(assert (=> b!2035629 (= res!892601 (= (size!17397 lt!764716) (+ (size!17397 (filter!450 lt!764689 p!1489)) (size!17397 (filter!450 lt!764690 p!1489)))))))

(declare-fun b!2035628 () Bool)

(assert (=> b!2035628 (= e!1285609 (Cons!22261 (h!27662 (filter!450 lt!764689 p!1489)) (++!6037 (t!191208 (filter!450 lt!764689 p!1489)) (filter!450 lt!764690 p!1489))))))

(assert (= (and d!623096 c!329643) b!2035627))

(assert (= (and d!623096 (not c!329643)) b!2035628))

(assert (= (and d!623096 res!892600) b!2035629))

(assert (= (and b!2035629 res!892601) b!2035630))

(declare-fun m!2478367 () Bool)

(assert (=> d!623096 m!2478367))

(assert (=> d!623096 m!2478203))

(declare-fun m!2478369 () Bool)

(assert (=> d!623096 m!2478369))

(assert (=> d!623096 m!2478205))

(declare-fun m!2478371 () Bool)

(assert (=> d!623096 m!2478371))

(declare-fun m!2478373 () Bool)

(assert (=> b!2035629 m!2478373))

(assert (=> b!2035629 m!2478203))

(declare-fun m!2478375 () Bool)

(assert (=> b!2035629 m!2478375))

(assert (=> b!2035629 m!2478205))

(declare-fun m!2478377 () Bool)

(assert (=> b!2035629 m!2478377))

(assert (=> b!2035628 m!2478205))

(declare-fun m!2478379 () Bool)

(assert (=> b!2035628 m!2478379))

(assert (=> b!2035514 d!623096))

(declare-fun d!623098 () Bool)

(declare-fun c!329649 () Bool)

(assert (=> d!623098 (= c!329649 ((_ is Node!7453) (left!17716 t!4319)))))

(declare-fun e!1285621 () Bool)

(assert (=> d!623098 (= (inv!29495 (left!17716 t!4319)) e!1285621)))

(declare-fun b!2035649 () Bool)

(declare-fun inv!29497 (Conc!7453) Bool)

(assert (=> b!2035649 (= e!1285621 (inv!29497 (left!17716 t!4319)))))

(declare-fun b!2035650 () Bool)

(declare-fun e!1285622 () Bool)

(assert (=> b!2035650 (= e!1285621 e!1285622)))

(declare-fun res!892610 () Bool)

(assert (=> b!2035650 (= res!892610 (not ((_ is Leaf!10921) (left!17716 t!4319))))))

(assert (=> b!2035650 (=> res!892610 e!1285622)))

(declare-fun b!2035651 () Bool)

(declare-fun inv!29498 (Conc!7453) Bool)

(assert (=> b!2035651 (= e!1285622 (inv!29498 (left!17716 t!4319)))))

(assert (= (and d!623098 c!329649) b!2035649))

(assert (= (and d!623098 (not c!329649)) b!2035650))

(assert (= (and b!2035650 (not res!892610)) b!2035651))

(declare-fun m!2478381 () Bool)

(assert (=> b!2035649 m!2478381))

(declare-fun m!2478383 () Bool)

(assert (=> b!2035651 m!2478383))

(assert (=> b!2035515 d!623098))

(declare-fun d!623100 () Bool)

(declare-fun c!329650 () Bool)

(assert (=> d!623100 (= c!329650 ((_ is Node!7453) (right!18046 t!4319)))))

(declare-fun e!1285623 () Bool)

(assert (=> d!623100 (= (inv!29495 (right!18046 t!4319)) e!1285623)))

(declare-fun b!2035652 () Bool)

(assert (=> b!2035652 (= e!1285623 (inv!29497 (right!18046 t!4319)))))

(declare-fun b!2035653 () Bool)

(declare-fun e!1285624 () Bool)

(assert (=> b!2035653 (= e!1285623 e!1285624)))

(declare-fun res!892611 () Bool)

(assert (=> b!2035653 (= res!892611 (not ((_ is Leaf!10921) (right!18046 t!4319))))))

(assert (=> b!2035653 (=> res!892611 e!1285624)))

(declare-fun b!2035654 () Bool)

(assert (=> b!2035654 (= e!1285624 (inv!29498 (right!18046 t!4319)))))

(assert (= (and d!623100 c!329650) b!2035652))

(assert (= (and d!623100 (not c!329650)) b!2035653))

(assert (= (and b!2035653 (not res!892611)) b!2035654))

(declare-fun m!2478391 () Bool)

(assert (=> b!2035652 m!2478391))

(declare-fun m!2478393 () Bool)

(assert (=> b!2035654 m!2478393))

(assert (=> b!2035515 d!623100))

(declare-fun b!2035685 () Bool)

(declare-fun res!892631 () Bool)

(declare-fun e!1285638 () Bool)

(assert (=> b!2035685 (=> (not res!892631) (not e!1285638))))

(declare-fun height!1154 (Conc!7453) Int)

(assert (=> b!2035685 (= res!892631 (<= (- (height!1154 (left!17716 t!4319)) (height!1154 (right!18046 t!4319))) 1))))

(declare-fun b!2035686 () Bool)

(declare-fun isEmpty!13912 (Conc!7453) Bool)

(assert (=> b!2035686 (= e!1285638 (not (isEmpty!13912 (right!18046 t!4319))))))

(declare-fun b!2035687 () Bool)

(declare-fun res!892634 () Bool)

(assert (=> b!2035687 (=> (not res!892634) (not e!1285638))))

(assert (=> b!2035687 (= res!892634 (isBalanced!2331 (left!17716 t!4319)))))

(declare-fun d!623102 () Bool)

(declare-fun res!892635 () Bool)

(declare-fun e!1285639 () Bool)

(assert (=> d!623102 (=> res!892635 e!1285639)))

(assert (=> d!623102 (= res!892635 (not ((_ is Node!7453) t!4319)))))

(assert (=> d!623102 (= (isBalanced!2331 t!4319) e!1285639)))

(declare-fun b!2035688 () Bool)

(assert (=> b!2035688 (= e!1285639 e!1285638)))

(declare-fun res!892632 () Bool)

(assert (=> b!2035688 (=> (not res!892632) (not e!1285638))))

(assert (=> b!2035688 (= res!892632 (<= (- 1) (- (height!1154 (left!17716 t!4319)) (height!1154 (right!18046 t!4319)))))))

(declare-fun b!2035689 () Bool)

(declare-fun res!892630 () Bool)

(assert (=> b!2035689 (=> (not res!892630) (not e!1285638))))

(assert (=> b!2035689 (= res!892630 (not (isEmpty!13912 (left!17716 t!4319))))))

(declare-fun b!2035690 () Bool)

(declare-fun res!892633 () Bool)

(assert (=> b!2035690 (=> (not res!892633) (not e!1285638))))

(assert (=> b!2035690 (= res!892633 (isBalanced!2331 (right!18046 t!4319)))))

(assert (= (and d!623102 (not res!892635)) b!2035688))

(assert (= (and b!2035688 res!892632) b!2035685))

(assert (= (and b!2035685 res!892631) b!2035687))

(assert (= (and b!2035687 res!892634) b!2035690))

(assert (= (and b!2035690 res!892633) b!2035689))

(assert (= (and b!2035689 res!892630) b!2035686))

(declare-fun m!2478403 () Bool)

(assert (=> b!2035688 m!2478403))

(declare-fun m!2478405 () Bool)

(assert (=> b!2035688 m!2478405))

(declare-fun m!2478407 () Bool)

(assert (=> b!2035690 m!2478407))

(declare-fun m!2478409 () Bool)

(assert (=> b!2035689 m!2478409))

(assert (=> b!2035685 m!2478403))

(assert (=> b!2035685 m!2478405))

(declare-fun m!2478411 () Bool)

(assert (=> b!2035687 m!2478411))

(declare-fun m!2478415 () Bool)

(assert (=> b!2035686 m!2478415))

(assert (=> start!200520 d!623102))

(declare-fun d!623106 () Bool)

(declare-fun c!329657 () Bool)

(assert (=> d!623106 (= c!329657 ((_ is Node!7453) t!4319))))

(declare-fun e!1285640 () Bool)

(assert (=> d!623106 (= (inv!29495 t!4319) e!1285640)))

(declare-fun b!2035691 () Bool)

(assert (=> b!2035691 (= e!1285640 (inv!29497 t!4319))))

(declare-fun b!2035692 () Bool)

(declare-fun e!1285641 () Bool)

(assert (=> b!2035692 (= e!1285640 e!1285641)))

(declare-fun res!892636 () Bool)

(assert (=> b!2035692 (= res!892636 (not ((_ is Leaf!10921) t!4319)))))

(assert (=> b!2035692 (=> res!892636 e!1285641)))

(declare-fun b!2035693 () Bool)

(assert (=> b!2035693 (= e!1285641 (inv!29498 t!4319))))

(assert (= (and d!623106 c!329657) b!2035691))

(assert (= (and d!623106 (not c!329657)) b!2035692))

(assert (= (and b!2035692 (not res!892636)) b!2035693))

(declare-fun m!2478429 () Bool)

(assert (=> b!2035691 m!2478429))

(declare-fun m!2478431 () Bool)

(assert (=> b!2035693 m!2478431))

(assert (=> start!200520 d!623106))

(declare-fun b!2035700 () Bool)

(declare-fun res!892640 () Bool)

(declare-fun e!1285645 () Bool)

(assert (=> b!2035700 (=> (not res!892640) (not e!1285645))))

(assert (=> b!2035700 (= res!892640 (<= (- (height!1154 (left!17716 lt!764692)) (height!1154 (right!18046 lt!764692))) 1))))

(declare-fun b!2035701 () Bool)

(assert (=> b!2035701 (= e!1285645 (not (isEmpty!13912 (right!18046 lt!764692))))))

(declare-fun b!2035702 () Bool)

(declare-fun res!892643 () Bool)

(assert (=> b!2035702 (=> (not res!892643) (not e!1285645))))

(assert (=> b!2035702 (= res!892643 (isBalanced!2331 (left!17716 lt!764692)))))

(declare-fun d!623110 () Bool)

(declare-fun res!892644 () Bool)

(declare-fun e!1285646 () Bool)

(assert (=> d!623110 (=> res!892644 e!1285646)))

(assert (=> d!623110 (= res!892644 (not ((_ is Node!7453) lt!764692)))))

(assert (=> d!623110 (= (isBalanced!2331 lt!764692) e!1285646)))

(declare-fun b!2035703 () Bool)

(assert (=> b!2035703 (= e!1285646 e!1285645)))

(declare-fun res!892641 () Bool)

(assert (=> b!2035703 (=> (not res!892641) (not e!1285645))))

(assert (=> b!2035703 (= res!892641 (<= (- 1) (- (height!1154 (left!17716 lt!764692)) (height!1154 (right!18046 lt!764692)))))))

(declare-fun b!2035704 () Bool)

(declare-fun res!892639 () Bool)

(assert (=> b!2035704 (=> (not res!892639) (not e!1285645))))

(assert (=> b!2035704 (= res!892639 (not (isEmpty!13912 (left!17716 lt!764692))))))

(declare-fun b!2035705 () Bool)

(declare-fun res!892642 () Bool)

(assert (=> b!2035705 (=> (not res!892642) (not e!1285645))))

(assert (=> b!2035705 (= res!892642 (isBalanced!2331 (right!18046 lt!764692)))))

(assert (= (and d!623110 (not res!892644)) b!2035703))

(assert (= (and b!2035703 res!892641) b!2035700))

(assert (= (and b!2035700 res!892640) b!2035702))

(assert (= (and b!2035702 res!892643) b!2035705))

(assert (= (and b!2035705 res!892642) b!2035704))

(assert (= (and b!2035704 res!892639) b!2035701))

(declare-fun m!2478433 () Bool)

(assert (=> b!2035703 m!2478433))

(declare-fun m!2478435 () Bool)

(assert (=> b!2035703 m!2478435))

(declare-fun m!2478437 () Bool)

(assert (=> b!2035705 m!2478437))

(declare-fun m!2478441 () Bool)

(assert (=> b!2035704 m!2478441))

(assert (=> b!2035700 m!2478433))

(assert (=> b!2035700 m!2478435))

(declare-fun m!2478449 () Bool)

(assert (=> b!2035702 m!2478449))

(declare-fun m!2478453 () Bool)

(assert (=> b!2035701 m!2478453))

(assert (=> b!2035511 d!623110))

(declare-fun d!623112 () Bool)

(declare-fun e!1285683 () Bool)

(assert (=> d!623112 e!1285683))

(declare-fun res!892662 () Bool)

(assert (=> d!623112 (=> (not res!892662) (not e!1285683))))

(declare-fun lt!764735 () Conc!7453)

(assert (=> d!623112 (= res!892662 (isBalanced!2331 lt!764735))))

(declare-fun e!1285682 () Conc!7453)

(assert (=> d!623112 (= lt!764735 e!1285682)))

(declare-fun c!329683 () Bool)

(assert (=> d!623112 (= c!329683 ((_ is Empty!7453) (right!18046 t!4319)))))

(assert (=> d!623112 (isBalanced!2331 (right!18046 t!4319))))

(assert (=> d!623112 (= (filter!449 (right!18046 t!4319) p!1489) lt!764735)))

(declare-fun b!2035771 () Bool)

(declare-fun e!1285684 () Conc!7453)

(assert (=> b!2035771 (= e!1285682 e!1285684)))

(declare-fun c!329684 () Bool)

(assert (=> b!2035771 (= c!329684 ((_ is Leaf!10921) (right!18046 t!4319)))))

(declare-fun b!2035772 () Bool)

(declare-fun e!1285685 () Conc!7453)

(declare-fun lt!764736 () IArray!14911)

(declare-fun size!17400 (IArray!14911) Int)

(assert (=> b!2035772 (= e!1285685 (Leaf!10921 lt!764736 (size!17400 lt!764736)))))

(declare-fun b!2035773 () Bool)

(assert (=> b!2035773 (= e!1285685 Empty!7453)))

(declare-fun b!2035774 () Bool)

(declare-fun c!329682 () Bool)

(assert (=> b!2035774 (= c!329682 (= (size!17400 lt!764736) 0))))

(declare-fun filter!452 (IArray!14911 Int) IArray!14911)

(assert (=> b!2035774 (= lt!764736 (filter!452 (xs!10355 (right!18046 t!4319)) p!1489))))

(assert (=> b!2035774 (= e!1285684 e!1285685)))

(declare-fun b!2035775 () Bool)

(assert (=> b!2035775 (= e!1285683 (= (list!9109 lt!764735) (filter!450 (list!9109 (right!18046 t!4319)) p!1489)))))

(declare-fun b!2035776 () Bool)

(declare-fun lt!764737 () Unit!36964)

(assert (=> b!2035776 (= lt!764737 (lemmaFilterConcat!24 (list!9109 (left!17716 (right!18046 t!4319))) (list!9109 (right!18046 (right!18046 t!4319))) p!1489))))

(declare-fun ++!6039 (Conc!7453 Conc!7453) Conc!7453)

(assert (=> b!2035776 (= e!1285684 (++!6039 (filter!449 (left!17716 (right!18046 t!4319)) p!1489) (filter!449 (right!18046 (right!18046 t!4319)) p!1489)))))

(declare-fun b!2035777 () Bool)

(assert (=> b!2035777 (= e!1285682 (right!18046 t!4319))))

(assert (= (and d!623112 c!329683) b!2035777))

(assert (= (and d!623112 (not c!329683)) b!2035771))

(assert (= (and b!2035771 c!329684) b!2035774))

(assert (= (and b!2035771 (not c!329684)) b!2035776))

(assert (= (and b!2035774 c!329682) b!2035773))

(assert (= (and b!2035774 (not c!329682)) b!2035772))

(assert (= (and d!623112 res!892662) b!2035775))

(declare-fun m!2478509 () Bool)

(assert (=> b!2035774 m!2478509))

(declare-fun m!2478511 () Bool)

(assert (=> b!2035774 m!2478511))

(assert (=> b!2035772 m!2478509))

(declare-fun m!2478513 () Bool)

(assert (=> b!2035776 m!2478513))

(declare-fun m!2478515 () Bool)

(assert (=> b!2035776 m!2478515))

(declare-fun m!2478517 () Bool)

(assert (=> b!2035776 m!2478517))

(assert (=> b!2035776 m!2478515))

(assert (=> b!2035776 m!2478513))

(assert (=> b!2035776 m!2478279))

(assert (=> b!2035776 m!2478281))

(assert (=> b!2035776 m!2478279))

(assert (=> b!2035776 m!2478281))

(declare-fun m!2478519 () Bool)

(assert (=> b!2035776 m!2478519))

(declare-fun m!2478521 () Bool)

(assert (=> d!623112 m!2478521))

(assert (=> d!623112 m!2478407))

(declare-fun m!2478523 () Bool)

(assert (=> b!2035775 m!2478523))

(assert (=> b!2035775 m!2478213))

(assert (=> b!2035775 m!2478213))

(declare-fun m!2478525 () Bool)

(assert (=> b!2035775 m!2478525))

(assert (=> b!2035511 d!623112))

(declare-fun d!623132 () Bool)

(declare-fun e!1285694 () Bool)

(assert (=> d!623132 e!1285694))

(declare-fun res!892663 () Bool)

(assert (=> d!623132 (=> (not res!892663) (not e!1285694))))

(declare-fun lt!764738 () Conc!7453)

(assert (=> d!623132 (= res!892663 (isBalanced!2331 lt!764738))))

(declare-fun e!1285693 () Conc!7453)

(assert (=> d!623132 (= lt!764738 e!1285693)))

(declare-fun c!329686 () Bool)

(assert (=> d!623132 (= c!329686 ((_ is Empty!7453) (left!17716 t!4319)))))

(assert (=> d!623132 (isBalanced!2331 (left!17716 t!4319))))

(assert (=> d!623132 (= (filter!449 (left!17716 t!4319) p!1489) lt!764738)))

(declare-fun b!2035790 () Bool)

(declare-fun e!1285695 () Conc!7453)

(assert (=> b!2035790 (= e!1285693 e!1285695)))

(declare-fun c!329687 () Bool)

(assert (=> b!2035790 (= c!329687 ((_ is Leaf!10921) (left!17716 t!4319)))))

(declare-fun b!2035791 () Bool)

(declare-fun e!1285696 () Conc!7453)

(declare-fun lt!764739 () IArray!14911)

(assert (=> b!2035791 (= e!1285696 (Leaf!10921 lt!764739 (size!17400 lt!764739)))))

(declare-fun b!2035792 () Bool)

(assert (=> b!2035792 (= e!1285696 Empty!7453)))

(declare-fun b!2035793 () Bool)

(declare-fun c!329685 () Bool)

(assert (=> b!2035793 (= c!329685 (= (size!17400 lt!764739) 0))))

(assert (=> b!2035793 (= lt!764739 (filter!452 (xs!10355 (left!17716 t!4319)) p!1489))))

(assert (=> b!2035793 (= e!1285695 e!1285696)))

(declare-fun b!2035794 () Bool)

(assert (=> b!2035794 (= e!1285694 (= (list!9109 lt!764738) (filter!450 (list!9109 (left!17716 t!4319)) p!1489)))))

(declare-fun b!2035795 () Bool)

(declare-fun lt!764740 () Unit!36964)

(assert (=> b!2035795 (= lt!764740 (lemmaFilterConcat!24 (list!9109 (left!17716 (left!17716 t!4319))) (list!9109 (right!18046 (left!17716 t!4319))) p!1489))))

(assert (=> b!2035795 (= e!1285695 (++!6039 (filter!449 (left!17716 (left!17716 t!4319)) p!1489) (filter!449 (right!18046 (left!17716 t!4319)) p!1489)))))

(declare-fun b!2035796 () Bool)

(assert (=> b!2035796 (= e!1285693 (left!17716 t!4319))))

(assert (= (and d!623132 c!329686) b!2035796))

(assert (= (and d!623132 (not c!329686)) b!2035790))

(assert (= (and b!2035790 c!329687) b!2035793))

(assert (= (and b!2035790 (not c!329687)) b!2035795))

(assert (= (and b!2035793 c!329685) b!2035792))

(assert (= (and b!2035793 (not c!329685)) b!2035791))

(assert (= (and d!623132 res!892663) b!2035794))

(declare-fun m!2478539 () Bool)

(assert (=> b!2035793 m!2478539))

(declare-fun m!2478541 () Bool)

(assert (=> b!2035793 m!2478541))

(assert (=> b!2035791 m!2478539))

(declare-fun m!2478543 () Bool)

(assert (=> b!2035795 m!2478543))

(declare-fun m!2478545 () Bool)

(assert (=> b!2035795 m!2478545))

(declare-fun m!2478547 () Bool)

(assert (=> b!2035795 m!2478547))

(assert (=> b!2035795 m!2478545))

(assert (=> b!2035795 m!2478543))

(assert (=> b!2035795 m!2478269))

(assert (=> b!2035795 m!2478271))

(assert (=> b!2035795 m!2478269))

(assert (=> b!2035795 m!2478271))

(declare-fun m!2478549 () Bool)

(assert (=> b!2035795 m!2478549))

(declare-fun m!2478551 () Bool)

(assert (=> d!623132 m!2478551))

(assert (=> d!623132 m!2478411))

(declare-fun m!2478553 () Bool)

(assert (=> b!2035794 m!2478553))

(assert (=> b!2035794 m!2478209))

(assert (=> b!2035794 m!2478209))

(declare-fun m!2478555 () Bool)

(assert (=> b!2035794 m!2478555))

(assert (=> b!2035511 d!623132))

(declare-fun b!2035800 () Bool)

(declare-fun res!892665 () Bool)

(declare-fun e!1285699 () Bool)

(assert (=> b!2035800 (=> (not res!892665) (not e!1285699))))

(assert (=> b!2035800 (= res!892665 (<= (- (height!1154 (left!17716 lt!764688)) (height!1154 (right!18046 lt!764688))) 1))))

(declare-fun b!2035801 () Bool)

(assert (=> b!2035801 (= e!1285699 (not (isEmpty!13912 (right!18046 lt!764688))))))

(declare-fun b!2035802 () Bool)

(declare-fun res!892668 () Bool)

(assert (=> b!2035802 (=> (not res!892668) (not e!1285699))))

(assert (=> b!2035802 (= res!892668 (isBalanced!2331 (left!17716 lt!764688)))))

(declare-fun d!623134 () Bool)

(declare-fun res!892669 () Bool)

(declare-fun e!1285700 () Bool)

(assert (=> d!623134 (=> res!892669 e!1285700)))

(assert (=> d!623134 (= res!892669 (not ((_ is Node!7453) lt!764688)))))

(assert (=> d!623134 (= (isBalanced!2331 lt!764688) e!1285700)))

(declare-fun b!2035803 () Bool)

(assert (=> b!2035803 (= e!1285700 e!1285699)))

(declare-fun res!892666 () Bool)

(assert (=> b!2035803 (=> (not res!892666) (not e!1285699))))

(assert (=> b!2035803 (= res!892666 (<= (- 1) (- (height!1154 (left!17716 lt!764688)) (height!1154 (right!18046 lt!764688)))))))

(declare-fun b!2035804 () Bool)

(declare-fun res!892664 () Bool)

(assert (=> b!2035804 (=> (not res!892664) (not e!1285699))))

(assert (=> b!2035804 (= res!892664 (not (isEmpty!13912 (left!17716 lt!764688))))))

(declare-fun b!2035805 () Bool)

(declare-fun res!892667 () Bool)

(assert (=> b!2035805 (=> (not res!892667) (not e!1285699))))

(assert (=> b!2035805 (= res!892667 (isBalanced!2331 (right!18046 lt!764688)))))

(assert (= (and d!623134 (not res!892669)) b!2035803))

(assert (= (and b!2035803 res!892666) b!2035800))

(assert (= (and b!2035800 res!892665) b!2035802))

(assert (= (and b!2035802 res!892668) b!2035805))

(assert (= (and b!2035805 res!892667) b!2035804))

(assert (= (and b!2035804 res!892664) b!2035801))

(declare-fun m!2478557 () Bool)

(assert (=> b!2035803 m!2478557))

(declare-fun m!2478559 () Bool)

(assert (=> b!2035803 m!2478559))

(declare-fun m!2478561 () Bool)

(assert (=> b!2035805 m!2478561))

(declare-fun m!2478563 () Bool)

(assert (=> b!2035804 m!2478563))

(assert (=> b!2035800 m!2478557))

(assert (=> b!2035800 m!2478559))

(declare-fun m!2478565 () Bool)

(assert (=> b!2035802 m!2478565))

(declare-fun m!2478567 () Bool)

(assert (=> b!2035801 m!2478567))

(assert (=> b!2035512 d!623134))

(declare-fun b!2035810 () Bool)

(declare-fun e!1285703 () Bool)

(declare-fun tp_is_empty!9245 () Bool)

(declare-fun tp!604578 () Bool)

(assert (=> b!2035810 (= e!1285703 (and tp_is_empty!9245 tp!604578))))

(assert (=> b!2035510 (= tp!604559 e!1285703)))

(assert (= (and b!2035510 ((_ is Cons!22261) (innerList!7513 (xs!10355 t!4319)))) b!2035810))

(declare-fun tp!604587 () Bool)

(declare-fun e!1285709 () Bool)

(declare-fun tp!604586 () Bool)

(declare-fun b!2035819 () Bool)

(assert (=> b!2035819 (= e!1285709 (and (inv!29495 (left!17716 (left!17716 t!4319))) tp!604586 (inv!29495 (right!18046 (left!17716 t!4319))) tp!604587))))

(declare-fun b!2035821 () Bool)

(declare-fun e!1285708 () Bool)

(declare-fun tp!604585 () Bool)

(assert (=> b!2035821 (= e!1285708 tp!604585)))

(declare-fun b!2035820 () Bool)

(assert (=> b!2035820 (= e!1285709 (and (inv!29496 (xs!10355 (left!17716 t!4319))) e!1285708))))

(assert (=> b!2035515 (= tp!604558 (and (inv!29495 (left!17716 t!4319)) e!1285709))))

(assert (= (and b!2035515 ((_ is Node!7453) (left!17716 t!4319))) b!2035819))

(assert (= b!2035820 b!2035821))

(assert (= (and b!2035515 ((_ is Leaf!10921) (left!17716 t!4319))) b!2035820))

(declare-fun m!2478569 () Bool)

(assert (=> b!2035819 m!2478569))

(declare-fun m!2478571 () Bool)

(assert (=> b!2035819 m!2478571))

(declare-fun m!2478573 () Bool)

(assert (=> b!2035820 m!2478573))

(assert (=> b!2035515 m!2478197))

(declare-fun b!2035822 () Bool)

(declare-fun e!1285711 () Bool)

(declare-fun tp!604589 () Bool)

(declare-fun tp!604590 () Bool)

(assert (=> b!2035822 (= e!1285711 (and (inv!29495 (left!17716 (right!18046 t!4319))) tp!604589 (inv!29495 (right!18046 (right!18046 t!4319))) tp!604590))))

(declare-fun b!2035824 () Bool)

(declare-fun e!1285710 () Bool)

(declare-fun tp!604588 () Bool)

(assert (=> b!2035824 (= e!1285710 tp!604588)))

(declare-fun b!2035823 () Bool)

(assert (=> b!2035823 (= e!1285711 (and (inv!29496 (xs!10355 (right!18046 t!4319))) e!1285710))))

(assert (=> b!2035515 (= tp!604557 (and (inv!29495 (right!18046 t!4319)) e!1285711))))

(assert (= (and b!2035515 ((_ is Node!7453) (right!18046 t!4319))) b!2035822))

(assert (= b!2035823 b!2035824))

(assert (= (and b!2035515 ((_ is Leaf!10921) (right!18046 t!4319))) b!2035823))

(declare-fun m!2478575 () Bool)

(assert (=> b!2035822 m!2478575))

(declare-fun m!2478577 () Bool)

(assert (=> b!2035822 m!2478577))

(declare-fun m!2478579 () Bool)

(assert (=> b!2035823 m!2478579))

(assert (=> b!2035515 m!2478199))

(declare-fun b_lambda!68719 () Bool)

(assert (= b_lambda!68705 (or (and start!200520 b_free!56799) b_lambda!68719)))

(declare-fun b_lambda!68721 () Bool)

(assert (= b_lambda!68703 (or (and start!200520 b_free!56799) b_lambda!68721)))

(declare-fun b_lambda!68723 () Bool)

(assert (= b_lambda!68701 (or (and start!200520 b_free!56799) b_lambda!68723)))

(check-sat (not b!2035556) (not d!623084) (not b!2035688) (not d!623070) (not b_lambda!68723) (not b!2035570) (not b!2035803) (not b!2035793) (not b!2035550) (not b!2035804) (not b!2035619) (not b!2035800) (not b!2035649) (not d!623112) (not b!2035824) (not b!2035774) (not b!2035687) (not b!2035569) (not b!2035622) (not b_lambda!68721) (not bm!124899) (not b!2035819) (not b!2035515) (not d!623072) tp_is_empty!9245 (not d!623096) (not b!2035795) (not b!2035554) (not b!2035629) (not b!2035776) (not b!2035693) (not b!2035689) (not b!2035794) (not d!623132) (not b!2035548) (not b_next!57503) (not b!2035823) (not b!2035791) (not b!2035802) (not b!2035820) (not b!2035805) (not bm!124900) (not b!2035705) (not b!2035685) (not b!2035628) (not b!2035618) (not b!2035624) (not b!2035690) (not b!2035654) (not b!2035701) (not b!2035702) (not b!2035772) (not b_lambda!68719) (not b!2035810) (not b!2035822) (not b!2035703) (not b!2035704) (not b!2035651) b_and!162569 (not b!2035587) (not bm!124898) (not d!623076) (not b!2035686) (not b!2035652) (not d!623092) (not b!2035700) (not b!2035801) (not b!2035588) (not b!2035821) (not b!2035775) (not d!623080) (not b!2035691))
(check-sat b_and!162569 (not b_next!57503))
