; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!431394 () Bool)

(assert start!431394)

(declare-fun b!4423580 () Bool)

(declare-fun res!1828538 () Bool)

(declare-fun e!2754316 () Bool)

(assert (=> b!4423580 (=> (not res!1828538) (not e!2754316))))

(declare-datatypes ((K!10928 0))(
  ( (K!10929 (val!17013 Int)) )
))
(declare-fun key!3717 () K!10928)

(declare-datatypes ((Hashable!5136 0))(
  ( (HashableExt!5135 (__x!30839 Int)) )
))
(declare-fun hashF!1220 () Hashable!5136)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2099 (Hashable!5136 K!10928) (_ BitVec 64))

(assert (=> b!4423580 (= res!1828538 (= (hash!2099 hashF!1220 key!3717) hash!366))))

(declare-fun b!4423581 () Bool)

(declare-fun res!1828535 () Bool)

(declare-fun e!2754319 () Bool)

(assert (=> b!4423581 (=> (not res!1828535) (not e!2754319))))

(declare-datatypes ((V!11174 0))(
  ( (V!11175 (val!17014 Int)) )
))
(declare-datatypes ((tuple2!49346 0))(
  ( (tuple2!49347 (_1!27967 K!10928) (_2!27967 V!11174)) )
))
(declare-datatypes ((List!49688 0))(
  ( (Nil!49564) (Cons!49564 (h!55245 tuple2!49346) (t!356626 List!49688)) )
))
(declare-datatypes ((tuple2!49348 0))(
  ( (tuple2!49349 (_1!27968 (_ BitVec 64)) (_2!27968 List!49688)) )
))
(declare-datatypes ((List!49689 0))(
  ( (Nil!49565) (Cons!49565 (h!55246 tuple2!49348) (t!356627 List!49689)) )
))
(declare-datatypes ((ListLongMap!2121 0))(
  ( (ListLongMap!2122 (toList!3471 List!49689)) )
))
(declare-fun lm!1616 () ListLongMap!2121)

(declare-fun lambda!153495 () Int)

(declare-fun forall!9549 (List!49689 Int) Bool)

(assert (=> b!4423581 (= res!1828535 (forall!9549 (toList!3471 lm!1616) lambda!153495))))

(declare-fun b!4423582 () Bool)

(declare-fun res!1828537 () Bool)

(assert (=> b!4423582 (=> (not res!1828537) (not e!2754316))))

(declare-fun allKeysSameHashInMap!848 (ListLongMap!2121 Hashable!5136) Bool)

(assert (=> b!4423582 (= res!1828537 (allKeysSameHashInMap!848 lm!1616 hashF!1220))))

(declare-fun b!4423583 () Bool)

(declare-fun res!1828534 () Bool)

(assert (=> b!4423583 (=> (not res!1828534) (not e!2754319))))

(declare-fun newBucket!194 () List!49688)

(declare-fun noDuplicateKeys!742 (List!49688) Bool)

(assert (=> b!4423583 (= res!1828534 (noDuplicateKeys!742 newBucket!194))))

(declare-fun newValue!93 () V!11174)

(declare-fun e!2754309 () Bool)

(declare-fun b!4423584 () Bool)

(declare-fun apply!11594 (ListLongMap!2121 (_ BitVec 64)) List!49688)

(assert (=> b!4423584 (= e!2754309 (= newBucket!194 (Cons!49564 (tuple2!49347 key!3717 newValue!93) (apply!11594 lm!1616 hash!366))))))

(declare-fun b!4423585 () Bool)

(declare-fun res!1828532 () Bool)

(declare-fun e!2754311 () Bool)

(assert (=> b!4423585 (=> res!1828532 e!2754311)))

(declare-datatypes ((ListMap!2715 0))(
  ( (ListMap!2716 (toList!3472 List!49688)) )
))
(declare-fun lt!1623016 () ListMap!2715)

(declare-fun lt!1623019 () ListMap!2715)

(declare-fun eq!400 (ListMap!2715 ListMap!2715) Bool)

(declare-fun addToMapMapFromBucket!379 (List!49688 ListMap!2715) ListMap!2715)

(assert (=> b!4423585 (= res!1828532 (not (eq!400 lt!1623019 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lm!1616))) lt!1623016))))))

(declare-fun b!4423586 () Bool)

(declare-datatypes ((Unit!81655 0))(
  ( (Unit!81656) )
))
(declare-fun e!2754317 () Unit!81655)

(declare-fun Unit!81657 () Unit!81655)

(assert (=> b!4423586 (= e!2754317 Unit!81657)))

(declare-fun lt!1623026 () Unit!81655)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!29 (ListLongMap!2121 K!10928 Hashable!5136) Unit!81655)

