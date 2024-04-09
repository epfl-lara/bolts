; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75214 () Bool)

(assert start!75214)

(declare-fun b!885769 () Bool)

(declare-fun res!601568 () Bool)

(declare-fun e!493046 () Bool)

(assert (=> b!885769 (=> (not res!601568) (not e!493046))))

(declare-datatypes ((B!1294 0))(
  ( (B!1295 (val!8953 Int)) )
))
(declare-datatypes ((tuple2!11926 0))(
  ( (tuple2!11927 (_1!5973 (_ BitVec 64)) (_2!5973 B!1294)) )
))
(declare-datatypes ((List!17753 0))(
  ( (Nil!17750) (Cons!17749 (h!18880 tuple2!11926) (t!25038 List!17753)) )
))
(declare-fun l!906 () List!17753)

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!885769 (= res!601568 (and ((_ is Cons!17749) l!906) (bvslt (_1!5973 (h!18880 l!906)) key1!49)))))

(declare-fun b!885772 () Bool)

(declare-fun e!493045 () Bool)

(declare-fun tp_is_empty!17805 () Bool)

(declare-fun tp!54351 () Bool)

(assert (=> b!885772 (= e!493045 (and tp_is_empty!17805 tp!54351))))

(declare-fun b!885770 () Bool)

(declare-fun res!601566 () Bool)

(assert (=> b!885770 (=> (not res!601566) (not e!493046))))

(declare-fun isStrictlySorted!483 (List!17753) Bool)

(assert (=> b!885770 (= res!601566 (isStrictlySorted!483 (t!25038 l!906)))))

(declare-fun b!885771 () Bool)

(declare-fun ListPrimitiveSize!89 (List!17753) Int)

(assert (=> b!885771 (= e!493046 (>= (ListPrimitiveSize!89 (t!25038 l!906)) (ListPrimitiveSize!89 l!906)))))

(declare-fun res!601567 () Bool)

(assert (=> start!75214 (=> (not res!601567) (not e!493046))))

(assert (=> start!75214 (= res!601567 (isStrictlySorted!483 l!906))))

(assert (=> start!75214 e!493046))

(assert (=> start!75214 e!493045))

(assert (=> start!75214 true))

(assert (= (and start!75214 res!601567) b!885769))

(assert (= (and b!885769 res!601568) b!885770))

(assert (= (and b!885770 res!601566) b!885771))

(assert (= (and start!75214 ((_ is Cons!17749) l!906)) b!885772))

(declare-fun m!825847 () Bool)

(assert (=> b!885770 m!825847))

(declare-fun m!825849 () Bool)

(assert (=> b!885771 m!825849))

(declare-fun m!825851 () Bool)

(assert (=> b!885771 m!825851))

(declare-fun m!825853 () Bool)

(assert (=> start!75214 m!825853))

(check-sat (not b!885770) tp_is_empty!17805 (not b!885771) (not start!75214) (not b!885772))
(check-sat)
(get-model)

(declare-fun d!109393 () Bool)

(declare-fun res!601582 () Bool)

(declare-fun e!493057 () Bool)

(assert (=> d!109393 (=> res!601582 e!493057)))

(assert (=> d!109393 (= res!601582 (or ((_ is Nil!17750) (t!25038 l!906)) ((_ is Nil!17750) (t!25038 (t!25038 l!906)))))))

(assert (=> d!109393 (= (isStrictlySorted!483 (t!25038 l!906)) e!493057)))

(declare-fun b!885789 () Bool)

(declare-fun e!493058 () Bool)

(assert (=> b!885789 (= e!493057 e!493058)))

(declare-fun res!601583 () Bool)

(assert (=> b!885789 (=> (not res!601583) (not e!493058))))

(assert (=> b!885789 (= res!601583 (bvslt (_1!5973 (h!18880 (t!25038 l!906))) (_1!5973 (h!18880 (t!25038 (t!25038 l!906))))))))

(declare-fun b!885790 () Bool)

(assert (=> b!885790 (= e!493058 (isStrictlySorted!483 (t!25038 (t!25038 l!906))))))

