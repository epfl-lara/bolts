; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251826 () Bool)

(assert start!251826)

(declare-fun b!2595825 () Bool)

(assert (=> b!2595825 true))

(declare-fun b!2595820 () Bool)

(declare-fun e!1638144 () Bool)

(declare-fun lt!914090 () Int)

(assert (=> b!2595820 (= e!1638144 (< lt!914090 0))))

(declare-fun b!2595822 () Bool)

(declare-fun e!1638146 () Bool)

(declare-fun tp_is_empty!13455 () Bool)

(declare-fun tp!823138 () Bool)

(assert (=> b!2595822 (= e!1638146 (and tp_is_empty!13455 tp!823138))))

(declare-fun b!2595823 () Bool)

(declare-fun res!1092434 () Bool)

(declare-fun e!1638145 () Bool)

(assert (=> b!2595823 (=> (not res!1092434) (not e!1638145))))

(declare-datatypes ((B!2175 0))(
  ( (B!2176 (val!9555 Int)) )
))
(declare-datatypes ((List!29988 0))(
  ( (Nil!29888) (Cons!29888 (h!35308 B!2175) (t!213001 List!29988)) )
))
(declare-fun l2!1515 () List!29988)

(declare-fun noDuplicate!436 (List!29988) Bool)

(assert (=> b!2595823 (= res!1092434 (noDuplicate!436 l2!1515))))

(declare-fun b!2595821 () Bool)

(declare-fun e!1638147 () Bool)

(declare-fun tp!823137 () Bool)

(assert (=> b!2595821 (= e!1638147 (and tp_is_empty!13455 tp!823137))))

(declare-fun res!1092437 () Bool)

(assert (=> start!251826 (=> (not res!1092437) (not e!1638145))))

(declare-fun l1!1546 () List!29988)

(assert (=> start!251826 (= res!1092437 (noDuplicate!436 l1!1546))))

(assert (=> start!251826 e!1638145))

(assert (=> start!251826 e!1638146))

(assert (=> start!251826 e!1638147))

(declare-fun b!2595824 () Bool)

(assert (=> b!2595824 (= e!1638145 e!1638144)))

(declare-fun res!1092435 () Bool)

(assert (=> b!2595824 (=> (not res!1092435) (not e!1638144))))

(declare-fun size!23193 (List!29988) Int)

(assert (=> b!2595824 (= res!1092435 (> lt!914090 (size!23193 l2!1515)))))

(assert (=> b!2595824 (= lt!914090 (size!23193 l1!1546))))

(declare-fun res!1092436 () Bool)

(assert (=> b!2595825 (=> (not res!1092436) (not e!1638144))))

(declare-fun lambda!96891 () Int)

(declare-fun forall!6125 (List!29988 Int) Bool)

(assert (=> b!2595825 (= res!1092436 (forall!6125 l2!1515 lambda!96891))))

(assert (= (and start!251826 res!1092437) b!2595823))

(assert (= (and b!2595823 res!1092434) b!2595824))

(assert (= (and b!2595824 res!1092435) b!2595825))

(assert (= (and b!2595825 res!1092436) b!2595820))

(assert (= (and start!251826 (is-Cons!29888 l1!1546)) b!2595822))

(assert (= (and start!251826 (is-Cons!29888 l2!1515)) b!2595821))

(declare-fun m!2932197 () Bool)

(assert (=> b!2595823 m!2932197))

(declare-fun m!2932199 () Bool)

(assert (=> start!251826 m!2932199))

(declare-fun m!2932201 () Bool)

(assert (=> b!2595824 m!2932201))

(declare-fun m!2932203 () Bool)

(assert (=> b!2595824 m!2932203))

(declare-fun m!2932205 () Bool)

(assert (=> b!2595825 m!2932205))

(push 1)

(assert tp_is_empty!13455)

(assert (not b!2595823))

(assert (not start!251826))

(assert (not b!2595822))

(assert (not b!2595825))

(assert (not b!2595821))

(assert (not b!2595824))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735510 () Bool)

(declare-fun res!1092454 () Bool)

