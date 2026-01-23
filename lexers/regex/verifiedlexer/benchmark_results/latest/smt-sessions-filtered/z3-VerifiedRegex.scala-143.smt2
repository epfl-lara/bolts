; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1720 () Bool)

(assert start!1720)

(declare-fun b_free!331 () Bool)

(declare-fun b_next!331 () Bool)

(assert (=> start!1720 (= b_free!331 (not b_next!331))))

(declare-fun tp!23460 () Bool)

(declare-fun b_and!331 () Bool)

(assert (=> start!1720 (= tp!23460 b_and!331)))

(declare-fun setIsEmpty!400 () Bool)

(declare-fun setRes!400 () Bool)

(assert (=> setIsEmpty!400 setRes!400))

(declare-fun b!34118 () Bool)

(declare-fun res!27489 () Bool)

(declare-fun e!15690 () Bool)

(assert (=> b!34118 (=> (not res!27489) (not e!15690))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!159 0))(
  ( (A!160 (val!187 Int)) )
))
(declare-fun s1!478 () (InoxSet A!159))

(declare-fun p!1713 () Int)

(declare-fun exists!18 ((InoxSet A!159) Int) Bool)

(assert (=> b!34118 (= res!27489 (exists!18 s1!478 p!1713))))

(declare-fun setNonEmpty!400 () Bool)

(declare-fun tp!23458 () Bool)

(declare-fun tp_is_empty!327 () Bool)

(assert (=> setNonEmpty!400 (= setRes!400 (and tp!23458 tp_is_empty!327))))

(declare-fun s2!449 () (InoxSet A!159))

(declare-fun setElem!401 () A!159)

(declare-fun setRest!400 () (InoxSet A!159))

(assert (=> setNonEmpty!400 (= s2!449 ((_ map or) (store ((as const (Array A!159 Bool)) false) setElem!401 true) setRest!400))))

(declare-fun setNonEmpty!401 () Bool)

(declare-fun setRes!401 () Bool)

(declare-fun tp!23459 () Bool)

(assert (=> setNonEmpty!401 (= setRes!401 (and tp!23459 tp_is_empty!327))))

(declare-fun setElem!400 () A!159)

(declare-fun setRest!401 () (InoxSet A!159))

(assert (=> setNonEmpty!401 (= s1!478 ((_ map or) (store ((as const (Array A!159 Bool)) false) setElem!400 true) setRest!401))))

(declare-fun setIsEmpty!401 () Bool)

(assert (=> setIsEmpty!401 setRes!401))

(declare-fun res!27490 () Bool)

(assert (=> start!1720 (=> (not res!27490) (not e!15690))))

(assert (=> start!1720 (= res!27490 (not (exists!18 ((_ map or) s1!478 s2!449) p!1713)))))

(assert (=> start!1720 e!15690))

(declare-fun condSetEmpty!400 () Bool)

(assert (=> start!1720 (= condSetEmpty!400 (= s1!478 ((as const (Array A!159 Bool)) false)))))

(assert (=> start!1720 setRes!401))

(declare-fun condSetEmpty!401 () Bool)

(assert (=> start!1720 (= condSetEmpty!401 (= s2!449 ((as const (Array A!159 Bool)) false)))))

(assert (=> start!1720 setRes!400))

(assert (=> start!1720 tp!23460))

(declare-fun b!34117 () Bool)

(declare-fun getWitness!9 ((InoxSet A!159) Int) A!159)

(assert (=> b!34117 (= e!15690 (not (select s1!478 (getWitness!9 s1!478 p!1713))))))

(assert (= (and start!1720 res!27490) b!34118))

(assert (= (and b!34118 res!27489) b!34117))

(assert (= (and start!1720 condSetEmpty!400) setIsEmpty!401))

(assert (= (and start!1720 (not condSetEmpty!400)) setNonEmpty!401))

(assert (= (and start!1720 condSetEmpty!401) setIsEmpty!400))

(assert (= (and start!1720 (not condSetEmpty!401)) setNonEmpty!400))

(declare-fun m!10043 () Bool)

(assert (=> b!34118 m!10043))

(declare-fun m!10045 () Bool)

(assert (=> start!1720 m!10045))

(declare-fun m!10047 () Bool)

(assert (=> b!34117 m!10047))

(assert (=> b!34117 m!10047))

(declare-fun m!10049 () Bool)

(assert (=> b!34117 m!10049))

(check-sat (not setNonEmpty!401) (not b!34117) (not b_next!331) (not b!34118) (not start!1720) tp_is_empty!327 (not setNonEmpty!400) b_and!331)
(check-sat b_and!331 (not b_next!331))
(get-model)

(declare-fun d!3568 () Bool)

(declare-fun lt!2373 () Bool)

(declare-datatypes ((List!286 0))(
  ( (Nil!284) (Cons!284 (h!5680 A!159) (t!14880 List!286)) )
))
(declare-fun exists!19 (List!286 Int) Bool)

(declare-fun toList!157 ((InoxSet A!159)) List!286)

(assert (=> d!3568 (= lt!2373 (exists!19 (toList!157 ((_ map or) s1!478 s2!449)) p!1713))))

(declare-fun choose!1131 ((InoxSet A!159) Int) Bool)

(assert (=> d!3568 (= lt!2373 (choose!1131 ((_ map or) s1!478 s2!449) p!1713))))

(assert (=> d!3568 (= (exists!18 ((_ map or) s1!478 s2!449) p!1713) lt!2373)))

(declare-fun bs!4559 () Bool)

(assert (= bs!4559 d!3568))

(declare-fun m!10051 () Bool)

(assert (=> bs!4559 m!10051))

(assert (=> bs!4559 m!10051))

