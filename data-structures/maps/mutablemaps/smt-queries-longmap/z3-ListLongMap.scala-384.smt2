; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7254 () Bool)

(assert start!7254)

(declare-fun res!27103 () Bool)

(declare-fun e!29579 () Bool)

(assert (=> start!7254 (=> (not res!27103) (not e!29579))))

(declare-datatypes ((B!886 0))(
  ( (B!887 (val!1030 Int)) )
))
(declare-datatypes ((tuple2!1712 0))(
  ( (tuple2!1713 (_1!866 (_ BitVec 64)) (_2!866 B!886)) )
))
(declare-datatypes ((List!1264 0))(
  ( (Nil!1261) (Cons!1260 (h!1840 tuple2!1712) (t!4297 List!1264)) )
))
(declare-fun l!812 () List!1264)

(declare-fun isStrictlySorted!235 (List!1264) Bool)

(assert (=> start!7254 (= res!27103 (isStrictlySorted!235 l!812))))

(assert (=> start!7254 e!29579))

(declare-fun e!29578 () Bool)

(assert (=> start!7254 e!29578))

(declare-fun b!46401 () Bool)

(declare-fun ListPrimitiveSize!47 (List!1264) Int)

(assert (=> b!46401 (= e!29579 (>= (ListPrimitiveSize!47 (t!4297 l!812)) (ListPrimitiveSize!47 l!812)))))

(declare-fun b!46400 () Bool)

(declare-fun res!27102 () Bool)

(assert (=> b!46400 (=> (not res!27102) (not e!29579))))

(assert (=> b!46400 (= res!27102 (isStrictlySorted!235 (t!4297 l!812)))))

(declare-fun b!46399 () Bool)

(declare-fun res!27101 () Bool)

(assert (=> b!46399 (=> (not res!27101) (not e!29579))))

(get-info :version)

(assert (=> b!46399 (= res!27101 ((_ is Cons!1260) l!812))))

(declare-fun b!46402 () Bool)

(declare-fun tp_is_empty!1983 () Bool)

(declare-fun tp!6122 () Bool)

(assert (=> b!46402 (= e!29578 (and tp_is_empty!1983 tp!6122))))

(assert (= (and start!7254 res!27103) b!46399))

(assert (= (and b!46399 res!27101) b!46400))

(assert (= (and b!46400 res!27102) b!46401))

(assert (= (and start!7254 ((_ is Cons!1260) l!812)) b!46402))

(declare-fun m!40751 () Bool)

(assert (=> start!7254 m!40751))

(declare-fun m!40753 () Bool)

(assert (=> b!46401 m!40753))

(declare-fun m!40755 () Bool)

(assert (=> b!46401 m!40755))

(declare-fun m!40757 () Bool)

(assert (=> b!46400 m!40757))

(check-sat tp_is_empty!1983 (not b!46400) (not b!46402) (not b!46401) (not start!7254))
(check-sat)
(get-model)

(declare-fun d!9105 () Bool)

(declare-fun lt!20306 () Int)

(assert (=> d!9105 (>= lt!20306 0)))

(declare-fun e!29594 () Int)

(assert (=> d!9105 (= lt!20306 e!29594)))

(declare-fun c!6279 () Bool)

(assert (=> d!9105 (= c!6279 ((_ is Nil!1261) (t!4297 l!812)))))

(assert (=> d!9105 (= (ListPrimitiveSize!47 (t!4297 l!812)) lt!20306)))

(declare-fun b!46429 () Bool)

(assert (=> b!46429 (= e!29594 0)))

(declare-fun b!46430 () Bool)

(assert (=> b!46430 (= e!29594 (+ 1 (ListPrimitiveSize!47 (t!4297 (t!4297 l!812)))))))

(assert (= (and d!9105 c!6279) b!46429))

(assert (= (and d!9105 (not c!6279)) b!46430))

(declare-fun m!40770 () Bool)

(assert (=> b!46430 m!40770))

(assert (=> b!46401 d!9105))

(declare-fun d!9110 () Bool)

(declare-fun lt!20308 () Int)

