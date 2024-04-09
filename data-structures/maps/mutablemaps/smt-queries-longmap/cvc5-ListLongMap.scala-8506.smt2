; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103722 () Bool)

(assert start!103722)

(declare-fun res!828280 () Bool)

(declare-fun e!703834 () Bool)

(assert (=> start!103722 (=> (not res!828280) (not e!703834))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103722 (= res!828280 (not (= key1!25 key2!15)))))

(assert (=> start!103722 e!703834))

(assert (=> start!103722 true))

(declare-fun e!703835 () Bool)

(assert (=> start!103722 e!703835))

(declare-fun b!1241662 () Bool)

(declare-fun res!828279 () Bool)

(assert (=> b!1241662 (=> (not res!828279) (not e!703834))))

(declare-datatypes ((B!1862 0))(
  ( (B!1863 (val!15693 Int)) )
))
(declare-datatypes ((tuple2!20414 0))(
  ( (tuple2!20415 (_1!10217 (_ BitVec 64)) (_2!10217 B!1862)) )
))
(declare-datatypes ((List!27522 0))(
  ( (Nil!27519) (Cons!27518 (h!28727 tuple2!20414) (t!40992 List!27522)) )
))
(declare-fun l!644 () List!27522)

(declare-fun isStrictlySorted!750 (List!27522) Bool)

(assert (=> b!1241662 (= res!828279 (isStrictlySorted!750 l!644))))

(declare-fun b!1241663 () Bool)

(declare-fun ListPrimitiveSize!145 (List!27522) Int)

(assert (=> b!1241663 (= e!703834 (< (ListPrimitiveSize!145 l!644) 0))))

(declare-fun b!1241664 () Bool)

(declare-fun tp_is_empty!31261 () Bool)

(declare-fun tp!92682 () Bool)

(assert (=> b!1241664 (= e!703835 (and tp_is_empty!31261 tp!92682))))

(assert (= (and start!103722 res!828280) b!1241662))

(assert (= (and b!1241662 res!828279) b!1241663))

(assert (= (and start!103722 (is-Cons!27518 l!644)) b!1241664))

(declare-fun m!1144601 () Bool)

(assert (=> b!1241662 m!1144601))

(declare-fun m!1144603 () Bool)

(assert (=> b!1241663 m!1144603))

(push 1)

(assert (not b!1241662))

(assert (not b!1241663))

(assert (not b!1241664))

(assert tp_is_empty!31261)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136443 () Bool)

(declare-fun res!828301 () Bool)

(declare-fun e!703859 () Bool)

(assert (=> d!136443 (=> res!828301 e!703859)))

(assert (=> d!136443 (= res!828301 (or (is-Nil!27519 l!644) (is-Nil!27519 (t!40992 l!644))))))

(assert (=> d!136443 (= (isStrictlySorted!750 l!644) e!703859)))

(declare-fun b!1241697 () Bool)

(declare-fun e!703860 () Bool)

(assert (=> b!1241697 (= e!703859 e!703860)))

(declare-fun res!828302 () Bool)

(assert (=> b!1241697 (=> (not res!828302) (not e!703860))))

(assert (=> b!1241697 (= res!828302 (bvslt (_1!10217 (h!28727 l!644)) (_1!10217 (h!28727 (t!40992 l!644)))))))

(declare-fun b!1241698 () Bool)

(assert (=> b!1241698 (= e!703860 (isStrictlySorted!750 (t!40992 l!644)))))

(assert (= (and d!136443 (not res!828301)) b!1241697))

(assert (= (and b!1241697 res!828302) b!1241698))

(declare-fun m!1144615 () Bool)

(assert (=> b!1241698 m!1144615))

(assert (=> b!1241662 d!136443))

(declare-fun d!136447 () Bool)

(declare-fun lt!562104 () Int)

(assert (=> d!136447 (>= lt!562104 0)))

(declare-fun e!703871 () Int)

(assert (=> d!136447 (= lt!562104 e!703871)))

(declare-fun c!121452 () Bool)

(assert (=> d!136447 (= c!121452 (is-Nil!27519 l!644))))

(assert (=> d!136447 (= (ListPrimitiveSize!145 l!644) lt!562104)))

(declare-fun b!1241713 () Bool)

(assert (=> b!1241713 (= e!703871 0)))

(declare-fun b!1241714 () Bool)

(assert (=> b!1241714 (= e!703871 (+ 1 (ListPrimitiveSize!145 (t!40992 l!644))))))

(assert (= (and d!136447 c!121452) b!1241713))

(assert (= (and d!136447 (not c!121452)) b!1241714))

(declare-fun m!1144619 () Bool)

(assert (=> b!1241714 m!1144619))

(assert (=> b!1241663 d!136447))

(declare-fun b!1241719 () Bool)

(declare-fun e!703874 () Bool)

(declare-fun tp!92691 () Bool)

(assert (=> b!1241719 (= e!703874 (and tp_is_empty!31261 tp!92691))))

(assert (=> b!1241664 (= tp!92682 e!703874)))

(assert (= (and b!1241664 (is-Cons!27518 (t!40992 l!644))) b!1241719))

(push 1)

(assert (not b!1241698))

(assert (not b!1241714))

(assert (not b!1241719))

(assert tp_is_empty!31261)

(check-sat)

(pop 1)

(push 1)

(check-sat)

