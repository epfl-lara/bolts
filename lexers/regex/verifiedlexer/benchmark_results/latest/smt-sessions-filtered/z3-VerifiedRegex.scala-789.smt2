; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44980 () Bool)

(assert start!44980)

(declare-fun b_free!13097 () Bool)

(declare-fun b_next!13097 () Bool)

(assert (=> start!44980 (= b_free!13097 (not b_next!13097))))

(declare-fun tp!130472 () Bool)

(declare-fun b_and!50373 () Bool)

(assert (=> start!44980 (= tp!130472 b_and!50373)))

(declare-fun b_free!13099 () Bool)

(declare-fun b_next!13099 () Bool)

(assert (=> start!44980 (= b_free!13099 (not b_next!13099))))

(declare-fun tp!130474 () Bool)

(declare-fun b_and!50375 () Bool)

(assert (=> start!44980 (= tp!130474 b_and!50375)))

(assert (=> start!44980 true))

(declare-fun order!4103 () Int)

(declare-fun order!4101 () Int)

(declare-fun f!1027 () Int)

(declare-fun lambda!13909 () Int)

(declare-fun dynLambda!2807 (Int Int) Int)

(declare-fun dynLambda!2808 (Int Int) Int)

(assert (=> start!44980 (< (dynLambda!2807 order!4101 f!1027) (dynLambda!2808 order!4103 lambda!13909))))

(assert (=> start!44980 true))

(declare-fun p!1789 () Int)

(declare-fun order!4105 () Int)

(declare-fun dynLambda!2809 (Int Int) Int)

(assert (=> start!44980 (< (dynLambda!2809 order!4105 p!1789) (dynLambda!2808 order!4103 lambda!13909))))

(declare-fun b!471192 () Bool)

(declare-fun e!288130 () Bool)

(declare-fun Forall!226 (Int) Bool)

(assert (=> b!471192 (= e!288130 (Forall!226 lambda!13909))))

(declare-fun res!208886 () Bool)

(declare-fun e!288133 () Bool)

(assert (=> start!44980 (=> (not res!208886) (not e!288133))))

(assert (=> start!44980 (= res!208886 (Forall!226 lambda!13909))))

(assert (=> start!44980 e!288133))

(assert (=> start!44980 tp!130472))

(assert (=> start!44980 tp!130474))

(declare-fun condSetEmpty!1872 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!343 0))(
  ( (A!344 (val!1481 Int)) )
))
(declare-fun s!1494 () (InoxSet A!343))

(assert (=> start!44980 (= condSetEmpty!1872 (= s!1494 ((as const (Array A!343 Bool)) false)))))

(declare-fun setRes!1872 () Bool)

(assert (=> start!44980 setRes!1872))

(declare-fun e!288131 () Bool)

(assert (=> start!44980 e!288131))

(declare-fun b!471193 () Bool)

(declare-fun e!288132 () Bool)

(assert (=> b!471193 (= e!288132 (not e!288130))))

(declare-fun res!208887 () Bool)

(assert (=> b!471193 (=> res!208887 e!288130)))

(assert (=> b!471193 (= res!208887 (not (Forall!226 lambda!13909)))))

(declare-datatypes ((Unit!8263 0))(
  ( (Unit!8264) )
))
(declare-fun lt!209930 () Unit!8263)

(declare-datatypes ((B!905 0))(
  ( (B!906 (val!1482 Int)) )
))
(declare-datatypes ((List!4539 0))(
  ( (Nil!4529) (Cons!4529 (h!9926 B!905) (t!72943 List!4539)) )
))
(declare-fun l!2882 () List!4539)

(declare-fun lt!209933 () List!4539)

(declare-fun subseqTail!2 (List!4539 List!4539) Unit!8263)

(assert (=> b!471193 (= lt!209930 (subseqTail!2 l!2882 lt!209933))))

(declare-fun dynLambda!2810 (Int B!905) Bool)

(assert (=> b!471193 (dynLambda!2810 p!1789 (h!9926 l!2882))))

(declare-fun lt!209932 () Unit!8263)

(declare-fun lemmaFlatMapForallElem!4 ((InoxSet A!343) Int Int B!905) Unit!8263)

(assert (=> b!471193 (= lt!209932 (lemmaFlatMapForallElem!4 s!1494 f!1027 p!1789 (h!9926 l!2882)))))

(declare-fun empty!2563 () A!343)

(declare-fun flatMapPost!8 ((InoxSet A!343) Int B!905) A!343)

(assert (=> b!471193 (= (flatMapPost!8 s!1494 f!1027 (h!9926 l!2882)) empty!2563)))

(assert (=> b!471193 true))

(declare-fun tp_is_empty!2065 () Bool)

(assert (=> b!471193 tp_is_empty!2065))

(declare-fun b!471194 () Bool)

(declare-fun res!208884 () Bool)

(declare-fun e!288129 () Bool)

(assert (=> b!471194 (=> (not res!208884) (not e!288129))))

(get-info :version)

(assert (=> b!471194 (= res!208884 ((_ is Cons!4529) l!2882))))

(declare-fun setNonEmpty!1872 () Bool)

