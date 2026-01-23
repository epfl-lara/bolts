; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485184 () Bool)

(assert start!485184)

(declare-fun b!4749185 () Bool)

(declare-fun res!2013571 () Bool)

(declare-fun e!2962414 () Bool)

(assert (=> b!4749185 (=> (not res!2013571) (not e!2962414))))

(declare-datatypes ((K!14465 0))(
  ( (K!14466 (val!19843 Int)) )
))
(declare-datatypes ((V!14711 0))(
  ( (V!14712 (val!19844 Int)) )
))
(declare-datatypes ((tuple2!54812 0))(
  ( (tuple2!54813 (_1!30700 K!14465) (_2!30700 V!14711)) )
))
(declare-datatypes ((List!53184 0))(
  ( (Nil!53060) (Cons!53060 (h!59457 tuple2!54812) (t!360508 List!53184)) )
))
(declare-fun l!14304 () List!53184)

(get-info :version)

(assert (=> b!4749185 (= res!2013571 (not ((_ is Nil!53060) l!14304)))))

(declare-fun tp_is_empty!31797 () Bool)

(declare-fun b!4749186 () Bool)

(declare-fun tp!1349981 () Bool)

(declare-fun tp_is_empty!31799 () Bool)

(declare-fun e!2962412 () Bool)

(assert (=> b!4749186 (= e!2962412 (and tp_is_empty!31797 tp_is_empty!31799 tp!1349981))))

(declare-fun b!4749187 () Bool)

(declare-fun e!2962409 () Bool)

(declare-datatypes ((ListMap!5501 0))(
  ( (ListMap!5502 (toList!6096 List!53184)) )
))
(declare-fun lt!1912716 () ListMap!5501)

(declare-fun lt!1912723 () ListMap!5501)

(declare-fun eq!1203 (ListMap!5501 ListMap!5501) Bool)

(assert (=> b!4749187 (= e!2962409 (eq!1203 lt!1912716 lt!1912723))))

(declare-fun b!4749189 () Bool)

(assert (=> b!4749189 (= e!2962414 (not true))))

(declare-fun t!14174 () tuple2!54812)

(declare-fun lt!1912715 () Bool)

(declare-fun lt!1912726 () ListMap!5501)

(declare-fun +!2362 (ListMap!5501 tuple2!54812) ListMap!5501)

(assert (=> b!4749189 (= lt!1912715 (eq!1203 lt!1912716 (+!2362 lt!1912726 t!14174)))))

(assert (=> b!4749189 e!2962409))

(declare-fun res!2013567 () Bool)

(assert (=> b!4749189 (=> (not res!2013567) (not e!2962409))))

(declare-fun lt!1912729 () ListMap!5501)

(assert (=> b!4749189 (= res!2013567 (eq!1203 lt!1912723 lt!1912729))))

(declare-fun lt!1912722 () ListMap!5501)

(declare-fun lt!1912724 () ListMap!5501)

(declare-datatypes ((Unit!135211 0))(
  ( (Unit!135212) )
))
(declare-fun lt!1912717 () Unit!135211)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!116 (ListMap!5501 ListMap!5501 List!53184) Unit!135211)

(assert (=> b!4749189 (= lt!1912717 (lemmaAddToMapFromBucketPreservesEquivalence!116 lt!1912724 lt!1912722 (t!360508 l!14304)))))

(declare-fun e!2962413 () Bool)

(assert (=> b!4749189 e!2962413))

(declare-fun res!2013568 () Bool)

(assert (=> b!4749189 (=> (not res!2013568) (not e!2962413))))

(declare-fun lt!1912731 () ListMap!5501)

(declare-fun lt!1912718 () ListMap!5501)

(assert (=> b!4749189 (= res!2013568 (eq!1203 lt!1912731 lt!1912718))))

(declare-fun lt!1912725 () Unit!135211)

(declare-fun acc!1214 () ListMap!5501)

(declare-fun addCommutativeForDiffKeys!18 (ListMap!5501 K!14465 V!14711 K!14465 V!14711) Unit!135211)

(assert (=> b!4749189 (= lt!1912725 (addCommutativeForDiffKeys!18 acc!1214 (_1!30700 t!14174) (_2!30700 t!14174) (_1!30700 (h!59457 l!14304)) (_2!30700 (h!59457 l!14304))))))

