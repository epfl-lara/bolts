; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501534 () Bool)

(assert start!501534)

(declare-fun b!4829532 () Bool)

(declare-fun res!2056790 () Bool)

(declare-fun e!3017813 () Bool)

(assert (=> b!4829532 (=> (not res!2056790) (not e!3017813))))

(declare-datatypes ((V!16988 0))(
  ( (V!16989 (val!21699 Int)) )
))
(declare-datatypes ((K!16742 0))(
  ( (K!16743 (val!21700 Int)) )
))
(declare-datatypes ((tuple2!58334 0))(
  ( (tuple2!58335 (_1!32461 K!16742) (_2!32461 V!16988)) )
))
(declare-datatypes ((List!55176 0))(
  ( (Nil!55052) (Cons!55052 (h!61486 tuple2!58334) (t!362672 List!55176)) )
))
(declare-datatypes ((tuple2!58336 0))(
  ( (tuple2!58337 (_1!32462 (_ BitVec 64)) (_2!32462 List!55176)) )
))
(declare-datatypes ((List!55177 0))(
  ( (Nil!55053) (Cons!55053 (h!61487 tuple2!58336) (t!362673 List!55177)) )
))
(declare-datatypes ((ListLongMap!6065 0))(
  ( (ListLongMap!6066 (toList!7543 List!55177)) )
))
(declare-fun lm!2325 () ListLongMap!6065)

(assert (=> b!4829532 (= res!2056790 (is-Cons!55053 (toList!7543 lm!2325)))))

(declare-fun res!2056792 () Bool)

(assert (=> start!501534 (=> (not res!2056792) (not e!3017813))))

(declare-fun lambda!237657 () Int)

(declare-fun forall!12663 (List!55177 Int) Bool)

(assert (=> start!501534 (= res!2056792 (forall!12663 (toList!7543 lm!2325) lambda!237657))))

(assert (=> start!501534 e!3017813))

(declare-fun e!3017815 () Bool)

(declare-fun inv!70643 (ListLongMap!6065) Bool)

(assert (=> start!501534 (and (inv!70643 lm!2325) e!3017815)))

(assert (=> start!501534 true))

(declare-fun tp_is_empty!34549 () Bool)

(assert (=> start!501534 tp_is_empty!34549))

(declare-fun b!4829533 () Bool)

(declare-fun e!3017816 () Bool)

(assert (=> b!4829533 (= e!3017813 (not e!3017816))))

(declare-fun res!2056789 () Bool)

(assert (=> b!4829533 (=> res!2056789 e!3017816)))

(declare-fun lt!1975836 () ListLongMap!6065)

(assert (=> b!4829533 (= res!2056789 (not (forall!12663 (toList!7543 lt!1975836) lambda!237657)))))

(declare-fun tail!9425 (ListLongMap!6065) ListLongMap!6065)

(assert (=> b!4829533 (= lt!1975836 (tail!9425 lm!2325))))

(declare-fun key!5594 () K!16742)

(declare-fun containsKey!4420 (List!55176 K!16742) Bool)

(declare-fun apply!13366 (ListLongMap!6065 (_ BitVec 64)) List!55176)

(assert (=> b!4829533 (not (containsKey!4420 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))) key!5594))))

(declare-datatypes ((Hashable!7301 0))(
  ( (HashableExt!7300 (__x!33576 Int)) )
))
(declare-fun hashF!1543 () Hashable!7301)

(declare-datatypes ((Unit!143577 0))(
  ( (Unit!143578) )
))
(declare-fun lt!1975839 () Unit!143577)

(declare-fun lemmaNotSameHashThenCannotContainKey!235 (ListLongMap!6065 K!16742 (_ BitVec 64) Hashable!7301) Unit!143577)

(assert (=> b!4829533 (= lt!1975839 (lemmaNotSameHashThenCannotContainKey!235 lm!2325 key!5594 (_1!32462 (h!61487 (toList!7543 lm!2325))) hashF!1543))))

(declare-fun e!3017814 () Bool)

(declare-datatypes ((ListMap!6915 0))(
  ( (ListMap!6916 (toList!7544 List!55176)) )
))
(declare-fun lt!1975837 () ListMap!6915)

(declare-fun contains!18858 (ListMap!6915 K!16742) Bool)

(declare-fun addToMapMapFromBucket!1824 (List!55176 ListMap!6915) ListMap!6915)

(assert (=> b!4829533 (= (contains!18858 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837) key!5594) e!3017814)))

(declare-fun res!2056793 () Bool)

(assert (=> b!4829533 (=> res!2056793 e!3017814)))

(assert (=> b!4829533 (= res!2056793 (containsKey!4420 (_2!32462 (h!61487 (toList!7543 lm!2325))) key!5594))))

(declare-fun lt!1975838 () Unit!143577)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!47 (List!55176 ListMap!6915 K!16742) Unit!143577)

(assert (=> b!4829533 (= lt!1975838 (lemmaAddToMapFromBucketContainsIIFInAccOrL!47 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837 key!5594))))

(declare-fun extractMap!2709 (List!55177) ListMap!6915)

(assert (=> b!4829533 (= lt!1975837 (extractMap!2709 (t!362673 (toList!7543 lm!2325))))))

(declare-fun b!4829534 () Bool)

(assert (=> b!4829534 (= e!3017814 (contains!18858 lt!1975837 key!5594))))

(declare-fun b!4829535 () Bool)

(declare-fun allKeysSameHashInMap!2617 (ListLongMap!6065 Hashable!7301) Bool)

(assert (=> b!4829535 (= e!3017816 (allKeysSameHashInMap!2617 lt!1975836 hashF!1543))))

(declare-fun b!4829536 () Bool)

(declare-fun res!2056791 () Bool)

(assert (=> b!4829536 (=> (not res!2056791) (not e!3017813))))

(declare-fun contains!18859 (ListLongMap!6065 (_ BitVec 64)) Bool)

(declare-fun hash!5460 (Hashable!7301 K!16742) (_ BitVec 64))

(assert (=> b!4829536 (= res!2056791 (not (contains!18859 lm!2325 (hash!5460 hashF!1543 key!5594))))))

(declare-fun b!4829537 () Bool)

(declare-fun res!2056788 () Bool)

(assert (=> b!4829537 (=> (not res!2056788) (not e!3017813))))

(assert (=> b!4829537 (= res!2056788 (allKeysSameHashInMap!2617 lm!2325 hashF!1543))))

(declare-fun b!4829538 () Bool)

(declare-fun tp!1362837 () Bool)

(assert (=> b!4829538 (= e!3017815 tp!1362837)))

(assert (= (and start!501534 res!2056792) b!4829537))

(assert (= (and b!4829537 res!2056788) b!4829536))

(assert (= (and b!4829536 res!2056791) b!4829532))

(assert (= (and b!4829532 res!2056790) b!4829533))

(assert (= (and b!4829533 (not res!2056793)) b!4829534))

(assert (= (and b!4829533 (not res!2056789)) b!4829535))

(assert (= start!501534 b!4829538))

(declare-fun m!5821842 () Bool)

(assert (=> start!501534 m!5821842))

(declare-fun m!5821844 () Bool)

(assert (=> start!501534 m!5821844))

(declare-fun m!5821846 () Bool)

(assert (=> b!4829537 m!5821846))

(declare-fun m!5821848 () Bool)

(assert (=> b!4829536 m!5821848))

(assert (=> b!4829536 m!5821848))

(declare-fun m!5821850 () Bool)

(assert (=> b!4829536 m!5821850))

(declare-fun m!5821852 () Bool)

(assert (=> b!4829535 m!5821852))

(declare-fun m!5821854 () Bool)

(assert (=> b!4829534 m!5821854))

(declare-fun m!5821856 () Bool)

(assert (=> b!4829533 m!5821856))

(declare-fun m!5821858 () Bool)

(assert (=> b!4829533 m!5821858))

(declare-fun m!5821860 () Bool)

(assert (=> b!4829533 m!5821860))

(declare-fun m!5821862 () Bool)

(assert (=> b!4829533 m!5821862))

(declare-fun m!5821864 () Bool)

(assert (=> b!4829533 m!5821864))

(declare-fun m!5821866 () Bool)

(assert (=> b!4829533 m!5821866))

(declare-fun m!5821868 () Bool)

(assert (=> b!4829533 m!5821868))

(declare-fun m!5821870 () Bool)

(assert (=> b!4829533 m!5821870))

(declare-fun m!5821872 () Bool)

(assert (=> b!4829533 m!5821872))

(assert (=> b!4829533 m!5821860))

(declare-fun m!5821874 () Bool)

(assert (=> b!4829533 m!5821874))

(assert (=> b!4829533 m!5821868))

(push 1)

(assert (not start!501534))

(assert (not b!4829538))

(assert (not b!4829533))

(assert (not b!4829537))

(assert tp_is_empty!34549)

(assert (not b!4829536))

(assert (not b!4829535))

(assert (not b!4829534))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1165490 () Bool)

(declare-fun d!1547906 () Bool)

(assert (= bs!1165490 (and d!1547906 start!501534)))

(declare-fun lambda!237665 () Int)

(assert (=> bs!1165490 (not (= lambda!237665 lambda!237657))))

(assert (=> d!1547906 true))

(assert (=> d!1547906 (= (allKeysSameHashInMap!2617 lm!2325 hashF!1543) (forall!12663 (toList!7543 lm!2325) lambda!237665))))

(declare-fun bs!1165491 () Bool)

(assert (= bs!1165491 d!1547906))

(declare-fun m!5821910 () Bool)

(assert (=> bs!1165491 m!5821910))

(assert (=> b!4829537 d!1547906))

(declare-fun d!1547908 () Bool)

(declare-fun e!3017834 () Bool)

(assert (=> d!1547908 e!3017834))

(declare-fun res!2056814 () Bool)

(assert (=> d!1547908 (=> res!2056814 e!3017834)))

(declare-fun lt!1975860 () Bool)

(assert (=> d!1547908 (= res!2056814 (not lt!1975860))))

(declare-fun lt!1975862 () Bool)

(assert (=> d!1547908 (= lt!1975860 lt!1975862)))

(declare-fun lt!1975861 () Unit!143577)

(declare-fun e!3017833 () Unit!143577)

(assert (=> d!1547908 (= lt!1975861 e!3017833)))

(declare-fun c!822898 () Bool)

(assert (=> d!1547908 (= c!822898 lt!1975862)))

(declare-fun containsKey!4422 (List!55177 (_ BitVec 64)) Bool)

(assert (=> d!1547908 (= lt!1975862 (containsKey!4422 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(assert (=> d!1547908 (= (contains!18859 lm!2325 (hash!5460 hashF!1543 key!5594)) lt!1975860)))

(declare-fun b!4829568 () Bool)

(declare-fun lt!1975863 () Unit!143577)

(assert (=> b!4829568 (= e!3017833 lt!1975863)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2429 (List!55177 (_ BitVec 64)) Unit!143577)

(assert (=> b!4829568 (= lt!1975863 (lemmaContainsKeyImpliesGetValueByKeyDefined!2429 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13517 0))(
  ( (None!13516) (Some!13516 (v!49207 List!55176)) )
))
(declare-fun isDefined!10632 (Option!13517) Bool)

(declare-fun getValueByKey!2644 (List!55177 (_ BitVec 64)) Option!13517)

(assert (=> b!4829568 (isDefined!10632 (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(declare-fun b!4829569 () Bool)

(declare-fun Unit!143581 () Unit!143577)

(assert (=> b!4829569 (= e!3017833 Unit!143581)))

(declare-fun b!4829570 () Bool)

(assert (=> b!4829570 (= e!3017834 (isDefined!10632 (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594))))))

(assert (= (and d!1547908 c!822898) b!4829568))

(assert (= (and d!1547908 (not c!822898)) b!4829569))

(assert (= (and d!1547908 (not res!2056814)) b!4829570))

(assert (=> d!1547908 m!5821848))

(declare-fun m!5821912 () Bool)

(assert (=> d!1547908 m!5821912))

(assert (=> b!4829568 m!5821848))

(declare-fun m!5821914 () Bool)

(assert (=> b!4829568 m!5821914))

(assert (=> b!4829568 m!5821848))

(declare-fun m!5821916 () Bool)

(assert (=> b!4829568 m!5821916))

(assert (=> b!4829568 m!5821916))

(declare-fun m!5821918 () Bool)

(assert (=> b!4829568 m!5821918))

(assert (=> b!4829570 m!5821848))

(assert (=> b!4829570 m!5821916))

(assert (=> b!4829570 m!5821916))

(assert (=> b!4829570 m!5821918))

(assert (=> b!4829536 d!1547908))

(declare-fun d!1547910 () Bool)

(declare-fun hash!5463 (Hashable!7301 K!16742) (_ BitVec 64))

(assert (=> d!1547910 (= (hash!5460 hashF!1543 key!5594) (hash!5463 hashF!1543 key!5594))))

(declare-fun bs!1165492 () Bool)

(assert (= bs!1165492 d!1547910))

(declare-fun m!5821920 () Bool)

(assert (=> bs!1165492 m!5821920))

(assert (=> b!4829536 d!1547910))

(declare-fun bs!1165493 () Bool)

(declare-fun d!1547912 () Bool)

(assert (= bs!1165493 (and d!1547912 start!501534)))

(declare-fun lambda!237666 () Int)

(assert (=> bs!1165493 (not (= lambda!237666 lambda!237657))))

(declare-fun bs!1165494 () Bool)

(assert (= bs!1165494 (and d!1547912 d!1547906)))

(assert (=> bs!1165494 (= lambda!237666 lambda!237665)))

(assert (=> d!1547912 true))

(assert (=> d!1547912 (= (allKeysSameHashInMap!2617 lt!1975836 hashF!1543) (forall!12663 (toList!7543 lt!1975836) lambda!237666))))

(declare-fun bs!1165495 () Bool)

(assert (= bs!1165495 d!1547912))

(declare-fun m!5821922 () Bool)

(assert (=> bs!1165495 m!5821922))

(assert (=> b!4829535 d!1547912))

(declare-fun b!4829597 () Bool)

(declare-fun e!3017853 () Unit!143577)

(declare-fun lt!1975880 () Unit!143577)

(assert (=> b!4829597 (= e!3017853 lt!1975880)))

(declare-fun lt!1975882 () Unit!143577)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (List!55176 K!16742) Unit!143577)

(assert (=> b!4829597 (= lt!1975882 (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 lt!1975837) key!5594))))

(declare-datatypes ((Option!13518 0))(
  ( (None!13517) (Some!13517 (v!49208 V!16988)) )
))
(declare-fun isDefined!10633 (Option!13518) Bool)

(declare-fun getValueByKey!2645 (List!55176 K!16742) Option!13518)

(assert (=> b!4829597 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975837) key!5594))))

(declare-fun lt!1975886 () Unit!143577)

(assert (=> b!4829597 (= lt!1975886 lt!1975882)))

(declare-fun lemmaInListThenGetKeysListContains!1164 (List!55176 K!16742) Unit!143577)

(assert (=> b!4829597 (= lt!1975880 (lemmaInListThenGetKeysListContains!1164 (toList!7544 lt!1975837) key!5594))))

(declare-fun call!336577 () Bool)

(assert (=> b!4829597 call!336577))

(declare-fun b!4829598 () Bool)

(declare-datatypes ((List!55180 0))(
  ( (Nil!55056) (Cons!55056 (h!61490 K!16742) (t!362676 List!55180)) )
))
(declare-fun e!3017855 () List!55180)

(declare-fun keys!20272 (ListMap!6915) List!55180)

(assert (=> b!4829598 (= e!3017855 (keys!20272 lt!1975837))))

(declare-fun d!1547914 () Bool)

(declare-fun e!3017857 () Bool)

(assert (=> d!1547914 e!3017857))

(declare-fun res!2056829 () Bool)

(assert (=> d!1547914 (=> res!2056829 e!3017857)))

(declare-fun e!3017854 () Bool)

(assert (=> d!1547914 (= res!2056829 e!3017854)))

(declare-fun res!2056827 () Bool)

(assert (=> d!1547914 (=> (not res!2056827) (not e!3017854))))

(declare-fun lt!1975883 () Bool)

(assert (=> d!1547914 (= res!2056827 (not lt!1975883))))

(declare-fun lt!1975884 () Bool)

(assert (=> d!1547914 (= lt!1975883 lt!1975884)))

(declare-fun lt!1975885 () Unit!143577)

(assert (=> d!1547914 (= lt!1975885 e!3017853)))

(declare-fun c!822905 () Bool)

(assert (=> d!1547914 (= c!822905 lt!1975884)))

(declare-fun containsKey!4423 (List!55176 K!16742) Bool)

(assert (=> d!1547914 (= lt!1975884 (containsKey!4423 (toList!7544 lt!1975837) key!5594))))

(assert (=> d!1547914 (= (contains!18858 lt!1975837 key!5594) lt!1975883)))

(declare-fun b!4829599 () Bool)

(declare-fun e!3017858 () Bool)

(assert (=> b!4829599 (= e!3017857 e!3017858)))

(declare-fun res!2056828 () Bool)

(assert (=> b!4829599 (=> (not res!2056828) (not e!3017858))))

(assert (=> b!4829599 (= res!2056828 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975837) key!5594)))))

(declare-fun b!4829600 () Bool)

(declare-fun contains!18862 (List!55180 K!16742) Bool)

(assert (=> b!4829600 (= e!3017858 (contains!18862 (keys!20272 lt!1975837) key!5594))))

(declare-fun b!4829601 () Bool)

(declare-fun e!3017856 () Unit!143577)

(assert (=> b!4829601 (= e!3017853 e!3017856)))

(declare-fun c!822906 () Bool)

(assert (=> b!4829601 (= c!822906 call!336577)))

(declare-fun bm!336572 () Bool)

(assert (=> bm!336572 (= call!336577 (contains!18862 e!3017855 key!5594))))

(declare-fun c!822907 () Bool)

(assert (=> bm!336572 (= c!822907 c!822905)))

(declare-fun b!4829602 () Bool)

(assert (=> b!4829602 (= e!3017854 (not (contains!18862 (keys!20272 lt!1975837) key!5594)))))

(declare-fun b!4829603 () Bool)

(declare-fun getKeysList!1169 (List!55176) List!55180)

(assert (=> b!4829603 (= e!3017855 (getKeysList!1169 (toList!7544 lt!1975837)))))

(declare-fun b!4829604 () Bool)

(declare-fun Unit!143582 () Unit!143577)

(assert (=> b!4829604 (= e!3017856 Unit!143582)))

(declare-fun b!4829605 () Bool)

(assert (=> b!4829605 false))

(declare-fun lt!1975881 () Unit!143577)

(declare-fun lt!1975887 () Unit!143577)

(assert (=> b!4829605 (= lt!1975881 lt!1975887)))

(assert (=> b!4829605 (containsKey!4423 (toList!7544 lt!1975837) key!5594)))

(declare-fun lemmaInGetKeysListThenContainsKey!1169 (List!55176 K!16742) Unit!143577)

(assert (=> b!4829605 (= lt!1975887 (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 lt!1975837) key!5594))))

(declare-fun Unit!143583 () Unit!143577)

(assert (=> b!4829605 (= e!3017856 Unit!143583)))

(assert (= (and d!1547914 c!822905) b!4829597))

(assert (= (and d!1547914 (not c!822905)) b!4829601))

(assert (= (and b!4829601 c!822906) b!4829605))

(assert (= (and b!4829601 (not c!822906)) b!4829604))

(assert (= (or b!4829597 b!4829601) bm!336572))

(assert (= (and bm!336572 c!822907) b!4829603))

(assert (= (and bm!336572 (not c!822907)) b!4829598))

(assert (= (and d!1547914 res!2056827) b!4829602))

(assert (= (and d!1547914 (not res!2056829)) b!4829599))

(assert (= (and b!4829599 res!2056828) b!4829600))

(declare-fun m!5821930 () Bool)

(assert (=> b!4829600 m!5821930))

(assert (=> b!4829600 m!5821930))

(declare-fun m!5821932 () Bool)

(assert (=> b!4829600 m!5821932))

(declare-fun m!5821934 () Bool)

(assert (=> b!4829597 m!5821934))

(declare-fun m!5821936 () Bool)

(assert (=> b!4829597 m!5821936))

(assert (=> b!4829597 m!5821936))

(declare-fun m!5821938 () Bool)

(assert (=> b!4829597 m!5821938))

(declare-fun m!5821940 () Bool)

(assert (=> b!4829597 m!5821940))

(assert (=> b!4829602 m!5821930))

(assert (=> b!4829602 m!5821930))

(assert (=> b!4829602 m!5821932))

(assert (=> b!4829599 m!5821936))

(assert (=> b!4829599 m!5821936))

(assert (=> b!4829599 m!5821938))

(assert (=> b!4829598 m!5821930))

(declare-fun m!5821942 () Bool)

(assert (=> bm!336572 m!5821942))

(declare-fun m!5821944 () Bool)

(assert (=> b!4829603 m!5821944))

(declare-fun m!5821946 () Bool)

(assert (=> b!4829605 m!5821946))

(declare-fun m!5821948 () Bool)

(assert (=> b!4829605 m!5821948))

(assert (=> d!1547914 m!5821946))

(assert (=> b!4829534 d!1547914))

(declare-fun d!1547922 () Bool)

(declare-fun res!2056834 () Bool)

(declare-fun e!3017863 () Bool)

(assert (=> d!1547922 (=> res!2056834 e!3017863)))

(assert (=> d!1547922 (= res!2056834 (is-Nil!55053 (toList!7543 lm!2325)))))

(assert (=> d!1547922 (= (forall!12663 (toList!7543 lm!2325) lambda!237657) e!3017863)))

(declare-fun b!4829610 () Bool)

(declare-fun e!3017864 () Bool)

(assert (=> b!4829610 (= e!3017863 e!3017864)))

(declare-fun res!2056835 () Bool)

(assert (=> b!4829610 (=> (not res!2056835) (not e!3017864))))

(declare-fun dynLambda!22238 (Int tuple2!58336) Bool)

(assert (=> b!4829610 (= res!2056835 (dynLambda!22238 lambda!237657 (h!61487 (toList!7543 lm!2325))))))

(declare-fun b!4829611 () Bool)

(assert (=> b!4829611 (= e!3017864 (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237657))))

(assert (= (and d!1547922 (not res!2056834)) b!4829610))

(assert (= (and b!4829610 res!2056835) b!4829611))

(declare-fun b_lambda!190395 () Bool)

(assert (=> (not b_lambda!190395) (not b!4829610)))

(declare-fun m!5821952 () Bool)

(assert (=> b!4829610 m!5821952))

(declare-fun m!5821954 () Bool)

(assert (=> b!4829611 m!5821954))

(assert (=> start!501534 d!1547922))

(declare-fun d!1547926 () Bool)

(declare-fun isStrictlySorted!998 (List!55177) Bool)

(assert (=> d!1547926 (= (inv!70643 lm!2325) (isStrictlySorted!998 (toList!7543 lm!2325)))))

(declare-fun bs!1165499 () Bool)

(assert (= bs!1165499 d!1547926))

(declare-fun m!5821956 () Bool)

(assert (=> bs!1165499 m!5821956))

(assert (=> start!501534 d!1547926))

(declare-fun b!4829612 () Bool)

(declare-fun e!3017865 () Unit!143577)

(declare-fun lt!1975888 () Unit!143577)

(assert (=> b!4829612 (= e!3017865 lt!1975888)))

(declare-fun lt!1975890 () Unit!143577)

