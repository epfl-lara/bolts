; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7124 () Bool)

(assert start!7124)

(declare-fun b!45629 () Bool)

(declare-fun res!26758 () Bool)

(declare-fun e!29047 () Bool)

(assert (=> b!45629 (=> (not res!26758) (not e!29047))))

(declare-datatypes ((B!834 0))(
  ( (B!835 (val!1004 Int)) )
))
(declare-datatypes ((tuple2!1660 0))(
  ( (tuple2!1661 (_1!840 (_ BitVec 64)) (_2!840 B!834)) )
))
(declare-datatypes ((List!1238 0))(
  ( (Nil!1235) (Cons!1234 (h!1814 tuple2!1660) (t!4271 List!1238)) )
))
(declare-fun l!812 () List!1238)

(declare-fun isStrictlySorted!215 (List!1238) Bool)

(assert (=> b!45629 (= res!26758 (isStrictlySorted!215 (t!4271 l!812)))))

(declare-fun b!45628 () Bool)

(declare-fun res!26756 () Bool)

(assert (=> b!45628 (=> (not res!26756) (not e!29047))))

(assert (=> b!45628 (= res!26756 (is-Cons!1234 l!812))))

(declare-fun b!45630 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!30 (List!1238 (_ BitVec 64)) List!1238)

(assert (=> b!45630 (= e!29047 (not (isStrictlySorted!215 (removeStrictlySorted!30 l!812 key1!43))))))

(declare-fun key2!27 () (_ BitVec 64))

(assert (=> b!45630 (= (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key1!43) key2!27) (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1307 0))(
  ( (Unit!1308) )
))
(declare-fun lt!20192 () Unit!1307)

(declare-fun lemmaRemoveStrictlySortedCommutative!9 (List!1238 (_ BitVec 64) (_ BitVec 64)) Unit!1307)

(assert (=> b!45630 (= lt!20192 (lemmaRemoveStrictlySortedCommutative!9 (t!4271 l!812) key1!43 key2!27))))

(declare-fun b!45631 () Bool)

(declare-fun e!29048 () Bool)

(declare-fun tp_is_empty!1931 () Bool)

(declare-fun tp!5990 () Bool)

(assert (=> b!45631 (= e!29048 (and tp_is_empty!1931 tp!5990))))

(declare-fun res!26757 () Bool)

(assert (=> start!7124 (=> (not res!26757) (not e!29047))))

(assert (=> start!7124 (= res!26757 (isStrictlySorted!215 l!812))))

(assert (=> start!7124 e!29047))

(assert (=> start!7124 e!29048))

(assert (=> start!7124 true))

(assert (= (and start!7124 res!26757) b!45628))

(assert (= (and b!45628 res!26756) b!45629))

(assert (= (and b!45629 res!26758) b!45630))

(assert (= (and start!7124 (is-Cons!1234 l!812)) b!45631))

(declare-fun m!40191 () Bool)

(assert (=> b!45629 m!40191))

(declare-fun m!40193 () Bool)

(assert (=> b!45630 m!40193))

(declare-fun m!40195 () Bool)

(assert (=> b!45630 m!40195))

(declare-fun m!40197 () Bool)

(assert (=> b!45630 m!40197))

(assert (=> b!45630 m!40193))

(declare-fun m!40199 () Bool)

(assert (=> b!45630 m!40199))

(declare-fun m!40201 () Bool)

(assert (=> b!45630 m!40201))

(declare-fun m!40203 () Bool)

(assert (=> b!45630 m!40203))

(assert (=> b!45630 m!40199))

(assert (=> b!45630 m!40197))

(declare-fun m!40205 () Bool)

(assert (=> b!45630 m!40205))

(declare-fun m!40207 () Bool)

(assert (=> start!7124 m!40207))

(push 1)

(assert (not b!45630))

(assert (not b!45629))

(assert tp_is_empty!1931)

