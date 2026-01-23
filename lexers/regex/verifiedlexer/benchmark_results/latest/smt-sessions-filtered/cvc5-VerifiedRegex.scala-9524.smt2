; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502688 () Bool)

(assert start!502688)

(declare-fun b!4835417 () Bool)

(declare-fun e!3021856 () Bool)

(declare-fun tp!1363333 () Bool)

(assert (=> b!4835417 (= e!3021856 tp!1363333)))

(declare-fun b!4835414 () Bool)

(declare-fun res!2060148 () Bool)

(declare-fun e!3021858 () Bool)

(assert (=> b!4835414 (=> (not res!2060148) (not e!3021858))))

(declare-datatypes ((K!16907 0))(
  ( (K!16908 (val!21831 Int)) )
))
(declare-datatypes ((V!17153 0))(
  ( (V!17154 (val!21832 Int)) )
))
(declare-datatypes ((tuple2!58534 0))(
  ( (tuple2!58535 (_1!32561 K!16907) (_2!32561 V!17153)) )
))
(declare-datatypes ((List!55300 0))(
  ( (Nil!55176) (Cons!55176 (h!61610 tuple2!58534) (t!362796 List!55300)) )
))
(declare-datatypes ((tuple2!58536 0))(
  ( (tuple2!58537 (_1!32562 (_ BitVec 64)) (_2!32562 List!55300)) )
))
(declare-datatypes ((List!55301 0))(
  ( (Nil!55177) (Cons!55177 (h!61611 tuple2!58536) (t!362797 List!55301)) )
))
(declare-datatypes ((ListLongMap!6133 0))(
  ( (ListLongMap!6134 (toList!7621 List!55301)) )
))
(declare-fun lm!1282 () ListLongMap!6133)

(declare-datatypes ((Hashable!7335 0))(
  ( (HashableExt!7334 (__x!33610 Int)) )
))
(declare-fun hashF!961 () Hashable!7335)

(declare-fun allKeysSameHashInMap!2651 (ListLongMap!6133 Hashable!7335) Bool)

(assert (=> b!4835414 (= res!2060148 (allKeysSameHashInMap!2651 lm!1282 hashF!961))))

(declare-fun b!4835415 () Bool)

(declare-fun e!3021857 () Bool)

(assert (=> b!4835415 (= e!3021858 e!3021857)))

(declare-fun res!2060147 () Bool)

(assert (=> b!4835415 (=> (not res!2060147) (not e!3021857))))

(declare-fun lt!1981366 () (_ BitVec 64))

(declare-fun contains!19000 (ListLongMap!6133 (_ BitVec 64)) Bool)

(assert (=> b!4835415 (= res!2060147 (contains!19000 lm!1282 lt!1981366))))

(declare-fun key!2791 () K!16907)

(declare-fun hash!5521 (Hashable!7335 K!16907) (_ BitVec 64))

(assert (=> b!4835415 (= lt!1981366 (hash!5521 hashF!961 key!2791))))

(declare-fun b!4835416 () Bool)

(declare-datatypes ((Option!13569 0))(
  ( (None!13568) (Some!13568 (v!49271 List!55300)) )
))
(declare-fun getValueByKey!2684 (List!55301 (_ BitVec 64)) Option!13569)

(declare-fun apply!13398 (ListLongMap!6133 (_ BitVec 64)) List!55300)

(assert (=> b!4835416 (= e!3021857 (not (= (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366) (Some!13568 (apply!13398 lm!1282 lt!1981366)))))))

(declare-fun res!2060146 () Bool)

(assert (=> start!502688 (=> (not res!2060146) (not e!3021858))))

(declare-fun lambda!239305 () Int)

(declare-fun forall!12734 (List!55301 Int) Bool)

(assert (=> start!502688 (= res!2060146 (forall!12734 (toList!7621 lm!1282) lambda!239305))))

(assert (=> start!502688 e!3021858))

(declare-fun inv!70808 (ListLongMap!6133) Bool)

(assert (=> start!502688 (and (inv!70808 lm!1282) e!3021856)))

(assert (=> start!502688 true))

(declare-fun tp_is_empty!34765 () Bool)

(assert (=> start!502688 tp_is_empty!34765))

(assert (= (and start!502688 res!2060146) b!4835414))

(assert (= (and b!4835414 res!2060148) b!4835415))

(assert (= (and b!4835415 res!2060147) b!4835416))

(assert (= start!502688 b!4835417))

(declare-fun m!5830652 () Bool)

(assert (=> b!4835414 m!5830652))

(declare-fun m!5830654 () Bool)

(assert (=> b!4835415 m!5830654))

(declare-fun m!5830656 () Bool)

(assert (=> b!4835415 m!5830656))

(declare-fun m!5830658 () Bool)

(assert (=> b!4835416 m!5830658))

(declare-fun m!5830660 () Bool)

(assert (=> b!4835416 m!5830660))

(declare-fun m!5830662 () Bool)

(assert (=> start!502688 m!5830662))

(declare-fun m!5830664 () Bool)

(assert (=> start!502688 m!5830664))

(push 1)

(assert (not b!4835416))

(assert (not b!4835414))

(assert (not b!4835415))

(assert (not b!4835417))

(assert tp_is_empty!34765)

