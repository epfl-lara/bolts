; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132982 () Bool)

(assert start!132982)

(declare-fun b!1556638 () Bool)

(declare-fun res!1064956 () Bool)

(declare-fun e!867063 () Bool)

(assert (=> b!1556638 (=> (not res!1064956) (not e!867063))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2354 0))(
  ( (B!2355 (val!19263 Int)) )
))
(declare-datatypes ((tuple2!25042 0))(
  ( (tuple2!25043 (_1!12531 (_ BitVec 64)) (_2!12531 B!2354)) )
))
(declare-datatypes ((List!36443 0))(
  ( (Nil!36440) (Cons!36439 (h!37886 tuple2!25042) (t!51174 List!36443)) )
))
(declare-fun l!1177 () List!36443)

(assert (=> b!1556638 (= res!1064956 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36439 l!1177)) (= (_1!12531 (h!37886 l!1177)) otherKey!50))))))

(declare-fun b!1556639 () Bool)

(declare-fun e!867062 () Bool)

(assert (=> b!1556639 (= e!867063 e!867062)))

(declare-fun res!1064958 () Bool)

(assert (=> b!1556639 (=> res!1064958 e!867062)))

(declare-fun lt!670379 () List!36443)

(declare-fun containsKey!810 (List!36443 (_ BitVec 64)) Bool)

(assert (=> b!1556639 (= res!1064958 (not (= (containsKey!810 lt!670379 otherKey!50) (containsKey!810 l!1177 otherKey!50))))))

(declare-fun newValue!105 () B!2354)

(declare-fun insertStrictlySorted!552 (List!36443 (_ BitVec 64) B!2354) List!36443)

(assert (=> b!1556639 (= lt!670379 (insertStrictlySorted!552 l!1177 newKey!105 newValue!105))))

(declare-fun b!1556641 () Bool)

(declare-fun e!867061 () Bool)

(declare-fun tp_is_empty!38365 () Bool)

(declare-fun tp!112447 () Bool)

(assert (=> b!1556641 (= e!867061 (and tp_is_empty!38365 tp!112447))))

(declare-fun res!1064957 () Bool)

(assert (=> start!132982 (=> (not res!1064957) (not e!867063))))

(declare-fun isStrictlySorted!947 (List!36443) Bool)

(assert (=> start!132982 (= res!1064957 (isStrictlySorted!947 l!1177))))

(assert (=> start!132982 e!867063))

(assert (=> start!132982 e!867061))

(assert (=> start!132982 true))

(assert (=> start!132982 tp_is_empty!38365))

(declare-fun b!1556640 () Bool)

(declare-datatypes ((Option!855 0))(
  ( (Some!854 (v!22038 B!2354)) (None!853) )
))
(declare-fun getValueByKey!780 (List!36443 (_ BitVec 64)) Option!855)

(assert (=> b!1556640 (= e!867062 (not (= (getValueByKey!780 lt!670379 otherKey!50) (getValueByKey!780 l!1177 otherKey!50))))))

(assert (= (and start!132982 res!1064957) b!1556638))

(assert (= (and b!1556638 res!1064956) b!1556639))

(assert (= (and b!1556639 (not res!1064958)) b!1556640))

(assert (= (and start!132982 (is-Cons!36439 l!1177)) b!1556641))

(declare-fun m!1434087 () Bool)

(assert (=> b!1556639 m!1434087))

(declare-fun m!1434089 () Bool)

(assert (=> b!1556639 m!1434089))

(declare-fun m!1434091 () Bool)

(assert (=> b!1556639 m!1434091))

(declare-fun m!1434093 () Bool)

(assert (=> start!132982 m!1434093))

(declare-fun m!1434095 () Bool)

(assert (=> b!1556640 m!1434095))

(declare-fun m!1434097 () Bool)

(assert (=> b!1556640 m!1434097))

(push 1)

(assert (not b!1556641))

(assert tp_is_empty!38365)

(assert (not start!132982))

(assert (not b!1556640))