(assert (=> d!9110 (>= lt!20308 0)))

(declare-fun e!29596 () Int)

(assert (=> d!9110 (= lt!20308 e!29596)))

(declare-fun c!6281 () Bool)

(assert (=> d!9110 (= c!6281 ((_ is Nil!1261) l!812))))

(assert (=> d!9110 (= (ListPrimitiveSize!47 l!812) lt!20308)))

(declare-fun b!46435 () Bool)

(assert (=> b!46435 (= e!29596 0)))

(declare-fun b!46436 () Bool)

(assert (=> b!46436 (= e!29596 (+ 1 (ListPrimitiveSize!47 (t!4297 l!812))))))

(assert (= (and d!9110 c!6281) b!46435))

(assert (= (and d!9110 (not c!6281)) b!46436))

(assert (=> b!46436 m!40753))

(assert (=> b!46401 d!9110))

(declare-fun d!9117 () Bool)

(declare-fun res!27127 () Bool)

(declare-fun e!29612 () Bool)

(assert (=> d!9117 (=> res!27127 e!29612)))

(assert (=> d!9117 (= res!27127 (or ((_ is Nil!1261) (t!4297 l!812)) ((_ is Nil!1261) (t!4297 (t!4297 l!812)))))))

(assert (=> d!9117 (= (isStrictlySorted!235 (t!4297 l!812)) e!29612)))

(declare-fun b!46453 () Bool)

(declare-fun e!29614 () Bool)

(assert (=> b!46453 (= e!29612 e!29614)))

(declare-fun res!27129 () Bool)

(assert (=> b!46453 (=> (not res!27129) (not e!29614))))

(assert (=> b!46453 (= res!27129 (bvslt (_1!866 (h!1840 (t!4297 l!812))) (_1!866 (h!1840 (t!4297 (t!4297 l!812))))))))

(declare-fun b!46454 () Bool)

(assert (=> b!46454 (= e!29614 (isStrictlySorted!235 (t!4297 (t!4297 l!812))))))

(assert (= (and d!9117 (not res!27127)) b!46453))

(assert (= (and b!46453 res!27129) b!46454))

(declare-fun m!40776 () Bool)

(assert (=> b!46454 m!40776))

(assert (=> b!46400 d!9117))

(declare-fun d!9122 () Bool)

(declare-fun res!27135 () Bool)

(declare-fun e!29620 () Bool)

(assert (=> d!9122 (=> res!27135 e!29620)))

(assert (=> d!9122 (= res!27135 (or ((_ is Nil!1261) l!812) ((_ is Nil!1261) (t!4297 l!812))))))

(assert (=> d!9122 (= (isStrictlySorted!235 l!812) e!29620)))

(declare-fun b!46461 () Bool)

(declare-fun e!29621 () Bool)

(assert (=> b!46461 (= e!29620 e!29621)))

(declare-fun res!27136 () Bool)

(assert (=> b!46461 (=> (not res!27136) (not e!29621))))

(assert (=> b!46461 (= res!27136 (bvslt (_1!866 (h!1840 l!812)) (_1!866 (h!1840 (t!4297 l!812)))))))

(declare-fun b!46462 () Bool)

(assert (=> b!46462 (= e!29621 (isStrictlySorted!235 (t!4297 l!812)))))

(assert (= (and d!9122 (not res!27135)) b!46461))

(assert (= (and b!46461 res!27136) b!46462))

(assert (=> b!46462 m!40757))

(assert (=> start!7254 d!9122))

(declare-fun b!46477 () Bool)

(declare-fun e!29630 () Bool)

(declare-fun tp!6134 () Bool)

(assert (=> b!46477 (= e!29630 (and tp_is_empty!1983 tp!6134))))

(assert (=> b!46402 (= tp!6122 e!29630)))

(assert (= (and b!46402 ((_ is Cons!1260) (t!4297 l!812))) b!46477))

(check-sat (not b!46436) (not b!46477) tp_is_empty!1983 (not b!46454) (not b!46462) (not b!46430))
(check-sat)
