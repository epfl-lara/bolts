; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434402 () Bool)

(assert start!434402)

(declare-fun b!4440378 () Bool)

(declare-fun e!2764802 () Bool)

(declare-fun e!2764807 () Bool)

(assert (=> b!4440378 (= e!2764802 (not e!2764807))))

(declare-fun res!1838442 () Bool)

(assert (=> b!4440378 (=> res!1838442 e!2764807)))

(declare-datatypes ((V!11394 0))(
  ( (V!11395 (val!17189 Int)) )
))
(declare-datatypes ((K!11148 0))(
  ( (K!11149 (val!17190 Int)) )
))
(declare-datatypes ((tuple2!49698 0))(
  ( (tuple2!49699 (_1!28143 K!11148) (_2!28143 V!11394)) )
))
(declare-datatypes ((List!49903 0))(
  ( (Nil!49779) (Cons!49779 (h!55502 tuple2!49698) (t!356845 List!49903)) )
))
(declare-datatypes ((tuple2!49700 0))(
  ( (tuple2!49701 (_1!28144 (_ BitVec 64)) (_2!28144 List!49903)) )
))
(declare-datatypes ((List!49904 0))(
  ( (Nil!49780) (Cons!49780 (h!55503 tuple2!49700) (t!356846 List!49904)) )
))
(declare-datatypes ((ListLongMap!2297 0))(
  ( (ListLongMap!2298 (toList!3647 List!49904)) )
))
(declare-fun lt!1636391 () ListLongMap!2297)

(declare-fun lambda!157163 () Int)

(declare-fun forall!9694 (List!49904 Int) Bool)

(assert (=> b!4440378 (= res!1838442 (not (forall!9694 (toList!3647 lt!1636391) lambda!157163)))))

(assert (=> b!4440378 (forall!9694 (toList!3647 lt!1636391) lambda!157163)))

(declare-fun newBucket!194 () List!49903)

(declare-fun lm!1616 () ListLongMap!2297)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun +!1212 (ListLongMap!2297 tuple2!49700) ListLongMap!2297)