(assert (=> b!4423586 (= lt!1623026 (lemmaExtractTailMapContainsThenExtractMapDoes!29 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4423586 false))

(declare-fun b!4423587 () Bool)

(declare-fun e!2754314 () Bool)

(assert (=> b!4423587 (= e!2754314 e!2754319)))

(declare-fun res!1828528 () Bool)

(assert (=> b!4423587 (=> (not res!1828528) (not e!2754319))))

(declare-fun e!2754310 () Bool)

(assert (=> b!4423587 (= res!1828528 e!2754310)))

(declare-fun res!1828530 () Bool)

(assert (=> b!4423587 (=> res!1828530 e!2754310)))

(assert (=> b!4423587 (= res!1828530 e!2754309)))

(declare-fun res!1828531 () Bool)

(assert (=> b!4423587 (=> (not res!1828531) (not e!2754309))))

(declare-fun lt!1623023 () Bool)

(assert (=> b!4423587 (= res!1828531 lt!1623023)))

(declare-fun contains!12057 (ListLongMap!2121 (_ BitVec 64)) Bool)

(assert (=> b!4423587 (= lt!1623023 (contains!12057 lm!1616 hash!366))))

(declare-fun b!4423588 () Bool)

(declare-fun e!2754313 () Bool)

(assert (=> b!4423588 (= e!2754313 e!2754311)))

(declare-fun res!1828541 () Bool)

(assert (=> b!4423588 (=> res!1828541 e!2754311)))

(declare-fun lt!1623024 () tuple2!49348)

(declare-fun head!9205 (ListLongMap!2121) tuple2!49348)

(assert (=> b!4423588 (= res!1828541 (= (head!9205 lm!1616) lt!1623024))))

(declare-fun lt!1623020 () ListMap!2715)

(declare-fun +!1068 (ListMap!2715 tuple2!49346) ListMap!2715)

(assert (=> b!4423588 (eq!400 lt!1623020 (+!1068 lt!1623016 (tuple2!49347 key!3717 newValue!93)))))

(declare-fun lt!1623017 () ListLongMap!2121)

(declare-fun extractMap!803 (List!49689) ListMap!2715)

(assert (=> b!4423588 (= lt!1623016 (extractMap!803 (toList!3471 lt!1623017)))))

(declare-fun +!1069 (ListLongMap!2121 tuple2!49348) ListLongMap!2121)

(assert (=> b!4423588 (= lt!1623020 (extractMap!803 (toList!3471 (+!1069 lt!1623017 lt!1623024))))))

(declare-fun lt!1623018 () Unit!81655)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!116 (ListLongMap!2121 (_ BitVec 64) List!49688 K!10928 V!11174 Hashable!5136) Unit!81655)

(assert (=> b!4423588 (= lt!1623018 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!116 lt!1623017 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7256 (ListLongMap!2121) ListLongMap!2121)

(assert (=> b!4423588 (= lt!1623017 (tail!7256 lm!1616))))

(declare-fun lt!1623025 () Unit!81655)

(assert (=> b!4423588 (= lt!1623025 e!2754317)))

(declare-fun c!752998 () Bool)

(declare-fun contains!12058 (ListMap!2715 K!10928) Bool)

(declare-fun tail!7257 (List!49689) List!49689)

(assert (=> b!4423588 (= c!752998 (contains!12058 (extractMap!803 (tail!7257 (toList!3471 lm!1616))) key!3717))))

(declare-fun b!4423589 () Bool)

(declare-fun e!2754312 () Bool)

(declare-fun tp!1333108 () Bool)

(assert (=> b!4423589 (= e!2754312 tp!1333108)))

(declare-fun b!4423590 () Bool)

(assert (=> b!4423590 (= e!2754310 (and (not lt!1623023) (= newBucket!194 (Cons!49564 (tuple2!49347 key!3717 newValue!93) Nil!49564))))))

(declare-fun b!4423591 () Bool)

(assert (=> b!4423591 (= e!2754319 (not e!2754313))))

(declare-fun res!1828542 () Bool)

(assert (=> b!4423591 (=> res!1828542 e!2754313)))

(declare-fun lt!1623027 () ListLongMap!2121)

(assert (=> b!4423591 (= res!1828542 (not (forall!9549 (toList!3471 lt!1623027) lambda!153495)))))

(assert (=> b!4423591 (forall!9549 (toList!3471 lt!1623027) lambda!153495)))

(assert (=> b!4423591 (= lt!1623027 (+!1069 lm!1616 lt!1623024))))

(assert (=> b!4423591 (= lt!1623024 (tuple2!49349 hash!366 newBucket!194))))

(declare-fun lt!1623022 () Unit!81655)

(declare-fun addValidProp!386 (ListLongMap!2121 Int (_ BitVec 64) List!49688) Unit!81655)

(assert (=> b!4423591 (= lt!1623022 (addValidProp!386 lm!1616 lambda!153495 hash!366 newBucket!194))))

(declare-fun b!4423593 () Bool)

(declare-fun res!1828540 () Bool)

(assert (=> b!4423593 (=> res!1828540 e!2754313)))

(assert (=> b!4423593 (= res!1828540 (or (and (is-Cons!49565 (toList!3471 lm!1616)) (= (_1!27968 (h!55246 (toList!3471 lm!1616))) hash!366)) (not (is-Cons!49565 (toList!3471 lm!1616))) (= (_1!27968 (h!55246 (toList!3471 lm!1616))) hash!366)))))

(declare-fun b!4423594 () Bool)

(declare-fun res!1828533 () Bool)

(assert (=> b!4423594 (=> (not res!1828533) (not e!2754316))))

(declare-fun allKeysSameHash!702 (List!49688 (_ BitVec 64) Hashable!5136) Bool)

(assert (=> b!4423594 (= res!1828533 (allKeysSameHash!702 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4423595 () Bool)

(declare-fun e!2754315 () Bool)

(assert (=> b!4423595 (= e!2754311 e!2754315)))

(declare-fun res!1828539 () Bool)

(assert (=> b!4423595 (=> res!1828539 e!2754315)))

(declare-fun containsKey!1098 (List!49688 K!10928) Bool)

(assert (=> b!4423595 (= res!1828539 (containsKey!1098 (_2!27968 (h!55246 (toList!3471 lm!1616))) key!3717))))

(assert (=> b!4423595 (not (containsKey!1098 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616)))) key!3717))))

(declare-fun lt!1623021 () Unit!81655)

(declare-fun lemmaNotSameHashThenCannotContainKey!121 (ListLongMap!2121 K!10928 (_ BitVec 64) Hashable!5136) Unit!81655)

(assert (=> b!4423595 (= lt!1623021 (lemmaNotSameHashThenCannotContainKey!121 lm!1616 key!3717 (_1!27968 (h!55246 (toList!3471 lm!1616))) hashF!1220))))

(declare-fun b!4423596 () Bool)

(declare-fun Unit!81658 () Unit!81655)

(assert (=> b!4423596 (= e!2754317 Unit!81658)))

(declare-fun b!4423597 () Bool)

(assert (=> b!4423597 (= e!2754316 e!2754314)))

(declare-fun res!1828529 () Bool)

(assert (=> b!4423597 (=> (not res!1828529) (not e!2754314))))

(assert (=> b!4423597 (= res!1828529 (not (contains!12058 lt!1623019 key!3717)))))

(assert (=> b!4423597 (= lt!1623019 (extractMap!803 (toList!3471 lm!1616)))))

(declare-fun tp!1333107 () Bool)

(declare-fun e!2754318 () Bool)

(declare-fun tp_is_empty!26213 () Bool)

(declare-fun b!4423598 () Bool)

(declare-fun tp_is_empty!26215 () Bool)

(assert (=> b!4423598 (= e!2754318 (and tp_is_empty!26215 tp_is_empty!26213 tp!1333107))))

(declare-fun res!1828536 () Bool)

(assert (=> start!431394 (=> (not res!1828536) (not e!2754316))))

(assert (=> start!431394 (= res!1828536 (forall!9549 (toList!3471 lm!1616) lambda!153495))))

(assert (=> start!431394 e!2754316))

(assert (=> start!431394 tp_is_empty!26213))

(assert (=> start!431394 tp_is_empty!26215))

(assert (=> start!431394 e!2754318))

(declare-fun inv!65115 (ListLongMap!2121) Bool)

(assert (=> start!431394 (and (inv!65115 lm!1616) e!2754312)))

(assert (=> start!431394 true))

(declare-fun b!4423592 () Bool)

(assert (=> b!4423592 (= e!2754315 (forall!9549 (toList!3471 lt!1623017) lambda!153495))))

(assert (= (and start!431394 res!1828536) b!4423582))

(assert (= (and b!4423582 res!1828537) b!4423580))

(assert (= (and b!4423580 res!1828538) b!4423594))

(assert (= (and b!4423594 res!1828533) b!4423597))

(assert (= (and b!4423597 res!1828529) b!4423587))

(assert (= (and b!4423587 res!1828531) b!4423584))

(assert (= (and b!4423587 (not res!1828530)) b!4423590))

(assert (= (and b!4423587 res!1828528) b!4423583))

(assert (= (and b!4423583 res!1828534) b!4423581))

(assert (= (and b!4423581 res!1828535) b!4423591))

(assert (= (and b!4423591 (not res!1828542)) b!4423593))

(assert (= (and b!4423593 (not res!1828540)) b!4423588))

(assert (= (and b!4423588 c!752998) b!4423586))

(assert (= (and b!4423588 (not c!752998)) b!4423596))

(assert (= (and b!4423588 (not res!1828541)) b!4423585))

(assert (= (and b!4423585 (not res!1828532)) b!4423595))

(assert (= (and b!4423595 (not res!1828539)) b!4423592))

(assert (= (and start!431394 (is-Cons!49564 newBucket!194)) b!4423598))

(assert (= start!431394 b!4423589))

(declare-fun m!5102563 () Bool)

(assert (=> b!4423585 m!5102563))

(assert (=> b!4423585 m!5102563))

(declare-fun m!5102565 () Bool)

(assert (=> b!4423585 m!5102565))

(declare-fun m!5102567 () Bool)

(assert (=> b!4423587 m!5102567))

(declare-fun m!5102569 () Bool)

(assert (=> b!4423594 m!5102569))

(declare-fun m!5102571 () Bool)

(assert (=> b!4423588 m!5102571))

(declare-fun m!5102573 () Bool)

(assert (=> b!4423588 m!5102573))

(declare-fun m!5102575 () Bool)

(assert (=> b!4423588 m!5102575))

(declare-fun m!5102577 () Bool)

(assert (=> b!4423588 m!5102577))

(declare-fun m!5102579 () Bool)

(assert (=> b!4423588 m!5102579))

(declare-fun m!5102581 () Bool)

(assert (=> b!4423588 m!5102581))

(declare-fun m!5102583 () Bool)

(assert (=> b!4423588 m!5102583))

(assert (=> b!4423588 m!5102571))

(declare-fun m!5102585 () Bool)

(assert (=> b!4423588 m!5102585))

(assert (=> b!4423588 m!5102579))

(assert (=> b!4423588 m!5102573))

(declare-fun m!5102587 () Bool)

(assert (=> b!4423588 m!5102587))

(declare-fun m!5102589 () Bool)

(assert (=> b!4423588 m!5102589))

(declare-fun m!5102591 () Bool)

(assert (=> b!4423588 m!5102591))

(declare-fun m!5102593 () Bool)

(assert (=> b!4423584 m!5102593))

(declare-fun m!5102595 () Bool)

(assert (=> b!4423595 m!5102595))

(declare-fun m!5102597 () Bool)

(assert (=> b!4423595 m!5102597))

(assert (=> b!4423595 m!5102597))

(declare-fun m!5102599 () Bool)

(assert (=> b!4423595 m!5102599))

(declare-fun m!5102601 () Bool)

(assert (=> b!4423595 m!5102601))

(declare-fun m!5102603 () Bool)

(assert (=> b!4423583 m!5102603))

(declare-fun m!5102605 () Bool)

(assert (=> b!4423592 m!5102605))

(declare-fun m!5102607 () Bool)

(assert (=> b!4423597 m!5102607))

(declare-fun m!5102609 () Bool)

(assert (=> b!4423597 m!5102609))

(declare-fun m!5102611 () Bool)

(assert (=> b!4423586 m!5102611))

(declare-fun m!5102613 () Bool)

(assert (=> start!431394 m!5102613))

(declare-fun m!5102615 () Bool)

(assert (=> start!431394 m!5102615))

(declare-fun m!5102617 () Bool)

(assert (=> b!4423591 m!5102617))

(assert (=> b!4423591 m!5102617))

(declare-fun m!5102619 () Bool)

(assert (=> b!4423591 m!5102619))

(declare-fun m!5102621 () Bool)

(assert (=> b!4423591 m!5102621))

(assert (=> b!4423581 m!5102613))

(declare-fun m!5102623 () Bool)

(assert (=> b!4423580 m!5102623))

(declare-fun m!5102625 () Bool)

(assert (=> b!4423582 m!5102625))

(push 1)

(assert (not b!4423594))

(assert (not b!4423581))

(assert (not b!4423585))

(assert (not b!4423592))

(assert (not b!4423580))

(assert (not b!4423595))

(assert (not b!4423598))

(assert (not start!431394))

(assert tp_is_empty!26215)

(assert (not b!4423587))

(assert (not b!4423591))

(assert (not b!4423583))

(assert (not b!4423586))

(assert (not b!4423584))

(assert (not b!4423582))

(assert (not b!4423597))

(assert (not b!4423589))

(assert tp_is_empty!26213)

(assert (not b!4423588))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!756012 () Bool)

(declare-fun d!1340664 () Bool)

(assert (= bs!756012 (and d!1340664 start!431394)))

(declare-fun lambda!153509 () Int)

(assert (=> bs!756012 (not (= lambda!153509 lambda!153495))))

(assert (=> d!1340664 true))

(assert (=> d!1340664 (= (allKeysSameHashInMap!848 lm!1616 hashF!1220) (forall!9549 (toList!3471 lm!1616) lambda!153509))))

(declare-fun bs!756013 () Bool)

(assert (= bs!756013 d!1340664))

(declare-fun m!5102691 () Bool)

(assert (=> bs!756013 m!5102691))

(assert (=> b!4423582 d!1340664))

(declare-fun d!1340666 () Bool)

(declare-fun res!1828592 () Bool)

(declare-fun e!2754357 () Bool)

(assert (=> d!1340666 (=> res!1828592 e!2754357)))

(assert (=> d!1340666 (= res!1828592 (is-Nil!49565 (toList!3471 lm!1616)))))

(assert (=> d!1340666 (= (forall!9549 (toList!3471 lm!1616) lambda!153495) e!2754357)))

(declare-fun b!4423662 () Bool)

(declare-fun e!2754358 () Bool)

(assert (=> b!4423662 (= e!2754357 e!2754358)))

(declare-fun res!1828593 () Bool)

(assert (=> b!4423662 (=> (not res!1828593) (not e!2754358))))

(declare-fun dynLambda!20839 (Int tuple2!49348) Bool)

(assert (=> b!4423662 (= res!1828593 (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lm!1616))))))

(declare-fun b!4423663 () Bool)

(assert (=> b!4423663 (= e!2754358 (forall!9549 (t!356627 (toList!3471 lm!1616)) lambda!153495))))

(assert (= (and d!1340666 (not res!1828592)) b!4423662))

(assert (= (and b!4423662 res!1828593) b!4423663))

(declare-fun b_lambda!142883 () Bool)

(assert (=> (not b_lambda!142883) (not b!4423662)))

(declare-fun m!5102693 () Bool)

(assert (=> b!4423662 m!5102693))

(declare-fun m!5102695 () Bool)

(assert (=> b!4423663 m!5102695))

(assert (=> start!431394 d!1340666))

(declare-fun d!1340668 () Bool)

(declare-fun isStrictlySorted!227 (List!49689) Bool)

(assert (=> d!1340668 (= (inv!65115 lm!1616) (isStrictlySorted!227 (toList!3471 lm!1616)))))

(declare-fun bs!756014 () Bool)

(assert (= bs!756014 d!1340668))

(declare-fun m!5102697 () Bool)

(assert (=> bs!756014 m!5102697))

(assert (=> start!431394 d!1340668))

(declare-fun d!1340670 () Bool)

(declare-datatypes ((Option!10715 0))(
  ( (None!10714) (Some!10714 (v!43896 List!49688)) )
))
(declare-fun get!16151 (Option!10715) List!49688)

(declare-fun getValueByKey!701 (List!49689 (_ BitVec 64)) Option!10715)

(assert (=> d!1340670 (= (apply!11594 lm!1616 hash!366) (get!16151 (getValueByKey!701 (toList!3471 lm!1616) hash!366)))))

(declare-fun bs!756015 () Bool)

(assert (= bs!756015 d!1340670))

(declare-fun m!5102699 () Bool)

(assert (=> bs!756015 m!5102699))

(assert (=> bs!756015 m!5102699))

(declare-fun m!5102701 () Bool)

(assert (=> bs!756015 m!5102701))

(assert (=> b!4423584 d!1340670))

(declare-fun d!1340672 () Bool)

(assert (=> d!1340672 true))

(assert (=> d!1340672 true))

(declare-fun lambda!153512 () Int)

(declare-fun forall!9551 (List!49688 Int) Bool)

(assert (=> d!1340672 (= (allKeysSameHash!702 newBucket!194 hash!366 hashF!1220) (forall!9551 newBucket!194 lambda!153512))))

(declare-fun bs!756016 () Bool)

(assert (= bs!756016 d!1340672))

(declare-fun m!5102703 () Bool)

(assert (=> bs!756016 m!5102703))

(assert (=> b!4423594 d!1340672))

(declare-fun d!1340676 () Bool)

(declare-fun res!1828598 () Bool)

(declare-fun e!2754363 () Bool)

(assert (=> d!1340676 (=> res!1828598 e!2754363)))

(assert (=> d!1340676 (= res!1828598 (not (is-Cons!49564 newBucket!194)))))

(assert (=> d!1340676 (= (noDuplicateKeys!742 newBucket!194) e!2754363)))

(declare-fun b!4423672 () Bool)

(declare-fun e!2754364 () Bool)

(assert (=> b!4423672 (= e!2754363 e!2754364)))

(declare-fun res!1828599 () Bool)

(assert (=> b!4423672 (=> (not res!1828599) (not e!2754364))))

(assert (=> b!4423672 (= res!1828599 (not (containsKey!1098 (t!356626 newBucket!194) (_1!27967 (h!55245 newBucket!194)))))))

(declare-fun b!4423673 () Bool)

(assert (=> b!4423673 (= e!2754364 (noDuplicateKeys!742 (t!356626 newBucket!194)))))

(assert (= (and d!1340676 (not res!1828598)) b!4423672))

(assert (= (and b!4423672 res!1828599) b!4423673))

(declare-fun m!5102705 () Bool)

(assert (=> b!4423672 m!5102705))

(declare-fun m!5102707 () Bool)

(assert (=> b!4423673 m!5102707))

(assert (=> b!4423583 d!1340676))

(declare-fun d!1340678 () Bool)

(declare-fun content!7949 (List!49688) (Set tuple2!49346))

(assert (=> d!1340678 (= (eq!400 lt!1623019 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lm!1616))) lt!1623016)) (= (content!7949 (toList!3472 lt!1623019)) (content!7949 (toList!3472 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lm!1616))) lt!1623016)))))))

