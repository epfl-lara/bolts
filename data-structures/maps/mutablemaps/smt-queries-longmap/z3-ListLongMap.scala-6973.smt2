; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88276 () Bool)

(assert start!88276)

(declare-fun b!1016809 () Bool)

(assert (=> b!1016809 true))

(assert (=> b!1016809 true))

(declare-fun b!1016804 () Bool)

(declare-fun res!682107 () Bool)

(declare-fun e!572077 () Bool)

(assert (=> b!1016804 (=> (not res!682107) (not e!572077))))

(declare-datatypes ((List!21651 0))(
  ( (Nil!21648) (Cons!21647 (h!22845 (_ BitVec 64)) (t!30660 List!21651)) )
))
(declare-fun keys!40 () List!21651)

(get-info :version)

(assert (=> b!1016804 (= res!682107 ((_ is Cons!21647) keys!40))))

(declare-fun b!1016805 () Bool)

(declare-fun res!682105 () Bool)

(assert (=> b!1016805 (=> (not res!682105) (not e!572077))))

(declare-datatypes ((B!1546 0))(
  ( (B!1547 (val!11857 Int)) )
))
(declare-datatypes ((tuple2!15350 0))(
  ( (tuple2!15351 (_1!7685 (_ BitVec 64)) (_2!7685 B!1546)) )
))
(declare-fun newHead!31 () tuple2!15350)

(declare-datatypes ((List!21652 0))(
  ( (Nil!21649) (Cons!21648 (h!22846 tuple2!15350) (t!30661 List!21652)) )
))
(declare-fun l!1114 () List!21652)

(declare-fun head!972 (List!21652) tuple2!15350)

(assert (=> b!1016805 (= res!682105 (bvslt (_1!7685 newHead!31) (_1!7685 (head!972 l!1114))))))

(declare-fun b!1016807 () Bool)

(declare-fun res!682106 () Bool)

(assert (=> b!1016807 (=> (not res!682106) (not e!572077))))

(declare-fun isEmpty!897 (List!21652) Bool)

(assert (=> b!1016807 (= res!682106 (not (isEmpty!897 l!1114)))))

(declare-fun b!1016808 () Bool)

(declare-fun e!572076 () Bool)

(declare-fun ListPrimitiveSize!125 (List!21651) Int)

(assert (=> b!1016808 (= e!572076 (< (ListPrimitiveSize!125 (t!30660 keys!40)) (ListPrimitiveSize!125 keys!40)))))

(declare-fun res!682103 () Bool)

(assert (=> b!1016809 (=> (not res!682103) (not e!572077))))

(declare-fun lambda!1050 () Int)

(declare-fun forall!290 (List!21651 Int) Bool)

(assert (=> b!1016809 (= res!682103 (forall!290 keys!40 lambda!1050))))

(declare-fun b!1016810 () Bool)

(assert (=> b!1016810 (= e!572077 (not e!572076))))

(declare-fun res!682104 () Bool)

(assert (=> b!1016810 (=> res!682104 e!572076)))

(assert (=> b!1016810 (= res!682104 (not (forall!290 (t!30660 keys!40) lambda!1050)))))

(declare-fun lt!449327 () List!21652)

(declare-datatypes ((Option!613 0))(
  ( (Some!612 (v!14461 B!1546)) (None!611) )
))
(declare-fun isDefined!409 (Option!613) Bool)

(declare-fun getValueByKey!562 (List!21652 (_ BitVec 64)) Option!613)

(assert (=> b!1016810 (isDefined!409 (getValueByKey!562 lt!449327 (h!22845 keys!40)))))

(declare-datatypes ((Unit!33224 0))(
  ( (Unit!33225) )
))
(declare-fun lt!449326 () Unit!33224)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!387 (List!21652 (_ BitVec 64)) Unit!33224)

(assert (=> b!1016810 (= lt!449326 (lemmaContainsKeyImpliesGetValueByKeyDefined!387 lt!449327 (h!22845 keys!40)))))

(assert (=> b!1016810 (= lt!449327 (Cons!21648 newHead!31 l!1114))))

(declare-fun containsKey!498 (List!21652 (_ BitVec 64)) Bool)

(assert (=> b!1016810 (containsKey!498 l!1114 (h!22845 keys!40))))

(declare-fun lt!449328 () Unit!33224)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!17 (List!21652 (_ BitVec 64)) Unit!33224)

(assert (=> b!1016810 (= lt!449328 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!17 l!1114 (h!22845 keys!40)))))

(declare-fun res!682102 () Bool)

