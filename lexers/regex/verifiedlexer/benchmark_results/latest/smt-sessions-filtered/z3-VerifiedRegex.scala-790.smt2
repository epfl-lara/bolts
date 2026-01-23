; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44984 () Bool)

(assert start!44984)

(declare-fun b_free!13105 () Bool)

(declare-fun b_next!13105 () Bool)

(assert (=> start!44984 (= b_free!13105 (not b_next!13105))))

(declare-fun tp!130497 () Bool)

(declare-fun b_and!50385 () Bool)

(assert (=> start!44984 (= tp!130497 b_and!50385)))

(declare-fun b_free!13107 () Bool)

(declare-fun b_next!13107 () Bool)

(assert (=> start!44984 (= b_free!13107 (not b_next!13107))))

(declare-fun tp!130496 () Bool)

(declare-fun b_and!50387 () Bool)

(assert (=> start!44984 (= tp!130496 b_and!50387)))

(assert (=> start!44984 true))

(declare-fun order!4115 () Int)

(declare-fun f!1027 () Int)

(declare-fun order!4113 () Int)

(declare-fun lambda!13915 () Int)

(declare-fun dynLambda!2815 (Int Int) Int)

(declare-fun dynLambda!2816 (Int Int) Int)

(assert (=> start!44984 (< (dynLambda!2815 order!4113 f!1027) (dynLambda!2816 order!4115 lambda!13915))))

(assert (=> start!44984 true))

(declare-fun order!4117 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2817 (Int Int) Int)

(assert (=> start!44984 (< (dynLambda!2817 order!4117 p!1789) (dynLambda!2816 order!4115 lambda!13915))))

(declare-fun b!471232 () Bool)

(declare-fun res!208911 () Bool)

(declare-fun e!288156 () Bool)

(assert (=> b!471232 (=> (not res!208911) (not e!288156))))

(declare-datatypes ((B!909 0))(
  ( (B!910 (val!1485 Int)) )
))
(declare-datatypes ((List!4541 0))(
  ( (Nil!4531) (Cons!4531 (h!9928 B!909) (t!72949 List!4541)) )
))
(declare-fun l!2882 () List!4541)

(get-info :version)

(assert (=> b!471232 (= res!208911 ((_ is Cons!4531) l!2882))))

(declare-fun b!471234 () Bool)

(declare-fun e!288155 () Bool)

(assert (=> b!471234 (= e!288155 (not true))))

(declare-datatypes ((Unit!8267 0))(
  ( (Unit!8268) )
))
(declare-fun lt!209961 () Unit!8267)

(declare-fun lt!209964 () List!4541)

(declare-fun subseqTail!4 (List!4541 List!4541) Unit!8267)

(assert (=> b!471234 (= lt!209961 (subseqTail!4 l!2882 lt!209964))))

(declare-fun dynLambda!2818 (Int B!909) Bool)

(assert (=> b!471234 (dynLambda!2818 p!1789 (h!9928 l!2882))))

(declare-fun lt!209960 () Unit!8267)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!347 0))(
  ( (A!348 (val!1486 Int)) )
))
(declare-fun s!1494 () (InoxSet A!347))

(declare-fun lemmaFlatMapForallElem!6 ((InoxSet A!347) Int Int B!909) Unit!8267)

(assert (=> b!471234 (= lt!209960 (lemmaFlatMapForallElem!6 s!1494 f!1027 p!1789 (h!9928 l!2882)))))

(declare-fun empty!2571 () A!347)

(declare-fun flatMapPost!10 ((InoxSet A!347) Int B!909) A!347)

(assert (=> b!471234 (= (flatMapPost!10 s!1494 f!1027 (h!9928 l!2882)) empty!2571)))

(assert (=> b!471234 true))

(declare-fun tp_is_empty!2073 () Bool)

(assert (=> b!471234 tp_is_empty!2073))

(declare-fun b!471235 () Bool)

(declare-fun e!288154 () Bool)

(declare-fun tp_is_empty!2075 () Bool)

(declare-fun tp!130498 () Bool)

(assert (=> b!471235 (= e!288154 (and tp_is_empty!2075 tp!130498))))

(declare-fun setNonEmpty!1878 () Bool)

(declare-fun setRes!1878 () Bool)

(declare-fun tp!130499 () Bool)

(assert (=> setNonEmpty!1878 (= setRes!1878 (and tp!130499 tp_is_empty!2073))))

(declare-fun setElem!1878 () A!347)

(declare-fun setRest!1878 () (InoxSet A!347))

(assert (=> setNonEmpty!1878 (= s!1494 ((_ map or) (store ((as const (Array A!347 Bool)) false) setElem!1878 true) setRest!1878))))

