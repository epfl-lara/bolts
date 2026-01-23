; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431156 () Bool)

(assert start!431156)

(declare-fun b!4422193 () Bool)

(declare-fun e!2753453 () Bool)

(declare-fun e!2753450 () Bool)

(assert (=> b!4422193 (= e!2753453 e!2753450)))

(declare-fun res!1827773 () Bool)

(assert (=> b!4422193 (=> res!1827773 e!2753450)))

(declare-datatypes ((V!11161 0))(
  ( (V!11162 (val!17003 Int)) )
))
(declare-datatypes ((K!10915 0))(
  ( (K!10916 (val!17004 Int)) )
))
(declare-datatypes ((tuple2!49326 0))(
  ( (tuple2!49327 (_1!27957 K!10915) (_2!27957 V!11161)) )
))
(declare-datatypes ((List!49676 0))(
  ( (Nil!49552) (Cons!49552 (h!55231 tuple2!49326) (t!356614 List!49676)) )
))
(declare-datatypes ((tuple2!49328 0))(
  ( (tuple2!49329 (_1!27958 (_ BitVec 64)) (_2!27958 List!49676)) )
))
(declare-datatypes ((List!49677 0))(
  ( (Nil!49553) (Cons!49553 (h!55232 tuple2!49328) (t!356615 List!49677)) )
))
(declare-datatypes ((ListLongMap!2111 0))(
  ( (ListLongMap!2112 (toList!3461 List!49677)) )
))
(declare-fun lm!1616 () ListLongMap!2111)

(declare-fun lt!1621987 () tuple2!49328)

(declare-fun head!9198 (ListLongMap!2111) tuple2!49328)

(assert (=> b!4422193 (= res!1827773 (= (head!9198 lm!1616) lt!1621987))))

(declare-fun key!3717 () K!10915)

(declare-datatypes ((ListMap!2705 0))(
  ( (ListMap!2706 (toList!3462 List!49676)) )
))
(declare-fun lt!1621985 () ListMap!2705)

(declare-fun newValue!93 () V!11161)

(declare-fun lt!1621979 () ListMap!2705)

(declare-fun eq!395 (ListMap!2705 ListMap!2705) Bool)

(declare-fun +!1058 (ListMap!2705 tuple2!49326) ListMap!2705)

(assert (=> b!4422193 (eq!395 lt!1621979 (+!1058 lt!1621985 (tuple2!49327 key!3717 newValue!93)))))

(declare-fun lt!1621980 () ListLongMap!2111)

(declare-fun extractMap!798 (List!49677) ListMap!2705)

(assert (=> b!4422193 (= lt!1621985 (extractMap!798 (toList!3461 lt!1621980)))))

(declare-fun +!1059 (ListLongMap!2111 tuple2!49328) ListLongMap!2111)

(assert (=> b!4422193 (= lt!1621979 (extractMap!798 (toList!3461 (+!1059 lt!1621980 lt!1621987))))))

(declare-fun newBucket!194 () List!49676)

(declare-datatypes ((Unit!81453 0))(
  ( (Unit!81454) )
))
(declare-fun lt!1621984 () Unit!81453)

(declare-datatypes ((Hashable!5131 0))(
  ( (HashableExt!5130 (__x!30834 Int)) )
))
(declare-fun hashF!1220 () Hashable!5131)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!111 (ListLongMap!2111 (_ BitVec 64) List!49676 K!10915 V!11161 Hashable!5131) Unit!81453)

