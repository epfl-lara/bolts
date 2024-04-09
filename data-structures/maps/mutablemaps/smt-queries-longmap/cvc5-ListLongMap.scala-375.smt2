; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7120 () Bool)

(assert start!7120)

(declare-fun b!45607 () Bool)

(declare-fun e!29036 () Bool)

(declare-fun tp_is_empty!1927 () Bool)

(declare-fun tp!5984 () Bool)

(assert (=> b!45607 (= e!29036 (and tp_is_empty!1927 tp!5984))))

(declare-fun b!45604 () Bool)

(declare-fun res!26738 () Bool)

(declare-fun e!29035 () Bool)

(assert (=> b!45604 (=> (not res!26738) (not e!29035))))

(declare-datatypes ((B!830 0))(
  ( (B!831 (val!1002 Int)) )
))
(declare-datatypes ((tuple2!1656 0))(
  ( (tuple2!1657 (_1!838 (_ BitVec 64)) (_2!838 B!830)) )
))
(declare-datatypes ((List!1236 0))(
  ( (Nil!1233) (Cons!1232 (h!1812 tuple2!1656) (t!4269 List!1236)) )
))
(declare-fun l!812 () List!1236)

(assert (=> b!45604 (= res!26738 (is-Cons!1232 l!812))))

(declare-fun res!26739 () Bool)

(assert (=> start!7120 (=> (not res!26739) (not e!29035))))

(declare-fun isStrictlySorted!213 (List!1236) Bool)

(assert (=> start!7120 (= res!26739 (isStrictlySorted!213 l!812))))

(assert (=> start!7120 e!29035))

(assert (=> start!7120 e!29036))

(assert (=> start!7120 true))

(declare-fun b!45606 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!28 (List!1236 (_ BitVec 64)) List!1236)

(assert (=> b!45606 (= e!29035 (not (isStrictlySorted!213 (removeStrictlySorted!28 l!812 key1!43))))))

(declare-fun key2!27 () (_ BitVec 64))

(assert (=> b!45606 (= (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key1!43) key2!27) (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1303 0))(
  ( (Unit!1304) )
))
(declare-fun lt!20186 () Unit!1303)

(declare-fun lemmaRemoveStrictlySortedCommutative!7 (List!1236 (_ BitVec 64) (_ BitVec 64)) Unit!1303)

(assert (=> b!45606 (= lt!20186 (lemmaRemoveStrictlySortedCommutative!7 (t!4269 l!812) key1!43 key2!27))))

(declare-fun b!45605 () Bool)

(declare-fun res!26740 () Bool)

(assert (=> b!45605 (=> (not res!26740) (not e!29035))))

(assert (=> b!45605 (= res!26740 (isStrictlySorted!213 (t!4269 l!812)))))

(assert (= (and start!7120 res!26739) b!45604))

(assert (= (and b!45604 res!26738) b!45605))

(assert (= (and b!45605 res!26740) b!45606))

(assert (= (and start!7120 (is-Cons!1232 l!812)) b!45607))

(declare-fun m!40155 () Bool)

(assert (=> start!7120 m!40155))

(declare-fun m!40157 () Bool)

(assert (=> b!45606 m!40157))

(declare-fun m!40159 () Bool)

(assert (=> b!45606 m!40159))

(declare-fun m!40161 () Bool)

(assert (=> b!45606 m!40161))

(assert (=> b!45606 m!40157))

(declare-fun m!40163 () Bool)

(assert (=> b!45606 m!40163))

(declare-fun m!40165 () Bool)

(assert (=> b!45606 m!40165))

(declare-fun m!40167 () Bool)

(assert (=> b!45606 m!40167))

(assert (=> b!45606 m!40163))

(assert (=> b!45606 m!40161))

(declare-fun m!40169 () Bool)

(assert (=> b!45606 m!40169))

(declare-fun m!40171 () Bool)

(assert (=> b!45605 m!40171))

(push 1)

(assert (not b!45607))

(assert (not start!7120))

(assert (not b!45606))

