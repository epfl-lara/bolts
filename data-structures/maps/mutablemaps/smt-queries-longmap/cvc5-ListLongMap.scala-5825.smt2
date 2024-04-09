; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75158 () Bool)

(assert start!75158)

(declare-fun res!601426 () Bool)

(declare-fun e!492829 () Bool)

(assert (=> start!75158 (=> (not res!601426) (not e!492829))))

(declare-datatypes ((B!1268 0))(
  ( (B!1269 (val!8940 Int)) )
))
(declare-datatypes ((tuple2!11900 0))(
  ( (tuple2!11901 (_1!5960 (_ BitVec 64)) (_2!5960 B!1268)) )
))
(declare-datatypes ((List!17740 0))(
  ( (Nil!17737) (Cons!17736 (h!18867 tuple2!11900) (t!25025 List!17740)) )
))
(declare-fun l!906 () List!17740)

(declare-fun isStrictlySorted!473 (List!17740) Bool)

(assert (=> start!75158 (= res!601426 (isStrictlySorted!473 l!906))))

(assert (=> start!75158 e!492829))

(declare-fun e!492830 () Bool)

(assert (=> start!75158 e!492830))

(assert (=> start!75158 true))

(declare-fun tp_is_empty!17779 () Bool)

(assert (=> start!75158 tp_is_empty!17779))

(declare-fun b!885455 () Bool)

(declare-fun res!601427 () Bool)

(assert (=> b!885455 (=> (not res!601427) (not e!492829))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885455 (= res!601427 (or (not (is-Cons!17736 l!906)) (bvsge (_1!5960 (h!18867 l!906)) key1!49)))))

(declare-fun b!885456 () Bool)

(declare-fun v1!38 () B!1268)

(declare-fun insertStrictlySorted!294 (List!17740 (_ BitVec 64) B!1268) List!17740)

(assert (=> b!885456 (= e!492829 (not (isStrictlySorted!473 (insertStrictlySorted!294 l!906 key1!49 v1!38))))))

(declare-fun b!885457 () Bool)

(declare-fun tp!54285 () Bool)

(assert (=> b!885457 (= e!492830 (and tp_is_empty!17779 tp!54285))))

(assert (= (and start!75158 res!601426) b!885455))

(assert (= (and b!885455 res!601427) b!885456))

(assert (= (and start!75158 (is-Cons!17736 l!906)) b!885457))

(declare-fun m!825737 () Bool)

(assert (=> start!75158 m!825737))

(declare-fun m!825739 () Bool)

(assert (=> b!885456 m!825739))

(assert (=> b!885456 m!825739))

(declare-fun m!825741 () Bool)

(assert (=> b!885456 m!825741))

(push 1)

(assert (not start!75158))

(assert (not b!885456))

(assert (not b!885457))

(assert tp_is_empty!17779)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109345 () Bool)

(declare-fun res!601456 () Bool)

(declare-fun e!492859 () Bool)

(assert (=> d!109345 (=> res!601456 e!492859)))

(assert (=> d!109345 (= res!601456 (or (is-Nil!17737 l!906) (is-Nil!17737 (t!25025 l!906))))))

(assert (=> d!109345 (= (isStrictlySorted!473 l!906) e!492859)))

(declare-fun b!885492 () Bool)

(declare-fun e!492860 () Bool)

(assert (=> b!885492 (= e!492859 e!492860)))

(declare-fun res!601457 () Bool)

(assert (=> b!885492 (=> (not res!601457) (not e!492860))))

(assert (=> b!885492 (= res!601457 (bvslt (_1!5960 (h!18867 l!906)) (_1!5960 (h!18867 (t!25025 l!906)))))))

(declare-fun b!885493 () Bool)

(assert (=> b!885493 (= e!492860 (isStrictlySorted!473 (t!25025 l!906)))))

(assert (= (and d!109345 (not res!601456)) b!885492))

(assert (= (and b!885492 res!601457) b!885493))

(declare-fun m!825759 () Bool)

(assert (=> b!885493 m!825759))

(assert (=> start!75158 d!109345))

(declare-fun d!109355 () Bool)

(declare-fun res!601460 () Bool)

(declare-fun e!492863 () Bool)

(assert (=> d!109355 (=> res!601460 e!492863)))

(assert (=> d!109355 (= res!601460 (or (is-Nil!17737 (insertStrictlySorted!294 l!906 key1!49 v1!38)) (is-Nil!17737 (t!25025 (insertStrictlySorted!294 l!906 key1!49 v1!38)))))))

(assert (=> d!109355 (= (isStrictlySorted!473 (insertStrictlySorted!294 l!906 key1!49 v1!38)) e!492863)))

(declare-fun b!885496 () Bool)

(declare-fun e!492865 () Bool)

(assert (=> b!885496 (= e!492863 e!492865)))

(declare-fun res!601462 () Bool)

(assert (=> b!885496 (=> (not res!601462) (not e!492865))))

(assert (=> b!885496 (= res!601462 (bvslt (_1!5960 (h!18867 (insertStrictlySorted!294 l!906 key1!49 v1!38))) (_1!5960 (h!18867 (t!25025 (insertStrictlySorted!294 l!906 key1!49 v1!38))))))))

(declare-fun b!885498 () Bool)

(assert (=> b!885498 (= e!492865 (isStrictlySorted!473 (t!25025 (insertStrictlySorted!294 l!906 key1!49 v1!38))))))

(assert (= (and d!109355 (not res!601460)) b!885496))

(assert (= (and b!885496 res!601462) b!885498))

(declare-fun m!825765 () Bool)

(assert (=> b!885498 m!825765))

