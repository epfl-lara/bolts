; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499032 () Bool)

(assert start!499032)

(declare-fun b!4818680 () Bool)

(declare-fun e!3010652 () Bool)

(declare-fun e!3010651 () Bool)

(assert (=> b!4818680 (= e!3010652 e!3010651)))

(declare-fun res!2050242 () Bool)

(assert (=> b!4818680 (=> (not res!2050242) (not e!3010651))))

(declare-datatypes ((V!16748 0))(
  ( (V!16749 (val!21507 Int)) )
))
(declare-datatypes ((K!16502 0))(
  ( (K!16503 (val!21508 Int)) )
))
(declare-datatypes ((tuple2!57950 0))(
  ( (tuple2!57951 (_1!32269 K!16502) (_2!32269 V!16748)) )
))
(declare-datatypes ((List!54957 0))(
  ( (Nil!54833) (Cons!54833 (h!61267 tuple2!57950) (t!362453 List!54957)) )
))
(declare-datatypes ((tuple2!57952 0))(
  ( (tuple2!57953 (_1!32270 (_ BitVec 64)) (_2!32270 List!54957)) )
))
(declare-datatypes ((List!54958 0))(
  ( (Nil!54834) (Cons!54834 (h!61268 tuple2!57952) (t!362454 List!54958)) )
))
(declare-datatypes ((ListLongMap!5873 0))(
  ( (ListLongMap!5874 (toList!7385 List!54958)) )
))
(declare-fun lm!2280 () ListLongMap!5873)

(declare-fun lt!1968343 () (_ BitVec 64))

(declare-fun contains!18659 (ListLongMap!5873 (_ BitVec 64)) Bool)

(assert (=> b!4818680 (= res!2050242 (contains!18659 lm!2280 lt!1968343))))

(declare-datatypes ((Hashable!7205 0))(
  ( (HashableExt!7204 (__x!33480 Int)) )
))
(declare-fun hashF!1509 () Hashable!7205)

(declare-fun key!5428 () K!16502)

(declare-fun hash!5283 (Hashable!7205 K!16502) (_ BitVec 64))

(assert (=> b!4818680 (= lt!1968343 (hash!5283 hashF!1509 key!5428))))

(declare-fun res!2050238 () Bool)

(assert (=> start!499032 (=> (not res!2050238) (not e!3010652))))

(declare-fun lambda!235071 () Int)

(declare-fun forall!12519 (List!54958 Int) Bool)

(assert (=> start!499032 (= res!2050238 (forall!12519 (toList!7385 lm!2280) lambda!235071))))

(assert (=> start!499032 e!3010652))

(declare-fun e!3010650 () Bool)

(declare-fun inv!70403 (ListLongMap!5873) Bool)

(assert (=> start!499032 (and (inv!70403 lm!2280) e!3010650)))

(assert (=> start!499032 true))

(declare-fun tp_is_empty!34295 () Bool)

(assert (=> start!499032 tp_is_empty!34295))

(declare-fun b!4818681 () Bool)

(declare-fun res!2050240 () Bool)

(assert (=> b!4818681 (=> (not res!2050240) (not e!3010652))))

(declare-fun allKeysSameHashInMap!2521 (ListLongMap!5873 Hashable!7205) Bool)

(assert (=> b!4818681 (= res!2050240 (allKeysSameHashInMap!2521 lm!2280 hashF!1509))))

(declare-fun b!4818682 () Bool)

(declare-fun tp!1362106 () Bool)

(assert (=> b!4818682 (= e!3010650 tp!1362106)))

(declare-fun b!4818683 () Bool)

(assert (=> b!4818683 (= e!3010651 (not (forall!12519 (t!362454 (toList!7385 lm!2280)) lambda!235071)))))

(declare-fun lt!1968344 () ListLongMap!5873)

(declare-datatypes ((ListMap!6791 0))(
  ( (ListMap!6792 (toList!7386 List!54957)) )
))
(declare-fun contains!18660 (ListMap!6791 K!16502) Bool)

(declare-fun extractMap!2647 (List!54958) ListMap!6791)

