; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88342 () Bool)

(assert start!88342)

(declare-fun b!1017032 () Bool)

(assert (=> b!1017032 true))

(assert (=> b!1017032 true))

(declare-fun bs!29549 () Bool)

(declare-fun b!1017035 () Bool)

(assert (= bs!29549 (and b!1017035 b!1017032)))

(declare-datatypes ((B!1552 0))(
  ( (B!1553 (val!11860 Int)) )
))
(declare-datatypes ((tuple2!15356 0))(
  ( (tuple2!15357 (_1!7688 (_ BitVec 64)) (_2!7688 B!1552)) )
))
(declare-datatypes ((List!21657 0))(
  ( (Nil!21654) (Cons!21653 (h!22851 tuple2!15356) (t!30666 List!21657)) )
))
(declare-fun lt!449389 () List!21657)

(declare-fun lambda!1074 () Int)

(declare-fun l!1114 () List!21657)

(declare-fun lambda!1075 () Int)

(assert (=> bs!29549 (= (= lt!449389 l!1114) (= lambda!1075 lambda!1074))))

(assert (=> b!1017035 true))

(assert (=> b!1017035 true))

(declare-fun res!682236 () Bool)

(declare-fun e!572221 () Bool)

(assert (=> b!1017032 (=> (not res!682236) (not e!572221))))

(declare-datatypes ((List!21658 0))(
  ( (Nil!21655) (Cons!21654 (h!22852 (_ BitVec 64)) (t!30667 List!21658)) )
))
(declare-fun keys!40 () List!21658)

(declare-fun forall!293 (List!21658 Int) Bool)

(assert (=> b!1017032 (= res!682236 (forall!293 keys!40 lambda!1074))))

(declare-fun res!682237 () Bool)

(assert (=> start!88342 (=> (not res!682237) (not e!572221))))

(declare-fun isStrictlySorted!624 (List!21657) Bool)

(assert (=> start!88342 (= res!682237 (isStrictlySorted!624 l!1114))))

(assert (=> start!88342 e!572221))

(declare-fun e!572219 () Bool)

(assert (=> start!88342 e!572219))

(assert (=> start!88342 true))

(declare-fun tp_is_empty!23619 () Bool)

(assert (=> start!88342 tp_is_empty!23619))

(declare-fun b!1017033 () Bool)

(declare-fun res!682238 () Bool)

(assert (=> b!1017033 (=> (not res!682238) (not e!572221))))

(declare-fun newHead!31 () tuple2!15356)

(declare-fun head!975 (List!21657) tuple2!15356)

(assert (=> b!1017033 (= res!682238 (bvslt (_1!7688 newHead!31) (_1!7688 (head!975 l!1114))))))

(declare-fun b!1017034 () Bool)

(declare-fun tp!70832 () Bool)

(assert (=> b!1017034 (= e!572219 (and tp_is_empty!23619 tp!70832))))

(declare-fun e!572220 () Bool)

(assert (=> b!1017035 (= e!572220 (forall!293 keys!40 lambda!1075))))

(assert (=> b!1017035 (forall!293 (t!30667 keys!40) lambda!1075)))

(declare-fun value!178 () B!1552)

(declare-datatypes ((Unit!33230 0))(
  ( (Unit!33231) )
))
(declare-fun lt!449388 () Unit!33230)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!55 (List!21657 List!21658 B!1552 tuple2!15356) Unit!33230)

(assert (=> b!1017035 (= lt!449388 (lemmaForallGetValueByKeySameWithASmallerHead!55 l!1114 (t!30667 keys!40) value!178 newHead!31))))

(declare-fun b!1017036 () Bool)

(assert (=> b!1017036 (= e!572221 (not e!572220))))

(declare-fun res!682235 () Bool)

(assert (=> b!1017036 (=> res!682235 e!572220)))

(assert (=> b!1017036 (= res!682235 (not (forall!293 (t!30667 keys!40) lambda!1074)))))

(declare-datatypes ((Option!616 0))(
  ( (Some!615 (v!14464 B!1552)) (None!614) )
))
(declare-fun isDefined!412 (Option!616) Bool)

