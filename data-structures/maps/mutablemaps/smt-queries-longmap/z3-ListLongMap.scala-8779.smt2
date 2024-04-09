; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106782 () Bool)

(assert start!106782)

(declare-fun res!843562 () Bool)

(declare-fun e!721849 () Bool)

(assert (=> start!106782 (=> (not res!843562) (not e!721849))))

(declare-datatypes ((B!2068 0))(
  ( (B!2069 (val!16369 Int)) )
))
(declare-datatypes ((tuple2!21406 0))(
  ( (tuple2!21407 (_1!10713 (_ BitVec 64)) (_2!10713 B!2068)) )
))
(declare-datatypes ((List!28536 0))(
  ( (Nil!28533) (Cons!28532 (h!29741 tuple2!21406) (t!42070 List!28536)) )
))
(declare-fun l!874 () List!28536)

(declare-fun isStrictlySorted!814 (List!28536) Bool)

(assert (=> start!106782 (= res!843562 (isStrictlySorted!814 l!874))))

(assert (=> start!106782 e!721849))

(declare-fun e!721848 () Bool)

(assert (=> start!106782 e!721848))

(assert (=> start!106782 true))

(declare-fun b!1267119 () Bool)

(declare-fun res!843561 () Bool)

(assert (=> b!1267119 (=> (not res!843561) (not e!721849))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!675 (List!28536 (_ BitVec 64)) Bool)

(assert (=> b!1267119 (= res!843561 (not (containsKey!675 l!874 key!235)))))

(declare-fun b!1267120 () Bool)

(declare-fun ListPrimitiveSize!158 (List!28536) Int)

(assert (=> b!1267120 (= e!721849 (< (ListPrimitiveSize!158 l!874) 0))))

(declare-fun b!1267121 () Bool)

(declare-fun tp_is_empty!32589 () Bool)

(declare-fun tp!96573 () Bool)

(assert (=> b!1267121 (= e!721848 (and tp_is_empty!32589 tp!96573))))

(assert (= (and start!106782 res!843562) b!1267119))

(assert (= (and b!1267119 res!843561) b!1267120))

(get-info :version)

(assert (= (and start!106782 ((_ is Cons!28532) l!874)) b!1267121))

(declare-fun m!1166607 () Bool)

(assert (=> start!106782 m!1166607))

(declare-fun m!1166609 () Bool)

(assert (=> b!1267119 m!1166609))

(declare-fun m!1166611 () Bool)

(assert (=> b!1267120 m!1166611))

(check-sat (not start!106782) (not b!1267119) tp_is_empty!32589 (not b!1267120) (not b!1267121))
(check-sat)
(get-model)

(declare-fun d!139339 () Bool)

(declare-fun res!843583 () Bool)

(declare-fun e!721870 () Bool)

(assert (=> d!139339 (=> res!843583 e!721870)))

(assert (=> d!139339 (= res!843583 (and ((_ is Cons!28532) l!874) (= (_1!10713 (h!29741 l!874)) key!235)))))

(assert (=> d!139339 (= (containsKey!675 l!874 key!235) e!721870)))

(declare-fun b!1267145 () Bool)

(declare-fun e!721871 () Bool)

(assert (=> b!1267145 (= e!721870 e!721871)))

(declare-fun res!843584 () Bool)

(assert (=> b!1267145 (=> (not res!843584) (not e!721871))))

(assert (=> b!1267145 (= res!843584 (and (or (not ((_ is Cons!28532) l!874)) (bvsle (_1!10713 (h!29741 l!874)) key!235)) ((_ is Cons!28532) l!874) (bvslt (_1!10713 (h!29741 l!874)) key!235)))))

(declare-fun b!1267146 () Bool)

(assert (=> b!1267146 (= e!721871 (containsKey!675 (t!42070 l!874) key!235))))

(assert (= (and d!139339 (not res!843583)) b!1267145))

(assert (= (and b!1267145 res!843584) b!1267146))

(declare-fun m!1166621 () Bool)

(assert (=> b!1267146 m!1166621))

(assert (=> b!1267119 d!139339))

(declare-fun d!139347 () Bool)

(declare-fun lt!574261 () Int)

(assert (=> d!139347 (>= lt!574261 0)))

(declare-fun e!721882 () Int)

(assert (=> d!139347 (= lt!574261 e!721882)))

(declare-fun c!123501 () Bool)

(assert (=> d!139347 (= c!123501 ((_ is Nil!28533) l!874))))

(assert (=> d!139347 (= (ListPrimitiveSize!158 l!874) lt!574261)))

(declare-fun b!1267161 () Bool)

(assert (=> b!1267161 (= e!721882 0)))

(declare-fun b!1267162 () Bool)

(assert (=> b!1267162 (= e!721882 (+ 1 (ListPrimitiveSize!158 (t!42070 l!874))))))

(assert (= (and d!139347 c!123501) b!1267161))

(assert (= (and d!139347 (not c!123501)) b!1267162))

(declare-fun m!1166625 () Bool)

(assert (=> b!1267162 m!1166625))

(assert (=> b!1267120 d!139347))

(declare-fun d!139351 () Bool)

(declare-fun res!843601 () Bool)

(declare-fun e!721896 () Bool)

(assert (=> d!139351 (=> res!843601 e!721896)))

(assert (=> d!139351 (= res!843601 (or ((_ is Nil!28533) l!874) ((_ is Nil!28533) (t!42070 l!874))))))

(assert (=> d!139351 (= (isStrictlySorted!814 l!874) e!721896)))

(declare-fun b!1267179 () Bool)

(declare-fun e!721897 () Bool)

(assert (=> b!1267179 (= e!721896 e!721897)))

(declare-fun res!843602 () Bool)

(assert (=> b!1267179 (=> (not res!843602) (not e!721897))))

(assert (=> b!1267179 (= res!843602 (bvslt (_1!10713 (h!29741 l!874)) (_1!10713 (h!29741 (t!42070 l!874)))))))

(declare-fun b!1267180 () Bool)

(assert (=> b!1267180 (= e!721897 (isStrictlySorted!814 (t!42070 l!874)))))

(assert (= (and d!139351 (not res!843601)) b!1267179))

(assert (= (and b!1267179 res!843602) b!1267180))

(declare-fun m!1166631 () Bool)

(assert (=> b!1267180 m!1166631))

(assert (=> start!106782 d!139351))

(declare-fun b!1267197 () Bool)

(declare-fun e!721907 () Bool)

(declare-fun tp!96583 () Bool)

(assert (=> b!1267197 (= e!721907 (and tp_is_empty!32589 tp!96583))))

(assert (=> b!1267121 (= tp!96573 e!721907)))

(assert (= (and b!1267121 ((_ is Cons!28532) (t!42070 l!874))) b!1267197))

(check-sat (not b!1267146) (not b!1267197) (not b!1267180) tp_is_empty!32589 (not b!1267162))
(check-sat)