(assert (not start!502688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550197 () Bool)

(declare-fun res!2060162 () Bool)

(declare-fun e!3021872 () Bool)

(assert (=> d!1550197 (=> res!2060162 e!3021872)))

(assert (=> d!1550197 (= res!2060162 (is-Nil!55177 (toList!7621 lm!1282)))))

(assert (=> d!1550197 (= (forall!12734 (toList!7621 lm!1282) lambda!239305) e!3021872)))

(declare-fun b!4835434 () Bool)

(declare-fun e!3021873 () Bool)

(assert (=> b!4835434 (= e!3021872 e!3021873)))

(declare-fun res!2060163 () Bool)

(assert (=> b!4835434 (=> (not res!2060163) (not e!3021873))))

(declare-fun dynLambda!22258 (Int tuple2!58536) Bool)

(assert (=> b!4835434 (= res!2060163 (dynLambda!22258 lambda!239305 (h!61611 (toList!7621 lm!1282))))))

(declare-fun b!4835435 () Bool)

(assert (=> b!4835435 (= e!3021873 (forall!12734 (t!362797 (toList!7621 lm!1282)) lambda!239305))))

(assert (= (and d!1550197 (not res!2060162)) b!4835434))

(assert (= (and b!4835434 res!2060163) b!4835435))

(declare-fun b_lambda!190995 () Bool)

(assert (=> (not b_lambda!190995) (not b!4835434)))

(declare-fun m!5830680 () Bool)

(assert (=> b!4835434 m!5830680))

(declare-fun m!5830682 () Bool)

(assert (=> b!4835435 m!5830682))

(assert (=> start!502688 d!1550197))

(declare-fun d!1550199 () Bool)

(declare-fun isStrictlySorted!1010 (List!55301) Bool)

(assert (=> d!1550199 (= (inv!70808 lm!1282) (isStrictlySorted!1010 (toList!7621 lm!1282)))))

(declare-fun bs!1167416 () Bool)

(assert (= bs!1167416 d!1550199))

(declare-fun m!5830684 () Bool)

(assert (=> bs!1167416 m!5830684))

(assert (=> start!502688 d!1550199))

(declare-fun bs!1167417 () Bool)

(declare-fun d!1550201 () Bool)

(assert (= bs!1167417 (and d!1550201 start!502688)))

(declare-fun lambda!239311 () Int)

(assert (=> bs!1167417 (not (= lambda!239311 lambda!239305))))

(assert (=> d!1550201 true))

(assert (=> d!1550201 (= (allKeysSameHashInMap!2651 lm!1282 hashF!961) (forall!12734 (toList!7621 lm!1282) lambda!239311))))

(declare-fun bs!1167418 () Bool)

(assert (= bs!1167418 d!1550201))

(declare-fun m!5830686 () Bool)

(assert (=> bs!1167418 m!5830686))

(assert (=> b!4835414 d!1550201))

(declare-fun d!1550203 () Bool)

(declare-fun e!3021879 () Bool)

(assert (=> d!1550203 e!3021879))

(declare-fun res!2060166 () Bool)

(assert (=> d!1550203 (=> res!2060166 e!3021879)))

(declare-fun lt!1981380 () Bool)

(assert (=> d!1550203 (= res!2060166 (not lt!1981380))))

(declare-fun lt!1981379 () Bool)

(assert (=> d!1550203 (= lt!1981380 lt!1981379)))

(declare-datatypes ((Unit!144558 0))(
  ( (Unit!144559) )
))
(declare-fun lt!1981381 () Unit!144558)

(declare-fun e!3021878 () Unit!144558)

(assert (=> d!1550203 (= lt!1981381 e!3021878)))

(declare-fun c!823826 () Bool)

(assert (=> d!1550203 (= c!823826 lt!1981379)))

(declare-fun containsKey!4495 (List!55301 (_ BitVec 64)) Bool)

(assert (=> d!1550203 (= lt!1981379 (containsKey!4495 (toList!7621 lm!1282) lt!1981366))))

(assert (=> d!1550203 (= (contains!19000 lm!1282 lt!1981366) lt!1981380)))

(declare-fun b!4835444 () Bool)

(declare-fun lt!1981378 () Unit!144558)

(assert (=> b!4835444 (= e!3021878 lt!1981378)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2464 (List!55301 (_ BitVec 64)) Unit!144558)

(assert (=> b!4835444 (= lt!1981378 (lemmaContainsKeyImpliesGetValueByKeyDefined!2464 (toList!7621 lm!1282) lt!1981366))))

(declare-fun isDefined!10679 (Option!13569) Bool)

(assert (=> b!4835444 (isDefined!10679 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366))))

(declare-fun b!4835445 () Bool)

(declare-fun Unit!144560 () Unit!144558)

(assert (=> b!4835445 (= e!3021878 Unit!144560)))

(declare-fun b!4835446 () Bool)

(assert (=> b!4835446 (= e!3021879 (isDefined!10679 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)))))

(assert (= (and d!1550203 c!823826) b!4835444))

(assert (= (and d!1550203 (not c!823826)) b!4835445))

(assert (= (and d!1550203 (not res!2060166)) b!4835446))

(declare-fun m!5830688 () Bool)

(assert (=> d!1550203 m!5830688))

(declare-fun m!5830690 () Bool)

(assert (=> b!4835444 m!5830690))

(assert (=> b!4835444 m!5830658))

(assert (=> b!4835444 m!5830658))

(declare-fun m!5830692 () Bool)

(assert (=> b!4835444 m!5830692))

(assert (=> b!4835446 m!5830658))

(assert (=> b!4835446 m!5830658))

(assert (=> b!4835446 m!5830692))

(assert (=> b!4835415 d!1550203))

(declare-fun d!1550207 () Bool)

(declare-fun hash!5523 (Hashable!7335 K!16907) (_ BitVec 64))

(assert (=> d!1550207 (= (hash!5521 hashF!961 key!2791) (hash!5523 hashF!961 key!2791))))

(declare-fun bs!1167419 () Bool)

(assert (= bs!1167419 d!1550207))

(declare-fun m!5830694 () Bool)

(assert (=> bs!1167419 m!5830694))

(assert (=> b!4835415 d!1550207))

(declare-fun b!4835463 () Bool)

(declare-fun e!3021888 () Option!13569)

