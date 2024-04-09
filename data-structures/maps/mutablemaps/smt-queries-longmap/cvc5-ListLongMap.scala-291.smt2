; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4846 () Bool)

(assert start!4846)

(declare-fun b_free!1333 () Bool)

(declare-fun b_next!1333 () Bool)

(assert (=> start!4846 (= b_free!1333 (not b_next!1333))))

(declare-fun tp!5483 () Bool)

(declare-fun b_and!2217 () Bool)

(assert (=> start!4846 (= tp!5483 b_and!2217)))

(declare-fun b!37023 () Bool)

(declare-fun e!23414 () Bool)

(declare-datatypes ((B!740 0))(
  ( (B!741 (val!870 Int)) )
))
(declare-datatypes ((tuple2!1404 0))(
  ( (tuple2!1405 (_1!712 (_ BitVec 64)) (_2!712 B!740)) )
))
(declare-datatypes ((List!990 0))(
  ( (Nil!987) (Cons!986 (h!1554 tuple2!1404) (t!3753 List!990)) )
))
(declare-datatypes ((ListLongMap!985 0))(
  ( (ListLongMap!986 (toList!508 List!990)) )
))
(declare-fun lt!13672 () ListLongMap!985)

(declare-fun lm!252 () ListLongMap!985)

(declare-fun size!1299 (List!990) Int)

(assert (=> b!37023 (= e!23414 (>= (size!1299 (toList!508 lt!13672)) (size!1299 (toList!508 lm!252))))))

(declare-fun b!37024 () Bool)

(declare-fun e!23415 () Bool)

(assert (=> b!37024 (= e!23415 e!23414)))

(declare-fun res!22393 () Bool)

(assert (=> b!37024 (=> (not res!22393) (not e!23414))))

(declare-fun p!304 () Int)

(declare-fun forall!170 (List!990 Int) Bool)

(assert (=> b!37024 (= res!22393 (forall!170 (toList!508 lt!13672) p!304))))

(declare-fun tail!98 (ListLongMap!985) ListLongMap!985)

(assert (=> b!37024 (= lt!13672 (tail!98 lm!252))))

(declare-fun b!37025 () Bool)

(declare-fun e!23413 () Bool)

(declare-fun tp!5482 () Bool)

(assert (=> b!37025 (= e!23413 tp!5482)))

(declare-fun b!37026 () Bool)

(declare-fun res!22392 () Bool)

(assert (=> b!37026 (=> (not res!22392) (not e!23415))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!456 (ListLongMap!985 (_ BitVec 64)) Bool)

(assert (=> b!37026 (= res!22392 (contains!456 lm!252 k!388))))

(declare-fun b!37027 () Bool)

(declare-fun res!22389 () Bool)

(assert (=> b!37027 (=> (not res!22389) (not e!23415))))

(declare-fun isEmpty!200 (ListLongMap!985) Bool)

(assert (=> b!37027 (= res!22389 (not (isEmpty!200 lm!252)))))

(declare-fun res!22388 () Bool)

(assert (=> start!4846 (=> (not res!22388) (not e!23415))))

(assert (=> start!4846 (= res!22388 (forall!170 (toList!508 lm!252) p!304))))

(assert (=> start!4846 e!23415))

(declare-fun inv!1630 (ListLongMap!985) Bool)

(assert (=> start!4846 (and (inv!1630 lm!252) e!23413)))

(assert (=> start!4846 tp!5483))

(assert (=> start!4846 true))

(declare-fun b!37028 () Bool)

(declare-fun res!22391 () Bool)

(assert (=> b!37028 (=> (not res!22391) (not e!23414))))

(assert (=> b!37028 (= res!22391 (contains!456 lt!13672 k!388))))

(declare-fun b!37029 () Bool)

(declare-fun res!22390 () Bool)

(assert (=> b!37029 (=> (not res!22390) (not e!23415))))

(declare-fun head!842 (List!990) tuple2!1404)

(assert (=> b!37029 (= res!22390 (not (= (_1!712 (head!842 (toList!508 lm!252))) k!388)))))

(assert (= (and start!4846 res!22388) b!37026))

(assert (= (and b!37026 res!22392) b!37027))

(assert (= (and b!37027 res!22389) b!37029))

(assert (= (and b!37029 res!22390) b!37024))

(assert (= (and b!37024 res!22393) b!37028))

(assert (= (and b!37028 res!22391) b!37023))

(assert (= start!4846 b!37025))

(declare-fun m!29855 () Bool)

(assert (=> b!37028 m!29855))

(declare-fun m!29857 () Bool)

(assert (=> start!4846 m!29857))

(declare-fun m!29859 () Bool)

(assert (=> start!4846 m!29859))

(declare-fun m!29861 () Bool)

(assert (=> b!37024 m!29861))

(declare-fun m!29863 () Bool)

(assert (=> b!37024 m!29863))

(declare-fun m!29865 () Bool)

(assert (=> b!37023 m!29865))

(declare-fun m!29867 () Bool)

(assert (=> b!37023 m!29867))

(declare-fun m!29869 () Bool)

(assert (=> b!37027 m!29869))

(declare-fun m!29871 () Bool)

(assert (=> b!37026 m!29871))

(declare-fun m!29873 () Bool)

(assert (=> b!37029 m!29873))

(push 1)

(assert (not b!37029))

(assert (not b!37028))

(assert (not b!37026))

(assert (not start!4846))

(assert (not b!37023))

(assert (not b_next!1333))

(assert (not b!37024))

(assert (not b!37027))

(assert (not b!37025))

(assert b_and!2217)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2217)