(assert tp_is_empty!1927)

(assert (not b!45605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8915 () Bool)

(declare-fun res!26763 () Bool)

(declare-fun e!29053 () Bool)

(assert (=> d!8915 (=> res!26763 e!29053)))

(assert (=> d!8915 (= res!26763 (or (is-Nil!1233 (t!4269 l!812)) (is-Nil!1233 (t!4269 (t!4269 l!812)))))))

(assert (=> d!8915 (= (isStrictlySorted!213 (t!4269 l!812)) e!29053)))

(declare-fun b!45636 () Bool)

(declare-fun e!29054 () Bool)

(assert (=> b!45636 (= e!29053 e!29054)))

(declare-fun res!26764 () Bool)

(assert (=> b!45636 (=> (not res!26764) (not e!29054))))

(assert (=> b!45636 (= res!26764 (bvslt (_1!838 (h!1812 (t!4269 l!812))) (_1!838 (h!1812 (t!4269 (t!4269 l!812))))))))

(declare-fun b!45637 () Bool)

(assert (=> b!45637 (= e!29054 (isStrictlySorted!213 (t!4269 (t!4269 l!812))))))

(assert (= (and d!8915 (not res!26763)) b!45636))

(assert (= (and b!45636 res!26764) b!45637))

(declare-fun m!40209 () Bool)

(assert (=> b!45637 m!40209))

(assert (=> b!45605 d!8915))

(declare-fun d!8921 () Bool)

(declare-fun res!26769 () Bool)

(declare-fun e!29059 () Bool)

(assert (=> d!8921 (=> res!26769 e!29059)))

(assert (=> d!8921 (= res!26769 (or (is-Nil!1233 l!812) (is-Nil!1233 (t!4269 l!812))))))

(assert (=> d!8921 (= (isStrictlySorted!213 l!812) e!29059)))

(declare-fun b!45642 () Bool)

(declare-fun e!29060 () Bool)

(assert (=> b!45642 (= e!29059 e!29060)))

(declare-fun res!26770 () Bool)

(assert (=> b!45642 (=> (not res!26770) (not e!29060))))

(assert (=> b!45642 (= res!26770 (bvslt (_1!838 (h!1812 l!812)) (_1!838 (h!1812 (t!4269 l!812)))))))

(declare-fun b!45643 () Bool)

(assert (=> b!45643 (= e!29060 (isStrictlySorted!213 (t!4269 l!812)))))

(assert (= (and d!8921 (not res!26769)) b!45642))

(assert (= (and b!45642 res!26770) b!45643))

(assert (=> b!45643 m!40171))

(assert (=> start!7120 d!8921))

(declare-fun b!45688 () Bool)

(declare-fun e!29091 () Bool)

(declare-fun lt!20201 () List!1236)

(declare-fun containsKey!78 (List!1236 (_ BitVec 64)) Bool)

(assert (=> b!45688 (= e!29091 (not (containsKey!78 lt!20201 key1!43)))))

(declare-fun d!8923 () Bool)

(assert (=> d!8923 e!29091))

(declare-fun res!26783 () Bool)

(assert (=> d!8923 (=> (not res!26783) (not e!29091))))

(assert (=> d!8923 (= res!26783 (isStrictlySorted!213 lt!20201))))

(declare-fun e!29090 () List!1236)

(assert (=> d!8923 (= lt!20201 e!29090)))

(declare-fun c!6158 () Bool)

(assert (=> d!8923 (= c!6158 (and (is-Cons!1232 l!812) (= (_1!838 (h!1812 l!812)) key1!43)))))

(assert (=> d!8923 (isStrictlySorted!213 l!812)))

(assert (=> d!8923 (= (removeStrictlySorted!28 l!812 key1!43) lt!20201)))

(declare-fun b!45689 () Bool)

(declare-fun e!29089 () List!1236)

(declare-fun $colon$colon!33 (List!1236 tuple2!1656) List!1236)

(assert (=> b!45689 (= e!29089 ($colon$colon!33 (removeStrictlySorted!28 (t!4269 l!812) key1!43) (h!1812 l!812)))))

(declare-fun b!45690 () Bool)

(assert (=> b!45690 (= e!29090 (t!4269 l!812))))

(declare-fun b!45691 () Bool)

(assert (=> b!45691 (= e!29089 Nil!1233)))

(declare-fun b!45692 () Bool)

(assert (=> b!45692 (= e!29090 e!29089)))

(declare-fun c!6159 () Bool)

(assert (=> b!45692 (= c!6159 (and (is-Cons!1232 l!812) (not (= (_1!838 (h!1812 l!812)) key1!43))))))

(assert (= (and d!8923 c!6158) b!45690))

(assert (= (and d!8923 (not c!6158)) b!45692))

(assert (= (and b!45692 c!6159) b!45689))

(assert (= (and b!45692 (not c!6159)) b!45691))

(assert (= (and d!8923 res!26783) b!45688))

(declare-fun m!40227 () Bool)

(assert (=> b!45688 m!40227))

(declare-fun m!40229 () Bool)

(assert (=> d!8923 m!40229))

(assert (=> d!8923 m!40155))

(assert (=> b!45689 m!40157))

(assert (=> b!45689 m!40157))

(declare-fun m!40231 () Bool)

(assert (=> b!45689 m!40231))

(assert (=> b!45606 d!8923))

(declare-fun b!45698 () Bool)

(declare-fun e!29097 () Bool)

(declare-fun lt!20205 () List!1236)

(assert (=> b!45698 (= e!29097 (not (containsKey!78 lt!20205 key2!27)))))

(declare-fun d!8933 () Bool)

(assert (=> d!8933 e!29097))

(declare-fun res!26785 () Bool)

(assert (=> d!8933 (=> (not res!26785) (not e!29097))))

(assert (=> d!8933 (= res!26785 (isStrictlySorted!213 lt!20205))))

(declare-fun e!29096 () List!1236)

(assert (=> d!8933 (= lt!20205 e!29096)))

(declare-fun c!6162 () Bool)

(assert (=> d!8933 (= c!6162 (and (is-Cons!1232 (t!4269 l!812)) (= (_1!838 (h!1812 (t!4269 l!812))) key2!27)))))

(assert (=> d!8933 (isStrictlySorted!213 (t!4269 l!812))))

(assert (=> d!8933 (= (removeStrictlySorted!28 (t!4269 l!812) key2!27) lt!20205)))

(declare-fun b!45699 () Bool)

(declare-fun e!29095 () List!1236)

(assert (=> b!45699 (= e!29095 ($colon$colon!33 (removeStrictlySorted!28 (t!4269 (t!4269 l!812)) key2!27) (h!1812 (t!4269 l!812))))))

(declare-fun b!45700 () Bool)

(assert (=> b!45700 (= e!29096 (t!4269 (t!4269 l!812)))))

(declare-fun b!45701 () Bool)

(assert (=> b!45701 (= e!29095 Nil!1233)))

(declare-fun b!45702 () Bool)

(assert (=> b!45702 (= e!29096 e!29095)))

(declare-fun c!6163 () Bool)

(assert (=> b!45702 (= c!6163 (and (is-Cons!1232 (t!4269 l!812)) (not (= (_1!838 (h!1812 (t!4269 l!812))) key2!27))))))

(assert (= (and d!8933 c!6162) b!45700))

(assert (= (and d!8933 (not c!6162)) b!45702))

(assert (= (and b!45702 c!6163) b!45699))

(assert (= (and b!45702 (not c!6163)) b!45701))

(assert (= (and d!8933 res!26785) b!45698))

(declare-fun m!40239 () Bool)

(assert (=> b!45698 m!40239))

(declare-fun m!40243 () Bool)

(assert (=> d!8933 m!40243))

(assert (=> d!8933 m!40171))

(declare-fun m!40246 () Bool)

(assert (=> b!45699 m!40246))

(assert (=> b!45699 m!40246))

(declare-fun m!40251 () Bool)

(assert (=> b!45699 m!40251))

(assert (=> b!45606 d!8933))

(declare-fun d!8938 () Bool)

(assert (=> d!8938 (= (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key1!43) key2!27) (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key2!27) key1!43))))

