; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17470 () Bool)

(assert start!17470)

(declare-fun b!175009 () Bool)

(declare-fun b_free!4329 () Bool)

(declare-fun b_next!4329 () Bool)

(assert (=> b!175009 (= b_free!4329 (not b_next!4329))))

(declare-fun tp!15662 () Bool)

(declare-fun b_and!10821 () Bool)

(assert (=> b!175009 (= tp!15662 b_and!10821)))

(declare-fun b!175008 () Bool)

(declare-fun res!82999 () Bool)

(declare-fun e!115554 () Bool)

(assert (=> b!175008 (=> (not res!82999) (not e!115554))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5115 0))(
  ( (V!5116 (val!2095 Int)) )
))
(declare-datatypes ((ValueCell!1707 0))(
  ( (ValueCellFull!1707 (v!3964 V!5115)) (EmptyCell!1707) )
))
(declare-datatypes ((array!7338 0))(
  ( (array!7339 (arr!3484 (Array (_ BitVec 32) (_ BitVec 64))) (size!3785 (_ BitVec 32))) )
))
(declare-datatypes ((array!7340 0))(
  ( (array!7341 (arr!3485 (Array (_ BitVec 32) ValueCell!1707)) (size!3786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2322 0))(
  ( (LongMapFixedSize!2323 (defaultEntry!3614 Int) (mask!8503 (_ BitVec 32)) (extraKeys!3351 (_ BitVec 32)) (zeroValue!3455 V!5115) (minValue!3455 V!5115) (_size!1210 (_ BitVec 32)) (_keys!5462 array!7338) (_values!3597 array!7340) (_vacant!1210 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2322)

(get-info :version)

(declare-datatypes ((SeekEntryResult!559 0))(
  ( (MissingZero!559 (index!4404 (_ BitVec 32))) (Found!559 (index!4405 (_ BitVec 32))) (Intermediate!559 (undefined!1371 Bool) (index!4406 (_ BitVec 32)) (x!19273 (_ BitVec 32))) (Undefined!559) (MissingVacant!559 (index!4407 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7338 (_ BitVec 32)) SeekEntryResult!559)

(assert (=> b!175008 (= res!82999 ((_ is Undefined!559) (seekEntryOrOpen!0 key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248))))))

(declare-fun tp_is_empty!4101 () Bool)

(declare-fun e!115551 () Bool)

(declare-fun e!115550 () Bool)

(declare-fun array_inv!2223 (array!7338) Bool)

(declare-fun array_inv!2224 (array!7340) Bool)

(assert (=> b!175009 (= e!115551 (and tp!15662 tp_is_empty!4101 (array_inv!2223 (_keys!5462 thiss!1248)) (array_inv!2224 (_values!3597 thiss!1248)) e!115550))))

(declare-fun mapIsEmpty!6990 () Bool)

(declare-fun mapRes!6990 () Bool)

(assert (=> mapIsEmpty!6990 mapRes!6990))

(declare-fun mapNonEmpty!6990 () Bool)

(declare-fun tp!15663 () Bool)

(declare-fun e!115552 () Bool)

(assert (=> mapNonEmpty!6990 (= mapRes!6990 (and tp!15663 e!115552))))

(declare-fun mapValue!6990 () ValueCell!1707)

(declare-fun mapRest!6990 () (Array (_ BitVec 32) ValueCell!1707))

(declare-fun mapKey!6990 () (_ BitVec 32))

(assert (=> mapNonEmpty!6990 (= (arr!3485 (_values!3597 thiss!1248)) (store mapRest!6990 mapKey!6990 mapValue!6990))))

(declare-fun b!175010 () Bool)

(declare-fun res!83001 () Bool)

(assert (=> b!175010 (=> (not res!83001) (not e!115554))))

(declare-datatypes ((tuple2!3254 0))(
  ( (tuple2!3255 (_1!1637 (_ BitVec 64)) (_2!1637 V!5115)) )
))
(declare-datatypes ((List!2238 0))(
  ( (Nil!2235) (Cons!2234 (h!2852 tuple2!3254) (t!7062 List!2238)) )
))
(declare-datatypes ((ListLongMap!2195 0))(
  ( (ListLongMap!2196 (toList!1113 List!2238)) )
))
(declare-fun contains!1165 (ListLongMap!2195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!760 (array!7338 array!7340 (_ BitVec 32) (_ BitVec 32) V!5115 V!5115 (_ BitVec 32) Int) ListLongMap!2195)

(assert (=> b!175010 (= res!83001 (contains!1165 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)) key!828))))

(declare-fun b!175012 () Bool)

(declare-fun res!83000 () Bool)

(assert (=> b!175012 (=> (not res!83000) (not e!115554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!175012 (= res!83000 (validMask!0 (mask!8503 thiss!1248)))))

(declare-fun b!175013 () Bool)

(declare-fun e!115553 () Bool)

(assert (=> b!175013 (= e!115553 tp_is_empty!4101)))

(declare-fun b!175014 () Bool)

(declare-fun res!83003 () Bool)

(assert (=> b!175014 (=> (not res!83003) (not e!115554))))

(assert (=> b!175014 (= res!83003 (not (= key!828 (bvneg key!828))))))

(declare-fun b!175011 () Bool)

(assert (=> b!175011 (= e!115552 tp_is_empty!4101)))

(declare-fun res!83002 () Bool)

(assert (=> start!17470 (=> (not res!83002) (not e!115554))))

(declare-fun valid!972 (LongMapFixedSize!2322) Bool)

(assert (=> start!17470 (= res!83002 (valid!972 thiss!1248))))

(assert (=> start!17470 e!115554))

(assert (=> start!17470 e!115551))

(assert (=> start!17470 true))

(declare-fun b!175015 () Bool)

(assert (=> b!175015 (= e!115554 (and (= (size!3786 (_values!3597 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8503 thiss!1248))) (not (= (size!3785 (_keys!5462 thiss!1248)) (size!3786 (_values!3597 thiss!1248))))))))

(declare-fun b!175016 () Bool)

(assert (=> b!175016 (= e!115550 (and e!115553 mapRes!6990))))

(declare-fun condMapEmpty!6990 () Bool)

(declare-fun mapDefault!6990 () ValueCell!1707)

(assert (=> b!175016 (= condMapEmpty!6990 (= (arr!3485 (_values!3597 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1707)) mapDefault!6990)))))

(assert (= (and start!17470 res!83002) b!175014))

(assert (= (and b!175014 res!83003) b!175008))

(assert (= (and b!175008 res!82999) b!175010))

(assert (= (and b!175010 res!83001) b!175012))

(assert (= (and b!175012 res!83000) b!175015))

(assert (= (and b!175016 condMapEmpty!6990) mapIsEmpty!6990))

(assert (= (and b!175016 (not condMapEmpty!6990)) mapNonEmpty!6990))

(assert (= (and mapNonEmpty!6990 ((_ is ValueCellFull!1707) mapValue!6990)) b!175011))

(assert (= (and b!175016 ((_ is ValueCellFull!1707) mapDefault!6990)) b!175013))

(assert (= b!175009 b!175016))

(assert (= start!17470 b!175009))

(declare-fun m!204001 () Bool)

(assert (=> b!175009 m!204001))

(declare-fun m!204003 () Bool)

(assert (=> b!175009 m!204003))

(declare-fun m!204005 () Bool)

(assert (=> b!175012 m!204005))

(declare-fun m!204007 () Bool)

(assert (=> b!175010 m!204007))

(assert (=> b!175010 m!204007))

(declare-fun m!204009 () Bool)

(assert (=> b!175010 m!204009))

(declare-fun m!204011 () Bool)

(assert (=> start!17470 m!204011))

(declare-fun m!204013 () Bool)

(assert (=> mapNonEmpty!6990 m!204013))

(declare-fun m!204015 () Bool)

(assert (=> b!175008 m!204015))

(check-sat tp_is_empty!4101 (not b!175008) (not b_next!4329) (not mapNonEmpty!6990) (not b!175009) (not b!175012) b_and!10821 (not b!175010) (not start!17470))
(check-sat b_and!10821 (not b_next!4329))
(get-model)

(declare-fun d!53299 () Bool)

(assert (=> d!53299 (= (array_inv!2223 (_keys!5462 thiss!1248)) (bvsge (size!3785 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175009 d!53299))

(declare-fun d!53301 () Bool)

(assert (=> d!53301 (= (array_inv!2224 (_values!3597 thiss!1248)) (bvsge (size!3786 (_values!3597 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175009 d!53301))

(declare-fun d!53303 () Bool)

(assert (=> d!53303 (= (validMask!0 (mask!8503 thiss!1248)) (and (or (= (mask!8503 thiss!1248) #b00000000000000000000000000000111) (= (mask!8503 thiss!1248) #b00000000000000000000000000001111) (= (mask!8503 thiss!1248) #b00000000000000000000000000011111) (= (mask!8503 thiss!1248) #b00000000000000000000000000111111) (= (mask!8503 thiss!1248) #b00000000000000000000000001111111) (= (mask!8503 thiss!1248) #b00000000000000000000000011111111) (= (mask!8503 thiss!1248) #b00000000000000000000000111111111) (= (mask!8503 thiss!1248) #b00000000000000000000001111111111) (= (mask!8503 thiss!1248) #b00000000000000000000011111111111) (= (mask!8503 thiss!1248) #b00000000000000000000111111111111) (= (mask!8503 thiss!1248) #b00000000000000000001111111111111) (= (mask!8503 thiss!1248) #b00000000000000000011111111111111) (= (mask!8503 thiss!1248) #b00000000000000000111111111111111) (= (mask!8503 thiss!1248) #b00000000000000001111111111111111) (= (mask!8503 thiss!1248) #b00000000000000011111111111111111) (= (mask!8503 thiss!1248) #b00000000000000111111111111111111) (= (mask!8503 thiss!1248) #b00000000000001111111111111111111) (= (mask!8503 thiss!1248) #b00000000000011111111111111111111) (= (mask!8503 thiss!1248) #b00000000000111111111111111111111) (= (mask!8503 thiss!1248) #b00000000001111111111111111111111) (= (mask!8503 thiss!1248) #b00000000011111111111111111111111) (= (mask!8503 thiss!1248) #b00000000111111111111111111111111) (= (mask!8503 thiss!1248) #b00000001111111111111111111111111) (= (mask!8503 thiss!1248) #b00000011111111111111111111111111) (= (mask!8503 thiss!1248) #b00000111111111111111111111111111) (= (mask!8503 thiss!1248) #b00001111111111111111111111111111) (= (mask!8503 thiss!1248) #b00011111111111111111111111111111) (= (mask!8503 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8503 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!175012 d!53303))

(declare-fun b!175056 () Bool)

(declare-fun e!115580 () SeekEntryResult!559)

(declare-fun e!115581 () SeekEntryResult!559)

(assert (=> b!175056 (= e!115580 e!115581)))

(declare-fun lt!86632 () (_ BitVec 64))

(declare-fun lt!86631 () SeekEntryResult!559)

(assert (=> b!175056 (= lt!86632 (select (arr!3484 (_keys!5462 thiss!1248)) (index!4406 lt!86631)))))

(declare-fun c!31331 () Bool)

(assert (=> b!175056 (= c!31331 (= lt!86632 key!828))))

(declare-fun b!175057 () Bool)

(declare-fun c!31332 () Bool)

(assert (=> b!175057 (= c!31332 (= lt!86632 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115582 () SeekEntryResult!559)

(assert (=> b!175057 (= e!115581 e!115582)))

(declare-fun b!175058 () Bool)

(assert (=> b!175058 (= e!115581 (Found!559 (index!4406 lt!86631)))))

(declare-fun d!53305 () Bool)

(declare-fun lt!86630 () SeekEntryResult!559)

(assert (=> d!53305 (and (or ((_ is Undefined!559) lt!86630) (not ((_ is Found!559) lt!86630)) (and (bvsge (index!4405 lt!86630) #b00000000000000000000000000000000) (bvslt (index!4405 lt!86630) (size!3785 (_keys!5462 thiss!1248))))) (or ((_ is Undefined!559) lt!86630) ((_ is Found!559) lt!86630) (not ((_ is MissingZero!559) lt!86630)) (and (bvsge (index!4404 lt!86630) #b00000000000000000000000000000000) (bvslt (index!4404 lt!86630) (size!3785 (_keys!5462 thiss!1248))))) (or ((_ is Undefined!559) lt!86630) ((_ is Found!559) lt!86630) ((_ is MissingZero!559) lt!86630) (not ((_ is MissingVacant!559) lt!86630)) (and (bvsge (index!4407 lt!86630) #b00000000000000000000000000000000) (bvslt (index!4407 lt!86630) (size!3785 (_keys!5462 thiss!1248))))) (or ((_ is Undefined!559) lt!86630) (ite ((_ is Found!559) lt!86630) (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4405 lt!86630)) key!828) (ite ((_ is MissingZero!559) lt!86630) (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4404 lt!86630)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!559) lt!86630) (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4407 lt!86630)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53305 (= lt!86630 e!115580)))

(declare-fun c!31330 () Bool)

(assert (=> d!53305 (= c!31330 (and ((_ is Intermediate!559) lt!86631) (undefined!1371 lt!86631)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7338 (_ BitVec 32)) SeekEntryResult!559)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53305 (= lt!86631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8503 thiss!1248)) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(assert (=> d!53305 (validMask!0 (mask!8503 thiss!1248))))

(assert (=> d!53305 (= (seekEntryOrOpen!0 key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)) lt!86630)))

(declare-fun b!175059 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7338 (_ BitVec 32)) SeekEntryResult!559)

(assert (=> b!175059 (= e!115582 (seekKeyOrZeroReturnVacant!0 (x!19273 lt!86631) (index!4406 lt!86631) (index!4406 lt!86631) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(declare-fun b!175060 () Bool)

(assert (=> b!175060 (= e!115580 Undefined!559)))

(declare-fun b!175061 () Bool)

(assert (=> b!175061 (= e!115582 (MissingZero!559 (index!4406 lt!86631)))))

(assert (= (and d!53305 c!31330) b!175060))

(assert (= (and d!53305 (not c!31330)) b!175056))

(assert (= (and b!175056 c!31331) b!175058))

(assert (= (and b!175056 (not c!31331)) b!175057))

(assert (= (and b!175057 c!31332) b!175061))

(assert (= (and b!175057 (not c!31332)) b!175059))

(declare-fun m!204033 () Bool)

(assert (=> b!175056 m!204033))

(declare-fun m!204035 () Bool)

(assert (=> d!53305 m!204035))

(assert (=> d!53305 m!204005))

(declare-fun m!204037 () Bool)

(assert (=> d!53305 m!204037))

(declare-fun m!204039 () Bool)

(assert (=> d!53305 m!204039))

(declare-fun m!204041 () Bool)

(assert (=> d!53305 m!204041))

(assert (=> d!53305 m!204035))

(declare-fun m!204043 () Bool)

(assert (=> d!53305 m!204043))

(declare-fun m!204045 () Bool)

(assert (=> b!175059 m!204045))

(assert (=> b!175008 d!53305))

(declare-fun d!53307 () Bool)

(declare-fun e!115588 () Bool)

(assert (=> d!53307 e!115588))

(declare-fun res!83021 () Bool)

(assert (=> d!53307 (=> res!83021 e!115588)))

(declare-fun lt!86643 () Bool)

(assert (=> d!53307 (= res!83021 (not lt!86643))))

(declare-fun lt!86644 () Bool)

(assert (=> d!53307 (= lt!86643 lt!86644)))

(declare-datatypes ((Unit!5373 0))(
  ( (Unit!5374) )
))
(declare-fun lt!86641 () Unit!5373)

(declare-fun e!115587 () Unit!5373)

(assert (=> d!53307 (= lt!86641 e!115587)))

(declare-fun c!31335 () Bool)

(assert (=> d!53307 (= c!31335 lt!86644)))

(declare-fun containsKey!191 (List!2238 (_ BitVec 64)) Bool)

(assert (=> d!53307 (= lt!86644 (containsKey!191 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(assert (=> d!53307 (= (contains!1165 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)) key!828) lt!86643)))

(declare-fun b!175068 () Bool)

(declare-fun lt!86642 () Unit!5373)

(assert (=> b!175068 (= e!115587 lt!86642)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!140 (List!2238 (_ BitVec 64)) Unit!5373)

(assert (=> b!175068 (= lt!86642 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(declare-datatypes ((Option!193 0))(
  ( (Some!192 (v!3966 V!5115)) (None!191) )
))
(declare-fun isDefined!141 (Option!193) Bool)

(declare-fun getValueByKey!187 (List!2238 (_ BitVec 64)) Option!193)

(assert (=> b!175068 (isDefined!141 (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(declare-fun b!175069 () Bool)

(declare-fun Unit!5375 () Unit!5373)

(assert (=> b!175069 (= e!115587 Unit!5375)))

(declare-fun b!175070 () Bool)

(assert (=> b!175070 (= e!115588 (isDefined!141 (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828)))))

(assert (= (and d!53307 c!31335) b!175068))

(assert (= (and d!53307 (not c!31335)) b!175069))

(assert (= (and d!53307 (not res!83021)) b!175070))

(declare-fun m!204047 () Bool)

(assert (=> d!53307 m!204047))

(declare-fun m!204049 () Bool)

(assert (=> b!175068 m!204049))

(declare-fun m!204051 () Bool)

(assert (=> b!175068 m!204051))

(assert (=> b!175068 m!204051))

(declare-fun m!204053 () Bool)

(assert (=> b!175068 m!204053))

(assert (=> b!175070 m!204051))

(assert (=> b!175070 m!204051))

(assert (=> b!175070 m!204053))

(assert (=> b!175010 d!53307))

(declare-fun bm!17735 () Bool)

(declare-fun call!17739 () ListLongMap!2195)

(declare-fun getCurrentListMapNoExtraKeys!163 (array!7338 array!7340 (_ BitVec 32) (_ BitVec 32) V!5115 V!5115 (_ BitVec 32) Int) ListLongMap!2195)

(assert (=> bm!17735 (= call!17739 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))

(declare-fun b!175113 () Bool)

(declare-fun e!115626 () ListLongMap!2195)

(declare-fun e!115619 () ListLongMap!2195)

(assert (=> b!175113 (= e!115626 e!115619)))

(declare-fun c!31349 () Bool)

(assert (=> b!175113 (= c!31349 (and (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17736 () Bool)

(declare-fun call!17743 () Bool)

(declare-fun lt!86700 () ListLongMap!2195)

(assert (=> bm!17736 (= call!17743 (contains!1165 lt!86700 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175114 () Bool)

(declare-fun e!115617 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!175114 (= e!115617 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175115 () Bool)

(declare-fun e!115624 () Bool)

(declare-fun call!17742 () Bool)

(assert (=> b!175115 (= e!115624 (not call!17742))))

(declare-fun bm!17737 () Bool)

(assert (=> bm!17737 (= call!17742 (contains!1165 lt!86700 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175116 () Bool)

(declare-fun e!115620 () Bool)

(declare-fun e!115621 () Bool)

(assert (=> b!175116 (= e!115620 e!115621)))

(declare-fun res!83043 () Bool)

(assert (=> b!175116 (= res!83043 call!17743)))

(assert (=> b!175116 (=> (not res!83043) (not e!115621))))

(declare-fun b!175117 () Bool)

(declare-fun e!115623 () Bool)

(declare-fun apply!133 (ListLongMap!2195 (_ BitVec 64)) V!5115)

(assert (=> b!175117 (= e!115623 (= (apply!133 lt!86700 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3455 thiss!1248)))))

(declare-fun b!175118 () Bool)

(declare-fun res!83045 () Bool)

(declare-fun e!115627 () Bool)

(assert (=> b!175118 (=> (not res!83045) (not e!115627))))

(declare-fun e!115618 () Bool)

(assert (=> b!175118 (= res!83045 e!115618)))

(declare-fun res!83040 () Bool)

(assert (=> b!175118 (=> res!83040 e!115618)))

(declare-fun e!115616 () Bool)

(assert (=> b!175118 (= res!83040 (not e!115616))))

(declare-fun res!83044 () Bool)

(assert (=> b!175118 (=> (not res!83044) (not e!115616))))

(assert (=> b!175118 (= res!83044 (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun b!175119 () Bool)

(declare-fun e!115622 () Bool)

(assert (=> b!175119 (= e!115618 e!115622)))

(declare-fun res!83046 () Bool)

(assert (=> b!175119 (=> (not res!83046) (not e!115622))))

(assert (=> b!175119 (= res!83046 (contains!1165 lt!86700 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175119 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun b!175120 () Bool)

(assert (=> b!175120 (= e!115620 (not call!17743))))

(declare-fun d!53309 () Bool)

(assert (=> d!53309 e!115627))

(declare-fun res!83048 () Bool)

(assert (=> d!53309 (=> (not res!83048) (not e!115627))))

(assert (=> d!53309 (= res!83048 (or (bvsge #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))))

(declare-fun lt!86690 () ListLongMap!2195)

(assert (=> d!53309 (= lt!86700 lt!86690)))

(declare-fun lt!86704 () Unit!5373)

(declare-fun e!115625 () Unit!5373)

(assert (=> d!53309 (= lt!86704 e!115625)))

(declare-fun c!31348 () Bool)

(assert (=> d!53309 (= c!31348 e!115617)))

(declare-fun res!83041 () Bool)

(assert (=> d!53309 (=> (not res!83041) (not e!115617))))

(assert (=> d!53309 (= res!83041 (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53309 (= lt!86690 e!115626)))

(declare-fun c!31350 () Bool)

(assert (=> d!53309 (= c!31350 (and (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53309 (validMask!0 (mask!8503 thiss!1248))))

(assert (=> d!53309 (= (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)) lt!86700)))

(declare-fun bm!17738 () Bool)

(declare-fun call!17744 () ListLongMap!2195)

(declare-fun call!17740 () ListLongMap!2195)

(declare-fun call!17741 () ListLongMap!2195)

(declare-fun +!245 (ListLongMap!2195 tuple2!3254) ListLongMap!2195)

(assert (=> bm!17738 (= call!17741 (+!245 (ite c!31350 call!17739 (ite c!31349 call!17740 call!17744)) (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(declare-fun b!175121 () Bool)

(declare-fun call!17738 () ListLongMap!2195)

(assert (=> b!175121 (= e!115619 call!17738)))

(declare-fun b!175122 () Bool)

(assert (=> b!175122 (= e!115627 e!115624)))

(declare-fun c!31353 () Bool)

(assert (=> b!175122 (= c!31353 (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17739 () Bool)

(assert (=> bm!17739 (= call!17738 call!17741)))

(declare-fun b!175123 () Bool)

(declare-fun lt!86694 () Unit!5373)

(assert (=> b!175123 (= e!115625 lt!86694)))

(declare-fun lt!86692 () ListLongMap!2195)

(assert (=> b!175123 (= lt!86692 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))

(declare-fun lt!86696 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86696 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86703 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86703 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86695 () Unit!5373)

(declare-fun addStillContains!109 (ListLongMap!2195 (_ BitVec 64) V!5115 (_ BitVec 64)) Unit!5373)

(assert (=> b!175123 (= lt!86695 (addStillContains!109 lt!86692 lt!86696 (zeroValue!3455 thiss!1248) lt!86703))))

(assert (=> b!175123 (contains!1165 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) lt!86703)))

(declare-fun lt!86689 () Unit!5373)

(assert (=> b!175123 (= lt!86689 lt!86695)))

(declare-fun lt!86705 () ListLongMap!2195)

(assert (=> b!175123 (= lt!86705 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))

(declare-fun lt!86697 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86697 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86707 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86707 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86701 () Unit!5373)

(declare-fun addApplyDifferent!109 (ListLongMap!2195 (_ BitVec 64) V!5115 (_ BitVec 64)) Unit!5373)

(assert (=> b!175123 (= lt!86701 (addApplyDifferent!109 lt!86705 lt!86697 (minValue!3455 thiss!1248) lt!86707))))

(assert (=> b!175123 (= (apply!133 (+!245 lt!86705 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) lt!86707) (apply!133 lt!86705 lt!86707))))

(declare-fun lt!86693 () Unit!5373)

(assert (=> b!175123 (= lt!86693 lt!86701)))

(declare-fun lt!86699 () ListLongMap!2195)

(assert (=> b!175123 (= lt!86699 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))

(declare-fun lt!86709 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86709 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86698 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86698 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86706 () Unit!5373)

(assert (=> b!175123 (= lt!86706 (addApplyDifferent!109 lt!86699 lt!86709 (zeroValue!3455 thiss!1248) lt!86698))))

(assert (=> b!175123 (= (apply!133 (+!245 lt!86699 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) lt!86698) (apply!133 lt!86699 lt!86698))))

(declare-fun lt!86710 () Unit!5373)

(assert (=> b!175123 (= lt!86710 lt!86706)))

(declare-fun lt!86708 () ListLongMap!2195)

(assert (=> b!175123 (= lt!86708 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))

(declare-fun lt!86691 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86691 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86702 () (_ BitVec 64))

(assert (=> b!175123 (= lt!86702 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175123 (= lt!86694 (addApplyDifferent!109 lt!86708 lt!86691 (minValue!3455 thiss!1248) lt!86702))))

(assert (=> b!175123 (= (apply!133 (+!245 lt!86708 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) lt!86702) (apply!133 lt!86708 lt!86702))))

(declare-fun bm!17740 () Bool)

(assert (=> bm!17740 (= call!17744 call!17740)))

(declare-fun b!175124 () Bool)

(declare-fun e!115615 () ListLongMap!2195)

(assert (=> b!175124 (= e!115615 call!17744)))

(declare-fun b!175125 () Bool)

(declare-fun get!1984 (ValueCell!1707 V!5115) V!5115)

(declare-fun dynLambda!471 (Int (_ BitVec 64)) V!5115)

(assert (=> b!175125 (= e!115622 (= (apply!133 lt!86700 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)) (get!1984 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!175125 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3786 (_values!3597 thiss!1248))))))

(assert (=> b!175125 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun b!175126 () Bool)

(assert (=> b!175126 (= e!115624 e!115623)))

(declare-fun res!83047 () Bool)

(assert (=> b!175126 (= res!83047 call!17742)))

(assert (=> b!175126 (=> (not res!83047) (not e!115623))))

(declare-fun b!175127 () Bool)

(declare-fun res!83042 () Bool)

(assert (=> b!175127 (=> (not res!83042) (not e!115627))))

(assert (=> b!175127 (= res!83042 e!115620)))

(declare-fun c!31351 () Bool)

(assert (=> b!175127 (= c!31351 (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!175128 () Bool)

(declare-fun Unit!5376 () Unit!5373)

(assert (=> b!175128 (= e!115625 Unit!5376)))

(declare-fun b!175129 () Bool)

(assert (=> b!175129 (= e!115616 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175130 () Bool)

(assert (=> b!175130 (= e!115626 (+!245 call!17741 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))

(declare-fun b!175131 () Bool)

(assert (=> b!175131 (= e!115621 (= (apply!133 lt!86700 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3455 thiss!1248)))))

(declare-fun b!175132 () Bool)

(declare-fun c!31352 () Bool)

(assert (=> b!175132 (= c!31352 (and (not (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3351 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!175132 (= e!115619 e!115615)))

(declare-fun b!175133 () Bool)

(assert (=> b!175133 (= e!115615 call!17738)))

(declare-fun bm!17741 () Bool)

(assert (=> bm!17741 (= call!17740 call!17739)))

(assert (= (and d!53309 c!31350) b!175130))

(assert (= (and d!53309 (not c!31350)) b!175113))

(assert (= (and b!175113 c!31349) b!175121))

(assert (= (and b!175113 (not c!31349)) b!175132))

(assert (= (and b!175132 c!31352) b!175133))

(assert (= (and b!175132 (not c!31352)) b!175124))

(assert (= (or b!175133 b!175124) bm!17740))

(assert (= (or b!175121 bm!17740) bm!17741))

(assert (= (or b!175121 b!175133) bm!17739))

(assert (= (or b!175130 bm!17741) bm!17735))

(assert (= (or b!175130 bm!17739) bm!17738))

(assert (= (and d!53309 res!83041) b!175114))

(assert (= (and d!53309 c!31348) b!175123))

(assert (= (and d!53309 (not c!31348)) b!175128))

(assert (= (and d!53309 res!83048) b!175118))

(assert (= (and b!175118 res!83044) b!175129))

(assert (= (and b!175118 (not res!83040)) b!175119))

(assert (= (and b!175119 res!83046) b!175125))

(assert (= (and b!175118 res!83045) b!175127))

(assert (= (and b!175127 c!31351) b!175116))

(assert (= (and b!175127 (not c!31351)) b!175120))

(assert (= (and b!175116 res!83043) b!175131))

(assert (= (or b!175116 b!175120) bm!17736))

(assert (= (and b!175127 res!83042) b!175122))

(assert (= (and b!175122 c!31353) b!175126))

(assert (= (and b!175122 (not c!31353)) b!175115))

(assert (= (and b!175126 res!83047) b!175117))

(assert (= (or b!175126 b!175115) bm!17737))

(declare-fun b_lambda!7029 () Bool)

(assert (=> (not b_lambda!7029) (not b!175125)))

(declare-fun t!7064 () Bool)

(declare-fun tb!2785 () Bool)

(assert (=> (and b!175009 (= (defaultEntry!3614 thiss!1248) (defaultEntry!3614 thiss!1248)) t!7064) tb!2785))

(declare-fun result!4613 () Bool)

(assert (=> tb!2785 (= result!4613 tp_is_empty!4101)))

(assert (=> b!175125 t!7064))

(declare-fun b_and!10825 () Bool)

(assert (= b_and!10821 (and (=> t!7064 result!4613) b_and!10825)))

(declare-fun m!204055 () Bool)

(assert (=> bm!17735 m!204055))

(declare-fun m!204057 () Bool)

(assert (=> bm!17736 m!204057))

(declare-fun m!204059 () Bool)

(assert (=> bm!17737 m!204059))

(declare-fun m!204061 () Bool)

(assert (=> b!175119 m!204061))

(assert (=> b!175119 m!204061))

(declare-fun m!204063 () Bool)

(assert (=> b!175119 m!204063))

(declare-fun m!204065 () Bool)

(assert (=> b!175131 m!204065))

(declare-fun m!204067 () Bool)

(assert (=> b!175123 m!204067))

(declare-fun m!204069 () Bool)

(assert (=> b!175123 m!204069))

(declare-fun m!204071 () Bool)

(assert (=> b!175123 m!204071))

(declare-fun m!204073 () Bool)

(assert (=> b!175123 m!204073))

(declare-fun m!204075 () Bool)

(assert (=> b!175123 m!204075))

(declare-fun m!204077 () Bool)

(assert (=> b!175123 m!204077))

(declare-fun m!204079 () Bool)

(assert (=> b!175123 m!204079))

(declare-fun m!204081 () Bool)

(assert (=> b!175123 m!204081))

(declare-fun m!204083 () Bool)

(assert (=> b!175123 m!204083))

(declare-fun m!204085 () Bool)

(assert (=> b!175123 m!204085))

(assert (=> b!175123 m!204055))

(declare-fun m!204087 () Bool)

(assert (=> b!175123 m!204087))

(assert (=> b!175123 m!204077))

(assert (=> b!175123 m!204081))

(declare-fun m!204089 () Bool)

(assert (=> b!175123 m!204089))

(assert (=> b!175123 m!204083))

(assert (=> b!175123 m!204061))

(assert (=> b!175123 m!204067))

(declare-fun m!204091 () Bool)

(assert (=> b!175123 m!204091))

(declare-fun m!204093 () Bool)

(assert (=> b!175123 m!204093))

(declare-fun m!204095 () Bool)

(assert (=> b!175123 m!204095))

(declare-fun m!204097 () Bool)

(assert (=> bm!17738 m!204097))

(assert (=> b!175125 m!204061))

(declare-fun m!204099 () Bool)

(assert (=> b!175125 m!204099))

(assert (=> b!175125 m!204061))

(declare-fun m!204101 () Bool)

(assert (=> b!175125 m!204101))

(declare-fun m!204103 () Bool)

(assert (=> b!175125 m!204103))

(assert (=> b!175125 m!204103))

(assert (=> b!175125 m!204099))

(declare-fun m!204105 () Bool)

(assert (=> b!175125 m!204105))

(assert (=> b!175129 m!204061))

(assert (=> b!175129 m!204061))

(declare-fun m!204107 () Bool)

(assert (=> b!175129 m!204107))

(assert (=> d!53309 m!204005))

(declare-fun m!204109 () Bool)

(assert (=> b!175117 m!204109))

(assert (=> b!175114 m!204061))

(assert (=> b!175114 m!204061))

(assert (=> b!175114 m!204107))

(declare-fun m!204111 () Bool)

(assert (=> b!175130 m!204111))

(assert (=> b!175010 d!53309))

(declare-fun d!53311 () Bool)

(declare-fun res!83055 () Bool)

(declare-fun e!115630 () Bool)

(assert (=> d!53311 (=> (not res!83055) (not e!115630))))

(declare-fun simpleValid!146 (LongMapFixedSize!2322) Bool)

(assert (=> d!53311 (= res!83055 (simpleValid!146 thiss!1248))))

(assert (=> d!53311 (= (valid!972 thiss!1248) e!115630)))

(declare-fun b!175142 () Bool)

(declare-fun res!83056 () Bool)

(assert (=> b!175142 (=> (not res!83056) (not e!115630))))

(declare-fun arrayCountValidKeys!0 (array!7338 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!175142 (= res!83056 (= (arrayCountValidKeys!0 (_keys!5462 thiss!1248) #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))) (_size!1210 thiss!1248)))))

(declare-fun b!175143 () Bool)

(declare-fun res!83057 () Bool)

(assert (=> b!175143 (=> (not res!83057) (not e!115630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7338 (_ BitVec 32)) Bool)

(assert (=> b!175143 (= res!83057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(declare-fun b!175144 () Bool)

(declare-datatypes ((List!2239 0))(
  ( (Nil!2236) (Cons!2235 (h!2853 (_ BitVec 64)) (t!7065 List!2239)) )
))
(declare-fun arrayNoDuplicates!0 (array!7338 (_ BitVec 32) List!2239) Bool)

(assert (=> b!175144 (= e!115630 (arrayNoDuplicates!0 (_keys!5462 thiss!1248) #b00000000000000000000000000000000 Nil!2236))))

(assert (= (and d!53311 res!83055) b!175142))

(assert (= (and b!175142 res!83056) b!175143))

(assert (= (and b!175143 res!83057) b!175144))

(declare-fun m!204113 () Bool)

(assert (=> d!53311 m!204113))

(declare-fun m!204115 () Bool)

(assert (=> b!175142 m!204115))

(declare-fun m!204117 () Bool)

(assert (=> b!175143 m!204117))

(declare-fun m!204119 () Bool)

(assert (=> b!175144 m!204119))

(assert (=> start!17470 d!53311))

(declare-fun condMapEmpty!6996 () Bool)

(declare-fun mapDefault!6996 () ValueCell!1707)

(assert (=> mapNonEmpty!6990 (= condMapEmpty!6996 (= mapRest!6990 ((as const (Array (_ BitVec 32) ValueCell!1707)) mapDefault!6996)))))

(declare-fun e!115636 () Bool)

(declare-fun mapRes!6996 () Bool)

(assert (=> mapNonEmpty!6990 (= tp!15663 (and e!115636 mapRes!6996))))

(declare-fun b!175151 () Bool)

(declare-fun e!115635 () Bool)

(assert (=> b!175151 (= e!115635 tp_is_empty!4101)))

(declare-fun b!175152 () Bool)

(assert (=> b!175152 (= e!115636 tp_is_empty!4101)))

(declare-fun mapIsEmpty!6996 () Bool)

(assert (=> mapIsEmpty!6996 mapRes!6996))

(declare-fun mapNonEmpty!6996 () Bool)

(declare-fun tp!15672 () Bool)

(assert (=> mapNonEmpty!6996 (= mapRes!6996 (and tp!15672 e!115635))))

(declare-fun mapValue!6996 () ValueCell!1707)

(declare-fun mapRest!6996 () (Array (_ BitVec 32) ValueCell!1707))

(declare-fun mapKey!6996 () (_ BitVec 32))

(assert (=> mapNonEmpty!6996 (= mapRest!6990 (store mapRest!6996 mapKey!6996 mapValue!6996))))

(assert (= (and mapNonEmpty!6990 condMapEmpty!6996) mapIsEmpty!6996))

(assert (= (and mapNonEmpty!6990 (not condMapEmpty!6996)) mapNonEmpty!6996))

(assert (= (and mapNonEmpty!6996 ((_ is ValueCellFull!1707) mapValue!6996)) b!175151))

(assert (= (and mapNonEmpty!6990 ((_ is ValueCellFull!1707) mapDefault!6996)) b!175152))

(declare-fun m!204121 () Bool)

(assert (=> mapNonEmpty!6996 m!204121))

(declare-fun b_lambda!7031 () Bool)

(assert (= b_lambda!7029 (or (and b!175009 b_free!4329) b_lambda!7031)))

(check-sat (not b!175068) (not b!175144) (not mapNonEmpty!6996) (not b!175123) (not b!175114) (not b!175059) (not bm!17738) (not b_lambda!7031) (not bm!17736) (not d!53309) tp_is_empty!4101 b_and!10825 (not b!175129) (not bm!17737) (not b_next!4329) (not b!175070) (not b!175142) (not b!175117) (not b!175131) (not b!175143) (not d!53305) (not b!175119) (not d!53307) (not d!53311) (not bm!17735) (not b!175130) (not b!175125))
(check-sat b_and!10825 (not b_next!4329))
(get-model)

(declare-fun d!53313 () Bool)

(declare-fun e!115639 () Bool)

(assert (=> d!53313 e!115639))

(declare-fun res!83063 () Bool)

(assert (=> d!53313 (=> (not res!83063) (not e!115639))))

(declare-fun lt!86720 () ListLongMap!2195)

(assert (=> d!53313 (= res!83063 (contains!1165 lt!86720 (_1!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(declare-fun lt!86721 () List!2238)

(assert (=> d!53313 (= lt!86720 (ListLongMap!2196 lt!86721))))

(declare-fun lt!86719 () Unit!5373)

(declare-fun lt!86722 () Unit!5373)

(assert (=> d!53313 (= lt!86719 lt!86722)))

(assert (=> d!53313 (= (getValueByKey!187 lt!86721 (_1!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!101 (List!2238 (_ BitVec 64) V!5115) Unit!5373)

(assert (=> d!53313 (= lt!86722 (lemmaContainsTupThenGetReturnValue!101 lt!86721 (_1!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(declare-fun insertStrictlySorted!103 (List!2238 (_ BitVec 64) V!5115) List!2238)

(assert (=> d!53313 (= lt!86721 (insertStrictlySorted!103 (toList!1113 call!17741) (_1!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(assert (=> d!53313 (= (+!245 call!17741 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))) lt!86720)))

(declare-fun b!175157 () Bool)

(declare-fun res!83062 () Bool)

(assert (=> b!175157 (=> (not res!83062) (not e!115639))))

(assert (=> b!175157 (= res!83062 (= (getValueByKey!187 (toList!1113 lt!86720) (_1!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))))

(declare-fun b!175158 () Bool)

(declare-fun contains!1166 (List!2238 tuple2!3254) Bool)

(assert (=> b!175158 (= e!115639 (contains!1166 (toList!1113 lt!86720) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))

(assert (= (and d!53313 res!83063) b!175157))

(assert (= (and b!175157 res!83062) b!175158))

(declare-fun m!204123 () Bool)

(assert (=> d!53313 m!204123))

(declare-fun m!204125 () Bool)

(assert (=> d!53313 m!204125))

(declare-fun m!204127 () Bool)

(assert (=> d!53313 m!204127))

(declare-fun m!204129 () Bool)

(assert (=> d!53313 m!204129))

(declare-fun m!204131 () Bool)

(assert (=> b!175157 m!204131))

(declare-fun m!204133 () Bool)

(assert (=> b!175158 m!204133))

(assert (=> b!175130 d!53313))

(declare-fun d!53315 () Bool)

(assert (=> d!53315 (= (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!175129 d!53315))

(declare-fun b!175183 () Bool)

(declare-fun e!115655 () Bool)

(assert (=> b!175183 (= e!115655 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175183 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!175184 () Bool)

(declare-fun e!115659 () Bool)

(declare-fun lt!86739 () ListLongMap!2195)

(declare-fun isEmpty!446 (ListLongMap!2195) Bool)

(assert (=> b!175184 (= e!115659 (isEmpty!446 lt!86739))))

(declare-fun b!175185 () Bool)

(declare-fun e!115657 () Bool)

(assert (=> b!175185 (= e!115657 e!115659)))

(declare-fun c!31364 () Bool)

(assert (=> b!175185 (= c!31364 (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun b!175186 () Bool)

(declare-fun e!115654 () ListLongMap!2195)

(declare-fun e!115660 () ListLongMap!2195)

(assert (=> b!175186 (= e!115654 e!115660)))

(declare-fun c!31363 () Bool)

(assert (=> b!175186 (= c!31363 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175187 () Bool)

(assert (=> b!175187 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> b!175187 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3786 (_values!3597 thiss!1248))))))

(declare-fun e!115658 () Bool)

(assert (=> b!175187 (= e!115658 (= (apply!133 lt!86739 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)) (get!1984 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!175188 () Bool)

(declare-fun lt!86738 () Unit!5373)

(declare-fun lt!86742 () Unit!5373)

(assert (=> b!175188 (= lt!86738 lt!86742)))

(declare-fun lt!86743 () (_ BitVec 64))

(declare-fun lt!86740 () (_ BitVec 64))

(declare-fun lt!86741 () V!5115)

(declare-fun lt!86737 () ListLongMap!2195)

(assert (=> b!175188 (not (contains!1165 (+!245 lt!86737 (tuple2!3255 lt!86743 lt!86741)) lt!86740))))

(declare-fun addStillNotContains!76 (ListLongMap!2195 (_ BitVec 64) V!5115 (_ BitVec 64)) Unit!5373)

(assert (=> b!175188 (= lt!86742 (addStillNotContains!76 lt!86737 lt!86743 lt!86741 lt!86740))))

(assert (=> b!175188 (= lt!86740 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!175188 (= lt!86741 (get!1984 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!175188 (= lt!86743 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!17747 () ListLongMap!2195)

(assert (=> b!175188 (= lt!86737 call!17747)))

(assert (=> b!175188 (= e!115660 (+!245 call!17747 (tuple2!3255 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000) (get!1984 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!175189 () Bool)

(assert (=> b!175189 (= e!115657 e!115658)))

(assert (=> b!175189 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun res!83072 () Bool)

(assert (=> b!175189 (= res!83072 (contains!1165 lt!86739 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175189 (=> (not res!83072) (not e!115658))))

(declare-fun d!53317 () Bool)

(declare-fun e!115656 () Bool)

(assert (=> d!53317 e!115656))

(declare-fun res!83074 () Bool)

(assert (=> d!53317 (=> (not res!83074) (not e!115656))))

(assert (=> d!53317 (= res!83074 (not (contains!1165 lt!86739 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53317 (= lt!86739 e!115654)))

(declare-fun c!31362 () Bool)

(assert (=> d!53317 (= c!31362 (bvsge #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53317 (validMask!0 (mask!8503 thiss!1248))))

(assert (=> d!53317 (= (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)) lt!86739)))

(declare-fun b!175190 () Bool)

(assert (=> b!175190 (= e!115654 (ListLongMap!2196 Nil!2235))))

(declare-fun b!175191 () Bool)

(assert (=> b!175191 (= e!115659 (= lt!86739 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3614 thiss!1248))))))

(declare-fun b!175192 () Bool)

(declare-fun res!83075 () Bool)

(assert (=> b!175192 (=> (not res!83075) (not e!115656))))

(assert (=> b!175192 (= res!83075 (not (contains!1165 lt!86739 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175193 () Bool)

(assert (=> b!175193 (= e!115660 call!17747)))

(declare-fun bm!17744 () Bool)

(assert (=> bm!17744 (= call!17747 (getCurrentListMapNoExtraKeys!163 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3614 thiss!1248)))))

(declare-fun b!175194 () Bool)

(assert (=> b!175194 (= e!115656 e!115657)))

(declare-fun c!31365 () Bool)

(assert (=> b!175194 (= c!31365 e!115655)))

(declare-fun res!83073 () Bool)

(assert (=> b!175194 (=> (not res!83073) (not e!115655))))

(assert (=> b!175194 (= res!83073 (bvslt #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (= (and d!53317 c!31362) b!175190))

(assert (= (and d!53317 (not c!31362)) b!175186))

(assert (= (and b!175186 c!31363) b!175188))

(assert (= (and b!175186 (not c!31363)) b!175193))

(assert (= (or b!175188 b!175193) bm!17744))

(assert (= (and d!53317 res!83074) b!175192))

(assert (= (and b!175192 res!83075) b!175194))

(assert (= (and b!175194 res!83073) b!175183))

(assert (= (and b!175194 c!31365) b!175189))

(assert (= (and b!175194 (not c!31365)) b!175185))

(assert (= (and b!175189 res!83072) b!175187))

(assert (= (and b!175185 c!31364) b!175191))

(assert (= (and b!175185 (not c!31364)) b!175184))

(declare-fun b_lambda!7033 () Bool)

(assert (=> (not b_lambda!7033) (not b!175187)))

(assert (=> b!175187 t!7064))

(declare-fun b_and!10827 () Bool)

(assert (= b_and!10825 (and (=> t!7064 result!4613) b_and!10827)))

(declare-fun b_lambda!7035 () Bool)

(assert (=> (not b_lambda!7035) (not b!175188)))

(assert (=> b!175188 t!7064))

(declare-fun b_and!10829 () Bool)

(assert (= b_and!10827 (and (=> t!7064 result!4613) b_and!10829)))

(declare-fun m!204135 () Bool)

(assert (=> d!53317 m!204135))

(assert (=> d!53317 m!204005))

(assert (=> b!175189 m!204061))

(assert (=> b!175189 m!204061))

(declare-fun m!204137 () Bool)

(assert (=> b!175189 m!204137))

(assert (=> b!175187 m!204103))

(assert (=> b!175187 m!204099))

(assert (=> b!175187 m!204105))

(assert (=> b!175187 m!204099))

(assert (=> b!175187 m!204061))

(declare-fun m!204139 () Bool)

(assert (=> b!175187 m!204139))

(assert (=> b!175187 m!204103))

(assert (=> b!175187 m!204061))

(assert (=> b!175186 m!204061))

(assert (=> b!175186 m!204061))

(assert (=> b!175186 m!204107))

(declare-fun m!204141 () Bool)

(assert (=> bm!17744 m!204141))

(assert (=> b!175183 m!204061))

(assert (=> b!175183 m!204061))

(assert (=> b!175183 m!204107))

(declare-fun m!204143 () Bool)

(assert (=> b!175184 m!204143))

(declare-fun m!204145 () Bool)

(assert (=> b!175192 m!204145))

(assert (=> b!175191 m!204141))

(assert (=> b!175188 m!204103))

(assert (=> b!175188 m!204099))

(assert (=> b!175188 m!204105))

(declare-fun m!204147 () Bool)

(assert (=> b!175188 m!204147))

(assert (=> b!175188 m!204147))

(declare-fun m!204149 () Bool)

(assert (=> b!175188 m!204149))

(assert (=> b!175188 m!204099))

(declare-fun m!204151 () Bool)

(assert (=> b!175188 m!204151))

(declare-fun m!204153 () Bool)

(assert (=> b!175188 m!204153))

(assert (=> b!175188 m!204103))

(assert (=> b!175188 m!204061))

(assert (=> bm!17735 d!53317))

(declare-fun d!53319 () Bool)

(declare-fun e!115661 () Bool)

(assert (=> d!53319 e!115661))

(declare-fun res!83077 () Bool)

(assert (=> d!53319 (=> (not res!83077) (not e!115661))))

(declare-fun lt!86745 () ListLongMap!2195)

(assert (=> d!53319 (= res!83077 (contains!1165 lt!86745 (_1!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))))

(declare-fun lt!86746 () List!2238)

(assert (=> d!53319 (= lt!86745 (ListLongMap!2196 lt!86746))))

(declare-fun lt!86744 () Unit!5373)

(declare-fun lt!86747 () Unit!5373)

(assert (=> d!53319 (= lt!86744 lt!86747)))

(assert (=> d!53319 (= (getValueByKey!187 lt!86746 (_1!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))) (Some!192 (_2!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))))

(assert (=> d!53319 (= lt!86747 (lemmaContainsTupThenGetReturnValue!101 lt!86746 (_1!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))) (_2!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))))

(assert (=> d!53319 (= lt!86746 (insertStrictlySorted!103 (toList!1113 (ite c!31350 call!17739 (ite c!31349 call!17740 call!17744))) (_1!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))) (_2!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))))))

(assert (=> d!53319 (= (+!245 (ite c!31350 call!17739 (ite c!31349 call!17740 call!17744)) (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))) lt!86745)))

(declare-fun b!175195 () Bool)

(declare-fun res!83076 () Bool)

(assert (=> b!175195 (=> (not res!83076) (not e!115661))))

(assert (=> b!175195 (= res!83076 (= (getValueByKey!187 (toList!1113 lt!86745) (_1!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248))))) (Some!192 (_2!1637 (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))))

(declare-fun b!175196 () Bool)

(assert (=> b!175196 (= e!115661 (contains!1166 (toList!1113 lt!86745) (ite (or c!31350 c!31349) (tuple2!3255 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3455 thiss!1248)) (tuple2!3255 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3455 thiss!1248)))))))

(assert (= (and d!53319 res!83077) b!175195))

(assert (= (and b!175195 res!83076) b!175196))

(declare-fun m!204155 () Bool)

(assert (=> d!53319 m!204155))

(declare-fun m!204157 () Bool)

(assert (=> d!53319 m!204157))

(declare-fun m!204159 () Bool)

(assert (=> d!53319 m!204159))

(declare-fun m!204161 () Bool)

(assert (=> d!53319 m!204161))

(declare-fun m!204163 () Bool)

(assert (=> b!175195 m!204163))

(declare-fun m!204165 () Bool)

(assert (=> b!175196 m!204165))

(assert (=> bm!17738 d!53319))

(declare-fun b!175207 () Bool)

(declare-fun e!115672 () Bool)

(declare-fun contains!1167 (List!2239 (_ BitVec 64)) Bool)

(assert (=> b!175207 (= e!115672 (contains!1167 Nil!2236 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175208 () Bool)

(declare-fun e!115673 () Bool)

(declare-fun e!115670 () Bool)

(assert (=> b!175208 (= e!115673 e!115670)))

(declare-fun c!31368 () Bool)

(assert (=> b!175208 (= c!31368 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175209 () Bool)

(declare-fun call!17750 () Bool)

(assert (=> b!175209 (= e!115670 call!17750)))

(declare-fun bm!17747 () Bool)

(assert (=> bm!17747 (= call!17750 (arrayNoDuplicates!0 (_keys!5462 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31368 (Cons!2235 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000) Nil!2236) Nil!2236)))))

(declare-fun b!175210 () Bool)

(assert (=> b!175210 (= e!115670 call!17750)))

(declare-fun b!175211 () Bool)

(declare-fun e!115671 () Bool)

(assert (=> b!175211 (= e!115671 e!115673)))

(declare-fun res!83085 () Bool)

(assert (=> b!175211 (=> (not res!83085) (not e!115673))))

(assert (=> b!175211 (= res!83085 (not e!115672))))

(declare-fun res!83086 () Bool)

(assert (=> b!175211 (=> (not res!83086) (not e!115672))))

(assert (=> b!175211 (= res!83086 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53321 () Bool)

(declare-fun res!83084 () Bool)

(assert (=> d!53321 (=> res!83084 e!115671)))

(assert (=> d!53321 (= res!83084 (bvsge #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53321 (= (arrayNoDuplicates!0 (_keys!5462 thiss!1248) #b00000000000000000000000000000000 Nil!2236) e!115671)))

(assert (= (and d!53321 (not res!83084)) b!175211))

(assert (= (and b!175211 res!83086) b!175207))

(assert (= (and b!175211 res!83085) b!175208))

(assert (= (and b!175208 c!31368) b!175209))

(assert (= (and b!175208 (not c!31368)) b!175210))

(assert (= (or b!175209 b!175210) bm!17747))

(assert (=> b!175207 m!204061))

(assert (=> b!175207 m!204061))

(declare-fun m!204167 () Bool)

(assert (=> b!175207 m!204167))

(assert (=> b!175208 m!204061))

(assert (=> b!175208 m!204061))

(assert (=> b!175208 m!204107))

(assert (=> bm!17747 m!204061))

(declare-fun m!204169 () Bool)

(assert (=> bm!17747 m!204169))

(assert (=> b!175211 m!204061))

(assert (=> b!175211 m!204061))

(assert (=> b!175211 m!204107))

(assert (=> b!175144 d!53321))

(declare-fun b!175220 () Bool)

(declare-fun e!115682 () Bool)

(declare-fun e!115681 () Bool)

(assert (=> b!175220 (= e!115682 e!115681)))

(declare-fun c!31371 () Bool)

(assert (=> b!175220 (= c!31371 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175221 () Bool)

(declare-fun call!17753 () Bool)

(assert (=> b!175221 (= e!115681 call!17753)))

(declare-fun bm!17750 () Bool)

(assert (=> bm!17750 (= call!17753 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(declare-fun b!175222 () Bool)

(declare-fun e!115680 () Bool)

(assert (=> b!175222 (= e!115680 call!17753)))

(declare-fun d!53323 () Bool)

(declare-fun res!83092 () Bool)

(assert (=> d!53323 (=> res!83092 e!115682)))

(assert (=> d!53323 (= res!83092 (bvsge #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53323 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)) e!115682)))

(declare-fun b!175223 () Bool)

(assert (=> b!175223 (= e!115681 e!115680)))

(declare-fun lt!86756 () (_ BitVec 64))

(assert (=> b!175223 (= lt!86756 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86754 () Unit!5373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7338 (_ BitVec 64) (_ BitVec 32)) Unit!5373)

(assert (=> b!175223 (= lt!86754 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5462 thiss!1248) lt!86756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!175223 (arrayContainsKey!0 (_keys!5462 thiss!1248) lt!86756 #b00000000000000000000000000000000)))

(declare-fun lt!86755 () Unit!5373)

(assert (=> b!175223 (= lt!86755 lt!86754)))

(declare-fun res!83091 () Bool)

(assert (=> b!175223 (= res!83091 (= (seekEntryOrOpen!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000) (_keys!5462 thiss!1248) (mask!8503 thiss!1248)) (Found!559 #b00000000000000000000000000000000)))))

(assert (=> b!175223 (=> (not res!83091) (not e!115680))))

(assert (= (and d!53323 (not res!83092)) b!175220))

(assert (= (and b!175220 c!31371) b!175223))

(assert (= (and b!175220 (not c!31371)) b!175221))

(assert (= (and b!175223 res!83091) b!175222))

(assert (= (or b!175222 b!175221) bm!17750))

(assert (=> b!175220 m!204061))

(assert (=> b!175220 m!204061))

(assert (=> b!175220 m!204107))

(declare-fun m!204171 () Bool)

(assert (=> bm!17750 m!204171))

(assert (=> b!175223 m!204061))

(declare-fun m!204173 () Bool)

(assert (=> b!175223 m!204173))

(declare-fun m!204175 () Bool)

(assert (=> b!175223 m!204175))

(assert (=> b!175223 m!204061))

(declare-fun m!204177 () Bool)

(assert (=> b!175223 m!204177))

(assert (=> b!175143 d!53323))

(declare-fun b!175242 () Bool)

(declare-fun e!115693 () SeekEntryResult!559)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!175242 (= e!115693 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8503 thiss!1248)) #b00000000000000000000000000000000 (mask!8503 thiss!1248)) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(declare-fun b!175243 () Bool)

(declare-fun e!115694 () Bool)

(declare-fun e!115696 () Bool)

(assert (=> b!175243 (= e!115694 e!115696)))

(declare-fun res!83099 () Bool)

(declare-fun lt!86762 () SeekEntryResult!559)

(assert (=> b!175243 (= res!83099 (and ((_ is Intermediate!559) lt!86762) (not (undefined!1371 lt!86762)) (bvslt (x!19273 lt!86762) #b01111111111111111111111111111110) (bvsge (x!19273 lt!86762) #b00000000000000000000000000000000) (bvsge (x!19273 lt!86762) #b00000000000000000000000000000000)))))

(assert (=> b!175243 (=> (not res!83099) (not e!115696))))

(declare-fun b!175244 () Bool)

(assert (=> b!175244 (and (bvsge (index!4406 lt!86762) #b00000000000000000000000000000000) (bvslt (index!4406 lt!86762) (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun res!83101 () Bool)

(assert (=> b!175244 (= res!83101 (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4406 lt!86762)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115695 () Bool)

(assert (=> b!175244 (=> res!83101 e!115695)))

(declare-fun b!175245 () Bool)

(assert (=> b!175245 (= e!115694 (bvsge (x!19273 lt!86762) #b01111111111111111111111111111110))))

(declare-fun b!175247 () Bool)

(assert (=> b!175247 (= e!115693 (Intermediate!559 false (toIndex!0 key!828 (mask!8503 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!175248 () Bool)

(assert (=> b!175248 (and (bvsge (index!4406 lt!86762) #b00000000000000000000000000000000) (bvslt (index!4406 lt!86762) (size!3785 (_keys!5462 thiss!1248))))))

(declare-fun res!83100 () Bool)

(assert (=> b!175248 (= res!83100 (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4406 lt!86762)) key!828))))

(assert (=> b!175248 (=> res!83100 e!115695)))

(assert (=> b!175248 (= e!115696 e!115695)))

(declare-fun b!175249 () Bool)

(declare-fun e!115697 () SeekEntryResult!559)

(assert (=> b!175249 (= e!115697 e!115693)))

(declare-fun c!31380 () Bool)

(declare-fun lt!86761 () (_ BitVec 64))

(assert (=> b!175249 (= c!31380 (or (= lt!86761 key!828) (= (bvadd lt!86761 lt!86761) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175250 () Bool)

(assert (=> b!175250 (= e!115697 (Intermediate!559 true (toIndex!0 key!828 (mask!8503 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!175246 () Bool)

(assert (=> b!175246 (and (bvsge (index!4406 lt!86762) #b00000000000000000000000000000000) (bvslt (index!4406 lt!86762) (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> b!175246 (= e!115695 (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4406 lt!86762)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53325 () Bool)

(assert (=> d!53325 e!115694))

(declare-fun c!31378 () Bool)

(assert (=> d!53325 (= c!31378 (and ((_ is Intermediate!559) lt!86762) (undefined!1371 lt!86762)))))

(assert (=> d!53325 (= lt!86762 e!115697)))

(declare-fun c!31379 () Bool)

(assert (=> d!53325 (= c!31379 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!53325 (= lt!86761 (select (arr!3484 (_keys!5462 thiss!1248)) (toIndex!0 key!828 (mask!8503 thiss!1248))))))

(assert (=> d!53325 (validMask!0 (mask!8503 thiss!1248))))

(assert (=> d!53325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8503 thiss!1248)) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)) lt!86762)))

(assert (= (and d!53325 c!31379) b!175250))

(assert (= (and d!53325 (not c!31379)) b!175249))

(assert (= (and b!175249 c!31380) b!175247))

(assert (= (and b!175249 (not c!31380)) b!175242))

(assert (= (and d!53325 c!31378) b!175245))

(assert (= (and d!53325 (not c!31378)) b!175243))

(assert (= (and b!175243 res!83099) b!175248))

(assert (= (and b!175248 (not res!83100)) b!175244))

(assert (= (and b!175244 (not res!83101)) b!175246))

(declare-fun m!204179 () Bool)

(assert (=> b!175248 m!204179))

(assert (=> b!175246 m!204179))

(assert (=> b!175244 m!204179))

(assert (=> d!53325 m!204035))

(declare-fun m!204181 () Bool)

(assert (=> d!53325 m!204181))

(assert (=> d!53325 m!204005))

(assert (=> b!175242 m!204035))

(declare-fun m!204183 () Bool)

(assert (=> b!175242 m!204183))

(assert (=> b!175242 m!204183))

(declare-fun m!204185 () Bool)

(assert (=> b!175242 m!204185))

(assert (=> d!53305 d!53325))

(declare-fun d!53327 () Bool)

(declare-fun lt!86768 () (_ BitVec 32))

(declare-fun lt!86767 () (_ BitVec 32))

(assert (=> d!53327 (= lt!86768 (bvmul (bvxor lt!86767 (bvlshr lt!86767 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53327 (= lt!86767 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53327 (and (bvsge (mask!8503 thiss!1248) #b00000000000000000000000000000000) (let ((res!83102 (let ((h!2854 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19290 (bvmul (bvxor h!2854 (bvlshr h!2854 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19290 (bvlshr x!19290 #b00000000000000000000000000001101)) (mask!8503 thiss!1248)))))) (and (bvslt res!83102 (bvadd (mask!8503 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!83102 #b00000000000000000000000000000000))))))

(assert (=> d!53327 (= (toIndex!0 key!828 (mask!8503 thiss!1248)) (bvand (bvxor lt!86768 (bvlshr lt!86768 #b00000000000000000000000000001101)) (mask!8503 thiss!1248)))))

(assert (=> d!53305 d!53327))

(assert (=> d!53305 d!53303))

(declare-fun d!53329 () Bool)

(declare-fun e!115699 () Bool)

(assert (=> d!53329 e!115699))

(declare-fun res!83103 () Bool)

(assert (=> d!53329 (=> res!83103 e!115699)))

(declare-fun lt!86771 () Bool)

(assert (=> d!53329 (= res!83103 (not lt!86771))))

(declare-fun lt!86772 () Bool)

(assert (=> d!53329 (= lt!86771 lt!86772)))

(declare-fun lt!86769 () Unit!5373)

(declare-fun e!115698 () Unit!5373)

(assert (=> d!53329 (= lt!86769 e!115698)))

(declare-fun c!31381 () Bool)

(assert (=> d!53329 (= c!31381 lt!86772)))

(assert (=> d!53329 (= lt!86772 (containsKey!191 (toList!1113 lt!86700) (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53329 (= (contains!1165 lt!86700 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)) lt!86771)))

(declare-fun b!175251 () Bool)

(declare-fun lt!86770 () Unit!5373)

(assert (=> b!175251 (= e!115698 lt!86770)))

(assert (=> b!175251 (= lt!86770 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 lt!86700) (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175251 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175252 () Bool)

(declare-fun Unit!5377 () Unit!5373)

(assert (=> b!175252 (= e!115698 Unit!5377)))

(declare-fun b!175253 () Bool)

(assert (=> b!175253 (= e!115699 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53329 c!31381) b!175251))

(assert (= (and d!53329 (not c!31381)) b!175252))

(assert (= (and d!53329 (not res!83103)) b!175253))

(assert (=> d!53329 m!204061))

(declare-fun m!204187 () Bool)

(assert (=> d!53329 m!204187))

(assert (=> b!175251 m!204061))

(declare-fun m!204189 () Bool)

(assert (=> b!175251 m!204189))

(assert (=> b!175251 m!204061))

(declare-fun m!204191 () Bool)

(assert (=> b!175251 m!204191))

(assert (=> b!175251 m!204191))

(declare-fun m!204193 () Bool)

(assert (=> b!175251 m!204193))

(assert (=> b!175253 m!204061))

(assert (=> b!175253 m!204191))

(assert (=> b!175253 m!204191))

(assert (=> b!175253 m!204193))

(assert (=> b!175119 d!53329))

(declare-fun d!53331 () Bool)

(declare-fun isEmpty!447 (Option!193) Bool)

(assert (=> d!53331 (= (isDefined!141 (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828)) (not (isEmpty!447 (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))))

(declare-fun bs!7231 () Bool)

(assert (= bs!7231 d!53331))

(assert (=> bs!7231 m!204051))

(declare-fun m!204195 () Bool)

(assert (=> bs!7231 m!204195))

(assert (=> b!175070 d!53331))

(declare-fun b!175263 () Bool)

(declare-fun e!115704 () Option!193)

(declare-fun e!115705 () Option!193)

(assert (=> b!175263 (= e!115704 e!115705)))

(declare-fun c!31387 () Bool)

(assert (=> b!175263 (= c!31387 (and ((_ is Cons!2234) (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) (not (= (_1!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) key!828))))))

(declare-fun b!175264 () Bool)

(assert (=> b!175264 (= e!115705 (getValueByKey!187 (t!7062 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) key!828))))

(declare-fun d!53333 () Bool)

(declare-fun c!31386 () Bool)

(assert (=> d!53333 (= c!31386 (and ((_ is Cons!2234) (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) (= (_1!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) key!828)))))

(assert (=> d!53333 (= (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828) e!115704)))

(declare-fun b!175262 () Bool)

(assert (=> b!175262 (= e!115704 (Some!192 (_2!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))))))

(declare-fun b!175265 () Bool)

(assert (=> b!175265 (= e!115705 None!191)))

(assert (= (and d!53333 c!31386) b!175262))

(assert (= (and d!53333 (not c!31386)) b!175263))

(assert (= (and b!175263 c!31387) b!175264))

(assert (= (and b!175263 (not c!31387)) b!175265))

(declare-fun m!204197 () Bool)

(assert (=> b!175264 m!204197))

(assert (=> b!175070 d!53333))

(declare-fun d!53335 () Bool)

(declare-fun get!1985 (Option!193) V!5115)

(assert (=> d!53335 (= (apply!133 lt!86700 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)) (get!1985 (getValueByKey!187 (toList!1113 lt!86700) (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7232 () Bool)

(assert (= bs!7232 d!53335))

(assert (=> bs!7232 m!204061))

(assert (=> bs!7232 m!204191))

(assert (=> bs!7232 m!204191))

(declare-fun m!204199 () Bool)

(assert (=> bs!7232 m!204199))

(assert (=> b!175125 d!53335))

(declare-fun d!53337 () Bool)

(declare-fun c!31390 () Bool)

(assert (=> d!53337 (= c!31390 ((_ is ValueCellFull!1707) (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!115708 () V!5115)

(assert (=> d!53337 (= (get!1984 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!115708)))

(declare-fun b!175270 () Bool)

(declare-fun get!1986 (ValueCell!1707 V!5115) V!5115)

(assert (=> b!175270 (= e!115708 (get!1986 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!175271 () Bool)

(declare-fun get!1987 (ValueCell!1707 V!5115) V!5115)

(assert (=> b!175271 (= e!115708 (get!1987 (select (arr!3485 (_values!3597 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!471 (defaultEntry!3614 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53337 c!31390) b!175270))

(assert (= (and d!53337 (not c!31390)) b!175271))

(assert (=> b!175270 m!204103))

(assert (=> b!175270 m!204099))

(declare-fun m!204201 () Bool)

(assert (=> b!175270 m!204201))

(assert (=> b!175271 m!204103))

(assert (=> b!175271 m!204099))

(declare-fun m!204203 () Bool)

(assert (=> b!175271 m!204203))

(assert (=> b!175125 d!53337))

(assert (=> d!53309 d!53303))

(declare-fun b!175280 () Bool)

(declare-fun e!115713 () (_ BitVec 32))

(declare-fun call!17756 () (_ BitVec 32))

(assert (=> b!175280 (= e!115713 call!17756)))

(declare-fun b!175281 () Bool)

(declare-fun e!115714 () (_ BitVec 32))

(assert (=> b!175281 (= e!115714 e!115713)))

(declare-fun c!31396 () Bool)

(assert (=> b!175281 (= c!31396 (validKeyInArray!0 (select (arr!3484 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175282 () Bool)

(assert (=> b!175282 (= e!115714 #b00000000000000000000000000000000)))

(declare-fun b!175283 () Bool)

(assert (=> b!175283 (= e!115713 (bvadd #b00000000000000000000000000000001 call!17756))))

(declare-fun d!53339 () Bool)

(declare-fun lt!86775 () (_ BitVec 32))

(assert (=> d!53339 (and (bvsge lt!86775 #b00000000000000000000000000000000) (bvsle lt!86775 (bvsub (size!3785 (_keys!5462 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53339 (= lt!86775 e!115714)))

(declare-fun c!31395 () Bool)

(assert (=> d!53339 (= c!31395 (bvsge #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53339 (and (bvsle #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3785 (_keys!5462 thiss!1248)) (size!3785 (_keys!5462 thiss!1248))))))

(assert (=> d!53339 (= (arrayCountValidKeys!0 (_keys!5462 thiss!1248) #b00000000000000000000000000000000 (size!3785 (_keys!5462 thiss!1248))) lt!86775)))

(declare-fun bm!17753 () Bool)

(assert (=> bm!17753 (= call!17756 (arrayCountValidKeys!0 (_keys!5462 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3785 (_keys!5462 thiss!1248))))))

(assert (= (and d!53339 c!31395) b!175282))

(assert (= (and d!53339 (not c!31395)) b!175281))

(assert (= (and b!175281 c!31396) b!175283))

(assert (= (and b!175281 (not c!31396)) b!175280))

(assert (= (or b!175283 b!175280) bm!17753))

(assert (=> b!175281 m!204061))

(assert (=> b!175281 m!204061))

(assert (=> b!175281 m!204107))

(declare-fun m!204205 () Bool)

(assert (=> bm!17753 m!204205))

(assert (=> b!175142 d!53339))

(declare-fun d!53341 () Bool)

(assert (=> d!53341 (= (apply!133 lt!86700 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1985 (getValueByKey!187 (toList!1113 lt!86700) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7233 () Bool)

(assert (= bs!7233 d!53341))

(declare-fun m!204207 () Bool)

(assert (=> bs!7233 m!204207))

(assert (=> bs!7233 m!204207))

(declare-fun m!204209 () Bool)

(assert (=> bs!7233 m!204209))

(assert (=> b!175117 d!53341))

(declare-fun b!175295 () Bool)

(declare-fun e!115717 () Bool)

(assert (=> b!175295 (= e!115717 (and (bvsge (extraKeys!3351 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3351 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1210 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!53343 () Bool)

(declare-fun res!83114 () Bool)

(assert (=> d!53343 (=> (not res!83114) (not e!115717))))

(assert (=> d!53343 (= res!83114 (validMask!0 (mask!8503 thiss!1248)))))

(assert (=> d!53343 (= (simpleValid!146 thiss!1248) e!115717)))

(declare-fun b!175294 () Bool)

(declare-fun res!83113 () Bool)

(assert (=> b!175294 (=> (not res!83113) (not e!115717))))

(declare-fun size!3789 (LongMapFixedSize!2322) (_ BitVec 32))

(assert (=> b!175294 (= res!83113 (= (size!3789 thiss!1248) (bvadd (_size!1210 thiss!1248) (bvsdiv (bvadd (extraKeys!3351 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!175292 () Bool)

(declare-fun res!83112 () Bool)

(assert (=> b!175292 (=> (not res!83112) (not e!115717))))

(assert (=> b!175292 (= res!83112 (and (= (size!3786 (_values!3597 thiss!1248)) (bvadd (mask!8503 thiss!1248) #b00000000000000000000000000000001)) (= (size!3785 (_keys!5462 thiss!1248)) (size!3786 (_values!3597 thiss!1248))) (bvsge (_size!1210 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1210 thiss!1248) (bvadd (mask!8503 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!175293 () Bool)

(declare-fun res!83115 () Bool)

(assert (=> b!175293 (=> (not res!83115) (not e!115717))))

(assert (=> b!175293 (= res!83115 (bvsge (size!3789 thiss!1248) (_size!1210 thiss!1248)))))

(assert (= (and d!53343 res!83114) b!175292))

(assert (= (and b!175292 res!83112) b!175293))

(assert (= (and b!175293 res!83115) b!175294))

(assert (= (and b!175294 res!83113) b!175295))

(assert (=> d!53343 m!204005))

(declare-fun m!204211 () Bool)

(assert (=> b!175294 m!204211))

(assert (=> b!175293 m!204211))

(assert (=> d!53311 d!53343))

(declare-fun b!175308 () Bool)

(declare-fun e!115726 () SeekEntryResult!559)

(assert (=> b!175308 (= e!115726 Undefined!559)))

(declare-fun b!175309 () Bool)

(declare-fun c!31405 () Bool)

(declare-fun lt!86781 () (_ BitVec 64))

(assert (=> b!175309 (= c!31405 (= lt!86781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115724 () SeekEntryResult!559)

(declare-fun e!115725 () SeekEntryResult!559)

(assert (=> b!175309 (= e!115724 e!115725)))

(declare-fun d!53345 () Bool)

(declare-fun lt!86780 () SeekEntryResult!559)

(assert (=> d!53345 (and (or ((_ is Undefined!559) lt!86780) (not ((_ is Found!559) lt!86780)) (and (bvsge (index!4405 lt!86780) #b00000000000000000000000000000000) (bvslt (index!4405 lt!86780) (size!3785 (_keys!5462 thiss!1248))))) (or ((_ is Undefined!559) lt!86780) ((_ is Found!559) lt!86780) (not ((_ is MissingVacant!559) lt!86780)) (not (= (index!4407 lt!86780) (index!4406 lt!86631))) (and (bvsge (index!4407 lt!86780) #b00000000000000000000000000000000) (bvslt (index!4407 lt!86780) (size!3785 (_keys!5462 thiss!1248))))) (or ((_ is Undefined!559) lt!86780) (ite ((_ is Found!559) lt!86780) (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4405 lt!86780)) key!828) (and ((_ is MissingVacant!559) lt!86780) (= (index!4407 lt!86780) (index!4406 lt!86631)) (= (select (arr!3484 (_keys!5462 thiss!1248)) (index!4407 lt!86780)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53345 (= lt!86780 e!115726)))

(declare-fun c!31404 () Bool)

(assert (=> d!53345 (= c!31404 (bvsge (x!19273 lt!86631) #b01111111111111111111111111111110))))

(assert (=> d!53345 (= lt!86781 (select (arr!3484 (_keys!5462 thiss!1248)) (index!4406 lt!86631)))))

(assert (=> d!53345 (validMask!0 (mask!8503 thiss!1248))))

(assert (=> d!53345 (= (seekKeyOrZeroReturnVacant!0 (x!19273 lt!86631) (index!4406 lt!86631) (index!4406 lt!86631) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)) lt!86780)))

(declare-fun b!175310 () Bool)

(assert (=> b!175310 (= e!115724 (Found!559 (index!4406 lt!86631)))))

(declare-fun b!175311 () Bool)

(assert (=> b!175311 (= e!115726 e!115724)))

(declare-fun c!31403 () Bool)

(assert (=> b!175311 (= c!31403 (= lt!86781 key!828))))

(declare-fun b!175312 () Bool)

(assert (=> b!175312 (= e!115725 (MissingVacant!559 (index!4406 lt!86631)))))

(declare-fun b!175313 () Bool)

(assert (=> b!175313 (= e!115725 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19273 lt!86631) #b00000000000000000000000000000001) (nextIndex!0 (index!4406 lt!86631) (x!19273 lt!86631) (mask!8503 thiss!1248)) (index!4406 lt!86631) key!828 (_keys!5462 thiss!1248) (mask!8503 thiss!1248)))))

(assert (= (and d!53345 c!31404) b!175308))

(assert (= (and d!53345 (not c!31404)) b!175311))

(assert (= (and b!175311 c!31403) b!175310))

(assert (= (and b!175311 (not c!31403)) b!175309))

(assert (= (and b!175309 c!31405) b!175312))

(assert (= (and b!175309 (not c!31405)) b!175313))

(declare-fun m!204213 () Bool)

(assert (=> d!53345 m!204213))

(declare-fun m!204215 () Bool)

(assert (=> d!53345 m!204215))

(assert (=> d!53345 m!204033))

(assert (=> d!53345 m!204005))

(declare-fun m!204217 () Bool)

(assert (=> b!175313 m!204217))

(assert (=> b!175313 m!204217))

(declare-fun m!204219 () Bool)

(assert (=> b!175313 m!204219))

(assert (=> b!175059 d!53345))

(declare-fun d!53347 () Bool)

(assert (=> d!53347 (isDefined!141 (getValueByKey!187 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(declare-fun lt!86784 () Unit!5373)

(declare-fun choose!945 (List!2238 (_ BitVec 64)) Unit!5373)

(assert (=> d!53347 (= lt!86784 (choose!945 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(declare-fun e!115729 () Bool)

(assert (=> d!53347 e!115729))

(declare-fun res!83118 () Bool)

(assert (=> d!53347 (=> (not res!83118) (not e!115729))))

(declare-fun isStrictlySorted!329 (List!2238) Bool)

(assert (=> d!53347 (= res!83118 (isStrictlySorted!329 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))))))

(assert (=> d!53347 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828) lt!86784)))

(declare-fun b!175316 () Bool)

(assert (=> b!175316 (= e!115729 (containsKey!191 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828))))

(assert (= (and d!53347 res!83118) b!175316))

(assert (=> d!53347 m!204051))

(assert (=> d!53347 m!204051))

(assert (=> d!53347 m!204053))

(declare-fun m!204221 () Bool)

(assert (=> d!53347 m!204221))

(declare-fun m!204223 () Bool)

(assert (=> d!53347 m!204223))

(assert (=> b!175316 m!204047))

(assert (=> b!175068 d!53347))

(assert (=> b!175068 d!53331))

(assert (=> b!175068 d!53333))

(declare-fun d!53349 () Bool)

(declare-fun e!115731 () Bool)

(assert (=> d!53349 e!115731))

(declare-fun res!83119 () Bool)

(assert (=> d!53349 (=> res!83119 e!115731)))

(declare-fun lt!86787 () Bool)

(assert (=> d!53349 (= res!83119 (not lt!86787))))

(declare-fun lt!86788 () Bool)

(assert (=> d!53349 (= lt!86787 lt!86788)))

(declare-fun lt!86785 () Unit!5373)

(declare-fun e!115730 () Unit!5373)

(assert (=> d!53349 (= lt!86785 e!115730)))

(declare-fun c!31406 () Bool)

(assert (=> d!53349 (= c!31406 lt!86788)))

(assert (=> d!53349 (= lt!86788 (containsKey!191 (toList!1113 lt!86700) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53349 (= (contains!1165 lt!86700 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86787)))

(declare-fun b!175317 () Bool)

(declare-fun lt!86786 () Unit!5373)

(assert (=> b!175317 (= e!115730 lt!86786)))

(assert (=> b!175317 (= lt!86786 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 lt!86700) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175317 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175318 () Bool)

(declare-fun Unit!5378 () Unit!5373)

(assert (=> b!175318 (= e!115730 Unit!5378)))

(declare-fun b!175319 () Bool)

(assert (=> b!175319 (= e!115731 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53349 c!31406) b!175317))

(assert (= (and d!53349 (not c!31406)) b!175318))

(assert (= (and d!53349 (not res!83119)) b!175319))

(declare-fun m!204225 () Bool)

(assert (=> d!53349 m!204225))

(declare-fun m!204227 () Bool)

(assert (=> b!175317 m!204227))

(assert (=> b!175317 m!204207))

(assert (=> b!175317 m!204207))

(declare-fun m!204229 () Bool)

(assert (=> b!175317 m!204229))

(assert (=> b!175319 m!204207))

(assert (=> b!175319 m!204207))

(assert (=> b!175319 m!204229))

(assert (=> bm!17737 d!53349))

(declare-fun d!53351 () Bool)

(declare-fun e!115732 () Bool)

(assert (=> d!53351 e!115732))

(declare-fun res!83121 () Bool)

(assert (=> d!53351 (=> (not res!83121) (not e!115732))))

(declare-fun lt!86790 () ListLongMap!2195)

(assert (=> d!53351 (= res!83121 (contains!1165 lt!86790 (_1!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))))))

(declare-fun lt!86791 () List!2238)

(assert (=> d!53351 (= lt!86790 (ListLongMap!2196 lt!86791))))

(declare-fun lt!86789 () Unit!5373)

(declare-fun lt!86792 () Unit!5373)

(assert (=> d!53351 (= lt!86789 lt!86792)))

(assert (=> d!53351 (= (getValueByKey!187 lt!86791 (_1!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))))))

(assert (=> d!53351 (= lt!86792 (lemmaContainsTupThenGetReturnValue!101 lt!86791 (_1!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))))))

(assert (=> d!53351 (= lt!86791 (insertStrictlySorted!103 (toList!1113 lt!86708) (_1!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))))))

(assert (=> d!53351 (= (+!245 lt!86708 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) lt!86790)))

(declare-fun b!175320 () Bool)

(declare-fun res!83120 () Bool)

(assert (=> b!175320 (=> (not res!83120) (not e!115732))))

(assert (=> b!175320 (= res!83120 (= (getValueByKey!187 (toList!1113 lt!86790) (_1!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))))))))

(declare-fun b!175321 () Bool)

(assert (=> b!175321 (= e!115732 (contains!1166 (toList!1113 lt!86790) (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))))))

(assert (= (and d!53351 res!83121) b!175320))

(assert (= (and b!175320 res!83120) b!175321))

(declare-fun m!204231 () Bool)

(assert (=> d!53351 m!204231))

(declare-fun m!204233 () Bool)

(assert (=> d!53351 m!204233))

(declare-fun m!204235 () Bool)

(assert (=> d!53351 m!204235))

(declare-fun m!204237 () Bool)

(assert (=> d!53351 m!204237))

(declare-fun m!204239 () Bool)

(assert (=> b!175320 m!204239))

(declare-fun m!204241 () Bool)

(assert (=> b!175321 m!204241))

(assert (=> b!175123 d!53351))

(assert (=> b!175123 d!53317))

(declare-fun d!53353 () Bool)

(declare-fun e!115733 () Bool)

(assert (=> d!53353 e!115733))

(declare-fun res!83123 () Bool)

(assert (=> d!53353 (=> (not res!83123) (not e!115733))))

(declare-fun lt!86794 () ListLongMap!2195)

(assert (=> d!53353 (= res!83123 (contains!1165 lt!86794 (_1!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))))))

(declare-fun lt!86795 () List!2238)

(assert (=> d!53353 (= lt!86794 (ListLongMap!2196 lt!86795))))

(declare-fun lt!86793 () Unit!5373)

(declare-fun lt!86796 () Unit!5373)

(assert (=> d!53353 (= lt!86793 lt!86796)))

(assert (=> d!53353 (= (getValueByKey!187 lt!86795 (_1!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53353 (= lt!86796 (lemmaContainsTupThenGetReturnValue!101 lt!86795 (_1!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53353 (= lt!86795 (insertStrictlySorted!103 (toList!1113 lt!86692) (_1!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53353 (= (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) lt!86794)))

(declare-fun b!175322 () Bool)

(declare-fun res!83122 () Bool)

(assert (=> b!175322 (=> (not res!83122) (not e!115733))))

(assert (=> b!175322 (= res!83122 (= (getValueByKey!187 (toList!1113 lt!86794) (_1!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))))))))

(declare-fun b!175323 () Bool)

(assert (=> b!175323 (= e!115733 (contains!1166 (toList!1113 lt!86794) (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))))))

(assert (= (and d!53353 res!83123) b!175322))

(assert (= (and b!175322 res!83122) b!175323))

(declare-fun m!204243 () Bool)

(assert (=> d!53353 m!204243))

(declare-fun m!204245 () Bool)

(assert (=> d!53353 m!204245))

(declare-fun m!204247 () Bool)

(assert (=> d!53353 m!204247))

(declare-fun m!204249 () Bool)

(assert (=> d!53353 m!204249))

(declare-fun m!204251 () Bool)

(assert (=> b!175322 m!204251))

(declare-fun m!204253 () Bool)

(assert (=> b!175323 m!204253))

(assert (=> b!175123 d!53353))

(declare-fun d!53355 () Bool)

(assert (=> d!53355 (= (apply!133 lt!86708 lt!86702) (get!1985 (getValueByKey!187 (toList!1113 lt!86708) lt!86702)))))

(declare-fun bs!7234 () Bool)

(assert (= bs!7234 d!53355))

(declare-fun m!204255 () Bool)

(assert (=> bs!7234 m!204255))

(assert (=> bs!7234 m!204255))

(declare-fun m!204257 () Bool)

(assert (=> bs!7234 m!204257))

(assert (=> b!175123 d!53355))

(declare-fun d!53357 () Bool)

(declare-fun e!115735 () Bool)

(assert (=> d!53357 e!115735))

(declare-fun res!83124 () Bool)

(assert (=> d!53357 (=> res!83124 e!115735)))

(declare-fun lt!86799 () Bool)

(assert (=> d!53357 (= res!83124 (not lt!86799))))

(declare-fun lt!86800 () Bool)

(assert (=> d!53357 (= lt!86799 lt!86800)))

(declare-fun lt!86797 () Unit!5373)

(declare-fun e!115734 () Unit!5373)

(assert (=> d!53357 (= lt!86797 e!115734)))

(declare-fun c!31407 () Bool)

(assert (=> d!53357 (= c!31407 lt!86800)))

(assert (=> d!53357 (= lt!86800 (containsKey!191 (toList!1113 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) lt!86703))))

(assert (=> d!53357 (= (contains!1165 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) lt!86703) lt!86799)))

(declare-fun b!175324 () Bool)

(declare-fun lt!86798 () Unit!5373)

(assert (=> b!175324 (= e!115734 lt!86798)))

(assert (=> b!175324 (= lt!86798 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) lt!86703))))

(assert (=> b!175324 (isDefined!141 (getValueByKey!187 (toList!1113 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) lt!86703))))

(declare-fun b!175325 () Bool)

(declare-fun Unit!5379 () Unit!5373)

(assert (=> b!175325 (= e!115734 Unit!5379)))

(declare-fun b!175326 () Bool)

(assert (=> b!175326 (= e!115735 (isDefined!141 (getValueByKey!187 (toList!1113 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248)))) lt!86703)))))

(assert (= (and d!53357 c!31407) b!175324))

(assert (= (and d!53357 (not c!31407)) b!175325))

(assert (= (and d!53357 (not res!83124)) b!175326))

(declare-fun m!204259 () Bool)

(assert (=> d!53357 m!204259))

(declare-fun m!204261 () Bool)

(assert (=> b!175324 m!204261))

(declare-fun m!204263 () Bool)

(assert (=> b!175324 m!204263))

(assert (=> b!175324 m!204263))

(declare-fun m!204265 () Bool)

(assert (=> b!175324 m!204265))

(assert (=> b!175326 m!204263))

(assert (=> b!175326 m!204263))

(assert (=> b!175326 m!204265))

(assert (=> b!175123 d!53357))

(declare-fun d!53359 () Bool)

(assert (=> d!53359 (= (apply!133 (+!245 lt!86705 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) lt!86707) (apply!133 lt!86705 lt!86707))))

(declare-fun lt!86803 () Unit!5373)

(declare-fun choose!946 (ListLongMap!2195 (_ BitVec 64) V!5115 (_ BitVec 64)) Unit!5373)

(assert (=> d!53359 (= lt!86803 (choose!946 lt!86705 lt!86697 (minValue!3455 thiss!1248) lt!86707))))

(declare-fun e!115738 () Bool)

(assert (=> d!53359 e!115738))

(declare-fun res!83127 () Bool)

(assert (=> d!53359 (=> (not res!83127) (not e!115738))))

(assert (=> d!53359 (= res!83127 (contains!1165 lt!86705 lt!86707))))

(assert (=> d!53359 (= (addApplyDifferent!109 lt!86705 lt!86697 (minValue!3455 thiss!1248) lt!86707) lt!86803)))

(declare-fun b!175330 () Bool)

(assert (=> b!175330 (= e!115738 (not (= lt!86707 lt!86697)))))

(assert (= (and d!53359 res!83127) b!175330))

(assert (=> d!53359 m!204075))

(declare-fun m!204267 () Bool)

(assert (=> d!53359 m!204267))

(assert (=> d!53359 m!204077))

(assert (=> d!53359 m!204079))

(assert (=> d!53359 m!204077))

(declare-fun m!204269 () Bool)

(assert (=> d!53359 m!204269))

(assert (=> b!175123 d!53359))

(declare-fun d!53361 () Bool)

(assert (=> d!53361 (= (apply!133 lt!86699 lt!86698) (get!1985 (getValueByKey!187 (toList!1113 lt!86699) lt!86698)))))

(declare-fun bs!7235 () Bool)

(assert (= bs!7235 d!53361))

(declare-fun m!204271 () Bool)

(assert (=> bs!7235 m!204271))

(assert (=> bs!7235 m!204271))

(declare-fun m!204273 () Bool)

(assert (=> bs!7235 m!204273))

(assert (=> b!175123 d!53361))

(declare-fun d!53363 () Bool)

(assert (=> d!53363 (contains!1165 (+!245 lt!86692 (tuple2!3255 lt!86696 (zeroValue!3455 thiss!1248))) lt!86703)))

(declare-fun lt!86806 () Unit!5373)

(declare-fun choose!947 (ListLongMap!2195 (_ BitVec 64) V!5115 (_ BitVec 64)) Unit!5373)

(assert (=> d!53363 (= lt!86806 (choose!947 lt!86692 lt!86696 (zeroValue!3455 thiss!1248) lt!86703))))

(assert (=> d!53363 (contains!1165 lt!86692 lt!86703)))

(assert (=> d!53363 (= (addStillContains!109 lt!86692 lt!86696 (zeroValue!3455 thiss!1248) lt!86703) lt!86806)))

(declare-fun bs!7236 () Bool)

(assert (= bs!7236 d!53363))

(assert (=> bs!7236 m!204067))

(assert (=> bs!7236 m!204067))

(assert (=> bs!7236 m!204091))

(declare-fun m!204275 () Bool)

(assert (=> bs!7236 m!204275))

(declare-fun m!204277 () Bool)

(assert (=> bs!7236 m!204277))

(assert (=> b!175123 d!53363))

(declare-fun d!53365 () Bool)

(assert (=> d!53365 (= (apply!133 (+!245 lt!86705 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) lt!86707) (get!1985 (getValueByKey!187 (toList!1113 (+!245 lt!86705 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))) lt!86707)))))

(declare-fun bs!7237 () Bool)

(assert (= bs!7237 d!53365))

(declare-fun m!204279 () Bool)

(assert (=> bs!7237 m!204279))

(assert (=> bs!7237 m!204279))

(declare-fun m!204281 () Bool)

(assert (=> bs!7237 m!204281))

(assert (=> b!175123 d!53365))

(declare-fun d!53367 () Bool)

(declare-fun e!115739 () Bool)

(assert (=> d!53367 e!115739))

(declare-fun res!83129 () Bool)

(assert (=> d!53367 (=> (not res!83129) (not e!115739))))

(declare-fun lt!86808 () ListLongMap!2195)

(assert (=> d!53367 (= res!83129 (contains!1165 lt!86808 (_1!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))))))

(declare-fun lt!86809 () List!2238)

(assert (=> d!53367 (= lt!86808 (ListLongMap!2196 lt!86809))))

(declare-fun lt!86807 () Unit!5373)

(declare-fun lt!86810 () Unit!5373)

(assert (=> d!53367 (= lt!86807 lt!86810)))

(assert (=> d!53367 (= (getValueByKey!187 lt!86809 (_1!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53367 (= lt!86810 (lemmaContainsTupThenGetReturnValue!101 lt!86809 (_1!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53367 (= lt!86809 (insertStrictlySorted!103 (toList!1113 lt!86699) (_1!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))))))

(assert (=> d!53367 (= (+!245 lt!86699 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) lt!86808)))

(declare-fun b!175332 () Bool)

(declare-fun res!83128 () Bool)

(assert (=> b!175332 (=> (not res!83128) (not e!115739))))

(assert (=> b!175332 (= res!83128 (= (getValueByKey!187 (toList!1113 lt!86808) (_1!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))))))))

(declare-fun b!175333 () Bool)

(assert (=> b!175333 (= e!115739 (contains!1166 (toList!1113 lt!86808) (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))))))

(assert (= (and d!53367 res!83129) b!175332))

(assert (= (and b!175332 res!83128) b!175333))

(declare-fun m!204283 () Bool)

(assert (=> d!53367 m!204283))

(declare-fun m!204285 () Bool)

(assert (=> d!53367 m!204285))

(declare-fun m!204287 () Bool)

(assert (=> d!53367 m!204287))

(declare-fun m!204289 () Bool)

(assert (=> d!53367 m!204289))

(declare-fun m!204291 () Bool)

(assert (=> b!175332 m!204291))

(declare-fun m!204293 () Bool)

(assert (=> b!175333 m!204293))

(assert (=> b!175123 d!53367))

(declare-fun d!53369 () Bool)

(assert (=> d!53369 (= (apply!133 (+!245 lt!86699 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) lt!86698) (apply!133 lt!86699 lt!86698))))

(declare-fun lt!86811 () Unit!5373)

(assert (=> d!53369 (= lt!86811 (choose!946 lt!86699 lt!86709 (zeroValue!3455 thiss!1248) lt!86698))))

(declare-fun e!115740 () Bool)

(assert (=> d!53369 e!115740))

(declare-fun res!83130 () Bool)

(assert (=> d!53369 (=> (not res!83130) (not e!115740))))

(assert (=> d!53369 (= res!83130 (contains!1165 lt!86699 lt!86698))))

(assert (=> d!53369 (= (addApplyDifferent!109 lt!86699 lt!86709 (zeroValue!3455 thiss!1248) lt!86698) lt!86811)))

(declare-fun b!175334 () Bool)

(assert (=> b!175334 (= e!115740 (not (= lt!86698 lt!86709)))))

(assert (= (and d!53369 res!83130) b!175334))

(assert (=> d!53369 m!204069))

(declare-fun m!204295 () Bool)

(assert (=> d!53369 m!204295))

(assert (=> d!53369 m!204083))

(assert (=> d!53369 m!204085))

(assert (=> d!53369 m!204083))

(declare-fun m!204297 () Bool)

(assert (=> d!53369 m!204297))

(assert (=> b!175123 d!53369))

(declare-fun d!53371 () Bool)

(assert (=> d!53371 (= (apply!133 lt!86705 lt!86707) (get!1985 (getValueByKey!187 (toList!1113 lt!86705) lt!86707)))))

(declare-fun bs!7238 () Bool)

(assert (= bs!7238 d!53371))

(declare-fun m!204299 () Bool)

(assert (=> bs!7238 m!204299))

(assert (=> bs!7238 m!204299))

(declare-fun m!204301 () Bool)

(assert (=> bs!7238 m!204301))

(assert (=> b!175123 d!53371))

(declare-fun d!53373 () Bool)

(assert (=> d!53373 (= (apply!133 (+!245 lt!86699 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248))) lt!86698) (get!1985 (getValueByKey!187 (toList!1113 (+!245 lt!86699 (tuple2!3255 lt!86709 (zeroValue!3455 thiss!1248)))) lt!86698)))))

(declare-fun bs!7239 () Bool)

(assert (= bs!7239 d!53373))

(declare-fun m!204303 () Bool)

(assert (=> bs!7239 m!204303))

(assert (=> bs!7239 m!204303))

(declare-fun m!204305 () Bool)

(assert (=> bs!7239 m!204305))

(assert (=> b!175123 d!53373))

(declare-fun d!53375 () Bool)

(declare-fun e!115741 () Bool)

(assert (=> d!53375 e!115741))

(declare-fun res!83132 () Bool)

(assert (=> d!53375 (=> (not res!83132) (not e!115741))))

(declare-fun lt!86813 () ListLongMap!2195)

(assert (=> d!53375 (= res!83132 (contains!1165 lt!86813 (_1!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))))))

(declare-fun lt!86814 () List!2238)

(assert (=> d!53375 (= lt!86813 (ListLongMap!2196 lt!86814))))

(declare-fun lt!86812 () Unit!5373)

(declare-fun lt!86815 () Unit!5373)

(assert (=> d!53375 (= lt!86812 lt!86815)))

(assert (=> d!53375 (= (getValueByKey!187 lt!86814 (_1!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))))))

(assert (=> d!53375 (= lt!86815 (lemmaContainsTupThenGetReturnValue!101 lt!86814 (_1!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))))))

(assert (=> d!53375 (= lt!86814 (insertStrictlySorted!103 (toList!1113 lt!86705) (_1!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) (_2!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))))))

(assert (=> d!53375 (= (+!245 lt!86705 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))) lt!86813)))

(declare-fun b!175335 () Bool)

(declare-fun res!83131 () Bool)

(assert (=> b!175335 (=> (not res!83131) (not e!115741))))

(assert (=> b!175335 (= res!83131 (= (getValueByKey!187 (toList!1113 lt!86813) (_1!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248)))) (Some!192 (_2!1637 (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))))))))

(declare-fun b!175336 () Bool)

(assert (=> b!175336 (= e!115741 (contains!1166 (toList!1113 lt!86813) (tuple2!3255 lt!86697 (minValue!3455 thiss!1248))))))

(assert (= (and d!53375 res!83132) b!175335))

(assert (= (and b!175335 res!83131) b!175336))

(declare-fun m!204307 () Bool)

(assert (=> d!53375 m!204307))

(declare-fun m!204309 () Bool)

(assert (=> d!53375 m!204309))

(declare-fun m!204311 () Bool)

(assert (=> d!53375 m!204311))

(declare-fun m!204313 () Bool)

(assert (=> d!53375 m!204313))

(declare-fun m!204315 () Bool)

(assert (=> b!175335 m!204315))

(declare-fun m!204317 () Bool)

(assert (=> b!175336 m!204317))

(assert (=> b!175123 d!53375))

(declare-fun d!53377 () Bool)

(assert (=> d!53377 (= (apply!133 (+!245 lt!86708 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) lt!86702) (get!1985 (getValueByKey!187 (toList!1113 (+!245 lt!86708 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248)))) lt!86702)))))

(declare-fun bs!7240 () Bool)

(assert (= bs!7240 d!53377))

(declare-fun m!204319 () Bool)

(assert (=> bs!7240 m!204319))

(assert (=> bs!7240 m!204319))

(declare-fun m!204321 () Bool)

(assert (=> bs!7240 m!204321))

(assert (=> b!175123 d!53377))

(declare-fun d!53379 () Bool)

(assert (=> d!53379 (= (apply!133 (+!245 lt!86708 (tuple2!3255 lt!86691 (minValue!3455 thiss!1248))) lt!86702) (apply!133 lt!86708 lt!86702))))

(declare-fun lt!86816 () Unit!5373)

(assert (=> d!53379 (= lt!86816 (choose!946 lt!86708 lt!86691 (minValue!3455 thiss!1248) lt!86702))))

(declare-fun e!115742 () Bool)

(assert (=> d!53379 e!115742))

(declare-fun res!83133 () Bool)

(assert (=> d!53379 (=> (not res!83133) (not e!115742))))

(assert (=> d!53379 (= res!83133 (contains!1165 lt!86708 lt!86702))))

(assert (=> d!53379 (= (addApplyDifferent!109 lt!86708 lt!86691 (minValue!3455 thiss!1248) lt!86702) lt!86816)))

(declare-fun b!175337 () Bool)

(assert (=> b!175337 (= e!115742 (not (= lt!86702 lt!86691)))))

(assert (= (and d!53379 res!83133) b!175337))

(assert (=> d!53379 m!204093))

(declare-fun m!204323 () Bool)

(assert (=> d!53379 m!204323))

(assert (=> d!53379 m!204081))

(assert (=> d!53379 m!204089))

(assert (=> d!53379 m!204081))

(declare-fun m!204325 () Bool)

(assert (=> d!53379 m!204325))

(assert (=> b!175123 d!53379))

(declare-fun d!53381 () Bool)

(declare-fun res!83138 () Bool)

(declare-fun e!115747 () Bool)

(assert (=> d!53381 (=> res!83138 e!115747)))

(assert (=> d!53381 (= res!83138 (and ((_ is Cons!2234) (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) (= (_1!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) key!828)))))

(assert (=> d!53381 (= (containsKey!191 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))) key!828) e!115747)))

(declare-fun b!175342 () Bool)

(declare-fun e!115748 () Bool)

(assert (=> b!175342 (= e!115747 e!115748)))

(declare-fun res!83139 () Bool)

(assert (=> b!175342 (=> (not res!83139) (not e!115748))))

(assert (=> b!175342 (= res!83139 (and (or (not ((_ is Cons!2234) (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) (bvsle (_1!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) key!828)) ((_ is Cons!2234) (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) (bvslt (_1!1637 (h!2852 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248))))) key!828)))))

(declare-fun b!175343 () Bool)

(assert (=> b!175343 (= e!115748 (containsKey!191 (t!7062 (toList!1113 (getCurrentListMap!760 (_keys!5462 thiss!1248) (_values!3597 thiss!1248) (mask!8503 thiss!1248) (extraKeys!3351 thiss!1248) (zeroValue!3455 thiss!1248) (minValue!3455 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3614 thiss!1248)))) key!828))))

(assert (= (and d!53381 (not res!83138)) b!175342))

(assert (= (and b!175342 res!83139) b!175343))

(declare-fun m!204327 () Bool)

(assert (=> b!175343 m!204327))

(assert (=> d!53307 d!53381))

(declare-fun d!53383 () Bool)

(assert (=> d!53383 (= (apply!133 lt!86700 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1985 (getValueByKey!187 (toList!1113 lt!86700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7241 () Bool)

(assert (= bs!7241 d!53383))

(declare-fun m!204329 () Bool)

(assert (=> bs!7241 m!204329))

(assert (=> bs!7241 m!204329))

(declare-fun m!204331 () Bool)

(assert (=> bs!7241 m!204331))

(assert (=> b!175131 d!53383))

(assert (=> b!175114 d!53315))

(declare-fun d!53385 () Bool)

(declare-fun e!115750 () Bool)

(assert (=> d!53385 e!115750))

(declare-fun res!83140 () Bool)

(assert (=> d!53385 (=> res!83140 e!115750)))

(declare-fun lt!86819 () Bool)

(assert (=> d!53385 (= res!83140 (not lt!86819))))

(declare-fun lt!86820 () Bool)

(assert (=> d!53385 (= lt!86819 lt!86820)))

(declare-fun lt!86817 () Unit!5373)

(declare-fun e!115749 () Unit!5373)

(assert (=> d!53385 (= lt!86817 e!115749)))

(declare-fun c!31408 () Bool)

(assert (=> d!53385 (= c!31408 lt!86820)))

(assert (=> d!53385 (= lt!86820 (containsKey!191 (toList!1113 lt!86700) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53385 (= (contains!1165 lt!86700 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86819)))

(declare-fun b!175344 () Bool)

(declare-fun lt!86818 () Unit!5373)

(assert (=> b!175344 (= e!115749 lt!86818)))

(assert (=> b!175344 (= lt!86818 (lemmaContainsKeyImpliesGetValueByKeyDefined!140 (toList!1113 lt!86700) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175344 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175345 () Bool)

(declare-fun Unit!5380 () Unit!5373)

(assert (=> b!175345 (= e!115749 Unit!5380)))

(declare-fun b!175346 () Bool)

(assert (=> b!175346 (= e!115750 (isDefined!141 (getValueByKey!187 (toList!1113 lt!86700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53385 c!31408) b!175344))

(assert (= (and d!53385 (not c!31408)) b!175345))

(assert (= (and d!53385 (not res!83140)) b!175346))

(declare-fun m!204333 () Bool)

(assert (=> d!53385 m!204333))

(declare-fun m!204335 () Bool)

(assert (=> b!175344 m!204335))

(assert (=> b!175344 m!204329))

(assert (=> b!175344 m!204329))

(declare-fun m!204337 () Bool)

(assert (=> b!175344 m!204337))

(assert (=> b!175346 m!204329))

(assert (=> b!175346 m!204329))

(assert (=> b!175346 m!204337))

(assert (=> bm!17736 d!53385))

(declare-fun condMapEmpty!6997 () Bool)

(declare-fun mapDefault!6997 () ValueCell!1707)

(assert (=> mapNonEmpty!6996 (= condMapEmpty!6997 (= mapRest!6996 ((as const (Array (_ BitVec 32) ValueCell!1707)) mapDefault!6997)))))

(declare-fun e!115752 () Bool)

(declare-fun mapRes!6997 () Bool)

(assert (=> mapNonEmpty!6996 (= tp!15672 (and e!115752 mapRes!6997))))

(declare-fun b!175347 () Bool)

(declare-fun e!115751 () Bool)

(assert (=> b!175347 (= e!115751 tp_is_empty!4101)))

(declare-fun b!175348 () Bool)

(assert (=> b!175348 (= e!115752 tp_is_empty!4101)))

(declare-fun mapIsEmpty!6997 () Bool)

(assert (=> mapIsEmpty!6997 mapRes!6997))

(declare-fun mapNonEmpty!6997 () Bool)

(declare-fun tp!15673 () Bool)

(assert (=> mapNonEmpty!6997 (= mapRes!6997 (and tp!15673 e!115751))))

(declare-fun mapKey!6997 () (_ BitVec 32))

(declare-fun mapValue!6997 () ValueCell!1707)

(declare-fun mapRest!6997 () (Array (_ BitVec 32) ValueCell!1707))

(assert (=> mapNonEmpty!6997 (= mapRest!6996 (store mapRest!6997 mapKey!6997 mapValue!6997))))

(assert (= (and mapNonEmpty!6996 condMapEmpty!6997) mapIsEmpty!6997))

(assert (= (and mapNonEmpty!6996 (not condMapEmpty!6997)) mapNonEmpty!6997))

(assert (= (and mapNonEmpty!6997 ((_ is ValueCellFull!1707) mapValue!6997)) b!175347))

(assert (= (and mapNonEmpty!6996 ((_ is ValueCellFull!1707) mapDefault!6997)) b!175348))

(declare-fun m!204339 () Bool)

(assert (=> mapNonEmpty!6997 m!204339))

(declare-fun b_lambda!7037 () Bool)

(assert (= b_lambda!7035 (or (and b!175009 b_free!4329) b_lambda!7037)))

(declare-fun b_lambda!7039 () Bool)

(assert (= b_lambda!7033 (or (and b!175009 b_free!4329) b_lambda!7039)))

(check-sat (not b!175191) (not b!175211) (not d!53343) (not bm!17747) (not d!53373) (not b!175316) (not d!53361) (not b!175320) (not b!175187) (not d!53355) tp_is_empty!4101 (not b!175157) (not b!175281) (not d!53329) (not b!175319) (not d!53345) (not b!175242) (not b!175158) (not d!53375) (not d!53365) (not d!53379) (not b_next!4329) (not d!53347) (not b!175344) (not d!53367) (not d!53359) (not b!175251) (not b!175188) (not d!53369) (not b!175321) (not b!175293) (not b!175336) (not b!175343) (not b_lambda!7037) (not b!175183) (not b!175189) (not b!175322) (not b!175208) (not b!175333) (not b!175326) (not b!175207) (not d!53351) (not d!53377) (not d!53371) (not bm!17750) (not b!175264) (not d!53313) b_and!10829 (not d!53357) (not d!53331) (not bm!17744) (not b!175346) (not d!53325) (not b_lambda!7039) (not b!175317) (not b!175335) (not d!53335) (not b!175294) (not d!53349) (not b!175332) (not b!175324) (not b!175313) (not mapNonEmpty!6997) (not b!175192) (not b!175223) (not b!175195) (not b!175270) (not d!53319) (not d!53341) (not b_lambda!7031) (not b!175184) (not d!53363) (not bm!17753) (not b!175186) (not b!175271) (not d!53317) (not b!175220) (not d!53383) (not d!53385) (not b!175323) (not b!175253) (not b!175196) (not d!53353))
(check-sat b_and!10829 (not b_next!4329))
