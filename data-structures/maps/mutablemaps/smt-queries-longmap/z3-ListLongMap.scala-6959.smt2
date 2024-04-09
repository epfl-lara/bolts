; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87918 () Bool)

(assert start!87918)

(declare-fun b!1015351 () Bool)

(assert (=> b!1015351 true))

(assert (=> b!1015351 true))

(declare-fun res!681169 () Bool)

(declare-fun e!571223 () Bool)

(assert (=> start!87918 (=> (not res!681169) (not e!571223))))

(declare-datatypes ((B!1462 0))(
  ( (B!1463 (val!11815 Int)) )
))
(declare-datatypes ((tuple2!15266 0))(
  ( (tuple2!15267 (_1!7643 (_ BitVec 64)) (_2!7643 B!1462)) )
))
(declare-datatypes ((List!21576 0))(
  ( (Nil!21573) (Cons!21572 (h!22770 tuple2!15266) (t!30585 List!21576)) )
))
(declare-fun l!412 () List!21576)

(declare-fun isStrictlySorted!585 (List!21576) Bool)

(assert (=> start!87918 (= res!681169 (isStrictlySorted!585 l!412))))

(assert (=> start!87918 e!571223))

(declare-fun e!571222 () Bool)

(assert (=> start!87918 e!571222))

(declare-fun tp_is_empty!23529 () Bool)

(assert (=> start!87918 tp_is_empty!23529))

(declare-fun b!1015350 () Bool)

(declare-fun res!681168 () Bool)

(assert (=> b!1015350 (=> (not res!681168) (not e!571223))))

(declare-fun value!115 () B!1462)

(get-info :version)

(assert (=> b!1015350 (= res!681168 (and (or (not ((_ is Cons!21572) l!412)) (not (= (_2!7643 (h!22770 l!412)) value!115))) (or (not ((_ is Cons!21572) l!412)) (= (_2!7643 (h!22770 l!412)) value!115)) ((_ is Nil!21573) l!412)))))

(declare-fun lambda!896 () Int)

(declare-datatypes ((List!21577 0))(
  ( (Nil!21574) (Cons!21573 (h!22771 (_ BitVec 64)) (t!30586 List!21577)) )
))
(declare-fun forall!257 (List!21577 Int) Bool)

(assert (=> b!1015351 (= e!571223 (not (forall!257 Nil!21574 lambda!896)))))

(declare-fun b!1015352 () Bool)

(declare-fun tp!70614 () Bool)

(assert (=> b!1015352 (= e!571222 (and tp_is_empty!23529 tp!70614))))

(assert (= (and start!87918 res!681169) b!1015350))

(assert (= (and b!1015350 res!681168) b!1015351))

(assert (= (and start!87918 ((_ is Cons!21572) l!412)) b!1015352))

(declare-fun m!937627 () Bool)

(assert (=> start!87918 m!937627))

(declare-fun m!937629 () Bool)

(assert (=> b!1015351 m!937629))

(check-sat (not b!1015351) (not start!87918) (not b!1015352) tp_is_empty!23529)
(check-sat)
(get-model)

(declare-fun d!120935 () Bool)

(declare-fun res!681192 () Bool)

(declare-fun e!571246 () Bool)

(assert (=> d!120935 (=> res!681192 e!571246)))

(assert (=> d!120935 (= res!681192 ((_ is Nil!21574) Nil!21574))))

(assert (=> d!120935 (= (forall!257 Nil!21574 lambda!896) e!571246)))

(declare-fun b!1015386 () Bool)

(declare-fun e!571247 () Bool)

(assert (=> b!1015386 (= e!571246 e!571247)))

(declare-fun res!681193 () Bool)

(assert (=> b!1015386 (=> (not res!681193) (not e!571247))))

(declare-fun dynLambda!1903 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015386 (= res!681193 (dynLambda!1903 lambda!896 (h!22771 Nil!21574)))))

(declare-fun b!1015387 () Bool)

(assert (=> b!1015387 (= e!571247 (forall!257 (t!30586 Nil!21574) lambda!896))))

(assert (= (and d!120935 (not res!681192)) b!1015386))

(assert (= (and b!1015386 res!681193) b!1015387))

(declare-fun b_lambda!15445 () Bool)

(assert (=> (not b_lambda!15445) (not b!1015386)))

(declare-fun m!937639 () Bool)

(assert (=> b!1015386 m!937639))

(declare-fun m!937641 () Bool)

(assert (=> b!1015387 m!937641))

(assert (=> b!1015351 d!120935))

(declare-fun d!120943 () Bool)

(declare-fun res!681210 () Bool)

(declare-fun e!571268 () Bool)

(assert (=> d!120943 (=> res!681210 e!571268)))

(assert (=> d!120943 (= res!681210 (or ((_ is Nil!21573) l!412) ((_ is Nil!21573) (t!30585 l!412))))))

(assert (=> d!120943 (= (isStrictlySorted!585 l!412) e!571268)))

(declare-fun b!1015412 () Bool)

(declare-fun e!571269 () Bool)

(assert (=> b!1015412 (= e!571268 e!571269)))

(declare-fun res!681211 () Bool)

(assert (=> b!1015412 (=> (not res!681211) (not e!571269))))

(assert (=> b!1015412 (= res!681211 (bvslt (_1!7643 (h!22770 l!412)) (_1!7643 (h!22770 (t!30585 l!412)))))))

(declare-fun b!1015413 () Bool)

(assert (=> b!1015413 (= e!571269 (isStrictlySorted!585 (t!30585 l!412)))))

(assert (= (and d!120943 (not res!681210)) b!1015412))

(assert (= (and b!1015412 res!681211) b!1015413))

(declare-fun m!937651 () Bool)

(assert (=> b!1015413 m!937651))

(assert (=> start!87918 d!120943))

(declare-fun b!1015420 () Bool)

(declare-fun e!571274 () Bool)

(declare-fun tp!70626 () Bool)

(assert (=> b!1015420 (= e!571274 (and tp_is_empty!23529 tp!70626))))

(assert (=> b!1015352 (= tp!70614 e!571274)))

(assert (= (and b!1015352 ((_ is Cons!21572) (t!30585 l!412))) b!1015420))

(declare-fun b_lambda!15455 () Bool)

(assert (= b_lambda!15445 (or b!1015351 b_lambda!15455)))

(declare-fun bs!29434 () Bool)

(declare-fun d!120949 () Bool)

(assert (= bs!29434 (and d!120949 b!1015351)))

(declare-datatypes ((Option!587 0))(
  ( (Some!586 (v!14435 B!1462)) (None!585) )
))
(declare-fun getValueByKey!536 (List!21576 (_ BitVec 64)) Option!587)

(assert (=> bs!29434 (= (dynLambda!1903 lambda!896 (h!22771 Nil!21574)) (= (getValueByKey!536 l!412 (h!22771 Nil!21574)) (Some!586 value!115)))))

(declare-fun m!937657 () Bool)

(assert (=> bs!29434 m!937657))

(assert (=> b!1015386 d!120949))

(check-sat tp_is_empty!23529 (not b!1015413) (not b!1015387) (not b_lambda!15455) (not b!1015420) (not bs!29434))
(check-sat)