(assert (not b_next!1333))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5691 () Bool)

(declare-fun isEmpty!203 (List!990) Bool)

(assert (=> d!5691 (= (isEmpty!200 lm!252) (isEmpty!203 (toList!508 lm!252)))))

(declare-fun bs!1426 () Bool)

(assert (= bs!1426 d!5691))

(declare-fun m!29915 () Bool)

(assert (=> bs!1426 m!29915))

(assert (=> b!37027 d!5691))

(declare-fun d!5695 () Bool)

(declare-fun e!23447 () Bool)

(assert (=> d!5695 e!23447))

(declare-fun res!22435 () Bool)

(assert (=> d!5695 (=> res!22435 e!23447)))

(declare-fun lt!13707 () Bool)

(assert (=> d!5695 (= res!22435 (not lt!13707))))

(declare-fun lt!13708 () Bool)

(assert (=> d!5695 (= lt!13707 lt!13708)))

(declare-datatypes ((Unit!833 0))(
  ( (Unit!834) )
))
(declare-fun lt!13710 () Unit!833)

(declare-fun e!23446 () Unit!833)

(assert (=> d!5695 (= lt!13710 e!23446)))

(declare-fun c!4260 () Bool)

(assert (=> d!5695 (= c!4260 lt!13708)))

(declare-fun containsKey!48 (List!990 (_ BitVec 64)) Bool)

(assert (=> d!5695 (= lt!13708 (containsKey!48 (toList!508 lt!13672) k!388))))

(assert (=> d!5695 (= (contains!456 lt!13672 k!388) lt!13707)))

(declare-fun b!37091 () Bool)

(declare-fun lt!13709 () Unit!833)