(declare-fun lt!20216 () Unit!1303)

(declare-fun choose!280 (List!1236 (_ BitVec 64) (_ BitVec 64)) Unit!1303)

(assert (=> d!8938 (= lt!20216 (choose!280 (t!4269 l!812) key1!43 key2!27))))

(assert (=> d!8938 (isStrictlySorted!213 (t!4269 l!812))))

(assert (=> d!8938 (= (lemmaRemoveStrictlySortedCommutative!7 (t!4269 l!812) key1!43 key2!27) lt!20216)))

(declare-fun bs!2149 () Bool)

(assert (= bs!2149 d!8938))

(declare-fun m!40287 () Bool)

(assert (=> bs!2149 m!40287))

(assert (=> bs!2149 m!40163))

(assert (=> bs!2149 m!40165))

(assert (=> bs!2149 m!40157))

(assert (=> bs!2149 m!40163))

(assert (=> bs!2149 m!40157))

(assert (=> bs!2149 m!40159))

(assert (=> bs!2149 m!40171))

(assert (=> b!45606 d!8938))

(declare-fun b!45732 () Bool)

(declare-fun e!29119 () Bool)

(declare-fun lt!20218 () List!1236)

(assert (=> b!45732 (= e!29119 (not (containsKey!78 lt!20218 key2!27)))))

