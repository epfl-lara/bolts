; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431488 () Bool)

(assert start!431488)

(declare-fun b!4424015 () Bool)

(declare-fun res!1828798 () Bool)

(declare-fun e!2754581 () Bool)

(assert (=> b!4424015 (=> (not res!1828798) (not e!2754581))))

(declare-datatypes ((V!11181 0))(
  ( (V!11182 (val!17019 Int)) )
))
(declare-datatypes ((K!10935 0))(
  ( (K!10936 (val!17020 Int)) )
))
(declare-datatypes ((tuple2!49358 0))(
  ( (tuple2!49359 (_1!27973 K!10935) (_2!27973 V!11181)) )
))
(declare-datatypes ((List!49695 0))(
  ( (Nil!49571) (Cons!49571 (h!55254 tuple2!49358) (t!356633 List!49695)) )
))
(declare-datatypes ((tuple2!49360 0))(
  ( (tuple2!49361 (_1!27974 (_ BitVec 64)) (_2!27974 List!49695)) )
))
(declare-datatypes ((List!49696 0))(
  ( (Nil!49572) (Cons!49572 (h!55255 tuple2!49360) (t!356634 List!49696)) )
))
(declare-datatypes ((ListLongMap!2127 0))(
  ( (ListLongMap!2128 (toList!3477 List!49696)) )
))
(declare-fun lm!1616 () ListLongMap!2127)

(declare-fun lambda!153630 () Int)

(declare-fun forall!9554 (List!49696 Int) Bool)

(assert (=> b!4424015 (= res!1828798 (forall!9554 (toList!3477 lm!1616) lambda!153630))))

(declare-fun e!2754587 () Bool)

(declare-fun newValue!93 () V!11181)

(declare-fun newBucket!194 () List!49695)

(declare-fun b!4424016 () Bool)

(declare-fun lt!1623446 () Bool)

(declare-fun key!3717 () K!10935)

(assert (=> b!4424016 (= e!2754587 (and (not lt!1623446) (= newBucket!194 (Cons!49571 (tuple2!49359 key!3717 newValue!93) Nil!49571))))))

(declare-fun b!4424017 () Bool)

(declare-fun res!1828802 () Bool)

(assert (=> b!4424017 (=> (not res!1828802) (not e!2754581))))

(declare-fun noDuplicateKeys!745 (List!49695) Bool)

(assert (=> b!4424017 (= res!1828802 (noDuplicateKeys!745 newBucket!194))))

(declare-fun b!4424018 () Bool)

(declare-datatypes ((Unit!81695 0))(
  ( (Unit!81696) )
))
(declare-fun e!2754579 () Unit!81695)

(declare-fun Unit!81697 () Unit!81695)

(assert (=> b!4424018 (= e!2754579 Unit!81697)))

(declare-fun lt!1623441 () Unit!81695)

(declare-datatypes ((Hashable!5139 0))(
  ( (HashableExt!5138 (__x!30842 Int)) )
))
(declare-fun hashF!1220 () Hashable!5139)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!32 (ListLongMap!2127 K!10935 Hashable!5139) Unit!81695)

