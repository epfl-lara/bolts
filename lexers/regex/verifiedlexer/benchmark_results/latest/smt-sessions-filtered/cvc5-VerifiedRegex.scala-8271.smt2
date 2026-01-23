; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429696 () Bool)

(assert start!429696)

(declare-fun b!4413707 () Bool)

(declare-fun res!1822427 () Bool)

(declare-fun e!2748527 () Bool)

(assert (=> b!4413707 (=> (not res!1822427) (not e!2748527))))

(declare-datatypes ((V!11004 0))(
  ( (V!11005 (val!16877 Int)) )
))
(declare-datatypes ((K!10758 0))(
  ( (K!10759 (val!16878 Int)) )
))
(declare-datatypes ((tuple2!49074 0))(
  ( (tuple2!49075 (_1!27831 K!10758) (_2!27831 V!11004)) )
))
(declare-datatypes ((List!49523 0))(
  ( (Nil!49399) (Cons!49399 (h!55050 tuple2!49074) (t!356461 List!49523)) )
))
(declare-datatypes ((tuple2!49076 0))(
  ( (tuple2!49077 (_1!27832 (_ BitVec 64)) (_2!27832 List!49523)) )
))
(declare-datatypes ((List!49524 0))(
  ( (Nil!49400) (Cons!49400 (h!55051 tuple2!49076) (t!356462 List!49524)) )
))
(declare-datatypes ((ListLongMap!1985 0))(
  ( (ListLongMap!1986 (toList!3335 List!49524)) )
))
(declare-fun lm!1616 () ListLongMap!1985)

(declare-datatypes ((Hashable!5068 0))(
  ( (HashableExt!5067 (__x!30771 Int)) )
))
(declare-fun hashF!1220 () Hashable!5068)

(declare-fun allKeysSameHashInMap!780 (ListLongMap!1985 Hashable!5068) Bool)

(assert (=> b!4413707 (= res!1822427 (allKeysSameHashInMap!780 lm!1616 hashF!1220))))

(declare-fun b!4413708 () Bool)

(declare-fun e!2748520 () Bool)

(declare-fun tp!1332397 () Bool)

(assert (=> b!4413708 (= e!2748520 tp!1332397)))

(declare-fun b!4413709 () Bool)

(declare-fun res!1822428 () Bool)

(declare-fun e!2748525 () Bool)

(assert (=> b!4413709 (=> (not res!1822428) (not e!2748525))))

(declare-fun lambda!151297 () Int)

(declare-fun forall!9448 (List!49524 Int) Bool)

(assert (=> b!4413709 (= res!1822428 (forall!9448 (toList!3335 lm!1616) lambda!151297))))

(declare-fun b!4413710 () Bool)

(declare-fun res!1822414 () Bool)

(declare-fun e!2748521 () Bool)