(declare-fun getValueByKey!565 (List!21657 (_ BitVec 64)) Option!616)

(assert (=> b!1017036 (isDefined!412 (getValueByKey!565 lt!449389 (h!22852 keys!40)))))

(declare-fun lt!449391 () Unit!33230)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!390 (List!21657 (_ BitVec 64)) Unit!33230)

(assert (=> b!1017036 (= lt!449391 (lemmaContainsKeyImpliesGetValueByKeyDefined!390 lt!449389 (h!22852 keys!40)))))

(assert (=> b!1017036 (= lt!449389 (Cons!21653 newHead!31 l!1114))))

(declare-fun containsKey!501 (List!21657 (_ BitVec 64)) Bool)

(assert (=> b!1017036 (containsKey!501 l!1114 (h!22852 keys!40))))

(declare-fun lt!449390 () Unit!33230)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!20 (List!21657 (_ BitVec 64)) Unit!33230)

(assert (=> b!1017036 (= lt!449390 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!20 l!1114 (h!22852 keys!40)))))

(declare-fun b!1017037 () Bool)

(declare-fun res!682239 () Bool)

(assert (=> b!1017037 (=> (not res!682239) (not e!572221))))

(get-info :version)

(assert (=> b!1017037 (= res!682239 ((_ is Cons!21654) keys!40))))

(declare-fun b!1017038 () Bool)

(declare-fun res!682234 () Bool)

(assert (=> b!1017038 (=> (not res!682234) (not e!572221))))

(declare-fun isEmpty!902 (List!21657) Bool)

(assert (=> b!1017038 (= res!682234 (not (isEmpty!902 l!1114)))))

(assert (= (and start!88342 res!682237) b!1017038))

(assert (= (and b!1017038 res!682234) b!1017032))

(assert (= (and b!1017032 res!682236) b!1017033))

(assert (= (and b!1017033 res!682238) b!1017037))

(assert (= (and b!1017037 res!682239) b!1017036))

(assert (= (and b!1017036 (not res!682235)) b!1017035))

(assert (= (and start!88342 ((_ is Cons!21653) l!1114)) b!1017034))

(declare-fun m!938653 () Bool)

(assert (=> b!1017036 m!938653))

(declare-fun m!938655 () Bool)

(assert (=> b!1017036 m!938655))

(declare-fun m!938657 () Bool)

(assert (=> b!1017036 m!938657))

(declare-fun m!938659 () Bool)

(assert (=> b!1017036 m!938659))

(declare-fun m!938661 () Bool)

(assert (=> b!1017036 m!938661))

(declare-fun m!938663 () Bool)

(assert (=> b!1017036 m!938663))

(assert (=> b!1017036 m!938659))

(declare-fun m!938665 () Bool)

(assert (=> start!88342 m!938665))

(declare-fun m!938667 () Bool)

(assert (=> b!1017032 m!938667))

(declare-fun m!938669 () Bool)

(assert (=> b!1017035 m!938669))

(declare-fun m!938671 () Bool)

(assert (=> b!1017035 m!938671))

(declare-fun m!938673 () Bool)

(assert (=> b!1017035 m!938673))

(declare-fun m!938675 () Bool)

(assert (=> b!1017038 m!938675))

(declare-fun m!938677 () Bool)

(assert (=> b!1017033 m!938677))

(check-sat (not b!1017035) (not b!1017032) (not b!1017034) (not b!1017036) (not b!1017038) (not start!88342) (not b!1017033) tp_is_empty!23619)
(check-sat)
(get-model)

(declare-fun d!121445 () Bool)

(assert (=> d!121445 (= (isEmpty!902 l!1114) ((_ is Nil!21654) l!1114))))

(assert (=> b!1017038 d!121445))

(declare-fun d!121447 () Bool)

(assert (=> d!121447 (= (head!975 l!1114) (h!22851 l!1114))))

(assert (=> b!1017033 d!121447))

(declare-fun d!121449 () Bool)

(declare-fun res!682262 () Bool)

(declare-fun e!572235 () Bool)

(assert (=> d!121449 (=> res!682262 e!572235)))

(assert (=> d!121449 (= res!682262 ((_ is Nil!21655) keys!40))))