(assert (=> b!4424018 (= lt!1623441 (lemmaExtractTailMapContainsThenExtractMapDoes!32 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4424018 false))

(declare-fun b!4424019 () Bool)

(declare-fun res!1828793 () Bool)

(declare-fun e!2754585 () Bool)

(assert (=> b!4424019 (=> (not res!1828793) (not e!2754585))))

(declare-fun allKeysSameHashInMap!851 (ListLongMap!2127 Hashable!5139) Bool)

(assert (=> b!4424019 (= res!1828793 (allKeysSameHashInMap!851 lm!1616 hashF!1220))))

(declare-fun b!4424020 () Bool)

(declare-fun e!2754580 () Bool)

(assert (=> b!4424020 (= e!2754580 e!2754581)))

(declare-fun res!1828801 () Bool)

(assert (=> b!4424020 (=> (not res!1828801) (not e!2754581))))

(assert (=> b!4424020 (= res!1828801 e!2754587)))

(declare-fun res!1828807 () Bool)

(assert (=> b!4424020 (=> res!1828807 e!2754587)))

(declare-fun e!2754578 () Bool)

(assert (=> b!4424020 (= res!1828807 e!2754578)))

(declare-fun res!1828804 () Bool)

(assert (=> b!4424020 (=> (not res!1828804) (not e!2754578))))

(assert (=> b!4424020 (= res!1828804 lt!1623446)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12068 (ListLongMap!2127 (_ BitVec 64)) Bool)

(assert (=> b!4424020 (= lt!1623446 (contains!12068 lm!1616 hash!366))))

(declare-fun b!4424021 () Bool)

(declare-fun Unit!81698 () Unit!81695)

(assert (=> b!4424021 (= e!2754579 Unit!81698)))

(declare-fun res!1828797 () Bool)

(assert (=> start!431488 (=> (not res!1828797) (not e!2754585))))

(assert (=> start!431488 (= res!1828797 (forall!9554 (toList!3477 lm!1616) lambda!153630))))

(assert (=> start!431488 e!2754585))

(declare-fun tp_is_empty!26225 () Bool)

(assert (=> start!431488 tp_is_empty!26225))

(declare-fun tp_is_empty!26227 () Bool)

(assert (=> start!431488 tp_is_empty!26227))

(declare-fun e!2754584 () Bool)

(assert (=> start!431488 e!2754584))

(declare-fun e!2754583 () Bool)

(declare-fun inv!65121 (ListLongMap!2127) Bool)

(assert (=> start!431488 (and (inv!65121 lm!1616) e!2754583)))

(assert (=> start!431488 true))

(declare-fun b!4424022 () Bool)

(declare-fun tp!1333143 () Bool)

(assert (=> b!4424022 (= e!2754583 tp!1333143)))

(declare-fun b!4424023 () Bool)

(declare-fun e!2754582 () Bool)

(declare-fun e!2754588 () Bool)

(assert (=> b!4424023 (= e!2754582 e!2754588)))

(declare-fun res!1828800 () Bool)

(assert (=> b!4424023 (=> res!1828800 e!2754588)))

(declare-fun containsKey!1104 (List!49695 K!10935) Bool)

(assert (=> b!4424023 (= res!1828800 (containsKey!1104 (_2!27974 (h!55255 (toList!3477 lm!1616))) key!3717))))

(declare-fun apply!11597 (ListLongMap!2127 (_ BitVec 64)) List!49695)

(assert (=> b!4424023 (not (containsKey!1104 (apply!11597 lm!1616 (_1!27974 (h!55255 (toList!3477 lm!1616)))) key!3717))))

(declare-fun lt!1623436 () Unit!81695)

(declare-fun lemmaNotSameHashThenCannotContainKey!124 (ListLongMap!2127 K!10935 (_ BitVec 64) Hashable!5139) Unit!81695)

(assert (=> b!4424023 (= lt!1623436 (lemmaNotSameHashThenCannotContainKey!124 lm!1616 key!3717 (_1!27974 (h!55255 (toList!3477 lm!1616))) hashF!1220))))

(declare-fun tp!1333144 () Bool)

(declare-fun b!4424024 () Bool)

(assert (=> b!4424024 (= e!2754584 (and tp_is_empty!26227 tp_is_empty!26225 tp!1333144))))

(declare-fun b!4424025 () Bool)

(assert (=> b!4424025 (= e!2754578 (= newBucket!194 (Cons!49571 (tuple2!49359 key!3717 newValue!93) (apply!11597 lm!1616 hash!366))))))

(declare-fun b!4424026 () Bool)

(declare-fun res!1828796 () Bool)

(assert (=> b!4424026 (=> (not res!1828796) (not e!2754585))))

(declare-fun hash!2108 (Hashable!5139 K!10935) (_ BitVec 64))

(assert (=> b!4424026 (= res!1828796 (= (hash!2108 hashF!1220 key!3717) hash!366))))

(declare-fun b!4424027 () Bool)

(assert (=> b!4424027 (= e!2754588 true)))

(declare-fun lt!1623442 () Bool)

(assert (=> b!4424027 (= lt!1623442 (noDuplicateKeys!745 (_2!27974 (h!55255 (toList!3477 lm!1616)))))))

(declare-fun b!4424028 () Bool)

(declare-fun res!1828795 () Bool)

(declare-fun e!2754586 () Bool)

(assert (=> b!4424028 (=> res!1828795 e!2754586)))

(get-info :version)

(assert (=> b!4424028 (= res!1828795 (or (and ((_ is Cons!49572) (toList!3477 lm!1616)) (= (_1!27974 (h!55255 (toList!3477 lm!1616))) hash!366)) (not ((_ is Cons!49572) (toList!3477 lm!1616))) (= (_1!27974 (h!55255 (toList!3477 lm!1616))) hash!366)))))

(declare-fun b!4424029 () Bool)

(declare-fun res!1828805 () Bool)

(assert (=> b!4424029 (=> res!1828805 e!2754582)))

(declare-datatypes ((ListMap!2721 0))(
  ( (ListMap!2722 (toList!3478 List!49695)) )
))
(declare-fun lt!1623447 () ListMap!2721)

(declare-fun lt!1623439 () ListMap!2721)

(declare-fun eq!403 (ListMap!2721 ListMap!2721) Bool)

(declare-fun addToMapMapFromBucket!382 (List!49695 ListMap!2721) ListMap!2721)

(assert (=> b!4424029 (= res!1828805 (not (eq!403 lt!1623447 (addToMapMapFromBucket!382 (_2!27974 (h!55255 (toList!3477 lm!1616))) lt!1623439))))))

(declare-fun b!4424030 () Bool)

(declare-fun res!1828794 () Bool)

(assert (=> b!4424030 (=> (not res!1828794) (not e!2754585))))

(declare-fun allKeysSameHash!705 (List!49695 (_ BitVec 64) Hashable!5139) Bool)

(assert (=> b!4424030 (= res!1828794 (allKeysSameHash!705 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4424031 () Bool)

(assert (=> b!4424031 (= e!2754581 (not e!2754586))))

(declare-fun res!1828803 () Bool)

(assert (=> b!4424031 (=> res!1828803 e!2754586)))

(declare-fun lt!1623435 () ListLongMap!2127)

(assert (=> b!4424031 (= res!1828803 (not (forall!9554 (toList!3477 lt!1623435) lambda!153630)))))

(assert (=> b!4424031 (forall!9554 (toList!3477 lt!1623435) lambda!153630)))

(declare-fun lt!1623443 () tuple2!49360)

(declare-fun +!1074 (ListLongMap!2127 tuple2!49360) ListLongMap!2127)

(assert (=> b!4424031 (= lt!1623435 (+!1074 lm!1616 lt!1623443))))

(assert (=> b!4424031 (= lt!1623443 (tuple2!49361 hash!366 newBucket!194))))

(declare-fun lt!1623440 () Unit!81695)

(declare-fun addValidProp!389 (ListLongMap!2127 Int (_ BitVec 64) List!49695) Unit!81695)

(assert (=> b!4424031 (= lt!1623440 (addValidProp!389 lm!1616 lambda!153630 hash!366 newBucket!194))))

(declare-fun b!4424032 () Bool)

(assert (=> b!4424032 (= e!2754586 e!2754582)))

(declare-fun res!1828799 () Bool)

(assert (=> b!4424032 (=> res!1828799 e!2754582)))

(declare-fun head!9210 (ListLongMap!2127) tuple2!49360)

(assert (=> b!4424032 (= res!1828799 (= (head!9210 lm!1616) lt!1623443))))

(declare-fun lt!1623445 () ListMap!2721)

(declare-fun +!1075 (ListMap!2721 tuple2!49358) ListMap!2721)

(assert (=> b!4424032 (eq!403 lt!1623445 (+!1075 lt!1623439 (tuple2!49359 key!3717 newValue!93)))))

(declare-fun lt!1623444 () ListLongMap!2127)

(declare-fun extractMap!806 (List!49696) ListMap!2721)

(assert (=> b!4424032 (= lt!1623439 (extractMap!806 (toList!3477 lt!1623444)))))

(assert (=> b!4424032 (= lt!1623445 (extractMap!806 (toList!3477 (+!1074 lt!1623444 lt!1623443))))))

(declare-fun lt!1623437 () Unit!81695)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!119 (ListLongMap!2127 (_ BitVec 64) List!49695 K!10935 V!11181 Hashable!5139) Unit!81695)

(assert (=> b!4424032 (= lt!1623437 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!119 lt!1623444 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7262 (ListLongMap!2127) ListLongMap!2127)

(assert (=> b!4424032 (= lt!1623444 (tail!7262 lm!1616))))

(declare-fun lt!1623438 () Unit!81695)

(assert (=> b!4424032 (= lt!1623438 e!2754579)))

(declare-fun c!753055 () Bool)

(declare-fun contains!12069 (ListMap!2721 K!10935) Bool)

(declare-fun tail!7263 (List!49696) List!49696)

(assert (=> b!4424032 (= c!753055 (contains!12069 (extractMap!806 (tail!7263 (toList!3477 lm!1616))) key!3717))))

(declare-fun b!4424033 () Bool)

(assert (=> b!4424033 (= e!2754585 e!2754580)))

(declare-fun res!1828806 () Bool)

(assert (=> b!4424033 (=> (not res!1828806) (not e!2754580))))

(assert (=> b!4424033 (= res!1828806 (not (contains!12069 lt!1623447 key!3717)))))

(assert (=> b!4424033 (= lt!1623447 (extractMap!806 (toList!3477 lm!1616)))))

(assert (= (and start!431488 res!1828797) b!4424019))

(assert (= (and b!4424019 res!1828793) b!4424026))

(assert (= (and b!4424026 res!1828796) b!4424030))

(assert (= (and b!4424030 res!1828794) b!4424033))

(assert (= (and b!4424033 res!1828806) b!4424020))

(assert (= (and b!4424020 res!1828804) b!4424025))

(assert (= (and b!4424020 (not res!1828807)) b!4424016))

(assert (= (and b!4424020 res!1828801) b!4424017))

(assert (= (and b!4424017 res!1828802) b!4424015))

(assert (= (and b!4424015 res!1828798) b!4424031))

(assert (= (and b!4424031 (not res!1828803)) b!4424028))

(assert (= (and b!4424028 (not res!1828795)) b!4424032))

(assert (= (and b!4424032 c!753055) b!4424018))

(assert (= (and b!4424032 (not c!753055)) b!4424021))

(assert (= (and b!4424032 (not res!1828799)) b!4424029))

(assert (= (and b!4424029 (not res!1828805)) b!4424023))

(assert (= (and b!4424023 (not res!1828800)) b!4424027))

(assert (= (and start!431488 ((_ is Cons!49571) newBucket!194)) b!4424024))

(assert (= start!431488 b!4424022))

(declare-fun m!5103219 () Bool)

(assert (=> b!4424026 m!5103219))

(declare-fun m!5103221 () Bool)

(assert (=> start!431488 m!5103221))

(declare-fun m!5103223 () Bool)

(assert (=> start!431488 m!5103223))

(declare-fun m!5103225 () Bool)

(assert (=> b!4424027 m!5103225))

(declare-fun m!5103227 () Bool)

(assert (=> b!4424018 m!5103227))

(declare-fun m!5103229 () Bool)

(assert (=> b!4424029 m!5103229))

(assert (=> b!4424029 m!5103229))

(declare-fun m!5103231 () Bool)

(assert (=> b!4424029 m!5103231))

(declare-fun m!5103233 () Bool)

(assert (=> b!4424032 m!5103233))

(declare-fun m!5103235 () Bool)

(assert (=> b!4424032 m!5103235))

(declare-fun m!5103237 () Bool)

(assert (=> b!4424032 m!5103237))

(declare-fun m!5103239 () Bool)

(assert (=> b!4424032 m!5103239))

(assert (=> b!4424032 m!5103235))

(declare-fun m!5103241 () Bool)

(assert (=> b!4424032 m!5103241))

(declare-fun m!5103243 () Bool)

(assert (=> b!4424032 m!5103243))

(declare-fun m!5103245 () Bool)

(assert (=> b!4424032 m!5103245))

(declare-fun m!5103247 () Bool)

(assert (=> b!4424032 m!5103247))

(declare-fun m!5103249 () Bool)

(assert (=> b!4424032 m!5103249))

(assert (=> b!4424032 m!5103243))

(declare-fun m!5103251 () Bool)

(assert (=> b!4424032 m!5103251))

(declare-fun m!5103253 () Bool)

(assert (=> b!4424032 m!5103253))

(assert (=> b!4424032 m!5103233))

(declare-fun m!5103255 () Bool)

(assert (=> b!4424030 m!5103255))

(assert (=> b!4424015 m!5103221))

(declare-fun m!5103257 () Bool)

(assert (=> b!4424033 m!5103257))

(declare-fun m!5103259 () Bool)

(assert (=> b!4424033 m!5103259))

(declare-fun m!5103261 () Bool)

(assert (=> b!4424023 m!5103261))

(declare-fun m!5103263 () Bool)

(assert (=> b!4424023 m!5103263))

(assert (=> b!4424023 m!5103263))

(declare-fun m!5103265 () Bool)

(assert (=> b!4424023 m!5103265))

(declare-fun m!5103267 () Bool)

(assert (=> b!4424023 m!5103267))

(declare-fun m!5103269 () Bool)

(assert (=> b!4424017 m!5103269))

(declare-fun m!5103271 () Bool)

(assert (=> b!4424031 m!5103271))

(assert (=> b!4424031 m!5103271))

(declare-fun m!5103273 () Bool)

(assert (=> b!4424031 m!5103273))

(declare-fun m!5103275 () Bool)

(assert (=> b!4424031 m!5103275))

(declare-fun m!5103277 () Bool)

(assert (=> b!4424020 m!5103277))

(declare-fun m!5103279 () Bool)

(assert (=> b!4424019 m!5103279))

(declare-fun m!5103281 () Bool)

(assert (=> b!4424025 m!5103281))

(check-sat (not b!4424022) (not b!4424026) (not b!4424015) (not b!4424020) (not b!4424027) (not b!4424032) (not b!4424031) (not b!4424019) (not start!431488) (not b!4424033) (not b!4424030) (not b!4424017) (not b!4424024) tp_is_empty!26227 (not b!4424018) tp_is_empty!26225 (not b!4424025) (not b!4424029) (not b!4424023))
(check-sat)