(assert (=> b!4835463 (= e!3021888 (Some!13568 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))

(declare-fun b!4835466 () Bool)

(declare-fun e!3021889 () Option!13569)

(assert (=> b!4835466 (= e!3021889 None!13568)))

(declare-fun b!4835465 () Bool)

(assert (=> b!4835465 (= e!3021889 (getValueByKey!2684 (t!362797 (toList!7621 lm!1282)) lt!1981366))))

(declare-fun d!1550209 () Bool)

(declare-fun c!823835 () Bool)

(assert (=> d!1550209 (= c!823835 (and (is-Cons!55177 (toList!7621 lm!1282)) (= (_1!32562 (h!61611 (toList!7621 lm!1282))) lt!1981366)))))

(assert (=> d!1550209 (= (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366) e!3021888)))

(declare-fun b!4835464 () Bool)

(assert (=> b!4835464 (= e!3021888 e!3021889)))

(declare-fun c!823836 () Bool)

(assert (=> b!4835464 (= c!823836 (and (is-Cons!55177 (toList!7621 lm!1282)) (not (= (_1!32562 (h!61611 (toList!7621 lm!1282))) lt!1981366))))))

(assert (= (and d!1550209 c!823835) b!4835463))

(assert (= (and d!1550209 (not c!823835)) b!4835464))

(assert (= (and b!4835464 c!823836) b!4835465))

(assert (= (and b!4835464 (not c!823836)) b!4835466))

(declare-fun m!5830696 () Bool)

(assert (=> b!4835465 m!5830696))

(assert (=> b!4835416 d!1550209))

(declare-fun d!1550211 () Bool)

(declare-fun get!18892 (Option!13569) List!55300)

(assert (=> d!1550211 (= (apply!13398 lm!1282 lt!1981366) (get!18892 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)))))

(declare-fun bs!1167420 () Bool)

(assert (= bs!1167420 d!1550211))

(assert (=> bs!1167420 m!5830658))

(assert (=> bs!1167420 m!5830658))

(declare-fun m!5830698 () Bool)

(assert (=> bs!1167420 m!5830698))

(assert (=> b!4835416 d!1550211))

(declare-fun b!4835475 () Bool)

(declare-fun e!3021894 () Bool)

(declare-fun tp!1363341 () Bool)

(declare-fun tp!1363342 () Bool)

(assert (=> b!4835475 (= e!3021894 (and tp!1363341 tp!1363342))))

(assert (=> b!4835417 (= tp!1363333 e!3021894)))

(assert (= (and b!4835417 (is-Cons!55177 (toList!7621 lm!1282))) b!4835475))

(declare-fun b_lambda!190997 () Bool)

(assert (= b_lambda!190995 (or start!502688 b_lambda!190997)))

(declare-fun bs!1167421 () Bool)

(declare-fun d!1550215 () Bool)

(assert (= bs!1167421 (and d!1550215 start!502688)))

(declare-fun noDuplicateKeys!2511 (List!55300) Bool)

(assert (=> bs!1167421 (= (dynLambda!22258 lambda!239305 (h!61611 (toList!7621 lm!1282))) (noDuplicateKeys!2511 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))

(declare-fun m!5830702 () Bool)

(assert (=> bs!1167421 m!5830702))

(assert (=> b!4835434 d!1550215))

(push 1)

(assert (not bs!1167421))

(assert (not d!1550207))

(assert (not b!4835475))

(assert (not d!1550201))

(assert (not b_lambda!190997))

(assert (not d!1550199))

(assert (not b!4835435))

(assert (not d!1550203))

(assert (not b!4835446))

(assert (not b!4835465))

(assert (not b!4835444))

(assert tp_is_empty!34765)

(assert (not d!1550211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550225 () Bool)

(declare-fun res!2060175 () Bool)

(declare-fun e!3021905 () Bool)

(assert (=> d!1550225 (=> res!2060175 e!3021905)))

(assert (=> d!1550225 (= res!2060175 (is-Nil!55177 (toList!7621 lm!1282)))))

(assert (=> d!1550225 (= (forall!12734 (toList!7621 lm!1282) lambda!239311) e!3021905)))

(declare-fun b!4835490 () Bool)

(declare-fun e!3021906 () Bool)

(assert (=> b!4835490 (= e!3021905 e!3021906)))

(declare-fun res!2060176 () Bool)

(assert (=> b!4835490 (=> (not res!2060176) (not e!3021906))))

(assert (=> b!4835490 (= res!2060176 (dynLambda!22258 lambda!239311 (h!61611 (toList!7621 lm!1282))))))

(declare-fun b!4835491 () Bool)

(assert (=> b!4835491 (= e!3021906 (forall!12734 (t!362797 (toList!7621 lm!1282)) lambda!239311))))

(assert (= (and d!1550225 (not res!2060175)) b!4835490))

(assert (= (and b!4835490 res!2060176) b!4835491))

(declare-fun b_lambda!191001 () Bool)

(assert (=> (not b_lambda!191001) (not b!4835490)))

(declare-fun m!5830714 () Bool)

(assert (=> b!4835490 m!5830714))

(declare-fun m!5830716 () Bool)

(assert (=> b!4835491 m!5830716))

(assert (=> d!1550201 d!1550225))

(declare-fun d!1550227 () Bool)

(declare-fun res!2060177 () Bool)

(declare-fun e!3021907 () Bool)

(assert (=> d!1550227 (=> res!2060177 e!3021907)))

(assert (=> d!1550227 (= res!2060177 (is-Nil!55177 (t!362797 (toList!7621 lm!1282))))))

(assert (=> d!1550227 (= (forall!12734 (t!362797 (toList!7621 lm!1282)) lambda!239305) e!3021907)))

(declare-fun b!4835492 () Bool)

(declare-fun e!3021908 () Bool)

(assert (=> b!4835492 (= e!3021907 e!3021908)))

(declare-fun res!2060178 () Bool)

(assert (=> b!4835492 (=> (not res!2060178) (not e!3021908))))

(assert (=> b!4835492 (= res!2060178 (dynLambda!22258 lambda!239305 (h!61611 (t!362797 (toList!7621 lm!1282)))))))

(declare-fun b!4835493 () Bool)

(assert (=> b!4835493 (= e!3021908 (forall!12734 (t!362797 (t!362797 (toList!7621 lm!1282))) lambda!239305))))

(assert (= (and d!1550227 (not res!2060177)) b!4835492))

(assert (= (and b!4835492 res!2060178) b!4835493))

(declare-fun b_lambda!191003 () Bool)

(assert (=> (not b_lambda!191003) (not b!4835492)))

(declare-fun m!5830718 () Bool)

(assert (=> b!4835492 m!5830718))

(declare-fun m!5830720 () Bool)

(assert (=> b!4835493 m!5830720))

(assert (=> b!4835435 d!1550227))

(declare-fun d!1550229 () Bool)

(declare-fun choose!35323 (Hashable!7335 K!16907) (_ BitVec 64))

(assert (=> d!1550229 (= (hash!5523 hashF!961 key!2791) (choose!35323 hashF!961 key!2791))))

(declare-fun bs!1167426 () Bool)

(assert (= bs!1167426 d!1550229))

(declare-fun m!5830722 () Bool)

(assert (=> bs!1167426 m!5830722))

(assert (=> d!1550207 d!1550229))

(declare-fun d!1550231 () Bool)

(assert (=> d!1550231 (isDefined!10679 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366))))

(declare-fun lt!1981396 () Unit!144558)

(declare-fun choose!35324 (List!55301 (_ BitVec 64)) Unit!144558)

(assert (=> d!1550231 (= lt!1981396 (choose!35324 (toList!7621 lm!1282) lt!1981366))))

(declare-fun e!3021913 () Bool)

(assert (=> d!1550231 e!3021913))

(declare-fun res!2060182 () Bool)

(assert (=> d!1550231 (=> (not res!2060182) (not e!3021913))))

(assert (=> d!1550231 (= res!2060182 (isStrictlySorted!1010 (toList!7621 lm!1282)))))

(assert (=> d!1550231 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2464 (toList!7621 lm!1282) lt!1981366) lt!1981396)))

(declare-fun b!4835499 () Bool)

(assert (=> b!4835499 (= e!3021913 (containsKey!4495 (toList!7621 lm!1282) lt!1981366))))

(assert (= (and d!1550231 res!2060182) b!4835499))

(assert (=> d!1550231 m!5830658))

(assert (=> d!1550231 m!5830658))

(assert (=> d!1550231 m!5830692))

(declare-fun m!5830730 () Bool)

(assert (=> d!1550231 m!5830730))

(assert (=> d!1550231 m!5830684))

(assert (=> b!4835499 m!5830688))

(assert (=> b!4835444 d!1550231))

(declare-fun d!1550235 () Bool)

(declare-fun isEmpty!29698 (Option!13569) Bool)

(assert (=> d!1550235 (= (isDefined!10679 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)) (not (isEmpty!29698 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366))))))

