; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!520580 () Bool)

(assert start!520580)

(declare-fun b!4945457 () Bool)

(declare-fun e!3089895 () Bool)

(declare-fun tp!1387242 () Bool)

(assert (=> b!4945457 (= e!3089895 tp!1387242)))

(declare-fun b!4945458 () Bool)

(declare-fun e!3089891 () Bool)

(declare-fun e!3089892 () Bool)

(assert (=> b!4945458 (= e!3089891 e!3089892)))

(declare-fun res!2110244 () Bool)

(assert (=> b!4945458 (=> (not res!2110244) (not e!3089892))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2039117 () Int)

(assert (=> b!4945458 (= res!2110244 (= testedPSize!70 lt!2039117))))

(declare-datatypes ((C!27200 0))(
  ( (C!27201 (val!22934 Int)) )
))
(declare-datatypes ((List!57083 0))(
  ( (Nil!56959) (Cons!56959 (h!63407 C!27200) (t!367619 List!57083)) )
))
(declare-fun testedP!110 () List!57083)

(declare-fun size!37787 (List!57083) Int)

(assert (=> b!4945458 (= lt!2039117 (size!37787 testedP!110))))

(declare-fun b!4945459 () Bool)

(declare-fun e!3089887 () Bool)

(declare-fun tp_is_empty!36147 () Bool)

(declare-fun tp!1387241 () Bool)

(assert (=> b!4945459 (= e!3089887 (and tp_is_empty!36147 tp!1387241))))

(declare-fun b!4945460 () Bool)

(declare-fun res!2110247 () Bool)

(declare-fun e!3089889 () Bool)

(assert (=> b!4945460 (=> res!2110247 e!3089889)))

(declare-datatypes ((IArray!30049 0))(
  ( (IArray!30050 (innerList!15082 List!57083)) )
))
(declare-datatypes ((Conc!14994 0))(
  ( (Node!14994 (left!41557 Conc!14994) (right!41887 Conc!14994) (csize!30218 Int) (cheight!15205 Int)) (Leaf!24924 (xs!18320 IArray!30049) (csize!30219 Int)) (Empty!14994) )
))
(declare-datatypes ((BalanceConc!29418 0))(
  ( (BalanceConc!29419 (c!843856 Conc!14994)) )
))
(declare-datatypes ((tuple2!61492 0))(
  ( (tuple2!61493 (_1!34049 BalanceConc!29418) (_2!34049 BalanceConc!29418)) )
))
(declare-fun lt!2039120 () tuple2!61492)

(declare-fun size!37788 (BalanceConc!29418) Int)

(assert (=> b!4945460 (= res!2110247 (not (= (size!37788 (_1!34049 lt!2039120)) testedPSize!70)))))

(declare-fun b!4945461 () Bool)

(declare-fun e!3089893 () Bool)

(declare-fun totalInput!685 () BalanceConc!29418)

(declare-fun tp!1387245 () Bool)

(declare-fun inv!74174 (Conc!14994) Bool)

(assert (=> b!4945461 (= e!3089893 (and (inv!74174 (c!843856 totalInput!685)) tp!1387245))))

(declare-fun b!4945462 () Bool)

(declare-fun lt!2039118 () List!57083)

(assert (=> b!4945462 (= e!3089889 (= (size!37787 lt!2039118) lt!2039117))))

(declare-fun setIsEmpty!28016 () Bool)

(declare-fun setRes!28016 () Bool)

(assert (=> setIsEmpty!28016 setRes!28016))

(declare-fun b!4945463 () Bool)

(declare-fun res!2110242 () Bool)

(declare-fun e!3089888 () Bool)

(assert (=> b!4945463 (=> res!2110242 e!3089888)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4945463 (= res!2110242 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4945464 () Bool)

(declare-fun e!3089894 () Bool)

(declare-fun tp!1387244 () Bool)

(assert (=> b!4945464 (= e!3089894 (and tp_is_empty!36147 tp!1387244))))

(declare-fun b!4945465 () Bool)

(declare-fun res!2110246 () Bool)

(assert (=> b!4945465 (=> res!2110246 e!3089889)))

(declare-fun lt!2039125 () List!57083)

(declare-fun lt!2039122 () List!57083)

(assert (=> b!4945465 (= res!2110246 (not (= lt!2039125 lt!2039122)))))

(declare-fun res!2110249 () Bool)

(assert (=> start!520580 (=> (not res!2110249) (not e!3089891))))

(declare-fun lt!2039119 () List!57083)

(assert (=> start!520580 (= res!2110249 (= lt!2039122 lt!2039119))))

(declare-fun list!18149 (BalanceConc!29418) List!57083)

(assert (=> start!520580 (= lt!2039119 (list!18149 totalInput!685))))

(declare-fun testedSuffix!70 () List!57083)

(declare-fun ++!12460 (List!57083 List!57083) List!57083)

(assert (=> start!520580 (= lt!2039122 (++!12460 testedP!110 testedSuffix!70))))

(assert (=> start!520580 e!3089891))

(assert (=> start!520580 e!3089894))

(declare-fun condSetEmpty!28016 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13475 0))(
  ( (ElementMatch!13475 (c!843857 C!27200)) (Concat!22048 (regOne!27462 Regex!13475) (regTwo!27462 Regex!13475)) (EmptyExpr!13475) (Star!13475 (reg!13804 Regex!13475)) (EmptyLang!13475) (Union!13475 (regOne!27463 Regex!13475) (regTwo!27463 Regex!13475)) )
))
(declare-datatypes ((List!57084 0))(
  ( (Nil!56960) (Cons!56960 (h!63408 Regex!13475) (t!367620 List!57084)) )
))
(declare-datatypes ((Context!6234 0))(
  ( (Context!6235 (exprs!3617 List!57084)) )
))
(declare-fun z!3568 () (InoxSet Context!6234))

(assert (=> start!520580 (= condSetEmpty!28016 (= z!3568 ((as const (Array Context!6234 Bool)) false)))))

(assert (=> start!520580 setRes!28016))

(assert (=> start!520580 true))

(declare-fun inv!74175 (BalanceConc!29418) Bool)

(assert (=> start!520580 (and (inv!74175 totalInput!685) e!3089893)))

(assert (=> start!520580 e!3089887))

(declare-fun b!4945466 () Bool)

(assert (=> b!4945466 (= e!3089888 e!3089889)))

(declare-fun res!2110248 () Bool)

(assert (=> b!4945466 (=> res!2110248 e!3089889)))

(assert (=> b!4945466 (= res!2110248 (not (= lt!2039125 lt!2039119)))))

(assert (=> b!4945466 (= lt!2039125 (++!12460 lt!2039118 (list!18149 (_2!34049 lt!2039120))))))

(assert (=> b!4945466 (= lt!2039118 (list!18149 (_1!34049 lt!2039120)))))

(declare-fun splitAt!384 (BalanceConc!29418 Int) tuple2!61492)

(assert (=> b!4945466 (= lt!2039120 (splitAt!384 totalInput!685 testedPSize!70))))

(declare-fun b!4945467 () Bool)

(declare-fun res!2110245 () Bool)

(assert (=> b!4945467 (=> (not res!2110245) (not e!3089892))))

(assert (=> b!4945467 (= res!2110245 (= totalInputSize!132 (size!37788 totalInput!685)))))

(declare-fun b!4945468 () Bool)

(declare-fun e!3089890 () Bool)

(assert (=> b!4945468 (= e!3089892 (not e!3089890))))

(declare-fun res!2110243 () Bool)

(assert (=> b!4945468 (=> res!2110243 e!3089890)))

(declare-fun isPrefix!5081 (List!57083 List!57083) Bool)

(assert (=> b!4945468 (= res!2110243 (not (isPrefix!5081 testedP!110 lt!2039119)))))

(assert (=> b!4945468 (isPrefix!5081 testedP!110 lt!2039122)))

(declare-datatypes ((Unit!147744 0))(
  ( (Unit!147745) )
))
(declare-fun lt!2039121 () Unit!147744)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3305 (List!57083 List!57083) Unit!147744)

