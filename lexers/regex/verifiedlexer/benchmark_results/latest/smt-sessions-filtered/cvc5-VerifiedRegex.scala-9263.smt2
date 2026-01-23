; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491812 () Bool)

(assert start!491812)

(declare-fun b!4784709 () Bool)

(declare-fun e!2987357 () Bool)

(declare-fun tp!1357585 () Bool)

(assert (=> b!4784709 (= e!2987357 tp!1357585)))

(declare-fun res!2032219 () Bool)

(declare-fun e!2987359 () Bool)

(assert (=> start!491812 (=> (not res!2032219) (not e!2987359))))

(declare-datatypes ((K!15602 0))(
  ( (K!15603 (val!20787 Int)) )
))
(declare-datatypes ((V!15848 0))(
  ( (V!15849 (val!20788 Int)) )
))
(declare-datatypes ((tuple2!56548 0))(
  ( (tuple2!56549 (_1!31568 K!15602) (_2!31568 V!15848)) )
))
(declare-datatypes ((List!54165 0))(
  ( (Nil!54041) (Cons!54041 (h!60461 tuple2!56548) (t!361615 List!54165)) )
))
(declare-datatypes ((tuple2!56550 0))(
  ( (tuple2!56551 (_1!31569 (_ BitVec 64)) (_2!31569 List!54165)) )
))
(declare-datatypes ((List!54166 0))(
  ( (Nil!54042) (Cons!54042 (h!60462 tuple2!56550) (t!361616 List!54166)) )
))
(declare-datatypes ((ListLongMap!5191 0))(
  ( (ListLongMap!5192 (toList!6769 List!54166)) )
))
(declare-fun lm!2709 () ListLongMap!5191)

(declare-fun lambda!228978 () Int)

(declare-fun forall!12145 (List!54166 Int) Bool)

(assert (=> start!491812 (= res!2032219 (forall!12145 (toList!6769 lm!2709) lambda!228978))))

(assert (=> start!491812 e!2987359))

(declare-fun inv!69629 (ListLongMap!5191) Bool)

(assert (=> start!491812 (and (inv!69629 lm!2709) e!2987357)))

(assert (=> start!491812 true))

(declare-fun tp_is_empty!33281 () Bool)

(assert (=> start!491812 tp_is_empty!33281))

(declare-fun tp_is_empty!33283 () Bool)

(assert (=> start!491812 tp_is_empty!33283))

(declare-fun b!4784710 () Bool)

(declare-fun e!2987358 () Bool)

(assert (=> b!4784710 (= e!2987359 (not e!2987358))))

(declare-fun res!2032220 () Bool)

(assert (=> b!4784710 (=> res!2032220 e!2987358)))

(declare-datatypes ((Option!12973 0))(
  ( (None!12972) (Some!12972 (v!48217 tuple2!56548)) )
))
(declare-fun lt!1946570 () Option!12973)

(declare-fun v!11584 () V!15848)

(declare-fun get!18394 (Option!12973) tuple2!56548)

(assert (=> b!4784710 (= res!2032220 (not (= (_2!31568 (get!18394 lt!1946570)) v!11584)))))

(declare-fun isDefined!10116 (Option!12973) Bool)

(assert (=> b!4784710 (isDefined!10116 lt!1946570)))

(declare-fun lt!1946572 () List!54165)

(declare-fun key!6641 () K!15602)

(declare-fun getPair!817 (List!54165 K!15602) Option!12973)

(assert (=> b!4784710 (= lt!1946570 (getPair!817 lt!1946572 key!6641))))

(declare-fun lt!1946578 () tuple2!56550)

(declare-datatypes ((Unit!139439 0))(
  ( (Unit!139440) )
))
(declare-fun lt!1946575 () Unit!139439)

(declare-fun forallContained!4089 (List!54166 Int tuple2!56550) Unit!139439)

(assert (=> b!4784710 (= lt!1946575 (forallContained!4089 (toList!6769 lm!2709) lambda!228978 lt!1946578))))

(declare-datatypes ((Hashable!6845 0))(
  ( (HashableExt!6844 (__x!32868 Int)) )
))
(declare-fun hashF!1687 () Hashable!6845)

(declare-fun lt!1946574 () Unit!139439)