(assert (=> b!37091 (= e!23446 lt!13709)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!44 (List!990 (_ BitVec 64)) Unit!833)

(assert (=> b!37091 (= lt!13709 (lemmaContainsKeyImpliesGetValueByKeyDefined!44 (toList!508 lt!13672) k!388))))

(declare-datatypes ((Option!89 0))(
  ( (Some!88 (v!1957 B!740)) (None!87) )
))
(declare-fun isDefined!45 (Option!89) Bool)

(declare-fun getValueByKey!83 (List!990 (_ BitVec 64)) Option!89)

(assert (=> b!37091 (isDefined!45 (getValueByKey!83 (toList!508 lt!13672) k!388))))

(declare-fun b!37092 () Bool)

(declare-fun Unit!835 () Unit!833)

(assert (=> b!37092 (= e!23446 Unit!835)))

(declare-fun b!37093 () Bool)

(assert (=> b!37093 (= e!23447 (isDefined!45 (getValueByKey!83 (toList!508 lt!13672) k!388)))))

(assert (= (and d!5695 c!4260) b!37091))

(assert (= (and d!5695 (not c!4260)) b!37092))

(assert (= (and d!5695 (not res!22435)) b!37093))

(declare-fun m!29925 () Bool)

(assert (=> d!5695 m!29925))

(declare-fun m!29927 () Bool)

(assert (=> b!37091 m!29927))

(declare-fun m!29929 () Bool)

(assert (=> b!37091 m!29929))

(assert (=> b!37091 m!29929))

(declare-fun m!29931 () Bool)

(assert (=> b!37091 m!29931))

(assert (=> b!37093 m!29929))

(assert (=> b!37093 m!29929))

(assert (=> b!37093 m!29931))

(assert (=> b!37028 d!5695))

(declare-fun d!5703 () Bool)

(declare-fun lt!13721 () Int)

(assert (=> d!5703 (>= lt!13721 0)))

(declare-fun e!23458 () Int)

(assert (=> d!5703 (= lt!13721 e!23458)))

(declare-fun c!4268 () Bool)

(assert (=> d!5703 (= c!4268 (is-Nil!987 (toList!508 lt!13672)))))

(assert (=> d!5703 (= (size!1299 (toList!508 lt!13672)) lt!13721)))

(declare-fun b!37111 () Bool)

(assert (=> b!37111 (= e!23458 0)))

(declare-fun b!37112 () Bool)

(assert (=> b!37112 (= e!23458 (+ 1 (size!1299 (t!3753 (toList!508 lt!13672)))))))

(assert (= (and d!5703 c!4268) b!37111))

(assert (= (and d!5703 (not c!4268)) b!37112))

(declare-fun m!29945 () Bool)

(assert (=> b!37112 m!29945))

(assert (=> b!37023 d!5703))

(declare-fun d!5711 () Bool)

(declare-fun lt!13722 () Int)

(assert (=> d!5711 (>= lt!13722 0)))

(declare-fun e!23459 () Int)

(assert (=> d!5711 (= lt!13722 e!23459)))

(declare-fun c!4269 () Bool)

(assert (=> d!5711 (= c!4269 (is-Nil!987 (toList!508 lm!252)))))

(assert (=> d!5711 (= (size!1299 (toList!508 lm!252)) lt!13722)))

(declare-fun b!37113 () Bool)

(assert (=> b!37113 (= e!23459 0)))

(declare-fun b!37114 () Bool)

(assert (=> b!37114 (= e!23459 (+ 1 (size!1299 (t!3753 (toList!508 lm!252)))))))

(assert (= (and d!5711 c!4269) b!37113))

(assert (= (and d!5711 (not c!4269)) b!37114))

(declare-fun m!29947 () Bool)

(assert (=> b!37114 m!29947))

(assert (=> b!37023 d!5711))

(declare-fun d!5713 () Bool)

(assert (=> d!5713 (= (head!842 (toList!508 lm!252)) (h!1554 (toList!508 lm!252)))))

(assert (=> b!37029 d!5713))

(declare-fun d!5715 () Bool)

(declare-fun res!22450 () Bool)

(declare-fun e!23476 () Bool)

(assert (=> d!5715 (=> res!22450 e!23476)))

(assert (=> d!5715 (= res!22450 (is-Nil!987 (toList!508 lt!13672)))))

(assert (=> d!5715 (= (forall!170 (toList!508 lt!13672) p!304) e!23476)))

(declare-fun b!37136 () Bool)

(declare-fun e!23477 () Bool)

(assert (=> b!37136 (= e!23476 e!23477)))

(declare-fun res!22451 () Bool)

(assert (=> b!37136 (=> (not res!22451) (not e!23477))))

(declare-fun dynLambda!172 (Int tuple2!1404) Bool)

(assert (=> b!37136 (= res!22451 (dynLambda!172 p!304 (h!1554 (toList!508 lt!13672))))))

(declare-fun b!37137 () Bool)

(assert (=> b!37137 (= e!23477 (forall!170 (t!3753 (toList!508 lt!13672)) p!304))))

(assert (= (and d!5715 (not res!22450)) b!37136))

(assert (= (and b!37136 res!22451) b!37137))

(declare-fun b_lambda!1839 () Bool)

(assert (=> (not b_lambda!1839) (not b!37136)))

(declare-fun t!3759 () Bool)

(declare-fun tb!753 () Bool)

(assert (=> (and start!4846 (= p!304 p!304) t!3759) tb!753))

(declare-fun result!1283 () Bool)

(assert (=> tb!753 (= result!1283 true)))

(assert (=> b!37136 t!3759))

(declare-fun b_and!2225 () Bool)

(assert (= b_and!2217 (and (=> t!3759 result!1283) b_and!2225)))

(declare-fun m!29967 () Bool)

(assert (=> b!37136 m!29967))

(declare-fun m!29969 () Bool)

(assert (=> b!37137 m!29969))

(assert (=> b!37024 d!5715))

(declare-fun d!5727 () Bool)

(declare-fun tail!101 (List!990) List!990)

(assert (=> d!5727 (= (tail!98 lm!252) (ListLongMap!986 (tail!101 (toList!508 lm!252))))))

(declare-fun bs!1429 () Bool)

(assert (= bs!1429 d!5727))

(declare-fun m!29973 () Bool)

(assert (=> bs!1429 m!29973))

(assert (=> b!37024 d!5727))

(declare-fun d!5731 () Bool)

(declare-fun res!22457 () Bool)

(declare-fun e!23484 () Bool)

(assert (=> d!5731 (=> res!22457 e!23484)))

(assert (=> d!5731 (= res!22457 (is-Nil!987 (toList!508 lm!252)))))

(assert (=> d!5731 (= (forall!170 (toList!508 lm!252) p!304) e!23484)))

(declare-fun b!37145 () Bool)

(declare-fun e!23485 () Bool)

(assert (=> b!37145 (= e!23484 e!23485)))

(declare-fun res!22458 () Bool)

(assert (=> b!37145 (=> (not res!22458) (not e!23485))))

(assert (=> b!37145 (= res!22458 (dynLambda!172 p!304 (h!1554 (toList!508 lm!252))))))

(declare-fun b!37146 () Bool)

(assert (=> b!37146 (= e!23485 (forall!170 (t!3753 (toList!508 lm!252)) p!304))))

(assert (= (and d!5731 (not res!22457)) b!37145))

(assert (= (and b!37145 res!22458) b!37146))

(declare-fun b_lambda!1841 () Bool)

(assert (=> (not b_lambda!1841) (not b!37145)))

(declare-fun t!3761 () Bool)

(declare-fun tb!755 () Bool)

(assert (=> (and start!4846 (= p!304 p!304) t!3761) tb!755))

(declare-fun result!1285 () Bool)

(assert (=> tb!755 (= result!1285 true)))

(assert (=> b!37145 t!3761))

(declare-fun b_and!2227 () Bool)

(assert (= b_and!2225 (and (=> t!3761 result!1285) b_and!2227)))

(declare-fun m!29983 () Bool)

(assert (=> b!37145 m!29983))

(declare-fun m!29985 () Bool)

(assert (=> b!37146 m!29985))

(assert (=> start!4846 d!5731))

(declare-fun d!5735 () Bool)

(declare-fun isStrictlySorted!178 (List!990) Bool)

(assert (=> d!5735 (= (inv!1630 lm!252) (isStrictlySorted!178 (toList!508 lm!252)))))

(declare-fun bs!1430 () Bool)

(assert (= bs!1430 d!5735))

(declare-fun m!29991 () Bool)

(assert (=> bs!1430 m!29991))

(assert (=> start!4846 d!5735))

(declare-fun d!5739 () Bool)

(declare-fun e!23491 () Bool)

(assert (=> d!5739 e!23491))

(declare-fun res!22463 () Bool)

(assert (=> d!5739 (=> res!22463 e!23491)))

(declare-fun lt!13735 () Bool)

(assert (=> d!5739 (= res!22463 (not lt!13735))))

(declare-fun lt!13736 () Bool)

(assert (=> d!5739 (= lt!13735 lt!13736)))

(declare-fun lt!13738 () Unit!833)

(declare-fun e!23490 () Unit!833)

(assert (=> d!5739 (= lt!13738 e!23490)))

(declare-fun c!4276 () Bool)

(assert (=> d!5739 (= c!4276 lt!13736)))

(assert (=> d!5739 (= lt!13736 (containsKey!48 (toList!508 lm!252) k!388))))

(assert (=> d!5739 (= (contains!456 lm!252 k!388) lt!13735)))

(declare-fun b!37151 () Bool)

(declare-fun lt!13737 () Unit!833)

(assert (=> b!37151 (= e!23490 lt!13737)))

(assert (=> b!37151 (= lt!13737 (lemmaContainsKeyImpliesGetValueByKeyDefined!44 (toList!508 lm!252) k!388))))

(assert (=> b!37151 (isDefined!45 (getValueByKey!83 (toList!508 lm!252) k!388))))

(declare-fun b!37152 () Bool)

(declare-fun Unit!841 () Unit!833)

(assert (=> b!37152 (= e!23490 Unit!841)))

(declare-fun b!37153 () Bool)

(assert (=> b!37153 (= e!23491 (isDefined!45 (getValueByKey!83 (toList!508 lm!252) k!388)))))

(assert (= (and d!5739 c!4276) b!37151))

(assert (= (and d!5739 (not c!4276)) b!37152))

(assert (= (and d!5739 (not res!22463)) b!37153))

(declare-fun m!29999 () Bool)

(assert (=> d!5739 m!29999))

(declare-fun m!30001 () Bool)

(assert (=> b!37151 m!30001))

(declare-fun m!30003 () Bool)

(assert (=> b!37151 m!30003))

(assert (=> b!37151 m!30003))

(declare-fun m!30005 () Bool)

(assert (=> b!37151 m!30005))

(assert (=> b!37153 m!30003))

(assert (=> b!37153 m!30003))

(assert (=> b!37153 m!30005))

(assert (=> b!37026 d!5739))

(declare-fun b!37163 () Bool)

(declare-fun e!23497 () Bool)

(declare-fun tp_is_empty!1665 () Bool)

(declare-fun tp!5501 () Bool)

(assert (=> b!37163 (= e!23497 (and tp_is_empty!1665 tp!5501))))

(assert (=> b!37025 (= tp!5482 e!23497)))

(assert (= (and b!37025 (is-Cons!986 (toList!508 lm!252))) b!37163))

(declare-fun b_lambda!1851 () Bool)

(assert (= b_lambda!1839 (or (and start!4846 b_free!1333) b_lambda!1851)))

(declare-fun b_lambda!1853 () Bool)

(assert (= b_lambda!1841 (or (and start!4846 b_free!1333) b_lambda!1853)))

(push 1)

(assert (not d!5727))

(assert (not b!37146))

(assert (not b!37163))

(assert (not b!37153))

(assert (not b!37093))

(assert (not b!37137))

(assert (not b!37151))

(assert (not b!37112))

(assert (not d!5735))

(assert (not b!37114))

(assert (not b_lambda!1853))

(assert (not b_lambda!1851))

(assert (not d!5739))

(assert (not d!5691))

(assert (not b!37091))

(assert (not b_next!1333))

(assert b_and!2227)

(assert (not d!5695))

(assert tp_is_empty!1665)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2227)