(assert (=> b!4945468 (= lt!2039121 (lemmaConcatTwoListThenFirstIsPrefix!3305 testedP!110 testedSuffix!70))))

(declare-fun b!4945469 () Bool)

(assert (=> b!4945469 (= e!3089890 e!3089888)))

(declare-fun res!2110250 () Bool)

(assert (=> b!4945469 (=> res!2110250 e!3089888)))

(declare-fun lostCauseZipper!793 ((InoxSet Context!6234)) Bool)

(assert (=> b!4945469 (= res!2110250 (lostCauseZipper!793 z!3568))))

(declare-fun lt!2039124 () List!57083)

(assert (=> b!4945469 (and (= testedSuffix!70 lt!2039124) (= lt!2039124 testedSuffix!70))))

(declare-fun lt!2039123 () Unit!147744)

(declare-fun lemmaSamePrefixThenSameSuffix!2473 (List!57083 List!57083 List!57083 List!57083 List!57083) Unit!147744)

(assert (=> b!4945469 (= lt!2039123 (lemmaSamePrefixThenSameSuffix!2473 testedP!110 testedSuffix!70 testedP!110 lt!2039124 lt!2039119))))

(declare-fun getSuffix!3063 (List!57083 List!57083) List!57083)

(assert (=> b!4945469 (= lt!2039124 (getSuffix!3063 lt!2039119 testedP!110))))

(declare-fun tp!1387243 () Bool)

(declare-fun setNonEmpty!28016 () Bool)

(declare-fun setElem!28016 () Context!6234)

(declare-fun inv!74176 (Context!6234) Bool)

(assert (=> setNonEmpty!28016 (= setRes!28016 (and tp!1387243 (inv!74176 setElem!28016) e!3089895))))

(declare-fun setRest!28016 () (InoxSet Context!6234))

(assert (=> setNonEmpty!28016 (= z!3568 ((_ map or) (store ((as const (Array Context!6234 Bool)) false) setElem!28016 true) setRest!28016))))

(assert (= (and start!520580 res!2110249) b!4945458))

(assert (= (and b!4945458 res!2110244) b!4945467))

(assert (= (and b!4945467 res!2110245) b!4945468))

(assert (= (and b!4945468 (not res!2110243)) b!4945469))

(assert (= (and b!4945469 (not res!2110250)) b!4945463))

(assert (= (and b!4945463 (not res!2110242)) b!4945466))

(assert (= (and b!4945466 (not res!2110248)) b!4945460))

(assert (= (and b!4945460 (not res!2110247)) b!4945465))

(assert (= (and b!4945465 (not res!2110246)) b!4945462))

(get-info :version)

(assert (= (and start!520580 ((_ is Cons!56959) testedP!110)) b!4945464))

(assert (= (and start!520580 condSetEmpty!28016) setIsEmpty!28016))

(assert (= (and start!520580 (not condSetEmpty!28016)) setNonEmpty!28016))

(assert (= setNonEmpty!28016 b!4945457))

(assert (= start!520580 b!4945461))

(assert (= (and start!520580 ((_ is Cons!56959) testedSuffix!70)) b!4945459))

(declare-fun m!5968466 () Bool)

(assert (=> b!4945458 m!5968466))

(declare-fun m!5968468 () Bool)

(assert (=> b!4945462 m!5968468))

(declare-fun m!5968470 () Bool)

(assert (=> start!520580 m!5968470))

(declare-fun m!5968472 () Bool)

(assert (=> start!520580 m!5968472))

(declare-fun m!5968474 () Bool)

(assert (=> start!520580 m!5968474))

(declare-fun m!5968476 () Bool)

(assert (=> b!4945468 m!5968476))

(declare-fun m!5968478 () Bool)

(assert (=> b!4945468 m!5968478))

(declare-fun m!5968480 () Bool)

(assert (=> b!4945468 m!5968480))

(declare-fun m!5968482 () Bool)

(assert (=> b!4945469 m!5968482))

(declare-fun m!5968484 () Bool)

(assert (=> b!4945469 m!5968484))

(declare-fun m!5968486 () Bool)

(assert (=> b!4945469 m!5968486))

(declare-fun m!5968488 () Bool)

(assert (=> b!4945460 m!5968488))

(declare-fun m!5968490 () Bool)

(assert (=> b!4945466 m!5968490))

(assert (=> b!4945466 m!5968490))

(declare-fun m!5968492 () Bool)

(assert (=> b!4945466 m!5968492))