(declare-fun bs!756017 () Bool)

(assert (= bs!756017 d!1340678))

(declare-fun m!5102709 () Bool)

(assert (=> bs!756017 m!5102709))

(declare-fun m!5102711 () Bool)

(assert (=> bs!756017 m!5102711))

(assert (=> b!4423585 d!1340678))

(declare-fun bs!756029 () Bool)

(declare-fun b!4423724 () Bool)

(assert (= bs!756029 (and b!4423724 d!1340672)))

(declare-fun lambda!153550 () Int)

(assert (=> bs!756029 (not (= lambda!153550 lambda!153512))))

(assert (=> b!4423724 true))

(declare-fun bs!756030 () Bool)

(declare-fun b!4423727 () Bool)

(assert (= bs!756030 (and b!4423727 d!1340672)))

(declare-fun lambda!153551 () Int)

(assert (=> bs!756030 (not (= lambda!153551 lambda!153512))))

(declare-fun bs!756031 () Bool)

(assert (= bs!756031 (and b!4423727 b!4423724)))

(assert (=> bs!756031 (= lambda!153551 lambda!153550)))

(assert (=> b!4423727 true))

(declare-fun lambda!153552 () Int)

(assert (=> bs!756030 (not (= lambda!153552 lambda!153512))))

(declare-fun lt!1623137 () ListMap!2715)

(assert (=> bs!756031 (= (= lt!1623137 lt!1623016) (= lambda!153552 lambda!153550))))

(assert (=> b!4423727 (= (= lt!1623137 lt!1623016) (= lambda!153552 lambda!153551))))

(assert (=> b!4423727 true))

(declare-fun bs!756032 () Bool)

(declare-fun d!1340680 () Bool)

(assert (= bs!756032 (and d!1340680 d!1340672)))

(declare-fun lambda!153553 () Int)

(assert (=> bs!756032 (not (= lambda!153553 lambda!153512))))

(declare-fun bs!756033 () Bool)

(assert (= bs!756033 (and d!1340680 b!4423724)))

(declare-fun lt!1623135 () ListMap!2715)

(assert (=> bs!756033 (= (= lt!1623135 lt!1623016) (= lambda!153553 lambda!153550))))

(declare-fun bs!756034 () Bool)

(assert (= bs!756034 (and d!1340680 b!4423727)))

(assert (=> bs!756034 (= (= lt!1623135 lt!1623016) (= lambda!153553 lambda!153551))))

(assert (=> bs!756034 (= (= lt!1623135 lt!1623137) (= lambda!153553 lambda!153552))))

(assert (=> d!1340680 true))

(declare-fun e!2754402 () ListMap!2715)

(assert (=> b!4423724 (= e!2754402 lt!1623016)))

(declare-fun lt!1623131 () Unit!81655)

(declare-fun call!307767 () Unit!81655)

(assert (=> b!4423724 (= lt!1623131 call!307767)))

(declare-fun call!307769 () Bool)

(assert (=> b!4423724 call!307769))

(declare-fun lt!1623128 () Unit!81655)

(assert (=> b!4423724 (= lt!1623128 lt!1623131)))

(declare-fun call!307768 () Bool)

(assert (=> b!4423724 call!307768))

(declare-fun lt!1623133 () Unit!81655)

(declare-fun Unit!81663 () Unit!81655)

(assert (=> b!4423724 (= lt!1623133 Unit!81663)))

(declare-fun c!753004 () Bool)

(declare-fun bm!307763 () Bool)

(assert (=> bm!307763 (= call!307768 (forall!9551 (toList!3472 lt!1623016) (ite c!753004 lambda!153550 lambda!153552)))))

(declare-fun b!4423725 () Bool)

(declare-fun e!2754403 () Bool)

(assert (=> b!4423725 (= e!2754403 call!307768)))

(declare-fun b!4423726 () Bool)

(declare-fun res!1828639 () Bool)

(declare-fun e!2754401 () Bool)

(assert (=> b!4423726 (=> (not res!1828639) (not e!2754401))))

(assert (=> b!4423726 (= res!1828639 (forall!9551 (toList!3472 lt!1623016) lambda!153553))))

(declare-fun bm!307764 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!168 (ListMap!2715) Unit!81655)

(assert (=> bm!307764 (= call!307767 (lemmaContainsAllItsOwnKeys!168 lt!1623016))))

(declare-fun bm!307762 () Bool)

(declare-fun lt!1623125 () ListMap!2715)

(assert (=> bm!307762 (= call!307769 (forall!9551 (ite c!753004 (toList!3472 lt!1623016) (toList!3472 lt!1623125)) (ite c!753004 lambda!153550 lambda!153552)))))

(assert (=> d!1340680 e!2754401))

(declare-fun res!1828641 () Bool)

(assert (=> d!1340680 (=> (not res!1828641) (not e!2754401))))

(assert (=> d!1340680 (= res!1828641 (forall!9551 (_2!27968 (h!55246 (toList!3471 lm!1616))) lambda!153553))))

(assert (=> d!1340680 (= lt!1623135 e!2754402)))

(assert (=> d!1340680 (= c!753004 (is-Nil!49564 (_2!27968 (h!55246 (toList!3471 lm!1616)))))))

(assert (=> d!1340680 (noDuplicateKeys!742 (_2!27968 (h!55246 (toList!3471 lm!1616))))))

(assert (=> d!1340680 (= (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lm!1616))) lt!1623016) lt!1623135)))

(assert (=> b!4423727 (= e!2754402 lt!1623137)))

(assert (=> b!4423727 (= lt!1623125 (+!1068 lt!1623016 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))))))

(assert (=> b!4423727 (= lt!1623137 (addToMapMapFromBucket!379 (t!356626 (_2!27968 (h!55246 (toList!3471 lm!1616)))) (+!1068 lt!1623016 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616)))))))))

(declare-fun lt!1623138 () Unit!81655)

(assert (=> b!4423727 (= lt!1623138 call!307767)))

(assert (=> b!4423727 (forall!9551 (toList!3472 lt!1623016) lambda!153551)))

(declare-fun lt!1623124 () Unit!81655)

(assert (=> b!4423727 (= lt!1623124 lt!1623138)))

(assert (=> b!4423727 (forall!9551 (toList!3472 lt!1623125) lambda!153552)))

(declare-fun lt!1623126 () Unit!81655)

(declare-fun Unit!81664 () Unit!81655)

(assert (=> b!4423727 (= lt!1623126 Unit!81664)))

(assert (=> b!4423727 (forall!9551 (t!356626 (_2!27968 (h!55246 (toList!3471 lm!1616)))) lambda!153552)))

(declare-fun lt!1623142 () Unit!81655)

(declare-fun Unit!81665 () Unit!81655)

(assert (=> b!4423727 (= lt!1623142 Unit!81665)))

(declare-fun lt!1623140 () Unit!81655)

(declare-fun Unit!81666 () Unit!81655)

(assert (=> b!4423727 (= lt!1623140 Unit!81666)))

(declare-fun lt!1623132 () Unit!81655)

(declare-fun forallContained!2086 (List!49688 Int tuple2!49346) Unit!81655)

(assert (=> b!4423727 (= lt!1623132 (forallContained!2086 (toList!3472 lt!1623125) lambda!153552 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))))))

(assert (=> b!4423727 (contains!12058 lt!1623125 (_1!27967 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))))))

(declare-fun lt!1623134 () Unit!81655)

(declare-fun Unit!81667 () Unit!81655)

(assert (=> b!4423727 (= lt!1623134 Unit!81667)))

(assert (=> b!4423727 (contains!12058 lt!1623137 (_1!27967 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))))))

(declare-fun lt!1623139 () Unit!81655)

(declare-fun Unit!81668 () Unit!81655)

(assert (=> b!4423727 (= lt!1623139 Unit!81668)))

(assert (=> b!4423727 (forall!9551 (_2!27968 (h!55246 (toList!3471 lm!1616))) lambda!153552)))

(declare-fun lt!1623129 () Unit!81655)

(declare-fun Unit!81669 () Unit!81655)

(assert (=> b!4423727 (= lt!1623129 Unit!81669)))

(assert (=> b!4423727 call!307769))

(declare-fun lt!1623143 () Unit!81655)

(declare-fun Unit!81670 () Unit!81655)

(assert (=> b!4423727 (= lt!1623143 Unit!81670)))

(declare-fun lt!1623144 () Unit!81655)

(declare-fun Unit!81671 () Unit!81655)

(assert (=> b!4423727 (= lt!1623144 Unit!81671)))

(declare-fun lt!1623130 () Unit!81655)

(declare-fun addForallContainsKeyThenBeforeAdding!168 (ListMap!2715 ListMap!2715 K!10928 V!11174) Unit!81655)

(assert (=> b!4423727 (= lt!1623130 (addForallContainsKeyThenBeforeAdding!168 lt!1623016 lt!1623137 (_1!27967 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))) (_2!27967 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616)))))))))

(assert (=> b!4423727 (forall!9551 (toList!3472 lt!1623016) lambda!153552)))

(declare-fun lt!1623141 () Unit!81655)

(assert (=> b!4423727 (= lt!1623141 lt!1623130)))

(assert (=> b!4423727 (forall!9551 (toList!3472 lt!1623016) lambda!153552)))

(declare-fun lt!1623136 () Unit!81655)

(declare-fun Unit!81672 () Unit!81655)

(assert (=> b!4423727 (= lt!1623136 Unit!81672)))

(declare-fun res!1828640 () Bool)

(assert (=> b!4423727 (= res!1828640 (forall!9551 (_2!27968 (h!55246 (toList!3471 lm!1616))) lambda!153552))))

(assert (=> b!4423727 (=> (not res!1828640) (not e!2754403))))

(assert (=> b!4423727 e!2754403))

(declare-fun lt!1623127 () Unit!81655)

(declare-fun Unit!81673 () Unit!81655)

(assert (=> b!4423727 (= lt!1623127 Unit!81673)))

(declare-fun b!4423728 () Bool)

(declare-fun invariantList!800 (List!49688) Bool)

(assert (=> b!4423728 (= e!2754401 (invariantList!800 (toList!3472 lt!1623135)))))

(assert (= (and d!1340680 c!753004) b!4423724))

(assert (= (and d!1340680 (not c!753004)) b!4423727))

(assert (= (and b!4423727 res!1828640) b!4423725))

(assert (= (or b!4423724 b!4423727) bm!307764))

(assert (= (or b!4423724 b!4423727) bm!307762))

(assert (= (or b!4423724 b!4423725) bm!307763))

(assert (= (and d!1340680 res!1828641) b!4423726))

(assert (= (and b!4423726 res!1828639) b!4423728))

(declare-fun m!5102777 () Bool)

(assert (=> b!4423726 m!5102777))

(declare-fun m!5102779 () Bool)

(assert (=> d!1340680 m!5102779))

(declare-fun m!5102781 () Bool)

(assert (=> d!1340680 m!5102781))

(declare-fun m!5102783 () Bool)

(assert (=> bm!307764 m!5102783))

(declare-fun m!5102785 () Bool)

(assert (=> bm!307762 m!5102785))

(declare-fun m!5102787 () Bool)

(assert (=> bm!307763 m!5102787))

(declare-fun m!5102789 () Bool)

(assert (=> b!4423727 m!5102789))

(declare-fun m!5102791 () Bool)

(assert (=> b!4423727 m!5102791))

(declare-fun m!5102793 () Bool)

(assert (=> b!4423727 m!5102793))

(declare-fun m!5102795 () Bool)

(assert (=> b!4423727 m!5102795))

(declare-fun m!5102797 () Bool)

(assert (=> b!4423727 m!5102797))

(declare-fun m!5102799 () Bool)

(assert (=> b!4423727 m!5102799))

(declare-fun m!5102801 () Bool)

(assert (=> b!4423727 m!5102801))

(declare-fun m!5102803 () Bool)

(assert (=> b!4423727 m!5102803))

(assert (=> b!4423727 m!5102799))

(assert (=> b!4423727 m!5102791))

(declare-fun m!5102805 () Bool)

