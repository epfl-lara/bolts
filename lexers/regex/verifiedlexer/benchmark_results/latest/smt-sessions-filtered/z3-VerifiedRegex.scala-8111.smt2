; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417656 () Bool)

(assert start!417656)

(declare-fun b!4332859 () Bool)

(declare-fun res!1776524 () Bool)

(declare-fun e!2696175 () Bool)

(assert (=> b!4332859 (=> res!1776524 e!2696175)))

(declare-datatypes ((K!9960 0))(
  ( (K!9961 (val!16239 Int)) )
))
(declare-datatypes ((V!10206 0))(
  ( (V!10207 (val!16240 Int)) )
))
(declare-datatypes ((tuple2!47798 0))(
  ( (tuple2!47799 (_1!27193 K!9960) (_2!27193 V!10206)) )
))
(declare-datatypes ((List!48729 0))(
  ( (Nil!48605) (Cons!48605 (h!54092 tuple2!47798) (t!355645 List!48729)) )
))
(declare-fun newBucket!200 () List!48729)

(declare-fun noDuplicateKeys!357 (List!48729) Bool)

(assert (=> b!4332859 (= res!1776524 (not (noDuplicateKeys!357 newBucket!200)))))

(declare-fun e!2696170 () Bool)

(declare-fun tp!1328698 () Bool)

(declare-fun tp_is_empty!24665 () Bool)

(declare-fun tp_is_empty!24667 () Bool)

(declare-fun b!4332860 () Bool)

(assert (=> b!4332860 (= e!2696170 (and tp_is_empty!24665 tp_is_empty!24667 tp!1328698))))

(declare-fun b!4332861 () Bool)

(declare-fun e!2696176 () Bool)

(declare-fun e!2696174 () Bool)

(assert (=> b!4332861 (= e!2696176 e!2696174)))

(declare-fun res!1776531 () Bool)

(assert (=> b!4332861 (=> (not res!1776531) (not e!2696174))))

(declare-datatypes ((tuple2!47800 0))(
  ( (tuple2!47801 (_1!27194 (_ BitVec 64)) (_2!27194 List!48729)) )
))
(declare-datatypes ((List!48730 0))(
  ( (Nil!48606) (Cons!48606 (h!54093 tuple2!47800) (t!355646 List!48730)) )
))
(declare-datatypes ((ListLongMap!1347 0))(
  ( (ListLongMap!1348 (toList!2697 List!48730)) )
))
(declare-fun lm!1707 () ListLongMap!1347)

(declare-fun lt!1546258 () ListLongMap!1347)

(declare-fun lt!1546252 () tuple2!47800)

(assert (=> b!4332861 (= res!1776531 (= lt!1546258 (ListLongMap!1348 (Cons!48606 lt!1546252 (t!355646 (toList!2697 lm!1707))))))))

(declare-fun b!4332862 () Bool)

(declare-fun e!2696173 () Bool)

(assert (=> b!4332862 (= e!2696173 (not e!2696175))))

(declare-fun res!1776525 () Bool)

(assert (=> b!4332862 (=> res!1776525 e!2696175)))

(declare-fun lt!1546253 () List!48729)

(declare-fun key!3918 () K!9960)

(declare-fun newValue!99 () V!10206)

(declare-fun removePairForKey!327 (List!48729 K!9960) List!48729)

(assert (=> b!4332862 (= res!1776525 (not (= newBucket!200 (Cons!48605 (tuple2!47799 key!3918 newValue!99) (removePairForKey!327 lt!1546253 key!3918)))))))

(declare-datatypes ((Unit!68202 0))(
  ( (Unit!68203) )
))
(declare-fun lt!1546254 () Unit!68202)

(declare-fun lambda!134873 () Int)

(declare-fun lt!1546257 () tuple2!47800)

(declare-fun forallContained!1562 (List!48730 Int tuple2!47800) Unit!68202)

(assert (=> b!4332862 (= lt!1546254 (forallContained!1562 (toList!2697 lm!1707) lambda!134873 lt!1546257))))

(declare-fun contains!10630 (List!48730 tuple2!47800) Bool)

(assert (=> b!4332862 (contains!10630 (toList!2697 lm!1707) lt!1546257)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4332862 (= lt!1546257 (tuple2!47801 hash!377 lt!1546253))))

(declare-fun lt!1546255 () Unit!68202)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!204 (List!48730 (_ BitVec 64) List!48729) Unit!68202)

(assert (=> b!4332862 (= lt!1546255 (lemmaGetValueByKeyImpliesContainsTuple!204 (toList!2697 lm!1707) hash!377 lt!1546253))))

