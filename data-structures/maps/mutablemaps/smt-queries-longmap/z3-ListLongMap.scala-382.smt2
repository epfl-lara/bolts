; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7224 () Bool)

(assert start!7224)

(declare-fun res!27022 () Bool)

(declare-fun e!29473 () Bool)

(assert (=> start!7224 (=> (not res!27022) (not e!29473))))

(declare-datatypes ((B!874 0))(
  ( (B!875 (val!1024 Int)) )
))
(declare-datatypes ((tuple2!1700 0))(
  ( (tuple2!1701 (_1!860 (_ BitVec 64)) (_2!860 B!874)) )
))
(declare-datatypes ((List!1258 0))(
  ( (Nil!1255) (Cons!1254 (h!1834 tuple2!1700) (t!4291 List!1258)) )
))
(declare-fun l!812 () List!1258)

(declare-fun isStrictlySorted!229 (List!1258) Bool)

(assert (=> start!7224 (= res!27022 (isStrictlySorted!229 l!812))))

(assert (=> start!7224 e!29473))

(declare-fun e!29474 () Bool)

(assert (=> start!7224 e!29474))

(declare-fun b!46254 () Bool)

(declare-fun ListPrimitiveSize!44 (List!1258) Int)

(assert (=> b!46254 (= e!29473 (< (ListPrimitiveSize!44 l!812) 0))))

(declare-fun b!46255 () Bool)

(declare-fun tp_is_empty!1971 () Bool)

(declare-fun tp!6086 () Bool)

(assert (=> b!46255 (= e!29474 (and tp_is_empty!1971 tp!6086))))

(assert (= (and start!7224 res!27022) b!46254))

(get-info :version)

(assert (= (and start!7224 ((_ is Cons!1254) l!812)) b!46255))

(declare-fun m!40705 () Bool)

(assert (=> start!7224 m!40705))

(declare-fun m!40707 () Bool)

(assert (=> b!46254 m!40707))

(check-sat (not b!46254) (not start!7224) (not b!46255) tp_is_empty!1971)
(check-sat)
(get-model)

(declare-fun d!9073 () Bool)

(declare-fun lt!20295 () Int)

(assert (=> d!9073 (>= lt!20295 0)))

(declare-fun e!29487 () Int)

(assert (=> d!9073 (= lt!20295 e!29487)))

(declare-fun c!6268 () Bool)

(assert (=> d!9073 (= c!6268 ((_ is Nil!1255) l!812))))

(assert (=> d!9073 (= (ListPrimitiveSize!44 l!812) lt!20295)))

(declare-fun b!46274 () Bool)

(assert (=> b!46274 (= e!29487 0)))

(declare-fun b!46275 () Bool)

(assert (=> b!46275 (= e!29487 (+ 1 (ListPrimitiveSize!44 (t!4291 l!812))))))

(assert (= (and d!9073 c!6268) b!46274))

(assert (= (and d!9073 (not c!6268)) b!46275))

(declare-fun m!40713 () Bool)

(assert (=> b!46275 m!40713))

(assert (=> b!46254 d!9073))

(declare-fun d!9079 () Bool)

(declare-fun res!27038 () Bool)

(declare-fun e!29502 () Bool)

(assert (=> d!9079 (=> res!27038 e!29502)))

(assert (=> d!9079 (= res!27038 (or ((_ is Nil!1255) l!812) ((_ is Nil!1255) (t!4291 l!812))))))

(assert (=> d!9079 (= (isStrictlySorted!229 l!812) e!29502)))

(declare-fun b!46292 () Bool)

(declare-fun e!29503 () Bool)

(assert (=> b!46292 (= e!29502 e!29503)))

(declare-fun res!27039 () Bool)

(assert (=> b!46292 (=> (not res!27039) (not e!29503))))

(assert (=> b!46292 (= res!27039 (bvslt (_1!860 (h!1834 l!812)) (_1!860 (h!1834 (t!4291 l!812)))))))

(declare-fun b!46293 () Bool)

(assert (=> b!46293 (= e!29503 (isStrictlySorted!229 (t!4291 l!812)))))

(assert (= (and d!9079 (not res!27038)) b!46292))

(assert (= (and b!46292 res!27039) b!46293))

(declare-fun m!40719 () Bool)

(assert (=> b!46293 m!40719))

(assert (=> start!7224 d!9079))

(declare-fun b!46302 () Bool)

(declare-fun e!29510 () Bool)

(declare-fun tp!6092 () Bool)

(assert (=> b!46302 (= e!29510 (and tp_is_empty!1971 tp!6092))))

(assert (=> b!46255 (= tp!6086 e!29510)))

(assert (= (and b!46255 ((_ is Cons!1254) (t!4291 l!812))) b!46302))

(check-sat (not b!46293) (not b!46275) (not b!46302) tp_is_empty!1971)
(check-sat)
