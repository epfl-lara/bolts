; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430158 () Bool)

(assert start!430158)

(declare-fun b!4416479 () Bool)

(declare-fun res!1824309 () Bool)

(declare-fun e!2750100 () Bool)

(assert (=> b!4416479 (=> res!1824309 e!2750100)))

(declare-datatypes ((V!11061 0))(
  ( (V!11062 (val!16923 Int)) )
))
(declare-datatypes ((K!10815 0))(
  ( (K!10816 (val!16924 Int)) )
))
(declare-datatypes ((tuple2!49166 0))(
  ( (tuple2!49167 (_1!27877 K!10815) (_2!27877 V!11061)) )
))
(declare-datatypes ((List!49581 0))(
  ( (Nil!49457) (Cons!49457 (h!55120 tuple2!49166) (t!356519 List!49581)) )
))
(declare-datatypes ((tuple2!49168 0))(
  ( (tuple2!49169 (_1!27878 (_ BitVec 64)) (_2!27878 List!49581)) )
))
(declare-datatypes ((List!49582 0))(
  ( (Nil!49458) (Cons!49458 (h!55121 tuple2!49168) (t!356520 List!49582)) )
))
(declare-datatypes ((ListLongMap!2031 0))(
  ( (ListLongMap!2032 (toList!3381 List!49582)) )
))
(declare-fun lt!1618450 () ListLongMap!2031)

(declare-fun lm!1616 () ListLongMap!2031)

(declare-fun tail!7185 (List!49582) List!49582)

(assert (=> b!4416479 (= res!1824309 (not (= (tail!7185 (toList!3381 lt!1618450)) (t!356520 (toList!3381 lm!1616)))))))

(declare-fun b!4416480 () Bool)

(declare-fun res!1824311 () Bool)

(assert (=> b!4416480 (=> res!1824311 e!2750100)))

(declare-fun lt!1618441 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4416480 (= res!1824311 (or (not ((_ is Cons!49458) (toList!3381 lm!1616))) (not (= (_1!27878 (h!55121 (toList!3381 lm!1616))) hash!366)) lt!1618441))))

(declare-fun newValue!93 () V!11061)

(declare-fun key!3717 () K!10815)

(declare-fun b!4416481 () Bool)

(declare-fun newBucket!194 () List!49581)

(declare-fun e!2750102 () Bool)

(declare-fun apply!11549 (ListLongMap!2031 (_ BitVec 64)) List!49581)

(assert (=> b!4416481 (= e!2750102 (= newBucket!194 (Cons!49457 (tuple2!49167 key!3717 newValue!93) (apply!11549 lm!1616 hash!366))))))

(declare-fun b!4416482 () Bool)

(declare-fun res!1824318 () Bool)

(declare-fun e!2750106 () Bool)

(assert (=> b!4416482 (=> (not res!1824318) (not e!2750106))))

(declare-datatypes ((Hashable!5091 0))(
  ( (HashableExt!5090 (__x!30794 Int)) )
))
(declare-fun hashF!1220 () Hashable!5091)

(declare-fun hash!2014 (Hashable!5091 K!10815) (_ BitVec 64))

