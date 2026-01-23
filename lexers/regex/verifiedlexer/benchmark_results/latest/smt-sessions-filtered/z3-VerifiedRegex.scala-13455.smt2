; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727498 () Bool)

(assert start!727498)

(declare-fun b_free!134361 () Bool)

(declare-fun b_next!135151 () Bool)

(assert (=> start!727498 (= b_free!134361 (not b_next!135151))))

(declare-fun tp!2179788 () Bool)

(declare-fun b_and!351981 () Bool)

(assert (=> start!727498 (= tp!2179788 b_and!351981)))

(declare-fun res!3012753 () Bool)

(declare-fun e!4477940 () Bool)

(assert (=> start!727498 (=> (not res!3012753) (not e!4477940))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1151 0))(
  ( (A!1152 (val!30308 Int)) )
))
(declare-fun s!1481 () (InoxSet A!1151))

(declare-fun p!1695 () Int)

(declare-fun exists!4910 ((InoxSet A!1151) Int) Bool)

(assert (=> start!727498 (= res!3012753 (exists!4910 s!1481 p!1695))))

(assert (=> start!727498 e!4477940))

(declare-fun condSetEmpty!57215 () Bool)

(assert (=> start!727498 (= condSetEmpty!57215 (= s!1481 ((as const (Array A!1151 Bool)) false)))))

(declare-fun setRes!57215 () Bool)

(assert (=> start!727498 setRes!57215))

(assert (=> start!727498 tp!2179788))

(declare-fun b!7509619 () Bool)

(declare-datatypes ((List!72602 0))(
  ( (Nil!72478) (Cons!72478 (h!78926 A!1151) (t!387171 List!72602)) )
))
(declare-fun exists!4911 (List!72602 Int) Bool)

(declare-fun toList!11860 ((InoxSet A!1151)) List!72602)

(assert (=> b!7509619 (= e!4477940 (not (exists!4911 (toList!11860 s!1481) p!1695)))))

(declare-fun setIsEmpty!57215 () Bool)

(assert (=> setIsEmpty!57215 setRes!57215))

(declare-fun setNonEmpty!57215 () Bool)

(declare-fun tp!2179787 () Bool)

(declare-fun tp_is_empty!49789 () Bool)

(assert (=> setNonEmpty!57215 (= setRes!57215 (and tp!2179787 tp_is_empty!49789))))

(declare-fun setElem!57215 () A!1151)

(declare-fun setRest!57215 () (InoxSet A!1151))

(assert (=> setNonEmpty!57215 (= s!1481 ((_ map or) (store ((as const (Array A!1151 Bool)) false) setElem!57215 true) setRest!57215))))

(assert (= (and start!727498 res!3012753) b!7509619))

(assert (= (and start!727498 condSetEmpty!57215) setIsEmpty!57215))

(assert (= (and start!727498 (not condSetEmpty!57215)) setNonEmpty!57215))

(declare-fun m!8093660 () Bool)

(assert (=> start!727498 m!8093660))

(declare-fun m!8093662 () Bool)

(assert (=> b!7509619 m!8093662))

(assert (=> b!7509619 m!8093662))

(declare-fun m!8093664 () Bool)

(assert (=> b!7509619 m!8093664))

(check-sat b_and!351981 (not setNonEmpty!57215) (not b!7509619) (not b_next!135151) tp_is_empty!49789 (not start!727498))
(check-sat b_and!351981 (not b_next!135151))
(get-model)

(declare-fun d!2306118 () Bool)

(assert (=> d!2306118 true))

(declare-fun order!29691 () Int)

(declare-fun lambda!466123 () Int)

(declare-fun dynLambda!29807 (Int Int) Int)

(assert (=> d!2306118 (< (dynLambda!29807 order!29691 p!1695) (dynLambda!29807 order!29691 lambda!466123))))

(declare-fun forall!18359 (List!72602 Int) Bool)

(assert (=> d!2306118 (= (exists!4911 (toList!11860 s!1481) p!1695) (not (forall!18359 (toList!11860 s!1481) lambda!466123)))))

