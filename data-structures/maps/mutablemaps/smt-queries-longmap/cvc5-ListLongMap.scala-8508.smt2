; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103746 () Bool)

(assert start!103746)

(declare-fun b!1241754 () Bool)

(declare-fun e!703897 () Bool)

(declare-fun tp_is_empty!31273 () Bool)

(declare-fun tp!92709 () Bool)

(assert (=> b!1241754 (= e!703897 (and tp_is_empty!31273 tp!92709))))

(declare-fun b!1241752 () Bool)

(declare-fun res!828317 () Bool)

(declare-fun e!703898 () Bool)

(assert (=> b!1241752 (=> (not res!828317) (not e!703898))))

(declare-datatypes ((B!1874 0))(
  ( (B!1875 (val!15699 Int)) )
))
(declare-datatypes ((tuple2!20426 0))(
  ( (tuple2!20427 (_1!10223 (_ BitVec 64)) (_2!10223 B!1874)) )
))
(declare-datatypes ((List!27528 0))(
  ( (Nil!27525) (Cons!27524 (h!28733 tuple2!20426) (t!40998 List!27528)) )
))
(declare-fun l!644 () List!27528)

(assert (=> b!1241752 (= res!828317 (is-Cons!27524 l!644))))

(declare-fun b!1241751 () Bool)

(declare-fun res!828319 () Bool)

(assert (=> b!1241751 (=> (not res!828319) (not e!703898))))

(declare-fun isStrictlySorted!753 (List!27528) Bool)

(assert (=> b!1241751 (= res!828319 (isStrictlySorted!753 l!644))))

(declare-fun b!1241753 () Bool)

(assert (=> b!1241753 (= e!703898 (not (isStrictlySorted!753 (t!40998 l!644))))))

(declare-fun res!828318 () Bool)

(assert (=> start!103746 (=> (not res!828318) (not e!703898))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103746 (= res!828318 (not (= key1!25 key2!15)))))

(assert (=> start!103746 e!703898))

(assert (=> start!103746 true))

(assert (=> start!103746 e!703897))

(assert (= (and start!103746 res!828318) b!1241751))

(assert (= (and b!1241751 res!828319) b!1241752))

(assert (= (and b!1241752 res!828317) b!1241753))

(assert (= (and start!103746 (is-Cons!27524 l!644)) b!1241754))

(declare-fun m!1144625 () Bool)

(assert (=> b!1241751 m!1144625))

(declare-fun m!1144627 () Bool)

(assert (=> b!1241753 m!1144627))

(push 1)

(assert (not b!1241751))

(assert (not b!1241753))

(assert (not b!1241754))

(assert tp_is_empty!31273)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136459 () Bool)

(declare-fun res!828358 () Bool)

(declare-fun e!703937 () Bool)

(assert (=> d!136459 (=> res!828358 e!703937)))

(assert (=> d!136459 (= res!828358 (or (is-Nil!27525 l!644) (is-Nil!27525 (t!40998 l!644))))))

(assert (=> d!136459 (= (isStrictlySorted!753 l!644) e!703937)))

(declare-fun b!1241809 () Bool)

(declare-fun e!703938 () Bool)

(assert (=> b!1241809 (= e!703937 e!703938)))

(declare-fun res!828359 () Bool)

(assert (=> b!1241809 (=> (not res!828359) (not e!703938))))

(assert (=> b!1241809 (= res!828359 (bvslt (_1!10223 (h!28733 l!644)) (_1!10223 (h!28733 (t!40998 l!644)))))))

(declare-fun b!1241810 () Bool)

(assert (=> b!1241810 (= e!703938 (isStrictlySorted!753 (t!40998 l!644)))))

(assert (= (and d!136459 (not res!828358)) b!1241809))

(assert (= (and b!1241809 res!828359) b!1241810))

(assert (=> b!1241810 m!1144627))

(assert (=> b!1241751 d!136459))

(declare-fun d!136465 () Bool)

(declare-fun res!828360 () Bool)

(declare-fun e!703939 () Bool)

(assert (=> d!136465 (=> res!828360 e!703939)))

(assert (=> d!136465 (= res!828360 (or (is-Nil!27525 (t!40998 l!644)) (is-Nil!27525 (t!40998 (t!40998 l!644)))))))

(assert (=> d!136465 (= (isStrictlySorted!753 (t!40998 l!644)) e!703939)))

(declare-fun b!1241811 () Bool)

(declare-fun e!703940 () Bool)

(assert (=> b!1241811 (= e!703939 e!703940)))

(declare-fun res!828361 () Bool)

(assert (=> b!1241811 (=> (not res!828361) (not e!703940))))

(assert (=> b!1241811 (= res!828361 (bvslt (_1!10223 (h!28733 (t!40998 l!644))) (_1!10223 (h!28733 (t!40998 (t!40998 l!644))))))))

(declare-fun b!1241812 () Bool)

(assert (=> b!1241812 (= e!703940 (isStrictlySorted!753 (t!40998 (t!40998 l!644))))))

(assert (= (and d!136465 (not res!828360)) b!1241811))

(assert (= (and b!1241811 res!828361) b!1241812))

(declare-fun m!1144641 () Bool)

(assert (=> b!1241812 m!1144641))

(assert (=> b!1241753 d!136465))

(declare-fun b!1241817 () Bool)

(declare-fun e!703943 () Bool)

(declare-fun tp!92724 () Bool)

(assert (=> b!1241817 (= e!703943 (and tp_is_empty!31273 tp!92724))))

(assert (=> b!1241754 (= tp!92709 e!703943)))

(assert (= (and b!1241754 (is-Cons!27524 (t!40998 l!644))) b!1241817))

(push 1)

(assert (not b!1241810))

