; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494072 () Bool)

(assert start!494072)

(declare-fun bs!1155238 () Bool)

(declare-fun b!4794535 () Bool)

(assert (= bs!1155238 (and b!4794535 start!494072)))

(declare-fun lambda!230997 () Int)

(declare-fun lambda!230996 () Int)

(assert (=> bs!1155238 (not (= lambda!230997 lambda!230996))))

(assert (=> b!4794535 true))

(assert (=> b!4794535 true))

(assert (=> b!4794535 true))

(declare-fun e!2993746 () Bool)

(declare-fun b!4794533 () Bool)

(declare-datatypes ((K!15817 0))(
  ( (K!15818 (val!20959 Int)) )
))
(declare-fun key!5896 () K!15817)

(declare-datatypes ((V!16063 0))(
  ( (V!16064 (val!20960 Int)) )
))
(declare-datatypes ((tuple2!56892 0))(
  ( (tuple2!56893 (_1!31740 K!15817) (_2!31740 V!16063)) )
))
(declare-datatypes ((List!54366 0))(
  ( (Nil!54242) (Cons!54242 (h!60672 tuple2!56892) (t!361816 List!54366)) )
))
(declare-datatypes ((ListMap!6413 0))(
  ( (ListMap!6414 (toList!6941 List!54366)) )
))
(declare-fun lt!1952365 () ListMap!6413)

(declare-datatypes ((tuple2!56894 0))(
  ( (tuple2!56895 (_1!31741 (_ BitVec 64)) (_2!31741 List!54366)) )
))
(declare-datatypes ((List!54367 0))(
  ( (Nil!54243) (Cons!54243 (h!60673 tuple2!56894) (t!361817 List!54367)) )
))
(declare-datatypes ((ListLongMap!5363 0))(
  ( (ListLongMap!5364 (toList!6942 List!54367)) )
))
(declare-fun lm!2473 () ListLongMap!5363)

(declare-fun contains!17869 (ListMap!6413 K!15817) Bool)

(declare-fun addToMapMapFromBucket!1712 (List!54366 ListMap!6413) ListMap!6413)

(assert (=> b!4794533 (= e!2993746 (contains!17869 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365) key!5896))))

(declare-fun b!4794534 () Bool)

(declare-fun res!2038208 () Bool)

(declare-fun e!2993745 () Bool)

(assert (=> b!4794534 (=> res!2038208 e!2993745)))

(assert (=> b!4794534 (= res!2038208 (not (is-Cons!54243 (toList!6942 lm!2473))))))

(assert (=> b!4794535 (= e!2993745 e!2993746)))

(declare-fun res!2038207 () Bool)

(assert (=> b!4794535 (=> res!2038207 e!2993746)))

(declare-fun noDuplicateKeys!2344 (List!54366) Bool)