(assert (=> start!88276 (=> (not res!682102) (not e!572077))))

(declare-fun isStrictlySorted!621 (List!21652) Bool)

(assert (=> start!88276 (= res!682102 (isStrictlySorted!621 l!1114))))

(assert (=> start!88276 e!572077))

(declare-fun e!572075 () Bool)

(assert (=> start!88276 e!572075))

(assert (=> start!88276 true))

(declare-fun tp_is_empty!23613 () Bool)

(assert (=> start!88276 tp_is_empty!23613))

(declare-fun b!1016806 () Bool)

(declare-fun tp!70814 () Bool)

(assert (=> b!1016806 (= e!572075 (and tp_is_empty!23613 tp!70814))))

(assert (= (and start!88276 res!682102) b!1016807))

(assert (= (and b!1016807 res!682106) b!1016809))

(assert (= (and b!1016809 res!682103) b!1016805))

(assert (= (and b!1016805 res!682105) b!1016804))

(assert (= (and b!1016804 res!682107) b!1016810))

(assert (= (and b!1016810 (not res!682104)) b!1016808))

(assert (= (and start!88276 ((_ is Cons!21648) l!1114)) b!1016806))

(declare-fun m!938489 () Bool)

(assert (=> start!88276 m!938489))

(declare-fun m!938491 () Bool)

(assert (=> b!1016810 m!938491))

(declare-fun m!938493 () Bool)

(assert (=> b!1016810 m!938493))

(declare-fun m!938495 () Bool)

(assert (=> b!1016810 m!938495))

(declare-fun m!938497 () Bool)

(assert (=> b!1016810 m!938497))

(declare-fun m!938499 () Bool)

(assert (=> b!1016810 m!938499))

(assert (=> b!1016810 m!938495))

(declare-fun m!938501 () Bool)

(assert (=> b!1016810 m!938501))

(declare-fun m!938503 () Bool)

(assert (=> b!1016807 m!938503))

(declare-fun m!938505 () Bool)

(assert (=> b!1016808 m!938505))

(declare-fun m!938507 () Bool)

(assert (=> b!1016808 m!938507))

(declare-fun m!938509 () Bool)

(assert (=> b!1016805 m!938509))

(declare-fun m!938511 () Bool)

(assert (=> b!1016809 m!938511))

(check-sat (not b!1016805) (not b!1016806) (not start!88276) (not b!1016807) tp_is_empty!23613 (not b!1016808) (not b!1016809) (not b!1016810))
(check-sat)
(get-model)

(declare-fun d!121359 () Bool)

(assert (=> d!121359 (= (isEmpty!897 l!1114) ((_ is Nil!21649) l!1114))))

(assert (=> b!1016807 d!121359))

(declare-fun d!121361 () Bool)

(declare-fun res!682130 () Bool)

(declare-fun e!572091 () Bool)

(assert (=> d!121361 (=> res!682130 e!572091)))

(assert (=> d!121361 (= res!682130 (or ((_ is Nil!21649) l!1114) ((_ is Nil!21649) (t!30661 l!1114))))))

(assert (=> d!121361 (= (isStrictlySorted!621 l!1114) e!572091)))

(declare-fun b!1016844 () Bool)

(declare-fun e!572092 () Bool)

(assert (=> b!1016844 (= e!572091 e!572092)))

(declare-fun res!682131 () Bool)

(assert (=> b!1016844 (=> (not res!682131) (not e!572092))))

(assert (=> b!1016844 (= res!682131 (bvslt (_1!7685 (h!22846 l!1114)) (_1!7685 (h!22846 (t!30661 l!1114)))))))

(declare-fun b!1016845 () Bool)

(assert (=> b!1016845 (= e!572092 (isStrictlySorted!621 (t!30661 l!1114)))))

(assert (= (and d!121361 (not res!682130)) b!1016844))

(assert (= (and b!1016844 res!682131) b!1016845))

(declare-fun m!938537 () Bool)

(assert (=> b!1016845 m!938537))

(assert (=> start!88276 d!121361))

(declare-fun d!121363 () Bool)

(assert (=> d!121363 (= (head!972 l!1114) (h!22846 l!1114))))

(assert (=> b!1016805 d!121363))

(declare-fun d!121365 () Bool)

(declare-fun res!682136 () Bool)

(declare-fun e!572097 () Bool)

(assert (=> d!121365 (=> res!682136 e!572097)))

(assert (=> d!121365 (= res!682136 (and ((_ is Cons!21648) l!1114) (= (_1!7685 (h!22846 l!1114)) (h!22845 keys!40))))))

