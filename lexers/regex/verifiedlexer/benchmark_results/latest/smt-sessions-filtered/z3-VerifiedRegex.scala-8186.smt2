; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422612 () Bool)

(assert start!422612)

(declare-fun b!4361438 () Bool)

(declare-fun e!2714325 () Bool)

(declare-fun tp!1330363 () Bool)

(assert (=> b!4361438 (= e!2714325 tp!1330363)))

(declare-fun b!4361439 () Bool)

(declare-fun e!2714331 () Bool)

(declare-fun e!2714328 () Bool)

(assert (=> b!4361439 (= e!2714331 (not e!2714328))))

(declare-fun res!1793266 () Bool)

(assert (=> b!4361439 (=> res!1793266 e!2714328)))

(declare-datatypes ((K!10335 0))(
  ( (K!10336 (val!16539 Int)) )
))
(declare-datatypes ((V!10581 0))(
  ( (V!10582 (val!16540 Int)) )
))
(declare-datatypes ((tuple2!48398 0))(
  ( (tuple2!48399 (_1!27493 K!10335) (_2!27493 V!10581)) )
))
(declare-datatypes ((List!49103 0))(
  ( (Nil!48979) (Cons!48979 (h!54542 tuple2!48398) (t!356023 List!49103)) )
))
(declare-fun newBucket!200 () List!49103)

(declare-fun lt!1573940 () tuple2!48398)

(declare-fun lt!1573944 () List!49103)

(declare-fun key!3918 () K!10335)

(declare-fun removePairForKey!477 (List!49103 K!10335) List!49103)

(assert (=> b!4361439 (= res!1793266 (not (= newBucket!200 (Cons!48979 lt!1573940 (removePairForKey!477 lt!1573944 key!3918)))))))

(declare-fun newValue!99 () V!10581)

(assert (=> b!4361439 (= lt!1573940 (tuple2!48399 key!3918 newValue!99))))

(declare-fun lambda!141607 () Int)

(declare-datatypes ((Unit!72445 0))(
  ( (Unit!72446) )
))
(declare-fun lt!1573956 () Unit!72445)

(declare-datatypes ((tuple2!48400 0))(
  ( (tuple2!48401 (_1!27494 (_ BitVec 64)) (_2!27494 List!49103)) )
))
(declare-datatypes ((List!49104 0))(
  ( (Nil!48980) (Cons!48980 (h!54543 tuple2!48400) (t!356024 List!49104)) )
))
(declare-datatypes ((ListLongMap!1647 0))(
  ( (ListLongMap!1648 (toList!2997 List!49104)) )
))
(declare-fun lm!1707 () ListLongMap!1647)

(declare-fun lt!1573941 () tuple2!48400)

(declare-fun forallContained!1795 (List!49104 Int tuple2!48400) Unit!72445)

(assert (=> b!4361439 (= lt!1573956 (forallContained!1795 (toList!2997 lm!1707) lambda!141607 lt!1573941))))

(declare-fun contains!11213 (List!49104 tuple2!48400) Bool)

(assert (=> b!4361439 (contains!11213 (toList!2997 lm!1707) lt!1573941)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4361439 (= lt!1573941 (tuple2!48401 hash!377 lt!1573944))))

(declare-fun lt!1573948 () Unit!72445)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!354 (List!49104 (_ BitVec 64) List!49103) Unit!72445)

(assert (=> b!4361439 (= lt!1573948 (lemmaGetValueByKeyImpliesContainsTuple!354 (toList!2997 lm!1707) hash!377 lt!1573944))))

(declare-fun apply!11359 (ListLongMap!1647 (_ BitVec 64)) List!49103)

(assert (=> b!4361439 (= lt!1573944 (apply!11359 lm!1707 hash!377))))

(declare-fun b!4361440 () Bool)

(declare-fun e!2714329 () Bool)

(declare-fun lt!1573939 () tuple2!48400)

(declare-fun head!9078 (ListLongMap!1647) tuple2!48400)

(assert (=> b!4361440 (= e!2714329 (not (= (head!9078 lm!1707) lt!1573939)))))