(assert (=> b!885456 d!109355))

(declare-fun c!93270 () Bool)

(declare-fun call!39145 () List!17740)

(declare-fun bm!39140 () Bool)

(declare-fun e!492908 () List!17740)

(declare-fun $colon$colon!544 (List!17740 tuple2!11900) List!17740)

(assert (=> bm!39140 (= call!39145 ($colon$colon!544 e!492908 (ite c!93270 (h!18867 l!906) (tuple2!11901 key1!49 v1!38))))))

(declare-fun c!93265 () Bool)

(assert (=> bm!39140 (= c!93265 c!93270)))

(declare-fun b!885570 () Bool)

(declare-fun c!93264 () Bool)

(assert (=> b!885570 (= c!93264 (and (is-Cons!17736 l!906) (bvsgt (_1!5960 (h!18867 l!906)) key1!49)))))

(declare-fun e!492903 () List!17740)

(declare-fun e!492902 () List!17740)

(assert (=> b!885570 (= e!492903 e!492902)))

(declare-fun b!885571 () Bool)

(declare-fun e!492905 () List!17740)

(assert (=> b!885571 (= e!492905 call!39145)))

(declare-fun b!885572 () Bool)

(assert (=> b!885572 (= e!492908 (insertStrictlySorted!294 (t!25025 l!906) key1!49 v1!38))))

(declare-fun b!885573 () Bool)

(assert (=> b!885573 (= e!492905 e!492903)))

(declare-fun c!93269 () Bool)

(assert (=> b!885573 (= c!93269 (and (is-Cons!17736 l!906) (= (_1!5960 (h!18867 l!906)) key1!49)))))

(declare-fun d!109357 () Bool)

(declare-fun e!492904 () Bool)

(assert (=> d!109357 e!492904))

(declare-fun res!601479 () Bool)

(assert (=> d!109357 (=> (not res!601479) (not e!492904))))

(declare-fun lt!400988 () List!17740)

(assert (=> d!109357 (= res!601479 (isStrictlySorted!473 lt!400988))))

(assert (=> d!109357 (= lt!400988 e!492905)))

(assert (=> d!109357 (= c!93270 (and (is-Cons!17736 l!906) (bvslt (_1!5960 (h!18867 l!906)) key1!49)))))

(assert (=> d!109357 (isStrictlySorted!473 l!906)))

(assert (=> d!109357 (= (insertStrictlySorted!294 l!906 key1!49 v1!38) lt!400988)))

(declare-fun b!885574 () Bool)

(assert (=> b!885574 (= e!492908 (ite c!93269 (t!25025 l!906) (ite c!93264 (Cons!17736 (h!18867 l!906) (t!25025 l!906)) Nil!17737)))))

(declare-fun b!885575 () Bool)

(declare-fun contains!4289 (List!17740 tuple2!11900) Bool)

(assert (=> b!885575 (= e!492904 (contains!4289 lt!400988 (tuple2!11901 key1!49 v1!38)))))

(declare-fun bm!39141 () Bool)

(declare-fun call!39143 () List!17740)

(declare-fun call!39146 () List!17740)

(assert (=> bm!39141 (= call!39143 call!39146)))

(declare-fun b!885578 () Bool)

(assert (=> b!885578 (= e!492902 call!39143)))

(declare-fun bm!39142 () Bool)

(assert (=> bm!39142 (= call!39146 call!39145)))

(declare-fun b!885581 () Bool)

(declare-fun res!601478 () Bool)

(assert (=> b!885581 (=> (not res!601478) (not e!492904))))

(declare-fun containsKey!410 (List!17740 (_ BitVec 64)) Bool)

(assert (=> b!885581 (= res!601478 (containsKey!410 lt!400988 key1!49))))

(declare-fun b!885583 () Bool)

(assert (=> b!885583 (= e!492902 call!39143)))

(declare-fun b!885585 () Bool)

(assert (=> b!885585 (= e!492903 call!39146)))

(assert (= (and d!109357 c!93270) b!885571))

(assert (= (and d!109357 (not c!93270)) b!885573))

(assert (= (and b!885573 c!93269) b!885585))

(assert (= (and b!885573 (not c!93269)) b!885570))

(assert (= (and b!885570 c!93264) b!885578))

(assert (= (and b!885570 (not c!93264)) b!885583))

(assert (= (or b!885578 b!885583) bm!39141))

(assert (= (or b!885585 bm!39141) bm!39142))

(assert (= (or b!885571 bm!39142) bm!39140))

(assert (= (and bm!39140 c!93265) b!885572))

(assert (= (and bm!39140 (not c!93265)) b!885574))

(assert (= (and d!109357 res!601479) b!885581))

(assert (= (and b!885581 res!601478) b!885575))

(declare-fun m!825777 () Bool)

(assert (=> b!885575 m!825777))

(declare-fun m!825781 () Bool)

(assert (=> bm!39140 m!825781))

(declare-fun m!825785 () Bool)

(assert (=> b!885581 m!825785))

(declare-fun m!825789 () Bool)

(assert (=> b!885572 m!825789))

(declare-fun m!825793 () Bool)

(assert (=> d!109357 m!825793))

(assert (=> d!109357 m!825737))

(assert (=> b!885456 d!109357))

(declare-fun b!885603 () Bool)

(declare-fun e!492919 () Bool)

(declare-fun tp!54299 () Bool)

(assert (=> b!885603 (= e!492919 (and tp_is_empty!17779 tp!54299))))

(assert (=> b!885457 (= tp!54285 e!492919)))

(assert (= (and b!885457 (is-Cons!17736 (t!25025 l!906))) b!885603))

(push 1)

