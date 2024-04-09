; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4848 () Bool)

(assert start!4848)

(declare-fun b_free!1335 () Bool)

(declare-fun b_next!1335 () Bool)

(assert (=> start!4848 (= b_free!1335 (not b_next!1335))))

(declare-fun tp!5489 () Bool)

(declare-fun b_and!2219 () Bool)

(assert (=> start!4848 (= tp!5489 b_and!2219)))

(declare-fun b!37044 () Bool)

(declare-fun e!23423 () Bool)

(declare-datatypes ((B!742 0))(
  ( (B!743 (val!871 Int)) )
))
(declare-datatypes ((tuple2!1406 0))(
  ( (tuple2!1407 (_1!713 (_ BitVec 64)) (_2!713 B!742)) )
))
(declare-datatypes ((List!991 0))(
  ( (Nil!988) (Cons!987 (h!1555 tuple2!1406) (t!3754 List!991)) )
))
(declare-datatypes ((ListLongMap!987 0))(
  ( (ListLongMap!988 (toList!509 List!991)) )
))
(declare-fun lt!13675 () ListLongMap!987)

(declare-fun lm!252 () ListLongMap!987)

(declare-fun size!1300 (List!991) Int)

(assert (=> b!37044 (= e!23423 (>= (size!1300 (toList!509 lt!13675)) (size!1300 (toList!509 lm!252))))))

(declare-fun res!22409 () Bool)

(declare-fun e!23424 () Bool)

(assert (=> start!4848 (=> (not res!22409) (not e!23424))))

(declare-fun p!304 () Int)

(declare-fun forall!171 (List!991 Int) Bool)

(assert (=> start!4848 (= res!22409 (forall!171 (toList!509 lm!252) p!304))))

(assert (=> start!4848 e!23424))

(declare-fun e!23422 () Bool)

(declare-fun inv!1631 (ListLongMap!987) Bool)

(assert (=> start!4848 (and (inv!1631 lm!252) e!23422)))

(assert (=> start!4848 tp!5489))

(assert (=> start!4848 true))

(declare-fun b!37045 () Bool)

(declare-fun tp!5488 () Bool)

(assert (=> b!37045 (= e!23422 tp!5488)))

(declare-fun b!37046 () Bool)

(assert (=> b!37046 (= e!23424 e!23423)))

(declare-fun res!22410 () Bool)

(assert (=> b!37046 (=> (not res!22410) (not e!23423))))

(assert (=> b!37046 (= res!22410 (forall!171 (toList!509 lt!13675) p!304))))

(declare-fun tail!99 (ListLongMap!987) ListLongMap!987)

(assert (=> b!37046 (= lt!13675 (tail!99 lm!252))))

(declare-fun b!37047 () Bool)

(declare-fun res!22408 () Bool)

(assert (=> b!37047 (=> (not res!22408) (not e!23424))))

(declare-fun isEmpty!201 (ListLongMap!987) Bool)

(assert (=> b!37047 (= res!22408 (not (isEmpty!201 lm!252)))))

(declare-fun b!37048 () Bool)

(declare-fun res!22407 () Bool)

(assert (=> b!37048 (=> (not res!22407) (not e!23424))))

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun head!843 (List!991) tuple2!1406)

(assert (=> b!37048 (= res!22407 (not (= (_1!713 (head!843 (toList!509 lm!252))) k0!388)))))

(declare-fun b!37049 () Bool)

(declare-fun res!22406 () Bool)

(assert (=> b!37049 (=> (not res!22406) (not e!23423))))

(declare-fun contains!457 (ListLongMap!987 (_ BitVec 64)) Bool)

(assert (=> b!37049 (= res!22406 (contains!457 lt!13675 k0!388))))

(declare-fun b!37050 () Bool)

(declare-fun res!22411 () Bool)

(assert (=> b!37050 (=> (not res!22411) (not e!23424))))

(assert (=> b!37050 (= res!22411 (contains!457 lm!252 k0!388))))

(assert (= (and start!4848 res!22409) b!37050))

(assert (= (and b!37050 res!22411) b!37047))

(assert (= (and b!37047 res!22408) b!37048))

(assert (= (and b!37048 res!22407) b!37046))

(assert (= (and b!37046 res!22410) b!37049))

(assert (= (and b!37049 res!22406) b!37044))

(assert (= start!4848 b!37045))

(declare-fun m!29875 () Bool)

(assert (=> start!4848 m!29875))

(declare-fun m!29877 () Bool)

(assert (=> start!4848 m!29877))

(declare-fun m!29879 () Bool)

(assert (=> b!37047 m!29879))

(declare-fun m!29881 () Bool)

(assert (=> b!37046 m!29881))

(declare-fun m!29883 () Bool)

(assert (=> b!37046 m!29883))

(declare-fun m!29885 () Bool)

(assert (=> b!37048 m!29885))

(declare-fun m!29887 () Bool)

