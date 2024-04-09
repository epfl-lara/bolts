; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103726 () Bool)

(assert start!103726)

(declare-fun res!828292 () Bool)

(declare-fun e!703847 () Bool)

(assert (=> start!103726 (=> (not res!828292) (not e!703847))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103726 (= res!828292 (not (= key1!25 key2!15)))))

(assert (=> start!103726 e!703847))

(assert (=> start!103726 true))

(declare-fun e!703846 () Bool)

(assert (=> start!103726 e!703846))

(declare-fun b!1241680 () Bool)

(declare-fun res!828291 () Bool)

(assert (=> b!1241680 (=> (not res!828291) (not e!703847))))

(declare-datatypes ((B!1866 0))(
  ( (B!1867 (val!15695 Int)) )
))
(declare-datatypes ((tuple2!20418 0))(
  ( (tuple2!20419 (_1!10219 (_ BitVec 64)) (_2!10219 B!1866)) )
))
(declare-datatypes ((List!27524 0))(
  ( (Nil!27521) (Cons!27520 (h!28729 tuple2!20418) (t!40994 List!27524)) )
))
(declare-fun l!644 () List!27524)

(declare-fun isStrictlySorted!752 (List!27524) Bool)

(assert (=> b!1241680 (= res!828291 (isStrictlySorted!752 l!644))))

(declare-fun b!1241681 () Bool)

(declare-fun ListPrimitiveSize!147 (List!27524) Int)

(assert (=> b!1241681 (= e!703847 (< (ListPrimitiveSize!147 l!644) 0))))

(declare-fun b!1241682 () Bool)

(declare-fun tp_is_empty!31265 () Bool)

(declare-fun tp!92688 () Bool)

(assert (=> b!1241682 (= e!703846 (and tp_is_empty!31265 tp!92688))))

(assert (= (and start!103726 res!828292) b!1241680))

(assert (= (and b!1241680 res!828291) b!1241681))

(assert (= (and start!103726 (is-Cons!27520 l!644)) b!1241682))

(declare-fun m!1144609 () Bool)

(assert (=> b!1241680 m!1144609))

(declare-fun m!1144611 () Bool)

(assert (=> b!1241681 m!1144611))

(push 1)

(assert (not b!1241681))

(assert (not b!1241680))

(assert (not b!1241682))

(assert tp_is_empty!31265)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136440 () Bool)

(declare-fun lt!562099 () Int)

(assert (=> d!136440 (>= lt!562099 0)))

(declare-fun e!703858 () Int)

(assert (=> d!136440 (= lt!562099 e!703858)))

(declare-fun c!121447 () Bool)

(assert (=> d!136440 (= c!121447 (is-Nil!27521 l!644))))

(assert (=> d!136440 (= (ListPrimitiveSize!147 l!644) lt!562099)))

(declare-fun b!1241695 () Bool)

(assert (=> b!1241695 (= e!703858 0)))

(declare-fun b!1241696 () Bool)

(assert (=> b!1241696 (= e!703858 (+ 1 (ListPrimitiveSize!147 (t!40994 l!644))))))

(assert (= (and d!136440 c!121447) b!1241695))

(assert (= (and d!136440 (not c!121447)) b!1241696))

(declare-fun m!1144613 () Bool)

(assert (=> b!1241696 m!1144613))

(assert (=> b!1241681 d!136440))

(declare-fun d!136445 () Bool)

(declare-fun res!828309 () Bool)

(declare-fun e!703876 () Bool)

(assert (=> d!136445 (=> res!828309 e!703876)))

(assert (=> d!136445 (= res!828309 (or (is-Nil!27521 l!644) (is-Nil!27521 (t!40994 l!644))))))

(assert (=> d!136445 (= (isStrictlySorted!752 l!644) e!703876)))

(declare-fun b!1241722 () Bool)

(declare-fun e!703877 () Bool)

(assert (=> b!1241722 (= e!703876 e!703877)))

(declare-fun res!828310 () Bool)

(assert (=> b!1241722 (=> (not res!828310) (not e!703877))))

(assert (=> b!1241722 (= res!828310 (bvslt (_1!10219 (h!28729 l!644)) (_1!10219 (h!28729 (t!40994 l!644)))))))

(declare-fun b!1241723 () Bool)

(assert (=> b!1241723 (= e!703877 (isStrictlySorted!752 (t!40994 l!644)))))

(assert (= (and d!136445 (not res!828309)) b!1241722))

(assert (= (and b!1241722 res!828310) b!1241723))

(declare-fun m!1144623 () Bool)

(assert (=> b!1241723 m!1144623))

(assert (=> b!1241680 d!136445))

(declare-fun b!1241733 () Bool)

(declare-fun e!703883 () Bool)

(declare-fun tp!92697 () Bool)

(assert (=> b!1241733 (= e!703883 (and tp_is_empty!31265 tp!92697))))

(assert (=> b!1241682 (= tp!92688 e!703883)))

(assert (= (and b!1241682 (is-Cons!27520 (t!40994 l!644))) b!1241733))

(push 1)