(assert (not b_next!1333))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5757 () Bool)

(assert (=> d!5757 (isDefined!45 (getValueByKey!83 (toList!508 lm!252) k!388))))

(declare-fun lt!13741 () Unit!833)

(declare-fun choose!232 (List!990 (_ BitVec 64)) Unit!833)

(assert (=> d!5757 (= lt!13741 (choose!232 (toList!508 lm!252) k!388))))

(declare-fun e!23517 () Bool)

(assert (=> d!5757 e!23517))

(declare-fun res!22472 () Bool)

(assert (=> d!5757 (=> (not res!22472) (not e!23517))))

(assert (=> d!5757 (= res!22472 (isStrictlySorted!178 (toList!508 lm!252)))))

(assert (=> d!5757 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!44 (toList!508 lm!252) k!388) lt!13741)))

(declare-fun b!37193 () Bool)

(assert (=> b!37193 (= e!23517 (containsKey!48 (toList!508 lm!252) k!388))))

(assert (= (and d!5757 res!22472) b!37193))

(assert (=> d!5757 m!30003))

(assert (=> d!5757 m!30003))

(assert (=> d!5757 m!30005))

(declare-fun m!30033 () Bool)

(assert (=> d!5757 m!30033))

(assert (=> d!5757 m!29991))