(assert (=> d!121449 (= (forall!293 keys!40 lambda!1074) e!572235)))

(declare-fun b!1017072 () Bool)

(declare-fun e!572236 () Bool)

(assert (=> b!1017072 (= e!572235 e!572236)))

(declare-fun res!682263 () Bool)

(assert (=> b!1017072 (=> (not res!682263) (not e!572236))))

(declare-fun dynLambda!1931 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017072 (= res!682263 (dynLambda!1931 lambda!1074 (h!22852 keys!40)))))

(declare-fun b!1017073 () Bool)

(assert (=> b!1017073 (= e!572236 (forall!293 (t!30667 keys!40) lambda!1074))))

(assert (= (and d!121449 (not res!682262)) b!1017072))

(assert (= (and b!1017072 res!682263) b!1017073))

(declare-fun b_lambda!15609 () Bool)

(assert (=> (not b_lambda!15609) (not b!1017072)))

(declare-fun m!938705 () Bool)

(assert (=> b!1017072 m!938705))

(assert (=> b!1017073 m!938657))

(assert (=> b!1017032 d!121449))

(declare-fun d!121451 () Bool)

(declare-fun isEmpty!904 (Option!616) Bool)

(assert (=> d!121451 (= (isDefined!412 (getValueByKey!565 lt!449389 (h!22852 keys!40))) (not (isEmpty!904 (getValueByKey!565 lt!449389 (h!22852 keys!40)))))))

(declare-fun bs!29551 () Bool)

(assert (= bs!29551 d!121451))

(assert (=> bs!29551 m!938659))

(declare-fun m!938707 () Bool)

(assert (=> bs!29551 m!938707))

(assert (=> b!1017036 d!121451))

(declare-fun d!121453 () Bool)

(assert (=> d!121453 (containsKey!501 l!1114 (h!22852 keys!40))))

(declare-fun lt!449406 () Unit!33230)

(declare-fun choose!1669 (List!21657 (_ BitVec 64)) Unit!33230)

(assert (=> d!121453 (= lt!449406 (choose!1669 l!1114 (h!22852 keys!40)))))

(declare-fun e!572239 () Bool)

(assert (=> d!121453 e!572239))

(declare-fun res!682266 () Bool)

(assert (=> d!121453 (=> (not res!682266) (not e!572239))))

(assert (=> d!121453 (= res!682266 (isStrictlySorted!624 l!1114))))

(assert (=> d!121453 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!20 l!1114 (h!22852 keys!40)) lt!449406)))

(declare-fun b!1017076 () Bool)

(assert (=> b!1017076 (= e!572239 (isDefined!412 (getValueByKey!565 l!1114 (h!22852 keys!40))))))

(assert (= (and d!121453 res!682266) b!1017076))

(assert (=> d!121453 m!938655))

(declare-fun m!938709 () Bool)

(assert (=> d!121453 m!938709))

(assert (=> d!121453 m!938665))

(declare-fun m!938711 () Bool)

(assert (=> b!1017076 m!938711))

(assert (=> b!1017076 m!938711))

(declare-fun m!938713 () Bool)

(assert (=> b!1017076 m!938713))

(assert (=> b!1017036 d!121453))

(declare-fun d!121459 () Bool)

(declare-fun res!682271 () Bool)

(declare-fun e!572244 () Bool)

(assert (=> d!121459 (=> res!682271 e!572244)))

(assert (=> d!121459 (= res!682271 ((_ is Nil!21655) (t!30667 keys!40)))))

(assert (=> d!121459 (= (forall!293 (t!30667 keys!40) lambda!1074) e!572244)))

(declare-fun b!1017081 () Bool)

(declare-fun e!572245 () Bool)

(assert (=> b!1017081 (= e!572244 e!572245)))

(declare-fun res!682272 () Bool)

(assert (=> b!1017081 (=> (not res!682272) (not e!572245))))

(assert (=> b!1017081 (= res!682272 (dynLambda!1931 lambda!1074 (h!22852 (t!30667 keys!40))))))

(declare-fun b!1017082 () Bool)

(assert (=> b!1017082 (= e!572245 (forall!293 (t!30667 (t!30667 keys!40)) lambda!1074))))