(declare-fun b!4361441 () Bool)

(declare-fun res!1793257 () Bool)

(declare-fun e!2714333 () Bool)

(assert (=> b!4361441 (=> (not res!1793257) (not e!2714333))))

(declare-datatypes ((Hashable!4899 0))(
  ( (HashableExt!4898 (__x!30602 Int)) )
))
(declare-fun hashF!1247 () Hashable!4899)

(declare-fun hash!1619 (Hashable!4899 K!10335) (_ BitVec 64))

(assert (=> b!4361441 (= res!1793257 (= (hash!1619 hashF!1247 key!3918) hash!377))))

(declare-fun b!4361442 () Bool)

(declare-fun res!1793265 () Bool)

(assert (=> b!4361442 (=> res!1793265 e!2714328)))

(declare-fun noDuplicateKeys!507 (List!49103) Bool)

(assert (=> b!4361442 (= res!1793265 (not (noDuplicateKeys!507 newBucket!200)))))

(declare-fun b!4361443 () Bool)

(assert (=> b!4361443 (= e!2714333 e!2714331)))

(declare-fun res!1793262 () Bool)

(assert (=> b!4361443 (=> (not res!1793262) (not e!2714331))))

(declare-datatypes ((ListMap!2241 0))(
  ( (ListMap!2242 (toList!2998 List!49103)) )
))
(declare-fun lt!1573937 () ListMap!2241)

(declare-fun contains!11214 (ListMap!2241 K!10335) Bool)

(assert (=> b!4361443 (= res!1793262 (contains!11214 lt!1573937 key!3918))))

(declare-fun extractMap!566 (List!49104) ListMap!2241)

(assert (=> b!4361443 (= lt!1573937 (extractMap!566 (toList!2997 lm!1707)))))

(declare-fun b!4361444 () Bool)

(declare-fun e!2714327 () Bool)

(assert (=> b!4361444 (= e!2714327 true)))

(declare-fun lt!1573942 () Bool)

(declare-fun lt!1573951 () ListMap!2241)

(declare-fun eq!277 (ListMap!2241 ListMap!2241) Bool)

(assert (=> b!4361444 (= lt!1573942 (eq!277 lt!1573937 lt!1573951))))

(declare-fun b!4361445 () Bool)

(declare-fun e!2714326 () Bool)

(assert (=> b!4361445 (= e!2714328 e!2714326)))

(declare-fun res!1793260 () Bool)

(assert (=> b!4361445 (=> res!1793260 e!2714326)))

(get-info :version)

(assert (=> b!4361445 (= res!1793260 (or (and ((_ is Cons!48980) (toList!2997 lm!1707)) (= (_1!27494 (h!54543 (toList!2997 lm!1707))) hash!377)) (not ((_ is Cons!48980) (toList!2997 lm!1707))) (= (_1!27494 (h!54543 (toList!2997 lm!1707))) hash!377)))))

(declare-fun e!2714334 () Bool)

(assert (=> b!4361445 e!2714334))

(declare-fun res!1793264 () Bool)

(assert (=> b!4361445 (=> (not res!1793264) (not e!2714334))))

(declare-fun lt!1573952 () ListLongMap!1647)

(declare-fun forall!9154 (List!49104 Int) Bool)

(assert (=> b!4361445 (= res!1793264 (forall!9154 (toList!2997 lt!1573952) lambda!141607))))

(declare-fun +!671 (ListLongMap!1647 tuple2!48400) ListLongMap!1647)

(assert (=> b!4361445 (= lt!1573952 (+!671 lm!1707 lt!1573939))))

(assert (=> b!4361445 (= lt!1573939 (tuple2!48401 hash!377 newBucket!200))))

(declare-fun lt!1573955 () Unit!72445)

(declare-fun addValidProp!161 (ListLongMap!1647 Int (_ BitVec 64) List!49103) Unit!72445)

(assert (=> b!4361445 (= lt!1573955 (addValidProp!161 lm!1707 lambda!141607 hash!377 newBucket!200))))

(assert (=> b!4361445 (forall!9154 (toList!2997 lm!1707) lambda!141607)))

