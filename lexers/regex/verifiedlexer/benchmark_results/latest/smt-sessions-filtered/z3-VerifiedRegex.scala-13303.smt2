; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723238 () Bool)

(assert start!723238)

(declare-fun b_free!134353 () Bool)

(declare-fun b_next!135143 () Bool)

(assert (=> start!723238 (= b_free!134353 (not b_next!135143))))

(declare-fun tp!2157391 () Bool)

(declare-fun b_and!351969 () Bool)

(assert (=> start!723238 (= tp!2157391 b_and!351969)))

(declare-fun b!7448192 () Bool)

(assert (=> b!7448192 true))

(declare-fun order!29625 () Int)

(declare-fun lambda!460685 () Int)

(declare-fun order!29627 () Int)

(declare-fun f!463 () Int)

(declare-fun dynLambda!29759 (Int Int) Int)

(declare-fun dynLambda!29760 (Int Int) Int)

(assert (=> b!7448192 (< (dynLambda!29759 order!29625 f!463) (dynLambda!29760 order!29627 lambda!460685))))

(assert (=> b!7448192 true))

(declare-fun setIsEmpty!56786 () Bool)

(declare-fun setRes!56786 () Bool)

(assert (=> setIsEmpty!56786 setRes!56786))

(declare-fun e!4446506 () Bool)

(declare-fun e!4446505 () Bool)

(assert (=> b!7448192 (= e!4446506 (not e!4446505))))

(declare-fun res!2987672 () Bool)

(assert (=> b!7448192 (=> res!2987672 e!4446505)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1143 0))(
  ( (A!1144 (val!30001 Int)) )
))
(declare-fun s!1397 () (InoxSet A!1143))

(declare-fun exists!4828 ((InoxSet A!1143) Int) Bool)

(assert (=> b!7448192 (= res!2987672 (not (exists!4828 s!1397 lambda!460685)))))

(declare-fun empty!3703 () A!1143)

(declare-datatypes ((B!3897 0))(
  ( (B!3898 (val!30002 Int)) )
))
(declare-fun lt!2619664 () B!3897)

(declare-fun flatMapPost!246 ((InoxSet A!1143) Int B!3897) A!1143)

(assert (=> b!7448192 (= (flatMapPost!246 s!1397 f!463 lt!2619664) empty!3703)))

(assert (=> b!7448192 true))

(declare-fun tp_is_empty!49227 () Bool)

(assert (=> b!7448192 tp_is_empty!49227))

(declare-fun res!2987671 () Bool)

(declare-fun e!4446503 () Bool)

(assert (=> start!723238 (=> (not res!2987671) (not e!4446503))))

(assert (=> start!723238 (= res!2987671 (= s!1397 ((as const (Array A!1143 Bool)) false)))))

(assert (=> start!723238 e!4446503))

(declare-fun condSetEmpty!56786 () Bool)

(assert (=> start!723238 (= condSetEmpty!56786 (= s!1397 ((as const (Array A!1143 Bool)) false)))))

(assert (=> start!723238 setRes!56786))

(assert (=> start!723238 tp!2157391))

(declare-fun b!7448193 () Bool)

(declare-fun e!4446504 () Bool)

(assert (=> b!7448193 (= e!4446503 e!4446504)))

(declare-fun res!2987670 () Bool)

(assert (=> b!7448193 (=> (not res!2987670) (not e!4446504))))

(declare-fun lt!2619665 () (InoxSet B!3897))

(assert (=> b!7448193 (= res!2987670 (not (= lt!2619665 ((as const (Array B!3897 Bool)) false))))))

(declare-fun flatMap!3257 ((InoxSet A!1143) Int) (InoxSet B!3897))

(assert (=> b!7448193 (= lt!2619665 (flatMap!3257 s!1397 f!463))))

(declare-fun b!7448194 () Bool)

(assert (=> b!7448194 (= e!4446504 e!4446506)))

(declare-fun res!2987669 () Bool)

(assert (=> b!7448194 (=> (not res!2987669) (not e!4446506))))

(assert (=> b!7448194 (= res!2987669 (select lt!2619665 lt!2619664))))