(declare-fun bs!1167427 () Bool)

(assert (= bs!1167427 d!1550235))

(assert (=> bs!1167427 m!5830658))

(declare-fun m!5830732 () Bool)

(assert (=> bs!1167427 m!5830732))

(assert (=> b!4835444 d!1550235))

(assert (=> b!4835444 d!1550209))

(declare-fun d!1550237 () Bool)

(declare-fun res!2060187 () Bool)

(declare-fun e!3021920 () Bool)

(assert (=> d!1550237 (=> res!2060187 e!3021920)))

(assert (=> d!1550237 (= res!2060187 (not (is-Cons!55176 (_2!32562 (h!61611 (toList!7621 lm!1282))))))))

(assert (=> d!1550237 (= (noDuplicateKeys!2511 (_2!32562 (h!61611 (toList!7621 lm!1282)))) e!3021920)))

(declare-fun b!4835508 () Bool)

(declare-fun e!3021921 () Bool)

(assert (=> b!4835508 (= e!3021920 e!3021921)))

(declare-fun res!2060188 () Bool)

(assert (=> b!4835508 (=> (not res!2060188) (not e!3021921))))

(declare-fun containsKey!4496 (List!55300 K!16907) Bool)

(assert (=> b!4835508 (= res!2060188 (not (containsKey!4496 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))) (_1!32561 (h!61610 (_2!32562 (h!61611 (toList!7621 lm!1282))))))))))

(declare-fun b!4835509 () Bool)

(assert (=> b!4835509 (= e!3021921 (noDuplicateKeys!2511 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))))))

(assert (= (and d!1550237 (not res!2060187)) b!4835508))

(assert (= (and b!4835508 res!2060188) b!4835509))

(declare-fun m!5830736 () Bool)

(assert (=> b!4835508 m!5830736))

(declare-fun m!5830738 () Bool)

(assert (=> b!4835509 m!5830738))

(assert (=> bs!1167421 d!1550237))

(declare-fun d!1550239 () Bool)

(declare-fun res!2060193 () Bool)

(declare-fun e!3021927 () Bool)

(assert (=> d!1550239 (=> res!2060193 e!3021927)))

(assert (=> d!1550239 (= res!2060193 (or (is-Nil!55177 (toList!7621 lm!1282)) (is-Nil!55177 (t!362797 (toList!7621 lm!1282)))))))

(assert (=> d!1550239 (= (isStrictlySorted!1010 (toList!7621 lm!1282)) e!3021927)))

(declare-fun b!4835515 () Bool)

(declare-fun e!3021928 () Bool)

(assert (=> b!4835515 (= e!3021927 e!3021928)))

(declare-fun res!2060194 () Bool)

(assert (=> b!4835515 (=> (not res!2060194) (not e!3021928))))

(assert (=> b!4835515 (= res!2060194 (bvslt (_1!32562 (h!61611 (toList!7621 lm!1282))) (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282))))))))

(declare-fun b!4835516 () Bool)

(assert (=> b!4835516 (= e!3021928 (isStrictlySorted!1010 (t!362797 (toList!7621 lm!1282))))))

(assert (= (and d!1550239 (not res!2060193)) b!4835515))

(assert (= (and b!4835515 res!2060194) b!4835516))

(declare-fun m!5830742 () Bool)

(assert (=> b!4835516 m!5830742))

(assert (=> d!1550199 d!1550239))

(declare-fun d!1550243 () Bool)

(declare-fun res!2060199 () Bool)

(declare-fun e!3021933 () Bool)

(assert (=> d!1550243 (=> res!2060199 e!3021933)))

(assert (=> d!1550243 (= res!2060199 (and (is-Cons!55177 (toList!7621 lm!1282)) (= (_1!32562 (h!61611 (toList!7621 lm!1282))) lt!1981366)))))

(assert (=> d!1550243 (= (containsKey!4495 (toList!7621 lm!1282) lt!1981366) e!3021933)))