(assert (= (and d!121459 (not res!682271)) b!1017081))

(assert (= (and b!1017081 res!682272) b!1017082))

(declare-fun b_lambda!15611 () Bool)

(assert (=> (not b_lambda!15611) (not b!1017081)))

(declare-fun m!938715 () Bool)

(assert (=> b!1017081 m!938715))

(declare-fun m!938717 () Bool)

(assert (=> b!1017082 m!938717))

(assert (=> b!1017036 d!121459))

(declare-fun b!1017105 () Bool)

(declare-fun e!572264 () Option!616)

(assert (=> b!1017105 (= e!572264 (Some!615 (_2!7688 (h!22851 lt!449389))))))

(declare-fun b!1017106 () Bool)

(declare-fun e!572265 () Option!616)

(assert (=> b!1017106 (= e!572264 e!572265)))

(declare-fun c!102946 () Bool)

(assert (=> b!1017106 (= c!102946 (and ((_ is Cons!21653) lt!449389) (not (= (_1!7688 (h!22851 lt!449389)) (h!22852 keys!40)))))))

(declare-fun b!1017107 () Bool)

(assert (=> b!1017107 (= e!572265 (getValueByKey!565 (t!30666 lt!449389) (h!22852 keys!40)))))

(declare-fun d!121461 () Bool)

(declare-fun c!102945 () Bool)

(assert (=> d!121461 (= c!102945 (and ((_ is Cons!21653) lt!449389) (= (_1!7688 (h!22851 lt!449389)) (h!22852 keys!40))))))

(assert (=> d!121461 (= (getValueByKey!565 lt!449389 (h!22852 keys!40)) e!572264)))

(declare-fun b!1017108 () Bool)

(assert (=> b!1017108 (= e!572265 None!614)))

(assert (= (and d!121461 c!102945) b!1017105))

(assert (= (and d!121461 (not c!102945)) b!1017106))

(assert (= (and b!1017106 c!102946) b!1017107))

(assert (= (and b!1017106 (not c!102946)) b!1017108))

(declare-fun m!938733 () Bool)

(assert (=> b!1017107 m!938733))

(assert (=> b!1017036 d!121461))

(declare-fun d!121477 () Bool)

(assert (=> d!121477 (isDefined!412 (getValueByKey!565 lt!449389 (h!22852 keys!40)))))

(declare-fun lt!449411 () Unit!33230)

(declare-fun choose!1671 (List!21657 (_ BitVec 64)) Unit!33230)

(assert (=> d!121477 (= lt!449411 (choose!1671 lt!449389 (h!22852 keys!40)))))

(declare-fun e!572270 () Bool)

(assert (=> d!121477 e!572270))

(declare-fun res!682295 () Bool)

(assert (=> d!121477 (=> (not res!682295) (not e!572270))))

(assert (=> d!121477 (= res!682295 (isStrictlySorted!624 lt!449389))))

(assert (=> d!121477 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!390 lt!449389 (h!22852 keys!40)) lt!449411)))

(declare-fun b!1017117 () Bool)

(assert (=> b!1017117 (= e!572270 (containsKey!501 lt!449389 (h!22852 keys!40)))))

(assert (= (and d!121477 res!682295) b!1017117))

(assert (=> d!121477 m!938659))

(assert (=> d!121477 m!938659))

(assert (=> d!121477 m!938661))

(declare-fun m!938735 () Bool)

(assert (=> d!121477 m!938735))

(declare-fun m!938737 () Bool)

(assert (=> d!121477 m!938737))

(declare-fun m!938739 () Bool)

(assert (=> b!1017117 m!938739))

(assert (=> b!1017036 d!121477))

(declare-fun d!121479 () Bool)

(declare-fun res!682309 () Bool)

(declare-fun e!572278 () Bool)

(assert (=> d!121479 (=> res!682309 e!572278)))

(assert (=> d!121479 (= res!682309 (and ((_ is Cons!21653) l!1114) (= (_1!7688 (h!22851 l!1114)) (h!22852 keys!40))))))

(assert (=> d!121479 (= (containsKey!501 l!1114 (h!22852 keys!40)) e!572278)))