(assert (=> b!4423727 m!5102805))

(assert (=> b!4423727 m!5102803))

(declare-fun m!5102807 () Bool)

(assert (=> b!4423727 m!5102807))

(declare-fun m!5102809 () Bool)

(assert (=> b!4423727 m!5102809))

(declare-fun m!5102811 () Bool)

(assert (=> b!4423728 m!5102811))

(assert (=> b!4423585 d!1340680))

(declare-fun d!1340714 () Bool)

(declare-fun res!1828646 () Bool)

(declare-fun e!2754408 () Bool)

(assert (=> d!1340714 (=> res!1828646 e!2754408)))

(assert (=> d!1340714 (= res!1828646 (and (is-Cons!49564 (_2!27968 (h!55246 (toList!3471 lm!1616)))) (= (_1!27967 (h!55245 (_2!27968 (h!55246 (toList!3471 lm!1616))))) key!3717)))))

(assert (=> d!1340714 (= (containsKey!1098 (_2!27968 (h!55246 (toList!3471 lm!1616))) key!3717) e!2754408)))

(declare-fun b!4423735 () Bool)

(declare-fun e!2754409 () Bool)

(assert (=> b!4423735 (= e!2754408 e!2754409)))

(declare-fun res!1828647 () Bool)

(assert (=> b!4423735 (=> (not res!1828647) (not e!2754409))))

(assert (=> b!4423735 (= res!1828647 (is-Cons!49564 (_2!27968 (h!55246 (toList!3471 lm!1616)))))))

(declare-fun b!4423736 () Bool)

(assert (=> b!4423736 (= e!2754409 (containsKey!1098 (t!356626 (_2!27968 (h!55246 (toList!3471 lm!1616)))) key!3717))))

(assert (= (and d!1340714 (not res!1828646)) b!4423735))

(assert (= (and b!4423735 res!1828647) b!4423736))

(declare-fun m!5102813 () Bool)

(assert (=> b!4423736 m!5102813))

(assert (=> b!4423595 d!1340714))

(declare-fun d!1340716 () Bool)

(declare-fun res!1828648 () Bool)

(declare-fun e!2754410 () Bool)

(assert (=> d!1340716 (=> res!1828648 e!2754410)))

(assert (=> d!1340716 (= res!1828648 (and (is-Cons!49564 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616))))) (= (_1!27967 (h!55245 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616)))))) key!3717)))))

(assert (=> d!1340716 (= (containsKey!1098 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616)))) key!3717) e!2754410)))

(declare-fun b!4423737 () Bool)

(declare-fun e!2754411 () Bool)

(assert (=> b!4423737 (= e!2754410 e!2754411)))

(declare-fun res!1828649 () Bool)

(assert (=> b!4423737 (=> (not res!1828649) (not e!2754411))))

(assert (=> b!4423737 (= res!1828649 (is-Cons!49564 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616))))))))

(declare-fun b!4423738 () Bool)

(assert (=> b!4423738 (= e!2754411 (containsKey!1098 (t!356626 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616))))) key!3717))))

(assert (= (and d!1340716 (not res!1828648)) b!4423737))

(assert (= (and b!4423737 res!1828649) b!4423738))

(declare-fun m!5102815 () Bool)

(assert (=> b!4423738 m!5102815))

(assert (=> b!4423595 d!1340716))

(declare-fun d!1340718 () Bool)

(assert (=> d!1340718 (= (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616)))) (get!16151 (getValueByKey!701 (toList!3471 lm!1616) (_1!27968 (h!55246 (toList!3471 lm!1616))))))))

(declare-fun bs!756035 () Bool)

(assert (= bs!756035 d!1340718))

(declare-fun m!5102817 () Bool)

(assert (=> bs!756035 m!5102817))

(assert (=> bs!756035 m!5102817))

(declare-fun m!5102819 () Bool)

(assert (=> bs!756035 m!5102819))

(assert (=> b!4423595 d!1340718))

(declare-fun bs!756036 () Bool)

(declare-fun d!1340720 () Bool)

(assert (= bs!756036 (and d!1340720 start!431394)))

(declare-fun lambda!153556 () Int)

(assert (=> bs!756036 (= lambda!153556 lambda!153495)))

(declare-fun bs!756037 () Bool)

(assert (= bs!756037 (and d!1340720 d!1340664)))

(assert (=> bs!756037 (not (= lambda!153556 lambda!153509))))

(assert (=> d!1340720 (not (containsKey!1098 (apply!11594 lm!1616 (_1!27968 (h!55246 (toList!3471 lm!1616)))) key!3717))))

(declare-fun lt!1623147 () Unit!81655)

(declare-fun choose!27904 (ListLongMap!2121 K!10928 (_ BitVec 64) Hashable!5136) Unit!81655)

(assert (=> d!1340720 (= lt!1623147 (choose!27904 lm!1616 key!3717 (_1!27968 (h!55246 (toList!3471 lm!1616))) hashF!1220))))

(assert (=> d!1340720 (forall!9549 (toList!3471 lm!1616) lambda!153556)))

(assert (=> d!1340720 (= (lemmaNotSameHashThenCannotContainKey!121 lm!1616 key!3717 (_1!27968 (h!55246 (toList!3471 lm!1616))) hashF!1220) lt!1623147)))

(declare-fun bs!756038 () Bool)

(assert (= bs!756038 d!1340720))

(assert (=> bs!756038 m!5102597))

(assert (=> bs!756038 m!5102597))

(assert (=> bs!756038 m!5102599))

(declare-fun m!5102821 () Bool)

(assert (=> bs!756038 m!5102821))

(declare-fun m!5102823 () Bool)

(assert (=> bs!756038 m!5102823))

(assert (=> b!4423595 d!1340720))

(declare-fun b!4423757 () Bool)

(declare-fun e!2754424 () Bool)

(declare-datatypes ((List!49692 0))(
  ( (Nil!49568) (Cons!49568 (h!55251 K!10928) (t!356630 List!49692)) )
))
(declare-fun contains!12061 (List!49692 K!10928) Bool)

(declare-fun keys!16918 (ListMap!2715) List!49692)

(assert (=> b!4423757 (= e!2754424 (not (contains!12061 (keys!16918 lt!1623019) key!3717)))))

(declare-fun b!4423758 () Bool)

(declare-fun e!2754427 () List!49692)

(assert (=> b!4423758 (= e!2754427 (keys!16918 lt!1623019))))

(declare-fun bm!307767 () Bool)

(declare-fun call!307772 () Bool)

(assert (=> bm!307767 (= call!307772 (contains!12061 e!2754427 key!3717))))

(declare-fun c!753012 () Bool)

(declare-fun c!753013 () Bool)

(assert (=> bm!307767 (= c!753012 c!753013)))

(declare-fun b!4423760 () Bool)

(declare-fun e!2754426 () Unit!81655)

(declare-fun lt!1623169 () Unit!81655)

(assert (=> b!4423760 (= e!2754426 lt!1623169)))

(declare-fun lt!1623168 () Unit!81655)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!611 (List!49688 K!10928) Unit!81655)

(assert (=> b!4423760 (= lt!1623168 (lemmaContainsKeyImpliesGetValueByKeyDefined!611 (toList!3472 lt!1623019) key!3717))))

(declare-datatypes ((Option!10716 0))(
  ( (None!10715) (Some!10715 (v!43897 V!11174)) )
))
(declare-fun isDefined!8008 (Option!10716) Bool)

(declare-fun getValueByKey!702 (List!49688 K!10928) Option!10716)

(assert (=> b!4423760 (isDefined!8008 (getValueByKey!702 (toList!3472 lt!1623019) key!3717))))

(declare-fun lt!1623170 () Unit!81655)

(assert (=> b!4423760 (= lt!1623170 lt!1623168)))

(declare-fun lemmaInListThenGetKeysListContains!245 (List!49688 K!10928) Unit!81655)

(assert (=> b!4423760 (= lt!1623169 (lemmaInListThenGetKeysListContains!245 (toList!3472 lt!1623019) key!3717))))

(assert (=> b!4423760 call!307772))

(declare-fun b!4423761 () Bool)

(declare-fun getKeysList!248 (List!49688) List!49692)

(assert (=> b!4423761 (= e!2754427 (getKeysList!248 (toList!3472 lt!1623019)))))

(declare-fun b!4423762 () Bool)

(assert (=> b!4423762 false))

(declare-fun lt!1623171 () Unit!81655)

(declare-fun lt!1623164 () Unit!81655)

(assert (=> b!4423762 (= lt!1623171 lt!1623164)))

(declare-fun containsKey!1100 (List!49688 K!10928) Bool)

(assert (=> b!4423762 (containsKey!1100 (toList!3472 lt!1623019) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!246 (List!49688 K!10928) Unit!81655)

(assert (=> b!4423762 (= lt!1623164 (lemmaInGetKeysListThenContainsKey!246 (toList!3472 lt!1623019) key!3717))))

(declare-fun e!2754425 () Unit!81655)

(declare-fun Unit!81674 () Unit!81655)

(assert (=> b!4423762 (= e!2754425 Unit!81674)))

(declare-fun b!4423763 () Bool)

(assert (=> b!4423763 (= e!2754426 e!2754425)))

(declare-fun c!753011 () Bool)

(assert (=> b!4423763 (= c!753011 call!307772)))

(declare-fun b!4423764 () Bool)

(declare-fun e!2754428 () Bool)

(declare-fun e!2754429 () Bool)

(assert (=> b!4423764 (= e!2754428 e!2754429)))

(declare-fun res!1828658 () Bool)

(assert (=> b!4423764 (=> (not res!1828658) (not e!2754429))))

(assert (=> b!4423764 (= res!1828658 (isDefined!8008 (getValueByKey!702 (toList!3472 lt!1623019) key!3717)))))

(declare-fun b!4423765 () Bool)

(declare-fun Unit!81675 () Unit!81655)

(assert (=> b!4423765 (= e!2754425 Unit!81675)))

(declare-fun b!4423759 () Bool)

(assert (=> b!4423759 (= e!2754429 (contains!12061 (keys!16918 lt!1623019) key!3717))))

(declare-fun d!1340722 () Bool)

(assert (=> d!1340722 e!2754428))

(declare-fun res!1828657 () Bool)

(assert (=> d!1340722 (=> res!1828657 e!2754428)))

(assert (=> d!1340722 (= res!1828657 e!2754424)))

(declare-fun res!1828656 () Bool)

(assert (=> d!1340722 (=> (not res!1828656) (not e!2754424))))

(declare-fun lt!1623166 () Bool)

(assert (=> d!1340722 (= res!1828656 (not lt!1623166))))

(declare-fun lt!1623165 () Bool)

(assert (=> d!1340722 (= lt!1623166 lt!1623165)))

(declare-fun lt!1623167 () Unit!81655)

(assert (=> d!1340722 (= lt!1623167 e!2754426)))

(assert (=> d!1340722 (= c!753013 lt!1623165)))

(assert (=> d!1340722 (= lt!1623165 (containsKey!1100 (toList!3472 lt!1623019) key!3717))))

(assert (=> d!1340722 (= (contains!12058 lt!1623019 key!3717) lt!1623166)))

(assert (= (and d!1340722 c!753013) b!4423760))

(assert (= (and d!1340722 (not c!753013)) b!4423763))

(assert (= (and b!4423763 c!753011) b!4423762))

(assert (= (and b!4423763 (not c!753011)) b!4423765))

(assert (= (or b!4423760 b!4423763) bm!307767))

(assert (= (and bm!307767 c!753012) b!4423761))

(assert (= (and bm!307767 (not c!753012)) b!4423758))

(assert (= (and d!1340722 res!1828656) b!4423757))

(assert (= (and d!1340722 (not res!1828657)) b!4423764))

(assert (= (and b!4423764 res!1828658) b!4423759))

(declare-fun m!5102825 () Bool)

(assert (=> b!4423757 m!5102825))

(assert (=> b!4423757 m!5102825))

(declare-fun m!5102827 () Bool)

(assert (=> b!4423757 m!5102827))

(declare-fun m!5102829 () Bool)

(assert (=> b!4423760 m!5102829))

(declare-fun m!5102831 () Bool)

(assert (=> b!4423760 m!5102831))

(assert (=> b!4423760 m!5102831))

(declare-fun m!5102833 () Bool)

(assert (=> b!4423760 m!5102833))

(declare-fun m!5102835 () Bool)

(assert (=> b!4423760 m!5102835))

(declare-fun m!5102837 () Bool)

(assert (=> d!1340722 m!5102837))

(assert (=> b!4423762 m!5102837))

(declare-fun m!5102839 () Bool)

(assert (=> b!4423762 m!5102839))

(declare-fun m!5102841 () Bool)

(assert (=> bm!307767 m!5102841))

(assert (=> b!4423759 m!5102825))

(assert (=> b!4423759 m!5102825))

(assert (=> b!4423759 m!5102827))

(assert (=> b!4423764 m!5102831))

(assert (=> b!4423764 m!5102831))

(assert (=> b!4423764 m!5102833))

(declare-fun m!5102843 () Bool)

(assert (=> b!4423761 m!5102843))

(assert (=> b!4423758 m!5102825))

(assert (=> b!4423597 d!1340722))

(declare-fun bs!756039 () Bool)

(declare-fun d!1340724 () Bool)

(assert (= bs!756039 (and d!1340724 start!431394)))

(declare-fun lambda!153559 () Int)

(assert (=> bs!756039 (= lambda!153559 lambda!153495)))

(declare-fun bs!756040 () Bool)

(assert (= bs!756040 (and d!1340724 d!1340664)))

(assert (=> bs!756040 (not (= lambda!153559 lambda!153509))))

(declare-fun bs!756041 () Bool)

(assert (= bs!756041 (and d!1340724 d!1340720)))

(assert (=> bs!756041 (= lambda!153559 lambda!153556)))

(declare-fun lt!1623174 () ListMap!2715)

(assert (=> d!1340724 (invariantList!800 (toList!3472 lt!1623174))))

(declare-fun e!2754432 () ListMap!2715)

(assert (=> d!1340724 (= lt!1623174 e!2754432)))

(declare-fun c!753016 () Bool)

(assert (=> d!1340724 (= c!753016 (is-Cons!49565 (toList!3471 lm!1616)))))

(assert (=> d!1340724 (forall!9549 (toList!3471 lm!1616) lambda!153559)))

(assert (=> d!1340724 (= (extractMap!803 (toList!3471 lm!1616)) lt!1623174)))

(declare-fun b!4423770 () Bool)

(assert (=> b!4423770 (= e!2754432 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lm!1616))) (extractMap!803 (t!356627 (toList!3471 lm!1616)))))))