(declare-fun d!8951 () Bool)

(assert (=> d!8951 e!29119))

(declare-fun res!26795 () Bool)

(assert (=> d!8951 (=> (not res!26795) (not e!29119))))

(assert (=> d!8951 (= res!26795 (isStrictlySorted!213 lt!20218))))

(declare-fun e!29118 () List!1236)

(assert (=> d!8951 (= lt!20218 e!29118)))

(declare-fun c!6174 () Bool)

(assert (=> d!8951 (= c!6174 (and (is-Cons!1232 (removeStrictlySorted!28 (t!4269 l!812) key1!43)) (= (_1!838 (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key1!43))) key2!27)))))

(assert (=> d!8951 (isStrictlySorted!213 (removeStrictlySorted!28 (t!4269 l!812) key1!43))))

(assert (=> d!8951 (= (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key1!43) key2!27) lt!20218)))

(declare-fun b!45733 () Bool)

(declare-fun e!29117 () List!1236)

(assert (=> b!45733 (= e!29117 ($colon$colon!33 (removeStrictlySorted!28 (t!4269 (removeStrictlySorted!28 (t!4269 l!812) key1!43)) key2!27) (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key1!43))))))

(declare-fun b!45734 () Bool)

(assert (=> b!45734 (= e!29118 (t!4269 (removeStrictlySorted!28 (t!4269 l!812) key1!43)))))

(declare-fun b!45735 () Bool)

(assert (=> b!45735 (= e!29117 Nil!1233)))

(declare-fun b!45736 () Bool)

(assert (=> b!45736 (= e!29118 e!29117)))

(declare-fun c!6175 () Bool)

(assert (=> b!45736 (= c!6175 (and (is-Cons!1232 (removeStrictlySorted!28 (t!4269 l!812) key1!43)) (not (= (_1!838 (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key1!43))) key2!27))))))

(assert (= (and d!8951 c!6174) b!45734))

(assert (= (and d!8951 (not c!6174)) b!45736))

(assert (= (and b!45736 c!6175) b!45733))

(assert (= (and b!45736 (not c!6175)) b!45735))

(assert (= (and d!8951 res!26795) b!45732))

(declare-fun m!40299 () Bool)

(assert (=> b!45732 m!40299))

(declare-fun m!40303 () Bool)

(assert (=> d!8951 m!40303))

(assert (=> d!8951 m!40157))

(declare-fun m!40307 () Bool)

(assert (=> d!8951 m!40307))

(declare-fun m!40311 () Bool)