(declare-fun b!1017133 () Bool)

(declare-fun e!572279 () Bool)

(assert (=> b!1017133 (= e!572278 e!572279)))

(declare-fun res!682310 () Bool)

(assert (=> b!1017133 (=> (not res!682310) (not e!572279))))

(assert (=> b!1017133 (= res!682310 (and (or (not ((_ is Cons!21653) l!1114)) (bvsle (_1!7688 (h!22851 l!1114)) (h!22852 keys!40))) ((_ is Cons!21653) l!1114) (bvslt (_1!7688 (h!22851 l!1114)) (h!22852 keys!40))))))

(declare-fun b!1017134 () Bool)

(assert (=> b!1017134 (= e!572279 (containsKey!501 (t!30666 l!1114) (h!22852 keys!40)))))

(assert (= (and d!121479 (not res!682309)) b!1017133))

(assert (= (and b!1017133 res!682310) b!1017134))

(declare-fun m!938747 () Bool)

(assert (=> b!1017134 m!938747))

(assert (=> b!1017036 d!121479))

(declare-fun d!121483 () Bool)

(declare-fun res!682326 () Bool)

(declare-fun e!572293 () Bool)

(assert (=> d!121483 (=> res!682326 e!572293)))

(assert (=> d!121483 (= res!682326 (or ((_ is Nil!21654) l!1114) ((_ is Nil!21654) (t!30666 l!1114))))))

(assert (=> d!121483 (= (isStrictlySorted!624 l!1114) e!572293)))

(declare-fun b!1017152 () Bool)

(declare-fun e!572294 () Bool)

(assert (=> b!1017152 (= e!572293 e!572294)))

(declare-fun res!682327 () Bool)

(assert (=> b!1017152 (=> (not res!682327) (not e!572294))))

(assert (=> b!1017152 (= res!682327 (bvslt (_1!7688 (h!22851 l!1114)) (_1!7688 (h!22851 (t!30666 l!1114)))))))

(declare-fun b!1017153 () Bool)

(assert (=> b!1017153 (= e!572294 (isStrictlySorted!624 (t!30666 l!1114)))))

(assert (= (and d!121483 (not res!682326)) b!1017152))

(assert (= (and b!1017152 res!682327) b!1017153))

(declare-fun m!938761 () Bool)

(assert (=> b!1017153 m!938761))

(assert (=> start!88342 d!121483))

(declare-fun d!121493 () Bool)

(declare-fun res!682332 () Bool)

(declare-fun e!572299 () Bool)

(assert (=> d!121493 (=> res!682332 e!572299)))

(assert (=> d!121493 (= res!682332 ((_ is Nil!21655) keys!40))))

(assert (=> d!121493 (= (forall!293 keys!40 lambda!1075) e!572299)))

(declare-fun b!1017158 () Bool)

(declare-fun e!572300 () Bool)

(assert (=> b!1017158 (= e!572299 e!572300)))

(declare-fun res!682333 () Bool)

(assert (=> b!1017158 (=> (not res!682333) (not e!572300))))

(assert (=> b!1017158 (= res!682333 (dynLambda!1931 lambda!1075 (h!22852 keys!40)))))

(declare-fun b!1017159 () Bool)

(assert (=> b!1017159 (= e!572300 (forall!293 (t!30667 keys!40) lambda!1075))))

(assert (= (and d!121493 (not res!682332)) b!1017158))

(assert (= (and b!1017158 res!682333) b!1017159))

(declare-fun b_lambda!15625 () Bool)

(assert (=> (not b_lambda!15625) (not b!1017158)))

(declare-fun m!938763 () Bool)

(assert (=> b!1017158 m!938763))

(assert (=> b!1017159 m!938671))

(assert (=> b!1017035 d!121493))

(declare-fun d!121495 () Bool)

(declare-fun res!682334 () Bool)

(declare-fun e!572301 () Bool)

(assert (=> d!121495 (=> res!682334 e!572301)))

(assert (=> d!121495 (= res!682334 ((_ is Nil!21655) (t!30667 keys!40)))))

(assert (=> d!121495 (= (forall!293 (t!30667 keys!40) lambda!1075) e!572301)))

