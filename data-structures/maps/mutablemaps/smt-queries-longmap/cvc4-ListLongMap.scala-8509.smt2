; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103762 () Bool)

(assert start!103762)

(declare-fun b!1241858 () Bool)

(declare-fun res!828396 () Bool)

(declare-fun e!703961 () Bool)

(assert (=> b!1241858 (=> (not res!828396) (not e!703961))))

(declare-datatypes ((B!1884 0))(
  ( (B!1885 (val!15704 Int)) )
))
(declare-datatypes ((tuple2!20436 0))(
  ( (tuple2!20437 (_1!10228 (_ BitVec 64)) (_2!10228 B!1884)) )
))
(declare-datatypes ((List!27533 0))(
  ( (Nil!27530) (Cons!27529 (h!28738 tuple2!20436) (t!41003 List!27533)) )
))
(declare-fun l!644 () List!27533)

(declare-fun isStrictlySorted!758 (List!27533) Bool)

(assert (=> b!1241858 (= res!828396 (isStrictlySorted!758 l!644))))

(declare-fun res!828394 () Bool)

(assert (=> start!103762 (=> (not res!828394) (not e!703961))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103762 (= res!828394 (not (= key1!25 key2!15)))))

(assert (=> start!103762 e!703961))

(assert (=> start!103762 true))

(declare-fun e!703960 () Bool)

(assert (=> start!103762 e!703960))

(declare-fun b!1241859 () Bool)

(declare-fun res!828395 () Bool)

(assert (=> b!1241859 (=> (not res!828395) (not e!703961))))

(assert (=> b!1241859 (= res!828395 (is-Cons!27529 l!644))))

(declare-fun b!1241860 () Bool)

(declare-fun tp_is_empty!31283 () Bool)

(declare-fun tp!92733 () Bool)

(assert (=> b!1241860 (= e!703960 (and tp_is_empty!31283 tp!92733))))

(declare-fun b!1241861 () Bool)

(declare-fun res!828397 () Bool)

(assert (=> b!1241861 (=> (not res!828397) (not e!703961))))

(assert (=> b!1241861 (= res!828397 (isStrictlySorted!758 (t!41003 l!644)))))

(declare-fun b!1241862 () Bool)

(declare-fun ListPrimitiveSize!150 (List!27533) Int)

(assert (=> b!1241862 (= e!703961 (>= (ListPrimitiveSize!150 (t!41003 l!644)) (ListPrimitiveSize!150 l!644)))))

(assert (= (and start!103762 res!828394) b!1241858))

(assert (= (and b!1241858 res!828396) b!1241859))

(assert (= (and b!1241859 res!828395) b!1241861))

(assert (= (and b!1241861 res!828397) b!1241862))

(assert (= (and start!103762 (is-Cons!27529 l!644)) b!1241860))

(declare-fun m!1144659 () Bool)

(assert (=> b!1241858 m!1144659))

(declare-fun m!1144661 () Bool)

(assert (=> b!1241861 m!1144661))

(declare-fun m!1144663 () Bool)

(assert (=> b!1241862 m!1144663))

(declare-fun m!1144665 () Bool)

(assert (=> b!1241862 m!1144665))

(push 1)

(assert (not b!1241862))

(assert (not b!1241858))

(assert (not b!1241861))

(assert tp_is_empty!31283)

