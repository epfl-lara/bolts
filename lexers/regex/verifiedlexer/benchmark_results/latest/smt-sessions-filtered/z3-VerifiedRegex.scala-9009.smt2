; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485140 () Bool)

(assert start!485140)

(declare-fun b!4748895 () Bool)

(declare-fun e!2962200 () Bool)

(declare-fun e!2962198 () Bool)

(assert (=> b!4748895 (= e!2962200 e!2962198)))

(declare-fun res!2013368 () Bool)

(assert (=> b!4748895 (=> (not res!2013368) (not e!2962198))))

(declare-datatypes ((K!14450 0))(
  ( (K!14451 (val!19831 Int)) )
))
(declare-datatypes ((V!14696 0))(
  ( (V!14697 (val!19832 Int)) )
))
(declare-datatypes ((tuple2!54800 0))(
  ( (tuple2!54801 (_1!30694 K!14450) (_2!30694 V!14696)) )
))
(declare-datatypes ((List!53178 0))(
  ( (Nil!53054) (Cons!53054 (h!59451 tuple2!54800) (t!360500 List!53178)) )
))
(declare-fun lt!1911969 () List!53178)

(declare-fun noDuplicateKeys!2120 (List!53178) Bool)

(assert (=> b!4748895 (= res!2013368 (noDuplicateKeys!2120 lt!1911969))))

(declare-fun t!14174 () tuple2!54800)

(declare-fun l!14304 () List!53178)

(assert (=> b!4748895 (= lt!1911969 (Cons!53054 t!14174 l!14304))))

(declare-fun e!2962201 () Bool)

(declare-datatypes ((ListMap!5489 0))(
  ( (ListMap!5490 (toList!6090 List!53178)) )
))
(declare-fun lt!1911962 () ListMap!5489)

(declare-fun b!4748896 () Bool)

(declare-fun acc!1214 () ListMap!5489)

(declare-fun eq!1197 (ListMap!5489 ListMap!5489) Bool)

(declare-fun addToMapMapFromBucket!1546 (List!53178 ListMap!5489) ListMap!5489)

(assert (=> b!4748896 (= e!2962201 (eq!1197 lt!1911962 (addToMapMapFromBucket!1546 l!14304 acc!1214)))))

(declare-fun b!4748897 () Bool)

(declare-fun res!2013369 () Bool)

(assert (=> b!4748897 (=> (not res!2013369) (not e!2962198))))

(get-info :version)

(assert (=> b!4748897 (= res!2013369 (not ((_ is Nil!53054) l!14304)))))

(declare-fun res!2013367 () Bool)

(assert (=> start!485140 (=> (not res!2013367) (not e!2962200))))

(assert (=> start!485140 (= res!2013367 (noDuplicateKeys!2120 l!14304))))

(assert (=> start!485140 e!2962200))

(declare-fun e!2962202 () Bool)

(assert (=> start!485140 e!2962202))

(declare-fun tp_is_empty!31773 () Bool)

(declare-fun tp_is_empty!31775 () Bool)

(assert (=> start!485140 (and tp_is_empty!31773 tp_is_empty!31775)))

(declare-fun e!2962197 () Bool)

(declare-fun inv!68322 (ListMap!5489) Bool)

(assert (=> start!485140 (and (inv!68322 acc!1214) e!2962197)))

(declare-fun b!4748898 () Bool)

(declare-fun tp!1349937 () Bool)

(assert (=> b!4748898 (= e!2962197 tp!1349937)))

(declare-fun b!4748899 () Bool)

(declare-fun tp!1349936 () Bool)

(assert (=> b!4748899 (= e!2962202 (and tp_is_empty!31773 tp_is_empty!31775 tp!1349936))))

(declare-fun b!4748900 () Bool)

(assert (=> b!4748900 (= e!2962198 (not true))))

(declare-fun lt!1911958 () ListMap!5489)

(declare-fun lt!1911967 () ListMap!5489)

(assert (=> b!4748900 (eq!1197 lt!1911958 lt!1911967)))

(declare-fun lt!1911955 () ListMap!5489)

