; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430082 () Bool)

(assert start!430082)

(declare-fun b!4416108 () Bool)

(declare-fun e!2749882 () Bool)

(declare-fun e!2749887 () Bool)

(assert (=> b!4416108 (= e!2749882 e!2749887)))

(declare-fun res!1824072 () Bool)

(assert (=> b!4416108 (=> res!1824072 e!2749887)))

(declare-datatypes ((K!10810 0))(
  ( (K!10811 (val!16919 Int)) )
))
(declare-datatypes ((V!11056 0))(
  ( (V!11057 (val!16920 Int)) )
))
(declare-datatypes ((tuple2!49158 0))(
  ( (tuple2!49159 (_1!27873 K!10810) (_2!27873 V!11056)) )
))
(declare-datatypes ((List!49575 0))(
  ( (Nil!49451) (Cons!49451 (h!55112 tuple2!49158) (t!356513 List!49575)) )
))
(declare-fun newBucket!194 () List!49575)

(declare-fun lt!1618005 () tuple2!49158)

(declare-fun lt!1618007 () List!49575)

(assert (=> b!4416108 (= res!1824072 (not (= newBucket!194 (Cons!49451 lt!1618005 lt!1618007))))))

(declare-datatypes ((tuple2!49160 0))(
  ( (tuple2!49161 (_1!27874 (_ BitVec 64)) (_2!27874 List!49575)) )
))
(declare-datatypes ((List!49576 0))(
  ( (Nil!49452) (Cons!49452 (h!55113 tuple2!49160) (t!356514 List!49576)) )
))
(declare-datatypes ((ListLongMap!2027 0))(
  ( (ListLongMap!2028 (toList!3377 List!49576)) )
))
(declare-fun lm!1616 () ListLongMap!2027)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11547 (ListLongMap!2027 (_ BitVec 64)) List!49575)

(assert (=> b!4416108 (= lt!1618007 (apply!11547 lm!1616 hash!366))))

(declare-fun key!3717 () K!10810)

(declare-fun newValue!93 () V!11056)

(assert (=> b!4416108 (= lt!1618005 (tuple2!49159 key!3717 newValue!93))))

(declare-fun b!4416109 () Bool)

(declare-fun res!1824077 () Bool)

(declare-fun e!2749886 () Bool)

(assert (=> b!4416109 (=> (not res!1824077) (not e!2749886))))

(declare-fun noDuplicateKeys!695 (List!49575) Bool)

(assert (=> b!4416109 (= res!1824077 (noDuplicateKeys!695 newBucket!194))))

(declare-fun tp!1332613 () Bool)

(declare-fun e!2749889 () Bool)

(declare-fun tp_is_empty!26027 () Bool)

(declare-fun tp_is_empty!26025 () Bool)

(declare-fun b!4416110 () Bool)

(assert (=> b!4416110 (= e!2749889 (and tp_is_empty!26027 tp_is_empty!26025 tp!1332613))))

(declare-fun b!4416111 () Bool)

(declare-fun res!1824089 () Bool)

(declare-fun e!2749891 () Bool)

(assert (=> b!4416111 (=> (not res!1824089) (not e!2749891))))

(declare-datatypes ((Hashable!5089 0))(
  ( (HashableExt!5088 (__x!30792 Int)) )
))
(declare-fun hashF!1220 () Hashable!5089)

(declare-fun allKeysSameHash!655 (List!49575 (_ BitVec 64) Hashable!5089) Bool)