(assert (=> b!4440378 (= lt!1636391 (+!1212 lm!1616 (tuple2!49701 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83865 0))(
  ( (Unit!83866) )
))
(declare-fun lt!1636392 () Unit!83865)

(declare-fun addValidProp!468 (ListLongMap!2297 Int (_ BitVec 64) List!49903) Unit!83865)

(assert (=> b!4440378 (= lt!1636392 (addValidProp!468 lm!1616 lambda!157163 hash!366 newBucket!194))))

(declare-fun b!4440379 () Bool)

(declare-fun e!2764804 () Bool)

(assert (=> b!4440379 (= e!2764804 e!2764802)))

(declare-fun res!1838428 () Bool)

(assert (=> b!4440379 (=> (not res!1838428) (not e!2764802))))

(declare-fun e!2764806 () Bool)

(assert (=> b!4440379 (= res!1838428 e!2764806)))

(declare-fun res!1838430 () Bool)

(assert (=> b!4440379 (=> res!1838430 e!2764806)))

(declare-fun e!2764801 () Bool)

(assert (=> b!4440379 (= res!1838430 e!2764801)))

(declare-fun res!1838437 () Bool)

(assert (=> b!4440379 (=> (not res!1838437) (not e!2764801))))

(declare-fun lt!1636390 () Bool)

(assert (=> b!4440379 (= res!1838437 lt!1636390)))

(declare-fun contains!12347 (ListLongMap!2297 (_ BitVec 64)) Bool)

(assert (=> b!4440379 (= lt!1636390 (contains!12347 lm!1616 hash!366))))

(declare-fun b!4440380 () Bool)

(declare-fun res!1838431 () Bool)

(assert (=> b!4440380 (=> (not res!1838431) (not e!2764802))))

(declare-fun noDuplicateKeys!830 (List!49903) Bool)

(assert (=> b!4440380 (= res!1838431 (noDuplicateKeys!830 newBucket!194))))

(declare-fun b!4440381 () Bool)

(declare-fun e!2764803 () Bool)

(declare-fun tp!1334105 () Bool)

(assert (=> b!4440381 (= e!2764803 tp!1334105)))

(declare-fun b!4440382 () Bool)

(declare-fun res!1838436 () Bool)

(assert (=> b!4440382 (=> (not res!1838436) (not e!2764804))))

(declare-fun key!3717 () K!11148)

(declare-datatypes ((ListMap!2891 0))(
  ( (ListMap!2892 (toList!3648 List!49903)) )
))
(declare-fun contains!12348 (ListMap!2891 K!11148) Bool)

(declare-fun extractMap!891 (List!49904) ListMap!2891)

(assert (=> b!4440382 (= res!1838436 (not (contains!12348 (extractMap!891 (toList!3647 lm!1616)) key!3717)))))

(declare-fun b!4440383 () Bool)

(declare-fun res!1838429 () Bool)

(assert (=> b!4440383 (=> res!1838429 e!2764807)))

(assert (=> b!4440383 (= res!1838429 (not (forall!9694 (toList!3647 lm!1616) lambda!157163)))))

(declare-fun b!4440384 () Bool)

(declare-fun res!1838433 () Bool)

(assert (=> b!4440384 (=> (not res!1838433) (not e!2764802))))

(assert (=> b!4440384 (= res!1838433 (forall!9694 (toList!3647 lm!1616) lambda!157163))))

(declare-fun res!1838440 () Bool)

(assert (=> start!434402 (=> (not res!1838440) (not e!2764804))))

(assert (=> start!434402 (= res!1838440 (forall!9694 (toList!3647 lm!1616) lambda!157163))))

(assert (=> start!434402 e!2764804))

(declare-fun tp_is_empty!26565 () Bool)

(assert (=> start!434402 tp_is_empty!26565))

(declare-fun tp_is_empty!26567 () Bool)

(assert (=> start!434402 tp_is_empty!26567))

(declare-fun e!2764805 () Bool)

(assert (=> start!434402 e!2764805))

(declare-fun inv!65335 (ListLongMap!2297) Bool)

(assert (=> start!434402 (and (inv!65335 lm!1616) e!2764803)))

(assert (=> start!434402 true))

(declare-fun b!4440385 () Bool)

(declare-fun tail!7362 (ListLongMap!2297) ListLongMap!2297)

(assert (=> b!4440385 (= e!2764807 (contains!12348 (extractMap!891 (toList!3647 (tail!7362 lm!1616))) key!3717))))

(declare-fun b!4440386 () Bool)

(declare-fun res!1838432 () Bool)

(assert (=> b!4440386 (=> (not res!1838432) (not e!2764804))))

(declare-datatypes ((Hashable!5224 0))(
  ( (HashableExt!5223 (__x!30927 Int)) )
))
(declare-fun hashF!1220 () Hashable!5224)

(declare-fun allKeysSameHashInMap!936 (ListLongMap!2297 Hashable!5224) Bool)

(assert (=> b!4440386 (= res!1838432 (allKeysSameHashInMap!936 lm!1616 hashF!1220))))

(declare-fun b!4440387 () Bool)

(declare-fun res!1838438 () Bool)

(assert (=> b!4440387 (=> res!1838438 e!2764807)))

(assert (=> b!4440387 (= res!1838438 (or (and (is-Cons!49780 (toList!3647 lm!1616)) (= (_1!28144 (h!55503 (toList!3647 lm!1616))) hash!366)) (not (is-Cons!49780 (toList!3647 lm!1616))) (= (_1!28144 (h!55503 (toList!3647 lm!1616))) hash!366)))))

(declare-fun b!4440388 () Bool)

(declare-fun res!1838435 () Bool)

(assert (=> b!4440388 (=> res!1838435 e!2764807)))

(declare-fun tail!7363 (List!49904) List!49904)

(assert (=> b!4440388 (= res!1838435 (not (contains!12348 (extractMap!891 (tail!7363 (toList!3647 lm!1616))) key!3717)))))

(declare-fun b!4440389 () Bool)

(declare-fun res!1838441 () Bool)

(assert (=> b!4440389 (=> res!1838441 e!2764807)))

(declare-fun isEmpty!28386 (List!49904) Bool)

(assert (=> b!4440389 (= res!1838441 (isEmpty!28386 (toList!3647 lm!1616)))))

(declare-fun b!4440390 () Bool)

(declare-fun res!1838439 () Bool)

(assert (=> b!4440390 (=> (not res!1838439) (not e!2764804))))

(declare-fun allKeysSameHash!790 (List!49903 (_ BitVec 64) Hashable!5224) Bool)

(assert (=> b!4440390 (= res!1838439 (allKeysSameHash!790 newBucket!194 hash!366 hashF!1220))))

(declare-fun newValue!93 () V!11394)

(declare-fun b!4440391 () Bool)

(assert (=> b!4440391 (= e!2764806 (and (not lt!1636390) (= newBucket!194 (Cons!49779 (tuple2!49699 key!3717 newValue!93) Nil!49779))))))

(declare-fun b!4440392 () Bool)

(declare-fun res!1838434 () Bool)

(assert (=> b!4440392 (=> (not res!1838434) (not e!2764804))))

(declare-fun hash!2281 (Hashable!5224 K!11148) (_ BitVec 64))

(assert (=> b!4440392 (= res!1838434 (= (hash!2281 hashF!1220 key!3717) hash!366))))

(declare-fun b!4440393 () Bool)

(declare-fun tp!1334106 () Bool)

(assert (=> b!4440393 (= e!2764805 (and tp_is_empty!26567 tp_is_empty!26565 tp!1334106))))

(declare-fun b!4440394 () Bool)

(declare-fun apply!11682 (ListLongMap!2297 (_ BitVec 64)) List!49903)

(assert (=> b!4440394 (= e!2764801 (= newBucket!194 (Cons!49779 (tuple2!49699 key!3717 newValue!93) (apply!11682 lm!1616 hash!366))))))

(assert (= (and start!434402 res!1838440) b!4440386))

(assert (= (and b!4440386 res!1838432) b!4440392))

(assert (= (and b!4440392 res!1838434) b!4440390))

(assert (= (and b!4440390 res!1838439) b!4440382))

(assert (= (and b!4440382 res!1838436) b!4440379))

(assert (= (and b!4440379 res!1838437) b!4440394))

(assert (= (and b!4440379 (not res!1838430)) b!4440391))

(assert (= (and b!4440379 res!1838428) b!4440380))

(assert (= (and b!4440380 res!1838431) b!4440384))

(assert (= (and b!4440384 res!1838433) b!4440378))

(assert (= (and b!4440378 (not res!1838442)) b!4440387))

(assert (= (and b!4440387 (not res!1838438)) b!4440388))

(assert (= (and b!4440388 (not res!1838435)) b!4440383))

(assert (= (and b!4440383 (not res!1838429)) b!4440389))

(assert (= (and b!4440389 (not res!1838441)) b!4440385))

(assert (= (and start!434402 (is-Cons!49779 newBucket!194)) b!4440393))

(assert (= start!434402 b!4440381))

(declare-fun m!5128935 () Bool)

(assert (=> b!4440385 m!5128935))

(declare-fun m!5128937 () Bool)

(assert (=> b!4440385 m!5128937))

(assert (=> b!4440385 m!5128937))

(declare-fun m!5128939 () Bool)

(assert (=> b!4440385 m!5128939))

(declare-fun m!5128941 () Bool)

(assert (=> b!4440392 m!5128941))

(declare-fun m!5128943 () Bool)

(assert (=> b!4440388 m!5128943))

(assert (=> b!4440388 m!5128943))

(declare-fun m!5128945 () Bool)

(assert (=> b!4440388 m!5128945))

(assert (=> b!4440388 m!5128945))

(declare-fun m!5128947 () Bool)

(assert (=> b!4440388 m!5128947))

(declare-fun m!5128949 () Bool)

(assert (=> b!4440380 m!5128949))

(declare-fun m!5128951 () Bool)

(assert (=> b!4440383 m!5128951))

(declare-fun m!5128953 () Bool)

(assert (=> b!4440394 m!5128953))

(declare-fun m!5128955 () Bool)

(assert (=> b!4440382 m!5128955))

(assert (=> b!4440382 m!5128955))

(declare-fun m!5128957 () Bool)

(assert (=> b!4440382 m!5128957))

(declare-fun m!5128959 () Bool)

(assert (=> b!4440386 m!5128959))

(declare-fun m!5128961 () Bool)

(assert (=> b!4440378 m!5128961))

(assert (=> b!4440378 m!5128961))

(declare-fun m!5128963 () Bool)

(assert (=> b!4440378 m!5128963))

(declare-fun m!5128965 () Bool)

(assert (=> b!4440378 m!5128965))

(declare-fun m!5128967 () Bool)

(assert (=> b!4440390 m!5128967))

(assert (=> b!4440384 m!5128951))

(assert (=> start!434402 m!5128951))

(declare-fun m!5128969 () Bool)

(assert (=> start!434402 m!5128969))

(declare-fun m!5128971 () Bool)

(assert (=> b!4440379 m!5128971))

(declare-fun m!5128973 () Bool)

(assert (=> b!4440389 m!5128973))

(push 1)

(assert (not b!4440388))

(assert (not b!4440394))

(assert (not b!4440390))

(assert tp_is_empty!26565)

(assert (not b!4440386))

(assert (not b!4440384))

(assert (not b!4440393))

(assert (not b!4440383))

(assert (not b!4440379))

(assert (not b!4440382))

(assert (not start!434402))

(assert (not b!4440385))

(assert (not b!4440378))

(assert tp_is_empty!26567)

(assert (not b!4440380))

(assert (not b!4440381))

(assert (not b!4440389))

(assert (not b!4440392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1347834 () Bool)

(declare-fun res!1838502 () Bool)

(declare-fun e!2764843 () Bool)

(assert (=> d!1347834 (=> res!1838502 e!2764843)))

(assert (=> d!1347834 (= res!1838502 (is-Nil!49780 (toList!3647 lm!1616)))))

(assert (=> d!1347834 (= (forall!9694 (toList!3647 lm!1616) lambda!157163) e!2764843)))

(declare-fun b!4440460 () Bool)

(declare-fun e!2764844 () Bool)

(assert (=> b!4440460 (= e!2764843 e!2764844)))

(declare-fun res!1838503 () Bool)

(assert (=> b!4440460 (=> (not res!1838503) (not e!2764844))))

(declare-fun dynLambda!20906 (Int tuple2!49700) Bool)

(assert (=> b!4440460 (= res!1838503 (dynLambda!20906 lambda!157163 (h!55503 (toList!3647 lm!1616))))))

(declare-fun b!4440461 () Bool)

(assert (=> b!4440461 (= e!2764844 (forall!9694 (t!356846 (toList!3647 lm!1616)) lambda!157163))))

(assert (= (and d!1347834 (not res!1838502)) b!4440460))

(assert (= (and b!4440460 res!1838503) b!4440461))

(declare-fun b_lambda!144969 () Bool)

(assert (=> (not b_lambda!144969) (not b!4440460)))

(declare-fun m!5129019 () Bool)

(assert (=> b!4440460 m!5129019))

(declare-fun m!5129021 () Bool)

(assert (=> b!4440461 m!5129021))

(assert (=> b!4440384 d!1347834))

(declare-fun bs!764041 () Bool)

(declare-fun d!1347836 () Bool)

(assert (= bs!764041 (and d!1347836 start!434402)))

(declare-fun lambda!157177 () Int)

(assert (=> bs!764041 (not (= lambda!157177 lambda!157163))))

(assert (=> d!1347836 true))

(assert (=> d!1347836 (= (allKeysSameHashInMap!936 lm!1616 hashF!1220) (forall!9694 (toList!3647 lm!1616) lambda!157177))))

(declare-fun bs!764042 () Bool)

(assert (= bs!764042 d!1347836))

(declare-fun m!5129025 () Bool)

(assert (=> bs!764042 m!5129025))

(assert (=> b!4440386 d!1347836))

(declare-fun b!4440488 () Bool)

(assert (=> b!4440488 false))

(declare-fun lt!1636427 () Unit!83865)

(declare-fun lt!1636432 () Unit!83865)

(assert (=> b!4440488 (= lt!1636427 lt!1636432)))

(declare-fun containsKey!1232 (List!49903 K!11148) Bool)

(assert (=> b!4440488 (containsKey!1232 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!285 (List!49903 K!11148) Unit!83865)

(assert (=> b!4440488 (= lt!1636432 (lemmaInGetKeysListThenContainsKey!285 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(declare-fun e!2764866 () Unit!83865)

(declare-fun Unit!83869 () Unit!83865)

(assert (=> b!4440488 (= e!2764866 Unit!83869)))

(declare-fun d!1347838 () Bool)

(declare-fun e!2764864 () Bool)

(assert (=> d!1347838 e!2764864))

(declare-fun res!1838517 () Bool)

(assert (=> d!1347838 (=> res!1838517 e!2764864)))

(declare-fun e!2764865 () Bool)

(assert (=> d!1347838 (= res!1838517 e!2764865)))

(declare-fun res!1838518 () Bool)

(assert (=> d!1347838 (=> (not res!1838518) (not e!2764865))))

(declare-fun lt!1636430 () Bool)

(assert (=> d!1347838 (= res!1838518 (not lt!1636430))))

(declare-fun lt!1636426 () Bool)

(assert (=> d!1347838 (= lt!1636430 lt!1636426)))

(declare-fun lt!1636433 () Unit!83865)

(declare-fun e!2764863 () Unit!83865)

(assert (=> d!1347838 (= lt!1636433 e!2764863)))

(declare-fun c!755711 () Bool)

(assert (=> d!1347838 (= c!755711 lt!1636426)))

(assert (=> d!1347838 (= lt!1636426 (containsKey!1232 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(assert (=> d!1347838 (= (contains!12348 (extractMap!891 (toList!3647 (tail!7362 lm!1616))) key!3717) lt!1636430)))

(declare-fun b!4440489 () Bool)

(declare-fun e!2764862 () Bool)

(declare-datatypes ((List!49907 0))(
  ( (Nil!49783) (Cons!49783 (h!55507 K!11148) (t!356849 List!49907)) )
))
(declare-fun contains!12351 (List!49907 K!11148) Bool)

(declare-fun keys!17049 (ListMap!2891) List!49907)

(assert (=> b!4440489 (= e!2764862 (contains!12351 (keys!17049 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(declare-fun b!4440490 () Bool)

(declare-fun lt!1636431 () Unit!83865)

(assert (=> b!4440490 (= e!2764863 lt!1636431)))

(declare-fun lt!1636429 () Unit!83865)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!689 (List!49903 K!11148) Unit!83865)

(assert (=> b!4440490 (= lt!1636429 (lemmaContainsKeyImpliesGetValueByKeyDefined!689 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(declare-datatypes ((Option!10796 0))(
  ( (None!10795) (Some!10795 (v!44023 V!11394)) )
))
(declare-fun isDefined!8086 (Option!10796) Bool)

(declare-fun getValueByKey!782 (List!49903 K!11148) Option!10796)

(assert (=> b!4440490 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(declare-fun lt!1636428 () Unit!83865)

(assert (=> b!4440490 (= lt!1636428 lt!1636429)))

(declare-fun lemmaInListThenGetKeysListContains!284 (List!49903 K!11148) Unit!83865)

(assert (=> b!4440490 (= lt!1636431 (lemmaInListThenGetKeysListContains!284 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717))))

(declare-fun call!308989 () Bool)

(assert (=> b!4440490 call!308989))

(declare-fun b!4440491 () Bool)

(declare-fun e!2764861 () List!49907)

(declare-fun getKeysList!287 (List!49903) List!49907)

(assert (=> b!4440491 (= e!2764861 (getKeysList!287 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616))))))))

(declare-fun b!4440492 () Bool)

(assert (=> b!4440492 (= e!2764861 (keys!17049 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))))))

(declare-fun b!4440493 () Bool)

(assert (=> b!4440493 (= e!2764863 e!2764866)))

(declare-fun c!755710 () Bool)

(assert (=> b!4440493 (= c!755710 call!308989)))

(declare-fun b!4440494 () Bool)

(declare-fun Unit!83870 () Unit!83865)

(assert (=> b!4440494 (= e!2764866 Unit!83870)))

(declare-fun b!4440495 () Bool)

(assert (=> b!4440495 (= e!2764864 e!2764862)))

(declare-fun res!1838516 () Bool)

(assert (=> b!4440495 (=> (not res!1838516) (not e!2764862))))

(assert (=> b!4440495 (= res!1838516 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717)))))

(declare-fun bm!308984 () Bool)

(assert (=> bm!308984 (= call!308989 (contains!12351 e!2764861 key!3717))))

(declare-fun c!755712 () Bool)

(assert (=> bm!308984 (= c!755712 c!755711)))

(declare-fun b!4440496 () Bool)

(assert (=> b!4440496 (= e!2764865 (not (contains!12351 (keys!17049 (extractMap!891 (toList!3647 (tail!7362 lm!1616)))) key!3717)))))

(assert (= (and d!1347838 c!755711) b!4440490))

(assert (= (and d!1347838 (not c!755711)) b!4440493))

(assert (= (and b!4440493 c!755710) b!4440488))

(assert (= (and b!4440493 (not c!755710)) b!4440494))

(assert (= (or b!4440490 b!4440493) bm!308984))

(assert (= (and bm!308984 c!755712) b!4440491))

(assert (= (and bm!308984 (not c!755712)) b!4440492))

(assert (= (and d!1347838 res!1838518) b!4440496))

(assert (= (and d!1347838 (not res!1838517)) b!4440495))

(assert (= (and b!4440495 res!1838516) b!4440489))

(declare-fun m!5129029 () Bool)

(assert (=> b!4440491 m!5129029))

(declare-fun m!5129031 () Bool)

(assert (=> b!4440490 m!5129031))

(declare-fun m!5129033 () Bool)

(assert (=> b!4440490 m!5129033))

(assert (=> b!4440490 m!5129033))

(declare-fun m!5129035 () Bool)

(assert (=> b!4440490 m!5129035))

(declare-fun m!5129037 () Bool)

(assert (=> b!4440490 m!5129037))

(assert (=> b!4440495 m!5129033))

(assert (=> b!4440495 m!5129033))

(assert (=> b!4440495 m!5129035))

(declare-fun m!5129039 () Bool)

(assert (=> bm!308984 m!5129039))

(declare-fun m!5129041 () Bool)

(assert (=> b!4440488 m!5129041))

(declare-fun m!5129043 () Bool)

(assert (=> b!4440488 m!5129043))

(assert (=> b!4440496 m!5128937))

(declare-fun m!5129045 () Bool)

(assert (=> b!4440496 m!5129045))

(assert (=> b!4440496 m!5129045))

(declare-fun m!5129047 () Bool)

(assert (=> b!4440496 m!5129047))

(assert (=> b!4440492 m!5128937))

(assert (=> b!4440492 m!5129045))

(assert (=> b!4440489 m!5128937))

(assert (=> b!4440489 m!5129045))

(assert (=> b!4440489 m!5129045))

(assert (=> b!4440489 m!5129047))

(assert (=> d!1347838 m!5129041))

(assert (=> b!4440385 d!1347838))

(declare-fun bs!764043 () Bool)

(declare-fun d!1347842 () Bool)

(assert (= bs!764043 (and d!1347842 start!434402)))

(declare-fun lambda!157180 () Int)

(assert (=> bs!764043 (= lambda!157180 lambda!157163)))

(declare-fun bs!764044 () Bool)

(assert (= bs!764044 (and d!1347842 d!1347836)))

(assert (=> bs!764044 (not (= lambda!157180 lambda!157177))))

(declare-fun lt!1636440 () ListMap!2891)

(declare-fun invariantList!839 (List!49903) Bool)

(assert (=> d!1347842 (invariantList!839 (toList!3648 lt!1636440))))

(declare-fun e!2764870 () ListMap!2891)

(assert (=> d!1347842 (= lt!1636440 e!2764870)))

(declare-fun c!755715 () Bool)

(assert (=> d!1347842 (= c!755715 (is-Cons!49780 (toList!3647 (tail!7362 lm!1616))))))

(assert (=> d!1347842 (forall!9694 (toList!3647 (tail!7362 lm!1616)) lambda!157180)))

(assert (=> d!1347842 (= (extractMap!891 (toList!3647 (tail!7362 lm!1616))) lt!1636440)))

(declare-fun b!4440503 () Bool)

(declare-fun addToMapMapFromBucket!443 (List!49903 ListMap!2891) ListMap!2891)

(assert (=> b!4440503 (= e!2764870 (addToMapMapFromBucket!443 (_2!28144 (h!55503 (toList!3647 (tail!7362 lm!1616)))) (extractMap!891 (t!356846 (toList!3647 (tail!7362 lm!1616))))))))

(declare-fun b!4440504 () Bool)

(assert (=> b!4440504 (= e!2764870 (ListMap!2892 Nil!49779))))

(assert (= (and d!1347842 c!755715) b!4440503))

(assert (= (and d!1347842 (not c!755715)) b!4440504))

(declare-fun m!5129061 () Bool)

(assert (=> d!1347842 m!5129061))

(declare-fun m!5129063 () Bool)

(assert (=> d!1347842 m!5129063))

(declare-fun m!5129065 () Bool)

(assert (=> b!4440503 m!5129065))

(assert (=> b!4440503 m!5129065))

(declare-fun m!5129067 () Bool)

(assert (=> b!4440503 m!5129067))

(assert (=> b!4440385 d!1347842))

(declare-fun d!1347846 () Bool)

(assert (=> d!1347846 (= (tail!7362 lm!1616) (ListLongMap!2298 (tail!7363 (toList!3647 lm!1616))))))

(declare-fun bs!764045 () Bool)

(assert (= bs!764045 d!1347846))

(assert (=> bs!764045 m!5128943))

(assert (=> b!4440385 d!1347846))

(declare-fun b!4440508 () Bool)

(assert (=> b!4440508 false))

(declare-fun lt!1636444 () Unit!83865)

(declare-fun lt!1636449 () Unit!83865)

(assert (=> b!4440508 (= lt!1636444 lt!1636449)))

(assert (=> b!4440508 (containsKey!1232 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717)))

(assert (=> b!4440508 (= lt!1636449 (lemmaInGetKeysListThenContainsKey!285 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(declare-fun e!2764878 () Unit!83865)

(declare-fun Unit!83871 () Unit!83865)

(assert (=> b!4440508 (= e!2764878 Unit!83871)))

(declare-fun d!1347848 () Bool)

(declare-fun e!2764876 () Bool)

(assert (=> d!1347848 e!2764876))

(declare-fun res!1838524 () Bool)

(assert (=> d!1347848 (=> res!1838524 e!2764876)))

(declare-fun e!2764877 () Bool)

(assert (=> d!1347848 (= res!1838524 e!2764877)))

(declare-fun res!1838525 () Bool)

(assert (=> d!1347848 (=> (not res!1838525) (not e!2764877))))

(declare-fun lt!1636447 () Bool)

(assert (=> d!1347848 (= res!1838525 (not lt!1636447))))

(declare-fun lt!1636443 () Bool)

(assert (=> d!1347848 (= lt!1636447 lt!1636443)))

(declare-fun lt!1636450 () Unit!83865)

(declare-fun e!2764875 () Unit!83865)

(assert (=> d!1347848 (= lt!1636450 e!2764875)))

(declare-fun c!755717 () Bool)

(assert (=> d!1347848 (= c!755717 lt!1636443)))

(assert (=> d!1347848 (= lt!1636443 (containsKey!1232 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(assert (=> d!1347848 (= (contains!12348 (extractMap!891 (toList!3647 lm!1616)) key!3717) lt!1636447)))

(declare-fun b!4440509 () Bool)

(declare-fun e!2764874 () Bool)

(assert (=> b!4440509 (= e!2764874 (contains!12351 (keys!17049 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(declare-fun b!4440510 () Bool)

(declare-fun lt!1636448 () Unit!83865)

(assert (=> b!4440510 (= e!2764875 lt!1636448)))

(declare-fun lt!1636446 () Unit!83865)

(assert (=> b!4440510 (= lt!1636446 (lemmaContainsKeyImpliesGetValueByKeyDefined!689 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(assert (=> b!4440510 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(declare-fun lt!1636445 () Unit!83865)

(assert (=> b!4440510 (= lt!1636445 lt!1636446)))

(assert (=> b!4440510 (= lt!1636448 (lemmaInListThenGetKeysListContains!284 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717))))

(declare-fun call!308990 () Bool)

(assert (=> b!4440510 call!308990))

(declare-fun b!4440511 () Bool)

(declare-fun e!2764873 () List!49907)

(assert (=> b!4440511 (= e!2764873 (getKeysList!287 (toList!3648 (extractMap!891 (toList!3647 lm!1616)))))))

(declare-fun b!4440512 () Bool)

(assert (=> b!4440512 (= e!2764873 (keys!17049 (extractMap!891 (toList!3647 lm!1616))))))

(declare-fun b!4440513 () Bool)

(assert (=> b!4440513 (= e!2764875 e!2764878)))

(declare-fun c!755716 () Bool)

(assert (=> b!4440513 (= c!755716 call!308990)))

(declare-fun b!4440514 () Bool)

(declare-fun Unit!83872 () Unit!83865)

(assert (=> b!4440514 (= e!2764878 Unit!83872)))

(declare-fun b!4440515 () Bool)

(assert (=> b!4440515 (= e!2764876 e!2764874)))

(declare-fun res!1838523 () Bool)

(assert (=> b!4440515 (=> (not res!1838523) (not e!2764874))))

(assert (=> b!4440515 (= res!1838523 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (toList!3647 lm!1616))) key!3717)))))

(declare-fun bm!308985 () Bool)

(assert (=> bm!308985 (= call!308990 (contains!12351 e!2764873 key!3717))))

(declare-fun c!755718 () Bool)

(assert (=> bm!308985 (= c!755718 c!755717)))

(declare-fun b!4440516 () Bool)

(assert (=> b!4440516 (= e!2764877 (not (contains!12351 (keys!17049 (extractMap!891 (toList!3647 lm!1616))) key!3717)))))

(assert (= (and d!1347848 c!755717) b!4440510))

(assert (= (and d!1347848 (not c!755717)) b!4440513))

(assert (= (and b!4440513 c!755716) b!4440508))

(assert (= (and b!4440513 (not c!755716)) b!4440514))

(assert (= (or b!4440510 b!4440513) bm!308985))

(assert (= (and bm!308985 c!755718) b!4440511))

(assert (= (and bm!308985 (not c!755718)) b!4440512))

(assert (= (and d!1347848 res!1838525) b!4440516))

(assert (= (and d!1347848 (not res!1838524)) b!4440515))

(assert (= (and b!4440515 res!1838523) b!4440509))

(declare-fun m!5129069 () Bool)

(assert (=> b!4440511 m!5129069))

(declare-fun m!5129071 () Bool)

(assert (=> b!4440510 m!5129071))

(declare-fun m!5129073 () Bool)

(assert (=> b!4440510 m!5129073))

(assert (=> b!4440510 m!5129073))

(declare-fun m!5129075 () Bool)

(assert (=> b!4440510 m!5129075))

(declare-fun m!5129077 () Bool)

(assert (=> b!4440510 m!5129077))

(assert (=> b!4440515 m!5129073))

(assert (=> b!4440515 m!5129073))

(assert (=> b!4440515 m!5129075))

(declare-fun m!5129079 () Bool)

(assert (=> bm!308985 m!5129079))

(declare-fun m!5129081 () Bool)

(assert (=> b!4440508 m!5129081))

(declare-fun m!5129083 () Bool)

(assert (=> b!4440508 m!5129083))

(assert (=> b!4440516 m!5128955))

(declare-fun m!5129085 () Bool)

(assert (=> b!4440516 m!5129085))

(assert (=> b!4440516 m!5129085))

(declare-fun m!5129087 () Bool)

(assert (=> b!4440516 m!5129087))

(assert (=> b!4440512 m!5128955))

(assert (=> b!4440512 m!5129085))

(assert (=> b!4440509 m!5128955))

(assert (=> b!4440509 m!5129085))

(assert (=> b!4440509 m!5129085))

(assert (=> b!4440509 m!5129087))

(assert (=> d!1347848 m!5129081))

(assert (=> b!4440382 d!1347848))

(declare-fun bs!764046 () Bool)

(declare-fun d!1347850 () Bool)

(assert (= bs!764046 (and d!1347850 start!434402)))

(declare-fun lambda!157181 () Int)

(assert (=> bs!764046 (= lambda!157181 lambda!157163)))

(declare-fun bs!764047 () Bool)

(assert (= bs!764047 (and d!1347850 d!1347836)))

(assert (=> bs!764047 (not (= lambda!157181 lambda!157177))))

(declare-fun bs!764048 () Bool)

(assert (= bs!764048 (and d!1347850 d!1347842)))

(assert (=> bs!764048 (= lambda!157181 lambda!157180)))

(declare-fun lt!1636451 () ListMap!2891)

(assert (=> d!1347850 (invariantList!839 (toList!3648 lt!1636451))))

(declare-fun e!2764879 () ListMap!2891)

(assert (=> d!1347850 (= lt!1636451 e!2764879)))

(declare-fun c!755719 () Bool)

(assert (=> d!1347850 (= c!755719 (is-Cons!49780 (toList!3647 lm!1616)))))

(assert (=> d!1347850 (forall!9694 (toList!3647 lm!1616) lambda!157181)))

(assert (=> d!1347850 (= (extractMap!891 (toList!3647 lm!1616)) lt!1636451)))

(declare-fun b!4440517 () Bool)

(assert (=> b!4440517 (= e!2764879 (addToMapMapFromBucket!443 (_2!28144 (h!55503 (toList!3647 lm!1616))) (extractMap!891 (t!356846 (toList!3647 lm!1616)))))))

(declare-fun b!4440518 () Bool)

(assert (=> b!4440518 (= e!2764879 (ListMap!2892 Nil!49779))))

(assert (= (and d!1347850 c!755719) b!4440517))

(assert (= (and d!1347850 (not c!755719)) b!4440518))

(declare-fun m!5129089 () Bool)

(assert (=> d!1347850 m!5129089))

(declare-fun m!5129091 () Bool)

(assert (=> d!1347850 m!5129091))

(declare-fun m!5129093 () Bool)

(assert (=> b!4440517 m!5129093))

(assert (=> b!4440517 m!5129093))

(declare-fun m!5129095 () Bool)

(assert (=> b!4440517 m!5129095))

(assert (=> b!4440382 d!1347850))

(declare-fun d!1347852 () Bool)

(declare-fun hash!2283 (Hashable!5224 K!11148) (_ BitVec 64))

(assert (=> d!1347852 (= (hash!2281 hashF!1220 key!3717) (hash!2283 hashF!1220 key!3717))))

(declare-fun bs!764049 () Bool)

(assert (= bs!764049 d!1347852))

(declare-fun m!5129097 () Bool)

(assert (=> bs!764049 m!5129097))

(assert (=> b!4440392 d!1347852))

(assert (=> b!4440383 d!1347834))

(declare-fun d!1347854 () Bool)

(declare-datatypes ((Option!10797 0))(
  ( (None!10796) (Some!10796 (v!44024 List!49903)) )
))
(declare-fun get!16235 (Option!10797) List!49903)

(declare-fun getValueByKey!783 (List!49904 (_ BitVec 64)) Option!10797)

(assert (=> d!1347854 (= (apply!11682 lm!1616 hash!366) (get!16235 (getValueByKey!783 (toList!3647 lm!1616) hash!366)))))

(declare-fun bs!764050 () Bool)

(assert (= bs!764050 d!1347854))

(declare-fun m!5129105 () Bool)

(assert (=> bs!764050 m!5129105))

(assert (=> bs!764050 m!5129105))

(declare-fun m!5129107 () Bool)

(assert (=> bs!764050 m!5129107))

(assert (=> b!4440394 d!1347854))

(assert (=> start!434402 d!1347834))

(declare-fun d!1347858 () Bool)

(declare-fun isStrictlySorted!267 (List!49904) Bool)

(assert (=> d!1347858 (= (inv!65335 lm!1616) (isStrictlySorted!267 (toList!3647 lm!1616)))))

(declare-fun bs!764051 () Bool)

(assert (= bs!764051 d!1347858))

(declare-fun m!5129113 () Bool)

(assert (=> bs!764051 m!5129113))

(assert (=> start!434402 d!1347858))

(declare-fun d!1347862 () Bool)

(declare-fun e!2764888 () Bool)

(assert (=> d!1347862 e!2764888))

(declare-fun res!1838531 () Bool)

(assert (=> d!1347862 (=> res!1838531 e!2764888)))

(declare-fun lt!1636464 () Bool)

(assert (=> d!1347862 (= res!1838531 (not lt!1636464))))

(declare-fun lt!1636463 () Bool)

(assert (=> d!1347862 (= lt!1636464 lt!1636463)))

(declare-fun lt!1636462 () Unit!83865)

(declare-fun e!2764887 () Unit!83865)

(assert (=> d!1347862 (= lt!1636462 e!2764887)))

(declare-fun c!755722 () Bool)

(assert (=> d!1347862 (= c!755722 lt!1636463)))

(declare-fun containsKey!1233 (List!49904 (_ BitVec 64)) Bool)

(assert (=> d!1347862 (= lt!1636463 (containsKey!1233 (toList!3647 lm!1616) hash!366))))

(assert (=> d!1347862 (= (contains!12347 lm!1616 hash!366) lt!1636464)))

(declare-fun b!4440528 () Bool)

(declare-fun lt!1636461 () Unit!83865)

(assert (=> b!4440528 (= e!2764887 lt!1636461)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!690 (List!49904 (_ BitVec 64)) Unit!83865)

(assert (=> b!4440528 (= lt!1636461 (lemmaContainsKeyImpliesGetValueByKeyDefined!690 (toList!3647 lm!1616) hash!366))))

(declare-fun isDefined!8087 (Option!10797) Bool)

(assert (=> b!4440528 (isDefined!8087 (getValueByKey!783 (toList!3647 lm!1616) hash!366))))

(declare-fun b!4440529 () Bool)

(declare-fun Unit!83873 () Unit!83865)

(assert (=> b!4440529 (= e!2764887 Unit!83873)))

(declare-fun b!4440530 () Bool)

(assert (=> b!4440530 (= e!2764888 (isDefined!8087 (getValueByKey!783 (toList!3647 lm!1616) hash!366)))))

(assert (= (and d!1347862 c!755722) b!4440528))

(assert (= (and d!1347862 (not c!755722)) b!4440529))

(assert (= (and d!1347862 (not res!1838531)) b!4440530))

(declare-fun m!5129115 () Bool)

(assert (=> d!1347862 m!5129115))

(declare-fun m!5129117 () Bool)

(assert (=> b!4440528 m!5129117))

(assert (=> b!4440528 m!5129105))

(assert (=> b!4440528 m!5129105))

(declare-fun m!5129119 () Bool)

(assert (=> b!4440528 m!5129119))

(assert (=> b!4440530 m!5129105))

(assert (=> b!4440530 m!5129105))

(assert (=> b!4440530 m!5129119))

(assert (=> b!4440379 d!1347862))

(declare-fun d!1347864 () Bool)

(assert (=> d!1347864 true))

(assert (=> d!1347864 true))

(declare-fun lambda!157184 () Int)

(declare-fun forall!9696 (List!49903 Int) Bool)

(assert (=> d!1347864 (= (allKeysSameHash!790 newBucket!194 hash!366 hashF!1220) (forall!9696 newBucket!194 lambda!157184))))

(declare-fun bs!764052 () Bool)

(assert (= bs!764052 d!1347864))

(declare-fun m!5129121 () Bool)

(assert (=> bs!764052 m!5129121))

(assert (=> b!4440390 d!1347864))

(declare-fun d!1347866 () Bool)

(assert (=> d!1347866 (= (isEmpty!28386 (toList!3647 lm!1616)) (is-Nil!49780 (toList!3647 lm!1616)))))

(assert (=> b!4440389 d!1347866))

(declare-fun d!1347868 () Bool)

(declare-fun res!1838536 () Bool)

(declare-fun e!2764893 () Bool)

(assert (=> d!1347868 (=> res!1838536 e!2764893)))

(assert (=> d!1347868 (= res!1838536 (not (is-Cons!49779 newBucket!194)))))

(assert (=> d!1347868 (= (noDuplicateKeys!830 newBucket!194) e!2764893)))

(declare-fun b!4440539 () Bool)

(declare-fun e!2764894 () Bool)

(assert (=> b!4440539 (= e!2764893 e!2764894)))

(declare-fun res!1838537 () Bool)

(assert (=> b!4440539 (=> (not res!1838537) (not e!2764894))))

(declare-fun containsKey!1234 (List!49903 K!11148) Bool)

(assert (=> b!4440539 (= res!1838537 (not (containsKey!1234 (t!356845 newBucket!194) (_1!28143 (h!55502 newBucket!194)))))))

(declare-fun b!4440540 () Bool)

(assert (=> b!4440540 (= e!2764894 (noDuplicateKeys!830 (t!356845 newBucket!194)))))

(assert (= (and d!1347868 (not res!1838536)) b!4440539))

(assert (= (and b!4440539 res!1838537) b!4440540))

(declare-fun m!5129123 () Bool)

(assert (=> b!4440539 m!5129123))

(declare-fun m!5129125 () Bool)

(assert (=> b!4440540 m!5129125))

(assert (=> b!4440380 d!1347868))

(declare-fun d!1347870 () Bool)

(declare-fun res!1838538 () Bool)

(declare-fun e!2764897 () Bool)

(assert (=> d!1347870 (=> res!1838538 e!2764897)))

(assert (=> d!1347870 (= res!1838538 (is-Nil!49780 (toList!3647 lt!1636391)))))

(assert (=> d!1347870 (= (forall!9694 (toList!3647 lt!1636391) lambda!157163) e!2764897)))

(declare-fun b!4440545 () Bool)

(declare-fun e!2764898 () Bool)

(assert (=> b!4440545 (= e!2764897 e!2764898)))

(declare-fun res!1838539 () Bool)

(assert (=> b!4440545 (=> (not res!1838539) (not e!2764898))))

(assert (=> b!4440545 (= res!1838539 (dynLambda!20906 lambda!157163 (h!55503 (toList!3647 lt!1636391))))))

(declare-fun b!4440546 () Bool)

(assert (=> b!4440546 (= e!2764898 (forall!9694 (t!356846 (toList!3647 lt!1636391)) lambda!157163))))

(assert (= (and d!1347870 (not res!1838538)) b!4440545))

(assert (= (and b!4440545 res!1838539) b!4440546))

(declare-fun b_lambda!144977 () Bool)

(assert (=> (not b_lambda!144977) (not b!4440545)))

(declare-fun m!5129127 () Bool)

(assert (=> b!4440545 m!5129127))

(declare-fun m!5129129 () Bool)

(assert (=> b!4440546 m!5129129))

(assert (=> b!4440378 d!1347870))

(declare-fun d!1347872 () Bool)

(declare-fun e!2764905 () Bool)

(assert (=> d!1347872 e!2764905))

(declare-fun res!1838548 () Bool)

(assert (=> d!1347872 (=> (not res!1838548) (not e!2764905))))

(declare-fun lt!1636486 () ListLongMap!2297)

(assert (=> d!1347872 (= res!1838548 (contains!12347 lt!1636486 (_1!28144 (tuple2!49701 hash!366 newBucket!194))))))

(declare-fun lt!1636487 () List!49904)

(assert (=> d!1347872 (= lt!1636486 (ListLongMap!2298 lt!1636487))))

(declare-fun lt!1636485 () Unit!83865)

(declare-fun lt!1636488 () Unit!83865)

(assert (=> d!1347872 (= lt!1636485 lt!1636488)))

(assert (=> d!1347872 (= (getValueByKey!783 lt!1636487 (_1!28144 (tuple2!49701 hash!366 newBucket!194))) (Some!10796 (_2!28144 (tuple2!49701 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!511 (List!49904 (_ BitVec 64) List!49903) Unit!83865)

(assert (=> d!1347872 (= lt!1636488 (lemmaContainsTupThenGetReturnValue!511 lt!1636487 (_1!28144 (tuple2!49701 hash!366 newBucket!194)) (_2!28144 (tuple2!49701 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!295 (List!49904 (_ BitVec 64) List!49903) List!49904)

(assert (=> d!1347872 (= lt!1636487 (insertStrictlySorted!295 (toList!3647 lm!1616) (_1!28144 (tuple2!49701 hash!366 newBucket!194)) (_2!28144 (tuple2!49701 hash!366 newBucket!194))))))

(assert (=> d!1347872 (= (+!1212 lm!1616 (tuple2!49701 hash!366 newBucket!194)) lt!1636486)))

(declare-fun b!4440556 () Bool)

(declare-fun res!1838547 () Bool)

(assert (=> b!4440556 (=> (not res!1838547) (not e!2764905))))

(assert (=> b!4440556 (= res!1838547 (= (getValueByKey!783 (toList!3647 lt!1636486) (_1!28144 (tuple2!49701 hash!366 newBucket!194))) (Some!10796 (_2!28144 (tuple2!49701 hash!366 newBucket!194)))))))

(declare-fun b!4440557 () Bool)

(declare-fun contains!12352 (List!49904 tuple2!49700) Bool)

(assert (=> b!4440557 (= e!2764905 (contains!12352 (toList!3647 lt!1636486) (tuple2!49701 hash!366 newBucket!194)))))

(assert (= (and d!1347872 res!1838548) b!4440556))

(assert (= (and b!4440556 res!1838547) b!4440557))

(declare-fun m!5129139 () Bool)

(assert (=> d!1347872 m!5129139))

(declare-fun m!5129141 () Bool)

(assert (=> d!1347872 m!5129141))

(declare-fun m!5129143 () Bool)

(assert (=> d!1347872 m!5129143))

(declare-fun m!5129145 () Bool)

(assert (=> d!1347872 m!5129145))

(declare-fun m!5129147 () Bool)

(assert (=> b!4440556 m!5129147))

(declare-fun m!5129149 () Bool)

(assert (=> b!4440557 m!5129149))

(assert (=> b!4440378 d!1347872))

(declare-fun d!1347876 () Bool)

(assert (=> d!1347876 (forall!9694 (toList!3647 (+!1212 lm!1616 (tuple2!49701 hash!366 newBucket!194))) lambda!157163)))

(declare-fun lt!1636491 () Unit!83865)

(declare-fun choose!28198 (ListLongMap!2297 Int (_ BitVec 64) List!49903) Unit!83865)

(assert (=> d!1347876 (= lt!1636491 (choose!28198 lm!1616 lambda!157163 hash!366 newBucket!194))))

(declare-fun e!2764908 () Bool)

(assert (=> d!1347876 e!2764908))

(declare-fun res!1838551 () Bool)

(assert (=> d!1347876 (=> (not res!1838551) (not e!2764908))))

(assert (=> d!1347876 (= res!1838551 (forall!9694 (toList!3647 lm!1616) lambda!157163))))

(assert (=> d!1347876 (= (addValidProp!468 lm!1616 lambda!157163 hash!366 newBucket!194) lt!1636491)))

(declare-fun b!4440561 () Bool)

(assert (=> b!4440561 (= e!2764908 (dynLambda!20906 lambda!157163 (tuple2!49701 hash!366 newBucket!194)))))

(assert (= (and d!1347876 res!1838551) b!4440561))

(declare-fun b_lambda!144979 () Bool)

(assert (=> (not b_lambda!144979) (not b!4440561)))

(assert (=> d!1347876 m!5128963))

(declare-fun m!5129151 () Bool)

(assert (=> d!1347876 m!5129151))

(declare-fun m!5129153 () Bool)

(assert (=> d!1347876 m!5129153))

(assert (=> d!1347876 m!5128951))

(declare-fun m!5129155 () Bool)

(assert (=> b!4440561 m!5129155))

(assert (=> b!4440378 d!1347876))

(declare-fun b!4440562 () Bool)

(assert (=> b!4440562 false))

(declare-fun lt!1636493 () Unit!83865)

(declare-fun lt!1636498 () Unit!83865)

(assert (=> b!4440562 (= lt!1636493 lt!1636498)))

(assert (=> b!4440562 (containsKey!1232 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717)))

(assert (=> b!4440562 (= lt!1636498 (lemmaInGetKeysListThenContainsKey!285 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(declare-fun e!2764914 () Unit!83865)

(declare-fun Unit!83874 () Unit!83865)

(assert (=> b!4440562 (= e!2764914 Unit!83874)))

(declare-fun d!1347878 () Bool)

(declare-fun e!2764912 () Bool)

(assert (=> d!1347878 e!2764912))

(declare-fun res!1838553 () Bool)

(assert (=> d!1347878 (=> res!1838553 e!2764912)))

(declare-fun e!2764913 () Bool)

(assert (=> d!1347878 (= res!1838553 e!2764913)))

(declare-fun res!1838554 () Bool)

(assert (=> d!1347878 (=> (not res!1838554) (not e!2764913))))

(declare-fun lt!1636496 () Bool)

(assert (=> d!1347878 (= res!1838554 (not lt!1636496))))

(declare-fun lt!1636492 () Bool)

(assert (=> d!1347878 (= lt!1636496 lt!1636492)))

(declare-fun lt!1636499 () Unit!83865)

(declare-fun e!2764911 () Unit!83865)

(assert (=> d!1347878 (= lt!1636499 e!2764911)))

(declare-fun c!755727 () Bool)

(assert (=> d!1347878 (= c!755727 lt!1636492)))

(assert (=> d!1347878 (= lt!1636492 (containsKey!1232 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(assert (=> d!1347878 (= (contains!12348 (extractMap!891 (tail!7363 (toList!3647 lm!1616))) key!3717) lt!1636496)))

(declare-fun b!4440563 () Bool)

(declare-fun e!2764910 () Bool)

(assert (=> b!4440563 (= e!2764910 (contains!12351 (keys!17049 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(declare-fun b!4440564 () Bool)

(declare-fun lt!1636497 () Unit!83865)

(assert (=> b!4440564 (= e!2764911 lt!1636497)))

(declare-fun lt!1636495 () Unit!83865)

(assert (=> b!4440564 (= lt!1636495 (lemmaContainsKeyImpliesGetValueByKeyDefined!689 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(assert (=> b!4440564 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(declare-fun lt!1636494 () Unit!83865)

(assert (=> b!4440564 (= lt!1636494 lt!1636495)))

(assert (=> b!4440564 (= lt!1636497 (lemmaInListThenGetKeysListContains!284 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717))))

(declare-fun call!308991 () Bool)

(assert (=> b!4440564 call!308991))

(declare-fun b!4440565 () Bool)

(declare-fun e!2764909 () List!49907)

(assert (=> b!4440565 (= e!2764909 (getKeysList!287 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616))))))))

(declare-fun b!4440566 () Bool)

(assert (=> b!4440566 (= e!2764909 (keys!17049 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))))))

(declare-fun b!4440567 () Bool)

(assert (=> b!4440567 (= e!2764911 e!2764914)))

(declare-fun c!755726 () Bool)

(assert (=> b!4440567 (= c!755726 call!308991)))

(declare-fun b!4440568 () Bool)

(declare-fun Unit!83875 () Unit!83865)

(assert (=> b!4440568 (= e!2764914 Unit!83875)))

(declare-fun b!4440569 () Bool)

(assert (=> b!4440569 (= e!2764912 e!2764910)))

(declare-fun res!1838552 () Bool)

(assert (=> b!4440569 (=> (not res!1838552) (not e!2764910))))

(assert (=> b!4440569 (= res!1838552 (isDefined!8086 (getValueByKey!782 (toList!3648 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717)))))

(declare-fun bm!308986 () Bool)

(assert (=> bm!308986 (= call!308991 (contains!12351 e!2764909 key!3717))))

(declare-fun c!755728 () Bool)

(assert (=> bm!308986 (= c!755728 c!755727)))

(declare-fun b!4440570 () Bool)

(assert (=> b!4440570 (= e!2764913 (not (contains!12351 (keys!17049 (extractMap!891 (tail!7363 (toList!3647 lm!1616)))) key!3717)))))

(assert (= (and d!1347878 c!755727) b!4440564))

(assert (= (and d!1347878 (not c!755727)) b!4440567))

(assert (= (and b!4440567 c!755726) b!4440562))

(assert (= (and b!4440567 (not c!755726)) b!4440568))

(assert (= (or b!4440564 b!4440567) bm!308986))

(assert (= (and bm!308986 c!755728) b!4440565))

(assert (= (and bm!308986 (not c!755728)) b!4440566))

(assert (= (and d!1347878 res!1838554) b!4440570))

(assert (= (and d!1347878 (not res!1838553)) b!4440569))

(assert (= (and b!4440569 res!1838552) b!4440563))

(declare-fun m!5129157 () Bool)

(assert (=> b!4440565 m!5129157))

(declare-fun m!5129159 () Bool)

(assert (=> b!4440564 m!5129159))

(declare-fun m!5129161 () Bool)

(assert (=> b!4440564 m!5129161))

(assert (=> b!4440564 m!5129161))

(declare-fun m!5129163 () Bool)

(assert (=> b!4440564 m!5129163))

(declare-fun m!5129165 () Bool)

(assert (=> b!4440564 m!5129165))

(assert (=> b!4440569 m!5129161))

(assert (=> b!4440569 m!5129161))

(assert (=> b!4440569 m!5129163))

(declare-fun m!5129167 () Bool)

(assert (=> bm!308986 m!5129167))

(declare-fun m!5129169 () Bool)

(assert (=> b!4440562 m!5129169))

(declare-fun m!5129171 () Bool)

(assert (=> b!4440562 m!5129171))

(assert (=> b!4440570 m!5128945))

(declare-fun m!5129173 () Bool)

(assert (=> b!4440570 m!5129173))

(assert (=> b!4440570 m!5129173))

(declare-fun m!5129175 () Bool)

(assert (=> b!4440570 m!5129175))

(assert (=> b!4440566 m!5128945))

(assert (=> b!4440566 m!5129173))

(assert (=> b!4440563 m!5128945))

(assert (=> b!4440563 m!5129173))

(assert (=> b!4440563 m!5129173))

(assert (=> b!4440563 m!5129175))

(assert (=> d!1347878 m!5129169))

(assert (=> b!4440388 d!1347878))

(declare-fun bs!764053 () Bool)

(declare-fun d!1347880 () Bool)

(assert (= bs!764053 (and d!1347880 start!434402)))

(declare-fun lambda!157185 () Int)

(assert (=> bs!764053 (= lambda!157185 lambda!157163)))

(declare-fun bs!764054 () Bool)

(assert (= bs!764054 (and d!1347880 d!1347836)))

(assert (=> bs!764054 (not (= lambda!157185 lambda!157177))))

(declare-fun bs!764055 () Bool)

(assert (= bs!764055 (and d!1347880 d!1347842)))

(assert (=> bs!764055 (= lambda!157185 lambda!157180)))

(declare-fun bs!764056 () Bool)

(assert (= bs!764056 (and d!1347880 d!1347850)))

(assert (=> bs!764056 (= lambda!157185 lambda!157181)))

(declare-fun lt!1636500 () ListMap!2891)

(assert (=> d!1347880 (invariantList!839 (toList!3648 lt!1636500))))

(declare-fun e!2764915 () ListMap!2891)

(assert (=> d!1347880 (= lt!1636500 e!2764915)))

(declare-fun c!755729 () Bool)

(assert (=> d!1347880 (= c!755729 (is-Cons!49780 (tail!7363 (toList!3647 lm!1616))))))

(assert (=> d!1347880 (forall!9694 (tail!7363 (toList!3647 lm!1616)) lambda!157185)))

(assert (=> d!1347880 (= (extractMap!891 (tail!7363 (toList!3647 lm!1616))) lt!1636500)))

(declare-fun b!4440571 () Bool)

(assert (=> b!4440571 (= e!2764915 (addToMapMapFromBucket!443 (_2!28144 (h!55503 (tail!7363 (toList!3647 lm!1616)))) (extractMap!891 (t!356846 (tail!7363 (toList!3647 lm!1616))))))))

(declare-fun b!4440572 () Bool)

(assert (=> b!4440572 (= e!2764915 (ListMap!2892 Nil!49779))))

(assert (= (and d!1347880 c!755729) b!4440571))

(assert (= (and d!1347880 (not c!755729)) b!4440572))

(declare-fun m!5129177 () Bool)

(assert (=> d!1347880 m!5129177))

(assert (=> d!1347880 m!5128943))

(declare-fun m!5129179 () Bool)

(assert (=> d!1347880 m!5129179))

(declare-fun m!5129181 () Bool)

(assert (=> b!4440571 m!5129181))

(assert (=> b!4440571 m!5129181))

(declare-fun m!5129183 () Bool)

(assert (=> b!4440571 m!5129183))

(assert (=> b!4440388 d!1347880))

(declare-fun d!1347882 () Bool)

(assert (=> d!1347882 (= (tail!7363 (toList!3647 lm!1616)) (t!356846 (toList!3647 lm!1616)))))

(assert (=> b!4440388 d!1347882))

(declare-fun b!4440577 () Bool)

(declare-fun e!2764918 () Bool)

(declare-fun tp!1334117 () Bool)

(declare-fun tp!1334118 () Bool)

(assert (=> b!4440577 (= e!2764918 (and tp!1334117 tp!1334118))))

(assert (=> b!4440381 (= tp!1334105 e!2764918)))

(assert (= (and b!4440381 (is-Cons!49780 (toList!3647 lm!1616))) b!4440577))

(declare-fun e!2764921 () Bool)

(declare-fun tp!1334121 () Bool)

(declare-fun b!4440582 () Bool)

(assert (=> b!4440582 (= e!2764921 (and tp_is_empty!26567 tp_is_empty!26565 tp!1334121))))

(assert (=> b!4440393 (= tp!1334106 e!2764921)))

(assert (= (and b!4440393 (is-Cons!49779 (t!356845 newBucket!194))) b!4440582))

(declare-fun b_lambda!144981 () Bool)

(assert (= b_lambda!144979 (or start!434402 b_lambda!144981)))

(declare-fun bs!764057 () Bool)

(declare-fun d!1347884 () Bool)

(assert (= bs!764057 (and d!1347884 start!434402)))

(assert (=> bs!764057 (= (dynLambda!20906 lambda!157163 (tuple2!49701 hash!366 newBucket!194)) (noDuplicateKeys!830 (_2!28144 (tuple2!49701 hash!366 newBucket!194))))))

(declare-fun m!5129185 () Bool)

(assert (=> bs!764057 m!5129185))

(assert (=> b!4440561 d!1347884))

(declare-fun b_lambda!144983 () Bool)

(assert (= b_lambda!144977 (or start!434402 b_lambda!144983)))

(declare-fun bs!764058 () Bool)

(declare-fun d!1347886 () Bool)

(assert (= bs!764058 (and d!1347886 start!434402)))

(assert (=> bs!764058 (= (dynLambda!20906 lambda!157163 (h!55503 (toList!3647 lt!1636391))) (noDuplicateKeys!830 (_2!28144 (h!55503 (toList!3647 lt!1636391)))))))

(declare-fun m!5129187 () Bool)

(assert (=> bs!764058 m!5129187))

(assert (=> b!4440545 d!1347886))

(declare-fun b_lambda!144985 () Bool)

(assert (= b_lambda!144969 (or start!434402 b_lambda!144985)))

(declare-fun bs!764059 () Bool)

(declare-fun d!1347888 () Bool)

(assert (= bs!764059 (and d!1347888 start!434402)))

(assert (=> bs!764059 (= (dynLambda!20906 lambda!157163 (h!55503 (toList!3647 lm!1616))) (noDuplicateKeys!830 (_2!28144 (h!55503 (toList!3647 lm!1616)))))))

(declare-fun m!5129189 () Bool)

(assert (=> bs!764059 m!5129189))

(assert (=> b!4440460 d!1347888))

(push 1)

(assert (not d!1347842))

(assert (not b!4440516))

(assert (not b!4440528))

(assert (not b_lambda!144985))

(assert (not d!1347852))

(assert tp_is_empty!26567)

(assert (not b!4440571))

(assert (not b!4440563))

(assert (not b!4440565))

(assert (not d!1347878))

(assert (not b!4440540))

(assert (not d!1347846))

(assert (not b!4440496))

(assert (not d!1347838))

(assert (not d!1347858))

(assert tp_is_empty!26565)

(assert (not b!4440566))

(assert (not b!4440562))

(assert (not b!4440488))

(assert (not b!4440512))

(assert (not bm!308985))

(assert (not b!4440539))

(assert (not b!4440570))

(assert (not b!4440510))

(assert (not bs!764059))

(assert (not b!4440557))

(assert (not b_lambda!144981))

(assert (not b!4440564))

(assert (not bm!308984))

(assert (not b!4440577))

(assert (not b!4440491))

(assert (not b!4440569))

(assert (not b!4440509))

(assert (not d!1347848))

(assert (not b!4440556))

(assert (not d!1347836))

(assert (not d!1347850))

(assert (not d!1347876))

(assert (not d!1347872))

(assert (not b!4440530))

(assert (not bs!764057))

(assert (not bs!764058))

(assert (not b!4440495))

(assert (not b!4440490))

(assert (not d!1347864))

(assert (not b!4440508))

(assert (not b!4440489))

(assert (not bm!308986))

(assert (not b!4440582))

(assert (not d!1347854))

(assert (not b_lambda!144983))

(assert (not b!4440546))

(assert (not b!4440461))

(assert (not b!4440511))

(assert (not b!4440503))

(assert (not d!1347862))

(assert (not d!1347880))

(assert (not b!4440517))

(assert (not b!4440492))

(assert (not b!4440515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

