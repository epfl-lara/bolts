; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499760 () Bool)

(assert start!499760)

(declare-fun b!4821780 () Bool)

(declare-fun e!3012670 () Bool)

(declare-datatypes ((V!16858 0))(
  ( (V!16859 (val!21595 Int)) )
))
(declare-datatypes ((K!16612 0))(
  ( (K!16613 (val!21596 Int)) )
))
(declare-datatypes ((tuple2!58126 0))(
  ( (tuple2!58127 (_1!32357 K!16612) (_2!32357 V!16858)) )
))
(declare-datatypes ((List!55052 0))(
  ( (Nil!54928) (Cons!54928 (h!61362 tuple2!58126) (t!362548 List!55052)) )
))
(declare-datatypes ((tuple2!58128 0))(
  ( (tuple2!58129 (_1!32358 (_ BitVec 64)) (_2!32358 List!55052)) )
))
(declare-datatypes ((List!55053 0))(
  ( (Nil!54929) (Cons!54929 (h!61363 tuple2!58128) (t!362549 List!55053)) )
))
(declare-datatypes ((ListLongMap!5961 0))(
  ( (ListLongMap!5962 (toList!7449 List!55053)) )
))
(declare-fun lm!2280 () ListLongMap!5961)

(declare-fun contains!18732 (ListLongMap!5961 (_ BitVec 64)) Bool)

(assert (=> b!4821780 (= e!3012670 (not (contains!18732 lm!2280 (_1!32358 (h!61363 (toList!7449 lm!2280))))))))

(declare-fun b!4821781 () Bool)

(declare-fun res!2052209 () Bool)

(assert (=> b!4821781 (=> (not res!2052209) (not e!3012670))))

(declare-fun lt!1970213 () (_ BitVec 64))