(declare-fun lt!1911964 () ListMap!5489)

(declare-datatypes ((Unit!135045 0))(
  ( (Unit!135046) )
))
(declare-fun lt!1911965 () Unit!135045)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!110 (ListMap!5489 ListMap!5489 List!53178) Unit!135045)

(assert (=> b!4748900 (= lt!1911965 (lemmaAddToMapFromBucketPreservesEquivalence!110 lt!1911955 lt!1911964 (t!360500 l!14304)))))

(declare-fun e!2962199 () Bool)

(assert (=> b!4748900 e!2962199))

(declare-fun res!2013365 () Bool)

(assert (=> b!4748900 (=> (not res!2013365) (not e!2962199))))

(declare-fun lt!1911957 () ListMap!5489)

(declare-fun lt!1911961 () ListMap!5489)

(assert (=> b!4748900 (= res!2013365 (eq!1197 lt!1911957 lt!1911961))))

(declare-fun lt!1911959 () Unit!135045)

(declare-fun addCommutativeForDiffKeys!12 (ListMap!5489 K!14450 V!14696 K!14450 V!14696) Unit!135045)

(assert (=> b!4748900 (= lt!1911959 (addCommutativeForDiffKeys!12 acc!1214 (_1!30694 t!14174) (_2!30694 t!14174) (_1!30694 (h!59451 l!14304)) (_2!30694 (h!59451 l!14304))))))

(assert (=> b!4748900 (eq!1197 lt!1911961 lt!1911957)))

(declare-fun +!2356 (ListMap!5489 tuple2!54800) ListMap!5489)

(assert (=> b!4748900 (= lt!1911957 (+!2356 (+!2356 acc!1214 t!14174) (h!59451 l!14304)))))

(declare-fun lt!1911963 () ListMap!5489)

(assert (=> b!4748900 (= lt!1911961 (+!2356 lt!1911963 t!14174))))

(declare-fun lt!1911954 () Unit!135045)

(assert (=> b!4748900 (= lt!1911954 (addCommutativeForDiffKeys!12 acc!1214 (_1!30694 (h!59451 l!14304)) (_2!30694 (h!59451 l!14304)) (_1!30694 t!14174) (_2!30694 t!14174)))))

(declare-fun lt!1911966 () ListMap!5489)

(assert (=> b!4748900 (eq!1197 lt!1911966 lt!1911967)))

(assert (=> b!4748900 (= lt!1911967 (addToMapMapFromBucket!1546 (t!360500 l!14304) lt!1911964))))

(declare-fun lt!1911960 () ListMap!5489)

(assert (=> b!4748900 (= lt!1911964 (+!2356 lt!1911960 (h!59451 l!14304)))))

(assert (=> b!4748900 (eq!1197 lt!1911966 (addToMapMapFromBucket!1546 l!14304 lt!1911960))))

(assert (=> b!4748900 (= lt!1911960 (+!2356 acc!1214 t!14174))))

(assert (=> b!4748900 (= lt!1911966 (addToMapMapFromBucket!1546 lt!1911969 acc!1214))))

(declare-fun lt!1911956 () ListMap!5489)

(assert (=> b!4748900 (eq!1197 lt!1911956 lt!1911958)))

(assert (=> b!4748900 (= lt!1911958 (addToMapMapFromBucket!1546 (t!360500 l!14304) lt!1911955))))

(assert (=> b!4748900 (= lt!1911955 (+!2356 lt!1911963 t!14174))))

(assert (=> b!4748900 e!2962201))

(declare-fun res!2013366 () Bool)

(assert (=> b!4748900 (=> (not res!2013366) (not e!2962201))))

(assert (=> b!4748900 (= res!2013366 (eq!1197 lt!1911956 (+!2356 lt!1911962 t!14174)))))

(assert (=> b!4748900 (= lt!1911956 (addToMapMapFromBucket!1546 (Cons!53054 t!14174 (t!360500 l!14304)) lt!1911963))))

(declare-fun lt!1911968 () Unit!135045)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!444 (tuple2!54800 List!53178 ListMap!5489) Unit!135045)

