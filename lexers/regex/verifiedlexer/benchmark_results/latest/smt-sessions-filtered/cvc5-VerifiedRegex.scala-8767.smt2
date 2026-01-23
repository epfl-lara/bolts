; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!468338 () Bool)

(assert start!468338)

(declare-fun b!4654369 () Bool)

(declare-fun res!1956815 () Bool)

(declare-fun e!2903925 () Bool)

(assert (=> b!4654369 (=> (not res!1956815) (not e!2903925))))

(declare-datatypes ((K!13238 0))(
  ( (K!13239 (val!18861 Int)) )
))
(declare-datatypes ((V!13484 0))(
  ( (V!13485 (val!18862 Int)) )
))
(declare-datatypes ((tuple2!52986 0))(
  ( (tuple2!52987 (_1!29787 K!13238) (_2!29787 V!13484)) )
))
(declare-datatypes ((List!52006 0))(
  ( (Nil!51882) (Cons!51882 (h!58022 tuple2!52986) (t!359122 List!52006)) )
))
(declare-fun newBucket!224 () List!52006)

(declare-fun noDuplicateKeys!1635 (List!52006) Bool)

(assert (=> b!4654369 (= res!1956815 (noDuplicateKeys!1635 newBucket!224))))

(declare-fun tp_is_empty!29833 () Bool)

(declare-fun tp_is_empty!29835 () Bool)

(declare-fun tp!1343260 () Bool)

(declare-fun b!4654370 () Bool)

(declare-fun e!2903930 () Bool)

(assert (=> b!4654370 (= e!2903930 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343260))))

(declare-fun res!1956817 () Bool)

(assert (=> start!468338 (=> (not res!1956817) (not e!2903925))))

(declare-fun oldBucket!40 () List!52006)

(assert (=> start!468338 (= res!1956817 (noDuplicateKeys!1635 oldBucket!40))))

(assert (=> start!468338 e!2903925))

(assert (=> start!468338 true))

(declare-fun e!2903926 () Bool)

(assert (=> start!468338 e!2903926))

(assert (=> start!468338 tp_is_empty!29833))

(assert (=> start!468338 e!2903930))

(declare-fun b!4654371 () Bool)

(declare-fun e!2903927 () Bool)

(declare-datatypes ((tuple2!52988 0))(
  ( (tuple2!52989 (_1!29788 (_ BitVec 64)) (_2!29788 List!52006)) )
))
(declare-datatypes ((List!52007 0))(
  ( (Nil!51883) (Cons!51883 (h!58023 tuple2!52988) (t!359123 List!52007)) )
))
(declare-fun lt!1817578 () List!52007)

(declare-datatypes ((ListLongMap!3757 0))(
  ( (ListLongMap!3758 (toList!5201 List!52007)) )
))
(declare-fun inv!67167 (ListLongMap!3757) Bool)

(assert (=> b!4654371 (= e!2903927 (inv!67167 (ListLongMap!3758 lt!1817578)))))

(declare-fun b!4654372 () Bool)

(declare-fun e!2903929 () Bool)

(assert (=> b!4654372 (= e!2903929 (not e!2903927))))

(declare-fun res!1956820 () Bool)

(assert (=> b!4654372 (=> res!1956820 e!2903927)))

(declare-fun key!4968 () K!13238)

(assert (=> b!4654372 (= res!1956820 (or (and (is-Cons!51882 oldBucket!40) (= (_1!29787 (h!58022 oldBucket!40)) key!4968)) (not (is-Cons!51882 oldBucket!40)) (= (_1!29787 (h!58022 oldBucket!40)) key!4968)))))

(declare-fun e!2903928 () Bool)

(assert (=> b!4654372 e!2903928))

(declare-fun res!1956821 () Bool)

(assert (=> b!4654372 (=> (not res!1956821) (not e!2903928))))

(declare-datatypes ((ListMap!4539 0))(
  ( (ListMap!4540 (toList!5202 List!52006)) )
))
(declare-fun lt!1817580 () ListMap!4539)

(declare-fun lt!1817579 () ListMap!4539)

(declare-fun addToMapMapFromBucket!1092 (List!52006 ListMap!4539) ListMap!4539)

(assert (=> b!4654372 (= res!1956821 (= lt!1817580 (addToMapMapFromBucket!1092 oldBucket!40 lt!1817579)))))

(declare-fun extractMap!1691 (List!52007) ListMap!4539)

(assert (=> b!4654372 (= lt!1817579 (extractMap!1691 Nil!51883))))

(assert (=> b!4654372 true))

(declare-fun b!4654373 () Bool)

(assert (=> b!4654373 (= e!2903925 e!2903929)))

(declare-fun res!1956818 () Bool)

(assert (=> b!4654373 (=> (not res!1956818) (not e!2903929))))

(declare-fun contains!15026 (ListMap!4539 K!13238) Bool)

(assert (=> b!4654373 (= res!1956818 (contains!15026 lt!1817580 key!4968))))

(assert (=> b!4654373 (= lt!1817580 (extractMap!1691 lt!1817578))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4654373 (= lt!1817578 (Cons!51883 (tuple2!52989 hash!414 oldBucket!40) Nil!51883))))

(declare-fun b!4654374 () Bool)

(assert (=> b!4654374 (= e!2903928 (= lt!1817579 (ListMap!4540 Nil!51882)))))

(declare-fun b!4654375 () Bool)

(declare-fun tp!1343261 () Bool)

(assert (=> b!4654375 (= e!2903926 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343261))))

(declare-fun b!4654376 () Bool)

(declare-fun res!1956822 () Bool)

(assert (=> b!4654376 (=> (not res!1956822) (not e!2903929))))

(declare-datatypes ((Hashable!6032 0))(
  ( (HashableExt!6031 (__x!31735 Int)) )
))
(declare-fun hashF!1389 () Hashable!6032)

(declare-fun allKeysSameHash!1489 (List!52006 (_ BitVec 64) Hashable!6032) Bool)

(assert (=> b!4654376 (= res!1956822 (allKeysSameHash!1489 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4654377 () Bool)

(declare-fun res!1956819 () Bool)

(assert (=> b!4654377 (=> (not res!1956819) (not e!2903929))))

(declare-fun hash!3768 (Hashable!6032 K!13238) (_ BitVec 64))

(assert (=> b!4654377 (= res!1956819 (= (hash!3768 hashF!1389 key!4968) hash!414))))

(declare-fun b!4654378 () Bool)

(declare-fun res!1956823 () Bool)

(assert (=> b!4654378 (=> (not res!1956823) (not e!2903925))))

(declare-fun removePairForKey!1258 (List!52006 K!13238) List!52006)

(assert (=> b!4654378 (= res!1956823 (= (removePairForKey!1258 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4654379 () Bool)

(declare-fun res!1956816 () Bool)

(assert (=> b!4654379 (=> (not res!1956816) (not e!2903925))))

(assert (=> b!4654379 (= res!1956816 (allKeysSameHash!1489 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!468338 res!1956817) b!4654369))

(assert (= (and b!4654369 res!1956815) b!4654378))

(assert (= (and b!4654378 res!1956823) b!4654379))

(assert (= (and b!4654379 res!1956816) b!4654373))

(assert (= (and b!4654373 res!1956818) b!4654377))

(assert (= (and b!4654377 res!1956819) b!4654376))

(assert (= (and b!4654376 res!1956822) b!4654372))

(assert (= (and b!4654372 res!1956821) b!4654374))

(assert (= (and b!4654372 (not res!1956820)) b!4654371))

(assert (= (and start!468338 (is-Cons!51882 oldBucket!40)) b!4654375))

(assert (= (and start!468338 (is-Cons!51882 newBucket!224)) b!4654370))

(declare-fun m!5533055 () Bool)

(assert (=> b!4654379 m!5533055))

(declare-fun m!5533057 () Bool)

(assert (=> b!4654369 m!5533057))

(declare-fun m!5533059 () Bool)

(assert (=> b!4654378 m!5533059))

(declare-fun m!5533061 () Bool)

(assert (=> b!4654373 m!5533061))

(declare-fun m!5533063 () Bool)

(assert (=> b!4654373 m!5533063))

(declare-fun m!5533065 () Bool)

(assert (=> start!468338 m!5533065))

(declare-fun m!5533067 () Bool)

(assert (=> b!4654372 m!5533067))

(declare-fun m!5533069 () Bool)

(assert (=> b!4654372 m!5533069))

(declare-fun m!5533071 () Bool)

(assert (=> b!4654376 m!5533071))

(declare-fun m!5533073 () Bool)

(assert (=> b!4654377 m!5533073))

(declare-fun m!5533075 () Bool)

(assert (=> b!4654371 m!5533075))

(push 1)

(assert (not b!4654375))

(assert (not b!4654371))

(assert (not b!4654377))

(assert (not b!4654369))

(assert (not b!4654379))

(assert tp_is_empty!29833)

(assert (not b!4654378))

(assert (not start!468338))

(assert (not b!4654373))

(assert (not b!4654372))

(assert tp_is_empty!29835)

(assert (not b!4654376))

(assert (not b!4654370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4654483 () Bool)

(assert (=> b!4654483 true))

(declare-fun bs!1064162 () Bool)

(declare-fun b!4654484 () Bool)

(assert (= bs!1064162 (and b!4654484 b!4654483)))

(declare-fun lambda!199021 () Int)

(declare-fun lambda!199020 () Int)

(assert (=> bs!1064162 (= lambda!199021 lambda!199020)))

(assert (=> b!4654484 true))

(declare-fun lambda!199022 () Int)

(declare-fun lt!1817668 () ListMap!4539)

(assert (=> bs!1064162 (= (= lt!1817668 lt!1817579) (= lambda!199022 lambda!199020))))

(assert (=> b!4654484 (= (= lt!1817668 lt!1817579) (= lambda!199022 lambda!199021))))

(assert (=> b!4654484 true))

(declare-fun bs!1064163 () Bool)

(declare-fun d!1476040 () Bool)

(assert (= bs!1064163 (and d!1476040 b!4654483)))

(declare-fun lambda!199023 () Int)

(declare-fun lt!1817675 () ListMap!4539)

(assert (=> bs!1064163 (= (= lt!1817675 lt!1817579) (= lambda!199023 lambda!199020))))

(declare-fun bs!1064164 () Bool)

(assert (= bs!1064164 (and d!1476040 b!4654484)))

(assert (=> bs!1064164 (= (= lt!1817675 lt!1817579) (= lambda!199023 lambda!199021))))

(assert (=> bs!1064164 (= (= lt!1817675 lt!1817668) (= lambda!199023 lambda!199022))))

(assert (=> d!1476040 true))

(declare-fun b!4654480 () Bool)

(declare-fun e!2903992 () Bool)

(declare-fun forall!11013 (List!52006 Int) Bool)

(assert (=> b!4654480 (= e!2903992 (forall!11013 (toList!5202 lt!1817579) lambda!199022))))

(declare-fun bm!325254 () Bool)

(declare-datatypes ((Unit!118398 0))(
  ( (Unit!118399) )
))
(declare-fun call!325261 () Unit!118398)

(declare-fun lemmaContainsAllItsOwnKeys!593 (ListMap!4539) Unit!118398)

(assert (=> bm!325254 (= call!325261 (lemmaContainsAllItsOwnKeys!593 lt!1817579))))

(declare-fun b!4654481 () Bool)

(declare-fun e!2903990 () Bool)

(declare-fun invariantList!1293 (List!52006) Bool)

(assert (=> b!4654481 (= e!2903990 (invariantList!1293 (toList!5202 lt!1817675)))))

(declare-fun b!4654482 () Bool)

(declare-fun res!1956874 () Bool)

(assert (=> b!4654482 (=> (not res!1956874) (not e!2903990))))

(assert (=> b!4654482 (= res!1956874 (forall!11013 (toList!5202 lt!1817579) lambda!199023))))

(declare-fun e!2903991 () ListMap!4539)

(assert (=> b!4654483 (= e!2903991 lt!1817579)))

(declare-fun lt!1817673 () Unit!118398)

(assert (=> b!4654483 (= lt!1817673 call!325261)))

(declare-fun call!325259 () Bool)

(assert (=> b!4654483 call!325259))

(declare-fun lt!1817666 () Unit!118398)

(assert (=> b!4654483 (= lt!1817666 lt!1817673)))

(declare-fun call!325260 () Bool)

(assert (=> b!4654483 call!325260))

(declare-fun lt!1817680 () Unit!118398)

(declare-fun Unit!118400 () Unit!118398)

(assert (=> b!4654483 (= lt!1817680 Unit!118400)))

(assert (=> d!1476040 e!2903990))

(declare-fun res!1956876 () Bool)

(assert (=> d!1476040 (=> (not res!1956876) (not e!2903990))))

(assert (=> d!1476040 (= res!1956876 (forall!11013 oldBucket!40 lambda!199023))))

(assert (=> d!1476040 (= lt!1817675 e!2903991)))

(declare-fun c!796667 () Bool)

(assert (=> d!1476040 (= c!796667 (is-Nil!51882 oldBucket!40))))

(assert (=> d!1476040 (noDuplicateKeys!1635 oldBucket!40)))

(assert (=> d!1476040 (= (addToMapMapFromBucket!1092 oldBucket!40 lt!1817579) lt!1817675)))

(assert (=> b!4654484 (= e!2903991 lt!1817668)))

(declare-fun lt!1817676 () ListMap!4539)

(declare-fun +!1979 (ListMap!4539 tuple2!52986) ListMap!4539)

(assert (=> b!4654484 (= lt!1817676 (+!1979 lt!1817579 (h!58022 oldBucket!40)))))

(assert (=> b!4654484 (= lt!1817668 (addToMapMapFromBucket!1092 (t!359122 oldBucket!40) (+!1979 lt!1817579 (h!58022 oldBucket!40))))))

(declare-fun lt!1817663 () Unit!118398)

(assert (=> b!4654484 (= lt!1817663 call!325261)))

(assert (=> b!4654484 (forall!11013 (toList!5202 lt!1817579) lambda!199021)))

(declare-fun lt!1817664 () Unit!118398)

(assert (=> b!4654484 (= lt!1817664 lt!1817663)))

(assert (=> b!4654484 call!325259))

(declare-fun lt!1817682 () Unit!118398)

(declare-fun Unit!118401 () Unit!118398)

(assert (=> b!4654484 (= lt!1817682 Unit!118401)))

(assert (=> b!4654484 (forall!11013 (t!359122 oldBucket!40) lambda!199022)))

(declare-fun lt!1817678 () Unit!118398)

(declare-fun Unit!118402 () Unit!118398)

(assert (=> b!4654484 (= lt!1817678 Unit!118402)))

(declare-fun lt!1817669 () Unit!118398)

(declare-fun Unit!118403 () Unit!118398)

(assert (=> b!4654484 (= lt!1817669 Unit!118403)))

(declare-fun lt!1817662 () Unit!118398)

(declare-fun forallContained!3219 (List!52006 Int tuple2!52986) Unit!118398)

(assert (=> b!4654484 (= lt!1817662 (forallContained!3219 (toList!5202 lt!1817676) lambda!199022 (h!58022 oldBucket!40)))))

(assert (=> b!4654484 (contains!15026 lt!1817676 (_1!29787 (h!58022 oldBucket!40)))))

(declare-fun lt!1817672 () Unit!118398)

(declare-fun Unit!118404 () Unit!118398)

(assert (=> b!4654484 (= lt!1817672 Unit!118404)))

(assert (=> b!4654484 (contains!15026 lt!1817668 (_1!29787 (h!58022 oldBucket!40)))))

(declare-fun lt!1817674 () Unit!118398)

(declare-fun Unit!118405 () Unit!118398)

(assert (=> b!4654484 (= lt!1817674 Unit!118405)))

(assert (=> b!4654484 (forall!11013 oldBucket!40 lambda!199022)))

(declare-fun lt!1817681 () Unit!118398)

(declare-fun Unit!118406 () Unit!118398)

(assert (=> b!4654484 (= lt!1817681 Unit!118406)))

(assert (=> b!4654484 call!325260))

(declare-fun lt!1817670 () Unit!118398)

(declare-fun Unit!118407 () Unit!118398)

(assert (=> b!4654484 (= lt!1817670 Unit!118407)))

(declare-fun lt!1817671 () Unit!118398)

(declare-fun Unit!118408 () Unit!118398)

(assert (=> b!4654484 (= lt!1817671 Unit!118408)))

(declare-fun lt!1817677 () Unit!118398)

(declare-fun addForallContainsKeyThenBeforeAdding!592 (ListMap!4539 ListMap!4539 K!13238 V!13484) Unit!118398)

(assert (=> b!4654484 (= lt!1817677 (addForallContainsKeyThenBeforeAdding!592 lt!1817579 lt!1817668 (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))))))

(assert (=> b!4654484 (forall!11013 (toList!5202 lt!1817579) lambda!199022)))

(declare-fun lt!1817667 () Unit!118398)

(assert (=> b!4654484 (= lt!1817667 lt!1817677)))

(assert (=> b!4654484 (forall!11013 (toList!5202 lt!1817579) lambda!199022)))

(declare-fun lt!1817679 () Unit!118398)

(declare-fun Unit!118409 () Unit!118398)

(assert (=> b!4654484 (= lt!1817679 Unit!118409)))

(declare-fun res!1956875 () Bool)

(assert (=> b!4654484 (= res!1956875 (forall!11013 oldBucket!40 lambda!199022))))

(assert (=> b!4654484 (=> (not res!1956875) (not e!2903992))))

(assert (=> b!4654484 e!2903992))

(declare-fun lt!1817665 () Unit!118398)

(declare-fun Unit!118410 () Unit!118398)

(assert (=> b!4654484 (= lt!1817665 Unit!118410)))

(declare-fun bm!325255 () Bool)

(assert (=> bm!325255 (= call!325259 (forall!11013 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676)) (ite c!796667 lambda!199020 lambda!199022)))))

(declare-fun bm!325256 () Bool)

(assert (=> bm!325256 (= call!325260 (forall!11013 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676)) (ite c!796667 lambda!199020 lambda!199022)))))

(assert (= (and d!1476040 c!796667) b!4654483))

(assert (= (and d!1476040 (not c!796667)) b!4654484))

(assert (= (and b!4654484 res!1956875) b!4654480))

(assert (= (or b!4654483 b!4654484) bm!325254))

(assert (= (or b!4654483 b!4654484) bm!325255))

(assert (= (or b!4654483 b!4654484) bm!325256))

(assert (= (and d!1476040 res!1956876) b!4654482))

(assert (= (and b!4654482 res!1956874) b!4654481))

(declare-fun m!5533147 () Bool)

(assert (=> d!1476040 m!5533147))

(assert (=> d!1476040 m!5533065))

(declare-fun m!5533149 () Bool)

(assert (=> b!4654480 m!5533149))

(declare-fun m!5533151 () Bool)

(assert (=> b!4654482 m!5533151))

(declare-fun m!5533153 () Bool)

(assert (=> b!4654484 m!5533153))

(assert (=> b!4654484 m!5533149))

(assert (=> b!4654484 m!5533153))

(declare-fun m!5533155 () Bool)

(assert (=> b!4654484 m!5533155))

(assert (=> b!4654484 m!5533149))

(declare-fun m!5533157 () Bool)

(assert (=> b!4654484 m!5533157))

(declare-fun m!5533159 () Bool)

(assert (=> b!4654484 m!5533159))

(declare-fun m!5533161 () Bool)

(assert (=> b!4654484 m!5533161))

(declare-fun m!5533163 () Bool)

(assert (=> b!4654484 m!5533163))

(declare-fun m!5533165 () Bool)

(assert (=> b!4654484 m!5533165))

(declare-fun m!5533167 () Bool)

(assert (=> b!4654484 m!5533167))

(declare-fun m!5533169 () Bool)

(assert (=> b!4654484 m!5533169))

(assert (=> b!4654484 m!5533159))

(declare-fun m!5533171 () Bool)

(assert (=> b!4654481 m!5533171))

(declare-fun m!5533173 () Bool)

(assert (=> bm!325255 m!5533173))

(declare-fun m!5533175 () Bool)

(assert (=> bm!325254 m!5533175))

(assert (=> bm!325256 m!5533173))

(assert (=> b!4654372 d!1476040))

(declare-fun d!1476062 () Bool)

(declare-fun lt!1817685 () ListMap!4539)

(assert (=> d!1476062 (invariantList!1293 (toList!5202 lt!1817685))))

(declare-fun e!2903995 () ListMap!4539)

(assert (=> d!1476062 (= lt!1817685 e!2903995)))

(declare-fun c!796670 () Bool)

(assert (=> d!1476062 (= c!796670 (is-Cons!51883 Nil!51883))))

(declare-fun lambda!199026 () Int)

(declare-fun forall!11014 (List!52007 Int) Bool)

(assert (=> d!1476062 (forall!11014 Nil!51883 lambda!199026)))

(assert (=> d!1476062 (= (extractMap!1691 Nil!51883) lt!1817685)))

(declare-fun b!4654491 () Bool)

(assert (=> b!4654491 (= e!2903995 (addToMapMapFromBucket!1092 (_2!29788 (h!58023 Nil!51883)) (extractMap!1691 (t!359123 Nil!51883))))))

(declare-fun b!4654492 () Bool)

(assert (=> b!4654492 (= e!2903995 (ListMap!4540 Nil!51882))))

(assert (= (and d!1476062 c!796670) b!4654491))

(assert (= (and d!1476062 (not c!796670)) b!4654492))

(declare-fun m!5533177 () Bool)

(assert (=> d!1476062 m!5533177))

(declare-fun m!5533179 () Bool)

(assert (=> d!1476062 m!5533179))

(declare-fun m!5533181 () Bool)

(assert (=> b!4654491 m!5533181))

(assert (=> b!4654491 m!5533181))

(declare-fun m!5533183 () Bool)

(assert (=> b!4654491 m!5533183))

(assert (=> b!4654372 d!1476062))

(declare-fun b!4654504 () Bool)

(declare-fun e!2904001 () List!52006)

(assert (=> b!4654504 (= e!2904001 Nil!51882)))

(declare-fun b!4654501 () Bool)

(declare-fun e!2904000 () List!52006)

(assert (=> b!4654501 (= e!2904000 (t!359122 oldBucket!40))))

(declare-fun b!4654503 () Bool)

(assert (=> b!4654503 (= e!2904001 (Cons!51882 (h!58022 oldBucket!40) (removePairForKey!1258 (t!359122 oldBucket!40) key!4968)))))

(declare-fun d!1476064 () Bool)

(declare-fun lt!1817688 () List!52006)

(declare-fun containsKey!2715 (List!52006 K!13238) Bool)

(assert (=> d!1476064 (not (containsKey!2715 lt!1817688 key!4968))))

(assert (=> d!1476064 (= lt!1817688 e!2904000)))

(declare-fun c!796675 () Bool)

(assert (=> d!1476064 (= c!796675 (and (is-Cons!51882 oldBucket!40) (= (_1!29787 (h!58022 oldBucket!40)) key!4968)))))

(assert (=> d!1476064 (noDuplicateKeys!1635 oldBucket!40)))

(assert (=> d!1476064 (= (removePairForKey!1258 oldBucket!40 key!4968) lt!1817688)))

(declare-fun b!4654502 () Bool)

(assert (=> b!4654502 (= e!2904000 e!2904001)))

(declare-fun c!796676 () Bool)

(assert (=> b!4654502 (= c!796676 (is-Cons!51882 oldBucket!40))))

(assert (= (and d!1476064 c!796675) b!4654501))

(assert (= (and d!1476064 (not c!796675)) b!4654502))

(assert (= (and b!4654502 c!796676) b!4654503))

(assert (= (and b!4654502 (not c!796676)) b!4654504))

(declare-fun m!5533185 () Bool)

(assert (=> b!4654503 m!5533185))

(declare-fun m!5533187 () Bool)

(assert (=> d!1476064 m!5533187))

(assert (=> d!1476064 m!5533065))

(assert (=> b!4654378 d!1476064))

(declare-fun b!4654523 () Bool)

(declare-datatypes ((List!52010 0))(
  ( (Nil!51886) (Cons!51886 (h!58028 K!13238) (t!359126 List!52010)) )
))
(declare-fun e!2904016 () List!52010)

(declare-fun keys!18375 (ListMap!4539) List!52010)

(assert (=> b!4654523 (= e!2904016 (keys!18375 lt!1817580))))

(declare-fun b!4654524 () Bool)

(declare-fun getKeysList!744 (List!52006) List!52010)

(assert (=> b!4654524 (= e!2904016 (getKeysList!744 (toList!5202 lt!1817580)))))

(declare-fun d!1476066 () Bool)

(declare-fun e!2904017 () Bool)

(assert (=> d!1476066 e!2904017))

(declare-fun res!1956883 () Bool)

(assert (=> d!1476066 (=> res!1956883 e!2904017)))

(declare-fun e!2904018 () Bool)

(assert (=> d!1476066 (= res!1956883 e!2904018)))

(declare-fun res!1956885 () Bool)

(assert (=> d!1476066 (=> (not res!1956885) (not e!2904018))))

(declare-fun lt!1817707 () Bool)

(assert (=> d!1476066 (= res!1956885 (not lt!1817707))))

(declare-fun lt!1817705 () Bool)

(assert (=> d!1476066 (= lt!1817707 lt!1817705)))

(declare-fun lt!1817709 () Unit!118398)

(declare-fun e!2904014 () Unit!118398)

(assert (=> d!1476066 (= lt!1817709 e!2904014)))

(declare-fun c!796683 () Bool)

(assert (=> d!1476066 (= c!796683 lt!1817705)))

(declare-fun containsKey!2716 (List!52006 K!13238) Bool)

(assert (=> d!1476066 (= lt!1817705 (containsKey!2716 (toList!5202 lt!1817580) key!4968))))

(assert (=> d!1476066 (= (contains!15026 lt!1817580 key!4968) lt!1817707)))

(declare-fun b!4654525 () Bool)

(declare-fun e!2904015 () Bool)

(declare-fun contains!15028 (List!52010 K!13238) Bool)

(assert (=> b!4654525 (= e!2904015 (contains!15028 (keys!18375 lt!1817580) key!4968))))

(declare-fun b!4654526 () Bool)

(assert (=> b!4654526 (= e!2904018 (not (contains!15028 (keys!18375 lt!1817580) key!4968)))))

(declare-fun b!4654527 () Bool)

(declare-fun e!2904019 () Unit!118398)

(assert (=> b!4654527 (= e!2904014 e!2904019)))

(declare-fun c!796684 () Bool)

(declare-fun call!325264 () Bool)

(assert (=> b!4654527 (= c!796684 call!325264)))

(declare-fun b!4654528 () Bool)

(declare-fun lt!1817712 () Unit!118398)

(assert (=> b!4654528 (= e!2904014 lt!1817712)))

(declare-fun lt!1817706 () Unit!118398)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1507 (List!52006 K!13238) Unit!118398)

(assert (=> b!4654528 (= lt!1817706 (lemmaContainsKeyImpliesGetValueByKeyDefined!1507 (toList!5202 lt!1817580) key!4968))))

(declare-datatypes ((Option!11817 0))(
  ( (None!11816) (Some!11816 (v!46084 V!13484)) )
))
(declare-fun isDefined!9082 (Option!11817) Bool)

(declare-fun getValueByKey!1605 (List!52006 K!13238) Option!11817)

(assert (=> b!4654528 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817580) key!4968))))

