; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694080 () Bool)

(assert start!694080)

(declare-fun b_free!133813 () Bool)

(declare-fun b_next!134603 () Bool)

(assert (=> start!694080 (= b_free!133813 (not b_next!134603))))

(declare-fun tp!1962118 () Bool)

(declare-fun b_and!350981 () Bool)

(assert (=> start!694080 (= tp!1962118 b_and!350981)))

(declare-fun b!7124368 () Bool)

(declare-fun e!4281263 () Bool)

(declare-fun e!4281260 () Bool)

(assert (=> b!7124368 (= e!4281263 e!4281260)))

(declare-fun res!2907074 () Bool)

(assert (=> b!7124368 (=> (not res!2907074) (not e!4281260))))

(declare-fun lt!2562882 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!719 0))(
  ( (A!720 (val!28045 Int)) )
))
(declare-fun s2!384 () (InoxSet A!719))

(declare-fun lt!2562883 () A!719)

(assert (=> b!7124368 (= res!2907074 (or lt!2562882 (select s2!384 lt!2562883)))))

(declare-fun s1!413 () (InoxSet A!719))

(assert (=> b!7124368 (= lt!2562882 (select s1!413 lt!2562883))))

(declare-datatypes ((B!3377 0))(
  ( (B!3378 (val!28046 Int)) )
))
(declare-fun b!25321 () B!3377)

(declare-fun f!518 () Int)

(declare-fun lt!2562884 () (InoxSet A!719))

(declare-fun mapPost2!588 ((InoxSet A!719) Int B!3377) A!719)

(assert (=> b!7124368 (= lt!2562883 (mapPost2!588 lt!2562884 f!518 b!25321))))

(declare-fun setNonEmpty!51570 () Bool)

(declare-fun setRes!51571 () Bool)

(declare-fun tp!1962119 () Bool)

(declare-fun tp_is_empty!45591 () Bool)

(assert (=> setNonEmpty!51570 (= setRes!51571 (and tp!1962119 tp_is_empty!45591))))

(declare-fun setElem!51570 () A!719)

(declare-fun setRest!51571 () (InoxSet A!719))

(assert (=> setNonEmpty!51570 (= s2!384 ((_ map or) (store ((as const (Array A!719 Bool)) false) setElem!51570 true) setRest!51571))))

(declare-fun c!1329201 () Bool)

(declare-fun bm!650797 () Bool)

(declare-datatypes ((Unit!162829 0))(
  ( (Unit!162830) )
))
(declare-fun call!650802 () Unit!162829)

(declare-fun mapPost1!22 ((InoxSet A!719) Int A!719) Unit!162829)

(assert (=> bm!650797 (= call!650802 (mapPost1!22 (ite c!1329201 s1!413 s2!384) f!518 lt!2562883))))

(declare-fun b!7124369 () Bool)

(declare-fun res!2907073 () Bool)

(declare-fun e!4281261 () Bool)

(assert (=> b!7124369 (=> (not res!2907073) (not e!4281261))))

(declare-fun map!16485 ((InoxSet A!719) Int) (InoxSet B!3377))

(assert (=> b!7124369 (= res!2907073 (not (select (map!16485 s2!384 f!518) b!25321)))))

(declare-fun setIsEmpty!51570 () Bool)

(assert (=> setIsEmpty!51570 setRes!51571))

(declare-fun b!7124370 () Bool)

(declare-fun e!4281264 () Unit!162829)

(declare-fun Unit!162831 () Unit!162829)

(assert (=> b!7124370 (= e!4281264 Unit!162831)))

(assert (=> b!7124370 true))

(declare-fun res!2907070 () Bool)

(declare-fun empty!2878 () Unit!162829)

(assert (=> b!7124370 (= res!2907070 (= call!650802 empty!2878))))

(declare-fun e!4281262 () Bool)

(assert (=> b!7124370 (=> (not res!2907070) (not e!4281262))))

(assert (=> b!7124370 e!4281262))

(declare-fun setNonEmpty!51571 () Bool)

(declare-fun setRes!51570 () Bool)

(declare-fun tp!1962117 () Bool)

(assert (=> setNonEmpty!51571 (= setRes!51570 (and tp!1962117 tp_is_empty!45591))))

(declare-fun setElem!51571 () A!719)

(declare-fun setRest!51570 () (InoxSet A!719))

(assert (=> setNonEmpty!51571 (= s1!413 ((_ map or) (store ((as const (Array A!719 Bool)) false) setElem!51571 true) setRest!51570))))

(declare-fun b!7124371 () Bool)

(assert (=> b!7124371 (= e!4281261 e!4281263)))

(declare-fun res!2907071 () Bool)

(assert (=> b!7124371 (=> (not res!2907071) (not e!4281263))))

(assert (=> b!7124371 (= res!2907071 (select (map!16485 lt!2562884 f!518) b!25321))))

(assert (=> b!7124371 (= lt!2562884 ((_ map or) s1!413 s2!384))))

(declare-fun b!7124372 () Bool)

(assert (=> b!7124372 (= e!4281262 false)))

