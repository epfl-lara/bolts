; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431492 () Bool)

(assert start!431492)

(declare-fun b!4424129 () Bool)

(declare-fun res!1828894 () Bool)

(declare-fun e!2754660 () Bool)

(assert (=> b!4424129 (=> (not res!1828894) (not e!2754660))))

(declare-datatypes ((K!10940 0))(
  ( (K!10941 (val!17023 Int)) )
))
(declare-datatypes ((V!11186 0))(
  ( (V!11187 (val!17024 Int)) )
))
(declare-datatypes ((tuple2!49366 0))(
  ( (tuple2!49367 (_1!27977 K!10940) (_2!27977 V!11186)) )
))
(declare-datatypes ((List!49699 0))(
  ( (Nil!49575) (Cons!49575 (h!55258 tuple2!49366) (t!356637 List!49699)) )
))
(declare-fun newBucket!194 () List!49699)

(declare-fun noDuplicateKeys!747 (List!49699) Bool)

(assert (=> b!4424129 (= res!1828894 (noDuplicateKeys!747 newBucket!194))))

(declare-fun b!4424131 () Bool)

(declare-fun e!2754657 () Bool)

(declare-fun tp!1333156 () Bool)

(assert (=> b!4424131 (= e!2754657 tp!1333156)))

(declare-fun b!4424132 () Bool)

(declare-fun res!1828888 () Bool)

(declare-fun e!2754654 () Bool)

(assert (=> b!4424132 (=> res!1828888 e!2754654)))

(declare-datatypes ((tuple2!49368 0))(
  ( (tuple2!49369 (_1!27978 (_ BitVec 64)) (_2!27978 List!49699)) )
))
(declare-datatypes ((List!49700 0))(
  ( (Nil!49576) (Cons!49576 (h!55259 tuple2!49368) (t!356638 List!49700)) )
))
(declare-datatypes ((ListLongMap!2131 0))(
  ( (ListLongMap!2132 (toList!3481 List!49700)) )
))
(declare-fun lm!1616 () ListLongMap!2131)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4424132 (= res!1828888 (or (and ((_ is Cons!49576) (toList!3481 lm!1616)) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)) (not ((_ is Cons!49576) (toList!3481 lm!1616))) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)))))

(declare-fun key!3717 () K!10940)

(declare-fun lt!1623533 () Bool)

(declare-fun b!4424133 () Bool)

(declare-fun e!2754649 () Bool)

(declare-fun newValue!93 () V!11186)

(assert (=> b!4424133 (= e!2754649 (and (not lt!1623533) (= newBucket!194 (Cons!49575 (tuple2!49367 key!3717 newValue!93) Nil!49575))))))

(declare-fun b!4424134 () Bool)

(assert (=> b!4424134 (= e!2754660 (not e!2754654))))

(declare-fun res!1828883 () Bool)

(assert (=> b!4424134 (=> res!1828883 e!2754654)))

(declare-fun lt!1623528 () ListLongMap!2131)

(declare-fun lambda!153648 () Int)

(declare-fun forall!9556 (List!49700 Int) Bool)

(assert (=> b!4424134 (= res!1828883 (not (forall!9556 (toList!3481 lt!1623528) lambda!153648)))))

(assert (=> b!4424134 (forall!9556 (toList!3481 lt!1623528) lambda!153648)))

(declare-fun lt!1623539 () tuple2!49368)

(declare-fun +!1078 (ListLongMap!2131 tuple2!49368) ListLongMap!2131)

(assert (=> b!4424134 (= lt!1623528 (+!1078 lm!1616 lt!1623539))))

(assert (=> b!4424134 (= lt!1623539 (tuple2!49369 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81703 0))(
  ( (Unit!81704) )
))
(declare-fun lt!1623542 () Unit!81703)

(declare-fun addValidProp!391 (ListLongMap!2131 Int (_ BitVec 64) List!49699) Unit!81703)

(assert (=> b!4424134 (= lt!1623542 (addValidProp!391 lm!1616 lambda!153648 hash!366 newBucket!194))))

(declare-fun b!4424135 () Bool)

(declare-fun e!2754651 () Unit!81703)

(declare-fun Unit!81705 () Unit!81703)

(assert (=> b!4424135 (= e!2754651 Unit!81705)))

(declare-fun b!4424136 () Bool)

(declare-fun e!2754658 () Bool)

(declare-fun e!2754653 () Bool)

(assert (=> b!4424136 (= e!2754658 e!2754653)))

(declare-fun res!1828893 () Bool)

(assert (=> b!4424136 (=> res!1828893 e!2754653)))

(declare-datatypes ((ListMap!2725 0))(
  ( (ListMap!2726 (toList!3482 List!49699)) )
))
(declare-fun lt!1623543 () ListMap!2725)

(declare-fun lt!1623529 () ListMap!2725)

(declare-fun eq!405 (ListMap!2725 ListMap!2725) Bool)

(assert (=> b!4424136 (= res!1828893 (not (eq!405 lt!1623543 lt!1623529)))))

(declare-fun lt!1623532 () ListMap!2725)

(declare-fun addToMapMapFromBucket!384 (List!49699 ListMap!2725) ListMap!2725)

(assert (=> b!4424136 (= lt!1623529 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532))))

(declare-fun b!4424137 () Bool)

(declare-fun res!1828890 () Bool)

(declare-fun e!2754656 () Bool)

(assert (=> b!4424137 (=> (not res!1828890) (not e!2754656))))

(declare-datatypes ((Hashable!5141 0))(
  ( (HashableExt!5140 (__x!30844 Int)) )
))
(declare-fun hashF!1220 () Hashable!5141)

(declare-fun hash!2110 (Hashable!5141 K!10940) (_ BitVec 64))

(assert (=> b!4424137 (= res!1828890 (= (hash!2110 hashF!1220 key!3717) hash!366))))

(declare-fun b!4424138 () Bool)

(declare-fun res!1828895 () Bool)

(assert (=> b!4424138 (=> (not res!1828895) (not e!2754656))))

(declare-fun allKeysSameHash!707 (List!49699 (_ BitVec 64) Hashable!5141) Bool)

(assert (=> b!4424138 (= res!1828895 (allKeysSameHash!707 newBucket!194 hash!366 hashF!1220))))

(declare-fun e!2754659 () Bool)

(declare-fun b!4424139 () Bool)

(declare-fun apply!11599 (ListLongMap!2131 (_ BitVec 64)) List!49699)

(assert (=> b!4424139 (= e!2754659 (= newBucket!194 (Cons!49575 (tuple2!49367 key!3717 newValue!93) (apply!11599 lm!1616 hash!366))))))

(declare-fun b!4424140 () Bool)

(declare-fun res!1828884 () Bool)

(assert (=> b!4424140 (=> (not res!1828884) (not e!2754660))))

(assert (=> b!4424140 (= res!1828884 (forall!9556 (toList!3481 lm!1616) lambda!153648))))

(declare-fun b!4424141 () Bool)

(declare-fun e!2754650 () Bool)

(declare-fun isEmpty!28341 (ListLongMap!2131) Bool)

(assert (=> b!4424141 (= e!2754650 (not (isEmpty!28341 lm!1616)))))

(declare-fun lt!1623538 () ListMap!2725)

(declare-fun lt!1623530 () tuple2!49366)

(declare-fun +!1079 (ListMap!2725 tuple2!49366) ListMap!2725)

(assert (=> b!4424141 (eq!405 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538) (+!1079 lt!1623529 lt!1623530))))

(declare-fun lt!1623531 () Unit!81703)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!176 (ListMap!2725 K!10940 V!11186 List!49699) Unit!81703)

(assert (=> b!4424141 (= lt!1623531 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!176 lt!1623532 key!3717 newValue!93 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun tp_is_empty!26235 () Bool)

(declare-fun tp!1333155 () Bool)

(declare-fun b!4424130 () Bool)

(declare-fun e!2754655 () Bool)

(declare-fun tp_is_empty!26233 () Bool)

(assert (=> b!4424130 (= e!2754655 (and tp_is_empty!26235 tp_is_empty!26233 tp!1333155))))

(declare-fun res!1828889 () Bool)

(assert (=> start!431492 (=> (not res!1828889) (not e!2754656))))

(assert (=> start!431492 (= res!1828889 (forall!9556 (toList!3481 lm!1616) lambda!153648))))

(assert (=> start!431492 e!2754656))

(assert (=> start!431492 tp_is_empty!26233))

(assert (=> start!431492 tp_is_empty!26235))

(assert (=> start!431492 e!2754655))

(declare-fun inv!65126 (ListLongMap!2131) Bool)

(assert (=> start!431492 (and (inv!65126 lm!1616) e!2754657)))

(assert (=> start!431492 true))

(declare-fun b!4424142 () Bool)

(declare-fun e!2754652 () Bool)

(assert (=> b!4424142 (= e!2754652 e!2754660)))

(declare-fun res!1828897 () Bool)

(assert (=> b!4424142 (=> (not res!1828897) (not e!2754660))))

(assert (=> b!4424142 (= res!1828897 e!2754649)))

(declare-fun res!1828885 () Bool)

(assert (=> b!4424142 (=> res!1828885 e!2754649)))

(assert (=> b!4424142 (= res!1828885 e!2754659)))

(declare-fun res!1828892 () Bool)

(assert (=> b!4424142 (=> (not res!1828892) (not e!2754659))))

(assert (=> b!4424142 (= res!1828892 lt!1623533)))

(declare-fun contains!12072 (ListLongMap!2131 (_ BitVec 64)) Bool)

(assert (=> b!4424142 (= lt!1623533 (contains!12072 lm!1616 hash!366))))

(declare-fun b!4424143 () Bool)

(declare-fun Unit!81706 () Unit!81703)

(assert (=> b!4424143 (= e!2754651 Unit!81706)))

(declare-fun lt!1623537 () Unit!81703)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!34 (ListLongMap!2131 K!10940 Hashable!5141) Unit!81703)

(assert (=> b!4424143 (= lt!1623537 (lemmaExtractTailMapContainsThenExtractMapDoes!34 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4424143 false))

(declare-fun b!4424144 () Bool)

(assert (=> b!4424144 (= e!2754656 e!2754652)))

(declare-fun res!1828896 () Bool)

(assert (=> b!4424144 (=> (not res!1828896) (not e!2754652))))

(declare-fun contains!12073 (ListMap!2725 K!10940) Bool)

(assert (=> b!4424144 (= res!1828896 (not (contains!12073 lt!1623543 key!3717)))))

(declare-fun extractMap!808 (List!49700) ListMap!2725)

(assert (=> b!4424144 (= lt!1623543 (extractMap!808 (toList!3481 lm!1616)))))

(declare-fun b!4424145 () Bool)

(assert (=> b!4424145 (= e!2754653 e!2754650)))

(declare-fun res!1828887 () Bool)

(assert (=> b!4424145 (=> res!1828887 e!2754650)))

(declare-fun containsKey!1106 (List!49699 K!10940) Bool)

(assert (=> b!4424145 (= res!1828887 (containsKey!1106 (_2!27978 (h!55259 (toList!3481 lm!1616))) key!3717))))

(assert (=> b!4424145 (not (containsKey!1106 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))) key!3717))))

(declare-fun lt!1623535 () Unit!81703)

(declare-fun lemmaNotSameHashThenCannotContainKey!126 (ListLongMap!2131 K!10940 (_ BitVec 64) Hashable!5141) Unit!81703)

(assert (=> b!4424145 (= lt!1623535 (lemmaNotSameHashThenCannotContainKey!126 lm!1616 key!3717 (_1!27978 (h!55259 (toList!3481 lm!1616))) hashF!1220))))

(declare-fun b!4424146 () Bool)

(assert (=> b!4424146 (= e!2754654 e!2754658)))

(declare-fun res!1828891 () Bool)

(assert (=> b!4424146 (=> res!1828891 e!2754658)))

(declare-fun head!9212 (ListLongMap!2131) tuple2!49368)

(assert (=> b!4424146 (= res!1828891 (= (head!9212 lm!1616) lt!1623539))))

(declare-fun lt!1623541 () ListMap!2725)

(assert (=> b!4424146 (eq!405 lt!1623541 lt!1623538)))

(assert (=> b!4424146 (= lt!1623538 (+!1079 lt!1623532 lt!1623530))))

(assert (=> b!4424146 (= lt!1623530 (tuple2!49367 key!3717 newValue!93))))

(declare-fun lt!1623534 () ListLongMap!2131)

(assert (=> b!4424146 (= lt!1623532 (extractMap!808 (toList!3481 lt!1623534)))))

(assert (=> b!4424146 (= lt!1623541 (extractMap!808 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))

(declare-fun lt!1623536 () Unit!81703)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!121 (ListLongMap!2131 (_ BitVec 64) List!49699 K!10940 V!11186 Hashable!5141) Unit!81703)

(assert (=> b!4424146 (= lt!1623536 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!121 lt!1623534 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7266 (ListLongMap!2131) ListLongMap!2131)

(assert (=> b!4424146 (= lt!1623534 (tail!7266 lm!1616))))

(declare-fun lt!1623540 () Unit!81703)

(assert (=> b!4424146 (= lt!1623540 e!2754651)))

(declare-fun c!753061 () Bool)

(declare-fun tail!7267 (List!49700) List!49700)

(assert (=> b!4424146 (= c!753061 (contains!12073 (extractMap!808 (tail!7267 (toList!3481 lm!1616))) key!3717))))

(declare-fun b!4424147 () Bool)

(declare-fun res!1828886 () Bool)

(assert (=> b!4424147 (=> (not res!1828886) (not e!2754656))))

(declare-fun allKeysSameHashInMap!853 (ListLongMap!2131 Hashable!5141) Bool)

(assert (=> b!4424147 (= res!1828886 (allKeysSameHashInMap!853 lm!1616 hashF!1220))))

(assert (= (and start!431492 res!1828889) b!4424147))

(assert (= (and b!4424147 res!1828886) b!4424137))

(assert (= (and b!4424137 res!1828890) b!4424138))

(assert (= (and b!4424138 res!1828895) b!4424144))

(assert (= (and b!4424144 res!1828896) b!4424142))

(assert (= (and b!4424142 res!1828892) b!4424139))

(assert (= (and b!4424142 (not res!1828885)) b!4424133))

(assert (= (and b!4424142 res!1828897) b!4424129))

(assert (= (and b!4424129 res!1828894) b!4424140))

(assert (= (and b!4424140 res!1828884) b!4424134))

(assert (= (and b!4424134 (not res!1828883)) b!4424132))

(assert (= (and b!4424132 (not res!1828888)) b!4424146))

(assert (= (and b!4424146 c!753061) b!4424143))

(assert (= (and b!4424146 (not c!753061)) b!4424135))

(assert (= (and b!4424146 (not res!1828891)) b!4424136))

(assert (= (and b!4424136 (not res!1828893)) b!4424145))

(assert (= (and b!4424145 (not res!1828887)) b!4424141))

(assert (= (and start!431492 ((_ is Cons!49575) newBucket!194)) b!4424130))

(assert (= start!431492 b!4424131))

(declare-fun m!5103355 () Bool)

(assert (=> b!4424144 m!5103355))

(declare-fun m!5103357 () Bool)

(assert (=> b!4424144 m!5103357))

(declare-fun m!5103359 () Bool)

(assert (=> start!431492 m!5103359))

(declare-fun m!5103361 () Bool)

(assert (=> start!431492 m!5103361))

(declare-fun m!5103363 () Bool)

(assert (=> b!4424137 m!5103363))

(declare-fun m!5103365 () Bool)

(assert (=> b!4424136 m!5103365))

(declare-fun m!5103367 () Bool)

(assert (=> b!4424136 m!5103367))

(declare-fun m!5103369 () Bool)

(assert (=> b!4424138 m!5103369))

(declare-fun m!5103371 () Bool)

(assert (=> b!4424141 m!5103371))

(declare-fun m!5103373 () Bool)

(assert (=> b!4424141 m!5103373))

(declare-fun m!5103375 () Bool)

(assert (=> b!4424141 m!5103375))

(assert (=> b!4424141 m!5103371))

(declare-fun m!5103377 () Bool)

(assert (=> b!4424141 m!5103377))

(declare-fun m!5103379 () Bool)

(assert (=> b!4424141 m!5103379))

(assert (=> b!4424141 m!5103373))

(declare-fun m!5103381 () Bool)

(assert (=> b!4424143 m!5103381))

(declare-fun m!5103383 () Bool)

(assert (=> b!4424147 m!5103383))

(assert (=> b!4424140 m!5103359))

(declare-fun m!5103385 () Bool)

(assert (=> b!4424139 m!5103385))

(declare-fun m!5103387 () Bool)

(assert (=> b!4424146 m!5103387))

(declare-fun m!5103389 () Bool)

(assert (=> b!4424146 m!5103389))

(declare-fun m!5103391 () Bool)

(assert (=> b!4424146 m!5103391))

(declare-fun m!5103393 () Bool)

(assert (=> b!4424146 m!5103393))

(declare-fun m!5103395 () Bool)

(assert (=> b!4424146 m!5103395))

(declare-fun m!5103397 () Bool)

(assert (=> b!4424146 m!5103397))

(declare-fun m!5103399 () Bool)

(assert (=> b!4424146 m!5103399))

(declare-fun m!5103401 () Bool)

(assert (=> b!4424146 m!5103401))

(assert (=> b!4424146 m!5103387))

(declare-fun m!5103403 () Bool)

(assert (=> b!4424146 m!5103403))

(assert (=> b!4424146 m!5103389))

(declare-fun m!5103405 () Bool)

(assert (=> b!4424146 m!5103405))

(declare-fun m!5103407 () Bool)

(assert (=> b!4424146 m!5103407))

(declare-fun m!5103409 () Bool)

(assert (=> b!4424142 m!5103409))

(declare-fun m!5103411 () Bool)

(assert (=> b!4424129 m!5103411))

(declare-fun m!5103413 () Bool)

(assert (=> b!4424134 m!5103413))

(assert (=> b!4424134 m!5103413))

(declare-fun m!5103415 () Bool)

(assert (=> b!4424134 m!5103415))

(declare-fun m!5103417 () Bool)

(assert (=> b!4424134 m!5103417))

(declare-fun m!5103419 () Bool)

(assert (=> b!4424145 m!5103419))

(declare-fun m!5103421 () Bool)

(assert (=> b!4424145 m!5103421))

(assert (=> b!4424145 m!5103421))

(declare-fun m!5103423 () Bool)

(assert (=> b!4424145 m!5103423))

(declare-fun m!5103425 () Bool)

(assert (=> b!4424145 m!5103425))

(check-sat (not b!4424143) (not b!4424147) (not b!4424146) (not b!4424136) (not b!4424140) (not start!431492) (not b!4424141) (not b!4424134) (not b!4424129) (not b!4424145) (not b!4424138) (not b!4424142) tp_is_empty!26235 (not b!4424131) (not b!4424139) tp_is_empty!26233 (not b!4424144) (not b!4424130) (not b!4424137))
(check-sat)
(get-model)

(declare-fun b!4424245 () Bool)

(assert (=> b!4424245 true))

(declare-fun bs!756163 () Bool)

(declare-fun b!4424242 () Bool)

(assert (= bs!756163 (and b!4424242 b!4424245)))

(declare-fun lambda!153690 () Int)

(declare-fun lambda!153689 () Int)

(assert (=> bs!756163 (= lambda!153690 lambda!153689)))

(assert (=> b!4424242 true))

(declare-fun lt!1623689 () ListMap!2725)

(declare-fun lambda!153691 () Int)

(assert (=> bs!756163 (= (= lt!1623689 lt!1623538) (= lambda!153691 lambda!153689))))

(assert (=> b!4424242 (= (= lt!1623689 lt!1623538) (= lambda!153691 lambda!153690))))

(assert (=> b!4424242 true))

(declare-fun bs!756164 () Bool)

(declare-fun d!1340812 () Bool)

(assert (= bs!756164 (and d!1340812 b!4424245)))

(declare-fun lt!1623685 () ListMap!2725)

(declare-fun lambda!153694 () Int)

(assert (=> bs!756164 (= (= lt!1623685 lt!1623538) (= lambda!153694 lambda!153689))))

(declare-fun bs!756165 () Bool)

(assert (= bs!756165 (and d!1340812 b!4424242)))

(assert (=> bs!756165 (= (= lt!1623685 lt!1623538) (= lambda!153694 lambda!153690))))

(assert (=> bs!756165 (= (= lt!1623685 lt!1623689) (= lambda!153694 lambda!153691))))

(assert (=> d!1340812 true))

(declare-fun b!4424241 () Bool)

(declare-fun e!2754723 () Bool)

(declare-fun forall!9557 (List!49699 Int) Bool)

(assert (=> b!4424241 (= e!2754723 (forall!9557 (toList!3482 lt!1623538) lambda!153691))))

(declare-fun e!2754722 () ListMap!2725)

(assert (=> b!4424242 (= e!2754722 lt!1623689)))

(declare-fun lt!1623693 () ListMap!2725)

(assert (=> b!4424242 (= lt!1623693 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424242 (= lt!1623689 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1623676 () Unit!81703)

(declare-fun call!307797 () Unit!81703)

(assert (=> b!4424242 (= lt!1623676 call!307797)))

(declare-fun call!307799 () Bool)

(assert (=> b!4424242 call!307799))

(declare-fun lt!1623691 () Unit!81703)

(assert (=> b!4424242 (= lt!1623691 lt!1623676)))

(assert (=> b!4424242 (forall!9557 (toList!3482 lt!1623693) lambda!153691)))

(declare-fun lt!1623688 () Unit!81703)

(declare-fun Unit!81712 () Unit!81703)

(assert (=> b!4424242 (= lt!1623688 Unit!81712)))

(assert (=> b!4424242 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153691)))

(declare-fun lt!1623673 () Unit!81703)

(declare-fun Unit!81713 () Unit!81703)

(assert (=> b!4424242 (= lt!1623673 Unit!81713)))

(declare-fun lt!1623675 () Unit!81703)

(declare-fun Unit!81714 () Unit!81703)

(assert (=> b!4424242 (= lt!1623675 Unit!81714)))

(declare-fun lt!1623678 () Unit!81703)

(declare-fun forallContained!2088 (List!49699 Int tuple2!49366) Unit!81703)

(assert (=> b!4424242 (= lt!1623678 (forallContained!2088 (toList!3482 lt!1623693) lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424242 (contains!12073 lt!1623693 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1623679 () Unit!81703)

(declare-fun Unit!81715 () Unit!81703)

(assert (=> b!4424242 (= lt!1623679 Unit!81715)))

(assert (=> b!4424242 (contains!12073 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1623674 () Unit!81703)

(declare-fun Unit!81716 () Unit!81703)

(assert (=> b!4424242 (= lt!1623674 Unit!81716)))

(assert (=> b!4424242 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153691)))

(declare-fun lt!1623684 () Unit!81703)

(declare-fun Unit!81717 () Unit!81703)

(assert (=> b!4424242 (= lt!1623684 Unit!81717)))

(assert (=> b!4424242 (forall!9557 (toList!3482 lt!1623693) lambda!153691)))

(declare-fun lt!1623692 () Unit!81703)

(declare-fun Unit!81718 () Unit!81703)

(assert (=> b!4424242 (= lt!1623692 Unit!81718)))

(declare-fun lt!1623690 () Unit!81703)

(declare-fun Unit!81719 () Unit!81703)

(assert (=> b!4424242 (= lt!1623690 Unit!81719)))

(declare-fun lt!1623681 () Unit!81703)

(declare-fun addForallContainsKeyThenBeforeAdding!170 (ListMap!2725 ListMap!2725 K!10940 V!11186) Unit!81703)

(assert (=> b!4424242 (= lt!1623681 (addForallContainsKeyThenBeforeAdding!170 lt!1623538 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun call!307798 () Bool)

(assert (=> b!4424242 call!307798))

(declare-fun lt!1623687 () Unit!81703)

(assert (=> b!4424242 (= lt!1623687 lt!1623681)))

(assert (=> b!4424242 (forall!9557 (toList!3482 lt!1623538) lambda!153691)))

(declare-fun lt!1623682 () Unit!81703)

(declare-fun Unit!81720 () Unit!81703)

(assert (=> b!4424242 (= lt!1623682 Unit!81720)))

(declare-fun res!1828946 () Bool)

(assert (=> b!4424242 (= res!1828946 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153691))))

(assert (=> b!4424242 (=> (not res!1828946) (not e!2754723))))

(assert (=> b!4424242 e!2754723))

(declare-fun lt!1623683 () Unit!81703)

(declare-fun Unit!81721 () Unit!81703)

(assert (=> b!4424242 (= lt!1623683 Unit!81721)))

(declare-fun e!2754721 () Bool)

(assert (=> d!1340812 e!2754721))

(declare-fun res!1828945 () Bool)

(assert (=> d!1340812 (=> (not res!1828945) (not e!2754721))))

(assert (=> d!1340812 (= res!1828945 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153694))))

(assert (=> d!1340812 (= lt!1623685 e!2754722)))

(declare-fun c!753085 () Bool)

(assert (=> d!1340812 (= c!753085 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1340812 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616))))))

(assert (=> d!1340812 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538) lt!1623685)))

(declare-fun bm!307792 () Bool)

(assert (=> bm!307792 (= call!307798 (forall!9557 (toList!3482 lt!1623538) (ite c!753085 lambda!153689 lambda!153691)))))

(declare-fun bm!307793 () Bool)

(assert (=> bm!307793 (= call!307799 (forall!9557 (toList!3482 lt!1623538) (ite c!753085 lambda!153689 lambda!153690)))))

(declare-fun b!4424243 () Bool)

(declare-fun res!1828944 () Bool)

(assert (=> b!4424243 (=> (not res!1828944) (not e!2754721))))

(assert (=> b!4424243 (= res!1828944 (forall!9557 (toList!3482 lt!1623538) lambda!153694))))

(declare-fun bm!307794 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!170 (ListMap!2725) Unit!81703)

(assert (=> bm!307794 (= call!307797 (lemmaContainsAllItsOwnKeys!170 lt!1623538))))

(declare-fun b!4424244 () Bool)

(declare-fun invariantList!803 (List!49699) Bool)

(assert (=> b!4424244 (= e!2754721 (invariantList!803 (toList!3482 lt!1623685)))))

(assert (=> b!4424245 (= e!2754722 lt!1623538)))

(declare-fun lt!1623680 () Unit!81703)

(assert (=> b!4424245 (= lt!1623680 call!307797)))

(assert (=> b!4424245 call!307799))

(declare-fun lt!1623677 () Unit!81703)

(assert (=> b!4424245 (= lt!1623677 lt!1623680)))

(assert (=> b!4424245 call!307798))

(declare-fun lt!1623686 () Unit!81703)

(declare-fun Unit!81722 () Unit!81703)

(assert (=> b!4424245 (= lt!1623686 Unit!81722)))

(assert (= (and d!1340812 c!753085) b!4424245))

(assert (= (and d!1340812 (not c!753085)) b!4424242))

(assert (= (and b!4424242 res!1828946) b!4424241))

(assert (= (or b!4424245 b!4424242) bm!307794))

(assert (= (or b!4424245 b!4424242) bm!307793))

(assert (= (or b!4424245 b!4424242) bm!307792))

(assert (= (and d!1340812 res!1828945) b!4424243))

(assert (= (and b!4424243 res!1828944) b!4424244))

(declare-fun m!5103591 () Bool)

(assert (=> d!1340812 m!5103591))

(declare-fun m!5103593 () Bool)

(assert (=> d!1340812 m!5103593))

(declare-fun m!5103595 () Bool)

(assert (=> bm!307793 m!5103595))

(declare-fun m!5103597 () Bool)

(assert (=> b!4424241 m!5103597))

(declare-fun m!5103599 () Bool)

(assert (=> b!4424244 m!5103599))

(declare-fun m!5103601 () Bool)

(assert (=> bm!307794 m!5103601))

(declare-fun m!5103603 () Bool)

(assert (=> b!4424243 m!5103603))

(declare-fun m!5103605 () Bool)

(assert (=> bm!307792 m!5103605))

(declare-fun m!5103607 () Bool)

(assert (=> b!4424242 m!5103607))

(declare-fun m!5103609 () Bool)

(assert (=> b!4424242 m!5103609))

(declare-fun m!5103611 () Bool)

(assert (=> b!4424242 m!5103611))

(declare-fun m!5103613 () Bool)

(assert (=> b!4424242 m!5103613))

(assert (=> b!4424242 m!5103609))

(assert (=> b!4424242 m!5103597))

(assert (=> b!4424242 m!5103607))

(declare-fun m!5103615 () Bool)

(assert (=> b!4424242 m!5103615))

(declare-fun m!5103617 () Bool)

(assert (=> b!4424242 m!5103617))

(assert (=> b!4424242 m!5103613))

(declare-fun m!5103619 () Bool)

(assert (=> b!4424242 m!5103619))

(declare-fun m!5103621 () Bool)

(assert (=> b!4424242 m!5103621))

(declare-fun m!5103623 () Bool)

(assert (=> b!4424242 m!5103623))

(assert (=> b!4424141 d!1340812))

(declare-fun d!1340858 () Bool)

(declare-fun isEmpty!28342 (List!49700) Bool)

(assert (=> d!1340858 (= (isEmpty!28341 lm!1616) (isEmpty!28342 (toList!3481 lm!1616)))))

(declare-fun bs!756166 () Bool)

(assert (= bs!756166 d!1340858))

(declare-fun m!5103625 () Bool)

(assert (=> bs!756166 m!5103625))

(assert (=> b!4424141 d!1340858))

(declare-fun d!1340860 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7952 (List!49699) (InoxSet tuple2!49366))

(assert (=> d!1340860 (= (eq!405 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538) (+!1079 lt!1623529 lt!1623530)) (= (content!7952 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538))) (content!7952 (toList!3482 (+!1079 lt!1623529 lt!1623530)))))))

(declare-fun bs!756167 () Bool)

(assert (= bs!756167 d!1340860))

(declare-fun m!5103627 () Bool)

(assert (=> bs!756167 m!5103627))

(declare-fun m!5103629 () Bool)

(assert (=> bs!756167 m!5103629))

(assert (=> b!4424141 d!1340860))

(declare-fun d!1340862 () Bool)

(assert (=> d!1340862 (eq!405 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (+!1079 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) (tuple2!49367 key!3717 newValue!93)))))

(declare-fun lt!1623738 () Unit!81703)

(declare-fun choose!27915 (ListMap!2725 K!10940 V!11186 List!49699) Unit!81703)

(assert (=> d!1340862 (= lt!1623738 (choose!27915 lt!1623532 key!3717 newValue!93 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1340862 (not (containsKey!1106 (_2!27978 (h!55259 (toList!3481 lm!1616))) key!3717))))

(assert (=> d!1340862 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!176 lt!1623532 key!3717 newValue!93 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lt!1623738)))

(declare-fun bs!756168 () Bool)

(assert (= bs!756168 d!1340862))

(declare-fun m!5103631 () Bool)

(assert (=> bs!756168 m!5103631))

(declare-fun m!5103633 () Bool)

(assert (=> bs!756168 m!5103633))

(declare-fun m!5103635 () Bool)

(assert (=> bs!756168 m!5103635))

(assert (=> bs!756168 m!5103367))

(assert (=> bs!756168 m!5103633))

(declare-fun m!5103637 () Bool)

(assert (=> bs!756168 m!5103637))

(assert (=> bs!756168 m!5103367))

(assert (=> bs!756168 m!5103419))

(declare-fun m!5103639 () Bool)

(assert (=> bs!756168 m!5103639))

(assert (=> bs!756168 m!5103631))

(assert (=> bs!756168 m!5103639))

(assert (=> b!4424141 d!1340862))

(declare-fun d!1340864 () Bool)

(declare-fun e!2754735 () Bool)

(assert (=> d!1340864 e!2754735))

(declare-fun res!1828960 () Bool)

(assert (=> d!1340864 (=> (not res!1828960) (not e!2754735))))

(declare-fun lt!1623770 () ListMap!2725)

(assert (=> d!1340864 (= res!1828960 (contains!12073 lt!1623770 (_1!27977 lt!1623530)))))

(declare-fun lt!1623771 () List!49699)

(assert (=> d!1340864 (= lt!1623770 (ListMap!2726 lt!1623771))))

(declare-fun lt!1623769 () Unit!81703)

(declare-fun lt!1623768 () Unit!81703)

(assert (=> d!1340864 (= lt!1623769 lt!1623768)))

(declare-datatypes ((Option!10721 0))(
  ( (None!10720) (Some!10720 (v!43902 V!11186)) )
))
(declare-fun getValueByKey!707 (List!49699 K!10940) Option!10721)

(assert (=> d!1340864 (= (getValueByKey!707 lt!1623771 (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530)))))

(declare-fun lemmaContainsTupThenGetReturnValue!442 (List!49699 K!10940 V!11186) Unit!81703)

(assert (=> d!1340864 (= lt!1623768 (lemmaContainsTupThenGetReturnValue!442 lt!1623771 (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun insertNoDuplicatedKeys!193 (List!49699 K!10940 V!11186) List!49699)

(assert (=> d!1340864 (= lt!1623771 (insertNoDuplicatedKeys!193 (toList!3482 lt!1623529) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(assert (=> d!1340864 (= (+!1079 lt!1623529 lt!1623530) lt!1623770)))

(declare-fun b!4424269 () Bool)

(declare-fun res!1828961 () Bool)

(assert (=> b!4424269 (=> (not res!1828961) (not e!2754735))))

(assert (=> b!4424269 (= res!1828961 (= (getValueByKey!707 (toList!3482 lt!1623770) (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530))))))

(declare-fun b!4424270 () Bool)

(declare-fun contains!12077 (List!49699 tuple2!49366) Bool)

(assert (=> b!4424270 (= e!2754735 (contains!12077 (toList!3482 lt!1623770) lt!1623530))))

(assert (= (and d!1340864 res!1828960) b!4424269))

(assert (= (and b!4424269 res!1828961) b!4424270))

(declare-fun m!5103675 () Bool)

(assert (=> d!1340864 m!5103675))

(declare-fun m!5103677 () Bool)

(assert (=> d!1340864 m!5103677))

(declare-fun m!5103679 () Bool)

(assert (=> d!1340864 m!5103679))

(declare-fun m!5103681 () Bool)

(assert (=> d!1340864 m!5103681))

(declare-fun m!5103683 () Bool)

(assert (=> b!4424269 m!5103683))

(declare-fun m!5103685 () Bool)

(assert (=> b!4424270 m!5103685))

(assert (=> b!4424141 d!1340864))

(declare-fun d!1340870 () Bool)

(declare-fun res!1828974 () Bool)

(declare-fun e!2754748 () Bool)

(assert (=> d!1340870 (=> res!1828974 e!2754748)))

(assert (=> d!1340870 (= res!1828974 ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1340870 (= (forall!9556 (toList!3481 lm!1616) lambda!153648) e!2754748)))

(declare-fun b!4424283 () Bool)

(declare-fun e!2754749 () Bool)

(assert (=> b!4424283 (= e!2754748 e!2754749)))

(declare-fun res!1828975 () Bool)

(assert (=> b!4424283 (=> (not res!1828975) (not e!2754749))))

(declare-fun dynLambda!20842 (Int tuple2!49368) Bool)

(assert (=> b!4424283 (= res!1828975 (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 lm!1616))))))

(declare-fun b!4424284 () Bool)

(assert (=> b!4424284 (= e!2754749 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153648))))

(assert (= (and d!1340870 (not res!1828974)) b!4424283))

(assert (= (and b!4424283 res!1828975) b!4424284))

(declare-fun b_lambda!142921 () Bool)

(assert (=> (not b_lambda!142921) (not b!4424283)))

(declare-fun m!5103695 () Bool)

(assert (=> b!4424283 m!5103695))

(declare-fun m!5103697 () Bool)

(assert (=> b!4424284 m!5103697))

(assert (=> b!4424140 d!1340870))

(declare-fun d!1340878 () Bool)

(declare-fun res!1828980 () Bool)

(declare-fun e!2754754 () Bool)

(assert (=> d!1340878 (=> res!1828980 e!2754754)))

(assert (=> d!1340878 (= res!1828980 (not ((_ is Cons!49575) newBucket!194)))))

(assert (=> d!1340878 (= (noDuplicateKeys!747 newBucket!194) e!2754754)))

(declare-fun b!4424289 () Bool)

(declare-fun e!2754755 () Bool)

(assert (=> b!4424289 (= e!2754754 e!2754755)))

(declare-fun res!1828981 () Bool)

(assert (=> b!4424289 (=> (not res!1828981) (not e!2754755))))

(assert (=> b!4424289 (= res!1828981 (not (containsKey!1106 (t!356637 newBucket!194) (_1!27977 (h!55258 newBucket!194)))))))

(declare-fun b!4424290 () Bool)

(assert (=> b!4424290 (= e!2754755 (noDuplicateKeys!747 (t!356637 newBucket!194)))))

(assert (= (and d!1340878 (not res!1828980)) b!4424289))

(assert (= (and b!4424289 res!1828981) b!4424290))

(declare-fun m!5103699 () Bool)

(assert (=> b!4424289 m!5103699))

(declare-fun m!5103701 () Bool)

(assert (=> b!4424290 m!5103701))

(assert (=> b!4424129 d!1340878))

(declare-fun d!1340880 () Bool)

(declare-datatypes ((Option!10722 0))(
  ( (None!10721) (Some!10721 (v!43903 List!49699)) )
))
(declare-fun get!16155 (Option!10722) List!49699)

(declare-fun getValueByKey!708 (List!49700 (_ BitVec 64)) Option!10722)

(assert (=> d!1340880 (= (apply!11599 lm!1616 hash!366) (get!16155 (getValueByKey!708 (toList!3481 lm!1616) hash!366)))))

(declare-fun bs!756181 () Bool)

(assert (= bs!756181 d!1340880))

(declare-fun m!5103703 () Bool)

(assert (=> bs!756181 m!5103703))

(assert (=> bs!756181 m!5103703))

(declare-fun m!5103705 () Bool)

(assert (=> bs!756181 m!5103705))

(assert (=> b!4424139 d!1340880))

(declare-fun bs!756183 () Bool)

(declare-fun d!1340882 () Bool)

(assert (= bs!756183 (and d!1340882 b!4424245)))

(declare-fun lambda!153732 () Int)

(assert (=> bs!756183 (not (= lambda!153732 lambda!153689))))

(declare-fun bs!756184 () Bool)

(assert (= bs!756184 (and d!1340882 b!4424242)))

(assert (=> bs!756184 (not (= lambda!153732 lambda!153690))))

(assert (=> bs!756184 (not (= lambda!153732 lambda!153691))))

(declare-fun bs!756185 () Bool)

(assert (= bs!756185 (and d!1340882 d!1340812)))

(assert (=> bs!756185 (not (= lambda!153732 lambda!153694))))

(assert (=> d!1340882 true))

(assert (=> d!1340882 true))

(assert (=> d!1340882 (= (allKeysSameHash!707 newBucket!194 hash!366 hashF!1220) (forall!9557 newBucket!194 lambda!153732))))

(declare-fun bs!756188 () Bool)

(assert (= bs!756188 d!1340882))

(declare-fun m!5103711 () Bool)

(assert (=> bs!756188 m!5103711))

(assert (=> b!4424138 d!1340882))

(declare-fun d!1340886 () Bool)

(declare-fun hash!2116 (Hashable!5141 K!10940) (_ BitVec 64))

(assert (=> d!1340886 (= (hash!2110 hashF!1220 key!3717) (hash!2116 hashF!1220 key!3717))))

(declare-fun bs!756191 () Bool)

(assert (= bs!756191 d!1340886))

(declare-fun m!5103715 () Bool)

(assert (=> bs!756191 m!5103715))

(assert (=> b!4424137 d!1340886))

(declare-fun bs!756195 () Bool)

(declare-fun d!1340890 () Bool)

(assert (= bs!756195 (and d!1340890 start!431492)))

(declare-fun lambda!153739 () Int)

(assert (=> bs!756195 (not (= lambda!153739 lambda!153648))))

(assert (=> d!1340890 true))

(assert (=> d!1340890 (= (allKeysSameHashInMap!853 lm!1616 hashF!1220) (forall!9556 (toList!3481 lm!1616) lambda!153739))))

(declare-fun bs!756198 () Bool)

(assert (= bs!756198 d!1340890))

(declare-fun m!5103717 () Bool)

(assert (=> bs!756198 m!5103717))

(assert (=> b!4424147 d!1340890))

(declare-fun d!1340892 () Bool)

(assert (=> d!1340892 (= (eq!405 lt!1623543 lt!1623529) (= (content!7952 (toList!3482 lt!1623543)) (content!7952 (toList!3482 lt!1623529))))))

(declare-fun bs!756201 () Bool)

(assert (= bs!756201 d!1340892))

(declare-fun m!5103719 () Bool)

(assert (=> bs!756201 m!5103719))

(declare-fun m!5103721 () Bool)

(assert (=> bs!756201 m!5103721))

(assert (=> b!4424136 d!1340892))

(declare-fun bs!756204 () Bool)

(declare-fun b!4424307 () Bool)

(assert (= bs!756204 (and b!4424307 d!1340812)))

(declare-fun lambda!153740 () Int)

(assert (=> bs!756204 (= (= lt!1623532 lt!1623685) (= lambda!153740 lambda!153694))))

(declare-fun bs!756205 () Bool)

(assert (= bs!756205 (and b!4424307 d!1340882)))

(assert (=> bs!756205 (not (= lambda!153740 lambda!153732))))

(declare-fun bs!756206 () Bool)

(assert (= bs!756206 (and b!4424307 b!4424242)))

(assert (=> bs!756206 (= (= lt!1623532 lt!1623689) (= lambda!153740 lambda!153691))))

(assert (=> bs!756206 (= (= lt!1623532 lt!1623538) (= lambda!153740 lambda!153690))))

(declare-fun bs!756207 () Bool)

(assert (= bs!756207 (and b!4424307 b!4424245)))

(assert (=> bs!756207 (= (= lt!1623532 lt!1623538) (= lambda!153740 lambda!153689))))

(assert (=> b!4424307 true))

(declare-fun bs!756208 () Bool)

(declare-fun b!4424304 () Bool)

(assert (= bs!756208 (and b!4424304 d!1340812)))

(declare-fun lambda!153741 () Int)

(assert (=> bs!756208 (= (= lt!1623532 lt!1623685) (= lambda!153741 lambda!153694))))

(declare-fun bs!756209 () Bool)

(assert (= bs!756209 (and b!4424304 b!4424307)))

(assert (=> bs!756209 (= lambda!153741 lambda!153740)))

(declare-fun bs!756210 () Bool)

(assert (= bs!756210 (and b!4424304 d!1340882)))

(assert (=> bs!756210 (not (= lambda!153741 lambda!153732))))

(declare-fun bs!756211 () Bool)

(assert (= bs!756211 (and b!4424304 b!4424242)))

(assert (=> bs!756211 (= (= lt!1623532 lt!1623689) (= lambda!153741 lambda!153691))))

(assert (=> bs!756211 (= (= lt!1623532 lt!1623538) (= lambda!153741 lambda!153690))))

(declare-fun bs!756212 () Bool)

(assert (= bs!756212 (and b!4424304 b!4424245)))

(assert (=> bs!756212 (= (= lt!1623532 lt!1623538) (= lambda!153741 lambda!153689))))

(assert (=> b!4424304 true))

(declare-fun lambda!153742 () Int)

(declare-fun lt!1623791 () ListMap!2725)

(assert (=> bs!756208 (= (= lt!1623791 lt!1623685) (= lambda!153742 lambda!153694))))

(assert (=> bs!756209 (= (= lt!1623791 lt!1623532) (= lambda!153742 lambda!153740))))

(assert (=> bs!756211 (= (= lt!1623791 lt!1623689) (= lambda!153742 lambda!153691))))

(assert (=> bs!756211 (= (= lt!1623791 lt!1623538) (= lambda!153742 lambda!153690))))

(assert (=> bs!756212 (= (= lt!1623791 lt!1623538) (= lambda!153742 lambda!153689))))

(assert (=> b!4424304 (= (= lt!1623791 lt!1623532) (= lambda!153742 lambda!153741))))

(assert (=> bs!756210 (not (= lambda!153742 lambda!153732))))

(assert (=> b!4424304 true))

(declare-fun bs!756214 () Bool)

(declare-fun d!1340894 () Bool)

(assert (= bs!756214 (and d!1340894 b!4424304)))

(declare-fun lambda!153743 () Int)

(declare-fun lt!1623787 () ListMap!2725)

(assert (=> bs!756214 (= (= lt!1623787 lt!1623791) (= lambda!153743 lambda!153742))))

(declare-fun bs!756215 () Bool)

(assert (= bs!756215 (and d!1340894 d!1340812)))

(assert (=> bs!756215 (= (= lt!1623787 lt!1623685) (= lambda!153743 lambda!153694))))

(declare-fun bs!756216 () Bool)

(assert (= bs!756216 (and d!1340894 b!4424307)))

(assert (=> bs!756216 (= (= lt!1623787 lt!1623532) (= lambda!153743 lambda!153740))))

(declare-fun bs!756217 () Bool)

(assert (= bs!756217 (and d!1340894 b!4424242)))

(assert (=> bs!756217 (= (= lt!1623787 lt!1623689) (= lambda!153743 lambda!153691))))

(assert (=> bs!756217 (= (= lt!1623787 lt!1623538) (= lambda!153743 lambda!153690))))

(declare-fun bs!756218 () Bool)

(assert (= bs!756218 (and d!1340894 b!4424245)))

(assert (=> bs!756218 (= (= lt!1623787 lt!1623538) (= lambda!153743 lambda!153689))))

(assert (=> bs!756214 (= (= lt!1623787 lt!1623532) (= lambda!153743 lambda!153741))))

(declare-fun bs!756219 () Bool)

(assert (= bs!756219 (and d!1340894 d!1340882)))

(assert (=> bs!756219 (not (= lambda!153743 lambda!153732))))

(assert (=> d!1340894 true))

(declare-fun b!4424303 () Bool)

(declare-fun e!2754758 () Bool)

(assert (=> b!4424303 (= e!2754758 (forall!9557 (toList!3482 lt!1623532) lambda!153742))))

(declare-fun e!2754757 () ListMap!2725)

(assert (=> b!4424304 (= e!2754757 lt!1623791)))

(declare-fun lt!1623795 () ListMap!2725)

(assert (=> b!4424304 (= lt!1623795 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424304 (= lt!1623791 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1623778 () Unit!81703)

(declare-fun call!307809 () Unit!81703)

(assert (=> b!4424304 (= lt!1623778 call!307809)))

(declare-fun call!307811 () Bool)

(assert (=> b!4424304 call!307811))

(declare-fun lt!1623793 () Unit!81703)

(assert (=> b!4424304 (= lt!1623793 lt!1623778)))

(assert (=> b!4424304 (forall!9557 (toList!3482 lt!1623795) lambda!153742)))

(declare-fun lt!1623790 () Unit!81703)

(declare-fun Unit!81734 () Unit!81703)

(assert (=> b!4424304 (= lt!1623790 Unit!81734)))

(assert (=> b!4424304 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153742)))

(declare-fun lt!1623775 () Unit!81703)

(declare-fun Unit!81735 () Unit!81703)

(assert (=> b!4424304 (= lt!1623775 Unit!81735)))

(declare-fun lt!1623777 () Unit!81703)

(declare-fun Unit!81736 () Unit!81703)

(assert (=> b!4424304 (= lt!1623777 Unit!81736)))

(declare-fun lt!1623780 () Unit!81703)

(assert (=> b!4424304 (= lt!1623780 (forallContained!2088 (toList!3482 lt!1623795) lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424304 (contains!12073 lt!1623795 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1623781 () Unit!81703)

(declare-fun Unit!81737 () Unit!81703)

(assert (=> b!4424304 (= lt!1623781 Unit!81737)))

(assert (=> b!4424304 (contains!12073 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1623776 () Unit!81703)

(declare-fun Unit!81738 () Unit!81703)

(assert (=> b!4424304 (= lt!1623776 Unit!81738)))

(assert (=> b!4424304 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153742)))

(declare-fun lt!1623786 () Unit!81703)

(declare-fun Unit!81739 () Unit!81703)

(assert (=> b!4424304 (= lt!1623786 Unit!81739)))

(assert (=> b!4424304 (forall!9557 (toList!3482 lt!1623795) lambda!153742)))

(declare-fun lt!1623794 () Unit!81703)

(declare-fun Unit!81740 () Unit!81703)

(assert (=> b!4424304 (= lt!1623794 Unit!81740)))

(declare-fun lt!1623792 () Unit!81703)

(declare-fun Unit!81741 () Unit!81703)

(assert (=> b!4424304 (= lt!1623792 Unit!81741)))

(declare-fun lt!1623783 () Unit!81703)

(assert (=> b!4424304 (= lt!1623783 (addForallContainsKeyThenBeforeAdding!170 lt!1623532 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun call!307810 () Bool)

(assert (=> b!4424304 call!307810))

(declare-fun lt!1623789 () Unit!81703)

(assert (=> b!4424304 (= lt!1623789 lt!1623783)))

(assert (=> b!4424304 (forall!9557 (toList!3482 lt!1623532) lambda!153742)))

(declare-fun lt!1623784 () Unit!81703)

(declare-fun Unit!81742 () Unit!81703)

(assert (=> b!4424304 (= lt!1623784 Unit!81742)))

(declare-fun res!1828984 () Bool)

(assert (=> b!4424304 (= res!1828984 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153742))))

(assert (=> b!4424304 (=> (not res!1828984) (not e!2754758))))

(assert (=> b!4424304 e!2754758))

(declare-fun lt!1623785 () Unit!81703)

(declare-fun Unit!81743 () Unit!81703)

(assert (=> b!4424304 (= lt!1623785 Unit!81743)))

(declare-fun e!2754756 () Bool)

(assert (=> d!1340894 e!2754756))

(declare-fun res!1828983 () Bool)

(assert (=> d!1340894 (=> (not res!1828983) (not e!2754756))))

(assert (=> d!1340894 (= res!1828983 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153743))))

(assert (=> d!1340894 (= lt!1623787 e!2754757)))

(declare-fun c!753089 () Bool)

(assert (=> d!1340894 (= c!753089 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1340894 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616))))))

(assert (=> d!1340894 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) lt!1623787)))

(declare-fun bm!307804 () Bool)

(assert (=> bm!307804 (= call!307810 (forall!9557 (toList!3482 lt!1623532) (ite c!753089 lambda!153740 lambda!153742)))))

(declare-fun bm!307805 () Bool)

(assert (=> bm!307805 (= call!307811 (forall!9557 (toList!3482 lt!1623532) (ite c!753089 lambda!153740 lambda!153741)))))

(declare-fun b!4424305 () Bool)

(declare-fun res!1828982 () Bool)

(assert (=> b!4424305 (=> (not res!1828982) (not e!2754756))))

(assert (=> b!4424305 (= res!1828982 (forall!9557 (toList!3482 lt!1623532) lambda!153743))))

(declare-fun bm!307806 () Bool)

(assert (=> bm!307806 (= call!307809 (lemmaContainsAllItsOwnKeys!170 lt!1623532))))

(declare-fun b!4424306 () Bool)

(assert (=> b!4424306 (= e!2754756 (invariantList!803 (toList!3482 lt!1623787)))))

(assert (=> b!4424307 (= e!2754757 lt!1623532)))

(declare-fun lt!1623782 () Unit!81703)

(assert (=> b!4424307 (= lt!1623782 call!307809)))

(assert (=> b!4424307 call!307811))

(declare-fun lt!1623779 () Unit!81703)

(assert (=> b!4424307 (= lt!1623779 lt!1623782)))

(assert (=> b!4424307 call!307810))

(declare-fun lt!1623788 () Unit!81703)

(declare-fun Unit!81744 () Unit!81703)

(assert (=> b!4424307 (= lt!1623788 Unit!81744)))

(assert (= (and d!1340894 c!753089) b!4424307))

(assert (= (and d!1340894 (not c!753089)) b!4424304))

(assert (= (and b!4424304 res!1828984) b!4424303))

(assert (= (or b!4424307 b!4424304) bm!307806))

(assert (= (or b!4424307 b!4424304) bm!307805))

(assert (= (or b!4424307 b!4424304) bm!307804))

(assert (= (and d!1340894 res!1828983) b!4424305))

(assert (= (and b!4424305 res!1828982) b!4424306))

(declare-fun m!5103747 () Bool)

(assert (=> d!1340894 m!5103747))

(assert (=> d!1340894 m!5103593))

(declare-fun m!5103749 () Bool)

(assert (=> bm!307805 m!5103749))

(declare-fun m!5103751 () Bool)

(assert (=> b!4424303 m!5103751))

(declare-fun m!5103753 () Bool)

(assert (=> b!4424306 m!5103753))

(declare-fun m!5103755 () Bool)

(assert (=> bm!307806 m!5103755))

(declare-fun m!5103757 () Bool)

(assert (=> b!4424305 m!5103757))

(declare-fun m!5103759 () Bool)

(assert (=> bm!307804 m!5103759))

(declare-fun m!5103761 () Bool)

(assert (=> b!4424304 m!5103761))

(declare-fun m!5103763 () Bool)

(assert (=> b!4424304 m!5103763))

(declare-fun m!5103765 () Bool)

(assert (=> b!4424304 m!5103765))

(declare-fun m!5103767 () Bool)

(assert (=> b!4424304 m!5103767))

(assert (=> b!4424304 m!5103763))

(assert (=> b!4424304 m!5103751))

(assert (=> b!4424304 m!5103761))

(declare-fun m!5103769 () Bool)

(assert (=> b!4424304 m!5103769))

(declare-fun m!5103771 () Bool)

(assert (=> b!4424304 m!5103771))

(assert (=> b!4424304 m!5103767))

(declare-fun m!5103773 () Bool)

(assert (=> b!4424304 m!5103773))

(declare-fun m!5103775 () Bool)

(assert (=> b!4424304 m!5103775))

(declare-fun m!5103777 () Bool)

(assert (=> b!4424304 m!5103777))

(assert (=> b!4424136 d!1340894))

(declare-fun bs!756236 () Bool)

(declare-fun d!1340906 () Bool)

(assert (= bs!756236 (and d!1340906 start!431492)))

(declare-fun lambda!153750 () Int)

(assert (=> bs!756236 (= lambda!153750 lambda!153648)))

(declare-fun bs!756237 () Bool)

(assert (= bs!756237 (and d!1340906 d!1340890)))

(assert (=> bs!756237 (not (= lambda!153750 lambda!153739))))

(assert (=> d!1340906 (eq!405 (extractMap!808 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))) (+!1079 (extractMap!808 (toList!3481 lt!1623534)) (tuple2!49367 key!3717 newValue!93)))))

(declare-fun lt!1623825 () Unit!81703)

(declare-fun choose!27917 (ListLongMap!2131 (_ BitVec 64) List!49699 K!10940 V!11186 Hashable!5141) Unit!81703)

(assert (=> d!1340906 (= lt!1623825 (choose!27917 lt!1623534 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1340906 (forall!9556 (toList!3481 lt!1623534) lambda!153750)))

(assert (=> d!1340906 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!121 lt!1623534 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1623825)))

(declare-fun bs!756238 () Bool)

(assert (= bs!756238 d!1340906))

(assert (=> bs!756238 m!5103397))

(declare-fun m!5103809 () Bool)

(assert (=> bs!756238 m!5103809))

(declare-fun m!5103811 () Bool)

(assert (=> bs!756238 m!5103811))

(assert (=> bs!756238 m!5103397))

(declare-fun m!5103813 () Bool)

(assert (=> bs!756238 m!5103813))

(assert (=> bs!756238 m!5103811))

(assert (=> bs!756238 m!5103813))

(declare-fun m!5103817 () Bool)

(assert (=> bs!756238 m!5103817))

(declare-fun m!5103823 () Bool)

(assert (=> bs!756238 m!5103823))

(declare-fun m!5103827 () Bool)

(assert (=> bs!756238 m!5103827))

(assert (=> b!4424146 d!1340906))

(declare-fun bs!756243 () Bool)

(declare-fun d!1340910 () Bool)

(assert (= bs!756243 (and d!1340910 start!431492)))

(declare-fun lambda!153753 () Int)

(assert (=> bs!756243 (= lambda!153753 lambda!153648)))

(declare-fun bs!756244 () Bool)

(assert (= bs!756244 (and d!1340910 d!1340890)))

(assert (=> bs!756244 (not (= lambda!153753 lambda!153739))))

(declare-fun bs!756245 () Bool)

(assert (= bs!756245 (and d!1340910 d!1340906)))

(assert (=> bs!756245 (= lambda!153753 lambda!153750)))

(declare-fun lt!1623829 () ListMap!2725)

(assert (=> d!1340910 (invariantList!803 (toList!3482 lt!1623829))))

(declare-fun e!2754777 () ListMap!2725)

(assert (=> d!1340910 (= lt!1623829 e!2754777)))

(declare-fun c!753093 () Bool)

(assert (=> d!1340910 (= c!753093 ((_ is Cons!49576) (toList!3481 lt!1623534)))))

(assert (=> d!1340910 (forall!9556 (toList!3481 lt!1623534) lambda!153753)))

(assert (=> d!1340910 (= (extractMap!808 (toList!3481 lt!1623534)) lt!1623829)))

(declare-fun b!4424335 () Bool)

(assert (=> b!4424335 (= e!2754777 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lt!1623534))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))))))

(declare-fun b!4424336 () Bool)

(assert (=> b!4424336 (= e!2754777 (ListMap!2726 Nil!49575))))

(assert (= (and d!1340910 c!753093) b!4424335))

(assert (= (and d!1340910 (not c!753093)) b!4424336))

(declare-fun m!5103835 () Bool)

(assert (=> d!1340910 m!5103835))

(declare-fun m!5103837 () Bool)

(assert (=> d!1340910 m!5103837))

(declare-fun m!5103839 () Bool)

(assert (=> b!4424335 m!5103839))

(assert (=> b!4424335 m!5103839))

(declare-fun m!5103841 () Bool)

(assert (=> b!4424335 m!5103841))

(assert (=> b!4424146 d!1340910))

(declare-fun d!1340918 () Bool)

(declare-fun head!9214 (List!49700) tuple2!49368)

(assert (=> d!1340918 (= (head!9212 lm!1616) (head!9214 (toList!3481 lm!1616)))))

(declare-fun bs!756246 () Bool)

(assert (= bs!756246 d!1340918))

(declare-fun m!5103843 () Bool)

(assert (=> bs!756246 m!5103843))

(assert (=> b!4424146 d!1340918))

(declare-fun d!1340920 () Bool)

(assert (=> d!1340920 (= (tail!7266 lm!1616) (ListLongMap!2132 (tail!7267 (toList!3481 lm!1616))))))

(declare-fun bs!756247 () Bool)

(assert (= bs!756247 d!1340920))

(assert (=> bs!756247 m!5103387))

(assert (=> b!4424146 d!1340920))

(declare-fun bs!756248 () Bool)

(declare-fun d!1340922 () Bool)

(assert (= bs!756248 (and d!1340922 start!431492)))

(declare-fun lambda!153754 () Int)

(assert (=> bs!756248 (= lambda!153754 lambda!153648)))

(declare-fun bs!756249 () Bool)

(assert (= bs!756249 (and d!1340922 d!1340890)))

(assert (=> bs!756249 (not (= lambda!153754 lambda!153739))))

(declare-fun bs!756250 () Bool)

(assert (= bs!756250 (and d!1340922 d!1340906)))

(assert (=> bs!756250 (= lambda!153754 lambda!153750)))

(declare-fun bs!756251 () Bool)

(assert (= bs!756251 (and d!1340922 d!1340910)))

(assert (=> bs!756251 (= lambda!153754 lambda!153753)))

(declare-fun lt!1623830 () ListMap!2725)

(assert (=> d!1340922 (invariantList!803 (toList!3482 lt!1623830))))

(declare-fun e!2754778 () ListMap!2725)

(assert (=> d!1340922 (= lt!1623830 e!2754778)))

(declare-fun c!753094 () Bool)

(assert (=> d!1340922 (= c!753094 ((_ is Cons!49576) (tail!7267 (toList!3481 lm!1616))))))

(assert (=> d!1340922 (forall!9556 (tail!7267 (toList!3481 lm!1616)) lambda!153754)))

(assert (=> d!1340922 (= (extractMap!808 (tail!7267 (toList!3481 lm!1616))) lt!1623830)))

(declare-fun b!4424337 () Bool)

(assert (=> b!4424337 (= e!2754778 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))))))

(declare-fun b!4424338 () Bool)

(assert (=> b!4424338 (= e!2754778 (ListMap!2726 Nil!49575))))

(assert (= (and d!1340922 c!753094) b!4424337))

(assert (= (and d!1340922 (not c!753094)) b!4424338))

(declare-fun m!5103845 () Bool)

(assert (=> d!1340922 m!5103845))

(assert (=> d!1340922 m!5103387))

(declare-fun m!5103847 () Bool)

(assert (=> d!1340922 m!5103847))

(declare-fun m!5103849 () Bool)

(assert (=> b!4424337 m!5103849))

(assert (=> b!4424337 m!5103849))

(declare-fun m!5103851 () Bool)

(assert (=> b!4424337 m!5103851))

(assert (=> b!4424146 d!1340922))

(declare-fun d!1340924 () Bool)

(declare-fun e!2754781 () Bool)

(assert (=> d!1340924 e!2754781))

(declare-fun res!1829001 () Bool)

(assert (=> d!1340924 (=> (not res!1829001) (not e!2754781))))

(declare-fun lt!1623842 () ListLongMap!2131)

(assert (=> d!1340924 (= res!1829001 (contains!12072 lt!1623842 (_1!27978 lt!1623539)))))

(declare-fun lt!1623841 () List!49700)

(assert (=> d!1340924 (= lt!1623842 (ListLongMap!2132 lt!1623841))))

(declare-fun lt!1623840 () Unit!81703)

(declare-fun lt!1623839 () Unit!81703)

(assert (=> d!1340924 (= lt!1623840 lt!1623839)))

(assert (=> d!1340924 (= (getValueByKey!708 lt!1623841 (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539)))))

(declare-fun lemmaContainsTupThenGetReturnValue!443 (List!49700 (_ BitVec 64) List!49699) Unit!81703)

(assert (=> d!1340924 (= lt!1623839 (lemmaContainsTupThenGetReturnValue!443 lt!1623841 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(declare-fun insertStrictlySorted!258 (List!49700 (_ BitVec 64) List!49699) List!49700)

(assert (=> d!1340924 (= lt!1623841 (insertStrictlySorted!258 (toList!3481 lt!1623534) (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(assert (=> d!1340924 (= (+!1078 lt!1623534 lt!1623539) lt!1623842)))

(declare-fun b!4424343 () Bool)

(declare-fun res!1829000 () Bool)

(assert (=> b!4424343 (=> (not res!1829000) (not e!2754781))))

(assert (=> b!4424343 (= res!1829000 (= (getValueByKey!708 (toList!3481 lt!1623842) (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539))))))

(declare-fun b!4424344 () Bool)

(declare-fun contains!12078 (List!49700 tuple2!49368) Bool)

(assert (=> b!4424344 (= e!2754781 (contains!12078 (toList!3481 lt!1623842) lt!1623539))))

(assert (= (and d!1340924 res!1829001) b!4424343))

(assert (= (and b!4424343 res!1829000) b!4424344))

(declare-fun m!5103853 () Bool)

(assert (=> d!1340924 m!5103853))

(declare-fun m!5103855 () Bool)

(assert (=> d!1340924 m!5103855))

(declare-fun m!5103857 () Bool)

(assert (=> d!1340924 m!5103857))

(declare-fun m!5103859 () Bool)

(assert (=> d!1340924 m!5103859))

(declare-fun m!5103861 () Bool)

(assert (=> b!4424343 m!5103861))

(declare-fun m!5103863 () Bool)

(assert (=> b!4424344 m!5103863))

(assert (=> b!4424146 d!1340924))

(declare-fun d!1340926 () Bool)

(declare-fun e!2754782 () Bool)

(assert (=> d!1340926 e!2754782))

(declare-fun res!1829002 () Bool)

(assert (=> d!1340926 (=> (not res!1829002) (not e!2754782))))

(declare-fun lt!1623845 () ListMap!2725)

(assert (=> d!1340926 (= res!1829002 (contains!12073 lt!1623845 (_1!27977 lt!1623530)))))

(declare-fun lt!1623846 () List!49699)

(assert (=> d!1340926 (= lt!1623845 (ListMap!2726 lt!1623846))))

(declare-fun lt!1623844 () Unit!81703)

(declare-fun lt!1623843 () Unit!81703)

(assert (=> d!1340926 (= lt!1623844 lt!1623843)))

(assert (=> d!1340926 (= (getValueByKey!707 lt!1623846 (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530)))))

(assert (=> d!1340926 (= lt!1623843 (lemmaContainsTupThenGetReturnValue!442 lt!1623846 (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(assert (=> d!1340926 (= lt!1623846 (insertNoDuplicatedKeys!193 (toList!3482 lt!1623532) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(assert (=> d!1340926 (= (+!1079 lt!1623532 lt!1623530) lt!1623845)))

(declare-fun b!4424345 () Bool)

(declare-fun res!1829003 () Bool)

(assert (=> b!4424345 (=> (not res!1829003) (not e!2754782))))

(assert (=> b!4424345 (= res!1829003 (= (getValueByKey!707 (toList!3482 lt!1623845) (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530))))))

(declare-fun b!4424346 () Bool)

(assert (=> b!4424346 (= e!2754782 (contains!12077 (toList!3482 lt!1623845) lt!1623530))))

(assert (= (and d!1340926 res!1829002) b!4424345))

(assert (= (and b!4424345 res!1829003) b!4424346))

(declare-fun m!5103865 () Bool)

(assert (=> d!1340926 m!5103865))

(declare-fun m!5103867 () Bool)

(assert (=> d!1340926 m!5103867))

(declare-fun m!5103869 () Bool)

(assert (=> d!1340926 m!5103869))

(declare-fun m!5103871 () Bool)

(assert (=> d!1340926 m!5103871))

(declare-fun m!5103873 () Bool)

(assert (=> b!4424345 m!5103873))

(declare-fun m!5103875 () Bool)

(assert (=> b!4424346 m!5103875))

(assert (=> b!4424146 d!1340926))

(declare-fun d!1340928 () Bool)

(assert (=> d!1340928 (= (eq!405 lt!1623541 lt!1623538) (= (content!7952 (toList!3482 lt!1623541)) (content!7952 (toList!3482 lt!1623538))))))

(declare-fun bs!756252 () Bool)

(assert (= bs!756252 d!1340928))

(declare-fun m!5103877 () Bool)

(assert (=> bs!756252 m!5103877))

(declare-fun m!5103879 () Bool)

(assert (=> bs!756252 m!5103879))

(assert (=> b!4424146 d!1340928))

(declare-fun bs!756253 () Bool)

(declare-fun d!1340930 () Bool)

(assert (= bs!756253 (and d!1340930 d!1340910)))

(declare-fun lambda!153755 () Int)

(assert (=> bs!756253 (= lambda!153755 lambda!153753)))

(declare-fun bs!756254 () Bool)

(assert (= bs!756254 (and d!1340930 d!1340890)))

(assert (=> bs!756254 (not (= lambda!153755 lambda!153739))))

(declare-fun bs!756255 () Bool)

(assert (= bs!756255 (and d!1340930 d!1340922)))

(assert (=> bs!756255 (= lambda!153755 lambda!153754)))

(declare-fun bs!756256 () Bool)

(assert (= bs!756256 (and d!1340930 d!1340906)))

(assert (=> bs!756256 (= lambda!153755 lambda!153750)))

(declare-fun bs!756257 () Bool)

(assert (= bs!756257 (and d!1340930 start!431492)))

(assert (=> bs!756257 (= lambda!153755 lambda!153648)))

(declare-fun lt!1623847 () ListMap!2725)

(assert (=> d!1340930 (invariantList!803 (toList!3482 lt!1623847))))

(declare-fun e!2754783 () ListMap!2725)

(assert (=> d!1340930 (= lt!1623847 e!2754783)))

(declare-fun c!753095 () Bool)

(assert (=> d!1340930 (= c!753095 ((_ is Cons!49576) (toList!3481 (+!1078 lt!1623534 lt!1623539))))))

(assert (=> d!1340930 (forall!9556 (toList!3481 (+!1078 lt!1623534 lt!1623539)) lambda!153755)))

(assert (=> d!1340930 (= (extractMap!808 (toList!3481 (+!1078 lt!1623534 lt!1623539))) lt!1623847)))

(declare-fun b!4424347 () Bool)

(assert (=> b!4424347 (= e!2754783 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))

(declare-fun b!4424348 () Bool)

(assert (=> b!4424348 (= e!2754783 (ListMap!2726 Nil!49575))))

(assert (= (and d!1340930 c!753095) b!4424347))

(assert (= (and d!1340930 (not c!753095)) b!4424348))

(declare-fun m!5103881 () Bool)

(assert (=> d!1340930 m!5103881))

(declare-fun m!5103883 () Bool)

(assert (=> d!1340930 m!5103883))

(declare-fun m!5103885 () Bool)

(assert (=> b!4424347 m!5103885))

(assert (=> b!4424347 m!5103885))

(declare-fun m!5103887 () Bool)

(assert (=> b!4424347 m!5103887))

(assert (=> b!4424146 d!1340930))

(declare-fun d!1340932 () Bool)

(assert (=> d!1340932 (= (tail!7267 (toList!3481 lm!1616)) (t!356638 (toList!3481 lm!1616)))))

(assert (=> b!4424146 d!1340932))

(declare-fun d!1340934 () Bool)

(declare-fun e!2754798 () Bool)

(assert (=> d!1340934 e!2754798))

(declare-fun res!1829010 () Bool)

(assert (=> d!1340934 (=> res!1829010 e!2754798)))

(declare-fun e!2754801 () Bool)

(assert (=> d!1340934 (= res!1829010 e!2754801)))

(declare-fun res!1829012 () Bool)

(assert (=> d!1340934 (=> (not res!1829012) (not e!2754801))))

(declare-fun lt!1623870 () Bool)

(assert (=> d!1340934 (= res!1829012 (not lt!1623870))))

(declare-fun lt!1623871 () Bool)

(assert (=> d!1340934 (= lt!1623870 lt!1623871)))

(declare-fun lt!1623865 () Unit!81703)

(declare-fun e!2754796 () Unit!81703)

(assert (=> d!1340934 (= lt!1623865 e!2754796)))

(declare-fun c!753104 () Bool)

(assert (=> d!1340934 (= c!753104 lt!1623871)))

(declare-fun containsKey!1109 (List!49699 K!10940) Bool)

(assert (=> d!1340934 (= lt!1623871 (containsKey!1109 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> d!1340934 (= (contains!12073 (extractMap!808 (tail!7267 (toList!3481 lm!1616))) key!3717) lt!1623870)))

(declare-fun b!4424367 () Bool)

(declare-fun e!2754797 () Bool)

(declare-datatypes ((List!49702 0))(
  ( (Nil!49578) (Cons!49578 (h!55263 K!10940) (t!356640 List!49702)) )
))
(declare-fun contains!12079 (List!49702 K!10940) Bool)

(declare-fun keys!16924 (ListMap!2725) List!49702)

(assert (=> b!4424367 (= e!2754797 (contains!12079 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(declare-fun b!4424368 () Bool)

(declare-fun e!2754799 () List!49702)

(declare-fun getKeysList!250 (List!49699) List!49702)

(assert (=> b!4424368 (= e!2754799 (getKeysList!250 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))

(declare-fun b!4424369 () Bool)

(assert (=> b!4424369 (= e!2754801 (not (contains!12079 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717)))))

(declare-fun b!4424370 () Bool)

(declare-fun e!2754800 () Unit!81703)

(assert (=> b!4424370 (= e!2754796 e!2754800)))

(declare-fun c!753102 () Bool)

(declare-fun call!307817 () Bool)

(assert (=> b!4424370 (= c!753102 call!307817)))

(declare-fun b!4424371 () Bool)

(assert (=> b!4424371 false))

(declare-fun lt!1623869 () Unit!81703)

(declare-fun lt!1623864 () Unit!81703)

(assert (=> b!4424371 (= lt!1623869 lt!1623864)))

(assert (=> b!4424371 (containsKey!1109 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!248 (List!49699 K!10940) Unit!81703)

(assert (=> b!4424371 (= lt!1623864 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(declare-fun Unit!81756 () Unit!81703)

(assert (=> b!4424371 (= e!2754800 Unit!81756)))

(declare-fun b!4424372 () Bool)

(declare-fun Unit!81757 () Unit!81703)

(assert (=> b!4424372 (= e!2754800 Unit!81757)))

(declare-fun b!4424373 () Bool)

(assert (=> b!4424373 (= e!2754799 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))

(declare-fun b!4424374 () Bool)

(assert (=> b!4424374 (= e!2754798 e!2754797)))

(declare-fun res!1829011 () Bool)

(assert (=> b!4424374 (=> (not res!1829011) (not e!2754797))))

(declare-fun isDefined!8013 (Option!10721) Bool)

(assert (=> b!4424374 (= res!1829011 (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717)))))

(declare-fun b!4424375 () Bool)

(declare-fun lt!1623868 () Unit!81703)

(assert (=> b!4424375 (= e!2754796 lt!1623868)))

(declare-fun lt!1623866 () Unit!81703)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!616 (List!49699 K!10940) Unit!81703)

(assert (=> b!4424375 (= lt!1623866 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> b!4424375 (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(declare-fun lt!1623867 () Unit!81703)

(assert (=> b!4424375 (= lt!1623867 lt!1623866)))

(declare-fun lemmaInListThenGetKeysListContains!247 (List!49699 K!10940) Unit!81703)

(assert (=> b!4424375 (= lt!1623868 (lemmaInListThenGetKeysListContains!247 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> b!4424375 call!307817))

(declare-fun bm!307812 () Bool)

(assert (=> bm!307812 (= call!307817 (contains!12079 e!2754799 key!3717))))

(declare-fun c!753103 () Bool)

(assert (=> bm!307812 (= c!753103 c!753104)))

(assert (= (and d!1340934 c!753104) b!4424375))

(assert (= (and d!1340934 (not c!753104)) b!4424370))

(assert (= (and b!4424370 c!753102) b!4424371))

(assert (= (and b!4424370 (not c!753102)) b!4424372))

(assert (= (or b!4424375 b!4424370) bm!307812))

(assert (= (and bm!307812 c!753103) b!4424368))

(assert (= (and bm!307812 (not c!753103)) b!4424373))

(assert (= (and d!1340934 res!1829012) b!4424369))

(assert (= (and d!1340934 (not res!1829010)) b!4424374))

(assert (= (and b!4424374 res!1829011) b!4424367))

(declare-fun m!5103889 () Bool)

(assert (=> b!4424371 m!5103889))

(declare-fun m!5103891 () Bool)

(assert (=> b!4424371 m!5103891))

(declare-fun m!5103893 () Bool)

(assert (=> bm!307812 m!5103893))

(assert (=> b!4424369 m!5103389))

(declare-fun m!5103895 () Bool)

(assert (=> b!4424369 m!5103895))

(assert (=> b!4424369 m!5103895))

(declare-fun m!5103897 () Bool)

(assert (=> b!4424369 m!5103897))

(assert (=> d!1340934 m!5103889))

(assert (=> b!4424367 m!5103389))

(assert (=> b!4424367 m!5103895))

(assert (=> b!4424367 m!5103895))

(assert (=> b!4424367 m!5103897))

(declare-fun m!5103899 () Bool)

(assert (=> b!4424375 m!5103899))

(declare-fun m!5103901 () Bool)

(assert (=> b!4424375 m!5103901))

(assert (=> b!4424375 m!5103901))

(declare-fun m!5103903 () Bool)

(assert (=> b!4424375 m!5103903))

(declare-fun m!5103905 () Bool)

(assert (=> b!4424375 m!5103905))

(declare-fun m!5103907 () Bool)

(assert (=> b!4424368 m!5103907))

(assert (=> b!4424373 m!5103389))

(assert (=> b!4424373 m!5103895))

(assert (=> b!4424374 m!5103901))

(assert (=> b!4424374 m!5103901))

(assert (=> b!4424374 m!5103903))

(assert (=> b!4424146 d!1340934))

(declare-fun d!1340936 () Bool)

(declare-fun res!1829017 () Bool)

(declare-fun e!2754806 () Bool)

(assert (=> d!1340936 (=> res!1829017 e!2754806)))

(assert (=> d!1340936 (= res!1829017 (and ((_ is Cons!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))) (= (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) key!3717)))))

(assert (=> d!1340936 (= (containsKey!1106 (_2!27978 (h!55259 (toList!3481 lm!1616))) key!3717) e!2754806)))

(declare-fun b!4424380 () Bool)

(declare-fun e!2754807 () Bool)

(assert (=> b!4424380 (= e!2754806 e!2754807)))

(declare-fun res!1829018 () Bool)

(assert (=> b!4424380 (=> (not res!1829018) (not e!2754807))))

(assert (=> b!4424380 (= res!1829018 ((_ is Cons!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun b!4424381 () Bool)

(assert (=> b!4424381 (= e!2754807 (containsKey!1106 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) key!3717))))

(assert (= (and d!1340936 (not res!1829017)) b!4424380))

(assert (= (and b!4424380 res!1829018) b!4424381))

(declare-fun m!5103909 () Bool)

(assert (=> b!4424381 m!5103909))

(assert (=> b!4424145 d!1340936))

(declare-fun d!1340938 () Bool)

(declare-fun res!1829019 () Bool)

(declare-fun e!2754808 () Bool)

(assert (=> d!1340938 (=> res!1829019 e!2754808)))

(assert (=> d!1340938 (= res!1829019 (and ((_ is Cons!49575) (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616))))) (= (_1!27977 (h!55258 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))))) key!3717)))))

(assert (=> d!1340938 (= (containsKey!1106 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))) key!3717) e!2754808)))

(declare-fun b!4424382 () Bool)

(declare-fun e!2754809 () Bool)

(assert (=> b!4424382 (= e!2754808 e!2754809)))

(declare-fun res!1829020 () Bool)

(assert (=> b!4424382 (=> (not res!1829020) (not e!2754809))))

(assert (=> b!4424382 (= res!1829020 ((_ is Cons!49575) (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4424383 () Bool)

(assert (=> b!4424383 (= e!2754809 (containsKey!1106 (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616))))) key!3717))))

(assert (= (and d!1340938 (not res!1829019)) b!4424382))

(assert (= (and b!4424382 res!1829020) b!4424383))

(declare-fun m!5103911 () Bool)

(assert (=> b!4424383 m!5103911))

(assert (=> b!4424145 d!1340938))

(declare-fun d!1340940 () Bool)

(assert (=> d!1340940 (= (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))) (get!16155 (getValueByKey!708 (toList!3481 lm!1616) (_1!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun bs!756258 () Bool)

(assert (= bs!756258 d!1340940))

(declare-fun m!5103913 () Bool)

(assert (=> bs!756258 m!5103913))

(assert (=> bs!756258 m!5103913))

(declare-fun m!5103915 () Bool)

(assert (=> bs!756258 m!5103915))

(assert (=> b!4424145 d!1340940))

(declare-fun bs!756259 () Bool)

(declare-fun d!1340942 () Bool)

(assert (= bs!756259 (and d!1340942 d!1340910)))

(declare-fun lambda!153758 () Int)

(assert (=> bs!756259 (= lambda!153758 lambda!153753)))

(declare-fun bs!756260 () Bool)

(assert (= bs!756260 (and d!1340942 d!1340930)))

(assert (=> bs!756260 (= lambda!153758 lambda!153755)))

(declare-fun bs!756261 () Bool)

(assert (= bs!756261 (and d!1340942 d!1340890)))

(assert (=> bs!756261 (not (= lambda!153758 lambda!153739))))

(declare-fun bs!756262 () Bool)

(assert (= bs!756262 (and d!1340942 d!1340922)))

(assert (=> bs!756262 (= lambda!153758 lambda!153754)))

(declare-fun bs!756263 () Bool)

(assert (= bs!756263 (and d!1340942 d!1340906)))

(assert (=> bs!756263 (= lambda!153758 lambda!153750)))

(declare-fun bs!756264 () Bool)

(assert (= bs!756264 (and d!1340942 start!431492)))

(assert (=> bs!756264 (= lambda!153758 lambda!153648)))

(assert (=> d!1340942 (not (containsKey!1106 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))) key!3717))))

(declare-fun lt!1623874 () Unit!81703)

(declare-fun choose!27919 (ListLongMap!2131 K!10940 (_ BitVec 64) Hashable!5141) Unit!81703)

(assert (=> d!1340942 (= lt!1623874 (choose!27919 lm!1616 key!3717 (_1!27978 (h!55259 (toList!3481 lm!1616))) hashF!1220))))

(assert (=> d!1340942 (forall!9556 (toList!3481 lm!1616) lambda!153758)))

(assert (=> d!1340942 (= (lemmaNotSameHashThenCannotContainKey!126 lm!1616 key!3717 (_1!27978 (h!55259 (toList!3481 lm!1616))) hashF!1220) lt!1623874)))

(declare-fun bs!756265 () Bool)

(assert (= bs!756265 d!1340942))

(assert (=> bs!756265 m!5103421))

(assert (=> bs!756265 m!5103421))

(assert (=> bs!756265 m!5103423))

(declare-fun m!5103917 () Bool)

(assert (=> bs!756265 m!5103917))

(declare-fun m!5103919 () Bool)

(assert (=> bs!756265 m!5103919))

(assert (=> b!4424145 d!1340942))

(declare-fun d!1340944 () Bool)

(declare-fun res!1829021 () Bool)

(declare-fun e!2754810 () Bool)

(assert (=> d!1340944 (=> res!1829021 e!2754810)))

(assert (=> d!1340944 (= res!1829021 ((_ is Nil!49576) (toList!3481 lt!1623528)))))

(assert (=> d!1340944 (= (forall!9556 (toList!3481 lt!1623528) lambda!153648) e!2754810)))

(declare-fun b!4424384 () Bool)

(declare-fun e!2754811 () Bool)

(assert (=> b!4424384 (= e!2754810 e!2754811)))

(declare-fun res!1829022 () Bool)

(assert (=> b!4424384 (=> (not res!1829022) (not e!2754811))))

(assert (=> b!4424384 (= res!1829022 (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 lt!1623528))))))

(declare-fun b!4424385 () Bool)

(assert (=> b!4424385 (= e!2754811 (forall!9556 (t!356638 (toList!3481 lt!1623528)) lambda!153648))))

(assert (= (and d!1340944 (not res!1829021)) b!4424384))

(assert (= (and b!4424384 res!1829022) b!4424385))

(declare-fun b_lambda!142929 () Bool)

(assert (=> (not b_lambda!142929) (not b!4424384)))

(declare-fun m!5103921 () Bool)

(assert (=> b!4424384 m!5103921))

(declare-fun m!5103923 () Bool)

(assert (=> b!4424385 m!5103923))

(assert (=> b!4424134 d!1340944))

(declare-fun d!1340946 () Bool)

(declare-fun e!2754812 () Bool)

(assert (=> d!1340946 e!2754812))

(declare-fun res!1829024 () Bool)

(assert (=> d!1340946 (=> (not res!1829024) (not e!2754812))))

(declare-fun lt!1623878 () ListLongMap!2131)

(assert (=> d!1340946 (= res!1829024 (contains!12072 lt!1623878 (_1!27978 lt!1623539)))))

(declare-fun lt!1623877 () List!49700)

(assert (=> d!1340946 (= lt!1623878 (ListLongMap!2132 lt!1623877))))

(declare-fun lt!1623876 () Unit!81703)

(declare-fun lt!1623875 () Unit!81703)

(assert (=> d!1340946 (= lt!1623876 lt!1623875)))

(assert (=> d!1340946 (= (getValueByKey!708 lt!1623877 (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539)))))

(assert (=> d!1340946 (= lt!1623875 (lemmaContainsTupThenGetReturnValue!443 lt!1623877 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(assert (=> d!1340946 (= lt!1623877 (insertStrictlySorted!258 (toList!3481 lm!1616) (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(assert (=> d!1340946 (= (+!1078 lm!1616 lt!1623539) lt!1623878)))

(declare-fun b!4424386 () Bool)

(declare-fun res!1829023 () Bool)

(assert (=> b!4424386 (=> (not res!1829023) (not e!2754812))))

(assert (=> b!4424386 (= res!1829023 (= (getValueByKey!708 (toList!3481 lt!1623878) (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539))))))

(declare-fun b!4424387 () Bool)

(assert (=> b!4424387 (= e!2754812 (contains!12078 (toList!3481 lt!1623878) lt!1623539))))

(assert (= (and d!1340946 res!1829024) b!4424386))

(assert (= (and b!4424386 res!1829023) b!4424387))

(declare-fun m!5103925 () Bool)

(assert (=> d!1340946 m!5103925))

(declare-fun m!5103927 () Bool)

(assert (=> d!1340946 m!5103927))

(declare-fun m!5103929 () Bool)

(assert (=> d!1340946 m!5103929))

(declare-fun m!5103931 () Bool)

(assert (=> d!1340946 m!5103931))

(declare-fun m!5103933 () Bool)

(assert (=> b!4424386 m!5103933))

(declare-fun m!5103935 () Bool)

(assert (=> b!4424387 m!5103935))

(assert (=> b!4424134 d!1340946))

(declare-fun d!1340948 () Bool)

(assert (=> d!1340948 (forall!9556 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194))) lambda!153648)))

(declare-fun lt!1623881 () Unit!81703)

(declare-fun choose!27920 (ListLongMap!2131 Int (_ BitVec 64) List!49699) Unit!81703)

(assert (=> d!1340948 (= lt!1623881 (choose!27920 lm!1616 lambda!153648 hash!366 newBucket!194))))

(declare-fun e!2754815 () Bool)

(assert (=> d!1340948 e!2754815))

(declare-fun res!1829027 () Bool)

(assert (=> d!1340948 (=> (not res!1829027) (not e!2754815))))

(assert (=> d!1340948 (= res!1829027 (forall!9556 (toList!3481 lm!1616) lambda!153648))))

(assert (=> d!1340948 (= (addValidProp!391 lm!1616 lambda!153648 hash!366 newBucket!194) lt!1623881)))

(declare-fun b!4424391 () Bool)

(assert (=> b!4424391 (= e!2754815 (dynLambda!20842 lambda!153648 (tuple2!49369 hash!366 newBucket!194)))))

(assert (= (and d!1340948 res!1829027) b!4424391))

(declare-fun b_lambda!142931 () Bool)

(assert (=> (not b_lambda!142931) (not b!4424391)))

(declare-fun m!5103937 () Bool)

(assert (=> d!1340948 m!5103937))

(declare-fun m!5103939 () Bool)

(assert (=> d!1340948 m!5103939))

(declare-fun m!5103941 () Bool)

(assert (=> d!1340948 m!5103941))

(assert (=> d!1340948 m!5103359))

(declare-fun m!5103943 () Bool)

(assert (=> b!4424391 m!5103943))

(assert (=> b!4424134 d!1340948))

(declare-fun d!1340950 () Bool)

(declare-fun e!2754818 () Bool)

(assert (=> d!1340950 e!2754818))

(declare-fun res!1829028 () Bool)

(assert (=> d!1340950 (=> res!1829028 e!2754818)))

(declare-fun e!2754821 () Bool)

(assert (=> d!1340950 (= res!1829028 e!2754821)))

(declare-fun res!1829030 () Bool)

(assert (=> d!1340950 (=> (not res!1829030) (not e!2754821))))

(declare-fun lt!1623888 () Bool)

(assert (=> d!1340950 (= res!1829030 (not lt!1623888))))

(declare-fun lt!1623889 () Bool)

(assert (=> d!1340950 (= lt!1623888 lt!1623889)))

(declare-fun lt!1623883 () Unit!81703)

(declare-fun e!2754816 () Unit!81703)

(assert (=> d!1340950 (= lt!1623883 e!2754816)))

(declare-fun c!753107 () Bool)

(assert (=> d!1340950 (= c!753107 lt!1623889)))

(assert (=> d!1340950 (= lt!1623889 (containsKey!1109 (toList!3482 lt!1623543) key!3717))))

(assert (=> d!1340950 (= (contains!12073 lt!1623543 key!3717) lt!1623888)))

(declare-fun b!4424392 () Bool)

(declare-fun e!2754817 () Bool)

(assert (=> b!4424392 (= e!2754817 (contains!12079 (keys!16924 lt!1623543) key!3717))))

(declare-fun b!4424393 () Bool)

(declare-fun e!2754819 () List!49702)

(assert (=> b!4424393 (= e!2754819 (getKeysList!250 (toList!3482 lt!1623543)))))

(declare-fun b!4424394 () Bool)

(assert (=> b!4424394 (= e!2754821 (not (contains!12079 (keys!16924 lt!1623543) key!3717)))))

(declare-fun b!4424395 () Bool)

(declare-fun e!2754820 () Unit!81703)

(assert (=> b!4424395 (= e!2754816 e!2754820)))

(declare-fun c!753105 () Bool)

(declare-fun call!307818 () Bool)

(assert (=> b!4424395 (= c!753105 call!307818)))

(declare-fun b!4424396 () Bool)

(assert (=> b!4424396 false))

(declare-fun lt!1623887 () Unit!81703)

(declare-fun lt!1623882 () Unit!81703)

(assert (=> b!4424396 (= lt!1623887 lt!1623882)))

(assert (=> b!4424396 (containsKey!1109 (toList!3482 lt!1623543) key!3717)))

(assert (=> b!4424396 (= lt!1623882 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623543) key!3717))))

(declare-fun Unit!81758 () Unit!81703)

(assert (=> b!4424396 (= e!2754820 Unit!81758)))

(declare-fun b!4424397 () Bool)

(declare-fun Unit!81759 () Unit!81703)

(assert (=> b!4424397 (= e!2754820 Unit!81759)))

(declare-fun b!4424398 () Bool)

(assert (=> b!4424398 (= e!2754819 (keys!16924 lt!1623543))))

(declare-fun b!4424399 () Bool)

(assert (=> b!4424399 (= e!2754818 e!2754817)))

(declare-fun res!1829029 () Bool)

(assert (=> b!4424399 (=> (not res!1829029) (not e!2754817))))

(assert (=> b!4424399 (= res!1829029 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623543) key!3717)))))

(declare-fun b!4424400 () Bool)

(declare-fun lt!1623886 () Unit!81703)

(assert (=> b!4424400 (= e!2754816 lt!1623886)))

(declare-fun lt!1623884 () Unit!81703)

(assert (=> b!4424400 (= lt!1623884 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623543) key!3717))))

(assert (=> b!4424400 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623543) key!3717))))

(declare-fun lt!1623885 () Unit!81703)

(assert (=> b!4424400 (= lt!1623885 lt!1623884)))

(assert (=> b!4424400 (= lt!1623886 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623543) key!3717))))

(assert (=> b!4424400 call!307818))

(declare-fun bm!307813 () Bool)

(assert (=> bm!307813 (= call!307818 (contains!12079 e!2754819 key!3717))))

(declare-fun c!753106 () Bool)

(assert (=> bm!307813 (= c!753106 c!753107)))

(assert (= (and d!1340950 c!753107) b!4424400))

(assert (= (and d!1340950 (not c!753107)) b!4424395))

(assert (= (and b!4424395 c!753105) b!4424396))

(assert (= (and b!4424395 (not c!753105)) b!4424397))

(assert (= (or b!4424400 b!4424395) bm!307813))

(assert (= (and bm!307813 c!753106) b!4424393))

(assert (= (and bm!307813 (not c!753106)) b!4424398))

(assert (= (and d!1340950 res!1829030) b!4424394))

(assert (= (and d!1340950 (not res!1829028)) b!4424399))

(assert (= (and b!4424399 res!1829029) b!4424392))

(declare-fun m!5103945 () Bool)

(assert (=> b!4424396 m!5103945))

(declare-fun m!5103947 () Bool)

(assert (=> b!4424396 m!5103947))

(declare-fun m!5103949 () Bool)

(assert (=> bm!307813 m!5103949))

(declare-fun m!5103951 () Bool)

(assert (=> b!4424394 m!5103951))

(assert (=> b!4424394 m!5103951))

(declare-fun m!5103953 () Bool)

(assert (=> b!4424394 m!5103953))

(assert (=> d!1340950 m!5103945))

(assert (=> b!4424392 m!5103951))

(assert (=> b!4424392 m!5103951))

(assert (=> b!4424392 m!5103953))

(declare-fun m!5103955 () Bool)

(assert (=> b!4424400 m!5103955))

(declare-fun m!5103957 () Bool)

(assert (=> b!4424400 m!5103957))

(assert (=> b!4424400 m!5103957))

(declare-fun m!5103959 () Bool)

(assert (=> b!4424400 m!5103959))

(declare-fun m!5103961 () Bool)

(assert (=> b!4424400 m!5103961))

(declare-fun m!5103963 () Bool)

(assert (=> b!4424393 m!5103963))

(assert (=> b!4424398 m!5103951))

(assert (=> b!4424399 m!5103957))

(assert (=> b!4424399 m!5103957))

(assert (=> b!4424399 m!5103959))

(assert (=> b!4424144 d!1340950))

(declare-fun bs!756266 () Bool)

(declare-fun d!1340952 () Bool)

(assert (= bs!756266 (and d!1340952 d!1340910)))

(declare-fun lambda!153759 () Int)

(assert (=> bs!756266 (= lambda!153759 lambda!153753)))

(declare-fun bs!756267 () Bool)

(assert (= bs!756267 (and d!1340952 d!1340890)))

(assert (=> bs!756267 (not (= lambda!153759 lambda!153739))))

(declare-fun bs!756268 () Bool)

(assert (= bs!756268 (and d!1340952 d!1340922)))

(assert (=> bs!756268 (= lambda!153759 lambda!153754)))

(declare-fun bs!756269 () Bool)

(assert (= bs!756269 (and d!1340952 d!1340906)))

(assert (=> bs!756269 (= lambda!153759 lambda!153750)))

(declare-fun bs!756270 () Bool)

(assert (= bs!756270 (and d!1340952 start!431492)))

(assert (=> bs!756270 (= lambda!153759 lambda!153648)))

(declare-fun bs!756271 () Bool)

(assert (= bs!756271 (and d!1340952 d!1340942)))

(assert (=> bs!756271 (= lambda!153759 lambda!153758)))

(declare-fun bs!756272 () Bool)

(assert (= bs!756272 (and d!1340952 d!1340930)))

(assert (=> bs!756272 (= lambda!153759 lambda!153755)))

(declare-fun lt!1623890 () ListMap!2725)

(assert (=> d!1340952 (invariantList!803 (toList!3482 lt!1623890))))

(declare-fun e!2754822 () ListMap!2725)

(assert (=> d!1340952 (= lt!1623890 e!2754822)))

(declare-fun c!753108 () Bool)

(assert (=> d!1340952 (= c!753108 ((_ is Cons!49576) (toList!3481 lm!1616)))))

(assert (=> d!1340952 (forall!9556 (toList!3481 lm!1616) lambda!153759)))

(assert (=> d!1340952 (= (extractMap!808 (toList!3481 lm!1616)) lt!1623890)))

(declare-fun b!4424401 () Bool)

(assert (=> b!4424401 (= e!2754822 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))))))

(declare-fun b!4424402 () Bool)

(assert (=> b!4424402 (= e!2754822 (ListMap!2726 Nil!49575))))

(assert (= (and d!1340952 c!753108) b!4424401))

(assert (= (and d!1340952 (not c!753108)) b!4424402))

(declare-fun m!5103965 () Bool)

(assert (=> d!1340952 m!5103965))

(declare-fun m!5103967 () Bool)

(assert (=> d!1340952 m!5103967))

(declare-fun m!5103969 () Bool)

(assert (=> b!4424401 m!5103969))

(assert (=> b!4424401 m!5103969))

(declare-fun m!5103971 () Bool)

(assert (=> b!4424401 m!5103971))

(assert (=> b!4424144 d!1340952))

(declare-fun bs!756273 () Bool)

(declare-fun d!1340954 () Bool)

(assert (= bs!756273 (and d!1340954 d!1340910)))

(declare-fun lambda!153762 () Int)

(assert (=> bs!756273 (= lambda!153762 lambda!153753)))

(declare-fun bs!756274 () Bool)

(assert (= bs!756274 (and d!1340954 d!1340952)))

(assert (=> bs!756274 (= lambda!153762 lambda!153759)))

(declare-fun bs!756275 () Bool)

(assert (= bs!756275 (and d!1340954 d!1340890)))

(assert (=> bs!756275 (not (= lambda!153762 lambda!153739))))

(declare-fun bs!756276 () Bool)

(assert (= bs!756276 (and d!1340954 d!1340922)))

(assert (=> bs!756276 (= lambda!153762 lambda!153754)))

(declare-fun bs!756277 () Bool)

(assert (= bs!756277 (and d!1340954 d!1340906)))

(assert (=> bs!756277 (= lambda!153762 lambda!153750)))

(declare-fun bs!756278 () Bool)

(assert (= bs!756278 (and d!1340954 start!431492)))

(assert (=> bs!756278 (= lambda!153762 lambda!153648)))

(declare-fun bs!756279 () Bool)

(assert (= bs!756279 (and d!1340954 d!1340942)))

(assert (=> bs!756279 (= lambda!153762 lambda!153758)))

(declare-fun bs!756280 () Bool)

(assert (= bs!756280 (and d!1340954 d!1340930)))

(assert (=> bs!756280 (= lambda!153762 lambda!153755)))

(assert (=> d!1340954 (contains!12073 (extractMap!808 (toList!3481 lm!1616)) key!3717)))

(declare-fun lt!1623893 () Unit!81703)

(declare-fun choose!27921 (ListLongMap!2131 K!10940 Hashable!5141) Unit!81703)

(assert (=> d!1340954 (= lt!1623893 (choose!27921 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1340954 (forall!9556 (toList!3481 lm!1616) lambda!153762)))

(assert (=> d!1340954 (= (lemmaExtractTailMapContainsThenExtractMapDoes!34 lm!1616 key!3717 hashF!1220) lt!1623893)))

(declare-fun bs!756281 () Bool)

(assert (= bs!756281 d!1340954))

(assert (=> bs!756281 m!5103357))

(assert (=> bs!756281 m!5103357))

(declare-fun m!5103973 () Bool)

(assert (=> bs!756281 m!5103973))

(declare-fun m!5103975 () Bool)

(assert (=> bs!756281 m!5103975))

(declare-fun m!5103977 () Bool)

(assert (=> bs!756281 m!5103977))

(assert (=> b!4424143 d!1340954))

(declare-fun d!1340956 () Bool)

(declare-fun e!2754827 () Bool)

(assert (=> d!1340956 e!2754827))

(declare-fun res!1829033 () Bool)

(assert (=> d!1340956 (=> res!1829033 e!2754827)))

(declare-fun lt!1623904 () Bool)

(assert (=> d!1340956 (= res!1829033 (not lt!1623904))))

(declare-fun lt!1623903 () Bool)

(assert (=> d!1340956 (= lt!1623904 lt!1623903)))

(declare-fun lt!1623905 () Unit!81703)

(declare-fun e!2754828 () Unit!81703)

(assert (=> d!1340956 (= lt!1623905 e!2754828)))

(declare-fun c!753111 () Bool)

(assert (=> d!1340956 (= c!753111 lt!1623903)))

(declare-fun containsKey!1110 (List!49700 (_ BitVec 64)) Bool)

(assert (=> d!1340956 (= lt!1623903 (containsKey!1110 (toList!3481 lm!1616) hash!366))))

(assert (=> d!1340956 (= (contains!12072 lm!1616 hash!366) lt!1623904)))

(declare-fun b!4424409 () Bool)

(declare-fun lt!1623902 () Unit!81703)

(assert (=> b!4424409 (= e!2754828 lt!1623902)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!617 (List!49700 (_ BitVec 64)) Unit!81703)

(assert (=> b!4424409 (= lt!1623902 (lemmaContainsKeyImpliesGetValueByKeyDefined!617 (toList!3481 lm!1616) hash!366))))

(declare-fun isDefined!8014 (Option!10722) Bool)

(assert (=> b!4424409 (isDefined!8014 (getValueByKey!708 (toList!3481 lm!1616) hash!366))))

(declare-fun b!4424410 () Bool)

(declare-fun Unit!81760 () Unit!81703)

(assert (=> b!4424410 (= e!2754828 Unit!81760)))

(declare-fun b!4424411 () Bool)

(assert (=> b!4424411 (= e!2754827 (isDefined!8014 (getValueByKey!708 (toList!3481 lm!1616) hash!366)))))

(assert (= (and d!1340956 c!753111) b!4424409))

(assert (= (and d!1340956 (not c!753111)) b!4424410))

(assert (= (and d!1340956 (not res!1829033)) b!4424411))

(declare-fun m!5103979 () Bool)

(assert (=> d!1340956 m!5103979))

(declare-fun m!5103981 () Bool)

(assert (=> b!4424409 m!5103981))

(assert (=> b!4424409 m!5103703))

(assert (=> b!4424409 m!5103703))

(declare-fun m!5103983 () Bool)

(assert (=> b!4424409 m!5103983))

(assert (=> b!4424411 m!5103703))

(assert (=> b!4424411 m!5103703))

(assert (=> b!4424411 m!5103983))

(assert (=> b!4424142 d!1340956))

(assert (=> start!431492 d!1340870))

(declare-fun d!1340958 () Bool)

(declare-fun isStrictlySorted!230 (List!49700) Bool)

(assert (=> d!1340958 (= (inv!65126 lm!1616) (isStrictlySorted!230 (toList!3481 lm!1616)))))

(declare-fun bs!756282 () Bool)

(assert (= bs!756282 d!1340958))

(declare-fun m!5103985 () Bool)

(assert (=> bs!756282 m!5103985))

(assert (=> start!431492 d!1340958))

(declare-fun e!2754831 () Bool)

(declare-fun b!4424416 () Bool)

(declare-fun tp!1333168 () Bool)

(assert (=> b!4424416 (= e!2754831 (and tp_is_empty!26235 tp_is_empty!26233 tp!1333168))))

(assert (=> b!4424130 (= tp!1333155 e!2754831)))

(assert (= (and b!4424130 ((_ is Cons!49575) (t!356637 newBucket!194))) b!4424416))

(declare-fun b!4424421 () Bool)

(declare-fun e!2754834 () Bool)

(declare-fun tp!1333173 () Bool)

(declare-fun tp!1333174 () Bool)

(assert (=> b!4424421 (= e!2754834 (and tp!1333173 tp!1333174))))

(assert (=> b!4424131 (= tp!1333156 e!2754834)))

(assert (= (and b!4424131 ((_ is Cons!49576) (toList!3481 lm!1616))) b!4424421))

(declare-fun b_lambda!142933 () Bool)

(assert (= b_lambda!142931 (or start!431492 b_lambda!142933)))

(declare-fun bs!756283 () Bool)

(declare-fun d!1340960 () Bool)

(assert (= bs!756283 (and d!1340960 start!431492)))

(assert (=> bs!756283 (= (dynLambda!20842 lambda!153648 (tuple2!49369 hash!366 newBucket!194)) (noDuplicateKeys!747 (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(declare-fun m!5103987 () Bool)

(assert (=> bs!756283 m!5103987))

(assert (=> b!4424391 d!1340960))

(declare-fun b_lambda!142935 () Bool)

(assert (= b_lambda!142921 (or start!431492 b_lambda!142935)))

(declare-fun bs!756284 () Bool)

(declare-fun d!1340962 () Bool)

(assert (= bs!756284 (and d!1340962 start!431492)))

(assert (=> bs!756284 (= (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 lm!1616))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> bs!756284 m!5103593))

(assert (=> b!4424283 d!1340962))

(declare-fun b_lambda!142937 () Bool)

(assert (= b_lambda!142929 (or start!431492 b_lambda!142937)))

(declare-fun bs!756285 () Bool)

(declare-fun d!1340964 () Bool)

(assert (= bs!756285 (and d!1340964 start!431492)))

(assert (=> bs!756285 (= (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 lt!1623528))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lt!1623528)))))))

(declare-fun m!5103989 () Bool)

(assert (=> bs!756285 m!5103989))

(assert (=> b!4424384 d!1340964))

(check-sat (not d!1340864) (not d!1340886) (not d!1340860) (not bm!307804) (not bm!307793) (not d!1340920) (not b!4424392) (not b!4424394) (not b!4424375) (not b!4424381) (not bs!756283) (not d!1340934) (not b!4424369) (not d!1340922) (not d!1340942) (not b!4424347) (not b!4424335) (not b!4424387) (not d!1340880) (not d!1340952) tp_is_empty!26235 (not d!1340906) (not b!4424371) (not b!4424345) (not b!4424343) (not b!4424306) (not b!4424416) (not b!4424409) (not d!1340862) (not d!1340924) (not d!1340894) tp_is_empty!26233 (not b!4424385) (not d!1340892) (not b!4424421) (not b!4424383) (not b!4424241) (not bm!307813) (not bs!756284) (not b_lambda!142933) (not bm!307806) (not b!4424303) (not d!1340946) (not d!1340882) (not b_lambda!142935) (not d!1340926) (not b!4424304) (not d!1340950) (not b!4424400) (not bm!307792) (not b!4424399) (not b!4424242) (not b!4424398) (not d!1340954) (not bm!307805) (not b_lambda!142937) (not b!4424373) (not b!4424401) (not b!4424396) (not d!1340940) (not b!4424344) (not bs!756285) (not b!4424290) (not b!4424289) (not b!4424386) (not d!1340918) (not b!4424368) (not b!4424346) (not b!4424393) (not b!4424337) (not d!1340812) (not b!4424305) (not b!4424244) (not d!1340948) (not bm!307794) (not b!4424243) (not d!1340930) (not b!4424269) (not bm!307812) (not d!1340956) (not b!4424367) (not b!4424411) (not d!1340958) (not b!4424374) (not b!4424270) (not d!1340858) (not d!1340910) (not b!4424284) (not d!1340928) (not d!1340890))
(check-sat)
(get-model)

(declare-fun d!1340966 () Bool)

(declare-fun res!1829034 () Bool)

(declare-fun e!2754835 () Bool)

(assert (=> d!1340966 (=> res!1829034 e!2754835)))

(assert (=> d!1340966 (= res!1829034 ((_ is Nil!49576) (t!356638 (toList!3481 lt!1623528))))))

(assert (=> d!1340966 (= (forall!9556 (t!356638 (toList!3481 lt!1623528)) lambda!153648) e!2754835)))

(declare-fun b!4424422 () Bool)

(declare-fun e!2754836 () Bool)

(assert (=> b!4424422 (= e!2754835 e!2754836)))

(declare-fun res!1829035 () Bool)

(assert (=> b!4424422 (=> (not res!1829035) (not e!2754836))))

(assert (=> b!4424422 (= res!1829035 (dynLambda!20842 lambda!153648 (h!55259 (t!356638 (toList!3481 lt!1623528)))))))

(declare-fun b!4424423 () Bool)

(assert (=> b!4424423 (= e!2754836 (forall!9556 (t!356638 (t!356638 (toList!3481 lt!1623528))) lambda!153648))))

(assert (= (and d!1340966 (not res!1829034)) b!4424422))

(assert (= (and b!4424422 res!1829035) b!4424423))

(declare-fun b_lambda!142939 () Bool)

(assert (=> (not b_lambda!142939) (not b!4424422)))

(declare-fun m!5103991 () Bool)

(assert (=> b!4424422 m!5103991))

(declare-fun m!5103993 () Bool)

(assert (=> b!4424423 m!5103993))

(assert (=> b!4424385 d!1340966))

(declare-fun d!1340968 () Bool)

(declare-fun lt!1623908 () Bool)

(assert (=> d!1340968 (= lt!1623908 (select (content!7952 (toList!3482 lt!1623845)) lt!1623530))))

(declare-fun e!2754841 () Bool)

(assert (=> d!1340968 (= lt!1623908 e!2754841)))

(declare-fun res!1829040 () Bool)

(assert (=> d!1340968 (=> (not res!1829040) (not e!2754841))))

(assert (=> d!1340968 (= res!1829040 ((_ is Cons!49575) (toList!3482 lt!1623845)))))

(assert (=> d!1340968 (= (contains!12077 (toList!3482 lt!1623845) lt!1623530) lt!1623908)))

(declare-fun b!4424428 () Bool)

(declare-fun e!2754842 () Bool)

(assert (=> b!4424428 (= e!2754841 e!2754842)))

(declare-fun res!1829041 () Bool)

(assert (=> b!4424428 (=> res!1829041 e!2754842)))

(assert (=> b!4424428 (= res!1829041 (= (h!55258 (toList!3482 lt!1623845)) lt!1623530))))

(declare-fun b!4424429 () Bool)

(assert (=> b!4424429 (= e!2754842 (contains!12077 (t!356637 (toList!3482 lt!1623845)) lt!1623530))))

(assert (= (and d!1340968 res!1829040) b!4424428))

(assert (= (and b!4424428 (not res!1829041)) b!4424429))

(declare-fun m!5103995 () Bool)

(assert (=> d!1340968 m!5103995))

(declare-fun m!5103997 () Bool)

(assert (=> d!1340968 m!5103997))

(declare-fun m!5103999 () Bool)

(assert (=> b!4424429 m!5103999))

(assert (=> b!4424346 d!1340968))

(declare-fun d!1340970 () Bool)

(declare-fun res!1829042 () Bool)

(declare-fun e!2754843 () Bool)

(assert (=> d!1340970 (=> res!1829042 e!2754843)))

(assert (=> d!1340970 (= res!1829042 (not ((_ is Cons!49575) (_2!27978 (tuple2!49369 hash!366 newBucket!194)))))))

(assert (=> d!1340970 (= (noDuplicateKeys!747 (_2!27978 (tuple2!49369 hash!366 newBucket!194))) e!2754843)))

(declare-fun b!4424430 () Bool)

(declare-fun e!2754844 () Bool)

(assert (=> b!4424430 (= e!2754843 e!2754844)))

(declare-fun res!1829043 () Bool)

(assert (=> b!4424430 (=> (not res!1829043) (not e!2754844))))

(assert (=> b!4424430 (= res!1829043 (not (containsKey!1106 (t!356637 (_2!27978 (tuple2!49369 hash!366 newBucket!194))) (_1!27977 (h!55258 (_2!27978 (tuple2!49369 hash!366 newBucket!194)))))))))

(declare-fun b!4424431 () Bool)

(assert (=> b!4424431 (= e!2754844 (noDuplicateKeys!747 (t!356637 (_2!27978 (tuple2!49369 hash!366 newBucket!194)))))))

(assert (= (and d!1340970 (not res!1829042)) b!4424430))

(assert (= (and b!4424430 res!1829043) b!4424431))

(declare-fun m!5104001 () Bool)

(assert (=> b!4424430 m!5104001))

(declare-fun m!5104003 () Bool)

(assert (=> b!4424431 m!5104003))

(assert (=> bs!756283 d!1340970))

(declare-fun b!4424456 () Bool)

(assert (=> b!4424456 true))

(declare-fun bs!756286 () Bool)

(declare-fun b!4424457 () Bool)

(assert (= bs!756286 (and b!4424457 b!4424456)))

(declare-fun lambda!153772 () Int)

(declare-fun lambda!153771 () Int)

(assert (=> bs!756286 (= (= (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153772 lambda!153771))))

(assert (=> b!4424457 true))

(declare-fun bs!756288 () Bool)

(declare-fun b!4424454 () Bool)

(assert (= bs!756288 (and b!4424454 b!4424456)))

(declare-fun lambda!153773 () Int)

(assert (=> bs!756288 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153773 lambda!153771))))

(declare-fun bs!756289 () Bool)

(assert (= bs!756289 (and b!4424454 b!4424457)))

(assert (=> bs!756289 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153773 lambda!153772))))

(assert (=> b!4424454 true))

(declare-fun b!4424452 () Bool)

(declare-fun e!2754854 () Unit!81703)

(declare-fun Unit!81761 () Unit!81703)

(assert (=> b!4424452 (= e!2754854 Unit!81761)))

(declare-fun b!4424453 () Bool)

(declare-fun res!1829053 () Bool)

(declare-fun e!2754857 () Bool)

(assert (=> b!4424453 (=> (not res!1829053) (not e!2754857))))

(declare-fun lt!1623933 () List!49702)

(declare-fun length!170 (List!49702) Int)

(declare-fun length!171 (List!49699) Int)

(assert (=> b!4424453 (= res!1829053 (= (length!170 lt!1623933) (length!171 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun res!1829054 () Bool)

(assert (=> b!4424454 (=> (not res!1829054) (not e!2754857))))

(declare-fun forall!9559 (List!49702 Int) Bool)

(assert (=> b!4424454 (= res!1829054 (forall!9559 lt!1623933 lambda!153773))))

(declare-fun lambda!153774 () Int)

(declare-fun b!4424455 () Bool)

(declare-fun content!7953 (List!49702) (InoxSet K!10940))

(declare-fun map!10828 (List!49699 Int) List!49702)

(assert (=> b!4424455 (= e!2754857 (= (content!7953 lt!1623933) (content!7953 (map!10828 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) lambda!153774))))))

(assert (=> b!4424456 false))

(declare-fun lt!1623930 () Unit!81703)

(declare-fun forallContained!2090 (List!49702 Int K!10940) Unit!81703)

(assert (=> b!4424456 (= lt!1623930 (forallContained!2090 (getKeysList!250 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) lambda!153771 (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun e!2754856 () Unit!81703)

(declare-fun Unit!81762 () Unit!81703)

(assert (=> b!4424456 (= e!2754856 Unit!81762)))

(declare-fun d!1340972 () Bool)

(assert (=> d!1340972 e!2754857))

(declare-fun res!1829052 () Bool)

(assert (=> d!1340972 (=> (not res!1829052) (not e!2754857))))

(declare-fun noDuplicate!657 (List!49702) Bool)

(assert (=> d!1340972 (= res!1829052 (noDuplicate!657 lt!1623933))))

(declare-fun e!2754855 () List!49702)

(assert (=> d!1340972 (= lt!1623933 e!2754855)))

(declare-fun c!753120 () Bool)

(assert (=> d!1340972 (= c!753120 ((_ is Cons!49575) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))

(assert (=> d!1340972 (invariantList!803 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1340972 (= (getKeysList!250 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) lt!1623933)))

(assert (=> b!4424457 (= e!2754855 (Cons!49578 (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (getKeysList!250 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun c!753119 () Bool)

(assert (=> b!4424457 (= c!753119 (containsKey!1109 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun lt!1623931 () Unit!81703)

(assert (=> b!4424457 (= lt!1623931 e!2754854)))

(declare-fun c!753118 () Bool)

(assert (=> b!4424457 (= c!753118 (contains!12079 (getKeysList!250 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun lt!1623927 () Unit!81703)

(assert (=> b!4424457 (= lt!1623927 e!2754856)))

(declare-fun lt!1623929 () List!49702)

(assert (=> b!4424457 (= lt!1623929 (getKeysList!250 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun lt!1623932 () Unit!81703)

(declare-fun lemmaForallContainsAddHeadPreserves!79 (List!49699 List!49702 tuple2!49366) Unit!81703)

(assert (=> b!4424457 (= lt!1623932 (lemmaForallContainsAddHeadPreserves!79 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) lt!1623929 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))))

(assert (=> b!4424457 (forall!9559 lt!1623929 lambda!153772)))

(declare-fun lt!1623928 () Unit!81703)

(assert (=> b!4424457 (= lt!1623928 lt!1623932)))

(declare-fun b!4424458 () Bool)

(assert (=> b!4424458 (= e!2754855 Nil!49578)))

(declare-fun b!4424459 () Bool)

(assert (=> b!4424459 false))

(declare-fun Unit!81763 () Unit!81703)

(assert (=> b!4424459 (= e!2754854 Unit!81763)))

(declare-fun b!4424460 () Bool)

(declare-fun Unit!81764 () Unit!81703)

(assert (=> b!4424460 (= e!2754856 Unit!81764)))

(assert (= (and d!1340972 c!753120) b!4424457))

(assert (= (and d!1340972 (not c!753120)) b!4424458))

(assert (= (and b!4424457 c!753119) b!4424459))

(assert (= (and b!4424457 (not c!753119)) b!4424452))

(assert (= (and b!4424457 c!753118) b!4424456))

(assert (= (and b!4424457 (not c!753118)) b!4424460))

(assert (= (and d!1340972 res!1829052) b!4424453))

(assert (= (and b!4424453 res!1829053) b!4424454))

(assert (= (and b!4424454 res!1829054) b!4424455))

(declare-fun m!5104031 () Bool)

(assert (=> b!4424454 m!5104031))

(declare-fun m!5104033 () Bool)

(assert (=> d!1340972 m!5104033))

(declare-fun m!5104037 () Bool)

(assert (=> d!1340972 m!5104037))

(declare-fun m!5104039 () Bool)

(assert (=> b!4424457 m!5104039))

(declare-fun m!5104041 () Bool)

(assert (=> b!4424457 m!5104041))

(declare-fun m!5104043 () Bool)

(assert (=> b!4424457 m!5104043))

(declare-fun m!5104045 () Bool)

(assert (=> b!4424457 m!5104045))

(assert (=> b!4424457 m!5104041))

(declare-fun m!5104047 () Bool)

(assert (=> b!4424457 m!5104047))

(assert (=> b!4424456 m!5104041))

(assert (=> b!4424456 m!5104041))

(declare-fun m!5104049 () Bool)

(assert (=> b!4424456 m!5104049))

(declare-fun m!5104051 () Bool)

(assert (=> b!4424455 m!5104051))

(declare-fun m!5104053 () Bool)

(assert (=> b!4424455 m!5104053))

(assert (=> b!4424455 m!5104053))

(declare-fun m!5104055 () Bool)

(assert (=> b!4424455 m!5104055))

(declare-fun m!5104057 () Bool)

(assert (=> b!4424453 m!5104057))

(declare-fun m!5104059 () Bool)

(assert (=> b!4424453 m!5104059))

(assert (=> b!4424368 d!1340972))

(declare-fun bs!756290 () Bool)

(declare-fun b!4424471 () Bool)

(assert (= bs!756290 (and b!4424471 b!4424304)))

(declare-fun lambda!153775 () Int)

(assert (=> bs!756290 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623791) (= lambda!153775 lambda!153742))))

(declare-fun bs!756291 () Bool)

(assert (= bs!756291 (and b!4424471 b!4424307)))

(assert (=> bs!756291 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623532) (= lambda!153775 lambda!153740))))

(declare-fun bs!756292 () Bool)

(assert (= bs!756292 (and b!4424471 b!4424242)))

(assert (=> bs!756292 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623689) (= lambda!153775 lambda!153691))))

(assert (=> bs!756292 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623538) (= lambda!153775 lambda!153690))))

(declare-fun bs!756293 () Bool)

(assert (= bs!756293 (and b!4424471 b!4424245)))

(assert (=> bs!756293 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623538) (= lambda!153775 lambda!153689))))

(declare-fun bs!756294 () Bool)

(assert (= bs!756294 (and b!4424471 d!1340812)))

(assert (=> bs!756294 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623685) (= lambda!153775 lambda!153694))))

(declare-fun bs!756295 () Bool)

(assert (= bs!756295 (and b!4424471 d!1340894)))

(assert (=> bs!756295 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623787) (= lambda!153775 lambda!153743))))

(assert (=> bs!756290 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623532) (= lambda!153775 lambda!153741))))

(declare-fun bs!756296 () Bool)

(assert (= bs!756296 (and b!4424471 d!1340882)))

(assert (=> bs!756296 (not (= lambda!153775 lambda!153732))))

(assert (=> b!4424471 true))

(declare-fun bs!756297 () Bool)

(declare-fun b!4424468 () Bool)

(assert (= bs!756297 (and b!4424468 b!4424471)))

(declare-fun lambda!153776 () Int)

(assert (=> bs!756297 (= lambda!153776 lambda!153775)))

(declare-fun bs!756298 () Bool)

(assert (= bs!756298 (and b!4424468 b!4424304)))

(assert (=> bs!756298 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623791) (= lambda!153776 lambda!153742))))

(declare-fun bs!756299 () Bool)

(assert (= bs!756299 (and b!4424468 b!4424307)))

(assert (=> bs!756299 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623532) (= lambda!153776 lambda!153740))))

(declare-fun bs!756300 () Bool)

(assert (= bs!756300 (and b!4424468 b!4424242)))

(assert (=> bs!756300 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623689) (= lambda!153776 lambda!153691))))

(assert (=> bs!756300 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623538) (= lambda!153776 lambda!153690))))

(declare-fun bs!756301 () Bool)

(assert (= bs!756301 (and b!4424468 b!4424245)))

(assert (=> bs!756301 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623538) (= lambda!153776 lambda!153689))))

(declare-fun bs!756302 () Bool)

(assert (= bs!756302 (and b!4424468 d!1340812)))

(assert (=> bs!756302 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623685) (= lambda!153776 lambda!153694))))

(declare-fun bs!756303 () Bool)

(assert (= bs!756303 (and b!4424468 d!1340894)))

(assert (=> bs!756303 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623787) (= lambda!153776 lambda!153743))))

(assert (=> bs!756298 (= (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623532) (= lambda!153776 lambda!153741))))

(declare-fun bs!756304 () Bool)

(assert (= bs!756304 (and b!4424468 d!1340882)))

(assert (=> bs!756304 (not (= lambda!153776 lambda!153732))))

(assert (=> b!4424468 true))

(declare-fun lt!1623954 () ListMap!2725)

(declare-fun lambda!153777 () Int)

(assert (=> b!4424468 (= (= lt!1623954 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153777 lambda!153776))))

(assert (=> bs!756297 (= (= lt!1623954 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153777 lambda!153775))))

(assert (=> bs!756298 (= (= lt!1623954 lt!1623791) (= lambda!153777 lambda!153742))))

(assert (=> bs!756299 (= (= lt!1623954 lt!1623532) (= lambda!153777 lambda!153740))))

(assert (=> bs!756300 (= (= lt!1623954 lt!1623689) (= lambda!153777 lambda!153691))))

(assert (=> bs!756300 (= (= lt!1623954 lt!1623538) (= lambda!153777 lambda!153690))))

(assert (=> bs!756301 (= (= lt!1623954 lt!1623538) (= lambda!153777 lambda!153689))))

(assert (=> bs!756302 (= (= lt!1623954 lt!1623685) (= lambda!153777 lambda!153694))))

(assert (=> bs!756303 (= (= lt!1623954 lt!1623787) (= lambda!153777 lambda!153743))))

(assert (=> bs!756298 (= (= lt!1623954 lt!1623532) (= lambda!153777 lambda!153741))))

(assert (=> bs!756304 (not (= lambda!153777 lambda!153732))))

(assert (=> b!4424468 true))

(declare-fun bs!756305 () Bool)

(declare-fun d!1340982 () Bool)

(assert (= bs!756305 (and d!1340982 b!4424468)))

(declare-fun lambda!153778 () Int)

(declare-fun lt!1623950 () ListMap!2725)

(assert (=> bs!756305 (= (= lt!1623950 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153778 lambda!153776))))

(declare-fun bs!756306 () Bool)

(assert (= bs!756306 (and d!1340982 b!4424471)))

(assert (=> bs!756306 (= (= lt!1623950 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153778 lambda!153775))))

(declare-fun bs!756307 () Bool)

(assert (= bs!756307 (and d!1340982 b!4424304)))

(assert (=> bs!756307 (= (= lt!1623950 lt!1623791) (= lambda!153778 lambda!153742))))

(assert (=> bs!756305 (= (= lt!1623950 lt!1623954) (= lambda!153778 lambda!153777))))

(declare-fun bs!756308 () Bool)

(assert (= bs!756308 (and d!1340982 b!4424307)))

(assert (=> bs!756308 (= (= lt!1623950 lt!1623532) (= lambda!153778 lambda!153740))))

(declare-fun bs!756309 () Bool)

(assert (= bs!756309 (and d!1340982 b!4424242)))

(assert (=> bs!756309 (= (= lt!1623950 lt!1623689) (= lambda!153778 lambda!153691))))

(assert (=> bs!756309 (= (= lt!1623950 lt!1623538) (= lambda!153778 lambda!153690))))

(declare-fun bs!756310 () Bool)

(assert (= bs!756310 (and d!1340982 b!4424245)))

(assert (=> bs!756310 (= (= lt!1623950 lt!1623538) (= lambda!153778 lambda!153689))))

(declare-fun bs!756311 () Bool)

(assert (= bs!756311 (and d!1340982 d!1340812)))

(assert (=> bs!756311 (= (= lt!1623950 lt!1623685) (= lambda!153778 lambda!153694))))

(declare-fun bs!756312 () Bool)

(assert (= bs!756312 (and d!1340982 d!1340894)))

(assert (=> bs!756312 (= (= lt!1623950 lt!1623787) (= lambda!153778 lambda!153743))))

(assert (=> bs!756307 (= (= lt!1623950 lt!1623532) (= lambda!153778 lambda!153741))))

(declare-fun bs!756313 () Bool)

(assert (= bs!756313 (and d!1340982 d!1340882)))

(assert (=> bs!756313 (not (= lambda!153778 lambda!153732))))

(assert (=> d!1340982 true))

(declare-fun b!4424467 () Bool)

(declare-fun e!2754863 () Bool)

(assert (=> b!4424467 (= e!2754863 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) lambda!153777))))

(declare-fun e!2754862 () ListMap!2725)

(assert (=> b!4424468 (= e!2754862 lt!1623954)))

(declare-fun lt!1623958 () ListMap!2725)

(assert (=> b!4424468 (= lt!1623958 (+!1079 (extractMap!808 (t!356638 (toList!3481 lt!1623534))) (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534))))))))

(assert (=> b!4424468 (= lt!1623954 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lt!1623534)))) (+!1079 (extractMap!808 (t!356638 (toList!3481 lt!1623534))) (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534)))))))))

(declare-fun lt!1623941 () Unit!81703)

(declare-fun call!307819 () Unit!81703)

(assert (=> b!4424468 (= lt!1623941 call!307819)))

(declare-fun call!307821 () Bool)

(assert (=> b!4424468 call!307821))

(declare-fun lt!1623956 () Unit!81703)

(assert (=> b!4424468 (= lt!1623956 lt!1623941)))

(assert (=> b!4424468 (forall!9557 (toList!3482 lt!1623958) lambda!153777)))

(declare-fun lt!1623953 () Unit!81703)

(declare-fun Unit!81765 () Unit!81703)

(assert (=> b!4424468 (= lt!1623953 Unit!81765)))

(assert (=> b!4424468 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lt!1623534)))) lambda!153777)))

(declare-fun lt!1623938 () Unit!81703)

(declare-fun Unit!81766 () Unit!81703)

(assert (=> b!4424468 (= lt!1623938 Unit!81766)))

(declare-fun lt!1623940 () Unit!81703)

(declare-fun Unit!81767 () Unit!81703)

(assert (=> b!4424468 (= lt!1623940 Unit!81767)))

(declare-fun lt!1623943 () Unit!81703)

(assert (=> b!4424468 (= lt!1623943 (forallContained!2088 (toList!3482 lt!1623958) lambda!153777 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534))))))))

(assert (=> b!4424468 (contains!12073 lt!1623958 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534))))))))

(declare-fun lt!1623944 () Unit!81703)

(declare-fun Unit!81768 () Unit!81703)

(assert (=> b!4424468 (= lt!1623944 Unit!81768)))

(assert (=> b!4424468 (contains!12073 lt!1623954 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534))))))))

(declare-fun lt!1623939 () Unit!81703)

(declare-fun Unit!81769 () Unit!81703)

(assert (=> b!4424468 (= lt!1623939 Unit!81769)))

(assert (=> b!4424468 (forall!9557 (_2!27978 (h!55259 (toList!3481 lt!1623534))) lambda!153777)))

(declare-fun lt!1623949 () Unit!81703)

(declare-fun Unit!81770 () Unit!81703)

(assert (=> b!4424468 (= lt!1623949 Unit!81770)))

(assert (=> b!4424468 (forall!9557 (toList!3482 lt!1623958) lambda!153777)))

(declare-fun lt!1623957 () Unit!81703)

(declare-fun Unit!81771 () Unit!81703)

(assert (=> b!4424468 (= lt!1623957 Unit!81771)))

(declare-fun lt!1623955 () Unit!81703)

(declare-fun Unit!81772 () Unit!81703)

(assert (=> b!4424468 (= lt!1623955 Unit!81772)))

(declare-fun lt!1623946 () Unit!81703)

(assert (=> b!4424468 (= lt!1623946 (addForallContainsKeyThenBeforeAdding!170 (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623954 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623534)))))))))

(declare-fun call!307820 () Bool)

(assert (=> b!4424468 call!307820))

(declare-fun lt!1623952 () Unit!81703)

(assert (=> b!4424468 (= lt!1623952 lt!1623946)))

(assert (=> b!4424468 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) lambda!153777)))

(declare-fun lt!1623947 () Unit!81703)

(declare-fun Unit!81773 () Unit!81703)

(assert (=> b!4424468 (= lt!1623947 Unit!81773)))

(declare-fun res!1829061 () Bool)

(assert (=> b!4424468 (= res!1829061 (forall!9557 (_2!27978 (h!55259 (toList!3481 lt!1623534))) lambda!153777))))

(assert (=> b!4424468 (=> (not res!1829061) (not e!2754863))))

(assert (=> b!4424468 e!2754863))

(declare-fun lt!1623948 () Unit!81703)

(declare-fun Unit!81774 () Unit!81703)

(assert (=> b!4424468 (= lt!1623948 Unit!81774)))

(declare-fun e!2754861 () Bool)

(assert (=> d!1340982 e!2754861))

(declare-fun res!1829060 () Bool)

(assert (=> d!1340982 (=> (not res!1829060) (not e!2754861))))

(assert (=> d!1340982 (= res!1829060 (forall!9557 (_2!27978 (h!55259 (toList!3481 lt!1623534))) lambda!153778))))

(assert (=> d!1340982 (= lt!1623950 e!2754862)))

(declare-fun c!753121 () Bool)

(assert (=> d!1340982 (= c!753121 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lt!1623534)))))))

(assert (=> d!1340982 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lt!1623534))))))

(assert (=> d!1340982 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lt!1623534))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) lt!1623950)))

(declare-fun bm!307814 () Bool)

(assert (=> bm!307814 (= call!307820 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (ite c!753121 lambda!153775 lambda!153777)))))

(declare-fun bm!307815 () Bool)

(assert (=> bm!307815 (= call!307821 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (ite c!753121 lambda!153775 lambda!153776)))))

(declare-fun b!4424469 () Bool)

(declare-fun res!1829059 () Bool)

(assert (=> b!4424469 (=> (not res!1829059) (not e!2754861))))

(assert (=> b!4424469 (= res!1829059 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) lambda!153778))))

(declare-fun bm!307816 () Bool)

(assert (=> bm!307816 (= call!307819 (lemmaContainsAllItsOwnKeys!170 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))))))

(declare-fun b!4424470 () Bool)

(assert (=> b!4424470 (= e!2754861 (invariantList!803 (toList!3482 lt!1623950)))))

(assert (=> b!4424471 (= e!2754862 (extractMap!808 (t!356638 (toList!3481 lt!1623534))))))

(declare-fun lt!1623945 () Unit!81703)

(assert (=> b!4424471 (= lt!1623945 call!307819)))

(assert (=> b!4424471 call!307821))

(declare-fun lt!1623942 () Unit!81703)

(assert (=> b!4424471 (= lt!1623942 lt!1623945)))

(assert (=> b!4424471 call!307820))

(declare-fun lt!1623951 () Unit!81703)

(declare-fun Unit!81775 () Unit!81703)

(assert (=> b!4424471 (= lt!1623951 Unit!81775)))

(assert (= (and d!1340982 c!753121) b!4424471))

(assert (= (and d!1340982 (not c!753121)) b!4424468))

(assert (= (and b!4424468 res!1829061) b!4424467))

(assert (= (or b!4424471 b!4424468) bm!307816))

(assert (= (or b!4424471 b!4424468) bm!307815))

(assert (= (or b!4424471 b!4424468) bm!307814))

(assert (= (and d!1340982 res!1829060) b!4424469))

(assert (= (and b!4424469 res!1829059) b!4424470))

(declare-fun m!5104065 () Bool)

(assert (=> d!1340982 m!5104065))

(declare-fun m!5104067 () Bool)

(assert (=> d!1340982 m!5104067))

(declare-fun m!5104069 () Bool)

(assert (=> bm!307815 m!5104069))

(declare-fun m!5104071 () Bool)

(assert (=> b!4424467 m!5104071))

(declare-fun m!5104073 () Bool)

(assert (=> b!4424470 m!5104073))

(assert (=> bm!307816 m!5103839))

(declare-fun m!5104075 () Bool)

(assert (=> bm!307816 m!5104075))

(declare-fun m!5104077 () Bool)

(assert (=> b!4424469 m!5104077))

(declare-fun m!5104079 () Bool)

(assert (=> bm!307814 m!5104079))

(declare-fun m!5104081 () Bool)

(assert (=> b!4424468 m!5104081))

(declare-fun m!5104083 () Bool)

(assert (=> b!4424468 m!5104083))

(declare-fun m!5104085 () Bool)

(assert (=> b!4424468 m!5104085))

(assert (=> b!4424468 m!5103839))

(declare-fun m!5104087 () Bool)

(assert (=> b!4424468 m!5104087))

(assert (=> b!4424468 m!5104083))

(assert (=> b!4424468 m!5104071))

(assert (=> b!4424468 m!5104081))

(assert (=> b!4424468 m!5103839))

(declare-fun m!5104089 () Bool)

(assert (=> b!4424468 m!5104089))

(declare-fun m!5104091 () Bool)

(assert (=> b!4424468 m!5104091))

(assert (=> b!4424468 m!5104087))

(declare-fun m!5104093 () Bool)

(assert (=> b!4424468 m!5104093))

(declare-fun m!5104095 () Bool)

(assert (=> b!4424468 m!5104095))

(declare-fun m!5104097 () Bool)

(assert (=> b!4424468 m!5104097))

(assert (=> b!4424335 d!1340982))

(declare-fun bs!756314 () Bool)

(declare-fun d!1340986 () Bool)

(assert (= bs!756314 (and d!1340986 d!1340910)))

(declare-fun lambda!153779 () Int)

(assert (=> bs!756314 (= lambda!153779 lambda!153753)))

(declare-fun bs!756315 () Bool)

(assert (= bs!756315 (and d!1340986 d!1340952)))

(assert (=> bs!756315 (= lambda!153779 lambda!153759)))

(declare-fun bs!756316 () Bool)

(assert (= bs!756316 (and d!1340986 d!1340890)))

(assert (=> bs!756316 (not (= lambda!153779 lambda!153739))))

(declare-fun bs!756317 () Bool)

(assert (= bs!756317 (and d!1340986 d!1340922)))

(assert (=> bs!756317 (= lambda!153779 lambda!153754)))

(declare-fun bs!756318 () Bool)

(assert (= bs!756318 (and d!1340986 d!1340906)))

(assert (=> bs!756318 (= lambda!153779 lambda!153750)))

(declare-fun bs!756319 () Bool)

(assert (= bs!756319 (and d!1340986 d!1340954)))

(assert (=> bs!756319 (= lambda!153779 lambda!153762)))

(declare-fun bs!756320 () Bool)

(assert (= bs!756320 (and d!1340986 start!431492)))

(assert (=> bs!756320 (= lambda!153779 lambda!153648)))

(declare-fun bs!756321 () Bool)

(assert (= bs!756321 (and d!1340986 d!1340942)))

(assert (=> bs!756321 (= lambda!153779 lambda!153758)))

(declare-fun bs!756322 () Bool)

(assert (= bs!756322 (and d!1340986 d!1340930)))

(assert (=> bs!756322 (= lambda!153779 lambda!153755)))

(declare-fun lt!1623959 () ListMap!2725)

(assert (=> d!1340986 (invariantList!803 (toList!3482 lt!1623959))))

(declare-fun e!2754864 () ListMap!2725)

(assert (=> d!1340986 (= lt!1623959 e!2754864)))

(declare-fun c!753122 () Bool)

(assert (=> d!1340986 (= c!753122 ((_ is Cons!49576) (t!356638 (toList!3481 lt!1623534))))))

(assert (=> d!1340986 (forall!9556 (t!356638 (toList!3481 lt!1623534)) lambda!153779)))

(assert (=> d!1340986 (= (extractMap!808 (t!356638 (toList!3481 lt!1623534))) lt!1623959)))

(declare-fun b!4424472 () Bool)

(assert (=> b!4424472 (= e!2754864 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (t!356638 (toList!3481 lt!1623534)))) (extractMap!808 (t!356638 (t!356638 (toList!3481 lt!1623534))))))))

(declare-fun b!4424473 () Bool)

(assert (=> b!4424473 (= e!2754864 (ListMap!2726 Nil!49575))))

(assert (= (and d!1340986 c!753122) b!4424472))

(assert (= (and d!1340986 (not c!753122)) b!4424473))

(declare-fun m!5104099 () Bool)

(assert (=> d!1340986 m!5104099))

(declare-fun m!5104101 () Bool)

(assert (=> d!1340986 m!5104101))

(declare-fun m!5104103 () Bool)

(assert (=> b!4424472 m!5104103))

(assert (=> b!4424472 m!5104103))

(declare-fun m!5104105 () Bool)

(assert (=> b!4424472 m!5104105))

(assert (=> b!4424335 d!1340986))

(declare-fun d!1340988 () Bool)

(declare-fun noDuplicatedKeys!173 (List!49699) Bool)

(assert (=> d!1340988 (= (invariantList!803 (toList!3482 lt!1623847)) (noDuplicatedKeys!173 (toList!3482 lt!1623847)))))

(declare-fun bs!756323 () Bool)

(assert (= bs!756323 d!1340988))

(declare-fun m!5104107 () Bool)

(assert (=> bs!756323 m!5104107))

(assert (=> d!1340930 d!1340988))

(declare-fun d!1340990 () Bool)

(declare-fun res!1829062 () Bool)

(declare-fun e!2754865 () Bool)

(assert (=> d!1340990 (=> res!1829062 e!2754865)))

(assert (=> d!1340990 (= res!1829062 ((_ is Nil!49576) (toList!3481 (+!1078 lt!1623534 lt!1623539))))))

(assert (=> d!1340990 (= (forall!9556 (toList!3481 (+!1078 lt!1623534 lt!1623539)) lambda!153755) e!2754865)))

(declare-fun b!4424474 () Bool)

(declare-fun e!2754866 () Bool)

(assert (=> b!4424474 (= e!2754865 e!2754866)))

(declare-fun res!1829063 () Bool)

(assert (=> b!4424474 (=> (not res!1829063) (not e!2754866))))

(assert (=> b!4424474 (= res!1829063 (dynLambda!20842 lambda!153755 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))

(declare-fun b!4424475 () Bool)

(assert (=> b!4424475 (= e!2754866 (forall!9556 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))) lambda!153755))))

(assert (= (and d!1340990 (not res!1829062)) b!4424474))

(assert (= (and b!4424474 res!1829063) b!4424475))

(declare-fun b_lambda!142943 () Bool)

(assert (=> (not b_lambda!142943) (not b!4424474)))

(declare-fun m!5104109 () Bool)

(assert (=> b!4424474 m!5104109))

(declare-fun m!5104111 () Bool)

(assert (=> b!4424475 m!5104111))

(assert (=> d!1340930 d!1340990))

(declare-fun bs!756324 () Bool)

(declare-fun b!4424480 () Bool)

(assert (= bs!756324 (and b!4424480 b!4424456)))

(declare-fun lambda!153780 () Int)

(assert (=> bs!756324 (= (= (t!356637 (toList!3482 lt!1623543)) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153780 lambda!153771))))

(declare-fun bs!756325 () Bool)

(assert (= bs!756325 (and b!4424480 b!4424457)))

(assert (=> bs!756325 (= (= (t!356637 (toList!3482 lt!1623543)) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153780 lambda!153772))))

(declare-fun bs!756326 () Bool)

(assert (= bs!756326 (and b!4424480 b!4424454)))

(assert (=> bs!756326 (= (= (t!356637 (toList!3482 lt!1623543)) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153780 lambda!153773))))

(assert (=> b!4424480 true))

(declare-fun bs!756327 () Bool)

(declare-fun b!4424481 () Bool)

(assert (= bs!756327 (and b!4424481 b!4424456)))

(declare-fun lambda!153781 () Int)

(assert (=> bs!756327 (= (= (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153781 lambda!153771))))

(declare-fun bs!756328 () Bool)

(assert (= bs!756328 (and b!4424481 b!4424457)))

(assert (=> bs!756328 (= (= (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543))) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153781 lambda!153772))))

(declare-fun bs!756329 () Bool)

(assert (= bs!756329 (and b!4424481 b!4424454)))

(assert (=> bs!756329 (= (= (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543))) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153781 lambda!153773))))

(declare-fun bs!756330 () Bool)

(assert (= bs!756330 (and b!4424481 b!4424480)))

(assert (=> bs!756330 (= (= (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543))) (t!356637 (toList!3482 lt!1623543))) (= lambda!153781 lambda!153780))))

(assert (=> b!4424481 true))

(declare-fun bs!756331 () Bool)

(declare-fun b!4424478 () Bool)

(assert (= bs!756331 (and b!4424478 b!4424456)))

(declare-fun lambda!153782 () Int)

(assert (=> bs!756331 (= (= (toList!3482 lt!1623543) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153782 lambda!153771))))

(declare-fun bs!756332 () Bool)

(assert (= bs!756332 (and b!4424478 b!4424454)))

(assert (=> bs!756332 (= (= (toList!3482 lt!1623543) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153782 lambda!153773))))

(declare-fun bs!756333 () Bool)

(assert (= bs!756333 (and b!4424478 b!4424457)))

(assert (=> bs!756333 (= (= (toList!3482 lt!1623543) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153782 lambda!153772))))

(declare-fun bs!756334 () Bool)

(assert (= bs!756334 (and b!4424478 b!4424481)))

(assert (=> bs!756334 (= (= (toList!3482 lt!1623543) (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543)))) (= lambda!153782 lambda!153781))))

(declare-fun bs!756335 () Bool)

(assert (= bs!756335 (and b!4424478 b!4424480)))

(assert (=> bs!756335 (= (= (toList!3482 lt!1623543) (t!356637 (toList!3482 lt!1623543))) (= lambda!153782 lambda!153780))))

(assert (=> b!4424478 true))

(declare-fun bs!756336 () Bool)

(declare-fun b!4424479 () Bool)

(assert (= bs!756336 (and b!4424479 b!4424455)))

(declare-fun lambda!153783 () Int)

(assert (=> bs!756336 (= lambda!153783 lambda!153774)))

(declare-fun b!4424476 () Bool)

(declare-fun e!2754867 () Unit!81703)

(declare-fun Unit!81776 () Unit!81703)

(assert (=> b!4424476 (= e!2754867 Unit!81776)))

(declare-fun b!4424477 () Bool)

(declare-fun res!1829065 () Bool)

(declare-fun e!2754870 () Bool)

(assert (=> b!4424477 (=> (not res!1829065) (not e!2754870))))

(declare-fun lt!1623966 () List!49702)

(assert (=> b!4424477 (= res!1829065 (= (length!170 lt!1623966) (length!171 (toList!3482 lt!1623543))))))

(declare-fun res!1829066 () Bool)

(assert (=> b!4424478 (=> (not res!1829066) (not e!2754870))))

(assert (=> b!4424478 (= res!1829066 (forall!9559 lt!1623966 lambda!153782))))

(assert (=> b!4424479 (= e!2754870 (= (content!7953 lt!1623966) (content!7953 (map!10828 (toList!3482 lt!1623543) lambda!153783))))))

(assert (=> b!4424480 false))

(declare-fun lt!1623963 () Unit!81703)

(assert (=> b!4424480 (= lt!1623963 (forallContained!2090 (getKeysList!250 (t!356637 (toList!3482 lt!1623543))) lambda!153780 (_1!27977 (h!55258 (toList!3482 lt!1623543)))))))

(declare-fun e!2754869 () Unit!81703)

(declare-fun Unit!81777 () Unit!81703)

(assert (=> b!4424480 (= e!2754869 Unit!81777)))

(declare-fun d!1340992 () Bool)

(assert (=> d!1340992 e!2754870))

(declare-fun res!1829064 () Bool)

(assert (=> d!1340992 (=> (not res!1829064) (not e!2754870))))

(assert (=> d!1340992 (= res!1829064 (noDuplicate!657 lt!1623966))))

(declare-fun e!2754868 () List!49702)

(assert (=> d!1340992 (= lt!1623966 e!2754868)))

(declare-fun c!753125 () Bool)

(assert (=> d!1340992 (= c!753125 ((_ is Cons!49575) (toList!3482 lt!1623543)))))

(assert (=> d!1340992 (invariantList!803 (toList!3482 lt!1623543))))

(assert (=> d!1340992 (= (getKeysList!250 (toList!3482 lt!1623543)) lt!1623966)))

(assert (=> b!4424481 (= e!2754868 (Cons!49578 (_1!27977 (h!55258 (toList!3482 lt!1623543))) (getKeysList!250 (t!356637 (toList!3482 lt!1623543)))))))

(declare-fun c!753124 () Bool)

(assert (=> b!4424481 (= c!753124 (containsKey!1109 (t!356637 (toList!3482 lt!1623543)) (_1!27977 (h!55258 (toList!3482 lt!1623543)))))))

(declare-fun lt!1623964 () Unit!81703)

(assert (=> b!4424481 (= lt!1623964 e!2754867)))

(declare-fun c!753123 () Bool)

(assert (=> b!4424481 (= c!753123 (contains!12079 (getKeysList!250 (t!356637 (toList!3482 lt!1623543))) (_1!27977 (h!55258 (toList!3482 lt!1623543)))))))

(declare-fun lt!1623960 () Unit!81703)

(assert (=> b!4424481 (= lt!1623960 e!2754869)))

(declare-fun lt!1623962 () List!49702)

(assert (=> b!4424481 (= lt!1623962 (getKeysList!250 (t!356637 (toList!3482 lt!1623543))))))

(declare-fun lt!1623965 () Unit!81703)

(assert (=> b!4424481 (= lt!1623965 (lemmaForallContainsAddHeadPreserves!79 (t!356637 (toList!3482 lt!1623543)) lt!1623962 (h!55258 (toList!3482 lt!1623543))))))

(assert (=> b!4424481 (forall!9559 lt!1623962 lambda!153781)))

(declare-fun lt!1623961 () Unit!81703)

(assert (=> b!4424481 (= lt!1623961 lt!1623965)))

(declare-fun b!4424482 () Bool)

(assert (=> b!4424482 (= e!2754868 Nil!49578)))

(declare-fun b!4424483 () Bool)

(assert (=> b!4424483 false))

(declare-fun Unit!81778 () Unit!81703)

(assert (=> b!4424483 (= e!2754867 Unit!81778)))

(declare-fun b!4424484 () Bool)

(declare-fun Unit!81779 () Unit!81703)

(assert (=> b!4424484 (= e!2754869 Unit!81779)))

(assert (= (and d!1340992 c!753125) b!4424481))

(assert (= (and d!1340992 (not c!753125)) b!4424482))

(assert (= (and b!4424481 c!753124) b!4424483))

(assert (= (and b!4424481 (not c!753124)) b!4424476))

(assert (= (and b!4424481 c!753123) b!4424480))

(assert (= (and b!4424481 (not c!753123)) b!4424484))

(assert (= (and d!1340992 res!1829064) b!4424477))

(assert (= (and b!4424477 res!1829065) b!4424478))

(assert (= (and b!4424478 res!1829066) b!4424479))

(declare-fun m!5104113 () Bool)

(assert (=> b!4424478 m!5104113))

(declare-fun m!5104115 () Bool)

(assert (=> d!1340992 m!5104115))

(declare-fun m!5104117 () Bool)

(assert (=> d!1340992 m!5104117))

(declare-fun m!5104119 () Bool)

(assert (=> b!4424481 m!5104119))

(declare-fun m!5104121 () Bool)

(assert (=> b!4424481 m!5104121))

(declare-fun m!5104123 () Bool)

(assert (=> b!4424481 m!5104123))

(declare-fun m!5104125 () Bool)

(assert (=> b!4424481 m!5104125))

(assert (=> b!4424481 m!5104121))

(declare-fun m!5104127 () Bool)

(assert (=> b!4424481 m!5104127))

(assert (=> b!4424480 m!5104121))

(assert (=> b!4424480 m!5104121))

(declare-fun m!5104129 () Bool)

(assert (=> b!4424480 m!5104129))

(declare-fun m!5104131 () Bool)

(assert (=> b!4424479 m!5104131))

(declare-fun m!5104133 () Bool)

(assert (=> b!4424479 m!5104133))

(assert (=> b!4424479 m!5104133))

(declare-fun m!5104135 () Bool)

(assert (=> b!4424479 m!5104135))

(declare-fun m!5104137 () Bool)

(assert (=> b!4424477 m!5104137))

(declare-fun m!5104139 () Bool)

(assert (=> b!4424477 m!5104139))

(assert (=> b!4424393 d!1340992))

(declare-fun d!1340994 () Bool)

(declare-fun lt!1623969 () Bool)

(declare-fun content!7954 (List!49700) (InoxSet tuple2!49368))

(assert (=> d!1340994 (= lt!1623969 (select (content!7954 (toList!3481 lt!1623842)) lt!1623539))))

(declare-fun e!2754875 () Bool)

(assert (=> d!1340994 (= lt!1623969 e!2754875)))

(declare-fun res!1829071 () Bool)

(assert (=> d!1340994 (=> (not res!1829071) (not e!2754875))))

(assert (=> d!1340994 (= res!1829071 ((_ is Cons!49576) (toList!3481 lt!1623842)))))

(assert (=> d!1340994 (= (contains!12078 (toList!3481 lt!1623842) lt!1623539) lt!1623969)))

(declare-fun b!4424489 () Bool)

(declare-fun e!2754876 () Bool)

(assert (=> b!4424489 (= e!2754875 e!2754876)))

(declare-fun res!1829072 () Bool)

(assert (=> b!4424489 (=> res!1829072 e!2754876)))

(assert (=> b!4424489 (= res!1829072 (= (h!55259 (toList!3481 lt!1623842)) lt!1623539))))

(declare-fun b!4424490 () Bool)

(assert (=> b!4424490 (= e!2754876 (contains!12078 (t!356638 (toList!3481 lt!1623842)) lt!1623539))))

(assert (= (and d!1340994 res!1829071) b!4424489))

(assert (= (and b!4424489 (not res!1829072)) b!4424490))

(declare-fun m!5104141 () Bool)

(assert (=> d!1340994 m!5104141))

(declare-fun m!5104143 () Bool)

(assert (=> d!1340994 m!5104143))

(declare-fun m!5104145 () Bool)

(assert (=> b!4424490 m!5104145))

(assert (=> b!4424344 d!1340994))

(declare-fun d!1340996 () Bool)

(assert (=> d!1340996 (= (invariantList!803 (toList!3482 lt!1623829)) (noDuplicatedKeys!173 (toList!3482 lt!1623829)))))

(declare-fun bs!756337 () Bool)

(assert (= bs!756337 d!1340996))

(declare-fun m!5104147 () Bool)

(assert (=> bs!756337 m!5104147))

(assert (=> d!1340910 d!1340996))

(declare-fun d!1340998 () Bool)

(declare-fun res!1829073 () Bool)

(declare-fun e!2754877 () Bool)

(assert (=> d!1340998 (=> res!1829073 e!2754877)))

(assert (=> d!1340998 (= res!1829073 ((_ is Nil!49576) (toList!3481 lt!1623534)))))

(assert (=> d!1340998 (= (forall!9556 (toList!3481 lt!1623534) lambda!153753) e!2754877)))

(declare-fun b!4424491 () Bool)

(declare-fun e!2754878 () Bool)

(assert (=> b!4424491 (= e!2754877 e!2754878)))

(declare-fun res!1829074 () Bool)

(assert (=> b!4424491 (=> (not res!1829074) (not e!2754878))))

(assert (=> b!4424491 (= res!1829074 (dynLambda!20842 lambda!153753 (h!55259 (toList!3481 lt!1623534))))))

(declare-fun b!4424492 () Bool)

(assert (=> b!4424492 (= e!2754878 (forall!9556 (t!356638 (toList!3481 lt!1623534)) lambda!153753))))

(assert (= (and d!1340998 (not res!1829073)) b!4424491))

(assert (= (and b!4424491 res!1829074) b!4424492))

(declare-fun b_lambda!142945 () Bool)

(assert (=> (not b_lambda!142945) (not b!4424491)))

(declare-fun m!5104149 () Bool)

(assert (=> b!4424491 m!5104149))

(declare-fun m!5104151 () Bool)

(assert (=> b!4424492 m!5104151))

(assert (=> d!1340910 d!1340998))

(declare-fun d!1341000 () Bool)

(declare-fun res!1829079 () Bool)

(declare-fun e!2754883 () Bool)

(assert (=> d!1341000 (=> res!1829079 e!2754883)))

(assert (=> d!1341000 (= res!1829079 (and ((_ is Cons!49575) (toList!3482 lt!1623543)) (= (_1!27977 (h!55258 (toList!3482 lt!1623543))) key!3717)))))

(assert (=> d!1341000 (= (containsKey!1109 (toList!3482 lt!1623543) key!3717) e!2754883)))

(declare-fun b!4424497 () Bool)

(declare-fun e!2754884 () Bool)

(assert (=> b!4424497 (= e!2754883 e!2754884)))

(declare-fun res!1829080 () Bool)

(assert (=> b!4424497 (=> (not res!1829080) (not e!2754884))))

(assert (=> b!4424497 (= res!1829080 ((_ is Cons!49575) (toList!3482 lt!1623543)))))

(declare-fun b!4424498 () Bool)

(assert (=> b!4424498 (= e!2754884 (containsKey!1109 (t!356637 (toList!3482 lt!1623543)) key!3717))))

(assert (= (and d!1341000 (not res!1829079)) b!4424497))

(assert (= (and b!4424497 res!1829080) b!4424498))

(declare-fun m!5104153 () Bool)

(assert (=> b!4424498 m!5104153))

(assert (=> d!1340950 d!1341000))

(declare-fun d!1341002 () Bool)

(declare-fun res!1829085 () Bool)

(declare-fun e!2754889 () Bool)

(assert (=> d!1341002 (=> res!1829085 e!2754889)))

(assert (=> d!1341002 (= res!1829085 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341002 (= (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153694) e!2754889)))

(declare-fun b!4424503 () Bool)

(declare-fun e!2754890 () Bool)

(assert (=> b!4424503 (= e!2754889 e!2754890)))

(declare-fun res!1829086 () Bool)

(assert (=> b!4424503 (=> (not res!1829086) (not e!2754890))))

(declare-fun dynLambda!20843 (Int tuple2!49366) Bool)

(assert (=> b!4424503 (= res!1829086 (dynLambda!20843 lambda!153694 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4424504 () Bool)

(assert (=> b!4424504 (= e!2754890 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153694))))

(assert (= (and d!1341002 (not res!1829085)) b!4424503))

(assert (= (and b!4424503 res!1829086) b!4424504))

(declare-fun b_lambda!142947 () Bool)

(assert (=> (not b_lambda!142947) (not b!4424503)))

(declare-fun m!5104155 () Bool)

(assert (=> b!4424503 m!5104155))

(declare-fun m!5104157 () Bool)

(assert (=> b!4424504 m!5104157))

(assert (=> d!1340812 d!1341002))

(declare-fun d!1341004 () Bool)

(declare-fun res!1829087 () Bool)

(declare-fun e!2754891 () Bool)

(assert (=> d!1341004 (=> res!1829087 e!2754891)))

(assert (=> d!1341004 (= res!1829087 (not ((_ is Cons!49575) (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341004 (= (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616)))) e!2754891)))

(declare-fun b!4424505 () Bool)

(declare-fun e!2754892 () Bool)

(assert (=> b!4424505 (= e!2754891 e!2754892)))

(declare-fun res!1829088 () Bool)

(assert (=> b!4424505 (=> (not res!1829088) (not e!2754892))))

(assert (=> b!4424505 (= res!1829088 (not (containsKey!1106 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424506 () Bool)

(assert (=> b!4424506 (= e!2754892 (noDuplicateKeys!747 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (= (and d!1341004 (not res!1829087)) b!4424505))

(assert (= (and b!4424505 res!1829088) b!4424506))

(declare-fun m!5104159 () Bool)

(assert (=> b!4424505 m!5104159))

(declare-fun m!5104161 () Bool)

(assert (=> b!4424506 m!5104161))

(assert (=> d!1340812 d!1341004))

(declare-fun d!1341006 () Bool)

(declare-fun lt!1623970 () Bool)

(assert (=> d!1341006 (= lt!1623970 (select (content!7954 (toList!3481 lt!1623878)) lt!1623539))))

(declare-fun e!2754893 () Bool)

(assert (=> d!1341006 (= lt!1623970 e!2754893)))

(declare-fun res!1829089 () Bool)

(assert (=> d!1341006 (=> (not res!1829089) (not e!2754893))))

(assert (=> d!1341006 (= res!1829089 ((_ is Cons!49576) (toList!3481 lt!1623878)))))

(assert (=> d!1341006 (= (contains!12078 (toList!3481 lt!1623878) lt!1623539) lt!1623970)))

(declare-fun b!4424507 () Bool)

(declare-fun e!2754894 () Bool)

(assert (=> b!4424507 (= e!2754893 e!2754894)))

(declare-fun res!1829090 () Bool)

(assert (=> b!4424507 (=> res!1829090 e!2754894)))

(assert (=> b!4424507 (= res!1829090 (= (h!55259 (toList!3481 lt!1623878)) lt!1623539))))

(declare-fun b!4424508 () Bool)

(assert (=> b!4424508 (= e!2754894 (contains!12078 (t!356638 (toList!3481 lt!1623878)) lt!1623539))))

(assert (= (and d!1341006 res!1829089) b!4424507))

(assert (= (and b!4424507 (not res!1829090)) b!4424508))

(declare-fun m!5104163 () Bool)

(assert (=> d!1341006 m!5104163))

(declare-fun m!5104165 () Bool)

(assert (=> d!1341006 m!5104165))

(declare-fun m!5104167 () Bool)

(assert (=> b!4424508 m!5104167))

(assert (=> b!4424387 d!1341006))

(declare-fun d!1341010 () Bool)

(assert (=> d!1341010 (= (invariantList!803 (toList!3482 lt!1623685)) (noDuplicatedKeys!173 (toList!3482 lt!1623685)))))

(declare-fun bs!756339 () Bool)

(assert (= bs!756339 d!1341010))

(declare-fun m!5104169 () Bool)

(assert (=> bs!756339 m!5104169))

(assert (=> b!4424244 d!1341010))

(declare-fun d!1341012 () Bool)

(declare-fun res!1829091 () Bool)

(declare-fun e!2754896 () Bool)

(assert (=> d!1341012 (=> res!1829091 e!2754896)))

(assert (=> d!1341012 (= res!1829091 ((_ is Nil!49575) (toList!3482 lt!1623532)))))

(assert (=> d!1341012 (= (forall!9557 (toList!3482 lt!1623532) lambda!153742) e!2754896)))

(declare-fun b!4424511 () Bool)

(declare-fun e!2754897 () Bool)

(assert (=> b!4424511 (= e!2754896 e!2754897)))

(declare-fun res!1829092 () Bool)

(assert (=> b!4424511 (=> (not res!1829092) (not e!2754897))))

(assert (=> b!4424511 (= res!1829092 (dynLambda!20843 lambda!153742 (h!55258 (toList!3482 lt!1623532))))))

(declare-fun b!4424512 () Bool)

(assert (=> b!4424512 (= e!2754897 (forall!9557 (t!356637 (toList!3482 lt!1623532)) lambda!153742))))

(assert (= (and d!1341012 (not res!1829091)) b!4424511))

(assert (= (and b!4424511 res!1829092) b!4424512))

(declare-fun b_lambda!142949 () Bool)

(assert (=> (not b_lambda!142949) (not b!4424511)))

(declare-fun m!5104171 () Bool)

(assert (=> b!4424511 m!5104171))

(declare-fun m!5104173 () Bool)

(assert (=> b!4424512 m!5104173))

(assert (=> b!4424303 d!1341012))

(declare-fun d!1341014 () Bool)

(declare-fun isEmpty!28345 (Option!10721) Bool)

(assert (=> d!1341014 (= (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717)) (not (isEmpty!28345 (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))))

(declare-fun bs!756343 () Bool)

(assert (= bs!756343 d!1341014))

(assert (=> bs!756343 m!5103901))

(declare-fun m!5104175 () Bool)

(assert (=> bs!756343 m!5104175))

(assert (=> b!4424374 d!1341014))

(declare-fun b!4424521 () Bool)

(declare-fun e!2754902 () Option!10721)

(assert (=> b!4424521 (= e!2754902 (Some!10720 (_2!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun b!4424523 () Bool)

(declare-fun e!2754903 () Option!10721)

(assert (=> b!4424523 (= e!2754903 (getValueByKey!707 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717))))

(declare-fun d!1341016 () Bool)

(declare-fun c!753131 () Bool)

(assert (=> d!1341016 (= c!753131 (and ((_ is Cons!49575) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) key!3717)))))

(assert (=> d!1341016 (= (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) e!2754902)))

(declare-fun b!4424524 () Bool)

(assert (=> b!4424524 (= e!2754903 None!10720)))

(declare-fun b!4424522 () Bool)

(assert (=> b!4424522 (= e!2754902 e!2754903)))

(declare-fun c!753132 () Bool)

(assert (=> b!4424522 (= c!753132 (and ((_ is Cons!49575) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (not (= (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) key!3717))))))

(assert (= (and d!1341016 c!753131) b!4424521))

(assert (= (and d!1341016 (not c!753131)) b!4424522))

(assert (= (and b!4424522 c!753132) b!4424523))

(assert (= (and b!4424522 (not c!753132)) b!4424524))

(declare-fun m!5104185 () Bool)

(assert (=> b!4424523 m!5104185))

(assert (=> b!4424374 d!1341016))

(declare-fun bs!756351 () Bool)

(declare-fun b!4424529 () Bool)

(assert (= bs!756351 (and b!4424529 b!4424468)))

(declare-fun lambda!153785 () Int)

(assert (=> bs!756351 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153785 lambda!153776))))

(declare-fun bs!756352 () Bool)

(assert (= bs!756352 (and b!4424529 b!4424471)))

(assert (=> bs!756352 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153785 lambda!153775))))

(declare-fun bs!756353 () Bool)

(assert (= bs!756353 (and b!4424529 b!4424304)))

(assert (=> bs!756353 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623791) (= lambda!153785 lambda!153742))))

(assert (=> bs!756351 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623954) (= lambda!153785 lambda!153777))))

(declare-fun bs!756354 () Bool)

(assert (= bs!756354 (and b!4424529 b!4424307)))

(assert (=> bs!756354 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623532) (= lambda!153785 lambda!153740))))

(declare-fun bs!756355 () Bool)

(assert (= bs!756355 (and b!4424529 b!4424242)))

(assert (=> bs!756355 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623689) (= lambda!153785 lambda!153691))))

(assert (=> bs!756355 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623538) (= lambda!153785 lambda!153690))))

(declare-fun bs!756356 () Bool)

(assert (= bs!756356 (and b!4424529 d!1340812)))

(assert (=> bs!756356 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623685) (= lambda!153785 lambda!153694))))

(declare-fun bs!756357 () Bool)

(assert (= bs!756357 (and b!4424529 d!1340894)))

(assert (=> bs!756357 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623787) (= lambda!153785 lambda!153743))))

(assert (=> bs!756353 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623532) (= lambda!153785 lambda!153741))))

(declare-fun bs!756358 () Bool)

(assert (= bs!756358 (and b!4424529 d!1340882)))

(assert (=> bs!756358 (not (= lambda!153785 lambda!153732))))

(declare-fun bs!756359 () Bool)

(assert (= bs!756359 (and b!4424529 d!1340982)))

(assert (=> bs!756359 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623950) (= lambda!153785 lambda!153778))))

(declare-fun bs!756360 () Bool)

(assert (= bs!756360 (and b!4424529 b!4424245)))

(assert (=> bs!756360 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623538) (= lambda!153785 lambda!153689))))

(assert (=> b!4424529 true))

(declare-fun bs!756361 () Bool)

(declare-fun b!4424526 () Bool)

(assert (= bs!756361 (and b!4424526 b!4424468)))

(declare-fun lambda!153786 () Int)

(assert (=> bs!756361 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153786 lambda!153776))))

(declare-fun bs!756362 () Bool)

(assert (= bs!756362 (and b!4424526 b!4424471)))

(assert (=> bs!756362 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153786 lambda!153775))))

(declare-fun bs!756363 () Bool)

(assert (= bs!756363 (and b!4424526 b!4424304)))

(assert (=> bs!756363 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623791) (= lambda!153786 lambda!153742))))

(assert (=> bs!756361 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623954) (= lambda!153786 lambda!153777))))

(declare-fun bs!756364 () Bool)

(assert (= bs!756364 (and b!4424526 b!4424529)))

(assert (=> bs!756364 (= lambda!153786 lambda!153785)))

(declare-fun bs!756365 () Bool)

(assert (= bs!756365 (and b!4424526 b!4424307)))

(assert (=> bs!756365 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623532) (= lambda!153786 lambda!153740))))

(declare-fun bs!756366 () Bool)

(assert (= bs!756366 (and b!4424526 b!4424242)))

(assert (=> bs!756366 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623689) (= lambda!153786 lambda!153691))))

(assert (=> bs!756366 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623538) (= lambda!153786 lambda!153690))))

(declare-fun bs!756367 () Bool)

(assert (= bs!756367 (and b!4424526 d!1340812)))

(assert (=> bs!756367 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623685) (= lambda!153786 lambda!153694))))

(declare-fun bs!756368 () Bool)

(assert (= bs!756368 (and b!4424526 d!1340894)))

(assert (=> bs!756368 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623787) (= lambda!153786 lambda!153743))))

(assert (=> bs!756363 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623532) (= lambda!153786 lambda!153741))))

(declare-fun bs!756369 () Bool)

(assert (= bs!756369 (and b!4424526 d!1340882)))

(assert (=> bs!756369 (not (= lambda!153786 lambda!153732))))

(declare-fun bs!756370 () Bool)

(assert (= bs!756370 (and b!4424526 d!1340982)))

(assert (=> bs!756370 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623950) (= lambda!153786 lambda!153778))))

(declare-fun bs!756371 () Bool)

(assert (= bs!756371 (and b!4424526 b!4424245)))

(assert (=> bs!756371 (= (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623538) (= lambda!153786 lambda!153689))))

(assert (=> b!4424526 true))

(declare-fun lambda!153787 () Int)

(declare-fun lt!1623988 () ListMap!2725)

(assert (=> bs!756361 (= (= lt!1623988 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153787 lambda!153776))))

(assert (=> bs!756362 (= (= lt!1623988 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153787 lambda!153775))))

(assert (=> bs!756363 (= (= lt!1623988 lt!1623791) (= lambda!153787 lambda!153742))))

(assert (=> b!4424526 (= (= lt!1623988 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153787 lambda!153786))))

(assert (=> bs!756361 (= (= lt!1623988 lt!1623954) (= lambda!153787 lambda!153777))))

(assert (=> bs!756364 (= (= lt!1623988 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153787 lambda!153785))))

(assert (=> bs!756365 (= (= lt!1623988 lt!1623532) (= lambda!153787 lambda!153740))))

(assert (=> bs!756366 (= (= lt!1623988 lt!1623689) (= lambda!153787 lambda!153691))))

(assert (=> bs!756366 (= (= lt!1623988 lt!1623538) (= lambda!153787 lambda!153690))))

(assert (=> bs!756367 (= (= lt!1623988 lt!1623685) (= lambda!153787 lambda!153694))))

(assert (=> bs!756368 (= (= lt!1623988 lt!1623787) (= lambda!153787 lambda!153743))))

(assert (=> bs!756363 (= (= lt!1623988 lt!1623532) (= lambda!153787 lambda!153741))))

(assert (=> bs!756369 (not (= lambda!153787 lambda!153732))))

(assert (=> bs!756370 (= (= lt!1623988 lt!1623950) (= lambda!153787 lambda!153778))))

(assert (=> bs!756371 (= (= lt!1623988 lt!1623538) (= lambda!153787 lambda!153689))))

(assert (=> b!4424526 true))

(declare-fun bs!756372 () Bool)

(declare-fun d!1341020 () Bool)

(assert (= bs!756372 (and d!1341020 b!4424468)))

(declare-fun lambda!153788 () Int)

(declare-fun lt!1623984 () ListMap!2725)

(assert (=> bs!756372 (= (= lt!1623984 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153788 lambda!153776))))

(declare-fun bs!756373 () Bool)

(assert (= bs!756373 (and d!1341020 b!4424471)))

(assert (=> bs!756373 (= (= lt!1623984 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153788 lambda!153775))))

(declare-fun bs!756374 () Bool)

(assert (= bs!756374 (and d!1341020 b!4424304)))

(assert (=> bs!756374 (= (= lt!1623984 lt!1623791) (= lambda!153788 lambda!153742))))

(declare-fun bs!756375 () Bool)

(assert (= bs!756375 (and d!1341020 b!4424526)))

(assert (=> bs!756375 (= (= lt!1623984 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153788 lambda!153786))))

(assert (=> bs!756375 (= (= lt!1623984 lt!1623988) (= lambda!153788 lambda!153787))))

(assert (=> bs!756372 (= (= lt!1623984 lt!1623954) (= lambda!153788 lambda!153777))))

(declare-fun bs!756376 () Bool)

(assert (= bs!756376 (and d!1341020 b!4424529)))

(assert (=> bs!756376 (= (= lt!1623984 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153788 lambda!153785))))

(declare-fun bs!756377 () Bool)

(assert (= bs!756377 (and d!1341020 b!4424307)))

(assert (=> bs!756377 (= (= lt!1623984 lt!1623532) (= lambda!153788 lambda!153740))))

(declare-fun bs!756378 () Bool)

(assert (= bs!756378 (and d!1341020 b!4424242)))

(assert (=> bs!756378 (= (= lt!1623984 lt!1623689) (= lambda!153788 lambda!153691))))

(assert (=> bs!756378 (= (= lt!1623984 lt!1623538) (= lambda!153788 lambda!153690))))

(declare-fun bs!756379 () Bool)

(assert (= bs!756379 (and d!1341020 d!1340812)))

(assert (=> bs!756379 (= (= lt!1623984 lt!1623685) (= lambda!153788 lambda!153694))))

(declare-fun bs!756380 () Bool)

(assert (= bs!756380 (and d!1341020 d!1340894)))

(assert (=> bs!756380 (= (= lt!1623984 lt!1623787) (= lambda!153788 lambda!153743))))

(assert (=> bs!756374 (= (= lt!1623984 lt!1623532) (= lambda!153788 lambda!153741))))

(declare-fun bs!756381 () Bool)

(assert (= bs!756381 (and d!1341020 d!1340882)))

(assert (=> bs!756381 (not (= lambda!153788 lambda!153732))))

(declare-fun bs!756382 () Bool)

(assert (= bs!756382 (and d!1341020 d!1340982)))

(assert (=> bs!756382 (= (= lt!1623984 lt!1623950) (= lambda!153788 lambda!153778))))

(declare-fun bs!756383 () Bool)

(assert (= bs!756383 (and d!1341020 b!4424245)))

(assert (=> bs!756383 (= (= lt!1623984 lt!1623538) (= lambda!153788 lambda!153689))))

(assert (=> d!1341020 true))

(declare-fun b!4424525 () Bool)

(declare-fun e!2754906 () Bool)

(assert (=> b!4424525 (= e!2754906 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) lambda!153787))))

(declare-fun e!2754905 () ListMap!2725)

(assert (=> b!4424526 (= e!2754905 lt!1623988)))

(declare-fun lt!1623992 () ListMap!2725)

(assert (=> b!4424526 (= lt!1623992 (+!1079 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))))

(assert (=> b!4424526 (= lt!1623988 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (+!1079 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))))

(declare-fun lt!1623975 () Unit!81703)

(declare-fun call!307822 () Unit!81703)

(assert (=> b!4424526 (= lt!1623975 call!307822)))

(declare-fun call!307824 () Bool)

(assert (=> b!4424526 call!307824))

(declare-fun lt!1623990 () Unit!81703)

(assert (=> b!4424526 (= lt!1623990 lt!1623975)))

(assert (=> b!4424526 (forall!9557 (toList!3482 lt!1623992) lambda!153787)))

(declare-fun lt!1623987 () Unit!81703)

(declare-fun Unit!81793 () Unit!81703)

(assert (=> b!4424526 (= lt!1623987 Unit!81793)))

(assert (=> b!4424526 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) lambda!153787)))

(declare-fun lt!1623972 () Unit!81703)

(declare-fun Unit!81794 () Unit!81703)

(assert (=> b!4424526 (= lt!1623972 Unit!81794)))

(declare-fun lt!1623974 () Unit!81703)

(declare-fun Unit!81795 () Unit!81703)

(assert (=> b!4424526 (= lt!1623974 Unit!81795)))

(declare-fun lt!1623977 () Unit!81703)

(assert (=> b!4424526 (= lt!1623977 (forallContained!2088 (toList!3482 lt!1623992) lambda!153787 (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))))

(assert (=> b!4424526 (contains!12073 lt!1623992 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))))

(declare-fun lt!1623978 () Unit!81703)

(declare-fun Unit!81796 () Unit!81703)

(assert (=> b!4424526 (= lt!1623978 Unit!81796)))

(assert (=> b!4424526 (contains!12073 lt!1623988 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))))

(declare-fun lt!1623973 () Unit!81703)

(declare-fun Unit!81797 () Unit!81703)

(assert (=> b!4424526 (= lt!1623973 Unit!81797)))

(assert (=> b!4424526 (forall!9557 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lambda!153787)))

(declare-fun lt!1623983 () Unit!81703)

(declare-fun Unit!81798 () Unit!81703)

(assert (=> b!4424526 (= lt!1623983 Unit!81798)))

(assert (=> b!4424526 (forall!9557 (toList!3482 lt!1623992) lambda!153787)))

(declare-fun lt!1623991 () Unit!81703)

(declare-fun Unit!81799 () Unit!81703)

(assert (=> b!4424526 (= lt!1623991 Unit!81799)))

(declare-fun lt!1623989 () Unit!81703)

(declare-fun Unit!81800 () Unit!81703)

(assert (=> b!4424526 (= lt!1623989 Unit!81800)))

(declare-fun lt!1623980 () Unit!81703)

(assert (=> b!4424526 (= lt!1623980 (addForallContainsKeyThenBeforeAdding!170 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623988 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))))

(declare-fun call!307823 () Bool)

(assert (=> b!4424526 call!307823))

(declare-fun lt!1623986 () Unit!81703)

(assert (=> b!4424526 (= lt!1623986 lt!1623980)))

(assert (=> b!4424526 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) lambda!153787)))

(declare-fun lt!1623981 () Unit!81703)

(declare-fun Unit!81801 () Unit!81703)

(assert (=> b!4424526 (= lt!1623981 Unit!81801)))

(declare-fun res!1829095 () Bool)

(assert (=> b!4424526 (= res!1829095 (forall!9557 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lambda!153787))))

(assert (=> b!4424526 (=> (not res!1829095) (not e!2754906))))

(assert (=> b!4424526 e!2754906))

(declare-fun lt!1623982 () Unit!81703)

(declare-fun Unit!81802 () Unit!81703)

(assert (=> b!4424526 (= lt!1623982 Unit!81802)))

(declare-fun e!2754904 () Bool)

(assert (=> d!1341020 e!2754904))

(declare-fun res!1829094 () Bool)

(assert (=> d!1341020 (=> (not res!1829094) (not e!2754904))))

(assert (=> d!1341020 (= res!1829094 (forall!9557 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lambda!153788))))

(assert (=> d!1341020 (= lt!1623984 e!2754905)))

(declare-fun c!753133 () Bool)

(assert (=> d!1341020 (= c!753133 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))

(assert (=> d!1341020 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))

(assert (=> d!1341020 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) lt!1623984)))

(declare-fun bm!307817 () Bool)

(assert (=> bm!307817 (= call!307823 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (ite c!753133 lambda!153785 lambda!153787)))))

(declare-fun bm!307818 () Bool)

(assert (=> bm!307818 (= call!307824 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (ite c!753133 lambda!153785 lambda!153786)))))

(declare-fun b!4424527 () Bool)

(declare-fun res!1829093 () Bool)

(assert (=> b!4424527 (=> (not res!1829093) (not e!2754904))))

(assert (=> b!4424527 (= res!1829093 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) lambda!153788))))

(declare-fun bm!307819 () Bool)

(assert (=> bm!307819 (= call!307822 (lemmaContainsAllItsOwnKeys!170 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))

(declare-fun b!4424528 () Bool)

(assert (=> b!4424528 (= e!2754904 (invariantList!803 (toList!3482 lt!1623984)))))

(assert (=> b!4424529 (= e!2754905 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))

(declare-fun lt!1623979 () Unit!81703)

(assert (=> b!4424529 (= lt!1623979 call!307822)))

(assert (=> b!4424529 call!307824))

(declare-fun lt!1623976 () Unit!81703)

(assert (=> b!4424529 (= lt!1623976 lt!1623979)))

(assert (=> b!4424529 call!307823))

(declare-fun lt!1623985 () Unit!81703)

(declare-fun Unit!81804 () Unit!81703)

(assert (=> b!4424529 (= lt!1623985 Unit!81804)))

(assert (= (and d!1341020 c!753133) b!4424529))

(assert (= (and d!1341020 (not c!753133)) b!4424526))

(assert (= (and b!4424526 res!1829095) b!4424525))

(assert (= (or b!4424529 b!4424526) bm!307819))

(assert (= (or b!4424529 b!4424526) bm!307818))

(assert (= (or b!4424529 b!4424526) bm!307817))

(assert (= (and d!1341020 res!1829094) b!4424527))

(assert (= (and b!4424527 res!1829093) b!4424528))

(declare-fun m!5104195 () Bool)

(assert (=> d!1341020 m!5104195))

(declare-fun m!5104197 () Bool)

(assert (=> d!1341020 m!5104197))

(declare-fun m!5104199 () Bool)

(assert (=> bm!307818 m!5104199))

(declare-fun m!5104201 () Bool)

(assert (=> b!4424525 m!5104201))

(declare-fun m!5104203 () Bool)

(assert (=> b!4424528 m!5104203))

(assert (=> bm!307819 m!5103885))

(declare-fun m!5104205 () Bool)

(assert (=> bm!307819 m!5104205))

(declare-fun m!5104207 () Bool)

(assert (=> b!4424527 m!5104207))

(declare-fun m!5104211 () Bool)

(assert (=> bm!307817 m!5104211))

(declare-fun m!5104213 () Bool)

(assert (=> b!4424526 m!5104213))

(declare-fun m!5104217 () Bool)

(assert (=> b!4424526 m!5104217))

(declare-fun m!5104219 () Bool)

(assert (=> b!4424526 m!5104219))

(assert (=> b!4424526 m!5103885))

(declare-fun m!5104223 () Bool)

(assert (=> b!4424526 m!5104223))

(assert (=> b!4424526 m!5104217))

(assert (=> b!4424526 m!5104201))

(assert (=> b!4424526 m!5104213))

(assert (=> b!4424526 m!5103885))

(declare-fun m!5104229 () Bool)

(assert (=> b!4424526 m!5104229))

(declare-fun m!5104233 () Bool)

(assert (=> b!4424526 m!5104233))

(assert (=> b!4424526 m!5104223))

(declare-fun m!5104235 () Bool)

(assert (=> b!4424526 m!5104235))

(declare-fun m!5104237 () Bool)

(assert (=> b!4424526 m!5104237))

(declare-fun m!5104239 () Bool)

(assert (=> b!4424526 m!5104239))

(assert (=> b!4424347 d!1341020))

(declare-fun bs!756384 () Bool)

(declare-fun d!1341030 () Bool)

(assert (= bs!756384 (and d!1341030 d!1340910)))

(declare-fun lambda!153789 () Int)

(assert (=> bs!756384 (= lambda!153789 lambda!153753)))

(declare-fun bs!756385 () Bool)

(assert (= bs!756385 (and d!1341030 d!1340952)))

(assert (=> bs!756385 (= lambda!153789 lambda!153759)))

(declare-fun bs!756386 () Bool)

(assert (= bs!756386 (and d!1341030 d!1340890)))

(assert (=> bs!756386 (not (= lambda!153789 lambda!153739))))

(declare-fun bs!756387 () Bool)

(assert (= bs!756387 (and d!1341030 d!1340986)))

(assert (=> bs!756387 (= lambda!153789 lambda!153779)))

(declare-fun bs!756388 () Bool)

(assert (= bs!756388 (and d!1341030 d!1340922)))

(assert (=> bs!756388 (= lambda!153789 lambda!153754)))

(declare-fun bs!756389 () Bool)

(assert (= bs!756389 (and d!1341030 d!1340906)))

(assert (=> bs!756389 (= lambda!153789 lambda!153750)))

(declare-fun bs!756390 () Bool)

(assert (= bs!756390 (and d!1341030 d!1340954)))

(assert (=> bs!756390 (= lambda!153789 lambda!153762)))

(declare-fun bs!756391 () Bool)

(assert (= bs!756391 (and d!1341030 start!431492)))

(assert (=> bs!756391 (= lambda!153789 lambda!153648)))

(declare-fun bs!756392 () Bool)

(assert (= bs!756392 (and d!1341030 d!1340942)))

(assert (=> bs!756392 (= lambda!153789 lambda!153758)))

(declare-fun bs!756393 () Bool)

(assert (= bs!756393 (and d!1341030 d!1340930)))

(assert (=> bs!756393 (= lambda!153789 lambda!153755)))

(declare-fun lt!1623997 () ListMap!2725)

(assert (=> d!1341030 (invariantList!803 (toList!3482 lt!1623997))))

(declare-fun e!2754916 () ListMap!2725)

(assert (=> d!1341030 (= lt!1623997 e!2754916)))

(declare-fun c!753140 () Bool)

(assert (=> d!1341030 (= c!753140 ((_ is Cons!49576) (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))

(assert (=> d!1341030 (forall!9556 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))) lambda!153789)))

(assert (=> d!1341030 (= (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) lt!1623997)))

(declare-fun b!4424546 () Bool)

(assert (=> b!4424546 (= e!2754916 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (extractMap!808 (t!356638 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539)))))))))

(declare-fun b!4424547 () Bool)

(assert (=> b!4424547 (= e!2754916 (ListMap!2726 Nil!49575))))

(assert (= (and d!1341030 c!753140) b!4424546))

(assert (= (and d!1341030 (not c!753140)) b!4424547))

(declare-fun m!5104241 () Bool)

(assert (=> d!1341030 m!5104241))

(declare-fun m!5104243 () Bool)

(assert (=> d!1341030 m!5104243))

(declare-fun m!5104245 () Bool)

(assert (=> b!4424546 m!5104245))

(assert (=> b!4424546 m!5104245))

(declare-fun m!5104247 () Bool)

(assert (=> b!4424546 m!5104247))

(assert (=> b!4424347 d!1341030))

(declare-fun d!1341032 () Bool)

(assert (=> d!1341032 (isDefined!8014 (getValueByKey!708 (toList!3481 lm!1616) hash!366))))

(declare-fun lt!1624000 () Unit!81703)

(declare-fun choose!27923 (List!49700 (_ BitVec 64)) Unit!81703)

(assert (=> d!1341032 (= lt!1624000 (choose!27923 (toList!3481 lm!1616) hash!366))))

(declare-fun e!2754919 () Bool)

(assert (=> d!1341032 e!2754919))

(declare-fun res!1829102 () Bool)

(assert (=> d!1341032 (=> (not res!1829102) (not e!2754919))))

(assert (=> d!1341032 (= res!1829102 (isStrictlySorted!230 (toList!3481 lm!1616)))))

(assert (=> d!1341032 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!617 (toList!3481 lm!1616) hash!366) lt!1624000)))

(declare-fun b!4424551 () Bool)

(assert (=> b!4424551 (= e!2754919 (containsKey!1110 (toList!3481 lm!1616) hash!366))))

(assert (= (and d!1341032 res!1829102) b!4424551))

(assert (=> d!1341032 m!5103703))

(assert (=> d!1341032 m!5103703))

(assert (=> d!1341032 m!5103983))

(declare-fun m!5104249 () Bool)

(assert (=> d!1341032 m!5104249))

(assert (=> d!1341032 m!5103985))

(assert (=> b!4424551 m!5103979))

(assert (=> b!4424409 d!1341032))

(declare-fun d!1341034 () Bool)

(declare-fun isEmpty!28346 (Option!10722) Bool)

(assert (=> d!1341034 (= (isDefined!8014 (getValueByKey!708 (toList!3481 lm!1616) hash!366)) (not (isEmpty!28346 (getValueByKey!708 (toList!3481 lm!1616) hash!366))))))

(declare-fun bs!756394 () Bool)

(assert (= bs!756394 d!1341034))

(assert (=> bs!756394 m!5103703))

(declare-fun m!5104251 () Bool)

(assert (=> bs!756394 m!5104251))

(assert (=> b!4424409 d!1341034))

(declare-fun b!4424565 () Bool)

(declare-fun e!2754927 () Option!10722)

(assert (=> b!4424565 (= e!2754927 (Some!10721 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun d!1341036 () Bool)

(declare-fun c!753146 () Bool)

(assert (=> d!1341036 (= c!753146 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)))))

(assert (=> d!1341036 (= (getValueByKey!708 (toList!3481 lm!1616) hash!366) e!2754927)))

(declare-fun b!4424566 () Bool)

(declare-fun e!2754928 () Option!10722)

(assert (=> b!4424566 (= e!2754927 e!2754928)))

(declare-fun c!753147 () Bool)

(assert (=> b!4424566 (= c!753147 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (not (= (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366))))))

(declare-fun b!4424568 () Bool)

(assert (=> b!4424568 (= e!2754928 None!10721)))

(declare-fun b!4424567 () Bool)

(assert (=> b!4424567 (= e!2754928 (getValueByKey!708 (t!356638 (toList!3481 lm!1616)) hash!366))))

(assert (= (and d!1341036 c!753146) b!4424565))

(assert (= (and d!1341036 (not c!753146)) b!4424566))

(assert (= (and b!4424566 c!753147) b!4424567))

(assert (= (and b!4424566 (not c!753147)) b!4424568))

(declare-fun m!5104253 () Bool)

(assert (=> b!4424567 m!5104253))

(assert (=> b!4424409 d!1341036))

(declare-fun d!1341040 () Bool)

(assert (=> d!1341040 (= (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623543) key!3717)) (not (isEmpty!28345 (getValueByKey!707 (toList!3482 lt!1623543) key!3717))))))

(declare-fun bs!756403 () Bool)

(assert (= bs!756403 d!1341040))

(assert (=> bs!756403 m!5103957))

(declare-fun m!5104255 () Bool)

(assert (=> bs!756403 m!5104255))

(assert (=> b!4424399 d!1341040))

(declare-fun b!4424569 () Bool)

(declare-fun e!2754929 () Option!10721)

(assert (=> b!4424569 (= e!2754929 (Some!10720 (_2!27977 (h!55258 (toList!3482 lt!1623543)))))))

(declare-fun b!4424571 () Bool)

(declare-fun e!2754930 () Option!10721)

(assert (=> b!4424571 (= e!2754930 (getValueByKey!707 (t!356637 (toList!3482 lt!1623543)) key!3717))))

(declare-fun d!1341042 () Bool)

(declare-fun c!753148 () Bool)

(assert (=> d!1341042 (= c!753148 (and ((_ is Cons!49575) (toList!3482 lt!1623543)) (= (_1!27977 (h!55258 (toList!3482 lt!1623543))) key!3717)))))

(assert (=> d!1341042 (= (getValueByKey!707 (toList!3482 lt!1623543) key!3717) e!2754929)))

(declare-fun b!4424572 () Bool)

(assert (=> b!4424572 (= e!2754930 None!10720)))

(declare-fun b!4424570 () Bool)

(assert (=> b!4424570 (= e!2754929 e!2754930)))

(declare-fun c!753149 () Bool)

(assert (=> b!4424570 (= c!753149 (and ((_ is Cons!49575) (toList!3482 lt!1623543)) (not (= (_1!27977 (h!55258 (toList!3482 lt!1623543))) key!3717))))))

(assert (= (and d!1341042 c!753148) b!4424569))

(assert (= (and d!1341042 (not c!753148)) b!4424570))

(assert (= (and b!4424570 c!753149) b!4424571))

(assert (= (and b!4424570 (not c!753149)) b!4424572))

(declare-fun m!5104257 () Bool)

(assert (=> b!4424571 m!5104257))

(assert (=> b!4424399 d!1341042))

(declare-fun d!1341044 () Bool)

(declare-fun res!1829106 () Bool)

(declare-fun e!2754931 () Bool)

(assert (=> d!1341044 (=> res!1829106 e!2754931)))

(assert (=> d!1341044 (= res!1829106 (not ((_ is Cons!49575) (t!356637 newBucket!194))))))

(assert (=> d!1341044 (= (noDuplicateKeys!747 (t!356637 newBucket!194)) e!2754931)))

(declare-fun b!4424573 () Bool)

(declare-fun e!2754932 () Bool)

(assert (=> b!4424573 (= e!2754931 e!2754932)))

(declare-fun res!1829107 () Bool)

(assert (=> b!4424573 (=> (not res!1829107) (not e!2754932))))

(assert (=> b!4424573 (= res!1829107 (not (containsKey!1106 (t!356637 (t!356637 newBucket!194)) (_1!27977 (h!55258 (t!356637 newBucket!194))))))))

(declare-fun b!4424574 () Bool)

(assert (=> b!4424574 (= e!2754932 (noDuplicateKeys!747 (t!356637 (t!356637 newBucket!194))))))

(assert (= (and d!1341044 (not res!1829106)) b!4424573))

(assert (= (and b!4424573 res!1829107) b!4424574))

(declare-fun m!5104259 () Bool)

(assert (=> b!4424573 m!5104259))

(declare-fun m!5104261 () Bool)

(assert (=> b!4424574 m!5104261))

(assert (=> b!4424290 d!1341044))

(assert (=> d!1340920 d!1340932))

(declare-fun d!1341046 () Bool)

(declare-fun e!2754933 () Bool)

(assert (=> d!1341046 e!2754933))

(declare-fun res!1829108 () Bool)

(assert (=> d!1341046 (=> (not res!1829108) (not e!2754933))))

(declare-fun lt!1624024 () ListMap!2725)

(assert (=> d!1341046 (= res!1829108 (contains!12073 lt!1624024 (_1!27977 (tuple2!49367 key!3717 newValue!93))))))

(declare-fun lt!1624025 () List!49699)

(assert (=> d!1341046 (= lt!1624024 (ListMap!2726 lt!1624025))))

(declare-fun lt!1624023 () Unit!81703)

(declare-fun lt!1624022 () Unit!81703)

(assert (=> d!1341046 (= lt!1624023 lt!1624022)))

(assert (=> d!1341046 (= (getValueByKey!707 lt!1624025 (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341046 (= lt!1624022 (lemmaContainsTupThenGetReturnValue!442 lt!1624025 (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341046 (= lt!1624025 (insertNoDuplicatedKeys!193 (toList!3482 lt!1623532) (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341046 (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1624024)))

(declare-fun b!4424575 () Bool)

(declare-fun res!1829109 () Bool)

(assert (=> b!4424575 (=> (not res!1829109) (not e!2754933))))

(assert (=> b!4424575 (= res!1829109 (= (getValueByKey!707 (toList!3482 lt!1624024) (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93)))))))

(declare-fun b!4424576 () Bool)

(assert (=> b!4424576 (= e!2754933 (contains!12077 (toList!3482 lt!1624024) (tuple2!49367 key!3717 newValue!93)))))

(assert (= (and d!1341046 res!1829108) b!4424575))

(assert (= (and b!4424575 res!1829109) b!4424576))

(declare-fun m!5104263 () Bool)

(assert (=> d!1341046 m!5104263))

(declare-fun m!5104265 () Bool)

(assert (=> d!1341046 m!5104265))

(declare-fun m!5104267 () Bool)

(assert (=> d!1341046 m!5104267))

(declare-fun m!5104269 () Bool)

(assert (=> d!1341046 m!5104269))

(declare-fun m!5104271 () Bool)

(assert (=> b!4424575 m!5104271))

(declare-fun m!5104273 () Bool)

(assert (=> b!4424576 m!5104273))

(assert (=> d!1340862 d!1341046))

(assert (=> d!1340862 d!1340894))

(declare-fun d!1341048 () Bool)

(assert (=> d!1341048 (eq!405 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (+!1079 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) (tuple2!49367 key!3717 newValue!93)))))

(assert (=> d!1341048 true))

(declare-fun _$15!646 () Unit!81703)

(assert (=> d!1341048 (= (choose!27915 lt!1623532 key!3717 newValue!93 (_2!27978 (h!55259 (toList!3481 lm!1616)))) _$15!646)))

(declare-fun bs!756421 () Bool)

(assert (= bs!756421 d!1341048))

(assert (=> bs!756421 m!5103639))

(assert (=> bs!756421 m!5103631))

(assert (=> bs!756421 m!5103367))

(assert (=> bs!756421 m!5103631))

(assert (=> bs!756421 m!5103633))

(assert (=> bs!756421 m!5103635))

(assert (=> bs!756421 m!5103639))

(assert (=> bs!756421 m!5103367))

(assert (=> bs!756421 m!5103633))

(assert (=> d!1340862 d!1341048))

(declare-fun d!1341050 () Bool)

(assert (=> d!1341050 (= (eq!405 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (+!1079 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) (tuple2!49367 key!3717 newValue!93))) (= (content!7952 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))))) (content!7952 (toList!3482 (+!1079 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) (tuple2!49367 key!3717 newValue!93))))))))

(declare-fun bs!756422 () Bool)

(assert (= bs!756422 d!1341050))

(declare-fun m!5104275 () Bool)

(assert (=> bs!756422 m!5104275))

(declare-fun m!5104277 () Bool)

(assert (=> bs!756422 m!5104277))

(assert (=> d!1340862 d!1341050))

(declare-fun d!1341052 () Bool)

(declare-fun e!2754934 () Bool)

(assert (=> d!1341052 e!2754934))

(declare-fun res!1829110 () Bool)

(assert (=> d!1341052 (=> (not res!1829110) (not e!2754934))))

(declare-fun lt!1624028 () ListMap!2725)

(assert (=> d!1341052 (= res!1829110 (contains!12073 lt!1624028 (_1!27977 (tuple2!49367 key!3717 newValue!93))))))

(declare-fun lt!1624029 () List!49699)

(assert (=> d!1341052 (= lt!1624028 (ListMap!2726 lt!1624029))))

(declare-fun lt!1624027 () Unit!81703)

(declare-fun lt!1624026 () Unit!81703)

(assert (=> d!1341052 (= lt!1624027 lt!1624026)))

(assert (=> d!1341052 (= (getValueByKey!707 lt!1624029 (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341052 (= lt!1624026 (lemmaContainsTupThenGetReturnValue!442 lt!1624029 (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341052 (= lt!1624029 (insertNoDuplicatedKeys!193 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532)) (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341052 (= (+!1079 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623532) (tuple2!49367 key!3717 newValue!93)) lt!1624028)))

(declare-fun b!4424577 () Bool)

(declare-fun res!1829111 () Bool)

(assert (=> b!4424577 (=> (not res!1829111) (not e!2754934))))

(assert (=> b!4424577 (= res!1829111 (= (getValueByKey!707 (toList!3482 lt!1624028) (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93)))))))

(declare-fun b!4424578 () Bool)

(assert (=> b!4424578 (= e!2754934 (contains!12077 (toList!3482 lt!1624028) (tuple2!49367 key!3717 newValue!93)))))

(assert (= (and d!1341052 res!1829110) b!4424577))

(assert (= (and b!4424577 res!1829111) b!4424578))

(declare-fun m!5104287 () Bool)

(assert (=> d!1341052 m!5104287))

(declare-fun m!5104289 () Bool)

(assert (=> d!1341052 m!5104289))

(declare-fun m!5104293 () Bool)

(assert (=> d!1341052 m!5104293))

(declare-fun m!5104295 () Bool)

(assert (=> d!1341052 m!5104295))

(declare-fun m!5104297 () Bool)

(assert (=> b!4424577 m!5104297))

(declare-fun m!5104299 () Bool)

(assert (=> b!4424578 m!5104299))

(assert (=> d!1340862 d!1341052))

(assert (=> d!1340862 d!1340936))

(declare-fun bs!756423 () Bool)

(declare-fun b!4424583 () Bool)

(assert (= bs!756423 (and b!4424583 b!4424468)))

(declare-fun lambda!153794 () Int)

(assert (=> bs!756423 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153794 lambda!153776))))

(declare-fun bs!756424 () Bool)

(assert (= bs!756424 (and b!4424583 b!4424471)))

(assert (=> bs!756424 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153794 lambda!153775))))

(declare-fun bs!756425 () Bool)

(assert (= bs!756425 (and b!4424583 d!1341020)))

(assert (=> bs!756425 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623984) (= lambda!153794 lambda!153788))))

(declare-fun bs!756426 () Bool)

(assert (= bs!756426 (and b!4424583 b!4424304)))

(assert (=> bs!756426 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623791) (= lambda!153794 lambda!153742))))

(declare-fun bs!756427 () Bool)

(assert (= bs!756427 (and b!4424583 b!4424526)))

(assert (=> bs!756427 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153794 lambda!153786))))

(assert (=> bs!756427 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623988) (= lambda!153794 lambda!153787))))

(assert (=> bs!756423 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623954) (= lambda!153794 lambda!153777))))

(declare-fun bs!756428 () Bool)

(assert (= bs!756428 (and b!4424583 b!4424529)))

(assert (=> bs!756428 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153794 lambda!153785))))

(declare-fun bs!756429 () Bool)

(assert (= bs!756429 (and b!4424583 b!4424307)))

(assert (=> bs!756429 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623532) (= lambda!153794 lambda!153740))))

(declare-fun bs!756430 () Bool)

(assert (= bs!756430 (and b!4424583 b!4424242)))

(assert (=> bs!756430 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623689) (= lambda!153794 lambda!153691))))

(assert (=> bs!756430 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623538) (= lambda!153794 lambda!153690))))

(declare-fun bs!756431 () Bool)

(assert (= bs!756431 (and b!4424583 d!1340812)))

(assert (=> bs!756431 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623685) (= lambda!153794 lambda!153694))))

(declare-fun bs!756432 () Bool)

(assert (= bs!756432 (and b!4424583 d!1340894)))

(assert (=> bs!756432 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623787) (= lambda!153794 lambda!153743))))

(assert (=> bs!756426 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623532) (= lambda!153794 lambda!153741))))

(declare-fun bs!756433 () Bool)

(assert (= bs!756433 (and b!4424583 d!1340882)))

(assert (=> bs!756433 (not (= lambda!153794 lambda!153732))))

(declare-fun bs!756434 () Bool)

(assert (= bs!756434 (and b!4424583 d!1340982)))

(assert (=> bs!756434 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623950) (= lambda!153794 lambda!153778))))

(declare-fun bs!756435 () Bool)

(assert (= bs!756435 (and b!4424583 b!4424245)))

(assert (=> bs!756435 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623538) (= lambda!153794 lambda!153689))))

(assert (=> b!4424583 true))

(declare-fun bs!756438 () Bool)

(declare-fun b!4424580 () Bool)

(assert (= bs!756438 (and b!4424580 b!4424468)))

(declare-fun lambda!153796 () Int)

(assert (=> bs!756438 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153796 lambda!153776))))

(declare-fun bs!756440 () Bool)

(assert (= bs!756440 (and b!4424580 b!4424471)))

(assert (=> bs!756440 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153796 lambda!153775))))

(declare-fun bs!756441 () Bool)

(assert (= bs!756441 (and b!4424580 d!1341020)))

(assert (=> bs!756441 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623984) (= lambda!153796 lambda!153788))))

(declare-fun bs!756444 () Bool)

(assert (= bs!756444 (and b!4424580 b!4424526)))

(assert (=> bs!756444 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153796 lambda!153786))))

(assert (=> bs!756444 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623988) (= lambda!153796 lambda!153787))))

(assert (=> bs!756438 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623954) (= lambda!153796 lambda!153777))))

(declare-fun bs!756446 () Bool)

(assert (= bs!756446 (and b!4424580 b!4424529)))

(assert (=> bs!756446 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153796 lambda!153785))))

(declare-fun bs!756448 () Bool)

(assert (= bs!756448 (and b!4424580 b!4424307)))

(assert (=> bs!756448 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623532) (= lambda!153796 lambda!153740))))

(declare-fun bs!756449 () Bool)

(assert (= bs!756449 (and b!4424580 b!4424242)))

(assert (=> bs!756449 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623689) (= lambda!153796 lambda!153691))))

(assert (=> bs!756449 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623538) (= lambda!153796 lambda!153690))))

(declare-fun bs!756451 () Bool)

(assert (= bs!756451 (and b!4424580 b!4424583)))

(assert (=> bs!756451 (= lambda!153796 lambda!153794)))

(declare-fun bs!756453 () Bool)

(assert (= bs!756453 (and b!4424580 b!4424304)))

(assert (=> bs!756453 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623791) (= lambda!153796 lambda!153742))))

(declare-fun bs!756454 () Bool)

(assert (= bs!756454 (and b!4424580 d!1340812)))

(assert (=> bs!756454 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623685) (= lambda!153796 lambda!153694))))

(declare-fun bs!756456 () Bool)

(assert (= bs!756456 (and b!4424580 d!1340894)))

(assert (=> bs!756456 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623787) (= lambda!153796 lambda!153743))))

(assert (=> bs!756453 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623532) (= lambda!153796 lambda!153741))))

(declare-fun bs!756457 () Bool)

(assert (= bs!756457 (and b!4424580 d!1340882)))

(assert (=> bs!756457 (not (= lambda!153796 lambda!153732))))

(declare-fun bs!756458 () Bool)

(assert (= bs!756458 (and b!4424580 d!1340982)))

(assert (=> bs!756458 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623950) (= lambda!153796 lambda!153778))))

(declare-fun bs!756459 () Bool)

(assert (= bs!756459 (and b!4424580 b!4424245)))

(assert (=> bs!756459 (= (= (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1623538) (= lambda!153796 lambda!153689))))

(assert (=> b!4424580 true))

(declare-fun lambda!153797 () Int)

(declare-fun lt!1624046 () ListMap!2725)

(assert (=> bs!756438 (= (= lt!1624046 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153797 lambda!153776))))

(assert (=> bs!756440 (= (= lt!1624046 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153797 lambda!153775))))

(assert (=> bs!756441 (= (= lt!1624046 lt!1623984) (= lambda!153797 lambda!153788))))

(assert (=> bs!756444 (= (= lt!1624046 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153797 lambda!153786))))

(assert (=> bs!756444 (= (= lt!1624046 lt!1623988) (= lambda!153797 lambda!153787))))

(assert (=> bs!756438 (= (= lt!1624046 lt!1623954) (= lambda!153797 lambda!153777))))

(assert (=> bs!756446 (= (= lt!1624046 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153797 lambda!153785))))

(assert (=> bs!756448 (= (= lt!1624046 lt!1623532) (= lambda!153797 lambda!153740))))

(assert (=> bs!756449 (= (= lt!1624046 lt!1623689) (= lambda!153797 lambda!153691))))

(assert (=> bs!756449 (= (= lt!1624046 lt!1623538) (= lambda!153797 lambda!153690))))

(assert (=> bs!756451 (= (= lt!1624046 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153797 lambda!153794))))

(assert (=> b!4424580 (= (= lt!1624046 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153797 lambda!153796))))

(assert (=> bs!756453 (= (= lt!1624046 lt!1623791) (= lambda!153797 lambda!153742))))

(assert (=> bs!756454 (= (= lt!1624046 lt!1623685) (= lambda!153797 lambda!153694))))

(assert (=> bs!756456 (= (= lt!1624046 lt!1623787) (= lambda!153797 lambda!153743))))

(assert (=> bs!756453 (= (= lt!1624046 lt!1623532) (= lambda!153797 lambda!153741))))

(assert (=> bs!756457 (not (= lambda!153797 lambda!153732))))

(assert (=> bs!756458 (= (= lt!1624046 lt!1623950) (= lambda!153797 lambda!153778))))

(assert (=> bs!756459 (= (= lt!1624046 lt!1623538) (= lambda!153797 lambda!153689))))

(assert (=> b!4424580 true))

(declare-fun bs!756460 () Bool)

(declare-fun d!1341054 () Bool)

(assert (= bs!756460 (and d!1341054 b!4424468)))

(declare-fun lt!1624042 () ListMap!2725)

(declare-fun lambda!153798 () Int)

(assert (=> bs!756460 (= (= lt!1624042 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153798 lambda!153776))))

(declare-fun bs!756461 () Bool)

(assert (= bs!756461 (and d!1341054 b!4424471)))

(assert (=> bs!756461 (= (= lt!1624042 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153798 lambda!153775))))

(declare-fun bs!756462 () Bool)

(assert (= bs!756462 (and d!1341054 b!4424526)))

(assert (=> bs!756462 (= (= lt!1624042 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153798 lambda!153786))))

(assert (=> bs!756462 (= (= lt!1624042 lt!1623988) (= lambda!153798 lambda!153787))))

(assert (=> bs!756460 (= (= lt!1624042 lt!1623954) (= lambda!153798 lambda!153777))))

(declare-fun bs!756463 () Bool)

(assert (= bs!756463 (and d!1341054 b!4424529)))

(assert (=> bs!756463 (= (= lt!1624042 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153798 lambda!153785))))

(declare-fun bs!756464 () Bool)

(assert (= bs!756464 (and d!1341054 b!4424307)))

(assert (=> bs!756464 (= (= lt!1624042 lt!1623532) (= lambda!153798 lambda!153740))))

(declare-fun bs!756465 () Bool)

(assert (= bs!756465 (and d!1341054 b!4424242)))

(assert (=> bs!756465 (= (= lt!1624042 lt!1623689) (= lambda!153798 lambda!153691))))

(assert (=> bs!756465 (= (= lt!1624042 lt!1623538) (= lambda!153798 lambda!153690))))

(declare-fun bs!756466 () Bool)

(assert (= bs!756466 (and d!1341054 b!4424580)))

(assert (=> bs!756466 (= (= lt!1624042 lt!1624046) (= lambda!153798 lambda!153797))))

(declare-fun bs!756467 () Bool)

(assert (= bs!756467 (and d!1341054 d!1341020)))

(assert (=> bs!756467 (= (= lt!1624042 lt!1623984) (= lambda!153798 lambda!153788))))

(declare-fun bs!756468 () Bool)

(assert (= bs!756468 (and d!1341054 b!4424583)))

(assert (=> bs!756468 (= (= lt!1624042 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153798 lambda!153794))))

(assert (=> bs!756466 (= (= lt!1624042 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153798 lambda!153796))))

(declare-fun bs!756469 () Bool)

(assert (= bs!756469 (and d!1341054 b!4424304)))

(assert (=> bs!756469 (= (= lt!1624042 lt!1623791) (= lambda!153798 lambda!153742))))

(declare-fun bs!756470 () Bool)

(assert (= bs!756470 (and d!1341054 d!1340812)))

(assert (=> bs!756470 (= (= lt!1624042 lt!1623685) (= lambda!153798 lambda!153694))))

(declare-fun bs!756471 () Bool)

(assert (= bs!756471 (and d!1341054 d!1340894)))

(assert (=> bs!756471 (= (= lt!1624042 lt!1623787) (= lambda!153798 lambda!153743))))

(assert (=> bs!756469 (= (= lt!1624042 lt!1623532) (= lambda!153798 lambda!153741))))

(declare-fun bs!756472 () Bool)

(assert (= bs!756472 (and d!1341054 d!1340882)))

(assert (=> bs!756472 (not (= lambda!153798 lambda!153732))))

(declare-fun bs!756473 () Bool)

(assert (= bs!756473 (and d!1341054 d!1340982)))

(assert (=> bs!756473 (= (= lt!1624042 lt!1623950) (= lambda!153798 lambda!153778))))

(declare-fun bs!756474 () Bool)

(assert (= bs!756474 (and d!1341054 b!4424245)))

(assert (=> bs!756474 (= (= lt!1624042 lt!1623538) (= lambda!153798 lambda!153689))))

(assert (=> d!1341054 true))

(declare-fun b!4424579 () Bool)

(declare-fun e!2754937 () Bool)

(assert (=> b!4424579 (= e!2754937 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) lambda!153797))))

(declare-fun e!2754936 () ListMap!2725)

(assert (=> b!4424580 (= e!2754936 lt!1624046)))

(declare-fun lt!1624050 () ListMap!2725)

(assert (=> b!4424580 (= lt!1624050 (+!1079 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424580 (= lt!1624046 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624033 () Unit!81703)

(declare-fun call!307828 () Unit!81703)

(assert (=> b!4424580 (= lt!1624033 call!307828)))

(declare-fun call!307830 () Bool)

(assert (=> b!4424580 call!307830))

(declare-fun lt!1624048 () Unit!81703)

(assert (=> b!4424580 (= lt!1624048 lt!1624033)))

(assert (=> b!4424580 (forall!9557 (toList!3482 lt!1624050) lambda!153797)))

(declare-fun lt!1624045 () Unit!81703)

(declare-fun Unit!81808 () Unit!81703)

(assert (=> b!4424580 (= lt!1624045 Unit!81808)))

(assert (=> b!4424580 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153797)))

(declare-fun lt!1624030 () Unit!81703)

(declare-fun Unit!81809 () Unit!81703)

(assert (=> b!4424580 (= lt!1624030 Unit!81809)))

(declare-fun lt!1624032 () Unit!81703)

(declare-fun Unit!81810 () Unit!81703)

(assert (=> b!4424580 (= lt!1624032 Unit!81810)))

(declare-fun lt!1624035 () Unit!81703)

(assert (=> b!4424580 (= lt!1624035 (forallContained!2088 (toList!3482 lt!1624050) lambda!153797 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424580 (contains!12073 lt!1624050 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624036 () Unit!81703)

(declare-fun Unit!81811 () Unit!81703)

(assert (=> b!4424580 (= lt!1624036 Unit!81811)))

(assert (=> b!4424580 (contains!12073 lt!1624046 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624031 () Unit!81703)

(declare-fun Unit!81812 () Unit!81703)

(assert (=> b!4424580 (= lt!1624031 Unit!81812)))

(assert (=> b!4424580 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153797)))

(declare-fun lt!1624041 () Unit!81703)

(declare-fun Unit!81813 () Unit!81703)

(assert (=> b!4424580 (= lt!1624041 Unit!81813)))

(assert (=> b!4424580 (forall!9557 (toList!3482 lt!1624050) lambda!153797)))

(declare-fun lt!1624049 () Unit!81703)

(declare-fun Unit!81814 () Unit!81703)

(assert (=> b!4424580 (= lt!1624049 Unit!81814)))

(declare-fun lt!1624047 () Unit!81703)

(declare-fun Unit!81815 () Unit!81703)

(assert (=> b!4424580 (= lt!1624047 Unit!81815)))

(declare-fun lt!1624038 () Unit!81703)

(assert (=> b!4424580 (= lt!1624038 (addForallContainsKeyThenBeforeAdding!170 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)) lt!1624046 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun call!307829 () Bool)

(assert (=> b!4424580 call!307829))

(declare-fun lt!1624044 () Unit!81703)

(assert (=> b!4424580 (= lt!1624044 lt!1624038)))

(assert (=> b!4424580 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) lambda!153797)))

(declare-fun lt!1624039 () Unit!81703)

(declare-fun Unit!81816 () Unit!81703)

(assert (=> b!4424580 (= lt!1624039 Unit!81816)))

(declare-fun res!1829114 () Bool)

(assert (=> b!4424580 (= res!1829114 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153797))))

(assert (=> b!4424580 (=> (not res!1829114) (not e!2754937))))

(assert (=> b!4424580 e!2754937))

(declare-fun lt!1624040 () Unit!81703)

(declare-fun Unit!81817 () Unit!81703)

(assert (=> b!4424580 (= lt!1624040 Unit!81817)))

(declare-fun e!2754935 () Bool)

(assert (=> d!1341054 e!2754935))

(declare-fun res!1829113 () Bool)

(assert (=> d!1341054 (=> (not res!1829113) (not e!2754935))))

(assert (=> d!1341054 (= res!1829113 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153798))))

(assert (=> d!1341054 (= lt!1624042 e!2754936)))

(declare-fun c!753150 () Bool)

(assert (=> d!1341054 (= c!753150 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341054 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616))))))

(assert (=> d!1341054 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) lt!1624042)))

(declare-fun bm!307823 () Bool)

(assert (=> bm!307823 (= call!307829 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (ite c!753150 lambda!153794 lambda!153797)))))

(declare-fun bm!307824 () Bool)

(assert (=> bm!307824 (= call!307830 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (ite c!753150 lambda!153794 lambda!153796)))))

(declare-fun b!4424581 () Bool)

(declare-fun res!1829112 () Bool)

(assert (=> b!4424581 (=> (not res!1829112) (not e!2754935))))

(assert (=> b!4424581 (= res!1829112 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) lambda!153798))))

(declare-fun bm!307825 () Bool)

(assert (=> bm!307825 (= call!307828 (lemmaContainsAllItsOwnKeys!170 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))))))

(declare-fun b!4424582 () Bool)

(assert (=> b!4424582 (= e!2754935 (invariantList!803 (toList!3482 lt!1624042)))))

(assert (=> b!4424583 (= e!2754936 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93)))))

(declare-fun lt!1624037 () Unit!81703)

(assert (=> b!4424583 (= lt!1624037 call!307828)))

(assert (=> b!4424583 call!307830))

(declare-fun lt!1624034 () Unit!81703)

(assert (=> b!4424583 (= lt!1624034 lt!1624037)))

(assert (=> b!4424583 call!307829))

(declare-fun lt!1624043 () Unit!81703)

(declare-fun Unit!81818 () Unit!81703)

(assert (=> b!4424583 (= lt!1624043 Unit!81818)))

(assert (= (and d!1341054 c!753150) b!4424583))

(assert (= (and d!1341054 (not c!753150)) b!4424580))

(assert (= (and b!4424580 res!1829114) b!4424579))

(assert (= (or b!4424583 b!4424580) bm!307825))

(assert (= (or b!4424583 b!4424580) bm!307824))

(assert (= (or b!4424583 b!4424580) bm!307823))

(assert (= (and d!1341054 res!1829113) b!4424581))

(assert (= (and b!4424581 res!1829112) b!4424582))

(declare-fun m!5104353 () Bool)

(assert (=> d!1341054 m!5104353))

(assert (=> d!1341054 m!5103593))

(declare-fun m!5104355 () Bool)

(assert (=> bm!307824 m!5104355))

(declare-fun m!5104357 () Bool)

(assert (=> b!4424579 m!5104357))

(declare-fun m!5104359 () Bool)

(assert (=> b!4424582 m!5104359))

(assert (=> bm!307825 m!5103639))

(declare-fun m!5104361 () Bool)

(assert (=> bm!307825 m!5104361))

(declare-fun m!5104363 () Bool)

(assert (=> b!4424581 m!5104363))

(declare-fun m!5104365 () Bool)

(assert (=> bm!307823 m!5104365))

(declare-fun m!5104367 () Bool)

(assert (=> b!4424580 m!5104367))

(declare-fun m!5104369 () Bool)

(assert (=> b!4424580 m!5104369))

(declare-fun m!5104371 () Bool)

(assert (=> b!4424580 m!5104371))

(assert (=> b!4424580 m!5103639))

(declare-fun m!5104373 () Bool)

(assert (=> b!4424580 m!5104373))

(assert (=> b!4424580 m!5104369))

(assert (=> b!4424580 m!5104357))

(assert (=> b!4424580 m!5104367))

(assert (=> b!4424580 m!5103639))

(declare-fun m!5104375 () Bool)

(assert (=> b!4424580 m!5104375))

(declare-fun m!5104377 () Bool)

(assert (=> b!4424580 m!5104377))

(assert (=> b!4424580 m!5104373))

(declare-fun m!5104379 () Bool)

(assert (=> b!4424580 m!5104379))

(declare-fun m!5104381 () Bool)

(assert (=> b!4424580 m!5104381))

(declare-fun m!5104383 () Bool)

(assert (=> b!4424580 m!5104383))

(assert (=> d!1340862 d!1341054))

(declare-fun d!1341064 () Bool)

(declare-fun res!1829120 () Bool)

(declare-fun e!2754953 () Bool)

(assert (=> d!1341064 (=> res!1829120 e!2754953)))

(assert (=> d!1341064 (= res!1829120 ((_ is Nil!49575) (toList!3482 lt!1623538)))))

(assert (=> d!1341064 (= (forall!9557 (toList!3482 lt!1623538) lambda!153691) e!2754953)))

(declare-fun b!4424609 () Bool)

(declare-fun e!2754954 () Bool)

(assert (=> b!4424609 (= e!2754953 e!2754954)))

(declare-fun res!1829121 () Bool)

(assert (=> b!4424609 (=> (not res!1829121) (not e!2754954))))

(assert (=> b!4424609 (= res!1829121 (dynLambda!20843 lambda!153691 (h!55258 (toList!3482 lt!1623538))))))

(declare-fun b!4424610 () Bool)

(assert (=> b!4424610 (= e!2754954 (forall!9557 (t!356637 (toList!3482 lt!1623538)) lambda!153691))))

(assert (= (and d!1341064 (not res!1829120)) b!4424609))

(assert (= (and b!4424609 res!1829121) b!4424610))

(declare-fun b_lambda!142955 () Bool)

(assert (=> (not b_lambda!142955) (not b!4424609)))

(declare-fun m!5104387 () Bool)

(assert (=> b!4424609 m!5104387))

(declare-fun m!5104389 () Bool)

(assert (=> b!4424610 m!5104389))

(assert (=> b!4424241 d!1341064))

(declare-fun bs!756475 () Bool)

(declare-fun d!1341068 () Bool)

(assert (= bs!756475 (and d!1341068 b!4424468)))

(declare-fun lambda!153801 () Int)

(assert (=> bs!756475 (= (= lt!1623532 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153801 lambda!153776))))

(declare-fun bs!756476 () Bool)

(assert (= bs!756476 (and d!1341068 b!4424471)))

(assert (=> bs!756476 (= (= lt!1623532 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153801 lambda!153775))))

(declare-fun bs!756477 () Bool)

(assert (= bs!756477 (and d!1341068 d!1341054)))

(assert (=> bs!756477 (= (= lt!1623532 lt!1624042) (= lambda!153801 lambda!153798))))

(declare-fun bs!756478 () Bool)

(assert (= bs!756478 (and d!1341068 b!4424526)))

(assert (=> bs!756478 (= (= lt!1623532 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153801 lambda!153786))))

(assert (=> bs!756478 (= (= lt!1623532 lt!1623988) (= lambda!153801 lambda!153787))))

(assert (=> bs!756475 (= (= lt!1623532 lt!1623954) (= lambda!153801 lambda!153777))))

(declare-fun bs!756479 () Bool)

(assert (= bs!756479 (and d!1341068 b!4424529)))

(assert (=> bs!756479 (= (= lt!1623532 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153801 lambda!153785))))

(declare-fun bs!756480 () Bool)

(assert (= bs!756480 (and d!1341068 b!4424307)))

(assert (=> bs!756480 (= lambda!153801 lambda!153740)))

(declare-fun bs!756481 () Bool)

(assert (= bs!756481 (and d!1341068 b!4424242)))

(assert (=> bs!756481 (= (= lt!1623532 lt!1623689) (= lambda!153801 lambda!153691))))

(assert (=> bs!756481 (= (= lt!1623532 lt!1623538) (= lambda!153801 lambda!153690))))

(declare-fun bs!756482 () Bool)

(assert (= bs!756482 (and d!1341068 b!4424580)))

(assert (=> bs!756482 (= (= lt!1623532 lt!1624046) (= lambda!153801 lambda!153797))))

(declare-fun bs!756483 () Bool)

(assert (= bs!756483 (and d!1341068 d!1341020)))

(assert (=> bs!756483 (= (= lt!1623532 lt!1623984) (= lambda!153801 lambda!153788))))

(declare-fun bs!756484 () Bool)

(assert (= bs!756484 (and d!1341068 b!4424583)))

(assert (=> bs!756484 (= (= lt!1623532 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153801 lambda!153794))))

(assert (=> bs!756482 (= (= lt!1623532 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153801 lambda!153796))))

(declare-fun bs!756485 () Bool)

(assert (= bs!756485 (and d!1341068 b!4424304)))

(assert (=> bs!756485 (= (= lt!1623532 lt!1623791) (= lambda!153801 lambda!153742))))

(declare-fun bs!756486 () Bool)

(assert (= bs!756486 (and d!1341068 d!1340812)))

(assert (=> bs!756486 (= (= lt!1623532 lt!1623685) (= lambda!153801 lambda!153694))))

(declare-fun bs!756487 () Bool)

(assert (= bs!756487 (and d!1341068 d!1340894)))

(assert (=> bs!756487 (= (= lt!1623532 lt!1623787) (= lambda!153801 lambda!153743))))

(assert (=> bs!756485 (= lambda!153801 lambda!153741)))

(declare-fun bs!756488 () Bool)

(assert (= bs!756488 (and d!1341068 d!1340882)))

(assert (=> bs!756488 (not (= lambda!153801 lambda!153732))))

(declare-fun bs!756489 () Bool)

(assert (= bs!756489 (and d!1341068 d!1340982)))

(assert (=> bs!756489 (= (= lt!1623532 lt!1623950) (= lambda!153801 lambda!153778))))

(declare-fun bs!756490 () Bool)

(assert (= bs!756490 (and d!1341068 b!4424245)))

(assert (=> bs!756490 (= (= lt!1623532 lt!1623538) (= lambda!153801 lambda!153689))))

(assert (=> d!1341068 true))

(assert (=> d!1341068 (forall!9557 (toList!3482 lt!1623532) lambda!153801)))

(declare-fun lt!1624065 () Unit!81703)

(declare-fun choose!27926 (ListMap!2725) Unit!81703)

(assert (=> d!1341068 (= lt!1624065 (choose!27926 lt!1623532))))

(assert (=> d!1341068 (= (lemmaContainsAllItsOwnKeys!170 lt!1623532) lt!1624065)))

(declare-fun bs!756491 () Bool)

(assert (= bs!756491 d!1341068))

(declare-fun m!5104399 () Bool)

(assert (=> bs!756491 m!5104399))

(declare-fun m!5104401 () Bool)

(assert (=> bs!756491 m!5104401))

(assert (=> bm!307806 d!1341068))

(declare-fun d!1341072 () Bool)

(declare-fun res!1829128 () Bool)

(declare-fun e!2754958 () Bool)

(assert (=> d!1341072 (=> res!1829128 e!2754958)))

(assert (=> d!1341072 (= res!1829128 ((_ is Nil!49575) newBucket!194))))

(assert (=> d!1341072 (= (forall!9557 newBucket!194 lambda!153732) e!2754958)))

(declare-fun b!4424617 () Bool)

(declare-fun e!2754959 () Bool)

(assert (=> b!4424617 (= e!2754958 e!2754959)))

(declare-fun res!1829129 () Bool)

(assert (=> b!4424617 (=> (not res!1829129) (not e!2754959))))

(assert (=> b!4424617 (= res!1829129 (dynLambda!20843 lambda!153732 (h!55258 newBucket!194)))))

(declare-fun b!4424618 () Bool)

(assert (=> b!4424618 (= e!2754959 (forall!9557 (t!356637 newBucket!194) lambda!153732))))

(assert (= (and d!1341072 (not res!1829128)) b!4424617))

(assert (= (and b!4424617 res!1829129) b!4424618))

(declare-fun b_lambda!142957 () Bool)

(assert (=> (not b_lambda!142957) (not b!4424617)))

(declare-fun m!5104403 () Bool)

(assert (=> b!4424617 m!5104403))

(declare-fun m!5104405 () Bool)

(assert (=> b!4424618 m!5104405))

(assert (=> d!1340882 d!1341072))

(declare-fun d!1341074 () Bool)

(declare-fun c!753163 () Bool)

(assert (=> d!1341074 (= c!753163 ((_ is Nil!49575) (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538))))))

(declare-fun e!2754962 () (InoxSet tuple2!49366))

(assert (=> d!1341074 (= (content!7952 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538))) e!2754962)))

(declare-fun b!4424623 () Bool)

(assert (=> b!4424623 (= e!2754962 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4424624 () Bool)

(assert (=> b!4424624 (= e!2754962 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538))) true) (content!7952 (t!356637 (toList!3482 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) lt!1623538))))))))

(assert (= (and d!1341074 c!753163) b!4424623))

(assert (= (and d!1341074 (not c!753163)) b!4424624))

(declare-fun m!5104407 () Bool)

(assert (=> b!4424624 m!5104407))

(declare-fun m!5104409 () Bool)

(assert (=> b!4424624 m!5104409))

(assert (=> d!1340860 d!1341074))

(declare-fun d!1341076 () Bool)

(declare-fun c!753164 () Bool)

(assert (=> d!1341076 (= c!753164 ((_ is Nil!49575) (toList!3482 (+!1079 lt!1623529 lt!1623530))))))

(declare-fun e!2754963 () (InoxSet tuple2!49366))

(assert (=> d!1341076 (= (content!7952 (toList!3482 (+!1079 lt!1623529 lt!1623530))) e!2754963)))

(declare-fun b!4424625 () Bool)

(assert (=> b!4424625 (= e!2754963 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4424626 () Bool)

(assert (=> b!4424626 (= e!2754963 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 (+!1079 lt!1623529 lt!1623530))) true) (content!7952 (t!356637 (toList!3482 (+!1079 lt!1623529 lt!1623530))))))))

(assert (= (and d!1341076 c!753164) b!4424625))

(assert (= (and d!1341076 (not c!753164)) b!4424626))

(declare-fun m!5104411 () Bool)

(assert (=> b!4424626 m!5104411))

(declare-fun m!5104413 () Bool)

(assert (=> b!4424626 m!5104413))

(assert (=> d!1340860 d!1341076))

(declare-fun d!1341078 () Bool)

(declare-fun res!1829130 () Bool)

(declare-fun e!2754964 () Bool)

(assert (=> d!1341078 (=> res!1829130 e!2754964)))

(assert (=> d!1341078 (= res!1829130 ((_ is Nil!49575) (toList!3482 lt!1623532)))))

(assert (=> d!1341078 (= (forall!9557 (toList!3482 lt!1623532) (ite c!753089 lambda!153740 lambda!153741)) e!2754964)))

(declare-fun b!4424627 () Bool)

(declare-fun e!2754965 () Bool)

(assert (=> b!4424627 (= e!2754964 e!2754965)))

(declare-fun res!1829131 () Bool)

(assert (=> b!4424627 (=> (not res!1829131) (not e!2754965))))

(assert (=> b!4424627 (= res!1829131 (dynLambda!20843 (ite c!753089 lambda!153740 lambda!153741) (h!55258 (toList!3482 lt!1623532))))))

(declare-fun b!4424628 () Bool)

(assert (=> b!4424628 (= e!2754965 (forall!9557 (t!356637 (toList!3482 lt!1623532)) (ite c!753089 lambda!153740 lambda!153741)))))

(assert (= (and d!1341078 (not res!1829130)) b!4424627))

(assert (= (and b!4424627 res!1829131) b!4424628))

(declare-fun b_lambda!142959 () Bool)

(assert (=> (not b_lambda!142959) (not b!4424627)))

(declare-fun m!5104415 () Bool)

(assert (=> b!4424627 m!5104415))

(declare-fun m!5104417 () Bool)

(assert (=> b!4424628 m!5104417))

(assert (=> bm!307805 d!1341078))

(declare-fun d!1341080 () Bool)

(assert (=> d!1341080 (= (invariantList!803 (toList!3482 lt!1623830)) (noDuplicatedKeys!173 (toList!3482 lt!1623830)))))

(declare-fun bs!756492 () Bool)

(assert (= bs!756492 d!1341080))

(declare-fun m!5104419 () Bool)

(assert (=> bs!756492 m!5104419))

(assert (=> d!1340922 d!1341080))

(declare-fun d!1341082 () Bool)

(declare-fun res!1829132 () Bool)

(declare-fun e!2754966 () Bool)

(assert (=> d!1341082 (=> res!1829132 e!2754966)))

(assert (=> d!1341082 (= res!1829132 ((_ is Nil!49576) (tail!7267 (toList!3481 lm!1616))))))

(assert (=> d!1341082 (= (forall!9556 (tail!7267 (toList!3481 lm!1616)) lambda!153754) e!2754966)))

(declare-fun b!4424629 () Bool)

(declare-fun e!2754967 () Bool)

(assert (=> b!4424629 (= e!2754966 e!2754967)))

(declare-fun res!1829133 () Bool)

(assert (=> b!4424629 (=> (not res!1829133) (not e!2754967))))

(assert (=> b!4424629 (= res!1829133 (dynLambda!20842 lambda!153754 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))

(declare-fun b!4424630 () Bool)

(assert (=> b!4424630 (= e!2754967 (forall!9556 (t!356638 (tail!7267 (toList!3481 lm!1616))) lambda!153754))))

(assert (= (and d!1341082 (not res!1829132)) b!4424629))

(assert (= (and b!4424629 res!1829133) b!4424630))

(declare-fun b_lambda!142961 () Bool)

(assert (=> (not b_lambda!142961) (not b!4424629)))

(declare-fun m!5104421 () Bool)

(assert (=> b!4424629 m!5104421))

(declare-fun m!5104423 () Bool)

(assert (=> b!4424630 m!5104423))

(assert (=> d!1340922 d!1341082))

(declare-fun d!1341084 () Bool)

(assert (=> d!1341084 (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(declare-fun lt!1624068 () Unit!81703)

(declare-fun choose!27927 (List!49699 K!10940) Unit!81703)

(assert (=> d!1341084 (= lt!1624068 (choose!27927 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> d!1341084 (invariantList!803 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1341084 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) lt!1624068)))

(declare-fun bs!756493 () Bool)

(assert (= bs!756493 d!1341084))

(assert (=> bs!756493 m!5103901))

(assert (=> bs!756493 m!5103901))

(assert (=> bs!756493 m!5103903))

(declare-fun m!5104425 () Bool)

(assert (=> bs!756493 m!5104425))

(assert (=> bs!756493 m!5104037))

(assert (=> b!4424375 d!1341084))

(assert (=> b!4424375 d!1341014))

(assert (=> b!4424375 d!1341016))

(declare-fun d!1341086 () Bool)

(assert (=> d!1341086 (contains!12079 (getKeysList!250 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717)))

(declare-fun lt!1624071 () Unit!81703)

(declare-fun choose!27928 (List!49699 K!10940) Unit!81703)

(assert (=> d!1341086 (= lt!1624071 (choose!27928 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> d!1341086 (invariantList!803 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1341086 (= (lemmaInListThenGetKeysListContains!247 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) lt!1624071)))

(declare-fun bs!756494 () Bool)

(assert (= bs!756494 d!1341086))

(assert (=> bs!756494 m!5103907))

(assert (=> bs!756494 m!5103907))

(declare-fun m!5104427 () Bool)

(assert (=> bs!756494 m!5104427))

(declare-fun m!5104429 () Bool)

(assert (=> bs!756494 m!5104429))

(assert (=> bs!756494 m!5104037))

(assert (=> b!4424375 d!1341086))

(assert (=> b!4424304 d!1341012))

(declare-fun d!1341088 () Bool)

(declare-fun res!1829134 () Bool)

(declare-fun e!2754968 () Bool)

(assert (=> d!1341088 (=> res!1829134 e!2754968)))

(assert (=> d!1341088 (= res!1829134 ((_ is Nil!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341088 (= (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153742) e!2754968)))

(declare-fun b!4424631 () Bool)

(declare-fun e!2754969 () Bool)

(assert (=> b!4424631 (= e!2754968 e!2754969)))

(declare-fun res!1829135 () Bool)

(assert (=> b!4424631 (=> (not res!1829135) (not e!2754969))))

(assert (=> b!4424631 (= res!1829135 (dynLambda!20843 lambda!153742 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424632 () Bool)

(assert (=> b!4424632 (= e!2754969 (forall!9557 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lambda!153742))))

(assert (= (and d!1341088 (not res!1829134)) b!4424631))

(assert (= (and b!4424631 res!1829135) b!4424632))

(declare-fun b_lambda!142963 () Bool)

(assert (=> (not b_lambda!142963) (not b!4424631)))

(declare-fun m!5104431 () Bool)

(assert (=> b!4424631 m!5104431))

(declare-fun m!5104433 () Bool)

(assert (=> b!4424632 m!5104433))

(assert (=> b!4424304 d!1341088))

(declare-fun d!1341090 () Bool)

(declare-fun e!2754972 () Bool)

(assert (=> d!1341090 e!2754972))

(declare-fun res!1829136 () Bool)

(assert (=> d!1341090 (=> res!1829136 e!2754972)))

(declare-fun e!2754975 () Bool)

(assert (=> d!1341090 (= res!1829136 e!2754975)))

(declare-fun res!1829138 () Bool)

(assert (=> d!1341090 (=> (not res!1829138) (not e!2754975))))

(declare-fun lt!1624078 () Bool)

(assert (=> d!1341090 (= res!1829138 (not lt!1624078))))

(declare-fun lt!1624079 () Bool)

(assert (=> d!1341090 (= lt!1624078 lt!1624079)))

(declare-fun lt!1624073 () Unit!81703)

(declare-fun e!2754970 () Unit!81703)

(assert (=> d!1341090 (= lt!1624073 e!2754970)))

(declare-fun c!753167 () Bool)

(assert (=> d!1341090 (= c!753167 lt!1624079)))

(assert (=> d!1341090 (= lt!1624079 (containsKey!1109 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341090 (= (contains!12073 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624078)))

(declare-fun b!4424633 () Bool)

(declare-fun e!2754971 () Bool)

(assert (=> b!4424633 (= e!2754971 (contains!12079 (keys!16924 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424634 () Bool)

(declare-fun e!2754973 () List!49702)

(assert (=> b!4424634 (= e!2754973 (getKeysList!250 (toList!3482 lt!1623791)))))

(declare-fun b!4424635 () Bool)

(assert (=> b!4424635 (= e!2754975 (not (contains!12079 (keys!16924 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424636 () Bool)

(declare-fun e!2754974 () Unit!81703)

(assert (=> b!4424636 (= e!2754970 e!2754974)))

(declare-fun c!753165 () Bool)

(declare-fun call!307832 () Bool)

(assert (=> b!4424636 (= c!753165 call!307832)))

(declare-fun b!4424637 () Bool)

(assert (=> b!4424637 false))

(declare-fun lt!1624077 () Unit!81703)

(declare-fun lt!1624072 () Unit!81703)

(assert (=> b!4424637 (= lt!1624077 lt!1624072)))

(assert (=> b!4424637 (containsKey!1109 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424637 (= lt!1624072 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun Unit!81823 () Unit!81703)

(assert (=> b!4424637 (= e!2754974 Unit!81823)))

(declare-fun b!4424638 () Bool)

(declare-fun Unit!81824 () Unit!81703)

(assert (=> b!4424638 (= e!2754974 Unit!81824)))

(declare-fun b!4424639 () Bool)

(assert (=> b!4424639 (= e!2754973 (keys!16924 lt!1623791))))

(declare-fun b!4424640 () Bool)

(assert (=> b!4424640 (= e!2754972 e!2754971)))

(declare-fun res!1829137 () Bool)

(assert (=> b!4424640 (=> (not res!1829137) (not e!2754971))))

(assert (=> b!4424640 (= res!1829137 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424641 () Bool)

(declare-fun lt!1624076 () Unit!81703)

(assert (=> b!4424641 (= e!2754970 lt!1624076)))

(declare-fun lt!1624074 () Unit!81703)

(assert (=> b!4424641 (= lt!1624074 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424641 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624075 () Unit!81703)

(assert (=> b!4424641 (= lt!1624075 lt!1624074)))

(assert (=> b!4424641 (= lt!1624076 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623791) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424641 call!307832))

(declare-fun bm!307827 () Bool)

(assert (=> bm!307827 (= call!307832 (contains!12079 e!2754973 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun c!753166 () Bool)

(assert (=> bm!307827 (= c!753166 c!753167)))

(assert (= (and d!1341090 c!753167) b!4424641))

(assert (= (and d!1341090 (not c!753167)) b!4424636))

(assert (= (and b!4424636 c!753165) b!4424637))

(assert (= (and b!4424636 (not c!753165)) b!4424638))

(assert (= (or b!4424641 b!4424636) bm!307827))

(assert (= (and bm!307827 c!753166) b!4424634))

(assert (= (and bm!307827 (not c!753166)) b!4424639))

(assert (= (and d!1341090 res!1829138) b!4424635))

(assert (= (and d!1341090 (not res!1829136)) b!4424640))

(assert (= (and b!4424640 res!1829137) b!4424633))

(declare-fun m!5104435 () Bool)

(assert (=> b!4424637 m!5104435))

(declare-fun m!5104437 () Bool)

(assert (=> b!4424637 m!5104437))

(declare-fun m!5104439 () Bool)

(assert (=> bm!307827 m!5104439))

(declare-fun m!5104441 () Bool)

(assert (=> b!4424635 m!5104441))

(assert (=> b!4424635 m!5104441))

(declare-fun m!5104443 () Bool)

(assert (=> b!4424635 m!5104443))

(assert (=> d!1341090 m!5104435))

(assert (=> b!4424633 m!5104441))

(assert (=> b!4424633 m!5104441))

(assert (=> b!4424633 m!5104443))

(declare-fun m!5104445 () Bool)

(assert (=> b!4424641 m!5104445))

(declare-fun m!5104447 () Bool)

(assert (=> b!4424641 m!5104447))

(assert (=> b!4424641 m!5104447))

(declare-fun m!5104449 () Bool)

(assert (=> b!4424641 m!5104449))

(declare-fun m!5104451 () Bool)

(assert (=> b!4424641 m!5104451))

(declare-fun m!5104453 () Bool)

(assert (=> b!4424634 m!5104453))

(assert (=> b!4424639 m!5104441))

(assert (=> b!4424640 m!5104447))

(assert (=> b!4424640 m!5104447))

(assert (=> b!4424640 m!5104449))

(assert (=> b!4424304 d!1341090))

(declare-fun d!1341092 () Bool)

(declare-fun res!1829139 () Bool)

(declare-fun e!2754976 () Bool)

(assert (=> d!1341092 (=> res!1829139 e!2754976)))

(assert (=> d!1341092 (= res!1829139 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341092 (= (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153742) e!2754976)))

(declare-fun b!4424642 () Bool)

(declare-fun e!2754977 () Bool)

(assert (=> b!4424642 (= e!2754976 e!2754977)))

(declare-fun res!1829140 () Bool)

(assert (=> b!4424642 (=> (not res!1829140) (not e!2754977))))

(assert (=> b!4424642 (= res!1829140 (dynLambda!20843 lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4424643 () Bool)

(assert (=> b!4424643 (= e!2754977 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153742))))

(assert (= (and d!1341092 (not res!1829139)) b!4424642))

(assert (= (and b!4424642 res!1829140) b!4424643))

(declare-fun b_lambda!142965 () Bool)

(assert (=> (not b_lambda!142965) (not b!4424642)))

(declare-fun m!5104455 () Bool)

(assert (=> b!4424642 m!5104455))

(assert (=> b!4424643 m!5103771))

(assert (=> b!4424304 d!1341092))

(declare-fun d!1341094 () Bool)

(declare-fun res!1829141 () Bool)

(declare-fun e!2754978 () Bool)

(assert (=> d!1341094 (=> res!1829141 e!2754978)))

(assert (=> d!1341094 (= res!1829141 ((_ is Nil!49575) (toList!3482 lt!1623795)))))

(assert (=> d!1341094 (= (forall!9557 (toList!3482 lt!1623795) lambda!153742) e!2754978)))

(declare-fun b!4424644 () Bool)

(declare-fun e!2754979 () Bool)

(assert (=> b!4424644 (= e!2754978 e!2754979)))

(declare-fun res!1829142 () Bool)

(assert (=> b!4424644 (=> (not res!1829142) (not e!2754979))))

(assert (=> b!4424644 (= res!1829142 (dynLambda!20843 lambda!153742 (h!55258 (toList!3482 lt!1623795))))))

(declare-fun b!4424645 () Bool)

(assert (=> b!4424645 (= e!2754979 (forall!9557 (t!356637 (toList!3482 lt!1623795)) lambda!153742))))

(assert (= (and d!1341094 (not res!1829141)) b!4424644))

(assert (= (and b!4424644 res!1829142) b!4424645))

(declare-fun b_lambda!142967 () Bool)

(assert (=> (not b_lambda!142967) (not b!4424644)))

(declare-fun m!5104457 () Bool)

(assert (=> b!4424644 m!5104457))

(declare-fun m!5104459 () Bool)

(assert (=> b!4424645 m!5104459))

(assert (=> b!4424304 d!1341094))

(declare-fun bs!756495 () Bool)

(declare-fun d!1341096 () Bool)

(assert (= bs!756495 (and d!1341096 b!4424468)))

(declare-fun lambda!153806 () Int)

(assert (=> bs!756495 (= (= lt!1623791 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153806 lambda!153776))))

(declare-fun bs!756496 () Bool)

(assert (= bs!756496 (and d!1341096 b!4424471)))

(assert (=> bs!756496 (= (= lt!1623791 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153806 lambda!153775))))

(declare-fun bs!756497 () Bool)

(assert (= bs!756497 (and d!1341096 d!1341054)))

(assert (=> bs!756497 (= (= lt!1623791 lt!1624042) (= lambda!153806 lambda!153798))))

(declare-fun bs!756498 () Bool)

(assert (= bs!756498 (and d!1341096 b!4424526)))

(assert (=> bs!756498 (= (= lt!1623791 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153806 lambda!153786))))

(assert (=> bs!756498 (= (= lt!1623791 lt!1623988) (= lambda!153806 lambda!153787))))

(assert (=> bs!756495 (= (= lt!1623791 lt!1623954) (= lambda!153806 lambda!153777))))

(declare-fun bs!756499 () Bool)

(assert (= bs!756499 (and d!1341096 b!4424529)))

(assert (=> bs!756499 (= (= lt!1623791 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153806 lambda!153785))))

(declare-fun bs!756500 () Bool)

(assert (= bs!756500 (and d!1341096 b!4424307)))

(assert (=> bs!756500 (= (= lt!1623791 lt!1623532) (= lambda!153806 lambda!153740))))

(declare-fun bs!756501 () Bool)

(assert (= bs!756501 (and d!1341096 b!4424242)))

(assert (=> bs!756501 (= (= lt!1623791 lt!1623689) (= lambda!153806 lambda!153691))))

(assert (=> bs!756501 (= (= lt!1623791 lt!1623538) (= lambda!153806 lambda!153690))))

(declare-fun bs!756502 () Bool)

(assert (= bs!756502 (and d!1341096 b!4424580)))

(assert (=> bs!756502 (= (= lt!1623791 lt!1624046) (= lambda!153806 lambda!153797))))

(declare-fun bs!756503 () Bool)

(assert (= bs!756503 (and d!1341096 d!1341020)))

(assert (=> bs!756503 (= (= lt!1623791 lt!1623984) (= lambda!153806 lambda!153788))))

(declare-fun bs!756504 () Bool)

(assert (= bs!756504 (and d!1341096 b!4424583)))

(assert (=> bs!756504 (= (= lt!1623791 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153806 lambda!153794))))

(assert (=> bs!756502 (= (= lt!1623791 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153806 lambda!153796))))

(declare-fun bs!756505 () Bool)

(assert (= bs!756505 (and d!1341096 d!1341068)))

(assert (=> bs!756505 (= (= lt!1623791 lt!1623532) (= lambda!153806 lambda!153801))))

(declare-fun bs!756506 () Bool)

(assert (= bs!756506 (and d!1341096 b!4424304)))

(assert (=> bs!756506 (= lambda!153806 lambda!153742)))

(declare-fun bs!756507 () Bool)

(assert (= bs!756507 (and d!1341096 d!1340812)))

(assert (=> bs!756507 (= (= lt!1623791 lt!1623685) (= lambda!153806 lambda!153694))))

(declare-fun bs!756508 () Bool)

(assert (= bs!756508 (and d!1341096 d!1340894)))

(assert (=> bs!756508 (= (= lt!1623791 lt!1623787) (= lambda!153806 lambda!153743))))

(assert (=> bs!756506 (= (= lt!1623791 lt!1623532) (= lambda!153806 lambda!153741))))

(declare-fun bs!756509 () Bool)

(assert (= bs!756509 (and d!1341096 d!1340882)))

(assert (=> bs!756509 (not (= lambda!153806 lambda!153732))))

(declare-fun bs!756510 () Bool)

(assert (= bs!756510 (and d!1341096 d!1340982)))

(assert (=> bs!756510 (= (= lt!1623791 lt!1623950) (= lambda!153806 lambda!153778))))

(declare-fun bs!756511 () Bool)

(assert (= bs!756511 (and d!1341096 b!4424245)))

(assert (=> bs!756511 (= (= lt!1623791 lt!1623538) (= lambda!153806 lambda!153689))))

(assert (=> d!1341096 true))

(assert (=> d!1341096 (forall!9557 (toList!3482 lt!1623532) lambda!153806)))

(declare-fun lt!1624104 () Unit!81703)

(declare-fun choose!27931 (ListMap!2725 ListMap!2725 K!10940 V!11186) Unit!81703)

(assert (=> d!1341096 (= lt!1624104 (choose!27931 lt!1623532 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341096 (forall!9557 (toList!3482 (+!1079 lt!1623532 (tuple2!49367 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))) lambda!153806)))

(assert (=> d!1341096 (= (addForallContainsKeyThenBeforeAdding!170 lt!1623532 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624104)))

(declare-fun bs!756512 () Bool)

(assert (= bs!756512 d!1341096))

(declare-fun m!5104461 () Bool)

(assert (=> bs!756512 m!5104461))

(declare-fun m!5104463 () Bool)

(assert (=> bs!756512 m!5104463))

(declare-fun m!5104465 () Bool)

(assert (=> bs!756512 m!5104465))

(declare-fun m!5104467 () Bool)

(assert (=> bs!756512 m!5104467))

(assert (=> b!4424304 d!1341096))

(declare-fun d!1341098 () Bool)

(declare-fun e!2754996 () Bool)

(assert (=> d!1341098 e!2754996))

(declare-fun res!1829151 () Bool)

(assert (=> d!1341098 (=> res!1829151 e!2754996)))

(declare-fun e!2754999 () Bool)

(assert (=> d!1341098 (= res!1829151 e!2754999)))

(declare-fun res!1829153 () Bool)

(assert (=> d!1341098 (=> (not res!1829153) (not e!2754999))))

(declare-fun lt!1624111 () Bool)

(assert (=> d!1341098 (= res!1829153 (not lt!1624111))))

(declare-fun lt!1624112 () Bool)

(assert (=> d!1341098 (= lt!1624111 lt!1624112)))

(declare-fun lt!1624106 () Unit!81703)

(declare-fun e!2754994 () Unit!81703)

(assert (=> d!1341098 (= lt!1624106 e!2754994)))

(declare-fun c!753180 () Bool)

(assert (=> d!1341098 (= c!753180 lt!1624112)))

(assert (=> d!1341098 (= lt!1624112 (containsKey!1109 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341098 (= (contains!12073 lt!1623795 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624111)))

(declare-fun b!4424675 () Bool)

(declare-fun e!2754995 () Bool)

(assert (=> b!4424675 (= e!2754995 (contains!12079 (keys!16924 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424676 () Bool)

(declare-fun e!2754997 () List!49702)

(assert (=> b!4424676 (= e!2754997 (getKeysList!250 (toList!3482 lt!1623795)))))

(declare-fun b!4424677 () Bool)

(assert (=> b!4424677 (= e!2754999 (not (contains!12079 (keys!16924 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424678 () Bool)

(declare-fun e!2754998 () Unit!81703)

(assert (=> b!4424678 (= e!2754994 e!2754998)))

(declare-fun c!753178 () Bool)

(declare-fun call!307841 () Bool)

(assert (=> b!4424678 (= c!753178 call!307841)))

(declare-fun b!4424679 () Bool)

(assert (=> b!4424679 false))

(declare-fun lt!1624110 () Unit!81703)

(declare-fun lt!1624105 () Unit!81703)

(assert (=> b!4424679 (= lt!1624110 lt!1624105)))

(assert (=> b!4424679 (containsKey!1109 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4424679 (= lt!1624105 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun Unit!81825 () Unit!81703)

(assert (=> b!4424679 (= e!2754998 Unit!81825)))

(declare-fun b!4424680 () Bool)

(declare-fun Unit!81826 () Unit!81703)

(assert (=> b!4424680 (= e!2754998 Unit!81826)))

(declare-fun b!4424681 () Bool)

(assert (=> b!4424681 (= e!2754997 (keys!16924 lt!1623795))))

(declare-fun b!4424682 () Bool)

(assert (=> b!4424682 (= e!2754996 e!2754995)))

(declare-fun res!1829152 () Bool)

(assert (=> b!4424682 (=> (not res!1829152) (not e!2754995))))

(assert (=> b!4424682 (= res!1829152 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424683 () Bool)

(declare-fun lt!1624109 () Unit!81703)

(assert (=> b!4424683 (= e!2754994 lt!1624109)))

(declare-fun lt!1624107 () Unit!81703)

(assert (=> b!4424683 (= lt!1624107 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424683 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624108 () Unit!81703)

(assert (=> b!4424683 (= lt!1624108 lt!1624107)))

(assert (=> b!4424683 (= lt!1624109 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623795) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424683 call!307841))

(declare-fun bm!307836 () Bool)

(assert (=> bm!307836 (= call!307841 (contains!12079 e!2754997 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun c!753179 () Bool)

(assert (=> bm!307836 (= c!753179 c!753180)))

(assert (= (and d!1341098 c!753180) b!4424683))

(assert (= (and d!1341098 (not c!753180)) b!4424678))

(assert (= (and b!4424678 c!753178) b!4424679))

(assert (= (and b!4424678 (not c!753178)) b!4424680))

(assert (= (or b!4424683 b!4424678) bm!307836))

(assert (= (and bm!307836 c!753179) b!4424676))

(assert (= (and bm!307836 (not c!753179)) b!4424681))

(assert (= (and d!1341098 res!1829153) b!4424677))

(assert (= (and d!1341098 (not res!1829151)) b!4424682))

(assert (= (and b!4424682 res!1829152) b!4424675))

(declare-fun m!5104469 () Bool)

(assert (=> b!4424679 m!5104469))

(declare-fun m!5104471 () Bool)

(assert (=> b!4424679 m!5104471))

(declare-fun m!5104473 () Bool)

(assert (=> bm!307836 m!5104473))

(declare-fun m!5104475 () Bool)

(assert (=> b!4424677 m!5104475))

(assert (=> b!4424677 m!5104475))

(declare-fun m!5104477 () Bool)

(assert (=> b!4424677 m!5104477))

(assert (=> d!1341098 m!5104469))

(assert (=> b!4424675 m!5104475))

(assert (=> b!4424675 m!5104475))

(assert (=> b!4424675 m!5104477))

(declare-fun m!5104479 () Bool)

(assert (=> b!4424683 m!5104479))

(declare-fun m!5104481 () Bool)

(assert (=> b!4424683 m!5104481))

(assert (=> b!4424683 m!5104481))

(declare-fun m!5104483 () Bool)

(assert (=> b!4424683 m!5104483))

(declare-fun m!5104485 () Bool)

(assert (=> b!4424683 m!5104485))

(declare-fun m!5104487 () Bool)

(assert (=> b!4424676 m!5104487))

(assert (=> b!4424681 m!5104475))

(assert (=> b!4424682 m!5104481))

(assert (=> b!4424682 m!5104481))

(assert (=> b!4424682 m!5104483))

(assert (=> b!4424304 d!1341098))

(declare-fun d!1341100 () Bool)

(assert (=> d!1341100 (dynLambda!20843 lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun lt!1624126 () Unit!81703)

(declare-fun choose!27932 (List!49699 Int tuple2!49366) Unit!81703)

(assert (=> d!1341100 (= lt!1624126 (choose!27932 (toList!3482 lt!1623795) lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun e!2755011 () Bool)

(assert (=> d!1341100 e!2755011))

(declare-fun res!1829162 () Bool)

(assert (=> d!1341100 (=> (not res!1829162) (not e!2755011))))

(assert (=> d!1341100 (= res!1829162 (forall!9557 (toList!3482 lt!1623795) lambda!153742))))

(assert (=> d!1341100 (= (forallContained!2088 (toList!3482 lt!1623795) lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624126)))

(declare-fun b!4424702 () Bool)

(assert (=> b!4424702 (= e!2755011 (contains!12077 (toList!3482 lt!1623795) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (= (and d!1341100 res!1829162) b!4424702))

(declare-fun b_lambda!142969 () Bool)

(assert (=> (not b_lambda!142969) (not d!1341100)))

(assert (=> d!1341100 m!5104455))

(declare-fun m!5104533 () Bool)

(assert (=> d!1341100 m!5104533))

(assert (=> d!1341100 m!5103761))

(declare-fun m!5104535 () Bool)

(assert (=> b!4424702 m!5104535))

(assert (=> b!4424304 d!1341100))

(declare-fun bs!756513 () Bool)

(declare-fun b!4424707 () Bool)

(assert (= bs!756513 (and b!4424707 b!4424468)))

(declare-fun lambda!153807 () Int)

(assert (=> bs!756513 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153807 lambda!153776))))

(declare-fun bs!756514 () Bool)

(assert (= bs!756514 (and b!4424707 b!4424471)))

(assert (=> bs!756514 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153807 lambda!153775))))

(declare-fun bs!756515 () Bool)

(assert (= bs!756515 (and b!4424707 d!1341054)))

(assert (=> bs!756515 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624042) (= lambda!153807 lambda!153798))))

(declare-fun bs!756516 () Bool)

(assert (= bs!756516 (and b!4424707 b!4424526)))

(assert (=> bs!756516 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153807 lambda!153786))))

(assert (=> bs!756516 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623988) (= lambda!153807 lambda!153787))))

(assert (=> bs!756513 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623954) (= lambda!153807 lambda!153777))))

(declare-fun bs!756517 () Bool)

(assert (= bs!756517 (and b!4424707 b!4424307)))

(assert (=> bs!756517 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153807 lambda!153740))))

(declare-fun bs!756518 () Bool)

(assert (= bs!756518 (and b!4424707 b!4424242)))

(assert (=> bs!756518 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153807 lambda!153691))))

(assert (=> bs!756518 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153807 lambda!153690))))

(declare-fun bs!756519 () Bool)

(assert (= bs!756519 (and b!4424707 b!4424580)))

(assert (=> bs!756519 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624046) (= lambda!153807 lambda!153797))))

(declare-fun bs!756520 () Bool)

(assert (= bs!756520 (and b!4424707 d!1341020)))

(assert (=> bs!756520 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623984) (= lambda!153807 lambda!153788))))

(declare-fun bs!756521 () Bool)

(assert (= bs!756521 (and b!4424707 b!4424583)))

(assert (=> bs!756521 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153807 lambda!153794))))

(assert (=> bs!756519 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153807 lambda!153796))))

(declare-fun bs!756522 () Bool)

(assert (= bs!756522 (and b!4424707 d!1341068)))

(assert (=> bs!756522 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153807 lambda!153801))))

(declare-fun bs!756523 () Bool)

(assert (= bs!756523 (and b!4424707 b!4424304)))

(assert (=> bs!756523 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153807 lambda!153742))))

(declare-fun bs!756524 () Bool)

(assert (= bs!756524 (and b!4424707 d!1340812)))

(assert (=> bs!756524 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623685) (= lambda!153807 lambda!153694))))

(declare-fun bs!756525 () Bool)

(assert (= bs!756525 (and b!4424707 d!1340894)))

(assert (=> bs!756525 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623787) (= lambda!153807 lambda!153743))))

(declare-fun bs!756526 () Bool)

(assert (= bs!756526 (and b!4424707 d!1341096)))

(assert (=> bs!756526 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153807 lambda!153806))))

(declare-fun bs!756527 () Bool)

(assert (= bs!756527 (and b!4424707 b!4424529)))

(assert (=> bs!756527 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153807 lambda!153785))))

(assert (=> bs!756523 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153807 lambda!153741))))

(declare-fun bs!756528 () Bool)

(assert (= bs!756528 (and b!4424707 d!1340882)))

(assert (=> bs!756528 (not (= lambda!153807 lambda!153732))))

(declare-fun bs!756529 () Bool)

(assert (= bs!756529 (and b!4424707 d!1340982)))

(assert (=> bs!756529 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623950) (= lambda!153807 lambda!153778))))

(declare-fun bs!756530 () Bool)

(assert (= bs!756530 (and b!4424707 b!4424245)))

(assert (=> bs!756530 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153807 lambda!153689))))

(assert (=> b!4424707 true))

(declare-fun bs!756531 () Bool)

(declare-fun b!4424704 () Bool)

(assert (= bs!756531 (and b!4424704 b!4424707)))

(declare-fun lambda!153808 () Int)

(assert (=> bs!756531 (= lambda!153808 lambda!153807)))

(declare-fun bs!756532 () Bool)

(assert (= bs!756532 (and b!4424704 b!4424468)))

(assert (=> bs!756532 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153808 lambda!153776))))

(declare-fun bs!756533 () Bool)

(assert (= bs!756533 (and b!4424704 b!4424471)))

(assert (=> bs!756533 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153808 lambda!153775))))

(declare-fun bs!756534 () Bool)

(assert (= bs!756534 (and b!4424704 d!1341054)))

(assert (=> bs!756534 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624042) (= lambda!153808 lambda!153798))))

(declare-fun bs!756535 () Bool)

(assert (= bs!756535 (and b!4424704 b!4424526)))

(assert (=> bs!756535 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153808 lambda!153786))))

(assert (=> bs!756535 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623988) (= lambda!153808 lambda!153787))))

(assert (=> bs!756532 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623954) (= lambda!153808 lambda!153777))))

(declare-fun bs!756536 () Bool)

(assert (= bs!756536 (and b!4424704 b!4424307)))

(assert (=> bs!756536 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153808 lambda!153740))))

(declare-fun bs!756537 () Bool)

(assert (= bs!756537 (and b!4424704 b!4424242)))

(assert (=> bs!756537 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153808 lambda!153691))))

(assert (=> bs!756537 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153808 lambda!153690))))

(declare-fun bs!756538 () Bool)

(assert (= bs!756538 (and b!4424704 b!4424580)))

(assert (=> bs!756538 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624046) (= lambda!153808 lambda!153797))))

(declare-fun bs!756539 () Bool)

(assert (= bs!756539 (and b!4424704 d!1341020)))

(assert (=> bs!756539 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623984) (= lambda!153808 lambda!153788))))

(declare-fun bs!756540 () Bool)

(assert (= bs!756540 (and b!4424704 b!4424583)))

(assert (=> bs!756540 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153808 lambda!153794))))

(assert (=> bs!756538 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153808 lambda!153796))))

(declare-fun bs!756541 () Bool)

(assert (= bs!756541 (and b!4424704 d!1341068)))

(assert (=> bs!756541 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153808 lambda!153801))))

(declare-fun bs!756542 () Bool)

(assert (= bs!756542 (and b!4424704 b!4424304)))

(assert (=> bs!756542 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153808 lambda!153742))))

(declare-fun bs!756543 () Bool)

(assert (= bs!756543 (and b!4424704 d!1340812)))

(assert (=> bs!756543 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623685) (= lambda!153808 lambda!153694))))

(declare-fun bs!756544 () Bool)

(assert (= bs!756544 (and b!4424704 d!1340894)))

(assert (=> bs!756544 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623787) (= lambda!153808 lambda!153743))))

(declare-fun bs!756545 () Bool)

(assert (= bs!756545 (and b!4424704 d!1341096)))

(assert (=> bs!756545 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153808 lambda!153806))))

(declare-fun bs!756546 () Bool)

(assert (= bs!756546 (and b!4424704 b!4424529)))

(assert (=> bs!756546 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153808 lambda!153785))))

(assert (=> bs!756542 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153808 lambda!153741))))

(declare-fun bs!756547 () Bool)

(assert (= bs!756547 (and b!4424704 d!1340882)))

(assert (=> bs!756547 (not (= lambda!153808 lambda!153732))))

(declare-fun bs!756548 () Bool)

(assert (= bs!756548 (and b!4424704 d!1340982)))

(assert (=> bs!756548 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623950) (= lambda!153808 lambda!153778))))

(declare-fun bs!756549 () Bool)

(assert (= bs!756549 (and b!4424704 b!4424245)))

(assert (=> bs!756549 (= (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153808 lambda!153689))))

(assert (=> b!4424704 true))

(declare-fun lt!1624143 () ListMap!2725)

(declare-fun lambda!153809 () Int)

(assert (=> bs!756531 (= (= lt!1624143 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153809 lambda!153807))))

(assert (=> bs!756532 (= (= lt!1624143 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153809 lambda!153776))))

(assert (=> b!4424704 (= (= lt!1624143 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153809 lambda!153808))))

(assert (=> bs!756533 (= (= lt!1624143 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153809 lambda!153775))))

(assert (=> bs!756534 (= (= lt!1624143 lt!1624042) (= lambda!153809 lambda!153798))))

(assert (=> bs!756535 (= (= lt!1624143 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153809 lambda!153786))))

(assert (=> bs!756535 (= (= lt!1624143 lt!1623988) (= lambda!153809 lambda!153787))))

(assert (=> bs!756532 (= (= lt!1624143 lt!1623954) (= lambda!153809 lambda!153777))))

(assert (=> bs!756536 (= (= lt!1624143 lt!1623532) (= lambda!153809 lambda!153740))))

(assert (=> bs!756537 (= (= lt!1624143 lt!1623689) (= lambda!153809 lambda!153691))))

(assert (=> bs!756537 (= (= lt!1624143 lt!1623538) (= lambda!153809 lambda!153690))))

(assert (=> bs!756538 (= (= lt!1624143 lt!1624046) (= lambda!153809 lambda!153797))))

(assert (=> bs!756539 (= (= lt!1624143 lt!1623984) (= lambda!153809 lambda!153788))))

(assert (=> bs!756540 (= (= lt!1624143 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153809 lambda!153794))))

(assert (=> bs!756538 (= (= lt!1624143 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153809 lambda!153796))))

(assert (=> bs!756541 (= (= lt!1624143 lt!1623532) (= lambda!153809 lambda!153801))))

(assert (=> bs!756542 (= (= lt!1624143 lt!1623791) (= lambda!153809 lambda!153742))))

(assert (=> bs!756543 (= (= lt!1624143 lt!1623685) (= lambda!153809 lambda!153694))))

(assert (=> bs!756544 (= (= lt!1624143 lt!1623787) (= lambda!153809 lambda!153743))))

(assert (=> bs!756545 (= (= lt!1624143 lt!1623791) (= lambda!153809 lambda!153806))))

(assert (=> bs!756546 (= (= lt!1624143 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153809 lambda!153785))))

(assert (=> bs!756542 (= (= lt!1624143 lt!1623532) (= lambda!153809 lambda!153741))))

(assert (=> bs!756547 (not (= lambda!153809 lambda!153732))))

(assert (=> bs!756548 (= (= lt!1624143 lt!1623950) (= lambda!153809 lambda!153778))))

(assert (=> bs!756549 (= (= lt!1624143 lt!1623538) (= lambda!153809 lambda!153689))))

(assert (=> b!4424704 true))

(declare-fun bs!756550 () Bool)

(declare-fun d!1341106 () Bool)

(assert (= bs!756550 (and d!1341106 b!4424704)))

(declare-fun lt!1624139 () ListMap!2725)

(declare-fun lambda!153810 () Int)

(assert (=> bs!756550 (= (= lt!1624139 lt!1624143) (= lambda!153810 lambda!153809))))

(declare-fun bs!756551 () Bool)

(assert (= bs!756551 (and d!1341106 b!4424707)))

(assert (=> bs!756551 (= (= lt!1624139 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153810 lambda!153807))))

(declare-fun bs!756552 () Bool)

(assert (= bs!756552 (and d!1341106 b!4424468)))

(assert (=> bs!756552 (= (= lt!1624139 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153810 lambda!153776))))

(assert (=> bs!756550 (= (= lt!1624139 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153810 lambda!153808))))

(declare-fun bs!756553 () Bool)

(assert (= bs!756553 (and d!1341106 b!4424471)))

(assert (=> bs!756553 (= (= lt!1624139 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153810 lambda!153775))))

(declare-fun bs!756554 () Bool)

(assert (= bs!756554 (and d!1341106 d!1341054)))

(assert (=> bs!756554 (= (= lt!1624139 lt!1624042) (= lambda!153810 lambda!153798))))

(declare-fun bs!756555 () Bool)

(assert (= bs!756555 (and d!1341106 b!4424526)))

(assert (=> bs!756555 (= (= lt!1624139 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153810 lambda!153786))))

(assert (=> bs!756555 (= (= lt!1624139 lt!1623988) (= lambda!153810 lambda!153787))))

(assert (=> bs!756552 (= (= lt!1624139 lt!1623954) (= lambda!153810 lambda!153777))))

(declare-fun bs!756556 () Bool)

(assert (= bs!756556 (and d!1341106 b!4424307)))

(assert (=> bs!756556 (= (= lt!1624139 lt!1623532) (= lambda!153810 lambda!153740))))

(declare-fun bs!756557 () Bool)

(assert (= bs!756557 (and d!1341106 b!4424242)))

(assert (=> bs!756557 (= (= lt!1624139 lt!1623689) (= lambda!153810 lambda!153691))))

(assert (=> bs!756557 (= (= lt!1624139 lt!1623538) (= lambda!153810 lambda!153690))))

(declare-fun bs!756558 () Bool)

(assert (= bs!756558 (and d!1341106 b!4424580)))

(assert (=> bs!756558 (= (= lt!1624139 lt!1624046) (= lambda!153810 lambda!153797))))

(declare-fun bs!756559 () Bool)

(assert (= bs!756559 (and d!1341106 d!1341020)))

(assert (=> bs!756559 (= (= lt!1624139 lt!1623984) (= lambda!153810 lambda!153788))))

(declare-fun bs!756560 () Bool)

(assert (= bs!756560 (and d!1341106 b!4424583)))

(assert (=> bs!756560 (= (= lt!1624139 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153810 lambda!153794))))

(assert (=> bs!756558 (= (= lt!1624139 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153810 lambda!153796))))

(declare-fun bs!756561 () Bool)

(assert (= bs!756561 (and d!1341106 d!1341068)))

(assert (=> bs!756561 (= (= lt!1624139 lt!1623532) (= lambda!153810 lambda!153801))))

(declare-fun bs!756562 () Bool)

(assert (= bs!756562 (and d!1341106 b!4424304)))

(assert (=> bs!756562 (= (= lt!1624139 lt!1623791) (= lambda!153810 lambda!153742))))

(declare-fun bs!756563 () Bool)

(assert (= bs!756563 (and d!1341106 d!1340812)))

(assert (=> bs!756563 (= (= lt!1624139 lt!1623685) (= lambda!153810 lambda!153694))))

(declare-fun bs!756564 () Bool)

(assert (= bs!756564 (and d!1341106 d!1340894)))

(assert (=> bs!756564 (= (= lt!1624139 lt!1623787) (= lambda!153810 lambda!153743))))

(declare-fun bs!756565 () Bool)

(assert (= bs!756565 (and d!1341106 d!1341096)))

(assert (=> bs!756565 (= (= lt!1624139 lt!1623791) (= lambda!153810 lambda!153806))))

(declare-fun bs!756566 () Bool)

(assert (= bs!756566 (and d!1341106 b!4424529)))

(assert (=> bs!756566 (= (= lt!1624139 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153810 lambda!153785))))

(assert (=> bs!756562 (= (= lt!1624139 lt!1623532) (= lambda!153810 lambda!153741))))

(declare-fun bs!756567 () Bool)

(assert (= bs!756567 (and d!1341106 d!1340882)))

(assert (=> bs!756567 (not (= lambda!153810 lambda!153732))))

(declare-fun bs!756568 () Bool)

(assert (= bs!756568 (and d!1341106 d!1340982)))

(assert (=> bs!756568 (= (= lt!1624139 lt!1623950) (= lambda!153810 lambda!153778))))

(declare-fun bs!756569 () Bool)

(assert (= bs!756569 (and d!1341106 b!4424245)))

(assert (=> bs!756569 (= (= lt!1624139 lt!1623538) (= lambda!153810 lambda!153689))))

(assert (=> d!1341106 true))

(declare-fun b!4424703 () Bool)

(declare-fun e!2755014 () Bool)

(assert (=> b!4424703 (= e!2755014 (forall!9557 (toList!3482 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153809))))

(declare-fun e!2755013 () ListMap!2725)

(assert (=> b!4424704 (= e!2755013 lt!1624143)))

(declare-fun lt!1624147 () ListMap!2725)

(assert (=> b!4424704 (= lt!1624147 (+!1079 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424704 (= lt!1624143 (addToMapMapFromBucket!384 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun lt!1624130 () Unit!81703)

(declare-fun call!307846 () Unit!81703)

(assert (=> b!4424704 (= lt!1624130 call!307846)))

(declare-fun call!307848 () Bool)

(assert (=> b!4424704 call!307848))

(declare-fun lt!1624145 () Unit!81703)

(assert (=> b!4424704 (= lt!1624145 lt!1624130)))

(assert (=> b!4424704 (forall!9557 (toList!3482 lt!1624147) lambda!153809)))

(declare-fun lt!1624142 () Unit!81703)

(declare-fun Unit!81838 () Unit!81703)

(assert (=> b!4424704 (= lt!1624142 Unit!81838)))

(assert (=> b!4424704 (forall!9557 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lambda!153809)))

(declare-fun lt!1624127 () Unit!81703)

(declare-fun Unit!81839 () Unit!81703)

(assert (=> b!4424704 (= lt!1624127 Unit!81839)))

(declare-fun lt!1624129 () Unit!81703)

(declare-fun Unit!81840 () Unit!81703)

(assert (=> b!4424704 (= lt!1624129 Unit!81840)))

(declare-fun lt!1624132 () Unit!81703)

(assert (=> b!4424704 (= lt!1624132 (forallContained!2088 (toList!3482 lt!1624147) lambda!153809 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4424704 (contains!12073 lt!1624147 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624133 () Unit!81703)

(declare-fun Unit!81841 () Unit!81703)

(assert (=> b!4424704 (= lt!1624133 Unit!81841)))

(assert (=> b!4424704 (contains!12073 lt!1624143 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624128 () Unit!81703)

(declare-fun Unit!81842 () Unit!81703)

(assert (=> b!4424704 (= lt!1624128 Unit!81842)))

(assert (=> b!4424704 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153809)))

(declare-fun lt!1624138 () Unit!81703)

(declare-fun Unit!81843 () Unit!81703)

(assert (=> b!4424704 (= lt!1624138 Unit!81843)))

(assert (=> b!4424704 (forall!9557 (toList!3482 lt!1624147) lambda!153809)))

(declare-fun lt!1624146 () Unit!81703)

(declare-fun Unit!81844 () Unit!81703)

(assert (=> b!4424704 (= lt!1624146 Unit!81844)))

(declare-fun lt!1624144 () Unit!81703)

(declare-fun Unit!81845 () Unit!81703)

(assert (=> b!4424704 (= lt!1624144 Unit!81845)))

(declare-fun lt!1624135 () Unit!81703)

(assert (=> b!4424704 (= lt!1624135 (addForallContainsKeyThenBeforeAdding!170 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624143 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (_2!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun call!307847 () Bool)

(assert (=> b!4424704 call!307847))

(declare-fun lt!1624141 () Unit!81703)

(assert (=> b!4424704 (= lt!1624141 lt!1624135)))

(assert (=> b!4424704 (forall!9557 (toList!3482 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153809)))

(declare-fun lt!1624136 () Unit!81703)

(declare-fun Unit!81846 () Unit!81703)

(assert (=> b!4424704 (= lt!1624136 Unit!81846)))

(declare-fun res!1829165 () Bool)

(assert (=> b!4424704 (= res!1829165 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153809))))

(assert (=> b!4424704 (=> (not res!1829165) (not e!2755014))))

(assert (=> b!4424704 e!2755014))

(declare-fun lt!1624137 () Unit!81703)

(declare-fun Unit!81847 () Unit!81703)

(assert (=> b!4424704 (= lt!1624137 Unit!81847)))

(declare-fun e!2755012 () Bool)

(assert (=> d!1341106 e!2755012))

(declare-fun res!1829164 () Bool)

(assert (=> d!1341106 (=> (not res!1829164) (not e!2755012))))

(assert (=> d!1341106 (= res!1829164 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153810))))

(assert (=> d!1341106 (= lt!1624139 e!2755013)))

(declare-fun c!753186 () Bool)

(assert (=> d!1341106 (= c!753186 ((_ is Nil!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341106 (noDuplicateKeys!747 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341106 (= (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624139)))

(declare-fun bm!307841 () Bool)

(assert (=> bm!307841 (= call!307847 (forall!9557 (toList!3482 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (ite c!753186 lambda!153807 lambda!153809)))))

(declare-fun bm!307842 () Bool)

(assert (=> bm!307842 (= call!307848 (forall!9557 (toList!3482 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (ite c!753186 lambda!153807 lambda!153808)))))

(declare-fun b!4424705 () Bool)

(declare-fun res!1829163 () Bool)

(assert (=> b!4424705 (=> (not res!1829163) (not e!2755012))))

(assert (=> b!4424705 (= res!1829163 (forall!9557 (toList!3482 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153810))))

(declare-fun bm!307843 () Bool)

(assert (=> bm!307843 (= call!307846 (lemmaContainsAllItsOwnKeys!170 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424706 () Bool)

(assert (=> b!4424706 (= e!2755012 (invariantList!803 (toList!3482 lt!1624139)))))

(assert (=> b!4424707 (= e!2755013 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624134 () Unit!81703)

(assert (=> b!4424707 (= lt!1624134 call!307846)))

(assert (=> b!4424707 call!307848))

(declare-fun lt!1624131 () Unit!81703)

(assert (=> b!4424707 (= lt!1624131 lt!1624134)))

(assert (=> b!4424707 call!307847))

(declare-fun lt!1624140 () Unit!81703)

(declare-fun Unit!81848 () Unit!81703)

(assert (=> b!4424707 (= lt!1624140 Unit!81848)))

(assert (= (and d!1341106 c!753186) b!4424707))

(assert (= (and d!1341106 (not c!753186)) b!4424704))

(assert (= (and b!4424704 res!1829165) b!4424703))

(assert (= (or b!4424707 b!4424704) bm!307843))

(assert (= (or b!4424707 b!4424704) bm!307842))

(assert (= (or b!4424707 b!4424704) bm!307841))

(assert (= (and d!1341106 res!1829164) b!4424705))

(assert (= (and b!4424705 res!1829163) b!4424706))

(declare-fun m!5104557 () Bool)

(assert (=> d!1341106 m!5104557))

(assert (=> d!1341106 m!5104161))

(declare-fun m!5104559 () Bool)

(assert (=> bm!307842 m!5104559))

(declare-fun m!5104561 () Bool)

(assert (=> b!4424703 m!5104561))

(declare-fun m!5104563 () Bool)

(assert (=> b!4424706 m!5104563))

(assert (=> bm!307843 m!5103767))

(declare-fun m!5104565 () Bool)

(assert (=> bm!307843 m!5104565))

(declare-fun m!5104567 () Bool)

(assert (=> b!4424705 m!5104567))

(declare-fun m!5104569 () Bool)

(assert (=> bm!307841 m!5104569))

(declare-fun m!5104571 () Bool)

(assert (=> b!4424704 m!5104571))

(declare-fun m!5104573 () Bool)

(assert (=> b!4424704 m!5104573))

(declare-fun m!5104575 () Bool)

(assert (=> b!4424704 m!5104575))

(assert (=> b!4424704 m!5103767))

(declare-fun m!5104577 () Bool)

(assert (=> b!4424704 m!5104577))

(assert (=> b!4424704 m!5104573))

(assert (=> b!4424704 m!5104561))

(assert (=> b!4424704 m!5104571))

(assert (=> b!4424704 m!5103767))

(declare-fun m!5104579 () Bool)

(assert (=> b!4424704 m!5104579))

(declare-fun m!5104581 () Bool)

(assert (=> b!4424704 m!5104581))

(assert (=> b!4424704 m!5104577))

(declare-fun m!5104583 () Bool)

(assert (=> b!4424704 m!5104583))

(declare-fun m!5104585 () Bool)

(assert (=> b!4424704 m!5104585))

(declare-fun m!5104587 () Bool)

(assert (=> b!4424704 m!5104587))

(assert (=> b!4424304 d!1341106))

(declare-fun d!1341118 () Bool)

(declare-fun e!2755031 () Bool)

(assert (=> d!1341118 e!2755031))

(declare-fun res!1829182 () Bool)

(assert (=> d!1341118 (=> (not res!1829182) (not e!2755031))))

(declare-fun lt!1624160 () ListMap!2725)

(assert (=> d!1341118 (= res!1829182 (contains!12073 lt!1624160 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624161 () List!49699)

(assert (=> d!1341118 (= lt!1624160 (ListMap!2726 lt!1624161))))

(declare-fun lt!1624159 () Unit!81703)

(declare-fun lt!1624158 () Unit!81703)

(assert (=> d!1341118 (= lt!1624159 lt!1624158)))

(assert (=> d!1341118 (= (getValueByKey!707 lt!1624161 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (Some!10720 (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341118 (= lt!1624158 (lemmaContainsTupThenGetReturnValue!442 lt!1624161 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341118 (= lt!1624161 (insertNoDuplicatedKeys!193 (toList!3482 lt!1623532) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341118 (= (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624160)))

(declare-fun b!4424730 () Bool)

(declare-fun res!1829183 () Bool)

(assert (=> b!4424730 (=> (not res!1829183) (not e!2755031))))

(assert (=> b!4424730 (= res!1829183 (= (getValueByKey!707 (toList!3482 lt!1624160) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (Some!10720 (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4424731 () Bool)

(assert (=> b!4424731 (= e!2755031 (contains!12077 (toList!3482 lt!1624160) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (= (and d!1341118 res!1829182) b!4424730))

(assert (= (and b!4424730 res!1829183) b!4424731))

(declare-fun m!5104589 () Bool)

(assert (=> d!1341118 m!5104589))

(declare-fun m!5104591 () Bool)

(assert (=> d!1341118 m!5104591))

(declare-fun m!5104593 () Bool)

(assert (=> d!1341118 m!5104593))

(declare-fun m!5104595 () Bool)

(assert (=> d!1341118 m!5104595))

(declare-fun m!5104597 () Bool)

(assert (=> b!4424730 m!5104597))

(declare-fun m!5104599 () Bool)

(assert (=> b!4424731 m!5104599))

(assert (=> b!4424304 d!1341118))

(declare-fun d!1341120 () Bool)

(declare-fun res!1829184 () Bool)

(declare-fun e!2755032 () Bool)

(assert (=> d!1341120 (=> res!1829184 e!2755032)))

(assert (=> d!1341120 (= res!1829184 (and ((_ is Cons!49575) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= (_1!27977 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) key!3717)))))

(assert (=> d!1341120 (= (containsKey!1109 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) e!2755032)))

(declare-fun b!4424732 () Bool)

(declare-fun e!2755033 () Bool)

(assert (=> b!4424732 (= e!2755032 e!2755033)))

(declare-fun res!1829185 () Bool)

(assert (=> b!4424732 (=> (not res!1829185) (not e!2755033))))

(assert (=> b!4424732 (= res!1829185 ((_ is Cons!49575) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))

(declare-fun b!4424733 () Bool)

(assert (=> b!4424733 (= e!2755033 (containsKey!1109 (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717))))

(assert (= (and d!1341120 (not res!1829184)) b!4424732))

(assert (= (and b!4424732 res!1829185) b!4424733))

(declare-fun m!5104601 () Bool)

(assert (=> b!4424733 m!5104601))

(assert (=> d!1340934 d!1341120))

(declare-fun d!1341122 () Bool)

(declare-fun c!753190 () Bool)

(assert (=> d!1341122 (= c!753190 ((_ is Nil!49575) (toList!3482 lt!1623543)))))

(declare-fun e!2755034 () (InoxSet tuple2!49366))

(assert (=> d!1341122 (= (content!7952 (toList!3482 lt!1623543)) e!2755034)))

(declare-fun b!4424734 () Bool)

(assert (=> b!4424734 (= e!2755034 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4424735 () Bool)

(assert (=> b!4424735 (= e!2755034 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 lt!1623543)) true) (content!7952 (t!356637 (toList!3482 lt!1623543)))))))

(assert (= (and d!1341122 c!753190) b!4424734))

(assert (= (and d!1341122 (not c!753190)) b!4424735))

(declare-fun m!5104603 () Bool)

(assert (=> b!4424735 m!5104603))

(declare-fun m!5104605 () Bool)

(assert (=> b!4424735 m!5104605))

(assert (=> d!1340892 d!1341122))

(declare-fun d!1341124 () Bool)

(declare-fun c!753191 () Bool)

(assert (=> d!1341124 (= c!753191 ((_ is Nil!49575) (toList!3482 lt!1623529)))))

(declare-fun e!2755035 () (InoxSet tuple2!49366))

(assert (=> d!1341124 (= (content!7952 (toList!3482 lt!1623529)) e!2755035)))

(declare-fun b!4424736 () Bool)

(assert (=> b!4424736 (= e!2755035 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4424737 () Bool)

(assert (=> b!4424737 (= e!2755035 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 lt!1623529)) true) (content!7952 (t!356637 (toList!3482 lt!1623529)))))))

(assert (= (and d!1341124 c!753191) b!4424736))

(assert (= (and d!1341124 (not c!753191)) b!4424737))

(declare-fun m!5104607 () Bool)

(assert (=> b!4424737 m!5104607))

(declare-fun m!5104609 () Bool)

(assert (=> b!4424737 m!5104609))

(assert (=> d!1340892 d!1341124))

(declare-fun d!1341126 () Bool)

(declare-fun res!1829190 () Bool)

(declare-fun e!2755042 () Bool)

(assert (=> d!1341126 (=> res!1829190 e!2755042)))

(assert (=> d!1341126 (= res!1829190 (or ((_ is Nil!49576) (toList!3481 lm!1616)) ((_ is Nil!49576) (t!356638 (toList!3481 lm!1616)))))))

(assert (=> d!1341126 (= (isStrictlySorted!230 (toList!3481 lm!1616)) e!2755042)))

(declare-fun b!4424749 () Bool)

(declare-fun e!2755043 () Bool)

(assert (=> b!4424749 (= e!2755042 e!2755043)))

(declare-fun res!1829191 () Bool)

(assert (=> b!4424749 (=> (not res!1829191) (not e!2755043))))

(assert (=> b!4424749 (= res!1829191 (bvslt (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 (h!55259 (t!356638 (toList!3481 lm!1616))))))))

(declare-fun b!4424751 () Bool)

(assert (=> b!4424751 (= e!2755043 (isStrictlySorted!230 (t!356638 (toList!3481 lm!1616))))))

(assert (= (and d!1341126 (not res!1829190)) b!4424749))

(assert (= (and b!4424749 res!1829191) b!4424751))

(declare-fun m!5104611 () Bool)

(assert (=> b!4424751 m!5104611))

(assert (=> d!1340958 d!1341126))

(declare-fun bs!756570 () Bool)

(declare-fun d!1341128 () Bool)

(assert (= bs!756570 (and d!1341128 d!1340910)))

(declare-fun lambda!153811 () Int)

(assert (=> bs!756570 (= lambda!153811 lambda!153753)))

(declare-fun bs!756571 () Bool)

(assert (= bs!756571 (and d!1341128 d!1340952)))

(assert (=> bs!756571 (= lambda!153811 lambda!153759)))

(declare-fun bs!756572 () Bool)

(assert (= bs!756572 (and d!1341128 d!1340890)))

(assert (=> bs!756572 (not (= lambda!153811 lambda!153739))))

(declare-fun bs!756573 () Bool)

(assert (= bs!756573 (and d!1341128 d!1340986)))

(assert (=> bs!756573 (= lambda!153811 lambda!153779)))

(declare-fun bs!756574 () Bool)

(assert (= bs!756574 (and d!1341128 d!1340922)))

(assert (=> bs!756574 (= lambda!153811 lambda!153754)))

(declare-fun bs!756575 () Bool)

(assert (= bs!756575 (and d!1341128 d!1340906)))

(assert (=> bs!756575 (= lambda!153811 lambda!153750)))

(declare-fun bs!756576 () Bool)

(assert (= bs!756576 (and d!1341128 d!1341030)))

(assert (=> bs!756576 (= lambda!153811 lambda!153789)))

(declare-fun bs!756577 () Bool)

(assert (= bs!756577 (and d!1341128 d!1340954)))

(assert (=> bs!756577 (= lambda!153811 lambda!153762)))

(declare-fun bs!756578 () Bool)

(assert (= bs!756578 (and d!1341128 start!431492)))

(assert (=> bs!756578 (= lambda!153811 lambda!153648)))

(declare-fun bs!756579 () Bool)

(assert (= bs!756579 (and d!1341128 d!1340942)))

(assert (=> bs!756579 (= lambda!153811 lambda!153758)))

(declare-fun bs!756580 () Bool)

(assert (= bs!756580 (and d!1341128 d!1340930)))

(assert (=> bs!756580 (= lambda!153811 lambda!153755)))

(declare-fun lt!1624164 () ListMap!2725)

(assert (=> d!1341128 (invariantList!803 (toList!3482 lt!1624164))))

(declare-fun e!2755048 () ListMap!2725)

(assert (=> d!1341128 (= lt!1624164 e!2755048)))

(declare-fun c!753198 () Bool)

(assert (=> d!1341128 (= c!753198 ((_ is Cons!49576) (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))))))

(assert (=> d!1341128 (forall!9556 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194))) lambda!153811)))

(assert (=> d!1341128 (= (extractMap!808 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))) lt!1624164)))

(declare-fun b!4424756 () Bool)

(assert (=> b!4424756 (= e!2755048 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))))))))

(declare-fun b!4424757 () Bool)

(assert (=> b!4424757 (= e!2755048 (ListMap!2726 Nil!49575))))

(assert (= (and d!1341128 c!753198) b!4424756))

(assert (= (and d!1341128 (not c!753198)) b!4424757))

(declare-fun m!5104613 () Bool)

(assert (=> d!1341128 m!5104613))

(declare-fun m!5104615 () Bool)

(assert (=> d!1341128 m!5104615))

(declare-fun m!5104617 () Bool)

(assert (=> b!4424756 m!5104617))

(assert (=> b!4424756 m!5104617))

(declare-fun m!5104619 () Bool)

(assert (=> b!4424756 m!5104619))

(assert (=> d!1340906 d!1341128))

(declare-fun d!1341130 () Bool)

(assert (=> d!1341130 (= (eq!405 (extractMap!808 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))) (+!1079 (extractMap!808 (toList!3481 lt!1623534)) (tuple2!49367 key!3717 newValue!93))) (= (content!7952 (toList!3482 (extractMap!808 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))))) (content!7952 (toList!3482 (+!1079 (extractMap!808 (toList!3481 lt!1623534)) (tuple2!49367 key!3717 newValue!93))))))))

(declare-fun bs!756581 () Bool)

(assert (= bs!756581 d!1341130))

(declare-fun m!5104621 () Bool)

(assert (=> bs!756581 m!5104621))

(declare-fun m!5104623 () Bool)

(assert (=> bs!756581 m!5104623))

(assert (=> d!1340906 d!1341130))

(declare-fun d!1341132 () Bool)

(declare-fun res!1829196 () Bool)

(declare-fun e!2755053 () Bool)

(assert (=> d!1341132 (=> res!1829196 e!2755053)))

(assert (=> d!1341132 (= res!1829196 ((_ is Nil!49576) (toList!3481 lt!1623534)))))

(assert (=> d!1341132 (= (forall!9556 (toList!3481 lt!1623534) lambda!153750) e!2755053)))

(declare-fun b!4424766 () Bool)

(declare-fun e!2755054 () Bool)

(assert (=> b!4424766 (= e!2755053 e!2755054)))

(declare-fun res!1829197 () Bool)

(assert (=> b!4424766 (=> (not res!1829197) (not e!2755054))))

(assert (=> b!4424766 (= res!1829197 (dynLambda!20842 lambda!153750 (h!55259 (toList!3481 lt!1623534))))))

(declare-fun b!4424767 () Bool)

(assert (=> b!4424767 (= e!2755054 (forall!9556 (t!356638 (toList!3481 lt!1623534)) lambda!153750))))

(assert (= (and d!1341132 (not res!1829196)) b!4424766))

(assert (= (and b!4424766 res!1829197) b!4424767))

(declare-fun b_lambda!142971 () Bool)

(assert (=> (not b_lambda!142971) (not b!4424766)))

(declare-fun m!5104625 () Bool)

(assert (=> b!4424766 m!5104625))

(declare-fun m!5104627 () Bool)

(assert (=> b!4424767 m!5104627))

(assert (=> d!1340906 d!1341132))

(declare-fun d!1341134 () Bool)

(declare-fun e!2755055 () Bool)

(assert (=> d!1341134 e!2755055))

(declare-fun res!1829199 () Bool)

(assert (=> d!1341134 (=> (not res!1829199) (not e!2755055))))

(declare-fun lt!1624168 () ListLongMap!2131)

(assert (=> d!1341134 (= res!1829199 (contains!12072 lt!1624168 (_1!27978 (tuple2!49369 hash!366 newBucket!194))))))

(declare-fun lt!1624167 () List!49700)

(assert (=> d!1341134 (= lt!1624168 (ListLongMap!2132 lt!1624167))))

(declare-fun lt!1624166 () Unit!81703)

(declare-fun lt!1624165 () Unit!81703)

(assert (=> d!1341134 (= lt!1624166 lt!1624165)))

(assert (=> d!1341134 (= (getValueByKey!708 lt!1624167 (_1!27978 (tuple2!49369 hash!366 newBucket!194))) (Some!10721 (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341134 (= lt!1624165 (lemmaContainsTupThenGetReturnValue!443 lt!1624167 (_1!27978 (tuple2!49369 hash!366 newBucket!194)) (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341134 (= lt!1624167 (insertStrictlySorted!258 (toList!3481 lt!1623534) (_1!27978 (tuple2!49369 hash!366 newBucket!194)) (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341134 (= (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)) lt!1624168)))

(declare-fun b!4424768 () Bool)

(declare-fun res!1829198 () Bool)

(assert (=> b!4424768 (=> (not res!1829198) (not e!2755055))))

(assert (=> b!4424768 (= res!1829198 (= (getValueByKey!708 (toList!3481 lt!1624168) (_1!27978 (tuple2!49369 hash!366 newBucket!194))) (Some!10721 (_2!27978 (tuple2!49369 hash!366 newBucket!194)))))))

(declare-fun b!4424769 () Bool)

(assert (=> b!4424769 (= e!2755055 (contains!12078 (toList!3481 lt!1624168) (tuple2!49369 hash!366 newBucket!194)))))

(assert (= (and d!1341134 res!1829199) b!4424768))

(assert (= (and b!4424768 res!1829198) b!4424769))

(declare-fun m!5104629 () Bool)

(assert (=> d!1341134 m!5104629))

(declare-fun m!5104631 () Bool)

(assert (=> d!1341134 m!5104631))

(declare-fun m!5104633 () Bool)

(assert (=> d!1341134 m!5104633))

(declare-fun m!5104635 () Bool)

(assert (=> d!1341134 m!5104635))

(declare-fun m!5104637 () Bool)

(assert (=> b!4424768 m!5104637))

(declare-fun m!5104639 () Bool)

(assert (=> b!4424769 m!5104639))

(assert (=> d!1340906 d!1341134))

(assert (=> d!1340906 d!1340910))

(declare-fun d!1341136 () Bool)

(declare-fun e!2755056 () Bool)

(assert (=> d!1341136 e!2755056))

(declare-fun res!1829200 () Bool)

(assert (=> d!1341136 (=> (not res!1829200) (not e!2755056))))

(declare-fun lt!1624171 () ListMap!2725)

(assert (=> d!1341136 (= res!1829200 (contains!12073 lt!1624171 (_1!27977 (tuple2!49367 key!3717 newValue!93))))))

(declare-fun lt!1624172 () List!49699)

(assert (=> d!1341136 (= lt!1624171 (ListMap!2726 lt!1624172))))

(declare-fun lt!1624170 () Unit!81703)

(declare-fun lt!1624169 () Unit!81703)

(assert (=> d!1341136 (= lt!1624170 lt!1624169)))

(assert (=> d!1341136 (= (getValueByKey!707 lt!1624172 (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341136 (= lt!1624169 (lemmaContainsTupThenGetReturnValue!442 lt!1624172 (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341136 (= lt!1624172 (insertNoDuplicatedKeys!193 (toList!3482 (extractMap!808 (toList!3481 lt!1623534))) (_1!27977 (tuple2!49367 key!3717 newValue!93)) (_2!27977 (tuple2!49367 key!3717 newValue!93))))))

(assert (=> d!1341136 (= (+!1079 (extractMap!808 (toList!3481 lt!1623534)) (tuple2!49367 key!3717 newValue!93)) lt!1624171)))

(declare-fun b!4424770 () Bool)

(declare-fun res!1829201 () Bool)

(assert (=> b!4424770 (=> (not res!1829201) (not e!2755056))))

(assert (=> b!4424770 (= res!1829201 (= (getValueByKey!707 (toList!3482 lt!1624171) (_1!27977 (tuple2!49367 key!3717 newValue!93))) (Some!10720 (_2!27977 (tuple2!49367 key!3717 newValue!93)))))))

(declare-fun b!4424771 () Bool)

(assert (=> b!4424771 (= e!2755056 (contains!12077 (toList!3482 lt!1624171) (tuple2!49367 key!3717 newValue!93)))))

(assert (= (and d!1341136 res!1829200) b!4424770))

(assert (= (and b!4424770 res!1829201) b!4424771))

(declare-fun m!5104641 () Bool)

(assert (=> d!1341136 m!5104641))

(declare-fun m!5104643 () Bool)

(assert (=> d!1341136 m!5104643))

(declare-fun m!5104645 () Bool)

(assert (=> d!1341136 m!5104645))

(declare-fun m!5104647 () Bool)

(assert (=> d!1341136 m!5104647))

(declare-fun m!5104649 () Bool)

(assert (=> b!4424770 m!5104649))

(declare-fun m!5104651 () Bool)

(assert (=> b!4424771 m!5104651))

(assert (=> d!1340906 d!1341136))

(declare-fun d!1341138 () Bool)

(assert (=> d!1341138 (eq!405 (extractMap!808 (toList!3481 (+!1078 lt!1623534 (tuple2!49369 hash!366 newBucket!194)))) (+!1079 (extractMap!808 (toList!3481 lt!1623534)) (tuple2!49367 key!3717 newValue!93)))))

(assert (=> d!1341138 true))

(declare-fun _$9!212 () Unit!81703)

(assert (=> d!1341138 (= (choose!27917 lt!1623534 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!212)))

(declare-fun bs!756583 () Bool)

(assert (= bs!756583 d!1341138))

(assert (=> bs!756583 m!5103823))

(assert (=> bs!756583 m!5103397))

(assert (=> bs!756583 m!5103813))

(assert (=> bs!756583 m!5103811))

(assert (=> bs!756583 m!5103397))

(assert (=> bs!756583 m!5103811))

(assert (=> bs!756583 m!5103813))

(assert (=> bs!756583 m!5103817))

(assert (=> d!1340906 d!1341138))

(declare-fun d!1341164 () Bool)

(assert (=> d!1341164 (= (head!9214 (toList!3481 lm!1616)) (h!55259 (toList!3481 lm!1616)))))

(assert (=> d!1340918 d!1341164))

(declare-fun d!1341168 () Bool)

(declare-fun res!1829227 () Bool)

(declare-fun e!2755097 () Bool)

(assert (=> d!1341168 (=> res!1829227 e!2755097)))

(assert (=> d!1341168 (= res!1829227 ((_ is Nil!49575) (toList!3482 lt!1623538)))))

(assert (=> d!1341168 (= (forall!9557 (toList!3482 lt!1623538) lambda!153694) e!2755097)))

(declare-fun b!4424835 () Bool)

(declare-fun e!2755098 () Bool)

(assert (=> b!4424835 (= e!2755097 e!2755098)))

(declare-fun res!1829228 () Bool)

(assert (=> b!4424835 (=> (not res!1829228) (not e!2755098))))

(assert (=> b!4424835 (= res!1829228 (dynLambda!20843 lambda!153694 (h!55258 (toList!3482 lt!1623538))))))

(declare-fun b!4424836 () Bool)

(assert (=> b!4424836 (= e!2755098 (forall!9557 (t!356637 (toList!3482 lt!1623538)) lambda!153694))))

(assert (= (and d!1341168 (not res!1829227)) b!4424835))

(assert (= (and b!4424835 res!1829228) b!4424836))

(declare-fun b_lambda!142979 () Bool)

(assert (=> (not b_lambda!142979) (not b!4424835)))

(declare-fun m!5104739 () Bool)

(assert (=> b!4424835 m!5104739))

(declare-fun m!5104741 () Bool)

(assert (=> b!4424836 m!5104741))

(assert (=> b!4424243 d!1341168))

(declare-fun b!4424837 () Bool)

(declare-fun e!2755099 () Option!10721)

(assert (=> b!4424837 (= e!2755099 (Some!10720 (_2!27977 (h!55258 (toList!3482 lt!1623770)))))))

(declare-fun b!4424839 () Bool)

(declare-fun e!2755100 () Option!10721)

(assert (=> b!4424839 (= e!2755100 (getValueByKey!707 (t!356637 (toList!3482 lt!1623770)) (_1!27977 lt!1623530)))))

(declare-fun d!1341170 () Bool)

(declare-fun c!753220 () Bool)

(assert (=> d!1341170 (= c!753220 (and ((_ is Cons!49575) (toList!3482 lt!1623770)) (= (_1!27977 (h!55258 (toList!3482 lt!1623770))) (_1!27977 lt!1623530))))))

(assert (=> d!1341170 (= (getValueByKey!707 (toList!3482 lt!1623770) (_1!27977 lt!1623530)) e!2755099)))

(declare-fun b!4424840 () Bool)

(assert (=> b!4424840 (= e!2755100 None!10720)))

(declare-fun b!4424838 () Bool)

(assert (=> b!4424838 (= e!2755099 e!2755100)))

(declare-fun c!753221 () Bool)

(assert (=> b!4424838 (= c!753221 (and ((_ is Cons!49575) (toList!3482 lt!1623770)) (not (= (_1!27977 (h!55258 (toList!3482 lt!1623770))) (_1!27977 lt!1623530)))))))

(assert (= (and d!1341170 c!753220) b!4424837))

(assert (= (and d!1341170 (not c!753220)) b!4424838))

(assert (= (and b!4424838 c!753221) b!4424839))

(assert (= (and b!4424838 (not c!753221)) b!4424840))

(declare-fun m!5104749 () Bool)

(assert (=> b!4424839 m!5104749))

(assert (=> b!4424269 d!1341170))

(declare-fun d!1341172 () Bool)

(declare-fun res!1829229 () Bool)

(declare-fun e!2755101 () Bool)

(assert (=> d!1341172 (=> res!1829229 e!2755101)))

(assert (=> d!1341172 (= res!1829229 ((_ is Nil!49575) (toList!3482 lt!1623538)))))

(assert (=> d!1341172 (= (forall!9557 (toList!3482 lt!1623538) (ite c!753085 lambda!153689 lambda!153691)) e!2755101)))

(declare-fun b!4424841 () Bool)

(declare-fun e!2755102 () Bool)

(assert (=> b!4424841 (= e!2755101 e!2755102)))

(declare-fun res!1829230 () Bool)

(assert (=> b!4424841 (=> (not res!1829230) (not e!2755102))))

(assert (=> b!4424841 (= res!1829230 (dynLambda!20843 (ite c!753085 lambda!153689 lambda!153691) (h!55258 (toList!3482 lt!1623538))))))

(declare-fun b!4424842 () Bool)

(assert (=> b!4424842 (= e!2755102 (forall!9557 (t!356637 (toList!3482 lt!1623538)) (ite c!753085 lambda!153689 lambda!153691)))))

(assert (= (and d!1341172 (not res!1829229)) b!4424841))

(assert (= (and b!4424841 res!1829230) b!4424842))

(declare-fun b_lambda!142981 () Bool)

(assert (=> (not b_lambda!142981) (not b!4424841)))

(declare-fun m!5104765 () Bool)

(assert (=> b!4424841 m!5104765))

(declare-fun m!5104767 () Bool)

(assert (=> b!4424842 m!5104767))

(assert (=> bm!307792 d!1341172))

(declare-fun d!1341176 () Bool)

(declare-fun choose!27936 (Hashable!5141 K!10940) (_ BitVec 64))

(assert (=> d!1341176 (= (hash!2116 hashF!1220 key!3717) (choose!27936 hashF!1220 key!3717))))

(declare-fun bs!756584 () Bool)

(assert (= bs!756584 d!1341176))

(declare-fun m!5104769 () Bool)

(assert (=> bs!756584 m!5104769))

(assert (=> d!1340886 d!1341176))

(declare-fun d!1341178 () Bool)

(assert (=> d!1341178 (= (isEmpty!28342 (toList!3481 lm!1616)) ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1340858 d!1341178))

(declare-fun bs!756585 () Bool)

(declare-fun b!4424849 () Bool)

(assert (= bs!756585 (and b!4424849 b!4424707)))

(declare-fun lambda!153812 () Int)

(assert (=> bs!756585 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153812 lambda!153807))))

(declare-fun bs!756586 () Bool)

(assert (= bs!756586 (and b!4424849 b!4424468)))

(assert (=> bs!756586 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153812 lambda!153776))))

(declare-fun bs!756587 () Bool)

(assert (= bs!756587 (and b!4424849 b!4424704)))

(assert (=> bs!756587 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153812 lambda!153808))))

(declare-fun bs!756588 () Bool)

(assert (= bs!756588 (and b!4424849 b!4424471)))

(assert (=> bs!756588 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153812 lambda!153775))))

(declare-fun bs!756589 () Bool)

(assert (= bs!756589 (and b!4424849 d!1341054)))

(assert (=> bs!756589 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624042) (= lambda!153812 lambda!153798))))

(declare-fun bs!756590 () Bool)

(assert (= bs!756590 (and b!4424849 b!4424526)))

(assert (=> bs!756590 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153812 lambda!153786))))

(assert (=> bs!756590 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623988) (= lambda!153812 lambda!153787))))

(assert (=> bs!756586 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623954) (= lambda!153812 lambda!153777))))

(declare-fun bs!756591 () Bool)

(assert (= bs!756591 (and b!4424849 b!4424307)))

(assert (=> bs!756591 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153812 lambda!153740))))

(declare-fun bs!756592 () Bool)

(assert (= bs!756592 (and b!4424849 b!4424242)))

(assert (=> bs!756592 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623689) (= lambda!153812 lambda!153691))))

(assert (=> bs!756592 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623538) (= lambda!153812 lambda!153690))))

(assert (=> bs!756587 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624143) (= lambda!153812 lambda!153809))))

(declare-fun bs!756593 () Bool)

(assert (= bs!756593 (and b!4424849 d!1341106)))

(assert (=> bs!756593 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624139) (= lambda!153812 lambda!153810))))

(declare-fun bs!756594 () Bool)

(assert (= bs!756594 (and b!4424849 b!4424580)))

(assert (=> bs!756594 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624046) (= lambda!153812 lambda!153797))))

(declare-fun bs!756595 () Bool)

(assert (= bs!756595 (and b!4424849 d!1341020)))

(assert (=> bs!756595 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623984) (= lambda!153812 lambda!153788))))

(declare-fun bs!756596 () Bool)

(assert (= bs!756596 (and b!4424849 b!4424583)))

(assert (=> bs!756596 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153812 lambda!153794))))

(assert (=> bs!756594 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153812 lambda!153796))))

(declare-fun bs!756597 () Bool)

(assert (= bs!756597 (and b!4424849 d!1341068)))

(assert (=> bs!756597 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153812 lambda!153801))))

(declare-fun bs!756598 () Bool)

(assert (= bs!756598 (and b!4424849 b!4424304)))

(assert (=> bs!756598 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623791) (= lambda!153812 lambda!153742))))

(declare-fun bs!756599 () Bool)

(assert (= bs!756599 (and b!4424849 d!1340812)))

(assert (=> bs!756599 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623685) (= lambda!153812 lambda!153694))))

(declare-fun bs!756600 () Bool)

(assert (= bs!756600 (and b!4424849 d!1340894)))

(assert (=> bs!756600 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623787) (= lambda!153812 lambda!153743))))

(declare-fun bs!756601 () Bool)

(assert (= bs!756601 (and b!4424849 d!1341096)))

(assert (=> bs!756601 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623791) (= lambda!153812 lambda!153806))))

(declare-fun bs!756602 () Bool)

(assert (= bs!756602 (and b!4424849 b!4424529)))

(assert (=> bs!756602 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153812 lambda!153785))))

(assert (=> bs!756598 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153812 lambda!153741))))

(declare-fun bs!756603 () Bool)

(assert (= bs!756603 (and b!4424849 d!1340882)))

(assert (=> bs!756603 (not (= lambda!153812 lambda!153732))))

(declare-fun bs!756604 () Bool)

(assert (= bs!756604 (and b!4424849 d!1340982)))

(assert (=> bs!756604 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623950) (= lambda!153812 lambda!153778))))

(declare-fun bs!756605 () Bool)

(assert (= bs!756605 (and b!4424849 b!4424245)))

(assert (=> bs!756605 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623538) (= lambda!153812 lambda!153689))))

(assert (=> b!4424849 true))

(declare-fun bs!756606 () Bool)

(declare-fun b!4424846 () Bool)

(assert (= bs!756606 (and b!4424846 b!4424707)))

(declare-fun lambda!153813 () Int)

(assert (=> bs!756606 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153813 lambda!153807))))

(declare-fun bs!756607 () Bool)

(assert (= bs!756607 (and b!4424846 b!4424468)))

(assert (=> bs!756607 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153813 lambda!153776))))

(declare-fun bs!756608 () Bool)

(assert (= bs!756608 (and b!4424846 b!4424704)))

(assert (=> bs!756608 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153813 lambda!153808))))

(declare-fun bs!756609 () Bool)

(assert (= bs!756609 (and b!4424846 b!4424471)))

(assert (=> bs!756609 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153813 lambda!153775))))

(declare-fun bs!756610 () Bool)

(assert (= bs!756610 (and b!4424846 d!1341054)))

(assert (=> bs!756610 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624042) (= lambda!153813 lambda!153798))))

(declare-fun bs!756611 () Bool)

(assert (= bs!756611 (and b!4424846 b!4424526)))

(assert (=> bs!756611 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153813 lambda!153786))))

(assert (=> bs!756611 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623988) (= lambda!153813 lambda!153787))))

(assert (=> bs!756607 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623954) (= lambda!153813 lambda!153777))))

(declare-fun bs!756612 () Bool)

(assert (= bs!756612 (and b!4424846 b!4424307)))

(assert (=> bs!756612 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153813 lambda!153740))))

(declare-fun bs!756613 () Bool)

(assert (= bs!756613 (and b!4424846 b!4424242)))

(assert (=> bs!756613 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623689) (= lambda!153813 lambda!153691))))

(assert (=> bs!756613 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623538) (= lambda!153813 lambda!153690))))

(assert (=> bs!756608 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624143) (= lambda!153813 lambda!153809))))

(declare-fun bs!756614 () Bool)

(assert (= bs!756614 (and b!4424846 d!1341106)))

(assert (=> bs!756614 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624139) (= lambda!153813 lambda!153810))))

(declare-fun bs!756615 () Bool)

(assert (= bs!756615 (and b!4424846 b!4424849)))

(assert (=> bs!756615 (= lambda!153813 lambda!153812)))

(declare-fun bs!756616 () Bool)

(assert (= bs!756616 (and b!4424846 b!4424580)))

(assert (=> bs!756616 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624046) (= lambda!153813 lambda!153797))))

(declare-fun bs!756617 () Bool)

(assert (= bs!756617 (and b!4424846 d!1341020)))

(assert (=> bs!756617 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623984) (= lambda!153813 lambda!153788))))

(declare-fun bs!756618 () Bool)

(assert (= bs!756618 (and b!4424846 b!4424583)))

(assert (=> bs!756618 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153813 lambda!153794))))

(assert (=> bs!756616 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153813 lambda!153796))))

(declare-fun bs!756619 () Bool)

(assert (= bs!756619 (and b!4424846 d!1341068)))

(assert (=> bs!756619 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153813 lambda!153801))))

(declare-fun bs!756620 () Bool)

(assert (= bs!756620 (and b!4424846 b!4424304)))

(assert (=> bs!756620 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623791) (= lambda!153813 lambda!153742))))

(declare-fun bs!756621 () Bool)

(assert (= bs!756621 (and b!4424846 d!1340812)))

(assert (=> bs!756621 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623685) (= lambda!153813 lambda!153694))))

(declare-fun bs!756622 () Bool)

(assert (= bs!756622 (and b!4424846 d!1340894)))

(assert (=> bs!756622 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623787) (= lambda!153813 lambda!153743))))

(declare-fun bs!756623 () Bool)

(assert (= bs!756623 (and b!4424846 d!1341096)))

(assert (=> bs!756623 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623791) (= lambda!153813 lambda!153806))))

(declare-fun bs!756624 () Bool)

(assert (= bs!756624 (and b!4424846 b!4424529)))

(assert (=> bs!756624 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153813 lambda!153785))))

(assert (=> bs!756620 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623532) (= lambda!153813 lambda!153741))))

(declare-fun bs!756625 () Bool)

(assert (= bs!756625 (and b!4424846 d!1340882)))

(assert (=> bs!756625 (not (= lambda!153813 lambda!153732))))

(declare-fun bs!756626 () Bool)

(assert (= bs!756626 (and b!4424846 d!1340982)))

(assert (=> bs!756626 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623950) (= lambda!153813 lambda!153778))))

(declare-fun bs!756627 () Bool)

(assert (= bs!756627 (and b!4424846 b!4424245)))

(assert (=> bs!756627 (= (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1623538) (= lambda!153813 lambda!153689))))

(assert (=> b!4424846 true))

(declare-fun lt!1624218 () ListMap!2725)

(declare-fun lambda!153814 () Int)

(assert (=> bs!756606 (= (= lt!1624218 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153814 lambda!153807))))

(assert (=> bs!756607 (= (= lt!1624218 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153814 lambda!153776))))

(assert (=> bs!756608 (= (= lt!1624218 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153814 lambda!153808))))

(assert (=> bs!756609 (= (= lt!1624218 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153814 lambda!153775))))

(assert (=> b!4424846 (= (= lt!1624218 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153814 lambda!153813))))

(assert (=> bs!756610 (= (= lt!1624218 lt!1624042) (= lambda!153814 lambda!153798))))

(assert (=> bs!756611 (= (= lt!1624218 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153814 lambda!153786))))

(assert (=> bs!756611 (= (= lt!1624218 lt!1623988) (= lambda!153814 lambda!153787))))

(assert (=> bs!756607 (= (= lt!1624218 lt!1623954) (= lambda!153814 lambda!153777))))

(assert (=> bs!756612 (= (= lt!1624218 lt!1623532) (= lambda!153814 lambda!153740))))

(assert (=> bs!756613 (= (= lt!1624218 lt!1623689) (= lambda!153814 lambda!153691))))

(assert (=> bs!756613 (= (= lt!1624218 lt!1623538) (= lambda!153814 lambda!153690))))

(assert (=> bs!756608 (= (= lt!1624218 lt!1624143) (= lambda!153814 lambda!153809))))

(assert (=> bs!756614 (= (= lt!1624218 lt!1624139) (= lambda!153814 lambda!153810))))

(assert (=> bs!756615 (= (= lt!1624218 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153814 lambda!153812))))

(assert (=> bs!756616 (= (= lt!1624218 lt!1624046) (= lambda!153814 lambda!153797))))

(assert (=> bs!756617 (= (= lt!1624218 lt!1623984) (= lambda!153814 lambda!153788))))

(assert (=> bs!756618 (= (= lt!1624218 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153814 lambda!153794))))

(assert (=> bs!756616 (= (= lt!1624218 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153814 lambda!153796))))

(assert (=> bs!756619 (= (= lt!1624218 lt!1623532) (= lambda!153814 lambda!153801))))

(assert (=> bs!756620 (= (= lt!1624218 lt!1623791) (= lambda!153814 lambda!153742))))

(assert (=> bs!756621 (= (= lt!1624218 lt!1623685) (= lambda!153814 lambda!153694))))

(assert (=> bs!756622 (= (= lt!1624218 lt!1623787) (= lambda!153814 lambda!153743))))

(assert (=> bs!756623 (= (= lt!1624218 lt!1623791) (= lambda!153814 lambda!153806))))

(assert (=> bs!756624 (= (= lt!1624218 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153814 lambda!153785))))

(assert (=> bs!756620 (= (= lt!1624218 lt!1623532) (= lambda!153814 lambda!153741))))

(assert (=> bs!756625 (not (= lambda!153814 lambda!153732))))

(assert (=> bs!756626 (= (= lt!1624218 lt!1623950) (= lambda!153814 lambda!153778))))

(assert (=> bs!756627 (= (= lt!1624218 lt!1623538) (= lambda!153814 lambda!153689))))

(assert (=> b!4424846 true))

(declare-fun bs!756628 () Bool)

(declare-fun d!1341180 () Bool)

(assert (= bs!756628 (and d!1341180 b!4424707)))

(declare-fun lt!1624214 () ListMap!2725)

(declare-fun lambda!153817 () Int)

(assert (=> bs!756628 (= (= lt!1624214 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153817 lambda!153807))))

(declare-fun bs!756629 () Bool)

(assert (= bs!756629 (and d!1341180 b!4424468)))

(assert (=> bs!756629 (= (= lt!1624214 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153817 lambda!153776))))

(declare-fun bs!756630 () Bool)

(assert (= bs!756630 (and d!1341180 b!4424704)))

(assert (=> bs!756630 (= (= lt!1624214 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153817 lambda!153808))))

(declare-fun bs!756631 () Bool)

(assert (= bs!756631 (and d!1341180 b!4424471)))

(assert (=> bs!756631 (= (= lt!1624214 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153817 lambda!153775))))

(declare-fun bs!756632 () Bool)

(assert (= bs!756632 (and d!1341180 b!4424846)))

(assert (=> bs!756632 (= (= lt!1624214 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153817 lambda!153813))))

(assert (=> bs!756632 (= (= lt!1624214 lt!1624218) (= lambda!153817 lambda!153814))))

(declare-fun bs!756633 () Bool)

(assert (= bs!756633 (and d!1341180 d!1341054)))

(assert (=> bs!756633 (= (= lt!1624214 lt!1624042) (= lambda!153817 lambda!153798))))

(declare-fun bs!756634 () Bool)

(assert (= bs!756634 (and d!1341180 b!4424526)))

(assert (=> bs!756634 (= (= lt!1624214 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153817 lambda!153786))))

(assert (=> bs!756634 (= (= lt!1624214 lt!1623988) (= lambda!153817 lambda!153787))))

(assert (=> bs!756629 (= (= lt!1624214 lt!1623954) (= lambda!153817 lambda!153777))))

(declare-fun bs!756635 () Bool)

(assert (= bs!756635 (and d!1341180 b!4424307)))

(assert (=> bs!756635 (= (= lt!1624214 lt!1623532) (= lambda!153817 lambda!153740))))

(declare-fun bs!756636 () Bool)

(assert (= bs!756636 (and d!1341180 b!4424242)))

(assert (=> bs!756636 (= (= lt!1624214 lt!1623689) (= lambda!153817 lambda!153691))))

(assert (=> bs!756636 (= (= lt!1624214 lt!1623538) (= lambda!153817 lambda!153690))))

(assert (=> bs!756630 (= (= lt!1624214 lt!1624143) (= lambda!153817 lambda!153809))))

(declare-fun bs!756637 () Bool)

(assert (= bs!756637 (and d!1341180 d!1341106)))

(assert (=> bs!756637 (= (= lt!1624214 lt!1624139) (= lambda!153817 lambda!153810))))

(declare-fun bs!756638 () Bool)

(assert (= bs!756638 (and d!1341180 b!4424849)))

(assert (=> bs!756638 (= (= lt!1624214 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153817 lambda!153812))))

(declare-fun bs!756639 () Bool)

(assert (= bs!756639 (and d!1341180 b!4424580)))

(assert (=> bs!756639 (= (= lt!1624214 lt!1624046) (= lambda!153817 lambda!153797))))

(declare-fun bs!756640 () Bool)

(assert (= bs!756640 (and d!1341180 d!1341020)))

(assert (=> bs!756640 (= (= lt!1624214 lt!1623984) (= lambda!153817 lambda!153788))))

(declare-fun bs!756641 () Bool)

(assert (= bs!756641 (and d!1341180 b!4424583)))

(assert (=> bs!756641 (= (= lt!1624214 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153817 lambda!153794))))

(assert (=> bs!756639 (= (= lt!1624214 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153817 lambda!153796))))

(declare-fun bs!756645 () Bool)

(assert (= bs!756645 (and d!1341180 d!1341068)))

(assert (=> bs!756645 (= (= lt!1624214 lt!1623532) (= lambda!153817 lambda!153801))))

(declare-fun bs!756647 () Bool)

(assert (= bs!756647 (and d!1341180 b!4424304)))

(assert (=> bs!756647 (= (= lt!1624214 lt!1623791) (= lambda!153817 lambda!153742))))

(declare-fun bs!756649 () Bool)

(assert (= bs!756649 (and d!1341180 d!1340812)))

(assert (=> bs!756649 (= (= lt!1624214 lt!1623685) (= lambda!153817 lambda!153694))))

(declare-fun bs!756650 () Bool)

(assert (= bs!756650 (and d!1341180 d!1340894)))

(assert (=> bs!756650 (= (= lt!1624214 lt!1623787) (= lambda!153817 lambda!153743))))

(declare-fun bs!756652 () Bool)

(assert (= bs!756652 (and d!1341180 d!1341096)))

(assert (=> bs!756652 (= (= lt!1624214 lt!1623791) (= lambda!153817 lambda!153806))))

(declare-fun bs!756654 () Bool)

(assert (= bs!756654 (and d!1341180 b!4424529)))

(assert (=> bs!756654 (= (= lt!1624214 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153817 lambda!153785))))

(assert (=> bs!756647 (= (= lt!1624214 lt!1623532) (= lambda!153817 lambda!153741))))

(declare-fun bs!756656 () Bool)

(assert (= bs!756656 (and d!1341180 d!1340882)))

(assert (=> bs!756656 (not (= lambda!153817 lambda!153732))))

(declare-fun bs!756658 () Bool)

(assert (= bs!756658 (and d!1341180 d!1340982)))

(assert (=> bs!756658 (= (= lt!1624214 lt!1623950) (= lambda!153817 lambda!153778))))

(declare-fun bs!756660 () Bool)

(assert (= bs!756660 (and d!1341180 b!4424245)))

(assert (=> bs!756660 (= (= lt!1624214 lt!1623538) (= lambda!153817 lambda!153689))))

(assert (=> d!1341180 true))

(declare-fun b!4424845 () Bool)

(declare-fun e!2755107 () Bool)

(assert (=> b!4424845 (= e!2755107 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) lambda!153814))))

(declare-fun e!2755106 () ListMap!2725)

(assert (=> b!4424846 (= e!2755106 lt!1624218)))

(declare-fun lt!1624222 () ListMap!2725)

(assert (=> b!4424846 (= lt!1624222 (+!1079 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))))

(assert (=> b!4424846 (= lt!1624218 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))) (+!1079 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun lt!1624205 () Unit!81703)

(declare-fun call!307863 () Unit!81703)

(assert (=> b!4424846 (= lt!1624205 call!307863)))

(declare-fun call!307865 () Bool)

(assert (=> b!4424846 call!307865))

(declare-fun lt!1624220 () Unit!81703)

(assert (=> b!4424846 (= lt!1624220 lt!1624205)))

(assert (=> b!4424846 (forall!9557 (toList!3482 lt!1624222) lambda!153814)))

(declare-fun lt!1624217 () Unit!81703)

(declare-fun Unit!81864 () Unit!81703)

(assert (=> b!4424846 (= lt!1624217 Unit!81864)))

(assert (=> b!4424846 (forall!9557 (t!356637 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))) lambda!153814)))

(declare-fun lt!1624202 () Unit!81703)

(declare-fun Unit!81865 () Unit!81703)

(assert (=> b!4424846 (= lt!1624202 Unit!81865)))

(declare-fun lt!1624204 () Unit!81703)

(declare-fun Unit!81866 () Unit!81703)

(assert (=> b!4424846 (= lt!1624204 Unit!81866)))

(declare-fun lt!1624207 () Unit!81703)

(assert (=> b!4424846 (= lt!1624207 (forallContained!2088 (toList!3482 lt!1624222) lambda!153814 (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))))

(assert (=> b!4424846 (contains!12073 lt!1624222 (_1!27977 (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624208 () Unit!81703)

(declare-fun Unit!81867 () Unit!81703)

(assert (=> b!4424846 (= lt!1624208 Unit!81867)))

(assert (=> b!4424846 (contains!12073 lt!1624218 (_1!27977 (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624203 () Unit!81703)

(declare-fun Unit!81868 () Unit!81703)

(assert (=> b!4424846 (= lt!1624203 Unit!81868)))

(assert (=> b!4424846 (forall!9557 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))) lambda!153814)))

(declare-fun lt!1624213 () Unit!81703)

(declare-fun Unit!81869 () Unit!81703)

(assert (=> b!4424846 (= lt!1624213 Unit!81869)))

(assert (=> b!4424846 (forall!9557 (toList!3482 lt!1624222) lambda!153814)))

(declare-fun lt!1624221 () Unit!81703)

(declare-fun Unit!81870 () Unit!81703)

(assert (=> b!4424846 (= lt!1624221 Unit!81870)))

(declare-fun lt!1624219 () Unit!81703)

(declare-fun Unit!81871 () Unit!81703)

(assert (=> b!4424846 (= lt!1624219 Unit!81871)))

(declare-fun lt!1624210 () Unit!81703)

(assert (=> b!4424846 (= lt!1624210 (addForallContainsKeyThenBeforeAdding!170 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624218 (_1!27977 (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))))))))

(declare-fun call!307864 () Bool)

(assert (=> b!4424846 call!307864))

(declare-fun lt!1624216 () Unit!81703)

(assert (=> b!4424846 (= lt!1624216 lt!1624210)))

(assert (=> b!4424846 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) lambda!153814)))

(declare-fun lt!1624211 () Unit!81703)

(declare-fun Unit!81872 () Unit!81703)

(assert (=> b!4424846 (= lt!1624211 Unit!81872)))

(declare-fun res!1829235 () Bool)

(assert (=> b!4424846 (= res!1829235 (forall!9557 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))) lambda!153814))))

(assert (=> b!4424846 (=> (not res!1829235) (not e!2755107))))

(assert (=> b!4424846 e!2755107))

(declare-fun lt!1624212 () Unit!81703)

(declare-fun Unit!81873 () Unit!81703)

(assert (=> b!4424846 (= lt!1624212 Unit!81873)))

(declare-fun e!2755105 () Bool)

(assert (=> d!1341180 e!2755105))

(declare-fun res!1829234 () Bool)

(assert (=> d!1341180 (=> (not res!1829234) (not e!2755105))))

(assert (=> d!1341180 (= res!1829234 (forall!9557 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))) lambda!153817))))

(assert (=> d!1341180 (= lt!1624214 e!2755106)))

(declare-fun c!753222 () Bool)

(assert (=> d!1341180 (= c!753222 ((_ is Nil!49575) (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))))))

(assert (=> d!1341180 (noDuplicateKeys!747 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1341180 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) lt!1624214)))

(declare-fun bm!307858 () Bool)

(assert (=> bm!307858 (= call!307864 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (ite c!753222 lambda!153812 lambda!153814)))))

(declare-fun bm!307859 () Bool)

(assert (=> bm!307859 (= call!307865 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (ite c!753222 lambda!153812 lambda!153813)))))

(declare-fun b!4424847 () Bool)

(declare-fun res!1829233 () Bool)

(assert (=> b!4424847 (=> (not res!1829233) (not e!2755105))))

(assert (=> b!4424847 (= res!1829233 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) lambda!153817))))

(declare-fun bm!307860 () Bool)

(assert (=> bm!307860 (= call!307863 (lemmaContainsAllItsOwnKeys!170 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))))))

(declare-fun b!4424848 () Bool)

(assert (=> b!4424848 (= e!2755105 (invariantList!803 (toList!3482 lt!1624214)))))

(assert (=> b!4424849 (= e!2755106 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))))))

(declare-fun lt!1624209 () Unit!81703)

(assert (=> b!4424849 (= lt!1624209 call!307863)))

(assert (=> b!4424849 call!307865))

(declare-fun lt!1624206 () Unit!81703)

(assert (=> b!4424849 (= lt!1624206 lt!1624209)))

(assert (=> b!4424849 call!307864))

(declare-fun lt!1624215 () Unit!81703)

(declare-fun Unit!81874 () Unit!81703)

(assert (=> b!4424849 (= lt!1624215 Unit!81874)))

(assert (= (and d!1341180 c!753222) b!4424849))

(assert (= (and d!1341180 (not c!753222)) b!4424846))

(assert (= (and b!4424846 res!1829235) b!4424845))

(assert (= (or b!4424849 b!4424846) bm!307860))

(assert (= (or b!4424849 b!4424846) bm!307859))

(assert (= (or b!4424849 b!4424846) bm!307858))

(assert (= (and d!1341180 res!1829234) b!4424847))

(assert (= (and b!4424847 res!1829233) b!4424848))

(declare-fun m!5104783 () Bool)

(assert (=> d!1341180 m!5104783))

(declare-fun m!5104785 () Bool)

(assert (=> d!1341180 m!5104785))

(declare-fun m!5104787 () Bool)

(assert (=> bm!307859 m!5104787))

(declare-fun m!5104789 () Bool)

(assert (=> b!4424845 m!5104789))

(declare-fun m!5104791 () Bool)

(assert (=> b!4424848 m!5104791))

(assert (=> bm!307860 m!5103849))

(declare-fun m!5104793 () Bool)

(assert (=> bm!307860 m!5104793))

(declare-fun m!5104795 () Bool)

(assert (=> b!4424847 m!5104795))

(declare-fun m!5104797 () Bool)

(assert (=> bm!307858 m!5104797))

(declare-fun m!5104799 () Bool)

(assert (=> b!4424846 m!5104799))

(declare-fun m!5104801 () Bool)

(assert (=> b!4424846 m!5104801))

(declare-fun m!5104803 () Bool)

(assert (=> b!4424846 m!5104803))

(assert (=> b!4424846 m!5103849))

(declare-fun m!5104805 () Bool)

(assert (=> b!4424846 m!5104805))

(assert (=> b!4424846 m!5104801))

(assert (=> b!4424846 m!5104789))

(assert (=> b!4424846 m!5104799))

(assert (=> b!4424846 m!5103849))

(declare-fun m!5104807 () Bool)

(assert (=> b!4424846 m!5104807))

(declare-fun m!5104809 () Bool)

(assert (=> b!4424846 m!5104809))

(assert (=> b!4424846 m!5104805))

(declare-fun m!5104811 () Bool)

(assert (=> b!4424846 m!5104811))

(declare-fun m!5104813 () Bool)

(assert (=> b!4424846 m!5104813))

(declare-fun m!5104815 () Bool)

(assert (=> b!4424846 m!5104815))

(assert (=> b!4424337 d!1341180))

(declare-fun bs!756673 () Bool)

(declare-fun d!1341186 () Bool)

(assert (= bs!756673 (and d!1341186 d!1340910)))

(declare-fun lambda!153823 () Int)

(assert (=> bs!756673 (= lambda!153823 lambda!153753)))

(declare-fun bs!756676 () Bool)

(assert (= bs!756676 (and d!1341186 d!1341128)))

(assert (=> bs!756676 (= lambda!153823 lambda!153811)))

(declare-fun bs!756678 () Bool)

(assert (= bs!756678 (and d!1341186 d!1340952)))

(assert (=> bs!756678 (= lambda!153823 lambda!153759)))

(declare-fun bs!756679 () Bool)

(assert (= bs!756679 (and d!1341186 d!1340890)))

(assert (=> bs!756679 (not (= lambda!153823 lambda!153739))))

(declare-fun bs!756682 () Bool)

(assert (= bs!756682 (and d!1341186 d!1340986)))

(assert (=> bs!756682 (= lambda!153823 lambda!153779)))

(declare-fun bs!756684 () Bool)

(assert (= bs!756684 (and d!1341186 d!1340922)))

(assert (=> bs!756684 (= lambda!153823 lambda!153754)))

(declare-fun bs!756686 () Bool)

(assert (= bs!756686 (and d!1341186 d!1340906)))

(assert (=> bs!756686 (= lambda!153823 lambda!153750)))

(declare-fun bs!756688 () Bool)

(assert (= bs!756688 (and d!1341186 d!1341030)))

(assert (=> bs!756688 (= lambda!153823 lambda!153789)))

(declare-fun bs!756690 () Bool)

(assert (= bs!756690 (and d!1341186 d!1340954)))

(assert (=> bs!756690 (= lambda!153823 lambda!153762)))

(declare-fun bs!756692 () Bool)

(assert (= bs!756692 (and d!1341186 start!431492)))

(assert (=> bs!756692 (= lambda!153823 lambda!153648)))

(declare-fun bs!756693 () Bool)

(assert (= bs!756693 (and d!1341186 d!1340942)))

(assert (=> bs!756693 (= lambda!153823 lambda!153758)))

(declare-fun bs!756695 () Bool)

(assert (= bs!756695 (and d!1341186 d!1340930)))

(assert (=> bs!756695 (= lambda!153823 lambda!153755)))

(declare-fun lt!1624248 () ListMap!2725)

(assert (=> d!1341186 (invariantList!803 (toList!3482 lt!1624248))))

(declare-fun e!2755112 () ListMap!2725)

(assert (=> d!1341186 (= lt!1624248 e!2755112)))

(declare-fun c!753224 () Bool)

(assert (=> d!1341186 (= c!753224 ((_ is Cons!49576) (t!356638 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1341186 (forall!9556 (t!356638 (tail!7267 (toList!3481 lm!1616))) lambda!153823)))

(assert (=> d!1341186 (= (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616)))) lt!1624248)))

(declare-fun b!4424857 () Bool)

(assert (=> b!4424857 (= e!2755112 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (t!356638 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun b!4424858 () Bool)

(assert (=> b!4424858 (= e!2755112 (ListMap!2726 Nil!49575))))

(assert (= (and d!1341186 c!753224) b!4424857))

(assert (= (and d!1341186 (not c!753224)) b!4424858))

(declare-fun m!5104817 () Bool)

(assert (=> d!1341186 m!5104817))

(declare-fun m!5104819 () Bool)

(assert (=> d!1341186 m!5104819))

(declare-fun m!5104821 () Bool)

(assert (=> b!4424857 m!5104821))

(assert (=> b!4424857 m!5104821))

(declare-fun m!5104823 () Bool)

(assert (=> b!4424857 m!5104823))

(assert (=> b!4424337 d!1341186))

(declare-fun d!1341188 () Bool)

(declare-fun lt!1624251 () Bool)

(assert (=> d!1341188 (= lt!1624251 (select (content!7953 (keys!16924 lt!1623543)) key!3717))))

(declare-fun e!2755117 () Bool)

(assert (=> d!1341188 (= lt!1624251 e!2755117)))

(declare-fun res!1829245 () Bool)

(assert (=> d!1341188 (=> (not res!1829245) (not e!2755117))))

(assert (=> d!1341188 (= res!1829245 ((_ is Cons!49578) (keys!16924 lt!1623543)))))

(assert (=> d!1341188 (= (contains!12079 (keys!16924 lt!1623543) key!3717) lt!1624251)))

(declare-fun b!4424863 () Bool)

(declare-fun e!2755118 () Bool)

(assert (=> b!4424863 (= e!2755117 e!2755118)))

(declare-fun res!1829244 () Bool)

(assert (=> b!4424863 (=> res!1829244 e!2755118)))

(assert (=> b!4424863 (= res!1829244 (= (h!55263 (keys!16924 lt!1623543)) key!3717))))

(declare-fun b!4424864 () Bool)

(assert (=> b!4424864 (= e!2755118 (contains!12079 (t!356640 (keys!16924 lt!1623543)) key!3717))))

(assert (= (and d!1341188 res!1829245) b!4424863))

(assert (= (and b!4424863 (not res!1829244)) b!4424864))

(assert (=> d!1341188 m!5103951))

(declare-fun m!5104825 () Bool)

(assert (=> d!1341188 m!5104825))

(declare-fun m!5104827 () Bool)

(assert (=> d!1341188 m!5104827))

(declare-fun m!5104829 () Bool)

(assert (=> b!4424864 m!5104829))

(assert (=> b!4424394 d!1341188))

(declare-fun bs!756710 () Bool)

(declare-fun b!4424880 () Bool)

(assert (= bs!756710 (and b!4424880 b!4424478)))

(declare-fun lambda!153830 () Int)

(assert (=> bs!756710 (= lambda!153830 lambda!153782)))

(declare-fun bs!756711 () Bool)

(assert (= bs!756711 (and b!4424880 b!4424456)))

(assert (=> bs!756711 (= (= (toList!3482 lt!1623543) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153830 lambda!153771))))

(declare-fun bs!756712 () Bool)

(assert (= bs!756712 (and b!4424880 b!4424454)))

(assert (=> bs!756712 (= (= (toList!3482 lt!1623543) (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153830 lambda!153773))))

(declare-fun bs!756713 () Bool)

(assert (= bs!756713 (and b!4424880 b!4424457)))

(assert (=> bs!756713 (= (= (toList!3482 lt!1623543) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153830 lambda!153772))))

(declare-fun bs!756714 () Bool)

(assert (= bs!756714 (and b!4424880 b!4424481)))

(assert (=> bs!756714 (= (= (toList!3482 lt!1623543) (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543)))) (= lambda!153830 lambda!153781))))

(declare-fun bs!756715 () Bool)

(assert (= bs!756715 (and b!4424880 b!4424480)))

(assert (=> bs!756715 (= (= (toList!3482 lt!1623543) (t!356637 (toList!3482 lt!1623543))) (= lambda!153830 lambda!153780))))

(assert (=> b!4424880 true))

(declare-fun bs!756716 () Bool)

(declare-fun b!4424881 () Bool)

(assert (= bs!756716 (and b!4424881 b!4424455)))

(declare-fun lambda!153831 () Int)

(assert (=> bs!756716 (= lambda!153831 lambda!153774)))

(declare-fun bs!756717 () Bool)

(assert (= bs!756717 (and b!4424881 b!4424479)))

(assert (=> bs!756717 (= lambda!153831 lambda!153783)))

(declare-fun d!1341190 () Bool)

(declare-fun e!2755129 () Bool)

(assert (=> d!1341190 e!2755129))

(declare-fun res!1829260 () Bool)

(assert (=> d!1341190 (=> (not res!1829260) (not e!2755129))))

(declare-fun lt!1624254 () List!49702)

(assert (=> d!1341190 (= res!1829260 (noDuplicate!657 lt!1624254))))

(assert (=> d!1341190 (= lt!1624254 (getKeysList!250 (toList!3482 lt!1623543)))))

(assert (=> d!1341190 (= (keys!16924 lt!1623543) lt!1624254)))

(declare-fun b!4424879 () Bool)

(declare-fun res!1829262 () Bool)

(assert (=> b!4424879 (=> (not res!1829262) (not e!2755129))))

(assert (=> b!4424879 (= res!1829262 (= (length!170 lt!1624254) (length!171 (toList!3482 lt!1623543))))))

(declare-fun res!1829261 () Bool)

(assert (=> b!4424880 (=> (not res!1829261) (not e!2755129))))

(assert (=> b!4424880 (= res!1829261 (forall!9559 lt!1624254 lambda!153830))))

(assert (=> b!4424881 (= e!2755129 (= (content!7953 lt!1624254) (content!7953 (map!10828 (toList!3482 lt!1623543) lambda!153831))))))

(assert (= (and d!1341190 res!1829260) b!4424879))

(assert (= (and b!4424879 res!1829262) b!4424880))

(assert (= (and b!4424880 res!1829261) b!4424881))

(declare-fun m!5104871 () Bool)

(assert (=> d!1341190 m!5104871))

(assert (=> d!1341190 m!5103963))

(declare-fun m!5104873 () Bool)

(assert (=> b!4424879 m!5104873))

(assert (=> b!4424879 m!5104139))

(declare-fun m!5104875 () Bool)

(assert (=> b!4424880 m!5104875))

(declare-fun m!5104877 () Bool)

(assert (=> b!4424881 m!5104877))

(declare-fun m!5104879 () Bool)

(assert (=> b!4424881 m!5104879))

(assert (=> b!4424881 m!5104879))

(declare-fun m!5104881 () Bool)

(assert (=> b!4424881 m!5104881))

(assert (=> b!4424394 d!1341190))

(declare-fun d!1341200 () Bool)

(declare-fun lt!1624258 () Bool)

(assert (=> d!1341200 (= lt!1624258 (select (content!7953 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717))))

(declare-fun e!2755132 () Bool)

(assert (=> d!1341200 (= lt!1624258 e!2755132)))

(declare-fun res!1829264 () Bool)

(assert (=> d!1341200 (=> (not res!1829264) (not e!2755132))))

(assert (=> d!1341200 (= res!1829264 ((_ is Cons!49578) (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))

(assert (=> d!1341200 (= (contains!12079 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) lt!1624258)))

(declare-fun b!4424888 () Bool)

(declare-fun e!2755133 () Bool)

(assert (=> b!4424888 (= e!2755132 e!2755133)))

(declare-fun res!1829263 () Bool)

(assert (=> b!4424888 (=> res!1829263 e!2755133)))

(assert (=> b!4424888 (= res!1829263 (= (h!55263 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717))))

(declare-fun b!4424889 () Bool)

(assert (=> b!4424889 (= e!2755133 (contains!12079 (t!356640 (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) key!3717))))

(assert (= (and d!1341200 res!1829264) b!4424888))

(assert (= (and b!4424888 (not res!1829263)) b!4424889))

(assert (=> d!1341200 m!5103895))

(declare-fun m!5104885 () Bool)

(assert (=> d!1341200 m!5104885))

(declare-fun m!5104887 () Bool)

(assert (=> d!1341200 m!5104887))

(declare-fun m!5104889 () Bool)

(assert (=> b!4424889 m!5104889))

(assert (=> b!4424369 d!1341200))

(declare-fun bs!756720 () Bool)

(declare-fun b!4424891 () Bool)

(assert (= bs!756720 (and b!4424891 b!4424478)))

(declare-fun lambda!153832 () Int)

(assert (=> bs!756720 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (toList!3482 lt!1623543)) (= lambda!153832 lambda!153782))))

(declare-fun bs!756721 () Bool)

(assert (= bs!756721 (and b!4424891 b!4424456)))

(assert (=> bs!756721 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))) (= lambda!153832 lambda!153771))))

(declare-fun bs!756722 () Bool)

(assert (= bs!756722 (and b!4424891 b!4424454)))

(assert (=> bs!756722 (= lambda!153832 lambda!153773)))

(declare-fun bs!756723 () Bool)

(assert (= bs!756723 (and b!4424891 b!4424457)))

(assert (=> bs!756723 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (Cons!49575 (h!55258 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))) (t!356637 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))) (= lambda!153832 lambda!153772))))

(declare-fun bs!756724 () Bool)

(assert (= bs!756724 (and b!4424891 b!4424481)))

(assert (=> bs!756724 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (Cons!49575 (h!55258 (toList!3482 lt!1623543)) (t!356637 (toList!3482 lt!1623543)))) (= lambda!153832 lambda!153781))))

(declare-fun bs!756725 () Bool)

(assert (= bs!756725 (and b!4424891 b!4424880)))

(assert (=> bs!756725 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (toList!3482 lt!1623543)) (= lambda!153832 lambda!153830))))

(declare-fun bs!756726 () Bool)

(assert (= bs!756726 (and b!4424891 b!4424480)))

(assert (=> bs!756726 (= (= (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) (t!356637 (toList!3482 lt!1623543))) (= lambda!153832 lambda!153780))))

(assert (=> b!4424891 true))

(declare-fun bs!756727 () Bool)

(declare-fun b!4424892 () Bool)

(assert (= bs!756727 (and b!4424892 b!4424455)))

(declare-fun lambda!153833 () Int)

(assert (=> bs!756727 (= lambda!153833 lambda!153774)))

(declare-fun bs!756728 () Bool)

(assert (= bs!756728 (and b!4424892 b!4424479)))

(assert (=> bs!756728 (= lambda!153833 lambda!153783)))

(declare-fun bs!756729 () Bool)

(assert (= bs!756729 (and b!4424892 b!4424881)))

(assert (=> bs!756729 (= lambda!153833 lambda!153831)))

(declare-fun d!1341204 () Bool)

(declare-fun e!2755134 () Bool)

(assert (=> d!1341204 e!2755134))

(declare-fun res!1829265 () Bool)

(assert (=> d!1341204 (=> (not res!1829265) (not e!2755134))))

(declare-fun lt!1624259 () List!49702)

(assert (=> d!1341204 (= res!1829265 (noDuplicate!657 lt!1624259))))

(assert (=> d!1341204 (= lt!1624259 (getKeysList!250 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616))))))))

(assert (=> d!1341204 (= (keys!16924 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) lt!1624259)))

(declare-fun b!4424890 () Bool)

(declare-fun res!1829267 () Bool)

(assert (=> b!4424890 (=> (not res!1829267) (not e!2755134))))

(assert (=> b!4424890 (= res!1829267 (= (length!170 lt!1624259) (length!171 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))))

(declare-fun res!1829266 () Bool)

(assert (=> b!4424891 (=> (not res!1829266) (not e!2755134))))

(assert (=> b!4424891 (= res!1829266 (forall!9559 lt!1624259 lambda!153832))))

(assert (=> b!4424892 (= e!2755134 (= (content!7953 lt!1624259) (content!7953 (map!10828 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) lambda!153833))))))

(assert (= (and d!1341204 res!1829265) b!4424890))

(assert (= (and b!4424890 res!1829267) b!4424891))

(assert (= (and b!4424891 res!1829266) b!4424892))

(declare-fun m!5104899 () Bool)

(assert (=> d!1341204 m!5104899))

(assert (=> d!1341204 m!5103907))

(declare-fun m!5104903 () Bool)

(assert (=> b!4424890 m!5104903))

(assert (=> b!4424890 m!5104059))

(declare-fun m!5104905 () Bool)

(assert (=> b!4424891 m!5104905))

(declare-fun m!5104907 () Bool)

(assert (=> b!4424892 m!5104907))

(declare-fun m!5104909 () Bool)

(assert (=> b!4424892 m!5104909))

(assert (=> b!4424892 m!5104909))

(declare-fun m!5104911 () Bool)

(assert (=> b!4424892 m!5104911))

(assert (=> b!4424369 d!1341204))

(assert (=> b!4424367 d!1341200))

(assert (=> b!4424367 d!1341204))

(declare-fun b!4424897 () Bool)

(declare-fun e!2755139 () Option!10721)

(assert (=> b!4424897 (= e!2755139 (Some!10720 (_2!27977 (h!55258 (toList!3482 lt!1623845)))))))

(declare-fun b!4424899 () Bool)

(declare-fun e!2755140 () Option!10721)

(assert (=> b!4424899 (= e!2755140 (getValueByKey!707 (t!356637 (toList!3482 lt!1623845)) (_1!27977 lt!1623530)))))

(declare-fun d!1341212 () Bool)

(declare-fun c!753227 () Bool)

(assert (=> d!1341212 (= c!753227 (and ((_ is Cons!49575) (toList!3482 lt!1623845)) (= (_1!27977 (h!55258 (toList!3482 lt!1623845))) (_1!27977 lt!1623530))))))

(assert (=> d!1341212 (= (getValueByKey!707 (toList!3482 lt!1623845) (_1!27977 lt!1623530)) e!2755139)))

(declare-fun b!4424900 () Bool)

(assert (=> b!4424900 (= e!2755140 None!10720)))

(declare-fun b!4424898 () Bool)

(assert (=> b!4424898 (= e!2755139 e!2755140)))

(declare-fun c!753228 () Bool)

(assert (=> b!4424898 (= c!753228 (and ((_ is Cons!49575) (toList!3482 lt!1623845)) (not (= (_1!27977 (h!55258 (toList!3482 lt!1623845))) (_1!27977 lt!1623530)))))))

(assert (= (and d!1341212 c!753227) b!4424897))

(assert (= (and d!1341212 (not c!753227)) b!4424898))

(assert (= (and b!4424898 c!753228) b!4424899))

(assert (= (and b!4424898 (not c!753228)) b!4424900))

(declare-fun m!5104913 () Bool)

(assert (=> b!4424899 m!5104913))

(assert (=> b!4424345 d!1341212))

(declare-fun b!4424901 () Bool)

(declare-fun e!2755141 () Option!10722)

(assert (=> b!4424901 (= e!2755141 (Some!10721 (_2!27978 (h!55259 (toList!3481 lt!1623842)))))))

(declare-fun d!1341214 () Bool)

(declare-fun c!753229 () Bool)

(assert (=> d!1341214 (= c!753229 (and ((_ is Cons!49576) (toList!3481 lt!1623842)) (= (_1!27978 (h!55259 (toList!3481 lt!1623842))) (_1!27978 lt!1623539))))))

(assert (=> d!1341214 (= (getValueByKey!708 (toList!3481 lt!1623842) (_1!27978 lt!1623539)) e!2755141)))

(declare-fun b!4424902 () Bool)

(declare-fun e!2755142 () Option!10722)

(assert (=> b!4424902 (= e!2755141 e!2755142)))

(declare-fun c!753230 () Bool)

(assert (=> b!4424902 (= c!753230 (and ((_ is Cons!49576) (toList!3481 lt!1623842)) (not (= (_1!27978 (h!55259 (toList!3481 lt!1623842))) (_1!27978 lt!1623539)))))))

(declare-fun b!4424904 () Bool)

(assert (=> b!4424904 (= e!2755142 None!10721)))

(declare-fun b!4424903 () Bool)

(assert (=> b!4424903 (= e!2755142 (getValueByKey!708 (t!356638 (toList!3481 lt!1623842)) (_1!27978 lt!1623539)))))

(assert (= (and d!1341214 c!753229) b!4424901))

(assert (= (and d!1341214 (not c!753229)) b!4424902))

(assert (= (and b!4424902 c!753230) b!4424903))

(assert (= (and b!4424902 (not c!753230)) b!4424904))

(declare-fun m!5104915 () Bool)

(assert (=> b!4424903 m!5104915))

(assert (=> b!4424343 d!1341214))

(assert (=> b!4424392 d!1341188))

(assert (=> b!4424392 d!1341190))

(declare-fun d!1341216 () Bool)

(declare-fun res!1829272 () Bool)

(declare-fun e!2755143 () Bool)

(assert (=> d!1341216 (=> res!1829272 e!2755143)))

(assert (=> d!1341216 (= res!1829272 (and ((_ is Cons!49575) (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))))) (= (_1!27977 (h!55258 (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616))))))) key!3717)))))

(assert (=> d!1341216 (= (containsKey!1106 (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616))))) key!3717) e!2755143)))

(declare-fun b!4424905 () Bool)

(declare-fun e!2755144 () Bool)

(assert (=> b!4424905 (= e!2755143 e!2755144)))

(declare-fun res!1829273 () Bool)

(assert (=> b!4424905 (=> (not res!1829273) (not e!2755144))))

(assert (=> b!4424905 (= res!1829273 ((_ is Cons!49575) (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424906 () Bool)

(assert (=> b!4424906 (= e!2755144 (containsKey!1106 (t!356637 (t!356637 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))))) key!3717))))

(assert (= (and d!1341216 (not res!1829272)) b!4424905))

(assert (= (and b!4424905 res!1829273) b!4424906))

(declare-fun m!5104917 () Bool)

(assert (=> b!4424906 m!5104917))

(assert (=> b!4424383 d!1341216))

(declare-fun d!1341218 () Bool)

(assert (=> d!1341218 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623543) key!3717))))

(declare-fun lt!1624262 () Unit!81703)

(assert (=> d!1341218 (= lt!1624262 (choose!27927 (toList!3482 lt!1623543) key!3717))))

(assert (=> d!1341218 (invariantList!803 (toList!3482 lt!1623543))))

(assert (=> d!1341218 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623543) key!3717) lt!1624262)))

(declare-fun bs!756730 () Bool)

(assert (= bs!756730 d!1341218))

(assert (=> bs!756730 m!5103957))

(assert (=> bs!756730 m!5103957))

(assert (=> bs!756730 m!5103959))

(declare-fun m!5104919 () Bool)

(assert (=> bs!756730 m!5104919))

(assert (=> bs!756730 m!5104117))

(assert (=> b!4424400 d!1341218))

(assert (=> b!4424400 d!1341040))

(assert (=> b!4424400 d!1341042))

(declare-fun d!1341220 () Bool)

(assert (=> d!1341220 (contains!12079 (getKeysList!250 (toList!3482 lt!1623543)) key!3717)))

(declare-fun lt!1624263 () Unit!81703)

(assert (=> d!1341220 (= lt!1624263 (choose!27928 (toList!3482 lt!1623543) key!3717))))

(assert (=> d!1341220 (invariantList!803 (toList!3482 lt!1623543))))

(assert (=> d!1341220 (= (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623543) key!3717) lt!1624263)))

(declare-fun bs!756731 () Bool)

(assert (= bs!756731 d!1341220))

(assert (=> bs!756731 m!5103963))

(assert (=> bs!756731 m!5103963))

(declare-fun m!5104921 () Bool)

(assert (=> bs!756731 m!5104921))

(declare-fun m!5104923 () Bool)

(assert (=> bs!756731 m!5104923))

(assert (=> bs!756731 m!5104117))

(assert (=> b!4424400 d!1341220))

(declare-fun d!1341222 () Bool)

(declare-fun res!1829274 () Bool)

(declare-fun e!2755145 () Bool)

(assert (=> d!1341222 (=> res!1829274 e!2755145)))

(assert (=> d!1341222 (= res!1829274 ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1341222 (= (forall!9556 (toList!3481 lm!1616) lambda!153739) e!2755145)))

(declare-fun b!4424907 () Bool)

(declare-fun e!2755146 () Bool)

(assert (=> b!4424907 (= e!2755145 e!2755146)))

(declare-fun res!1829275 () Bool)

(assert (=> b!4424907 (=> (not res!1829275) (not e!2755146))))

(assert (=> b!4424907 (= res!1829275 (dynLambda!20842 lambda!153739 (h!55259 (toList!3481 lm!1616))))))

(declare-fun b!4424908 () Bool)

(assert (=> b!4424908 (= e!2755146 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153739))))

(assert (= (and d!1341222 (not res!1829274)) b!4424907))

(assert (= (and b!4424907 res!1829275) b!4424908))

(declare-fun b_lambda!142991 () Bool)

(assert (=> (not b_lambda!142991) (not b!4424907)))

(declare-fun m!5104929 () Bool)

(assert (=> b!4424907 m!5104929))

(declare-fun m!5104931 () Bool)

(assert (=> b!4424908 m!5104931))

(assert (=> d!1340890 d!1341222))

(declare-fun d!1341226 () Bool)

(declare-fun res!1829276 () Bool)

(declare-fun e!2755147 () Bool)

(assert (=> d!1341226 (=> res!1829276 e!2755147)))

(assert (=> d!1341226 (= res!1829276 ((_ is Nil!49576) (t!356638 (toList!3481 lm!1616))))))

(assert (=> d!1341226 (= (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153648) e!2755147)))

(declare-fun b!4424909 () Bool)

(declare-fun e!2755148 () Bool)

(assert (=> b!4424909 (= e!2755147 e!2755148)))

(declare-fun res!1829277 () Bool)

(assert (=> b!4424909 (=> (not res!1829277) (not e!2755148))))

(assert (=> b!4424909 (= res!1829277 (dynLambda!20842 lambda!153648 (h!55259 (t!356638 (toList!3481 lm!1616)))))))

(declare-fun b!4424910 () Bool)

(assert (=> b!4424910 (= e!2755148 (forall!9556 (t!356638 (t!356638 (toList!3481 lm!1616))) lambda!153648))))

(assert (= (and d!1341226 (not res!1829276)) b!4424909))

(assert (= (and b!4424909 res!1829277) b!4424910))

(declare-fun b_lambda!142993 () Bool)

(assert (=> (not b_lambda!142993) (not b!4424909)))

(declare-fun m!5104933 () Bool)

(assert (=> b!4424909 m!5104933))

(declare-fun m!5104935 () Bool)

(assert (=> b!4424910 m!5104935))

(assert (=> b!4424284 d!1341226))

(assert (=> b!4424398 d!1341190))

(assert (=> b!4424373 d!1341204))

(assert (=> bs!756284 d!1341004))

(assert (=> b!4424371 d!1341120))

(declare-fun d!1341228 () Bool)

(assert (=> d!1341228 (containsKey!1109 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717)))

(declare-fun lt!1624269 () Unit!81703)

(declare-fun choose!27939 (List!49699 K!10940) Unit!81703)

(assert (=> d!1341228 (= lt!1624269 (choose!27939 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717))))

(assert (=> d!1341228 (invariantList!803 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))))))

(assert (=> d!1341228 (= (lemmaInGetKeysListThenContainsKey!248 (toList!3482 (extractMap!808 (tail!7267 (toList!3481 lm!1616)))) key!3717) lt!1624269)))

(declare-fun bs!756733 () Bool)

(assert (= bs!756733 d!1341228))

(assert (=> bs!756733 m!5103889))

(declare-fun m!5104937 () Bool)

(assert (=> bs!756733 m!5104937))

(assert (=> bs!756733 m!5104037))

(assert (=> b!4424371 d!1341228))

(declare-fun d!1341230 () Bool)

(declare-fun res!1829278 () Bool)

(declare-fun e!2755149 () Bool)

(assert (=> d!1341230 (=> res!1829278 e!2755149)))

(assert (=> d!1341230 (= res!1829278 (and ((_ is Cons!49575) (t!356637 newBucket!194)) (= (_1!27977 (h!55258 (t!356637 newBucket!194))) (_1!27977 (h!55258 newBucket!194)))))))

(assert (=> d!1341230 (= (containsKey!1106 (t!356637 newBucket!194) (_1!27977 (h!55258 newBucket!194))) e!2755149)))

(declare-fun b!4424911 () Bool)

(declare-fun e!2755150 () Bool)

(assert (=> b!4424911 (= e!2755149 e!2755150)))

(declare-fun res!1829279 () Bool)

(assert (=> b!4424911 (=> (not res!1829279) (not e!2755150))))

(assert (=> b!4424911 (= res!1829279 ((_ is Cons!49575) (t!356637 newBucket!194)))))

(declare-fun b!4424912 () Bool)

(assert (=> b!4424912 (= e!2755150 (containsKey!1106 (t!356637 (t!356637 newBucket!194)) (_1!27977 (h!55258 newBucket!194))))))

(assert (= (and d!1341230 (not res!1829278)) b!4424911))

(assert (= (and b!4424911 res!1829279) b!4424912))

(declare-fun m!5104941 () Bool)

(assert (=> b!4424912 m!5104941))

(assert (=> b!4424289 d!1341230))

(assert (=> b!4424396 d!1341000))

(declare-fun d!1341232 () Bool)

(assert (=> d!1341232 (containsKey!1109 (toList!3482 lt!1623543) key!3717)))

(declare-fun lt!1624271 () Unit!81703)

(assert (=> d!1341232 (= lt!1624271 (choose!27939 (toList!3482 lt!1623543) key!3717))))

(assert (=> d!1341232 (invariantList!803 (toList!3482 lt!1623543))))

(assert (=> d!1341232 (= (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623543) key!3717) lt!1624271)))

(declare-fun bs!756735 () Bool)

(assert (= bs!756735 d!1341232))

(assert (=> bs!756735 m!5103945))

(declare-fun m!5104947 () Bool)

(assert (=> bs!756735 m!5104947))

(assert (=> bs!756735 m!5104117))

(assert (=> b!4424396 d!1341232))

(declare-fun d!1341238 () Bool)

(assert (=> d!1341238 (= (get!16155 (getValueByKey!708 (toList!3481 lm!1616) (_1!27978 (h!55259 (toList!3481 lm!1616))))) (v!43903 (getValueByKey!708 (toList!3481 lm!1616) (_1!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1340940 d!1341238))

(declare-fun b!4424916 () Bool)

(declare-fun e!2755154 () Option!10722)

(assert (=> b!4424916 (= e!2755154 (Some!10721 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun d!1341242 () Bool)

(declare-fun c!753231 () Bool)

(assert (=> d!1341242 (= c!753231 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341242 (= (getValueByKey!708 (toList!3481 lm!1616) (_1!27978 (h!55259 (toList!3481 lm!1616)))) e!2755154)))

(declare-fun b!4424917 () Bool)

(declare-fun e!2755155 () Option!10722)

(assert (=> b!4424917 (= e!2755154 e!2755155)))

(declare-fun c!753232 () Bool)

(assert (=> b!4424917 (= c!753232 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (not (= (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4424919 () Bool)

(assert (=> b!4424919 (= e!2755155 None!10721)))

(declare-fun b!4424918 () Bool)

(assert (=> b!4424918 (= e!2755155 (getValueByKey!708 (t!356638 (toList!3481 lm!1616)) (_1!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (= (and d!1341242 c!753231) b!4424916))

(assert (= (and d!1341242 (not c!753231)) b!4424917))

(assert (= (and b!4424917 c!753232) b!4424918))

(assert (= (and b!4424917 (not c!753232)) b!4424919))

(declare-fun m!5104957 () Bool)

(assert (=> b!4424918 m!5104957))

(assert (=> d!1340940 d!1341242))

(declare-fun d!1341244 () Bool)

(assert (=> d!1341244 (= (invariantList!803 (toList!3482 lt!1623890)) (noDuplicatedKeys!173 (toList!3482 lt!1623890)))))

(declare-fun bs!756737 () Bool)

(assert (= bs!756737 d!1341244))

(declare-fun m!5104961 () Bool)

(assert (=> bs!756737 m!5104961))

(assert (=> d!1340952 d!1341244))

(declare-fun d!1341248 () Bool)

(declare-fun res!1829286 () Bool)

(declare-fun e!2755159 () Bool)

(assert (=> d!1341248 (=> res!1829286 e!2755159)))

(assert (=> d!1341248 (= res!1829286 ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1341248 (= (forall!9556 (toList!3481 lm!1616) lambda!153759) e!2755159)))

(declare-fun b!4424925 () Bool)

(declare-fun e!2755160 () Bool)

(assert (=> b!4424925 (= e!2755159 e!2755160)))

(declare-fun res!1829287 () Bool)

(assert (=> b!4424925 (=> (not res!1829287) (not e!2755160))))

(assert (=> b!4424925 (= res!1829287 (dynLambda!20842 lambda!153759 (h!55259 (toList!3481 lm!1616))))))

(declare-fun b!4424926 () Bool)

(assert (=> b!4424926 (= e!2755160 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153759))))

(assert (= (and d!1341248 (not res!1829286)) b!4424925))

(assert (= (and b!4424925 res!1829287) b!4424926))

(declare-fun b_lambda!142999 () Bool)

(assert (=> (not b_lambda!142999) (not b!4424925)))

(declare-fun m!5104963 () Bool)

(assert (=> b!4424925 m!5104963))

(declare-fun m!5104965 () Bool)

(assert (=> b!4424926 m!5104965))

(assert (=> d!1340952 d!1341248))

(declare-fun d!1341250 () Bool)

(assert (=> d!1341250 (= (get!16155 (getValueByKey!708 (toList!3481 lm!1616) hash!366)) (v!43903 (getValueByKey!708 (toList!3481 lm!1616) hash!366)))))

(assert (=> d!1340880 d!1341250))

(assert (=> d!1340880 d!1341036))

(declare-fun d!1341252 () Bool)

(assert (=> d!1341252 (= (invariantList!803 (toList!3482 lt!1623787)) (noDuplicatedKeys!173 (toList!3482 lt!1623787)))))

(declare-fun bs!756740 () Bool)

(assert (= bs!756740 d!1341252))

(declare-fun m!5104967 () Bool)

(assert (=> bs!756740 m!5104967))

(assert (=> b!4424306 d!1341252))

(declare-fun d!1341254 () Bool)

(declare-fun res!1829292 () Bool)

(declare-fun e!2755165 () Bool)

(assert (=> d!1341254 (=> res!1829292 e!2755165)))

(assert (=> d!1341254 (= res!1829292 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)))))

(assert (=> d!1341254 (= (containsKey!1110 (toList!3481 lm!1616) hash!366) e!2755165)))

(declare-fun b!4424931 () Bool)

(declare-fun e!2755166 () Bool)

(assert (=> b!4424931 (= e!2755165 e!2755166)))

(declare-fun res!1829293 () Bool)

(assert (=> b!4424931 (=> (not res!1829293) (not e!2755166))))

(assert (=> b!4424931 (= res!1829293 (and (or (not ((_ is Cons!49576) (toList!3481 lm!1616))) (bvsle (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)) ((_ is Cons!49576) (toList!3481 lm!1616)) (bvslt (_1!27978 (h!55259 (toList!3481 lm!1616))) hash!366)))))

(declare-fun b!4424932 () Bool)

(assert (=> b!4424932 (= e!2755166 (containsKey!1110 (t!356638 (toList!3481 lm!1616)) hash!366))))

(assert (= (and d!1341254 (not res!1829292)) b!4424931))

(assert (= (and b!4424931 res!1829293) b!4424932))

(declare-fun m!5104969 () Bool)

(assert (=> b!4424932 m!5104969))

(assert (=> d!1340956 d!1341254))

(declare-fun d!1341256 () Bool)

(declare-fun res!1829294 () Bool)

(declare-fun e!2755167 () Bool)

(assert (=> d!1341256 (=> res!1829294 e!2755167)))

(assert (=> d!1341256 (= res!1829294 ((_ is Nil!49575) (toList!3482 lt!1623532)))))

(assert (=> d!1341256 (= (forall!9557 (toList!3482 lt!1623532) lambda!153743) e!2755167)))

(declare-fun b!4424933 () Bool)

(declare-fun e!2755168 () Bool)

(assert (=> b!4424933 (= e!2755167 e!2755168)))

(declare-fun res!1829295 () Bool)

(assert (=> b!4424933 (=> (not res!1829295) (not e!2755168))))

(assert (=> b!4424933 (= res!1829295 (dynLambda!20843 lambda!153743 (h!55258 (toList!3482 lt!1623532))))))

(declare-fun b!4424934 () Bool)

(assert (=> b!4424934 (= e!2755168 (forall!9557 (t!356637 (toList!3482 lt!1623532)) lambda!153743))))

(assert (= (and d!1341256 (not res!1829294)) b!4424933))

(assert (= (and b!4424933 res!1829295) b!4424934))

(declare-fun b_lambda!143001 () Bool)

(assert (=> (not b_lambda!143001) (not b!4424933)))

(declare-fun m!5104971 () Bool)

(assert (=> b!4424933 m!5104971))

(declare-fun m!5104973 () Bool)

(assert (=> b!4424934 m!5104973))

(assert (=> b!4424305 d!1341256))

(declare-fun d!1341258 () Bool)

(declare-fun res!1829296 () Bool)

(declare-fun e!2755169 () Bool)

(assert (=> d!1341258 (=> res!1829296 e!2755169)))

(assert (=> d!1341258 (= res!1829296 (and ((_ is Cons!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (= (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) key!3717)))))

(assert (=> d!1341258 (= (containsKey!1106 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) key!3717) e!2755169)))

(declare-fun b!4424935 () Bool)

(declare-fun e!2755170 () Bool)

(assert (=> b!4424935 (= e!2755169 e!2755170)))

(declare-fun res!1829297 () Bool)

(assert (=> b!4424935 (=> (not res!1829297) (not e!2755170))))

(assert (=> b!4424935 (= res!1829297 ((_ is Cons!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4424936 () Bool)

(assert (=> b!4424936 (= e!2755170 (containsKey!1106 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) key!3717))))

(assert (= (and d!1341258 (not res!1829296)) b!4424935))

(assert (= (and b!4424935 res!1829297) b!4424936))

(declare-fun m!5104975 () Bool)

(assert (=> b!4424936 m!5104975))

(assert (=> b!4424381 d!1341258))

(declare-fun d!1341260 () Bool)

(declare-fun res!1829298 () Bool)

(declare-fun e!2755171 () Bool)

(assert (=> d!1341260 (=> res!1829298 e!2755171)))

(assert (=> d!1341260 (= res!1829298 ((_ is Nil!49576) (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194)))))))

(assert (=> d!1341260 (= (forall!9556 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194))) lambda!153648) e!2755171)))

(declare-fun b!4424937 () Bool)

(declare-fun e!2755172 () Bool)

(assert (=> b!4424937 (= e!2755171 e!2755172)))

(declare-fun res!1829299 () Bool)

(assert (=> b!4424937 (=> (not res!1829299) (not e!2755172))))

(assert (=> b!4424937 (= res!1829299 (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194))))))))

(declare-fun b!4424938 () Bool)

(assert (=> b!4424938 (= e!2755172 (forall!9556 (t!356638 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194)))) lambda!153648))))

(assert (= (and d!1341260 (not res!1829298)) b!4424937))

(assert (= (and b!4424937 res!1829299) b!4424938))

(declare-fun b_lambda!143003 () Bool)

(assert (=> (not b_lambda!143003) (not b!4424937)))

(declare-fun m!5104977 () Bool)

(assert (=> b!4424937 m!5104977))

(declare-fun m!5104979 () Bool)

(assert (=> b!4424938 m!5104979))

(assert (=> d!1340948 d!1341260))

(declare-fun d!1341262 () Bool)

(declare-fun e!2755173 () Bool)

(assert (=> d!1341262 e!2755173))

(declare-fun res!1829301 () Bool)

(assert (=> d!1341262 (=> (not res!1829301) (not e!2755173))))

(declare-fun lt!1624297 () ListLongMap!2131)

(assert (=> d!1341262 (= res!1829301 (contains!12072 lt!1624297 (_1!27978 (tuple2!49369 hash!366 newBucket!194))))))

(declare-fun lt!1624296 () List!49700)

(assert (=> d!1341262 (= lt!1624297 (ListLongMap!2132 lt!1624296))))

(declare-fun lt!1624295 () Unit!81703)

(declare-fun lt!1624294 () Unit!81703)

(assert (=> d!1341262 (= lt!1624295 lt!1624294)))

(assert (=> d!1341262 (= (getValueByKey!708 lt!1624296 (_1!27978 (tuple2!49369 hash!366 newBucket!194))) (Some!10721 (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341262 (= lt!1624294 (lemmaContainsTupThenGetReturnValue!443 lt!1624296 (_1!27978 (tuple2!49369 hash!366 newBucket!194)) (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341262 (= lt!1624296 (insertStrictlySorted!258 (toList!3481 lm!1616) (_1!27978 (tuple2!49369 hash!366 newBucket!194)) (_2!27978 (tuple2!49369 hash!366 newBucket!194))))))

(assert (=> d!1341262 (= (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194)) lt!1624297)))

(declare-fun b!4424939 () Bool)

(declare-fun res!1829300 () Bool)

(assert (=> b!4424939 (=> (not res!1829300) (not e!2755173))))

(assert (=> b!4424939 (= res!1829300 (= (getValueByKey!708 (toList!3481 lt!1624297) (_1!27978 (tuple2!49369 hash!366 newBucket!194))) (Some!10721 (_2!27978 (tuple2!49369 hash!366 newBucket!194)))))))

(declare-fun b!4424940 () Bool)

(assert (=> b!4424940 (= e!2755173 (contains!12078 (toList!3481 lt!1624297) (tuple2!49369 hash!366 newBucket!194)))))

(assert (= (and d!1341262 res!1829301) b!4424939))

(assert (= (and b!4424939 res!1829300) b!4424940))

(declare-fun m!5104981 () Bool)

(assert (=> d!1341262 m!5104981))

(declare-fun m!5104983 () Bool)

(assert (=> d!1341262 m!5104983))

(declare-fun m!5104985 () Bool)

(assert (=> d!1341262 m!5104985))

(declare-fun m!5104987 () Bool)

(assert (=> d!1341262 m!5104987))

(declare-fun m!5104989 () Bool)

(assert (=> b!4424939 m!5104989))

(declare-fun m!5104991 () Bool)

(assert (=> b!4424940 m!5104991))

(assert (=> d!1340948 d!1341262))

(declare-fun d!1341264 () Bool)

(assert (=> d!1341264 (forall!9556 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194))) lambda!153648)))

(assert (=> d!1341264 true))

(declare-fun _$31!388 () Unit!81703)

(assert (=> d!1341264 (= (choose!27920 lm!1616 lambda!153648 hash!366 newBucket!194) _$31!388)))

(declare-fun bs!756784 () Bool)

(assert (= bs!756784 d!1341264))

(assert (=> bs!756784 m!5103937))

(assert (=> bs!756784 m!5103939))

(assert (=> d!1340948 d!1341264))

(assert (=> d!1340948 d!1340870))

(declare-fun d!1341266 () Bool)

(declare-fun e!2755174 () Bool)

(assert (=> d!1341266 e!2755174))

(declare-fun res!1829302 () Bool)

(assert (=> d!1341266 (=> res!1829302 e!2755174)))

(declare-fun lt!1624300 () Bool)

(assert (=> d!1341266 (= res!1829302 (not lt!1624300))))

(declare-fun lt!1624299 () Bool)

(assert (=> d!1341266 (= lt!1624300 lt!1624299)))

(declare-fun lt!1624301 () Unit!81703)

(declare-fun e!2755175 () Unit!81703)

(assert (=> d!1341266 (= lt!1624301 e!2755175)))

(declare-fun c!753234 () Bool)

(assert (=> d!1341266 (= c!753234 lt!1624299)))

(assert (=> d!1341266 (= lt!1624299 (containsKey!1110 (toList!3481 lt!1623878) (_1!27978 lt!1623539)))))

(assert (=> d!1341266 (= (contains!12072 lt!1623878 (_1!27978 lt!1623539)) lt!1624300)))

(declare-fun b!4424942 () Bool)

(declare-fun lt!1624298 () Unit!81703)

(assert (=> b!4424942 (= e!2755175 lt!1624298)))

(assert (=> b!4424942 (= lt!1624298 (lemmaContainsKeyImpliesGetValueByKeyDefined!617 (toList!3481 lt!1623878) (_1!27978 lt!1623539)))))

(assert (=> b!4424942 (isDefined!8014 (getValueByKey!708 (toList!3481 lt!1623878) (_1!27978 lt!1623539)))))

(declare-fun b!4424943 () Bool)

(declare-fun Unit!81880 () Unit!81703)

(assert (=> b!4424943 (= e!2755175 Unit!81880)))

(declare-fun b!4424944 () Bool)

(assert (=> b!4424944 (= e!2755174 (isDefined!8014 (getValueByKey!708 (toList!3481 lt!1623878) (_1!27978 lt!1623539))))))

(assert (= (and d!1341266 c!753234) b!4424942))

(assert (= (and d!1341266 (not c!753234)) b!4424943))

(assert (= (and d!1341266 (not res!1829302)) b!4424944))

(declare-fun m!5104997 () Bool)

(assert (=> d!1341266 m!5104997))

(declare-fun m!5105001 () Bool)

(assert (=> b!4424942 m!5105001))

(assert (=> b!4424942 m!5103933))

(assert (=> b!4424942 m!5103933))

(declare-fun m!5105007 () Bool)

(assert (=> b!4424942 m!5105007))

(assert (=> b!4424944 m!5103933))

(assert (=> b!4424944 m!5103933))

(assert (=> b!4424944 m!5105007))

(assert (=> d!1340946 d!1341266))

(declare-fun b!4424945 () Bool)

(declare-fun e!2755176 () Option!10722)

(assert (=> b!4424945 (= e!2755176 (Some!10721 (_2!27978 (h!55259 lt!1623877))))))

(declare-fun d!1341268 () Bool)

(declare-fun c!753235 () Bool)

(assert (=> d!1341268 (= c!753235 (and ((_ is Cons!49576) lt!1623877) (= (_1!27978 (h!55259 lt!1623877)) (_1!27978 lt!1623539))))))

(assert (=> d!1341268 (= (getValueByKey!708 lt!1623877 (_1!27978 lt!1623539)) e!2755176)))

(declare-fun b!4424946 () Bool)

(declare-fun e!2755177 () Option!10722)

(assert (=> b!4424946 (= e!2755176 e!2755177)))

(declare-fun c!753236 () Bool)

(assert (=> b!4424946 (= c!753236 (and ((_ is Cons!49576) lt!1623877) (not (= (_1!27978 (h!55259 lt!1623877)) (_1!27978 lt!1623539)))))))

(declare-fun b!4424948 () Bool)

(assert (=> b!4424948 (= e!2755177 None!10721)))

(declare-fun b!4424947 () Bool)

(assert (=> b!4424947 (= e!2755177 (getValueByKey!708 (t!356638 lt!1623877) (_1!27978 lt!1623539)))))

(assert (= (and d!1341268 c!753235) b!4424945))

(assert (= (and d!1341268 (not c!753235)) b!4424946))

(assert (= (and b!4424946 c!753236) b!4424947))

(assert (= (and b!4424946 (not c!753236)) b!4424948))

(declare-fun m!5105025 () Bool)

(assert (=> b!4424947 m!5105025))

(assert (=> d!1340946 d!1341268))

(declare-fun d!1341270 () Bool)

(assert (=> d!1341270 (= (getValueByKey!708 lt!1623877 (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539)))))

(declare-fun lt!1624309 () Unit!81703)

(declare-fun choose!27940 (List!49700 (_ BitVec 64) List!49699) Unit!81703)

(assert (=> d!1341270 (= lt!1624309 (choose!27940 lt!1623877 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(declare-fun e!2755183 () Bool)

(assert (=> d!1341270 e!2755183))

(declare-fun res!1829311 () Bool)

(assert (=> d!1341270 (=> (not res!1829311) (not e!2755183))))

(assert (=> d!1341270 (= res!1829311 (isStrictlySorted!230 lt!1623877))))

(assert (=> d!1341270 (= (lemmaContainsTupThenGetReturnValue!443 lt!1623877 (_1!27978 lt!1623539) (_2!27978 lt!1623539)) lt!1624309)))

(declare-fun b!4424957 () Bool)

(declare-fun res!1829312 () Bool)

(assert (=> b!4424957 (=> (not res!1829312) (not e!2755183))))

(assert (=> b!4424957 (= res!1829312 (containsKey!1110 lt!1623877 (_1!27978 lt!1623539)))))

(declare-fun b!4424958 () Bool)

(assert (=> b!4424958 (= e!2755183 (contains!12078 lt!1623877 (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539))))))

(assert (= (and d!1341270 res!1829311) b!4424957))

(assert (= (and b!4424957 res!1829312) b!4424958))

(assert (=> d!1341270 m!5103927))

(declare-fun m!5105053 () Bool)

(assert (=> d!1341270 m!5105053))

(declare-fun m!5105055 () Bool)

(assert (=> d!1341270 m!5105055))

(declare-fun m!5105057 () Bool)

(assert (=> b!4424957 m!5105057))

(declare-fun m!5105059 () Bool)

(assert (=> b!4424958 m!5105059))

(assert (=> d!1340946 d!1341270))

(declare-fun bm!307875 () Bool)

(declare-fun c!753256 () Bool)

(declare-fun call!307880 () List!49700)

(declare-fun e!2755216 () List!49700)

(declare-fun $colon$colon!784 (List!49700 tuple2!49368) List!49700)

(assert (=> bm!307875 (= call!307880 ($colon$colon!784 e!2755216 (ite c!753256 (h!55259 (toList!3481 lm!1616)) (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))))

(declare-fun c!753253 () Bool)

(assert (=> bm!307875 (= c!753253 c!753256)))

(declare-fun b!4425016 () Bool)

(declare-fun e!2755217 () Bool)

(declare-fun lt!1624331 () List!49700)

(assert (=> b!4425016 (= e!2755217 (contains!12078 lt!1624331 (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539))))))

(declare-fun b!4425017 () Bool)

(declare-fun res!1829337 () Bool)

(assert (=> b!4425017 (=> (not res!1829337) (not e!2755217))))

(assert (=> b!4425017 (= res!1829337 (containsKey!1110 lt!1624331 (_1!27978 lt!1623539)))))

(declare-fun bm!307876 () Bool)

(declare-fun call!307881 () List!49700)

(assert (=> bm!307876 (= call!307881 call!307880)))

(declare-fun b!4425018 () Bool)

(assert (=> b!4425018 (= e!2755216 (insertStrictlySorted!258 (t!356638 (toList!3481 lm!1616)) (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(declare-fun b!4425019 () Bool)

(declare-fun e!2755219 () List!49700)

(declare-fun e!2755218 () List!49700)

(assert (=> b!4425019 (= e!2755219 e!2755218)))

(declare-fun c!753254 () Bool)

(assert (=> b!4425019 (= c!753254 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (= (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 lt!1623539))))))

(declare-fun bm!307877 () Bool)

(declare-fun call!307882 () List!49700)

(assert (=> bm!307877 (= call!307882 call!307881)))

(declare-fun b!4425020 () Bool)

(assert (=> b!4425020 (= e!2755218 call!307881)))

(declare-fun b!4425021 () Bool)

(declare-fun c!753255 () Bool)

(assert (=> b!4425021 (= c!753255 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (bvsgt (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 lt!1623539))))))

(declare-fun e!2755215 () List!49700)

(assert (=> b!4425021 (= e!2755218 e!2755215)))

(declare-fun b!4425022 () Bool)

(assert (=> b!4425022 (= e!2755215 call!307882)))

(declare-fun b!4425023 () Bool)

(assert (=> b!4425023 (= e!2755219 call!307880)))

(declare-fun d!1341280 () Bool)

(assert (=> d!1341280 e!2755217))

(declare-fun res!1829336 () Bool)

(assert (=> d!1341280 (=> (not res!1829336) (not e!2755217))))

(assert (=> d!1341280 (= res!1829336 (isStrictlySorted!230 lt!1624331))))

(assert (=> d!1341280 (= lt!1624331 e!2755219)))

(assert (=> d!1341280 (= c!753256 (and ((_ is Cons!49576) (toList!3481 lm!1616)) (bvslt (_1!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 lt!1623539))))))

(assert (=> d!1341280 (isStrictlySorted!230 (toList!3481 lm!1616))))

(assert (=> d!1341280 (= (insertStrictlySorted!258 (toList!3481 lm!1616) (_1!27978 lt!1623539) (_2!27978 lt!1623539)) lt!1624331)))

(declare-fun b!4425024 () Bool)

(assert (=> b!4425024 (= e!2755216 (ite c!753254 (t!356638 (toList!3481 lm!1616)) (ite c!753255 (Cons!49576 (h!55259 (toList!3481 lm!1616)) (t!356638 (toList!3481 lm!1616))) Nil!49576)))))

(declare-fun b!4425025 () Bool)

(assert (=> b!4425025 (= e!2755215 call!307882)))

(assert (= (and d!1341280 c!753256) b!4425023))

(assert (= (and d!1341280 (not c!753256)) b!4425019))

(assert (= (and b!4425019 c!753254) b!4425020))

(assert (= (and b!4425019 (not c!753254)) b!4425021))

(assert (= (and b!4425021 c!753255) b!4425025))

(assert (= (and b!4425021 (not c!753255)) b!4425022))

(assert (= (or b!4425025 b!4425022) bm!307877))

(assert (= (or b!4425020 bm!307877) bm!307876))

(assert (= (or b!4425023 bm!307876) bm!307875))

(assert (= (and bm!307875 c!753253) b!4425018))

(assert (= (and bm!307875 (not c!753253)) b!4425024))

(assert (= (and d!1341280 res!1829336) b!4425017))

(assert (= (and b!4425017 res!1829337) b!4425016))

(declare-fun m!5105125 () Bool)

(assert (=> b!4425017 m!5105125))

(declare-fun m!5105127 () Bool)

(assert (=> b!4425016 m!5105127))

(declare-fun m!5105129 () Bool)

(assert (=> b!4425018 m!5105129))

(declare-fun m!5105131 () Bool)

(assert (=> bm!307875 m!5105131))

(declare-fun m!5105133 () Bool)

(assert (=> d!1341280 m!5105133))

(assert (=> d!1341280 m!5103985))

(assert (=> d!1340946 d!1341280))

(declare-fun d!1341294 () Bool)

(declare-fun res!1829342 () Bool)

(declare-fun e!2755224 () Bool)

(assert (=> d!1341294 (=> res!1829342 e!2755224)))

(assert (=> d!1341294 (= res!1829342 (not ((_ is Cons!49575) (_2!27978 (h!55259 (toList!3481 lt!1623528))))))))

(assert (=> d!1341294 (= (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lt!1623528)))) e!2755224)))

(declare-fun b!4425030 () Bool)

(declare-fun e!2755225 () Bool)

(assert (=> b!4425030 (= e!2755224 e!2755225)))

(declare-fun res!1829343 () Bool)

(assert (=> b!4425030 (=> (not res!1829343) (not e!2755225))))

(assert (=> b!4425030 (= res!1829343 (not (containsKey!1106 (t!356637 (_2!27978 (h!55259 (toList!3481 lt!1623528)))) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lt!1623528))))))))))

(declare-fun b!4425031 () Bool)

(assert (=> b!4425031 (= e!2755225 (noDuplicateKeys!747 (t!356637 (_2!27978 (h!55259 (toList!3481 lt!1623528))))))))

(assert (= (and d!1341294 (not res!1829342)) b!4425030))

(assert (= (and b!4425030 res!1829343) b!4425031))

(declare-fun m!5105135 () Bool)

(assert (=> b!4425030 m!5105135))

(declare-fun m!5105137 () Bool)

(assert (=> b!4425031 m!5105137))

(assert (=> bs!756285 d!1341294))

(declare-fun d!1341296 () Bool)

(declare-fun lt!1624334 () Bool)

(assert (=> d!1341296 (= lt!1624334 (select (content!7953 e!2754799) key!3717))))

(declare-fun e!2755226 () Bool)

(assert (=> d!1341296 (= lt!1624334 e!2755226)))

(declare-fun res!1829345 () Bool)

(assert (=> d!1341296 (=> (not res!1829345) (not e!2755226))))

(assert (=> d!1341296 (= res!1829345 ((_ is Cons!49578) e!2754799))))

(assert (=> d!1341296 (= (contains!12079 e!2754799 key!3717) lt!1624334)))

(declare-fun b!4425032 () Bool)

(declare-fun e!2755227 () Bool)

(assert (=> b!4425032 (= e!2755226 e!2755227)))

(declare-fun res!1829344 () Bool)

(assert (=> b!4425032 (=> res!1829344 e!2755227)))

(assert (=> b!4425032 (= res!1829344 (= (h!55263 e!2754799) key!3717))))

(declare-fun b!4425033 () Bool)

(assert (=> b!4425033 (= e!2755227 (contains!12079 (t!356640 e!2754799) key!3717))))

(assert (= (and d!1341296 res!1829345) b!4425032))

(assert (= (and b!4425032 (not res!1829344)) b!4425033))

(declare-fun m!5105139 () Bool)

(assert (=> d!1341296 m!5105139))

(declare-fun m!5105141 () Bool)

(assert (=> d!1341296 m!5105141))

(declare-fun m!5105143 () Bool)

(assert (=> b!4425033 m!5105143))

(assert (=> bm!307812 d!1341296))

(assert (=> d!1340942 d!1340938))

(assert (=> d!1340942 d!1340940))

(declare-fun d!1341298 () Bool)

(assert (=> d!1341298 (not (containsKey!1106 (apply!11599 lm!1616 (_1!27978 (h!55259 (toList!3481 lm!1616)))) key!3717))))

(assert (=> d!1341298 true))

(declare-fun _$39!355 () Unit!81703)

(assert (=> d!1341298 (= (choose!27919 lm!1616 key!3717 (_1!27978 (h!55259 (toList!3481 lm!1616))) hashF!1220) _$39!355)))

(declare-fun bs!756805 () Bool)

(assert (= bs!756805 d!1341298))

(assert (=> bs!756805 m!5103421))

(assert (=> bs!756805 m!5103421))

(assert (=> bs!756805 m!5103423))

(assert (=> d!1340942 d!1341298))

(declare-fun d!1341302 () Bool)

(declare-fun res!1829351 () Bool)

(declare-fun e!2755231 () Bool)

(assert (=> d!1341302 (=> res!1829351 e!2755231)))

(assert (=> d!1341302 (= res!1829351 ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1341302 (= (forall!9556 (toList!3481 lm!1616) lambda!153758) e!2755231)))

(declare-fun b!4425039 () Bool)

(declare-fun e!2755232 () Bool)

(assert (=> b!4425039 (= e!2755231 e!2755232)))

(declare-fun res!1829352 () Bool)

(assert (=> b!4425039 (=> (not res!1829352) (not e!2755232))))

(assert (=> b!4425039 (= res!1829352 (dynLambda!20842 lambda!153758 (h!55259 (toList!3481 lm!1616))))))

(declare-fun b!4425040 () Bool)

(assert (=> b!4425040 (= e!2755232 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153758))))

(assert (= (and d!1341302 (not res!1829351)) b!4425039))

(assert (= (and b!4425039 res!1829352) b!4425040))

(declare-fun b_lambda!143011 () Bool)

(assert (=> (not b_lambda!143011) (not b!4425039)))

(declare-fun m!5105165 () Bool)

(assert (=> b!4425039 m!5105165))

(declare-fun m!5105167 () Bool)

(assert (=> b!4425040 m!5105167))

(assert (=> d!1340942 d!1341302))

(assert (=> b!4424411 d!1341034))

(assert (=> b!4424411 d!1341036))

(declare-fun d!1341306 () Bool)

(declare-fun lt!1624337 () Bool)

(assert (=> d!1341306 (= lt!1624337 (select (content!7953 e!2754819) key!3717))))

(declare-fun e!2755235 () Bool)

(assert (=> d!1341306 (= lt!1624337 e!2755235)))

(declare-fun res!1829356 () Bool)

(assert (=> d!1341306 (=> (not res!1829356) (not e!2755235))))

(assert (=> d!1341306 (= res!1829356 ((_ is Cons!49578) e!2754819))))

(assert (=> d!1341306 (= (contains!12079 e!2754819 key!3717) lt!1624337)))

(declare-fun b!4425043 () Bool)

(declare-fun e!2755236 () Bool)

(assert (=> b!4425043 (= e!2755235 e!2755236)))

(declare-fun res!1829355 () Bool)

(assert (=> b!4425043 (=> res!1829355 e!2755236)))

(assert (=> b!4425043 (= res!1829355 (= (h!55263 e!2754819) key!3717))))

(declare-fun b!4425044 () Bool)

(assert (=> b!4425044 (= e!2755236 (contains!12079 (t!356640 e!2754819) key!3717))))

(assert (= (and d!1341306 res!1829356) b!4425043))

(assert (= (and b!4425043 (not res!1829355)) b!4425044))

(declare-fun m!5105173 () Bool)

(assert (=> d!1341306 m!5105173))

(declare-fun m!5105175 () Bool)

(assert (=> d!1341306 m!5105175))

(declare-fun m!5105177 () Bool)

(assert (=> b!4425044 m!5105177))

(assert (=> bm!307813 d!1341306))

(declare-fun d!1341310 () Bool)

(declare-fun res!1829359 () Bool)

(declare-fun e!2755239 () Bool)

(assert (=> d!1341310 (=> res!1829359 e!2755239)))

(assert (=> d!1341310 (= res!1829359 ((_ is Nil!49575) (toList!3482 lt!1623532)))))

(assert (=> d!1341310 (= (forall!9557 (toList!3482 lt!1623532) (ite c!753089 lambda!153740 lambda!153742)) e!2755239)))

(declare-fun b!4425047 () Bool)

(declare-fun e!2755240 () Bool)

(assert (=> b!4425047 (= e!2755239 e!2755240)))

(declare-fun res!1829360 () Bool)

(assert (=> b!4425047 (=> (not res!1829360) (not e!2755240))))

(assert (=> b!4425047 (= res!1829360 (dynLambda!20843 (ite c!753089 lambda!153740 lambda!153742) (h!55258 (toList!3482 lt!1623532))))))

(declare-fun b!4425048 () Bool)

(assert (=> b!4425048 (= e!2755240 (forall!9557 (t!356637 (toList!3482 lt!1623532)) (ite c!753089 lambda!153740 lambda!153742)))))

(assert (= (and d!1341310 (not res!1829359)) b!4425047))

(assert (= (and b!4425047 res!1829360) b!4425048))

(declare-fun b_lambda!143017 () Bool)

(assert (=> (not b_lambda!143017) (not b!4425047)))

(declare-fun m!5105183 () Bool)

(assert (=> b!4425047 m!5105183))

(declare-fun m!5105185 () Bool)

(assert (=> b!4425048 m!5105185))

(assert (=> bm!307804 d!1341310))

(declare-fun d!1341314 () Bool)

(declare-fun e!2755241 () Bool)

(assert (=> d!1341314 e!2755241))

(declare-fun res!1829361 () Bool)

(assert (=> d!1341314 (=> res!1829361 e!2755241)))

(declare-fun lt!1624340 () Bool)

(assert (=> d!1341314 (= res!1829361 (not lt!1624340))))

(declare-fun lt!1624339 () Bool)

(assert (=> d!1341314 (= lt!1624340 lt!1624339)))

(declare-fun lt!1624341 () Unit!81703)

(declare-fun e!2755242 () Unit!81703)

(assert (=> d!1341314 (= lt!1624341 e!2755242)))

(declare-fun c!753257 () Bool)

(assert (=> d!1341314 (= c!753257 lt!1624339)))

(assert (=> d!1341314 (= lt!1624339 (containsKey!1110 (toList!3481 lt!1623842) (_1!27978 lt!1623539)))))

(assert (=> d!1341314 (= (contains!12072 lt!1623842 (_1!27978 lt!1623539)) lt!1624340)))

(declare-fun b!4425049 () Bool)

(declare-fun lt!1624338 () Unit!81703)

(assert (=> b!4425049 (= e!2755242 lt!1624338)))

(assert (=> b!4425049 (= lt!1624338 (lemmaContainsKeyImpliesGetValueByKeyDefined!617 (toList!3481 lt!1623842) (_1!27978 lt!1623539)))))

(assert (=> b!4425049 (isDefined!8014 (getValueByKey!708 (toList!3481 lt!1623842) (_1!27978 lt!1623539)))))

(declare-fun b!4425050 () Bool)

(declare-fun Unit!81884 () Unit!81703)

(assert (=> b!4425050 (= e!2755242 Unit!81884)))

(declare-fun b!4425051 () Bool)

(assert (=> b!4425051 (= e!2755241 (isDefined!8014 (getValueByKey!708 (toList!3481 lt!1623842) (_1!27978 lt!1623539))))))

(assert (= (and d!1341314 c!753257) b!4425049))

(assert (= (and d!1341314 (not c!753257)) b!4425050))

(assert (= (and d!1341314 (not res!1829361)) b!4425051))

(declare-fun m!5105187 () Bool)

(assert (=> d!1341314 m!5105187))

(declare-fun m!5105189 () Bool)

(assert (=> b!4425049 m!5105189))

(assert (=> b!4425049 m!5103861))

(assert (=> b!4425049 m!5103861))

(declare-fun m!5105191 () Bool)

(assert (=> b!4425049 m!5105191))

(assert (=> b!4425051 m!5103861))

(assert (=> b!4425051 m!5103861))

(assert (=> b!4425051 m!5105191))

(assert (=> d!1340924 d!1341314))

(declare-fun b!4425056 () Bool)

(declare-fun e!2755247 () Option!10722)

(assert (=> b!4425056 (= e!2755247 (Some!10721 (_2!27978 (h!55259 lt!1623841))))))

(declare-fun d!1341316 () Bool)

(declare-fun c!753258 () Bool)

(assert (=> d!1341316 (= c!753258 (and ((_ is Cons!49576) lt!1623841) (= (_1!27978 (h!55259 lt!1623841)) (_1!27978 lt!1623539))))))

(assert (=> d!1341316 (= (getValueByKey!708 lt!1623841 (_1!27978 lt!1623539)) e!2755247)))

(declare-fun b!4425057 () Bool)

(declare-fun e!2755248 () Option!10722)

(assert (=> b!4425057 (= e!2755247 e!2755248)))

(declare-fun c!753259 () Bool)

(assert (=> b!4425057 (= c!753259 (and ((_ is Cons!49576) lt!1623841) (not (= (_1!27978 (h!55259 lt!1623841)) (_1!27978 lt!1623539)))))))

(declare-fun b!4425059 () Bool)

(assert (=> b!4425059 (= e!2755248 None!10721)))

(declare-fun b!4425058 () Bool)

(assert (=> b!4425058 (= e!2755248 (getValueByKey!708 (t!356638 lt!1623841) (_1!27978 lt!1623539)))))

(assert (= (and d!1341316 c!753258) b!4425056))

(assert (= (and d!1341316 (not c!753258)) b!4425057))

(assert (= (and b!4425057 c!753259) b!4425058))

(assert (= (and b!4425057 (not c!753259)) b!4425059))

(declare-fun m!5105193 () Bool)

(assert (=> b!4425058 m!5105193))

(assert (=> d!1340924 d!1341316))

(declare-fun d!1341318 () Bool)

(assert (=> d!1341318 (= (getValueByKey!708 lt!1623841 (_1!27978 lt!1623539)) (Some!10721 (_2!27978 lt!1623539)))))

(declare-fun lt!1624344 () Unit!81703)

(assert (=> d!1341318 (= lt!1624344 (choose!27940 lt!1623841 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(declare-fun e!2755249 () Bool)

(assert (=> d!1341318 e!2755249))

(declare-fun res!1829366 () Bool)

(assert (=> d!1341318 (=> (not res!1829366) (not e!2755249))))

(assert (=> d!1341318 (= res!1829366 (isStrictlySorted!230 lt!1623841))))

(assert (=> d!1341318 (= (lemmaContainsTupThenGetReturnValue!443 lt!1623841 (_1!27978 lt!1623539) (_2!27978 lt!1623539)) lt!1624344)))

(declare-fun b!4425060 () Bool)

(declare-fun res!1829367 () Bool)

(assert (=> b!4425060 (=> (not res!1829367) (not e!2755249))))

(assert (=> b!4425060 (= res!1829367 (containsKey!1110 lt!1623841 (_1!27978 lt!1623539)))))

(declare-fun b!4425061 () Bool)

(assert (=> b!4425061 (= e!2755249 (contains!12078 lt!1623841 (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539))))))

(assert (= (and d!1341318 res!1829366) b!4425060))

(assert (= (and b!4425060 res!1829367) b!4425061))

(assert (=> d!1341318 m!5103855))

(declare-fun m!5105195 () Bool)

(assert (=> d!1341318 m!5105195))

(declare-fun m!5105197 () Bool)

(assert (=> d!1341318 m!5105197))

(declare-fun m!5105199 () Bool)

(assert (=> b!4425060 m!5105199))

(declare-fun m!5105201 () Bool)

(assert (=> b!4425061 m!5105201))

(assert (=> d!1340924 d!1341318))

(declare-fun e!2755251 () List!49700)

(declare-fun c!753263 () Bool)

(declare-fun call!307883 () List!49700)

(declare-fun bm!307878 () Bool)

(assert (=> bm!307878 (= call!307883 ($colon$colon!784 e!2755251 (ite c!753263 (h!55259 (toList!3481 lt!1623534)) (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))))

(declare-fun c!753260 () Bool)

(assert (=> bm!307878 (= c!753260 c!753263)))

(declare-fun b!4425062 () Bool)

(declare-fun e!2755252 () Bool)

(declare-fun lt!1624345 () List!49700)

(assert (=> b!4425062 (= e!2755252 (contains!12078 lt!1624345 (tuple2!49369 (_1!27978 lt!1623539) (_2!27978 lt!1623539))))))

(declare-fun b!4425063 () Bool)

(declare-fun res!1829369 () Bool)

(assert (=> b!4425063 (=> (not res!1829369) (not e!2755252))))

(assert (=> b!4425063 (= res!1829369 (containsKey!1110 lt!1624345 (_1!27978 lt!1623539)))))

(declare-fun bm!307879 () Bool)

(declare-fun call!307884 () List!49700)

(assert (=> bm!307879 (= call!307884 call!307883)))

(declare-fun b!4425064 () Bool)

(assert (=> b!4425064 (= e!2755251 (insertStrictlySorted!258 (t!356638 (toList!3481 lt!1623534)) (_1!27978 lt!1623539) (_2!27978 lt!1623539)))))

(declare-fun b!4425065 () Bool)

(declare-fun e!2755254 () List!49700)

(declare-fun e!2755253 () List!49700)

(assert (=> b!4425065 (= e!2755254 e!2755253)))

(declare-fun c!753261 () Bool)

(assert (=> b!4425065 (= c!753261 (and ((_ is Cons!49576) (toList!3481 lt!1623534)) (= (_1!27978 (h!55259 (toList!3481 lt!1623534))) (_1!27978 lt!1623539))))))

(declare-fun bm!307880 () Bool)

(declare-fun call!307885 () List!49700)

(assert (=> bm!307880 (= call!307885 call!307884)))

(declare-fun b!4425066 () Bool)

(assert (=> b!4425066 (= e!2755253 call!307884)))

(declare-fun b!4425067 () Bool)

(declare-fun c!753262 () Bool)

(assert (=> b!4425067 (= c!753262 (and ((_ is Cons!49576) (toList!3481 lt!1623534)) (bvsgt (_1!27978 (h!55259 (toList!3481 lt!1623534))) (_1!27978 lt!1623539))))))

(declare-fun e!2755250 () List!49700)

(assert (=> b!4425067 (= e!2755253 e!2755250)))

(declare-fun b!4425068 () Bool)

(assert (=> b!4425068 (= e!2755250 call!307885)))

(declare-fun b!4425069 () Bool)

(assert (=> b!4425069 (= e!2755254 call!307883)))

(declare-fun d!1341320 () Bool)

(assert (=> d!1341320 e!2755252))

(declare-fun res!1829368 () Bool)

(assert (=> d!1341320 (=> (not res!1829368) (not e!2755252))))

(assert (=> d!1341320 (= res!1829368 (isStrictlySorted!230 lt!1624345))))

(assert (=> d!1341320 (= lt!1624345 e!2755254)))

(assert (=> d!1341320 (= c!753263 (and ((_ is Cons!49576) (toList!3481 lt!1623534)) (bvslt (_1!27978 (h!55259 (toList!3481 lt!1623534))) (_1!27978 lt!1623539))))))

(assert (=> d!1341320 (isStrictlySorted!230 (toList!3481 lt!1623534))))

(assert (=> d!1341320 (= (insertStrictlySorted!258 (toList!3481 lt!1623534) (_1!27978 lt!1623539) (_2!27978 lt!1623539)) lt!1624345)))

(declare-fun b!4425070 () Bool)

(assert (=> b!4425070 (= e!2755251 (ite c!753261 (t!356638 (toList!3481 lt!1623534)) (ite c!753262 (Cons!49576 (h!55259 (toList!3481 lt!1623534)) (t!356638 (toList!3481 lt!1623534))) Nil!49576)))))

(declare-fun b!4425071 () Bool)

(assert (=> b!4425071 (= e!2755250 call!307885)))

(assert (= (and d!1341320 c!753263) b!4425069))

(assert (= (and d!1341320 (not c!753263)) b!4425065))

(assert (= (and b!4425065 c!753261) b!4425066))

(assert (= (and b!4425065 (not c!753261)) b!4425067))

(assert (= (and b!4425067 c!753262) b!4425071))

(assert (= (and b!4425067 (not c!753262)) b!4425068))

(assert (= (or b!4425071 b!4425068) bm!307880))

(assert (= (or b!4425066 bm!307880) bm!307879))

(assert (= (or b!4425069 bm!307879) bm!307878))

(assert (= (and bm!307878 c!753260) b!4425064))

(assert (= (and bm!307878 (not c!753260)) b!4425070))

(assert (= (and d!1341320 res!1829368) b!4425063))

(assert (= (and b!4425063 res!1829369) b!4425062))

(declare-fun m!5105209 () Bool)

(assert (=> b!4425063 m!5105209))

(declare-fun m!5105211 () Bool)

(assert (=> b!4425062 m!5105211))

(declare-fun m!5105213 () Bool)

(assert (=> b!4425064 m!5105213))

(declare-fun m!5105215 () Bool)

(assert (=> bm!307878 m!5105215))

(declare-fun m!5105217 () Bool)

(assert (=> d!1341320 m!5105217))

(declare-fun m!5105219 () Bool)

(assert (=> d!1341320 m!5105219))

(assert (=> d!1340924 d!1341320))

(declare-fun bs!756806 () Bool)

(declare-fun d!1341324 () Bool)

(assert (= bs!756806 (and d!1341324 b!4424707)))

(declare-fun lambda!153847 () Int)

(assert (=> bs!756806 (= (= lt!1623538 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153847 lambda!153807))))

(declare-fun bs!756807 () Bool)

(assert (= bs!756807 (and d!1341324 b!4424468)))

(assert (=> bs!756807 (= (= lt!1623538 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153847 lambda!153776))))

(declare-fun bs!756808 () Bool)

(assert (= bs!756808 (and d!1341324 b!4424704)))

(assert (=> bs!756808 (= (= lt!1623538 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153847 lambda!153808))))

(declare-fun bs!756809 () Bool)

(assert (= bs!756809 (and d!1341324 b!4424471)))

(assert (=> bs!756809 (= (= lt!1623538 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153847 lambda!153775))))

(declare-fun bs!756810 () Bool)

(assert (= bs!756810 (and d!1341324 b!4424846)))

(assert (=> bs!756810 (= (= lt!1623538 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153847 lambda!153813))))

(assert (=> bs!756810 (= (= lt!1623538 lt!1624218) (= lambda!153847 lambda!153814))))

(declare-fun bs!756811 () Bool)

(assert (= bs!756811 (and d!1341324 d!1341054)))

(assert (=> bs!756811 (= (= lt!1623538 lt!1624042) (= lambda!153847 lambda!153798))))

(declare-fun bs!756812 () Bool)

(assert (= bs!756812 (and d!1341324 b!4424526)))

(assert (=> bs!756812 (= (= lt!1623538 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153847 lambda!153786))))

(assert (=> bs!756812 (= (= lt!1623538 lt!1623988) (= lambda!153847 lambda!153787))))

(declare-fun bs!756813 () Bool)

(assert (= bs!756813 (and d!1341324 b!4424307)))

(assert (=> bs!756813 (= (= lt!1623538 lt!1623532) (= lambda!153847 lambda!153740))))

(declare-fun bs!756814 () Bool)

(assert (= bs!756814 (and d!1341324 b!4424242)))

(assert (=> bs!756814 (= (= lt!1623538 lt!1623689) (= lambda!153847 lambda!153691))))

(assert (=> bs!756814 (= lambda!153847 lambda!153690)))

(assert (=> bs!756808 (= (= lt!1623538 lt!1624143) (= lambda!153847 lambda!153809))))

(declare-fun bs!756815 () Bool)

(assert (= bs!756815 (and d!1341324 d!1341106)))

(assert (=> bs!756815 (= (= lt!1623538 lt!1624139) (= lambda!153847 lambda!153810))))

(declare-fun bs!756816 () Bool)

(assert (= bs!756816 (and d!1341324 b!4424849)))

(assert (=> bs!756816 (= (= lt!1623538 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153847 lambda!153812))))

(declare-fun bs!756817 () Bool)

(assert (= bs!756817 (and d!1341324 b!4424580)))

(assert (=> bs!756817 (= (= lt!1623538 lt!1624046) (= lambda!153847 lambda!153797))))

(declare-fun bs!756818 () Bool)

(assert (= bs!756818 (and d!1341324 d!1341020)))

(assert (=> bs!756818 (= (= lt!1623538 lt!1623984) (= lambda!153847 lambda!153788))))

(declare-fun bs!756819 () Bool)

(assert (= bs!756819 (and d!1341324 b!4424583)))

(assert (=> bs!756819 (= (= lt!1623538 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153847 lambda!153794))))

(assert (=> bs!756817 (= (= lt!1623538 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153847 lambda!153796))))

(declare-fun bs!756820 () Bool)

(assert (= bs!756820 (and d!1341324 d!1341068)))

(assert (=> bs!756820 (= (= lt!1623538 lt!1623532) (= lambda!153847 lambda!153801))))

(declare-fun bs!756821 () Bool)

(assert (= bs!756821 (and d!1341324 b!4424304)))

(assert (=> bs!756821 (= (= lt!1623538 lt!1623791) (= lambda!153847 lambda!153742))))

(declare-fun bs!756822 () Bool)

(assert (= bs!756822 (and d!1341324 d!1340812)))

(assert (=> bs!756822 (= (= lt!1623538 lt!1623685) (= lambda!153847 lambda!153694))))

(declare-fun bs!756823 () Bool)

(assert (= bs!756823 (and d!1341324 d!1340894)))

(assert (=> bs!756823 (= (= lt!1623538 lt!1623787) (= lambda!153847 lambda!153743))))

(declare-fun bs!756824 () Bool)

(assert (= bs!756824 (and d!1341324 d!1341180)))

(assert (=> bs!756824 (= (= lt!1623538 lt!1624214) (= lambda!153847 lambda!153817))))

(assert (=> bs!756807 (= (= lt!1623538 lt!1623954) (= lambda!153847 lambda!153777))))

(declare-fun bs!756825 () Bool)

(assert (= bs!756825 (and d!1341324 d!1341096)))

(assert (=> bs!756825 (= (= lt!1623538 lt!1623791) (= lambda!153847 lambda!153806))))

(declare-fun bs!756826 () Bool)

(assert (= bs!756826 (and d!1341324 b!4424529)))

(assert (=> bs!756826 (= (= lt!1623538 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153847 lambda!153785))))

(assert (=> bs!756821 (= (= lt!1623538 lt!1623532) (= lambda!153847 lambda!153741))))

(declare-fun bs!756827 () Bool)

(assert (= bs!756827 (and d!1341324 d!1340882)))

(assert (=> bs!756827 (not (= lambda!153847 lambda!153732))))

(declare-fun bs!756828 () Bool)

(assert (= bs!756828 (and d!1341324 d!1340982)))

(assert (=> bs!756828 (= (= lt!1623538 lt!1623950) (= lambda!153847 lambda!153778))))

(declare-fun bs!756829 () Bool)

(assert (= bs!756829 (and d!1341324 b!4424245)))

(assert (=> bs!756829 (= lambda!153847 lambda!153689)))

(assert (=> d!1341324 true))

(assert (=> d!1341324 (forall!9557 (toList!3482 lt!1623538) lambda!153847)))

(declare-fun lt!1624347 () Unit!81703)

(assert (=> d!1341324 (= lt!1624347 (choose!27926 lt!1623538))))

(assert (=> d!1341324 (= (lemmaContainsAllItsOwnKeys!170 lt!1623538) lt!1624347)))

(declare-fun bs!756830 () Bool)

(assert (= bs!756830 d!1341324))

(declare-fun m!5105221 () Bool)

(assert (=> bs!756830 m!5105221))

(declare-fun m!5105223 () Bool)

(assert (=> bs!756830 m!5105223))

(assert (=> bm!307794 d!1341324))

(declare-fun d!1341326 () Bool)

(declare-fun res!1829372 () Bool)

(declare-fun e!2755257 () Bool)

(assert (=> d!1341326 (=> res!1829372 e!2755257)))

(assert (=> d!1341326 (= res!1829372 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341326 (= (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153743) e!2755257)))

(declare-fun b!4425074 () Bool)

(declare-fun e!2755258 () Bool)

(assert (=> b!4425074 (= e!2755257 e!2755258)))

(declare-fun res!1829373 () Bool)

(assert (=> b!4425074 (=> (not res!1829373) (not e!2755258))))

(assert (=> b!4425074 (= res!1829373 (dynLambda!20843 lambda!153743 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4425075 () Bool)

(assert (=> b!4425075 (= e!2755258 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153743))))

(assert (= (and d!1341326 (not res!1829372)) b!4425074))

(assert (= (and b!4425074 res!1829373) b!4425075))

(declare-fun b_lambda!143019 () Bool)

(assert (=> (not b_lambda!143019) (not b!4425074)))

(declare-fun m!5105225 () Bool)

(assert (=> b!4425074 m!5105225))

(declare-fun m!5105227 () Bool)

(assert (=> b!4425075 m!5105227))

(assert (=> d!1340894 d!1341326))

(assert (=> d!1340894 d!1341004))

(declare-fun b!4425076 () Bool)

(declare-fun e!2755259 () Option!10722)

(assert (=> b!4425076 (= e!2755259 (Some!10721 (_2!27978 (h!55259 (toList!3481 lt!1623878)))))))

(declare-fun d!1341328 () Bool)

(declare-fun c!753264 () Bool)

(assert (=> d!1341328 (= c!753264 (and ((_ is Cons!49576) (toList!3481 lt!1623878)) (= (_1!27978 (h!55259 (toList!3481 lt!1623878))) (_1!27978 lt!1623539))))))

(assert (=> d!1341328 (= (getValueByKey!708 (toList!3481 lt!1623878) (_1!27978 lt!1623539)) e!2755259)))

(declare-fun b!4425077 () Bool)

(declare-fun e!2755260 () Option!10722)

(assert (=> b!4425077 (= e!2755259 e!2755260)))

(declare-fun c!753265 () Bool)

(assert (=> b!4425077 (= c!753265 (and ((_ is Cons!49576) (toList!3481 lt!1623878)) (not (= (_1!27978 (h!55259 (toList!3481 lt!1623878))) (_1!27978 lt!1623539)))))))

(declare-fun b!4425079 () Bool)

(assert (=> b!4425079 (= e!2755260 None!10721)))

(declare-fun b!4425078 () Bool)

(assert (=> b!4425078 (= e!2755260 (getValueByKey!708 (t!356638 (toList!3481 lt!1623878)) (_1!27978 lt!1623539)))))

(assert (= (and d!1341328 c!753264) b!4425076))

(assert (= (and d!1341328 (not c!753264)) b!4425077))

(assert (= (and b!4425077 c!753265) b!4425078))

(assert (= (and b!4425077 (not c!753265)) b!4425079))

(declare-fun m!5105229 () Bool)

(assert (=> b!4425078 m!5105229))

(assert (=> b!4424386 d!1341328))

(declare-fun bs!756831 () Bool)

(declare-fun b!4425084 () Bool)

(assert (= bs!756831 (and b!4425084 b!4424707)))

(declare-fun lambda!153848 () Int)

(assert (=> bs!756831 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153848 lambda!153807))))

(declare-fun bs!756832 () Bool)

(assert (= bs!756832 (and b!4425084 b!4424468)))

(assert (=> bs!756832 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153848 lambda!153776))))

(declare-fun bs!756833 () Bool)

(assert (= bs!756833 (and b!4425084 b!4424471)))

(assert (=> bs!756833 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153848 lambda!153775))))

(declare-fun bs!756834 () Bool)

(assert (= bs!756834 (and b!4425084 b!4424846)))

(assert (=> bs!756834 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153848 lambda!153813))))

(assert (=> bs!756834 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624218) (= lambda!153848 lambda!153814))))

(declare-fun bs!756835 () Bool)

(assert (= bs!756835 (and b!4425084 d!1341054)))

(assert (=> bs!756835 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624042) (= lambda!153848 lambda!153798))))

(declare-fun bs!756836 () Bool)

(assert (= bs!756836 (and b!4425084 b!4424526)))

(assert (=> bs!756836 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153848 lambda!153786))))

(assert (=> bs!756836 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623988) (= lambda!153848 lambda!153787))))

(declare-fun bs!756837 () Bool)

(assert (= bs!756837 (and b!4425084 b!4424307)))

(assert (=> bs!756837 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153848 lambda!153740))))

(declare-fun bs!756838 () Bool)

(assert (= bs!756838 (and b!4425084 b!4424242)))

(assert (=> bs!756838 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623689) (= lambda!153848 lambda!153691))))

(assert (=> bs!756838 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153848 lambda!153690))))

(declare-fun bs!756839 () Bool)

(assert (= bs!756839 (and b!4425084 b!4424704)))

(assert (=> bs!756839 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624143) (= lambda!153848 lambda!153809))))

(declare-fun bs!756840 () Bool)

(assert (= bs!756840 (and b!4425084 d!1341106)))

(assert (=> bs!756840 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624139) (= lambda!153848 lambda!153810))))

(declare-fun bs!756841 () Bool)

(assert (= bs!756841 (and b!4425084 d!1341324)))

(assert (=> bs!756841 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153848 lambda!153847))))

(assert (=> bs!756839 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153848 lambda!153808))))

(declare-fun bs!756842 () Bool)

(assert (= bs!756842 (and b!4425084 b!4424849)))

(assert (=> bs!756842 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153848 lambda!153812))))

(declare-fun bs!756843 () Bool)

(assert (= bs!756843 (and b!4425084 b!4424580)))

(assert (=> bs!756843 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624046) (= lambda!153848 lambda!153797))))

(declare-fun bs!756844 () Bool)

(assert (= bs!756844 (and b!4425084 d!1341020)))

(assert (=> bs!756844 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623984) (= lambda!153848 lambda!153788))))

(declare-fun bs!756845 () Bool)

(assert (= bs!756845 (and b!4425084 b!4424583)))

(assert (=> bs!756845 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153848 lambda!153794))))

(assert (=> bs!756843 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153848 lambda!153796))))

(declare-fun bs!756846 () Bool)

(assert (= bs!756846 (and b!4425084 d!1341068)))

(assert (=> bs!756846 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153848 lambda!153801))))

(declare-fun bs!756847 () Bool)

(assert (= bs!756847 (and b!4425084 b!4424304)))

(assert (=> bs!756847 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623791) (= lambda!153848 lambda!153742))))

(declare-fun bs!756848 () Bool)

(assert (= bs!756848 (and b!4425084 d!1340812)))

(assert (=> bs!756848 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623685) (= lambda!153848 lambda!153694))))

(declare-fun bs!756849 () Bool)

(assert (= bs!756849 (and b!4425084 d!1340894)))

(assert (=> bs!756849 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623787) (= lambda!153848 lambda!153743))))

(declare-fun bs!756850 () Bool)

(assert (= bs!756850 (and b!4425084 d!1341180)))

(assert (=> bs!756850 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624214) (= lambda!153848 lambda!153817))))

(assert (=> bs!756832 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623954) (= lambda!153848 lambda!153777))))

(declare-fun bs!756851 () Bool)

(assert (= bs!756851 (and b!4425084 d!1341096)))

(assert (=> bs!756851 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623791) (= lambda!153848 lambda!153806))))

(declare-fun bs!756852 () Bool)

(assert (= bs!756852 (and b!4425084 b!4424529)))

(assert (=> bs!756852 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153848 lambda!153785))))

(assert (=> bs!756847 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153848 lambda!153741))))

(declare-fun bs!756853 () Bool)

(assert (= bs!756853 (and b!4425084 d!1340882)))

(assert (=> bs!756853 (not (= lambda!153848 lambda!153732))))

(declare-fun bs!756854 () Bool)

(assert (= bs!756854 (and b!4425084 d!1340982)))

(assert (=> bs!756854 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623950) (= lambda!153848 lambda!153778))))

(declare-fun bs!756855 () Bool)

(assert (= bs!756855 (and b!4425084 b!4424245)))

(assert (=> bs!756855 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153848 lambda!153689))))

(assert (=> b!4425084 true))

(declare-fun bs!756856 () Bool)

(declare-fun b!4425081 () Bool)

(assert (= bs!756856 (and b!4425081 b!4424707)))

(declare-fun lambda!153849 () Int)

(assert (=> bs!756856 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153849 lambda!153807))))

(declare-fun bs!756857 () Bool)

(assert (= bs!756857 (and b!4425081 b!4424468)))

(assert (=> bs!756857 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153849 lambda!153776))))

(declare-fun bs!756858 () Bool)

(assert (= bs!756858 (and b!4425081 b!4424471)))

(assert (=> bs!756858 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153849 lambda!153775))))

(declare-fun bs!756859 () Bool)

(assert (= bs!756859 (and b!4425081 b!4424846)))

(assert (=> bs!756859 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153849 lambda!153813))))

(assert (=> bs!756859 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624218) (= lambda!153849 lambda!153814))))

(declare-fun bs!756860 () Bool)

(assert (= bs!756860 (and b!4425081 d!1341054)))

(assert (=> bs!756860 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624042) (= lambda!153849 lambda!153798))))

(declare-fun bs!756861 () Bool)

(assert (= bs!756861 (and b!4425081 b!4424526)))

(assert (=> bs!756861 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153849 lambda!153786))))

(assert (=> bs!756861 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623988) (= lambda!153849 lambda!153787))))

(declare-fun bs!756862 () Bool)

(assert (= bs!756862 (and b!4425081 b!4424307)))

(assert (=> bs!756862 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153849 lambda!153740))))

(declare-fun bs!756863 () Bool)

(assert (= bs!756863 (and b!4425081 b!4424242)))

(assert (=> bs!756863 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623689) (= lambda!153849 lambda!153691))))

(assert (=> bs!756863 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153849 lambda!153690))))

(declare-fun bs!756864 () Bool)

(assert (= bs!756864 (and b!4425081 b!4424704)))

(assert (=> bs!756864 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624143) (= lambda!153849 lambda!153809))))

(declare-fun bs!756865 () Bool)

(assert (= bs!756865 (and b!4425081 d!1341106)))

(assert (=> bs!756865 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624139) (= lambda!153849 lambda!153810))))

(declare-fun bs!756866 () Bool)

(assert (= bs!756866 (and b!4425081 d!1341324)))

(assert (=> bs!756866 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153849 lambda!153847))))

(assert (=> bs!756864 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153849 lambda!153808))))

(declare-fun bs!756867 () Bool)

(assert (= bs!756867 (and b!4425081 b!4424849)))

(assert (=> bs!756867 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153849 lambda!153812))))

(declare-fun bs!756868 () Bool)

(assert (= bs!756868 (and b!4425081 b!4425084)))

(assert (=> bs!756868 (= lambda!153849 lambda!153848)))

(declare-fun bs!756869 () Bool)

(assert (= bs!756869 (and b!4425081 b!4424580)))

(assert (=> bs!756869 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624046) (= lambda!153849 lambda!153797))))

(declare-fun bs!756870 () Bool)

(assert (= bs!756870 (and b!4425081 d!1341020)))

(assert (=> bs!756870 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623984) (= lambda!153849 lambda!153788))))

(declare-fun bs!756871 () Bool)

(assert (= bs!756871 (and b!4425081 b!4424583)))

(assert (=> bs!756871 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153849 lambda!153794))))

(assert (=> bs!756869 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153849 lambda!153796))))

(declare-fun bs!756872 () Bool)

(assert (= bs!756872 (and b!4425081 d!1341068)))

(assert (=> bs!756872 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153849 lambda!153801))))

(declare-fun bs!756873 () Bool)

(assert (= bs!756873 (and b!4425081 b!4424304)))

(assert (=> bs!756873 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623791) (= lambda!153849 lambda!153742))))

(declare-fun bs!756874 () Bool)

(assert (= bs!756874 (and b!4425081 d!1340812)))

(assert (=> bs!756874 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623685) (= lambda!153849 lambda!153694))))

(declare-fun bs!756875 () Bool)

(assert (= bs!756875 (and b!4425081 d!1340894)))

(assert (=> bs!756875 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623787) (= lambda!153849 lambda!153743))))

(declare-fun bs!756876 () Bool)

(assert (= bs!756876 (and b!4425081 d!1341180)))

(assert (=> bs!756876 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624214) (= lambda!153849 lambda!153817))))

(assert (=> bs!756857 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623954) (= lambda!153849 lambda!153777))))

(declare-fun bs!756877 () Bool)

(assert (= bs!756877 (and b!4425081 d!1341096)))

(assert (=> bs!756877 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623791) (= lambda!153849 lambda!153806))))

(declare-fun bs!756878 () Bool)

(assert (= bs!756878 (and b!4425081 b!4424529)))

(assert (=> bs!756878 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153849 lambda!153785))))

(assert (=> bs!756873 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623532) (= lambda!153849 lambda!153741))))

(declare-fun bs!756879 () Bool)

(assert (= bs!756879 (and b!4425081 d!1340882)))

(assert (=> bs!756879 (not (= lambda!153849 lambda!153732))))

(declare-fun bs!756880 () Bool)

(assert (= bs!756880 (and b!4425081 d!1340982)))

(assert (=> bs!756880 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623950) (= lambda!153849 lambda!153778))))

(declare-fun bs!756881 () Bool)

(assert (= bs!756881 (and b!4425081 b!4424245)))

(assert (=> bs!756881 (= (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1623538) (= lambda!153849 lambda!153689))))

(assert (=> b!4425081 true))

(declare-fun lt!1624364 () ListMap!2725)

(declare-fun lambda!153850 () Int)

(assert (=> bs!756856 (= (= lt!1624364 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153850 lambda!153807))))

(assert (=> bs!756857 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153850 lambda!153776))))

(assert (=> bs!756858 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153850 lambda!153775))))

(assert (=> bs!756859 (= (= lt!1624364 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153850 lambda!153813))))

(assert (=> bs!756859 (= (= lt!1624364 lt!1624218) (= lambda!153850 lambda!153814))))

(assert (=> b!4425081 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153850 lambda!153849))))

(assert (=> bs!756860 (= (= lt!1624364 lt!1624042) (= lambda!153850 lambda!153798))))

(assert (=> bs!756861 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153850 lambda!153786))))

(assert (=> bs!756861 (= (= lt!1624364 lt!1623988) (= lambda!153850 lambda!153787))))

(assert (=> bs!756862 (= (= lt!1624364 lt!1623532) (= lambda!153850 lambda!153740))))

(assert (=> bs!756863 (= (= lt!1624364 lt!1623689) (= lambda!153850 lambda!153691))))

(assert (=> bs!756863 (= (= lt!1624364 lt!1623538) (= lambda!153850 lambda!153690))))

(assert (=> bs!756864 (= (= lt!1624364 lt!1624143) (= lambda!153850 lambda!153809))))

(assert (=> bs!756865 (= (= lt!1624364 lt!1624139) (= lambda!153850 lambda!153810))))

(assert (=> bs!756866 (= (= lt!1624364 lt!1623538) (= lambda!153850 lambda!153847))))

(assert (=> bs!756864 (= (= lt!1624364 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153850 lambda!153808))))

(assert (=> bs!756867 (= (= lt!1624364 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153850 lambda!153812))))

(assert (=> bs!756868 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153850 lambda!153848))))

(assert (=> bs!756869 (= (= lt!1624364 lt!1624046) (= lambda!153850 lambda!153797))))

(assert (=> bs!756870 (= (= lt!1624364 lt!1623984) (= lambda!153850 lambda!153788))))

(assert (=> bs!756871 (= (= lt!1624364 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153850 lambda!153794))))

(assert (=> bs!756869 (= (= lt!1624364 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153850 lambda!153796))))

(assert (=> bs!756872 (= (= lt!1624364 lt!1623532) (= lambda!153850 lambda!153801))))

(assert (=> bs!756873 (= (= lt!1624364 lt!1623791) (= lambda!153850 lambda!153742))))

(assert (=> bs!756874 (= (= lt!1624364 lt!1623685) (= lambda!153850 lambda!153694))))

(assert (=> bs!756875 (= (= lt!1624364 lt!1623787) (= lambda!153850 lambda!153743))))

(assert (=> bs!756876 (= (= lt!1624364 lt!1624214) (= lambda!153850 lambda!153817))))

(assert (=> bs!756857 (= (= lt!1624364 lt!1623954) (= lambda!153850 lambda!153777))))

(assert (=> bs!756877 (= (= lt!1624364 lt!1623791) (= lambda!153850 lambda!153806))))

(assert (=> bs!756878 (= (= lt!1624364 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153850 lambda!153785))))

(assert (=> bs!756873 (= (= lt!1624364 lt!1623532) (= lambda!153850 lambda!153741))))

(assert (=> bs!756879 (not (= lambda!153850 lambda!153732))))

(assert (=> bs!756880 (= (= lt!1624364 lt!1623950) (= lambda!153850 lambda!153778))))

(assert (=> bs!756881 (= (= lt!1624364 lt!1623538) (= lambda!153850 lambda!153689))))

(assert (=> b!4425081 true))

(declare-fun bs!756882 () Bool)

(declare-fun d!1341330 () Bool)

(assert (= bs!756882 (and d!1341330 b!4424707)))

(declare-fun lambda!153853 () Int)

(declare-fun lt!1624360 () ListMap!2725)

(assert (=> bs!756882 (= (= lt!1624360 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153853 lambda!153807))))

(declare-fun bs!756883 () Bool)

(assert (= bs!756883 (and d!1341330 b!4424468)))

(assert (=> bs!756883 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153853 lambda!153776))))

(declare-fun bs!756884 () Bool)

(assert (= bs!756884 (and d!1341330 b!4424471)))

(assert (=> bs!756884 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153853 lambda!153775))))

(declare-fun bs!756885 () Bool)

(assert (= bs!756885 (and d!1341330 b!4424846)))

(assert (=> bs!756885 (= (= lt!1624360 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153853 lambda!153813))))

(assert (=> bs!756885 (= (= lt!1624360 lt!1624218) (= lambda!153853 lambda!153814))))

(declare-fun bs!756886 () Bool)

(assert (= bs!756886 (and d!1341330 b!4425081)))

(assert (=> bs!756886 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153853 lambda!153849))))

(declare-fun bs!756887 () Bool)

(assert (= bs!756887 (and d!1341330 d!1341054)))

(assert (=> bs!756887 (= (= lt!1624360 lt!1624042) (= lambda!153853 lambda!153798))))

(declare-fun bs!756888 () Bool)

(assert (= bs!756888 (and d!1341330 b!4424526)))

(assert (=> bs!756888 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153853 lambda!153786))))

(assert (=> bs!756888 (= (= lt!1624360 lt!1623988) (= lambda!153853 lambda!153787))))

(declare-fun bs!756889 () Bool)

(assert (= bs!756889 (and d!1341330 b!4424307)))

(assert (=> bs!756889 (= (= lt!1624360 lt!1623532) (= lambda!153853 lambda!153740))))

(declare-fun bs!756890 () Bool)

(assert (= bs!756890 (and d!1341330 b!4424242)))

(assert (=> bs!756890 (= (= lt!1624360 lt!1623689) (= lambda!153853 lambda!153691))))

(assert (=> bs!756890 (= (= lt!1624360 lt!1623538) (= lambda!153853 lambda!153690))))

(assert (=> bs!756886 (= (= lt!1624360 lt!1624364) (= lambda!153853 lambda!153850))))

(declare-fun bs!756891 () Bool)

(assert (= bs!756891 (and d!1341330 b!4424704)))

(assert (=> bs!756891 (= (= lt!1624360 lt!1624143) (= lambda!153853 lambda!153809))))

(declare-fun bs!756892 () Bool)

(assert (= bs!756892 (and d!1341330 d!1341106)))

(assert (=> bs!756892 (= (= lt!1624360 lt!1624139) (= lambda!153853 lambda!153810))))

(declare-fun bs!756893 () Bool)

(assert (= bs!756893 (and d!1341330 d!1341324)))

(assert (=> bs!756893 (= (= lt!1624360 lt!1623538) (= lambda!153853 lambda!153847))))

(assert (=> bs!756891 (= (= lt!1624360 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153853 lambda!153808))))

(declare-fun bs!756894 () Bool)

(assert (= bs!756894 (and d!1341330 b!4424849)))

(assert (=> bs!756894 (= (= lt!1624360 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153853 lambda!153812))))

(declare-fun bs!756895 () Bool)

(assert (= bs!756895 (and d!1341330 b!4425084)))

(assert (=> bs!756895 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153853 lambda!153848))))

(declare-fun bs!756896 () Bool)

(assert (= bs!756896 (and d!1341330 b!4424580)))

(assert (=> bs!756896 (= (= lt!1624360 lt!1624046) (= lambda!153853 lambda!153797))))

(declare-fun bs!756897 () Bool)

(assert (= bs!756897 (and d!1341330 d!1341020)))

(assert (=> bs!756897 (= (= lt!1624360 lt!1623984) (= lambda!153853 lambda!153788))))

(declare-fun bs!756898 () Bool)

(assert (= bs!756898 (and d!1341330 b!4424583)))

(assert (=> bs!756898 (= (= lt!1624360 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153853 lambda!153794))))

(assert (=> bs!756896 (= (= lt!1624360 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153853 lambda!153796))))

(declare-fun bs!756899 () Bool)

(assert (= bs!756899 (and d!1341330 d!1341068)))

(assert (=> bs!756899 (= (= lt!1624360 lt!1623532) (= lambda!153853 lambda!153801))))

(declare-fun bs!756900 () Bool)

(assert (= bs!756900 (and d!1341330 b!4424304)))

(assert (=> bs!756900 (= (= lt!1624360 lt!1623791) (= lambda!153853 lambda!153742))))

(declare-fun bs!756901 () Bool)

(assert (= bs!756901 (and d!1341330 d!1340812)))

(assert (=> bs!756901 (= (= lt!1624360 lt!1623685) (= lambda!153853 lambda!153694))))

(declare-fun bs!756902 () Bool)

(assert (= bs!756902 (and d!1341330 d!1340894)))

(assert (=> bs!756902 (= (= lt!1624360 lt!1623787) (= lambda!153853 lambda!153743))))

(declare-fun bs!756903 () Bool)

(assert (= bs!756903 (and d!1341330 d!1341180)))

(assert (=> bs!756903 (= (= lt!1624360 lt!1624214) (= lambda!153853 lambda!153817))))

(assert (=> bs!756883 (= (= lt!1624360 lt!1623954) (= lambda!153853 lambda!153777))))

(declare-fun bs!756904 () Bool)

(assert (= bs!756904 (and d!1341330 d!1341096)))

(assert (=> bs!756904 (= (= lt!1624360 lt!1623791) (= lambda!153853 lambda!153806))))

(declare-fun bs!756905 () Bool)

(assert (= bs!756905 (and d!1341330 b!4424529)))

(assert (=> bs!756905 (= (= lt!1624360 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153853 lambda!153785))))

(assert (=> bs!756900 (= (= lt!1624360 lt!1623532) (= lambda!153853 lambda!153741))))

(declare-fun bs!756906 () Bool)

(assert (= bs!756906 (and d!1341330 d!1340882)))

(assert (=> bs!756906 (not (= lambda!153853 lambda!153732))))

(declare-fun bs!756907 () Bool)

(assert (= bs!756907 (and d!1341330 d!1340982)))

(assert (=> bs!756907 (= (= lt!1624360 lt!1623950) (= lambda!153853 lambda!153778))))

(declare-fun bs!756908 () Bool)

(assert (= bs!756908 (and d!1341330 b!4424245)))

(assert (=> bs!756908 (= (= lt!1624360 lt!1623538) (= lambda!153853 lambda!153689))))

(assert (=> d!1341330 true))

(declare-fun b!4425080 () Bool)

(declare-fun e!2755263 () Bool)

(assert (=> b!4425080 (= e!2755263 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) lambda!153850))))

(declare-fun e!2755262 () ListMap!2725)

(assert (=> b!4425081 (= e!2755262 lt!1624364)))

(declare-fun lt!1624368 () ListMap!2725)

(assert (=> b!4425081 (= lt!1624368 (+!1079 (extractMap!808 (t!356638 (toList!3481 lm!1616))) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4425081 (= lt!1624364 (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 (extractMap!808 (t!356638 (toList!3481 lm!1616))) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624351 () Unit!81703)

(declare-fun call!307886 () Unit!81703)

(assert (=> b!4425081 (= lt!1624351 call!307886)))

(declare-fun call!307888 () Bool)

(assert (=> b!4425081 call!307888))

(declare-fun lt!1624366 () Unit!81703)

(assert (=> b!4425081 (= lt!1624366 lt!1624351)))

(assert (=> b!4425081 (forall!9557 (toList!3482 lt!1624368) lambda!153850)))

(declare-fun lt!1624363 () Unit!81703)

(declare-fun Unit!81898 () Unit!81703)

(assert (=> b!4425081 (= lt!1624363 Unit!81898)))

(assert (=> b!4425081 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153850)))

(declare-fun lt!1624348 () Unit!81703)

(declare-fun Unit!81899 () Unit!81703)

(assert (=> b!4425081 (= lt!1624348 Unit!81899)))

(declare-fun lt!1624350 () Unit!81703)

(declare-fun Unit!81900 () Unit!81703)

(assert (=> b!4425081 (= lt!1624350 Unit!81900)))

(declare-fun lt!1624353 () Unit!81703)

(assert (=> b!4425081 (= lt!1624353 (forallContained!2088 (toList!3482 lt!1624368) lambda!153850 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4425081 (contains!12073 lt!1624368 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624354 () Unit!81703)

(declare-fun Unit!81901 () Unit!81703)

(assert (=> b!4425081 (= lt!1624354 Unit!81901)))

(assert (=> b!4425081 (contains!12073 lt!1624364 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624349 () Unit!81703)

(declare-fun Unit!81902 () Unit!81703)

(assert (=> b!4425081 (= lt!1624349 Unit!81902)))

(assert (=> b!4425081 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153850)))

(declare-fun lt!1624359 () Unit!81703)

(declare-fun Unit!81903 () Unit!81703)

(assert (=> b!4425081 (= lt!1624359 Unit!81903)))

(assert (=> b!4425081 (forall!9557 (toList!3482 lt!1624368) lambda!153850)))

(declare-fun lt!1624367 () Unit!81703)

(declare-fun Unit!81904 () Unit!81703)

(assert (=> b!4425081 (= lt!1624367 Unit!81904)))

(declare-fun lt!1624365 () Unit!81703)

(declare-fun Unit!81905 () Unit!81703)

(assert (=> b!4425081 (= lt!1624365 Unit!81905)))

(declare-fun lt!1624356 () Unit!81703)

(assert (=> b!4425081 (= lt!1624356 (addForallContainsKeyThenBeforeAdding!170 (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624364 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun call!307887 () Bool)

(assert (=> b!4425081 call!307887))

(declare-fun lt!1624362 () Unit!81703)

(assert (=> b!4425081 (= lt!1624362 lt!1624356)))

(assert (=> b!4425081 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) lambda!153850)))

(declare-fun lt!1624357 () Unit!81703)

(declare-fun Unit!81906 () Unit!81703)

(assert (=> b!4425081 (= lt!1624357 Unit!81906)))

(declare-fun res!1829376 () Bool)

(assert (=> b!4425081 (= res!1829376 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153850))))

(assert (=> b!4425081 (=> (not res!1829376) (not e!2755263))))

(assert (=> b!4425081 e!2755263))

(declare-fun lt!1624358 () Unit!81703)

(declare-fun Unit!81907 () Unit!81703)

(assert (=> b!4425081 (= lt!1624358 Unit!81907)))

(declare-fun e!2755261 () Bool)

(assert (=> d!1341330 e!2755261))

(declare-fun res!1829375 () Bool)

(assert (=> d!1341330 (=> (not res!1829375) (not e!2755261))))

(assert (=> d!1341330 (= res!1829375 (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153853))))

(assert (=> d!1341330 (= lt!1624360 e!2755262)))

(declare-fun c!753266 () Bool)

(assert (=> d!1341330 (= c!753266 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341330 (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616))))))

(assert (=> d!1341330 (= (addToMapMapFromBucket!384 (_2!27978 (h!55259 (toList!3481 lm!1616))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))) lt!1624360)))

(declare-fun bm!307881 () Bool)

(assert (=> bm!307881 (= call!307887 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (ite c!753266 lambda!153848 lambda!153850)))))

(declare-fun bm!307882 () Bool)

(assert (=> bm!307882 (= call!307888 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (ite c!753266 lambda!153848 lambda!153849)))))

(declare-fun b!4425082 () Bool)

(declare-fun res!1829374 () Bool)

(assert (=> b!4425082 (=> (not res!1829374) (not e!2755261))))

(assert (=> b!4425082 (= res!1829374 (forall!9557 (toList!3482 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) lambda!153853))))

(declare-fun bm!307883 () Bool)

(assert (=> bm!307883 (= call!307886 (lemmaContainsAllItsOwnKeys!170 (extractMap!808 (t!356638 (toList!3481 lm!1616)))))))

(declare-fun b!4425083 () Bool)

(assert (=> b!4425083 (= e!2755261 (invariantList!803 (toList!3482 lt!1624360)))))

(assert (=> b!4425084 (= e!2755262 (extractMap!808 (t!356638 (toList!3481 lm!1616))))))

(declare-fun lt!1624355 () Unit!81703)

(assert (=> b!4425084 (= lt!1624355 call!307886)))

(assert (=> b!4425084 call!307888))

(declare-fun lt!1624352 () Unit!81703)

(assert (=> b!4425084 (= lt!1624352 lt!1624355)))

(assert (=> b!4425084 call!307887))

(declare-fun lt!1624361 () Unit!81703)

(declare-fun Unit!81908 () Unit!81703)

(assert (=> b!4425084 (= lt!1624361 Unit!81908)))

(assert (= (and d!1341330 c!753266) b!4425084))

(assert (= (and d!1341330 (not c!753266)) b!4425081))

(assert (= (and b!4425081 res!1829376) b!4425080))

(assert (= (or b!4425084 b!4425081) bm!307883))

(assert (= (or b!4425084 b!4425081) bm!307882))

(assert (= (or b!4425084 b!4425081) bm!307881))

(assert (= (and d!1341330 res!1829375) b!4425082))

(assert (= (and b!4425082 res!1829374) b!4425083))

(declare-fun m!5105231 () Bool)

(assert (=> d!1341330 m!5105231))

(assert (=> d!1341330 m!5103593))

(declare-fun m!5105233 () Bool)

(assert (=> bm!307882 m!5105233))

(declare-fun m!5105235 () Bool)

(assert (=> b!4425080 m!5105235))

(declare-fun m!5105237 () Bool)

(assert (=> b!4425083 m!5105237))

(assert (=> bm!307883 m!5103969))

(declare-fun m!5105239 () Bool)

(assert (=> bm!307883 m!5105239))

(declare-fun m!5105241 () Bool)

(assert (=> b!4425082 m!5105241))

(declare-fun m!5105243 () Bool)

(assert (=> bm!307881 m!5105243))

(declare-fun m!5105245 () Bool)

(assert (=> b!4425081 m!5105245))

(declare-fun m!5105247 () Bool)

(assert (=> b!4425081 m!5105247))

(declare-fun m!5105249 () Bool)

(assert (=> b!4425081 m!5105249))

(assert (=> b!4425081 m!5103969))

(declare-fun m!5105251 () Bool)

(assert (=> b!4425081 m!5105251))

(assert (=> b!4425081 m!5105247))

(assert (=> b!4425081 m!5105235))

(assert (=> b!4425081 m!5105245))

(assert (=> b!4425081 m!5103969))

(declare-fun m!5105253 () Bool)

(assert (=> b!4425081 m!5105253))

(declare-fun m!5105255 () Bool)

(assert (=> b!4425081 m!5105255))

(assert (=> b!4425081 m!5105251))

(declare-fun m!5105257 () Bool)

(assert (=> b!4425081 m!5105257))

(declare-fun m!5105259 () Bool)

(assert (=> b!4425081 m!5105259))

(declare-fun m!5105261 () Bool)

(assert (=> b!4425081 m!5105261))

(assert (=> b!4424401 d!1341330))

(declare-fun bs!756909 () Bool)

(declare-fun d!1341332 () Bool)

(assert (= bs!756909 (and d!1341332 d!1341186)))

(declare-fun lambda!153860 () Int)

(assert (=> bs!756909 (= lambda!153860 lambda!153823)))

(declare-fun bs!756910 () Bool)

(assert (= bs!756910 (and d!1341332 d!1340910)))

(assert (=> bs!756910 (= lambda!153860 lambda!153753)))

(declare-fun bs!756911 () Bool)

(assert (= bs!756911 (and d!1341332 d!1341128)))

(assert (=> bs!756911 (= lambda!153860 lambda!153811)))

(declare-fun bs!756912 () Bool)

(assert (= bs!756912 (and d!1341332 d!1340952)))

(assert (=> bs!756912 (= lambda!153860 lambda!153759)))

(declare-fun bs!756913 () Bool)

(assert (= bs!756913 (and d!1341332 d!1340890)))

(assert (=> bs!756913 (not (= lambda!153860 lambda!153739))))

(declare-fun bs!756914 () Bool)

(assert (= bs!756914 (and d!1341332 d!1340986)))

(assert (=> bs!756914 (= lambda!153860 lambda!153779)))

(declare-fun bs!756915 () Bool)

(assert (= bs!756915 (and d!1341332 d!1340922)))

(assert (=> bs!756915 (= lambda!153860 lambda!153754)))

(declare-fun bs!756916 () Bool)

(assert (= bs!756916 (and d!1341332 d!1340906)))

(assert (=> bs!756916 (= lambda!153860 lambda!153750)))

(declare-fun bs!756917 () Bool)

(assert (= bs!756917 (and d!1341332 d!1341030)))

(assert (=> bs!756917 (= lambda!153860 lambda!153789)))

(declare-fun bs!756918 () Bool)

(assert (= bs!756918 (and d!1341332 d!1340954)))

(assert (=> bs!756918 (= lambda!153860 lambda!153762)))

(declare-fun bs!756919 () Bool)

(assert (= bs!756919 (and d!1341332 start!431492)))

(assert (=> bs!756919 (= lambda!153860 lambda!153648)))

(declare-fun bs!756920 () Bool)

(assert (= bs!756920 (and d!1341332 d!1340942)))

(assert (=> bs!756920 (= lambda!153860 lambda!153758)))

(declare-fun bs!756921 () Bool)

(assert (= bs!756921 (and d!1341332 d!1340930)))

(assert (=> bs!756921 (= lambda!153860 lambda!153755)))

(declare-fun lt!1624383 () ListMap!2725)

(assert (=> d!1341332 (invariantList!803 (toList!3482 lt!1624383))))

(declare-fun e!2755272 () ListMap!2725)

(assert (=> d!1341332 (= lt!1624383 e!2755272)))

(declare-fun c!753273 () Bool)

(assert (=> d!1341332 (= c!753273 ((_ is Cons!49576) (t!356638 (toList!3481 lm!1616))))))

(assert (=> d!1341332 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153860)))

(assert (=> d!1341332 (= (extractMap!808 (t!356638 (toList!3481 lm!1616))) lt!1624383)))

(declare-fun b!4425103 () Bool)

(assert (=> b!4425103 (= e!2755272 (addToMapMapFromBucket!384 (_2!27978 (h!55259 (t!356638 (toList!3481 lm!1616)))) (extractMap!808 (t!356638 (t!356638 (toList!3481 lm!1616))))))))

(declare-fun b!4425104 () Bool)

(assert (=> b!4425104 (= e!2755272 (ListMap!2726 Nil!49575))))

(assert (= (and d!1341332 c!753273) b!4425103))

(assert (= (and d!1341332 (not c!753273)) b!4425104))

(declare-fun m!5105263 () Bool)

(assert (=> d!1341332 m!5105263))

(declare-fun m!5105265 () Bool)

(assert (=> d!1341332 m!5105265))

(declare-fun m!5105267 () Bool)

(assert (=> b!4425103 m!5105267))

(assert (=> b!4425103 m!5105267))

(declare-fun m!5105269 () Bool)

(assert (=> b!4425103 m!5105269))

(assert (=> b!4424401 d!1341332))

(declare-fun d!1341334 () Bool)

(declare-fun lt!1624391 () Bool)

(assert (=> d!1341334 (= lt!1624391 (select (content!7952 (toList!3482 lt!1623770)) lt!1623530))))

(declare-fun e!2755277 () Bool)

(assert (=> d!1341334 (= lt!1624391 e!2755277)))

(declare-fun res!1829386 () Bool)

(assert (=> d!1341334 (=> (not res!1829386) (not e!2755277))))

(assert (=> d!1341334 (= res!1829386 ((_ is Cons!49575) (toList!3482 lt!1623770)))))

(assert (=> d!1341334 (= (contains!12077 (toList!3482 lt!1623770) lt!1623530) lt!1624391)))

(declare-fun b!4425116 () Bool)

(declare-fun e!2755278 () Bool)

(assert (=> b!4425116 (= e!2755277 e!2755278)))

(declare-fun res!1829387 () Bool)

(assert (=> b!4425116 (=> res!1829387 e!2755278)))

(assert (=> b!4425116 (= res!1829387 (= (h!55258 (toList!3482 lt!1623770)) lt!1623530))))

(declare-fun b!4425117 () Bool)

(assert (=> b!4425117 (= e!2755278 (contains!12077 (t!356637 (toList!3482 lt!1623770)) lt!1623530))))

(assert (= (and d!1341334 res!1829386) b!4425116))

(assert (= (and b!4425116 (not res!1829387)) b!4425117))

(declare-fun m!5105271 () Bool)

(assert (=> d!1341334 m!5105271))

(declare-fun m!5105273 () Bool)

(assert (=> d!1341334 m!5105273))

(declare-fun m!5105275 () Bool)

(assert (=> b!4425117 m!5105275))

(assert (=> b!4424270 d!1341334))

(declare-fun d!1341336 () Bool)

(declare-fun res!1829388 () Bool)

(declare-fun e!2755279 () Bool)

(assert (=> d!1341336 (=> res!1829388 e!2755279)))

(assert (=> d!1341336 (= res!1829388 ((_ is Nil!49575) (toList!3482 lt!1623538)))))

(assert (=> d!1341336 (= (forall!9557 (toList!3482 lt!1623538) (ite c!753085 lambda!153689 lambda!153690)) e!2755279)))

(declare-fun b!4425118 () Bool)

(declare-fun e!2755280 () Bool)

(assert (=> b!4425118 (= e!2755279 e!2755280)))

(declare-fun res!1829389 () Bool)

(assert (=> b!4425118 (=> (not res!1829389) (not e!2755280))))

(assert (=> b!4425118 (= res!1829389 (dynLambda!20843 (ite c!753085 lambda!153689 lambda!153690) (h!55258 (toList!3482 lt!1623538))))))

(declare-fun b!4425119 () Bool)

(assert (=> b!4425119 (= e!2755280 (forall!9557 (t!356637 (toList!3482 lt!1623538)) (ite c!753085 lambda!153689 lambda!153690)))))

(assert (= (and d!1341336 (not res!1829388)) b!4425118))

(assert (= (and b!4425118 res!1829389) b!4425119))

(declare-fun b_lambda!143021 () Bool)

(assert (=> (not b_lambda!143021) (not b!4425118)))

(declare-fun m!5105277 () Bool)

(assert (=> b!4425118 m!5105277))

(declare-fun m!5105279 () Bool)

(assert (=> b!4425119 m!5105279))

(assert (=> bm!307793 d!1341336))

(declare-fun d!1341338 () Bool)

(declare-fun c!753277 () Bool)

(assert (=> d!1341338 (= c!753277 ((_ is Nil!49575) (toList!3482 lt!1623541)))))

(declare-fun e!2755281 () (InoxSet tuple2!49366))

(assert (=> d!1341338 (= (content!7952 (toList!3482 lt!1623541)) e!2755281)))

(declare-fun b!4425120 () Bool)

(assert (=> b!4425120 (= e!2755281 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4425121 () Bool)

(assert (=> b!4425121 (= e!2755281 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 lt!1623541)) true) (content!7952 (t!356637 (toList!3482 lt!1623541)))))))

(assert (= (and d!1341338 c!753277) b!4425120))

(assert (= (and d!1341338 (not c!753277)) b!4425121))

(declare-fun m!5105281 () Bool)

(assert (=> b!4425121 m!5105281))

(declare-fun m!5105283 () Bool)

(assert (=> b!4425121 m!5105283))

(assert (=> d!1340928 d!1341338))

(declare-fun d!1341340 () Bool)

(declare-fun c!753278 () Bool)

(assert (=> d!1341340 (= c!753278 ((_ is Nil!49575) (toList!3482 lt!1623538)))))

(declare-fun e!2755282 () (InoxSet tuple2!49366))

(assert (=> d!1341340 (= (content!7952 (toList!3482 lt!1623538)) e!2755282)))

(declare-fun b!4425122 () Bool)

(assert (=> b!4425122 (= e!2755282 ((as const (Array tuple2!49366 Bool)) false))))

(declare-fun b!4425123 () Bool)

(assert (=> b!4425123 (= e!2755282 ((_ map or) (store ((as const (Array tuple2!49366 Bool)) false) (h!55258 (toList!3482 lt!1623538)) true) (content!7952 (t!356637 (toList!3482 lt!1623538)))))))

(assert (= (and d!1341340 c!753278) b!4425122))

(assert (= (and d!1341340 (not c!753278)) b!4425123))

(declare-fun m!5105285 () Bool)

(assert (=> b!4425123 m!5105285))

(declare-fun m!5105287 () Bool)

(assert (=> b!4425123 m!5105287))

(assert (=> d!1340928 d!1341340))

(declare-fun d!1341342 () Bool)

(declare-fun e!2755285 () Bool)

(assert (=> d!1341342 e!2755285))

(declare-fun res!1829390 () Bool)

(assert (=> d!1341342 (=> res!1829390 e!2755285)))

(declare-fun e!2755288 () Bool)

(assert (=> d!1341342 (= res!1829390 e!2755288)))

(declare-fun res!1829392 () Bool)

(assert (=> d!1341342 (=> (not res!1829392) (not e!2755288))))

(declare-fun lt!1624398 () Bool)

(assert (=> d!1341342 (= res!1829392 (not lt!1624398))))

(declare-fun lt!1624399 () Bool)

(assert (=> d!1341342 (= lt!1624398 lt!1624399)))

(declare-fun lt!1624393 () Unit!81703)

(declare-fun e!2755283 () Unit!81703)

(assert (=> d!1341342 (= lt!1624393 e!2755283)))

(declare-fun c!753281 () Bool)

(assert (=> d!1341342 (= c!753281 lt!1624399)))

(assert (=> d!1341342 (= lt!1624399 (containsKey!1109 (toList!3482 lt!1623770) (_1!27977 lt!1623530)))))

(assert (=> d!1341342 (= (contains!12073 lt!1623770 (_1!27977 lt!1623530)) lt!1624398)))

(declare-fun b!4425124 () Bool)

(declare-fun e!2755284 () Bool)

(assert (=> b!4425124 (= e!2755284 (contains!12079 (keys!16924 lt!1623770) (_1!27977 lt!1623530)))))

(declare-fun b!4425125 () Bool)

(declare-fun e!2755286 () List!49702)

(assert (=> b!4425125 (= e!2755286 (getKeysList!250 (toList!3482 lt!1623770)))))

(declare-fun b!4425126 () Bool)

(assert (=> b!4425126 (= e!2755288 (not (contains!12079 (keys!16924 lt!1623770) (_1!27977 lt!1623530))))))

(declare-fun b!4425127 () Bool)

(declare-fun e!2755287 () Unit!81703)

(assert (=> b!4425127 (= e!2755283 e!2755287)))

(declare-fun c!753279 () Bool)

(declare-fun call!307889 () Bool)

(assert (=> b!4425127 (= c!753279 call!307889)))

(declare-fun b!4425128 () Bool)

(assert (=> b!4425128 false))

(declare-fun lt!1624397 () Unit!81703)

(declare-fun lt!1624392 () Unit!81703)

(assert (=> b!4425128 (= lt!1624397 lt!1624392)))

(assert (=> b!4425128 (containsKey!1109 (toList!3482 lt!1623770) (_1!27977 lt!1623530))))

(assert (=> b!4425128 (= lt!1624392 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623770) (_1!27977 lt!1623530)))))

(declare-fun Unit!81909 () Unit!81703)

(assert (=> b!4425128 (= e!2755287 Unit!81909)))

(declare-fun b!4425129 () Bool)

(declare-fun Unit!81910 () Unit!81703)

(assert (=> b!4425129 (= e!2755287 Unit!81910)))

(declare-fun b!4425130 () Bool)

(assert (=> b!4425130 (= e!2755286 (keys!16924 lt!1623770))))

(declare-fun b!4425131 () Bool)

(assert (=> b!4425131 (= e!2755285 e!2755284)))

(declare-fun res!1829391 () Bool)

(assert (=> b!4425131 (=> (not res!1829391) (not e!2755284))))

(assert (=> b!4425131 (= res!1829391 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623770) (_1!27977 lt!1623530))))))

(declare-fun b!4425132 () Bool)

(declare-fun lt!1624396 () Unit!81703)

(assert (=> b!4425132 (= e!2755283 lt!1624396)))

(declare-fun lt!1624394 () Unit!81703)

(assert (=> b!4425132 (= lt!1624394 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623770) (_1!27977 lt!1623530)))))

(assert (=> b!4425132 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623770) (_1!27977 lt!1623530)))))

(declare-fun lt!1624395 () Unit!81703)

(assert (=> b!4425132 (= lt!1624395 lt!1624394)))

(assert (=> b!4425132 (= lt!1624396 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623770) (_1!27977 lt!1623530)))))

(assert (=> b!4425132 call!307889))

(declare-fun bm!307884 () Bool)

(assert (=> bm!307884 (= call!307889 (contains!12079 e!2755286 (_1!27977 lt!1623530)))))

(declare-fun c!753280 () Bool)

(assert (=> bm!307884 (= c!753280 c!753281)))

(assert (= (and d!1341342 c!753281) b!4425132))

(assert (= (and d!1341342 (not c!753281)) b!4425127))

(assert (= (and b!4425127 c!753279) b!4425128))

(assert (= (and b!4425127 (not c!753279)) b!4425129))

(assert (= (or b!4425132 b!4425127) bm!307884))

(assert (= (and bm!307884 c!753280) b!4425125))

(assert (= (and bm!307884 (not c!753280)) b!4425130))

(assert (= (and d!1341342 res!1829392) b!4425126))

(assert (= (and d!1341342 (not res!1829390)) b!4425131))

(assert (= (and b!4425131 res!1829391) b!4425124))

(declare-fun m!5105311 () Bool)

(assert (=> b!4425128 m!5105311))

(declare-fun m!5105315 () Bool)

(assert (=> b!4425128 m!5105315))

(declare-fun m!5105317 () Bool)

(assert (=> bm!307884 m!5105317))

(declare-fun m!5105319 () Bool)

(assert (=> b!4425126 m!5105319))

(assert (=> b!4425126 m!5105319))

(declare-fun m!5105321 () Bool)

(assert (=> b!4425126 m!5105321))

(assert (=> d!1341342 m!5105311))

(assert (=> b!4425124 m!5105319))

(assert (=> b!4425124 m!5105319))

(assert (=> b!4425124 m!5105321))

(declare-fun m!5105323 () Bool)

(assert (=> b!4425132 m!5105323))

(assert (=> b!4425132 m!5103683))

(assert (=> b!4425132 m!5103683))

(declare-fun m!5105325 () Bool)

(assert (=> b!4425132 m!5105325))

(declare-fun m!5105327 () Bool)

(assert (=> b!4425132 m!5105327))

(declare-fun m!5105329 () Bool)

(assert (=> b!4425125 m!5105329))

(assert (=> b!4425130 m!5105319))

(assert (=> b!4425131 m!5103683))

(assert (=> b!4425131 m!5103683))

(assert (=> b!4425131 m!5105325))

(assert (=> d!1340864 d!1341342))

(declare-fun b!4425133 () Bool)

(declare-fun e!2755289 () Option!10721)

(assert (=> b!4425133 (= e!2755289 (Some!10720 (_2!27977 (h!55258 lt!1623771))))))

(declare-fun b!4425135 () Bool)

(declare-fun e!2755290 () Option!10721)

(assert (=> b!4425135 (= e!2755290 (getValueByKey!707 (t!356637 lt!1623771) (_1!27977 lt!1623530)))))

(declare-fun d!1341346 () Bool)

(declare-fun c!753282 () Bool)

(assert (=> d!1341346 (= c!753282 (and ((_ is Cons!49575) lt!1623771) (= (_1!27977 (h!55258 lt!1623771)) (_1!27977 lt!1623530))))))

(assert (=> d!1341346 (= (getValueByKey!707 lt!1623771 (_1!27977 lt!1623530)) e!2755289)))

(declare-fun b!4425136 () Bool)

(assert (=> b!4425136 (= e!2755290 None!10720)))

(declare-fun b!4425134 () Bool)

(assert (=> b!4425134 (= e!2755289 e!2755290)))

(declare-fun c!753283 () Bool)

(assert (=> b!4425134 (= c!753283 (and ((_ is Cons!49575) lt!1623771) (not (= (_1!27977 (h!55258 lt!1623771)) (_1!27977 lt!1623530)))))))

(assert (= (and d!1341346 c!753282) b!4425133))

(assert (= (and d!1341346 (not c!753282)) b!4425134))

(assert (= (and b!4425134 c!753283) b!4425135))

(assert (= (and b!4425134 (not c!753283)) b!4425136))

(declare-fun m!5105331 () Bool)

(assert (=> b!4425135 m!5105331))

(assert (=> d!1340864 d!1341346))

(declare-fun d!1341348 () Bool)

(assert (=> d!1341348 (= (getValueByKey!707 lt!1623771 (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530)))))

(declare-fun lt!1624402 () Unit!81703)

(declare-fun choose!27941 (List!49699 K!10940 V!11186) Unit!81703)

(assert (=> d!1341348 (= lt!1624402 (choose!27941 lt!1623771 (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun e!2755301 () Bool)

(assert (=> d!1341348 e!2755301))

(declare-fun res!1829401 () Bool)

(assert (=> d!1341348 (=> (not res!1829401) (not e!2755301))))

(assert (=> d!1341348 (= res!1829401 (invariantList!803 lt!1623771))))

(assert (=> d!1341348 (= (lemmaContainsTupThenGetReturnValue!442 lt!1623771 (_1!27977 lt!1623530) (_2!27977 lt!1623530)) lt!1624402)))

(declare-fun b!4425153 () Bool)

(declare-fun res!1829402 () Bool)

(assert (=> b!4425153 (=> (not res!1829402) (not e!2755301))))

(assert (=> b!4425153 (= res!1829402 (containsKey!1109 lt!1623771 (_1!27977 lt!1623530)))))

(declare-fun b!4425154 () Bool)

(assert (=> b!4425154 (= e!2755301 (contains!12077 lt!1623771 (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))

(assert (= (and d!1341348 res!1829401) b!4425153))

(assert (= (and b!4425153 res!1829402) b!4425154))

(assert (=> d!1341348 m!5103677))

(declare-fun m!5105349 () Bool)

(assert (=> d!1341348 m!5105349))

(declare-fun m!5105351 () Bool)

(assert (=> d!1341348 m!5105351))

(declare-fun m!5105353 () Bool)

(assert (=> b!4425153 m!5105353))

(declare-fun m!5105355 () Bool)

(assert (=> b!4425154 m!5105355))

(assert (=> d!1340864 d!1341348))

(declare-fun bm!307896 () Bool)

(declare-fun call!307903 () List!49699)

(declare-fun call!307904 () List!49699)

(assert (=> bm!307896 (= call!307903 call!307904)))

(declare-fun d!1341360 () Bool)

(declare-fun e!2755364 () Bool)

(assert (=> d!1341360 e!2755364))

(declare-fun res!1829456 () Bool)

(assert (=> d!1341360 (=> (not res!1829456) (not e!2755364))))

(declare-fun lt!1624472 () List!49699)

(assert (=> d!1341360 (= res!1829456 (invariantList!803 lt!1624472))))

(declare-fun e!2755363 () List!49699)

(assert (=> d!1341360 (= lt!1624472 e!2755363)))

(declare-fun c!753307 () Bool)

(assert (=> d!1341360 (= c!753307 (and ((_ is Cons!49575) (toList!3482 lt!1623529)) (= (_1!27977 (h!55258 (toList!3482 lt!1623529))) (_1!27977 lt!1623530))))))

(assert (=> d!1341360 (invariantList!803 (toList!3482 lt!1623529))))

(assert (=> d!1341360 (= (insertNoDuplicatedKeys!193 (toList!3482 lt!1623529) (_1!27977 lt!1623530) (_2!27977 lt!1623530)) lt!1624472)))

(declare-fun b!4425241 () Bool)

(assert (=> b!4425241 (= e!2755364 (= (content!7953 (getKeysList!250 lt!1624472)) ((_ map or) (content!7953 (getKeysList!250 (toList!3482 lt!1623529))) (store ((as const (Array K!10940 Bool)) false) (_1!27977 lt!1623530) true))))))

(declare-fun b!4425242 () Bool)

(declare-fun c!753308 () Bool)

(assert (=> b!4425242 (= c!753308 ((_ is Cons!49575) (toList!3482 lt!1623529)))))

(declare-fun e!2755369 () List!49699)

(declare-fun e!2755365 () List!49699)

(assert (=> b!4425242 (= e!2755369 e!2755365)))

(declare-fun b!4425243 () Bool)

(declare-fun e!2755368 () Bool)

(assert (=> b!4425243 (= e!2755368 (not (containsKey!1109 (toList!3482 lt!1623529) (_1!27977 lt!1623530))))))

(declare-fun b!4425244 () Bool)

(declare-fun e!2755366 () Unit!81703)

(declare-fun Unit!81922 () Unit!81703)

(assert (=> b!4425244 (= e!2755366 Unit!81922)))

(declare-fun b!4425245 () Bool)

(assert (=> b!4425245 false))

(declare-fun lt!1624471 () Unit!81703)

(declare-fun lt!1624463 () Unit!81703)

(assert (=> b!4425245 (= lt!1624471 lt!1624463)))

(assert (=> b!4425245 (containsKey!1109 (t!356637 (toList!3482 lt!1623529)) (_1!27977 (h!55258 (toList!3482 lt!1623529))))))

(assert (=> b!4425245 (= lt!1624463 (lemmaInGetKeysListThenContainsKey!248 (t!356637 (toList!3482 lt!1623529)) (_1!27977 (h!55258 (toList!3482 lt!1623529)))))))

(declare-fun lt!1624469 () Unit!81703)

(declare-fun lt!1624466 () Unit!81703)

(assert (=> b!4425245 (= lt!1624469 lt!1624466)))

(declare-fun call!307902 () List!49702)

(assert (=> b!4425245 (contains!12079 call!307902 (_1!27977 (h!55258 (toList!3482 lt!1623529))))))

(declare-fun lt!1624468 () List!49699)

(assert (=> b!4425245 (= lt!1624466 (lemmaInListThenGetKeysListContains!247 lt!1624468 (_1!27977 (h!55258 (toList!3482 lt!1623529)))))))

(assert (=> b!4425245 (= lt!1624468 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623529)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun Unit!81923 () Unit!81703)

(assert (=> b!4425245 (= e!2755366 Unit!81923)))

(declare-fun b!4425246 () Bool)

(declare-fun lt!1624473 () List!49699)

(assert (=> b!4425246 (= e!2755365 lt!1624473)))

(declare-fun call!307901 () List!49699)

(assert (=> b!4425246 (= lt!1624473 call!307901)))

(declare-fun c!753309 () Bool)

(assert (=> b!4425246 (= c!753309 (containsKey!1109 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623529)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)) (_1!27977 (h!55258 (toList!3482 lt!1623529)))))))

(declare-fun lt!1624470 () Unit!81703)

(assert (=> b!4425246 (= lt!1624470 e!2755366)))

(declare-fun b!4425247 () Bool)

(declare-fun e!2755367 () List!49699)

(assert (=> b!4425247 (= e!2755367 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623529)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun b!4425248 () Bool)

(assert (=> b!4425248 (= e!2755369 call!307903)))

(declare-fun b!4425249 () Bool)

(declare-fun res!1829454 () Bool)

(assert (=> b!4425249 (=> (not res!1829454) (not e!2755364))))

(assert (=> b!4425249 (= res!1829454 (contains!12077 lt!1624472 (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))

(declare-fun b!4425250 () Bool)

(assert (=> b!4425250 (= e!2755363 call!307904)))

(declare-fun lt!1624467 () List!49702)

(assert (=> b!4425250 (= lt!1624467 call!307902)))

(declare-fun lt!1624465 () Unit!81703)

(declare-fun lemmaSubseqRefl!99 (List!49702) Unit!81703)

(assert (=> b!4425250 (= lt!1624465 (lemmaSubseqRefl!99 lt!1624467))))

(declare-fun subseq!615 (List!49702 List!49702) Bool)

(assert (=> b!4425250 (subseq!615 lt!1624467 lt!1624467)))

(declare-fun lt!1624464 () Unit!81703)

(assert (=> b!4425250 (= lt!1624464 lt!1624465)))

(declare-fun b!4425251 () Bool)

(assert (=> b!4425251 (= e!2755363 e!2755369)))

(declare-fun res!1829453 () Bool)

(assert (=> b!4425251 (= res!1829453 ((_ is Cons!49575) (toList!3482 lt!1623529)))))

(assert (=> b!4425251 (=> (not res!1829453) (not e!2755368))))

(declare-fun c!753306 () Bool)

(assert (=> b!4425251 (= c!753306 e!2755368)))

(declare-fun b!4425252 () Bool)

(assert (=> b!4425252 (= e!2755365 call!307901)))

(declare-fun bm!307897 () Bool)

(assert (=> bm!307897 (= call!307901 call!307903)))

(declare-fun c!753310 () Bool)

(assert (=> bm!307897 (= c!753310 c!753308)))

(declare-fun b!4425253 () Bool)

(declare-fun res!1829455 () Bool)

(assert (=> b!4425253 (=> (not res!1829455) (not e!2755364))))

(assert (=> b!4425253 (= res!1829455 (containsKey!1109 lt!1624472 (_1!27977 lt!1623530)))))

(declare-fun bm!307898 () Bool)

(assert (=> bm!307898 (= call!307902 (getKeysList!250 (ite c!753307 (toList!3482 lt!1623529) lt!1624468)))))

(declare-fun bm!307899 () Bool)

(declare-fun $colon$colon!785 (List!49699 tuple2!49366) List!49699)

(assert (=> bm!307899 (= call!307904 ($colon$colon!785 (ite c!753307 (t!356637 (toList!3482 lt!1623529)) (ite c!753306 (toList!3482 lt!1623529) e!2755367)) (ite (or c!753307 c!753306) (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530)) (ite c!753308 (h!55258 (toList!3482 lt!1623529)) (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))))

(declare-fun b!4425254 () Bool)

(assert (=> b!4425254 (= e!2755367 Nil!49575)))

(assert (= (and d!1341360 c!753307) b!4425250))

(assert (= (and d!1341360 (not c!753307)) b!4425251))

(assert (= (and b!4425251 res!1829453) b!4425243))

(assert (= (and b!4425251 c!753306) b!4425248))

(assert (= (and b!4425251 (not c!753306)) b!4425242))

(assert (= (and b!4425242 c!753308) b!4425246))

(assert (= (and b!4425242 (not c!753308)) b!4425252))

(assert (= (and b!4425246 c!753309) b!4425245))

(assert (= (and b!4425246 (not c!753309)) b!4425244))

(assert (= (or b!4425246 b!4425252) bm!307897))

(assert (= (and bm!307897 c!753310) b!4425247))

(assert (= (and bm!307897 (not c!753310)) b!4425254))

(assert (= (or b!4425248 bm!307897) bm!307896))

(assert (= (or b!4425250 b!4425245) bm!307898))

(assert (= (or b!4425250 bm!307896) bm!307899))

(assert (= (and d!1341360 res!1829456) b!4425253))

(assert (= (and b!4425253 res!1829455) b!4425249))

(assert (= (and b!4425249 res!1829454) b!4425241))

(declare-fun m!5105453 () Bool)

(assert (=> b!4425241 m!5105453))

(declare-fun m!5105455 () Bool)

(assert (=> b!4425241 m!5105455))

(declare-fun m!5105457 () Bool)

(assert (=> b!4425241 m!5105457))

(declare-fun m!5105459 () Bool)

(assert (=> b!4425241 m!5105459))

(assert (=> b!4425241 m!5105453))

(declare-fun m!5105461 () Bool)

(assert (=> b!4425241 m!5105461))

(assert (=> b!4425241 m!5105457))

(declare-fun m!5105463 () Bool)

(assert (=> b!4425253 m!5105463))

(declare-fun m!5105465 () Bool)

(assert (=> b!4425243 m!5105465))

(declare-fun m!5105467 () Bool)

(assert (=> b!4425250 m!5105467))

(declare-fun m!5105469 () Bool)

(assert (=> b!4425250 m!5105469))

(declare-fun m!5105471 () Bool)

(assert (=> d!1341360 m!5105471))

(declare-fun m!5105473 () Bool)

(assert (=> d!1341360 m!5105473))

(declare-fun m!5105475 () Bool)

(assert (=> b!4425249 m!5105475))

(declare-fun m!5105477 () Bool)

(assert (=> bm!307898 m!5105477))

(declare-fun m!5105479 () Bool)

(assert (=> b!4425247 m!5105479))

(assert (=> b!4425245 m!5105479))

(declare-fun m!5105481 () Bool)

(assert (=> b!4425245 m!5105481))

(declare-fun m!5105483 () Bool)

(assert (=> b!4425245 m!5105483))

(declare-fun m!5105485 () Bool)

(assert (=> b!4425245 m!5105485))

(declare-fun m!5105487 () Bool)

(assert (=> b!4425245 m!5105487))

(declare-fun m!5105489 () Bool)

(assert (=> bm!307899 m!5105489))

(assert (=> b!4425246 m!5105479))

(assert (=> b!4425246 m!5105479))

(declare-fun m!5105491 () Bool)

(assert (=> b!4425246 m!5105491))

(assert (=> d!1340864 d!1341360))

(declare-fun d!1341412 () Bool)

(assert (=> d!1341412 (dynLambda!20843 lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(declare-fun lt!1624474 () Unit!81703)

(assert (=> d!1341412 (= lt!1624474 (choose!27932 (toList!3482 lt!1623693) lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun e!2755370 () Bool)

(assert (=> d!1341412 e!2755370))

(declare-fun res!1829457 () Bool)

(assert (=> d!1341412 (=> (not res!1829457) (not e!2755370))))

(assert (=> d!1341412 (= res!1829457 (forall!9557 (toList!3482 lt!1623693) lambda!153691))))

(assert (=> d!1341412 (= (forallContained!2088 (toList!3482 lt!1623693) lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624474)))

(declare-fun b!4425255 () Bool)

(assert (=> b!4425255 (= e!2755370 (contains!12077 (toList!3482 lt!1623693) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (= (and d!1341412 res!1829457) b!4425255))

(declare-fun b_lambda!143035 () Bool)

(assert (=> (not b_lambda!143035) (not d!1341412)))

(declare-fun m!5105493 () Bool)

(assert (=> d!1341412 m!5105493))

(declare-fun m!5105495 () Bool)

(assert (=> d!1341412 m!5105495))

(assert (=> d!1341412 m!5103607))

(declare-fun m!5105497 () Bool)

(assert (=> b!4425255 m!5105497))

(assert (=> b!4424242 d!1341412))

(assert (=> b!4424242 d!1341064))

(declare-fun d!1341414 () Bool)

(declare-fun e!2755373 () Bool)

(assert (=> d!1341414 e!2755373))

(declare-fun res!1829458 () Bool)

(assert (=> d!1341414 (=> res!1829458 e!2755373)))

(declare-fun e!2755376 () Bool)

(assert (=> d!1341414 (= res!1829458 e!2755376)))

(declare-fun res!1829460 () Bool)

(assert (=> d!1341414 (=> (not res!1829460) (not e!2755376))))

(declare-fun lt!1624481 () Bool)

(assert (=> d!1341414 (= res!1829460 (not lt!1624481))))

(declare-fun lt!1624482 () Bool)

(assert (=> d!1341414 (= lt!1624481 lt!1624482)))

(declare-fun lt!1624476 () Unit!81703)

(declare-fun e!2755371 () Unit!81703)

(assert (=> d!1341414 (= lt!1624476 e!2755371)))

(declare-fun c!753313 () Bool)

(assert (=> d!1341414 (= c!753313 lt!1624482)))

(assert (=> d!1341414 (= lt!1624482 (containsKey!1109 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341414 (= (contains!12073 lt!1623693 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624481)))

(declare-fun b!4425256 () Bool)

(declare-fun e!2755372 () Bool)

(assert (=> b!4425256 (= e!2755372 (contains!12079 (keys!16924 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4425257 () Bool)

(declare-fun e!2755374 () List!49702)

(assert (=> b!4425257 (= e!2755374 (getKeysList!250 (toList!3482 lt!1623693)))))

(declare-fun b!4425258 () Bool)

(assert (=> b!4425258 (= e!2755376 (not (contains!12079 (keys!16924 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4425259 () Bool)

(declare-fun e!2755375 () Unit!81703)

(assert (=> b!4425259 (= e!2755371 e!2755375)))

(declare-fun c!753311 () Bool)

(declare-fun call!307905 () Bool)

(assert (=> b!4425259 (= c!753311 call!307905)))

(declare-fun b!4425260 () Bool)

(assert (=> b!4425260 false))

(declare-fun lt!1624480 () Unit!81703)

(declare-fun lt!1624475 () Unit!81703)

(assert (=> b!4425260 (= lt!1624480 lt!1624475)))

(assert (=> b!4425260 (containsKey!1109 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4425260 (= lt!1624475 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun Unit!81924 () Unit!81703)

(assert (=> b!4425260 (= e!2755375 Unit!81924)))

(declare-fun b!4425261 () Bool)

(declare-fun Unit!81925 () Unit!81703)

(assert (=> b!4425261 (= e!2755375 Unit!81925)))

(declare-fun b!4425262 () Bool)

(assert (=> b!4425262 (= e!2755374 (keys!16924 lt!1623693))))

(declare-fun b!4425263 () Bool)

(assert (=> b!4425263 (= e!2755373 e!2755372)))

(declare-fun res!1829459 () Bool)

(assert (=> b!4425263 (=> (not res!1829459) (not e!2755372))))

(assert (=> b!4425263 (= res!1829459 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4425264 () Bool)

(declare-fun lt!1624479 () Unit!81703)

(assert (=> b!4425264 (= e!2755371 lt!1624479)))

(declare-fun lt!1624477 () Unit!81703)

(assert (=> b!4425264 (= lt!1624477 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425264 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624478 () Unit!81703)

(assert (=> b!4425264 (= lt!1624478 lt!1624477)))

(assert (=> b!4425264 (= lt!1624479 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623693) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425264 call!307905))

(declare-fun bm!307900 () Bool)

(assert (=> bm!307900 (= call!307905 (contains!12079 e!2755374 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun c!753312 () Bool)

(assert (=> bm!307900 (= c!753312 c!753313)))

(assert (= (and d!1341414 c!753313) b!4425264))

(assert (= (and d!1341414 (not c!753313)) b!4425259))

(assert (= (and b!4425259 c!753311) b!4425260))

(assert (= (and b!4425259 (not c!753311)) b!4425261))

(assert (= (or b!4425264 b!4425259) bm!307900))

(assert (= (and bm!307900 c!753312) b!4425257))

(assert (= (and bm!307900 (not c!753312)) b!4425262))

(assert (= (and d!1341414 res!1829460) b!4425258))

(assert (= (and d!1341414 (not res!1829458)) b!4425263))

(assert (= (and b!4425263 res!1829459) b!4425256))

(declare-fun m!5105499 () Bool)

(assert (=> b!4425260 m!5105499))

(declare-fun m!5105501 () Bool)

(assert (=> b!4425260 m!5105501))

(declare-fun m!5105503 () Bool)

(assert (=> bm!307900 m!5105503))

(declare-fun m!5105505 () Bool)

(assert (=> b!4425258 m!5105505))

(assert (=> b!4425258 m!5105505))

(declare-fun m!5105507 () Bool)

(assert (=> b!4425258 m!5105507))

(assert (=> d!1341414 m!5105499))

(assert (=> b!4425256 m!5105505))

(assert (=> b!4425256 m!5105505))

(assert (=> b!4425256 m!5105507))

(declare-fun m!5105509 () Bool)

(assert (=> b!4425264 m!5105509))

(declare-fun m!5105511 () Bool)

(assert (=> b!4425264 m!5105511))

(assert (=> b!4425264 m!5105511))

(declare-fun m!5105513 () Bool)

(assert (=> b!4425264 m!5105513))

(declare-fun m!5105515 () Bool)

(assert (=> b!4425264 m!5105515))

(declare-fun m!5105517 () Bool)

(assert (=> b!4425257 m!5105517))

(assert (=> b!4425262 m!5105505))

(assert (=> b!4425263 m!5105511))

(assert (=> b!4425263 m!5105511))

(assert (=> b!4425263 m!5105513))

(assert (=> b!4424242 d!1341414))

(declare-fun d!1341416 () Bool)

(declare-fun e!2755379 () Bool)

(assert (=> d!1341416 e!2755379))

(declare-fun res!1829461 () Bool)

(assert (=> d!1341416 (=> res!1829461 e!2755379)))

(declare-fun e!2755382 () Bool)

(assert (=> d!1341416 (= res!1829461 e!2755382)))

(declare-fun res!1829463 () Bool)

(assert (=> d!1341416 (=> (not res!1829463) (not e!2755382))))

(declare-fun lt!1624489 () Bool)

(assert (=> d!1341416 (= res!1829463 (not lt!1624489))))

(declare-fun lt!1624490 () Bool)

(assert (=> d!1341416 (= lt!1624489 lt!1624490)))

(declare-fun lt!1624484 () Unit!81703)

(declare-fun e!2755377 () Unit!81703)

(assert (=> d!1341416 (= lt!1624484 e!2755377)))

(declare-fun c!753316 () Bool)

(assert (=> d!1341416 (= c!753316 lt!1624490)))

(assert (=> d!1341416 (= lt!1624490 (containsKey!1109 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341416 (= (contains!12073 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624489)))

(declare-fun b!4425265 () Bool)

(declare-fun e!2755378 () Bool)

(assert (=> b!4425265 (= e!2755378 (contains!12079 (keys!16924 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4425266 () Bool)

(declare-fun e!2755380 () List!49702)

(assert (=> b!4425266 (= e!2755380 (getKeysList!250 (toList!3482 lt!1623689)))))

(declare-fun b!4425267 () Bool)

(assert (=> b!4425267 (= e!2755382 (not (contains!12079 (keys!16924 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4425268 () Bool)

(declare-fun e!2755381 () Unit!81703)

(assert (=> b!4425268 (= e!2755377 e!2755381)))

(declare-fun c!753314 () Bool)

(declare-fun call!307906 () Bool)

(assert (=> b!4425268 (= c!753314 call!307906)))

(declare-fun b!4425269 () Bool)

(assert (=> b!4425269 false))

(declare-fun lt!1624488 () Unit!81703)

(declare-fun lt!1624483 () Unit!81703)

(assert (=> b!4425269 (= lt!1624488 lt!1624483)))

(assert (=> b!4425269 (containsKey!1109 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> b!4425269 (= lt!1624483 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun Unit!81926 () Unit!81703)

(assert (=> b!4425269 (= e!2755381 Unit!81926)))

(declare-fun b!4425270 () Bool)

(declare-fun Unit!81927 () Unit!81703)

(assert (=> b!4425270 (= e!2755381 Unit!81927)))

(declare-fun b!4425271 () Bool)

(assert (=> b!4425271 (= e!2755380 (keys!16924 lt!1623689))))

(declare-fun b!4425272 () Bool)

(assert (=> b!4425272 (= e!2755379 e!2755378)))

(declare-fun res!1829462 () Bool)

(assert (=> b!4425272 (=> (not res!1829462) (not e!2755378))))

(assert (=> b!4425272 (= res!1829462 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4425273 () Bool)

(declare-fun lt!1624487 () Unit!81703)

(assert (=> b!4425273 (= e!2755377 lt!1624487)))

(declare-fun lt!1624485 () Unit!81703)

(assert (=> b!4425273 (= lt!1624485 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425273 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624486 () Unit!81703)

(assert (=> b!4425273 (= lt!1624486 lt!1624485)))

(assert (=> b!4425273 (= lt!1624487 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623689) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425273 call!307906))

(declare-fun bm!307901 () Bool)

(assert (=> bm!307901 (= call!307906 (contains!12079 e!2755380 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun c!753315 () Bool)

(assert (=> bm!307901 (= c!753315 c!753316)))

(assert (= (and d!1341416 c!753316) b!4425273))

(assert (= (and d!1341416 (not c!753316)) b!4425268))

(assert (= (and b!4425268 c!753314) b!4425269))

(assert (= (and b!4425268 (not c!753314)) b!4425270))

(assert (= (or b!4425273 b!4425268) bm!307901))

(assert (= (and bm!307901 c!753315) b!4425266))

(assert (= (and bm!307901 (not c!753315)) b!4425271))

(assert (= (and d!1341416 res!1829463) b!4425267))

(assert (= (and d!1341416 (not res!1829461)) b!4425272))

(assert (= (and b!4425272 res!1829462) b!4425265))

(declare-fun m!5105519 () Bool)

(assert (=> b!4425269 m!5105519))

(declare-fun m!5105521 () Bool)

(assert (=> b!4425269 m!5105521))

(declare-fun m!5105523 () Bool)

(assert (=> bm!307901 m!5105523))

(declare-fun m!5105525 () Bool)

(assert (=> b!4425267 m!5105525))

(assert (=> b!4425267 m!5105525))

(declare-fun m!5105527 () Bool)

(assert (=> b!4425267 m!5105527))

(assert (=> d!1341416 m!5105519))

(assert (=> b!4425265 m!5105525))

(assert (=> b!4425265 m!5105525))

(assert (=> b!4425265 m!5105527))

(declare-fun m!5105529 () Bool)

(assert (=> b!4425273 m!5105529))

(declare-fun m!5105531 () Bool)

(assert (=> b!4425273 m!5105531))

(assert (=> b!4425273 m!5105531))

(declare-fun m!5105533 () Bool)

(assert (=> b!4425273 m!5105533))

(declare-fun m!5105535 () Bool)

(assert (=> b!4425273 m!5105535))

(declare-fun m!5105537 () Bool)

(assert (=> b!4425266 m!5105537))

(assert (=> b!4425271 m!5105525))

(assert (=> b!4425272 m!5105531))

(assert (=> b!4425272 m!5105531))

(assert (=> b!4425272 m!5105533))

(assert (=> b!4424242 d!1341416))

(declare-fun d!1341418 () Bool)

(declare-fun res!1829464 () Bool)

(declare-fun e!2755383 () Bool)

(assert (=> d!1341418 (=> res!1829464 e!2755383)))

(assert (=> d!1341418 (= res!1829464 ((_ is Nil!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341418 (= (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153691) e!2755383)))

(declare-fun b!4425274 () Bool)

(declare-fun e!2755384 () Bool)

(assert (=> b!4425274 (= e!2755383 e!2755384)))

(declare-fun res!1829465 () Bool)

(assert (=> b!4425274 (=> (not res!1829465) (not e!2755384))))

(assert (=> b!4425274 (= res!1829465 (dynLambda!20843 lambda!153691 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4425275 () Bool)

(assert (=> b!4425275 (= e!2755384 (forall!9557 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lambda!153691))))

(assert (= (and d!1341418 (not res!1829464)) b!4425274))

(assert (= (and b!4425274 res!1829465) b!4425275))

(declare-fun b_lambda!143037 () Bool)

(assert (=> (not b_lambda!143037) (not b!4425274)))

(declare-fun m!5105539 () Bool)

(assert (=> b!4425274 m!5105539))

(declare-fun m!5105541 () Bool)

(assert (=> b!4425275 m!5105541))

(assert (=> b!4424242 d!1341418))

(declare-fun d!1341420 () Bool)

(declare-fun res!1829466 () Bool)

(declare-fun e!2755385 () Bool)

(assert (=> d!1341420 (=> res!1829466 e!2755385)))

(assert (=> d!1341420 (= res!1829466 ((_ is Nil!49575) (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341420 (= (forall!9557 (_2!27978 (h!55259 (toList!3481 lm!1616))) lambda!153691) e!2755385)))

(declare-fun b!4425276 () Bool)

(declare-fun e!2755386 () Bool)

(assert (=> b!4425276 (= e!2755385 e!2755386)))

(declare-fun res!1829467 () Bool)

(assert (=> b!4425276 (=> (not res!1829467) (not e!2755386))))

(assert (=> b!4425276 (= res!1829467 (dynLambda!20843 lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun b!4425277 () Bool)

(assert (=> b!4425277 (= e!2755386 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153691))))

(assert (= (and d!1341420 (not res!1829466)) b!4425276))

(assert (= (and b!4425276 res!1829467) b!4425277))

(declare-fun b_lambda!143039 () Bool)

(assert (=> (not b_lambda!143039) (not b!4425276)))

(assert (=> b!4425276 m!5105493))

(assert (=> b!4425277 m!5103617))

(assert (=> b!4424242 d!1341420))

(declare-fun bs!757037 () Bool)

(declare-fun d!1341422 () Bool)

(assert (= bs!757037 (and d!1341422 b!4424707)))

(declare-fun lambda!153876 () Int)

(assert (=> bs!757037 (= (= lt!1623689 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153876 lambda!153807))))

(declare-fun bs!757039 () Bool)

(assert (= bs!757039 (and d!1341422 b!4424468)))

(assert (=> bs!757039 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153876 lambda!153776))))

(declare-fun bs!757040 () Bool)

(assert (= bs!757040 (and d!1341422 b!4424471)))

(assert (=> bs!757040 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153876 lambda!153775))))

(declare-fun bs!757041 () Bool)

(assert (= bs!757041 (and d!1341422 b!4424846)))

(assert (=> bs!757041 (= (= lt!1623689 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153876 lambda!153813))))

(assert (=> bs!757041 (= (= lt!1623689 lt!1624218) (= lambda!153876 lambda!153814))))

(declare-fun bs!757042 () Bool)

(assert (= bs!757042 (and d!1341422 b!4425081)))

(assert (=> bs!757042 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153876 lambda!153849))))

(declare-fun bs!757043 () Bool)

(assert (= bs!757043 (and d!1341422 d!1341054)))

(assert (=> bs!757043 (= (= lt!1623689 lt!1624042) (= lambda!153876 lambda!153798))))

(declare-fun bs!757044 () Bool)

(assert (= bs!757044 (and d!1341422 b!4424526)))

(assert (=> bs!757044 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153876 lambda!153786))))

(assert (=> bs!757044 (= (= lt!1623689 lt!1623988) (= lambda!153876 lambda!153787))))

(declare-fun bs!757045 () Bool)

(assert (= bs!757045 (and d!1341422 b!4424307)))

(assert (=> bs!757045 (= (= lt!1623689 lt!1623532) (= lambda!153876 lambda!153740))))

(declare-fun bs!757046 () Bool)

(assert (= bs!757046 (and d!1341422 b!4424242)))

(assert (=> bs!757046 (= lambda!153876 lambda!153691)))

(assert (=> bs!757042 (= (= lt!1623689 lt!1624364) (= lambda!153876 lambda!153850))))

(declare-fun bs!757047 () Bool)

(assert (= bs!757047 (and d!1341422 b!4424704)))

(assert (=> bs!757047 (= (= lt!1623689 lt!1624143) (= lambda!153876 lambda!153809))))

(declare-fun bs!757048 () Bool)

(assert (= bs!757048 (and d!1341422 d!1341106)))

(assert (=> bs!757048 (= (= lt!1623689 lt!1624139) (= lambda!153876 lambda!153810))))

(declare-fun bs!757049 () Bool)

(assert (= bs!757049 (and d!1341422 d!1341324)))

(assert (=> bs!757049 (= (= lt!1623689 lt!1623538) (= lambda!153876 lambda!153847))))

(assert (=> bs!757047 (= (= lt!1623689 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153876 lambda!153808))))

(declare-fun bs!757050 () Bool)

(assert (= bs!757050 (and d!1341422 b!4424849)))

(assert (=> bs!757050 (= (= lt!1623689 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153876 lambda!153812))))

(declare-fun bs!757051 () Bool)

(assert (= bs!757051 (and d!1341422 b!4425084)))

(assert (=> bs!757051 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153876 lambda!153848))))

(declare-fun bs!757052 () Bool)

(assert (= bs!757052 (and d!1341422 b!4424580)))

(assert (=> bs!757052 (= (= lt!1623689 lt!1624046) (= lambda!153876 lambda!153797))))

(declare-fun bs!757053 () Bool)

(assert (= bs!757053 (and d!1341422 d!1341020)))

(assert (=> bs!757053 (= (= lt!1623689 lt!1623984) (= lambda!153876 lambda!153788))))

(declare-fun bs!757054 () Bool)

(assert (= bs!757054 (and d!1341422 b!4424583)))

(assert (=> bs!757054 (= (= lt!1623689 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153876 lambda!153794))))

(assert (=> bs!757052 (= (= lt!1623689 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153876 lambda!153796))))

(declare-fun bs!757055 () Bool)

(assert (= bs!757055 (and d!1341422 d!1341068)))

(assert (=> bs!757055 (= (= lt!1623689 lt!1623532) (= lambda!153876 lambda!153801))))

(declare-fun bs!757056 () Bool)

(assert (= bs!757056 (and d!1341422 b!4424304)))

(assert (=> bs!757056 (= (= lt!1623689 lt!1623791) (= lambda!153876 lambda!153742))))

(declare-fun bs!757057 () Bool)

(assert (= bs!757057 (and d!1341422 d!1340812)))

(assert (=> bs!757057 (= (= lt!1623689 lt!1623685) (= lambda!153876 lambda!153694))))

(declare-fun bs!757058 () Bool)

(assert (= bs!757058 (and d!1341422 d!1340894)))

(assert (=> bs!757058 (= (= lt!1623689 lt!1623787) (= lambda!153876 lambda!153743))))

(declare-fun bs!757059 () Bool)

(assert (= bs!757059 (and d!1341422 d!1341180)))

(assert (=> bs!757059 (= (= lt!1623689 lt!1624214) (= lambda!153876 lambda!153817))))

(assert (=> bs!757039 (= (= lt!1623689 lt!1623954) (= lambda!153876 lambda!153777))))

(declare-fun bs!757060 () Bool)

(assert (= bs!757060 (and d!1341422 d!1341096)))

(assert (=> bs!757060 (= (= lt!1623689 lt!1623791) (= lambda!153876 lambda!153806))))

(declare-fun bs!757061 () Bool)

(assert (= bs!757061 (and d!1341422 b!4424529)))

(assert (=> bs!757061 (= (= lt!1623689 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153876 lambda!153785))))

(assert (=> bs!757056 (= (= lt!1623689 lt!1623532) (= lambda!153876 lambda!153741))))

(declare-fun bs!757062 () Bool)

(assert (= bs!757062 (and d!1341422 d!1340882)))

(assert (=> bs!757062 (not (= lambda!153876 lambda!153732))))

(declare-fun bs!757063 () Bool)

(assert (= bs!757063 (and d!1341422 d!1341330)))

(assert (=> bs!757063 (= (= lt!1623689 lt!1624360) (= lambda!153876 lambda!153853))))

(assert (=> bs!757046 (= (= lt!1623689 lt!1623538) (= lambda!153876 lambda!153690))))

(declare-fun bs!757064 () Bool)

(assert (= bs!757064 (and d!1341422 d!1340982)))

(assert (=> bs!757064 (= (= lt!1623689 lt!1623950) (= lambda!153876 lambda!153778))))

(declare-fun bs!757065 () Bool)

(assert (= bs!757065 (and d!1341422 b!4424245)))

(assert (=> bs!757065 (= (= lt!1623689 lt!1623538) (= lambda!153876 lambda!153689))))

(assert (=> d!1341422 true))

(assert (=> d!1341422 (forall!9557 (toList!3482 lt!1623538) lambda!153876)))

(declare-fun lt!1624491 () Unit!81703)

(assert (=> d!1341422 (= lt!1624491 (choose!27931 lt!1623538 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341422 (forall!9557 (toList!3482 (+!1079 lt!1623538 (tuple2!49367 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))) lambda!153876)))

(assert (=> d!1341422 (= (addForallContainsKeyThenBeforeAdding!170 lt!1623538 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624491)))

(declare-fun bs!757069 () Bool)

(assert (= bs!757069 d!1341422))

(declare-fun m!5105575 () Bool)

(assert (=> bs!757069 m!5105575))

(declare-fun m!5105577 () Bool)

(assert (=> bs!757069 m!5105577))

(declare-fun m!5105579 () Bool)

(assert (=> bs!757069 m!5105579))

(declare-fun m!5105581 () Bool)

(assert (=> bs!757069 m!5105581))

(assert (=> b!4424242 d!1341422))

(declare-fun bs!757078 () Bool)

(declare-fun b!4425284 () Bool)

(assert (= bs!757078 (and b!4425284 b!4424707)))

(declare-fun lambda!153878 () Int)

(assert (=> bs!757078 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153878 lambda!153807))))

(declare-fun bs!757079 () Bool)

(assert (= bs!757079 (and b!4425284 b!4424468)))

(assert (=> bs!757079 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153878 lambda!153776))))

(declare-fun bs!757080 () Bool)

(assert (= bs!757080 (and b!4425284 b!4424471)))

(assert (=> bs!757080 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153878 lambda!153775))))

(declare-fun bs!757081 () Bool)

(assert (= bs!757081 (and b!4425284 b!4424846)))

(assert (=> bs!757081 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153878 lambda!153813))))

(assert (=> bs!757081 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624218) (= lambda!153878 lambda!153814))))

(declare-fun bs!757082 () Bool)

(assert (= bs!757082 (and b!4425284 b!4425081)))

(assert (=> bs!757082 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153878 lambda!153849))))

(declare-fun bs!757083 () Bool)

(assert (= bs!757083 (and b!4425284 d!1341054)))

(assert (=> bs!757083 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624042) (= lambda!153878 lambda!153798))))

(declare-fun bs!757085 () Bool)

(assert (= bs!757085 (and b!4425284 b!4424526)))

(assert (=> bs!757085 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623988) (= lambda!153878 lambda!153787))))

(declare-fun bs!757087 () Bool)

(assert (= bs!757087 (and b!4425284 b!4424307)))

(assert (=> bs!757087 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153878 lambda!153740))))

(declare-fun bs!757089 () Bool)

(assert (= bs!757089 (and b!4425284 b!4424242)))

(assert (=> bs!757089 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153878 lambda!153691))))

(assert (=> bs!757082 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624364) (= lambda!153878 lambda!153850))))

(declare-fun bs!757091 () Bool)

(assert (= bs!757091 (and b!4425284 b!4424704)))

(assert (=> bs!757091 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624143) (= lambda!153878 lambda!153809))))

(declare-fun bs!757094 () Bool)

(assert (= bs!757094 (and b!4425284 d!1341106)))

(assert (=> bs!757094 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624139) (= lambda!153878 lambda!153810))))

(declare-fun bs!757096 () Bool)

(assert (= bs!757096 (and b!4425284 d!1341324)))

(assert (=> bs!757096 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153878 lambda!153847))))

(assert (=> bs!757091 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153878 lambda!153808))))

(declare-fun bs!757098 () Bool)

(assert (= bs!757098 (and b!4425284 b!4424849)))

(assert (=> bs!757098 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153878 lambda!153812))))

(declare-fun bs!757100 () Bool)

(assert (= bs!757100 (and b!4425284 b!4425084)))

(assert (=> bs!757100 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153878 lambda!153848))))

(declare-fun bs!757102 () Bool)

(assert (= bs!757102 (and b!4425284 b!4424580)))

(assert (=> bs!757102 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624046) (= lambda!153878 lambda!153797))))

(declare-fun bs!757104 () Bool)

(assert (= bs!757104 (and b!4425284 d!1341020)))

(assert (=> bs!757104 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623984) (= lambda!153878 lambda!153788))))

(declare-fun bs!757106 () Bool)

(assert (= bs!757106 (and b!4425284 b!4424583)))

(assert (=> bs!757106 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153878 lambda!153794))))

(assert (=> bs!757102 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153878 lambda!153796))))

(declare-fun bs!757108 () Bool)

(assert (= bs!757108 (and b!4425284 d!1341068)))

(assert (=> bs!757108 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153878 lambda!153801))))

(declare-fun bs!757109 () Bool)

(assert (= bs!757109 (and b!4425284 b!4424304)))

(assert (=> bs!757109 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153878 lambda!153742))))

(declare-fun bs!757111 () Bool)

(assert (= bs!757111 (and b!4425284 d!1341422)))

(assert (=> bs!757111 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153878 lambda!153876))))

(assert (=> bs!757085 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153878 lambda!153786))))

(declare-fun bs!757114 () Bool)

(assert (= bs!757114 (and b!4425284 d!1340812)))

(assert (=> bs!757114 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623685) (= lambda!153878 lambda!153694))))

(declare-fun bs!757115 () Bool)

(assert (= bs!757115 (and b!4425284 d!1340894)))

(assert (=> bs!757115 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623787) (= lambda!153878 lambda!153743))))

(declare-fun bs!757116 () Bool)

(assert (= bs!757116 (and b!4425284 d!1341180)))

(assert (=> bs!757116 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624214) (= lambda!153878 lambda!153817))))

(assert (=> bs!757079 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623954) (= lambda!153878 lambda!153777))))

(declare-fun bs!757118 () Bool)

(assert (= bs!757118 (and b!4425284 d!1341096)))

(assert (=> bs!757118 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153878 lambda!153806))))

(declare-fun bs!757120 () Bool)

(assert (= bs!757120 (and b!4425284 b!4424529)))

(assert (=> bs!757120 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153878 lambda!153785))))

(assert (=> bs!757109 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153878 lambda!153741))))

(declare-fun bs!757121 () Bool)

(assert (= bs!757121 (and b!4425284 d!1340882)))

(assert (=> bs!757121 (not (= lambda!153878 lambda!153732))))

(declare-fun bs!757123 () Bool)

(assert (= bs!757123 (and b!4425284 d!1341330)))

(assert (=> bs!757123 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624360) (= lambda!153878 lambda!153853))))

(assert (=> bs!757089 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153878 lambda!153690))))

(declare-fun bs!757125 () Bool)

(assert (= bs!757125 (and b!4425284 d!1340982)))

(assert (=> bs!757125 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623950) (= lambda!153878 lambda!153778))))

(declare-fun bs!757127 () Bool)

(assert (= bs!757127 (and b!4425284 b!4424245)))

(assert (=> bs!757127 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153878 lambda!153689))))

(assert (=> b!4425284 true))

(declare-fun bs!757130 () Bool)

(declare-fun b!4425281 () Bool)

(assert (= bs!757130 (and b!4425281 b!4424707)))

(declare-fun lambda!153880 () Int)

(assert (=> bs!757130 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153880 lambda!153807))))

(declare-fun bs!757131 () Bool)

(assert (= bs!757131 (and b!4425281 b!4424468)))

(assert (=> bs!757131 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153880 lambda!153776))))

(declare-fun bs!757132 () Bool)

(assert (= bs!757132 (and b!4425281 b!4424471)))

(assert (=> bs!757132 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153880 lambda!153775))))

(declare-fun bs!757134 () Bool)

(assert (= bs!757134 (and b!4425281 b!4424846)))

(assert (=> bs!757134 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153880 lambda!153813))))

(assert (=> bs!757134 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624218) (= lambda!153880 lambda!153814))))

(declare-fun bs!757135 () Bool)

(assert (= bs!757135 (and b!4425281 b!4425081)))

(assert (=> bs!757135 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153880 lambda!153849))))

(declare-fun bs!757136 () Bool)

(assert (= bs!757136 (and b!4425281 b!4425284)))

(assert (=> bs!757136 (= lambda!153880 lambda!153878)))

(declare-fun bs!757137 () Bool)

(assert (= bs!757137 (and b!4425281 d!1341054)))

(assert (=> bs!757137 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624042) (= lambda!153880 lambda!153798))))

(declare-fun bs!757138 () Bool)

(assert (= bs!757138 (and b!4425281 b!4424526)))

(assert (=> bs!757138 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623988) (= lambda!153880 lambda!153787))))

(declare-fun bs!757139 () Bool)

(assert (= bs!757139 (and b!4425281 b!4424307)))

(assert (=> bs!757139 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153880 lambda!153740))))

(declare-fun bs!757140 () Bool)

(assert (= bs!757140 (and b!4425281 b!4424242)))

(assert (=> bs!757140 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153880 lambda!153691))))

(assert (=> bs!757135 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624364) (= lambda!153880 lambda!153850))))

(declare-fun bs!757141 () Bool)

(assert (= bs!757141 (and b!4425281 b!4424704)))

(assert (=> bs!757141 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624143) (= lambda!153880 lambda!153809))))

(declare-fun bs!757142 () Bool)

(assert (= bs!757142 (and b!4425281 d!1341106)))

(assert (=> bs!757142 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624139) (= lambda!153880 lambda!153810))))

(declare-fun bs!757143 () Bool)

(assert (= bs!757143 (and b!4425281 d!1341324)))

(assert (=> bs!757143 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153880 lambda!153847))))

(assert (=> bs!757141 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153880 lambda!153808))))

(declare-fun bs!757144 () Bool)

(assert (= bs!757144 (and b!4425281 b!4424849)))

(assert (=> bs!757144 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153880 lambda!153812))))

(declare-fun bs!757145 () Bool)

(assert (= bs!757145 (and b!4425281 b!4425084)))

(assert (=> bs!757145 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153880 lambda!153848))))

(declare-fun bs!757146 () Bool)

(assert (= bs!757146 (and b!4425281 b!4424580)))

(assert (=> bs!757146 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624046) (= lambda!153880 lambda!153797))))

(declare-fun bs!757147 () Bool)

(assert (= bs!757147 (and b!4425281 d!1341020)))

(assert (=> bs!757147 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623984) (= lambda!153880 lambda!153788))))

(declare-fun bs!757148 () Bool)

(assert (= bs!757148 (and b!4425281 b!4424583)))

(assert (=> bs!757148 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153880 lambda!153794))))

(assert (=> bs!757146 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153880 lambda!153796))))

(declare-fun bs!757149 () Bool)

(assert (= bs!757149 (and b!4425281 d!1341068)))

(assert (=> bs!757149 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153880 lambda!153801))))

(declare-fun bs!757150 () Bool)

(assert (= bs!757150 (and b!4425281 b!4424304)))

(assert (=> bs!757150 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153880 lambda!153742))))

(declare-fun bs!757151 () Bool)

(assert (= bs!757151 (and b!4425281 d!1341422)))

(assert (=> bs!757151 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623689) (= lambda!153880 lambda!153876))))

(assert (=> bs!757138 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153880 lambda!153786))))

(declare-fun bs!757152 () Bool)

(assert (= bs!757152 (and b!4425281 d!1340812)))

(assert (=> bs!757152 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623685) (= lambda!153880 lambda!153694))))

(declare-fun bs!757153 () Bool)

(assert (= bs!757153 (and b!4425281 d!1340894)))

(assert (=> bs!757153 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623787) (= lambda!153880 lambda!153743))))

(declare-fun bs!757154 () Bool)

(assert (= bs!757154 (and b!4425281 d!1341180)))

(assert (=> bs!757154 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624214) (= lambda!153880 lambda!153817))))

(assert (=> bs!757131 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623954) (= lambda!153880 lambda!153777))))

(declare-fun bs!757155 () Bool)

(assert (= bs!757155 (and b!4425281 d!1341096)))

(assert (=> bs!757155 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623791) (= lambda!153880 lambda!153806))))

(declare-fun bs!757156 () Bool)

(assert (= bs!757156 (and b!4425281 b!4424529)))

(assert (=> bs!757156 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153880 lambda!153785))))

(assert (=> bs!757150 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623532) (= lambda!153880 lambda!153741))))

(declare-fun bs!757157 () Bool)

(assert (= bs!757157 (and b!4425281 d!1340882)))

(assert (=> bs!757157 (not (= lambda!153880 lambda!153732))))

(declare-fun bs!757158 () Bool)

(assert (= bs!757158 (and b!4425281 d!1341330)))

(assert (=> bs!757158 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624360) (= lambda!153880 lambda!153853))))

(assert (=> bs!757140 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153880 lambda!153690))))

(declare-fun bs!757159 () Bool)

(assert (= bs!757159 (and b!4425281 d!1340982)))

(assert (=> bs!757159 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623950) (= lambda!153880 lambda!153778))))

(declare-fun bs!757160 () Bool)

(assert (= bs!757160 (and b!4425281 b!4424245)))

(assert (=> bs!757160 (= (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1623538) (= lambda!153880 lambda!153689))))

(assert (=> b!4425281 true))

(declare-fun lambda!153881 () Int)

(declare-fun lt!1624509 () ListMap!2725)

(assert (=> bs!757131 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153881 lambda!153776))))

(assert (=> bs!757132 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153881 lambda!153775))))

(assert (=> bs!757134 (= (= lt!1624509 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153881 lambda!153813))))

(assert (=> bs!757134 (= (= lt!1624509 lt!1624218) (= lambda!153881 lambda!153814))))

(assert (=> bs!757135 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153881 lambda!153849))))

(assert (=> bs!757136 (= (= lt!1624509 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153881 lambda!153878))))

(assert (=> bs!757137 (= (= lt!1624509 lt!1624042) (= lambda!153881 lambda!153798))))

(assert (=> bs!757138 (= (= lt!1624509 lt!1623988) (= lambda!153881 lambda!153787))))

(assert (=> bs!757139 (= (= lt!1624509 lt!1623532) (= lambda!153881 lambda!153740))))

(assert (=> bs!757140 (= (= lt!1624509 lt!1623689) (= lambda!153881 lambda!153691))))

(assert (=> bs!757135 (= (= lt!1624509 lt!1624364) (= lambda!153881 lambda!153850))))

(assert (=> bs!757141 (= (= lt!1624509 lt!1624143) (= lambda!153881 lambda!153809))))

(assert (=> bs!757142 (= (= lt!1624509 lt!1624139) (= lambda!153881 lambda!153810))))

(assert (=> b!4425281 (= (= lt!1624509 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153881 lambda!153880))))

(assert (=> bs!757130 (= (= lt!1624509 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153881 lambda!153807))))

(assert (=> bs!757143 (= (= lt!1624509 lt!1623538) (= lambda!153881 lambda!153847))))

(assert (=> bs!757141 (= (= lt!1624509 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153881 lambda!153808))))

(assert (=> bs!757144 (= (= lt!1624509 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153881 lambda!153812))))

(assert (=> bs!757145 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153881 lambda!153848))))

(assert (=> bs!757146 (= (= lt!1624509 lt!1624046) (= lambda!153881 lambda!153797))))

(assert (=> bs!757147 (= (= lt!1624509 lt!1623984) (= lambda!153881 lambda!153788))))

(assert (=> bs!757148 (= (= lt!1624509 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153881 lambda!153794))))

(assert (=> bs!757146 (= (= lt!1624509 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153881 lambda!153796))))

(assert (=> bs!757149 (= (= lt!1624509 lt!1623532) (= lambda!153881 lambda!153801))))

(assert (=> bs!757150 (= (= lt!1624509 lt!1623791) (= lambda!153881 lambda!153742))))

(assert (=> bs!757151 (= (= lt!1624509 lt!1623689) (= lambda!153881 lambda!153876))))

(assert (=> bs!757138 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153881 lambda!153786))))

(assert (=> bs!757152 (= (= lt!1624509 lt!1623685) (= lambda!153881 lambda!153694))))

(assert (=> bs!757153 (= (= lt!1624509 lt!1623787) (= lambda!153881 lambda!153743))))

(assert (=> bs!757154 (= (= lt!1624509 lt!1624214) (= lambda!153881 lambda!153817))))

(assert (=> bs!757131 (= (= lt!1624509 lt!1623954) (= lambda!153881 lambda!153777))))

(assert (=> bs!757155 (= (= lt!1624509 lt!1623791) (= lambda!153881 lambda!153806))))

(assert (=> bs!757156 (= (= lt!1624509 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153881 lambda!153785))))

(assert (=> bs!757150 (= (= lt!1624509 lt!1623532) (= lambda!153881 lambda!153741))))

(assert (=> bs!757157 (not (= lambda!153881 lambda!153732))))

(assert (=> bs!757158 (= (= lt!1624509 lt!1624360) (= lambda!153881 lambda!153853))))

(assert (=> bs!757140 (= (= lt!1624509 lt!1623538) (= lambda!153881 lambda!153690))))

(assert (=> bs!757159 (= (= lt!1624509 lt!1623950) (= lambda!153881 lambda!153778))))

(assert (=> bs!757160 (= (= lt!1624509 lt!1623538) (= lambda!153881 lambda!153689))))

(assert (=> b!4425281 true))

(declare-fun bs!757161 () Bool)

(declare-fun d!1341426 () Bool)

(assert (= bs!757161 (and d!1341426 b!4424468)))

(declare-fun lt!1624505 () ListMap!2725)

(declare-fun lambda!153882 () Int)

(assert (=> bs!757161 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153882 lambda!153776))))

(declare-fun bs!757162 () Bool)

(assert (= bs!757162 (and d!1341426 b!4424471)))

(assert (=> bs!757162 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 lt!1623534)))) (= lambda!153882 lambda!153775))))

(declare-fun bs!757163 () Bool)

(assert (= bs!757163 (and d!1341426 b!4424846)))

(assert (=> bs!757163 (= (= lt!1624505 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153882 lambda!153813))))

(assert (=> bs!757163 (= (= lt!1624505 lt!1624218) (= lambda!153882 lambda!153814))))

(declare-fun bs!757164 () Bool)

(assert (= bs!757164 (and d!1341426 b!4425081)))

(assert (=> bs!757164 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153882 lambda!153849))))

(declare-fun bs!757165 () Bool)

(assert (= bs!757165 (and d!1341426 b!4425284)))

(assert (=> bs!757165 (= (= lt!1624505 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153882 lambda!153878))))

(declare-fun bs!757166 () Bool)

(assert (= bs!757166 (and d!1341426 d!1341054)))

(assert (=> bs!757166 (= (= lt!1624505 lt!1624042) (= lambda!153882 lambda!153798))))

(declare-fun bs!757167 () Bool)

(assert (= bs!757167 (and d!1341426 b!4424526)))

(assert (=> bs!757167 (= (= lt!1624505 lt!1623988) (= lambda!153882 lambda!153787))))

(declare-fun bs!757168 () Bool)

(assert (= bs!757168 (and d!1341426 b!4424242)))

(assert (=> bs!757168 (= (= lt!1624505 lt!1623689) (= lambda!153882 lambda!153691))))

(assert (=> bs!757164 (= (= lt!1624505 lt!1624364) (= lambda!153882 lambda!153850))))

(declare-fun bs!757169 () Bool)

(assert (= bs!757169 (and d!1341426 b!4424704)))

(assert (=> bs!757169 (= (= lt!1624505 lt!1624143) (= lambda!153882 lambda!153809))))

(declare-fun bs!757170 () Bool)

(assert (= bs!757170 (and d!1341426 d!1341106)))

(assert (=> bs!757170 (= (= lt!1624505 lt!1624139) (= lambda!153882 lambda!153810))))

(declare-fun bs!757171 () Bool)

(assert (= bs!757171 (and d!1341426 b!4425281)))

(assert (=> bs!757171 (= (= lt!1624505 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153882 lambda!153880))))

(declare-fun bs!757172 () Bool)

(assert (= bs!757172 (and d!1341426 b!4424707)))

(assert (=> bs!757172 (= (= lt!1624505 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153882 lambda!153807))))

(declare-fun bs!757173 () Bool)

(assert (= bs!757173 (and d!1341426 d!1341324)))

(assert (=> bs!757173 (= (= lt!1624505 lt!1623538) (= lambda!153882 lambda!153847))))

(assert (=> bs!757169 (= (= lt!1624505 (+!1079 lt!1623532 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (= lambda!153882 lambda!153808))))

(declare-fun bs!757174 () Bool)

(assert (= bs!757174 (and d!1341426 b!4424849)))

(assert (=> bs!757174 (= (= lt!1624505 (extractMap!808 (t!356638 (tail!7267 (toList!3481 lm!1616))))) (= lambda!153882 lambda!153812))))

(declare-fun bs!757175 () Bool)

(assert (= bs!757175 (and d!1341426 b!4425084)))

(assert (=> bs!757175 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 lm!1616)))) (= lambda!153882 lambda!153848))))

(declare-fun bs!757176 () Bool)

(assert (= bs!757176 (and d!1341426 b!4424580)))

(assert (=> bs!757176 (= (= lt!1624505 lt!1624046) (= lambda!153882 lambda!153797))))

(declare-fun bs!757177 () Bool)

(assert (= bs!757177 (and d!1341426 d!1341020)))

(assert (=> bs!757177 (= (= lt!1624505 lt!1623984) (= lambda!153882 lambda!153788))))

(declare-fun bs!757178 () Bool)

(assert (= bs!757178 (and d!1341426 b!4424583)))

(assert (=> bs!757178 (= (= lt!1624505 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153882 lambda!153794))))

(assert (=> bs!757176 (= (= lt!1624505 (+!1079 lt!1623532 (tuple2!49367 key!3717 newValue!93))) (= lambda!153882 lambda!153796))))

(declare-fun bs!757179 () Bool)

(assert (= bs!757179 (and d!1341426 d!1341068)))

(assert (=> bs!757179 (= (= lt!1624505 lt!1623532) (= lambda!153882 lambda!153801))))

(declare-fun bs!757180 () Bool)

(assert (= bs!757180 (and d!1341426 b!4424304)))

(assert (=> bs!757180 (= (= lt!1624505 lt!1623791) (= lambda!153882 lambda!153742))))

(declare-fun bs!757181 () Bool)

(assert (= bs!757181 (and d!1341426 d!1341422)))

(assert (=> bs!757181 (= (= lt!1624505 lt!1623689) (= lambda!153882 lambda!153876))))

(assert (=> bs!757167 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153882 lambda!153786))))

(declare-fun bs!757182 () Bool)

(assert (= bs!757182 (and d!1341426 d!1340812)))

(assert (=> bs!757182 (= (= lt!1624505 lt!1623685) (= lambda!153882 lambda!153694))))

(declare-fun bs!757183 () Bool)

(assert (= bs!757183 (and d!1341426 d!1340894)))

(assert (=> bs!757183 (= (= lt!1624505 lt!1623787) (= lambda!153882 lambda!153743))))

(declare-fun bs!757184 () Bool)

(assert (= bs!757184 (and d!1341426 d!1341180)))

(assert (=> bs!757184 (= (= lt!1624505 lt!1624214) (= lambda!153882 lambda!153817))))

(assert (=> bs!757161 (= (= lt!1624505 lt!1623954) (= lambda!153882 lambda!153777))))

(declare-fun bs!757185 () Bool)

(assert (= bs!757185 (and d!1341426 d!1341096)))

(assert (=> bs!757185 (= (= lt!1624505 lt!1623791) (= lambda!153882 lambda!153806))))

(declare-fun bs!757186 () Bool)

(assert (= bs!757186 (and d!1341426 b!4424529)))

(assert (=> bs!757186 (= (= lt!1624505 (extractMap!808 (t!356638 (toList!3481 (+!1078 lt!1623534 lt!1623539))))) (= lambda!153882 lambda!153785))))

(assert (=> bs!757171 (= (= lt!1624505 lt!1624509) (= lambda!153882 lambda!153881))))

(declare-fun bs!757187 () Bool)

(assert (= bs!757187 (and d!1341426 b!4424307)))

(assert (=> bs!757187 (= (= lt!1624505 lt!1623532) (= lambda!153882 lambda!153740))))

(assert (=> bs!757180 (= (= lt!1624505 lt!1623532) (= lambda!153882 lambda!153741))))

(declare-fun bs!757188 () Bool)

(assert (= bs!757188 (and d!1341426 d!1340882)))

(assert (=> bs!757188 (not (= lambda!153882 lambda!153732))))

(declare-fun bs!757189 () Bool)

(assert (= bs!757189 (and d!1341426 d!1341330)))

(assert (=> bs!757189 (= (= lt!1624505 lt!1624360) (= lambda!153882 lambda!153853))))

(assert (=> bs!757168 (= (= lt!1624505 lt!1623538) (= lambda!153882 lambda!153690))))

(declare-fun bs!757190 () Bool)

(assert (= bs!757190 (and d!1341426 d!1340982)))

(assert (=> bs!757190 (= (= lt!1624505 lt!1623950) (= lambda!153882 lambda!153778))))

(declare-fun bs!757191 () Bool)

(assert (= bs!757191 (and d!1341426 b!4424245)))

(assert (=> bs!757191 (= (= lt!1624505 lt!1623538) (= lambda!153882 lambda!153689))))

(assert (=> d!1341426 true))

(declare-fun b!4425280 () Bool)

(declare-fun e!2755390 () Bool)

(assert (=> b!4425280 (= e!2755390 (forall!9557 (toList!3482 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153881))))

(declare-fun e!2755389 () ListMap!2725)

(assert (=> b!4425281 (= e!2755389 lt!1624509)))

(declare-fun lt!1624513 () ListMap!2725)

(assert (=> b!4425281 (= lt!1624513 (+!1079 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425281 (= lt!1624509 (addToMapMapFromBucket!384 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (+!1079 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun lt!1624496 () Unit!81703)

(declare-fun call!307907 () Unit!81703)

(assert (=> b!4425281 (= lt!1624496 call!307907)))

(declare-fun call!307909 () Bool)

(assert (=> b!4425281 call!307909))

(declare-fun lt!1624511 () Unit!81703)

(assert (=> b!4425281 (= lt!1624511 lt!1624496)))

(assert (=> b!4425281 (forall!9557 (toList!3482 lt!1624513) lambda!153881)))

(declare-fun lt!1624508 () Unit!81703)

(declare-fun Unit!81941 () Unit!81703)

(assert (=> b!4425281 (= lt!1624508 Unit!81941)))

(assert (=> b!4425281 (forall!9557 (t!356637 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lambda!153881)))

(declare-fun lt!1624493 () Unit!81703)

(declare-fun Unit!81942 () Unit!81703)

(assert (=> b!4425281 (= lt!1624493 Unit!81942)))

(declare-fun lt!1624495 () Unit!81703)

(declare-fun Unit!81943 () Unit!81703)

(assert (=> b!4425281 (= lt!1624495 Unit!81943)))

(declare-fun lt!1624498 () Unit!81703)

(assert (=> b!4425281 (= lt!1624498 (forallContained!2088 (toList!3482 lt!1624513) lambda!153881 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> b!4425281 (contains!12073 lt!1624513 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624499 () Unit!81703)

(declare-fun Unit!81944 () Unit!81703)

(assert (=> b!4425281 (= lt!1624499 Unit!81944)))

(assert (=> b!4425281 (contains!12073 lt!1624509 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624494 () Unit!81703)

(declare-fun Unit!81945 () Unit!81703)

(assert (=> b!4425281 (= lt!1624494 Unit!81945)))

(assert (=> b!4425281 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153881)))

(declare-fun lt!1624504 () Unit!81703)

(declare-fun Unit!81946 () Unit!81703)

(assert (=> b!4425281 (= lt!1624504 Unit!81946)))

(assert (=> b!4425281 (forall!9557 (toList!3482 lt!1624513) lambda!153881)))

(declare-fun lt!1624512 () Unit!81703)

(declare-fun Unit!81947 () Unit!81703)

(assert (=> b!4425281 (= lt!1624512 Unit!81947)))

(declare-fun lt!1624510 () Unit!81703)

(declare-fun Unit!81948 () Unit!81703)

(assert (=> b!4425281 (= lt!1624510 Unit!81948)))

(declare-fun lt!1624501 () Unit!81703)

(assert (=> b!4425281 (= lt!1624501 (addForallContainsKeyThenBeforeAdding!170 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624509 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (_2!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun call!307908 () Bool)

(assert (=> b!4425281 call!307908))

(declare-fun lt!1624507 () Unit!81703)

(assert (=> b!4425281 (= lt!1624507 lt!1624501)))

(assert (=> b!4425281 (forall!9557 (toList!3482 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153881)))

(declare-fun lt!1624502 () Unit!81703)

(declare-fun Unit!81949 () Unit!81703)

(assert (=> b!4425281 (= lt!1624502 Unit!81949)))

(declare-fun res!1829470 () Bool)

(assert (=> b!4425281 (= res!1829470 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153881))))

(assert (=> b!4425281 (=> (not res!1829470) (not e!2755390))))

(assert (=> b!4425281 e!2755390))

(declare-fun lt!1624503 () Unit!81703)

(declare-fun Unit!81950 () Unit!81703)

(assert (=> b!4425281 (= lt!1624503 Unit!81950)))

(declare-fun e!2755388 () Bool)

(assert (=> d!1341426 e!2755388))

(declare-fun res!1829469 () Bool)

(assert (=> d!1341426 (=> (not res!1829469) (not e!2755388))))

(assert (=> d!1341426 (= res!1829469 (forall!9557 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) lambda!153882))))

(assert (=> d!1341426 (= lt!1624505 e!2755389)))

(declare-fun c!753318 () Bool)

(assert (=> d!1341426 (= c!753318 ((_ is Nil!49575) (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (=> d!1341426 (noDuplicateKeys!747 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> d!1341426 (= (addToMapMapFromBucket!384 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))) (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lt!1624505)))

(declare-fun bm!307902 () Bool)

(assert (=> bm!307902 (= call!307908 (forall!9557 (toList!3482 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (ite c!753318 lambda!153878 lambda!153881)))))

(declare-fun bm!307903 () Bool)

(assert (=> bm!307903 (= call!307909 (forall!9557 (toList!3482 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (ite c!753318 lambda!153878 lambda!153880)))))

(declare-fun b!4425282 () Bool)

(declare-fun res!1829468 () Bool)

(assert (=> b!4425282 (=> (not res!1829468) (not e!2755388))))

(assert (=> b!4425282 (= res!1829468 (forall!9557 (toList!3482 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) lambda!153882))))

(declare-fun bm!307904 () Bool)

(assert (=> bm!307904 (= call!307907 (lemmaContainsAllItsOwnKeys!170 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun b!4425283 () Bool)

(assert (=> b!4425283 (= e!2755388 (invariantList!803 (toList!3482 lt!1624505)))))

(assert (=> b!4425284 (= e!2755389 (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(declare-fun lt!1624500 () Unit!81703)

(assert (=> b!4425284 (= lt!1624500 call!307907)))

(assert (=> b!4425284 call!307909))

(declare-fun lt!1624497 () Unit!81703)

(assert (=> b!4425284 (= lt!1624497 lt!1624500)))

(assert (=> b!4425284 call!307908))

(declare-fun lt!1624506 () Unit!81703)

(declare-fun Unit!81951 () Unit!81703)

(assert (=> b!4425284 (= lt!1624506 Unit!81951)))

(assert (= (and d!1341426 c!753318) b!4425284))

(assert (= (and d!1341426 (not c!753318)) b!4425281))

(assert (= (and b!4425281 res!1829470) b!4425280))

(assert (= (or b!4425284 b!4425281) bm!307904))

(assert (= (or b!4425284 b!4425281) bm!307903))

(assert (= (or b!4425284 b!4425281) bm!307902))

(assert (= (and d!1341426 res!1829469) b!4425282))

(assert (= (and b!4425282 res!1829468) b!4425283))

(declare-fun m!5105627 () Bool)

(assert (=> d!1341426 m!5105627))

(assert (=> d!1341426 m!5104161))

(declare-fun m!5105629 () Bool)

(assert (=> bm!307903 m!5105629))

(declare-fun m!5105631 () Bool)

(assert (=> b!4425280 m!5105631))

(declare-fun m!5105633 () Bool)

(assert (=> b!4425283 m!5105633))

(assert (=> bm!307904 m!5103613))

(declare-fun m!5105635 () Bool)

(assert (=> bm!307904 m!5105635))

(declare-fun m!5105637 () Bool)

(assert (=> b!4425282 m!5105637))

(declare-fun m!5105639 () Bool)

(assert (=> bm!307902 m!5105639))

(declare-fun m!5105641 () Bool)

(assert (=> b!4425281 m!5105641))

(declare-fun m!5105643 () Bool)

(assert (=> b!4425281 m!5105643))

(declare-fun m!5105645 () Bool)

(assert (=> b!4425281 m!5105645))

(assert (=> b!4425281 m!5103613))

(declare-fun m!5105647 () Bool)

(assert (=> b!4425281 m!5105647))

(assert (=> b!4425281 m!5105643))

(assert (=> b!4425281 m!5105631))

(assert (=> b!4425281 m!5105641))

(assert (=> b!4425281 m!5103613))

(declare-fun m!5105649 () Bool)

(assert (=> b!4425281 m!5105649))

(declare-fun m!5105651 () Bool)

(assert (=> b!4425281 m!5105651))

(assert (=> b!4425281 m!5105647))

(declare-fun m!5105653 () Bool)

(assert (=> b!4425281 m!5105653))

(declare-fun m!5105655 () Bool)

(assert (=> b!4425281 m!5105655))

(declare-fun m!5105657 () Bool)

(assert (=> b!4425281 m!5105657))

(assert (=> b!4424242 d!1341426))

(declare-fun d!1341442 () Bool)

(declare-fun res!1829480 () Bool)

(declare-fun e!2755403 () Bool)

(assert (=> d!1341442 (=> res!1829480 e!2755403)))

(assert (=> d!1341442 (= res!1829480 ((_ is Nil!49575) (toList!3482 lt!1623693)))))

(assert (=> d!1341442 (= (forall!9557 (toList!3482 lt!1623693) lambda!153691) e!2755403)))

(declare-fun b!4425300 () Bool)

(declare-fun e!2755404 () Bool)

(assert (=> b!4425300 (= e!2755403 e!2755404)))

(declare-fun res!1829481 () Bool)

(assert (=> b!4425300 (=> (not res!1829481) (not e!2755404))))

(assert (=> b!4425300 (= res!1829481 (dynLambda!20843 lambda!153691 (h!55258 (toList!3482 lt!1623693))))))

(declare-fun b!4425301 () Bool)

(assert (=> b!4425301 (= e!2755404 (forall!9557 (t!356637 (toList!3482 lt!1623693)) lambda!153691))))

(assert (= (and d!1341442 (not res!1829480)) b!4425300))

(assert (= (and b!4425300 res!1829481) b!4425301))

(declare-fun b_lambda!143045 () Bool)

(assert (=> (not b_lambda!143045) (not b!4425300)))

(declare-fun m!5105663 () Bool)

(assert (=> b!4425300 m!5105663))

(declare-fun m!5105665 () Bool)

(assert (=> b!4425301 m!5105665))

(assert (=> b!4424242 d!1341442))

(declare-fun d!1341446 () Bool)

(declare-fun e!2755406 () Bool)

(assert (=> d!1341446 e!2755406))

(declare-fun res!1829482 () Bool)

(assert (=> d!1341446 (=> (not res!1829482) (not e!2755406))))

(declare-fun lt!1624526 () ListMap!2725)

(assert (=> d!1341446 (= res!1829482 (contains!12073 lt!1624526 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun lt!1624527 () List!49699)

(assert (=> d!1341446 (= lt!1624526 (ListMap!2726 lt!1624527))))

(declare-fun lt!1624525 () Unit!81703)

(declare-fun lt!1624524 () Unit!81703)

(assert (=> d!1341446 (= lt!1624525 lt!1624524)))

(assert (=> d!1341446 (= (getValueByKey!707 lt!1624527 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (Some!10720 (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341446 (= lt!1624524 (lemmaContainsTupThenGetReturnValue!442 lt!1624527 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341446 (= lt!1624527 (insertNoDuplicatedKeys!193 (toList!3482 lt!1623538) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> d!1341446 (= (+!1079 lt!1623538 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) lt!1624526)))

(declare-fun b!4425304 () Bool)

(declare-fun res!1829483 () Bool)

(assert (=> b!4425304 (=> (not res!1829483) (not e!2755406))))

(assert (=> b!4425304 (= res!1829483 (= (getValueByKey!707 (toList!3482 lt!1624526) (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (Some!10720 (_2!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun b!4425305 () Bool)

(assert (=> b!4425305 (= e!2755406 (contains!12077 (toList!3482 lt!1624526) (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))

(assert (= (and d!1341446 res!1829482) b!4425304))

(assert (= (and b!4425304 res!1829483) b!4425305))

(declare-fun m!5105675 () Bool)

(assert (=> d!1341446 m!5105675))

(declare-fun m!5105677 () Bool)

(assert (=> d!1341446 m!5105677))

(declare-fun m!5105679 () Bool)

(assert (=> d!1341446 m!5105679))

(declare-fun m!5105681 () Bool)

(assert (=> d!1341446 m!5105681))

(declare-fun m!5105683 () Bool)

(assert (=> b!4425304 m!5105683))

(declare-fun m!5105685 () Bool)

(assert (=> b!4425305 m!5105685))

(assert (=> b!4424242 d!1341446))

(declare-fun d!1341452 () Bool)

(declare-fun e!2755413 () Bool)

(assert (=> d!1341452 e!2755413))

(declare-fun res!1829487 () Bool)

(assert (=> d!1341452 (=> res!1829487 e!2755413)))

(declare-fun e!2755416 () Bool)

(assert (=> d!1341452 (= res!1829487 e!2755416)))

(declare-fun res!1829489 () Bool)

(assert (=> d!1341452 (=> (not res!1829489) (not e!2755416))))

(declare-fun lt!1624555 () Bool)

(assert (=> d!1341452 (= res!1829489 (not lt!1624555))))

(declare-fun lt!1624556 () Bool)

(assert (=> d!1341452 (= lt!1624555 lt!1624556)))

(declare-fun lt!1624550 () Unit!81703)

(declare-fun e!2755411 () Unit!81703)

(assert (=> d!1341452 (= lt!1624550 e!2755411)))

(declare-fun c!753327 () Bool)

(assert (=> d!1341452 (= c!753327 lt!1624556)))

(assert (=> d!1341452 (= lt!1624556 (containsKey!1109 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(assert (=> d!1341452 (= (contains!12073 (extractMap!808 (toList!3481 lm!1616)) key!3717) lt!1624555)))

(declare-fun b!4425313 () Bool)

(declare-fun e!2755412 () Bool)

(assert (=> b!4425313 (= e!2755412 (contains!12079 (keys!16924 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(declare-fun b!4425314 () Bool)

(declare-fun e!2755414 () List!49702)

(assert (=> b!4425314 (= e!2755414 (getKeysList!250 (toList!3482 (extractMap!808 (toList!3481 lm!1616)))))))

(declare-fun b!4425315 () Bool)

(assert (=> b!4425315 (= e!2755416 (not (contains!12079 (keys!16924 (extractMap!808 (toList!3481 lm!1616))) key!3717)))))

(declare-fun b!4425316 () Bool)

(declare-fun e!2755415 () Unit!81703)

(assert (=> b!4425316 (= e!2755411 e!2755415)))

(declare-fun c!753325 () Bool)

(declare-fun call!307914 () Bool)

(assert (=> b!4425316 (= c!753325 call!307914)))

(declare-fun b!4425317 () Bool)

(assert (=> b!4425317 false))

(declare-fun lt!1624554 () Unit!81703)

(declare-fun lt!1624549 () Unit!81703)

(assert (=> b!4425317 (= lt!1624554 lt!1624549)))

(assert (=> b!4425317 (containsKey!1109 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717)))

(assert (=> b!4425317 (= lt!1624549 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(declare-fun Unit!81954 () Unit!81703)

(assert (=> b!4425317 (= e!2755415 Unit!81954)))

(declare-fun b!4425318 () Bool)

(declare-fun Unit!81955 () Unit!81703)

(assert (=> b!4425318 (= e!2755415 Unit!81955)))

(declare-fun b!4425319 () Bool)

(assert (=> b!4425319 (= e!2755414 (keys!16924 (extractMap!808 (toList!3481 lm!1616))))))

(declare-fun b!4425320 () Bool)

(assert (=> b!4425320 (= e!2755413 e!2755412)))

(declare-fun res!1829488 () Bool)

(assert (=> b!4425320 (=> (not res!1829488) (not e!2755412))))

(assert (=> b!4425320 (= res!1829488 (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717)))))

(declare-fun b!4425321 () Bool)

(declare-fun lt!1624553 () Unit!81703)

(assert (=> b!4425321 (= e!2755411 lt!1624553)))

(declare-fun lt!1624551 () Unit!81703)

(assert (=> b!4425321 (= lt!1624551 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(assert (=> b!4425321 (isDefined!8013 (getValueByKey!707 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(declare-fun lt!1624552 () Unit!81703)

(assert (=> b!4425321 (= lt!1624552 lt!1624551)))

(assert (=> b!4425321 (= lt!1624553 (lemmaInListThenGetKeysListContains!247 (toList!3482 (extractMap!808 (toList!3481 lm!1616))) key!3717))))

(assert (=> b!4425321 call!307914))

(declare-fun bm!307909 () Bool)

(assert (=> bm!307909 (= call!307914 (contains!12079 e!2755414 key!3717))))

(declare-fun c!753326 () Bool)

(assert (=> bm!307909 (= c!753326 c!753327)))

(assert (= (and d!1341452 c!753327) b!4425321))

(assert (= (and d!1341452 (not c!753327)) b!4425316))

(assert (= (and b!4425316 c!753325) b!4425317))

(assert (= (and b!4425316 (not c!753325)) b!4425318))

(assert (= (or b!4425321 b!4425316) bm!307909))

(assert (= (and bm!307909 c!753326) b!4425314))

(assert (= (and bm!307909 (not c!753326)) b!4425319))

(assert (= (and d!1341452 res!1829489) b!4425315))

(assert (= (and d!1341452 (not res!1829487)) b!4425320))

(assert (= (and b!4425320 res!1829488) b!4425313))

(declare-fun m!5105687 () Bool)

(assert (=> b!4425317 m!5105687))

(declare-fun m!5105689 () Bool)

(assert (=> b!4425317 m!5105689))

(declare-fun m!5105691 () Bool)

(assert (=> bm!307909 m!5105691))

(assert (=> b!4425315 m!5103357))

(declare-fun m!5105693 () Bool)

(assert (=> b!4425315 m!5105693))

(assert (=> b!4425315 m!5105693))

(declare-fun m!5105695 () Bool)

(assert (=> b!4425315 m!5105695))

(assert (=> d!1341452 m!5105687))

(assert (=> b!4425313 m!5103357))

(assert (=> b!4425313 m!5105693))

(assert (=> b!4425313 m!5105693))

(assert (=> b!4425313 m!5105695))

(declare-fun m!5105697 () Bool)

(assert (=> b!4425321 m!5105697))

(declare-fun m!5105699 () Bool)

(assert (=> b!4425321 m!5105699))

(assert (=> b!4425321 m!5105699))

(declare-fun m!5105701 () Bool)

(assert (=> b!4425321 m!5105701))

(declare-fun m!5105703 () Bool)

(assert (=> b!4425321 m!5105703))

(declare-fun m!5105705 () Bool)

(assert (=> b!4425314 m!5105705))

(assert (=> b!4425319 m!5103357))

(assert (=> b!4425319 m!5105693))

(assert (=> b!4425320 m!5105699))

(assert (=> b!4425320 m!5105699))

(assert (=> b!4425320 m!5105701))

(assert (=> d!1340954 d!1341452))

(assert (=> d!1340954 d!1340952))

(declare-fun d!1341454 () Bool)

(assert (=> d!1341454 (contains!12073 (extractMap!808 (toList!3481 lm!1616)) key!3717)))

(assert (=> d!1341454 true))

(declare-fun _$12!1190 () Unit!81703)

(assert (=> d!1341454 (= (choose!27921 lm!1616 key!3717 hashF!1220) _$12!1190)))

(declare-fun bs!757256 () Bool)

(assert (= bs!757256 d!1341454))

(assert (=> bs!757256 m!5103357))

(assert (=> bs!757256 m!5103357))

(assert (=> bs!757256 m!5103973))

(assert (=> d!1340954 d!1341454))

(declare-fun d!1341456 () Bool)

(declare-fun res!1829490 () Bool)

(declare-fun e!2755417 () Bool)

(assert (=> d!1341456 (=> res!1829490 e!2755417)))

(assert (=> d!1341456 (= res!1829490 ((_ is Nil!49576) (toList!3481 lm!1616)))))

(assert (=> d!1341456 (= (forall!9556 (toList!3481 lm!1616) lambda!153762) e!2755417)))

(declare-fun b!4425322 () Bool)

(declare-fun e!2755418 () Bool)

(assert (=> b!4425322 (= e!2755417 e!2755418)))

(declare-fun res!1829491 () Bool)

(assert (=> b!4425322 (=> (not res!1829491) (not e!2755418))))

(assert (=> b!4425322 (= res!1829491 (dynLambda!20842 lambda!153762 (h!55259 (toList!3481 lm!1616))))))

(declare-fun b!4425323 () Bool)

(assert (=> b!4425323 (= e!2755418 (forall!9556 (t!356638 (toList!3481 lm!1616)) lambda!153762))))

(assert (= (and d!1341456 (not res!1829490)) b!4425322))

(assert (= (and b!4425322 res!1829491) b!4425323))

(declare-fun b_lambda!143047 () Bool)

(assert (=> (not b_lambda!143047) (not b!4425322)))

(declare-fun m!5105707 () Bool)

(assert (=> b!4425322 m!5105707))

(declare-fun m!5105709 () Bool)

(assert (=> b!4425323 m!5105709))

(assert (=> d!1340954 d!1341456))

(declare-fun d!1341458 () Bool)

(declare-fun e!2755421 () Bool)

(assert (=> d!1341458 e!2755421))

(declare-fun res!1829492 () Bool)

(assert (=> d!1341458 (=> res!1829492 e!2755421)))

(declare-fun e!2755424 () Bool)

(assert (=> d!1341458 (= res!1829492 e!2755424)))

(declare-fun res!1829494 () Bool)

(assert (=> d!1341458 (=> (not res!1829494) (not e!2755424))))

(declare-fun lt!1624563 () Bool)

(assert (=> d!1341458 (= res!1829494 (not lt!1624563))))

(declare-fun lt!1624564 () Bool)

(assert (=> d!1341458 (= lt!1624563 lt!1624564)))

(declare-fun lt!1624558 () Unit!81703)

(declare-fun e!2755419 () Unit!81703)

(assert (=> d!1341458 (= lt!1624558 e!2755419)))

(declare-fun c!753330 () Bool)

(assert (=> d!1341458 (= c!753330 lt!1624564)))

(assert (=> d!1341458 (= lt!1624564 (containsKey!1109 (toList!3482 lt!1623845) (_1!27977 lt!1623530)))))

(assert (=> d!1341458 (= (contains!12073 lt!1623845 (_1!27977 lt!1623530)) lt!1624563)))

(declare-fun b!4425324 () Bool)

(declare-fun e!2755420 () Bool)

(assert (=> b!4425324 (= e!2755420 (contains!12079 (keys!16924 lt!1623845) (_1!27977 lt!1623530)))))

(declare-fun b!4425325 () Bool)

(declare-fun e!2755422 () List!49702)

(assert (=> b!4425325 (= e!2755422 (getKeysList!250 (toList!3482 lt!1623845)))))

(declare-fun b!4425326 () Bool)

(assert (=> b!4425326 (= e!2755424 (not (contains!12079 (keys!16924 lt!1623845) (_1!27977 lt!1623530))))))

(declare-fun b!4425327 () Bool)

(declare-fun e!2755423 () Unit!81703)

(assert (=> b!4425327 (= e!2755419 e!2755423)))

(declare-fun c!753328 () Bool)

(declare-fun call!307915 () Bool)

(assert (=> b!4425327 (= c!753328 call!307915)))

(declare-fun b!4425328 () Bool)

(assert (=> b!4425328 false))

(declare-fun lt!1624562 () Unit!81703)

(declare-fun lt!1624557 () Unit!81703)

(assert (=> b!4425328 (= lt!1624562 lt!1624557)))

(assert (=> b!4425328 (containsKey!1109 (toList!3482 lt!1623845) (_1!27977 lt!1623530))))

(assert (=> b!4425328 (= lt!1624557 (lemmaInGetKeysListThenContainsKey!248 (toList!3482 lt!1623845) (_1!27977 lt!1623530)))))

(declare-fun Unit!81956 () Unit!81703)

(assert (=> b!4425328 (= e!2755423 Unit!81956)))

(declare-fun b!4425329 () Bool)

(declare-fun Unit!81957 () Unit!81703)

(assert (=> b!4425329 (= e!2755423 Unit!81957)))

(declare-fun b!4425330 () Bool)

(assert (=> b!4425330 (= e!2755422 (keys!16924 lt!1623845))))

(declare-fun b!4425331 () Bool)

(assert (=> b!4425331 (= e!2755421 e!2755420)))

(declare-fun res!1829493 () Bool)

(assert (=> b!4425331 (=> (not res!1829493) (not e!2755420))))

(assert (=> b!4425331 (= res!1829493 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623845) (_1!27977 lt!1623530))))))

(declare-fun b!4425332 () Bool)

(declare-fun lt!1624561 () Unit!81703)

(assert (=> b!4425332 (= e!2755419 lt!1624561)))

(declare-fun lt!1624559 () Unit!81703)

(assert (=> b!4425332 (= lt!1624559 (lemmaContainsKeyImpliesGetValueByKeyDefined!616 (toList!3482 lt!1623845) (_1!27977 lt!1623530)))))

(assert (=> b!4425332 (isDefined!8013 (getValueByKey!707 (toList!3482 lt!1623845) (_1!27977 lt!1623530)))))

(declare-fun lt!1624560 () Unit!81703)

(assert (=> b!4425332 (= lt!1624560 lt!1624559)))

(assert (=> b!4425332 (= lt!1624561 (lemmaInListThenGetKeysListContains!247 (toList!3482 lt!1623845) (_1!27977 lt!1623530)))))

(assert (=> b!4425332 call!307915))

(declare-fun bm!307910 () Bool)

(assert (=> bm!307910 (= call!307915 (contains!12079 e!2755422 (_1!27977 lt!1623530)))))

(declare-fun c!753329 () Bool)

(assert (=> bm!307910 (= c!753329 c!753330)))

(assert (= (and d!1341458 c!753330) b!4425332))

(assert (= (and d!1341458 (not c!753330)) b!4425327))

(assert (= (and b!4425327 c!753328) b!4425328))

(assert (= (and b!4425327 (not c!753328)) b!4425329))

(assert (= (or b!4425332 b!4425327) bm!307910))

(assert (= (and bm!307910 c!753329) b!4425325))

(assert (= (and bm!307910 (not c!753329)) b!4425330))

(assert (= (and d!1341458 res!1829494) b!4425326))

(assert (= (and d!1341458 (not res!1829492)) b!4425331))

(assert (= (and b!4425331 res!1829493) b!4425324))

(declare-fun m!5105711 () Bool)

(assert (=> b!4425328 m!5105711))

(declare-fun m!5105713 () Bool)

(assert (=> b!4425328 m!5105713))

(declare-fun m!5105715 () Bool)

(assert (=> bm!307910 m!5105715))

(declare-fun m!5105717 () Bool)

(assert (=> b!4425326 m!5105717))

(assert (=> b!4425326 m!5105717))

(declare-fun m!5105719 () Bool)

(assert (=> b!4425326 m!5105719))

(assert (=> d!1341458 m!5105711))

(assert (=> b!4425324 m!5105717))

(assert (=> b!4425324 m!5105717))

(assert (=> b!4425324 m!5105719))

(declare-fun m!5105721 () Bool)

(assert (=> b!4425332 m!5105721))

(assert (=> b!4425332 m!5103873))

(assert (=> b!4425332 m!5103873))

(declare-fun m!5105723 () Bool)

(assert (=> b!4425332 m!5105723))

(declare-fun m!5105725 () Bool)

(assert (=> b!4425332 m!5105725))

(declare-fun m!5105727 () Bool)

(assert (=> b!4425325 m!5105727))

(assert (=> b!4425330 m!5105717))

(assert (=> b!4425331 m!5103873))

(assert (=> b!4425331 m!5103873))

(assert (=> b!4425331 m!5105723))

(assert (=> d!1340926 d!1341458))

(declare-fun b!4425333 () Bool)

(declare-fun e!2755425 () Option!10721)

(assert (=> b!4425333 (= e!2755425 (Some!10720 (_2!27977 (h!55258 lt!1623846))))))

(declare-fun b!4425335 () Bool)

(declare-fun e!2755426 () Option!10721)

(assert (=> b!4425335 (= e!2755426 (getValueByKey!707 (t!356637 lt!1623846) (_1!27977 lt!1623530)))))

(declare-fun d!1341460 () Bool)

(declare-fun c!753331 () Bool)

(assert (=> d!1341460 (= c!753331 (and ((_ is Cons!49575) lt!1623846) (= (_1!27977 (h!55258 lt!1623846)) (_1!27977 lt!1623530))))))

(assert (=> d!1341460 (= (getValueByKey!707 lt!1623846 (_1!27977 lt!1623530)) e!2755425)))

(declare-fun b!4425336 () Bool)

(assert (=> b!4425336 (= e!2755426 None!10720)))

(declare-fun b!4425334 () Bool)

(assert (=> b!4425334 (= e!2755425 e!2755426)))

(declare-fun c!753332 () Bool)

(assert (=> b!4425334 (= c!753332 (and ((_ is Cons!49575) lt!1623846) (not (= (_1!27977 (h!55258 lt!1623846)) (_1!27977 lt!1623530)))))))

(assert (= (and d!1341460 c!753331) b!4425333))

(assert (= (and d!1341460 (not c!753331)) b!4425334))

(assert (= (and b!4425334 c!753332) b!4425335))

(assert (= (and b!4425334 (not c!753332)) b!4425336))

(declare-fun m!5105729 () Bool)

(assert (=> b!4425335 m!5105729))

(assert (=> d!1340926 d!1341460))

(declare-fun d!1341462 () Bool)

(assert (=> d!1341462 (= (getValueByKey!707 lt!1623846 (_1!27977 lt!1623530)) (Some!10720 (_2!27977 lt!1623530)))))

(declare-fun lt!1624565 () Unit!81703)

(assert (=> d!1341462 (= lt!1624565 (choose!27941 lt!1623846 (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun e!2755427 () Bool)

(assert (=> d!1341462 e!2755427))

(declare-fun res!1829495 () Bool)

(assert (=> d!1341462 (=> (not res!1829495) (not e!2755427))))

(assert (=> d!1341462 (= res!1829495 (invariantList!803 lt!1623846))))

(assert (=> d!1341462 (= (lemmaContainsTupThenGetReturnValue!442 lt!1623846 (_1!27977 lt!1623530) (_2!27977 lt!1623530)) lt!1624565)))

(declare-fun b!4425337 () Bool)

(declare-fun res!1829496 () Bool)

(assert (=> b!4425337 (=> (not res!1829496) (not e!2755427))))

(assert (=> b!4425337 (= res!1829496 (containsKey!1109 lt!1623846 (_1!27977 lt!1623530)))))

(declare-fun b!4425338 () Bool)

(assert (=> b!4425338 (= e!2755427 (contains!12077 lt!1623846 (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))

(assert (= (and d!1341462 res!1829495) b!4425337))

(assert (= (and b!4425337 res!1829496) b!4425338))

(assert (=> d!1341462 m!5103867))

(declare-fun m!5105745 () Bool)

(assert (=> d!1341462 m!5105745))

(declare-fun m!5105747 () Bool)

(assert (=> d!1341462 m!5105747))

(declare-fun m!5105751 () Bool)

(assert (=> b!4425337 m!5105751))

(declare-fun m!5105753 () Bool)

(assert (=> b!4425338 m!5105753))

(assert (=> d!1340926 d!1341462))

(declare-fun bm!307911 () Bool)

(declare-fun call!307918 () List!49699)

(declare-fun call!307919 () List!49699)

(assert (=> bm!307911 (= call!307918 call!307919)))

(declare-fun d!1341464 () Bool)

(declare-fun e!2755429 () Bool)

(assert (=> d!1341464 e!2755429))

(declare-fun res!1829500 () Bool)

(assert (=> d!1341464 (=> (not res!1829500) (not e!2755429))))

(declare-fun lt!1624575 () List!49699)

(assert (=> d!1341464 (= res!1829500 (invariantList!803 lt!1624575))))

(declare-fun e!2755428 () List!49699)

(assert (=> d!1341464 (= lt!1624575 e!2755428)))

(declare-fun c!753334 () Bool)

(assert (=> d!1341464 (= c!753334 (and ((_ is Cons!49575) (toList!3482 lt!1623532)) (= (_1!27977 (h!55258 (toList!3482 lt!1623532))) (_1!27977 lt!1623530))))))

(assert (=> d!1341464 (invariantList!803 (toList!3482 lt!1623532))))

(assert (=> d!1341464 (= (insertNoDuplicatedKeys!193 (toList!3482 lt!1623532) (_1!27977 lt!1623530) (_2!27977 lt!1623530)) lt!1624575)))

(declare-fun b!4425339 () Bool)

(assert (=> b!4425339 (= e!2755429 (= (content!7953 (getKeysList!250 lt!1624575)) ((_ map or) (content!7953 (getKeysList!250 (toList!3482 lt!1623532))) (store ((as const (Array K!10940 Bool)) false) (_1!27977 lt!1623530) true))))))

(declare-fun b!4425340 () Bool)

(declare-fun c!753335 () Bool)

(assert (=> b!4425340 (= c!753335 ((_ is Cons!49575) (toList!3482 lt!1623532)))))

(declare-fun e!2755434 () List!49699)

(declare-fun e!2755430 () List!49699)

(assert (=> b!4425340 (= e!2755434 e!2755430)))

(declare-fun b!4425341 () Bool)

(declare-fun e!2755433 () Bool)

(assert (=> b!4425341 (= e!2755433 (not (containsKey!1109 (toList!3482 lt!1623532) (_1!27977 lt!1623530))))))

(declare-fun b!4425342 () Bool)

(declare-fun e!2755431 () Unit!81703)

(declare-fun Unit!81958 () Unit!81703)

(assert (=> b!4425342 (= e!2755431 Unit!81958)))

(declare-fun b!4425343 () Bool)

(assert (=> b!4425343 false))

(declare-fun lt!1624574 () Unit!81703)

(declare-fun lt!1624566 () Unit!81703)

(assert (=> b!4425343 (= lt!1624574 lt!1624566)))

(assert (=> b!4425343 (containsKey!1109 (t!356637 (toList!3482 lt!1623532)) (_1!27977 (h!55258 (toList!3482 lt!1623532))))))

(assert (=> b!4425343 (= lt!1624566 (lemmaInGetKeysListThenContainsKey!248 (t!356637 (toList!3482 lt!1623532)) (_1!27977 (h!55258 (toList!3482 lt!1623532)))))))

(declare-fun lt!1624572 () Unit!81703)

(declare-fun lt!1624569 () Unit!81703)

(assert (=> b!4425343 (= lt!1624572 lt!1624569)))

(declare-fun call!307917 () List!49702)

(assert (=> b!4425343 (contains!12079 call!307917 (_1!27977 (h!55258 (toList!3482 lt!1623532))))))

(declare-fun lt!1624571 () List!49699)

(assert (=> b!4425343 (= lt!1624569 (lemmaInListThenGetKeysListContains!247 lt!1624571 (_1!27977 (h!55258 (toList!3482 lt!1623532)))))))

(assert (=> b!4425343 (= lt!1624571 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623532)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun Unit!81959 () Unit!81703)

(assert (=> b!4425343 (= e!2755431 Unit!81959)))

(declare-fun b!4425344 () Bool)

(declare-fun lt!1624576 () List!49699)

(assert (=> b!4425344 (= e!2755430 lt!1624576)))

(declare-fun call!307916 () List!49699)

(assert (=> b!4425344 (= lt!1624576 call!307916)))

(declare-fun c!753336 () Bool)

(assert (=> b!4425344 (= c!753336 (containsKey!1109 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623532)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)) (_1!27977 (h!55258 (toList!3482 lt!1623532)))))))

(declare-fun lt!1624573 () Unit!81703)

(assert (=> b!4425344 (= lt!1624573 e!2755431)))

(declare-fun b!4425345 () Bool)

(declare-fun e!2755432 () List!49699)

(assert (=> b!4425345 (= e!2755432 (insertNoDuplicatedKeys!193 (t!356637 (toList!3482 lt!1623532)) (_1!27977 lt!1623530) (_2!27977 lt!1623530)))))

(declare-fun b!4425346 () Bool)

(assert (=> b!4425346 (= e!2755434 call!307918)))

(declare-fun b!4425347 () Bool)

(declare-fun res!1829498 () Bool)

(assert (=> b!4425347 (=> (not res!1829498) (not e!2755429))))

(assert (=> b!4425347 (= res!1829498 (contains!12077 lt!1624575 (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))

(declare-fun b!4425348 () Bool)

(assert (=> b!4425348 (= e!2755428 call!307919)))

(declare-fun lt!1624570 () List!49702)

(assert (=> b!4425348 (= lt!1624570 call!307917)))

(declare-fun lt!1624568 () Unit!81703)

(assert (=> b!4425348 (= lt!1624568 (lemmaSubseqRefl!99 lt!1624570))))

(assert (=> b!4425348 (subseq!615 lt!1624570 lt!1624570)))

(declare-fun lt!1624567 () Unit!81703)

(assert (=> b!4425348 (= lt!1624567 lt!1624568)))

(declare-fun b!4425349 () Bool)

(assert (=> b!4425349 (= e!2755428 e!2755434)))

(declare-fun res!1829497 () Bool)

(assert (=> b!4425349 (= res!1829497 ((_ is Cons!49575) (toList!3482 lt!1623532)))))

(assert (=> b!4425349 (=> (not res!1829497) (not e!2755433))))

(declare-fun c!753333 () Bool)

(assert (=> b!4425349 (= c!753333 e!2755433)))

(declare-fun b!4425350 () Bool)

(assert (=> b!4425350 (= e!2755430 call!307916)))

(declare-fun bm!307912 () Bool)

(assert (=> bm!307912 (= call!307916 call!307918)))

(declare-fun c!753337 () Bool)

(assert (=> bm!307912 (= c!753337 c!753335)))

(declare-fun b!4425351 () Bool)

(declare-fun res!1829499 () Bool)

(assert (=> b!4425351 (=> (not res!1829499) (not e!2755429))))

(assert (=> b!4425351 (= res!1829499 (containsKey!1109 lt!1624575 (_1!27977 lt!1623530)))))

(declare-fun bm!307913 () Bool)

(assert (=> bm!307913 (= call!307917 (getKeysList!250 (ite c!753334 (toList!3482 lt!1623532) lt!1624571)))))

(declare-fun bm!307914 () Bool)

(assert (=> bm!307914 (= call!307919 ($colon$colon!785 (ite c!753334 (t!356637 (toList!3482 lt!1623532)) (ite c!753333 (toList!3482 lt!1623532) e!2755432)) (ite (or c!753334 c!753333) (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530)) (ite c!753335 (h!55258 (toList!3482 lt!1623532)) (tuple2!49367 (_1!27977 lt!1623530) (_2!27977 lt!1623530))))))))

(declare-fun b!4425352 () Bool)

(assert (=> b!4425352 (= e!2755432 Nil!49575)))

(assert (= (and d!1341464 c!753334) b!4425348))

(assert (= (and d!1341464 (not c!753334)) b!4425349))

(assert (= (and b!4425349 res!1829497) b!4425341))

(assert (= (and b!4425349 c!753333) b!4425346))

(assert (= (and b!4425349 (not c!753333)) b!4425340))

(assert (= (and b!4425340 c!753335) b!4425344))

(assert (= (and b!4425340 (not c!753335)) b!4425350))

(assert (= (and b!4425344 c!753336) b!4425343))

(assert (= (and b!4425344 (not c!753336)) b!4425342))

(assert (= (or b!4425344 b!4425350) bm!307912))

(assert (= (and bm!307912 c!753337) b!4425345))

(assert (= (and bm!307912 (not c!753337)) b!4425352))

(assert (= (or b!4425346 bm!307912) bm!307911))

(assert (= (or b!4425348 b!4425343) bm!307913))

(assert (= (or b!4425348 bm!307911) bm!307914))

(assert (= (and d!1341464 res!1829500) b!4425351))

(assert (= (and b!4425351 res!1829499) b!4425347))

(assert (= (and b!4425347 res!1829498) b!4425339))

(declare-fun m!5105769 () Bool)

(assert (=> b!4425339 m!5105769))

(assert (=> b!4425339 m!5105455))

(declare-fun m!5105771 () Bool)

(assert (=> b!4425339 m!5105771))

(declare-fun m!5105773 () Bool)

(assert (=> b!4425339 m!5105773))

(assert (=> b!4425339 m!5105769))

(declare-fun m!5105775 () Bool)

(assert (=> b!4425339 m!5105775))

(assert (=> b!4425339 m!5105771))

(declare-fun m!5105777 () Bool)

(assert (=> b!4425351 m!5105777))

(declare-fun m!5105779 () Bool)

(assert (=> b!4425341 m!5105779))

(declare-fun m!5105781 () Bool)

(assert (=> b!4425348 m!5105781))

(declare-fun m!5105783 () Bool)

(assert (=> b!4425348 m!5105783))

(declare-fun m!5105785 () Bool)

(assert (=> d!1341464 m!5105785))

(declare-fun m!5105787 () Bool)

(assert (=> d!1341464 m!5105787))

(declare-fun m!5105789 () Bool)

(assert (=> b!4425347 m!5105789))

(declare-fun m!5105791 () Bool)

(assert (=> bm!307913 m!5105791))

(declare-fun m!5105793 () Bool)

(assert (=> b!4425345 m!5105793))

(assert (=> b!4425343 m!5105793))

(declare-fun m!5105795 () Bool)

(assert (=> b!4425343 m!5105795))

(declare-fun m!5105797 () Bool)

(assert (=> b!4425343 m!5105797))

(declare-fun m!5105799 () Bool)

(assert (=> b!4425343 m!5105799))

(declare-fun m!5105803 () Bool)

(assert (=> b!4425343 m!5105803))

(declare-fun m!5105809 () Bool)

(assert (=> bm!307914 m!5105809))

(assert (=> b!4425344 m!5105793))

(assert (=> b!4425344 m!5105793))

(declare-fun m!5105813 () Bool)

(assert (=> b!4425344 m!5105813))

(assert (=> d!1340926 d!1341464))

(declare-fun tp!1333175 () Bool)

(declare-fun e!2755438 () Bool)

(declare-fun b!4425359 () Bool)

(assert (=> b!4425359 (= e!2755438 (and tp_is_empty!26235 tp_is_empty!26233 tp!1333175))))

(assert (=> b!4424416 (= tp!1333168 e!2755438)))

(assert (= (and b!4424416 ((_ is Cons!49575) (t!356637 (t!356637 newBucket!194)))) b!4425359))

(declare-fun e!2755439 () Bool)

(declare-fun b!4425360 () Bool)

(declare-fun tp!1333176 () Bool)

(assert (=> b!4425360 (= e!2755439 (and tp_is_empty!26235 tp_is_empty!26233 tp!1333176))))

(assert (=> b!4424421 (= tp!1333173 e!2755439)))

(assert (= (and b!4424421 ((_ is Cons!49575) (_2!27978 (h!55259 (toList!3481 lm!1616))))) b!4425360))

(declare-fun b!4425361 () Bool)

(declare-fun e!2755440 () Bool)

(declare-fun tp!1333177 () Bool)

(declare-fun tp!1333178 () Bool)

(assert (=> b!4425361 (= e!2755440 (and tp!1333177 tp!1333178))))

(assert (=> b!4424421 (= tp!1333174 e!2755440)))

(assert (= (and b!4424421 ((_ is Cons!49576) (t!356638 (toList!3481 lm!1616)))) b!4425361))

(declare-fun b_lambda!143049 () Bool)

(assert (= b_lambda!143035 (or b!4424242 b_lambda!143049)))

(declare-fun bs!757280 () Bool)

(declare-fun d!1341484 () Bool)

(assert (= bs!757280 (and d!1341484 b!4424242)))

(assert (=> bs!757280 (= (dynLambda!20843 lambda!153691 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (contains!12073 lt!1623689 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> bs!757280 m!5103623))

(assert (=> d!1341412 d!1341484))

(declare-fun b_lambda!143051 () Bool)

(assert (= b_lambda!142947 (or d!1340812 b_lambda!143051)))

(declare-fun bs!757281 () Bool)

(declare-fun d!1341488 () Bool)

(assert (= bs!757281 (and d!1341488 d!1340812)))

(assert (=> bs!757281 (= (dynLambda!20843 lambda!153694 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (contains!12073 lt!1623685 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun m!5105837 () Bool)

(assert (=> bs!757281 m!5105837))

(assert (=> b!4424503 d!1341488))

(declare-fun b_lambda!143053 () Bool)

(assert (= b_lambda!142967 (or b!4424304 b_lambda!143053)))

(declare-fun bs!757282 () Bool)

(declare-fun d!1341490 () Bool)

(assert (= bs!757282 (and d!1341490 b!4424304)))

(assert (=> bs!757282 (= (dynLambda!20843 lambda!153742 (h!55258 (toList!3482 lt!1623795))) (contains!12073 lt!1623791 (_1!27977 (h!55258 (toList!3482 lt!1623795)))))))

(declare-fun m!5105839 () Bool)

(assert (=> bs!757282 m!5105839))

(assert (=> b!4424644 d!1341490))

(declare-fun b_lambda!143055 () Bool)

(assert (= b_lambda!142961 (or d!1340922 b_lambda!143055)))

(declare-fun bs!757283 () Bool)

(declare-fun d!1341492 () Bool)

(assert (= bs!757283 (and d!1341492 d!1340922)))

(assert (=> bs!757283 (= (dynLambda!20842 lambda!153754 (h!55259 (tail!7267 (toList!3481 lm!1616)))) (noDuplicateKeys!747 (_2!27978 (h!55259 (tail!7267 (toList!3481 lm!1616))))))))

(assert (=> bs!757283 m!5104785))

(assert (=> b!4424629 d!1341492))

(declare-fun b_lambda!143057 () Bool)

(assert (= b_lambda!142979 (or d!1340812 b_lambda!143057)))

(declare-fun bs!757284 () Bool)

(declare-fun d!1341494 () Bool)

(assert (= bs!757284 (and d!1341494 d!1340812)))

(assert (=> bs!757284 (= (dynLambda!20843 lambda!153694 (h!55258 (toList!3482 lt!1623538))) (contains!12073 lt!1623685 (_1!27977 (h!55258 (toList!3482 lt!1623538)))))))

(declare-fun m!5105841 () Bool)

(assert (=> bs!757284 m!5105841))

(assert (=> b!4424835 d!1341494))

(declare-fun b_lambda!143059 () Bool)

(assert (= b_lambda!142965 (or b!4424304 b_lambda!143059)))

(declare-fun bs!757285 () Bool)

(declare-fun d!1341496 () Bool)

(assert (= bs!757285 (and d!1341496 b!4424304)))

(assert (=> bs!757285 (= (dynLambda!20843 lambda!153742 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (contains!12073 lt!1623791 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(assert (=> bs!757285 m!5103777))

(assert (=> b!4424642 d!1341496))

(declare-fun b_lambda!143061 () Bool)

(assert (= b_lambda!142955 (or b!4424242 b_lambda!143061)))

(declare-fun bs!757286 () Bool)

(declare-fun d!1341498 () Bool)

(assert (= bs!757286 (and d!1341498 b!4424242)))

(assert (=> bs!757286 (= (dynLambda!20843 lambda!153691 (h!55258 (toList!3482 lt!1623538))) (contains!12073 lt!1623689 (_1!27977 (h!55258 (toList!3482 lt!1623538)))))))

(declare-fun m!5105843 () Bool)

(assert (=> bs!757286 m!5105843))

(assert (=> b!4424609 d!1341498))

(declare-fun b_lambda!143063 () Bool)

(assert (= b_lambda!142957 (or d!1340882 b_lambda!143063)))

(declare-fun bs!757287 () Bool)

(declare-fun d!1341500 () Bool)

(assert (= bs!757287 (and d!1341500 d!1340882)))

(assert (=> bs!757287 (= (dynLambda!20843 lambda!153732 (h!55258 newBucket!194)) (= (hash!2110 hashF!1220 (_1!27977 (h!55258 newBucket!194))) hash!366))))

(declare-fun m!5105845 () Bool)

(assert (=> bs!757287 m!5105845))

(assert (=> b!4424617 d!1341500))

(declare-fun b_lambda!143065 () Bool)

(assert (= b_lambda!142969 (or b!4424304 b_lambda!143065)))

(assert (=> d!1341100 d!1341496))

(declare-fun b_lambda!143067 () Bool)

(assert (= b_lambda!143039 (or b!4424242 b_lambda!143067)))

(assert (=> b!4425276 d!1341484))

(declare-fun b_lambda!143069 () Bool)

(assert (= b_lambda!142993 (or start!431492 b_lambda!143069)))

(declare-fun bs!757288 () Bool)

(declare-fun d!1341502 () Bool)

(assert (= bs!757288 (and d!1341502 start!431492)))

(assert (=> bs!757288 (= (dynLambda!20842 lambda!153648 (h!55259 (t!356638 (toList!3481 lm!1616)))) (noDuplicateKeys!747 (_2!27978 (h!55259 (t!356638 (toList!3481 lm!1616))))))))

(declare-fun m!5105847 () Bool)

(assert (=> bs!757288 m!5105847))

(assert (=> b!4424909 d!1341502))

(declare-fun b_lambda!143071 () Bool)

(assert (= b_lambda!143037 (or b!4424242 b_lambda!143071)))

(declare-fun bs!757289 () Bool)

(declare-fun d!1341504 () Bool)

(assert (= bs!757289 (and d!1341504 b!4424242)))

(assert (=> bs!757289 (= (dynLambda!20843 lambda!153691 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (contains!12073 lt!1623689 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun m!5105849 () Bool)

(assert (=> bs!757289 m!5105849))

(assert (=> b!4425274 d!1341504))

(declare-fun b_lambda!143073 () Bool)

(assert (= b_lambda!143045 (or b!4424242 b_lambda!143073)))

(declare-fun bs!757290 () Bool)

(declare-fun d!1341506 () Bool)

(assert (= bs!757290 (and d!1341506 b!4424242)))

(assert (=> bs!757290 (= (dynLambda!20843 lambda!153691 (h!55258 (toList!3482 lt!1623693))) (contains!12073 lt!1623689 (_1!27977 (h!55258 (toList!3482 lt!1623693)))))))

(declare-fun m!5105851 () Bool)

(assert (=> bs!757290 m!5105851))

(assert (=> b!4425300 d!1341506))

(declare-fun b_lambda!143075 () Bool)

(assert (= b_lambda!142999 (or d!1340952 b_lambda!143075)))

(declare-fun bs!757291 () Bool)

(declare-fun d!1341508 () Bool)

(assert (= bs!757291 (and d!1341508 d!1340952)))

(assert (=> bs!757291 (= (dynLambda!20842 lambda!153759 (h!55259 (toList!3481 lm!1616))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> bs!757291 m!5103593))

(assert (=> b!4424925 d!1341508))

(declare-fun b_lambda!143077 () Bool)

(assert (= b_lambda!143047 (or d!1340954 b_lambda!143077)))

(declare-fun bs!757292 () Bool)

(declare-fun d!1341510 () Bool)

(assert (= bs!757292 (and d!1341510 d!1340954)))

(assert (=> bs!757292 (= (dynLambda!20842 lambda!153762 (h!55259 (toList!3481 lm!1616))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> bs!757292 m!5103593))

(assert (=> b!4425322 d!1341510))

(declare-fun b_lambda!143079 () Bool)

(assert (= b_lambda!142949 (or b!4424304 b_lambda!143079)))

(declare-fun bs!757293 () Bool)

(declare-fun d!1341512 () Bool)

(assert (= bs!757293 (and d!1341512 b!4424304)))

(assert (=> bs!757293 (= (dynLambda!20843 lambda!153742 (h!55258 (toList!3482 lt!1623532))) (contains!12073 lt!1623791 (_1!27977 (h!55258 (toList!3482 lt!1623532)))))))

(declare-fun m!5105857 () Bool)

(assert (=> bs!757293 m!5105857))

(assert (=> b!4424511 d!1341512))

(declare-fun b_lambda!143081 () Bool)

(assert (= b_lambda!143001 (or d!1340894 b_lambda!143081)))

(declare-fun bs!757294 () Bool)

(declare-fun d!1341516 () Bool)

(assert (= bs!757294 (and d!1341516 d!1340894)))

(assert (=> bs!757294 (= (dynLambda!20843 lambda!153743 (h!55258 (toList!3482 lt!1623532))) (contains!12073 lt!1623787 (_1!27977 (h!55258 (toList!3482 lt!1623532)))))))

(declare-fun m!5105859 () Bool)

(assert (=> bs!757294 m!5105859))

(assert (=> b!4424933 d!1341516))

(declare-fun b_lambda!143083 () Bool)

(assert (= b_lambda!142963 (or b!4424304 b_lambda!143083)))

(declare-fun bs!757295 () Bool)

(declare-fun d!1341518 () Bool)

(assert (= bs!757295 (and d!1341518 b!4424304)))

(assert (=> bs!757295 (= (dynLambda!20843 lambda!153742 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616)))))) (contains!12073 lt!1623791 (_1!27977 (h!55258 (t!356637 (_2!27978 (h!55259 (toList!3481 lm!1616))))))))))

(declare-fun m!5105861 () Bool)

(assert (=> bs!757295 m!5105861))

(assert (=> b!4424631 d!1341518))

(declare-fun b_lambda!143085 () Bool)

(assert (= b_lambda!143019 (or d!1340894 b_lambda!143085)))

(declare-fun bs!757296 () Bool)

(declare-fun d!1341520 () Bool)

(assert (= bs!757296 (and d!1341520 d!1340894)))

(assert (=> bs!757296 (= (dynLambda!20843 lambda!153743 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616))))) (contains!12073 lt!1623787 (_1!27977 (h!55258 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))))

(declare-fun m!5105863 () Bool)

(assert (=> bs!757296 m!5105863))

(assert (=> b!4425074 d!1341520))

(declare-fun b_lambda!143087 () Bool)

(assert (= b_lambda!142991 (or d!1340890 b_lambda!143087)))

(declare-fun bs!757297 () Bool)

(declare-fun d!1341522 () Bool)

(assert (= bs!757297 (and d!1341522 d!1340890)))

(assert (=> bs!757297 (= (dynLambda!20842 lambda!153739 (h!55259 (toList!3481 lm!1616))) (allKeysSameHash!707 (_2!27978 (h!55259 (toList!3481 lm!1616))) (_1!27978 (h!55259 (toList!3481 lm!1616))) hashF!1220))))

(declare-fun m!5105871 () Bool)

(assert (=> bs!757297 m!5105871))

(assert (=> b!4424907 d!1341522))

(declare-fun b_lambda!143089 () Bool)

(assert (= b_lambda!142945 (or d!1340910 b_lambda!143089)))

(declare-fun bs!757298 () Bool)

(declare-fun d!1341526 () Bool)

(assert (= bs!757298 (and d!1341526 d!1340910)))

(assert (=> bs!757298 (= (dynLambda!20842 lambda!153753 (h!55259 (toList!3481 lt!1623534))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lt!1623534)))))))

(assert (=> bs!757298 m!5104067))

(assert (=> b!4424491 d!1341526))

(declare-fun b_lambda!143091 () Bool)

(assert (= b_lambda!142971 (or d!1340906 b_lambda!143091)))

(declare-fun bs!757299 () Bool)

(declare-fun d!1341528 () Bool)

(assert (= bs!757299 (and d!1341528 d!1340906)))

(assert (=> bs!757299 (= (dynLambda!20842 lambda!153750 (h!55259 (toList!3481 lt!1623534))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lt!1623534)))))))

(assert (=> bs!757299 m!5104067))

(assert (=> b!4424766 d!1341528))

(declare-fun b_lambda!143093 () Bool)

(assert (= b_lambda!143011 (or d!1340942 b_lambda!143093)))

(declare-fun bs!757300 () Bool)

(declare-fun d!1341530 () Bool)

(assert (= bs!757300 (and d!1341530 d!1340942)))

(assert (=> bs!757300 (= (dynLambda!20842 lambda!153758 (h!55259 (toList!3481 lm!1616))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 lm!1616)))))))

(assert (=> bs!757300 m!5103593))

(assert (=> b!4425039 d!1341530))

(declare-fun b_lambda!143095 () Bool)

(assert (= b_lambda!142939 (or start!431492 b_lambda!143095)))

(declare-fun bs!757301 () Bool)

(declare-fun d!1341532 () Bool)

(assert (= bs!757301 (and d!1341532 start!431492)))

(assert (=> bs!757301 (= (dynLambda!20842 lambda!153648 (h!55259 (t!356638 (toList!3481 lt!1623528)))) (noDuplicateKeys!747 (_2!27978 (h!55259 (t!356638 (toList!3481 lt!1623528))))))))

(declare-fun m!5105873 () Bool)

(assert (=> bs!757301 m!5105873))

(assert (=> b!4424422 d!1341532))

(declare-fun b_lambda!143097 () Bool)

(assert (= b_lambda!142943 (or d!1340930 b_lambda!143097)))

(declare-fun bs!757302 () Bool)

(declare-fun d!1341534 () Bool)

(assert (= bs!757302 (and d!1341534 d!1340930)))

(assert (=> bs!757302 (= (dynLambda!20842 lambda!153755 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539)))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 (+!1078 lt!1623534 lt!1623539))))))))

(assert (=> bs!757302 m!5104197))

(assert (=> b!4424474 d!1341534))

(declare-fun b_lambda!143099 () Bool)

(assert (= b_lambda!143003 (or start!431492 b_lambda!143099)))

(declare-fun bs!757304 () Bool)

(declare-fun d!1341536 () Bool)

(assert (= bs!757304 (and d!1341536 start!431492)))

(assert (=> bs!757304 (= (dynLambda!20842 lambda!153648 (h!55259 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194))))) (noDuplicateKeys!747 (_2!27978 (h!55259 (toList!3481 (+!1078 lm!1616 (tuple2!49369 hash!366 newBucket!194)))))))))

(declare-fun m!5105875 () Bool)

(assert (=> bs!757304 m!5105875))

(assert (=> b!4424937 d!1341536))

(check-sat (not b_lambda!143061) (not bs!757291) (not b!4424575) (not b!4424839) (not d!1341252) (not b!4424573) (not b!4424767) (not d!1341270) (not b!4424571) (not b_lambda!143053) (not bm!307818) (not b!4424892) (not b_lambda!143075) (not bs!757283) (not b!4424679) (not b_lambda!143081) (not b!4424735) (not bm!307827) (not d!1341188) (not b!4424768) (not d!1341098) (not d!1341412) (not d!1341010) (not b!4424610) (not d!1340994) (not d!1341138) (not b!4424733) (not b!4424630) (not b!4425044) (not b!4425132) (not b!4425345) (not b!4425347) (not b!4425031) (not bm!307819) (not b!4424525) (not b!4424906) (not d!1341048) (not b!4425337) (not bm!307878) (not b_lambda!142981) (not b!4424643) (not b_lambda!143097) (not b!4424864) (not b!4425324) (not b_lambda!143051) (not b!4424431) (not d!1340992) (not d!1341046) (not b!4424579) (not b_lambda!143065) (not d!1341264) (not bm!307816) (not b!4424704) (not d!1341090) (not d!1341462) (not b!4425267) (not b_lambda!143079) (not bm!307841) tp_is_empty!26235 (not bs!757301) (not d!1341118) (not d!1341040) (not b_lambda!143083) (not d!1341348) (not b!4425338) (not b!4424889) (not d!1341084) (not b!4425328) (not b_lambda!143071) (not bs!757296) (not b!4425117) (not d!1341228) (not b!4424942) (not b!4424847) (not b_lambda!143099) (not b!4425265) (not b!4425063) (not d!1341052) (not b!4425131) (not d!1341298) (not b!4425123) (not b!4424506) (not b!4425049) (not b!4424480) (not d!1341218) (not b!4424645) (not b!4424705) (not d!1341314) (not b!4424581) (not b!4424429) (not b!4425359) (not b!4424632) (not b!4425301) (not d!1341220) (not b!4425016) (not b!4424470) (not b!4425083) (not bm!307858) (not b!4424903) (not d!1340996) (not b!4424454) (not b!4424681) (not b!4424939) (not b!4424890) (not b!4424523) (not d!1341464) (not bm!307913) (not bm!307883) (not b!4424456) (not b!4424498) (not bs!757299) (not d!1341080) (not b!4425332) (not b!4425262) (not b!4425271) (not b!4425081) (not b_lambda!143095) (not b!4425119) (not d!1341134) (not b!4425264) (not d!1340982) (not bm!307875) (not b!4425319) (not bm!307859) (not b!4424918) tp_is_empty!26233 (not d!1341454) (not b!4424577) (not bs!757287) (not bm!307843) (not b!4424908) (not b!4424836) (not d!1340968) (not b!4424508) (not b!4424574) (not bm!307903) (not b!4424731) (not b!4425304) (not b!4425343) (not b!4424504) (not bs!757282) (not b!4424682) (not b_lambda!143091) (not b_lambda!142933) (not d!1341200) (not b!4424637) (not d!1341360) (not b!4424477) (not b!4424912) (not bs!757304) (not b!4424580) (not b!4424527) (not d!1341342) (not b!4425051) (not b!4424957) (not b!4425060) (not b!4424512) (not d!1341232) (not b_lambda!143057) (not b!4424626) (not b_lambda!142935) (not b!4425082) (not b!4424702) (not bm!307904) (not b!4424634) (not b!4425321) (not b!4424423) (not d!1341176) (not d!1341014) (not b!4425273) (not bm!307899) (not bm!307836) (not b!4425348) (not d!1341306) (not b!4424453) (not bm!307884) (not bs!757290) (not b!4425121) (not b!4424639) (not d!1341190) (not b!4424751) (not b_lambda!143063) (not b!4424430) (not b!4425258) (not d!1341422) (not b!4424576) (not b!4425017) (not b!4424857) (not d!1341458) (not b!4424947) (not d!1340972) (not b!4425323) (not b_lambda!143073) (not d!1341244) (not bs!757297) (not b_lambda!143049) (not b!4425078) (not b!4424677) (not b!4424455) (not b!4425128) (not d!1341180) (not b_lambda!143021) (not b!4424683) (not bs!757281) (not b!4425325) (not b!4424479) (not b!4425125) (not b!4425282) (not b!4425048) (not b!4425277) (not bs!757285) (not b!4425061) (not b!4424633) (not b!4424624) (not b_lambda!142937) (not b!4424478) (not b!4425245) (not bs!757302) (not d!1341106) (not d!1341086) (not d!1341130) (not d!1341324) (not b!4425256) (not d!1341136) (not b!4425315) (not b!4424526) (not b_lambda!142959) (not b!4425341) (not d!1341204) (not b!4425272) (not b!4424467) (not d!1341332) (not bm!307814) (not bm!307900) (not b!4424641) (not b!4424457) (not b_lambda!143085) (not bm!307910) (not b!4425246) (not b!4424756) (not b!4424578) (not b!4424934) (not b!4425247) (not b!4424932) (not b!4424469) (not b!4425269) (not b!4425320) (not b_lambda!143069) (not b!4425314) (not b!4424546) (not b!4425064) (not b!4424842) (not bm!307882) (not b!4425075) (not b!4425351) (not b_lambda!143067) (not d!1341280) (not b!4424899) (not bs!757280) (not b!4425283) (not d!1341020) (not b!4424938) (not b!4425305) (not b!4424703) (not b_lambda!143055) (not b!4424505) (not bm!307824) (not b!4424848) (not bs!757300) (not b!4424640) (not b_lambda!143089) (not b!4424846) (not b!4425330) (not bs!757288) (not d!1341416) (not b!4424676) (not b!4424628) (not d!1341266) (not d!1341262) (not d!1341054) (not b!4424845) (not bm!307914) (not b!4425255) (not b!4424492) (not bs!757284) (not bm!307815) (not bs!757295) (not d!1341426) (not b!4425339) (not bm!307825) (not b!4425360) (not bm!307823) (not b!4424770) (not b!4424879) (not b!4425130) (not b!4425080) (not d!1341296) (not bm!307817) (not b!4425253) (not d!1341334) (not b!4425266) (not b!4425313) (not d!1341318) (not b!4425260) (not d!1341068) (not d!1341186) (not d!1341330) (not b!4425335) (not b!4424926) (not d!1341034) (not d!1341030) (not d!1341100) (not b!4425280) (not b!4424730) (not b!4425153) (not b!4425030) (not d!1341452) (not d!1340986) (not b!4425018) (not b!4425249) (not b_lambda!143093) (not b!4424940) (not bm!307909) (not b!4424936) (not d!1341032) (not b!4424528) (not b!4425241) (not bm!307901) (not b!4425243) (not b!4424567) (not b!4425103) (not bs!757292) (not b!4425275) (not b!4424675) (not b!4425124) (not b!4424706) (not bm!307881) (not b!4424891) (not bs!757294) (not b!4425058) (not b!4424737) (not b!4425250) (not bs!757298) (not b!4424881) (not b!4425135) (not d!1341414) (not bm!307842) (not bs!757286) (not b!4425281) (not b!4425257) (not bs!757293) (not b!4424472) (not b!4425126) (not b!4425062) (not bm!307898) (not d!1341320) (not b!4425344) (not b_lambda!143017) (not b!4425040) (not bm!307860) (not b_lambda!143077) (not b!4425326) (not b!4425263) (not d!1341096) (not b!4424551) (not b!4424910) (not b!4424582) (not b_lambda!143087) (not b!4424880) (not bs!757289) (not b!4424771) (not b!4424490) (not b_lambda!143059) (not d!1341446) (not b!4425331) (not b!4424769) (not b!4424618) (not b!4425317) (not b!4425154) (not b!4424635) (not b!4424944) (not d!1340988) (not b!4424958) (not d!1341050) (not b!4424468) (not b!4425033) (not d!1341006) (not b!4425361) (not b!4424481) (not d!1341128) (not b!4424475) (not bm!307902))
(check-sat)