(assert (=> b!37193 m!29999))

(assert (=> b!37151 d!5757))

(declare-fun d!5767 () Bool)

(declare-fun isEmpty!207 (Option!89) Bool)

(assert (=> d!5767 (= (isDefined!45 (getValueByKey!83 (toList!508 lm!252) k!388)) (not (isEmpty!207 (getValueByKey!83 (toList!508 lm!252) k!388))))))

(declare-fun bs!1437 () Bool)

(assert (= bs!1437 d!5767))

(assert (=> bs!1437 m!30003))

(declare-fun m!30035 () Bool)

(assert (=> bs!1437 m!30035))

(assert (=> b!37151 d!5767))

(declare-fun b!37218 () Bool)

(declare-fun e!23537 () Option!89)

(assert (=> b!37218 (= e!23537 (getValueByKey!83 (t!3753 (toList!508 lm!252)) k!388))))

(declare-fun b!37216 () Bool)

(declare-fun e!23536 () Option!89)

(assert (=> b!37216 (= e!23536 (Some!88 (_2!712 (h!1554 (toList!508 lm!252)))))))

(declare-fun d!5769 () Bool)

(declare-fun c!4289 () Bool)

(assert (=> d!5769 (= c!4289 (and (is-Cons!986 (toList!508 lm!252)) (= (_1!712 (h!1554 (toList!508 lm!252))) k!388)))))

(assert (=> d!5769 (= (getValueByKey!83 (toList!508 lm!252) k!388) e!23536)))

(declare-fun b!37219 () Bool)

(assert (=> b!37219 (= e!23537 None!87)))

(declare-fun b!37217 () Bool)

(assert (=> b!37217 (= e!23536 e!23537)))

(declare-fun c!4290 () Bool)

