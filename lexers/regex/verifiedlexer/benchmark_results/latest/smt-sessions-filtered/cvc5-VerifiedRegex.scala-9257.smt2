; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490992 () Bool)

(assert start!490992)

(declare-fun b!4781621 () Bool)

(declare-fun res!2030309 () Bool)

(declare-fun e!2985224 () Bool)

(assert (=> b!4781621 (=> (not res!2030309) (not e!2985224))))

(declare-datatypes ((K!15572 0))(
  ( (K!15573 (val!20763 Int)) )
))
(declare-datatypes ((V!15818 0))(
  ( (V!15819 (val!20764 Int)) )
))
(declare-datatypes ((tuple2!56500 0))(
  ( (tuple2!56501 (_1!31544 K!15572) (_2!31544 V!15818)) )
))
(declare-datatypes ((List!54129 0))(
  ( (Nil!54005) (Cons!54005 (h!60425 tuple2!56500) (t!361579 List!54129)) )
))
(declare-datatypes ((tuple2!56502 0))(
  ( (tuple2!56503 (_1!31545 (_ BitVec 64)) (_2!31545 List!54129)) )
))
(declare-datatypes ((List!54130 0))(
  ( (Nil!54006) (Cons!54006 (h!60426 tuple2!56502) (t!361580 List!54130)) )
))
(declare-datatypes ((ListLongMap!5167 0))(
  ( (ListLongMap!5168 (toList!6745 List!54130)) )
))
(declare-fun lm!2709 () ListLongMap!5167)

(declare-fun key!6641 () K!15572)

(declare-fun containsKeyBiggerList!489 (List!54130 K!15572) Bool)

(assert (=> b!4781621 (= res!2030309 (containsKeyBiggerList!489 (toList!6745 lm!2709) key!6641))))

(declare-fun b!4781622 () Bool)

(declare-fun res!2030313 () Bool)

(assert (=> b!4781622 (=> (not res!2030313) (not e!2985224))))

(declare-datatypes ((Hashable!6833 0))(
  ( (HashableExt!6832 (__x!32856 Int)) )
))
(declare-fun hashF!1687 () Hashable!6833)

(declare-fun allKeysSameHashInMap!2238 (ListLongMap!5167 Hashable!6833) Bool)

(assert (=> b!4781622 (= res!2030313 (allKeysSameHashInMap!2238 lm!2709 hashF!1687))))

(declare-fun b!4781623 () Bool)

(declare-fun res!2030314 () Bool)

(declare-fun e!2985221 () Bool)

(assert (=> b!4781623 (=> res!2030314 e!2985221)))

(declare-fun lt!1944043 () (_ BitVec 64))

(assert (=> b!4781623 (= res!2030314 (or (and (is-Cons!54006 (toList!6745 lm!2709)) (= (_1!31545 (h!60426 (toList!6745 lm!2709))) lt!1944043)) (not (is-Cons!54006 (toList!6745 lm!2709)))))))

(declare-fun b!4781624 () Bool)

(declare-fun e!2985223 () Bool)

(assert (=> b!4781624 (= e!2985221 e!2985223)))

(declare-fun res!2030311 () Bool)

(assert (=> b!4781624 (=> res!2030311 e!2985223)))

(declare-fun containsKey!3812 (List!54129 K!15572) Bool)

(assert (=> b!4781624 (= res!2030311 (containsKey!3812 (_2!31545 (h!60426 (toList!6745 lm!2709))) key!6641))))

(declare-fun apply!12888 (ListLongMap!5167 (_ BitVec 64)) List!54129)