(assert (=> b!4748900 (= lt!1911968 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!444 t!14174 (t!360500 l!14304) lt!1911963))))

(assert (=> b!4748900 (= lt!1911962 (addToMapMapFromBucket!1546 (t!360500 l!14304) lt!1911963))))

(assert (=> b!4748900 (= lt!1911963 (+!2356 acc!1214 (h!59451 l!14304)))))

(declare-fun b!4748901 () Bool)

(assert (=> b!4748901 (= e!2962199 (eq!1197 lt!1911964 lt!1911955))))

(assert (= (and start!485140 res!2013367) b!4748895))

(assert (= (and b!4748895 res!2013368) b!4748897))

(assert (= (and b!4748897 res!2013369) b!4748900))

(assert (= (and b!4748900 res!2013366) b!4748896))

(assert (= (and b!4748900 res!2013365) b!4748901))

(assert (= (and start!485140 ((_ is Cons!53054) l!14304)) b!4748899))

(assert (= start!485140 b!4748898))

(declare-fun m!5708211 () Bool)

(assert (=> b!4748901 m!5708211))

(declare-fun m!5708213 () Bool)

(assert (=> b!4748900 m!5708213))

(declare-fun m!5708215 () Bool)

(assert (=> b!4748900 m!5708215))

(declare-fun m!5708217 () Bool)

(assert (=> b!4748900 m!5708217))

(declare-fun m!5708219 () Bool)

(assert (=> b!4748900 m!5708219))

(declare-fun m!5708221 () Bool)

(assert (=> b!4748900 m!5708221))

(declare-fun m!5708223 () Bool)

(assert (=> b!4748900 m!5708223))

(declare-fun m!5708225 () Bool)

(assert (=> b!4748900 m!5708225))

(declare-fun m!5708227 () Bool)

(assert (=> b!4748900 m!5708227))

(declare-fun m!5708229 () Bool)

(assert (=> b!4748900 m!5708229))

(assert (=> b!4748900 m!5708225))

(declare-fun m!5708231 () Bool)

(assert (=> b!4748900 m!5708231))

(declare-fun m!5708233 () Bool)

(assert (=> b!4748900 m!5708233))

(declare-fun m!5708235 () Bool)

(assert (=> b!4748900 m!5708235))

(declare-fun m!5708237 () Bool)

(assert (=> b!4748900 m!5708237))

(declare-fun m!5708239 () Bool)

(assert (=> b!4748900 m!5708239))

(declare-fun m!5708241 () Bool)

(assert (=> b!4748900 m!5708241))

(declare-fun m!5708243 () Bool)

(assert (=> b!4748900 m!5708243))

(assert (=> b!4748900 m!5708229))

(declare-fun m!5708245 () Bool)

(assert (=> b!4748900 m!5708245))

(declare-fun m!5708247 () Bool)

(assert (=> b!4748900 m!5708247))

(assert (=> b!4748900 m!5708235))

(declare-fun m!5708249 () Bool)

(assert (=> b!4748900 m!5708249))

(declare-fun m!5708251 () Bool)

(assert (=> b!4748900 m!5708251))

(declare-fun m!5708253 () Bool)

(assert (=> b!4748900 m!5708253))

(declare-fun m!5708255 () Bool)

(assert (=> b!4748900 m!5708255))

(declare-fun m!5708257 () Bool)

(assert (=> b!4748900 m!5708257))

(declare-fun m!5708259 () Bool)

(assert (=> b!4748895 m!5708259))

(declare-fun m!5708261 () Bool)

(assert (=> start!485140 m!5708261))

(declare-fun m!5708263 () Bool)

(assert (=> start!485140 m!5708263))

(declare-fun m!5708265 () Bool)

(assert (=> b!4748896 m!5708265))

(assert (=> b!4748896 m!5708265))

(declare-fun m!5708267 () Bool)

(assert (=> b!4748896 m!5708267))

(check-sat (not b!4748899) (not b!4748900) tp_is_empty!31773 (not b!4748895) (not start!485140) tp_is_empty!31775 (not b!4748898) (not b!4748896) (not b!4748901))
(check-sat)