(assert (=> b!37217 (= c!4290 (and (is-Cons!986 (toList!508 lm!252)) (not (= (_1!712 (h!1554 (toList!508 lm!252))) k!388))))))

(assert (= (and d!5769 c!4289) b!37216))

(assert (= (and d!5769 (not c!4289)) b!37217))

(assert (= (and b!37217 c!4290) b!37218))

(assert (= (and b!37217 (not c!4290)) b!37219))

(declare-fun m!30043 () Bool)

(assert (=> b!37218 m!30043))

(assert (=> b!37151 d!5769))

(declare-fun d!5777 () Bool)

(declare-fun res!22494 () Bool)

(declare-fun e!23545 () Bool)

(assert (=> d!5777 (=> res!22494 e!23545)))

(assert (=> d!5777 (= res!22494 (and (is-Cons!986 (toList!508 lm!252)) (= (_1!712 (h!1554 (toList!508 lm!252))) k!388)))))

(assert (=> d!5777 (= (containsKey!48 (toList!508 lm!252) k!388) e!23545)))

(declare-fun b!37227 () Bool)

(declare-fun e!23546 () Bool)

(assert (=> b!37227 (= e!23545 e!23546)))

(declare-fun res!22495 () Bool)

(assert (=> b!37227 (=> (not res!22495) (not e!23546))))

(assert (=> b!37227 (= res!22495 (and (or (not (is-Cons!986 (toList!508 lm!252))) (bvsle (_1!712 (h!1554 (toList!508 lm!252))) k!388)) (is-Cons!986 (toList!508 lm!252)) (bvslt (_1!712 (h!1554 (toList!508 lm!252))) k!388)))))

(declare-fun b!37228 () Bool)

(assert (=> b!37228 (= e!23546 (containsKey!48 (t!3753 (toList!508 lm!252)) k!388))))

(assert (= (and d!5777 (not res!22494)) b!37227))

(assert (= (and b!37227 res!22495) b!37228))

(declare-fun m!30047 () Bool)

(assert (=> b!37228 m!30047))

(assert (=> d!5739 d!5777))

(declare-fun d!5783 () Bool)

(assert (=> d!5783 (= (isEmpty!203 (toList!508 lm!252)) (is-Nil!987 (toList!508 lm!252)))))

(assert (=> d!5691 d!5783))

(declare-fun d!5789 () Bool)

(declare-fun res!22497 () Bool)

(declare-fun e!23550 () Bool)

(assert (=> d!5789 (=> res!22497 e!23550)))

(assert (=> d!5789 (= res!22497 (and (is-Cons!986 (toList!508 lt!13672)) (= (_1!712 (h!1554 (toList!508 lt!13672))) k!388)))))

(assert (=> d!5789 (= (containsKey!48 (toList!508 lt!13672) k!388) e!23550)))

(declare-fun b!37234 () Bool)

(declare-fun e!23551 () Bool)

(assert (=> b!37234 (= e!23550 e!23551)))

(declare-fun res!22498 () Bool)

(assert (=> b!37234 (=> (not res!22498) (not e!23551))))

(assert (=> b!37234 (= res!22498 (and (or (not (is-Cons!986 (toList!508 lt!13672))) (bvsle (_1!712 (h!1554 (toList!508 lt!13672))) k!388)) (is-Cons!986 (toList!508 lt!13672)) (bvslt (_1!712 (h!1554 (toList!508 lt!13672))) k!388)))))

(declare-fun b!37235 () Bool)

(assert (=> b!37235 (= e!23551 (containsKey!48 (t!3753 (toList!508 lt!13672)) k!388))))

(assert (= (and d!5789 (not res!22497)) b!37234))

(assert (= (and b!37234 res!22498) b!37235))

(declare-fun m!30057 () Bool)

(assert (=> b!37235 m!30057))

(assert (=> d!5695 d!5789))

(declare-fun d!5791 () Bool)

(assert (=> d!5791 (isDefined!45 (getValueByKey!83 (toList!508 lt!13672) k!388))))

(declare-fun lt!13748 () Unit!833)

(assert (=> d!5791 (= lt!13748 (choose!232 (toList!508 lt!13672) k!388))))

(declare-fun e!23553 () Bool)

(assert (=> d!5791 e!23553))

(declare-fun res!22499 () Bool)

(assert (=> d!5791 (=> (not res!22499) (not e!23553))))

(assert (=> d!5791 (= res!22499 (isStrictlySorted!178 (toList!508 lt!13672)))))

(assert (=> d!5791 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!44 (toList!508 lt!13672) k!388) lt!13748)))

(declare-fun b!37237 () Bool)