(assert (=> b!4818683 (not (contains!18660 (extractMap!2647 (toList!7385 lt!1968344)) key!5428))))

(declare-datatypes ((Unit!142152 0))(
  ( (Unit!142153) )
))
(declare-fun lt!1968345 () Unit!142152)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!79 (ListLongMap!5873 K!16502 Hashable!7205) Unit!142152)

(assert (=> b!4818683 (= lt!1968345 (lemmaHashNotInLongMapThenNotInGenerated!79 lt!1968344 key!5428 hashF!1509))))

(declare-fun tail!9359 (ListLongMap!5873) ListLongMap!5873)

(assert (=> b!4818683 (= lt!1968344 (tail!9359 lm!2280))))

(declare-fun b!4818684 () Bool)

(declare-fun res!2050239 () Bool)

(assert (=> b!4818684 (=> (not res!2050239) (not e!3010651))))

(assert (=> b!4818684 (= res!2050239 (and (is-Cons!54834 (toList!7385 lm!2280)) (= (_1!32270 (h!61268 (toList!7385 lm!2280))) lt!1968343)))))

(declare-fun b!4818685 () Bool)

(declare-fun res!2050241 () Bool)

(assert (=> b!4818685 (=> (not res!2050241) (not e!3010651))))

(declare-fun containsKey!4265 (List!54957 K!16502) Bool)

(declare-fun apply!13292 (ListLongMap!5873 (_ BitVec 64)) List!54957)

(assert (=> b!4818685 (= res!2050241 (not (containsKey!4265 (apply!13292 lm!2280 lt!1968343) key!5428)))))

(assert (= (and start!499032 res!2050238) b!4818681))

(assert (= (and b!4818681 res!2050240) b!4818680))

(assert (= (and b!4818680 res!2050242) b!4818685))

(assert (= (and b!4818685 res!2050241) b!4818684))

(assert (= (and b!4818684 res!2050239) b!4818683))

(assert (= start!499032 b!4818682))

(declare-fun m!5805580 () Bool)

(assert (=> b!4818683 m!5805580))

(declare-fun m!5805582 () Bool)

(assert (=> b!4818683 m!5805582))

(declare-fun m!5805584 () Bool)

(assert (=> b!4818683 m!5805584))

(declare-fun m!5805586 () Bool)

(assert (=> b!4818683 m!5805586))

(declare-fun m!5805588 () Bool)

(assert (=> b!4818683 m!5805588))

(assert (=> b!4818683 m!5805582))

(declare-fun m!5805590 () Bool)

(assert (=> b!4818681 m!5805590))

(declare-fun m!5805592 () Bool)

(assert (=> start!499032 m!5805592))

(declare-fun m!5805594 () Bool)

(assert (=> start!499032 m!5805594))

(declare-fun m!5805596 () Bool)

(assert (=> b!4818685 m!5805596))

(assert (=> b!4818685 m!5805596))

(declare-fun m!5805598 () Bool)

(assert (=> b!4818685 m!5805598))

(declare-fun m!5805600 () Bool)

(assert (=> b!4818680 m!5805600))

(declare-fun m!5805602 () Bool)

(assert (=> b!4818680 m!5805602))

(push 1)

(assert tp_is_empty!34295)

(assert (not b!4818683))

(assert (not b!4818682))

(assert (not b!4818681))

(assert (not b!4818685))

(assert (not b!4818680))

