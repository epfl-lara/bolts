; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87884 () Bool)

(assert start!87884)

(declare-fun b!1015163 () Bool)

(assert (=> b!1015163 true))

(assert (=> b!1015163 true))

(declare-fun bs!29362 () Bool)

(declare-fun b!1015161 () Bool)

(assert (= bs!29362 (and b!1015161 b!1015163)))

(declare-fun lambda!845 () Int)

(declare-fun lambda!844 () Int)

(assert (=> bs!29362 (= lambda!845 lambda!844)))

(assert (=> b!1015161 true))

(assert (=> b!1015161 true))

(declare-fun b!1015160 () Bool)

(declare-datatypes ((Unit!33183 0))(
  ( (Unit!33184) )
))
(declare-fun e!571114 () Unit!33183)

(declare-fun Unit!33185 () Unit!33183)

(assert (=> b!1015160 (= e!571114 Unit!33185)))

(declare-fun e!571113 () Bool)

(declare-datatypes ((List!21572 0))(
  ( (Nil!21569) (Cons!21568 (h!22766 (_ BitVec 64)) (t!30581 List!21572)) )
))
(declare-fun lt!449011 () List!21572)

(declare-fun forall!255 (List!21572 Int) Bool)

(assert (=> b!1015161 (= e!571113 (not (forall!255 lt!449011 lambda!845)))))

(declare-fun lt!449013 () Unit!33183)

(assert (=> b!1015161 (= lt!449013 e!571114)))

(declare-fun c!102807 () Bool)

(declare-fun isEmpty!857 (List!21572) Bool)

(assert (=> b!1015161 (= c!102807 (not (isEmpty!857 lt!449011)))))

(declare-datatypes ((B!1458 0))(
  ( (B!1459 (val!11813 Int)) )
))
(declare-datatypes ((tuple2!15262 0))(
  ( (tuple2!15263 (_1!7641 (_ BitVec 64)) (_2!7641 B!1458)) )
))
(declare-datatypes ((List!21573 0))(
  ( (Nil!21570) (Cons!21569 (h!22767 tuple2!15262) (t!30582 List!21573)) )
))
(declare-fun l!412 () List!21573)

(declare-fun value!115 () B!1458)

(declare-fun getKeysOf!60 (List!21573 B!1458) List!21572)

(assert (=> b!1015161 (= lt!449011 (getKeysOf!60 (t!30582 l!412) value!115))))

(declare-fun b!1015162 () Bool)

(declare-fun res!681087 () Bool)

(assert (=> b!1015162 (=> (not res!681087) (not e!571113))))

(assert (=> b!1015162 (= res!681087 (and (not (= (_2!7641 (h!22767 l!412)) value!115)) (is-Cons!21569 l!412)))))

(declare-fun lt!449012 () Unit!33183)

