; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488466 () Bool)

(assert start!488466)

(declare-fun res!2023637 () Bool)

(declare-fun e!2978425 () Bool)

(assert (=> start!488466 (=> (not res!2023637) (not e!2978425))))

(declare-datatypes ((K!15107 0))(
  ( (K!15108 (val!20391 Int)) )
))
(declare-datatypes ((V!15353 0))(
  ( (V!15354 (val!20392 Int)) )
))
(declare-datatypes ((tuple2!55756 0))(
  ( (tuple2!55757 (_1!31172 K!15107) (_2!31172 V!15353)) )
))
(declare-datatypes ((List!53726 0))(
  ( (Nil!53602) (Cons!53602 (h!60014 tuple2!55756) (t!361176 List!53726)) )
))
(declare-datatypes ((tuple2!55758 0))(
  ( (tuple2!55759 (_1!31173 (_ BitVec 64)) (_2!31173 List!53726)) )
))
(declare-datatypes ((List!53727 0))(
  ( (Nil!53603) (Cons!53603 (h!60015 tuple2!55758) (t!361177 List!53727)) )
))
(declare-datatypes ((ListLongMap!4795 0))(
  ( (ListLongMap!4796 (toList!6381 List!53727)) )
))
(declare-fun lm!1309 () ListLongMap!4795)

(declare-fun lambda!225047 () Int)

(declare-fun forall!11911 (List!53727 Int) Bool)

(assert (=> start!488466 (= res!2023637 (forall!11911 (toList!6381 lm!1309) lambda!225047))))

(assert (=> start!488466 e!2978425))

(declare-fun e!2978426 () Bool)

(declare-fun inv!69134 (ListLongMap!4795) Bool)

(assert (=> start!488466 (and (inv!69134 lm!1309) e!2978426)))

(assert (=> start!488466 true))

(declare-fun tp_is_empty!32589 () Bool)

(assert (=> start!488466 tp_is_empty!32589))

(declare-fun b!4771219 () Bool)

(declare-fun res!2023639 () Bool)

(assert (=> b!4771219 (=> (not res!2023639) (not e!2978425))))

(declare-datatypes ((Hashable!6647 0))(
  ( (HashableExt!6646 (__x!32670 Int)) )
))
(declare-fun hashF!980 () Hashable!6647)

(declare-fun allKeysSameHashInMap!2052 (ListLongMap!4795 Hashable!6647) Bool)

(assert (=> b!4771219 (= res!2023639 (allKeysSameHashInMap!2052 lm!1309 hashF!980))))

(declare-fun b!4771222 () Bool)

(declare-fun tp!1356621 () Bool)

(assert (=> b!4771222 (= e!2978426 tp!1356621)))

(declare-fun b!4771220 () Bool)

(declare-fun res!2023638 () Bool)

(assert (=> b!4771220 (=> (not res!2023638) (not e!2978425))))

(declare-fun key!2872 () K!15107)

(declare-datatypes ((ListMap!5861 0))(
  ( (ListMap!5862 (toList!6382 List!53726)) )
))
(declare-fun contains!16987 (ListMap!5861 K!15107) Bool)

(declare-fun extractMap!2182 (List!53727) ListMap!5861)

(assert (=> b!4771220 (= res!2023638 (contains!16987 (extractMap!2182 (toList!6381 lm!1309)) key!2872))))

(declare-fun b!4771221 () Bool)

(declare-fun lt!1933548 () List!53726)

(declare-fun noDuplicateKeys!2264 (List!53726) Bool)

(assert (=> b!4771221 (= e!2978425 (not (noDuplicateKeys!2264 lt!1933548)))))

(declare-datatypes ((Option!12740 0))(
  ( (None!12739) (Some!12739 (v!47862 tuple2!55756)) )
))
(declare-fun isDefined!9886 (Option!12740) Bool)

(declare-fun getPair!667 (List!53726 K!15107) Option!12740)

(assert (=> b!4771221 (isDefined!9886 (getPair!667 lt!1933548 key!2872))))

(declare-fun lt!1933550 () tuple2!55758)

(declare-datatypes ((Unit!138495 0))(
  ( (Unit!138496) )
))
(declare-fun lt!1933544 () Unit!138495)

(declare-fun forallContained!3892 (List!53727 Int tuple2!55758) Unit!138495)

(assert (=> b!4771221 (= lt!1933544 (forallContained!3892 (toList!6381 lm!1309) lambda!225047 lt!1933550))))

(declare-fun lt!1933547 () Unit!138495)

(declare-fun lemmaInGenMapThenGetPairDefined!441 (ListLongMap!4795 K!15107 Hashable!6647) Unit!138495)