(assert (not start!499032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1161142 () Bool)

(declare-fun d!1542564 () Bool)

(assert (= bs!1161142 (and d!1542564 start!499032)))

(declare-fun lambda!235079 () Int)

(assert (=> bs!1161142 (not (= lambda!235079 lambda!235071))))

(assert (=> d!1542564 true))

(assert (=> d!1542564 (= (allKeysSameHashInMap!2521 lm!2280 hashF!1509) (forall!12519 (toList!7385 lm!2280) lambda!235079))))

(declare-fun bs!1161143 () Bool)

(assert (= bs!1161143 d!1542564))

(declare-fun m!5805628 () Bool)

(assert (=> bs!1161143 m!5805628))

(assert (=> b!4818681 d!1542564))

(declare-fun d!1542566 () Bool)

(declare-fun res!2050262 () Bool)

(declare-fun e!3010666 () Bool)

(assert (=> d!1542566 (=> res!2050262 e!3010666)))

(assert (=> d!1542566 (= res!2050262 (is-Nil!54834 (toList!7385 lm!2280)))))

(assert (=> d!1542566 (= (forall!12519 (toList!7385 lm!2280) lambda!235071) e!3010666)))

(declare-fun b!4818710 () Bool)

(declare-fun e!3010667 () Bool)

(assert (=> b!4818710 (= e!3010666 e!3010667)))

(declare-fun res!2050263 () Bool)

(assert (=> b!4818710 (=> (not res!2050263) (not e!3010667))))

(declare-fun dynLambda!22176 (Int tuple2!57952) Bool)

(assert (=> b!4818710 (= res!2050263 (dynLambda!22176 lambda!235071 (h!61268 (toList!7385 lm!2280))))))

(declare-fun b!4818711 () Bool)

(assert (=> b!4818711 (= e!3010667 (forall!12519 (t!362454 (toList!7385 lm!2280)) lambda!235071))))

(assert (= (and d!1542566 (not res!2050262)) b!4818710))

(assert (= (and b!4818710 res!2050263) b!4818711))

(declare-fun b_lambda!188777 () Bool)

(assert (=> (not b_lambda!188777) (not b!4818710)))

(declare-fun m!5805630 () Bool)

(assert (=> b!4818710 m!5805630))

(assert (=> b!4818711 m!5805586))

(assert (=> start!499032 d!1542566))

(declare-fun d!1542568 () Bool)

(declare-fun isStrictlySorted!958 (List!54958) Bool)

(assert (=> d!1542568 (= (inv!70403 lm!2280) (isStrictlySorted!958 (toList!7385 lm!2280)))))

(declare-fun bs!1161144 () Bool)

(assert (= bs!1161144 d!1542568))

(declare-fun m!5805632 () Bool)

(assert (=> bs!1161144 m!5805632))

(assert (=> start!499032 d!1542568))

(declare-fun d!1542572 () Bool)

(declare-fun res!2050268 () Bool)

(declare-fun e!3010672 () Bool)

(assert (=> d!1542572 (=> res!2050268 e!3010672)))

(assert (=> d!1542572 (= res!2050268 (and (is-Cons!54833 (apply!13292 lm!2280 lt!1968343)) (= (_1!32269 (h!61267 (apply!13292 lm!2280 lt!1968343))) key!5428)))))

(assert (=> d!1542572 (= (containsKey!4265 (apply!13292 lm!2280 lt!1968343) key!5428) e!3010672)))

(declare-fun b!4818716 () Bool)

(declare-fun e!3010673 () Bool)

(assert (=> b!4818716 (= e!3010672 e!3010673)))

(declare-fun res!2050269 () Bool)

(assert (=> b!4818716 (=> (not res!2050269) (not e!3010673))))

(assert (=> b!4818716 (= res!2050269 (is-Cons!54833 (apply!13292 lm!2280 lt!1968343)))))

(declare-fun b!4818717 () Bool)

(assert (=> b!4818717 (= e!3010673 (containsKey!4265 (t!362453 (apply!13292 lm!2280 lt!1968343)) key!5428))))

(assert (= (and d!1542572 (not res!2050268)) b!4818716))

(assert (= (and b!4818716 res!2050269) b!4818717))

(declare-fun m!5805634 () Bool)

(assert (=> b!4818717 m!5805634))

(assert (=> b!4818685 d!1542572))

(declare-fun d!1542574 () Bool)

(declare-datatypes ((Option!13448 0))(
  ( (None!13447) (Some!13447 (v!49114 List!54957)) )
))
(declare-fun get!18764 (Option!13448) List!54957)

(declare-fun getValueByKey!2575 (List!54958 (_ BitVec 64)) Option!13448)

(assert (=> d!1542574 (= (apply!13292 lm!2280 lt!1968343) (get!18764 (getValueByKey!2575 (toList!7385 lm!2280) lt!1968343)))))

(declare-fun bs!1161145 () Bool)

(assert (= bs!1161145 d!1542574))

(declare-fun m!5805636 () Bool)

(assert (=> bs!1161145 m!5805636))

(assert (=> bs!1161145 m!5805636))

(declare-fun m!5805638 () Bool)

(assert (=> bs!1161145 m!5805638))

(assert (=> b!4818685 d!1542574))

(declare-fun d!1542576 () Bool)

(declare-fun e!3010683 () Bool)

(assert (=> d!1542576 e!3010683))

(declare-fun res!2050276 () Bool)

(assert (=> d!1542576 (=> res!2050276 e!3010683)))

(declare-fun lt!1968366 () Bool)

(assert (=> d!1542576 (= res!2050276 (not lt!1968366))))

(declare-fun lt!1968365 () Bool)

(assert (=> d!1542576 (= lt!1968366 lt!1968365)))

(declare-fun lt!1968364 () Unit!142152)

(declare-fun e!3010682 () Unit!142152)

(assert (=> d!1542576 (= lt!1968364 e!3010682)))

(declare-fun c!821235 () Bool)

(assert (=> d!1542576 (= c!821235 lt!1968365)))

(declare-fun containsKey!4267 (List!54958 (_ BitVec 64)) Bool)

(assert (=> d!1542576 (= lt!1968365 (containsKey!4267 (toList!7385 lm!2280) lt!1968343))))

(assert (=> d!1542576 (= (contains!18659 lm!2280 lt!1968343) lt!1968366)))

(declare-fun b!4818730 () Bool)

(declare-fun lt!1968363 () Unit!142152)

(assert (=> b!4818730 (= e!3010682 lt!1968363)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2361 (List!54958 (_ BitVec 64)) Unit!142152)

(assert (=> b!4818730 (= lt!1968363 (lemmaContainsKeyImpliesGetValueByKeyDefined!2361 (toList!7385 lm!2280) lt!1968343))))

(declare-fun isDefined!10564 (Option!13448) Bool)

(assert (=> b!4818730 (isDefined!10564 (getValueByKey!2575 (toList!7385 lm!2280) lt!1968343))))

(declare-fun b!4818731 () Bool)

(declare-fun Unit!142156 () Unit!142152)

(assert (=> b!4818731 (= e!3010682 Unit!142156)))

(declare-fun b!4818732 () Bool)

(assert (=> b!4818732 (= e!3010683 (isDefined!10564 (getValueByKey!2575 (toList!7385 lm!2280) lt!1968343)))))

(assert (= (and d!1542576 c!821235) b!4818730))

(assert (= (and d!1542576 (not c!821235)) b!4818731))

(assert (= (and d!1542576 (not res!2050276)) b!4818732))

(declare-fun m!5805642 () Bool)

(assert (=> d!1542576 m!5805642))

(declare-fun m!5805644 () Bool)

(assert (=> b!4818730 m!5805644))

(assert (=> b!4818730 m!5805636))

(assert (=> b!4818730 m!5805636))

(declare-fun m!5805646 () Bool)

(assert (=> b!4818730 m!5805646))

(assert (=> b!4818732 m!5805636))

(assert (=> b!4818732 m!5805636))

(assert (=> b!4818732 m!5805646))

(assert (=> b!4818680 d!1542576))

(declare-fun d!1542580 () Bool)

(declare-fun hash!5285 (Hashable!7205 K!16502) (_ BitVec 64))

(assert (=> d!1542580 (= (hash!5283 hashF!1509 key!5428) (hash!5285 hashF!1509 key!5428))))

(declare-fun bs!1161148 () Bool)

(assert (= bs!1161148 d!1542580))

(declare-fun m!5805648 () Bool)

(assert (=> bs!1161148 m!5805648))

(assert (=> b!4818680 d!1542580))

(declare-fun d!1542582 () Bool)

(declare-fun tail!9361 (List!54958) List!54958)

(assert (=> d!1542582 (= (tail!9359 lm!2280) (ListLongMap!5874 (tail!9361 (toList!7385 lm!2280))))))

(declare-fun bs!1161149 () Bool)

(assert (= bs!1161149 d!1542582))

(declare-fun m!5805650 () Bool)

(assert (=> bs!1161149 m!5805650))

(assert (=> b!4818683 d!1542582))

(declare-fun bs!1161152 () Bool)

(declare-fun d!1542584 () Bool)

(assert (= bs!1161152 (and d!1542584 start!499032)))

(declare-fun lambda!235085 () Int)

(assert (=> bs!1161152 (= lambda!235085 lambda!235071)))

(declare-fun bs!1161153 () Bool)

(assert (= bs!1161153 (and d!1542584 d!1542564)))

(assert (=> bs!1161153 (not (= lambda!235085 lambda!235079))))

(assert (=> d!1542584 (not (contains!18660 (extractMap!2647 (toList!7385 lt!1968344)) key!5428))))

(declare-fun lt!1968369 () Unit!142152)

(declare-fun choose!34976 (ListLongMap!5873 K!16502 Hashable!7205) Unit!142152)

(assert (=> d!1542584 (= lt!1968369 (choose!34976 lt!1968344 key!5428 hashF!1509))))

(assert (=> d!1542584 (forall!12519 (toList!7385 lt!1968344) lambda!235085)))

(assert (=> d!1542584 (= (lemmaHashNotInLongMapThenNotInGenerated!79 lt!1968344 key!5428 hashF!1509) lt!1968369)))

(declare-fun bs!1161154 () Bool)

(assert (= bs!1161154 d!1542584))

(assert (=> bs!1161154 m!5805582))

(assert (=> bs!1161154 m!5805582))

(assert (=> bs!1161154 m!5805584))

(declare-fun m!5805660 () Bool)

(assert (=> bs!1161154 m!5805660))

(declare-fun m!5805662 () Bool)

(assert (=> bs!1161154 m!5805662))

(assert (=> b!4818683 d!1542584))

(declare-fun d!1542592 () Bool)

(declare-fun res!2050279 () Bool)

(declare-fun e!3010686 () Bool)

(assert (=> d!1542592 (=> res!2050279 e!3010686)))

(assert (=> d!1542592 (= res!2050279 (is-Nil!54834 (t!362454 (toList!7385 lm!2280))))))

(assert (=> d!1542592 (= (forall!12519 (t!362454 (toList!7385 lm!2280)) lambda!235071) e!3010686)))

(declare-fun b!4818735 () Bool)

(declare-fun e!3010687 () Bool)

(assert (=> b!4818735 (= e!3010686 e!3010687)))

(declare-fun res!2050280 () Bool)

(assert (=> b!4818735 (=> (not res!2050280) (not e!3010687))))

(assert (=> b!4818735 (= res!2050280 (dynLambda!22176 lambda!235071 (h!61268 (t!362454 (toList!7385 lm!2280)))))))

(declare-fun b!4818736 () Bool)

(assert (=> b!4818736 (= e!3010687 (forall!12519 (t!362454 (t!362454 (toList!7385 lm!2280))) lambda!235071))))

(assert (= (and d!1542592 (not res!2050279)) b!4818735))

(assert (= (and b!4818735 res!2050280) b!4818736))

(declare-fun b_lambda!188779 () Bool)

(assert (=> (not b_lambda!188779) (not b!4818735)))

(declare-fun m!5805664 () Bool)

(assert (=> b!4818735 m!5805664))

(declare-fun m!5805666 () Bool)

(assert (=> b!4818736 m!5805666))

(assert (=> b!4818683 d!1542592))

(declare-fun bs!1161155 () Bool)

(declare-fun d!1542594 () Bool)

(assert (= bs!1161155 (and d!1542594 start!499032)))

(declare-fun lambda!235088 () Int)

(assert (=> bs!1161155 (= lambda!235088 lambda!235071)))

(declare-fun bs!1161156 () Bool)

(assert (= bs!1161156 (and d!1542594 d!1542564)))

(assert (=> bs!1161156 (not (= lambda!235088 lambda!235079))))

(declare-fun bs!1161157 () Bool)

(assert (= bs!1161157 (and d!1542594 d!1542584)))

(assert (=> bs!1161157 (= lambda!235088 lambda!235085)))

(declare-fun lt!1968372 () ListMap!6791)

(declare-fun invariantList!1795 (List!54957) Bool)

(assert (=> d!1542594 (invariantList!1795 (toList!7386 lt!1968372))))

(declare-fun e!3010690 () ListMap!6791)

(assert (=> d!1542594 (= lt!1968372 e!3010690)))

(declare-fun c!821238 () Bool)

(assert (=> d!1542594 (= c!821238 (is-Cons!54834 (toList!7385 lt!1968344)))))

(assert (=> d!1542594 (forall!12519 (toList!7385 lt!1968344) lambda!235088)))

(assert (=> d!1542594 (= (extractMap!2647 (toList!7385 lt!1968344)) lt!1968372)))

(declare-fun b!4818741 () Bool)

(declare-fun addToMapMapFromBucket!1772 (List!54957 ListMap!6791) ListMap!6791)

(assert (=> b!4818741 (= e!3010690 (addToMapMapFromBucket!1772 (_2!32270 (h!61268 (toList!7385 lt!1968344))) (extractMap!2647 (t!362454 (toList!7385 lt!1968344)))))))

(declare-fun b!4818742 () Bool)

(assert (=> b!4818742 (= e!3010690 (ListMap!6792 Nil!54833))))

(assert (= (and d!1542594 c!821238) b!4818741))

(assert (= (and d!1542594 (not c!821238)) b!4818742))

(declare-fun m!5805668 () Bool)

(assert (=> d!1542594 m!5805668))

(declare-fun m!5805670 () Bool)

(assert (=> d!1542594 m!5805670))

(declare-fun m!5805672 () Bool)

(assert (=> b!4818741 m!5805672))

(assert (=> b!4818741 m!5805672))

(declare-fun m!5805674 () Bool)

(assert (=> b!4818741 m!5805674))

(assert (=> b!4818683 d!1542594))

(declare-fun b!4818761 () Bool)

(declare-datatypes ((List!54961 0))(
  ( (Nil!54837) (Cons!54837 (h!61271 K!16502) (t!362457 List!54961)) )
))
(declare-fun e!3010707 () List!54961)

(declare-fun keys!20149 (ListMap!6791) List!54961)

(assert (=> b!4818761 (= e!3010707 (keys!20149 (extractMap!2647 (toList!7385 lt!1968344))))))

(declare-fun b!4818763 () Bool)

(declare-fun e!3010706 () Bool)

(declare-fun contains!18663 (List!54961 K!16502) Bool)

(assert (=> b!4818763 (= e!3010706 (not (contains!18663 (keys!20149 (extractMap!2647 (toList!7385 lt!1968344))) key!5428)))))

(declare-fun b!4818764 () Bool)

(declare-fun e!3010704 () Unit!142152)

(declare-fun Unit!142157 () Unit!142152)

(assert (=> b!4818764 (= e!3010704 Unit!142157)))

(declare-fun b!4818765 () Bool)

(declare-fun e!3010708 () Bool)

(declare-fun e!3010705 () Bool)

(assert (=> b!4818765 (= e!3010708 e!3010705)))

(declare-fun res!2050288 () Bool)

(assert (=> b!4818765 (=> (not res!2050288) (not e!3010705))))

(declare-datatypes ((Option!13449 0))(
  ( (None!13448) (Some!13448 (v!49115 V!16748)) )
))
(declare-fun isDefined!10565 (Option!13449) Bool)

(declare-fun getValueByKey!2576 (List!54957 K!16502) Option!13449)

(assert (=> b!4818765 (= res!2050288 (isDefined!10565 (getValueByKey!2576 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428)))))

(declare-fun bm!336042 () Bool)

(declare-fun call!336047 () Bool)

(assert (=> bm!336042 (= call!336047 (contains!18663 e!3010707 key!5428))))

(declare-fun c!821246 () Bool)

(declare-fun c!821247 () Bool)

(assert (=> bm!336042 (= c!821246 c!821247)))

(declare-fun b!4818766 () Bool)

(declare-fun getKeysList!1142 (List!54957) List!54961)

(assert (=> b!4818766 (= e!3010707 (getKeysList!1142 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344)))))))

