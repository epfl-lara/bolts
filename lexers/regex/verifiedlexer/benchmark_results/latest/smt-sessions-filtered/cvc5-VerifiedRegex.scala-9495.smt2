; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502186 () Bool)

(assert start!502186)

(declare-fun b!4832434 () Bool)

(declare-fun res!2058437 () Bool)

(declare-fun e!3019780 () Bool)

(assert (=> b!4832434 (=> (not res!2058437) (not e!3019780))))

(declare-datatypes ((V!17008 0))(
  ( (V!17009 (val!21715 Int)) )
))
(declare-datatypes ((K!16762 0))(
  ( (K!16763 (val!21716 Int)) )
))
(declare-datatypes ((tuple2!58366 0))(
  ( (tuple2!58367 (_1!32477 K!16762) (_2!32477 V!17008)) )
))
(declare-datatypes ((List!55200 0))(
  ( (Nil!55076) (Cons!55076 (h!61510 tuple2!58366) (t!362696 List!55200)) )
))
(declare-datatypes ((tuple2!58368 0))(
  ( (tuple2!58369 (_1!32478 (_ BitVec 64)) (_2!32478 List!55200)) )
))
(declare-datatypes ((List!55201 0))(
  ( (Nil!55077) (Cons!55077 (h!61511 tuple2!58368) (t!362697 List!55201)) )
))
(declare-datatypes ((ListLongMap!6081 0))(
  ( (ListLongMap!6082 (toList!7559 List!55201)) )
))
(declare-fun lm!2325 () ListLongMap!6081)

(declare-datatypes ((Hashable!7309 0))(
  ( (HashableExt!7308 (__x!33584 Int)) )
))
(declare-fun hashF!1543 () Hashable!7309)

(declare-fun key!5594 () K!16762)

(declare-fun contains!18890 (ListLongMap!6081 (_ BitVec 64)) Bool)

(declare-fun hash!5492 (Hashable!7309 K!16762) (_ BitVec 64))

(assert (=> b!4832434 (= res!2058437 (not (contains!18890 lm!2325 (hash!5492 hashF!1543 key!5594))))))

(declare-fun res!2058434 () Bool)

(assert (=> start!502186 (=> (not res!2058434) (not e!3019780))))

(declare-fun lambda!238411 () Int)

(declare-fun forall!12687 (List!55201 Int) Bool)

(assert (=> start!502186 (= res!2058434 (forall!12687 (toList!7559 lm!2325) lambda!238411))))

(assert (=> start!502186 e!3019780))

(declare-fun e!3019779 () Bool)

(declare-fun inv!70663 (ListLongMap!6081) Bool)

(assert (=> start!502186 (and (inv!70663 lm!2325) e!3019779)))

(assert (=> start!502186 true))

(declare-fun tp_is_empty!34581 () Bool)

(assert (=> start!502186 tp_is_empty!34581))

(declare-fun b!4832435 () Bool)

(declare-fun res!2058436 () Bool)

(assert (=> b!4832435 (=> (not res!2058436) (not e!3019780))))

(declare-fun allKeysSameHashInMap!2625 (ListLongMap!6081 Hashable!7309) Bool)

(assert (=> b!4832435 (= res!2058436 (allKeysSameHashInMap!2625 lm!2325 hashF!1543))))

(declare-fun b!4832436 () Bool)

(declare-fun tp!1362949 () Bool)

(assert (=> b!4832436 (= e!3019779 tp!1362949)))

(declare-fun b!4832437 () Bool)

(declare-fun res!2058435 () Bool)

(assert (=> b!4832437 (=> (not res!2058435) (not e!3019780))))

(assert (=> b!4832437 (= res!2058435 (not (is-Cons!55077 (toList!7559 lm!2325))))))

(declare-fun b!4832438 () Bool)

(declare-datatypes ((ListMap!6931 0))(
  ( (ListMap!6932 (toList!7560 List!55200)) )
))
(declare-fun contains!18891 (ListMap!6931 K!16762) Bool)

(declare-fun extractMap!2717 (List!55201) ListMap!6931)

(assert (=> b!4832438 (= e!3019780 (contains!18891 (extractMap!2717 (toList!7559 lm!2325)) key!5594))))

(assert (= (and start!502186 res!2058434) b!4832435))

(assert (= (and b!4832435 res!2058436) b!4832434))

(assert (= (and b!4832434 res!2058437) b!4832437))

(assert (= (and b!4832437 res!2058435) b!4832438))

(assert (= start!502186 b!4832436))

(declare-fun m!5826880 () Bool)

(assert (=> b!4832434 m!5826880))

(assert (=> b!4832434 m!5826880))

(declare-fun m!5826882 () Bool)

(assert (=> b!4832434 m!5826882))

(declare-fun m!5826884 () Bool)

(assert (=> start!502186 m!5826884))

(declare-fun m!5826886 () Bool)

(assert (=> start!502186 m!5826886))

(declare-fun m!5826888 () Bool)

(assert (=> b!4832435 m!5826888))

(declare-fun m!5826890 () Bool)

(assert (=> b!4832438 m!5826890))

(assert (=> b!4832438 m!5826890))

(declare-fun m!5826892 () Bool)

(assert (=> b!4832438 m!5826892))

(push 1)

(assert (not b!4832434))

(assert (not b!4832438))

(assert (not b!4832435))

(assert (not b!4832436))

(assert (not start!502186))

(assert tp_is_empty!34581)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4832480 () Bool)

(declare-fun e!3019806 () Bool)

(declare-datatypes ((List!55204 0))(
  ( (Nil!55080) (Cons!55080 (h!61514 K!16762) (t!362700 List!55204)) )
))
(declare-fun contains!18894 (List!55204 K!16762) Bool)

(declare-fun keys!20288 (ListMap!6931) List!55204)

(assert (=> b!4832480 (= e!3019806 (not (contains!18894 (keys!20288 (extractMap!2717 (toList!7559 lm!2325))) key!5594)))))

(declare-fun b!4832481 () Bool)

(declare-fun e!3019803 () List!55204)

(assert (=> b!4832481 (= e!3019803 (keys!20288 (extractMap!2717 (toList!7559 lm!2325))))))

(declare-fun b!4832482 () Bool)

(declare-datatypes ((Unit!144067 0))(
  ( (Unit!144068) )
))
(declare-fun e!3019808 () Unit!144067)

(declare-fun e!3019804 () Unit!144067)

(assert (=> b!4832482 (= e!3019808 e!3019804)))

(declare-fun c!823440 () Bool)

(declare-fun call!336761 () Bool)

(assert (=> b!4832482 (= c!823440 call!336761)))

(declare-fun b!4832483 () Bool)

(declare-fun getKeysList!1177 (List!55200) List!55204)

