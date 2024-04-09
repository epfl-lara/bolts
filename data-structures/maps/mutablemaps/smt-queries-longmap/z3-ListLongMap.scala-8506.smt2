; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103724 () Bool)

(assert start!103724)

(declare-fun res!828285 () Bool)

(declare-fun e!703840 () Bool)

(assert (=> start!103724 (=> (not res!828285) (not e!703840))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103724 (= res!828285 (not (= key1!25 key2!15)))))

(assert (=> start!103724 e!703840))

(assert (=> start!103724 true))

(declare-fun e!703841 () Bool)

(assert (=> start!103724 e!703841))

(declare-fun b!1241671 () Bool)

(declare-fun res!828286 () Bool)

(assert (=> b!1241671 (=> (not res!828286) (not e!703840))))

(declare-datatypes ((B!1864 0))(
  ( (B!1865 (val!15694 Int)) )
))
(declare-datatypes ((tuple2!20416 0))(
  ( (tuple2!20417 (_1!10218 (_ BitVec 64)) (_2!10218 B!1864)) )
))
(declare-datatypes ((List!27523 0))(
  ( (Nil!27520) (Cons!27519 (h!28728 tuple2!20416) (t!40993 List!27523)) )
))
(declare-fun l!644 () List!27523)

(declare-fun isStrictlySorted!751 (List!27523) Bool)

(assert (=> b!1241671 (= res!828286 (isStrictlySorted!751 l!644))))

(declare-fun b!1241672 () Bool)

(declare-fun ListPrimitiveSize!146 (List!27523) Int)

(assert (=> b!1241672 (= e!703840 (< (ListPrimitiveSize!146 l!644) 0))))

(declare-fun b!1241673 () Bool)

(declare-fun tp_is_empty!31263 () Bool)

(declare-fun tp!92685 () Bool)

(assert (=> b!1241673 (= e!703841 (and tp_is_empty!31263 tp!92685))))

(assert (= (and start!103724 res!828285) b!1241671))

(assert (= (and b!1241671 res!828286) b!1241672))

(get-info :version)

(assert (= (and start!103724 ((_ is Cons!27519) l!644)) b!1241673))

(declare-fun m!1144605 () Bool)

(assert (=> b!1241671 m!1144605))

(declare-fun m!1144607 () Bool)

(assert (=> b!1241672 m!1144607))

(check-sat (not b!1241671) (not b!1241672) (not b!1241673) tp_is_empty!31263)
(check-sat)
(get-model)

(declare-fun d!136441 () Bool)

(declare-fun res!828303 () Bool)

(declare-fun e!703861 () Bool)

(assert (=> d!136441 (=> res!828303 e!703861)))

(assert (=> d!136441 (= res!828303 (or ((_ is Nil!27520) l!644) ((_ is Nil!27520) (t!40993 l!644))))))

(assert (=> d!136441 (= (isStrictlySorted!751 l!644) e!703861)))

(declare-fun b!1241699 () Bool)

(declare-fun e!703862 () Bool)

(assert (=> b!1241699 (= e!703861 e!703862)))

(declare-fun res!828304 () Bool)

(assert (=> b!1241699 (=> (not res!828304) (not e!703862))))

(assert (=> b!1241699 (= res!828304 (bvslt (_1!10218 (h!28728 l!644)) (_1!10218 (h!28728 (t!40993 l!644)))))))

(declare-fun b!1241700 () Bool)

(assert (=> b!1241700 (= e!703862 (isStrictlySorted!751 (t!40993 l!644)))))

(assert (= (and d!136441 (not res!828303)) b!1241699))

(assert (= (and b!1241699 res!828304) b!1241700))

(declare-fun m!1144617 () Bool)

(assert (=> b!1241700 m!1144617))

(assert (=> b!1241671 d!136441))

(declare-fun d!136449 () Bool)

(declare-fun lt!562105 () Int)

(assert (=> d!136449 (>= lt!562105 0)))

(declare-fun e!703875 () Int)

(assert (=> d!136449 (= lt!562105 e!703875)))

(declare-fun c!121453 () Bool)

(assert (=> d!136449 (= c!121453 ((_ is Nil!27520) l!644))))

(assert (=> d!136449 (= (ListPrimitiveSize!146 l!644) lt!562105)))

(declare-fun b!1241720 () Bool)

(assert (=> b!1241720 (= e!703875 0)))

(declare-fun b!1241721 () Bool)

(assert (=> b!1241721 (= e!703875 (+ 1 (ListPrimitiveSize!146 (t!40993 l!644))))))

(assert (= (and d!136449 c!121453) b!1241720))

(assert (= (and d!136449 (not c!121453)) b!1241721))

(declare-fun m!1144621 () Bool)

(assert (=> b!1241721 m!1144621))

(assert (=> b!1241672 d!136449))

(declare-fun b!1241732 () Bool)

(declare-fun e!703882 () Bool)

(declare-fun tp!92696 () Bool)

(assert (=> b!1241732 (= e!703882 (and tp_is_empty!31263 tp!92696))))

(assert (=> b!1241673 (= tp!92685 e!703882)))

(assert (= (and b!1241673 ((_ is Cons!27519) (t!40993 l!644))) b!1241732))

(check-sat (not b!1241700) (not b!1241721) (not b!1241732) tp_is_empty!31263)
(check-sat)
