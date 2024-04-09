; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103708 () Bool)

(assert start!103708)

(declare-fun res!828231 () Bool)

(declare-fun e!703750 () Bool)

(assert (=> start!103708 (=> (not res!828231) (not e!703750))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103708 (= res!828231 (not (= key1!25 key2!15)))))

(assert (=> start!103708 e!703750))

(assert (=> start!103708 true))

(declare-fun e!703751 () Bool)

(assert (=> start!103708 e!703751))

(declare-fun tp_is_empty!31259 () Bool)

(assert (=> start!103708 tp_is_empty!31259))

(declare-fun b!1241524 () Bool)

(declare-fun res!828230 () Bool)

(assert (=> b!1241524 (=> (not res!828230) (not e!703750))))

(declare-datatypes ((B!1860 0))(
  ( (B!1861 (val!15692 Int)) )
))
(declare-datatypes ((tuple2!20412 0))(
  ( (tuple2!20413 (_1!10216 (_ BitVec 64)) (_2!10216 B!1860)) )
))
(declare-datatypes ((List!27521 0))(
  ( (Nil!27518) (Cons!27517 (h!28726 tuple2!20412) (t!40991 List!27521)) )
))
(declare-fun l!644 () List!27521)

(assert (=> b!1241524 (= res!828230 (not (is-Cons!27517 l!644)))))

(declare-fun v1!20 () B!1860)

(declare-fun b!1241525 () Bool)

(declare-fun isStrictlySorted!749 (List!27521) Bool)

(declare-fun insertStrictlySorted!436 (List!27521 (_ BitVec 64) B!1860) List!27521)

(assert (=> b!1241525 (= e!703750 (not (isStrictlySorted!749 (insertStrictlySorted!436 l!644 key1!25 v1!20))))))

(declare-fun b!1241523 () Bool)

(declare-fun res!828232 () Bool)

(assert (=> b!1241523 (=> (not res!828232) (not e!703750))))

(assert (=> b!1241523 (= res!828232 (isStrictlySorted!749 l!644))))

(declare-fun b!1241526 () Bool)

(declare-fun tp!92670 () Bool)

(assert (=> b!1241526 (= e!703751 (and tp_is_empty!31259 tp!92670))))

(assert (= (and start!103708 res!828231) b!1241523))

(assert (= (and b!1241523 res!828232) b!1241524))

(assert (= (and b!1241524 res!828230) b!1241525))

(assert (= (and start!103708 (is-Cons!27517 l!644)) b!1241526))

(declare-fun m!1144553 () Bool)

(assert (=> b!1241525 m!1144553))

(assert (=> b!1241525 m!1144553))

(declare-fun m!1144555 () Bool)

(assert (=> b!1241525 m!1144555))

(declare-fun m!1144557 () Bool)

(assert (=> b!1241523 m!1144557))

(push 1)

(assert (not b!1241525))

(assert (not b!1241523))

(assert (not b!1241526))

(assert tp_is_empty!31259)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136419 () Bool)

(declare-fun res!828243 () Bool)

(declare-fun e!703762 () Bool)

(assert (=> d!136419 (=> res!828243 e!703762)))

(assert (=> d!136419 (= res!828243 (or (is-Nil!27518 (insertStrictlySorted!436 l!644 key1!25 v1!20)) (is-Nil!27518 (t!40991 (insertStrictlySorted!436 l!644 key1!25 v1!20)))))))

(assert (=> d!136419 (= (isStrictlySorted!749 (insertStrictlySorted!436 l!644 key1!25 v1!20)) e!703762)))

(declare-fun b!1241537 () Bool)

(declare-fun e!703763 () Bool)

(assert (=> b!1241537 (= e!703762 e!703763)))

(declare-fun res!828244 () Bool)

(assert (=> b!1241537 (=> (not res!828244) (not e!703763))))

(assert (=> b!1241537 (= res!828244 (bvslt (_1!10216 (h!28726 (insertStrictlySorted!436 l!644 key1!25 v1!20))) (_1!10216 (h!28726 (t!40991 (insertStrictlySorted!436 l!644 key1!25 v1!20))))))))

(declare-fun b!1241538 () Bool)

(assert (=> b!1241538 (= e!703763 (isStrictlySorted!749 (t!40991 (insertStrictlySorted!436 l!644 key1!25 v1!20))))))

(assert (= (and d!136419 (not res!828243)) b!1241537))

(assert (= (and b!1241537 res!828244) b!1241538))

(declare-fun m!1144561 () Bool)

(assert (=> b!1241538 m!1144561))

(assert (=> b!1241525 d!136419))

(declare-fun c!121438 () Bool)

(declare-fun e!703813 () List!27521)

(declare-fun b!1241624 () Bool)

(declare-fun c!121439 () Bool)

(assert (=> b!1241624 (= e!703813 (ite c!121439 (t!40991 l!644) (ite c!121438 (Cons!27517 (h!28726 l!644) (t!40991 l!644)) Nil!27518)))))

(declare-fun b!1241625 () Bool)

(declare-fun e!703815 () List!27521)

(declare-fun call!61264 () List!27521)

(assert (=> b!1241625 (= e!703815 call!61264)))

(declare-fun bm!61261 () Bool)

(declare-fun c!121437 () Bool)

(declare-fun call!61265 () List!27521)

(declare-fun $colon$colon!627 (List!27521 tuple2!20412) List!27521)

(assert (=> bm!61261 (= call!61265 ($colon$colon!627 e!703813 (ite c!121437 (h!28726 l!644) (tuple2!20413 key1!25 v1!20))))))

(declare-fun c!121440 () Bool)

(assert (=> bm!61261 (= c!121440 c!121437)))

(declare-fun b!1241627 () Bool)

(assert (=> b!1241627 (= e!703815 call!61264)))

(declare-fun bm!61262 () Bool)

(declare-fun call!61266 () List!27521)

(assert (=> bm!61262 (= call!61264 call!61266)))

(declare-fun b!1241628 () Bool)

(declare-fun e!703812 () List!27521)

(declare-fun e!703816 () List!27521)

(assert (=> b!1241628 (= e!703812 e!703816)))

(assert (=> b!1241628 (= c!121439 (and (is-Cons!27517 l!644) (= (_1!10216 (h!28726 l!644)) key1!25)))))

(declare-fun bm!61263 () Bool)

(assert (=> bm!61263 (= call!61266 call!61265)))

(declare-fun b!1241629 () Bool)

(assert (=> b!1241629 (= e!703816 call!61266)))

(declare-fun d!136427 () Bool)

(declare-fun e!703814 () Bool)

(assert (=> d!136427 e!703814))

(declare-fun res!828269 () Bool)

(assert (=> d!136427 (=> (not res!828269) (not e!703814))))

(declare-fun lt!562095 () List!27521)

(assert (=> d!136427 (= res!828269 (isStrictlySorted!749 lt!562095))))

(assert (=> d!136427 (= lt!562095 e!703812)))

(assert (=> d!136427 (= c!121437 (and (is-Cons!27517 l!644) (bvslt (_1!10216 (h!28726 l!644)) key1!25)))))