(assert (=> b!45733 m!40311))

(assert (=> b!45733 m!40311))

(declare-fun m!40317 () Bool)

(assert (=> b!45733 m!40317))

(assert (=> b!45606 d!8951))

(declare-fun b!45749 () Bool)

(declare-fun e!29130 () Bool)

(declare-fun lt!20221 () List!1236)

(assert (=> b!45749 (= e!29130 (not (containsKey!78 lt!20221 key1!43)))))

(declare-fun d!8957 () Bool)

(assert (=> d!8957 e!29130))

(declare-fun res!26800 () Bool)

(assert (=> d!8957 (=> (not res!26800) (not e!29130))))

(assert (=> d!8957 (= res!26800 (isStrictlySorted!213 lt!20221))))

(declare-fun e!29129 () List!1236)

(assert (=> d!8957 (= lt!20221 e!29129)))

(declare-fun c!6180 () Bool)

(assert (=> d!8957 (= c!6180 (and (is-Cons!1232 (removeStrictlySorted!28 (t!4269 l!812) key2!27)) (= (_1!838 (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key2!27))) key1!43)))))

(assert (=> d!8957 (isStrictlySorted!213 (removeStrictlySorted!28 (t!4269 l!812) key2!27))))

(assert (=> d!8957 (= (removeStrictlySorted!28 (removeStrictlySorted!28 (t!4269 l!812) key2!27) key1!43) lt!20221)))

(declare-fun e!29128 () List!1236)

(declare-fun b!45750 () Bool)

(assert (=> b!45750 (= e!29128 ($colon$colon!33 (removeStrictlySorted!28 (t!4269 (removeStrictlySorted!28 (t!4269 l!812) key2!27)) key1!43) (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key2!27))))))

(declare-fun b!45751 () Bool)

(assert (=> b!45751 (= e!29129 (t!4269 (removeStrictlySorted!28 (t!4269 l!812) key2!27)))))

(declare-fun b!45752 () Bool)

(assert (=> b!45752 (= e!29128 Nil!1233)))

(declare-fun b!45753 () Bool)

(assert (=> b!45753 (= e!29129 e!29128)))

(declare-fun c!6181 () Bool)

(assert (=> b!45753 (= c!6181 (and (is-Cons!1232 (removeStrictlySorted!28 (t!4269 l!812) key2!27)) (not (= (_1!838 (h!1812 (removeStrictlySorted!28 (t!4269 l!812) key2!27))) key1!43))))))

(assert (= (and d!8957 c!6180) b!45751))

(assert (= (and d!8957 (not c!6180)) b!45753))

(assert (= (and b!45753 c!6181) b!45750))

(assert (= (and b!45753 (not c!6181)) b!45752))

(assert (= (and d!8957 res!26800) b!45749))

(declare-fun m!40331 () Bool)

(assert (=> b!45749 m!40331))

(declare-fun m!40333 () Bool)

(assert (=> d!8957 m!40333))

(assert (=> d!8957 m!40163))

(declare-fun m!40335 () Bool)

(assert (=> d!8957 m!40335))

(declare-fun m!40337 () Bool)

(assert (=> b!45750 m!40337))

(assert (=> b!45750 m!40337))

(declare-fun m!40339 () Bool)

(assert (=> b!45750 m!40339))

(assert (=> b!45606 d!8957))

(declare-fun b!45764 () Bool)

(declare-fun e!29139 () Bool)

(declare-fun lt!20222 () List!1236)

(assert (=> b!45764 (= e!29139 (not (containsKey!78 lt!20222 key1!43)))))

(declare-fun d!8965 () Bool)

(assert (=> d!8965 e!29139))

(declare-fun res!26807 () Bool)

(assert (=> d!8965 (=> (not res!26807) (not e!29139))))

(assert (=> d!8965 (= res!26807 (isStrictlySorted!213 lt!20222))))

(declare-fun e!29138 () List!1236)

(assert (=> d!8965 (= lt!20222 e!29138)))

(declare-fun c!6182 () Bool)

