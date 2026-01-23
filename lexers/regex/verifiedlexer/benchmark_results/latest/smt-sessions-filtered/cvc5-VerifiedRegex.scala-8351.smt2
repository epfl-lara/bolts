; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434470 () Bool)

(assert start!434470)

(declare-fun b!4440776 () Bool)

(declare-fun res!1838673 () Bool)

(declare-fun e!2765023 () Bool)

(assert (=> b!4440776 (=> (not res!1838673) (not e!2765023))))

(declare-datatypes ((K!11158 0))(
  ( (K!11159 (val!17197 Int)) )
))
(declare-datatypes ((V!11404 0))(
  ( (V!11405 (val!17198 Int)) )
))
(declare-datatypes ((tuple2!49714 0))(
  ( (tuple2!49715 (_1!28151 K!11158) (_2!28151 V!11404)) )
))
(declare-datatypes ((List!49913 0))(
  ( (Nil!49789) (Cons!49789 (h!55514 tuple2!49714) (t!356855 List!49913)) )
))
(declare-fun newBucket!194 () List!49913)

(declare-fun noDuplicateKeys!834 (List!49913) Bool)

(assert (=> b!4440776 (= res!1838673 (noDuplicateKeys!834 newBucket!194))))

(declare-fun res!1838675 () Bool)

(declare-fun e!2765027 () Bool)

(assert (=> start!434470 (=> (not res!1838675) (not e!2765027))))

(declare-datatypes ((tuple2!49716 0))(
  ( (tuple2!49717 (_1!28152 (_ BitVec 64)) (_2!28152 List!49913)) )
))
(declare-datatypes ((List!49914 0))(
  ( (Nil!49790) (Cons!49790 (h!55515 tuple2!49716) (t!356856 List!49914)) )
))
(declare-datatypes ((ListLongMap!2305 0))(
  ( (ListLongMap!2306 (toList!3655 List!49914)) )
))
(declare-fun lm!1616 () ListLongMap!2305)

(declare-fun lambda!157225 () Int)

(declare-fun forall!9699 (List!49914 Int) Bool)

(assert (=> start!434470 (= res!1838675 (forall!9699 (toList!3655 lm!1616) lambda!157225))))

(assert (=> start!434470 e!2765027))

(declare-fun tp_is_empty!26581 () Bool)

(assert (=> start!434470 tp_is_empty!26581))

(declare-fun tp_is_empty!26583 () Bool)

(assert (=> start!434470 tp_is_empty!26583))

(declare-fun e!2765025 () Bool)

(assert (=> start!434470 e!2765025))

(declare-fun e!2765026 () Bool)

(declare-fun inv!65345 (ListLongMap!2305) Bool)

(assert (=> start!434470 (and (inv!65345 lm!1616) e!2765026)))

(assert (=> start!434470 true))

(declare-fun b!4440777 () Bool)

(declare-fun res!1838676 () Bool)

(assert (=> b!4440777 (=> (not res!1838676) (not e!2765027))))

(declare-fun key!3717 () K!11158)

(declare-datatypes ((ListMap!2899 0))(
  ( (ListMap!2900 (toList!3656 List!49913)) )
))
(declare-fun contains!12359 (ListMap!2899 K!11158) Bool)

(declare-fun extractMap!895 (List!49914) ListMap!2899)

(assert (=> b!4440777 (= res!1838676 (not (contains!12359 (extractMap!895 (toList!3655 lm!1616)) key!3717)))))

(declare-fun b!4440778 () Bool)

(declare-fun e!2765028 () Bool)

(assert (=> b!4440778 (= e!2765023 (not e!2765028))))

(declare-fun res!1838681 () Bool)

(assert (=> b!4440778 (=> res!1838681 e!2765028)))

(declare-fun lt!1636584 () ListLongMap!2305)

(assert (=> b!4440778 (= res!1838681 (not (forall!9699 (toList!3655 lt!1636584) lambda!157225)))))

