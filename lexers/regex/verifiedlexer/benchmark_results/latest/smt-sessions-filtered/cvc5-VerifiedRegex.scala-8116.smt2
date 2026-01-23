; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417810 () Bool)

(assert start!417810)

(declare-fun b!4333771 () Bool)

(declare-fun res!1777105 () Bool)

(declare-fun e!2696713 () Bool)

(assert (=> b!4333771 (=> res!1777105 e!2696713)))

(declare-datatypes ((K!9983 0))(
  ( (K!9984 (val!16257 Int)) )
))
(declare-datatypes ((V!10229 0))(
  ( (V!10230 (val!16258 Int)) )
))
(declare-datatypes ((tuple2!47834 0))(
  ( (tuple2!47835 (_1!27211 K!9983) (_2!27211 V!10229)) )
))
(declare-datatypes ((List!48750 0))(
  ( (Nil!48626) (Cons!48626 (h!54117 tuple2!47834) (t!355666 List!48750)) )
))
(declare-fun newBucket!200 () List!48750)

(declare-fun noDuplicateKeys!366 (List!48750) Bool)

(assert (=> b!4333771 (= res!1777105 (not (noDuplicateKeys!366 newBucket!200)))))

(declare-fun b!4333772 () Bool)

(declare-fun res!1777103 () Bool)

(declare-fun e!2696714 () Bool)

(assert (=> b!4333772 (=> (not res!1777103) (not e!2696714))))

(declare-datatypes ((tuple2!47836 0))(
  ( (tuple2!47837 (_1!27212 (_ BitVec 64)) (_2!27212 List!48750)) )
))
(declare-datatypes ((List!48751 0))(
  ( (Nil!48627) (Cons!48627 (h!54118 tuple2!47836) (t!355667 List!48751)) )
))
(declare-datatypes ((ListLongMap!1365 0))(
  ( (ListLongMap!1366 (toList!2715 List!48751)) )
))
(declare-fun lm!1707 () ListLongMap!1365)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10660 (ListLongMap!1365 (_ BitVec 64)) Bool)

(assert (=> b!4333772 (= res!1777103 (contains!10660 lm!1707 hash!377))))

(declare-fun b!4333773 () Bool)

(declare-fun e!2696719 () Bool)

(declare-fun tp!1328788 () Bool)

(assert (=> b!4333773 (= e!2696719 tp!1328788)))

(declare-fun b!4333774 () Bool)

(assert (=> b!4333774 (= e!2696714 (not e!2696713))))

(declare-fun res!1777096 () Bool)

(assert (=> b!4333774 (=> res!1777096 e!2696713)))

(declare-fun lt!1546997 () List!48750)

(assert (=> b!4333774 (= res!1777096 (not (= newBucket!200 lt!1546997)))))

(declare-fun lt!1547003 () List!48750)

(declare-fun key!3918 () K!9983)

(declare-fun newValue!99 () V!10229)

(declare-fun removePairForKey!336 (List!48750 K!9983) List!48750)

(assert (=> b!4333774 (= lt!1546997 (Cons!48626 (tuple2!47835 key!3918 newValue!99) (removePairForKey!336 lt!1547003 key!3918)))))

(declare-fun lambda!135148 () Int)

(declare-datatypes ((Unit!68260 0))(
  ( (Unit!68261) )
))
(declare-fun lt!1547000 () Unit!68260)

(declare-fun lt!1547001 () tuple2!47836)

(declare-fun forallContained!1574 (List!48751 Int tuple2!47836) Unit!68260)

(assert (=> b!4333774 (= lt!1547000 (forallContained!1574 (toList!2715 lm!1707) lambda!135148 lt!1547001))))

(declare-fun contains!10661 (List!48751 tuple2!47836) Bool)

(assert (=> b!4333774 (contains!10661 (toList!2715 lm!1707) lt!1547001)))

(assert (=> b!4333774 (= lt!1547001 (tuple2!47837 hash!377 lt!1547003))))

(declare-fun lt!1547002 () Unit!68260)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!213 (List!48751 (_ BitVec 64) List!48750) Unit!68260)

(assert (=> b!4333774 (= lt!1547002 (lemmaGetValueByKeyImpliesContainsTuple!213 (toList!2715 lm!1707) hash!377 lt!1547003))))

(declare-fun apply!11218 (ListLongMap!1365 (_ BitVec 64)) List!48750)

(assert (=> b!4333774 (= lt!1547003 (apply!11218 lm!1707 hash!377))))

(declare-fun b!4333775 () Bool)

(declare-fun res!1777104 () Bool)

(assert (=> b!4333775 (=> (not res!1777104) (not e!2696714))))

(declare-datatypes ((ListMap!1959 0))(
  ( (ListMap!1960 (toList!2716 List!48750)) )
))
(declare-fun contains!10662 (ListMap!1959 K!9983) Bool)

(declare-fun extractMap!425 (List!48751) ListMap!1959)

(assert (=> b!4333775 (= res!1777104 (contains!10662 (extractMap!425 (toList!2715 lm!1707)) key!3918))))

(declare-fun b!4333776 () Bool)

(declare-fun res!1777106 () Bool)

(assert (=> b!4333776 (=> (not res!1777106) (not e!2696714))))

(declare-datatypes ((Hashable!4758 0))(
  ( (HashableExt!4757 (__x!30461 Int)) )
))
(declare-fun hashF!1247 () Hashable!4758)

(declare-fun allKeysSameHashInMap!470 (ListLongMap!1365 Hashable!4758) Bool)

(assert (=> b!4333776 (= res!1777106 (allKeysSameHashInMap!470 lm!1707 hashF!1247))))

(declare-fun b!4333777 () Bool)

(declare-fun res!1777100 () Bool)

(assert (=> b!4333777 (=> (not res!1777100) (not e!2696714))))

(declare-fun allKeysSameHash!324 (List!48750 (_ BitVec 64) Hashable!4758) Bool)

