; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132596 () Bool)

(assert start!132596)

(declare-fun b!1554087 () Bool)

(declare-fun res!1063715 () Bool)

(declare-fun e!865370 () Bool)

(assert (=> b!1554087 (=> (not res!1063715) (not e!865370))))

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1554087 (= res!1063715 (not (= a0!49 a!523)))))

(declare-fun b!1554088 () Bool)

(declare-datatypes ((B!2244 0))(
  ( (B!2245 (val!19208 Int)) )
))
(declare-datatypes ((tuple2!24932 0))(
  ( (tuple2!24933 (_1!12476 (_ BitVec 64)) (_2!12476 B!2244)) )
))
(declare-datatypes ((List!36388 0))(
  ( (Nil!36385) (Cons!36384 (h!37831 tuple2!24932) (t!51116 List!36388)) )
))
(declare-datatypes ((ListLongMap!22553 0))(
  ( (ListLongMap!22554 (toList!11292 List!36388)) )
))
(declare-fun lm!249 () ListLongMap!22553)

(declare-fun isStrictlySorted!901 (List!36388) Bool)

(assert (=> b!1554088 (= e!865370 (not (isStrictlySorted!901 (toList!11292 lm!249))))))

(declare-fun e!865371 () Bool)

(assert (=> b!1554088 e!865371))

(declare-fun res!1063716 () Bool)

(assert (=> b!1554088 (=> (not res!1063716) (not e!865371))))

(declare-fun lt!669889 () List!36388)

(declare-fun containsKey!773 (List!36388 (_ BitVec 64)) Bool)

(assert (=> b!1554088 (= res!1063716 (containsKey!773 lt!669889 a0!49))))

(declare-fun b!96 () B!2244)

(declare-fun insertStrictlySorted!515 (List!36388 (_ BitVec 64) B!2244) List!36388)

