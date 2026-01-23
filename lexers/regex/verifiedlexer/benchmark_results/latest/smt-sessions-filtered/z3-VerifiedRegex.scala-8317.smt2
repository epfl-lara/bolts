; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432484 () Bool)

(assert start!432484)

(declare-fun b!4429334 () Bool)

(declare-datatypes ((Unit!82589 0))(
  ( (Unit!82590) )
))
(declare-fun e!2757986 () Unit!82589)

(declare-fun Unit!82591 () Unit!82589)

(assert (=> b!4429334 (= e!2757986 Unit!82591)))

(declare-datatypes ((K!10990 0))(
  ( (K!10991 (val!17063 Int)) )
))
(declare-fun key!3717 () K!10990)

(declare-datatypes ((V!11236 0))(
  ( (V!11237 (val!17064 Int)) )
))
(declare-datatypes ((tuple2!49446 0))(
  ( (tuple2!49447 (_1!28017 K!10990) (_2!28017 V!11236)) )
))
(declare-datatypes ((List!49753 0))(
  ( (Nil!49629) (Cons!49629 (h!55326 tuple2!49446) (t!356691 List!49753)) )
))
(declare-datatypes ((tuple2!49448 0))(
  ( (tuple2!49449 (_1!28018 (_ BitVec 64)) (_2!28018 List!49753)) )
))
(declare-datatypes ((List!49754 0))(
  ( (Nil!49630) (Cons!49630 (h!55327 tuple2!49448) (t!356692 List!49754)) )
))
(declare-datatypes ((ListLongMap!2171 0))(
  ( (ListLongMap!2172 (toList!3521 List!49754)) )
))
(declare-fun lm!1616 () ListLongMap!2171)

(declare-datatypes ((Hashable!5161 0))(
  ( (HashableExt!5160 (__x!30864 Int)) )
))
(declare-fun hashF!1220 () Hashable!5161)

(declare-fun lt!1628749 () Unit!82589)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!54 (ListLongMap!2171 K!10990 Hashable!5161) Unit!82589)

