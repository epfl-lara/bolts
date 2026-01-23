; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694032 () Bool)

(assert start!694032)

(declare-fun b_free!133801 () Bool)

(declare-fun b_next!134591 () Bool)

(assert (=> start!694032 (= b_free!133801 (not b_next!134591))))

(declare-fun tp!1962040 () Bool)

(declare-fun b_and!350941 () Bool)

(assert (=> start!694032 (= tp!1962040 b_and!350941)))

(declare-fun res!2906951 () Bool)

(declare-fun e!4281155 () Bool)

(assert (=> start!694032 (=> (not res!2906951) (not e!4281155))))

(declare-datatypes ((B!3365 0))(
  ( (B!3366 (val!28033 Int)) )
))
(declare-fun b!25321 () B!3365)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2562787 () (InoxSet B!3365))

(assert (=> start!694032 (= res!2906951 (not (select lt!2562787 b!25321)))))

(declare-datatypes ((A!707 0))(
  ( (A!708 (val!28034 Int)) )
))
(declare-fun s1!413 () (InoxSet A!707))

(declare-fun f!518 () Int)

(declare-fun map!16476 ((InoxSet A!707) Int) (InoxSet B!3365))

(assert (=> start!694032 (= lt!2562787 (map!16476 s1!413 f!518))))

(assert (=> start!694032 e!4281155))

(declare-fun tp_is_empty!45565 () Bool)

(assert (=> start!694032 tp_is_empty!45565))

(declare-fun condSetEmpty!51511 () Bool)

(assert (=> start!694032 (= condSetEmpty!51511 (= s1!413 ((as const (Array A!707 Bool)) false)))))

(declare-fun setRes!51511 () Bool)

(assert (=> start!694032 setRes!51511))

(declare-fun condSetEmpty!51510 () Bool)

(declare-fun s2!384 () (InoxSet A!707))

(assert (=> start!694032 (= condSetEmpty!51510 (= s2!384 ((as const (Array A!707 Bool)) false)))))

(declare-fun setRes!51510 () Bool)

(assert (=> start!694032 setRes!51510))

(assert (=> start!694032 tp!1962040))

(declare-fun b!7124209 () Bool)

(declare-fun e!4281154 () Bool)

(declare-fun e!4281156 () Bool)

(assert (=> b!7124209 (= e!4281154 (not e!4281156))))

(declare-fun res!2906952 () Bool)

(assert (=> b!7124209 (=> res!2906952 e!4281156)))

(declare-fun lt!2562784 () (InoxSet B!3365))

(declare-fun lt!2562788 () A!707)

(declare-fun dynLambda!28100 (Int A!707) B!3365)

(assert (=> b!7124209 (= res!2906952 (not (select lt!2562784 (dynLambda!28100 f!518 lt!2562788))))))

(declare-fun lt!2562786 () (InoxSet A!707))

(assert (=> b!7124209 (= lt!2562784 (map!16476 lt!2562786 f!518))))

(declare-datatypes ((Unit!162815 0))(
  ( (Unit!162816) )
))
(declare-fun empty!2847 () Unit!162815)

(declare-fun mapPost1!16 ((InoxSet A!707) Int A!707) Unit!162815)

(assert (=> b!7124209 (= (mapPost1!16 lt!2562786 f!518 lt!2562788) empty!2847)))

(assert (=> b!7124209 true))

(declare-fun setIsEmpty!51510 () Bool)

(assert (=> setIsEmpty!51510 setRes!51511))

(declare-fun b!7124210 () Bool)

(declare-fun lt!2562785 () (InoxSet B!3365))

(assert (=> b!7124210 (= e!4281156 (= (select ((_ map or) lt!2562787 lt!2562785) b!25321) (select lt!2562784 b!25321)))))

(declare-fun setNonEmpty!51510 () Bool)

(declare-fun tp!1962041 () Bool)

(declare-fun tp_is_empty!45567 () Bool)

(assert (=> setNonEmpty!51510 (= setRes!51510 (and tp!1962041 tp_is_empty!45567))))

(declare-fun setElem!51510 () A!707)

(declare-fun setRest!51511 () (InoxSet A!707))

(assert (=> setNonEmpty!51510 (= s2!384 ((_ map or) (store ((as const (Array A!707 Bool)) false) setElem!51510 true) setRest!51511))))

(declare-fun b!7124211 () Bool)

(declare-fun e!4281153 () Bool)

(declare-fun e!4281152 () Bool)

(assert (=> b!7124211 (= e!4281153 e!4281152)))

(declare-fun res!2906953 () Bool)

