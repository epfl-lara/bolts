; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495454 () Bool)

(assert start!495454)

(declare-fun b!4800758 () Bool)

(declare-fun res!2041803 () Bool)

(declare-fun e!2997908 () Bool)

(assert (=> b!4800758 (=> res!2041803 e!2997908)))

(declare-datatypes ((K!15894 0))(
  ( (K!15895 (val!21021 Int)) )
))
(declare-datatypes ((V!16140 0))(
  ( (V!16141 (val!21022 Int)) )
))
(declare-datatypes ((tuple2!57016 0))(
  ( (tuple2!57017 (_1!31802 K!15894) (_2!31802 V!16140)) )
))
(declare-datatypes ((List!54446 0))(
  ( (Nil!54322) (Cons!54322 (h!60754 tuple2!57016) (t!361896 List!54446)) )
))
(declare-datatypes ((tuple2!57018 0))(
  ( (tuple2!57019 (_1!31803 (_ BitVec 64)) (_2!31803 List!54446)) )
))
(declare-datatypes ((List!54447 0))(
  ( (Nil!54323) (Cons!54323 (h!60755 tuple2!57018) (t!361897 List!54447)) )
))
(declare-datatypes ((ListLongMap!5425 0))(
  ( (ListLongMap!5426 (toList!7003 List!54447)) )
))
(declare-fun lm!2473 () ListLongMap!5425)

(get-info :version)

(assert (=> b!4800758 (= res!2041803 (not ((_ is Cons!54323) (toList!7003 lm!2473))))))

(declare-fun b!4800759 () Bool)

(declare-fun e!2997907 () Bool)

(declare-fun lt!1956399 () ListLongMap!5425)

(declare-datatypes ((Hashable!6962 0))(
  ( (HashableExt!6961 (__x!32985 Int)) )
))
(declare-fun hashF!1559 () Hashable!6962)

(declare-fun allKeysSameHashInMap!2367 (ListLongMap!5425 Hashable!6962) Bool)

(assert (=> b!4800759 (= e!2997907 (allKeysSameHashInMap!2367 lt!1956399 hashF!1559))))

(declare-fun res!2041801 () Bool)

(declare-fun e!2997910 () Bool)

(assert (=> start!495454 (=> (not res!2041801) (not e!2997910))))

(declare-fun lambda!232357 () Int)

(declare-fun forall!12329 (List!54447 Int) Bool)

(assert (=> start!495454 (= res!2041801 (forall!12329 (toList!7003 lm!2473) lambda!232357))))

(assert (=> start!495454 e!2997910))

(declare-fun e!2997909 () Bool)

(declare-fun inv!69920 (ListLongMap!5425) Bool)

(assert (=> start!495454 (and (inv!69920 lm!2473) e!2997909)))

(assert (=> start!495454 true))

(declare-fun tp_is_empty!33709 () Bool)

(assert (=> start!495454 tp_is_empty!33709))

(declare-fun tp_is_empty!33711 () Bool)

(assert (=> start!495454 tp_is_empty!33711))

(declare-fun b!4800760 () Bool)

(declare-datatypes ((Unit!140691 0))(
  ( (Unit!140692) )
))
(declare-fun e!2997911 () Unit!140691)

(declare-fun lt!1956398 () Unit!140691)

(assert (=> b!4800760 (= e!2997911 lt!1956398)))

(declare-fun key!5896 () K!15894)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!60 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> b!4800760 (= lt!1956398 (lemmaHashNotInLongMapThenNotInGenerated!60 lt!1956399 key!5896 hashF!1559))))

(declare-datatypes ((ListMap!6475 0))(
  ( (ListMap!6476 (toList!7004 List!54446)) )
))
(declare-fun contains!17974 (ListMap!6475 K!15894) Bool)

(declare-fun extractMap!2489 (List!54447) ListMap!6475)

(assert (=> b!4800760 (not (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896))))

(declare-fun b!4800761 () Bool)

(declare-fun Unit!140693 () Unit!140691)

(assert (=> b!4800761 (= e!2997911 Unit!140693)))

(declare-fun b!4800762 () Bool)

(assert (=> b!4800762 (= e!2997910 (not e!2997908))))

(declare-fun res!2041800 () Bool)

(assert (=> b!4800762 (=> res!2041800 e!2997908)))

(declare-fun value!3111 () V!16140)

(declare-fun getValue!150 (List!54447 K!15894) V!16140)