(declare-fun b!4818767 () Bool)

(assert (=> b!4818767 (= e!3010705 (contains!18663 (keys!20149 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(declare-fun b!4818768 () Bool)

(declare-fun e!3010703 () Unit!142152)

(declare-fun lt!1968398 () Unit!142152)

(assert (=> b!4818768 (= e!3010703 lt!1968398)))

(declare-fun lt!1968392 () Unit!142152)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2362 (List!54957 K!16502) Unit!142152)

(assert (=> b!4818768 (= lt!1968392 (lemmaContainsKeyImpliesGetValueByKeyDefined!2362 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(assert (=> b!4818768 (isDefined!10565 (getValueByKey!2576 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(declare-fun lt!1968397 () Unit!142152)

(assert (=> b!4818768 (= lt!1968397 lt!1968392)))

(declare-fun lemmaInListThenGetKeysListContains!1137 (List!54957 K!16502) Unit!142152)

(assert (=> b!4818768 (= lt!1968398 (lemmaInListThenGetKeysListContains!1137 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(assert (=> b!4818768 call!336047))

(declare-fun b!4818769 () Bool)

(assert (=> b!4818769 false))

(declare-fun lt!1968395 () Unit!142152)

(declare-fun lt!1968396 () Unit!142152)

(assert (=> b!4818769 (= lt!1968395 lt!1968396)))

(declare-fun containsKey!4268 (List!54957 K!16502) Bool)

(assert (=> b!4818769 (containsKey!4268 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1142 (List!54957 K!16502) Unit!142152)

(assert (=> b!4818769 (= lt!1968396 (lemmaInGetKeysListThenContainsKey!1142 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(declare-fun Unit!142158 () Unit!142152)

(assert (=> b!4818769 (= e!3010704 Unit!142158)))

(declare-fun d!1542596 () Bool)

(assert (=> d!1542596 e!3010708))

(declare-fun res!2050287 () Bool)

(assert (=> d!1542596 (=> res!2050287 e!3010708)))

(assert (=> d!1542596 (= res!2050287 e!3010706)))

(declare-fun res!2050289 () Bool)

(assert (=> d!1542596 (=> (not res!2050289) (not e!3010706))))

(declare-fun lt!1968394 () Bool)

(assert (=> d!1542596 (= res!2050289 (not lt!1968394))))

(declare-fun lt!1968393 () Bool)

(assert (=> d!1542596 (= lt!1968394 lt!1968393)))

(declare-fun lt!1968399 () Unit!142152)

(assert (=> d!1542596 (= lt!1968399 e!3010703)))

(assert (=> d!1542596 (= c!821247 lt!1968393)))

(assert (=> d!1542596 (= lt!1968393 (containsKey!4268 (toList!7386 (extractMap!2647 (toList!7385 lt!1968344))) key!5428))))

(assert (=> d!1542596 (= (contains!18660 (extractMap!2647 (toList!7385 lt!1968344)) key!5428) lt!1968394)))

(declare-fun b!4818762 () Bool)

(assert (=> b!4818762 (= e!3010703 e!3010704)))

(declare-fun c!821245 () Bool)

(assert (=> b!4818762 (= c!821245 call!336047)))

(assert (= (and d!1542596 c!821247) b!4818768))

(assert (= (and d!1542596 (not c!821247)) b!4818762))

(assert (= (and b!4818762 c!821245) b!4818769))

(assert (= (and b!4818762 (not c!821245)) b!4818764))

(assert (= (or b!4818768 b!4818762) bm!336042))

(assert (= (and bm!336042 c!821246) b!4818766))

(assert (= (and bm!336042 (not c!821246)) b!4818761))

(assert (= (and d!1542596 res!2050289) b!4818763))

(assert (= (and d!1542596 (not res!2050287)) b!4818765))

(assert (= (and b!4818765 res!2050288) b!4818767))

(declare-fun m!5805680 () Bool)

(assert (=> b!4818766 m!5805680))

(declare-fun m!5805682 () Bool)

(assert (=> b!4818769 m!5805682))

(declare-fun m!5805684 () Bool)

(assert (=> b!4818769 m!5805684))

(declare-fun m!5805686 () Bool)

(assert (=> bm!336042 m!5805686))

(declare-fun m!5805688 () Bool)

(assert (=> b!4818765 m!5805688))

(assert (=> b!4818765 m!5805688))

(declare-fun m!5805690 () Bool)

(assert (=> b!4818765 m!5805690))

(declare-fun m!5805692 () Bool)

(assert (=> b!4818768 m!5805692))

(assert (=> b!4818768 m!5805688))

(assert (=> b!4818768 m!5805688))

(assert (=> b!4818768 m!5805690))

(declare-fun m!5805694 () Bool)

(assert (=> b!4818768 m!5805694))

(assert (=> b!4818763 m!5805582))

(declare-fun m!5805696 () Bool)

(assert (=> b!4818763 m!5805696))

(assert (=> b!4818763 m!5805696))

(declare-fun m!5805698 () Bool)

(assert (=> b!4818763 m!5805698))

(assert (=> d!1542596 m!5805682))

(assert (=> b!4818767 m!5805582))

(assert (=> b!4818767 m!5805696))

(assert (=> b!4818767 m!5805696))

(assert (=> b!4818767 m!5805698))

(assert (=> b!4818761 m!5805582))

(assert (=> b!4818761 m!5805696))

(assert (=> b!4818683 d!1542596))

(declare-fun b!4818774 () Bool)

(declare-fun e!3010711 () Bool)

(declare-fun tp!1362114 () Bool)

(declare-fun tp!1362115 () Bool)

(assert (=> b!4818774 (= e!3010711 (and tp!1362114 tp!1362115))))

(assert (=> b!4818682 (= tp!1362106 e!3010711)))

(assert (= (and b!4818682 (is-Cons!54834 (toList!7385 lm!2280))) b!4818774))

(declare-fun b_lambda!188781 () Bool)

(assert (= b_lambda!188779 (or start!499032 b_lambda!188781)))

(declare-fun bs!1161161 () Bool)

(declare-fun d!1542600 () Bool)

(assert (= bs!1161161 (and d!1542600 start!499032)))

(declare-fun noDuplicateKeys!2416 (List!54957) Bool)

(assert (=> bs!1161161 (= (dynLambda!22176 lambda!235071 (h!61268 (t!362454 (toList!7385 lm!2280)))) (noDuplicateKeys!2416 (_2!32270 (h!61268 (t!362454 (toList!7385 lm!2280))))))))

(declare-fun m!5805700 () Bool)

(assert (=> bs!1161161 m!5805700))

(assert (=> b!4818735 d!1542600))

(declare-fun b_lambda!188783 () Bool)

(assert (= b_lambda!188777 (or start!499032 b_lambda!188783)))

(declare-fun bs!1161162 () Bool)

(declare-fun d!1542602 () Bool)

(assert (= bs!1161162 (and d!1542602 start!499032)))

(assert (=> bs!1161162 (= (dynLambda!22176 lambda!235071 (h!61268 (toList!7385 lm!2280))) (noDuplicateKeys!2416 (_2!32270 (h!61268 (toList!7385 lm!2280)))))))

(declare-fun m!5805702 () Bool)

(assert (=> bs!1161162 m!5805702))

(assert (=> b!4818710 d!1542602))

(push 1)

(assert (not b!4818730))

(assert (not b!4818763))

(assert (not b_lambda!188781))

(assert (not d!1542580))

(assert (not b!4818768))

(assert (not b!4818736))

(assert (not b!4818741))

(assert (not b!4818774))

(assert (not b!4818717))

(assert (not b!4818766))

(assert tp_is_empty!34295)

(assert (not b!4818769))

(assert (not d!1542582))

(assert (not b!4818767))

(assert (not b_lambda!188783))

(assert (not bs!1161162))

(assert (not d!1542568))

(assert (not bm!336042))

(assert (not b!4818732))

(assert (not b!4818711))

(assert (not d!1542576))

(assert (not d!1542594))

(assert (not d!1542584))

(assert (not d!1542574))

(assert (not b!4818765))

(assert (not bs!1161161))

(assert (not d!1542596))

(assert (not d!1542564))

(assert (not b!4818761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