(declare-fun m!10053 () Bool)

(assert (=> bs!4559 m!10053))

(declare-fun m!10055 () Bool)

(assert (=> bs!4559 m!10055))

(assert (=> start!1720 d!3568))

(declare-fun d!3570 () Bool)

(declare-fun e!15693 () Bool)

(assert (=> d!3570 e!15693))

(declare-fun res!27493 () Bool)

(assert (=> d!3570 (=> (not res!27493) (not e!15693))))

(declare-fun lt!2376 () A!159)

(declare-fun dynLambda!37 (Int A!159) Bool)

(assert (=> d!3570 (= res!27493 (dynLambda!37 p!1713 lt!2376))))

(declare-fun getWitness!10 (List!286 Int) A!159)

(assert (=> d!3570 (= lt!2376 (getWitness!10 (toList!157 s1!478) p!1713))))

(assert (=> d!3570 (exists!18 s1!478 p!1713)))

(assert (=> d!3570 (= (getWitness!9 s1!478 p!1713) lt!2376)))

(declare-fun b!34121 () Bool)

(assert (=> b!34121 (= e!15693 (select s1!478 lt!2376))))

(assert (= (and d!3570 res!27493) b!34121))

(declare-fun b_lambda!165 () Bool)

(assert (=> (not b_lambda!165) (not d!3570)))

(declare-fun t!14879 () Bool)

(declare-fun tb!1 () Bool)

(assert (=> (and start!1720 (= p!1713 p!1713) t!14879) tb!1))

(declare-fun result!324 () Bool)

(assert (=> tb!1 (= result!324 true)))

(assert (=> d!3570 t!14879))

(declare-fun b_and!333 () Bool)

(assert (= b_and!331 (and (=> t!14879 result!324) b_and!333)))

(declare-fun m!10057 () Bool)

(assert (=> d!3570 m!10057))

(declare-fun m!10059 () Bool)

(assert (=> d!3570 m!10059))

(assert (=> d!3570 m!10059))

(declare-fun m!10061 () Bool)

(assert (=> d!3570 m!10061))

(assert (=> d!3570 m!10043))

(declare-fun m!10063 () Bool)

(assert (=> b!34121 m!10063))

(assert (=> b!34117 d!3570))

(declare-fun d!3572 () Bool)

(declare-fun lt!2377 () Bool)

(assert (=> d!3572 (= lt!2377 (exists!19 (toList!157 s1!478) p!1713))))

(assert (=> d!3572 (= lt!2377 (choose!1131 s1!478 p!1713))))

(assert (=> d!3572 (= (exists!18 s1!478 p!1713) lt!2377)))

(declare-fun bs!4560 () Bool)

(assert (= bs!4560 d!3572))

(assert (=> bs!4560 m!10059))

(assert (=> bs!4560 m!10059))

(declare-fun m!10065 () Bool)

(assert (=> bs!4560 m!10065))

(declare-fun m!10067 () Bool)

(assert (=> bs!4560 m!10067))

(assert (=> b!34118 d!3572))

(declare-fun condSetEmpty!404 () Bool)

(assert (=> setNonEmpty!401 (= condSetEmpty!404 (= setRest!401 ((as const (Array A!159 Bool)) false)))))

(declare-fun setRes!404 () Bool)

(assert (=> setNonEmpty!401 (= tp!23459 setRes!404)))

(declare-fun setIsEmpty!404 () Bool)

(assert (=> setIsEmpty!404 setRes!404))

(declare-fun setNonEmpty!404 () Bool)

(declare-fun tp!23463 () Bool)

(assert (=> setNonEmpty!404 (= setRes!404 (and tp!23463 tp_is_empty!327))))

(declare-fun setElem!404 () A!159)

(declare-fun setRest!404 () (InoxSet A!159))

(assert (=> setNonEmpty!404 (= setRest!401 ((_ map or) (store ((as const (Array A!159 Bool)) false) setElem!404 true) setRest!404))))

(assert (= (and setNonEmpty!401 condSetEmpty!404) setIsEmpty!404))

(assert (= (and setNonEmpty!401 (not condSetEmpty!404)) setNonEmpty!404))

(declare-fun condSetEmpty!405 () Bool)

(assert (=> setNonEmpty!400 (= condSetEmpty!405 (= setRest!400 ((as const (Array A!159 Bool)) false)))))

(declare-fun setRes!405 () Bool)

(assert (=> setNonEmpty!400 (= tp!23458 setRes!405)))

(declare-fun setIsEmpty!405 () Bool)

(assert (=> setIsEmpty!405 setRes!405))

(declare-fun setNonEmpty!405 () Bool)

(declare-fun tp!23464 () Bool)

(assert (=> setNonEmpty!405 (= setRes!405 (and tp!23464 tp_is_empty!327))))

(declare-fun setElem!405 () A!159)

(declare-fun setRest!405 () (InoxSet A!159))

(assert (=> setNonEmpty!405 (= setRest!400 ((_ map or) (store ((as const (Array A!159 Bool)) false) setElem!405 true) setRest!405))))

(assert (= (and setNonEmpty!400 condSetEmpty!405) setIsEmpty!405))

(assert (= (and setNonEmpty!400 (not condSetEmpty!405)) setNonEmpty!405))

(declare-fun b_lambda!167 () Bool)

(assert (= b_lambda!165 (or (and start!1720 b_free!331) b_lambda!167)))

(check-sat (not d!3572) (not d!3568) b_and!333 tp_is_empty!327 (not b_lambda!167) (not setNonEmpty!404) (not d!3570) (not setNonEmpty!405) (not b_next!331))
(check-sat b_and!333 (not b_next!331))