(assert (=> b!4416482 (= res!1824318 (= (hash!2014 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416483 () Bool)

(declare-fun res!1824306 () Bool)

(assert (=> b!4416483 (=> (not res!1824306) (not e!2750106))))

(declare-fun allKeysSameHash!657 (List!49581 (_ BitVec 64) Hashable!5091) Bool)

(assert (=> b!4416483 (= res!1824306 (allKeysSameHash!657 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4416484 () Bool)

(declare-fun e!2750105 () Bool)

(assert (=> b!4416484 (= e!2750106 e!2750105)))

(declare-fun res!1824313 () Bool)

(assert (=> b!4416484 (=> (not res!1824313) (not e!2750105))))

(declare-fun e!2750103 () Bool)

(assert (=> b!4416484 (= res!1824313 e!2750103)))

(declare-fun res!1824305 () Bool)

(assert (=> b!4416484 (=> res!1824305 e!2750103)))

(assert (=> b!4416484 (= res!1824305 e!2750102)))

(declare-fun res!1824319 () Bool)

(assert (=> b!4416484 (=> (not res!1824319) (not e!2750102))))

(assert (=> b!4416484 (= res!1824319 (not lt!1618441))))

(declare-fun lt!1618451 () Bool)

(assert (=> b!4416484 (= lt!1618441 (not lt!1618451))))

(declare-fun contains!11919 (ListLongMap!2031 (_ BitVec 64)) Bool)

(assert (=> b!4416484 (= lt!1618451 (contains!11919 lm!1616 hash!366))))

(declare-fun b!4416485 () Bool)

(assert (=> b!4416485 (= e!2750105 (not e!2750100))))

(declare-fun res!1824308 () Bool)

(assert (=> b!4416485 (=> res!1824308 e!2750100)))

(declare-fun lambda!152112 () Int)

(declare-fun forall!9482 (List!49582 Int) Bool)

(assert (=> b!4416485 (= res!1824308 (not (forall!9482 (toList!3381 lt!1618450) lambda!152112)))))

(assert (=> b!4416485 (forall!9482 (toList!3381 lt!1618450) lambda!152112)))

(declare-fun lt!1618446 () tuple2!49168)

(declare-fun +!994 (ListLongMap!2031 tuple2!49168) ListLongMap!2031)

(assert (=> b!4416485 (= lt!1618450 (+!994 lm!1616 lt!1618446))))

(assert (=> b!4416485 (= lt!1618446 (tuple2!49169 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80979 0))(
  ( (Unit!80980) )
))
(declare-fun lt!1618443 () Unit!80979)

(declare-fun addValidProp!341 (ListLongMap!2031 Int (_ BitVec 64) List!49581) Unit!80979)

(assert (=> b!4416485 (= lt!1618443 (addValidProp!341 lm!1616 lambda!152112 hash!366 newBucket!194))))

(declare-fun b!4416486 () Bool)

(declare-fun res!1824316 () Bool)

(assert (=> b!4416486 (=> (not res!1824316) (not e!2750106))))

(declare-fun allKeysSameHashInMap!803 (ListLongMap!2031 Hashable!5091) Bool)

(assert (=> b!4416486 (= res!1824316 (allKeysSameHashInMap!803 lm!1616 hashF!1220))))

(declare-fun b!4416487 () Bool)

(declare-fun res!1824320 () Bool)

(assert (=> b!4416487 (=> (not res!1824320) (not e!2750105))))

(assert (=> b!4416487 (= res!1824320 (forall!9482 (toList!3381 lm!1616) lambda!152112))))

(declare-fun b!4416488 () Bool)

(declare-fun res!1824323 () Bool)

(assert (=> b!4416488 (=> (not res!1824323) (not e!2750106))))

(declare-datatypes ((ListMap!2625 0))(
  ( (ListMap!2626 (toList!3382 List!49581)) )
))
(declare-fun contains!11920 (ListMap!2625 K!10815) Bool)

(declare-fun extractMap!758 (List!49582) ListMap!2625)

(assert (=> b!4416488 (= res!1824323 (not (contains!11920 (extractMap!758 (toList!3381 lm!1616)) key!3717)))))

(declare-fun b!4416489 () Bool)

(declare-fun e!2750101 () Bool)

(declare-fun e!2750109 () Bool)

(assert (=> b!4416489 (= e!2750101 e!2750109)))

(declare-fun res!1824321 () Bool)

(assert (=> b!4416489 (=> res!1824321 e!2750109)))

(declare-fun lt!1618449 () ListMap!2625)

(declare-fun lt!1618447 () ListMap!2625)

(declare-fun eq!373 (ListMap!2625 ListMap!2625) Bool)

(assert (=> b!4416489 (= res!1824321 (not (eq!373 lt!1618449 lt!1618447)))))

(declare-fun lt!1618444 () ListMap!2625)

(assert (=> b!4416489 (eq!373 lt!1618444 lt!1618447)))

(declare-fun lt!1618453 () List!49581)

(declare-fun lt!1618448 () tuple2!49166)

(declare-fun lt!1618445 () ListMap!2625)

(declare-fun +!995 (ListMap!2625 tuple2!49166) ListMap!2625)

(declare-fun addToMapMapFromBucket!351 (List!49581 ListMap!2625) ListMap!2625)

(assert (=> b!4416489 (= lt!1618447 (+!995 (addToMapMapFromBucket!351 lt!1618453 lt!1618445) lt!1618448))))

(declare-fun lt!1618442 () Unit!80979)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!168 (ListMap!2625 K!10815 V!11061 List!49581) Unit!80979)

(assert (=> b!4416489 (= lt!1618442 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!168 lt!1618445 key!3717 newValue!93 lt!1618453))))

(declare-fun b!4416490 () Bool)

(declare-fun res!1824312 () Bool)

(assert (=> b!4416490 (=> res!1824312 e!2750109)))

(declare-fun lt!1618452 () ListMap!2625)

(assert (=> b!4416490 (= res!1824312 (not (eq!373 lt!1618452 lt!1618447)))))

(declare-fun b!4416491 () Bool)

(declare-fun e!2750104 () Bool)

(assert (=> b!4416491 (= e!2750104 e!2750101)))

(declare-fun res!1824317 () Bool)

(assert (=> b!4416491 (=> res!1824317 e!2750101)))

(assert (=> b!4416491 (= res!1824317 (not (= lt!1618449 lt!1618444)))))

(assert (=> b!4416491 (= lt!1618444 (addToMapMapFromBucket!351 lt!1618453 (+!995 lt!1618445 lt!1618448)))))

(declare-fun res!1824315 () Bool)

(assert (=> start!430158 (=> (not res!1824315) (not e!2750106))))

(assert (=> start!430158 (= res!1824315 (forall!9482 (toList!3381 lm!1616) lambda!152112))))

(assert (=> start!430158 e!2750106))

(declare-fun tp_is_empty!26033 () Bool)

(assert (=> start!430158 tp_is_empty!26033))

(declare-fun tp_is_empty!26035 () Bool)

(assert (=> start!430158 tp_is_empty!26035))

(declare-fun e!2750110 () Bool)

(assert (=> start!430158 e!2750110))

(declare-fun e!2750108 () Bool)

(declare-fun inv!65001 (ListLongMap!2031) Bool)

(assert (=> start!430158 (and (inv!65001 lm!1616) e!2750108)))

(assert (=> start!430158 true))

(declare-fun b!4416492 () Bool)

(declare-fun tp!1332644 () Bool)

(assert (=> b!4416492 (= e!2750108 tp!1332644)))

(declare-fun b!4416493 () Bool)

(declare-fun e!2750107 () Bool)

(assert (=> b!4416493 (= e!2750100 e!2750107)))

(declare-fun res!1824322 () Bool)

(assert (=> b!4416493 (=> res!1824322 e!2750107)))

(assert (=> b!4416493 (= res!1824322 (not (= lt!1618452 lt!1618449)))))

(assert (=> b!4416493 (= lt!1618449 (addToMapMapFromBucket!351 newBucket!194 lt!1618445))))

(assert (=> b!4416493 (= lt!1618452 (extractMap!758 (toList!3381 lt!1618450)))))

(assert (=> b!4416493 (= lt!1618445 (extractMap!758 (t!356520 (toList!3381 lm!1616))))))

(declare-fun b!4416494 () Bool)

(assert (=> b!4416494 (= e!2750109 (forall!9482 (toList!3381 lt!1618450) lambda!152112))))

(declare-fun b!4416495 () Bool)

(declare-fun res!1824307 () Bool)

(assert (=> b!4416495 (=> (not res!1824307) (not e!2750105))))

(declare-fun noDuplicateKeys!697 (List!49581) Bool)

(assert (=> b!4416495 (= res!1824307 (noDuplicateKeys!697 newBucket!194))))

(declare-fun b!4416496 () Bool)

(assert (=> b!4416496 (= e!2750107 e!2750104)))

(declare-fun res!1824314 () Bool)

(assert (=> b!4416496 (=> res!1824314 e!2750104)))

(assert (=> b!4416496 (= res!1824314 (not (= newBucket!194 (Cons!49457 lt!1618448 lt!1618453))))))

(assert (=> b!4416496 (= lt!1618453 (apply!11549 lm!1616 hash!366))))

(assert (=> b!4416496 (= lt!1618448 (tuple2!49167 key!3717 newValue!93))))

(declare-fun b!4416497 () Bool)

(assert (=> b!4416497 (= e!2750103 (and (not lt!1618451) (= newBucket!194 (Cons!49457 (tuple2!49167 key!3717 newValue!93) Nil!49457))))))

(declare-fun tp!1332643 () Bool)

(declare-fun b!4416498 () Bool)

(assert (=> b!4416498 (= e!2750110 (and tp_is_empty!26035 tp_is_empty!26033 tp!1332643))))

(declare-fun b!4416499 () Bool)

(declare-fun res!1824310 () Bool)

(assert (=> b!4416499 (=> res!1824310 e!2750100)))

(declare-fun head!9176 (List!49582) tuple2!49168)

(assert (=> b!4416499 (= res!1824310 (not (= (head!9176 (toList!3381 lt!1618450)) lt!1618446)))))

(assert (= (and start!430158 res!1824315) b!4416486))

(assert (= (and b!4416486 res!1824316) b!4416482))

(assert (= (and b!4416482 res!1824318) b!4416483))

(assert (= (and b!4416483 res!1824306) b!4416488))

(assert (= (and b!4416488 res!1824323) b!4416484))

(assert (= (and b!4416484 res!1824319) b!4416481))

(assert (= (and b!4416484 (not res!1824305)) b!4416497))

(assert (= (and b!4416484 res!1824313) b!4416495))

(assert (= (and b!4416495 res!1824307) b!4416487))

(assert (= (and b!4416487 res!1824320) b!4416485))

(assert (= (and b!4416485 (not res!1824308)) b!4416480))

(assert (= (and b!4416480 (not res!1824311)) b!4416499))

(assert (= (and b!4416499 (not res!1824310)) b!4416479))

(assert (= (and b!4416479 (not res!1824309)) b!4416493))

(assert (= (and b!4416493 (not res!1824322)) b!4416496))

(assert (= (and b!4416496 (not res!1824314)) b!4416491))

(assert (= (and b!4416491 (not res!1824317)) b!4416489))

(assert (= (and b!4416489 (not res!1824321)) b!4416490))

(assert (= (and b!4416490 (not res!1824312)) b!4416494))

(assert (= (and start!430158 ((_ is Cons!49457) newBucket!194)) b!4416498))

(assert (= start!430158 b!4416492))

(declare-fun m!5092969 () Bool)

(assert (=> b!4416499 m!5092969))

(declare-fun m!5092971 () Bool)

(assert (=> b!4416479 m!5092971))

(declare-fun m!5092973 () Bool)

(assert (=> b!4416496 m!5092973))

(declare-fun m!5092975 () Bool)

(assert (=> b!4416483 m!5092975))

(declare-fun m!5092977 () Bool)

(assert (=> b!4416491 m!5092977))

(assert (=> b!4416491 m!5092977))

(declare-fun m!5092979 () Bool)

(assert (=> b!4416491 m!5092979))

(declare-fun m!5092981 () Bool)

(assert (=> b!4416486 m!5092981))

(declare-fun m!5092983 () Bool)

(assert (=> b!4416494 m!5092983))

(declare-fun m!5092985 () Bool)

(assert (=> b!4416493 m!5092985))

(declare-fun m!5092987 () Bool)

(assert (=> b!4416493 m!5092987))

(declare-fun m!5092989 () Bool)

(assert (=> b!4416493 m!5092989))

(declare-fun m!5092991 () Bool)

(assert (=> b!4416482 m!5092991))

(declare-fun m!5092993 () Bool)

(assert (=> b!4416484 m!5092993))

(declare-fun m!5092995 () Bool)

(assert (=> b!4416489 m!5092995))

(declare-fun m!5092997 () Bool)

(assert (=> b!4416489 m!5092997))

(declare-fun m!5092999 () Bool)

(assert (=> b!4416489 m!5092999))

(assert (=> b!4416489 m!5092999))

(declare-fun m!5093001 () Bool)

(assert (=> b!4416489 m!5093001))

(declare-fun m!5093003 () Bool)

(assert (=> b!4416489 m!5093003))

(declare-fun m!5093005 () Bool)

(assert (=> b!4416488 m!5093005))

(assert (=> b!4416488 m!5093005))

(declare-fun m!5093007 () Bool)

(assert (=> b!4416488 m!5093007))

(assert (=> b!4416485 m!5092983))

(assert (=> b!4416485 m!5092983))

(declare-fun m!5093009 () Bool)

(assert (=> b!4416485 m!5093009))

(declare-fun m!5093011 () Bool)

(assert (=> b!4416485 m!5093011))

(assert (=> b!4416481 m!5092973))

(declare-fun m!5093013 () Bool)

(assert (=> b!4416487 m!5093013))

(declare-fun m!5093015 () Bool)

(assert (=> b!4416490 m!5093015))

(assert (=> start!430158 m!5093013))

(declare-fun m!5093017 () Bool)

(assert (=> start!430158 m!5093017))

(declare-fun m!5093019 () Bool)

(assert (=> b!4416495 m!5093019))

(check-sat (not b!4416483) (not b!4416479) (not b!4416496) (not b!4416494) (not b!4416484) (not b!4416486) tp_is_empty!26035 (not b!4416495) (not b!4416487) (not b!4416491) (not b!4416489) (not b!4416481) (not start!430158) (not b!4416482) (not b!4416492) (not b!4416499) (not b!4416493) (not b!4416490) tp_is_empty!26033 (not b!4416498) (not b!4416485) (not b!4416488))
(check-sat)
