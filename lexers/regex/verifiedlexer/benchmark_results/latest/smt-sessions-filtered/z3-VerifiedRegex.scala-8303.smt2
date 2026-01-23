; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431160 () Bool)

(assert start!431160)

(declare-fun res!1827857 () Bool)

(declare-fun e!2753515 () Bool)

(assert (=> start!431160 (=> (not res!1827857) (not e!2753515))))

(declare-datatypes ((V!11166 0))(
  ( (V!11167 (val!17007 Int)) )
))
(declare-datatypes ((K!10920 0))(
  ( (K!10921 (val!17008 Int)) )
))
(declare-datatypes ((tuple2!49334 0))(
  ( (tuple2!49335 (_1!27961 K!10920) (_2!27961 V!11166)) )
))
(declare-datatypes ((List!49680 0))(
  ( (Nil!49556) (Cons!49556 (h!55235 tuple2!49334) (t!356618 List!49680)) )
))
(declare-datatypes ((tuple2!49336 0))(
  ( (tuple2!49337 (_1!27962 (_ BitVec 64)) (_2!27962 List!49680)) )
))
(declare-datatypes ((List!49681 0))(
  ( (Nil!49557) (Cons!49557 (h!55236 tuple2!49336) (t!356619 List!49681)) )
))
(declare-datatypes ((ListLongMap!2115 0))(
  ( (ListLongMap!2116 (toList!3465 List!49681)) )
))
(declare-fun lm!1616 () ListLongMap!2115)

(declare-fun lambda!153246 () Int)

(declare-fun forall!9542 (List!49681 Int) Bool)

(assert (=> start!431160 (= res!1827857 (forall!9542 (toList!3465 lm!1616) lambda!153246))))

(assert (=> start!431160 e!2753515))

(declare-fun tp_is_empty!26201 () Bool)

(assert (=> start!431160 tp_is_empty!26201))

(declare-fun tp_is_empty!26203 () Bool)

(assert (=> start!431160 tp_is_empty!26203))

(declare-fun e!2753516 () Bool)

(assert (=> start!431160 e!2753516))

(declare-fun e!2753512 () Bool)

(declare-fun inv!65106 (ListLongMap!2115) Bool)

(assert (=> start!431160 (and (inv!65106 lm!1616) e!2753512)))

(assert (=> start!431160 true))

(declare-fun b!4422314 () Bool)

(declare-fun tp!1333063 () Bool)

(assert (=> b!4422314 (= e!2753512 tp!1333063)))

(declare-fun b!4422315 () Bool)

(declare-fun newValue!93 () V!11166)

(declare-fun key!3717 () K!10920)

(declare-fun newBucket!194 () List!49680)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun e!2753510 () Bool)

(declare-fun apply!11591 (ListLongMap!2115 (_ BitVec 64)) List!49680)

(assert (=> b!4422315 (= e!2753510 (= newBucket!194 (Cons!49556 (tuple2!49335 key!3717 newValue!93) (apply!11591 lm!1616 hash!366))))))

(declare-fun b!4422316 () Bool)

(declare-fun res!1827867 () Bool)

(assert (=> b!4422316 (=> (not res!1827867) (not e!2753515))))

(declare-datatypes ((Hashable!5133 0))(
  ( (HashableExt!5132 (__x!30836 Int)) )
))
(declare-fun hashF!1220 () Hashable!5133)

(declare-fun hash!2086 (Hashable!5133 K!10920) (_ BitVec 64))

(assert (=> b!4422316 (= res!1827867 (= (hash!2086 hashF!1220 key!3717) hash!366))))

(declare-fun b!4422317 () Bool)

(declare-fun res!1827864 () Bool)

(declare-fun e!2753509 () Bool)

(assert (=> b!4422317 (=> res!1827864 e!2753509)))

(assert (=> b!4422317 (= res!1827864 (not (forall!9542 (toList!3465 lm!1616) lambda!153246)))))

(declare-fun b!4422318 () Bool)

(declare-fun res!1827862 () Bool)

(assert (=> b!4422318 (=> res!1827862 e!2753509)))

(declare-fun contains!12045 (ListLongMap!2115 (_ BitVec 64)) Bool)

(assert (=> b!4422318 (= res!1827862 (not (contains!12045 lm!1616 (_1!27962 (h!55236 (toList!3465 lm!1616))))))))

(declare-fun b!4422319 () Bool)

(assert (=> b!4422319 (= e!2753509 true)))

(declare-fun lt!1622053 () Bool)