(declare-fun apply!11209 (ListLongMap!1347 (_ BitVec 64)) List!48729)

(assert (=> b!4332862 (= lt!1546253 (apply!11209 lm!1707 hash!377))))

(declare-fun b!4332863 () Bool)

(declare-fun res!1776527 () Bool)

(assert (=> b!4332863 (=> (not res!1776527) (not e!2696173))))

(declare-fun contains!10631 (ListLongMap!1347 (_ BitVec 64)) Bool)

(assert (=> b!4332863 (= res!1776527 (contains!10631 lm!1707 hash!377))))

(declare-fun b!4332864 () Bool)

(declare-datatypes ((ListMap!1941 0))(
  ( (ListMap!1942 (toList!2698 List!48729)) )
))
(declare-fun extractMap!416 (List!48730) ListMap!1941)

(declare-fun addToMapMapFromBucket!65 (List!48729 ListMap!1941) ListMap!1941)

(assert (=> b!4332864 (= e!2696174 (= (extractMap!416 (toList!2697 lt!1546258)) (addToMapMapFromBucket!65 newBucket!200 (extractMap!416 (t!355646 (toList!2697 lm!1707))))))))

(declare-fun b!4332865 () Bool)

(declare-fun e!2696172 () Bool)

(assert (=> b!4332865 (= e!2696172 e!2696176)))

(declare-fun res!1776532 () Bool)

(assert (=> b!4332865 (=> res!1776532 e!2696176)))

(get-info :version)

(assert (=> b!4332865 (= res!1776532 (or (not ((_ is Cons!48606) (toList!2697 lm!1707))) (not (= (_1!27194 (h!54093 (toList!2697 lm!1707))) hash!377))))))

(declare-fun b!4332866 () Bool)

(declare-fun res!1776526 () Bool)

(assert (=> b!4332866 (=> (not res!1776526) (not e!2696173))))

(declare-datatypes ((Hashable!4749 0))(
  ( (HashableExt!4748 (__x!30452 Int)) )
))
(declare-fun hashF!1247 () Hashable!4749)

(declare-fun allKeysSameHashInMap!461 (ListLongMap!1347 Hashable!4749) Bool)

(assert (=> b!4332866 (= res!1776526 (allKeysSameHashInMap!461 lm!1707 hashF!1247))))

(declare-fun b!4332867 () Bool)

(declare-fun res!1776533 () Bool)

(assert (=> b!4332867 (=> (not res!1776533) (not e!2696173))))

(declare-fun hash!1293 (Hashable!4749 K!9960) (_ BitVec 64))

(assert (=> b!4332867 (= res!1776533 (= (hash!1293 hashF!1247 key!3918) hash!377))))

(declare-fun b!4332868 () Bool)

(declare-fun e!2696171 () Bool)

(declare-fun tp!1328697 () Bool)

(assert (=> b!4332868 (= e!2696171 tp!1328697)))

(declare-fun res!1776528 () Bool)

(assert (=> start!417656 (=> (not res!1776528) (not e!2696173))))

(declare-fun forall!8911 (List!48730 Int) Bool)

(assert (=> start!417656 (= res!1776528 (forall!8911 (toList!2697 lm!1707) lambda!134873))))

(assert (=> start!417656 e!2696173))

(assert (=> start!417656 e!2696170))

(assert (=> start!417656 true))

(declare-fun inv!64146 (ListLongMap!1347) Bool)

(assert (=> start!417656 (and (inv!64146 lm!1707) e!2696171)))

(assert (=> start!417656 tp_is_empty!24665))

(assert (=> start!417656 tp_is_empty!24667))

(declare-fun b!4332869 () Bool)

(declare-fun res!1776522 () Bool)

(assert (=> b!4332869 (=> (not res!1776522) (not e!2696173))))

(declare-fun allKeysSameHash!315 (List!48729 (_ BitVec 64) Hashable!4749) Bool)