(assert (=> b!4781624 (not (containsKey!3812 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!139280 0))(
  ( (Unit!139281) )
))
(declare-fun lt!1944037 () Unit!139280)

(declare-fun lemmaNotSameHashThenCannotContainKey!187 (ListLongMap!5167 K!15572 (_ BitVec 64) Hashable!6833) Unit!139280)

(assert (=> b!4781624 (= lt!1944037 (lemmaNotSameHashThenCannotContainKey!187 lm!2709 key!6641 (_1!31545 (h!60426 (toList!6745 lm!2709))) hashF!1687))))

(declare-fun b!4781625 () Bool)

(declare-fun lambda!228268 () Int)

(declare-fun forall!12125 (List!54130 Int) Bool)

(declare-fun tail!9186 (ListLongMap!5167) ListLongMap!5167)

(assert (=> b!4781625 (= e!2985223 (forall!12125 (toList!6745 (tail!9186 lm!2709)) lambda!228268))))

(declare-fun tail!9187 (List!54130) List!54130)

(assert (=> b!4781625 (containsKeyBiggerList!489 (tail!9187 (toList!6745 lm!2709)) key!6641)))

(declare-fun lt!1944041 () Unit!139280)

(declare-fun lemmaInBiggerListButNotHeadThenTail!13 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> b!4781625 (= lt!1944041 (lemmaInBiggerListButNotHeadThenTail!13 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781626 () Bool)

(declare-fun e!2985222 () Bool)

(declare-fun tp!1357457 () Bool)

(assert (=> b!4781626 (= e!2985222 tp!1357457)))

(declare-fun b!4781627 () Bool)

(assert (=> b!4781627 (= e!2985224 (not e!2985221))))

(declare-fun res!2030310 () Bool)

(assert (=> b!4781627 (=> res!2030310 e!2985221)))

(declare-datatypes ((Option!12937 0))(
  ( (None!12936) (Some!12936 (v!48147 tuple2!56500)) )
))
(declare-fun lt!1944045 () Option!12937)

(declare-fun v!11584 () V!15818)

(declare-fun get!18364 (Option!12937) tuple2!56500)

(assert (=> b!4781627 (= res!2030310 (not (= (_2!31544 (get!18364 lt!1944045)) v!11584)))))

(declare-fun isDefined!10080 (Option!12937) Bool)

(assert (=> b!4781627 (isDefined!10080 lt!1944045)))

(declare-fun lt!1944036 () List!54129)

(declare-fun getPair!805 (List!54129 K!15572) Option!12937)

(assert (=> b!4781627 (= lt!1944045 (getPair!805 lt!1944036 key!6641))))

(declare-fun lt!1944035 () tuple2!56502)

(declare-fun lt!1944042 () Unit!139280)

(declare-fun forallContained!4069 (List!54130 Int tuple2!56502) Unit!139280)

(assert (=> b!4781627 (= lt!1944042 (forallContained!4069 (toList!6745 lm!2709) lambda!228268 lt!1944035))))

(declare-fun lt!1944040 () Unit!139280)

(declare-fun lemmaInGenMapThenGetPairDefined!579 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> b!4781627 (= lt!1944040 (lemmaInGenMapThenGetPairDefined!579 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1944038 () Unit!139280)

(assert (=> b!4781627 (= lt!1944038 (forallContained!4069 (toList!6745 lm!2709) lambda!228268 lt!1944035))))

(declare-fun contains!17542 (List!54130 tuple2!56502) Bool)

(assert (=> b!4781627 (contains!17542 (toList!6745 lm!2709) lt!1944035)))

(assert (=> b!4781627 (= lt!1944035 (tuple2!56503 lt!1944043 lt!1944036))))

(declare-fun lt!1944039 () Unit!139280)

(declare-fun lemmaGetValueImpliesTupleContained!612 (ListLongMap!5167 (_ BitVec 64) List!54129) Unit!139280)

(assert (=> b!4781627 (= lt!1944039 (lemmaGetValueImpliesTupleContained!612 lm!2709 lt!1944043 lt!1944036))))

(assert (=> b!4781627 (= lt!1944036 (apply!12888 lm!2709 lt!1944043))))

(declare-fun contains!17543 (ListLongMap!5167 (_ BitVec 64)) Bool)

(assert (=> b!4781627 (contains!17543 lm!2709 lt!1944043)))

(declare-fun hash!4821 (Hashable!6833 K!15572) (_ BitVec 64))

(assert (=> b!4781627 (= lt!1944043 (hash!4821 hashF!1687 key!6641))))

(declare-fun lt!1944034 () Unit!139280)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1029 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> b!4781627 (= lt!1944034 (lemmaInGenMapThenLongMapContainsHash!1029 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6217 0))(
  ( (ListMap!6218 (toList!6746 List!54129)) )
))
(declare-fun contains!17544 (ListMap!6217 K!15572) Bool)

(declare-fun extractMap!2360 (List!54130) ListMap!6217)

(assert (=> b!4781627 (contains!17544 (extractMap!2360 (toList!6745 lm!2709)) key!6641)))

(declare-fun lt!1944044 () Unit!139280)

(declare-fun lemmaListContainsThenExtractedMapContains!681 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> b!4781627 (= lt!1944044 (lemmaListContainsThenExtractedMapContains!681 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2030312 () Bool)

(assert (=> start!490992 (=> (not res!2030312) (not e!2985224))))

(assert (=> start!490992 (= res!2030312 (forall!12125 (toList!6745 lm!2709) lambda!228268))))

(assert (=> start!490992 e!2985224))

(declare-fun inv!69599 (ListLongMap!5167) Bool)

(assert (=> start!490992 (and (inv!69599 lm!2709) e!2985222)))

(assert (=> start!490992 true))

(declare-fun tp_is_empty!33233 () Bool)

(assert (=> start!490992 tp_is_empty!33233))

(declare-fun tp_is_empty!33235 () Bool)

(assert (=> start!490992 tp_is_empty!33235))

(assert (= (and start!490992 res!2030312) b!4781622))

(assert (= (and b!4781622 res!2030313) b!4781621))

(assert (= (and b!4781621 res!2030309) b!4781627))

(assert (= (and b!4781627 (not res!2030310)) b!4781623))

(assert (= (and b!4781623 (not res!2030314)) b!4781624))

(assert (= (and b!4781624 (not res!2030311)) b!4781625))

(assert (= start!490992 b!4781626))

(declare-fun m!5758762 () Bool)

(assert (=> b!4781624 m!5758762))

(declare-fun m!5758764 () Bool)

(assert (=> b!4781624 m!5758764))

(assert (=> b!4781624 m!5758764))

(declare-fun m!5758766 () Bool)

(assert (=> b!4781624 m!5758766))

(declare-fun m!5758768 () Bool)

(assert (=> b!4781624 m!5758768))

(declare-fun m!5758770 () Bool)

(assert (=> start!490992 m!5758770))

(declare-fun m!5758772 () Bool)

(assert (=> start!490992 m!5758772))

(declare-fun m!5758774 () Bool)

(assert (=> b!4781627 m!5758774))

(declare-fun m!5758776 () Bool)

(assert (=> b!4781627 m!5758776))

(declare-fun m!5758778 () Bool)

(assert (=> b!4781627 m!5758778))

(declare-fun m!5758780 () Bool)

(assert (=> b!4781627 m!5758780))

(declare-fun m!5758782 () Bool)

(assert (=> b!4781627 m!5758782))

(declare-fun m!5758784 () Bool)

(assert (=> b!4781627 m!5758784))

(declare-fun m!5758786 () Bool)

(assert (=> b!4781627 m!5758786))

(declare-fun m!5758788 () Bool)

(assert (=> b!4781627 m!5758788))

(declare-fun m!5758790 () Bool)

(assert (=> b!4781627 m!5758790))

(declare-fun m!5758792 () Bool)

(assert (=> b!4781627 m!5758792))

(assert (=> b!4781627 m!5758786))

(declare-fun m!5758794 () Bool)

(assert (=> b!4781627 m!5758794))

(declare-fun m!5758796 () Bool)

(assert (=> b!4781627 m!5758796))

(declare-fun m!5758798 () Bool)

(assert (=> b!4781627 m!5758798))

(assert (=> b!4781627 m!5758774))

(declare-fun m!5758800 () Bool)

(assert (=> b!4781627 m!5758800))

(declare-fun m!5758802 () Bool)

(assert (=> b!4781622 m!5758802))

(declare-fun m!5758804 () Bool)

(assert (=> b!4781621 m!5758804))

(declare-fun m!5758806 () Bool)

(assert (=> b!4781625 m!5758806))

(declare-fun m!5758808 () Bool)

(assert (=> b!4781625 m!5758808))

(declare-fun m!5758810 () Bool)

(assert (=> b!4781625 m!5758810))

(assert (=> b!4781625 m!5758806))

(declare-fun m!5758812 () Bool)

(assert (=> b!4781625 m!5758812))

(declare-fun m!5758814 () Bool)

(assert (=> b!4781625 m!5758814))

(push 1)

(assert (not b!4781622))

(assert tp_is_empty!33233)

(assert (not b!4781625))

(assert (not b!4781626))

(assert (not b!4781621))

(assert (not b!4781624))

(assert (not b!4781627))

(assert tp_is_empty!33235)

(assert (not start!490992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1528750 () Bool)

(declare-fun res!2030341 () Bool)

(declare-fun e!2985245 () Bool)

(assert (=> d!1528750 (=> res!2030341 e!2985245)))

(assert (=> d!1528750 (= res!2030341 (is-Nil!54006 (toList!6745 lm!2709)))))

(assert (=> d!1528750 (= (forall!12125 (toList!6745 lm!2709) lambda!228268) e!2985245)))

(declare-fun b!4781657 () Bool)

(declare-fun e!2985246 () Bool)

(assert (=> b!4781657 (= e!2985245 e!2985246)))

(declare-fun res!2030342 () Bool)

(assert (=> b!4781657 (=> (not res!2030342) (not e!2985246))))

(declare-fun dynLambda!22014 (Int tuple2!56502) Bool)

(assert (=> b!4781657 (= res!2030342 (dynLambda!22014 lambda!228268 (h!60426 (toList!6745 lm!2709))))))

(declare-fun b!4781658 () Bool)

(assert (=> b!4781658 (= e!2985246 (forall!12125 (t!361580 (toList!6745 lm!2709)) lambda!228268))))

(assert (= (and d!1528750 (not res!2030341)) b!4781657))

(assert (= (and b!4781657 res!2030342) b!4781658))

(declare-fun b_lambda!185667 () Bool)

(assert (=> (not b_lambda!185667) (not b!4781657)))

(declare-fun m!5758870 () Bool)

(assert (=> b!4781657 m!5758870))

(declare-fun m!5758872 () Bool)

(assert (=> b!4781658 m!5758872))

(assert (=> start!490992 d!1528750))

(declare-fun d!1528752 () Bool)

(declare-fun isStrictlySorted!847 (List!54130) Bool)

(assert (=> d!1528752 (= (inv!69599 lm!2709) (isStrictlySorted!847 (toList!6745 lm!2709)))))

(declare-fun bs!1151938 () Bool)

(assert (= bs!1151938 d!1528752))

(declare-fun m!5758874 () Bool)

(assert (=> bs!1151938 m!5758874))

(assert (=> start!490992 d!1528752))

(declare-fun bs!1151939 () Bool)

(declare-fun d!1528754 () Bool)

(assert (= bs!1151939 (and d!1528754 start!490992)))

(declare-fun lambda!228280 () Int)

(assert (=> bs!1151939 (= lambda!228280 lambda!228268)))

(assert (=> d!1528754 (containsKeyBiggerList!489 (tail!9187 (toList!6745 lm!2709)) key!6641)))

(declare-fun lt!1944084 () Unit!139280)

(declare-fun choose!34274 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> d!1528754 (= lt!1944084 (choose!34274 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528754 (forall!12125 (toList!6745 lm!2709) lambda!228280)))

(assert (=> d!1528754 (= (lemmaInBiggerListButNotHeadThenTail!13 lm!2709 key!6641 hashF!1687) lt!1944084)))

(declare-fun bs!1151940 () Bool)

(assert (= bs!1151940 d!1528754))

(assert (=> bs!1151940 m!5758806))

(assert (=> bs!1151940 m!5758806))

(assert (=> bs!1151940 m!5758812))

(declare-fun m!5758880 () Bool)

(assert (=> bs!1151940 m!5758880))

(declare-fun m!5758882 () Bool)

(assert (=> bs!1151940 m!5758882))

(assert (=> b!4781625 d!1528754))

(declare-fun d!1528760 () Bool)

(declare-fun res!2030347 () Bool)

(declare-fun e!2985251 () Bool)

(assert (=> d!1528760 (=> res!2030347 e!2985251)))

(assert (=> d!1528760 (= res!2030347 (is-Nil!54006 (toList!6745 (tail!9186 lm!2709))))))

(assert (=> d!1528760 (= (forall!12125 (toList!6745 (tail!9186 lm!2709)) lambda!228268) e!2985251)))

(declare-fun b!4781663 () Bool)

(declare-fun e!2985252 () Bool)

(assert (=> b!4781663 (= e!2985251 e!2985252)))

(declare-fun res!2030348 () Bool)

(assert (=> b!4781663 (=> (not res!2030348) (not e!2985252))))

(assert (=> b!4781663 (= res!2030348 (dynLambda!22014 lambda!228268 (h!60426 (toList!6745 (tail!9186 lm!2709)))))))

(declare-fun b!4781664 () Bool)

(assert (=> b!4781664 (= e!2985252 (forall!12125 (t!361580 (toList!6745 (tail!9186 lm!2709))) lambda!228268))))

(assert (= (and d!1528760 (not res!2030347)) b!4781663))

(assert (= (and b!4781663 res!2030348) b!4781664))

(declare-fun b_lambda!185669 () Bool)

(assert (=> (not b_lambda!185669) (not b!4781663)))

(declare-fun m!5758884 () Bool)

(assert (=> b!4781663 m!5758884))

(declare-fun m!5758886 () Bool)

(assert (=> b!4781664 m!5758886))

(assert (=> b!4781625 d!1528760))

(declare-fun d!1528762 () Bool)

(assert (=> d!1528762 (= (tail!9187 (toList!6745 lm!2709)) (t!361580 (toList!6745 lm!2709)))))

(assert (=> b!4781625 d!1528762))

(declare-fun d!1528766 () Bool)

(assert (=> d!1528766 (= (tail!9186 lm!2709) (ListLongMap!5168 (tail!9187 (toList!6745 lm!2709))))))

(declare-fun bs!1151942 () Bool)

(assert (= bs!1151942 d!1528766))

(assert (=> bs!1151942 m!5758806))

(assert (=> b!4781625 d!1528766))

(declare-fun d!1528768 () Bool)

(declare-fun res!2030357 () Bool)

(declare-fun e!2985260 () Bool)

(assert (=> d!1528768 (=> res!2030357 e!2985260)))

(declare-fun e!2985259 () Bool)

(assert (=> d!1528768 (= res!2030357 e!2985259)))

(declare-fun res!2030355 () Bool)

(assert (=> d!1528768 (=> (not res!2030355) (not e!2985259))))

(assert (=> d!1528768 (= res!2030355 (is-Cons!54006 (tail!9187 (toList!6745 lm!2709))))))

(assert (=> d!1528768 (= (containsKeyBiggerList!489 (tail!9187 (toList!6745 lm!2709)) key!6641) e!2985260)))

(declare-fun b!4781671 () Bool)

(assert (=> b!4781671 (= e!2985259 (containsKey!3812 (_2!31545 (h!60426 (tail!9187 (toList!6745 lm!2709)))) key!6641))))

(declare-fun b!4781672 () Bool)

(declare-fun e!2985261 () Bool)

(assert (=> b!4781672 (= e!2985260 e!2985261)))

(declare-fun res!2030356 () Bool)

(assert (=> b!4781672 (=> (not res!2030356) (not e!2985261))))

(assert (=> b!4781672 (= res!2030356 (is-Cons!54006 (tail!9187 (toList!6745 lm!2709))))))

(declare-fun b!4781673 () Bool)

(assert (=> b!4781673 (= e!2985261 (containsKeyBiggerList!489 (t!361580 (tail!9187 (toList!6745 lm!2709))) key!6641))))

(assert (= (and d!1528768 res!2030355) b!4781671))

(assert (= (and d!1528768 (not res!2030357)) b!4781672))

(assert (= (and b!4781672 res!2030356) b!4781673))

(declare-fun m!5758892 () Bool)

(assert (=> b!4781671 m!5758892))

(declare-fun m!5758894 () Bool)

(assert (=> b!4781673 m!5758894))

(assert (=> b!4781625 d!1528768))

(declare-fun d!1528770 () Bool)

(declare-fun res!2030362 () Bool)

(declare-fun e!2985266 () Bool)

(assert (=> d!1528770 (=> res!2030362 e!2985266)))

(assert (=> d!1528770 (= res!2030362 (and (is-Cons!54005 (_2!31545 (h!60426 (toList!6745 lm!2709)))) (= (_1!31544 (h!60425 (_2!31545 (h!60426 (toList!6745 lm!2709))))) key!6641)))))

(assert (=> d!1528770 (= (containsKey!3812 (_2!31545 (h!60426 (toList!6745 lm!2709))) key!6641) e!2985266)))

(declare-fun b!4781678 () Bool)

(declare-fun e!2985267 () Bool)

(assert (=> b!4781678 (= e!2985266 e!2985267)))

(declare-fun res!2030363 () Bool)

(assert (=> b!4781678 (=> (not res!2030363) (not e!2985267))))

(assert (=> b!4781678 (= res!2030363 (is-Cons!54005 (_2!31545 (h!60426 (toList!6745 lm!2709)))))))

(declare-fun b!4781679 () Bool)

(assert (=> b!4781679 (= e!2985267 (containsKey!3812 (t!361579 (_2!31545 (h!60426 (toList!6745 lm!2709)))) key!6641))))

(assert (= (and d!1528770 (not res!2030362)) b!4781678))

(assert (= (and b!4781678 res!2030363) b!4781679))

(declare-fun m!5758896 () Bool)

(assert (=> b!4781679 m!5758896))

(assert (=> b!4781624 d!1528770))

(declare-fun d!1528772 () Bool)

(declare-fun res!2030364 () Bool)

(declare-fun e!2985268 () Bool)

(assert (=> d!1528772 (=> res!2030364 e!2985268)))

(assert (=> d!1528772 (= res!2030364 (and (is-Cons!54005 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709))))) (= (_1!31544 (h!60425 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709)))))) key!6641)))))