(assert (=> b!4440778 (forall!9699 (toList!3655 lt!1636584) lambda!157225)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun +!1216 (ListLongMap!2305 tuple2!49716) ListLongMap!2305)

(assert (=> b!4440778 (= lt!1636584 (+!1216 lm!1616 (tuple2!49717 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83883 0))(
  ( (Unit!83884) )
))
(declare-fun lt!1636581 () Unit!83883)

(declare-fun addValidProp!472 (ListLongMap!2305 Int (_ BitVec 64) List!49913) Unit!83883)

(assert (=> b!4440778 (= lt!1636581 (addValidProp!472 lm!1616 lambda!157225 hash!366 newBucket!194))))

(declare-fun newValue!93 () V!11404)

(declare-fun e!2765024 () Bool)

(declare-fun b!4440779 () Bool)

(declare-fun lt!1636582 () Bool)

(assert (=> b!4440779 (= e!2765024 (and (not lt!1636582) (= newBucket!194 (Cons!49789 (tuple2!49715 key!3717 newValue!93) Nil!49789))))))

(declare-fun b!4440780 () Bool)

(declare-fun tp!1334147 () Bool)

(assert (=> b!4440780 (= e!2765026 tp!1334147)))

(declare-fun b!4440781 () Bool)

(declare-fun res!1838682 () Bool)

(assert (=> b!4440781 (=> res!1838682 e!2765028)))

(assert (=> b!4440781 (= res!1838682 (or (and (is-Cons!49790 (toList!3655 lm!1616)) (= (_1!28152 (h!55515 (toList!3655 lm!1616))) hash!366)) (not (is-Cons!49790 (toList!3655 lm!1616))) (= (_1!28152 (h!55515 (toList!3655 lm!1616))) hash!366)))))

(declare-fun b!4440782 () Bool)

(declare-fun e!2765021 () Unit!83883)

(declare-fun Unit!83885 () Unit!83883)

(assert (=> b!4440782 (= e!2765021 Unit!83885)))

(declare-fun lt!1636583 () Unit!83883)

(declare-datatypes ((Hashable!5228 0))(
  ( (HashableExt!5227 (__x!30931 Int)) )
))
(declare-fun hashF!1220 () Hashable!5228)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!71 (ListLongMap!2305 K!11158 Hashable!5228) Unit!83883)

(assert (=> b!4440782 (= lt!1636583 (lemmaExtractTailMapContainsThenExtractMapDoes!71 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4440782 false))

(declare-fun b!4440783 () Bool)

(declare-fun res!1838674 () Bool)

(assert (=> b!4440783 (=> (not res!1838674) (not e!2765023))))

(assert (=> b!4440783 (= res!1838674 (forall!9699 (toList!3655 lm!1616) lambda!157225))))

(declare-fun b!4440784 () Bool)

(declare-fun e!2765022 () Bool)

(declare-fun apply!11686 (ListLongMap!2305 (_ BitVec 64)) List!49913)

(assert (=> b!4440784 (= e!2765022 (= newBucket!194 (Cons!49789 (tuple2!49715 key!3717 newValue!93) (apply!11686 lm!1616 hash!366))))))

(declare-fun b!4440785 () Bool)

(declare-fun tp!1334148 () Bool)

(assert (=> b!4440785 (= e!2765025 (and tp_is_empty!26583 tp_is_empty!26581 tp!1334148))))

(declare-fun b!4440786 () Bool)

(declare-fun res!1838672 () Bool)

(assert (=> b!4440786 (=> (not res!1838672) (not e!2765027))))

(declare-fun hash!2287 (Hashable!5228 K!11158) (_ BitVec 64))

(assert (=> b!4440786 (= res!1838672 (= (hash!2287 hashF!1220 key!3717) hash!366))))

(declare-fun b!4440787 () Bool)

(assert (=> b!4440787 (= e!2765027 e!2765023)))

(declare-fun res!1838680 () Bool)

(assert (=> b!4440787 (=> (not res!1838680) (not e!2765023))))

(assert (=> b!4440787 (= res!1838680 e!2765024)))

(declare-fun res!1838683 () Bool)

(assert (=> b!4440787 (=> res!1838683 e!2765024)))

(assert (=> b!4440787 (= res!1838683 e!2765022)))

(declare-fun res!1838678 () Bool)

(assert (=> b!4440787 (=> (not res!1838678) (not e!2765022))))

(assert (=> b!4440787 (= res!1838678 lt!1636582)))

(declare-fun contains!12360 (ListLongMap!2305 (_ BitVec 64)) Bool)

(assert (=> b!4440787 (= lt!1636582 (contains!12360 lm!1616 hash!366))))

(declare-fun b!4440788 () Bool)

(declare-fun tail!7368 (ListLongMap!2305) ListLongMap!2305)

(assert (=> b!4440788 (= e!2765028 (forall!9699 (toList!3655 (tail!7368 lm!1616)) lambda!157225))))

(declare-fun lt!1636580 () Unit!83883)

(assert (=> b!4440788 (= lt!1636580 e!2765021)))

(declare-fun c!755752 () Bool)

(declare-fun tail!7369 (List!49914) List!49914)

(assert (=> b!4440788 (= c!755752 (contains!12359 (extractMap!895 (tail!7369 (toList!3655 lm!1616))) key!3717))))

(declare-fun b!4440789 () Bool)

(declare-fun res!1838679 () Bool)

(assert (=> b!4440789 (=> (not res!1838679) (not e!2765027))))

(declare-fun allKeysSameHashInMap!940 (ListLongMap!2305 Hashable!5228) Bool)

(assert (=> b!4440789 (= res!1838679 (allKeysSameHashInMap!940 lm!1616 hashF!1220))))

(declare-fun b!4440790 () Bool)

(declare-fun Unit!83886 () Unit!83883)

(assert (=> b!4440790 (= e!2765021 Unit!83886)))

(declare-fun b!4440791 () Bool)

(declare-fun res!1838677 () Bool)

(assert (=> b!4440791 (=> (not res!1838677) (not e!2765027))))

(declare-fun allKeysSameHash!794 (List!49913 (_ BitVec 64) Hashable!5228) Bool)

(assert (=> b!4440791 (= res!1838677 (allKeysSameHash!794 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!434470 res!1838675) b!4440789))

(assert (= (and b!4440789 res!1838679) b!4440786))

(assert (= (and b!4440786 res!1838672) b!4440791))

(assert (= (and b!4440791 res!1838677) b!4440777))

(assert (= (and b!4440777 res!1838676) b!4440787))

(assert (= (and b!4440787 res!1838678) b!4440784))

(assert (= (and b!4440787 (not res!1838683)) b!4440779))

(assert (= (and b!4440787 res!1838680) b!4440776))

(assert (= (and b!4440776 res!1838673) b!4440783))

(assert (= (and b!4440783 res!1838674) b!4440778))

(assert (= (and b!4440778 (not res!1838681)) b!4440781))

(assert (= (and b!4440781 (not res!1838682)) b!4440788))

(assert (= (and b!4440788 c!755752) b!4440782))

(assert (= (and b!4440788 (not c!755752)) b!4440790))

(assert (= (and start!434470 (is-Cons!49789 newBucket!194)) b!4440785))

(assert (= start!434470 b!4440780))

(declare-fun m!5129359 () Bool)

(assert (=> b!4440782 m!5129359))

(declare-fun m!5129361 () Bool)

(assert (=> b!4440791 m!5129361))

(declare-fun m!5129363 () Bool)

(assert (=> b!4440789 m!5129363))

(declare-fun m!5129365 () Bool)

(assert (=> b!4440778 m!5129365))

(assert (=> b!4440778 m!5129365))

(declare-fun m!5129367 () Bool)

(assert (=> b!4440778 m!5129367))

(declare-fun m!5129369 () Bool)

(assert (=> b!4440778 m!5129369))

(declare-fun m!5129371 () Bool)

(assert (=> b!4440786 m!5129371))

(declare-fun m!5129373 () Bool)

(assert (=> b!4440787 m!5129373))

(declare-fun m!5129375 () Bool)

(assert (=> b!4440784 m!5129375))

(declare-fun m!5129377 () Bool)

(assert (=> start!434470 m!5129377))

(declare-fun m!5129379 () Bool)

(assert (=> start!434470 m!5129379))

(declare-fun m!5129381 () Bool)

(assert (=> b!4440788 m!5129381))

(declare-fun m!5129383 () Bool)

(assert (=> b!4440788 m!5129383))

(declare-fun m!5129385 () Bool)

(assert (=> b!4440788 m!5129385))

(declare-fun m!5129387 () Bool)

(assert (=> b!4440788 m!5129387))

(assert (=> b!4440788 m!5129381))

(assert (=> b!4440788 m!5129383))

(declare-fun m!5129389 () Bool)

(assert (=> b!4440788 m!5129389))

(declare-fun m!5129391 () Bool)

(assert (=> b!4440777 m!5129391))

(assert (=> b!4440777 m!5129391))

(declare-fun m!5129393 () Bool)

(assert (=> b!4440777 m!5129393))

(assert (=> b!4440783 m!5129377))

(declare-fun m!5129395 () Bool)

(assert (=> b!4440776 m!5129395))

(push 1)

(assert (not b!4440776))

(assert (not b!4440784))

(assert (not b!4440787))

(assert tp_is_empty!26583)

(assert (not b!4440777))

(assert (not b!4440785))

(assert (not b!4440788))

(assert (not b!4440778))

(assert (not b!4440791))

(assert (not start!434470))

(assert tp_is_empty!26581)

(assert (not b!4440783))

(assert (not b!4440782))

(assert (not b!4440789))

(assert (not b!4440780))

(assert (not b!4440786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1347924 () Bool)

(declare-fun res!1838724 () Bool)

(declare-fun e!2765057 () Bool)

(assert (=> d!1347924 (=> res!1838724 e!2765057)))

(assert (=> d!1347924 (= res!1838724 (is-Nil!49790 (toList!3655 lm!1616)))))

(assert (=> d!1347924 (= (forall!9699 (toList!3655 lm!1616) lambda!157225) e!2765057)))

(declare-fun b!4440844 () Bool)

(declare-fun e!2765058 () Bool)

(assert (=> b!4440844 (= e!2765057 e!2765058)))

(declare-fun res!1838725 () Bool)

(assert (=> b!4440844 (=> (not res!1838725) (not e!2765058))))

(declare-fun dynLambda!20908 (Int tuple2!49716) Bool)

(assert (=> b!4440844 (= res!1838725 (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 lm!1616))))))

(declare-fun b!4440845 () Bool)

(assert (=> b!4440845 (= e!2765058 (forall!9699 (t!356856 (toList!3655 lm!1616)) lambda!157225))))

(assert (= (and d!1347924 (not res!1838724)) b!4440844))

(assert (= (and b!4440844 res!1838725) b!4440845))

(declare-fun b_lambda!144993 () Bool)

(assert (=> (not b_lambda!144993) (not b!4440844)))

(declare-fun m!5129435 () Bool)

(assert (=> b!4440844 m!5129435))

(declare-fun m!5129437 () Bool)

(assert (=> b!4440845 m!5129437))

(assert (=> b!4440783 d!1347924))

(declare-fun bs!764083 () Bool)

(declare-fun d!1347926 () Bool)

(assert (= bs!764083 (and d!1347926 start!434470)))

(declare-fun lambda!157239 () Int)

(assert (=> bs!764083 (= lambda!157239 lambda!157225)))

(assert (=> d!1347926 (contains!12359 (extractMap!895 (toList!3655 lm!1616)) key!3717)))

(declare-fun lt!1636602 () Unit!83883)

(declare-fun choose!28200 (ListLongMap!2305 K!11158 Hashable!5228) Unit!83883)

(assert (=> d!1347926 (= lt!1636602 (choose!28200 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1347926 (forall!9699 (toList!3655 lm!1616) lambda!157239)))

(assert (=> d!1347926 (= (lemmaExtractTailMapContainsThenExtractMapDoes!71 lm!1616 key!3717 hashF!1220) lt!1636602)))

(declare-fun bs!764084 () Bool)

(assert (= bs!764084 d!1347926))

(assert (=> bs!764084 m!5129391))

(assert (=> bs!764084 m!5129391))

(assert (=> bs!764084 m!5129393))

(declare-fun m!5129439 () Bool)

(assert (=> bs!764084 m!5129439))

(declare-fun m!5129441 () Bool)

(assert (=> bs!764084 m!5129441))

(assert (=> b!4440782 d!1347926))

(declare-fun d!1347928 () Bool)

(declare-fun hash!2289 (Hashable!5228 K!11158) (_ BitVec 64))

(assert (=> d!1347928 (= (hash!2287 hashF!1220 key!3717) (hash!2289 hashF!1220 key!3717))))

(declare-fun bs!764085 () Bool)

(assert (= bs!764085 d!1347928))

(declare-fun m!5129443 () Bool)

(assert (=> bs!764085 m!5129443))

(assert (=> b!4440786 d!1347928))

(declare-fun d!1347930 () Bool)

(declare-datatypes ((Option!10800 0))(
  ( (None!10799) (Some!10799 (v!44027 List!49913)) )
))
(declare-fun get!16238 (Option!10800) List!49913)

(declare-fun getValueByKey!786 (List!49914 (_ BitVec 64)) Option!10800)

(assert (=> d!1347930 (= (apply!11686 lm!1616 hash!366) (get!16238 (getValueByKey!786 (toList!3655 lm!1616) hash!366)))))

(declare-fun bs!764086 () Bool)

(assert (= bs!764086 d!1347930))

(declare-fun m!5129445 () Bool)

(assert (=> bs!764086 m!5129445))

(assert (=> bs!764086 m!5129445))

(declare-fun m!5129447 () Bool)

(assert (=> bs!764086 m!5129447))

(assert (=> b!4440784 d!1347930))

(declare-fun bs!764088 () Bool)

(declare-fun d!1347934 () Bool)

(assert (= bs!764088 (and d!1347934 start!434470)))

(declare-fun lambda!157242 () Int)

(assert (=> bs!764088 (not (= lambda!157242 lambda!157225))))

(declare-fun bs!764089 () Bool)

(assert (= bs!764089 (and d!1347934 d!1347926)))

(assert (=> bs!764089 (not (= lambda!157242 lambda!157239))))

(assert (=> d!1347934 true))

(assert (=> d!1347934 (= (allKeysSameHashInMap!940 lm!1616 hashF!1220) (forall!9699 (toList!3655 lm!1616) lambda!157242))))

(declare-fun bs!764090 () Bool)

(assert (= bs!764090 d!1347934))

(declare-fun m!5129451 () Bool)

(assert (=> bs!764090 m!5129451))

(assert (=> b!4440789 d!1347934))

(declare-fun d!1347938 () Bool)

(declare-fun res!1838726 () Bool)

(declare-fun e!2765059 () Bool)

(assert (=> d!1347938 (=> res!1838726 e!2765059)))

(assert (=> d!1347938 (= res!1838726 (is-Nil!49790 (toList!3655 lt!1636584)))))

(assert (=> d!1347938 (= (forall!9699 (toList!3655 lt!1636584) lambda!157225) e!2765059)))

(declare-fun b!4440848 () Bool)

(declare-fun e!2765060 () Bool)

(assert (=> b!4440848 (= e!2765059 e!2765060)))

(declare-fun res!1838727 () Bool)

(assert (=> b!4440848 (=> (not res!1838727) (not e!2765060))))

(assert (=> b!4440848 (= res!1838727 (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 lt!1636584))))))

(declare-fun b!4440849 () Bool)

(assert (=> b!4440849 (= e!2765060 (forall!9699 (t!356856 (toList!3655 lt!1636584)) lambda!157225))))

(assert (= (and d!1347938 (not res!1838726)) b!4440848))

(assert (= (and b!4440848 res!1838727) b!4440849))

(declare-fun b_lambda!144995 () Bool)

(assert (=> (not b_lambda!144995) (not b!4440848)))

(declare-fun m!5129453 () Bool)

(assert (=> b!4440848 m!5129453))

(declare-fun m!5129455 () Bool)

(assert (=> b!4440849 m!5129455))

(assert (=> b!4440778 d!1347938))

(declare-fun d!1347940 () Bool)

(declare-fun e!2765063 () Bool)

(assert (=> d!1347940 e!2765063))

(declare-fun res!1838733 () Bool)

(assert (=> d!1347940 (=> (not res!1838733) (not e!2765063))))

(declare-fun lt!1636613 () ListLongMap!2305)

(assert (=> d!1347940 (= res!1838733 (contains!12360 lt!1636613 (_1!28152 (tuple2!49717 hash!366 newBucket!194))))))

(declare-fun lt!1636612 () List!49914)

(assert (=> d!1347940 (= lt!1636613 (ListLongMap!2306 lt!1636612))))

(declare-fun lt!1636611 () Unit!83883)

(declare-fun lt!1636614 () Unit!83883)

(assert (=> d!1347940 (= lt!1636611 lt!1636614)))

(assert (=> d!1347940 (= (getValueByKey!786 lt!1636612 (_1!28152 (tuple2!49717 hash!366 newBucket!194))) (Some!10799 (_2!28152 (tuple2!49717 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!513 (List!49914 (_ BitVec 64) List!49913) Unit!83883)

(assert (=> d!1347940 (= lt!1636614 (lemmaContainsTupThenGetReturnValue!513 lt!1636612 (_1!28152 (tuple2!49717 hash!366 newBucket!194)) (_2!28152 (tuple2!49717 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!297 (List!49914 (_ BitVec 64) List!49913) List!49914)

(assert (=> d!1347940 (= lt!1636612 (insertStrictlySorted!297 (toList!3655 lm!1616) (_1!28152 (tuple2!49717 hash!366 newBucket!194)) (_2!28152 (tuple2!49717 hash!366 newBucket!194))))))

(assert (=> d!1347940 (= (+!1216 lm!1616 (tuple2!49717 hash!366 newBucket!194)) lt!1636613)))

(declare-fun b!4440856 () Bool)

(declare-fun res!1838732 () Bool)

(assert (=> b!4440856 (=> (not res!1838732) (not e!2765063))))

(assert (=> b!4440856 (= res!1838732 (= (getValueByKey!786 (toList!3655 lt!1636613) (_1!28152 (tuple2!49717 hash!366 newBucket!194))) (Some!10799 (_2!28152 (tuple2!49717 hash!366 newBucket!194)))))))

(declare-fun b!4440857 () Bool)

(declare-fun contains!12363 (List!49914 tuple2!49716) Bool)

(assert (=> b!4440857 (= e!2765063 (contains!12363 (toList!3655 lt!1636613) (tuple2!49717 hash!366 newBucket!194)))))

(assert (= (and d!1347940 res!1838733) b!4440856))

(assert (= (and b!4440856 res!1838732) b!4440857))

(declare-fun m!5129459 () Bool)

(assert (=> d!1347940 m!5129459))

(declare-fun m!5129461 () Bool)

(assert (=> d!1347940 m!5129461))

(declare-fun m!5129463 () Bool)

(assert (=> d!1347940 m!5129463))

(declare-fun m!5129465 () Bool)

(assert (=> d!1347940 m!5129465))

(declare-fun m!5129467 () Bool)

(assert (=> b!4440856 m!5129467))

(declare-fun m!5129469 () Bool)

(assert (=> b!4440857 m!5129469))

(assert (=> b!4440778 d!1347940))

(declare-fun d!1347944 () Bool)

(assert (=> d!1347944 (forall!9699 (toList!3655 (+!1216 lm!1616 (tuple2!49717 hash!366 newBucket!194))) lambda!157225)))

(declare-fun lt!1636617 () Unit!83883)

(declare-fun choose!28201 (ListLongMap!2305 Int (_ BitVec 64) List!49913) Unit!83883)

(assert (=> d!1347944 (= lt!1636617 (choose!28201 lm!1616 lambda!157225 hash!366 newBucket!194))))

(declare-fun e!2765066 () Bool)

(assert (=> d!1347944 e!2765066))

(declare-fun res!1838736 () Bool)

(assert (=> d!1347944 (=> (not res!1838736) (not e!2765066))))

(assert (=> d!1347944 (= res!1838736 (forall!9699 (toList!3655 lm!1616) lambda!157225))))

(assert (=> d!1347944 (= (addValidProp!472 lm!1616 lambda!157225 hash!366 newBucket!194) lt!1636617)))

(declare-fun b!4440861 () Bool)

(assert (=> b!4440861 (= e!2765066 (dynLambda!20908 lambda!157225 (tuple2!49717 hash!366 newBucket!194)))))

(assert (= (and d!1347944 res!1838736) b!4440861))

(declare-fun b_lambda!144997 () Bool)

(assert (=> (not b_lambda!144997) (not b!4440861)))

(assert (=> d!1347944 m!5129367))

(declare-fun m!5129471 () Bool)

(assert (=> d!1347944 m!5129471))

(declare-fun m!5129473 () Bool)

(assert (=> d!1347944 m!5129473))

(assert (=> d!1347944 m!5129377))

(declare-fun m!5129475 () Bool)

(assert (=> b!4440861 m!5129475))

(assert (=> b!4440778 d!1347944))

(declare-fun d!1347946 () Bool)

(declare-fun res!1838737 () Bool)

(declare-fun e!2765067 () Bool)

(assert (=> d!1347946 (=> res!1838737 e!2765067)))

(assert (=> d!1347946 (= res!1838737 (is-Nil!49790 (toList!3655 (tail!7368 lm!1616))))))

(assert (=> d!1347946 (= (forall!9699 (toList!3655 (tail!7368 lm!1616)) lambda!157225) e!2765067)))

(declare-fun b!4440862 () Bool)

(declare-fun e!2765068 () Bool)

(assert (=> b!4440862 (= e!2765067 e!2765068)))

(declare-fun res!1838738 () Bool)

(assert (=> b!4440862 (=> (not res!1838738) (not e!2765068))))

(assert (=> b!4440862 (= res!1838738 (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 (tail!7368 lm!1616)))))))

(declare-fun b!4440863 () Bool)

(assert (=> b!4440863 (= e!2765068 (forall!9699 (t!356856 (toList!3655 (tail!7368 lm!1616))) lambda!157225))))

(assert (= (and d!1347946 (not res!1838737)) b!4440862))

(assert (= (and b!4440862 res!1838738) b!4440863))

(declare-fun b_lambda!144999 () Bool)

(assert (=> (not b_lambda!144999) (not b!4440862)))

(declare-fun m!5129477 () Bool)

(assert (=> b!4440862 m!5129477))

(declare-fun m!5129479 () Bool)

(assert (=> b!4440863 m!5129479))

(assert (=> b!4440788 d!1347946))

(declare-fun d!1347948 () Bool)

(assert (=> d!1347948 (= (tail!7368 lm!1616) (ListLongMap!2306 (tail!7369 (toList!3655 lm!1616))))))

(declare-fun bs!764093 () Bool)

(assert (= bs!764093 d!1347948))

(assert (=> bs!764093 m!5129381))

(assert (=> b!4440788 d!1347948))

(declare-fun bs!764094 () Bool)

(declare-fun d!1347950 () Bool)

(assert (= bs!764094 (and d!1347950 start!434470)))

(declare-fun lambda!157248 () Int)

(assert (=> bs!764094 (= lambda!157248 lambda!157225)))

(declare-fun bs!764095 () Bool)

(assert (= bs!764095 (and d!1347950 d!1347926)))

(assert (=> bs!764095 (= lambda!157248 lambda!157239)))

(declare-fun bs!764096 () Bool)

(assert (= bs!764096 (and d!1347950 d!1347934)))

(assert (=> bs!764096 (not (= lambda!157248 lambda!157242))))

(declare-fun lt!1636620 () ListMap!2899)

(declare-fun invariantList!841 (List!49913) Bool)

(assert (=> d!1347950 (invariantList!841 (toList!3656 lt!1636620))))

(declare-fun e!2765071 () ListMap!2899)

(assert (=> d!1347950 (= lt!1636620 e!2765071)))

(declare-fun c!755758 () Bool)

(assert (=> d!1347950 (= c!755758 (is-Cons!49790 (tail!7369 (toList!3655 lm!1616))))))

(assert (=> d!1347950 (forall!9699 (tail!7369 (toList!3655 lm!1616)) lambda!157248)))

(assert (=> d!1347950 (= (extractMap!895 (tail!7369 (toList!3655 lm!1616))) lt!1636620)))

(declare-fun b!4440868 () Bool)

(declare-fun addToMapMapFromBucket!445 (List!49913 ListMap!2899) ListMap!2899)

(assert (=> b!4440868 (= e!2765071 (addToMapMapFromBucket!445 (_2!28152 (h!55515 (tail!7369 (toList!3655 lm!1616)))) (extractMap!895 (t!356856 (tail!7369 (toList!3655 lm!1616))))))))

(declare-fun b!4440869 () Bool)

(assert (=> b!4440869 (= e!2765071 (ListMap!2900 Nil!49789))))

(assert (= (and d!1347950 c!755758) b!4440868))

(assert (= (and d!1347950 (not c!755758)) b!4440869))

(declare-fun m!5129481 () Bool)

(assert (=> d!1347950 m!5129481))

(assert (=> d!1347950 m!5129381))

(declare-fun m!5129483 () Bool)

(assert (=> d!1347950 m!5129483))

(declare-fun m!5129485 () Bool)

(assert (=> b!4440868 m!5129485))

(assert (=> b!4440868 m!5129485))

(declare-fun m!5129487 () Bool)

(assert (=> b!4440868 m!5129487))

(assert (=> b!4440788 d!1347950))

(declare-fun d!1347952 () Bool)

(assert (=> d!1347952 (= (tail!7369 (toList!3655 lm!1616)) (t!356856 (toList!3655 lm!1616)))))

(assert (=> b!4440788 d!1347952))

(declare-fun d!1347954 () Bool)

(declare-fun e!2765093 () Bool)

(assert (=> d!1347954 e!2765093))

(declare-fun res!1838751 () Bool)

(assert (=> d!1347954 (=> res!1838751 e!2765093)))

(declare-fun e!2765094 () Bool)

(assert (=> d!1347954 (= res!1838751 e!2765094)))

(declare-fun res!1838752 () Bool)

(assert (=> d!1347954 (=> (not res!1838752) (not e!2765094))))

(declare-fun lt!1636643 () Bool)

(assert (=> d!1347954 (= res!1838752 (not lt!1636643))))

(declare-fun lt!1636640 () Bool)

(assert (=> d!1347954 (= lt!1636643 lt!1636640)))

(declare-fun lt!1636645 () Unit!83883)

(declare-fun e!2765091 () Unit!83883)

(assert (=> d!1347954 (= lt!1636645 e!2765091)))

(declare-fun c!755766 () Bool)

(assert (=> d!1347954 (= c!755766 lt!1636640)))

(declare-fun containsKey!1238 (List!49913 K!11158) Bool)

(assert (=> d!1347954 (= lt!1636640 (containsKey!1238 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(assert (=> d!1347954 (= (contains!12359 (extractMap!895 (tail!7369 (toList!3655 lm!1616))) key!3717) lt!1636643)))

(declare-fun b!4440898 () Bool)

(declare-fun e!2765095 () Unit!83883)

(assert (=> b!4440898 (= e!2765091 e!2765095)))

(declare-fun c!755767 () Bool)

(declare-fun call!308999 () Bool)

(assert (=> b!4440898 (= c!755767 call!308999)))

(declare-fun b!4440899 () Bool)

(declare-datatypes ((List!49917 0))(
  ( (Nil!49793) (Cons!49793 (h!55520 K!11158) (t!356859 List!49917)) )
))
(declare-fun e!2765090 () List!49917)

(declare-fun getKeysList!289 (List!49913) List!49917)

(assert (=> b!4440899 (= e!2765090 (getKeysList!289 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616))))))))

(declare-fun bm!308994 () Bool)

(declare-fun contains!12364 (List!49917 K!11158) Bool)

(assert (=> bm!308994 (= call!308999 (contains!12364 e!2765090 key!3717))))

(declare-fun c!755765 () Bool)

(assert (=> bm!308994 (= c!755765 c!755766)))

(declare-fun b!4440900 () Bool)

(declare-fun Unit!83891 () Unit!83883)

(assert (=> b!4440900 (= e!2765095 Unit!83891)))

(declare-fun b!4440901 () Bool)

(declare-fun e!2765092 () Bool)

(declare-fun keys!17055 (ListMap!2899) List!49917)

(assert (=> b!4440901 (= e!2765092 (contains!12364 (keys!17055 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(declare-fun b!4440902 () Bool)

(assert (=> b!4440902 false))

(declare-fun lt!1636642 () Unit!83883)

(declare-fun lt!1636644 () Unit!83883)

(assert (=> b!4440902 (= lt!1636642 lt!1636644)))

(assert (=> b!4440902 (containsKey!1238 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!287 (List!49913 K!11158) Unit!83883)

(assert (=> b!4440902 (= lt!1636644 (lemmaInGetKeysListThenContainsKey!287 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(declare-fun Unit!83892 () Unit!83883)

(assert (=> b!4440902 (= e!2765095 Unit!83892)))

(declare-fun b!4440903 () Bool)

(assert (=> b!4440903 (= e!2765094 (not (contains!12364 (keys!17055 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717)))))

(declare-fun b!4440904 () Bool)

(assert (=> b!4440904 (= e!2765093 e!2765092)))

(declare-fun res!1838753 () Bool)

(assert (=> b!4440904 (=> (not res!1838753) (not e!2765092))))

(declare-datatypes ((Option!10801 0))(
  ( (None!10800) (Some!10800 (v!44028 V!11404)) )
))
(declare-fun isDefined!8090 (Option!10801) Bool)

(declare-fun getValueByKey!787 (List!49913 K!11158) Option!10801)

(assert (=> b!4440904 (= res!1838753 (isDefined!8090 (getValueByKey!787 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717)))))

(declare-fun b!4440905 () Bool)

(declare-fun lt!1636647 () Unit!83883)

(assert (=> b!4440905 (= e!2765091 lt!1636647)))

(declare-fun lt!1636646 () Unit!83883)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!693 (List!49913 K!11158) Unit!83883)

(assert (=> b!4440905 (= lt!1636646 (lemmaContainsKeyImpliesGetValueByKeyDefined!693 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(assert (=> b!4440905 (isDefined!8090 (getValueByKey!787 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(declare-fun lt!1636641 () Unit!83883)

(assert (=> b!4440905 (= lt!1636641 lt!1636646)))

(declare-fun lemmaInListThenGetKeysListContains!286 (List!49913 K!11158) Unit!83883)

(assert (=> b!4440905 (= lt!1636647 (lemmaInListThenGetKeysListContains!286 (toList!3656 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))) key!3717))))

(assert (=> b!4440905 call!308999))

(declare-fun b!4440906 () Bool)

(assert (=> b!4440906 (= e!2765090 (keys!17055 (extractMap!895 (tail!7369 (toList!3655 lm!1616)))))))

(assert (= (and d!1347954 c!755766) b!4440905))

(assert (= (and d!1347954 (not c!755766)) b!4440898))

(assert (= (and b!4440898 c!755767) b!4440902))

(assert (= (and b!4440898 (not c!755767)) b!4440900))

(assert (= (or b!4440905 b!4440898) bm!308994))

(assert (= (and bm!308994 c!755765) b!4440899))

(assert (= (and bm!308994 (not c!755765)) b!4440906))

(assert (= (and d!1347954 res!1838752) b!4440903))

(assert (= (and d!1347954 (not res!1838751)) b!4440904))

(assert (= (and b!4440904 res!1838753) b!4440901))

(declare-fun m!5129499 () Bool)

(assert (=> b!4440899 m!5129499))

(declare-fun m!5129501 () Bool)

(assert (=> b!4440902 m!5129501))

(declare-fun m!5129503 () Bool)

(assert (=> b!4440902 m!5129503))

(assert (=> b!4440906 m!5129383))

(declare-fun m!5129505 () Bool)

(assert (=> b!4440906 m!5129505))

(assert (=> b!4440901 m!5129383))

(assert (=> b!4440901 m!5129505))

(assert (=> b!4440901 m!5129505))

(declare-fun m!5129507 () Bool)

(assert (=> b!4440901 m!5129507))

(declare-fun m!5129509 () Bool)

(assert (=> b!4440905 m!5129509))

(declare-fun m!5129511 () Bool)

(assert (=> b!4440905 m!5129511))

(assert (=> b!4440905 m!5129511))

(declare-fun m!5129513 () Bool)

(assert (=> b!4440905 m!5129513))

(declare-fun m!5129515 () Bool)

(assert (=> b!4440905 m!5129515))

(assert (=> d!1347954 m!5129501))

(declare-fun m!5129517 () Bool)

(assert (=> bm!308994 m!5129517))

(assert (=> b!4440904 m!5129511))

(assert (=> b!4440904 m!5129511))

(assert (=> b!4440904 m!5129513))

(assert (=> b!4440903 m!5129383))

(assert (=> b!4440903 m!5129505))

(assert (=> b!4440903 m!5129505))

(assert (=> b!4440903 m!5129507))

(assert (=> b!4440788 d!1347954))

(declare-fun d!1347962 () Bool)

(declare-fun e!2765099 () Bool)

(assert (=> d!1347962 e!2765099))

(declare-fun res!1838754 () Bool)

(assert (=> d!1347962 (=> res!1838754 e!2765099)))

(declare-fun e!2765100 () Bool)

(assert (=> d!1347962 (= res!1838754 e!2765100)))

(declare-fun res!1838755 () Bool)

(assert (=> d!1347962 (=> (not res!1838755) (not e!2765100))))

(declare-fun lt!1636651 () Bool)

(assert (=> d!1347962 (= res!1838755 (not lt!1636651))))

(declare-fun lt!1636648 () Bool)

(assert (=> d!1347962 (= lt!1636651 lt!1636648)))

(declare-fun lt!1636653 () Unit!83883)

(declare-fun e!2765097 () Unit!83883)

(assert (=> d!1347962 (= lt!1636653 e!2765097)))

(declare-fun c!755769 () Bool)

(assert (=> d!1347962 (= c!755769 lt!1636648)))

(assert (=> d!1347962 (= lt!1636648 (containsKey!1238 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(assert (=> d!1347962 (= (contains!12359 (extractMap!895 (toList!3655 lm!1616)) key!3717) lt!1636651)))

(declare-fun b!4440907 () Bool)

(declare-fun e!2765101 () Unit!83883)

(assert (=> b!4440907 (= e!2765097 e!2765101)))

(declare-fun c!755770 () Bool)

(declare-fun call!309000 () Bool)

(assert (=> b!4440907 (= c!755770 call!309000)))

(declare-fun b!4440908 () Bool)

(declare-fun e!2765096 () List!49917)

(assert (=> b!4440908 (= e!2765096 (getKeysList!289 (toList!3656 (extractMap!895 (toList!3655 lm!1616)))))))

(declare-fun bm!308995 () Bool)

(assert (=> bm!308995 (= call!309000 (contains!12364 e!2765096 key!3717))))

(declare-fun c!755768 () Bool)

(assert (=> bm!308995 (= c!755768 c!755769)))

(declare-fun b!4440909 () Bool)

(declare-fun Unit!83893 () Unit!83883)

(assert (=> b!4440909 (= e!2765101 Unit!83893)))

(declare-fun b!4440910 () Bool)

(declare-fun e!2765098 () Bool)

(assert (=> b!4440910 (= e!2765098 (contains!12364 (keys!17055 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(declare-fun b!4440911 () Bool)

(assert (=> b!4440911 false))

(declare-fun lt!1636650 () Unit!83883)

(declare-fun lt!1636652 () Unit!83883)

(assert (=> b!4440911 (= lt!1636650 lt!1636652)))

(assert (=> b!4440911 (containsKey!1238 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717)))

(assert (=> b!4440911 (= lt!1636652 (lemmaInGetKeysListThenContainsKey!287 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(declare-fun Unit!83894 () Unit!83883)

(assert (=> b!4440911 (= e!2765101 Unit!83894)))

(declare-fun b!4440912 () Bool)

(assert (=> b!4440912 (= e!2765100 (not (contains!12364 (keys!17055 (extractMap!895 (toList!3655 lm!1616))) key!3717)))))

(declare-fun b!4440913 () Bool)

(assert (=> b!4440913 (= e!2765099 e!2765098)))

(declare-fun res!1838756 () Bool)

(assert (=> b!4440913 (=> (not res!1838756) (not e!2765098))))

(assert (=> b!4440913 (= res!1838756 (isDefined!8090 (getValueByKey!787 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717)))))

(declare-fun b!4440914 () Bool)

(declare-fun lt!1636655 () Unit!83883)

(assert (=> b!4440914 (= e!2765097 lt!1636655)))

(declare-fun lt!1636654 () Unit!83883)

(assert (=> b!4440914 (= lt!1636654 (lemmaContainsKeyImpliesGetValueByKeyDefined!693 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(assert (=> b!4440914 (isDefined!8090 (getValueByKey!787 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(declare-fun lt!1636649 () Unit!83883)

(assert (=> b!4440914 (= lt!1636649 lt!1636654)))

(assert (=> b!4440914 (= lt!1636655 (lemmaInListThenGetKeysListContains!286 (toList!3656 (extractMap!895 (toList!3655 lm!1616))) key!3717))))

(assert (=> b!4440914 call!309000))

(declare-fun b!4440915 () Bool)

(assert (=> b!4440915 (= e!2765096 (keys!17055 (extractMap!895 (toList!3655 lm!1616))))))

(assert (= (and d!1347962 c!755769) b!4440914))

(assert (= (and d!1347962 (not c!755769)) b!4440907))

(assert (= (and b!4440907 c!755770) b!4440911))

(assert (= (and b!4440907 (not c!755770)) b!4440909))

(assert (= (or b!4440914 b!4440907) bm!308995))

(assert (= (and bm!308995 c!755768) b!4440908))

(assert (= (and bm!308995 (not c!755768)) b!4440915))

(assert (= (and d!1347962 res!1838755) b!4440912))

(assert (= (and d!1347962 (not res!1838754)) b!4440913))

(assert (= (and b!4440913 res!1838756) b!4440910))

(declare-fun m!5129519 () Bool)

(assert (=> b!4440908 m!5129519))

(declare-fun m!5129521 () Bool)

(assert (=> b!4440911 m!5129521))

(declare-fun m!5129523 () Bool)

(assert (=> b!4440911 m!5129523))

(assert (=> b!4440915 m!5129391))

(declare-fun m!5129525 () Bool)

(assert (=> b!4440915 m!5129525))

(assert (=> b!4440910 m!5129391))

(assert (=> b!4440910 m!5129525))

(assert (=> b!4440910 m!5129525))

(declare-fun m!5129527 () Bool)

(assert (=> b!4440910 m!5129527))

(declare-fun m!5129529 () Bool)

(assert (=> b!4440914 m!5129529))

(declare-fun m!5129531 () Bool)

(assert (=> b!4440914 m!5129531))

(assert (=> b!4440914 m!5129531))

(declare-fun m!5129533 () Bool)

(assert (=> b!4440914 m!5129533))

(declare-fun m!5129535 () Bool)

(assert (=> b!4440914 m!5129535))

(assert (=> d!1347962 m!5129521))

(declare-fun m!5129537 () Bool)

(assert (=> bm!308995 m!5129537))

(assert (=> b!4440913 m!5129531))

(assert (=> b!4440913 m!5129531))

(assert (=> b!4440913 m!5129533))

(assert (=> b!4440912 m!5129391))

(assert (=> b!4440912 m!5129525))

(assert (=> b!4440912 m!5129525))

(assert (=> b!4440912 m!5129527))

(assert (=> b!4440777 d!1347962))

(declare-fun bs!764101 () Bool)

(declare-fun d!1347964 () Bool)

(assert (= bs!764101 (and d!1347964 start!434470)))

(declare-fun lambda!157255 () Int)

(assert (=> bs!764101 (= lambda!157255 lambda!157225)))

(declare-fun bs!764102 () Bool)

(assert (= bs!764102 (and d!1347964 d!1347926)))

(assert (=> bs!764102 (= lambda!157255 lambda!157239)))

(declare-fun bs!764103 () Bool)

(assert (= bs!764103 (and d!1347964 d!1347934)))

(assert (=> bs!764103 (not (= lambda!157255 lambda!157242))))

(declare-fun bs!764104 () Bool)

(assert (= bs!764104 (and d!1347964 d!1347950)))

(assert (=> bs!764104 (= lambda!157255 lambda!157248)))

(declare-fun lt!1636656 () ListMap!2899)

(assert (=> d!1347964 (invariantList!841 (toList!3656 lt!1636656))))

(declare-fun e!2765102 () ListMap!2899)

(assert (=> d!1347964 (= lt!1636656 e!2765102)))

(declare-fun c!755771 () Bool)

(assert (=> d!1347964 (= c!755771 (is-Cons!49790 (toList!3655 lm!1616)))))

(assert (=> d!1347964 (forall!9699 (toList!3655 lm!1616) lambda!157255)))

(assert (=> d!1347964 (= (extractMap!895 (toList!3655 lm!1616)) lt!1636656)))

(declare-fun b!4440916 () Bool)

(assert (=> b!4440916 (= e!2765102 (addToMapMapFromBucket!445 (_2!28152 (h!55515 (toList!3655 lm!1616))) (extractMap!895 (t!356856 (toList!3655 lm!1616)))))))

(declare-fun b!4440917 () Bool)

(assert (=> b!4440917 (= e!2765102 (ListMap!2900 Nil!49789))))

(assert (= (and d!1347964 c!755771) b!4440916))

(assert (= (and d!1347964 (not c!755771)) b!4440917))

(declare-fun m!5129539 () Bool)

(assert (=> d!1347964 m!5129539))

(declare-fun m!5129541 () Bool)

(assert (=> d!1347964 m!5129541))

(declare-fun m!5129543 () Bool)

(assert (=> b!4440916 m!5129543))

(assert (=> b!4440916 m!5129543))

(declare-fun m!5129545 () Bool)

(assert (=> b!4440916 m!5129545))

(assert (=> b!4440777 d!1347964))

(assert (=> start!434470 d!1347924))

(declare-fun d!1347966 () Bool)

(declare-fun isStrictlySorted!268 (List!49914) Bool)

(assert (=> d!1347966 (= (inv!65345 lm!1616) (isStrictlySorted!268 (toList!3655 lm!1616)))))

(declare-fun bs!764105 () Bool)

(assert (= bs!764105 d!1347966))

(declare-fun m!5129547 () Bool)

(assert (=> bs!764105 m!5129547))

(assert (=> start!434470 d!1347966))

(declare-fun d!1347968 () Bool)

(declare-fun e!2765111 () Bool)

(assert (=> d!1347968 e!2765111))

(declare-fun res!1838761 () Bool)

(assert (=> d!1347968 (=> res!1838761 e!2765111)))

(declare-fun lt!1636676 () Bool)

(assert (=> d!1347968 (= res!1838761 (not lt!1636676))))

(declare-fun lt!1636673 () Bool)

(assert (=> d!1347968 (= lt!1636676 lt!1636673)))

(declare-fun lt!1636674 () Unit!83883)

(declare-fun e!2765112 () Unit!83883)

(assert (=> d!1347968 (= lt!1636674 e!2765112)))

(declare-fun c!755776 () Bool)

(assert (=> d!1347968 (= c!755776 lt!1636673)))

(declare-fun containsKey!1239 (List!49914 (_ BitVec 64)) Bool)

(assert (=> d!1347968 (= lt!1636673 (containsKey!1239 (toList!3655 lm!1616) hash!366))))

(assert (=> d!1347968 (= (contains!12360 lm!1616 hash!366) lt!1636676)))

(declare-fun b!4440930 () Bool)

(declare-fun lt!1636675 () Unit!83883)

(assert (=> b!4440930 (= e!2765112 lt!1636675)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!694 (List!49914 (_ BitVec 64)) Unit!83883)

(assert (=> b!4440930 (= lt!1636675 (lemmaContainsKeyImpliesGetValueByKeyDefined!694 (toList!3655 lm!1616) hash!366))))

(declare-fun isDefined!8091 (Option!10800) Bool)

(assert (=> b!4440930 (isDefined!8091 (getValueByKey!786 (toList!3655 lm!1616) hash!366))))

(declare-fun b!4440931 () Bool)

(declare-fun Unit!83895 () Unit!83883)

(assert (=> b!4440931 (= e!2765112 Unit!83895)))

(declare-fun b!4440932 () Bool)

(assert (=> b!4440932 (= e!2765111 (isDefined!8091 (getValueByKey!786 (toList!3655 lm!1616) hash!366)))))

(assert (= (and d!1347968 c!755776) b!4440930))

(assert (= (and d!1347968 (not c!755776)) b!4440931))

(assert (= (and d!1347968 (not res!1838761)) b!4440932))

(declare-fun m!5129549 () Bool)

(assert (=> d!1347968 m!5129549))

(declare-fun m!5129551 () Bool)

(assert (=> b!4440930 m!5129551))

(assert (=> b!4440930 m!5129445))

(assert (=> b!4440930 m!5129445))

(declare-fun m!5129553 () Bool)

(assert (=> b!4440930 m!5129553))

(assert (=> b!4440932 m!5129445))

(assert (=> b!4440932 m!5129445))

(assert (=> b!4440932 m!5129553))

(assert (=> b!4440787 d!1347968))

(declare-fun d!1347970 () Bool)

(declare-fun res!1838766 () Bool)

(declare-fun e!2765117 () Bool)

(assert (=> d!1347970 (=> res!1838766 e!2765117)))

(assert (=> d!1347970 (= res!1838766 (not (is-Cons!49789 newBucket!194)))))

(assert (=> d!1347970 (= (noDuplicateKeys!834 newBucket!194) e!2765117)))

(declare-fun b!4440937 () Bool)

(declare-fun e!2765118 () Bool)

(assert (=> b!4440937 (= e!2765117 e!2765118)))

(declare-fun res!1838767 () Bool)

(assert (=> b!4440937 (=> (not res!1838767) (not e!2765118))))

(declare-fun containsKey!1240 (List!49913 K!11158) Bool)

(assert (=> b!4440937 (= res!1838767 (not (containsKey!1240 (t!356855 newBucket!194) (_1!28151 (h!55514 newBucket!194)))))))

(declare-fun b!4440938 () Bool)

(assert (=> b!4440938 (= e!2765118 (noDuplicateKeys!834 (t!356855 newBucket!194)))))

(assert (= (and d!1347970 (not res!1838766)) b!4440937))

(assert (= (and b!4440937 res!1838767) b!4440938))

(declare-fun m!5129555 () Bool)

(assert (=> b!4440937 m!5129555))

(declare-fun m!5129557 () Bool)

(assert (=> b!4440938 m!5129557))

(assert (=> b!4440776 d!1347970))

(declare-fun d!1347972 () Bool)

(assert (=> d!1347972 true))

(assert (=> d!1347972 true))

(declare-fun lambda!157258 () Int)

(declare-fun forall!9701 (List!49913 Int) Bool)

(assert (=> d!1347972 (= (allKeysSameHash!794 newBucket!194 hash!366 hashF!1220) (forall!9701 newBucket!194 lambda!157258))))

(declare-fun bs!764106 () Bool)

(assert (= bs!764106 d!1347972))

(declare-fun m!5129567 () Bool)

(assert (=> bs!764106 m!5129567))

(assert (=> b!4440791 d!1347972))

(declare-fun b!4440950 () Bool)

(declare-fun e!2765123 () Bool)

(declare-fun tp!1334159 () Bool)

(declare-fun tp!1334160 () Bool)

(assert (=> b!4440950 (= e!2765123 (and tp!1334159 tp!1334160))))

(assert (=> b!4440780 (= tp!1334147 e!2765123)))

(assert (= (and b!4440780 (is-Cons!49790 (toList!3655 lm!1616))) b!4440950))

(declare-fun b!4440955 () Bool)

(declare-fun e!2765126 () Bool)

(declare-fun tp!1334163 () Bool)

(assert (=> b!4440955 (= e!2765126 (and tp_is_empty!26583 tp_is_empty!26581 tp!1334163))))

(assert (=> b!4440785 (= tp!1334148 e!2765126)))

(assert (= (and b!4440785 (is-Cons!49789 (t!356855 newBucket!194))) b!4440955))

(declare-fun b_lambda!145001 () Bool)

(assert (= b_lambda!144995 (or start!434470 b_lambda!145001)))

(declare-fun bs!764107 () Bool)

(declare-fun d!1347976 () Bool)

(assert (= bs!764107 (and d!1347976 start!434470)))

(assert (=> bs!764107 (= (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 lt!1636584))) (noDuplicateKeys!834 (_2!28152 (h!55515 (toList!3655 lt!1636584)))))))

(declare-fun m!5129569 () Bool)

(assert (=> bs!764107 m!5129569))

(assert (=> b!4440848 d!1347976))

(declare-fun b_lambda!145003 () Bool)

(assert (= b_lambda!144999 (or start!434470 b_lambda!145003)))

(declare-fun bs!764108 () Bool)

(declare-fun d!1347978 () Bool)

(assert (= bs!764108 (and d!1347978 start!434470)))

(assert (=> bs!764108 (= (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 (tail!7368 lm!1616)))) (noDuplicateKeys!834 (_2!28152 (h!55515 (toList!3655 (tail!7368 lm!1616))))))))

(declare-fun m!5129571 () Bool)

(assert (=> bs!764108 m!5129571))

(assert (=> b!4440862 d!1347978))

(declare-fun b_lambda!145005 () Bool)

(assert (= b_lambda!144993 (or start!434470 b_lambda!145005)))

(declare-fun bs!764109 () Bool)

(declare-fun d!1347980 () Bool)

(assert (= bs!764109 (and d!1347980 start!434470)))

(assert (=> bs!764109 (= (dynLambda!20908 lambda!157225 (h!55515 (toList!3655 lm!1616))) (noDuplicateKeys!834 (_2!28152 (h!55515 (toList!3655 lm!1616)))))))

(declare-fun m!5129573 () Bool)

(assert (=> bs!764109 m!5129573))

(assert (=> b!4440844 d!1347980))

(declare-fun b_lambda!145007 () Bool)

(assert (= b_lambda!144997 (or start!434470 b_lambda!145007)))

(declare-fun bs!764110 () Bool)

(declare-fun d!1347982 () Bool)

(assert (= bs!764110 (and d!1347982 start!434470)))

(assert (=> bs!764110 (= (dynLambda!20908 lambda!157225 (tuple2!49717 hash!366 newBucket!194)) (noDuplicateKeys!834 (_2!28152 (tuple2!49717 hash!366 newBucket!194))))))

(declare-fun m!5129575 () Bool)

(assert (=> bs!764110 m!5129575))

(assert (=> b!4440861 d!1347982))

(push 1)

(assert (not bs!764109))

(assert (not b!4440902))

(assert (not b!4440849))

(assert (not bs!764110))

(assert (not d!1347968))

(assert (not d!1347964))

(assert (not b!4440857))

(assert (not b_lambda!145003))

(assert (not b!4440901))

(assert tp_is_empty!26581)

(assert (not b_lambda!145001))

(assert (not b!4440913))

(assert (not b!4440914))

(assert (not b!4440950))

(assert (not b!4440904))

(assert (not b_lambda!145007))

(assert (not b!4440916))

(assert (not b!4440938))

(assert (not b!4440845))

(assert (not b!4440863))

(assert (not b!4440937))

(assert (not b_lambda!145005))

(assert (not b!4440932))

(assert (not d!1347966))

(assert (not d!1347954))

(assert (not d!1347930))

(assert (not bm!308995))

(assert (not d!1347972))

(assert (not bs!764108))

(assert (not d!1347944))

(assert (not d!1347934))

(assert tp_is_empty!26583)

(assert (not d!1347940))

(assert (not b!4440930))

(assert (not b!4440911))

(assert (not b!4440955))

(assert (not d!1347928))

(assert (not b!4440905))

(assert (not b!4440910))

(assert (not d!1347962))

(assert (not b!4440856))

(assert (not b!4440912))

(assert (not b!4440903))

(assert (not d!1347948))

(assert (not b!4440868))

(assert (not b!4440915))

(assert (not b!4440908))

(assert (not b!4440899))

(assert (not d!1347950))

(assert (not b!4440906))

(assert (not bs!764107))

(assert (not d!1347926))

(assert (not bm!308994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