(assert (=> b!4332869 (= res!1776522 (allKeysSameHash!315 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4332870 () Bool)

(declare-fun res!1776529 () Bool)

(assert (=> b!4332870 (=> (not res!1776529) (not e!2696172))))

(assert (=> b!4332870 (= res!1776529 (forall!8911 (toList!2697 lt!1546258) lambda!134873))))

(declare-fun b!4332871 () Bool)

(assert (=> b!4332871 (= e!2696175 true)))

(assert (=> b!4332871 e!2696172))

(declare-fun res!1776523 () Bool)

(assert (=> b!4332871 (=> (not res!1776523) (not e!2696172))))

(assert (=> b!4332871 (= res!1776523 (forall!8911 (toList!2697 lt!1546258) lambda!134873))))

(declare-fun +!393 (ListLongMap!1347 tuple2!47800) ListLongMap!1347)

(assert (=> b!4332871 (= lt!1546258 (+!393 lm!1707 lt!1546252))))

(assert (=> b!4332871 (= lt!1546252 (tuple2!47801 hash!377 newBucket!200))))

(declare-fun lt!1546256 () Unit!68202)

(declare-fun addValidProp!11 (ListLongMap!1347 Int (_ BitVec 64) List!48729) Unit!68202)

(assert (=> b!4332871 (= lt!1546256 (addValidProp!11 lm!1707 lambda!134873 hash!377 newBucket!200))))

(assert (=> b!4332871 (forall!8911 (toList!2697 lm!1707) lambda!134873)))

(declare-fun b!4332872 () Bool)

(declare-fun res!1776530 () Bool)

(assert (=> b!4332872 (=> (not res!1776530) (not e!2696173))))

(declare-fun contains!10632 (ListMap!1941 K!9960) Bool)

(assert (=> b!4332872 (= res!1776530 (contains!10632 (extractMap!416 (toList!2697 lm!1707)) key!3918))))

(assert (= (and start!417656 res!1776528) b!4332866))

(assert (= (and b!4332866 res!1776526) b!4332867))

(assert (= (and b!4332867 res!1776533) b!4332869))

(assert (= (and b!4332869 res!1776522) b!4332872))

(assert (= (and b!4332872 res!1776530) b!4332863))

(assert (= (and b!4332863 res!1776527) b!4332862))

(assert (= (and b!4332862 (not res!1776525)) b!4332859))

(assert (= (and b!4332859 (not res!1776524)) b!4332871))

(assert (= (and b!4332871 res!1776523) b!4332870))

(assert (= (and b!4332870 res!1776529) b!4332865))

(assert (= (and b!4332865 (not res!1776532)) b!4332861))

(assert (= (and b!4332861 res!1776531) b!4332864))

(assert (= (and start!417656 ((_ is Cons!48605) newBucket!200)) b!4332860))

(assert (= start!417656 b!4332868))

(declare-fun m!4927061 () Bool)

(assert (=> b!4332867 m!4927061))

(declare-fun m!4927063 () Bool)

(assert (=> b!4332863 m!4927063))

(declare-fun m!4927065 () Bool)

(assert (=> b!4332862 m!4927065))

(declare-fun m!4927067 () Bool)

(assert (=> b!4332862 m!4927067))

(declare-fun m!4927069 () Bool)

(assert (=> b!4332862 m!4927069))

(declare-fun m!4927071 () Bool)

(assert (=> b!4332862 m!4927071))

(declare-fun m!4927073 () Bool)

(assert (=> b!4332862 m!4927073))

(declare-fun m!4927075 () Bool)

(assert (=> b!4332859 m!4927075))

(declare-fun m!4927077 () Bool)

(assert (=> b!4332872 m!4927077))

(assert (=> b!4332872 m!4927077))

(declare-fun m!4927079 () Bool)

(assert (=> b!4332872 m!4927079))

(declare-fun m!4927081 () Bool)

(assert (=> b!4332869 m!4927081))

(declare-fun m!4927083 () Bool)

(assert (=> b!4332866 m!4927083))

(declare-fun m!4927085 () Bool)

(assert (=> start!417656 m!4927085))

(declare-fun m!4927087 () Bool)

(assert (=> start!417656 m!4927087))

(declare-fun m!4927089 () Bool)

(assert (=> b!4332864 m!4927089))

(declare-fun m!4927091 () Bool)

(assert (=> b!4332864 m!4927091))

(assert (=> b!4332864 m!4927091))

(declare-fun m!4927093 () Bool)

(assert (=> b!4332864 m!4927093))

(declare-fun m!4927095 () Bool)

(assert (=> b!4332870 m!4927095))

(assert (=> b!4332871 m!4927095))

(declare-fun m!4927097 () Bool)

(assert (=> b!4332871 m!4927097))

(declare-fun m!4927099 () Bool)

(assert (=> b!4332871 m!4927099))

(assert (=> b!4332871 m!4927085))

(check-sat (not b!4332860) (not b!4332867) (not b!4332863) (not b!4332868) (not b!4332862) (not b!4332870) (not start!417656) (not b!4332864) (not b!4332871) (not b!4332866) (not b!4332869) (not b!4332872) tp_is_empty!24665 (not b!4332859) tp_is_empty!24667)
(check-sat)