(assert (=> b!4832483 (= e!3019803 (getKeysList!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))

(declare-fun b!4832484 () Bool)

(declare-fun lt!1978189 () Unit!144067)

(assert (=> b!4832484 (= e!3019808 lt!1978189)))

(declare-fun lt!1978187 () Unit!144067)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2445 (List!55200 K!16762) Unit!144067)

(assert (=> b!4832484 (= lt!1978187 (lemmaContainsKeyImpliesGetValueByKeyDefined!2445 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(declare-datatypes ((Option!13533 0))(
  ( (None!13532) (Some!13532 (v!49231 V!17008)) )
))
(declare-fun isDefined!10648 (Option!13533) Bool)

(declare-fun getValueByKey!2660 (List!55200 K!16762) Option!13533)

(assert (=> b!4832484 (isDefined!10648 (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(declare-fun lt!1978188 () Unit!144067)

(assert (=> b!4832484 (= lt!1978188 lt!1978187)))

(declare-fun lemmaInListThenGetKeysListContains!1172 (List!55200 K!16762) Unit!144067)

(assert (=> b!4832484 (= lt!1978189 (lemmaInListThenGetKeysListContains!1172 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(assert (=> b!4832484 call!336761))

(declare-fun bm!336756 () Bool)

(assert (=> bm!336756 (= call!336761 (contains!18894 e!3019803 key!5594))))

(declare-fun c!823441 () Bool)

(declare-fun c!823442 () Bool)

(assert (=> bm!336756 (= c!823441 c!823442)))

(declare-fun b!4832485 () Bool)

(declare-fun e!3019807 () Bool)

(declare-fun e!3019805 () Bool)

(assert (=> b!4832485 (= e!3019807 e!3019805)))

(declare-fun res!2058458 () Bool)

(assert (=> b!4832485 (=> (not res!2058458) (not e!3019805))))

(assert (=> b!4832485 (= res!2058458 (isDefined!10648 (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594)))))

(declare-fun b!4832486 () Bool)

(assert (=> b!4832486 (= e!3019805 (contains!18894 (keys!20288 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(declare-fun b!4832487 () Bool)

(assert (=> b!4832487 false))

(declare-fun lt!1978193 () Unit!144067)

(declare-fun lt!1978190 () Unit!144067)

(assert (=> b!4832487 (= lt!1978193 lt!1978190)))

(declare-fun containsKey!4444 (List!55200 K!16762) Bool)

(assert (=> b!4832487 (containsKey!4444 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1177 (List!55200 K!16762) Unit!144067)

(assert (=> b!4832487 (= lt!1978190 (lemmaInGetKeysListThenContainsKey!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(declare-fun Unit!144069 () Unit!144067)

(assert (=> b!4832487 (= e!3019804 Unit!144069)))

(declare-fun d!1549610 () Bool)

(assert (=> d!1549610 e!3019807))

(declare-fun res!2058460 () Bool)

(assert (=> d!1549610 (=> res!2058460 e!3019807)))

(assert (=> d!1549610 (= res!2058460 e!3019806)))

(declare-fun res!2058459 () Bool)

(assert (=> d!1549610 (=> (not res!2058459) (not e!3019806))))

(declare-fun lt!1978192 () Bool)

(assert (=> d!1549610 (= res!2058459 (not lt!1978192))))

(declare-fun lt!1978186 () Bool)

(assert (=> d!1549610 (= lt!1978192 lt!1978186)))

(declare-fun lt!1978191 () Unit!144067)

(assert (=> d!1549610 (= lt!1978191 e!3019808)))

(assert (=> d!1549610 (= c!823442 lt!1978186)))

(assert (=> d!1549610 (= lt!1978186 (containsKey!4444 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(assert (=> d!1549610 (= (contains!18891 (extractMap!2717 (toList!7559 lm!2325)) key!5594) lt!1978192)))

(declare-fun b!4832488 () Bool)

(declare-fun Unit!144070 () Unit!144067)

(assert (=> b!4832488 (= e!3019804 Unit!144070)))

(assert (= (and d!1549610 c!823442) b!4832484))

(assert (= (and d!1549610 (not c!823442)) b!4832482))

(assert (= (and b!4832482 c!823440) b!4832487))

(assert (= (and b!4832482 (not c!823440)) b!4832488))

(assert (= (or b!4832484 b!4832482) bm!336756))

(assert (= (and bm!336756 c!823441) b!4832483))

(assert (= (and bm!336756 (not c!823441)) b!4832481))

(assert (= (and d!1549610 res!2058459) b!4832480))

(assert (= (and d!1549610 (not res!2058460)) b!4832485))

(assert (= (and b!4832485 res!2058458) b!4832486))

(assert (=> b!4832480 m!5826890))

(declare-fun m!5826910 () Bool)

(assert (=> b!4832480 m!5826910))

(assert (=> b!4832480 m!5826910))

(declare-fun m!5826912 () Bool)

(assert (=> b!4832480 m!5826912))

(declare-fun m!5826914 () Bool)

(assert (=> d!1549610 m!5826914))

(declare-fun m!5826916 () Bool)

(assert (=> bm!336756 m!5826916))

(declare-fun m!5826918 () Bool)

(assert (=> b!4832483 m!5826918))

(assert (=> b!4832486 m!5826890))

(assert (=> b!4832486 m!5826910))

(assert (=> b!4832486 m!5826910))

(assert (=> b!4832486 m!5826912))

(assert (=> b!4832487 m!5826914))

(declare-fun m!5826920 () Bool)

(assert (=> b!4832487 m!5826920))

(declare-fun m!5826922 () Bool)

(assert (=> b!4832485 m!5826922))

(assert (=> b!4832485 m!5826922))

(declare-fun m!5826924 () Bool)

(assert (=> b!4832485 m!5826924))

(assert (=> b!4832481 m!5826890))

(assert (=> b!4832481 m!5826910))

(declare-fun m!5826926 () Bool)

(assert (=> b!4832484 m!5826926))

(assert (=> b!4832484 m!5826922))

(assert (=> b!4832484 m!5826922))

(assert (=> b!4832484 m!5826924))

(declare-fun m!5826928 () Bool)

(assert (=> b!4832484 m!5826928))

(assert (=> b!4832438 d!1549610))

(declare-fun bs!1167114 () Bool)

(declare-fun d!1549616 () Bool)

(assert (= bs!1167114 (and d!1549616 start!502186)))

(declare-fun lambda!238420 () Int)

(assert (=> bs!1167114 (= lambda!238420 lambda!238411)))

(declare-fun lt!1978200 () ListMap!6931)

(declare-fun invariantList!1831 (List!55200) Bool)

(assert (=> d!1549616 (invariantList!1831 (toList!7560 lt!1978200))))

(declare-fun e!3019819 () ListMap!6931)

(assert (=> d!1549616 (= lt!1978200 e!3019819)))

(declare-fun c!823446 () Bool)

(assert (=> d!1549616 (= c!823446 (is-Cons!55077 (toList!7559 lm!2325)))))

(assert (=> d!1549616 (forall!12687 (toList!7559 lm!2325) lambda!238420)))

(assert (=> d!1549616 (= (extractMap!2717 (toList!7559 lm!2325)) lt!1978200)))

(declare-fun b!4832502 () Bool)

(declare-fun addToMapMapFromBucket!1832 (List!55200 ListMap!6931) ListMap!6931)

(assert (=> b!4832502 (= e!3019819 (addToMapMapFromBucket!1832 (_2!32478 (h!61511 (toList!7559 lm!2325))) (extractMap!2717 (t!362697 (toList!7559 lm!2325)))))))

(declare-fun b!4832503 () Bool)

(assert (=> b!4832503 (= e!3019819 (ListMap!6932 Nil!55076))))

(assert (= (and d!1549616 c!823446) b!4832502))

(assert (= (and d!1549616 (not c!823446)) b!4832503))

(declare-fun m!5826946 () Bool)

(assert (=> d!1549616 m!5826946))

(declare-fun m!5826948 () Bool)

(assert (=> d!1549616 m!5826948))

(declare-fun m!5826950 () Bool)

(assert (=> b!4832502 m!5826950))

(assert (=> b!4832502 m!5826950))

(declare-fun m!5826952 () Bool)

(assert (=> b!4832502 m!5826952))

(assert (=> b!4832438 d!1549616))

(declare-fun bs!1167115 () Bool)

(declare-fun d!1549626 () Bool)

(assert (= bs!1167115 (and d!1549626 start!502186)))

(declare-fun lambda!238423 () Int)

(assert (=> bs!1167115 (not (= lambda!238423 lambda!238411))))

(declare-fun bs!1167116 () Bool)

(assert (= bs!1167116 (and d!1549626 d!1549616)))

(assert (=> bs!1167116 (not (= lambda!238423 lambda!238420))))

(assert (=> d!1549626 true))

(assert (=> d!1549626 (= (allKeysSameHashInMap!2625 lm!2325 hashF!1543) (forall!12687 (toList!7559 lm!2325) lambda!238423))))

(declare-fun bs!1167117 () Bool)

(assert (= bs!1167117 d!1549626))

(declare-fun m!5826954 () Bool)

(assert (=> bs!1167117 m!5826954))

(assert (=> b!4832435 d!1549626))

(declare-fun d!1549628 () Bool)

(declare-fun res!2058472 () Bool)

(declare-fun e!3019824 () Bool)

(assert (=> d!1549628 (=> res!2058472 e!3019824)))

(assert (=> d!1549628 (= res!2058472 (is-Nil!55077 (toList!7559 lm!2325)))))

(assert (=> d!1549628 (= (forall!12687 (toList!7559 lm!2325) lambda!238411) e!3019824)))

(declare-fun b!4832510 () Bool)

(declare-fun e!3019825 () Bool)

(assert (=> b!4832510 (= e!3019824 e!3019825)))

(declare-fun res!2058473 () Bool)

(assert (=> b!4832510 (=> (not res!2058473) (not e!3019825))))

(declare-fun dynLambda!22254 (Int tuple2!58368) Bool)

(assert (=> b!4832510 (= res!2058473 (dynLambda!22254 lambda!238411 (h!61511 (toList!7559 lm!2325))))))

(declare-fun b!4832511 () Bool)

(assert (=> b!4832511 (= e!3019825 (forall!12687 (t!362697 (toList!7559 lm!2325)) lambda!238411))))

(assert (= (and d!1549628 (not res!2058472)) b!4832510))

(assert (= (and b!4832510 res!2058473) b!4832511))

(declare-fun b_lambda!190949 () Bool)

(assert (=> (not b_lambda!190949) (not b!4832510)))

(declare-fun m!5826956 () Bool)

(assert (=> b!4832510 m!5826956))

(declare-fun m!5826958 () Bool)

(assert (=> b!4832511 m!5826958))

(assert (=> start!502186 d!1549628))

(declare-fun d!1549630 () Bool)

(declare-fun isStrictlySorted!1006 (List!55201) Bool)

(assert (=> d!1549630 (= (inv!70663 lm!2325) (isStrictlySorted!1006 (toList!7559 lm!2325)))))

(declare-fun bs!1167118 () Bool)

(assert (= bs!1167118 d!1549630))

(declare-fun m!5826960 () Bool)

(assert (=> bs!1167118 m!5826960))

(assert (=> start!502186 d!1549630))

(declare-fun d!1549632 () Bool)

(declare-fun e!3019849 () Bool)

(assert (=> d!1549632 e!3019849))

(declare-fun res!2058485 () Bool)

(assert (=> d!1549632 (=> res!2058485 e!3019849)))

(declare-fun lt!1978233 () Bool)

(assert (=> d!1549632 (= res!2058485 (not lt!1978233))))

(declare-fun lt!1978236 () Bool)

(assert (=> d!1549632 (= lt!1978233 lt!1978236)))

(declare-fun lt!1978235 () Unit!144067)

(declare-fun e!3019848 () Unit!144067)

(assert (=> d!1549632 (= lt!1978235 e!3019848)))

(declare-fun c!823458 () Bool)

(assert (=> d!1549632 (= c!823458 lt!1978236)))

(declare-fun containsKey!4446 (List!55201 (_ BitVec 64)) Bool)

(assert (=> d!1549632 (= lt!1978236 (containsKey!4446 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(assert (=> d!1549632 (= (contains!18890 lm!2325 (hash!5492 hashF!1543 key!5594)) lt!1978233)))

(declare-fun b!4832545 () Bool)

(declare-fun lt!1978234 () Unit!144067)

(assert (=> b!4832545 (= e!3019848 lt!1978234)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2447 (List!55201 (_ BitVec 64)) Unit!144067)

(assert (=> b!4832545 (= lt!1978234 (lemmaContainsKeyImpliesGetValueByKeyDefined!2447 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13535 0))(
  ( (None!13534) (Some!13534 (v!49233 List!55200)) )
))
(declare-fun isDefined!10650 (Option!13535) Bool)

(declare-fun getValueByKey!2662 (List!55201 (_ BitVec 64)) Option!13535)

(assert (=> b!4832545 (isDefined!10650 (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(declare-fun b!4832546 () Bool)

(declare-fun Unit!144074 () Unit!144067)

(assert (=> b!4832546 (= e!3019848 Unit!144074)))

(declare-fun b!4832547 () Bool)

(assert (=> b!4832547 (= e!3019849 (isDefined!10650 (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594))))))

(assert (= (and d!1549632 c!823458) b!4832545))

(assert (= (and d!1549632 (not c!823458)) b!4832546))

(assert (= (and d!1549632 (not res!2058485)) b!4832547))

(assert (=> d!1549632 m!5826880))

(declare-fun m!5826982 () Bool)

(assert (=> d!1549632 m!5826982))

(assert (=> b!4832545 m!5826880))

(declare-fun m!5826984 () Bool)

(assert (=> b!4832545 m!5826984))

(assert (=> b!4832545 m!5826880))

(declare-fun m!5826986 () Bool)

(assert (=> b!4832545 m!5826986))

(assert (=> b!4832545 m!5826986))

(declare-fun m!5826988 () Bool)

(assert (=> b!4832545 m!5826988))

(assert (=> b!4832547 m!5826880))

(assert (=> b!4832547 m!5826986))

(assert (=> b!4832547 m!5826986))

(assert (=> b!4832547 m!5826988))

(assert (=> b!4832434 d!1549632))

(declare-fun d!1549636 () Bool)

(declare-fun hash!5495 (Hashable!7309 K!16762) (_ BitVec 64))

(assert (=> d!1549636 (= (hash!5492 hashF!1543 key!5594) (hash!5495 hashF!1543 key!5594))))

(declare-fun bs!1167119 () Bool)

(assert (= bs!1167119 d!1549636))

(declare-fun m!5826990 () Bool)

(assert (=> bs!1167119 m!5826990))

(assert (=> b!4832434 d!1549636))

(declare-fun b!4832552 () Bool)

(declare-fun e!3019852 () Bool)

(declare-fun tp!1362957 () Bool)

(declare-fun tp!1362958 () Bool)

(assert (=> b!4832552 (= e!3019852 (and tp!1362957 tp!1362958))))

(assert (=> b!4832436 (= tp!1362949 e!3019852)))

(assert (= (and b!4832436 (is-Cons!55077 (toList!7559 lm!2325))) b!4832552))

(declare-fun b_lambda!190951 () Bool)

(assert (= b_lambda!190949 (or start!502186 b_lambda!190951)))

(declare-fun bs!1167120 () Bool)

(declare-fun d!1549638 () Bool)

(assert (= bs!1167120 (and d!1549638 start!502186)))

(declare-fun noDuplicateKeys!2475 (List!55200) Bool)

(assert (=> bs!1167120 (= (dynLambda!22254 lambda!238411 (h!61511 (toList!7559 lm!2325))) (noDuplicateKeys!2475 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))

(declare-fun m!5826992 () Bool)

(assert (=> bs!1167120 m!5826992))

(assert (=> b!4832510 d!1549638))

(push 1)

(assert (not b!4832484))

(assert (not d!1549630))

(assert (not d!1549616))

(assert (not b!4832481))

(assert (not b!4832486))

(assert (not d!1549636))

(assert (not b!4832547))

(assert (not b!4832483))

(assert (not b!4832502))

(assert (not b_lambda!190951))

(assert (not b!4832552))

(assert (not b!4832487))

(assert (not b!4832511))

(assert tp_is_empty!34581)

(assert (not bs!1167120))

(assert (not b!4832485))

(assert (not bm!336756))

(assert (not d!1549632))

(assert (not b!4832545))

(assert (not d!1549626))

(assert (not b!4832480))

(assert (not d!1549610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1549642 () Bool)

(declare-fun lt!1978242 () Bool)

(declare-fun content!9838 (List!55204) (Set K!16762))

(assert (=> d!1549642 (= lt!1978242 (set.member key!5594 (content!9838 (keys!20288 (extractMap!2717 (toList!7559 lm!2325))))))))

(declare-fun e!3019864 () Bool)

(assert (=> d!1549642 (= lt!1978242 e!3019864)))

(declare-fun res!2058490 () Bool)

(assert (=> d!1549642 (=> (not res!2058490) (not e!3019864))))

(assert (=> d!1549642 (= res!2058490 (is-Cons!55080 (keys!20288 (extractMap!2717 (toList!7559 lm!2325)))))))

(assert (=> d!1549642 (= (contains!18894 (keys!20288 (extractMap!2717 (toList!7559 lm!2325))) key!5594) lt!1978242)))

(declare-fun b!4832568 () Bool)

(declare-fun e!3019863 () Bool)

(assert (=> b!4832568 (= e!3019864 e!3019863)))

(declare-fun res!2058491 () Bool)

(assert (=> b!4832568 (=> res!2058491 e!3019863)))

(assert (=> b!4832568 (= res!2058491 (= (h!61514 (keys!20288 (extractMap!2717 (toList!7559 lm!2325)))) key!5594))))

(declare-fun b!4832569 () Bool)

(assert (=> b!4832569 (= e!3019863 (contains!18894 (t!362700 (keys!20288 (extractMap!2717 (toList!7559 lm!2325)))) key!5594))))

(assert (= (and d!1549642 res!2058490) b!4832568))

(assert (= (and b!4832568 (not res!2058491)) b!4832569))

(assert (=> d!1549642 m!5826910))

(declare-fun m!5827004 () Bool)

(assert (=> d!1549642 m!5827004))

(declare-fun m!5827006 () Bool)

(assert (=> d!1549642 m!5827006))

(declare-fun m!5827008 () Bool)

(assert (=> b!4832569 m!5827008))

(assert (=> b!4832486 d!1549642))

(declare-fun b!4832577 () Bool)

(assert (=> b!4832577 true))

(declare-fun d!1549644 () Bool)

(declare-fun e!3019867 () Bool)

(assert (=> d!1549644 e!3019867))

(declare-fun res!2058500 () Bool)

(assert (=> d!1549644 (=> (not res!2058500) (not e!3019867))))

(declare-fun lt!1978245 () List!55204)

(declare-fun noDuplicate!979 (List!55204) Bool)

(assert (=> d!1549644 (= res!2058500 (noDuplicate!979 lt!1978245))))

(assert (=> d!1549644 (= lt!1978245 (getKeysList!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))

(assert (=> d!1549644 (= (keys!20288 (extractMap!2717 (toList!7559 lm!2325))) lt!1978245)))

(declare-fun b!4832576 () Bool)

(declare-fun res!2058498 () Bool)

(assert (=> b!4832576 (=> (not res!2058498) (not e!3019867))))

(declare-fun length!814 (List!55204) Int)

(declare-fun length!815 (List!55200) Int)

(assert (=> b!4832576 (= res!2058498 (= (length!814 lt!1978245) (length!815 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))))

(declare-fun res!2058499 () Bool)

(assert (=> b!4832577 (=> (not res!2058499) (not e!3019867))))

(declare-fun lambda!238431 () Int)

(declare-fun forall!12689 (List!55204 Int) Bool)

(assert (=> b!4832577 (= res!2058499 (forall!12689 lt!1978245 lambda!238431))))

(declare-fun b!4832578 () Bool)

(declare-fun lambda!238432 () Int)

(declare-fun map!12620 (List!55200 Int) List!55204)

(assert (=> b!4832578 (= e!3019867 (= (content!9838 lt!1978245) (content!9838 (map!12620 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) lambda!238432))))))

(assert (= (and d!1549644 res!2058500) b!4832576))

(assert (= (and b!4832576 res!2058498) b!4832577))

(assert (= (and b!4832577 res!2058499) b!4832578))

(declare-fun m!5827010 () Bool)

(assert (=> d!1549644 m!5827010))

(assert (=> d!1549644 m!5826918))

(declare-fun m!5827012 () Bool)

(assert (=> b!4832576 m!5827012))

(declare-fun m!5827014 () Bool)

(assert (=> b!4832576 m!5827014))

(declare-fun m!5827016 () Bool)

(assert (=> b!4832577 m!5827016))

(declare-fun m!5827018 () Bool)

(assert (=> b!4832578 m!5827018))

(declare-fun m!5827020 () Bool)

(assert (=> b!4832578 m!5827020))

(assert (=> b!4832578 m!5827020))

(declare-fun m!5827022 () Bool)

(assert (=> b!4832578 m!5827022))

(assert (=> b!4832486 d!1549644))

(declare-fun d!1549646 () Bool)

(declare-fun isEmpty!29694 (Option!13533) Bool)

(assert (=> d!1549646 (= (isDefined!10648 (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594)) (not (isEmpty!29694 (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))))

(declare-fun bs!1167124 () Bool)

(assert (= bs!1167124 d!1549646))

(assert (=> bs!1167124 m!5826922))

(declare-fun m!5827024 () Bool)

(assert (=> bs!1167124 m!5827024))

(assert (=> b!4832485 d!1549646))

(declare-fun b!4832592 () Bool)

(declare-fun e!3019873 () Option!13533)

(assert (=> b!4832592 (= e!3019873 None!13532)))

(declare-fun b!4832590 () Bool)

(declare-fun e!3019872 () Option!13533)

(assert (=> b!4832590 (= e!3019872 e!3019873)))

(declare-fun c!823467 () Bool)

(assert (=> b!4832590 (= c!823467 (and (is-Cons!55076 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (not (= (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) key!5594))))))

(declare-fun b!4832589 () Bool)

(assert (=> b!4832589 (= e!3019872 (Some!13532 (_2!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))))

(declare-fun d!1549648 () Bool)

(declare-fun c!823466 () Bool)

(assert (=> d!1549648 (= c!823466 (and (is-Cons!55076 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (= (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) key!5594)))))

(assert (=> d!1549648 (= (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594) e!3019872)))

(declare-fun b!4832591 () Bool)

(assert (=> b!4832591 (= e!3019873 (getValueByKey!2660 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) key!5594))))

(assert (= (and d!1549648 c!823466) b!4832589))

(assert (= (and d!1549648 (not c!823466)) b!4832590))

(assert (= (and b!4832590 c!823467) b!4832591))

(assert (= (and b!4832590 (not c!823467)) b!4832592))

(declare-fun m!5827026 () Bool)

(assert (=> b!4832591 m!5827026))

(assert (=> b!4832485 d!1549648))

(declare-fun d!1549650 () Bool)

(declare-fun res!2058501 () Bool)

(declare-fun e!3019874 () Bool)

(assert (=> d!1549650 (=> res!2058501 e!3019874)))

(assert (=> d!1549650 (= res!2058501 (is-Nil!55077 (toList!7559 lm!2325)))))

(assert (=> d!1549650 (= (forall!12687 (toList!7559 lm!2325) lambda!238423) e!3019874)))

(declare-fun b!4832593 () Bool)

(declare-fun e!3019875 () Bool)

(assert (=> b!4832593 (= e!3019874 e!3019875)))

(declare-fun res!2058502 () Bool)

(assert (=> b!4832593 (=> (not res!2058502) (not e!3019875))))

(assert (=> b!4832593 (= res!2058502 (dynLambda!22254 lambda!238423 (h!61511 (toList!7559 lm!2325))))))

(declare-fun b!4832594 () Bool)

(assert (=> b!4832594 (= e!3019875 (forall!12687 (t!362697 (toList!7559 lm!2325)) lambda!238423))))

(assert (= (and d!1549650 (not res!2058501)) b!4832593))

(assert (= (and b!4832593 res!2058502) b!4832594))

(declare-fun b_lambda!190955 () Bool)

(assert (=> (not b_lambda!190955) (not b!4832593)))

(declare-fun m!5827028 () Bool)

(assert (=> b!4832593 m!5827028))

(declare-fun m!5827030 () Bool)

(assert (=> b!4832594 m!5827030))

(assert (=> d!1549626 d!1549650))

(declare-fun d!1549652 () Bool)

(declare-fun lt!1978246 () Bool)

(assert (=> d!1549652 (= lt!1978246 (set.member key!5594 (content!9838 e!3019803)))))

(declare-fun e!3019877 () Bool)

(assert (=> d!1549652 (= lt!1978246 e!3019877)))

(declare-fun res!2058503 () Bool)

(assert (=> d!1549652 (=> (not res!2058503) (not e!3019877))))

(assert (=> d!1549652 (= res!2058503 (is-Cons!55080 e!3019803))))

(assert (=> d!1549652 (= (contains!18894 e!3019803 key!5594) lt!1978246)))

(declare-fun b!4832595 () Bool)

(declare-fun e!3019876 () Bool)

(assert (=> b!4832595 (= e!3019877 e!3019876)))

(declare-fun res!2058504 () Bool)

(assert (=> b!4832595 (=> res!2058504 e!3019876)))

(assert (=> b!4832595 (= res!2058504 (= (h!61514 e!3019803) key!5594))))

(declare-fun b!4832596 () Bool)

(assert (=> b!4832596 (= e!3019876 (contains!18894 (t!362700 e!3019803) key!5594))))

(assert (= (and d!1549652 res!2058503) b!4832595))

(assert (= (and b!4832595 (not res!2058504)) b!4832596))

(declare-fun m!5827032 () Bool)

(assert (=> d!1549652 m!5827032))

(declare-fun m!5827034 () Bool)

(assert (=> d!1549652 m!5827034))

(declare-fun m!5827036 () Bool)

(assert (=> b!4832596 m!5827036))

(assert (=> bm!336756 d!1549652))

(declare-fun d!1549654 () Bool)

(declare-fun noDuplicatedKeys!497 (List!55200) Bool)

(assert (=> d!1549654 (= (invariantList!1831 (toList!7560 lt!1978200)) (noDuplicatedKeys!497 (toList!7560 lt!1978200)))))

(declare-fun bs!1167125 () Bool)

(assert (= bs!1167125 d!1549654))

(declare-fun m!5827038 () Bool)

(assert (=> bs!1167125 m!5827038))

(assert (=> d!1549616 d!1549654))

(declare-fun d!1549656 () Bool)

(declare-fun res!2058505 () Bool)

(declare-fun e!3019878 () Bool)

(assert (=> d!1549656 (=> res!2058505 e!3019878)))

(assert (=> d!1549656 (= res!2058505 (is-Nil!55077 (toList!7559 lm!2325)))))

(assert (=> d!1549656 (= (forall!12687 (toList!7559 lm!2325) lambda!238420) e!3019878)))

(declare-fun b!4832597 () Bool)

(declare-fun e!3019879 () Bool)

(assert (=> b!4832597 (= e!3019878 e!3019879)))

(declare-fun res!2058506 () Bool)

(assert (=> b!4832597 (=> (not res!2058506) (not e!3019879))))

(assert (=> b!4832597 (= res!2058506 (dynLambda!22254 lambda!238420 (h!61511 (toList!7559 lm!2325))))))

(declare-fun b!4832598 () Bool)

(assert (=> b!4832598 (= e!3019879 (forall!12687 (t!362697 (toList!7559 lm!2325)) lambda!238420))))

(assert (= (and d!1549656 (not res!2058505)) b!4832597))

(assert (= (and b!4832597 res!2058506) b!4832598))

(declare-fun b_lambda!190957 () Bool)

(assert (=> (not b_lambda!190957) (not b!4832597)))

(declare-fun m!5827040 () Bool)

(assert (=> b!4832597 m!5827040))

(declare-fun m!5827042 () Bool)

(assert (=> b!4832598 m!5827042))

(assert (=> d!1549616 d!1549656))

(declare-fun d!1549658 () Bool)

(declare-fun res!2058511 () Bool)

(declare-fun e!3019884 () Bool)

(assert (=> d!1549658 (=> res!2058511 e!3019884)))

(assert (=> d!1549658 (= res!2058511 (or (is-Nil!55077 (toList!7559 lm!2325)) (is-Nil!55077 (t!362697 (toList!7559 lm!2325)))))))

(assert (=> d!1549658 (= (isStrictlySorted!1006 (toList!7559 lm!2325)) e!3019884)))

(declare-fun b!4832603 () Bool)

(declare-fun e!3019885 () Bool)

(assert (=> b!4832603 (= e!3019884 e!3019885)))

(declare-fun res!2058512 () Bool)

(assert (=> b!4832603 (=> (not res!2058512) (not e!3019885))))

(assert (=> b!4832603 (= res!2058512 (bvslt (_1!32478 (h!61511 (toList!7559 lm!2325))) (_1!32478 (h!61511 (t!362697 (toList!7559 lm!2325))))))))

(declare-fun b!4832604 () Bool)

(assert (=> b!4832604 (= e!3019885 (isStrictlySorted!1006 (t!362697 (toList!7559 lm!2325))))))

(assert (= (and d!1549658 (not res!2058511)) b!4832603))

(assert (= (and b!4832603 res!2058512) b!4832604))

(declare-fun m!5827044 () Bool)

(assert (=> b!4832604 m!5827044))

(assert (=> d!1549630 d!1549658))

(declare-fun d!1549660 () Bool)

(declare-fun res!2058517 () Bool)

(declare-fun e!3019890 () Bool)

(assert (=> d!1549660 (=> res!2058517 e!3019890)))

(assert (=> d!1549660 (= res!2058517 (and (is-Cons!55076 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (= (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) key!5594)))))

(assert (=> d!1549660 (= (containsKey!4444 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594) e!3019890)))

(declare-fun b!4832609 () Bool)

(declare-fun e!3019891 () Bool)

(assert (=> b!4832609 (= e!3019890 e!3019891)))

(declare-fun res!2058518 () Bool)

(assert (=> b!4832609 (=> (not res!2058518) (not e!3019891))))

(assert (=> b!4832609 (= res!2058518 (is-Cons!55076 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))

(declare-fun b!4832610 () Bool)

(assert (=> b!4832610 (= e!3019891 (containsKey!4444 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) key!5594))))

(assert (= (and d!1549660 (not res!2058517)) b!4832609))

(assert (= (and b!4832609 res!2058518) b!4832610))

(declare-fun m!5827046 () Bool)

(assert (=> b!4832610 m!5827046))

(assert (=> b!4832487 d!1549660))

(declare-fun d!1549662 () Bool)

(assert (=> d!1549662 (containsKey!4444 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594)))

(declare-fun lt!1978249 () Unit!144067)

(declare-fun choose!35293 (List!55200 K!16762) Unit!144067)

(assert (=> d!1549662 (= lt!1978249 (choose!35293 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(assert (=> d!1549662 (invariantList!1831 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))

(assert (=> d!1549662 (= (lemmaInGetKeysListThenContainsKey!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594) lt!1978249)))

(declare-fun bs!1167126 () Bool)

(assert (= bs!1167126 d!1549662))

(assert (=> bs!1167126 m!5826914))

(declare-fun m!5827048 () Bool)

(assert (=> bs!1167126 m!5827048))

(declare-fun m!5827050 () Bool)

(assert (=> bs!1167126 m!5827050))

(assert (=> b!4832487 d!1549662))

(declare-fun d!1549664 () Bool)

(declare-fun res!2058519 () Bool)

(declare-fun e!3019892 () Bool)

(assert (=> d!1549664 (=> res!2058519 e!3019892)))

(assert (=> d!1549664 (= res!2058519 (is-Nil!55077 (t!362697 (toList!7559 lm!2325))))))

(assert (=> d!1549664 (= (forall!12687 (t!362697 (toList!7559 lm!2325)) lambda!238411) e!3019892)))

(declare-fun b!4832611 () Bool)

(declare-fun e!3019893 () Bool)

(assert (=> b!4832611 (= e!3019892 e!3019893)))

(declare-fun res!2058520 () Bool)

(assert (=> b!4832611 (=> (not res!2058520) (not e!3019893))))

(assert (=> b!4832611 (= res!2058520 (dynLambda!22254 lambda!238411 (h!61511 (t!362697 (toList!7559 lm!2325)))))))

(declare-fun b!4832612 () Bool)

(assert (=> b!4832612 (= e!3019893 (forall!12687 (t!362697 (t!362697 (toList!7559 lm!2325))) lambda!238411))))

(assert (= (and d!1549664 (not res!2058519)) b!4832611))

(assert (= (and b!4832611 res!2058520) b!4832612))

(declare-fun b_lambda!190959 () Bool)

(assert (=> (not b_lambda!190959) (not b!4832611)))

(declare-fun m!5827052 () Bool)

(assert (=> b!4832611 m!5827052))

(declare-fun m!5827054 () Bool)

(assert (=> b!4832612 m!5827054))

(assert (=> b!4832511 d!1549664))

(assert (=> b!4832481 d!1549644))

(declare-fun d!1549666 () Bool)

(assert (=> d!1549666 (isDefined!10650 (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(declare-fun lt!1978252 () Unit!144067)

(declare-fun choose!35294 (List!55201 (_ BitVec 64)) Unit!144067)

(assert (=> d!1549666 (= lt!1978252 (choose!35294 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(declare-fun e!3019896 () Bool)

(assert (=> d!1549666 e!3019896))

(declare-fun res!2058523 () Bool)

(assert (=> d!1549666 (=> (not res!2058523) (not e!3019896))))

(assert (=> d!1549666 (= res!2058523 (isStrictlySorted!1006 (toList!7559 lm!2325)))))

(assert (=> d!1549666 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2447 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)) lt!1978252)))

(declare-fun b!4832615 () Bool)

(assert (=> b!4832615 (= e!3019896 (containsKey!4446 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))

(assert (= (and d!1549666 res!2058523) b!4832615))

(assert (=> d!1549666 m!5826880))

(assert (=> d!1549666 m!5826986))

(assert (=> d!1549666 m!5826986))

(assert (=> d!1549666 m!5826988))

(assert (=> d!1549666 m!5826880))

(declare-fun m!5827056 () Bool)

(assert (=> d!1549666 m!5827056))

(assert (=> d!1549666 m!5826960))

(assert (=> b!4832615 m!5826880))

(assert (=> b!4832615 m!5826982))

(assert (=> b!4832545 d!1549666))

(declare-fun d!1549668 () Bool)

(declare-fun isEmpty!29695 (Option!13535) Bool)

(assert (=> d!1549668 (= (isDefined!10650 (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594))) (not (isEmpty!29695 (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)))))))

(declare-fun bs!1167127 () Bool)

(assert (= bs!1167127 d!1549668))

(assert (=> bs!1167127 m!5826986))

(declare-fun m!5827058 () Bool)

(assert (=> bs!1167127 m!5827058))

(assert (=> b!4832545 d!1549668))

(declare-fun b!4832632 () Bool)

(declare-fun e!3019908 () Option!13535)

(assert (=> b!4832632 (= e!3019908 (getValueByKey!2662 (t!362697 (toList!7559 lm!2325)) (hash!5492 hashF!1543 key!5594)))))

(declare-fun c!823472 () Bool)

(declare-fun d!1549670 () Bool)

(assert (=> d!1549670 (= c!823472 (and (is-Cons!55077 (toList!7559 lm!2325)) (= (_1!32478 (h!61511 (toList!7559 lm!2325))) (hash!5492 hashF!1543 key!5594))))))

(declare-fun e!3019907 () Option!13535)

(assert (=> d!1549670 (= (getValueByKey!2662 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)) e!3019907)))

(declare-fun b!4832630 () Bool)

(assert (=> b!4832630 (= e!3019907 (Some!13534 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))

(declare-fun b!4832633 () Bool)

(assert (=> b!4832633 (= e!3019908 None!13534)))

(declare-fun b!4832631 () Bool)

(assert (=> b!4832631 (= e!3019907 e!3019908)))

(declare-fun c!823473 () Bool)

(assert (=> b!4832631 (= c!823473 (and (is-Cons!55077 (toList!7559 lm!2325)) (not (= (_1!32478 (h!61511 (toList!7559 lm!2325))) (hash!5492 hashF!1543 key!5594)))))))

(assert (= (and d!1549670 c!823472) b!4832630))

(assert (= (and d!1549670 (not c!823472)) b!4832631))

(assert (= (and b!4832631 c!823473) b!4832632))

(assert (= (and b!4832631 (not c!823473)) b!4832633))

(assert (=> b!4832632 m!5826880))

(declare-fun m!5827064 () Bool)

(assert (=> b!4832632 m!5827064))

(assert (=> b!4832545 d!1549670))

(declare-fun d!1549676 () Bool)

(declare-fun res!2058540 () Bool)

(declare-fun e!3019919 () Bool)

(assert (=> d!1549676 (=> res!2058540 e!3019919)))

(assert (=> d!1549676 (= res!2058540 (not (is-Cons!55076 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(assert (=> d!1549676 (= (noDuplicateKeys!2475 (_2!32478 (h!61511 (toList!7559 lm!2325)))) e!3019919)))

(declare-fun b!4832644 () Bool)

(declare-fun e!3019920 () Bool)

(assert (=> b!4832644 (= e!3019919 e!3019920)))

(declare-fun res!2058541 () Bool)

(assert (=> b!4832644 (=> (not res!2058541) (not e!3019920))))

(declare-fun containsKey!4449 (List!55200 K!16762) Bool)

(assert (=> b!4832644 (= res!2058541 (not (containsKey!4449 (t!362696 (_2!32478 (h!61511 (toList!7559 lm!2325)))) (_1!32477 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))))

(declare-fun b!4832645 () Bool)

(assert (=> b!4832645 (= e!3019920 (noDuplicateKeys!2475 (t!362696 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(assert (= (and d!1549676 (not res!2058540)) b!4832644))

(assert (= (and b!4832644 res!2058541) b!4832645))

(declare-fun m!5827068 () Bool)

(assert (=> b!4832644 m!5827068))

(declare-fun m!5827070 () Bool)

(assert (=> b!4832645 m!5827070))

(assert (=> bs!1167120 d!1549676))

(declare-fun d!1549680 () Bool)

(declare-fun res!2058552 () Bool)

(declare-fun e!3019931 () Bool)

(assert (=> d!1549680 (=> res!2058552 e!3019931)))

(assert (=> d!1549680 (= res!2058552 (and (is-Cons!55077 (toList!7559 lm!2325)) (= (_1!32478 (h!61511 (toList!7559 lm!2325))) (hash!5492 hashF!1543 key!5594))))))

(assert (=> d!1549680 (= (containsKey!4446 (toList!7559 lm!2325) (hash!5492 hashF!1543 key!5594)) e!3019931)))

(declare-fun b!4832656 () Bool)

(declare-fun e!3019932 () Bool)

(assert (=> b!4832656 (= e!3019931 e!3019932)))

(declare-fun res!2058553 () Bool)

(assert (=> b!4832656 (=> (not res!2058553) (not e!3019932))))

(assert (=> b!4832656 (= res!2058553 (and (or (not (is-Cons!55077 (toList!7559 lm!2325))) (bvsle (_1!32478 (h!61511 (toList!7559 lm!2325))) (hash!5492 hashF!1543 key!5594))) (is-Cons!55077 (toList!7559 lm!2325)) (bvslt (_1!32478 (h!61511 (toList!7559 lm!2325))) (hash!5492 hashF!1543 key!5594))))))

(declare-fun b!4832657 () Bool)

(assert (=> b!4832657 (= e!3019932 (containsKey!4446 (t!362697 (toList!7559 lm!2325)) (hash!5492 hashF!1543 key!5594)))))

(assert (= (and d!1549680 (not res!2058552)) b!4832656))

(assert (= (and b!4832656 res!2058553) b!4832657))

(assert (=> b!4832657 m!5826880))

(declare-fun m!5827078 () Bool)

(assert (=> b!4832657 m!5827078))

(assert (=> d!1549632 d!1549680))

(assert (=> b!4832480 d!1549642))

(assert (=> b!4832480 d!1549644))

(declare-fun d!1549684 () Bool)

(assert (=> d!1549684 (isDefined!10648 (getValueByKey!2660 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(declare-fun lt!1978259 () Unit!144067)

(declare-fun choose!35295 (List!55200 K!16762) Unit!144067)

(assert (=> d!1549684 (= lt!1978259 (choose!35295 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(assert (=> d!1549684 (invariantList!1831 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))

(assert (=> d!1549684 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2445 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594) lt!1978259)))

(declare-fun bs!1167129 () Bool)

(assert (= bs!1167129 d!1549684))

(assert (=> bs!1167129 m!5826922))

(assert (=> bs!1167129 m!5826922))

(assert (=> bs!1167129 m!5826924))

(declare-fun m!5827092 () Bool)

(assert (=> bs!1167129 m!5827092))

(assert (=> bs!1167129 m!5827050))

(assert (=> b!4832484 d!1549684))

(assert (=> b!4832484 d!1549646))

(assert (=> b!4832484 d!1549648))

(declare-fun d!1549692 () Bool)

(assert (=> d!1549692 (contains!18894 (getKeysList!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) key!5594)))

(declare-fun lt!1978262 () Unit!144067)

(declare-fun choose!35297 (List!55200 K!16762) Unit!144067)

(assert (=> d!1549692 (= lt!1978262 (choose!35297 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594))))

(assert (=> d!1549692 (invariantList!1831 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))

(assert (=> d!1549692 (= (lemmaInListThenGetKeysListContains!1172 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) key!5594) lt!1978262)))

(declare-fun bs!1167130 () Bool)

(assert (= bs!1167130 d!1549692))

(assert (=> bs!1167130 m!5826918))

(assert (=> bs!1167130 m!5826918))

(declare-fun m!5827094 () Bool)

(assert (=> bs!1167130 m!5827094))

(declare-fun m!5827096 () Bool)

(assert (=> bs!1167130 m!5827096))

(assert (=> bs!1167130 m!5827050))

(assert (=> b!4832484 d!1549692))

(declare-fun b!4832725 () Bool)

(assert (=> b!4832725 true))

(declare-fun bs!1167134 () Bool)

(declare-fun b!4832722 () Bool)

(assert (= bs!1167134 (and b!4832722 b!4832725)))

(declare-fun lambda!238472 () Int)

(declare-fun lambda!238471 () Int)

(assert (=> bs!1167134 (= lambda!238472 lambda!238471)))

(assert (=> b!4832722 true))

(declare-fun lambda!238475 () Int)

(declare-fun lt!1978334 () ListMap!6931)

(assert (=> bs!1167134 (= (= lt!1978334 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (= lambda!238475 lambda!238471))))

(assert (=> b!4832722 (= (= lt!1978334 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (= lambda!238475 lambda!238472))))

(assert (=> b!4832722 true))

(declare-fun bs!1167135 () Bool)

(declare-fun d!1549694 () Bool)

(assert (= bs!1167135 (and d!1549694 b!4832725)))

(declare-fun lambda!238478 () Int)

(declare-fun lt!1978322 () ListMap!6931)

(assert (=> bs!1167135 (= (= lt!1978322 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (= lambda!238478 lambda!238471))))

(declare-fun bs!1167136 () Bool)

(assert (= bs!1167136 (and d!1549694 b!4832722)))

(assert (=> bs!1167136 (= (= lt!1978322 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (= lambda!238478 lambda!238472))))

(assert (=> bs!1167136 (= (= lt!1978322 lt!1978334) (= lambda!238478 lambda!238475))))

(assert (=> d!1549694 true))

(declare-fun e!3019972 () Bool)

(assert (=> d!1549694 e!3019972))

(declare-fun res!2058585 () Bool)

(assert (=> d!1549694 (=> (not res!2058585) (not e!3019972))))

(declare-fun forall!12690 (List!55200 Int) Bool)

(assert (=> d!1549694 (= res!2058585 (forall!12690 (_2!32478 (h!61511 (toList!7559 lm!2325))) lambda!238478))))

(declare-fun e!3019971 () ListMap!6931)

(assert (=> d!1549694 (= lt!1978322 e!3019971)))

(declare-fun c!823490 () Bool)

(assert (=> d!1549694 (= c!823490 (is-Nil!55076 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))

(assert (=> d!1549694 (noDuplicateKeys!2475 (_2!32478 (h!61511 (toList!7559 lm!2325))))))

(assert (=> d!1549694 (= (addToMapMapFromBucket!1832 (_2!32478 (h!61511 (toList!7559 lm!2325))) (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) lt!1978322)))

(assert (=> b!4832722 (= e!3019971 lt!1978334)))

(declare-fun lt!1978329 () ListMap!6931)

(declare-fun +!2554 (ListMap!6931 tuple2!58366) ListMap!6931)

(assert (=> b!4832722 (= lt!1978329 (+!2554 (extractMap!2717 (t!362697 (toList!7559 lm!2325))) (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(assert (=> b!4832722 (= lt!1978334 (addToMapMapFromBucket!1832 (t!362696 (_2!32478 (h!61511 (toList!7559 lm!2325)))) (+!2554 (extractMap!2717 (t!362697 (toList!7559 lm!2325))) (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))))

(declare-fun lt!1978338 () Unit!144067)

(declare-fun call!336772 () Unit!144067)

(assert (=> b!4832722 (= lt!1978338 call!336772)))

(assert (=> b!4832722 (forall!12690 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) lambda!238472)))

(declare-fun lt!1978339 () Unit!144067)

(assert (=> b!4832722 (= lt!1978339 lt!1978338)))

(assert (=> b!4832722 (forall!12690 (toList!7560 lt!1978329) lambda!238475)))

(declare-fun lt!1978325 () Unit!144067)

(declare-fun Unit!144077 () Unit!144067)

(assert (=> b!4832722 (= lt!1978325 Unit!144077)))

(declare-fun call!336773 () Bool)

(assert (=> b!4832722 call!336773))

(declare-fun lt!1978326 () Unit!144067)

(declare-fun Unit!144078 () Unit!144067)

(assert (=> b!4832722 (= lt!1978326 Unit!144078)))

(declare-fun lt!1978324 () Unit!144067)

(declare-fun Unit!144079 () Unit!144067)

(assert (=> b!4832722 (= lt!1978324 Unit!144079)))

(declare-fun lt!1978328 () Unit!144067)

(declare-fun forallContained!4420 (List!55200 Int tuple2!58366) Unit!144067)

(assert (=> b!4832722 (= lt!1978328 (forallContained!4420 (toList!7560 lt!1978329) lambda!238475 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(assert (=> b!4832722 (contains!18891 lt!1978329 (_1!32477 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(declare-fun lt!1978327 () Unit!144067)

(declare-fun Unit!144080 () Unit!144067)

(assert (=> b!4832722 (= lt!1978327 Unit!144080)))

(assert (=> b!4832722 (contains!18891 lt!1978334 (_1!32477 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))))))

(declare-fun lt!1978336 () Unit!144067)

(declare-fun Unit!144081 () Unit!144067)

(assert (=> b!4832722 (= lt!1978336 Unit!144081)))

(assert (=> b!4832722 (forall!12690 (_2!32478 (h!61511 (toList!7559 lm!2325))) lambda!238475)))

(declare-fun lt!1978330 () Unit!144067)

(declare-fun Unit!144082 () Unit!144067)

(assert (=> b!4832722 (= lt!1978330 Unit!144082)))

(assert (=> b!4832722 (forall!12690 (toList!7560 lt!1978329) lambda!238475)))

(declare-fun lt!1978337 () Unit!144067)

(declare-fun Unit!144083 () Unit!144067)

(assert (=> b!4832722 (= lt!1978337 Unit!144083)))

(declare-fun lt!1978331 () Unit!144067)

(declare-fun Unit!144084 () Unit!144067)

(assert (=> b!4832722 (= lt!1978331 Unit!144084)))

(declare-fun lt!1978340 () Unit!144067)

(declare-fun addForallContainsKeyThenBeforeAdding!1008 (ListMap!6931 ListMap!6931 K!16762 V!17008) Unit!144067)

(assert (=> b!4832722 (= lt!1978340 (addForallContainsKeyThenBeforeAdding!1008 (extractMap!2717 (t!362697 (toList!7559 lm!2325))) lt!1978334 (_1!32477 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325))))) (_2!32477 (h!61510 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))))

(assert (=> b!4832722 (forall!12690 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) lambda!238475)))

(declare-fun lt!1978335 () Unit!144067)

(assert (=> b!4832722 (= lt!1978335 lt!1978340)))

(assert (=> b!4832722 (forall!12690 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) lambda!238475)))

(declare-fun lt!1978332 () Unit!144067)

(declare-fun Unit!144085 () Unit!144067)

(assert (=> b!4832722 (= lt!1978332 Unit!144085)))

(declare-fun res!2058586 () Bool)

(assert (=> b!4832722 (= res!2058586 (forall!12690 (_2!32478 (h!61511 (toList!7559 lm!2325))) lambda!238475))))

(declare-fun e!3019973 () Bool)

(assert (=> b!4832722 (=> (not res!2058586) (not e!3019973))))

(assert (=> b!4832722 e!3019973))

(declare-fun lt!1978323 () Unit!144067)

(declare-fun Unit!144086 () Unit!144067)

(assert (=> b!4832722 (= lt!1978323 Unit!144086)))

(declare-fun bm!336766 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1009 (ListMap!6931) Unit!144067)

(assert (=> bm!336766 (= call!336772 (lemmaContainsAllItsOwnKeys!1009 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))))))

(declare-fun b!4832723 () Bool)

(assert (=> b!4832723 (= e!3019972 (invariantList!1831 (toList!7560 lt!1978322)))))

(declare-fun b!4832724 () Bool)

(declare-fun res!2058584 () Bool)

(assert (=> b!4832724 (=> (not res!2058584) (not e!3019972))))

(assert (=> b!4832724 (= res!2058584 (forall!12690 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) lambda!238478))))

(declare-fun bm!336767 () Bool)

(assert (=> bm!336767 (= call!336773 (forall!12690 (ite c!823490 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (t!362696 (_2!32478 (h!61511 (toList!7559 lm!2325))))) (ite c!823490 lambda!238471 lambda!238475)))))

(assert (=> b!4832725 (= e!3019971 (extractMap!2717 (t!362697 (toList!7559 lm!2325))))))

(declare-fun lt!1978341 () Unit!144067)

(assert (=> b!4832725 (= lt!1978341 call!336772)))

(assert (=> b!4832725 call!336773))

(declare-fun lt!1978342 () Unit!144067)

(assert (=> b!4832725 (= lt!1978342 lt!1978341)))

(declare-fun call!336771 () Bool)

(assert (=> b!4832725 call!336771))

(declare-fun lt!1978333 () Unit!144067)

(declare-fun Unit!144087 () Unit!144067)

(assert (=> b!4832725 (= lt!1978333 Unit!144087)))

(declare-fun bm!336768 () Bool)

(assert (=> bm!336768 (= call!336771 (forall!12690 (toList!7560 (extractMap!2717 (t!362697 (toList!7559 lm!2325)))) (ite c!823490 lambda!238471 lambda!238475)))))

(declare-fun b!4832726 () Bool)

(assert (=> b!4832726 (= e!3019973 call!336771)))

(assert (= (and d!1549694 c!823490) b!4832725))

(assert (= (and d!1549694 (not c!823490)) b!4832722))

(assert (= (and b!4832722 res!2058586) b!4832726))

(assert (= (or b!4832725 b!4832722) bm!336766))

(assert (= (or b!4832725 b!4832722) bm!336767))

(assert (= (or b!4832725 b!4832726) bm!336768))

(assert (= (and d!1549694 res!2058585) b!4832724))

(assert (= (and b!4832724 res!2058584) b!4832723))

(declare-fun m!5827132 () Bool)

(assert (=> b!4832723 m!5827132))

(assert (=> bm!336766 m!5826950))

(declare-fun m!5827134 () Bool)

(assert (=> bm!336766 m!5827134))

(declare-fun m!5827136 () Bool)

(assert (=> bm!336767 m!5827136))

(declare-fun m!5827138 () Bool)

(assert (=> bm!336768 m!5827138))

(declare-fun m!5827140 () Bool)

(assert (=> b!4832724 m!5827140))

(declare-fun m!5827142 () Bool)

(assert (=> d!1549694 m!5827142))

(assert (=> d!1549694 m!5826992))

(assert (=> b!4832722 m!5826950))

(declare-fun m!5827144 () Bool)

(assert (=> b!4832722 m!5827144))

(declare-fun m!5827146 () Bool)

(assert (=> b!4832722 m!5827146))

(declare-fun m!5827148 () Bool)

(assert (=> b!4832722 m!5827148))

(assert (=> b!4832722 m!5827148))

(declare-fun m!5827150 () Bool)

(assert (=> b!4832722 m!5827150))

(declare-fun m!5827152 () Bool)

(assert (=> b!4832722 m!5827152))

(declare-fun m!5827154 () Bool)

(assert (=> b!4832722 m!5827154))

(assert (=> b!4832722 m!5826950))

(assert (=> b!4832722 m!5827152))

(declare-fun m!5827156 () Bool)

(assert (=> b!4832722 m!5827156))

(declare-fun m!5827158 () Bool)

(assert (=> b!4832722 m!5827158))

(declare-fun m!5827160 () Bool)

(assert (=> b!4832722 m!5827160))

(declare-fun m!5827162 () Bool)

(assert (=> b!4832722 m!5827162))

(assert (=> b!4832722 m!5827146))

(assert (=> b!4832722 m!5827156))

(assert (=> b!4832502 d!1549694))

(declare-fun bs!1167137 () Bool)

(declare-fun d!1549714 () Bool)

(assert (= bs!1167137 (and d!1549714 start!502186)))

(declare-fun lambda!238485 () Int)

(assert (=> bs!1167137 (= lambda!238485 lambda!238411)))

(declare-fun bs!1167138 () Bool)

(assert (= bs!1167138 (and d!1549714 d!1549616)))

(assert (=> bs!1167138 (= lambda!238485 lambda!238420)))

(declare-fun bs!1167139 () Bool)

(assert (= bs!1167139 (and d!1549714 d!1549626)))

(assert (=> bs!1167139 (not (= lambda!238485 lambda!238423))))

(declare-fun lt!1978365 () ListMap!6931)

(assert (=> d!1549714 (invariantList!1831 (toList!7560 lt!1978365))))

(declare-fun e!3019974 () ListMap!6931)

(assert (=> d!1549714 (= lt!1978365 e!3019974)))

(declare-fun c!823491 () Bool)

(assert (=> d!1549714 (= c!823491 (is-Cons!55077 (t!362697 (toList!7559 lm!2325))))))

(assert (=> d!1549714 (forall!12687 (t!362697 (toList!7559 lm!2325)) lambda!238485)))

(assert (=> d!1549714 (= (extractMap!2717 (t!362697 (toList!7559 lm!2325))) lt!1978365)))

(declare-fun b!4832729 () Bool)

(assert (=> b!4832729 (= e!3019974 (addToMapMapFromBucket!1832 (_2!32478 (h!61511 (t!362697 (toList!7559 lm!2325)))) (extractMap!2717 (t!362697 (t!362697 (toList!7559 lm!2325))))))))

(declare-fun b!4832730 () Bool)

(assert (=> b!4832730 (= e!3019974 (ListMap!6932 Nil!55076))))

(assert (= (and d!1549714 c!823491) b!4832729))

(assert (= (and d!1549714 (not c!823491)) b!4832730))

(declare-fun m!5827164 () Bool)

(assert (=> d!1549714 m!5827164))

(declare-fun m!5827166 () Bool)

(assert (=> d!1549714 m!5827166))

(declare-fun m!5827168 () Bool)

(assert (=> b!4832729 m!5827168))

(assert (=> b!4832729 m!5827168))

(declare-fun m!5827170 () Bool)

(assert (=> b!4832729 m!5827170))

(assert (=> b!4832502 d!1549714))

(declare-fun bs!1167147 () Bool)

(declare-fun b!4832767 () Bool)

(assert (= bs!1167147 (and b!4832767 b!4832577)))

(declare-fun lambda!238513 () Int)

(assert (=> bs!1167147 (= (= (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (= lambda!238513 lambda!238431))))

(assert (=> b!4832767 true))

(declare-fun bs!1167148 () Bool)

(declare-fun b!4832769 () Bool)

(assert (= bs!1167148 (and b!4832769 b!4832577)))

(declare-fun lambda!238514 () Int)

(assert (=> bs!1167148 (= (= (Cons!55076 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (= lambda!238514 lambda!238431))))

(declare-fun bs!1167149 () Bool)

(assert (= bs!1167149 (and b!4832769 b!4832767)))

(assert (=> bs!1167149 (= (= (Cons!55076 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (= lambda!238514 lambda!238513))))

(assert (=> b!4832769 true))

(declare-fun bs!1167150 () Bool)

(declare-fun b!4832768 () Bool)

(assert (= bs!1167150 (and b!4832768 b!4832577)))

(declare-fun lambda!238515 () Int)

(assert (=> bs!1167150 (= lambda!238515 lambda!238431)))

(declare-fun bs!1167151 () Bool)

(assert (= bs!1167151 (and b!4832768 b!4832767)))

(assert (=> bs!1167151 (= (= (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (= lambda!238515 lambda!238513))))

(declare-fun bs!1167152 () Bool)

(assert (= bs!1167152 (and b!4832768 b!4832769)))

(assert (=> bs!1167152 (= (= (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) (Cons!55076 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))) (= lambda!238515 lambda!238514))))

(assert (=> b!4832768 true))

(declare-fun bs!1167153 () Bool)

(declare-fun b!4832772 () Bool)

(assert (= bs!1167153 (and b!4832772 b!4832578)))

(declare-fun lambda!238516 () Int)

(assert (=> bs!1167153 (= lambda!238516 lambda!238432)))

(declare-fun b!4832766 () Bool)

(declare-fun res!2058605 () Bool)

(declare-fun e!3019996 () Bool)

(assert (=> b!4832766 (=> (not res!2058605) (not e!3019996))))

(declare-fun lt!1978419 () List!55204)

(assert (=> b!4832766 (= res!2058605 (= (length!814 lt!1978419) (length!815 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))))

(assert (=> b!4832767 false))

(declare-fun lt!1978414 () Unit!144067)

(declare-fun forallContained!4421 (List!55204 Int K!16762) Unit!144067)

(assert (=> b!4832767 (= lt!1978414 (forallContained!4421 (getKeysList!1177 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) lambda!238513 (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))))

(declare-fun e!3019993 () Unit!144067)

(declare-fun Unit!144088 () Unit!144067)

(assert (=> b!4832767 (= e!3019993 Unit!144088)))

(declare-fun res!2058604 () Bool)

(assert (=> b!4832768 (=> (not res!2058604) (not e!3019996))))

(assert (=> b!4832768 (= res!2058604 (forall!12689 lt!1978419 lambda!238515))))

(declare-fun e!3019994 () List!55204)

(assert (=> b!4832769 (= e!3019994 (Cons!55080 (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (getKeysList!1177 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))))

(declare-fun c!823500 () Bool)

(assert (=> b!4832769 (= c!823500 (containsKey!4444 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))))

(declare-fun lt!1978415 () Unit!144067)

(declare-fun e!3019995 () Unit!144067)

(assert (=> b!4832769 (= lt!1978415 e!3019995)))

(declare-fun c!823502 () Bool)

(assert (=> b!4832769 (= c!823502 (contains!18894 (getKeysList!1177 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))) (_1!32477 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))))

(declare-fun lt!1978417 () Unit!144067)

(assert (=> b!4832769 (= lt!1978417 e!3019993)))

(declare-fun lt!1978420 () List!55204)

(assert (=> b!4832769 (= lt!1978420 (getKeysList!1177 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))))

(declare-fun lt!1978416 () Unit!144067)

(declare-fun lemmaForallContainsAddHeadPreserves!393 (List!55200 List!55204 tuple2!58366) Unit!144067)

(assert (=> b!4832769 (= lt!1978416 (lemmaForallContainsAddHeadPreserves!393 (t!362696 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) lt!1978420 (h!61510 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))))

(assert (=> b!4832769 (forall!12689 lt!1978420 lambda!238514)))

(declare-fun lt!1978418 () Unit!144067)

(assert (=> b!4832769 (= lt!1978418 lt!1978416)))

(declare-fun b!4832770 () Bool)

(declare-fun Unit!144089 () Unit!144067)

(assert (=> b!4832770 (= e!3019995 Unit!144089)))

(assert (=> b!4832772 (= e!3019996 (= (content!9838 lt!1978419) (content!9838 (map!12620 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))) lambda!238516))))))

(declare-fun b!4832773 () Bool)

(declare-fun Unit!144090 () Unit!144067)

(assert (=> b!4832773 (= e!3019993 Unit!144090)))

(declare-fun b!4832774 () Bool)

(assert (=> b!4832774 false))

(declare-fun Unit!144091 () Unit!144067)

(assert (=> b!4832774 (= e!3019995 Unit!144091)))

(declare-fun b!4832771 () Bool)

(assert (=> b!4832771 (= e!3019994 Nil!55080)))

(declare-fun d!1549716 () Bool)

(assert (=> d!1549716 e!3019996))

(declare-fun res!2058606 () Bool)

(assert (=> d!1549716 (=> (not res!2058606) (not e!3019996))))

(assert (=> d!1549716 (= res!2058606 (noDuplicate!979 lt!1978419))))

(assert (=> d!1549716 (= lt!1978419 e!3019994)))

(declare-fun c!823501 () Bool)

(assert (=> d!1549716 (= c!823501 (is-Cons!55076 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))))))

(assert (=> d!1549716 (invariantList!1831 (toList!7560 (extractMap!2717 (toList!7559 lm!2325))))))

(assert (=> d!1549716 (= (getKeysList!1177 (toList!7560 (extractMap!2717 (toList!7559 lm!2325)))) lt!1978419)))

(assert (= (and d!1549716 c!823501) b!4832769))

(assert (= (and d!1549716 (not c!823501)) b!4832771))

(assert (= (and b!4832769 c!823500) b!4832774))

(assert (= (and b!4832769 (not c!823500)) b!4832770))

(assert (= (and b!4832769 c!823502) b!4832767))

(assert (= (and b!4832769 (not c!823502)) b!4832773))

(assert (= (and d!1549716 res!2058606) b!4832766))

(assert (= (and b!4832766 res!2058605) b!4832768))

(assert (= (and b!4832768 res!2058604) b!4832772))

(declare-fun m!5827218 () Bool)

(assert (=> b!4832772 m!5827218))

(declare-fun m!5827220 () Bool)

(assert (=> b!4832772 m!5827220))

(assert (=> b!4832772 m!5827220))

(declare-fun m!5827222 () Bool)

(assert (=> b!4832772 m!5827222))

(declare-fun m!5827224 () Bool)

(assert (=> b!4832767 m!5827224))

(assert (=> b!4832767 m!5827224))

(declare-fun m!5827226 () Bool)

(assert (=> b!4832767 m!5827226))

(assert (=> b!4832769 m!5827224))

(declare-fun m!5827228 () Bool)

(assert (=> b!4832769 m!5827228))

(declare-fun m!5827230 () Bool)

(assert (=> b!4832769 m!5827230))

(assert (=> b!4832769 m!5827224))

(declare-fun m!5827232 () Bool)

(assert (=> b!4832769 m!5827232))

(declare-fun m!5827234 () Bool)

(assert (=> b!4832769 m!5827234))

(declare-fun m!5827236 () Bool)

(assert (=> b!4832766 m!5827236))

(assert (=> b!4832766 m!5827014))

(declare-fun m!5827238 () Bool)

(assert (=> b!4832768 m!5827238))

(declare-fun m!5827240 () Bool)

(assert (=> d!1549716 m!5827240))

(assert (=> d!1549716 m!5827050))

(assert (=> b!4832483 d!1549716))

(assert (=> b!4832547 d!1549668))

(assert (=> b!4832547 d!1549670))

(assert (=> d!1549610 d!1549660))

(declare-fun d!1549728 () Bool)

(declare-fun choose!35300 (Hashable!7309 K!16762) (_ BitVec 64))

(assert (=> d!1549728 (= (hash!5495 hashF!1543 key!5594) (choose!35300 hashF!1543 key!5594))))

(declare-fun bs!1167154 () Bool)

(assert (= bs!1167154 d!1549728))

(declare-fun m!5827242 () Bool)

(assert (=> bs!1167154 m!5827242))

(assert (=> d!1549636 d!1549728))

(declare-fun b!4832787 () Bool)

(declare-fun e!3020005 () Bool)

(declare-fun tp!1362967 () Bool)

(declare-fun tp_is_empty!34585 () Bool)

(assert (=> b!4832787 (= e!3020005 (and tp_is_empty!34581 tp_is_empty!34585 tp!1362967))))

(assert (=> b!4832552 (= tp!1362957 e!3020005)))

(assert (= (and b!4832552 (is-Cons!55076 (_2!32478 (h!61511 (toList!7559 lm!2325))))) b!4832787))

(declare-fun b!4832788 () Bool)

(declare-fun e!3020006 () Bool)

(declare-fun tp!1362968 () Bool)

(declare-fun tp!1362969 () Bool)

(assert (=> b!4832788 (= e!3020006 (and tp!1362968 tp!1362969))))

(assert (=> b!4832552 (= tp!1362958 e!3020006)))

(assert (= (and b!4832552 (is-Cons!55077 (t!362697 (toList!7559 lm!2325)))) b!4832788))

(declare-fun b_lambda!190967 () Bool)

(assert (= b_lambda!190959 (or start!502186 b_lambda!190967)))

(declare-fun bs!1167156 () Bool)

(declare-fun d!1549732 () Bool)

(assert (= bs!1167156 (and d!1549732 start!502186)))

(assert (=> bs!1167156 (= (dynLambda!22254 lambda!238411 (h!61511 (t!362697 (toList!7559 lm!2325)))) (noDuplicateKeys!2475 (_2!32478 (h!61511 (t!362697 (toList!7559 lm!2325))))))))

(declare-fun m!5827246 () Bool)

(assert (=> bs!1167156 m!5827246))

(assert (=> b!4832611 d!1549732))

(declare-fun b_lambda!190969 () Bool)

(assert (= b_lambda!190955 (or d!1549626 b_lambda!190969)))

(declare-fun bs!1167157 () Bool)

(declare-fun d!1549734 () Bool)

(assert (= bs!1167157 (and d!1549734 d!1549626)))

(declare-fun allKeysSameHash!2021 (List!55200 (_ BitVec 64) Hashable!7309) Bool)

(assert (=> bs!1167157 (= (dynLambda!22254 lambda!238423 (h!61511 (toList!7559 lm!2325))) (allKeysSameHash!2021 (_2!32478 (h!61511 (toList!7559 lm!2325))) (_1!32478 (h!61511 (toList!7559 lm!2325))) hashF!1543))))

(declare-fun m!5827248 () Bool)

(assert (=> bs!1167157 m!5827248))

(assert (=> b!4832593 d!1549734))

(declare-fun b_lambda!190971 () Bool)

(assert (= b_lambda!190957 (or d!1549616 b_lambda!190971)))

(declare-fun bs!1167158 () Bool)

(declare-fun d!1549736 () Bool)

(assert (= bs!1167158 (and d!1549736 d!1549616)))

(assert (=> bs!1167158 (= (dynLambda!22254 lambda!238420 (h!61511 (toList!7559 lm!2325))) (noDuplicateKeys!2475 (_2!32478 (h!61511 (toList!7559 lm!2325)))))))

(assert (=> bs!1167158 m!5826992))

(assert (=> b!4832597 d!1549736))

(push 1)

(assert (not d!1549642))

(assert (not bs!1167158))

(assert (not b!4832604))

(assert (not d!1549668))

(assert (not b!4832577))

(assert (not b!4832594))

(assert (not b_lambda!190951))

(assert (not b_lambda!190971))

(assert (not d!1549684))

(assert (not b!4832722))

(assert (not d!1549644))

(assert (not bm!336767))

(assert (not b!4832724))

(assert tp_is_empty!34581)

(assert (not b!4832569))

(assert (not b_lambda!190967))

(assert (not d!1549692))

(assert (not b!4832596))

(assert (not d!1549662))

(assert (not b!4832615))

(assert (not b!4832723))

(assert (not d!1549714))

(assert (not b!4832767))

(assert (not b!4832576))

(assert (not b!4832645))

(assert (not b!4832610))

(assert (not b!4832766))

(assert (not b!4832657))

(assert (not b!4832769))

(assert (not b!4832729))

(assert (not bs!1167157))

(assert (not b!4832768))

(assert (not d!1549652))

(assert (not b!4832578))

(assert (not d!1549646))

(assert (not d!1549666))

(assert (not b!4832788))

(assert (not bm!336766))

(assert (not b!4832591))

(assert (not d!1549728))

(assert (not b!4832787))

(assert (not b!4832598))

(assert (not d!1549654))

(assert (not b!4832612))

(assert (not b_lambda!190969))

(assert (not d!1549716))

(assert (not b!4832772))

(assert (not bs!1167156))

(assert (not d!1549694))

(assert (not b!4832632))

(assert (not b!4832644))

(assert (not bm!336768))

(assert tp_is_empty!34585)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