(assert (=> d!1528772 (= (containsKey!3812 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709)))) key!6641) e!2985268)))

(declare-fun b!4781680 () Bool)

(declare-fun e!2985269 () Bool)

(assert (=> b!4781680 (= e!2985268 e!2985269)))

(declare-fun res!2030365 () Bool)

(assert (=> b!4781680 (=> (not res!2030365) (not e!2985269))))

(assert (=> b!4781680 (= res!2030365 (is-Cons!54005 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709))))))))

(declare-fun b!4781681 () Bool)

(assert (=> b!4781681 (= e!2985269 (containsKey!3812 (t!361579 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709))))) key!6641))))

(assert (= (and d!1528772 (not res!2030364)) b!4781680))

(assert (= (and b!4781680 res!2030365) b!4781681))

(declare-fun m!5758898 () Bool)

(assert (=> b!4781681 m!5758898))

(assert (=> b!4781624 d!1528772))

(declare-fun d!1528774 () Bool)

(declare-datatypes ((Option!12939 0))(
  ( (None!12938) (Some!12938 (v!48152 List!54129)) )
))
(declare-fun get!18366 (Option!12939) List!54129)

(declare-fun getValueByKey!2280 (List!54130 (_ BitVec 64)) Option!12939)

(assert (=> d!1528774 (= (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709)))) (get!18366 (getValueByKey!2280 (toList!6745 lm!2709) (_1!31545 (h!60426 (toList!6745 lm!2709))))))))

(declare-fun bs!1151943 () Bool)

(assert (= bs!1151943 d!1528774))

(declare-fun m!5758900 () Bool)

(assert (=> bs!1151943 m!5758900))

(assert (=> bs!1151943 m!5758900))

(declare-fun m!5758902 () Bool)

(assert (=> bs!1151943 m!5758902))

(assert (=> b!4781624 d!1528774))

(declare-fun bs!1151946 () Bool)

(declare-fun d!1528776 () Bool)

(assert (= bs!1151946 (and d!1528776 start!490992)))

(declare-fun lambda!228286 () Int)

(assert (=> bs!1151946 (= lambda!228286 lambda!228268)))

(declare-fun bs!1151947 () Bool)

(assert (= bs!1151947 (and d!1528776 d!1528754)))

(assert (=> bs!1151947 (= lambda!228286 lambda!228280)))

(assert (=> d!1528776 (not (containsKey!3812 (apply!12888 lm!2709 (_1!31545 (h!60426 (toList!6745 lm!2709)))) key!6641))))

(declare-fun lt!1944090 () Unit!139280)

(declare-fun choose!34275 (ListLongMap!5167 K!15572 (_ BitVec 64) Hashable!6833) Unit!139280)

(assert (=> d!1528776 (= lt!1944090 (choose!34275 lm!2709 key!6641 (_1!31545 (h!60426 (toList!6745 lm!2709))) hashF!1687))))

(assert (=> d!1528776 (forall!12125 (toList!6745 lm!2709) lambda!228286)))

(assert (=> d!1528776 (= (lemmaNotSameHashThenCannotContainKey!187 lm!2709 key!6641 (_1!31545 (h!60426 (toList!6745 lm!2709))) hashF!1687) lt!1944090)))

(declare-fun bs!1151948 () Bool)

(assert (= bs!1151948 d!1528776))

(assert (=> bs!1151948 m!5758764))