(declare-fun m!5968494 () Bool)

(assert (=> b!4945466 m!5968494))

(declare-fun m!5968496 () Bool)

(assert (=> b!4945466 m!5968496))

(declare-fun m!5968498 () Bool)

(assert (=> b!4945461 m!5968498))

(declare-fun m!5968500 () Bool)

(assert (=> setNonEmpty!28016 m!5968500))

(declare-fun m!5968502 () Bool)

(assert (=> b!4945467 m!5968502))

(check-sat (not setNonEmpty!28016) (not b!4945461) (not b!4945458) (not b!4945467) (not b!4945462) (not b!4945459) tp_is_empty!36147 (not b!4945464) (not b!4945466) (not b!4945468) (not start!520580) (not b!4945457) (not b!4945460) (not b!4945469))
(check-sat)
(get-model)

(declare-fun d!1592266 () Bool)

(declare-fun lt!2039128 () Int)

(assert (=> d!1592266 (>= lt!2039128 0)))

(declare-fun e!3089898 () Int)

(assert (=> d!1592266 (= lt!2039128 e!3089898)))

(declare-fun c!843860 () Bool)

(assert (=> d!1592266 (= c!843860 ((_ is Nil!56959) testedP!110))))

(assert (=> d!1592266 (= (size!37787 testedP!110) lt!2039128)))

(declare-fun b!4945474 () Bool)

(assert (=> b!4945474 (= e!3089898 0)))

(declare-fun b!4945475 () Bool)

(assert (=> b!4945475 (= e!3089898 (+ 1 (size!37787 (t!367619 testedP!110))))))

(assert (= (and d!1592266 c!843860) b!4945474))

(assert (= (and d!1592266 (not c!843860)) b!4945475))

(declare-fun m!5968504 () Bool)

(assert (=> b!4945475 m!5968504))

(assert (=> b!4945458 d!1592266))

(declare-fun b!4945487 () Bool)

(declare-fun e!3089907 () Bool)

(assert (=> b!4945487 (= e!3089907 (>= (size!37787 lt!2039119) (size!37787 testedP!110)))))

(declare-fun b!4945486 () Bool)

(declare-fun e!3089906 () Bool)

(declare-fun tail!9740 (List!57083) List!57083)

(assert (=> b!4945486 (= e!3089906 (isPrefix!5081 (tail!9740 testedP!110) (tail!9740 lt!2039119)))))

(declare-fun b!4945485 () Bool)

(declare-fun res!2110259 () Bool)

(assert (=> b!4945485 (=> (not res!2110259) (not e!3089906))))

(declare-fun head!10601 (List!57083) C!27200)

(assert (=> b!4945485 (= res!2110259 (= (head!10601 testedP!110) (head!10601 lt!2039119)))))

(declare-fun b!4945484 () Bool)

(declare-fun e!3089905 () Bool)

(assert (=> b!4945484 (= e!3089905 e!3089906)))

(declare-fun res!2110262 () Bool)

(assert (=> b!4945484 (=> (not res!2110262) (not e!3089906))))

(assert (=> b!4945484 (= res!2110262 (not ((_ is Nil!56959) lt!2039119)))))

(declare-fun d!1592268 () Bool)

(assert (=> d!1592268 e!3089907))

(declare-fun res!2110260 () Bool)

(assert (=> d!1592268 (=> res!2110260 e!3089907)))

(declare-fun lt!2039131 () Bool)

(assert (=> d!1592268 (= res!2110260 (not lt!2039131))))

(assert (=> d!1592268 (= lt!2039131 e!3089905)))

(declare-fun res!2110261 () Bool)

(assert (=> d!1592268 (=> res!2110261 e!3089905)))

(assert (=> d!1592268 (= res!2110261 ((_ is Nil!56959) testedP!110))))

(assert (=> d!1592268 (= (isPrefix!5081 testedP!110 lt!2039119) lt!2039131)))

(assert (= (and d!1592268 (not res!2110261)) b!4945484))

(assert (= (and b!4945484 res!2110262) b!4945485))

(assert (= (and b!4945485 res!2110259) b!4945486))

(assert (= (and d!1592268 (not res!2110260)) b!4945487))

(declare-fun m!5968506 () Bool)

(assert (=> b!4945487 m!5968506))

(assert (=> b!4945487 m!5968466))

(declare-fun m!5968508 () Bool)

(assert (=> b!4945486 m!5968508))

(declare-fun m!5968510 () Bool)

(assert (=> b!4945486 m!5968510))

(assert (=> b!4945486 m!5968508))

(assert (=> b!4945486 m!5968510))

(declare-fun m!5968512 () Bool)

(assert (=> b!4945486 m!5968512))

(declare-fun m!5968514 () Bool)

(assert (=> b!4945485 m!5968514))

(declare-fun m!5968516 () Bool)

(assert (=> b!4945485 m!5968516))

(assert (=> b!4945468 d!1592268))

(declare-fun b!4945495 () Bool)

(declare-fun e!3089912 () Bool)

(assert (=> b!4945495 (= e!3089912 (>= (size!37787 lt!2039122) (size!37787 testedP!110)))))

(declare-fun b!4945494 () Bool)

(declare-fun e!3089910 () Bool)

(assert (=> b!4945494 (= e!3089910 (isPrefix!5081 (tail!9740 testedP!110) (tail!9740 lt!2039122)))))

(declare-fun b!4945493 () Bool)

(declare-fun res!2110263 () Bool)

(assert (=> b!4945493 (=> (not res!2110263) (not e!3089910))))

(assert (=> b!4945493 (= res!2110263 (= (head!10601 testedP!110) (head!10601 lt!2039122)))))

(declare-fun b!4945492 () Bool)

(declare-fun e!3089909 () Bool)

(assert (=> b!4945492 (= e!3089909 e!3089910)))

(declare-fun res!2110266 () Bool)

(assert (=> b!4945492 (=> (not res!2110266) (not e!3089910))))

(assert (=> b!4945492 (= res!2110266 (not ((_ is Nil!56959) lt!2039122)))))

(declare-fun d!1592272 () Bool)

(assert (=> d!1592272 e!3089912))

(declare-fun res!2110264 () Bool)

(assert (=> d!1592272 (=> res!2110264 e!3089912)))