(assert (=> b!4794535 (= res!2038207 (not (noDuplicateKeys!2344 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(declare-fun extractMap!2458 (List!54367) ListMap!6413)

(assert (=> b!4794535 (= lt!1952365 (extractMap!2458 (t!361817 (toList!6942 lm!2473))))))

(declare-fun lt!1952360 () ListLongMap!5363)

(assert (=> b!4794535 (not (contains!17869 (extractMap!2458 (toList!6942 lt!1952360)) key!5896))))

(declare-datatypes ((Hashable!6931 0))(
  ( (HashableExt!6930 (__x!32954 Int)) )
))
(declare-fun hashF!1559 () Hashable!6931)

(declare-datatypes ((Unit!140068 0))(
  ( (Unit!140069) )
))
(declare-fun lt!1952358 () Unit!140068)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!37 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> b!4794535 (= lt!1952358 (lemmaHashNotInLongMapThenNotInGenerated!37 lt!1952360 key!5896 hashF!1559))))

(declare-fun tail!9280 (ListLongMap!5363) ListLongMap!5363)

(assert (=> b!4794535 (= lt!1952360 (tail!9280 lm!2473))))

(declare-fun lt!1952363 () Unit!140068)

(declare-fun lambda!230998 () Int)

(declare-fun value!3111 () V!16063)

(declare-fun forallContained!4176 (List!54366 Int tuple2!56892) Unit!140068)

(assert (=> b!4794535 (= lt!1952363 (forallContained!4176 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!230998 (tuple2!56893 key!5896 value!3111)))))

(declare-fun lt!1952362 () Unit!140068)

(declare-fun forallContained!4177 (List!54367 Int tuple2!56894) Unit!140068)

(assert (=> b!4794535 (= lt!1952362 (forallContained!4177 (toList!6942 lm!2473) lambda!230997 (h!60673 (toList!6942 lm!2473))))))

(declare-fun b!4794536 () Bool)

(declare-fun res!2038211 () Bool)

(declare-fun e!2993749 () Bool)

(assert (=> b!4794536 (=> (not res!2038211) (not e!2993749))))

(declare-fun allKeysSameHashInMap!2336 (ListLongMap!5363 Hashable!6931) Bool)

(assert (=> b!4794536 (= res!2038211 (allKeysSameHashInMap!2336 lm!2473 hashF!1559))))

(declare-fun b!4794537 () Bool)

(declare-fun res!2038212 () Bool)

(assert (=> b!4794537 (=> (not res!2038212) (not e!2993749))))

(assert (=> b!4794537 (= res!2038212 (contains!17869 (extractMap!2458 (toList!6942 lm!2473)) key!5896))))

(declare-fun b!4794539 () Bool)

(assert (=> b!4794539 (= e!2993749 (not e!2993745))))

(declare-fun res!2038213 () Bool)

(assert (=> b!4794539 (=> res!2038213 e!2993745)))

(declare-fun getValue!119 (List!54367 K!15817) V!16063)

(assert (=> b!4794539 (= res!2038213 (not (= (getValue!119 (toList!6942 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!573 (List!54367 K!15817) Bool)

(assert (=> b!4794539 (containsKeyBiggerList!573 (toList!6942 lm!2473) key!5896)))

(declare-fun lt!1952361 () Unit!140068)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!313 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> b!4794539 (= lt!1952361 (lemmaInLongMapThenContainsKeyBiggerList!313 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2993747 () Bool)

(assert (=> b!4794539 e!2993747))

(declare-fun res!2038210 () Bool)

(assert (=> b!4794539 (=> (not res!2038210) (not e!2993747))))

(declare-fun lt!1952359 () (_ BitVec 64))

(declare-fun contains!17870 (ListLongMap!5363 (_ BitVec 64)) Bool)

(assert (=> b!4794539 (= res!2038210 (contains!17870 lm!2473 lt!1952359))))

(declare-fun hash!4971 (Hashable!6931 K!15817) (_ BitVec 64))

(assert (=> b!4794539 (= lt!1952359 (hash!4971 hashF!1559 key!5896))))

(declare-fun lt!1952364 () Unit!140068)

(declare-fun lemmaInGenericMapThenInLongMap!335 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> b!4794539 (= lt!1952364 (lemmaInGenericMapThenInLongMap!335 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4794540 () Bool)

(declare-datatypes ((Option!13116 0))(
  ( (None!13115) (Some!13115 (v!48412 tuple2!56892)) )
))
(declare-fun isDefined!10257 (Option!13116) Bool)

(declare-fun getPair!903 (List!54366 K!15817) Option!13116)

(declare-fun apply!13000 (ListLongMap!5363 (_ BitVec 64)) List!54366)

(assert (=> b!4794540 (= e!2993747 (isDefined!10257 (getPair!903 (apply!13000 lm!2473 lt!1952359) key!5896)))))

(declare-fun b!4794541 () Bool)

(declare-fun e!2993748 () Bool)

(declare-fun tp!1358113 () Bool)

(assert (=> b!4794541 (= e!2993748 tp!1358113)))

(declare-fun res!2038214 () Bool)

(assert (=> start!494072 (=> (not res!2038214) (not e!2993749))))

(declare-fun forall!12270 (List!54367 Int) Bool)

(assert (=> start!494072 (= res!2038214 (forall!12270 (toList!6942 lm!2473) lambda!230996))))

(assert (=> start!494072 e!2993749))

(declare-fun inv!69844 (ListLongMap!5363) Bool)

(assert (=> start!494072 (and (inv!69844 lm!2473) e!2993748)))

(assert (=> start!494072 true))

(declare-fun tp_is_empty!33585 () Bool)

(assert (=> start!494072 tp_is_empty!33585))

(declare-fun tp_is_empty!33587 () Bool)

(assert (=> start!494072 tp_is_empty!33587))

(declare-fun b!4794538 () Bool)

(declare-fun res!2038209 () Bool)

(assert (=> b!4794538 (=> res!2038209 e!2993745)))

(declare-fun containsKey!3966 (List!54366 K!15817) Bool)

(assert (=> b!4794538 (= res!2038209 (not (containsKey!3966 (_2!31741 (h!60673 (toList!6942 lm!2473))) key!5896)))))

(assert (= (and start!494072 res!2038214) b!4794536))

(assert (= (and b!4794536 res!2038211) b!4794537))

(assert (= (and b!4794537 res!2038212) b!4794539))

(assert (= (and b!4794539 res!2038210) b!4794540))

(assert (= (and b!4794539 (not res!2038213)) b!4794534))

(assert (= (and b!4794534 (not res!2038208)) b!4794538))

(assert (= (and b!4794538 (not res!2038209)) b!4794535))

(assert (= (and b!4794535 (not res!2038207)) b!4794533))

(assert (= start!494072 b!4794541))

(declare-fun m!5775700 () Bool)

(assert (=> b!4794535 m!5775700))

(declare-fun m!5775702 () Bool)

(assert (=> b!4794535 m!5775702))

(declare-fun m!5775704 () Bool)

(assert (=> b!4794535 m!5775704))

(assert (=> b!4794535 m!5775702))

(declare-fun m!5775706 () Bool)

(assert (=> b!4794535 m!5775706))

(declare-fun m!5775708 () Bool)

(assert (=> b!4794535 m!5775708))

(declare-fun m!5775710 () Bool)

(assert (=> b!4794535 m!5775710))

(declare-fun m!5775712 () Bool)

(assert (=> b!4794535 m!5775712))

(declare-fun m!5775714 () Bool)

(assert (=> b!4794535 m!5775714))

(declare-fun m!5775716 () Bool)

(assert (=> b!4794538 m!5775716))

(declare-fun m!5775718 () Bool)

(assert (=> b!4794533 m!5775718))

(assert (=> b!4794533 m!5775718))

(declare-fun m!5775720 () Bool)

(assert (=> b!4794533 m!5775720))

(declare-fun m!5775722 () Bool)

(assert (=> b!4794536 m!5775722))

(declare-fun m!5775724 () Bool)

(assert (=> b!4794539 m!5775724))

(declare-fun m!5775726 () Bool)

(assert (=> b!4794539 m!5775726))

(declare-fun m!5775728 () Bool)

(assert (=> b!4794539 m!5775728))

(declare-fun m!5775730 () Bool)

(assert (=> b!4794539 m!5775730))

(declare-fun m!5775732 () Bool)

(assert (=> b!4794539 m!5775732))

(declare-fun m!5775734 () Bool)

(assert (=> b!4794539 m!5775734))

(declare-fun m!5775736 () Bool)

(assert (=> start!494072 m!5775736))

(declare-fun m!5775738 () Bool)

(assert (=> start!494072 m!5775738))

(declare-fun m!5775740 () Bool)

(assert (=> b!4794540 m!5775740))

(assert (=> b!4794540 m!5775740))

(declare-fun m!5775742 () Bool)

(assert (=> b!4794540 m!5775742))

(assert (=> b!4794540 m!5775742))

(declare-fun m!5775744 () Bool)

(assert (=> b!4794540 m!5775744))

(declare-fun m!5775746 () Bool)

(assert (=> b!4794537 m!5775746))

(assert (=> b!4794537 m!5775746))

(declare-fun m!5775748 () Bool)

(assert (=> b!4794537 m!5775748))

(push 1)

(assert tp_is_empty!33585)

(assert (not b!4794539))

(assert (not b!4794541))

(assert (not b!4794533))

(assert (not start!494072))

(assert (not b!4794536))

(assert (not b!4794538))

(assert tp_is_empty!33587)

(assert (not b!4794540))

(assert (not b!4794537))

(assert (not b!4794535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1534201 () Bool)

(declare-fun e!2993770 () Bool)

(assert (=> d!1534201 e!2993770))

(declare-fun res!2038241 () Bool)

(assert (=> d!1534201 (=> res!2038241 e!2993770)))

(declare-fun lt!1952400 () Bool)

(assert (=> d!1534201 (= res!2038241 (not lt!1952400))))

(declare-fun lt!1952398 () Bool)

(assert (=> d!1534201 (= lt!1952400 lt!1952398)))

(declare-fun lt!1952401 () Unit!140068)

(declare-fun e!2993769 () Unit!140068)

(assert (=> d!1534201 (= lt!1952401 e!2993769)))

(declare-fun c!817154 () Bool)

(assert (=> d!1534201 (= c!817154 lt!1952398)))

(declare-fun containsKey!3968 (List!54367 (_ BitVec 64)) Bool)

(assert (=> d!1534201 (= lt!1952398 (containsKey!3968 (toList!6942 lm!2473) lt!1952359))))

(assert (=> d!1534201 (= (contains!17870 lm!2473 lt!1952359) lt!1952400)))

(declare-fun b!4794587 () Bool)

(declare-fun lt!1952399 () Unit!140068)

(assert (=> b!4794587 (= e!2993769 lt!1952399)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2152 (List!54367 (_ BitVec 64)) Unit!140068)

(assert (=> b!4794587 (= lt!1952399 (lemmaContainsKeyImpliesGetValueByKeyDefined!2152 (toList!6942 lm!2473) lt!1952359))))

(declare-datatypes ((Option!13118 0))(
  ( (None!13117) (Some!13117 (v!48414 List!54366)) )
))
(declare-fun isDefined!10259 (Option!13118) Bool)

(declare-fun getValueByKey!2361 (List!54367 (_ BitVec 64)) Option!13118)

(assert (=> b!4794587 (isDefined!10259 (getValueByKey!2361 (toList!6942 lm!2473) lt!1952359))))

(declare-fun b!4794588 () Bool)

(declare-fun Unit!140072 () Unit!140068)

(assert (=> b!4794588 (= e!2993769 Unit!140072)))

(declare-fun b!4794589 () Bool)

(assert (=> b!4794589 (= e!2993770 (isDefined!10259 (getValueByKey!2361 (toList!6942 lm!2473) lt!1952359)))))

(assert (= (and d!1534201 c!817154) b!4794587))

(assert (= (and d!1534201 (not c!817154)) b!4794588))

(assert (= (and d!1534201 (not res!2038241)) b!4794589))

(declare-fun m!5775800 () Bool)

(assert (=> d!1534201 m!5775800))

(declare-fun m!5775802 () Bool)

(assert (=> b!4794587 m!5775802))

(declare-fun m!5775804 () Bool)

(assert (=> b!4794587 m!5775804))

(assert (=> b!4794587 m!5775804))

(declare-fun m!5775806 () Bool)

(assert (=> b!4794587 m!5775806))

(assert (=> b!4794589 m!5775804))

(assert (=> b!4794589 m!5775804))

(assert (=> b!4794589 m!5775806))

(assert (=> b!4794539 d!1534201))

(declare-fun d!1534203 () Bool)

(declare-fun res!2038250 () Bool)

(declare-fun e!2993779 () Bool)

(assert (=> d!1534203 (=> res!2038250 e!2993779)))

(declare-fun e!2993778 () Bool)

(assert (=> d!1534203 (= res!2038250 e!2993778)))

(declare-fun res!2038249 () Bool)

(assert (=> d!1534203 (=> (not res!2038249) (not e!2993778))))

(assert (=> d!1534203 (= res!2038249 (is-Cons!54243 (toList!6942 lm!2473)))))

(assert (=> d!1534203 (= (containsKeyBiggerList!573 (toList!6942 lm!2473) key!5896) e!2993779)))

(declare-fun b!4794596 () Bool)

(assert (=> b!4794596 (= e!2993778 (containsKey!3966 (_2!31741 (h!60673 (toList!6942 lm!2473))) key!5896))))

(declare-fun b!4794597 () Bool)

(declare-fun e!2993777 () Bool)

(assert (=> b!4794597 (= e!2993779 e!2993777)))

(declare-fun res!2038248 () Bool)

(assert (=> b!4794597 (=> (not res!2038248) (not e!2993777))))

(assert (=> b!4794597 (= res!2038248 (is-Cons!54243 (toList!6942 lm!2473)))))

(declare-fun b!4794598 () Bool)

(assert (=> b!4794598 (= e!2993777 (containsKeyBiggerList!573 (t!361817 (toList!6942 lm!2473)) key!5896))))

(assert (= (and d!1534203 res!2038249) b!4794596))

(assert (= (and d!1534203 (not res!2038250)) b!4794597))

(assert (= (and b!4794597 res!2038248) b!4794598))

(assert (=> b!4794596 m!5775716))

(declare-fun m!5775808 () Bool)

(assert (=> b!4794598 m!5775808))

(assert (=> b!4794539 d!1534203))

(declare-fun bs!1155240 () Bool)

(declare-fun d!1534205 () Bool)

(assert (= bs!1155240 (and d!1534205 start!494072)))

(declare-fun lambda!231010 () Int)

(assert (=> bs!1155240 (= lambda!231010 lambda!230996)))

(declare-fun bs!1155241 () Bool)

(assert (= bs!1155241 (and d!1534205 b!4794535)))

(assert (=> bs!1155241 (not (= lambda!231010 lambda!230997))))

(assert (=> d!1534205 (containsKeyBiggerList!573 (toList!6942 lm!2473) key!5896)))

(declare-fun lt!1952404 () Unit!140068)

(declare-fun choose!34560 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> d!1534205 (= lt!1952404 (choose!34560 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534205 (forall!12270 (toList!6942 lm!2473) lambda!231010)))

(assert (=> d!1534205 (= (lemmaInLongMapThenContainsKeyBiggerList!313 lm!2473 key!5896 hashF!1559) lt!1952404)))

(declare-fun bs!1155242 () Bool)

(assert (= bs!1155242 d!1534205))

(assert (=> bs!1155242 m!5775726))

(declare-fun m!5775810 () Bool)

(assert (=> bs!1155242 m!5775810))

(declare-fun m!5775812 () Bool)

(assert (=> bs!1155242 m!5775812))

(assert (=> b!4794539 d!1534205))

(declare-fun bs!1155243 () Bool)

(declare-fun d!1534207 () Bool)

(assert (= bs!1155243 (and d!1534207 start!494072)))

(declare-fun lambda!231013 () Int)

(assert (=> bs!1155243 (= lambda!231013 lambda!230996)))

(declare-fun bs!1155244 () Bool)

(assert (= bs!1155244 (and d!1534207 b!4794535)))

(assert (=> bs!1155244 (not (= lambda!231013 lambda!230997))))

(declare-fun bs!1155245 () Bool)

(assert (= bs!1155245 (and d!1534207 d!1534205)))

(assert (=> bs!1155245 (= lambda!231013 lambda!231010)))

(declare-fun e!2993782 () Bool)

(assert (=> d!1534207 e!2993782))

(declare-fun res!2038253 () Bool)

(assert (=> d!1534207 (=> (not res!2038253) (not e!2993782))))

(assert (=> d!1534207 (= res!2038253 (contains!17870 lm!2473 (hash!4971 hashF!1559 key!5896)))))

(declare-fun lt!1952407 () Unit!140068)

(declare-fun choose!34561 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> d!1534207 (= lt!1952407 (choose!34561 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534207 (forall!12270 (toList!6942 lm!2473) lambda!231013)))

(assert (=> d!1534207 (= (lemmaInGenericMapThenInLongMap!335 lm!2473 key!5896 hashF!1559) lt!1952407)))

(declare-fun b!4794601 () Bool)

(assert (=> b!4794601 (= e!2993782 (isDefined!10257 (getPair!903 (apply!13000 lm!2473 (hash!4971 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1534207 res!2038253) b!4794601))

(assert (=> d!1534207 m!5775728))

(assert (=> d!1534207 m!5775728))

(declare-fun m!5775814 () Bool)

(assert (=> d!1534207 m!5775814))

(declare-fun m!5775816 () Bool)

(assert (=> d!1534207 m!5775816))

(declare-fun m!5775818 () Bool)

(assert (=> d!1534207 m!5775818))

(assert (=> b!4794601 m!5775728))

(assert (=> b!4794601 m!5775728))

(declare-fun m!5775820 () Bool)

(assert (=> b!4794601 m!5775820))

(assert (=> b!4794601 m!5775820))

(declare-fun m!5775822 () Bool)

(assert (=> b!4794601 m!5775822))

(assert (=> b!4794601 m!5775822))

(declare-fun m!5775824 () Bool)

(assert (=> b!4794601 m!5775824))

(assert (=> b!4794539 d!1534207))

(declare-fun d!1534209 () Bool)

(declare-fun c!817157 () Bool)

(declare-fun e!2993788 () Bool)

(assert (=> d!1534209 (= c!817157 e!2993788)))

(declare-fun res!2038256 () Bool)

(assert (=> d!1534209 (=> (not res!2038256) (not e!2993788))))

(assert (=> d!1534209 (= res!2038256 (is-Cons!54243 (toList!6942 lm!2473)))))

(declare-fun e!2993787 () V!16063)

(assert (=> d!1534209 (= (getValue!119 (toList!6942 lm!2473) key!5896) e!2993787)))

(declare-fun b!4794610 () Bool)

(assert (=> b!4794610 (= e!2993788 (containsKey!3966 (_2!31741 (h!60673 (toList!6942 lm!2473))) key!5896))))

(declare-fun b!4794608 () Bool)

(declare-fun get!18496 (Option!13116) tuple2!56892)

(assert (=> b!4794608 (= e!2993787 (_2!31740 (get!18496 (getPair!903 (_2!31741 (h!60673 (toList!6942 lm!2473))) key!5896))))))

(declare-fun b!4794609 () Bool)

(assert (=> b!4794609 (= e!2993787 (getValue!119 (t!361817 (toList!6942 lm!2473)) key!5896))))

(assert (= (and d!1534209 res!2038256) b!4794610))

(assert (= (and d!1534209 c!817157) b!4794608))

(assert (= (and d!1534209 (not c!817157)) b!4794609))

(assert (=> b!4794610 m!5775716))

(declare-fun m!5775826 () Bool)

(assert (=> b!4794608 m!5775826))

(assert (=> b!4794608 m!5775826))

(declare-fun m!5775828 () Bool)

(assert (=> b!4794608 m!5775828))

(declare-fun m!5775830 () Bool)

(assert (=> b!4794609 m!5775830))

(assert (=> b!4794539 d!1534209))

(declare-fun d!1534213 () Bool)

(declare-fun hash!4973 (Hashable!6931 K!15817) (_ BitVec 64))

(assert (=> d!1534213 (= (hash!4971 hashF!1559 key!5896) (hash!4973 hashF!1559 key!5896))))

(declare-fun bs!1155246 () Bool)

(assert (= bs!1155246 d!1534213))

(declare-fun m!5775832 () Bool)

(assert (=> bs!1155246 m!5775832))

(assert (=> b!4794539 d!1534213))

(declare-fun d!1534215 () Bool)

(declare-fun isEmpty!29462 (Option!13116) Bool)

(assert (=> d!1534215 (= (isDefined!10257 (getPair!903 (apply!13000 lm!2473 lt!1952359) key!5896)) (not (isEmpty!29462 (getPair!903 (apply!13000 lm!2473 lt!1952359) key!5896))))))

(declare-fun bs!1155247 () Bool)

(assert (= bs!1155247 d!1534215))

(assert (=> bs!1155247 m!5775742))

(declare-fun m!5775834 () Bool)

(assert (=> bs!1155247 m!5775834))

(assert (=> b!4794540 d!1534215))

(declare-fun d!1534217 () Bool)

(declare-fun e!2993801 () Bool)

(assert (=> d!1534217 e!2993801))

(declare-fun res!2038265 () Bool)

(assert (=> d!1534217 (=> res!2038265 e!2993801)))

(declare-fun e!2993803 () Bool)

(assert (=> d!1534217 (= res!2038265 e!2993803)))

(declare-fun res!2038266 () Bool)

(assert (=> d!1534217 (=> (not res!2038266) (not e!2993803))))

(declare-fun lt!1952410 () Option!13116)

(assert (=> d!1534217 (= res!2038266 (isEmpty!29462 lt!1952410))))

(declare-fun e!2993802 () Option!13116)

(assert (=> d!1534217 (= lt!1952410 e!2993802)))

(declare-fun c!817162 () Bool)

(assert (=> d!1534217 (= c!817162 (and (is-Cons!54242 (apply!13000 lm!2473 lt!1952359)) (= (_1!31740 (h!60672 (apply!13000 lm!2473 lt!1952359))) key!5896)))))

(assert (=> d!1534217 (noDuplicateKeys!2344 (apply!13000 lm!2473 lt!1952359))))

(assert (=> d!1534217 (= (getPair!903 (apply!13000 lm!2473 lt!1952359) key!5896) lt!1952410)))

(declare-fun e!2993799 () Option!13116)

(declare-fun b!4794627 () Bool)

(assert (=> b!4794627 (= e!2993799 (getPair!903 (t!361816 (apply!13000 lm!2473 lt!1952359)) key!5896))))

(declare-fun b!4794628 () Bool)

(declare-fun res!2038268 () Bool)

(declare-fun e!2993800 () Bool)

(assert (=> b!4794628 (=> (not res!2038268) (not e!2993800))))

(assert (=> b!4794628 (= res!2038268 (= (_1!31740 (get!18496 lt!1952410)) key!5896))))

(declare-fun b!4794629 () Bool)

(assert (=> b!4794629 (= e!2993802 e!2993799)))

(declare-fun c!817163 () Bool)

(assert (=> b!4794629 (= c!817163 (is-Cons!54242 (apply!13000 lm!2473 lt!1952359)))))

(declare-fun b!4794630 () Bool)

(assert (=> b!4794630 (= e!2993802 (Some!13115 (h!60672 (apply!13000 lm!2473 lt!1952359))))))

(declare-fun b!4794631 () Bool)

(assert (=> b!4794631 (= e!2993801 e!2993800)))

(declare-fun res!2038267 () Bool)

(assert (=> b!4794631 (=> (not res!2038267) (not e!2993800))))

(assert (=> b!4794631 (= res!2038267 (isDefined!10257 lt!1952410))))

(declare-fun b!4794632 () Bool)

(assert (=> b!4794632 (= e!2993803 (not (containsKey!3966 (apply!13000 lm!2473 lt!1952359) key!5896)))))

(declare-fun b!4794633 () Bool)

(assert (=> b!4794633 (= e!2993799 None!13115)))

(declare-fun b!4794634 () Bool)

(declare-fun contains!17873 (List!54366 tuple2!56892) Bool)

(assert (=> b!4794634 (= e!2993800 (contains!17873 (apply!13000 lm!2473 lt!1952359) (get!18496 lt!1952410)))))

(assert (= (and d!1534217 c!817162) b!4794630))

(assert (= (and d!1534217 (not c!817162)) b!4794629))

(assert (= (and b!4794629 c!817163) b!4794627))

(assert (= (and b!4794629 (not c!817163)) b!4794633))

(assert (= (and d!1534217 res!2038266) b!4794632))

(assert (= (and d!1534217 (not res!2038265)) b!4794631))

(assert (= (and b!4794631 res!2038267) b!4794628))

(assert (= (and b!4794628 res!2038268) b!4794634))

(declare-fun m!5775838 () Bool)

(assert (=> b!4794634 m!5775838))

(assert (=> b!4794634 m!5775740))

(assert (=> b!4794634 m!5775838))

(declare-fun m!5775840 () Bool)

(assert (=> b!4794634 m!5775840))

(assert (=> b!4794632 m!5775740))

(declare-fun m!5775842 () Bool)

(assert (=> b!4794632 m!5775842))

(declare-fun m!5775844 () Bool)

(assert (=> b!4794627 m!5775844))

(declare-fun m!5775846 () Bool)

(assert (=> d!1534217 m!5775846))

(assert (=> d!1534217 m!5775740))

(declare-fun m!5775848 () Bool)

(assert (=> d!1534217 m!5775848))

(assert (=> b!4794628 m!5775838))

(declare-fun m!5775850 () Bool)

(assert (=> b!4794631 m!5775850))

(assert (=> b!4794540 d!1534217))

(declare-fun d!1534221 () Bool)

(declare-fun get!18497 (Option!13118) List!54366)

(assert (=> d!1534221 (= (apply!13000 lm!2473 lt!1952359) (get!18497 (getValueByKey!2361 (toList!6942 lm!2473) lt!1952359)))))

(declare-fun bs!1155251 () Bool)

(assert (= bs!1155251 d!1534221))

(assert (=> bs!1155251 m!5775804))

(assert (=> bs!1155251 m!5775804))

(declare-fun m!5775852 () Bool)

(assert (=> bs!1155251 m!5775852))

(assert (=> b!4794540 d!1534221))

(declare-fun d!1534223 () Bool)

(declare-fun res!2038273 () Bool)

(declare-fun e!2993808 () Bool)

(assert (=> d!1534223 (=> res!2038273 e!2993808)))

(assert (=> d!1534223 (= res!2038273 (and (is-Cons!54242 (_2!31741 (h!60673 (toList!6942 lm!2473)))) (= (_1!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))) key!5896)))))

(assert (=> d!1534223 (= (containsKey!3966 (_2!31741 (h!60673 (toList!6942 lm!2473))) key!5896) e!2993808)))

(declare-fun b!4794639 () Bool)

(declare-fun e!2993809 () Bool)

(assert (=> b!4794639 (= e!2993808 e!2993809)))

(declare-fun res!2038274 () Bool)

(assert (=> b!4794639 (=> (not res!2038274) (not e!2993809))))

(assert (=> b!4794639 (= res!2038274 (is-Cons!54242 (_2!31741 (h!60673 (toList!6942 lm!2473)))))))

(declare-fun b!4794640 () Bool)

(assert (=> b!4794640 (= e!2993809 (containsKey!3966 (t!361816 (_2!31741 (h!60673 (toList!6942 lm!2473)))) key!5896))))

(assert (= (and d!1534223 (not res!2038273)) b!4794639))

(assert (= (and b!4794639 res!2038274) b!4794640))

(declare-fun m!5775854 () Bool)

(assert (=> b!4794640 m!5775854))

(assert (=> b!4794538 d!1534223))

(declare-fun b!4794659 () Bool)

(declare-fun e!2993827 () Bool)

(declare-fun e!2993825 () Bool)

(assert (=> b!4794659 (= e!2993827 e!2993825)))

(declare-fun res!2038283 () Bool)

(assert (=> b!4794659 (=> (not res!2038283) (not e!2993825))))

(declare-datatypes ((Option!13119 0))(
  ( (None!13118) (Some!13118 (v!48415 V!16063)) )
))
(declare-fun isDefined!10260 (Option!13119) Bool)

(declare-fun getValueByKey!2362 (List!54366 K!15817) Option!13119)

(assert (=> b!4794659 (= res!2038283 (isDefined!10260 (getValueByKey!2362 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896)))))

(declare-fun bm!335094 () Bool)

(declare-fun call!335099 () Bool)

(declare-datatypes ((List!54370 0))(
  ( (Nil!54246) (Cons!54246 (h!60676 K!15817) (t!361820 List!54370)) )
))
(declare-fun e!2993826 () List!54370)

(declare-fun contains!17874 (List!54370 K!15817) Bool)

(assert (=> bm!335094 (= call!335099 (contains!17874 e!2993826 key!5896))))

(declare-fun c!817172 () Bool)

(declare-fun c!817170 () Bool)

(assert (=> bm!335094 (= c!817172 c!817170)))

(declare-fun b!4794660 () Bool)

(declare-fun e!2993822 () Unit!140068)

(declare-fun lt!1952433 () Unit!140068)

(assert (=> b!4794660 (= e!2993822 lt!1952433)))

(declare-fun lt!1952434 () Unit!140068)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2153 (List!54366 K!15817) Unit!140068)

(assert (=> b!4794660 (= lt!1952434 (lemmaContainsKeyImpliesGetValueByKeyDefined!2153 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(assert (=> b!4794660 (isDefined!10260 (getValueByKey!2362 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(declare-fun lt!1952429 () Unit!140068)

(assert (=> b!4794660 (= lt!1952429 lt!1952434)))

(declare-fun lemmaInListThenGetKeysListContains!1076 (List!54366 K!15817) Unit!140068)

(assert (=> b!4794660 (= lt!1952433 (lemmaInListThenGetKeysListContains!1076 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(assert (=> b!4794660 call!335099))

(declare-fun b!4794661 () Bool)

(declare-fun e!2993823 () Unit!140068)

(declare-fun Unit!140073 () Unit!140068)

(assert (=> b!4794661 (= e!2993823 Unit!140073)))

(declare-fun d!1534225 () Bool)

(assert (=> d!1534225 e!2993827))

(declare-fun res!2038282 () Bool)

(assert (=> d!1534225 (=> res!2038282 e!2993827)))

(declare-fun e!2993824 () Bool)

(assert (=> d!1534225 (= res!2038282 e!2993824)))

(declare-fun res!2038281 () Bool)

(assert (=> d!1534225 (=> (not res!2038281) (not e!2993824))))

(declare-fun lt!1952430 () Bool)

(assert (=> d!1534225 (= res!2038281 (not lt!1952430))))

(declare-fun lt!1952428 () Bool)

(assert (=> d!1534225 (= lt!1952430 lt!1952428)))

(declare-fun lt!1952432 () Unit!140068)

(assert (=> d!1534225 (= lt!1952432 e!2993822)))

(assert (=> d!1534225 (= c!817170 lt!1952428)))

(declare-fun containsKey!3969 (List!54366 K!15817) Bool)

(assert (=> d!1534225 (= lt!1952428 (containsKey!3969 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(assert (=> d!1534225 (= (contains!17869 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365) key!5896) lt!1952430)))

(declare-fun b!4794662 () Bool)

(declare-fun getKeysList!1081 (List!54366) List!54370)

(assert (=> b!4794662 (= e!2993826 (getKeysList!1081 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365))))))

(declare-fun b!4794663 () Bool)

(assert (=> b!4794663 false))

(declare-fun lt!1952431 () Unit!140068)

(declare-fun lt!1952427 () Unit!140068)

(assert (=> b!4794663 (= lt!1952431 lt!1952427)))

(assert (=> b!4794663 (containsKey!3969 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1081 (List!54366 K!15817) Unit!140068)

(assert (=> b!4794663 (= lt!1952427 (lemmaInGetKeysListThenContainsKey!1081 (toList!6941 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(declare-fun Unit!140074 () Unit!140068)

(assert (=> b!4794663 (= e!2993823 Unit!140074)))

(declare-fun b!4794664 () Bool)

(declare-fun keys!19812 (ListMap!6413) List!54370)

(assert (=> b!4794664 (= e!2993826 (keys!19812 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)))))

(declare-fun b!4794665 () Bool)

(assert (=> b!4794665 (= e!2993824 (not (contains!17874 (keys!19812 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896)))))

(declare-fun b!4794666 () Bool)

(assert (=> b!4794666 (= e!2993825 (contains!17874 (keys!19812 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365)) key!5896))))

(declare-fun b!4794667 () Bool)

(assert (=> b!4794667 (= e!2993822 e!2993823)))

(declare-fun c!817171 () Bool)

(assert (=> b!4794667 (= c!817171 call!335099)))

(assert (= (and d!1534225 c!817170) b!4794660))

(assert (= (and d!1534225 (not c!817170)) b!4794667))

(assert (= (and b!4794667 c!817171) b!4794663))

(assert (= (and b!4794667 (not c!817171)) b!4794661))

(assert (= (or b!4794660 b!4794667) bm!335094))

(assert (= (and bm!335094 c!817172) b!4794662))

(assert (= (and bm!335094 (not c!817172)) b!4794664))

(assert (= (and d!1534225 res!2038281) b!4794665))

(assert (= (and d!1534225 (not res!2038282)) b!4794659))

(assert (= (and b!4794659 res!2038283) b!4794666))

(declare-fun m!5775856 () Bool)

(assert (=> b!4794659 m!5775856))

(assert (=> b!4794659 m!5775856))

(declare-fun m!5775858 () Bool)

(assert (=> b!4794659 m!5775858))

(declare-fun m!5775860 () Bool)

(assert (=> b!4794662 m!5775860))

(declare-fun m!5775862 () Bool)

(assert (=> d!1534225 m!5775862))

(assert (=> b!4794666 m!5775718))

(declare-fun m!5775864 () Bool)

(assert (=> b!4794666 m!5775864))

(assert (=> b!4794666 m!5775864))

(declare-fun m!5775866 () Bool)

(assert (=> b!4794666 m!5775866))

(declare-fun m!5775868 () Bool)

(assert (=> bm!335094 m!5775868))

(assert (=> b!4794664 m!5775718))

(assert (=> b!4794664 m!5775864))

(assert (=> b!4794665 m!5775718))

(assert (=> b!4794665 m!5775864))

(assert (=> b!4794665 m!5775864))

(assert (=> b!4794665 m!5775866))

(assert (=> b!4794663 m!5775862))

(declare-fun m!5775870 () Bool)

(assert (=> b!4794663 m!5775870))

(declare-fun m!5775872 () Bool)

(assert (=> b!4794660 m!5775872))

(assert (=> b!4794660 m!5775856))

(assert (=> b!4794660 m!5775856))

(assert (=> b!4794660 m!5775858))

(declare-fun m!5775874 () Bool)

(assert (=> b!4794660 m!5775874))

(assert (=> b!4794533 d!1534225))

(declare-fun bs!1155266 () Bool)

(declare-fun b!4794738 () Bool)

(assert (= bs!1155266 (and b!4794738 b!4794535)))

(declare-fun lambda!231052 () Int)

(assert (=> bs!1155266 (not (= lambda!231052 lambda!230998))))

(assert (=> b!4794738 true))

(declare-fun bs!1155267 () Bool)

(declare-fun b!4794737 () Bool)

(assert (= bs!1155267 (and b!4794737 b!4794535)))

(declare-fun lambda!231053 () Int)

(assert (=> bs!1155267 (not (= lambda!231053 lambda!230998))))

(declare-fun bs!1155268 () Bool)

(assert (= bs!1155268 (and b!4794737 b!4794738)))

(assert (=> bs!1155268 (= lambda!231053 lambda!231052)))

(assert (=> b!4794737 true))

(declare-fun lambda!231054 () Int)

(assert (=> bs!1155267 (not (= lambda!231054 lambda!230998))))

(declare-fun lt!1952533 () ListMap!6413)

(assert (=> bs!1155268 (= (= lt!1952533 lt!1952365) (= lambda!231054 lambda!231052))))

(assert (=> b!4794737 (= (= lt!1952533 lt!1952365) (= lambda!231054 lambda!231053))))

(assert (=> b!4794737 true))

(declare-fun bs!1155269 () Bool)

(declare-fun d!1534227 () Bool)

(assert (= bs!1155269 (and d!1534227 b!4794535)))

(declare-fun lambda!231055 () Int)

(assert (=> bs!1155269 (not (= lambda!231055 lambda!230998))))

(declare-fun bs!1155270 () Bool)

(assert (= bs!1155270 (and d!1534227 b!4794738)))

(declare-fun lt!1952523 () ListMap!6413)

(assert (=> bs!1155270 (= (= lt!1952523 lt!1952365) (= lambda!231055 lambda!231052))))

(declare-fun bs!1155271 () Bool)

(assert (= bs!1155271 (and d!1534227 b!4794737)))

(assert (=> bs!1155271 (= (= lt!1952523 lt!1952365) (= lambda!231055 lambda!231053))))

(assert (=> bs!1155271 (= (= lt!1952523 lt!1952533) (= lambda!231055 lambda!231054))))

(assert (=> d!1534227 true))

(declare-fun b!4794734 () Bool)

(declare-fun res!2038316 () Bool)

(declare-fun e!2993876 () Bool)

(assert (=> b!4794734 (=> (not res!2038316) (not e!2993876))))

(declare-fun forall!12272 (List!54366 Int) Bool)

(assert (=> b!4794734 (= res!2038316 (forall!12272 (toList!6941 lt!1952365) lambda!231055))))

(assert (=> d!1534227 e!2993876))

(declare-fun res!2038315 () Bool)

(assert (=> d!1534227 (=> (not res!2038315) (not e!2993876))))

(assert (=> d!1534227 (= res!2038315 (forall!12272 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!231055))))

(declare-fun e!2993875 () ListMap!6413)

(assert (=> d!1534227 (= lt!1952523 e!2993875)))

(declare-fun c!817191 () Bool)

(assert (=> d!1534227 (= c!817191 (is-Nil!54242 (_2!31741 (h!60673 (toList!6942 lm!2473)))))))

(assert (=> d!1534227 (noDuplicateKeys!2344 (_2!31741 (h!60673 (toList!6942 lm!2473))))))

(assert (=> d!1534227 (= (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) lt!1952365) lt!1952523)))

(declare-fun b!4794735 () Bool)

(declare-fun e!2993874 () Bool)

(declare-fun call!335110 () Bool)

(assert (=> b!4794735 (= e!2993874 call!335110)))

(declare-fun b!4794736 () Bool)

(declare-fun invariantList!1735 (List!54366) Bool)

(assert (=> b!4794736 (= e!2993876 (invariantList!1735 (toList!6941 lt!1952523)))))

(assert (=> b!4794737 (= e!2993875 lt!1952533)))

(declare-fun lt!1952529 () ListMap!6413)

(declare-fun +!2489 (ListMap!6413 tuple2!56892) ListMap!6413)

(assert (=> b!4794737 (= lt!1952529 (+!2489 lt!1952365 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(assert (=> b!4794737 (= lt!1952533 (addToMapMapFromBucket!1712 (t!361816 (_2!31741 (h!60673 (toList!6942 lm!2473)))) (+!2489 lt!1952365 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473)))))))))

(declare-fun lt!1952527 () Unit!140068)

(declare-fun call!335111 () Unit!140068)

(assert (=> b!4794737 (= lt!1952527 call!335111)))

(assert (=> b!4794737 (forall!12272 (toList!6941 lt!1952365) lambda!231053)))

(declare-fun lt!1952532 () Unit!140068)

(assert (=> b!4794737 (= lt!1952532 lt!1952527)))

(assert (=> b!4794737 (forall!12272 (toList!6941 lt!1952529) lambda!231054)))

(declare-fun lt!1952541 () Unit!140068)

(declare-fun Unit!140075 () Unit!140068)

(assert (=> b!4794737 (= lt!1952541 Unit!140075)))

(assert (=> b!4794737 (forall!12272 (t!361816 (_2!31741 (h!60673 (toList!6942 lm!2473)))) lambda!231054)))

(declare-fun lt!1952526 () Unit!140068)

(declare-fun Unit!140076 () Unit!140068)

(assert (=> b!4794737 (= lt!1952526 Unit!140076)))

(declare-fun lt!1952522 () Unit!140068)

(declare-fun Unit!140077 () Unit!140068)

(assert (=> b!4794737 (= lt!1952522 Unit!140077)))

(declare-fun lt!1952540 () Unit!140068)

(assert (=> b!4794737 (= lt!1952540 (forallContained!4176 (toList!6941 lt!1952529) lambda!231054 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(assert (=> b!4794737 (contains!17869 lt!1952529 (_1!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(declare-fun lt!1952539 () Unit!140068)

(declare-fun Unit!140078 () Unit!140068)

(assert (=> b!4794737 (= lt!1952539 Unit!140078)))

(assert (=> b!4794737 (contains!17869 lt!1952533 (_1!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(declare-fun lt!1952535 () Unit!140068)

(declare-fun Unit!140079 () Unit!140068)

(assert (=> b!4794737 (= lt!1952535 Unit!140079)))

(assert (=> b!4794737 (forall!12272 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!231054)))

(declare-fun lt!1952525 () Unit!140068)

(declare-fun Unit!140080 () Unit!140068)

(assert (=> b!4794737 (= lt!1952525 Unit!140080)))

(assert (=> b!4794737 (forall!12272 (toList!6941 lt!1952529) lambda!231054)))

(declare-fun lt!1952538 () Unit!140068)

(declare-fun Unit!140081 () Unit!140068)

(assert (=> b!4794737 (= lt!1952538 Unit!140081)))

(declare-fun lt!1952542 () Unit!140068)

(declare-fun Unit!140082 () Unit!140068)

(assert (=> b!4794737 (= lt!1952542 Unit!140082)))

(declare-fun lt!1952528 () Unit!140068)

(declare-fun addForallContainsKeyThenBeforeAdding!944 (ListMap!6413 ListMap!6413 K!15817 V!16063) Unit!140068)

(assert (=> b!4794737 (= lt!1952528 (addForallContainsKeyThenBeforeAdding!944 lt!1952365 lt!1952533 (_1!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))) (_2!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473)))))))))

(assert (=> b!4794737 (forall!12272 (toList!6941 lt!1952365) lambda!231054)))

(declare-fun lt!1952537 () Unit!140068)

(assert (=> b!4794737 (= lt!1952537 lt!1952528)))

(assert (=> b!4794737 (forall!12272 (toList!6941 lt!1952365) lambda!231054)))

(declare-fun lt!1952536 () Unit!140068)

(declare-fun Unit!140083 () Unit!140068)

(assert (=> b!4794737 (= lt!1952536 Unit!140083)))

(declare-fun res!2038314 () Bool)

(declare-fun call!335112 () Bool)

(assert (=> b!4794737 (= res!2038314 call!335112)))

(assert (=> b!4794737 (=> (not res!2038314) (not e!2993874))))

(assert (=> b!4794737 e!2993874))

(declare-fun lt!1952534 () Unit!140068)

(declare-fun Unit!140084 () Unit!140068)

(assert (=> b!4794737 (= lt!1952534 Unit!140084)))

(declare-fun bm!335105 () Bool)

(assert (=> bm!335105 (= call!335112 (forall!12272 (ite c!817191 (toList!6941 lt!1952365) (_2!31741 (h!60673 (toList!6942 lm!2473)))) (ite c!817191 lambda!231052 lambda!231054)))))

(declare-fun bm!335106 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!945 (ListMap!6413) Unit!140068)

(assert (=> bm!335106 (= call!335111 (lemmaContainsAllItsOwnKeys!945 lt!1952365))))

(declare-fun bm!335107 () Bool)

(assert (=> bm!335107 (= call!335110 (forall!12272 (toList!6941 lt!1952365) (ite c!817191 lambda!231052 lambda!231054)))))

(assert (=> b!4794738 (= e!2993875 lt!1952365)))

(declare-fun lt!1952524 () Unit!140068)

(assert (=> b!4794738 (= lt!1952524 call!335111)))

(assert (=> b!4794738 call!335110))

(declare-fun lt!1952530 () Unit!140068)

(assert (=> b!4794738 (= lt!1952530 lt!1952524)))

(assert (=> b!4794738 call!335112))

(declare-fun lt!1952531 () Unit!140068)

(declare-fun Unit!140085 () Unit!140068)

(assert (=> b!4794738 (= lt!1952531 Unit!140085)))

(assert (= (and d!1534227 c!817191) b!4794738))

(assert (= (and d!1534227 (not c!817191)) b!4794737))

(assert (= (and b!4794737 res!2038314) b!4794735))

(assert (= (or b!4794738 b!4794737) bm!335105))

(assert (= (or b!4794738 b!4794735) bm!335107))

(assert (= (or b!4794738 b!4794737) bm!335106))

(assert (= (and d!1534227 res!2038315) b!4794734))

(assert (= (and b!4794734 res!2038316) b!4794736))

(declare-fun m!5775958 () Bool)

(assert (=> b!4794734 m!5775958))

(declare-fun m!5775960 () Bool)

(assert (=> bm!335105 m!5775960))

(declare-fun m!5775962 () Bool)

(assert (=> bm!335106 m!5775962))

(declare-fun m!5775964 () Bool)

(assert (=> b!4794737 m!5775964))

(declare-fun m!5775966 () Bool)

(assert (=> b!4794737 m!5775966))

(declare-fun m!5775968 () Bool)

(assert (=> b!4794737 m!5775968))

(declare-fun m!5775970 () Bool)

(assert (=> b!4794737 m!5775970))

(declare-fun m!5775972 () Bool)

(assert (=> b!4794737 m!5775972))

(declare-fun m!5775974 () Bool)

(assert (=> b!4794737 m!5775974))

(declare-fun m!5775976 () Bool)

(assert (=> b!4794737 m!5775976))

(assert (=> b!4794737 m!5775964))

(declare-fun m!5775978 () Bool)

(assert (=> b!4794737 m!5775978))

(declare-fun m!5775980 () Bool)

(assert (=> b!4794737 m!5775980))

(assert (=> b!4794737 m!5775972))

(declare-fun m!5775982 () Bool)

(assert (=> b!4794737 m!5775982))

(declare-fun m!5775984 () Bool)

(assert (=> b!4794737 m!5775984))

(assert (=> b!4794737 m!5775966))

(declare-fun m!5775986 () Bool)

(assert (=> d!1534227 m!5775986))

(assert (=> d!1534227 m!5775706))

(declare-fun m!5775988 () Bool)

(assert (=> b!4794736 m!5775988))

(declare-fun m!5775990 () Bool)

(assert (=> bm!335107 m!5775990))

(assert (=> b!4794533 d!1534227))

(declare-fun d!1534247 () Bool)

(declare-fun res!2038321 () Bool)

(declare-fun e!2993881 () Bool)

(assert (=> d!1534247 (=> res!2038321 e!2993881)))

(assert (=> d!1534247 (= res!2038321 (is-Nil!54243 (toList!6942 lm!2473)))))

(assert (=> d!1534247 (= (forall!12270 (toList!6942 lm!2473) lambda!230996) e!2993881)))

(declare-fun b!4794745 () Bool)

(declare-fun e!2993882 () Bool)

(assert (=> b!4794745 (= e!2993881 e!2993882)))

(declare-fun res!2038322 () Bool)

(assert (=> b!4794745 (=> (not res!2038322) (not e!2993882))))

(declare-fun dynLambda!22069 (Int tuple2!56894) Bool)

(assert (=> b!4794745 (= res!2038322 (dynLambda!22069 lambda!230996 (h!60673 (toList!6942 lm!2473))))))

(declare-fun b!4794746 () Bool)

(assert (=> b!4794746 (= e!2993882 (forall!12270 (t!361817 (toList!6942 lm!2473)) lambda!230996))))

(assert (= (and d!1534247 (not res!2038321)) b!4794745))

(assert (= (and b!4794745 res!2038322) b!4794746))

(declare-fun b_lambda!186959 () Bool)

(assert (=> (not b_lambda!186959) (not b!4794745)))

(declare-fun m!5775992 () Bool)

(assert (=> b!4794745 m!5775992))

(declare-fun m!5775994 () Bool)

(assert (=> b!4794746 m!5775994))

(assert (=> start!494072 d!1534247))

(declare-fun d!1534249 () Bool)

(declare-fun isStrictlySorted!883 (List!54367) Bool)

(assert (=> d!1534249 (= (inv!69844 lm!2473) (isStrictlySorted!883 (toList!6942 lm!2473)))))

(declare-fun bs!1155272 () Bool)

(assert (= bs!1155272 d!1534249))

(declare-fun m!5775996 () Bool)

(assert (=> bs!1155272 m!5775996))

(assert (=> start!494072 d!1534249))

(declare-fun b!4794747 () Bool)

(declare-fun e!2993888 () Bool)

(declare-fun e!2993886 () Bool)

(assert (=> b!4794747 (= e!2993888 e!2993886)))

(declare-fun res!2038325 () Bool)

(assert (=> b!4794747 (=> (not res!2038325) (not e!2993886))))

(assert (=> b!4794747 (= res!2038325 (isDefined!10260 (getValueByKey!2362 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896)))))

(declare-fun bm!335108 () Bool)

(declare-fun call!335113 () Bool)

(declare-fun e!2993887 () List!54370)

(assert (=> bm!335108 (= call!335113 (contains!17874 e!2993887 key!5896))))

(declare-fun c!817194 () Bool)

(declare-fun c!817192 () Bool)

(assert (=> bm!335108 (= c!817194 c!817192)))

(declare-fun b!4794748 () Bool)

(declare-fun e!2993883 () Unit!140068)

(declare-fun lt!1952549 () Unit!140068)

(assert (=> b!4794748 (= e!2993883 lt!1952549)))

(declare-fun lt!1952550 () Unit!140068)

(assert (=> b!4794748 (= lt!1952550 (lemmaContainsKeyImpliesGetValueByKeyDefined!2153 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(assert (=> b!4794748 (isDefined!10260 (getValueByKey!2362 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(declare-fun lt!1952545 () Unit!140068)

(assert (=> b!4794748 (= lt!1952545 lt!1952550)))

(assert (=> b!4794748 (= lt!1952549 (lemmaInListThenGetKeysListContains!1076 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(assert (=> b!4794748 call!335113))

(declare-fun b!4794749 () Bool)

(declare-fun e!2993884 () Unit!140068)

(declare-fun Unit!140086 () Unit!140068)

(assert (=> b!4794749 (= e!2993884 Unit!140086)))

(declare-fun d!1534251 () Bool)

(assert (=> d!1534251 e!2993888))

(declare-fun res!2038324 () Bool)

(assert (=> d!1534251 (=> res!2038324 e!2993888)))

(declare-fun e!2993885 () Bool)

(assert (=> d!1534251 (= res!2038324 e!2993885)))

(declare-fun res!2038323 () Bool)

(assert (=> d!1534251 (=> (not res!2038323) (not e!2993885))))

(declare-fun lt!1952546 () Bool)

(assert (=> d!1534251 (= res!2038323 (not lt!1952546))))

(declare-fun lt!1952544 () Bool)

(assert (=> d!1534251 (= lt!1952546 lt!1952544)))

(declare-fun lt!1952548 () Unit!140068)

(assert (=> d!1534251 (= lt!1952548 e!2993883)))

(assert (=> d!1534251 (= c!817192 lt!1952544)))

(assert (=> d!1534251 (= lt!1952544 (containsKey!3969 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(assert (=> d!1534251 (= (contains!17869 (extractMap!2458 (toList!6942 lm!2473)) key!5896) lt!1952546)))

(declare-fun b!4794750 () Bool)

(assert (=> b!4794750 (= e!2993887 (getKeysList!1081 (toList!6941 (extractMap!2458 (toList!6942 lm!2473)))))))

(declare-fun b!4794751 () Bool)

(assert (=> b!4794751 false))

(declare-fun lt!1952547 () Unit!140068)

(declare-fun lt!1952543 () Unit!140068)

(assert (=> b!4794751 (= lt!1952547 lt!1952543)))

(assert (=> b!4794751 (containsKey!3969 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896)))

(assert (=> b!4794751 (= lt!1952543 (lemmaInGetKeysListThenContainsKey!1081 (toList!6941 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(declare-fun Unit!140087 () Unit!140068)

(assert (=> b!4794751 (= e!2993884 Unit!140087)))

(declare-fun b!4794752 () Bool)

(assert (=> b!4794752 (= e!2993887 (keys!19812 (extractMap!2458 (toList!6942 lm!2473))))))

(declare-fun b!4794753 () Bool)

(assert (=> b!4794753 (= e!2993885 (not (contains!17874 (keys!19812 (extractMap!2458 (toList!6942 lm!2473))) key!5896)))))

(declare-fun b!4794754 () Bool)

(assert (=> b!4794754 (= e!2993886 (contains!17874 (keys!19812 (extractMap!2458 (toList!6942 lm!2473))) key!5896))))

(declare-fun b!4794755 () Bool)

(assert (=> b!4794755 (= e!2993883 e!2993884)))

(declare-fun c!817193 () Bool)

(assert (=> b!4794755 (= c!817193 call!335113)))

(assert (= (and d!1534251 c!817192) b!4794748))

(assert (= (and d!1534251 (not c!817192)) b!4794755))

(assert (= (and b!4794755 c!817193) b!4794751))

(assert (= (and b!4794755 (not c!817193)) b!4794749))

(assert (= (or b!4794748 b!4794755) bm!335108))

(assert (= (and bm!335108 c!817194) b!4794750))

(assert (= (and bm!335108 (not c!817194)) b!4794752))

(assert (= (and d!1534251 res!2038323) b!4794753))

(assert (= (and d!1534251 (not res!2038324)) b!4794747))

(assert (= (and b!4794747 res!2038325) b!4794754))

(declare-fun m!5775998 () Bool)

(assert (=> b!4794747 m!5775998))

(assert (=> b!4794747 m!5775998))

(declare-fun m!5776000 () Bool)

(assert (=> b!4794747 m!5776000))

(declare-fun m!5776002 () Bool)

(assert (=> b!4794750 m!5776002))

(declare-fun m!5776004 () Bool)

(assert (=> d!1534251 m!5776004))

(assert (=> b!4794754 m!5775746))

(declare-fun m!5776006 () Bool)

(assert (=> b!4794754 m!5776006))

(assert (=> b!4794754 m!5776006))

(declare-fun m!5776008 () Bool)

(assert (=> b!4794754 m!5776008))

(declare-fun m!5776010 () Bool)

(assert (=> bm!335108 m!5776010))

(assert (=> b!4794752 m!5775746))

(assert (=> b!4794752 m!5776006))

(assert (=> b!4794753 m!5775746))

(assert (=> b!4794753 m!5776006))

(assert (=> b!4794753 m!5776006))

(assert (=> b!4794753 m!5776008))

(assert (=> b!4794751 m!5776004))

(declare-fun m!5776012 () Bool)

(assert (=> b!4794751 m!5776012))

(declare-fun m!5776014 () Bool)

(assert (=> b!4794748 m!5776014))

(assert (=> b!4794748 m!5775998))

(assert (=> b!4794748 m!5775998))

(assert (=> b!4794748 m!5776000))

(declare-fun m!5776016 () Bool)

(assert (=> b!4794748 m!5776016))

(assert (=> b!4794537 d!1534251))

(declare-fun bs!1155273 () Bool)

(declare-fun d!1534253 () Bool)

(assert (= bs!1155273 (and d!1534253 start!494072)))

(declare-fun lambda!231058 () Int)

(assert (=> bs!1155273 (= lambda!231058 lambda!230996)))

(declare-fun bs!1155274 () Bool)

(assert (= bs!1155274 (and d!1534253 b!4794535)))

(assert (=> bs!1155274 (not (= lambda!231058 lambda!230997))))

(declare-fun bs!1155275 () Bool)

(assert (= bs!1155275 (and d!1534253 d!1534205)))

(assert (=> bs!1155275 (= lambda!231058 lambda!231010)))

(declare-fun bs!1155276 () Bool)

(assert (= bs!1155276 (and d!1534253 d!1534207)))

(assert (=> bs!1155276 (= lambda!231058 lambda!231013)))

(declare-fun lt!1952553 () ListMap!6413)

(assert (=> d!1534253 (invariantList!1735 (toList!6941 lt!1952553))))

(declare-fun e!2993891 () ListMap!6413)

(assert (=> d!1534253 (= lt!1952553 e!2993891)))

(declare-fun c!817197 () Bool)

(assert (=> d!1534253 (= c!817197 (is-Cons!54243 (toList!6942 lm!2473)))))

(assert (=> d!1534253 (forall!12270 (toList!6942 lm!2473) lambda!231058)))

(assert (=> d!1534253 (= (extractMap!2458 (toList!6942 lm!2473)) lt!1952553)))

(declare-fun b!4794760 () Bool)

(assert (=> b!4794760 (= e!2993891 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lm!2473))) (extractMap!2458 (t!361817 (toList!6942 lm!2473)))))))

(declare-fun b!4794761 () Bool)

(assert (=> b!4794761 (= e!2993891 (ListMap!6414 Nil!54242))))

(assert (= (and d!1534253 c!817197) b!4794760))

(assert (= (and d!1534253 (not c!817197)) b!4794761))

(declare-fun m!5776018 () Bool)

(assert (=> d!1534253 m!5776018))

(declare-fun m!5776020 () Bool)

(assert (=> d!1534253 m!5776020))

(assert (=> b!4794760 m!5775714))

(assert (=> b!4794760 m!5775714))

(declare-fun m!5776022 () Bool)

(assert (=> b!4794760 m!5776022))

(assert (=> b!4794537 d!1534253))

(declare-fun b!4794762 () Bool)

(declare-fun e!2993897 () Bool)

(declare-fun e!2993895 () Bool)

(assert (=> b!4794762 (= e!2993897 e!2993895)))

(declare-fun res!2038328 () Bool)

(assert (=> b!4794762 (=> (not res!2038328) (not e!2993895))))

(assert (=> b!4794762 (= res!2038328 (isDefined!10260 (getValueByKey!2362 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896)))))

(declare-fun bm!335109 () Bool)

(declare-fun call!335114 () Bool)

(declare-fun e!2993896 () List!54370)

(assert (=> bm!335109 (= call!335114 (contains!17874 e!2993896 key!5896))))

(declare-fun c!817200 () Bool)

(declare-fun c!817198 () Bool)

(assert (=> bm!335109 (= c!817200 c!817198)))

(declare-fun b!4794763 () Bool)

(declare-fun e!2993892 () Unit!140068)

(declare-fun lt!1952560 () Unit!140068)

(assert (=> b!4794763 (= e!2993892 lt!1952560)))

(declare-fun lt!1952561 () Unit!140068)

(assert (=> b!4794763 (= lt!1952561 (lemmaContainsKeyImpliesGetValueByKeyDefined!2153 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(assert (=> b!4794763 (isDefined!10260 (getValueByKey!2362 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(declare-fun lt!1952556 () Unit!140068)

(assert (=> b!4794763 (= lt!1952556 lt!1952561)))

(assert (=> b!4794763 (= lt!1952560 (lemmaInListThenGetKeysListContains!1076 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(assert (=> b!4794763 call!335114))

(declare-fun b!4794764 () Bool)

(declare-fun e!2993893 () Unit!140068)

(declare-fun Unit!140088 () Unit!140068)

(assert (=> b!4794764 (= e!2993893 Unit!140088)))

(declare-fun d!1534255 () Bool)

(assert (=> d!1534255 e!2993897))

(declare-fun res!2038327 () Bool)

(assert (=> d!1534255 (=> res!2038327 e!2993897)))

(declare-fun e!2993894 () Bool)

(assert (=> d!1534255 (= res!2038327 e!2993894)))

(declare-fun res!2038326 () Bool)

(assert (=> d!1534255 (=> (not res!2038326) (not e!2993894))))

(declare-fun lt!1952557 () Bool)

(assert (=> d!1534255 (= res!2038326 (not lt!1952557))))

(declare-fun lt!1952555 () Bool)

(assert (=> d!1534255 (= lt!1952557 lt!1952555)))

(declare-fun lt!1952559 () Unit!140068)

(assert (=> d!1534255 (= lt!1952559 e!2993892)))

(assert (=> d!1534255 (= c!817198 lt!1952555)))

(assert (=> d!1534255 (= lt!1952555 (containsKey!3969 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(assert (=> d!1534255 (= (contains!17869 (extractMap!2458 (toList!6942 lt!1952360)) key!5896) lt!1952557)))

(declare-fun b!4794765 () Bool)

(assert (=> b!4794765 (= e!2993896 (getKeysList!1081 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360)))))))

(declare-fun b!4794766 () Bool)

(assert (=> b!4794766 false))

(declare-fun lt!1952558 () Unit!140068)

(declare-fun lt!1952554 () Unit!140068)

(assert (=> b!4794766 (= lt!1952558 lt!1952554)))

(assert (=> b!4794766 (containsKey!3969 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896)))

(assert (=> b!4794766 (= lt!1952554 (lemmaInGetKeysListThenContainsKey!1081 (toList!6941 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(declare-fun Unit!140089 () Unit!140068)

(assert (=> b!4794766 (= e!2993893 Unit!140089)))

(declare-fun b!4794767 () Bool)

(assert (=> b!4794767 (= e!2993896 (keys!19812 (extractMap!2458 (toList!6942 lt!1952360))))))

(declare-fun b!4794768 () Bool)

(assert (=> b!4794768 (= e!2993894 (not (contains!17874 (keys!19812 (extractMap!2458 (toList!6942 lt!1952360))) key!5896)))))

(declare-fun b!4794769 () Bool)

(assert (=> b!4794769 (= e!2993895 (contains!17874 (keys!19812 (extractMap!2458 (toList!6942 lt!1952360))) key!5896))))

(declare-fun b!4794770 () Bool)

(assert (=> b!4794770 (= e!2993892 e!2993893)))

(declare-fun c!817199 () Bool)

(assert (=> b!4794770 (= c!817199 call!335114)))

(assert (= (and d!1534255 c!817198) b!4794763))

(assert (= (and d!1534255 (not c!817198)) b!4794770))

(assert (= (and b!4794770 c!817199) b!4794766))

(assert (= (and b!4794770 (not c!817199)) b!4794764))

(assert (= (or b!4794763 b!4794770) bm!335109))

(assert (= (and bm!335109 c!817200) b!4794765))

(assert (= (and bm!335109 (not c!817200)) b!4794767))

(assert (= (and d!1534255 res!2038326) b!4794768))

(assert (= (and d!1534255 (not res!2038327)) b!4794762))

(assert (= (and b!4794762 res!2038328) b!4794769))

(declare-fun m!5776024 () Bool)

(assert (=> b!4794762 m!5776024))

(assert (=> b!4794762 m!5776024))

(declare-fun m!5776026 () Bool)

(assert (=> b!4794762 m!5776026))

(declare-fun m!5776028 () Bool)

(assert (=> b!4794765 m!5776028))

(declare-fun m!5776030 () Bool)

(assert (=> d!1534255 m!5776030))

(assert (=> b!4794769 m!5775702))

(declare-fun m!5776032 () Bool)

(assert (=> b!4794769 m!5776032))

(assert (=> b!4794769 m!5776032))

(declare-fun m!5776034 () Bool)

(assert (=> b!4794769 m!5776034))

(declare-fun m!5776036 () Bool)

(assert (=> bm!335109 m!5776036))

(assert (=> b!4794767 m!5775702))

(assert (=> b!4794767 m!5776032))

(assert (=> b!4794768 m!5775702))

(assert (=> b!4794768 m!5776032))

(assert (=> b!4794768 m!5776032))

(assert (=> b!4794768 m!5776034))

(assert (=> b!4794766 m!5776030))

(declare-fun m!5776038 () Bool)

(assert (=> b!4794766 m!5776038))

(declare-fun m!5776040 () Bool)

(assert (=> b!4794763 m!5776040))

(assert (=> b!4794763 m!5776024))

(assert (=> b!4794763 m!5776024))

(assert (=> b!4794763 m!5776026))

(declare-fun m!5776042 () Bool)

(assert (=> b!4794763 m!5776042))

(assert (=> b!4794535 d!1534255))

(declare-fun d!1534257 () Bool)

(declare-fun res!2038333 () Bool)

(declare-fun e!2993902 () Bool)

(assert (=> d!1534257 (=> res!2038333 e!2993902)))

(assert (=> d!1534257 (= res!2038333 (not (is-Cons!54242 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(assert (=> d!1534257 (= (noDuplicateKeys!2344 (_2!31741 (h!60673 (toList!6942 lm!2473)))) e!2993902)))

(declare-fun b!4794775 () Bool)

(declare-fun e!2993903 () Bool)

(assert (=> b!4794775 (= e!2993902 e!2993903)))

(declare-fun res!2038334 () Bool)

(assert (=> b!4794775 (=> (not res!2038334) (not e!2993903))))

(assert (=> b!4794775 (= res!2038334 (not (containsKey!3966 (t!361816 (_2!31741 (h!60673 (toList!6942 lm!2473)))) (_1!31740 (h!60672 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))))

(declare-fun b!4794776 () Bool)

(assert (=> b!4794776 (= e!2993903 (noDuplicateKeys!2344 (t!361816 (_2!31741 (h!60673 (toList!6942 lm!2473))))))))

(assert (= (and d!1534257 (not res!2038333)) b!4794775))

(assert (= (and b!4794775 res!2038334) b!4794776))

(declare-fun m!5776044 () Bool)

(assert (=> b!4794775 m!5776044))

(declare-fun m!5776046 () Bool)

(assert (=> b!4794776 m!5776046))

(assert (=> b!4794535 d!1534257))

(declare-fun bs!1155277 () Bool)

(declare-fun d!1534259 () Bool)

(assert (= bs!1155277 (and d!1534259 b!4794535)))

(declare-fun lambda!231061 () Int)

(assert (=> bs!1155277 (not (= lambda!231061 lambda!230997))))

(declare-fun bs!1155278 () Bool)

(assert (= bs!1155278 (and d!1534259 start!494072)))

(assert (=> bs!1155278 (= lambda!231061 lambda!230996)))

(declare-fun bs!1155279 () Bool)

(assert (= bs!1155279 (and d!1534259 d!1534205)))

(assert (=> bs!1155279 (= lambda!231061 lambda!231010)))

(declare-fun bs!1155280 () Bool)

(assert (= bs!1155280 (and d!1534259 d!1534253)))

(assert (=> bs!1155280 (= lambda!231061 lambda!231058)))

(declare-fun bs!1155281 () Bool)

(assert (= bs!1155281 (and d!1534259 d!1534207)))

(assert (=> bs!1155281 (= lambda!231061 lambda!231013)))

(assert (=> d!1534259 (not (contains!17869 (extractMap!2458 (toList!6942 lt!1952360)) key!5896))))

(declare-fun lt!1952564 () Unit!140068)

(declare-fun choose!34562 (ListLongMap!5363 K!15817 Hashable!6931) Unit!140068)

(assert (=> d!1534259 (= lt!1952564 (choose!34562 lt!1952360 key!5896 hashF!1559))))

(assert (=> d!1534259 (forall!12270 (toList!6942 lt!1952360) lambda!231061)))

(assert (=> d!1534259 (= (lemmaHashNotInLongMapThenNotInGenerated!37 lt!1952360 key!5896 hashF!1559) lt!1952564)))

(declare-fun bs!1155282 () Bool)

(assert (= bs!1155282 d!1534259))

(assert (=> bs!1155282 m!5775702))

(assert (=> bs!1155282 m!5775702))

(assert (=> bs!1155282 m!5775704))

(declare-fun m!5776048 () Bool)

(assert (=> bs!1155282 m!5776048))

(declare-fun m!5776050 () Bool)

(assert (=> bs!1155282 m!5776050))

(assert (=> b!4794535 d!1534259))

(declare-fun d!1534261 () Bool)

(declare-fun tail!9282 (List!54367) List!54367)

(assert (=> d!1534261 (= (tail!9280 lm!2473) (ListLongMap!5364 (tail!9282 (toList!6942 lm!2473))))))

(declare-fun bs!1155283 () Bool)

(assert (= bs!1155283 d!1534261))

(declare-fun m!5776052 () Bool)

(assert (=> bs!1155283 m!5776052))

(assert (=> b!4794535 d!1534261))

(declare-fun d!1534263 () Bool)

(declare-fun dynLambda!22070 (Int tuple2!56892) Bool)

(assert (=> d!1534263 (dynLambda!22070 lambda!230998 (tuple2!56893 key!5896 value!3111))))

(declare-fun lt!1952567 () Unit!140068)

(declare-fun choose!34563 (List!54366 Int tuple2!56892) Unit!140068)

(assert (=> d!1534263 (= lt!1952567 (choose!34563 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!230998 (tuple2!56893 key!5896 value!3111)))))

(declare-fun e!2993906 () Bool)

(assert (=> d!1534263 e!2993906))

(declare-fun res!2038337 () Bool)

(assert (=> d!1534263 (=> (not res!2038337) (not e!2993906))))

(assert (=> d!1534263 (= res!2038337 (forall!12272 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!230998))))

(assert (=> d!1534263 (= (forallContained!4176 (_2!31741 (h!60673 (toList!6942 lm!2473))) lambda!230998 (tuple2!56893 key!5896 value!3111)) lt!1952567)))

(declare-fun b!4794779 () Bool)

(assert (=> b!4794779 (= e!2993906 (contains!17873 (_2!31741 (h!60673 (toList!6942 lm!2473))) (tuple2!56893 key!5896 value!3111)))))

(assert (= (and d!1534263 res!2038337) b!4794779))

(declare-fun b_lambda!186961 () Bool)

(assert (=> (not b_lambda!186961) (not d!1534263)))

(declare-fun m!5776054 () Bool)

(assert (=> d!1534263 m!5776054))

(declare-fun m!5776056 () Bool)

(assert (=> d!1534263 m!5776056))

(declare-fun m!5776058 () Bool)

(assert (=> d!1534263 m!5776058))

(declare-fun m!5776060 () Bool)

(assert (=> b!4794779 m!5776060))

(assert (=> b!4794535 d!1534263))

(declare-fun bs!1155284 () Bool)

(declare-fun d!1534265 () Bool)

(assert (= bs!1155284 (and d!1534265 d!1534259)))

(declare-fun lambda!231062 () Int)

(assert (=> bs!1155284 (= lambda!231062 lambda!231061)))

(declare-fun bs!1155285 () Bool)

(assert (= bs!1155285 (and d!1534265 b!4794535)))

(assert (=> bs!1155285 (not (= lambda!231062 lambda!230997))))

(declare-fun bs!1155286 () Bool)

(assert (= bs!1155286 (and d!1534265 start!494072)))

(assert (=> bs!1155286 (= lambda!231062 lambda!230996)))

(declare-fun bs!1155287 () Bool)

(assert (= bs!1155287 (and d!1534265 d!1534205)))

(assert (=> bs!1155287 (= lambda!231062 lambda!231010)))

(declare-fun bs!1155288 () Bool)

(assert (= bs!1155288 (and d!1534265 d!1534253)))

(assert (=> bs!1155288 (= lambda!231062 lambda!231058)))

(declare-fun bs!1155289 () Bool)

(assert (= bs!1155289 (and d!1534265 d!1534207)))

(assert (=> bs!1155289 (= lambda!231062 lambda!231013)))

(declare-fun lt!1952568 () ListMap!6413)

(assert (=> d!1534265 (invariantList!1735 (toList!6941 lt!1952568))))

(declare-fun e!2993907 () ListMap!6413)

(assert (=> d!1534265 (= lt!1952568 e!2993907)))

(declare-fun c!817201 () Bool)

(assert (=> d!1534265 (= c!817201 (is-Cons!54243 (toList!6942 lt!1952360)))))

(assert (=> d!1534265 (forall!12270 (toList!6942 lt!1952360) lambda!231062)))

(assert (=> d!1534265 (= (extractMap!2458 (toList!6942 lt!1952360)) lt!1952568)))

(declare-fun b!4794780 () Bool)

(assert (=> b!4794780 (= e!2993907 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (toList!6942 lt!1952360))) (extractMap!2458 (t!361817 (toList!6942 lt!1952360)))))))

(declare-fun b!4794781 () Bool)

(assert (=> b!4794781 (= e!2993907 (ListMap!6414 Nil!54242))))

(assert (= (and d!1534265 c!817201) b!4794780))

(assert (= (and d!1534265 (not c!817201)) b!4794781))

(declare-fun m!5776062 () Bool)

(assert (=> d!1534265 m!5776062))

(declare-fun m!5776064 () Bool)

(assert (=> d!1534265 m!5776064))

(declare-fun m!5776066 () Bool)

(assert (=> b!4794780 m!5776066))

(assert (=> b!4794780 m!5776066))

(declare-fun m!5776068 () Bool)

(assert (=> b!4794780 m!5776068))

(assert (=> b!4794535 d!1534265))

(declare-fun bs!1155290 () Bool)

(declare-fun d!1534267 () Bool)

(assert (= bs!1155290 (and d!1534267 d!1534259)))

(declare-fun lambda!231063 () Int)

(assert (=> bs!1155290 (= lambda!231063 lambda!231061)))

(declare-fun bs!1155291 () Bool)

(assert (= bs!1155291 (and d!1534267 b!4794535)))

(assert (=> bs!1155291 (not (= lambda!231063 lambda!230997))))

(declare-fun bs!1155292 () Bool)

(assert (= bs!1155292 (and d!1534267 start!494072)))

(assert (=> bs!1155292 (= lambda!231063 lambda!230996)))

(declare-fun bs!1155293 () Bool)

(assert (= bs!1155293 (and d!1534267 d!1534205)))

(assert (=> bs!1155293 (= lambda!231063 lambda!231010)))

(declare-fun bs!1155294 () Bool)

(assert (= bs!1155294 (and d!1534267 d!1534265)))

(assert (=> bs!1155294 (= lambda!231063 lambda!231062)))

(declare-fun bs!1155295 () Bool)

(assert (= bs!1155295 (and d!1534267 d!1534253)))

(assert (=> bs!1155295 (= lambda!231063 lambda!231058)))

(declare-fun bs!1155296 () Bool)

(assert (= bs!1155296 (and d!1534267 d!1534207)))

(assert (=> bs!1155296 (= lambda!231063 lambda!231013)))

(declare-fun lt!1952569 () ListMap!6413)

(assert (=> d!1534267 (invariantList!1735 (toList!6941 lt!1952569))))

(declare-fun e!2993908 () ListMap!6413)

(assert (=> d!1534267 (= lt!1952569 e!2993908)))

(declare-fun c!817202 () Bool)

(assert (=> d!1534267 (= c!817202 (is-Cons!54243 (t!361817 (toList!6942 lm!2473))))))

(assert (=> d!1534267 (forall!12270 (t!361817 (toList!6942 lm!2473)) lambda!231063)))

(assert (=> d!1534267 (= (extractMap!2458 (t!361817 (toList!6942 lm!2473))) lt!1952569)))

(declare-fun b!4794782 () Bool)

(assert (=> b!4794782 (= e!2993908 (addToMapMapFromBucket!1712 (_2!31741 (h!60673 (t!361817 (toList!6942 lm!2473)))) (extractMap!2458 (t!361817 (t!361817 (toList!6942 lm!2473))))))))

(declare-fun b!4794783 () Bool)

(assert (=> b!4794783 (= e!2993908 (ListMap!6414 Nil!54242))))

(assert (= (and d!1534267 c!817202) b!4794782))

(assert (= (and d!1534267 (not c!817202)) b!4794783))

(declare-fun m!5776070 () Bool)

(assert (=> d!1534267 m!5776070))

(declare-fun m!5776072 () Bool)

(assert (=> d!1534267 m!5776072))

(declare-fun m!5776074 () Bool)

(assert (=> b!4794782 m!5776074))

(assert (=> b!4794782 m!5776074))

(declare-fun m!5776076 () Bool)

(assert (=> b!4794782 m!5776076))

(assert (=> b!4794535 d!1534267))

(declare-fun d!1534269 () Bool)

(assert (=> d!1534269 (dynLambda!22069 lambda!230997 (h!60673 (toList!6942 lm!2473)))))

(declare-fun lt!1952572 () Unit!140068)

(declare-fun choose!34566 (List!54367 Int tuple2!56894) Unit!140068)

(assert (=> d!1534269 (= lt!1952572 (choose!34566 (toList!6942 lm!2473) lambda!230997 (h!60673 (toList!6942 lm!2473))))))

(declare-fun e!2993911 () Bool)

(assert (=> d!1534269 e!2993911))

(declare-fun res!2038340 () Bool)

(assert (=> d!1534269 (=> (not res!2038340) (not e!2993911))))

(assert (=> d!1534269 (= res!2038340 (forall!12270 (toList!6942 lm!2473) lambda!230997))))

(assert (=> d!1534269 (= (forallContained!4177 (toList!6942 lm!2473) lambda!230997 (h!60673 (toList!6942 lm!2473))) lt!1952572)))

(declare-fun b!4794786 () Bool)

(declare-fun contains!17876 (List!54367 tuple2!56894) Bool)

(assert (=> b!4794786 (= e!2993911 (contains!17876 (toList!6942 lm!2473) (h!60673 (toList!6942 lm!2473))))))

(assert (= (and d!1534269 res!2038340) b!4794786))

(declare-fun b_lambda!186963 () Bool)

(assert (=> (not b_lambda!186963) (not d!1534269)))

(declare-fun m!5776078 () Bool)

(assert (=> d!1534269 m!5776078))

(declare-fun m!5776080 () Bool)

(assert (=> d!1534269 m!5776080))

(declare-fun m!5776082 () Bool)

(assert (=> d!1534269 m!5776082))

(declare-fun m!5776084 () Bool)

(assert (=> b!4794786 m!5776084))

(assert (=> b!4794535 d!1534269))

(declare-fun bs!1155297 () Bool)

(declare-fun d!1534271 () Bool)

(assert (= bs!1155297 (and d!1534271 d!1534259)))

(declare-fun lambda!231066 () Int)

(assert (=> bs!1155297 (not (= lambda!231066 lambda!231061))))

(declare-fun bs!1155298 () Bool)

(assert (= bs!1155298 (and d!1534271 b!4794535)))

(assert (=> bs!1155298 (= lambda!231066 lambda!230997)))

(declare-fun bs!1155299 () Bool)

(assert (= bs!1155299 (and d!1534271 d!1534267)))

(assert (=> bs!1155299 (not (= lambda!231066 lambda!231063))))

(declare-fun bs!1155300 () Bool)

(assert (= bs!1155300 (and d!1534271 start!494072)))

(assert (=> bs!1155300 (not (= lambda!231066 lambda!230996))))

(declare-fun bs!1155301 () Bool)

(assert (= bs!1155301 (and d!1534271 d!1534205)))

(assert (=> bs!1155301 (not (= lambda!231066 lambda!231010))))

(declare-fun bs!1155302 () Bool)

(assert (= bs!1155302 (and d!1534271 d!1534265)))

(assert (=> bs!1155302 (not (= lambda!231066 lambda!231062))))

(declare-fun bs!1155303 () Bool)

(assert (= bs!1155303 (and d!1534271 d!1534253)))

(assert (=> bs!1155303 (not (= lambda!231066 lambda!231058))))

(declare-fun bs!1155304 () Bool)

(assert (= bs!1155304 (and d!1534271 d!1534207)))

(assert (=> bs!1155304 (not (= lambda!231066 lambda!231013))))

(assert (=> d!1534271 true))

(assert (=> d!1534271 (= (allKeysSameHashInMap!2336 lm!2473 hashF!1559) (forall!12270 (toList!6942 lm!2473) lambda!231066))))

(declare-fun bs!1155305 () Bool)

(assert (= bs!1155305 d!1534271))

(declare-fun m!5776086 () Bool)

(assert (=> bs!1155305 m!5776086))

(assert (=> b!4794536 d!1534271))

(declare-fun b!4794791 () Bool)

(declare-fun e!2993914 () Bool)

(declare-fun tp!1358121 () Bool)

(declare-fun tp!1358122 () Bool)

(assert (=> b!4794791 (= e!2993914 (and tp!1358121 tp!1358122))))

(assert (=> b!4794541 (= tp!1358113 e!2993914)))

(assert (= (and b!4794541 (is-Cons!54243 (toList!6942 lm!2473))) b!4794791))

(declare-fun b_lambda!186965 () Bool)

(assert (= b_lambda!186961 (or b!4794535 b_lambda!186965)))

(declare-fun bs!1155306 () Bool)

(declare-fun d!1534273 () Bool)

(assert (= bs!1155306 (and d!1534273 b!4794535)))

(assert (=> bs!1155306 (= (dynLambda!22070 lambda!230998 (tuple2!56893 key!5896 value!3111)) (= (hash!4971 hashF!1559 (_1!31740 (tuple2!56893 key!5896 value!3111))) (_1!31741 (h!60673 (toList!6942 lm!2473)))))))

(declare-fun m!5776088 () Bool)

(assert (=> bs!1155306 m!5776088))

(assert (=> d!1534263 d!1534273))

(declare-fun b_lambda!186967 () Bool)

(assert (= b_lambda!186963 (or b!4794535 b_lambda!186967)))

(declare-fun bs!1155307 () Bool)

(declare-fun d!1534275 () Bool)

(assert (= bs!1155307 (and d!1534275 b!4794535)))

(declare-fun allKeysSameHash!1962 (List!54366 (_ BitVec 64) Hashable!6931) Bool)

(assert (=> bs!1155307 (= (dynLambda!22069 lambda!230997 (h!60673 (toList!6942 lm!2473))) (allKeysSameHash!1962 (_2!31741 (h!60673 (toList!6942 lm!2473))) (_1!31741 (h!60673 (toList!6942 lm!2473))) hashF!1559))))

(declare-fun m!5776090 () Bool)

(assert (=> bs!1155307 m!5776090))

(assert (=> d!1534269 d!1534275))

(declare-fun b_lambda!186969 () Bool)

(assert (= b_lambda!186959 (or start!494072 b_lambda!186969)))

(declare-fun bs!1155308 () Bool)

(declare-fun d!1534277 () Bool)

(assert (= bs!1155308 (and d!1534277 start!494072)))

(assert (=> bs!1155308 (= (dynLambda!22069 lambda!230996 (h!60673 (toList!6942 lm!2473))) (noDuplicateKeys!2344 (_2!31741 (h!60673 (toList!6942 lm!2473)))))))

(assert (=> bs!1155308 m!5775706))

(assert (=> b!4794745 d!1534277))

(push 1)

(assert (not d!1534263))

(assert (not b!4794780))

(assert (not d!1534249))

(assert (not b_lambda!186969))

(assert (not d!1534255))

(assert (not b!4794663))

(assert (not b!4794786))

(assert (not b!4794750))

(assert (not b!4794776))

(assert (not b_lambda!186967))

(assert (not d!1534213))

(assert tp_is_empty!33585)

(assert (not bm!335109))

(assert (not b!4794634))

(assert (not b!4794737))

(assert (not b!4794751))

(assert (not bs!1155306))

(assert (not b!4794627))

(assert (not b!4794766))

(assert (not b!4794598))

(assert (not d!1534221))

(assert (not d!1534227))

(assert (not b!4794601))

(assert (not b!4794791))

(assert (not d!1534205))

(assert (not b!4794736))

(assert (not d!1534201))

(assert (not bm!335108))

(assert (not b!4794734))

(assert (not bm!335105))

(assert (not b!4794640))

(assert (not b!4794768))

(assert (not b!4794762))

(assert (not b!4794666))

(assert (not d!1534217))

(assert (not d!1534271))

(assert (not d!1534269))

(assert (not b!4794609))

(assert (not b!4794769))

(assert (not b!4794608))

(assert (not bm!335094))

(assert (not d!1534265))

(assert (not d!1534259))

(assert (not b!4794665))

(assert (not b!4794596))

(assert (not b!4794779))

(assert (not b!4794664))

(assert (not b!4794754))

(assert (not b!4794660))

(assert (not d!1534207))

(assert (not b!4794746))

(assert (not d!1534261))

(assert (not bm!335106))

(assert (not b!4794765))

(assert (not b!4794747))

(assert (not d!1534267))

(assert (not bs!1155307))

(assert (not d!1534215))

(assert (not b!4794631))

(assert (not b!4794659))

(assert (not b!4794632))

(assert (not b!4794628))

(assert (not b!4794763))

(assert (not bm!335107))

(assert (not b!4794748))

(assert tp_is_empty!33587)

(assert (not d!1534251))

(assert (not b!4794662))

(assert (not b!4794760))

(assert (not d!1534253))

(assert (not b!4794782))

(assert (not b!4794587))

(assert (not bs!1155308))

(assert (not b!4794752))

(assert (not b!4794610))

(assert (not b!4794589))

(assert (not b!4794775))

(assert (not d!1534225))

(assert (not b_lambda!186965))

(assert (not b!4794767))

(assert (not b!4794753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

