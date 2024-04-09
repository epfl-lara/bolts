; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75184 () Bool)

(assert start!75184)

(declare-fun res!601487 () Bool)

(declare-fun e!492940 () Bool)

(assert (=> start!75184 (=> (not res!601487) (not e!492940))))

(declare-datatypes ((B!1282 0))(
  ( (B!1283 (val!8947 Int)) )
))
(declare-datatypes ((tuple2!11914 0))(
  ( (tuple2!11915 (_1!5967 (_ BitVec 64)) (_2!5967 B!1282)) )
))
(declare-datatypes ((List!17747 0))(
  ( (Nil!17744) (Cons!17743 (h!18874 tuple2!11914) (t!25032 List!17747)) )
))
(declare-fun l!906 () List!17747)

(declare-fun isStrictlySorted!477 (List!17747) Bool)

(assert (=> start!75184 (= res!601487 (isStrictlySorted!477 l!906))))

(assert (=> start!75184 e!492940))

(declare-fun e!492941 () Bool)

(assert (=> start!75184 e!492941))

(declare-fun b!885624 () Bool)

(declare-fun ListPrimitiveSize!86 (List!17747) Int)

(assert (=> b!885624 (= e!492940 (< (ListPrimitiveSize!86 l!906) 0))))

(declare-fun b!885625 () Bool)

(declare-fun tp_is_empty!17793 () Bool)

(declare-fun tp!54315 () Bool)

(assert (=> b!885625 (= e!492941 (and tp_is_empty!17793 tp!54315))))

(assert (= (and start!75184 res!601487) b!885624))

(get-info :version)

(assert (= (and start!75184 ((_ is Cons!17743) l!906)) b!885625))

(declare-fun m!825801 () Bool)

(assert (=> start!75184 m!825801))

(declare-fun m!825803 () Bool)

(assert (=> b!885624 m!825803))

(check-sat (not start!75184) (not b!885624) (not b!885625) tp_is_empty!17793)
(check-sat)
(get-model)

(declare-fun d!109365 () Bool)

(declare-fun res!601495 () Bool)

(declare-fun e!492956 () Bool)

(assert (=> d!109365 (=> res!601495 e!492956)))

(assert (=> d!109365 (= res!601495 (or ((_ is Nil!17744) l!906) ((_ is Nil!17744) (t!25032 l!906))))))

(assert (=> d!109365 (= (isStrictlySorted!477 l!906) e!492956)))

(declare-fun b!885644 () Bool)

(declare-fun e!492957 () Bool)

(assert (=> b!885644 (= e!492956 e!492957)))

(declare-fun res!601496 () Bool)

(assert (=> b!885644 (=> (not res!601496) (not e!492957))))

(assert (=> b!885644 (= res!601496 (bvslt (_1!5967 (h!18874 l!906)) (_1!5967 (h!18874 (t!25032 l!906)))))))

(declare-fun b!885645 () Bool)

(assert (=> b!885645 (= e!492957 (isStrictlySorted!477 (t!25032 l!906)))))

(assert (= (and d!109365 (not res!601495)) b!885644))

(assert (= (and b!885644 res!601496) b!885645))

(declare-fun m!825809 () Bool)

(assert (=> b!885645 m!825809))

(assert (=> start!75184 d!109365))

(declare-fun d!109371 () Bool)

(declare-fun lt!400998 () Int)

(assert (=> d!109371 (>= lt!400998 0)))

(declare-fun e!492970 () Int)

(assert (=> d!109371 (= lt!400998 e!492970)))

(declare-fun c!93280 () Bool)

(assert (=> d!109371 (= c!93280 ((_ is Nil!17744) l!906))))

(assert (=> d!109371 (= (ListPrimitiveSize!86 l!906) lt!400998)))

(declare-fun b!885662 () Bool)

(assert (=> b!885662 (= e!492970 0)))

(declare-fun b!885663 () Bool)

(assert (=> b!885663 (= e!492970 (+ 1 (ListPrimitiveSize!86 (t!25032 l!906))))))

(assert (= (and d!109371 c!93280) b!885662))

(assert (= (and d!109371 (not c!93280)) b!885663))

(declare-fun m!825815 () Bool)

(assert (=> b!885663 m!825815))

(assert (=> b!885624 d!109371))

(declare-fun b!885674 () Bool)

(declare-fun e!492977 () Bool)

(declare-fun tp!54321 () Bool)

(assert (=> b!885674 (= e!492977 (and tp_is_empty!17793 tp!54321))))

(assert (=> b!885625 (= tp!54315 e!492977)))

(assert (= (and b!885625 ((_ is Cons!17743) (t!25032 l!906))) b!885674))

(check-sat (not b!885645) (not b!885663) (not b!885674) tp_is_empty!17793)
(check-sat)