(assert (=> b!4800762 (= res!2041800 (not (= (getValue!150 (toList!7003 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!604 (List!54447 K!15894) Bool)

(assert (=> b!4800762 (containsKeyBiggerList!604 (toList!7003 lm!2473) key!5896)))

(declare-fun lt!1956395 () Unit!140691)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!344 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> b!4800762 (= lt!1956395 (lemmaInLongMapThenContainsKeyBiggerList!344 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2997912 () Bool)

(assert (=> b!4800762 e!2997912))

(declare-fun res!2041804 () Bool)

(assert (=> b!4800762 (=> (not res!2041804) (not e!2997912))))

(declare-fun lt!1956400 () (_ BitVec 64))

(declare-fun contains!17975 (ListLongMap!5425 (_ BitVec 64)) Bool)

(assert (=> b!4800762 (= res!2041804 (contains!17975 lm!2473 lt!1956400))))

(declare-fun hash!5018 (Hashable!6962 K!15894) (_ BitVec 64))

(assert (=> b!4800762 (= lt!1956400 (hash!5018 hashF!1559 key!5896))))

(declare-fun lt!1956401 () Unit!140691)

(declare-fun lemmaInGenericMapThenInLongMap!366 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> b!4800762 (= lt!1956401 (lemmaInGenericMapThenInLongMap!366 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4800763 () Bool)

(declare-fun tp!1358374 () Bool)

(assert (=> b!4800763 (= e!2997909 tp!1358374)))

(declare-fun b!4800764 () Bool)

(declare-datatypes ((Option!13182 0))(
  ( (None!13181) (Some!13181 (v!48506 tuple2!57016)) )
))
(declare-fun isDefined!10323 (Option!13182) Bool)

(declare-fun getPair!934 (List!54446 K!15894) Option!13182)

(declare-fun apply!13035 (ListLongMap!5425 (_ BitVec 64)) List!54446)

(assert (=> b!4800764 (= e!2997912 (isDefined!10323 (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896)))))

(declare-fun b!4800765 () Bool)

(declare-fun res!2041797 () Bool)

(assert (=> b!4800765 (=> res!2041797 e!2997908)))

(declare-fun containsKey!4032 (List!54446 K!15894) Bool)

(assert (=> b!4800765 (= res!2041797 (containsKey!4032 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896))))

(declare-fun b!4800766 () Bool)

(declare-fun res!2041802 () Bool)

(assert (=> b!4800766 (=> (not res!2041802) (not e!2997910))))

(assert (=> b!4800766 (= res!2041802 (allKeysSameHashInMap!2367 lm!2473 hashF!1559))))

(declare-fun b!4800767 () Bool)

(assert (=> b!4800767 (= e!2997908 e!2997907)))

(declare-fun res!2041799 () Bool)

(assert (=> b!4800767 (=> res!2041799 e!2997907)))

(assert (=> b!4800767 (= res!2041799 (not (forall!12329 (toList!7003 lt!1956399) lambda!232357)))))

(assert (=> b!4800767 (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896)))

(declare-fun lt!1956397 () Unit!140691)

(declare-fun lemmaListContainsThenExtractedMapContains!712 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> b!4800767 (= lt!1956397 (lemmaListContainsThenExtractedMapContains!712 lt!1956399 key!5896 hashF!1559))))

(declare-fun lt!1956396 () Unit!140691)

(assert (=> b!4800767 (= lt!1956396 e!2997911)))

(declare-fun c!818269 () Bool)

(assert (=> b!4800767 (= c!818269 (not (contains!17975 lt!1956399 lt!1956400)))))

(declare-fun tail!9326 (ListLongMap!5425) ListLongMap!5425)

(assert (=> b!4800767 (= lt!1956399 (tail!9326 lm!2473))))

(declare-fun b!4800768 () Bool)

(declare-fun res!2041798 () Bool)

(assert (=> b!4800768 (=> (not res!2041798) (not e!2997910))))

(assert (=> b!4800768 (= res!2041798 (contains!17974 (extractMap!2489 (toList!7003 lm!2473)) key!5896))))

(assert (= (and start!495454 res!2041801) b!4800766))

(assert (= (and b!4800766 res!2041802) b!4800768))

(assert (= (and b!4800768 res!2041798) b!4800762))

(assert (= (and b!4800762 res!2041804) b!4800764))

(assert (= (and b!4800762 (not res!2041800)) b!4800758))

(assert (= (and b!4800758 (not res!2041803)) b!4800765))

(assert (= (and b!4800765 (not res!2041797)) b!4800767))

(assert (= (and b!4800767 c!818269) b!4800760))

(assert (= (and b!4800767 (not c!818269)) b!4800761))

(assert (= (and b!4800767 (not res!2041799)) b!4800759))

(assert (= start!495454 b!4800763))

(declare-fun m!5784492 () Bool)

(assert (=> b!4800765 m!5784492))

(declare-fun m!5784494 () Bool)

(assert (=> b!4800759 m!5784494))

(declare-fun m!5784496 () Bool)

(assert (=> start!495454 m!5784496))

(declare-fun m!5784498 () Bool)

(assert (=> start!495454 m!5784498))

(declare-fun m!5784500 () Bool)

(assert (=> b!4800768 m!5784500))

(assert (=> b!4800768 m!5784500))

(declare-fun m!5784502 () Bool)

(assert (=> b!4800768 m!5784502))

(declare-fun m!5784504 () Bool)

(assert (=> b!4800767 m!5784504))

(declare-fun m!5784506 () Bool)

(assert (=> b!4800767 m!5784506))

(declare-fun m!5784508 () Bool)

(assert (=> b!4800767 m!5784508))

(assert (=> b!4800767 m!5784504))

(declare-fun m!5784510 () Bool)

(assert (=> b!4800767 m!5784510))

(declare-fun m!5784512 () Bool)

(assert (=> b!4800767 m!5784512))

(declare-fun m!5784514 () Bool)

(assert (=> b!4800767 m!5784514))

(declare-fun m!5784516 () Bool)

(assert (=> b!4800760 m!5784516))

(assert (=> b!4800760 m!5784504))

(assert (=> b!4800760 m!5784504))

(assert (=> b!4800760 m!5784510))

(declare-fun m!5784518 () Bool)

(assert (=> b!4800766 m!5784518))

(declare-fun m!5784520 () Bool)

(assert (=> b!4800764 m!5784520))

(assert (=> b!4800764 m!5784520))

(declare-fun m!5784522 () Bool)

(assert (=> b!4800764 m!5784522))

(assert (=> b!4800764 m!5784522))

(declare-fun m!5784524 () Bool)

(assert (=> b!4800764 m!5784524))

(declare-fun m!5784526 () Bool)

(assert (=> b!4800762 m!5784526))

(declare-fun m!5784528 () Bool)

(assert (=> b!4800762 m!5784528))

(declare-fun m!5784530 () Bool)

(assert (=> b!4800762 m!5784530))

(declare-fun m!5784532 () Bool)

(assert (=> b!4800762 m!5784532))

(declare-fun m!5784534 () Bool)

(assert (=> b!4800762 m!5784534))

(declare-fun m!5784536 () Bool)

(assert (=> b!4800762 m!5784536))

(check-sat (not b!4800767) (not b!4800765) (not b!4800759) (not b!4800760) tp_is_empty!33711 (not b!4800762) (not b!4800766) (not b!4800764) (not b!4800768) (not start!495454) (not b!4800763) tp_is_empty!33709)
(check-sat)
(get-model)

(declare-fun bs!1157430 () Bool)

(declare-fun d!1537054 () Bool)

(assert (= bs!1157430 (and d!1537054 start!495454)))

(declare-fun lambda!232363 () Int)

(assert (=> bs!1157430 (not (= lambda!232363 lambda!232357))))

(assert (=> d!1537054 true))

(assert (=> d!1537054 (= (allKeysSameHashInMap!2367 lm!2473 hashF!1559) (forall!12329 (toList!7003 lm!2473) lambda!232363))))

(declare-fun bs!1157431 () Bool)

(assert (= bs!1157431 d!1537054))

(declare-fun m!5784542 () Bool)

(assert (=> bs!1157431 m!5784542))

(assert (=> b!4800766 d!1537054))

(declare-fun bs!1157434 () Bool)

(declare-fun d!1537058 () Bool)

(assert (= bs!1157434 (and d!1537058 start!495454)))

(declare-fun lambda!232369 () Int)

(assert (=> bs!1157434 (= lambda!232369 lambda!232357)))

(declare-fun bs!1157435 () Bool)

(assert (= bs!1157435 (and d!1537058 d!1537054)))

(assert (=> bs!1157435 (not (= lambda!232369 lambda!232363))))

(assert (=> d!1537058 (not (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896))))

(declare-fun lt!1956434 () Unit!140691)

(declare-fun choose!34689 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> d!1537058 (= lt!1956434 (choose!34689 lt!1956399 key!5896 hashF!1559))))

(assert (=> d!1537058 (forall!12329 (toList!7003 lt!1956399) lambda!232369)))

(assert (=> d!1537058 (= (lemmaHashNotInLongMapThenNotInGenerated!60 lt!1956399 key!5896 hashF!1559) lt!1956434)))

(declare-fun bs!1157436 () Bool)

(assert (= bs!1157436 d!1537058))

(assert (=> bs!1157436 m!5784504))

(assert (=> bs!1157436 m!5784504))

(assert (=> bs!1157436 m!5784510))

(declare-fun m!5784576 () Bool)

(assert (=> bs!1157436 m!5784576))

(declare-fun m!5784578 () Bool)

(assert (=> bs!1157436 m!5784578))

(assert (=> b!4800760 d!1537058))

(declare-fun b!4800906 () Bool)

(declare-fun e!2998011 () Unit!140691)

(declare-fun e!2998013 () Unit!140691)

(assert (=> b!4800906 (= e!2998011 e!2998013)))

(declare-fun c!818305 () Bool)

(declare-fun call!335371 () Bool)

(assert (=> b!4800906 (= c!818305 call!335371)))

(declare-fun b!4800907 () Bool)

(declare-fun Unit!140700 () Unit!140691)

(assert (=> b!4800907 (= e!2998013 Unit!140700)))

(declare-fun b!4800908 () Bool)

(declare-fun e!2998008 () Bool)

(declare-datatypes ((List!54449 0))(
  ( (Nil!54325) (Cons!54325 (h!60757 K!15894) (t!361899 List!54449)) )
))
(declare-fun contains!17978 (List!54449 K!15894) Bool)

(declare-fun keys!19861 (ListMap!6475) List!54449)

(assert (=> b!4800908 (= e!2998008 (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(declare-fun b!4800909 () Bool)

(declare-fun e!2998010 () List!54449)

(assert (=> b!4800909 (= e!2998010 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399))))))

(declare-fun b!4800910 () Bool)

(declare-fun e!2998009 () Bool)

(assert (=> b!4800910 (= e!2998009 (not (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399))) key!5896)))))

(declare-fun b!4800911 () Bool)

(declare-fun getKeysList!1100 (List!54446) List!54449)

(assert (=> b!4800911 (= e!2998010 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))

(declare-fun b!4800912 () Bool)

(declare-fun e!2998012 () Bool)

(assert (=> b!4800912 (= e!2998012 e!2998008)))

(declare-fun res!2041868 () Bool)

(assert (=> b!4800912 (=> (not res!2041868) (not e!2998008))))

(declare-datatypes ((Option!13185 0))(
  ( (None!13184) (Some!13184 (v!48509 V!16140)) )
))
(declare-fun isDefined!10326 (Option!13185) Bool)

(declare-fun getValueByKey!2398 (List!54446 K!15894) Option!13185)

(assert (=> b!4800912 (= res!2041868 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896)))))

(declare-fun b!4800913 () Bool)

(assert (=> b!4800913 false))

(declare-fun lt!1956487 () Unit!140691)

(declare-fun lt!1956489 () Unit!140691)

(assert (=> b!4800913 (= lt!1956487 lt!1956489)))

(declare-fun containsKey!4035 (List!54446 K!15894) Bool)

(assert (=> b!4800913 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1100 (List!54446 K!15894) Unit!140691)

(assert (=> b!4800913 (= lt!1956489 (lemmaInGetKeysListThenContainsKey!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(declare-fun Unit!140701 () Unit!140691)

(assert (=> b!4800913 (= e!2998013 Unit!140701)))

(declare-fun b!4800914 () Bool)

(declare-fun lt!1956491 () Unit!140691)

(assert (=> b!4800914 (= e!2998011 lt!1956491)))

(declare-fun lt!1956492 () Unit!140691)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2189 (List!54446 K!15894) Unit!140691)

(assert (=> b!4800914 (= lt!1956492 (lemmaContainsKeyImpliesGetValueByKeyDefined!2189 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> b!4800914 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(declare-fun lt!1956488 () Unit!140691)

(assert (=> b!4800914 (= lt!1956488 lt!1956492)))

(declare-fun lemmaInListThenGetKeysListContains!1095 (List!54446 K!15894) Unit!140691)

(assert (=> b!4800914 (= lt!1956491 (lemmaInListThenGetKeysListContains!1095 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> b!4800914 call!335371))

(declare-fun d!1537066 () Bool)

(assert (=> d!1537066 e!2998012))

(declare-fun res!2041870 () Bool)

(assert (=> d!1537066 (=> res!2041870 e!2998012)))

(assert (=> d!1537066 (= res!2041870 e!2998009)))

(declare-fun res!2041869 () Bool)

(assert (=> d!1537066 (=> (not res!2041869) (not e!2998009))))

(declare-fun lt!1956490 () Bool)

(assert (=> d!1537066 (= res!2041869 (not lt!1956490))))

(declare-fun lt!1956486 () Bool)

(assert (=> d!1537066 (= lt!1956490 lt!1956486)))

(declare-fun lt!1956485 () Unit!140691)

(assert (=> d!1537066 (= lt!1956485 e!2998011)))

(declare-fun c!818306 () Bool)

(assert (=> d!1537066 (= c!818306 lt!1956486)))

(assert (=> d!1537066 (= lt!1956486 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> d!1537066 (= (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896) lt!1956490)))

(declare-fun bm!335366 () Bool)

(assert (=> bm!335366 (= call!335371 (contains!17978 e!2998010 key!5896))))

(declare-fun c!818307 () Bool)

(assert (=> bm!335366 (= c!818307 c!818306)))

(assert (= (and d!1537066 c!818306) b!4800914))

(assert (= (and d!1537066 (not c!818306)) b!4800906))

(assert (= (and b!4800906 c!818305) b!4800913))

(assert (= (and b!4800906 (not c!818305)) b!4800907))

(assert (= (or b!4800914 b!4800906) bm!335366))

(assert (= (and bm!335366 c!818307) b!4800911))

(assert (= (and bm!335366 (not c!818307)) b!4800909))

(assert (= (and d!1537066 res!2041869) b!4800910))

(assert (= (and d!1537066 (not res!2041870)) b!4800912))

(assert (= (and b!4800912 res!2041868) b!4800908))

(assert (=> b!4800910 m!5784504))

(declare-fun m!5784682 () Bool)

(assert (=> b!4800910 m!5784682))

(assert (=> b!4800910 m!5784682))

(declare-fun m!5784684 () Bool)

(assert (=> b!4800910 m!5784684))

(declare-fun m!5784686 () Bool)

(assert (=> d!1537066 m!5784686))

(declare-fun m!5784688 () Bool)

(assert (=> bm!335366 m!5784688))

(assert (=> b!4800909 m!5784504))

(assert (=> b!4800909 m!5784682))

(assert (=> b!4800908 m!5784504))

(assert (=> b!4800908 m!5784682))

(assert (=> b!4800908 m!5784682))

(assert (=> b!4800908 m!5784684))

(declare-fun m!5784690 () Bool)

(assert (=> b!4800912 m!5784690))

(assert (=> b!4800912 m!5784690))

(declare-fun m!5784692 () Bool)

(assert (=> b!4800912 m!5784692))

(assert (=> b!4800913 m!5784686))

(declare-fun m!5784694 () Bool)

(assert (=> b!4800913 m!5784694))

(declare-fun m!5784696 () Bool)

(assert (=> b!4800914 m!5784696))

(assert (=> b!4800914 m!5784690))

(assert (=> b!4800914 m!5784690))

(assert (=> b!4800914 m!5784692))

(declare-fun m!5784698 () Bool)

(assert (=> b!4800914 m!5784698))

(declare-fun m!5784700 () Bool)

(assert (=> b!4800911 m!5784700))

(assert (=> b!4800760 d!1537066))

(declare-fun bs!1157481 () Bool)

(declare-fun d!1537104 () Bool)

(assert (= bs!1157481 (and d!1537104 start!495454)))

(declare-fun lambda!232386 () Int)

(assert (=> bs!1157481 (= lambda!232386 lambda!232357)))

(declare-fun bs!1157482 () Bool)

(assert (= bs!1157482 (and d!1537104 d!1537054)))

(assert (=> bs!1157482 (not (= lambda!232386 lambda!232363))))

(declare-fun bs!1157483 () Bool)

(assert (= bs!1157483 (and d!1537104 d!1537058)))

(assert (=> bs!1157483 (= lambda!232386 lambda!232369)))

(declare-fun lt!1956498 () ListMap!6475)

(declare-fun invariantList!1754 (List!54446) Bool)

(assert (=> d!1537104 (invariantList!1754 (toList!7004 lt!1956498))))

(declare-fun e!2998019 () ListMap!6475)

(assert (=> d!1537104 (= lt!1956498 e!2998019)))

(declare-fun c!818310 () Bool)

(assert (=> d!1537104 (= c!818310 ((_ is Cons!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537104 (forall!12329 (toList!7003 lt!1956399) lambda!232386)))

(assert (=> d!1537104 (= (extractMap!2489 (toList!7003 lt!1956399)) lt!1956498)))

(declare-fun b!4800924 () Bool)

(declare-fun addToMapMapFromBucket!1731 (List!54446 ListMap!6475) ListMap!6475)

(assert (=> b!4800924 (= e!2998019 (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))))))

(declare-fun b!4800925 () Bool)

(assert (=> b!4800925 (= e!2998019 (ListMap!6476 Nil!54322))))

(assert (= (and d!1537104 c!818310) b!4800924))

(assert (= (and d!1537104 (not c!818310)) b!4800925))

(declare-fun m!5784710 () Bool)

(assert (=> d!1537104 m!5784710))

(declare-fun m!5784712 () Bool)

(assert (=> d!1537104 m!5784712))

(declare-fun m!5784714 () Bool)

(assert (=> b!4800924 m!5784714))

(assert (=> b!4800924 m!5784714))

(declare-fun m!5784716 () Bool)

(assert (=> b!4800924 m!5784716))

(assert (=> b!4800760 d!1537104))

(declare-fun d!1537110 () Bool)

(declare-fun res!2041875 () Bool)

(declare-fun e!2998024 () Bool)

(assert (=> d!1537110 (=> res!2041875 e!2998024)))

(assert (=> d!1537110 (= res!2041875 ((_ is Nil!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537110 (= (forall!12329 (toList!7003 lm!2473) lambda!232357) e!2998024)))

(declare-fun b!4800930 () Bool)

(declare-fun e!2998025 () Bool)

(assert (=> b!4800930 (= e!2998024 e!2998025)))

(declare-fun res!2041876 () Bool)

(assert (=> b!4800930 (=> (not res!2041876) (not e!2998025))))

(declare-fun dynLambda!22093 (Int tuple2!57018) Bool)

(assert (=> b!4800930 (= res!2041876 (dynLambda!22093 lambda!232357 (h!60755 (toList!7003 lm!2473))))))

(declare-fun b!4800931 () Bool)

(assert (=> b!4800931 (= e!2998025 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232357))))

(assert (= (and d!1537110 (not res!2041875)) b!4800930))

(assert (= (and b!4800930 res!2041876) b!4800931))

(declare-fun b_lambda!187603 () Bool)

(assert (=> (not b_lambda!187603) (not b!4800930)))

(declare-fun m!5784718 () Bool)

(assert (=> b!4800930 m!5784718))

(declare-fun m!5784720 () Bool)

(assert (=> b!4800931 m!5784720))

(assert (=> start!495454 d!1537110))

(declare-fun d!1537112 () Bool)

(declare-fun isStrictlySorted!900 (List!54447) Bool)

(assert (=> d!1537112 (= (inv!69920 lm!2473) (isStrictlySorted!900 (toList!7003 lm!2473)))))

(declare-fun bs!1157484 () Bool)

(assert (= bs!1157484 d!1537112))

(declare-fun m!5784722 () Bool)

(assert (=> bs!1157484 m!5784722))

(assert (=> start!495454 d!1537112))

(declare-fun d!1537114 () Bool)

(declare-fun e!2998031 () Bool)

(assert (=> d!1537114 e!2998031))

(declare-fun res!2041879 () Bool)

(assert (=> d!1537114 (=> res!2041879 e!2998031)))

(declare-fun lt!1956509 () Bool)

(assert (=> d!1537114 (= res!2041879 (not lt!1956509))))

(declare-fun lt!1956507 () Bool)

(assert (=> d!1537114 (= lt!1956509 lt!1956507)))

(declare-fun lt!1956508 () Unit!140691)

(declare-fun e!2998030 () Unit!140691)

(assert (=> d!1537114 (= lt!1956508 e!2998030)))

(declare-fun c!818313 () Bool)

(assert (=> d!1537114 (= c!818313 lt!1956507)))

(declare-fun containsKey!4036 (List!54447 (_ BitVec 64)) Bool)

(assert (=> d!1537114 (= lt!1956507 (containsKey!4036 (toList!7003 lm!2473) lt!1956400))))

(assert (=> d!1537114 (= (contains!17975 lm!2473 lt!1956400) lt!1956509)))

(declare-fun b!4800938 () Bool)

(declare-fun lt!1956510 () Unit!140691)

(assert (=> b!4800938 (= e!2998030 lt!1956510)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (List!54447 (_ BitVec 64)) Unit!140691)

(assert (=> b!4800938 (= lt!1956510 (lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (toList!7003 lm!2473) lt!1956400))))

(declare-datatypes ((Option!13186 0))(
  ( (None!13185) (Some!13185 (v!48510 List!54446)) )
))
(declare-fun isDefined!10327 (Option!13186) Bool)

(declare-fun getValueByKey!2399 (List!54447 (_ BitVec 64)) Option!13186)

(assert (=> b!4800938 (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400))))

(declare-fun b!4800939 () Bool)

(declare-fun Unit!140702 () Unit!140691)

(assert (=> b!4800939 (= e!2998030 Unit!140702)))

(declare-fun b!4800940 () Bool)

(assert (=> b!4800940 (= e!2998031 (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400)))))

(assert (= (and d!1537114 c!818313) b!4800938))

(assert (= (and d!1537114 (not c!818313)) b!4800939))

(assert (= (and d!1537114 (not res!2041879)) b!4800940))

(declare-fun m!5784724 () Bool)

(assert (=> d!1537114 m!5784724))

(declare-fun m!5784726 () Bool)

(assert (=> b!4800938 m!5784726))

(declare-fun m!5784728 () Bool)

(assert (=> b!4800938 m!5784728))

(assert (=> b!4800938 m!5784728))

(declare-fun m!5784730 () Bool)

(assert (=> b!4800938 m!5784730))

(assert (=> b!4800940 m!5784728))

(assert (=> b!4800940 m!5784728))

(assert (=> b!4800940 m!5784730))

(assert (=> b!4800762 d!1537114))

(declare-fun d!1537116 () Bool)

(declare-fun res!2041887 () Bool)

(declare-fun e!2998038 () Bool)

(assert (=> d!1537116 (=> res!2041887 e!2998038)))

(declare-fun e!2998039 () Bool)

(assert (=> d!1537116 (= res!2041887 e!2998039)))

(declare-fun res!2041886 () Bool)

(assert (=> d!1537116 (=> (not res!2041886) (not e!2998039))))

(assert (=> d!1537116 (= res!2041886 ((_ is Cons!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537116 (= (containsKeyBiggerList!604 (toList!7003 lm!2473) key!5896) e!2998038)))

(declare-fun b!4800947 () Bool)

(assert (=> b!4800947 (= e!2998039 (containsKey!4032 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896))))

(declare-fun b!4800948 () Bool)

(declare-fun e!2998040 () Bool)

(assert (=> b!4800948 (= e!2998038 e!2998040)))

(declare-fun res!2041888 () Bool)

(assert (=> b!4800948 (=> (not res!2041888) (not e!2998040))))

(assert (=> b!4800948 (= res!2041888 ((_ is Cons!54323) (toList!7003 lm!2473)))))

(declare-fun b!4800949 () Bool)

(assert (=> b!4800949 (= e!2998040 (containsKeyBiggerList!604 (t!361897 (toList!7003 lm!2473)) key!5896))))

(assert (= (and d!1537116 res!2041886) b!4800947))

(assert (= (and d!1537116 (not res!2041887)) b!4800948))

(assert (= (and b!4800948 res!2041888) b!4800949))

(assert (=> b!4800947 m!5784492))

(declare-fun m!5784732 () Bool)

(assert (=> b!4800949 m!5784732))

(assert (=> b!4800762 d!1537116))

(declare-fun bs!1157485 () Bool)

(declare-fun d!1537118 () Bool)

(assert (= bs!1157485 (and d!1537118 start!495454)))

(declare-fun lambda!232389 () Int)

(assert (=> bs!1157485 (= lambda!232389 lambda!232357)))

(declare-fun bs!1157486 () Bool)

(assert (= bs!1157486 (and d!1537118 d!1537054)))

(assert (=> bs!1157486 (not (= lambda!232389 lambda!232363))))

(declare-fun bs!1157487 () Bool)

(assert (= bs!1157487 (and d!1537118 d!1537058)))

(assert (=> bs!1157487 (= lambda!232389 lambda!232369)))

(declare-fun bs!1157488 () Bool)

(assert (= bs!1157488 (and d!1537118 d!1537104)))

(assert (=> bs!1157488 (= lambda!232389 lambda!232386)))

(assert (=> d!1537118 (containsKeyBiggerList!604 (toList!7003 lm!2473) key!5896)))

(declare-fun lt!1956513 () Unit!140691)

(declare-fun choose!34690 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> d!1537118 (= lt!1956513 (choose!34690 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1537118 (forall!12329 (toList!7003 lm!2473) lambda!232389)))

(assert (=> d!1537118 (= (lemmaInLongMapThenContainsKeyBiggerList!344 lm!2473 key!5896 hashF!1559) lt!1956513)))

(declare-fun bs!1157489 () Bool)

(assert (= bs!1157489 d!1537118))

(assert (=> bs!1157489 m!5784528))

(declare-fun m!5784734 () Bool)

(assert (=> bs!1157489 m!5784734))

(declare-fun m!5784736 () Bool)

(assert (=> bs!1157489 m!5784736))

(assert (=> b!4800762 d!1537118))

(declare-fun bs!1157490 () Bool)

(declare-fun d!1537120 () Bool)

(assert (= bs!1157490 (and d!1537120 d!1537058)))

(declare-fun lambda!232392 () Int)

(assert (=> bs!1157490 (= lambda!232392 lambda!232369)))

(declare-fun bs!1157491 () Bool)

(assert (= bs!1157491 (and d!1537120 start!495454)))

(assert (=> bs!1157491 (= lambda!232392 lambda!232357)))

(declare-fun bs!1157492 () Bool)

(assert (= bs!1157492 (and d!1537120 d!1537118)))

(assert (=> bs!1157492 (= lambda!232392 lambda!232389)))

(declare-fun bs!1157493 () Bool)

(assert (= bs!1157493 (and d!1537120 d!1537104)))

(assert (=> bs!1157493 (= lambda!232392 lambda!232386)))

(declare-fun bs!1157494 () Bool)

(assert (= bs!1157494 (and d!1537120 d!1537054)))

(assert (=> bs!1157494 (not (= lambda!232392 lambda!232363))))

(declare-fun e!2998043 () Bool)

(assert (=> d!1537120 e!2998043))

(declare-fun res!2041891 () Bool)

(assert (=> d!1537120 (=> (not res!2041891) (not e!2998043))))

(assert (=> d!1537120 (= res!2041891 (contains!17975 lm!2473 (hash!5018 hashF!1559 key!5896)))))

(declare-fun lt!1956516 () Unit!140691)

(declare-fun choose!34691 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> d!1537120 (= lt!1956516 (choose!34691 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1537120 (forall!12329 (toList!7003 lm!2473) lambda!232392)))

(assert (=> d!1537120 (= (lemmaInGenericMapThenInLongMap!366 lm!2473 key!5896 hashF!1559) lt!1956516)))

(declare-fun b!4800952 () Bool)

(assert (=> b!4800952 (= e!2998043 (isDefined!10323 (getPair!934 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537120 res!2041891) b!4800952))

(assert (=> d!1537120 m!5784530))

(assert (=> d!1537120 m!5784530))

(declare-fun m!5784738 () Bool)

(assert (=> d!1537120 m!5784738))

(declare-fun m!5784740 () Bool)

(assert (=> d!1537120 m!5784740))

(declare-fun m!5784742 () Bool)

(assert (=> d!1537120 m!5784742))

(assert (=> b!4800952 m!5784530))

(assert (=> b!4800952 m!5784530))

(declare-fun m!5784744 () Bool)

(assert (=> b!4800952 m!5784744))

(assert (=> b!4800952 m!5784744))

(declare-fun m!5784746 () Bool)

(assert (=> b!4800952 m!5784746))

(assert (=> b!4800952 m!5784746))

(declare-fun m!5784748 () Bool)

(assert (=> b!4800952 m!5784748))

(assert (=> b!4800762 d!1537120))

(declare-fun d!1537122 () Bool)

(declare-fun c!818316 () Bool)

(declare-fun e!2998049 () Bool)

(assert (=> d!1537122 (= c!818316 e!2998049)))

(declare-fun res!2041894 () Bool)

(assert (=> d!1537122 (=> (not res!2041894) (not e!2998049))))

(assert (=> d!1537122 (= res!2041894 ((_ is Cons!54323) (toList!7003 lm!2473)))))

(declare-fun e!2998048 () V!16140)

(assert (=> d!1537122 (= (getValue!150 (toList!7003 lm!2473) key!5896) e!2998048)))

(declare-fun b!4800961 () Bool)

(assert (=> b!4800961 (= e!2998049 (containsKey!4032 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896))))

(declare-fun b!4800959 () Bool)

(declare-fun get!18549 (Option!13182) tuple2!57016)

(assert (=> b!4800959 (= e!2998048 (_2!31802 (get!18549 (getPair!934 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896))))))

(declare-fun b!4800960 () Bool)

(assert (=> b!4800960 (= e!2998048 (getValue!150 (t!361897 (toList!7003 lm!2473)) key!5896))))

(assert (= (and d!1537122 res!2041894) b!4800961))

(assert (= (and d!1537122 c!818316) b!4800959))

(assert (= (and d!1537122 (not c!818316)) b!4800960))

(assert (=> b!4800961 m!5784492))

(declare-fun m!5784750 () Bool)

(assert (=> b!4800959 m!5784750))

(assert (=> b!4800959 m!5784750))

(declare-fun m!5784752 () Bool)

(assert (=> b!4800959 m!5784752))

(declare-fun m!5784754 () Bool)

(assert (=> b!4800960 m!5784754))

(assert (=> b!4800762 d!1537122))

(declare-fun d!1537124 () Bool)

(declare-fun hash!5020 (Hashable!6962 K!15894) (_ BitVec 64))

(assert (=> d!1537124 (= (hash!5018 hashF!1559 key!5896) (hash!5020 hashF!1559 key!5896))))

(declare-fun bs!1157495 () Bool)

(assert (= bs!1157495 d!1537124))

(declare-fun m!5784756 () Bool)

(assert (=> bs!1157495 m!5784756))

(assert (=> b!4800762 d!1537124))

(assert (=> b!4800767 d!1537066))

(declare-fun d!1537126 () Bool)

(declare-fun e!2998051 () Bool)

(assert (=> d!1537126 e!2998051))

(declare-fun res!2041895 () Bool)

(assert (=> d!1537126 (=> res!2041895 e!2998051)))

(declare-fun lt!1956519 () Bool)

(assert (=> d!1537126 (= res!2041895 (not lt!1956519))))

(declare-fun lt!1956517 () Bool)

(assert (=> d!1537126 (= lt!1956519 lt!1956517)))

(declare-fun lt!1956518 () Unit!140691)

(declare-fun e!2998050 () Unit!140691)

(assert (=> d!1537126 (= lt!1956518 e!2998050)))

(declare-fun c!818317 () Bool)

(assert (=> d!1537126 (= c!818317 lt!1956517)))

(assert (=> d!1537126 (= lt!1956517 (containsKey!4036 (toList!7003 lt!1956399) lt!1956400))))

(assert (=> d!1537126 (= (contains!17975 lt!1956399 lt!1956400) lt!1956519)))

(declare-fun b!4800962 () Bool)

(declare-fun lt!1956520 () Unit!140691)

(assert (=> b!4800962 (= e!2998050 lt!1956520)))

(assert (=> b!4800962 (= lt!1956520 (lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (toList!7003 lt!1956399) lt!1956400))))

(assert (=> b!4800962 (isDefined!10327 (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400))))

(declare-fun b!4800963 () Bool)

(declare-fun Unit!140703 () Unit!140691)

(assert (=> b!4800963 (= e!2998050 Unit!140703)))

(declare-fun b!4800964 () Bool)

(assert (=> b!4800964 (= e!2998051 (isDefined!10327 (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400)))))

(assert (= (and d!1537126 c!818317) b!4800962))

(assert (= (and d!1537126 (not c!818317)) b!4800963))

(assert (= (and d!1537126 (not res!2041895)) b!4800964))

(declare-fun m!5784758 () Bool)

(assert (=> d!1537126 m!5784758))

(declare-fun m!5784760 () Bool)

(assert (=> b!4800962 m!5784760))

(declare-fun m!5784762 () Bool)

(assert (=> b!4800962 m!5784762))

(assert (=> b!4800962 m!5784762))

(declare-fun m!5784764 () Bool)

(assert (=> b!4800962 m!5784764))

(assert (=> b!4800964 m!5784762))

(assert (=> b!4800964 m!5784762))

(assert (=> b!4800964 m!5784764))

(assert (=> b!4800767 d!1537126))

(declare-fun d!1537128 () Bool)

(declare-fun tail!9328 (List!54447) List!54447)

(assert (=> d!1537128 (= (tail!9326 lm!2473) (ListLongMap!5426 (tail!9328 (toList!7003 lm!2473))))))

(declare-fun bs!1157496 () Bool)

(assert (= bs!1157496 d!1537128))

(declare-fun m!5784766 () Bool)

(assert (=> bs!1157496 m!5784766))

(assert (=> b!4800767 d!1537128))

(declare-fun bs!1157497 () Bool)

(declare-fun d!1537130 () Bool)

(assert (= bs!1157497 (and d!1537130 d!1537058)))

(declare-fun lambda!232395 () Int)

(assert (=> bs!1157497 (= lambda!232395 lambda!232369)))

(declare-fun bs!1157498 () Bool)

(assert (= bs!1157498 (and d!1537130 start!495454)))

(assert (=> bs!1157498 (= lambda!232395 lambda!232357)))

(declare-fun bs!1157499 () Bool)

(assert (= bs!1157499 (and d!1537130 d!1537118)))

(assert (=> bs!1157499 (= lambda!232395 lambda!232389)))

(declare-fun bs!1157500 () Bool)

(assert (= bs!1157500 (and d!1537130 d!1537104)))

(assert (=> bs!1157500 (= lambda!232395 lambda!232386)))

(declare-fun bs!1157501 () Bool)

(assert (= bs!1157501 (and d!1537130 d!1537054)))

(assert (=> bs!1157501 (not (= lambda!232395 lambda!232363))))

(declare-fun bs!1157502 () Bool)

(assert (= bs!1157502 (and d!1537130 d!1537120)))

(assert (=> bs!1157502 (= lambda!232395 lambda!232392)))

(assert (=> d!1537130 (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896)))

(declare-fun lt!1956523 () Unit!140691)

(declare-fun choose!34692 (ListLongMap!5425 K!15894 Hashable!6962) Unit!140691)

(assert (=> d!1537130 (= lt!1956523 (choose!34692 lt!1956399 key!5896 hashF!1559))))

(assert (=> d!1537130 (forall!12329 (toList!7003 lt!1956399) lambda!232395)))

(assert (=> d!1537130 (= (lemmaListContainsThenExtractedMapContains!712 lt!1956399 key!5896 hashF!1559) lt!1956523)))

(declare-fun bs!1157503 () Bool)

(assert (= bs!1157503 d!1537130))

(assert (=> bs!1157503 m!5784504))

(assert (=> bs!1157503 m!5784504))

(assert (=> bs!1157503 m!5784510))

(declare-fun m!5784768 () Bool)

(assert (=> bs!1157503 m!5784768))

(declare-fun m!5784770 () Bool)

(assert (=> bs!1157503 m!5784770))

(assert (=> b!4800767 d!1537130))

(assert (=> b!4800767 d!1537104))

(declare-fun d!1537132 () Bool)

(declare-fun res!2041896 () Bool)

(declare-fun e!2998052 () Bool)

(assert (=> d!1537132 (=> res!2041896 e!2998052)))

(assert (=> d!1537132 (= res!2041896 ((_ is Nil!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537132 (= (forall!12329 (toList!7003 lt!1956399) lambda!232357) e!2998052)))

(declare-fun b!4800965 () Bool)

(declare-fun e!2998053 () Bool)

(assert (=> b!4800965 (= e!2998052 e!2998053)))

(declare-fun res!2041897 () Bool)

(assert (=> b!4800965 (=> (not res!2041897) (not e!2998053))))

(assert (=> b!4800965 (= res!2041897 (dynLambda!22093 lambda!232357 (h!60755 (toList!7003 lt!1956399))))))

(declare-fun b!4800966 () Bool)

(assert (=> b!4800966 (= e!2998053 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232357))))

(assert (= (and d!1537132 (not res!2041896)) b!4800965))

(assert (= (and b!4800965 res!2041897) b!4800966))

(declare-fun b_lambda!187605 () Bool)

(assert (=> (not b_lambda!187605) (not b!4800965)))

(declare-fun m!5784772 () Bool)

(assert (=> b!4800965 m!5784772))

(declare-fun m!5784774 () Bool)

(assert (=> b!4800966 m!5784774))

(assert (=> b!4800767 d!1537132))

(declare-fun b!4800967 () Bool)

(declare-fun e!2998057 () Unit!140691)

(declare-fun e!2998059 () Unit!140691)

(assert (=> b!4800967 (= e!2998057 e!2998059)))

(declare-fun c!818318 () Bool)

(declare-fun call!335372 () Bool)

(assert (=> b!4800967 (= c!818318 call!335372)))

(declare-fun b!4800968 () Bool)

(declare-fun Unit!140704 () Unit!140691)

(assert (=> b!4800968 (= e!2998059 Unit!140704)))

(declare-fun b!4800969 () Bool)

(declare-fun e!2998054 () Bool)

(assert (=> b!4800969 (= e!2998054 (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(declare-fun b!4800970 () Bool)

(declare-fun e!2998056 () List!54449)

(assert (=> b!4800970 (= e!2998056 (keys!19861 (extractMap!2489 (toList!7003 lm!2473))))))

(declare-fun b!4800971 () Bool)

(declare-fun e!2998055 () Bool)

(assert (=> b!4800971 (= e!2998055 (not (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lm!2473))) key!5896)))))

(declare-fun b!4800972 () Bool)

(assert (=> b!4800972 (= e!2998056 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))

(declare-fun b!4800973 () Bool)

(declare-fun e!2998058 () Bool)

(assert (=> b!4800973 (= e!2998058 e!2998054)))

(declare-fun res!2041898 () Bool)

(assert (=> b!4800973 (=> (not res!2041898) (not e!2998054))))

(assert (=> b!4800973 (= res!2041898 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896)))))

(declare-fun b!4800974 () Bool)

(assert (=> b!4800974 false))

(declare-fun lt!1956526 () Unit!140691)

(declare-fun lt!1956528 () Unit!140691)

(assert (=> b!4800974 (= lt!1956526 lt!1956528)))

(assert (=> b!4800974 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896)))

(assert (=> b!4800974 (= lt!1956528 (lemmaInGetKeysListThenContainsKey!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(declare-fun Unit!140705 () Unit!140691)

(assert (=> b!4800974 (= e!2998059 Unit!140705)))

(declare-fun b!4800975 () Bool)

(declare-fun lt!1956530 () Unit!140691)

(assert (=> b!4800975 (= e!2998057 lt!1956530)))

(declare-fun lt!1956531 () Unit!140691)

(assert (=> b!4800975 (= lt!1956531 (lemmaContainsKeyImpliesGetValueByKeyDefined!2189 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> b!4800975 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(declare-fun lt!1956527 () Unit!140691)

(assert (=> b!4800975 (= lt!1956527 lt!1956531)))

(assert (=> b!4800975 (= lt!1956530 (lemmaInListThenGetKeysListContains!1095 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> b!4800975 call!335372))

(declare-fun d!1537134 () Bool)

(assert (=> d!1537134 e!2998058))

(declare-fun res!2041900 () Bool)

(assert (=> d!1537134 (=> res!2041900 e!2998058)))

(assert (=> d!1537134 (= res!2041900 e!2998055)))

(declare-fun res!2041899 () Bool)

(assert (=> d!1537134 (=> (not res!2041899) (not e!2998055))))

(declare-fun lt!1956529 () Bool)

(assert (=> d!1537134 (= res!2041899 (not lt!1956529))))

(declare-fun lt!1956525 () Bool)

(assert (=> d!1537134 (= lt!1956529 lt!1956525)))

(declare-fun lt!1956524 () Unit!140691)

(assert (=> d!1537134 (= lt!1956524 e!2998057)))

(declare-fun c!818319 () Bool)

(assert (=> d!1537134 (= c!818319 lt!1956525)))

(assert (=> d!1537134 (= lt!1956525 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> d!1537134 (= (contains!17974 (extractMap!2489 (toList!7003 lm!2473)) key!5896) lt!1956529)))

(declare-fun bm!335367 () Bool)

(assert (=> bm!335367 (= call!335372 (contains!17978 e!2998056 key!5896))))

(declare-fun c!818320 () Bool)

(assert (=> bm!335367 (= c!818320 c!818319)))

(assert (= (and d!1537134 c!818319) b!4800975))

(assert (= (and d!1537134 (not c!818319)) b!4800967))

(assert (= (and b!4800967 c!818318) b!4800974))

(assert (= (and b!4800967 (not c!818318)) b!4800968))

(assert (= (or b!4800975 b!4800967) bm!335367))

(assert (= (and bm!335367 c!818320) b!4800972))

(assert (= (and bm!335367 (not c!818320)) b!4800970))

(assert (= (and d!1537134 res!2041899) b!4800971))

(assert (= (and d!1537134 (not res!2041900)) b!4800973))

(assert (= (and b!4800973 res!2041898) b!4800969))

(assert (=> b!4800971 m!5784500))

(declare-fun m!5784776 () Bool)

(assert (=> b!4800971 m!5784776))

(assert (=> b!4800971 m!5784776))

(declare-fun m!5784778 () Bool)

(assert (=> b!4800971 m!5784778))

(declare-fun m!5784780 () Bool)

(assert (=> d!1537134 m!5784780))

(declare-fun m!5784782 () Bool)

(assert (=> bm!335367 m!5784782))

(assert (=> b!4800970 m!5784500))

(assert (=> b!4800970 m!5784776))

(assert (=> b!4800969 m!5784500))

(assert (=> b!4800969 m!5784776))

(assert (=> b!4800969 m!5784776))

(assert (=> b!4800969 m!5784778))

(declare-fun m!5784784 () Bool)

(assert (=> b!4800973 m!5784784))

(assert (=> b!4800973 m!5784784))

(declare-fun m!5784786 () Bool)

(assert (=> b!4800973 m!5784786))

(assert (=> b!4800974 m!5784780))

(declare-fun m!5784788 () Bool)

(assert (=> b!4800974 m!5784788))

(declare-fun m!5784790 () Bool)

(assert (=> b!4800975 m!5784790))

(assert (=> b!4800975 m!5784784))

(assert (=> b!4800975 m!5784784))

(assert (=> b!4800975 m!5784786))

(declare-fun m!5784792 () Bool)

(assert (=> b!4800975 m!5784792))

(declare-fun m!5784794 () Bool)

(assert (=> b!4800972 m!5784794))

(assert (=> b!4800768 d!1537134))

(declare-fun bs!1157504 () Bool)

(declare-fun d!1537136 () Bool)

(assert (= bs!1157504 (and d!1537136 d!1537058)))

(declare-fun lambda!232396 () Int)

(assert (=> bs!1157504 (= lambda!232396 lambda!232369)))

(declare-fun bs!1157505 () Bool)

(assert (= bs!1157505 (and d!1537136 start!495454)))

(assert (=> bs!1157505 (= lambda!232396 lambda!232357)))

(declare-fun bs!1157506 () Bool)

(assert (= bs!1157506 (and d!1537136 d!1537118)))

(assert (=> bs!1157506 (= lambda!232396 lambda!232389)))

(declare-fun bs!1157507 () Bool)

(assert (= bs!1157507 (and d!1537136 d!1537104)))

(assert (=> bs!1157507 (= lambda!232396 lambda!232386)))

(declare-fun bs!1157508 () Bool)

(assert (= bs!1157508 (and d!1537136 d!1537054)))

(assert (=> bs!1157508 (not (= lambda!232396 lambda!232363))))

(declare-fun bs!1157509 () Bool)

(assert (= bs!1157509 (and d!1537136 d!1537120)))

(assert (=> bs!1157509 (= lambda!232396 lambda!232392)))

(declare-fun bs!1157510 () Bool)

(assert (= bs!1157510 (and d!1537136 d!1537130)))

(assert (=> bs!1157510 (= lambda!232396 lambda!232395)))

(declare-fun lt!1956532 () ListMap!6475)

(assert (=> d!1537136 (invariantList!1754 (toList!7004 lt!1956532))))

(declare-fun e!2998060 () ListMap!6475)

(assert (=> d!1537136 (= lt!1956532 e!2998060)))

(declare-fun c!818321 () Bool)

(assert (=> d!1537136 (= c!818321 ((_ is Cons!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537136 (forall!12329 (toList!7003 lm!2473) lambda!232396)))

(assert (=> d!1537136 (= (extractMap!2489 (toList!7003 lm!2473)) lt!1956532)))

(declare-fun b!4800976 () Bool)

(assert (=> b!4800976 (= e!2998060 (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (toList!7003 lm!2473))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))))))

(declare-fun b!4800977 () Bool)

(assert (=> b!4800977 (= e!2998060 (ListMap!6476 Nil!54322))))

(assert (= (and d!1537136 c!818321) b!4800976))

(assert (= (and d!1537136 (not c!818321)) b!4800977))

(declare-fun m!5784796 () Bool)

(assert (=> d!1537136 m!5784796))

(declare-fun m!5784798 () Bool)

(assert (=> d!1537136 m!5784798))

(declare-fun m!5784800 () Bool)

(assert (=> b!4800976 m!5784800))

(assert (=> b!4800976 m!5784800))

(declare-fun m!5784802 () Bool)

(assert (=> b!4800976 m!5784802))

(assert (=> b!4800768 d!1537136))

(declare-fun d!1537138 () Bool)

(declare-fun res!2041905 () Bool)

(declare-fun e!2998065 () Bool)

(assert (=> d!1537138 (=> res!2041905 e!2998065)))

(assert (=> d!1537138 (= res!2041905 (and ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473)))) (= (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))) key!5896)))))

(assert (=> d!1537138 (= (containsKey!4032 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896) e!2998065)))

(declare-fun b!4800982 () Bool)

(declare-fun e!2998066 () Bool)

(assert (=> b!4800982 (= e!2998065 e!2998066)))

(declare-fun res!2041906 () Bool)

(assert (=> b!4800982 (=> (not res!2041906) (not e!2998066))))

(assert (=> b!4800982 (= res!2041906 ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(declare-fun b!4800983 () Bool)

(assert (=> b!4800983 (= e!2998066 (containsKey!4032 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) key!5896))))

(assert (= (and d!1537138 (not res!2041905)) b!4800982))

(assert (= (and b!4800982 res!2041906) b!4800983))

(declare-fun m!5784804 () Bool)

(assert (=> b!4800983 m!5784804))

(assert (=> b!4800765 d!1537138))

(declare-fun d!1537140 () Bool)

(declare-fun isEmpty!29503 (Option!13182) Bool)

(assert (=> d!1537140 (= (isDefined!10323 (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896)) (not (isEmpty!29503 (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896))))))

(declare-fun bs!1157511 () Bool)

(assert (= bs!1157511 d!1537140))

(assert (=> bs!1157511 m!5784522))

(declare-fun m!5784806 () Bool)

(assert (=> bs!1157511 m!5784806))

(assert (=> b!4800764 d!1537140))

(declare-fun d!1537142 () Bool)

(declare-fun e!2998077 () Bool)

(assert (=> d!1537142 e!2998077))

(declare-fun res!2041917 () Bool)

(assert (=> d!1537142 (=> res!2041917 e!2998077)))

(declare-fun e!2998081 () Bool)

(assert (=> d!1537142 (= res!2041917 e!2998081)))

(declare-fun res!2041916 () Bool)

(assert (=> d!1537142 (=> (not res!2041916) (not e!2998081))))

(declare-fun lt!1956535 () Option!13182)

(assert (=> d!1537142 (= res!2041916 (isEmpty!29503 lt!1956535))))

(declare-fun e!2998080 () Option!13182)

(assert (=> d!1537142 (= lt!1956535 e!2998080)))

(declare-fun c!818326 () Bool)

(assert (=> d!1537142 (= c!818326 (and ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400)) (= (_1!31802 (h!60754 (apply!13035 lm!2473 lt!1956400))) key!5896)))))

(declare-fun noDuplicateKeys!2362 (List!54446) Bool)

(assert (=> d!1537142 (noDuplicateKeys!2362 (apply!13035 lm!2473 lt!1956400))))

(assert (=> d!1537142 (= (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896) lt!1956535)))

(declare-fun b!4801000 () Bool)

(assert (=> b!4801000 (= e!2998081 (not (containsKey!4032 (apply!13035 lm!2473 lt!1956400) key!5896)))))

(declare-fun b!4801001 () Bool)

(declare-fun e!2998078 () Option!13182)

(assert (=> b!4801001 (= e!2998078 None!13181)))

(declare-fun b!4801002 () Bool)

(declare-fun res!2041915 () Bool)

(declare-fun e!2998079 () Bool)

(assert (=> b!4801002 (=> (not res!2041915) (not e!2998079))))

(assert (=> b!4801002 (= res!2041915 (= (_1!31802 (get!18549 lt!1956535)) key!5896))))

(declare-fun b!4801003 () Bool)

(assert (=> b!4801003 (= e!2998080 (Some!13181 (h!60754 (apply!13035 lm!2473 lt!1956400))))))

(declare-fun b!4801004 () Bool)

(declare-fun contains!17979 (List!54446 tuple2!57016) Bool)

(assert (=> b!4801004 (= e!2998079 (contains!17979 (apply!13035 lm!2473 lt!1956400) (get!18549 lt!1956535)))))

(declare-fun b!4801005 () Bool)

(assert (=> b!4801005 (= e!2998078 (getPair!934 (t!361896 (apply!13035 lm!2473 lt!1956400)) key!5896))))

(declare-fun b!4801006 () Bool)

(assert (=> b!4801006 (= e!2998080 e!2998078)))

(declare-fun c!818327 () Bool)

(assert (=> b!4801006 (= c!818327 ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400)))))

(declare-fun b!4801007 () Bool)

(assert (=> b!4801007 (= e!2998077 e!2998079)))

(declare-fun res!2041918 () Bool)

(assert (=> b!4801007 (=> (not res!2041918) (not e!2998079))))

(assert (=> b!4801007 (= res!2041918 (isDefined!10323 lt!1956535))))

(assert (= (and d!1537142 c!818326) b!4801003))

(assert (= (and d!1537142 (not c!818326)) b!4801006))

(assert (= (and b!4801006 c!818327) b!4801005))

(assert (= (and b!4801006 (not c!818327)) b!4801001))

(assert (= (and d!1537142 res!2041916) b!4801000))

(assert (= (and d!1537142 (not res!2041917)) b!4801007))

(assert (= (and b!4801007 res!2041918) b!4801002))

(assert (= (and b!4801002 res!2041915) b!4801004))

(declare-fun m!5784808 () Bool)

(assert (=> d!1537142 m!5784808))

(assert (=> d!1537142 m!5784520))

(declare-fun m!5784810 () Bool)

(assert (=> d!1537142 m!5784810))

(declare-fun m!5784812 () Bool)

(assert (=> b!4801005 m!5784812))

(assert (=> b!4801000 m!5784520))

(declare-fun m!5784814 () Bool)

(assert (=> b!4801000 m!5784814))

(declare-fun m!5784816 () Bool)

(assert (=> b!4801002 m!5784816))

(assert (=> b!4801004 m!5784816))

(assert (=> b!4801004 m!5784520))

(assert (=> b!4801004 m!5784816))

(declare-fun m!5784818 () Bool)

(assert (=> b!4801004 m!5784818))

(declare-fun m!5784820 () Bool)

(assert (=> b!4801007 m!5784820))

(assert (=> b!4800764 d!1537142))

(declare-fun d!1537144 () Bool)

(declare-fun get!18550 (Option!13186) List!54446)

(assert (=> d!1537144 (= (apply!13035 lm!2473 lt!1956400) (get!18550 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400)))))

(declare-fun bs!1157512 () Bool)

(assert (= bs!1157512 d!1537144))

(assert (=> bs!1157512 m!5784728))

(assert (=> bs!1157512 m!5784728))

(declare-fun m!5784822 () Bool)

(assert (=> bs!1157512 m!5784822))

(assert (=> b!4800764 d!1537144))

(declare-fun bs!1157513 () Bool)

(declare-fun d!1537146 () Bool)

(assert (= bs!1157513 (and d!1537146 d!1537058)))

(declare-fun lambda!232397 () Int)

(assert (=> bs!1157513 (not (= lambda!232397 lambda!232369))))

(declare-fun bs!1157514 () Bool)

(assert (= bs!1157514 (and d!1537146 d!1537136)))

(assert (=> bs!1157514 (not (= lambda!232397 lambda!232396))))

(declare-fun bs!1157515 () Bool)

(assert (= bs!1157515 (and d!1537146 start!495454)))

(assert (=> bs!1157515 (not (= lambda!232397 lambda!232357))))

(declare-fun bs!1157516 () Bool)

(assert (= bs!1157516 (and d!1537146 d!1537118)))

(assert (=> bs!1157516 (not (= lambda!232397 lambda!232389))))

(declare-fun bs!1157517 () Bool)

(assert (= bs!1157517 (and d!1537146 d!1537104)))

(assert (=> bs!1157517 (not (= lambda!232397 lambda!232386))))

(declare-fun bs!1157518 () Bool)

(assert (= bs!1157518 (and d!1537146 d!1537054)))

(assert (=> bs!1157518 (= lambda!232397 lambda!232363)))

(declare-fun bs!1157519 () Bool)

(assert (= bs!1157519 (and d!1537146 d!1537120)))

(assert (=> bs!1157519 (not (= lambda!232397 lambda!232392))))

(declare-fun bs!1157520 () Bool)

(assert (= bs!1157520 (and d!1537146 d!1537130)))

(assert (=> bs!1157520 (not (= lambda!232397 lambda!232395))))

(assert (=> d!1537146 true))

(assert (=> d!1537146 (= (allKeysSameHashInMap!2367 lt!1956399 hashF!1559) (forall!12329 (toList!7003 lt!1956399) lambda!232397))))

(declare-fun bs!1157521 () Bool)

(assert (= bs!1157521 d!1537146))

(declare-fun m!5784824 () Bool)

(assert (=> bs!1157521 m!5784824))

(assert (=> b!4800759 d!1537146))

(declare-fun b!4801012 () Bool)

(declare-fun e!2998084 () Bool)

(declare-fun tp!1358385 () Bool)

(declare-fun tp!1358386 () Bool)

(assert (=> b!4801012 (= e!2998084 (and tp!1358385 tp!1358386))))

(assert (=> b!4800763 (= tp!1358374 e!2998084)))

(assert (= (and b!4800763 ((_ is Cons!54323) (toList!7003 lm!2473))) b!4801012))

(declare-fun b_lambda!187607 () Bool)

(assert (= b_lambda!187605 (or start!495454 b_lambda!187607)))

(declare-fun bs!1157522 () Bool)

(declare-fun d!1537148 () Bool)

(assert (= bs!1157522 (and d!1537148 start!495454)))

(assert (=> bs!1157522 (= (dynLambda!22093 lambda!232357 (h!60755 (toList!7003 lt!1956399))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(declare-fun m!5784826 () Bool)

(assert (=> bs!1157522 m!5784826))

(assert (=> b!4800965 d!1537148))

(declare-fun b_lambda!187609 () Bool)

(assert (= b_lambda!187603 (or start!495454 b_lambda!187609)))

(declare-fun bs!1157523 () Bool)

(declare-fun d!1537150 () Bool)

(assert (= bs!1157523 (and d!1537150 start!495454)))

(assert (=> bs!1157523 (= (dynLambda!22093 lambda!232357 (h!60755 (toList!7003 lm!2473))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(declare-fun m!5784828 () Bool)

(assert (=> bs!1157523 m!5784828))

(assert (=> b!4800930 d!1537150))

(check-sat (not b!4800969) (not d!1537058) (not b!4800909) (not b!4800908) (not b!4800940) (not b!4800912) (not b!4800975) (not b!4800962) (not b!4800983) (not d!1537112) (not d!1537054) (not b_lambda!187607) (not d!1537144) (not b!4800973) (not b!4800959) (not b!4800931) (not d!1537118) (not d!1537066) (not d!1537126) (not d!1537120) (not b_lambda!187609) (not d!1537140) (not b!4800947) (not b!4800914) tp_is_empty!33711 (not b!4800952) (not b!4801000) (not d!1537114) (not b!4800913) (not b!4800938) (not d!1537142) (not b!4801002) (not b!4801005) (not b!4800974) (not bm!335367) (not d!1537146) (not d!1537136) (not b!4800972) (not b!4800976) (not b!4801004) (not b!4800960) (not d!1537104) (not b!4801012) (not bs!1157522) (not b!4800961) (not bs!1157523) tp_is_empty!33709 (not d!1537130) (not b!4800971) (not bm!335366) (not b!4800964) (not b!4800970) (not b!4801007) (not b!4800910) (not d!1537124) (not d!1537128) (not b!4800911) (not b!4800966) (not d!1537134) (not b!4800924) (not b!4800949))
(check-sat)
(get-model)

(declare-fun d!1537168 () Bool)

(declare-fun res!2041947 () Bool)

(declare-fun e!2998125 () Bool)

(assert (=> d!1537168 (=> res!2041947 e!2998125)))

(assert (=> d!1537168 (= res!2041947 (or ((_ is Nil!54323) (toList!7003 lm!2473)) ((_ is Nil!54323) (t!361897 (toList!7003 lm!2473)))))))

(assert (=> d!1537168 (= (isStrictlySorted!900 (toList!7003 lm!2473)) e!2998125)))

(declare-fun b!4801087 () Bool)

(declare-fun e!2998126 () Bool)

(assert (=> b!4801087 (= e!2998125 e!2998126)))

(declare-fun res!2041948 () Bool)

(assert (=> b!4801087 (=> (not res!2041948) (not e!2998126))))

(assert (=> b!4801087 (= res!2041948 (bvslt (_1!31803 (h!60755 (toList!7003 lm!2473))) (_1!31803 (h!60755 (t!361897 (toList!7003 lm!2473))))))))

(declare-fun b!4801088 () Bool)

(assert (=> b!4801088 (= e!2998126 (isStrictlySorted!900 (t!361897 (toList!7003 lm!2473))))))

(assert (= (and d!1537168 (not res!2041947)) b!4801087))

(assert (= (and b!4801087 res!2041948) b!4801088))

(declare-fun m!5784912 () Bool)

(assert (=> b!4801088 m!5784912))

(assert (=> d!1537112 d!1537168))

(declare-fun d!1537172 () Bool)

(assert (=> d!1537172 (= (get!18549 (getPair!934 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896)) (v!48506 (getPair!934 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896)))))

(assert (=> b!4800959 d!1537172))

(declare-fun d!1537174 () Bool)

(declare-fun e!2998127 () Bool)

(assert (=> d!1537174 e!2998127))

(declare-fun res!2041951 () Bool)

(assert (=> d!1537174 (=> res!2041951 e!2998127)))

(declare-fun e!2998131 () Bool)

(assert (=> d!1537174 (= res!2041951 e!2998131)))

(declare-fun res!2041950 () Bool)

(assert (=> d!1537174 (=> (not res!2041950) (not e!2998131))))

(declare-fun lt!1956624 () Option!13182)

(assert (=> d!1537174 (= res!2041950 (isEmpty!29503 lt!1956624))))

(declare-fun e!2998130 () Option!13182)

(assert (=> d!1537174 (= lt!1956624 e!2998130)))

(declare-fun c!818349 () Bool)

(assert (=> d!1537174 (= c!818349 (and ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473)))) (= (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))) key!5896)))))

(assert (=> d!1537174 (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473))))))

(assert (=> d!1537174 (= (getPair!934 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896) lt!1956624)))

(declare-fun b!4801089 () Bool)

(assert (=> b!4801089 (= e!2998131 (not (containsKey!4032 (_2!31803 (h!60755 (toList!7003 lm!2473))) key!5896)))))

(declare-fun b!4801090 () Bool)

(declare-fun e!2998128 () Option!13182)

(assert (=> b!4801090 (= e!2998128 None!13181)))

(declare-fun b!4801091 () Bool)

(declare-fun res!2041949 () Bool)

(declare-fun e!2998129 () Bool)

(assert (=> b!4801091 (=> (not res!2041949) (not e!2998129))))

(assert (=> b!4801091 (= res!2041949 (= (_1!31802 (get!18549 lt!1956624)) key!5896))))

(declare-fun b!4801092 () Bool)

(assert (=> b!4801092 (= e!2998130 (Some!13181 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(declare-fun b!4801093 () Bool)

(assert (=> b!4801093 (= e!2998129 (contains!17979 (_2!31803 (h!60755 (toList!7003 lm!2473))) (get!18549 lt!1956624)))))

(declare-fun b!4801094 () Bool)

(assert (=> b!4801094 (= e!2998128 (getPair!934 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) key!5896))))

(declare-fun b!4801095 () Bool)

(assert (=> b!4801095 (= e!2998130 e!2998128)))

(declare-fun c!818350 () Bool)

(assert (=> b!4801095 (= c!818350 ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(declare-fun b!4801096 () Bool)

(assert (=> b!4801096 (= e!2998127 e!2998129)))

(declare-fun res!2041952 () Bool)

(assert (=> b!4801096 (=> (not res!2041952) (not e!2998129))))

(assert (=> b!4801096 (= res!2041952 (isDefined!10323 lt!1956624))))

(assert (= (and d!1537174 c!818349) b!4801092))

(assert (= (and d!1537174 (not c!818349)) b!4801095))

(assert (= (and b!4801095 c!818350) b!4801094))

(assert (= (and b!4801095 (not c!818350)) b!4801090))

(assert (= (and d!1537174 res!2041950) b!4801089))

(assert (= (and d!1537174 (not res!2041951)) b!4801096))

(assert (= (and b!4801096 res!2041952) b!4801091))

(assert (= (and b!4801091 res!2041949) b!4801093))

(declare-fun m!5784914 () Bool)

(assert (=> d!1537174 m!5784914))

(assert (=> d!1537174 m!5784828))

(declare-fun m!5784916 () Bool)

(assert (=> b!4801094 m!5784916))

(assert (=> b!4801089 m!5784492))

(declare-fun m!5784918 () Bool)

(assert (=> b!4801091 m!5784918))

(assert (=> b!4801093 m!5784918))

(assert (=> b!4801093 m!5784918))

(declare-fun m!5784920 () Bool)

(assert (=> b!4801093 m!5784920))

(declare-fun m!5784922 () Bool)

(assert (=> b!4801096 m!5784922))

(assert (=> b!4800959 d!1537174))

(declare-fun b!4801270 () Bool)

(assert (=> b!4801270 true))

(declare-fun bs!1157621 () Bool)

(declare-fun b!4801268 () Bool)

(assert (= bs!1157621 (and b!4801268 b!4801270)))

(declare-fun lambda!232489 () Int)

(declare-fun lambda!232488 () Int)

(assert (=> bs!1157621 (= lambda!232489 lambda!232488)))

(assert (=> b!4801268 true))

(declare-fun lambda!232490 () Int)

(declare-fun lt!1956743 () ListMap!6475)

(assert (=> bs!1157621 (= (= lt!1956743 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232490 lambda!232488))))

(assert (=> b!4801268 (= (= lt!1956743 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232490 lambda!232489))))

(assert (=> b!4801268 true))

(declare-fun bs!1157622 () Bool)

(declare-fun d!1537176 () Bool)

(assert (= bs!1157622 (and d!1537176 b!4801270)))

(declare-fun lambda!232491 () Int)

(declare-fun lt!1956739 () ListMap!6475)

(assert (=> bs!1157622 (= (= lt!1956739 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232491 lambda!232488))))

(declare-fun bs!1157623 () Bool)

(assert (= bs!1157623 (and d!1537176 b!4801268)))

(assert (=> bs!1157623 (= (= lt!1956739 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232491 lambda!232489))))

(assert (=> bs!1157623 (= (= lt!1956739 lt!1956743) (= lambda!232491 lambda!232490))))

(assert (=> d!1537176 true))

(declare-fun b!4801267 () Bool)

(declare-fun e!2998259 () Bool)

(declare-fun forall!12332 (List!54446 Int) Bool)

(assert (=> b!4801267 (= e!2998259 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) lambda!232490))))

(declare-fun e!2998260 () Bool)

(assert (=> d!1537176 e!2998260))

(declare-fun res!2042069 () Bool)

(assert (=> d!1537176 (=> (not res!2042069) (not e!2998260))))

(assert (=> d!1537176 (= res!2042069 (forall!12332 (_2!31803 (h!60755 (toList!7003 lm!2473))) lambda!232491))))

(declare-fun e!2998261 () ListMap!6475)

(assert (=> d!1537176 (= lt!1956739 e!2998261)))

(declare-fun c!818374 () Bool)

(assert (=> d!1537176 (= c!818374 ((_ is Nil!54322) (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(assert (=> d!1537176 (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473))))))

(assert (=> d!1537176 (= (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (toList!7003 lm!2473))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) lt!1956739)))

(assert (=> b!4801268 (= e!2998261 lt!1956743)))

(declare-fun lt!1956736 () ListMap!6475)

(declare-fun +!2505 (ListMap!6475 tuple2!57016) ListMap!6475)

(assert (=> b!4801268 (= lt!1956736 (+!2505 (extractMap!2489 (t!361897 (toList!7003 lm!2473))) (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(assert (=> b!4801268 (= lt!1956743 (addToMapMapFromBucket!1731 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) (+!2505 (extractMap!2489 (t!361897 (toList!7003 lm!2473))) (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))))

(declare-fun lt!1956735 () Unit!140691)

(declare-fun call!335392 () Unit!140691)

(assert (=> b!4801268 (= lt!1956735 call!335392)))

(assert (=> b!4801268 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) lambda!232489)))

(declare-fun lt!1956747 () Unit!140691)

(assert (=> b!4801268 (= lt!1956747 lt!1956735)))

(assert (=> b!4801268 (forall!12332 (toList!7004 lt!1956736) lambda!232490)))

(declare-fun lt!1956748 () Unit!140691)

(declare-fun Unit!140721 () Unit!140691)

(assert (=> b!4801268 (= lt!1956748 Unit!140721)))

(assert (=> b!4801268 (forall!12332 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) lambda!232490)))

(declare-fun lt!1956729 () Unit!140691)

(declare-fun Unit!140722 () Unit!140691)

(assert (=> b!4801268 (= lt!1956729 Unit!140722)))

(declare-fun lt!1956733 () Unit!140691)

(declare-fun Unit!140723 () Unit!140691)

(assert (=> b!4801268 (= lt!1956733 Unit!140723)))

(declare-fun lt!1956730 () Unit!140691)

(declare-fun forallContained!4214 (List!54446 Int tuple2!57016) Unit!140691)

(assert (=> b!4801268 (= lt!1956730 (forallContained!4214 (toList!7004 lt!1956736) lambda!232490 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(assert (=> b!4801268 (contains!17974 lt!1956736 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(declare-fun lt!1956742 () Unit!140691)

(declare-fun Unit!140724 () Unit!140691)

(assert (=> b!4801268 (= lt!1956742 Unit!140724)))

(assert (=> b!4801268 (contains!17974 lt!1956743 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(declare-fun lt!1956749 () Unit!140691)

(declare-fun Unit!140725 () Unit!140691)

(assert (=> b!4801268 (= lt!1956749 Unit!140725)))

(assert (=> b!4801268 (forall!12332 (_2!31803 (h!60755 (toList!7003 lm!2473))) lambda!232490)))

(declare-fun lt!1956737 () Unit!140691)

(declare-fun Unit!140726 () Unit!140691)

(assert (=> b!4801268 (= lt!1956737 Unit!140726)))

(assert (=> b!4801268 (forall!12332 (toList!7004 lt!1956736) lambda!232490)))

(declare-fun lt!1956741 () Unit!140691)

(declare-fun Unit!140727 () Unit!140691)

(assert (=> b!4801268 (= lt!1956741 Unit!140727)))

(declare-fun lt!1956746 () Unit!140691)

(declare-fun Unit!140728 () Unit!140691)

(assert (=> b!4801268 (= lt!1956746 Unit!140728)))

(declare-fun lt!1956738 () Unit!140691)

(declare-fun addForallContainsKeyThenBeforeAdding!960 (ListMap!6475 ListMap!6475 K!15894 V!16140) Unit!140691)

(assert (=> b!4801268 (= lt!1956738 (addForallContainsKeyThenBeforeAdding!960 (extractMap!2489 (t!361897 (toList!7003 lm!2473))) lt!1956743 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))) (_2!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))))

(declare-fun call!335391 () Bool)

(assert (=> b!4801268 call!335391))

(declare-fun lt!1956745 () Unit!140691)

(assert (=> b!4801268 (= lt!1956745 lt!1956738)))

(declare-fun call!335393 () Bool)

(assert (=> b!4801268 call!335393))

(declare-fun lt!1956740 () Unit!140691)

(declare-fun Unit!140729 () Unit!140691)

(assert (=> b!4801268 (= lt!1956740 Unit!140729)))

(declare-fun res!2042071 () Bool)

(assert (=> b!4801268 (= res!2042071 (forall!12332 (_2!31803 (h!60755 (toList!7003 lm!2473))) lambda!232490))))

(assert (=> b!4801268 (=> (not res!2042071) (not e!2998259))))

(assert (=> b!4801268 e!2998259))

(declare-fun lt!1956744 () Unit!140691)

(declare-fun Unit!140730 () Unit!140691)

(assert (=> b!4801268 (= lt!1956744 Unit!140730)))

(declare-fun bm!335386 () Bool)

(assert (=> bm!335386 (= call!335393 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (ite c!818374 lambda!232488 lambda!232490)))))

(declare-fun b!4801269 () Bool)

(assert (=> b!4801269 (= e!2998260 (invariantList!1754 (toList!7004 lt!1956739)))))

(assert (=> b!4801270 (= e!2998261 (extractMap!2489 (t!361897 (toList!7003 lm!2473))))))

(declare-fun lt!1956731 () Unit!140691)

(assert (=> b!4801270 (= lt!1956731 call!335392)))

(assert (=> b!4801270 call!335393))

(declare-fun lt!1956734 () Unit!140691)

(assert (=> b!4801270 (= lt!1956734 lt!1956731)))

(assert (=> b!4801270 call!335391))

(declare-fun lt!1956732 () Unit!140691)

(declare-fun Unit!140734 () Unit!140691)

(assert (=> b!4801270 (= lt!1956732 Unit!140734)))

(declare-fun bm!335387 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!961 (ListMap!6475) Unit!140691)

(assert (=> bm!335387 (= call!335392 (lemmaContainsAllItsOwnKeys!961 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))))))

(declare-fun b!4801271 () Bool)

(declare-fun res!2042070 () Bool)

(assert (=> b!4801271 (=> (not res!2042070) (not e!2998260))))

(assert (=> b!4801271 (= res!2042070 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) lambda!232491))))

(declare-fun bm!335388 () Bool)

(assert (=> bm!335388 (= call!335391 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (ite c!818374 lambda!232488 lambda!232490)))))

(assert (= (and d!1537176 c!818374) b!4801270))

(assert (= (and d!1537176 (not c!818374)) b!4801268))

(assert (= (and b!4801268 res!2042071) b!4801267))

(assert (= (or b!4801270 b!4801268) bm!335388))

(assert (= (or b!4801270 b!4801268) bm!335386))

(assert (= (or b!4801270 b!4801268) bm!335387))

(assert (= (and d!1537176 res!2042069) b!4801271))

(assert (= (and b!4801271 res!2042070) b!4801269))

(declare-fun m!5785210 () Bool)

(assert (=> bm!335388 m!5785210))

(declare-fun m!5785212 () Bool)

(assert (=> b!4801271 m!5785212))

(declare-fun m!5785214 () Bool)

(assert (=> d!1537176 m!5785214))

(assert (=> d!1537176 m!5784828))

(assert (=> bm!335387 m!5784800))

(declare-fun m!5785216 () Bool)

(assert (=> bm!335387 m!5785216))

(declare-fun m!5785218 () Bool)

(assert (=> b!4801269 m!5785218))

(declare-fun m!5785220 () Bool)

(assert (=> b!4801267 m!5785220))

(declare-fun m!5785222 () Bool)

(assert (=> b!4801268 m!5785222))

(assert (=> b!4801268 m!5784800))

(declare-fun m!5785224 () Bool)

(assert (=> b!4801268 m!5785224))

(assert (=> b!4801268 m!5784800))

(declare-fun m!5785226 () Bool)

(assert (=> b!4801268 m!5785226))

(declare-fun m!5785228 () Bool)

(assert (=> b!4801268 m!5785228))

(declare-fun m!5785230 () Bool)

(assert (=> b!4801268 m!5785230))

(assert (=> b!4801268 m!5785224))

(declare-fun m!5785232 () Bool)

(assert (=> b!4801268 m!5785232))

(declare-fun m!5785234 () Bool)

(assert (=> b!4801268 m!5785234))

(assert (=> b!4801268 m!5785230))

(declare-fun m!5785236 () Bool)

(assert (=> b!4801268 m!5785236))

(declare-fun m!5785238 () Bool)

(assert (=> b!4801268 m!5785238))

(declare-fun m!5785240 () Bool)

(assert (=> b!4801268 m!5785240))

(assert (=> b!4801268 m!5785238))

(assert (=> bm!335386 m!5785210))

(assert (=> b!4800976 d!1537176))

(declare-fun bs!1157624 () Bool)

(declare-fun d!1537322 () Bool)

(assert (= bs!1157624 (and d!1537322 d!1537058)))

(declare-fun lambda!232492 () Int)

(assert (=> bs!1157624 (= lambda!232492 lambda!232369)))

(declare-fun bs!1157625 () Bool)

(assert (= bs!1157625 (and d!1537322 d!1537136)))

(assert (=> bs!1157625 (= lambda!232492 lambda!232396)))

(declare-fun bs!1157626 () Bool)

(assert (= bs!1157626 (and d!1537322 start!495454)))

(assert (=> bs!1157626 (= lambda!232492 lambda!232357)))

(declare-fun bs!1157627 () Bool)

(assert (= bs!1157627 (and d!1537322 d!1537118)))

(assert (=> bs!1157627 (= lambda!232492 lambda!232389)))

(declare-fun bs!1157628 () Bool)

(assert (= bs!1157628 (and d!1537322 d!1537104)))

(assert (=> bs!1157628 (= lambda!232492 lambda!232386)))

(declare-fun bs!1157629 () Bool)

(assert (= bs!1157629 (and d!1537322 d!1537054)))

(assert (=> bs!1157629 (not (= lambda!232492 lambda!232363))))

(declare-fun bs!1157630 () Bool)

(assert (= bs!1157630 (and d!1537322 d!1537120)))

(assert (=> bs!1157630 (= lambda!232492 lambda!232392)))

(declare-fun bs!1157631 () Bool)

(assert (= bs!1157631 (and d!1537322 d!1537130)))

(assert (=> bs!1157631 (= lambda!232492 lambda!232395)))

(declare-fun bs!1157632 () Bool)

(assert (= bs!1157632 (and d!1537322 d!1537146)))

(assert (=> bs!1157632 (not (= lambda!232492 lambda!232397))))

(declare-fun lt!1956750 () ListMap!6475)

(assert (=> d!1537322 (invariantList!1754 (toList!7004 lt!1956750))))

(declare-fun e!2998262 () ListMap!6475)

(assert (=> d!1537322 (= lt!1956750 e!2998262)))

(declare-fun c!818375 () Bool)

(assert (=> d!1537322 (= c!818375 ((_ is Cons!54323) (t!361897 (toList!7003 lm!2473))))))

(assert (=> d!1537322 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232492)))

(assert (=> d!1537322 (= (extractMap!2489 (t!361897 (toList!7003 lm!2473))) lt!1956750)))

(declare-fun b!4801274 () Bool)

(assert (=> b!4801274 (= e!2998262 (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (t!361897 (toList!7003 lm!2473)))) (extractMap!2489 (t!361897 (t!361897 (toList!7003 lm!2473))))))))

(declare-fun b!4801275 () Bool)

(assert (=> b!4801275 (= e!2998262 (ListMap!6476 Nil!54322))))

(assert (= (and d!1537322 c!818375) b!4801274))

(assert (= (and d!1537322 (not c!818375)) b!4801275))

(declare-fun m!5785242 () Bool)

(assert (=> d!1537322 m!5785242))

(declare-fun m!5785244 () Bool)

(assert (=> d!1537322 m!5785244))

(declare-fun m!5785246 () Bool)

(assert (=> b!4801274 m!5785246))

(assert (=> b!4801274 m!5785246))

(declare-fun m!5785248 () Bool)

(assert (=> b!4801274 m!5785248))

(assert (=> b!4800976 d!1537322))

(assert (=> b!4800947 d!1537138))

(assert (=> b!4800961 d!1537138))

(declare-fun d!1537324 () Bool)

(declare-fun res!2042073 () Bool)

(declare-fun e!2998263 () Bool)

(assert (=> d!1537324 (=> res!2042073 e!2998263)))

(declare-fun e!2998264 () Bool)

(assert (=> d!1537324 (= res!2042073 e!2998264)))

(declare-fun res!2042072 () Bool)

(assert (=> d!1537324 (=> (not res!2042072) (not e!2998264))))

(assert (=> d!1537324 (= res!2042072 ((_ is Cons!54323) (t!361897 (toList!7003 lm!2473))))))

(assert (=> d!1537324 (= (containsKeyBiggerList!604 (t!361897 (toList!7003 lm!2473)) key!5896) e!2998263)))

(declare-fun b!4801276 () Bool)

(assert (=> b!4801276 (= e!2998264 (containsKey!4032 (_2!31803 (h!60755 (t!361897 (toList!7003 lm!2473)))) key!5896))))

(declare-fun b!4801277 () Bool)

(declare-fun e!2998265 () Bool)

(assert (=> b!4801277 (= e!2998263 e!2998265)))

(declare-fun res!2042074 () Bool)

(assert (=> b!4801277 (=> (not res!2042074) (not e!2998265))))

(assert (=> b!4801277 (= res!2042074 ((_ is Cons!54323) (t!361897 (toList!7003 lm!2473))))))

(declare-fun b!4801278 () Bool)

(assert (=> b!4801278 (= e!2998265 (containsKeyBiggerList!604 (t!361897 (t!361897 (toList!7003 lm!2473))) key!5896))))

(assert (= (and d!1537324 res!2042072) b!4801276))

(assert (= (and d!1537324 (not res!2042073)) b!4801277))

(assert (= (and b!4801277 res!2042074) b!4801278))

(declare-fun m!5785250 () Bool)

(assert (=> b!4801276 m!5785250))

(declare-fun m!5785252 () Bool)

(assert (=> b!4801278 m!5785252))

(assert (=> b!4800949 d!1537324))

(declare-fun d!1537326 () Bool)

(declare-fun lt!1956753 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9746 (List!54449) (InoxSet K!15894))

(assert (=> d!1537326 (= lt!1956753 (select (content!9746 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896))))

(declare-fun e!2998271 () Bool)

(assert (=> d!1537326 (= lt!1956753 e!2998271)))

(declare-fun res!2042080 () Bool)

(assert (=> d!1537326 (=> (not res!2042080) (not e!2998271))))

(assert (=> d!1537326 (= res!2042080 ((_ is Cons!54325) (keys!19861 (extractMap!2489 (toList!7003 lt!1956399)))))))

(assert (=> d!1537326 (= (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) lt!1956753)))

(declare-fun b!4801283 () Bool)

(declare-fun e!2998270 () Bool)

(assert (=> b!4801283 (= e!2998271 e!2998270)))

(declare-fun res!2042079 () Bool)

(assert (=> b!4801283 (=> res!2042079 e!2998270)))

(assert (=> b!4801283 (= res!2042079 (= (h!60757 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896))))

(declare-fun b!4801284 () Bool)

(assert (=> b!4801284 (= e!2998270 (contains!17978 (t!361899 (keys!19861 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896))))

(assert (= (and d!1537326 res!2042080) b!4801283))

(assert (= (and b!4801283 (not res!2042079)) b!4801284))

(assert (=> d!1537326 m!5784682))

(declare-fun m!5785254 () Bool)

(assert (=> d!1537326 m!5785254))

(declare-fun m!5785256 () Bool)

(assert (=> d!1537326 m!5785256))

(declare-fun m!5785258 () Bool)

(assert (=> b!4801284 m!5785258))

(assert (=> b!4800910 d!1537326))

(declare-fun b!4801292 () Bool)

(assert (=> b!4801292 true))

(declare-fun d!1537328 () Bool)

(declare-fun e!2998274 () Bool)

(assert (=> d!1537328 e!2998274))

(declare-fun res!2042087 () Bool)

(assert (=> d!1537328 (=> (not res!2042087) (not e!2998274))))

(declare-fun lt!1956756 () List!54449)

(declare-fun noDuplicate!935 (List!54449) Bool)

(assert (=> d!1537328 (= res!2042087 (noDuplicate!935 lt!1956756))))

(assert (=> d!1537328 (= lt!1956756 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))

(assert (=> d!1537328 (= (keys!19861 (extractMap!2489 (toList!7003 lt!1956399))) lt!1956756)))

(declare-fun b!4801291 () Bool)

(declare-fun res!2042088 () Bool)

(assert (=> b!4801291 (=> (not res!2042088) (not e!2998274))))

(declare-fun length!726 (List!54449) Int)

(declare-fun length!727 (List!54446) Int)

(assert (=> b!4801291 (= res!2042088 (= (length!726 lt!1956756) (length!727 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))))

(declare-fun res!2042089 () Bool)

(assert (=> b!4801292 (=> (not res!2042089) (not e!2998274))))

(declare-fun lambda!232497 () Int)

(declare-fun forall!12333 (List!54449 Int) Bool)

(assert (=> b!4801292 (= res!2042089 (forall!12333 lt!1956756 lambda!232497))))

(declare-fun lambda!232498 () Int)

(declare-fun b!4801293 () Bool)

(declare-fun map!12277 (List!54446 Int) List!54449)

(assert (=> b!4801293 (= e!2998274 (= (content!9746 lt!1956756) (content!9746 (map!12277 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) lambda!232498))))))

(assert (= (and d!1537328 res!2042087) b!4801291))

(assert (= (and b!4801291 res!2042088) b!4801292))

(assert (= (and b!4801292 res!2042089) b!4801293))

(declare-fun m!5785260 () Bool)

(assert (=> d!1537328 m!5785260))

(assert (=> d!1537328 m!5784700))

(declare-fun m!5785262 () Bool)

(assert (=> b!4801291 m!5785262))

(declare-fun m!5785264 () Bool)

(assert (=> b!4801291 m!5785264))

(declare-fun m!5785266 () Bool)

(assert (=> b!4801292 m!5785266))

(declare-fun m!5785268 () Bool)

(assert (=> b!4801293 m!5785268))

(declare-fun m!5785270 () Bool)

(assert (=> b!4801293 m!5785270))

(assert (=> b!4801293 m!5785270))

(declare-fun m!5785272 () Bool)

(assert (=> b!4801293 m!5785272))

(assert (=> b!4800910 d!1537328))

(declare-fun bs!1157633 () Bool)

(declare-fun b!4801319 () Bool)

(assert (= bs!1157633 (and b!4801319 b!4801292)))

(declare-fun lambda!232507 () Int)

(assert (=> bs!1157633 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232507 lambda!232497))))

(assert (=> b!4801319 true))

(declare-fun bs!1157634 () Bool)

(declare-fun b!4801317 () Bool)

(assert (= bs!1157634 (and b!4801317 b!4801292)))

(declare-fun lambda!232508 () Int)

(assert (=> bs!1157634 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232508 lambda!232497))))

(declare-fun bs!1157635 () Bool)

(assert (= bs!1157635 (and b!4801317 b!4801319)))

(assert (=> bs!1157635 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232508 lambda!232507))))

(assert (=> b!4801317 true))

(declare-fun bs!1157636 () Bool)

(declare-fun b!4801314 () Bool)

(assert (= bs!1157636 (and b!4801314 b!4801292)))

(declare-fun lambda!232509 () Int)

(assert (=> bs!1157636 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232509 lambda!232497))))

(declare-fun bs!1157637 () Bool)

(assert (= bs!1157637 (and b!4801314 b!4801319)))

(assert (=> bs!1157637 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232509 lambda!232507))))

(declare-fun bs!1157638 () Bool)

(assert (= bs!1157638 (and b!4801314 b!4801317)))

(assert (=> bs!1157638 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))) (= lambda!232509 lambda!232508))))

(assert (=> b!4801314 true))

(declare-fun bs!1157639 () Bool)

(declare-fun b!4801321 () Bool)

(assert (= bs!1157639 (and b!4801321 b!4801293)))

(declare-fun lambda!232510 () Int)

(assert (=> bs!1157639 (= lambda!232510 lambda!232498)))

(declare-fun res!2042097 () Bool)

(declare-fun e!2998283 () Bool)

(assert (=> b!4801314 (=> (not res!2042097) (not e!2998283))))

(declare-fun lt!1956776 () List!54449)

(assert (=> b!4801314 (= res!2042097 (forall!12333 lt!1956776 lambda!232509))))

(declare-fun b!4801315 () Bool)

(declare-fun e!2998284 () Unit!140691)

(declare-fun Unit!140743 () Unit!140691)

(assert (=> b!4801315 (= e!2998284 Unit!140743)))

(declare-fun b!4801316 () Bool)

(declare-fun e!2998285 () Unit!140691)

(declare-fun Unit!140744 () Unit!140691)

(assert (=> b!4801316 (= e!2998285 Unit!140744)))

(declare-fun e!2998286 () List!54449)

(assert (=> b!4801317 (= e!2998286 (Cons!54325 (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))))

(declare-fun c!818382 () Bool)

(assert (=> b!4801317 (= c!818382 (containsKey!4035 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))))

(declare-fun lt!1956773 () Unit!140691)

(assert (=> b!4801317 (= lt!1956773 e!2998285)))

(declare-fun c!818384 () Bool)

(assert (=> b!4801317 (= c!818384 (contains!17978 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))))

(declare-fun lt!1956777 () Unit!140691)

(assert (=> b!4801317 (= lt!1956777 e!2998284)))

(declare-fun lt!1956771 () List!54449)

(assert (=> b!4801317 (= lt!1956771 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))))

(declare-fun lt!1956774 () Unit!140691)

(declare-fun lemmaForallContainsAddHeadPreserves!350 (List!54446 List!54449 tuple2!57016) Unit!140691)

(assert (=> b!4801317 (= lt!1956774 (lemmaForallContainsAddHeadPreserves!350 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) lt!1956771 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))))

(assert (=> b!4801317 (forall!12333 lt!1956771 lambda!232508)))

(declare-fun lt!1956775 () Unit!140691)

(assert (=> b!4801317 (= lt!1956775 lt!1956774)))

(declare-fun b!4801318 () Bool)

(declare-fun res!2042098 () Bool)

(assert (=> b!4801318 (=> (not res!2042098) (not e!2998283))))

(assert (=> b!4801318 (= res!2042098 (= (length!726 lt!1956776) (length!727 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))))

(declare-fun d!1537330 () Bool)

(assert (=> d!1537330 e!2998283))

(declare-fun res!2042096 () Bool)

(assert (=> d!1537330 (=> (not res!2042096) (not e!2998283))))

(assert (=> d!1537330 (= res!2042096 (noDuplicate!935 lt!1956776))))

(assert (=> d!1537330 (= lt!1956776 e!2998286)))

(declare-fun c!818383 () Bool)

(assert (=> d!1537330 (= c!818383 ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))

(assert (=> d!1537330 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))

(assert (=> d!1537330 (= (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) lt!1956776)))

(assert (=> b!4801319 false))

(declare-fun lt!1956772 () Unit!140691)

(declare-fun forallContained!4215 (List!54449 Int K!15894) Unit!140691)

(assert (=> b!4801319 (= lt!1956772 (forallContained!4215 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) lambda!232507 (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))))

(declare-fun Unit!140745 () Unit!140691)

(assert (=> b!4801319 (= e!2998284 Unit!140745)))

(declare-fun b!4801320 () Bool)

(assert (=> b!4801320 false))

(declare-fun Unit!140746 () Unit!140691)

(assert (=> b!4801320 (= e!2998285 Unit!140746)))

(assert (=> b!4801321 (= e!2998283 (= (content!9746 lt!1956776) (content!9746 (map!12277 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) lambda!232510))))))

(declare-fun b!4801322 () Bool)

(assert (=> b!4801322 (= e!2998286 Nil!54325)))

(assert (= (and d!1537330 c!818383) b!4801317))

(assert (= (and d!1537330 (not c!818383)) b!4801322))

(assert (= (and b!4801317 c!818382) b!4801320))

(assert (= (and b!4801317 (not c!818382)) b!4801316))

(assert (= (and b!4801317 c!818384) b!4801319))

(assert (= (and b!4801317 (not c!818384)) b!4801315))

(assert (= (and d!1537330 res!2042096) b!4801318))

(assert (= (and b!4801318 res!2042098) b!4801314))

(assert (= (and b!4801314 res!2042097) b!4801321))

(declare-fun m!5785274 () Bool)

(assert (=> d!1537330 m!5785274))

(declare-fun m!5785276 () Bool)

(assert (=> d!1537330 m!5785276))

(declare-fun m!5785278 () Bool)

(assert (=> b!4801314 m!5785278))

(declare-fun m!5785280 () Bool)

(assert (=> b!4801318 m!5785280))

(declare-fun m!5785282 () Bool)

(assert (=> b!4801318 m!5785282))

(declare-fun m!5785284 () Bool)

(assert (=> b!4801321 m!5785284))

(declare-fun m!5785286 () Bool)

(assert (=> b!4801321 m!5785286))

(assert (=> b!4801321 m!5785286))

(declare-fun m!5785288 () Bool)

(assert (=> b!4801321 m!5785288))

(declare-fun m!5785290 () Bool)

(assert (=> b!4801317 m!5785290))

(declare-fun m!5785292 () Bool)

(assert (=> b!4801317 m!5785292))

(declare-fun m!5785294 () Bool)

(assert (=> b!4801317 m!5785294))

(assert (=> b!4801317 m!5785294))

(declare-fun m!5785296 () Bool)

(assert (=> b!4801317 m!5785296))

(declare-fun m!5785298 () Bool)

(assert (=> b!4801317 m!5785298))

(assert (=> b!4801319 m!5785294))

(assert (=> b!4801319 m!5785294))

(declare-fun m!5785300 () Bool)

(assert (=> b!4801319 m!5785300))

(assert (=> b!4800972 d!1537330))

(declare-fun d!1537332 () Bool)

(declare-fun res!2042103 () Bool)

(declare-fun e!2998291 () Bool)

(assert (=> d!1537332 (=> res!2042103 e!2998291)))

(assert (=> d!1537332 (= res!2042103 (not ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(assert (=> d!1537332 (= (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473)))) e!2998291)))

(declare-fun b!4801329 () Bool)

(declare-fun e!2998292 () Bool)

(assert (=> b!4801329 (= e!2998291 e!2998292)))

(declare-fun res!2042104 () Bool)

(assert (=> b!4801329 (=> (not res!2042104) (not e!2998292))))

(assert (=> b!4801329 (= res!2042104 (not (containsKey!4032 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))))

(declare-fun b!4801330 () Bool)

(assert (=> b!4801330 (= e!2998292 (noDuplicateKeys!2362 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(assert (= (and d!1537332 (not res!2042103)) b!4801329))

(assert (= (and b!4801329 res!2042104) b!4801330))

(declare-fun m!5785302 () Bool)

(assert (=> b!4801329 m!5785302))

(declare-fun m!5785304 () Bool)

(assert (=> b!4801330 m!5785304))

(assert (=> bs!1157523 d!1537332))

(declare-fun d!1537334 () Bool)

(declare-fun isEmpty!29506 (Option!13185) Bool)

(assert (=> d!1537334 (= (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896)) (not (isEmpty!29506 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))))

(declare-fun bs!1157640 () Bool)

(assert (= bs!1157640 d!1537334))

(assert (=> bs!1157640 m!5784690))

(declare-fun m!5785306 () Bool)

(assert (=> bs!1157640 m!5785306))

(assert (=> b!4800912 d!1537334))

(declare-fun b!4801341 () Bool)

(declare-fun e!2998298 () Option!13185)

(assert (=> b!4801341 (= e!2998298 (getValueByKey!2398 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896))))

(declare-fun b!4801339 () Bool)

(declare-fun e!2998297 () Option!13185)

(assert (=> b!4801339 (= e!2998297 (Some!13184 (_2!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))))

(declare-fun d!1537336 () Bool)

(declare-fun c!818389 () Bool)

(assert (=> d!1537336 (= c!818389 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) key!5896)))))

(assert (=> d!1537336 (= (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) e!2998297)))

(declare-fun b!4801342 () Bool)

(assert (=> b!4801342 (= e!2998298 None!13184)))

(declare-fun b!4801340 () Bool)

(assert (=> b!4801340 (= e!2998297 e!2998298)))

(declare-fun c!818390 () Bool)

(assert (=> b!4801340 (= c!818390 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (not (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) key!5896))))))

(assert (= (and d!1537336 c!818389) b!4801339))

(assert (= (and d!1537336 (not c!818389)) b!4801340))

(assert (= (and b!4801340 c!818390) b!4801341))

(assert (= (and b!4801340 (not c!818390)) b!4801342))

(declare-fun m!5785308 () Bool)

(assert (=> b!4801341 m!5785308))

(assert (=> b!4800912 d!1537336))

(declare-fun d!1537338 () Bool)

(declare-fun res!2042105 () Bool)

(declare-fun e!2998299 () Bool)

(assert (=> d!1537338 (=> res!2042105 e!2998299)))

(assert (=> d!1537338 (= res!2042105 ((_ is Nil!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537338 (= (forall!12329 (toList!7003 lt!1956399) lambda!232397) e!2998299)))

(declare-fun b!4801343 () Bool)

(declare-fun e!2998300 () Bool)

(assert (=> b!4801343 (= e!2998299 e!2998300)))

(declare-fun res!2042106 () Bool)

(assert (=> b!4801343 (=> (not res!2042106) (not e!2998300))))

(assert (=> b!4801343 (= res!2042106 (dynLambda!22093 lambda!232397 (h!60755 (toList!7003 lt!1956399))))))

(declare-fun b!4801344 () Bool)

(assert (=> b!4801344 (= e!2998300 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232397))))

(assert (= (and d!1537338 (not res!2042105)) b!4801343))

(assert (= (and b!4801343 res!2042106) b!4801344))

(declare-fun b_lambda!187651 () Bool)

(assert (=> (not b_lambda!187651) (not b!4801343)))

(declare-fun m!5785310 () Bool)

(assert (=> b!4801343 m!5785310))

(declare-fun m!5785312 () Bool)

(assert (=> b!4801344 m!5785312))

(assert (=> d!1537146 d!1537338))

(declare-fun d!1537340 () Bool)

(declare-fun res!2042111 () Bool)

(declare-fun e!2998305 () Bool)

(assert (=> d!1537340 (=> res!2042111 e!2998305)))

(assert (=> d!1537340 (= res!2042111 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) key!5896)))))

(assert (=> d!1537340 (= (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896) e!2998305)))

(declare-fun b!4801349 () Bool)

(declare-fun e!2998306 () Bool)

(assert (=> b!4801349 (= e!2998305 e!2998306)))

(declare-fun res!2042112 () Bool)

(assert (=> b!4801349 (=> (not res!2042112) (not e!2998306))))

(assert (=> b!4801349 (= res!2042112 ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))

(declare-fun b!4801350 () Bool)

(assert (=> b!4801350 (= e!2998306 (containsKey!4035 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) key!5896))))

(assert (= (and d!1537340 (not res!2042111)) b!4801349))

(assert (= (and b!4801349 res!2042112) b!4801350))

(declare-fun m!5785314 () Bool)

(assert (=> b!4801350 m!5785314))

(assert (=> b!4800974 d!1537340))

(declare-fun d!1537342 () Bool)

(assert (=> d!1537342 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896)))

(declare-fun lt!1956780 () Unit!140691)

(declare-fun choose!34698 (List!54446 K!15894) Unit!140691)

(assert (=> d!1537342 (= lt!1956780 (choose!34698 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> d!1537342 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))

(assert (=> d!1537342 (= (lemmaInGetKeysListThenContainsKey!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896) lt!1956780)))

(declare-fun bs!1157641 () Bool)

(assert (= bs!1157641 d!1537342))

(assert (=> bs!1157641 m!5784780))

(declare-fun m!5785316 () Bool)

(assert (=> bs!1157641 m!5785316))

(assert (=> bs!1157641 m!5785276))

(assert (=> b!4800974 d!1537342))

(declare-fun d!1537344 () Bool)

(assert (=> d!1537344 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(declare-fun lt!1956783 () Unit!140691)

(declare-fun choose!34699 (List!54446 K!15894) Unit!140691)

(assert (=> d!1537344 (= lt!1956783 (choose!34699 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> d!1537344 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))

(assert (=> d!1537344 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2189 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) lt!1956783)))

(declare-fun bs!1157642 () Bool)

(assert (= bs!1157642 d!1537344))

(assert (=> bs!1157642 m!5784690))

(assert (=> bs!1157642 m!5784690))

(assert (=> bs!1157642 m!5784692))

(declare-fun m!5785318 () Bool)

(assert (=> bs!1157642 m!5785318))

(declare-fun m!5785320 () Bool)

(assert (=> bs!1157642 m!5785320))

(assert (=> b!4800914 d!1537344))

(assert (=> b!4800914 d!1537334))

(assert (=> b!4800914 d!1537336))

(declare-fun d!1537346 () Bool)

(assert (=> d!1537346 (contains!17978 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896)))

(declare-fun lt!1956786 () Unit!140691)

(declare-fun choose!34700 (List!54446 K!15894) Unit!140691)

(assert (=> d!1537346 (= lt!1956786 (choose!34700 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> d!1537346 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))

(assert (=> d!1537346 (= (lemmaInListThenGetKeysListContains!1095 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) lt!1956786)))

(declare-fun bs!1157643 () Bool)

(assert (= bs!1157643 d!1537346))

(assert (=> bs!1157643 m!5784700))

(assert (=> bs!1157643 m!5784700))

(declare-fun m!5785322 () Bool)

(assert (=> bs!1157643 m!5785322))

(declare-fun m!5785324 () Bool)

(assert (=> bs!1157643 m!5785324))

(assert (=> bs!1157643 m!5785320))

(assert (=> b!4800914 d!1537346))

(declare-fun d!1537348 () Bool)

(declare-fun noDuplicatedKeys!454 (List!54446) Bool)

(assert (=> d!1537348 (= (invariantList!1754 (toList!7004 lt!1956532)) (noDuplicatedKeys!454 (toList!7004 lt!1956532)))))

(declare-fun bs!1157644 () Bool)

(assert (= bs!1157644 d!1537348))

(declare-fun m!5785326 () Bool)

(assert (=> bs!1157644 m!5785326))

(assert (=> d!1537136 d!1537348))

(declare-fun d!1537350 () Bool)

(declare-fun res!2042113 () Bool)

(declare-fun e!2998307 () Bool)

(assert (=> d!1537350 (=> res!2042113 e!2998307)))

(assert (=> d!1537350 (= res!2042113 ((_ is Nil!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537350 (= (forall!12329 (toList!7003 lm!2473) lambda!232396) e!2998307)))

(declare-fun b!4801351 () Bool)

(declare-fun e!2998308 () Bool)

(assert (=> b!4801351 (= e!2998307 e!2998308)))

(declare-fun res!2042114 () Bool)

(assert (=> b!4801351 (=> (not res!2042114) (not e!2998308))))

(assert (=> b!4801351 (= res!2042114 (dynLambda!22093 lambda!232396 (h!60755 (toList!7003 lm!2473))))))

(declare-fun b!4801352 () Bool)

(assert (=> b!4801352 (= e!2998308 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232396))))

(assert (= (and d!1537350 (not res!2042113)) b!4801351))

(assert (= (and b!4801351 res!2042114) b!4801352))

(declare-fun b_lambda!187653 () Bool)

(assert (=> (not b_lambda!187653) (not b!4801351)))

(declare-fun m!5785328 () Bool)

(assert (=> b!4801351 m!5785328))

(declare-fun m!5785330 () Bool)

(assert (=> b!4801352 m!5785330))

(assert (=> d!1537136 d!1537350))

(declare-fun d!1537352 () Bool)

(declare-fun e!2998309 () Bool)

(assert (=> d!1537352 e!2998309))

(declare-fun res!2042117 () Bool)

(assert (=> d!1537352 (=> res!2042117 e!2998309)))

(declare-fun e!2998313 () Bool)

(assert (=> d!1537352 (= res!2042117 e!2998313)))

(declare-fun res!2042116 () Bool)

(assert (=> d!1537352 (=> (not res!2042116) (not e!2998313))))

(declare-fun lt!1956787 () Option!13182)

(assert (=> d!1537352 (= res!2042116 (isEmpty!29503 lt!1956787))))

(declare-fun e!2998312 () Option!13182)

(assert (=> d!1537352 (= lt!1956787 e!2998312)))

(declare-fun c!818391 () Bool)

(assert (=> d!1537352 (= c!818391 (and ((_ is Cons!54322) (t!361896 (apply!13035 lm!2473 lt!1956400))) (= (_1!31802 (h!60754 (t!361896 (apply!13035 lm!2473 lt!1956400)))) key!5896)))))

(assert (=> d!1537352 (noDuplicateKeys!2362 (t!361896 (apply!13035 lm!2473 lt!1956400)))))

(assert (=> d!1537352 (= (getPair!934 (t!361896 (apply!13035 lm!2473 lt!1956400)) key!5896) lt!1956787)))

(declare-fun b!4801353 () Bool)

(assert (=> b!4801353 (= e!2998313 (not (containsKey!4032 (t!361896 (apply!13035 lm!2473 lt!1956400)) key!5896)))))

(declare-fun b!4801354 () Bool)

(declare-fun e!2998310 () Option!13182)

(assert (=> b!4801354 (= e!2998310 None!13181)))

(declare-fun b!4801355 () Bool)

(declare-fun res!2042115 () Bool)

(declare-fun e!2998311 () Bool)

(assert (=> b!4801355 (=> (not res!2042115) (not e!2998311))))

(assert (=> b!4801355 (= res!2042115 (= (_1!31802 (get!18549 lt!1956787)) key!5896))))

(declare-fun b!4801356 () Bool)

(assert (=> b!4801356 (= e!2998312 (Some!13181 (h!60754 (t!361896 (apply!13035 lm!2473 lt!1956400)))))))

(declare-fun b!4801357 () Bool)

(assert (=> b!4801357 (= e!2998311 (contains!17979 (t!361896 (apply!13035 lm!2473 lt!1956400)) (get!18549 lt!1956787)))))

(declare-fun b!4801358 () Bool)

(assert (=> b!4801358 (= e!2998310 (getPair!934 (t!361896 (t!361896 (apply!13035 lm!2473 lt!1956400))) key!5896))))

(declare-fun b!4801359 () Bool)

(assert (=> b!4801359 (= e!2998312 e!2998310)))

(declare-fun c!818392 () Bool)

(assert (=> b!4801359 (= c!818392 ((_ is Cons!54322) (t!361896 (apply!13035 lm!2473 lt!1956400))))))

(declare-fun b!4801360 () Bool)

(assert (=> b!4801360 (= e!2998309 e!2998311)))

(declare-fun res!2042118 () Bool)

(assert (=> b!4801360 (=> (not res!2042118) (not e!2998311))))

(assert (=> b!4801360 (= res!2042118 (isDefined!10323 lt!1956787))))

(assert (= (and d!1537352 c!818391) b!4801356))

(assert (= (and d!1537352 (not c!818391)) b!4801359))

(assert (= (and b!4801359 c!818392) b!4801358))

(assert (= (and b!4801359 (not c!818392)) b!4801354))

(assert (= (and d!1537352 res!2042116) b!4801353))

(assert (= (and d!1537352 (not res!2042117)) b!4801360))

(assert (= (and b!4801360 res!2042118) b!4801355))

(assert (= (and b!4801355 res!2042115) b!4801357))

(declare-fun m!5785332 () Bool)

(assert (=> d!1537352 m!5785332))

(declare-fun m!5785334 () Bool)

(assert (=> d!1537352 m!5785334))

(declare-fun m!5785336 () Bool)

(assert (=> b!4801358 m!5785336))

(declare-fun m!5785338 () Bool)

(assert (=> b!4801353 m!5785338))

(declare-fun m!5785340 () Bool)

(assert (=> b!4801355 m!5785340))

(assert (=> b!4801357 m!5785340))

(assert (=> b!4801357 m!5785340))

(declare-fun m!5785342 () Bool)

(assert (=> b!4801357 m!5785342))

(declare-fun m!5785344 () Bool)

(assert (=> b!4801360 m!5785344))

(assert (=> b!4801005 d!1537352))

(declare-fun d!1537354 () Bool)

(declare-fun lt!1956788 () Bool)

(assert (=> d!1537354 (= lt!1956788 (select (content!9746 (keys!19861 (extractMap!2489 (toList!7003 lm!2473)))) key!5896))))

(declare-fun e!2998315 () Bool)

(assert (=> d!1537354 (= lt!1956788 e!2998315)))

(declare-fun res!2042120 () Bool)

(assert (=> d!1537354 (=> (not res!2042120) (not e!2998315))))

(assert (=> d!1537354 (= res!2042120 ((_ is Cons!54325) (keys!19861 (extractMap!2489 (toList!7003 lm!2473)))))))

(assert (=> d!1537354 (= (contains!17978 (keys!19861 (extractMap!2489 (toList!7003 lm!2473))) key!5896) lt!1956788)))

(declare-fun b!4801361 () Bool)

(declare-fun e!2998314 () Bool)

(assert (=> b!4801361 (= e!2998315 e!2998314)))

(declare-fun res!2042119 () Bool)

(assert (=> b!4801361 (=> res!2042119 e!2998314)))

(assert (=> b!4801361 (= res!2042119 (= (h!60757 (keys!19861 (extractMap!2489 (toList!7003 lm!2473)))) key!5896))))

(declare-fun b!4801362 () Bool)

(assert (=> b!4801362 (= e!2998314 (contains!17978 (t!361899 (keys!19861 (extractMap!2489 (toList!7003 lm!2473)))) key!5896))))

(assert (= (and d!1537354 res!2042120) b!4801361))

(assert (= (and b!4801361 (not res!2042119)) b!4801362))

(assert (=> d!1537354 m!5784776))

(declare-fun m!5785346 () Bool)

(assert (=> d!1537354 m!5785346))

(declare-fun m!5785348 () Bool)

(assert (=> d!1537354 m!5785348))

(declare-fun m!5785350 () Bool)

(assert (=> b!4801362 m!5785350))

(assert (=> b!4800969 d!1537354))

(declare-fun bs!1157645 () Bool)

(declare-fun b!4801364 () Bool)

(assert (= bs!1157645 (and b!4801364 b!4801292)))

(declare-fun lambda!232511 () Int)

(assert (=> bs!1157645 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232511 lambda!232497))))

(declare-fun bs!1157646 () Bool)

(assert (= bs!1157646 (and b!4801364 b!4801319)))

(assert (=> bs!1157646 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232511 lambda!232507))))

(declare-fun bs!1157647 () Bool)

(assert (= bs!1157647 (and b!4801364 b!4801317)))

(assert (=> bs!1157647 (= (= (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))) (= lambda!232511 lambda!232508))))

(declare-fun bs!1157648 () Bool)

(assert (= bs!1157648 (and b!4801364 b!4801314)))

(assert (=> bs!1157648 (= lambda!232511 lambda!232509)))

(assert (=> b!4801364 true))

(declare-fun bs!1157649 () Bool)

(declare-fun b!4801365 () Bool)

(assert (= bs!1157649 (and b!4801365 b!4801293)))

(declare-fun lambda!232512 () Int)

(assert (=> bs!1157649 (= lambda!232512 lambda!232498)))

(declare-fun bs!1157650 () Bool)

(assert (= bs!1157650 (and b!4801365 b!4801321)))

(assert (=> bs!1157650 (= lambda!232512 lambda!232510)))

(declare-fun d!1537356 () Bool)

(declare-fun e!2998316 () Bool)

(assert (=> d!1537356 e!2998316))

(declare-fun res!2042121 () Bool)

(assert (=> d!1537356 (=> (not res!2042121) (not e!2998316))))

(declare-fun lt!1956789 () List!54449)

(assert (=> d!1537356 (= res!2042121 (noDuplicate!935 lt!1956789))))

(assert (=> d!1537356 (= lt!1956789 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))

(assert (=> d!1537356 (= (keys!19861 (extractMap!2489 (toList!7003 lm!2473))) lt!1956789)))

(declare-fun b!4801363 () Bool)

(declare-fun res!2042122 () Bool)

(assert (=> b!4801363 (=> (not res!2042122) (not e!2998316))))

(assert (=> b!4801363 (= res!2042122 (= (length!726 lt!1956789) (length!727 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))))

(declare-fun res!2042123 () Bool)

(assert (=> b!4801364 (=> (not res!2042123) (not e!2998316))))

(assert (=> b!4801364 (= res!2042123 (forall!12333 lt!1956789 lambda!232511))))

(assert (=> b!4801365 (= e!2998316 (= (content!9746 lt!1956789) (content!9746 (map!12277 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) lambda!232512))))))

(assert (= (and d!1537356 res!2042121) b!4801363))

(assert (= (and b!4801363 res!2042122) b!4801364))

(assert (= (and b!4801364 res!2042123) b!4801365))

(declare-fun m!5785352 () Bool)

(assert (=> d!1537356 m!5785352))

(assert (=> d!1537356 m!5784794))

(declare-fun m!5785354 () Bool)

(assert (=> b!4801363 m!5785354))

(assert (=> b!4801363 m!5785282))

(declare-fun m!5785356 () Bool)

(assert (=> b!4801364 m!5785356))

(declare-fun m!5785358 () Bool)

(assert (=> b!4801365 m!5785358))

(declare-fun m!5785360 () Bool)

(assert (=> b!4801365 m!5785360))

(assert (=> b!4801365 m!5785360))

(declare-fun m!5785362 () Bool)

(assert (=> b!4801365 m!5785362))

(assert (=> b!4800969 d!1537356))

(declare-fun d!1537358 () Bool)

(assert (=> d!1537358 (= (isEmpty!29503 lt!1956535) (not ((_ is Some!13181) lt!1956535)))))

(assert (=> d!1537142 d!1537358))

(declare-fun d!1537360 () Bool)

(declare-fun res!2042124 () Bool)

(declare-fun e!2998317 () Bool)

(assert (=> d!1537360 (=> res!2042124 e!2998317)))

(assert (=> d!1537360 (= res!2042124 (not ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400))))))

(assert (=> d!1537360 (= (noDuplicateKeys!2362 (apply!13035 lm!2473 lt!1956400)) e!2998317)))

(declare-fun b!4801366 () Bool)

(declare-fun e!2998318 () Bool)

(assert (=> b!4801366 (= e!2998317 e!2998318)))

(declare-fun res!2042125 () Bool)

(assert (=> b!4801366 (=> (not res!2042125) (not e!2998318))))

(assert (=> b!4801366 (= res!2042125 (not (containsKey!4032 (t!361896 (apply!13035 lm!2473 lt!1956400)) (_1!31802 (h!60754 (apply!13035 lm!2473 lt!1956400))))))))

(declare-fun b!4801367 () Bool)

(assert (=> b!4801367 (= e!2998318 (noDuplicateKeys!2362 (t!361896 (apply!13035 lm!2473 lt!1956400))))))

(assert (= (and d!1537360 (not res!2042124)) b!4801366))

(assert (= (and b!4801366 res!2042125) b!4801367))

(declare-fun m!5785364 () Bool)

(assert (=> b!4801366 m!5785364))

(assert (=> b!4801367 m!5785334))

(assert (=> d!1537142 d!1537360))

(declare-fun d!1537362 () Bool)

(declare-fun lt!1956790 () Bool)

(assert (=> d!1537362 (= lt!1956790 (select (content!9746 e!2998010) key!5896))))

(declare-fun e!2998320 () Bool)

(assert (=> d!1537362 (= lt!1956790 e!2998320)))

(declare-fun res!2042127 () Bool)

(assert (=> d!1537362 (=> (not res!2042127) (not e!2998320))))

(assert (=> d!1537362 (= res!2042127 ((_ is Cons!54325) e!2998010))))

(assert (=> d!1537362 (= (contains!17978 e!2998010 key!5896) lt!1956790)))

(declare-fun b!4801368 () Bool)

(declare-fun e!2998319 () Bool)

(assert (=> b!4801368 (= e!2998320 e!2998319)))

(declare-fun res!2042126 () Bool)

(assert (=> b!4801368 (=> res!2042126 e!2998319)))

(assert (=> b!4801368 (= res!2042126 (= (h!60757 e!2998010) key!5896))))

(declare-fun b!4801369 () Bool)

(assert (=> b!4801369 (= e!2998319 (contains!17978 (t!361899 e!2998010) key!5896))))

(assert (= (and d!1537362 res!2042127) b!4801368))

(assert (= (and b!4801368 (not res!2042126)) b!4801369))

(declare-fun m!5785366 () Bool)

(assert (=> d!1537362 m!5785366))

(declare-fun m!5785368 () Bool)

(assert (=> d!1537362 m!5785368))

(declare-fun m!5785370 () Bool)

(assert (=> b!4801369 m!5785370))

(assert (=> bm!335366 d!1537362))

(declare-fun d!1537364 () Bool)

(assert (=> d!1537364 (= (isDefined!10323 lt!1956535) (not (isEmpty!29503 lt!1956535)))))

(declare-fun bs!1157651 () Bool)

(assert (= bs!1157651 d!1537364))

(assert (=> bs!1157651 m!5784808))

(assert (=> b!4801007 d!1537364))

(assert (=> b!4800970 d!1537356))

(declare-fun d!1537366 () Bool)

(assert (=> d!1537366 (= (isEmpty!29503 (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896)) (not ((_ is Some!13181) (getPair!934 (apply!13035 lm!2473 lt!1956400) key!5896))))))

(assert (=> d!1537140 d!1537366))

(assert (=> d!1537118 d!1537116))

(declare-fun d!1537368 () Bool)

(assert (=> d!1537368 (containsKeyBiggerList!604 (toList!7003 lm!2473) key!5896)))

(assert (=> d!1537368 true))

(declare-fun _$33!880 () Unit!140691)

(assert (=> d!1537368 (= (choose!34690 lm!2473 key!5896 hashF!1559) _$33!880)))

(declare-fun bs!1157652 () Bool)

(assert (= bs!1157652 d!1537368))

(assert (=> bs!1157652 m!5784528))

(assert (=> d!1537118 d!1537368))

(declare-fun d!1537370 () Bool)

(declare-fun res!2042128 () Bool)

(declare-fun e!2998321 () Bool)

(assert (=> d!1537370 (=> res!2042128 e!2998321)))

(assert (=> d!1537370 (= res!2042128 ((_ is Nil!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537370 (= (forall!12329 (toList!7003 lm!2473) lambda!232389) e!2998321)))

(declare-fun b!4801370 () Bool)

(declare-fun e!2998322 () Bool)

(assert (=> b!4801370 (= e!2998321 e!2998322)))

(declare-fun res!2042129 () Bool)

(assert (=> b!4801370 (=> (not res!2042129) (not e!2998322))))

(assert (=> b!4801370 (= res!2042129 (dynLambda!22093 lambda!232389 (h!60755 (toList!7003 lm!2473))))))

(declare-fun b!4801371 () Bool)

(assert (=> b!4801371 (= e!2998322 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232389))))

(assert (= (and d!1537370 (not res!2042128)) b!4801370))

(assert (= (and b!4801370 res!2042129) b!4801371))

(declare-fun b_lambda!187655 () Bool)

(assert (=> (not b_lambda!187655) (not b!4801370)))

(declare-fun m!5785372 () Bool)

(assert (=> b!4801370 m!5785372))

(declare-fun m!5785374 () Bool)

(assert (=> b!4801371 m!5785374))

(assert (=> d!1537118 d!1537370))

(declare-fun d!1537372 () Bool)

(declare-fun res!2042130 () Bool)

(declare-fun e!2998323 () Bool)

(assert (=> d!1537372 (=> res!2042130 e!2998323)))

(assert (=> d!1537372 (= res!2042130 ((_ is Nil!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537372 (= (forall!12329 (toList!7003 lm!2473) lambda!232363) e!2998323)))

(declare-fun b!4801372 () Bool)

(declare-fun e!2998324 () Bool)

(assert (=> b!4801372 (= e!2998323 e!2998324)))

(declare-fun res!2042131 () Bool)

(assert (=> b!4801372 (=> (not res!2042131) (not e!2998324))))

(assert (=> b!4801372 (= res!2042131 (dynLambda!22093 lambda!232363 (h!60755 (toList!7003 lm!2473))))))

(declare-fun b!4801373 () Bool)

(assert (=> b!4801373 (= e!2998324 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232363))))

(assert (= (and d!1537372 (not res!2042130)) b!4801372))

(assert (= (and b!4801372 res!2042131) b!4801373))

(declare-fun b_lambda!187657 () Bool)

(assert (=> (not b_lambda!187657) (not b!4801372)))

(declare-fun m!5785376 () Bool)

(assert (=> b!4801372 m!5785376))

(declare-fun m!5785378 () Bool)

(assert (=> b!4801373 m!5785378))

(assert (=> d!1537054 d!1537372))

(declare-fun d!1537374 () Bool)

(declare-fun res!2042136 () Bool)

(declare-fun e!2998329 () Bool)

(assert (=> d!1537374 (=> res!2042136 e!2998329)))

(assert (=> d!1537374 (= res!2042136 (and ((_ is Cons!54323) (toList!7003 lt!1956399)) (= (_1!31803 (h!60755 (toList!7003 lt!1956399))) lt!1956400)))))

(assert (=> d!1537374 (= (containsKey!4036 (toList!7003 lt!1956399) lt!1956400) e!2998329)))

(declare-fun b!4801378 () Bool)

(declare-fun e!2998330 () Bool)

(assert (=> b!4801378 (= e!2998329 e!2998330)))

(declare-fun res!2042137 () Bool)

(assert (=> b!4801378 (=> (not res!2042137) (not e!2998330))))

(assert (=> b!4801378 (= res!2042137 (and (or (not ((_ is Cons!54323) (toList!7003 lt!1956399))) (bvsle (_1!31803 (h!60755 (toList!7003 lt!1956399))) lt!1956400)) ((_ is Cons!54323) (toList!7003 lt!1956399)) (bvslt (_1!31803 (h!60755 (toList!7003 lt!1956399))) lt!1956400)))))

(declare-fun b!4801379 () Bool)

(assert (=> b!4801379 (= e!2998330 (containsKey!4036 (t!361897 (toList!7003 lt!1956399)) lt!1956400))))

(assert (= (and d!1537374 (not res!2042136)) b!4801378))

(assert (= (and b!4801378 res!2042137) b!4801379))

(declare-fun m!5785380 () Bool)

(assert (=> b!4801379 m!5785380))

(assert (=> d!1537126 d!1537374))

(declare-fun d!1537376 () Bool)

(declare-fun res!2042138 () Bool)

(declare-fun e!2998331 () Bool)

(assert (=> d!1537376 (=> res!2042138 e!2998331)))

(assert (=> d!1537376 (= res!2042138 ((_ is Nil!54323) (t!361897 (toList!7003 lt!1956399))))))

(assert (=> d!1537376 (= (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232357) e!2998331)))

(declare-fun b!4801380 () Bool)

(declare-fun e!2998332 () Bool)

(assert (=> b!4801380 (= e!2998331 e!2998332)))

(declare-fun res!2042139 () Bool)

(assert (=> b!4801380 (=> (not res!2042139) (not e!2998332))))

(assert (=> b!4801380 (= res!2042139 (dynLambda!22093 lambda!232357 (h!60755 (t!361897 (toList!7003 lt!1956399)))))))

(declare-fun b!4801381 () Bool)

(assert (=> b!4801381 (= e!2998332 (forall!12329 (t!361897 (t!361897 (toList!7003 lt!1956399))) lambda!232357))))

(assert (= (and d!1537376 (not res!2042138)) b!4801380))

(assert (= (and b!4801380 res!2042139) b!4801381))

(declare-fun b_lambda!187659 () Bool)

(assert (=> (not b_lambda!187659) (not b!4801380)))

(declare-fun m!5785382 () Bool)

(assert (=> b!4801380 m!5785382))

(declare-fun m!5785384 () Bool)

(assert (=> b!4801381 m!5785384))

(assert (=> b!4800966 d!1537376))

(declare-fun d!1537378 () Bool)

(assert (=> d!1537378 (= (isDefined!10323 (getPair!934 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29503 (getPair!934 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1157653 () Bool)

(assert (= bs!1157653 d!1537378))

(assert (=> bs!1157653 m!5784746))

(declare-fun m!5785386 () Bool)

(assert (=> bs!1157653 m!5785386))

(assert (=> b!4800952 d!1537378))

(declare-fun d!1537380 () Bool)

(declare-fun e!2998333 () Bool)

(assert (=> d!1537380 e!2998333))

(declare-fun res!2042142 () Bool)

(assert (=> d!1537380 (=> res!2042142 e!2998333)))

(declare-fun e!2998337 () Bool)

(assert (=> d!1537380 (= res!2042142 e!2998337)))

(declare-fun res!2042141 () Bool)

(assert (=> d!1537380 (=> (not res!2042141) (not e!2998337))))

(declare-fun lt!1956791 () Option!13182)

(assert (=> d!1537380 (= res!2042141 (isEmpty!29503 lt!1956791))))

(declare-fun e!2998336 () Option!13182)

(assert (=> d!1537380 (= lt!1956791 e!2998336)))

(declare-fun c!818393 () Bool)

(assert (=> d!1537380 (= c!818393 (and ((_ is Cons!54322) (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896))) (= (_1!31802 (h!60754 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1537380 (noDuplicateKeys!2362 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)))))

(assert (=> d!1537380 (= (getPair!934 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896) lt!1956791)))

(declare-fun b!4801382 () Bool)

(assert (=> b!4801382 (= e!2998337 (not (containsKey!4032 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4801383 () Bool)

(declare-fun e!2998334 () Option!13182)

(assert (=> b!4801383 (= e!2998334 None!13181)))

(declare-fun b!4801384 () Bool)

(declare-fun res!2042140 () Bool)

(declare-fun e!2998335 () Bool)

(assert (=> b!4801384 (=> (not res!2042140) (not e!2998335))))

(assert (=> b!4801384 (= res!2042140 (= (_1!31802 (get!18549 lt!1956791)) key!5896))))

(declare-fun b!4801385 () Bool)

(assert (=> b!4801385 (= e!2998336 (Some!13181 (h!60754 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)))))))

(declare-fun b!4801386 () Bool)

(assert (=> b!4801386 (= e!2998335 (contains!17979 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) (get!18549 lt!1956791)))))

(declare-fun b!4801387 () Bool)

(assert (=> b!4801387 (= e!2998334 (getPair!934 (t!361896 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4801388 () Bool)

(assert (=> b!4801388 (= e!2998336 e!2998334)))

(declare-fun c!818394 () Bool)

(assert (=> b!4801388 (= c!818394 ((_ is Cons!54322) (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896))))))

(declare-fun b!4801389 () Bool)

(assert (=> b!4801389 (= e!2998333 e!2998335)))

(declare-fun res!2042143 () Bool)

(assert (=> b!4801389 (=> (not res!2042143) (not e!2998335))))

(assert (=> b!4801389 (= res!2042143 (isDefined!10323 lt!1956791))))

(assert (= (and d!1537380 c!818393) b!4801385))

(assert (= (and d!1537380 (not c!818393)) b!4801388))

(assert (= (and b!4801388 c!818394) b!4801387))

(assert (= (and b!4801388 (not c!818394)) b!4801383))

(assert (= (and d!1537380 res!2042141) b!4801382))

(assert (= (and d!1537380 (not res!2042142)) b!4801389))

(assert (= (and b!4801389 res!2042143) b!4801384))

(assert (= (and b!4801384 res!2042140) b!4801386))

(declare-fun m!5785388 () Bool)

(assert (=> d!1537380 m!5785388))

(assert (=> d!1537380 m!5784744))

(declare-fun m!5785390 () Bool)

(assert (=> d!1537380 m!5785390))

(declare-fun m!5785392 () Bool)

(assert (=> b!4801387 m!5785392))

(assert (=> b!4801382 m!5784744))

(declare-fun m!5785394 () Bool)

(assert (=> b!4801382 m!5785394))

(declare-fun m!5785396 () Bool)

(assert (=> b!4801384 m!5785396))

(assert (=> b!4801386 m!5785396))

(assert (=> b!4801386 m!5784744))

(assert (=> b!4801386 m!5785396))

(declare-fun m!5785398 () Bool)

(assert (=> b!4801386 m!5785398))

(declare-fun m!5785400 () Bool)

(assert (=> b!4801389 m!5785400))

(assert (=> b!4800952 d!1537380))

(declare-fun d!1537382 () Bool)

(assert (=> d!1537382 (= (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) (get!18550 (getValueByKey!2399 (toList!7003 lm!2473) (hash!5018 hashF!1559 key!5896))))))

(declare-fun bs!1157654 () Bool)

(assert (= bs!1157654 d!1537382))

(assert (=> bs!1157654 m!5784530))

(declare-fun m!5785402 () Bool)

(assert (=> bs!1157654 m!5785402))

(assert (=> bs!1157654 m!5785402))

(declare-fun m!5785404 () Bool)

(assert (=> bs!1157654 m!5785404))

(assert (=> b!4800952 d!1537382))

(assert (=> b!4800952 d!1537124))

(declare-fun d!1537384 () Bool)

(declare-fun res!2042144 () Bool)

(declare-fun e!2998338 () Bool)

(assert (=> d!1537384 (=> res!2042144 e!2998338)))

(assert (=> d!1537384 (= res!2042144 (and ((_ is Cons!54322) (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473))))) (= (_1!31802 (h!60754 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))))) key!5896)))))

(assert (=> d!1537384 (= (containsKey!4032 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473)))) key!5896) e!2998338)))

(declare-fun b!4801390 () Bool)

(declare-fun e!2998339 () Bool)

(assert (=> b!4801390 (= e!2998338 e!2998339)))

(declare-fun res!2042145 () Bool)

(assert (=> b!4801390 (=> (not res!2042145) (not e!2998339))))

(assert (=> b!4801390 (= res!2042145 ((_ is Cons!54322) (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473))))))))

(declare-fun b!4801391 () Bool)

(assert (=> b!4801391 (= e!2998339 (containsKey!4032 (t!361896 (t!361896 (_2!31803 (h!60755 (toList!7003 lm!2473))))) key!5896))))

(assert (= (and d!1537384 (not res!2042144)) b!4801390))

(assert (= (and b!4801390 res!2042145) b!4801391))

(declare-fun m!5785406 () Bool)

(assert (=> b!4801391 m!5785406))

(assert (=> b!4800983 d!1537384))

(declare-fun d!1537386 () Bool)

(declare-fun c!818395 () Bool)

(declare-fun e!2998341 () Bool)

(assert (=> d!1537386 (= c!818395 e!2998341)))

(declare-fun res!2042146 () Bool)

(assert (=> d!1537386 (=> (not res!2042146) (not e!2998341))))

(assert (=> d!1537386 (= res!2042146 ((_ is Cons!54323) (t!361897 (toList!7003 lm!2473))))))

(declare-fun e!2998340 () V!16140)

(assert (=> d!1537386 (= (getValue!150 (t!361897 (toList!7003 lm!2473)) key!5896) e!2998340)))

(declare-fun b!4801394 () Bool)

(assert (=> b!4801394 (= e!2998341 (containsKey!4032 (_2!31803 (h!60755 (t!361897 (toList!7003 lm!2473)))) key!5896))))

(declare-fun b!4801392 () Bool)

(assert (=> b!4801392 (= e!2998340 (_2!31802 (get!18549 (getPair!934 (_2!31803 (h!60755 (t!361897 (toList!7003 lm!2473)))) key!5896))))))

(declare-fun b!4801393 () Bool)

(assert (=> b!4801393 (= e!2998340 (getValue!150 (t!361897 (t!361897 (toList!7003 lm!2473))) key!5896))))

(assert (= (and d!1537386 res!2042146) b!4801394))

(assert (= (and d!1537386 c!818395) b!4801392))

(assert (= (and d!1537386 (not c!818395)) b!4801393))

(assert (=> b!4801394 m!5785250))

(declare-fun m!5785408 () Bool)

(assert (=> b!4801392 m!5785408))

(assert (=> b!4801392 m!5785408))

(declare-fun m!5785410 () Bool)

(assert (=> b!4801392 m!5785410))

(declare-fun m!5785412 () Bool)

(assert (=> b!4801393 m!5785412))

(assert (=> b!4800960 d!1537386))

(declare-fun d!1537388 () Bool)

(assert (=> d!1537388 (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400))))

(declare-fun lt!1956794 () Unit!140691)

(declare-fun choose!34701 (List!54447 (_ BitVec 64)) Unit!140691)

(assert (=> d!1537388 (= lt!1956794 (choose!34701 (toList!7003 lm!2473) lt!1956400))))

(declare-fun e!2998344 () Bool)

(assert (=> d!1537388 e!2998344))

(declare-fun res!2042149 () Bool)

(assert (=> d!1537388 (=> (not res!2042149) (not e!2998344))))

(assert (=> d!1537388 (= res!2042149 (isStrictlySorted!900 (toList!7003 lm!2473)))))

(assert (=> d!1537388 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (toList!7003 lm!2473) lt!1956400) lt!1956794)))

(declare-fun b!4801397 () Bool)

(assert (=> b!4801397 (= e!2998344 (containsKey!4036 (toList!7003 lm!2473) lt!1956400))))

(assert (= (and d!1537388 res!2042149) b!4801397))

(assert (=> d!1537388 m!5784728))

(assert (=> d!1537388 m!5784728))

(assert (=> d!1537388 m!5784730))

(declare-fun m!5785414 () Bool)

(assert (=> d!1537388 m!5785414))

(assert (=> d!1537388 m!5784722))

(assert (=> b!4801397 m!5784724))

(assert (=> b!4800938 d!1537388))

(declare-fun d!1537390 () Bool)

(declare-fun isEmpty!29507 (Option!13186) Bool)

(assert (=> d!1537390 (= (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400)) (not (isEmpty!29507 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400))))))

(declare-fun bs!1157655 () Bool)

(assert (= bs!1157655 d!1537390))

(assert (=> bs!1157655 m!5784728))

(declare-fun m!5785416 () Bool)

(assert (=> bs!1157655 m!5785416))

(assert (=> b!4800938 d!1537390))

(declare-fun b!4801407 () Bool)

(declare-fun e!2998349 () Option!13186)

(declare-fun e!2998350 () Option!13186)

(assert (=> b!4801407 (= e!2998349 e!2998350)))

(declare-fun c!818401 () Bool)

(assert (=> b!4801407 (= c!818401 (and ((_ is Cons!54323) (toList!7003 lm!2473)) (not (= (_1!31803 (h!60755 (toList!7003 lm!2473))) lt!1956400))))))

(declare-fun d!1537392 () Bool)

(declare-fun c!818400 () Bool)

(assert (=> d!1537392 (= c!818400 (and ((_ is Cons!54323) (toList!7003 lm!2473)) (= (_1!31803 (h!60755 (toList!7003 lm!2473))) lt!1956400)))))

(assert (=> d!1537392 (= (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400) e!2998349)))

(declare-fun b!4801408 () Bool)

(assert (=> b!4801408 (= e!2998350 (getValueByKey!2399 (t!361897 (toList!7003 lm!2473)) lt!1956400))))

(declare-fun b!4801406 () Bool)

(assert (=> b!4801406 (= e!2998349 (Some!13185 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(declare-fun b!4801409 () Bool)

(assert (=> b!4801409 (= e!2998350 None!13185)))

(assert (= (and d!1537392 c!818400) b!4801406))

(assert (= (and d!1537392 (not c!818400)) b!4801407))

(assert (= (and b!4801407 c!818401) b!4801408))

(assert (= (and b!4801407 (not c!818401)) b!4801409))

(declare-fun m!5785418 () Bool)

(assert (=> b!4801408 m!5785418))

(assert (=> b!4800938 d!1537392))

(assert (=> b!4800940 d!1537390))

(assert (=> b!4800940 d!1537392))

(declare-fun d!1537394 () Bool)

(assert (=> d!1537394 (= (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896)) (not (isEmpty!29506 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))))

(declare-fun bs!1157656 () Bool)

(assert (= bs!1157656 d!1537394))

(assert (=> bs!1157656 m!5784784))

(declare-fun m!5785420 () Bool)

(assert (=> bs!1157656 m!5785420))

(assert (=> b!4800973 d!1537394))

(declare-fun b!4801412 () Bool)

(declare-fun e!2998352 () Option!13185)

(assert (=> b!4801412 (= e!2998352 (getValueByKey!2398 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) key!5896))))

(declare-fun b!4801410 () Bool)

(declare-fun e!2998351 () Option!13185)

(assert (=> b!4801410 (= e!2998351 (Some!13184 (_2!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))))))

(declare-fun d!1537396 () Bool)

(declare-fun c!818402 () Bool)

(assert (=> d!1537396 (= c!818402 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) key!5896)))))

(assert (=> d!1537396 (= (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896) e!2998351)))

(declare-fun b!4801413 () Bool)

(assert (=> b!4801413 (= e!2998352 None!13184)))

(declare-fun b!4801411 () Bool)

(assert (=> b!4801411 (= e!2998351 e!2998352)))

(declare-fun c!818403 () Bool)

(assert (=> b!4801411 (= c!818403 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (not (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) key!5896))))))

(assert (= (and d!1537396 c!818402) b!4801410))

(assert (= (and d!1537396 (not c!818402)) b!4801411))

(assert (= (and b!4801411 c!818403) b!4801412))

(assert (= (and b!4801411 (not c!818403)) b!4801413))

(declare-fun m!5785422 () Bool)

(assert (=> b!4801412 m!5785422))

(assert (=> b!4800973 d!1537396))

(declare-fun bs!1157657 () Bool)

(declare-fun b!4801419 () Bool)

(assert (= bs!1157657 (and b!4801419 b!4801292)))

(declare-fun lambda!232513 () Int)

(assert (=> bs!1157657 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232513 lambda!232497))))

(declare-fun bs!1157658 () Bool)

(assert (= bs!1157658 (and b!4801419 b!4801319)))

(assert (=> bs!1157658 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232513 lambda!232507))))

(declare-fun bs!1157659 () Bool)

(assert (= bs!1157659 (and b!4801419 b!4801317)))

(assert (=> bs!1157659 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))) (= lambda!232513 lambda!232508))))

(declare-fun bs!1157660 () Bool)

(assert (= bs!1157660 (and b!4801419 b!4801314)))

(assert (=> bs!1157660 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232513 lambda!232509))))

(declare-fun bs!1157661 () Bool)

(assert (= bs!1157661 (and b!4801419 b!4801364)))

(assert (=> bs!1157661 (= (= (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232513 lambda!232511))))

(assert (=> b!4801419 true))

(declare-fun bs!1157662 () Bool)

(declare-fun b!4801417 () Bool)

(assert (= bs!1157662 (and b!4801417 b!4801292)))

(declare-fun lambda!232514 () Int)

(assert (=> bs!1157662 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= lambda!232514 lambda!232497))))

(declare-fun bs!1157663 () Bool)

(assert (= bs!1157663 (and b!4801417 b!4801319)))

(assert (=> bs!1157663 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232514 lambda!232507))))

(declare-fun bs!1157664 () Bool)

(assert (= bs!1157664 (and b!4801417 b!4801314)))

(assert (=> bs!1157664 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232514 lambda!232509))))

(declare-fun bs!1157665 () Bool)

(assert (= bs!1157665 (and b!4801417 b!4801364)))

(assert (=> bs!1157665 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232514 lambda!232511))))

(declare-fun bs!1157666 () Bool)

(assert (= bs!1157666 (and b!4801417 b!4801317)))

(assert (=> bs!1157666 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))) (= lambda!232514 lambda!232508))))