(declare-fun b!4423771 () Bool)

(assert (=> b!4423771 (= e!2754432 (ListMap!2716 Nil!49564))))

(assert (= (and d!1340724 c!753016) b!4423770))

(assert (= (and d!1340724 (not c!753016)) b!4423771))

(declare-fun m!5102845 () Bool)

(assert (=> d!1340724 m!5102845))

(declare-fun m!5102847 () Bool)

(assert (=> d!1340724 m!5102847))

(declare-fun m!5102849 () Bool)

(assert (=> b!4423770 m!5102849))

(assert (=> b!4423770 m!5102849))

(declare-fun m!5102851 () Bool)

(assert (=> b!4423770 m!5102851))

(assert (=> b!4423597 d!1340724))

(declare-fun bs!756042 () Bool)

(declare-fun d!1340726 () Bool)

(assert (= bs!756042 (and d!1340726 start!431394)))

(declare-fun lambda!153562 () Int)

(assert (=> bs!756042 (= lambda!153562 lambda!153495)))

(declare-fun bs!756043 () Bool)

(assert (= bs!756043 (and d!1340726 d!1340664)))

(assert (=> bs!756043 (not (= lambda!153562 lambda!153509))))

(declare-fun bs!756044 () Bool)

(assert (= bs!756044 (and d!1340726 d!1340720)))

(assert (=> bs!756044 (= lambda!153562 lambda!153556)))

(declare-fun bs!756045 () Bool)

(assert (= bs!756045 (and d!1340726 d!1340724)))

(assert (=> bs!756045 (= lambda!153562 lambda!153559)))

(assert (=> d!1340726 (contains!12058 (extractMap!803 (toList!3471 lm!1616)) key!3717)))

(declare-fun lt!1623177 () Unit!81655)

(declare-fun choose!27905 (ListLongMap!2121 K!10928 Hashable!5136) Unit!81655)

(assert (=> d!1340726 (= lt!1623177 (choose!27905 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1340726 (forall!9549 (toList!3471 lm!1616) lambda!153562)))

(assert (=> d!1340726 (= (lemmaExtractTailMapContainsThenExtractMapDoes!29 lm!1616 key!3717 hashF!1220) lt!1623177)))

(declare-fun bs!756046 () Bool)

(assert (= bs!756046 d!1340726))

(assert (=> bs!756046 m!5102609))

(assert (=> bs!756046 m!5102609))

(declare-fun m!5102853 () Bool)

(assert (=> bs!756046 m!5102853))

(declare-fun m!5102855 () Bool)

(assert (=> bs!756046 m!5102855))

(declare-fun m!5102857 () Bool)

(assert (=> bs!756046 m!5102857))

(assert (=> b!4423586 d!1340726))

(declare-fun bs!756047 () Bool)

(declare-fun d!1340728 () Bool)

(assert (= bs!756047 (and d!1340728 d!1340726)))

(declare-fun lambda!153563 () Int)

(assert (=> bs!756047 (= lambda!153563 lambda!153562)))

(declare-fun bs!756048 () Bool)

(assert (= bs!756048 (and d!1340728 d!1340664)))

(assert (=> bs!756048 (not (= lambda!153563 lambda!153509))))

(declare-fun bs!756049 () Bool)

(assert (= bs!756049 (and d!1340728 start!431394)))

(assert (=> bs!756049 (= lambda!153563 lambda!153495)))

(declare-fun bs!756050 () Bool)

(assert (= bs!756050 (and d!1340728 d!1340724)))

(assert (=> bs!756050 (= lambda!153563 lambda!153559)))

(declare-fun bs!756051 () Bool)

(assert (= bs!756051 (and d!1340728 d!1340720)))

(assert (=> bs!756051 (= lambda!153563 lambda!153556)))

(declare-fun lt!1623178 () ListMap!2715)

(assert (=> d!1340728 (invariantList!800 (toList!3472 lt!1623178))))

(declare-fun e!2754433 () ListMap!2715)

(assert (=> d!1340728 (= lt!1623178 e!2754433)))

(declare-fun c!753017 () Bool)

(assert (=> d!1340728 (= c!753017 (is-Cons!49565 (toList!3471 lt!1623017)))))

(assert (=> d!1340728 (forall!9549 (toList!3471 lt!1623017) lambda!153563)))

(assert (=> d!1340728 (= (extractMap!803 (toList!3471 lt!1623017)) lt!1623178)))

(declare-fun b!4423772 () Bool)

(assert (=> b!4423772 (= e!2754433 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 lt!1623017))) (extractMap!803 (t!356627 (toList!3471 lt!1623017)))))))

(declare-fun b!4423773 () Bool)

(assert (=> b!4423773 (= e!2754433 (ListMap!2716 Nil!49564))))

(assert (= (and d!1340728 c!753017) b!4423772))

(assert (= (and d!1340728 (not c!753017)) b!4423773))

(declare-fun m!5102859 () Bool)

(assert (=> d!1340728 m!5102859))

(declare-fun m!5102861 () Bool)

(assert (=> d!1340728 m!5102861))

(declare-fun m!5102863 () Bool)

(assert (=> b!4423772 m!5102863))

(assert (=> b!4423772 m!5102863))

(declare-fun m!5102865 () Bool)

(assert (=> b!4423772 m!5102865))

(assert (=> b!4423588 d!1340728))

(declare-fun bs!756052 () Bool)

(declare-fun d!1340730 () Bool)

(assert (= bs!756052 (and d!1340730 d!1340664)))

(declare-fun lambda!153564 () Int)

(assert (=> bs!756052 (not (= lambda!153564 lambda!153509))))

(declare-fun bs!756053 () Bool)

(assert (= bs!756053 (and d!1340730 start!431394)))

(assert (=> bs!756053 (= lambda!153564 lambda!153495)))

(declare-fun bs!756054 () Bool)

(assert (= bs!756054 (and d!1340730 d!1340724)))

(assert (=> bs!756054 (= lambda!153564 lambda!153559)))

(declare-fun bs!756055 () Bool)

(assert (= bs!756055 (and d!1340730 d!1340720)))

(assert (=> bs!756055 (= lambda!153564 lambda!153556)))

(declare-fun bs!756056 () Bool)

(assert (= bs!756056 (and d!1340730 d!1340726)))

(assert (=> bs!756056 (= lambda!153564 lambda!153562)))

(declare-fun bs!756057 () Bool)

(assert (= bs!756057 (and d!1340730 d!1340728)))

(assert (=> bs!756057 (= lambda!153564 lambda!153563)))

(declare-fun lt!1623179 () ListMap!2715)

(assert (=> d!1340730 (invariantList!800 (toList!3472 lt!1623179))))

(declare-fun e!2754434 () ListMap!2715)

(assert (=> d!1340730 (= lt!1623179 e!2754434)))

(declare-fun c!753018 () Bool)

(assert (=> d!1340730 (= c!753018 (is-Cons!49565 (toList!3471 (+!1069 lt!1623017 lt!1623024))))))

(assert (=> d!1340730 (forall!9549 (toList!3471 (+!1069 lt!1623017 lt!1623024)) lambda!153564)))

(assert (=> d!1340730 (= (extractMap!803 (toList!3471 (+!1069 lt!1623017 lt!1623024))) lt!1623179)))

(declare-fun b!4423774 () Bool)

(assert (=> b!4423774 (= e!2754434 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (toList!3471 (+!1069 lt!1623017 lt!1623024)))) (extractMap!803 (t!356627 (toList!3471 (+!1069 lt!1623017 lt!1623024))))))))

(declare-fun b!4423775 () Bool)

(assert (=> b!4423775 (= e!2754434 (ListMap!2716 Nil!49564))))

(assert (= (and d!1340730 c!753018) b!4423774))

(assert (= (and d!1340730 (not c!753018)) b!4423775))

(declare-fun m!5102867 () Bool)

(assert (=> d!1340730 m!5102867))

(declare-fun m!5102869 () Bool)

(assert (=> d!1340730 m!5102869))

(declare-fun m!5102871 () Bool)

(assert (=> b!4423774 m!5102871))

(assert (=> b!4423774 m!5102871))

(declare-fun m!5102873 () Bool)

(assert (=> b!4423774 m!5102873))

(assert (=> b!4423588 d!1340730))

(declare-fun d!1340732 () Bool)

(assert (=> d!1340732 (= (eq!400 lt!1623020 (+!1068 lt!1623016 (tuple2!49347 key!3717 newValue!93))) (= (content!7949 (toList!3472 lt!1623020)) (content!7949 (toList!3472 (+!1068 lt!1623016 (tuple2!49347 key!3717 newValue!93))))))))

(declare-fun bs!756058 () Bool)

(assert (= bs!756058 d!1340732))

(declare-fun m!5102875 () Bool)

(assert (=> bs!756058 m!5102875))

(declare-fun m!5102877 () Bool)

(assert (=> bs!756058 m!5102877))

(assert (=> b!4423588 d!1340732))

(declare-fun d!1340734 () Bool)

(declare-fun head!9207 (List!49689) tuple2!49348)

(assert (=> d!1340734 (= (head!9205 lm!1616) (head!9207 (toList!3471 lm!1616)))))

(declare-fun bs!756059 () Bool)

(assert (= bs!756059 d!1340734))

(declare-fun m!5102879 () Bool)

(assert (=> bs!756059 m!5102879))

(assert (=> b!4423588 d!1340734))

(declare-fun d!1340736 () Bool)

(declare-fun e!2754437 () Bool)

(assert (=> d!1340736 e!2754437))