(assert (not b!45631))

(assert (not start!7124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8919 () Bool)

(declare-fun res!26771 () Bool)

(declare-fun e!29061 () Bool)

(assert (=> d!8919 (=> res!26771 e!29061)))

(assert (=> d!8919 (= res!26771 (or (is-Nil!1235 (t!4271 l!812)) (is-Nil!1235 (t!4271 (t!4271 l!812)))))))

(assert (=> d!8919 (= (isStrictlySorted!215 (t!4271 l!812)) e!29061)))

(declare-fun b!45644 () Bool)

(declare-fun e!29062 () Bool)

(assert (=> b!45644 (= e!29061 e!29062)))

(declare-fun res!26772 () Bool)

(assert (=> b!45644 (=> (not res!26772) (not e!29062))))

(assert (=> b!45644 (= res!26772 (bvslt (_1!840 (h!1814 (t!4271 l!812))) (_1!840 (h!1814 (t!4271 (t!4271 l!812))))))))

(declare-fun b!45645 () Bool)

(assert (=> b!45645 (= e!29062 (isStrictlySorted!215 (t!4271 (t!4271 l!812))))))

(assert (= (and d!8919 (not res!26771)) b!45644))

(assert (= (and b!45644 res!26772) b!45645))

(declare-fun m!40211 () Bool)

(assert (=> b!45645 m!40211))

(assert (=> b!45629 d!8919))

(declare-fun d!8925 () Bool)

(declare-fun res!26773 () Bool)

(declare-fun e!29063 () Bool)

(assert (=> d!8925 (=> res!26773 e!29063)))

(assert (=> d!8925 (= res!26773 (or (is-Nil!1235 l!812) (is-Nil!1235 (t!4271 l!812))))))

(assert (=> d!8925 (= (isStrictlySorted!215 l!812) e!29063)))

(declare-fun b!45646 () Bool)

(declare-fun e!29064 () Bool)

(assert (=> b!45646 (= e!29063 e!29064)))

(declare-fun res!26774 () Bool)

(assert (=> b!45646 (=> (not res!26774) (not e!29064))))

(assert (=> b!45646 (= res!26774 (bvslt (_1!840 (h!1814 l!812)) (_1!840 (h!1814 (t!4271 l!812)))))))

(declare-fun b!45647 () Bool)

(assert (=> b!45647 (= e!29064 (isStrictlySorted!215 (t!4271 l!812)))))

(assert (= (and d!8925 (not res!26773)) b!45646))

(assert (= (and b!45646 res!26774) b!45647))

(assert (=> b!45647 m!40191))

(assert (=> start!7124 d!8925))

(declare-fun b!45693 () Bool)

(declare-fun e!29093 () List!1238)

(assert (=> b!45693 (= e!29093 (t!4271 l!812))))

(declare-fun b!45694 () Bool)

(declare-fun e!29092 () List!1238)

(declare-fun $colon$colon!32 (List!1238 tuple2!1660) List!1238)

(assert (=> b!45694 (= e!29092 ($colon$colon!32 (removeStrictlySorted!30 (t!4271 l!812) key1!43) (h!1814 l!812)))))

(declare-fun b!45695 () Bool)

(assert (=> b!45695 (= e!29093 e!29092)))

(declare-fun c!6161 () Bool)

(assert (=> b!45695 (= c!6161 (and (is-Cons!1234 l!812) (not (= (_1!840 (h!1814 l!812)) key1!43))))))

(declare-fun d!8927 () Bool)

(declare-fun e!29094 () Bool)

(assert (=> d!8927 e!29094))

(declare-fun res!26784 () Bool)

(assert (=> d!8927 (=> (not res!26784) (not e!29094))))

(declare-fun lt!20202 () List!1238)

(assert (=> d!8927 (= res!26784 (isStrictlySorted!215 lt!20202))))

(assert (=> d!8927 (= lt!20202 e!29093)))

(declare-fun c!6160 () Bool)

(assert (=> d!8927 (= c!6160 (and (is-Cons!1234 l!812) (= (_1!840 (h!1814 l!812)) key1!43)))))

(assert (=> d!8927 (isStrictlySorted!215 l!812)))

(assert (=> d!8927 (= (removeStrictlySorted!30 l!812 key1!43) lt!20202)))

(declare-fun b!45696 () Bool)

(assert (=> b!45696 (= e!29092 Nil!1235)))

(declare-fun b!45697 () Bool)

(declare-fun containsKey!79 (List!1238 (_ BitVec 64)) Bool)

(assert (=> b!45697 (= e!29094 (not (containsKey!79 lt!20202 key1!43)))))

(assert (= (and d!8927 c!6160) b!45693))

(assert (= (and d!8927 (not c!6160)) b!45695))

(assert (= (and b!45695 c!6161) b!45694))

(assert (= (and b!45695 (not c!6161)) b!45696))

(assert (= (and d!8927 res!26784) b!45697))

(assert (=> b!45694 m!40193))

(assert (=> b!45694 m!40193))

(declare-fun m!40233 () Bool)

(assert (=> b!45694 m!40233))

(declare-fun m!40235 () Bool)

(assert (=> d!8927 m!40235))

(assert (=> d!8927 m!40207))

(declare-fun m!40237 () Bool)

(assert (=> b!45697 m!40237))

(assert (=> b!45630 d!8927))

(declare-fun b!45703 () Bool)

(declare-fun e!29099 () List!1238)

(assert (=> b!45703 (= e!29099 (t!4271 (t!4271 l!812)))))

(declare-fun b!45704 () Bool)

(declare-fun e!29098 () List!1238)

(assert (=> b!45704 (= e!29098 ($colon$colon!32 (removeStrictlySorted!30 (t!4271 (t!4271 l!812)) key2!27) (h!1814 (t!4271 l!812))))))

(declare-fun b!45705 () Bool)

(assert (=> b!45705 (= e!29099 e!29098)))

(declare-fun c!6165 () Bool)

(assert (=> b!45705 (= c!6165 (and (is-Cons!1234 (t!4271 l!812)) (not (= (_1!840 (h!1814 (t!4271 l!812))) key2!27))))))

(declare-fun d!8935 () Bool)

(declare-fun e!29100 () Bool)

(assert (=> d!8935 e!29100))

(declare-fun res!26786 () Bool)

(assert (=> d!8935 (=> (not res!26786) (not e!29100))))

(declare-fun lt!20206 () List!1238)

(assert (=> d!8935 (= res!26786 (isStrictlySorted!215 lt!20206))))

(assert (=> d!8935 (= lt!20206 e!29099)))

(declare-fun c!6164 () Bool)

(assert (=> d!8935 (= c!6164 (and (is-Cons!1234 (t!4271 l!812)) (= (_1!840 (h!1814 (t!4271 l!812))) key2!27)))))

(assert (=> d!8935 (isStrictlySorted!215 (t!4271 l!812))))

(assert (=> d!8935 (= (removeStrictlySorted!30 (t!4271 l!812) key2!27) lt!20206)))

(declare-fun b!45706 () Bool)

(assert (=> b!45706 (= e!29098 Nil!1235)))

(declare-fun b!45707 () Bool)

(assert (=> b!45707 (= e!29100 (not (containsKey!79 lt!20206 key2!27)))))

(assert (= (and d!8935 c!6164) b!45703))

(assert (= (and d!8935 (not c!6164)) b!45705))

(assert (= (and b!45705 c!6165) b!45704))

(assert (= (and b!45705 (not c!6165)) b!45706))

(assert (= (and d!8935 res!26786) b!45707))

(declare-fun m!40241 () Bool)

(assert (=> b!45704 m!40241))

(assert (=> b!45704 m!40241))

(declare-fun m!40247 () Bool)

(assert (=> b!45704 m!40247))

(declare-fun m!40249 () Bool)

(assert (=> d!8935 m!40249))

(assert (=> d!8935 m!40191))

(declare-fun m!40253 () Bool)

(assert (=> b!45707 m!40253))

(assert (=> b!45630 d!8935))

(declare-fun d!8939 () Bool)

(assert (=> d!8939 (= (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key1!43) key2!27) (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key2!27) key1!43))))