(declare-fun bs!1157667 () Bool)

(assert (= bs!1157667 (and b!4801417 b!4801419)))

(assert (=> bs!1157667 (= (= (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (= lambda!232514 lambda!232513))))

(assert (=> b!4801417 true))

(declare-fun bs!1157668 () Bool)

(declare-fun b!4801414 () Bool)

(assert (= bs!1157668 (and b!4801414 b!4801417)))

(declare-fun lambda!232515 () Int)

(assert (=> bs!1157668 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))) (= lambda!232515 lambda!232514))))

(declare-fun bs!1157669 () Bool)

(assert (= bs!1157669 (and b!4801414 b!4801292)))

(assert (=> bs!1157669 (= lambda!232515 lambda!232497)))

(declare-fun bs!1157670 () Bool)

(assert (= bs!1157670 (and b!4801414 b!4801319)))

(assert (=> bs!1157670 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))) (= lambda!232515 lambda!232507))))

(declare-fun bs!1157671 () Bool)

(assert (= bs!1157671 (and b!4801414 b!4801314)))

(assert (=> bs!1157671 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232515 lambda!232509))))

(declare-fun bs!1157672 () Bool)

(assert (= bs!1157672 (and b!4801414 b!4801364)))

(assert (=> bs!1157672 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (= lambda!232515 lambda!232511))))