(declare-fun lt!2039132 () Bool)

(assert (=> d!1592272 (= res!2110264 (not lt!2039132))))

(assert (=> d!1592272 (= lt!2039132 e!3089909)))

(declare-fun res!2110265 () Bool)

(assert (=> d!1592272 (=> res!2110265 e!3089909)))

(assert (=> d!1592272 (= res!2110265 ((_ is Nil!56959) testedP!110))))

(assert (=> d!1592272 (= (isPrefix!5081 testedP!110 lt!2039122) lt!2039132)))

(assert (= (and d!1592272 (not res!2110265)) b!4945492))

(assert (= (and b!4945492 res!2110266) b!4945493))

(assert (= (and b!4945493 res!2110263) b!4945494))

(assert (= (and d!1592272 (not res!2110264)) b!4945495))

(declare-fun m!5968518 () Bool)

(assert (=> b!4945495 m!5968518))

(assert (=> b!4945495 m!5968466))

(assert (=> b!4945494 m!5968508))

(declare-fun m!5968520 () Bool)

(assert (=> b!4945494 m!5968520))

(assert (=> b!4945494 m!5968508))

(assert (=> b!4945494 m!5968520))

(declare-fun m!5968522 () Bool)

(assert (=> b!4945494 m!5968522))

(assert (=> b!4945493 m!5968514))

(declare-fun m!5968524 () Bool)

(assert (=> b!4945493 m!5968524))

(assert (=> b!4945468 d!1592272))

(declare-fun d!1592274 () Bool)

(assert (=> d!1592274 (isPrefix!5081 testedP!110 (++!12460 testedP!110 testedSuffix!70))))

(declare-fun lt!2039135 () Unit!147744)

(declare-fun choose!36448 (List!57083 List!57083) Unit!147744)

(assert (=> d!1592274 (= lt!2039135 (choose!36448 testedP!110 testedSuffix!70))))

(assert (=> d!1592274 (= (lemmaConcatTwoListThenFirstIsPrefix!3305 testedP!110 testedSuffix!70) lt!2039135)))

(declare-fun bs!1181637 () Bool)

(assert (= bs!1181637 d!1592274))

(assert (=> bs!1181637 m!5968472))

(assert (=> bs!1181637 m!5968472))

(declare-fun m!5968526 () Bool)

(assert (=> bs!1181637 m!5968526))

(declare-fun m!5968528 () Bool)

(assert (=> bs!1181637 m!5968528))

(assert (=> b!4945468 d!1592274))

(declare-fun d!1592276 () Bool)

(declare-fun lt!2039136 () Int)

(assert (=> d!1592276 (>= lt!2039136 0)))

(declare-fun e!3089917 () Int)

(assert (=> d!1592276 (= lt!2039136 e!3089917)))

(declare-fun c!843864 () Bool)

(assert (=> d!1592276 (= c!843864 ((_ is Nil!56959) lt!2039118))))

(assert (=> d!1592276 (= (size!37787 lt!2039118) lt!2039136)))

(declare-fun b!4945501 () Bool)

(assert (=> b!4945501 (= e!3089917 0)))

(declare-fun b!4945502 () Bool)

(assert (=> b!4945502 (= e!3089917 (+ 1 (size!37787 (t!367619 lt!2039118))))))

(assert (= (and d!1592276 c!843864) b!4945501))

(assert (= (and d!1592276 (not c!843864)) b!4945502))

(declare-fun m!5968534 () Bool)

(assert (=> b!4945502 m!5968534))

(assert (=> b!4945462 d!1592276))

(declare-fun d!1592280 () Bool)

(declare-fun lt!2039139 () Int)

(assert (=> d!1592280 (= lt!2039139 (size!37787 (list!18149 totalInput!685)))))

(declare-fun size!37789 (Conc!14994) Int)

(assert (=> d!1592280 (= lt!2039139 (size!37789 (c!843856 totalInput!685)))))

(assert (=> d!1592280 (= (size!37788 totalInput!685) lt!2039139)))

(declare-fun bs!1181638 () Bool)

(assert (= bs!1181638 d!1592280))

(assert (=> bs!1181638 m!5968470))

(assert (=> bs!1181638 m!5968470))

(declare-fun m!5968536 () Bool)

(assert (=> bs!1181638 m!5968536))

(declare-fun m!5968538 () Bool)

(assert (=> bs!1181638 m!5968538))

(assert (=> b!4945467 d!1592280))

(declare-fun d!1592282 () Bool)

(declare-fun c!843867 () Bool)

(assert (=> d!1592282 (= c!843867 ((_ is Node!14994) (c!843856 totalInput!685)))))

(declare-fun e!3089922 () Bool)

(assert (=> d!1592282 (= (inv!74174 (c!843856 totalInput!685)) e!3089922)))

(declare-fun b!4945509 () Bool)

(declare-fun inv!74177 (Conc!14994) Bool)

(assert (=> b!4945509 (= e!3089922 (inv!74177 (c!843856 totalInput!685)))))

(declare-fun b!4945510 () Bool)

(declare-fun e!3089923 () Bool)

(assert (=> b!4945510 (= e!3089922 e!3089923)))

(declare-fun res!2110272 () Bool)

(assert (=> b!4945510 (= res!2110272 (not ((_ is Leaf!24924) (c!843856 totalInput!685))))))

(assert (=> b!4945510 (=> res!2110272 e!3089923)))

(declare-fun b!4945511 () Bool)

(declare-fun inv!74178 (Conc!14994) Bool)

(assert (=> b!4945511 (= e!3089923 (inv!74178 (c!843856 totalInput!685)))))

(assert (= (and d!1592282 c!843867) b!4945509))

(assert (= (and d!1592282 (not c!843867)) b!4945510))

(assert (= (and b!4945510 (not res!2110272)) b!4945511))

(declare-fun m!5968540 () Bool)

(assert (=> b!4945509 m!5968540))

(declare-fun m!5968542 () Bool)

(assert (=> b!4945511 m!5968542))

(assert (=> b!4945461 d!1592282))

(declare-fun b!4945522 () Bool)

(declare-fun res!2110277 () Bool)

(declare-fun e!3089929 () Bool)

(assert (=> b!4945522 (=> (not res!2110277) (not e!3089929))))