(assert (=> b!37050 m!29887))

(declare-fun m!29889 () Bool)

(assert (=> b!37049 m!29889))

(declare-fun m!29891 () Bool)

(assert (=> b!37044 m!29891))

(declare-fun m!29893 () Bool)

(assert (=> b!37044 m!29893))

(check-sat (not b!37049) (not b!37050) b_and!2219 (not b!37047) (not b!37046) (not b!37048) (not b_next!1335) (not b!37045) (not start!4848) (not b!37044))
(check-sat b_and!2219 (not b_next!1335))
(get-model)

(declare-fun d!5693 () Bool)

(assert (=> d!5693 (= (head!843 (toList!509 lm!252)) (h!1555 (toList!509 lm!252)))))

(assert (=> b!37048 d!5693))

(declare-fun d!5697 () Bool)

(declare-fun e!23452 () Bool)

(assert (=> d!5697 e!23452))

(declare-fun res!22438 () Bool)

(assert (=> d!5697 (=> res!22438 e!23452)))

(declare-fun lt!13713 () Bool)

(assert (=> d!5697 (= res!22438 (not lt!13713))))

(declare-fun lt!13717 () Bool)

(assert (=> d!5697 (= lt!13713 lt!13717)))

(declare-datatypes ((Unit!837 0))(
  ( (Unit!838) )
))
(declare-fun lt!13714 () Unit!837)

(declare-fun e!23453 () Unit!837)

(assert (=> d!5697 (= lt!13714 e!23453)))

(declare-fun c!4263 () Bool)

(assert (=> d!5697 (= c!4263 lt!13717)))

(declare-fun containsKey!49 (List!991 (_ BitVec 64)) Bool)

(assert (=> d!5697 (= lt!13717 (containsKey!49 (toList!509 lt!13675) k0!388))))

(assert (=> d!5697 (= (contains!457 lt!13675 k0!388) lt!13713)))

(declare-fun b!37100 () Bool)

(declare-fun lt!13715 () Unit!837)

