; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133328 () Bool)

(assert start!133328)

(declare-fun e!868424 () Bool)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun b!1558767 () Bool)

(declare-datatypes ((B!2448 0))(
  ( (B!2449 (val!19310 Int)) )
))
(declare-datatypes ((tuple2!25136 0))(
  ( (tuple2!25137 (_1!12578 (_ BitVec 64)) (_2!12578 B!2448)) )
))
(declare-datatypes ((List!36490 0))(
  ( (Nil!36487) (Cons!36486 (h!37933 tuple2!25136) (t!51227 List!36490)) )
))
(declare-fun l!1292 () List!36490)

(declare-fun newValue!135 () B!2448)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!845 (List!36490 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!574 (List!36490 (_ BitVec 64) B!2448) List!36490)

(assert (=> b!1558767 (= e!868424 (not (containsKey!845 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135) otherKey!62)))))

(declare-fun b!1558768 () Bool)

(declare-fun e!868425 () Bool)

(declare-fun tp_is_empty!38453 () Bool)

(declare-fun tp!112684 () Bool)

(assert (=> b!1558768 (= e!868425 (and tp_is_empty!38453 tp!112684))))

(declare-fun b!1558765 () Bool)

(declare-fun res!1066152 () Bool)

(assert (=> b!1558765 (=> (not res!1066152) (not e!868424))))

(assert (=> b!1558765 (= res!1066152 (containsKey!845 l!1292 otherKey!62))))

(declare-fun b!1558766 () Bool)

(declare-fun res!1066150 () Bool)

(assert (=> b!1558766 (=> (not res!1066150) (not e!868424))))

(assert (=> b!1558766 (= res!1066150 (and (not (= otherKey!62 newKey!135)) (or (not (is-Cons!36486 l!1292)) (= (_1!12578 (h!37933 l!1292)) otherKey!62))))))

(declare-fun res!1066151 () Bool)

(assert (=> start!133328 (=> (not res!1066151) (not e!868424))))

(declare-fun isStrictlySorted!981 (List!36490) Bool)

(assert (=> start!133328 (= res!1066151 (isStrictlySorted!981 l!1292))))

(assert (=> start!133328 e!868424))

(assert (=> start!133328 e!868425))

(assert (=> start!133328 true))

(assert (=> start!133328 tp_is_empty!38453))

(assert (= (and start!133328 res!1066151) b!1558765))

(assert (= (and b!1558765 res!1066152) b!1558766))

(assert (= (and b!1558766 res!1066150) b!1558767))

(assert (= (and start!133328 (is-Cons!36486 l!1292)) b!1558768))

(declare-fun m!1435285 () Bool)

(assert (=> b!1558767 m!1435285))

(assert (=> b!1558767 m!1435285))

(declare-fun m!1435287 () Bool)

(assert (=> b!1558767 m!1435287))

(declare-fun m!1435289 () Bool)

(assert (=> b!1558765 m!1435289))

(declare-fun m!1435291 () Bool)

(assert (=> start!133328 m!1435291))

(push 1)

(assert (not b!1558767))

(assert (not start!133328))

(assert tp_is_empty!38453)

(assert (not b!1558768))