(assert (=> b!7124211 (=> (not res!2906953) (not e!4281152))))

(assert (=> b!7124211 (= res!2906953 (select s2!384 lt!2562788))))

(declare-fun mapPost2!582 ((InoxSet A!707) Int B!3365) A!707)

(assert (=> b!7124211 (= lt!2562788 (mapPost2!582 s2!384 f!518 b!25321))))

(declare-fun b!7124212 () Bool)

(assert (=> b!7124212 (= e!4281155 e!4281153)))

(declare-fun res!2906954 () Bool)

(assert (=> b!7124212 (=> (not res!2906954) (not e!4281153))))

(assert (=> b!7124212 (= res!2906954 (select lt!2562785 b!25321))))

(assert (=> b!7124212 (= lt!2562785 (map!16476 s2!384 f!518))))

(declare-fun setNonEmpty!51511 () Bool)

(declare-fun tp!1962039 () Bool)

(assert (=> setNonEmpty!51511 (= setRes!51511 (and tp!1962039 tp_is_empty!45567))))

(declare-fun setElem!51511 () A!707)

(declare-fun setRest!51510 () (InoxSet A!707))

(assert (=> setNonEmpty!51511 (= s1!413 ((_ map or) (store ((as const (Array A!707 Bool)) false) setElem!51511 true) setRest!51510))))

(declare-fun setIsEmpty!51511 () Bool)

(assert (=> setIsEmpty!51511 setRes!51510))

(declare-fun b!7124213 () Bool)

(assert (=> b!7124213 (= e!4281152 e!4281154)))

(declare-fun res!2906955 () Bool)

(assert (=> b!7124213 (=> (not res!2906955) (not e!4281154))))

(assert (=> b!7124213 (= res!2906955 (select lt!2562786 lt!2562788))))

(assert (=> b!7124213 (= lt!2562786 ((_ map or) s1!413 s2!384))))

(assert (= (and start!694032 res!2906951) b!7124212))

(assert (= (and b!7124212 res!2906954) b!7124211))

(assert (= (and b!7124211 res!2906953) b!7124213))

(assert (= (and b!7124213 res!2906955) b!7124209))

(assert (= (and b!7124209 (not res!2906952)) b!7124210))

(assert (= (and start!694032 condSetEmpty!51511) setIsEmpty!51510))

(assert (= (and start!694032 (not condSetEmpty!51511)) setNonEmpty!51511))

(assert (= (and start!694032 condSetEmpty!51510) setIsEmpty!51511))

(assert (= (and start!694032 (not condSetEmpty!51510)) setNonEmpty!51510))

(declare-fun b_lambda!271863 () Bool)

(assert (=> (not b_lambda!271863) (not b!7124209)))

(declare-fun t!382983 () Bool)

(declare-fun tb!262033 () Bool)

(assert (=> (and start!694032 (= f!518 f!518) t!382983) tb!262033))

(declare-fun result!349362 () Bool)

(assert (=> tb!262033 (= result!349362 tp_is_empty!45565)))

(assert (=> b!7124209 t!382983))

(declare-fun b_and!350943 () Bool)

(assert (= b_and!350941 (and (=> t!382983 result!349362) b_and!350943)))

(declare-fun m!7841684 () Bool)

(assert (=> b!7124211 m!7841684))

(declare-fun m!7841686 () Bool)

(assert (=> b!7124211 m!7841686))

(declare-fun m!7841688 () Bool)

(assert (=> b!7124212 m!7841688))

(declare-fun m!7841690 () Bool)

(assert (=> b!7124212 m!7841690))

(declare-fun m!7841692 () Bool)

(assert (=> b!7124209 m!7841692))

(assert (=> b!7124209 m!7841692))

(declare-fun m!7841694 () Bool)

(assert (=> b!7124209 m!7841694))

(declare-fun m!7841696 () Bool)

(assert (=> b!7124209 m!7841696))

(declare-fun m!7841698 () Bool)

(assert (=> b!7124209 m!7841698))

(declare-fun m!7841700 () Bool)

(assert (=> b!7124210 m!7841700))

(declare-fun m!7841702 () Bool)

(assert (=> b!7124210 m!7841702))

(declare-fun m!7841704 () Bool)

(assert (=> b!7124213 m!7841704))

(declare-fun m!7841706 () Bool)

(assert (=> start!694032 m!7841706))

(declare-fun m!7841708 () Bool)

(assert (=> start!694032 m!7841708))