(assert (=> b!4821781 (= res!2052209 (and (or (not (is-Cons!54929 (toList!7449 lm!2280))) (not (= (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213))) (is-Cons!54929 (toList!7449 lm!2280)) (not (= (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213))))))

(declare-fun res!2052210 () Bool)

(declare-fun e!3012669 () Bool)

(assert (=> start!499760 (=> (not res!2052210) (not e!3012669))))

(declare-fun lambda!235719 () Int)

(declare-fun forall!12571 (List!55053 Int) Bool)

(assert (=> start!499760 (= res!2052210 (forall!12571 (toList!7449 lm!2280) lambda!235719))))

(assert (=> start!499760 e!3012669))

(declare-fun e!3012668 () Bool)

(declare-fun inv!70513 (ListLongMap!5961) Bool)

(assert (=> start!499760 (and (inv!70513 lm!2280) e!3012668)))

(assert (=> start!499760 true))

(declare-fun tp_is_empty!34401 () Bool)

(assert (=> start!499760 tp_is_empty!34401))

(declare-fun b!4821782 () Bool)

(declare-fun res!2052207 () Bool)

(assert (=> b!4821782 (=> (not res!2052207) (not e!3012670))))

(assert (=> b!4821782 (= res!2052207 (forall!12571 (toList!7449 lm!2280) lambda!235719))))

(declare-fun b!4821783 () Bool)

(assert (=> b!4821783 (= e!3012669 e!3012670)))

(declare-fun res!2052211 () Bool)

(assert (=> b!4821783 (=> (not res!2052211) (not e!3012670))))

(assert (=> b!4821783 (= res!2052211 (contains!18732 lm!2280 lt!1970213))))

(declare-datatypes ((Hashable!7249 0))(
  ( (HashableExt!7248 (__x!33524 Int)) )
))
(declare-fun hashF!1509 () Hashable!7249)

(declare-fun key!5428 () K!16612)

(declare-fun hash!5348 (Hashable!7249 K!16612) (_ BitVec 64))

(assert (=> b!4821783 (= lt!1970213 (hash!5348 hashF!1509 key!5428))))

(declare-fun b!4821784 () Bool)

(declare-fun res!2052208 () Bool)

(assert (=> b!4821784 (=> (not res!2052208) (not e!3012669))))

(declare-fun allKeysSameHashInMap!2565 (ListLongMap!5961 Hashable!7249) Bool)

(assert (=> b!4821784 (= res!2052208 (allKeysSameHashInMap!2565 lm!2280 hashF!1509))))

(declare-fun b!4821785 () Bool)

(declare-fun tp!1362391 () Bool)

(assert (=> b!4821785 (= e!3012668 tp!1362391)))

(declare-fun b!4821786 () Bool)

(declare-fun res!2052206 () Bool)

(assert (=> b!4821786 (=> (not res!2052206) (not e!3012670))))

(declare-fun containsKey!4331 (List!55052 K!16612) Bool)

(declare-fun apply!13336 (ListLongMap!5961 (_ BitVec 64)) List!55052)

(assert (=> b!4821786 (= res!2052206 (not (containsKey!4331 (apply!13336 lm!2280 lt!1970213) key!5428)))))

(assert (= (and start!499760 res!2052210) b!4821784))

(assert (= (and b!4821784 res!2052208) b!4821783))

(assert (= (and b!4821783 res!2052211) b!4821786))

(assert (= (and b!4821786 res!2052206) b!4821781))

(assert (= (and b!4821781 res!2052209) b!4821782))

(assert (= (and b!4821782 res!2052207) b!4821780))

(assert (= start!499760 b!4821785))

(declare-fun m!5809952 () Bool)

(assert (=> b!4821784 m!5809952))

(declare-fun m!5809954 () Bool)

(assert (=> b!4821786 m!5809954))

(assert (=> b!4821786 m!5809954))

(declare-fun m!5809956 () Bool)

(assert (=> b!4821786 m!5809956))

(declare-fun m!5809958 () Bool)

(assert (=> b!4821783 m!5809958))

(declare-fun m!5809960 () Bool)

(assert (=> b!4821783 m!5809960))

(declare-fun m!5809962 () Bool)

(assert (=> b!4821780 m!5809962))

(declare-fun m!5809964 () Bool)

(assert (=> b!4821782 m!5809964))

(assert (=> start!499760 m!5809964))

(declare-fun m!5809966 () Bool)

(assert (=> start!499760 m!5809966))

(push 1)

(assert (not start!499760))

(assert (not b!4821786))

(assert (not b!4821783))

(assert (not b!4821782))

(assert (not b!4821780))

(assert tp_is_empty!34401)

(assert (not b!4821785))

(assert (not b!4821784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543916 () Bool)

(declare-fun res!2052234 () Bool)

(declare-fun e!3012684 () Bool)

(assert (=> d!1543916 (=> res!2052234 e!3012684)))

(assert (=> d!1543916 (= res!2052234 (is-Nil!54929 (toList!7449 lm!2280)))))

(assert (=> d!1543916 (= (forall!12571 (toList!7449 lm!2280) lambda!235719) e!3012684)))

(declare-fun b!4821812 () Bool)

(declare-fun e!3012685 () Bool)

(assert (=> b!4821812 (= e!3012684 e!3012685)))

(declare-fun res!2052235 () Bool)

(assert (=> b!4821812 (=> (not res!2052235) (not e!3012685))))

(declare-fun dynLambda!22194 (Int tuple2!58128) Bool)

(assert (=> b!4821812 (= res!2052235 (dynLambda!22194 lambda!235719 (h!61363 (toList!7449 lm!2280))))))

(declare-fun b!4821813 () Bool)

(assert (=> b!4821813 (= e!3012685 (forall!12571 (t!362549 (toList!7449 lm!2280)) lambda!235719))))

(assert (= (and d!1543916 (not res!2052234)) b!4821812))

(assert (= (and b!4821812 res!2052235) b!4821813))

(declare-fun b_lambda!189167 () Bool)

(assert (=> (not b_lambda!189167) (not b!4821812)))

(declare-fun m!5809984 () Bool)

(assert (=> b!4821812 m!5809984))

(declare-fun m!5809986 () Bool)

(assert (=> b!4821813 m!5809986))

(assert (=> start!499760 d!1543916))

(declare-fun d!1543920 () Bool)

(declare-fun isStrictlySorted!972 (List!55053) Bool)

(assert (=> d!1543920 (= (inv!70513 lm!2280) (isStrictlySorted!972 (toList!7449 lm!2280)))))

(declare-fun bs!1162345 () Bool)

(assert (= bs!1162345 d!1543920))

(declare-fun m!5809988 () Bool)

(assert (=> bs!1162345 m!5809988))

(assert (=> start!499760 d!1543920))

(assert (=> b!4821782 d!1543916))

(declare-fun d!1543922 () Bool)

(declare-fun res!2052240 () Bool)

(declare-fun e!3012690 () Bool)

(assert (=> d!1543922 (=> res!2052240 e!3012690)))

(assert (=> d!1543922 (= res!2052240 (and (is-Cons!54928 (apply!13336 lm!2280 lt!1970213)) (= (_1!32357 (h!61362 (apply!13336 lm!2280 lt!1970213))) key!5428)))))

(assert (=> d!1543922 (= (containsKey!4331 (apply!13336 lm!2280 lt!1970213) key!5428) e!3012690)))

(declare-fun b!4821820 () Bool)

(declare-fun e!3012691 () Bool)

(assert (=> b!4821820 (= e!3012690 e!3012691)))

(declare-fun res!2052241 () Bool)

(assert (=> b!4821820 (=> (not res!2052241) (not e!3012691))))

(assert (=> b!4821820 (= res!2052241 (is-Cons!54928 (apply!13336 lm!2280 lt!1970213)))))

(declare-fun b!4821821 () Bool)

(assert (=> b!4821821 (= e!3012691 (containsKey!4331 (t!362548 (apply!13336 lm!2280 lt!1970213)) key!5428))))

(assert (= (and d!1543922 (not res!2052240)) b!4821820))

(assert (= (and b!4821820 res!2052241) b!4821821))

(declare-fun m!5809990 () Bool)

(assert (=> b!4821821 m!5809990))

(assert (=> b!4821786 d!1543922))

(declare-fun d!1543924 () Bool)

(declare-datatypes ((Option!13471 0))(
  ( (None!13470) (Some!13470 (v!49141 List!55052)) )
))
(declare-fun get!18802 (Option!13471) List!55052)

(declare-fun getValueByKey!2598 (List!55053 (_ BitVec 64)) Option!13471)

(assert (=> d!1543924 (= (apply!13336 lm!2280 lt!1970213) (get!18802 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213)))))

(declare-fun bs!1162348 () Bool)

(assert (= bs!1162348 d!1543924))

(declare-fun m!5809994 () Bool)

(assert (=> bs!1162348 m!5809994))

(assert (=> bs!1162348 m!5809994))

(declare-fun m!5809996 () Bool)

(assert (=> bs!1162348 m!5809996))

(assert (=> b!4821786 d!1543924))

(declare-fun d!1543928 () Bool)

(declare-fun e!3012703 () Bool)

(assert (=> d!1543928 e!3012703))

(declare-fun res!2052250 () Bool)

(assert (=> d!1543928 (=> res!2052250 e!3012703)))

(declare-fun lt!1970225 () Bool)

(assert (=> d!1543928 (= res!2052250 (not lt!1970225))))

(declare-fun lt!1970228 () Bool)

(assert (=> d!1543928 (= lt!1970225 lt!1970228)))

(declare-datatypes ((Unit!142488 0))(
  ( (Unit!142489) )
))
(declare-fun lt!1970226 () Unit!142488)

(declare-fun e!3012702 () Unit!142488)

(assert (=> d!1543928 (= lt!1970226 e!3012702)))

(declare-fun c!821631 () Bool)

(assert (=> d!1543928 (= c!821631 lt!1970228)))

(declare-fun containsKey!4333 (List!55053 (_ BitVec 64)) Bool)

(assert (=> d!1543928 (= lt!1970228 (containsKey!4333 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(assert (=> d!1543928 (= (contains!18732 lm!2280 (_1!32358 (h!61363 (toList!7449 lm!2280)))) lt!1970225)))

(declare-fun b!4821834 () Bool)

(declare-fun lt!1970227 () Unit!142488)

(assert (=> b!4821834 (= e!3012702 lt!1970227)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2383 (List!55053 (_ BitVec 64)) Unit!142488)

(assert (=> b!4821834 (= lt!1970227 (lemmaContainsKeyImpliesGetValueByKeyDefined!2383 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun isDefined!10586 (Option!13471) Bool)

(assert (=> b!4821834 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun b!4821835 () Bool)

(declare-fun Unit!142490 () Unit!142488)

(assert (=> b!4821835 (= e!3012702 Unit!142490)))

(declare-fun b!4821836 () Bool)

(assert (=> b!4821836 (= e!3012703 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280))))))))

(assert (= (and d!1543928 c!821631) b!4821834))

(assert (= (and d!1543928 (not c!821631)) b!4821835))

(assert (= (and d!1543928 (not res!2052250)) b!4821836))

(declare-fun m!5810000 () Bool)

(assert (=> d!1543928 m!5810000))

(declare-fun m!5810002 () Bool)

(assert (=> b!4821834 m!5810002))

(declare-fun m!5810004 () Bool)

(assert (=> b!4821834 m!5810004))

(assert (=> b!4821834 m!5810004))

(declare-fun m!5810006 () Bool)

(assert (=> b!4821834 m!5810006))

(assert (=> b!4821836 m!5810004))

(assert (=> b!4821836 m!5810004))

(assert (=> b!4821836 m!5810006))

(assert (=> b!4821780 d!1543928))

(declare-fun bs!1162350 () Bool)

(declare-fun d!1543932 () Bool)

(assert (= bs!1162350 (and d!1543932 start!499760)))

(declare-fun lambda!235730 () Int)

(assert (=> bs!1162350 (not (= lambda!235730 lambda!235719))))

(assert (=> d!1543932 true))

(assert (=> d!1543932 (= (allKeysSameHashInMap!2565 lm!2280 hashF!1509) (forall!12571 (toList!7449 lm!2280) lambda!235730))))

(declare-fun bs!1162351 () Bool)

(assert (= bs!1162351 d!1543932))

(declare-fun m!5810012 () Bool)

(assert (=> bs!1162351 m!5810012))

(assert (=> b!4821784 d!1543932))

(declare-fun d!1543936 () Bool)

(declare-fun e!3012705 () Bool)

(assert (=> d!1543936 e!3012705))

(declare-fun res!2052251 () Bool)

(assert (=> d!1543936 (=> res!2052251 e!3012705)))

(declare-fun lt!1970229 () Bool)

(assert (=> d!1543936 (= res!2052251 (not lt!1970229))))

(declare-fun lt!1970232 () Bool)

(assert (=> d!1543936 (= lt!1970229 lt!1970232)))

(declare-fun lt!1970230 () Unit!142488)

(declare-fun e!3012704 () Unit!142488)

(assert (=> d!1543936 (= lt!1970230 e!3012704)))

(declare-fun c!821632 () Bool)

(assert (=> d!1543936 (= c!821632 lt!1970232)))

(assert (=> d!1543936 (= lt!1970232 (containsKey!4333 (toList!7449 lm!2280) lt!1970213))))

(assert (=> d!1543936 (= (contains!18732 lm!2280 lt!1970213) lt!1970229)))

(declare-fun b!4821839 () Bool)

(declare-fun lt!1970231 () Unit!142488)

(assert (=> b!4821839 (= e!3012704 lt!1970231)))

(assert (=> b!4821839 (= lt!1970231 (lemmaContainsKeyImpliesGetValueByKeyDefined!2383 (toList!7449 lm!2280) lt!1970213))))

(assert (=> b!4821839 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213))))

(declare-fun b!4821840 () Bool)

(declare-fun Unit!142491 () Unit!142488)

(assert (=> b!4821840 (= e!3012704 Unit!142491)))

(declare-fun b!4821841 () Bool)

(assert (=> b!4821841 (= e!3012705 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213)))))

(assert (= (and d!1543936 c!821632) b!4821839))

(assert (= (and d!1543936 (not c!821632)) b!4821840))

(assert (= (and d!1543936 (not res!2052251)) b!4821841))

(declare-fun m!5810014 () Bool)

(assert (=> d!1543936 m!5810014))

(declare-fun m!5810016 () Bool)

(assert (=> b!4821839 m!5810016))

(assert (=> b!4821839 m!5809994))

(assert (=> b!4821839 m!5809994))

(declare-fun m!5810018 () Bool)

(assert (=> b!4821839 m!5810018))

(assert (=> b!4821841 m!5809994))

(assert (=> b!4821841 m!5809994))

(assert (=> b!4821841 m!5810018))

(assert (=> b!4821783 d!1543936))

(declare-fun d!1543938 () Bool)

(declare-fun hash!5350 (Hashable!7249 K!16612) (_ BitVec 64))

(assert (=> d!1543938 (= (hash!5348 hashF!1509 key!5428) (hash!5350 hashF!1509 key!5428))))

(declare-fun bs!1162352 () Bool)

(assert (= bs!1162352 d!1543938))

(declare-fun m!5810020 () Bool)

(assert (=> bs!1162352 m!5810020))

(assert (=> b!4821783 d!1543938))

(declare-fun b!4821846 () Bool)

(declare-fun e!3012708 () Bool)

(declare-fun tp!1362399 () Bool)

(declare-fun tp!1362400 () Bool)

(assert (=> b!4821846 (= e!3012708 (and tp!1362399 tp!1362400))))

(assert (=> b!4821785 (= tp!1362391 e!3012708)))

(assert (= (and b!4821785 (is-Cons!54929 (toList!7449 lm!2280))) b!4821846))

(declare-fun b_lambda!189169 () Bool)

(assert (= b_lambda!189167 (or start!499760 b_lambda!189169)))

(declare-fun bs!1162353 () Bool)

(declare-fun d!1543940 () Bool)

(assert (= bs!1162353 (and d!1543940 start!499760)))

(declare-fun noDuplicateKeys!2437 (List!55052) Bool)

(assert (=> bs!1162353 (= (dynLambda!22194 lambda!235719 (h!61363 (toList!7449 lm!2280))) (noDuplicateKeys!2437 (_2!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun m!5810022 () Bool)

(assert (=> bs!1162353 m!5810022))

(assert (=> b!4821812 d!1543940))

(push 1)

(assert (not b!4821813))

(assert (not d!1543920))

(assert (not d!1543936))

(assert (not d!1543928))

(assert (not b!4821841))

(assert (not b!4821821))

(assert (not b!4821836))

(assert (not d!1543938))

(assert (not b!4821839))

(assert (not b!4821846))

(assert (not bs!1162353))

(assert tp_is_empty!34401)

(assert (not b_lambda!189169))

(assert (not d!1543932))

(assert (not d!1543924))

(assert (not b!4821834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543952 () Bool)

(assert (=> d!1543952 (= (get!18802 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213)) (v!49141 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213)))))

(assert (=> d!1543924 d!1543952))

(declare-fun b!4821879 () Bool)

(declare-fun e!3012730 () Option!13471)

(declare-fun e!3012731 () Option!13471)

(assert (=> b!4821879 (= e!3012730 e!3012731)))

(declare-fun c!821642 () Bool)

(assert (=> b!4821879 (= c!821642 (and (is-Cons!54929 (toList!7449 lm!2280)) (not (= (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213))))))

(declare-fun b!4821881 () Bool)

(assert (=> b!4821881 (= e!3012731 None!13470)))

(declare-fun b!4821880 () Bool)

(assert (=> b!4821880 (= e!3012731 (getValueByKey!2598 (t!362549 (toList!7449 lm!2280)) lt!1970213))))

(declare-fun d!1543954 () Bool)

(declare-fun c!821641 () Bool)

(assert (=> d!1543954 (= c!821641 (and (is-Cons!54929 (toList!7449 lm!2280)) (= (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213)))))

(assert (=> d!1543954 (= (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213) e!3012730)))

(declare-fun b!4821878 () Bool)

(assert (=> b!4821878 (= e!3012730 (Some!13470 (_2!32358 (h!61363 (toList!7449 lm!2280)))))))

(assert (= (and d!1543954 c!821641) b!4821878))

(assert (= (and d!1543954 (not c!821641)) b!4821879))

(assert (= (and b!4821879 c!821642) b!4821880))

(assert (= (and b!4821879 (not c!821642)) b!4821881))

(declare-fun m!5810048 () Bool)

(assert (=> b!4821880 m!5810048))

(assert (=> d!1543924 d!1543954))

(declare-fun d!1543956 () Bool)

(declare-fun isEmpty!29633 (Option!13471) Bool)

(assert (=> d!1543956 (= (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213)) (not (isEmpty!29633 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213))))))

(declare-fun bs!1162357 () Bool)

(assert (= bs!1162357 d!1543956))

(assert (=> bs!1162357 m!5809994))

(declare-fun m!5810050 () Bool)

(assert (=> bs!1162357 m!5810050))

(assert (=> b!4821841 d!1543956))

(assert (=> b!4821841 d!1543954))

(declare-fun d!1543958 () Bool)

(declare-fun res!2052266 () Bool)

(declare-fun e!3012736 () Bool)

(assert (=> d!1543958 (=> res!2052266 e!3012736)))

(assert (=> d!1543958 (= res!2052266 (and (is-Cons!54929 (toList!7449 lm!2280)) (= (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213)))))

(assert (=> d!1543958 (= (containsKey!4333 (toList!7449 lm!2280) lt!1970213) e!3012736)))

(declare-fun b!4821886 () Bool)

(declare-fun e!3012737 () Bool)

(assert (=> b!4821886 (= e!3012736 e!3012737)))

(declare-fun res!2052267 () Bool)

(assert (=> b!4821886 (=> (not res!2052267) (not e!3012737))))

(assert (=> b!4821886 (= res!2052267 (and (or (not (is-Cons!54929 (toList!7449 lm!2280))) (bvsle (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213)) (is-Cons!54929 (toList!7449 lm!2280)) (bvslt (_1!32358 (h!61363 (toList!7449 lm!2280))) lt!1970213)))))

(declare-fun b!4821887 () Bool)

(assert (=> b!4821887 (= e!3012737 (containsKey!4333 (t!362549 (toList!7449 lm!2280)) lt!1970213))))

(assert (= (and d!1543958 (not res!2052266)) b!4821886))

(assert (= (and b!4821886 res!2052267) b!4821887))

(declare-fun m!5810052 () Bool)

(assert (=> b!4821887 m!5810052))

(assert (=> d!1543936 d!1543958))

(declare-fun d!1543960 () Bool)

(assert (=> d!1543960 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun lt!1970251 () Unit!142488)

(declare-fun choose!35025 (List!55053 (_ BitVec 64)) Unit!142488)

(assert (=> d!1543960 (= lt!1970251 (choose!35025 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun e!3012740 () Bool)

(assert (=> d!1543960 e!3012740))

(declare-fun res!2052270 () Bool)

(assert (=> d!1543960 (=> (not res!2052270) (not e!3012740))))

(assert (=> d!1543960 (= res!2052270 (isStrictlySorted!972 (toList!7449 lm!2280)))))

(assert (=> d!1543960 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2383 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))) lt!1970251)))

(declare-fun b!4821890 () Bool)

(assert (=> b!4821890 (= e!3012740 (containsKey!4333 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(assert (= (and d!1543960 res!2052270) b!4821890))

(assert (=> d!1543960 m!5810004))

(assert (=> d!1543960 m!5810004))

(assert (=> d!1543960 m!5810006))

(declare-fun m!5810054 () Bool)

(assert (=> d!1543960 m!5810054))

(assert (=> d!1543960 m!5809988))

(assert (=> b!4821890 m!5810000))

(assert (=> b!4821834 d!1543960))

(declare-fun d!1543962 () Bool)

(assert (=> d!1543962 (= (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280))))) (not (isEmpty!29633 (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))))

(declare-fun bs!1162358 () Bool)

(assert (= bs!1162358 d!1543962))

(assert (=> bs!1162358 m!5810004))

(declare-fun m!5810056 () Bool)

(assert (=> bs!1162358 m!5810056))

(assert (=> b!4821834 d!1543962))

(declare-fun b!4821892 () Bool)

(declare-fun e!3012741 () Option!13471)

(declare-fun e!3012742 () Option!13471)

(assert (=> b!4821892 (= e!3012741 e!3012742)))

(declare-fun c!821644 () Bool)

(assert (=> b!4821892 (= c!821644 (and (is-Cons!54929 (toList!7449 lm!2280)) (not (= (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))))

(declare-fun b!4821894 () Bool)

(assert (=> b!4821894 (= e!3012742 None!13470)))

(declare-fun b!4821893 () Bool)

(assert (=> b!4821893 (= e!3012742 (getValueByKey!2598 (t!362549 (toList!7449 lm!2280)) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(declare-fun d!1543964 () Bool)

(declare-fun c!821643 () Bool)

(assert (=> d!1543964 (= c!821643 (and (is-Cons!54929 (toList!7449 lm!2280)) (= (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280))))))))

(assert (=> d!1543964 (= (getValueByKey!2598 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))) e!3012741)))

(declare-fun b!4821891 () Bool)

(assert (=> b!4821891 (= e!3012741 (Some!13470 (_2!32358 (h!61363 (toList!7449 lm!2280)))))))

(assert (= (and d!1543964 c!821643) b!4821891))

(assert (= (and d!1543964 (not c!821643)) b!4821892))

(assert (= (and b!4821892 c!821644) b!4821893))

(assert (= (and b!4821892 (not c!821644)) b!4821894))

(declare-fun m!5810058 () Bool)

(assert (=> b!4821893 m!5810058))

(assert (=> b!4821834 d!1543964))

(declare-fun d!1543966 () Bool)

(declare-fun res!2052271 () Bool)

(declare-fun e!3012743 () Bool)

(assert (=> d!1543966 (=> res!2052271 e!3012743)))

(assert (=> d!1543966 (= res!2052271 (is-Nil!54929 (t!362549 (toList!7449 lm!2280))))))

(assert (=> d!1543966 (= (forall!12571 (t!362549 (toList!7449 lm!2280)) lambda!235719) e!3012743)))

(declare-fun b!4821895 () Bool)

(declare-fun e!3012744 () Bool)

(assert (=> b!4821895 (= e!3012743 e!3012744)))

(declare-fun res!2052272 () Bool)

(assert (=> b!4821895 (=> (not res!2052272) (not e!3012744))))

(assert (=> b!4821895 (= res!2052272 (dynLambda!22194 lambda!235719 (h!61363 (t!362549 (toList!7449 lm!2280)))))))

(declare-fun b!4821896 () Bool)

(assert (=> b!4821896 (= e!3012744 (forall!12571 (t!362549 (t!362549 (toList!7449 lm!2280))) lambda!235719))))

(assert (= (and d!1543966 (not res!2052271)) b!4821895))

(assert (= (and b!4821895 res!2052272) b!4821896))

(declare-fun b_lambda!189175 () Bool)

(assert (=> (not b_lambda!189175) (not b!4821895)))

(declare-fun m!5810060 () Bool)

(assert (=> b!4821895 m!5810060))

(declare-fun m!5810062 () Bool)

(assert (=> b!4821896 m!5810062))

(assert (=> b!4821813 d!1543966))

(declare-fun d!1543968 () Bool)

(declare-fun res!2052273 () Bool)

(declare-fun e!3012745 () Bool)

(assert (=> d!1543968 (=> res!2052273 e!3012745)))

(assert (=> d!1543968 (= res!2052273 (and (is-Cons!54929 (toList!7449 lm!2280)) (= (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280))))))))

(assert (=> d!1543968 (= (containsKey!4333 (toList!7449 lm!2280) (_1!32358 (h!61363 (toList!7449 lm!2280)))) e!3012745)))

(declare-fun b!4821897 () Bool)

(declare-fun e!3012746 () Bool)

(assert (=> b!4821897 (= e!3012745 e!3012746)))

(declare-fun res!2052274 () Bool)

(assert (=> b!4821897 (=> (not res!2052274) (not e!3012746))))

(assert (=> b!4821897 (= res!2052274 (and (or (not (is-Cons!54929 (toList!7449 lm!2280))) (bvsle (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280))))) (is-Cons!54929 (toList!7449 lm!2280)) (bvslt (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280))))))))

(declare-fun b!4821898 () Bool)

(assert (=> b!4821898 (= e!3012746 (containsKey!4333 (t!362549 (toList!7449 lm!2280)) (_1!32358 (h!61363 (toList!7449 lm!2280)))))))

(assert (= (and d!1543968 (not res!2052273)) b!4821897))

(assert (= (and b!4821897 res!2052274) b!4821898))

(declare-fun m!5810064 () Bool)

(assert (=> b!4821898 m!5810064))

(assert (=> d!1543928 d!1543968))

(assert (=> b!4821836 d!1543962))

(assert (=> b!4821836 d!1543964))

(declare-fun d!1543970 () Bool)

(declare-fun res!2052279 () Bool)

(declare-fun e!3012751 () Bool)

(assert (=> d!1543970 (=> res!2052279 e!3012751)))

(assert (=> d!1543970 (= res!2052279 (not (is-Cons!54928 (_2!32358 (h!61363 (toList!7449 lm!2280))))))))

(assert (=> d!1543970 (= (noDuplicateKeys!2437 (_2!32358 (h!61363 (toList!7449 lm!2280)))) e!3012751)))

(declare-fun b!4821903 () Bool)

(declare-fun e!3012752 () Bool)

(assert (=> b!4821903 (= e!3012751 e!3012752)))

(declare-fun res!2052280 () Bool)

(assert (=> b!4821903 (=> (not res!2052280) (not e!3012752))))

(assert (=> b!4821903 (= res!2052280 (not (containsKey!4331 (t!362548 (_2!32358 (h!61363 (toList!7449 lm!2280)))) (_1!32357 (h!61362 (_2!32358 (h!61363 (toList!7449 lm!2280))))))))))

(declare-fun b!4821904 () Bool)

(assert (=> b!4821904 (= e!3012752 (noDuplicateKeys!2437 (t!362548 (_2!32358 (h!61363 (toList!7449 lm!2280))))))))

(assert (= (and d!1543970 (not res!2052279)) b!4821903))

(assert (= (and b!4821903 res!2052280) b!4821904))

(declare-fun m!5810066 () Bool)

(assert (=> b!4821903 m!5810066))

(declare-fun m!5810068 () Bool)

(assert (=> b!4821904 m!5810068))

(assert (=> bs!1162353 d!1543970))

(declare-fun d!1543972 () Bool)

(declare-fun res!2052285 () Bool)

(declare-fun e!3012757 () Bool)

(assert (=> d!1543972 (=> res!2052285 e!3012757)))

(assert (=> d!1543972 (= res!2052285 (or (is-Nil!54929 (toList!7449 lm!2280)) (is-Nil!54929 (t!362549 (toList!7449 lm!2280)))))))

(assert (=> d!1543972 (= (isStrictlySorted!972 (toList!7449 lm!2280)) e!3012757)))

(declare-fun b!4821909 () Bool)

(declare-fun e!3012758 () Bool)

(assert (=> b!4821909 (= e!3012757 e!3012758)))

(declare-fun res!2052286 () Bool)

(assert (=> b!4821909 (=> (not res!2052286) (not e!3012758))))

(assert (=> b!4821909 (= res!2052286 (bvslt (_1!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (t!362549 (toList!7449 lm!2280))))))))

(declare-fun b!4821910 () Bool)

(assert (=> b!4821910 (= e!3012758 (isStrictlySorted!972 (t!362549 (toList!7449 lm!2280))))))

(assert (= (and d!1543972 (not res!2052285)) b!4821909))

(assert (= (and b!4821909 res!2052286) b!4821910))

(declare-fun m!5810070 () Bool)

(assert (=> b!4821910 m!5810070))

(assert (=> d!1543920 d!1543972))

(declare-fun d!1543974 () Bool)

(declare-fun res!2052287 () Bool)

(declare-fun e!3012759 () Bool)

(assert (=> d!1543974 (=> res!2052287 e!3012759)))

(assert (=> d!1543974 (= res!2052287 (is-Nil!54929 (toList!7449 lm!2280)))))

(assert (=> d!1543974 (= (forall!12571 (toList!7449 lm!2280) lambda!235730) e!3012759)))

(declare-fun b!4821911 () Bool)

(declare-fun e!3012760 () Bool)

(assert (=> b!4821911 (= e!3012759 e!3012760)))

(declare-fun res!2052288 () Bool)

(assert (=> b!4821911 (=> (not res!2052288) (not e!3012760))))

(assert (=> b!4821911 (= res!2052288 (dynLambda!22194 lambda!235730 (h!61363 (toList!7449 lm!2280))))))

(declare-fun b!4821912 () Bool)

(assert (=> b!4821912 (= e!3012760 (forall!12571 (t!362549 (toList!7449 lm!2280)) lambda!235730))))

(assert (= (and d!1543974 (not res!2052287)) b!4821911))

(assert (= (and b!4821911 res!2052288) b!4821912))

(declare-fun b_lambda!189177 () Bool)

(assert (=> (not b_lambda!189177) (not b!4821911)))

(declare-fun m!5810072 () Bool)

(assert (=> b!4821911 m!5810072))

(declare-fun m!5810074 () Bool)

(assert (=> b!4821912 m!5810074))

(assert (=> d!1543932 d!1543974))

(declare-fun d!1543976 () Bool)

(assert (=> d!1543976 (isDefined!10586 (getValueByKey!2598 (toList!7449 lm!2280) lt!1970213))))

(declare-fun lt!1970252 () Unit!142488)

(assert (=> d!1543976 (= lt!1970252 (choose!35025 (toList!7449 lm!2280) lt!1970213))))

(declare-fun e!3012761 () Bool)

(assert (=> d!1543976 e!3012761))

(declare-fun res!2052289 () Bool)

(assert (=> d!1543976 (=> (not res!2052289) (not e!3012761))))

(assert (=> d!1543976 (= res!2052289 (isStrictlySorted!972 (toList!7449 lm!2280)))))

(assert (=> d!1543976 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2383 (toList!7449 lm!2280) lt!1970213) lt!1970252)))

(declare-fun b!4821913 () Bool)

(assert (=> b!4821913 (= e!3012761 (containsKey!4333 (toList!7449 lm!2280) lt!1970213))))

(assert (= (and d!1543976 res!2052289) b!4821913))

(assert (=> d!1543976 m!5809994))

(assert (=> d!1543976 m!5809994))

(assert (=> d!1543976 m!5810018))

(declare-fun m!5810076 () Bool)

(assert (=> d!1543976 m!5810076))

(assert (=> d!1543976 m!5809988))

(assert (=> b!4821913 m!5810014))

(assert (=> b!4821839 d!1543976))

(assert (=> b!4821839 d!1543956))

(assert (=> b!4821839 d!1543954))

(declare-fun d!1543978 () Bool)

(declare-fun choose!35026 (Hashable!7249 K!16612) (_ BitVec 64))

(assert (=> d!1543978 (= (hash!5350 hashF!1509 key!5428) (choose!35026 hashF!1509 key!5428))))

(declare-fun bs!1162359 () Bool)

(assert (= bs!1162359 d!1543978))

(declare-fun m!5810078 () Bool)

(assert (=> bs!1162359 m!5810078))

(assert (=> d!1543938 d!1543978))

(declare-fun d!1543980 () Bool)

(declare-fun res!2052290 () Bool)

(declare-fun e!3012762 () Bool)

(assert (=> d!1543980 (=> res!2052290 e!3012762)))

(assert (=> d!1543980 (= res!2052290 (and (is-Cons!54928 (t!362548 (apply!13336 lm!2280 lt!1970213))) (= (_1!32357 (h!61362 (t!362548 (apply!13336 lm!2280 lt!1970213)))) key!5428)))))

(assert (=> d!1543980 (= (containsKey!4331 (t!362548 (apply!13336 lm!2280 lt!1970213)) key!5428) e!3012762)))

(declare-fun b!4821914 () Bool)

(declare-fun e!3012763 () Bool)

(assert (=> b!4821914 (= e!3012762 e!3012763)))

(declare-fun res!2052291 () Bool)

(assert (=> b!4821914 (=> (not res!2052291) (not e!3012763))))

(assert (=> b!4821914 (= res!2052291 (is-Cons!54928 (t!362548 (apply!13336 lm!2280 lt!1970213))))))

(declare-fun b!4821915 () Bool)

(assert (=> b!4821915 (= e!3012763 (containsKey!4331 (t!362548 (t!362548 (apply!13336 lm!2280 lt!1970213))) key!5428))))

(assert (= (and d!1543980 (not res!2052290)) b!4821914))

(assert (= (and b!4821914 res!2052291) b!4821915))

(declare-fun m!5810080 () Bool)

(assert (=> b!4821915 m!5810080))

(assert (=> b!4821821 d!1543980))

(declare-fun tp_is_empty!34405 () Bool)

(declare-fun b!4821920 () Bool)

(declare-fun tp!1362409 () Bool)

(declare-fun e!3012766 () Bool)

(assert (=> b!4821920 (= e!3012766 (and tp_is_empty!34401 tp_is_empty!34405 tp!1362409))))

(assert (=> b!4821846 (= tp!1362399 e!3012766)))

(assert (= (and b!4821846 (is-Cons!54928 (_2!32358 (h!61363 (toList!7449 lm!2280))))) b!4821920))

(declare-fun b!4821921 () Bool)

(declare-fun e!3012767 () Bool)

(declare-fun tp!1362410 () Bool)

(declare-fun tp!1362411 () Bool)

(assert (=> b!4821921 (= e!3012767 (and tp!1362410 tp!1362411))))

(assert (=> b!4821846 (= tp!1362400 e!3012767)))

(assert (= (and b!4821846 (is-Cons!54929 (t!362549 (toList!7449 lm!2280)))) b!4821921))

(declare-fun b_lambda!189179 () Bool)

(assert (= b_lambda!189177 (or d!1543932 b_lambda!189179)))

(declare-fun bs!1162360 () Bool)

(declare-fun d!1543982 () Bool)

(assert (= bs!1162360 (and d!1543982 d!1543932)))

(declare-fun allKeysSameHash!1997 (List!55052 (_ BitVec 64) Hashable!7249) Bool)

(assert (=> bs!1162360 (= (dynLambda!22194 lambda!235730 (h!61363 (toList!7449 lm!2280))) (allKeysSameHash!1997 (_2!32358 (h!61363 (toList!7449 lm!2280))) (_1!32358 (h!61363 (toList!7449 lm!2280))) hashF!1509))))

(declare-fun m!5810082 () Bool)

(assert (=> bs!1162360 m!5810082))

(assert (=> b!4821911 d!1543982))

(declare-fun b_lambda!189181 () Bool)

(assert (= b_lambda!189175 (or start!499760 b_lambda!189181)))

(declare-fun bs!1162361 () Bool)

(declare-fun d!1543984 () Bool)

(assert (= bs!1162361 (and d!1543984 start!499760)))

(assert (=> bs!1162361 (= (dynLambda!22194 lambda!235719 (h!61363 (t!362549 (toList!7449 lm!2280)))) (noDuplicateKeys!2437 (_2!32358 (h!61363 (t!362549 (toList!7449 lm!2280))))))))

(declare-fun m!5810084 () Bool)

(assert (=> bs!1162361 m!5810084))

(assert (=> b!4821895 d!1543984))

(push 1)

(assert (not b!4821893))

(assert (not d!1543976))

(assert (not d!1543960))

(assert (not bs!1162360))

(assert (not b!4821912))

(assert (not b!4821921))

(assert (not b!4821920))

(assert tp_is_empty!34405)

(assert (not b!4821887))

(assert (not b!4821910))

(assert (not b!4821913))

(assert (not d!1543956))

(assert (not b!4821904))

(assert (not b_lambda!189181))

(assert (not b!4821915))

(assert (not bs!1162361))

(assert (not b!4821903))

(assert (not d!1543978))

(assert (not d!1543962))

(assert (not b!4821890))

(assert (not b_lambda!189179))

(assert (not b!4821898))

(assert tp_is_empty!34401)

(assert (not b_lambda!189169))

(assert (not b!4821896))

(assert (not b!4821880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