(declare-fun b!1017160 () Bool)

(declare-fun e!572302 () Bool)

(assert (=> b!1017160 (= e!572301 e!572302)))

(declare-fun res!682335 () Bool)

(assert (=> b!1017160 (=> (not res!682335) (not e!572302))))

(assert (=> b!1017160 (= res!682335 (dynLambda!1931 lambda!1075 (h!22852 (t!30667 keys!40))))))

(declare-fun b!1017161 () Bool)

(assert (=> b!1017161 (= e!572302 (forall!293 (t!30667 (t!30667 keys!40)) lambda!1075))))

(assert (= (and d!121495 (not res!682334)) b!1017160))

(assert (= (and b!1017160 res!682335) b!1017161))

(declare-fun b_lambda!15627 () Bool)

(assert (=> (not b_lambda!15627) (not b!1017160)))

(declare-fun m!938767 () Bool)

(assert (=> b!1017160 m!938767))

(declare-fun m!938769 () Bool)

(assert (=> b!1017161 m!938769))

(assert (=> b!1017035 d!121495))

(declare-fun bs!29563 () Bool)

(declare-fun b!1017198 () Bool)

(assert (= bs!29563 (and b!1017198 b!1017032)))

(declare-fun lambda!1102 () Int)

(assert (=> bs!29563 (= lambda!1102 lambda!1074)))

(declare-fun bs!29564 () Bool)

(assert (= bs!29564 (and b!1017198 b!1017035)))

(assert (=> bs!29564 (= (= l!1114 lt!449389) (= lambda!1102 lambda!1075))))

(assert (=> b!1017198 true))

(assert (=> b!1017198 true))

(declare-fun bs!29565 () Bool)

(declare-fun d!121499 () Bool)

(assert (= bs!29565 (and d!121499 b!1017032)))

(declare-fun lambda!1103 () Int)

(assert (=> bs!29565 (= (= (Cons!21653 newHead!31 l!1114) l!1114) (= lambda!1103 lambda!1074))))

(declare-fun bs!29566 () Bool)

(assert (= bs!29566 (and d!121499 b!1017035)))

(assert (=> bs!29566 (= (= (Cons!21653 newHead!31 l!1114) lt!449389) (= lambda!1103 lambda!1075))))

(declare-fun bs!29567 () Bool)

(assert (= bs!29567 (and d!121499 b!1017198)))

(assert (=> bs!29567 (= (= (Cons!21653 newHead!31 l!1114) l!1114) (= lambda!1103 lambda!1102))))

(assert (=> d!121499 true))

(assert (=> d!121499 true))

(assert (=> d!121499 true))

(assert (=> d!121499 (forall!293 (t!30667 keys!40) lambda!1103)))

(declare-fun lt!449427 () Unit!33230)

(declare-fun choose!1675 (List!21657 List!21658 B!1552 tuple2!15356) Unit!33230)

(assert (=> d!121499 (= lt!449427 (choose!1675 l!1114 (t!30667 keys!40) value!178 newHead!31))))

(declare-fun e!572330 () Bool)

(assert (=> d!121499 e!572330))

(declare-fun res!682365 () Bool)

(assert (=> d!121499 (=> (not res!682365) (not e!572330))))

(assert (=> d!121499 (= res!682365 (isStrictlySorted!624 l!1114))))

(assert (=> d!121499 (= (lemmaForallGetValueByKeySameWithASmallerHead!55 l!1114 (t!30667 keys!40) value!178 newHead!31) lt!449427)))

(declare-fun b!1017197 () Bool)

(declare-fun res!682364 () Bool)

(assert (=> b!1017197 (=> (not res!682364) (not e!572330))))

(assert (=> b!1017197 (= res!682364 (not (isEmpty!902 l!1114)))))

(declare-fun res!682363 () Bool)

(assert (=> b!1017198 (=> (not res!682363) (not e!572330))))

(assert (=> b!1017198 (= res!682363 (forall!293 (t!30667 keys!40) lambda!1102))))

(declare-fun b!1017199 () Bool)

(assert (=> b!1017199 (= e!572330 (bvslt (_1!7688 newHead!31) (_1!7688 (head!975 l!1114))))))