(declare-fun lt!20215 () Unit!1307)

(declare-fun choose!281 (List!1238 (_ BitVec 64) (_ BitVec 64)) Unit!1307)

(assert (=> d!8939 (= lt!20215 (choose!281 (t!4271 l!812) key1!43 key2!27))))

(assert (=> d!8939 (isStrictlySorted!215 (t!4271 l!812))))

(assert (=> d!8939 (= (lemmaRemoveStrictlySortedCommutative!9 (t!4271 l!812) key1!43 key2!27) lt!20215)))

(declare-fun bs!2148 () Bool)

(assert (= bs!2148 d!8939))

(assert (=> bs!2148 m!40199))

(assert (=> bs!2148 m!40201))

(assert (=> bs!2148 m!40193))

(assert (=> bs!2148 m!40195))

(assert (=> bs!2148 m!40191))

(assert (=> bs!2148 m!40199))

(assert (=> bs!2148 m!40193))

(declare-fun m!40285 () Bool)

(assert (=> bs!2148 m!40285))

(assert (=> b!45630 d!8939))

(declare-fun b!45723 () Bool)

(declare-fun e!29111 () List!1238)

(assert (=> b!45723 (= e!29111 (t!4271 (removeStrictlySorted!30 (t!4271 l!812) key1!43)))))