(declare-fun res!1793263 () Bool)

(assert (=> start!422612 (=> (not res!1793263) (not e!2714333))))

(assert (=> start!422612 (= res!1793263 (forall!9154 (toList!2997 lm!1707) lambda!141607))))

(assert (=> start!422612 e!2714333))

(declare-fun e!2714332 () Bool)

(assert (=> start!422612 e!2714332))

(assert (=> start!422612 true))

(declare-fun inv!64521 (ListLongMap!1647) Bool)

(assert (=> start!422612 (and (inv!64521 lm!1707) e!2714325)))

(declare-fun tp_is_empty!25265 () Bool)

(assert (=> start!422612 tp_is_empty!25265))

(declare-fun tp_is_empty!25267 () Bool)

(assert (=> start!422612 tp_is_empty!25267))

(declare-fun b!4361446 () Bool)

(declare-fun res!1793269 () Bool)

(assert (=> b!4361446 (=> (not res!1793269) (not e!2714333))))

(declare-fun allKeysSameHashInMap!611 (ListLongMap!1647 Hashable!4899) Bool)

(assert (=> b!4361446 (= res!1793269 (allKeysSameHashInMap!611 lm!1707 hashF!1247))))

(declare-fun b!4361447 () Bool)

(assert (=> b!4361447 (= e!2714334 (forall!9154 (toList!2997 lt!1573952) lambda!141607))))

(declare-fun b!4361448 () Bool)

(declare-fun res!1793261 () Bool)

(assert (=> b!4361448 (=> (not res!1793261) (not e!2714333))))

(declare-fun allKeysSameHash!465 (List!49103 (_ BitVec 64) Hashable!4899) Bool)

(assert (=> b!4361448 (= res!1793261 (allKeysSameHash!465 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4361449 () Bool)

(assert (=> b!4361449 (= e!2714326 e!2714327)))

(declare-fun res!1793268 () Bool)

(assert (=> b!4361449 (=> res!1793268 e!2714327)))

(assert (=> b!4361449 (= res!1793268 (not (eq!277 lt!1573951 lt!1573937)))))

(declare-fun lt!1573950 () ListMap!2241)

(declare-fun addToMapMapFromBucket!203 (List!49103 ListMap!2241) ListMap!2241)

(declare-fun +!672 (ListMap!2241 tuple2!48398) ListMap!2241)

(assert (=> b!4361449 (eq!277 (addToMapMapFromBucket!203 (_2!27494 (h!54543 (toList!2997 lm!1707))) lt!1573950) (+!672 lt!1573951 lt!1573940))))

(declare-fun lt!1573938 () ListMap!2241)

(declare-fun lt!1573954 () Unit!72445)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!86 (ListMap!2241 K!10335 V!10581 List!49103) Unit!72445)

(assert (=> b!4361449 (= lt!1573954 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!86 lt!1573938 key!3918 newValue!99 (_2!27494 (h!54543 (toList!2997 lm!1707)))))))

(assert (=> b!4361449 (= lt!1573937 lt!1573951)))

(assert (=> b!4361449 (= lt!1573951 (addToMapMapFromBucket!203 (_2!27494 (h!54543 (toList!2997 lm!1707))) lt!1573938))))

(assert (=> b!4361449 e!2714329))

(declare-fun res!1793259 () Bool)

(assert (=> b!4361449 (=> (not res!1793259) (not e!2714329))))

(declare-fun lt!1573949 () ListMap!2241)

(assert (=> b!4361449 (= res!1793259 (eq!277 lt!1573949 lt!1573950))))

(assert (=> b!4361449 (= lt!1573950 (+!672 lt!1573938 lt!1573940))))

(declare-fun lt!1573947 () ListLongMap!1647)

(assert (=> b!4361449 (= lt!1573949 (extractMap!566 (toList!2997 (+!671 lt!1573947 lt!1573939))))))

(declare-fun lt!1573946 () Unit!72445)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!111 (ListLongMap!1647 (_ BitVec 64) List!49103 K!10335 V!10581 Hashable!4899) Unit!72445)