(declare-fun lt!1817710 () Unit!118398)

(assert (=> b!4654528 (= lt!1817710 lt!1817706)))

(declare-fun lemmaInListThenGetKeysListContains!739 (List!52006 K!13238) Unit!118398)

(assert (=> b!4654528 (= lt!1817712 (lemmaInListThenGetKeysListContains!739 (toList!5202 lt!1817580) key!4968))))

(assert (=> b!4654528 call!325264))

(declare-fun b!4654529 () Bool)

(assert (=> b!4654529 false))

(declare-fun lt!1817711 () Unit!118398)

(declare-fun lt!1817708 () Unit!118398)

(assert (=> b!4654529 (= lt!1817711 lt!1817708)))

(assert (=> b!4654529 (containsKey!2716 (toList!5202 lt!1817580) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!743 (List!52006 K!13238) Unit!118398)

(assert (=> b!4654529 (= lt!1817708 (lemmaInGetKeysListThenContainsKey!743 (toList!5202 lt!1817580) key!4968))))

(declare-fun Unit!118411 () Unit!118398)

(assert (=> b!4654529 (= e!2904019 Unit!118411)))

(declare-fun b!4654530 () Bool)

(declare-fun Unit!118412 () Unit!118398)

(assert (=> b!4654530 (= e!2904019 Unit!118412)))

(declare-fun bm!325259 () Bool)

(assert (=> bm!325259 (= call!325264 (contains!15028 e!2904016 key!4968))))

(declare-fun c!796685 () Bool)

(assert (=> bm!325259 (= c!796685 c!796683)))

(declare-fun b!4654531 () Bool)

(assert (=> b!4654531 (= e!2904017 e!2904015)))

(declare-fun res!1956884 () Bool)

(assert (=> b!4654531 (=> (not res!1956884) (not e!2904015))))

(assert (=> b!4654531 (= res!1956884 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817580) key!4968)))))

(assert (= (and d!1476066 c!796683) b!4654528))

(assert (= (and d!1476066 (not c!796683)) b!4654527))

(assert (= (and b!4654527 c!796684) b!4654529))

(assert (= (and b!4654527 (not c!796684)) b!4654530))

(assert (= (or b!4654528 b!4654527) bm!325259))

(assert (= (and bm!325259 c!796685) b!4654524))

(assert (= (and bm!325259 (not c!796685)) b!4654523))

(assert (= (and d!1476066 res!1956885) b!4654526))

(assert (= (and d!1476066 (not res!1956883)) b!4654531))

(assert (= (and b!4654531 res!1956884) b!4654525))

(declare-fun m!5533189 () Bool)

(assert (=> b!4654523 m!5533189))

(assert (=> b!4654526 m!5533189))

(assert (=> b!4654526 m!5533189))

(declare-fun m!5533191 () Bool)

(assert (=> b!4654526 m!5533191))

(declare-fun m!5533193 () Bool)

(assert (=> b!4654524 m!5533193))

(declare-fun m!5533195 () Bool)

(assert (=> b!4654531 m!5533195))

(assert (=> b!4654531 m!5533195))

(declare-fun m!5533197 () Bool)

(assert (=> b!4654531 m!5533197))

(declare-fun m!5533199 () Bool)

(assert (=> b!4654528 m!5533199))

(assert (=> b!4654528 m!5533195))

(assert (=> b!4654528 m!5533195))

(assert (=> b!4654528 m!5533197))

(declare-fun m!5533201 () Bool)

(assert (=> b!4654528 m!5533201))

(assert (=> b!4654525 m!5533189))

(assert (=> b!4654525 m!5533189))

(assert (=> b!4654525 m!5533191))

(declare-fun m!5533203 () Bool)

(assert (=> d!1476066 m!5533203))

(assert (=> b!4654529 m!5533203))

(declare-fun m!5533205 () Bool)

(assert (=> b!4654529 m!5533205))

(declare-fun m!5533207 () Bool)

(assert (=> bm!325259 m!5533207))

(assert (=> b!4654373 d!1476066))

(declare-fun bs!1064165 () Bool)

(declare-fun d!1476068 () Bool)

(assert (= bs!1064165 (and d!1476068 d!1476062)))

(declare-fun lambda!199027 () Int)

(assert (=> bs!1064165 (= lambda!199027 lambda!199026)))

(declare-fun lt!1817713 () ListMap!4539)

(assert (=> d!1476068 (invariantList!1293 (toList!5202 lt!1817713))))

(declare-fun e!2904020 () ListMap!4539)

(assert (=> d!1476068 (= lt!1817713 e!2904020)))

(declare-fun c!796686 () Bool)

(assert (=> d!1476068 (= c!796686 (is-Cons!51883 lt!1817578))))

(assert (=> d!1476068 (forall!11014 lt!1817578 lambda!199027)))

(assert (=> d!1476068 (= (extractMap!1691 lt!1817578) lt!1817713)))

(declare-fun b!4654532 () Bool)

(assert (=> b!4654532 (= e!2904020 (addToMapMapFromBucket!1092 (_2!29788 (h!58023 lt!1817578)) (extractMap!1691 (t!359123 lt!1817578))))))

(declare-fun b!4654533 () Bool)

(assert (=> b!4654533 (= e!2904020 (ListMap!4540 Nil!51882))))

(assert (= (and d!1476068 c!796686) b!4654532))

(assert (= (and d!1476068 (not c!796686)) b!4654533))

(declare-fun m!5533209 () Bool)

(assert (=> d!1476068 m!5533209))

(declare-fun m!5533211 () Bool)

(assert (=> d!1476068 m!5533211))

(declare-fun m!5533213 () Bool)

(assert (=> b!4654532 m!5533213))

(assert (=> b!4654532 m!5533213))

(declare-fun m!5533215 () Bool)

(assert (=> b!4654532 m!5533215))

(assert (=> b!4654373 d!1476068))

(declare-fun bs!1064166 () Bool)

(declare-fun d!1476070 () Bool)

(assert (= bs!1064166 (and d!1476070 b!4654483)))

(declare-fun lambda!199030 () Int)

(assert (=> bs!1064166 (not (= lambda!199030 lambda!199020))))

(declare-fun bs!1064167 () Bool)

(assert (= bs!1064167 (and d!1476070 b!4654484)))

(assert (=> bs!1064167 (not (= lambda!199030 lambda!199021))))

(assert (=> bs!1064167 (not (= lambda!199030 lambda!199022))))

(declare-fun bs!1064168 () Bool)

(assert (= bs!1064168 (and d!1476070 d!1476040)))

(assert (=> bs!1064168 (not (= lambda!199030 lambda!199023))))

(assert (=> d!1476070 true))

(assert (=> d!1476070 true))

(assert (=> d!1476070 (= (allKeysSameHash!1489 newBucket!224 hash!414 hashF!1389) (forall!11013 newBucket!224 lambda!199030))))

(declare-fun bs!1064169 () Bool)

(assert (= bs!1064169 d!1476070))

(declare-fun m!5533217 () Bool)

(assert (=> bs!1064169 m!5533217))

(assert (=> b!4654376 d!1476070))

(declare-fun d!1476072 () Bool)

(declare-fun isStrictlySorted!573 (List!52007) Bool)

(assert (=> d!1476072 (= (inv!67167 (ListLongMap!3758 lt!1817578)) (isStrictlySorted!573 (toList!5201 (ListLongMap!3758 lt!1817578))))))

(declare-fun bs!1064170 () Bool)

(assert (= bs!1064170 d!1476072))

(declare-fun m!5533219 () Bool)

(assert (=> bs!1064170 m!5533219))

(assert (=> b!4654371 d!1476072))

(declare-fun d!1476074 () Bool)

(declare-fun hash!3770 (Hashable!6032 K!13238) (_ BitVec 64))

(assert (=> d!1476074 (= (hash!3768 hashF!1389 key!4968) (hash!3770 hashF!1389 key!4968))))

(declare-fun bs!1064171 () Bool)

(assert (= bs!1064171 d!1476074))

(declare-fun m!5533221 () Bool)

(assert (=> bs!1064171 m!5533221))

(assert (=> b!4654377 d!1476074))

(declare-fun d!1476076 () Bool)

(declare-fun res!1956890 () Bool)

(declare-fun e!2904025 () Bool)

(assert (=> d!1476076 (=> res!1956890 e!2904025)))

(assert (=> d!1476076 (= res!1956890 (not (is-Cons!51882 oldBucket!40)))))

(assert (=> d!1476076 (= (noDuplicateKeys!1635 oldBucket!40) e!2904025)))

(declare-fun b!4654542 () Bool)

(declare-fun e!2904026 () Bool)

(assert (=> b!4654542 (= e!2904025 e!2904026)))

(declare-fun res!1956891 () Bool)

(assert (=> b!4654542 (=> (not res!1956891) (not e!2904026))))

(assert (=> b!4654542 (= res!1956891 (not (containsKey!2715 (t!359122 oldBucket!40) (_1!29787 (h!58022 oldBucket!40)))))))

(declare-fun b!4654543 () Bool)

(assert (=> b!4654543 (= e!2904026 (noDuplicateKeys!1635 (t!359122 oldBucket!40)))))

(assert (= (and d!1476076 (not res!1956890)) b!4654542))

(assert (= (and b!4654542 res!1956891) b!4654543))

(declare-fun m!5533223 () Bool)

(assert (=> b!4654542 m!5533223))

(declare-fun m!5533225 () Bool)

(assert (=> b!4654543 m!5533225))

(assert (=> start!468338 d!1476076))

(declare-fun bs!1064172 () Bool)

(declare-fun d!1476078 () Bool)

(assert (= bs!1064172 (and d!1476078 d!1476070)))

(declare-fun lambda!199031 () Int)

(assert (=> bs!1064172 (= lambda!199031 lambda!199030)))

(declare-fun bs!1064173 () Bool)

(assert (= bs!1064173 (and d!1476078 b!4654484)))

(assert (=> bs!1064173 (not (= lambda!199031 lambda!199022))))

(assert (=> bs!1064173 (not (= lambda!199031 lambda!199021))))

(declare-fun bs!1064174 () Bool)

(assert (= bs!1064174 (and d!1476078 d!1476040)))

(assert (=> bs!1064174 (not (= lambda!199031 lambda!199023))))

(declare-fun bs!1064175 () Bool)

(assert (= bs!1064175 (and d!1476078 b!4654483)))

(assert (=> bs!1064175 (not (= lambda!199031 lambda!199020))))

(assert (=> d!1476078 true))

(assert (=> d!1476078 true))

(assert (=> d!1476078 (= (allKeysSameHash!1489 oldBucket!40 hash!414 hashF!1389) (forall!11013 oldBucket!40 lambda!199031))))

(declare-fun bs!1064176 () Bool)

(assert (= bs!1064176 d!1476078))

(declare-fun m!5533227 () Bool)

(assert (=> bs!1064176 m!5533227))

(assert (=> b!4654379 d!1476078))

(declare-fun d!1476080 () Bool)

(declare-fun res!1956892 () Bool)

(declare-fun e!2904027 () Bool)

(assert (=> d!1476080 (=> res!1956892 e!2904027)))

(assert (=> d!1476080 (= res!1956892 (not (is-Cons!51882 newBucket!224)))))

(assert (=> d!1476080 (= (noDuplicateKeys!1635 newBucket!224) e!2904027)))

(declare-fun b!4654544 () Bool)

(declare-fun e!2904028 () Bool)

(assert (=> b!4654544 (= e!2904027 e!2904028)))

(declare-fun res!1956893 () Bool)

(assert (=> b!4654544 (=> (not res!1956893) (not e!2904028))))

(assert (=> b!4654544 (= res!1956893 (not (containsKey!2715 (t!359122 newBucket!224) (_1!29787 (h!58022 newBucket!224)))))))

(declare-fun b!4654545 () Bool)

(assert (=> b!4654545 (= e!2904028 (noDuplicateKeys!1635 (t!359122 newBucket!224)))))

(assert (= (and d!1476080 (not res!1956892)) b!4654544))

(assert (= (and b!4654544 res!1956893) b!4654545))

(declare-fun m!5533229 () Bool)

(assert (=> b!4654544 m!5533229))

(declare-fun m!5533231 () Bool)

(assert (=> b!4654545 m!5533231))

(assert (=> b!4654369 d!1476080))

(declare-fun tp!1343270 () Bool)

(declare-fun e!2904031 () Bool)

(declare-fun b!4654550 () Bool)

(assert (=> b!4654550 (= e!2904031 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343270))))

(assert (=> b!4654375 (= tp!1343261 e!2904031)))

(assert (= (and b!4654375 (is-Cons!51882 (t!359122 oldBucket!40))) b!4654550))

(declare-fun e!2904032 () Bool)

(declare-fun b!4654551 () Bool)

(declare-fun tp!1343271 () Bool)

(assert (=> b!4654551 (= e!2904032 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343271))))

(assert (=> b!4654370 (= tp!1343260 e!2904032)))

(assert (= (and b!4654370 (is-Cons!51882 (t!359122 newBucket!224))) b!4654551))

(push 1)

(assert (not b!4654532))

(assert (not d!1476074))

(assert (not b!4654531))

(assert (not bm!325254))

(assert tp_is_empty!29835)

(assert (not b!4654543))

(assert (not d!1476066))

(assert (not b!4654484))

(assert (not d!1476070))

(assert (not bm!325259))

(assert (not b!4654526))

(assert tp_is_empty!29833)

(assert (not b!4654528))

(assert (not d!1476062))

(assert (not b!4654503))

(assert (not d!1476064))

(assert (not b!4654480))

(assert (not b!4654491))

(assert (not b!4654542))

(assert (not b!4654523))

(assert (not b!4654550))

(assert (not b!4654544))

(assert (not b!4654551))

(assert (not b!4654481))

(assert (not bm!325255))

(assert (not d!1476072))

(assert (not d!1476078))

(assert (not d!1476040))

(assert (not d!1476068))

(assert (not b!4654482))

(assert (not b!4654545))