(declare-fun b!45724 () Bool)

(declare-fun e!29110 () List!1238)

(assert (=> b!45724 (= e!29110 ($colon$colon!32 (removeStrictlySorted!30 (t!4271 (removeStrictlySorted!30 (t!4271 l!812) key1!43)) key2!27) (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key1!43))))))

(declare-fun b!45725 () Bool)

(assert (=> b!45725 (= e!29111 e!29110)))

(declare-fun c!6173 () Bool)

(assert (=> b!45725 (= c!6173 (and (is-Cons!1234 (removeStrictlySorted!30 (t!4271 l!812) key1!43)) (not (= (_1!840 (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key1!43))) key2!27))))))

(declare-fun d!8949 () Bool)

(declare-fun e!29112 () Bool)

(assert (=> d!8949 e!29112))

(declare-fun res!26790 () Bool)

(assert (=> d!8949 (=> (not res!26790) (not e!29112))))

(declare-fun lt!20217 () List!1238)

(assert (=> d!8949 (= res!26790 (isStrictlySorted!215 lt!20217))))

(assert (=> d!8949 (= lt!20217 e!29111)))

(declare-fun c!6172 () Bool)

(assert (=> d!8949 (= c!6172 (and (is-Cons!1234 (removeStrictlySorted!30 (t!4271 l!812) key1!43)) (= (_1!840 (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key1!43))) key2!27)))))

(assert (=> d!8949 (isStrictlySorted!215 (removeStrictlySorted!30 (t!4271 l!812) key1!43))))

(assert (=> d!8949 (= (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key1!43) key2!27) lt!20217)))

(declare-fun b!45726 () Bool)

(assert (=> b!45726 (= e!29110 Nil!1235)))

(declare-fun b!45727 () Bool)

(assert (=> b!45727 (= e!29112 (not (containsKey!79 lt!20217 key2!27)))))

(assert (= (and d!8949 c!6172) b!45723))

(assert (= (and d!8949 (not c!6172)) b!45725))

(assert (= (and b!45725 c!6173) b!45724))

(assert (= (and b!45725 (not c!6173)) b!45726))

