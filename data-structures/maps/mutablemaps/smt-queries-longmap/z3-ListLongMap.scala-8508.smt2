; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103748 () Bool)

(assert start!103748)

(declare-fun res!828326 () Bool)

(declare-fun e!703904 () Bool)

(assert (=> start!103748 (=> (not res!828326) (not e!703904))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103748 (= res!828326 (not (= key1!25 key2!15)))))

(assert (=> start!103748 e!703904))

(assert (=> start!103748 true))

(declare-fun e!703903 () Bool)

(assert (=> start!103748 e!703903))

(declare-fun b!1241766 () Bool)

(declare-fun tp_is_empty!31275 () Bool)

(declare-fun tp!92712 () Bool)

(assert (=> b!1241766 (= e!703903 (and tp_is_empty!31275 tp!92712))))

(declare-fun b!1241764 () Bool)

(declare-fun res!828328 () Bool)

(assert (=> b!1241764 (=> (not res!828328) (not e!703904))))

(declare-datatypes ((B!1876 0))(
  ( (B!1877 (val!15700 Int)) )
))
(declare-datatypes ((tuple2!20428 0))(
  ( (tuple2!20429 (_1!10224 (_ BitVec 64)) (_2!10224 B!1876)) )
))
(declare-datatypes ((List!27529 0))(
  ( (Nil!27526) (Cons!27525 (h!28734 tuple2!20428) (t!40999 List!27529)) )
))
(declare-fun l!644 () List!27529)

(get-info :version)

(assert (=> b!1241764 (= res!828328 ((_ is Cons!27525) l!644))))

(declare-fun b!1241765 () Bool)

(declare-fun isStrictlySorted!754 (List!27529) Bool)

(assert (=> b!1241765 (= e!703904 (not (isStrictlySorted!754 (t!40999 l!644))))))

(declare-fun b!1241763 () Bool)

(declare-fun res!828327 () Bool)

(assert (=> b!1241763 (=> (not res!828327) (not e!703904))))

(assert (=> b!1241763 (= res!828327 (isStrictlySorted!754 l!644))))

(assert (= (and start!103748 res!828326) b!1241763))

(assert (= (and b!1241763 res!828327) b!1241764))

(assert (= (and b!1241764 res!828328) b!1241765))

(assert (= (and start!103748 ((_ is Cons!27525) l!644)) b!1241766))

(declare-fun m!1144629 () Bool)

(assert (=> b!1241765 m!1144629))

(declare-fun m!1144631 () Bool)

(assert (=> b!1241763 m!1144631))

(check-sat (not b!1241765) (not b!1241763) (not b!1241766) tp_is_empty!31275)
(check-sat)
(get-model)

(declare-fun d!136457 () Bool)

(declare-fun res!828346 () Bool)

(declare-fun e!703919 () Bool)

(assert (=> d!136457 (=> res!828346 e!703919)))

(assert (=> d!136457 (= res!828346 (or ((_ is Nil!27526) (t!40999 l!644)) ((_ is Nil!27526) (t!40999 (t!40999 l!644)))))))

(assert (=> d!136457 (= (isStrictlySorted!754 (t!40999 l!644)) e!703919)))

(declare-fun b!1241787 () Bool)

(declare-fun e!703920 () Bool)

(assert (=> b!1241787 (= e!703919 e!703920)))

(declare-fun res!828347 () Bool)

(assert (=> b!1241787 (=> (not res!828347) (not e!703920))))

(assert (=> b!1241787 (= res!828347 (bvslt (_1!10224 (h!28734 (t!40999 l!644))) (_1!10224 (h!28734 (t!40999 (t!40999 l!644))))))))

(declare-fun b!1241788 () Bool)

(assert (=> b!1241788 (= e!703920 (isStrictlySorted!754 (t!40999 (t!40999 l!644))))))

(assert (= (and d!136457 (not res!828346)) b!1241787))

(assert (= (and b!1241787 res!828347) b!1241788))

(declare-fun m!1144637 () Bool)

(assert (=> b!1241788 m!1144637))

(assert (=> b!1241765 d!136457))

(declare-fun d!136461 () Bool)

(declare-fun res!828350 () Bool)

(declare-fun e!703923 () Bool)

(assert (=> d!136461 (=> res!828350 e!703923)))

(assert (=> d!136461 (= res!828350 (or ((_ is Nil!27526) l!644) ((_ is Nil!27526) (t!40999 l!644))))))

(assert (=> d!136461 (= (isStrictlySorted!754 l!644) e!703923)))

(declare-fun b!1241791 () Bool)

(declare-fun e!703924 () Bool)

(assert (=> b!1241791 (= e!703923 e!703924)))

(declare-fun res!828351 () Bool)

(assert (=> b!1241791 (=> (not res!828351) (not e!703924))))

(assert (=> b!1241791 (= res!828351 (bvslt (_1!10224 (h!28734 l!644)) (_1!10224 (h!28734 (t!40999 l!644)))))))

(declare-fun b!1241792 () Bool)

(assert (=> b!1241792 (= e!703924 (isStrictlySorted!754 (t!40999 l!644)))))

(assert (= (and d!136461 (not res!828350)) b!1241791))

(assert (= (and b!1241791 res!828351) b!1241792))

(assert (=> b!1241792 m!1144629))

(assert (=> b!1241763 d!136461))

(declare-fun b!1241803 () Bool)

(declare-fun e!703931 () Bool)

(declare-fun tp!92720 () Bool)

(assert (=> b!1241803 (= e!703931 (and tp_is_empty!31275 tp!92720))))

(assert (=> b!1241766 (= tp!92712 e!703931)))

(assert (= (and b!1241766 ((_ is Cons!27525) (t!40999 l!644))) b!1241803))

(check-sat (not b!1241792) (not b!1241788) (not b!1241803) tp_is_empty!31275)
(check-sat)