(assert (not b!4654525))

(assert (not b!4654529))

(assert (not bm!325256))

(assert (not b!4654524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1476084 () Bool)

(declare-fun res!1956907 () Bool)

(declare-fun e!2904051 () Bool)

(assert (=> d!1476084 (=> res!1956907 e!2904051)))

(assert (=> d!1476084 (= res!1956907 (and (is-Cons!51882 (t!359122 newBucket!224)) (= (_1!29787 (h!58022 (t!359122 newBucket!224))) (_1!29787 (h!58022 newBucket!224)))))))

(assert (=> d!1476084 (= (containsKey!2715 (t!359122 newBucket!224) (_1!29787 (h!58022 newBucket!224))) e!2904051)))

(declare-fun b!4654581 () Bool)

(declare-fun e!2904052 () Bool)

(assert (=> b!4654581 (= e!2904051 e!2904052)))

(declare-fun res!1956908 () Bool)

(assert (=> b!4654581 (=> (not res!1956908) (not e!2904052))))

(assert (=> b!4654581 (= res!1956908 (is-Cons!51882 (t!359122 newBucket!224)))))

(declare-fun b!4654582 () Bool)

(assert (=> b!4654582 (= e!2904052 (containsKey!2715 (t!359122 (t!359122 newBucket!224)) (_1!29787 (h!58022 newBucket!224))))))

(assert (= (and d!1476084 (not res!1956907)) b!4654581))

(assert (= (and b!4654581 res!1956908) b!4654582))

(declare-fun m!5533273 () Bool)

(assert (=> b!4654582 m!5533273))

(assert (=> b!4654544 d!1476084))

(declare-fun b!4654586 () Bool)

(declare-fun e!2904054 () List!52006)

(assert (=> b!4654586 (= e!2904054 Nil!51882)))

(declare-fun b!4654583 () Bool)

(declare-fun e!2904053 () List!52006)

(assert (=> b!4654583 (= e!2904053 (t!359122 (t!359122 oldBucket!40)))))

(declare-fun b!4654585 () Bool)

(assert (=> b!4654585 (= e!2904054 (Cons!51882 (h!58022 (t!359122 oldBucket!40)) (removePairForKey!1258 (t!359122 (t!359122 oldBucket!40)) key!4968)))))

(declare-fun d!1476086 () Bool)

(declare-fun lt!1817778 () List!52006)

(assert (=> d!1476086 (not (containsKey!2715 lt!1817778 key!4968))))

(assert (=> d!1476086 (= lt!1817778 e!2904053)))

(declare-fun c!796691 () Bool)

(assert (=> d!1476086 (= c!796691 (and (is-Cons!51882 (t!359122 oldBucket!40)) (= (_1!29787 (h!58022 (t!359122 oldBucket!40))) key!4968)))))

(assert (=> d!1476086 (noDuplicateKeys!1635 (t!359122 oldBucket!40))))

(assert (=> d!1476086 (= (removePairForKey!1258 (t!359122 oldBucket!40) key!4968) lt!1817778)))

(declare-fun b!4654584 () Bool)

(assert (=> b!4654584 (= e!2904053 e!2904054)))

(declare-fun c!796692 () Bool)

(assert (=> b!4654584 (= c!796692 (is-Cons!51882 (t!359122 oldBucket!40)))))

(assert (= (and d!1476086 c!796691) b!4654583))

(assert (= (and d!1476086 (not c!796691)) b!4654584))

(assert (= (and b!4654584 c!796692) b!4654585))

(assert (= (and b!4654584 (not c!796692)) b!4654586))

(declare-fun m!5533275 () Bool)

(assert (=> b!4654585 m!5533275))

(declare-fun m!5533277 () Bool)

(assert (=> d!1476086 m!5533277))

(assert (=> d!1476086 m!5533225))

(assert (=> b!4654503 d!1476086))

(declare-fun d!1476088 () Bool)

(declare-fun res!1956909 () Bool)

(declare-fun e!2904055 () Bool)

(assert (=> d!1476088 (=> res!1956909 e!2904055)))

(assert (=> d!1476088 (= res!1956909 (and (is-Cons!51882 (t!359122 oldBucket!40)) (= (_1!29787 (h!58022 (t!359122 oldBucket!40))) (_1!29787 (h!58022 oldBucket!40)))))))

(assert (=> d!1476088 (= (containsKey!2715 (t!359122 oldBucket!40) (_1!29787 (h!58022 oldBucket!40))) e!2904055)))

(declare-fun b!4654587 () Bool)

(declare-fun e!2904056 () Bool)

(assert (=> b!4654587 (= e!2904055 e!2904056)))

(declare-fun res!1956910 () Bool)

(assert (=> b!4654587 (=> (not res!1956910) (not e!2904056))))

(assert (=> b!4654587 (= res!1956910 (is-Cons!51882 (t!359122 oldBucket!40)))))

(declare-fun b!4654588 () Bool)

(assert (=> b!4654588 (= e!2904056 (containsKey!2715 (t!359122 (t!359122 oldBucket!40)) (_1!29787 (h!58022 oldBucket!40))))))

(assert (= (and d!1476088 (not res!1956909)) b!4654587))

(assert (= (and b!4654587 res!1956910) b!4654588))

(declare-fun m!5533279 () Bool)

(assert (=> b!4654588 m!5533279))

(assert (=> b!4654542 d!1476088))

(declare-fun d!1476090 () Bool)

(assert (not d!1476090))

(assert (=> b!4654491 d!1476090))

(declare-fun d!1476092 () Bool)

(assert (not d!1476092))

(assert (=> b!4654491 d!1476092))

(declare-fun d!1476094 () Bool)

(declare-fun res!1956911 () Bool)

(declare-fun e!2904057 () Bool)

(assert (=> d!1476094 (=> res!1956911 e!2904057)))

(assert (=> d!1476094 (= res!1956911 (not (is-Cons!51882 (t!359122 newBucket!224))))))

(assert (=> d!1476094 (= (noDuplicateKeys!1635 (t!359122 newBucket!224)) e!2904057)))

(declare-fun b!4654589 () Bool)

(declare-fun e!2904058 () Bool)

(assert (=> b!4654589 (= e!2904057 e!2904058)))

(declare-fun res!1956912 () Bool)

(assert (=> b!4654589 (=> (not res!1956912) (not e!2904058))))

(assert (=> b!4654589 (= res!1956912 (not (containsKey!2715 (t!359122 (t!359122 newBucket!224)) (_1!29787 (h!58022 (t!359122 newBucket!224))))))))

(declare-fun b!4654590 () Bool)

(assert (=> b!4654590 (= e!2904058 (noDuplicateKeys!1635 (t!359122 (t!359122 newBucket!224))))))

(assert (= (and d!1476094 (not res!1956911)) b!4654589))

(assert (= (and b!4654589 res!1956912) b!4654590))

(declare-fun m!5533281 () Bool)

(assert (=> b!4654589 m!5533281))

(declare-fun m!5533283 () Bool)

(assert (=> b!4654590 m!5533283))

(assert (=> b!4654545 d!1476094))

(declare-fun d!1476096 () Bool)

(declare-fun res!1956913 () Bool)

(declare-fun e!2904059 () Bool)

(assert (=> d!1476096 (=> res!1956913 e!2904059)))

(assert (=> d!1476096 (= res!1956913 (not (is-Cons!51882 (t!359122 oldBucket!40))))))

(assert (=> d!1476096 (= (noDuplicateKeys!1635 (t!359122 oldBucket!40)) e!2904059)))

(declare-fun b!4654591 () Bool)

(declare-fun e!2904060 () Bool)

(assert (=> b!4654591 (= e!2904059 e!2904060)))

(declare-fun res!1956914 () Bool)

(assert (=> b!4654591 (=> (not res!1956914) (not e!2904060))))

(assert (=> b!4654591 (= res!1956914 (not (containsKey!2715 (t!359122 (t!359122 oldBucket!40)) (_1!29787 (h!58022 (t!359122 oldBucket!40))))))))

(declare-fun b!4654592 () Bool)

(assert (=> b!4654592 (= e!2904060 (noDuplicateKeys!1635 (t!359122 (t!359122 oldBucket!40))))))

(assert (= (and d!1476096 (not res!1956913)) b!4654591))

(assert (= (and b!4654591 res!1956914) b!4654592))

(declare-fun m!5533285 () Bool)

(assert (=> b!4654591 m!5533285))

(declare-fun m!5533287 () Bool)

(assert (=> b!4654592 m!5533287))

(assert (=> b!4654543 d!1476096))

(declare-fun d!1476098 () Bool)

(declare-fun lt!1817781 () Bool)

(declare-fun content!8992 (List!52010) (Set K!13238))

(assert (=> d!1476098 (= lt!1817781 (set.member key!4968 (content!8992 e!2904016)))))

(declare-fun e!2904066 () Bool)

(assert (=> d!1476098 (= lt!1817781 e!2904066)))

(declare-fun res!1956919 () Bool)

(assert (=> d!1476098 (=> (not res!1956919) (not e!2904066))))

(assert (=> d!1476098 (= res!1956919 (is-Cons!51886 e!2904016))))

(assert (=> d!1476098 (= (contains!15028 e!2904016 key!4968) lt!1817781)))

(declare-fun b!4654597 () Bool)

(declare-fun e!2904065 () Bool)

(assert (=> b!4654597 (= e!2904066 e!2904065)))

(declare-fun res!1956920 () Bool)

(assert (=> b!4654597 (=> res!1956920 e!2904065)))

(assert (=> b!4654597 (= res!1956920 (= (h!58028 e!2904016) key!4968))))

(declare-fun b!4654598 () Bool)

(assert (=> b!4654598 (= e!2904065 (contains!15028 (t!359126 e!2904016) key!4968))))

(assert (= (and d!1476098 res!1956919) b!4654597))

(assert (= (and b!4654597 (not res!1956920)) b!4654598))

(declare-fun m!5533289 () Bool)

(assert (=> d!1476098 m!5533289))

(declare-fun m!5533291 () Bool)

(assert (=> d!1476098 m!5533291))

(declare-fun m!5533293 () Bool)

(assert (=> b!4654598 m!5533293))

(assert (=> bm!325259 d!1476098))

(declare-fun d!1476100 () Bool)

(declare-fun noDuplicatedKeys!349 (List!52006) Bool)

(assert (=> d!1476100 (= (invariantList!1293 (toList!5202 lt!1817713)) (noDuplicatedKeys!349 (toList!5202 lt!1817713)))))

(declare-fun bs!1064187 () Bool)

(assert (= bs!1064187 d!1476100))

(declare-fun m!5533295 () Bool)

(assert (=> bs!1064187 m!5533295))

(assert (=> d!1476068 d!1476100))

(declare-fun d!1476102 () Bool)

(declare-fun res!1956925 () Bool)

(declare-fun e!2904071 () Bool)

(assert (=> d!1476102 (=> res!1956925 e!2904071)))

(assert (=> d!1476102 (= res!1956925 (is-Nil!51883 lt!1817578))))

(assert (=> d!1476102 (= (forall!11014 lt!1817578 lambda!199027) e!2904071)))

(declare-fun b!4654603 () Bool)

(declare-fun e!2904072 () Bool)

(assert (=> b!4654603 (= e!2904071 e!2904072)))

(declare-fun res!1956926 () Bool)

(assert (=> b!4654603 (=> (not res!1956926) (not e!2904072))))

(declare-fun dynLambda!21581 (Int tuple2!52988) Bool)

(assert (=> b!4654603 (= res!1956926 (dynLambda!21581 lambda!199027 (h!58023 lt!1817578)))))

(declare-fun b!4654604 () Bool)

(assert (=> b!4654604 (= e!2904072 (forall!11014 (t!359123 lt!1817578) lambda!199027))))

(assert (= (and d!1476102 (not res!1956925)) b!4654603))

(assert (= (and b!4654603 res!1956926) b!4654604))

(declare-fun b_lambda!173777 () Bool)

(assert (=> (not b_lambda!173777) (not b!4654603)))

(declare-fun m!5533297 () Bool)

(assert (=> b!4654603 m!5533297))

(declare-fun m!5533299 () Bool)

(assert (=> b!4654604 m!5533299))

(assert (=> d!1476068 d!1476102))

(declare-fun d!1476104 () Bool)

(assert (=> d!1476104 (= (invariantList!1293 (toList!5202 lt!1817685)) (noDuplicatedKeys!349 (toList!5202 lt!1817685)))))

(declare-fun bs!1064188 () Bool)

(assert (= bs!1064188 d!1476104))

(declare-fun m!5533301 () Bool)

(assert (=> bs!1064188 m!5533301))

(assert (=> d!1476062 d!1476104))

(declare-fun d!1476106 () Bool)

(declare-fun res!1956927 () Bool)

(declare-fun e!2904073 () Bool)

(assert (=> d!1476106 (=> res!1956927 e!2904073)))

(assert (=> d!1476106 (= res!1956927 (is-Nil!51883 Nil!51883))))

(assert (=> d!1476106 (= (forall!11014 Nil!51883 lambda!199026) e!2904073)))

(declare-fun b!4654605 () Bool)

(declare-fun e!2904074 () Bool)

(assert (=> b!4654605 (= e!2904073 e!2904074)))

(declare-fun res!1956928 () Bool)

(assert (=> b!4654605 (=> (not res!1956928) (not e!2904074))))

(assert (=> b!4654605 (= res!1956928 (dynLambda!21581 lambda!199026 (h!58023 Nil!51883)))))

(declare-fun b!4654606 () Bool)

(assert (=> b!4654606 (= e!2904074 (forall!11014 (t!359123 Nil!51883) lambda!199026))))

(assert (= (and d!1476106 (not res!1956927)) b!4654605))

(assert (= (and b!4654605 res!1956928) b!4654606))

(declare-fun b_lambda!173779 () Bool)

(assert (=> (not b_lambda!173779) (not b!4654605)))

(declare-fun m!5533303 () Bool)

(assert (=> b!4654605 m!5533303))

(declare-fun m!5533305 () Bool)

(assert (=> b!4654606 m!5533305))

(assert (=> d!1476062 d!1476106))

(declare-fun d!1476108 () Bool)

(declare-fun isEmpty!29003 (Option!11817) Bool)

(assert (=> d!1476108 (= (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817580) key!4968)) (not (isEmpty!29003 (getValueByKey!1605 (toList!5202 lt!1817580) key!4968))))))

(declare-fun bs!1064189 () Bool)

(assert (= bs!1064189 d!1476108))

(assert (=> bs!1064189 m!5533195))

(declare-fun m!5533307 () Bool)

(assert (=> bs!1064189 m!5533307))

(assert (=> b!4654531 d!1476108))

(declare-fun b!4654618 () Bool)

(declare-fun e!2904080 () Option!11817)

(assert (=> b!4654618 (= e!2904080 None!11816)))

(declare-fun d!1476110 () Bool)

(declare-fun c!796697 () Bool)

(assert (=> d!1476110 (= c!796697 (and (is-Cons!51882 (toList!5202 lt!1817580)) (= (_1!29787 (h!58022 (toList!5202 lt!1817580))) key!4968)))))

(declare-fun e!2904079 () Option!11817)

(assert (=> d!1476110 (= (getValueByKey!1605 (toList!5202 lt!1817580) key!4968) e!2904079)))

(declare-fun b!4654617 () Bool)

(assert (=> b!4654617 (= e!2904080 (getValueByKey!1605 (t!359122 (toList!5202 lt!1817580)) key!4968))))

(declare-fun b!4654616 () Bool)

(assert (=> b!4654616 (= e!2904079 e!2904080)))

(declare-fun c!796698 () Bool)

(assert (=> b!4654616 (= c!796698 (and (is-Cons!51882 (toList!5202 lt!1817580)) (not (= (_1!29787 (h!58022 (toList!5202 lt!1817580))) key!4968))))))

(declare-fun b!4654615 () Bool)

(assert (=> b!4654615 (= e!2904079 (Some!11816 (_2!29787 (h!58022 (toList!5202 lt!1817580)))))))

(assert (= (and d!1476110 c!796697) b!4654615))

(assert (= (and d!1476110 (not c!796697)) b!4654616))

(assert (= (and b!4654616 c!796698) b!4654617))

(assert (= (and b!4654616 (not c!796698)) b!4654618))

(declare-fun m!5533309 () Bool)

(assert (=> b!4654617 m!5533309))

(assert (=> b!4654531 d!1476110))

(declare-fun d!1476112 () Bool)

(declare-fun res!1956933 () Bool)

(declare-fun e!2904085 () Bool)

(assert (=> d!1476112 (=> res!1956933 e!2904085)))

(assert (=> d!1476112 (= res!1956933 (and (is-Cons!51882 (toList!5202 lt!1817580)) (= (_1!29787 (h!58022 (toList!5202 lt!1817580))) key!4968)))))

(assert (=> d!1476112 (= (containsKey!2716 (toList!5202 lt!1817580) key!4968) e!2904085)))

(declare-fun b!4654623 () Bool)

(declare-fun e!2904086 () Bool)

(assert (=> b!4654623 (= e!2904085 e!2904086)))

(declare-fun res!1956934 () Bool)

(assert (=> b!4654623 (=> (not res!1956934) (not e!2904086))))

(assert (=> b!4654623 (= res!1956934 (is-Cons!51882 (toList!5202 lt!1817580)))))

(declare-fun b!4654624 () Bool)

(assert (=> b!4654624 (= e!2904086 (containsKey!2716 (t!359122 (toList!5202 lt!1817580)) key!4968))))

(assert (= (and d!1476112 (not res!1956933)) b!4654623))

(assert (= (and b!4654623 res!1956934) b!4654624))

(declare-fun m!5533311 () Bool)

(assert (=> b!4654624 m!5533311))

(assert (=> b!4654529 d!1476112))

(declare-fun d!1476114 () Bool)

(assert (=> d!1476114 (containsKey!2716 (toList!5202 lt!1817580) key!4968)))

(declare-fun lt!1817784 () Unit!118398)

(declare-fun choose!31983 (List!52006 K!13238) Unit!118398)

(assert (=> d!1476114 (= lt!1817784 (choose!31983 (toList!5202 lt!1817580) key!4968))))

(assert (=> d!1476114 (invariantList!1293 (toList!5202 lt!1817580))))

(assert (=> d!1476114 (= (lemmaInGetKeysListThenContainsKey!743 (toList!5202 lt!1817580) key!4968) lt!1817784)))

(declare-fun bs!1064190 () Bool)

(assert (= bs!1064190 d!1476114))

(assert (=> bs!1064190 m!5533203))

(declare-fun m!5533313 () Bool)

(assert (=> bs!1064190 m!5533313))

(declare-fun m!5533315 () Bool)

(assert (=> bs!1064190 m!5533315))

(assert (=> b!4654529 d!1476114))

(declare-fun d!1476116 () Bool)

(declare-fun res!1956939 () Bool)

(declare-fun e!2904091 () Bool)

(assert (=> d!1476116 (=> res!1956939 e!2904091)))

(assert (=> d!1476116 (= res!1956939 (is-Nil!51882 newBucket!224))))

(assert (=> d!1476116 (= (forall!11013 newBucket!224 lambda!199030) e!2904091)))

(declare-fun b!4654629 () Bool)

(declare-fun e!2904092 () Bool)

(assert (=> b!4654629 (= e!2904091 e!2904092)))

(declare-fun res!1956940 () Bool)

(assert (=> b!4654629 (=> (not res!1956940) (not e!2904092))))

(declare-fun dynLambda!21582 (Int tuple2!52986) Bool)

(assert (=> b!4654629 (= res!1956940 (dynLambda!21582 lambda!199030 (h!58022 newBucket!224)))))

(declare-fun b!4654630 () Bool)

(assert (=> b!4654630 (= e!2904092 (forall!11013 (t!359122 newBucket!224) lambda!199030))))

(assert (= (and d!1476116 (not res!1956939)) b!4654629))

(assert (= (and b!4654629 res!1956940) b!4654630))

(declare-fun b_lambda!173781 () Bool)

(assert (=> (not b_lambda!173781) (not b!4654629)))

(declare-fun m!5533317 () Bool)

(assert (=> b!4654629 m!5533317))

(declare-fun m!5533319 () Bool)

(assert (=> b!4654630 m!5533319))

(assert (=> d!1476070 d!1476116))

(declare-fun d!1476118 () Bool)

(assert (=> d!1476118 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817580) key!4968))))

(declare-fun lt!1817787 () Unit!118398)

(declare-fun choose!31984 (List!52006 K!13238) Unit!118398)

(assert (=> d!1476118 (= lt!1817787 (choose!31984 (toList!5202 lt!1817580) key!4968))))

(assert (=> d!1476118 (invariantList!1293 (toList!5202 lt!1817580))))