(declare-fun e!1638166 () Bool)

(assert (=> d!735510 (=> res!1092454 e!1638166)))

(assert (=> d!735510 (= res!1092454 (is-Nil!29888 l2!1515))))

(assert (=> d!735510 (= (forall!6125 l2!1515 lambda!96891) e!1638166)))

(declare-fun b!2595852 () Bool)

(declare-fun e!1638167 () Bool)

(assert (=> b!2595852 (= e!1638166 e!1638167)))

(declare-fun res!1092455 () Bool)

(assert (=> b!2595852 (=> (not res!1092455) (not e!1638167))))

(declare-fun dynLambda!12647 (Int B!2175) Bool)

(assert (=> b!2595852 (= res!1092455 (dynLambda!12647 lambda!96891 (h!35308 l2!1515)))))

(declare-fun b!2595853 () Bool)

(assert (=> b!2595853 (= e!1638167 (forall!6125 (t!213001 l2!1515) lambda!96891))))

(assert (= (and d!735510 (not res!1092454)) b!2595852))

(assert (= (and b!2595852 res!1092455) b!2595853))

(declare-fun b_lambda!77541 () Bool)

(assert (=> (not b_lambda!77541) (not b!2595852)))

(declare-fun m!2932217 () Bool)

(assert (=> b!2595852 m!2932217))

(declare-fun m!2932219 () Bool)

(assert (=> b!2595853 m!2932219))

(assert (=> b!2595825 d!735510))

(declare-fun d!735514 () Bool)

(declare-fun lt!914096 () Int)

(assert (=> d!735514 (>= lt!914096 0)))

(declare-fun e!1638170 () Int)

(assert (=> d!735514 (= lt!914096 e!1638170)))

(declare-fun c!418279 () Bool)

(assert (=> d!735514 (= c!418279 (is-Nil!29888 l2!1515))))

(assert (=> d!735514 (= (size!23193 l2!1515) lt!914096)))

(declare-fun b!2595858 () Bool)

(assert (=> b!2595858 (= e!1638170 0)))

(declare-fun b!2595859 () Bool)

(assert (=> b!2595859 (= e!1638170 (+ 1 (size!23193 (t!213001 l2!1515))))))

(assert (= (and d!735514 c!418279) b!2595858))

(assert (= (and d!735514 (not c!418279)) b!2595859))

(declare-fun m!2932221 () Bool)

(assert (=> b!2595859 m!2932221))

(assert (=> b!2595824 d!735514))

(declare-fun d!735516 () Bool)

(declare-fun lt!914097 () Int)

(assert (=> d!735516 (>= lt!914097 0)))

(declare-fun e!1638171 () Int)

(assert (=> d!735516 (= lt!914097 e!1638171)))

(declare-fun c!418280 () Bool)

(assert (=> d!735516 (= c!418280 (is-Nil!29888 l1!1546))))

(assert (=> d!735516 (= (size!23193 l1!1546) lt!914097)))

(declare-fun b!2595860 () Bool)

(assert (=> b!2595860 (= e!1638171 0)))

(declare-fun b!2595861 () Bool)

(assert (=> b!2595861 (= e!1638171 (+ 1 (size!23193 (t!213001 l1!1546))))))

(assert (= (and d!735516 c!418280) b!2595860))

(assert (= (and d!735516 (not c!418280)) b!2595861))

(declare-fun m!2932223 () Bool)

(assert (=> b!2595861 m!2932223))

(assert (=> b!2595824 d!735516))

(declare-fun d!735518 () Bool)

(declare-fun res!1092464 () Bool)

(declare-fun e!1638180 () Bool)

(assert (=> d!735518 (=> res!1092464 e!1638180)))

(assert (=> d!735518 (= res!1092464 (is-Nil!29888 l2!1515))))

(assert (=> d!735518 (= (noDuplicate!436 l2!1515) e!1638180)))

(declare-fun b!2595870 () Bool)

(declare-fun e!1638181 () Bool)

(assert (=> b!2595870 (= e!1638180 e!1638181)))