(declare-fun res!1828664 () Bool)

(assert (=> d!1340736 (=> (not res!1828664) (not e!2754437))))

(declare-fun lt!1623191 () ListMap!2715)

(assert (=> d!1340736 (= res!1828664 (contains!12058 lt!1623191 (_1!27967 (tuple2!49347 key!3717 newValue!93))))))

(declare-fun lt!1623188 () List!49688)

(assert (=> d!1340736 (= lt!1623191 (ListMap!2716 lt!1623188))))

(declare-fun lt!1623190 () Unit!81655)

(declare-fun lt!1623189 () Unit!81655)

(assert (=> d!1340736 (= lt!1623190 lt!1623189)))

(assert (=> d!1340736 (= (getValueByKey!702 lt!1623188 (_1!27967 (tuple2!49347 key!3717 newValue!93))) (Some!10715 (_2!27967 (tuple2!49347 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!436 (List!49688 K!10928 V!11174) Unit!81655)

(assert (=> d!1340736 (= lt!1623189 (lemmaContainsTupThenGetReturnValue!436 lt!1623188 (_1!27967 (tuple2!49347 key!3717 newValue!93)) (_2!27967 (tuple2!49347 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!190 (List!49688 K!10928 V!11174) List!49688)

(assert (=> d!1340736 (= lt!1623188 (insertNoDuplicatedKeys!190 (toList!3472 lt!1623016) (_1!27967 (tuple2!49347 key!3717 newValue!93)) (_2!27967 (tuple2!49347 key!3717 newValue!93))))))

(assert (=> d!1340736 (= (+!1068 lt!1623016 (tuple2!49347 key!3717 newValue!93)) lt!1623191)))

(declare-fun b!4423780 () Bool)

(declare-fun res!1828663 () Bool)

(assert (=> b!4423780 (=> (not res!1828663) (not e!2754437))))

(assert (=> b!4423780 (= res!1828663 (= (getValueByKey!702 (toList!3472 lt!1623191) (_1!27967 (tuple2!49347 key!3717 newValue!93))) (Some!10715 (_2!27967 (tuple2!49347 key!3717 newValue!93)))))))

(declare-fun b!4423781 () Bool)

(declare-fun contains!12062 (List!49688 tuple2!49346) Bool)

(assert (=> b!4423781 (= e!2754437 (contains!12062 (toList!3472 lt!1623191) (tuple2!49347 key!3717 newValue!93)))))

(assert (= (and d!1340736 res!1828664) b!4423780))

(assert (= (and b!4423780 res!1828663) b!4423781))

(declare-fun m!5102881 () Bool)

(assert (=> d!1340736 m!5102881))

(declare-fun m!5102883 () Bool)

(assert (=> d!1340736 m!5102883))

(declare-fun m!5102885 () Bool)

(assert (=> d!1340736 m!5102885))

(declare-fun m!5102887 () Bool)

(assert (=> d!1340736 m!5102887))

(declare-fun m!5102889 () Bool)

(assert (=> b!4423780 m!5102889))

(declare-fun m!5102891 () Bool)

(assert (=> b!4423781 m!5102891))

(assert (=> b!4423588 d!1340736))

(declare-fun d!1340738 () Bool)

(assert (=> d!1340738 (= (tail!7256 lm!1616) (ListLongMap!2122 (tail!7257 (toList!3471 lm!1616))))))

(declare-fun bs!756060 () Bool)

(assert (= bs!756060 d!1340738))

(assert (=> bs!756060 m!5102571))

(assert (=> b!4423588 d!1340738))

(declare-fun bs!756061 () Bool)

(declare-fun d!1340740 () Bool)

(assert (= bs!756061 (and d!1340740 d!1340664)))

(declare-fun lambda!153565 () Int)

(assert (=> bs!756061 (not (= lambda!153565 lambda!153509))))

(declare-fun bs!756062 () Bool)

(assert (= bs!756062 (and d!1340740 d!1340730)))

(assert (=> bs!756062 (= lambda!153565 lambda!153564)))

(declare-fun bs!756063 () Bool)

(assert (= bs!756063 (and d!1340740 start!431394)))

(assert (=> bs!756063 (= lambda!153565 lambda!153495)))

(declare-fun bs!756064 () Bool)

(assert (= bs!756064 (and d!1340740 d!1340724)))

(assert (=> bs!756064 (= lambda!153565 lambda!153559)))

(declare-fun bs!756065 () Bool)

(assert (= bs!756065 (and d!1340740 d!1340720)))

(assert (=> bs!756065 (= lambda!153565 lambda!153556)))

(declare-fun bs!756066 () Bool)

(assert (= bs!756066 (and d!1340740 d!1340726)))

(assert (=> bs!756066 (= lambda!153565 lambda!153562)))

(declare-fun bs!756067 () Bool)

(assert (= bs!756067 (and d!1340740 d!1340728)))

(assert (=> bs!756067 (= lambda!153565 lambda!153563)))

(declare-fun lt!1623192 () ListMap!2715)

(assert (=> d!1340740 (invariantList!800 (toList!3472 lt!1623192))))

(declare-fun e!2754438 () ListMap!2715)

(assert (=> d!1340740 (= lt!1623192 e!2754438)))

(declare-fun c!753019 () Bool)

(assert (=> d!1340740 (= c!753019 (is-Cons!49565 (tail!7257 (toList!3471 lm!1616))))))

(assert (=> d!1340740 (forall!9549 (tail!7257 (toList!3471 lm!1616)) lambda!153565)))

(assert (=> d!1340740 (= (extractMap!803 (tail!7257 (toList!3471 lm!1616))) lt!1623192)))

(declare-fun b!4423782 () Bool)

(assert (=> b!4423782 (= e!2754438 (addToMapMapFromBucket!379 (_2!27968 (h!55246 (tail!7257 (toList!3471 lm!1616)))) (extractMap!803 (t!356627 (tail!7257 (toList!3471 lm!1616))))))))

(declare-fun b!4423783 () Bool)

(assert (=> b!4423783 (= e!2754438 (ListMap!2716 Nil!49564))))

(assert (= (and d!1340740 c!753019) b!4423782))

(assert (= (and d!1340740 (not c!753019)) b!4423783))

(declare-fun m!5102893 () Bool)

(assert (=> d!1340740 m!5102893))

(assert (=> d!1340740 m!5102571))

(declare-fun m!5102895 () Bool)

(assert (=> d!1340740 m!5102895))

(declare-fun m!5102897 () Bool)

(assert (=> b!4423782 m!5102897))

(assert (=> b!4423782 m!5102897))

(declare-fun m!5102899 () Bool)

(assert (=> b!4423782 m!5102899))

(assert (=> b!4423588 d!1340740))

(declare-fun d!1340742 () Bool)

(declare-fun e!2754441 () Bool)

(assert (=> d!1340742 e!2754441))

(declare-fun res!1828669 () Bool)

(assert (=> d!1340742 (=> (not res!1828669) (not e!2754441))))

(declare-fun lt!1623202 () ListLongMap!2121)

(assert (=> d!1340742 (= res!1828669 (contains!12057 lt!1623202 (_1!27968 lt!1623024)))))

(declare-fun lt!1623203 () List!49689)

(assert (=> d!1340742 (= lt!1623202 (ListLongMap!2122 lt!1623203))))

(declare-fun lt!1623204 () Unit!81655)

(declare-fun lt!1623201 () Unit!81655)

(assert (=> d!1340742 (= lt!1623204 lt!1623201)))

(assert (=> d!1340742 (= (getValueByKey!701 lt!1623203 (_1!27968 lt!1623024)) (Some!10714 (_2!27968 lt!1623024)))))

(declare-fun lemmaContainsTupThenGetReturnValue!437 (List!49689 (_ BitVec 64) List!49688) Unit!81655)

(assert (=> d!1340742 (= lt!1623201 (lemmaContainsTupThenGetReturnValue!437 lt!1623203 (_1!27968 lt!1623024) (_2!27968 lt!1623024)))))

(declare-fun insertStrictlySorted!255 (List!49689 (_ BitVec 64) List!49688) List!49689)

(assert (=> d!1340742 (= lt!1623203 (insertStrictlySorted!255 (toList!3471 lt!1623017) (_1!27968 lt!1623024) (_2!27968 lt!1623024)))))

(assert (=> d!1340742 (= (+!1069 lt!1623017 lt!1623024) lt!1623202)))

(declare-fun b!4423788 () Bool)

(declare-fun res!1828670 () Bool)

(assert (=> b!4423788 (=> (not res!1828670) (not e!2754441))))

(assert (=> b!4423788 (= res!1828670 (= (getValueByKey!701 (toList!3471 lt!1623202) (_1!27968 lt!1623024)) (Some!10714 (_2!27968 lt!1623024))))))

(declare-fun b!4423789 () Bool)

(declare-fun contains!12063 (List!49689 tuple2!49348) Bool)

(assert (=> b!4423789 (= e!2754441 (contains!12063 (toList!3471 lt!1623202) lt!1623024))))

(assert (= (and d!1340742 res!1828669) b!4423788))

(assert (= (and b!4423788 res!1828670) b!4423789))

(declare-fun m!5102901 () Bool)

(assert (=> d!1340742 m!5102901))

(declare-fun m!5102903 () Bool)

(assert (=> d!1340742 m!5102903))

(declare-fun m!5102905 () Bool)

(assert (=> d!1340742 m!5102905))

(declare-fun m!5102907 () Bool)

(assert (=> d!1340742 m!5102907))

(declare-fun m!5102909 () Bool)

(assert (=> b!4423788 m!5102909))

(declare-fun m!5102911 () Bool)

(assert (=> b!4423789 m!5102911))

(assert (=> b!4423588 d!1340742))

(declare-fun d!1340744 () Bool)

(assert (=> d!1340744 (= (tail!7257 (toList!3471 lm!1616)) (t!356627 (toList!3471 lm!1616)))))

(assert (=> b!4423588 d!1340744))

(declare-fun bs!756068 () Bool)

(declare-fun d!1340746 () Bool)

(assert (= bs!756068 (and d!1340746 d!1340664)))

(declare-fun lambda!153568 () Int)

(assert (=> bs!756068 (not (= lambda!153568 lambda!153509))))

(declare-fun bs!756069 () Bool)

(assert (= bs!756069 (and d!1340746 d!1340730)))

(assert (=> bs!756069 (= lambda!153568 lambda!153564)))

(declare-fun bs!756070 () Bool)

(assert (= bs!756070 (and d!1340746 start!431394)))

(assert (=> bs!756070 (= lambda!153568 lambda!153495)))

(declare-fun bs!756071 () Bool)

(assert (= bs!756071 (and d!1340746 d!1340724)))

(assert (=> bs!756071 (= lambda!153568 lambda!153559)))

(declare-fun bs!756072 () Bool)

(assert (= bs!756072 (and d!1340746 d!1340720)))

(assert (=> bs!756072 (= lambda!153568 lambda!153556)))

(declare-fun bs!756073 () Bool)

(assert (= bs!756073 (and d!1340746 d!1340740)))

(assert (=> bs!756073 (= lambda!153568 lambda!153565)))

(declare-fun bs!756074 () Bool)

(assert (= bs!756074 (and d!1340746 d!1340726)))

(assert (=> bs!756074 (= lambda!153568 lambda!153562)))

(declare-fun bs!756075 () Bool)

(assert (= bs!756075 (and d!1340746 d!1340728)))

(assert (=> bs!756075 (= lambda!153568 lambda!153563)))

(assert (=> d!1340746 (eq!400 (extractMap!803 (toList!3471 (+!1069 lt!1623017 (tuple2!49349 hash!366 newBucket!194)))) (+!1068 (extractMap!803 (toList!3471 lt!1623017)) (tuple2!49347 key!3717 newValue!93)))))

(declare-fun lt!1623207 () Unit!81655)

(declare-fun choose!27906 (ListLongMap!2121 (_ BitVec 64) List!49688 K!10928 V!11174 Hashable!5136) Unit!81655)

(assert (=> d!1340746 (= lt!1623207 (choose!27906 lt!1623017 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1340746 (forall!9549 (toList!3471 lt!1623017) lambda!153568)))

(assert (=> d!1340746 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!116 lt!1623017 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1623207)))

(declare-fun bs!756076 () Bool)

(assert (= bs!756076 d!1340746))

(assert (=> bs!756076 m!5102589))

(declare-fun m!5102913 () Bool)

(assert (=> bs!756076 m!5102913))

(declare-fun m!5102915 () Bool)

(assert (=> bs!756076 m!5102915))

(assert (=> bs!756076 m!5102913))

(declare-fun m!5102917 () Bool)

(assert (=> bs!756076 m!5102917))

(declare-fun m!5102919 () Bool)

(assert (=> bs!756076 m!5102919))

(declare-fun m!5102921 () Bool)

(assert (=> bs!756076 m!5102921))

(declare-fun m!5102923 () Bool)

(assert (=> bs!756076 m!5102923))

(assert (=> bs!756076 m!5102589))

(assert (=> bs!756076 m!5102915))

(assert (=> b!4423588 d!1340746))

(declare-fun b!4423790 () Bool)

(declare-fun e!2754442 () Bool)

(assert (=> b!4423790 (= e!2754442 (not (contains!12061 (keys!16918 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717)))))

(declare-fun b!4423791 () Bool)

(declare-fun e!2754445 () List!49692)

(assert (=> b!4423791 (= e!2754445 (keys!16918 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))))))

(declare-fun bm!307768 () Bool)

(declare-fun call!307773 () Bool)

(assert (=> bm!307768 (= call!307773 (contains!12061 e!2754445 key!3717))))

(declare-fun c!753021 () Bool)

(declare-fun c!753022 () Bool)

(assert (=> bm!307768 (= c!753021 c!753022)))

(declare-fun b!4423793 () Bool)

(declare-fun e!2754444 () Unit!81655)

(declare-fun lt!1623213 () Unit!81655)

(assert (=> b!4423793 (= e!2754444 lt!1623213)))

(declare-fun lt!1623212 () Unit!81655)

(assert (=> b!4423793 (= lt!1623212 (lemmaContainsKeyImpliesGetValueByKeyDefined!611 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(assert (=> b!4423793 (isDefined!8008 (getValueByKey!702 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(declare-fun lt!1623214 () Unit!81655)

(assert (=> b!4423793 (= lt!1623214 lt!1623212)))

(assert (=> b!4423793 (= lt!1623213 (lemmaInListThenGetKeysListContains!245 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(assert (=> b!4423793 call!307773))

(declare-fun b!4423794 () Bool)

(assert (=> b!4423794 (= e!2754445 (getKeysList!248 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616))))))))

(declare-fun b!4423795 () Bool)

(assert (=> b!4423795 false))

(declare-fun lt!1623215 () Unit!81655)

(declare-fun lt!1623208 () Unit!81655)

(assert (=> b!4423795 (= lt!1623215 lt!1623208)))

(assert (=> b!4423795 (containsKey!1100 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717)))

(assert (=> b!4423795 (= lt!1623208 (lemmaInGetKeysListThenContainsKey!246 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(declare-fun e!2754443 () Unit!81655)

(declare-fun Unit!81676 () Unit!81655)

(assert (=> b!4423795 (= e!2754443 Unit!81676)))

(declare-fun b!4423796 () Bool)

(assert (=> b!4423796 (= e!2754444 e!2754443)))

(declare-fun c!753020 () Bool)

(assert (=> b!4423796 (= c!753020 call!307773)))

(declare-fun b!4423797 () Bool)

(declare-fun e!2754446 () Bool)

(declare-fun e!2754447 () Bool)

(assert (=> b!4423797 (= e!2754446 e!2754447)))

(declare-fun res!1828673 () Bool)

(assert (=> b!4423797 (=> (not res!1828673) (not e!2754447))))

(assert (=> b!4423797 (= res!1828673 (isDefined!8008 (getValueByKey!702 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717)))))

(declare-fun b!4423798 () Bool)

(declare-fun Unit!81677 () Unit!81655)

(assert (=> b!4423798 (= e!2754443 Unit!81677)))

(declare-fun b!4423792 () Bool)

(assert (=> b!4423792 (= e!2754447 (contains!12061 (keys!16918 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(declare-fun d!1340748 () Bool)

(assert (=> d!1340748 e!2754446))

(declare-fun res!1828672 () Bool)

(assert (=> d!1340748 (=> res!1828672 e!2754446)))

(assert (=> d!1340748 (= res!1828672 e!2754442)))

(declare-fun res!1828671 () Bool)

(assert (=> d!1340748 (=> (not res!1828671) (not e!2754442))))

(declare-fun lt!1623210 () Bool)

(assert (=> d!1340748 (= res!1828671 (not lt!1623210))))

(declare-fun lt!1623209 () Bool)

(assert (=> d!1340748 (= lt!1623210 lt!1623209)))

(declare-fun lt!1623211 () Unit!81655)

(assert (=> d!1340748 (= lt!1623211 e!2754444)))

(assert (=> d!1340748 (= c!753022 lt!1623209)))

(assert (=> d!1340748 (= lt!1623209 (containsKey!1100 (toList!3472 (extractMap!803 (tail!7257 (toList!3471 lm!1616)))) key!3717))))

(assert (=> d!1340748 (= (contains!12058 (extractMap!803 (tail!7257 (toList!3471 lm!1616))) key!3717) lt!1623210)))

(assert (= (and d!1340748 c!753022) b!4423793))

(assert (= (and d!1340748 (not c!753022)) b!4423796))

(assert (= (and b!4423796 c!753020) b!4423795))

(assert (= (and b!4423796 (not c!753020)) b!4423798))

(assert (= (or b!4423793 b!4423796) bm!307768))

(assert (= (and bm!307768 c!753021) b!4423794))

(assert (= (and bm!307768 (not c!753021)) b!4423791))

(assert (= (and d!1340748 res!1828671) b!4423790))

(assert (= (and d!1340748 (not res!1828672)) b!4423797))

(assert (= (and b!4423797 res!1828673) b!4423792))

(assert (=> b!4423790 m!5102573))

(declare-fun m!5102925 () Bool)

(assert (=> b!4423790 m!5102925))

(assert (=> b!4423790 m!5102925))

(declare-fun m!5102927 () Bool)

(assert (=> b!4423790 m!5102927))

(declare-fun m!5102929 () Bool)

(assert (=> b!4423793 m!5102929))

(declare-fun m!5102931 () Bool)

(assert (=> b!4423793 m!5102931))

(assert (=> b!4423793 m!5102931))

(declare-fun m!5102933 () Bool)

(assert (=> b!4423793 m!5102933))

(declare-fun m!5102935 () Bool)

(assert (=> b!4423793 m!5102935))

(declare-fun m!5102937 () Bool)

(assert (=> d!1340748 m!5102937))

(assert (=> b!4423795 m!5102937))

(declare-fun m!5102939 () Bool)

(assert (=> b!4423795 m!5102939))

(declare-fun m!5102941 () Bool)

(assert (=> bm!307768 m!5102941))

(assert (=> b!4423792 m!5102573))

(assert (=> b!4423792 m!5102925))

(assert (=> b!4423792 m!5102925))

(assert (=> b!4423792 m!5102927))

(assert (=> b!4423797 m!5102931))

(assert (=> b!4423797 m!5102931))

(assert (=> b!4423797 m!5102933))

(declare-fun m!5102943 () Bool)

(assert (=> b!4423794 m!5102943))

(assert (=> b!4423791 m!5102573))

(assert (=> b!4423791 m!5102925))

(assert (=> b!4423588 d!1340748))

(declare-fun d!1340750 () Bool)

(declare-fun e!2754454 () Bool)

(assert (=> d!1340750 e!2754454))

(declare-fun res!1828676 () Bool)

(assert (=> d!1340750 (=> res!1828676 e!2754454)))

(declare-fun lt!1623247 () Bool)

(assert (=> d!1340750 (= res!1828676 (not lt!1623247))))

(declare-fun lt!1623249 () Bool)

(assert (=> d!1340750 (= lt!1623247 lt!1623249)))

(declare-fun lt!1623246 () Unit!81655)

(declare-fun e!2754455 () Unit!81655)

(assert (=> d!1340750 (= lt!1623246 e!2754455)))

(declare-fun c!753027 () Bool)

(assert (=> d!1340750 (= c!753027 lt!1623249)))

(declare-fun containsKey!1101 (List!49689 (_ BitVec 64)) Bool)

(assert (=> d!1340750 (= lt!1623249 (containsKey!1101 (toList!3471 lm!1616) hash!366))))

(assert (=> d!1340750 (= (contains!12057 lm!1616 hash!366) lt!1623247)))

(declare-fun b!4423809 () Bool)

(declare-fun lt!1623248 () Unit!81655)

(assert (=> b!4423809 (= e!2754455 lt!1623248)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!612 (List!49689 (_ BitVec 64)) Unit!81655)

(assert (=> b!4423809 (= lt!1623248 (lemmaContainsKeyImpliesGetValueByKeyDefined!612 (toList!3471 lm!1616) hash!366))))

(declare-fun isDefined!8009 (Option!10715) Bool)

(assert (=> b!4423809 (isDefined!8009 (getValueByKey!701 (toList!3471 lm!1616) hash!366))))

(declare-fun b!4423810 () Bool)

(declare-fun Unit!81678 () Unit!81655)

(assert (=> b!4423810 (= e!2754455 Unit!81678)))

(declare-fun b!4423811 () Bool)

(assert (=> b!4423811 (= e!2754454 (isDefined!8009 (getValueByKey!701 (toList!3471 lm!1616) hash!366)))))

(assert (= (and d!1340750 c!753027) b!4423809))

(assert (= (and d!1340750 (not c!753027)) b!4423810))

(assert (= (and d!1340750 (not res!1828676)) b!4423811))

(declare-fun m!5102945 () Bool)

(assert (=> d!1340750 m!5102945))

(declare-fun m!5102947 () Bool)

(assert (=> b!4423809 m!5102947))

(assert (=> b!4423809 m!5102699))

(assert (=> b!4423809 m!5102699))

(declare-fun m!5102949 () Bool)

(assert (=> b!4423809 m!5102949))

(assert (=> b!4423811 m!5102699))

(assert (=> b!4423811 m!5102699))

(assert (=> b!4423811 m!5102949))

(assert (=> b!4423587 d!1340750))

(declare-fun d!1340752 () Bool)

(declare-fun hash!2105 (Hashable!5136 K!10928) (_ BitVec 64))

(assert (=> d!1340752 (= (hash!2099 hashF!1220 key!3717) (hash!2105 hashF!1220 key!3717))))

(declare-fun bs!756077 () Bool)

(assert (= bs!756077 d!1340752))

(declare-fun m!5102951 () Bool)

(assert (=> bs!756077 m!5102951))

(assert (=> b!4423580 d!1340752))

(declare-fun d!1340754 () Bool)

(declare-fun res!1828677 () Bool)

(declare-fun e!2754456 () Bool)

(assert (=> d!1340754 (=> res!1828677 e!2754456)))

(assert (=> d!1340754 (= res!1828677 (is-Nil!49565 (toList!3471 lt!1623017)))))

(assert (=> d!1340754 (= (forall!9549 (toList!3471 lt!1623017) lambda!153495) e!2754456)))

(declare-fun b!4423812 () Bool)

(declare-fun e!2754457 () Bool)

(assert (=> b!4423812 (= e!2754456 e!2754457)))

(declare-fun res!1828678 () Bool)

(assert (=> b!4423812 (=> (not res!1828678) (not e!2754457))))

(assert (=> b!4423812 (= res!1828678 (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lt!1623017))))))

(declare-fun b!4423813 () Bool)

(assert (=> b!4423813 (= e!2754457 (forall!9549 (t!356627 (toList!3471 lt!1623017)) lambda!153495))))

(assert (= (and d!1340754 (not res!1828677)) b!4423812))

(assert (= (and b!4423812 res!1828678) b!4423813))

(declare-fun b_lambda!142893 () Bool)

(assert (=> (not b_lambda!142893) (not b!4423812)))

(declare-fun m!5102953 () Bool)

(assert (=> b!4423812 m!5102953))

(declare-fun m!5102955 () Bool)

(assert (=> b!4423813 m!5102955))

(assert (=> b!4423592 d!1340754))

(assert (=> b!4423581 d!1340666))

(declare-fun d!1340756 () Bool)

(declare-fun res!1828679 () Bool)

(declare-fun e!2754458 () Bool)

(assert (=> d!1340756 (=> res!1828679 e!2754458)))

(assert (=> d!1340756 (= res!1828679 (is-Nil!49565 (toList!3471 lt!1623027)))))

(assert (=> d!1340756 (= (forall!9549 (toList!3471 lt!1623027) lambda!153495) e!2754458)))

(declare-fun b!4423814 () Bool)

(declare-fun e!2754459 () Bool)

(assert (=> b!4423814 (= e!2754458 e!2754459)))

(declare-fun res!1828680 () Bool)

(assert (=> b!4423814 (=> (not res!1828680) (not e!2754459))))

(assert (=> b!4423814 (= res!1828680 (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lt!1623027))))))

(declare-fun b!4423815 () Bool)

(assert (=> b!4423815 (= e!2754459 (forall!9549 (t!356627 (toList!3471 lt!1623027)) lambda!153495))))

(assert (= (and d!1340756 (not res!1828679)) b!4423814))

(assert (= (and b!4423814 res!1828680) b!4423815))

(declare-fun b_lambda!142895 () Bool)

(assert (=> (not b_lambda!142895) (not b!4423814)))

(declare-fun m!5102957 () Bool)

(assert (=> b!4423814 m!5102957))

(declare-fun m!5102959 () Bool)

(assert (=> b!4423815 m!5102959))

(assert (=> b!4423591 d!1340756))

(declare-fun d!1340758 () Bool)

(declare-fun e!2754460 () Bool)

(assert (=> d!1340758 e!2754460))

(declare-fun res!1828681 () Bool)

(assert (=> d!1340758 (=> (not res!1828681) (not e!2754460))))

(declare-fun lt!1623261 () ListLongMap!2121)

(assert (=> d!1340758 (= res!1828681 (contains!12057 lt!1623261 (_1!27968 lt!1623024)))))

(declare-fun lt!1623262 () List!49689)

(assert (=> d!1340758 (= lt!1623261 (ListLongMap!2122 lt!1623262))))

(declare-fun lt!1623263 () Unit!81655)

(declare-fun lt!1623260 () Unit!81655)

(assert (=> d!1340758 (= lt!1623263 lt!1623260)))

(assert (=> d!1340758 (= (getValueByKey!701 lt!1623262 (_1!27968 lt!1623024)) (Some!10714 (_2!27968 lt!1623024)))))

(assert (=> d!1340758 (= lt!1623260 (lemmaContainsTupThenGetReturnValue!437 lt!1623262 (_1!27968 lt!1623024) (_2!27968 lt!1623024)))))

(assert (=> d!1340758 (= lt!1623262 (insertStrictlySorted!255 (toList!3471 lm!1616) (_1!27968 lt!1623024) (_2!27968 lt!1623024)))))

(assert (=> d!1340758 (= (+!1069 lm!1616 lt!1623024) lt!1623261)))

(declare-fun b!4423816 () Bool)

(declare-fun res!1828682 () Bool)

(assert (=> b!4423816 (=> (not res!1828682) (not e!2754460))))

(assert (=> b!4423816 (= res!1828682 (= (getValueByKey!701 (toList!3471 lt!1623261) (_1!27968 lt!1623024)) (Some!10714 (_2!27968 lt!1623024))))))

(declare-fun b!4423817 () Bool)

(assert (=> b!4423817 (= e!2754460 (contains!12063 (toList!3471 lt!1623261) lt!1623024))))

(assert (= (and d!1340758 res!1828681) b!4423816))

(assert (= (and b!4423816 res!1828682) b!4423817))

(declare-fun m!5102961 () Bool)

(assert (=> d!1340758 m!5102961))

(declare-fun m!5102963 () Bool)

(assert (=> d!1340758 m!5102963))

(declare-fun m!5102965 () Bool)

(assert (=> d!1340758 m!5102965))

(declare-fun m!5102967 () Bool)

(assert (=> d!1340758 m!5102967))

(declare-fun m!5102969 () Bool)

(assert (=> b!4423816 m!5102969))

(declare-fun m!5102971 () Bool)

(assert (=> b!4423817 m!5102971))

(assert (=> b!4423591 d!1340758))

(declare-fun d!1340760 () Bool)

(assert (=> d!1340760 (forall!9549 (toList!3471 (+!1069 lm!1616 (tuple2!49349 hash!366 newBucket!194))) lambda!153495)))

(declare-fun lt!1623276 () Unit!81655)

(declare-fun choose!27908 (ListLongMap!2121 Int (_ BitVec 64) List!49688) Unit!81655)

(assert (=> d!1340760 (= lt!1623276 (choose!27908 lm!1616 lambda!153495 hash!366 newBucket!194))))

(declare-fun e!2754467 () Bool)

(assert (=> d!1340760 e!2754467))

(declare-fun res!1828689 () Bool)

(assert (=> d!1340760 (=> (not res!1828689) (not e!2754467))))

(assert (=> d!1340760 (= res!1828689 (forall!9549 (toList!3471 lm!1616) lambda!153495))))

(assert (=> d!1340760 (= (addValidProp!386 lm!1616 lambda!153495 hash!366 newBucket!194) lt!1623276)))

(declare-fun b!4423823 () Bool)

(assert (=> b!4423823 (= e!2754467 (dynLambda!20839 lambda!153495 (tuple2!49349 hash!366 newBucket!194)))))

(assert (= (and d!1340760 res!1828689) b!4423823))

(declare-fun b_lambda!142897 () Bool)

(assert (=> (not b_lambda!142897) (not b!4423823)))

(declare-fun m!5102973 () Bool)

(assert (=> d!1340760 m!5102973))

(declare-fun m!5102975 () Bool)

(assert (=> d!1340760 m!5102975))

(declare-fun m!5102977 () Bool)

(assert (=> d!1340760 m!5102977))

(assert (=> d!1340760 m!5102613))

(declare-fun m!5102979 () Bool)

(assert (=> b!4423823 m!5102979))

(assert (=> b!4423591 d!1340760))

(declare-fun b!4423832 () Bool)

(declare-fun e!2754470 () Bool)

(declare-fun tp!1333117 () Bool)

(assert (=> b!4423832 (= e!2754470 (and tp_is_empty!26215 tp_is_empty!26213 tp!1333117))))

(assert (=> b!4423598 (= tp!1333107 e!2754470)))

(assert (= (and b!4423598 (is-Cons!49564 (t!356626 newBucket!194))) b!4423832))

(declare-fun b!4423837 () Bool)

(declare-fun e!2754473 () Bool)

(declare-fun tp!1333122 () Bool)

(declare-fun tp!1333123 () Bool)

(assert (=> b!4423837 (= e!2754473 (and tp!1333122 tp!1333123))))

(assert (=> b!4423589 (= tp!1333108 e!2754473)))

(assert (= (and b!4423589 (is-Cons!49565 (toList!3471 lm!1616))) b!4423837))

(declare-fun b_lambda!142899 () Bool)

(assert (= b_lambda!142883 (or start!431394 b_lambda!142899)))

(declare-fun bs!756078 () Bool)

(declare-fun d!1340762 () Bool)

(assert (= bs!756078 (and d!1340762 start!431394)))

(assert (=> bs!756078 (= (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lm!1616))) (noDuplicateKeys!742 (_2!27968 (h!55246 (toList!3471 lm!1616)))))))

(assert (=> bs!756078 m!5102781))

(assert (=> b!4423662 d!1340762))

(declare-fun b_lambda!142901 () Bool)

(assert (= b_lambda!142897 (or start!431394 b_lambda!142901)))

(declare-fun bs!756079 () Bool)

(declare-fun d!1340764 () Bool)

(assert (= bs!756079 (and d!1340764 start!431394)))

(assert (=> bs!756079 (= (dynLambda!20839 lambda!153495 (tuple2!49349 hash!366 newBucket!194)) (noDuplicateKeys!742 (_2!27968 (tuple2!49349 hash!366 newBucket!194))))))

(declare-fun m!5102981 () Bool)

(assert (=> bs!756079 m!5102981))

(assert (=> b!4423823 d!1340764))

(declare-fun b_lambda!142903 () Bool)

(assert (= b_lambda!142893 (or start!431394 b_lambda!142903)))

(declare-fun bs!756080 () Bool)

(declare-fun d!1340766 () Bool)

(assert (= bs!756080 (and d!1340766 start!431394)))

(assert (=> bs!756080 (= (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lt!1623017))) (noDuplicateKeys!742 (_2!27968 (h!55246 (toList!3471 lt!1623017)))))))

(declare-fun m!5102983 () Bool)

(assert (=> bs!756080 m!5102983))

(assert (=> b!4423812 d!1340766))

(declare-fun b_lambda!142905 () Bool)

(assert (= b_lambda!142895 (or start!431394 b_lambda!142905)))

(declare-fun bs!756081 () Bool)

(declare-fun d!1340768 () Bool)

(assert (= bs!756081 (and d!1340768 start!431394)))

(assert (=> bs!756081 (= (dynLambda!20839 lambda!153495 (h!55246 (toList!3471 lt!1623027))) (noDuplicateKeys!742 (_2!27968 (h!55246 (toList!3471 lt!1623027)))))))

(declare-fun m!5102985 () Bool)

(assert (=> bs!756081 m!5102985))

(assert (=> b!4423814 d!1340768))

(push 1)

(assert (not b!4423817))

(assert (not b_lambda!142903))

(assert (not b!4423728))

(assert (not b_lambda!142905))

(assert (not d!1340746))

(assert (not b!4423726))

(assert (not b!4423672))

(assert (not b!4423782))

(assert (not b!4423673))

(assert (not d!1340680))

(assert (not d!1340728))

(assert (not bs!756080))

(assert (not d!1340726))

(assert (not b!4423811))

(assert (not d!1340760))

(assert (not b!4423774))

(assert (not d!1340664))

(assert (not b!4423794))

(assert (not b!4423816))

(assert (not b!4423792))

(assert (not b!4423757))

(assert (not b!4423837))

(assert (not bm!307768))

(assert (not d!1340750))

(assert (not bs!756079))

(assert (not d!1340732))

(assert (not bm!307762))

(assert (not b!4423809))

(assert (not b!4423832))

(assert (not d!1340730))

(assert (not b_lambda!142899))

(assert (not bs!756078))

(assert (not b!4423790))

(assert (not b!4423791))

(assert (not d!1340722))

(assert (not b!4423762))

(assert (not b!4423780))

(assert (not bm!307764))

(assert (not b!4423727))

(assert (not b!4423761))

(assert (not d!1340740))

(assert (not b!4423738))

(assert (not d!1340724))

(assert (not b!4423758))

(assert (not b!4423764))

(assert (not b!4423770))

(assert (not b!4423759))

(assert (not b!4423793))

(assert (not d!1340672))

(assert (not d!1340668))

(assert (not d!1340718))

(assert (not d!1340738))

(assert (not b!4423781))

(assert (not b!4423813))

(assert (not b!4423736))

(assert (not d!1340748))

(assert (not b!4423815))

(assert (not b!4423760))

(assert (not bm!307767))

(assert (not bm!307763))

(assert (not d!1340742))

(assert tp_is_empty!26213)

(assert (not b!4423797))

(assert (not b!4423663))

(assert (not b!4423789))

(assert (not d!1340758))

(assert (not b!4423788))

(assert (not b!4423772))

(assert (not d!1340720))

(assert (not d!1340678))

(assert tp_is_empty!26215)

(assert (not d!1340734))

(assert (not d!1340736))

(assert (not bs!756081))

(assert (not d!1340670))

(assert (not b_lambda!142901))

(assert (not d!1340752))

(assert (not b!4423795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