(declare-fun lemmaInGenMapThenGetPairDefined!591 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> b!4784710 (= lt!1946574 (lemmaInGenMapThenGetPairDefined!591 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1946579 () Unit!139439)

(assert (=> b!4784710 (= lt!1946579 (forallContained!4089 (toList!6769 lm!2709) lambda!228978 lt!1946578))))

(declare-fun contains!17601 (List!54166 tuple2!56550) Bool)

(assert (=> b!4784710 (contains!17601 (toList!6769 lm!2709) lt!1946578)))

(declare-fun lt!1946571 () (_ BitVec 64))

(assert (=> b!4784710 (= lt!1946578 (tuple2!56551 lt!1946571 lt!1946572))))

(declare-fun lt!1946577 () Unit!139439)

(declare-fun lemmaGetValueImpliesTupleContained!624 (ListLongMap!5191 (_ BitVec 64) List!54165) Unit!139439)

(assert (=> b!4784710 (= lt!1946577 (lemmaGetValueImpliesTupleContained!624 lm!2709 lt!1946571 lt!1946572))))

(declare-fun apply!12900 (ListLongMap!5191 (_ BitVec 64)) List!54165)

(assert (=> b!4784710 (= lt!1946572 (apply!12900 lm!2709 lt!1946571))))

(declare-fun contains!17602 (ListLongMap!5191 (_ BitVec 64)) Bool)

(assert (=> b!4784710 (contains!17602 lm!2709 lt!1946571)))

(declare-fun hash!4860 (Hashable!6845 K!15602) (_ BitVec 64))

(assert (=> b!4784710 (= lt!1946571 (hash!4860 hashF!1687 key!6641))))

(declare-fun lt!1946576 () Unit!139439)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1041 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> b!4784710 (= lt!1946576 (lemmaInGenMapThenLongMapContainsHash!1041 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6241 0))(
  ( (ListMap!6242 (toList!6770 List!54165)) )
))
(declare-fun contains!17603 (ListMap!6241 K!15602) Bool)

(declare-fun extractMap!2372 (List!54166) ListMap!6241)

(assert (=> b!4784710 (contains!17603 (extractMap!2372 (toList!6769 lm!2709)) key!6641)))

(declare-fun lt!1946573 () Unit!139439)

(declare-fun lemmaListContainsThenExtractedMapContains!693 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> b!4784710 (= lt!1946573 (lemmaListContainsThenExtractedMapContains!693 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4784711 () Bool)

(declare-fun res!2032217 () Bool)

(assert (=> b!4784711 (=> (not res!2032217) (not e!2987359))))

(declare-fun containsKeyBiggerList!501 (List!54166 K!15602) Bool)

(assert (=> b!4784711 (= res!2032217 (containsKeyBiggerList!501 (toList!6769 lm!2709) key!6641))))

(declare-fun b!4784712 () Bool)

(declare-fun getValue!51 (List!54166 K!15602) V!15848)

(assert (=> b!4784712 (= e!2987358 (= (getValue!51 (toList!6769 lm!2709) key!6641) v!11584))))

(declare-fun b!4784713 () Bool)

(declare-fun res!2032218 () Bool)

(assert (=> b!4784713 (=> (not res!2032218) (not e!2987359))))

(declare-fun allKeysSameHashInMap!2250 (ListLongMap!5191 Hashable!6845) Bool)

(assert (=> b!4784713 (= res!2032218 (allKeysSameHashInMap!2250 lm!2709 hashF!1687))))

(declare-fun b!4784714 () Bool)

(declare-fun res!2032221 () Bool)

(assert (=> b!4784714 (=> res!2032221 e!2987358)))

(assert (=> b!4784714 (= res!2032221 (or (and (is-Cons!54042 (toList!6769 lm!2709)) (= (_1!31569 (h!60462 (toList!6769 lm!2709))) lt!1946571)) (is-Cons!54042 (toList!6769 lm!2709))))))

(assert (= (and start!491812 res!2032219) b!4784713))

(assert (= (and b!4784713 res!2032218) b!4784711))

(assert (= (and b!4784711 res!2032217) b!4784710))

(assert (= (and b!4784710 (not res!2032220)) b!4784714))

(assert (= (and b!4784714 (not res!2032221)) b!4784712))

(assert (= start!491812 b!4784709))

(declare-fun m!5763602 () Bool)

(assert (=> b!4784711 m!5763602))

(declare-fun m!5763604 () Bool)

(assert (=> start!491812 m!5763604))

(declare-fun m!5763606 () Bool)

(assert (=> start!491812 m!5763606))

(declare-fun m!5763608 () Bool)

(assert (=> b!4784712 m!5763608))

(declare-fun m!5763610 () Bool)

(assert (=> b!4784713 m!5763610))

(declare-fun m!5763612 () Bool)

(assert (=> b!4784710 m!5763612))

(declare-fun m!5763614 () Bool)

(assert (=> b!4784710 m!5763614))

(declare-fun m!5763616 () Bool)

(assert (=> b!4784710 m!5763616))

(declare-fun m!5763618 () Bool)

(assert (=> b!4784710 m!5763618))

(declare-fun m!5763620 () Bool)

(assert (=> b!4784710 m!5763620))

(declare-fun m!5763622 () Bool)

(assert (=> b!4784710 m!5763622))

(declare-fun m!5763624 () Bool)

(assert (=> b!4784710 m!5763624))

(declare-fun m!5763626 () Bool)

(assert (=> b!4784710 m!5763626))

(declare-fun m!5763628 () Bool)

(assert (=> b!4784710 m!5763628))

(assert (=> b!4784710 m!5763614))

(declare-fun m!5763630 () Bool)

(assert (=> b!4784710 m!5763630))

(declare-fun m!5763632 () Bool)

(assert (=> b!4784710 m!5763632))

(assert (=> b!4784710 m!5763624))

(declare-fun m!5763634 () Bool)

(assert (=> b!4784710 m!5763634))

(declare-fun m!5763636 () Bool)

(assert (=> b!4784710 m!5763636))

(declare-fun m!5763638 () Bool)

(assert (=> b!4784710 m!5763638))

(push 1)

(assert (not b!4784711))

(assert tp_is_empty!33283)

(assert (not start!491812))

(assert tp_is_empty!33281)

(assert (not b!4784710))

(assert (not b!4784712))

(assert (not b!4784709))

(assert (not b!4784713))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1530542 () Bool)

(declare-fun res!2032245 () Bool)

(declare-fun e!2987375 () Bool)

(assert (=> d!1530542 (=> res!2032245 e!2987375)))

(declare-fun e!2987376 () Bool)

(assert (=> d!1530542 (= res!2032245 e!2987376)))

(declare-fun res!2032244 () Bool)

(assert (=> d!1530542 (=> (not res!2032244) (not e!2987376))))

(assert (=> d!1530542 (= res!2032244 (is-Cons!54042 (toList!6769 lm!2709)))))

(assert (=> d!1530542 (= (containsKeyBiggerList!501 (toList!6769 lm!2709) key!6641) e!2987375)))

(declare-fun b!4784739 () Bool)

(declare-fun containsKey!3848 (List!54165 K!15602) Bool)

(assert (=> b!4784739 (= e!2987376 (containsKey!3848 (_2!31569 (h!60462 (toList!6769 lm!2709))) key!6641))))

(declare-fun b!4784740 () Bool)

(declare-fun e!2987377 () Bool)

(assert (=> b!4784740 (= e!2987375 e!2987377)))

(declare-fun res!2032243 () Bool)

(assert (=> b!4784740 (=> (not res!2032243) (not e!2987377))))

(assert (=> b!4784740 (= res!2032243 (is-Cons!54042 (toList!6769 lm!2709)))))

(declare-fun b!4784741 () Bool)

(assert (=> b!4784741 (= e!2987377 (containsKeyBiggerList!501 (t!361616 (toList!6769 lm!2709)) key!6641))))

(assert (= (and d!1530542 res!2032244) b!4784739))

(assert (= (and d!1530542 (not res!2032245)) b!4784740))

(assert (= (and b!4784740 res!2032243) b!4784741))

(declare-fun m!5763678 () Bool)

(assert (=> b!4784739 m!5763678))

(declare-fun m!5763680 () Bool)

(assert (=> b!4784741 m!5763680))

(assert (=> b!4784711 d!1530542))

(declare-fun d!1530544 () Bool)

(assert (=> d!1530544 (= (get!18394 lt!1946570) (v!48217 lt!1946570))))

(assert (=> b!4784710 d!1530544))

(declare-fun d!1530546 () Bool)

(declare-fun e!2987384 () Bool)

(assert (=> d!1530546 e!2987384))

(declare-fun res!2032250 () Bool)

(assert (=> d!1530546 (=> res!2032250 e!2987384)))

(declare-fun lt!1946623 () Bool)

(assert (=> d!1530546 (= res!2032250 (not lt!1946623))))

(declare-fun lt!1946622 () Bool)

(assert (=> d!1530546 (= lt!1946623 lt!1946622)))

(declare-fun lt!1946620 () Unit!139439)

(declare-fun e!2987385 () Unit!139439)

(assert (=> d!1530546 (= lt!1946620 e!2987385)))

(declare-fun c!815648 () Bool)

(assert (=> d!1530546 (= c!815648 lt!1946622)))

(declare-fun containsKey!3849 (List!54166 (_ BitVec 64)) Bool)

(assert (=> d!1530546 (= lt!1946622 (containsKey!3849 (toList!6769 lm!2709) lt!1946571))))

(assert (=> d!1530546 (= (contains!17602 lm!2709 lt!1946571) lt!1946623)))

(declare-fun b!4784750 () Bool)

(declare-fun lt!1946621 () Unit!139439)

(assert (=> b!4784750 (= e!2987385 lt!1946621)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2097 (List!54166 (_ BitVec 64)) Unit!139439)

(assert (=> b!4784750 (= lt!1946621 (lemmaContainsKeyImpliesGetValueByKeyDefined!2097 (toList!6769 lm!2709) lt!1946571))))

(declare-datatypes ((Option!12975 0))(
  ( (None!12974) (Some!12974 (v!48223 List!54165)) )
))
(declare-fun isDefined!10118 (Option!12975) Bool)

(declare-fun getValueByKey!2304 (List!54166 (_ BitVec 64)) Option!12975)

(assert (=> b!4784750 (isDefined!10118 (getValueByKey!2304 (toList!6769 lm!2709) lt!1946571))))

(declare-fun b!4784751 () Bool)

(declare-fun Unit!139443 () Unit!139439)

(assert (=> b!4784751 (= e!2987385 Unit!139443)))

(declare-fun b!4784752 () Bool)

(assert (=> b!4784752 (= e!2987384 (isDefined!10118 (getValueByKey!2304 (toList!6769 lm!2709) lt!1946571)))))

(assert (= (and d!1530546 c!815648) b!4784750))

(assert (= (and d!1530546 (not c!815648)) b!4784751))

(assert (= (and d!1530546 (not res!2032250)) b!4784752))

(declare-fun m!5763682 () Bool)

(assert (=> d!1530546 m!5763682))

(declare-fun m!5763684 () Bool)

(assert (=> b!4784750 m!5763684))

(declare-fun m!5763686 () Bool)

(assert (=> b!4784750 m!5763686))

(assert (=> b!4784750 m!5763686))

(declare-fun m!5763688 () Bool)

(assert (=> b!4784750 m!5763688))

(assert (=> b!4784752 m!5763686))

(assert (=> b!4784752 m!5763686))

(assert (=> b!4784752 m!5763688))

(assert (=> b!4784710 d!1530546))

(declare-fun bs!1153301 () Bool)

(declare-fun d!1530550 () Bool)

(assert (= bs!1153301 (and d!1530550 start!491812)))

(declare-fun lambda!228988 () Int)

(assert (=> bs!1153301 (= lambda!228988 lambda!228978)))

(assert (=> d!1530550 (contains!17603 (extractMap!2372 (toList!6769 lm!2709)) key!6641)))

(declare-fun lt!1946627 () Unit!139439)

(declare-fun choose!34375 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> d!1530550 (= lt!1946627 (choose!34375 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530550 (forall!12145 (toList!6769 lm!2709) lambda!228988)))

(assert (=> d!1530550 (= (lemmaListContainsThenExtractedMapContains!693 lm!2709 key!6641 hashF!1687) lt!1946627)))

(declare-fun bs!1153302 () Bool)

(assert (= bs!1153302 d!1530550))

(assert (=> bs!1153302 m!5763624))

(assert (=> bs!1153302 m!5763624))

(assert (=> bs!1153302 m!5763634))

(declare-fun m!5763698 () Bool)

(assert (=> bs!1153302 m!5763698))

(declare-fun m!5763700 () Bool)

(assert (=> bs!1153302 m!5763700))

(assert (=> b!4784710 d!1530550))

(declare-fun d!1530556 () Bool)

(assert (=> d!1530556 (contains!17601 (toList!6769 lm!2709) (tuple2!56551 lt!1946571 lt!1946572))))

(declare-fun lt!1946630 () Unit!139439)

(declare-fun choose!34376 (ListLongMap!5191 (_ BitVec 64) List!54165) Unit!139439)

(assert (=> d!1530556 (= lt!1946630 (choose!34376 lm!2709 lt!1946571 lt!1946572))))

(assert (=> d!1530556 (contains!17602 lm!2709 lt!1946571)))

(assert (=> d!1530556 (= (lemmaGetValueImpliesTupleContained!624 lm!2709 lt!1946571 lt!1946572) lt!1946630)))

(declare-fun bs!1153303 () Bool)

(assert (= bs!1153303 d!1530556))

(declare-fun m!5763702 () Bool)

(assert (=> bs!1153303 m!5763702))

(declare-fun m!5763704 () Bool)

(assert (=> bs!1153303 m!5763704))

(assert (=> bs!1153303 m!5763618))

(assert (=> b!4784710 d!1530556))

(declare-fun b!4784773 () Bool)

(declare-fun e!2987399 () Bool)

(declare-datatypes ((List!54169 0))(
  ( (Nil!54045) (Cons!54045 (h!60465 K!15602) (t!361619 List!54169)) )
))
(declare-fun contains!17607 (List!54169 K!15602) Bool)

(declare-fun keys!19697 (ListMap!6241) List!54169)

(assert (=> b!4784773 (= e!2987399 (contains!17607 (keys!19697 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(declare-fun b!4784774 () Bool)

(declare-fun e!2987404 () List!54169)

(declare-fun getKeysList!1052 (List!54165) List!54169)

(assert (=> b!4784774 (= e!2987404 (getKeysList!1052 (toList!6770 (extractMap!2372 (toList!6769 lm!2709)))))))

(declare-fun b!4784776 () Bool)

(assert (=> b!4784776 (= e!2987404 (keys!19697 (extractMap!2372 (toList!6769 lm!2709))))))

(declare-fun bm!334818 () Bool)

(declare-fun call!334823 () Bool)

(assert (=> bm!334818 (= call!334823 (contains!17607 e!2987404 key!6641))))

(declare-fun c!815655 () Bool)

(declare-fun c!815656 () Bool)

(assert (=> bm!334818 (= c!815655 c!815656)))

(declare-fun b!4784777 () Bool)

(declare-fun e!2987403 () Bool)

(assert (=> b!4784777 (= e!2987403 (not (contains!17607 (keys!19697 (extractMap!2372 (toList!6769 lm!2709))) key!6641)))))

(declare-fun d!1530558 () Bool)

(declare-fun e!2987401 () Bool)

(assert (=> d!1530558 e!2987401))

(declare-fun res!2032260 () Bool)

(assert (=> d!1530558 (=> res!2032260 e!2987401)))

(assert (=> d!1530558 (= res!2032260 e!2987403)))

(declare-fun res!2032259 () Bool)

(assert (=> d!1530558 (=> (not res!2032259) (not e!2987403))))

(declare-fun lt!1946654 () Bool)

(assert (=> d!1530558 (= res!2032259 (not lt!1946654))))

(declare-fun lt!1946652 () Bool)

(assert (=> d!1530558 (= lt!1946654 lt!1946652)))

(declare-fun lt!1946651 () Unit!139439)

(declare-fun e!2987400 () Unit!139439)

(assert (=> d!1530558 (= lt!1946651 e!2987400)))

(assert (=> d!1530558 (= c!815656 lt!1946652)))

(declare-fun containsKey!3850 (List!54165 K!15602) Bool)

(assert (=> d!1530558 (= lt!1946652 (containsKey!3850 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(assert (=> d!1530558 (= (contains!17603 (extractMap!2372 (toList!6769 lm!2709)) key!6641) lt!1946654)))

(declare-fun b!4784775 () Bool)

(declare-fun e!2987402 () Unit!139439)

(declare-fun Unit!139444 () Unit!139439)

(assert (=> b!4784775 (= e!2987402 Unit!139444)))

(declare-fun b!4784778 () Bool)

(assert (=> b!4784778 (= e!2987400 e!2987402)))

(declare-fun c!815657 () Bool)

(assert (=> b!4784778 (= c!815657 call!334823)))

(declare-fun b!4784779 () Bool)

(assert (=> b!4784779 false))

(declare-fun lt!1946649 () Unit!139439)

(declare-fun lt!1946653 () Unit!139439)

(assert (=> b!4784779 (= lt!1946649 lt!1946653)))

(assert (=> b!4784779 (containsKey!3850 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1052 (List!54165 K!15602) Unit!139439)

(assert (=> b!4784779 (= lt!1946653 (lemmaInGetKeysListThenContainsKey!1052 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(declare-fun Unit!139445 () Unit!139439)

(assert (=> b!4784779 (= e!2987402 Unit!139445)))

(declare-fun b!4784780 () Bool)

(declare-fun lt!1946650 () Unit!139439)

(assert (=> b!4784780 (= e!2987400 lt!1946650)))

(declare-fun lt!1946647 () Unit!139439)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2098 (List!54165 K!15602) Unit!139439)

(assert (=> b!4784780 (= lt!1946647 (lemmaContainsKeyImpliesGetValueByKeyDefined!2098 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(declare-datatypes ((Option!12976 0))(
  ( (None!12975) (Some!12975 (v!48224 V!15848)) )
))
(declare-fun isDefined!10119 (Option!12976) Bool)

(declare-fun getValueByKey!2305 (List!54165 K!15602) Option!12976)

(assert (=> b!4784780 (isDefined!10119 (getValueByKey!2305 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(declare-fun lt!1946648 () Unit!139439)

(assert (=> b!4784780 (= lt!1946648 lt!1946647)))

(declare-fun lemmaInListThenGetKeysListContains!1047 (List!54165 K!15602) Unit!139439)

(assert (=> b!4784780 (= lt!1946650 (lemmaInListThenGetKeysListContains!1047 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641))))

(assert (=> b!4784780 call!334823))

(declare-fun b!4784781 () Bool)

(assert (=> b!4784781 (= e!2987401 e!2987399)))

(declare-fun res!2032258 () Bool)

(assert (=> b!4784781 (=> (not res!2032258) (not e!2987399))))

(assert (=> b!4784781 (= res!2032258 (isDefined!10119 (getValueByKey!2305 (toList!6770 (extractMap!2372 (toList!6769 lm!2709))) key!6641)))))

(assert (= (and d!1530558 c!815656) b!4784780))

(assert (= (and d!1530558 (not c!815656)) b!4784778))

(assert (= (and b!4784778 c!815657) b!4784779))

(assert (= (and b!4784778 (not c!815657)) b!4784775))

(assert (= (or b!4784780 b!4784778) bm!334818))

(assert (= (and bm!334818 c!815655) b!4784774))

(assert (= (and bm!334818 (not c!815655)) b!4784776))

(assert (= (and d!1530558 res!2032259) b!4784777))

(assert (= (and d!1530558 (not res!2032260)) b!4784781))

(assert (= (and b!4784781 res!2032258) b!4784773))

(assert (=> b!4784777 m!5763624))

(declare-fun m!5763706 () Bool)

(assert (=> b!4784777 m!5763706))

(assert (=> b!4784777 m!5763706))

(declare-fun m!5763708 () Bool)

(assert (=> b!4784777 m!5763708))

(assert (=> b!4784776 m!5763624))

(assert (=> b!4784776 m!5763706))

(declare-fun m!5763710 () Bool)

(assert (=> b!4784781 m!5763710))

(assert (=> b!4784781 m!5763710))

(declare-fun m!5763712 () Bool)

(assert (=> b!4784781 m!5763712))

(declare-fun m!5763714 () Bool)

(assert (=> bm!334818 m!5763714))

(declare-fun m!5763716 () Bool)

(assert (=> d!1530558 m!5763716))

(assert (=> b!4784773 m!5763624))

(assert (=> b!4784773 m!5763706))

(assert (=> b!4784773 m!5763706))

(assert (=> b!4784773 m!5763708))

(declare-fun m!5763718 () Bool)

(assert (=> b!4784780 m!5763718))

(assert (=> b!4784780 m!5763710))

(assert (=> b!4784780 m!5763710))

(assert (=> b!4784780 m!5763712))

(declare-fun m!5763720 () Bool)

(assert (=> b!4784780 m!5763720))

(assert (=> b!4784779 m!5763716))

(declare-fun m!5763722 () Bool)

(assert (=> b!4784779 m!5763722))

(declare-fun m!5763724 () Bool)

(assert (=> b!4784774 m!5763724))

(assert (=> b!4784710 d!1530558))

(declare-fun b!4784802 () Bool)

(declare-fun e!2987420 () Option!12973)

(assert (=> b!4784802 (= e!2987420 None!12972)))

(declare-fun b!4784803 () Bool)

(declare-fun e!2987418 () Bool)

(assert (=> b!4784803 (= e!2987418 (not (containsKey!3848 lt!1946572 key!6641)))))

(declare-fun b!4784804 () Bool)

(declare-fun e!2987421 () Option!12973)

(assert (=> b!4784804 (= e!2987421 e!2987420)))

(declare-fun c!815664 () Bool)

(assert (=> b!4784804 (= c!815664 (is-Cons!54041 lt!1946572))))

(declare-fun b!4784805 () Bool)

(assert (=> b!4784805 (= e!2987420 (getPair!817 (t!361615 lt!1946572) key!6641))))

(declare-fun b!4784806 () Bool)

(declare-fun e!2987417 () Bool)

(declare-fun e!2987419 () Bool)

(assert (=> b!4784806 (= e!2987417 e!2987419)))

(declare-fun res!2032269 () Bool)

(assert (=> b!4784806 (=> (not res!2032269) (not e!2987419))))

(declare-fun lt!1946667 () Option!12973)

(assert (=> b!4784806 (= res!2032269 (isDefined!10116 lt!1946667))))

(declare-fun b!4784807 () Bool)

(declare-fun res!2032271 () Bool)

(assert (=> b!4784807 (=> (not res!2032271) (not e!2987419))))

(assert (=> b!4784807 (= res!2032271 (= (_1!31568 (get!18394 lt!1946667)) key!6641))))

(declare-fun b!4784809 () Bool)

(assert (=> b!4784809 (= e!2987421 (Some!12972 (h!60461 lt!1946572)))))

(declare-fun b!4784808 () Bool)

(declare-fun contains!17608 (List!54165 tuple2!56548) Bool)

(assert (=> b!4784808 (= e!2987419 (contains!17608 lt!1946572 (get!18394 lt!1946667)))))

(declare-fun d!1530560 () Bool)

(assert (=> d!1530560 e!2987417))

(declare-fun res!2032272 () Bool)

(assert (=> d!1530560 (=> res!2032272 e!2987417)))

(assert (=> d!1530560 (= res!2032272 e!2987418)))

(declare-fun res!2032270 () Bool)

(assert (=> d!1530560 (=> (not res!2032270) (not e!2987418))))

(declare-fun isEmpty!29377 (Option!12973) Bool)

(assert (=> d!1530560 (= res!2032270 (isEmpty!29377 lt!1946667))))

(assert (=> d!1530560 (= lt!1946667 e!2987421)))

(declare-fun c!815665 () Bool)

(assert (=> d!1530560 (= c!815665 (and (is-Cons!54041 lt!1946572) (= (_1!31568 (h!60461 lt!1946572)) key!6641)))))

(declare-fun noDuplicateKeys!2304 (List!54165) Bool)

(assert (=> d!1530560 (noDuplicateKeys!2304 lt!1946572)))

(assert (=> d!1530560 (= (getPair!817 lt!1946572 key!6641) lt!1946667)))

(assert (= (and d!1530560 c!815665) b!4784809))

(assert (= (and d!1530560 (not c!815665)) b!4784804))

(assert (= (and b!4784804 c!815664) b!4784805))

(assert (= (and b!4784804 (not c!815664)) b!4784802))

(assert (= (and d!1530560 res!2032270) b!4784803))

(assert (= (and d!1530560 (not res!2032272)) b!4784806))

(assert (= (and b!4784806 res!2032269) b!4784807))

(assert (= (and b!4784807 res!2032271) b!4784808))

(declare-fun m!5763726 () Bool)

(assert (=> b!4784807 m!5763726))

(assert (=> b!4784808 m!5763726))

(assert (=> b!4784808 m!5763726))

(declare-fun m!5763728 () Bool)

(assert (=> b!4784808 m!5763728))

(declare-fun m!5763730 () Bool)

(assert (=> d!1530560 m!5763730))

(declare-fun m!5763732 () Bool)

(assert (=> d!1530560 m!5763732))

(declare-fun m!5763734 () Bool)

(assert (=> b!4784805 m!5763734))

(declare-fun m!5763736 () Bool)

(assert (=> b!4784806 m!5763736))

(declare-fun m!5763738 () Bool)

(assert (=> b!4784803 m!5763738))

(assert (=> b!4784710 d!1530560))

(declare-fun d!1530562 () Bool)

(declare-fun hash!4862 (Hashable!6845 K!15602) (_ BitVec 64))

(assert (=> d!1530562 (= (hash!4860 hashF!1687 key!6641) (hash!4862 hashF!1687 key!6641))))

(declare-fun bs!1153304 () Bool)

(assert (= bs!1153304 d!1530562))

(declare-fun m!5763740 () Bool)

(assert (=> bs!1153304 m!5763740))

(assert (=> b!4784710 d!1530562))

(declare-fun d!1530564 () Bool)

(declare-fun lt!1946676 () Bool)

(declare-fun content!9668 (List!54166) (Set tuple2!56550))

(assert (=> d!1530564 (= lt!1946676 (set.member lt!1946578 (content!9668 (toList!6769 lm!2709))))))

(declare-fun e!2987437 () Bool)

(assert (=> d!1530564 (= lt!1946676 e!2987437)))

(declare-fun res!2032283 () Bool)

(assert (=> d!1530564 (=> (not res!2032283) (not e!2987437))))

(assert (=> d!1530564 (= res!2032283 (is-Cons!54042 (toList!6769 lm!2709)))))

(assert (=> d!1530564 (= (contains!17601 (toList!6769 lm!2709) lt!1946578) lt!1946676)))

(declare-fun b!4784828 () Bool)

(declare-fun e!2987436 () Bool)

(assert (=> b!4784828 (= e!2987437 e!2987436)))

(declare-fun res!2032284 () Bool)

(assert (=> b!4784828 (=> res!2032284 e!2987436)))

(assert (=> b!4784828 (= res!2032284 (= (h!60462 (toList!6769 lm!2709)) lt!1946578))))

(declare-fun b!4784829 () Bool)

(assert (=> b!4784829 (= e!2987436 (contains!17601 (t!361616 (toList!6769 lm!2709)) lt!1946578))))

(assert (= (and d!1530564 res!2032283) b!4784828))

(assert (= (and b!4784828 (not res!2032284)) b!4784829))

(declare-fun m!5763742 () Bool)

(assert (=> d!1530564 m!5763742))

(declare-fun m!5763744 () Bool)

(assert (=> d!1530564 m!5763744))

(declare-fun m!5763746 () Bool)

(assert (=> b!4784829 m!5763746))

(assert (=> b!4784710 d!1530564))

(declare-fun bs!1153305 () Bool)

(declare-fun d!1530566 () Bool)

(assert (= bs!1153305 (and d!1530566 start!491812)))

(declare-fun lambda!228991 () Int)

(assert (=> bs!1153305 (= lambda!228991 lambda!228978)))

(declare-fun bs!1153306 () Bool)

(assert (= bs!1153306 (and d!1530566 d!1530550)))

(assert (=> bs!1153306 (= lambda!228991 lambda!228988)))

(declare-fun lt!1946687 () ListMap!6241)

(declare-fun invariantList!1706 (List!54165) Bool)

(assert (=> d!1530566 (invariantList!1706 (toList!6770 lt!1946687))))

(declare-fun e!2987446 () ListMap!6241)

(assert (=> d!1530566 (= lt!1946687 e!2987446)))

(declare-fun c!815675 () Bool)

(assert (=> d!1530566 (= c!815675 (is-Cons!54042 (toList!6769 lm!2709)))))

(assert (=> d!1530566 (forall!12145 (toList!6769 lm!2709) lambda!228991)))

(assert (=> d!1530566 (= (extractMap!2372 (toList!6769 lm!2709)) lt!1946687)))

(declare-fun b!4784843 () Bool)

(declare-fun addToMapMapFromBucket!1671 (List!54165 ListMap!6241) ListMap!6241)

(assert (=> b!4784843 (= e!2987446 (addToMapMapFromBucket!1671 (_2!31569 (h!60462 (toList!6769 lm!2709))) (extractMap!2372 (t!361616 (toList!6769 lm!2709)))))))

(declare-fun b!4784844 () Bool)

(assert (=> b!4784844 (= e!2987446 (ListMap!6242 Nil!54041))))

(assert (= (and d!1530566 c!815675) b!4784843))

(assert (= (and d!1530566 (not c!815675)) b!4784844))

(declare-fun m!5763768 () Bool)

(assert (=> d!1530566 m!5763768))

(declare-fun m!5763770 () Bool)

(assert (=> d!1530566 m!5763770))

(declare-fun m!5763772 () Bool)

(assert (=> b!4784843 m!5763772))

(assert (=> b!4784843 m!5763772))

(declare-fun m!5763774 () Bool)

(assert (=> b!4784843 m!5763774))

(assert (=> b!4784710 d!1530566))

(declare-fun bs!1153307 () Bool)

(declare-fun d!1530570 () Bool)

(assert (= bs!1153307 (and d!1530570 start!491812)))

(declare-fun lambda!228994 () Int)

(assert (=> bs!1153307 (= lambda!228994 lambda!228978)))

(declare-fun bs!1153308 () Bool)

(assert (= bs!1153308 (and d!1530570 d!1530550)))

(assert (=> bs!1153308 (= lambda!228994 lambda!228988)))

(declare-fun bs!1153309 () Bool)

(assert (= bs!1153309 (and d!1530570 d!1530566)))

(assert (=> bs!1153309 (= lambda!228994 lambda!228991)))

(assert (=> d!1530570 (contains!17602 lm!2709 (hash!4860 hashF!1687 key!6641))))

(declare-fun lt!1946692 () Unit!139439)

(declare-fun choose!34377 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> d!1530570 (= lt!1946692 (choose!34377 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530570 (forall!12145 (toList!6769 lm!2709) lambda!228994)))

(assert (=> d!1530570 (= (lemmaInGenMapThenLongMapContainsHash!1041 lm!2709 key!6641 hashF!1687) lt!1946692)))

(declare-fun bs!1153310 () Bool)

(assert (= bs!1153310 d!1530570))

(assert (=> bs!1153310 m!5763628))

(assert (=> bs!1153310 m!5763628))

(declare-fun m!5763776 () Bool)

(assert (=> bs!1153310 m!5763776))

(declare-fun m!5763778 () Bool)

(assert (=> bs!1153310 m!5763778))

(declare-fun m!5763780 () Bool)

(assert (=> bs!1153310 m!5763780))

(assert (=> b!4784710 d!1530570))

(declare-fun d!1530572 () Bool)

(declare-fun dynLambda!22026 (Int tuple2!56550) Bool)

(assert (=> d!1530572 (dynLambda!22026 lambda!228978 lt!1946578)))

(declare-fun lt!1946696 () Unit!139439)

(declare-fun choose!34378 (List!54166 Int tuple2!56550) Unit!139439)

(assert (=> d!1530572 (= lt!1946696 (choose!34378 (toList!6769 lm!2709) lambda!228978 lt!1946578))))

(declare-fun e!2987455 () Bool)

(assert (=> d!1530572 e!2987455))

(declare-fun res!2032296 () Bool)

(assert (=> d!1530572 (=> (not res!2032296) (not e!2987455))))

(assert (=> d!1530572 (= res!2032296 (forall!12145 (toList!6769 lm!2709) lambda!228978))))

(assert (=> d!1530572 (= (forallContained!4089 (toList!6769 lm!2709) lambda!228978 lt!1946578) lt!1946696)))

(declare-fun b!4784853 () Bool)

(assert (=> b!4784853 (= e!2987455 (contains!17601 (toList!6769 lm!2709) lt!1946578))))

(assert (= (and d!1530572 res!2032296) b!4784853))

(declare-fun b_lambda!186077 () Bool)

(assert (=> (not b_lambda!186077) (not d!1530572)))

(declare-fun m!5763788 () Bool)

(assert (=> d!1530572 m!5763788))

(declare-fun m!5763790 () Bool)

(assert (=> d!1530572 m!5763790))

(assert (=> d!1530572 m!5763604))

(assert (=> b!4784853 m!5763612))

(assert (=> b!4784710 d!1530572))

(declare-fun d!1530576 () Bool)

(declare-fun get!18396 (Option!12975) List!54165)

(assert (=> d!1530576 (= (apply!12900 lm!2709 lt!1946571) (get!18396 (getValueByKey!2304 (toList!6769 lm!2709) lt!1946571)))))

(declare-fun bs!1153311 () Bool)

(assert (= bs!1153311 d!1530576))

(assert (=> bs!1153311 m!5763686))

(assert (=> bs!1153311 m!5763686))

(declare-fun m!5763792 () Bool)

(assert (=> bs!1153311 m!5763792))

(assert (=> b!4784710 d!1530576))

(declare-fun d!1530578 () Bool)

(assert (=> d!1530578 (= (isDefined!10116 lt!1946570) (not (isEmpty!29377 lt!1946570)))))

(declare-fun bs!1153312 () Bool)

(assert (= bs!1153312 d!1530578))

(declare-fun m!5763794 () Bool)

(assert (=> bs!1153312 m!5763794))

(assert (=> b!4784710 d!1530578))

(declare-fun bs!1153313 () Bool)

(declare-fun d!1530580 () Bool)

(assert (= bs!1153313 (and d!1530580 start!491812)))

(declare-fun lambda!229001 () Int)

(assert (=> bs!1153313 (= lambda!229001 lambda!228978)))

(declare-fun bs!1153314 () Bool)

(assert (= bs!1153314 (and d!1530580 d!1530550)))

(assert (=> bs!1153314 (= lambda!229001 lambda!228988)))

(declare-fun bs!1153315 () Bool)

(assert (= bs!1153315 (and d!1530580 d!1530566)))

(assert (=> bs!1153315 (= lambda!229001 lambda!228991)))

(declare-fun bs!1153316 () Bool)

(assert (= bs!1153316 (and d!1530580 d!1530570)))

(assert (=> bs!1153316 (= lambda!229001 lambda!228994)))

(declare-fun b!4784864 () Bool)

(declare-fun e!2987461 () Bool)

(assert (=> b!4784864 (= e!2987461 (isDefined!10116 (getPair!817 (apply!12900 lm!2709 (hash!4860 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1946719 () Unit!139439)

(assert (=> b!4784864 (= lt!1946719 (forallContained!4089 (toList!6769 lm!2709) lambda!229001 (tuple2!56551 (hash!4860 hashF!1687 key!6641) (apply!12900 lm!2709 (hash!4860 hashF!1687 key!6641)))))))

(declare-fun lt!1946713 () Unit!139439)

(declare-fun lt!1946716 () Unit!139439)

(assert (=> b!4784864 (= lt!1946713 lt!1946716)))

(declare-fun lt!1946717 () (_ BitVec 64))

(declare-fun lt!1946714 () List!54165)

(assert (=> b!4784864 (contains!17601 (toList!6769 lm!2709) (tuple2!56551 lt!1946717 lt!1946714))))

(assert (=> b!4784864 (= lt!1946716 (lemmaGetValueImpliesTupleContained!624 lm!2709 lt!1946717 lt!1946714))))

(declare-fun e!2987460 () Bool)

(assert (=> b!4784864 e!2987460))

(declare-fun res!2032306 () Bool)

(assert (=> b!4784864 (=> (not res!2032306) (not e!2987460))))

(assert (=> b!4784864 (= res!2032306 (contains!17602 lm!2709 lt!1946717))))

(assert (=> b!4784864 (= lt!1946714 (apply!12900 lm!2709 (hash!4860 hashF!1687 key!6641)))))

(assert (=> b!4784864 (= lt!1946717 (hash!4860 hashF!1687 key!6641))))

(declare-fun lt!1946718 () Unit!139439)

(declare-fun lt!1946720 () Unit!139439)

(assert (=> b!4784864 (= lt!1946718 lt!1946720)))

(assert (=> b!4784864 (contains!17602 lm!2709 (hash!4860 hashF!1687 key!6641))))

(assert (=> b!4784864 (= lt!1946720 (lemmaInGenMapThenLongMapContainsHash!1041 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4784865 () Bool)

(assert (=> b!4784865 (= e!2987460 (= (getValueByKey!2304 (toList!6769 lm!2709) lt!1946717) (Some!12974 lt!1946714)))))

(declare-fun b!4784863 () Bool)

(declare-fun res!2032307 () Bool)

(assert (=> b!4784863 (=> (not res!2032307) (not e!2987461))))

(assert (=> b!4784863 (= res!2032307 (contains!17603 (extractMap!2372 (toList!6769 lm!2709)) key!6641))))

(declare-fun b!4784862 () Bool)

(declare-fun res!2032308 () Bool)

(assert (=> b!4784862 (=> (not res!2032308) (not e!2987461))))

(assert (=> b!4784862 (= res!2032308 (allKeysSameHashInMap!2250 lm!2709 hashF!1687))))

(assert (=> d!1530580 e!2987461))

(declare-fun res!2032305 () Bool)

(assert (=> d!1530580 (=> (not res!2032305) (not e!2987461))))

(assert (=> d!1530580 (= res!2032305 (forall!12145 (toList!6769 lm!2709) lambda!229001))))

(declare-fun lt!1946715 () Unit!139439)

(declare-fun choose!34379 (ListLongMap!5191 K!15602 Hashable!6845) Unit!139439)

(assert (=> d!1530580 (= lt!1946715 (choose!34379 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530580 (forall!12145 (toList!6769 lm!2709) lambda!229001)))

(assert (=> d!1530580 (= (lemmaInGenMapThenGetPairDefined!591 lm!2709 key!6641 hashF!1687) lt!1946715)))

(assert (= (and d!1530580 res!2032305) b!4784862))

(assert (= (and b!4784862 res!2032308) b!4784863))

(assert (= (and b!4784863 res!2032307) b!4784864))

(assert (= (and b!4784864 res!2032306) b!4784865))

(assert (=> b!4784863 m!5763624))

(assert (=> b!4784863 m!5763624))

(assert (=> b!4784863 m!5763634))

(declare-fun m!5763796 () Bool)

(assert (=> d!1530580 m!5763796))

(declare-fun m!5763798 () Bool)

(assert (=> d!1530580 m!5763798))

(assert (=> d!1530580 m!5763796))

(assert (=> b!4784862 m!5763610))

(declare-fun m!5763800 () Bool)

(assert (=> b!4784864 m!5763800))

(assert (=> b!4784864 m!5763628))

(declare-fun m!5763802 () Bool)

(assert (=> b!4784864 m!5763802))

(assert (=> b!4784864 m!5763628))

(declare-fun m!5763804 () Bool)

(assert (=> b!4784864 m!5763804))

(assert (=> b!4784864 m!5763630))

(declare-fun m!5763806 () Bool)

(assert (=> b!4784864 m!5763806))

(declare-fun m!5763808 () Bool)

(assert (=> b!4784864 m!5763808))

(declare-fun m!5763810 () Bool)

(assert (=> b!4784864 m!5763810))

(assert (=> b!4784864 m!5763628))

(assert (=> b!4784864 m!5763776))

(assert (=> b!4784864 m!5763802))

(assert (=> b!4784864 m!5763806))

(declare-fun m!5763812 () Bool)

(assert (=> b!4784864 m!5763812))

(declare-fun m!5763814 () Bool)

(assert (=> b!4784865 m!5763814))

(assert (=> b!4784710 d!1530580))

(declare-fun d!1530582 () Bool)

(declare-fun res!2032313 () Bool)

(declare-fun e!2987466 () Bool)

(assert (=> d!1530582 (=> res!2032313 e!2987466)))

(assert (=> d!1530582 (= res!2032313 (is-Nil!54042 (toList!6769 lm!2709)))))

(assert (=> d!1530582 (= (forall!12145 (toList!6769 lm!2709) lambda!228978) e!2987466)))

(declare-fun b!4784870 () Bool)

(declare-fun e!2987467 () Bool)

(assert (=> b!4784870 (= e!2987466 e!2987467)))

(declare-fun res!2032314 () Bool)

(assert (=> b!4784870 (=> (not res!2032314) (not e!2987467))))

(assert (=> b!4784870 (= res!2032314 (dynLambda!22026 lambda!228978 (h!60462 (toList!6769 lm!2709))))))

(declare-fun b!4784871 () Bool)

(assert (=> b!4784871 (= e!2987467 (forall!12145 (t!361616 (toList!6769 lm!2709)) lambda!228978))))

(assert (= (and d!1530582 (not res!2032313)) b!4784870))

(assert (= (and b!4784870 res!2032314) b!4784871))

(declare-fun b_lambda!186079 () Bool)

(assert (=> (not b_lambda!186079) (not b!4784870)))

(declare-fun m!5763816 () Bool)

(assert (=> b!4784870 m!5763816))

(declare-fun m!5763818 () Bool)

(assert (=> b!4784871 m!5763818))

(assert (=> start!491812 d!1530582))

(declare-fun d!1530584 () Bool)

(declare-fun isStrictlySorted!856 (List!54166) Bool)

(assert (=> d!1530584 (= (inv!69629 lm!2709) (isStrictlySorted!856 (toList!6769 lm!2709)))))

(declare-fun bs!1153317 () Bool)

(assert (= bs!1153317 d!1530584))

(declare-fun m!5763820 () Bool)

(assert (=> bs!1153317 m!5763820))

(assert (=> start!491812 d!1530584))

(declare-fun bs!1153318 () Bool)

(declare-fun d!1530586 () Bool)

(assert (= bs!1153318 (and d!1530586 d!1530550)))

(declare-fun lambda!229004 () Int)

(assert (=> bs!1153318 (not (= lambda!229004 lambda!228988))))

(declare-fun bs!1153319 () Bool)

(assert (= bs!1153319 (and d!1530586 d!1530566)))

(assert (=> bs!1153319 (not (= lambda!229004 lambda!228991))))

(declare-fun bs!1153320 () Bool)

(assert (= bs!1153320 (and d!1530586 start!491812)))

(assert (=> bs!1153320 (not (= lambda!229004 lambda!228978))))

(declare-fun bs!1153321 () Bool)

(assert (= bs!1153321 (and d!1530586 d!1530580)))

(assert (=> bs!1153321 (not (= lambda!229004 lambda!229001))))

(declare-fun bs!1153322 () Bool)

(assert (= bs!1153322 (and d!1530586 d!1530570)))

(assert (=> bs!1153322 (not (= lambda!229004 lambda!228994))))

(assert (=> d!1530586 true))

(assert (=> d!1530586 (= (allKeysSameHashInMap!2250 lm!2709 hashF!1687) (forall!12145 (toList!6769 lm!2709) lambda!229004))))

(declare-fun bs!1153323 () Bool)

(assert (= bs!1153323 d!1530586))

(declare-fun m!5763822 () Bool)

(assert (=> bs!1153323 m!5763822))

(assert (=> b!4784713 d!1530586))

(declare-fun d!1530588 () Bool)

(declare-fun c!815678 () Bool)

(declare-fun e!2987473 () Bool)

(assert (=> d!1530588 (= c!815678 e!2987473)))

(declare-fun res!2032317 () Bool)

(assert (=> d!1530588 (=> (not res!2032317) (not e!2987473))))

(assert (=> d!1530588 (= res!2032317 (is-Cons!54042 (toList!6769 lm!2709)))))

(declare-fun e!2987472 () V!15848)

(assert (=> d!1530588 (= (getValue!51 (toList!6769 lm!2709) key!6641) e!2987472)))

(declare-fun b!4784882 () Bool)

(assert (=> b!4784882 (= e!2987473 (containsKey!3848 (_2!31569 (h!60462 (toList!6769 lm!2709))) key!6641))))

(declare-fun b!4784880 () Bool)

(assert (=> b!4784880 (= e!2987472 (_2!31568 (get!18394 (getPair!817 (_2!31569 (h!60462 (toList!6769 lm!2709))) key!6641))))))

(declare-fun b!4784881 () Bool)

(assert (=> b!4784881 (= e!2987472 (getValue!51 (t!361616 (toList!6769 lm!2709)) key!6641))))

(assert (= (and d!1530588 res!2032317) b!4784882))

(assert (= (and d!1530588 c!815678) b!4784880))

(assert (= (and d!1530588 (not c!815678)) b!4784881))

(assert (=> b!4784882 m!5763678))

(declare-fun m!5763824 () Bool)

(assert (=> b!4784880 m!5763824))

(assert (=> b!4784880 m!5763824))

(declare-fun m!5763826 () Bool)

(assert (=> b!4784880 m!5763826))

(declare-fun m!5763828 () Bool)

(assert (=> b!4784881 m!5763828))

(assert (=> b!4784712 d!1530588))

(declare-fun b!4784887 () Bool)

(declare-fun e!2987476 () Bool)

(declare-fun tp!1357593 () Bool)

(declare-fun tp!1357594 () Bool)

(assert (=> b!4784887 (= e!2987476 (and tp!1357593 tp!1357594))))

(assert (=> b!4784709 (= tp!1357585 e!2987476)))

(assert (= (and b!4784709 (is-Cons!54042 (toList!6769 lm!2709))) b!4784887))

(declare-fun b_lambda!186081 () Bool)

(assert (= b_lambda!186079 (or start!491812 b_lambda!186081)))

(declare-fun bs!1153324 () Bool)

(declare-fun d!1530590 () Bool)

(assert (= bs!1153324 (and d!1530590 start!491812)))

(assert (=> bs!1153324 (= (dynLambda!22026 lambda!228978 (h!60462 (toList!6769 lm!2709))) (noDuplicateKeys!2304 (_2!31569 (h!60462 (toList!6769 lm!2709)))))))

(declare-fun m!5763830 () Bool)

(assert (=> bs!1153324 m!5763830))

(assert (=> b!4784870 d!1530590))

(declare-fun b_lambda!186083 () Bool)

(assert (= b_lambda!186077 (or start!491812 b_lambda!186083)))

(declare-fun bs!1153325 () Bool)

(declare-fun d!1530592 () Bool)

(assert (= bs!1153325 (and d!1530592 start!491812)))

(assert (=> bs!1153325 (= (dynLambda!22026 lambda!228978 lt!1946578) (noDuplicateKeys!2304 (_2!31569 lt!1946578)))))

(declare-fun m!5763832 () Bool)

(assert (=> bs!1153325 m!5763832))

(assert (=> d!1530572 d!1530592))

(push 1)

(assert (not b!4784805))

(assert (not d!1530584))

(assert (not d!1530546))

(assert (not bs!1153325))

(assert tp_is_empty!33283)

(assert (not d!1530576))

(assert (not b!4784750))

(assert (not d!1530558))

(assert (not b!4784880))

(assert (not b!4784777))

(assert (not b!4784882))

(assert (not b!4784887))

(assert (not d!1530580))

(assert (not b!4784776))

(assert (not b!4784853))

(assert (not b!4784863))

(assert (not d!1530550))

(assert (not d!1530564))

(assert (not b!4784808))

(assert (not b!4784881))

(assert (not b!4784773))

(assert (not b_lambda!186081))

(assert (not b!4784871))

(assert (not b!4784781))

(assert (not b!4784741))

(assert (not b!4784864))

(assert (not b!4784774))

(assert (not d!1530566))

(assert tp_is_empty!33281)

(assert (not d!1530586))

(assert (not b!4784829))

(assert (not d!1530556))

(assert (not b_lambda!186083))

(assert (not d!1530578))

(assert (not b!4784806))

(assert (not b!4784780))

(assert (not bm!334818))

(assert (not b!4784807))

(assert (not d!1530572))

(assert (not b!4784752))

(assert (not bs!1153324))

(assert (not b!4784843))

(assert (not d!1530570))

(assert (not b!4784803))

(assert (not b!4784779))

(assert (not b!4784865))

(assert (not d!1530562))

(assert (not b!4784862))

(assert (not b!4784739))

(assert (not d!1530560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

