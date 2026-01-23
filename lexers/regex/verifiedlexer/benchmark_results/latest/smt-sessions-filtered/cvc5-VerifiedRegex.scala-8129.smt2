; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!418454 () Bool)

(assert start!418454)

(declare-fun b!4337147 () Bool)

(declare-fun tp_is_empty!24807 () Bool)

(declare-fun e!2698718 () Bool)

(declare-fun tp!1329087 () Bool)

(declare-fun tp_is_empty!24805 () Bool)

(assert (=> b!4337147 (= e!2698718 (and tp_is_empty!24805 tp_is_empty!24807 tp!1329087))))

(declare-fun b!4337148 () Bool)

(declare-fun res!1779124 () Bool)

(declare-fun e!2698722 () Bool)

(assert (=> b!4337148 (=> (not res!1779124) (not e!2698722))))

(declare-datatypes ((V!10294 0))(
  ( (V!10295 (val!16309 Int)) )
))
(declare-datatypes ((K!10048 0))(
  ( (K!10049 (val!16310 Int)) )
))
(declare-datatypes ((tuple2!47938 0))(
  ( (tuple2!47939 (_1!27263 K!10048) (_2!27263 V!10294)) )
))
(declare-datatypes ((List!48817 0))(
  ( (Nil!48693) (Cons!48693 (h!54200 tuple2!47938) (t!355733 List!48817)) )
))
(declare-datatypes ((tuple2!47940 0))(
  ( (tuple2!47941 (_1!27264 (_ BitVec 64)) (_2!27264 List!48817)) )
))
(declare-datatypes ((List!48818 0))(
  ( (Nil!48694) (Cons!48694 (h!54201 tuple2!47940) (t!355734 List!48818)) )
))
(declare-datatypes ((ListLongMap!1417 0))(
  ( (ListLongMap!1418 (toList!2767 List!48818)) )
))
(declare-fun lm!1707 () ListLongMap!1417)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10765 (ListLongMap!1417 (_ BitVec 64)) Bool)

(assert (=> b!4337148 (= res!1779124 (contains!10765 lm!1707 hash!377))))

(declare-fun b!4337149 () Bool)

(declare-fun res!1779127 () Bool)

(assert (=> b!4337149 (=> (not res!1779127) (not e!2698722))))

(declare-datatypes ((Hashable!4784 0))(
  ( (HashableExt!4783 (__x!30487 Int)) )
))
(declare-fun hashF!1247 () Hashable!4784)

(declare-fun allKeysSameHashInMap!496 (ListLongMap!1417 Hashable!4784) Bool)

(assert (=> b!4337149 (= res!1779127 (allKeysSameHashInMap!496 lm!1707 hashF!1247))))

(declare-fun b!4337150 () Bool)

(declare-fun e!2698717 () Bool)

(declare-datatypes ((ListMap!2011 0))(
  ( (ListMap!2012 (toList!2768 List!48817)) )
))
(declare-fun lt!1550993 () ListMap!2011)

(declare-fun lt!1550988 () ListMap!2011)

(declare-fun eq!182 (ListMap!2011 ListMap!2011) Bool)

(assert (=> b!4337150 (= e!2698717 (eq!182 lt!1550993 lt!1550988))))

(declare-fun b!4337151 () Bool)

(declare-fun res!1779125 () Bool)

(assert (=> b!4337151 (=> (not res!1779125) (not e!2698722))))

(declare-fun newBucket!200 () List!48817)

(declare-fun allKeysSameHash!350 (List!48817 (_ BitVec 64) Hashable!4784) Bool)