(assert (=> b!4361449 (= lt!1573946 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!111 lt!1573947 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4361449 (contains!11214 lt!1573938 key!3918)))

(assert (=> b!4361449 (= lt!1573938 (extractMap!566 (toList!2997 lt!1573947)))))

(declare-fun tail!7026 (ListLongMap!1647) ListLongMap!1647)

(assert (=> b!4361449 (= lt!1573947 (tail!7026 lm!1707))))

(declare-fun lt!1573943 () ListMap!2241)

(assert (=> b!4361449 (contains!11214 lt!1573943 key!3918)))

(declare-fun lt!1573953 () Unit!72445)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!50 (List!49103 K!10335 V!10581 ListMap!2241) Unit!72445)

(assert (=> b!4361449 (= lt!1573953 (lemmaAddToMapContainsAndNotInListThenInAcc!50 (_2!27494 (h!54543 (toList!2997 lm!1707))) key!3918 newValue!99 lt!1573943))))

(assert (=> b!4361449 (= lt!1573943 (extractMap!566 (t!356024 (toList!2997 lm!1707))))))

(declare-fun e!2714330 () Bool)

(assert (=> b!4361449 e!2714330))

(declare-fun res!1793258 () Bool)

(assert (=> b!4361449 (=> (not res!1793258) (not e!2714330))))

(declare-fun containsKey!732 (List!49103 K!10335) Bool)

(assert (=> b!4361449 (= res!1793258 (not (containsKey!732 (apply!11359 lm!1707 (_1!27494 (h!54543 (toList!2997 lm!1707)))) key!3918)))))

(declare-fun lt!1573945 () Unit!72445)

(declare-fun lemmaNotSameHashThenCannotContainKey!54 (ListLongMap!1647 K!10335 (_ BitVec 64) Hashable!4899) Unit!72445)

(assert (=> b!4361449 (= lt!1573945 (lemmaNotSameHashThenCannotContainKey!54 lm!1707 key!3918 (_1!27494 (h!54543 (toList!2997 lm!1707))) hashF!1247))))

(declare-fun b!4361450 () Bool)

(assert (=> b!4361450 (= e!2714330 (not (containsKey!732 (_2!27494 (h!54543 (toList!2997 lm!1707))) key!3918)))))

(declare-fun b!4361451 () Bool)

(declare-fun res!1793267 () Bool)

(assert (=> b!4361451 (=> (not res!1793267) (not e!2714331))))

(declare-fun contains!11215 (ListLongMap!1647 (_ BitVec 64)) Bool)

(assert (=> b!4361451 (= res!1793267 (contains!11215 lm!1707 hash!377))))

(declare-fun b!4361452 () Bool)

(declare-fun tp!1330364 () Bool)

(assert (=> b!4361452 (= e!2714332 (and tp_is_empty!25265 tp_is_empty!25267 tp!1330364))))

(assert (= (and start!422612 res!1793263) b!4361446))

(assert (= (and b!4361446 res!1793269) b!4361441))

(assert (= (and b!4361441 res!1793257) b!4361448))

(assert (= (and b!4361448 res!1793261) b!4361443))

(assert (= (and b!4361443 res!1793262) b!4361451))

(assert (= (and b!4361451 res!1793267) b!4361439))

(assert (= (and b!4361439 (not res!1793266)) b!4361442))

(assert (= (and b!4361442 (not res!1793265)) b!4361445))

(assert (= (and b!4361445 res!1793264) b!4361447))

(assert (= (and b!4361445 (not res!1793260)) b!4361449))

(assert (= (and b!4361449 res!1793258) b!4361450))

(assert (= (and b!4361449 res!1793259) b!4361440))

(assert (= (and b!4361449 (not res!1793268)) b!4361444))

(assert (= (and start!422612 ((_ is Cons!48979) newBucket!200)) b!4361452))

(assert (= start!422612 b!4361438))

(declare-fun m!4980159 () Bool)

(assert (=> b!4361448 m!4980159))

(declare-fun m!4980161 () Bool)

(assert (=> b!4361444 m!4980161))

(declare-fun m!4980163 () Bool)

(assert (=> b!4361439 m!4980163))