(check-sat (not start!694032) (not setNonEmpty!51510) b_and!350943 (not b!7124209) tp_is_empty!45565 (not b_next!134591) (not b!7124212) (not b!7124211) (not b_lambda!271863) tp_is_empty!45567 (not setNonEmpty!51511))
(check-sat b_and!350943 (not b_next!134591))
(get-model)

(declare-fun b_lambda!271865 () Bool)

(assert (= b_lambda!271863 (or (and start!694032 b_free!133801) b_lambda!271865)))

(check-sat (not start!694032) (not setNonEmpty!51510) b_and!350943 (not b!7124211) (not b!7124209) tp_is_empty!45565 (not b_next!134591) (not b_lambda!271865) (not b!7124212) tp_is_empty!45567 (not setNonEmpty!51511))
(check-sat b_and!350943 (not b_next!134591))
(get-model)

(declare-fun d!2223287 () Bool)

(declare-fun e!4281159 () Bool)

(assert (=> d!2223287 e!4281159))

(declare-fun res!2906958 () Bool)

(assert (=> d!2223287 (=> (not res!2906958) (not e!4281159))))

(declare-fun lt!2562791 () A!707)

(assert (=> d!2223287 (= res!2906958 (= b!25321 (dynLambda!28100 f!518 lt!2562791)))))

(declare-fun choose!55073 ((InoxSet A!707) Int B!3365) A!707)

(assert (=> d!2223287 (= lt!2562791 (choose!55073 s2!384 f!518 b!25321))))

(assert (=> d!2223287 (select (map!16476 s2!384 f!518) b!25321)))

(assert (=> d!2223287 (= (mapPost2!582 s2!384 f!518 b!25321) lt!2562791)))

(declare-fun b!7124219 () Bool)

(assert (=> b!7124219 (= e!4281159 (select s2!384 lt!2562791))))

(assert (= (and d!2223287 res!2906958) b!7124219))

(declare-fun b_lambda!271869 () Bool)

(assert (=> (not b_lambda!271869) (not d!2223287)))

(declare-fun t!382985 () Bool)

(declare-fun tb!262035 () Bool)

(assert (=> (and start!694032 (= f!518 f!518) t!382985) tb!262035))

(declare-fun result!349366 () Bool)

(assert (=> tb!262035 (= result!349366 tp_is_empty!45565)))

(assert (=> d!2223287 t!382985))

(declare-fun b_and!350945 () Bool)

(assert (= b_and!350943 (and (=> t!382985 result!349366) b_and!350945)))

(declare-fun m!7841710 () Bool)

(assert (=> d!2223287 m!7841710))

(declare-fun m!7841712 () Bool)

(assert (=> d!2223287 m!7841712))

(assert (=> d!2223287 m!7841690))

(declare-fun m!7841714 () Bool)

(assert (=> d!2223287 m!7841714))

(declare-fun m!7841716 () Bool)

(assert (=> b!7124219 m!7841716))

(assert (=> b!7124211 d!2223287))

(declare-fun d!2223289 () Bool)

(declare-fun choose!55074 ((InoxSet A!707) Int) (InoxSet B!3365))

(assert (=> d!2223289 (= (map!16476 s1!413 f!518) (choose!55074 s1!413 f!518))))

(declare-fun bs!1886237 () Bool)

(assert (= bs!1886237 d!2223289))

(declare-fun m!7841718 () Bool)

(assert (=> bs!1886237 m!7841718))

(assert (=> start!694032 d!2223289))

(declare-fun d!2223291 () Bool)

(assert (=> d!2223291 (= (map!16476 s2!384 f!518) (choose!55074 s2!384 f!518))))

(declare-fun bs!1886238 () Bool)

(assert (= bs!1886238 d!2223291))

(declare-fun m!7841720 () Bool)

(assert (=> bs!1886238 m!7841720))

(assert (=> b!7124212 d!2223291))

(declare-fun d!2223293 () Bool)

(assert (=> d!2223293 (= (map!16476 lt!2562786 f!518) (choose!55074 lt!2562786 f!518))))

(declare-fun bs!1886239 () Bool)

(assert (= bs!1886239 d!2223293))

(declare-fun m!7841722 () Bool)

(assert (=> bs!1886239 m!7841722))

(assert (=> b!7124209 d!2223293))

(declare-fun d!2223295 () Bool)

(declare-fun e!4281162 () Bool)

(assert (=> d!2223295 e!4281162))

(declare-fun res!2906961 () Bool)

(assert (=> d!2223295 (=> res!2906961 e!4281162)))

(assert (=> d!2223295 (= res!2906961 (not (select lt!2562786 lt!2562788)))))