(declare-fun tp!130475 () Bool)

(assert (=> setNonEmpty!1872 (= setRes!1872 (and tp!130475 tp_is_empty!2065))))

(declare-fun setElem!1872 () A!343)

(declare-fun setRest!1872 () (InoxSet A!343))

(assert (=> setNonEmpty!1872 (= s!1494 ((_ map or) (store ((as const (Array A!343 Bool)) false) setElem!1872 true) setRest!1872))))

(declare-fun b!471195 () Bool)

(assert (=> b!471195 (= e!288129 e!288132)))

(declare-fun res!208883 () Bool)

(assert (=> b!471195 (=> (not res!208883) (not e!288132))))

(declare-fun lt!209931 () (InoxSet B!905))

(assert (=> b!471195 (= res!208883 (select lt!209931 (h!9926 l!2882)))))

(declare-fun lt!209934 () Unit!8263)

(declare-fun subseqContains!8 (List!4539 List!4539 B!905) Unit!8263)

(assert (=> b!471195 (= lt!209934 (subseqContains!8 l!2882 lt!209933 (h!9926 l!2882)))))

(declare-fun b!471196 () Bool)

(declare-fun res!208882 () Bool)

(assert (=> b!471196 (=> res!208882 e!288130)))

(declare-fun subseq!97 (List!4539 List!4539) Bool)

(assert (=> b!471196 (= res!208882 (not (subseq!97 (t!72943 l!2882) lt!209933)))))

(declare-fun b!471197 () Bool)

(declare-fun tp_is_empty!2067 () Bool)

(declare-fun tp!130473 () Bool)

(assert (=> b!471197 (= e!288131 (and tp_is_empty!2067 tp!130473))))

(declare-fun b!471198 () Bool)

(assert (=> b!471198 (= e!288133 e!288129)))

(declare-fun res!208885 () Bool)

(assert (=> b!471198 (=> (not res!208885) (not e!288129))))

(assert (=> b!471198 (= res!208885 (subseq!97 l!2882 lt!209933))))

(declare-fun toList!310 ((InoxSet B!905)) List!4539)

(assert (=> b!471198 (= lt!209933 (toList!310 lt!209931))))

(declare-fun flatMap!76 ((InoxSet A!343) Int) (InoxSet B!905))

(assert (=> b!471198 (= lt!209931 (flatMap!76 s!1494 f!1027))))

(declare-fun setIsEmpty!1872 () Bool)

(assert (=> setIsEmpty!1872 setRes!1872))

(assert (= (and start!44980 res!208886) b!471198))

(assert (= (and b!471198 res!208885) b!471194))

(assert (= (and b!471194 res!208884) b!471195))

(assert (= (and b!471195 res!208883) b!471193))

(assert (= (and b!471193 (not res!208887)) b!471196))

(assert (= (and b!471196 (not res!208882)) b!471192))

(assert (= (and start!44980 condSetEmpty!1872) setIsEmpty!1872))

(assert (= (and start!44980 (not condSetEmpty!1872)) setNonEmpty!1872))

(assert (= (and start!44980 ((_ is Cons!4529) l!2882)) b!471197))

(declare-fun b_lambda!19657 () Bool)

(assert (=> (not b_lambda!19657) (not b!471193)))

(declare-fun t!72942 () Bool)

(declare-fun tb!47011 () Bool)

(assert (=> (and start!44980 (= p!1789 p!1789) t!72942) tb!47011))

(declare-fun result!51750 () Bool)

(assert (=> tb!47011 (= result!51750 true)))

(assert (=> b!471193 t!72942))

(declare-fun b_and!50377 () Bool)

(assert (= b_and!50375 (and (=> t!72942 result!51750) b_and!50377)))

(declare-fun m!744753 () Bool)

(assert (=> b!471196 m!744753))

(declare-fun m!744755 () Bool)

(assert (=> b!471198 m!744755))

(declare-fun m!744757 () Bool)

(assert (=> b!471198 m!744757))

(declare-fun m!744759 () Bool)

(assert (=> b!471198 m!744759))

(declare-fun m!744761 () Bool)

(assert (=> start!44980 m!744761))

(assert (=> b!471193 m!744761))

(declare-fun m!744763 () Bool)

(assert (=> b!471193 m!744763))

(declare-fun m!744765 () Bool)

(assert (=> b!471193 m!744765))

(declare-fun m!744767 () Bool)

(assert (=> b!471193 m!744767))

(declare-fun m!744769 () Bool)

(assert (=> b!471193 m!744769))

(declare-fun m!744771 () Bool)

(assert (=> b!471195 m!744771))

(declare-fun m!744773 () Bool)

(assert (=> b!471195 m!744773))

(assert (=> b!471192 m!744761))

(check-sat (not b!471198) (not b_next!13099) (not b!471196) (not b!471197) tp_is_empty!2065 (not b!471192) (not setNonEmpty!1872) tp_is_empty!2067 (not b_next!13097) b_and!50377 b_and!50373 (not start!44980) (not b_lambda!19657) (not b!471195) (not b!471193))
(check-sat b_and!50373 b_and!50377 (not b_next!13099) (not b_next!13097))