(declare-fun b!4835521 () Bool)

(declare-fun e!3021934 () Bool)

(assert (=> b!4835521 (= e!3021933 e!3021934)))

(declare-fun res!2060200 () Bool)

(assert (=> b!4835521 (=> (not res!2060200) (not e!3021934))))

(assert (=> b!4835521 (= res!2060200 (and (or (not (is-Cons!55177 (toList!7621 lm!1282))) (bvsle (_1!32562 (h!61611 (toList!7621 lm!1282))) lt!1981366)) (is-Cons!55177 (toList!7621 lm!1282)) (bvslt (_1!32562 (h!61611 (toList!7621 lm!1282))) lt!1981366)))))

(declare-fun b!4835522 () Bool)

(assert (=> b!4835522 (= e!3021934 (containsKey!4495 (t!362797 (toList!7621 lm!1282)) lt!1981366))))

(assert (= (and d!1550243 (not res!2060199)) b!4835521))

(assert (= (and b!4835521 res!2060200) b!4835522))

(declare-fun m!5830744 () Bool)

(assert (=> b!4835522 m!5830744))

(assert (=> d!1550203 d!1550243))

(declare-fun d!1550245 () Bool)

(assert (=> d!1550245 (= (get!18892 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)) (v!49271 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)))))

(assert (=> d!1550211 d!1550245))

(assert (=> d!1550211 d!1550209))

(assert (=> b!4835446 d!1550235))

(assert (=> b!4835446 d!1550209))

(declare-fun b!4835523 () Bool)

(declare-fun e!3021935 () Option!13569)

(assert (=> b!4835523 (= e!3021935 (Some!13568 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282))))))))

(declare-fun b!4835526 () Bool)

(declare-fun e!3021936 () Option!13569)

(assert (=> b!4835526 (= e!3021936 None!13568)))

(declare-fun b!4835525 () Bool)

(assert (=> b!4835525 (= e!3021936 (getValueByKey!2684 (t!362797 (t!362797 (toList!7621 lm!1282))) lt!1981366))))

(declare-fun d!1550247 () Bool)

(declare-fun c!823842 () Bool)

(assert (=> d!1550247 (= c!823842 (and (is-Cons!55177 (t!362797 (toList!7621 lm!1282))) (= (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) lt!1981366)))))

(assert (=> d!1550247 (= (getValueByKey!2684 (t!362797 (toList!7621 lm!1282)) lt!1981366) e!3021935)))

(declare-fun b!4835524 () Bool)

(assert (=> b!4835524 (= e!3021935 e!3021936)))

(declare-fun c!823843 () Bool)

(assert (=> b!4835524 (= c!823843 (and (is-Cons!55177 (t!362797 (toList!7621 lm!1282))) (not (= (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) lt!1981366))))))

(assert (= (and d!1550247 c!823842) b!4835523))

(assert (= (and d!1550247 (not c!823842)) b!4835524))

(assert (= (and b!4835524 c!823843) b!4835525))

(assert (= (and b!4835524 (not c!823843)) b!4835526))

(declare-fun m!5830746 () Bool)

(assert (=> b!4835525 m!5830746))

(assert (=> b!4835465 d!1550247))

(declare-fun tp!1363351 () Bool)

(declare-fun e!3021939 () Bool)

(declare-fun b!4835531 () Bool)

(declare-fun tp_is_empty!34769 () Bool)

(assert (=> b!4835531 (= e!3021939 (and tp_is_empty!34765 tp_is_empty!34769 tp!1363351))))

(assert (=> b!4835475 (= tp!1363341 e!3021939)))

(assert (= (and b!4835475 (is-Cons!55176 (_2!32562 (h!61611 (toList!7621 lm!1282))))) b!4835531))

(declare-fun b!4835532 () Bool)

(declare-fun e!3021940 () Bool)

(declare-fun tp!1363352 () Bool)

(declare-fun tp!1363353 () Bool)

(assert (=> b!4835532 (= e!3021940 (and tp!1363352 tp!1363353))))

(assert (=> b!4835475 (= tp!1363342 e!3021940)))

(assert (= (and b!4835475 (is-Cons!55177 (t!362797 (toList!7621 lm!1282)))) b!4835532))

(declare-fun b_lambda!191007 () Bool)

(assert (= b_lambda!191003 (or start!502688 b_lambda!191007)))

(declare-fun bs!1167430 () Bool)

(declare-fun d!1550249 () Bool)

(assert (= bs!1167430 (and d!1550249 start!502688)))

(assert (=> bs!1167430 (= (dynLambda!22258 lambda!239305 (h!61611 (t!362797 (toList!7621 lm!1282)))) (noDuplicateKeys!2511 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282))))))))

(declare-fun m!5830748 () Bool)

(assert (=> bs!1167430 m!5830748))

(assert (=> b!4835492 d!1550249))

(declare-fun b_lambda!191009 () Bool)

(assert (= b_lambda!191001 (or d!1550201 b_lambda!191009)))

(declare-fun bs!1167431 () Bool)

(declare-fun d!1550251 () Bool)

(assert (= bs!1167431 (and d!1550251 d!1550201)))

(declare-fun allKeysSameHash!2022 (List!55300 (_ BitVec 64) Hashable!7335) Bool)

(assert (=> bs!1167431 (= (dynLambda!22258 lambda!239311 (h!61611 (toList!7621 lm!1282))) (allKeysSameHash!2022 (_2!32562 (h!61611 (toList!7621 lm!1282))) (_1!32562 (h!61611 (toList!7621 lm!1282))) hashF!961))))

(declare-fun m!5830750 () Bool)

(assert (=> bs!1167431 m!5830750))

(assert (=> b!4835490 d!1550251))

(push 1)

(assert tp_is_empty!34769)

(assert (not d!1550235))

(assert (not bs!1167431))

(assert (not b_lambda!191009))

(assert (not b!4835516))

(assert (not d!1550231))

(assert (not b!4835493))

(assert (not b!4835508))

(assert (not b!4835509))

(assert (not b!4835522))

(assert (not b!4835531))

(assert tp_is_empty!34765)

(assert (not b!4835525))