(assert (=> b!37100 (= e!23453 lt!13715)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!46 (List!991 (_ BitVec 64)) Unit!837)

(assert (=> b!37100 (= lt!13715 (lemmaContainsKeyImpliesGetValueByKeyDefined!46 (toList!509 lt!13675) k0!388))))

(declare-datatypes ((Option!91 0))(
  ( (Some!90 (v!1959 B!742)) (None!89) )
))
(declare-fun isDefined!47 (Option!91) Bool)

(declare-fun getValueByKey!85 (List!991 (_ BitVec 64)) Option!91)

(assert (=> b!37100 (isDefined!47 (getValueByKey!85 (toList!509 lt!13675) k0!388))))

(declare-fun b!37101 () Bool)

(declare-fun Unit!839 () Unit!837)

(assert (=> b!37101 (= e!23453 Unit!839)))

(declare-fun b!37102 () Bool)

(assert (=> b!37102 (= e!23452 (isDefined!47 (getValueByKey!85 (toList!509 lt!13675) k0!388)))))

(assert (= (and d!5697 c!4263) b!37100))

(assert (= (and d!5697 (not c!4263)) b!37101))

(assert (= (and d!5697 (not res!22438)) b!37102))

(declare-fun m!29935 () Bool)

(assert (=> d!5697 m!29935))

(declare-fun m!29937 () Bool)

(assert (=> b!37100 m!29937))

(declare-fun m!29939 () Bool)

(assert (=> b!37100 m!29939))

(assert (=> b!37100 m!29939))

(declare-fun m!29941 () Bool)

(assert (=> b!37100 m!29941))

(assert (=> b!37102 m!29939))

(assert (=> b!37102 m!29939))

(assert (=> b!37102 m!29941))

(assert (=> b!37049 d!5697))

(declare-fun d!5709 () Bool)

(declare-fun lt!13725 () Int)

(assert (=> d!5709 (>= lt!13725 0)))

(declare-fun e!23470 () Int)

(assert (=> d!5709 (= lt!13725 e!23470)))

(declare-fun c!4272 () Bool)

(get-info :version)

(assert (=> d!5709 (= c!4272 ((_ is Nil!988) (toList!509 lt!13675)))))

(assert (=> d!5709 (= (size!1300 (toList!509 lt!13675)) lt!13725)))

(declare-fun b!37125 () Bool)

(assert (=> b!37125 (= e!23470 0)))

(declare-fun b!37127 () Bool)

(assert (=> b!37127 (= e!23470 (+ 1 (size!1300 (t!3754 (toList!509 lt!13675)))))))

(assert (= (and d!5709 c!4272) b!37125))

(assert (= (and d!5709 (not c!4272)) b!37127))

(declare-fun m!29951 () Bool)

(assert (=> b!37127 m!29951))

(assert (=> b!37044 d!5709))

(declare-fun d!5717 () Bool)

(declare-fun lt!13726 () Int)

(assert (=> d!5717 (>= lt!13726 0)))

(declare-fun e!23473 () Int)

(assert (=> d!5717 (= lt!13726 e!23473)))

(declare-fun c!4273 () Bool)

(assert (=> d!5717 (= c!4273 ((_ is Nil!988) (toList!509 lm!252)))))

(assert (=> d!5717 (= (size!1300 (toList!509 lm!252)) lt!13726)))

(declare-fun b!37131 () Bool)

(assert (=> b!37131 (= e!23473 0)))

(declare-fun b!37132 () Bool)

(assert (=> b!37132 (= e!23473 (+ 1 (size!1300 (t!3754 (toList!509 lm!252)))))))

(assert (= (and d!5717 c!4273) b!37131))

(assert (= (and d!5717 (not c!4273)) b!37132))

(declare-fun m!29955 () Bool)

(assert (=> b!37132 m!29955))

(assert (=> b!37044 d!5717))

(declare-fun d!5721 () Bool)

(declare-fun e!23474 () Bool)

(assert (=> d!5721 e!23474))

(declare-fun res!22449 () Bool)

(assert (=> d!5721 (=> res!22449 e!23474)))

(declare-fun lt!13727 () Bool)

(assert (=> d!5721 (= res!22449 (not lt!13727))))

(declare-fun lt!13730 () Bool)

(assert (=> d!5721 (= lt!13727 lt!13730)))

(declare-fun lt!13728 () Unit!837)

(declare-fun e!23475 () Unit!837)

(assert (=> d!5721 (= lt!13728 e!23475)))

(declare-fun c!4274 () Bool)

(assert (=> d!5721 (= c!4274 lt!13730)))

(assert (=> d!5721 (= lt!13730 (containsKey!49 (toList!509 lm!252) k0!388))))

(assert (=> d!5721 (= (contains!457 lm!252 k0!388) lt!13727)))

(declare-fun b!37133 () Bool)

(declare-fun lt!13729 () Unit!837)

(assert (=> b!37133 (= e!23475 lt!13729)))

(assert (=> b!37133 (= lt!13729 (lemmaContainsKeyImpliesGetValueByKeyDefined!46 (toList!509 lm!252) k0!388))))

(assert (=> b!37133 (isDefined!47 (getValueByKey!85 (toList!509 lm!252) k0!388))))

(declare-fun b!37134 () Bool)

(declare-fun Unit!840 () Unit!837)

(assert (=> b!37134 (= e!23475 Unit!840)))

(declare-fun b!37135 () Bool)

(assert (=> b!37135 (= e!23474 (isDefined!47 (getValueByKey!85 (toList!509 lm!252) k0!388)))))

(assert (= (and d!5721 c!4274) b!37133))

(assert (= (and d!5721 (not c!4274)) b!37134))

(assert (= (and d!5721 (not res!22449)) b!37135))

(declare-fun m!29957 () Bool)

(assert (=> d!5721 m!29957))

(declare-fun m!29959 () Bool)

(assert (=> b!37133 m!29959))

(declare-fun m!29961 () Bool)

(assert (=> b!37133 m!29961))

(assert (=> b!37133 m!29961))

(declare-fun m!29963 () Bool)

(assert (=> b!37133 m!29963))

(assert (=> b!37135 m!29961))

(assert (=> b!37135 m!29961))

(assert (=> b!37135 m!29963))

(assert (=> b!37050 d!5721))

(declare-fun d!5723 () Bool)

(declare-fun res!22461 () Bool)

(declare-fun e!23488 () Bool)

(assert (=> d!5723 (=> res!22461 e!23488)))

(assert (=> d!5723 (= res!22461 ((_ is Nil!988) (toList!509 lt!13675)))))

(assert (=> d!5723 (= (forall!171 (toList!509 lt!13675) p!304) e!23488)))

(declare-fun b!37149 () Bool)

(declare-fun e!23489 () Bool)

(assert (=> b!37149 (= e!23488 e!23489)))

(declare-fun res!22462 () Bool)

(assert (=> b!37149 (=> (not res!22462) (not e!23489))))

(declare-fun dynLambda!174 (Int tuple2!1406) Bool)

(assert (=> b!37149 (= res!22462 (dynLambda!174 p!304 (h!1555 (toList!509 lt!13675))))))

(declare-fun b!37150 () Bool)

(assert (=> b!37150 (= e!23489 (forall!171 (t!3754 (toList!509 lt!13675)) p!304))))

(assert (= (and d!5723 (not res!22461)) b!37149))

(assert (= (and b!37149 res!22462) b!37150))

(declare-fun b_lambda!1845 () Bool)

(assert (=> (not b_lambda!1845) (not b!37149)))

(declare-fun t!3765 () Bool)

(declare-fun tb!759 () Bool)

(assert (=> (and start!4848 (= p!304 p!304) t!3765) tb!759))

(declare-fun result!1289 () Bool)

(assert (=> tb!759 (= result!1289 true)))

(assert (=> b!37149 t!3765))

(declare-fun b_and!2231 () Bool)

(assert (= b_and!2219 (and (=> t!3765 result!1289) b_and!2231)))

(declare-fun m!29993 () Bool)

(assert (=> b!37149 m!29993))

(declare-fun m!29995 () Bool)

(assert (=> b!37150 m!29995))

(assert (=> b!37046 d!5723))

(declare-fun d!5741 () Bool)

(declare-fun tail!103 (List!991) List!991)

(assert (=> d!5741 (= (tail!99 lm!252) (ListLongMap!988 (tail!103 (toList!509 lm!252))))))

(declare-fun bs!1432 () Bool)

(assert (= bs!1432 d!5741))

(declare-fun m!30007 () Bool)

(assert (=> bs!1432 m!30007))

(assert (=> b!37046 d!5741))

(declare-fun d!5743 () Bool)

(declare-fun res!22464 () Bool)

(declare-fun e!23498 () Bool)

(assert (=> d!5743 (=> res!22464 e!23498)))

(assert (=> d!5743 (= res!22464 ((_ is Nil!988) (toList!509 lm!252)))))

(assert (=> d!5743 (= (forall!171 (toList!509 lm!252) p!304) e!23498)))

(declare-fun b!37164 () Bool)

(declare-fun e!23499 () Bool)

(assert (=> b!37164 (= e!23498 e!23499)))

(declare-fun res!22465 () Bool)

(assert (=> b!37164 (=> (not res!22465) (not e!23499))))

(assert (=> b!37164 (= res!22465 (dynLambda!174 p!304 (h!1555 (toList!509 lm!252))))))

(declare-fun b!37165 () Bool)

(assert (=> b!37165 (= e!23499 (forall!171 (t!3754 (toList!509 lm!252)) p!304))))

(assert (= (and d!5743 (not res!22464)) b!37164))

(assert (= (and b!37164 res!22465) b!37165))

(declare-fun b_lambda!1855 () Bool)

(assert (=> (not b_lambda!1855) (not b!37164)))

(declare-fun t!3767 () Bool)

(declare-fun tb!761 () Bool)

(assert (=> (and start!4848 (= p!304 p!304) t!3767) tb!761))

(declare-fun result!1295 () Bool)

(assert (=> tb!761 (= result!1295 true)))

(assert (=> b!37164 t!3767))

(declare-fun b_and!2233 () Bool)

(assert (= b_and!2231 (and (=> t!3767 result!1295) b_and!2233)))

(declare-fun m!30009 () Bool)

(assert (=> b!37164 m!30009))

(declare-fun m!30011 () Bool)

(assert (=> b!37165 m!30011))

(assert (=> start!4848 d!5743))

(declare-fun d!5745 () Bool)

(declare-fun isStrictlySorted!179 (List!991) Bool)

(assert (=> d!5745 (= (inv!1631 lm!252) (isStrictlySorted!179 (toList!509 lm!252)))))

(declare-fun bs!1433 () Bool)

(assert (= bs!1433 d!5745))

(declare-fun m!30013 () Bool)

(assert (=> bs!1433 m!30013))

(assert (=> start!4848 d!5745))

(declare-fun d!5747 () Bool)

(declare-fun isEmpty!205 (List!991) Bool)

(assert (=> d!5747 (= (isEmpty!201 lm!252) (isEmpty!205 (toList!509 lm!252)))))

(declare-fun bs!1434 () Bool)

(assert (= bs!1434 d!5747))

(declare-fun m!30015 () Bool)

(assert (=> bs!1434 m!30015))

(assert (=> b!37047 d!5747))

(declare-fun b!37170 () Bool)

(declare-fun e!23502 () Bool)

(declare-fun tp_is_empty!1667 () Bool)

(declare-fun tp!5504 () Bool)

(assert (=> b!37170 (= e!23502 (and tp_is_empty!1667 tp!5504))))

(assert (=> b!37045 (= tp!5488 e!23502)))

(assert (= (and b!37045 ((_ is Cons!987) (toList!509 lm!252))) b!37170))

(declare-fun b_lambda!1857 () Bool)

(assert (= b_lambda!1855 (or (and start!4848 b_free!1335) b_lambda!1857)))

(declare-fun b_lambda!1859 () Bool)

(assert (= b_lambda!1845 (or (and start!4848 b_free!1335) b_lambda!1859)))

(check-sat (not d!5697) (not b!37150) (not d!5741) (not b!37133) tp_is_empty!1667 (not b!37100) (not b!37135) (not b!37132) (not b_lambda!1859) (not b!37102) (not b_lambda!1857) (not b!37127) b_and!2233 (not b!37170) (not d!5747) (not d!5745) (not b_next!1335) (not b!37165) (not d!5721))
(check-sat b_and!2233 (not b_next!1335))
(get-model)

(declare-fun d!5749 () Bool)

(declare-fun isEmpty!206 (Option!91) Bool)

(assert (=> d!5749 (= (isDefined!47 (getValueByKey!85 (toList!509 lt!13675) k0!388)) (not (isEmpty!206 (getValueByKey!85 (toList!509 lt!13675) k0!388))))))

(declare-fun bs!1435 () Bool)

(assert (= bs!1435 d!5749))

(assert (=> bs!1435 m!29939))

(declare-fun m!30017 () Bool)

(assert (=> bs!1435 m!30017))

(assert (=> b!37102 d!5749))

(declare-fun b!37180 () Bool)

(declare-fun e!23507 () Option!91)

(declare-fun e!23508 () Option!91)

(assert (=> b!37180 (= e!23507 e!23508)))

(declare-fun c!4282 () Bool)

(assert (=> b!37180 (= c!4282 (and ((_ is Cons!987) (toList!509 lt!13675)) (not (= (_1!713 (h!1555 (toList!509 lt!13675))) k0!388))))))

(declare-fun b!37182 () Bool)

(assert (=> b!37182 (= e!23508 None!89)))

(declare-fun b!37181 () Bool)

(assert (=> b!37181 (= e!23508 (getValueByKey!85 (t!3754 (toList!509 lt!13675)) k0!388))))

(declare-fun b!37179 () Bool)

(assert (=> b!37179 (= e!23507 (Some!90 (_2!713 (h!1555 (toList!509 lt!13675)))))))

(declare-fun d!5751 () Bool)

(declare-fun c!4281 () Bool)

(assert (=> d!5751 (= c!4281 (and ((_ is Cons!987) (toList!509 lt!13675)) (= (_1!713 (h!1555 (toList!509 lt!13675))) k0!388)))))

(assert (=> d!5751 (= (getValueByKey!85 (toList!509 lt!13675) k0!388) e!23507)))

(assert (= (and d!5751 c!4281) b!37179))

(assert (= (and d!5751 (not c!4281)) b!37180))

(assert (= (and b!37180 c!4282) b!37181))

(assert (= (and b!37180 (not c!4282)) b!37182))

(declare-fun m!30019 () Bool)

(assert (=> b!37181 m!30019))

(assert (=> b!37102 d!5751))

(declare-fun d!5753 () Bool)

(declare-fun res!22466 () Bool)

(declare-fun e!23509 () Bool)

(assert (=> d!5753 (=> res!22466 e!23509)))

(assert (=> d!5753 (= res!22466 ((_ is Nil!988) (t!3754 (toList!509 lt!13675))))))

(assert (=> d!5753 (= (forall!171 (t!3754 (toList!509 lt!13675)) p!304) e!23509)))

(declare-fun b!37183 () Bool)

(declare-fun e!23510 () Bool)

(assert (=> b!37183 (= e!23509 e!23510)))

(declare-fun res!22467 () Bool)

(assert (=> b!37183 (=> (not res!22467) (not e!23510))))

(assert (=> b!37183 (= res!22467 (dynLambda!174 p!304 (h!1555 (t!3754 (toList!509 lt!13675)))))))

(declare-fun b!37184 () Bool)

(assert (=> b!37184 (= e!23510 (forall!171 (t!3754 (t!3754 (toList!509 lt!13675))) p!304))))

(assert (= (and d!5753 (not res!22466)) b!37183))

(assert (= (and b!37183 res!22467) b!37184))

(declare-fun b_lambda!1861 () Bool)

(assert (=> (not b_lambda!1861) (not b!37183)))

(declare-fun t!3769 () Bool)

(declare-fun tb!763 () Bool)

(assert (=> (and start!4848 (= p!304 p!304) t!3769) tb!763))

(declare-fun result!1299 () Bool)

(assert (=> tb!763 (= result!1299 true)))

(assert (=> b!37183 t!3769))

(declare-fun b_and!2235 () Bool)

(assert (= b_and!2233 (and (=> t!3769 result!1299) b_and!2235)))

(declare-fun m!30021 () Bool)

(assert (=> b!37183 m!30021))

(declare-fun m!30023 () Bool)

(assert (=> b!37184 m!30023))

(assert (=> b!37150 d!5753))

(declare-fun d!5755 () Bool)

(assert (=> d!5755 (= (tail!103 (toList!509 lm!252)) (t!3754 (toList!509 lm!252)))))

(assert (=> d!5741 d!5755))

(declare-fun d!5759 () Bool)

(declare-fun res!22468 () Bool)

(declare-fun e!23511 () Bool)

(assert (=> d!5759 (=> res!22468 e!23511)))

(assert (=> d!5759 (= res!22468 ((_ is Nil!988) (t!3754 (toList!509 lm!252))))))

(assert (=> d!5759 (= (forall!171 (t!3754 (toList!509 lm!252)) p!304) e!23511)))

(declare-fun b!37185 () Bool)

(declare-fun e!23512 () Bool)

(assert (=> b!37185 (= e!23511 e!23512)))

(declare-fun res!22469 () Bool)

(assert (=> b!37185 (=> (not res!22469) (not e!23512))))

(assert (=> b!37185 (= res!22469 (dynLambda!174 p!304 (h!1555 (t!3754 (toList!509 lm!252)))))))

(declare-fun b!37186 () Bool)

(assert (=> b!37186 (= e!23512 (forall!171 (t!3754 (t!3754 (toList!509 lm!252))) p!304))))

(assert (= (and d!5759 (not res!22468)) b!37185))

(assert (= (and b!37185 res!22469) b!37186))

(declare-fun b_lambda!1863 () Bool)

(assert (=> (not b_lambda!1863) (not b!37185)))

(declare-fun t!3771 () Bool)

(declare-fun tb!765 () Bool)

(assert (=> (and start!4848 (= p!304 p!304) t!3771) tb!765))

(declare-fun result!1301 () Bool)

(assert (=> tb!765 (= result!1301 true)))

(assert (=> b!37185 t!3771))

(declare-fun b_and!2237 () Bool)

(assert (= b_and!2235 (and (=> t!3771 result!1301) b_and!2237)))

(declare-fun m!30025 () Bool)

(assert (=> b!37185 m!30025))

(declare-fun m!30027 () Bool)

(assert (=> b!37186 m!30027))

(assert (=> b!37165 d!5759))

(declare-fun d!5761 () Bool)

(assert (=> d!5761 (= (isDefined!47 (getValueByKey!85 (toList!509 lm!252) k0!388)) (not (isEmpty!206 (getValueByKey!85 (toList!509 lm!252) k0!388))))))

(declare-fun bs!1436 () Bool)

(assert (= bs!1436 d!5761))

(assert (=> bs!1436 m!29961))

(declare-fun m!30029 () Bool)

(assert (=> bs!1436 m!30029))

(assert (=> b!37135 d!5761))

(declare-fun b!37188 () Bool)

(declare-fun e!23513 () Option!91)

(declare-fun e!23514 () Option!91)

(assert (=> b!37188 (= e!23513 e!23514)))

(declare-fun c!4284 () Bool)

(assert (=> b!37188 (= c!4284 (and ((_ is Cons!987) (toList!509 lm!252)) (not (= (_1!713 (h!1555 (toList!509 lm!252))) k0!388))))))

(declare-fun b!37190 () Bool)

(assert (=> b!37190 (= e!23514 None!89)))

(declare-fun b!37189 () Bool)

(assert (=> b!37189 (= e!23514 (getValueByKey!85 (t!3754 (toList!509 lm!252)) k0!388))))

(declare-fun b!37187 () Bool)

(assert (=> b!37187 (= e!23513 (Some!90 (_2!713 (h!1555 (toList!509 lm!252)))))))

(declare-fun d!5763 () Bool)

(declare-fun c!4283 () Bool)

(assert (=> d!5763 (= c!4283 (and ((_ is Cons!987) (toList!509 lm!252)) (= (_1!713 (h!1555 (toList!509 lm!252))) k0!388)))))

(assert (=> d!5763 (= (getValueByKey!85 (toList!509 lm!252) k0!388) e!23513)))

(assert (= (and d!5763 c!4283) b!37187))

(assert (= (and d!5763 (not c!4283)) b!37188))

(assert (= (and b!37188 c!4284) b!37189))

(assert (= (and b!37188 (not c!4284)) b!37190))

(declare-fun m!30031 () Bool)

(assert (=> b!37189 m!30031))

(assert (=> b!37135 d!5763))

(declare-fun d!5765 () Bool)

(declare-fun res!22477 () Bool)

(declare-fun e!23522 () Bool)

(assert (=> d!5765 (=> res!22477 e!23522)))

(assert (=> d!5765 (= res!22477 (and ((_ is Cons!987) (toList!509 lm!252)) (= (_1!713 (h!1555 (toList!509 lm!252))) k0!388)))))

(assert (=> d!5765 (= (containsKey!49 (toList!509 lm!252) k0!388) e!23522)))

(declare-fun b!37198 () Bool)

(declare-fun e!23523 () Bool)

(assert (=> b!37198 (= e!23522 e!23523)))

(declare-fun res!22478 () Bool)

(assert (=> b!37198 (=> (not res!22478) (not e!23523))))

(assert (=> b!37198 (= res!22478 (and (or (not ((_ is Cons!987) (toList!509 lm!252))) (bvsle (_1!713 (h!1555 (toList!509 lm!252))) k0!388)) ((_ is Cons!987) (toList!509 lm!252)) (bvslt (_1!713 (h!1555 (toList!509 lm!252))) k0!388)))))

(declare-fun b!37199 () Bool)

(assert (=> b!37199 (= e!23523 (containsKey!49 (t!3754 (toList!509 lm!252)) k0!388))))

(assert (= (and d!5765 (not res!22477)) b!37198))

(assert (= (and b!37198 res!22478) b!37199))

(declare-fun m!30037 () Bool)

(assert (=> b!37199 m!30037))

(assert (=> d!5721 d!5765))

(declare-fun d!5771 () Bool)

(declare-fun res!22479 () Bool)

(declare-fun e!23524 () Bool)

(assert (=> d!5771 (=> res!22479 e!23524)))

(assert (=> d!5771 (= res!22479 (and ((_ is Cons!987) (toList!509 lt!13675)) (= (_1!713 (h!1555 (toList!509 lt!13675))) k0!388)))))

(assert (=> d!5771 (= (containsKey!49 (toList!509 lt!13675) k0!388) e!23524)))

(declare-fun b!37200 () Bool)

(declare-fun e!23525 () Bool)

(assert (=> b!37200 (= e!23524 e!23525)))

(declare-fun res!22480 () Bool)

(assert (=> b!37200 (=> (not res!22480) (not e!23525))))

(assert (=> b!37200 (= res!22480 (and (or (not ((_ is Cons!987) (toList!509 lt!13675))) (bvsle (_1!713 (h!1555 (toList!509 lt!13675))) k0!388)) ((_ is Cons!987) (toList!509 lt!13675)) (bvslt (_1!713 (h!1555 (toList!509 lt!13675))) k0!388)))))

(declare-fun b!37201 () Bool)

(assert (=> b!37201 (= e!23525 (containsKey!49 (t!3754 (toList!509 lt!13675)) k0!388))))

(assert (= (and d!5771 (not res!22479)) b!37200))

(assert (= (and b!37200 res!22480) b!37201))

(declare-fun m!30039 () Bool)

(assert (=> b!37201 m!30039))

(assert (=> d!5697 d!5771))

(declare-fun d!5773 () Bool)

(declare-fun res!22485 () Bool)

(declare-fun e!23534 () Bool)

(assert (=> d!5773 (=> res!22485 e!23534)))

(assert (=> d!5773 (= res!22485 (or ((_ is Nil!988) (toList!509 lm!252)) ((_ is Nil!988) (t!3754 (toList!509 lm!252)))))))

(assert (=> d!5773 (= (isStrictlySorted!179 (toList!509 lm!252)) e!23534)))

(declare-fun b!37214 () Bool)

(declare-fun e!23535 () Bool)

(assert (=> b!37214 (= e!23534 e!23535)))

(declare-fun res!22486 () Bool)

(assert (=> b!37214 (=> (not res!22486) (not e!23535))))

(assert (=> b!37214 (= res!22486 (bvslt (_1!713 (h!1555 (toList!509 lm!252))) (_1!713 (h!1555 (t!3754 (toList!509 lm!252))))))))

(declare-fun b!37215 () Bool)

(assert (=> b!37215 (= e!23535 (isStrictlySorted!179 (t!3754 (toList!509 lm!252))))))

(assert (= (and d!5773 (not res!22485)) b!37214))

(assert (= (and b!37214 res!22486) b!37215))

(declare-fun m!30041 () Bool)

(assert (=> b!37215 m!30041))

(assert (=> d!5745 d!5773))

(declare-fun d!5775 () Bool)

(assert (=> d!5775 (isDefined!47 (getValueByKey!85 (toList!509 lm!252) k0!388))))

(declare-fun lt!13744 () Unit!837)

(declare-fun choose!233 (List!991 (_ BitVec 64)) Unit!837)

(assert (=> d!5775 (= lt!13744 (choose!233 (toList!509 lm!252) k0!388))))

(declare-fun e!23544 () Bool)

(assert (=> d!5775 e!23544))

(declare-fun res!22493 () Bool)

(assert (=> d!5775 (=> (not res!22493) (not e!23544))))

(assert (=> d!5775 (= res!22493 (isStrictlySorted!179 (toList!509 lm!252)))))

(assert (=> d!5775 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!46 (toList!509 lm!252) k0!388) lt!13744)))