(assert (=> b!4429334 (= lt!1628749 (lemmaExtractTailMapContainsThenExtractMapDoes!54 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4429334 false))

(declare-fun b!4429335 () Bool)

(declare-fun res!1831824 () Bool)

(declare-fun e!2757982 () Bool)

(assert (=> b!4429335 (=> (not res!1831824) (not e!2757982))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2180 (Hashable!5161 K!10990) (_ BitVec 64))

(assert (=> b!4429335 (= res!1831824 (= (hash!2180 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429336 () Bool)

(declare-fun res!1831820 () Bool)

(assert (=> b!4429336 (=> (not res!1831820) (not e!2757982))))

(declare-fun newBucket!194 () List!49753)

(declare-fun allKeysSameHash!727 (List!49753 (_ BitVec 64) Hashable!5161) Bool)

(assert (=> b!4429336 (= res!1831820 (allKeysSameHash!727 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429337 () Bool)

(declare-fun tp_is_empty!26315 () Bool)

(declare-fun tp_is_empty!26313 () Bool)

(declare-fun tp!1333418 () Bool)

(declare-fun e!2757976 () Bool)

(assert (=> b!4429337 (= e!2757976 (and tp_is_empty!26315 tp_is_empty!26313 tp!1333418))))

(declare-fun res!1831811 () Bool)

(assert (=> start!432484 (=> (not res!1831811) (not e!2757982))))

(declare-fun lambda!154914 () Int)

(declare-fun forall!9594 (List!49754 Int) Bool)

(assert (=> start!432484 (= res!1831811 (forall!9594 (toList!3521 lm!1616) lambda!154914))))

(assert (=> start!432484 e!2757982))

(assert (=> start!432484 tp_is_empty!26313))

(assert (=> start!432484 tp_is_empty!26315))

(assert (=> start!432484 e!2757976))

(declare-fun e!2757979 () Bool)

(declare-fun inv!65176 (ListLongMap!2171) Bool)

(assert (=> start!432484 (and (inv!65176 lm!1616) e!2757979)))

(assert (=> start!432484 true))

(declare-fun b!4429338 () Bool)

(declare-fun e!2757981 () Bool)

(assert (=> b!4429338 (= e!2757982 e!2757981)))

(declare-fun res!1831812 () Bool)

(assert (=> b!4429338 (=> (not res!1831812) (not e!2757981))))

(declare-datatypes ((ListMap!2765 0))(
  ( (ListMap!2766 (toList!3522 List!49753)) )
))
(declare-fun lt!1628752 () ListMap!2765)

(declare-fun contains!12154 (ListMap!2765 K!10990) Bool)

(assert (=> b!4429338 (= res!1831812 (not (contains!12154 lt!1628752 key!3717)))))

(declare-fun extractMap!828 (List!49754) ListMap!2765)

(assert (=> b!4429338 (= lt!1628752 (extractMap!828 (toList!3521 lm!1616)))))

(declare-fun b!4429339 () Bool)

(declare-fun e!2757985 () Bool)

(declare-fun e!2757974 () Bool)

(assert (=> b!4429339 (= e!2757985 e!2757974)))

(declare-fun res!1831821 () Bool)

(assert (=> b!4429339 (=> res!1831821 e!2757974)))

(declare-fun lt!1628748 () ListMap!2765)

(declare-fun eq!425 (ListMap!2765 ListMap!2765) Bool)

(assert (=> b!4429339 (= res!1831821 (not (eq!425 lt!1628752 lt!1628748)))))

(declare-fun lt!1628762 () ListMap!2765)

(declare-fun addToMapMapFromBucket!404 (List!49753 ListMap!2765) ListMap!2765)

(assert (=> b!4429339 (= lt!1628748 (addToMapMapFromBucket!404 (_2!28018 (h!55327 (toList!3521 lm!1616))) lt!1628762))))

(declare-fun b!4429340 () Bool)

(declare-fun res!1831825 () Bool)

(declare-fun e!2757978 () Bool)

(assert (=> b!4429340 (=> (not res!1831825) (not e!2757978))))

(declare-fun noDuplicateKeys!767 (List!49753) Bool)

(assert (=> b!4429340 (= res!1831825 (noDuplicateKeys!767 newBucket!194))))

(declare-fun b!4429341 () Bool)

(declare-fun Unit!82592 () Unit!82589)

(assert (=> b!4429341 (= e!2757986 Unit!82592)))

(declare-fun b!4429342 () Bool)

(declare-fun e!2757984 () Bool)

(assert (=> b!4429342 (= e!2757978 (not e!2757984))))

(declare-fun res!1831814 () Bool)

(assert (=> b!4429342 (=> res!1831814 e!2757984)))

(declare-fun lt!1628758 () ListLongMap!2171)

(assert (=> b!4429342 (= res!1831814 (not (forall!9594 (toList!3521 lt!1628758) lambda!154914)))))

(assert (=> b!4429342 (forall!9594 (toList!3521 lt!1628758) lambda!154914)))

(declare-fun lt!1628744 () tuple2!49448)

(declare-fun +!1118 (ListLongMap!2171 tuple2!49448) ListLongMap!2171)

(assert (=> b!4429342 (= lt!1628758 (+!1118 lm!1616 lt!1628744))))

(assert (=> b!4429342 (= lt!1628744 (tuple2!49449 hash!366 newBucket!194))))

(declare-fun lt!1628763 () Unit!82589)

(declare-fun addValidProp!411 (ListLongMap!2171 Int (_ BitVec 64) List!49753) Unit!82589)

(assert (=> b!4429342 (= lt!1628763 (addValidProp!411 lm!1616 lambda!154914 hash!366 newBucket!194))))

(declare-fun b!4429343 () Bool)

(assert (=> b!4429343 (= e!2757981 e!2757978)))

(declare-fun res!1831823 () Bool)

(assert (=> b!4429343 (=> (not res!1831823) (not e!2757978))))

(declare-fun e!2757980 () Bool)

(assert (=> b!4429343 (= res!1831823 e!2757980)))

(declare-fun res!1831817 () Bool)

(assert (=> b!4429343 (=> res!1831817 e!2757980)))

(declare-fun e!2757975 () Bool)

(assert (=> b!4429343 (= res!1831817 e!2757975)))

(declare-fun res!1831810 () Bool)

(assert (=> b!4429343 (=> (not res!1831810) (not e!2757975))))

(declare-fun lt!1628760 () Bool)

(assert (=> b!4429343 (= res!1831810 lt!1628760)))

(declare-fun contains!12155 (ListLongMap!2171 (_ BitVec 64)) Bool)

(assert (=> b!4429343 (= lt!1628760 (contains!12155 lm!1616 hash!366))))

(declare-fun newValue!93 () V!11236)

(declare-fun b!4429344 () Bool)

(assert (=> b!4429344 (= e!2757980 (and (not lt!1628760) (= newBucket!194 (Cons!49629 (tuple2!49447 key!3717 newValue!93) Nil!49629))))))

(declare-fun b!4429345 () Bool)

(declare-fun e!2757977 () Bool)

(declare-fun e!2757983 () Bool)

(assert (=> b!4429345 (= e!2757977 e!2757983)))

(declare-fun res!1831816 () Bool)

(assert (=> b!4429345 (=> res!1831816 e!2757983)))

(assert (=> b!4429345 (= res!1831816 (not (noDuplicateKeys!767 (_2!28018 (h!55327 (toList!3521 lm!1616))))))))

(declare-fun lt!1628761 () tuple2!49446)

(declare-fun lt!1628746 () ListMap!2765)

(declare-fun +!1119 (ListMap!2765 tuple2!49446) ListMap!2765)

(assert (=> b!4429345 (eq!425 (+!1119 lt!1628752 lt!1628761) lt!1628746)))

(declare-fun lt!1628754 () Unit!82589)

(declare-fun lemmaAddToEqMapsPreservesEq!36 (ListMap!2765 ListMap!2765 K!10990 V!11236) Unit!82589)

(assert (=> b!4429345 (= lt!1628754 (lemmaAddToEqMapsPreservesEq!36 lt!1628752 lt!1628748 key!3717 newValue!93))))

(declare-fun lt!1628747 () ListMap!2765)

(assert (=> b!4429345 (eq!425 lt!1628747 lt!1628746)))

(assert (=> b!4429345 (= lt!1628746 (+!1119 lt!1628748 lt!1628761))))

(declare-fun lt!1628750 () ListMap!2765)

(assert (=> b!4429345 (= lt!1628747 (addToMapMapFromBucket!404 (_2!28018 (h!55327 (toList!3521 lm!1616))) lt!1628750))))

(declare-fun lt!1628756 () Unit!82589)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!196 (ListMap!2765 K!10990 V!11236 List!49753) Unit!82589)

(assert (=> b!4429345 (= lt!1628756 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!196 lt!1628762 key!3717 newValue!93 (_2!28018 (h!55327 (toList!3521 lm!1616)))))))

(declare-fun b!4429346 () Bool)

(assert (=> b!4429346 (= e!2757983 true)))

(declare-fun lt!1628751 () Bool)

(declare-fun lt!1628745 () ListMap!2765)

(assert (=> b!4429346 (= lt!1628751 (eq!425 lt!1628750 lt!1628745))))

(declare-fun b!4429347 () Bool)

(declare-fun res!1831822 () Bool)

(assert (=> b!4429347 (=> (not res!1831822) (not e!2757978))))

(assert (=> b!4429347 (= res!1831822 (forall!9594 (toList!3521 lm!1616) lambda!154914))))

(declare-fun b!4429348 () Bool)

(declare-fun apply!11619 (ListLongMap!2171 (_ BitVec 64)) List!49753)

(assert (=> b!4429348 (= e!2757975 (= newBucket!194 (Cons!49629 (tuple2!49447 key!3717 newValue!93) (apply!11619 lm!1616 hash!366))))))

(declare-fun b!4429349 () Bool)

(assert (=> b!4429349 (= e!2757984 e!2757985)))

(declare-fun res!1831813 () Bool)

(assert (=> b!4429349 (=> res!1831813 e!2757985)))

(declare-fun head!9246 (ListLongMap!2171) tuple2!49448)

(assert (=> b!4429349 (= res!1831813 (= (head!9246 lm!1616) lt!1628744))))

(assert (=> b!4429349 (eq!425 lt!1628745 lt!1628750)))

(assert (=> b!4429349 (= lt!1628750 (+!1119 lt!1628762 lt!1628761))))

(assert (=> b!4429349 (= lt!1628761 (tuple2!49447 key!3717 newValue!93))))

(declare-fun lt!1628757 () ListLongMap!2171)

(assert (=> b!4429349 (= lt!1628762 (extractMap!828 (toList!3521 lt!1628757)))))

(assert (=> b!4429349 (= lt!1628745 (extractMap!828 (toList!3521 (+!1118 lt!1628757 lt!1628744))))))

(declare-fun lt!1628759 () Unit!82589)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!141 (ListLongMap!2171 (_ BitVec 64) List!49753 K!10990 V!11236 Hashable!5161) Unit!82589)

(assert (=> b!4429349 (= lt!1628759 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!141 lt!1628757 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7306 (ListLongMap!2171) ListLongMap!2171)

(assert (=> b!4429349 (= lt!1628757 (tail!7306 lm!1616))))

(declare-fun lt!1628753 () Unit!82589)

(assert (=> b!4429349 (= lt!1628753 e!2757986)))

(declare-fun c!753989 () Bool)

(declare-fun tail!7307 (List!49754) List!49754)

(assert (=> b!4429349 (= c!753989 (contains!12154 (extractMap!828 (tail!7307 (toList!3521 lm!1616))) key!3717))))

(declare-fun b!4429350 () Bool)

(declare-fun res!1831818 () Bool)

(assert (=> b!4429350 (=> res!1831818 e!2757984)))

(get-info :version)

(assert (=> b!4429350 (= res!1831818 (or (and ((_ is Cons!49630) (toList!3521 lm!1616)) (= (_1!28018 (h!55327 (toList!3521 lm!1616))) hash!366)) (not ((_ is Cons!49630) (toList!3521 lm!1616))) (= (_1!28018 (h!55327 (toList!3521 lm!1616))) hash!366)))))

(declare-fun b!4429351 () Bool)

(assert (=> b!4429351 (= e!2757974 e!2757977)))

(declare-fun res!1831819 () Bool)

(assert (=> b!4429351 (=> res!1831819 e!2757977)))

(declare-fun containsKey!1154 (List!49753 K!10990) Bool)

(assert (=> b!4429351 (= res!1831819 (containsKey!1154 (_2!28018 (h!55327 (toList!3521 lm!1616))) key!3717))))

(assert (=> b!4429351 (not (containsKey!1154 (apply!11619 lm!1616 (_1!28018 (h!55327 (toList!3521 lm!1616)))) key!3717))))

(declare-fun lt!1628755 () Unit!82589)

(declare-fun lemmaNotSameHashThenCannotContainKey!146 (ListLongMap!2171 K!10990 (_ BitVec 64) Hashable!5161) Unit!82589)

(assert (=> b!4429351 (= lt!1628755 (lemmaNotSameHashThenCannotContainKey!146 lm!1616 key!3717 (_1!28018 (h!55327 (toList!3521 lm!1616))) hashF!1220))))

(declare-fun b!4429352 () Bool)

(declare-fun res!1831815 () Bool)

(assert (=> b!4429352 (=> (not res!1831815) (not e!2757982))))

(declare-fun allKeysSameHashInMap!873 (ListLongMap!2171 Hashable!5161) Bool)

(assert (=> b!4429352 (= res!1831815 (allKeysSameHashInMap!873 lm!1616 hashF!1220))))

(declare-fun b!4429353 () Bool)

(declare-fun tp!1333417 () Bool)

(assert (=> b!4429353 (= e!2757979 tp!1333417)))

(assert (= (and start!432484 res!1831811) b!4429352))

(assert (= (and b!4429352 res!1831815) b!4429335))

(assert (= (and b!4429335 res!1831824) b!4429336))

(assert (= (and b!4429336 res!1831820) b!4429338))

(assert (= (and b!4429338 res!1831812) b!4429343))

(assert (= (and b!4429343 res!1831810) b!4429348))

(assert (= (and b!4429343 (not res!1831817)) b!4429344))

(assert (= (and b!4429343 res!1831823) b!4429340))

(assert (= (and b!4429340 res!1831825) b!4429347))

(assert (= (and b!4429347 res!1831822) b!4429342))

(assert (= (and b!4429342 (not res!1831814)) b!4429350))

(assert (= (and b!4429350 (not res!1831818)) b!4429349))

(assert (= (and b!4429349 c!753989) b!4429334))

(assert (= (and b!4429349 (not c!753989)) b!4429341))

(assert (= (and b!4429349 (not res!1831813)) b!4429339))

(assert (= (and b!4429339 (not res!1831821)) b!4429351))

(assert (= (and b!4429351 (not res!1831819)) b!4429345))

(assert (= (and b!4429345 (not res!1831816)) b!4429346))

(assert (= (and start!432484 ((_ is Cons!49629) newBucket!194)) b!4429337))

(assert (= start!432484 b!4429353))

(declare-fun m!5113471 () Bool)

(assert (=> b!4429334 m!5113471))

(declare-fun m!5113473 () Bool)

(assert (=> b!4429339 m!5113473))

(declare-fun m!5113475 () Bool)

(assert (=> b!4429339 m!5113475))

(declare-fun m!5113477 () Bool)

(assert (=> b!4429347 m!5113477))

(declare-fun m!5113479 () Bool)

(assert (=> b!4429348 m!5113479))

(declare-fun m!5113481 () Bool)

(assert (=> b!4429349 m!5113481))

(declare-fun m!5113483 () Bool)

(assert (=> b!4429349 m!5113483))

(declare-fun m!5113485 () Bool)

(assert (=> b!4429349 m!5113485))

(declare-fun m!5113487 () Bool)

(assert (=> b!4429349 m!5113487))

(declare-fun m!5113489 () Bool)

(assert (=> b!4429349 m!5113489))

(declare-fun m!5113491 () Bool)

(assert (=> b!4429349 m!5113491))

(declare-fun m!5113493 () Bool)

(assert (=> b!4429349 m!5113493))

(declare-fun m!5113495 () Bool)

(assert (=> b!4429349 m!5113495))

(declare-fun m!5113497 () Bool)

(assert (=> b!4429349 m!5113497))

(assert (=> b!4429349 m!5113481))

(assert (=> b!4429349 m!5113483))

(declare-fun m!5113499 () Bool)

(assert (=> b!4429349 m!5113499))

(declare-fun m!5113501 () Bool)

(assert (=> b!4429349 m!5113501))

(declare-fun m!5113503 () Bool)

(assert (=> b!4429340 m!5113503))

(assert (=> start!432484 m!5113477))

(declare-fun m!5113505 () Bool)

(assert (=> start!432484 m!5113505))

(declare-fun m!5113507 () Bool)

(assert (=> b!4429336 m!5113507))

(declare-fun m!5113509 () Bool)

(assert (=> b!4429345 m!5113509))

(declare-fun m!5113511 () Bool)

(assert (=> b!4429345 m!5113511))

(declare-fun m!5113513 () Bool)

(assert (=> b!4429345 m!5113513))

(declare-fun m!5113515 () Bool)

(assert (=> b!4429345 m!5113515))

(assert (=> b!4429345 m!5113509))

(declare-fun m!5113517 () Bool)

(assert (=> b!4429345 m!5113517))

(declare-fun m!5113519 () Bool)

(assert (=> b!4429345 m!5113519))

(declare-fun m!5113521 () Bool)

(assert (=> b!4429345 m!5113521))

(declare-fun m!5113523 () Bool)

(assert (=> b!4429345 m!5113523))

(declare-fun m!5113525 () Bool)

(assert (=> b!4429343 m!5113525))

(declare-fun m!5113527 () Bool)

(assert (=> b!4429335 m!5113527))

(declare-fun m!5113529 () Bool)

(assert (=> b!4429338 m!5113529))

(declare-fun m!5113531 () Bool)

(assert (=> b!4429338 m!5113531))

(declare-fun m!5113533 () Bool)

(assert (=> b!4429346 m!5113533))

(declare-fun m!5113535 () Bool)

(assert (=> b!4429352 m!5113535))

(declare-fun m!5113537 () Bool)

(assert (=> b!4429351 m!5113537))

(declare-fun m!5113539 () Bool)

(assert (=> b!4429351 m!5113539))

(assert (=> b!4429351 m!5113539))

(declare-fun m!5113541 () Bool)

(assert (=> b!4429351 m!5113541))

(declare-fun m!5113543 () Bool)

(assert (=> b!4429351 m!5113543))

(declare-fun m!5113545 () Bool)

(assert (=> b!4429342 m!5113545))

(assert (=> b!4429342 m!5113545))

(declare-fun m!5113547 () Bool)

(assert (=> b!4429342 m!5113547))

(declare-fun m!5113549 () Bool)

(assert (=> b!4429342 m!5113549))

(check-sat (not b!4429337) (not b!4429351) (not b!4429348) (not b!4429335) (not b!4429342) (not b!4429349) (not b!4429343) (not b!4429339) (not b!4429345) (not b!4429353) tp_is_empty!26315 (not b!4429340) (not b!4429336) (not b!4429352) (not b!4429347) (not start!432484) (not b!4429346) (not b!4429334) (not b!4429338) tp_is_empty!26313)
(check-sat)