(assert (not b!1241860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136471 () Bool)

(declare-fun res!828408 () Bool)

(declare-fun e!703976 () Bool)

(assert (=> d!136471 (=> res!828408 e!703976)))

(assert (=> d!136471 (= res!828408 (or (is-Nil!27530 l!644) (is-Nil!27530 (t!41003 l!644))))))

(assert (=> d!136471 (= (isStrictlySorted!758 l!644) e!703976)))

(declare-fun b!1241881 () Bool)

(declare-fun e!703977 () Bool)

(assert (=> b!1241881 (= e!703976 e!703977)))

(declare-fun res!828409 () Bool)

(assert (=> b!1241881 (=> (not res!828409) (not e!703977))))

(assert (=> b!1241881 (= res!828409 (bvslt (_1!10228 (h!28738 l!644)) (_1!10228 (h!28738 (t!41003 l!644)))))))

(declare-fun b!1241882 () Bool)

(assert (=> b!1241882 (= e!703977 (isStrictlySorted!758 (t!41003 l!644)))))

(assert (= (and d!136471 (not res!828408)) b!1241881))

(assert (= (and b!1241881 res!828409) b!1241882))

(assert (=> b!1241882 m!1144661))

(assert (=> b!1241858 d!136471))

(declare-fun d!136481 () Bool)

(declare-fun res!828412 () Bool)

(declare-fun e!703980 () Bool)

(assert (=> d!136481 (=> res!828412 e!703980)))

(assert (=> d!136481 (= res!828412 (or (is-Nil!27530 (t!41003 l!644)) (is-Nil!27530 (t!41003 (t!41003 l!644)))))))

(assert (=> d!136481 (= (isStrictlySorted!758 (t!41003 l!644)) e!703980)))

(declare-fun b!1241885 () Bool)

(declare-fun e!703981 () Bool)

(assert (=> b!1241885 (= e!703980 e!703981)))

(declare-fun res!828413 () Bool)

(assert (=> b!1241885 (=> (not res!828413) (not e!703981))))

(assert (=> b!1241885 (= res!828413 (bvslt (_1!10228 (h!28738 (t!41003 l!644))) (_1!10228 (h!28738 (t!41003 (t!41003 l!644))))))))

(declare-fun b!1241886 () Bool)

(assert (=> b!1241886 (= e!703981 (isStrictlySorted!758 (t!41003 (t!41003 l!644))))))

(assert (= (and d!136481 (not res!828412)) b!1241885))

(assert (= (and b!1241885 res!828413) b!1241886))

(declare-fun m!1144671 () Bool)

(assert (=> b!1241886 m!1144671))

(assert (=> b!1241861 d!136481))

(declare-fun d!136485 () Bool)

(declare-fun lt!562115 () Int)

(assert (=> d!136485 (>= lt!562115 0)))

(declare-fun e!703998 () Int)

(assert (=> d!136485 (= lt!562115 e!703998)))

(declare-fun c!121463 () Bool)

(assert (=> d!136485 (= c!121463 (is-Nil!27530 (t!41003 l!644)))))

(assert (=> d!136485 (= (ListPrimitiveSize!150 (t!41003 l!644)) lt!562115)))

(declare-fun b!1241910 () Bool)

(assert (=> b!1241910 (= e!703998 0)))

(declare-fun b!1241911 () Bool)

(assert (=> b!1241911 (= e!703998 (+ 1 (ListPrimitiveSize!150 (t!41003 (t!41003 l!644)))))))

(assert (= (and d!136485 c!121463) b!1241910))

(assert (= (and d!136485 (not c!121463)) b!1241911))

(declare-fun m!1144677 () Bool)

(assert (=> b!1241911 m!1144677))

(assert (=> b!1241862 d!136485))

(declare-fun d!136491 () Bool)

(declare-fun lt!562117 () Int)

(assert (=> d!136491 (>= lt!562117 0)))

(declare-fun e!704000 () Int)

(assert (=> d!136491 (= lt!562117 e!704000)))

(declare-fun c!121465 () Bool)

(assert (=> d!136491 (= c!121465 (is-Nil!27530 l!644))))

(assert (=> d!136491 (= (ListPrimitiveSize!150 l!644) lt!562117)))

(declare-fun b!1241914 () Bool)

(assert (=> b!1241914 (= e!704000 0)))

(declare-fun b!1241915 () Bool)

(assert (=> b!1241915 (= e!704000 (+ 1 (ListPrimitiveSize!150 (t!41003 l!644))))))

(assert (= (and d!136491 c!121465) b!1241914))

(assert (= (and d!136491 (not c!121465)) b!1241915))

(assert (=> b!1241915 m!1144663))

(assert (=> b!1241862 d!136491))

(declare-fun b!1241925 () Bool)

(declare-fun e!704006 () Bool)

(declare-fun tp!92742 () Bool)

(assert (=> b!1241925 (= e!704006 (and tp_is_empty!31283 tp!92742))))