(assert (=> b!37237 (= e!23553 (containsKey!48 (toList!508 lt!13672) k!388))))

(assert (= (and d!5791 res!22499) b!37237))

(assert (=> d!5791 m!29929))

(assert (=> d!5791 m!29929))

(assert (=> d!5791 m!29931))

(declare-fun m!30059 () Bool)

(assert (=> d!5791 m!30059))

(declare-fun m!30061 () Bool)

(assert (=> d!5791 m!30061))

(assert (=> b!37237 m!29925))

(assert (=> b!37091 d!5791))

(declare-fun d!5793 () Bool)

(assert (=> d!5793 (= (isDefined!45 (getValueByKey!83 (toList!508 lt!13672) k!388)) (not (isEmpty!207 (getValueByKey!83 (toList!508 lt!13672) k!388))))))

(declare-fun bs!1438 () Bool)

(assert (= bs!1438 d!5793))

(assert (=> bs!1438 m!29929))

(declare-fun m!30063 () Bool)

(assert (=> bs!1438 m!30063))

(assert (=> b!37091 d!5793))

(declare-fun b!37240 () Bool)

(declare-fun e!23555 () Option!89)

(assert (=> b!37240 (= e!23555 (getValueByKey!83 (t!3753 (toList!508 lt!13672)) k!388))))

(declare-fun b!37238 () Bool)

(declare-fun e!23554 () Option!89)

(assert (=> b!37238 (= e!23554 (Some!88 (_2!712 (h!1554 (toList!508 lt!13672)))))))

(declare-fun d!5795 () Bool)

(declare-fun c!4293 () Bool)

(assert (=> d!5795 (= c!4293 (and (is-Cons!986 (toList!508 lt!13672)) (= (_1!712 (h!1554 (toList!508 lt!13672))) k!388)))))

(assert (=> d!5795 (= (getValueByKey!83 (toList!508 lt!13672) k!388) e!23554)))

(declare-fun b!37241 () Bool)

(assert (=> b!37241 (= e!23555 None!87)))

(declare-fun b!37239 () Bool)

(assert (=> b!37239 (= e!23554 e!23555)))

(declare-fun c!4294 () Bool)

(assert (=> b!37239 (= c!4294 (and (is-Cons!986 (toList!508 lt!13672)) (not (= (_1!712 (h!1554 (toList!508 lt!13672))) k!388))))))

(assert (= (and d!5795 c!4293) b!37238))

(assert (= (and d!5795 (not c!4293)) b!37239))

(assert (= (and b!37239 c!4294) b!37240))

(assert (= (and b!37239 (not c!4294)) b!37241))

(declare-fun m!30065 () Bool)

(assert (=> b!37240 m!30065))

(assert (=> b!37091 d!5795))

(declare-fun d!5797 () Bool)

(declare-fun res!22500 () Bool)

(declare-fun e!23556 () Bool)

(assert (=> d!5797 (=> res!22500 e!23556)))

(assert (=> d!5797 (= res!22500 (is-Nil!987 (t!3753 (toList!508 lt!13672))))))

(assert (=> d!5797 (= (forall!170 (t!3753 (toList!508 lt!13672)) p!304) e!23556)))

(declare-fun b!37242 () Bool)

(declare-fun e!23557 () Bool)

(assert (=> b!37242 (= e!23556 e!23557)))

(declare-fun res!22501 () Bool)

(assert (=> b!37242 (=> (not res!22501) (not e!23557))))

(assert (=> b!37242 (= res!22501 (dynLambda!172 p!304 (h!1554 (t!3753 (toList!508 lt!13672)))))))

(declare-fun b!37243 () Bool)

(assert (=> b!37243 (= e!23557 (forall!170 (t!3753 (t!3753 (toList!508 lt!13672))) p!304))))

(assert (= (and d!5797 (not res!22500)) b!37242))

(assert (= (and b!37242 res!22501) b!37243))

(declare-fun b_lambda!1869 () Bool)

(assert (=> (not b_lambda!1869) (not b!37242)))

(declare-fun t!3773 () Bool)

(declare-fun tb!767 () Bool)

(assert (=> (and start!4846 (= p!304 p!304) t!3773) tb!767))

(declare-fun result!1303 () Bool)

(assert (=> tb!767 (= result!1303 true)))

(assert (=> b!37242 t!3773))

(declare-fun b_and!2239 () Bool)

(assert (= b_and!2227 (and (=> t!3773 result!1303) b_and!2239)))

(declare-fun m!30067 () Bool)

(assert (=> b!37242 m!30067))

(declare-fun m!30069 () Bool)