(assert (= (and d!121499 res!682365) b!1017197))

(assert (= (and b!1017197 res!682364) b!1017198))

(assert (= (and b!1017198 res!682363) b!1017199))

(declare-fun m!938801 () Bool)

(assert (=> d!121499 m!938801))

(declare-fun m!938803 () Bool)

(assert (=> d!121499 m!938803))

(assert (=> d!121499 m!938665))

(assert (=> b!1017197 m!938675))

(declare-fun m!938805 () Bool)

(assert (=> b!1017198 m!938805))

(assert (=> b!1017199 m!938677))

(assert (=> b!1017035 d!121499))

(declare-fun b!1017226 () Bool)

(declare-fun e!572345 () Bool)

(declare-fun tp!70838 () Bool)

(assert (=> b!1017226 (= e!572345 (and tp_is_empty!23619 tp!70838))))

(assert (=> b!1017034 (= tp!70832 e!572345)))

(assert (= (and b!1017034 ((_ is Cons!21653) (t!30666 l!1114))) b!1017226))

(declare-fun b_lambda!15633 () Bool)

(assert (= b_lambda!15611 (or b!1017032 b_lambda!15633)))

(declare-fun bs!29568 () Bool)

(declare-fun d!121521 () Bool)

(assert (= bs!29568 (and d!121521 b!1017032)))

(assert (=> bs!29568 (= (dynLambda!1931 lambda!1074 (h!22852 (t!30667 keys!40))) (= (getValueByKey!565 l!1114 (h!22852 (t!30667 keys!40))) (Some!615 value!178)))))

(declare-fun m!938811 () Bool)

(assert (=> bs!29568 m!938811))

(assert (=> b!1017081 d!121521))

(declare-fun b_lambda!15635 () Bool)

(assert (= b_lambda!15609 (or b!1017032 b_lambda!15635)))

(declare-fun bs!29569 () Bool)

(declare-fun d!121523 () Bool)

(assert (= bs!29569 (and d!121523 b!1017032)))

(assert (=> bs!29569 (= (dynLambda!1931 lambda!1074 (h!22852 keys!40)) (= (getValueByKey!565 l!1114 (h!22852 keys!40)) (Some!615 value!178)))))

(assert (=> bs!29569 m!938711))

(assert (=> b!1017072 d!121523))

(declare-fun b_lambda!15637 () Bool)

(assert (= b_lambda!15627 (or b!1017035 b_lambda!15637)))

(declare-fun bs!29571 () Bool)

(declare-fun d!121527 () Bool)

(assert (= bs!29571 (and d!121527 b!1017035)))

(assert (=> bs!29571 (= (dynLambda!1931 lambda!1075 (h!22852 (t!30667 keys!40))) (= (getValueByKey!565 lt!449389 (h!22852 (t!30667 keys!40))) (Some!615 value!178)))))

(declare-fun m!938815 () Bool)

(assert (=> bs!29571 m!938815))

(assert (=> b!1017160 d!121527))

(declare-fun b_lambda!15639 () Bool)

(assert (= b_lambda!15625 (or b!1017035 b_lambda!15639)))

(declare-fun bs!29572 () Bool)

(declare-fun d!121529 () Bool)

(assert (= bs!29572 (and d!121529 b!1017035)))

(assert (=> bs!29572 (= (dynLambda!1931 lambda!1075 (h!22852 keys!40)) (= (getValueByKey!565 lt!449389 (h!22852 keys!40)) (Some!615 value!178)))))

(assert (=> bs!29572 m!938659))

(assert (=> b!1017158 d!121529))

(check-sat (not b!1017076) (not b!1017199) (not b_lambda!15637) (not d!121477) (not b!1017226) (not b!1017073) (not bs!29572) (not b!1017161) (not bs!29569) (not b_lambda!15633) (not d!121453) (not b!1017117) (not bs!29568) (not b!1017107) (not d!121451) (not bs!29571) (not b_lambda!15635) (not b!1017134) tp_is_empty!23619 (not b!1017198) (not b!1017159) (not b!1017153) (not d!121499) (not b!1017197) (not b_lambda!15639) (not b!1017082))
(check-sat)