(assert (= (and d!8949 res!26790) b!45727))

(declare-fun m!40289 () Bool)

(assert (=> b!45724 m!40289))

(assert (=> b!45724 m!40289))

(declare-fun m!40291 () Bool)

(assert (=> b!45724 m!40291))

(declare-fun m!40293 () Bool)

(assert (=> d!8949 m!40293))

(assert (=> d!8949 m!40193))

(declare-fun m!40295 () Bool)

(assert (=> d!8949 m!40295))

(declare-fun m!40297 () Bool)

(assert (=> b!45727 m!40297))

(assert (=> b!45630 d!8949))

(declare-fun b!45737 () Bool)

(declare-fun e!29121 () List!1238)

(assert (=> b!45737 (= e!29121 (t!4271 (removeStrictlySorted!30 (t!4271 l!812) key2!27)))))

(declare-fun b!45738 () Bool)

(declare-fun e!29120 () List!1238)

(assert (=> b!45738 (= e!29120 ($colon$colon!32 (removeStrictlySorted!30 (t!4271 (removeStrictlySorted!30 (t!4271 l!812) key2!27)) key1!43) (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key2!27))))))

(declare-fun b!45739 () Bool)

(assert (=> b!45739 (= e!29121 e!29120)))

(declare-fun c!6177 () Bool)

(assert (=> b!45739 (= c!6177 (and (is-Cons!1234 (removeStrictlySorted!30 (t!4271 l!812) key2!27)) (not (= (_1!840 (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key2!27))) key1!43))))))

(declare-fun d!8953 () Bool)

(declare-fun e!29122 () Bool)

(assert (=> d!8953 e!29122))

(declare-fun res!26796 () Bool)

(assert (=> d!8953 (=> (not res!26796) (not e!29122))))

(declare-fun lt!20219 () List!1238)

(assert (=> d!8953 (= res!26796 (isStrictlySorted!215 lt!20219))))

(assert (=> d!8953 (= lt!20219 e!29121)))

(declare-fun c!6176 () Bool)

(assert (=> d!8953 (= c!6176 (and (is-Cons!1234 (removeStrictlySorted!30 (t!4271 l!812) key2!27)) (= (_1!840 (h!1814 (removeStrictlySorted!30 (t!4271 l!812) key2!27))) key1!43)))))

(assert (=> d!8953 (isStrictlySorted!215 (removeStrictlySorted!30 (t!4271 l!812) key2!27))))

(assert (=> d!8953 (= (removeStrictlySorted!30 (removeStrictlySorted!30 (t!4271 l!812) key2!27) key1!43) lt!20219)))

(declare-fun b!45740 () Bool)

(assert (=> b!45740 (= e!29120 Nil!1235)))

(declare-fun b!45741 () Bool)

(assert (=> b!45741 (= e!29122 (not (containsKey!79 lt!20219 key1!43)))))

(assert (= (and d!8953 c!6176) b!45737))

(assert (= (and d!8953 (not c!6176)) b!45739))

(assert (= (and b!45739 c!6177) b!45738))

(assert (= (and b!45739 (not c!6177)) b!45740))

(assert (= (and d!8953 res!26796) b!45741))

(declare-fun m!40301 () Bool)

(assert (=> b!45738 m!40301))

(assert (=> b!45738 m!40301))

(declare-fun m!40305 () Bool)

(assert (=> b!45738 m!40305))

(declare-fun m!40309 () Bool)

(assert (=> d!8953 m!40309))

(assert (=> d!8953 m!40199))

(declare-fun m!40313 () Bool)

(assert (=> d!8953 m!40313))

(declare-fun m!40315 () Bool)

(assert (=> b!45741 m!40315))

(assert (=> b!45630 d!8953))

(declare-fun b!45744 () Bool)

(declare-fun e!29126 () List!1238)

(assert (=> b!45744 (= e!29126 (t!4271 (t!4271 l!812)))))