(assert (=> d!8965 (= c!6182 (and (is-Cons!1232 (t!4269 l!812)) (= (_1!838 (h!1812 (t!4269 l!812))) key1!43)))))

(assert (=> d!8965 (isStrictlySorted!213 (t!4269 l!812))))

(assert (=> d!8965 (= (removeStrictlySorted!28 (t!4269 l!812) key1!43) lt!20222)))

(declare-fun b!45765 () Bool)

(declare-fun e!29137 () List!1236)

(assert (=> b!45765 (= e!29137 ($colon$colon!33 (removeStrictlySorted!28 (t!4269 (t!4269 l!812)) key1!43) (h!1812 (t!4269 l!812))))))

(declare-fun b!45766 () Bool)

(assert (=> b!45766 (= e!29138 (t!4269 (t!4269 l!812)))))

(declare-fun b!45767 () Bool)

(assert (=> b!45767 (= e!29137 Nil!1233)))

(declare-fun b!45768 () Bool)

(assert (=> b!45768 (= e!29138 e!29137)))

(declare-fun c!6183 () Bool)

(assert (=> b!45768 (= c!6183 (and (is-Cons!1232 (t!4269 l!812)) (not (= (_1!838 (h!1812 (t!4269 l!812))) key1!43))))))

(assert (= (and d!8965 c!6182) b!45766))

(assert (= (and d!8965 (not c!6182)) b!45768))

(assert (= (and b!45768 c!6183) b!45765))

(assert (= (and b!45768 (not c!6183)) b!45767))

(assert (= (and d!8965 res!26807) b!45764))

(declare-fun m!40343 () Bool)

(assert (=> b!45764 m!40343))

(declare-fun m!40345 () Bool)

(assert (=> d!8965 m!40345))

(assert (=> d!8965 m!40171))

(declare-fun m!40347 () Bool)

(assert (=> b!45765 m!40347))

(assert (=> b!45765 m!40347))

(declare-fun m!40349 () Bool)

(assert (=> b!45765 m!40349))

(assert (=> b!45606 d!8965))

(declare-fun d!8967 () Bool)

(declare-fun res!26808 () Bool)

(declare-fun e!29146 () Bool)

(assert (=> d!8967 (=> res!26808 e!29146)))

(assert (=> d!8967 (= res!26808 (or (is-Nil!1233 (removeStrictlySorted!28 l!812 key1!43)) (is-Nil!1233 (t!4269 (removeStrictlySorted!28 l!812 key1!43)))))))

(assert (=> d!8967 (= (isStrictlySorted!213 (removeStrictlySorted!28 l!812 key1!43)) e!29146)))

(declare-fun b!45775 () Bool)

(declare-fun e!29147 () Bool)

(assert (=> b!45775 (= e!29146 e!29147)))

(declare-fun res!26809 () Bool)

(assert (=> b!45775 (=> (not res!26809) (not e!29147))))

(assert (=> b!45775 (= res!26809 (bvslt (_1!838 (h!1812 (removeStrictlySorted!28 l!812 key1!43))) (_1!838 (h!1812 (t!4269 (removeStrictlySorted!28 l!812 key1!43))))))))

(declare-fun b!45776 () Bool)

(assert (=> b!45776 (= e!29147 (isStrictlySorted!213 (t!4269 (removeStrictlySorted!28 l!812 key1!43))))))

(assert (= (and d!8967 (not res!26808)) b!45775))

(assert (= (and b!45775 res!26809) b!45776))

(declare-fun m!40351 () Bool)

(assert (=> b!45776 m!40351))

(assert (=> b!45606 d!8967))

(declare-fun b!45781 () Bool)

(declare-fun e!29150 () Bool)

(declare-fun tp!5999 () Bool)

(assert (=> b!45781 (= e!29150 (and tp_is_empty!1927 tp!5999))))

(assert (=> b!45607 (= tp!5984 e!29150)))

(assert (= (and b!45607 (is-Cons!1232 (t!4269 l!812))) b!45781))

(push 1)