(assert (not bs!1167430))

(assert (not b!4835532))

(assert (not b_lambda!190997))

(assert (not b_lambda!191007))

(assert (not b!4835491))

(assert (not d!1550229))

(assert (not b!4835499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550253 () Bool)

(assert (=> d!1550253 (= (isEmpty!29698 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366)) (not (is-Some!13568 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366))))))

(assert (=> d!1550235 d!1550253))

(declare-fun d!1550255 () Bool)

(declare-fun res!2060201 () Bool)

(declare-fun e!3021941 () Bool)

(assert (=> d!1550255 (=> res!2060201 e!3021941)))

(assert (=> d!1550255 (= res!2060201 (not (is-Cons!55176 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))))))))

(assert (=> d!1550255 (= (noDuplicateKeys!2511 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282))))) e!3021941)))

(declare-fun b!4835533 () Bool)

(declare-fun e!3021942 () Bool)

(assert (=> b!4835533 (= e!3021941 e!3021942)))

(declare-fun res!2060202 () Bool)

(assert (=> b!4835533 (=> (not res!2060202) (not e!3021942))))

(assert (=> b!4835533 (= res!2060202 (not (containsKey!4496 (t!362796 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282))))) (_1!32561 (h!61610 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))))))))))

(declare-fun b!4835534 () Bool)

(assert (=> b!4835534 (= e!3021942 (noDuplicateKeys!2511 (t!362796 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))))))))

(assert (= (and d!1550255 (not res!2060201)) b!4835533))

(assert (= (and b!4835533 res!2060202) b!4835534))

(declare-fun m!5830752 () Bool)

(assert (=> b!4835533 m!5830752))

(declare-fun m!5830754 () Bool)

(assert (=> b!4835534 m!5830754))

(assert (=> bs!1167430 d!1550255))

(declare-fun b!4835535 () Bool)

(declare-fun e!3021943 () Option!13569)

(assert (=> b!4835535 (= e!3021943 (Some!13568 (_2!32562 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282)))))))))

(declare-fun b!4835538 () Bool)

(declare-fun e!3021944 () Option!13569)

(assert (=> b!4835538 (= e!3021944 None!13568)))

(declare-fun b!4835537 () Bool)

(assert (=> b!4835537 (= e!3021944 (getValueByKey!2684 (t!362797 (t!362797 (t!362797 (toList!7621 lm!1282)))) lt!1981366))))

(declare-fun d!1550257 () Bool)

(declare-fun c!823844 () Bool)

(assert (=> d!1550257 (= c!823844 (and (is-Cons!55177 (t!362797 (t!362797 (toList!7621 lm!1282)))) (= (_1!32562 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282))))) lt!1981366)))))

(assert (=> d!1550257 (= (getValueByKey!2684 (t!362797 (t!362797 (toList!7621 lm!1282))) lt!1981366) e!3021943)))

(declare-fun b!4835536 () Bool)

(assert (=> b!4835536 (= e!3021943 e!3021944)))

(declare-fun c!823845 () Bool)

(assert (=> b!4835536 (= c!823845 (and (is-Cons!55177 (t!362797 (t!362797 (toList!7621 lm!1282)))) (not (= (_1!32562 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282))))) lt!1981366))))))

(assert (= (and d!1550257 c!823844) b!4835535))

(assert (= (and d!1550257 (not c!823844)) b!4835536))

(assert (= (and b!4835536 c!823845) b!4835537))

(assert (= (and b!4835536 (not c!823845)) b!4835538))

(declare-fun m!5830756 () Bool)

(assert (=> b!4835537 m!5830756))

(assert (=> b!4835525 d!1550257))

(declare-fun d!1550261 () Bool)

(declare-fun res!2060203 () Bool)

(declare-fun e!3021945 () Bool)

(assert (=> d!1550261 (=> res!2060203 e!3021945)))

(assert (=> d!1550261 (= res!2060203 (or (is-Nil!55177 (t!362797 (toList!7621 lm!1282))) (is-Nil!55177 (t!362797 (t!362797 (toList!7621 lm!1282))))))))

(assert (=> d!1550261 (= (isStrictlySorted!1010 (t!362797 (toList!7621 lm!1282))) e!3021945)))

(declare-fun b!4835539 () Bool)

(declare-fun e!3021946 () Bool)

(assert (=> b!4835539 (= e!3021945 e!3021946)))

(declare-fun res!2060204 () Bool)

(assert (=> b!4835539 (=> (not res!2060204) (not e!3021946))))

(assert (=> b!4835539 (= res!2060204 (bvslt (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) (_1!32562 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282)))))))))

(declare-fun b!4835540 () Bool)

(assert (=> b!4835540 (= e!3021946 (isStrictlySorted!1010 (t!362797 (t!362797 (toList!7621 lm!1282)))))))

(assert (= (and d!1550261 (not res!2060203)) b!4835539))

(assert (= (and b!4835539 res!2060204) b!4835540))

(declare-fun m!5830758 () Bool)

(assert (=> b!4835540 m!5830758))

(assert (=> b!4835516 d!1550261))

(assert (=> d!1550231 d!1550235))

(assert (=> d!1550231 d!1550209))

(declare-fun d!1550263 () Bool)

(assert (=> d!1550263 (isDefined!10679 (getValueByKey!2684 (toList!7621 lm!1282) lt!1981366))))

(assert (=> d!1550263 true))

(declare-fun _$13!1654 () Unit!144558)

(assert (=> d!1550263 (= (choose!35324 (toList!7621 lm!1282) lt!1981366) _$13!1654)))

(declare-fun bs!1167432 () Bool)

(assert (= bs!1167432 d!1550263))

(assert (=> bs!1167432 m!5830658))

(assert (=> bs!1167432 m!5830658))

(assert (=> bs!1167432 m!5830692))

(assert (=> d!1550231 d!1550263))

(assert (=> d!1550231 d!1550239))

(assert (=> b!4835499 d!1550243))

(declare-fun d!1550265 () Bool)

(declare-fun res!2060205 () Bool)

(declare-fun e!3021947 () Bool)

(assert (=> d!1550265 (=> res!2060205 e!3021947)))