(assert (=> b!1015163 (= e!571114 lt!449012)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!50 (List!21573 List!21572 B!1458 tuple2!15262) Unit!33183)

(assert (=> b!1015163 (= lt!449012 (lemmaForallGetValueByKeySameWithASmallerHead!50 (t!30582 l!412) lt!449011 value!115 (h!22767 l!412)))))

(assert (=> b!1015163 (forall!255 lt!449011 lambda!844)))

(declare-fun res!681088 () Bool)

(assert (=> start!87884 (=> (not res!681088) (not e!571113))))

(declare-fun isStrictlySorted!583 (List!21573) Bool)

(assert (=> start!87884 (= res!681088 (isStrictlySorted!583 l!412))))

(assert (=> start!87884 e!571113))

(declare-fun e!571115 () Bool)

(assert (=> start!87884 e!571115))

(declare-fun tp_is_empty!23525 () Bool)

(assert (=> start!87884 tp_is_empty!23525))

(declare-fun b!1015164 () Bool)

(declare-fun tp!70599 () Bool)

(assert (=> b!1015164 (= e!571115 (and tp_is_empty!23525 tp!70599))))

(assert (= (and start!87884 res!681088) b!1015162))

(assert (= (and b!1015162 res!681087) b!1015161))

(assert (= (and b!1015161 c!102807) b!1015163))

(assert (= (and b!1015161 (not c!102807)) b!1015160))

(assert (= (and start!87884 (is-Cons!21569 l!412)) b!1015164))

(declare-fun m!937515 () Bool)

(assert (=> b!1015161 m!937515))

(declare-fun m!937517 () Bool)

(assert (=> b!1015161 m!937517))

(declare-fun m!937519 () Bool)

(assert (=> b!1015161 m!937519))

(declare-fun m!937521 () Bool)

(assert (=> b!1015163 m!937521))

(declare-fun m!937523 () Bool)

(assert (=> b!1015163 m!937523))

(declare-fun m!937525 () Bool)

(assert (=> start!87884 m!937525))

(push 1)

(assert (not b!1015163))

(assert (not start!87884))

(assert (not b!1015164))

(assert tp_is_empty!23525)

(assert (not b!1015161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!29363 () Bool)

(declare-fun b!1015194 () Bool)

(assert (= bs!29363 (and b!1015194 b!1015163)))

(declare-fun lambda!850 () Int)

(assert (=> bs!29363 (= (= (t!30582 l!412) l!412) (= lambda!850 lambda!844))))

(declare-fun bs!29364 () Bool)

(assert (= bs!29364 (and b!1015194 b!1015161)))

(assert (=> bs!29364 (= (= (t!30582 l!412) l!412) (= lambda!850 lambda!845))))

(assert (=> b!1015194 true))

(assert (=> b!1015194 true))

(declare-fun bs!29365 () Bool)

(declare-fun d!120885 () Bool)

(assert (= bs!29365 (and d!120885 b!1015163)))

(declare-fun lambda!851 () Int)

(assert (=> bs!29365 (= (= (Cons!21569 (h!22767 l!412) (t!30582 l!412)) l!412) (= lambda!851 lambda!844))))

(declare-fun bs!29366 () Bool)

(assert (= bs!29366 (and d!120885 b!1015161)))

(assert (=> bs!29366 (= (= (Cons!21569 (h!22767 l!412) (t!30582 l!412)) l!412) (= lambda!851 lambda!845))))

(declare-fun bs!29367 () Bool)

(assert (= bs!29367 (and d!120885 b!1015194)))

(assert (=> bs!29367 (= (= (Cons!21569 (h!22767 l!412) (t!30582 l!412)) (t!30582 l!412)) (= lambda!851 lambda!850))))

(assert (=> d!120885 true))

(assert (=> d!120885 true))

(assert (=> d!120885 true))

(assert (=> d!120885 (forall!255 lt!449011 lambda!851)))

(declare-fun lt!449016 () Unit!33183)

(declare-fun choose!1645 (List!21573 List!21572 B!1458 tuple2!15262) Unit!33183)

(assert (=> d!120885 (= lt!449016 (choose!1645 (t!30582 l!412) lt!449011 value!115 (h!22767 l!412)))))

(declare-fun e!571136 () Bool)

(assert (=> d!120885 e!571136))

(declare-fun res!681114 () Bool)

(assert (=> d!120885 (=> (not res!681114) (not e!571136))))

(assert (=> d!120885 (= res!681114 (isStrictlySorted!583 (t!30582 l!412)))))

(assert (=> d!120885 (= (lemmaForallGetValueByKeySameWithASmallerHead!50 (t!30582 l!412) lt!449011 value!115 (h!22767 l!412)) lt!449016)))

(declare-fun b!1015193 () Bool)

(declare-fun res!681113 () Bool)

(assert (=> b!1015193 (=> (not res!681113) (not e!571136))))

(declare-fun isEmpty!858 (List!21573) Bool)

(assert (=> b!1015193 (= res!681113 (not (isEmpty!858 (t!30582 l!412))))))

(declare-fun res!681115 () Bool)

(assert (=> b!1015194 (=> (not res!681115) (not e!571136))))

(assert (=> b!1015194 (= res!681115 (forall!255 lt!449011 lambda!850))))

(declare-fun b!1015195 () Bool)

(declare-fun head!945 (List!21573) tuple2!15262)

(assert (=> b!1015195 (= e!571136 (bvslt (_1!7641 (h!22767 l!412)) (_1!7641 (head!945 (t!30582 l!412)))))))

(assert (= (and d!120885 res!681114) b!1015193))

(assert (= (and b!1015193 res!681113) b!1015194))

(assert (= (and b!1015194 res!681115) b!1015195))

(declare-fun m!937537 () Bool)

(assert (=> d!120885 m!937537))

(declare-fun m!937539 () Bool)

(assert (=> d!120885 m!937539))

(declare-fun m!937541 () Bool)

(assert (=> d!120885 m!937541))

(declare-fun m!937543 () Bool)

(assert (=> b!1015193 m!937543))

(declare-fun m!937545 () Bool)

(assert (=> b!1015194 m!937545))

(declare-fun m!937547 () Bool)

(assert (=> b!1015195 m!937547))

(assert (=> b!1015163 d!120885))

(declare-fun d!120899 () Bool)

(declare-fun res!681120 () Bool)

(declare-fun e!571141 () Bool)

(assert (=> d!120899 (=> res!681120 e!571141)))

(assert (=> d!120899 (= res!681120 (is-Nil!21569 lt!449011))))

(assert (=> d!120899 (= (forall!255 lt!449011 lambda!844) e!571141)))

(declare-fun b!1015202 () Bool)

(declare-fun e!571142 () Bool)

(assert (=> b!1015202 (= e!571141 e!571142)))

(declare-fun res!681121 () Bool)

(assert (=> b!1015202 (=> (not res!681121) (not e!571142))))

(declare-fun dynLambda!1902 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015202 (= res!681121 (dynLambda!1902 lambda!844 (h!22766 lt!449011)))))

(declare-fun b!1015203 () Bool)

(assert (=> b!1015203 (= e!571142 (forall!255 (t!30581 lt!449011) lambda!844))))

(assert (= (and d!120899 (not res!681120)) b!1015202))

(assert (= (and b!1015202 res!681121) b!1015203))

(declare-fun b_lambda!15425 () Bool)

(assert (=> (not b_lambda!15425) (not b!1015202)))

(declare-fun m!937549 () Bool)

(assert (=> b!1015202 m!937549))

(declare-fun m!937551 () Bool)

(assert (=> b!1015203 m!937551))

(assert (=> b!1015163 d!120899))

(declare-fun d!120901 () Bool)

(declare-fun res!681126 () Bool)

(declare-fun e!571147 () Bool)

(assert (=> d!120901 (=> res!681126 e!571147)))

(assert (=> d!120901 (= res!681126 (or (is-Nil!21570 l!412) (is-Nil!21570 (t!30582 l!412))))))

(assert (=> d!120901 (= (isStrictlySorted!583 l!412) e!571147)))

(declare-fun b!1015208 () Bool)

(declare-fun e!571148 () Bool)

(assert (=> b!1015208 (= e!571147 e!571148)))

(declare-fun res!681127 () Bool)

(assert (=> b!1015208 (=> (not res!681127) (not e!571148))))

(assert (=> b!1015208 (= res!681127 (bvslt (_1!7641 (h!22767 l!412)) (_1!7641 (h!22767 (t!30582 l!412)))))))

(declare-fun b!1015209 () Bool)

(assert (=> b!1015209 (= e!571148 (isStrictlySorted!583 (t!30582 l!412)))))

(assert (= (and d!120901 (not res!681126)) b!1015208))

(assert (= (and b!1015208 res!681127) b!1015209))

(assert (=> b!1015209 m!937541))

(assert (=> start!87884 d!120901))

(declare-fun d!120903 () Bool)

(declare-fun res!681128 () Bool)

(declare-fun e!571149 () Bool)

(assert (=> d!120903 (=> res!681128 e!571149)))

(assert (=> d!120903 (= res!681128 (is-Nil!21569 lt!449011))))

(assert (=> d!120903 (= (forall!255 lt!449011 lambda!845) e!571149)))

(declare-fun b!1015210 () Bool)

(declare-fun e!571150 () Bool)

(assert (=> b!1015210 (= e!571149 e!571150)))

(declare-fun res!681129 () Bool)

(assert (=> b!1015210 (=> (not res!681129) (not e!571150))))

(assert (=> b!1015210 (= res!681129 (dynLambda!1902 lambda!845 (h!22766 lt!449011)))))

(declare-fun b!1015211 () Bool)

(assert (=> b!1015211 (= e!571150 (forall!255 (t!30581 lt!449011) lambda!845))))

(assert (= (and d!120903 (not res!681128)) b!1015210))

(assert (= (and b!1015210 res!681129) b!1015211))

(declare-fun b_lambda!15427 () Bool)

(assert (=> (not b_lambda!15427) (not b!1015210)))

(declare-fun m!937553 () Bool)

(assert (=> b!1015210 m!937553))

(declare-fun m!937555 () Bool)

(assert (=> b!1015211 m!937555))

(assert (=> b!1015161 d!120903))

(declare-fun d!120905 () Bool)

(assert (=> d!120905 (= (isEmpty!857 lt!449011) (is-Nil!21569 lt!449011))))

(assert (=> b!1015161 d!120905))

(declare-fun bs!29388 () Bool)

(declare-fun b!1015305 () Bool)

(assert (= bs!29388 (and b!1015305 b!1015163)))

(declare-fun lt!449127 () List!21573)

(declare-fun lambda!885 () Int)

(declare-fun lt!449119 () tuple2!15262)

(assert (=> bs!29388 (= (= (Cons!21569 lt!449119 lt!449127) l!412) (= lambda!885 lambda!844))))

(declare-fun bs!29391 () Bool)

(assert (= bs!29391 (and b!1015305 b!1015161)))

(assert (=> bs!29391 (= (= (Cons!21569 lt!449119 lt!449127) l!412) (= lambda!885 lambda!845))))

(declare-fun bs!29393 () Bool)

(assert (= bs!29393 (and b!1015305 b!1015194)))

(assert (=> bs!29393 (= (= (Cons!21569 lt!449119 lt!449127) (t!30582 l!412)) (= lambda!885 lambda!850))))

(declare-fun bs!29394 () Bool)

(assert (= bs!29394 (and b!1015305 d!120885)))

(assert (=> bs!29394 (= (= (Cons!21569 lt!449119 lt!449127) (Cons!21569 (h!22767 l!412) (t!30582 l!412))) (= lambda!885 lambda!851))))

(assert (=> b!1015305 true))

(assert (=> b!1015305 true))

(assert (=> b!1015305 true))

(declare-fun bs!29397 () Bool)

(declare-fun b!1015307 () Bool)

(assert (= bs!29397 (and b!1015307 b!1015194)))

(declare-fun lt!449129 () tuple2!15262)

(declare-fun lt!449121 () List!21573)

(declare-fun lambda!887 () Int)

(assert (=> bs!29397 (= (= (Cons!21569 lt!449129 lt!449121) (t!30582 l!412)) (= lambda!887 lambda!850))))

(declare-fun bs!29399 () Bool)

(assert (= bs!29399 (and b!1015307 b!1015305)))

(assert (=> bs!29399 (= (= (Cons!21569 lt!449129 lt!449121) (Cons!21569 lt!449119 lt!449127)) (= lambda!887 lambda!885))))

(declare-fun bs!29403 () Bool)

(assert (= bs!29403 (and b!1015307 d!120885)))

(assert (=> bs!29403 (= (= (Cons!21569 lt!449129 lt!449121) (Cons!21569 (h!22767 l!412) (t!30582 l!412))) (= lambda!887 lambda!851))))

(declare-fun bs!29405 () Bool)

(assert (= bs!29405 (and b!1015307 b!1015163)))

(assert (=> bs!29405 (= (= (Cons!21569 lt!449129 lt!449121) l!412) (= lambda!887 lambda!844))))

(declare-fun bs!29407 () Bool)

(assert (= bs!29407 (and b!1015307 b!1015161)))

(assert (=> bs!29407 (= (= (Cons!21569 lt!449129 lt!449121) l!412) (= lambda!887 lambda!845))))

(assert (=> b!1015307 true))

(assert (=> b!1015307 true))

(assert (=> b!1015307 true))

(declare-fun bs!29411 () Bool)

(declare-fun d!120907 () Bool)

(assert (= bs!29411 (and d!120907 b!1015307)))

(declare-fun lambda!889 () Int)

(assert (=> bs!29411 (= (= (t!30582 l!412) (Cons!21569 lt!449129 lt!449121)) (= lambda!889 lambda!887))))

(declare-fun bs!29412 () Bool)

(assert (= bs!29412 (and d!120907 b!1015194)))

(assert (=> bs!29412 (= lambda!889 lambda!850)))

(declare-fun bs!29413 () Bool)

(assert (= bs!29413 (and d!120907 b!1015305)))

(assert (=> bs!29413 (= (= (t!30582 l!412) (Cons!21569 lt!449119 lt!449127)) (= lambda!889 lambda!885))))

(declare-fun bs!29415 () Bool)

(assert (= bs!29415 (and d!120907 d!120885)))

(assert (=> bs!29415 (= (= (t!30582 l!412) (Cons!21569 (h!22767 l!412) (t!30582 l!412))) (= lambda!889 lambda!851))))

(declare-fun bs!29416 () Bool)

(assert (= bs!29416 (and d!120907 b!1015163)))

(assert (=> bs!29416 (= (= (t!30582 l!412) l!412) (= lambda!889 lambda!844))))

(declare-fun bs!29418 () Bool)

(assert (= bs!29418 (and d!120907 b!1015161)))

(assert (=> bs!29418 (= (= (t!30582 l!412) l!412) (= lambda!889 lambda!845))))

(assert (=> d!120907 true))

(assert (=> d!120907 true))

(declare-fun b!1015301 () Bool)

(declare-fun e!571197 () List!21572)

(declare-fun e!571196 () List!21572)

(assert (=> b!1015301 (= e!571197 e!571196)))

(declare-fun c!102843 () Bool)

(assert (=> b!1015301 (= c!102843 (and (is-Cons!21569 (t!30582 l!412)) (not (= (_2!7641 (h!22767 (t!30582 l!412))) value!115))))))

(declare-fun b!1015302 () Bool)

(declare-fun call!42959 () List!21572)

(assert (=> b!1015302 (= e!571197 (Cons!21568 (_1!7641 (h!22767 (t!30582 l!412))) call!42959))))

(declare-fun c!102840 () Bool)

(declare-fun call!42958 () Bool)

(assert (=> b!1015302 (= c!102840 (not call!42958))))

(declare-fun lt!449125 () Unit!33183)

(declare-fun e!571195 () Unit!33183)

(assert (=> b!1015302 (= lt!449125 e!571195)))

(declare-fun b!1015303 () Bool)

(declare-fun Unit!33190 () Unit!33183)

(assert (=> b!1015303 (= e!571195 Unit!33190)))

(declare-fun bm!42955 () Bool)

(assert (=> bm!42955 (= call!42958 (isEmpty!857 call!42959))))

(declare-fun lt!449128 () List!21572)

(declare-fun lt!449118 () List!21572)

(declare-fun call!42961 () Unit!33183)

(declare-fun bm!42956 () Bool)

(declare-fun c!102842 () Bool)

(assert (=> bm!42956 (= call!42961 (lemmaForallGetValueByKeySameWithASmallerHead!50 (ite c!102842 lt!449127 lt!449121) (ite c!102842 lt!449118 lt!449128) value!115 (ite c!102842 lt!449119 lt!449129)))))

(declare-fun b!1015304 () Bool)

(assert (=> b!1015304 (= e!571196 Nil!21569)))

(declare-fun lt!449124 () List!21572)

(assert (=> d!120907 (forall!255 lt!449124 lambda!889)))

(assert (=> d!120907 (= lt!449124 e!571197)))

(assert (=> d!120907 (= c!102842 (and (is-Cons!21569 (t!30582 l!412)) (= (_2!7641 (h!22767 (t!30582 l!412))) value!115)))))

(assert (=> d!120907 (isStrictlySorted!583 (t!30582 l!412))))

(assert (=> d!120907 (= (getKeysOf!60 (t!30582 l!412) value!115) lt!449124)))

(declare-fun call!42960 () Bool)

(assert (=> b!1015305 call!42960))

(declare-fun lt!449120 () Unit!33183)

(assert (=> b!1015305 (= lt!449120 call!42961)))

(assert (=> b!1015305 (= lt!449119 (h!22767 (t!30582 l!412)))))

(assert (=> b!1015305 (= lt!449118 call!42959)))

(assert (=> b!1015305 (= lt!449127 (t!30582 (t!30582 l!412)))))

(assert (=> b!1015305 (= e!571195 lt!449120)))

(declare-fun b!1015306 () Bool)

(declare-fun e!571194 () Unit!33183)

(declare-fun Unit!33191 () Unit!33183)

(assert (=> b!1015306 (= e!571194 Unit!33191)))

(declare-fun bm!42957 () Bool)

(assert (=> bm!42957 (= call!42959 (getKeysOf!60 (t!30582 (t!30582 l!412)) value!115))))

(declare-fun lt!449123 () Unit!33183)

(assert (=> b!1015307 (= e!571194 lt!449123)))

(assert (=> b!1015307 (= lt!449121 (t!30582 (t!30582 l!412)))))

(assert (=> b!1015307 (= lt!449128 call!42959)))