(declare-datatypes ((List!72185 0))(
  ( (Nil!72061) (Cons!72061 (h!78509 B!3897) (t!386750 List!72185)) )
))
(declare-fun head!15283 (List!72185) B!3897)

(declare-fun toList!11808 ((InoxSet B!3897)) List!72185)

(assert (=> b!7448194 (= lt!2619664 (head!15283 (toList!11808 lt!2619665)))))

(declare-fun b!7448195 () Bool)

(assert (=> b!7448195 (= e!4446505 false)))

(declare-fun lt!2619663 () A!1143)

(declare-fun getWitness!2466 ((InoxSet A!1143) Int) A!1143)

(assert (=> b!7448195 (= lt!2619663 (getWitness!2466 s!1397 lambda!460685))))

(declare-fun setNonEmpty!56786 () Bool)

(declare-fun tp!2157390 () Bool)

(assert (=> setNonEmpty!56786 (= setRes!56786 (and tp!2157390 tp_is_empty!49227))))

(declare-fun setElem!56786 () A!1143)

(declare-fun setRest!56786 () (InoxSet A!1143))

(assert (=> setNonEmpty!56786 (= s!1397 ((_ map or) (store ((as const (Array A!1143 Bool)) false) setElem!56786 true) setRest!56786))))

(assert (= (and start!723238 res!2987671) b!7448193))

(assert (= (and b!7448193 res!2987670) b!7448194))

(assert (= (and b!7448194 res!2987669) b!7448192))

(assert (= (and b!7448192 (not res!2987672)) b!7448195))

(assert (= (and start!723238 condSetEmpty!56786) setIsEmpty!56786))

(assert (= (and start!723238 (not condSetEmpty!56786)) setNonEmpty!56786))

(declare-fun m!8055886 () Bool)

(assert (=> b!7448192 m!8055886))

(declare-fun m!8055888 () Bool)

(assert (=> b!7448192 m!8055888))

(declare-fun m!8055890 () Bool)

(assert (=> b!7448193 m!8055890))

(declare-fun m!8055892 () Bool)

(assert (=> b!7448194 m!8055892))

(declare-fun m!8055894 () Bool)

(assert (=> b!7448194 m!8055894))

(assert (=> b!7448194 m!8055894))

(declare-fun m!8055896 () Bool)

(assert (=> b!7448194 m!8055896))

(declare-fun m!8055898 () Bool)

(assert (=> b!7448195 m!8055898))

(check-sat b_and!351969 (not b!7448194) tp_is_empty!49227 (not b!7448195) (not b_next!135143) (not setNonEmpty!56786) (not b!7448192) (not b!7448193))
(check-sat b_and!351969 (not b_next!135143))
(get-model)

(declare-fun d!2296788 () Bool)

(declare-fun choose!57572 ((InoxSet A!1143) Int) (InoxSet B!3897))

(assert (=> d!2296788 (= (flatMap!3257 s!1397 f!463) (choose!57572 s!1397 f!463))))

(declare-fun bs!1926827 () Bool)

(assert (= bs!1926827 d!2296788))

(declare-fun m!8055906 () Bool)

(assert (=> bs!1926827 m!8055906))

(assert (=> b!7448193 d!2296788))

(declare-fun d!2296790 () Bool)

(declare-fun lt!2619673 () Bool)

(declare-datatypes ((List!72187 0))(
  ( (Nil!72063) (Cons!72063 (h!78511 A!1143) (t!386756 List!72187)) )
))
(declare-fun exists!4830 (List!72187 Int) Bool)

(declare-fun toList!11810 ((InoxSet A!1143)) List!72187)

(assert (=> d!2296790 (= lt!2619673 (exists!4830 (toList!11810 s!1397) lambda!460685))))

(declare-fun choose!57574 ((InoxSet A!1143) Int) Bool)

(assert (=> d!2296790 (= lt!2619673 (choose!57574 s!1397 lambda!460685))))

(assert (=> d!2296790 (= (exists!4828 s!1397 lambda!460685) lt!2619673)))

(declare-fun bs!1926828 () Bool)

