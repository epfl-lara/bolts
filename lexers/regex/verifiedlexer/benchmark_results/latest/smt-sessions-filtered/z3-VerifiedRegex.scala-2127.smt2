; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107224 () Bool)

(assert start!107224)

(declare-fun res!542242 () Bool)

(declare-fun e!772334 () Bool)

(assert (=> start!107224 (=> (not res!542242) (not e!772334))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> start!107224 (= res!542242 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107224 e!772334))

(assert (=> start!107224 true))

(declare-fun e!772335 () Bool)

(assert (=> start!107224 e!772335))

(declare-fun e!772336 () Bool)

(assert (=> start!107224 e!772336))

(declare-fun b!1203800 () Bool)

(declare-datatypes ((T!21992 0))(
  ( (T!21993 (val!3918 Int)) )
))
(declare-datatypes ((List!12097 0))(
  ( (Nil!12073) (Cons!12073 (h!17474 T!21992) (t!112513 List!12097)) )
))
(declare-fun l!2744 () List!12097)

(declare-fun r!2028 () List!12097)

(declare-fun ++!3099 (List!12097 List!12097) List!12097)

(assert (=> b!1203800 (= e!772334 (= (++!3099 l!2744 r!2028) Nil!12073))))

(declare-fun b!1203801 () Bool)

(declare-fun tp_is_empty!6039 () Bool)

(declare-fun tp!341708 () Bool)

(assert (=> b!1203801 (= e!772336 (and tp_is_empty!6039 tp!341708))))

(declare-fun b!1203802 () Bool)

(declare-fun res!542241 () Bool)

(assert (=> b!1203802 (=> (not res!542241) (not e!772334))))

(assert (=> b!1203802 (= res!542241 (and (not (= l!2744 Nil!12073)) (not (= r!2028 Nil!12073)) (not (= until!61 0))))))

(declare-fun b!1203803 () Bool)

(declare-fun res!542240 () Bool)

(assert (=> b!1203803 (=> (not res!542240) (not e!772334))))

(declare-fun size!9613 (List!12097) Int)

(assert (=> b!1203803 (= res!542240 (<= until!61 (+ (size!9613 l!2744) (size!9613 r!2028))))))

(declare-fun b!1203804 () Bool)

(declare-fun tp!341709 () Bool)

(assert (=> b!1203804 (= e!772335 (and tp_is_empty!6039 tp!341709))))

(assert (= (and start!107224 res!542242) b!1203803))

(assert (= (and b!1203803 res!542240) b!1203802))

(assert (= (and b!1203802 res!542241) b!1203800))

(get-info :version)

(assert (= (and start!107224 ((_ is Cons!12073) l!2744)) b!1203804))

(assert (= (and start!107224 ((_ is Cons!12073) r!2028)) b!1203801))

(declare-fun m!1379387 () Bool)

(assert (=> b!1203800 m!1379387))

(declare-fun m!1379389 () Bool)

(assert (=> b!1203803 m!1379389))

(declare-fun m!1379391 () Bool)

(assert (=> b!1203803 m!1379391))

(check-sat tp_is_empty!6039 (not b!1203800) (not b!1203801) (not b!1203803) (not b!1203804))
(check-sat)
(get-model)

(declare-fun d!344174 () Bool)

(declare-fun lt!411489 () Int)

(assert (=> d!344174 (>= lt!411489 0)))

(declare-fun e!772339 () Int)

(assert (=> d!344174 (= lt!411489 e!772339)))

(declare-fun c!200925 () Bool)

(assert (=> d!344174 (= c!200925 ((_ is Nil!12073) l!2744))))

(assert (=> d!344174 (= (size!9613 l!2744) lt!411489)))

(declare-fun b!1203809 () Bool)

(assert (=> b!1203809 (= e!772339 0)))

(declare-fun b!1203810 () Bool)

(assert (=> b!1203810 (= e!772339 (+ 1 (size!9613 (t!112513 l!2744))))))

(assert (= (and d!344174 c!200925) b!1203809))

(assert (= (and d!344174 (not c!200925)) b!1203810))

(declare-fun m!1379393 () Bool)

(assert (=> b!1203810 m!1379393))

(assert (=> b!1203803 d!344174))

(declare-fun d!344178 () Bool)

(declare-fun lt!411490 () Int)

(assert (=> d!344178 (>= lt!411490 0)))

(declare-fun e!772340 () Int)

(assert (=> d!344178 (= lt!411490 e!772340)))

(declare-fun c!200926 () Bool)

(assert (=> d!344178 (= c!200926 ((_ is Nil!12073) r!2028))))

(assert (=> d!344178 (= (size!9613 r!2028) lt!411490)))

(declare-fun b!1203811 () Bool)

(assert (=> b!1203811 (= e!772340 0)))

(declare-fun b!1203812 () Bool)

(assert (=> b!1203812 (= e!772340 (+ 1 (size!9613 (t!112513 r!2028))))))

(assert (= (and d!344178 c!200926) b!1203811))

(assert (= (and d!344178 (not c!200926)) b!1203812))

(declare-fun m!1379395 () Bool)

(assert (=> b!1203812 m!1379395))

(assert (=> b!1203803 d!344178))

(declare-fun b!1203830 () Bool)

(declare-fun e!772350 () List!12097)

(assert (=> b!1203830 (= e!772350 (Cons!12073 (h!17474 l!2744) (++!3099 (t!112513 l!2744) r!2028)))))

(declare-fun d!344180 () Bool)

(declare-fun e!772349 () Bool)

(assert (=> d!344180 e!772349))

(declare-fun res!542248 () Bool)

(assert (=> d!344180 (=> (not res!542248) (not e!772349))))

(declare-fun lt!411497 () List!12097)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1700 (List!12097) (InoxSet T!21992))