(assert (=> b!4422193 (= lt!1621984 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!111 lt!1621980 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7246 (ListLongMap!2111) ListLongMap!2111)

(assert (=> b!4422193 (= lt!1621980 (tail!7246 lm!1616))))

(declare-fun lt!1621982 () Unit!81453)

(declare-fun e!2753454 () Unit!81453)

(assert (=> b!4422193 (= lt!1621982 e!2753454)))

(declare-fun c!752733 () Bool)

(declare-fun contains!12041 (ListMap!2705 K!10915) Bool)

(declare-fun tail!7247 (List!49677) List!49677)

(assert (=> b!4422193 (= c!752733 (contains!12041 (extractMap!798 (tail!7247 (toList!3461 lm!1616))) key!3717))))

(declare-fun b!4422194 () Bool)

(declare-fun e!2753457 () Bool)

(declare-fun e!2753456 () Bool)

(assert (=> b!4422194 (= e!2753457 e!2753456)))

(declare-fun res!1827768 () Bool)

(assert (=> b!4422194 (=> (not res!1827768) (not e!2753456))))

(declare-fun lt!1621978 () (_ BitVec 64))

(assert (=> b!4422194 (= res!1827768 (= lt!1621978 hash!366))))

(declare-fun hash!2084 (Hashable!5131 K!10915) (_ BitVec 64))

(assert (=> b!4422194 (= lt!1621978 (hash!2084 hashF!1220 key!3717))))

(declare-fun tp_is_empty!26193 () Bool)

(declare-fun b!4422195 () Bool)

(declare-fun e!2753458 () Bool)

(declare-fun tp_is_empty!26195 () Bool)

(declare-fun tp!1333052 () Bool)

(assert (=> b!4422195 (= e!2753458 (and tp_is_empty!26195 tp_is_empty!26193 tp!1333052))))

(declare-fun res!1827765 () Bool)

(assert (=> start!431156 (=> (not res!1827765) (not e!2753457))))

(declare-fun lambda!153224 () Int)

(declare-fun forall!9540 (List!49677 Int) Bool)

(assert (=> start!431156 (= res!1827765 (forall!9540 (toList!3461 lm!1616) lambda!153224))))

(assert (=> start!431156 e!2753457))

(assert (=> start!431156 tp_is_empty!26193))

(assert (=> start!431156 tp_is_empty!26195))

(assert (=> start!431156 e!2753458))

(declare-fun e!2753455 () Bool)

(declare-fun inv!65101 (ListLongMap!2111) Bool)

(assert (=> start!431156 (and (inv!65101 lm!1616) e!2753455)))

(assert (=> start!431156 true))

(declare-fun b!4422196 () Bool)

(declare-fun res!1827759 () Bool)

(assert (=> b!4422196 (=> res!1827759 e!2753450)))

(declare-fun lt!1621986 () ListMap!2705)

(declare-fun addToMapMapFromBucket!374 (List!49676 ListMap!2705) ListMap!2705)

(assert (=> b!4422196 (= res!1827759 (not (eq!395 lt!1621986 (addToMapMapFromBucket!374 (_2!27958 (h!55232 (toList!3461 lm!1616))) lt!1621985))))))

(declare-fun b!4422197 () Bool)

(declare-fun res!1827763 () Bool)

(assert (=> b!4422197 (=> res!1827763 e!2753450)))

(assert (=> b!4422197 (= res!1827763 (= (_1!27958 (h!55232 (toList!3461 lm!1616))) lt!1621978))))

(declare-fun b!4422198 () Bool)

(declare-fun e!2753449 () Bool)

(assert (=> b!4422198 (= e!2753449 (not e!2753453))))

(declare-fun res!1827769 () Bool)

(assert (=> b!4422198 (=> res!1827769 e!2753453)))

(declare-fun lt!1621981 () ListLongMap!2111)

(assert (=> b!4422198 (= res!1827769 (not (forall!9540 (toList!3461 lt!1621981) lambda!153224)))))

(assert (=> b!4422198 (forall!9540 (toList!3461 lt!1621981) lambda!153224)))

(assert (=> b!4422198 (= lt!1621981 (+!1059 lm!1616 lt!1621987))))

(assert (=> b!4422198 (= lt!1621987 (tuple2!49329 hash!366 newBucket!194))))

(declare-fun lt!1621988 () Unit!81453)

(declare-fun addValidProp!381 (ListLongMap!2111 Int (_ BitVec 64) List!49676) Unit!81453)

(assert (=> b!4422198 (= lt!1621988 (addValidProp!381 lm!1616 lambda!153224 hash!366 newBucket!194))))

(declare-fun b!4422199 () Bool)

(declare-fun e!2753452 () Bool)

(assert (=> b!4422199 (= e!2753452 e!2753449)))

(declare-fun res!1827758 () Bool)

(assert (=> b!4422199 (=> (not res!1827758) (not e!2753449))))

(declare-fun e!2753448 () Bool)

(assert (=> b!4422199 (= res!1827758 e!2753448)))

(declare-fun res!1827770 () Bool)

(assert (=> b!4422199 (=> res!1827770 e!2753448)))

(declare-fun e!2753451 () Bool)

(assert (=> b!4422199 (= res!1827770 e!2753451)))

(declare-fun res!1827772 () Bool)

(assert (=> b!4422199 (=> (not res!1827772) (not e!2753451))))

(declare-fun lt!1621983 () Bool)

(assert (=> b!4422199 (= res!1827772 lt!1621983)))

(declare-fun contains!12042 (ListLongMap!2111 (_ BitVec 64)) Bool)

(assert (=> b!4422199 (= lt!1621983 (contains!12042 lm!1616 hash!366))))

(declare-fun b!4422200 () Bool)

(declare-fun res!1827771 () Bool)

(assert (=> b!4422200 (=> res!1827771 e!2753450)))

(assert (=> b!4422200 (= res!1827771 (not (forall!9540 (toList!3461 lm!1616) lambda!153224)))))

(declare-fun b!4422201 () Bool)

(assert (=> b!4422201 (= e!2753456 e!2753452)))

(declare-fun res!1827760 () Bool)

(assert (=> b!4422201 (=> (not res!1827760) (not e!2753452))))

(assert (=> b!4422201 (= res!1827760 (not (contains!12041 lt!1621986 key!3717)))))

(assert (=> b!4422201 (= lt!1621986 (extractMap!798 (toList!3461 lm!1616)))))

(declare-fun b!4422202 () Bool)

(declare-fun apply!11589 (ListLongMap!2111 (_ BitVec 64)) List!49676)

(assert (=> b!4422202 (= e!2753451 (= newBucket!194 (Cons!49552 (tuple2!49327 key!3717 newValue!93) (apply!11589 lm!1616 hash!366))))))

(declare-fun b!4422203 () Bool)

(declare-fun res!1827762 () Bool)

(assert (=> b!4422203 (=> res!1827762 e!2753453)))

(get-info :version)

(assert (=> b!4422203 (= res!1827762 (or (and ((_ is Cons!49553) (toList!3461 lm!1616)) (= (_1!27958 (h!55232 (toList!3461 lm!1616))) hash!366)) (not ((_ is Cons!49553) (toList!3461 lm!1616))) (= (_1!27958 (h!55232 (toList!3461 lm!1616))) hash!366)))))

(declare-fun b!4422204 () Bool)

(declare-fun Unit!81455 () Unit!81453)

(assert (=> b!4422204 (= e!2753454 Unit!81455)))

(declare-fun b!4422205 () Bool)

(declare-fun res!1827761 () Bool)

(assert (=> b!4422205 (=> res!1827761 e!2753450)))

(assert (=> b!4422205 (= res!1827761 (not (contains!12042 lm!1616 (_1!27958 (h!55232 (toList!3461 lm!1616))))))))

(declare-fun b!4422206 () Bool)

(declare-fun res!1827764 () Bool)

(assert (=> b!4422206 (=> (not res!1827764) (not e!2753449))))

(declare-fun noDuplicateKeys!737 (List!49676) Bool)

(assert (=> b!4422206 (= res!1827764 (noDuplicateKeys!737 newBucket!194))))

(declare-fun b!4422207 () Bool)

(declare-fun res!1827766 () Bool)

(assert (=> b!4422207 (=> (not res!1827766) (not e!2753456))))

(declare-fun allKeysSameHash!697 (List!49676 (_ BitVec 64) Hashable!5131) Bool)

(assert (=> b!4422207 (= res!1827766 (allKeysSameHash!697 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4422208 () Bool)

(assert (=> b!4422208 (= e!2753448 (and (not lt!1621983) (= newBucket!194 (Cons!49552 (tuple2!49327 key!3717 newValue!93) Nil!49552))))))

(declare-fun b!4422209 () Bool)

(declare-fun res!1827757 () Bool)

(assert (=> b!4422209 (=> (not res!1827757) (not e!2753457))))

(declare-fun allKeysSameHashInMap!843 (ListLongMap!2111 Hashable!5131) Bool)

(assert (=> b!4422209 (= res!1827757 (allKeysSameHashInMap!843 lm!1616 hashF!1220))))

(declare-fun b!4422210 () Bool)

(declare-fun tp!1333051 () Bool)

(assert (=> b!4422210 (= e!2753455 tp!1333051)))

(declare-fun b!4422211 () Bool)

(declare-fun res!1827767 () Bool)

(assert (=> b!4422211 (=> (not res!1827767) (not e!2753449))))

(assert (=> b!4422211 (= res!1827767 (forall!9540 (toList!3461 lm!1616) lambda!153224))))

(declare-fun b!4422212 () Bool)

(assert (=> b!4422212 (= e!2753450 (forall!9540 (toList!3461 lm!1616) lambda!153224))))

(declare-fun b!4422213 () Bool)

(declare-fun Unit!81456 () Unit!81453)

(assert (=> b!4422213 (= e!2753454 Unit!81456)))

(declare-fun lt!1621989 () Unit!81453)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!24 (ListLongMap!2111 K!10915 Hashable!5131) Unit!81453)

(assert (=> b!4422213 (= lt!1621989 (lemmaExtractTailMapContainsThenExtractMapDoes!24 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4422213 false))

(assert (= (and start!431156 res!1827765) b!4422209))

(assert (= (and b!4422209 res!1827757) b!4422194))

(assert (= (and b!4422194 res!1827768) b!4422207))

(assert (= (and b!4422207 res!1827766) b!4422201))

(assert (= (and b!4422201 res!1827760) b!4422199))

(assert (= (and b!4422199 res!1827772) b!4422202))

(assert (= (and b!4422199 (not res!1827770)) b!4422208))

(assert (= (and b!4422199 res!1827758) b!4422206))

(assert (= (and b!4422206 res!1827764) b!4422211))

(assert (= (and b!4422211 res!1827767) b!4422198))

(assert (= (and b!4422198 (not res!1827769)) b!4422203))

(assert (= (and b!4422203 (not res!1827762)) b!4422193))

(assert (= (and b!4422193 c!752733) b!4422213))

(assert (= (and b!4422193 (not c!752733)) b!4422204))

(assert (= (and b!4422193 (not res!1827773)) b!4422196))

(assert (= (and b!4422196 (not res!1827759)) b!4422200))

(assert (= (and b!4422200 (not res!1827771)) b!4422205))

(assert (= (and b!4422205 (not res!1827761)) b!4422197))

(assert (= (and b!4422197 (not res!1827763)) b!4422212))

(assert (= (and start!431156 ((_ is Cons!49552) newBucket!194)) b!4422195))

(assert (= start!431156 b!4422210))

(declare-fun m!5100251 () Bool)

(assert (=> b!4422209 m!5100251))

(declare-fun m!5100253 () Bool)

(assert (=> b!4422193 m!5100253))

(declare-fun m!5100255 () Bool)

(assert (=> b!4422193 m!5100255))

(declare-fun m!5100257 () Bool)

(assert (=> b!4422193 m!5100257))

(declare-fun m!5100259 () Bool)

(assert (=> b!4422193 m!5100259))

(declare-fun m!5100261 () Bool)

(assert (=> b!4422193 m!5100261))

(assert (=> b!4422193 m!5100253))

(declare-fun m!5100263 () Bool)

(assert (=> b!4422193 m!5100263))

(assert (=> b!4422193 m!5100255))

(declare-fun m!5100265 () Bool)

(assert (=> b!4422193 m!5100265))

(declare-fun m!5100267 () Bool)

(assert (=> b!4422193 m!5100267))

(declare-fun m!5100269 () Bool)

(assert (=> b!4422193 m!5100269))

(declare-fun m!5100271 () Bool)

(assert (=> b!4422193 m!5100271))

(assert (=> b!4422193 m!5100269))

(declare-fun m!5100273 () Bool)

(assert (=> b!4422193 m!5100273))

(declare-fun m!5100275 () Bool)

(assert (=> b!4422206 m!5100275))

(declare-fun m!5100277 () Bool)

(assert (=> b!4422211 m!5100277))

(declare-fun m!5100279 () Bool)

(assert (=> b!4422194 m!5100279))

(assert (=> b!4422200 m!5100277))

(declare-fun m!5100281 () Bool)

(assert (=> b!4422201 m!5100281))

(declare-fun m!5100283 () Bool)

(assert (=> b!4422201 m!5100283))

(declare-fun m!5100285 () Bool)

(assert (=> b!4422207 m!5100285))

(declare-fun m!5100287 () Bool)

(assert (=> b!4422202 m!5100287))

(declare-fun m!5100289 () Bool)

(assert (=> b!4422205 m!5100289))

(assert (=> b!4422212 m!5100277))

(declare-fun m!5100291 () Bool)

(assert (=> b!4422198 m!5100291))

(assert (=> b!4422198 m!5100291))

(declare-fun m!5100293 () Bool)

(assert (=> b!4422198 m!5100293))

(declare-fun m!5100295 () Bool)

(assert (=> b!4422198 m!5100295))

(declare-fun m!5100297 () Bool)

(assert (=> b!4422199 m!5100297))

(declare-fun m!5100299 () Bool)

(assert (=> b!4422213 m!5100299))

(assert (=> start!431156 m!5100277))

(declare-fun m!5100301 () Bool)

(assert (=> start!431156 m!5100301))

(declare-fun m!5100303 () Bool)

(assert (=> b!4422196 m!5100303))

(assert (=> b!4422196 m!5100303))

(declare-fun m!5100305 () Bool)

(assert (=> b!4422196 m!5100305))

(check-sat tp_is_empty!26193 (not b!4422200) (not b!4422207) (not b!4422193) (not b!4422194) (not b!4422205) (not b!4422212) (not b!4422209) (not b!4422206) (not b!4422199) (not b!4422201) (not b!4422198) (not b!4422211) (not b!4422195) (not b!4422202) tp_is_empty!26195 (not b!4422213) (not b!4422210) (not start!431156) (not b!4422196))
(check-sat)