(assert (=> b!4829612 (= lt!1975890 (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(assert (=> b!4829612 (isDefined!10633 (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(declare-fun lt!1975894 () Unit!143577)

(assert (=> b!4829612 (= lt!1975894 lt!1975890)))

(assert (=> b!4829612 (= lt!1975888 (lemmaInListThenGetKeysListContains!1164 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(declare-fun call!336578 () Bool)

(assert (=> b!4829612 call!336578))

(declare-fun b!4829613 () Bool)

(declare-fun e!3017867 () List!55180)

(assert (=> b!4829613 (= e!3017867 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))

(declare-fun d!1547928 () Bool)

(declare-fun e!3017869 () Bool)

(assert (=> d!1547928 e!3017869))

(declare-fun res!2056838 () Bool)

(assert (=> d!1547928 (=> res!2056838 e!3017869)))

(declare-fun e!3017866 () Bool)

(assert (=> d!1547928 (= res!2056838 e!3017866)))

(declare-fun res!2056836 () Bool)

(assert (=> d!1547928 (=> (not res!2056836) (not e!3017866))))

(declare-fun lt!1975891 () Bool)

(assert (=> d!1547928 (= res!2056836 (not lt!1975891))))

(declare-fun lt!1975892 () Bool)

(assert (=> d!1547928 (= lt!1975891 lt!1975892)))

(declare-fun lt!1975893 () Unit!143577)

(assert (=> d!1547928 (= lt!1975893 e!3017865)))

(declare-fun c!822908 () Bool)

(assert (=> d!1547928 (= c!822908 lt!1975892)))

(assert (=> d!1547928 (= lt!1975892 (containsKey!4423 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(assert (=> d!1547928 (= (contains!18858 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837) key!5594) lt!1975891)))

(declare-fun b!4829614 () Bool)

(declare-fun e!3017870 () Bool)

(assert (=> b!4829614 (= e!3017869 e!3017870)))

(declare-fun res!2056837 () Bool)

(assert (=> b!4829614 (=> (not res!2056837) (not e!3017870))))

(assert (=> b!4829614 (= res!2056837 (isDefined!10633 (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594)))))

(declare-fun b!4829615 () Bool)

(assert (=> b!4829615 (= e!3017870 (contains!18862 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(declare-fun b!4829616 () Bool)

(declare-fun e!3017868 () Unit!143577)

(assert (=> b!4829616 (= e!3017865 e!3017868)))

(declare-fun c!822909 () Bool)

(assert (=> b!4829616 (= c!822909 call!336578)))

(declare-fun bm!336573 () Bool)

(assert (=> bm!336573 (= call!336578 (contains!18862 e!3017867 key!5594))))

(declare-fun c!822910 () Bool)

(assert (=> bm!336573 (= c!822910 c!822908)))

(declare-fun b!4829617 () Bool)

(assert (=> b!4829617 (= e!3017866 (not (contains!18862 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594)))))

(declare-fun b!4829618 () Bool)

(assert (=> b!4829618 (= e!3017867 (getKeysList!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))

(declare-fun b!4829619 () Bool)

(declare-fun Unit!143584 () Unit!143577)

(assert (=> b!4829619 (= e!3017868 Unit!143584)))

(declare-fun b!4829620 () Bool)

(assert (=> b!4829620 false))

(declare-fun lt!1975889 () Unit!143577)

(declare-fun lt!1975895 () Unit!143577)

(assert (=> b!4829620 (= lt!1975889 lt!1975895)))

(assert (=> b!4829620 (containsKey!4423 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594)))

(assert (=> b!4829620 (= lt!1975895 (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(declare-fun Unit!143585 () Unit!143577)

(assert (=> b!4829620 (= e!3017868 Unit!143585)))

(assert (= (and d!1547928 c!822908) b!4829612))

(assert (= (and d!1547928 (not c!822908)) b!4829616))

(assert (= (and b!4829616 c!822909) b!4829620))

(assert (= (and b!4829616 (not c!822909)) b!4829619))

(assert (= (or b!4829612 b!4829616) bm!336573))

(assert (= (and bm!336573 c!822910) b!4829618))

(assert (= (and bm!336573 (not c!822910)) b!4829613))

(assert (= (and d!1547928 res!2056836) b!4829617))

(assert (= (and d!1547928 (not res!2056838)) b!4829614))

(assert (= (and b!4829614 res!2056837) b!4829615))

(assert (=> b!4829615 m!5821868))

(declare-fun m!5821958 () Bool)

(assert (=> b!4829615 m!5821958))

(assert (=> b!4829615 m!5821958))

(declare-fun m!5821960 () Bool)

(assert (=> b!4829615 m!5821960))

(declare-fun m!5821962 () Bool)

(assert (=> b!4829612 m!5821962))

(declare-fun m!5821964 () Bool)

(assert (=> b!4829612 m!5821964))

(assert (=> b!4829612 m!5821964))

(declare-fun m!5821966 () Bool)

(assert (=> b!4829612 m!5821966))

(declare-fun m!5821968 () Bool)

(assert (=> b!4829612 m!5821968))

(assert (=> b!4829617 m!5821868))

(assert (=> b!4829617 m!5821958))

(assert (=> b!4829617 m!5821958))

(assert (=> b!4829617 m!5821960))

(assert (=> b!4829614 m!5821964))

(assert (=> b!4829614 m!5821964))

(assert (=> b!4829614 m!5821966))

(assert (=> b!4829613 m!5821868))

(assert (=> b!4829613 m!5821958))

(declare-fun m!5821970 () Bool)

(assert (=> bm!336573 m!5821970))

(declare-fun m!5821972 () Bool)

(assert (=> b!4829618 m!5821972))

(declare-fun m!5821974 () Bool)

(assert (=> b!4829620 m!5821974))

(declare-fun m!5821976 () Bool)

(assert (=> b!4829620 m!5821976))

(assert (=> d!1547928 m!5821974))

(assert (=> b!4829533 d!1547928))

(declare-fun b!4829642 () Bool)

(assert (=> b!4829642 true))

(declare-fun bs!1165500 () Bool)

(declare-fun b!4829646 () Bool)

(assert (= bs!1165500 (and b!4829646 b!4829642)))

(declare-fun lambda!237699 () Int)

(declare-fun lambda!237698 () Int)

(assert (=> bs!1165500 (= lambda!237699 lambda!237698)))

(assert (=> b!4829646 true))

(declare-fun lt!1975946 () ListMap!6915)

(declare-fun lambda!237700 () Int)

(assert (=> bs!1165500 (= (= lt!1975946 lt!1975837) (= lambda!237700 lambda!237698))))

(assert (=> b!4829646 (= (= lt!1975946 lt!1975837) (= lambda!237700 lambda!237699))))

(assert (=> b!4829646 true))

(declare-fun bs!1165501 () Bool)

(declare-fun d!1547930 () Bool)

(assert (= bs!1165501 (and d!1547930 b!4829642)))

(declare-fun lambda!237701 () Int)

(declare-fun lt!1975957 () ListMap!6915)

(assert (=> bs!1165501 (= (= lt!1975957 lt!1975837) (= lambda!237701 lambda!237698))))

(declare-fun bs!1165502 () Bool)

(assert (= bs!1165502 (and d!1547930 b!4829646)))

(assert (=> bs!1165502 (= (= lt!1975957 lt!1975837) (= lambda!237701 lambda!237699))))

(assert (=> bs!1165502 (= (= lt!1975957 lt!1975946) (= lambda!237701 lambda!237700))))

(assert (=> d!1547930 true))

(declare-fun bm!336580 () Bool)

(declare-fun c!822913 () Bool)

(declare-fun call!336585 () Bool)

(declare-fun forall!12665 (List!55176 Int) Bool)

(assert (=> bm!336580 (= call!336585 (forall!12665 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325)))) (ite c!822913 lambda!237698 lambda!237700)))))

(declare-fun bm!336581 () Bool)

(declare-fun call!336586 () Bool)

(assert (=> bm!336581 (= call!336586 (forall!12665 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325)))) (ite c!822913 lambda!237698 lambda!237700)))))

(declare-fun e!3017889 () ListMap!6915)

(assert (=> b!4829642 (= e!3017889 lt!1975837)))

(declare-fun lt!1975951 () Unit!143577)

(declare-fun call!336587 () Unit!143577)

(assert (=> b!4829642 (= lt!1975951 call!336587)))

(assert (=> b!4829642 call!336586))

(declare-fun lt!1975948 () Unit!143577)

(assert (=> b!4829642 (= lt!1975948 lt!1975951)))

(assert (=> b!4829642 call!336585))

(declare-fun lt!1975961 () Unit!143577)

(declare-fun Unit!143586 () Unit!143577)

(assert (=> b!4829642 (= lt!1975961 Unit!143586)))

(declare-fun b!4829643 () Bool)

(declare-fun e!3017890 () Bool)

(declare-fun invariantList!1823 (List!55176) Bool)

(assert (=> b!4829643 (= e!3017890 (invariantList!1823 (toList!7544 lt!1975957)))))

(assert (=> d!1547930 e!3017890))

(declare-fun res!2056856 () Bool)

(assert (=> d!1547930 (=> (not res!2056856) (not e!3017890))))

(assert (=> d!1547930 (= res!2056856 (forall!12665 (_2!32462 (h!61487 (toList!7543 lm!2325))) lambda!237701))))

(assert (=> d!1547930 (= lt!1975957 e!3017889)))

(assert (=> d!1547930 (= c!822913 (is-Nil!55052 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(declare-fun noDuplicateKeys!2467 (List!55176) Bool)

(assert (=> d!1547930 (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lm!2325))))))

(assert (=> d!1547930 (= (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837) lt!1975957)))

(declare-fun b!4829644 () Bool)

(declare-fun res!2056857 () Bool)

(assert (=> b!4829644 (=> (not res!2056857) (not e!3017890))))

(assert (=> b!4829644 (= res!2056857 (forall!12665 (toList!7544 lt!1975837) lambda!237701))))

(declare-fun b!4829645 () Bool)

(declare-fun e!3017888 () Bool)

(assert (=> b!4829645 (= e!3017888 (forall!12665 (toList!7544 lt!1975837) lambda!237700))))

(declare-fun bm!336582 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1001 (ListMap!6915) Unit!143577)

(assert (=> bm!336582 (= call!336587 (lemmaContainsAllItsOwnKeys!1001 lt!1975837))))

(assert (=> b!4829646 (= e!3017889 lt!1975946)))

(declare-fun lt!1975960 () ListMap!6915)

(declare-fun +!2546 (ListMap!6915 tuple2!58334) ListMap!6915)

(assert (=> b!4829646 (= lt!1975960 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> b!4829646 (= lt!1975946 (addToMapMapFromBucket!1824 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1975945 () Unit!143577)

(assert (=> b!4829646 (= lt!1975945 call!336587)))

(assert (=> b!4829646 (forall!12665 (toList!7544 lt!1975837) lambda!237699)))

(declare-fun lt!1975953 () Unit!143577)

(assert (=> b!4829646 (= lt!1975953 lt!1975945)))

(assert (=> b!4829646 (forall!12665 (toList!7544 lt!1975960) lambda!237700)))

(declare-fun lt!1975950 () Unit!143577)

(declare-fun Unit!143587 () Unit!143577)

(assert (=> b!4829646 (= lt!1975950 Unit!143587)))

(assert (=> b!4829646 (forall!12665 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) lambda!237700)))

(declare-fun lt!1975954 () Unit!143577)

(declare-fun Unit!143588 () Unit!143577)

(assert (=> b!4829646 (= lt!1975954 Unit!143588)))

(declare-fun lt!1975959 () Unit!143577)

(declare-fun Unit!143589 () Unit!143577)

(assert (=> b!4829646 (= lt!1975959 Unit!143589)))

(declare-fun lt!1975956 () Unit!143577)

(declare-fun forallContained!4404 (List!55176 Int tuple2!58334) Unit!143577)

(assert (=> b!4829646 (= lt!1975956 (forallContained!4404 (toList!7544 lt!1975960) lambda!237700 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> b!4829646 (contains!18858 lt!1975960 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun lt!1975941 () Unit!143577)

(declare-fun Unit!143590 () Unit!143577)

(assert (=> b!4829646 (= lt!1975941 Unit!143590)))

(assert (=> b!4829646 (contains!18858 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun lt!1975947 () Unit!143577)

(declare-fun Unit!143591 () Unit!143577)

(assert (=> b!4829646 (= lt!1975947 Unit!143591)))

(assert (=> b!4829646 call!336585))

(declare-fun lt!1975955 () Unit!143577)

(declare-fun Unit!143592 () Unit!143577)

(assert (=> b!4829646 (= lt!1975955 Unit!143592)))

(assert (=> b!4829646 (forall!12665 (toList!7544 lt!1975960) lambda!237700)))

(declare-fun lt!1975943 () Unit!143577)

(declare-fun Unit!143593 () Unit!143577)

(assert (=> b!4829646 (= lt!1975943 Unit!143593)))

(declare-fun lt!1975944 () Unit!143577)

(declare-fun Unit!143594 () Unit!143577)

(assert (=> b!4829646 (= lt!1975944 Unit!143594)))

(declare-fun lt!1975942 () Unit!143577)

(declare-fun addForallContainsKeyThenBeforeAdding!1000 (ListMap!6915 ListMap!6915 K!16742 V!16988) Unit!143577)

(assert (=> b!4829646 (= lt!1975942 (addForallContainsKeyThenBeforeAdding!1000 lt!1975837 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829646 (forall!12665 (toList!7544 lt!1975837) lambda!237700)))

(declare-fun lt!1975958 () Unit!143577)

(assert (=> b!4829646 (= lt!1975958 lt!1975942)))

(assert (=> b!4829646 (forall!12665 (toList!7544 lt!1975837) lambda!237700)))

(declare-fun lt!1975952 () Unit!143577)

(declare-fun Unit!143595 () Unit!143577)

(assert (=> b!4829646 (= lt!1975952 Unit!143595)))

(declare-fun res!2056858 () Bool)

(assert (=> b!4829646 (= res!2056858 call!336586)))

(assert (=> b!4829646 (=> (not res!2056858) (not e!3017888))))

(assert (=> b!4829646 e!3017888))

(declare-fun lt!1975949 () Unit!143577)

(declare-fun Unit!143596 () Unit!143577)

(assert (=> b!4829646 (= lt!1975949 Unit!143596)))

(assert (= (and d!1547930 c!822913) b!4829642))

(assert (= (and d!1547930 (not c!822913)) b!4829646))

(assert (= (and b!4829646 res!2056858) b!4829645))

(assert (= (or b!4829642 b!4829646) bm!336582))

(assert (= (or b!4829642 b!4829646) bm!336580))

(assert (= (or b!4829642 b!4829646) bm!336581))

(assert (= (and d!1547930 res!2056856) b!4829644))

(assert (= (and b!4829644 res!2056857) b!4829643))

(declare-fun m!5821986 () Bool)

(assert (=> bm!336581 m!5821986))

(declare-fun m!5821988 () Bool)

(assert (=> bm!336582 m!5821988))

(declare-fun m!5821990 () Bool)

(assert (=> b!4829644 m!5821990))

(declare-fun m!5821992 () Bool)

(assert (=> b!4829645 m!5821992))

(assert (=> bm!336580 m!5821986))

(declare-fun m!5821994 () Bool)

(assert (=> b!4829643 m!5821994))

(declare-fun m!5821996 () Bool)

(assert (=> d!1547930 m!5821996))

(declare-fun m!5821998 () Bool)

(assert (=> d!1547930 m!5821998))

(declare-fun m!5822000 () Bool)

(assert (=> b!4829646 m!5822000))

(declare-fun m!5822002 () Bool)

(assert (=> b!4829646 m!5822002))

(assert (=> b!4829646 m!5821992))

(declare-fun m!5822004 () Bool)

(assert (=> b!4829646 m!5822004))

(declare-fun m!5822006 () Bool)

(assert (=> b!4829646 m!5822006))

(assert (=> b!4829646 m!5821992))

(declare-fun m!5822008 () Bool)

(assert (=> b!4829646 m!5822008))

(assert (=> b!4829646 m!5822008))

(declare-fun m!5822010 () Bool)

(assert (=> b!4829646 m!5822010))

(assert (=> b!4829646 m!5822004))

(declare-fun m!5822012 () Bool)

(assert (=> b!4829646 m!5822012))

(declare-fun m!5822014 () Bool)

(assert (=> b!4829646 m!5822014))

(declare-fun m!5822016 () Bool)

(assert (=> b!4829646 m!5822016))

(assert (=> b!4829533 d!1547930))

(declare-fun d!1547938 () Bool)

(declare-fun res!2056863 () Bool)

(declare-fun e!3017895 () Bool)

(assert (=> d!1547938 (=> res!2056863 e!3017895)))

(assert (=> d!1547938 (= res!2056863 (and (is-Cons!55052 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325))))) (= (_1!32461 (h!61486 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))))) key!5594)))))

(assert (=> d!1547938 (= (containsKey!4420 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))) key!5594) e!3017895)))

(declare-fun b!4829653 () Bool)

(declare-fun e!3017896 () Bool)

(assert (=> b!4829653 (= e!3017895 e!3017896)))

(declare-fun res!2056864 () Bool)

(assert (=> b!4829653 (=> (not res!2056864) (not e!3017896))))

(assert (=> b!4829653 (= res!2056864 (is-Cons!55052 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun b!4829654 () Bool)

(assert (=> b!4829654 (= e!3017896 (containsKey!4420 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325))))) key!5594))))

(assert (= (and d!1547938 (not res!2056863)) b!4829653))

(assert (= (and b!4829653 res!2056864) b!4829654))

(declare-fun m!5822018 () Bool)

(assert (=> b!4829654 m!5822018))

(assert (=> b!4829533 d!1547938))

(declare-fun d!1547940 () Bool)

(declare-fun tail!9427 (List!55177) List!55177)

(assert (=> d!1547940 (= (tail!9425 lm!2325) (ListLongMap!6066 (tail!9427 (toList!7543 lm!2325))))))

(declare-fun bs!1165503 () Bool)

(assert (= bs!1165503 d!1547940))

(declare-fun m!5822020 () Bool)

(assert (=> bs!1165503 m!5822020))

(assert (=> b!4829533 d!1547940))

(declare-fun d!1547942 () Bool)

(declare-fun res!2056865 () Bool)

(declare-fun e!3017897 () Bool)

(assert (=> d!1547942 (=> res!2056865 e!3017897)))

(assert (=> d!1547942 (= res!2056865 (and (is-Cons!55052 (_2!32462 (h!61487 (toList!7543 lm!2325)))) (= (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) key!5594)))))

(assert (=> d!1547942 (= (containsKey!4420 (_2!32462 (h!61487 (toList!7543 lm!2325))) key!5594) e!3017897)))

(declare-fun b!4829655 () Bool)

(declare-fun e!3017898 () Bool)

(assert (=> b!4829655 (= e!3017897 e!3017898)))

(declare-fun res!2056866 () Bool)

(assert (=> b!4829655 (=> (not res!2056866) (not e!3017898))))

(assert (=> b!4829655 (= res!2056866 (is-Cons!55052 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(declare-fun b!4829656 () Bool)

(assert (=> b!4829656 (= e!3017898 (containsKey!4420 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) key!5594))))

(assert (= (and d!1547942 (not res!2056865)) b!4829655))

(assert (= (and b!4829655 res!2056866) b!4829656))

(declare-fun m!5822022 () Bool)

(assert (=> b!4829656 m!5822022))

(assert (=> b!4829533 d!1547942))

(declare-fun e!3017901 () Bool)

(declare-fun d!1547944 () Bool)

(assert (=> d!1547944 (= (contains!18858 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837) key!5594) e!3017901)))

(declare-fun res!2056869 () Bool)

(assert (=> d!1547944 (=> res!2056869 e!3017901)))

(assert (=> d!1547944 (= res!2056869 (containsKey!4420 (_2!32462 (h!61487 (toList!7543 lm!2325))) key!5594))))

(declare-fun lt!1975964 () Unit!143577)

(declare-fun choose!35213 (List!55176 ListMap!6915 K!16742) Unit!143577)

(assert (=> d!1547944 (= lt!1975964 (choose!35213 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837 key!5594))))

(assert (=> d!1547944 (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lm!2325))))))

(assert (=> d!1547944 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!47 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837 key!5594) lt!1975964)))

(declare-fun b!4829659 () Bool)

(assert (=> b!4829659 (= e!3017901 (contains!18858 lt!1975837 key!5594))))

(assert (= (and d!1547944 (not res!2056869)) b!4829659))

(assert (=> d!1547944 m!5821868))

(assert (=> d!1547944 m!5821864))

(assert (=> d!1547944 m!5821998))

(declare-fun m!5822024 () Bool)

(assert (=> d!1547944 m!5822024))

(assert (=> d!1547944 m!5821868))

(assert (=> d!1547944 m!5821870))

(assert (=> b!4829659 m!5821854))

(assert (=> b!4829533 d!1547944))

(declare-fun bs!1165504 () Bool)

(declare-fun d!1547946 () Bool)

(assert (= bs!1165504 (and d!1547946 start!501534)))

(declare-fun lambda!237704 () Int)

(assert (=> bs!1165504 (= lambda!237704 lambda!237657)))

(declare-fun bs!1165505 () Bool)

(assert (= bs!1165505 (and d!1547946 d!1547906)))

(assert (=> bs!1165505 (not (= lambda!237704 lambda!237665))))

(declare-fun bs!1165506 () Bool)

(assert (= bs!1165506 (and d!1547946 d!1547912)))

(assert (=> bs!1165506 (not (= lambda!237704 lambda!237666))))

(declare-fun lt!1975967 () ListMap!6915)

(assert (=> d!1547946 (invariantList!1823 (toList!7544 lt!1975967))))

(declare-fun e!3017904 () ListMap!6915)

(assert (=> d!1547946 (= lt!1975967 e!3017904)))

(declare-fun c!822916 () Bool)

(assert (=> d!1547946 (= c!822916 (is-Cons!55053 (t!362673 (toList!7543 lm!2325))))))

(assert (=> d!1547946 (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237704)))

(assert (=> d!1547946 (= (extractMap!2709 (t!362673 (toList!7543 lm!2325))) lt!1975967)))

(declare-fun b!4829664 () Bool)

(assert (=> b!4829664 (= e!3017904 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))))))

(declare-fun b!4829665 () Bool)

(assert (=> b!4829665 (= e!3017904 (ListMap!6916 Nil!55052))))

(assert (= (and d!1547946 c!822916) b!4829664))

(assert (= (and d!1547946 (not c!822916)) b!4829665))

(declare-fun m!5822026 () Bool)

(assert (=> d!1547946 m!5822026))

(declare-fun m!5822028 () Bool)

(assert (=> d!1547946 m!5822028))

(declare-fun m!5822030 () Bool)

(assert (=> b!4829664 m!5822030))

(assert (=> b!4829664 m!5822030))

(declare-fun m!5822032 () Bool)

(assert (=> b!4829664 m!5822032))

(assert (=> b!4829533 d!1547946))

(declare-fun bs!1165507 () Bool)

(declare-fun d!1547948 () Bool)

(assert (= bs!1165507 (and d!1547948 start!501534)))

(declare-fun lambda!237707 () Int)

(assert (=> bs!1165507 (= lambda!237707 lambda!237657)))

(declare-fun bs!1165508 () Bool)

(assert (= bs!1165508 (and d!1547948 d!1547906)))

(assert (=> bs!1165508 (not (= lambda!237707 lambda!237665))))

(declare-fun bs!1165509 () Bool)

(assert (= bs!1165509 (and d!1547948 d!1547912)))

(assert (=> bs!1165509 (not (= lambda!237707 lambda!237666))))

(declare-fun bs!1165510 () Bool)

(assert (= bs!1165510 (and d!1547948 d!1547946)))

(assert (=> bs!1165510 (= lambda!237707 lambda!237704)))

(assert (=> d!1547948 (not (containsKey!4420 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))) key!5594))))

(declare-fun lt!1975970 () Unit!143577)

(declare-fun choose!35214 (ListLongMap!6065 K!16742 (_ BitVec 64) Hashable!7301) Unit!143577)

(assert (=> d!1547948 (= lt!1975970 (choose!35214 lm!2325 key!5594 (_1!32462 (h!61487 (toList!7543 lm!2325))) hashF!1543))))

(assert (=> d!1547948 (forall!12663 (toList!7543 lm!2325) lambda!237707)))

(assert (=> d!1547948 (= (lemmaNotSameHashThenCannotContainKey!235 lm!2325 key!5594 (_1!32462 (h!61487 (toList!7543 lm!2325))) hashF!1543) lt!1975970)))

(declare-fun bs!1165511 () Bool)

(assert (= bs!1165511 d!1547948))

(assert (=> bs!1165511 m!5821860))

(assert (=> bs!1165511 m!5821860))

(assert (=> bs!1165511 m!5821862))

(declare-fun m!5822034 () Bool)

(assert (=> bs!1165511 m!5822034))

(declare-fun m!5822036 () Bool)

(assert (=> bs!1165511 m!5822036))

(assert (=> b!4829533 d!1547948))

(declare-fun d!1547950 () Bool)

(declare-fun get!18849 (Option!13517) List!55176)

(assert (=> d!1547950 (= (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))) (get!18849 (getValueByKey!2644 (toList!7543 lm!2325) (_1!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun bs!1165512 () Bool)

(assert (= bs!1165512 d!1547950))

(declare-fun m!5822038 () Bool)

(assert (=> bs!1165512 m!5822038))

(assert (=> bs!1165512 m!5822038))

(declare-fun m!5822040 () Bool)

(assert (=> bs!1165512 m!5822040))

(assert (=> b!4829533 d!1547950))

(declare-fun d!1547952 () Bool)

(declare-fun res!2056870 () Bool)

(declare-fun e!3017905 () Bool)

(assert (=> d!1547952 (=> res!2056870 e!3017905)))

(assert (=> d!1547952 (= res!2056870 (is-Nil!55053 (toList!7543 lt!1975836)))))

(assert (=> d!1547952 (= (forall!12663 (toList!7543 lt!1975836) lambda!237657) e!3017905)))

(declare-fun b!4829666 () Bool)

(declare-fun e!3017906 () Bool)

(assert (=> b!4829666 (= e!3017905 e!3017906)))

(declare-fun res!2056871 () Bool)

(assert (=> b!4829666 (=> (not res!2056871) (not e!3017906))))

(assert (=> b!4829666 (= res!2056871 (dynLambda!22238 lambda!237657 (h!61487 (toList!7543 lt!1975836))))))

(declare-fun b!4829667 () Bool)

(assert (=> b!4829667 (= e!3017906 (forall!12663 (t!362673 (toList!7543 lt!1975836)) lambda!237657))))

(assert (= (and d!1547952 (not res!2056870)) b!4829666))

(assert (= (and b!4829666 res!2056871) b!4829667))

(declare-fun b_lambda!190397 () Bool)

(assert (=> (not b_lambda!190397) (not b!4829666)))

(declare-fun m!5822042 () Bool)

(assert (=> b!4829666 m!5822042))

(declare-fun m!5822044 () Bool)

(assert (=> b!4829667 m!5822044))

(assert (=> b!4829533 d!1547952))

(declare-fun b!4829672 () Bool)

(declare-fun e!3017909 () Bool)

(declare-fun tp!1362845 () Bool)

(declare-fun tp!1362846 () Bool)

(assert (=> b!4829672 (= e!3017909 (and tp!1362845 tp!1362846))))

(assert (=> b!4829538 (= tp!1362837 e!3017909)))

(assert (= (and b!4829538 (is-Cons!55053 (toList!7543 lm!2325))) b!4829672))

(declare-fun b_lambda!190399 () Bool)

(assert (= b_lambda!190397 (or start!501534 b_lambda!190399)))

(declare-fun bs!1165513 () Bool)

(declare-fun d!1547954 () Bool)

(assert (= bs!1165513 (and d!1547954 start!501534)))

(assert (=> bs!1165513 (= (dynLambda!22238 lambda!237657 (h!61487 (toList!7543 lt!1975836))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lt!1975836)))))))

(declare-fun m!5822046 () Bool)

(assert (=> bs!1165513 m!5822046))

(assert (=> b!4829666 d!1547954))

(declare-fun b_lambda!190401 () Bool)

(assert (= b_lambda!190395 (or start!501534 b_lambda!190401)))

(declare-fun bs!1165514 () Bool)

(declare-fun d!1547956 () Bool)

(assert (= bs!1165514 (and d!1547956 start!501534)))

(assert (=> bs!1165514 (= (dynLambda!22238 lambda!237657 (h!61487 (toList!7543 lm!2325))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(assert (=> bs!1165514 m!5821998))

(assert (=> b!4829610 d!1547956))

(push 1)

(assert (not b!4829620))

(assert (not b!4829614))

(assert (not d!1547906))

(assert (not b!4829613))

(assert (not b!4829598))

(assert (not b!4829617))

(assert (not b!4829643))

(assert (not bm!336580))

(assert (not bs!1165513))

(assert (not b!4829618))

(assert (not d!1547908))

(assert (not b!4829570))

(assert (not d!1547948))

(assert (not d!1547928))

(assert (not b!4829568))

(assert (not b!4829659))

(assert (not b!4829611))

(assert (not b_lambda!190399))

(assert (not d!1547914))

(assert (not bm!336581))

(assert (not d!1547912))

(assert (not b!4829646))

(assert (not d!1547950))

(assert (not d!1547910))

(assert (not b!4829597))

(assert (not b!4829605))

(assert (not b!4829603))

(assert (not bs!1165514))

(assert (not d!1547944))

(assert (not d!1547930))

(assert (not d!1547946))

(assert (not b!4829599))

(assert (not b!4829664))

(assert (not bm!336572))

(assert (not b!4829600))

(assert (not d!1547940))

(assert (not b!4829645))

(assert (not b!4829654))

(assert (not b!4829656))

(assert (not b_lambda!190401))

(assert (not b!4829602))

(assert (not b!4829615))

(assert (not b!4829672))

(assert (not d!1547926))

(assert (not bm!336582))

(assert tp_is_empty!34549)

(assert (not b!4829667))

(assert (not bm!336573))

(assert (not b!4829612))

(assert (not b!4829644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1547982 () Bool)

(declare-fun res!2056902 () Bool)

(declare-fun e!3017961 () Bool)

(assert (=> d!1547982 (=> res!2056902 e!3017961)))

(assert (=> d!1547982 (= res!2056902 (and (is-Cons!55052 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (= (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) key!5594)))))

(assert (=> d!1547982 (= (containsKey!4423 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) e!3017961)))

(declare-fun b!4829752 () Bool)

(declare-fun e!3017962 () Bool)

(assert (=> b!4829752 (= e!3017961 e!3017962)))

(declare-fun res!2056903 () Bool)

(assert (=> b!4829752 (=> (not res!2056903) (not e!3017962))))

(assert (=> b!4829752 (= res!2056903 (is-Cons!55052 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))

(declare-fun b!4829753 () Bool)

(assert (=> b!4829753 (= e!3017962 (containsKey!4423 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) key!5594))))

(assert (= (and d!1547982 (not res!2056902)) b!4829752))

(assert (= (and b!4829752 res!2056903) b!4829753))

(declare-fun m!5822158 () Bool)

(assert (=> b!4829753 m!5822158))

(assert (=> d!1547928 d!1547982))

(declare-fun d!1547984 () Bool)

(assert (=> d!1547984 (isDefined!10632 (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(declare-fun lt!1976086 () Unit!143577)

(declare-fun choose!35217 (List!55177 (_ BitVec 64)) Unit!143577)

(assert (=> d!1547984 (= lt!1976086 (choose!35217 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(declare-fun e!3017965 () Bool)

(assert (=> d!1547984 e!3017965))

(declare-fun res!2056906 () Bool)

(assert (=> d!1547984 (=> (not res!2056906) (not e!3017965))))

(assert (=> d!1547984 (= res!2056906 (isStrictlySorted!998 (toList!7543 lm!2325)))))

(assert (=> d!1547984 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2429 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)) lt!1976086)))

(declare-fun b!4829756 () Bool)

(assert (=> b!4829756 (= e!3017965 (containsKey!4422 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))

(assert (= (and d!1547984 res!2056906) b!4829756))

(assert (=> d!1547984 m!5821848))

(assert (=> d!1547984 m!5821916))

(assert (=> d!1547984 m!5821916))

(assert (=> d!1547984 m!5821918))

(assert (=> d!1547984 m!5821848))

(declare-fun m!5822160 () Bool)

(assert (=> d!1547984 m!5822160))

(assert (=> d!1547984 m!5821956))

(assert (=> b!4829756 m!5821848))

(assert (=> b!4829756 m!5821912))

(assert (=> b!4829568 d!1547984))

(declare-fun d!1547986 () Bool)

(declare-fun isEmpty!29678 (Option!13517) Bool)

(assert (=> d!1547986 (= (isDefined!10632 (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594))) (not (isEmpty!29678 (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)))))))

(declare-fun bs!1165534 () Bool)

(assert (= bs!1165534 d!1547986))

(assert (=> bs!1165534 m!5821916))

(declare-fun m!5822162 () Bool)

(assert (=> bs!1165534 m!5822162))

(assert (=> b!4829568 d!1547986))

(declare-fun c!822942 () Bool)

(declare-fun d!1547988 () Bool)

(assert (=> d!1547988 (= c!822942 (and (is-Cons!55053 (toList!7543 lm!2325)) (= (_1!32462 (h!61487 (toList!7543 lm!2325))) (hash!5460 hashF!1543 key!5594))))))

(declare-fun e!3017970 () Option!13517)

(assert (=> d!1547988 (= (getValueByKey!2644 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)) e!3017970)))

(declare-fun b!4829765 () Bool)

(assert (=> b!4829765 (= e!3017970 (Some!13516 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(declare-fun b!4829766 () Bool)

(declare-fun e!3017971 () Option!13517)

(assert (=> b!4829766 (= e!3017970 e!3017971)))

(declare-fun c!822943 () Bool)

(assert (=> b!4829766 (= c!822943 (and (is-Cons!55053 (toList!7543 lm!2325)) (not (= (_1!32462 (h!61487 (toList!7543 lm!2325))) (hash!5460 hashF!1543 key!5594)))))))

(declare-fun b!4829768 () Bool)

(assert (=> b!4829768 (= e!3017971 None!13516)))

(declare-fun b!4829767 () Bool)

(assert (=> b!4829767 (= e!3017971 (getValueByKey!2644 (t!362673 (toList!7543 lm!2325)) (hash!5460 hashF!1543 key!5594)))))

(assert (= (and d!1547988 c!822942) b!4829765))

(assert (= (and d!1547988 (not c!822942)) b!4829766))

(assert (= (and b!4829766 c!822943) b!4829767))

(assert (= (and b!4829766 (not c!822943)) b!4829768))

(assert (=> b!4829767 m!5821848))

(declare-fun m!5822164 () Bool)

(assert (=> b!4829767 m!5822164))

(assert (=> b!4829568 d!1547988))

(declare-fun d!1547990 () Bool)

(declare-fun res!2056907 () Bool)

(declare-fun e!3017972 () Bool)

(assert (=> d!1547990 (=> res!2056907 e!3017972)))

(assert (=> d!1547990 (= res!2056907 (is-Nil!55053 (toList!7543 lt!1975836)))))

(assert (=> d!1547990 (= (forall!12663 (toList!7543 lt!1975836) lambda!237666) e!3017972)))

(declare-fun b!4829769 () Bool)

(declare-fun e!3017973 () Bool)

(assert (=> b!4829769 (= e!3017972 e!3017973)))

(declare-fun res!2056908 () Bool)

(assert (=> b!4829769 (=> (not res!2056908) (not e!3017973))))

(assert (=> b!4829769 (= res!2056908 (dynLambda!22238 lambda!237666 (h!61487 (toList!7543 lt!1975836))))))

(declare-fun b!4829770 () Bool)

(assert (=> b!4829770 (= e!3017973 (forall!12663 (t!362673 (toList!7543 lt!1975836)) lambda!237666))))

(assert (= (and d!1547990 (not res!2056907)) b!4829769))

(assert (= (and b!4829769 res!2056908) b!4829770))

(declare-fun b_lambda!190409 () Bool)

(assert (=> (not b_lambda!190409) (not b!4829769)))

(declare-fun m!5822166 () Bool)

(assert (=> b!4829769 m!5822166))

(declare-fun m!5822168 () Bool)

(assert (=> b!4829770 m!5822168))

(assert (=> d!1547912 d!1547990))

(declare-fun d!1547992 () Bool)

(assert (=> d!1547992 (isDefined!10633 (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(declare-fun lt!1976089 () Unit!143577)

(declare-fun choose!35218 (List!55176 K!16742) Unit!143577)

(assert (=> d!1547992 (= lt!1976089 (choose!35218 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(assert (=> d!1547992 (invariantList!1823 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))

(assert (=> d!1547992 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) lt!1976089)))

(declare-fun bs!1165535 () Bool)

(assert (= bs!1165535 d!1547992))

(assert (=> bs!1165535 m!5821964))

(assert (=> bs!1165535 m!5821964))

(assert (=> bs!1165535 m!5821966))

(declare-fun m!5822170 () Bool)

(assert (=> bs!1165535 m!5822170))

(declare-fun m!5822172 () Bool)

(assert (=> bs!1165535 m!5822172))

(assert (=> b!4829612 d!1547992))

(declare-fun d!1547994 () Bool)

(declare-fun isEmpty!29679 (Option!13518) Bool)

(assert (=> d!1547994 (= (isDefined!10633 (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594)) (not (isEmpty!29679 (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))))

(declare-fun bs!1165536 () Bool)

(assert (= bs!1165536 d!1547994))

(assert (=> bs!1165536 m!5821964))

(declare-fun m!5822174 () Bool)

(assert (=> bs!1165536 m!5822174))

(assert (=> b!4829612 d!1547994))

(declare-fun b!4829780 () Bool)

(declare-fun e!3017978 () Option!13518)

(declare-fun e!3017979 () Option!13518)

(assert (=> b!4829780 (= e!3017978 e!3017979)))

(declare-fun c!822949 () Bool)

(assert (=> b!4829780 (= c!822949 (and (is-Cons!55052 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (not (= (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) key!5594))))))

(declare-fun b!4829781 () Bool)

(assert (=> b!4829781 (= e!3017979 (getValueByKey!2645 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) key!5594))))

(declare-fun b!4829782 () Bool)

(assert (=> b!4829782 (= e!3017979 None!13517)))

(declare-fun b!4829779 () Bool)

(assert (=> b!4829779 (= e!3017978 (Some!13517 (_2!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))))

(declare-fun c!822948 () Bool)

(declare-fun d!1547996 () Bool)

(assert (=> d!1547996 (= c!822948 (and (is-Cons!55052 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (= (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) key!5594)))))

(assert (=> d!1547996 (= (getValueByKey!2645 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) e!3017978)))

(assert (= (and d!1547996 c!822948) b!4829779))

(assert (= (and d!1547996 (not c!822948)) b!4829780))

(assert (= (and b!4829780 c!822949) b!4829781))

(assert (= (and b!4829780 (not c!822949)) b!4829782))

(declare-fun m!5822176 () Bool)

(assert (=> b!4829781 m!5822176))

(assert (=> b!4829612 d!1547996))

(declare-fun d!1547998 () Bool)

(assert (=> d!1547998 (contains!18862 (getKeysList!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) key!5594)))

(declare-fun lt!1976092 () Unit!143577)

(declare-fun choose!35219 (List!55176 K!16742) Unit!143577)

(assert (=> d!1547998 (= lt!1976092 (choose!35219 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(assert (=> d!1547998 (invariantList!1823 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))

(assert (=> d!1547998 (= (lemmaInListThenGetKeysListContains!1164 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) lt!1976092)))

(declare-fun bs!1165537 () Bool)

(assert (= bs!1165537 d!1547998))

(assert (=> bs!1165537 m!5821972))

(assert (=> bs!1165537 m!5821972))

(declare-fun m!5822178 () Bool)

(assert (=> bs!1165537 m!5822178))

(declare-fun m!5822180 () Bool)

(assert (=> bs!1165537 m!5822180))

(assert (=> bs!1165537 m!5822172))

(assert (=> b!4829612 d!1547998))

(declare-fun d!1548000 () Bool)

(declare-fun res!2056913 () Bool)

(declare-fun e!3017984 () Bool)

(assert (=> d!1548000 (=> res!2056913 e!3017984)))

(assert (=> d!1548000 (= res!2056913 (not (is-Cons!55052 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> d!1548000 (= (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lm!2325)))) e!3017984)))

(declare-fun b!4829787 () Bool)

(declare-fun e!3017985 () Bool)

(assert (=> b!4829787 (= e!3017984 e!3017985)))

(declare-fun res!2056914 () Bool)

(assert (=> b!4829787 (=> (not res!2056914) (not e!3017985))))

(assert (=> b!4829787 (= res!2056914 (not (containsKey!4420 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829788 () Bool)

(assert (=> b!4829788 (= e!3017985 (noDuplicateKeys!2467 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (= (and d!1548000 (not res!2056913)) b!4829787))

(assert (= (and b!4829787 res!2056914) b!4829788))

(declare-fun m!5822182 () Bool)

(assert (=> b!4829787 m!5822182))

(declare-fun m!5822184 () Bool)

(assert (=> b!4829788 m!5822184))

(assert (=> bs!1165514 d!1548000))

(declare-fun d!1548002 () Bool)

(declare-fun res!2056915 () Bool)

(declare-fun e!3017986 () Bool)

(assert (=> d!1548002 (=> res!2056915 e!3017986)))

(assert (=> d!1548002 (= res!2056915 (is-Nil!55053 (toList!7543 lm!2325)))))

(assert (=> d!1548002 (= (forall!12663 (toList!7543 lm!2325) lambda!237665) e!3017986)))

(declare-fun b!4829789 () Bool)

(declare-fun e!3017987 () Bool)

(assert (=> b!4829789 (= e!3017986 e!3017987)))

(declare-fun res!2056916 () Bool)

(assert (=> b!4829789 (=> (not res!2056916) (not e!3017987))))

(assert (=> b!4829789 (= res!2056916 (dynLambda!22238 lambda!237665 (h!61487 (toList!7543 lm!2325))))))

(declare-fun b!4829790 () Bool)

(assert (=> b!4829790 (= e!3017987 (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237665))))

(assert (= (and d!1548002 (not res!2056915)) b!4829789))

(assert (= (and b!4829789 res!2056916) b!4829790))

(declare-fun b_lambda!190411 () Bool)

(assert (=> (not b_lambda!190411) (not b!4829789)))

(declare-fun m!5822186 () Bool)

(assert (=> b!4829789 m!5822186))

(declare-fun m!5822188 () Bool)

(assert (=> b!4829790 m!5822188))

(assert (=> d!1547906 d!1548002))

(declare-fun d!1548004 () Bool)

(declare-fun res!2056917 () Bool)

(declare-fun e!3017988 () Bool)

(assert (=> d!1548004 (=> res!2056917 e!3017988)))

(assert (=> d!1548004 (= res!2056917 (and (is-Cons!55052 (toList!7544 lt!1975837)) (= (_1!32461 (h!61486 (toList!7544 lt!1975837))) key!5594)))))

(assert (=> d!1548004 (= (containsKey!4423 (toList!7544 lt!1975837) key!5594) e!3017988)))

(declare-fun b!4829791 () Bool)

(declare-fun e!3017989 () Bool)

(assert (=> b!4829791 (= e!3017988 e!3017989)))

(declare-fun res!2056918 () Bool)

(assert (=> b!4829791 (=> (not res!2056918) (not e!3017989))))

(assert (=> b!4829791 (= res!2056918 (is-Cons!55052 (toList!7544 lt!1975837)))))

(declare-fun b!4829792 () Bool)

(assert (=> b!4829792 (= e!3017989 (containsKey!4423 (t!362672 (toList!7544 lt!1975837)) key!5594))))

(assert (= (and d!1548004 (not res!2056917)) b!4829791))

(assert (= (and b!4829791 res!2056918) b!4829792))

(declare-fun m!5822190 () Bool)

(assert (=> b!4829792 m!5822190))

(assert (=> b!4829605 d!1548004))

(declare-fun d!1548006 () Bool)

(assert (=> d!1548006 (containsKey!4423 (toList!7544 lt!1975837) key!5594)))

(declare-fun lt!1976095 () Unit!143577)

(declare-fun choose!35220 (List!55176 K!16742) Unit!143577)

(assert (=> d!1548006 (= lt!1976095 (choose!35220 (toList!7544 lt!1975837) key!5594))))

(assert (=> d!1548006 (invariantList!1823 (toList!7544 lt!1975837))))

(assert (=> d!1548006 (= (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 lt!1975837) key!5594) lt!1976095)))

(declare-fun bs!1165538 () Bool)

(assert (= bs!1165538 d!1548006))

(assert (=> bs!1165538 m!5821946))

(declare-fun m!5822192 () Bool)

(assert (=> bs!1165538 m!5822192))

(declare-fun m!5822194 () Bool)

(assert (=> bs!1165538 m!5822194))

(assert (=> b!4829605 d!1548006))

(declare-fun d!1548008 () Bool)

(assert (=> d!1548008 (= (tail!9427 (toList!7543 lm!2325)) (t!362673 (toList!7543 lm!2325)))))

(assert (=> d!1547940 d!1548008))

(declare-fun d!1548010 () Bool)

(declare-fun res!2056919 () Bool)

(declare-fun e!3017990 () Bool)

(assert (=> d!1548010 (=> res!2056919 e!3017990)))

(assert (=> d!1548010 (= res!2056919 (not (is-Cons!55052 (_2!32462 (h!61487 (toList!7543 lt!1975836))))))))

(assert (=> d!1548010 (= (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lt!1975836)))) e!3017990)))

(declare-fun b!4829793 () Bool)

(declare-fun e!3017991 () Bool)

(assert (=> b!4829793 (= e!3017990 e!3017991)))

(declare-fun res!2056920 () Bool)

(assert (=> b!4829793 (=> (not res!2056920) (not e!3017991))))

(assert (=> b!4829793 (= res!2056920 (not (containsKey!4420 (t!362672 (_2!32462 (h!61487 (toList!7543 lt!1975836)))) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lt!1975836))))))))))

(declare-fun b!4829794 () Bool)

(assert (=> b!4829794 (= e!3017991 (noDuplicateKeys!2467 (t!362672 (_2!32462 (h!61487 (toList!7543 lt!1975836))))))))

(assert (= (and d!1548010 (not res!2056919)) b!4829793))

(assert (= (and b!4829793 res!2056920) b!4829794))

(declare-fun m!5822196 () Bool)

(assert (=> b!4829793 m!5822196))

(declare-fun m!5822198 () Bool)

(assert (=> b!4829794 m!5822198))

(assert (=> bs!1165513 d!1548010))

(declare-fun d!1548012 () Bool)

(declare-fun lt!1976098 () Bool)

(declare-fun content!9830 (List!55180) (Set K!16742))

(assert (=> d!1548012 (= lt!1976098 (set.member key!5594 (content!9830 (keys!20272 lt!1975837))))))

(declare-fun e!3017996 () Bool)

(assert (=> d!1548012 (= lt!1976098 e!3017996)))

(declare-fun res!2056926 () Bool)

(assert (=> d!1548012 (=> (not res!2056926) (not e!3017996))))

(assert (=> d!1548012 (= res!2056926 (is-Cons!55056 (keys!20272 lt!1975837)))))

(assert (=> d!1548012 (= (contains!18862 (keys!20272 lt!1975837) key!5594) lt!1976098)))

(declare-fun b!4829799 () Bool)

(declare-fun e!3017997 () Bool)

(assert (=> b!4829799 (= e!3017996 e!3017997)))

(declare-fun res!2056925 () Bool)

(assert (=> b!4829799 (=> res!2056925 e!3017997)))

(assert (=> b!4829799 (= res!2056925 (= (h!61490 (keys!20272 lt!1975837)) key!5594))))

(declare-fun b!4829800 () Bool)

(assert (=> b!4829800 (= e!3017997 (contains!18862 (t!362676 (keys!20272 lt!1975837)) key!5594))))

(assert (= (and d!1548012 res!2056926) b!4829799))

(assert (= (and b!4829799 (not res!2056925)) b!4829800))

(assert (=> d!1548012 m!5821930))

(declare-fun m!5822200 () Bool)

(assert (=> d!1548012 m!5822200))

(declare-fun m!5822202 () Bool)

(assert (=> d!1548012 m!5822202))

(declare-fun m!5822204 () Bool)

(assert (=> b!4829800 m!5822204))

(assert (=> b!4829602 d!1548012))

(declare-fun b!4829808 () Bool)

(assert (=> b!4829808 true))

(declare-fun d!1548014 () Bool)

(declare-fun e!3018000 () Bool)

(assert (=> d!1548014 e!3018000))

(declare-fun res!2056935 () Bool)

(assert (=> d!1548014 (=> (not res!2056935) (not e!3018000))))

(declare-fun lt!1976101 () List!55180)

(declare-fun noDuplicate!971 (List!55180) Bool)

(assert (=> d!1548014 (= res!2056935 (noDuplicate!971 lt!1976101))))

(assert (=> d!1548014 (= lt!1976101 (getKeysList!1169 (toList!7544 lt!1975837)))))

(assert (=> d!1548014 (= (keys!20272 lt!1975837) lt!1976101)))

(declare-fun b!4829807 () Bool)

(declare-fun res!2056933 () Bool)

(assert (=> b!4829807 (=> (not res!2056933) (not e!3018000))))

(declare-fun length!798 (List!55180) Int)

(declare-fun length!799 (List!55176) Int)

(assert (=> b!4829807 (= res!2056933 (= (length!798 lt!1976101) (length!799 (toList!7544 lt!1975837))))))

(declare-fun res!2056934 () Bool)

(assert (=> b!4829808 (=> (not res!2056934) (not e!3018000))))

(declare-fun lambda!237751 () Int)

(declare-fun forall!12667 (List!55180 Int) Bool)

(assert (=> b!4829808 (= res!2056934 (forall!12667 lt!1976101 lambda!237751))))

(declare-fun lambda!237752 () Int)

(declare-fun b!4829809 () Bool)

(declare-fun map!12608 (List!55176 Int) List!55180)

(assert (=> b!4829809 (= e!3018000 (= (content!9830 lt!1976101) (content!9830 (map!12608 (toList!7544 lt!1975837) lambda!237752))))))

(assert (= (and d!1548014 res!2056935) b!4829807))

(assert (= (and b!4829807 res!2056933) b!4829808))

(assert (= (and b!4829808 res!2056934) b!4829809))

(declare-fun m!5822206 () Bool)

(assert (=> d!1548014 m!5822206))

(assert (=> d!1548014 m!5821944))

(declare-fun m!5822208 () Bool)

(assert (=> b!4829807 m!5822208))

(declare-fun m!5822210 () Bool)

(assert (=> b!4829807 m!5822210))

(declare-fun m!5822212 () Bool)

(assert (=> b!4829808 m!5822212))

(declare-fun m!5822214 () Bool)

(assert (=> b!4829809 m!5822214))

(declare-fun m!5822216 () Bool)

(assert (=> b!4829809 m!5822216))

(assert (=> b!4829809 m!5822216))

(declare-fun m!5822218 () Bool)

(assert (=> b!4829809 m!5822218))

(assert (=> b!4829602 d!1548014))

(declare-fun bs!1165539 () Bool)

(declare-fun b!4829812 () Bool)

(assert (= bs!1165539 (and b!4829812 b!4829642)))

(declare-fun lambda!237753 () Int)

(assert (=> bs!1165539 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975837) (= lambda!237753 lambda!237698))))

(declare-fun bs!1165540 () Bool)

(assert (= bs!1165540 (and b!4829812 b!4829646)))

(assert (=> bs!1165540 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975837) (= lambda!237753 lambda!237699))))

(assert (=> bs!1165540 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975946) (= lambda!237753 lambda!237700))))

(declare-fun bs!1165541 () Bool)

(assert (= bs!1165541 (and b!4829812 d!1547930)))

(assert (=> bs!1165541 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975957) (= lambda!237753 lambda!237701))))

(assert (=> b!4829812 true))

(declare-fun bs!1165542 () Bool)

(declare-fun b!4829816 () Bool)

(assert (= bs!1165542 (and b!4829816 b!4829646)))

(declare-fun lambda!237754 () Int)

(assert (=> bs!1165542 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975837) (= lambda!237754 lambda!237699))))

(declare-fun bs!1165543 () Bool)

(assert (= bs!1165543 (and b!4829816 b!4829812)))

(assert (=> bs!1165543 (= lambda!237754 lambda!237753)))

(assert (=> bs!1165542 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975946) (= lambda!237754 lambda!237700))))

(declare-fun bs!1165544 () Bool)

(assert (= bs!1165544 (and b!4829816 d!1547930)))

(assert (=> bs!1165544 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975957) (= lambda!237754 lambda!237701))))

(declare-fun bs!1165545 () Bool)

(assert (= bs!1165545 (and b!4829816 b!4829642)))

(assert (=> bs!1165545 (= (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1975837) (= lambda!237754 lambda!237698))))

(assert (=> b!4829816 true))

(declare-fun lt!1976107 () ListMap!6915)

(declare-fun lambda!237755 () Int)

(assert (=> bs!1165542 (= (= lt!1976107 lt!1975837) (= lambda!237755 lambda!237699))))

(assert (=> bs!1165543 (= (= lt!1976107 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237755 lambda!237753))))

(assert (=> bs!1165542 (= (= lt!1976107 lt!1975946) (= lambda!237755 lambda!237700))))

(assert (=> bs!1165544 (= (= lt!1976107 lt!1975957) (= lambda!237755 lambda!237701))))

(assert (=> b!4829816 (= (= lt!1976107 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237755 lambda!237754))))

(assert (=> bs!1165545 (= (= lt!1976107 lt!1975837) (= lambda!237755 lambda!237698))))

(assert (=> b!4829816 true))

(declare-fun bs!1165546 () Bool)

(declare-fun d!1548016 () Bool)

(assert (= bs!1165546 (and d!1548016 b!4829646)))

(declare-fun lambda!237756 () Int)

(declare-fun lt!1976118 () ListMap!6915)

(assert (=> bs!1165546 (= (= lt!1976118 lt!1975837) (= lambda!237756 lambda!237699))))

(declare-fun bs!1165547 () Bool)

(assert (= bs!1165547 (and d!1548016 b!4829816)))

(assert (=> bs!1165547 (= (= lt!1976118 lt!1976107) (= lambda!237756 lambda!237755))))

(declare-fun bs!1165548 () Bool)

(assert (= bs!1165548 (and d!1548016 b!4829812)))

(assert (=> bs!1165548 (= (= lt!1976118 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237756 lambda!237753))))

(assert (=> bs!1165546 (= (= lt!1976118 lt!1975946) (= lambda!237756 lambda!237700))))

(declare-fun bs!1165549 () Bool)

(assert (= bs!1165549 (and d!1548016 d!1547930)))

(assert (=> bs!1165549 (= (= lt!1976118 lt!1975957) (= lambda!237756 lambda!237701))))

(assert (=> bs!1165547 (= (= lt!1976118 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237756 lambda!237754))))

(declare-fun bs!1165550 () Bool)

(assert (= bs!1165550 (and d!1548016 b!4829642)))

(assert (=> bs!1165550 (= (= lt!1976118 lt!1975837) (= lambda!237756 lambda!237698))))

(assert (=> d!1548016 true))

(declare-fun bm!336596 () Bool)

(declare-fun call!336601 () Bool)

(declare-fun c!822950 () Bool)

(assert (=> bm!336596 (= call!336601 (forall!12665 (ite c!822950 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))) (ite c!822950 lambda!237753 lambda!237755)))))

(declare-fun call!336602 () Bool)

(declare-fun bm!336597 () Bool)

(assert (=> bm!336597 (= call!336602 (forall!12665 (ite c!822950 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))) (ite c!822950 lambda!237753 lambda!237755)))))

(declare-fun e!3018002 () ListMap!6915)

(assert (=> b!4829812 (= e!3018002 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))))))

(declare-fun lt!1976112 () Unit!143577)

(declare-fun call!336603 () Unit!143577)

(assert (=> b!4829812 (= lt!1976112 call!336603)))

(assert (=> b!4829812 call!336602))

(declare-fun lt!1976109 () Unit!143577)

(assert (=> b!4829812 (= lt!1976109 lt!1976112)))

(assert (=> b!4829812 call!336601))

(declare-fun lt!1976122 () Unit!143577)

(declare-fun Unit!143613 () Unit!143577)

(assert (=> b!4829812 (= lt!1976122 Unit!143613)))

(declare-fun b!4829813 () Bool)

(declare-fun e!3018003 () Bool)

(assert (=> b!4829813 (= e!3018003 (invariantList!1823 (toList!7544 lt!1976118)))))

(assert (=> d!1548016 e!3018003))

(declare-fun res!2056936 () Bool)

(assert (=> d!1548016 (=> (not res!2056936) (not e!3018003))))

(assert (=> d!1548016 (= res!2056936 (forall!12665 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))) lambda!237756))))

(assert (=> d!1548016 (= lt!1976118 e!3018002)))

(assert (=> d!1548016 (= c!822950 (is-Nil!55052 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))

(assert (=> d!1548016 (noDuplicateKeys!2467 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))))

(assert (=> d!1548016 (= (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lt!1976118)))

(declare-fun b!4829814 () Bool)

(declare-fun res!2056937 () Bool)

(assert (=> b!4829814 (=> (not res!2056937) (not e!3018003))))

(assert (=> b!4829814 (= res!2056937 (forall!12665 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lambda!237756))))

(declare-fun b!4829815 () Bool)

(declare-fun e!3018001 () Bool)

(assert (=> b!4829815 (= e!3018001 (forall!12665 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lambda!237755))))

(declare-fun bm!336598 () Bool)

(assert (=> bm!336598 (= call!336603 (lemmaContainsAllItsOwnKeys!1001 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))))))

(assert (=> b!4829816 (= e!3018002 lt!1976107)))

(declare-fun lt!1976121 () ListMap!6915)

(assert (=> b!4829816 (= lt!1976121 (+!2546 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))))))

(assert (=> b!4829816 (= lt!1976107 (addToMapMapFromBucket!1824 (t!362672 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))) (+!2546 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))))

(declare-fun lt!1976106 () Unit!143577)

(assert (=> b!4829816 (= lt!1976106 call!336603)))

(assert (=> b!4829816 (forall!12665 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lambda!237754)))

(declare-fun lt!1976114 () Unit!143577)

(assert (=> b!4829816 (= lt!1976114 lt!1976106)))

(assert (=> b!4829816 (forall!12665 (toList!7544 lt!1976121) lambda!237755)))

(declare-fun lt!1976111 () Unit!143577)

(declare-fun Unit!143614 () Unit!143577)

(assert (=> b!4829816 (= lt!1976111 Unit!143614)))

(assert (=> b!4829816 (forall!12665 (t!362672 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))) lambda!237755)))

(declare-fun lt!1976115 () Unit!143577)

(declare-fun Unit!143615 () Unit!143577)

(assert (=> b!4829816 (= lt!1976115 Unit!143615)))

(declare-fun lt!1976120 () Unit!143577)

(declare-fun Unit!143616 () Unit!143577)

(assert (=> b!4829816 (= lt!1976120 Unit!143616)))

(declare-fun lt!1976117 () Unit!143577)

(assert (=> b!4829816 (= lt!1976117 (forallContained!4404 (toList!7544 lt!1976121) lambda!237755 (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))))))

(assert (=> b!4829816 (contains!18858 lt!1976121 (_1!32461 (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976102 () Unit!143577)

(declare-fun Unit!143617 () Unit!143577)

(assert (=> b!4829816 (= lt!1976102 Unit!143617)))

(assert (=> b!4829816 (contains!18858 lt!1976107 (_1!32461 (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976108 () Unit!143577)

(declare-fun Unit!143618 () Unit!143577)

(assert (=> b!4829816 (= lt!1976108 Unit!143618)))

(assert (=> b!4829816 call!336601))

(declare-fun lt!1976116 () Unit!143577)

(declare-fun Unit!143619 () Unit!143577)

(assert (=> b!4829816 (= lt!1976116 Unit!143619)))

(assert (=> b!4829816 (forall!12665 (toList!7544 lt!1976121) lambda!237755)))

(declare-fun lt!1976104 () Unit!143577)

(declare-fun Unit!143620 () Unit!143577)

(assert (=> b!4829816 (= lt!1976104 Unit!143620)))

(declare-fun lt!1976105 () Unit!143577)

(declare-fun Unit!143621 () Unit!143577)

(assert (=> b!4829816 (= lt!1976105 Unit!143621)))

(declare-fun lt!1976103 () Unit!143577)

(assert (=> b!4829816 (= lt!1976103 (addForallContainsKeyThenBeforeAdding!1000 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1976107 (_1!32461 (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325)))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))))

(assert (=> b!4829816 (forall!12665 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lambda!237755)))

(declare-fun lt!1976119 () Unit!143577)

(assert (=> b!4829816 (= lt!1976119 lt!1976103)))

(assert (=> b!4829816 (forall!12665 (toList!7544 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) lambda!237755)))

(declare-fun lt!1976113 () Unit!143577)

(declare-fun Unit!143622 () Unit!143577)

(assert (=> b!4829816 (= lt!1976113 Unit!143622)))

(declare-fun res!2056938 () Bool)

(assert (=> b!4829816 (= res!2056938 call!336602)))

(assert (=> b!4829816 (=> (not res!2056938) (not e!3018001))))

(assert (=> b!4829816 e!3018001))

(declare-fun lt!1976110 () Unit!143577)

(declare-fun Unit!143623 () Unit!143577)

(assert (=> b!4829816 (= lt!1976110 Unit!143623)))

(assert (= (and d!1548016 c!822950) b!4829812))

(assert (= (and d!1548016 (not c!822950)) b!4829816))

(assert (= (and b!4829816 res!2056938) b!4829815))

(assert (= (or b!4829812 b!4829816) bm!336598))

(assert (= (or b!4829812 b!4829816) bm!336596))

(assert (= (or b!4829812 b!4829816) bm!336597))

(assert (= (and d!1548016 res!2056936) b!4829814))

(assert (= (and b!4829814 res!2056937) b!4829813))

(declare-fun m!5822220 () Bool)

(assert (=> bm!336597 m!5822220))

(assert (=> bm!336598 m!5822030))

(declare-fun m!5822222 () Bool)

(assert (=> bm!336598 m!5822222))

(declare-fun m!5822224 () Bool)

(assert (=> b!4829814 m!5822224))

(declare-fun m!5822226 () Bool)

(assert (=> b!4829815 m!5822226))

(assert (=> bm!336596 m!5822220))

(declare-fun m!5822228 () Bool)

(assert (=> b!4829813 m!5822228))

(declare-fun m!5822230 () Bool)

(assert (=> d!1548016 m!5822230))

(declare-fun m!5822232 () Bool)

(assert (=> d!1548016 m!5822232))

(declare-fun m!5822234 () Bool)

(assert (=> b!4829816 m!5822234))

(declare-fun m!5822236 () Bool)

(assert (=> b!4829816 m!5822236))

(assert (=> b!4829816 m!5822226))

(declare-fun m!5822238 () Bool)

(assert (=> b!4829816 m!5822238))

(assert (=> b!4829816 m!5822030))

(declare-fun m!5822240 () Bool)

(assert (=> b!4829816 m!5822240))

(assert (=> b!4829816 m!5822226))

(assert (=> b!4829816 m!5822030))

(declare-fun m!5822242 () Bool)

(assert (=> b!4829816 m!5822242))

(assert (=> b!4829816 m!5822242))

(declare-fun m!5822244 () Bool)

(assert (=> b!4829816 m!5822244))

(assert (=> b!4829816 m!5822238))

(declare-fun m!5822246 () Bool)

(assert (=> b!4829816 m!5822246))

(declare-fun m!5822248 () Bool)

(assert (=> b!4829816 m!5822248))

(declare-fun m!5822250 () Bool)

(assert (=> b!4829816 m!5822250))

(assert (=> b!4829664 d!1548016))

(declare-fun bs!1165551 () Bool)

(declare-fun d!1548018 () Bool)

(assert (= bs!1165551 (and d!1548018 d!1547906)))

(declare-fun lambda!237757 () Int)

(assert (=> bs!1165551 (not (= lambda!237757 lambda!237665))))

(declare-fun bs!1165552 () Bool)

(assert (= bs!1165552 (and d!1548018 d!1547948)))

(assert (=> bs!1165552 (= lambda!237757 lambda!237707)))

(declare-fun bs!1165553 () Bool)

(assert (= bs!1165553 (and d!1548018 start!501534)))

(assert (=> bs!1165553 (= lambda!237757 lambda!237657)))

(declare-fun bs!1165554 () Bool)

(assert (= bs!1165554 (and d!1548018 d!1547946)))

(assert (=> bs!1165554 (= lambda!237757 lambda!237704)))

(declare-fun bs!1165555 () Bool)

(assert (= bs!1165555 (and d!1548018 d!1547912)))

(assert (=> bs!1165555 (not (= lambda!237757 lambda!237666))))

(declare-fun lt!1976123 () ListMap!6915)

(assert (=> d!1548018 (invariantList!1823 (toList!7544 lt!1976123))))

(declare-fun e!3018004 () ListMap!6915)

(assert (=> d!1548018 (= lt!1976123 e!3018004)))

(declare-fun c!822951 () Bool)

(assert (=> d!1548018 (= c!822951 (is-Cons!55053 (t!362673 (t!362673 (toList!7543 lm!2325)))))))

(assert (=> d!1548018 (forall!12663 (t!362673 (t!362673 (toList!7543 lm!2325))) lambda!237757)))

(assert (=> d!1548018 (= (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325)))) lt!1976123)))

(declare-fun b!4829817 () Bool)

(assert (=> b!4829817 (= e!3018004 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (t!362673 (t!362673 (toList!7543 lm!2325))))) (extractMap!2709 (t!362673 (t!362673 (t!362673 (toList!7543 lm!2325)))))))))

(declare-fun b!4829818 () Bool)

(assert (=> b!4829818 (= e!3018004 (ListMap!6916 Nil!55052))))

(assert (= (and d!1548018 c!822951) b!4829817))

(assert (= (and d!1548018 (not c!822951)) b!4829818))

(declare-fun m!5822252 () Bool)

(assert (=> d!1548018 m!5822252))

(declare-fun m!5822254 () Bool)

(assert (=> d!1548018 m!5822254))

(declare-fun m!5822256 () Bool)

(assert (=> b!4829817 m!5822256))

(assert (=> b!4829817 m!5822256))

(declare-fun m!5822258 () Bool)

(assert (=> b!4829817 m!5822258))

(assert (=> b!4829664 d!1548018))

(declare-fun bs!1165556 () Bool)

(declare-fun b!4829842 () Bool)

(assert (= bs!1165556 (and b!4829842 b!4829808)))

(declare-fun lambda!237766 () Int)

(assert (=> bs!1165556 (= (= (t!362672 (toList!7544 lt!1975837)) (toList!7544 lt!1975837)) (= lambda!237766 lambda!237751))))

(assert (=> b!4829842 true))

(declare-fun bs!1165557 () Bool)

(declare-fun b!4829839 () Bool)

(assert (= bs!1165557 (and b!4829839 b!4829808)))

(declare-fun lambda!237767 () Int)

(assert (=> bs!1165557 (= (= (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837))) (toList!7544 lt!1975837)) (= lambda!237767 lambda!237751))))

(declare-fun bs!1165558 () Bool)

(assert (= bs!1165558 (and b!4829839 b!4829842)))

(assert (=> bs!1165558 (= (= (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837))) (t!362672 (toList!7544 lt!1975837))) (= lambda!237767 lambda!237766))))

(assert (=> b!4829839 true))

(declare-fun bs!1165559 () Bool)

(declare-fun b!4829841 () Bool)

(assert (= bs!1165559 (and b!4829841 b!4829808)))

(declare-fun lambda!237768 () Int)

(assert (=> bs!1165559 (= lambda!237768 lambda!237751)))

(declare-fun bs!1165560 () Bool)

(assert (= bs!1165560 (and b!4829841 b!4829842)))

(assert (=> bs!1165560 (= (= (toList!7544 lt!1975837) (t!362672 (toList!7544 lt!1975837))) (= lambda!237768 lambda!237766))))

(declare-fun bs!1165561 () Bool)

(assert (= bs!1165561 (and b!4829841 b!4829839)))

(assert (=> bs!1165561 (= (= (toList!7544 lt!1975837) (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837)))) (= lambda!237768 lambda!237767))))

(assert (=> b!4829841 true))

(declare-fun bs!1165562 () Bool)

(declare-fun b!4829837 () Bool)

(assert (= bs!1165562 (and b!4829837 b!4829809)))

(declare-fun lambda!237769 () Int)

(assert (=> bs!1165562 (= lambda!237769 lambda!237752)))

(declare-fun lt!1976140 () List!55180)

(declare-fun e!3018015 () Bool)

(assert (=> b!4829837 (= e!3018015 (= (content!9830 lt!1976140) (content!9830 (map!12608 (toList!7544 lt!1975837) lambda!237769))))))

(declare-fun b!4829838 () Bool)

(declare-fun e!3018013 () Unit!143577)

(declare-fun Unit!143624 () Unit!143577)

(assert (=> b!4829838 (= e!3018013 Unit!143624)))

(declare-fun e!3018014 () List!55180)

(assert (=> b!4829839 (= e!3018014 (Cons!55056 (_1!32461 (h!61486 (toList!7544 lt!1975837))) (getKeysList!1169 (t!362672 (toList!7544 lt!1975837)))))))

(declare-fun c!822960 () Bool)

(assert (=> b!4829839 (= c!822960 (containsKey!4423 (t!362672 (toList!7544 lt!1975837)) (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun lt!1976144 () Unit!143577)

(declare-fun e!3018016 () Unit!143577)

(assert (=> b!4829839 (= lt!1976144 e!3018016)))

(declare-fun c!822958 () Bool)

(assert (=> b!4829839 (= c!822958 (contains!18862 (getKeysList!1169 (t!362672 (toList!7544 lt!1975837))) (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun lt!1976138 () Unit!143577)

(assert (=> b!4829839 (= lt!1976138 e!3018013)))

(declare-fun lt!1976142 () List!55180)

(assert (=> b!4829839 (= lt!1976142 (getKeysList!1169 (t!362672 (toList!7544 lt!1975837))))))

(declare-fun lt!1976143 () Unit!143577)

(declare-fun lemmaForallContainsAddHeadPreserves!385 (List!55176 List!55180 tuple2!58334) Unit!143577)

(assert (=> b!4829839 (= lt!1976143 (lemmaForallContainsAddHeadPreserves!385 (t!362672 (toList!7544 lt!1975837)) lt!1976142 (h!61486 (toList!7544 lt!1975837))))))

(assert (=> b!4829839 (forall!12667 lt!1976142 lambda!237767)))

(declare-fun lt!1976139 () Unit!143577)

(assert (=> b!4829839 (= lt!1976139 lt!1976143)))

(declare-fun b!4829840 () Bool)

(assert (=> b!4829840 (= e!3018014 Nil!55056)))

(declare-fun res!2056946 () Bool)

(assert (=> b!4829841 (=> (not res!2056946) (not e!3018015))))

(assert (=> b!4829841 (= res!2056946 (forall!12667 lt!1976140 lambda!237768))))

(assert (=> b!4829842 false))

(declare-fun lt!1976141 () Unit!143577)

(declare-fun forallContained!4406 (List!55180 Int K!16742) Unit!143577)

(assert (=> b!4829842 (= lt!1976141 (forallContained!4406 (getKeysList!1169 (t!362672 (toList!7544 lt!1975837))) lambda!237766 (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun Unit!143625 () Unit!143577)

(assert (=> b!4829842 (= e!3018013 Unit!143625)))

(declare-fun d!1548020 () Bool)

(assert (=> d!1548020 e!3018015))

(declare-fun res!2056945 () Bool)

(assert (=> d!1548020 (=> (not res!2056945) (not e!3018015))))

(assert (=> d!1548020 (= res!2056945 (noDuplicate!971 lt!1976140))))

(assert (=> d!1548020 (= lt!1976140 e!3018014)))

(declare-fun c!822959 () Bool)

(assert (=> d!1548020 (= c!822959 (is-Cons!55052 (toList!7544 lt!1975837)))))

(assert (=> d!1548020 (invariantList!1823 (toList!7544 lt!1975837))))

(assert (=> d!1548020 (= (getKeysList!1169 (toList!7544 lt!1975837)) lt!1976140)))

(declare-fun b!4829843 () Bool)

(declare-fun Unit!143626 () Unit!143577)

(assert (=> b!4829843 (= e!3018016 Unit!143626)))

(declare-fun b!4829844 () Bool)

(assert (=> b!4829844 false))

(declare-fun Unit!143627 () Unit!143577)

(assert (=> b!4829844 (= e!3018016 Unit!143627)))

(declare-fun b!4829845 () Bool)

(declare-fun res!2056947 () Bool)

(assert (=> b!4829845 (=> (not res!2056947) (not e!3018015))))

(assert (=> b!4829845 (= res!2056947 (= (length!798 lt!1976140) (length!799 (toList!7544 lt!1975837))))))

(assert (= (and d!1548020 c!822959) b!4829839))

(assert (= (and d!1548020 (not c!822959)) b!4829840))

(assert (= (and b!4829839 c!822960) b!4829844))

(assert (= (and b!4829839 (not c!822960)) b!4829843))

(assert (= (and b!4829839 c!822958) b!4829842))

(assert (= (and b!4829839 (not c!822958)) b!4829838))

(assert (= (and d!1548020 res!2056945) b!4829845))

(assert (= (and b!4829845 res!2056947) b!4829841))

(assert (= (and b!4829841 res!2056946) b!4829837))

(declare-fun m!5822260 () Bool)

(assert (=> d!1548020 m!5822260))

(assert (=> d!1548020 m!5822194))

(declare-fun m!5822262 () Bool)

(assert (=> b!4829845 m!5822262))

(assert (=> b!4829845 m!5822210))

(declare-fun m!5822264 () Bool)

(assert (=> b!4829839 m!5822264))

(declare-fun m!5822266 () Bool)

(assert (=> b!4829839 m!5822266))

(assert (=> b!4829839 m!5822266))

(declare-fun m!5822268 () Bool)

(assert (=> b!4829839 m!5822268))

(declare-fun m!5822270 () Bool)

(assert (=> b!4829839 m!5822270))

(declare-fun m!5822272 () Bool)

(assert (=> b!4829839 m!5822272))

(declare-fun m!5822274 () Bool)

(assert (=> b!4829841 m!5822274))

(declare-fun m!5822276 () Bool)

(assert (=> b!4829837 m!5822276))

(declare-fun m!5822278 () Bool)

(assert (=> b!4829837 m!5822278))

(assert (=> b!4829837 m!5822278))

(declare-fun m!5822280 () Bool)

(assert (=> b!4829837 m!5822280))

(assert (=> b!4829842 m!5822266))

(assert (=> b!4829842 m!5822266))

(declare-fun m!5822282 () Bool)

(assert (=> b!4829842 m!5822282))

(assert (=> b!4829603 d!1548020))

(declare-fun d!1548022 () Bool)

(declare-fun res!2056952 () Bool)

(declare-fun e!3018021 () Bool)

(assert (=> d!1548022 (=> res!2056952 e!3018021)))

(assert (=> d!1548022 (= res!2056952 (or (is-Nil!55053 (toList!7543 lm!2325)) (is-Nil!55053 (t!362673 (toList!7543 lm!2325)))))))

(assert (=> d!1548022 (= (isStrictlySorted!998 (toList!7543 lm!2325)) e!3018021)))

(declare-fun b!4829852 () Bool)

(declare-fun e!3018022 () Bool)

(assert (=> b!4829852 (= e!3018021 e!3018022)))

(declare-fun res!2056953 () Bool)

(assert (=> b!4829852 (=> (not res!2056953) (not e!3018022))))

(assert (=> b!4829852 (= res!2056953 (bvslt (_1!32462 (h!61487 (toList!7543 lm!2325))) (_1!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))

(declare-fun b!4829853 () Bool)

(assert (=> b!4829853 (= e!3018022 (isStrictlySorted!998 (t!362673 (toList!7543 lm!2325))))))

(assert (= (and d!1548022 (not res!2056952)) b!4829852))

(assert (= (and b!4829852 res!2056953) b!4829853))

(declare-fun m!5822284 () Bool)

(assert (=> b!4829853 m!5822284))

(assert (=> d!1547926 d!1548022))

(declare-fun d!1548024 () Bool)

(declare-fun lt!1976145 () Bool)

(assert (=> d!1548024 (= lt!1976145 (set.member key!5594 (content!9830 e!3017855)))))

(declare-fun e!3018023 () Bool)

(assert (=> d!1548024 (= lt!1976145 e!3018023)))

(declare-fun res!2056955 () Bool)

(assert (=> d!1548024 (=> (not res!2056955) (not e!3018023))))

(assert (=> d!1548024 (= res!2056955 (is-Cons!55056 e!3017855))))

(assert (=> d!1548024 (= (contains!18862 e!3017855 key!5594) lt!1976145)))

(declare-fun b!4829854 () Bool)

(declare-fun e!3018024 () Bool)

(assert (=> b!4829854 (= e!3018023 e!3018024)))

(declare-fun res!2056954 () Bool)

(assert (=> b!4829854 (=> res!2056954 e!3018024)))

(assert (=> b!4829854 (= res!2056954 (= (h!61490 e!3017855) key!5594))))

(declare-fun b!4829855 () Bool)

(assert (=> b!4829855 (= e!3018024 (contains!18862 (t!362676 e!3017855) key!5594))))

(assert (= (and d!1548024 res!2056955) b!4829854))

(assert (= (and b!4829854 (not res!2056954)) b!4829855))

(declare-fun m!5822286 () Bool)

(assert (=> d!1548024 m!5822286))

(declare-fun m!5822288 () Bool)

(assert (=> d!1548024 m!5822288))

(declare-fun m!5822290 () Bool)

(assert (=> b!4829855 m!5822290))

(assert (=> bm!336572 d!1548024))

(declare-fun d!1548026 () Bool)

(declare-fun res!2056956 () Bool)

(declare-fun e!3018025 () Bool)

(assert (=> d!1548026 (=> res!2056956 e!3018025)))

(assert (=> d!1548026 (= res!2056956 (and (is-Cons!55052 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))))) (= (_1!32461 (h!61486 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325))))))) key!5594)))))

(assert (=> d!1548026 (= (containsKey!4420 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325))))) key!5594) e!3018025)))

(declare-fun b!4829856 () Bool)

(declare-fun e!3018026 () Bool)

(assert (=> b!4829856 (= e!3018025 e!3018026)))

(declare-fun res!2056957 () Bool)

(assert (=> b!4829856 (=> (not res!2056957) (not e!3018026))))

(assert (=> b!4829856 (= res!2056957 (is-Cons!55052 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829857 () Bool)

(assert (=> b!4829857 (= e!3018026 (containsKey!4420 (t!362672 (t!362672 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))))) key!5594))))

(assert (= (and d!1548026 (not res!2056956)) b!4829856))

(assert (= (and b!4829856 res!2056957) b!4829857))

(declare-fun m!5822292 () Bool)

(assert (=> b!4829857 m!5822292))

(assert (=> b!4829654 d!1548026))

(assert (=> d!1547944 d!1548000))

(assert (=> d!1547944 d!1547928))

(assert (=> d!1547944 d!1547930))

(assert (=> d!1547944 d!1547942))

(declare-fun d!1548028 () Bool)

(declare-fun e!3018029 () Bool)

(assert (=> d!1548028 (= (contains!18858 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837) key!5594) e!3018029)))

(declare-fun res!2056960 () Bool)

(assert (=> d!1548028 (=> res!2056960 e!3018029)))

(assert (=> d!1548028 (= res!2056960 (containsKey!4420 (_2!32462 (h!61487 (toList!7543 lm!2325))) key!5594))))

(assert (=> d!1548028 true))

(declare-fun _$29!838 () Unit!143577)

(assert (=> d!1548028 (= (choose!35213 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837 key!5594) _$29!838)))

(declare-fun b!4829860 () Bool)

(assert (=> b!4829860 (= e!3018029 (contains!18858 lt!1975837 key!5594))))

(assert (= (and d!1548028 (not res!2056960)) b!4829860))

(assert (=> d!1548028 m!5821868))

(assert (=> d!1548028 m!5821868))

(assert (=> d!1548028 m!5821870))

(assert (=> d!1548028 m!5821864))

(assert (=> b!4829860 m!5821854))

(assert (=> d!1547944 d!1548028))

(declare-fun d!1548030 () Bool)

(declare-fun noDuplicatedKeys!489 (List!55176) Bool)

(assert (=> d!1548030 (= (invariantList!1823 (toList!7544 lt!1975967)) (noDuplicatedKeys!489 (toList!7544 lt!1975967)))))

(declare-fun bs!1165563 () Bool)

(assert (= bs!1165563 d!1548030))

(declare-fun m!5822294 () Bool)

(assert (=> bs!1165563 m!5822294))

(assert (=> d!1547946 d!1548030))

(declare-fun d!1548032 () Bool)

(declare-fun res!2056961 () Bool)

(declare-fun e!3018030 () Bool)

(assert (=> d!1548032 (=> res!2056961 e!3018030)))

(assert (=> d!1548032 (= res!2056961 (is-Nil!55053 (t!362673 (toList!7543 lm!2325))))))

(assert (=> d!1548032 (= (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237704) e!3018030)))

(declare-fun b!4829861 () Bool)

(declare-fun e!3018031 () Bool)

(assert (=> b!4829861 (= e!3018030 e!3018031)))

(declare-fun res!2056962 () Bool)

(assert (=> b!4829861 (=> (not res!2056962) (not e!3018031))))

(assert (=> b!4829861 (= res!2056962 (dynLambda!22238 lambda!237704 (h!61487 (t!362673 (toList!7543 lm!2325)))))))

(declare-fun b!4829862 () Bool)

(assert (=> b!4829862 (= e!3018031 (forall!12663 (t!362673 (t!362673 (toList!7543 lm!2325))) lambda!237704))))

(assert (= (and d!1548032 (not res!2056961)) b!4829861))

(assert (= (and b!4829861 res!2056962) b!4829862))

(declare-fun b_lambda!190413 () Bool)

(assert (=> (not b_lambda!190413) (not b!4829861)))

(declare-fun m!5822296 () Bool)

(assert (=> b!4829861 m!5822296))

(declare-fun m!5822298 () Bool)

(assert (=> b!4829862 m!5822298))

(assert (=> d!1547946 d!1548032))

(declare-fun d!1548034 () Bool)

(declare-fun choose!35221 (Hashable!7301 K!16742) (_ BitVec 64))

(assert (=> d!1548034 (= (hash!5463 hashF!1543 key!5594) (choose!35221 hashF!1543 key!5594))))

(declare-fun bs!1165564 () Bool)

(assert (= bs!1165564 d!1548034))

(declare-fun m!5822300 () Bool)

(assert (=> bs!1165564 m!5822300))

(assert (=> d!1547910 d!1548034))

(declare-fun d!1548036 () Bool)

(assert (=> d!1548036 (= (get!18849 (getValueByKey!2644 (toList!7543 lm!2325) (_1!32462 (h!61487 (toList!7543 lm!2325))))) (v!49207 (getValueByKey!2644 (toList!7543 lm!2325) (_1!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> d!1547950 d!1548036))

(declare-fun d!1548038 () Bool)

(declare-fun c!822961 () Bool)

(assert (=> d!1548038 (= c!822961 (and (is-Cons!55053 (toList!7543 lm!2325)) (= (_1!32462 (h!61487 (toList!7543 lm!2325))) (_1!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun e!3018032 () Option!13517)

(assert (=> d!1548038 (= (getValueByKey!2644 (toList!7543 lm!2325) (_1!32462 (h!61487 (toList!7543 lm!2325)))) e!3018032)))

(declare-fun b!4829863 () Bool)

(assert (=> b!4829863 (= e!3018032 (Some!13516 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(declare-fun b!4829864 () Bool)

(declare-fun e!3018033 () Option!13517)

(assert (=> b!4829864 (= e!3018032 e!3018033)))

(declare-fun c!822962 () Bool)

(assert (=> b!4829864 (= c!822962 (and (is-Cons!55053 (toList!7543 lm!2325)) (not (= (_1!32462 (h!61487 (toList!7543 lm!2325))) (_1!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829866 () Bool)

(assert (=> b!4829866 (= e!3018033 None!13516)))

(declare-fun b!4829865 () Bool)

(assert (=> b!4829865 (= e!3018033 (getValueByKey!2644 (t!362673 (toList!7543 lm!2325)) (_1!32462 (h!61487 (toList!7543 lm!2325)))))))

(assert (= (and d!1548038 c!822961) b!4829863))

(assert (= (and d!1548038 (not c!822961)) b!4829864))

(assert (= (and b!4829864 c!822962) b!4829865))

(assert (= (and b!4829864 (not c!822962)) b!4829866))

(declare-fun m!5822302 () Bool)

(assert (=> b!4829865 m!5822302))

(assert (=> d!1547950 d!1548038))

(declare-fun d!1548040 () Bool)

(assert (=> d!1548040 (= (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975837) key!5594)) (not (isEmpty!29679 (getValueByKey!2645 (toList!7544 lt!1975837) key!5594))))))

(declare-fun bs!1165565 () Bool)

(assert (= bs!1165565 d!1548040))

(assert (=> bs!1165565 m!5821936))

(declare-fun m!5822304 () Bool)

(assert (=> bs!1165565 m!5822304))

(assert (=> b!4829599 d!1548040))

(declare-fun b!4829868 () Bool)

(declare-fun e!3018034 () Option!13518)

(declare-fun e!3018035 () Option!13518)

(assert (=> b!4829868 (= e!3018034 e!3018035)))

(declare-fun c!822964 () Bool)

(assert (=> b!4829868 (= c!822964 (and (is-Cons!55052 (toList!7544 lt!1975837)) (not (= (_1!32461 (h!61486 (toList!7544 lt!1975837))) key!5594))))))

(declare-fun b!4829869 () Bool)

(assert (=> b!4829869 (= e!3018035 (getValueByKey!2645 (t!362672 (toList!7544 lt!1975837)) key!5594))))

(declare-fun b!4829870 () Bool)

(assert (=> b!4829870 (= e!3018035 None!13517)))

(declare-fun b!4829867 () Bool)

(assert (=> b!4829867 (= e!3018034 (Some!13517 (_2!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun d!1548042 () Bool)

(declare-fun c!822963 () Bool)

(assert (=> d!1548042 (= c!822963 (and (is-Cons!55052 (toList!7544 lt!1975837)) (= (_1!32461 (h!61486 (toList!7544 lt!1975837))) key!5594)))))

(assert (=> d!1548042 (= (getValueByKey!2645 (toList!7544 lt!1975837) key!5594) e!3018034)))

(assert (= (and d!1548042 c!822963) b!4829867))

(assert (= (and d!1548042 (not c!822963)) b!4829868))

(assert (= (and b!4829868 c!822964) b!4829869))

(assert (= (and b!4829868 (not c!822964)) b!4829870))

(declare-fun m!5822306 () Bool)

(assert (=> b!4829869 m!5822306))

(assert (=> b!4829599 d!1548042))

(declare-fun d!1548044 () Bool)

(declare-fun res!2056967 () Bool)

(declare-fun e!3018040 () Bool)

(assert (=> d!1548044 (=> res!2056967 e!3018040)))

(assert (=> d!1548044 (= res!2056967 (is-Nil!55052 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(assert (=> d!1548044 (= (forall!12665 (_2!32462 (h!61487 (toList!7543 lm!2325))) lambda!237701) e!3018040)))

(declare-fun b!4829875 () Bool)

(declare-fun e!3018041 () Bool)

(assert (=> b!4829875 (= e!3018040 e!3018041)))

(declare-fun res!2056968 () Bool)

(assert (=> b!4829875 (=> (not res!2056968) (not e!3018041))))

(declare-fun dynLambda!22240 (Int tuple2!58334) Bool)

(assert (=> b!4829875 (= res!2056968 (dynLambda!22240 lambda!237701 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun b!4829876 () Bool)

(assert (=> b!4829876 (= e!3018041 (forall!12665 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) lambda!237701))))

(assert (= (and d!1548044 (not res!2056967)) b!4829875))

(assert (= (and b!4829875 res!2056968) b!4829876))

(declare-fun b_lambda!190415 () Bool)

(assert (=> (not b_lambda!190415) (not b!4829875)))

(declare-fun m!5822308 () Bool)

(assert (=> b!4829875 m!5822308))

(declare-fun m!5822310 () Bool)

(assert (=> b!4829876 m!5822310))

(assert (=> d!1547930 d!1548044))

(assert (=> d!1547930 d!1548000))

(assert (=> b!4829600 d!1548012))

(assert (=> b!4829600 d!1548014))

(assert (=> b!4829598 d!1548014))

(declare-fun d!1548046 () Bool)

(declare-fun res!2056969 () Bool)

(declare-fun e!3018042 () Bool)

(assert (=> d!1548046 (=> res!2056969 e!3018042)))

(assert (=> d!1548046 (= res!2056969 (and (is-Cons!55052 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (= (_1!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) key!5594)))))

(assert (=> d!1548046 (= (containsKey!4420 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) key!5594) e!3018042)))

(declare-fun b!4829877 () Bool)

(declare-fun e!3018043 () Bool)

(assert (=> b!4829877 (= e!3018042 e!3018043)))

(declare-fun res!2056970 () Bool)

(assert (=> b!4829877 (=> (not res!2056970) (not e!3018043))))

(assert (=> b!4829877 (= res!2056970 (is-Cons!55052 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun b!4829878 () Bool)

(assert (=> b!4829878 (= e!3018043 (containsKey!4420 (t!362672 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) key!5594))))

(assert (= (and d!1548046 (not res!2056969)) b!4829877))

(assert (= (and b!4829877 res!2056970) b!4829878))

(declare-fun m!5822312 () Bool)

(assert (=> b!4829878 m!5822312))

(assert (=> b!4829656 d!1548046))

(assert (=> b!4829620 d!1547982))

(declare-fun d!1548048 () Bool)

(assert (=> d!1548048 (containsKey!4423 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594)))

(declare-fun lt!1976146 () Unit!143577)

(assert (=> d!1548048 (= lt!1976146 (choose!35220 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594))))

(assert (=> d!1548048 (invariantList!1823 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))

(assert (=> d!1548048 (= (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) lt!1976146)))

(declare-fun bs!1165566 () Bool)

(assert (= bs!1165566 d!1548048))

(assert (=> bs!1165566 m!5821974))

(declare-fun m!5822314 () Bool)

(assert (=> bs!1165566 m!5822314))

(assert (=> bs!1165566 m!5822172))

(assert (=> b!4829620 d!1548048))

(assert (=> b!4829659 d!1547914))

(assert (=> d!1547948 d!1547938))

(assert (=> d!1547948 d!1547950))

(declare-fun d!1548050 () Bool)

(assert (=> d!1548050 (not (containsKey!4420 (apply!13366 lm!2325 (_1!32462 (h!61487 (toList!7543 lm!2325)))) key!5594))))

(assert (=> d!1548050 true))

(declare-fun _$39!457 () Unit!143577)

(assert (=> d!1548050 (= (choose!35214 lm!2325 key!5594 (_1!32462 (h!61487 (toList!7543 lm!2325))) hashF!1543) _$39!457)))

(declare-fun bs!1165567 () Bool)

(assert (= bs!1165567 d!1548050))

(assert (=> bs!1165567 m!5821860))

(assert (=> bs!1165567 m!5821860))

(assert (=> bs!1165567 m!5821862))

(assert (=> d!1547948 d!1548050))

(declare-fun d!1548052 () Bool)

(declare-fun res!2056971 () Bool)

(declare-fun e!3018044 () Bool)

(assert (=> d!1548052 (=> res!2056971 e!3018044)))

(assert (=> d!1548052 (= res!2056971 (is-Nil!55053 (toList!7543 lm!2325)))))

(assert (=> d!1548052 (= (forall!12663 (toList!7543 lm!2325) lambda!237707) e!3018044)))

(declare-fun b!4829879 () Bool)

(declare-fun e!3018045 () Bool)

(assert (=> b!4829879 (= e!3018044 e!3018045)))

(declare-fun res!2056972 () Bool)

(assert (=> b!4829879 (=> (not res!2056972) (not e!3018045))))

(assert (=> b!4829879 (= res!2056972 (dynLambda!22238 lambda!237707 (h!61487 (toList!7543 lm!2325))))))

(declare-fun b!4829880 () Bool)

(assert (=> b!4829880 (= e!3018045 (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237707))))

(assert (= (and d!1548052 (not res!2056971)) b!4829879))

(assert (= (and b!4829879 res!2056972) b!4829880))

(declare-fun b_lambda!190417 () Bool)

(assert (=> (not b_lambda!190417) (not b!4829879)))

(declare-fun m!5822316 () Bool)

(assert (=> b!4829879 m!5822316))

(declare-fun m!5822318 () Bool)

(assert (=> b!4829880 m!5822318))

(assert (=> d!1547948 d!1548052))

(declare-fun bs!1165568 () Bool)

(declare-fun b!4829886 () Bool)

(assert (= bs!1165568 (and b!4829886 b!4829808)))

(declare-fun lambda!237770 () Int)

(assert (=> bs!1165568 (= (= (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (toList!7544 lt!1975837)) (= lambda!237770 lambda!237751))))

(declare-fun bs!1165569 () Bool)

(assert (= bs!1165569 (and b!4829886 b!4829842)))

(assert (=> bs!1165569 (= (= (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 lt!1975837))) (= lambda!237770 lambda!237766))))

(declare-fun bs!1165570 () Bool)

(assert (= bs!1165570 (and b!4829886 b!4829839)))

(assert (=> bs!1165570 (= (= (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837)))) (= lambda!237770 lambda!237767))))

(declare-fun bs!1165571 () Bool)

(assert (= bs!1165571 (and b!4829886 b!4829841)))

(assert (=> bs!1165571 (= (= (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (toList!7544 lt!1975837)) (= lambda!237770 lambda!237768))))

(assert (=> b!4829886 true))

(declare-fun bs!1165572 () Bool)

(declare-fun b!4829883 () Bool)

(assert (= bs!1165572 (and b!4829883 b!4829808)))

(declare-fun lambda!237771 () Int)

(assert (=> bs!1165572 (= (= (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (toList!7544 lt!1975837)) (= lambda!237771 lambda!237751))))

(declare-fun bs!1165573 () Bool)

(assert (= bs!1165573 (and b!4829883 b!4829841)))

(assert (=> bs!1165573 (= (= (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (toList!7544 lt!1975837)) (= lambda!237771 lambda!237768))))

(declare-fun bs!1165574 () Bool)

(assert (= bs!1165574 (and b!4829883 b!4829839)))

(assert (=> bs!1165574 (= (= (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837)))) (= lambda!237771 lambda!237767))))

(declare-fun bs!1165575 () Bool)

(assert (= bs!1165575 (and b!4829883 b!4829842)))

(assert (=> bs!1165575 (= (= (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (t!362672 (toList!7544 lt!1975837))) (= lambda!237771 lambda!237766))))

(declare-fun bs!1165576 () Bool)

(assert (= bs!1165576 (and b!4829883 b!4829886)))

(assert (=> bs!1165576 (= (= (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (= lambda!237771 lambda!237770))))

(assert (=> b!4829883 true))

(declare-fun bs!1165577 () Bool)

(declare-fun b!4829885 () Bool)

(assert (= bs!1165577 (and b!4829885 b!4829808)))

(declare-fun lambda!237772 () Int)

(assert (=> bs!1165577 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (toList!7544 lt!1975837)) (= lambda!237772 lambda!237751))))

(declare-fun bs!1165578 () Bool)

(assert (= bs!1165578 (and b!4829885 b!4829841)))

(assert (=> bs!1165578 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (toList!7544 lt!1975837)) (= lambda!237772 lambda!237768))))

(declare-fun bs!1165579 () Bool)

(assert (= bs!1165579 (and b!4829885 b!4829839)))

(assert (=> bs!1165579 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837)))) (= lambda!237772 lambda!237767))))

(declare-fun bs!1165580 () Bool)

(assert (= bs!1165580 (and b!4829885 b!4829886)))

(assert (=> bs!1165580 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (= lambda!237772 lambda!237770))))

(declare-fun bs!1165581 () Bool)

(assert (= bs!1165581 (and b!4829885 b!4829883)))

(assert (=> bs!1165581 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))) (= lambda!237772 lambda!237771))))

(declare-fun bs!1165582 () Bool)

(assert (= bs!1165582 (and b!4829885 b!4829842)))

(assert (=> bs!1165582 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (t!362672 (toList!7544 lt!1975837))) (= lambda!237772 lambda!237766))))

(assert (=> b!4829885 true))

(declare-fun bs!1165583 () Bool)

(declare-fun b!4829881 () Bool)

(assert (= bs!1165583 (and b!4829881 b!4829809)))

(declare-fun lambda!237773 () Int)

(assert (=> bs!1165583 (= lambda!237773 lambda!237752)))

(declare-fun bs!1165584 () Bool)

(assert (= bs!1165584 (and b!4829881 b!4829837)))

(assert (=> bs!1165584 (= lambda!237773 lambda!237769)))

(declare-fun e!3018048 () Bool)

(declare-fun lt!1976149 () List!55180)

(assert (=> b!4829881 (= e!3018048 (= (content!9830 lt!1976149) (content!9830 (map!12608 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) lambda!237773))))))

(declare-fun b!4829882 () Bool)

(declare-fun e!3018046 () Unit!143577)

(declare-fun Unit!143628 () Unit!143577)

(assert (=> b!4829882 (= e!3018046 Unit!143628)))

(declare-fun e!3018047 () List!55180)

(assert (=> b!4829883 (= e!3018047 (Cons!55056 (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (getKeysList!1169 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))))

(declare-fun c!822967 () Bool)

(assert (=> b!4829883 (= c!822967 (containsKey!4423 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))))

(declare-fun lt!1976153 () Unit!143577)

(declare-fun e!3018049 () Unit!143577)

(assert (=> b!4829883 (= lt!1976153 e!3018049)))

(declare-fun c!822965 () Bool)

(assert (=> b!4829883 (= c!822965 (contains!18862 (getKeysList!1169 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))))

(declare-fun lt!1976147 () Unit!143577)

(assert (=> b!4829883 (= lt!1976147 e!3018046)))

(declare-fun lt!1976151 () List!55180)

(assert (=> b!4829883 (= lt!1976151 (getKeysList!1169 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))))

(declare-fun lt!1976152 () Unit!143577)

(assert (=> b!4829883 (= lt!1976152 (lemmaForallContainsAddHeadPreserves!385 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) lt!1976151 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))))

(assert (=> b!4829883 (forall!12667 lt!1976151 lambda!237771)))

(declare-fun lt!1976148 () Unit!143577)

(assert (=> b!4829883 (= lt!1976148 lt!1976152)))

(declare-fun b!4829884 () Bool)

(assert (=> b!4829884 (= e!3018047 Nil!55056)))

(declare-fun res!2056974 () Bool)

(assert (=> b!4829885 (=> (not res!2056974) (not e!3018048))))

(assert (=> b!4829885 (= res!2056974 (forall!12667 lt!1976149 lambda!237772))))

(assert (=> b!4829886 false))

(declare-fun lt!1976150 () Unit!143577)

(assert (=> b!4829886 (= lt!1976150 (forallContained!4406 (getKeysList!1169 (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) lambda!237770 (_1!32461 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))))

(declare-fun Unit!143629 () Unit!143577)

(assert (=> b!4829886 (= e!3018046 Unit!143629)))

(declare-fun d!1548054 () Bool)

(assert (=> d!1548054 e!3018048))

(declare-fun res!2056973 () Bool)

(assert (=> d!1548054 (=> (not res!2056973) (not e!3018048))))

(assert (=> d!1548054 (= res!2056973 (noDuplicate!971 lt!1976149))))

(assert (=> d!1548054 (= lt!1976149 e!3018047)))

(declare-fun c!822966 () Bool)

(assert (=> d!1548054 (= c!822966 (is-Cons!55052 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))

(assert (=> d!1548054 (invariantList!1823 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))

(assert (=> d!1548054 (= (getKeysList!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) lt!1976149)))

(declare-fun b!4829887 () Bool)

(declare-fun Unit!143630 () Unit!143577)

(assert (=> b!4829887 (= e!3018049 Unit!143630)))

(declare-fun b!4829888 () Bool)

(assert (=> b!4829888 false))

(declare-fun Unit!143631 () Unit!143577)

(assert (=> b!4829888 (= e!3018049 Unit!143631)))

(declare-fun b!4829889 () Bool)

(declare-fun res!2056975 () Bool)

(assert (=> b!4829889 (=> (not res!2056975) (not e!3018048))))

(assert (=> b!4829889 (= res!2056975 (= (length!798 lt!1976149) (length!799 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))))

(assert (= (and d!1548054 c!822966) b!4829883))

(assert (= (and d!1548054 (not c!822966)) b!4829884))

(assert (= (and b!4829883 c!822967) b!4829888))

(assert (= (and b!4829883 (not c!822967)) b!4829887))

(assert (= (and b!4829883 c!822965) b!4829886))

(assert (= (and b!4829883 (not c!822965)) b!4829882))

(assert (= (and d!1548054 res!2056973) b!4829889))

(assert (= (and b!4829889 res!2056975) b!4829885))

(assert (= (and b!4829885 res!2056974) b!4829881))

(declare-fun m!5822320 () Bool)

(assert (=> d!1548054 m!5822320))

(assert (=> d!1548054 m!5822172))

(declare-fun m!5822322 () Bool)

(assert (=> b!4829889 m!5822322))

(declare-fun m!5822324 () Bool)

(assert (=> b!4829889 m!5822324))

(declare-fun m!5822326 () Bool)

(assert (=> b!4829883 m!5822326))

(declare-fun m!5822328 () Bool)

(assert (=> b!4829883 m!5822328))

(assert (=> b!4829883 m!5822328))

(declare-fun m!5822330 () Bool)

(assert (=> b!4829883 m!5822330))

(declare-fun m!5822332 () Bool)

(assert (=> b!4829883 m!5822332))

(declare-fun m!5822334 () Bool)

(assert (=> b!4829883 m!5822334))

(declare-fun m!5822336 () Bool)

(assert (=> b!4829885 m!5822336))

(declare-fun m!5822338 () Bool)

(assert (=> b!4829881 m!5822338))

(declare-fun m!5822340 () Bool)

(assert (=> b!4829881 m!5822340))

(assert (=> b!4829881 m!5822340))

(declare-fun m!5822342 () Bool)

(assert (=> b!4829881 m!5822342))

(assert (=> b!4829886 m!5822328))

(assert (=> b!4829886 m!5822328))

(declare-fun m!5822344 () Bool)

(assert (=> b!4829886 m!5822344))

(assert (=> b!4829618 d!1548054))

(assert (=> d!1547914 d!1548004))

(declare-fun d!1548056 () Bool)

(assert (=> d!1548056 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975837) key!5594))))

(declare-fun lt!1976154 () Unit!143577)

(assert (=> d!1548056 (= lt!1976154 (choose!35218 (toList!7544 lt!1975837) key!5594))))

(assert (=> d!1548056 (invariantList!1823 (toList!7544 lt!1975837))))

(assert (=> d!1548056 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 lt!1975837) key!5594) lt!1976154)))

(declare-fun bs!1165585 () Bool)

(assert (= bs!1165585 d!1548056))

(assert (=> bs!1165585 m!5821936))

(assert (=> bs!1165585 m!5821936))

(assert (=> bs!1165585 m!5821938))

(declare-fun m!5822346 () Bool)

(assert (=> bs!1165585 m!5822346))

(assert (=> bs!1165585 m!5822194))

(assert (=> b!4829597 d!1548056))

(assert (=> b!4829597 d!1548040))

(assert (=> b!4829597 d!1548042))

(declare-fun d!1548058 () Bool)

(assert (=> d!1548058 (contains!18862 (getKeysList!1169 (toList!7544 lt!1975837)) key!5594)))

(declare-fun lt!1976155 () Unit!143577)

(assert (=> d!1548058 (= lt!1976155 (choose!35219 (toList!7544 lt!1975837) key!5594))))

(assert (=> d!1548058 (invariantList!1823 (toList!7544 lt!1975837))))

(assert (=> d!1548058 (= (lemmaInListThenGetKeysListContains!1164 (toList!7544 lt!1975837) key!5594) lt!1976155)))

(declare-fun bs!1165586 () Bool)

(assert (= bs!1165586 d!1548058))

(assert (=> bs!1165586 m!5821944))

(assert (=> bs!1165586 m!5821944))

(declare-fun m!5822348 () Bool)

(assert (=> bs!1165586 m!5822348))

(declare-fun m!5822350 () Bool)

(assert (=> bs!1165586 m!5822350))

(assert (=> bs!1165586 m!5822194))

(assert (=> b!4829597 d!1548058))

(declare-fun d!1548060 () Bool)

(declare-fun res!2056976 () Bool)

(declare-fun e!3018050 () Bool)

(assert (=> d!1548060 (=> res!2056976 e!3018050)))

(assert (=> d!1548060 (= res!2056976 (is-Nil!55052 (toList!7544 lt!1975837)))))

(assert (=> d!1548060 (= (forall!12665 (toList!7544 lt!1975837) lambda!237699) e!3018050)))

(declare-fun b!4829890 () Bool)

(declare-fun e!3018051 () Bool)

(assert (=> b!4829890 (= e!3018050 e!3018051)))

(declare-fun res!2056977 () Bool)

(assert (=> b!4829890 (=> (not res!2056977) (not e!3018051))))

(assert (=> b!4829890 (= res!2056977 (dynLambda!22240 lambda!237699 (h!61486 (toList!7544 lt!1975837))))))

(declare-fun b!4829891 () Bool)

(assert (=> b!4829891 (= e!3018051 (forall!12665 (t!362672 (toList!7544 lt!1975837)) lambda!237699))))

(assert (= (and d!1548060 (not res!2056976)) b!4829890))

(assert (= (and b!4829890 res!2056977) b!4829891))

(declare-fun b_lambda!190419 () Bool)

(assert (=> (not b_lambda!190419) (not b!4829890)))

(declare-fun m!5822352 () Bool)

(assert (=> b!4829890 m!5822352))

(declare-fun m!5822354 () Bool)

(assert (=> b!4829891 m!5822354))

(assert (=> b!4829646 d!1548060))

(declare-fun b!4829892 () Bool)

(declare-fun e!3018052 () Unit!143577)

(declare-fun lt!1976156 () Unit!143577)

(assert (=> b!4829892 (= e!3018052 lt!1976156)))

(declare-fun lt!1976158 () Unit!143577)

(assert (=> b!4829892 (= lt!1976158 (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829892 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976162 () Unit!143577)

(assert (=> b!4829892 (= lt!1976162 lt!1976158)))

(assert (=> b!4829892 (= lt!1976156 (lemmaInListThenGetKeysListContains!1164 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun call!336604 () Bool)

(assert (=> b!4829892 call!336604))

(declare-fun b!4829893 () Bool)

(declare-fun e!3018054 () List!55180)

(assert (=> b!4829893 (= e!3018054 (keys!20272 lt!1975960))))

(declare-fun d!1548062 () Bool)

(declare-fun e!3018056 () Bool)

(assert (=> d!1548062 e!3018056))

(declare-fun res!2056980 () Bool)

(assert (=> d!1548062 (=> res!2056980 e!3018056)))

(declare-fun e!3018053 () Bool)

(assert (=> d!1548062 (= res!2056980 e!3018053)))

(declare-fun res!2056978 () Bool)

(assert (=> d!1548062 (=> (not res!2056978) (not e!3018053))))

(declare-fun lt!1976159 () Bool)

(assert (=> d!1548062 (= res!2056978 (not lt!1976159))))

(declare-fun lt!1976160 () Bool)

(assert (=> d!1548062 (= lt!1976159 lt!1976160)))

(declare-fun lt!1976161 () Unit!143577)

(assert (=> d!1548062 (= lt!1976161 e!3018052)))

(declare-fun c!822968 () Bool)

(assert (=> d!1548062 (= c!822968 lt!1976160)))

(assert (=> d!1548062 (= lt!1976160 (containsKey!4423 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> d!1548062 (= (contains!18858 lt!1975960 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lt!1976159)))

(declare-fun b!4829894 () Bool)

(declare-fun e!3018057 () Bool)

(assert (=> b!4829894 (= e!3018056 e!3018057)))

(declare-fun res!2056979 () Bool)

(assert (=> b!4829894 (=> (not res!2056979) (not e!3018057))))

(assert (=> b!4829894 (= res!2056979 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829895 () Bool)

(assert (=> b!4829895 (= e!3018057 (contains!18862 (keys!20272 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829896 () Bool)

(declare-fun e!3018055 () Unit!143577)

(assert (=> b!4829896 (= e!3018052 e!3018055)))

(declare-fun c!822969 () Bool)

(assert (=> b!4829896 (= c!822969 call!336604)))

(declare-fun bm!336599 () Bool)

(assert (=> bm!336599 (= call!336604 (contains!18862 e!3018054 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun c!822970 () Bool)

(assert (=> bm!336599 (= c!822970 c!822968)))

(declare-fun b!4829897 () Bool)

(assert (=> b!4829897 (= e!3018053 (not (contains!18862 (keys!20272 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829898 () Bool)

(assert (=> b!4829898 (= e!3018054 (getKeysList!1169 (toList!7544 lt!1975960)))))

(declare-fun b!4829899 () Bool)

(declare-fun Unit!143632 () Unit!143577)

(assert (=> b!4829899 (= e!3018055 Unit!143632)))

(declare-fun b!4829900 () Bool)

(assert (=> b!4829900 false))

(declare-fun lt!1976157 () Unit!143577)

(declare-fun lt!1976163 () Unit!143577)

(assert (=> b!4829900 (= lt!1976157 lt!1976163)))

(assert (=> b!4829900 (containsKey!4423 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> b!4829900 (= lt!1976163 (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 lt!1975960) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun Unit!143633 () Unit!143577)

(assert (=> b!4829900 (= e!3018055 Unit!143633)))

(assert (= (and d!1548062 c!822968) b!4829892))

(assert (= (and d!1548062 (not c!822968)) b!4829896))

(assert (= (and b!4829896 c!822969) b!4829900))

(assert (= (and b!4829896 (not c!822969)) b!4829899))

(assert (= (or b!4829892 b!4829896) bm!336599))

(assert (= (and bm!336599 c!822970) b!4829898))

(assert (= (and bm!336599 (not c!822970)) b!4829893))

(assert (= (and d!1548062 res!2056978) b!4829897))

(assert (= (and d!1548062 (not res!2056980)) b!4829894))

(assert (= (and b!4829894 res!2056979) b!4829895))

(declare-fun m!5822356 () Bool)

(assert (=> b!4829895 m!5822356))

(assert (=> b!4829895 m!5822356))

(declare-fun m!5822358 () Bool)

(assert (=> b!4829895 m!5822358))

(declare-fun m!5822360 () Bool)

(assert (=> b!4829892 m!5822360))

(declare-fun m!5822362 () Bool)

(assert (=> b!4829892 m!5822362))

(assert (=> b!4829892 m!5822362))

(declare-fun m!5822364 () Bool)

(assert (=> b!4829892 m!5822364))

(declare-fun m!5822366 () Bool)

(assert (=> b!4829892 m!5822366))

(assert (=> b!4829897 m!5822356))

(assert (=> b!4829897 m!5822356))

(assert (=> b!4829897 m!5822358))

(assert (=> b!4829894 m!5822362))

(assert (=> b!4829894 m!5822362))

(assert (=> b!4829894 m!5822364))

(assert (=> b!4829893 m!5822356))

(declare-fun m!5822368 () Bool)

(assert (=> bm!336599 m!5822368))

(declare-fun m!5822370 () Bool)

(assert (=> b!4829898 m!5822370))

(declare-fun m!5822372 () Bool)

(assert (=> b!4829900 m!5822372))

(declare-fun m!5822374 () Bool)

(assert (=> b!4829900 m!5822374))

(assert (=> d!1548062 m!5822372))

(assert (=> b!4829646 d!1548062))

(declare-fun d!1548064 () Bool)

(declare-fun res!2056981 () Bool)

(declare-fun e!3018058 () Bool)

(assert (=> d!1548064 (=> res!2056981 e!3018058)))

(assert (=> d!1548064 (= res!2056981 (is-Nil!55052 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> d!1548064 (= (forall!12665 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) lambda!237700) e!3018058)))

(declare-fun b!4829901 () Bool)

(declare-fun e!3018059 () Bool)

(assert (=> b!4829901 (= e!3018058 e!3018059)))

(declare-fun res!2056982 () Bool)

(assert (=> b!4829901 (=> (not res!2056982) (not e!3018059))))

(assert (=> b!4829901 (= res!2056982 (dynLambda!22240 lambda!237700 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829902 () Bool)

(assert (=> b!4829902 (= e!3018059 (forall!12665 (t!362672 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lambda!237700))))

(assert (= (and d!1548064 (not res!2056981)) b!4829901))

(assert (= (and b!4829901 res!2056982) b!4829902))

(declare-fun b_lambda!190421 () Bool)

(assert (=> (not b_lambda!190421) (not b!4829901)))

(declare-fun m!5822376 () Bool)

(assert (=> b!4829901 m!5822376))

(declare-fun m!5822378 () Bool)

(assert (=> b!4829902 m!5822378))

(assert (=> b!4829646 d!1548064))

(declare-fun d!1548066 () Bool)

(declare-fun e!3018062 () Bool)

(assert (=> d!1548066 e!3018062))

(declare-fun res!2056988 () Bool)

(assert (=> d!1548066 (=> (not res!2056988) (not e!3018062))))

(declare-fun lt!1976173 () ListMap!6915)

(assert (=> d!1548066 (= res!2056988 (contains!18858 lt!1976173 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976172 () List!55176)

(assert (=> d!1548066 (= lt!1976173 (ListMap!6916 lt!1976172))))

(declare-fun lt!1976174 () Unit!143577)

(declare-fun lt!1976175 () Unit!143577)

(assert (=> d!1548066 (= lt!1976174 lt!1976175)))

(assert (=> d!1548066 (= (getValueByKey!2645 lt!1976172 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (Some!13517 (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1228 (List!55176 K!16742 V!16988) Unit!143577)

(assert (=> d!1548066 (= lt!1976175 (lemmaContainsTupThenGetReturnValue!1228 lt!1976172 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun insertNoDuplicatedKeys!736 (List!55176 K!16742 V!16988) List!55176)

(assert (=> d!1548066 (= lt!1976172 (insertNoDuplicatedKeys!736 (toList!7544 lt!1975837) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> d!1548066 (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976173)))

(declare-fun b!4829907 () Bool)

(declare-fun res!2056987 () Bool)

(assert (=> b!4829907 (=> (not res!2056987) (not e!3018062))))

(assert (=> b!4829907 (= res!2056987 (= (getValueByKey!2645 (toList!7544 lt!1976173) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (Some!13517 (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829908 () Bool)

(declare-fun contains!18864 (List!55176 tuple2!58334) Bool)

(assert (=> b!4829908 (= e!3018062 (contains!18864 (toList!7544 lt!1976173) (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (= (and d!1548066 res!2056988) b!4829907))

(assert (= (and b!4829907 res!2056987) b!4829908))

(declare-fun m!5822380 () Bool)

(assert (=> d!1548066 m!5822380))

(declare-fun m!5822382 () Bool)

(assert (=> d!1548066 m!5822382))

(declare-fun m!5822384 () Bool)

(assert (=> d!1548066 m!5822384))

(declare-fun m!5822386 () Bool)

(assert (=> d!1548066 m!5822386))

(declare-fun m!5822388 () Bool)

(assert (=> b!4829907 m!5822388))

(declare-fun m!5822390 () Bool)

(assert (=> b!4829908 m!5822390))

(assert (=> b!4829646 d!1548066))

(declare-fun bs!1165587 () Bool)

(declare-fun d!1548068 () Bool)

(assert (= bs!1165587 (and d!1548068 b!4829646)))

(declare-fun lambda!237778 () Int)

(assert (=> bs!1165587 (= (= lt!1975946 lt!1975837) (= lambda!237778 lambda!237699))))

(declare-fun bs!1165588 () Bool)

(assert (= bs!1165588 (and d!1548068 b!4829816)))

(assert (=> bs!1165588 (= (= lt!1975946 lt!1976107) (= lambda!237778 lambda!237755))))

(declare-fun bs!1165589 () Bool)

(assert (= bs!1165589 (and d!1548068 b!4829812)))

(assert (=> bs!1165589 (= (= lt!1975946 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237778 lambda!237753))))

(assert (=> bs!1165587 (= lambda!237778 lambda!237700)))

(declare-fun bs!1165590 () Bool)

(assert (= bs!1165590 (and d!1548068 d!1547930)))

(assert (=> bs!1165590 (= (= lt!1975946 lt!1975957) (= lambda!237778 lambda!237701))))

(assert (=> bs!1165588 (= (= lt!1975946 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237778 lambda!237754))))

(declare-fun bs!1165591 () Bool)

(assert (= bs!1165591 (and d!1548068 b!4829642)))

(assert (=> bs!1165591 (= (= lt!1975946 lt!1975837) (= lambda!237778 lambda!237698))))

(declare-fun bs!1165592 () Bool)

(assert (= bs!1165592 (and d!1548068 d!1548016)))

(assert (=> bs!1165592 (= (= lt!1975946 lt!1976118) (= lambda!237778 lambda!237756))))

(assert (=> d!1548068 true))

(assert (=> d!1548068 (forall!12665 (toList!7544 lt!1975837) lambda!237778)))

(declare-fun lt!1976178 () Unit!143577)

(declare-fun choose!35222 (ListMap!6915 ListMap!6915 K!16742 V!16988) Unit!143577)

(assert (=> d!1548068 (= lt!1976178 (choose!35222 lt!1975837 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> d!1548068 (forall!12665 (toList!7544 (+!2546 lt!1975837 (tuple2!58335 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))) lambda!237778)))

(assert (=> d!1548068 (= (addForallContainsKeyThenBeforeAdding!1000 lt!1975837 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (_2!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lt!1976178)))

(declare-fun bs!1165593 () Bool)

(assert (= bs!1165593 d!1548068))

(declare-fun m!5822392 () Bool)

(assert (=> bs!1165593 m!5822392))

(declare-fun m!5822394 () Bool)

(assert (=> bs!1165593 m!5822394))

(declare-fun m!5822396 () Bool)

(assert (=> bs!1165593 m!5822396))

(declare-fun m!5822398 () Bool)

(assert (=> bs!1165593 m!5822398))

(assert (=> b!4829646 d!1548068))

(declare-fun d!1548070 () Bool)

(declare-fun res!2056989 () Bool)

(declare-fun e!3018063 () Bool)

(assert (=> d!1548070 (=> res!2056989 e!3018063)))

(assert (=> d!1548070 (= res!2056989 (is-Nil!55052 (toList!7544 lt!1975960)))))

(assert (=> d!1548070 (= (forall!12665 (toList!7544 lt!1975960) lambda!237700) e!3018063)))

(declare-fun b!4829910 () Bool)

(declare-fun e!3018064 () Bool)

(assert (=> b!4829910 (= e!3018063 e!3018064)))

(declare-fun res!2056990 () Bool)

(assert (=> b!4829910 (=> (not res!2056990) (not e!3018064))))

(assert (=> b!4829910 (= res!2056990 (dynLambda!22240 lambda!237700 (h!61486 (toList!7544 lt!1975960))))))

(declare-fun b!4829911 () Bool)

(assert (=> b!4829911 (= e!3018064 (forall!12665 (t!362672 (toList!7544 lt!1975960)) lambda!237700))))

(assert (= (and d!1548070 (not res!2056989)) b!4829910))

(assert (= (and b!4829910 res!2056990) b!4829911))

(declare-fun b_lambda!190423 () Bool)

(assert (=> (not b_lambda!190423) (not b!4829910)))

(declare-fun m!5822400 () Bool)

(assert (=> b!4829910 m!5822400))

(declare-fun m!5822402 () Bool)

(assert (=> b!4829911 m!5822402))

(assert (=> b!4829646 d!1548070))

(declare-fun d!1548072 () Bool)

(assert (=> d!1548072 (dynLambda!22240 lambda!237700 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(declare-fun lt!1976181 () Unit!143577)

(declare-fun choose!35223 (List!55176 Int tuple2!58334) Unit!143577)

(assert (=> d!1548072 (= lt!1976181 (choose!35223 (toList!7544 lt!1975960) lambda!237700 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun e!3018067 () Bool)

(assert (=> d!1548072 e!3018067))

(declare-fun res!2056993 () Bool)

(assert (=> d!1548072 (=> (not res!2056993) (not e!3018067))))

(assert (=> d!1548072 (= res!2056993 (forall!12665 (toList!7544 lt!1975960) lambda!237700))))

(assert (=> d!1548072 (= (forallContained!4404 (toList!7544 lt!1975960) lambda!237700 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976181)))

(declare-fun b!4829914 () Bool)

(assert (=> b!4829914 (= e!3018067 (contains!18864 (toList!7544 lt!1975960) (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (= (and d!1548072 res!2056993) b!4829914))

(declare-fun b_lambda!190425 () Bool)

(assert (=> (not b_lambda!190425) (not d!1548072)))

(declare-fun m!5822404 () Bool)

(assert (=> d!1548072 m!5822404))

(declare-fun m!5822406 () Bool)

(assert (=> d!1548072 m!5822406))

(assert (=> d!1548072 m!5822004))

(declare-fun m!5822408 () Bool)

(assert (=> b!4829914 m!5822408))

(assert (=> b!4829646 d!1548072))

(declare-fun bs!1165594 () Bool)

(declare-fun b!4829915 () Bool)

(assert (= bs!1165594 (and b!4829915 b!4829646)))

(declare-fun lambda!237779 () Int)

(assert (=> bs!1165594 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975837) (= lambda!237779 lambda!237699))))

(declare-fun bs!1165595 () Bool)

(assert (= bs!1165595 (and b!4829915 b!4829816)))

(assert (=> bs!1165595 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976107) (= lambda!237779 lambda!237755))))

(declare-fun bs!1165596 () Bool)

(assert (= bs!1165596 (and b!4829915 b!4829812)))

(assert (=> bs!1165596 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237779 lambda!237753))))

(assert (=> bs!1165594 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975946) (= lambda!237779 lambda!237700))))

(declare-fun bs!1165597 () Bool)

(assert (= bs!1165597 (and b!4829915 d!1547930)))

(assert (=> bs!1165597 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975957) (= lambda!237779 lambda!237701))))

(assert (=> bs!1165595 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237779 lambda!237754))))

(declare-fun bs!1165598 () Bool)

(assert (= bs!1165598 (and b!4829915 d!1548016)))

(assert (=> bs!1165598 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976118) (= lambda!237779 lambda!237756))))

(declare-fun bs!1165599 () Bool)

(assert (= bs!1165599 (and b!4829915 b!4829642)))

(assert (=> bs!1165599 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975837) (= lambda!237779 lambda!237698))))

(declare-fun bs!1165600 () Bool)

(assert (= bs!1165600 (and b!4829915 d!1548068)))

(assert (=> bs!1165600 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975946) (= lambda!237779 lambda!237778))))

(assert (=> b!4829915 true))

(declare-fun bs!1165601 () Bool)

(declare-fun b!4829919 () Bool)

(assert (= bs!1165601 (and b!4829919 b!4829646)))

(declare-fun lambda!237780 () Int)

(assert (=> bs!1165601 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975837) (= lambda!237780 lambda!237699))))

(declare-fun bs!1165602 () Bool)

(assert (= bs!1165602 (and b!4829919 b!4829816)))

(assert (=> bs!1165602 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976107) (= lambda!237780 lambda!237755))))

(declare-fun bs!1165603 () Bool)

(assert (= bs!1165603 (and b!4829919 b!4829812)))

(assert (=> bs!1165603 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237780 lambda!237753))))

(assert (=> bs!1165601 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975946) (= lambda!237780 lambda!237700))))

(declare-fun bs!1165604 () Bool)

(assert (= bs!1165604 (and b!4829919 d!1547930)))

(assert (=> bs!1165604 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975957) (= lambda!237780 lambda!237701))))

(declare-fun bs!1165605 () Bool)

(assert (= bs!1165605 (and b!4829919 b!4829915)))

(assert (=> bs!1165605 (= lambda!237780 lambda!237779)))

(assert (=> bs!1165602 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237780 lambda!237754))))

(declare-fun bs!1165606 () Bool)

(assert (= bs!1165606 (and b!4829919 d!1548016)))

(assert (=> bs!1165606 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976118) (= lambda!237780 lambda!237756))))

(declare-fun bs!1165607 () Bool)

(assert (= bs!1165607 (and b!4829919 b!4829642)))

(assert (=> bs!1165607 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975837) (= lambda!237780 lambda!237698))))

(declare-fun bs!1165608 () Bool)

(assert (= bs!1165608 (and b!4829919 d!1548068)))

(assert (=> bs!1165608 (= (= (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1975946) (= lambda!237780 lambda!237778))))

(assert (=> b!4829919 true))

(declare-fun lambda!237781 () Int)

(declare-fun lt!1976187 () ListMap!6915)

(assert (=> bs!1165601 (= (= lt!1976187 lt!1975837) (= lambda!237781 lambda!237699))))

(assert (=> bs!1165602 (= (= lt!1976187 lt!1976107) (= lambda!237781 lambda!237755))))

(assert (=> bs!1165603 (= (= lt!1976187 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237781 lambda!237753))))

(assert (=> bs!1165601 (= (= lt!1976187 lt!1975946) (= lambda!237781 lambda!237700))))

(assert (=> bs!1165604 (= (= lt!1976187 lt!1975957) (= lambda!237781 lambda!237701))))

(assert (=> bs!1165605 (= (= lt!1976187 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237781 lambda!237779))))

(assert (=> bs!1165606 (= (= lt!1976187 lt!1976118) (= lambda!237781 lambda!237756))))

(assert (=> bs!1165602 (= (= lt!1976187 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237781 lambda!237754))))

(assert (=> b!4829919 (= (= lt!1976187 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237781 lambda!237780))))

(assert (=> bs!1165607 (= (= lt!1976187 lt!1975837) (= lambda!237781 lambda!237698))))

(assert (=> bs!1165608 (= (= lt!1976187 lt!1975946) (= lambda!237781 lambda!237778))))

(assert (=> b!4829919 true))

(declare-fun bs!1165609 () Bool)

(declare-fun d!1548074 () Bool)

(assert (= bs!1165609 (and d!1548074 b!4829646)))

(declare-fun lambda!237782 () Int)

(declare-fun lt!1976198 () ListMap!6915)

(assert (=> bs!1165609 (= (= lt!1976198 lt!1975837) (= lambda!237782 lambda!237699))))

(declare-fun bs!1165610 () Bool)

(assert (= bs!1165610 (and d!1548074 b!4829816)))

(assert (=> bs!1165610 (= (= lt!1976198 lt!1976107) (= lambda!237782 lambda!237755))))

(declare-fun bs!1165611 () Bool)

(assert (= bs!1165611 (and d!1548074 b!4829812)))

(assert (=> bs!1165611 (= (= lt!1976198 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237782 lambda!237753))))

(assert (=> bs!1165609 (= (= lt!1976198 lt!1975946) (= lambda!237782 lambda!237700))))

(declare-fun bs!1165612 () Bool)

(assert (= bs!1165612 (and d!1548074 b!4829915)))

(assert (=> bs!1165612 (= (= lt!1976198 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237782 lambda!237779))))

(declare-fun bs!1165613 () Bool)

(assert (= bs!1165613 (and d!1548074 d!1548016)))

(assert (=> bs!1165613 (= (= lt!1976198 lt!1976118) (= lambda!237782 lambda!237756))))

(declare-fun bs!1165614 () Bool)

(assert (= bs!1165614 (and d!1548074 d!1547930)))

(assert (=> bs!1165614 (= (= lt!1976198 lt!1975957) (= lambda!237782 lambda!237701))))

(declare-fun bs!1165615 () Bool)

(assert (= bs!1165615 (and d!1548074 b!4829919)))

(assert (=> bs!1165615 (= (= lt!1976198 lt!1976187) (= lambda!237782 lambda!237781))))

(assert (=> bs!1165610 (= (= lt!1976198 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237782 lambda!237754))))

(assert (=> bs!1165615 (= (= lt!1976198 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237782 lambda!237780))))

(declare-fun bs!1165616 () Bool)

(assert (= bs!1165616 (and d!1548074 b!4829642)))

(assert (=> bs!1165616 (= (= lt!1976198 lt!1975837) (= lambda!237782 lambda!237698))))

(declare-fun bs!1165617 () Bool)

(assert (= bs!1165617 (and d!1548074 d!1548068)))

(assert (=> bs!1165617 (= (= lt!1976198 lt!1975946) (= lambda!237782 lambda!237778))))

(assert (=> d!1548074 true))

(declare-fun bm!336600 () Bool)

(declare-fun call!336605 () Bool)

(declare-fun c!822971 () Bool)

(assert (=> bm!336600 (= call!336605 (forall!12665 (ite c!822971 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (ite c!822971 lambda!237779 lambda!237781)))))

(declare-fun bm!336601 () Bool)

(declare-fun call!336606 () Bool)

(assert (=> bm!336601 (= call!336606 (forall!12665 (ite c!822971 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (ite c!822971 lambda!237779 lambda!237781)))))

(declare-fun e!3018069 () ListMap!6915)

(assert (=> b!4829915 (= e!3018069 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(declare-fun lt!1976192 () Unit!143577)

(declare-fun call!336607 () Unit!143577)

(assert (=> b!4829915 (= lt!1976192 call!336607)))

(assert (=> b!4829915 call!336606))

(declare-fun lt!1976189 () Unit!143577)

(assert (=> b!4829915 (= lt!1976189 lt!1976192)))

(assert (=> b!4829915 call!336605))

(declare-fun lt!1976202 () Unit!143577)

(declare-fun Unit!143645 () Unit!143577)

(assert (=> b!4829915 (= lt!1976202 Unit!143645)))

(declare-fun b!4829916 () Bool)

(declare-fun e!3018070 () Bool)

(assert (=> b!4829916 (= e!3018070 (invariantList!1823 (toList!7544 lt!1976198)))))

(assert (=> d!1548074 e!3018070))

(declare-fun res!2056994 () Bool)

(assert (=> d!1548074 (=> (not res!2056994) (not e!3018070))))

(assert (=> d!1548074 (= res!2056994 (forall!12665 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) lambda!237782))))

(assert (=> d!1548074 (= lt!1976198 e!3018069)))

(assert (=> d!1548074 (= c!822971 (is-Nil!55052 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> d!1548074 (noDuplicateKeys!2467 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(assert (=> d!1548074 (= (addToMapMapFromBucket!1824 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))) (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lt!1976198)))

(declare-fun b!4829917 () Bool)

(declare-fun res!2056995 () Bool)

(assert (=> b!4829917 (=> (not res!2056995) (not e!3018070))))

(assert (=> b!4829917 (= res!2056995 (forall!12665 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lambda!237782))))

(declare-fun b!4829918 () Bool)

(declare-fun e!3018068 () Bool)

(assert (=> b!4829918 (= e!3018068 (forall!12665 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lambda!237781))))

(declare-fun bm!336602 () Bool)

(assert (=> bm!336602 (= call!336607 (lemmaContainsAllItsOwnKeys!1001 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829919 (= e!3018069 lt!1976187)))

(declare-fun lt!1976201 () ListMap!6915)

(assert (=> b!4829919 (= lt!1976201 (+!2546 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829919 (= lt!1976187 (addToMapMapFromBucket!1824 (t!362672 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (+!2546 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun lt!1976186 () Unit!143577)

(assert (=> b!4829919 (= lt!1976186 call!336607)))

(assert (=> b!4829919 (forall!12665 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lambda!237780)))

(declare-fun lt!1976194 () Unit!143577)

(assert (=> b!4829919 (= lt!1976194 lt!1976186)))

(assert (=> b!4829919 (forall!12665 (toList!7544 lt!1976201) lambda!237781)))

(declare-fun lt!1976191 () Unit!143577)

(declare-fun Unit!143646 () Unit!143577)

(assert (=> b!4829919 (= lt!1976191 Unit!143646)))

(assert (=> b!4829919 (forall!12665 (t!362672 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lambda!237781)))

(declare-fun lt!1976195 () Unit!143577)

(declare-fun Unit!143647 () Unit!143577)

(assert (=> b!4829919 (= lt!1976195 Unit!143647)))

(declare-fun lt!1976200 () Unit!143577)

(declare-fun Unit!143648 () Unit!143577)

(assert (=> b!4829919 (= lt!1976200 Unit!143648)))

(declare-fun lt!1976197 () Unit!143577)

(assert (=> b!4829919 (= lt!1976197 (forallContained!4404 (toList!7544 lt!1976201) lambda!237781 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829919 (contains!18858 lt!1976201 (_1!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976182 () Unit!143577)

(declare-fun Unit!143649 () Unit!143577)

(assert (=> b!4829919 (= lt!1976182 Unit!143649)))

(assert (=> b!4829919 (contains!18858 lt!1976187 (_1!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976188 () Unit!143577)

(declare-fun Unit!143650 () Unit!143577)

(assert (=> b!4829919 (= lt!1976188 Unit!143650)))

(assert (=> b!4829919 call!336605))

(declare-fun lt!1976196 () Unit!143577)

(declare-fun Unit!143651 () Unit!143577)

(assert (=> b!4829919 (= lt!1976196 Unit!143651)))

(assert (=> b!4829919 (forall!12665 (toList!7544 lt!1976201) lambda!237781)))

(declare-fun lt!1976184 () Unit!143577)

(declare-fun Unit!143652 () Unit!143577)

(assert (=> b!4829919 (= lt!1976184 Unit!143652)))

(declare-fun lt!1976185 () Unit!143577)

(declare-fun Unit!143653 () Unit!143577)

(assert (=> b!4829919 (= lt!1976185 Unit!143653)))

(declare-fun lt!1976183 () Unit!143577)

(assert (=> b!4829919 (= lt!1976183 (addForallContainsKeyThenBeforeAdding!1000 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) lt!1976187 (_1!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (_2!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(assert (=> b!4829919 (forall!12665 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lambda!237781)))

(declare-fun lt!1976199 () Unit!143577)

(assert (=> b!4829919 (= lt!1976199 lt!1976183)))

(assert (=> b!4829919 (forall!12665 (toList!7544 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lambda!237781)))

(declare-fun lt!1976193 () Unit!143577)

(declare-fun Unit!143654 () Unit!143577)

(assert (=> b!4829919 (= lt!1976193 Unit!143654)))

(declare-fun res!2056996 () Bool)

(assert (=> b!4829919 (= res!2056996 call!336606)))

(assert (=> b!4829919 (=> (not res!2056996) (not e!3018068))))

(assert (=> b!4829919 e!3018068))

(declare-fun lt!1976190 () Unit!143577)

(declare-fun Unit!143655 () Unit!143577)

(assert (=> b!4829919 (= lt!1976190 Unit!143655)))

(assert (= (and d!1548074 c!822971) b!4829915))

(assert (= (and d!1548074 (not c!822971)) b!4829919))

(assert (= (and b!4829919 res!2056996) b!4829918))

(assert (= (or b!4829915 b!4829919) bm!336602))

(assert (= (or b!4829915 b!4829919) bm!336600))

(assert (= (or b!4829915 b!4829919) bm!336601))

(assert (= (and d!1548074 res!2056994) b!4829917))

(assert (= (and b!4829917 res!2056995) b!4829916))

(declare-fun m!5822414 () Bool)

(assert (=> bm!336601 m!5822414))

(assert (=> bm!336602 m!5822008))

(declare-fun m!5822416 () Bool)

(assert (=> bm!336602 m!5822416))

(declare-fun m!5822418 () Bool)

(assert (=> b!4829917 m!5822418))

(declare-fun m!5822420 () Bool)

(assert (=> b!4829918 m!5822420))

(assert (=> bm!336600 m!5822414))

(declare-fun m!5822422 () Bool)

(assert (=> b!4829916 m!5822422))

(declare-fun m!5822424 () Bool)

(assert (=> d!1548074 m!5822424))

(assert (=> d!1548074 m!5822184))

(declare-fun m!5822426 () Bool)

(assert (=> b!4829919 m!5822426))

(declare-fun m!5822428 () Bool)

(assert (=> b!4829919 m!5822428))

(assert (=> b!4829919 m!5822420))

(declare-fun m!5822430 () Bool)

(assert (=> b!4829919 m!5822430))

(assert (=> b!4829919 m!5822008))

(declare-fun m!5822432 () Bool)

(assert (=> b!4829919 m!5822432))

(assert (=> b!4829919 m!5822420))

(assert (=> b!4829919 m!5822008))

(declare-fun m!5822434 () Bool)

(assert (=> b!4829919 m!5822434))

(assert (=> b!4829919 m!5822434))

(declare-fun m!5822436 () Bool)

(assert (=> b!4829919 m!5822436))

(assert (=> b!4829919 m!5822430))

(declare-fun m!5822438 () Bool)

(assert (=> b!4829919 m!5822438))

(declare-fun m!5822440 () Bool)

(assert (=> b!4829919 m!5822440))

(declare-fun m!5822442 () Bool)

(assert (=> b!4829919 m!5822442))

(assert (=> b!4829646 d!1548074))

(declare-fun d!1548080 () Bool)

(declare-fun res!2056999 () Bool)

(declare-fun e!3018073 () Bool)

(assert (=> d!1548080 (=> res!2056999 e!3018073)))

(assert (=> d!1548080 (= res!2056999 (is-Nil!55052 (toList!7544 lt!1975837)))))

(assert (=> d!1548080 (= (forall!12665 (toList!7544 lt!1975837) lambda!237700) e!3018073)))

(declare-fun b!4829922 () Bool)

(declare-fun e!3018074 () Bool)

(assert (=> b!4829922 (= e!3018073 e!3018074)))

(declare-fun res!2057000 () Bool)

(assert (=> b!4829922 (=> (not res!2057000) (not e!3018074))))

(assert (=> b!4829922 (= res!2057000 (dynLambda!22240 lambda!237700 (h!61486 (toList!7544 lt!1975837))))))

(declare-fun b!4829923 () Bool)

(assert (=> b!4829923 (= e!3018074 (forall!12665 (t!362672 (toList!7544 lt!1975837)) lambda!237700))))

(assert (= (and d!1548080 (not res!2056999)) b!4829922))

(assert (= (and b!4829922 res!2057000) b!4829923))

(declare-fun b_lambda!190429 () Bool)

(assert (=> (not b_lambda!190429) (not b!4829922)))

(declare-fun m!5822444 () Bool)

(assert (=> b!4829922 m!5822444))

(declare-fun m!5822446 () Bool)

(assert (=> b!4829923 m!5822446))

(assert (=> b!4829646 d!1548080))

(declare-fun b!4829924 () Bool)

(declare-fun e!3018075 () Unit!143577)

(declare-fun lt!1976203 () Unit!143577)

(assert (=> b!4829924 (= e!3018075 lt!1976203)))

(declare-fun lt!1976205 () Unit!143577)

(assert (=> b!4829924 (= lt!1976205 (lemmaContainsKeyImpliesGetValueByKeyDefined!2430 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> b!4829924 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun lt!1976209 () Unit!143577)

(assert (=> b!4829924 (= lt!1976209 lt!1976205)))

(assert (=> b!4829924 (= lt!1976203 (lemmaInListThenGetKeysListContains!1164 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun call!336608 () Bool)

(assert (=> b!4829924 call!336608))

(declare-fun b!4829925 () Bool)

(declare-fun e!3018077 () List!55180)

(assert (=> b!4829925 (= e!3018077 (keys!20272 lt!1975946))))

(declare-fun d!1548082 () Bool)

(declare-fun e!3018079 () Bool)

(assert (=> d!1548082 e!3018079))

(declare-fun res!2057003 () Bool)

(assert (=> d!1548082 (=> res!2057003 e!3018079)))

(declare-fun e!3018076 () Bool)

(assert (=> d!1548082 (= res!2057003 e!3018076)))

(declare-fun res!2057001 () Bool)

(assert (=> d!1548082 (=> (not res!2057001) (not e!3018076))))

(declare-fun lt!1976206 () Bool)

(assert (=> d!1548082 (= res!2057001 (not lt!1976206))))

(declare-fun lt!1976207 () Bool)

(assert (=> d!1548082 (= lt!1976206 lt!1976207)))

(declare-fun lt!1976208 () Unit!143577)

(assert (=> d!1548082 (= lt!1976208 e!3018075)))

(declare-fun c!822972 () Bool)

(assert (=> d!1548082 (= c!822972 lt!1976207)))

(assert (=> d!1548082 (= lt!1976207 (containsKey!4423 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> d!1548082 (= (contains!18858 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) lt!1976206)))

(declare-fun b!4829926 () Bool)

(declare-fun e!3018080 () Bool)

(assert (=> b!4829926 (= e!3018079 e!3018080)))

(declare-fun res!2057002 () Bool)

(assert (=> b!4829926 (=> (not res!2057002) (not e!3018080))))

(assert (=> b!4829926 (= res!2057002 (isDefined!10633 (getValueByKey!2645 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829927 () Bool)

(assert (=> b!4829927 (= e!3018080 (contains!18862 (keys!20272 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829928 () Bool)

(declare-fun e!3018078 () Unit!143577)

(assert (=> b!4829928 (= e!3018075 e!3018078)))

(declare-fun c!822973 () Bool)

(assert (=> b!4829928 (= c!822973 call!336608)))

(declare-fun bm!336603 () Bool)

(assert (=> bm!336603 (= call!336608 (contains!18862 e!3018077 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun c!822974 () Bool)

(assert (=> bm!336603 (= c!822974 c!822972)))

(declare-fun b!4829929 () Bool)

(assert (=> b!4829929 (= e!3018076 (not (contains!18862 (keys!20272 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun b!4829930 () Bool)

(assert (=> b!4829930 (= e!3018077 (getKeysList!1169 (toList!7544 lt!1975946)))))

(declare-fun b!4829931 () Bool)

(declare-fun Unit!143660 () Unit!143577)

(assert (=> b!4829931 (= e!3018078 Unit!143660)))

(declare-fun b!4829932 () Bool)

(assert (=> b!4829932 false))

(declare-fun lt!1976204 () Unit!143577)

(declare-fun lt!1976210 () Unit!143577)

(assert (=> b!4829932 (= lt!1976204 lt!1976210)))

(assert (=> b!4829932 (containsKey!4423 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> b!4829932 (= lt!1976210 (lemmaInGetKeysListThenContainsKey!1169 (toList!7544 lt!1975946) (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun Unit!143661 () Unit!143577)

(assert (=> b!4829932 (= e!3018078 Unit!143661)))

(assert (= (and d!1548082 c!822972) b!4829924))

(assert (= (and d!1548082 (not c!822972)) b!4829928))

(assert (= (and b!4829928 c!822973) b!4829932))

(assert (= (and b!4829928 (not c!822973)) b!4829931))

(assert (= (or b!4829924 b!4829928) bm!336603))

(assert (= (and bm!336603 c!822974) b!4829930))

(assert (= (and bm!336603 (not c!822974)) b!4829925))

(assert (= (and d!1548082 res!2057001) b!4829929))

(assert (= (and d!1548082 (not res!2057003)) b!4829926))

(assert (= (and b!4829926 res!2057002) b!4829927))

(declare-fun m!5822448 () Bool)

(assert (=> b!4829927 m!5822448))

(assert (=> b!4829927 m!5822448))

(declare-fun m!5822450 () Bool)

(assert (=> b!4829927 m!5822450))

(declare-fun m!5822452 () Bool)

(assert (=> b!4829924 m!5822452))

(declare-fun m!5822454 () Bool)

(assert (=> b!4829924 m!5822454))

(assert (=> b!4829924 m!5822454))

(declare-fun m!5822456 () Bool)

(assert (=> b!4829924 m!5822456))

(declare-fun m!5822458 () Bool)

(assert (=> b!4829924 m!5822458))

(assert (=> b!4829929 m!5822448))

(assert (=> b!4829929 m!5822448))

(assert (=> b!4829929 m!5822450))

(assert (=> b!4829926 m!5822454))

(assert (=> b!4829926 m!5822454))

(assert (=> b!4829926 m!5822456))

(assert (=> b!4829925 m!5822448))

(declare-fun m!5822460 () Bool)

(assert (=> bm!336603 m!5822460))

(declare-fun m!5822462 () Bool)

(assert (=> b!4829930 m!5822462))

(declare-fun m!5822464 () Bool)

(assert (=> b!4829932 m!5822464))

(declare-fun m!5822466 () Bool)

(assert (=> b!4829932 m!5822466))

(assert (=> d!1548082 m!5822464))

(assert (=> b!4829646 d!1548082))

(declare-fun d!1548084 () Bool)

(declare-fun lt!1976213 () Bool)

(assert (=> d!1548084 (= lt!1976213 (set.member key!5594 (content!9830 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))))

(declare-fun e!3018087 () Bool)

(assert (=> d!1548084 (= lt!1976213 e!3018087)))

(declare-fun res!2057009 () Bool)

(assert (=> d!1548084 (=> (not res!2057009) (not e!3018087))))

(assert (=> d!1548084 (= res!2057009 (is-Cons!55056 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))

(assert (=> d!1548084 (= (contains!18862 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) key!5594) lt!1976213)))

(declare-fun b!4829938 () Bool)

(declare-fun e!3018088 () Bool)

(assert (=> b!4829938 (= e!3018087 e!3018088)))

(declare-fun res!2057008 () Bool)

(assert (=> b!4829938 (=> res!2057008 e!3018088)))

(assert (=> b!4829938 (= res!2057008 (= (h!61490 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) key!5594))))

(declare-fun b!4829940 () Bool)

(assert (=> b!4829940 (= e!3018088 (contains!18862 (t!362676 (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) key!5594))))

(assert (= (and d!1548084 res!2057009) b!4829938))

(assert (= (and b!4829938 (not res!2057008)) b!4829940))

(assert (=> d!1548084 m!5821958))

(declare-fun m!5822470 () Bool)

(assert (=> d!1548084 m!5822470))

(declare-fun m!5822474 () Bool)

(assert (=> d!1548084 m!5822474))

(declare-fun m!5822478 () Bool)

(assert (=> b!4829940 m!5822478))

(assert (=> b!4829617 d!1548084))

(declare-fun bs!1165618 () Bool)

(declare-fun b!4829944 () Bool)

(assert (= bs!1165618 (and b!4829944 b!4829808)))

(declare-fun lambda!237783 () Int)

(assert (=> bs!1165618 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (toList!7544 lt!1975837)) (= lambda!237783 lambda!237751))))

(declare-fun bs!1165619 () Bool)

(assert (= bs!1165619 (and b!4829944 b!4829841)))

(assert (=> bs!1165619 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (toList!7544 lt!1975837)) (= lambda!237783 lambda!237768))))

(declare-fun bs!1165620 () Bool)

(assert (= bs!1165620 (and b!4829944 b!4829839)))

(assert (=> bs!1165620 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (Cons!55052 (h!61486 (toList!7544 lt!1975837)) (t!362672 (toList!7544 lt!1975837)))) (= lambda!237783 lambda!237767))))

(declare-fun bs!1165621 () Bool)

(assert (= bs!1165621 (and b!4829944 b!4829886)))

(assert (=> bs!1165621 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))) (= lambda!237783 lambda!237770))))

(declare-fun bs!1165622 () Bool)

(assert (= bs!1165622 (and b!4829944 b!4829885)))

(assert (=> bs!1165622 (= lambda!237783 lambda!237772)))

(declare-fun bs!1165623 () Bool)

(assert (= bs!1165623 (and b!4829944 b!4829883)))

(assert (=> bs!1165623 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (Cons!55052 (h!61486 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))) (t!362672 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))) (= lambda!237783 lambda!237771))))

(declare-fun bs!1165624 () Bool)

(assert (= bs!1165624 (and b!4829944 b!4829842)))

(assert (=> bs!1165624 (= (= (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) (t!362672 (toList!7544 lt!1975837))) (= lambda!237783 lambda!237766))))

(assert (=> b!4829944 true))

(declare-fun bs!1165625 () Bool)

(declare-fun b!4829945 () Bool)

(assert (= bs!1165625 (and b!4829945 b!4829809)))

(declare-fun lambda!237784 () Int)

(assert (=> bs!1165625 (= lambda!237784 lambda!237752)))

(declare-fun bs!1165626 () Bool)

(assert (= bs!1165626 (and b!4829945 b!4829837)))

(assert (=> bs!1165626 (= lambda!237784 lambda!237769)))

(declare-fun bs!1165627 () Bool)

(assert (= bs!1165627 (and b!4829945 b!4829881)))

(assert (=> bs!1165627 (= lambda!237784 lambda!237773)))

(declare-fun d!1548088 () Bool)

(declare-fun e!3018091 () Bool)

(assert (=> d!1548088 e!3018091))

(declare-fun res!2057016 () Bool)

(assert (=> d!1548088 (=> (not res!2057016) (not e!3018091))))

(declare-fun lt!1976216 () List!55180)

(assert (=> d!1548088 (= res!2057016 (noDuplicate!971 lt!1976216))))

(assert (=> d!1548088 (= lt!1976216 (getKeysList!1169 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837))))))

(assert (=> d!1548088 (= (keys!20272 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) lt!1976216)))

(declare-fun b!4829943 () Bool)

(declare-fun res!2057014 () Bool)

(assert (=> b!4829943 (=> (not res!2057014) (not e!3018091))))

(assert (=> b!4829943 (= res!2057014 (= (length!798 lt!1976216) (length!799 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)))))))

(declare-fun res!2057015 () Bool)

(assert (=> b!4829944 (=> (not res!2057015) (not e!3018091))))

(assert (=> b!4829944 (= res!2057015 (forall!12667 lt!1976216 lambda!237783))))

(assert (=> b!4829945 (= e!3018091 (= (content!9830 lt!1976216) (content!9830 (map!12608 (toList!7544 (addToMapMapFromBucket!1824 (_2!32462 (h!61487 (toList!7543 lm!2325))) lt!1975837)) lambda!237784))))))

(assert (= (and d!1548088 res!2057016) b!4829943))

(assert (= (and b!4829943 res!2057014) b!4829944))

(assert (= (and b!4829944 res!2057015) b!4829945))

(declare-fun m!5822486 () Bool)

(assert (=> d!1548088 m!5822486))

(assert (=> d!1548088 m!5821972))

(declare-fun m!5822488 () Bool)

(assert (=> b!4829943 m!5822488))

(assert (=> b!4829943 m!5822324))

(declare-fun m!5822490 () Bool)

(assert (=> b!4829944 m!5822490))

(declare-fun m!5822492 () Bool)

(assert (=> b!4829945 m!5822492))

(declare-fun m!5822494 () Bool)

(assert (=> b!4829945 m!5822494))

(assert (=> b!4829945 m!5822494))

(declare-fun m!5822496 () Bool)

(assert (=> b!4829945 m!5822496))

(assert (=> b!4829617 d!1548088))

(assert (=> b!4829645 d!1548080))

(declare-fun d!1548092 () Bool)

(declare-fun res!2057017 () Bool)

(declare-fun e!3018092 () Bool)

(assert (=> d!1548092 (=> res!2057017 e!3018092)))

(assert (=> d!1548092 (= res!2057017 (is-Nil!55053 (t!362673 (toList!7543 lt!1975836))))))

(assert (=> d!1548092 (= (forall!12663 (t!362673 (toList!7543 lt!1975836)) lambda!237657) e!3018092)))

(declare-fun b!4829946 () Bool)

(declare-fun e!3018093 () Bool)

(assert (=> b!4829946 (= e!3018092 e!3018093)))

(declare-fun res!2057018 () Bool)

(assert (=> b!4829946 (=> (not res!2057018) (not e!3018093))))

(assert (=> b!4829946 (= res!2057018 (dynLambda!22238 lambda!237657 (h!61487 (t!362673 (toList!7543 lt!1975836)))))))

(declare-fun b!4829947 () Bool)

(assert (=> b!4829947 (= e!3018093 (forall!12663 (t!362673 (t!362673 (toList!7543 lt!1975836))) lambda!237657))))

(assert (= (and d!1548092 (not res!2057017)) b!4829946))

(assert (= (and b!4829946 res!2057018) b!4829947))

(declare-fun b_lambda!190431 () Bool)

(assert (=> (not b_lambda!190431) (not b!4829946)))

(declare-fun m!5822498 () Bool)

(assert (=> b!4829946 m!5822498))

(declare-fun m!5822500 () Bool)

(assert (=> b!4829947 m!5822500))

(assert (=> b!4829667 d!1548092))

(declare-fun bs!1165628 () Bool)

(declare-fun d!1548094 () Bool)

(assert (= bs!1165628 (and d!1548094 b!4829646)))

(declare-fun lambda!237793 () Int)

(assert (=> bs!1165628 (= lambda!237793 lambda!237699)))

(declare-fun bs!1165629 () Bool)

(assert (= bs!1165629 (and d!1548094 b!4829816)))

(assert (=> bs!1165629 (= (= lt!1975837 lt!1976107) (= lambda!237793 lambda!237755))))

(assert (=> bs!1165628 (= (= lt!1975837 lt!1975946) (= lambda!237793 lambda!237700))))

(declare-fun bs!1165630 () Bool)

(assert (= bs!1165630 (and d!1548094 b!4829915)))

(assert (=> bs!1165630 (= (= lt!1975837 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237793 lambda!237779))))

(declare-fun bs!1165631 () Bool)

(assert (= bs!1165631 (and d!1548094 d!1548016)))

(assert (=> bs!1165631 (= (= lt!1975837 lt!1976118) (= lambda!237793 lambda!237756))))

(declare-fun bs!1165632 () Bool)

(assert (= bs!1165632 (and d!1548094 d!1548074)))

(assert (=> bs!1165632 (= (= lt!1975837 lt!1976198) (= lambda!237793 lambda!237782))))

(declare-fun bs!1165633 () Bool)

(assert (= bs!1165633 (and d!1548094 b!4829812)))

(assert (=> bs!1165633 (= (= lt!1975837 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237793 lambda!237753))))

(declare-fun bs!1165634 () Bool)

(assert (= bs!1165634 (and d!1548094 d!1547930)))

(assert (=> bs!1165634 (= (= lt!1975837 lt!1975957) (= lambda!237793 lambda!237701))))

(declare-fun bs!1165635 () Bool)

(assert (= bs!1165635 (and d!1548094 b!4829919)))

(assert (=> bs!1165635 (= (= lt!1975837 lt!1976187) (= lambda!237793 lambda!237781))))

(assert (=> bs!1165629 (= (= lt!1975837 (extractMap!2709 (t!362673 (t!362673 (toList!7543 lm!2325))))) (= lambda!237793 lambda!237754))))

(assert (=> bs!1165635 (= (= lt!1975837 (+!2546 lt!1975837 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (= lambda!237793 lambda!237780))))

(declare-fun bs!1165636 () Bool)

(assert (= bs!1165636 (and d!1548094 b!4829642)))

(assert (=> bs!1165636 (= lambda!237793 lambda!237698)))

(declare-fun bs!1165638 () Bool)

(assert (= bs!1165638 (and d!1548094 d!1548068)))

(assert (=> bs!1165638 (= (= lt!1975837 lt!1975946) (= lambda!237793 lambda!237778))))

(assert (=> d!1548094 true))

(assert (=> d!1548094 (forall!12665 (toList!7544 lt!1975837) lambda!237793)))

(declare-fun lt!1976222 () Unit!143577)

(declare-fun choose!35224 (ListMap!6915) Unit!143577)

(assert (=> d!1548094 (= lt!1976222 (choose!35224 lt!1975837))))

(assert (=> d!1548094 (= (lemmaContainsAllItsOwnKeys!1001 lt!1975837) lt!1976222)))

(declare-fun bs!1165640 () Bool)

(assert (= bs!1165640 d!1548094))

(declare-fun m!5822516 () Bool)

(assert (=> bs!1165640 m!5822516))

(declare-fun m!5822518 () Bool)

(assert (=> bs!1165640 m!5822518))

(assert (=> bm!336582 d!1548094))

(declare-fun d!1548098 () Bool)

(declare-fun res!2057031 () Bool)

(declare-fun e!3018100 () Bool)

(assert (=> d!1548098 (=> res!2057031 e!3018100)))

(assert (=> d!1548098 (= res!2057031 (is-Nil!55053 (t!362673 (toList!7543 lm!2325))))))

(assert (=> d!1548098 (= (forall!12663 (t!362673 (toList!7543 lm!2325)) lambda!237657) e!3018100)))

(declare-fun b!4829964 () Bool)

(declare-fun e!3018101 () Bool)

(assert (=> b!4829964 (= e!3018100 e!3018101)))

(declare-fun res!2057032 () Bool)

(assert (=> b!4829964 (=> (not res!2057032) (not e!3018101))))

(assert (=> b!4829964 (= res!2057032 (dynLambda!22238 lambda!237657 (h!61487 (t!362673 (toList!7543 lm!2325)))))))

(declare-fun b!4829965 () Bool)

(assert (=> b!4829965 (= e!3018101 (forall!12663 (t!362673 (t!362673 (toList!7543 lm!2325))) lambda!237657))))

(assert (= (and d!1548098 (not res!2057031)) b!4829964))

(assert (= (and b!4829964 res!2057032) b!4829965))

(declare-fun b_lambda!190433 () Bool)

(assert (=> (not b_lambda!190433) (not b!4829964)))

(declare-fun m!5822520 () Bool)

(assert (=> b!4829964 m!5822520))

(declare-fun m!5822522 () Bool)

(assert (=> b!4829965 m!5822522))

(assert (=> b!4829611 d!1548098))

(declare-fun d!1548100 () Bool)

(declare-fun res!2057033 () Bool)

(declare-fun e!3018102 () Bool)

(assert (=> d!1548100 (=> res!2057033 e!3018102)))

(assert (=> d!1548100 (= res!2057033 (is-Nil!55052 (toList!7544 lt!1975837)))))

(assert (=> d!1548100 (= (forall!12665 (toList!7544 lt!1975837) lambda!237701) e!3018102)))

(declare-fun b!4829966 () Bool)

(declare-fun e!3018103 () Bool)

(assert (=> b!4829966 (= e!3018102 e!3018103)))

(declare-fun res!2057034 () Bool)

(assert (=> b!4829966 (=> (not res!2057034) (not e!3018103))))

(assert (=> b!4829966 (= res!2057034 (dynLambda!22240 lambda!237701 (h!61486 (toList!7544 lt!1975837))))))

(declare-fun b!4829967 () Bool)

(assert (=> b!4829967 (= e!3018103 (forall!12665 (t!362672 (toList!7544 lt!1975837)) lambda!237701))))

(assert (= (and d!1548100 (not res!2057033)) b!4829966))

(assert (= (and b!4829966 res!2057034) b!4829967))

(declare-fun b_lambda!190435 () Bool)

(assert (=> (not b_lambda!190435) (not b!4829966)))

(declare-fun m!5822524 () Bool)

(assert (=> b!4829966 m!5822524))

(declare-fun m!5822526 () Bool)

(assert (=> b!4829967 m!5822526))

(assert (=> b!4829644 d!1548100))

(declare-fun d!1548102 () Bool)

(declare-fun lt!1976244 () Bool)

(assert (=> d!1548102 (= lt!1976244 (set.member key!5594 (content!9830 e!3017867)))))

(declare-fun e!3018104 () Bool)

(assert (=> d!1548102 (= lt!1976244 e!3018104)))

(declare-fun res!2057036 () Bool)

(assert (=> d!1548102 (=> (not res!2057036) (not e!3018104))))

(assert (=> d!1548102 (= res!2057036 (is-Cons!55056 e!3017867))))

(assert (=> d!1548102 (= (contains!18862 e!3017867 key!5594) lt!1976244)))

(declare-fun b!4829968 () Bool)

(declare-fun e!3018105 () Bool)

(assert (=> b!4829968 (= e!3018104 e!3018105)))

(declare-fun res!2057035 () Bool)

(assert (=> b!4829968 (=> res!2057035 e!3018105)))

(assert (=> b!4829968 (= res!2057035 (= (h!61490 e!3017867) key!5594))))

(declare-fun b!4829969 () Bool)

(assert (=> b!4829969 (= e!3018105 (contains!18862 (t!362676 e!3017867) key!5594))))

(assert (= (and d!1548102 res!2057036) b!4829968))

(assert (= (and b!4829968 (not res!2057035)) b!4829969))

(declare-fun m!5822528 () Bool)

(assert (=> d!1548102 m!5822528))

(declare-fun m!5822530 () Bool)

(assert (=> d!1548102 m!5822530))

(declare-fun m!5822532 () Bool)

(assert (=> b!4829969 m!5822532))

(assert (=> bm!336573 d!1548102))

(assert (=> b!4829615 d!1548084))

(assert (=> b!4829615 d!1548088))

(declare-fun d!1548104 () Bool)

(declare-fun res!2057041 () Bool)

(declare-fun e!3018110 () Bool)

(assert (=> d!1548104 (=> res!2057041 e!3018110)))

(assert (=> d!1548104 (= res!2057041 (and (is-Cons!55053 (toList!7543 lm!2325)) (= (_1!32462 (h!61487 (toList!7543 lm!2325))) (hash!5460 hashF!1543 key!5594))))))

(assert (=> d!1548104 (= (containsKey!4422 (toList!7543 lm!2325) (hash!5460 hashF!1543 key!5594)) e!3018110)))

(declare-fun b!4829974 () Bool)

(declare-fun e!3018111 () Bool)

(assert (=> b!4829974 (= e!3018110 e!3018111)))

(declare-fun res!2057042 () Bool)

(assert (=> b!4829974 (=> (not res!2057042) (not e!3018111))))

(assert (=> b!4829974 (= res!2057042 (and (or (not (is-Cons!55053 (toList!7543 lm!2325))) (bvsle (_1!32462 (h!61487 (toList!7543 lm!2325))) (hash!5460 hashF!1543 key!5594))) (is-Cons!55053 (toList!7543 lm!2325)) (bvslt (_1!32462 (h!61487 (toList!7543 lm!2325))) (hash!5460 hashF!1543 key!5594))))))

(declare-fun b!4829975 () Bool)

(assert (=> b!4829975 (= e!3018111 (containsKey!4422 (t!362673 (toList!7543 lm!2325)) (hash!5460 hashF!1543 key!5594)))))

(assert (= (and d!1548104 (not res!2057041)) b!4829974))

(assert (= (and b!4829974 res!2057042) b!4829975))

(assert (=> b!4829975 m!5821848))

(declare-fun m!5822534 () Bool)

(assert (=> b!4829975 m!5822534))

(assert (=> d!1547908 d!1548104))

(declare-fun d!1548106 () Bool)

(assert (=> d!1548106 (= (invariantList!1823 (toList!7544 lt!1975957)) (noDuplicatedKeys!489 (toList!7544 lt!1975957)))))

(declare-fun bs!1165651 () Bool)

(assert (= bs!1165651 d!1548106))

(declare-fun m!5822536 () Bool)

(assert (=> bs!1165651 m!5822536))

(assert (=> b!4829643 d!1548106))

(assert (=> b!4829614 d!1547994))

(assert (=> b!4829614 d!1547996))

(declare-fun d!1548108 () Bool)

(declare-fun res!2057043 () Bool)

(declare-fun e!3018112 () Bool)

(assert (=> d!1548108 (=> res!2057043 e!3018112)))

(assert (=> d!1548108 (= res!2057043 (is-Nil!55052 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325))))))))

(assert (=> d!1548108 (= (forall!12665 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325)))) (ite c!822913 lambda!237698 lambda!237700)) e!3018112)))

(declare-fun b!4829976 () Bool)

(declare-fun e!3018113 () Bool)

(assert (=> b!4829976 (= e!3018112 e!3018113)))

(declare-fun res!2057044 () Bool)

(assert (=> b!4829976 (=> (not res!2057044) (not e!3018113))))

(assert (=> b!4829976 (= res!2057044 (dynLambda!22240 (ite c!822913 lambda!237698 lambda!237700) (h!61486 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun b!4829977 () Bool)

(assert (=> b!4829977 (= e!3018113 (forall!12665 (t!362672 (ite c!822913 (toList!7544 lt!1975837) (_2!32462 (h!61487 (toList!7543 lm!2325))))) (ite c!822913 lambda!237698 lambda!237700)))))

(assert (= (and d!1548108 (not res!2057043)) b!4829976))

(assert (= (and b!4829976 res!2057044) b!4829977))

(declare-fun b_lambda!190437 () Bool)

(assert (=> (not b_lambda!190437) (not b!4829976)))

(declare-fun m!5822560 () Bool)

(assert (=> b!4829976 m!5822560))

(declare-fun m!5822564 () Bool)

(assert (=> b!4829977 m!5822564))

(assert (=> bm!336581 d!1548108))

(assert (=> bm!336580 d!1548108))

(assert (=> b!4829570 d!1547986))

(assert (=> b!4829570 d!1547988))

(assert (=> b!4829613 d!1548088))

(declare-fun tp_is_empty!34553 () Bool)

(declare-fun b!4829984 () Bool)

(declare-fun e!3018117 () Bool)

(declare-fun tp!1362855 () Bool)

(assert (=> b!4829984 (= e!3018117 (and tp_is_empty!34549 tp_is_empty!34553 tp!1362855))))

(assert (=> b!4829672 (= tp!1362845 e!3018117)))

(assert (= (and b!4829672 (is-Cons!55052 (_2!32462 (h!61487 (toList!7543 lm!2325))))) b!4829984))

(declare-fun b!4829985 () Bool)

(declare-fun e!3018118 () Bool)

(declare-fun tp!1362856 () Bool)

(declare-fun tp!1362857 () Bool)

(assert (=> b!4829985 (= e!3018118 (and tp!1362856 tp!1362857))))

(assert (=> b!4829672 (= tp!1362846 e!3018118)))

(assert (= (and b!4829672 (is-Cons!55053 (t!362673 (toList!7543 lm!2325)))) b!4829985))

(declare-fun b_lambda!190439 () Bool)

(assert (= b_lambda!190433 (or start!501534 b_lambda!190439)))

(declare-fun bs!1165657 () Bool)

(declare-fun d!1548114 () Bool)

(assert (= bs!1165657 (and d!1548114 start!501534)))

(assert (=> bs!1165657 (= (dynLambda!22238 lambda!237657 (h!61487 (t!362673 (toList!7543 lm!2325)))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))

(assert (=> bs!1165657 m!5822232))

(assert (=> b!4829964 d!1548114))

(declare-fun b_lambda!190441 () Bool)

(assert (= b_lambda!190415 (or d!1547930 b_lambda!190441)))

(declare-fun bs!1165658 () Bool)

(declare-fun d!1548116 () Bool)

(assert (= bs!1165658 (and d!1548116 d!1547930)))

(assert (=> bs!1165658 (= (dynLambda!22240 lambda!237701 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (contains!18858 lt!1975957 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(declare-fun m!5822586 () Bool)

(assert (=> bs!1165658 m!5822586))

(assert (=> b!4829875 d!1548116))

(declare-fun b_lambda!190443 () Bool)

(assert (= b_lambda!190425 (or b!4829646 b_lambda!190443)))

(declare-fun bs!1165659 () Bool)

(declare-fun d!1548118 () Bool)

(assert (= bs!1165659 (and d!1548118 b!4829646)))

(assert (=> bs!1165659 (= (dynLambda!22240 lambda!237700 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325))))) (contains!18858 lt!1975946 (_1!32461 (h!61486 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))))

(assert (=> bs!1165659 m!5822016))

(assert (=> d!1548072 d!1548118))

(declare-fun b_lambda!190445 () Bool)

(assert (= b_lambda!190411 (or d!1547906 b_lambda!190445)))

(declare-fun bs!1165660 () Bool)

(declare-fun d!1548120 () Bool)

(assert (= bs!1165660 (and d!1548120 d!1547906)))

(declare-fun allKeysSameHash!2015 (List!55176 (_ BitVec 64) Hashable!7301) Bool)

(assert (=> bs!1165660 (= (dynLambda!22238 lambda!237665 (h!61487 (toList!7543 lm!2325))) (allKeysSameHash!2015 (_2!32462 (h!61487 (toList!7543 lm!2325))) (_1!32462 (h!61487 (toList!7543 lm!2325))) hashF!1543))))

(declare-fun m!5822588 () Bool)

(assert (=> bs!1165660 m!5822588))

(assert (=> b!4829789 d!1548120))

(declare-fun b_lambda!190447 () Bool)

(assert (= b_lambda!190413 (or d!1547946 b_lambda!190447)))

(declare-fun bs!1165661 () Bool)

(declare-fun d!1548122 () Bool)

(assert (= bs!1165661 (and d!1548122 d!1547946)))

(assert (=> bs!1165661 (= (dynLambda!22238 lambda!237704 (h!61487 (t!362673 (toList!7543 lm!2325)))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (t!362673 (toList!7543 lm!2325))))))))

(assert (=> bs!1165661 m!5822232))

(assert (=> b!4829861 d!1548122))

(declare-fun b_lambda!190449 () Bool)

(assert (= b_lambda!190419 (or b!4829646 b_lambda!190449)))

(declare-fun bs!1165662 () Bool)

(declare-fun d!1548124 () Bool)

(assert (= bs!1165662 (and d!1548124 b!4829646)))

(assert (=> bs!1165662 (= (dynLambda!22240 lambda!237699 (h!61486 (toList!7544 lt!1975837))) (contains!18858 lt!1975837 (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun m!5822590 () Bool)

(assert (=> bs!1165662 m!5822590))

(assert (=> b!4829890 d!1548124))

(declare-fun b_lambda!190451 () Bool)

(assert (= b_lambda!190421 (or b!4829646 b_lambda!190451)))

(declare-fun bs!1165663 () Bool)

(declare-fun d!1548126 () Bool)

(assert (= bs!1165663 (and d!1548126 b!4829646)))

(assert (=> bs!1165663 (= (dynLambda!22240 lambda!237700 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325)))))) (contains!18858 lt!1975946 (_1!32461 (h!61486 (t!362672 (_2!32462 (h!61487 (toList!7543 lm!2325))))))))))

(declare-fun m!5822592 () Bool)

(assert (=> bs!1165663 m!5822592))

(assert (=> b!4829901 d!1548126))

(declare-fun b_lambda!190453 () Bool)

(assert (= b_lambda!190431 (or start!501534 b_lambda!190453)))

(declare-fun bs!1165664 () Bool)

(declare-fun d!1548128 () Bool)

(assert (= bs!1165664 (and d!1548128 start!501534)))

(assert (=> bs!1165664 (= (dynLambda!22238 lambda!237657 (h!61487 (t!362673 (toList!7543 lt!1975836)))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (t!362673 (toList!7543 lt!1975836))))))))

(declare-fun m!5822594 () Bool)

(assert (=> bs!1165664 m!5822594))

(assert (=> b!4829946 d!1548128))

(declare-fun b_lambda!190455 () Bool)

(assert (= b_lambda!190423 (or b!4829646 b_lambda!190455)))

(declare-fun bs!1165665 () Bool)

(declare-fun d!1548130 () Bool)

(assert (= bs!1165665 (and d!1548130 b!4829646)))

(assert (=> bs!1165665 (= (dynLambda!22240 lambda!237700 (h!61486 (toList!7544 lt!1975960))) (contains!18858 lt!1975946 (_1!32461 (h!61486 (toList!7544 lt!1975960)))))))

(declare-fun m!5822596 () Bool)

(assert (=> bs!1165665 m!5822596))

(assert (=> b!4829910 d!1548130))

(declare-fun b_lambda!190457 () Bool)

(assert (= b_lambda!190429 (or b!4829646 b_lambda!190457)))

(declare-fun bs!1165666 () Bool)

(declare-fun d!1548132 () Bool)

(assert (= bs!1165666 (and d!1548132 b!4829646)))

(assert (=> bs!1165666 (= (dynLambda!22240 lambda!237700 (h!61486 (toList!7544 lt!1975837))) (contains!18858 lt!1975946 (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun m!5822598 () Bool)

(assert (=> bs!1165666 m!5822598))

(assert (=> b!4829922 d!1548132))

(declare-fun b_lambda!190459 () Bool)

(assert (= b_lambda!190417 (or d!1547948 b_lambda!190459)))

(declare-fun bs!1165667 () Bool)

(declare-fun d!1548134 () Bool)

(assert (= bs!1165667 (and d!1548134 d!1547948)))

(assert (=> bs!1165667 (= (dynLambda!22238 lambda!237707 (h!61487 (toList!7543 lm!2325))) (noDuplicateKeys!2467 (_2!32462 (h!61487 (toList!7543 lm!2325)))))))

(assert (=> bs!1165667 m!5821998))

(assert (=> b!4829879 d!1548134))

(declare-fun b_lambda!190461 () Bool)

(assert (= b_lambda!190409 (or d!1547912 b_lambda!190461)))

(declare-fun bs!1165668 () Bool)

(declare-fun d!1548136 () Bool)

(assert (= bs!1165668 (and d!1548136 d!1547912)))

(assert (=> bs!1165668 (= (dynLambda!22238 lambda!237666 (h!61487 (toList!7543 lt!1975836))) (allKeysSameHash!2015 (_2!32462 (h!61487 (toList!7543 lt!1975836))) (_1!32462 (h!61487 (toList!7543 lt!1975836))) hashF!1543))))

(declare-fun m!5822600 () Bool)

(assert (=> bs!1165668 m!5822600))

(assert (=> b!4829769 d!1548136))

(declare-fun b_lambda!190463 () Bool)

(assert (= b_lambda!190435 (or d!1547930 b_lambda!190463)))

(declare-fun bs!1165669 () Bool)

(declare-fun d!1548138 () Bool)

(assert (= bs!1165669 (and d!1548138 d!1547930)))

(assert (=> bs!1165669 (= (dynLambda!22240 lambda!237701 (h!61486 (toList!7544 lt!1975837))) (contains!18858 lt!1975957 (_1!32461 (h!61486 (toList!7544 lt!1975837)))))))

(declare-fun m!5822602 () Bool)

(assert (=> bs!1165669 m!5822602))

(assert (=> b!4829966 d!1548138))

(push 1)

(assert (not b_lambda!190441))

(assert (not b!4829816))

(assert (not b_lambda!190455))

(assert (not bs!1165665))

(assert (not b!4829781))

(assert (not d!1548030))

(assert (not bm!336596))

(assert (not d!1548012))

(assert (not bs!1165669))

(assert (not d!1548024))

(assert (not b!4829985))

(assert (not bm!336598))

(assert (not b!4829965))

(assert (not b!4829943))

(assert (not b!4829925))

(assert (not b!4829878))

(assert (not d!1548062))

(assert (not b_lambda!190451))

(assert (not b!4829845))

(assert (not b_lambda!190399))

(assert (not d!1547986))

(assert (not b!4829916))

(assert (not b!4829869))

(assert tp_is_empty!34553)

(assert (not b!4829967))

(assert (not b!4829907))

(assert (not b!4829881))

(assert (not d!1548020))

(assert (not b!4829855))

(assert (not b!4829911))

(assert (not b!4829918))

(assert (not d!1548088))

(assert (not b!4829860))

(assert (not b!4829857))

(assert (not b!4829817))

(assert (not b!4829891))

(assert (not b_lambda!190439))

(assert (not b!4829865))

(assert (not bm!336601))

(assert (not b!4829886))

(assert (not d!1548048))

(assert (not b!4829787))

(assert (not bm!336602))

(assert (not b!4829767))

(assert (not d!1548094))

(assert (not bs!1165657))

(assert (not b!4829914))

(assert (not b!4829975))

(assert (not bs!1165668))

(assert (not b!4829908))

(assert (not bs!1165660))

(assert (not b!4829839))

(assert (not b!4829924))

(assert (not b!4829815))

(assert (not b!4829862))

(assert (not b!4829945))

(assert (not b_lambda!190443))

(assert (not d!1548102))

(assert (not d!1548074))

(assert (not b!4829923))

(assert (not b!4829756))

(assert (not b!4829919))

(assert (not bs!1165662))

(assert (not b!4829790))

(assert (not d!1548066))

(assert (not b!4829800))

(assert (not b!4829917))

(assert (not bs!1165666))

(assert (not b_lambda!190449))

(assert (not bm!336603))

(assert (not b!4829837))

(assert (not b!4829814))

(assert (not d!1548082))

(assert (not b_lambda!190463))

(assert (not d!1548058))

(assert (not d!1548054))

(assert (not b!4829880))

(assert (not d!1548028))

(assert (not b_lambda!190447))

(assert (not b!4829894))

(assert (not b_lambda!190453))

(assert (not d!1548006))

(assert (not b!4829842))

(assert (not b!4829808))

(assert (not b!4829853))

(assert (not b!4829809))

(assert (not d!1548018))

(assert (not b!4829947))

(assert (not b_lambda!190437))

(assert (not b!4829969))

(assert (not b!4829892))

(assert (not b!4829944))

(assert (not b!4829813))

(assert (not d!1548016))

(assert (not d!1548014))

(assert (not b!4829794))

(assert (not d!1547998))

(assert (not b!4829753))

(assert (not d!1548072))

(assert (not bm!336597))

(assert (not bs!1165667))

(assert (not b!4829977))

(assert (not b_lambda!190445))

(assert (not d!1548034))

(assert (not b!4829927))

(assert (not d!1547984))

(assert (not b!4829788))

(assert (not b_lambda!190401))

(assert (not d!1547992))

(assert (not b!4829885))

(assert (not d!1548050))

(assert (not b_lambda!190457))

(assert (not d!1548056))

(assert (not bm!336599))

(assert (not b!4829883))

(assert (not b_lambda!190461))

(assert (not b!4829889))

(assert (not b!4829770))

(assert (not d!1548068))

(assert (not bs!1165661))

(assert (not b!4829902))

(assert (not b!4829792))

(assert tp_is_empty!34549)

(assert (not b!4829898))

(assert (not b!4829893))

(assert (not bm!336600))

(assert (not b_lambda!190459))

(assert (not d!1548084))

(assert (not bs!1165663))

(assert (not d!1548040))

(assert (not b!4829929))

(assert (not b!4829900))

(assert (not b!4829793))

(assert (not d!1547994))

(assert (not b!4829940))

(assert (not d!1548106))

(assert (not b!4829876))

(assert (not bs!1165659))

(assert (not b!4829984))

(assert (not b!4829895))

(assert (not b!4829807))

(assert (not b!4829897))

(assert (not b!4829932))

(assert (not b!4829930))

(assert (not bs!1165658))

(assert (not b!4829926))

(assert (not b!4829841))

(assert (not bs!1165664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