(declare-fun lt!2039142 () List!57083)

(assert (=> b!4945522 (= res!2110277 (= (size!37787 lt!2039142) (+ (size!37787 lt!2039118) (size!37787 (list!18149 (_2!34049 lt!2039120))))))))

(declare-fun d!1592284 () Bool)

(assert (=> d!1592284 e!3089929))

(declare-fun res!2110278 () Bool)

(assert (=> d!1592284 (=> (not res!2110278) (not e!3089929))))

(declare-fun content!10142 (List!57083) (InoxSet C!27200))

(assert (=> d!1592284 (= res!2110278 (= (content!10142 lt!2039142) ((_ map or) (content!10142 lt!2039118) (content!10142 (list!18149 (_2!34049 lt!2039120))))))))

(declare-fun e!3089928 () List!57083)

(assert (=> d!1592284 (= lt!2039142 e!3089928)))

(declare-fun c!843870 () Bool)

(assert (=> d!1592284 (= c!843870 ((_ is Nil!56959) lt!2039118))))

(assert (=> d!1592284 (= (++!12460 lt!2039118 (list!18149 (_2!34049 lt!2039120))) lt!2039142)))

(declare-fun b!4945521 () Bool)

(assert (=> b!4945521 (= e!3089928 (Cons!56959 (h!63407 lt!2039118) (++!12460 (t!367619 lt!2039118) (list!18149 (_2!34049 lt!2039120)))))))

(declare-fun b!4945520 () Bool)

(assert (=> b!4945520 (= e!3089928 (list!18149 (_2!34049 lt!2039120)))))

(declare-fun b!4945523 () Bool)

(assert (=> b!4945523 (= e!3089929 (or (not (= (list!18149 (_2!34049 lt!2039120)) Nil!56959)) (= lt!2039142 lt!2039118)))))

(assert (= (and d!1592284 c!843870) b!4945520))

(assert (= (and d!1592284 (not c!843870)) b!4945521))

(assert (= (and d!1592284 res!2110278) b!4945522))

(assert (= (and b!4945522 res!2110277) b!4945523))

(declare-fun m!5968544 () Bool)

(assert (=> b!4945522 m!5968544))

(assert (=> b!4945522 m!5968468))

(assert (=> b!4945522 m!5968490))

(declare-fun m!5968546 () Bool)

(assert (=> b!4945522 m!5968546))

(declare-fun m!5968548 () Bool)

(assert (=> d!1592284 m!5968548))

(declare-fun m!5968550 () Bool)

(assert (=> d!1592284 m!5968550))

(assert (=> d!1592284 m!5968490))

(declare-fun m!5968552 () Bool)

(assert (=> d!1592284 m!5968552))

(assert (=> b!4945521 m!5968490))

(declare-fun m!5968554 () Bool)

(assert (=> b!4945521 m!5968554))

(assert (=> b!4945466 d!1592284))

(declare-fun d!1592286 () Bool)

(declare-fun list!18150 (Conc!14994) List!57083)

(assert (=> d!1592286 (= (list!18149 (_2!34049 lt!2039120)) (list!18150 (c!843856 (_2!34049 lt!2039120))))))

(declare-fun bs!1181639 () Bool)

(assert (= bs!1181639 d!1592286))

(declare-fun m!5968556 () Bool)

(assert (=> bs!1181639 m!5968556))

(assert (=> b!4945466 d!1592286))

(declare-fun d!1592288 () Bool)

(assert (=> d!1592288 (= (list!18149 (_1!34049 lt!2039120)) (list!18150 (c!843856 (_1!34049 lt!2039120))))))

(declare-fun bs!1181640 () Bool)

(assert (= bs!1181640 d!1592288))

(declare-fun m!5968558 () Bool)

(assert (=> bs!1181640 m!5968558))

(assert (=> b!4945466 d!1592288))

(declare-fun d!1592290 () Bool)

(declare-fun e!3089932 () Bool)

(assert (=> d!1592290 e!3089932))

(declare-fun res!2110284 () Bool)

(assert (=> d!1592290 (=> (not res!2110284) (not e!3089932))))

(declare-fun lt!2039147 () tuple2!61492)

(declare-fun isBalanced!4147 (Conc!14994) Bool)

(assert (=> d!1592290 (= res!2110284 (isBalanced!4147 (c!843856 (_1!34049 lt!2039147))))))

(declare-datatypes ((tuple2!61494 0))(
  ( (tuple2!61495 (_1!34050 Conc!14994) (_2!34050 Conc!14994)) )
))
(declare-fun lt!2039148 () tuple2!61494)

(assert (=> d!1592290 (= lt!2039147 (tuple2!61493 (BalanceConc!29419 (_1!34050 lt!2039148)) (BalanceConc!29419 (_2!34050 lt!2039148))))))

(declare-fun splitAt!385 (Conc!14994 Int) tuple2!61494)

(assert (=> d!1592290 (= lt!2039148 (splitAt!385 (c!843856 totalInput!685) testedPSize!70))))

(assert (=> d!1592290 (isBalanced!4147 (c!843856 totalInput!685))))

(assert (=> d!1592290 (= (splitAt!384 totalInput!685 testedPSize!70) lt!2039147)))

(declare-fun b!4945528 () Bool)

(declare-fun res!2110283 () Bool)

(assert (=> b!4945528 (=> (not res!2110283) (not e!3089932))))

(assert (=> b!4945528 (= res!2110283 (isBalanced!4147 (c!843856 (_2!34049 lt!2039147))))))

(declare-fun b!4945529 () Bool)

(declare-datatypes ((tuple2!61496 0))(
  ( (tuple2!61497 (_1!34051 List!57083) (_2!34051 List!57083)) )
))
(declare-fun splitAtIndex!141 (List!57083 Int) tuple2!61496)

(assert (=> b!4945529 (= e!3089932 (= (tuple2!61497 (list!18149 (_1!34049 lt!2039147)) (list!18149 (_2!34049 lt!2039147))) (splitAtIndex!141 (list!18149 totalInput!685) testedPSize!70)))))

(assert (= (and d!1592290 res!2110284) b!4945528))

(assert (= (and b!4945528 res!2110283) b!4945529))

(declare-fun m!5968560 () Bool)

(assert (=> d!1592290 m!5968560))