(declare-fun b!37226 () Bool)

(assert (=> b!37226 (= e!23544 (containsKey!49 (toList!509 lm!252) k0!388))))

(assert (= (and d!5775 res!22493) b!37226))

(assert (=> d!5775 m!29961))

(assert (=> d!5775 m!29961))

(assert (=> d!5775 m!29963))

(declare-fun m!30045 () Bool)

(assert (=> d!5775 m!30045))

(assert (=> d!5775 m!30013))

(assert (=> b!37226 m!29957))

(assert (=> b!37133 d!5775))

(assert (=> b!37133 d!5761))

(assert (=> b!37133 d!5763))

(declare-fun d!5779 () Bool)

(assert (=> d!5779 (= (isEmpty!205 (toList!509 lm!252)) ((_ is Nil!988) (toList!509 lm!252)))))

(assert (=> d!5747 d!5779))

(declare-fun d!5781 () Bool)

(declare-fun lt!13745 () Int)

(assert (=> d!5781 (>= lt!13745 0)))

(declare-fun e!23547 () Int)

(assert (=> d!5781 (= lt!13745 e!23547)))

(declare-fun c!4291 () Bool)

(assert (=> d!5781 (= c!4291 ((_ is Nil!988) (t!3754 (toList!509 lt!13675))))))