(assert (=> d!1476118 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1507 (toList!5202 lt!1817580) key!4968) lt!1817787)))

(declare-fun bs!1064191 () Bool)

(assert (= bs!1064191 d!1476118))

(assert (=> bs!1064191 m!5533195))

(assert (=> bs!1064191 m!5533195))

(assert (=> bs!1064191 m!5533197))

(declare-fun m!5533321 () Bool)

(assert (=> bs!1064191 m!5533321))

(assert (=> bs!1064191 m!5533315))

(assert (=> b!4654528 d!1476118))

(assert (=> b!4654528 d!1476108))

(assert (=> b!4654528 d!1476110))

(declare-fun d!1476120 () Bool)

(assert (=> d!1476120 (contains!15028 (getKeysList!744 (toList!5202 lt!1817580)) key!4968)))

(declare-fun lt!1817790 () Unit!118398)

(declare-fun choose!31985 (List!52006 K!13238) Unit!118398)

(assert (=> d!1476120 (= lt!1817790 (choose!31985 (toList!5202 lt!1817580) key!4968))))

(assert (=> d!1476120 (invariantList!1293 (toList!5202 lt!1817580))))

(assert (=> d!1476120 (= (lemmaInListThenGetKeysListContains!739 (toList!5202 lt!1817580) key!4968) lt!1817790)))

(declare-fun bs!1064192 () Bool)

(assert (= bs!1064192 d!1476120))

(assert (=> bs!1064192 m!5533193))

(assert (=> bs!1064192 m!5533193))

(declare-fun m!5533323 () Bool)

(assert (=> bs!1064192 m!5533323))

(declare-fun m!5533325 () Bool)

(assert (=> bs!1064192 m!5533325))

(assert (=> bs!1064192 m!5533315))

(assert (=> b!4654528 d!1476120))

(declare-fun d!1476122 () Bool)

(declare-fun choose!31986 (Hashable!6032 K!13238) (_ BitVec 64))

(assert (=> d!1476122 (= (hash!3770 hashF!1389 key!4968) (choose!31986 hashF!1389 key!4968))))

(declare-fun bs!1064193 () Bool)

(assert (= bs!1064193 d!1476122))

(declare-fun m!5533327 () Bool)

(assert (=> bs!1064193 m!5533327))

(assert (=> d!1476074 d!1476122))

(declare-fun d!1476124 () Bool)

(declare-fun lt!1817791 () Bool)

(assert (=> d!1476124 (= lt!1817791 (set.member key!4968 (content!8992 (keys!18375 lt!1817580))))))

(declare-fun e!2904094 () Bool)

(assert (=> d!1476124 (= lt!1817791 e!2904094)))

(declare-fun res!1956941 () Bool)

(assert (=> d!1476124 (=> (not res!1956941) (not e!2904094))))

(assert (=> d!1476124 (= res!1956941 (is-Cons!51886 (keys!18375 lt!1817580)))))

(assert (=> d!1476124 (= (contains!15028 (keys!18375 lt!1817580) key!4968) lt!1817791)))

(declare-fun b!4654631 () Bool)

(declare-fun e!2904093 () Bool)

(assert (=> b!4654631 (= e!2904094 e!2904093)))

(declare-fun res!1956942 () Bool)

(assert (=> b!4654631 (=> res!1956942 e!2904093)))

(assert (=> b!4654631 (= res!1956942 (= (h!58028 (keys!18375 lt!1817580)) key!4968))))

(declare-fun b!4654632 () Bool)

(assert (=> b!4654632 (= e!2904093 (contains!15028 (t!359126 (keys!18375 lt!1817580)) key!4968))))

(assert (= (and d!1476124 res!1956941) b!4654631))

(assert (= (and b!4654631 (not res!1956942)) b!4654632))

(assert (=> d!1476124 m!5533189))

(declare-fun m!5533329 () Bool)

(assert (=> d!1476124 m!5533329))

(declare-fun m!5533331 () Bool)

(assert (=> d!1476124 m!5533331))

(declare-fun m!5533333 () Bool)

(assert (=> b!4654632 m!5533333))

(assert (=> b!4654525 d!1476124))

(declare-fun b!4654640 () Bool)

(assert (=> b!4654640 true))

(declare-fun d!1476126 () Bool)

(declare-fun e!2904097 () Bool)

(assert (=> d!1476126 e!2904097))

(declare-fun res!1956951 () Bool)

(assert (=> d!1476126 (=> (not res!1956951) (not e!2904097))))

(declare-fun lt!1817794 () List!52010)

(declare-fun noDuplicate!835 (List!52010) Bool)

(assert (=> d!1476126 (= res!1956951 (noDuplicate!835 lt!1817794))))

(assert (=> d!1476126 (= lt!1817794 (getKeysList!744 (toList!5202 lt!1817580)))))

(assert (=> d!1476126 (= (keys!18375 lt!1817580) lt!1817794)))

(declare-fun b!4654639 () Bool)

(declare-fun res!1956949 () Bool)

(assert (=> b!4654639 (=> (not res!1956949) (not e!2904097))))

(declare-fun length!526 (List!52010) Int)

(declare-fun length!527 (List!52006) Int)

(assert (=> b!4654639 (= res!1956949 (= (length!526 lt!1817794) (length!527 (toList!5202 lt!1817580))))))

(declare-fun res!1956950 () Bool)

(assert (=> b!4654640 (=> (not res!1956950) (not e!2904097))))

(declare-fun lambda!199069 () Int)

(declare-fun forall!11017 (List!52010 Int) Bool)

(assert (=> b!4654640 (= res!1956950 (forall!11017 lt!1817794 lambda!199069))))

(declare-fun b!4654641 () Bool)

(declare-fun lambda!199070 () Int)

(declare-fun map!11466 (List!52006 Int) List!52010)

(assert (=> b!4654641 (= e!2904097 (= (content!8992 lt!1817794) (content!8992 (map!11466 (toList!5202 lt!1817580) lambda!199070))))))

(assert (= (and d!1476126 res!1956951) b!4654639))

(assert (= (and b!4654639 res!1956949) b!4654640))

(assert (= (and b!4654640 res!1956950) b!4654641))

(declare-fun m!5533335 () Bool)

(assert (=> d!1476126 m!5533335))

(assert (=> d!1476126 m!5533193))

(declare-fun m!5533337 () Bool)

(assert (=> b!4654639 m!5533337))

(declare-fun m!5533339 () Bool)

(assert (=> b!4654639 m!5533339))

(declare-fun m!5533341 () Bool)

(assert (=> b!4654640 m!5533341))

(declare-fun m!5533343 () Bool)

(assert (=> b!4654641 m!5533343))

(declare-fun m!5533345 () Bool)

(assert (=> b!4654641 m!5533345))

(assert (=> b!4654641 m!5533345))

(declare-fun m!5533347 () Bool)

(assert (=> b!4654641 m!5533347))

(assert (=> b!4654525 d!1476126))

(assert (=> b!4654526 d!1476124))

(assert (=> b!4654526 d!1476126))

(declare-fun d!1476128 () Bool)

(declare-fun res!1956952 () Bool)

(declare-fun e!2904098 () Bool)

(assert (=> d!1476128 (=> res!1956952 e!2904098)))

(assert (=> d!1476128 (= res!1956952 (and (is-Cons!51882 lt!1817688) (= (_1!29787 (h!58022 lt!1817688)) key!4968)))))

(assert (=> d!1476128 (= (containsKey!2715 lt!1817688 key!4968) e!2904098)))

(declare-fun b!4654644 () Bool)

(declare-fun e!2904099 () Bool)

(assert (=> b!4654644 (= e!2904098 e!2904099)))

(declare-fun res!1956953 () Bool)

(assert (=> b!4654644 (=> (not res!1956953) (not e!2904099))))

(assert (=> b!4654644 (= res!1956953 (is-Cons!51882 lt!1817688))))

(declare-fun b!4654645 () Bool)

(assert (=> b!4654645 (= e!2904099 (containsKey!2715 (t!359122 lt!1817688) key!4968))))

(assert (= (and d!1476128 (not res!1956952)) b!4654644))

(assert (= (and b!4654644 res!1956953) b!4654645))

(declare-fun m!5533349 () Bool)

(assert (=> b!4654645 m!5533349))

(assert (=> d!1476064 d!1476128))

(assert (=> d!1476064 d!1476076))

(declare-fun d!1476130 () Bool)

(declare-fun res!1956954 () Bool)

(declare-fun e!2904100 () Bool)

(assert (=> d!1476130 (=> res!1956954 e!2904100)))

(assert (=> d!1476130 (= res!1956954 (is-Nil!51882 oldBucket!40))))

(assert (=> d!1476130 (= (forall!11013 oldBucket!40 lambda!199023) e!2904100)))

(declare-fun b!4654646 () Bool)

(declare-fun e!2904101 () Bool)

(assert (=> b!4654646 (= e!2904100 e!2904101)))

(declare-fun res!1956955 () Bool)

(assert (=> b!4654646 (=> (not res!1956955) (not e!2904101))))

(assert (=> b!4654646 (= res!1956955 (dynLambda!21582 lambda!199023 (h!58022 oldBucket!40)))))

(declare-fun b!4654647 () Bool)

(assert (=> b!4654647 (= e!2904101 (forall!11013 (t!359122 oldBucket!40) lambda!199023))))

(assert (= (and d!1476130 (not res!1956954)) b!4654646))

(assert (= (and b!4654646 res!1956955) b!4654647))

(declare-fun b_lambda!173783 () Bool)

(assert (=> (not b_lambda!173783) (not b!4654646)))

(declare-fun m!5533351 () Bool)

(assert (=> b!4654646 m!5533351))

(declare-fun m!5533353 () Bool)

(assert (=> b!4654647 m!5533353))

(assert (=> d!1476040 d!1476130))

(assert (=> d!1476040 d!1476076))

(declare-fun bs!1064194 () Bool)

(declare-fun b!4654670 () Bool)

(assert (= bs!1064194 (and b!4654670 b!4654640)))

(declare-fun lambda!199079 () Int)

(assert (=> bs!1064194 (= (= (t!359122 (toList!5202 lt!1817580)) (toList!5202 lt!1817580)) (= lambda!199079 lambda!199069))))

(assert (=> b!4654670 true))

(declare-fun bs!1064195 () Bool)

(declare-fun b!4654669 () Bool)

(assert (= bs!1064195 (and b!4654669 b!4654640)))

(declare-fun lambda!199080 () Int)

(assert (=> bs!1064195 (= (= (Cons!51882 (h!58022 (toList!5202 lt!1817580)) (t!359122 (toList!5202 lt!1817580))) (toList!5202 lt!1817580)) (= lambda!199080 lambda!199069))))

(declare-fun bs!1064196 () Bool)

(assert (= bs!1064196 (and b!4654669 b!4654670)))

(assert (=> bs!1064196 (= (= (Cons!51882 (h!58022 (toList!5202 lt!1817580)) (t!359122 (toList!5202 lt!1817580))) (t!359122 (toList!5202 lt!1817580))) (= lambda!199080 lambda!199079))))

(assert (=> b!4654669 true))

(declare-fun bs!1064197 () Bool)

(declare-fun b!4654672 () Bool)

(assert (= bs!1064197 (and b!4654672 b!4654640)))

(declare-fun lambda!199081 () Int)

(assert (=> bs!1064197 (= lambda!199081 lambda!199069)))

(declare-fun bs!1064198 () Bool)

(assert (= bs!1064198 (and b!4654672 b!4654670)))

(assert (=> bs!1064198 (= (= (toList!5202 lt!1817580) (t!359122 (toList!5202 lt!1817580))) (= lambda!199081 lambda!199079))))

(declare-fun bs!1064199 () Bool)

(assert (= bs!1064199 (and b!4654672 b!4654669)))

(assert (=> bs!1064199 (= (= (toList!5202 lt!1817580) (Cons!51882 (h!58022 (toList!5202 lt!1817580)) (t!359122 (toList!5202 lt!1817580)))) (= lambda!199081 lambda!199080))))

(assert (=> b!4654672 true))

(declare-fun bs!1064200 () Bool)

(declare-fun b!4654668 () Bool)

(assert (= bs!1064200 (and b!4654668 b!4654641)))

(declare-fun lambda!199082 () Int)

(assert (=> bs!1064200 (= lambda!199082 lambda!199070)))

(declare-fun d!1476132 () Bool)

(declare-fun e!2904110 () Bool)

(assert (=> d!1476132 e!2904110))

(declare-fun res!1956963 () Bool)

(assert (=> d!1476132 (=> (not res!1956963) (not e!2904110))))

(declare-fun lt!1817814 () List!52010)

(assert (=> d!1476132 (= res!1956963 (noDuplicate!835 lt!1817814))))

(declare-fun e!2904113 () List!52010)

(assert (=> d!1476132 (= lt!1817814 e!2904113)))

(declare-fun c!796705 () Bool)

(assert (=> d!1476132 (= c!796705 (is-Cons!51882 (toList!5202 lt!1817580)))))

(assert (=> d!1476132 (invariantList!1293 (toList!5202 lt!1817580))))

(assert (=> d!1476132 (= (getKeysList!744 (toList!5202 lt!1817580)) lt!1817814)))

(declare-fun b!4654666 () Bool)

(assert (=> b!4654666 (= e!2904113 Nil!51886)))

(declare-fun b!4654667 () Bool)

(assert (=> b!4654667 false))

(declare-fun e!2904112 () Unit!118398)

(declare-fun Unit!118428 () Unit!118398)

(assert (=> b!4654667 (= e!2904112 Unit!118428)))

(assert (=> b!4654668 (= e!2904110 (= (content!8992 lt!1817814) (content!8992 (map!11466 (toList!5202 lt!1817580) lambda!199082))))))

(assert (=> b!4654669 (= e!2904113 (Cons!51886 (_1!29787 (h!58022 (toList!5202 lt!1817580))) (getKeysList!744 (t!359122 (toList!5202 lt!1817580)))))))

(declare-fun c!796707 () Bool)

(assert (=> b!4654669 (= c!796707 (containsKey!2716 (t!359122 (toList!5202 lt!1817580)) (_1!29787 (h!58022 (toList!5202 lt!1817580)))))))

(declare-fun lt!1817811 () Unit!118398)

(assert (=> b!4654669 (= lt!1817811 e!2904112)))

(declare-fun c!796706 () Bool)

(assert (=> b!4654669 (= c!796706 (contains!15028 (getKeysList!744 (t!359122 (toList!5202 lt!1817580))) (_1!29787 (h!58022 (toList!5202 lt!1817580)))))))

(declare-fun lt!1817815 () Unit!118398)

(declare-fun e!2904111 () Unit!118398)

(assert (=> b!4654669 (= lt!1817815 e!2904111)))

(declare-fun lt!1817809 () List!52010)

(assert (=> b!4654669 (= lt!1817809 (getKeysList!744 (t!359122 (toList!5202 lt!1817580))))))

(declare-fun lt!1817813 () Unit!118398)

(declare-fun lemmaForallContainsAddHeadPreserves!255 (List!52006 List!52010 tuple2!52986) Unit!118398)

(assert (=> b!4654669 (= lt!1817813 (lemmaForallContainsAddHeadPreserves!255 (t!359122 (toList!5202 lt!1817580)) lt!1817809 (h!58022 (toList!5202 lt!1817580))))))

(assert (=> b!4654669 (forall!11017 lt!1817809 lambda!199080)))

(declare-fun lt!1817812 () Unit!118398)

(assert (=> b!4654669 (= lt!1817812 lt!1817813)))

(assert (=> b!4654670 false))

(declare-fun lt!1817810 () Unit!118398)

(declare-fun forallContained!3221 (List!52010 Int K!13238) Unit!118398)

(assert (=> b!4654670 (= lt!1817810 (forallContained!3221 (getKeysList!744 (t!359122 (toList!5202 lt!1817580))) lambda!199079 (_1!29787 (h!58022 (toList!5202 lt!1817580)))))))

(declare-fun Unit!118429 () Unit!118398)

(assert (=> b!4654670 (= e!2904111 Unit!118429)))

(declare-fun b!4654671 () Bool)

(declare-fun Unit!118430 () Unit!118398)

(assert (=> b!4654671 (= e!2904111 Unit!118430)))

(declare-fun res!1956962 () Bool)

(assert (=> b!4654672 (=> (not res!1956962) (not e!2904110))))

(assert (=> b!4654672 (= res!1956962 (forall!11017 lt!1817814 lambda!199081))))

(declare-fun b!4654673 () Bool)

(declare-fun res!1956964 () Bool)

(assert (=> b!4654673 (=> (not res!1956964) (not e!2904110))))

(assert (=> b!4654673 (= res!1956964 (= (length!526 lt!1817814) (length!527 (toList!5202 lt!1817580))))))

(declare-fun b!4654674 () Bool)

(declare-fun Unit!118431 () Unit!118398)

(assert (=> b!4654674 (= e!2904112 Unit!118431)))

(assert (= (and d!1476132 c!796705) b!4654669))

(assert (= (and d!1476132 (not c!796705)) b!4654666))

(assert (= (and b!4654669 c!796707) b!4654667))

(assert (= (and b!4654669 (not c!796707)) b!4654674))

(assert (= (and b!4654669 c!796706) b!4654670))

(assert (= (and b!4654669 (not c!796706)) b!4654671))

(assert (= (and d!1476132 res!1956963) b!4654673))

(assert (= (and b!4654673 res!1956964) b!4654672))

(assert (= (and b!4654672 res!1956962) b!4654668))

(declare-fun m!5533355 () Bool)

(assert (=> b!4654670 m!5533355))

(assert (=> b!4654670 m!5533355))

(declare-fun m!5533357 () Bool)

(assert (=> b!4654670 m!5533357))

(declare-fun m!5533359 () Bool)

(assert (=> b!4654668 m!5533359))

(declare-fun m!5533361 () Bool)

(assert (=> b!4654668 m!5533361))

(assert (=> b!4654668 m!5533361))

(declare-fun m!5533363 () Bool)

(assert (=> b!4654668 m!5533363))

(declare-fun m!5533365 () Bool)

(assert (=> b!4654669 m!5533365))

(assert (=> b!4654669 m!5533355))

(assert (=> b!4654669 m!5533355))

(declare-fun m!5533367 () Bool)

(assert (=> b!4654669 m!5533367))

(declare-fun m!5533369 () Bool)

(assert (=> b!4654669 m!5533369))

(declare-fun m!5533371 () Bool)

(assert (=> b!4654669 m!5533371))

(declare-fun m!5533373 () Bool)

(assert (=> d!1476132 m!5533373))

(assert (=> d!1476132 m!5533315))

(declare-fun m!5533375 () Bool)

(assert (=> b!4654672 m!5533375))

(declare-fun m!5533377 () Bool)

(assert (=> b!4654673 m!5533377))

(assert (=> b!4654673 m!5533339))

(assert (=> b!4654524 d!1476132))

(declare-fun d!1476134 () Bool)

(declare-fun res!1956965 () Bool)

(declare-fun e!2904114 () Bool)

(assert (=> d!1476134 (=> res!1956965 e!2904114)))

(assert (=> d!1476134 (= res!1956965 (is-Nil!51882 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676))))))

(assert (=> d!1476134 (= (forall!11013 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676)) (ite c!796667 lambda!199020 lambda!199022)) e!2904114)))

(declare-fun b!4654677 () Bool)

(declare-fun e!2904115 () Bool)

(assert (=> b!4654677 (= e!2904114 e!2904115)))

(declare-fun res!1956966 () Bool)

(assert (=> b!4654677 (=> (not res!1956966) (not e!2904115))))

(assert (=> b!4654677 (= res!1956966 (dynLambda!21582 (ite c!796667 lambda!199020 lambda!199022) (h!58022 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676)))))))

(declare-fun b!4654678 () Bool)

(assert (=> b!4654678 (= e!2904115 (forall!11013 (t!359122 (ite c!796667 (toList!5202 lt!1817579) (toList!5202 lt!1817676))) (ite c!796667 lambda!199020 lambda!199022)))))

(assert (= (and d!1476134 (not res!1956965)) b!4654677))

(assert (= (and b!4654677 res!1956966) b!4654678))

(declare-fun b_lambda!173785 () Bool)

(assert (=> (not b_lambda!173785) (not b!4654677)))

(declare-fun m!5533379 () Bool)

(assert (=> b!4654677 m!5533379))

(declare-fun m!5533381 () Bool)

(assert (=> b!4654678 m!5533381))

(assert (=> bm!325256 d!1476134))

(declare-fun bs!1064201 () Bool)

(declare-fun b!4654682 () Bool)

(assert (= bs!1064201 (and b!4654682 d!1476070)))