(declare-fun m!5968562 () Bool)

(assert (=> d!1592290 m!5968562))

(declare-fun m!5968564 () Bool)

(assert (=> d!1592290 m!5968564))

(declare-fun m!5968566 () Bool)

(assert (=> b!4945528 m!5968566))

(declare-fun m!5968568 () Bool)

(assert (=> b!4945529 m!5968568))

(declare-fun m!5968570 () Bool)

(assert (=> b!4945529 m!5968570))

(assert (=> b!4945529 m!5968470))

(assert (=> b!4945529 m!5968470))

(declare-fun m!5968572 () Bool)

(assert (=> b!4945529 m!5968572))

(assert (=> b!4945466 d!1592290))

(declare-fun bs!1181644 () Bool)

(declare-fun b!4945546 () Bool)

(declare-fun d!1592292 () Bool)

(assert (= bs!1181644 (and b!4945546 d!1592292)))

(declare-fun lambda!246551 () Int)

(declare-fun lambda!246550 () Int)

(assert (=> bs!1181644 (not (= lambda!246551 lambda!246550))))

(declare-fun bs!1181645 () Bool)

(declare-fun b!4945547 () Bool)

(assert (= bs!1181645 (and b!4945547 d!1592292)))

(declare-fun lambda!246552 () Int)

(assert (=> bs!1181645 (not (= lambda!246552 lambda!246550))))

(declare-fun bs!1181646 () Bool)

(assert (= bs!1181646 (and b!4945547 b!4945546)))

(assert (=> bs!1181646 (= lambda!246552 lambda!246551)))

(declare-fun call!345170 () Bool)

(declare-fun c!843884 () Bool)

(declare-fun bm!345164 () Bool)

(declare-datatypes ((List!57085 0))(
  ( (Nil!56961) (Cons!56961 (h!63409 Context!6234) (t!367621 List!57085)) )
))
(declare-fun lt!2039172 () List!57085)

(declare-fun lt!2039170 () List!57085)

(declare-fun exists!1327 (List!57085 Int) Bool)

(assert (=> bm!345164 (= call!345170 (exists!1327 (ite c!843884 lt!2039170 lt!2039172) (ite c!843884 lambda!246551 lambda!246552)))))

(declare-fun e!3089945 () Unit!147744)

(declare-fun Unit!147746 () Unit!147744)

(assert (=> b!4945546 (= e!3089945 Unit!147746)))

(declare-fun call!345169 () List!57085)

(assert (=> b!4945546 (= lt!2039170 call!345169)))

(declare-fun lt!2039169 () Unit!147744)

(declare-fun lemmaNotForallThenExists!229 (List!57085 Int) Unit!147744)

(assert (=> b!4945546 (= lt!2039169 (lemmaNotForallThenExists!229 lt!2039170 lambda!246550))))

(assert (=> b!4945546 call!345170))

(declare-fun lt!2039171 () Unit!147744)

(assert (=> b!4945546 (= lt!2039171 lt!2039169)))

(declare-fun lt!2039175 () Bool)

(declare-datatypes ((Option!14209 0))(
  ( (None!14208) (Some!14208 (v!50184 List!57083)) )
))
(declare-fun isEmpty!30653 (Option!14209) Bool)

(declare-fun getLanguageWitness!678 ((InoxSet Context!6234)) Option!14209)

(assert (=> d!1592292 (= lt!2039175 (isEmpty!30653 (getLanguageWitness!678 z!3568)))))

(declare-fun forall!13250 ((InoxSet Context!6234) Int) Bool)

(assert (=> d!1592292 (= lt!2039175 (forall!13250 z!3568 lambda!246550))))

(declare-fun lt!2039174 () Unit!147744)

(assert (=> d!1592292 (= lt!2039174 e!3089945)))

(assert (=> d!1592292 (= c!843884 (not (forall!13250 z!3568 lambda!246550)))))

(assert (=> d!1592292 (= (lostCauseZipper!793 z!3568) lt!2039175)))

(declare-fun bm!345165 () Bool)

(declare-fun toList!7991 ((InoxSet Context!6234)) List!57085)

(assert (=> bm!345165 (= call!345169 (toList!7991 z!3568))))

(declare-fun Unit!147747 () Unit!147744)

(assert (=> b!4945547 (= e!3089945 Unit!147747)))

(assert (=> b!4945547 (= lt!2039172 call!345169)))

(declare-fun lt!2039173 () Unit!147744)

(declare-fun lemmaForallThenNotExists!212 (List!57085 Int) Unit!147744)

(assert (=> b!4945547 (= lt!2039173 (lemmaForallThenNotExists!212 lt!2039172 lambda!246550))))

(assert (=> b!4945547 (not call!345170)))

(declare-fun lt!2039168 () Unit!147744)

(assert (=> b!4945547 (= lt!2039168 lt!2039173)))

(assert (= (and d!1592292 c!843884) b!4945546))

(assert (= (and d!1592292 (not c!843884)) b!4945547))

(assert (= (or b!4945546 b!4945547) bm!345164))

(assert (= (or b!4945546 b!4945547) bm!345165))

(declare-fun m!5968592 () Bool)

(assert (=> b!4945547 m!5968592))

(declare-fun m!5968594 () Bool)

(assert (=> b!4945546 m!5968594))

(declare-fun m!5968596 () Bool)

(assert (=> d!1592292 m!5968596))

(assert (=> d!1592292 m!5968596))

(declare-fun m!5968598 () Bool)

(assert (=> d!1592292 m!5968598))

(declare-fun m!5968600 () Bool)

(assert (=> d!1592292 m!5968600))

(assert (=> d!1592292 m!5968600))

(declare-fun m!5968602 () Bool)

(assert (=> bm!345165 m!5968602))

(declare-fun m!5968604 () Bool)

(assert (=> bm!345164 m!5968604))

(assert (=> b!4945469 d!1592292))

(declare-fun d!1592302 () Bool)

(assert (=> d!1592302 (= testedSuffix!70 lt!2039124)))

(declare-fun lt!2039178 () Unit!147744)

(declare-fun choose!36449 (List!57083 List!57083 List!57083 List!57083 List!57083) Unit!147744)

(assert (=> d!1592302 (= lt!2039178 (choose!36449 testedP!110 testedSuffix!70 testedP!110 lt!2039124 lt!2039119))))