(assert (= bs!1926828 d!2296790))

(declare-fun m!8055908 () Bool)

(assert (=> bs!1926828 m!8055908))

(assert (=> bs!1926828 m!8055908))

(declare-fun m!8055910 () Bool)

(assert (=> bs!1926828 m!8055910))

(declare-fun m!8055912 () Bool)

(assert (=> bs!1926828 m!8055912))

(assert (=> b!7448192 d!2296790))

(declare-fun bs!1926832 () Bool)

(declare-fun d!2296792 () Bool)

(assert (= bs!1926832 (and d!2296792 b!7448192)))

(declare-fun lambda!460691 () Int)

(assert (=> bs!1926832 (= lambda!460691 lambda!460685)))

(assert (=> d!2296792 true))

(assert (=> d!2296792 true))

(assert (=> d!2296792 (< (dynLambda!29759 order!29625 f!463) (dynLambda!29760 order!29627 lambda!460691))))

(assert (=> d!2296792 (= (select (flatMap!3257 s!1397 f!463) lt!2619664) (exists!4828 s!1397 lambda!460691))))

(declare-fun lt!2619679 () A!1143)

(declare-fun choose!57577 ((InoxSet A!1143) Int B!3897) A!1143)

(assert (=> d!2296792 (= lt!2619679 (choose!57577 s!1397 f!463 lt!2619664))))

(assert (=> d!2296792 (= (flatMapPost!246 s!1397 f!463 lt!2619664) lt!2619679)))

(declare-fun bs!1926833 () Bool)

(assert (= bs!1926833 d!2296792))

(assert (=> bs!1926833 m!8055890))

(declare-fun m!8055928 () Bool)

(assert (=> bs!1926833 m!8055928))

(declare-fun m!8055930 () Bool)

(assert (=> bs!1926833 m!8055930))

(declare-fun m!8055932 () Bool)

(assert (=> bs!1926833 m!8055932))

(assert (=> b!7448192 d!2296792))

(declare-fun d!2296802 () Bool)

(declare-fun e!4446515 () Bool)

(assert (=> d!2296802 e!4446515))

(declare-fun res!2987681 () Bool)

(assert (=> d!2296802 (=> (not res!2987681) (not e!4446515))))

(declare-fun lt!2619686 () A!1143)

(declare-fun dynLambda!29762 (Int A!1143) Bool)

(assert (=> d!2296802 (= res!2987681 (dynLambda!29762 lambda!460685 lt!2619686))))

(declare-fun getWitness!2468 (List!72187 Int) A!1143)

(assert (=> d!2296802 (= lt!2619686 (getWitness!2468 (toList!11810 s!1397) lambda!460685))))

(assert (=> d!2296802 (exists!4828 s!1397 lambda!460685)))

(assert (=> d!2296802 (= (getWitness!2466 s!1397 lambda!460685) lt!2619686)))

(declare-fun b!7448210 () Bool)

(assert (=> b!7448210 (= e!4446515 (select s!1397 lt!2619686))))

(assert (= (and d!2296802 res!2987681) b!7448210))

(declare-fun b_lambda!287833 () Bool)

(assert (=> (not b_lambda!287833) (not d!2296802)))

(declare-fun m!8055940 () Bool)

(assert (=> d!2296802 m!8055940))

(assert (=> d!2296802 m!8055908))

(assert (=> d!2296802 m!8055908))

(declare-fun m!8055942 () Bool)

(assert (=> d!2296802 m!8055942))

(assert (=> d!2296802 m!8055886))

(declare-fun m!8055944 () Bool)

(assert (=> b!7448210 m!8055944))

(assert (=> b!7448195 d!2296802))

(declare-fun d!2296804 () Bool)

(assert (=> d!2296804 (= (head!15283 (toList!11808 lt!2619665)) (h!78509 (toList!11808 lt!2619665)))))

(assert (=> b!7448194 d!2296804))

(declare-fun d!2296808 () Bool)

(declare-fun e!4446518 () Bool)

(assert (=> d!2296808 e!4446518))

(declare-fun res!2987684 () Bool)