(declare-fun lambda!199083 () Int)

(assert (=> bs!1064201 (not (= lambda!199083 lambda!199030))))

(declare-fun bs!1064202 () Bool)

(assert (= bs!1064202 (and b!4654682 d!1476078)))

(assert (=> bs!1064202 (not (= lambda!199083 lambda!199031))))

(declare-fun bs!1064203 () Bool)

(assert (= bs!1064203 (and b!4654682 b!4654484)))

(assert (=> bs!1064203 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817668) (= lambda!199083 lambda!199022))))

(assert (=> bs!1064203 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817579) (= lambda!199083 lambda!199021))))

(declare-fun bs!1064204 () Bool)

(assert (= bs!1064204 (and b!4654682 d!1476040)))

(assert (=> bs!1064204 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817675) (= lambda!199083 lambda!199023))))

(declare-fun bs!1064205 () Bool)

(assert (= bs!1064205 (and b!4654682 b!4654483)))

(assert (=> bs!1064205 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817579) (= lambda!199083 lambda!199020))))

(assert (=> b!4654682 true))

(declare-fun bs!1064206 () Bool)

(declare-fun b!4654683 () Bool)

(assert (= bs!1064206 (and b!4654683 b!4654682)))

(declare-fun lambda!199084 () Int)

(assert (=> bs!1064206 (= lambda!199084 lambda!199083)))

(declare-fun bs!1064207 () Bool)

(assert (= bs!1064207 (and b!4654683 d!1476070)))

(assert (=> bs!1064207 (not (= lambda!199084 lambda!199030))))

(declare-fun bs!1064208 () Bool)

(assert (= bs!1064208 (and b!4654683 d!1476078)))

(assert (=> bs!1064208 (not (= lambda!199084 lambda!199031))))

(declare-fun bs!1064209 () Bool)

(assert (= bs!1064209 (and b!4654683 b!4654484)))

(assert (=> bs!1064209 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817668) (= lambda!199084 lambda!199022))))

(assert (=> bs!1064209 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817579) (= lambda!199084 lambda!199021))))

(declare-fun bs!1064210 () Bool)

(assert (= bs!1064210 (and b!4654683 d!1476040)))

(assert (=> bs!1064210 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817675) (= lambda!199084 lambda!199023))))

(declare-fun bs!1064211 () Bool)

(assert (= bs!1064211 (and b!4654683 b!4654483)))

(assert (=> bs!1064211 (= (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817579) (= lambda!199084 lambda!199020))))

(assert (=> b!4654683 true))

(declare-fun lambda!199085 () Int)

(declare-fun lt!1817822 () ListMap!4539)

(assert (=> bs!1064206 (= (= lt!1817822 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199085 lambda!199083))))

(assert (=> bs!1064207 (not (= lambda!199085 lambda!199030))))

(assert (=> b!4654683 (= (= lt!1817822 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199085 lambda!199084))))

(assert (=> bs!1064208 (not (= lambda!199085 lambda!199031))))

(assert (=> bs!1064209 (= (= lt!1817822 lt!1817668) (= lambda!199085 lambda!199022))))

(assert (=> bs!1064209 (= (= lt!1817822 lt!1817579) (= lambda!199085 lambda!199021))))

(assert (=> bs!1064210 (= (= lt!1817822 lt!1817675) (= lambda!199085 lambda!199023))))

(assert (=> bs!1064211 (= (= lt!1817822 lt!1817579) (= lambda!199085 lambda!199020))))

(assert (=> b!4654683 true))

(declare-fun bs!1064212 () Bool)

(declare-fun d!1476136 () Bool)

(assert (= bs!1064212 (and d!1476136 b!4654682)))

(declare-fun lt!1817829 () ListMap!4539)

(declare-fun lambda!199086 () Int)

(assert (=> bs!1064212 (= (= lt!1817829 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199086 lambda!199083))))

(declare-fun bs!1064213 () Bool)

(assert (= bs!1064213 (and d!1476136 d!1476070)))

(assert (=> bs!1064213 (not (= lambda!199086 lambda!199030))))

(declare-fun bs!1064214 () Bool)

(assert (= bs!1064214 (and d!1476136 b!4654683)))

(assert (=> bs!1064214 (= (= lt!1817829 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199086 lambda!199084))))

(declare-fun bs!1064215 () Bool)

(assert (= bs!1064215 (and d!1476136 d!1476078)))

(assert (=> bs!1064215 (not (= lambda!199086 lambda!199031))))

(declare-fun bs!1064216 () Bool)

(assert (= bs!1064216 (and d!1476136 b!4654484)))

(assert (=> bs!1064216 (= (= lt!1817829 lt!1817668) (= lambda!199086 lambda!199022))))

(assert (=> bs!1064216 (= (= lt!1817829 lt!1817579) (= lambda!199086 lambda!199021))))

(declare-fun bs!1064217 () Bool)

(assert (= bs!1064217 (and d!1476136 d!1476040)))

(assert (=> bs!1064217 (= (= lt!1817829 lt!1817675) (= lambda!199086 lambda!199023))))

(declare-fun bs!1064218 () Bool)

(assert (= bs!1064218 (and d!1476136 b!4654483)))

(assert (=> bs!1064218 (= (= lt!1817829 lt!1817579) (= lambda!199086 lambda!199020))))

(assert (=> bs!1064214 (= (= lt!1817829 lt!1817822) (= lambda!199086 lambda!199085))))

(assert (=> d!1476136 true))

(declare-fun b!4654679 () Bool)

(declare-fun e!2904118 () Bool)

(assert (=> b!4654679 (= e!2904118 (forall!11013 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) lambda!199085))))

(declare-fun bm!325269 () Bool)

(declare-fun call!325276 () Unit!118398)

(assert (=> bm!325269 (= call!325276 (lemmaContainsAllItsOwnKeys!593 (+!1979 lt!1817579 (h!58022 oldBucket!40))))))

(declare-fun b!4654680 () Bool)

(declare-fun e!2904116 () Bool)

(assert (=> b!4654680 (= e!2904116 (invariantList!1293 (toList!5202 lt!1817829)))))

(declare-fun b!4654681 () Bool)

(declare-fun res!1956967 () Bool)

(assert (=> b!4654681 (=> (not res!1956967) (not e!2904116))))

(assert (=> b!4654681 (= res!1956967 (forall!11013 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) lambda!199086))))

(declare-fun e!2904117 () ListMap!4539)

(assert (=> b!4654682 (= e!2904117 (+!1979 lt!1817579 (h!58022 oldBucket!40)))))

(declare-fun lt!1817827 () Unit!118398)

(assert (=> b!4654682 (= lt!1817827 call!325276)))

(declare-fun call!325274 () Bool)

(assert (=> b!4654682 call!325274))

(declare-fun lt!1817820 () Unit!118398)

(assert (=> b!4654682 (= lt!1817820 lt!1817827)))

(declare-fun call!325275 () Bool)

(assert (=> b!4654682 call!325275))

(declare-fun lt!1817834 () Unit!118398)

(declare-fun Unit!118433 () Unit!118398)

(assert (=> b!4654682 (= lt!1817834 Unit!118433)))

(assert (=> d!1476136 e!2904116))

(declare-fun res!1956969 () Bool)

(assert (=> d!1476136 (=> (not res!1956969) (not e!2904116))))

(assert (=> d!1476136 (= res!1956969 (forall!11013 (t!359122 oldBucket!40) lambda!199086))))

(assert (=> d!1476136 (= lt!1817829 e!2904117)))

(declare-fun c!796708 () Bool)

(assert (=> d!1476136 (= c!796708 (is-Nil!51882 (t!359122 oldBucket!40)))))

(assert (=> d!1476136 (noDuplicateKeys!1635 (t!359122 oldBucket!40))))

(assert (=> d!1476136 (= (addToMapMapFromBucket!1092 (t!359122 oldBucket!40) (+!1979 lt!1817579 (h!58022 oldBucket!40))) lt!1817829)))

(assert (=> b!4654683 (= e!2904117 lt!1817822)))

(declare-fun lt!1817830 () ListMap!4539)

(assert (=> b!4654683 (= lt!1817830 (+!1979 (+!1979 lt!1817579 (h!58022 oldBucket!40)) (h!58022 (t!359122 oldBucket!40))))))

(assert (=> b!4654683 (= lt!1817822 (addToMapMapFromBucket!1092 (t!359122 (t!359122 oldBucket!40)) (+!1979 (+!1979 lt!1817579 (h!58022 oldBucket!40)) (h!58022 (t!359122 oldBucket!40)))))))

(declare-fun lt!1817817 () Unit!118398)

(assert (=> b!4654683 (= lt!1817817 call!325276)))

(assert (=> b!4654683 (forall!11013 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) lambda!199084)))

(declare-fun lt!1817818 () Unit!118398)

(assert (=> b!4654683 (= lt!1817818 lt!1817817)))

(assert (=> b!4654683 call!325274))

(declare-fun lt!1817836 () Unit!118398)

(declare-fun Unit!118435 () Unit!118398)

(assert (=> b!4654683 (= lt!1817836 Unit!118435)))

(assert (=> b!4654683 (forall!11013 (t!359122 (t!359122 oldBucket!40)) lambda!199085)))

(declare-fun lt!1817832 () Unit!118398)

(declare-fun Unit!118436 () Unit!118398)

(assert (=> b!4654683 (= lt!1817832 Unit!118436)))

(declare-fun lt!1817823 () Unit!118398)

(declare-fun Unit!118438 () Unit!118398)

(assert (=> b!4654683 (= lt!1817823 Unit!118438)))

(declare-fun lt!1817816 () Unit!118398)

(assert (=> b!4654683 (= lt!1817816 (forallContained!3219 (toList!5202 lt!1817830) lambda!199085 (h!58022 (t!359122 oldBucket!40))))))

(assert (=> b!4654683 (contains!15026 lt!1817830 (_1!29787 (h!58022 (t!359122 oldBucket!40))))))

(declare-fun lt!1817826 () Unit!118398)

(declare-fun Unit!118440 () Unit!118398)

(assert (=> b!4654683 (= lt!1817826 Unit!118440)))

(assert (=> b!4654683 (contains!15026 lt!1817822 (_1!29787 (h!58022 (t!359122 oldBucket!40))))))

(declare-fun lt!1817828 () Unit!118398)

(declare-fun Unit!118441 () Unit!118398)

(assert (=> b!4654683 (= lt!1817828 Unit!118441)))

(assert (=> b!4654683 (forall!11013 (t!359122 oldBucket!40) lambda!199085)))

(declare-fun lt!1817835 () Unit!118398)

(declare-fun Unit!118442 () Unit!118398)

(assert (=> b!4654683 (= lt!1817835 Unit!118442)))

(assert (=> b!4654683 call!325275))

(declare-fun lt!1817824 () Unit!118398)

(declare-fun Unit!118443 () Unit!118398)

(assert (=> b!4654683 (= lt!1817824 Unit!118443)))

(declare-fun lt!1817825 () Unit!118398)

(declare-fun Unit!118444 () Unit!118398)

(assert (=> b!4654683 (= lt!1817825 Unit!118444)))

(declare-fun lt!1817831 () Unit!118398)

(assert (=> b!4654683 (= lt!1817831 (addForallContainsKeyThenBeforeAdding!592 (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817822 (_1!29787 (h!58022 (t!359122 oldBucket!40))) (_2!29787 (h!58022 (t!359122 oldBucket!40)))))))

(assert (=> b!4654683 (forall!11013 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) lambda!199085)))

(declare-fun lt!1817821 () Unit!118398)

(assert (=> b!4654683 (= lt!1817821 lt!1817831)))

(assert (=> b!4654683 (forall!11013 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) lambda!199085)))

(declare-fun lt!1817833 () Unit!118398)

(declare-fun Unit!118445 () Unit!118398)

(assert (=> b!4654683 (= lt!1817833 Unit!118445)))

(declare-fun res!1956968 () Bool)

(assert (=> b!4654683 (= res!1956968 (forall!11013 (t!359122 oldBucket!40) lambda!199085))))

(assert (=> b!4654683 (=> (not res!1956968) (not e!2904118))))

(assert (=> b!4654683 e!2904118))

(declare-fun lt!1817819 () Unit!118398)

(declare-fun Unit!118446 () Unit!118398)

(assert (=> b!4654683 (= lt!1817819 Unit!118446)))

(declare-fun bm!325270 () Bool)

(assert (=> bm!325270 (= call!325274 (forall!11013 (ite c!796708 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (toList!5202 lt!1817830)) (ite c!796708 lambda!199083 lambda!199085)))))

(declare-fun bm!325271 () Bool)

(assert (=> bm!325271 (= call!325275 (forall!11013 (ite c!796708 (toList!5202 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (toList!5202 lt!1817830)) (ite c!796708 lambda!199083 lambda!199085)))))

(assert (= (and d!1476136 c!796708) b!4654682))

(assert (= (and d!1476136 (not c!796708)) b!4654683))

(assert (= (and b!4654683 res!1956968) b!4654679))

(assert (= (or b!4654682 b!4654683) bm!325269))

(assert (= (or b!4654682 b!4654683) bm!325270))

(assert (= (or b!4654682 b!4654683) bm!325271))

(assert (= (and d!1476136 res!1956969) b!4654681))

(assert (= (and b!4654681 res!1956967) b!4654680))

(declare-fun m!5533383 () Bool)

(assert (=> d!1476136 m!5533383))

(assert (=> d!1476136 m!5533225))

(declare-fun m!5533387 () Bool)

(assert (=> b!4654679 m!5533387))

(declare-fun m!5533389 () Bool)

(assert (=> b!4654681 m!5533389))

(declare-fun m!5533391 () Bool)

(assert (=> b!4654683 m!5533391))

(assert (=> b!4654683 m!5533387))

(assert (=> b!4654683 m!5533391))

(declare-fun m!5533393 () Bool)

(assert (=> b!4654683 m!5533393))

(assert (=> b!4654683 m!5533387))

(declare-fun m!5533395 () Bool)

(assert (=> b!4654683 m!5533395))

(declare-fun m!5533397 () Bool)

(assert (=> b!4654683 m!5533397))

(declare-fun m!5533399 () Bool)

(assert (=> b!4654683 m!5533399))

(declare-fun m!5533401 () Bool)

(assert (=> b!4654683 m!5533401))

(declare-fun m!5533403 () Bool)

(assert (=> b!4654683 m!5533403))

(declare-fun m!5533405 () Bool)

(assert (=> b!4654683 m!5533405))

(assert (=> b!4654683 m!5533159))

(declare-fun m!5533407 () Bool)

(assert (=> b!4654683 m!5533407))

(assert (=> b!4654683 m!5533159))

(assert (=> b!4654683 m!5533397))

(declare-fun m!5533409 () Bool)

(assert (=> b!4654680 m!5533409))

(declare-fun m!5533411 () Bool)

(assert (=> bm!325270 m!5533411))

(assert (=> bm!325269 m!5533159))

(declare-fun m!5533413 () Bool)

(assert (=> bm!325269 m!5533413))

(assert (=> bm!325271 m!5533411))

(assert (=> b!4654484 d!1476136))

(declare-fun bs!1064220 () Bool)

(declare-fun d!1476142 () Bool)

(assert (= bs!1064220 (and d!1476142 b!4654682)))

(declare-fun lambda!199091 () Int)

(assert (=> bs!1064220 (= (= lt!1817668 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199091 lambda!199083))))

(declare-fun bs!1064221 () Bool)

(assert (= bs!1064221 (and d!1476142 d!1476070)))

(assert (=> bs!1064221 (not (= lambda!199091 lambda!199030))))

(declare-fun bs!1064222 () Bool)

(assert (= bs!1064222 (and d!1476142 b!4654683)))

(assert (=> bs!1064222 (= (= lt!1817668 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199091 lambda!199084))))

(declare-fun bs!1064223 () Bool)

(assert (= bs!1064223 (and d!1476142 d!1476078)))

(assert (=> bs!1064223 (not (= lambda!199091 lambda!199031))))

(declare-fun bs!1064224 () Bool)

(assert (= bs!1064224 (and d!1476142 b!4654484)))

(assert (=> bs!1064224 (= lambda!199091 lambda!199022)))

(declare-fun bs!1064225 () Bool)

(assert (= bs!1064225 (and d!1476142 d!1476136)))

(assert (=> bs!1064225 (= (= lt!1817668 lt!1817829) (= lambda!199091 lambda!199086))))

(assert (=> bs!1064224 (= (= lt!1817668 lt!1817579) (= lambda!199091 lambda!199021))))

(declare-fun bs!1064226 () Bool)

(assert (= bs!1064226 (and d!1476142 d!1476040)))

(assert (=> bs!1064226 (= (= lt!1817668 lt!1817675) (= lambda!199091 lambda!199023))))

(declare-fun bs!1064227 () Bool)

(assert (= bs!1064227 (and d!1476142 b!4654483)))

(assert (=> bs!1064227 (= (= lt!1817668 lt!1817579) (= lambda!199091 lambda!199020))))

(assert (=> bs!1064222 (= (= lt!1817668 lt!1817822) (= lambda!199091 lambda!199085))))

(assert (=> d!1476142 true))

(assert (=> d!1476142 (forall!11013 (toList!5202 lt!1817579) lambda!199091)))

(declare-fun lt!1817839 () Unit!118398)

(declare-fun choose!31987 (ListMap!4539 ListMap!4539 K!13238 V!13484) Unit!118398)

(assert (=> d!1476142 (= lt!1817839 (choose!31987 lt!1817579 lt!1817668 (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))))))

(assert (=> d!1476142 (forall!11013 (toList!5202 (+!1979 lt!1817579 (tuple2!52987 (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))))) lambda!199091)))

(assert (=> d!1476142 (= (addForallContainsKeyThenBeforeAdding!592 lt!1817579 lt!1817668 (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))) lt!1817839)))

(declare-fun bs!1064228 () Bool)

(assert (= bs!1064228 d!1476142))

(declare-fun m!5533415 () Bool)

(assert (=> bs!1064228 m!5533415))

(declare-fun m!5533417 () Bool)

(assert (=> bs!1064228 m!5533417))

(declare-fun m!5533419 () Bool)

(assert (=> bs!1064228 m!5533419))

(declare-fun m!5533421 () Bool)

(assert (=> bs!1064228 m!5533421))

(assert (=> b!4654484 d!1476142))

(declare-fun d!1476144 () Bool)

(declare-fun e!2904129 () Bool)

(assert (=> d!1476144 e!2904129))

(declare-fun res!1956981 () Bool)

(assert (=> d!1476144 (=> (not res!1956981) (not e!2904129))))

(declare-fun lt!1817865 () ListMap!4539)