(declare-fun m!4980165 () Bool)

(assert (=> b!4361439 m!4980165))

(declare-fun m!4980167 () Bool)

(assert (=> b!4361439 m!4980167))

(declare-fun m!4980169 () Bool)

(assert (=> b!4361439 m!4980169))

(declare-fun m!4980171 () Bool)

(assert (=> b!4361439 m!4980171))

(declare-fun m!4980173 () Bool)

(assert (=> b!4361451 m!4980173))

(declare-fun m!4980175 () Bool)

(assert (=> b!4361442 m!4980175))

(declare-fun m!4980177 () Bool)

(assert (=> start!422612 m!4980177))

(declare-fun m!4980179 () Bool)

(assert (=> start!422612 m!4980179))

(declare-fun m!4980181 () Bool)

(assert (=> b!4361445 m!4980181))

(declare-fun m!4980183 () Bool)

(assert (=> b!4361445 m!4980183))

(declare-fun m!4980185 () Bool)

(assert (=> b!4361445 m!4980185))

(assert (=> b!4361445 m!4980177))

(declare-fun m!4980187 () Bool)

(assert (=> b!4361441 m!4980187))

(declare-fun m!4980189 () Bool)

(assert (=> b!4361449 m!4980189))

(declare-fun m!4980191 () Bool)

(assert (=> b!4361449 m!4980191))

(declare-fun m!4980193 () Bool)

(assert (=> b!4361449 m!4980193))

(declare-fun m!4980195 () Bool)

(assert (=> b!4361449 m!4980195))

(declare-fun m!4980197 () Bool)

(assert (=> b!4361449 m!4980197))

(declare-fun m!4980199 () Bool)

(assert (=> b!4361449 m!4980199))

(declare-fun m!4980201 () Bool)

(assert (=> b!4361449 m!4980201))

(declare-fun m!4980203 () Bool)

(assert (=> b!4361449 m!4980203))

(declare-fun m!4980205 () Bool)

(assert (=> b!4361449 m!4980205))

(assert (=> b!4361449 m!4980191))

(declare-fun m!4980207 () Bool)

(assert (=> b!4361449 m!4980207))

(declare-fun m!4980209 () Bool)

(assert (=> b!4361449 m!4980209))

(assert (=> b!4361449 m!4980207))

(declare-fun m!4980211 () Bool)

(assert (=> b!4361449 m!4980211))

(declare-fun m!4980213 () Bool)

(assert (=> b!4361449 m!4980213))

(declare-fun m!4980215 () Bool)

(assert (=> b!4361449 m!4980215))

(declare-fun m!4980217 () Bool)

(assert (=> b!4361449 m!4980217))

(declare-fun m!4980219 () Bool)

(assert (=> b!4361449 m!4980219))

(assert (=> b!4361449 m!4980219))

(declare-fun m!4980221 () Bool)

(assert (=> b!4361449 m!4980221))

(declare-fun m!4980223 () Bool)

(assert (=> b!4361449 m!4980223))

(declare-fun m!4980225 () Bool)

(assert (=> b!4361449 m!4980225))

(declare-fun m!4980227 () Bool)

(assert (=> b!4361449 m!4980227))

(declare-fun m!4980229 () Bool)

(assert (=> b!4361450 m!4980229))

(declare-fun m!4980231 () Bool)

(assert (=> b!4361446 m!4980231))

(declare-fun m!4980233 () Bool)

(assert (=> b!4361440 m!4980233))

(declare-fun m!4980235 () Bool)

(assert (=> b!4361443 m!4980235))

(declare-fun m!4980237 () Bool)

(assert (=> b!4361443 m!4980237))

(assert (=> b!4361447 m!4980181))

(check-sat (not b!4361438) tp_is_empty!25267 (not b!4361451) (not b!4361441) (not b!4361443) (not b!4361442) tp_is_empty!25265 (not b!4361440) (not b!4361444) (not start!422612) (not b!4361450) (not b!4361445) (not b!4361439) (not b!4361446) (not b!4361449) (not b!4361452) (not b!4361447) (not b!4361448))
(check-sat)