(assert (=> b!4749189 (eq!1203 lt!1912718 lt!1912731)))

(assert (=> b!4749189 (= lt!1912731 (+!2362 (+!2362 acc!1214 t!14174) (h!59457 l!14304)))))

(declare-fun lt!1912727 () ListMap!5501)

(assert (=> b!4749189 (= lt!1912718 (+!2362 lt!1912727 t!14174))))

(declare-fun lt!1912728 () Unit!135211)

(assert (=> b!4749189 (= lt!1912728 (addCommutativeForDiffKeys!18 acc!1214 (_1!30700 (h!59457 l!14304)) (_2!30700 (h!59457 l!14304)) (_1!30700 t!14174) (_2!30700 t!14174)))))

(assert (=> b!4749189 (eq!1203 lt!1912716 lt!1912729)))

(declare-fun addToMapMapFromBucket!1552 (List!53184 ListMap!5501) ListMap!5501)

(assert (=> b!4749189 (= lt!1912729 (addToMapMapFromBucket!1552 (t!360508 l!14304) lt!1912722))))

(declare-fun lt!1912714 () ListMap!5501)

(assert (=> b!4749189 (= lt!1912722 (+!2362 lt!1912714 (h!59457 l!14304)))))

(assert (=> b!4749189 (eq!1203 lt!1912716 (addToMapMapFromBucket!1552 l!14304 lt!1912714))))

(assert (=> b!4749189 (= lt!1912714 (+!2362 acc!1214 t!14174))))

(declare-fun lt!1912721 () List!53184)

(assert (=> b!4749189 (= lt!1912716 (addToMapMapFromBucket!1552 lt!1912721 acc!1214))))

(declare-fun lt!1912730 () ListMap!5501)

(assert (=> b!4749189 (eq!1203 lt!1912730 lt!1912723)))

(assert (=> b!4749189 (= lt!1912723 (addToMapMapFromBucket!1552 (t!360508 l!14304) lt!1912724))))

(assert (=> b!4749189 (= lt!1912724 (+!2362 lt!1912727 t!14174))))

(declare-fun lt!1912720 () ListMap!5501)

(assert (=> b!4749189 (eq!1203 lt!1912720 lt!1912726)))

(assert (=> b!4749189 (= lt!1912726 (addToMapMapFromBucket!1552 l!14304 acc!1214))))

(assert (=> b!4749189 (eq!1203 lt!1912730 (+!2362 lt!1912720 t!14174))))

(assert (=> b!4749189 (= lt!1912730 (addToMapMapFromBucket!1552 (Cons!53060 t!14174 (t!360508 l!14304)) lt!1912727))))

(declare-fun lt!1912719 () Unit!135211)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!450 (tuple2!54812 List!53184 ListMap!5501) Unit!135211)

(assert (=> b!4749189 (= lt!1912719 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!450 t!14174 (t!360508 l!14304) lt!1912727))))

(assert (=> b!4749189 (= lt!1912720 (addToMapMapFromBucket!1552 (t!360508 l!14304) lt!1912727))))

(assert (=> b!4749189 (= lt!1912727 (+!2362 acc!1214 (h!59457 l!14304)))))

(declare-fun b!4749190 () Bool)

(declare-fun e!2962410 () Bool)

(assert (=> b!4749190 (= e!2962410 e!2962414)))

(declare-fun res!2013570 () Bool)

(assert (=> b!4749190 (=> (not res!2013570) (not e!2962414))))

(declare-fun noDuplicateKeys!2126 (List!53184) Bool)

(assert (=> b!4749190 (= res!2013570 (noDuplicateKeys!2126 lt!1912721))))

(assert (=> b!4749190 (= lt!1912721 (Cons!53060 t!14174 l!14304))))

(declare-fun b!4749191 () Bool)

(declare-fun e!2962411 () Bool)

(declare-fun tp!1349980 () Bool)

(assert (=> b!4749191 (= e!2962411 tp!1349980)))

(declare-fun b!4749188 () Bool)

(assert (=> b!4749188 (= e!2962413 (eq!1203 lt!1912722 lt!1912724))))

(declare-fun res!2013569 () Bool)

(assert (=> start!485184 (=> (not res!2013569) (not e!2962410))))