(declare-fun bs!1157673 () Bool)

(assert (= bs!1157673 (and b!4801414 b!4801317)))

(assert (=> bs!1157673 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (Cons!54322 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))))) (= lambda!232515 lambda!232508))))

(declare-fun bs!1157674 () Bool)

(assert (= bs!1157674 (and b!4801414 b!4801419)))

(assert (=> bs!1157674 (= (= (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (= lambda!232515 lambda!232513))))

(assert (=> b!4801414 true))

(declare-fun bs!1157675 () Bool)

(declare-fun b!4801421 () Bool)

(assert (= bs!1157675 (and b!4801421 b!4801293)))

(declare-fun lambda!232516 () Int)

(assert (=> bs!1157675 (= lambda!232516 lambda!232498)))

(declare-fun bs!1157676 () Bool)

(assert (= bs!1157676 (and b!4801421 b!4801321)))

(assert (=> bs!1157676 (= lambda!232516 lambda!232510)))

(declare-fun bs!1157677 () Bool)

(assert (= bs!1157677 (and b!4801421 b!4801365)))

(assert (=> bs!1157677 (= lambda!232516 lambda!232512)))

(declare-fun res!2042151 () Bool)

(declare-fun e!2998353 () Bool)

(assert (=> b!4801414 (=> (not res!2042151) (not e!2998353))))

(declare-fun lt!1956800 () List!54449)

(assert (=> b!4801414 (= res!2042151 (forall!12333 lt!1956800 lambda!232515))))

(declare-fun b!4801415 () Bool)

(declare-fun e!2998354 () Unit!140691)

(declare-fun Unit!140752 () Unit!140691)

(assert (=> b!4801415 (= e!2998354 Unit!140752)))

(declare-fun b!4801416 () Bool)

(declare-fun e!2998355 () Unit!140691)

(declare-fun Unit!140753 () Unit!140691)

(assert (=> b!4801416 (= e!2998355 Unit!140753)))

(declare-fun e!2998356 () List!54449)

(assert (=> b!4801417 (= e!2998356 (Cons!54325 (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))))

(declare-fun c!818404 () Bool)

(assert (=> b!4801417 (= c!818404 (containsKey!4035 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))))

(declare-fun lt!1956797 () Unit!140691)

(assert (=> b!4801417 (= lt!1956797 e!2998355)))

(declare-fun c!818406 () Bool)

(assert (=> b!4801417 (= c!818406 (contains!17978 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))))

(declare-fun lt!1956801 () Unit!140691)

(assert (=> b!4801417 (= lt!1956801 e!2998354)))

(declare-fun lt!1956795 () List!54449)

(assert (=> b!4801417 (= lt!1956795 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))))

(declare-fun lt!1956798 () Unit!140691)

(assert (=> b!4801417 (= lt!1956798 (lemmaForallContainsAddHeadPreserves!350 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) lt!1956795 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))))

(assert (=> b!4801417 (forall!12333 lt!1956795 lambda!232514)))

(declare-fun lt!1956799 () Unit!140691)

(assert (=> b!4801417 (= lt!1956799 lt!1956798)))

(declare-fun b!4801418 () Bool)

(declare-fun res!2042152 () Bool)

(assert (=> b!4801418 (=> (not res!2042152) (not e!2998353))))

(assert (=> b!4801418 (= res!2042152 (= (length!726 lt!1956800) (length!727 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))))

(declare-fun d!1537398 () Bool)

(assert (=> d!1537398 e!2998353))

(declare-fun res!2042150 () Bool)

(assert (=> d!1537398 (=> (not res!2042150) (not e!2998353))))

(assert (=> d!1537398 (= res!2042150 (noDuplicate!935 lt!1956800))))

(assert (=> d!1537398 (= lt!1956800 e!2998356)))

(declare-fun c!818405 () Bool)

(assert (=> d!1537398 (= c!818405 ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))

(assert (=> d!1537398 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))

(assert (=> d!1537398 (= (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) lt!1956800)))

(assert (=> b!4801419 false))

(declare-fun lt!1956796 () Unit!140691)

(assert (=> b!4801419 (= lt!1956796 (forallContained!4215 (getKeysList!1100 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) lambda!232513 (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))))

(declare-fun Unit!140754 () Unit!140691)

(assert (=> b!4801419 (= e!2998354 Unit!140754)))

(declare-fun b!4801420 () Bool)

(assert (=> b!4801420 false))

(declare-fun Unit!140755 () Unit!140691)

(assert (=> b!4801420 (= e!2998355 Unit!140755)))

(assert (=> b!4801421 (= e!2998353 (= (content!9746 lt!1956800) (content!9746 (map!12277 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) lambda!232516))))))

(declare-fun b!4801422 () Bool)

(assert (=> b!4801422 (= e!2998356 Nil!54325)))

(assert (= (and d!1537398 c!818405) b!4801417))

(assert (= (and d!1537398 (not c!818405)) b!4801422))

(assert (= (and b!4801417 c!818404) b!4801420))

(assert (= (and b!4801417 (not c!818404)) b!4801416))

(assert (= (and b!4801417 c!818406) b!4801419))

(assert (= (and b!4801417 (not c!818406)) b!4801415))

(assert (= (and d!1537398 res!2042150) b!4801418))

(assert (= (and b!4801418 res!2042152) b!4801414))

(assert (= (and b!4801414 res!2042151) b!4801421))

(declare-fun m!5785424 () Bool)

(assert (=> d!1537398 m!5785424))

(assert (=> d!1537398 m!5785320))

(declare-fun m!5785426 () Bool)

(assert (=> b!4801414 m!5785426))

(declare-fun m!5785428 () Bool)

(assert (=> b!4801418 m!5785428))

(assert (=> b!4801418 m!5785264))

(declare-fun m!5785430 () Bool)

(assert (=> b!4801421 m!5785430))

(declare-fun m!5785432 () Bool)

(assert (=> b!4801421 m!5785432))

(assert (=> b!4801421 m!5785432))

(declare-fun m!5785434 () Bool)

(assert (=> b!4801421 m!5785434))

(declare-fun m!5785436 () Bool)

(assert (=> b!4801417 m!5785436))

(declare-fun m!5785438 () Bool)

(assert (=> b!4801417 m!5785438))

(declare-fun m!5785440 () Bool)

(assert (=> b!4801417 m!5785440))

(assert (=> b!4801417 m!5785440))

(declare-fun m!5785442 () Bool)

(assert (=> b!4801417 m!5785442))

(declare-fun m!5785444 () Bool)

(assert (=> b!4801417 m!5785444))

(assert (=> b!4801419 m!5785440))

(assert (=> b!4801419 m!5785440))

(declare-fun m!5785446 () Bool)

(assert (=> b!4801419 m!5785446))

(assert (=> b!4800911 d!1537398))

(declare-fun d!1537400 () Bool)

(assert (=> d!1537400 (isDefined!10326 (getValueByKey!2398 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(declare-fun lt!1956802 () Unit!140691)

(assert (=> d!1537400 (= lt!1956802 (choose!34699 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> d!1537400 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))

(assert (=> d!1537400 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2189 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896) lt!1956802)))

(declare-fun bs!1157678 () Bool)

(assert (= bs!1157678 d!1537400))

(assert (=> bs!1157678 m!5784784))

(assert (=> bs!1157678 m!5784784))

(assert (=> bs!1157678 m!5784786))

(declare-fun m!5785448 () Bool)

(assert (=> bs!1157678 m!5785448))

(assert (=> bs!1157678 m!5785276))

(assert (=> b!4800975 d!1537400))

(assert (=> b!4800975 d!1537394))

(assert (=> b!4800975 d!1537396))

(declare-fun d!1537402 () Bool)

(assert (=> d!1537402 (contains!17978 (getKeysList!1100 (toList!7004 (extractMap!2489 (toList!7003 lm!2473)))) key!5896)))

(declare-fun lt!1956803 () Unit!140691)

(assert (=> d!1537402 (= lt!1956803 (choose!34700 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896))))

(assert (=> d!1537402 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))))))

(assert (=> d!1537402 (= (lemmaInListThenGetKeysListContains!1095 (toList!7004 (extractMap!2489 (toList!7003 lm!2473))) key!5896) lt!1956803)))

(declare-fun bs!1157679 () Bool)

(assert (= bs!1157679 d!1537402))

(assert (=> bs!1157679 m!5784794))

(assert (=> bs!1157679 m!5784794))

(declare-fun m!5785450 () Bool)

(assert (=> bs!1157679 m!5785450))

(declare-fun m!5785452 () Bool)

(assert (=> bs!1157679 m!5785452))

(assert (=> bs!1157679 m!5785276))

(assert (=> b!4800975 d!1537402))

(declare-fun d!1537404 () Bool)

(declare-fun res!2042153 () Bool)

(declare-fun e!2998357 () Bool)

(assert (=> d!1537404 (=> res!2042153 e!2998357)))

(assert (=> d!1537404 (= res!2042153 (and ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) (= (_1!31802 (h!60754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))) key!5896)))))

(assert (=> d!1537404 (= (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) e!2998357)))

(declare-fun b!4801423 () Bool)

(declare-fun e!2998358 () Bool)

(assert (=> b!4801423 (= e!2998357 e!2998358)))

(declare-fun res!2042154 () Bool)

(assert (=> b!4801423 (=> (not res!2042154) (not e!2998358))))

(assert (=> b!4801423 (= res!2042154 ((_ is Cons!54322) (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))))))