(assert (=> d!121365 (= (containsKey!498 l!1114 (h!22845 keys!40)) e!572097)))

(declare-fun b!1016850 () Bool)

(declare-fun e!572098 () Bool)

(assert (=> b!1016850 (= e!572097 e!572098)))

(declare-fun res!682137 () Bool)

(assert (=> b!1016850 (=> (not res!682137) (not e!572098))))

(assert (=> b!1016850 (= res!682137 (and (or (not ((_ is Cons!21648) l!1114)) (bvsle (_1!7685 (h!22846 l!1114)) (h!22845 keys!40))) ((_ is Cons!21648) l!1114) (bvslt (_1!7685 (h!22846 l!1114)) (h!22845 keys!40))))))

(declare-fun b!1016851 () Bool)

(assert (=> b!1016851 (= e!572098 (containsKey!498 (t!30661 l!1114) (h!22845 keys!40)))))

(assert (= (and d!121365 (not res!682136)) b!1016850))

(assert (= (and b!1016850 res!682137) b!1016851))

(declare-fun m!938539 () Bool)

(assert (=> b!1016851 m!938539))

(assert (=> b!1016810 d!121365))

(declare-fun d!121367 () Bool)

(declare-fun isEmpty!899 (Option!613) Bool)

(assert (=> d!121367 (= (isDefined!409 (getValueByKey!562 lt!449327 (h!22845 keys!40))) (not (isEmpty!899 (getValueByKey!562 lt!449327 (h!22845 keys!40)))))))

(declare-fun bs!29536 () Bool)

(assert (= bs!29536 d!121367))

(assert (=> bs!29536 m!938495))

(declare-fun m!938541 () Bool)

(assert (=> bs!29536 m!938541))

(assert (=> b!1016810 d!121367))

(declare-fun d!121369 () Bool)

(assert (=> d!121369 (isDefined!409 (getValueByKey!562 lt!449327 (h!22845 keys!40)))))

(declare-fun lt!449340 () Unit!33224)

(declare-fun choose!1664 (List!21652 (_ BitVec 64)) Unit!33224)

(assert (=> d!121369 (= lt!449340 (choose!1664 lt!449327 (h!22845 keys!40)))))

(declare-fun e!572101 () Bool)

(assert (=> d!121369 e!572101))

(declare-fun res!682140 () Bool)

(assert (=> d!121369 (=> (not res!682140) (not e!572101))))

(assert (=> d!121369 (= res!682140 (isStrictlySorted!621 lt!449327))))

(assert (=> d!121369 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!387 lt!449327 (h!22845 keys!40)) lt!449340)))

(declare-fun b!1016854 () Bool)

(assert (=> b!1016854 (= e!572101 (containsKey!498 lt!449327 (h!22845 keys!40)))))

(assert (= (and d!121369 res!682140) b!1016854))

(assert (=> d!121369 m!938495))

(assert (=> d!121369 m!938495))

(assert (=> d!121369 m!938501))

(declare-fun m!938543 () Bool)

(assert (=> d!121369 m!938543))

(declare-fun m!938545 () Bool)

(assert (=> d!121369 m!938545))

(declare-fun m!938547 () Bool)

(assert (=> b!1016854 m!938547))

(assert (=> b!1016810 d!121369))

(declare-fun d!121373 () Bool)

(declare-fun c!102919 () Bool)

(assert (=> d!121373 (= c!102919 (and ((_ is Cons!21648) lt!449327) (= (_1!7685 (h!22846 lt!449327)) (h!22845 keys!40))))))

(declare-fun e!572114 () Option!613)

(assert (=> d!121373 (= (getValueByKey!562 lt!449327 (h!22845 keys!40)) e!572114)))

(declare-fun b!1016875 () Bool)

(assert (=> b!1016875 (= e!572114 (Some!612 (_2!7685 (h!22846 lt!449327))))))

(declare-fun b!1016878 () Bool)

(declare-fun e!572115 () Option!613)

(assert (=> b!1016878 (= e!572115 None!611)))

(declare-fun b!1016876 () Bool)

(assert (=> b!1016876 (= e!572114 e!572115)))

(declare-fun c!102920 () Bool)

(assert (=> b!1016876 (= c!102920 (and ((_ is Cons!21648) lt!449327) (not (= (_1!7685 (h!22846 lt!449327)) (h!22845 keys!40)))))))

(declare-fun b!1016877 () Bool)