(assert (= (and d!109393 (not res!601582)) b!885789))

(assert (= (and b!885789 res!601583) b!885790))

(declare-fun m!825863 () Bool)

(assert (=> b!885790 m!825863))

(assert (=> b!885770 d!109393))

(declare-fun d!109397 () Bool)

(declare-fun lt!401001 () Int)

(assert (=> d!109397 (>= lt!401001 0)))

(declare-fun e!493067 () Int)

(assert (=> d!109397 (= lt!401001 e!493067)))

(declare-fun c!93283 () Bool)

(assert (=> d!109397 (= c!93283 ((_ is Nil!17750) (t!25038 l!906)))))

(assert (=> d!109397 (= (ListPrimitiveSize!89 (t!25038 l!906)) lt!401001)))

(declare-fun b!885801 () Bool)

(assert (=> b!885801 (= e!493067 0)))

(declare-fun b!885802 () Bool)

(assert (=> b!885802 (= e!493067 (+ 1 (ListPrimitiveSize!89 (t!25038 (t!25038 l!906)))))))

(assert (= (and d!109397 c!93283) b!885801))

(assert (= (and d!109397 (not c!93283)) b!885802))

(declare-fun m!825865 () Bool)

(assert (=> b!885802 m!825865))

(assert (=> b!885771 d!109397))

(declare-fun d!109403 () Bool)

(declare-fun lt!401002 () Int)

(assert (=> d!109403 (>= lt!401002 0)))

(declare-fun e!493070 () Int)

(assert (=> d!109403 (= lt!401002 e!493070)))

(declare-fun c!93284 () Bool)

(assert (=> d!109403 (= c!93284 ((_ is Nil!17750) l!906))))

(assert (=> d!109403 (= (ListPrimitiveSize!89 l!906) lt!401002)))

(declare-fun b!885805 () Bool)

(assert (=> b!885805 (= e!493070 0)))

(declare-fun b!885806 () Bool)

(assert (=> b!885806 (= e!493070 (+ 1 (ListPrimitiveSize!89 (t!25038 l!906))))))

(assert (= (and d!109403 c!93284) b!885805))

(assert (= (and d!109403 (not c!93284)) b!885806))

(assert (=> b!885806 m!825849))

(assert (=> b!885771 d!109403))

(declare-fun d!109407 () Bool)

(declare-fun res!601592 () Bool)

(declare-fun e!493071 () Bool)

(assert (=> d!109407 (=> res!601592 e!493071)))

(assert (=> d!109407 (= res!601592 (or ((_ is Nil!17750) l!906) ((_ is Nil!17750) (t!25038 l!906))))))

(assert (=> d!109407 (= (isStrictlySorted!483 l!906) e!493071)))

(declare-fun b!885807 () Bool)

(declare-fun e!493072 () Bool)

(assert (=> b!885807 (= e!493071 e!493072)))

(declare-fun res!601593 () Bool)

(assert (=> b!885807 (=> (not res!601593) (not e!493072))))

(assert (=> b!885807 (= res!601593 (bvslt (_1!5973 (h!18880 l!906)) (_1!5973 (h!18880 (t!25038 l!906)))))))

(declare-fun b!885808 () Bool)

(assert (=> b!885808 (= e!493072 (isStrictlySorted!483 (t!25038 l!906)))))

(assert (= (and d!109407 (not res!601592)) b!885807))

(assert (= (and b!885807 res!601593) b!885808))

(assert (=> b!885808 m!825847))

(assert (=> start!75214 d!109407))

(declare-fun b!885813 () Bool)

(declare-fun e!493075 () Bool)

(declare-fun tp!54357 () Bool)

(assert (=> b!885813 (= e!493075 (and tp_is_empty!17805 tp!54357))))

(assert (=> b!885772 (= tp!54351 e!493075)))

(assert (= (and b!885772 ((_ is Cons!17749) (t!25038 l!906))) b!885813))

(check-sat (not b!885802) tp_is_empty!17805 (not b!885790) (not b!885806) (not b!885813) (not b!885808))
(check-sat)