(assert (=> b!4413710 (=> res!1822414 e!2748521)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun lt!1615624 () Bool)

(assert (=> b!4413710 (= res!1822414 (or (not (is-Cons!49400 (toList!3335 lm!1616))) (not (= (_1!27832 (h!55051 (toList!3335 lm!1616))) hash!366)) lt!1615624))))

(declare-fun b!4413711 () Bool)

(declare-fun res!1822420 () Bool)

(assert (=> b!4413711 (=> res!1822420 e!2748521)))

(declare-fun lt!1615626 () ListLongMap!1985)

(declare-fun lt!1615621 () tuple2!49076)

(declare-fun head!9153 (List!49524) tuple2!49076)

(assert (=> b!4413711 (= res!1822420 (not (= (head!9153 (toList!3335 lt!1615626)) lt!1615621)))))

(declare-fun b!4413712 () Bool)

(declare-fun res!1822426 () Bool)

(assert (=> b!4413712 (=> res!1822426 e!2748521)))

(declare-fun tail!7162 (List!49524) List!49524)

(assert (=> b!4413712 (= res!1822426 (not (= (tail!7162 (toList!3335 lt!1615626)) (t!356462 (toList!3335 lm!1616)))))))

(declare-fun b!4413713 () Bool)

(declare-fun e!2748523 () Bool)

(declare-fun e!2748522 () Bool)

(assert (=> b!4413713 (= e!2748523 e!2748522)))

(declare-fun res!1822423 () Bool)

(assert (=> b!4413713 (=> res!1822423 e!2748522)))

(declare-fun lt!1615620 () List!49523)

(declare-fun newBucket!194 () List!49523)

(declare-fun lt!1615622 () tuple2!49074)

(assert (=> b!4413713 (= res!1822423 (not (= newBucket!194 (Cons!49399 lt!1615622 lt!1615620))))))

(declare-fun apply!11526 (ListLongMap!1985 (_ BitVec 64)) List!49523)

(assert (=> b!4413713 (= lt!1615620 (apply!11526 lm!1616 hash!366))))

(declare-fun key!3717 () K!10758)

(declare-fun newValue!93 () V!11004)

(assert (=> b!4413713 (= lt!1615622 (tuple2!49075 key!3717 newValue!93))))

(declare-fun b!4413714 () Bool)

(declare-fun res!1822415 () Bool)

(assert (=> b!4413714 (=> (not res!1822415) (not e!2748525))))

(declare-fun noDuplicateKeys!674 (List!49523) Bool)

(assert (=> b!4413714 (= res!1822415 (noDuplicateKeys!674 newBucket!194))))

(declare-fun b!4413715 () Bool)

(declare-fun res!1822422 () Bool)

(assert (=> b!4413715 (=> (not res!1822422) (not e!2748527))))

(declare-fun hash!1979 (Hashable!5068 K!10758) (_ BitVec 64))

(assert (=> b!4413715 (= res!1822422 (= (hash!1979 hashF!1220 key!3717) hash!366))))

(declare-fun b!4413716 () Bool)

(assert (=> b!4413716 (= e!2748525 (not e!2748521))))

(declare-fun res!1822425 () Bool)

(assert (=> b!4413716 (=> res!1822425 e!2748521)))

(assert (=> b!4413716 (= res!1822425 (not (forall!9448 (toList!3335 lt!1615626) lambda!151297)))))

(assert (=> b!4413716 (forall!9448 (toList!3335 lt!1615626) lambda!151297)))

(declare-fun +!948 (ListLongMap!1985 tuple2!49076) ListLongMap!1985)

(assert (=> b!4413716 (= lt!1615626 (+!948 lm!1616 lt!1615621))))

(assert (=> b!4413716 (= lt!1615621 (tuple2!49077 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80578 0))(
  ( (Unit!80579) )
))
(declare-fun lt!1615623 () Unit!80578)

(declare-fun addValidProp!318 (ListLongMap!1985 Int (_ BitVec 64) List!49523) Unit!80578)

(assert (=> b!4413716 (= lt!1615623 (addValidProp!318 lm!1616 lambda!151297 hash!366 newBucket!194))))

(declare-fun b!4413717 () Bool)

(declare-fun res!1822419 () Bool)

(assert (=> b!4413717 (=> (not res!1822419) (not e!2748527))))

(declare-fun allKeysSameHash!634 (List!49523 (_ BitVec 64) Hashable!5068) Bool)

(assert (=> b!4413717 (= res!1822419 (allKeysSameHash!634 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4413718 () Bool)

(assert (=> b!4413718 (= e!2748522 (noDuplicateKeys!674 lt!1615620))))

(declare-datatypes ((ListMap!2579 0))(
  ( (ListMap!2580 (toList!3336 List!49523)) )
))
(declare-fun lt!1615628 () ListMap!2579)

(declare-fun lt!1615625 () ListMap!2579)

(declare-fun +!949 (ListMap!2579 tuple2!49074) ListMap!2579)

(assert (=> b!4413718 (= lt!1615628 (+!949 lt!1615625 lt!1615622))))

(declare-fun b!4413719 () Bool)

(assert (=> b!4413719 (= e!2748527 e!2748525)))

(declare-fun res!1822416 () Bool)

(assert (=> b!4413719 (=> (not res!1822416) (not e!2748525))))

(declare-fun e!2748524 () Bool)

(assert (=> b!4413719 (= res!1822416 e!2748524)))

(declare-fun res!1822421 () Bool)

(assert (=> b!4413719 (=> res!1822421 e!2748524)))

(declare-fun e!2748519 () Bool)

(assert (=> b!4413719 (= res!1822421 e!2748519)))

(declare-fun res!1822429 () Bool)

(assert (=> b!4413719 (=> (not res!1822429) (not e!2748519))))

(assert (=> b!4413719 (= res!1822429 (not lt!1615624))))

(declare-fun lt!1615627 () Bool)

(assert (=> b!4413719 (= lt!1615624 (not lt!1615627))))

(declare-fun contains!11838 (ListLongMap!1985 (_ BitVec 64)) Bool)

(assert (=> b!4413719 (= lt!1615627 (contains!11838 lm!1616 hash!366))))

(declare-fun b!4413720 () Bool)

(assert (=> b!4413720 (= e!2748519 (= newBucket!194 (Cons!49399 (tuple2!49075 key!3717 newValue!93) (apply!11526 lm!1616 hash!366))))))

(declare-fun b!4413706 () Bool)

(assert (=> b!4413706 (= e!2748524 (and (not lt!1615627) (= newBucket!194 (Cons!49399 (tuple2!49075 key!3717 newValue!93) Nil!49399))))))

(declare-fun res!1822424 () Bool)

(assert (=> start!429696 (=> (not res!1822424) (not e!2748527))))

(assert (=> start!429696 (= res!1822424 (forall!9448 (toList!3335 lm!1616) lambda!151297))))

(assert (=> start!429696 e!2748527))

(declare-fun tp_is_empty!25941 () Bool)

(assert (=> start!429696 tp_is_empty!25941))

(declare-fun tp_is_empty!25943 () Bool)

(assert (=> start!429696 tp_is_empty!25943))

(declare-fun e!2748526 () Bool)

(assert (=> start!429696 e!2748526))

(declare-fun inv!64945 (ListLongMap!1985) Bool)

(assert (=> start!429696 (and (inv!64945 lm!1616) e!2748520)))

(assert (=> start!429696 true))

(declare-fun b!4413721 () Bool)

(declare-fun res!1822417 () Bool)

(assert (=> b!4413721 (=> (not res!1822417) (not e!2748527))))

(declare-fun contains!11839 (ListMap!2579 K!10758) Bool)

(declare-fun extractMap!735 (List!49524) ListMap!2579)

(assert (=> b!4413721 (= res!1822417 (not (contains!11839 (extractMap!735 (toList!3335 lm!1616)) key!3717)))))

(declare-fun b!4413722 () Bool)

(assert (=> b!4413722 (= e!2748521 e!2748523)))

(declare-fun res!1822418 () Bool)

(assert (=> b!4413722 (=> res!1822418 e!2748523)))

(declare-fun addToMapMapFromBucket!328 (List!49523 ListMap!2579) ListMap!2579)

(assert (=> b!4413722 (= res!1822418 (not (= (extractMap!735 (toList!3335 lt!1615626)) (addToMapMapFromBucket!328 newBucket!194 lt!1615625))))))

(assert (=> b!4413722 (= lt!1615625 (extractMap!735 (t!356462 (toList!3335 lm!1616))))))

(declare-fun tp!1332398 () Bool)

(declare-fun b!4413723 () Bool)

(assert (=> b!4413723 (= e!2748526 (and tp_is_empty!25943 tp_is_empty!25941 tp!1332398))))

(assert (= (and start!429696 res!1822424) b!4413707))

(assert (= (and b!4413707 res!1822427) b!4413715))

(assert (= (and b!4413715 res!1822422) b!4413717))

(assert (= (and b!4413717 res!1822419) b!4413721))

(assert (= (and b!4413721 res!1822417) b!4413719))

(assert (= (and b!4413719 res!1822429) b!4413720))

(assert (= (and b!4413719 (not res!1822421)) b!4413706))

(assert (= (and b!4413719 res!1822416) b!4413714))

(assert (= (and b!4413714 res!1822415) b!4413709))

(assert (= (and b!4413709 res!1822428) b!4413716))

(assert (= (and b!4413716 (not res!1822425)) b!4413710))

(assert (= (and b!4413710 (not res!1822414)) b!4413711))

(assert (= (and b!4413711 (not res!1822420)) b!4413712))

(assert (= (and b!4413712 (not res!1822426)) b!4413722))

(assert (= (and b!4413722 (not res!1822418)) b!4413713))

(assert (= (and b!4413713 (not res!1822423)) b!4413718))

(assert (= (and start!429696 (is-Cons!49399 newBucket!194)) b!4413723))

(assert (= start!429696 b!4413708))

(declare-fun m!5089307 () Bool)

(assert (=> b!4413716 m!5089307))

(assert (=> b!4413716 m!5089307))

(declare-fun m!5089309 () Bool)

(assert (=> b!4413716 m!5089309))

(declare-fun m!5089311 () Bool)

(assert (=> b!4413716 m!5089311))

(declare-fun m!5089313 () Bool)

(assert (=> b!4413718 m!5089313))

(declare-fun m!5089315 () Bool)

(assert (=> b!4413718 m!5089315))

(declare-fun m!5089317 () Bool)

(assert (=> start!429696 m!5089317))

(declare-fun m!5089319 () Bool)

(assert (=> start!429696 m!5089319))

(declare-fun m!5089321 () Bool)

(assert (=> b!4413714 m!5089321))

(declare-fun m!5089323 () Bool)

(assert (=> b!4413711 m!5089323))

(declare-fun m!5089325 () Bool)

(assert (=> b!4413720 m!5089325))

(declare-fun m!5089327 () Bool)

(assert (=> b!4413722 m!5089327))

(declare-fun m!5089329 () Bool)

(assert (=> b!4413722 m!5089329))

(declare-fun m!5089331 () Bool)

(assert (=> b!4413722 m!5089331))

(declare-fun m!5089333 () Bool)

(assert (=> b!4413719 m!5089333))

(declare-fun m!5089335 () Bool)

(assert (=> b!4413715 m!5089335))

(assert (=> b!4413709 m!5089317))

(declare-fun m!5089337 () Bool)

(assert (=> b!4413707 m!5089337))

(declare-fun m!5089339 () Bool)

(assert (=> b!4413712 m!5089339))

(declare-fun m!5089341 () Bool)

(assert (=> b!4413717 m!5089341))

(declare-fun m!5089343 () Bool)

(assert (=> b!4413721 m!5089343))

(assert (=> b!4413721 m!5089343))

(declare-fun m!5089345 () Bool)

(assert (=> b!4413721 m!5089345))

(assert (=> b!4413713 m!5089325))

(push 1)

(assert (not b!4413707))

(assert (not b!4413720))

(assert (not b!4413717))

(assert (not b!4413723))

(assert (not b!4413708))

(assert (not b!4413721))

(assert (not b!4413719))

(assert (not b!4413722))

(assert (not b!4413709))

(assert tp_is_empty!25943)

(assert (not b!4413718))

(assert (not b!4413711))

(assert (not b!4413713))

(assert (not b!4413715))

(assert (not b!4413714))

(assert tp_is_empty!25941)

(assert (not b!4413716))

(assert (not b!4413712))

(assert (not start!429696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1337464 () Bool)

(declare-datatypes ((Option!10657 0))(
  ( (None!10656) (Some!10656 (v!43816 List!49523)) )
))
(declare-fun get!16089 (Option!10657) List!49523)

(declare-fun getValueByKey!643 (List!49524 (_ BitVec 64)) Option!10657)

(assert (=> d!1337464 (= (apply!11526 lm!1616 hash!366) (get!16089 (getValueByKey!643 (toList!3335 lm!1616) hash!366)))))

(declare-fun bs!753008 () Bool)

(assert (= bs!753008 d!1337464))

(declare-fun m!5089387 () Bool)

(assert (=> bs!753008 m!5089387))

(assert (=> bs!753008 m!5089387))

(declare-fun m!5089389 () Bool)

(assert (=> bs!753008 m!5089389))

(assert (=> b!4413720 d!1337464))

(declare-fun d!1337466 () Bool)

(declare-fun res!1822482 () Bool)

(declare-fun e!2748559 () Bool)

(assert (=> d!1337466 (=> res!1822482 e!2748559)))

(assert (=> d!1337466 (= res!1822482 (is-Nil!49400 (toList!3335 lm!1616)))))

(assert (=> d!1337466 (= (forall!9448 (toList!3335 lm!1616) lambda!151297) e!2748559)))

(declare-fun b!4413782 () Bool)

(declare-fun e!2748560 () Bool)

(assert (=> b!4413782 (= e!2748559 e!2748560)))

(declare-fun res!1822483 () Bool)

(assert (=> b!4413782 (=> (not res!1822483) (not e!2748560))))

(declare-fun dynLambda!20802 (Int tuple2!49076) Bool)

(assert (=> b!4413782 (= res!1822483 (dynLambda!20802 lambda!151297 (h!55051 (toList!3335 lm!1616))))))

(declare-fun b!4413783 () Bool)

(assert (=> b!4413783 (= e!2748560 (forall!9448 (t!356462 (toList!3335 lm!1616)) lambda!151297))))

(assert (= (and d!1337466 (not res!1822482)) b!4413782))

(assert (= (and b!4413782 res!1822483) b!4413783))

(declare-fun b_lambda!142063 () Bool)

(assert (=> (not b_lambda!142063) (not b!4413782)))

(declare-fun m!5089391 () Bool)

(assert (=> b!4413782 m!5089391))

(declare-fun m!5089393 () Bool)

(assert (=> b!4413783 m!5089393))

(assert (=> b!4413709 d!1337466))

(assert (=> start!429696 d!1337466))

(declare-fun d!1337468 () Bool)

(declare-fun isStrictlySorted!198 (List!49524) Bool)

(assert (=> d!1337468 (= (inv!64945 lm!1616) (isStrictlySorted!198 (toList!3335 lm!1616)))))

(declare-fun bs!753009 () Bool)

(assert (= bs!753009 d!1337468))

(declare-fun m!5089395 () Bool)

(assert (=> bs!753009 m!5089395))

(assert (=> start!429696 d!1337468))

(declare-fun d!1337470 () Bool)

(declare-fun e!2748566 () Bool)

(assert (=> d!1337470 e!2748566))

(declare-fun res!1822486 () Bool)

(assert (=> d!1337470 (=> res!1822486 e!2748566)))

(declare-fun lt!1615664 () Bool)

(assert (=> d!1337470 (= res!1822486 (not lt!1615664))))

(declare-fun lt!1615667 () Bool)

(assert (=> d!1337470 (= lt!1615664 lt!1615667)))

(declare-fun lt!1615665 () Unit!80578)

(declare-fun e!2748565 () Unit!80578)

(assert (=> d!1337470 (= lt!1615665 e!2748565)))

(declare-fun c!751632 () Bool)

(assert (=> d!1337470 (= c!751632 lt!1615667)))

(declare-fun containsKey!1010 (List!49524 (_ BitVec 64)) Bool)

(assert (=> d!1337470 (= lt!1615667 (containsKey!1010 (toList!3335 lm!1616) hash!366))))

(assert (=> d!1337470 (= (contains!11838 lm!1616 hash!366) lt!1615664)))

(declare-fun b!4413790 () Bool)

(declare-fun lt!1615666 () Unit!80578)

(assert (=> b!4413790 (= e!2748565 lt!1615666)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!553 (List!49524 (_ BitVec 64)) Unit!80578)

(assert (=> b!4413790 (= lt!1615666 (lemmaContainsKeyImpliesGetValueByKeyDefined!553 (toList!3335 lm!1616) hash!366))))

(declare-fun isDefined!7950 (Option!10657) Bool)

(assert (=> b!4413790 (isDefined!7950 (getValueByKey!643 (toList!3335 lm!1616) hash!366))))

(declare-fun b!4413791 () Bool)

(declare-fun Unit!80582 () Unit!80578)

(assert (=> b!4413791 (= e!2748565 Unit!80582)))

(declare-fun b!4413792 () Bool)

(assert (=> b!4413792 (= e!2748566 (isDefined!7950 (getValueByKey!643 (toList!3335 lm!1616) hash!366)))))

(assert (= (and d!1337470 c!751632) b!4413790))

(assert (= (and d!1337470 (not c!751632)) b!4413791))

(assert (= (and d!1337470 (not res!1822486)) b!4413792))

(declare-fun m!5089397 () Bool)

(assert (=> d!1337470 m!5089397))

(declare-fun m!5089399 () Bool)

(assert (=> b!4413790 m!5089399))

(assert (=> b!4413790 m!5089387))

(assert (=> b!4413790 m!5089387))

(declare-fun m!5089401 () Bool)

(assert (=> b!4413790 m!5089401))

(assert (=> b!4413792 m!5089387))

(assert (=> b!4413792 m!5089387))

(assert (=> b!4413792 m!5089401))

(assert (=> b!4413719 d!1337470))

(declare-fun d!1337472 () Bool)

(assert (=> d!1337472 (= (tail!7162 (toList!3335 lt!1615626)) (t!356462 (toList!3335 lt!1615626)))))

(assert (=> b!4413712 d!1337472))

(declare-fun b!4413811 () Bool)

(assert (=> b!4413811 false))

(declare-fun lt!1615688 () Unit!80578)

(declare-fun lt!1615691 () Unit!80578)

(assert (=> b!4413811 (= lt!1615688 lt!1615691)))

(declare-fun containsKey!1011 (List!49523 K!10758) Bool)

(assert (=> b!4413811 (containsKey!1011 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!217 (List!49523 K!10758) Unit!80578)

(assert (=> b!4413811 (= lt!1615691 (lemmaInGetKeysListThenContainsKey!217 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(declare-fun e!2748584 () Unit!80578)

(declare-fun Unit!80583 () Unit!80578)

(assert (=> b!4413811 (= e!2748584 Unit!80583)))

(declare-fun b!4413812 () Bool)

(declare-fun e!2748582 () Bool)

(declare-datatypes ((List!49527 0))(
  ( (Nil!49403) (Cons!49403 (h!55056 K!10758) (t!356465 List!49527)) )
))
(declare-fun contains!11842 (List!49527 K!10758) Bool)

(declare-fun keys!16821 (ListMap!2579) List!49527)

(assert (=> b!4413812 (= e!2748582 (not (contains!11842 (keys!16821 (extractMap!735 (toList!3335 lm!1616))) key!3717)))))

(declare-fun b!4413813 () Bool)

(declare-fun e!2748580 () Unit!80578)

(declare-fun lt!1615687 () Unit!80578)

(assert (=> b!4413813 (= e!2748580 lt!1615687)))

(declare-fun lt!1615690 () Unit!80578)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!554 (List!49523 K!10758) Unit!80578)

(assert (=> b!4413813 (= lt!1615690 (lemmaContainsKeyImpliesGetValueByKeyDefined!554 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(declare-datatypes ((Option!10658 0))(
  ( (None!10657) (Some!10657 (v!43817 V!11004)) )
))
(declare-fun isDefined!7951 (Option!10658) Bool)

(declare-fun getValueByKey!644 (List!49523 K!10758) Option!10658)

(assert (=> b!4413813 (isDefined!7951 (getValueByKey!644 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(declare-fun lt!1615685 () Unit!80578)

(assert (=> b!4413813 (= lt!1615685 lt!1615690)))

(declare-fun lemmaInListThenGetKeysListContains!216 (List!49523 K!10758) Unit!80578)

(assert (=> b!4413813 (= lt!1615687 (lemmaInListThenGetKeysListContains!216 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(declare-fun call!307177 () Bool)

(assert (=> b!4413813 call!307177))

(declare-fun bm!307172 () Bool)

(declare-fun e!2748579 () List!49527)

(assert (=> bm!307172 (= call!307177 (contains!11842 e!2748579 key!3717))))

(declare-fun c!751640 () Bool)

(declare-fun c!751639 () Bool)

(assert (=> bm!307172 (= c!751640 c!751639)))

(declare-fun b!4413814 () Bool)

(assert (=> b!4413814 (= e!2748580 e!2748584)))

(declare-fun c!751641 () Bool)

(assert (=> b!4413814 (= c!751641 call!307177)))

(declare-fun b!4413815 () Bool)

(assert (=> b!4413815 (= e!2748579 (keys!16821 (extractMap!735 (toList!3335 lm!1616))))))

(declare-fun b!4413816 () Bool)

(declare-fun e!2748583 () Bool)

(declare-fun e!2748581 () Bool)

(assert (=> b!4413816 (= e!2748583 e!2748581)))

(declare-fun res!1822495 () Bool)

(assert (=> b!4413816 (=> (not res!1822495) (not e!2748581))))

(assert (=> b!4413816 (= res!1822495 (isDefined!7951 (getValueByKey!644 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717)))))

(declare-fun b!4413818 () Bool)

(declare-fun Unit!80584 () Unit!80578)

(assert (=> b!4413818 (= e!2748584 Unit!80584)))

(declare-fun b!4413819 () Bool)

(assert (=> b!4413819 (= e!2748581 (contains!11842 (keys!16821 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(declare-fun b!4413817 () Bool)

(declare-fun getKeysList!219 (List!49523) List!49527)

(assert (=> b!4413817 (= e!2748579 (getKeysList!219 (toList!3336 (extractMap!735 (toList!3335 lm!1616)))))))

(declare-fun d!1337474 () Bool)

(assert (=> d!1337474 e!2748583))

(declare-fun res!1822494 () Bool)

(assert (=> d!1337474 (=> res!1822494 e!2748583)))

(assert (=> d!1337474 (= res!1822494 e!2748582)))

(declare-fun res!1822493 () Bool)

(assert (=> d!1337474 (=> (not res!1822493) (not e!2748582))))

(declare-fun lt!1615684 () Bool)

(assert (=> d!1337474 (= res!1822493 (not lt!1615684))))

(declare-fun lt!1615686 () Bool)

(assert (=> d!1337474 (= lt!1615684 lt!1615686)))

(declare-fun lt!1615689 () Unit!80578)

(assert (=> d!1337474 (= lt!1615689 e!2748580)))

(assert (=> d!1337474 (= c!751639 lt!1615686)))

(assert (=> d!1337474 (= lt!1615686 (containsKey!1011 (toList!3336 (extractMap!735 (toList!3335 lm!1616))) key!3717))))

(assert (=> d!1337474 (= (contains!11839 (extractMap!735 (toList!3335 lm!1616)) key!3717) lt!1615684)))

(assert (= (and d!1337474 c!751639) b!4413813))

(assert (= (and d!1337474 (not c!751639)) b!4413814))

(assert (= (and b!4413814 c!751641) b!4413811))

(assert (= (and b!4413814 (not c!751641)) b!4413818))

(assert (= (or b!4413813 b!4413814) bm!307172))

(assert (= (and bm!307172 c!751640) b!4413817))

(assert (= (and bm!307172 (not c!751640)) b!4413815))

(assert (= (and d!1337474 res!1822493) b!4413812))

(assert (= (and d!1337474 (not res!1822494)) b!4413816))

(assert (= (and b!4413816 res!1822495) b!4413819))

(assert (=> b!4413812 m!5089343))

(declare-fun m!5089403 () Bool)

(assert (=> b!4413812 m!5089403))

(assert (=> b!4413812 m!5089403))

(declare-fun m!5089405 () Bool)

(assert (=> b!4413812 m!5089405))

(declare-fun m!5089407 () Bool)

(assert (=> d!1337474 m!5089407))

(declare-fun m!5089409 () Bool)

(assert (=> bm!307172 m!5089409))

(assert (=> b!4413811 m!5089407))

(declare-fun m!5089411 () Bool)

(assert (=> b!4413811 m!5089411))

(assert (=> b!4413815 m!5089343))

(assert (=> b!4413815 m!5089403))

(assert (=> b!4413819 m!5089343))

(assert (=> b!4413819 m!5089403))

(assert (=> b!4413819 m!5089403))

(assert (=> b!4413819 m!5089405))

(declare-fun m!5089413 () Bool)

(assert (=> b!4413817 m!5089413))

(declare-fun m!5089415 () Bool)

(assert (=> b!4413816 m!5089415))

(assert (=> b!4413816 m!5089415))

(declare-fun m!5089417 () Bool)

(assert (=> b!4413816 m!5089417))

(declare-fun m!5089419 () Bool)

(assert (=> b!4413813 m!5089419))

(assert (=> b!4413813 m!5089415))

(assert (=> b!4413813 m!5089415))

(assert (=> b!4413813 m!5089417))

(declare-fun m!5089421 () Bool)

(assert (=> b!4413813 m!5089421))

(assert (=> b!4413721 d!1337474))

(declare-fun bs!753010 () Bool)

(declare-fun d!1337478 () Bool)

(assert (= bs!753010 (and d!1337478 start!429696)))

(declare-fun lambda!151309 () Int)

(assert (=> bs!753010 (= lambda!151309 lambda!151297)))

(declare-fun lt!1615702 () ListMap!2579)

(declare-fun invariantList!772 (List!49523) Bool)

(assert (=> d!1337478 (invariantList!772 (toList!3336 lt!1615702))))

(declare-fun e!2748591 () ListMap!2579)

(assert (=> d!1337478 (= lt!1615702 e!2748591)))

(declare-fun c!751646 () Bool)

(assert (=> d!1337478 (= c!751646 (is-Cons!49400 (toList!3335 lm!1616)))))

(assert (=> d!1337478 (forall!9448 (toList!3335 lm!1616) lambda!151309)))

(assert (=> d!1337478 (= (extractMap!735 (toList!3335 lm!1616)) lt!1615702)))

(declare-fun b!4413830 () Bool)

(assert (=> b!4413830 (= e!2748591 (addToMapMapFromBucket!328 (_2!27832 (h!55051 (toList!3335 lm!1616))) (extractMap!735 (t!356462 (toList!3335 lm!1616)))))))

(declare-fun b!4413831 () Bool)

(assert (=> b!4413831 (= e!2748591 (ListMap!2580 Nil!49399))))

(assert (= (and d!1337478 c!751646) b!4413830))

(assert (= (and d!1337478 (not c!751646)) b!4413831))

(declare-fun m!5089423 () Bool)

(assert (=> d!1337478 m!5089423))

(declare-fun m!5089425 () Bool)

(assert (=> d!1337478 m!5089425))

(assert (=> b!4413830 m!5089331))

(assert (=> b!4413830 m!5089331))

(declare-fun m!5089427 () Bool)

(assert (=> b!4413830 m!5089427))

(assert (=> b!4413721 d!1337478))

(declare-fun bs!753011 () Bool)

(declare-fun d!1337480 () Bool)

(assert (= bs!753011 (and d!1337480 start!429696)))

(declare-fun lambda!151310 () Int)

(assert (=> bs!753011 (= lambda!151310 lambda!151297)))

(declare-fun bs!753012 () Bool)

(assert (= bs!753012 (and d!1337480 d!1337478)))

(assert (=> bs!753012 (= lambda!151310 lambda!151309)))

(declare-fun lt!1615707 () ListMap!2579)

(assert (=> d!1337480 (invariantList!772 (toList!3336 lt!1615707))))

(declare-fun e!2748594 () ListMap!2579)

(assert (=> d!1337480 (= lt!1615707 e!2748594)))

(declare-fun c!751648 () Bool)

(assert (=> d!1337480 (= c!751648 (is-Cons!49400 (toList!3335 lt!1615626)))))

(assert (=> d!1337480 (forall!9448 (toList!3335 lt!1615626) lambda!151310)))

(assert (=> d!1337480 (= (extractMap!735 (toList!3335 lt!1615626)) lt!1615707)))

(declare-fun b!4413835 () Bool)

(assert (=> b!4413835 (= e!2748594 (addToMapMapFromBucket!328 (_2!27832 (h!55051 (toList!3335 lt!1615626))) (extractMap!735 (t!356462 (toList!3335 lt!1615626)))))))

(declare-fun b!4413836 () Bool)

(assert (=> b!4413836 (= e!2748594 (ListMap!2580 Nil!49399))))

(assert (= (and d!1337480 c!751648) b!4413835))

(assert (= (and d!1337480 (not c!751648)) b!4413836))

(declare-fun m!5089429 () Bool)

(assert (=> d!1337480 m!5089429))

(declare-fun m!5089431 () Bool)

(assert (=> d!1337480 m!5089431))

(declare-fun m!5089433 () Bool)

(assert (=> b!4413835 m!5089433))

(assert (=> b!4413835 m!5089433))

(declare-fun m!5089435 () Bool)

(assert (=> b!4413835 m!5089435))

(assert (=> b!4413722 d!1337480))

(declare-fun b!4413891 () Bool)

(assert (=> b!4413891 true))

(declare-fun bs!753018 () Bool)

(declare-fun b!4413894 () Bool)

(assert (= bs!753018 (and b!4413894 b!4413891)))

(declare-fun lambda!151343 () Int)

(declare-fun lambda!151342 () Int)

(assert (=> bs!753018 (= lambda!151343 lambda!151342)))

(assert (=> b!4413894 true))

(declare-fun lt!1615797 () ListMap!2579)

(declare-fun lambda!151344 () Int)

(assert (=> bs!753018 (= (= lt!1615797 lt!1615625) (= lambda!151344 lambda!151342))))

(assert (=> b!4413894 (= (= lt!1615797 lt!1615625) (= lambda!151344 lambda!151343))))

(assert (=> b!4413894 true))

(declare-fun bs!753019 () Bool)

(declare-fun d!1337482 () Bool)

(assert (= bs!753019 (and d!1337482 b!4413891)))

(declare-fun lambda!151345 () Int)

(declare-fun lt!1615792 () ListMap!2579)

(assert (=> bs!753019 (= (= lt!1615792 lt!1615625) (= lambda!151345 lambda!151342))))

(declare-fun bs!753020 () Bool)

(assert (= bs!753020 (and d!1337482 b!4413894)))

(assert (=> bs!753020 (= (= lt!1615792 lt!1615625) (= lambda!151345 lambda!151343))))

(assert (=> bs!753020 (= (= lt!1615792 lt!1615797) (= lambda!151345 lambda!151344))))

(assert (=> d!1337482 true))

(declare-fun e!2748635 () ListMap!2579)

(assert (=> b!4413891 (= e!2748635 lt!1615625)))

(declare-fun lt!1615791 () Unit!80578)

(declare-fun call!307187 () Unit!80578)

(assert (=> b!4413891 (= lt!1615791 call!307187)))

(declare-fun call!307186 () Bool)

(assert (=> b!4413891 call!307186))

(declare-fun lt!1615785 () Unit!80578)

(assert (=> b!4413891 (= lt!1615785 lt!1615791)))

(declare-fun call!307188 () Bool)

(assert (=> b!4413891 call!307188))

(declare-fun lt!1615800 () Unit!80578)

(declare-fun Unit!80585 () Unit!80578)

(assert (=> b!4413891 (= lt!1615800 Unit!80585)))

(declare-fun c!751657 () Bool)

(declare-fun bm!307181 () Bool)

(declare-fun forall!9450 (List!49523 Int) Bool)

(assert (=> bm!307181 (= call!307188 (forall!9450 (ite c!751657 (toList!3336 lt!1615625) newBucket!194) (ite c!751657 lambda!151342 lambda!151344)))))

(declare-fun b!4413892 () Bool)

(declare-fun e!2748633 () Bool)

(assert (=> b!4413892 (= e!2748633 (invariantList!772 (toList!3336 lt!1615792)))))

(declare-fun bm!307182 () Bool)

(assert (=> bm!307182 (= call!307186 (forall!9450 (ite c!751657 (toList!3336 lt!1615625) newBucket!194) (ite c!751657 lambda!151342 lambda!151344)))))

(declare-fun b!4413893 () Bool)

(declare-fun res!1822535 () Bool)

(assert (=> b!4413893 (=> (not res!1822535) (not e!2748633))))

(assert (=> b!4413893 (= res!1822535 (forall!9450 (toList!3336 lt!1615625) lambda!151345))))

(assert (=> b!4413894 (= e!2748635 lt!1615797)))

(declare-fun lt!1615794 () ListMap!2579)

(assert (=> b!4413894 (= lt!1615794 (+!949 lt!1615625 (h!55050 newBucket!194)))))

(assert (=> b!4413894 (= lt!1615797 (addToMapMapFromBucket!328 (t!356461 newBucket!194) (+!949 lt!1615625 (h!55050 newBucket!194))))))

(declare-fun lt!1615798 () Unit!80578)

(assert (=> b!4413894 (= lt!1615798 call!307187)))

(assert (=> b!4413894 (forall!9450 (toList!3336 lt!1615625) lambda!151343)))

(declare-fun lt!1615788 () Unit!80578)

(assert (=> b!4413894 (= lt!1615788 lt!1615798)))

(assert (=> b!4413894 (forall!9450 (toList!3336 lt!1615794) lambda!151344)))

(declare-fun lt!1615796 () Unit!80578)

(declare-fun Unit!80586 () Unit!80578)

(assert (=> b!4413894 (= lt!1615796 Unit!80586)))

(assert (=> b!4413894 (forall!9450 (t!356461 newBucket!194) lambda!151344)))

(declare-fun lt!1615784 () Unit!80578)

(declare-fun Unit!80587 () Unit!80578)

(assert (=> b!4413894 (= lt!1615784 Unit!80587)))

(declare-fun lt!1615781 () Unit!80578)

(declare-fun Unit!80588 () Unit!80578)

(assert (=> b!4413894 (= lt!1615781 Unit!80588)))

(declare-fun lt!1615790 () Unit!80578)

(declare-fun forallContained!2059 (List!49523 Int tuple2!49074) Unit!80578)

(assert (=> b!4413894 (= lt!1615790 (forallContained!2059 (toList!3336 lt!1615794) lambda!151344 (h!55050 newBucket!194)))))

(assert (=> b!4413894 (contains!11839 lt!1615794 (_1!27831 (h!55050 newBucket!194)))))

(declare-fun lt!1615786 () Unit!80578)

(declare-fun Unit!80589 () Unit!80578)

(assert (=> b!4413894 (= lt!1615786 Unit!80589)))

(assert (=> b!4413894 (contains!11839 lt!1615797 (_1!27831 (h!55050 newBucket!194)))))

(declare-fun lt!1615795 () Unit!80578)

(declare-fun Unit!80590 () Unit!80578)

(assert (=> b!4413894 (= lt!1615795 Unit!80590)))

(assert (=> b!4413894 call!307186))

(declare-fun lt!1615799 () Unit!80578)

(declare-fun Unit!80591 () Unit!80578)

(assert (=> b!4413894 (= lt!1615799 Unit!80591)))

(assert (=> b!4413894 (forall!9450 (toList!3336 lt!1615794) lambda!151344)))

(declare-fun lt!1615789 () Unit!80578)

(declare-fun Unit!80592 () Unit!80578)

(assert (=> b!4413894 (= lt!1615789 Unit!80592)))

(declare-fun lt!1615793 () Unit!80578)

(declare-fun Unit!80593 () Unit!80578)

(assert (=> b!4413894 (= lt!1615793 Unit!80593)))

(declare-fun lt!1615801 () Unit!80578)

(declare-fun addForallContainsKeyThenBeforeAdding!149 (ListMap!2579 ListMap!2579 K!10758 V!11004) Unit!80578)

(assert (=> b!4413894 (= lt!1615801 (addForallContainsKeyThenBeforeAdding!149 lt!1615625 lt!1615797 (_1!27831 (h!55050 newBucket!194)) (_2!27831 (h!55050 newBucket!194))))))

(assert (=> b!4413894 (forall!9450 (toList!3336 lt!1615625) lambda!151344)))

(declare-fun lt!1615782 () Unit!80578)

(assert (=> b!4413894 (= lt!1615782 lt!1615801)))

(assert (=> b!4413894 (forall!9450 (toList!3336 lt!1615625) lambda!151344)))

(declare-fun lt!1615783 () Unit!80578)

(declare-fun Unit!80594 () Unit!80578)

(assert (=> b!4413894 (= lt!1615783 Unit!80594)))

(declare-fun res!1822536 () Bool)

(assert (=> b!4413894 (= res!1822536 call!307188)))

(declare-fun e!2748634 () Bool)

(assert (=> b!4413894 (=> (not res!1822536) (not e!2748634))))

(assert (=> b!4413894 e!2748634))

(declare-fun lt!1615787 () Unit!80578)

(declare-fun Unit!80595 () Unit!80578)

(assert (=> b!4413894 (= lt!1615787 Unit!80595)))

(declare-fun b!4413895 () Bool)

(assert (=> b!4413895 (= e!2748634 (forall!9450 (toList!3336 lt!1615625) lambda!151344))))

(declare-fun bm!307183 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!149 (ListMap!2579) Unit!80578)

(assert (=> bm!307183 (= call!307187 (lemmaContainsAllItsOwnKeys!149 lt!1615625))))

(assert (=> d!1337482 e!2748633))

(declare-fun res!1822534 () Bool)

(assert (=> d!1337482 (=> (not res!1822534) (not e!2748633))))

(assert (=> d!1337482 (= res!1822534 (forall!9450 newBucket!194 lambda!151345))))

(assert (=> d!1337482 (= lt!1615792 e!2748635)))

(assert (=> d!1337482 (= c!751657 (is-Nil!49399 newBucket!194))))

(assert (=> d!1337482 (noDuplicateKeys!674 newBucket!194)))

(assert (=> d!1337482 (= (addToMapMapFromBucket!328 newBucket!194 lt!1615625) lt!1615792)))

(assert (= (and d!1337482 c!751657) b!4413891))

(assert (= (and d!1337482 (not c!751657)) b!4413894))

(assert (= (and b!4413894 res!1822536) b!4413895))

(assert (= (or b!4413891 b!4413894) bm!307183))

(assert (= (or b!4413891 b!4413894) bm!307182))

(assert (= (or b!4413891 b!4413894) bm!307181))

(assert (= (and d!1337482 res!1822534) b!4413893))

(assert (= (and b!4413893 res!1822535) b!4413892))

(declare-fun m!5089505 () Bool)

(assert (=> b!4413894 m!5089505))

(declare-fun m!5089507 () Bool)

(assert (=> b!4413894 m!5089507))

(declare-fun m!5089509 () Bool)

(assert (=> b!4413894 m!5089509))

(assert (=> b!4413894 m!5089507))

(declare-fun m!5089511 () Bool)

(assert (=> b!4413894 m!5089511))

(declare-fun m!5089513 () Bool)

(assert (=> b!4413894 m!5089513))

(declare-fun m!5089515 () Bool)

(assert (=> b!4413894 m!5089515))

(declare-fun m!5089517 () Bool)

(assert (=> b!4413894 m!5089517))

(declare-fun m!5089519 () Bool)

(assert (=> b!4413894 m!5089519))

(assert (=> b!4413894 m!5089505))

(declare-fun m!5089521 () Bool)

(assert (=> b!4413894 m!5089521))

(declare-fun m!5089523 () Bool)

(assert (=> b!4413894 m!5089523))

(assert (=> b!4413894 m!5089523))

(declare-fun m!5089525 () Bool)

(assert (=> b!4413892 m!5089525))

(assert (=> b!4413895 m!5089523))

(declare-fun m!5089527 () Bool)

(assert (=> bm!307183 m!5089527))

(declare-fun m!5089529 () Bool)

(assert (=> b!4413893 m!5089529))

(declare-fun m!5089531 () Bool)

(assert (=> bm!307182 m!5089531))

(assert (=> bm!307181 m!5089531))

(declare-fun m!5089533 () Bool)

(assert (=> d!1337482 m!5089533))

(assert (=> d!1337482 m!5089321))

(assert (=> b!4413722 d!1337482))

(declare-fun bs!753021 () Bool)

(declare-fun d!1337508 () Bool)

(assert (= bs!753021 (and d!1337508 start!429696)))

(declare-fun lambda!151346 () Int)

(assert (=> bs!753021 (= lambda!151346 lambda!151297)))

(declare-fun bs!753022 () Bool)

(assert (= bs!753022 (and d!1337508 d!1337478)))

(assert (=> bs!753022 (= lambda!151346 lambda!151309)))

(declare-fun bs!753023 () Bool)

(assert (= bs!753023 (and d!1337508 d!1337480)))

(assert (=> bs!753023 (= lambda!151346 lambda!151310)))

(declare-fun lt!1615810 () ListMap!2579)

(assert (=> d!1337508 (invariantList!772 (toList!3336 lt!1615810))))

(declare-fun e!2748642 () ListMap!2579)

(assert (=> d!1337508 (= lt!1615810 e!2748642)))

(declare-fun c!751661 () Bool)

(assert (=> d!1337508 (= c!751661 (is-Cons!49400 (t!356462 (toList!3335 lm!1616))))))

(assert (=> d!1337508 (forall!9448 (t!356462 (toList!3335 lm!1616)) lambda!151346)))

(assert (=> d!1337508 (= (extractMap!735 (t!356462 (toList!3335 lm!1616))) lt!1615810)))

(declare-fun b!4413907 () Bool)

(assert (=> b!4413907 (= e!2748642 (addToMapMapFromBucket!328 (_2!27832 (h!55051 (t!356462 (toList!3335 lm!1616)))) (extractMap!735 (t!356462 (t!356462 (toList!3335 lm!1616))))))))

(declare-fun b!4413908 () Bool)

(assert (=> b!4413908 (= e!2748642 (ListMap!2580 Nil!49399))))

(assert (= (and d!1337508 c!751661) b!4413907))

(assert (= (and d!1337508 (not c!751661)) b!4413908))

(declare-fun m!5089535 () Bool)

(assert (=> d!1337508 m!5089535))

(declare-fun m!5089537 () Bool)

(assert (=> d!1337508 m!5089537))

(declare-fun m!5089539 () Bool)

(assert (=> b!4413907 m!5089539))

(assert (=> b!4413907 m!5089539))

(declare-fun m!5089541 () Bool)

(assert (=> b!4413907 m!5089541))

(assert (=> b!4413722 d!1337508))

(declare-fun d!1337510 () Bool)

(assert (=> d!1337510 (= (head!9153 (toList!3335 lt!1615626)) (h!55051 (toList!3335 lt!1615626)))))

(assert (=> b!4413711 d!1337510))

(declare-fun d!1337512 () Bool)

(declare-fun hash!1981 (Hashable!5068 K!10758) (_ BitVec 64))

(assert (=> d!1337512 (= (hash!1979 hashF!1220 key!3717) (hash!1981 hashF!1220 key!3717))))

(declare-fun bs!753024 () Bool)

(assert (= bs!753024 d!1337512))

(declare-fun m!5089543 () Bool)

(assert (=> bs!753024 m!5089543))

(assert (=> b!4413715 d!1337512))

(assert (=> b!4413713 d!1337464))

(declare-fun d!1337514 () Bool)

(declare-fun res!1822544 () Bool)

(declare-fun e!2748647 () Bool)

(assert (=> d!1337514 (=> res!1822544 e!2748647)))

(assert (=> d!1337514 (= res!1822544 (not (is-Cons!49399 newBucket!194)))))

(assert (=> d!1337514 (= (noDuplicateKeys!674 newBucket!194) e!2748647)))

(declare-fun b!4413913 () Bool)

(declare-fun e!2748648 () Bool)

(assert (=> b!4413913 (= e!2748647 e!2748648)))

(declare-fun res!1822545 () Bool)

(assert (=> b!4413913 (=> (not res!1822545) (not e!2748648))))

(declare-fun containsKey!1012 (List!49523 K!10758) Bool)

(assert (=> b!4413913 (= res!1822545 (not (containsKey!1012 (t!356461 newBucket!194) (_1!27831 (h!55050 newBucket!194)))))))

(declare-fun b!4413914 () Bool)

(assert (=> b!4413914 (= e!2748648 (noDuplicateKeys!674 (t!356461 newBucket!194)))))

(assert (= (and d!1337514 (not res!1822544)) b!4413913))

(assert (= (and b!4413913 res!1822545) b!4413914))

(declare-fun m!5089545 () Bool)

(assert (=> b!4413913 m!5089545))

(declare-fun m!5089547 () Bool)

(assert (=> b!4413914 m!5089547))

(assert (=> b!4413714 d!1337514))

(declare-fun bs!753025 () Bool)

(declare-fun d!1337516 () Bool)

(assert (= bs!753025 (and d!1337516 b!4413891)))

(declare-fun lambda!151349 () Int)

(assert (=> bs!753025 (not (= lambda!151349 lambda!151342))))

(declare-fun bs!753026 () Bool)

(assert (= bs!753026 (and d!1337516 b!4413894)))

(assert (=> bs!753026 (not (= lambda!151349 lambda!151343))))

(assert (=> bs!753026 (not (= lambda!151349 lambda!151344))))

(declare-fun bs!753027 () Bool)

(assert (= bs!753027 (and d!1337516 d!1337482)))

(assert (=> bs!753027 (not (= lambda!151349 lambda!151345))))

(assert (=> d!1337516 true))

(assert (=> d!1337516 true))

(assert (=> d!1337516 (= (allKeysSameHash!634 newBucket!194 hash!366 hashF!1220) (forall!9450 newBucket!194 lambda!151349))))

(declare-fun bs!753028 () Bool)

(assert (= bs!753028 d!1337516))

(declare-fun m!5089549 () Bool)

(assert (=> bs!753028 m!5089549))

(assert (=> b!4413717 d!1337516))

(declare-fun d!1337518 () Bool)

(declare-fun res!1822546 () Bool)

(declare-fun e!2748649 () Bool)

(assert (=> d!1337518 (=> res!1822546 e!2748649)))

(assert (=> d!1337518 (= res!1822546 (not (is-Cons!49399 lt!1615620)))))

(assert (=> d!1337518 (= (noDuplicateKeys!674 lt!1615620) e!2748649)))

(declare-fun b!4413919 () Bool)

(declare-fun e!2748650 () Bool)

(assert (=> b!4413919 (= e!2748649 e!2748650)))

(declare-fun res!1822547 () Bool)

(assert (=> b!4413919 (=> (not res!1822547) (not e!2748650))))

(assert (=> b!4413919 (= res!1822547 (not (containsKey!1012 (t!356461 lt!1615620) (_1!27831 (h!55050 lt!1615620)))))))

(declare-fun b!4413920 () Bool)

(assert (=> b!4413920 (= e!2748650 (noDuplicateKeys!674 (t!356461 lt!1615620)))))

(assert (= (and d!1337518 (not res!1822546)) b!4413919))

(assert (= (and b!4413919 res!1822547) b!4413920))

(declare-fun m!5089551 () Bool)

(assert (=> b!4413919 m!5089551))

(declare-fun m!5089553 () Bool)

(assert (=> b!4413920 m!5089553))

(assert (=> b!4413718 d!1337518))

(declare-fun d!1337520 () Bool)

(declare-fun e!2748653 () Bool)

(assert (=> d!1337520 e!2748653))

(declare-fun res!1822552 () Bool)

(assert (=> d!1337520 (=> (not res!1822552) (not e!2748653))))

(declare-fun lt!1615819 () ListMap!2579)

(assert (=> d!1337520 (= res!1822552 (contains!11839 lt!1615819 (_1!27831 lt!1615622)))))

(declare-fun lt!1615820 () List!49523)

(assert (=> d!1337520 (= lt!1615819 (ListMap!2580 lt!1615820))))

(declare-fun lt!1615822 () Unit!80578)

(declare-fun lt!1615821 () Unit!80578)

(assert (=> d!1337520 (= lt!1615822 lt!1615821)))

(assert (=> d!1337520 (= (getValueByKey!644 lt!1615820 (_1!27831 lt!1615622)) (Some!10657 (_2!27831 lt!1615622)))))

(declare-fun lemmaContainsTupThenGetReturnValue!382 (List!49523 K!10758 V!11004) Unit!80578)

(assert (=> d!1337520 (= lt!1615821 (lemmaContainsTupThenGetReturnValue!382 lt!1615820 (_1!27831 lt!1615622) (_2!27831 lt!1615622)))))

(declare-fun insertNoDuplicatedKeys!165 (List!49523 K!10758 V!11004) List!49523)

(assert (=> d!1337520 (= lt!1615820 (insertNoDuplicatedKeys!165 (toList!3336 lt!1615625) (_1!27831 lt!1615622) (_2!27831 lt!1615622)))))

(assert (=> d!1337520 (= (+!949 lt!1615625 lt!1615622) lt!1615819)))

(declare-fun b!4413925 () Bool)

(declare-fun res!1822553 () Bool)

(assert (=> b!4413925 (=> (not res!1822553) (not e!2748653))))

(assert (=> b!4413925 (= res!1822553 (= (getValueByKey!644 (toList!3336 lt!1615819) (_1!27831 lt!1615622)) (Some!10657 (_2!27831 lt!1615622))))))

(declare-fun b!4413926 () Bool)

(declare-fun contains!11843 (List!49523 tuple2!49074) Bool)

(assert (=> b!4413926 (= e!2748653 (contains!11843 (toList!3336 lt!1615819) lt!1615622))))

(assert (= (and d!1337520 res!1822552) b!4413925))

(assert (= (and b!4413925 res!1822553) b!4413926))

(declare-fun m!5089555 () Bool)

(assert (=> d!1337520 m!5089555))

(declare-fun m!5089557 () Bool)

(assert (=> d!1337520 m!5089557))

(declare-fun m!5089559 () Bool)

(assert (=> d!1337520 m!5089559))

(declare-fun m!5089561 () Bool)

(assert (=> d!1337520 m!5089561))

(declare-fun m!5089563 () Bool)

(assert (=> b!4413925 m!5089563))

(declare-fun m!5089565 () Bool)

(assert (=> b!4413926 m!5089565))

(assert (=> b!4413718 d!1337520))

(declare-fun bs!753029 () Bool)

(declare-fun d!1337522 () Bool)

(assert (= bs!753029 (and d!1337522 start!429696)))

(declare-fun lambda!151354 () Int)

(assert (=> bs!753029 (not (= lambda!151354 lambda!151297))))

(declare-fun bs!753031 () Bool)

(assert (= bs!753031 (and d!1337522 d!1337478)))

(assert (=> bs!753031 (not (= lambda!151354 lambda!151309))))

(declare-fun bs!753032 () Bool)

(assert (= bs!753032 (and d!1337522 d!1337480)))

(assert (=> bs!753032 (not (= lambda!151354 lambda!151310))))

(declare-fun bs!753034 () Bool)

(assert (= bs!753034 (and d!1337522 d!1337508)))

(assert (=> bs!753034 (not (= lambda!151354 lambda!151346))))

(assert (=> d!1337522 true))

(assert (=> d!1337522 (= (allKeysSameHashInMap!780 lm!1616 hashF!1220) (forall!9448 (toList!3335 lm!1616) lambda!151354))))

(declare-fun bs!753035 () Bool)

(assert (= bs!753035 d!1337522))

(declare-fun m!5089567 () Bool)

(assert (=> bs!753035 m!5089567))

(assert (=> b!4413707 d!1337522))

(declare-fun d!1337524 () Bool)

(declare-fun res!1822554 () Bool)

(declare-fun e!2748657 () Bool)

(assert (=> d!1337524 (=> res!1822554 e!2748657)))

(assert (=> d!1337524 (= res!1822554 (is-Nil!49400 (toList!3335 lt!1615626)))))

(assert (=> d!1337524 (= (forall!9448 (toList!3335 lt!1615626) lambda!151297) e!2748657)))

(declare-fun b!4413935 () Bool)

(declare-fun e!2748658 () Bool)

(assert (=> b!4413935 (= e!2748657 e!2748658)))

(declare-fun res!1822555 () Bool)

(assert (=> b!4413935 (=> (not res!1822555) (not e!2748658))))

(assert (=> b!4413935 (= res!1822555 (dynLambda!20802 lambda!151297 (h!55051 (toList!3335 lt!1615626))))))

(declare-fun b!4413936 () Bool)

(assert (=> b!4413936 (= e!2748658 (forall!9448 (t!356462 (toList!3335 lt!1615626)) lambda!151297))))

(assert (= (and d!1337524 (not res!1822554)) b!4413935))

(assert (= (and b!4413935 res!1822555) b!4413936))

(declare-fun b_lambda!142071 () Bool)

(assert (=> (not b_lambda!142071) (not b!4413935)))

(declare-fun m!5089571 () Bool)

(assert (=> b!4413935 m!5089571))

(declare-fun m!5089573 () Bool)

(assert (=> b!4413936 m!5089573))

(assert (=> b!4413716 d!1337524))

(declare-fun d!1337526 () Bool)

(declare-fun e!2748662 () Bool)

(assert (=> d!1337526 e!2748662))

(declare-fun res!1822560 () Bool)

(assert (=> d!1337526 (=> (not res!1822560) (not e!2748662))))

(declare-fun lt!1615836 () ListLongMap!1985)

(assert (=> d!1337526 (= res!1822560 (contains!11838 lt!1615836 (_1!27832 lt!1615621)))))

(declare-fun lt!1615838 () List!49524)

(assert (=> d!1337526 (= lt!1615836 (ListLongMap!1986 lt!1615838))))

(declare-fun lt!1615837 () Unit!80578)

(declare-fun lt!1615835 () Unit!80578)

(assert (=> d!1337526 (= lt!1615837 lt!1615835)))

(assert (=> d!1337526 (= (getValueByKey!643 lt!1615838 (_1!27832 lt!1615621)) (Some!10656 (_2!27832 lt!1615621)))))

(declare-fun lemmaContainsTupThenGetReturnValue!383 (List!49524 (_ BitVec 64) List!49523) Unit!80578)

(assert (=> d!1337526 (= lt!1615835 (lemmaContainsTupThenGetReturnValue!383 lt!1615838 (_1!27832 lt!1615621) (_2!27832 lt!1615621)))))

(declare-fun insertStrictlySorted!226 (List!49524 (_ BitVec 64) List!49523) List!49524)

(assert (=> d!1337526 (= lt!1615838 (insertStrictlySorted!226 (toList!3335 lm!1616) (_1!27832 lt!1615621) (_2!27832 lt!1615621)))))

(assert (=> d!1337526 (= (+!948 lm!1616 lt!1615621) lt!1615836)))

(declare-fun b!4413947 () Bool)

(declare-fun res!1822561 () Bool)

(assert (=> b!4413947 (=> (not res!1822561) (not e!2748662))))

(assert (=> b!4413947 (= res!1822561 (= (getValueByKey!643 (toList!3335 lt!1615836) (_1!27832 lt!1615621)) (Some!10656 (_2!27832 lt!1615621))))))

(declare-fun b!4413948 () Bool)

(declare-fun contains!11844 (List!49524 tuple2!49076) Bool)

(assert (=> b!4413948 (= e!2748662 (contains!11844 (toList!3335 lt!1615836) lt!1615621))))

(assert (= (and d!1337526 res!1822560) b!4413947))

(assert (= (and b!4413947 res!1822561) b!4413948))

(declare-fun m!5089589 () Bool)

(assert (=> d!1337526 m!5089589))

(declare-fun m!5089591 () Bool)

(assert (=> d!1337526 m!5089591))

(declare-fun m!5089593 () Bool)

(assert (=> d!1337526 m!5089593))

(declare-fun m!5089595 () Bool)

(assert (=> d!1337526 m!5089595))

(declare-fun m!5089597 () Bool)

(assert (=> b!4413947 m!5089597))

(declare-fun m!5089599 () Bool)

(assert (=> b!4413948 m!5089599))

(assert (=> b!4413716 d!1337526))

(declare-fun d!1337534 () Bool)

(assert (=> d!1337534 (forall!9448 (toList!3335 (+!948 lm!1616 (tuple2!49077 hash!366 newBucket!194))) lambda!151297)))

(declare-fun lt!1615841 () Unit!80578)

(declare-fun choose!27777 (ListLongMap!1985 Int (_ BitVec 64) List!49523) Unit!80578)

(assert (=> d!1337534 (= lt!1615841 (choose!27777 lm!1616 lambda!151297 hash!366 newBucket!194))))

(declare-fun e!2748665 () Bool)

(assert (=> d!1337534 e!2748665))

(declare-fun res!1822564 () Bool)

(assert (=> d!1337534 (=> (not res!1822564) (not e!2748665))))

(assert (=> d!1337534 (= res!1822564 (forall!9448 (toList!3335 lm!1616) lambda!151297))))

(assert (=> d!1337534 (= (addValidProp!318 lm!1616 lambda!151297 hash!366 newBucket!194) lt!1615841)))

(declare-fun b!4413952 () Bool)

(assert (=> b!4413952 (= e!2748665 (dynLambda!20802 lambda!151297 (tuple2!49077 hash!366 newBucket!194)))))

(assert (= (and d!1337534 res!1822564) b!4413952))

(declare-fun b_lambda!142073 () Bool)

(assert (=> (not b_lambda!142073) (not b!4413952)))

(declare-fun m!5089601 () Bool)

(assert (=> d!1337534 m!5089601))

(declare-fun m!5089603 () Bool)

(assert (=> d!1337534 m!5089603))

(declare-fun m!5089605 () Bool)

(assert (=> d!1337534 m!5089605))

(assert (=> d!1337534 m!5089317))

(declare-fun m!5089607 () Bool)

(assert (=> b!4413952 m!5089607))

(assert (=> b!4413716 d!1337534))

(declare-fun b!4413957 () Bool)

(declare-fun e!2748668 () Bool)

(declare-fun tp!1332409 () Bool)

(declare-fun tp!1332410 () Bool)

(assert (=> b!4413957 (= e!2748668 (and tp!1332409 tp!1332410))))

(assert (=> b!4413708 (= tp!1332397 e!2748668)))

(assert (= (and b!4413708 (is-Cons!49400 (toList!3335 lm!1616))) b!4413957))

(declare-fun b!4413962 () Bool)

(declare-fun e!2748671 () Bool)

(declare-fun tp!1332413 () Bool)

(assert (=> b!4413962 (= e!2748671 (and tp_is_empty!25943 tp_is_empty!25941 tp!1332413))))

(assert (=> b!4413723 (= tp!1332398 e!2748671)))

(assert (= (and b!4413723 (is-Cons!49399 (t!356461 newBucket!194))) b!4413962))

(declare-fun b_lambda!142075 () Bool)

(assert (= b_lambda!142063 (or start!429696 b_lambda!142075)))

(declare-fun bs!753040 () Bool)

(declare-fun d!1337536 () Bool)

(assert (= bs!753040 (and d!1337536 start!429696)))

(assert (=> bs!753040 (= (dynLambda!20802 lambda!151297 (h!55051 (toList!3335 lm!1616))) (noDuplicateKeys!674 (_2!27832 (h!55051 (toList!3335 lm!1616)))))))

(declare-fun m!5089609 () Bool)

(assert (=> bs!753040 m!5089609))

(assert (=> b!4413782 d!1337536))

(declare-fun b_lambda!142077 () Bool)

(assert (= b_lambda!142071 (or start!429696 b_lambda!142077)))

(declare-fun bs!753041 () Bool)

(declare-fun d!1337538 () Bool)

(assert (= bs!753041 (and d!1337538 start!429696)))

(assert (=> bs!753041 (= (dynLambda!20802 lambda!151297 (h!55051 (toList!3335 lt!1615626))) (noDuplicateKeys!674 (_2!27832 (h!55051 (toList!3335 lt!1615626)))))))

(declare-fun m!5089611 () Bool)

(assert (=> bs!753041 m!5089611))

(assert (=> b!4413935 d!1337538))

(declare-fun b_lambda!142079 () Bool)

(assert (= b_lambda!142073 (or start!429696 b_lambda!142079)))

(declare-fun bs!753042 () Bool)

(declare-fun d!1337540 () Bool)

(assert (= bs!753042 (and d!1337540 start!429696)))

(assert (=> bs!753042 (= (dynLambda!20802 lambda!151297 (tuple2!49077 hash!366 newBucket!194)) (noDuplicateKeys!674 (_2!27832 (tuple2!49077 hash!366 newBucket!194))))))

(declare-fun m!5089613 () Bool)

(assert (=> bs!753042 m!5089613))

(assert (=> b!4413952 d!1337540))

(push 1)

(assert (not b!4413913))

(assert (not b!4413815))

(assert (not b!4413893))

(assert (not b!4413835))

(assert (not b!4413907))

(assert (not d!1337516))

(assert (not d!1337482))

(assert (not d!1337468))

(assert (not b!4413819))

(assert (not bs!753041))

(assert (not d!1337478))

(assert (not b!4413925))

(assert (not bm!307183))

(assert (not b!4413892))

(assert (not d!1337522))

(assert (not d!1337464))

(assert (not b!4413894))

(assert (not d!1337526))

(assert (not bm!307181))

(assert (not bm!307182))

(assert (not b!4413813))

(assert tp_is_empty!25943)

(assert (not bs!753040))

(assert (not b!4413948))

(assert (not b!4413830))

(assert (not d!1337508))

(assert (not b!4413926))

(assert (not b!4413812))

(assert (not b!4413792))

(assert (not b!4413962))

(assert (not b_lambda!142077))

(assert (not b!4413920))

(assert (not d!1337474))

(assert (not bs!753042))

(assert (not d!1337520))

(assert (not b_lambda!142075))

(assert (not b!4413957))

(assert (not b!4413790))

(assert tp_is_empty!25941)

(assert (not b!4413947))

(assert (not b_lambda!142079))

(assert (not b!4413816))

(assert (not bm!307172))

(assert (not b!4413919))

(assert (not b!4413895))

(assert (not b!4413936))

(assert (not b!4413817))

(assert (not d!1337512))

(assert (not b!4413914))

(assert (not b!4413783))

(assert (not d!1337480))

(assert (not d!1337470))

(assert (not d!1337534))

(assert (not b!4413811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