(declare-fun b!4422320 () Bool)

(declare-fun e!2753518 () Bool)

(assert (=> b!4422320 (= e!2753518 (and (not lt!1622053) (= newBucket!194 (Cons!49556 (tuple2!49335 key!3717 newValue!93) Nil!49556))))))

(declare-fun b!4422321 () Bool)

(declare-datatypes ((Unit!81461 0))(
  ( (Unit!81462) )
))
(declare-fun e!2753517 () Unit!81461)

(declare-fun Unit!81463 () Unit!81461)

(assert (=> b!4422321 (= e!2753517 Unit!81463)))

(declare-fun b!4422322 () Bool)

(declare-fun Unit!81464 () Unit!81461)

(assert (=> b!4422322 (= e!2753517 Unit!81464)))

(declare-fun lt!1622054 () Unit!81461)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!26 (ListLongMap!2115 K!10920 Hashable!5133) Unit!81461)

(assert (=> b!4422322 (= lt!1622054 (lemmaExtractTailMapContainsThenExtractMapDoes!26 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4422322 false))

(declare-fun b!4422323 () Bool)

(declare-fun res!1827868 () Bool)

(assert (=> b!4422323 (=> (not res!1827868) (not e!2753515))))

(declare-fun allKeysSameHashInMap!845 (ListLongMap!2115 Hashable!5133) Bool)

(assert (=> b!4422323 (= res!1827868 (allKeysSameHashInMap!845 lm!1616 hashF!1220))))

(declare-fun b!4422324 () Bool)

(declare-fun e!2753514 () Bool)

(assert (=> b!4422324 (= e!2753515 e!2753514)))

(declare-fun res!1827855 () Bool)

(assert (=> b!4422324 (=> (not res!1827855) (not e!2753514))))

(declare-datatypes ((ListMap!2709 0))(
  ( (ListMap!2710 (toList!3466 List!49680)) )
))
(declare-fun lt!1622052 () ListMap!2709)

(declare-fun contains!12046 (ListMap!2709 K!10920) Bool)

(assert (=> b!4422324 (= res!1827855 (not (contains!12046 lt!1622052 key!3717)))))

(declare-fun extractMap!800 (List!49681) ListMap!2709)

(assert (=> b!4422324 (= lt!1622052 (extractMap!800 (toList!3465 lm!1616)))))

(declare-fun b!4422325 () Bool)

(declare-fun res!1827854 () Bool)

(declare-fun e!2753511 () Bool)

(assert (=> b!4422325 (=> res!1827854 e!2753511)))

(get-info :version)

(assert (=> b!4422325 (= res!1827854 (or (and ((_ is Cons!49557) (toList!3465 lm!1616)) (= (_1!27962 (h!55236 (toList!3465 lm!1616))) hash!366)) (not ((_ is Cons!49557) (toList!3465 lm!1616))) (= (_1!27962 (h!55236 (toList!3465 lm!1616))) hash!366)))))

(declare-fun tp!1333064 () Bool)

(declare-fun b!4422326 () Bool)

(assert (=> b!4422326 (= e!2753516 (and tp_is_empty!26203 tp_is_empty!26201 tp!1333064))))

(declare-fun b!4422327 () Bool)

(declare-fun e!2753513 () Bool)

(assert (=> b!4422327 (= e!2753513 (not e!2753511))))

(declare-fun res!1827866 () Bool)

(assert (=> b!4422327 (=> res!1827866 e!2753511)))

(declare-fun lt!1622049 () ListLongMap!2115)

(assert (=> b!4422327 (= res!1827866 (not (forall!9542 (toList!3465 lt!1622049) lambda!153246)))))

(assert (=> b!4422327 (forall!9542 (toList!3465 lt!1622049) lambda!153246)))

(declare-fun lt!1622046 () tuple2!49336)

(declare-fun +!1062 (ListLongMap!2115 tuple2!49336) ListLongMap!2115)

(assert (=> b!4422327 (= lt!1622049 (+!1062 lm!1616 lt!1622046))))

(assert (=> b!4422327 (= lt!1622046 (tuple2!49337 hash!366 newBucket!194))))

(declare-fun lt!1622048 () Unit!81461)

(declare-fun addValidProp!383 (ListLongMap!2115 Int (_ BitVec 64) List!49680) Unit!81461)

(assert (=> b!4422327 (= lt!1622048 (addValidProp!383 lm!1616 lambda!153246 hash!366 newBucket!194))))

(declare-fun b!4422328 () Bool)

(declare-fun res!1827860 () Bool)

(assert (=> b!4422328 (=> (not res!1827860) (not e!2753515))))

(declare-fun allKeysSameHash!699 (List!49680 (_ BitVec 64) Hashable!5133) Bool)

(assert (=> b!4422328 (= res!1827860 (allKeysSameHash!699 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4422329 () Bool)

(declare-fun res!1827856 () Bool)

(assert (=> b!4422329 (=> (not res!1827856) (not e!2753513))))

(assert (=> b!4422329 (= res!1827856 (forall!9542 (toList!3465 lm!1616) lambda!153246))))

(declare-fun b!4422330 () Bool)

(declare-fun res!1827861 () Bool)

(assert (=> b!4422330 (=> res!1827861 e!2753509)))

(declare-fun lt!1622055 () ListMap!2709)

(declare-fun eq!397 (ListMap!2709 ListMap!2709) Bool)

(declare-fun addToMapMapFromBucket!376 (List!49680 ListMap!2709) ListMap!2709)

(assert (=> b!4422330 (= res!1827861 (not (eq!397 lt!1622052 (addToMapMapFromBucket!376 (_2!27962 (h!55236 (toList!3465 lm!1616))) lt!1622055))))))

(declare-fun b!4422331 () Bool)

(assert (=> b!4422331 (= e!2753514 e!2753513)))

(declare-fun res!1827859 () Bool)

(assert (=> b!4422331 (=> (not res!1827859) (not e!2753513))))

(assert (=> b!4422331 (= res!1827859 e!2753518)))

(declare-fun res!1827865 () Bool)

(assert (=> b!4422331 (=> res!1827865 e!2753518)))

(assert (=> b!4422331 (= res!1827865 e!2753510)))

(declare-fun res!1827869 () Bool)

(assert (=> b!4422331 (=> (not res!1827869) (not e!2753510))))

(assert (=> b!4422331 (= res!1827869 lt!1622053)))

(assert (=> b!4422331 (= lt!1622053 (contains!12045 lm!1616 hash!366))))

(declare-fun b!4422332 () Bool)

(declare-fun res!1827858 () Bool)

(assert (=> b!4422332 (=> (not res!1827858) (not e!2753513))))

(declare-fun noDuplicateKeys!739 (List!49680) Bool)

(assert (=> b!4422332 (= res!1827858 (noDuplicateKeys!739 newBucket!194))))

(declare-fun b!4422333 () Bool)

(assert (=> b!4422333 (= e!2753511 e!2753509)))

(declare-fun res!1827863 () Bool)

(assert (=> b!4422333 (=> res!1827863 e!2753509)))

(declare-fun head!9200 (ListLongMap!2115) tuple2!49336)

(assert (=> b!4422333 (= res!1827863 (= (head!9200 lm!1616) lt!1622046))))

(declare-fun lt!1622051 () ListMap!2709)

(declare-fun +!1063 (ListMap!2709 tuple2!49334) ListMap!2709)

(assert (=> b!4422333 (eq!397 lt!1622051 (+!1063 lt!1622055 (tuple2!49335 key!3717 newValue!93)))))

(declare-fun lt!1622045 () ListLongMap!2115)

(assert (=> b!4422333 (= lt!1622055 (extractMap!800 (toList!3465 lt!1622045)))))

(assert (=> b!4422333 (= lt!1622051 (extractMap!800 (toList!3465 (+!1062 lt!1622045 lt!1622046))))))

(declare-fun lt!1622047 () Unit!81461)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!113 (ListLongMap!2115 (_ BitVec 64) List!49680 K!10920 V!11166 Hashable!5133) Unit!81461)

(assert (=> b!4422333 (= lt!1622047 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!113 lt!1622045 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7250 (ListLongMap!2115) ListLongMap!2115)

(assert (=> b!4422333 (= lt!1622045 (tail!7250 lm!1616))))

(declare-fun lt!1622050 () Unit!81461)

(assert (=> b!4422333 (= lt!1622050 e!2753517)))

(declare-fun c!752739 () Bool)

(declare-fun tail!7251 (List!49681) List!49681)

(assert (=> b!4422333 (= c!752739 (contains!12046 (extractMap!800 (tail!7251 (toList!3465 lm!1616))) key!3717))))

(assert (= (and start!431160 res!1827857) b!4422323))

(assert (= (and b!4422323 res!1827868) b!4422316))

(assert (= (and b!4422316 res!1827867) b!4422328))

(assert (= (and b!4422328 res!1827860) b!4422324))

(assert (= (and b!4422324 res!1827855) b!4422331))

(assert (= (and b!4422331 res!1827869) b!4422315))

(assert (= (and b!4422331 (not res!1827865)) b!4422320))

(assert (= (and b!4422331 res!1827859) b!4422332))

(assert (= (and b!4422332 res!1827858) b!4422329))

(assert (= (and b!4422329 res!1827856) b!4422327))

(assert (= (and b!4422327 (not res!1827866)) b!4422325))

(assert (= (and b!4422325 (not res!1827854)) b!4422333))

(assert (= (and b!4422333 c!752739) b!4422322))

(assert (= (and b!4422333 (not c!752739)) b!4422321))

(assert (= (and b!4422333 (not res!1827863)) b!4422330))

(assert (= (and b!4422330 (not res!1827861)) b!4422317))

(assert (= (and b!4422317 (not res!1827864)) b!4422318))

(assert (= (and b!4422318 (not res!1827862)) b!4422319))

(assert (= (and start!431160 ((_ is Cons!49556) newBucket!194)) b!4422326))

(assert (= start!431160 b!4422314))

(declare-fun m!5100363 () Bool)

(assert (=> b!4422324 m!5100363))

(declare-fun m!5100365 () Bool)

(assert (=> b!4422324 m!5100365))

(declare-fun m!5100367 () Bool)

(assert (=> b!4422323 m!5100367))

(declare-fun m!5100369 () Bool)

(assert (=> b!4422333 m!5100369))

(declare-fun m!5100371 () Bool)

(assert (=> b!4422333 m!5100371))

(declare-fun m!5100373 () Bool)

(assert (=> b!4422333 m!5100373))

(declare-fun m!5100375 () Bool)

(assert (=> b!4422333 m!5100375))

(declare-fun m!5100377 () Bool)

(assert (=> b!4422333 m!5100377))

(declare-fun m!5100379 () Bool)

(assert (=> b!4422333 m!5100379))

(declare-fun m!5100381 () Bool)

(assert (=> b!4422333 m!5100381))

(declare-fun m!5100383 () Bool)

(assert (=> b!4422333 m!5100383))

(declare-fun m!5100385 () Bool)

(assert (=> b!4422333 m!5100385))

(assert (=> b!4422333 m!5100379))

(assert (=> b!4422333 m!5100381))

(declare-fun m!5100387 () Bool)

(assert (=> b!4422333 m!5100387))

(assert (=> b!4422333 m!5100375))

(declare-fun m!5100389 () Bool)

(assert (=> b!4422333 m!5100389))

(declare-fun m!5100391 () Bool)

(assert (=> b!4422318 m!5100391))

(declare-fun m!5100393 () Bool)

(assert (=> b!4422329 m!5100393))

(declare-fun m!5100395 () Bool)

(assert (=> b!4422330 m!5100395))

(assert (=> b!4422330 m!5100395))

(declare-fun m!5100397 () Bool)

(assert (=> b!4422330 m!5100397))

(declare-fun m!5100399 () Bool)

(assert (=> b!4422315 m!5100399))

(declare-fun m!5100401 () Bool)

(assert (=> b!4422322 m!5100401))

(declare-fun m!5100403 () Bool)

(assert (=> b!4422327 m!5100403))

(assert (=> b!4422327 m!5100403))

(declare-fun m!5100405 () Bool)

(assert (=> b!4422327 m!5100405))

(declare-fun m!5100407 () Bool)

(assert (=> b!4422327 m!5100407))

(declare-fun m!5100409 () Bool)

(assert (=> b!4422328 m!5100409))

(declare-fun m!5100411 () Bool)

(assert (=> b!4422316 m!5100411))

(declare-fun m!5100413 () Bool)

(assert (=> b!4422331 m!5100413))

(declare-fun m!5100415 () Bool)

(assert (=> b!4422332 m!5100415))

(assert (=> start!431160 m!5100393))

(declare-fun m!5100417 () Bool)

(assert (=> start!431160 m!5100417))

(assert (=> b!4422317 m!5100393))

(check-sat tp_is_empty!26201 (not b!4422326) (not b!4422324) (not b!4422330) (not b!4422332) (not b!4422323) tp_is_empty!26203 (not b!4422322) (not b!4422317) (not b!4422333) (not b!4422314) (not b!4422331) (not b!4422328) (not b!4422315) (not start!431160) (not b!4422318) (not b!4422329) (not b!4422327) (not b!4422316))
(check-sat)