(assert (=> b!4416111 (= res!1824089 (allKeysSameHash!655 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4416112 () Bool)

(declare-fun res!1824079 () Bool)

(assert (=> b!4416112 (=> (not res!1824079) (not e!2749886))))

(declare-fun lambda!151988 () Int)

(declare-fun forall!9478 (List!49576 Int) Bool)

(assert (=> b!4416112 (= res!1824079 (forall!9478 (toList!3377 lm!1616) lambda!151988))))

(declare-fun b!4416113 () Bool)

(declare-fun e!2749883 () Bool)

(assert (=> b!4416113 (= e!2749883 e!2749882)))

(declare-fun res!1824074 () Bool)

(assert (=> b!4416113 (=> res!1824074 e!2749882)))

(declare-datatypes ((ListMap!2621 0))(
  ( (ListMap!2622 (toList!3378 List!49575)) )
))
(declare-fun lt!1618015 () ListMap!2621)

(declare-fun lt!1618012 () ListMap!2621)

(assert (=> b!4416113 (= res!1824074 (not (= lt!1618015 lt!1618012)))))

(declare-fun lt!1618009 () ListMap!2621)

(declare-fun addToMapMapFromBucket!349 (List!49575 ListMap!2621) ListMap!2621)

(assert (=> b!4416113 (= lt!1618012 (addToMapMapFromBucket!349 newBucket!194 lt!1618009))))

(declare-fun lt!1618011 () ListLongMap!2027)

(declare-fun extractMap!756 (List!49576) ListMap!2621)

(assert (=> b!4416113 (= lt!1618015 (extractMap!756 (toList!3377 lt!1618011)))))

(assert (=> b!4416113 (= lt!1618009 (extractMap!756 (t!356514 (toList!3377 lm!1616))))))

(declare-fun b!4416114 () Bool)

(declare-fun e!2749888 () Bool)

(declare-fun e!2749890 () Bool)

(assert (=> b!4416114 (= e!2749888 e!2749890)))

(declare-fun res!1824088 () Bool)

(assert (=> b!4416114 (=> res!1824088 e!2749890)))

(declare-fun lt!1618006 () ListMap!2621)

(declare-fun eq!371 (ListMap!2621 ListMap!2621) Bool)

(assert (=> b!4416114 (= res!1824088 (not (eq!371 lt!1618012 lt!1618006)))))

(declare-fun lt!1618014 () ListMap!2621)

(assert (=> b!4416114 (eq!371 lt!1618014 lt!1618006)))

(declare-fun +!990 (ListMap!2621 tuple2!49158) ListMap!2621)

(assert (=> b!4416114 (= lt!1618006 (+!990 (addToMapMapFromBucket!349 lt!1618007 lt!1618009) lt!1618005))))

(declare-datatypes ((Unit!80903 0))(
  ( (Unit!80904) )
))
(declare-fun lt!1618008 () Unit!80903)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!166 (ListMap!2621 K!10810 V!11056 List!49575) Unit!80903)

(assert (=> b!4416114 (= lt!1618008 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!166 lt!1618009 key!3717 newValue!93 lt!1618007))))

(declare-fun e!2749892 () Bool)

(declare-fun b!4416115 () Bool)

(assert (=> b!4416115 (= e!2749892 (= newBucket!194 (Cons!49451 (tuple2!49159 key!3717 newValue!93) (apply!11547 lm!1616 hash!366))))))

(declare-fun res!1824082 () Bool)

(assert (=> start!430082 (=> (not res!1824082) (not e!2749891))))

(assert (=> start!430082 (= res!1824082 (forall!9478 (toList!3377 lm!1616) lambda!151988))))

(assert (=> start!430082 e!2749891))

(assert (=> start!430082 tp_is_empty!26025))

(assert (=> start!430082 tp_is_empty!26027))

(assert (=> start!430082 e!2749889))

(declare-fun e!2749884 () Bool)

(declare-fun inv!64996 (ListLongMap!2027) Bool)

(assert (=> start!430082 (and (inv!64996 lm!1616) e!2749884)))

(assert (=> start!430082 true))

(declare-fun b!4416116 () Bool)

(declare-fun res!1824087 () Bool)

(assert (=> b!4416116 (=> res!1824087 e!2749883)))

(declare-fun lt!1618003 () Bool)

(get-info :version)

(assert (=> b!4416116 (= res!1824087 (or (not ((_ is Cons!49452) (toList!3377 lm!1616))) (not (= (_1!27874 (h!55113 (toList!3377 lm!1616))) hash!366)) lt!1618003))))

(declare-fun b!4416117 () Bool)

(assert (=> b!4416117 (= e!2749887 e!2749888)))

(declare-fun res!1824086 () Bool)

(assert (=> b!4416117 (=> res!1824086 e!2749888)))

(assert (=> b!4416117 (= res!1824086 (not (= lt!1618012 lt!1618014)))))

(assert (=> b!4416117 (= lt!1618014 (addToMapMapFromBucket!349 lt!1618007 (+!990 lt!1618009 lt!1618005)))))

(declare-fun b!4416118 () Bool)

(declare-fun res!1824078 () Bool)

(assert (=> b!4416118 (=> (not res!1824078) (not e!2749891))))

(declare-fun contains!11909 (ListMap!2621 K!10810) Bool)

(assert (=> b!4416118 (= res!1824078 (not (contains!11909 (extractMap!756 (toList!3377 lm!1616)) key!3717)))))

(declare-fun b!4416119 () Bool)

(declare-fun res!1824073 () Bool)

(assert (=> b!4416119 (=> (not res!1824073) (not e!2749891))))

(declare-fun hash!2010 (Hashable!5089 K!10810) (_ BitVec 64))

(assert (=> b!4416119 (= res!1824073 (= (hash!2010 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416120 () Bool)

(assert (=> b!4416120 (= e!2749891 e!2749886)))

(declare-fun res!1824081 () Bool)

(assert (=> b!4416120 (=> (not res!1824081) (not e!2749886))))

(declare-fun e!2749885 () Bool)

(assert (=> b!4416120 (= res!1824081 e!2749885)))

(declare-fun res!1824075 () Bool)

(assert (=> b!4416120 (=> res!1824075 e!2749885)))

(assert (=> b!4416120 (= res!1824075 e!2749892)))

(declare-fun res!1824080 () Bool)

(assert (=> b!4416120 (=> (not res!1824080) (not e!2749892))))

(assert (=> b!4416120 (= res!1824080 (not lt!1618003))))

(declare-fun lt!1618004 () Bool)

(assert (=> b!4416120 (= lt!1618003 (not lt!1618004))))

(declare-fun contains!11910 (ListLongMap!2027 (_ BitVec 64)) Bool)

(assert (=> b!4416120 (= lt!1618004 (contains!11910 lm!1616 hash!366))))

(declare-fun b!4416121 () Bool)

(declare-fun tp!1332614 () Bool)

(assert (=> b!4416121 (= e!2749884 tp!1332614)))

(declare-fun b!4416122 () Bool)

(assert (=> b!4416122 (= e!2749886 (not e!2749883))))

(declare-fun res!1824085 () Bool)

(assert (=> b!4416122 (=> res!1824085 e!2749883)))

(assert (=> b!4416122 (= res!1824085 (not (forall!9478 (toList!3377 lt!1618011) lambda!151988)))))

(assert (=> b!4416122 (forall!9478 (toList!3377 lt!1618011) lambda!151988)))

(declare-fun lt!1618010 () tuple2!49160)

(declare-fun +!991 (ListLongMap!2027 tuple2!49160) ListLongMap!2027)

(assert (=> b!4416122 (= lt!1618011 (+!991 lm!1616 lt!1618010))))

(assert (=> b!4416122 (= lt!1618010 (tuple2!49161 hash!366 newBucket!194))))

(declare-fun lt!1618013 () Unit!80903)

(declare-fun addValidProp!339 (ListLongMap!2027 Int (_ BitVec 64) List!49575) Unit!80903)

(assert (=> b!4416122 (= lt!1618013 (addValidProp!339 lm!1616 lambda!151988 hash!366 newBucket!194))))

(declare-fun b!4416123 () Bool)

(declare-fun res!1824084 () Bool)

(assert (=> b!4416123 (=> res!1824084 e!2749883)))

(declare-fun tail!7183 (List!49576) List!49576)

(assert (=> b!4416123 (= res!1824084 (not (= (tail!7183 (toList!3377 lt!1618011)) (t!356514 (toList!3377 lm!1616)))))))

(declare-fun b!4416124 () Bool)

(assert (=> b!4416124 (= e!2749890 (noDuplicateKeys!695 lt!1618007))))

(declare-fun b!4416125 () Bool)

(declare-fun res!1824076 () Bool)

(assert (=> b!4416125 (=> (not res!1824076) (not e!2749891))))

(declare-fun allKeysSameHashInMap!801 (ListLongMap!2027 Hashable!5089) Bool)

(assert (=> b!4416125 (= res!1824076 (allKeysSameHashInMap!801 lm!1616 hashF!1220))))

(declare-fun b!4416126 () Bool)

(assert (=> b!4416126 (= e!2749885 (and (not lt!1618004) (= newBucket!194 (Cons!49451 (tuple2!49159 key!3717 newValue!93) Nil!49451))))))

(declare-fun b!4416127 () Bool)

(declare-fun res!1824083 () Bool)

(assert (=> b!4416127 (=> res!1824083 e!2749883)))

(declare-fun head!9174 (List!49576) tuple2!49160)

(assert (=> b!4416127 (= res!1824083 (not (= (head!9174 (toList!3377 lt!1618011)) lt!1618010)))))

(assert (= (and start!430082 res!1824082) b!4416125))

(assert (= (and b!4416125 res!1824076) b!4416119))

(assert (= (and b!4416119 res!1824073) b!4416111))

(assert (= (and b!4416111 res!1824089) b!4416118))

(assert (= (and b!4416118 res!1824078) b!4416120))

(assert (= (and b!4416120 res!1824080) b!4416115))

(assert (= (and b!4416120 (not res!1824075)) b!4416126))

(assert (= (and b!4416120 res!1824081) b!4416109))

(assert (= (and b!4416109 res!1824077) b!4416112))

(assert (= (and b!4416112 res!1824079) b!4416122))

(assert (= (and b!4416122 (not res!1824085)) b!4416116))

(assert (= (and b!4416116 (not res!1824087)) b!4416127))

(assert (= (and b!4416127 (not res!1824083)) b!4416123))

(assert (= (and b!4416123 (not res!1824084)) b!4416113))

(assert (= (and b!4416113 (not res!1824074)) b!4416108))

(assert (= (and b!4416108 (not res!1824072)) b!4416117))

(assert (= (and b!4416117 (not res!1824086)) b!4416114))

(assert (= (and b!4416114 (not res!1824088)) b!4416124))

(assert (= (and start!430082 ((_ is Cons!49451) newBucket!194)) b!4416110))

(assert (= start!430082 b!4416121))

(declare-fun m!5092389 () Bool)

(assert (=> b!4416108 m!5092389))

(declare-fun m!5092391 () Bool)

(assert (=> b!4416118 m!5092391))

(assert (=> b!4416118 m!5092391))

(declare-fun m!5092393 () Bool)

(assert (=> b!4416118 m!5092393))

(declare-fun m!5092395 () Bool)

(assert (=> b!4416119 m!5092395))

(declare-fun m!5092397 () Bool)

(assert (=> b!4416123 m!5092397))

(declare-fun m!5092399 () Bool)

(assert (=> b!4416112 m!5092399))

(declare-fun m!5092401 () Bool)

(assert (=> b!4416122 m!5092401))

(assert (=> b!4416122 m!5092401))

(declare-fun m!5092403 () Bool)

(assert (=> b!4416122 m!5092403))

(declare-fun m!5092405 () Bool)

(assert (=> b!4416122 m!5092405))

(declare-fun m!5092407 () Bool)

(assert (=> b!4416124 m!5092407))

(declare-fun m!5092409 () Bool)

(assert (=> b!4416111 m!5092409))

(declare-fun m!5092411 () Bool)

(assert (=> b!4416127 m!5092411))

(declare-fun m!5092413 () Bool)

(assert (=> b!4416113 m!5092413))

(declare-fun m!5092415 () Bool)

(assert (=> b!4416113 m!5092415))

(declare-fun m!5092417 () Bool)

(assert (=> b!4416113 m!5092417))

(declare-fun m!5092419 () Bool)

(assert (=> b!4416120 m!5092419))

(declare-fun m!5092421 () Bool)

(assert (=> b!4416117 m!5092421))

(assert (=> b!4416117 m!5092421))

(declare-fun m!5092423 () Bool)

(assert (=> b!4416117 m!5092423))

(assert (=> start!430082 m!5092399))

(declare-fun m!5092425 () Bool)

(assert (=> start!430082 m!5092425))

(declare-fun m!5092427 () Bool)

(assert (=> b!4416114 m!5092427))

(declare-fun m!5092429 () Bool)

(assert (=> b!4416114 m!5092429))

(declare-fun m!5092431 () Bool)

(assert (=> b!4416114 m!5092431))

(declare-fun m!5092433 () Bool)

(assert (=> b!4416114 m!5092433))

(declare-fun m!5092435 () Bool)

(assert (=> b!4416114 m!5092435))

(assert (=> b!4416114 m!5092427))

(declare-fun m!5092437 () Bool)

(assert (=> b!4416109 m!5092437))

(assert (=> b!4416115 m!5092389))

(declare-fun m!5092439 () Bool)

(assert (=> b!4416125 m!5092439))

(check-sat (not b!4416115) (not b!4416114) (not b!4416118) (not b!4416113) (not b!4416119) tp_is_empty!26027 (not start!430082) (not b!4416117) (not b!4416123) (not b!4416110) (not b!4416127) tp_is_empty!26025 (not b!4416109) (not b!4416111) (not b!4416125) (not b!4416120) (not b!4416124) (not b!4416108) (not b!4416112) (not b!4416121) (not b!4416122))
(check-sat)
(get-model)

(declare-fun d!1338022 () Bool)

(declare-fun hash!2011 (Hashable!5089 K!10810) (_ BitVec 64))

(assert (=> d!1338022 (= (hash!2010 hashF!1220 key!3717) (hash!2011 hashF!1220 key!3717))))

(declare-fun bs!753554 () Bool)

(assert (= bs!753554 d!1338022))

(declare-fun m!5092451 () Bool)

(assert (=> bs!753554 m!5092451))

(assert (=> b!4416119 d!1338022))

(declare-fun d!1338024 () Bool)

(declare-fun res!1824100 () Bool)

(declare-fun e!2749903 () Bool)

(assert (=> d!1338024 (=> res!1824100 e!2749903)))

(assert (=> d!1338024 (= res!1824100 (not ((_ is Cons!49451) newBucket!194)))))

(assert (=> d!1338024 (= (noDuplicateKeys!695 newBucket!194) e!2749903)))

(declare-fun b!4416142 () Bool)

(declare-fun e!2749904 () Bool)

(assert (=> b!4416142 (= e!2749903 e!2749904)))

(declare-fun res!1824101 () Bool)

(assert (=> b!4416142 (=> (not res!1824101) (not e!2749904))))

(declare-fun containsKey!1043 (List!49575 K!10810) Bool)

(assert (=> b!4416142 (= res!1824101 (not (containsKey!1043 (t!356513 newBucket!194) (_1!27873 (h!55112 newBucket!194)))))))

(declare-fun b!4416143 () Bool)

(assert (=> b!4416143 (= e!2749904 (noDuplicateKeys!695 (t!356513 newBucket!194)))))

(assert (= (and d!1338024 (not res!1824100)) b!4416142))

(assert (= (and b!4416142 res!1824101) b!4416143))

(declare-fun m!5092453 () Bool)

(assert (=> b!4416142 m!5092453))

(declare-fun m!5092455 () Bool)

(assert (=> b!4416143 m!5092455))

(assert (=> b!4416109 d!1338024))

(declare-fun d!1338026 () Bool)

(declare-fun e!2749910 () Bool)

(assert (=> d!1338026 e!2749910))

(declare-fun res!1824104 () Bool)

(assert (=> d!1338026 (=> res!1824104 e!2749910)))

(declare-fun lt!1618027 () Bool)

(assert (=> d!1338026 (= res!1824104 (not lt!1618027))))

(declare-fun lt!1618029 () Bool)

(assert (=> d!1338026 (= lt!1618027 lt!1618029)))

(declare-fun lt!1618028 () Unit!80903)

(declare-fun e!2749909 () Unit!80903)

(assert (=> d!1338026 (= lt!1618028 e!2749909)))

(declare-fun c!751846 () Bool)

(assert (=> d!1338026 (= c!751846 lt!1618029)))

(declare-fun containsKey!1044 (List!49576 (_ BitVec 64)) Bool)

(assert (=> d!1338026 (= lt!1618029 (containsKey!1044 (toList!3377 lm!1616) hash!366))))

(assert (=> d!1338026 (= (contains!11910 lm!1616 hash!366) lt!1618027)))

(declare-fun b!4416150 () Bool)

(declare-fun lt!1618030 () Unit!80903)

(assert (=> b!4416150 (= e!2749909 lt!1618030)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!573 (List!49576 (_ BitVec 64)) Unit!80903)

(assert (=> b!4416150 (= lt!1618030 (lemmaContainsKeyImpliesGetValueByKeyDefined!573 (toList!3377 lm!1616) hash!366))))

(declare-datatypes ((Option!10679 0))(
  ( (None!10678) (Some!10678 (v!43838 List!49575)) )
))
(declare-fun isDefined!7970 (Option!10679) Bool)

(declare-fun getValueByKey!665 (List!49576 (_ BitVec 64)) Option!10679)

(assert (=> b!4416150 (isDefined!7970 (getValueByKey!665 (toList!3377 lm!1616) hash!366))))

(declare-fun b!4416151 () Bool)

(declare-fun Unit!80928 () Unit!80903)

(assert (=> b!4416151 (= e!2749909 Unit!80928)))

(declare-fun b!4416152 () Bool)

(assert (=> b!4416152 (= e!2749910 (isDefined!7970 (getValueByKey!665 (toList!3377 lm!1616) hash!366)))))

(assert (= (and d!1338026 c!751846) b!4416150))

(assert (= (and d!1338026 (not c!751846)) b!4416151))

(assert (= (and d!1338026 (not res!1824104)) b!4416152))

(declare-fun m!5092469 () Bool)

(assert (=> d!1338026 m!5092469))

(declare-fun m!5092471 () Bool)

(assert (=> b!4416150 m!5092471))

(declare-fun m!5092473 () Bool)

(assert (=> b!4416150 m!5092473))

(assert (=> b!4416150 m!5092473))

(declare-fun m!5092475 () Bool)

(assert (=> b!4416150 m!5092475))

(assert (=> b!4416152 m!5092473))

(assert (=> b!4416152 m!5092473))

(assert (=> b!4416152 m!5092475))

(assert (=> b!4416120 d!1338026))

(declare-fun b!4416171 () Bool)

(declare-fun e!2749925 () Unit!80903)

(declare-fun Unit!80932 () Unit!80903)

(assert (=> b!4416171 (= e!2749925 Unit!80932)))

(declare-fun b!4416172 () Bool)

(declare-datatypes ((List!49577 0))(
  ( (Nil!49453) (Cons!49453 (h!55116 K!10810) (t!356515 List!49577)) )
))
(declare-fun e!2749923 () List!49577)

(declare-fun keys!16851 (ListMap!2621) List!49577)

(assert (=> b!4416172 (= e!2749923 (keys!16851 (extractMap!756 (toList!3377 lm!1616))))))

(declare-fun d!1338030 () Bool)

(declare-fun e!2749924 () Bool)

(assert (=> d!1338030 e!2749924))

(declare-fun res!1824113 () Bool)

(assert (=> d!1338030 (=> res!1824113 e!2749924)))

(declare-fun e!2749926 () Bool)

(assert (=> d!1338030 (= res!1824113 e!2749926)))

(declare-fun res!1824111 () Bool)

(assert (=> d!1338030 (=> (not res!1824111) (not e!2749926))))

(declare-fun lt!1618054 () Bool)

(assert (=> d!1338030 (= res!1824111 (not lt!1618054))))

(declare-fun lt!1618051 () Bool)

(assert (=> d!1338030 (= lt!1618054 lt!1618051)))

(declare-fun lt!1618052 () Unit!80903)

(declare-fun e!2749927 () Unit!80903)

(assert (=> d!1338030 (= lt!1618052 e!2749927)))

(declare-fun c!751855 () Bool)

(assert (=> d!1338030 (= c!751855 lt!1618051)))

(declare-fun containsKey!1045 (List!49575 K!10810) Bool)

(assert (=> d!1338030 (= lt!1618051 (containsKey!1045 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(assert (=> d!1338030 (= (contains!11909 (extractMap!756 (toList!3377 lm!1616)) key!3717) lt!1618054)))

(declare-fun b!4416173 () Bool)

(declare-fun contains!11912 (List!49577 K!10810) Bool)

(assert (=> b!4416173 (= e!2749926 (not (contains!11912 (keys!16851 (extractMap!756 (toList!3377 lm!1616))) key!3717)))))

(declare-fun bm!307334 () Bool)

(declare-fun call!307339 () Bool)

(assert (=> bm!307334 (= call!307339 (contains!11912 e!2749923 key!3717))))

(declare-fun c!751853 () Bool)

(assert (=> bm!307334 (= c!751853 c!751855)))

(declare-fun b!4416174 () Bool)

(declare-fun e!2749928 () Bool)

(assert (=> b!4416174 (= e!2749924 e!2749928)))

(declare-fun res!1824112 () Bool)

(assert (=> b!4416174 (=> (not res!1824112) (not e!2749928))))

(declare-datatypes ((Option!10680 0))(
  ( (None!10679) (Some!10679 (v!43839 V!11056)) )
))
(declare-fun isDefined!7971 (Option!10680) Bool)

(declare-fun getValueByKey!666 (List!49575 K!10810) Option!10680)

(assert (=> b!4416174 (= res!1824112 (isDefined!7971 (getValueByKey!666 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717)))))

(declare-fun b!4416175 () Bool)

(assert (=> b!4416175 (= e!2749928 (contains!11912 (keys!16851 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(declare-fun b!4416176 () Bool)

(declare-fun lt!1618053 () Unit!80903)

(assert (=> b!4416176 (= e!2749927 lt!1618053)))

(declare-fun lt!1618050 () Unit!80903)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!574 (List!49575 K!10810) Unit!80903)

(assert (=> b!4416176 (= lt!1618050 (lemmaContainsKeyImpliesGetValueByKeyDefined!574 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(assert (=> b!4416176 (isDefined!7971 (getValueByKey!666 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(declare-fun lt!1618049 () Unit!80903)

(assert (=> b!4416176 (= lt!1618049 lt!1618050)))

(declare-fun lemmaInListThenGetKeysListContains!226 (List!49575 K!10810) Unit!80903)

(assert (=> b!4416176 (= lt!1618053 (lemmaInListThenGetKeysListContains!226 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(assert (=> b!4416176 call!307339))

(declare-fun b!4416177 () Bool)

(assert (=> b!4416177 false))

(declare-fun lt!1618048 () Unit!80903)

(declare-fun lt!1618047 () Unit!80903)

(assert (=> b!4416177 (= lt!1618048 lt!1618047)))

(assert (=> b!4416177 (containsKey!1045 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!227 (List!49575 K!10810) Unit!80903)

(assert (=> b!4416177 (= lt!1618047 (lemmaInGetKeysListThenContainsKey!227 (toList!3378 (extractMap!756 (toList!3377 lm!1616))) key!3717))))

(declare-fun Unit!80940 () Unit!80903)

(assert (=> b!4416177 (= e!2749925 Unit!80940)))

(declare-fun b!4416178 () Bool)

(assert (=> b!4416178 (= e!2749927 e!2749925)))

(declare-fun c!751854 () Bool)

(assert (=> b!4416178 (= c!751854 call!307339)))

(declare-fun b!4416179 () Bool)

(declare-fun getKeysList!229 (List!49575) List!49577)

(assert (=> b!4416179 (= e!2749923 (getKeysList!229 (toList!3378 (extractMap!756 (toList!3377 lm!1616)))))))

(assert (= (and d!1338030 c!751855) b!4416176))

(assert (= (and d!1338030 (not c!751855)) b!4416178))

(assert (= (and b!4416178 c!751854) b!4416177))

(assert (= (and b!4416178 (not c!751854)) b!4416171))

(assert (= (or b!4416176 b!4416178) bm!307334))

(assert (= (and bm!307334 c!751853) b!4416179))

(assert (= (and bm!307334 (not c!751853)) b!4416172))

(assert (= (and d!1338030 res!1824111) b!4416173))

(assert (= (and d!1338030 (not res!1824113)) b!4416174))

(assert (= (and b!4416174 res!1824112) b!4416175))

(assert (=> b!4416175 m!5092391))

(declare-fun m!5092477 () Bool)

(assert (=> b!4416175 m!5092477))

(assert (=> b!4416175 m!5092477))

(declare-fun m!5092479 () Bool)

(assert (=> b!4416175 m!5092479))

(assert (=> b!4416173 m!5092391))

(assert (=> b!4416173 m!5092477))

(assert (=> b!4416173 m!5092477))

(assert (=> b!4416173 m!5092479))

(declare-fun m!5092481 () Bool)

(assert (=> d!1338030 m!5092481))

(declare-fun m!5092483 () Bool)

(assert (=> b!4416174 m!5092483))

(assert (=> b!4416174 m!5092483))

(declare-fun m!5092485 () Bool)

(assert (=> b!4416174 m!5092485))

(declare-fun m!5092487 () Bool)

(assert (=> bm!307334 m!5092487))

(declare-fun m!5092489 () Bool)

(assert (=> b!4416176 m!5092489))

(assert (=> b!4416176 m!5092483))

(assert (=> b!4416176 m!5092483))

(assert (=> b!4416176 m!5092485))

(declare-fun m!5092491 () Bool)

(assert (=> b!4416176 m!5092491))

(assert (=> b!4416177 m!5092481))

(declare-fun m!5092493 () Bool)

(assert (=> b!4416177 m!5092493))

(declare-fun m!5092495 () Bool)

(assert (=> b!4416179 m!5092495))

(assert (=> b!4416172 m!5092391))

(assert (=> b!4416172 m!5092477))

(assert (=> b!4416118 d!1338030))

(declare-fun bs!753556 () Bool)

(declare-fun d!1338032 () Bool)

(assert (= bs!753556 (and d!1338032 start!430082)))

(declare-fun lambda!152020 () Int)

(assert (=> bs!753556 (= lambda!152020 lambda!151988)))

(declare-fun lt!1618099 () ListMap!2621)

(declare-fun invariantList!782 (List!49575) Bool)

(assert (=> d!1338032 (invariantList!782 (toList!3378 lt!1618099))))

(declare-fun e!2749937 () ListMap!2621)

(assert (=> d!1338032 (= lt!1618099 e!2749937)))

(declare-fun c!751860 () Bool)

(assert (=> d!1338032 (= c!751860 ((_ is Cons!49452) (toList!3377 lm!1616)))))

(assert (=> d!1338032 (forall!9478 (toList!3377 lm!1616) lambda!152020)))

(assert (=> d!1338032 (= (extractMap!756 (toList!3377 lm!1616)) lt!1618099)))

(declare-fun b!4416190 () Bool)

(assert (=> b!4416190 (= e!2749937 (addToMapMapFromBucket!349 (_2!27874 (h!55113 (toList!3377 lm!1616))) (extractMap!756 (t!356514 (toList!3377 lm!1616)))))))

(declare-fun b!4416191 () Bool)

(assert (=> b!4416191 (= e!2749937 (ListMap!2622 Nil!49451))))

(assert (= (and d!1338032 c!751860) b!4416190))

(assert (= (and d!1338032 (not c!751860)) b!4416191))

(declare-fun m!5092497 () Bool)

(assert (=> d!1338032 m!5092497))

(declare-fun m!5092499 () Bool)

(assert (=> d!1338032 m!5092499))

(assert (=> b!4416190 m!5092417))

(assert (=> b!4416190 m!5092417))

(declare-fun m!5092501 () Bool)

(assert (=> b!4416190 m!5092501))

(assert (=> b!4416118 d!1338032))

(declare-fun d!1338034 () Bool)

(declare-fun get!16110 (Option!10679) List!49575)

(assert (=> d!1338034 (= (apply!11547 lm!1616 hash!366) (get!16110 (getValueByKey!665 (toList!3377 lm!1616) hash!366)))))

(declare-fun bs!753557 () Bool)

(assert (= bs!753557 d!1338034))

(assert (=> bs!753557 m!5092473))

(assert (=> bs!753557 m!5092473))

(declare-fun m!5092503 () Bool)

(assert (=> bs!753557 m!5092503))

(assert (=> b!4416108 d!1338034))

(declare-fun d!1338036 () Bool)

(assert (=> d!1338036 true))

(assert (=> d!1338036 true))

(declare-fun lambda!152028 () Int)

(declare-fun forall!9480 (List!49575 Int) Bool)

(assert (=> d!1338036 (= (allKeysSameHash!655 newBucket!194 hash!366 hashF!1220) (forall!9480 newBucket!194 lambda!152028))))

(declare-fun bs!753561 () Bool)

(assert (= bs!753561 d!1338036))

(declare-fun m!5092505 () Bool)

(assert (=> bs!753561 m!5092505))

(assert (=> b!4416111 d!1338036))

(declare-fun d!1338038 () Bool)

(declare-fun res!1824127 () Bool)

(declare-fun e!2749945 () Bool)

(assert (=> d!1338038 (=> res!1824127 e!2749945)))

(assert (=> d!1338038 (= res!1824127 ((_ is Nil!49452) (toList!3377 lt!1618011)))))

(assert (=> d!1338038 (= (forall!9478 (toList!3377 lt!1618011) lambda!151988) e!2749945)))

(declare-fun b!4416211 () Bool)

(declare-fun e!2749946 () Bool)

(assert (=> b!4416211 (= e!2749945 e!2749946)))

(declare-fun res!1824128 () Bool)

(assert (=> b!4416211 (=> (not res!1824128) (not e!2749946))))

(declare-fun dynLambda!20813 (Int tuple2!49160) Bool)

(assert (=> b!4416211 (= res!1824128 (dynLambda!20813 lambda!151988 (h!55113 (toList!3377 lt!1618011))))))

(declare-fun b!4416212 () Bool)

(assert (=> b!4416212 (= e!2749946 (forall!9478 (t!356514 (toList!3377 lt!1618011)) lambda!151988))))

(assert (= (and d!1338038 (not res!1824127)) b!4416211))

(assert (= (and b!4416211 res!1824128) b!4416212))

(declare-fun b_lambda!142207 () Bool)

(assert (=> (not b_lambda!142207) (not b!4416211)))

(declare-fun m!5092537 () Bool)

(assert (=> b!4416211 m!5092537))

(declare-fun m!5092539 () Bool)

(assert (=> b!4416212 m!5092539))

(assert (=> b!4416122 d!1338038))

(declare-fun d!1338042 () Bool)

(declare-fun e!2749955 () Bool)

(assert (=> d!1338042 e!2749955))

(declare-fun res!1824143 () Bool)

(assert (=> d!1338042 (=> (not res!1824143) (not e!2749955))))

(declare-fun lt!1618163 () ListLongMap!2027)

(assert (=> d!1338042 (= res!1824143 (contains!11910 lt!1618163 (_1!27874 lt!1618010)))))

(declare-fun lt!1618165 () List!49576)

(assert (=> d!1338042 (= lt!1618163 (ListLongMap!2028 lt!1618165))))

(declare-fun lt!1618164 () Unit!80903)

(declare-fun lt!1618162 () Unit!80903)

(assert (=> d!1338042 (= lt!1618164 lt!1618162)))

(assert (=> d!1338042 (= (getValueByKey!665 lt!1618165 (_1!27874 lt!1618010)) (Some!10678 (_2!27874 lt!1618010)))))

(declare-fun lemmaContainsTupThenGetReturnValue!402 (List!49576 (_ BitVec 64) List!49575) Unit!80903)

(assert (=> d!1338042 (= lt!1618162 (lemmaContainsTupThenGetReturnValue!402 lt!1618165 (_1!27874 lt!1618010) (_2!27874 lt!1618010)))))

(declare-fun insertStrictlySorted!236 (List!49576 (_ BitVec 64) List!49575) List!49576)

(assert (=> d!1338042 (= lt!1618165 (insertStrictlySorted!236 (toList!3377 lm!1616) (_1!27874 lt!1618010) (_2!27874 lt!1618010)))))

(assert (=> d!1338042 (= (+!991 lm!1616 lt!1618010) lt!1618163)))

(declare-fun b!4416228 () Bool)

(declare-fun res!1824142 () Bool)

(assert (=> b!4416228 (=> (not res!1824142) (not e!2749955))))

(assert (=> b!4416228 (= res!1824142 (= (getValueByKey!665 (toList!3377 lt!1618163) (_1!27874 lt!1618010)) (Some!10678 (_2!27874 lt!1618010))))))

(declare-fun b!4416229 () Bool)

(declare-fun contains!11913 (List!49576 tuple2!49160) Bool)

(assert (=> b!4416229 (= e!2749955 (contains!11913 (toList!3377 lt!1618163) lt!1618010))))

(assert (= (and d!1338042 res!1824143) b!4416228))

(assert (= (and b!4416228 res!1824142) b!4416229))

(declare-fun m!5092559 () Bool)

(assert (=> d!1338042 m!5092559))

(declare-fun m!5092561 () Bool)

(assert (=> d!1338042 m!5092561))

(declare-fun m!5092563 () Bool)

(assert (=> d!1338042 m!5092563))

(declare-fun m!5092565 () Bool)

(assert (=> d!1338042 m!5092565))

(declare-fun m!5092567 () Bool)

(assert (=> b!4416228 m!5092567))

(declare-fun m!5092569 () Bool)

(assert (=> b!4416229 m!5092569))

(assert (=> b!4416122 d!1338042))

(declare-fun d!1338050 () Bool)

(assert (=> d!1338050 (forall!9478 (toList!3377 (+!991 lm!1616 (tuple2!49161 hash!366 newBucket!194))) lambda!151988)))

(declare-fun lt!1618193 () Unit!80903)

(declare-fun choose!27794 (ListLongMap!2027 Int (_ BitVec 64) List!49575) Unit!80903)

(assert (=> d!1338050 (= lt!1618193 (choose!27794 lm!1616 lambda!151988 hash!366 newBucket!194))))

(declare-fun e!2749968 () Bool)

(assert (=> d!1338050 e!2749968))

(declare-fun res!1824157 () Bool)

(assert (=> d!1338050 (=> (not res!1824157) (not e!2749968))))

(assert (=> d!1338050 (= res!1824157 (forall!9478 (toList!3377 lm!1616) lambda!151988))))

(assert (=> d!1338050 (= (addValidProp!339 lm!1616 lambda!151988 hash!366 newBucket!194) lt!1618193)))

(declare-fun b!4416246 () Bool)

(assert (=> b!4416246 (= e!2749968 (dynLambda!20813 lambda!151988 (tuple2!49161 hash!366 newBucket!194)))))

(assert (= (and d!1338050 res!1824157) b!4416246))

(declare-fun b_lambda!142211 () Bool)

(assert (=> (not b_lambda!142211) (not b!4416246)))

(declare-fun m!5092617 () Bool)

(assert (=> d!1338050 m!5092617))

(declare-fun m!5092619 () Bool)

(assert (=> d!1338050 m!5092619))

(declare-fun m!5092621 () Bool)

(assert (=> d!1338050 m!5092621))

(assert (=> d!1338050 m!5092399))

(declare-fun m!5092623 () Bool)

(assert (=> b!4416246 m!5092623))

(assert (=> b!4416122 d!1338050))

(declare-fun d!1338058 () Bool)

(declare-fun res!1824158 () Bool)

(declare-fun e!2749969 () Bool)

(assert (=> d!1338058 (=> res!1824158 e!2749969)))

(assert (=> d!1338058 (= res!1824158 ((_ is Nil!49452) (toList!3377 lm!1616)))))

(assert (=> d!1338058 (= (forall!9478 (toList!3377 lm!1616) lambda!151988) e!2749969)))

(declare-fun b!4416247 () Bool)

(declare-fun e!2749970 () Bool)

(assert (=> b!4416247 (= e!2749969 e!2749970)))

(declare-fun res!1824159 () Bool)

(assert (=> b!4416247 (=> (not res!1824159) (not e!2749970))))

(assert (=> b!4416247 (= res!1824159 (dynLambda!20813 lambda!151988 (h!55113 (toList!3377 lm!1616))))))

(declare-fun b!4416248 () Bool)

(assert (=> b!4416248 (= e!2749970 (forall!9478 (t!356514 (toList!3377 lm!1616)) lambda!151988))))

(assert (= (and d!1338058 (not res!1824158)) b!4416247))

(assert (= (and b!4416247 res!1824159) b!4416248))

(declare-fun b_lambda!142213 () Bool)

(assert (=> (not b_lambda!142213) (not b!4416247)))

(declare-fun m!5092625 () Bool)

(assert (=> b!4416247 m!5092625))

(declare-fun m!5092627 () Bool)

(assert (=> b!4416248 m!5092627))

(assert (=> b!4416112 d!1338058))

(assert (=> start!430082 d!1338058))

(declare-fun d!1338060 () Bool)

(declare-fun isStrictlySorted!209 (List!49576) Bool)

(assert (=> d!1338060 (= (inv!64996 lm!1616) (isStrictlySorted!209 (toList!3377 lm!1616)))))

(declare-fun bs!753606 () Bool)

(assert (= bs!753606 d!1338060))

(declare-fun m!5092657 () Bool)

(assert (=> bs!753606 m!5092657))

(assert (=> start!430082 d!1338060))

(declare-fun d!1338064 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7918 (List!49575) (InoxSet tuple2!49158))

(assert (=> d!1338064 (= (eq!371 lt!1618014 lt!1618006) (= (content!7918 (toList!3378 lt!1618014)) (content!7918 (toList!3378 lt!1618006))))))

(declare-fun bs!753607 () Bool)

(assert (= bs!753607 d!1338064))

(declare-fun m!5092659 () Bool)

(assert (=> bs!753607 m!5092659))

(declare-fun m!5092661 () Bool)

(assert (=> bs!753607 m!5092661))

(assert (=> b!4416114 d!1338064))

(declare-fun d!1338066 () Bool)

(assert (=> d!1338066 (eq!371 (addToMapMapFromBucket!349 lt!1618007 (+!990 lt!1618009 (tuple2!49159 key!3717 newValue!93))) (+!990 (addToMapMapFromBucket!349 lt!1618007 lt!1618009) (tuple2!49159 key!3717 newValue!93)))))

(declare-fun lt!1618200 () Unit!80903)

(declare-fun choose!27796 (ListMap!2621 K!10810 V!11056 List!49575) Unit!80903)

(assert (=> d!1338066 (= lt!1618200 (choose!27796 lt!1618009 key!3717 newValue!93 lt!1618007))))

(assert (=> d!1338066 (not (containsKey!1043 lt!1618007 key!3717))))

(assert (=> d!1338066 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!166 lt!1618009 key!3717 newValue!93 lt!1618007) lt!1618200)))

(declare-fun bs!753613 () Bool)

(assert (= bs!753613 d!1338066))

(assert (=> bs!753613 m!5092427))

(declare-fun m!5092691 () Bool)

(assert (=> bs!753613 m!5092691))

(declare-fun m!5092693 () Bool)

(assert (=> bs!753613 m!5092693))

(declare-fun m!5092695 () Bool)

(assert (=> bs!753613 m!5092695))

(declare-fun m!5092697 () Bool)

(assert (=> bs!753613 m!5092697))

(declare-fun m!5092699 () Bool)

(assert (=> bs!753613 m!5092699))

(declare-fun m!5092701 () Bool)

(assert (=> bs!753613 m!5092701))

(assert (=> bs!753613 m!5092701))

(assert (=> bs!753613 m!5092695))

(assert (=> bs!753613 m!5092427))

(assert (=> bs!753613 m!5092697))

(assert (=> b!4416114 d!1338066))

(declare-fun bs!753625 () Bool)

(declare-fun b!4416335 () Bool)

(assert (= bs!753625 (and b!4416335 d!1338036)))

(declare-fun lambda!152074 () Int)

(assert (=> bs!753625 (not (= lambda!152074 lambda!152028))))

(assert (=> b!4416335 true))

(declare-fun bs!753626 () Bool)

(declare-fun b!4416331 () Bool)

(assert (= bs!753626 (and b!4416331 d!1338036)))

(declare-fun lambda!152075 () Int)

(assert (=> bs!753626 (not (= lambda!152075 lambda!152028))))

(declare-fun bs!753627 () Bool)

(assert (= bs!753627 (and b!4416331 b!4416335)))

(assert (=> bs!753627 (= lambda!152075 lambda!152074)))

(assert (=> b!4416331 true))

(declare-fun lambda!152076 () Int)

(assert (=> bs!753626 (not (= lambda!152076 lambda!152028))))

(declare-fun lt!1618302 () ListMap!2621)

(assert (=> bs!753627 (= (= lt!1618302 lt!1618009) (= lambda!152076 lambda!152074))))

(assert (=> b!4416331 (= (= lt!1618302 lt!1618009) (= lambda!152076 lambda!152075))))

(assert (=> b!4416331 true))

(declare-fun bs!753628 () Bool)

(declare-fun d!1338080 () Bool)

(assert (= bs!753628 (and d!1338080 d!1338036)))

(declare-fun lambda!152077 () Int)

(assert (=> bs!753628 (not (= lambda!152077 lambda!152028))))

(declare-fun bs!753629 () Bool)

(assert (= bs!753629 (and d!1338080 b!4416335)))

(declare-fun lt!1618297 () ListMap!2621)

(assert (=> bs!753629 (= (= lt!1618297 lt!1618009) (= lambda!152077 lambda!152074))))

(declare-fun bs!753630 () Bool)

(assert (= bs!753630 (and d!1338080 b!4416331)))

(assert (=> bs!753630 (= (= lt!1618297 lt!1618009) (= lambda!152077 lambda!152075))))

(assert (=> bs!753630 (= (= lt!1618297 lt!1618302) (= lambda!152077 lambda!152076))))

(assert (=> d!1338080 true))

(declare-fun e!2750023 () Bool)

(assert (=> d!1338080 e!2750023))

(declare-fun res!1824193 () Bool)

(assert (=> d!1338080 (=> (not res!1824193) (not e!2750023))))

(assert (=> d!1338080 (= res!1824193 (forall!9480 lt!1618007 lambda!152077))))

(declare-fun e!2750024 () ListMap!2621)

(assert (=> d!1338080 (= lt!1618297 e!2750024)))

(declare-fun c!751883 () Bool)

(assert (=> d!1338080 (= c!751883 ((_ is Nil!49451) lt!1618007))))

(assert (=> d!1338080 (noDuplicateKeys!695 lt!1618007)))

(assert (=> d!1338080 (= (addToMapMapFromBucket!349 lt!1618007 lt!1618009) lt!1618297)))

(declare-fun bm!307359 () Bool)

(declare-fun call!307366 () Bool)

(assert (=> bm!307359 (= call!307366 (forall!9480 (toList!3378 lt!1618009) (ite c!751883 lambda!152074 lambda!152076)))))

(assert (=> b!4416331 (= e!2750024 lt!1618302)))

(declare-fun lt!1618304 () ListMap!2621)

(assert (=> b!4416331 (= lt!1618304 (+!990 lt!1618009 (h!55112 lt!1618007)))))

(assert (=> b!4416331 (= lt!1618302 (addToMapMapFromBucket!349 (t!356513 lt!1618007) (+!990 lt!1618009 (h!55112 lt!1618007))))))

(declare-fun lt!1618295 () Unit!80903)

(declare-fun call!307365 () Unit!80903)

(assert (=> b!4416331 (= lt!1618295 call!307365)))

(assert (=> b!4416331 (forall!9480 (toList!3378 lt!1618009) lambda!152075)))

(declare-fun lt!1618298 () Unit!80903)

(assert (=> b!4416331 (= lt!1618298 lt!1618295)))

(declare-fun call!307364 () Bool)

(assert (=> b!4416331 call!307364))

(declare-fun lt!1618315 () Unit!80903)

(declare-fun Unit!80943 () Unit!80903)

(assert (=> b!4416331 (= lt!1618315 Unit!80943)))

(assert (=> b!4416331 (forall!9480 (t!356513 lt!1618007) lambda!152076)))

(declare-fun lt!1618314 () Unit!80903)

(declare-fun Unit!80944 () Unit!80903)

(assert (=> b!4416331 (= lt!1618314 Unit!80944)))

(declare-fun lt!1618306 () Unit!80903)

(declare-fun Unit!80945 () Unit!80903)

(assert (=> b!4416331 (= lt!1618306 Unit!80945)))

(declare-fun lt!1618300 () Unit!80903)

(declare-fun forallContained!2069 (List!49575 Int tuple2!49158) Unit!80903)

(assert (=> b!4416331 (= lt!1618300 (forallContained!2069 (toList!3378 lt!1618304) lambda!152076 (h!55112 lt!1618007)))))

(assert (=> b!4416331 (contains!11909 lt!1618304 (_1!27873 (h!55112 lt!1618007)))))

(declare-fun lt!1618311 () Unit!80903)

(declare-fun Unit!80946 () Unit!80903)

(assert (=> b!4416331 (= lt!1618311 Unit!80946)))

(assert (=> b!4416331 (contains!11909 lt!1618302 (_1!27873 (h!55112 lt!1618007)))))

(declare-fun lt!1618309 () Unit!80903)

(declare-fun Unit!80947 () Unit!80903)

(assert (=> b!4416331 (= lt!1618309 Unit!80947)))

(assert (=> b!4416331 (forall!9480 lt!1618007 lambda!152076)))

(declare-fun lt!1618301 () Unit!80903)

(declare-fun Unit!80948 () Unit!80903)

(assert (=> b!4416331 (= lt!1618301 Unit!80948)))

(assert (=> b!4416331 (forall!9480 (toList!3378 lt!1618304) lambda!152076)))

(declare-fun lt!1618313 () Unit!80903)

(declare-fun Unit!80949 () Unit!80903)

(assert (=> b!4416331 (= lt!1618313 Unit!80949)))

(declare-fun lt!1618312 () Unit!80903)

(declare-fun Unit!80950 () Unit!80903)

(assert (=> b!4416331 (= lt!1618312 Unit!80950)))

(declare-fun lt!1618299 () Unit!80903)

(declare-fun addForallContainsKeyThenBeforeAdding!159 (ListMap!2621 ListMap!2621 K!10810 V!11056) Unit!80903)

(assert (=> b!4416331 (= lt!1618299 (addForallContainsKeyThenBeforeAdding!159 lt!1618009 lt!1618302 (_1!27873 (h!55112 lt!1618007)) (_2!27873 (h!55112 lt!1618007))))))

(assert (=> b!4416331 (forall!9480 (toList!3378 lt!1618009) lambda!152076)))

(declare-fun lt!1618305 () Unit!80903)

(assert (=> b!4416331 (= lt!1618305 lt!1618299)))

(assert (=> b!4416331 (forall!9480 (toList!3378 lt!1618009) lambda!152076)))

(declare-fun lt!1618308 () Unit!80903)

(declare-fun Unit!80951 () Unit!80903)

(assert (=> b!4416331 (= lt!1618308 Unit!80951)))

(declare-fun res!1824192 () Bool)

(assert (=> b!4416331 (= res!1824192 (forall!9480 lt!1618007 lambda!152076))))

(declare-fun e!2750022 () Bool)

(assert (=> b!4416331 (=> (not res!1824192) (not e!2750022))))

(assert (=> b!4416331 e!2750022))

(declare-fun lt!1618310 () Unit!80903)

(declare-fun Unit!80952 () Unit!80903)

(assert (=> b!4416331 (= lt!1618310 Unit!80952)))

(declare-fun b!4416332 () Bool)

(assert (=> b!4416332 (= e!2750023 (invariantList!782 (toList!3378 lt!1618297)))))

(declare-fun b!4416333 () Bool)

(assert (=> b!4416333 (= e!2750022 call!307366)))

(declare-fun bm!307360 () Bool)

(assert (=> bm!307360 (= call!307364 (forall!9480 (ite c!751883 (toList!3378 lt!1618009) (toList!3378 lt!1618304)) (ite c!751883 lambda!152074 lambda!152076)))))

(declare-fun bm!307361 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!159 (ListMap!2621) Unit!80903)

(assert (=> bm!307361 (= call!307365 (lemmaContainsAllItsOwnKeys!159 lt!1618009))))

(declare-fun b!4416334 () Bool)

(declare-fun res!1824191 () Bool)

(assert (=> b!4416334 (=> (not res!1824191) (not e!2750023))))

(assert (=> b!4416334 (= res!1824191 (forall!9480 (toList!3378 lt!1618009) lambda!152077))))

(assert (=> b!4416335 (= e!2750024 lt!1618009)))

(declare-fun lt!1618307 () Unit!80903)

(assert (=> b!4416335 (= lt!1618307 call!307365)))

(assert (=> b!4416335 call!307366))

(declare-fun lt!1618296 () Unit!80903)

(assert (=> b!4416335 (= lt!1618296 lt!1618307)))

(assert (=> b!4416335 call!307364))

(declare-fun lt!1618303 () Unit!80903)

(declare-fun Unit!80953 () Unit!80903)

(assert (=> b!4416335 (= lt!1618303 Unit!80953)))

(assert (= (and d!1338080 c!751883) b!4416335))

(assert (= (and d!1338080 (not c!751883)) b!4416331))

(assert (= (and b!4416331 res!1824192) b!4416333))

(assert (= (or b!4416335 b!4416331) bm!307361))

(assert (= (or b!4416335 b!4416333) bm!307359))

(assert (= (or b!4416335 b!4416331) bm!307360))

(assert (= (and d!1338080 res!1824193) b!4416334))

(assert (= (and b!4416334 res!1824191) b!4416332))

(declare-fun m!5092763 () Bool)

(assert (=> b!4416334 m!5092763))

(declare-fun m!5092765 () Bool)

(assert (=> b!4416332 m!5092765))

(declare-fun m!5092767 () Bool)

(assert (=> b!4416331 m!5092767))

(declare-fun m!5092769 () Bool)

(assert (=> b!4416331 m!5092769))

(declare-fun m!5092771 () Bool)

(assert (=> b!4416331 m!5092771))

(declare-fun m!5092773 () Bool)

(assert (=> b!4416331 m!5092773))

(declare-fun m!5092775 () Bool)

(assert (=> b!4416331 m!5092775))

(declare-fun m!5092777 () Bool)

(assert (=> b!4416331 m!5092777))

(declare-fun m!5092779 () Bool)

(assert (=> b!4416331 m!5092779))

(declare-fun m!5092781 () Bool)

(assert (=> b!4416331 m!5092781))

(assert (=> b!4416331 m!5092779))

(declare-fun m!5092783 () Bool)

(assert (=> b!4416331 m!5092783))

(declare-fun m!5092785 () Bool)

(assert (=> b!4416331 m!5092785))

(assert (=> b!4416331 m!5092785))

(declare-fun m!5092787 () Bool)

(assert (=> b!4416331 m!5092787))

(assert (=> b!4416331 m!5092769))

(declare-fun m!5092789 () Bool)

(assert (=> d!1338080 m!5092789))

(assert (=> d!1338080 m!5092407))

(declare-fun m!5092791 () Bool)

(assert (=> bm!307360 m!5092791))

(declare-fun m!5092793 () Bool)

(assert (=> bm!307361 m!5092793))

(declare-fun m!5092795 () Bool)

(assert (=> bm!307359 m!5092795))

(assert (=> b!4416114 d!1338080))

(declare-fun d!1338102 () Bool)

(declare-fun e!2750027 () Bool)

(assert (=> d!1338102 e!2750027))

(declare-fun res!1824198 () Bool)

(assert (=> d!1338102 (=> (not res!1824198) (not e!2750027))))

(declare-fun lt!1618325 () ListMap!2621)

(assert (=> d!1338102 (= res!1824198 (contains!11909 lt!1618325 (_1!27873 lt!1618005)))))

(declare-fun lt!1618326 () List!49575)

(assert (=> d!1338102 (= lt!1618325 (ListMap!2622 lt!1618326))))

(declare-fun lt!1618327 () Unit!80903)

(declare-fun lt!1618324 () Unit!80903)

(assert (=> d!1338102 (= lt!1618327 lt!1618324)))

(assert (=> d!1338102 (= (getValueByKey!666 lt!1618326 (_1!27873 lt!1618005)) (Some!10679 (_2!27873 lt!1618005)))))

(declare-fun lemmaContainsTupThenGetReturnValue!404 (List!49575 K!10810 V!11056) Unit!80903)

(assert (=> d!1338102 (= lt!1618324 (lemmaContainsTupThenGetReturnValue!404 lt!1618326 (_1!27873 lt!1618005) (_2!27873 lt!1618005)))))

(declare-fun insertNoDuplicatedKeys!175 (List!49575 K!10810 V!11056) List!49575)

(assert (=> d!1338102 (= lt!1618326 (insertNoDuplicatedKeys!175 (toList!3378 (addToMapMapFromBucket!349 lt!1618007 lt!1618009)) (_1!27873 lt!1618005) (_2!27873 lt!1618005)))))

(assert (=> d!1338102 (= (+!990 (addToMapMapFromBucket!349 lt!1618007 lt!1618009) lt!1618005) lt!1618325)))

(declare-fun b!4416342 () Bool)

(declare-fun res!1824199 () Bool)

(assert (=> b!4416342 (=> (not res!1824199) (not e!2750027))))

(assert (=> b!4416342 (= res!1824199 (= (getValueByKey!666 (toList!3378 lt!1618325) (_1!27873 lt!1618005)) (Some!10679 (_2!27873 lt!1618005))))))

(declare-fun b!4416343 () Bool)

(declare-fun contains!11916 (List!49575 tuple2!49158) Bool)

(assert (=> b!4416343 (= e!2750027 (contains!11916 (toList!3378 lt!1618325) lt!1618005))))

(assert (= (and d!1338102 res!1824198) b!4416342))

(assert (= (and b!4416342 res!1824199) b!4416343))

(declare-fun m!5092797 () Bool)

(assert (=> d!1338102 m!5092797))

(declare-fun m!5092799 () Bool)

(assert (=> d!1338102 m!5092799))

(declare-fun m!5092801 () Bool)

(assert (=> d!1338102 m!5092801))

(declare-fun m!5092803 () Bool)

(assert (=> d!1338102 m!5092803))

(declare-fun m!5092805 () Bool)

(assert (=> b!4416342 m!5092805))

(declare-fun m!5092807 () Bool)

(assert (=> b!4416343 m!5092807))

(assert (=> b!4416114 d!1338102))

(declare-fun d!1338104 () Bool)

(assert (=> d!1338104 (= (eq!371 lt!1618012 lt!1618006) (= (content!7918 (toList!3378 lt!1618012)) (content!7918 (toList!3378 lt!1618006))))))

(declare-fun bs!753631 () Bool)

(assert (= bs!753631 d!1338104))

(declare-fun m!5092809 () Bool)

(assert (=> bs!753631 m!5092809))

(assert (=> bs!753631 m!5092661))

(assert (=> b!4416114 d!1338104))

(declare-fun bs!753632 () Bool)

(declare-fun d!1338106 () Bool)

(assert (= bs!753632 (and d!1338106 start!430082)))

(declare-fun lambda!152080 () Int)

(assert (=> bs!753632 (not (= lambda!152080 lambda!151988))))

(declare-fun bs!753633 () Bool)

(assert (= bs!753633 (and d!1338106 d!1338032)))

(assert (=> bs!753633 (not (= lambda!152080 lambda!152020))))

(assert (=> d!1338106 true))

(assert (=> d!1338106 (= (allKeysSameHashInMap!801 lm!1616 hashF!1220) (forall!9478 (toList!3377 lm!1616) lambda!152080))))

(declare-fun bs!753634 () Bool)

(assert (= bs!753634 d!1338106))

(declare-fun m!5092811 () Bool)

(assert (=> bs!753634 m!5092811))

(assert (=> b!4416125 d!1338106))

(declare-fun d!1338108 () Bool)

(assert (=> d!1338108 (= (tail!7183 (toList!3377 lt!1618011)) (t!356514 (toList!3377 lt!1618011)))))

(assert (=> b!4416123 d!1338108))

(declare-fun bs!753635 () Bool)

(declare-fun b!4416350 () Bool)

(assert (= bs!753635 (and b!4416350 d!1338080)))

(declare-fun lambda!152081 () Int)

(assert (=> bs!753635 (= (= lt!1618009 lt!1618297) (= lambda!152081 lambda!152077))))

(declare-fun bs!753636 () Bool)

(assert (= bs!753636 (and b!4416350 b!4416331)))

(assert (=> bs!753636 (= lambda!152081 lambda!152075)))

(assert (=> bs!753636 (= (= lt!1618009 lt!1618302) (= lambda!152081 lambda!152076))))

(declare-fun bs!753637 () Bool)

(assert (= bs!753637 (and b!4416350 d!1338036)))

(assert (=> bs!753637 (not (= lambda!152081 lambda!152028))))

(declare-fun bs!753638 () Bool)

(assert (= bs!753638 (and b!4416350 b!4416335)))

(assert (=> bs!753638 (= lambda!152081 lambda!152074)))

(assert (=> b!4416350 true))

(declare-fun bs!753639 () Bool)

(declare-fun b!4416346 () Bool)

(assert (= bs!753639 (and b!4416346 d!1338080)))

(declare-fun lambda!152082 () Int)

(assert (=> bs!753639 (= (= lt!1618009 lt!1618297) (= lambda!152082 lambda!152077))))

(declare-fun bs!753640 () Bool)

(assert (= bs!753640 (and b!4416346 b!4416331)))

(assert (=> bs!753640 (= lambda!152082 lambda!152075)))

(declare-fun bs!753641 () Bool)

(assert (= bs!753641 (and b!4416346 b!4416350)))

(assert (=> bs!753641 (= lambda!152082 lambda!152081)))

(assert (=> bs!753640 (= (= lt!1618009 lt!1618302) (= lambda!152082 lambda!152076))))

(declare-fun bs!753642 () Bool)

(assert (= bs!753642 (and b!4416346 d!1338036)))

(assert (=> bs!753642 (not (= lambda!152082 lambda!152028))))

(declare-fun bs!753643 () Bool)

(assert (= bs!753643 (and b!4416346 b!4416335)))

(assert (=> bs!753643 (= lambda!152082 lambda!152074)))

(assert (=> b!4416346 true))

(declare-fun lambda!152083 () Int)

(declare-fun lt!1618335 () ListMap!2621)

(assert (=> bs!753639 (= (= lt!1618335 lt!1618297) (= lambda!152083 lambda!152077))))

(assert (=> bs!753640 (= (= lt!1618335 lt!1618009) (= lambda!152083 lambda!152075))))

(assert (=> b!4416346 (= (= lt!1618335 lt!1618009) (= lambda!152083 lambda!152082))))

(assert (=> bs!753641 (= (= lt!1618335 lt!1618009) (= lambda!152083 lambda!152081))))

(assert (=> bs!753640 (= (= lt!1618335 lt!1618302) (= lambda!152083 lambda!152076))))

(assert (=> bs!753642 (not (= lambda!152083 lambda!152028))))

(assert (=> bs!753643 (= (= lt!1618335 lt!1618009) (= lambda!152083 lambda!152074))))

(assert (=> b!4416346 true))

(declare-fun bs!753644 () Bool)

(declare-fun d!1338110 () Bool)

(assert (= bs!753644 (and d!1338110 d!1338080)))

(declare-fun lt!1618330 () ListMap!2621)

(declare-fun lambda!152084 () Int)

(assert (=> bs!753644 (= (= lt!1618330 lt!1618297) (= lambda!152084 lambda!152077))))

(declare-fun bs!753645 () Bool)

(assert (= bs!753645 (and d!1338110 b!4416331)))

(assert (=> bs!753645 (= (= lt!1618330 lt!1618009) (= lambda!152084 lambda!152075))))

(declare-fun bs!753646 () Bool)

(assert (= bs!753646 (and d!1338110 b!4416346)))

(assert (=> bs!753646 (= (= lt!1618330 lt!1618009) (= lambda!152084 lambda!152082))))

(declare-fun bs!753647 () Bool)

(assert (= bs!753647 (and d!1338110 b!4416350)))

(assert (=> bs!753647 (= (= lt!1618330 lt!1618009) (= lambda!152084 lambda!152081))))

(assert (=> bs!753645 (= (= lt!1618330 lt!1618302) (= lambda!152084 lambda!152076))))

(assert (=> bs!753646 (= (= lt!1618330 lt!1618335) (= lambda!152084 lambda!152083))))

(declare-fun bs!753648 () Bool)

(assert (= bs!753648 (and d!1338110 d!1338036)))

(assert (=> bs!753648 (not (= lambda!152084 lambda!152028))))

(declare-fun bs!753649 () Bool)

(assert (= bs!753649 (and d!1338110 b!4416335)))

(assert (=> bs!753649 (= (= lt!1618330 lt!1618009) (= lambda!152084 lambda!152074))))

(assert (=> d!1338110 true))

(declare-fun e!2750029 () Bool)

(assert (=> d!1338110 e!2750029))

(declare-fun res!1824202 () Bool)

(assert (=> d!1338110 (=> (not res!1824202) (not e!2750029))))

(assert (=> d!1338110 (= res!1824202 (forall!9480 newBucket!194 lambda!152084))))

(declare-fun e!2750030 () ListMap!2621)

(assert (=> d!1338110 (= lt!1618330 e!2750030)))

(declare-fun c!751884 () Bool)

(assert (=> d!1338110 (= c!751884 ((_ is Nil!49451) newBucket!194))))

(assert (=> d!1338110 (noDuplicateKeys!695 newBucket!194)))

(assert (=> d!1338110 (= (addToMapMapFromBucket!349 newBucket!194 lt!1618009) lt!1618330)))

(declare-fun bm!307362 () Bool)

(declare-fun call!307369 () Bool)

(assert (=> bm!307362 (= call!307369 (forall!9480 (toList!3378 lt!1618009) (ite c!751884 lambda!152081 lambda!152083)))))

(assert (=> b!4416346 (= e!2750030 lt!1618335)))

(declare-fun lt!1618337 () ListMap!2621)

(assert (=> b!4416346 (= lt!1618337 (+!990 lt!1618009 (h!55112 newBucket!194)))))

(assert (=> b!4416346 (= lt!1618335 (addToMapMapFromBucket!349 (t!356513 newBucket!194) (+!990 lt!1618009 (h!55112 newBucket!194))))))

(declare-fun lt!1618328 () Unit!80903)

(declare-fun call!307368 () Unit!80903)

(assert (=> b!4416346 (= lt!1618328 call!307368)))

(assert (=> b!4416346 (forall!9480 (toList!3378 lt!1618009) lambda!152082)))

(declare-fun lt!1618331 () Unit!80903)

(assert (=> b!4416346 (= lt!1618331 lt!1618328)))

(declare-fun call!307367 () Bool)

(assert (=> b!4416346 call!307367))

(declare-fun lt!1618348 () Unit!80903)

(declare-fun Unit!80955 () Unit!80903)

(assert (=> b!4416346 (= lt!1618348 Unit!80955)))

(assert (=> b!4416346 (forall!9480 (t!356513 newBucket!194) lambda!152083)))

(declare-fun lt!1618347 () Unit!80903)

(declare-fun Unit!80956 () Unit!80903)

(assert (=> b!4416346 (= lt!1618347 Unit!80956)))

(declare-fun lt!1618339 () Unit!80903)

(declare-fun Unit!80957 () Unit!80903)

(assert (=> b!4416346 (= lt!1618339 Unit!80957)))

(declare-fun lt!1618333 () Unit!80903)

(assert (=> b!4416346 (= lt!1618333 (forallContained!2069 (toList!3378 lt!1618337) lambda!152083 (h!55112 newBucket!194)))))

(assert (=> b!4416346 (contains!11909 lt!1618337 (_1!27873 (h!55112 newBucket!194)))))

(declare-fun lt!1618344 () Unit!80903)

(declare-fun Unit!80958 () Unit!80903)

(assert (=> b!4416346 (= lt!1618344 Unit!80958)))

(assert (=> b!4416346 (contains!11909 lt!1618335 (_1!27873 (h!55112 newBucket!194)))))

(declare-fun lt!1618342 () Unit!80903)

(declare-fun Unit!80959 () Unit!80903)

(assert (=> b!4416346 (= lt!1618342 Unit!80959)))

(assert (=> b!4416346 (forall!9480 newBucket!194 lambda!152083)))

(declare-fun lt!1618334 () Unit!80903)

(declare-fun Unit!80960 () Unit!80903)

(assert (=> b!4416346 (= lt!1618334 Unit!80960)))

(assert (=> b!4416346 (forall!9480 (toList!3378 lt!1618337) lambda!152083)))

(declare-fun lt!1618346 () Unit!80903)

(declare-fun Unit!80961 () Unit!80903)

(assert (=> b!4416346 (= lt!1618346 Unit!80961)))

(declare-fun lt!1618345 () Unit!80903)

(declare-fun Unit!80962 () Unit!80903)

(assert (=> b!4416346 (= lt!1618345 Unit!80962)))

(declare-fun lt!1618332 () Unit!80903)

(assert (=> b!4416346 (= lt!1618332 (addForallContainsKeyThenBeforeAdding!159 lt!1618009 lt!1618335 (_1!27873 (h!55112 newBucket!194)) (_2!27873 (h!55112 newBucket!194))))))

(assert (=> b!4416346 (forall!9480 (toList!3378 lt!1618009) lambda!152083)))

(declare-fun lt!1618338 () Unit!80903)

(assert (=> b!4416346 (= lt!1618338 lt!1618332)))

(assert (=> b!4416346 (forall!9480 (toList!3378 lt!1618009) lambda!152083)))

(declare-fun lt!1618341 () Unit!80903)

(declare-fun Unit!80963 () Unit!80903)

(assert (=> b!4416346 (= lt!1618341 Unit!80963)))

(declare-fun res!1824201 () Bool)

(assert (=> b!4416346 (= res!1824201 (forall!9480 newBucket!194 lambda!152083))))

(declare-fun e!2750028 () Bool)

(assert (=> b!4416346 (=> (not res!1824201) (not e!2750028))))

(assert (=> b!4416346 e!2750028))

(declare-fun lt!1618343 () Unit!80903)

(declare-fun Unit!80964 () Unit!80903)

(assert (=> b!4416346 (= lt!1618343 Unit!80964)))

(declare-fun b!4416347 () Bool)

(assert (=> b!4416347 (= e!2750029 (invariantList!782 (toList!3378 lt!1618330)))))

(declare-fun b!4416348 () Bool)

(assert (=> b!4416348 (= e!2750028 call!307369)))

(declare-fun bm!307363 () Bool)

(assert (=> bm!307363 (= call!307367 (forall!9480 (ite c!751884 (toList!3378 lt!1618009) (toList!3378 lt!1618337)) (ite c!751884 lambda!152081 lambda!152083)))))

(declare-fun bm!307364 () Bool)

(assert (=> bm!307364 (= call!307368 (lemmaContainsAllItsOwnKeys!159 lt!1618009))))

(declare-fun b!4416349 () Bool)

(declare-fun res!1824200 () Bool)

(assert (=> b!4416349 (=> (not res!1824200) (not e!2750029))))

(assert (=> b!4416349 (= res!1824200 (forall!9480 (toList!3378 lt!1618009) lambda!152084))))

(assert (=> b!4416350 (= e!2750030 lt!1618009)))

(declare-fun lt!1618340 () Unit!80903)

(assert (=> b!4416350 (= lt!1618340 call!307368)))

(assert (=> b!4416350 call!307369))

(declare-fun lt!1618329 () Unit!80903)

(assert (=> b!4416350 (= lt!1618329 lt!1618340)))

(assert (=> b!4416350 call!307367))

(declare-fun lt!1618336 () Unit!80903)

(declare-fun Unit!80965 () Unit!80903)

(assert (=> b!4416350 (= lt!1618336 Unit!80965)))

(assert (= (and d!1338110 c!751884) b!4416350))

(assert (= (and d!1338110 (not c!751884)) b!4416346))

(assert (= (and b!4416346 res!1824201) b!4416348))

(assert (= (or b!4416350 b!4416346) bm!307364))

(assert (= (or b!4416350 b!4416348) bm!307362))

(assert (= (or b!4416350 b!4416346) bm!307363))

(assert (= (and d!1338110 res!1824202) b!4416349))

(assert (= (and b!4416349 res!1824200) b!4416347))

(declare-fun m!5092813 () Bool)

(assert (=> b!4416349 m!5092813))

(declare-fun m!5092815 () Bool)

(assert (=> b!4416347 m!5092815))

(declare-fun m!5092817 () Bool)

(assert (=> b!4416346 m!5092817))

(declare-fun m!5092819 () Bool)

(assert (=> b!4416346 m!5092819))

(declare-fun m!5092821 () Bool)

(assert (=> b!4416346 m!5092821))

(declare-fun m!5092823 () Bool)

(assert (=> b!4416346 m!5092823))

(declare-fun m!5092825 () Bool)

(assert (=> b!4416346 m!5092825))

(declare-fun m!5092827 () Bool)

(assert (=> b!4416346 m!5092827))

(declare-fun m!5092829 () Bool)

(assert (=> b!4416346 m!5092829))

(declare-fun m!5092831 () Bool)

(assert (=> b!4416346 m!5092831))

(assert (=> b!4416346 m!5092829))

(declare-fun m!5092833 () Bool)

(assert (=> b!4416346 m!5092833))

(declare-fun m!5092835 () Bool)

(assert (=> b!4416346 m!5092835))

(assert (=> b!4416346 m!5092835))

(declare-fun m!5092837 () Bool)

(assert (=> b!4416346 m!5092837))

(assert (=> b!4416346 m!5092819))

(declare-fun m!5092839 () Bool)

(assert (=> d!1338110 m!5092839))

(assert (=> d!1338110 m!5092437))

(declare-fun m!5092841 () Bool)

(assert (=> bm!307363 m!5092841))

(assert (=> bm!307364 m!5092793))

(declare-fun m!5092843 () Bool)

(assert (=> bm!307362 m!5092843))

(assert (=> b!4416113 d!1338110))

(declare-fun bs!753650 () Bool)

(declare-fun d!1338112 () Bool)

(assert (= bs!753650 (and d!1338112 start!430082)))

(declare-fun lambda!152085 () Int)

(assert (=> bs!753650 (= lambda!152085 lambda!151988)))

(declare-fun bs!753651 () Bool)

(assert (= bs!753651 (and d!1338112 d!1338032)))

(assert (=> bs!753651 (= lambda!152085 lambda!152020)))

(declare-fun bs!753652 () Bool)

(assert (= bs!753652 (and d!1338112 d!1338106)))

(assert (=> bs!753652 (not (= lambda!152085 lambda!152080))))

(declare-fun lt!1618349 () ListMap!2621)

(assert (=> d!1338112 (invariantList!782 (toList!3378 lt!1618349))))

(declare-fun e!2750031 () ListMap!2621)

(assert (=> d!1338112 (= lt!1618349 e!2750031)))

(declare-fun c!751885 () Bool)

(assert (=> d!1338112 (= c!751885 ((_ is Cons!49452) (toList!3377 lt!1618011)))))

(assert (=> d!1338112 (forall!9478 (toList!3377 lt!1618011) lambda!152085)))

(assert (=> d!1338112 (= (extractMap!756 (toList!3377 lt!1618011)) lt!1618349)))

(declare-fun b!4416351 () Bool)

(assert (=> b!4416351 (= e!2750031 (addToMapMapFromBucket!349 (_2!27874 (h!55113 (toList!3377 lt!1618011))) (extractMap!756 (t!356514 (toList!3377 lt!1618011)))))))

(declare-fun b!4416352 () Bool)

(assert (=> b!4416352 (= e!2750031 (ListMap!2622 Nil!49451))))

(assert (= (and d!1338112 c!751885) b!4416351))

(assert (= (and d!1338112 (not c!751885)) b!4416352))

(declare-fun m!5092845 () Bool)

(assert (=> d!1338112 m!5092845))

(declare-fun m!5092847 () Bool)

(assert (=> d!1338112 m!5092847))

(declare-fun m!5092849 () Bool)

(assert (=> b!4416351 m!5092849))

(assert (=> b!4416351 m!5092849))

(declare-fun m!5092851 () Bool)

(assert (=> b!4416351 m!5092851))

(assert (=> b!4416113 d!1338112))

(declare-fun bs!753653 () Bool)

(declare-fun d!1338114 () Bool)

(assert (= bs!753653 (and d!1338114 start!430082)))

(declare-fun lambda!152086 () Int)

(assert (=> bs!753653 (= lambda!152086 lambda!151988)))

(declare-fun bs!753654 () Bool)

(assert (= bs!753654 (and d!1338114 d!1338032)))

(assert (=> bs!753654 (= lambda!152086 lambda!152020)))

(declare-fun bs!753655 () Bool)

(assert (= bs!753655 (and d!1338114 d!1338106)))

(assert (=> bs!753655 (not (= lambda!152086 lambda!152080))))

(declare-fun bs!753656 () Bool)

(assert (= bs!753656 (and d!1338114 d!1338112)))

(assert (=> bs!753656 (= lambda!152086 lambda!152085)))

(declare-fun lt!1618350 () ListMap!2621)

(assert (=> d!1338114 (invariantList!782 (toList!3378 lt!1618350))))

(declare-fun e!2750032 () ListMap!2621)

(assert (=> d!1338114 (= lt!1618350 e!2750032)))

(declare-fun c!751886 () Bool)

(assert (=> d!1338114 (= c!751886 ((_ is Cons!49452) (t!356514 (toList!3377 lm!1616))))))

(assert (=> d!1338114 (forall!9478 (t!356514 (toList!3377 lm!1616)) lambda!152086)))

(assert (=> d!1338114 (= (extractMap!756 (t!356514 (toList!3377 lm!1616))) lt!1618350)))

(declare-fun b!4416353 () Bool)

(assert (=> b!4416353 (= e!2750032 (addToMapMapFromBucket!349 (_2!27874 (h!55113 (t!356514 (toList!3377 lm!1616)))) (extractMap!756 (t!356514 (t!356514 (toList!3377 lm!1616))))))))

(declare-fun b!4416354 () Bool)

(assert (=> b!4416354 (= e!2750032 (ListMap!2622 Nil!49451))))

(assert (= (and d!1338114 c!751886) b!4416353))

(assert (= (and d!1338114 (not c!751886)) b!4416354))

(declare-fun m!5092853 () Bool)

(assert (=> d!1338114 m!5092853))

(declare-fun m!5092855 () Bool)

(assert (=> d!1338114 m!5092855))

(declare-fun m!5092857 () Bool)

(assert (=> b!4416353 m!5092857))

(assert (=> b!4416353 m!5092857))

(declare-fun m!5092859 () Bool)

(assert (=> b!4416353 m!5092859))

(assert (=> b!4416113 d!1338114))

(declare-fun d!1338116 () Bool)

(declare-fun res!1824203 () Bool)

(declare-fun e!2750033 () Bool)

(assert (=> d!1338116 (=> res!1824203 e!2750033)))

(assert (=> d!1338116 (= res!1824203 (not ((_ is Cons!49451) lt!1618007)))))

(assert (=> d!1338116 (= (noDuplicateKeys!695 lt!1618007) e!2750033)))

(declare-fun b!4416355 () Bool)

(declare-fun e!2750034 () Bool)

(assert (=> b!4416355 (= e!2750033 e!2750034)))

(declare-fun res!1824204 () Bool)

(assert (=> b!4416355 (=> (not res!1824204) (not e!2750034))))

(assert (=> b!4416355 (= res!1824204 (not (containsKey!1043 (t!356513 lt!1618007) (_1!27873 (h!55112 lt!1618007)))))))

(declare-fun b!4416356 () Bool)

(assert (=> b!4416356 (= e!2750034 (noDuplicateKeys!695 (t!356513 lt!1618007)))))

(assert (= (and d!1338116 (not res!1824203)) b!4416355))

(assert (= (and b!4416355 res!1824204) b!4416356))

(declare-fun m!5092861 () Bool)

(assert (=> b!4416355 m!5092861))

(declare-fun m!5092863 () Bool)

(assert (=> b!4416356 m!5092863))

(assert (=> b!4416124 d!1338116))

(declare-fun d!1338118 () Bool)

(assert (=> d!1338118 (= (head!9174 (toList!3377 lt!1618011)) (h!55113 (toList!3377 lt!1618011)))))

(assert (=> b!4416127 d!1338118))

(declare-fun bs!753657 () Bool)

(declare-fun b!4416361 () Bool)

(assert (= bs!753657 (and b!4416361 d!1338080)))

(declare-fun lambda!152087 () Int)

(assert (=> bs!753657 (= (= (+!990 lt!1618009 lt!1618005) lt!1618297) (= lambda!152087 lambda!152077))))

(declare-fun bs!753658 () Bool)

(assert (= bs!753658 (and b!4416361 b!4416331)))

(assert (=> bs!753658 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152087 lambda!152075))))

(declare-fun bs!753659 () Bool)

(assert (= bs!753659 (and b!4416361 b!4416346)))

(assert (=> bs!753659 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152087 lambda!152082))))

(declare-fun bs!753660 () Bool)

(assert (= bs!753660 (and b!4416361 b!4416350)))

(assert (=> bs!753660 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152087 lambda!152081))))

(assert (=> bs!753658 (= (= (+!990 lt!1618009 lt!1618005) lt!1618302) (= lambda!152087 lambda!152076))))

(declare-fun bs!753661 () Bool)

(assert (= bs!753661 (and b!4416361 d!1338110)))

(assert (=> bs!753661 (= (= (+!990 lt!1618009 lt!1618005) lt!1618330) (= lambda!152087 lambda!152084))))

(assert (=> bs!753659 (= (= (+!990 lt!1618009 lt!1618005) lt!1618335) (= lambda!152087 lambda!152083))))

(declare-fun bs!753662 () Bool)

(assert (= bs!753662 (and b!4416361 d!1338036)))

(assert (=> bs!753662 (not (= lambda!152087 lambda!152028))))

(declare-fun bs!753663 () Bool)

(assert (= bs!753663 (and b!4416361 b!4416335)))

(assert (=> bs!753663 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152087 lambda!152074))))

(assert (=> b!4416361 true))

(declare-fun bs!753664 () Bool)

(declare-fun b!4416357 () Bool)

(assert (= bs!753664 (and b!4416357 d!1338080)))

(declare-fun lambda!152088 () Int)

(assert (=> bs!753664 (= (= (+!990 lt!1618009 lt!1618005) lt!1618297) (= lambda!152088 lambda!152077))))

(declare-fun bs!753665 () Bool)

(assert (= bs!753665 (and b!4416357 b!4416331)))

(assert (=> bs!753665 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152088 lambda!152075))))

(declare-fun bs!753666 () Bool)

(assert (= bs!753666 (and b!4416357 b!4416346)))

(assert (=> bs!753666 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152088 lambda!152082))))

(declare-fun bs!753667 () Bool)

(assert (= bs!753667 (and b!4416357 b!4416350)))

(assert (=> bs!753667 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152088 lambda!152081))))

(assert (=> bs!753665 (= (= (+!990 lt!1618009 lt!1618005) lt!1618302) (= lambda!152088 lambda!152076))))

(declare-fun bs!753668 () Bool)

(assert (= bs!753668 (and b!4416357 d!1338110)))

(assert (=> bs!753668 (= (= (+!990 lt!1618009 lt!1618005) lt!1618330) (= lambda!152088 lambda!152084))))

(declare-fun bs!753669 () Bool)

(assert (= bs!753669 (and b!4416357 b!4416361)))

(assert (=> bs!753669 (= lambda!152088 lambda!152087)))

(assert (=> bs!753666 (= (= (+!990 lt!1618009 lt!1618005) lt!1618335) (= lambda!152088 lambda!152083))))

(declare-fun bs!753670 () Bool)

(assert (= bs!753670 (and b!4416357 d!1338036)))

(assert (=> bs!753670 (not (= lambda!152088 lambda!152028))))

(declare-fun bs!753671 () Bool)

(assert (= bs!753671 (and b!4416357 b!4416335)))

(assert (=> bs!753671 (= (= (+!990 lt!1618009 lt!1618005) lt!1618009) (= lambda!152088 lambda!152074))))

(assert (=> b!4416357 true))

(declare-fun lt!1618358 () ListMap!2621)

(declare-fun lambda!152089 () Int)

(assert (=> bs!753664 (= (= lt!1618358 lt!1618297) (= lambda!152089 lambda!152077))))

(assert (=> bs!753665 (= (= lt!1618358 lt!1618009) (= lambda!152089 lambda!152075))))

(assert (=> bs!753666 (= (= lt!1618358 lt!1618009) (= lambda!152089 lambda!152082))))

(assert (=> bs!753667 (= (= lt!1618358 lt!1618009) (= lambda!152089 lambda!152081))))

(assert (=> b!4416357 (= (= lt!1618358 (+!990 lt!1618009 lt!1618005)) (= lambda!152089 lambda!152088))))

(assert (=> bs!753665 (= (= lt!1618358 lt!1618302) (= lambda!152089 lambda!152076))))

(assert (=> bs!753668 (= (= lt!1618358 lt!1618330) (= lambda!152089 lambda!152084))))

(assert (=> bs!753669 (= (= lt!1618358 (+!990 lt!1618009 lt!1618005)) (= lambda!152089 lambda!152087))))

(assert (=> bs!753666 (= (= lt!1618358 lt!1618335) (= lambda!152089 lambda!152083))))

(assert (=> bs!753670 (not (= lambda!152089 lambda!152028))))

(assert (=> bs!753671 (= (= lt!1618358 lt!1618009) (= lambda!152089 lambda!152074))))

(assert (=> b!4416357 true))

(declare-fun bs!753672 () Bool)

(declare-fun d!1338120 () Bool)

(assert (= bs!753672 (and d!1338120 d!1338080)))

(declare-fun lt!1618353 () ListMap!2621)

(declare-fun lambda!152090 () Int)

(assert (=> bs!753672 (= (= lt!1618353 lt!1618297) (= lambda!152090 lambda!152077))))

(declare-fun bs!753673 () Bool)

(assert (= bs!753673 (and d!1338120 b!4416331)))

(assert (=> bs!753673 (= (= lt!1618353 lt!1618009) (= lambda!152090 lambda!152075))))

(declare-fun bs!753674 () Bool)

(assert (= bs!753674 (and d!1338120 b!4416346)))

(assert (=> bs!753674 (= (= lt!1618353 lt!1618009) (= lambda!152090 lambda!152082))))

(declare-fun bs!753675 () Bool)

(assert (= bs!753675 (and d!1338120 b!4416350)))

(assert (=> bs!753675 (= (= lt!1618353 lt!1618009) (= lambda!152090 lambda!152081))))

(declare-fun bs!753676 () Bool)

(assert (= bs!753676 (and d!1338120 b!4416357)))

(assert (=> bs!753676 (= (= lt!1618353 (+!990 lt!1618009 lt!1618005)) (= lambda!152090 lambda!152088))))

(assert (=> bs!753673 (= (= lt!1618353 lt!1618302) (= lambda!152090 lambda!152076))))

(declare-fun bs!753677 () Bool)

(assert (= bs!753677 (and d!1338120 d!1338110)))

(assert (=> bs!753677 (= (= lt!1618353 lt!1618330) (= lambda!152090 lambda!152084))))

(assert (=> bs!753676 (= (= lt!1618353 lt!1618358) (= lambda!152090 lambda!152089))))

(declare-fun bs!753678 () Bool)

(assert (= bs!753678 (and d!1338120 b!4416361)))

(assert (=> bs!753678 (= (= lt!1618353 (+!990 lt!1618009 lt!1618005)) (= lambda!152090 lambda!152087))))

(assert (=> bs!753674 (= (= lt!1618353 lt!1618335) (= lambda!152090 lambda!152083))))

(declare-fun bs!753679 () Bool)

(assert (= bs!753679 (and d!1338120 d!1338036)))

(assert (=> bs!753679 (not (= lambda!152090 lambda!152028))))

(declare-fun bs!753680 () Bool)

(assert (= bs!753680 (and d!1338120 b!4416335)))

(assert (=> bs!753680 (= (= lt!1618353 lt!1618009) (= lambda!152090 lambda!152074))))

(assert (=> d!1338120 true))

(declare-fun e!2750036 () Bool)

(assert (=> d!1338120 e!2750036))

(declare-fun res!1824207 () Bool)

(assert (=> d!1338120 (=> (not res!1824207) (not e!2750036))))

(assert (=> d!1338120 (= res!1824207 (forall!9480 lt!1618007 lambda!152090))))

(declare-fun e!2750037 () ListMap!2621)

(assert (=> d!1338120 (= lt!1618353 e!2750037)))

(declare-fun c!751887 () Bool)

(assert (=> d!1338120 (= c!751887 ((_ is Nil!49451) lt!1618007))))

(assert (=> d!1338120 (noDuplicateKeys!695 lt!1618007)))

(assert (=> d!1338120 (= (addToMapMapFromBucket!349 lt!1618007 (+!990 lt!1618009 lt!1618005)) lt!1618353)))

(declare-fun bm!307365 () Bool)

(declare-fun call!307372 () Bool)

(assert (=> bm!307365 (= call!307372 (forall!9480 (toList!3378 (+!990 lt!1618009 lt!1618005)) (ite c!751887 lambda!152087 lambda!152089)))))

(assert (=> b!4416357 (= e!2750037 lt!1618358)))

(declare-fun lt!1618360 () ListMap!2621)

(assert (=> b!4416357 (= lt!1618360 (+!990 (+!990 lt!1618009 lt!1618005) (h!55112 lt!1618007)))))

(assert (=> b!4416357 (= lt!1618358 (addToMapMapFromBucket!349 (t!356513 lt!1618007) (+!990 (+!990 lt!1618009 lt!1618005) (h!55112 lt!1618007))))))

(declare-fun lt!1618351 () Unit!80903)

(declare-fun call!307371 () Unit!80903)

(assert (=> b!4416357 (= lt!1618351 call!307371)))

(assert (=> b!4416357 (forall!9480 (toList!3378 (+!990 lt!1618009 lt!1618005)) lambda!152088)))

(declare-fun lt!1618354 () Unit!80903)

(assert (=> b!4416357 (= lt!1618354 lt!1618351)))

(declare-fun call!307370 () Bool)

(assert (=> b!4416357 call!307370))

(declare-fun lt!1618371 () Unit!80903)

(declare-fun Unit!80966 () Unit!80903)

(assert (=> b!4416357 (= lt!1618371 Unit!80966)))

(assert (=> b!4416357 (forall!9480 (t!356513 lt!1618007) lambda!152089)))

(declare-fun lt!1618370 () Unit!80903)

(declare-fun Unit!80967 () Unit!80903)

(assert (=> b!4416357 (= lt!1618370 Unit!80967)))

(declare-fun lt!1618362 () Unit!80903)

(declare-fun Unit!80968 () Unit!80903)

(assert (=> b!4416357 (= lt!1618362 Unit!80968)))

(declare-fun lt!1618356 () Unit!80903)

(assert (=> b!4416357 (= lt!1618356 (forallContained!2069 (toList!3378 lt!1618360) lambda!152089 (h!55112 lt!1618007)))))

(assert (=> b!4416357 (contains!11909 lt!1618360 (_1!27873 (h!55112 lt!1618007)))))

(declare-fun lt!1618367 () Unit!80903)

(declare-fun Unit!80969 () Unit!80903)

(assert (=> b!4416357 (= lt!1618367 Unit!80969)))

(assert (=> b!4416357 (contains!11909 lt!1618358 (_1!27873 (h!55112 lt!1618007)))))

(declare-fun lt!1618365 () Unit!80903)

(declare-fun Unit!80970 () Unit!80903)

(assert (=> b!4416357 (= lt!1618365 Unit!80970)))

(assert (=> b!4416357 (forall!9480 lt!1618007 lambda!152089)))

(declare-fun lt!1618357 () Unit!80903)

(declare-fun Unit!80971 () Unit!80903)

(assert (=> b!4416357 (= lt!1618357 Unit!80971)))

(assert (=> b!4416357 (forall!9480 (toList!3378 lt!1618360) lambda!152089)))

(declare-fun lt!1618369 () Unit!80903)

(declare-fun Unit!80972 () Unit!80903)

(assert (=> b!4416357 (= lt!1618369 Unit!80972)))

(declare-fun lt!1618368 () Unit!80903)

(declare-fun Unit!80973 () Unit!80903)

(assert (=> b!4416357 (= lt!1618368 Unit!80973)))

(declare-fun lt!1618355 () Unit!80903)

(assert (=> b!4416357 (= lt!1618355 (addForallContainsKeyThenBeforeAdding!159 (+!990 lt!1618009 lt!1618005) lt!1618358 (_1!27873 (h!55112 lt!1618007)) (_2!27873 (h!55112 lt!1618007))))))

(assert (=> b!4416357 (forall!9480 (toList!3378 (+!990 lt!1618009 lt!1618005)) lambda!152089)))

(declare-fun lt!1618361 () Unit!80903)

(assert (=> b!4416357 (= lt!1618361 lt!1618355)))

(assert (=> b!4416357 (forall!9480 (toList!3378 (+!990 lt!1618009 lt!1618005)) lambda!152089)))

(declare-fun lt!1618364 () Unit!80903)

(declare-fun Unit!80974 () Unit!80903)

(assert (=> b!4416357 (= lt!1618364 Unit!80974)))

(declare-fun res!1824206 () Bool)

(assert (=> b!4416357 (= res!1824206 (forall!9480 lt!1618007 lambda!152089))))

(declare-fun e!2750035 () Bool)

(assert (=> b!4416357 (=> (not res!1824206) (not e!2750035))))

(assert (=> b!4416357 e!2750035))

(declare-fun lt!1618366 () Unit!80903)

(declare-fun Unit!80975 () Unit!80903)

(assert (=> b!4416357 (= lt!1618366 Unit!80975)))

(declare-fun b!4416358 () Bool)

(assert (=> b!4416358 (= e!2750036 (invariantList!782 (toList!3378 lt!1618353)))))

(declare-fun b!4416359 () Bool)

(assert (=> b!4416359 (= e!2750035 call!307372)))

(declare-fun bm!307366 () Bool)

(assert (=> bm!307366 (= call!307370 (forall!9480 (ite c!751887 (toList!3378 (+!990 lt!1618009 lt!1618005)) (toList!3378 lt!1618360)) (ite c!751887 lambda!152087 lambda!152089)))))

(declare-fun bm!307367 () Bool)

(assert (=> bm!307367 (= call!307371 (lemmaContainsAllItsOwnKeys!159 (+!990 lt!1618009 lt!1618005)))))

(declare-fun b!4416360 () Bool)

(declare-fun res!1824205 () Bool)

(assert (=> b!4416360 (=> (not res!1824205) (not e!2750036))))

(assert (=> b!4416360 (= res!1824205 (forall!9480 (toList!3378 (+!990 lt!1618009 lt!1618005)) lambda!152090))))

(assert (=> b!4416361 (= e!2750037 (+!990 lt!1618009 lt!1618005))))

(declare-fun lt!1618363 () Unit!80903)

(assert (=> b!4416361 (= lt!1618363 call!307371)))

(assert (=> b!4416361 call!307372))

(declare-fun lt!1618352 () Unit!80903)

(assert (=> b!4416361 (= lt!1618352 lt!1618363)))

(assert (=> b!4416361 call!307370))

(declare-fun lt!1618359 () Unit!80903)

(declare-fun Unit!80976 () Unit!80903)

(assert (=> b!4416361 (= lt!1618359 Unit!80976)))

(assert (= (and d!1338120 c!751887) b!4416361))

(assert (= (and d!1338120 (not c!751887)) b!4416357))

(assert (= (and b!4416357 res!1824206) b!4416359))

(assert (= (or b!4416361 b!4416357) bm!307367))

(assert (= (or b!4416361 b!4416359) bm!307365))

(assert (= (or b!4416361 b!4416357) bm!307366))

(assert (= (and d!1338120 res!1824207) b!4416360))

(assert (= (and b!4416360 res!1824205) b!4416358))

(declare-fun m!5092865 () Bool)

(assert (=> b!4416360 m!5092865))

(declare-fun m!5092867 () Bool)

(assert (=> b!4416358 m!5092867))

(declare-fun m!5092869 () Bool)

(assert (=> b!4416357 m!5092869))

(declare-fun m!5092871 () Bool)

(assert (=> b!4416357 m!5092871))

(declare-fun m!5092873 () Bool)

(assert (=> b!4416357 m!5092873))

(declare-fun m!5092875 () Bool)

(assert (=> b!4416357 m!5092875))

(declare-fun m!5092877 () Bool)

(assert (=> b!4416357 m!5092877))

(assert (=> b!4416357 m!5092421))

(declare-fun m!5092879 () Bool)

(assert (=> b!4416357 m!5092879))

(assert (=> b!4416357 m!5092421))

(declare-fun m!5092881 () Bool)

(assert (=> b!4416357 m!5092881))

(declare-fun m!5092883 () Bool)

(assert (=> b!4416357 m!5092883))

(assert (=> b!4416357 m!5092881))

(declare-fun m!5092885 () Bool)

(assert (=> b!4416357 m!5092885))

(declare-fun m!5092887 () Bool)

(assert (=> b!4416357 m!5092887))

(assert (=> b!4416357 m!5092887))

(declare-fun m!5092889 () Bool)

(assert (=> b!4416357 m!5092889))

(assert (=> b!4416357 m!5092871))

(declare-fun m!5092891 () Bool)

(assert (=> d!1338120 m!5092891))

(assert (=> d!1338120 m!5092407))

(declare-fun m!5092893 () Bool)

(assert (=> bm!307366 m!5092893))

(assert (=> bm!307367 m!5092421))

(declare-fun m!5092895 () Bool)

(assert (=> bm!307367 m!5092895))

(declare-fun m!5092897 () Bool)

(assert (=> bm!307365 m!5092897))

(assert (=> b!4416117 d!1338120))

(declare-fun d!1338122 () Bool)

(declare-fun e!2750038 () Bool)

(assert (=> d!1338122 e!2750038))

(declare-fun res!1824208 () Bool)

(assert (=> d!1338122 (=> (not res!1824208) (not e!2750038))))

(declare-fun lt!1618373 () ListMap!2621)

(assert (=> d!1338122 (= res!1824208 (contains!11909 lt!1618373 (_1!27873 lt!1618005)))))

(declare-fun lt!1618374 () List!49575)

(assert (=> d!1338122 (= lt!1618373 (ListMap!2622 lt!1618374))))

(declare-fun lt!1618375 () Unit!80903)

(declare-fun lt!1618372 () Unit!80903)

(assert (=> d!1338122 (= lt!1618375 lt!1618372)))

(assert (=> d!1338122 (= (getValueByKey!666 lt!1618374 (_1!27873 lt!1618005)) (Some!10679 (_2!27873 lt!1618005)))))

(assert (=> d!1338122 (= lt!1618372 (lemmaContainsTupThenGetReturnValue!404 lt!1618374 (_1!27873 lt!1618005) (_2!27873 lt!1618005)))))

(assert (=> d!1338122 (= lt!1618374 (insertNoDuplicatedKeys!175 (toList!3378 lt!1618009) (_1!27873 lt!1618005) (_2!27873 lt!1618005)))))

(assert (=> d!1338122 (= (+!990 lt!1618009 lt!1618005) lt!1618373)))

(declare-fun b!4416362 () Bool)

(declare-fun res!1824209 () Bool)

(assert (=> b!4416362 (=> (not res!1824209) (not e!2750038))))

(assert (=> b!4416362 (= res!1824209 (= (getValueByKey!666 (toList!3378 lt!1618373) (_1!27873 lt!1618005)) (Some!10679 (_2!27873 lt!1618005))))))

(declare-fun b!4416363 () Bool)

(assert (=> b!4416363 (= e!2750038 (contains!11916 (toList!3378 lt!1618373) lt!1618005))))

(assert (= (and d!1338122 res!1824208) b!4416362))

(assert (= (and b!4416362 res!1824209) b!4416363))

(declare-fun m!5092899 () Bool)

(assert (=> d!1338122 m!5092899))

(declare-fun m!5092901 () Bool)

(assert (=> d!1338122 m!5092901))

(declare-fun m!5092903 () Bool)

(assert (=> d!1338122 m!5092903))

(declare-fun m!5092905 () Bool)

(assert (=> d!1338122 m!5092905))

(declare-fun m!5092907 () Bool)

(assert (=> b!4416362 m!5092907))

(declare-fun m!5092909 () Bool)

(assert (=> b!4416363 m!5092909))

(assert (=> b!4416117 d!1338122))

(assert (=> b!4416115 d!1338034))

(declare-fun e!2750041 () Bool)

(declare-fun b!4416368 () Bool)

(declare-fun tp!1332626 () Bool)

(assert (=> b!4416368 (= e!2750041 (and tp_is_empty!26027 tp_is_empty!26025 tp!1332626))))

(assert (=> b!4416110 (= tp!1332613 e!2750041)))

(assert (= (and b!4416110 ((_ is Cons!49451) (t!356513 newBucket!194))) b!4416368))

(declare-fun b!4416373 () Bool)

(declare-fun e!2750044 () Bool)

(declare-fun tp!1332631 () Bool)

(declare-fun tp!1332632 () Bool)

(assert (=> b!4416373 (= e!2750044 (and tp!1332631 tp!1332632))))

(assert (=> b!4416121 (= tp!1332614 e!2750044)))

(assert (= (and b!4416121 ((_ is Cons!49452) (toList!3377 lm!1616))) b!4416373))

(declare-fun b_lambda!142225 () Bool)

(assert (= b_lambda!142213 (or start!430082 b_lambda!142225)))

(declare-fun bs!753681 () Bool)

(declare-fun d!1338124 () Bool)

(assert (= bs!753681 (and d!1338124 start!430082)))

(assert (=> bs!753681 (= (dynLambda!20813 lambda!151988 (h!55113 (toList!3377 lm!1616))) (noDuplicateKeys!695 (_2!27874 (h!55113 (toList!3377 lm!1616)))))))

(declare-fun m!5092911 () Bool)

(assert (=> bs!753681 m!5092911))

(assert (=> b!4416247 d!1338124))

(declare-fun b_lambda!142227 () Bool)

(assert (= b_lambda!142211 (or start!430082 b_lambda!142227)))

(declare-fun bs!753682 () Bool)

(declare-fun d!1338126 () Bool)

(assert (= bs!753682 (and d!1338126 start!430082)))

(assert (=> bs!753682 (= (dynLambda!20813 lambda!151988 (tuple2!49161 hash!366 newBucket!194)) (noDuplicateKeys!695 (_2!27874 (tuple2!49161 hash!366 newBucket!194))))))

(declare-fun m!5092913 () Bool)

(assert (=> bs!753682 m!5092913))

(assert (=> b!4416246 d!1338126))

(declare-fun b_lambda!142229 () Bool)

(assert (= b_lambda!142207 (or start!430082 b_lambda!142229)))

(declare-fun bs!753683 () Bool)

(declare-fun d!1338128 () Bool)

(assert (= bs!753683 (and d!1338128 start!430082)))

(assert (=> bs!753683 (= (dynLambda!20813 lambda!151988 (h!55113 (toList!3377 lt!1618011))) (noDuplicateKeys!695 (_2!27874 (h!55113 (toList!3377 lt!1618011)))))))

(declare-fun m!5092915 () Bool)

(assert (=> bs!753683 m!5092915))

(assert (=> b!4416211 d!1338128))

(check-sat (not d!1338104) (not b!4416150) (not bm!307365) (not b!4416357) (not b!4416174) (not b!4416349) (not d!1338102) (not b!4416143) (not d!1338042) (not b!4416175) (not b!4416362) (not bs!753682) (not b!4416172) (not bm!307366) (not bm!307364) (not b!4416334) (not b!4416342) (not bm!307362) (not d!1338122) (not b!4416343) (not d!1338050) (not b!4416332) (not b!4416229) (not b!4416360) (not d!1338036) (not d!1338064) tp_is_empty!26025 (not d!1338026) (not bm!307359) (not b!4416368) (not b_lambda!142225) tp_is_empty!26027 (not b!4416212) (not d!1338112) (not b!4416228) (not d!1338066) (not d!1338032) (not bm!307367) (not bm!307334) (not b!4416331) (not b!4416346) (not d!1338034) (not d!1338114) (not d!1338030) (not b!4416177) (not d!1338022) (not b!4416179) (not b!4416142) (not bm!307360) (not b!4416173) (not b_lambda!142229) (not b!4416363) (not b_lambda!142227) (not d!1338120) (not b!4416355) (not bm!307363) (not b!4416353) (not d!1338080) (not b!4416190) (not b!4416347) (not b!4416356) (not b!4416176) (not d!1338110) (not b!4416351) (not b!4416373) (not bs!753683) (not bm!307361) (not b!4416358) (not bs!753681) (not d!1338060) (not b!4416248) (not b!4416152) (not d!1338106))
(check-sat)