(declare-fun b!4801424 () Bool)

(assert (=> b!4801424 (= e!2998358 (containsKey!4035 (t!361896 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399)))) key!5896))))

(assert (= (and d!1537404 (not res!2042153)) b!4801423))

(assert (= (and b!4801423 res!2042154) b!4801424))

(declare-fun m!5785454 () Bool)

(assert (=> b!4801424 m!5785454))

(assert (=> b!4800913 d!1537404))

(declare-fun d!1537406 () Bool)

(assert (=> d!1537406 (containsKey!4035 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896)))

(declare-fun lt!1956804 () Unit!140691)

(assert (=> d!1537406 (= lt!1956804 (choose!34698 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896))))

(assert (=> d!1537406 (invariantList!1754 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))))))

(assert (=> d!1537406 (= (lemmaInGetKeysListThenContainsKey!1100 (toList!7004 (extractMap!2489 (toList!7003 lt!1956399))) key!5896) lt!1956804)))

(declare-fun bs!1157680 () Bool)

(assert (= bs!1157680 d!1537406))

(assert (=> bs!1157680 m!5784686))

(declare-fun m!5785456 () Bool)

(assert (=> bs!1157680 m!5785456))

(assert (=> bs!1157680 m!5785320))

(assert (=> b!4800913 d!1537406))