(assert (=> d!5781 (= (size!1300 (t!3754 (toList!509 lt!13675))) lt!13745)))

(declare-fun b!37229 () Bool)

(assert (=> b!37229 (= e!23547 0)))

(declare-fun b!37230 () Bool)

(assert (=> b!37230 (= e!23547 (+ 1 (size!1300 (t!3754 (t!3754 (toList!509 lt!13675))))))))

(assert (= (and d!5781 c!4291) b!37229))

(assert (= (and d!5781 (not c!4291)) b!37230))

(declare-fun m!30049 () Bool)

(assert (=> b!37230 m!30049))

(assert (=> b!37127 d!5781))

(declare-fun d!5785 () Bool)

(assert (=> d!5785 (isDefined!47 (getValueByKey!85 (toList!509 lt!13675) k0!388))))

(declare-fun lt!13746 () Unit!837)

(assert (=> d!5785 (= lt!13746 (choose!233 (toList!509 lt!13675) k0!388))))

(declare-fun e!23548 () Bool)

(assert (=> d!5785 e!23548))

(declare-fun res!22496 () Bool)

(assert (=> d!5785 (=> (not res!22496) (not e!23548))))

(assert (=> d!5785 (= res!22496 (isStrictlySorted!179 (toList!509 lt!13675)))))