(assert (=> b!1016877 (= e!572115 (getValueByKey!562 (t!30661 lt!449327) (h!22845 keys!40)))))

(assert (= (and d!121373 c!102919) b!1016875))

(assert (= (and d!121373 (not c!102919)) b!1016876))

(assert (= (and b!1016876 c!102920) b!1016877))

(assert (= (and b!1016876 (not c!102920)) b!1016878))

(declare-fun m!938551 () Bool)

(assert (=> b!1016877 m!938551))

(assert (=> b!1016810 d!121373))

(declare-fun d!121381 () Bool)

(declare-fun res!682157 () Bool)

(declare-fun e!572128 () Bool)

(assert (=> d!121381 (=> res!682157 e!572128)))

(assert (=> d!121381 (= res!682157 ((_ is Nil!21648) (t!30660 keys!40)))))

(assert (=> d!121381 (= (forall!290 (t!30660 keys!40) lambda!1050) e!572128)))

(declare-fun b!1016889 () Bool)

(declare-fun e!572129 () Bool)

(assert (=> b!1016889 (= e!572128 e!572129)))

(declare-fun res!682158 () Bool)

(assert (=> b!1016889 (=> (not res!682158) (not e!572129))))

(declare-fun dynLambda!1927 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016889 (= res!682158 (dynLambda!1927 lambda!1050 (h!22845 (t!30660 keys!40))))))

(declare-fun b!1016890 () Bool)

(assert (=> b!1016890 (= e!572129 (forall!290 (t!30660 (t!30660 keys!40)) lambda!1050))))

(assert (= (and d!121381 (not res!682157)) b!1016889))

(assert (= (and b!1016889 res!682158) b!1016890))

(declare-fun b_lambda!15587 () Bool)

(assert (=> (not b_lambda!15587) (not b!1016889)))

(declare-fun m!938555 () Bool)

(assert (=> b!1016889 m!938555))

(declare-fun m!938557 () Bool)

(assert (=> b!1016890 m!938557))

(assert (=> b!1016810 d!121381))

(declare-fun d!121385 () Bool)

(assert (=> d!121385 (containsKey!498 l!1114 (h!22845 keys!40))))

(declare-fun lt!449347 () Unit!33224)

(declare-fun choose!1665 (List!21652 (_ BitVec 64)) Unit!33224)

(assert (=> d!121385 (= lt!449347 (choose!1665 l!1114 (h!22845 keys!40)))))

(declare-fun e!572146 () Bool)

(assert (=> d!121385 e!572146))

(declare-fun res!682175 () Bool)

(assert (=> d!121385 (=> (not res!682175) (not e!572146))))

(assert (=> d!121385 (= res!682175 (isStrictlySorted!621 l!1114))))

(assert (=> d!121385 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!17 l!1114 (h!22845 keys!40)) lt!449347)))

(declare-fun b!1016907 () Bool)

(assert (=> b!1016907 (= e!572146 (isDefined!409 (getValueByKey!562 l!1114 (h!22845 keys!40))))))

(assert (= (and d!121385 res!682175) b!1016907))

(assert (=> d!121385 m!938491))

(declare-fun m!938563 () Bool)

(assert (=> d!121385 m!938563))

(assert (=> d!121385 m!938489))

(declare-fun m!938565 () Bool)

(assert (=> b!1016907 m!938565))

(assert (=> b!1016907 m!938565))

(declare-fun m!938567 () Bool)

(assert (=> b!1016907 m!938567))

(assert (=> b!1016810 d!121385))

(declare-fun d!121391 () Bool)

(declare-fun res!682178 () Bool)

(declare-fun e!572149 () Bool)

(assert (=> d!121391 (=> res!682178 e!572149)))

(assert (=> d!121391 (= res!682178 ((_ is Nil!21648) keys!40))))

(assert (=> d!121391 (= (forall!290 keys!40 lambda!1050) e!572149)))

(declare-fun b!1016912 () Bool)

(declare-fun e!572150 () Bool)

(assert (=> b!1016912 (= e!572149 e!572150)))

(declare-fun res!682179 () Bool)

(assert (=> b!1016912 (=> (not res!682179) (not e!572150))))

(assert (=> b!1016912 (= res!682179 (dynLambda!1927 lambda!1050 (h!22845 keys!40)))))

(declare-fun b!1016913 () Bool)

(assert (=> b!1016913 (= e!572150 (forall!290 (t!30660 keys!40) lambda!1050))))

(assert (= (and d!121391 (not res!682178)) b!1016912))

(assert (= (and b!1016912 res!682179) b!1016913))