(declare-fun d!1537408 () Bool)

(assert (=> d!1537408 (= (invariantList!1754 (toList!7004 lt!1956498)) (noDuplicatedKeys!454 (toList!7004 lt!1956498)))))

(declare-fun bs!1157681 () Bool)

(assert (= bs!1157681 d!1537408))

(declare-fun m!5785458 () Bool)

(assert (=> bs!1157681 m!5785458))

(assert (=> d!1537104 d!1537408))

(declare-fun d!1537410 () Bool)

(declare-fun res!2042155 () Bool)

(declare-fun e!2998359 () Bool)

(assert (=> d!1537410 (=> res!2042155 e!2998359)))

(assert (=> d!1537410 (= res!2042155 ((_ is Nil!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537410 (= (forall!12329 (toList!7003 lt!1956399) lambda!232386) e!2998359)))

(declare-fun b!4801425 () Bool)

(declare-fun e!2998360 () Bool)

(assert (=> b!4801425 (= e!2998359 e!2998360)))

(declare-fun res!2042156 () Bool)

(assert (=> b!4801425 (=> (not res!2042156) (not e!2998360))))

(assert (=> b!4801425 (= res!2042156 (dynLambda!22093 lambda!232386 (h!60755 (toList!7003 lt!1956399))))))

(declare-fun b!4801426 () Bool)

(assert (=> b!4801426 (= e!2998360 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232386))))

(assert (= (and d!1537410 (not res!2042155)) b!4801425))

(assert (= (and b!4801425 res!2042156) b!4801426))

(declare-fun b_lambda!187661 () Bool)

(assert (=> (not b_lambda!187661) (not b!4801425)))

(declare-fun m!5785460 () Bool)

(assert (=> b!4801425 m!5785460))

(declare-fun m!5785462 () Bool)

(assert (=> b!4801426 m!5785462))

(assert (=> d!1537104 d!1537410))

(declare-fun d!1537412 () Bool)

(assert (=> d!1537412 (= (tail!9328 (toList!7003 lm!2473)) (t!361897 (toList!7003 lm!2473)))))

(assert (=> d!1537128 d!1537412))

(assert (=> d!1537066 d!1537404))

(declare-fun d!1537414 () Bool)

(declare-fun e!2998362 () Bool)

(assert (=> d!1537414 e!2998362))

(declare-fun res!2042157 () Bool)

(assert (=> d!1537414 (=> res!2042157 e!2998362)))

(declare-fun lt!1956807 () Bool)

(assert (=> d!1537414 (= res!2042157 (not lt!1956807))))

(declare-fun lt!1956805 () Bool)

(assert (=> d!1537414 (= lt!1956807 lt!1956805)))

(declare-fun lt!1956806 () Unit!140691)

(declare-fun e!2998361 () Unit!140691)

(assert (=> d!1537414 (= lt!1956806 e!2998361)))

(declare-fun c!818407 () Bool)

(assert (=> d!1537414 (= c!818407 lt!1956805)))

(assert (=> d!1537414 (= lt!1956805 (containsKey!4036 (toList!7003 lm!2473) (hash!5018 hashF!1559 key!5896)))))

(assert (=> d!1537414 (= (contains!17975 lm!2473 (hash!5018 hashF!1559 key!5896)) lt!1956807)))

(declare-fun b!4801427 () Bool)

(declare-fun lt!1956808 () Unit!140691)

(assert (=> b!4801427 (= e!2998361 lt!1956808)))

(assert (=> b!4801427 (= lt!1956808 (lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (toList!7003 lm!2473) (hash!5018 hashF!1559 key!5896)))))

(assert (=> b!4801427 (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) (hash!5018 hashF!1559 key!5896)))))