(assert (=> start!485184 (= res!2013569 (noDuplicateKeys!2126 l!14304))))

(assert (=> start!485184 e!2962410))

(assert (=> start!485184 e!2962412))

(assert (=> start!485184 (and tp_is_empty!31797 tp_is_empty!31799)))

(declare-fun inv!68337 (ListMap!5501) Bool)

(assert (=> start!485184 (and (inv!68337 acc!1214) e!2962411)))

(assert (= (and start!485184 res!2013569) b!4749190))

(assert (= (and b!4749190 res!2013570) b!4749185))

(assert (= (and b!4749185 res!2013571) b!4749189))

(assert (= (and b!4749189 res!2013568) b!4749188))

(assert (= (and b!4749189 res!2013567) b!4749187))

(assert (= (and start!485184 ((_ is Cons!53060) l!14304)) b!4749186))

(assert (= start!485184 b!4749191))

(declare-fun m!5709291 () Bool)

(assert (=> b!4749187 m!5709291))

(declare-fun m!5709293 () Bool)

(assert (=> start!485184 m!5709293))

(declare-fun m!5709295 () Bool)

(assert (=> start!485184 m!5709295))

(declare-fun m!5709297 () Bool)

(assert (=> b!4749188 m!5709297))

(declare-fun m!5709299 () Bool)

(assert (=> b!4749190 m!5709299))

(declare-fun m!5709301 () Bool)

(assert (=> b!4749189 m!5709301))

(declare-fun m!5709303 () Bool)

(assert (=> b!4749189 m!5709303))

(declare-fun m!5709305 () Bool)

(assert (=> b!4749189 m!5709305))

(declare-fun m!5709307 () Bool)

(assert (=> b!4749189 m!5709307))

(declare-fun m!5709309 () Bool)

(assert (=> b!4749189 m!5709309))

(declare-fun m!5709311 () Bool)

(assert (=> b!4749189 m!5709311))

(declare-fun m!5709313 () Bool)

(assert (=> b!4749189 m!5709313))

(declare-fun m!5709315 () Bool)

(assert (=> b!4749189 m!5709315))

(declare-fun m!5709317 () Bool)

(assert (=> b!4749189 m!5709317))

(assert (=> b!4749189 m!5709309))

(declare-fun m!5709319 () Bool)

(assert (=> b!4749189 m!5709319))

(declare-fun m!5709321 () Bool)

(assert (=> b!4749189 m!5709321))

(declare-fun m!5709323 () Bool)

(assert (=> b!4749189 m!5709323))

(declare-fun m!5709325 () Bool)

(assert (=> b!4749189 m!5709325))

(declare-fun m!5709327 () Bool)

(assert (=> b!4749189 m!5709327))

(declare-fun m!5709329 () Bool)

(assert (=> b!4749189 m!5709329))

(assert (=> b!4749189 m!5709313))

(declare-fun m!5709331 () Bool)

(assert (=> b!4749189 m!5709331))

(assert (=> b!4749189 m!5709301))

(declare-fun m!5709333 () Bool)

(assert (=> b!4749189 m!5709333))

(declare-fun m!5709335 () Bool)

(assert (=> b!4749189 m!5709335))

(declare-fun m!5709337 () Bool)

(assert (=> b!4749189 m!5709337))

(assert (=> b!4749189 m!5709305))

(declare-fun m!5709339 () Bool)

(assert (=> b!4749189 m!5709339))

(declare-fun m!5709341 () Bool)

(assert (=> b!4749189 m!5709341))

(declare-fun m!5709343 () Bool)

(assert (=> b!4749189 m!5709343))

(declare-fun m!5709345 () Bool)

(assert (=> b!4749189 m!5709345))

(declare-fun m!5709347 () Bool)

(assert (=> b!4749189 m!5709347))

(declare-fun m!5709349 () Bool)

(assert (=> b!4749189 m!5709349))

(declare-fun m!5709351 () Bool)

(assert (=> b!4749189 m!5709351))

(declare-fun m!5709353 () Bool)

(assert (=> b!4749189 m!5709353))

(check-sat (not b!4749191) (not b!4749188) tp_is_empty!31797 (not b!4749190) (not b!4749187) (not b!4749189) (not b!4749186) (not start!485184) tp_is_empty!31799)
(check-sat)