(assert (=> b!4333777 (= res!1777100 (allKeysSameHash!324 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1777098 () Bool)

(assert (=> start!417810 (=> (not res!1777098) (not e!2696714))))

(declare-fun forall!8924 (List!48751 Int) Bool)

(assert (=> start!417810 (= res!1777098 (forall!8924 (toList!2715 lm!1707) lambda!135148))))

(assert (=> start!417810 e!2696714))

(declare-fun e!2696718 () Bool)

(assert (=> start!417810 e!2696718))

(assert (=> start!417810 true))

(declare-fun inv!64170 (ListLongMap!1365) Bool)

(assert (=> start!417810 (and (inv!64170 lm!1707) e!2696719)))

(declare-fun tp_is_empty!24701 () Bool)

(assert (=> start!417810 tp_is_empty!24701))

(declare-fun tp_is_empty!24703 () Bool)

(assert (=> start!417810 tp_is_empty!24703))

(declare-fun lt!1547004 () ListMap!1959)

(declare-fun e!2696716 () Bool)

(declare-fun b!4333778 () Bool)

(declare-fun lt!1546995 () ListMap!1959)

(declare-fun addToMapMapFromBucket!74 (List!48750 ListMap!1959) ListMap!1959)

(assert (=> b!4333778 (= e!2696716 (= lt!1546995 (addToMapMapFromBucket!74 lt!1546997 lt!1547004)))))

(declare-fun b!4333779 () Bool)

(declare-fun res!1777097 () Bool)

(declare-fun e!2696717 () Bool)

(assert (=> b!4333779 (=> (not res!1777097) (not e!2696717))))

(declare-fun lt!1546998 () ListLongMap!1365)

(assert (=> b!4333779 (= res!1777097 (forall!8924 (toList!2715 lt!1546998) lambda!135148))))

(declare-fun b!4333780 () Bool)

(declare-fun res!1777099 () Bool)

(assert (=> b!4333780 (=> (not res!1777099) (not e!2696714))))

(declare-fun hash!1304 (Hashable!4758 K!9983) (_ BitVec 64))

(assert (=> b!4333780 (= res!1777099 (= (hash!1304 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1328787 () Bool)

(declare-fun b!4333781 () Bool)

(assert (=> b!4333781 (= e!2696718 (and tp_is_empty!24701 tp_is_empty!24703 tp!1328787))))

(declare-fun b!4333782 () Bool)

(declare-fun e!2696715 () Bool)

(assert (=> b!4333782 (= e!2696715 (noDuplicateKeys!366 lt!1547003))))

(assert (=> b!4333782 e!2696716))

(declare-fun res!1777102 () Bool)

(assert (=> b!4333782 (=> (not res!1777102) (not e!2696716))))

(assert (=> b!4333782 (= res!1777102 (= lt!1546995 (addToMapMapFromBucket!74 newBucket!200 lt!1547004)))))

(assert (=> b!4333782 (= lt!1546995 (extractMap!425 (toList!2715 lt!1546998)))))

(assert (=> b!4333782 (= lt!1547004 (extractMap!425 (t!355667 (toList!2715 lm!1707))))))

(declare-fun b!4333783 () Bool)

(assert (=> b!4333783 (= e!2696713 e!2696715)))

(declare-fun res!1777101 () Bool)

(assert (=> b!4333783 (=> res!1777101 e!2696715)))

(assert (=> b!4333783 (= res!1777101 (or (not (is-Cons!48627 (toList!2715 lm!1707))) (not (= (_1!27212 (h!54118 (toList!2715 lm!1707))) hash!377))))))

(assert (=> b!4333783 e!2696717))

(declare-fun res!1777107 () Bool)

(assert (=> b!4333783 (=> (not res!1777107) (not e!2696717))))

(assert (=> b!4333783 (= res!1777107 (forall!8924 (toList!2715 lt!1546998) lambda!135148))))

(declare-fun lt!1546996 () tuple2!47836)

(declare-fun +!405 (ListLongMap!1365 tuple2!47836) ListLongMap!1365)

(assert (=> b!4333783 (= lt!1546998 (+!405 lm!1707 lt!1546996))))

(assert (=> b!4333783 (= lt!1546996 (tuple2!47837 hash!377 newBucket!200))))

(declare-fun lt!1546999 () Unit!68260)

(declare-fun addValidProp!20 (ListLongMap!1365 Int (_ BitVec 64) List!48750) Unit!68260)

(assert (=> b!4333783 (= lt!1546999 (addValidProp!20 lm!1707 lambda!135148 hash!377 newBucket!200))))

(assert (=> b!4333783 (forall!8924 (toList!2715 lm!1707) lambda!135148)))

(declare-fun b!4333784 () Bool)

(assert (=> b!4333784 (= e!2696717 (or (not (is-Cons!48627 (toList!2715 lm!1707))) (not (= (_1!27212 (h!54118 (toList!2715 lm!1707))) hash!377)) (= lt!1546998 (ListLongMap!1366 (Cons!48627 lt!1546996 (t!355667 (toList!2715 lm!1707)))))))))

(assert (= (and start!417810 res!1777098) b!4333776))

(assert (= (and b!4333776 res!1777106) b!4333780))

(assert (= (and b!4333780 res!1777099) b!4333777))

(assert (= (and b!4333777 res!1777100) b!4333775))

(assert (= (and b!4333775 res!1777104) b!4333772))

(assert (= (and b!4333772 res!1777103) b!4333774))

(assert (= (and b!4333774 (not res!1777096)) b!4333771))

(assert (= (and b!4333771 (not res!1777105)) b!4333783))

(assert (= (and b!4333783 res!1777107) b!4333779))

(assert (= (and b!4333779 res!1777097) b!4333784))

(assert (= (and b!4333783 (not res!1777101)) b!4333782))

(assert (= (and b!4333782 res!1777102) b!4333778))

(assert (= (and start!417810 (is-Cons!48626 newBucket!200)) b!4333781))

(assert (= start!417810 b!4333773))

(declare-fun m!4928055 () Bool)

(assert (=> b!4333771 m!4928055))

(declare-fun m!4928057 () Bool)

(assert (=> b!4333772 m!4928057))

(declare-fun m!4928059 () Bool)

(assert (=> start!417810 m!4928059))

(declare-fun m!4928061 () Bool)

(assert (=> start!417810 m!4928061))

(declare-fun m!4928063 () Bool)

(assert (=> b!4333783 m!4928063))

(declare-fun m!4928065 () Bool)

(assert (=> b!4333783 m!4928065))

(declare-fun m!4928067 () Bool)

(assert (=> b!4333783 m!4928067))

(assert (=> b!4333783 m!4928059))

(declare-fun m!4928069 () Bool)

(assert (=> b!4333775 m!4928069))

(assert (=> b!4333775 m!4928069))

(declare-fun m!4928071 () Bool)

(assert (=> b!4333775 m!4928071))

(assert (=> b!4333779 m!4928063))

(declare-fun m!4928073 () Bool)

(assert (=> b!4333774 m!4928073))

(declare-fun m!4928075 () Bool)

(assert (=> b!4333774 m!4928075))

(declare-fun m!4928077 () Bool)

(assert (=> b!4333774 m!4928077))

(declare-fun m!4928079 () Bool)

(assert (=> b!4333774 m!4928079))

(declare-fun m!4928081 () Bool)

(assert (=> b!4333774 m!4928081))

(declare-fun m!4928083 () Bool)

(assert (=> b!4333780 m!4928083))

(declare-fun m!4928085 () Bool)

(assert (=> b!4333777 m!4928085))

(declare-fun m!4928087 () Bool)

(assert (=> b!4333776 m!4928087))

(declare-fun m!4928089 () Bool)

(assert (=> b!4333782 m!4928089))

(declare-fun m!4928091 () Bool)

(assert (=> b!4333782 m!4928091))

(declare-fun m!4928093 () Bool)

(assert (=> b!4333782 m!4928093))

(declare-fun m!4928095 () Bool)

(assert (=> b!4333782 m!4928095))

(declare-fun m!4928097 () Bool)

(assert (=> b!4333778 m!4928097))

(push 1)

(assert (not b!4333779))

(assert (not b!4333775))

(assert (not b!4333778))

(assert (not b!4333776))

(assert (not b!4333773))

(assert (not b!4333772))

(assert tp_is_empty!24703)

(assert (not b!4333771))

(assert (not b!4333780))

(assert (not start!417810))

(assert (not b!4333783))

(assert (not b!4333782))

(assert (not b!4333781))

(assert (not b!4333774))

(assert (not b!4333777))

(assert tp_is_empty!24701)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1273941 () Bool)

(declare-fun e!2696756 () Bool)

(assert (=> d!1273941 e!2696756))

(declare-fun res!1777152 () Bool)

(assert (=> d!1273941 (=> res!1777152 e!2696756)))

(declare-fun lt!1547048 () Bool)

(assert (=> d!1273941 (= res!1777152 (not lt!1547048))))

(declare-fun lt!1547049 () Bool)

(assert (=> d!1273941 (= lt!1547048 lt!1547049)))

(declare-fun lt!1547051 () Unit!68260)

(declare-fun e!2696755 () Unit!68260)

(assert (=> d!1273941 (= lt!1547051 e!2696755)))

(declare-fun c!737033 () Bool)

(assert (=> d!1273941 (= c!737033 lt!1547049)))

(declare-fun containsKey!501 (List!48751 (_ BitVec 64)) Bool)

(assert (=> d!1273941 (= lt!1547049 (containsKey!501 (toList!2715 lm!1707) hash!377))))

(assert (=> d!1273941 (= (contains!10660 lm!1707 hash!377) lt!1547048)))

(declare-fun b!4333847 () Bool)

(declare-fun lt!1547050 () Unit!68260)

(assert (=> b!4333847 (= e!2696755 lt!1547050)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!247 (List!48751 (_ BitVec 64)) Unit!68260)

(assert (=> b!4333847 (= lt!1547050 (lemmaContainsKeyImpliesGetValueByKeyDefined!247 (toList!2715 lm!1707) hash!377))))

(declare-datatypes ((Option!10347 0))(
  ( (None!10346) (Some!10346 (v!43066 List!48750)) )
))
(declare-fun isDefined!7644 (Option!10347) Bool)

(declare-fun getValueByKey!333 (List!48751 (_ BitVec 64)) Option!10347)

(assert (=> b!4333847 (isDefined!7644 (getValueByKey!333 (toList!2715 lm!1707) hash!377))))

(declare-fun b!4333848 () Bool)

(declare-fun Unit!68264 () Unit!68260)

(assert (=> b!4333848 (= e!2696755 Unit!68264)))

(declare-fun b!4333849 () Bool)

(assert (=> b!4333849 (= e!2696756 (isDefined!7644 (getValueByKey!333 (toList!2715 lm!1707) hash!377)))))

(assert (= (and d!1273941 c!737033) b!4333847))

(assert (= (and d!1273941 (not c!737033)) b!4333848))

(assert (= (and d!1273941 (not res!1777152)) b!4333849))

(declare-fun m!4928155 () Bool)

(assert (=> d!1273941 m!4928155))

(declare-fun m!4928157 () Bool)

(assert (=> b!4333847 m!4928157))

(declare-fun m!4928159 () Bool)

(assert (=> b!4333847 m!4928159))

(assert (=> b!4333847 m!4928159))

(declare-fun m!4928161 () Bool)

(assert (=> b!4333847 m!4928161))

(assert (=> b!4333849 m!4928159))

(assert (=> b!4333849 m!4928159))

(assert (=> b!4333849 m!4928161))

(assert (=> b!4333772 d!1273941))

(declare-fun d!1273943 () Bool)

(declare-fun res!1777157 () Bool)

(declare-fun e!2696763 () Bool)

(assert (=> d!1273943 (=> res!1777157 e!2696763)))

(assert (=> d!1273943 (= res!1777157 (not (is-Cons!48626 lt!1547003)))))

(assert (=> d!1273943 (= (noDuplicateKeys!366 lt!1547003) e!2696763)))

(declare-fun b!4333858 () Bool)

(declare-fun e!2696764 () Bool)

(assert (=> b!4333858 (= e!2696763 e!2696764)))

(declare-fun res!1777158 () Bool)

(assert (=> b!4333858 (=> (not res!1777158) (not e!2696764))))

(declare-fun containsKey!502 (List!48750 K!9983) Bool)

(assert (=> b!4333858 (= res!1777158 (not (containsKey!502 (t!355666 lt!1547003) (_1!27211 (h!54117 lt!1547003)))))))

(declare-fun b!4333859 () Bool)

(assert (=> b!4333859 (= e!2696764 (noDuplicateKeys!366 (t!355666 lt!1547003)))))

(assert (= (and d!1273943 (not res!1777157)) b!4333858))

(assert (= (and b!4333858 res!1777158) b!4333859))

(declare-fun m!4928167 () Bool)

(assert (=> b!4333858 m!4928167))

(declare-fun m!4928169 () Bool)

(assert (=> b!4333859 m!4928169))

(assert (=> b!4333782 d!1273943))

(declare-fun b!4333899 () Bool)

(assert (=> b!4333899 true))

(declare-fun bs!608146 () Bool)

(declare-fun b!4333900 () Bool)

(assert (= bs!608146 (and b!4333900 b!4333899)))

(declare-fun lambda!135192 () Int)

(declare-fun lambda!135191 () Int)

(assert (=> bs!608146 (= lambda!135192 lambda!135191)))

(assert (=> b!4333900 true))

(declare-fun lt!1547130 () ListMap!1959)

(declare-fun lambda!135193 () Int)

(assert (=> bs!608146 (= (= lt!1547130 lt!1547004) (= lambda!135193 lambda!135191))))

(assert (=> b!4333900 (= (= lt!1547130 lt!1547004) (= lambda!135193 lambda!135192))))

(assert (=> b!4333900 true))

(declare-fun bs!608147 () Bool)

(declare-fun d!1273947 () Bool)

(assert (= bs!608147 (and d!1273947 b!4333899)))

(declare-fun lt!1547116 () ListMap!1959)

(declare-fun lambda!135194 () Int)

(assert (=> bs!608147 (= (= lt!1547116 lt!1547004) (= lambda!135194 lambda!135191))))

(declare-fun bs!608148 () Bool)

(assert (= bs!608148 (and d!1273947 b!4333900)))

(assert (=> bs!608148 (= (= lt!1547116 lt!1547004) (= lambda!135194 lambda!135192))))

(assert (=> bs!608148 (= (= lt!1547116 lt!1547130) (= lambda!135194 lambda!135193))))

(assert (=> d!1273947 true))

(declare-fun b!4333896 () Bool)

(declare-fun e!2696793 () Bool)

(declare-fun invariantList!617 (List!48750) Bool)

(assert (=> b!4333896 (= e!2696793 (invariantList!617 (toList!2716 lt!1547116)))))

(declare-fun b!4333897 () Bool)

(declare-fun e!2696791 () Bool)

(declare-fun call!301148 () Bool)

(assert (=> b!4333897 (= e!2696791 call!301148)))

(assert (=> d!1273947 e!2696793))

(declare-fun res!1777189 () Bool)

(assert (=> d!1273947 (=> (not res!1777189) (not e!2696793))))

(declare-fun forall!8926 (List!48750 Int) Bool)

(assert (=> d!1273947 (= res!1777189 (forall!8926 newBucket!200 lambda!135194))))

(declare-fun e!2696792 () ListMap!1959)

(assert (=> d!1273947 (= lt!1547116 e!2696792)))

(declare-fun c!737038 () Bool)

(assert (=> d!1273947 (= c!737038 (is-Nil!48626 newBucket!200))))

(assert (=> d!1273947 (noDuplicateKeys!366 newBucket!200)))

(assert (=> d!1273947 (= (addToMapMapFromBucket!74 newBucket!200 lt!1547004) lt!1547116)))

(declare-fun bm!301143 () Bool)

(assert (=> bm!301143 (= call!301148 (forall!8926 (toList!2716 lt!1547004) (ite c!737038 lambda!135191 lambda!135193)))))

(declare-fun b!4333898 () Bool)

(declare-fun res!1777188 () Bool)

(assert (=> b!4333898 (=> (not res!1777188) (not e!2696793))))

(assert (=> b!4333898 (= res!1777188 (forall!8926 (toList!2716 lt!1547004) lambda!135194))))

(assert (=> b!4333899 (= e!2696792 lt!1547004)))

(declare-fun lt!1547120 () Unit!68260)

(declare-fun call!301150 () Unit!68260)

(assert (=> b!4333899 (= lt!1547120 call!301150)))

(assert (=> b!4333899 call!301148))

(declare-fun lt!1547117 () Unit!68260)

(assert (=> b!4333899 (= lt!1547117 lt!1547120)))

(declare-fun call!301149 () Bool)

(assert (=> b!4333899 call!301149))

(declare-fun lt!1547128 () Unit!68260)

(declare-fun Unit!68265 () Unit!68260)

(assert (=> b!4333899 (= lt!1547128 Unit!68265)))

(assert (=> b!4333900 (= e!2696792 lt!1547130)))

(declare-fun lt!1547127 () ListMap!1959)

(declare-fun +!407 (ListMap!1959 tuple2!47834) ListMap!1959)

(assert (=> b!4333900 (= lt!1547127 (+!407 lt!1547004 (h!54117 newBucket!200)))))

(assert (=> b!4333900 (= lt!1547130 (addToMapMapFromBucket!74 (t!355666 newBucket!200) (+!407 lt!1547004 (h!54117 newBucket!200))))))

(declare-fun lt!1547134 () Unit!68260)

(assert (=> b!4333900 (= lt!1547134 call!301150)))

(assert (=> b!4333900 (forall!8926 (toList!2716 lt!1547004) lambda!135192)))

(declare-fun lt!1547122 () Unit!68260)

(assert (=> b!4333900 (= lt!1547122 lt!1547134)))

(assert (=> b!4333900 (forall!8926 (toList!2716 lt!1547127) lambda!135193)))

(declare-fun lt!1547133 () Unit!68260)

(declare-fun Unit!68266 () Unit!68260)

(assert (=> b!4333900 (= lt!1547133 Unit!68266)))

(assert (=> b!4333900 call!301149))

(declare-fun lt!1547135 () Unit!68260)

(declare-fun Unit!68267 () Unit!68260)

(assert (=> b!4333900 (= lt!1547135 Unit!68267)))

(declare-fun lt!1547123 () Unit!68260)

(declare-fun Unit!68268 () Unit!68260)

(assert (=> b!4333900 (= lt!1547123 Unit!68268)))

(declare-fun lt!1547129 () Unit!68260)

(declare-fun forallContained!1576 (List!48750 Int tuple2!47834) Unit!68260)

(assert (=> b!4333900 (= lt!1547129 (forallContained!1576 (toList!2716 lt!1547127) lambda!135193 (h!54117 newBucket!200)))))

(assert (=> b!4333900 (contains!10662 lt!1547127 (_1!27211 (h!54117 newBucket!200)))))

(declare-fun lt!1547121 () Unit!68260)

(declare-fun Unit!68269 () Unit!68260)

(assert (=> b!4333900 (= lt!1547121 Unit!68269)))

(assert (=> b!4333900 (contains!10662 lt!1547130 (_1!27211 (h!54117 newBucket!200)))))

(declare-fun lt!1547124 () Unit!68260)

(declare-fun Unit!68270 () Unit!68260)

(assert (=> b!4333900 (= lt!1547124 Unit!68270)))

(assert (=> b!4333900 (forall!8926 newBucket!200 lambda!135193)))

(declare-fun lt!1547126 () Unit!68260)

(declare-fun Unit!68271 () Unit!68260)

(assert (=> b!4333900 (= lt!1547126 Unit!68271)))

(assert (=> b!4333900 (forall!8926 (toList!2716 lt!1547127) lambda!135193)))

(declare-fun lt!1547118 () Unit!68260)

(declare-fun Unit!68272 () Unit!68260)

(assert (=> b!4333900 (= lt!1547118 Unit!68272)))

(declare-fun lt!1547119 () Unit!68260)

(declare-fun Unit!68273 () Unit!68260)

(assert (=> b!4333900 (= lt!1547119 Unit!68273)))

(declare-fun lt!1547132 () Unit!68260)

(declare-fun addForallContainsKeyThenBeforeAdding!10 (ListMap!1959 ListMap!1959 K!9983 V!10229) Unit!68260)

(assert (=> b!4333900 (= lt!1547132 (addForallContainsKeyThenBeforeAdding!10 lt!1547004 lt!1547130 (_1!27211 (h!54117 newBucket!200)) (_2!27211 (h!54117 newBucket!200))))))

(assert (=> b!4333900 (forall!8926 (toList!2716 lt!1547004) lambda!135193)))

(declare-fun lt!1547125 () Unit!68260)

(assert (=> b!4333900 (= lt!1547125 lt!1547132)))

(assert (=> b!4333900 (forall!8926 (toList!2716 lt!1547004) lambda!135193)))

(declare-fun lt!1547136 () Unit!68260)

(declare-fun Unit!68274 () Unit!68260)

(assert (=> b!4333900 (= lt!1547136 Unit!68274)))

(declare-fun res!1777190 () Bool)

(assert (=> b!4333900 (= res!1777190 (forall!8926 newBucket!200 lambda!135193))))

(assert (=> b!4333900 (=> (not res!1777190) (not e!2696791))))

(assert (=> b!4333900 e!2696791))

(declare-fun lt!1547131 () Unit!68260)

(declare-fun Unit!68275 () Unit!68260)

(assert (=> b!4333900 (= lt!1547131 Unit!68275)))

(declare-fun bm!301144 () Bool)

(assert (=> bm!301144 (= call!301149 (forall!8926 (ite c!737038 (toList!2716 lt!1547004) (t!355666 newBucket!200)) (ite c!737038 lambda!135191 lambda!135193)))))

(declare-fun bm!301145 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!10 (ListMap!1959) Unit!68260)

(assert (=> bm!301145 (= call!301150 (lemmaContainsAllItsOwnKeys!10 lt!1547004))))

(assert (= (and d!1273947 c!737038) b!4333899))

(assert (= (and d!1273947 (not c!737038)) b!4333900))

(assert (= (and b!4333900 res!1777190) b!4333897))

(assert (= (or b!4333899 b!4333900) bm!301145))

(assert (= (or b!4333899 b!4333900) bm!301144))

(assert (= (or b!4333899 b!4333897) bm!301143))

(assert (= (and d!1273947 res!1777189) b!4333898))

(assert (= (and b!4333898 res!1777188) b!4333896))

(declare-fun m!4928211 () Bool)

(assert (=> b!4333898 m!4928211))

(declare-fun m!4928213 () Bool)

(assert (=> bm!301143 m!4928213))

(declare-fun m!4928215 () Bool)

(assert (=> bm!301144 m!4928215))

(declare-fun m!4928217 () Bool)

(assert (=> b!4333900 m!4928217))

(declare-fun m!4928219 () Bool)

(assert (=> b!4333900 m!4928219))

(declare-fun m!4928221 () Bool)

(assert (=> b!4333900 m!4928221))

(declare-fun m!4928223 () Bool)

(assert (=> b!4333900 m!4928223))

(assert (=> b!4333900 m!4928217))

(declare-fun m!4928225 () Bool)

(assert (=> b!4333900 m!4928225))

(declare-fun m!4928227 () Bool)

(assert (=> b!4333900 m!4928227))

(assert (=> b!4333900 m!4928223))

(declare-fun m!4928229 () Bool)

(assert (=> b!4333900 m!4928229))

(declare-fun m!4928231 () Bool)

(assert (=> b!4333900 m!4928231))

(declare-fun m!4928233 () Bool)

(assert (=> b!4333900 m!4928233))

(assert (=> b!4333900 m!4928219))

(assert (=> b!4333900 m!4928221))

(declare-fun m!4928235 () Bool)

(assert (=> b!4333900 m!4928235))

(declare-fun m!4928237 () Bool)

(assert (=> bm!301145 m!4928237))

(declare-fun m!4928239 () Bool)

(assert (=> d!1273947 m!4928239))

(assert (=> d!1273947 m!4928055))

(declare-fun m!4928241 () Bool)

(assert (=> b!4333896 m!4928241))

(assert (=> b!4333782 d!1273947))

(declare-fun bs!608149 () Bool)

(declare-fun d!1273963 () Bool)

(assert (= bs!608149 (and d!1273963 start!417810)))

(declare-fun lambda!135197 () Int)

(assert (=> bs!608149 (= lambda!135197 lambda!135148)))

(declare-fun lt!1547139 () ListMap!1959)

(assert (=> d!1273963 (invariantList!617 (toList!2716 lt!1547139))))

(declare-fun e!2696796 () ListMap!1959)

(assert (=> d!1273963 (= lt!1547139 e!2696796)))

(declare-fun c!737041 () Bool)

(assert (=> d!1273963 (= c!737041 (is-Cons!48627 (toList!2715 lt!1546998)))))

(assert (=> d!1273963 (forall!8924 (toList!2715 lt!1546998) lambda!135197)))

(assert (=> d!1273963 (= (extractMap!425 (toList!2715 lt!1546998)) lt!1547139)))

(declare-fun b!4333907 () Bool)

(assert (=> b!4333907 (= e!2696796 (addToMapMapFromBucket!74 (_2!27212 (h!54118 (toList!2715 lt!1546998))) (extractMap!425 (t!355667 (toList!2715 lt!1546998)))))))

(declare-fun b!4333908 () Bool)

(assert (=> b!4333908 (= e!2696796 (ListMap!1960 Nil!48626))))

(assert (= (and d!1273963 c!737041) b!4333907))

(assert (= (and d!1273963 (not c!737041)) b!4333908))

(declare-fun m!4928243 () Bool)

(assert (=> d!1273963 m!4928243))

(declare-fun m!4928245 () Bool)

(assert (=> d!1273963 m!4928245))

(declare-fun m!4928247 () Bool)

(assert (=> b!4333907 m!4928247))

(assert (=> b!4333907 m!4928247))

(declare-fun m!4928249 () Bool)

(assert (=> b!4333907 m!4928249))

(assert (=> b!4333782 d!1273963))

(declare-fun bs!608150 () Bool)

(declare-fun d!1273965 () Bool)

(assert (= bs!608150 (and d!1273965 start!417810)))

(declare-fun lambda!135198 () Int)

(assert (=> bs!608150 (= lambda!135198 lambda!135148)))

(declare-fun bs!608151 () Bool)

(assert (= bs!608151 (and d!1273965 d!1273963)))

(assert (=> bs!608151 (= lambda!135198 lambda!135197)))

(declare-fun lt!1547140 () ListMap!1959)

(assert (=> d!1273965 (invariantList!617 (toList!2716 lt!1547140))))

(declare-fun e!2696797 () ListMap!1959)

(assert (=> d!1273965 (= lt!1547140 e!2696797)))

(declare-fun c!737042 () Bool)

(assert (=> d!1273965 (= c!737042 (is-Cons!48627 (t!355667 (toList!2715 lm!1707))))))

(assert (=> d!1273965 (forall!8924 (t!355667 (toList!2715 lm!1707)) lambda!135198)))

(assert (=> d!1273965 (= (extractMap!425 (t!355667 (toList!2715 lm!1707))) lt!1547140)))

(declare-fun b!4333909 () Bool)

(assert (=> b!4333909 (= e!2696797 (addToMapMapFromBucket!74 (_2!27212 (h!54118 (t!355667 (toList!2715 lm!1707)))) (extractMap!425 (t!355667 (t!355667 (toList!2715 lm!1707))))))))

(declare-fun b!4333910 () Bool)

(assert (=> b!4333910 (= e!2696797 (ListMap!1960 Nil!48626))))

(assert (= (and d!1273965 c!737042) b!4333909))

(assert (= (and d!1273965 (not c!737042)) b!4333910))

(declare-fun m!4928251 () Bool)

(assert (=> d!1273965 m!4928251))

(declare-fun m!4928253 () Bool)

(assert (=> d!1273965 m!4928253))

(declare-fun m!4928255 () Bool)

(assert (=> b!4333909 m!4928255))

(assert (=> b!4333909 m!4928255))

(declare-fun m!4928257 () Bool)

(assert (=> b!4333909 m!4928257))

(assert (=> b!4333782 d!1273965))

(declare-fun d!1273967 () Bool)

(declare-fun res!1777191 () Bool)

(declare-fun e!2696798 () Bool)

(assert (=> d!1273967 (=> res!1777191 e!2696798)))

(assert (=> d!1273967 (= res!1777191 (not (is-Cons!48626 newBucket!200)))))

(assert (=> d!1273967 (= (noDuplicateKeys!366 newBucket!200) e!2696798)))

(declare-fun b!4333911 () Bool)

(declare-fun e!2696799 () Bool)

(assert (=> b!4333911 (= e!2696798 e!2696799)))

(declare-fun res!1777192 () Bool)

(assert (=> b!4333911 (=> (not res!1777192) (not e!2696799))))

(assert (=> b!4333911 (= res!1777192 (not (containsKey!502 (t!355666 newBucket!200) (_1!27211 (h!54117 newBucket!200)))))))

(declare-fun b!4333912 () Bool)

(assert (=> b!4333912 (= e!2696799 (noDuplicateKeys!366 (t!355666 newBucket!200)))))

(assert (= (and d!1273967 (not res!1777191)) b!4333911))

(assert (= (and b!4333911 res!1777192) b!4333912))

(declare-fun m!4928259 () Bool)

(assert (=> b!4333911 m!4928259))

(declare-fun m!4928261 () Bool)

(assert (=> b!4333912 m!4928261))

(assert (=> b!4333771 d!1273967))

(declare-fun bs!608152 () Bool)

(declare-fun b!4333916 () Bool)

(assert (= bs!608152 (and b!4333916 b!4333899)))

(declare-fun lambda!135199 () Int)

(assert (=> bs!608152 (= lambda!135199 lambda!135191)))

(declare-fun bs!608153 () Bool)

(assert (= bs!608153 (and b!4333916 b!4333900)))

(assert (=> bs!608153 (= lambda!135199 lambda!135192)))

(assert (=> bs!608153 (= (= lt!1547004 lt!1547130) (= lambda!135199 lambda!135193))))

(declare-fun bs!608154 () Bool)

(assert (= bs!608154 (and b!4333916 d!1273947)))

(assert (=> bs!608154 (= (= lt!1547004 lt!1547116) (= lambda!135199 lambda!135194))))

(assert (=> b!4333916 true))

(declare-fun bs!608155 () Bool)

(declare-fun b!4333917 () Bool)

(assert (= bs!608155 (and b!4333917 b!4333899)))

(declare-fun lambda!135200 () Int)

(assert (=> bs!608155 (= lambda!135200 lambda!135191)))

(declare-fun bs!608156 () Bool)

(assert (= bs!608156 (and b!4333917 b!4333900)))

(assert (=> bs!608156 (= (= lt!1547004 lt!1547130) (= lambda!135200 lambda!135193))))

(declare-fun bs!608157 () Bool)

(assert (= bs!608157 (and b!4333917 d!1273947)))

(assert (=> bs!608157 (= (= lt!1547004 lt!1547116) (= lambda!135200 lambda!135194))))

(assert (=> bs!608156 (= lambda!135200 lambda!135192)))

(declare-fun bs!608158 () Bool)

(assert (= bs!608158 (and b!4333917 b!4333916)))

(assert (=> bs!608158 (= lambda!135200 lambda!135199)))

(assert (=> b!4333917 true))

(declare-fun lambda!135201 () Int)

(declare-fun lt!1547155 () ListMap!1959)

(assert (=> bs!608156 (= (= lt!1547155 lt!1547130) (= lambda!135201 lambda!135193))))

(assert (=> bs!608157 (= (= lt!1547155 lt!1547116) (= lambda!135201 lambda!135194))))

(assert (=> b!4333917 (= (= lt!1547155 lt!1547004) (= lambda!135201 lambda!135200))))

(assert (=> bs!608155 (= (= lt!1547155 lt!1547004) (= lambda!135201 lambda!135191))))

(assert (=> bs!608156 (= (= lt!1547155 lt!1547004) (= lambda!135201 lambda!135192))))

(assert (=> bs!608158 (= (= lt!1547155 lt!1547004) (= lambda!135201 lambda!135199))))

(assert (=> b!4333917 true))

(declare-fun bs!608159 () Bool)

(declare-fun d!1273969 () Bool)

(assert (= bs!608159 (and d!1273969 b!4333917)))

(declare-fun lambda!135202 () Int)

(declare-fun lt!1547141 () ListMap!1959)

(assert (=> bs!608159 (= (= lt!1547141 lt!1547155) (= lambda!135202 lambda!135201))))

(declare-fun bs!608160 () Bool)

(assert (= bs!608160 (and d!1273969 b!4333900)))

(assert (=> bs!608160 (= (= lt!1547141 lt!1547130) (= lambda!135202 lambda!135193))))

(declare-fun bs!608161 () Bool)

(assert (= bs!608161 (and d!1273969 d!1273947)))

(assert (=> bs!608161 (= (= lt!1547141 lt!1547116) (= lambda!135202 lambda!135194))))

(assert (=> bs!608159 (= (= lt!1547141 lt!1547004) (= lambda!135202 lambda!135200))))

(declare-fun bs!608162 () Bool)

(assert (= bs!608162 (and d!1273969 b!4333899)))

(assert (=> bs!608162 (= (= lt!1547141 lt!1547004) (= lambda!135202 lambda!135191))))

(assert (=> bs!608160 (= (= lt!1547141 lt!1547004) (= lambda!135202 lambda!135192))))

(declare-fun bs!608163 () Bool)

(assert (= bs!608163 (and d!1273969 b!4333916)))

(assert (=> bs!608163 (= (= lt!1547141 lt!1547004) (= lambda!135202 lambda!135199))))

(assert (=> d!1273969 true))

(declare-fun b!4333913 () Bool)

(declare-fun e!2696802 () Bool)

(assert (=> b!4333913 (= e!2696802 (invariantList!617 (toList!2716 lt!1547141)))))

(declare-fun b!4333914 () Bool)

(declare-fun e!2696800 () Bool)

(declare-fun call!301151 () Bool)

(assert (=> b!4333914 (= e!2696800 call!301151)))

(assert (=> d!1273969 e!2696802))

(declare-fun res!1777194 () Bool)

(assert (=> d!1273969 (=> (not res!1777194) (not e!2696802))))

(assert (=> d!1273969 (= res!1777194 (forall!8926 lt!1546997 lambda!135202))))

(declare-fun e!2696801 () ListMap!1959)

(assert (=> d!1273969 (= lt!1547141 e!2696801)))

(declare-fun c!737043 () Bool)

(assert (=> d!1273969 (= c!737043 (is-Nil!48626 lt!1546997))))

(assert (=> d!1273969 (noDuplicateKeys!366 lt!1546997)))

(assert (=> d!1273969 (= (addToMapMapFromBucket!74 lt!1546997 lt!1547004) lt!1547141)))

(declare-fun bm!301146 () Bool)

(assert (=> bm!301146 (= call!301151 (forall!8926 (toList!2716 lt!1547004) (ite c!737043 lambda!135199 lambda!135201)))))

(declare-fun b!4333915 () Bool)

(declare-fun res!1777193 () Bool)

(assert (=> b!4333915 (=> (not res!1777193) (not e!2696802))))

(assert (=> b!4333915 (= res!1777193 (forall!8926 (toList!2716 lt!1547004) lambda!135202))))

(assert (=> b!4333916 (= e!2696801 lt!1547004)))

(declare-fun lt!1547145 () Unit!68260)

(declare-fun call!301153 () Unit!68260)

(assert (=> b!4333916 (= lt!1547145 call!301153)))

(assert (=> b!4333916 call!301151))

(declare-fun lt!1547142 () Unit!68260)

(assert (=> b!4333916 (= lt!1547142 lt!1547145)))

(declare-fun call!301152 () Bool)

(assert (=> b!4333916 call!301152))

(declare-fun lt!1547153 () Unit!68260)

(declare-fun Unit!68276 () Unit!68260)

(assert (=> b!4333916 (= lt!1547153 Unit!68276)))

(assert (=> b!4333917 (= e!2696801 lt!1547155)))

(declare-fun lt!1547152 () ListMap!1959)

(assert (=> b!4333917 (= lt!1547152 (+!407 lt!1547004 (h!54117 lt!1546997)))))

(assert (=> b!4333917 (= lt!1547155 (addToMapMapFromBucket!74 (t!355666 lt!1546997) (+!407 lt!1547004 (h!54117 lt!1546997))))))

(declare-fun lt!1547159 () Unit!68260)

(assert (=> b!4333917 (= lt!1547159 call!301153)))

(assert (=> b!4333917 (forall!8926 (toList!2716 lt!1547004) lambda!135200)))

(declare-fun lt!1547147 () Unit!68260)

(assert (=> b!4333917 (= lt!1547147 lt!1547159)))

(assert (=> b!4333917 (forall!8926 (toList!2716 lt!1547152) lambda!135201)))

(declare-fun lt!1547158 () Unit!68260)

(declare-fun Unit!68277 () Unit!68260)

(assert (=> b!4333917 (= lt!1547158 Unit!68277)))

(assert (=> b!4333917 call!301152))

(declare-fun lt!1547160 () Unit!68260)

(declare-fun Unit!68278 () Unit!68260)

(assert (=> b!4333917 (= lt!1547160 Unit!68278)))

(declare-fun lt!1547148 () Unit!68260)

(declare-fun Unit!68279 () Unit!68260)

(assert (=> b!4333917 (= lt!1547148 Unit!68279)))

(declare-fun lt!1547154 () Unit!68260)

(assert (=> b!4333917 (= lt!1547154 (forallContained!1576 (toList!2716 lt!1547152) lambda!135201 (h!54117 lt!1546997)))))

(assert (=> b!4333917 (contains!10662 lt!1547152 (_1!27211 (h!54117 lt!1546997)))))

(declare-fun lt!1547146 () Unit!68260)

(declare-fun Unit!68280 () Unit!68260)

(assert (=> b!4333917 (= lt!1547146 Unit!68280)))

(assert (=> b!4333917 (contains!10662 lt!1547155 (_1!27211 (h!54117 lt!1546997)))))

(declare-fun lt!1547149 () Unit!68260)

(declare-fun Unit!68281 () Unit!68260)

(assert (=> b!4333917 (= lt!1547149 Unit!68281)))

(assert (=> b!4333917 (forall!8926 lt!1546997 lambda!135201)))

(declare-fun lt!1547151 () Unit!68260)

(declare-fun Unit!68282 () Unit!68260)

(assert (=> b!4333917 (= lt!1547151 Unit!68282)))

(assert (=> b!4333917 (forall!8926 (toList!2716 lt!1547152) lambda!135201)))

(declare-fun lt!1547143 () Unit!68260)

(declare-fun Unit!68283 () Unit!68260)

(assert (=> b!4333917 (= lt!1547143 Unit!68283)))

(declare-fun lt!1547144 () Unit!68260)

(declare-fun Unit!68284 () Unit!68260)

(assert (=> b!4333917 (= lt!1547144 Unit!68284)))

(declare-fun lt!1547157 () Unit!68260)

(assert (=> b!4333917 (= lt!1547157 (addForallContainsKeyThenBeforeAdding!10 lt!1547004 lt!1547155 (_1!27211 (h!54117 lt!1546997)) (_2!27211 (h!54117 lt!1546997))))))

(assert (=> b!4333917 (forall!8926 (toList!2716 lt!1547004) lambda!135201)))

(declare-fun lt!1547150 () Unit!68260)

(assert (=> b!4333917 (= lt!1547150 lt!1547157)))

(assert (=> b!4333917 (forall!8926 (toList!2716 lt!1547004) lambda!135201)))

(declare-fun lt!1547161 () Unit!68260)

(declare-fun Unit!68285 () Unit!68260)

(assert (=> b!4333917 (= lt!1547161 Unit!68285)))

(declare-fun res!1777195 () Bool)

(assert (=> b!4333917 (= res!1777195 (forall!8926 lt!1546997 lambda!135201))))

(assert (=> b!4333917 (=> (not res!1777195) (not e!2696800))))

(assert (=> b!4333917 e!2696800))

(declare-fun lt!1547156 () Unit!68260)

(declare-fun Unit!68286 () Unit!68260)

(assert (=> b!4333917 (= lt!1547156 Unit!68286)))

(declare-fun bm!301147 () Bool)

(assert (=> bm!301147 (= call!301152 (forall!8926 (ite c!737043 (toList!2716 lt!1547004) (t!355666 lt!1546997)) (ite c!737043 lambda!135199 lambda!135201)))))

(declare-fun bm!301148 () Bool)

(assert (=> bm!301148 (= call!301153 (lemmaContainsAllItsOwnKeys!10 lt!1547004))))

(assert (= (and d!1273969 c!737043) b!4333916))

(assert (= (and d!1273969 (not c!737043)) b!4333917))

(assert (= (and b!4333917 res!1777195) b!4333914))

(assert (= (or b!4333916 b!4333917) bm!301148))

(assert (= (or b!4333916 b!4333917) bm!301147))

(assert (= (or b!4333916 b!4333914) bm!301146))

(assert (= (and d!1273969 res!1777194) b!4333915))

(assert (= (and b!4333915 res!1777193) b!4333913))

(declare-fun m!4928263 () Bool)

(assert (=> b!4333915 m!4928263))

(declare-fun m!4928265 () Bool)

(assert (=> bm!301146 m!4928265))

(declare-fun m!4928267 () Bool)

(assert (=> bm!301147 m!4928267))

(declare-fun m!4928269 () Bool)

(assert (=> b!4333917 m!4928269))

(declare-fun m!4928271 () Bool)

(assert (=> b!4333917 m!4928271))

(declare-fun m!4928273 () Bool)

(assert (=> b!4333917 m!4928273))

(declare-fun m!4928275 () Bool)

(assert (=> b!4333917 m!4928275))

(assert (=> b!4333917 m!4928269))

(declare-fun m!4928277 () Bool)

(assert (=> b!4333917 m!4928277))

(declare-fun m!4928279 () Bool)

(assert (=> b!4333917 m!4928279))

(assert (=> b!4333917 m!4928275))

(declare-fun m!4928281 () Bool)

(assert (=> b!4333917 m!4928281))

(declare-fun m!4928283 () Bool)

(assert (=> b!4333917 m!4928283))

(declare-fun m!4928285 () Bool)

(assert (=> b!4333917 m!4928285))

(assert (=> b!4333917 m!4928271))

(assert (=> b!4333917 m!4928273))

(declare-fun m!4928287 () Bool)

(assert (=> b!4333917 m!4928287))

(assert (=> bm!301148 m!4928237))

(declare-fun m!4928289 () Bool)

(assert (=> d!1273969 m!4928289))

(declare-fun m!4928291 () Bool)

(assert (=> d!1273969 m!4928291))

(declare-fun m!4928293 () Bool)

(assert (=> b!4333913 m!4928293))

(assert (=> b!4333778 d!1273969))

(declare-fun d!1273971 () Bool)

(declare-fun res!1777200 () Bool)

(declare-fun e!2696807 () Bool)

(assert (=> d!1273971 (=> res!1777200 e!2696807)))

(assert (=> d!1273971 (= res!1777200 (is-Nil!48627 (toList!2715 lm!1707)))))

(assert (=> d!1273971 (= (forall!8924 (toList!2715 lm!1707) lambda!135148) e!2696807)))

(declare-fun b!4333922 () Bool)

(declare-fun e!2696808 () Bool)

(assert (=> b!4333922 (= e!2696807 e!2696808)))

(declare-fun res!1777201 () Bool)

(assert (=> b!4333922 (=> (not res!1777201) (not e!2696808))))

(declare-fun dynLambda!20556 (Int tuple2!47836) Bool)

(assert (=> b!4333922 (= res!1777201 (dynLambda!20556 lambda!135148 (h!54118 (toList!2715 lm!1707))))))

(declare-fun b!4333923 () Bool)

(assert (=> b!4333923 (= e!2696808 (forall!8924 (t!355667 (toList!2715 lm!1707)) lambda!135148))))

(assert (= (and d!1273971 (not res!1777200)) b!4333922))

(assert (= (and b!4333922 res!1777201) b!4333923))

(declare-fun b_lambda!128123 () Bool)

(assert (=> (not b_lambda!128123) (not b!4333922)))

(declare-fun m!4928295 () Bool)

(assert (=> b!4333922 m!4928295))

(declare-fun m!4928297 () Bool)

(assert (=> b!4333923 m!4928297))

(assert (=> start!417810 d!1273971))

(declare-fun d!1273973 () Bool)

(declare-fun isStrictlySorted!43 (List!48751) Bool)

(assert (=> d!1273973 (= (inv!64170 lm!1707) (isStrictlySorted!43 (toList!2715 lm!1707)))))

(declare-fun bs!608164 () Bool)

(assert (= bs!608164 d!1273973))

(declare-fun m!4928299 () Bool)

(assert (=> bs!608164 m!4928299))

(assert (=> start!417810 d!1273973))

(declare-fun d!1273975 () Bool)

(declare-fun hash!1306 (Hashable!4758 K!9983) (_ BitVec 64))

(assert (=> d!1273975 (= (hash!1304 hashF!1247 key!3918) (hash!1306 hashF!1247 key!3918))))

(declare-fun bs!608165 () Bool)

(assert (= bs!608165 d!1273975))

(declare-fun m!4928301 () Bool)

(assert (=> bs!608165 m!4928301))

(assert (=> b!4333780 d!1273975))

(declare-fun d!1273977 () Bool)

(declare-fun res!1777202 () Bool)

(declare-fun e!2696809 () Bool)

(assert (=> d!1273977 (=> res!1777202 e!2696809)))

(assert (=> d!1273977 (= res!1777202 (is-Nil!48627 (toList!2715 lt!1546998)))))

(assert (=> d!1273977 (= (forall!8924 (toList!2715 lt!1546998) lambda!135148) e!2696809)))

(declare-fun b!4333924 () Bool)

(declare-fun e!2696810 () Bool)

(assert (=> b!4333924 (= e!2696809 e!2696810)))

(declare-fun res!1777203 () Bool)

(assert (=> b!4333924 (=> (not res!1777203) (not e!2696810))))

(assert (=> b!4333924 (= res!1777203 (dynLambda!20556 lambda!135148 (h!54118 (toList!2715 lt!1546998))))))

(declare-fun b!4333925 () Bool)

(assert (=> b!4333925 (= e!2696810 (forall!8924 (t!355667 (toList!2715 lt!1546998)) lambda!135148))))

(assert (= (and d!1273977 (not res!1777202)) b!4333924))

(assert (= (and b!4333924 res!1777203) b!4333925))

(declare-fun b_lambda!128125 () Bool)

(assert (=> (not b_lambda!128125) (not b!4333924)))

(declare-fun m!4928303 () Bool)

(assert (=> b!4333924 m!4928303))

(declare-fun m!4928305 () Bool)

(assert (=> b!4333925 m!4928305))

(assert (=> b!4333779 d!1273977))

(declare-fun bs!608166 () Bool)

(declare-fun d!1273979 () Bool)

(assert (= bs!608166 (and d!1273979 start!417810)))

(declare-fun lambda!135205 () Int)

(assert (=> bs!608166 (not (= lambda!135205 lambda!135148))))

(declare-fun bs!608167 () Bool)

(assert (= bs!608167 (and d!1273979 d!1273963)))

(assert (=> bs!608167 (not (= lambda!135205 lambda!135197))))

(declare-fun bs!608168 () Bool)

(assert (= bs!608168 (and d!1273979 d!1273965)))

(assert (=> bs!608168 (not (= lambda!135205 lambda!135198))))

(assert (=> d!1273979 true))

(assert (=> d!1273979 (= (allKeysSameHashInMap!470 lm!1707 hashF!1247) (forall!8924 (toList!2715 lm!1707) lambda!135205))))

(declare-fun bs!608169 () Bool)

(assert (= bs!608169 d!1273979))

(declare-fun m!4928307 () Bool)

(assert (=> bs!608169 m!4928307))

(assert (=> b!4333776 d!1273979))

(declare-fun b!4333946 () Bool)

(declare-fun e!2696824 () Unit!68260)

(declare-fun Unit!68287 () Unit!68260)

(assert (=> b!4333946 (= e!2696824 Unit!68287)))

(declare-fun bm!301151 () Bool)

(declare-fun call!301156 () Bool)

(declare-datatypes ((List!48754 0))(
  ( (Nil!48630) (Cons!48630 (h!54123 K!9983) (t!355670 List!48754)) )
))
(declare-fun e!2696823 () List!48754)

(declare-fun contains!10666 (List!48754 K!9983) Bool)

(assert (=> bm!301151 (= call!301156 (contains!10666 e!2696823 key!3918))))

(declare-fun c!737050 () Bool)

(declare-fun c!737051 () Bool)

(assert (=> bm!301151 (= c!737050 c!737051)))

(declare-fun b!4333947 () Bool)

(declare-fun e!2696825 () Bool)

(declare-fun keys!16344 (ListMap!1959) List!48754)

(assert (=> b!4333947 (= e!2696825 (contains!10666 (keys!16344 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(declare-fun d!1273981 () Bool)

(declare-fun e!2696827 () Bool)

(assert (=> d!1273981 e!2696827))

(declare-fun res!1777210 () Bool)

(assert (=> d!1273981 (=> res!1777210 e!2696827)))

(declare-fun e!2696826 () Bool)

(assert (=> d!1273981 (= res!1777210 e!2696826)))

(declare-fun res!1777211 () Bool)

(assert (=> d!1273981 (=> (not res!1777211) (not e!2696826))))

(declare-fun lt!1547185 () Bool)

(assert (=> d!1273981 (= res!1777211 (not lt!1547185))))

(declare-fun lt!1547182 () Bool)

(assert (=> d!1273981 (= lt!1547185 lt!1547182)))

(declare-fun lt!1547178 () Unit!68260)

(declare-fun e!2696828 () Unit!68260)

(assert (=> d!1273981 (= lt!1547178 e!2696828)))

(assert (=> d!1273981 (= c!737051 lt!1547182)))

(declare-fun containsKey!503 (List!48750 K!9983) Bool)

(assert (=> d!1273981 (= lt!1547182 (containsKey!503 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(assert (=> d!1273981 (= (contains!10662 (extractMap!425 (toList!2715 lm!1707)) key!3918) lt!1547185)))

(declare-fun b!4333948 () Bool)

(assert (=> b!4333948 false))

(declare-fun lt!1547183 () Unit!68260)

(declare-fun lt!1547179 () Unit!68260)

(assert (=> b!4333948 (= lt!1547183 lt!1547179)))

(assert (=> b!4333948 (containsKey!503 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!64 (List!48750 K!9983) Unit!68260)

(assert (=> b!4333948 (= lt!1547179 (lemmaInGetKeysListThenContainsKey!64 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(declare-fun Unit!68288 () Unit!68260)

(assert (=> b!4333948 (= e!2696824 Unit!68288)))

(declare-fun b!4333949 () Bool)

(declare-fun lt!1547184 () Unit!68260)

(assert (=> b!4333949 (= e!2696828 lt!1547184)))

(declare-fun lt!1547180 () Unit!68260)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!248 (List!48750 K!9983) Unit!68260)

(assert (=> b!4333949 (= lt!1547180 (lemmaContainsKeyImpliesGetValueByKeyDefined!248 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(declare-datatypes ((Option!10348 0))(
  ( (None!10347) (Some!10347 (v!43067 V!10229)) )
))
(declare-fun isDefined!7645 (Option!10348) Bool)

(declare-fun getValueByKey!334 (List!48750 K!9983) Option!10348)

(assert (=> b!4333949 (isDefined!7645 (getValueByKey!334 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(declare-fun lt!1547181 () Unit!68260)

(assert (=> b!4333949 (= lt!1547181 lt!1547180)))

(declare-fun lemmaInListThenGetKeysListContains!63 (List!48750 K!9983) Unit!68260)

(assert (=> b!4333949 (= lt!1547184 (lemmaInListThenGetKeysListContains!63 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918))))

(assert (=> b!4333949 call!301156))

(declare-fun b!4333950 () Bool)

(assert (=> b!4333950 (= e!2696827 e!2696825)))

(declare-fun res!1777212 () Bool)

(assert (=> b!4333950 (=> (not res!1777212) (not e!2696825))))

(assert (=> b!4333950 (= res!1777212 (isDefined!7645 (getValueByKey!334 (toList!2716 (extractMap!425 (toList!2715 lm!1707))) key!3918)))))

(declare-fun b!4333951 () Bool)

(assert (=> b!4333951 (= e!2696828 e!2696824)))

(declare-fun c!737052 () Bool)

(assert (=> b!4333951 (= c!737052 call!301156)))

(declare-fun b!4333952 () Bool)

(assert (=> b!4333952 (= e!2696826 (not (contains!10666 (keys!16344 (extractMap!425 (toList!2715 lm!1707))) key!3918)))))

(declare-fun b!4333953 () Bool)

(declare-fun getKeysList!66 (List!48750) List!48754)

(assert (=> b!4333953 (= e!2696823 (getKeysList!66 (toList!2716 (extractMap!425 (toList!2715 lm!1707)))))))

(declare-fun b!4333954 () Bool)

(assert (=> b!4333954 (= e!2696823 (keys!16344 (extractMap!425 (toList!2715 lm!1707))))))

(assert (= (and d!1273981 c!737051) b!4333949))

(assert (= (and d!1273981 (not c!737051)) b!4333951))

(assert (= (and b!4333951 c!737052) b!4333948))

(assert (= (and b!4333951 (not c!737052)) b!4333946))

(assert (= (or b!4333949 b!4333951) bm!301151))

(assert (= (and bm!301151 c!737050) b!4333953))

(assert (= (and bm!301151 (not c!737050)) b!4333954))

(assert (= (and d!1273981 res!1777211) b!4333952))

(assert (= (and d!1273981 (not res!1777210)) b!4333950))

(assert (= (and b!4333950 res!1777212) b!4333947))

(declare-fun m!4928309 () Bool)

(assert (=> b!4333948 m!4928309))

(declare-fun m!4928311 () Bool)

(assert (=> b!4333948 m!4928311))

(assert (=> b!4333947 m!4928069))

(declare-fun m!4928313 () Bool)

(assert (=> b!4333947 m!4928313))

(assert (=> b!4333947 m!4928313))

(declare-fun m!4928315 () Bool)

(assert (=> b!4333947 m!4928315))

(declare-fun m!4928317 () Bool)

(assert (=> b!4333953 m!4928317))

(declare-fun m!4928319 () Bool)

(assert (=> b!4333950 m!4928319))

(assert (=> b!4333950 m!4928319))

(declare-fun m!4928321 () Bool)

(assert (=> b!4333950 m!4928321))

(assert (=> d!1273981 m!4928309))

(assert (=> b!4333952 m!4928069))

(assert (=> b!4333952 m!4928313))

(assert (=> b!4333952 m!4928313))

(assert (=> b!4333952 m!4928315))

(declare-fun m!4928323 () Bool)

(assert (=> b!4333949 m!4928323))

(assert (=> b!4333949 m!4928319))

(assert (=> b!4333949 m!4928319))

(assert (=> b!4333949 m!4928321))

(declare-fun m!4928325 () Bool)

(assert (=> b!4333949 m!4928325))

(declare-fun m!4928327 () Bool)

(assert (=> bm!301151 m!4928327))

(assert (=> b!4333954 m!4928069))

(assert (=> b!4333954 m!4928313))

(assert (=> b!4333775 d!1273981))

(declare-fun bs!608170 () Bool)

(declare-fun d!1273983 () Bool)

(assert (= bs!608170 (and d!1273983 start!417810)))

(declare-fun lambda!135206 () Int)

(assert (=> bs!608170 (= lambda!135206 lambda!135148)))

(declare-fun bs!608171 () Bool)

(assert (= bs!608171 (and d!1273983 d!1273963)))

(assert (=> bs!608171 (= lambda!135206 lambda!135197)))

(declare-fun bs!608172 () Bool)

(assert (= bs!608172 (and d!1273983 d!1273965)))

(assert (=> bs!608172 (= lambda!135206 lambda!135198)))

(declare-fun bs!608173 () Bool)

(assert (= bs!608173 (and d!1273983 d!1273979)))

(assert (=> bs!608173 (not (= lambda!135206 lambda!135205))))

(declare-fun lt!1547186 () ListMap!1959)

(assert (=> d!1273983 (invariantList!617 (toList!2716 lt!1547186))))

(declare-fun e!2696829 () ListMap!1959)

(assert (=> d!1273983 (= lt!1547186 e!2696829)))

(declare-fun c!737053 () Bool)

(assert (=> d!1273983 (= c!737053 (is-Cons!48627 (toList!2715 lm!1707)))))

(assert (=> d!1273983 (forall!8924 (toList!2715 lm!1707) lambda!135206)))

(assert (=> d!1273983 (= (extractMap!425 (toList!2715 lm!1707)) lt!1547186)))

(declare-fun b!4333955 () Bool)

(assert (=> b!4333955 (= e!2696829 (addToMapMapFromBucket!74 (_2!27212 (h!54118 (toList!2715 lm!1707))) (extractMap!425 (t!355667 (toList!2715 lm!1707)))))))

(declare-fun b!4333956 () Bool)

(assert (=> b!4333956 (= e!2696829 (ListMap!1960 Nil!48626))))

(assert (= (and d!1273983 c!737053) b!4333955))

(assert (= (and d!1273983 (not c!737053)) b!4333956))

(declare-fun m!4928329 () Bool)

(assert (=> d!1273983 m!4928329))

(declare-fun m!4928331 () Bool)

(assert (=> d!1273983 m!4928331))

(assert (=> b!4333955 m!4928095))

(assert (=> b!4333955 m!4928095))

(declare-fun m!4928333 () Bool)

(assert (=> b!4333955 m!4928333))

(assert (=> b!4333775 d!1273983))

(declare-fun bs!608174 () Bool)

(declare-fun d!1273985 () Bool)

(assert (= bs!608174 (and d!1273985 d!1273969)))

(declare-fun lambda!135209 () Int)

(assert (=> bs!608174 (not (= lambda!135209 lambda!135202))))

(declare-fun bs!608175 () Bool)

(assert (= bs!608175 (and d!1273985 b!4333917)))

(assert (=> bs!608175 (not (= lambda!135209 lambda!135201))))

(declare-fun bs!608176 () Bool)

(assert (= bs!608176 (and d!1273985 b!4333900)))

(assert (=> bs!608176 (not (= lambda!135209 lambda!135193))))

(declare-fun bs!608177 () Bool)

(assert (= bs!608177 (and d!1273985 d!1273947)))

(assert (=> bs!608177 (not (= lambda!135209 lambda!135194))))

(assert (=> bs!608175 (not (= lambda!135209 lambda!135200))))

(declare-fun bs!608178 () Bool)

(assert (= bs!608178 (and d!1273985 b!4333899)))

(assert (=> bs!608178 (not (= lambda!135209 lambda!135191))))

(assert (=> bs!608176 (not (= lambda!135209 lambda!135192))))

(declare-fun bs!608179 () Bool)

(assert (= bs!608179 (and d!1273985 b!4333916)))

(assert (=> bs!608179 (not (= lambda!135209 lambda!135199))))

(assert (=> d!1273985 true))

(assert (=> d!1273985 true))

(assert (=> d!1273985 (= (allKeysSameHash!324 newBucket!200 hash!377 hashF!1247) (forall!8926 newBucket!200 lambda!135209))))

(declare-fun bs!608180 () Bool)

(assert (= bs!608180 d!1273985))

(declare-fun m!4928335 () Bool)

(assert (=> bs!608180 m!4928335))

(assert (=> b!4333777 d!1273985))

(assert (=> b!4333783 d!1273977))

(declare-fun d!1273987 () Bool)

(declare-fun e!2696832 () Bool)

(assert (=> d!1273987 e!2696832))

(declare-fun res!1777218 () Bool)

(assert (=> d!1273987 (=> (not res!1777218) (not e!2696832))))

(declare-fun lt!1547195 () ListLongMap!1365)

(assert (=> d!1273987 (= res!1777218 (contains!10660 lt!1547195 (_1!27212 lt!1546996)))))

(declare-fun lt!1547197 () List!48751)

(assert (=> d!1273987 (= lt!1547195 (ListLongMap!1366 lt!1547197))))

(declare-fun lt!1547198 () Unit!68260)

(declare-fun lt!1547196 () Unit!68260)

(assert (=> d!1273987 (= lt!1547198 lt!1547196)))

(assert (=> d!1273987 (= (getValueByKey!333 lt!1547197 (_1!27212 lt!1546996)) (Some!10346 (_2!27212 lt!1546996)))))

(declare-fun lemmaContainsTupThenGetReturnValue!119 (List!48751 (_ BitVec 64) List!48750) Unit!68260)

(assert (=> d!1273987 (= lt!1547196 (lemmaContainsTupThenGetReturnValue!119 lt!1547197 (_1!27212 lt!1546996) (_2!27212 lt!1546996)))))

(declare-fun insertStrictlySorted!74 (List!48751 (_ BitVec 64) List!48750) List!48751)

(assert (=> d!1273987 (= lt!1547197 (insertStrictlySorted!74 (toList!2715 lm!1707) (_1!27212 lt!1546996) (_2!27212 lt!1546996)))))

(assert (=> d!1273987 (= (+!405 lm!1707 lt!1546996) lt!1547195)))

(declare-fun b!4333965 () Bool)

(declare-fun res!1777217 () Bool)

(assert (=> b!4333965 (=> (not res!1777217) (not e!2696832))))

(assert (=> b!4333965 (= res!1777217 (= (getValueByKey!333 (toList!2715 lt!1547195) (_1!27212 lt!1546996)) (Some!10346 (_2!27212 lt!1546996))))))

(declare-fun b!4333966 () Bool)

(assert (=> b!4333966 (= e!2696832 (contains!10661 (toList!2715 lt!1547195) lt!1546996))))

(assert (= (and d!1273987 res!1777218) b!4333965))

(assert (= (and b!4333965 res!1777217) b!4333966))

(declare-fun m!4928337 () Bool)

(assert (=> d!1273987 m!4928337))

(declare-fun m!4928339 () Bool)

(assert (=> d!1273987 m!4928339))

(declare-fun m!4928341 () Bool)

(assert (=> d!1273987 m!4928341))

(declare-fun m!4928343 () Bool)

(assert (=> d!1273987 m!4928343))

(declare-fun m!4928345 () Bool)

(assert (=> b!4333965 m!4928345))

(declare-fun m!4928347 () Bool)

(assert (=> b!4333966 m!4928347))

(assert (=> b!4333783 d!1273987))

(declare-fun d!1273989 () Bool)

(assert (=> d!1273989 (forall!8924 (toList!2715 (+!405 lm!1707 (tuple2!47837 hash!377 newBucket!200))) lambda!135148)))

(declare-fun lt!1547201 () Unit!68260)

(declare-fun choose!26505 (ListLongMap!1365 Int (_ BitVec 64) List!48750) Unit!68260)

(assert (=> d!1273989 (= lt!1547201 (choose!26505 lm!1707 lambda!135148 hash!377 newBucket!200))))

(declare-fun e!2696835 () Bool)

(assert (=> d!1273989 e!2696835))

(declare-fun res!1777221 () Bool)

(assert (=> d!1273989 (=> (not res!1777221) (not e!2696835))))

(assert (=> d!1273989 (= res!1777221 (forall!8924 (toList!2715 lm!1707) lambda!135148))))

(assert (=> d!1273989 (= (addValidProp!20 lm!1707 lambda!135148 hash!377 newBucket!200) lt!1547201)))

(declare-fun b!4333970 () Bool)

(assert (=> b!4333970 (= e!2696835 (dynLambda!20556 lambda!135148 (tuple2!47837 hash!377 newBucket!200)))))

(assert (= (and d!1273989 res!1777221) b!4333970))

(declare-fun b_lambda!128127 () Bool)

(assert (=> (not b_lambda!128127) (not b!4333970)))

(declare-fun m!4928349 () Bool)

(assert (=> d!1273989 m!4928349))

(declare-fun m!4928351 () Bool)

(assert (=> d!1273989 m!4928351))

(declare-fun m!4928353 () Bool)

(assert (=> d!1273989 m!4928353))

(assert (=> d!1273989 m!4928059))

(declare-fun m!4928355 () Bool)

(assert (=> b!4333970 m!4928355))

(assert (=> b!4333783 d!1273989))

(assert (=> b!4333783 d!1273971))

(declare-fun d!1273991 () Bool)

(declare-fun get!15773 (Option!10347) List!48750)

(assert (=> d!1273991 (= (apply!11218 lm!1707 hash!377) (get!15773 (getValueByKey!333 (toList!2715 lm!1707) hash!377)))))

(declare-fun bs!608181 () Bool)

(assert (= bs!608181 d!1273991))

(assert (=> bs!608181 m!4928159))

(assert (=> bs!608181 m!4928159))

(declare-fun m!4928357 () Bool)

(assert (=> bs!608181 m!4928357))

(assert (=> b!4333774 d!1273991))

(declare-fun d!1273993 () Bool)

(assert (=> d!1273993 (contains!10661 (toList!2715 lm!1707) (tuple2!47837 hash!377 lt!1547003))))

(declare-fun lt!1547204 () Unit!68260)

(declare-fun choose!26506 (List!48751 (_ BitVec 64) List!48750) Unit!68260)

(assert (=> d!1273993 (= lt!1547204 (choose!26506 (toList!2715 lm!1707) hash!377 lt!1547003))))

(declare-fun e!2696838 () Bool)

(assert (=> d!1273993 e!2696838))

(declare-fun res!1777224 () Bool)

(assert (=> d!1273993 (=> (not res!1777224) (not e!2696838))))

(assert (=> d!1273993 (= res!1777224 (isStrictlySorted!43 (toList!2715 lm!1707)))))

(assert (=> d!1273993 (= (lemmaGetValueByKeyImpliesContainsTuple!213 (toList!2715 lm!1707) hash!377 lt!1547003) lt!1547204)))

(declare-fun b!4333973 () Bool)

(assert (=> b!4333973 (= e!2696838 (= (getValueByKey!333 (toList!2715 lm!1707) hash!377) (Some!10346 lt!1547003)))))

(assert (= (and d!1273993 res!1777224) b!4333973))

(declare-fun m!4928359 () Bool)

(assert (=> d!1273993 m!4928359))

(declare-fun m!4928361 () Bool)

(assert (=> d!1273993 m!4928361))

(assert (=> d!1273993 m!4928299))

(assert (=> b!4333973 m!4928159))

(assert (=> b!4333774 d!1273993))

(declare-fun d!1273995 () Bool)

(declare-fun lt!1547207 () Bool)

(declare-fun content!7593 (List!48751) (Set tuple2!47836))

(assert (=> d!1273995 (= lt!1547207 (set.member lt!1547001 (content!7593 (toList!2715 lm!1707))))))

(declare-fun e!2696844 () Bool)

(assert (=> d!1273995 (= lt!1547207 e!2696844)))

(declare-fun res!1777229 () Bool)

(assert (=> d!1273995 (=> (not res!1777229) (not e!2696844))))

(assert (=> d!1273995 (= res!1777229 (is-Cons!48627 (toList!2715 lm!1707)))))

(assert (=> d!1273995 (= (contains!10661 (toList!2715 lm!1707) lt!1547001) lt!1547207)))

(declare-fun b!4333978 () Bool)

(declare-fun e!2696843 () Bool)

(assert (=> b!4333978 (= e!2696844 e!2696843)))

(declare-fun res!1777230 () Bool)

(assert (=> b!4333978 (=> res!1777230 e!2696843)))

(assert (=> b!4333978 (= res!1777230 (= (h!54118 (toList!2715 lm!1707)) lt!1547001))))

(declare-fun b!4333979 () Bool)

(assert (=> b!4333979 (= e!2696843 (contains!10661 (t!355667 (toList!2715 lm!1707)) lt!1547001))))

(assert (= (and d!1273995 res!1777229) b!4333978))

(assert (= (and b!4333978 (not res!1777230)) b!4333979))

(declare-fun m!4928363 () Bool)

(assert (=> d!1273995 m!4928363))

(declare-fun m!4928365 () Bool)

(assert (=> d!1273995 m!4928365))

(declare-fun m!4928367 () Bool)

(assert (=> b!4333979 m!4928367))

(assert (=> b!4333774 d!1273995))

(declare-fun d!1273997 () Bool)

(declare-fun lt!1547210 () List!48750)

(assert (=> d!1273997 (not (containsKey!502 lt!1547210 key!3918))))

(declare-fun e!2696849 () List!48750)

(assert (=> d!1273997 (= lt!1547210 e!2696849)))

(declare-fun c!737058 () Bool)

(assert (=> d!1273997 (= c!737058 (and (is-Cons!48626 lt!1547003) (= (_1!27211 (h!54117 lt!1547003)) key!3918)))))

(assert (=> d!1273997 (noDuplicateKeys!366 lt!1547003)))

(assert (=> d!1273997 (= (removePairForKey!336 lt!1547003 key!3918) lt!1547210)))

(declare-fun b!4333988 () Bool)

(assert (=> b!4333988 (= e!2696849 (t!355666 lt!1547003))))

(declare-fun b!4333990 () Bool)

(declare-fun e!2696850 () List!48750)

(assert (=> b!4333990 (= e!2696850 (Cons!48626 (h!54117 lt!1547003) (removePairForKey!336 (t!355666 lt!1547003) key!3918)))))

(declare-fun b!4333989 () Bool)

(assert (=> b!4333989 (= e!2696849 e!2696850)))

(declare-fun c!737059 () Bool)

(assert (=> b!4333989 (= c!737059 (is-Cons!48626 lt!1547003))))

(declare-fun b!4333991 () Bool)

(assert (=> b!4333991 (= e!2696850 Nil!48626)))

(assert (= (and d!1273997 c!737058) b!4333988))

(assert (= (and d!1273997 (not c!737058)) b!4333989))

(assert (= (and b!4333989 c!737059) b!4333990))

(assert (= (and b!4333989 (not c!737059)) b!4333991))

(declare-fun m!4928369 () Bool)

(assert (=> d!1273997 m!4928369))

(assert (=> d!1273997 m!4928089))

(declare-fun m!4928371 () Bool)

(assert (=> b!4333990 m!4928371))

(assert (=> b!4333774 d!1273997))

(declare-fun d!1273999 () Bool)

(assert (=> d!1273999 (dynLambda!20556 lambda!135148 lt!1547001)))

(declare-fun lt!1547213 () Unit!68260)

(declare-fun choose!26507 (List!48751 Int tuple2!47836) Unit!68260)

(assert (=> d!1273999 (= lt!1547213 (choose!26507 (toList!2715 lm!1707) lambda!135148 lt!1547001))))

(declare-fun e!2696853 () Bool)

(assert (=> d!1273999 e!2696853))

(declare-fun res!1777233 () Bool)

(assert (=> d!1273999 (=> (not res!1777233) (not e!2696853))))

(assert (=> d!1273999 (= res!1777233 (forall!8924 (toList!2715 lm!1707) lambda!135148))))

(assert (=> d!1273999 (= (forallContained!1574 (toList!2715 lm!1707) lambda!135148 lt!1547001) lt!1547213)))

(declare-fun b!4333994 () Bool)

(assert (=> b!4333994 (= e!2696853 (contains!10661 (toList!2715 lm!1707) lt!1547001))))

(assert (= (and d!1273999 res!1777233) b!4333994))

(declare-fun b_lambda!128129 () Bool)

(assert (=> (not b_lambda!128129) (not d!1273999)))

(declare-fun m!4928373 () Bool)

(assert (=> d!1273999 m!4928373))

(declare-fun m!4928375 () Bool)

(assert (=> d!1273999 m!4928375))

(assert (=> d!1273999 m!4928059))

(assert (=> b!4333994 m!4928079))

(assert (=> b!4333774 d!1273999))

(declare-fun e!2696856 () Bool)

(declare-fun b!4333999 () Bool)

(declare-fun tp!1328797 () Bool)

(assert (=> b!4333999 (= e!2696856 (and tp_is_empty!24701 tp_is_empty!24703 tp!1328797))))

(assert (=> b!4333781 (= tp!1328787 e!2696856)))

(assert (= (and b!4333781 (is-Cons!48626 (t!355666 newBucket!200))) b!4333999))

(declare-fun b!4334004 () Bool)

(declare-fun e!2696859 () Bool)

(declare-fun tp!1328802 () Bool)

(declare-fun tp!1328803 () Bool)

(assert (=> b!4334004 (= e!2696859 (and tp!1328802 tp!1328803))))

(assert (=> b!4333773 (= tp!1328788 e!2696859)))

(assert (= (and b!4333773 (is-Cons!48627 (toList!2715 lm!1707))) b!4334004))

(declare-fun b_lambda!128131 () Bool)

(assert (= b_lambda!128125 (or start!417810 b_lambda!128131)))

(declare-fun bs!608182 () Bool)

(declare-fun d!1274001 () Bool)

(assert (= bs!608182 (and d!1274001 start!417810)))

(assert (=> bs!608182 (= (dynLambda!20556 lambda!135148 (h!54118 (toList!2715 lt!1546998))) (noDuplicateKeys!366 (_2!27212 (h!54118 (toList!2715 lt!1546998)))))))

(declare-fun m!4928377 () Bool)

(assert (=> bs!608182 m!4928377))

(assert (=> b!4333924 d!1274001))

(declare-fun b_lambda!128133 () Bool)

(assert (= b_lambda!128127 (or start!417810 b_lambda!128133)))

(declare-fun bs!608183 () Bool)

(declare-fun d!1274003 () Bool)

(assert (= bs!608183 (and d!1274003 start!417810)))

(assert (=> bs!608183 (= (dynLambda!20556 lambda!135148 (tuple2!47837 hash!377 newBucket!200)) (noDuplicateKeys!366 (_2!27212 (tuple2!47837 hash!377 newBucket!200))))))

(declare-fun m!4928379 () Bool)

(assert (=> bs!608183 m!4928379))

(assert (=> b!4333970 d!1274003))

(declare-fun b_lambda!128135 () Bool)

(assert (= b_lambda!128123 (or start!417810 b_lambda!128135)))

(declare-fun bs!608184 () Bool)

(declare-fun d!1274005 () Bool)

(assert (= bs!608184 (and d!1274005 start!417810)))

(assert (=> bs!608184 (= (dynLambda!20556 lambda!135148 (h!54118 (toList!2715 lm!1707))) (noDuplicateKeys!366 (_2!27212 (h!54118 (toList!2715 lm!1707)))))))

(declare-fun m!4928381 () Bool)

(assert (=> bs!608184 m!4928381))

(assert (=> b!4333922 d!1274005))

(declare-fun b_lambda!128137 () Bool)

(assert (= b_lambda!128129 (or start!417810 b_lambda!128137)))

(declare-fun bs!608185 () Bool)

(declare-fun d!1274007 () Bool)

(assert (= bs!608185 (and d!1274007 start!417810)))

(assert (=> bs!608185 (= (dynLambda!20556 lambda!135148 lt!1547001) (noDuplicateKeys!366 (_2!27212 lt!1547001)))))

(declare-fun m!4928383 () Bool)

(assert (=> bs!608185 m!4928383))

(assert (=> d!1273999 d!1274007))

(push 1)

(assert (not b!4333950))

(assert (not b_lambda!128135))

(assert (not b!4333923))

(assert (not b!4333973))

(assert (not b!4333999))

(assert (not d!1273965))

(assert (not d!1273963))

(assert (not d!1273941))

(assert (not b!4333909))

(assert (not b!4333915))

(assert (not d!1273983))

(assert (not d!1273999))

(assert (not b!4333847))

(assert (not b!4333917))

(assert (not bm!301145))

(assert (not b!4333913))

(assert (not d!1273969))

(assert (not bs!608183))

(assert (not d!1273981))

(assert (not bm!301143))

(assert (not b!4333979))

(assert (not bs!608182))

(assert (not b!4333900))

(assert (not b!4333955))

(assert (not b!4333947))

(assert (not b!4334004))

(assert (not b!4333994))

(assert (not d!1273985))

(assert (not bm!301147))

(assert (not b!4333858))

(assert (not d!1273975))

(assert (not b_lambda!128133))

(assert (not b_lambda!128137))

(assert (not bm!301148))

(assert (not b!4333952))

(assert (not b!4333907))

(assert (not d!1273995))

(assert (not d!1273997))

(assert (not bm!301151))

(assert tp_is_empty!24701)

(assert (not b!4333859))

(assert (not b!4333966))

(assert (not b!4333953))

(assert (not b!4333912))

(assert (not b!4333896))

(assert (not d!1273991))

(assert tp_is_empty!24703)

(assert (not b!4333949))

(assert (not d!1273947))

(assert (not d!1273979))

(assert (not b!4333898))

(assert (not d!1273987))

(assert (not bs!608184))

(assert (not d!1273993))

(assert (not d!1273973))

(assert (not b!4333965))

(assert (not b!4333954))

(assert (not b!4333925))

(assert (not b!4333849))

(assert (not bs!608185))

(assert (not bm!301144))

(assert (not b!4333990))

(assert (not bm!301146))

(assert (not b_lambda!128131))

(assert (not b!4333911))

(assert (not b!4333948))

(assert (not d!1273989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

