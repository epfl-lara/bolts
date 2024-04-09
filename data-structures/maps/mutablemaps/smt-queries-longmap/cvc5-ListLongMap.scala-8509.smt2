; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103758 () Bool)

(assert start!103758)

(declare-fun b!1241828 () Bool)

(declare-fun res!828372 () Bool)

(declare-fun e!703949 () Bool)

(assert (=> b!1241828 (=> (not res!828372) (not e!703949))))

(declare-datatypes ((B!1880 0))(
  ( (B!1881 (val!15702 Int)) )
))
(declare-datatypes ((tuple2!20432 0))(
  ( (tuple2!20433 (_1!10226 (_ BitVec 64)) (_2!10226 B!1880)) )
))
(declare-datatypes ((List!27531 0))(
  ( (Nil!27528) (Cons!27527 (h!28736 tuple2!20432) (t!41001 List!27531)) )
))
(declare-fun l!644 () List!27531)

(declare-fun isStrictlySorted!756 (List!27531) Bool)

(assert (=> b!1241828 (= res!828372 (isStrictlySorted!756 (t!41001 l!644)))))

(declare-fun b!1241829 () Bool)

(declare-fun res!828373 () Bool)

(assert (=> b!1241829 (=> (not res!828373) (not e!703949))))

(assert (=> b!1241829 (= res!828373 (isStrictlySorted!756 l!644))))

(declare-fun b!1241830 () Bool)

(declare-fun res!828370 () Bool)

(assert (=> b!1241830 (=> (not res!828370) (not e!703949))))

(assert (=> b!1241830 (= res!828370 (is-Cons!27527 l!644))))

(declare-fun res!828371 () Bool)

(assert (=> start!103758 (=> (not res!828371) (not e!703949))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103758 (= res!828371 (not (= key1!25 key2!15)))))

(assert (=> start!103758 e!703949))

(assert (=> start!103758 true))

(declare-fun e!703948 () Bool)

(assert (=> start!103758 e!703948))

(declare-fun b!1241831 () Bool)

(declare-fun ListPrimitiveSize!148 (List!27531) Int)

(assert (=> b!1241831 (= e!703949 (>= (ListPrimitiveSize!148 (t!41001 l!644)) (ListPrimitiveSize!148 l!644)))))

(declare-fun b!1241832 () Bool)

(declare-fun tp_is_empty!31279 () Bool)

(declare-fun tp!92727 () Bool)

(assert (=> b!1241832 (= e!703948 (and tp_is_empty!31279 tp!92727))))

(assert (= (and start!103758 res!828371) b!1241829))

(assert (= (and b!1241829 res!828373) b!1241830))

(assert (= (and b!1241830 res!828370) b!1241828))

(assert (= (and b!1241828 res!828372) b!1241831))

(assert (= (and start!103758 (is-Cons!27527 l!644)) b!1241832))

(declare-fun m!1144643 () Bool)

(assert (=> b!1241828 m!1144643))

(declare-fun m!1144645 () Bool)

(assert (=> b!1241829 m!1144645))

(declare-fun m!1144647 () Bool)

(assert (=> b!1241831 m!1144647))

(declare-fun m!1144649 () Bool)

(assert (=> b!1241831 m!1144649))

(push 1)

(assert (not b!1241829))

(assert (not b!1241832))

(assert tp_is_empty!31279)

(assert (not b!1241831))