(assert (=> b!4337151 (= res!1779125 (allKeysSameHash!350 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337152 () Bool)

(declare-fun e!2698723 () Bool)

(declare-fun tp!1329088 () Bool)

(assert (=> b!4337152 (= e!2698723 tp!1329088)))

(declare-fun b!4337153 () Bool)

(declare-fun e!2698721 () Bool)

(declare-fun e!2698720 () Bool)

(assert (=> b!4337153 (= e!2698721 e!2698720)))

(declare-fun res!1779119 () Bool)

(assert (=> b!4337153 (=> res!1779119 e!2698720)))

(assert (=> b!4337153 (= res!1779119 (or (not (is-Cons!48694 (toList!2767 lm!1707))) (not (= (_1!27264 (h!54201 (toList!2767 lm!1707))) hash!377))))))

(declare-fun e!2698719 () Bool)

(assert (=> b!4337153 e!2698719))

(declare-fun res!1779123 () Bool)

(assert (=> b!4337153 (=> (not res!1779123) (not e!2698719))))

(declare-fun lt!1550991 () ListLongMap!1417)

(declare-fun lambda!136262 () Int)

(declare-fun forall!8966 (List!48818 Int) Bool)

(assert (=> b!4337153 (= res!1779123 (forall!8966 (toList!2767 lt!1550991) lambda!136262))))

(declare-fun lt!1551002 () tuple2!47940)

(declare-fun +!455 (ListLongMap!1417 tuple2!47940) ListLongMap!1417)

(assert (=> b!4337153 (= lt!1550991 (+!455 lm!1707 lt!1551002))))

(assert (=> b!4337153 (= lt!1551002 (tuple2!47941 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68863 0))(
  ( (Unit!68864) )
))
(declare-fun lt!1550996 () Unit!68863)

(declare-fun addValidProp!46 (ListLongMap!1417 Int (_ BitVec 64) List!48817) Unit!68863)

(assert (=> b!4337153 (= lt!1550996 (addValidProp!46 lm!1707 lambda!136262 hash!377 newBucket!200))))

(assert (=> b!4337153 (forall!8966 (toList!2767 lm!1707) lambda!136262)))

(declare-fun res!1779117 () Bool)

(assert (=> start!418454 (=> (not res!1779117) (not e!2698722))))

(assert (=> start!418454 (= res!1779117 (forall!8966 (toList!2767 lm!1707) lambda!136262))))

(assert (=> start!418454 e!2698722))

(assert (=> start!418454 e!2698718))

(assert (=> start!418454 true))

(declare-fun inv!64235 (ListLongMap!1417) Bool)

(assert (=> start!418454 (and (inv!64235 lm!1707) e!2698723)))

(assert (=> start!418454 tp_is_empty!24805))

(assert (=> start!418454 tp_is_empty!24807))

(declare-fun b!4337154 () Bool)

(declare-fun res!1779121 () Bool)

(assert (=> b!4337154 (=> (not res!1779121) (not e!2698722))))

(declare-fun key!3918 () K!10048)

(declare-fun contains!10766 (ListMap!2011 K!10048) Bool)

(declare-fun extractMap!451 (List!48818) ListMap!2011)

(assert (=> b!4337154 (= res!1779121 (contains!10766 (extractMap!451 (toList!2767 lm!1707)) key!3918))))

(declare-fun b!4337155 () Bool)

(assert (=> b!4337155 (= e!2698722 (not e!2698721))))

(declare-fun res!1779120 () Bool)

(assert (=> b!4337155 (=> res!1779120 e!2698721)))

(declare-fun lt!1550992 () List!48817)

(assert (=> b!4337155 (= res!1779120 (not (= newBucket!200 lt!1550992)))))

(declare-fun lt!1550997 () tuple2!47938)

(declare-fun lt!1550999 () List!48817)

(assert (=> b!4337155 (= lt!1550992 (Cons!48693 lt!1550997 lt!1550999))))

(declare-fun lt!1550998 () List!48817)

(declare-fun removePairForKey!362 (List!48817 K!10048) List!48817)

(assert (=> b!4337155 (= lt!1550999 (removePairForKey!362 lt!1550998 key!3918))))

(declare-fun newValue!99 () V!10294)

(assert (=> b!4337155 (= lt!1550997 (tuple2!47939 key!3918 newValue!99))))

(declare-fun lt!1550995 () Unit!68863)

(declare-fun lt!1550987 () tuple2!47940)

(declare-fun forallContained!1616 (List!48818 Int tuple2!47940) Unit!68863)

(assert (=> b!4337155 (= lt!1550995 (forallContained!1616 (toList!2767 lm!1707) lambda!136262 lt!1550987))))

(declare-fun contains!10767 (List!48818 tuple2!47940) Bool)

(assert (=> b!4337155 (contains!10767 (toList!2767 lm!1707) lt!1550987)))

(assert (=> b!4337155 (= lt!1550987 (tuple2!47941 hash!377 lt!1550998))))

(declare-fun lt!1550989 () Unit!68863)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!239 (List!48818 (_ BitVec 64) List!48817) Unit!68863)

(assert (=> b!4337155 (= lt!1550989 (lemmaGetValueByKeyImpliesContainsTuple!239 (toList!2767 lm!1707) hash!377 lt!1550998))))

(declare-fun apply!11244 (ListLongMap!1417 (_ BitVec 64)) List!48817)

(assert (=> b!4337155 (= lt!1550998 (apply!11244 lm!1707 hash!377))))

(declare-fun b!4337156 () Bool)

(declare-fun res!1779122 () Bool)

(assert (=> b!4337156 (=> (not res!1779122) (not e!2698722))))

(declare-fun hash!1345 (Hashable!4784 K!10048) (_ BitVec 64))

(assert (=> b!4337156 (= res!1779122 (= (hash!1345 hashF!1247 key!3918) hash!377))))

(declare-fun b!4337157 () Bool)

(declare-fun res!1779116 () Bool)

(assert (=> b!4337157 (=> res!1779116 e!2698721)))

(declare-fun noDuplicateKeys!392 (List!48817) Bool)

(assert (=> b!4337157 (= res!1779116 (not (noDuplicateKeys!392 newBucket!200)))))

(declare-fun b!4337158 () Bool)

(declare-fun res!1779118 () Bool)

(assert (=> b!4337158 (=> (not res!1779118) (not e!2698719))))

(assert (=> b!4337158 (= res!1779118 (forall!8966 (toList!2767 lt!1550991) lambda!136262))))

(declare-fun b!4337159 () Bool)

(assert (=> b!4337159 (= e!2698720 (not (= newBucket!200 Nil!48693)))))

(assert (=> b!4337159 e!2698717))

(declare-fun res!1779126 () Bool)

(assert (=> b!4337159 (=> (not res!1779126) (not e!2698717))))

(declare-fun lt!1550990 () ListMap!2011)

(assert (=> b!4337159 (= res!1779126 (eq!182 lt!1550990 lt!1550988))))

(declare-fun lt!1551000 () ListMap!2011)

(declare-fun +!456 (ListMap!2011 tuple2!47938) ListMap!2011)

(declare-fun addToMapMapFromBucket!100 (List!48817 ListMap!2011) ListMap!2011)

(assert (=> b!4337159 (= lt!1550988 (+!456 (addToMapMapFromBucket!100 lt!1550999 lt!1551000) lt!1550997))))

(declare-fun lt!1550994 () Unit!68863)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!11 (ListMap!2011 K!10048 V!10294 List!48817) Unit!68863)

(assert (=> b!4337159 (= lt!1550994 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!11 lt!1551000 key!3918 newValue!99 lt!1550999))))

(assert (=> b!4337159 (= lt!1550993 lt!1550990)))

(assert (=> b!4337159 (= lt!1550990 (addToMapMapFromBucket!100 lt!1550999 (+!456 lt!1551000 lt!1550997)))))

(declare-fun lt!1551001 () ListMap!2011)

(assert (=> b!4337159 (= lt!1551001 lt!1550993)))

(assert (=> b!4337159 (= lt!1550993 (addToMapMapFromBucket!100 lt!1550992 lt!1551000))))

(assert (=> b!4337159 (= lt!1551001 (addToMapMapFromBucket!100 newBucket!200 lt!1551000))))

(assert (=> b!4337159 (= lt!1551001 (extractMap!451 (toList!2767 lt!1550991)))))

(assert (=> b!4337159 (= lt!1551000 (extractMap!451 (t!355734 (toList!2767 lm!1707))))))

(declare-fun b!4337160 () Bool)

(assert (=> b!4337160 (= e!2698719 (or (not (is-Cons!48694 (toList!2767 lm!1707))) (not (= (_1!27264 (h!54201 (toList!2767 lm!1707))) hash!377)) (= lt!1550991 (ListLongMap!1418 (Cons!48694 lt!1551002 (t!355734 (toList!2767 lm!1707)))))))))

(assert (= (and start!418454 res!1779117) b!4337149))

(assert (= (and b!4337149 res!1779127) b!4337156))

(assert (= (and b!4337156 res!1779122) b!4337151))

(assert (= (and b!4337151 res!1779125) b!4337154))

(assert (= (and b!4337154 res!1779121) b!4337148))

(assert (= (and b!4337148 res!1779124) b!4337155))

(assert (= (and b!4337155 (not res!1779120)) b!4337157))

(assert (= (and b!4337157 (not res!1779116)) b!4337153))

(assert (= (and b!4337153 res!1779123) b!4337158))

(assert (= (and b!4337158 res!1779118) b!4337160))

(assert (= (and b!4337153 (not res!1779119)) b!4337159))

(assert (= (and b!4337159 res!1779126) b!4337150))

(assert (= (and start!418454 (is-Cons!48693 newBucket!200)) b!4337147))

(assert (= start!418454 b!4337152))

(declare-fun m!4933199 () Bool)

(assert (=> b!4337148 m!4933199))

(declare-fun m!4933201 () Bool)

(assert (=> b!4337149 m!4933201))

(declare-fun m!4933203 () Bool)

(assert (=> b!4337150 m!4933203))

(declare-fun m!4933205 () Bool)

(assert (=> b!4337155 m!4933205))

(declare-fun m!4933207 () Bool)

(assert (=> b!4337155 m!4933207))

(declare-fun m!4933209 () Bool)

(assert (=> b!4337155 m!4933209))

(declare-fun m!4933211 () Bool)

(assert (=> b!4337155 m!4933211))

(declare-fun m!4933213 () Bool)

(assert (=> b!4337155 m!4933213))

(declare-fun m!4933215 () Bool)

(assert (=> b!4337154 m!4933215))

(assert (=> b!4337154 m!4933215))

(declare-fun m!4933217 () Bool)

(assert (=> b!4337154 m!4933217))

(declare-fun m!4933219 () Bool)

(assert (=> start!418454 m!4933219))

(declare-fun m!4933221 () Bool)

(assert (=> start!418454 m!4933221))

(declare-fun m!4933223 () Bool)

(assert (=> b!4337159 m!4933223))

(declare-fun m!4933225 () Bool)

(assert (=> b!4337159 m!4933225))

(declare-fun m!4933227 () Bool)

(assert (=> b!4337159 m!4933227))

(declare-fun m!4933229 () Bool)

(assert (=> b!4337159 m!4933229))

(declare-fun m!4933231 () Bool)

(assert (=> b!4337159 m!4933231))

(declare-fun m!4933233 () Bool)

(assert (=> b!4337159 m!4933233))

(declare-fun m!4933235 () Bool)

(assert (=> b!4337159 m!4933235))

(declare-fun m!4933237 () Bool)

(assert (=> b!4337159 m!4933237))

(declare-fun m!4933239 () Bool)

(assert (=> b!4337159 m!4933239))

(declare-fun m!4933241 () Bool)

(assert (=> b!4337159 m!4933241))

(assert (=> b!4337159 m!4933231))

(assert (=> b!4337159 m!4933239))

(declare-fun m!4933243 () Bool)

(assert (=> b!4337157 m!4933243))

(declare-fun m!4933245 () Bool)

(assert (=> b!4337153 m!4933245))

(declare-fun m!4933247 () Bool)

(assert (=> b!4337153 m!4933247))

(declare-fun m!4933249 () Bool)

(assert (=> b!4337153 m!4933249))

(assert (=> b!4337153 m!4933219))

(declare-fun m!4933251 () Bool)

(assert (=> b!4337151 m!4933251))

(assert (=> b!4337158 m!4933245))

(declare-fun m!4933253 () Bool)

(assert (=> b!4337156 m!4933253))

(push 1)

(assert (not b!4337150))

(assert tp_is_empty!24807)

(assert (not b!4337154))

(assert (not b!4337149))

(assert (not b!4337151))

(assert (not b!4337157))

(assert (not start!418454))

(assert (not b!4337158))

(assert (not b!4337152))

(assert (not b!4337155))

(assert (not b!4337147))

(assert (not b!4337153))

(assert (not b!4337159))

(assert (not b!4337148))

(assert (not b!4337156))

(assert tp_is_empty!24805)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