(declare-fun res!1092465 () Bool)

(assert (=> b!2595870 (=> (not res!1092465) (not e!1638181))))

(declare-fun contains!5436 (List!29988 B!2175) Bool)

(assert (=> b!2595870 (= res!1092465 (not (contains!5436 (t!213001 l2!1515) (h!35308 l2!1515))))))

(declare-fun b!2595871 () Bool)

(assert (=> b!2595871 (= e!1638181 (noDuplicate!436 (t!213001 l2!1515)))))

(assert (= (and d!735518 (not res!1092464)) b!2595870))

(assert (= (and b!2595870 res!1092465) b!2595871))

(declare-fun m!2932225 () Bool)

(assert (=> b!2595870 m!2932225))

(declare-fun m!2932227 () Bool)

(assert (=> b!2595871 m!2932227))

(assert (=> b!2595823 d!735518))

(declare-fun d!735520 () Bool)

(declare-fun res!1092466 () Bool)

(declare-fun e!1638182 () Bool)

(assert (=> d!735520 (=> res!1092466 e!1638182)))

(assert (=> d!735520 (= res!1092466 (is-Nil!29888 l1!1546))))

(assert (=> d!735520 (= (noDuplicate!436 l1!1546) e!1638182)))

(declare-fun b!2595872 () Bool)

(declare-fun e!1638183 () Bool)

(assert (=> b!2595872 (= e!1638182 e!1638183)))

(declare-fun res!1092467 () Bool)

(assert (=> b!2595872 (=> (not res!1092467) (not e!1638183))))

(assert (=> b!2595872 (= res!1092467 (not (contains!5436 (t!213001 l1!1546) (h!35308 l1!1546))))))

(declare-fun b!2595873 () Bool)

(assert (=> b!2595873 (= e!1638183 (noDuplicate!436 (t!213001 l1!1546)))))

(assert (= (and d!735520 (not res!1092466)) b!2595872))

(assert (= (and b!2595872 res!1092467) b!2595873))

(declare-fun m!2932229 () Bool)

(assert (=> b!2595872 m!2932229))

(declare-fun m!2932231 () Bool)

(assert (=> b!2595873 m!2932231))

(assert (=> start!251826 d!735520))

(declare-fun b!2595880 () Bool)

(declare-fun e!1638188 () Bool)

(declare-fun tp!823147 () Bool)

(assert (=> b!2595880 (= e!1638188 (and tp_is_empty!13455 tp!823147))))

(assert (=> b!2595821 (= tp!823137 e!1638188)))

(assert (= (and b!2595821 (is-Cons!29888 (t!213001 l2!1515))) b!2595880))

(declare-fun b!2595881 () Bool)

(declare-fun e!1638189 () Bool)

(declare-fun tp!823148 () Bool)

(assert (=> b!2595881 (= e!1638189 (and tp_is_empty!13455 tp!823148))))

(assert (=> b!2595822 (= tp!823138 e!1638189)))

(assert (= (and b!2595822 (is-Cons!29888 (t!213001 l1!1546))) b!2595881))

(declare-fun b_lambda!77543 () Bool)

(assert (= b_lambda!77541 (or b!2595825 b_lambda!77543)))

(declare-fun bs!472896 () Bool)

(declare-fun d!735522 () Bool)

(assert (= bs!472896 (and d!735522 b!2595825)))

(assert (=> bs!472896 (= (dynLambda!12647 lambda!96891 (h!35308 l2!1515)) (contains!5436 l1!1546 (h!35308 l2!1515)))))

(declare-fun m!2932233 () Bool)

(assert (=> bs!472896 m!2932233))

(assert (=> b!2595852 d!735522))

(push 1)

(assert (not b!2595872))

(assert (not b_lambda!77543))

(assert (not b!2595853))

(assert (not bs!472896))

(assert (not b!2595881))

(assert (not b!2595861))

(assert (not b!2595873))

(assert (not b!2595880))

(assert (not b!2595870))

(assert (not b!2595859))

(assert (not b!2595871))

(assert tp_is_empty!13455)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