(assert (=> b!37243 m!30069))

(assert (=> b!37137 d!5797))

(declare-fun d!5801 () Bool)

(declare-fun lt!13749 () Int)

(assert (=> d!5801 (>= lt!13749 0)))

(declare-fun e!23558 () Int)

(assert (=> d!5801 (= lt!13749 e!23558)))

(declare-fun c!4295 () Bool)

(assert (=> d!5801 (= c!4295 (is-Nil!987 (t!3753 (toList!508 lm!252))))))

(assert (=> d!5801 (= (size!1299 (t!3753 (toList!508 lm!252))) lt!13749)))

(declare-fun b!37244 () Bool)

(assert (=> b!37244 (= e!23558 0)))

(declare-fun b!37245 () Bool)

(assert (=> b!37245 (= e!23558 (+ 1 (size!1299 (t!3753 (t!3753 (toList!508 lm!252))))))))

(assert (= (and d!5801 c!4295) b!37244))

(assert (= (and d!5801 (not c!4295)) b!37245))

(declare-fun m!30071 () Bool)

(assert (=> b!37245 m!30071))

(assert (=> b!37114 d!5801))

(declare-fun d!5803 () Bool)

(assert (=> d!5803 (= (tail!101 (toList!508 lm!252)) (t!3753 (toList!508 lm!252)))))

(assert (=> d!5727 d!5803))

(declare-fun d!5809 () Bool)

(declare-fun res!22504 () Bool)

(declare-fun e!23562 () Bool)

(assert (=> d!5809 (=> res!22504 e!23562)))

(assert (=> d!5809 (= res!22504 (is-Nil!987 (t!3753 (toList!508 lm!252))))))

(assert (=> d!5809 (= (forall!170 (t!3753 (toList!508 lm!252)) p!304) e!23562)))

(declare-fun b!37250 () Bool)

(declare-fun e!23563 () Bool)

(assert (=> b!37250 (= e!23562 e!23563)))

(declare-fun res!22505 () Bool)

(assert (=> b!37250 (=> (not res!22505) (not e!23563))))

(assert (=> b!37250 (= res!22505 (dynLambda!172 p!304 (h!1554 (t!3753 (toList!508 lm!252)))))))

(declare-fun b!37251 () Bool)

(assert (=> b!37251 (= e!23563 (forall!170 (t!3753 (t!3753 (toList!508 lm!252))) p!304))))

(assert (= (and d!5809 (not res!22504)) b!37250))

(assert (= (and b!37250 res!22505) b!37251))

(declare-fun b_lambda!1873 () Bool)

(assert (=> (not b_lambda!1873) (not b!37250)))

(declare-fun t!3777 () Bool)

(declare-fun tb!771 () Bool)

(assert (=> (and start!4846 (= p!304 p!304) t!3777) tb!771))

(declare-fun result!1307 () Bool)

(assert (=> tb!771 (= result!1307 true)))

(assert (=> b!37250 t!3777))

(declare-fun b_and!2243 () Bool)

(assert (= b_and!2239 (and (=> t!3777 result!1307) b_and!2243)))

(declare-fun m!30079 () Bool)

(assert (=> b!37250 m!30079))

(declare-fun m!30081 () Bool)

(assert (=> b!37251 m!30081))

(assert (=> b!37146 d!5809))

(declare-fun d!5813 () Bool)

(declare-fun res!22514 () Bool)

(declare-fun e!23573 () Bool)

(assert (=> d!5813 (=> res!22514 e!23573)))

(assert (=> d!5813 (= res!22514 (or (is-Nil!987 (toList!508 lm!252)) (is-Nil!987 (t!3753 (toList!508 lm!252)))))))

(assert (=> d!5813 (= (isStrictlySorted!178 (toList!508 lm!252)) e!23573)))

(declare-fun b!37262 () Bool)

(declare-fun e!23574 () Bool)

(assert (=> b!37262 (= e!23573 e!23574)))

(declare-fun res!22515 () Bool)

(assert (=> b!37262 (=> (not res!22515) (not e!23574))))

(assert (=> b!37262 (= res!22515 (bvslt (_1!712 (h!1554 (toList!508 lm!252))) (_1!712 (h!1554 (t!3753 (toList!508 lm!252))))))))

(declare-fun b!37263 () Bool)

(assert (=> b!37263 (= e!23574 (isStrictlySorted!178 (t!3753 (toList!508 lm!252))))))

(assert (= (and d!5813 (not res!22514)) b!37262))

(assert (= (and b!37262 res!22515) b!37263))

(declare-fun m!30085 () Bool)