(declare-fun bs!1939057 () Bool)

(assert (= bs!1939057 d!2306118))

(assert (=> bs!1939057 m!8093662))

(declare-fun m!8093668 () Bool)

(assert (=> bs!1939057 m!8093668))

(assert (=> b!7509619 d!2306118))

(declare-fun d!2306122 () Bool)

(declare-fun e!4477946 () Bool)

(assert (=> d!2306122 e!4477946))

(declare-fun res!3012759 () Bool)

(assert (=> d!2306122 (=> (not res!3012759) (not e!4477946))))

(declare-fun lt!2637259 () List!72602)

(declare-fun noDuplicate!3159 (List!72602) Bool)

(assert (=> d!2306122 (= res!3012759 (noDuplicate!3159 lt!2637259))))

(declare-fun choose!58247 ((InoxSet A!1151)) List!72602)

(assert (=> d!2306122 (= lt!2637259 (choose!58247 s!1481))))

(assert (=> d!2306122 (= (toList!11860 s!1481) lt!2637259)))

(declare-fun b!7509629 () Bool)

(declare-fun content!15329 (List!72602) (InoxSet A!1151))

(assert (=> b!7509629 (= e!4477946 (= (content!15329 lt!2637259) s!1481))))

(assert (= (and d!2306122 res!3012759) b!7509629))

(declare-fun m!8093670 () Bool)

(assert (=> d!2306122 m!8093670))

(declare-fun m!8093674 () Bool)

(assert (=> d!2306122 m!8093674))

(declare-fun m!8093678 () Bool)

(assert (=> b!7509629 m!8093678))

(assert (=> b!7509619 d!2306122))

(declare-fun d!2306124 () Bool)

(declare-fun lt!2637262 () Bool)

(assert (=> d!2306124 (= lt!2637262 (exists!4911 (toList!11860 s!1481) p!1695))))

(declare-fun choose!58248 ((InoxSet A!1151) Int) Bool)

(assert (=> d!2306124 (= lt!2637262 (choose!58248 s!1481 p!1695))))

(assert (=> d!2306124 (= (exists!4910 s!1481 p!1695) lt!2637262)))

(declare-fun bs!1939058 () Bool)

(assert (= bs!1939058 d!2306124))

(assert (=> bs!1939058 m!8093662))

(assert (=> bs!1939058 m!8093662))

(assert (=> bs!1939058 m!8093664))

(declare-fun m!8093682 () Bool)

(assert (=> bs!1939058 m!8093682))

(assert (=> start!727498 d!2306124))

(declare-fun condSetEmpty!57218 () Bool)

(assert (=> setNonEmpty!57215 (= condSetEmpty!57218 (= setRest!57215 ((as const (Array A!1151 Bool)) false)))))

(declare-fun setRes!57218 () Bool)

(assert (=> setNonEmpty!57215 (= tp!2179787 setRes!57218)))

(declare-fun setIsEmpty!57218 () Bool)

(assert (=> setIsEmpty!57218 setRes!57218))

(declare-fun setNonEmpty!57218 () Bool)

(declare-fun tp!2179791 () Bool)

(assert (=> setNonEmpty!57218 (= setRes!57218 (and tp!2179791 tp_is_empty!49789))))

(declare-fun setElem!57218 () A!1151)

(declare-fun setRest!57218 () (InoxSet A!1151))

(assert (=> setNonEmpty!57218 (= setRest!57215 ((_ map or) (store ((as const (Array A!1151 Bool)) false) setElem!57218 true) setRest!57218))))

(assert (= (and setNonEmpty!57215 condSetEmpty!57218) setIsEmpty!57218))

(assert (= (and setNonEmpty!57215 (not condSetEmpty!57218)) setNonEmpty!57218))

(check-sat (not d!2306122) (not d!2306124) (not d!2306118) (not b!7509629) (not b_next!135151) tp_is_empty!49789 (not setNonEmpty!57218) b_and!351981)
(check-sat b_and!351981 (not b_next!135151))