(assert (=> d!5785 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!46 (toList!509 lt!13675) k0!388) lt!13746)))

(declare-fun b!37231 () Bool)

(assert (=> b!37231 (= e!23548 (containsKey!49 (toList!509 lt!13675) k0!388))))

(assert (= (and d!5785 res!22496) b!37231))

(assert (=> d!5785 m!29939))

(assert (=> d!5785 m!29939))

(assert (=> d!5785 m!29941))

(declare-fun m!30051 () Bool)

(assert (=> d!5785 m!30051))

(declare-fun m!30053 () Bool)

(assert (=> d!5785 m!30053))

(assert (=> b!37231 m!29935))

(assert (=> b!37100 d!5785))

(assert (=> b!37100 d!5749))

(assert (=> b!37100 d!5751))

(declare-fun d!5787 () Bool)

(declare-fun lt!13747 () Int)

(assert (=> d!5787 (>= lt!13747 0)))

(declare-fun e!23549 () Int)

(assert (=> d!5787 (= lt!13747 e!23549)))

(declare-fun c!4292 () Bool)

(assert (=> d!5787 (= c!4292 ((_ is Nil!988) (t!3754 (toList!509 lm!252))))))

(assert (=> d!5787 (= (size!1300 (t!3754 (toList!509 lm!252))) lt!13747)))