(assert (=> d!1476144 (= res!1956981 (contains!15026 lt!1817865 (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun lt!1817862 () List!52006)

(assert (=> d!1476144 (= lt!1817865 (ListMap!4540 lt!1817862))))

(declare-fun lt!1817864 () Unit!118398)

(declare-fun lt!1817863 () Unit!118398)

(assert (=> d!1476144 (= lt!1817864 lt!1817863)))

(assert (=> d!1476144 (= (getValueByKey!1605 lt!1817862 (_1!29787 (h!58022 oldBucket!40))) (Some!11816 (_2!29787 (h!58022 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!921 (List!52006 K!13238 V!13484) Unit!118398)

(assert (=> d!1476144 (= lt!1817863 (lemmaContainsTupThenGetReturnValue!921 lt!1817862 (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!429 (List!52006 K!13238 V!13484) List!52006)

(assert (=> d!1476144 (= lt!1817862 (insertNoDuplicatedKeys!429 (toList!5202 lt!1817579) (_1!29787 (h!58022 oldBucket!40)) (_2!29787 (h!58022 oldBucket!40))))))

(assert (=> d!1476144 (= (+!1979 lt!1817579 (h!58022 oldBucket!40)) lt!1817865)))

(declare-fun b!4654707 () Bool)

(declare-fun res!1956980 () Bool)

(assert (=> b!4654707 (=> (not res!1956980) (not e!2904129))))

(assert (=> b!4654707 (= res!1956980 (= (getValueByKey!1605 (toList!5202 lt!1817865) (_1!29787 (h!58022 oldBucket!40))) (Some!11816 (_2!29787 (h!58022 oldBucket!40)))))))

(declare-fun b!4654708 () Bool)

(declare-fun contains!15030 (List!52006 tuple2!52986) Bool)

(assert (=> b!4654708 (= e!2904129 (contains!15030 (toList!5202 lt!1817865) (h!58022 oldBucket!40)))))

(assert (= (and d!1476144 res!1956981) b!4654707))

(assert (= (and b!4654707 res!1956980) b!4654708))

(declare-fun m!5533423 () Bool)

(assert (=> d!1476144 m!5533423))

(declare-fun m!5533425 () Bool)

(assert (=> d!1476144 m!5533425))

(declare-fun m!5533427 () Bool)

(assert (=> d!1476144 m!5533427))

(declare-fun m!5533429 () Bool)

(assert (=> d!1476144 m!5533429))

(declare-fun m!5533431 () Bool)

(assert (=> b!4654707 m!5533431))

(declare-fun m!5533433 () Bool)

(assert (=> b!4654708 m!5533433))

(assert (=> b!4654484 d!1476144))

(declare-fun d!1476146 () Bool)

(declare-fun res!1956982 () Bool)

(declare-fun e!2904130 () Bool)

(assert (=> d!1476146 (=> res!1956982 e!2904130)))

(assert (=> d!1476146 (= res!1956982 (is-Nil!51882 (toList!5202 lt!1817579)))))

(assert (=> d!1476146 (= (forall!11013 (toList!5202 lt!1817579) lambda!199021) e!2904130)))

(declare-fun b!4654709 () Bool)

(declare-fun e!2904131 () Bool)

(assert (=> b!4654709 (= e!2904130 e!2904131)))

(declare-fun res!1956983 () Bool)

(assert (=> b!4654709 (=> (not res!1956983) (not e!2904131))))

(assert (=> b!4654709 (= res!1956983 (dynLambda!21582 lambda!199021 (h!58022 (toList!5202 lt!1817579))))))

(declare-fun b!4654710 () Bool)

(assert (=> b!4654710 (= e!2904131 (forall!11013 (t!359122 (toList!5202 lt!1817579)) lambda!199021))))

(assert (= (and d!1476146 (not res!1956982)) b!4654709))

(assert (= (and b!4654709 res!1956983) b!4654710))

(declare-fun b_lambda!173787 () Bool)

(assert (=> (not b_lambda!173787) (not b!4654709)))

(declare-fun m!5533435 () Bool)

(assert (=> b!4654709 m!5533435))

(declare-fun m!5533437 () Bool)

(assert (=> b!4654710 m!5533437))

(assert (=> b!4654484 d!1476146))

(declare-fun b!4654711 () Bool)

(declare-fun e!2904134 () List!52010)

(assert (=> b!4654711 (= e!2904134 (keys!18375 lt!1817668))))

(declare-fun b!4654712 () Bool)

(assert (=> b!4654712 (= e!2904134 (getKeysList!744 (toList!5202 lt!1817668)))))

(declare-fun d!1476148 () Bool)

(declare-fun e!2904135 () Bool)

(assert (=> d!1476148 e!2904135))

(declare-fun res!1956984 () Bool)

(assert (=> d!1476148 (=> res!1956984 e!2904135)))

(declare-fun e!2904136 () Bool)

(assert (=> d!1476148 (= res!1956984 e!2904136)))

(declare-fun res!1956986 () Bool)

(assert (=> d!1476148 (=> (not res!1956986) (not e!2904136))))

(declare-fun lt!1817868 () Bool)

(assert (=> d!1476148 (= res!1956986 (not lt!1817868))))

(declare-fun lt!1817866 () Bool)

(assert (=> d!1476148 (= lt!1817868 lt!1817866)))

(declare-fun lt!1817870 () Unit!118398)

(declare-fun e!2904132 () Unit!118398)

(assert (=> d!1476148 (= lt!1817870 e!2904132)))

(declare-fun c!796715 () Bool)

(assert (=> d!1476148 (= c!796715 lt!1817866)))

(assert (=> d!1476148 (= lt!1817866 (containsKey!2716 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> d!1476148 (= (contains!15026 lt!1817668 (_1!29787 (h!58022 oldBucket!40))) lt!1817868)))

(declare-fun b!4654713 () Bool)

(declare-fun e!2904133 () Bool)

(assert (=> b!4654713 (= e!2904133 (contains!15028 (keys!18375 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun b!4654714 () Bool)

(assert (=> b!4654714 (= e!2904136 (not (contains!15028 (keys!18375 lt!1817668) (_1!29787 (h!58022 oldBucket!40)))))))

(declare-fun b!4654715 () Bool)

(declare-fun e!2904137 () Unit!118398)

(assert (=> b!4654715 (= e!2904132 e!2904137)))

(declare-fun c!796716 () Bool)

(declare-fun call!325277 () Bool)

(assert (=> b!4654715 (= c!796716 call!325277)))

(declare-fun b!4654716 () Bool)

(declare-fun lt!1817873 () Unit!118398)

(assert (=> b!4654716 (= e!2904132 lt!1817873)))

(declare-fun lt!1817867 () Unit!118398)

(assert (=> b!4654716 (= lt!1817867 (lemmaContainsKeyImpliesGetValueByKeyDefined!1507 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> b!4654716 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun lt!1817871 () Unit!118398)

(assert (=> b!4654716 (= lt!1817871 lt!1817867)))

(assert (=> b!4654716 (= lt!1817873 (lemmaInListThenGetKeysListContains!739 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> b!4654716 call!325277))

(declare-fun b!4654717 () Bool)

(assert (=> b!4654717 false))

(declare-fun lt!1817872 () Unit!118398)

(declare-fun lt!1817869 () Unit!118398)

(assert (=> b!4654717 (= lt!1817872 lt!1817869)))

(assert (=> b!4654717 (containsKey!2716 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40)))))

(assert (=> b!4654717 (= lt!1817869 (lemmaInGetKeysListThenContainsKey!743 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun Unit!118448 () Unit!118398)

(assert (=> b!4654717 (= e!2904137 Unit!118448)))

(declare-fun b!4654718 () Bool)

(declare-fun Unit!118449 () Unit!118398)

(assert (=> b!4654718 (= e!2904137 Unit!118449)))

(declare-fun bm!325272 () Bool)

(assert (=> bm!325272 (= call!325277 (contains!15028 e!2904134 (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun c!796717 () Bool)

(assert (=> bm!325272 (= c!796717 c!796715)))

(declare-fun b!4654719 () Bool)

(assert (=> b!4654719 (= e!2904135 e!2904133)))

(declare-fun res!1956985 () Bool)

(assert (=> b!4654719 (=> (not res!1956985) (not e!2904133))))

(assert (=> b!4654719 (= res!1956985 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817668) (_1!29787 (h!58022 oldBucket!40)))))))

(assert (= (and d!1476148 c!796715) b!4654716))

(assert (= (and d!1476148 (not c!796715)) b!4654715))

(assert (= (and b!4654715 c!796716) b!4654717))

(assert (= (and b!4654715 (not c!796716)) b!4654718))

(assert (= (or b!4654716 b!4654715) bm!325272))

(assert (= (and bm!325272 c!796717) b!4654712))

(assert (= (and bm!325272 (not c!796717)) b!4654711))

(assert (= (and d!1476148 res!1956986) b!4654714))

(assert (= (and d!1476148 (not res!1956984)) b!4654719))

(assert (= (and b!4654719 res!1956985) b!4654713))

(declare-fun m!5533439 () Bool)

(assert (=> b!4654711 m!5533439))

(assert (=> b!4654714 m!5533439))

(assert (=> b!4654714 m!5533439))

(declare-fun m!5533441 () Bool)

(assert (=> b!4654714 m!5533441))

(declare-fun m!5533443 () Bool)

(assert (=> b!4654712 m!5533443))

(declare-fun m!5533445 () Bool)

(assert (=> b!4654719 m!5533445))

(assert (=> b!4654719 m!5533445))

(declare-fun m!5533447 () Bool)

(assert (=> b!4654719 m!5533447))

(declare-fun m!5533449 () Bool)

(assert (=> b!4654716 m!5533449))

(assert (=> b!4654716 m!5533445))

(assert (=> b!4654716 m!5533445))

(assert (=> b!4654716 m!5533447))

(declare-fun m!5533451 () Bool)

(assert (=> b!4654716 m!5533451))

(assert (=> b!4654713 m!5533439))

(assert (=> b!4654713 m!5533439))

(assert (=> b!4654713 m!5533441))

(declare-fun m!5533453 () Bool)

(assert (=> d!1476148 m!5533453))

(assert (=> b!4654717 m!5533453))

(declare-fun m!5533455 () Bool)

(assert (=> b!4654717 m!5533455))

(declare-fun m!5533457 () Bool)

(assert (=> bm!325272 m!5533457))

(assert (=> b!4654484 d!1476148))

(declare-fun d!1476150 () Bool)

(declare-fun res!1956990 () Bool)

(declare-fun e!2904142 () Bool)

(assert (=> d!1476150 (=> res!1956990 e!2904142)))

(assert (=> d!1476150 (= res!1956990 (is-Nil!51882 oldBucket!40))))

(assert (=> d!1476150 (= (forall!11013 oldBucket!40 lambda!199022) e!2904142)))

(declare-fun b!4654731 () Bool)

(declare-fun e!2904143 () Bool)

(assert (=> b!4654731 (= e!2904142 e!2904143)))

(declare-fun res!1956991 () Bool)

(assert (=> b!4654731 (=> (not res!1956991) (not e!2904143))))

(assert (=> b!4654731 (= res!1956991 (dynLambda!21582 lambda!199022 (h!58022 oldBucket!40)))))

(declare-fun b!4654732 () Bool)

(assert (=> b!4654732 (= e!2904143 (forall!11013 (t!359122 oldBucket!40) lambda!199022))))

(assert (= (and d!1476150 (not res!1956990)) b!4654731))

(assert (= (and b!4654731 res!1956991) b!4654732))

(declare-fun b_lambda!173789 () Bool)

(assert (=> (not b_lambda!173789) (not b!4654731)))

(declare-fun m!5533459 () Bool)

(assert (=> b!4654731 m!5533459))

(assert (=> b!4654732 m!5533165))

(assert (=> b!4654484 d!1476150))

(declare-fun b!4654733 () Bool)

(declare-fun e!2904146 () List!52010)

(assert (=> b!4654733 (= e!2904146 (keys!18375 lt!1817676))))

(declare-fun b!4654734 () Bool)

(assert (=> b!4654734 (= e!2904146 (getKeysList!744 (toList!5202 lt!1817676)))))

(declare-fun d!1476152 () Bool)

(declare-fun e!2904147 () Bool)

(assert (=> d!1476152 e!2904147))

(declare-fun res!1956992 () Bool)

(assert (=> d!1476152 (=> res!1956992 e!2904147)))

(declare-fun e!2904148 () Bool)

(assert (=> d!1476152 (= res!1956992 e!2904148)))

(declare-fun res!1956994 () Bool)

(assert (=> d!1476152 (=> (not res!1956994) (not e!2904148))))

(declare-fun lt!1817883 () Bool)

(assert (=> d!1476152 (= res!1956994 (not lt!1817883))))

(declare-fun lt!1817881 () Bool)

(assert (=> d!1476152 (= lt!1817883 lt!1817881)))

(declare-fun lt!1817885 () Unit!118398)

(declare-fun e!2904144 () Unit!118398)

(assert (=> d!1476152 (= lt!1817885 e!2904144)))

(declare-fun c!796721 () Bool)

(assert (=> d!1476152 (= c!796721 lt!1817881)))

(assert (=> d!1476152 (= lt!1817881 (containsKey!2716 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> d!1476152 (= (contains!15026 lt!1817676 (_1!29787 (h!58022 oldBucket!40))) lt!1817883)))

(declare-fun b!4654735 () Bool)

(declare-fun e!2904145 () Bool)

(assert (=> b!4654735 (= e!2904145 (contains!15028 (keys!18375 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun b!4654736 () Bool)

(assert (=> b!4654736 (= e!2904148 (not (contains!15028 (keys!18375 lt!1817676) (_1!29787 (h!58022 oldBucket!40)))))))

(declare-fun b!4654737 () Bool)

(declare-fun e!2904149 () Unit!118398)

(assert (=> b!4654737 (= e!2904144 e!2904149)))

(declare-fun c!796722 () Bool)

(declare-fun call!325278 () Bool)

(assert (=> b!4654737 (= c!796722 call!325278)))

(declare-fun b!4654738 () Bool)

(declare-fun lt!1817888 () Unit!118398)

(assert (=> b!4654738 (= e!2904144 lt!1817888)))

(declare-fun lt!1817882 () Unit!118398)

(assert (=> b!4654738 (= lt!1817882 (lemmaContainsKeyImpliesGetValueByKeyDefined!1507 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> b!4654738 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun lt!1817886 () Unit!118398)

(assert (=> b!4654738 (= lt!1817886 lt!1817882)))

(assert (=> b!4654738 (= lt!1817888 (lemmaInListThenGetKeysListContains!739 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> b!4654738 call!325278))

(declare-fun b!4654739 () Bool)

(assert (=> b!4654739 false))

(declare-fun lt!1817887 () Unit!118398)

(declare-fun lt!1817884 () Unit!118398)

(assert (=> b!4654739 (= lt!1817887 lt!1817884)))

(assert (=> b!4654739 (containsKey!2716 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40)))))

(assert (=> b!4654739 (= lt!1817884 (lemmaInGetKeysListThenContainsKey!743 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun Unit!118460 () Unit!118398)

(assert (=> b!4654739 (= e!2904149 Unit!118460)))

(declare-fun b!4654740 () Bool)

(declare-fun Unit!118461 () Unit!118398)

(assert (=> b!4654740 (= e!2904149 Unit!118461)))

(declare-fun bm!325273 () Bool)

(assert (=> bm!325273 (= call!325278 (contains!15028 e!2904146 (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun c!796723 () Bool)

(assert (=> bm!325273 (= c!796723 c!796721)))

(declare-fun b!4654741 () Bool)

(assert (=> b!4654741 (= e!2904147 e!2904145)))

(declare-fun res!1956993 () Bool)

(assert (=> b!4654741 (=> (not res!1956993) (not e!2904145))))

(assert (=> b!4654741 (= res!1956993 (isDefined!9082 (getValueByKey!1605 (toList!5202 lt!1817676) (_1!29787 (h!58022 oldBucket!40)))))))

(assert (= (and d!1476152 c!796721) b!4654738))

(assert (= (and d!1476152 (not c!796721)) b!4654737))

(assert (= (and b!4654737 c!796722) b!4654739))

(assert (= (and b!4654737 (not c!796722)) b!4654740))

(assert (= (or b!4654738 b!4654737) bm!325273))

(assert (= (and bm!325273 c!796723) b!4654734))

(assert (= (and bm!325273 (not c!796723)) b!4654733))

(assert (= (and d!1476152 res!1956994) b!4654736))

(assert (= (and d!1476152 (not res!1956992)) b!4654741))

(assert (= (and b!4654741 res!1956993) b!4654735))

(declare-fun m!5533467 () Bool)

(assert (=> b!4654733 m!5533467))

(assert (=> b!4654736 m!5533467))

(assert (=> b!4654736 m!5533467))

(declare-fun m!5533477 () Bool)

(assert (=> b!4654736 m!5533477))

(declare-fun m!5533479 () Bool)

(assert (=> b!4654734 m!5533479))

(declare-fun m!5533483 () Bool)

(assert (=> b!4654741 m!5533483))

(assert (=> b!4654741 m!5533483))

(declare-fun m!5533489 () Bool)

(assert (=> b!4654741 m!5533489))

(declare-fun m!5533491 () Bool)

(assert (=> b!4654738 m!5533491))

(assert (=> b!4654738 m!5533483))

(assert (=> b!4654738 m!5533483))

(assert (=> b!4654738 m!5533489))

(declare-fun m!5533497 () Bool)

(assert (=> b!4654738 m!5533497))

(assert (=> b!4654735 m!5533467))

(assert (=> b!4654735 m!5533467))

(assert (=> b!4654735 m!5533477))

(declare-fun m!5533503 () Bool)

(assert (=> d!1476152 m!5533503))

(assert (=> b!4654739 m!5533503))

(declare-fun m!5533505 () Bool)

(assert (=> b!4654739 m!5533505))

(declare-fun m!5533507 () Bool)

(assert (=> bm!325273 m!5533507))

(assert (=> b!4654484 d!1476152))

(declare-fun d!1476156 () Bool)

(declare-fun res!1956998 () Bool)

(declare-fun e!2904152 () Bool)

(assert (=> d!1476156 (=> res!1956998 e!2904152)))

(assert (=> d!1476156 (= res!1956998 (is-Nil!51882 (toList!5202 lt!1817579)))))

(assert (=> d!1476156 (= (forall!11013 (toList!5202 lt!1817579) lambda!199022) e!2904152)))

(declare-fun b!4654744 () Bool)

(declare-fun e!2904154 () Bool)

(assert (=> b!4654744 (= e!2904152 e!2904154)))

(declare-fun res!1956999 () Bool)

(assert (=> b!4654744 (=> (not res!1956999) (not e!2904154))))

(assert (=> b!4654744 (= res!1956999 (dynLambda!21582 lambda!199022 (h!58022 (toList!5202 lt!1817579))))))

(declare-fun b!4654745 () Bool)

(assert (=> b!4654745 (= e!2904154 (forall!11013 (t!359122 (toList!5202 lt!1817579)) lambda!199022))))

(assert (= (and d!1476156 (not res!1956998)) b!4654744))

(assert (= (and b!4654744 res!1956999) b!4654745))

(declare-fun b_lambda!173791 () Bool)

(assert (=> (not b_lambda!173791) (not b!4654744)))

(declare-fun m!5533509 () Bool)

(assert (=> b!4654744 m!5533509))

(declare-fun m!5533511 () Bool)

(assert (=> b!4654745 m!5533511))

(assert (=> b!4654484 d!1476156))

(declare-fun d!1476158 () Bool)

(assert (=> d!1476158 (dynLambda!21582 lambda!199022 (h!58022 oldBucket!40))))

(declare-fun lt!1817912 () Unit!118398)

(declare-fun choose!31989 (List!52006 Int tuple2!52986) Unit!118398)

(assert (=> d!1476158 (= lt!1817912 (choose!31989 (toList!5202 lt!1817676) lambda!199022 (h!58022 oldBucket!40)))))

(declare-fun e!2904157 () Bool)

(assert (=> d!1476158 e!2904157))

(declare-fun res!1957002 () Bool)

(assert (=> d!1476158 (=> (not res!1957002) (not e!2904157))))

(assert (=> d!1476158 (= res!1957002 (forall!11013 (toList!5202 lt!1817676) lambda!199022))))

(assert (=> d!1476158 (= (forallContained!3219 (toList!5202 lt!1817676) lambda!199022 (h!58022 oldBucket!40)) lt!1817912)))

(declare-fun b!4654751 () Bool)

(assert (=> b!4654751 (= e!2904157 (contains!15030 (toList!5202 lt!1817676) (h!58022 oldBucket!40)))))

(assert (= (and d!1476158 res!1957002) b!4654751))

(declare-fun b_lambda!173793 () Bool)

(assert (=> (not b_lambda!173793) (not d!1476158)))

(assert (=> d!1476158 m!5533459))

(declare-fun m!5533513 () Bool)

(assert (=> d!1476158 m!5533513))

(declare-fun m!5533515 () Bool)

(assert (=> d!1476158 m!5533515))

(declare-fun m!5533517 () Bool)

(assert (=> b!4654751 m!5533517))

(assert (=> b!4654484 d!1476158))

(declare-fun d!1476160 () Bool)

(declare-fun res!1957003 () Bool)

(declare-fun e!2904158 () Bool)

(assert (=> d!1476160 (=> res!1957003 e!2904158)))

(assert (=> d!1476160 (= res!1957003 (is-Nil!51882 (t!359122 oldBucket!40)))))

(assert (=> d!1476160 (= (forall!11013 (t!359122 oldBucket!40) lambda!199022) e!2904158)))

(declare-fun b!4654752 () Bool)

(declare-fun e!2904159 () Bool)

(assert (=> b!4654752 (= e!2904158 e!2904159)))

(declare-fun res!1957004 () Bool)

(assert (=> b!4654752 (=> (not res!1957004) (not e!2904159))))

(assert (=> b!4654752 (= res!1957004 (dynLambda!21582 lambda!199022 (h!58022 (t!359122 oldBucket!40))))))

(declare-fun b!4654753 () Bool)

(assert (=> b!4654753 (= e!2904159 (forall!11013 (t!359122 (t!359122 oldBucket!40)) lambda!199022))))

(assert (= (and d!1476160 (not res!1957003)) b!4654752))

(assert (= (and b!4654752 res!1957004) b!4654753))

(declare-fun b_lambda!173795 () Bool)

(assert (=> (not b_lambda!173795) (not b!4654752)))

(declare-fun m!5533519 () Bool)

(assert (=> b!4654752 m!5533519))

(declare-fun m!5533521 () Bool)

(assert (=> b!4654753 m!5533521))

(assert (=> b!4654484 d!1476160))

(assert (=> b!4654523 d!1476126))

(assert (=> bm!325255 d!1476134))

(declare-fun d!1476162 () Bool)

(declare-fun res!1957005 () Bool)

(declare-fun e!2904160 () Bool)

(assert (=> d!1476162 (=> res!1957005 e!2904160)))

(assert (=> d!1476162 (= res!1957005 (is-Nil!51882 (toList!5202 lt!1817579)))))

(assert (=> d!1476162 (= (forall!11013 (toList!5202 lt!1817579) lambda!199023) e!2904160)))

(declare-fun b!4654754 () Bool)

(declare-fun e!2904161 () Bool)

(assert (=> b!4654754 (= e!2904160 e!2904161)))

(declare-fun res!1957006 () Bool)

(assert (=> b!4654754 (=> (not res!1957006) (not e!2904161))))

(assert (=> b!4654754 (= res!1957006 (dynLambda!21582 lambda!199023 (h!58022 (toList!5202 lt!1817579))))))

(declare-fun b!4654755 () Bool)

(assert (=> b!4654755 (= e!2904161 (forall!11013 (t!359122 (toList!5202 lt!1817579)) lambda!199023))))

(assert (= (and d!1476162 (not res!1957005)) b!4654754))

(assert (= (and b!4654754 res!1957006) b!4654755))

(declare-fun b_lambda!173797 () Bool)

(assert (=> (not b_lambda!173797) (not b!4654754)))

(declare-fun m!5533523 () Bool)

(assert (=> b!4654754 m!5533523))

(declare-fun m!5533525 () Bool)

(assert (=> b!4654755 m!5533525))

(assert (=> b!4654482 d!1476162))

(assert (=> d!1476066 d!1476112))

(declare-fun bs!1064250 () Bool)

(declare-fun d!1476164 () Bool)

(assert (= bs!1064250 (and d!1476164 b!4654682)))

(declare-fun lambda!199110 () Int)

(assert (=> bs!1064250 (= (= lt!1817579 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199110 lambda!199083))))

(declare-fun bs!1064251 () Bool)

(assert (= bs!1064251 (and d!1476164 d!1476070)))

(assert (=> bs!1064251 (not (= lambda!199110 lambda!199030))))

(declare-fun bs!1064252 () Bool)

(assert (= bs!1064252 (and d!1476164 b!4654683)))

(assert (=> bs!1064252 (= (= lt!1817579 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199110 lambda!199084))))

(declare-fun bs!1064253 () Bool)

(assert (= bs!1064253 (and d!1476164 d!1476078)))

(assert (=> bs!1064253 (not (= lambda!199110 lambda!199031))))

(declare-fun bs!1064254 () Bool)

(assert (= bs!1064254 (and d!1476164 d!1476142)))

(assert (=> bs!1064254 (= (= lt!1817579 lt!1817668) (= lambda!199110 lambda!199091))))

(declare-fun bs!1064255 () Bool)

(assert (= bs!1064255 (and d!1476164 b!4654484)))

(assert (=> bs!1064255 (= (= lt!1817579 lt!1817668) (= lambda!199110 lambda!199022))))

(declare-fun bs!1064256 () Bool)

(assert (= bs!1064256 (and d!1476164 d!1476136)))

(assert (=> bs!1064256 (= (= lt!1817579 lt!1817829) (= lambda!199110 lambda!199086))))

(assert (=> bs!1064255 (= lambda!199110 lambda!199021)))

(declare-fun bs!1064257 () Bool)

(assert (= bs!1064257 (and d!1476164 d!1476040)))

(assert (=> bs!1064257 (= (= lt!1817579 lt!1817675) (= lambda!199110 lambda!199023))))

(declare-fun bs!1064258 () Bool)

(assert (= bs!1064258 (and d!1476164 b!4654483)))

(assert (=> bs!1064258 (= lambda!199110 lambda!199020)))

(assert (=> bs!1064252 (= (= lt!1817579 lt!1817822) (= lambda!199110 lambda!199085))))

(assert (=> d!1476164 true))

(assert (=> d!1476164 (forall!11013 (toList!5202 lt!1817579) lambda!199110)))

(declare-fun lt!1817915 () Unit!118398)

(declare-fun choose!31991 (ListMap!4539) Unit!118398)

(assert (=> d!1476164 (= lt!1817915 (choose!31991 lt!1817579))))

(assert (=> d!1476164 (= (lemmaContainsAllItsOwnKeys!593 lt!1817579) lt!1817915)))

(declare-fun bs!1064259 () Bool)

(assert (= bs!1064259 d!1476164))

(declare-fun m!5533559 () Bool)

(assert (=> bs!1064259 m!5533559))

(declare-fun m!5533561 () Bool)

(assert (=> bs!1064259 m!5533561))

(assert (=> bm!325254 d!1476164))

(declare-fun d!1476168 () Bool)

(declare-fun res!1957011 () Bool)

(declare-fun e!2904166 () Bool)

(assert (=> d!1476168 (=> res!1957011 e!2904166)))

(assert (=> d!1476168 (= res!1957011 (or (is-Nil!51883 (toList!5201 (ListLongMap!3758 lt!1817578))) (is-Nil!51883 (t!359123 (toList!5201 (ListLongMap!3758 lt!1817578))))))))

(assert (=> d!1476168 (= (isStrictlySorted!573 (toList!5201 (ListLongMap!3758 lt!1817578))) e!2904166)))

(declare-fun b!4654760 () Bool)

(declare-fun e!2904167 () Bool)

(assert (=> b!4654760 (= e!2904166 e!2904167)))

(declare-fun res!1957012 () Bool)

(assert (=> b!4654760 (=> (not res!1957012) (not e!2904167))))

(assert (=> b!4654760 (= res!1957012 (bvslt (_1!29788 (h!58023 (toList!5201 (ListLongMap!3758 lt!1817578)))) (_1!29788 (h!58023 (t!359123 (toList!5201 (ListLongMap!3758 lt!1817578)))))))))

(declare-fun b!4654761 () Bool)

(assert (=> b!4654761 (= e!2904167 (isStrictlySorted!573 (t!359123 (toList!5201 (ListLongMap!3758 lt!1817578)))))))

(assert (= (and d!1476168 (not res!1957011)) b!4654760))

(assert (= (and b!4654760 res!1957012) b!4654761))

(declare-fun m!5533563 () Bool)

(assert (=> b!4654761 m!5533563))

(assert (=> d!1476072 d!1476168))

(declare-fun d!1476170 () Bool)

(assert (=> d!1476170 (= (invariantList!1293 (toList!5202 lt!1817675)) (noDuplicatedKeys!349 (toList!5202 lt!1817675)))))

(declare-fun bs!1064260 () Bool)

(assert (= bs!1064260 d!1476170))

(declare-fun m!5533565 () Bool)

(assert (=> bs!1064260 m!5533565))

(assert (=> b!4654481 d!1476170))

(assert (=> b!4654480 d!1476156))

(declare-fun d!1476172 () Bool)

(declare-fun res!1957013 () Bool)

(declare-fun e!2904168 () Bool)

(assert (=> d!1476172 (=> res!1957013 e!2904168)))

(assert (=> d!1476172 (= res!1957013 (is-Nil!51882 oldBucket!40))))

(assert (=> d!1476172 (= (forall!11013 oldBucket!40 lambda!199031) e!2904168)))

(declare-fun b!4654762 () Bool)

(declare-fun e!2904169 () Bool)

(assert (=> b!4654762 (= e!2904168 e!2904169)))

(declare-fun res!1957014 () Bool)

(assert (=> b!4654762 (=> (not res!1957014) (not e!2904169))))

(assert (=> b!4654762 (= res!1957014 (dynLambda!21582 lambda!199031 (h!58022 oldBucket!40)))))

(declare-fun b!4654763 () Bool)

(assert (=> b!4654763 (= e!2904169 (forall!11013 (t!359122 oldBucket!40) lambda!199031))))

(assert (= (and d!1476172 (not res!1957013)) b!4654762))

(assert (= (and b!4654762 res!1957014) b!4654763))

(declare-fun b_lambda!173799 () Bool)

(assert (=> (not b_lambda!173799) (not b!4654762)))

(declare-fun m!5533567 () Bool)

(assert (=> b!4654762 m!5533567))

(declare-fun m!5533569 () Bool)

(assert (=> b!4654763 m!5533569))

(assert (=> d!1476078 d!1476172))

(declare-fun bs!1064261 () Bool)

(declare-fun b!4654767 () Bool)

(assert (= bs!1064261 (and b!4654767 b!4654682)))

(declare-fun lambda!199111 () Int)

(assert (=> bs!1064261 (= (= (extractMap!1691 (t!359123 lt!1817578)) (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199111 lambda!199083))))

(declare-fun bs!1064262 () Bool)

(assert (= bs!1064262 (and b!4654767 d!1476070)))

(assert (=> bs!1064262 (not (= lambda!199111 lambda!199030))))

(declare-fun bs!1064263 () Bool)

(assert (= bs!1064263 (and b!4654767 b!4654683)))

(assert (=> bs!1064263 (= (= (extractMap!1691 (t!359123 lt!1817578)) (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199111 lambda!199084))))

(declare-fun bs!1064264 () Bool)

(assert (= bs!1064264 (and b!4654767 d!1476078)))

(assert (=> bs!1064264 (not (= lambda!199111 lambda!199031))))

(declare-fun bs!1064265 () Bool)

(assert (= bs!1064265 (and b!4654767 d!1476142)))

(assert (=> bs!1064265 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817668) (= lambda!199111 lambda!199091))))

(declare-fun bs!1064266 () Bool)

(assert (= bs!1064266 (and b!4654767 d!1476164)))

(assert (=> bs!1064266 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199111 lambda!199110))))

(declare-fun bs!1064267 () Bool)

(assert (= bs!1064267 (and b!4654767 b!4654484)))

(assert (=> bs!1064267 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817668) (= lambda!199111 lambda!199022))))

(declare-fun bs!1064268 () Bool)

(assert (= bs!1064268 (and b!4654767 d!1476136)))

(assert (=> bs!1064268 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817829) (= lambda!199111 lambda!199086))))

(assert (=> bs!1064267 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199111 lambda!199021))))

(declare-fun bs!1064269 () Bool)

(assert (= bs!1064269 (and b!4654767 d!1476040)))

(assert (=> bs!1064269 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817675) (= lambda!199111 lambda!199023))))

(declare-fun bs!1064270 () Bool)

(assert (= bs!1064270 (and b!4654767 b!4654483)))

(assert (=> bs!1064270 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199111 lambda!199020))))

(assert (=> bs!1064263 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817822) (= lambda!199111 lambda!199085))))

(assert (=> b!4654767 true))

(declare-fun bs!1064271 () Bool)

(declare-fun b!4654768 () Bool)

(assert (= bs!1064271 (and b!4654768 b!4654682)))

(declare-fun lambda!199112 () Int)

(assert (=> bs!1064271 (= (= (extractMap!1691 (t!359123 lt!1817578)) (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199112 lambda!199083))))

(declare-fun bs!1064272 () Bool)

(assert (= bs!1064272 (and b!4654768 d!1476070)))

(assert (=> bs!1064272 (not (= lambda!199112 lambda!199030))))

(declare-fun bs!1064273 () Bool)

(assert (= bs!1064273 (and b!4654768 b!4654683)))

(assert (=> bs!1064273 (= (= (extractMap!1691 (t!359123 lt!1817578)) (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199112 lambda!199084))))

(declare-fun bs!1064274 () Bool)

(assert (= bs!1064274 (and b!4654768 d!1476078)))

(assert (=> bs!1064274 (not (= lambda!199112 lambda!199031))))

(declare-fun bs!1064275 () Bool)

(assert (= bs!1064275 (and b!4654768 d!1476142)))

(assert (=> bs!1064275 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817668) (= lambda!199112 lambda!199091))))

(declare-fun bs!1064276 () Bool)

(assert (= bs!1064276 (and b!4654768 d!1476164)))

(assert (=> bs!1064276 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199112 lambda!199110))))

(declare-fun bs!1064277 () Bool)

(assert (= bs!1064277 (and b!4654768 b!4654484)))

(assert (=> bs!1064277 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817668) (= lambda!199112 lambda!199022))))

(declare-fun bs!1064278 () Bool)

(assert (= bs!1064278 (and b!4654768 d!1476136)))

(assert (=> bs!1064278 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817829) (= lambda!199112 lambda!199086))))

(declare-fun bs!1064279 () Bool)

(assert (= bs!1064279 (and b!4654768 b!4654767)))

(assert (=> bs!1064279 (= lambda!199112 lambda!199111)))

(assert (=> bs!1064277 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199112 lambda!199021))))

(declare-fun bs!1064280 () Bool)

(assert (= bs!1064280 (and b!4654768 d!1476040)))

(assert (=> bs!1064280 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817675) (= lambda!199112 lambda!199023))))

(declare-fun bs!1064281 () Bool)

(assert (= bs!1064281 (and b!4654768 b!4654483)))

(assert (=> bs!1064281 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817579) (= lambda!199112 lambda!199020))))

(assert (=> bs!1064273 (= (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817822) (= lambda!199112 lambda!199085))))

(assert (=> b!4654768 true))

(declare-fun lt!1817922 () ListMap!4539)

(declare-fun lambda!199113 () Int)

(assert (=> bs!1064271 (= (= lt!1817922 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199113 lambda!199083))))

(assert (=> bs!1064272 (not (= lambda!199113 lambda!199030))))

(assert (=> bs!1064273 (= (= lt!1817922 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199113 lambda!199084))))

(assert (=> bs!1064274 (not (= lambda!199113 lambda!199031))))

(assert (=> bs!1064275 (= (= lt!1817922 lt!1817668) (= lambda!199113 lambda!199091))))

(assert (=> bs!1064276 (= (= lt!1817922 lt!1817579) (= lambda!199113 lambda!199110))))

(assert (=> bs!1064277 (= (= lt!1817922 lt!1817668) (= lambda!199113 lambda!199022))))

(assert (=> b!4654768 (= (= lt!1817922 (extractMap!1691 (t!359123 lt!1817578))) (= lambda!199113 lambda!199112))))

(assert (=> bs!1064278 (= (= lt!1817922 lt!1817829) (= lambda!199113 lambda!199086))))

(assert (=> bs!1064279 (= (= lt!1817922 (extractMap!1691 (t!359123 lt!1817578))) (= lambda!199113 lambda!199111))))

(assert (=> bs!1064277 (= (= lt!1817922 lt!1817579) (= lambda!199113 lambda!199021))))

(assert (=> bs!1064280 (= (= lt!1817922 lt!1817675) (= lambda!199113 lambda!199023))))

(assert (=> bs!1064281 (= (= lt!1817922 lt!1817579) (= lambda!199113 lambda!199020))))

(assert (=> bs!1064273 (= (= lt!1817922 lt!1817822) (= lambda!199113 lambda!199085))))

(assert (=> b!4654768 true))

(declare-fun bs!1064282 () Bool)

(declare-fun d!1476174 () Bool)

(assert (= bs!1064282 (and d!1476174 b!4654682)))

(declare-fun lambda!199114 () Int)

(declare-fun lt!1817929 () ListMap!4539)

(assert (=> bs!1064282 (= (= lt!1817929 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199114 lambda!199083))))

(declare-fun bs!1064283 () Bool)

(assert (= bs!1064283 (and d!1476174 d!1476070)))

(assert (=> bs!1064283 (not (= lambda!199114 lambda!199030))))

(declare-fun bs!1064284 () Bool)

(assert (= bs!1064284 (and d!1476174 b!4654683)))

(assert (=> bs!1064284 (= (= lt!1817929 (+!1979 lt!1817579 (h!58022 oldBucket!40))) (= lambda!199114 lambda!199084))))

(declare-fun bs!1064285 () Bool)

(assert (= bs!1064285 (and d!1476174 b!4654768)))

(assert (=> bs!1064285 (= (= lt!1817929 lt!1817922) (= lambda!199114 lambda!199113))))

(declare-fun bs!1064286 () Bool)

(assert (= bs!1064286 (and d!1476174 d!1476078)))

(assert (=> bs!1064286 (not (= lambda!199114 lambda!199031))))

(declare-fun bs!1064287 () Bool)

(assert (= bs!1064287 (and d!1476174 d!1476142)))

(assert (=> bs!1064287 (= (= lt!1817929 lt!1817668) (= lambda!199114 lambda!199091))))

(declare-fun bs!1064288 () Bool)

(assert (= bs!1064288 (and d!1476174 d!1476164)))

(assert (=> bs!1064288 (= (= lt!1817929 lt!1817579) (= lambda!199114 lambda!199110))))

(declare-fun bs!1064289 () Bool)

(assert (= bs!1064289 (and d!1476174 b!4654484)))

(assert (=> bs!1064289 (= (= lt!1817929 lt!1817668) (= lambda!199114 lambda!199022))))

(assert (=> bs!1064285 (= (= lt!1817929 (extractMap!1691 (t!359123 lt!1817578))) (= lambda!199114 lambda!199112))))

(declare-fun bs!1064290 () Bool)

(assert (= bs!1064290 (and d!1476174 d!1476136)))

(assert (=> bs!1064290 (= (= lt!1817929 lt!1817829) (= lambda!199114 lambda!199086))))

(declare-fun bs!1064291 () Bool)

(assert (= bs!1064291 (and d!1476174 b!4654767)))

(assert (=> bs!1064291 (= (= lt!1817929 (extractMap!1691 (t!359123 lt!1817578))) (= lambda!199114 lambda!199111))))

(assert (=> bs!1064289 (= (= lt!1817929 lt!1817579) (= lambda!199114 lambda!199021))))

(declare-fun bs!1064292 () Bool)

(assert (= bs!1064292 (and d!1476174 d!1476040)))

(assert (=> bs!1064292 (= (= lt!1817929 lt!1817675) (= lambda!199114 lambda!199023))))

(declare-fun bs!1064293 () Bool)

(assert (= bs!1064293 (and d!1476174 b!4654483)))

(assert (=> bs!1064293 (= (= lt!1817929 lt!1817579) (= lambda!199114 lambda!199020))))

(assert (=> bs!1064284 (= (= lt!1817929 lt!1817822) (= lambda!199114 lambda!199085))))

(assert (=> d!1476174 true))

(declare-fun b!4654764 () Bool)

(declare-fun e!2904172 () Bool)

(assert (=> b!4654764 (= e!2904172 (forall!11013 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) lambda!199113))))

(declare-fun bm!325277 () Bool)

(declare-fun call!325284 () Unit!118398)

(assert (=> bm!325277 (= call!325284 (lemmaContainsAllItsOwnKeys!593 (extractMap!1691 (t!359123 lt!1817578))))))

(declare-fun b!4654765 () Bool)

(declare-fun e!2904170 () Bool)

(assert (=> b!4654765 (= e!2904170 (invariantList!1293 (toList!5202 lt!1817929)))))

(declare-fun b!4654766 () Bool)

(declare-fun res!1957015 () Bool)

(assert (=> b!4654766 (=> (not res!1957015) (not e!2904170))))

(assert (=> b!4654766 (= res!1957015 (forall!11013 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) lambda!199114))))

(declare-fun e!2904171 () ListMap!4539)

(assert (=> b!4654767 (= e!2904171 (extractMap!1691 (t!359123 lt!1817578)))))

(declare-fun lt!1817927 () Unit!118398)

(assert (=> b!4654767 (= lt!1817927 call!325284)))

(declare-fun call!325282 () Bool)

(assert (=> b!4654767 call!325282))

(declare-fun lt!1817920 () Unit!118398)

(assert (=> b!4654767 (= lt!1817920 lt!1817927)))

(declare-fun call!325283 () Bool)

(assert (=> b!4654767 call!325283))

(declare-fun lt!1817934 () Unit!118398)

(declare-fun Unit!118464 () Unit!118398)

(assert (=> b!4654767 (= lt!1817934 Unit!118464)))

(assert (=> d!1476174 e!2904170))

(declare-fun res!1957017 () Bool)

(assert (=> d!1476174 (=> (not res!1957017) (not e!2904170))))

(assert (=> d!1476174 (= res!1957017 (forall!11013 (_2!29788 (h!58023 lt!1817578)) lambda!199114))))

(assert (=> d!1476174 (= lt!1817929 e!2904171)))

(declare-fun c!796725 () Bool)

(assert (=> d!1476174 (= c!796725 (is-Nil!51882 (_2!29788 (h!58023 lt!1817578))))))

(assert (=> d!1476174 (noDuplicateKeys!1635 (_2!29788 (h!58023 lt!1817578)))))

(assert (=> d!1476174 (= (addToMapMapFromBucket!1092 (_2!29788 (h!58023 lt!1817578)) (extractMap!1691 (t!359123 lt!1817578))) lt!1817929)))

(assert (=> b!4654768 (= e!2904171 lt!1817922)))

(declare-fun lt!1817930 () ListMap!4539)

(assert (=> b!4654768 (= lt!1817930 (+!1979 (extractMap!1691 (t!359123 lt!1817578)) (h!58022 (_2!29788 (h!58023 lt!1817578)))))))

(assert (=> b!4654768 (= lt!1817922 (addToMapMapFromBucket!1092 (t!359122 (_2!29788 (h!58023 lt!1817578))) (+!1979 (extractMap!1691 (t!359123 lt!1817578)) (h!58022 (_2!29788 (h!58023 lt!1817578))))))))

(declare-fun lt!1817917 () Unit!118398)

(assert (=> b!4654768 (= lt!1817917 call!325284)))

(assert (=> b!4654768 (forall!11013 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) lambda!199112)))

(declare-fun lt!1817918 () Unit!118398)

(assert (=> b!4654768 (= lt!1817918 lt!1817917)))

(assert (=> b!4654768 call!325282))

(declare-fun lt!1817936 () Unit!118398)

(declare-fun Unit!118466 () Unit!118398)

(assert (=> b!4654768 (= lt!1817936 Unit!118466)))

(assert (=> b!4654768 (forall!11013 (t!359122 (_2!29788 (h!58023 lt!1817578))) lambda!199113)))

(declare-fun lt!1817932 () Unit!118398)

(declare-fun Unit!118467 () Unit!118398)

(assert (=> b!4654768 (= lt!1817932 Unit!118467)))

(declare-fun lt!1817923 () Unit!118398)

(declare-fun Unit!118468 () Unit!118398)

(assert (=> b!4654768 (= lt!1817923 Unit!118468)))

(declare-fun lt!1817916 () Unit!118398)

(assert (=> b!4654768 (= lt!1817916 (forallContained!3219 (toList!5202 lt!1817930) lambda!199113 (h!58022 (_2!29788 (h!58023 lt!1817578)))))))

(assert (=> b!4654768 (contains!15026 lt!1817930 (_1!29787 (h!58022 (_2!29788 (h!58023 lt!1817578)))))))

(declare-fun lt!1817926 () Unit!118398)

(declare-fun Unit!118469 () Unit!118398)

(assert (=> b!4654768 (= lt!1817926 Unit!118469)))

(assert (=> b!4654768 (contains!15026 lt!1817922 (_1!29787 (h!58022 (_2!29788 (h!58023 lt!1817578)))))))

(declare-fun lt!1817928 () Unit!118398)

(declare-fun Unit!118471 () Unit!118398)

(assert (=> b!4654768 (= lt!1817928 Unit!118471)))

(assert (=> b!4654768 (forall!11013 (_2!29788 (h!58023 lt!1817578)) lambda!199113)))

(declare-fun lt!1817935 () Unit!118398)

(declare-fun Unit!118472 () Unit!118398)

(assert (=> b!4654768 (= lt!1817935 Unit!118472)))

(assert (=> b!4654768 call!325283))

(declare-fun lt!1817924 () Unit!118398)

(declare-fun Unit!118473 () Unit!118398)

(assert (=> b!4654768 (= lt!1817924 Unit!118473)))

(declare-fun lt!1817925 () Unit!118398)

(declare-fun Unit!118474 () Unit!118398)

(assert (=> b!4654768 (= lt!1817925 Unit!118474)))

(declare-fun lt!1817931 () Unit!118398)

(assert (=> b!4654768 (= lt!1817931 (addForallContainsKeyThenBeforeAdding!592 (extractMap!1691 (t!359123 lt!1817578)) lt!1817922 (_1!29787 (h!58022 (_2!29788 (h!58023 lt!1817578)))) (_2!29787 (h!58022 (_2!29788 (h!58023 lt!1817578))))))))

(assert (=> b!4654768 (forall!11013 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) lambda!199113)))

(declare-fun lt!1817921 () Unit!118398)

(assert (=> b!4654768 (= lt!1817921 lt!1817931)))

(assert (=> b!4654768 (forall!11013 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) lambda!199113)))

(declare-fun lt!1817933 () Unit!118398)

(declare-fun Unit!118475 () Unit!118398)

(assert (=> b!4654768 (= lt!1817933 Unit!118475)))

(declare-fun res!1957016 () Bool)

(assert (=> b!4654768 (= res!1957016 (forall!11013 (_2!29788 (h!58023 lt!1817578)) lambda!199113))))

(assert (=> b!4654768 (=> (not res!1957016) (not e!2904172))))

(assert (=> b!4654768 e!2904172))

(declare-fun lt!1817919 () Unit!118398)

(declare-fun Unit!118476 () Unit!118398)

(assert (=> b!4654768 (= lt!1817919 Unit!118476)))

(declare-fun bm!325278 () Bool)

(assert (=> bm!325278 (= call!325282 (forall!11013 (ite c!796725 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) (toList!5202 lt!1817930)) (ite c!796725 lambda!199111 lambda!199113)))))

(declare-fun bm!325279 () Bool)

(assert (=> bm!325279 (= call!325283 (forall!11013 (ite c!796725 (toList!5202 (extractMap!1691 (t!359123 lt!1817578))) (toList!5202 lt!1817930)) (ite c!796725 lambda!199111 lambda!199113)))))

(assert (= (and d!1476174 c!796725) b!4654767))

(assert (= (and d!1476174 (not c!796725)) b!4654768))

(assert (= (and b!4654768 res!1957016) b!4654764))

(assert (= (or b!4654767 b!4654768) bm!325277))

(assert (= (or b!4654767 b!4654768) bm!325278))

(assert (= (or b!4654767 b!4654768) bm!325279))

(assert (= (and d!1476174 res!1957017) b!4654766))

(assert (= (and b!4654766 res!1957015) b!4654765))

(declare-fun m!5533589 () Bool)

(assert (=> d!1476174 m!5533589))

(declare-fun m!5533591 () Bool)

(assert (=> d!1476174 m!5533591))

(declare-fun m!5533593 () Bool)

(assert (=> b!4654764 m!5533593))

(declare-fun m!5533595 () Bool)

(assert (=> b!4654766 m!5533595))

(declare-fun m!5533597 () Bool)

(assert (=> b!4654768 m!5533597))

(assert (=> b!4654768 m!5533593))

(assert (=> b!4654768 m!5533597))

(declare-fun m!5533599 () Bool)

(assert (=> b!4654768 m!5533599))

(assert (=> b!4654768 m!5533593))

(declare-fun m!5533601 () Bool)

(assert (=> b!4654768 m!5533601))

(declare-fun m!5533603 () Bool)

(assert (=> b!4654768 m!5533603))

(declare-fun m!5533605 () Bool)

(assert (=> b!4654768 m!5533605))

(declare-fun m!5533607 () Bool)

(assert (=> b!4654768 m!5533607))

(declare-fun m!5533609 () Bool)

(assert (=> b!4654768 m!5533609))

(declare-fun m!5533611 () Bool)

(assert (=> b!4654768 m!5533611))

(assert (=> b!4654768 m!5533213))

(declare-fun m!5533613 () Bool)

(assert (=> b!4654768 m!5533613))

(assert (=> b!4654768 m!5533213))

(assert (=> b!4654768 m!5533603))

(declare-fun m!5533615 () Bool)

(assert (=> b!4654765 m!5533615))

(declare-fun m!5533617 () Bool)

(assert (=> bm!325278 m!5533617))

(assert (=> bm!325277 m!5533213))

(declare-fun m!5533619 () Bool)

(assert (=> bm!325277 m!5533619))

(assert (=> bm!325279 m!5533617))

(assert (=> b!4654532 d!1476174))

(declare-fun bs!1064294 () Bool)

(declare-fun d!1476180 () Bool)

(assert (= bs!1064294 (and d!1476180 d!1476062)))

(declare-fun lambda!199115 () Int)

(assert (=> bs!1064294 (= lambda!199115 lambda!199026)))

(declare-fun bs!1064295 () Bool)

(assert (= bs!1064295 (and d!1476180 d!1476068)))

(assert (=> bs!1064295 (= lambda!199115 lambda!199027)))

(declare-fun lt!1817952 () ListMap!4539)

(assert (=> d!1476180 (invariantList!1293 (toList!5202 lt!1817952))))

(declare-fun e!2904179 () ListMap!4539)

(assert (=> d!1476180 (= lt!1817952 e!2904179)))

(declare-fun c!796726 () Bool)

(assert (=> d!1476180 (= c!796726 (is-Cons!51883 (t!359123 lt!1817578)))))

(assert (=> d!1476180 (forall!11014 (t!359123 lt!1817578) lambda!199115)))

(assert (=> d!1476180 (= (extractMap!1691 (t!359123 lt!1817578)) lt!1817952)))

(declare-fun b!4654778 () Bool)

(assert (=> b!4654778 (= e!2904179 (addToMapMapFromBucket!1092 (_2!29788 (h!58023 (t!359123 lt!1817578))) (extractMap!1691 (t!359123 (t!359123 lt!1817578)))))))

(declare-fun b!4654779 () Bool)

(assert (=> b!4654779 (= e!2904179 (ListMap!4540 Nil!51882))))

(assert (= (and d!1476180 c!796726) b!4654778))

(assert (= (and d!1476180 (not c!796726)) b!4654779))

(declare-fun m!5533621 () Bool)

(assert (=> d!1476180 m!5533621))

(declare-fun m!5533623 () Bool)

(assert (=> d!1476180 m!5533623))

(declare-fun m!5533625 () Bool)

(assert (=> b!4654778 m!5533625))

(assert (=> b!4654778 m!5533625))

(declare-fun m!5533627 () Bool)

(assert (=> b!4654778 m!5533627))

(assert (=> b!4654532 d!1476180))

(declare-fun b!4654780 () Bool)

(declare-fun e!2904180 () Bool)

(declare-fun tp!1343276 () Bool)

(assert (=> b!4654780 (= e!2904180 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343276))))

(assert (=> b!4654551 (= tp!1343271 e!2904180)))

(assert (= (and b!4654551 (is-Cons!51882 (t!359122 (t!359122 newBucket!224)))) b!4654780))

(declare-fun e!2904181 () Bool)

(declare-fun b!4654781 () Bool)

(declare-fun tp!1343277 () Bool)

(assert (=> b!4654781 (= e!2904181 (and tp_is_empty!29833 tp_is_empty!29835 tp!1343277))))

(assert (=> b!4654550 (= tp!1343270 e!2904181)))

(assert (= (and b!4654550 (is-Cons!51882 (t!359122 (t!359122 oldBucket!40)))) b!4654781))

(declare-fun b_lambda!173803 () Bool)

(assert (= b_lambda!173781 (or d!1476070 b_lambda!173803)))

(declare-fun bs!1064296 () Bool)

(declare-fun d!1476182 () Bool)

(assert (= bs!1064296 (and d!1476182 d!1476070)))

(assert (=> bs!1064296 (= (dynLambda!21582 lambda!199030 (h!58022 newBucket!224)) (= (hash!3768 hashF!1389 (_1!29787 (h!58022 newBucket!224))) hash!414))))

(declare-fun m!5533629 () Bool)

(assert (=> bs!1064296 m!5533629))

(assert (=> b!4654629 d!1476182))

(declare-fun b_lambda!173805 () Bool)

(assert (= b_lambda!173777 (or d!1476068 b_lambda!173805)))

(declare-fun bs!1064297 () Bool)

(declare-fun d!1476184 () Bool)

(assert (= bs!1064297 (and d!1476184 d!1476068)))

(assert (=> bs!1064297 (= (dynLambda!21581 lambda!199027 (h!58023 lt!1817578)) (noDuplicateKeys!1635 (_2!29788 (h!58023 lt!1817578))))))

(assert (=> bs!1064297 m!5533591))

(assert (=> b!4654603 d!1476184))

(declare-fun b_lambda!173807 () Bool)

(assert (= b_lambda!173783 (or d!1476040 b_lambda!173807)))

(declare-fun bs!1064298 () Bool)

(declare-fun d!1476186 () Bool)

(assert (= bs!1064298 (and d!1476186 d!1476040)))

(assert (=> bs!1064298 (= (dynLambda!21582 lambda!199023 (h!58022 oldBucket!40)) (contains!15026 lt!1817675 (_1!29787 (h!58022 oldBucket!40))))))

(declare-fun m!5533631 () Bool)

(assert (=> bs!1064298 m!5533631))

(assert (=> b!4654646 d!1476186))

(declare-fun b_lambda!173809 () Bool)

(assert (= b_lambda!173793 (or b!4654484 b_lambda!173809)))

(declare-fun bs!1064299 () Bool)

(declare-fun d!1476188 () Bool)

(assert (= bs!1064299 (and d!1476188 b!4654484)))

(assert (=> bs!1064299 (= (dynLambda!21582 lambda!199022 (h!58022 oldBucket!40)) (contains!15026 lt!1817668 (_1!29787 (h!58022 oldBucket!40))))))

(assert (=> bs!1064299 m!5533155))

(assert (=> d!1476158 d!1476188))

(declare-fun b_lambda!173811 () Bool)

(assert (= b_lambda!173791 (or b!4654484 b_lambda!173811)))

(declare-fun bs!1064300 () Bool)

(declare-fun d!1476190 () Bool)

(assert (= bs!1064300 (and d!1476190 b!4654484)))

(assert (=> bs!1064300 (= (dynLambda!21582 lambda!199022 (h!58022 (toList!5202 lt!1817579))) (contains!15026 lt!1817668 (_1!29787 (h!58022 (toList!5202 lt!1817579)))))))

(declare-fun m!5533633 () Bool)

(assert (=> bs!1064300 m!5533633))

(assert (=> b!4654744 d!1476190))

(declare-fun b_lambda!173813 () Bool)

(assert (= b_lambda!173795 (or b!4654484 b_lambda!173813)))

(declare-fun bs!1064301 () Bool)

(declare-fun d!1476192 () Bool)

(assert (= bs!1064301 (and d!1476192 b!4654484)))

(assert (=> bs!1064301 (= (dynLambda!21582 lambda!199022 (h!58022 (t!359122 oldBucket!40))) (contains!15026 lt!1817668 (_1!29787 (h!58022 (t!359122 oldBucket!40)))))))

(declare-fun m!5533635 () Bool)

(assert (=> bs!1064301 m!5533635))

(assert (=> b!4654752 d!1476192))

(declare-fun b_lambda!173815 () Bool)

(assert (= b_lambda!173779 (or d!1476062 b_lambda!173815)))

(declare-fun bs!1064302 () Bool)

(declare-fun d!1476194 () Bool)

(assert (= bs!1064302 (and d!1476194 d!1476062)))

(assert (=> bs!1064302 (= (dynLambda!21581 lambda!199026 (h!58023 Nil!51883)) (noDuplicateKeys!1635 (_2!29788 (h!58023 Nil!51883))))))

(declare-fun m!5533637 () Bool)

(assert (=> bs!1064302 m!5533637))

(assert (=> b!4654605 d!1476194))

(declare-fun b_lambda!173817 () Bool)

(assert (= b_lambda!173799 (or d!1476078 b_lambda!173817)))

(declare-fun bs!1064303 () Bool)

(declare-fun d!1476196 () Bool)

(assert (= bs!1064303 (and d!1476196 d!1476078)))

(assert (=> bs!1064303 (= (dynLambda!21582 lambda!199031 (h!58022 oldBucket!40)) (= (hash!3768 hashF!1389 (_1!29787 (h!58022 oldBucket!40))) hash!414))))

(declare-fun m!5533639 () Bool)

(assert (=> bs!1064303 m!5533639))

(assert (=> b!4654762 d!1476196))

(declare-fun b_lambda!173819 () Bool)

(assert (= b_lambda!173787 (or b!4654484 b_lambda!173819)))

(declare-fun bs!1064304 () Bool)

(declare-fun d!1476198 () Bool)

(assert (= bs!1064304 (and d!1476198 b!4654484)))

(assert (=> bs!1064304 (= (dynLambda!21582 lambda!199021 (h!58022 (toList!5202 lt!1817579))) (contains!15026 lt!1817579 (_1!29787 (h!58022 (toList!5202 lt!1817579)))))))

(declare-fun m!5533641 () Bool)

(assert (=> bs!1064304 m!5533641))

(assert (=> b!4654709 d!1476198))

(declare-fun b_lambda!173821 () Bool)

(assert (= b_lambda!173797 (or d!1476040 b_lambda!173821)))

(declare-fun bs!1064305 () Bool)

(declare-fun d!1476200 () Bool)

(assert (= bs!1064305 (and d!1476200 d!1476040)))

(assert (=> bs!1064305 (= (dynLambda!21582 lambda!199023 (h!58022 (toList!5202 lt!1817579))) (contains!15026 lt!1817675 (_1!29787 (h!58022 (toList!5202 lt!1817579)))))))

(declare-fun m!5533643 () Bool)

(assert (=> bs!1064305 m!5533643))

(assert (=> b!4654754 d!1476200))

(declare-fun b_lambda!173823 () Bool)

(assert (= b_lambda!173789 (or b!4654484 b_lambda!173823)))

(assert (=> b!4654731 d!1476188))

(push 1)

(assert (not b!4654640))

(assert (not b!4654632))

(assert (not bs!1064299))

(assert (not d!1476104))

(assert (not b!4654719))

(assert (not d!1476170))

(assert (not b!4654739))

(assert (not b!4654639))

(assert (not b!4654713))

(assert (not d!1476126))

(assert (not b!4654764))

(assert (not b!4654708))

(assert (not d!1476086))

(assert (not b!4654606))

(assert (not b!4654673))

(assert (not d!1476142))

(assert tp_is_empty!29833)

(assert (not b!4654778))

(assert (not d!1476114))

(assert (not b!4654645))

(assert (not b_lambda!173817))

(assert (not b!4654707))

(assert (not b_lambda!173807))

(assert (not d!1476136))

(assert (not b!4654736))

(assert (not d!1476158))

(assert (not bm!325279))

(assert (not bs!1064302))

(assert (not d!1476120))

(assert (not b!4654624))

(assert (not bm!325269))

(assert (not b!4654734))

(assert (not bs!1064304))

(assert (not b!4654781))

(assert (not d!1476144))

(assert (not b!4654780))

(assert (not b!4654735))

(assert (not b!4654681))

(assert tp_is_empty!29835)

(assert (not b!4654716))

(assert (not b!4654683))

(assert (not bs!1064296))

(assert (not b!4654711))

(assert (not d!1476122))

(assert (not d!1476098))

(assert (not b!4654761))

(assert (not bs!1064301))

(assert (not b!4654751))

(assert (not b_lambda!173811))

(assert (not b!4654678))

(assert (not b!4654604))

(assert (not b!4654679))

(assert (not d!1476152))

(assert (not d!1476108))

(assert (not bs!1064305))

(assert (not b_lambda!173821))

(assert (not bm!325273))

(assert (not b!4654641))

(assert (not b_lambda!173785))

(assert (not d!1476180))

(assert (not b_lambda!173803))

(assert (not b!4654670))

(assert (not bm!325277))

(assert (not bm!325278))

(assert (not b_lambda!173815))

(assert (not bm!325272))

(assert (not b!4654582))

(assert (not b!4654766))

(assert (not b!4654763))

(assert (not bs!1064303))

(assert (not bs!1064297))

(assert (not b!4654590))

(assert (not b!4654669))

(assert (not b!4654768))

(assert (not d!1476164))

(assert (not b!4654765))

(assert (not b!4654738))

(assert (not b_lambda!173805))

(assert (not b!4654672))

(assert (not b!4654717))

(assert (not b!4654741))

(assert (not d!1476174))

(assert (not b!4654710))

(assert (not d!1476132))

(assert (not bs!1064300))

(assert (not b!4654589))

(assert (not b!4654732))

(assert (not b!4654745))

(assert (not d!1476118))

(assert (not b!4654598))

(assert (not b!4654617))

(assert (not bm!325271))

(assert (not b!4654680))

(assert (not b!4654588))

(assert (not b_lambda!173809))

(assert (not d!1476124))

(assert (not d!1476148))

(assert (not d!1476100))

(assert (not b!4654755))

(assert (not b!4654630))

(assert (not b!4654591))

(assert (not b!4654714))

(assert (not b_lambda!173813))

(assert (not b_lambda!173823))

(assert (not b!4654585))

(assert (not b!4654668))

(assert (not b_lambda!173819))

(assert (not bs!1064298))

(assert (not b!4654753))

(assert (not bm!325270))

(assert (not b!4654647))

(assert (not b!4654733))

(assert (not b!4654592))

(assert (not b!4654712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