(assert (=> d!1550265 (= res!2060205 (is-Nil!55177 (t!362797 (toList!7621 lm!1282))))))

(assert (=> d!1550265 (= (forall!12734 (t!362797 (toList!7621 lm!1282)) lambda!239311) e!3021947)))

(declare-fun b!4835541 () Bool)

(declare-fun e!3021948 () Bool)

(assert (=> b!4835541 (= e!3021947 e!3021948)))

(declare-fun res!2060206 () Bool)

(assert (=> b!4835541 (=> (not res!2060206) (not e!3021948))))

(assert (=> b!4835541 (= res!2060206 (dynLambda!22258 lambda!239311 (h!61611 (t!362797 (toList!7621 lm!1282)))))))

(declare-fun b!4835542 () Bool)

(assert (=> b!4835542 (= e!3021948 (forall!12734 (t!362797 (t!362797 (toList!7621 lm!1282))) lambda!239311))))

(assert (= (and d!1550265 (not res!2060205)) b!4835541))

(assert (= (and b!4835541 res!2060206) b!4835542))

(declare-fun b_lambda!191011 () Bool)

(assert (=> (not b_lambda!191011) (not b!4835541)))

(declare-fun m!5830760 () Bool)

(assert (=> b!4835541 m!5830760))

(declare-fun m!5830762 () Bool)

(assert (=> b!4835542 m!5830762))

(assert (=> b!4835491 d!1550265))

(declare-fun d!1550267 () Bool)

(assert (=> d!1550267 true))

(assert (=> d!1550267 true))

(declare-fun res!2060213 () (_ BitVec 64))

(assert (=> d!1550267 (= (choose!35323 hashF!961 key!2791) res!2060213)))

(assert (=> d!1550229 d!1550267))

(declare-fun d!1550269 () Bool)

(assert (=> d!1550269 true))

(assert (=> d!1550269 true))

(declare-fun lambda!239317 () Int)

(declare-fun forall!12736 (List!55300 Int) Bool)

(assert (=> d!1550269 (= (allKeysSameHash!2022 (_2!32562 (h!61611 (toList!7621 lm!1282))) (_1!32562 (h!61611 (toList!7621 lm!1282))) hashF!961) (forall!12736 (_2!32562 (h!61611 (toList!7621 lm!1282))) lambda!239317))))

(declare-fun bs!1167433 () Bool)

(assert (= bs!1167433 d!1550269))

(declare-fun m!5830764 () Bool)

(assert (=> bs!1167433 m!5830764))

(assert (=> bs!1167431 d!1550269))

(declare-fun d!1550271 () Bool)

(declare-fun res!2060220 () Bool)

(declare-fun e!3021959 () Bool)

(assert (=> d!1550271 (=> res!2060220 e!3021959)))

(assert (=> d!1550271 (= res!2060220 (and (is-Cons!55176 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))) (= (_1!32561 (h!61610 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))))) (_1!32561 (h!61610 (_2!32562 (h!61611 (toList!7621 lm!1282))))))))))

(assert (=> d!1550271 (= (containsKey!4496 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))) (_1!32561 (h!61610 (_2!32562 (h!61611 (toList!7621 lm!1282)))))) e!3021959)))

(declare-fun b!4835557 () Bool)

(declare-fun e!3021960 () Bool)

(assert (=> b!4835557 (= e!3021959 e!3021960)))

(declare-fun res!2060221 () Bool)

(assert (=> b!4835557 (=> (not res!2060221) (not e!3021960))))

(assert (=> b!4835557 (= res!2060221 (is-Cons!55176 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))))))

(declare-fun b!4835558 () Bool)

(assert (=> b!4835558 (= e!3021960 (containsKey!4496 (t!362796 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))) (_1!32561 (h!61610 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))))

(assert (= (and d!1550271 (not res!2060220)) b!4835557))

(assert (= (and b!4835557 res!2060221) b!4835558))

(declare-fun m!5830770 () Bool)

(assert (=> b!4835558 m!5830770))

(assert (=> b!4835508 d!1550271))

(declare-fun d!1550275 () Bool)

(declare-fun res!2060222 () Bool)

(declare-fun e!3021961 () Bool)

(assert (=> d!1550275 (=> res!2060222 e!3021961)))

(assert (=> d!1550275 (= res!2060222 (and (is-Cons!55177 (t!362797 (toList!7621 lm!1282))) (= (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) lt!1981366)))))

(assert (=> d!1550275 (= (containsKey!4495 (t!362797 (toList!7621 lm!1282)) lt!1981366) e!3021961)))

(declare-fun b!4835559 () Bool)

(declare-fun e!3021962 () Bool)

(assert (=> b!4835559 (= e!3021961 e!3021962)))

(declare-fun res!2060223 () Bool)

(assert (=> b!4835559 (=> (not res!2060223) (not e!3021962))))

(assert (=> b!4835559 (= res!2060223 (and (or (not (is-Cons!55177 (t!362797 (toList!7621 lm!1282)))) (bvsle (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) lt!1981366)) (is-Cons!55177 (t!362797 (toList!7621 lm!1282))) (bvslt (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) lt!1981366)))))

(declare-fun b!4835560 () Bool)

(assert (=> b!4835560 (= e!3021962 (containsKey!4495 (t!362797 (t!362797 (toList!7621 lm!1282))) lt!1981366))))

(assert (= (and d!1550275 (not res!2060222)) b!4835559))

(assert (= (and b!4835559 res!2060223) b!4835560))

(declare-fun m!5830774 () Bool)

(assert (=> b!4835560 m!5830774))

(assert (=> b!4835522 d!1550275))

(declare-fun d!1550279 () Bool)

(declare-fun res!2060226 () Bool)

(declare-fun e!3021965 () Bool)

(assert (=> d!1550279 (=> res!2060226 e!3021965)))

(assert (=> d!1550279 (= res!2060226 (not (is-Cons!55176 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))))

(assert (=> d!1550279 (= (noDuplicateKeys!2511 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))) e!3021965)))

(declare-fun b!4835563 () Bool)

(declare-fun e!3021966 () Bool)