(assert (=> b!4771221 (= lt!1933547 (lemmaInGenMapThenGetPairDefined!441 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933551 () Unit!138495)

(assert (=> b!4771221 (= lt!1933551 (forallContained!3892 (toList!6381 lm!1309) lambda!225047 lt!1933550))))

(declare-fun contains!16988 (List!53727 tuple2!55758) Bool)

(assert (=> b!4771221 (contains!16988 (toList!6381 lm!1309) lt!1933550)))

(declare-fun lt!1933545 () (_ BitVec 64))

(assert (=> b!4771221 (= lt!1933550 (tuple2!55759 lt!1933545 lt!1933548))))

(declare-fun lt!1933546 () Unit!138495)

(declare-fun lemmaGetValueImpliesTupleContained!458 (ListLongMap!4795 (_ BitVec 64) List!53726) Unit!138495)

(assert (=> b!4771221 (= lt!1933546 (lemmaGetValueImpliesTupleContained!458 lm!1309 lt!1933545 lt!1933548))))

(declare-fun apply!12692 (ListLongMap!4795 (_ BitVec 64)) List!53726)

(assert (=> b!4771221 (= lt!1933548 (apply!12692 lm!1309 lt!1933545))))

(declare-fun contains!16989 (ListLongMap!4795 (_ BitVec 64)) Bool)

(assert (=> b!4771221 (contains!16989 lm!1309 lt!1933545)))

(declare-fun hash!4621 (Hashable!6647 K!15107) (_ BitVec 64))

(assert (=> b!4771221 (= lt!1933545 (hash!4621 hashF!980 key!2872))))

(declare-fun lt!1933549 () Unit!138495)

(declare-fun lemmaInGenMapThenLongMapContainsHash!863 (ListLongMap!4795 K!15107 Hashable!6647) Unit!138495)

(assert (=> b!4771221 (= lt!1933549 (lemmaInGenMapThenLongMapContainsHash!863 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488466 res!2023637) b!4771219))

(assert (= (and b!4771219 res!2023639) b!4771220))

(assert (= (and b!4771220 res!2023638) b!4771221))

(assert (= start!488466 b!4771222))

(declare-fun m!5743138 () Bool)

(assert (=> start!488466 m!5743138))

(declare-fun m!5743140 () Bool)

(assert (=> start!488466 m!5743140))

(declare-fun m!5743142 () Bool)

(assert (=> b!4771219 m!5743142))

(declare-fun m!5743144 () Bool)

(assert (=> b!4771220 m!5743144))

(assert (=> b!4771220 m!5743144))

(declare-fun m!5743146 () Bool)

(assert (=> b!4771220 m!5743146))

(declare-fun m!5743148 () Bool)

(assert (=> b!4771221 m!5743148))

(declare-fun m!5743150 () Bool)

(assert (=> b!4771221 m!5743150))

(declare-fun m!5743152 () Bool)

(assert (=> b!4771221 m!5743152))

(declare-fun m!5743154 () Bool)

(assert (=> b!4771221 m!5743154))

(declare-fun m!5743156 () Bool)

(assert (=> b!4771221 m!5743156))

(declare-fun m!5743158 () Bool)

(assert (=> b!4771221 m!5743158))

(declare-fun m!5743160 () Bool)

(assert (=> b!4771221 m!5743160))

(assert (=> b!4771221 m!5743158))

(declare-fun m!5743162 () Bool)

(assert (=> b!4771221 m!5743162))

(declare-fun m!5743164 () Bool)

(assert (=> b!4771221 m!5743164))

(declare-fun m!5743166 () Bool)

(assert (=> b!4771221 m!5743166))

(declare-fun m!5743168 () Bool)

(assert (=> b!4771221 m!5743168))

(assert (=> b!4771221 m!5743156))

(push 1)

(assert tp_is_empty!32589)

(assert (not b!4771219))

(assert (not b!4771220))

(assert (not start!488466))

(assert (not b!4771222))

(assert (not b!4771221))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4771253 () Bool)

(assert (=> b!4771253 false))

(declare-fun lt!1933599 () Unit!138495)

(declare-fun lt!1933602 () Unit!138495)

(assert (=> b!4771253 (= lt!1933599 lt!1933602)))

(declare-fun containsKey!3689 (List!53726 K!15107) Bool)

(assert (=> b!4771253 (containsKey!3689 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1009 (List!53726 K!15107) Unit!138495)

(assert (=> b!4771253 (= lt!1933602 (lemmaInGetKeysListThenContainsKey!1009 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(declare-fun e!2978446 () Unit!138495)

(declare-fun Unit!138499 () Unit!138495)

(assert (=> b!4771253 (= e!2978446 Unit!138499)))

(declare-fun b!4771254 () Bool)

(declare-fun e!2978448 () Unit!138495)

(declare-fun lt!1933601 () Unit!138495)

(assert (=> b!4771254 (= e!2978448 lt!1933601)))

(declare-fun lt!1933597 () Unit!138495)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2017 (List!53726 K!15107) Unit!138495)

(assert (=> b!4771254 (= lt!1933597 (lemmaContainsKeyImpliesGetValueByKeyDefined!2017 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(declare-datatypes ((Option!12742 0))(
  ( (None!12741) (Some!12741 (v!47867 V!15353)) )
))
(declare-fun isDefined!9888 (Option!12742) Bool)

(declare-fun getValueByKey!2221 (List!53726 K!15107) Option!12742)

(assert (=> b!4771254 (isDefined!9888 (getValueByKey!2221 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(declare-fun lt!1933598 () Unit!138495)

(assert (=> b!4771254 (= lt!1933598 lt!1933597)))

(declare-fun lemmaInListThenGetKeysListContains!1005 (List!53726 K!15107) Unit!138495)

(assert (=> b!4771254 (= lt!1933601 (lemmaInListThenGetKeysListContains!1005 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(declare-fun call!334485 () Bool)

(assert (=> b!4771254 call!334485))

(declare-fun b!4771255 () Bool)

(declare-fun e!2978447 () Bool)

(declare-datatypes ((List!53730 0))(
  ( (Nil!53606) (Cons!53606 (h!60018 K!15107) (t!361180 List!53730)) )
))
(declare-fun contains!16993 (List!53730 K!15107) Bool)

(declare-fun keys!19452 (ListMap!5861) List!53730)

(assert (=> b!4771255 (= e!2978447 (not (contains!16993 (keys!19452 (extractMap!2182 (toList!6381 lm!1309))) key!2872)))))

(declare-fun b!4771256 () Bool)

(declare-fun Unit!138500 () Unit!138495)

(assert (=> b!4771256 (= e!2978446 Unit!138500)))

(declare-fun b!4771257 () Bool)

(declare-fun e!2978450 () List!53730)

(assert (=> b!4771257 (= e!2978450 (keys!19452 (extractMap!2182 (toList!6381 lm!1309))))))

(declare-fun bm!334480 () Bool)

(assert (=> bm!334480 (= call!334485 (contains!16993 e!2978450 key!2872))))

(declare-fun c!813822 () Bool)

(declare-fun c!813823 () Bool)

(assert (=> bm!334480 (= c!813822 c!813823)))

(declare-fun b!4771258 () Bool)

(declare-fun e!2978445 () Bool)

(assert (=> b!4771258 (= e!2978445 (contains!16993 (keys!19452 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(declare-fun b!4771260 () Bool)

(declare-fun e!2978449 () Bool)

(assert (=> b!4771260 (= e!2978449 e!2978445)))

(declare-fun res!2023655 () Bool)

(assert (=> b!4771260 (=> (not res!2023655) (not e!2978445))))

(assert (=> b!4771260 (= res!2023655 (isDefined!9888 (getValueByKey!2221 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872)))))

(declare-fun b!4771261 () Bool)

(declare-fun getKeysList!1010 (List!53726) List!53730)

(assert (=> b!4771261 (= e!2978450 (getKeysList!1010 (toList!6382 (extractMap!2182 (toList!6381 lm!1309)))))))

(declare-fun b!4771259 () Bool)

(assert (=> b!4771259 (= e!2978448 e!2978446)))

(declare-fun c!813824 () Bool)

(assert (=> b!4771259 (= c!813824 call!334485)))

(declare-fun d!1524861 () Bool)

(assert (=> d!1524861 e!2978449))

(declare-fun res!2023656 () Bool)

(assert (=> d!1524861 (=> res!2023656 e!2978449)))

(assert (=> d!1524861 (= res!2023656 e!2978447)))

(declare-fun res!2023657 () Bool)

(assert (=> d!1524861 (=> (not res!2023657) (not e!2978447))))

(declare-fun lt!1933595 () Bool)

(assert (=> d!1524861 (= res!2023657 (not lt!1933595))))

(declare-fun lt!1933600 () Bool)

(assert (=> d!1524861 (= lt!1933595 lt!1933600)))

(declare-fun lt!1933596 () Unit!138495)

(assert (=> d!1524861 (= lt!1933596 e!2978448)))

(assert (=> d!1524861 (= c!813823 lt!1933600)))

(assert (=> d!1524861 (= lt!1933600 (containsKey!3689 (toList!6382 (extractMap!2182 (toList!6381 lm!1309))) key!2872))))

(assert (=> d!1524861 (= (contains!16987 (extractMap!2182 (toList!6381 lm!1309)) key!2872) lt!1933595)))

(assert (= (and d!1524861 c!813823) b!4771254))

(assert (= (and d!1524861 (not c!813823)) b!4771259))

(assert (= (and b!4771259 c!813824) b!4771253))

(assert (= (and b!4771259 (not c!813824)) b!4771256))

(assert (= (or b!4771254 b!4771259) bm!334480))

(assert (= (and bm!334480 c!813822) b!4771261))

(assert (= (and bm!334480 (not c!813822)) b!4771257))

(assert (= (and d!1524861 res!2023657) b!4771255))

(assert (= (and d!1524861 (not res!2023656)) b!4771260))

(assert (= (and b!4771260 res!2023655) b!4771258))

(declare-fun m!5743214 () Bool)

(assert (=> b!4771253 m!5743214))

(declare-fun m!5743216 () Bool)

(assert (=> b!4771253 m!5743216))

(assert (=> b!4771258 m!5743144))

(declare-fun m!5743218 () Bool)

(assert (=> b!4771258 m!5743218))

(assert (=> b!4771258 m!5743218))

(declare-fun m!5743220 () Bool)

(assert (=> b!4771258 m!5743220))

(assert (=> b!4771257 m!5743144))

(assert (=> b!4771257 m!5743218))

(declare-fun m!5743222 () Bool)

(assert (=> b!4771261 m!5743222))

(declare-fun m!5743224 () Bool)

(assert (=> b!4771254 m!5743224))

(declare-fun m!5743226 () Bool)

(assert (=> b!4771254 m!5743226))

(assert (=> b!4771254 m!5743226))

(declare-fun m!5743228 () Bool)

(assert (=> b!4771254 m!5743228))

(declare-fun m!5743230 () Bool)

(assert (=> b!4771254 m!5743230))

(declare-fun m!5743232 () Bool)

(assert (=> bm!334480 m!5743232))

(assert (=> b!4771255 m!5743144))

(assert (=> b!4771255 m!5743218))

(assert (=> b!4771255 m!5743218))

(assert (=> b!4771255 m!5743220))

(assert (=> b!4771260 m!5743226))

(assert (=> b!4771260 m!5743226))

(assert (=> b!4771260 m!5743228))

(assert (=> d!1524861 m!5743214))

(assert (=> b!4771220 d!1524861))

(declare-fun bs!1149572 () Bool)

(declare-fun d!1524871 () Bool)

(assert (= bs!1149572 (and d!1524871 start!488466)))

(declare-fun lambda!225060 () Int)

(assert (=> bs!1149572 (= lambda!225060 lambda!225047)))

(declare-fun lt!1933605 () ListMap!5861)

(declare-fun invariantList!1668 (List!53726) Bool)

(assert (=> d!1524871 (invariantList!1668 (toList!6382 lt!1933605))))

(declare-fun e!2978453 () ListMap!5861)

(assert (=> d!1524871 (= lt!1933605 e!2978453)))

(declare-fun c!813827 () Bool)

(assert (=> d!1524871 (= c!813827 (is-Cons!53603 (toList!6381 lm!1309)))))

(assert (=> d!1524871 (forall!11911 (toList!6381 lm!1309) lambda!225060)))

(assert (=> d!1524871 (= (extractMap!2182 (toList!6381 lm!1309)) lt!1933605)))

(declare-fun b!4771266 () Bool)

(declare-fun addToMapMapFromBucket!1633 (List!53726 ListMap!5861) ListMap!5861)

(assert (=> b!4771266 (= e!2978453 (addToMapMapFromBucket!1633 (_2!31173 (h!60015 (toList!6381 lm!1309))) (extractMap!2182 (t!361177 (toList!6381 lm!1309)))))))

(declare-fun b!4771267 () Bool)

(assert (=> b!4771267 (= e!2978453 (ListMap!5862 Nil!53602))))

(assert (= (and d!1524871 c!813827) b!4771266))

(assert (= (and d!1524871 (not c!813827)) b!4771267))

(declare-fun m!5743236 () Bool)

(assert (=> d!1524871 m!5743236))

(declare-fun m!5743238 () Bool)

(assert (=> d!1524871 m!5743238))

(declare-fun m!5743240 () Bool)

(assert (=> b!4771266 m!5743240))

(assert (=> b!4771266 m!5743240))

(declare-fun m!5743242 () Bool)

(assert (=> b!4771266 m!5743242))

(assert (=> b!4771220 d!1524871))

(declare-fun b!4771284 () Bool)

(declare-fun e!2978468 () Option!12740)

(assert (=> b!4771284 (= e!2978468 (Some!12739 (h!60014 lt!1933548)))))

(declare-fun d!1524875 () Bool)

(declare-fun e!2978465 () Bool)

(assert (=> d!1524875 e!2978465))

(declare-fun res!2023667 () Bool)

(assert (=> d!1524875 (=> res!2023667 e!2978465)))

(declare-fun e!2978467 () Bool)

(assert (=> d!1524875 (= res!2023667 e!2978467)))

(declare-fun res!2023668 () Bool)

(assert (=> d!1524875 (=> (not res!2023668) (not e!2978467))))

(declare-fun lt!1933608 () Option!12740)

(declare-fun isEmpty!29302 (Option!12740) Bool)

(assert (=> d!1524875 (= res!2023668 (isEmpty!29302 lt!1933608))))

(assert (=> d!1524875 (= lt!1933608 e!2978468)))

(declare-fun c!813833 () Bool)

(assert (=> d!1524875 (= c!813833 (and (is-Cons!53602 lt!1933548) (= (_1!31172 (h!60014 lt!1933548)) key!2872)))))

(assert (=> d!1524875 (noDuplicateKeys!2264 lt!1933548)))

(assert (=> d!1524875 (= (getPair!667 lt!1933548 key!2872) lt!1933608)))

(declare-fun b!4771285 () Bool)

(declare-fun containsKey!3690 (List!53726 K!15107) Bool)

(assert (=> b!4771285 (= e!2978467 (not (containsKey!3690 lt!1933548 key!2872)))))

(declare-fun b!4771286 () Bool)

(declare-fun e!2978466 () Bool)

(declare-fun contains!16994 (List!53726 tuple2!55756) Bool)

(declare-fun get!18106 (Option!12740) tuple2!55756)

(assert (=> b!4771286 (= e!2978466 (contains!16994 lt!1933548 (get!18106 lt!1933608)))))

(declare-fun b!4771287 () Bool)

(assert (=> b!4771287 (= e!2978465 e!2978466)))

(declare-fun res!2023669 () Bool)

(assert (=> b!4771287 (=> (not res!2023669) (not e!2978466))))

(assert (=> b!4771287 (= res!2023669 (isDefined!9886 lt!1933608))))

(declare-fun b!4771288 () Bool)

(declare-fun e!2978464 () Option!12740)

(assert (=> b!4771288 (= e!2978468 e!2978464)))

(declare-fun c!813832 () Bool)

(assert (=> b!4771288 (= c!813832 (is-Cons!53602 lt!1933548))))

(declare-fun b!4771289 () Bool)

(assert (=> b!4771289 (= e!2978464 None!12739)))

(declare-fun b!4771290 () Bool)

(assert (=> b!4771290 (= e!2978464 (getPair!667 (t!361176 lt!1933548) key!2872))))

(declare-fun b!4771291 () Bool)

(declare-fun res!2023666 () Bool)

(assert (=> b!4771291 (=> (not res!2023666) (not e!2978466))))

(assert (=> b!4771291 (= res!2023666 (= (_1!31172 (get!18106 lt!1933608)) key!2872))))

(assert (= (and d!1524875 c!813833) b!4771284))

(assert (= (and d!1524875 (not c!813833)) b!4771288))

(assert (= (and b!4771288 c!813832) b!4771290))

(assert (= (and b!4771288 (not c!813832)) b!4771289))

(assert (= (and d!1524875 res!2023668) b!4771285))

(assert (= (and d!1524875 (not res!2023667)) b!4771287))

(assert (= (and b!4771287 res!2023669) b!4771291))

(assert (= (and b!4771291 res!2023666) b!4771286))

(declare-fun m!5743244 () Bool)

(assert (=> d!1524875 m!5743244))

(assert (=> d!1524875 m!5743162))

(declare-fun m!5743246 () Bool)

(assert (=> b!4771287 m!5743246))

(declare-fun m!5743248 () Bool)

(assert (=> b!4771290 m!5743248))

(declare-fun m!5743250 () Bool)

(assert (=> b!4771286 m!5743250))

(assert (=> b!4771286 m!5743250))

(declare-fun m!5743252 () Bool)

(assert (=> b!4771286 m!5743252))

(declare-fun m!5743254 () Bool)

(assert (=> b!4771285 m!5743254))

(assert (=> b!4771291 m!5743250))

(assert (=> b!4771221 d!1524875))

(declare-fun d!1524877 () Bool)

(assert (=> d!1524877 (contains!16988 (toList!6381 lm!1309) (tuple2!55759 lt!1933545 lt!1933548))))

(declare-fun lt!1933611 () Unit!138495)

(declare-fun choose!34037 (ListLongMap!4795 (_ BitVec 64) List!53726) Unit!138495)

(assert (=> d!1524877 (= lt!1933611 (choose!34037 lm!1309 lt!1933545 lt!1933548))))

(assert (=> d!1524877 (contains!16989 lm!1309 lt!1933545)))

(assert (=> d!1524877 (= (lemmaGetValueImpliesTupleContained!458 lm!1309 lt!1933545 lt!1933548) lt!1933611)))

(declare-fun bs!1149573 () Bool)

(assert (= bs!1149573 d!1524877))

(declare-fun m!5743256 () Bool)

(assert (=> bs!1149573 m!5743256))

(declare-fun m!5743258 () Bool)

(assert (=> bs!1149573 m!5743258))

(assert (=> bs!1149573 m!5743164))

(assert (=> b!4771221 d!1524877))

(declare-fun bs!1149574 () Bool)

(declare-fun d!1524879 () Bool)

(assert (= bs!1149574 (and d!1524879 start!488466)))

(declare-fun lambda!225063 () Int)

(assert (=> bs!1149574 (= lambda!225063 lambda!225047)))

(declare-fun bs!1149575 () Bool)

(assert (= bs!1149575 (and d!1524879 d!1524871)))

(assert (=> bs!1149575 (= lambda!225063 lambda!225060)))

(assert (=> d!1524879 (contains!16989 lm!1309 (hash!4621 hashF!980 key!2872))))

(declare-fun lt!1933614 () Unit!138495)

(declare-fun choose!34038 (ListLongMap!4795 K!15107 Hashable!6647) Unit!138495)

(assert (=> d!1524879 (= lt!1933614 (choose!34038 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524879 (forall!11911 (toList!6381 lm!1309) lambda!225063)))

(assert (=> d!1524879 (= (lemmaInGenMapThenLongMapContainsHash!863 lm!1309 key!2872 hashF!980) lt!1933614)))

(declare-fun bs!1149576 () Bool)

(assert (= bs!1149576 d!1524879))

(assert (=> bs!1149576 m!5743150))

(assert (=> bs!1149576 m!5743150))

(declare-fun m!5743260 () Bool)

(assert (=> bs!1149576 m!5743260))

(declare-fun m!5743262 () Bool)

(assert (=> bs!1149576 m!5743262))

(declare-fun m!5743264 () Bool)

(assert (=> bs!1149576 m!5743264))

(assert (=> b!4771221 d!1524879))

(declare-fun d!1524881 () Bool)

(assert (=> d!1524881 (= (isDefined!9886 (getPair!667 lt!1933548 key!2872)) (not (isEmpty!29302 (getPair!667 lt!1933548 key!2872))))))

(declare-fun bs!1149577 () Bool)

(assert (= bs!1149577 d!1524881))

(assert (=> bs!1149577 m!5743158))

(declare-fun m!5743266 () Bool)

(assert (=> bs!1149577 m!5743266))

(assert (=> b!4771221 d!1524881))

(declare-fun d!1524883 () Bool)

(declare-fun res!2023674 () Bool)

(declare-fun e!2978473 () Bool)

(assert (=> d!1524883 (=> res!2023674 e!2978473)))

(assert (=> d!1524883 (= res!2023674 (not (is-Cons!53602 lt!1933548)))))

(assert (=> d!1524883 (= (noDuplicateKeys!2264 lt!1933548) e!2978473)))

(declare-fun b!4771297 () Bool)

(declare-fun e!2978474 () Bool)

(assert (=> b!4771297 (= e!2978473 e!2978474)))

(declare-fun res!2023675 () Bool)

(assert (=> b!4771297 (=> (not res!2023675) (not e!2978474))))

(assert (=> b!4771297 (= res!2023675 (not (containsKey!3690 (t!361176 lt!1933548) (_1!31172 (h!60014 lt!1933548)))))))

(declare-fun b!4771298 () Bool)

(assert (=> b!4771298 (= e!2978474 (noDuplicateKeys!2264 (t!361176 lt!1933548)))))

(assert (= (and d!1524883 (not res!2023674)) b!4771297))

(assert (= (and b!4771297 res!2023675) b!4771298))

(declare-fun m!5743268 () Bool)

(assert (=> b!4771297 m!5743268))

(declare-fun m!5743270 () Bool)

(assert (=> b!4771298 m!5743270))

(assert (=> b!4771221 d!1524883))

(declare-fun d!1524885 () Bool)

(declare-fun lt!1933617 () Bool)

(declare-fun content!9602 (List!53727) (Set tuple2!55758))

(assert (=> d!1524885 (= lt!1933617 (set.member lt!1933550 (content!9602 (toList!6381 lm!1309))))))

(declare-fun e!2978480 () Bool)

(assert (=> d!1524885 (= lt!1933617 e!2978480)))

(declare-fun res!2023681 () Bool)

(assert (=> d!1524885 (=> (not res!2023681) (not e!2978480))))

(assert (=> d!1524885 (= res!2023681 (is-Cons!53603 (toList!6381 lm!1309)))))

(assert (=> d!1524885 (= (contains!16988 (toList!6381 lm!1309) lt!1933550) lt!1933617)))

(declare-fun b!4771303 () Bool)

(declare-fun e!2978479 () Bool)

(assert (=> b!4771303 (= e!2978480 e!2978479)))

(declare-fun res!2023680 () Bool)

(assert (=> b!4771303 (=> res!2023680 e!2978479)))

(assert (=> b!4771303 (= res!2023680 (= (h!60015 (toList!6381 lm!1309)) lt!1933550))))

(declare-fun b!4771304 () Bool)

(assert (=> b!4771304 (= e!2978479 (contains!16988 (t!361177 (toList!6381 lm!1309)) lt!1933550))))

(assert (= (and d!1524885 res!2023681) b!4771303))

(assert (= (and b!4771303 (not res!2023680)) b!4771304))

(declare-fun m!5743272 () Bool)

(assert (=> d!1524885 m!5743272))

(declare-fun m!5743274 () Bool)

(assert (=> d!1524885 m!5743274))

(declare-fun m!5743276 () Bool)

(assert (=> b!4771304 m!5743276))

(assert (=> b!4771221 d!1524885))

(declare-fun d!1524887 () Bool)

(declare-fun hash!4623 (Hashable!6647 K!15107) (_ BitVec 64))

(assert (=> d!1524887 (= (hash!4621 hashF!980 key!2872) (hash!4623 hashF!980 key!2872))))

(declare-fun bs!1149578 () Bool)

(assert (= bs!1149578 d!1524887))

(declare-fun m!5743278 () Bool)

(assert (=> bs!1149578 m!5743278))

(assert (=> b!4771221 d!1524887))

(declare-fun bs!1149579 () Bool)

(declare-fun d!1524889 () Bool)

(assert (= bs!1149579 (and d!1524889 start!488466)))

(declare-fun lambda!225070 () Int)

(assert (=> bs!1149579 (= lambda!225070 lambda!225047)))

(declare-fun bs!1149580 () Bool)

(assert (= bs!1149580 (and d!1524889 d!1524871)))

(assert (=> bs!1149580 (= lambda!225070 lambda!225060)))

(declare-fun bs!1149581 () Bool)

(assert (= bs!1149581 (and d!1524889 d!1524879)))

(assert (=> bs!1149581 (= lambda!225070 lambda!225063)))

(declare-fun b!4771313 () Bool)

(declare-fun res!2023690 () Bool)

(declare-fun e!2978485 () Bool)

(assert (=> b!4771313 (=> (not res!2023690) (not e!2978485))))

(assert (=> b!4771313 (= res!2023690 (allKeysSameHashInMap!2052 lm!1309 hashF!980))))

(declare-fun lt!1933640 () List!53726)

(declare-fun lt!1933638 () (_ BitVec 64))

(declare-fun b!4771316 () Bool)

(declare-fun e!2978486 () Bool)

(declare-datatypes ((Option!12743 0))(
  ( (None!12742) (Some!12742 (v!47869 List!53726)) )
))
(declare-fun getValueByKey!2222 (List!53727 (_ BitVec 64)) Option!12743)

(assert (=> b!4771316 (= e!2978486 (= (getValueByKey!2222 (toList!6381 lm!1309) lt!1933638) (Some!12742 lt!1933640)))))

(declare-fun b!4771314 () Bool)

(declare-fun res!2023693 () Bool)

(assert (=> b!4771314 (=> (not res!2023693) (not e!2978485))))

(assert (=> b!4771314 (= res!2023693 (contains!16987 (extractMap!2182 (toList!6381 lm!1309)) key!2872))))

(declare-fun b!4771315 () Bool)

(assert (=> b!4771315 (= e!2978485 (isDefined!9886 (getPair!667 (apply!12692 lm!1309 (hash!4621 hashF!980 key!2872)) key!2872)))))

(declare-fun lt!1933634 () Unit!138495)

(assert (=> b!4771315 (= lt!1933634 (forallContained!3892 (toList!6381 lm!1309) lambda!225070 (tuple2!55759 (hash!4621 hashF!980 key!2872) (apply!12692 lm!1309 (hash!4621 hashF!980 key!2872)))))))

(declare-fun lt!1933636 () Unit!138495)

(declare-fun lt!1933641 () Unit!138495)

(assert (=> b!4771315 (= lt!1933636 lt!1933641)))

(assert (=> b!4771315 (contains!16988 (toList!6381 lm!1309) (tuple2!55759 lt!1933638 lt!1933640))))

(assert (=> b!4771315 (= lt!1933641 (lemmaGetValueImpliesTupleContained!458 lm!1309 lt!1933638 lt!1933640))))

(assert (=> b!4771315 e!2978486))

(declare-fun res!2023691 () Bool)

(assert (=> b!4771315 (=> (not res!2023691) (not e!2978486))))

(assert (=> b!4771315 (= res!2023691 (contains!16989 lm!1309 lt!1933638))))

(assert (=> b!4771315 (= lt!1933640 (apply!12692 lm!1309 (hash!4621 hashF!980 key!2872)))))

(assert (=> b!4771315 (= lt!1933638 (hash!4621 hashF!980 key!2872))))

(declare-fun lt!1933635 () Unit!138495)

(declare-fun lt!1933639 () Unit!138495)

(assert (=> b!4771315 (= lt!1933635 lt!1933639)))

(assert (=> b!4771315 (contains!16989 lm!1309 (hash!4621 hashF!980 key!2872))))

(assert (=> b!4771315 (= lt!1933639 (lemmaInGenMapThenLongMapContainsHash!863 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524889 e!2978485))

(declare-fun res!2023692 () Bool)

(assert (=> d!1524889 (=> (not res!2023692) (not e!2978485))))

(assert (=> d!1524889 (= res!2023692 (forall!11911 (toList!6381 lm!1309) lambda!225070))))

(declare-fun lt!1933637 () Unit!138495)

(declare-fun choose!34039 (ListLongMap!4795 K!15107 Hashable!6647) Unit!138495)

(assert (=> d!1524889 (= lt!1933637 (choose!34039 lm!1309 key!2872 hashF!980))))

(assert (=> d!1524889 (forall!11911 (toList!6381 lm!1309) lambda!225070)))

(assert (=> d!1524889 (= (lemmaInGenMapThenGetPairDefined!441 lm!1309 key!2872 hashF!980) lt!1933637)))

(assert (= (and d!1524889 res!2023692) b!4771313))

(assert (= (and b!4771313 res!2023690) b!4771314))

(assert (= (and b!4771314 res!2023693) b!4771315))

(assert (= (and b!4771315 res!2023691) b!4771316))

(assert (=> b!4771313 m!5743142))

(declare-fun m!5743280 () Bool)

(assert (=> b!4771316 m!5743280))

(declare-fun m!5743282 () Bool)

(assert (=> d!1524889 m!5743282))

(declare-fun m!5743284 () Bool)

(assert (=> d!1524889 m!5743284))

(assert (=> d!1524889 m!5743282))

(assert (=> b!4771314 m!5743144))

(assert (=> b!4771314 m!5743144))

(assert (=> b!4771314 m!5743146))

(declare-fun m!5743286 () Bool)

(assert (=> b!4771315 m!5743286))

(declare-fun m!5743288 () Bool)

(assert (=> b!4771315 m!5743288))

(assert (=> b!4771315 m!5743150))

(assert (=> b!4771315 m!5743286))

(declare-fun m!5743290 () Bool)

(assert (=> b!4771315 m!5743290))

(declare-fun m!5743292 () Bool)

(assert (=> b!4771315 m!5743292))

(assert (=> b!4771315 m!5743166))

(declare-fun m!5743294 () Bool)

(assert (=> b!4771315 m!5743294))

(assert (=> b!4771315 m!5743150))

(assert (=> b!4771315 m!5743260))

(declare-fun m!5743296 () Bool)

(assert (=> b!4771315 m!5743296))

(assert (=> b!4771315 m!5743150))

(assert (=> b!4771315 m!5743288))

(declare-fun m!5743298 () Bool)

(assert (=> b!4771315 m!5743298))

(assert (=> b!4771221 d!1524889))

(declare-fun d!1524891 () Bool)

(declare-fun e!2978495 () Bool)

(assert (=> d!1524891 e!2978495))

(declare-fun res!2023704 () Bool)

(assert (=> d!1524891 (=> res!2023704 e!2978495)))

(declare-fun lt!1933666 () Bool)

(assert (=> d!1524891 (= res!2023704 (not lt!1933666))))

(declare-fun lt!1933662 () Bool)

(assert (=> d!1524891 (= lt!1933666 lt!1933662)))

(declare-fun lt!1933663 () Unit!138495)

(declare-fun e!2978496 () Unit!138495)

(assert (=> d!1524891 (= lt!1933663 e!2978496)))

(declare-fun c!813836 () Bool)

(assert (=> d!1524891 (= c!813836 lt!1933662)))

(declare-fun containsKey!3691 (List!53727 (_ BitVec 64)) Bool)

(assert (=> d!1524891 (= lt!1933662 (containsKey!3691 (toList!6381 lm!1309) lt!1933545))))

(assert (=> d!1524891 (= (contains!16989 lm!1309 lt!1933545) lt!1933666)))

(declare-fun b!4771331 () Bool)

(declare-fun lt!1933667 () Unit!138495)

(assert (=> b!4771331 (= e!2978496 lt!1933667)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2018 (List!53727 (_ BitVec 64)) Unit!138495)

(assert (=> b!4771331 (= lt!1933667 (lemmaContainsKeyImpliesGetValueByKeyDefined!2018 (toList!6381 lm!1309) lt!1933545))))

(declare-fun isDefined!9889 (Option!12743) Bool)

(assert (=> b!4771331 (isDefined!9889 (getValueByKey!2222 (toList!6381 lm!1309) lt!1933545))))

(declare-fun b!4771332 () Bool)

(declare-fun Unit!138501 () Unit!138495)

(assert (=> b!4771332 (= e!2978496 Unit!138501)))

(declare-fun b!4771333 () Bool)

(assert (=> b!4771333 (= e!2978495 (isDefined!9889 (getValueByKey!2222 (toList!6381 lm!1309) lt!1933545)))))

(assert (= (and d!1524891 c!813836) b!4771331))

(assert (= (and d!1524891 (not c!813836)) b!4771332))

(assert (= (and d!1524891 (not res!2023704)) b!4771333))

(declare-fun m!5743300 () Bool)

(assert (=> d!1524891 m!5743300))

(declare-fun m!5743302 () Bool)

(assert (=> b!4771331 m!5743302))

(declare-fun m!5743304 () Bool)

(assert (=> b!4771331 m!5743304))

(assert (=> b!4771331 m!5743304))

(declare-fun m!5743306 () Bool)

(assert (=> b!4771331 m!5743306))

(assert (=> b!4771333 m!5743304))

(assert (=> b!4771333 m!5743304))

(assert (=> b!4771333 m!5743306))

(assert (=> b!4771221 d!1524891))

(declare-fun d!1524893 () Bool)

(declare-fun get!18107 (Option!12743) List!53726)

(assert (=> d!1524893 (= (apply!12692 lm!1309 lt!1933545) (get!18107 (getValueByKey!2222 (toList!6381 lm!1309) lt!1933545)))))

(declare-fun bs!1149582 () Bool)

(assert (= bs!1149582 d!1524893))

(assert (=> bs!1149582 m!5743304))

(assert (=> bs!1149582 m!5743304))

(declare-fun m!5743308 () Bool)

(assert (=> bs!1149582 m!5743308))

(assert (=> b!4771221 d!1524893))

(declare-fun d!1524895 () Bool)

(declare-fun dynLambda!21972 (Int tuple2!55758) Bool)

(assert (=> d!1524895 (dynLambda!21972 lambda!225047 lt!1933550)))

(declare-fun lt!1933672 () Unit!138495)

(declare-fun choose!34040 (List!53727 Int tuple2!55758) Unit!138495)

(assert (=> d!1524895 (= lt!1933672 (choose!34040 (toList!6381 lm!1309) lambda!225047 lt!1933550))))

(declare-fun e!2978499 () Bool)

(assert (=> d!1524895 e!2978499))

(declare-fun res!2023707 () Bool)

(assert (=> d!1524895 (=> (not res!2023707) (not e!2978499))))

(assert (=> d!1524895 (= res!2023707 (forall!11911 (toList!6381 lm!1309) lambda!225047))))

(assert (=> d!1524895 (= (forallContained!3892 (toList!6381 lm!1309) lambda!225047 lt!1933550) lt!1933672)))

(declare-fun b!4771336 () Bool)

(assert (=> b!4771336 (= e!2978499 (contains!16988 (toList!6381 lm!1309) lt!1933550))))

(assert (= (and d!1524895 res!2023707) b!4771336))

(declare-fun b_lambda!184635 () Bool)

(assert (=> (not b_lambda!184635) (not d!1524895)))

(declare-fun m!5743310 () Bool)

(assert (=> d!1524895 m!5743310))

(declare-fun m!5743312 () Bool)

(assert (=> d!1524895 m!5743312))

(assert (=> d!1524895 m!5743138))

(assert (=> b!4771336 m!5743154))

(assert (=> b!4771221 d!1524895))

(declare-fun bs!1149583 () Bool)

(declare-fun d!1524897 () Bool)

(assert (= bs!1149583 (and d!1524897 start!488466)))

(declare-fun lambda!225079 () Int)

(assert (=> bs!1149583 (not (= lambda!225079 lambda!225047))))

(declare-fun bs!1149584 () Bool)

(assert (= bs!1149584 (and d!1524897 d!1524871)))

(assert (=> bs!1149584 (not (= lambda!225079 lambda!225060))))

(declare-fun bs!1149585 () Bool)

(assert (= bs!1149585 (and d!1524897 d!1524879)))

(assert (=> bs!1149585 (not (= lambda!225079 lambda!225063))))

(declare-fun bs!1149586 () Bool)

(assert (= bs!1149586 (and d!1524897 d!1524889)))

(assert (=> bs!1149586 (not (= lambda!225079 lambda!225070))))

(assert (=> d!1524897 true))

(assert (=> d!1524897 (= (allKeysSameHashInMap!2052 lm!1309 hashF!980) (forall!11911 (toList!6381 lm!1309) lambda!225079))))

(declare-fun bs!1149587 () Bool)

(assert (= bs!1149587 d!1524897))

(declare-fun m!5743314 () Bool)

(assert (=> bs!1149587 m!5743314))

(assert (=> b!4771219 d!1524897))

(declare-fun d!1524899 () Bool)

(declare-fun res!2023712 () Bool)

(declare-fun e!2978504 () Bool)

(assert (=> d!1524899 (=> res!2023712 e!2978504)))

(assert (=> d!1524899 (= res!2023712 (is-Nil!53603 (toList!6381 lm!1309)))))

(assert (=> d!1524899 (= (forall!11911 (toList!6381 lm!1309) lambda!225047) e!2978504)))

(declare-fun b!4771343 () Bool)

(declare-fun e!2978505 () Bool)

(assert (=> b!4771343 (= e!2978504 e!2978505)))

(declare-fun res!2023713 () Bool)

(assert (=> b!4771343 (=> (not res!2023713) (not e!2978505))))

(assert (=> b!4771343 (= res!2023713 (dynLambda!21972 lambda!225047 (h!60015 (toList!6381 lm!1309))))))

(declare-fun b!4771344 () Bool)

(assert (=> b!4771344 (= e!2978505 (forall!11911 (t!361177 (toList!6381 lm!1309)) lambda!225047))))

(assert (= (and d!1524899 (not res!2023712)) b!4771343))

(assert (= (and b!4771343 res!2023713) b!4771344))

(declare-fun b_lambda!184637 () Bool)

(assert (=> (not b_lambda!184637) (not b!4771343)))

(declare-fun m!5743316 () Bool)

(assert (=> b!4771343 m!5743316))

(declare-fun m!5743318 () Bool)

(assert (=> b!4771344 m!5743318))

(assert (=> start!488466 d!1524899))

(declare-fun d!1524901 () Bool)

(declare-fun isStrictlySorted!820 (List!53727) Bool)

(assert (=> d!1524901 (= (inv!69134 lm!1309) (isStrictlySorted!820 (toList!6381 lm!1309)))))

(declare-fun bs!1149588 () Bool)

(assert (= bs!1149588 d!1524901))

(declare-fun m!5743320 () Bool)

(assert (=> bs!1149588 m!5743320))

(assert (=> start!488466 d!1524901))

(declare-fun b!4771353 () Bool)

(declare-fun e!2978510 () Bool)

(declare-fun tp!1356629 () Bool)

(declare-fun tp!1356630 () Bool)

(assert (=> b!4771353 (= e!2978510 (and tp!1356629 tp!1356630))))

(assert (=> b!4771222 (= tp!1356621 e!2978510)))

(assert (= (and b!4771222 (is-Cons!53603 (toList!6381 lm!1309))) b!4771353))

(declare-fun b_lambda!184639 () Bool)

(assert (= b_lambda!184637 (or start!488466 b_lambda!184639)))

(declare-fun bs!1149591 () Bool)

(declare-fun d!1524903 () Bool)

(assert (= bs!1149591 (and d!1524903 start!488466)))

(assert (=> bs!1149591 (= (dynLambda!21972 lambda!225047 (h!60015 (toList!6381 lm!1309))) (noDuplicateKeys!2264 (_2!31173 (h!60015 (toList!6381 lm!1309)))))))

(declare-fun m!5743322 () Bool)

(assert (=> bs!1149591 m!5743322))

(assert (=> b!4771343 d!1524903))

(declare-fun b_lambda!184641 () Bool)

(assert (= b_lambda!184635 (or start!488466 b_lambda!184641)))

(declare-fun bs!1149592 () Bool)

(declare-fun d!1524905 () Bool)

(assert (= bs!1149592 (and d!1524905 start!488466)))

(assert (=> bs!1149592 (= (dynLambda!21972 lambda!225047 lt!1933550) (noDuplicateKeys!2264 (_2!31173 lt!1933550)))))

(declare-fun m!5743324 () Bool)

(assert (=> bs!1149592 m!5743324))

(assert (=> d!1524895 d!1524905))

(push 1)

(assert (not b!4771314))

(assert tp_is_empty!32589)

(assert (not d!1524881))

(assert (not b!4771333))

(assert (not d!1524861))

(assert (not d!1524901))

(assert (not b!4771291))

(assert (not b!4771304))

(assert (not b!4771290))

(assert (not d!1524891))

(assert (not bs!1149592))

(assert (not b!4771287))

(assert (not d!1524887))

(assert (not d!1524885))

(assert (not d!1524877))

(assert (not d!1524871))

(assert (not b!4771315))

(assert (not b!4771260))

(assert (not bs!1149591))

(assert (not b!4771285))

(assert (not b!4771254))

(assert (not b!4771336))

(assert (not b!4771257))

(assert (not d!1524897))

(assert (not b!4771331))

(assert (not d!1524893))

(assert (not b!4771255))

(assert (not d!1524875))

(assert (not b!4771286))

(assert (not b_lambda!184641))

(assert (not b!4771297))

(assert (not b!4771298))

(assert (not b!4771353))

(assert (not b!4771344))

(assert (not b!4771258))

(assert (not b!4771313))

(assert (not bm!334480))

(assert (not d!1524895))

(assert (not d!1524879))

(assert (not b_lambda!184639))

(assert (not b!4771261))

(assert (not b!4771253))

(assert (not d!1524889))

(assert (not b!4771266))

(assert (not b!4771316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