(declare-fun b!37232 () Bool)

(assert (=> b!37232 (= e!23549 0)))

(declare-fun b!37233 () Bool)

(assert (=> b!37233 (= e!23549 (+ 1 (size!1300 (t!3754 (t!3754 (toList!509 lm!252))))))))

(assert (= (and d!5787 c!4292) b!37232))

(assert (= (and d!5787 (not c!4292)) b!37233))

(declare-fun m!30055 () Bool)

(assert (=> b!37233 m!30055))

(assert (=> b!37132 d!5787))

(declare-fun b!37236 () Bool)

(declare-fun e!23552 () Bool)

(declare-fun tp!5505 () Bool)

(assert (=> b!37236 (= e!23552 (and tp_is_empty!1667 tp!5505))))

(assert (=> b!37170 (= tp!5504 e!23552)))

(assert (= (and b!37170 ((_ is Cons!987) (t!3754 (toList!509 lm!252)))) b!37236))

(declare-fun b_lambda!1865 () Bool)

(assert (= b_lambda!1863 (or (and start!4848 b_free!1335) b_lambda!1865)))

(declare-fun b_lambda!1867 () Bool)

(assert (= b_lambda!1861 (or (and start!4848 b_free!1335) b_lambda!1867)))

(check-sat (not b!37189) (not d!5785) (not b!37215) tp_is_empty!1667 (not d!5761) (not b_next!1335) (not d!5749) (not b_lambda!1859) (not b_lambda!1867) b_and!2237 (not b!37236) (not d!5775) (not b!37231) (not b!37199) (not b!37186) (not b!37230) (not b!37181) (not b!37226) (not b!37184) (not b!37233) (not b!37201) (not b_lambda!1857) (not b_lambda!1865))
(check-sat b_and!2237 (not b_next!1335))