(declare-fun b!4801428 () Bool)

(declare-fun Unit!140756 () Unit!140691)

(assert (=> b!4801428 (= e!2998361 Unit!140756)))

(declare-fun b!4801429 () Bool)

(assert (=> b!4801429 (= e!2998362 (isDefined!10327 (getValueByKey!2399 (toList!7003 lm!2473) (hash!5018 hashF!1559 key!5896))))))

(assert (= (and d!1537414 c!818407) b!4801427))

(assert (= (and d!1537414 (not c!818407)) b!4801428))

(assert (= (and d!1537414 (not res!2042157)) b!4801429))

(assert (=> d!1537414 m!5784530))

(declare-fun m!5785464 () Bool)

(assert (=> d!1537414 m!5785464))

(assert (=> b!4801427 m!5784530))

(declare-fun m!5785466 () Bool)

(assert (=> b!4801427 m!5785466))

(assert (=> b!4801427 m!5784530))

(assert (=> b!4801427 m!5785402))

(assert (=> b!4801427 m!5785402))

(declare-fun m!5785468 () Bool)

(assert (=> b!4801427 m!5785468))

(assert (=> b!4801429 m!5784530))

(assert (=> b!4801429 m!5785402))

(assert (=> b!4801429 m!5785402))

(assert (=> b!4801429 m!5785468))

(assert (=> d!1537120 d!1537414))

(assert (=> d!1537120 d!1537124))

(declare-fun d!1537416 () Bool)

(declare-fun e!2998365 () Bool)

(assert (=> d!1537416 e!2998365))

(declare-fun res!2042160 () Bool)

(assert (=> d!1537416 (=> (not res!2042160) (not e!2998365))))

(assert (=> d!1537416 (= res!2042160 (contains!17975 lm!2473 (hash!5018 hashF!1559 key!5896)))))

(assert (=> d!1537416 true))

(declare-fun _$5!262 () Unit!140691)

(assert (=> d!1537416 (= (choose!34691 lm!2473 key!5896 hashF!1559) _$5!262)))

(declare-fun b!4801432 () Bool)

(assert (=> b!4801432 (= e!2998365 (isDefined!10323 (getPair!934 (apply!13035 lm!2473 (hash!5018 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537416 res!2042160) b!4801432))

(assert (=> d!1537416 m!5784530))

(assert (=> d!1537416 m!5784530))

(assert (=> d!1537416 m!5784738))

(assert (=> b!4801432 m!5784530))

(assert (=> b!4801432 m!5784530))

(assert (=> b!4801432 m!5784744))

(assert (=> b!4801432 m!5784744))

(assert (=> b!4801432 m!5784746))

(assert (=> b!4801432 m!5784746))

(assert (=> b!4801432 m!5784748))

(assert (=> d!1537120 d!1537416))

(declare-fun d!1537418 () Bool)

(declare-fun res!2042161 () Bool)

(declare-fun e!2998366 () Bool)

(assert (=> d!1537418 (=> res!2042161 e!2998366)))

(assert (=> d!1537418 (= res!2042161 ((_ is Nil!54323) (toList!7003 lm!2473)))))

(assert (=> d!1537418 (= (forall!12329 (toList!7003 lm!2473) lambda!232392) e!2998366)))

(declare-fun b!4801433 () Bool)

(declare-fun e!2998367 () Bool)

(assert (=> b!4801433 (= e!2998366 e!2998367)))

(declare-fun res!2042162 () Bool)

(assert (=> b!4801433 (=> (not res!2042162) (not e!2998367))))

(assert (=> b!4801433 (= res!2042162 (dynLambda!22093 lambda!232392 (h!60755 (toList!7003 lm!2473))))))

(declare-fun b!4801434 () Bool)

(assert (=> b!4801434 (= e!2998367 (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232392))))

(assert (= (and d!1537418 (not res!2042161)) b!4801433))

(assert (= (and b!4801433 res!2042162) b!4801434))

(declare-fun b_lambda!187663 () Bool)

(assert (=> (not b_lambda!187663) (not b!4801433)))

(declare-fun m!5785470 () Bool)

(assert (=> b!4801433 m!5785470))

(declare-fun m!5785472 () Bool)

(assert (=> b!4801434 m!5785472))

(assert (=> d!1537120 d!1537418))

(declare-fun d!1537420 () Bool)

(assert (=> d!1537420 (= (isDefined!10327 (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400)) (not (isEmpty!29507 (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400))))))

(declare-fun bs!1157682 () Bool)

(assert (= bs!1157682 d!1537420))

(assert (=> bs!1157682 m!5784762))

(declare-fun m!5785474 () Bool)

(assert (=> bs!1157682 m!5785474))

(assert (=> b!4800964 d!1537420))

(declare-fun b!4801436 () Bool)

(declare-fun e!2998368 () Option!13186)

(declare-fun e!2998369 () Option!13186)

(assert (=> b!4801436 (= e!2998368 e!2998369)))

(declare-fun c!818409 () Bool)

(assert (=> b!4801436 (= c!818409 (and ((_ is Cons!54323) (toList!7003 lt!1956399)) (not (= (_1!31803 (h!60755 (toList!7003 lt!1956399))) lt!1956400))))))

(declare-fun d!1537422 () Bool)

(declare-fun c!818408 () Bool)

(assert (=> d!1537422 (= c!818408 (and ((_ is Cons!54323) (toList!7003 lt!1956399)) (= (_1!31803 (h!60755 (toList!7003 lt!1956399))) lt!1956400)))))

(assert (=> d!1537422 (= (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400) e!2998368)))

(declare-fun b!4801437 () Bool)

(assert (=> b!4801437 (= e!2998369 (getValueByKey!2399 (t!361897 (toList!7003 lt!1956399)) lt!1956400))))

(declare-fun b!4801435 () Bool)

(assert (=> b!4801435 (= e!2998368 (Some!13185 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(declare-fun b!4801438 () Bool)

(assert (=> b!4801438 (= e!2998369 None!13185)))

(assert (= (and d!1537422 c!818408) b!4801435))

(assert (= (and d!1537422 (not c!818408)) b!4801436))

(assert (= (and b!4801436 c!818409) b!4801437))

(assert (= (and b!4801436 (not c!818409)) b!4801438))

(declare-fun m!5785476 () Bool)

(assert (=> b!4801437 m!5785476))

(assert (=> b!4800964 d!1537422))

(declare-fun d!1537424 () Bool)

(declare-fun lt!1956811 () Bool)

(declare-fun content!9748 (List!54446) (InoxSet tuple2!57016))

(assert (=> d!1537424 (= lt!1956811 (select (content!9748 (apply!13035 lm!2473 lt!1956400)) (get!18549 lt!1956535)))))

(declare-fun e!2998375 () Bool)

(assert (=> d!1537424 (= lt!1956811 e!2998375)))

(declare-fun res!2042167 () Bool)

(assert (=> d!1537424 (=> (not res!2042167) (not e!2998375))))

(assert (=> d!1537424 (= res!2042167 ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400)))))

(assert (=> d!1537424 (= (contains!17979 (apply!13035 lm!2473 lt!1956400) (get!18549 lt!1956535)) lt!1956811)))

(declare-fun b!4801443 () Bool)

(declare-fun e!2998374 () Bool)

(assert (=> b!4801443 (= e!2998375 e!2998374)))

(declare-fun res!2042168 () Bool)

(assert (=> b!4801443 (=> res!2042168 e!2998374)))

(assert (=> b!4801443 (= res!2042168 (= (h!60754 (apply!13035 lm!2473 lt!1956400)) (get!18549 lt!1956535)))))

(declare-fun b!4801444 () Bool)

(assert (=> b!4801444 (= e!2998374 (contains!17979 (t!361896 (apply!13035 lm!2473 lt!1956400)) (get!18549 lt!1956535)))))

(assert (= (and d!1537424 res!2042167) b!4801443))

(assert (= (and b!4801443 (not res!2042168)) b!4801444))

(assert (=> d!1537424 m!5784520))

(declare-fun m!5785478 () Bool)

(assert (=> d!1537424 m!5785478))

(assert (=> d!1537424 m!5784816))

(declare-fun m!5785480 () Bool)

(assert (=> d!1537424 m!5785480))

(assert (=> b!4801444 m!5784816))

(declare-fun m!5785482 () Bool)

(assert (=> b!4801444 m!5785482))

(assert (=> b!4801004 d!1537424))

(declare-fun d!1537426 () Bool)

(assert (=> d!1537426 (= (get!18549 lt!1956535) (v!48506 lt!1956535))))

(assert (=> b!4801004 d!1537426))

(declare-fun d!1537428 () Bool)

(declare-fun choose!34702 (Hashable!6962 K!15894) (_ BitVec 64))

(assert (=> d!1537428 (= (hash!5020 hashF!1559 key!5896) (choose!34702 hashF!1559 key!5896))))

(declare-fun bs!1157683 () Bool)

(assert (= bs!1157683 d!1537428))

(declare-fun m!5785484 () Bool)

(assert (=> bs!1157683 m!5785484))

(assert (=> d!1537124 d!1537428))

(declare-fun d!1537430 () Bool)

(declare-fun res!2042169 () Bool)

(declare-fun e!2998376 () Bool)

(assert (=> d!1537430 (=> res!2042169 e!2998376)))

(assert (=> d!1537430 (= res!2042169 (not ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(assert (=> d!1537430 (= (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399)))) e!2998376)))

(declare-fun b!4801445 () Bool)

(declare-fun e!2998377 () Bool)

(assert (=> b!4801445 (= e!2998376 e!2998377)))

(declare-fun res!2042170 () Bool)

(assert (=> b!4801445 (=> (not res!2042170) (not e!2998377))))

(assert (=> b!4801445 (= res!2042170 (not (containsKey!4032 (t!361896 (_2!31803 (h!60755 (toList!7003 lt!1956399)))) (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))))

(declare-fun b!4801446 () Bool)

(assert (=> b!4801446 (= e!2998377 (noDuplicateKeys!2362 (t!361896 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(assert (= (and d!1537430 (not res!2042169)) b!4801445))

(assert (= (and b!4801445 res!2042170) b!4801446))

(declare-fun m!5785486 () Bool)

(assert (=> b!4801445 m!5785486))

(declare-fun m!5785488 () Bool)

(assert (=> b!4801446 m!5785488))

(assert (=> bs!1157522 d!1537430))

(declare-fun d!1537432 () Bool)

(declare-fun res!2042171 () Bool)

(declare-fun e!2998378 () Bool)

(assert (=> d!1537432 (=> res!2042171 e!2998378)))

(assert (=> d!1537432 (= res!2042171 ((_ is Nil!54323) (t!361897 (toList!7003 lm!2473))))))

(assert (=> d!1537432 (= (forall!12329 (t!361897 (toList!7003 lm!2473)) lambda!232357) e!2998378)))

(declare-fun b!4801447 () Bool)

(declare-fun e!2998379 () Bool)

(assert (=> b!4801447 (= e!2998378 e!2998379)))

(declare-fun res!2042172 () Bool)

(assert (=> b!4801447 (=> (not res!2042172) (not e!2998379))))

(assert (=> b!4801447 (= res!2042172 (dynLambda!22093 lambda!232357 (h!60755 (t!361897 (toList!7003 lm!2473)))))))

(declare-fun b!4801448 () Bool)

(assert (=> b!4801448 (= e!2998379 (forall!12329 (t!361897 (t!361897 (toList!7003 lm!2473))) lambda!232357))))

(assert (= (and d!1537432 (not res!2042171)) b!4801447))

(assert (= (and b!4801447 res!2042172) b!4801448))

(declare-fun b_lambda!187665 () Bool)

(assert (=> (not b_lambda!187665) (not b!4801447)))

(declare-fun m!5785490 () Bool)

(assert (=> b!4801447 m!5785490))

(declare-fun m!5785492 () Bool)

(assert (=> b!4801448 m!5785492))

(assert (=> b!4800931 d!1537432))

(declare-fun d!1537434 () Bool)

(declare-fun lt!1956812 () Bool)

(assert (=> d!1537434 (= lt!1956812 (select (content!9746 e!2998056) key!5896))))

(declare-fun e!2998381 () Bool)

(assert (=> d!1537434 (= lt!1956812 e!2998381)))

(declare-fun res!2042174 () Bool)

(assert (=> d!1537434 (=> (not res!2042174) (not e!2998381))))

(assert (=> d!1537434 (= res!2042174 ((_ is Cons!54325) e!2998056))))

(assert (=> d!1537434 (= (contains!17978 e!2998056 key!5896) lt!1956812)))

(declare-fun b!4801449 () Bool)

(declare-fun e!2998380 () Bool)

(assert (=> b!4801449 (= e!2998381 e!2998380)))

(declare-fun res!2042173 () Bool)

(assert (=> b!4801449 (=> res!2042173 e!2998380)))

(assert (=> b!4801449 (= res!2042173 (= (h!60757 e!2998056) key!5896))))

(declare-fun b!4801450 () Bool)

(assert (=> b!4801450 (= e!2998380 (contains!17978 (t!361899 e!2998056) key!5896))))

(assert (= (and d!1537434 res!2042174) b!4801449))

(assert (= (and b!4801449 (not res!2042173)) b!4801450))

(declare-fun m!5785494 () Bool)

(assert (=> d!1537434 m!5785494))

(declare-fun m!5785496 () Bool)

(assert (=> d!1537434 m!5785496))

(declare-fun m!5785498 () Bool)

(assert (=> b!4801450 m!5785498))

(assert (=> bm!335367 d!1537434))

(assert (=> b!4800908 d!1537326))

(assert (=> b!4800908 d!1537328))

(assert (=> b!4800971 d!1537354))

(assert (=> b!4800971 d!1537356))

(assert (=> b!4800909 d!1537328))

(declare-fun bs!1157684 () Bool)

(declare-fun b!4801454 () Bool)

(assert (= bs!1157684 (and b!4801454 b!4801270)))

(declare-fun lambda!232517 () Int)

(assert (=> bs!1157684 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232517 lambda!232488))))

(declare-fun bs!1157685 () Bool)

(assert (= bs!1157685 (and b!4801454 b!4801268)))

(assert (=> bs!1157685 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232517 lambda!232489))))

(assert (=> bs!1157685 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956743) (= lambda!232517 lambda!232490))))

(declare-fun bs!1157686 () Bool)

(assert (= bs!1157686 (and b!4801454 d!1537176)))

(assert (=> bs!1157686 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956739) (= lambda!232517 lambda!232491))))

(assert (=> b!4801454 true))

(declare-fun bs!1157687 () Bool)

(declare-fun b!4801452 () Bool)

(assert (= bs!1157687 (and b!4801452 b!4801268)))

(declare-fun lambda!232518 () Int)

(assert (=> bs!1157687 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232518 lambda!232489))))

(declare-fun bs!1157688 () Bool)

(assert (= bs!1157688 (and b!4801452 d!1537176)))

(assert (=> bs!1157688 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956739) (= lambda!232518 lambda!232491))))

(declare-fun bs!1157689 () Bool)

(assert (= bs!1157689 (and b!4801452 b!4801454)))

(assert (=> bs!1157689 (= lambda!232518 lambda!232517)))

(assert (=> bs!1157687 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956743) (= lambda!232518 lambda!232490))))

(declare-fun bs!1157690 () Bool)

(assert (= bs!1157690 (and b!4801452 b!4801270)))

(assert (=> bs!1157690 (= (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232518 lambda!232488))))

(assert (=> b!4801452 true))

(declare-fun lt!1956827 () ListMap!6475)

(declare-fun lambda!232519 () Int)

(assert (=> bs!1157687 (= (= lt!1956827 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232519 lambda!232489))))

(assert (=> bs!1157688 (= (= lt!1956827 lt!1956739) (= lambda!232519 lambda!232491))))