(assert (=> d!1592302 (isPrefix!5081 testedP!110 lt!2039119)))

(assert (=> d!1592302 (= (lemmaSamePrefixThenSameSuffix!2473 testedP!110 testedSuffix!70 testedP!110 lt!2039124 lt!2039119) lt!2039178)))

(declare-fun bs!1181647 () Bool)

(assert (= bs!1181647 d!1592302))

(declare-fun m!5968606 () Bool)

(assert (=> bs!1181647 m!5968606))

(assert (=> bs!1181647 m!5968476))

(assert (=> b!4945469 d!1592302))

(declare-fun d!1592304 () Bool)

(declare-fun lt!2039181 () List!57083)

(assert (=> d!1592304 (= (++!12460 testedP!110 lt!2039181) lt!2039119)))

(declare-fun e!3089948 () List!57083)

(assert (=> d!1592304 (= lt!2039181 e!3089948)))

(declare-fun c!843887 () Bool)

(assert (=> d!1592304 (= c!843887 ((_ is Cons!56959) testedP!110))))

(assert (=> d!1592304 (>= (size!37787 lt!2039119) (size!37787 testedP!110))))

(assert (=> d!1592304 (= (getSuffix!3063 lt!2039119 testedP!110) lt!2039181)))

(declare-fun b!4945552 () Bool)

(assert (=> b!4945552 (= e!3089948 (getSuffix!3063 (tail!9740 lt!2039119) (t!367619 testedP!110)))))

(declare-fun b!4945553 () Bool)

(assert (=> b!4945553 (= e!3089948 lt!2039119)))

(assert (= (and d!1592304 c!843887) b!4945552))

(assert (= (and d!1592304 (not c!843887)) b!4945553))

(declare-fun m!5968608 () Bool)

(assert (=> d!1592304 m!5968608))

(assert (=> d!1592304 m!5968506))

(assert (=> d!1592304 m!5968466))

(assert (=> b!4945552 m!5968510))

(assert (=> b!4945552 m!5968510))

(declare-fun m!5968610 () Bool)

(assert (=> b!4945552 m!5968610))

(assert (=> b!4945469 d!1592304))

(declare-fun d!1592306 () Bool)

(declare-fun lt!2039182 () Int)

(assert (=> d!1592306 (= lt!2039182 (size!37787 (list!18149 (_1!34049 lt!2039120))))))

(assert (=> d!1592306 (= lt!2039182 (size!37789 (c!843856 (_1!34049 lt!2039120))))))

(assert (=> d!1592306 (= (size!37788 (_1!34049 lt!2039120)) lt!2039182)))

(declare-fun bs!1181648 () Bool)

(assert (= bs!1181648 d!1592306))

(assert (=> bs!1181648 m!5968494))

(assert (=> bs!1181648 m!5968494))

(declare-fun m!5968612 () Bool)

(assert (=> bs!1181648 m!5968612))

(declare-fun m!5968614 () Bool)

(assert (=> bs!1181648 m!5968614))

(assert (=> b!4945460 d!1592306))

(declare-fun d!1592308 () Bool)

(assert (=> d!1592308 (= (list!18149 totalInput!685) (list!18150 (c!843856 totalInput!685)))))

(declare-fun bs!1181649 () Bool)

(assert (= bs!1181649 d!1592308))

(declare-fun m!5968616 () Bool)

(assert (=> bs!1181649 m!5968616))

(assert (=> start!520580 d!1592308))

(declare-fun b!4945556 () Bool)

(declare-fun res!2110291 () Bool)

(declare-fun e!3089950 () Bool)

(assert (=> b!4945556 (=> (not res!2110291) (not e!3089950))))

(declare-fun lt!2039183 () List!57083)

(assert (=> b!4945556 (= res!2110291 (= (size!37787 lt!2039183) (+ (size!37787 testedP!110) (size!37787 testedSuffix!70))))))

(declare-fun d!1592310 () Bool)

(assert (=> d!1592310 e!3089950))

(declare-fun res!2110292 () Bool)

(assert (=> d!1592310 (=> (not res!2110292) (not e!3089950))))

(assert (=> d!1592310 (= res!2110292 (= (content!10142 lt!2039183) ((_ map or) (content!10142 testedP!110) (content!10142 testedSuffix!70))))))

(declare-fun e!3089949 () List!57083)

(assert (=> d!1592310 (= lt!2039183 e!3089949)))

(declare-fun c!843888 () Bool)

(assert (=> d!1592310 (= c!843888 ((_ is Nil!56959) testedP!110))))

(assert (=> d!1592310 (= (++!12460 testedP!110 testedSuffix!70) lt!2039183)))

(declare-fun b!4945555 () Bool)

(assert (=> b!4945555 (= e!3089949 (Cons!56959 (h!63407 testedP!110) (++!12460 (t!367619 testedP!110) testedSuffix!70)))))

(declare-fun b!4945554 () Bool)

(assert (=> b!4945554 (= e!3089949 testedSuffix!70)))

(declare-fun b!4945557 () Bool)

(assert (=> b!4945557 (= e!3089950 (or (not (= testedSuffix!70 Nil!56959)) (= lt!2039183 testedP!110)))))

(assert (= (and d!1592310 c!843888) b!4945554))

(assert (= (and d!1592310 (not c!843888)) b!4945555))

(assert (= (and d!1592310 res!2110292) b!4945556))

(assert (= (and b!4945556 res!2110291) b!4945557))

(declare-fun m!5968618 () Bool)

(assert (=> b!4945556 m!5968618))

(assert (=> b!4945556 m!5968466))

(declare-fun m!5968620 () Bool)

(assert (=> b!4945556 m!5968620))

(declare-fun m!5968622 () Bool)

(assert (=> d!1592310 m!5968622))

(declare-fun m!5968624 () Bool)

(assert (=> d!1592310 m!5968624))

(declare-fun m!5968626 () Bool)

(assert (=> d!1592310 m!5968626))

(declare-fun m!5968628 () Bool)

(assert (=> b!4945555 m!5968628))

(assert (=> start!520580 d!1592310))

(declare-fun d!1592312 () Bool)

(assert (=> d!1592312 (= (inv!74175 totalInput!685) (isBalanced!4147 (c!843856 totalInput!685)))))

