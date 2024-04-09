; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34926 () Bool)

(assert start!34926)

(declare-fun b_free!7659 () Bool)

(declare-fun b_next!7659 () Bool)

(assert (=> start!34926 (= b_free!7659 (not b_next!7659))))

(declare-fun tp!26550 () Bool)

(declare-fun b_and!14903 () Bool)

(assert (=> start!34926 (= tp!26550 b_and!14903)))

(declare-fun b!349543 () Bool)

(declare-fun res!193802 () Bool)

(declare-fun e!214122 () Bool)

(assert (=> b!349543 (=> (not res!193802) (not e!214122))))

(declare-datatypes ((array!18775 0))(
  ( (array!18776 (arr!8892 (Array (_ BitVec 32) (_ BitVec 64))) (size!9244 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18775)

(declare-datatypes ((List!5197 0))(
  ( (Nil!5194) (Cons!5193 (h!6049 (_ BitVec 64)) (t!10339 List!5197)) )
))
(declare-fun arrayNoDuplicates!0 (array!18775 (_ BitVec 32) List!5197) Bool)

(assert (=> b!349543 (= res!193802 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5194))))

(declare-fun res!193807 () Bool)

(assert (=> start!34926 (=> (not res!193807) (not e!214122))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34926 (= res!193807 (validMask!0 mask!2385))))

(assert (=> start!34926 e!214122))

(assert (=> start!34926 true))

(declare-fun tp_is_empty!7611 () Bool)

(assert (=> start!34926 tp_is_empty!7611))

(assert (=> start!34926 tp!26550))

(declare-datatypes ((V!11125 0))(
  ( (V!11126 (val!3850 Int)) )
))
(declare-datatypes ((ValueCell!3462 0))(
  ( (ValueCellFull!3462 (v!6031 V!11125)) (EmptyCell!3462) )
))
(declare-datatypes ((array!18777 0))(
  ( (array!18778 (arr!8893 (Array (_ BitVec 32) ValueCell!3462)) (size!9245 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18777)

(declare-fun e!214125 () Bool)

(declare-fun array_inv!6554 (array!18777) Bool)

(assert (=> start!34926 (and (array_inv!6554 _values!1525) e!214125)))

(declare-fun array_inv!6555 (array!18775) Bool)

(assert (=> start!34926 (array_inv!6555 _keys!1895)))

(declare-fun b!349544 () Bool)

(declare-fun res!193809 () Bool)

(assert (=> b!349544 (=> (not res!193809) (not e!214122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18775 (_ BitVec 32)) Bool)

(assert (=> b!349544 (= res!193809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349545 () Bool)

(declare-fun e!214127 () Bool)

(assert (=> b!349545 (= e!214127 tp_is_empty!7611)))

(declare-fun b!349546 () Bool)

(declare-fun e!214129 () Bool)

(declare-fun mapRes!12882 () Bool)

(assert (=> b!349546 (= e!214125 (and e!214129 mapRes!12882))))

(declare-fun condMapEmpty!12882 () Bool)

(declare-fun mapDefault!12882 () ValueCell!3462)

(assert (=> b!349546 (= condMapEmpty!12882 (= (arr!8893 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3462)) mapDefault!12882)))))

(declare-fun mapNonEmpty!12882 () Bool)

(declare-fun tp!26549 () Bool)

(assert (=> mapNonEmpty!12882 (= mapRes!12882 (and tp!26549 e!214127))))

(declare-fun mapKey!12882 () (_ BitVec 32))

(declare-fun mapRest!12882 () (Array (_ BitVec 32) ValueCell!3462))

(declare-fun mapValue!12882 () ValueCell!3462)

(assert (=> mapNonEmpty!12882 (= (arr!8893 _values!1525) (store mapRest!12882 mapKey!12882 mapValue!12882))))

(declare-fun b!349547 () Bool)

(declare-fun res!193806 () Bool)

(assert (=> b!349547 (=> (not res!193806) (not e!214122))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!349547 (= res!193806 (and (= (size!9245 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9244 _keys!1895) (size!9245 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349548 () Bool)

(declare-fun e!214126 () Bool)

(declare-fun e!214123 () Bool)

(assert (=> b!349548 (= e!214126 e!214123)))

(declare-fun res!193805 () Bool)

(assert (=> b!349548 (=> (not res!193805) (not e!214123))))

(declare-fun lt!164245 () Bool)

(assert (=> b!349548 (= res!193805 (not lt!164245))))

(declare-datatypes ((Unit!10829 0))(
  ( (Unit!10830) )
))
(declare-fun lt!164244 () Unit!10829)

(declare-fun e!214128 () Unit!10829)

(assert (=> b!349548 (= lt!164244 e!214128)))

(declare-fun c!53222 () Bool)

(assert (=> b!349548 (= c!53222 lt!164245)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349548 (= lt!164245 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!349549 () Bool)

(declare-fun Unit!10831 () Unit!10829)

(assert (=> b!349549 (= e!214128 Unit!10831)))

(declare-fun b!349550 () Bool)

(declare-fun res!193804 () Bool)

(assert (=> b!349550 (=> (not res!193804) (not e!214122))))

(declare-fun zeroValue!1467 () V!11125)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11125)

(declare-datatypes ((tuple2!5558 0))(
  ( (tuple2!5559 (_1!2789 (_ BitVec 64)) (_2!2789 V!11125)) )
))
(declare-datatypes ((List!5198 0))(
  ( (Nil!5195) (Cons!5194 (h!6050 tuple2!5558) (t!10340 List!5198)) )
))
(declare-datatypes ((ListLongMap!4485 0))(
  ( (ListLongMap!4486 (toList!2258 List!5198)) )
))
(declare-fun contains!2321 (ListLongMap!4485 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1775 (array!18775 array!18777 (_ BitVec 32) (_ BitVec 32) V!11125 V!11125 (_ BitVec 32) Int) ListLongMap!4485)

(assert (=> b!349550 (= res!193804 (not (contains!2321 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!349551 () Bool)

(declare-datatypes ((SeekEntryResult!3424 0))(
  ( (MissingZero!3424 (index!15875 (_ BitVec 32))) (Found!3424 (index!15876 (_ BitVec 32))) (Intermediate!3424 (undefined!4236 Bool) (index!15877 (_ BitVec 32)) (x!34815 (_ BitVec 32))) (Undefined!3424) (MissingVacant!3424 (index!15878 (_ BitVec 32))) )
))
(declare-fun lt!164247 () SeekEntryResult!3424)

(assert (=> b!349551 (= e!214123 (or (bvslt (index!15875 lt!164247) #b00000000000000000000000000000000) (bvsge (index!15875 lt!164247) (size!9244 _keys!1895))))))

(declare-fun b!349552 () Bool)

(assert (=> b!349552 (= e!214122 e!214126)))

(declare-fun res!193803 () Bool)

(assert (=> b!349552 (=> (not res!193803) (not e!214126))))

(get-info :version)

(assert (=> b!349552 (= res!193803 (and (not ((_ is Found!3424) lt!164247)) ((_ is MissingZero!3424) lt!164247)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18775 (_ BitVec 32)) SeekEntryResult!3424)

(assert (=> b!349552 (= lt!164247 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!349553 () Bool)

(declare-fun res!193801 () Bool)

(assert (=> b!349553 (=> (not res!193801) (not e!214122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349553 (= res!193801 (validKeyInArray!0 k0!1348))))

(declare-fun b!349554 () Bool)

(declare-fun res!193808 () Bool)

(assert (=> b!349554 (=> (not res!193808) (not e!214123))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!349554 (= res!193808 (inRange!0 (index!15875 lt!164247) mask!2385))))

(declare-fun mapIsEmpty!12882 () Bool)

(assert (=> mapIsEmpty!12882 mapRes!12882))

(declare-fun b!349555 () Bool)

(assert (=> b!349555 (= e!214129 tp_is_empty!7611)))

(declare-fun b!349556 () Bool)

(declare-fun Unit!10832 () Unit!10829)

(assert (=> b!349556 (= e!214128 Unit!10832)))

(declare-fun lt!164246 () Unit!10829)

(declare-fun lemmaArrayContainsKeyThenInListMap!321 (array!18775 array!18777 (_ BitVec 32) (_ BitVec 32) V!11125 V!11125 (_ BitVec 64) (_ BitVec 32) Int) Unit!10829)

(declare-fun arrayScanForKey!0 (array!18775 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349556 (= lt!164246 (lemmaArrayContainsKeyThenInListMap!321 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349556 false))

(assert (= (and start!34926 res!193807) b!349547))

(assert (= (and b!349547 res!193806) b!349544))

(assert (= (and b!349544 res!193809) b!349543))

(assert (= (and b!349543 res!193802) b!349553))

(assert (= (and b!349553 res!193801) b!349550))

(assert (= (and b!349550 res!193804) b!349552))

(assert (= (and b!349552 res!193803) b!349548))

(assert (= (and b!349548 c!53222) b!349556))

(assert (= (and b!349548 (not c!53222)) b!349549))

(assert (= (and b!349548 res!193805) b!349554))

(assert (= (and b!349554 res!193808) b!349551))

(assert (= (and b!349546 condMapEmpty!12882) mapIsEmpty!12882))

(assert (= (and b!349546 (not condMapEmpty!12882)) mapNonEmpty!12882))

(assert (= (and mapNonEmpty!12882 ((_ is ValueCellFull!3462) mapValue!12882)) b!349545))

(assert (= (and b!349546 ((_ is ValueCellFull!3462) mapDefault!12882)) b!349555))

(assert (= start!34926 b!349546))

(declare-fun m!349999 () Bool)

(assert (=> b!349544 m!349999))

(declare-fun m!350001 () Bool)

(assert (=> b!349556 m!350001))

(assert (=> b!349556 m!350001))

(declare-fun m!350003 () Bool)

(assert (=> b!349556 m!350003))

(declare-fun m!350005 () Bool)

(assert (=> b!349554 m!350005))

(declare-fun m!350007 () Bool)

(assert (=> b!349553 m!350007))

(declare-fun m!350009 () Bool)

(assert (=> start!34926 m!350009))

(declare-fun m!350011 () Bool)

(assert (=> start!34926 m!350011))

(declare-fun m!350013 () Bool)

(assert (=> start!34926 m!350013))

(declare-fun m!350015 () Bool)

(assert (=> b!349543 m!350015))

(declare-fun m!350017 () Bool)

(assert (=> mapNonEmpty!12882 m!350017))

(declare-fun m!350019 () Bool)

(assert (=> b!349548 m!350019))

(declare-fun m!350021 () Bool)

(assert (=> b!349550 m!350021))

(assert (=> b!349550 m!350021))

(declare-fun m!350023 () Bool)

(assert (=> b!349550 m!350023))

(declare-fun m!350025 () Bool)

(assert (=> b!349552 m!350025))

(check-sat (not b!349552) (not b!349544) (not b!349550) (not b!349543) b_and!14903 (not start!34926) (not b!349553) (not b_next!7659) (not b!349548) tp_is_empty!7611 (not b!349554) (not b!349556) (not mapNonEmpty!12882))
(check-sat b_and!14903 (not b_next!7659))
(get-model)

(declare-fun d!71241 () Bool)

(declare-fun e!214159 () Bool)

(assert (=> d!71241 e!214159))

(declare-fun res!193839 () Bool)

(assert (=> d!71241 (=> res!193839 e!214159)))

(declare-fun lt!164271 () Bool)

(assert (=> d!71241 (= res!193839 (not lt!164271))))

(declare-fun lt!164270 () Bool)

(assert (=> d!71241 (= lt!164271 lt!164270)))

(declare-fun lt!164269 () Unit!10829)

(declare-fun e!214158 () Unit!10829)

(assert (=> d!71241 (= lt!164269 e!214158)))

(declare-fun c!53228 () Bool)

(assert (=> d!71241 (= c!53228 lt!164270)))

(declare-fun containsKey!338 (List!5198 (_ BitVec 64)) Bool)

(assert (=> d!71241 (= lt!164270 (containsKey!338 (toList!2258 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71241 (= (contains!2321 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!164271)))

(declare-fun b!349605 () Bool)

(declare-fun lt!164268 () Unit!10829)

(assert (=> b!349605 (= e!214158 lt!164268)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!287 (List!5198 (_ BitVec 64)) Unit!10829)

(assert (=> b!349605 (= lt!164268 (lemmaContainsKeyImpliesGetValueByKeyDefined!287 (toList!2258 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!352 0))(
  ( (Some!351 (v!6033 V!11125)) (None!350) )
))
(declare-fun isDefined!288 (Option!352) Bool)

(declare-fun getValueByKey!346 (List!5198 (_ BitVec 64)) Option!352)

(assert (=> b!349605 (isDefined!288 (getValueByKey!346 (toList!2258 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!349606 () Bool)

(declare-fun Unit!10833 () Unit!10829)

(assert (=> b!349606 (= e!214158 Unit!10833)))

(declare-fun b!349607 () Bool)

(assert (=> b!349607 (= e!214159 (isDefined!288 (getValueByKey!346 (toList!2258 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71241 c!53228) b!349605))

(assert (= (and d!71241 (not c!53228)) b!349606))

(assert (= (and d!71241 (not res!193839)) b!349607))

(declare-fun m!350055 () Bool)

(assert (=> d!71241 m!350055))

(declare-fun m!350057 () Bool)

(assert (=> b!349605 m!350057))

(declare-fun m!350059 () Bool)

(assert (=> b!349605 m!350059))

(assert (=> b!349605 m!350059))

(declare-fun m!350061 () Bool)

(assert (=> b!349605 m!350061))

(assert (=> b!349607 m!350059))

(assert (=> b!349607 m!350059))

(assert (=> b!349607 m!350061))

(assert (=> b!349550 d!71241))

(declare-fun b!349650 () Bool)

(declare-fun e!214188 () Unit!10829)

(declare-fun lt!164329 () Unit!10829)

(assert (=> b!349650 (= e!214188 lt!164329)))

(declare-fun lt!164321 () ListLongMap!4485)

(declare-fun getCurrentListMapNoExtraKeys!608 (array!18775 array!18777 (_ BitVec 32) (_ BitVec 32) V!11125 V!11125 (_ BitVec 32) Int) ListLongMap!4485)

(assert (=> b!349650 (= lt!164321 (getCurrentListMapNoExtraKeys!608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164316 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164316 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164328 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164328 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164334 () Unit!10829)

(declare-fun addStillContains!265 (ListLongMap!4485 (_ BitVec 64) V!11125 (_ BitVec 64)) Unit!10829)

(assert (=> b!349650 (= lt!164334 (addStillContains!265 lt!164321 lt!164316 zeroValue!1467 lt!164328))))

(declare-fun +!733 (ListLongMap!4485 tuple2!5558) ListLongMap!4485)

(assert (=> b!349650 (contains!2321 (+!733 lt!164321 (tuple2!5559 lt!164316 zeroValue!1467)) lt!164328)))

(declare-fun lt!164318 () Unit!10829)

(assert (=> b!349650 (= lt!164318 lt!164334)))

(declare-fun lt!164335 () ListLongMap!4485)

(assert (=> b!349650 (= lt!164335 (getCurrentListMapNoExtraKeys!608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164327 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164327 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164322 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164322 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164317 () Unit!10829)

(declare-fun addApplyDifferent!265 (ListLongMap!4485 (_ BitVec 64) V!11125 (_ BitVec 64)) Unit!10829)

(assert (=> b!349650 (= lt!164317 (addApplyDifferent!265 lt!164335 lt!164327 minValue!1467 lt!164322))))

(declare-fun apply!289 (ListLongMap!4485 (_ BitVec 64)) V!11125)

(assert (=> b!349650 (= (apply!289 (+!733 lt!164335 (tuple2!5559 lt!164327 minValue!1467)) lt!164322) (apply!289 lt!164335 lt!164322))))

(declare-fun lt!164330 () Unit!10829)

(assert (=> b!349650 (= lt!164330 lt!164317)))

(declare-fun lt!164319 () ListLongMap!4485)

(assert (=> b!349650 (= lt!164319 (getCurrentListMapNoExtraKeys!608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164324 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164324 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164325 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164325 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164326 () Unit!10829)

(assert (=> b!349650 (= lt!164326 (addApplyDifferent!265 lt!164319 lt!164324 zeroValue!1467 lt!164325))))

(assert (=> b!349650 (= (apply!289 (+!733 lt!164319 (tuple2!5559 lt!164324 zeroValue!1467)) lt!164325) (apply!289 lt!164319 lt!164325))))

(declare-fun lt!164320 () Unit!10829)

(assert (=> b!349650 (= lt!164320 lt!164326)))

(declare-fun lt!164336 () ListLongMap!4485)

(assert (=> b!349650 (= lt!164336 (getCurrentListMapNoExtraKeys!608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164331 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164331 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164337 () (_ BitVec 64))

(assert (=> b!349650 (= lt!164337 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!349650 (= lt!164329 (addApplyDifferent!265 lt!164336 lt!164331 minValue!1467 lt!164337))))

(assert (=> b!349650 (= (apply!289 (+!733 lt!164336 (tuple2!5559 lt!164331 minValue!1467)) lt!164337) (apply!289 lt!164336 lt!164337))))

(declare-fun b!349651 () Bool)

(declare-fun e!214191 () Bool)

(assert (=> b!349651 (= e!214191 (validKeyInArray!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349652 () Bool)

(declare-fun e!214196 () ListLongMap!4485)

(declare-fun e!214195 () ListLongMap!4485)

(assert (=> b!349652 (= e!214196 e!214195)))

(declare-fun c!53242 () Bool)

(assert (=> b!349652 (= c!53242 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!26929 () ListLongMap!4485)

(declare-fun call!26931 () ListLongMap!4485)

(declare-fun c!53246 () Bool)

(declare-fun call!26927 () ListLongMap!4485)

(declare-fun bm!26924 () Bool)

(declare-fun call!26933 () ListLongMap!4485)

(assert (=> bm!26924 (= call!26929 (+!733 (ite c!53246 call!26933 (ite c!53242 call!26931 call!26927)) (ite (or c!53246 c!53242) (tuple2!5559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!349653 () Bool)

(declare-fun e!214194 () Bool)

(declare-fun e!214187 () Bool)

(assert (=> b!349653 (= e!214194 e!214187)))

(declare-fun c!53244 () Bool)

(assert (=> b!349653 (= c!53244 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!349654 () Bool)

(declare-fun Unit!10834 () Unit!10829)

(assert (=> b!349654 (= e!214188 Unit!10834)))

(declare-fun b!349655 () Bool)

(declare-fun e!214192 () Bool)

(declare-fun call!26932 () Bool)

(assert (=> b!349655 (= e!214192 (not call!26932))))

(declare-fun b!349656 () Bool)

(declare-fun call!26930 () Bool)

(assert (=> b!349656 (= e!214187 (not call!26930))))

(declare-fun b!349657 () Bool)

(declare-fun e!214189 () ListLongMap!4485)

(assert (=> b!349657 (= e!214189 call!26927)))

(declare-fun b!349658 () Bool)

(assert (=> b!349658 (= e!214196 (+!733 call!26929 (tuple2!5559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26925 () Bool)

(assert (=> bm!26925 (= call!26927 call!26931)))

(declare-fun d!71243 () Bool)

(assert (=> d!71243 e!214194))

(declare-fun res!193864 () Bool)

(assert (=> d!71243 (=> (not res!193864) (not e!214194))))

(assert (=> d!71243 (= res!193864 (or (bvsge #b00000000000000000000000000000000 (size!9244 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)))))))

(declare-fun lt!164332 () ListLongMap!4485)

(declare-fun lt!164323 () ListLongMap!4485)

(assert (=> d!71243 (= lt!164332 lt!164323)))

(declare-fun lt!164333 () Unit!10829)

(assert (=> d!71243 (= lt!164333 e!214188)))

(declare-fun c!53245 () Bool)

(assert (=> d!71243 (= c!53245 e!214191)))

(declare-fun res!193865 () Bool)

(assert (=> d!71243 (=> (not res!193865) (not e!214191))))

(assert (=> d!71243 (= res!193865 (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(assert (=> d!71243 (= lt!164323 e!214196)))

(assert (=> d!71243 (= c!53246 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71243 (validMask!0 mask!2385)))

(assert (=> d!71243 (= (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164332)))

(declare-fun b!349659 () Bool)

(declare-fun e!214198 () Bool)

(assert (=> b!349659 (= e!214198 (= (apply!289 lt!164332 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26926 () Bool)

(assert (=> bm!26926 (= call!26931 call!26933)))

(declare-fun b!349660 () Bool)

(assert (=> b!349660 (= e!214192 e!214198)))

(declare-fun res!193858 () Bool)

(assert (=> b!349660 (= res!193858 call!26932)))

(assert (=> b!349660 (=> (not res!193858) (not e!214198))))

(declare-fun b!349661 () Bool)

(declare-fun e!214186 () Bool)

(declare-fun e!214193 () Bool)

(assert (=> b!349661 (= e!214186 e!214193)))

(declare-fun res!193859 () Bool)

(assert (=> b!349661 (=> (not res!193859) (not e!214193))))

(assert (=> b!349661 (= res!193859 (contains!2321 lt!164332 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!349661 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(declare-fun bm!26927 () Bool)

(assert (=> bm!26927 (= call!26930 (contains!2321 lt!164332 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!349662 () Bool)

(declare-fun e!214190 () Bool)

(assert (=> b!349662 (= e!214190 (= (apply!289 lt!164332 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!349663 () Bool)

(assert (=> b!349663 (= e!214187 e!214190)))

(declare-fun res!193866 () Bool)

(assert (=> b!349663 (= res!193866 call!26930)))

(assert (=> b!349663 (=> (not res!193866) (not e!214190))))

(declare-fun b!349664 () Bool)

(declare-fun c!53241 () Bool)

(assert (=> b!349664 (= c!53241 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!349664 (= e!214195 e!214189)))

(declare-fun b!349665 () Bool)

(declare-fun get!4772 (ValueCell!3462 V!11125) V!11125)

(declare-fun dynLambda!627 (Int (_ BitVec 64)) V!11125)

(assert (=> b!349665 (= e!214193 (= (apply!289 lt!164332 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)) (get!4772 (select (arr!8893 _values!1525) #b00000000000000000000000000000000) (dynLambda!627 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!349665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9245 _values!1525)))))

(assert (=> b!349665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(declare-fun b!349666 () Bool)

(declare-fun res!193863 () Bool)

(assert (=> b!349666 (=> (not res!193863) (not e!214194))))

(assert (=> b!349666 (= res!193863 e!214192)))

(declare-fun c!53243 () Bool)

(assert (=> b!349666 (= c!53243 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!26928 () Bool)

(assert (=> bm!26928 (= call!26932 (contains!2321 lt!164332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!349667 () Bool)

(declare-fun call!26928 () ListLongMap!4485)

(assert (=> b!349667 (= e!214189 call!26928)))

(declare-fun bm!26929 () Bool)

(assert (=> bm!26929 (= call!26933 (getCurrentListMapNoExtraKeys!608 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26930 () Bool)

(assert (=> bm!26930 (= call!26928 call!26929)))

(declare-fun b!349668 () Bool)

(declare-fun res!193860 () Bool)

(assert (=> b!349668 (=> (not res!193860) (not e!214194))))

(assert (=> b!349668 (= res!193860 e!214186)))

(declare-fun res!193862 () Bool)

(assert (=> b!349668 (=> res!193862 e!214186)))

(declare-fun e!214197 () Bool)

(assert (=> b!349668 (= res!193862 (not e!214197))))

(declare-fun res!193861 () Bool)

(assert (=> b!349668 (=> (not res!193861) (not e!214197))))

(assert (=> b!349668 (= res!193861 (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(declare-fun b!349669 () Bool)

(assert (=> b!349669 (= e!214197 (validKeyInArray!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349670 () Bool)

(assert (=> b!349670 (= e!214195 call!26928)))

(assert (= (and d!71243 c!53246) b!349658))

(assert (= (and d!71243 (not c!53246)) b!349652))

(assert (= (and b!349652 c!53242) b!349670))

(assert (= (and b!349652 (not c!53242)) b!349664))

(assert (= (and b!349664 c!53241) b!349667))

(assert (= (and b!349664 (not c!53241)) b!349657))

(assert (= (or b!349667 b!349657) bm!26925))

(assert (= (or b!349670 bm!26925) bm!26926))

(assert (= (or b!349670 b!349667) bm!26930))

(assert (= (or b!349658 bm!26926) bm!26929))

(assert (= (or b!349658 bm!26930) bm!26924))

(assert (= (and d!71243 res!193865) b!349651))

(assert (= (and d!71243 c!53245) b!349650))

(assert (= (and d!71243 (not c!53245)) b!349654))

(assert (= (and d!71243 res!193864) b!349668))

(assert (= (and b!349668 res!193861) b!349669))

(assert (= (and b!349668 (not res!193862)) b!349661))

(assert (= (and b!349661 res!193859) b!349665))

(assert (= (and b!349668 res!193860) b!349666))

(assert (= (and b!349666 c!53243) b!349660))

(assert (= (and b!349666 (not c!53243)) b!349655))

(assert (= (and b!349660 res!193858) b!349659))

(assert (= (or b!349660 b!349655) bm!26928))

(assert (= (and b!349666 res!193863) b!349653))

(assert (= (and b!349653 c!53244) b!349663))

(assert (= (and b!349653 (not c!53244)) b!349656))

(assert (= (and b!349663 res!193866) b!349662))

(assert (= (or b!349663 b!349656) bm!26927))

(declare-fun b_lambda!8525 () Bool)

(assert (=> (not b_lambda!8525) (not b!349665)))

(declare-fun t!10342 () Bool)

(declare-fun tb!3101 () Bool)

(assert (=> (and start!34926 (= defaultEntry!1528 defaultEntry!1528) t!10342) tb!3101))

(declare-fun result!5617 () Bool)

(assert (=> tb!3101 (= result!5617 tp_is_empty!7611)))

(assert (=> b!349665 t!10342))

(declare-fun b_and!14907 () Bool)

(assert (= b_and!14903 (and (=> t!10342 result!5617) b_and!14907)))

(declare-fun m!350063 () Bool)

(assert (=> bm!26929 m!350063))

(declare-fun m!350065 () Bool)

(assert (=> bm!26927 m!350065))

(declare-fun m!350067 () Bool)

(assert (=> b!349650 m!350067))

(declare-fun m!350069 () Bool)

(assert (=> b!349650 m!350069))

(declare-fun m!350071 () Bool)

(assert (=> b!349650 m!350071))

(declare-fun m!350073 () Bool)

(assert (=> b!349650 m!350073))

(declare-fun m!350075 () Bool)

(assert (=> b!349650 m!350075))

(declare-fun m!350077 () Bool)

(assert (=> b!349650 m!350077))

(declare-fun m!350079 () Bool)

(assert (=> b!349650 m!350079))

(declare-fun m!350081 () Bool)

(assert (=> b!349650 m!350081))

(assert (=> b!349650 m!350081))

(declare-fun m!350083 () Bool)

(assert (=> b!349650 m!350083))

(declare-fun m!350085 () Bool)

(assert (=> b!349650 m!350085))

(declare-fun m!350087 () Bool)

(assert (=> b!349650 m!350087))

(assert (=> b!349650 m!350063))

(assert (=> b!349650 m!350071))

(declare-fun m!350089 () Bool)

(assert (=> b!349650 m!350089))

(declare-fun m!350091 () Bool)

(assert (=> b!349650 m!350091))

(declare-fun m!350093 () Bool)

(assert (=> b!349650 m!350093))

(assert (=> b!349650 m!350067))

(assert (=> b!349650 m!350093))

(declare-fun m!350095 () Bool)

(assert (=> b!349650 m!350095))

(declare-fun m!350097 () Bool)

(assert (=> b!349650 m!350097))

(declare-fun m!350099 () Bool)

(assert (=> bm!26928 m!350099))

(assert (=> b!349669 m!350079))

(assert (=> b!349669 m!350079))

(declare-fun m!350101 () Bool)

(assert (=> b!349669 m!350101))

(declare-fun m!350103 () Bool)

(assert (=> b!349659 m!350103))

(declare-fun m!350105 () Bool)

(assert (=> b!349658 m!350105))

(declare-fun m!350107 () Bool)

(assert (=> b!349662 m!350107))

(declare-fun m!350109 () Bool)

(assert (=> bm!26924 m!350109))

(declare-fun m!350111 () Bool)

(assert (=> b!349665 m!350111))

(assert (=> b!349665 m!350079))

(assert (=> b!349665 m!350079))

(declare-fun m!350113 () Bool)

(assert (=> b!349665 m!350113))

(declare-fun m!350115 () Bool)

(assert (=> b!349665 m!350115))

(assert (=> b!349665 m!350111))

(declare-fun m!350117 () Bool)

(assert (=> b!349665 m!350117))

(assert (=> b!349665 m!350115))

(assert (=> d!71243 m!350009))

(assert (=> b!349661 m!350079))

(assert (=> b!349661 m!350079))

(declare-fun m!350119 () Bool)

(assert (=> b!349661 m!350119))

(assert (=> b!349651 m!350079))

(assert (=> b!349651 m!350079))

(assert (=> b!349651 m!350101))

(assert (=> b!349550 d!71243))

(declare-fun d!71245 () Bool)

(assert (=> d!71245 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34926 d!71245))

(declare-fun d!71247 () Bool)

(assert (=> d!71247 (= (array_inv!6554 _values!1525) (bvsge (size!9245 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34926 d!71247))

(declare-fun d!71249 () Bool)

(assert (=> d!71249 (= (array_inv!6555 _keys!1895) (bvsge (size!9244 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34926 d!71249))

(declare-fun d!71251 () Bool)

(assert (=> d!71251 (contains!2321 (getCurrentListMap!1775 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!164340 () Unit!10829)

(declare-fun choose!1314 (array!18775 array!18777 (_ BitVec 32) (_ BitVec 32) V!11125 V!11125 (_ BitVec 64) (_ BitVec 32) Int) Unit!10829)

(assert (=> d!71251 (= lt!164340 (choose!1314 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!71251 (validMask!0 mask!2385)))

(assert (=> d!71251 (= (lemmaArrayContainsKeyThenInListMap!321 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!164340)))

(declare-fun bs!11929 () Bool)

(assert (= bs!11929 d!71251))

(assert (=> bs!11929 m!350021))

(assert (=> bs!11929 m!350021))

(assert (=> bs!11929 m!350023))

(assert (=> bs!11929 m!350001))

(declare-fun m!350121 () Bool)

(assert (=> bs!11929 m!350121))

(assert (=> bs!11929 m!350009))

(assert (=> b!349556 d!71251))

(declare-fun d!71253 () Bool)

(declare-fun lt!164343 () (_ BitVec 32))

(assert (=> d!71253 (and (or (bvslt lt!164343 #b00000000000000000000000000000000) (bvsge lt!164343 (size!9244 _keys!1895)) (and (bvsge lt!164343 #b00000000000000000000000000000000) (bvslt lt!164343 (size!9244 _keys!1895)))) (bvsge lt!164343 #b00000000000000000000000000000000) (bvslt lt!164343 (size!9244 _keys!1895)) (= (select (arr!8892 _keys!1895) lt!164343) k0!1348))))

(declare-fun e!214201 () (_ BitVec 32))

(assert (=> d!71253 (= lt!164343 e!214201)))

(declare-fun c!53249 () Bool)

(assert (=> d!71253 (= c!53249 (= (select (arr!8892 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9244 _keys!1895)) (bvslt (size!9244 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71253 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164343)))

(declare-fun b!349677 () Bool)

(assert (=> b!349677 (= e!214201 #b00000000000000000000000000000000)))

(declare-fun b!349678 () Bool)

(assert (=> b!349678 (= e!214201 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71253 c!53249) b!349677))

(assert (= (and d!71253 (not c!53249)) b!349678))

(declare-fun m!350123 () Bool)

(assert (=> d!71253 m!350123))

(assert (=> d!71253 m!350079))

(declare-fun m!350125 () Bool)

(assert (=> b!349678 m!350125))

(assert (=> b!349556 d!71253))

(declare-fun b!349691 () Bool)

(declare-fun c!53257 () Bool)

(declare-fun lt!164352 () (_ BitVec 64))

(assert (=> b!349691 (= c!53257 (= lt!164352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!214210 () SeekEntryResult!3424)

(declare-fun e!214209 () SeekEntryResult!3424)

(assert (=> b!349691 (= e!214210 e!214209)))

(declare-fun b!349692 () Bool)

(declare-fun e!214208 () SeekEntryResult!3424)

(assert (=> b!349692 (= e!214208 Undefined!3424)))

(declare-fun b!349693 () Bool)

(declare-fun lt!164351 () SeekEntryResult!3424)

(assert (=> b!349693 (= e!214209 (MissingZero!3424 (index!15877 lt!164351)))))

(declare-fun b!349694 () Bool)

(assert (=> b!349694 (= e!214208 e!214210)))

(assert (=> b!349694 (= lt!164352 (select (arr!8892 _keys!1895) (index!15877 lt!164351)))))

(declare-fun c!53256 () Bool)

(assert (=> b!349694 (= c!53256 (= lt!164352 k0!1348))))

(declare-fun d!71255 () Bool)

(declare-fun lt!164350 () SeekEntryResult!3424)

(assert (=> d!71255 (and (or ((_ is Undefined!3424) lt!164350) (not ((_ is Found!3424) lt!164350)) (and (bvsge (index!15876 lt!164350) #b00000000000000000000000000000000) (bvslt (index!15876 lt!164350) (size!9244 _keys!1895)))) (or ((_ is Undefined!3424) lt!164350) ((_ is Found!3424) lt!164350) (not ((_ is MissingZero!3424) lt!164350)) (and (bvsge (index!15875 lt!164350) #b00000000000000000000000000000000) (bvslt (index!15875 lt!164350) (size!9244 _keys!1895)))) (or ((_ is Undefined!3424) lt!164350) ((_ is Found!3424) lt!164350) ((_ is MissingZero!3424) lt!164350) (not ((_ is MissingVacant!3424) lt!164350)) (and (bvsge (index!15878 lt!164350) #b00000000000000000000000000000000) (bvslt (index!15878 lt!164350) (size!9244 _keys!1895)))) (or ((_ is Undefined!3424) lt!164350) (ite ((_ is Found!3424) lt!164350) (= (select (arr!8892 _keys!1895) (index!15876 lt!164350)) k0!1348) (ite ((_ is MissingZero!3424) lt!164350) (= (select (arr!8892 _keys!1895) (index!15875 lt!164350)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3424) lt!164350) (= (select (arr!8892 _keys!1895) (index!15878 lt!164350)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71255 (= lt!164350 e!214208)))

(declare-fun c!53258 () Bool)

(assert (=> d!71255 (= c!53258 (and ((_ is Intermediate!3424) lt!164351) (undefined!4236 lt!164351)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18775 (_ BitVec 32)) SeekEntryResult!3424)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71255 (= lt!164351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71255 (validMask!0 mask!2385)))

(assert (=> d!71255 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164350)))

(declare-fun b!349695 () Bool)

(assert (=> b!349695 (= e!214210 (Found!3424 (index!15877 lt!164351)))))

(declare-fun b!349696 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18775 (_ BitVec 32)) SeekEntryResult!3424)

(assert (=> b!349696 (= e!214209 (seekKeyOrZeroReturnVacant!0 (x!34815 lt!164351) (index!15877 lt!164351) (index!15877 lt!164351) k0!1348 _keys!1895 mask!2385))))

(assert (= (and d!71255 c!53258) b!349692))

(assert (= (and d!71255 (not c!53258)) b!349694))

(assert (= (and b!349694 c!53256) b!349695))

(assert (= (and b!349694 (not c!53256)) b!349691))

(assert (= (and b!349691 c!53257) b!349693))

(assert (= (and b!349691 (not c!53257)) b!349696))

(declare-fun m!350127 () Bool)

(assert (=> b!349694 m!350127))

(declare-fun m!350129 () Bool)

(assert (=> d!71255 m!350129))

(assert (=> d!71255 m!350009))

(declare-fun m!350131 () Bool)

(assert (=> d!71255 m!350131))

(declare-fun m!350133 () Bool)

(assert (=> d!71255 m!350133))

(assert (=> d!71255 m!350129))

(declare-fun m!350135 () Bool)

(assert (=> d!71255 m!350135))

(declare-fun m!350137 () Bool)

(assert (=> d!71255 m!350137))

(declare-fun m!350139 () Bool)

(assert (=> b!349696 m!350139))

(assert (=> b!349552 d!71255))

(declare-fun bm!26933 () Bool)

(declare-fun call!26936 () Bool)

(declare-fun c!53261 () Bool)

(assert (=> bm!26933 (= call!26936 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53261 (Cons!5193 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000) Nil!5194) Nil!5194)))))

(declare-fun b!349708 () Bool)

(declare-fun e!214221 () Bool)

(declare-fun e!214222 () Bool)

(assert (=> b!349708 (= e!214221 e!214222)))

(declare-fun res!193875 () Bool)

(assert (=> b!349708 (=> (not res!193875) (not e!214222))))

(declare-fun e!214219 () Bool)

(assert (=> b!349708 (= res!193875 (not e!214219))))

(declare-fun res!193874 () Bool)

(assert (=> b!349708 (=> (not res!193874) (not e!214219))))

(assert (=> b!349708 (= res!193874 (validKeyInArray!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349709 () Bool)

(declare-fun e!214220 () Bool)

(assert (=> b!349709 (= e!214220 call!26936)))

(declare-fun b!349710 () Bool)

(declare-fun contains!2322 (List!5197 (_ BitVec 64)) Bool)

(assert (=> b!349710 (= e!214219 (contains!2322 Nil!5194 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349711 () Bool)

(assert (=> b!349711 (= e!214220 call!26936)))

(declare-fun b!349707 () Bool)

(assert (=> b!349707 (= e!214222 e!214220)))

(assert (=> b!349707 (= c!53261 (validKeyInArray!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71257 () Bool)

(declare-fun res!193873 () Bool)

(assert (=> d!71257 (=> res!193873 e!214221)))

(assert (=> d!71257 (= res!193873 (bvsge #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(assert (=> d!71257 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5194) e!214221)))

(assert (= (and d!71257 (not res!193873)) b!349708))

(assert (= (and b!349708 res!193874) b!349710))

(assert (= (and b!349708 res!193875) b!349707))

(assert (= (and b!349707 c!53261) b!349709))

(assert (= (and b!349707 (not c!53261)) b!349711))

(assert (= (or b!349709 b!349711) bm!26933))

(assert (=> bm!26933 m!350079))

(declare-fun m!350141 () Bool)

(assert (=> bm!26933 m!350141))

(assert (=> b!349708 m!350079))

(assert (=> b!349708 m!350079))

(assert (=> b!349708 m!350101))

(assert (=> b!349710 m!350079))

(assert (=> b!349710 m!350079))

(declare-fun m!350143 () Bool)

(assert (=> b!349710 m!350143))

(assert (=> b!349707 m!350079))

(assert (=> b!349707 m!350079))

(assert (=> b!349707 m!350101))

(assert (=> b!349543 d!71257))

(declare-fun d!71259 () Bool)

(assert (=> d!71259 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!349553 d!71259))

(declare-fun d!71261 () Bool)

(declare-fun res!193880 () Bool)

(declare-fun e!214227 () Bool)

(assert (=> d!71261 (=> res!193880 e!214227)))

(assert (=> d!71261 (= res!193880 (= (select (arr!8892 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71261 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!214227)))

(declare-fun b!349716 () Bool)

(declare-fun e!214228 () Bool)

(assert (=> b!349716 (= e!214227 e!214228)))

(declare-fun res!193881 () Bool)

(assert (=> b!349716 (=> (not res!193881) (not e!214228))))

(assert (=> b!349716 (= res!193881 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9244 _keys!1895)))))

(declare-fun b!349717 () Bool)

(assert (=> b!349717 (= e!214228 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71261 (not res!193880)) b!349716))

(assert (= (and b!349716 res!193881) b!349717))

(assert (=> d!71261 m!350079))

(declare-fun m!350145 () Bool)

(assert (=> b!349717 m!350145))

(assert (=> b!349548 d!71261))

(declare-fun b!349726 () Bool)

(declare-fun e!214236 () Bool)

(declare-fun e!214237 () Bool)

(assert (=> b!349726 (= e!214236 e!214237)))

(declare-fun c!53264 () Bool)

(assert (=> b!349726 (= c!53264 (validKeyInArray!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!349727 () Bool)

(declare-fun call!26939 () Bool)

(assert (=> b!349727 (= e!214237 call!26939)))

(declare-fun d!71263 () Bool)

(declare-fun res!193887 () Bool)

(assert (=> d!71263 (=> res!193887 e!214236)))

(assert (=> d!71263 (= res!193887 (bvsge #b00000000000000000000000000000000 (size!9244 _keys!1895)))))

(assert (=> d!71263 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!214236)))

(declare-fun bm!26936 () Bool)

(assert (=> bm!26936 (= call!26939 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!349728 () Bool)

(declare-fun e!214235 () Bool)

(assert (=> b!349728 (= e!214237 e!214235)))

(declare-fun lt!164359 () (_ BitVec 64))

(assert (=> b!349728 (= lt!164359 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164360 () Unit!10829)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18775 (_ BitVec 64) (_ BitVec 32)) Unit!10829)

(assert (=> b!349728 (= lt!164360 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!164359 #b00000000000000000000000000000000))))

(assert (=> b!349728 (arrayContainsKey!0 _keys!1895 lt!164359 #b00000000000000000000000000000000)))

(declare-fun lt!164361 () Unit!10829)

(assert (=> b!349728 (= lt!164361 lt!164360)))

(declare-fun res!193886 () Bool)

(assert (=> b!349728 (= res!193886 (= (seekEntryOrOpen!0 (select (arr!8892 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3424 #b00000000000000000000000000000000)))))

(assert (=> b!349728 (=> (not res!193886) (not e!214235))))

(declare-fun b!349729 () Bool)

(assert (=> b!349729 (= e!214235 call!26939)))

(assert (= (and d!71263 (not res!193887)) b!349726))

(assert (= (and b!349726 c!53264) b!349728))

(assert (= (and b!349726 (not c!53264)) b!349727))

(assert (= (and b!349728 res!193886) b!349729))

(assert (= (or b!349729 b!349727) bm!26936))

(assert (=> b!349726 m!350079))

(assert (=> b!349726 m!350079))

(assert (=> b!349726 m!350101))

(declare-fun m!350147 () Bool)

(assert (=> bm!26936 m!350147))

(assert (=> b!349728 m!350079))

(declare-fun m!350149 () Bool)

(assert (=> b!349728 m!350149))

(declare-fun m!350151 () Bool)

(assert (=> b!349728 m!350151))

(assert (=> b!349728 m!350079))

(declare-fun m!350153 () Bool)

(assert (=> b!349728 m!350153))

(assert (=> b!349544 d!71263))

(declare-fun d!71265 () Bool)

(assert (=> d!71265 (= (inRange!0 (index!15875 lt!164247) mask!2385) (and (bvsge (index!15875 lt!164247) #b00000000000000000000000000000000) (bvslt (index!15875 lt!164247) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!349554 d!71265))

(declare-fun mapIsEmpty!12888 () Bool)

(declare-fun mapRes!12888 () Bool)

(assert (=> mapIsEmpty!12888 mapRes!12888))

(declare-fun b!349736 () Bool)

(declare-fun e!214243 () Bool)

(assert (=> b!349736 (= e!214243 tp_is_empty!7611)))

(declare-fun mapNonEmpty!12888 () Bool)

(declare-fun tp!26559 () Bool)

(assert (=> mapNonEmpty!12888 (= mapRes!12888 (and tp!26559 e!214243))))

(declare-fun mapKey!12888 () (_ BitVec 32))

(declare-fun mapValue!12888 () ValueCell!3462)

(declare-fun mapRest!12888 () (Array (_ BitVec 32) ValueCell!3462))

(assert (=> mapNonEmpty!12888 (= mapRest!12882 (store mapRest!12888 mapKey!12888 mapValue!12888))))

(declare-fun condMapEmpty!12888 () Bool)

(declare-fun mapDefault!12888 () ValueCell!3462)

(assert (=> mapNonEmpty!12882 (= condMapEmpty!12888 (= mapRest!12882 ((as const (Array (_ BitVec 32) ValueCell!3462)) mapDefault!12888)))))

(declare-fun e!214242 () Bool)

(assert (=> mapNonEmpty!12882 (= tp!26549 (and e!214242 mapRes!12888))))

(declare-fun b!349737 () Bool)

(assert (=> b!349737 (= e!214242 tp_is_empty!7611)))

(assert (= (and mapNonEmpty!12882 condMapEmpty!12888) mapIsEmpty!12888))

(assert (= (and mapNonEmpty!12882 (not condMapEmpty!12888)) mapNonEmpty!12888))

(assert (= (and mapNonEmpty!12888 ((_ is ValueCellFull!3462) mapValue!12888)) b!349736))

(assert (= (and mapNonEmpty!12882 ((_ is ValueCellFull!3462) mapDefault!12888)) b!349737))

(declare-fun m!350155 () Bool)

(assert (=> mapNonEmpty!12888 m!350155))

(declare-fun b_lambda!8527 () Bool)

(assert (= b_lambda!8525 (or (and start!34926 b_free!7659) b_lambda!8527)))

(check-sat (not b!349726) (not b!349710) (not d!71255) (not b!349662) (not b!349650) (not bm!26927) (not b!349651) (not b!349658) (not d!71251) (not b!349678) (not d!71241) (not bm!26936) b_and!14907 (not b!349707) (not b!349665) (not bm!26933) (not mapNonEmpty!12888) (not b!349717) (not b_lambda!8527) tp_is_empty!7611 (not b!349669) (not bm!26929) (not d!71243) (not b!349659) (not b!349661) (not bm!26924) (not bm!26928) (not b!349605) (not b!349708) (not b_next!7659) (not b!349728) (not b!349696) (not b!349607))
(check-sat b_and!14907 (not b_next!7659))