(assert (not b!1558765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162741 () Bool)

(declare-fun res!1066167 () Bool)

(declare-fun e!868440 () Bool)

(assert (=> d!162741 (=> res!1066167 e!868440)))

(assert (=> d!162741 (= res!1066167 (or (is-Nil!36487 l!1292) (is-Nil!36487 (t!51227 l!1292))))))

(assert (=> d!162741 (= (isStrictlySorted!981 l!1292) e!868440)))

(declare-fun b!1558783 () Bool)

(declare-fun e!868441 () Bool)

(assert (=> b!1558783 (= e!868440 e!868441)))

(declare-fun res!1066168 () Bool)

(assert (=> b!1558783 (=> (not res!1066168) (not e!868441))))

(assert (=> b!1558783 (= res!1066168 (bvslt (_1!12578 (h!37933 l!1292)) (_1!12578 (h!37933 (t!51227 l!1292)))))))

(declare-fun b!1558784 () Bool)

(assert (=> b!1558784 (= e!868441 (isStrictlySorted!981 (t!51227 l!1292)))))

(assert (= (and d!162741 (not res!1066167)) b!1558783))

(assert (= (and b!1558783 res!1066168) b!1558784))

(declare-fun m!1435295 () Bool)

(assert (=> b!1558784 m!1435295))

(assert (=> start!133328 d!162741))

(declare-fun d!162745 () Bool)

(declare-fun res!1066181 () Bool)

(declare-fun e!868454 () Bool)

(assert (=> d!162745 (=> res!1066181 e!868454)))

(assert (=> d!162745 (= res!1066181 (and (is-Cons!36486 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135)) (= (_1!12578 (h!37933 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162745 (= (containsKey!845 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135) otherKey!62) e!868454)))

(declare-fun b!1558797 () Bool)

(declare-fun e!868455 () Bool)

(assert (=> b!1558797 (= e!868454 e!868455)))

(declare-fun res!1066182 () Bool)

(assert (=> b!1558797 (=> (not res!1066182) (not e!868455))))

(assert (=> b!1558797 (= res!1066182 (and (or (not (is-Cons!36486 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135))) (bvsle (_1!12578 (h!37933 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135))) otherKey!62)) (is-Cons!36486 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135)) (bvslt (_1!12578 (h!37933 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558798 () Bool)

(assert (=> b!1558798 (= e!868455 (containsKey!845 (t!51227 (insertStrictlySorted!574 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162745 (not res!1066181)) b!1558797))

(assert (= (and b!1558797 res!1066182) b!1558798))

(declare-fun m!1435301 () Bool)

(assert (=> b!1558798 m!1435301))

(assert (=> b!1558767 d!162745))

(declare-fun b!1558884 () Bool)

(declare-fun res!1066208 () Bool)

(declare-fun e!868505 () Bool)

(assert (=> b!1558884 (=> (not res!1066208) (not e!868505))))

(declare-fun lt!670759 () List!36490)

(assert (=> b!1558884 (= res!1066208 (containsKey!845 lt!670759 newKey!135))))

(declare-fun b!1558885 () Bool)

(declare-fun e!868504 () List!36490)

(declare-fun e!868506 () List!36490)

(assert (=> b!1558885 (= e!868504 e!868506)))

(declare-fun c!144129 () Bool)

(assert (=> b!1558885 (= c!144129 (and (is-Cons!36486 l!1292) (= (_1!12578 (h!37933 l!1292)) newKey!135)))))

(declare-fun bm!71812 () Bool)

(declare-fun c!144130 () Bool)

(declare-fun call!71817 () List!36490)

(declare-fun e!868507 () List!36490)

(declare-fun $colon$colon!988 (List!36490 tuple2!25136) List!36490)

(assert (=> bm!71812 (= call!71817 ($colon$colon!988 e!868507 (ite c!144130 (h!37933 l!1292) (tuple2!25137 newKey!135 newValue!135))))))

(declare-fun c!144127 () Bool)

(assert (=> bm!71812 (= c!144127 c!144130)))

(declare-fun b!1558886 () Bool)

(assert (=> b!1558886 (= e!868507 (insertStrictlySorted!574 (t!51227 l!1292) newKey!135 newValue!135))))

(declare-fun b!1558887 () Bool)

(declare-fun contains!10223 (List!36490 tuple2!25136) Bool)

(assert (=> b!1558887 (= e!868505 (contains!10223 lt!670759 (tuple2!25137 newKey!135 newValue!135)))))

(declare-fun b!1558888 () Bool)

(declare-fun c!144128 () Bool)

(assert (=> b!1558888 (= e!868507 (ite c!144129 (t!51227 l!1292) (ite c!144128 (Cons!36486 (h!37933 l!1292) (t!51227 l!1292)) Nil!36487)))))

(declare-fun d!162751 () Bool)

(assert (=> d!162751 e!868505))

(declare-fun res!1066207 () Bool)

(assert (=> d!162751 (=> (not res!1066207) (not e!868505))))

(assert (=> d!162751 (= res!1066207 (isStrictlySorted!981 lt!670759))))

(assert (=> d!162751 (= lt!670759 e!868504)))

(assert (=> d!162751 (= c!144130 (and (is-Cons!36486 l!1292) (bvslt (_1!12578 (h!37933 l!1292)) newKey!135)))))

(assert (=> d!162751 (isStrictlySorted!981 l!1292)))

(assert (=> d!162751 (= (insertStrictlySorted!574 l!1292 newKey!135 newValue!135) lt!670759)))

(declare-fun b!1558889 () Bool)

(assert (=> b!1558889 (= c!144128 (and (is-Cons!36486 l!1292) (bvsgt (_1!12578 (h!37933 l!1292)) newKey!135)))))

(declare-fun e!868508 () List!36490)

(assert (=> b!1558889 (= e!868506 e!868508)))

(declare-fun bm!71813 () Bool)

(declare-fun call!71816 () List!36490)

(declare-fun call!71815 () List!36490)

(assert (=> bm!71813 (= call!71816 call!71815)))

(declare-fun bm!71814 () Bool)

(assert (=> bm!71814 (= call!71815 call!71817)))

(declare-fun b!1558890 () Bool)

(assert (=> b!1558890 (= e!868506 call!71815)))

(declare-fun b!1558891 () Bool)

(assert (=> b!1558891 (= e!868504 call!71817)))

(declare-fun b!1558892 () Bool)

(assert (=> b!1558892 (= e!868508 call!71816)))

(declare-fun b!1558893 () Bool)

(assert (=> b!1558893 (= e!868508 call!71816)))

(assert (= (and d!162751 c!144130) b!1558891))

(assert (= (and d!162751 (not c!144130)) b!1558885))

(assert (= (and b!1558885 c!144129) b!1558890))

(assert (= (and b!1558885 (not c!144129)) b!1558889))

(assert (= (and b!1558889 c!144128) b!1558893))

(assert (= (and b!1558889 (not c!144128)) b!1558892))

(assert (= (or b!1558893 b!1558892) bm!71813))

(assert (= (or b!1558890 bm!71813) bm!71814))

(assert (= (or b!1558891 bm!71814) bm!71812))

(assert (= (and bm!71812 c!144127) b!1558886))

(assert (= (and bm!71812 (not c!144127)) b!1558888))

(assert (= (and d!162751 res!1066207) b!1558884))

(assert (= (and b!1558884 res!1066208) b!1558887))

(declare-fun m!1435319 () Bool)

(assert (=> b!1558887 m!1435319))

(declare-fun m!1435321 () Bool)

(assert (=> d!162751 m!1435321))

(assert (=> d!162751 m!1435291))

(declare-fun m!1435325 () Bool)

(assert (=> b!1558884 m!1435325))

(declare-fun m!1435329 () Bool)

(assert (=> bm!71812 m!1435329))

(declare-fun m!1435333 () Bool)

(assert (=> b!1558886 m!1435333))

(assert (=> b!1558767 d!162751))

(declare-fun d!162759 () Bool)

(declare-fun res!1066211 () Bool)

(declare-fun e!868514 () Bool)

(assert (=> d!162759 (=> res!1066211 e!868514)))

(assert (=> d!162759 (= res!1066211 (and (is-Cons!36486 l!1292) (= (_1!12578 (h!37933 l!1292)) otherKey!62)))))

(assert (=> d!162759 (= (containsKey!845 l!1292 otherKey!62) e!868514)))

(declare-fun b!1558904 () Bool)

(declare-fun e!868515 () Bool)

(assert (=> b!1558904 (= e!868514 e!868515)))

(declare-fun res!1066212 () Bool)

(assert (=> b!1558904 (=> (not res!1066212) (not e!868515))))

(assert (=> b!1558904 (= res!1066212 (and (or (not (is-Cons!36486 l!1292)) (bvsle (_1!12578 (h!37933 l!1292)) otherKey!62)) (is-Cons!36486 l!1292) (bvslt (_1!12578 (h!37933 l!1292)) otherKey!62)))))

(declare-fun b!1558905 () Bool)

(assert (=> b!1558905 (= e!868515 (containsKey!845 (t!51227 l!1292) otherKey!62))))

(assert (= (and d!162759 (not res!1066211)) b!1558904))

(assert (= (and b!1558904 res!1066212) b!1558905))

(declare-fun m!1435339 () Bool)

(assert (=> b!1558905 m!1435339))

(assert (=> b!1558765 d!162759))

(declare-fun b!1558915 () Bool)

(declare-fun e!868521 () Bool)

(declare-fun tp!112693 () Bool)

(assert (=> b!1558915 (= e!868521 (and tp_is_empty!38453 tp!112693))))

(assert (=> b!1558768 (= tp!112684 e!868521)))

(assert (= (and b!1558768 (is-Cons!36486 (t!51227 l!1292))) b!1558915))

(push 1)

(assert (not b!1558915))

(assert (not b!1558884))

(assert (not d!162751))

(assert (not bm!71812))

(assert (not b!1558798))

(assert tp_is_empty!38453)

(assert (not b!1558784))

(assert (not b!1558886))

(assert (not b!1558887))

(assert (not b!1558905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162793 () Bool)

(declare-fun res!1066249 () Bool)

(declare-fun e!868566 () Bool)

(assert (=> d!162793 (=> res!1066249 e!868566)))

(assert (=> d!162793 (= res!1066249 (and (is-Cons!36486 lt!670759) (= (_1!12578 (h!37933 lt!670759)) newKey!135)))))

(assert (=> d!162793 (= (containsKey!845 lt!670759 newKey!135) e!868566)))

(declare-fun b!1558970 () Bool)

(declare-fun e!868567 () Bool)

(assert (=> b!1558970 (= e!868566 e!868567)))

(declare-fun res!1066250 () Bool)

(assert (=> b!1558970 (=> (not res!1066250) (not e!868567))))

(assert (=> b!1558970 (= res!1066250 (and (or (not (is-Cons!36486 lt!670759)) (bvsle (_1!12578 (h!37933 lt!670759)) newKey!135)) (is-Cons!36486 lt!670759) (bvslt (_1!12578 (h!37933 lt!670759)) newKey!135)))))

(declare-fun b!1558971 () Bool)

(assert (=> b!1558971 (= e!868567 (containsKey!845 (t!51227 lt!670759) newKey!135))))

(assert (= (and d!162793 (not res!1066249)) b!1558970))

(assert (= (and b!1558970 res!1066250) b!1558971))

(declare-fun m!1435393 () Bool)

(assert (=> b!1558971 m!1435393))

(assert (=> b!1558884 d!162793))

(declare-fun d!162795 () Bool)

(declare-fun res!1066251 () Bool)

(declare-fun e!868568 () Bool)

(assert (=> d!162795 (=> res!1066251 e!868568)))

(assert (=> d!162795 (= res!1066251 (or (is-Nil!36487 (t!51227 l!1292)) (is-Nil!36487 (t!51227 (t!51227 l!1292)))))))

(assert (=> d!162795 (= (isStrictlySorted!981 (t!51227 l!1292)) e!868568)))

(declare-fun b!1558972 () Bool)

(declare-fun e!868569 () Bool)

(assert (=> b!1558972 (= e!868568 e!868569)))

(declare-fun res!1066252 () Bool)

(assert (=> b!1558972 (=> (not res!1066252) (not e!868569))))

(assert (=> b!1558972 (= res!1066252 (bvslt (_1!12578 (h!37933 (t!51227 l!1292))) (_1!12578 (h!37933 (t!51227 (t!51227 l!1292))))))))

(declare-fun b!1558973 () Bool)

(assert (=> b!1558973 (= e!868569 (isStrictlySorted!981 (t!51227 (t!51227 l!1292))))))

(assert (= (and d!162795 (not res!1066251)) b!1558972))

(assert (= (and b!1558972 res!1066252) b!1558973))

(declare-fun m!1435395 () Bool)

(assert (=> b!1558973 m!1435395))

(assert (=> b!1558784 d!162795))

(declare-fun d!162797 () Bool)

(declare-fun lt!670771 () Bool)

(declare-fun content!810 (List!36490) (Set tuple2!25136))

(assert (=> d!162797 (= lt!670771 (member (tuple2!25137 newKey!135 newValue!135) (content!810 lt!670759)))))

(declare-fun e!868574 () Bool)

(assert (=> d!162797 (= lt!670771 e!868574)))

(declare-fun res!1066258 () Bool)

(assert (=> d!162797 (=> (not res!1066258) (not e!868574))))

(assert (=> d!162797 (= res!1066258 (is-Cons!36486 lt!670759))))

(assert (=> d!162797 (= (contains!10223 lt!670759 (tuple2!25137 newKey!135 newValue!135)) lt!670771)))

(declare-fun b!1558978 () Bool)

(declare-fun e!868575 () Bool)

(assert (=> b!1558978 (= e!868574 e!868575)))

(declare-fun res!1066257 () Bool)

(assert (=> b!1558978 (=> res!1066257 e!868575)))

(assert (=> b!1558978 (= res!1066257 (= (h!37933 lt!670759) (tuple2!25137 newKey!135 newValue!135)))))

(declare-fun b!1558979 () Bool)

(assert (=> b!1558979 (= e!868575 (contains!10223 (t!51227 lt!670759) (tuple2!25137 newKey!135 newValue!135)))))

(assert (= (and d!162797 res!1066258) b!1558978))

(assert (= (and b!1558978 (not res!1066257)) b!1558979))

(declare-fun m!1435397 () Bool)

(assert (=> d!162797 m!1435397))

(declare-fun m!1435399 () Bool)

(assert (=> d!162797 m!1435399))

(declare-fun m!1435401 () Bool)

(assert (=> b!1558979 m!1435401))

(assert (=> b!1558887 d!162797))

(declare-fun d!162799 () Bool)

(declare-fun res!1066259 () Bool)

(declare-fun e!868576 () Bool)

(assert (=> d!162799 (=> res!1066259 e!868576)))

(assert (=> d!162799 (= res!1066259 (and (is-Cons!36486 (t!51227 l!1292)) (= (_1!12578 (h!37933 (t!51227 l!1292))) otherKey!62)))))

(assert (=> d!162799 (= (containsKey!845 (t!51227 l!1292) otherKey!62) e!868576)))

(declare-fun b!1558980 () Bool)

(declare-fun e!868577 () Bool)

(assert (=> b!1558980 (= e!868576 e!868577)))

(declare-fun res!1066260 () Bool)

(assert (=> b!1558980 (=> (not res!1066260) (not e!868577))))

(assert (=> b!1558980 (= res!1066260 (and (or (not (is-Cons!36486 (t!51227 l!1292))) (bvsle (_1!12578 (h!37933 (t!51227 l!1292))) otherKey!62)) (is-Cons!36486 (t!51227 l!1292)) (bvslt (_1!12578 (h!37933 (t!51227 l!1292))) otherKey!62)))))

(declare-fun b!1558981 () Bool)

(assert (=> b!1558981 (= e!868577 (containsKey!845 (t!51227 (t!51227 l!1292)) otherKey!62))))

(assert (= (and d!162799 (not res!1066259)) b!1558980))

(assert (= (and b!1558980 res!1066260) b!1558981))

(declare-fun m!1435403 () Bool)

(assert (=> b!1558981 m!1435403))

(assert (=> b!1558905 d!162799))

(declare-fun d!162801 () Bool)

(declare-fun res!1066261 () Bool)

(declare-fun e!868578 () Bool)

(assert (=> d!162801 (=> res!1066261 e!868578)))

(assert (=> d!162801 (= res!1066261 (or (is-Nil!36487 lt!670759) (is-Nil!36487 (t!51227 lt!670759))))))