(assert (not b!1556639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162219 () Bool)

(declare-fun res!1064995 () Bool)

(declare-fun e!867100 () Bool)

(assert (=> d!162219 (=> res!1064995 e!867100)))

(assert (=> d!162219 (= res!1064995 (or (is-Nil!36440 l!1177) (is-Nil!36440 (t!51174 l!1177))))))

(assert (=> d!162219 (= (isStrictlySorted!947 l!1177) e!867100)))

(declare-fun b!1556684 () Bool)

(declare-fun e!867101 () Bool)

(assert (=> b!1556684 (= e!867100 e!867101)))

(declare-fun res!1064996 () Bool)

(assert (=> b!1556684 (=> (not res!1064996) (not e!867101))))

(assert (=> b!1556684 (= res!1064996 (bvslt (_1!12531 (h!37886 l!1177)) (_1!12531 (h!37886 (t!51174 l!1177)))))))

(declare-fun b!1556685 () Bool)

(assert (=> b!1556685 (= e!867101 (isStrictlySorted!947 (t!51174 l!1177)))))

(assert (= (and d!162219 (not res!1064995)) b!1556684))

(assert (= (and b!1556684 res!1064996) b!1556685))

(declare-fun m!1434129 () Bool)

(assert (=> b!1556685 m!1434129))

(assert (=> start!132982 d!162219))

(declare-fun b!1556710 () Bool)

(declare-fun e!867114 () Option!855)

(assert (=> b!1556710 (= e!867114 (Some!854 (_2!12531 (h!37886 lt!670379))))))

(declare-fun b!1556713 () Bool)

(declare-fun e!867115 () Option!855)

(assert (=> b!1556713 (= e!867115 None!853)))

(declare-fun b!1556712 () Bool)

(assert (=> b!1556712 (= e!867115 (getValueByKey!780 (t!51174 lt!670379) otherKey!50))))

(declare-fun b!1556711 () Bool)

(assert (=> b!1556711 (= e!867114 e!867115)))

(declare-fun c!143794 () Bool)

(assert (=> b!1556711 (= c!143794 (and (is-Cons!36439 lt!670379) (not (= (_1!12531 (h!37886 lt!670379)) otherKey!50))))))

(declare-fun d!162227 () Bool)

(declare-fun c!143793 () Bool)

(assert (=> d!162227 (= c!143793 (and (is-Cons!36439 lt!670379) (= (_1!12531 (h!37886 lt!670379)) otherKey!50)))))

(assert (=> d!162227 (= (getValueByKey!780 lt!670379 otherKey!50) e!867114)))

(assert (= (and d!162227 c!143793) b!1556710))

(assert (= (and d!162227 (not c!143793)) b!1556711))

(assert (= (and b!1556711 c!143794) b!1556712))

(assert (= (and b!1556711 (not c!143794)) b!1556713))

(declare-fun m!1434135 () Bool)

(assert (=> b!1556712 m!1434135))

(assert (=> b!1556640 d!162227))

(declare-fun b!1556714 () Bool)

(declare-fun e!867116 () Option!855)

(assert (=> b!1556714 (= e!867116 (Some!854 (_2!12531 (h!37886 l!1177))))))

(declare-fun b!1556717 () Bool)

(declare-fun e!867117 () Option!855)

(assert (=> b!1556717 (= e!867117 None!853)))

(declare-fun b!1556716 () Bool)

(assert (=> b!1556716 (= e!867117 (getValueByKey!780 (t!51174 l!1177) otherKey!50))))

(declare-fun b!1556715 () Bool)

(assert (=> b!1556715 (= e!867116 e!867117)))

(declare-fun c!143796 () Bool)

(assert (=> b!1556715 (= c!143796 (and (is-Cons!36439 l!1177) (not (= (_1!12531 (h!37886 l!1177)) otherKey!50))))))

(declare-fun d!162233 () Bool)

(declare-fun c!143795 () Bool)

(assert (=> d!162233 (= c!143795 (and (is-Cons!36439 l!1177) (= (_1!12531 (h!37886 l!1177)) otherKey!50)))))

(assert (=> d!162233 (= (getValueByKey!780 l!1177 otherKey!50) e!867116)))

(assert (= (and d!162233 c!143795) b!1556714))

(assert (= (and d!162233 (not c!143795)) b!1556715))

(assert (= (and b!1556715 c!143796) b!1556716))

(assert (= (and b!1556715 (not c!143796)) b!1556717))

(declare-fun m!1434137 () Bool)

(assert (=> b!1556716 m!1434137))

(assert (=> b!1556640 d!162233))

(declare-fun d!162235 () Bool)

(declare-fun res!1065009 () Bool)

(declare-fun e!867136 () Bool)

(assert (=> d!162235 (=> res!1065009 e!867136)))

(assert (=> d!162235 (= res!1065009 (and (is-Cons!36439 lt!670379) (= (_1!12531 (h!37886 lt!670379)) otherKey!50)))))

(assert (=> d!162235 (= (containsKey!810 lt!670379 otherKey!50) e!867136)))

(declare-fun b!1556742 () Bool)

(declare-fun e!867137 () Bool)

(assert (=> b!1556742 (= e!867136 e!867137)))

(declare-fun res!1065010 () Bool)

(assert (=> b!1556742 (=> (not res!1065010) (not e!867137))))

(assert (=> b!1556742 (= res!1065010 (and (or (not (is-Cons!36439 lt!670379)) (bvsle (_1!12531 (h!37886 lt!670379)) otherKey!50)) (is-Cons!36439 lt!670379) (bvslt (_1!12531 (h!37886 lt!670379)) otherKey!50)))))

(declare-fun b!1556743 () Bool)

(assert (=> b!1556743 (= e!867137 (containsKey!810 (t!51174 lt!670379) otherKey!50))))

(assert (= (and d!162235 (not res!1065009)) b!1556742))

(assert (= (and b!1556742 res!1065010) b!1556743))

(declare-fun m!1434143 () Bool)

(assert (=> b!1556743 m!1434143))

(assert (=> b!1556639 d!162235))

(declare-fun d!162241 () Bool)

(declare-fun res!1065011 () Bool)

(declare-fun e!867140 () Bool)

(assert (=> d!162241 (=> res!1065011 e!867140)))

(assert (=> d!162241 (= res!1065011 (and (is-Cons!36439 l!1177) (= (_1!12531 (h!37886 l!1177)) otherKey!50)))))

(assert (=> d!162241 (= (containsKey!810 l!1177 otherKey!50) e!867140)))

(declare-fun b!1556748 () Bool)

(declare-fun e!867141 () Bool)

(assert (=> b!1556748 (= e!867140 e!867141)))

(declare-fun res!1065012 () Bool)

(assert (=> b!1556748 (=> (not res!1065012) (not e!867141))))

(assert (=> b!1556748 (= res!1065012 (and (or (not (is-Cons!36439 l!1177)) (bvsle (_1!12531 (h!37886 l!1177)) otherKey!50)) (is-Cons!36439 l!1177) (bvslt (_1!12531 (h!37886 l!1177)) otherKey!50)))))

(declare-fun b!1556749 () Bool)

(assert (=> b!1556749 (= e!867141 (containsKey!810 (t!51174 l!1177) otherKey!50))))

(assert (= (and d!162241 (not res!1065011)) b!1556748))

(assert (= (and b!1556748 res!1065012) b!1556749))

(declare-fun m!1434145 () Bool)

(assert (=> b!1556749 m!1434145))

(assert (=> b!1556639 d!162241))

(declare-fun c!143839 () Bool)

(declare-fun b!1556841 () Bool)

(declare-fun e!867195 () List!36443)

(declare-fun c!143837 () Bool)

(assert (=> b!1556841 (= e!867195 (ite c!143837 (t!51174 l!1177) (ite c!143839 (Cons!36439 (h!37886 l!1177) (t!51174 l!1177)) Nil!36440)))))

(declare-fun b!1556842 () Bool)

(declare-fun e!867191 () List!36443)

(declare-fun call!71647 () List!36443)

(assert (=> b!1556842 (= e!867191 call!71647)))

(declare-fun b!1556843 () Bool)

(declare-fun e!867193 () List!36443)

(declare-fun call!71649 () List!36443)

(assert (=> b!1556843 (= e!867193 call!71649)))

(declare-fun d!162243 () Bool)

(declare-fun e!867194 () Bool)

(assert (=> d!162243 e!867194))

(declare-fun res!1065036 () Bool)

(assert (=> d!162243 (=> (not res!1065036) (not e!867194))))

(declare-fun lt!670394 () List!36443)

(assert (=> d!162243 (= res!1065036 (isStrictlySorted!947 lt!670394))))

(declare-fun e!867192 () List!36443)

(assert (=> d!162243 (= lt!670394 e!867192)))

(declare-fun c!143838 () Bool)

(assert (=> d!162243 (= c!143838 (and (is-Cons!36439 l!1177) (bvslt (_1!12531 (h!37886 l!1177)) newKey!105)))))

(assert (=> d!162243 (isStrictlySorted!947 l!1177)))

(assert (=> d!162243 (= (insertStrictlySorted!552 l!1177 newKey!105 newValue!105) lt!670394)))

(declare-fun bm!71644 () Bool)

(declare-fun call!71648 () List!36443)

(assert (=> bm!71644 (= call!71647 call!71648)))

(declare-fun b!1556844 () Bool)

(assert (=> b!1556844 (= e!867193 call!71649)))

(declare-fun b!1556845 () Bool)

(assert (=> b!1556845 (= e!867195 (insertStrictlySorted!552 (t!51174 l!1177) newKey!105 newValue!105))))

(declare-fun b!1556846 () Bool)

(assert (=> b!1556846 (= e!867192 call!71648)))

(declare-fun b!1556847 () Bool)

(declare-fun contains!10193 (List!36443 tuple2!25042) Bool)

(assert (=> b!1556847 (= e!867194 (contains!10193 lt!670394 (tuple2!25043 newKey!105 newValue!105)))))

(declare-fun b!1556848 () Bool)

(declare-fun res!1065035 () Bool)

(assert (=> b!1556848 (=> (not res!1065035) (not e!867194))))

(assert (=> b!1556848 (= res!1065035 (containsKey!810 lt!670394 newKey!105))))

(declare-fun b!1556849 () Bool)

(assert (=> b!1556849 (= c!143839 (and (is-Cons!36439 l!1177) (bvsgt (_1!12531 (h!37886 l!1177)) newKey!105)))))

(assert (=> b!1556849 (= e!867191 e!867193)))

(declare-fun bm!71645 () Bool)

(declare-fun $colon$colon!972 (List!36443 tuple2!25042) List!36443)

(assert (=> bm!71645 (= call!71648 ($colon$colon!972 e!867195 (ite c!143838 (h!37886 l!1177) (tuple2!25043 newKey!105 newValue!105))))))

(declare-fun c!143840 () Bool)

(assert (=> bm!71645 (= c!143840 c!143838)))

(declare-fun b!1556850 () Bool)

(assert (=> b!1556850 (= e!867192 e!867191)))

(assert (=> b!1556850 (= c!143837 (and (is-Cons!36439 l!1177) (= (_1!12531 (h!37886 l!1177)) newKey!105)))))

(declare-fun bm!71646 () Bool)

(assert (=> bm!71646 (= call!71649 call!71647)))

(assert (= (and d!162243 c!143838) b!1556846))

(assert (= (and d!162243 (not c!143838)) b!1556850))

(assert (= (and b!1556850 c!143837) b!1556842))

(assert (= (and b!1556850 (not c!143837)) b!1556849))

(assert (= (and b!1556849 c!143839) b!1556844))

(assert (= (and b!1556849 (not c!143839)) b!1556843))

(assert (= (or b!1556844 b!1556843) bm!71646))

(assert (= (or b!1556842 bm!71646) bm!71644))

(assert (= (or b!1556846 bm!71644) bm!71645))

(assert (= (and bm!71645 c!143840) b!1556845))

(assert (= (and bm!71645 (not c!143840)) b!1556841))

(assert (= (and d!162243 res!1065036) b!1556848))

(assert (= (and b!1556848 res!1065035) b!1556847))

(declare-fun m!1434173 () Bool)

(assert (=> b!1556847 m!1434173))

(declare-fun m!1434175 () Bool)

(assert (=> b!1556845 m!1434175))

(declare-fun m!1434177 () Bool)

(assert (=> d!162243 m!1434177))

(assert (=> d!162243 m!1434093))

(declare-fun m!1434179 () Bool)

(assert (=> bm!71645 m!1434179))

(declare-fun m!1434181 () Bool)

(assert (=> b!1556848 m!1434181))

(assert (=> b!1556639 d!162243))

(declare-fun b!1556860 () Bool)

(declare-fun e!867201 () Bool)

(declare-fun tp!112462 () Bool)

(assert (=> b!1556860 (= e!867201 (and tp_is_empty!38365 tp!112462))))

(assert (=> b!1556641 (= tp!112447 e!867201)))

(assert (= (and b!1556641 (is-Cons!36439 (t!51174 l!1177))) b!1556860))

(push 1)

(assert (not b!1556845))

(assert (not b!1556749))

(assert (not b!1556848))

(assert (not d!162243))

(assert (not b!1556860))

(assert tp_is_empty!38365)

(assert (not b!1556716))

(assert (not bm!71645))

(assert (not b!1556712))

(assert (not b!1556685))

(assert (not b!1556847))

(assert (not b!1556743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162271 () Bool)

(declare-fun res!1065055 () Bool)

(declare-fun e!867227 () Bool)

(assert (=> d!162271 (=> res!1065055 e!867227)))

(assert (=> d!162271 (= res!1065055 (and (is-Cons!36439 (t!51174 l!1177)) (= (_1!12531 (h!37886 (t!51174 l!1177))) otherKey!50)))))

(assert (=> d!162271 (= (containsKey!810 (t!51174 l!1177) otherKey!50) e!867227)))

(declare-fun b!1556895 () Bool)

(declare-fun e!867228 () Bool)

(assert (=> b!1556895 (= e!867227 e!867228)))

(declare-fun res!1065056 () Bool)

(assert (=> b!1556895 (=> (not res!1065056) (not e!867228))))

(assert (=> b!1556895 (= res!1065056 (and (or (not (is-Cons!36439 (t!51174 l!1177))) (bvsle (_1!12531 (h!37886 (t!51174 l!1177))) otherKey!50)) (is-Cons!36439 (t!51174 l!1177)) (bvslt (_1!12531 (h!37886 (t!51174 l!1177))) otherKey!50)))))

(declare-fun b!1556896 () Bool)

(assert (=> b!1556896 (= e!867228 (containsKey!810 (t!51174 (t!51174 l!1177)) otherKey!50))))

(assert (= (and d!162271 (not res!1065055)) b!1556895))

(assert (= (and b!1556895 res!1065056) b!1556896))

(declare-fun m!1434203 () Bool)

(assert (=> b!1556896 m!1434203))

(assert (=> b!1556749 d!162271))

(declare-fun d!162273 () Bool)

(declare-fun lt!670401 () Bool)

(declare-fun content!802 (List!36443) (Set tuple2!25042))

(assert (=> d!162273 (= lt!670401 (set.member (tuple2!25043 newKey!105 newValue!105) (content!802 lt!670394)))))

(declare-fun e!867234 () Bool)

(assert (=> d!162273 (= lt!670401 e!867234)))

(declare-fun res!1065061 () Bool)

(assert (=> d!162273 (=> (not res!1065061) (not e!867234))))

(assert (=> d!162273 (= res!1065061 (is-Cons!36439 lt!670394))))

(assert (=> d!162273 (= (contains!10193 lt!670394 (tuple2!25043 newKey!105 newValue!105)) lt!670401)))

(declare-fun b!1556902 () Bool)

(declare-fun e!867235 () Bool)

(assert (=> b!1556902 (= e!867234 e!867235)))

(declare-fun res!1065062 () Bool)

(assert (=> b!1556902 (=> res!1065062 e!867235)))

(assert (=> b!1556902 (= res!1065062 (= (h!37886 lt!670394) (tuple2!25043 newKey!105 newValue!105)))))

(declare-fun b!1556903 () Bool)

(assert (=> b!1556903 (= e!867235 (contains!10193 (t!51174 lt!670394) (tuple2!25043 newKey!105 newValue!105)))))

(assert (= (and d!162273 res!1065061) b!1556902))

(assert (= (and b!1556902 (not res!1065062)) b!1556903))

(declare-fun m!1434215 () Bool)

(assert (=> d!162273 m!1434215))

(declare-fun m!1434217 () Bool)

(assert (=> d!162273 m!1434217))

(declare-fun m!1434219 () Bool)

(assert (=> b!1556903 m!1434219))

(assert (=> b!1556847 d!162273))

(declare-fun b!1556904 () Bool)

(declare-fun e!867236 () Option!855)

(assert (=> b!1556904 (= e!867236 (Some!854 (_2!12531 (h!37886 (t!51174 lt!670379)))))))

(declare-fun b!1556907 () Bool)

(declare-fun e!867237 () Option!855)

(assert (=> b!1556907 (= e!867237 None!853)))

(declare-fun b!1556906 () Bool)

(assert (=> b!1556906 (= e!867237 (getValueByKey!780 (t!51174 (t!51174 lt!670379)) otherKey!50))))

(declare-fun b!1556905 () Bool)

(assert (=> b!1556905 (= e!867236 e!867237)))

(declare-fun c!143850 () Bool)

(assert (=> b!1556905 (= c!143850 (and (is-Cons!36439 (t!51174 lt!670379)) (not (= (_1!12531 (h!37886 (t!51174 lt!670379))) otherKey!50))))))

(declare-fun d!162275 () Bool)

(declare-fun c!143849 () Bool)

(assert (=> d!162275 (= c!143849 (and (is-Cons!36439 (t!51174 lt!670379)) (= (_1!12531 (h!37886 (t!51174 lt!670379))) otherKey!50)))))

(assert (=> d!162275 (= (getValueByKey!780 (t!51174 lt!670379) otherKey!50) e!867236)))

(assert (= (and d!162275 c!143849) b!1556904))

(assert (= (and d!162275 (not c!143849)) b!1556905))

(assert (= (and b!1556905 c!143850) b!1556906))

(assert (= (and b!1556905 (not c!143850)) b!1556907))

(declare-fun m!1434221 () Bool)

(assert (=> b!1556906 m!1434221))

(assert (=> b!1556712 d!162275))

(declare-fun b!1556908 () Bool)

(declare-fun e!867238 () Option!855)

(assert (=> b!1556908 (= e!867238 (Some!854 (_2!12531 (h!37886 (t!51174 l!1177)))))))

(declare-fun b!1556911 () Bool)

(declare-fun e!867239 () Option!855)

(assert (=> b!1556911 (= e!867239 None!853)))

(declare-fun b!1556910 () Bool)

(assert (=> b!1556910 (= e!867239 (getValueByKey!780 (t!51174 (t!51174 l!1177)) otherKey!50))))

(declare-fun b!1556909 () Bool)

(assert (=> b!1556909 (= e!867238 e!867239)))

(declare-fun c!143852 () Bool)

(assert (=> b!1556909 (= c!143852 (and (is-Cons!36439 (t!51174 l!1177)) (not (= (_1!12531 (h!37886 (t!51174 l!1177))) otherKey!50))))))

(declare-fun d!162277 () Bool)

(declare-fun c!143851 () Bool)

(assert (=> d!162277 (= c!143851 (and (is-Cons!36439 (t!51174 l!1177)) (= (_1!12531 (h!37886 (t!51174 l!1177))) otherKey!50)))))

(assert (=> d!162277 (= (getValueByKey!780 (t!51174 l!1177) otherKey!50) e!867238)))

(assert (= (and d!162277 c!143851) b!1556908))

(assert (= (and d!162277 (not c!143851)) b!1556909))

(assert (= (and b!1556909 c!143852) b!1556910))

(assert (= (and b!1556909 (not c!143852)) b!1556911))

(declare-fun m!1434223 () Bool)

(assert (=> b!1556910 m!1434223))

(assert (=> b!1556716 d!162277))

(declare-fun d!162279 () Bool)

(declare-fun res!1065063 () Bool)

(declare-fun e!867240 () Bool)

(assert (=> d!162279 (=> res!1065063 e!867240)))

(assert (=> d!162279 (= res!1065063 (or (is-Nil!36440 lt!670394) (is-Nil!36440 (t!51174 lt!670394))))))

(assert (=> d!162279 (= (isStrictlySorted!947 lt!670394) e!867240)))

(declare-fun b!1556912 () Bool)

(declare-fun e!867241 () Bool)

(assert (=> b!1556912 (= e!867240 e!867241)))

(declare-fun res!1065064 () Bool)

(assert (=> b!1556912 (=> (not res!1065064) (not e!867241))))

(assert (=> b!1556912 (= res!1065064 (bvslt (_1!12531 (h!37886 lt!670394)) (_1!12531 (h!37886 (t!51174 lt!670394)))))))

(declare-fun b!1556913 () Bool)

(assert (=> b!1556913 (= e!867241 (isStrictlySorted!947 (t!51174 lt!670394)))))

(assert (= (and d!162279 (not res!1065063)) b!1556912))

(assert (= (and b!1556912 res!1065064) b!1556913))

(declare-fun m!1434225 () Bool)

(assert (=> b!1556913 m!1434225))

(assert (=> d!162243 d!162279))

(assert (=> d!162243 d!162219))

(declare-fun e!867246 () List!36443)

(declare-fun c!143853 () Bool)

(declare-fun b!1556914 () Bool)

(declare-fun c!143855 () Bool)

(assert (=> b!1556914 (= e!867246 (ite c!143853 (t!51174 (t!51174 l!1177)) (ite c!143855 (Cons!36439 (h!37886 (t!51174 l!1177)) (t!51174 (t!51174 l!1177))) Nil!36440)))))

(declare-fun b!1556915 () Bool)

(declare-fun e!867242 () List!36443)

(declare-fun call!71653 () List!36443)

(assert (=> b!1556915 (= e!867242 call!71653)))

(declare-fun b!1556916 () Bool)

(declare-fun e!867244 () List!36443)

(declare-fun call!71655 () List!36443)

(assert (=> b!1556916 (= e!867244 call!71655)))

(declare-fun d!162281 () Bool)

(declare-fun e!867245 () Bool)

(assert (=> d!162281 e!867245))

(declare-fun res!1065066 () Bool)

(assert (=> d!162281 (=> (not res!1065066) (not e!867245))))

(declare-fun lt!670402 () List!36443)

(assert (=> d!162281 (= res!1065066 (isStrictlySorted!947 lt!670402))))

(declare-fun e!867243 () List!36443)

(assert (=> d!162281 (= lt!670402 e!867243)))

(declare-fun c!143854 () Bool)

(assert (=> d!162281 (= c!143854 (and (is-Cons!36439 (t!51174 l!1177)) (bvslt (_1!12531 (h!37886 (t!51174 l!1177))) newKey!105)))))

(assert (=> d!162281 (isStrictlySorted!947 (t!51174 l!1177))))

(assert (=> d!162281 (= (insertStrictlySorted!552 (t!51174 l!1177) newKey!105 newValue!105) lt!670402)))

(declare-fun bm!71650 () Bool)

(declare-fun call!71654 () List!36443)

(assert (=> bm!71650 (= call!71653 call!71654)))

(declare-fun b!1556917 () Bool)

(assert (=> b!1556917 (= e!867244 call!71655)))

(declare-fun b!1556918 () Bool)

(assert (=> b!1556918 (= e!867246 (insertStrictlySorted!552 (t!51174 (t!51174 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1556919 () Bool)

(assert (=> b!1556919 (= e!867243 call!71654)))

(declare-fun b!1556920 () Bool)

(assert (=> b!1556920 (= e!867245 (contains!10193 lt!670402 (tuple2!25043 newKey!105 newValue!105)))))

(declare-fun b!1556921 () Bool)

(declare-fun res!1065065 () Bool)

(assert (=> b!1556921 (=> (not res!1065065) (not e!867245))))

(assert (=> b!1556921 (= res!1065065 (containsKey!810 lt!670402 newKey!105))))

(declare-fun b!1556922 () Bool)

(assert (=> b!1556922 (= c!143855 (and (is-Cons!36439 (t!51174 l!1177)) (bvsgt (_1!12531 (h!37886 (t!51174 l!1177))) newKey!105)))))

(assert (=> b!1556922 (= e!867242 e!867244)))

(declare-fun bm!71651 () Bool)

(assert (=> bm!71651 (= call!71654 ($colon$colon!972 e!867246 (ite c!143854 (h!37886 (t!51174 l!1177)) (tuple2!25043 newKey!105 newValue!105))))))

(declare-fun c!143856 () Bool)

(assert (=> bm!71651 (= c!143856 c!143854)))

(declare-fun b!1556923 () Bool)

(assert (=> b!1556923 (= e!867243 e!867242)))

(assert (=> b!1556923 (= c!143853 (and (is-Cons!36439 (t!51174 l!1177)) (= (_1!12531 (h!37886 (t!51174 l!1177))) newKey!105)))))

(declare-fun bm!71652 () Bool)

(assert (=> bm!71652 (= call!71655 call!71653)))

(assert (= (and d!162281 c!143854) b!1556919))

(assert (= (and d!162281 (not c!143854)) b!1556923))

(assert (= (and b!1556923 c!143853) b!1556915))

(assert (= (and b!1556923 (not c!143853)) b!1556922))

(assert (= (and b!1556922 c!143855) b!1556917))

(assert (= (and b!1556922 (not c!143855)) b!1556916))

(assert (= (or b!1556917 b!1556916) bm!71652))

(assert (= (or b!1556915 bm!71652) bm!71650))

(assert (= (or b!1556919 bm!71650) bm!71651))

(assert (= (and bm!71651 c!143856) b!1556918))

(assert (= (and bm!71651 (not c!143856)) b!1556914))

(assert (= (and d!162281 res!1065066) b!1556921))

(assert (= (and b!1556921 res!1065065) b!1556920))

(declare-fun m!1434227 () Bool)

(assert (=> b!1556920 m!1434227))

(declare-fun m!1434229 () Bool)

(assert (=> b!1556918 m!1434229))

(declare-fun m!1434231 () Bool)

(assert (=> d!162281 m!1434231))

(assert (=> d!162281 m!1434129))

(declare-fun m!1434233 () Bool)

(assert (=> bm!71651 m!1434233))

(declare-fun m!1434235 () Bool)

(assert (=> b!1556921 m!1434235))

(assert (=> b!1556845 d!162281))

(declare-fun d!162283 () Bool)

(declare-fun res!1065067 () Bool)

(declare-fun e!867247 () Bool)

(assert (=> d!162283 (=> res!1065067 e!867247)))

(assert (=> d!162283 (= res!1065067 (and (is-Cons!36439 (t!51174 lt!670379)) (= (_1!12531 (h!37886 (t!51174 lt!670379))) otherKey!50)))))

(assert (=> d!162283 (= (containsKey!810 (t!51174 lt!670379) otherKey!50) e!867247)))

(declare-fun b!1556924 () Bool)

(declare-fun e!867248 () Bool)

(assert (=> b!1556924 (= e!867247 e!867248)))

(declare-fun res!1065068 () Bool)

(assert (=> b!1556924 (=> (not res!1065068) (not e!867248))))

(assert (=> b!1556924 (= res!1065068 (and (or (not (is-Cons!36439 (t!51174 lt!670379))) (bvsle (_1!12531 (h!37886 (t!51174 lt!670379))) otherKey!50)) (is-Cons!36439 (t!51174 lt!670379)) (bvslt (_1!12531 (h!37886 (t!51174 lt!670379))) otherKey!50)))))

(declare-fun b!1556925 () Bool)

(assert (=> b!1556925 (= e!867248 (containsKey!810 (t!51174 (t!51174 lt!670379)) otherKey!50))))

(assert (= (and d!162283 (not res!1065067)) b!1556924))

(assert (= (and b!1556924 res!1065068) b!1556925))

(declare-fun m!1434237 () Bool)

(assert (=> b!1556925 m!1434237))

(assert (=> b!1556743 d!162283))

(declare-fun d!162285 () Bool)

(assert (=> d!162285 (= ($colon$colon!972 e!867195 (ite c!143838 (h!37886 l!1177) (tuple2!25043 newKey!105 newValue!105))) (Cons!36439 (ite c!143838 (h!37886 l!1177) (tuple2!25043 newKey!105 newValue!105)) e!867195))))

(assert (=> bm!71645 d!162285))

(declare-fun d!162287 () Bool)

(declare-fun res!1065069 () Bool)

(declare-fun e!867249 () Bool)

(assert (=> d!162287 (=> res!1065069 e!867249)))

(assert (=> d!162287 (= res!1065069 (or (is-Nil!36440 (t!51174 l!1177)) (is-Nil!36440 (t!51174 (t!51174 l!1177)))))))

(assert (=> d!162287 (= (isStrictlySorted!947 (t!51174 l!1177)) e!867249)))

(declare-fun b!1556926 () Bool)

(declare-fun e!867250 () Bool)

(assert (=> b!1556926 (= e!867249 e!867250)))

(declare-fun res!1065070 () Bool)

(assert (=> b!1556926 (=> (not res!1065070) (not e!867250))))

(assert (=> b!1556926 (= res!1065070 (bvslt (_1!12531 (h!37886 (t!51174 l!1177))) (_1!12531 (h!37886 (t!51174 (t!51174 l!1177))))))))

(declare-fun b!1556927 () Bool)

(assert (=> b!1556927 (= e!867250 (isStrictlySorted!947 (t!51174 (t!51174 l!1177))))))

(assert (= (and d!162287 (not res!1065069)) b!1556926))

(assert (= (and b!1556926 res!1065070) b!1556927))

(declare-fun m!1434239 () Bool)

(assert (=> b!1556927 m!1434239))

(assert (=> b!1556685 d!162287))

(declare-fun d!162289 () Bool)

(declare-fun res!1065071 () Bool)

(declare-fun e!867251 () Bool)

(assert (=> d!162289 (=> res!1065071 e!867251)))

(assert (=> d!162289 (= res!1065071 (and (is-Cons!36439 lt!670394) (= (_1!12531 (h!37886 lt!670394)) newKey!105)))))

(assert (=> d!162289 (= (containsKey!810 lt!670394 newKey!105) e!867251)))

(declare-fun b!1556928 () Bool)

(declare-fun e!867252 () Bool)

(assert (=> b!1556928 (= e!867251 e!867252)))

(declare-fun res!1065072 () Bool)

(assert (=> b!1556928 (=> (not res!1065072) (not e!867252))))

(assert (=> b!1556928 (= res!1065072 (and (or (not (is-Cons!36439 lt!670394)) (bvsle (_1!12531 (h!37886 lt!670394)) newKey!105)) (is-Cons!36439 lt!670394) (bvslt (_1!12531 (h!37886 lt!670394)) newKey!105)))))

(declare-fun b!1556929 () Bool)

(assert (=> b!1556929 (= e!867252 (containsKey!810 (t!51174 lt!670394) newKey!105))))

(assert (= (and d!162289 (not res!1065071)) b!1556928))

(assert (= (and b!1556928 res!1065072) b!1556929))

(declare-fun m!1434241 () Bool)

(assert (=> b!1556929 m!1434241))

(assert (=> b!1556848 d!162289))

(declare-fun b!1556930 () Bool)

(declare-fun e!867253 () Bool)

(declare-fun tp!112464 () Bool)

(assert (=> b!1556930 (= e!867253 (and tp_is_empty!38365 tp!112464))))

(assert (=> b!1556860 (= tp!112462 e!867253)))

(assert (= (and b!1556860 (is-Cons!36439 (t!51174 (t!51174 l!1177)))) b!1556930))

(push 1)

(assert (not b!1556927))

(assert (not b!1556920))

(assert (not b!1556921))

(assert (not b!1556903))

(assert (not b!1556896))

(assert (not b!1556930))

(assert tp_is_empty!38365)

(assert (not b!1556929))

(assert (not b!1556925))

(assert (not bm!71651))

(assert (not d!162281))

(assert (not b!1556913))

(assert (not d!162273))

(assert (not b!1556918))

(assert (not b!1556906))

(assert (not b!1556910))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