(assert (=> b!1554088 (= lt!669889 (insertStrictlySorted!515 (toList!11292 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51724 0))(
  ( (Unit!51725) )
))
(declare-fun lt!669890 () Unit!51724)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!12 (List!36388 (_ BitVec 64) B!2244 (_ BitVec 64)) Unit!51724)

(assert (=> b!1554088 (= lt!669890 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!12 (toList!11292 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1554089 () Bool)

(declare-fun res!1063713 () Bool)

(assert (=> b!1554089 (=> (not res!1063713) (not e!865370))))

(assert (=> b!1554089 (= res!1063713 (containsKey!773 (toList!11292 lm!249) a0!49))))

(declare-fun res!1063714 () Bool)

(assert (=> start!132596 (=> (not res!1063714) (not e!865370))))

(declare-fun contains!10167 (ListLongMap!22553 (_ BitVec 64)) Bool)

(assert (=> start!132596 (= res!1063714 (contains!10167 lm!249 a0!49))))

(assert (=> start!132596 e!865370))

(declare-fun e!865369 () Bool)

(declare-fun inv!57345 (ListLongMap!22553) Bool)

(assert (=> start!132596 (and (inv!57345 lm!249) e!865369)))

(assert (=> start!132596 true))

(declare-fun tp_is_empty!38255 () Bool)

(assert (=> start!132596 tp_is_empty!38255))

(declare-fun b!1554090 () Bool)

(declare-datatypes ((Option!830 0))(
  ( (Some!829 (v!22010 B!2244)) (None!828) )
))
(declare-fun getValueByKey!755 (List!36388 (_ BitVec 64)) Option!830)

(assert (=> b!1554090 (= e!865371 (= (getValueByKey!755 lt!669889 a0!49) (getValueByKey!755 (toList!11292 lm!249) a0!49)))))

(declare-fun b!1554091 () Bool)

(declare-fun tp!112189 () Bool)

(assert (=> b!1554091 (= e!865369 tp!112189)))

(assert (= (and start!132596 res!1063714) b!1554087))

(assert (= (and b!1554087 res!1063715) b!1554089))

(assert (= (and b!1554089 res!1063713) b!1554088))

(assert (= (and b!1554088 res!1063716) b!1554090))

(assert (= start!132596 b!1554091))

(declare-fun m!1432587 () Bool)

(assert (=> b!1554088 m!1432587))

(declare-fun m!1432589 () Bool)

(assert (=> b!1554088 m!1432589))

(declare-fun m!1432591 () Bool)

(assert (=> b!1554088 m!1432591))

(declare-fun m!1432593 () Bool)

(assert (=> b!1554088 m!1432593))

(declare-fun m!1432595 () Bool)

(assert (=> b!1554089 m!1432595))

(declare-fun m!1432597 () Bool)

(assert (=> start!132596 m!1432597))

(declare-fun m!1432599 () Bool)

(assert (=> start!132596 m!1432599))

(declare-fun m!1432601 () Bool)

(assert (=> b!1554090 m!1432601))

(declare-fun m!1432603 () Bool)

(assert (=> b!1554090 m!1432603))

(push 1)

(assert tp_is_empty!38255)

(assert (not b!1554088))

(assert (not b!1554089))

(assert (not start!132596))

(assert (not b!1554090))

(assert (not b!1554091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1554115 () Bool)

(declare-fun e!865389 () Option!830)

(assert (=> b!1554115 (= e!865389 None!828)))

(declare-fun b!1554114 () Bool)

(assert (=> b!1554114 (= e!865389 (getValueByKey!755 (t!51116 lt!669889) a0!49))))

(declare-fun b!1554112 () Bool)

(declare-fun e!865388 () Option!830)

(assert (=> b!1554112 (= e!865388 (Some!829 (_2!12476 (h!37831 lt!669889))))))

(declare-fun b!1554113 () Bool)

(assert (=> b!1554113 (= e!865388 e!865389)))

(declare-fun c!143291 () Bool)

(assert (=> b!1554113 (= c!143291 (and (is-Cons!36384 lt!669889) (not (= (_1!12476 (h!37831 lt!669889)) a0!49))))))

(declare-fun d!161621 () Bool)

(declare-fun c!143290 () Bool)

(assert (=> d!161621 (= c!143290 (and (is-Cons!36384 lt!669889) (= (_1!12476 (h!37831 lt!669889)) a0!49)))))

(assert (=> d!161621 (= (getValueByKey!755 lt!669889 a0!49) e!865388)))

(assert (= (and d!161621 c!143290) b!1554112))

(assert (= (and d!161621 (not c!143290)) b!1554113))

(assert (= (and b!1554113 c!143291) b!1554114))

(assert (= (and b!1554113 (not c!143291)) b!1554115))

(declare-fun m!1432609 () Bool)

(assert (=> b!1554114 m!1432609))

(assert (=> b!1554090 d!161621))

(declare-fun b!1554119 () Bool)

(declare-fun e!865391 () Option!830)

(assert (=> b!1554119 (= e!865391 None!828)))

(declare-fun b!1554118 () Bool)

(assert (=> b!1554118 (= e!865391 (getValueByKey!755 (t!51116 (toList!11292 lm!249)) a0!49))))

(declare-fun b!1554116 () Bool)

(declare-fun e!865390 () Option!830)

(assert (=> b!1554116 (= e!865390 (Some!829 (_2!12476 (h!37831 (toList!11292 lm!249)))))))

(declare-fun b!1554117 () Bool)

(assert (=> b!1554117 (= e!865390 e!865391)))

(declare-fun c!143293 () Bool)

(assert (=> b!1554117 (= c!143293 (and (is-Cons!36384 (toList!11292 lm!249)) (not (= (_1!12476 (h!37831 (toList!11292 lm!249))) a0!49))))))

(declare-fun d!161629 () Bool)

(declare-fun c!143292 () Bool)

(assert (=> d!161629 (= c!143292 (and (is-Cons!36384 (toList!11292 lm!249)) (= (_1!12476 (h!37831 (toList!11292 lm!249))) a0!49)))))

(assert (=> d!161629 (= (getValueByKey!755 (toList!11292 lm!249) a0!49) e!865390)))

(assert (= (and d!161629 c!143292) b!1554116))

(assert (= (and d!161629 (not c!143292)) b!1554117))

(assert (= (and b!1554117 c!143293) b!1554118))

(assert (= (and b!1554117 (not c!143293)) b!1554119))

(declare-fun m!1432611 () Bool)

(assert (=> b!1554118 m!1432611))

(assert (=> b!1554090 d!161629))

(declare-fun d!161631 () Bool)

(declare-fun res!1063747 () Bool)

(declare-fun e!865410 () Bool)

(assert (=> d!161631 (=> res!1063747 e!865410)))

(assert (=> d!161631 (= res!1063747 (and (is-Cons!36384 (toList!11292 lm!249)) (= (_1!12476 (h!37831 (toList!11292 lm!249))) a0!49)))))

(assert (=> d!161631 (= (containsKey!773 (toList!11292 lm!249) a0!49) e!865410)))

(declare-fun b!1554138 () Bool)

(declare-fun e!865411 () Bool)

(assert (=> b!1554138 (= e!865410 e!865411)))

(declare-fun res!1063748 () Bool)

(assert (=> b!1554138 (=> (not res!1063748) (not e!865411))))

(assert (=> b!1554138 (= res!1063748 (and (or (not (is-Cons!36384 (toList!11292 lm!249))) (bvsle (_1!12476 (h!37831 (toList!11292 lm!249))) a0!49)) (is-Cons!36384 (toList!11292 lm!249)) (bvslt (_1!12476 (h!37831 (toList!11292 lm!249))) a0!49)))))

(declare-fun b!1554139 () Bool)

(assert (=> b!1554139 (= e!865411 (containsKey!773 (t!51116 (toList!11292 lm!249)) a0!49))))

(assert (= (and d!161631 (not res!1063747)) b!1554138))

(assert (= (and b!1554138 res!1063748) b!1554139))

(declare-fun m!1432619 () Bool)

(assert (=> b!1554139 m!1432619))

(assert (=> b!1554089 d!161631))

(declare-fun d!161639 () Bool)

(declare-fun res!1063753 () Bool)

(declare-fun e!865416 () Bool)

(assert (=> d!161639 (=> res!1063753 e!865416)))

(assert (=> d!161639 (= res!1063753 (or (is-Nil!36385 (toList!11292 lm!249)) (is-Nil!36385 (t!51116 (toList!11292 lm!249)))))))

(assert (=> d!161639 (= (isStrictlySorted!901 (toList!11292 lm!249)) e!865416)))

(declare-fun b!1554144 () Bool)

(declare-fun e!865417 () Bool)

(assert (=> b!1554144 (= e!865416 e!865417)))

(declare-fun res!1063754 () Bool)

(assert (=> b!1554144 (=> (not res!1063754) (not e!865417))))

(assert (=> b!1554144 (= res!1063754 (bvslt (_1!12476 (h!37831 (toList!11292 lm!249))) (_1!12476 (h!37831 (t!51116 (toList!11292 lm!249))))))))

(declare-fun b!1554145 () Bool)

(assert (=> b!1554145 (= e!865417 (isStrictlySorted!901 (t!51116 (toList!11292 lm!249))))))

(assert (= (and d!161639 (not res!1063753)) b!1554144))

(assert (= (and b!1554144 res!1063754) b!1554145))

(declare-fun m!1432621 () Bool)

(assert (=> b!1554145 m!1432621))

(assert (=> b!1554088 d!161639))

(declare-fun d!161641 () Bool)

(declare-fun res!1063755 () Bool)

(declare-fun e!865418 () Bool)

(assert (=> d!161641 (=> res!1063755 e!865418)))

(assert (=> d!161641 (= res!1063755 (and (is-Cons!36384 lt!669889) (= (_1!12476 (h!37831 lt!669889)) a0!49)))))

(assert (=> d!161641 (= (containsKey!773 lt!669889 a0!49) e!865418)))

(declare-fun b!1554146 () Bool)

(declare-fun e!865419 () Bool)

(assert (=> b!1554146 (= e!865418 e!865419)))

(declare-fun res!1063756 () Bool)

(assert (=> b!1554146 (=> (not res!1063756) (not e!865419))))

(assert (=> b!1554146 (= res!1063756 (and (or (not (is-Cons!36384 lt!669889)) (bvsle (_1!12476 (h!37831 lt!669889)) a0!49)) (is-Cons!36384 lt!669889) (bvslt (_1!12476 (h!37831 lt!669889)) a0!49)))))

(declare-fun b!1554147 () Bool)

(assert (=> b!1554147 (= e!865419 (containsKey!773 (t!51116 lt!669889) a0!49))))

(assert (= (and d!161641 (not res!1063755)) b!1554146))

(assert (= (and b!1554146 res!1063756) b!1554147))

(declare-fun m!1432623 () Bool)

(assert (=> b!1554147 m!1432623))

(assert (=> b!1554088 d!161641))

(declare-fun b!1554228 () Bool)

(declare-fun c!143326 () Bool)

(assert (=> b!1554228 (= c!143326 (and (is-Cons!36384 (toList!11292 lm!249)) (bvsgt (_1!12476 (h!37831 (toList!11292 lm!249))) a!523)))))

(declare-fun e!865462 () List!36388)

(declare-fun e!865464 () List!36388)

(assert (=> b!1554228 (= e!865462 e!865464)))

(declare-fun b!1554229 () Bool)

(declare-fun e!865463 () Bool)

(declare-fun lt!669899 () List!36388)

(declare-fun contains!10170 (List!36388 tuple2!24932) Bool)

(assert (=> b!1554229 (= e!865463 (contains!10170 lt!669899 (tuple2!24933 a!523 b!96)))))

(declare-fun d!161643 () Bool)

(assert (=> d!161643 e!865463))

(declare-fun res!1063774 () Bool)

(assert (=> d!161643 (=> (not res!1063774) (not e!865463))))

(assert (=> d!161643 (= res!1063774 (isStrictlySorted!901 lt!669899))))

(declare-fun e!865461 () List!36388)

(assert (=> d!161643 (= lt!669899 e!865461)))

(declare-fun c!143327 () Bool)

(assert (=> d!161643 (= c!143327 (and (is-Cons!36384 (toList!11292 lm!249)) (bvslt (_1!12476 (h!37831 (toList!11292 lm!249))) a!523)))))

(assert (=> d!161643 (isStrictlySorted!901 (toList!11292 lm!249))))

(assert (=> d!161643 (= (insertStrictlySorted!515 (toList!11292 lm!249) a!523 b!96) lt!669899)))

(declare-fun b!1554230 () Bool)

(declare-fun res!1063773 () Bool)

(assert (=> b!1554230 (=> (not res!1063773) (not e!865463))))

(assert (=> b!1554230 (= res!1063773 (containsKey!773 lt!669899 a!523))))

(declare-fun bm!71419 () Bool)

(declare-fun call!71424 () List!36388)

(declare-fun call!71422 () List!36388)

(assert (=> bm!71419 (= call!71424 call!71422)))

(declare-fun b!1554231 () Bool)

(assert (=> b!1554231 (= e!865461 e!865462)))

(declare-fun c!143329 () Bool)

(assert (=> b!1554231 (= c!143329 (and (is-Cons!36384 (toList!11292 lm!249)) (= (_1!12476 (h!37831 (toList!11292 lm!249))) a!523)))))

(declare-fun b!1554232 () Bool)

(assert (=> b!1554232 (= e!865462 call!71422)))

(declare-fun b!1554233 () Bool)

(assert (=> b!1554233 (= e!865464 call!71424)))

(declare-fun b!1554234 () Bool)

(declare-fun e!865460 () List!36388)

(assert (=> b!1554234 (= e!865460 (ite c!143329 (t!51116 (toList!11292 lm!249)) (ite c!143326 (Cons!36384 (h!37831 (toList!11292 lm!249)) (t!51116 (toList!11292 lm!249))) Nil!36385)))))

(declare-fun b!1554235 () Bool)

(assert (=> b!1554235 (= e!865460 (insertStrictlySorted!515 (t!51116 (toList!11292 lm!249)) a!523 b!96))))

(declare-fun bm!71420 () Bool)

(declare-fun call!71423 () List!36388)

(assert (=> bm!71420 (= call!71422 call!71423)))

(declare-fun bm!71421 () Bool)

(declare-fun $colon$colon!952 (List!36388 tuple2!24932) List!36388)

(assert (=> bm!71421 (= call!71423 ($colon$colon!952 e!865460 (ite c!143327 (h!37831 (toList!11292 lm!249)) (tuple2!24933 a!523 b!96))))))

(declare-fun c!143328 () Bool)

(assert (=> bm!71421 (= c!143328 c!143327)))

(declare-fun b!1554236 () Bool)

(assert (=> b!1554236 (= e!865464 call!71424)))

(declare-fun b!1554237 () Bool)

(assert (=> b!1554237 (= e!865461 call!71423)))

(assert (= (and d!161643 c!143327) b!1554237))

(assert (= (and d!161643 (not c!143327)) b!1554231))

(assert (= (and b!1554231 c!143329) b!1554232))

(assert (= (and b!1554231 (not c!143329)) b!1554228))

(assert (= (and b!1554228 c!143326) b!1554233))

(assert (= (and b!1554228 (not c!143326)) b!1554236))

(assert (= (or b!1554233 b!1554236) bm!71419))

(assert (= (or b!1554232 bm!71419) bm!71420))

(assert (= (or b!1554237 bm!71420) bm!71421))

(assert (= (and bm!71421 c!143328) b!1554235))

(assert (= (and bm!71421 (not c!143328)) b!1554234))

(assert (= (and d!161643 res!1063774) b!1554230))

(assert (= (and b!1554230 res!1063773) b!1554229))

(declare-fun m!1432645 () Bool)

(assert (=> b!1554229 m!1432645))

(declare-fun m!1432647 () Bool)

(assert (=> bm!71421 m!1432647))

(declare-fun m!1432649 () Bool)

(assert (=> b!1554230 m!1432649))

(declare-fun m!1432651 () Bool)

(assert (=> b!1554235 m!1432651))

(declare-fun m!1432653 () Bool)

(assert (=> d!161643 m!1432653))

(assert (=> d!161643 m!1432587))

(assert (=> b!1554088 d!161643))

(declare-fun d!161649 () Bool)

(declare-fun e!865481 () Bool)

(assert (=> d!161649 e!865481))

(declare-fun res!1063791 () Bool)

(assert (=> d!161649 (=> (not res!1063791) (not e!865481))))

(assert (=> d!161649 (= res!1063791 (= (containsKey!773 (insertStrictlySorted!515 (toList!11292 lm!249) a!523 b!96) a0!49) (containsKey!773 (toList!11292 lm!249) a0!49)))))

(declare-fun lt!669908 () Unit!51724)

(declare-fun choose!2055 (List!36388 (_ BitVec 64) B!2244 (_ BitVec 64)) Unit!51724)