(assert (not b!1241828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136473 () Bool)

(declare-fun lt!562108 () Int)

(assert (=> d!136473 (>= lt!562108 0)))

(declare-fun e!703972 () Int)

(assert (=> d!136473 (= lt!562108 e!703972)))

(declare-fun c!121456 () Bool)

(assert (=> d!136473 (= c!121456 (is-Nil!27528 (t!41001 l!644)))))

(assert (=> d!136473 (= (ListPrimitiveSize!148 (t!41001 l!644)) lt!562108)))

(declare-fun b!1241875 () Bool)

(assert (=> b!1241875 (= e!703972 0)))

(declare-fun b!1241876 () Bool)

(assert (=> b!1241876 (= e!703972 (+ 1 (ListPrimitiveSize!148 (t!41001 (t!41001 l!644)))))))

(assert (= (and d!136473 c!121456) b!1241875))

(assert (= (and d!136473 (not c!121456)) b!1241876))

(declare-fun m!1144667 () Bool)

(assert (=> b!1241876 m!1144667))

(assert (=> b!1241831 d!136473))

(declare-fun d!136475 () Bool)

(declare-fun lt!562109 () Int)

(assert (=> d!136475 (>= lt!562109 0)))

(declare-fun e!703973 () Int)

(assert (=> d!136475 (= lt!562109 e!703973)))

(declare-fun c!121457 () Bool)

(assert (=> d!136475 (= c!121457 (is-Nil!27528 l!644))))

(assert (=> d!136475 (= (ListPrimitiveSize!148 l!644) lt!562109)))

(declare-fun b!1241877 () Bool)

(assert (=> b!1241877 (= e!703973 0)))

(declare-fun b!1241878 () Bool)

(assert (=> b!1241878 (= e!703973 (+ 1 (ListPrimitiveSize!148 (t!41001 l!644))))))

(assert (= (and d!136475 c!121457) b!1241877))

(assert (= (and d!136475 (not c!121457)) b!1241878))

(assert (=> b!1241878 m!1144647))

(assert (=> b!1241831 d!136475))

(declare-fun d!136477 () Bool)

(declare-fun res!828418 () Bool)

(declare-fun e!703986 () Bool)

(assert (=> d!136477 (=> res!828418 e!703986)))

(assert (=> d!136477 (= res!828418 (or (is-Nil!27528 (t!41001 l!644)) (is-Nil!27528 (t!41001 (t!41001 l!644)))))))

(assert (=> d!136477 (= (isStrictlySorted!756 (t!41001 l!644)) e!703986)))

(declare-fun b!1241891 () Bool)

(declare-fun e!703987 () Bool)

(assert (=> b!1241891 (= e!703986 e!703987)))

(declare-fun res!828419 () Bool)

(assert (=> b!1241891 (=> (not res!828419) (not e!703987))))

(assert (=> b!1241891 (= res!828419 (bvslt (_1!10226 (h!28736 (t!41001 l!644))) (_1!10226 (h!28736 (t!41001 (t!41001 l!644))))))))

(declare-fun b!1241892 () Bool)

(assert (=> b!1241892 (= e!703987 (isStrictlySorted!756 (t!41001 (t!41001 l!644))))))

(assert (= (and d!136477 (not res!828418)) b!1241891))

(assert (= (and b!1241891 res!828419) b!1241892))

(declare-fun m!1144673 () Bool)

(assert (=> b!1241892 m!1144673))

(assert (=> b!1241828 d!136477))

(declare-fun d!136487 () Bool)

(declare-fun res!828420 () Bool)

(declare-fun e!703988 () Bool)

(assert (=> d!136487 (=> res!828420 e!703988)))

(assert (=> d!136487 (= res!828420 (or (is-Nil!27528 l!644) (is-Nil!27528 (t!41001 l!644))))))

(assert (=> d!136487 (= (isStrictlySorted!756 l!644) e!703988)))

(declare-fun b!1241895 () Bool)

(declare-fun e!703989 () Bool)

(assert (=> b!1241895 (= e!703988 e!703989)))

(declare-fun res!828421 () Bool)

(assert (=> b!1241895 (=> (not res!828421) (not e!703989))))

(assert (=> b!1241895 (= res!828421 (bvslt (_1!10226 (h!28736 l!644)) (_1!10226 (h!28736 (t!41001 l!644)))))))

(declare-fun b!1241896 () Bool)

(assert (=> b!1241896 (= e!703989 (isStrictlySorted!756 (t!41001 l!644)))))

(assert (= (and d!136487 (not res!828420)) b!1241895))

(assert (= (and b!1241895 res!828421) b!1241896))

(assert (=> b!1241896 m!1144643))

(assert (=> b!1241829 d!136487))

(declare-fun b!1241907 () Bool)

(declare-fun e!703996 () Bool)

(declare-fun tp!92736 () Bool)

(assert (=> b!1241907 (= e!703996 (and tp_is_empty!31279 tp!92736))))

(assert (=> b!1241832 (= tp!92727 e!703996)))

(assert (= (and b!1241832 (is-Cons!27527 (t!41001 l!644))) b!1241907))

(push 1)

(assert (not b!1241878))

(assert (not b!1241892))