(assert (=> d!2296808 (=> (not res!2987684) (not e!4446518))))

(declare-fun lt!2619689 () List!72185)

(declare-fun noDuplicate!3137 (List!72185) Bool)

(assert (=> d!2296808 (= res!2987684 (noDuplicate!3137 lt!2619689))))

(declare-fun choose!57578 ((InoxSet B!3897)) List!72185)

(assert (=> d!2296808 (= lt!2619689 (choose!57578 lt!2619665))))

(assert (=> d!2296808 (= (toList!11808 lt!2619665) lt!2619689)))

(declare-fun b!7448215 () Bool)

(declare-fun content!15249 (List!72185) (InoxSet B!3897))

(assert (=> b!7448215 (= e!4446518 (= (content!15249 lt!2619689) lt!2619665))))

(assert (= (and d!2296808 res!2987684) b!7448215))

(declare-fun m!8055950 () Bool)

(assert (=> d!2296808 m!8055950))

(declare-fun m!8055952 () Bool)

(assert (=> d!2296808 m!8055952))

(declare-fun m!8055954 () Bool)

(assert (=> b!7448215 m!8055954))

(assert (=> b!7448194 d!2296808))

(declare-fun condSetEmpty!56792 () Bool)

(assert (=> setNonEmpty!56786 (= condSetEmpty!56792 (= setRest!56786 ((as const (Array A!1143 Bool)) false)))))

(declare-fun setRes!56792 () Bool)

(assert (=> setNonEmpty!56786 (= tp!2157390 setRes!56792)))

(declare-fun setIsEmpty!56792 () Bool)

(assert (=> setIsEmpty!56792 setRes!56792))

(declare-fun setNonEmpty!56792 () Bool)

(declare-fun tp!2157397 () Bool)

(assert (=> setNonEmpty!56792 (= setRes!56792 (and tp!2157397 tp_is_empty!49227))))

(declare-fun setElem!56792 () A!1143)

(declare-fun setRest!56792 () (InoxSet A!1143))

(assert (=> setNonEmpty!56792 (= setRest!56786 ((_ map or) (store ((as const (Array A!1143 Bool)) false) setElem!56792 true) setRest!56792))))

(assert (= (and setNonEmpty!56786 condSetEmpty!56792) setIsEmpty!56792))

(assert (= (and setNonEmpty!56786 (not condSetEmpty!56792)) setNonEmpty!56792))

(declare-fun b_lambda!287839 () Bool)

(assert (= b_lambda!287833 (or b!7448192 b_lambda!287839)))

(declare-fun bs!1926835 () Bool)

(declare-fun d!2296810 () Bool)

(assert (= bs!1926835 (and d!2296810 b!7448192)))

(declare-fun dynLambda!29764 (Int A!1143) (InoxSet B!3897))

(assert (=> bs!1926835 (= (dynLambda!29762 lambda!460685 lt!2619686) (select (dynLambda!29764 f!463 lt!2619686) lt!2619664))))

(declare-fun b_lambda!287841 () Bool)

(assert (=> (not b_lambda!287841) (not bs!1926835)))

(declare-fun t!386755 () Bool)

(declare-fun tb!262449 () Bool)

(assert (=> (and start!723238 (= f!463 f!463) t!386755) tb!262449))

(assert (=> bs!1926835 t!386755))

(declare-fun result!355482 () Bool)

(declare-fun b_and!351973 () Bool)

(assert (= b_and!351969 (and (=> t!386755 result!355482) b_and!351973)))

(declare-fun m!8055956 () Bool)

(assert (=> bs!1926835 m!8055956))

(declare-fun m!8055958 () Bool)

(assert (=> bs!1926835 m!8055958))

(assert (=> d!2296802 d!2296810))

(check-sat (not tb!262449) (not b_lambda!287841) (not b_lambda!287839) tp_is_empty!49227 (not d!2296790) (not b_next!135143) (not d!2296788) (not d!2296802) b_and!351973 (not d!2296792) (not d!2296808) (not setNonEmpty!56792) (not b!7448215))
(check-sat b_and!351973 (not b_next!135143))