(assert (=> bs!1151948 m!5758764))

(assert (=> bs!1151948 m!5758766))

(declare-fun m!5758908 () Bool)

(assert (=> bs!1151948 m!5758908))

(declare-fun m!5758910 () Bool)

(assert (=> bs!1151948 m!5758910))

(assert (=> b!4781624 d!1528776))

(declare-fun bs!1151949 () Bool)

(declare-fun d!1528780 () Bool)

(assert (= bs!1151949 (and d!1528780 start!490992)))

(declare-fun lambda!228289 () Int)

(assert (=> bs!1151949 (not (= lambda!228289 lambda!228268))))

(declare-fun bs!1151950 () Bool)

(assert (= bs!1151950 (and d!1528780 d!1528754)))

(assert (=> bs!1151950 (not (= lambda!228289 lambda!228280))))

(declare-fun bs!1151951 () Bool)

(assert (= bs!1151951 (and d!1528780 d!1528776)))

(assert (=> bs!1151951 (not (= lambda!228289 lambda!228286))))

(assert (=> d!1528780 true))

(assert (=> d!1528780 (= (allKeysSameHashInMap!2238 lm!2709 hashF!1687) (forall!12125 (toList!6745 lm!2709) lambda!228289))))

(declare-fun bs!1151952 () Bool)

(assert (= bs!1151952 d!1528780))

(declare-fun m!5758912 () Bool)

(assert (=> bs!1151952 m!5758912))

(assert (=> b!4781622 d!1528780))

(declare-fun d!1528782 () Bool)

(assert (=> d!1528782 (contains!17542 (toList!6745 lm!2709) (tuple2!56503 lt!1944043 lt!1944036))))

(declare-fun lt!1944096 () Unit!139280)

(declare-fun choose!34276 (ListLongMap!5167 (_ BitVec 64) List!54129) Unit!139280)

(assert (=> d!1528782 (= lt!1944096 (choose!34276 lm!2709 lt!1944043 lt!1944036))))

(assert (=> d!1528782 (contains!17543 lm!2709 lt!1944043)))

(assert (=> d!1528782 (= (lemmaGetValueImpliesTupleContained!612 lm!2709 lt!1944043 lt!1944036) lt!1944096)))

(declare-fun bs!1151954 () Bool)

(assert (= bs!1151954 d!1528782))

(declare-fun m!5758914 () Bool)

(assert (=> bs!1151954 m!5758914))

(declare-fun m!5758916 () Bool)

(assert (=> bs!1151954 m!5758916))

(assert (=> bs!1151954 m!5758784))

(assert (=> b!4781627 d!1528782))

(declare-fun bs!1151958 () Bool)

(declare-fun d!1528784 () Bool)

(assert (= bs!1151958 (and d!1528784 start!490992)))

(declare-fun lambda!228295 () Int)

(assert (=> bs!1151958 (= lambda!228295 lambda!228268)))

(declare-fun bs!1151959 () Bool)

(assert (= bs!1151959 (and d!1528784 d!1528754)))

(assert (=> bs!1151959 (= lambda!228295 lambda!228280)))

(declare-fun bs!1151960 () Bool)

(assert (= bs!1151960 (and d!1528784 d!1528776)))

(assert (=> bs!1151960 (= lambda!228295 lambda!228286)))

(declare-fun bs!1151961 () Bool)

(assert (= bs!1151961 (and d!1528784 d!1528780)))

(assert (=> bs!1151961 (not (= lambda!228295 lambda!228289))))

(assert (=> d!1528784 (contains!17544 (extractMap!2360 (toList!6745 lm!2709)) key!6641)))

(declare-fun lt!1944099 () Unit!139280)