(declare-fun bs!1181650 () Bool)

(assert (= bs!1181650 d!1592312))

(assert (=> bs!1181650 m!5968564))

(assert (=> start!520580 d!1592312))

(declare-fun d!1592314 () Bool)

(declare-fun lambda!246555 () Int)

(declare-fun forall!13251 (List!57084 Int) Bool)

(assert (=> d!1592314 (= (inv!74176 setElem!28016) (forall!13251 (exprs!3617 setElem!28016) lambda!246555))))

(declare-fun bs!1181651 () Bool)

(assert (= bs!1181651 d!1592314))

(declare-fun m!5968630 () Bool)

(assert (=> bs!1181651 m!5968630))

(assert (=> setNonEmpty!28016 d!1592314))

(declare-fun b!4945568 () Bool)

(declare-fun e!3089956 () Bool)

(declare-fun tp!1387248 () Bool)

(assert (=> b!4945568 (= e!3089956 (and tp_is_empty!36147 tp!1387248))))

(assert (=> b!4945459 (= tp!1387241 e!3089956)))

(assert (= (and b!4945459 ((_ is Cons!56959) (t!367619 testedSuffix!70))) b!4945568))

(declare-fun b!4945573 () Bool)

(declare-fun e!3089959 () Bool)

(declare-fun tp!1387253 () Bool)

(declare-fun tp!1387254 () Bool)

(assert (=> b!4945573 (= e!3089959 (and tp!1387253 tp!1387254))))

(assert (=> b!4945457 (= tp!1387242 e!3089959)))

(assert (= (and b!4945457 ((_ is Cons!56960) (exprs!3617 setElem!28016))) b!4945573))

(declare-fun tp!1387262 () Bool)

(declare-fun e!3089967 () Bool)

(declare-fun b!4945586 () Bool)

(declare-fun tp!1387263 () Bool)

(assert (=> b!4945586 (= e!3089967 (and (inv!74174 (left!41557 (c!843856 totalInput!685))) tp!1387262 (inv!74174 (right!41887 (c!843856 totalInput!685))) tp!1387263))))

(declare-fun b!4945588 () Bool)

(declare-fun e!3089966 () Bool)

(declare-fun tp!1387261 () Bool)

(assert (=> b!4945588 (= e!3089966 tp!1387261)))

(declare-fun b!4945587 () Bool)

(declare-fun inv!74181 (IArray!30049) Bool)

(assert (=> b!4945587 (= e!3089967 (and (inv!74181 (xs!18320 (c!843856 totalInput!685))) e!3089966))))

(assert (=> b!4945461 (= tp!1387245 (and (inv!74174 (c!843856 totalInput!685)) e!3089967))))

(assert (= (and b!4945461 ((_ is Node!14994) (c!843856 totalInput!685))) b!4945586))

(assert (= b!4945587 b!4945588))

(assert (= (and b!4945461 ((_ is Leaf!24924) (c!843856 totalInput!685))) b!4945587))

(declare-fun m!5968660 () Bool)

(assert (=> b!4945586 m!5968660))

(declare-fun m!5968662 () Bool)

(assert (=> b!4945586 m!5968662))

(declare-fun m!5968664 () Bool)

(assert (=> b!4945587 m!5968664))

(assert (=> b!4945461 m!5968498))

(declare-fun b!4945589 () Bool)

(declare-fun e!3089968 () Bool)

(declare-fun tp!1387264 () Bool)

(assert (=> b!4945589 (= e!3089968 (and tp_is_empty!36147 tp!1387264))))

(assert (=> b!4945464 (= tp!1387244 e!3089968)))

(assert (= (and b!4945464 ((_ is Cons!56959) (t!367619 testedP!110))) b!4945589))

(declare-fun condSetEmpty!28019 () Bool)

(assert (=> setNonEmpty!28016 (= condSetEmpty!28019 (= setRest!28016 ((as const (Array Context!6234 Bool)) false)))))

(declare-fun setRes!28019 () Bool)

(assert (=> setNonEmpty!28016 (= tp!1387243 setRes!28019)))

(declare-fun setIsEmpty!28019 () Bool)

(assert (=> setIsEmpty!28019 setRes!28019))

(declare-fun tp!1387270 () Bool)

(declare-fun setElem!28019 () Context!6234)

(declare-fun setNonEmpty!28019 () Bool)

(declare-fun e!3089971 () Bool)

(assert (=> setNonEmpty!28019 (= setRes!28019 (and tp!1387270 (inv!74176 setElem!28019) e!3089971))))

(declare-fun setRest!28019 () (InoxSet Context!6234))

(assert (=> setNonEmpty!28019 (= setRest!28016 ((_ map or) (store ((as const (Array Context!6234 Bool)) false) setElem!28019 true) setRest!28019))))

(declare-fun b!4945594 () Bool)

(declare-fun tp!1387269 () Bool)

(assert (=> b!4945594 (= e!3089971 tp!1387269)))

(assert (= (and setNonEmpty!28016 condSetEmpty!28019) setIsEmpty!28019))

(assert (= (and setNonEmpty!28016 (not condSetEmpty!28019)) setNonEmpty!28019))

(assert (= setNonEmpty!28019 b!4945594))

(declare-fun m!5968666 () Bool)

(assert (=> setNonEmpty!28019 m!5968666))

(check-sat (not d!1592310) (not b!4945522) (not d!1592302) (not b!4945573) (not b!4945521) (not b!4945494) (not b!4945509) (not b!4945552) (not d!1592308) (not d!1592290) (not b!4945586) (not b!4945502) (not b!4945487) (not b!4945461) (not d!1592306) (not b!4945546) (not d!1592292) (not b!4945555) (not b!4945475) (not b!4945589) (not d!1592286) (not d!1592274) (not b!4945485) (not b!4945528) (not b!4945588) (not d!1592280) (not b!4945486) (not d!1592312) (not b!4945547) (not d!1592304) tp_is_empty!36147 (not b!4945568) (not b!4945556) (not setNonEmpty!28019) (not bm!345165) (not d!1592314) (not b!4945529) (not b!4945495) (not d!1592284) (not bm!345164) (not b!4945493) (not d!1592288) (not b!4945594) (not b!4945587) (not b!4945511))
(check-sat)