(declare-fun res!2907072 () Bool)

(assert (=> start!694080 (=> (not res!2907072) (not e!4281261))))

(assert (=> start!694080 (= res!2907072 (not (select (map!16485 s1!413 f!518) b!25321)))))

(assert (=> start!694080 e!4281261))

(declare-fun tp_is_empty!45589 () Bool)

(assert (=> start!694080 tp_is_empty!45589))

(declare-fun condSetEmpty!51571 () Bool)

(assert (=> start!694080 (= condSetEmpty!51571 (= s1!413 ((as const (Array A!719 Bool)) false)))))

(assert (=> start!694080 setRes!51570))

(assert (=> start!694080 tp!1962118))

(declare-fun condSetEmpty!51570 () Bool)

(assert (=> start!694080 (= condSetEmpty!51570 (= s2!384 ((as const (Array A!719 Bool)) false)))))

(assert (=> start!694080 setRes!51571))

(declare-fun b!7124373 () Bool)

(declare-fun e!4281259 () Bool)

(assert (=> b!7124373 (= e!4281259 false)))

(declare-fun setIsEmpty!51571 () Bool)

(assert (=> setIsEmpty!51571 setRes!51570))

(declare-fun b!7124374 () Bool)

(declare-fun Unit!162832 () Unit!162829)

(assert (=> b!7124374 (= e!4281264 Unit!162832)))

(assert (=> b!7124374 true))

(declare-fun res!2907075 () Bool)

(declare-fun empty!2879 () Unit!162829)

(assert (=> b!7124374 (= res!2907075 (= call!650802 empty!2879))))

(assert (=> b!7124374 (=> (not res!2907075) (not e!4281259))))

(assert (=> b!7124374 e!4281259))

(declare-fun b!7124375 () Bool)

(declare-fun dynLambda!28105 (Int A!719) B!3377)

(assert (=> b!7124375 (= e!4281260 (= (dynLambda!28105 f!518 lt!2562883) b!25321))))

(declare-fun lt!2562881 () Unit!162829)

(assert (=> b!7124375 (= lt!2562881 e!4281264)))

(assert (=> b!7124375 (= c!1329201 lt!2562882)))

(assert (= (and start!694080 res!2907072) b!7124369))

(assert (= (and b!7124369 res!2907073) b!7124371))

(assert (= (and b!7124371 res!2907071) b!7124368))

(assert (= (and b!7124368 res!2907074) b!7124375))

(assert (= (and b!7124375 c!1329201) b!7124374))

(assert (= (and b!7124375 (not c!1329201)) b!7124370))

(assert (= (and b!7124374 res!2907075) b!7124373))

(assert (= (and b!7124370 res!2907070) b!7124372))

(assert (= (or b!7124374 b!7124370) bm!650797))

(assert (= (and start!694080 condSetEmpty!51571) setIsEmpty!51571))

(assert (= (and start!694080 (not condSetEmpty!51571)) setNonEmpty!51571))

(assert (= (and start!694080 condSetEmpty!51570) setIsEmpty!51570))

(assert (= (and start!694080 (not condSetEmpty!51570)) setNonEmpty!51570))

(declare-fun b_lambda!271919 () Bool)

(assert (=> (not b_lambda!271919) (not b!7124375)))

(declare-fun t!383007 () Bool)

(declare-fun tb!262057 () Bool)

(assert (=> (and start!694080 (= f!518 f!518) t!383007) tb!262057))

(declare-fun result!349410 () Bool)

(assert (=> tb!262057 (= result!349410 tp_is_empty!45589)))

(assert (=> b!7124375 t!383007))

(declare-fun b_and!350983 () Bool)

(assert (= b_and!350981 (and (=> t!383007 result!349410) b_and!350983)))

(declare-fun m!7841920 () Bool)

(assert (=> b!7124369 m!7841920))

(declare-fun m!7841922 () Bool)

(assert (=> b!7124369 m!7841922))

(declare-fun m!7841924 () Bool)

(assert (=> start!694080 m!7841924))

(declare-fun m!7841926 () Bool)

(assert (=> start!694080 m!7841926))

(declare-fun m!7841928 () Bool)

(assert (=> b!7124368 m!7841928))

(declare-fun m!7841930 () Bool)

(assert (=> b!7124368 m!7841930))

(declare-fun m!7841932 () Bool)

(assert (=> b!7124368 m!7841932))

(declare-fun m!7841934 () Bool)

(assert (=> b!7124371 m!7841934))

(declare-fun m!7841936 () Bool)

(assert (=> b!7124371 m!7841936))

(declare-fun m!7841938 () Bool)

(assert (=> b!7124375 m!7841938))

(declare-fun m!7841940 () Bool)

(assert (=> bm!650797 m!7841940))

(check-sat (not b_lambda!271919) tp_is_empty!45591 (not bm!650797) (not start!694080) (not b!7124368) (not b!7124369) (not b!7124371) tp_is_empty!45589 (not b_next!134603) b_and!350983 (not setNonEmpty!51570) (not setNonEmpty!51571))
(check-sat b_and!350983 (not b_next!134603))