(assert (=> b!4801452 (= (= lt!1956827 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (= lambda!232519 lambda!232518))))

(assert (=> bs!1157689 (= (= lt!1956827 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (= lambda!232519 lambda!232517))))

(assert (=> bs!1157687 (= (= lt!1956827 lt!1956743) (= lambda!232519 lambda!232490))))

(assert (=> bs!1157690 (= (= lt!1956827 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232519 lambda!232488))))

(assert (=> b!4801452 true))

(declare-fun bs!1157691 () Bool)

(declare-fun d!1537436 () Bool)

(assert (= bs!1157691 (and d!1537436 b!4801268)))

(declare-fun lambda!232520 () Int)

(declare-fun lt!1956823 () ListMap!6475)

(assert (=> bs!1157691 (= (= lt!1956823 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232520 lambda!232489))))

(declare-fun bs!1157692 () Bool)

(assert (= bs!1157692 (and d!1537436 d!1537176)))

(assert (=> bs!1157692 (= (= lt!1956823 lt!1956739) (= lambda!232520 lambda!232491))))

(declare-fun bs!1157693 () Bool)

(assert (= bs!1157693 (and d!1537436 b!4801452)))

(assert (=> bs!1157693 (= (= lt!1956823 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (= lambda!232520 lambda!232518))))

(declare-fun bs!1157694 () Bool)

(assert (= bs!1157694 (and d!1537436 b!4801454)))

(assert (=> bs!1157694 (= (= lt!1956823 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (= lambda!232520 lambda!232517))))

(assert (=> bs!1157691 (= (= lt!1956823 lt!1956743) (= lambda!232520 lambda!232490))))

(assert (=> bs!1157693 (= (= lt!1956823 lt!1956827) (= lambda!232520 lambda!232519))))

(declare-fun bs!1157695 () Bool)

(assert (= bs!1157695 (and d!1537436 b!4801270)))

(assert (=> bs!1157695 (= (= lt!1956823 (extractMap!2489 (t!361897 (toList!7003 lm!2473)))) (= lambda!232520 lambda!232488))))

(assert (=> d!1537436 true))

(declare-fun b!4801451 () Bool)

(declare-fun e!2998382 () Bool)

(assert (=> b!4801451 (= e!2998382 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) lambda!232519))))

(declare-fun e!2998383 () Bool)

(assert (=> d!1537436 e!2998383))

(declare-fun res!2042175 () Bool)

(assert (=> d!1537436 (=> (not res!2042175) (not e!2998383))))

(assert (=> d!1537436 (= res!2042175 (forall!12332 (_2!31803 (h!60755 (toList!7003 lt!1956399))) lambda!232520))))

(declare-fun e!2998384 () ListMap!6475)

(assert (=> d!1537436 (= lt!1956823 e!2998384)))

(declare-fun c!818410 () Bool)

(assert (=> d!1537436 (= c!818410 ((_ is Nil!54322) (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(assert (=> d!1537436 (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))

(assert (=> d!1537436 (= (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (toList!7003 lt!1956399))) (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) lt!1956823)))

(assert (=> b!4801452 (= e!2998384 lt!1956827)))

(declare-fun lt!1956820 () ListMap!6475)

(assert (=> b!4801452 (= lt!1956820 (+!2505 (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(assert (=> b!4801452 (= lt!1956827 (addToMapMapFromBucket!1731 (t!361896 (_2!31803 (h!60755 (toList!7003 lt!1956399)))) (+!2505 (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))))

(declare-fun lt!1956819 () Unit!140691)

(declare-fun call!335395 () Unit!140691)

(assert (=> b!4801452 (= lt!1956819 call!335395)))

(assert (=> b!4801452 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) lambda!232518)))

(declare-fun lt!1956831 () Unit!140691)

(assert (=> b!4801452 (= lt!1956831 lt!1956819)))

(assert (=> b!4801452 (forall!12332 (toList!7004 lt!1956820) lambda!232519)))

(declare-fun lt!1956832 () Unit!140691)

(declare-fun Unit!140757 () Unit!140691)

(assert (=> b!4801452 (= lt!1956832 Unit!140757)))

(assert (=> b!4801452 (forall!12332 (t!361896 (_2!31803 (h!60755 (toList!7003 lt!1956399)))) lambda!232519)))

(declare-fun lt!1956813 () Unit!140691)

(declare-fun Unit!140758 () Unit!140691)

(assert (=> b!4801452 (= lt!1956813 Unit!140758)))

(declare-fun lt!1956817 () Unit!140691)

(declare-fun Unit!140759 () Unit!140691)

(assert (=> b!4801452 (= lt!1956817 Unit!140759)))

(declare-fun lt!1956814 () Unit!140691)

(assert (=> b!4801452 (= lt!1956814 (forallContained!4214 (toList!7004 lt!1956820) lambda!232519 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(assert (=> b!4801452 (contains!17974 lt!1956820 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(declare-fun lt!1956826 () Unit!140691)

(declare-fun Unit!140760 () Unit!140691)

(assert (=> b!4801452 (= lt!1956826 Unit!140760)))

(assert (=> b!4801452 (contains!17974 lt!1956827 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))))))

(declare-fun lt!1956833 () Unit!140691)

(declare-fun Unit!140761 () Unit!140691)

(assert (=> b!4801452 (= lt!1956833 Unit!140761)))

(assert (=> b!4801452 (forall!12332 (_2!31803 (h!60755 (toList!7003 lt!1956399))) lambda!232519)))

(declare-fun lt!1956821 () Unit!140691)

(declare-fun Unit!140762 () Unit!140691)

(assert (=> b!4801452 (= lt!1956821 Unit!140762)))

(assert (=> b!4801452 (forall!12332 (toList!7004 lt!1956820) lambda!232519)))

(declare-fun lt!1956825 () Unit!140691)

(declare-fun Unit!140763 () Unit!140691)

(assert (=> b!4801452 (= lt!1956825 Unit!140763)))

(declare-fun lt!1956830 () Unit!140691)

(declare-fun Unit!140764 () Unit!140691)

(assert (=> b!4801452 (= lt!1956830 Unit!140764)))

(declare-fun lt!1956822 () Unit!140691)

(assert (=> b!4801452 (= lt!1956822 (addForallContainsKeyThenBeforeAdding!960 (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956827 (_1!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399))))) (_2!31802 (h!60754 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))))

(declare-fun call!335394 () Bool)

(assert (=> b!4801452 call!335394))

(declare-fun lt!1956829 () Unit!140691)

(assert (=> b!4801452 (= lt!1956829 lt!1956822)))

(declare-fun call!335396 () Bool)

(assert (=> b!4801452 call!335396))

(declare-fun lt!1956824 () Unit!140691)

(declare-fun Unit!140765 () Unit!140691)

(assert (=> b!4801452 (= lt!1956824 Unit!140765)))

(declare-fun res!2042177 () Bool)

(assert (=> b!4801452 (= res!2042177 (forall!12332 (_2!31803 (h!60755 (toList!7003 lt!1956399))) lambda!232519))))

(assert (=> b!4801452 (=> (not res!2042177) (not e!2998382))))

(assert (=> b!4801452 e!2998382))

(declare-fun lt!1956828 () Unit!140691)

(declare-fun Unit!140766 () Unit!140691)

(assert (=> b!4801452 (= lt!1956828 Unit!140766)))

(declare-fun bm!335389 () Bool)

(assert (=> bm!335389 (= call!335396 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (ite c!818410 lambda!232517 lambda!232519)))))

(declare-fun b!4801453 () Bool)

(assert (=> b!4801453 (= e!2998383 (invariantList!1754 (toList!7004 lt!1956823)))))

(assert (=> b!4801454 (= e!2998384 (extractMap!2489 (t!361897 (toList!7003 lt!1956399))))))

(declare-fun lt!1956815 () Unit!140691)

(assert (=> b!4801454 (= lt!1956815 call!335395)))

(assert (=> b!4801454 call!335396))

(declare-fun lt!1956818 () Unit!140691)

(assert (=> b!4801454 (= lt!1956818 lt!1956815)))

(assert (=> b!4801454 call!335394))

(declare-fun lt!1956816 () Unit!140691)

(declare-fun Unit!140767 () Unit!140691)

(assert (=> b!4801454 (= lt!1956816 Unit!140767)))

(declare-fun bm!335390 () Bool)

(assert (=> bm!335390 (= call!335395 (lemmaContainsAllItsOwnKeys!961 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))))))

(declare-fun b!4801455 () Bool)

(declare-fun res!2042176 () Bool)

(assert (=> b!4801455 (=> (not res!2042176) (not e!2998383))))

(assert (=> b!4801455 (= res!2042176 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) lambda!232520))))

(declare-fun bm!335391 () Bool)

(assert (=> bm!335391 (= call!335394 (forall!12332 (toList!7004 (extractMap!2489 (t!361897 (toList!7003 lt!1956399)))) (ite c!818410 lambda!232517 lambda!232519)))))

(assert (= (and d!1537436 c!818410) b!4801454))

(assert (= (and d!1537436 (not c!818410)) b!4801452))

(assert (= (and b!4801452 res!2042177) b!4801451))

(assert (= (or b!4801454 b!4801452) bm!335391))

(assert (= (or b!4801454 b!4801452) bm!335389))

(assert (= (or b!4801454 b!4801452) bm!335390))

(assert (= (and d!1537436 res!2042175) b!4801455))

(assert (= (and b!4801455 res!2042176) b!4801453))

(declare-fun m!5785500 () Bool)

(assert (=> bm!335391 m!5785500))

(declare-fun m!5785502 () Bool)

(assert (=> b!4801455 m!5785502))

(declare-fun m!5785504 () Bool)

(assert (=> d!1537436 m!5785504))

(assert (=> d!1537436 m!5784826))

(assert (=> bm!335390 m!5784714))

(declare-fun m!5785506 () Bool)

(assert (=> bm!335390 m!5785506))

(declare-fun m!5785508 () Bool)

(assert (=> b!4801453 m!5785508))

(declare-fun m!5785510 () Bool)

(assert (=> b!4801451 m!5785510))

(declare-fun m!5785512 () Bool)

(assert (=> b!4801452 m!5785512))

(assert (=> b!4801452 m!5784714))

(declare-fun m!5785514 () Bool)

(assert (=> b!4801452 m!5785514))

(assert (=> b!4801452 m!5784714))

(declare-fun m!5785516 () Bool)

(assert (=> b!4801452 m!5785516))

(declare-fun m!5785518 () Bool)

(assert (=> b!4801452 m!5785518))

(declare-fun m!5785520 () Bool)

(assert (=> b!4801452 m!5785520))

(assert (=> b!4801452 m!5785514))

(declare-fun m!5785522 () Bool)

(assert (=> b!4801452 m!5785522))

(declare-fun m!5785524 () Bool)

(assert (=> b!4801452 m!5785524))

(assert (=> b!4801452 m!5785520))

(declare-fun m!5785526 () Bool)

(assert (=> b!4801452 m!5785526))

(declare-fun m!5785528 () Bool)

(assert (=> b!4801452 m!5785528))

(declare-fun m!5785530 () Bool)

(assert (=> b!4801452 m!5785530))

(assert (=> b!4801452 m!5785528))

(assert (=> bm!335389 m!5785500))

(assert (=> b!4800924 d!1537436))

(declare-fun bs!1157696 () Bool)

(declare-fun d!1537438 () Bool)

(assert (= bs!1157696 (and d!1537438 d!1537058)))

(declare-fun lambda!232521 () Int)

(assert (=> bs!1157696 (= lambda!232521 lambda!232369)))

(declare-fun bs!1157697 () Bool)

(assert (= bs!1157697 (and d!1537438 d!1537136)))

(assert (=> bs!1157697 (= lambda!232521 lambda!232396)))

(declare-fun bs!1157698 () Bool)

(assert (= bs!1157698 (and d!1537438 start!495454)))

(assert (=> bs!1157698 (= lambda!232521 lambda!232357)))

(declare-fun bs!1157699 () Bool)

(assert (= bs!1157699 (and d!1537438 d!1537118)))

(assert (=> bs!1157699 (= lambda!232521 lambda!232389)))

(declare-fun bs!1157700 () Bool)

(assert (= bs!1157700 (and d!1537438 d!1537104)))

(assert (=> bs!1157700 (= lambda!232521 lambda!232386)))

(declare-fun bs!1157701 () Bool)

(assert (= bs!1157701 (and d!1537438 d!1537120)))

(assert (=> bs!1157701 (= lambda!232521 lambda!232392)))

(declare-fun bs!1157702 () Bool)

(assert (= bs!1157702 (and d!1537438 d!1537130)))

(assert (=> bs!1157702 (= lambda!232521 lambda!232395)))

(declare-fun bs!1157703 () Bool)

(assert (= bs!1157703 (and d!1537438 d!1537146)))

(assert (=> bs!1157703 (not (= lambda!232521 lambda!232397))))

(declare-fun bs!1157704 () Bool)

(assert (= bs!1157704 (and d!1537438 d!1537322)))

(assert (=> bs!1157704 (= lambda!232521 lambda!232492)))

(declare-fun bs!1157705 () Bool)

(assert (= bs!1157705 (and d!1537438 d!1537054)))

(assert (=> bs!1157705 (not (= lambda!232521 lambda!232363))))

(declare-fun lt!1956834 () ListMap!6475)

(assert (=> d!1537438 (invariantList!1754 (toList!7004 lt!1956834))))

(declare-fun e!2998385 () ListMap!6475)

(assert (=> d!1537438 (= lt!1956834 e!2998385)))

(declare-fun c!818411 () Bool)

(assert (=> d!1537438 (= c!818411 ((_ is Cons!54323) (t!361897 (toList!7003 lt!1956399))))))

(assert (=> d!1537438 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232521)))

(assert (=> d!1537438 (= (extractMap!2489 (t!361897 (toList!7003 lt!1956399))) lt!1956834)))

(declare-fun b!4801456 () Bool)

(assert (=> b!4801456 (= e!2998385 (addToMapMapFromBucket!1731 (_2!31803 (h!60755 (t!361897 (toList!7003 lt!1956399)))) (extractMap!2489 (t!361897 (t!361897 (toList!7003 lt!1956399))))))))

(declare-fun b!4801457 () Bool)

(assert (=> b!4801457 (= e!2998385 (ListMap!6476 Nil!54322))))

(assert (= (and d!1537438 c!818411) b!4801456))

(assert (= (and d!1537438 (not c!818411)) b!4801457))

(declare-fun m!5785532 () Bool)

(assert (=> d!1537438 m!5785532))

(declare-fun m!5785534 () Bool)

(assert (=> d!1537438 m!5785534))

(declare-fun m!5785536 () Bool)

(assert (=> b!4801456 m!5785536))

(assert (=> b!4801456 m!5785536))

(declare-fun m!5785538 () Bool)

(assert (=> b!4801456 m!5785538))

(assert (=> b!4800924 d!1537438))

(assert (=> d!1537058 d!1537066))

(assert (=> d!1537058 d!1537104))

(declare-fun d!1537440 () Bool)

(assert (=> d!1537440 (not (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896))))

(assert (=> d!1537440 true))

(declare-fun _$28!853 () Unit!140691)

(assert (=> d!1537440 (= (choose!34689 lt!1956399 key!5896 hashF!1559) _$28!853)))

(declare-fun bs!1157706 () Bool)

(assert (= bs!1157706 d!1537440))

(assert (=> bs!1157706 m!5784504))

(assert (=> bs!1157706 m!5784504))

(assert (=> bs!1157706 m!5784510))

(assert (=> d!1537058 d!1537440))

(declare-fun d!1537442 () Bool)

(declare-fun res!2042178 () Bool)

(declare-fun e!2998386 () Bool)

(assert (=> d!1537442 (=> res!2042178 e!2998386)))

(assert (=> d!1537442 (= res!2042178 ((_ is Nil!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537442 (= (forall!12329 (toList!7003 lt!1956399) lambda!232369) e!2998386)))

(declare-fun b!4801458 () Bool)

(declare-fun e!2998387 () Bool)

(assert (=> b!4801458 (= e!2998386 e!2998387)))

(declare-fun res!2042179 () Bool)

(assert (=> b!4801458 (=> (not res!2042179) (not e!2998387))))

(assert (=> b!4801458 (= res!2042179 (dynLambda!22093 lambda!232369 (h!60755 (toList!7003 lt!1956399))))))

(declare-fun b!4801459 () Bool)

(assert (=> b!4801459 (= e!2998387 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232369))))

(assert (= (and d!1537442 (not res!2042178)) b!4801458))

(assert (= (and b!4801458 res!2042179) b!4801459))

(declare-fun b_lambda!187667 () Bool)

(assert (=> (not b_lambda!187667) (not b!4801458)))

(declare-fun m!5785540 () Bool)

(assert (=> b!4801458 m!5785540))

(declare-fun m!5785542 () Bool)

(assert (=> b!4801459 m!5785542))

(assert (=> d!1537058 d!1537442))

(declare-fun d!1537444 () Bool)

(declare-fun res!2042180 () Bool)

(declare-fun e!2998388 () Bool)

(assert (=> d!1537444 (=> res!2042180 e!2998388)))

(assert (=> d!1537444 (= res!2042180 (and ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400)) (= (_1!31802 (h!60754 (apply!13035 lm!2473 lt!1956400))) key!5896)))))

(assert (=> d!1537444 (= (containsKey!4032 (apply!13035 lm!2473 lt!1956400) key!5896) e!2998388)))

(declare-fun b!4801460 () Bool)

(declare-fun e!2998389 () Bool)

(assert (=> b!4801460 (= e!2998388 e!2998389)))

(declare-fun res!2042181 () Bool)

(assert (=> b!4801460 (=> (not res!2042181) (not e!2998389))))

(assert (=> b!4801460 (= res!2042181 ((_ is Cons!54322) (apply!13035 lm!2473 lt!1956400)))))

(declare-fun b!4801461 () Bool)

(assert (=> b!4801461 (= e!2998389 (containsKey!4032 (t!361896 (apply!13035 lm!2473 lt!1956400)) key!5896))))

(assert (= (and d!1537444 (not res!2042180)) b!4801460))

(assert (= (and b!4801460 res!2042181) b!4801461))

(assert (=> b!4801461 m!5785338))

(assert (=> b!4801000 d!1537444))

(declare-fun d!1537446 () Bool)

(declare-fun res!2042182 () Bool)

(declare-fun e!2998390 () Bool)

(assert (=> d!1537446 (=> res!2042182 e!2998390)))

(assert (=> d!1537446 (= res!2042182 (and ((_ is Cons!54323) (toList!7003 lm!2473)) (= (_1!31803 (h!60755 (toList!7003 lm!2473))) lt!1956400)))))

(assert (=> d!1537446 (= (containsKey!4036 (toList!7003 lm!2473) lt!1956400) e!2998390)))

(declare-fun b!4801462 () Bool)

(declare-fun e!2998391 () Bool)

(assert (=> b!4801462 (= e!2998390 e!2998391)))

(declare-fun res!2042183 () Bool)

(assert (=> b!4801462 (=> (not res!2042183) (not e!2998391))))

(assert (=> b!4801462 (= res!2042183 (and (or (not ((_ is Cons!54323) (toList!7003 lm!2473))) (bvsle (_1!31803 (h!60755 (toList!7003 lm!2473))) lt!1956400)) ((_ is Cons!54323) (toList!7003 lm!2473)) (bvslt (_1!31803 (h!60755 (toList!7003 lm!2473))) lt!1956400)))))

(declare-fun b!4801463 () Bool)

(assert (=> b!4801463 (= e!2998391 (containsKey!4036 (t!361897 (toList!7003 lm!2473)) lt!1956400))))

(assert (= (and d!1537446 (not res!2042182)) b!4801462))

(assert (= (and b!4801462 res!2042183) b!4801463))

(declare-fun m!5785544 () Bool)

(assert (=> b!4801463 m!5785544))

(assert (=> d!1537114 d!1537446))

(declare-fun d!1537448 () Bool)

(assert (=> d!1537448 (isDefined!10327 (getValueByKey!2399 (toList!7003 lt!1956399) lt!1956400))))

(declare-fun lt!1956835 () Unit!140691)

(assert (=> d!1537448 (= lt!1956835 (choose!34701 (toList!7003 lt!1956399) lt!1956400))))

(declare-fun e!2998392 () Bool)

(assert (=> d!1537448 e!2998392))

(declare-fun res!2042184 () Bool)

(assert (=> d!1537448 (=> (not res!2042184) (not e!2998392))))

(assert (=> d!1537448 (= res!2042184 (isStrictlySorted!900 (toList!7003 lt!1956399)))))

(assert (=> d!1537448 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2190 (toList!7003 lt!1956399) lt!1956400) lt!1956835)))

(declare-fun b!4801464 () Bool)

(assert (=> b!4801464 (= e!2998392 (containsKey!4036 (toList!7003 lt!1956399) lt!1956400))))

(assert (= (and d!1537448 res!2042184) b!4801464))

(assert (=> d!1537448 m!5784762))

(assert (=> d!1537448 m!5784762))

(assert (=> d!1537448 m!5784764))

(declare-fun m!5785546 () Bool)

(assert (=> d!1537448 m!5785546))

(declare-fun m!5785548 () Bool)

(assert (=> d!1537448 m!5785548))

(assert (=> b!4801464 m!5784758))

(assert (=> b!4800962 d!1537448))

(assert (=> b!4800962 d!1537420))

(assert (=> b!4800962 d!1537422))

(assert (=> d!1537130 d!1537066))

(assert (=> d!1537130 d!1537104))

(declare-fun d!1537450 () Bool)

(assert (=> d!1537450 (contains!17974 (extractMap!2489 (toList!7003 lt!1956399)) key!5896)))

(assert (=> d!1537450 true))

(declare-fun _$34!948 () Unit!140691)

(assert (=> d!1537450 (= (choose!34692 lt!1956399 key!5896 hashF!1559) _$34!948)))

(declare-fun bs!1157707 () Bool)

(assert (= bs!1157707 d!1537450))

(assert (=> bs!1157707 m!5784504))

(assert (=> bs!1157707 m!5784504))

(assert (=> bs!1157707 m!5784510))

(assert (=> d!1537130 d!1537450))

(declare-fun d!1537452 () Bool)

(declare-fun res!2042185 () Bool)

(declare-fun e!2998393 () Bool)

(assert (=> d!1537452 (=> res!2042185 e!2998393)))

(assert (=> d!1537452 (= res!2042185 ((_ is Nil!54323) (toList!7003 lt!1956399)))))

(assert (=> d!1537452 (= (forall!12329 (toList!7003 lt!1956399) lambda!232395) e!2998393)))

(declare-fun b!4801465 () Bool)

(declare-fun e!2998394 () Bool)

(assert (=> b!4801465 (= e!2998393 e!2998394)))

(declare-fun res!2042186 () Bool)

(assert (=> b!4801465 (=> (not res!2042186) (not e!2998394))))

(assert (=> b!4801465 (= res!2042186 (dynLambda!22093 lambda!232395 (h!60755 (toList!7003 lt!1956399))))))

(declare-fun b!4801466 () Bool)

(assert (=> b!4801466 (= e!2998394 (forall!12329 (t!361897 (toList!7003 lt!1956399)) lambda!232395))))

(assert (= (and d!1537452 (not res!2042185)) b!4801465))

(assert (= (and b!4801465 res!2042186) b!4801466))

(declare-fun b_lambda!187669 () Bool)

(assert (=> (not b_lambda!187669) (not b!4801465)))

(declare-fun m!5785550 () Bool)

(assert (=> b!4801465 m!5785550))

(declare-fun m!5785552 () Bool)

(assert (=> b!4801466 m!5785552))

(assert (=> d!1537130 d!1537452))

(declare-fun d!1537454 () Bool)

(assert (=> d!1537454 (= (get!18550 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400)) (v!48510 (getValueByKey!2399 (toList!7003 lm!2473) lt!1956400)))))

(assert (=> d!1537144 d!1537454))

(assert (=> d!1537144 d!1537392))

(assert (=> b!4801002 d!1537426))

(assert (=> d!1537134 d!1537340))

(declare-fun tp!1358394 () Bool)

(declare-fun e!2998397 () Bool)

(declare-fun b!4801471 () Bool)

(assert (=> b!4801471 (= e!2998397 (and tp_is_empty!33709 tp_is_empty!33711 tp!1358394))))

(assert (=> b!4801012 (= tp!1358385 e!2998397)))

(assert (= (and b!4801012 ((_ is Cons!54322) (_2!31803 (h!60755 (toList!7003 lm!2473))))) b!4801471))

(declare-fun b!4801472 () Bool)

(declare-fun e!2998398 () Bool)

(declare-fun tp!1358395 () Bool)

(declare-fun tp!1358396 () Bool)

(assert (=> b!4801472 (= e!2998398 (and tp!1358395 tp!1358396))))

(assert (=> b!4801012 (= tp!1358386 e!2998398)))

(assert (= (and b!4801012 ((_ is Cons!54323) (t!361897 (toList!7003 lm!2473)))) b!4801472))

(declare-fun b_lambda!187671 () Bool)

(assert (= b_lambda!187661 (or d!1537104 b_lambda!187671)))

(declare-fun bs!1157708 () Bool)

(declare-fun d!1537456 () Bool)

(assert (= bs!1157708 (and d!1537456 d!1537104)))

(assert (=> bs!1157708 (= (dynLambda!22093 lambda!232386 (h!60755 (toList!7003 lt!1956399))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(assert (=> bs!1157708 m!5784826))

(assert (=> b!4801425 d!1537456))

(declare-fun b_lambda!187673 () Bool)

(assert (= b_lambda!187665 (or start!495454 b_lambda!187673)))

(declare-fun bs!1157709 () Bool)

(declare-fun d!1537458 () Bool)

(assert (= bs!1157709 (and d!1537458 start!495454)))

(assert (=> bs!1157709 (= (dynLambda!22093 lambda!232357 (h!60755 (t!361897 (toList!7003 lm!2473)))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (t!361897 (toList!7003 lm!2473))))))))

(declare-fun m!5785554 () Bool)

(assert (=> bs!1157709 m!5785554))

(assert (=> b!4801447 d!1537458))

(declare-fun b_lambda!187675 () Bool)

(assert (= b_lambda!187657 (or d!1537054 b_lambda!187675)))

(declare-fun bs!1157710 () Bool)

(declare-fun d!1537460 () Bool)

(assert (= bs!1157710 (and d!1537460 d!1537054)))

(declare-fun allKeysSameHash!1977 (List!54446 (_ BitVec 64) Hashable!6962) Bool)

(assert (=> bs!1157710 (= (dynLambda!22093 lambda!232363 (h!60755 (toList!7003 lm!2473))) (allKeysSameHash!1977 (_2!31803 (h!60755 (toList!7003 lm!2473))) (_1!31803 (h!60755 (toList!7003 lm!2473))) hashF!1559))))

(declare-fun m!5785556 () Bool)

(assert (=> bs!1157710 m!5785556))

(assert (=> b!4801372 d!1537460))

(declare-fun b_lambda!187677 () Bool)

(assert (= b_lambda!187669 (or d!1537130 b_lambda!187677)))

(declare-fun bs!1157711 () Bool)

(declare-fun d!1537462 () Bool)

(assert (= bs!1157711 (and d!1537462 d!1537130)))

(assert (=> bs!1157711 (= (dynLambda!22093 lambda!232395 (h!60755 (toList!7003 lt!1956399))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(assert (=> bs!1157711 m!5784826))

(assert (=> b!4801465 d!1537462))

(declare-fun b_lambda!187679 () Bool)

(assert (= b_lambda!187655 (or d!1537118 b_lambda!187679)))

(declare-fun bs!1157712 () Bool)

(declare-fun d!1537464 () Bool)

(assert (= bs!1157712 (and d!1537464 d!1537118)))

(assert (=> bs!1157712 (= (dynLambda!22093 lambda!232389 (h!60755 (toList!7003 lm!2473))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(assert (=> bs!1157712 m!5784828))

(assert (=> b!4801370 d!1537464))

(declare-fun b_lambda!187681 () Bool)

(assert (= b_lambda!187667 (or d!1537058 b_lambda!187681)))

(declare-fun bs!1157713 () Bool)

(declare-fun d!1537466 () Bool)

(assert (= bs!1157713 (and d!1537466 d!1537058)))

(assert (=> bs!1157713 (= (dynLambda!22093 lambda!232369 (h!60755 (toList!7003 lt!1956399))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lt!1956399)))))))

(assert (=> bs!1157713 m!5784826))

(assert (=> b!4801458 d!1537466))

(declare-fun b_lambda!187683 () Bool)

(assert (= b_lambda!187651 (or d!1537146 b_lambda!187683)))

(declare-fun bs!1157714 () Bool)

(declare-fun d!1537468 () Bool)

(assert (= bs!1157714 (and d!1537468 d!1537146)))

(assert (=> bs!1157714 (= (dynLambda!22093 lambda!232397 (h!60755 (toList!7003 lt!1956399))) (allKeysSameHash!1977 (_2!31803 (h!60755 (toList!7003 lt!1956399))) (_1!31803 (h!60755 (toList!7003 lt!1956399))) hashF!1559))))

(declare-fun m!5785558 () Bool)

(assert (=> bs!1157714 m!5785558))

(assert (=> b!4801343 d!1537468))

(declare-fun b_lambda!187685 () Bool)

(assert (= b_lambda!187653 (or d!1537136 b_lambda!187685)))

(declare-fun bs!1157715 () Bool)

(declare-fun d!1537470 () Bool)

(assert (= bs!1157715 (and d!1537470 d!1537136)))

(assert (=> bs!1157715 (= (dynLambda!22093 lambda!232396 (h!60755 (toList!7003 lm!2473))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(assert (=> bs!1157715 m!5784828))

(assert (=> b!4801351 d!1537470))

(declare-fun b_lambda!187687 () Bool)

(assert (= b_lambda!187659 (or start!495454 b_lambda!187687)))

(declare-fun bs!1157716 () Bool)

(declare-fun d!1537472 () Bool)

(assert (= bs!1157716 (and d!1537472 start!495454)))

(assert (=> bs!1157716 (= (dynLambda!22093 lambda!232357 (h!60755 (t!361897 (toList!7003 lt!1956399)))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (t!361897 (toList!7003 lt!1956399))))))))

(declare-fun m!5785560 () Bool)

(assert (=> bs!1157716 m!5785560))

(assert (=> b!4801380 d!1537472))

(declare-fun b_lambda!187689 () Bool)

(assert (= b_lambda!187663 (or d!1537120 b_lambda!187689)))

(declare-fun bs!1157717 () Bool)

(declare-fun d!1537474 () Bool)

(assert (= bs!1157717 (and d!1537474 d!1537120)))

(assert (=> bs!1157717 (= (dynLambda!22093 lambda!232392 (h!60755 (toList!7003 lm!2473))) (noDuplicateKeys!2362 (_2!31803 (h!60755 (toList!7003 lm!2473)))))))

(assert (=> bs!1157717 m!5784828))

(assert (=> b!4801433 d!1537474))

(check-sat (not d!1537436) (not b!4801088) (not b!4801432) (not b_lambda!187675) (not bs!1157709) (not b!4801089) (not b_lambda!187685) (not b!4801427) (not d!1537382) (not b!4801344) (not b!4801397) (not b!4801284) (not b!4801094) (not b_lambda!187673) (not bm!335388) (not d!1537362) (not b!4801330) (not b_lambda!187677) (not b!4801292) (not b!4801394) (not d!1537402) (not d!1537398) (not b_lambda!187607) (not d!1537424) (not b!4801355) (not d!1537438) (not d!1537342) (not bs!1157717) (not b_lambda!187671) (not d!1537356) (not b!4801268) (not d!1537378) (not b!4801418) (not b!4801096) (not d!1537448) (not b!4801352) (not b!4801464) (not b!4801471) (not b!4801384) (not b!4801426) (not b!4801456) (not bs!1157712) (not b!4801419) (not b!4801350) (not b!4801341) (not b!4801445) (not b!4801393) (not d!1537346) (not bs!1157714) (not d!1537394) (not d!1537406) (not d!1537428) (not d!1537420) (not b!4801314) (not d!1537348) (not b_lambda!187687) (not bm!335387) (not d!1537174) (not b_lambda!187609) (not b!4801291) (not b!4801093) (not d!1537408) (not d!1537322) (not b!4801417) tp_is_empty!33711 (not d!1537434) (not b!4801363) (not bm!335386) (not b!4801358) (not b!4801414) (not d!1537416) (not d!1537380) (not b!4801453) (not b!4801319) (not b!4801434) (not b!4801367) (not b!4801437) (not b_lambda!187679) (not d!1537176) (not b!4801318) (not b!4801362) (not b!4801463) (not bs!1157716) (not b!4801269) (not b!4801278) (not b!4801444) (not b!4801366) (not d!1537414) (not d!1537368) (not b!4801267) (not b!4801369) (not b!4801412) (not b!4801317) (not d!1537326) (not b!4801446) (not d!1537352) (not b!4801389) (not b!4801448) (not d!1537388) (not b!4801466) (not b!4801452) (not b!4801293) (not b_lambda!187683) (not d!1537440) (not d!1537328) (not b!4801365) (not b!4801379) (not b!4801271) (not bs!1157708) (not d!1537334) (not b!4801421) (not bs!1157713) (not b!4801429) (not d!1537390) (not b_lambda!187681) (not b!4801329) (not b!4801387) (not b!4801382) (not d!1537450) (not b!4801391) (not b!4801386) (not b!4801455) (not b!4801321) (not b!4801371) (not b!4801424) tp_is_empty!33709 (not d!1537330) (not bm!335389) (not b!4801357) (not b!4801408) (not b!4801450) (not b!4801392) (not b!4801381) (not b!4801091) (not b!4801364) (not b!4801276) (not b!4801451) (not bs!1157711) (not bm!335390) (not b!4801360) (not b_lambda!187689) (not b!4801353) (not bm!335391) (not d!1537344) (not bs!1157710) (not bs!1157715) (not b!4801461) (not b!4801373) (not d!1537354) (not b!4801459) (not d!1537400) (not d!1537364) (not b!4801274) (not b!4801472))
(check-sat)
