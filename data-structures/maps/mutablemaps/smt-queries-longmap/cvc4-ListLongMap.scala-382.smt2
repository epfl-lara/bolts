; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7226 () Bool)

(assert start!7226)

(declare-fun res!27025 () Bool)

(declare-fun e!29479 () Bool)

(assert (=> start!7226 (=> (not res!27025) (not e!29479))))

(declare-datatypes ((B!876 0))(
  ( (B!877 (val!1025 Int)) )
))
(declare-datatypes ((tuple2!1702 0))(
  ( (tuple2!1703 (_1!861 (_ BitVec 64)) (_2!861 B!876)) )
))
(declare-datatypes ((List!1259 0))(
  ( (Nil!1256) (Cons!1255 (h!1835 tuple2!1702) (t!4292 List!1259)) )
))
(declare-fun l!812 () List!1259)

(declare-fun isStrictlySorted!230 (List!1259) Bool)

(assert (=> start!7226 (= res!27025 (isStrictlySorted!230 l!812))))

(assert (=> start!7226 e!29479))

(declare-fun e!29480 () Bool)

(assert (=> start!7226 e!29480))

(declare-fun b!46260 () Bool)

(declare-fun ListPrimitiveSize!45 (List!1259) Int)

(assert (=> b!46260 (= e!29479 (< (ListPrimitiveSize!45 l!812) 0))))

(declare-fun b!46261 () Bool)

(declare-fun tp_is_empty!1973 () Bool)

(declare-fun tp!6089 () Bool)

(assert (=> b!46261 (= e!29480 (and tp_is_empty!1973 tp!6089))))

(assert (= (and start!7226 res!27025) b!46260))

(assert (= (and start!7226 (is-Cons!1255 l!812)) b!46261))

(declare-fun m!40709 () Bool)

(assert (=> start!7226 m!40709))

(declare-fun m!40711 () Bool)

(assert (=> b!46260 m!40711))

(push 1)

(assert (not b!46260))

(assert (not start!7226))

(assert (not b!46261))

(assert tp_is_empty!1973)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9075 () Bool)

(declare-fun lt!20296 () Int)

(assert (=> d!9075 (>= lt!20296 0)))

(declare-fun e!29488 () Int)

(assert (=> d!9075 (= lt!20296 e!29488)))

(declare-fun c!6269 () Bool)

(assert (=> d!9075 (= c!6269 (is-Nil!1256 l!812))))

(assert (=> d!9075 (= (ListPrimitiveSize!45 l!812) lt!20296)))

(declare-fun b!46276 () Bool)

(assert (=> b!46276 (= e!29488 0)))

(declare-fun b!46277 () Bool)

(assert (=> b!46277 (= e!29488 (+ 1 (ListPrimitiveSize!45 (t!4292 l!812))))))

(assert (= (and d!9075 c!6269) b!46276))

(assert (= (and d!9075 (not c!6269)) b!46277))

(declare-fun m!40715 () Bool)

(assert (=> b!46277 m!40715))

(assert (=> b!46260 d!9075))

(declare-fun d!9081 () Bool)

(declare-fun res!27040 () Bool)

(declare-fun e!29506 () Bool)

(assert (=> d!9081 (=> res!27040 e!29506)))

(assert (=> d!9081 (= res!27040 (or (is-Nil!1256 l!812) (is-Nil!1256 (t!4292 l!812))))))

(assert (=> d!9081 (= (isStrictlySorted!230 l!812) e!29506)))

(declare-fun b!46298 () Bool)

(declare-fun e!29507 () Bool)

(assert (=> b!46298 (= e!29506 e!29507)))

(declare-fun res!27041 () Bool)

(assert (=> b!46298 (=> (not res!27041) (not e!29507))))

(assert (=> b!46298 (= res!27041 (bvslt (_1!861 (h!1835 l!812)) (_1!861 (h!1835 (t!4292 l!812)))))))

(declare-fun b!46299 () Bool)

(assert (=> b!46299 (= e!29507 (isStrictlySorted!230 (t!4292 l!812)))))

(assert (= (and d!9081 (not res!27040)) b!46298))

(assert (= (and b!46298 res!27041) b!46299))

(declare-fun m!40721 () Bool)

(assert (=> b!46299 m!40721))

(assert (=> start!7226 d!9081))

(declare-fun b!46311 () Bool)

(declare-fun e!29515 () Bool)

(declare-fun tp!6097 () Bool)

(assert (=> b!46311 (= e!29515 (and tp_is_empty!1973 tp!6097))))

(assert (=> b!46261 (= tp!6089 e!29515)))

(assert (= (and b!46261 (is-Cons!1255 (t!4292 l!812))) b!46311))

(push 1)