(assert (=> b!4835563 (= e!3021965 e!3021966)))

(declare-fun res!2060227 () Bool)

(assert (=> b!4835563 (=> (not res!2060227) (not e!3021966))))

(assert (=> b!4835563 (= res!2060227 (not (containsKey!4496 (t!362796 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282))))) (_1!32561 (h!61610 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))))))

(declare-fun b!4835564 () Bool)

(assert (=> b!4835564 (= e!3021966 (noDuplicateKeys!2511 (t!362796 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))))))))

(assert (= (and d!1550279 (not res!2060226)) b!4835563))

(assert (= (and b!4835563 res!2060227) b!4835564))

(declare-fun m!5830776 () Bool)

(assert (=> b!4835563 m!5830776))

(declare-fun m!5830778 () Bool)

(assert (=> b!4835564 m!5830778))

(assert (=> b!4835509 d!1550279))

(declare-fun d!1550281 () Bool)

(declare-fun res!2060228 () Bool)

(declare-fun e!3021967 () Bool)

(assert (=> d!1550281 (=> res!2060228 e!3021967)))

(assert (=> d!1550281 (= res!2060228 (is-Nil!55177 (t!362797 (t!362797 (toList!7621 lm!1282)))))))

(assert (=> d!1550281 (= (forall!12734 (t!362797 (t!362797 (toList!7621 lm!1282))) lambda!239305) e!3021967)))

(declare-fun b!4835565 () Bool)

(declare-fun e!3021968 () Bool)

(assert (=> b!4835565 (= e!3021967 e!3021968)))

(declare-fun res!2060229 () Bool)

(assert (=> b!4835565 (=> (not res!2060229) (not e!3021968))))

(assert (=> b!4835565 (= res!2060229 (dynLambda!22258 lambda!239305 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282))))))))

(declare-fun b!4835566 () Bool)

(assert (=> b!4835566 (= e!3021968 (forall!12734 (t!362797 (t!362797 (t!362797 (toList!7621 lm!1282)))) lambda!239305))))

(assert (= (and d!1550281 (not res!2060228)) b!4835565))

(assert (= (and b!4835565 res!2060229) b!4835566))

(declare-fun b_lambda!191015 () Bool)

(assert (=> (not b_lambda!191015) (not b!4835565)))

(declare-fun m!5830780 () Bool)

(assert (=> b!4835565 m!5830780))

(declare-fun m!5830782 () Bool)

(assert (=> b!4835566 m!5830782))

(assert (=> b!4835493 d!1550281))

(declare-fun tp!1363354 () Bool)

(declare-fun b!4835567 () Bool)

(declare-fun e!3021969 () Bool)

(assert (=> b!4835567 (= e!3021969 (and tp_is_empty!34765 tp_is_empty!34769 tp!1363354))))

(assert (=> b!4835531 (= tp!1363351 e!3021969)))

(assert (= (and b!4835531 (is-Cons!55176 (t!362796 (_2!32562 (h!61611 (toList!7621 lm!1282)))))) b!4835567))

(declare-fun e!3021970 () Bool)

(declare-fun tp!1363355 () Bool)

(declare-fun b!4835568 () Bool)

(assert (=> b!4835568 (= e!3021970 (and tp_is_empty!34765 tp_is_empty!34769 tp!1363355))))

(assert (=> b!4835532 (= tp!1363352 e!3021970)))

(assert (= (and b!4835532 (is-Cons!55176 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))))) b!4835568))

(declare-fun b!4835569 () Bool)

(declare-fun e!3021971 () Bool)

(declare-fun tp!1363356 () Bool)

(declare-fun tp!1363357 () Bool)

(assert (=> b!4835569 (= e!3021971 (and tp!1363356 tp!1363357))))

(assert (=> b!4835532 (= tp!1363353 e!3021971)))

(assert (= (and b!4835532 (is-Cons!55177 (t!362797 (t!362797 (toList!7621 lm!1282))))) b!4835569))

(declare-fun b_lambda!191017 () Bool)

(assert (= b_lambda!191011 (or d!1550201 b_lambda!191017)))

(declare-fun bs!1167435 () Bool)

(declare-fun d!1550285 () Bool)

(assert (= bs!1167435 (and d!1550285 d!1550201)))

(assert (=> bs!1167435 (= (dynLambda!22258 lambda!239311 (h!61611 (t!362797 (toList!7621 lm!1282)))) (allKeysSameHash!2022 (_2!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) (_1!32562 (h!61611 (t!362797 (toList!7621 lm!1282)))) hashF!961))))

(declare-fun m!5830788 () Bool)

(assert (=> bs!1167435 m!5830788))

(assert (=> b!4835541 d!1550285))

(declare-fun b_lambda!191019 () Bool)

(assert (= b_lambda!191015 (or start!502688 b_lambda!191019)))

(declare-fun bs!1167436 () Bool)

(declare-fun d!1550287 () Bool)

(assert (= bs!1167436 (and d!1550287 start!502688)))

(assert (=> bs!1167436 (= (dynLambda!22258 lambda!239305 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282))))) (noDuplicateKeys!2511 (_2!32562 (h!61611 (t!362797 (t!362797 (toList!7621 lm!1282)))))))))

(declare-fun m!5830790 () Bool)

(assert (=> bs!1167436 m!5830790))

(assert (=> b!4835565 d!1550287))

(push 1)

(assert tp_is_empty!34769)

(assert (not b_lambda!191017))

(assert (not d!1550269))

(assert (not b_lambda!191009))

(assert (not b!4835540))

(assert (not b!4835542))

(assert (not bs!1167436))

(assert (not bs!1167435))

(assert (not b!4835567))

(assert tp_is_empty!34765)

(assert (not b!4835537))

(assert (not b!4835558))

(assert (not d!1550263))

(assert (not b!4835533))

(assert (not b!4835563))

(assert (not b!4835564))

(assert (not b!4835568))

(assert (not b_lambda!190997))

(assert (not b_lambda!191007))

(assert (not b!4835534))

(assert (not b_lambda!191019))

(assert (not b!4835569))

(assert (not b!4835566))

(assert (not b!4835560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