(declare-fun lt!2562794 () Unit!162815)

(declare-fun choose!55075 ((InoxSet A!707) Int A!707) Unit!162815)

(assert (=> d!2223295 (= lt!2562794 (choose!55075 lt!2562786 f!518 lt!2562788))))

(assert (=> d!2223295 (= (mapPost1!16 lt!2562786 f!518 lt!2562788) lt!2562794)))

(declare-fun b!7124222 () Bool)

(assert (=> b!7124222 (= e!4281162 (select (map!16476 lt!2562786 f!518) (dynLambda!28100 f!518 lt!2562788)))))

(assert (= (and d!2223295 (not res!2906961)) b!7124222))

(declare-fun b_lambda!271871 () Bool)

(assert (=> (not b_lambda!271871) (not b!7124222)))

(assert (=> b!7124222 t!382983))

(declare-fun b_and!350947 () Bool)

(assert (= b_and!350945 (and (=> t!382983 result!349362) b_and!350947)))

(assert (=> d!2223295 m!7841704))

(declare-fun m!7841724 () Bool)

(assert (=> d!2223295 m!7841724))

(assert (=> b!7124222 m!7841692))

(assert (=> b!7124222 m!7841696))

(assert (=> b!7124222 m!7841692))

(declare-fun m!7841726 () Bool)

(assert (=> b!7124222 m!7841726))

(assert (=> b!7124209 d!2223295))

(declare-fun condSetEmpty!51514 () Bool)

(assert (=> setNonEmpty!51510 (= condSetEmpty!51514 (= setRest!51511 ((as const (Array A!707 Bool)) false)))))

(declare-fun setRes!51514 () Bool)

(assert (=> setNonEmpty!51510 (= tp!1962041 setRes!51514)))

(declare-fun setIsEmpty!51514 () Bool)

(assert (=> setIsEmpty!51514 setRes!51514))

(declare-fun setNonEmpty!51514 () Bool)

(declare-fun tp!1962044 () Bool)

(assert (=> setNonEmpty!51514 (= setRes!51514 (and tp!1962044 tp_is_empty!45567))))

(declare-fun setElem!51514 () A!707)

(declare-fun setRest!51514 () (InoxSet A!707))

(assert (=> setNonEmpty!51514 (= setRest!51511 ((_ map or) (store ((as const (Array A!707 Bool)) false) setElem!51514 true) setRest!51514))))

(assert (= (and setNonEmpty!51510 condSetEmpty!51514) setIsEmpty!51514))

(assert (= (and setNonEmpty!51510 (not condSetEmpty!51514)) setNonEmpty!51514))

(declare-fun condSetEmpty!51515 () Bool)

(assert (=> setNonEmpty!51511 (= condSetEmpty!51515 (= setRest!51510 ((as const (Array A!707 Bool)) false)))))

(declare-fun setRes!51515 () Bool)

(assert (=> setNonEmpty!51511 (= tp!1962039 setRes!51515)))

(declare-fun setIsEmpty!51515 () Bool)

(assert (=> setIsEmpty!51515 setRes!51515))

(declare-fun setNonEmpty!51515 () Bool)

(declare-fun tp!1962045 () Bool)

(assert (=> setNonEmpty!51515 (= setRes!51515 (and tp!1962045 tp_is_empty!45567))))

(declare-fun setElem!51515 () A!707)

(declare-fun setRest!51515 () (InoxSet A!707))

(assert (=> setNonEmpty!51515 (= setRest!51510 ((_ map or) (store ((as const (Array A!707 Bool)) false) setElem!51515 true) setRest!51515))))

(assert (= (and setNonEmpty!51511 condSetEmpty!51515) setIsEmpty!51515))

(assert (= (and setNonEmpty!51511 (not condSetEmpty!51515)) setNonEmpty!51515))

(declare-fun b_lambda!271873 () Bool)

(assert (= b_lambda!271869 (or (and start!694032 b_free!133801) b_lambda!271873)))

(declare-fun b_lambda!271875 () Bool)

(assert (= b_lambda!271871 (or (and start!694032 b_free!133801) b_lambda!271875)))

(check-sat (not d!2223293) (not d!2223291) (not d!2223287) (not d!2223295) (not b!7124222) (not setNonEmpty!51514) (not b_lambda!271875) (not b_next!134591) (not b_lambda!271865) b_and!350947 (not setNonEmpty!51515) tp_is_empty!45565 (not d!2223289) tp_is_empty!45567 (not b_lambda!271873))
(check-sat b_and!350947 (not b_next!134591))