(declare-fun b!471236 () Bool)

(declare-fun e!288157 () Bool)

(assert (=> b!471236 (= e!288157 e!288156)))

(declare-fun res!208910 () Bool)

(assert (=> b!471236 (=> (not res!208910) (not e!288156))))

(declare-fun subseq!99 (List!4541 List!4541) Bool)

(assert (=> b!471236 (= res!208910 (subseq!99 l!2882 lt!209964))))

(declare-fun lt!209962 () (InoxSet B!909))

(declare-fun toList!312 ((InoxSet B!909)) List!4541)

(assert (=> b!471236 (= lt!209964 (toList!312 lt!209962))))

(declare-fun flatMap!78 ((InoxSet A!347) Int) (InoxSet B!909))

(assert (=> b!471236 (= lt!209962 (flatMap!78 s!1494 f!1027))))

(declare-fun setIsEmpty!1878 () Bool)

(assert (=> setIsEmpty!1878 setRes!1878))

(declare-fun b!471233 () Bool)

(assert (=> b!471233 (= e!288156 e!288155)))

(declare-fun res!208909 () Bool)

(assert (=> b!471233 (=> (not res!208909) (not e!288155))))

(assert (=> b!471233 (= res!208909 (select lt!209962 (h!9928 l!2882)))))

(declare-fun lt!209963 () Unit!8267)

(declare-fun subseqContains!10 (List!4541 List!4541 B!909) Unit!8267)

(assert (=> b!471233 (= lt!209963 (subseqContains!10 l!2882 lt!209964 (h!9928 l!2882)))))

(declare-fun res!208908 () Bool)

(assert (=> start!44984 (=> (not res!208908) (not e!288157))))

(declare-fun Forall!228 (Int) Bool)

(assert (=> start!44984 (= res!208908 (Forall!228 lambda!13915))))

(assert (=> start!44984 e!288157))

(assert (=> start!44984 tp!130497))

(assert (=> start!44984 tp!130496))

(declare-fun condSetEmpty!1878 () Bool)

(assert (=> start!44984 (= condSetEmpty!1878 (= s!1494 ((as const (Array A!347 Bool)) false)))))

(assert (=> start!44984 setRes!1878))

(assert (=> start!44984 e!288154))

(assert (= (and start!44984 res!208908) b!471236))

(assert (= (and b!471236 res!208910) b!471232))

(assert (= (and b!471232 res!208911) b!471233))

(assert (= (and b!471233 res!208909) b!471234))

(assert (= (and start!44984 condSetEmpty!1878) setIsEmpty!1878))

(assert (= (and start!44984 (not condSetEmpty!1878)) setNonEmpty!1878))

(assert (= (and start!44984 ((_ is Cons!4531) l!2882)) b!471235))

(declare-fun b_lambda!19661 () Bool)

(assert (=> (not b_lambda!19661) (not b!471234)))

(declare-fun t!72948 () Bool)

(declare-fun tb!47015 () Bool)

(assert (=> (and start!44984 (= p!1789 p!1789) t!72948) tb!47015))

(declare-fun result!51754 () Bool)

(assert (=> tb!47015 (= result!51754 true)))

(assert (=> b!471234 t!72948))

(declare-fun b_and!50389 () Bool)

(assert (= b_and!50387 (and (=> t!72948 result!51754) b_and!50389)))

(declare-fun m!744795 () Bool)

(assert (=> b!471234 m!744795))

(declare-fun m!744797 () Bool)

(assert (=> b!471234 m!744797))

(declare-fun m!744799 () Bool)

(assert (=> b!471234 m!744799))

(declare-fun m!744801 () Bool)

(assert (=> b!471234 m!744801))

(declare-fun m!744803 () Bool)

(assert (=> b!471236 m!744803))

(declare-fun m!744805 () Bool)

(assert (=> b!471236 m!744805))

(declare-fun m!744807 () Bool)

(assert (=> b!471236 m!744807))

(declare-fun m!744809 () Bool)

(assert (=> b!471233 m!744809))

(declare-fun m!744811 () Bool)

(assert (=> b!471233 m!744811))

(declare-fun m!744813 () Bool)

(assert (=> start!44984 m!744813))

(check-sat (not b_next!13107) tp_is_empty!2075 (not start!44984) (not b!471235) b_and!50389 (not b!471234) tp_is_empty!2073 (not b_lambda!19661) b_and!50385 (not setNonEmpty!1878) (not b!471236) (not b!471233) (not b_next!13105))
(check-sat b_and!50385 b_and!50389 (not b_next!13107) (not b_next!13105))
