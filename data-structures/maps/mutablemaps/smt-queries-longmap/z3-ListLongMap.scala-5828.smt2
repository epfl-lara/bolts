; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75202 () Bool)

(assert start!75202)

(declare-fun res!601520 () Bool)

(declare-fun e!492995 () Bool)

(assert (=> start!75202 (=> (not res!601520) (not e!492995))))

(declare-datatypes ((B!1288 0))(
  ( (B!1289 (val!8950 Int)) )
))
(declare-datatypes ((tuple2!11920 0))(
  ( (tuple2!11921 (_1!5970 (_ BitVec 64)) (_2!5970 B!1288)) )
))
(declare-datatypes ((List!17750 0))(
  ( (Nil!17747) (Cons!17746 (h!18877 tuple2!11920) (t!25035 List!17750)) )
))
(declare-fun l!906 () List!17750)

(declare-fun isStrictlySorted!480 (List!17750) Bool)

(assert (=> start!75202 (= res!601520 (isStrictlySorted!480 l!906))))

(assert (=> start!75202 e!492995))

(declare-fun e!492994 () Bool)

(assert (=> start!75202 e!492994))

(assert (=> start!75202 true))

(declare-fun b!885698 () Bool)

(declare-fun res!601519 () Bool)

(assert (=> b!885698 (=> (not res!601519) (not e!492995))))

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!885698 (= res!601519 (and ((_ is Cons!17746) l!906) (bvslt (_1!5970 (h!18877 l!906)) key1!49)))))

(declare-fun b!885699 () Bool)

(assert (=> b!885699 (= e!492995 (not (isStrictlySorted!480 (t!25035 l!906))))))

(declare-fun b!885700 () Bool)

(declare-fun tp_is_empty!17799 () Bool)

(declare-fun tp!54333 () Bool)

(assert (=> b!885700 (= e!492994 (and tp_is_empty!17799 tp!54333))))

(assert (= (and start!75202 res!601520) b!885698))

(assert (= (and b!885698 res!601519) b!885699))

(assert (= (and start!75202 ((_ is Cons!17746) l!906)) b!885700))

(declare-fun m!825825 () Bool)

(assert (=> start!75202 m!825825))

(declare-fun m!825827 () Bool)

(assert (=> b!885699 m!825827))

(check-sat (not b!885699) (not start!75202) (not b!885700) tp_is_empty!17799)
(check-sat)
(get-model)

(declare-fun d!109379 () Bool)

(declare-fun res!601531 () Bool)

(declare-fun e!493006 () Bool)

(assert (=> d!109379 (=> res!601531 e!493006)))

(assert (=> d!109379 (= res!601531 (or ((_ is Nil!17747) (t!25035 l!906)) ((_ is Nil!17747) (t!25035 (t!25035 l!906)))))))

(assert (=> d!109379 (= (isStrictlySorted!480 (t!25035 l!906)) e!493006)))

(declare-fun b!885714 () Bool)

(declare-fun e!493007 () Bool)

(assert (=> b!885714 (= e!493006 e!493007)))

(declare-fun res!601532 () Bool)

(assert (=> b!885714 (=> (not res!601532) (not e!493007))))

(assert (=> b!885714 (= res!601532 (bvslt (_1!5970 (h!18877 (t!25035 l!906))) (_1!5970 (h!18877 (t!25035 (t!25035 l!906))))))))

(declare-fun b!885715 () Bool)

(assert (=> b!885715 (= e!493007 (isStrictlySorted!480 (t!25035 (t!25035 l!906))))))

(assert (= (and d!109379 (not res!601531)) b!885714))

(assert (= (and b!885714 res!601532) b!885715))

(declare-fun m!825833 () Bool)

(assert (=> b!885715 m!825833))

(assert (=> b!885699 d!109379))

(declare-fun d!109383 () Bool)

(declare-fun res!601533 () Bool)

(declare-fun e!493008 () Bool)

(assert (=> d!109383 (=> res!601533 e!493008)))

(assert (=> d!109383 (= res!601533 (or ((_ is Nil!17747) l!906) ((_ is Nil!17747) (t!25035 l!906))))))

(assert (=> d!109383 (= (isStrictlySorted!480 l!906) e!493008)))

(declare-fun b!885716 () Bool)

(declare-fun e!493009 () Bool)

(assert (=> b!885716 (= e!493008 e!493009)))

(declare-fun res!601534 () Bool)

(assert (=> b!885716 (=> (not res!601534) (not e!493009))))

(assert (=> b!885716 (= res!601534 (bvslt (_1!5970 (h!18877 l!906)) (_1!5970 (h!18877 (t!25035 l!906)))))))

(declare-fun b!885717 () Bool)

(assert (=> b!885717 (= e!493009 (isStrictlySorted!480 (t!25035 l!906)))))

(assert (= (and d!109383 (not res!601533)) b!885716))

(assert (= (and b!885716 res!601534) b!885717))

(assert (=> b!885717 m!825827))

(assert (=> start!75202 d!109383))

(declare-fun b!885726 () Bool)

(declare-fun e!493016 () Bool)

(declare-fun tp!54339 () Bool)

(assert (=> b!885726 (= e!493016 (and tp_is_empty!17799 tp!54339))))

(assert (=> b!885700 (= tp!54333 e!493016)))

(assert (= (and b!885700 ((_ is Cons!17746) (t!25035 l!906))) b!885726))

(check-sat (not b!885717) (not b!885715) (not b!885726) tp_is_empty!17799)
(check-sat)
