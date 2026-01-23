; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!249544 () Bool)

(assert start!249544)

(declare-fun b_free!72595 () Bool)

(declare-fun b_next!73299 () Bool)

(assert (=> start!249544 (= b_free!72595 (not b_next!73299))))

(declare-fun tp!819364 () Bool)

(declare-fun b_and!188889 () Bool)

(assert (=> start!249544 (= tp!819364 b_and!188889)))

(declare-fun res!1084931 () Bool)

(declare-fun e!1627571 () Bool)

(assert (=> start!249544 (=> (not res!1084931) (not e!1627571))))

(declare-fun initialSize!22 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249544 (= res!1084931 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(assert (=> start!249544 e!1627571))

(assert (=> start!249544 true))

(assert (=> start!249544 tp!819364))

(declare-fun b!2579089 () Bool)

(declare-fun e!1627570 () Bool)

(assert (=> b!2579089 (= e!1627571 e!1627570)))

(declare-fun res!1084932 () Bool)

(assert (=> b!2579089 (=> res!1084932 e!1627570)))

(declare-datatypes ((V!6116 0))(
  ( (V!6117 (val!9423 Int)) )
))
(declare-datatypes ((K!5914 0))(
  ( (K!5915 (val!9424 Int)) )
))
(declare-datatypes ((Hashable!3366 0))(
  ( (HashableExt!3365 (__x!19286 Int)) )
))
(declare-datatypes ((tuple2!29674 0))(
  ( (tuple2!29675 (_1!17379 K!5914) (_2!17379 V!6116)) )
))
(declare-datatypes ((List!29803 0))(
  ( (Nil!29703) (Cons!29703 (h!35123 tuple2!29674) (t!211688 List!29803)) )
))
(declare-datatypes ((array!12303 0))(
  ( (array!12304 (arr!5490 (Array (_ BitVec 32) List!29803)) (size!23023 (_ BitVec 32))) )
))
(declare-datatypes ((array!12305 0))(
  ( (array!12306 (arr!5491 (Array (_ BitVec 32) (_ BitVec 64))) (size!23024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6900 0))(
  ( (LongMapFixedSize!6901 (defaultEntry!3830 Int) (mask!8881 (_ BitVec 32)) (extraKeys!3698 (_ BitVec 32)) (zeroValue!3708 List!29803) (minValue!3708 List!29803) (_size!6943 (_ BitVec 32)) (_keys!3747 array!12305) (_values!3730 array!12303) (_vacant!3511 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13609 0))(
  ( (Cell!13610 (v!32017 LongMapFixedSize!6900)) )
))
(declare-datatypes ((MutLongMap!3450 0))(
  ( (LongMap!3450 (underlying!7103 Cell!13609)) (MutLongMapExt!3449 (__x!19287 Int)) )
))
(declare-datatypes ((Cell!13611 0))(
  ( (Cell!13612 (v!32018 MutLongMap!3450)) )
))
(declare-datatypes ((MutableMap!3356 0))(
  ( (MutableMapExt!3355 (__x!19288 Int)) (HashMap!3356 (underlying!7104 Cell!13611) (hashF!5396 Hashable!3366) (_size!6944 (_ BitVec 32)) (defaultValue!3527 Int)) )
))
(declare-fun lt!907418 () MutableMap!3356)

(declare-fun valid!2669 (MutableMap!3356) Bool)

(assert (=> b!2579089 (= res!1084932 (not (valid!2669 lt!907418)))))

(declare-fun lambda!95560 () Int)

(declare-fun defaultValue!132 () Int)

(declare-fun hashF!644 () Hashable!3366)

(declare-fun getEmptyLongMap!29 (Int (_ BitVec 32)) MutLongMap!3450)

(assert (=> b!2579089 (= lt!907418 (HashMap!3356 (Cell!13612 (getEmptyLongMap!29 lambda!95560 initialSize!22)) hashF!644 #b00000000000000000000000000000000 defaultValue!132))))

(declare-fun b!2579090 () Bool)

(declare-fun size!23025 (MutableMap!3356) (_ BitVec 32))

(assert (=> b!2579090 (= e!1627570 (not (= (size!23025 lt!907418) #b00000000000000000000000000000000)))))

(assert (= (and start!249544 res!1084931) b!2579089))

(assert (= (and b!2579089 (not res!1084932)) b!2579090))

(declare-fun m!2914011 () Bool)

(assert (=> start!249544 m!2914011))

(declare-fun m!2914013 () Bool)

(assert (=> b!2579089 m!2914013))

(declare-fun m!2914015 () Bool)

(assert (=> b!2579089 m!2914015))

(declare-fun m!2914017 () Bool)

(assert (=> b!2579090 m!2914017))

(check-sat (not b!2579089) (not start!249544) (not b!2579090) (not b_next!73299) b_and!188889)
(check-sat b_and!188889 (not b_next!73299))
(get-model)

(declare-fun d!729678 () Bool)

(assert (=> d!729678 (= (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!22 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249544 d!729678))

(declare-fun d!729682 () Bool)

(declare-fun res!1084949 () Bool)

(declare-fun e!1627581 () Bool)

(assert (=> d!729682 (=> (not res!1084949) (not e!1627581))))

(declare-fun valid!2671 (MutLongMap!3450) Bool)

(assert (=> d!729682 (= res!1084949 (valid!2671 (v!32018 (underlying!7104 lt!907418))))))

(assert (=> d!729682 (= (valid!2669 lt!907418) e!1627581)))

(declare-fun b!2579107 () Bool)

(declare-fun res!1084950 () Bool)

(assert (=> b!2579107 (=> (not res!1084950) (not e!1627581))))

(declare-fun lambda!95566 () Int)

(declare-datatypes ((tuple2!29678 0))(
  ( (tuple2!29679 (_1!17381 (_ BitVec 64)) (_2!17381 List!29803)) )
))
(declare-datatypes ((List!29805 0))(
  ( (Nil!29705) (Cons!29705 (h!35125 tuple2!29678) (t!211690 List!29805)) )
))
(declare-fun forall!6049 (List!29805 Int) Bool)

(declare-datatypes ((ListLongMap!679 0))(
  ( (ListLongMap!680 (toList!1728 List!29805)) )
))
(declare-fun map!6589 (MutLongMap!3450) ListLongMap!679)

(assert (=> b!2579107 (= res!1084950 (forall!6049 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))) lambda!95566))))

(declare-fun b!2579108 () Bool)

(declare-fun allKeysSameHashInMap!222 (ListLongMap!679 Hashable!3366) Bool)

(assert (=> b!2579108 (= e!1627581 (allKeysSameHashInMap!222 (map!6589 (v!32018 (underlying!7104 lt!907418))) (hashF!5396 lt!907418)))))

(assert (= (and d!729682 res!1084949) b!2579107))

(assert (= (and b!2579107 res!1084950) b!2579108))

(declare-fun m!2914033 () Bool)

(assert (=> d!729682 m!2914033))

(declare-fun m!2914035 () Bool)

(assert (=> b!2579107 m!2914035))

(declare-fun m!2914037 () Bool)

(assert (=> b!2579107 m!2914037))

(assert (=> b!2579108 m!2914035))

(assert (=> b!2579108 m!2914035))

(declare-fun m!2914039 () Bool)

(assert (=> b!2579108 m!2914039))

(assert (=> b!2579089 d!729682))

(declare-fun d!729688 () Bool)

(declare-fun e!1627585 () Bool)

(assert (=> d!729688 e!1627585))

(declare-fun res!1084955 () Bool)

(assert (=> d!729688 (=> (not res!1084955) (not e!1627585))))

(assert (=> d!729688 (= res!1084955 true)))

(declare-fun lt!907429 () MutLongMap!3450)

(declare-fun getNewLongMapFixedSize!19 ((_ BitVec 32) Int) LongMapFixedSize!6900)

(assert (=> d!729688 (= lt!907429 (LongMap!3450 (Cell!13610 (getNewLongMapFixedSize!19 (bvsub initialSize!22 #b00000000000000000000000000000001) lambda!95560))))))

(declare-fun lt!907430 () MutLongMap!3450)

(assert (=> d!729688 (= lt!907430 (LongMap!3450 (Cell!13610 (getNewLongMapFixedSize!19 (bvsub initialSize!22 #b00000000000000000000000000000001) lambda!95560))))))

(assert (=> d!729688 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(assert (=> d!729688 (= (getEmptyLongMap!29 lambda!95560 initialSize!22) lt!907430)))

(declare-fun b!2579113 () Bool)

(declare-fun res!1084956 () Bool)

(assert (=> b!2579113 (=> (not res!1084956) (not e!1627585))))

(assert (=> b!2579113 (= res!1084956 (valid!2671 lt!907430))))

(declare-fun b!2579114 () Bool)

(declare-fun size!23027 (MutLongMap!3450) (_ BitVec 32))

(assert (=> b!2579114 (= e!1627585 (= (size!23027 lt!907430) #b00000000000000000000000000000000))))

(assert (= (and d!729688 res!1084955) b!2579113))

(assert (= (and b!2579113 res!1084956) b!2579114))

(declare-fun m!2914041 () Bool)

(assert (=> d!729688 m!2914041))

(assert (=> d!729688 m!2914011))

(declare-fun m!2914043 () Bool)

(assert (=> b!2579113 m!2914043))

(declare-fun m!2914045 () Bool)

(assert (=> b!2579114 m!2914045))

(assert (=> b!2579089 d!729688))

(declare-fun d!729690 () Bool)

(assert (=> d!729690 (= (size!23025 lt!907418) (_size!6944 lt!907418))))

(assert (=> b!2579090 d!729690))

(check-sat (not b!2579107) (not d!729688) (not b!2579108) (not d!729682) (not b!2579114) (not b!2579113) (not b_next!73299) b_and!188889)
(check-sat b_and!188889 (not b_next!73299))
(get-model)

(declare-fun d!729708 () Bool)

(declare-fun valid!2673 (LongMapFixedSize!6900) Bool)

(assert (=> d!729708 (= (valid!2671 lt!907430) (valid!2673 (v!32017 (underlying!7103 lt!907430))))))

(declare-fun bs!471092 () Bool)

(assert (= bs!471092 d!729708))

(declare-fun m!2914091 () Bool)

(assert (=> bs!471092 m!2914091))

(assert (=> b!2579113 d!729708))

(declare-fun d!729710 () Bool)

(declare-fun res!1084973 () Bool)

(declare-fun e!1627605 () Bool)

(assert (=> d!729710 (=> res!1084973 e!1627605)))

(get-info :version)

(assert (=> d!729710 (= res!1084973 ((_ is Nil!29705) (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))))

(assert (=> d!729710 (= (forall!6049 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))) lambda!95566) e!1627605)))

(declare-fun b!2579145 () Bool)

(declare-fun e!1627606 () Bool)

(assert (=> b!2579145 (= e!1627605 e!1627606)))

(declare-fun res!1084974 () Bool)

(assert (=> b!2579145 (=> (not res!1084974) (not e!1627606))))

(declare-fun dynLambda!12538 (Int tuple2!29678) Bool)

(assert (=> b!2579145 (= res!1084974 (dynLambda!12538 lambda!95566 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))

(declare-fun b!2579146 () Bool)

(assert (=> b!2579146 (= e!1627606 (forall!6049 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))) lambda!95566))))

(assert (= (and d!729710 (not res!1084973)) b!2579145))

(assert (= (and b!2579145 res!1084974) b!2579146))

(declare-fun b_lambda!76543 () Bool)

(assert (=> (not b_lambda!76543) (not b!2579145)))

(declare-fun m!2914093 () Bool)

(assert (=> b!2579145 m!2914093))

(declare-fun m!2914095 () Bool)

(assert (=> b!2579146 m!2914095))

(assert (=> b!2579107 d!729710))

(declare-fun d!729712 () Bool)

(declare-fun map!6591 (LongMapFixedSize!6900) ListLongMap!679)

(assert (=> d!729712 (= (map!6589 (v!32018 (underlying!7104 lt!907418))) (map!6591 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))))))

(declare-fun bs!471093 () Bool)

(assert (= bs!471093 d!729712))

(declare-fun m!2914097 () Bool)

(assert (=> bs!471093 m!2914097))

(assert (=> b!2579107 d!729712))

(declare-fun d!729714 () Bool)

(declare-fun size!23028 (LongMapFixedSize!6900) (_ BitVec 32))

(assert (=> d!729714 (= (size!23027 lt!907430) (size!23028 (v!32017 (underlying!7103 lt!907430))))))

(declare-fun bs!471094 () Bool)

(assert (= bs!471094 d!729714))

(declare-fun m!2914099 () Bool)

(assert (=> bs!471094 m!2914099))

(assert (=> b!2579114 d!729714))

(declare-fun bs!471095 () Bool)

(declare-fun d!729716 () Bool)

(assert (= bs!471095 (and d!729716 b!2579107)))

(declare-fun lambda!95572 () Int)

(assert (=> bs!471095 (not (= lambda!95572 lambda!95566))))

(assert (=> d!729716 true))

(assert (=> d!729716 (= (allKeysSameHashInMap!222 (map!6589 (v!32018 (underlying!7104 lt!907418))) (hashF!5396 lt!907418)) (forall!6049 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))) lambda!95572))))

(declare-fun bs!471096 () Bool)

(assert (= bs!471096 d!729716))

(declare-fun m!2914101 () Bool)

(assert (=> bs!471096 m!2914101))

(assert (=> b!2579108 d!729716))

(assert (=> b!2579108 d!729712))

(declare-fun b!2579161 () Bool)

(declare-datatypes ((Unit!43536 0))(
  ( (Unit!43537) )
))
(declare-fun e!1627615 () Unit!43536)

(declare-fun Unit!43538 () Unit!43536)

(assert (=> b!2579161 (= e!1627615 Unit!43538)))

(declare-fun lt!907569 () tuple2!29678)

(declare-fun lt!907557 () LongMapFixedSize!6900)

(declare-fun head!5850 (List!29805) tuple2!29678)

(assert (=> b!2579161 (= lt!907569 (head!5850 (toList!1728 (map!6591 lt!907557))))))

(declare-fun lt!907573 () array!12305)

(assert (=> b!2579161 (= lt!907573 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907568 () (_ BitVec 32))

(assert (=> b!2579161 (= lt!907568 #b00000000000000000000000000000000)))

(declare-fun lt!907553 () List!29803)

(declare-fun lt!907570 () Unit!43536)

(declare-fun lemmaKeyInListMapIsInArray!12 (array!12305 array!12303 (_ BitVec 32) (_ BitVec 32) List!29803 List!29803 (_ BitVec 64) Int) Unit!43536)

(assert (=> b!2579161 (= lt!907570 (lemmaKeyInListMapIsInArray!12 lt!907573 (array!12304 ((as const (Array (_ BitVec 32) List!29803)) lt!907553) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907568 lt!907553 lt!907553 (_1!17381 lt!907569) lambda!95560))))

(declare-fun c!415413 () Bool)

(assert (=> b!2579161 (= c!415413 (and (not (= (_1!17381 lt!907569) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!17381 lt!907569) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!1627614 () Bool)

(assert (=> b!2579161 e!1627614))

(declare-fun lt!907555 () Unit!43536)

(assert (=> b!2579161 (= lt!907555 lt!907570)))

(declare-fun lt!907565 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!12305 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!2579161 (= lt!907565 (arrayScanForKey!0 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!17381 lt!907569) #b00000000000000000000000000000000))))

(assert (=> b!2579161 false))

(declare-fun b!2579162 () Bool)

(declare-fun arrayContainsKey!0 (array!12305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!2579162 (= e!1627614 (arrayContainsKey!0 lt!907573 (_1!17381 lt!907569) #b00000000000000000000000000000000))))

(declare-fun d!729718 () Bool)

(declare-fun e!1627613 () Bool)

(assert (=> d!729718 e!1627613))

(declare-fun res!1084979 () Bool)

(assert (=> d!729718 (=> (not res!1084979) (not e!1627613))))

(declare-fun lt!907559 () LongMapFixedSize!6900)

(assert (=> d!729718 (= res!1084979 (valid!2673 lt!907559))))

(assert (=> d!729718 (= lt!907559 lt!907557)))

(declare-fun lt!907560 () Unit!43536)

(assert (=> d!729718 (= lt!907560 e!1627615)))

(declare-fun c!415414 () Bool)

(assert (=> d!729718 (= c!415414 (not (= (map!6591 lt!907557) (ListLongMap!680 Nil!29705))))))

(declare-fun lt!907566 () Unit!43536)

(declare-fun lt!907554 () Unit!43536)

(assert (=> d!729718 (= lt!907566 lt!907554)))

(declare-fun lt!907552 () array!12305)

(declare-fun lt!907561 () (_ BitVec 32))

(declare-datatypes ((List!29807 0))(
  ( (Nil!29707) (Cons!29707 (h!35127 (_ BitVec 64)) (t!211692 List!29807)) )
))
(declare-fun lt!907558 () List!29807)

(declare-fun arrayNoDuplicates!0 (array!12305 (_ BitVec 32) List!29807) Bool)

(assert (=> d!729718 (arrayNoDuplicates!0 lt!907552 lt!907561 lt!907558)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!12305 (_ BitVec 32) (_ BitVec 32) List!29807) Unit!43536)

(assert (=> d!729718 (= lt!907554 (lemmaArrayNoDuplicatesInAll0Array!0 lt!907552 lt!907561 (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!907558))))

(assert (=> d!729718 (= lt!907558 Nil!29707)))

(assert (=> d!729718 (= lt!907561 #b00000000000000000000000000000000)))

(assert (=> d!729718 (= lt!907552 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907572 () Unit!43536)

(declare-fun lt!907562 () Unit!43536)

(assert (=> d!729718 (= lt!907572 lt!907562)))

(declare-fun lt!907556 () (_ BitVec 32))

(declare-fun lt!907574 () array!12305)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12305 (_ BitVec 32)) Bool)

(assert (=> d!729718 (arrayForallSeekEntryOrOpenFound!0 lt!907556 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!12305 (_ BitVec 32) (_ BitVec 32)) Unit!43536)

(assert (=> d!729718 (= lt!907562 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907556))))

(assert (=> d!729718 (= lt!907556 #b00000000000000000000000000000000)))

(assert (=> d!729718 (= lt!907574 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!907563 () Unit!43536)

(declare-fun lt!907551 () Unit!43536)

(assert (=> d!729718 (= lt!907563 lt!907551)))

(declare-fun lt!907564 () array!12305)

(declare-fun lt!907567 () (_ BitVec 32))

(declare-fun lt!907571 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12305 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!729718 (= (arrayCountValidKeys!0 lt!907564 lt!907567 lt!907571) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!12305 (_ BitVec 32) (_ BitVec 32)) Unit!43536)

(assert (=> d!729718 (= lt!907551 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!907564 lt!907567 lt!907571))))

(assert (=> d!729718 (= lt!907571 (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!729718 (= lt!907567 #b00000000000000000000000000000000)))

(assert (=> d!729718 (= lt!907564 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!729718 (= lt!907557 (LongMapFixedSize!6901 lambda!95560 (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!907553 lt!907553 #b00000000000000000000000000000000 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!12304 ((as const (Array (_ BitVec 32) List!29803)) lt!907553) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!12539 (Int (_ BitVec 64)) List!29803)

(assert (=> d!729718 (= lt!907553 (dynLambda!12539 lambda!95560 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!729718 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(assert (=> d!729718 (= (getNewLongMapFixedSize!19 (bvsub initialSize!22 #b00000000000000000000000000000001) lambda!95560) lt!907559)))

(declare-fun b!2579163 () Bool)

(assert (=> b!2579163 (= e!1627613 (= (map!6591 lt!907559) (ListLongMap!680 Nil!29705)))))

(declare-fun b!2579164 () Bool)

(assert (=> b!2579164 (= e!1627614 (ite (= (_1!17381 lt!907569) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!907568 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!907568 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!2579165 () Bool)

(declare-fun Unit!43539 () Unit!43536)

(assert (=> b!2579165 (= e!1627615 Unit!43539)))

(declare-fun b!2579166 () Bool)

(declare-fun res!1084980 () Bool)

(assert (=> b!2579166 (=> (not res!1084980) (not e!1627613))))

(assert (=> b!2579166 (= res!1084980 (= (mask!8881 lt!907559) (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(assert (= (and d!729718 c!415414) b!2579161))

(assert (= (and d!729718 (not c!415414)) b!2579165))

(assert (= (and b!2579161 c!415413) b!2579162))

(assert (= (and b!2579161 (not c!415413)) b!2579164))

(assert (= (and d!729718 res!1084979) b!2579166))

(assert (= (and b!2579166 res!1084980) b!2579163))

(declare-fun b_lambda!76545 () Bool)

(assert (=> (not b_lambda!76545) (not d!729718)))

(declare-fun m!2914103 () Bool)

(assert (=> b!2579161 m!2914103))

(declare-fun m!2914105 () Bool)

(assert (=> b!2579161 m!2914105))

(declare-fun m!2914107 () Bool)

(assert (=> b!2579161 m!2914107))

(declare-fun m!2914109 () Bool)

(assert (=> b!2579161 m!2914109))

(declare-fun m!2914111 () Bool)

(assert (=> b!2579162 m!2914111))

(declare-fun m!2914113 () Bool)

(assert (=> d!729718 m!2914113))

(declare-fun m!2914115 () Bool)

(assert (=> d!729718 m!2914115))

(declare-fun m!2914117 () Bool)

(assert (=> d!729718 m!2914117))

(assert (=> d!729718 m!2914103))

(assert (=> d!729718 m!2914011))

(declare-fun m!2914119 () Bool)

(assert (=> d!729718 m!2914119))

(declare-fun m!2914121 () Bool)

(assert (=> d!729718 m!2914121))

(declare-fun m!2914123 () Bool)

(assert (=> d!729718 m!2914123))

(declare-fun m!2914125 () Bool)

(assert (=> d!729718 m!2914125))

(declare-fun m!2914127 () Bool)

(assert (=> d!729718 m!2914127))

(declare-fun m!2914129 () Bool)

(assert (=> b!2579163 m!2914129))

(assert (=> d!729688 d!729718))

(assert (=> d!729688 d!729678))

(declare-fun d!729720 () Bool)

(assert (=> d!729720 (= (valid!2671 (v!32018 (underlying!7104 lt!907418))) (valid!2673 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))))))

(declare-fun bs!471097 () Bool)

(assert (= bs!471097 d!729720))

(declare-fun m!2914131 () Bool)

(assert (=> bs!471097 m!2914131))

(assert (=> d!729682 d!729720))

(declare-fun b_lambda!76547 () Bool)

(assert (= b_lambda!76545 (or b!2579089 b_lambda!76547)))

(declare-fun bs!471098 () Bool)

(declare-fun d!729722 () Bool)

(assert (= bs!471098 (and d!729722 b!2579089)))

(assert (=> bs!471098 (= (dynLambda!12539 lambda!95560 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!29703)))

(assert (=> d!729718 d!729722))

(declare-fun b_lambda!76549 () Bool)

(assert (= b_lambda!76543 (or b!2579107 b_lambda!76549)))

(declare-fun bs!471099 () Bool)

(declare-fun d!729724 () Bool)

(assert (= bs!471099 (and d!729724 b!2579107)))

(declare-fun noDuplicateKeys!130 (List!29803) Bool)

(assert (=> bs!471099 (= (dynLambda!12538 lambda!95566 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))) (noDuplicateKeys!130 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))))))

(declare-fun m!2914133 () Bool)

(assert (=> bs!471099 m!2914133))

(assert (=> b!2579145 d!729724))

(check-sat (not d!729718) (not d!729720) (not b!2579163) (not b!2579162) (not d!729708) (not b_lambda!76549) (not d!729716) (not d!729712) (not b!2579146) (not b!2579161) (not d!729714) (not b_next!73299) b_and!188889 (not bs!471099) (not b_lambda!76547))
(check-sat b_and!188889 (not b_next!73299))
(get-model)

(declare-fun d!729726 () Bool)

(declare-fun res!1084987 () Bool)

(declare-fun e!1627618 () Bool)

(assert (=> d!729726 (=> (not res!1084987) (not e!1627618))))

(declare-fun simpleValid!7 (LongMapFixedSize!6900) Bool)

(assert (=> d!729726 (= res!1084987 (simpleValid!7 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))))))

(assert (=> d!729726 (= (valid!2673 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) e!1627618)))

(declare-fun b!2579173 () Bool)

(declare-fun res!1084988 () Bool)

(assert (=> b!2579173 (=> (not res!1084988) (not e!1627618))))

(assert (=> b!2579173 (= res!1084988 (= (arrayCountValidKeys!0 (_keys!3747 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) #b00000000000000000000000000000000 (size!23024 (_keys!3747 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))))) (_size!6943 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418)))))))))

(declare-fun b!2579174 () Bool)

(declare-fun res!1084989 () Bool)

(assert (=> b!2579174 (=> (not res!1084989) (not e!1627618))))

(assert (=> b!2579174 (= res!1084989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3747 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (mask!8881 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418)))))))))

(declare-fun b!2579175 () Bool)

(assert (=> b!2579175 (= e!1627618 (arrayNoDuplicates!0 (_keys!3747 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) #b00000000000000000000000000000000 Nil!29707))))

(assert (= (and d!729726 res!1084987) b!2579173))

(assert (= (and b!2579173 res!1084988) b!2579174))

(assert (= (and b!2579174 res!1084989) b!2579175))

(declare-fun m!2914135 () Bool)

(assert (=> d!729726 m!2914135))

(declare-fun m!2914137 () Bool)

(assert (=> b!2579173 m!2914137))

(declare-fun m!2914139 () Bool)

(assert (=> b!2579174 m!2914139))

(declare-fun m!2914141 () Bool)

(assert (=> b!2579175 m!2914141))

(assert (=> d!729720 d!729726))

(declare-fun d!729728 () Bool)

(declare-fun res!1084990 () Bool)

(declare-fun e!1627619 () Bool)

(assert (=> d!729728 (=> (not res!1084990) (not e!1627619))))

(assert (=> d!729728 (= res!1084990 (simpleValid!7 (v!32017 (underlying!7103 lt!907430))))))

(assert (=> d!729728 (= (valid!2673 (v!32017 (underlying!7103 lt!907430))) e!1627619)))

(declare-fun b!2579176 () Bool)

(declare-fun res!1084991 () Bool)

(assert (=> b!2579176 (=> (not res!1084991) (not e!1627619))))

(assert (=> b!2579176 (= res!1084991 (= (arrayCountValidKeys!0 (_keys!3747 (v!32017 (underlying!7103 lt!907430))) #b00000000000000000000000000000000 (size!23024 (_keys!3747 (v!32017 (underlying!7103 lt!907430))))) (_size!6943 (v!32017 (underlying!7103 lt!907430)))))))

(declare-fun b!2579177 () Bool)

(declare-fun res!1084992 () Bool)

(assert (=> b!2579177 (=> (not res!1084992) (not e!1627619))))

(assert (=> b!2579177 (= res!1084992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3747 (v!32017 (underlying!7103 lt!907430))) (mask!8881 (v!32017 (underlying!7103 lt!907430)))))))

(declare-fun b!2579178 () Bool)

(assert (=> b!2579178 (= e!1627619 (arrayNoDuplicates!0 (_keys!3747 (v!32017 (underlying!7103 lt!907430))) #b00000000000000000000000000000000 Nil!29707))))

(assert (= (and d!729728 res!1084990) b!2579176))

(assert (= (and b!2579176 res!1084991) b!2579177))

(assert (= (and b!2579177 res!1084992) b!2579178))

(declare-fun m!2914143 () Bool)

(assert (=> d!729728 m!2914143))

(declare-fun m!2914145 () Bool)

(assert (=> b!2579176 m!2914145))

(declare-fun m!2914147 () Bool)

(assert (=> b!2579177 m!2914147))

(declare-fun m!2914149 () Bool)

(assert (=> b!2579178 m!2914149))

(assert (=> d!729708 d!729728))

(declare-fun d!729730 () Bool)

(assert (=> d!729730 (= (head!5850 (toList!1728 (map!6591 lt!907557))) (h!35125 (toList!1728 (map!6591 lt!907557))))))

(assert (=> b!2579161 d!729730))

(declare-fun d!729732 () Bool)

(declare-fun getCurrentListMap!15 (array!12305 array!12303 (_ BitVec 32) (_ BitVec 32) List!29803 List!29803 (_ BitVec 32) Int) ListLongMap!679)

(assert (=> d!729732 (= (map!6591 lt!907557) (getCurrentListMap!15 (_keys!3747 lt!907557) (_values!3730 lt!907557) (mask!8881 lt!907557) (extraKeys!3698 lt!907557) (zeroValue!3708 lt!907557) (minValue!3708 lt!907557) #b00000000000000000000000000000000 (defaultEntry!3830 lt!907557)))))

(declare-fun bs!471100 () Bool)

(assert (= bs!471100 d!729732))

(declare-fun m!2914151 () Bool)

(assert (=> bs!471100 m!2914151))

(assert (=> b!2579161 d!729732))

(declare-fun d!729734 () Bool)

(declare-fun e!1627622 () Bool)

(assert (=> d!729734 e!1627622))

(declare-fun c!415417 () Bool)

(assert (=> d!729734 (= c!415417 (and (not (= (_1!17381 lt!907569) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!17381 lt!907569) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!907577 () Unit!43536)

(declare-fun choose!15204 (array!12305 array!12303 (_ BitVec 32) (_ BitVec 32) List!29803 List!29803 (_ BitVec 64) Int) Unit!43536)

(assert (=> d!729734 (= lt!907577 (choose!15204 lt!907573 (array!12304 ((as const (Array (_ BitVec 32) List!29803)) lt!907553) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907568 lt!907553 lt!907553 (_1!17381 lt!907569) lambda!95560))))

(assert (=> d!729734 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(assert (=> d!729734 (= (lemmaKeyInListMapIsInArray!12 lt!907573 (array!12304 ((as const (Array (_ BitVec 32) List!29803)) lt!907553) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907568 lt!907553 lt!907553 (_1!17381 lt!907569) lambda!95560) lt!907577)))

(declare-fun b!2579183 () Bool)

(assert (=> b!2579183 (= e!1627622 (arrayContainsKey!0 lt!907573 (_1!17381 lt!907569) #b00000000000000000000000000000000))))

(declare-fun b!2579184 () Bool)

(assert (=> b!2579184 (= e!1627622 (ite (= (_1!17381 lt!907569) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!907568 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!907568 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!729734 c!415417) b!2579183))

(assert (= (and d!729734 (not c!415417)) b!2579184))

(declare-fun m!2914153 () Bool)

(assert (=> d!729734 m!2914153))

(assert (=> d!729734 m!2914011))

(assert (=> b!2579183 m!2914111))

(assert (=> b!2579161 d!729734))

(declare-fun d!729736 () Bool)

(declare-fun lt!907580 () (_ BitVec 32))

(assert (=> d!729736 (and (or (bvslt lt!907580 #b00000000000000000000000000000000) (bvsge lt!907580 (size!23024 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!907580 #b00000000000000000000000000000000) (bvslt lt!907580 (size!23024 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!907580 #b00000000000000000000000000000000) (bvslt lt!907580 (size!23024 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!5491 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!907580) (_1!17381 lt!907569)))))

(declare-fun e!1627625 () (_ BitVec 32))

(assert (=> d!729736 (= lt!907580 e!1627625)))

(declare-fun c!415420 () Bool)

(assert (=> d!729736 (= c!415420 (= (select (arr!5491 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!17381 lt!907569)))))

(assert (=> d!729736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!23024 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!23024 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!729736 (= (arrayScanForKey!0 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!17381 lt!907569) #b00000000000000000000000000000000) lt!907580)))

(declare-fun b!2579189 () Bool)

(assert (=> b!2579189 (= e!1627625 #b00000000000000000000000000000000)))

(declare-fun b!2579190 () Bool)

(assert (=> b!2579190 (= e!1627625 (arrayScanForKey!0 (array!12306 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!17381 lt!907569) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!729736 c!415420) b!2579189))

(assert (= (and d!729736 (not c!415420)) b!2579190))

(declare-fun m!2914155 () Bool)

(assert (=> d!729736 m!2914155))

(declare-fun m!2914157 () Bool)

(assert (=> d!729736 m!2914157))

(declare-fun m!2914159 () Bool)

(assert (=> b!2579190 m!2914159))

(assert (=> b!2579161 d!729736))

(declare-fun d!729738 () Bool)

(assert (=> d!729738 (= (arrayCountValidKeys!0 lt!907564 lt!907567 lt!907571) #b00000000000000000000000000000000)))

(declare-fun lt!907583 () Unit!43536)

(declare-fun choose!424 (array!12305 (_ BitVec 32) (_ BitVec 32)) Unit!43536)

(assert (=> d!729738 (= lt!907583 (choose!424 lt!907564 lt!907567 lt!907571))))

(assert (=> d!729738 (bvslt (size!23024 lt!907564) #b01111111111111111111111111111111)))

(assert (=> d!729738 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!907564 lt!907567 lt!907571) lt!907583)))

(declare-fun bs!471101 () Bool)

(assert (= bs!471101 d!729738))

(assert (=> bs!471101 m!2914121))

(declare-fun m!2914161 () Bool)

(assert (=> bs!471101 m!2914161))

(assert (=> d!729718 d!729738))

(declare-fun d!729740 () Bool)

(assert (=> d!729740 (arrayNoDuplicates!0 lt!907552 lt!907561 lt!907558)))

(declare-fun lt!907586 () Unit!43536)

(declare-fun choose!793 (array!12305 (_ BitVec 32) (_ BitVec 32) List!29807) Unit!43536)

(assert (=> d!729740 (= lt!907586 (choose!793 lt!907552 lt!907561 (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!907558))))

(assert (=> d!729740 (= (size!23024 lt!907552) (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!729740 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!907552 lt!907561 (bvadd (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!907558) lt!907586)))

(declare-fun bs!471102 () Bool)

(assert (= bs!471102 d!729740))

(assert (=> bs!471102 m!2914117))

(declare-fun m!2914163 () Bool)

(assert (=> bs!471102 m!2914163))

(assert (=> d!729718 d!729740))

(declare-fun b!2579199 () Bool)

(declare-fun e!1627631 () (_ BitVec 32))

(declare-fun call!166718 () (_ BitVec 32))

(assert (=> b!2579199 (= e!1627631 call!166718)))

(declare-fun bm!166713 () Bool)

(assert (=> bm!166713 (= call!166718 (arrayCountValidKeys!0 lt!907564 (bvadd lt!907567 #b00000000000000000000000000000001) lt!907571))))

(declare-fun d!729742 () Bool)

(declare-fun lt!907589 () (_ BitVec 32))

(assert (=> d!729742 (and (bvsge lt!907589 #b00000000000000000000000000000000) (bvsle lt!907589 (bvsub (size!23024 lt!907564) lt!907567)))))

(declare-fun e!1627630 () (_ BitVec 32))

(assert (=> d!729742 (= lt!907589 e!1627630)))

(declare-fun c!415425 () Bool)

(assert (=> d!729742 (= c!415425 (bvsge lt!907567 lt!907571))))

(assert (=> d!729742 (and (bvsle lt!907567 lt!907571) (bvsge lt!907567 #b00000000000000000000000000000000) (bvsle lt!907571 (size!23024 lt!907564)))))

(assert (=> d!729742 (= (arrayCountValidKeys!0 lt!907564 lt!907567 lt!907571) lt!907589)))

(declare-fun b!2579200 () Bool)

(assert (=> b!2579200 (= e!1627631 (bvadd #b00000000000000000000000000000001 call!166718))))

(declare-fun b!2579201 () Bool)

(assert (=> b!2579201 (= e!1627630 #b00000000000000000000000000000000)))

(declare-fun b!2579202 () Bool)

(assert (=> b!2579202 (= e!1627630 e!1627631)))

(declare-fun c!415426 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!2579202 (= c!415426 (validKeyInArray!0 (select (arr!5491 lt!907564) lt!907567)))))

(assert (= (and d!729742 c!415425) b!2579201))

(assert (= (and d!729742 (not c!415425)) b!2579202))

(assert (= (and b!2579202 c!415426) b!2579200))

(assert (= (and b!2579202 (not c!415426)) b!2579199))

(assert (= (or b!2579200 b!2579199) bm!166713))

(declare-fun m!2914165 () Bool)

(assert (=> bm!166713 m!2914165))

(declare-fun m!2914167 () Bool)

(assert (=> b!2579202 m!2914167))

(assert (=> b!2579202 m!2914167))

(declare-fun m!2914169 () Bool)

(assert (=> b!2579202 m!2914169))

(assert (=> d!729718 d!729742))

(declare-fun d!729744 () Bool)

(declare-fun res!1084993 () Bool)

(declare-fun e!1627632 () Bool)

(assert (=> d!729744 (=> (not res!1084993) (not e!1627632))))

(assert (=> d!729744 (= res!1084993 (simpleValid!7 lt!907559))))

(assert (=> d!729744 (= (valid!2673 lt!907559) e!1627632)))

(declare-fun b!2579203 () Bool)

(declare-fun res!1084994 () Bool)

(assert (=> b!2579203 (=> (not res!1084994) (not e!1627632))))

(assert (=> b!2579203 (= res!1084994 (= (arrayCountValidKeys!0 (_keys!3747 lt!907559) #b00000000000000000000000000000000 (size!23024 (_keys!3747 lt!907559))) (_size!6943 lt!907559)))))

(declare-fun b!2579204 () Bool)

(declare-fun res!1084995 () Bool)

(assert (=> b!2579204 (=> (not res!1084995) (not e!1627632))))

(assert (=> b!2579204 (= res!1084995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3747 lt!907559) (mask!8881 lt!907559)))))

(declare-fun b!2579205 () Bool)

(assert (=> b!2579205 (= e!1627632 (arrayNoDuplicates!0 (_keys!3747 lt!907559) #b00000000000000000000000000000000 Nil!29707))))

(assert (= (and d!729744 res!1084993) b!2579203))

(assert (= (and b!2579203 res!1084994) b!2579204))

(assert (= (and b!2579204 res!1084995) b!2579205))

(declare-fun m!2914171 () Bool)

(assert (=> d!729744 m!2914171))

(declare-fun m!2914173 () Bool)

(assert (=> b!2579203 m!2914173))

(declare-fun m!2914175 () Bool)

(assert (=> b!2579204 m!2914175))

(declare-fun m!2914177 () Bool)

(assert (=> b!2579205 m!2914177))

(assert (=> d!729718 d!729744))

(declare-fun d!729746 () Bool)

(declare-fun res!1085004 () Bool)

(declare-fun e!1627641 () Bool)

(assert (=> d!729746 (=> res!1085004 e!1627641)))

(assert (=> d!729746 (= res!1085004 (bvsge lt!907561 (size!23024 lt!907552)))))

(assert (=> d!729746 (= (arrayNoDuplicates!0 lt!907552 lt!907561 lt!907558) e!1627641)))

(declare-fun e!1627643 () Bool)

(declare-fun b!2579216 () Bool)

(declare-fun contains!5311 (List!29807 (_ BitVec 64)) Bool)

(assert (=> b!2579216 (= e!1627643 (contains!5311 lt!907558 (select (arr!5491 lt!907552) lt!907561)))))

(declare-fun b!2579217 () Bool)

(declare-fun e!1627644 () Bool)

(assert (=> b!2579217 (= e!1627641 e!1627644)))

(declare-fun res!1085003 () Bool)

(assert (=> b!2579217 (=> (not res!1085003) (not e!1627644))))

(assert (=> b!2579217 (= res!1085003 (not e!1627643))))

(declare-fun res!1085002 () Bool)

(assert (=> b!2579217 (=> (not res!1085002) (not e!1627643))))

(assert (=> b!2579217 (= res!1085002 (validKeyInArray!0 (select (arr!5491 lt!907552) lt!907561)))))

(declare-fun b!2579218 () Bool)

(declare-fun e!1627642 () Bool)

(declare-fun call!166721 () Bool)

(assert (=> b!2579218 (= e!1627642 call!166721)))

(declare-fun b!2579219 () Bool)

(assert (=> b!2579219 (= e!1627644 e!1627642)))

(declare-fun c!415429 () Bool)

(assert (=> b!2579219 (= c!415429 (validKeyInArray!0 (select (arr!5491 lt!907552) lt!907561)))))

(declare-fun bm!166716 () Bool)

(assert (=> bm!166716 (= call!166721 (arrayNoDuplicates!0 lt!907552 (bvadd lt!907561 #b00000000000000000000000000000001) (ite c!415429 (Cons!29707 (select (arr!5491 lt!907552) lt!907561) lt!907558) lt!907558)))))

(declare-fun b!2579220 () Bool)

(assert (=> b!2579220 (= e!1627642 call!166721)))

(assert (= (and d!729746 (not res!1085004)) b!2579217))

(assert (= (and b!2579217 res!1085002) b!2579216))

(assert (= (and b!2579217 res!1085003) b!2579219))

(assert (= (and b!2579219 c!415429) b!2579220))

(assert (= (and b!2579219 (not c!415429)) b!2579218))

(assert (= (or b!2579220 b!2579218) bm!166716))

(declare-fun m!2914179 () Bool)

(assert (=> b!2579216 m!2914179))

(assert (=> b!2579216 m!2914179))

(declare-fun m!2914181 () Bool)

(assert (=> b!2579216 m!2914181))

(assert (=> b!2579217 m!2914179))

(assert (=> b!2579217 m!2914179))

(declare-fun m!2914183 () Bool)

(assert (=> b!2579217 m!2914183))

(assert (=> b!2579219 m!2914179))

(assert (=> b!2579219 m!2914179))

(assert (=> b!2579219 m!2914183))

(assert (=> bm!166716 m!2914179))

(declare-fun m!2914185 () Bool)

(assert (=> bm!166716 m!2914185))

(assert (=> d!729718 d!729746))

(declare-fun d!729748 () Bool)

(assert (=> d!729748 (arrayForallSeekEntryOrOpenFound!0 lt!907556 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(declare-fun lt!907592 () Unit!43536)

(declare-fun choose!588 (array!12305 (_ BitVec 32) (_ BitVec 32)) Unit!43536)

(assert (=> d!729748 (= lt!907592 (choose!588 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907556))))

(assert (=> d!729748 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(assert (=> d!729748 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001) lt!907556) lt!907592)))

(declare-fun bs!471103 () Bool)

(assert (= bs!471103 d!729748))

(assert (=> bs!471103 m!2914123))

(declare-fun m!2914187 () Bool)

(assert (=> bs!471103 m!2914187))

(assert (=> bs!471103 m!2914011))

(assert (=> d!729718 d!729748))

(assert (=> d!729718 d!729732))

(assert (=> d!729718 d!729678))

(declare-fun bm!166719 () Bool)

(declare-fun call!166724 () Bool)

(assert (=> bm!166719 (= call!166724 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!907556 #b00000000000000000000000000000001) lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(declare-fun b!2579229 () Bool)

(declare-fun e!1627651 () Bool)

(assert (=> b!2579229 (= e!1627651 call!166724)))

(declare-fun d!729750 () Bool)

(declare-fun res!1085009 () Bool)

(declare-fun e!1627652 () Bool)

(assert (=> d!729750 (=> res!1085009 e!1627652)))

(assert (=> d!729750 (= res!1085009 (bvsge lt!907556 (size!23024 lt!907574)))))

(assert (=> d!729750 (= (arrayForallSeekEntryOrOpenFound!0 lt!907556 lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001)) e!1627652)))

(declare-fun b!2579230 () Bool)

(assert (=> b!2579230 (= e!1627652 e!1627651)))

(declare-fun c!415432 () Bool)

(assert (=> b!2579230 (= c!415432 (validKeyInArray!0 (select (arr!5491 lt!907574) lt!907556)))))

(declare-fun b!2579231 () Bool)

(declare-fun e!1627653 () Bool)

(assert (=> b!2579231 (= e!1627651 e!1627653)))

(declare-fun lt!907600 () (_ BitVec 64))

(assert (=> b!2579231 (= lt!907600 (select (arr!5491 lt!907574) lt!907556))))

(declare-fun lt!907601 () Unit!43536)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12305 (_ BitVec 64) (_ BitVec 32)) Unit!43536)

(assert (=> b!2579231 (= lt!907601 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!907574 lt!907600 lt!907556))))

(assert (=> b!2579231 (arrayContainsKey!0 lt!907574 lt!907600 #b00000000000000000000000000000000)))

(declare-fun lt!907599 () Unit!43536)

(assert (=> b!2579231 (= lt!907599 lt!907601)))

(declare-fun res!1085010 () Bool)

(declare-datatypes ((SeekEntryResult!12 0))(
  ( (Found!12 (index!1199 (_ BitVec 32))) (Undefined!12) (MissingZero!12 (index!1200 (_ BitVec 32))) (MissingVacant!12 (index!1201 (_ BitVec 32))) (Intermediate!12 (undefined!93 Bool) (index!1202 (_ BitVec 32)) (x!464676 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12305 (_ BitVec 32)) SeekEntryResult!12)

(assert (=> b!2579231 (= res!1085010 (= (seekEntryOrOpen!0 (select (arr!5491 lt!907574) lt!907556) lt!907574 (bvsub initialSize!22 #b00000000000000000000000000000001)) (Found!12 lt!907556)))))

(assert (=> b!2579231 (=> (not res!1085010) (not e!1627653))))

(declare-fun b!2579232 () Bool)

(assert (=> b!2579232 (= e!1627653 call!166724)))

(assert (= (and d!729750 (not res!1085009)) b!2579230))

(assert (= (and b!2579230 c!415432) b!2579231))

(assert (= (and b!2579230 (not c!415432)) b!2579229))

(assert (= (and b!2579231 res!1085010) b!2579232))

(assert (= (or b!2579232 b!2579229) bm!166719))

(declare-fun m!2914189 () Bool)

(assert (=> bm!166719 m!2914189))

(declare-fun m!2914191 () Bool)

(assert (=> b!2579230 m!2914191))

(assert (=> b!2579230 m!2914191))

(declare-fun m!2914193 () Bool)

(assert (=> b!2579230 m!2914193))

(assert (=> b!2579231 m!2914191))

(declare-fun m!2914195 () Bool)

(assert (=> b!2579231 m!2914195))

(declare-fun m!2914197 () Bool)

(assert (=> b!2579231 m!2914197))

(assert (=> b!2579231 m!2914191))

(declare-fun m!2914199 () Bool)

(assert (=> b!2579231 m!2914199))

(assert (=> d!729718 d!729750))

(declare-fun d!729752 () Bool)

(declare-fun res!1085011 () Bool)

(declare-fun e!1627654 () Bool)

(assert (=> d!729752 (=> res!1085011 e!1627654)))

(assert (=> d!729752 (= res!1085011 ((_ is Nil!29705) (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))))

(assert (=> d!729752 (= (forall!6049 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))) lambda!95572) e!1627654)))

(declare-fun b!2579233 () Bool)

(declare-fun e!1627655 () Bool)

(assert (=> b!2579233 (= e!1627654 e!1627655)))

(declare-fun res!1085012 () Bool)

(assert (=> b!2579233 (=> (not res!1085012) (not e!1627655))))

(assert (=> b!2579233 (= res!1085012 (dynLambda!12538 lambda!95572 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))

(declare-fun b!2579234 () Bool)

(assert (=> b!2579234 (= e!1627655 (forall!6049 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))) lambda!95572))))

(assert (= (and d!729752 (not res!1085011)) b!2579233))

(assert (= (and b!2579233 res!1085012) b!2579234))

(declare-fun b_lambda!76551 () Bool)

(assert (=> (not b_lambda!76551) (not b!2579233)))

(declare-fun m!2914201 () Bool)

(assert (=> b!2579233 m!2914201))

(declare-fun m!2914203 () Bool)

(assert (=> b!2579234 m!2914203))

(assert (=> d!729716 d!729752))

(declare-fun d!729754 () Bool)

(assert (=> d!729754 (= (map!6591 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (getCurrentListMap!15 (_keys!3747 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (_values!3730 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (mask!8881 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (extraKeys!3698 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (zeroValue!3708 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) (minValue!3708 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418))))) #b00000000000000000000000000000000 (defaultEntry!3830 (v!32017 (underlying!7103 (v!32018 (underlying!7104 lt!907418)))))))))

(declare-fun bs!471104 () Bool)

(assert (= bs!471104 d!729754))

(declare-fun m!2914205 () Bool)

(assert (=> bs!471104 m!2914205))

(assert (=> d!729712 d!729754))

(declare-fun d!729756 () Bool)

(declare-fun res!1085017 () Bool)

(declare-fun e!1627660 () Bool)

(assert (=> d!729756 (=> res!1085017 e!1627660)))

(assert (=> d!729756 (= res!1085017 (= (select (arr!5491 lt!907573) #b00000000000000000000000000000000) (_1!17381 lt!907569)))))

(assert (=> d!729756 (= (arrayContainsKey!0 lt!907573 (_1!17381 lt!907569) #b00000000000000000000000000000000) e!1627660)))

(declare-fun b!2579239 () Bool)

(declare-fun e!1627661 () Bool)

(assert (=> b!2579239 (= e!1627660 e!1627661)))

(declare-fun res!1085018 () Bool)

(assert (=> b!2579239 (=> (not res!1085018) (not e!1627661))))

(assert (=> b!2579239 (= res!1085018 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!23024 lt!907573)))))

(declare-fun b!2579240 () Bool)

(assert (=> b!2579240 (= e!1627661 (arrayContainsKey!0 lt!907573 (_1!17381 lt!907569) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!729756 (not res!1085017)) b!2579239))

(assert (= (and b!2579239 res!1085018) b!2579240))

(declare-fun m!2914207 () Bool)

(assert (=> d!729756 m!2914207))

(declare-fun m!2914209 () Bool)

(assert (=> b!2579240 m!2914209))

(assert (=> b!2579162 d!729756))

(declare-fun d!729758 () Bool)

(assert (=> d!729758 (= (map!6591 lt!907559) (getCurrentListMap!15 (_keys!3747 lt!907559) (_values!3730 lt!907559) (mask!8881 lt!907559) (extraKeys!3698 lt!907559) (zeroValue!3708 lt!907559) (minValue!3708 lt!907559) #b00000000000000000000000000000000 (defaultEntry!3830 lt!907559)))))

(declare-fun bs!471105 () Bool)

(assert (= bs!471105 d!729758))

(declare-fun m!2914211 () Bool)

(assert (=> bs!471105 m!2914211))

(assert (=> b!2579163 d!729758))

(declare-fun d!729760 () Bool)

(declare-fun res!1085023 () Bool)

(declare-fun e!1627666 () Bool)

(assert (=> d!729760 (=> res!1085023 e!1627666)))

(assert (=> d!729760 (= res!1085023 (not ((_ is Cons!29703) (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))))

(assert (=> d!729760 (= (noDuplicateKeys!130 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))) e!1627666)))

(declare-fun b!2579245 () Bool)

(declare-fun e!1627667 () Bool)

(assert (=> b!2579245 (= e!1627666 e!1627667)))

(declare-fun res!1085024 () Bool)

(assert (=> b!2579245 (=> (not res!1085024) (not e!1627667))))

(declare-fun containsKey!186 (List!29803 K!5914) Bool)

(assert (=> b!2579245 (= res!1085024 (not (containsKey!186 (t!211688 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))) (_1!17379 (h!35123 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))))))

(declare-fun b!2579246 () Bool)

(assert (=> b!2579246 (= e!1627667 (noDuplicateKeys!130 (t!211688 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))))

(assert (= (and d!729760 (not res!1085023)) b!2579245))

(assert (= (and b!2579245 res!1085024) b!2579246))

(declare-fun m!2914213 () Bool)

(assert (=> b!2579245 m!2914213))

(declare-fun m!2914215 () Bool)

(assert (=> b!2579246 m!2914215))

(assert (=> bs!471099 d!729760))

(declare-fun d!729762 () Bool)

(declare-fun res!1085025 () Bool)

(declare-fun e!1627668 () Bool)

(assert (=> d!729762 (=> res!1085025 e!1627668)))

(assert (=> d!729762 (= res!1085025 ((_ is Nil!29705) (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))

(assert (=> d!729762 (= (forall!6049 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))) lambda!95566) e!1627668)))

(declare-fun b!2579247 () Bool)

(declare-fun e!1627669 () Bool)

(assert (=> b!2579247 (= e!1627668 e!1627669)))

(declare-fun res!1085026 () Bool)

(assert (=> b!2579247 (=> (not res!1085026) (not e!1627669))))

(assert (=> b!2579247 (= res!1085026 (dynLambda!12538 lambda!95566 (h!35125 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))))))

(declare-fun b!2579248 () Bool)

(assert (=> b!2579248 (= e!1627669 (forall!6049 (t!211690 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))) lambda!95566))))

(assert (= (and d!729762 (not res!1085025)) b!2579247))

(assert (= (and b!2579247 res!1085026) b!2579248))

(declare-fun b_lambda!76553 () Bool)

(assert (=> (not b_lambda!76553) (not b!2579247)))

(declare-fun m!2914217 () Bool)

(assert (=> b!2579247 m!2914217))

(declare-fun m!2914219 () Bool)

(assert (=> b!2579248 m!2914219))

(assert (=> b!2579146 d!729762))

(declare-fun d!729764 () Bool)

(assert (=> d!729764 (= (size!23028 (v!32017 (underlying!7103 lt!907430))) (bvadd (_size!6943 (v!32017 (underlying!7103 lt!907430))) (bvsdiv (bvadd (extraKeys!3698 (v!32017 (underlying!7103 lt!907430))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!729714 d!729764))

(declare-fun b_lambda!76555 () Bool)

(assert (= b_lambda!76551 (or d!729716 b_lambda!76555)))

(declare-fun bs!471106 () Bool)

(declare-fun d!729766 () Bool)

(assert (= bs!471106 (and d!729766 d!729716)))

(declare-fun allKeysSameHash!102 (List!29803 (_ BitVec 64) Hashable!3366) Bool)

(assert (=> bs!471106 (= (dynLambda!12538 lambda!95572 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))) (allKeysSameHash!102 (_2!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))) (_1!17381 (h!35125 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))) (hashF!5396 lt!907418)))))

(declare-fun m!2914221 () Bool)

(assert (=> bs!471106 m!2914221))

(assert (=> b!2579233 d!729766))

(declare-fun b_lambda!76557 () Bool)

(assert (= b_lambda!76553 (or b!2579107 b_lambda!76557)))

(declare-fun bs!471107 () Bool)

(declare-fun d!729768 () Bool)

(assert (= bs!471107 (and d!729768 b!2579107)))

(assert (=> bs!471107 (= (dynLambda!12538 lambda!95566 (h!35125 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418))))))) (noDuplicateKeys!130 (_2!17381 (h!35125 (t!211690 (toList!1728 (map!6589 (v!32018 (underlying!7104 lt!907418)))))))))))

(declare-fun m!2914223 () Bool)

(assert (=> bs!471107 m!2914223))

(assert (=> b!2579247 d!729768))

(check-sat (not d!729740) (not b!2579174) (not d!729758) (not bs!471106) (not b!2579202) (not b!2579246) (not b!2579231) (not d!729734) (not bm!166716) (not b!2579217) (not b_lambda!76549) (not d!729728) (not bs!471107) (not b!2579245) (not b!2579177) (not b!2579175) (not b_lambda!76555) (not d!729732) (not bm!166719) (not b!2579216) (not d!729754) (not b_lambda!76557) (not b!2579190) (not bm!166713) (not b_next!73299) b_and!188889 (not b!2579230) (not b!2579176) (not b!2579205) (not b!2579204) (not d!729748) (not b!2579219) (not b!2579203) (not d!729738) (not d!729744) (not d!729726) (not b!2579183) (not b_lambda!76547) (not b!2579240) (not b!2579234) (not b!2579178) (not b!2579173) (not b!2579248))
(check-sat b_and!188889 (not b_next!73299))