(declare-fun b_lambda!15589 () Bool)

(assert (=> (not b_lambda!15589) (not b!1016912)))

(declare-fun m!938571 () Bool)

(assert (=> b!1016912 m!938571))

(assert (=> b!1016913 m!938499))

(assert (=> b!1016809 d!121391))

(declare-fun d!121395 () Bool)

(declare-fun lt!449352 () Int)

(assert (=> d!121395 (>= lt!449352 0)))

(declare-fun e!572159 () Int)

(assert (=> d!121395 (= lt!449352 e!572159)))

(declare-fun c!102923 () Bool)

(assert (=> d!121395 (= c!102923 ((_ is Nil!21648) (t!30660 keys!40)))))

(assert (=> d!121395 (= (ListPrimitiveSize!125 (t!30660 keys!40)) lt!449352)))

(declare-fun b!1016924 () Bool)

(assert (=> b!1016924 (= e!572159 0)))

(declare-fun b!1016925 () Bool)

(assert (=> b!1016925 (= e!572159 (+ 1 (ListPrimitiveSize!125 (t!30660 (t!30660 keys!40)))))))

(assert (= (and d!121395 c!102923) b!1016924))

(assert (= (and d!121395 (not c!102923)) b!1016925))

(declare-fun m!938579 () Bool)

(assert (=> b!1016925 m!938579))

(assert (=> b!1016808 d!121395))

(declare-fun d!121401 () Bool)

(declare-fun lt!449353 () Int)

(assert (=> d!121401 (>= lt!449353 0)))

(declare-fun e!572160 () Int)

(assert (=> d!121401 (= lt!449353 e!572160)))

(declare-fun c!102924 () Bool)

(assert (=> d!121401 (= c!102924 ((_ is Nil!21648) keys!40))))

(assert (=> d!121401 (= (ListPrimitiveSize!125 keys!40) lt!449353)))

(declare-fun b!1016926 () Bool)

(assert (=> b!1016926 (= e!572160 0)))

(declare-fun b!1016927 () Bool)

(assert (=> b!1016927 (= e!572160 (+ 1 (ListPrimitiveSize!125 (t!30660 keys!40))))))

(assert (= (and d!121401 c!102924) b!1016926))

(assert (= (and d!121401 (not c!102924)) b!1016927))

(assert (=> b!1016927 m!938505))

(assert (=> b!1016808 d!121401))

(declare-fun b!1016935 () Bool)

(declare-fun e!572166 () Bool)

(declare-fun tp!70820 () Bool)

(assert (=> b!1016935 (= e!572166 (and tp_is_empty!23613 tp!70820))))

(assert (=> b!1016806 (= tp!70814 e!572166)))

(assert (= (and b!1016806 ((_ is Cons!21648) (t!30661 l!1114))) b!1016935))

(declare-fun b_lambda!15593 () Bool)

(assert (= b_lambda!15587 (or b!1016809 b_lambda!15593)))

(declare-fun bs!29537 () Bool)

(declare-fun d!121405 () Bool)

(assert (= bs!29537 (and d!121405 b!1016809)))

(declare-fun value!178 () B!1546)

(assert (=> bs!29537 (= (dynLambda!1927 lambda!1050 (h!22845 (t!30660 keys!40))) (= (getValueByKey!562 l!1114 (h!22845 (t!30660 keys!40))) (Some!612 value!178)))))

(declare-fun m!938587 () Bool)

(assert (=> bs!29537 m!938587))

(assert (=> b!1016889 d!121405))

(declare-fun b_lambda!15595 () Bool)

(assert (= b_lambda!15589 (or b!1016809 b_lambda!15595)))

(declare-fun bs!29538 () Bool)

(declare-fun d!121407 () Bool)

(assert (= bs!29538 (and d!121407 b!1016809)))

(assert (=> bs!29538 (= (dynLambda!1927 lambda!1050 (h!22845 keys!40)) (= (getValueByKey!562 l!1114 (h!22845 keys!40)) (Some!612 value!178)))))

(assert (=> bs!29538 m!938565))

(assert (=> b!1016912 d!121407))

(check-sat (not b!1016890) (not bs!29538) (not b!1016845) (not b!1016927) (not bs!29537) (not b!1016925) (not b_lambda!15595) tp_is_empty!23613 (not d!121385) (not b!1016913) (not b!1016851) (not b!1016907) (not b_lambda!15593) (not d!121367) (not b!1016877) (not b!1016854) (not d!121369) (not b!1016935))
(check-sat)