(declare-fun choose!34277 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> d!1528784 (= lt!1944099 (choose!34277 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528784 (forall!12125 (toList!6745 lm!2709) lambda!228295)))

(assert (=> d!1528784 (= (lemmaListContainsThenExtractedMapContains!681 lm!2709 key!6641 hashF!1687) lt!1944099)))

(declare-fun bs!1151962 () Bool)

(assert (= bs!1151962 d!1528784))

(assert (=> bs!1151962 m!5758786))

(assert (=> bs!1151962 m!5758786))

(assert (=> bs!1151962 m!5758794))

(declare-fun m!5758926 () Bool)

(assert (=> bs!1151962 m!5758926))

(declare-fun m!5758928 () Bool)

(assert (=> bs!1151962 m!5758928))

(assert (=> b!4781627 d!1528784))

(declare-fun d!1528794 () Bool)

(declare-fun lt!1944102 () Bool)

(declare-fun content!9649 (List!54130) (Set tuple2!56502))

(assert (=> d!1528794 (= lt!1944102 (set.member lt!1944035 (content!9649 (toList!6745 lm!2709))))))

(declare-fun e!2985290 () Bool)

(assert (=> d!1528794 (= lt!1944102 e!2985290)))

(declare-fun res!2030386 () Bool)

(assert (=> d!1528794 (=> (not res!2030386) (not e!2985290))))

(assert (=> d!1528794 (= res!2030386 (is-Cons!54006 (toList!6745 lm!2709)))))

(assert (=> d!1528794 (= (contains!17542 (toList!6745 lm!2709) lt!1944035) lt!1944102)))

(declare-fun b!4781704 () Bool)

(declare-fun e!2985289 () Bool)

(assert (=> b!4781704 (= e!2985290 e!2985289)))

(declare-fun res!2030385 () Bool)

(assert (=> b!4781704 (=> res!2030385 e!2985289)))

(assert (=> b!4781704 (= res!2030385 (= (h!60426 (toList!6745 lm!2709)) lt!1944035))))

(declare-fun b!4781705 () Bool)

(assert (=> b!4781705 (= e!2985289 (contains!17542 (t!361580 (toList!6745 lm!2709)) lt!1944035))))

(assert (= (and d!1528794 res!2030386) b!4781704))

(assert (= (and b!4781704 (not res!2030385)) b!4781705))

(declare-fun m!5758934 () Bool)

(assert (=> d!1528794 m!5758934))

(declare-fun m!5758936 () Bool)

(assert (=> d!1528794 m!5758936))

(declare-fun m!5758938 () Bool)

(assert (=> b!4781705 m!5758938))

(assert (=> b!4781627 d!1528794))

(declare-fun d!1528798 () Bool)

(declare-fun isEmpty!29357 (Option!12937) Bool)

(assert (=> d!1528798 (= (isDefined!10080 lt!1944045) (not (isEmpty!29357 lt!1944045)))))

(declare-fun bs!1151963 () Bool)

(assert (= bs!1151963 d!1528798))

(declare-fun m!5758940 () Bool)

(assert (=> bs!1151963 m!5758940))

(assert (=> b!4781627 d!1528798))

(declare-fun d!1528800 () Bool)

(declare-fun e!2985295 () Bool)

(assert (=> d!1528800 e!2985295))

(declare-fun res!2030389 () Bool)

(assert (=> d!1528800 (=> res!2030389 e!2985295)))

(declare-fun lt!1944114 () Bool)

(assert (=> d!1528800 (= res!2030389 (not lt!1944114))))

(declare-fun lt!1944112 () Bool)

(assert (=> d!1528800 (= lt!1944114 lt!1944112)))

(declare-fun lt!1944113 () Unit!139280)

(declare-fun e!2985296 () Unit!139280)

(assert (=> d!1528800 (= lt!1944113 e!2985296)))

(declare-fun c!815150 () Bool)

(assert (=> d!1528800 (= c!815150 lt!1944112)))

(declare-fun containsKey!3814 (List!54130 (_ BitVec 64)) Bool)

(assert (=> d!1528800 (= lt!1944112 (containsKey!3814 (toList!6745 lm!2709) lt!1944043))))

(assert (=> d!1528800 (= (contains!17543 lm!2709 lt!1944043) lt!1944114)))

(declare-fun b!4781712 () Bool)

(declare-fun lt!1944111 () Unit!139280)

(assert (=> b!4781712 (= e!2985296 lt!1944111)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2073 (List!54130 (_ BitVec 64)) Unit!139280)

(assert (=> b!4781712 (= lt!1944111 (lemmaContainsKeyImpliesGetValueByKeyDefined!2073 (toList!6745 lm!2709) lt!1944043))))

(declare-fun isDefined!10082 (Option!12939) Bool)

(assert (=> b!4781712 (isDefined!10082 (getValueByKey!2280 (toList!6745 lm!2709) lt!1944043))))

(declare-fun b!4781713 () Bool)

(declare-fun Unit!139284 () Unit!139280)

(assert (=> b!4781713 (= e!2985296 Unit!139284)))

(declare-fun b!4781714 () Bool)

(assert (=> b!4781714 (= e!2985295 (isDefined!10082 (getValueByKey!2280 (toList!6745 lm!2709) lt!1944043)))))

(assert (= (and d!1528800 c!815150) b!4781712))

(assert (= (and d!1528800 (not c!815150)) b!4781713))

(assert (= (and d!1528800 (not res!2030389)) b!4781714))

(declare-fun m!5758942 () Bool)

(assert (=> d!1528800 m!5758942))

(declare-fun m!5758944 () Bool)

(assert (=> b!4781712 m!5758944))

(declare-fun m!5758946 () Bool)

(assert (=> b!4781712 m!5758946))

(assert (=> b!4781712 m!5758946))

(declare-fun m!5758948 () Bool)

(assert (=> b!4781712 m!5758948))

(assert (=> b!4781714 m!5758946))

(assert (=> b!4781714 m!5758946))

(assert (=> b!4781714 m!5758948))

(assert (=> b!4781627 d!1528800))

(declare-fun d!1528802 () Bool)

(declare-fun e!2985310 () Bool)

(assert (=> d!1528802 e!2985310))

(declare-fun res!2030398 () Bool)

(assert (=> d!1528802 (=> res!2030398 e!2985310)))

(declare-fun e!2985313 () Bool)

(assert (=> d!1528802 (= res!2030398 e!2985313)))

(declare-fun res!2030396 () Bool)

(assert (=> d!1528802 (=> (not res!2030396) (not e!2985313))))

(declare-fun lt!1944139 () Bool)

(assert (=> d!1528802 (= res!2030396 (not lt!1944139))))

(declare-fun lt!1944137 () Bool)

(assert (=> d!1528802 (= lt!1944139 lt!1944137)))

(declare-fun lt!1944133 () Unit!139280)

(declare-fun e!2985312 () Unit!139280)

(assert (=> d!1528802 (= lt!1944133 e!2985312)))

(declare-fun c!815159 () Bool)

(assert (=> d!1528802 (= c!815159 lt!1944137)))

(declare-fun containsKey!3815 (List!54129 K!15572) Bool)

(assert (=> d!1528802 (= lt!1944137 (containsKey!3815 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(assert (=> d!1528802 (= (contains!17544 (extractMap!2360 (toList!6745 lm!2709)) key!6641) lt!1944139)))

(declare-fun b!4781733 () Bool)

(declare-fun lt!1944135 () Unit!139280)

(assert (=> b!4781733 (= e!2985312 lt!1944135)))

(declare-fun lt!1944134 () Unit!139280)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2074 (List!54129 K!15572) Unit!139280)

(assert (=> b!4781733 (= lt!1944134 (lemmaContainsKeyImpliesGetValueByKeyDefined!2074 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(declare-datatypes ((Option!12940 0))(
  ( (None!12939) (Some!12939 (v!48153 V!15818)) )
))
(declare-fun isDefined!10083 (Option!12940) Bool)

(declare-fun getValueByKey!2281 (List!54129 K!15572) Option!12940)

(assert (=> b!4781733 (isDefined!10083 (getValueByKey!2281 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(declare-fun lt!1944136 () Unit!139280)

(assert (=> b!4781733 (= lt!1944136 lt!1944134)))

(declare-fun lemmaInListThenGetKeysListContains!1035 (List!54129 K!15572) Unit!139280)

(assert (=> b!4781733 (= lt!1944135 (lemmaInListThenGetKeysListContains!1035 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(declare-fun call!334739 () Bool)

(assert (=> b!4781733 call!334739))

(declare-fun bm!334734 () Bool)

(declare-datatypes ((List!54133 0))(
  ( (Nil!54009) (Cons!54009 (h!60429 K!15572) (t!361583 List!54133)) )
))
(declare-fun e!2985309 () List!54133)

(declare-fun contains!17548 (List!54133 K!15572) Bool)

(assert (=> bm!334734 (= call!334739 (contains!17548 e!2985309 key!6641))))

(declare-fun c!815158 () Bool)

(assert (=> bm!334734 (= c!815158 c!815159)))

(declare-fun b!4781734 () Bool)

(declare-fun e!2985314 () Unit!139280)

(declare-fun Unit!139285 () Unit!139280)

(assert (=> b!4781734 (= e!2985314 Unit!139285)))

(declare-fun b!4781735 () Bool)

(assert (=> b!4781735 (= e!2985312 e!2985314)))

(declare-fun c!815157 () Bool)

(assert (=> b!4781735 (= c!815157 call!334739)))

(declare-fun b!4781736 () Bool)

(assert (=> b!4781736 false))

(declare-fun lt!1944138 () Unit!139280)

(declare-fun lt!1944140 () Unit!139280)

(assert (=> b!4781736 (= lt!1944138 lt!1944140)))

(assert (=> b!4781736 (containsKey!3815 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1040 (List!54129 K!15572) Unit!139280)

(assert (=> b!4781736 (= lt!1944140 (lemmaInGetKeysListThenContainsKey!1040 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(declare-fun Unit!139286 () Unit!139280)

(assert (=> b!4781736 (= e!2985314 Unit!139286)))

(declare-fun b!4781737 () Bool)

(declare-fun keys!19673 (ListMap!6217) List!54133)

(assert (=> b!4781737 (= e!2985313 (not (contains!17548 (keys!19673 (extractMap!2360 (toList!6745 lm!2709))) key!6641)))))

(declare-fun b!4781738 () Bool)

(declare-fun getKeysList!1040 (List!54129) List!54133)

(assert (=> b!4781738 (= e!2985309 (getKeysList!1040 (toList!6746 (extractMap!2360 (toList!6745 lm!2709)))))))

(declare-fun b!4781739 () Bool)

(declare-fun e!2985311 () Bool)

(assert (=> b!4781739 (= e!2985311 (contains!17548 (keys!19673 (extractMap!2360 (toList!6745 lm!2709))) key!6641))))

(declare-fun b!4781740 () Bool)

(assert (=> b!4781740 (= e!2985309 (keys!19673 (extractMap!2360 (toList!6745 lm!2709))))))

(declare-fun b!4781741 () Bool)

(assert (=> b!4781741 (= e!2985310 e!2985311)))

(declare-fun res!2030397 () Bool)

(assert (=> b!4781741 (=> (not res!2030397) (not e!2985311))))

(assert (=> b!4781741 (= res!2030397 (isDefined!10083 (getValueByKey!2281 (toList!6746 (extractMap!2360 (toList!6745 lm!2709))) key!6641)))))

(assert (= (and d!1528802 c!815159) b!4781733))

(assert (= (and d!1528802 (not c!815159)) b!4781735))

(assert (= (and b!4781735 c!815157) b!4781736))

(assert (= (and b!4781735 (not c!815157)) b!4781734))

(assert (= (or b!4781733 b!4781735) bm!334734))

(assert (= (and bm!334734 c!815158) b!4781738))

(assert (= (and bm!334734 (not c!815158)) b!4781740))

(assert (= (and d!1528802 res!2030396) b!4781737))

(assert (= (and d!1528802 (not res!2030398)) b!4781741))

(assert (= (and b!4781741 res!2030397) b!4781739))

(declare-fun m!5758950 () Bool)

(assert (=> b!4781736 m!5758950))

(declare-fun m!5758952 () Bool)

(assert (=> b!4781736 m!5758952))

(declare-fun m!5758954 () Bool)

(assert (=> b!4781733 m!5758954))

(declare-fun m!5758956 () Bool)

(assert (=> b!4781733 m!5758956))

(assert (=> b!4781733 m!5758956))

(declare-fun m!5758958 () Bool)

(assert (=> b!4781733 m!5758958))

(declare-fun m!5758960 () Bool)

(assert (=> b!4781733 m!5758960))

(assert (=> d!1528802 m!5758950))

(assert (=> b!4781741 m!5758956))

(assert (=> b!4781741 m!5758956))

(assert (=> b!4781741 m!5758958))

(declare-fun m!5758962 () Bool)

(assert (=> b!4781738 m!5758962))

(assert (=> b!4781739 m!5758786))

(declare-fun m!5758964 () Bool)

(assert (=> b!4781739 m!5758964))

(assert (=> b!4781739 m!5758964))

(declare-fun m!5758966 () Bool)

(assert (=> b!4781739 m!5758966))

(declare-fun m!5758968 () Bool)

(assert (=> bm!334734 m!5758968))

(assert (=> b!4781740 m!5758786))

(assert (=> b!4781740 m!5758964))

(assert (=> b!4781737 m!5758786))

(assert (=> b!4781737 m!5758964))

(assert (=> b!4781737 m!5758964))

(assert (=> b!4781737 m!5758966))

(assert (=> b!4781627 d!1528802))

(declare-fun d!1528804 () Bool)

(assert (=> d!1528804 (dynLambda!22014 lambda!228268 lt!1944035)))

(declare-fun lt!1944144 () Unit!139280)

(declare-fun choose!34278 (List!54130 Int tuple2!56502) Unit!139280)

(assert (=> d!1528804 (= lt!1944144 (choose!34278 (toList!6745 lm!2709) lambda!228268 lt!1944035))))

(declare-fun e!2985317 () Bool)

(assert (=> d!1528804 e!2985317))

(declare-fun res!2030401 () Bool)

(assert (=> d!1528804 (=> (not res!2030401) (not e!2985317))))

(assert (=> d!1528804 (= res!2030401 (forall!12125 (toList!6745 lm!2709) lambda!228268))))

(assert (=> d!1528804 (= (forallContained!4069 (toList!6745 lm!2709) lambda!228268 lt!1944035) lt!1944144)))

(declare-fun b!4781744 () Bool)

(assert (=> b!4781744 (= e!2985317 (contains!17542 (toList!6745 lm!2709) lt!1944035))))

(assert (= (and d!1528804 res!2030401) b!4781744))

(declare-fun b_lambda!185673 () Bool)

(assert (=> (not b_lambda!185673) (not d!1528804)))

(declare-fun m!5758978 () Bool)

(assert (=> d!1528804 m!5758978))

(declare-fun m!5758980 () Bool)

(assert (=> d!1528804 m!5758980))

(assert (=> d!1528804 m!5758770))

(assert (=> b!4781744 m!5758798))

(assert (=> b!4781627 d!1528804))

(declare-fun bs!1151969 () Bool)

(declare-fun d!1528810 () Bool)

(assert (= bs!1151969 (and d!1528810 d!1528776)))

(declare-fun lambda!228305 () Int)

(assert (=> bs!1151969 (= lambda!228305 lambda!228286)))

(declare-fun bs!1151970 () Bool)

(assert (= bs!1151970 (and d!1528810 start!490992)))

(assert (=> bs!1151970 (= lambda!228305 lambda!228268)))

(declare-fun bs!1151971 () Bool)

(assert (= bs!1151971 (and d!1528810 d!1528754)))

(assert (=> bs!1151971 (= lambda!228305 lambda!228280)))

(declare-fun bs!1151972 () Bool)

(assert (= bs!1151972 (and d!1528810 d!1528784)))

(assert (=> bs!1151972 (= lambda!228305 lambda!228295)))

(declare-fun bs!1151973 () Bool)

(assert (= bs!1151973 (and d!1528810 d!1528780)))

(assert (=> bs!1151973 (not (= lambda!228305 lambda!228289))))

(declare-fun e!2985331 () Bool)

(assert (=> d!1528810 e!2985331))

(declare-fun res!2030416 () Bool)

(assert (=> d!1528810 (=> (not res!2030416) (not e!2985331))))

(assert (=> d!1528810 (= res!2030416 (forall!12125 (toList!6745 lm!2709) lambda!228305))))

(declare-fun lt!1944178 () Unit!139280)

(declare-fun choose!34279 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> d!1528810 (= lt!1944178 (choose!34279 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528810 (forall!12125 (toList!6745 lm!2709) lambda!228305)))

(assert (=> d!1528810 (= (lemmaInGenMapThenGetPairDefined!579 lm!2709 key!6641 hashF!1687) lt!1944178)))

(declare-fun b!4781766 () Bool)

(declare-fun res!2030418 () Bool)

(assert (=> b!4781766 (=> (not res!2030418) (not e!2985331))))

(assert (=> b!4781766 (= res!2030418 (contains!17544 (extractMap!2360 (toList!6745 lm!2709)) key!6641))))

(declare-fun b!4781765 () Bool)

(declare-fun res!2030417 () Bool)

(assert (=> b!4781765 (=> (not res!2030417) (not e!2985331))))

(assert (=> b!4781765 (= res!2030417 (allKeysSameHashInMap!2238 lm!2709 hashF!1687))))

(declare-fun lt!1944176 () (_ BitVec 64))

(declare-fun b!4781768 () Bool)

(declare-fun lt!1944182 () List!54129)

(declare-fun e!2985332 () Bool)

(assert (=> b!4781768 (= e!2985332 (= (getValueByKey!2280 (toList!6745 lm!2709) lt!1944176) (Some!12938 lt!1944182)))))

(declare-fun b!4781767 () Bool)

(assert (=> b!4781767 (= e!2985331 (isDefined!10080 (getPair!805 (apply!12888 lm!2709 (hash!4821 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1944177 () Unit!139280)

(assert (=> b!4781767 (= lt!1944177 (forallContained!4069 (toList!6745 lm!2709) lambda!228305 (tuple2!56503 (hash!4821 hashF!1687 key!6641) (apply!12888 lm!2709 (hash!4821 hashF!1687 key!6641)))))))

(declare-fun lt!1944179 () Unit!139280)

(declare-fun lt!1944180 () Unit!139280)

(assert (=> b!4781767 (= lt!1944179 lt!1944180)))

(assert (=> b!4781767 (contains!17542 (toList!6745 lm!2709) (tuple2!56503 lt!1944176 lt!1944182))))

(assert (=> b!4781767 (= lt!1944180 (lemmaGetValueImpliesTupleContained!612 lm!2709 lt!1944176 lt!1944182))))

(assert (=> b!4781767 e!2985332))

(declare-fun res!2030419 () Bool)

(assert (=> b!4781767 (=> (not res!2030419) (not e!2985332))))

(assert (=> b!4781767 (= res!2030419 (contains!17543 lm!2709 lt!1944176))))

(assert (=> b!4781767 (= lt!1944182 (apply!12888 lm!2709 (hash!4821 hashF!1687 key!6641)))))

(assert (=> b!4781767 (= lt!1944176 (hash!4821 hashF!1687 key!6641))))

(declare-fun lt!1944183 () Unit!139280)

(declare-fun lt!1944181 () Unit!139280)

(assert (=> b!4781767 (= lt!1944183 lt!1944181)))

(assert (=> b!4781767 (contains!17543 lm!2709 (hash!4821 hashF!1687 key!6641))))

(assert (=> b!4781767 (= lt!1944181 (lemmaInGenMapThenLongMapContainsHash!1029 lm!2709 key!6641 hashF!1687))))

(assert (= (and d!1528810 res!2030416) b!4781765))

(assert (= (and b!4781765 res!2030417) b!4781766))

(assert (= (and b!4781766 res!2030418) b!4781767))

(assert (= (and b!4781767 res!2030419) b!4781768))

(assert (=> b!4781765 m!5758802))

(declare-fun m!5758992 () Bool)

(assert (=> d!1528810 m!5758992))

(declare-fun m!5758994 () Bool)

(assert (=> d!1528810 m!5758994))

(assert (=> d!1528810 m!5758992))

(assert (=> b!4781767 m!5758790))

(assert (=> b!4781767 m!5758788))

(declare-fun m!5758996 () Bool)

(assert (=> b!4781767 m!5758996))

(assert (=> b!4781767 m!5758788))

(declare-fun m!5758998 () Bool)

(assert (=> b!4781767 m!5758998))

(declare-fun m!5759000 () Bool)

(assert (=> b!4781767 m!5759000))

(declare-fun m!5759002 () Bool)

(assert (=> b!4781767 m!5759002))

(assert (=> b!4781767 m!5758996))

(assert (=> b!4781767 m!5758998))

(declare-fun m!5759004 () Bool)

(assert (=> b!4781767 m!5759004))

(declare-fun m!5759006 () Bool)

(assert (=> b!4781767 m!5759006))

(assert (=> b!4781767 m!5758788))

(declare-fun m!5759008 () Bool)

(assert (=> b!4781767 m!5759008))

(declare-fun m!5759010 () Bool)

(assert (=> b!4781767 m!5759010))

(declare-fun m!5759012 () Bool)

(assert (=> b!4781768 m!5759012))

(assert (=> b!4781766 m!5758786))

(assert (=> b!4781766 m!5758786))

(assert (=> b!4781766 m!5758794))

(assert (=> b!4781627 d!1528810))

(declare-fun bs!1151974 () Bool)

(declare-fun d!1528816 () Bool)

(assert (= bs!1151974 (and d!1528816 start!490992)))

(declare-fun lambda!228308 () Int)

(assert (=> bs!1151974 (= lambda!228308 lambda!228268)))

(declare-fun bs!1151975 () Bool)

(assert (= bs!1151975 (and d!1528816 d!1528754)))

(assert (=> bs!1151975 (= lambda!228308 lambda!228280)))

(declare-fun bs!1151976 () Bool)

(assert (= bs!1151976 (and d!1528816 d!1528784)))

(assert (=> bs!1151976 (= lambda!228308 lambda!228295)))

(declare-fun bs!1151977 () Bool)

(assert (= bs!1151977 (and d!1528816 d!1528780)))

(assert (=> bs!1151977 (not (= lambda!228308 lambda!228289))))

(declare-fun bs!1151978 () Bool)

(assert (= bs!1151978 (and d!1528816 d!1528810)))

(assert (=> bs!1151978 (= lambda!228308 lambda!228305)))

(declare-fun bs!1151979 () Bool)

(assert (= bs!1151979 (and d!1528816 d!1528776)))

(assert (=> bs!1151979 (= lambda!228308 lambda!228286)))

(declare-fun lt!1944186 () ListMap!6217)

(declare-fun invariantList!1695 (List!54129) Bool)

(assert (=> d!1528816 (invariantList!1695 (toList!6746 lt!1944186))))

(declare-fun e!2985335 () ListMap!6217)

(assert (=> d!1528816 (= lt!1944186 e!2985335)))

(declare-fun c!815165 () Bool)

(assert (=> d!1528816 (= c!815165 (is-Cons!54006 (toList!6745 lm!2709)))))

(assert (=> d!1528816 (forall!12125 (toList!6745 lm!2709) lambda!228308)))

(assert (=> d!1528816 (= (extractMap!2360 (toList!6745 lm!2709)) lt!1944186)))

(declare-fun b!4781773 () Bool)

(declare-fun addToMapMapFromBucket!1660 (List!54129 ListMap!6217) ListMap!6217)

(assert (=> b!4781773 (= e!2985335 (addToMapMapFromBucket!1660 (_2!31545 (h!60426 (toList!6745 lm!2709))) (extractMap!2360 (t!361580 (toList!6745 lm!2709)))))))

(declare-fun b!4781774 () Bool)

(assert (=> b!4781774 (= e!2985335 (ListMap!6218 Nil!54005))))

(assert (= (and d!1528816 c!815165) b!4781773))

(assert (= (and d!1528816 (not c!815165)) b!4781774))

(declare-fun m!5759014 () Bool)

(assert (=> d!1528816 m!5759014))

(declare-fun m!5759016 () Bool)

(assert (=> d!1528816 m!5759016))

(declare-fun m!5759018 () Bool)

(assert (=> b!4781773 m!5759018))

(assert (=> b!4781773 m!5759018))

(declare-fun m!5759020 () Bool)

(assert (=> b!4781773 m!5759020))

(assert (=> b!4781627 d!1528816))

(declare-fun bs!1151980 () Bool)

(declare-fun d!1528818 () Bool)

(assert (= bs!1151980 (and d!1528818 start!490992)))

(declare-fun lambda!228311 () Int)

(assert (=> bs!1151980 (= lambda!228311 lambda!228268)))

(declare-fun bs!1151981 () Bool)

(assert (= bs!1151981 (and d!1528818 d!1528784)))

(assert (=> bs!1151981 (= lambda!228311 lambda!228295)))

(declare-fun bs!1151982 () Bool)

(assert (= bs!1151982 (and d!1528818 d!1528780)))

(assert (=> bs!1151982 (not (= lambda!228311 lambda!228289))))

(declare-fun bs!1151983 () Bool)

(assert (= bs!1151983 (and d!1528818 d!1528810)))

(assert (=> bs!1151983 (= lambda!228311 lambda!228305)))

(declare-fun bs!1151984 () Bool)

(assert (= bs!1151984 (and d!1528818 d!1528776)))

(assert (=> bs!1151984 (= lambda!228311 lambda!228286)))

(declare-fun bs!1151985 () Bool)

(assert (= bs!1151985 (and d!1528818 d!1528754)))

(assert (=> bs!1151985 (= lambda!228311 lambda!228280)))

(declare-fun bs!1151986 () Bool)

(assert (= bs!1151986 (and d!1528818 d!1528816)))

(assert (=> bs!1151986 (= lambda!228311 lambda!228308)))

(assert (=> d!1528818 (contains!17543 lm!2709 (hash!4821 hashF!1687 key!6641))))

(declare-fun lt!1944205 () Unit!139280)

(declare-fun choose!34280 (ListLongMap!5167 K!15572 Hashable!6833) Unit!139280)

(assert (=> d!1528818 (= lt!1944205 (choose!34280 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1528818 (forall!12125 (toList!6745 lm!2709) lambda!228311)))

(assert (=> d!1528818 (= (lemmaInGenMapThenLongMapContainsHash!1029 lm!2709 key!6641 hashF!1687) lt!1944205)))

(declare-fun bs!1151987 () Bool)

(assert (= bs!1151987 d!1528818))

(assert (=> bs!1151987 m!5758788))

(assert (=> bs!1151987 m!5758788))

(assert (=> bs!1151987 m!5759008))

(declare-fun m!5759022 () Bool)

(assert (=> bs!1151987 m!5759022))

(declare-fun m!5759024 () Bool)

(assert (=> bs!1151987 m!5759024))

(assert (=> b!4781627 d!1528818))

(declare-fun d!1528820 () Bool)

(assert (=> d!1528820 (= (get!18364 lt!1944045) (v!48147 lt!1944045))))

(assert (=> b!4781627 d!1528820))

(declare-fun b!4781818 () Bool)

(declare-fun e!2985368 () Bool)

(assert (=> b!4781818 (= e!2985368 (not (containsKey!3812 lt!1944036 key!6641)))))

(declare-fun b!4781819 () Bool)

(declare-fun e!2985365 () Bool)

(declare-fun lt!1944216 () Option!12937)

(declare-fun contains!17549 (List!54129 tuple2!56500) Bool)

(assert (=> b!4781819 (= e!2985365 (contains!17549 lt!1944036 (get!18364 lt!1944216)))))

(declare-fun b!4781820 () Bool)

(declare-fun e!2985366 () Option!12937)

(assert (=> b!4781820 (= e!2985366 (Some!12936 (h!60425 lt!1944036)))))

(declare-fun d!1528822 () Bool)

(declare-fun e!2985367 () Bool)

(assert (=> d!1528822 e!2985367))

(declare-fun res!2030440 () Bool)

(assert (=> d!1528822 (=> res!2030440 e!2985367)))

(assert (=> d!1528822 (= res!2030440 e!2985368)))

(declare-fun res!2030439 () Bool)

(assert (=> d!1528822 (=> (not res!2030439) (not e!2985368))))

(assert (=> d!1528822 (= res!2030439 (isEmpty!29357 lt!1944216))))

(assert (=> d!1528822 (= lt!1944216 e!2985366)))

(declare-fun c!815179 () Bool)

(assert (=> d!1528822 (= c!815179 (and (is-Cons!54005 lt!1944036) (= (_1!31544 (h!60425 lt!1944036)) key!6641)))))

(declare-fun noDuplicateKeys!2293 (List!54129) Bool)

(assert (=> d!1528822 (noDuplicateKeys!2293 lt!1944036)))

(assert (=> d!1528822 (= (getPair!805 lt!1944036 key!6641) lt!1944216)))

(declare-fun b!4781821 () Bool)

(declare-fun e!2985364 () Option!12937)

(assert (=> b!4781821 (= e!2985364 (getPair!805 (t!361579 lt!1944036) key!6641))))

(declare-fun b!4781822 () Bool)

(assert (=> b!4781822 (= e!2985366 e!2985364)))

(declare-fun c!815180 () Bool)

(assert (=> b!4781822 (= c!815180 (is-Cons!54005 lt!1944036))))

(declare-fun b!4781823 () Bool)

(assert (=> b!4781823 (= e!2985367 e!2985365)))

(declare-fun res!2030438 () Bool)

(assert (=> b!4781823 (=> (not res!2030438) (not e!2985365))))

(assert (=> b!4781823 (= res!2030438 (isDefined!10080 lt!1944216))))

(declare-fun b!4781824 () Bool)

(assert (=> b!4781824 (= e!2985364 None!12936)))

(declare-fun b!4781825 () Bool)

(declare-fun res!2030437 () Bool)

(assert (=> b!4781825 (=> (not res!2030437) (not e!2985365))))

(assert (=> b!4781825 (= res!2030437 (= (_1!31544 (get!18364 lt!1944216)) key!6641))))

(assert (= (and d!1528822 c!815179) b!4781820))

(assert (= (and d!1528822 (not c!815179)) b!4781822))

(assert (= (and b!4781822 c!815180) b!4781821))

(assert (= (and b!4781822 (not c!815180)) b!4781824))

(assert (= (and d!1528822 res!2030439) b!4781818))

(assert (= (and d!1528822 (not res!2030440)) b!4781823))

(assert (= (and b!4781823 res!2030438) b!4781825))

(assert (= (and b!4781825 res!2030437) b!4781819))

(declare-fun m!5759026 () Bool)

(assert (=> b!4781823 m!5759026))

(declare-fun m!5759028 () Bool)

(assert (=> d!1528822 m!5759028))

(declare-fun m!5759030 () Bool)

(assert (=> d!1528822 m!5759030))

(declare-fun m!5759032 () Bool)

(assert (=> b!4781821 m!5759032))

(declare-fun m!5759034 () Bool)

(assert (=> b!4781825 m!5759034))

(declare-fun m!5759036 () Bool)

(assert (=> b!4781818 m!5759036))

(assert (=> b!4781819 m!5759034))

(assert (=> b!4781819 m!5759034))

(declare-fun m!5759038 () Bool)

(assert (=> b!4781819 m!5759038))

(assert (=> b!4781627 d!1528822))

(declare-fun d!1528824 () Bool)

(declare-fun hash!4825 (Hashable!6833 K!15572) (_ BitVec 64))

(assert (=> d!1528824 (= (hash!4821 hashF!1687 key!6641) (hash!4825 hashF!1687 key!6641))))

(declare-fun bs!1151988 () Bool)

(assert (= bs!1151988 d!1528824))

(declare-fun m!5759042 () Bool)

(assert (=> bs!1151988 m!5759042))

(assert (=> b!4781627 d!1528824))

(declare-fun d!1528826 () Bool)

(assert (=> d!1528826 (= (apply!12888 lm!2709 lt!1944043) (get!18366 (getValueByKey!2280 (toList!6745 lm!2709) lt!1944043)))))

(declare-fun bs!1151989 () Bool)

(assert (= bs!1151989 d!1528826))

(assert (=> bs!1151989 m!5758946))

(assert (=> bs!1151989 m!5758946))

(declare-fun m!5759052 () Bool)

(assert (=> bs!1151989 m!5759052))

(assert (=> b!4781627 d!1528826))

(declare-fun d!1528828 () Bool)

(declare-fun res!2030443 () Bool)

(declare-fun e!2985370 () Bool)

(assert (=> d!1528828 (=> res!2030443 e!2985370)))

(declare-fun e!2985369 () Bool)

(assert (=> d!1528828 (= res!2030443 e!2985369)))

(declare-fun res!2030441 () Bool)

(assert (=> d!1528828 (=> (not res!2030441) (not e!2985369))))

(assert (=> d!1528828 (= res!2030441 (is-Cons!54006 (toList!6745 lm!2709)))))

(assert (=> d!1528828 (= (containsKeyBiggerList!489 (toList!6745 lm!2709) key!6641) e!2985370)))

(declare-fun b!4781826 () Bool)

(assert (=> b!4781826 (= e!2985369 (containsKey!3812 (_2!31545 (h!60426 (toList!6745 lm!2709))) key!6641))))

(declare-fun b!4781827 () Bool)

(declare-fun e!2985371 () Bool)

(assert (=> b!4781827 (= e!2985370 e!2985371)))

(declare-fun res!2030442 () Bool)

(assert (=> b!4781827 (=> (not res!2030442) (not e!2985371))))

(assert (=> b!4781827 (= res!2030442 (is-Cons!54006 (toList!6745 lm!2709)))))

(declare-fun b!4781828 () Bool)

(assert (=> b!4781828 (= e!2985371 (containsKeyBiggerList!489 (t!361580 (toList!6745 lm!2709)) key!6641))))

(assert (= (and d!1528828 res!2030441) b!4781826))

(assert (= (and d!1528828 (not res!2030443)) b!4781827))

(assert (= (and b!4781827 res!2030442) b!4781828))

(assert (=> b!4781826 m!5758762))

(declare-fun m!5759060 () Bool)

(assert (=> b!4781828 m!5759060))

(assert (=> b!4781621 d!1528828))

(declare-fun b!4781833 () Bool)

(declare-fun e!2985374 () Bool)

(declare-fun tp!1357465 () Bool)

(declare-fun tp!1357466 () Bool)

(assert (=> b!4781833 (= e!2985374 (and tp!1357465 tp!1357466))))

(assert (=> b!4781626 (= tp!1357457 e!2985374)))

(assert (= (and b!4781626 (is-Cons!54006 (toList!6745 lm!2709))) b!4781833))

(declare-fun b_lambda!185677 () Bool)

(assert (= b_lambda!185669 (or start!490992 b_lambda!185677)))

(declare-fun bs!1151990 () Bool)

(declare-fun d!1528832 () Bool)

(assert (= bs!1151990 (and d!1528832 start!490992)))

(assert (=> bs!1151990 (= (dynLambda!22014 lambda!228268 (h!60426 (toList!6745 (tail!9186 lm!2709)))) (noDuplicateKeys!2293 (_2!31545 (h!60426 (toList!6745 (tail!9186 lm!2709))))))))

(declare-fun m!5759066 () Bool)

(assert (=> bs!1151990 m!5759066))

(assert (=> b!4781663 d!1528832))

(declare-fun b_lambda!185679 () Bool)

(assert (= b_lambda!185673 (or start!490992 b_lambda!185679)))

(declare-fun bs!1151991 () Bool)

(declare-fun d!1528834 () Bool)

(assert (= bs!1151991 (and d!1528834 start!490992)))

(assert (=> bs!1151991 (= (dynLambda!22014 lambda!228268 lt!1944035) (noDuplicateKeys!2293 (_2!31545 lt!1944035)))))

(declare-fun m!5759068 () Bool)

(assert (=> bs!1151991 m!5759068))

(assert (=> d!1528804 d!1528834))

(declare-fun b_lambda!185681 () Bool)

(assert (= b_lambda!185667 (or start!490992 b_lambda!185681)))

(declare-fun bs!1151992 () Bool)

(declare-fun d!1528836 () Bool)

(assert (= bs!1151992 (and d!1528836 start!490992)))

(assert (=> bs!1151992 (= (dynLambda!22014 lambda!228268 (h!60426 (toList!6745 lm!2709))) (noDuplicateKeys!2293 (_2!31545 (h!60426 (toList!6745 lm!2709)))))))

(declare-fun m!5759070 () Bool)

(assert (=> bs!1151992 m!5759070))

(assert (=> b!4781657 d!1528836))

(push 1)

(assert (not d!1528798))

(assert (not d!1528810))

(assert (not b!4781736))

(assert tp_is_empty!33235)

(assert (not b!4781705))

(assert (not d!1528752))

(assert (not b!4781833))

(assert (not d!1528776))

(assert (not b!4781765))

(assert (not b!4781825))

(assert (not d!1528816))

(assert (not d!1528804))

(assert (not b!4781738))

(assert (not b!4781714))

(assert (not b!4781823))

(assert (not d!1528754))

(assert (not d!1528800))

(assert (not b!4781739))

(assert (not b!4781741))

(assert (not b!4781733))

(assert (not d!1528780))

(assert (not b_lambda!185677))

(assert (not d!1528822))

(assert (not b!4781740))

(assert (not d!1528794))

(assert tp_is_empty!33233)

(assert (not d!1528782))

(assert (not b!4781744))

(assert (not b!4781658))

(assert (not b!4781828))

(assert (not d!1528774))

(assert (not bm!334734))

(assert (not b!4781821))

(assert (not d!1528784))

(assert (not d!1528818))

(assert (not b!4781768))

(assert (not b!4781664))

(assert (not bs!1151990))

(assert (not b!4781818))

(assert (not b!4781673))

(assert (not b!4781737))

(assert (not bs!1151992))

(assert (not b!4781826))

(assert (not d!1528802))

(assert (not bs!1151991))

(assert (not d!1528766))

(assert (not b_lambda!185679))

(assert (not b!4781767))

(assert (not d!1528824))

(assert (not b!4781766))

(assert (not b!4781773))

(assert (not b!4781671))

(assert (not b!4781681))

(assert (not b_lambda!185681))

(assert (not b!4781679))

(assert (not b!4781819))

(assert (not b!4781712))

(assert (not d!1528826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