(assert (=> d!344180 (= res!542248 (= (content!1700 lt!411497) ((_ map or) (content!1700 l!2744) (content!1700 r!2028))))))

(assert (=> d!344180 (= lt!411497 e!772350)))

(declare-fun c!200933 () Bool)

(assert (=> d!344180 (= c!200933 ((_ is Nil!12073) l!2744))))

(assert (=> d!344180 (= (++!3099 l!2744 r!2028) lt!411497)))

(declare-fun b!1203832 () Bool)

(assert (=> b!1203832 (= e!772349 (or (not (= r!2028 Nil!12073)) (= lt!411497 l!2744)))))

(declare-fun b!1203831 () Bool)

(declare-fun res!542247 () Bool)

(assert (=> b!1203831 (=> (not res!542247) (not e!772349))))

(assert (=> b!1203831 (= res!542247 (= (size!9613 lt!411497) (+ (size!9613 l!2744) (size!9613 r!2028))))))

(declare-fun b!1203829 () Bool)

(assert (=> b!1203829 (= e!772350 r!2028)))

(assert (= (and d!344180 c!200933) b!1203829))

(assert (= (and d!344180 (not c!200933)) b!1203830))

(assert (= (and d!344180 res!542248) b!1203831))

(assert (= (and b!1203831 res!542247) b!1203832))

(declare-fun m!1379401 () Bool)

(assert (=> b!1203830 m!1379401))

(declare-fun m!1379403 () Bool)

(assert (=> d!344180 m!1379403))

(declare-fun m!1379405 () Bool)

(assert (=> d!344180 m!1379405))

(declare-fun m!1379407 () Bool)

(assert (=> d!344180 m!1379407))

(declare-fun m!1379409 () Bool)

(assert (=> b!1203831 m!1379409))

(assert (=> b!1203831 m!1379389))

(assert (=> b!1203831 m!1379391))

(assert (=> b!1203800 d!344180))

(declare-fun b!1203837 () Bool)

(declare-fun e!772353 () Bool)

(declare-fun tp!341712 () Bool)

(assert (=> b!1203837 (= e!772353 (and tp_is_empty!6039 tp!341712))))

(assert (=> b!1203804 (= tp!341709 e!772353)))

(assert (= (and b!1203804 ((_ is Cons!12073) (t!112513 l!2744))) b!1203837))

(declare-fun b!1203838 () Bool)

(declare-fun e!772354 () Bool)

(declare-fun tp!341713 () Bool)

(assert (=> b!1203838 (= e!772354 (and tp_is_empty!6039 tp!341713))))

(assert (=> b!1203801 (= tp!341708 e!772354)))

(assert (= (and b!1203801 ((_ is Cons!12073) (t!112513 r!2028))) b!1203838))

(check-sat (not b!1203810) tp_is_empty!6039 (not b!1203831) (not b!1203812) (not b!1203837) (not b!1203838) (not d!344180) (not b!1203830))
(check-sat)
