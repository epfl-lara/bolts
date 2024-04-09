; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3632 () Bool)

(assert start!3632)

(declare-fun b!25125 () Bool)

(declare-fun b_free!765 () Bool)

(declare-fun b_next!765 () Bool)

(assert (=> b!25125 (= b_free!765 (not b_next!765))))

(declare-fun tp!3547 () Bool)

(declare-fun b_and!1561 () Bool)

(assert (=> b!25125 (= tp!3547 b_and!1561)))

(declare-fun b!25117 () Bool)

(declare-fun e!16249 () Bool)

(declare-fun e!16254 () Bool)

(assert (=> b!25117 (= e!16249 e!16254)))

(declare-fun b!25118 () Bool)

(declare-fun e!16251 () Bool)

(declare-fun tp_is_empty!1029 () Bool)

(assert (=> b!25118 (= e!16251 tp_is_empty!1029)))

(declare-fun b!25119 () Bool)

(declare-datatypes ((V!1197 0))(
  ( (V!1198 (val!541 Int)) )
))
(declare-datatypes ((ValueCell!315 0))(
  ( (ValueCellFull!315 (v!1619 V!1197)) (EmptyCell!315) )
))
(declare-datatypes ((array!1289 0))(
  ( (array!1290 (arr!609 (Array (_ BitVec 32) ValueCell!315)) (size!710 (_ BitVec 32))) )
))
(declare-datatypes ((array!1291 0))(
  ( (array!1292 (arr!610 (Array (_ BitVec 32) (_ BitVec 64))) (size!711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!216 0))(
  ( (LongMapFixedSize!217 (defaultEntry!1765 Int) (mask!4764 (_ BitVec 32)) (extraKeys!1658 (_ BitVec 32)) (zeroValue!1685 V!1197) (minValue!1685 V!1197) (_size!155 (_ BitVec 32)) (_keys!3191 array!1291) (_values!1750 array!1289) (_vacant!155 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!954 0))(
  ( (tuple2!955 (_1!484 Bool) (_2!484 LongMapFixedSize!216)) )
))
(declare-fun lt!9718 () tuple2!954)

(declare-fun call!2234 () tuple2!954)

(assert (=> b!25119 (= lt!9718 call!2234)))

(declare-datatypes ((Cell!216 0))(
  ( (Cell!217 (v!1620 LongMapFixedSize!216)) )
))
(declare-datatypes ((tuple2!956 0))(
  ( (tuple2!957 (_1!485 Bool) (_2!485 Cell!216)) )
))
(declare-fun e!16246 () tuple2!956)

(assert (=> b!25119 (= e!16246 (tuple2!957 (_1!484 lt!9718) (Cell!217 (_2!484 lt!9718))))))

(declare-fun b!25120 () Bool)

(declare-fun res!15190 () Bool)

(declare-fun e!16247 () Bool)

(assert (=> b!25120 (=> (not res!15190) (not e!16247))))

(declare-datatypes ((LongMap!216 0))(
  ( (LongMap!217 (underlying!119 Cell!216)) )
))
(declare-fun thiss!938 () LongMap!216)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!25120 (= res!15190 (validMask!0 (mask!4764 (v!1620 (underlying!119 thiss!938)))))))

(declare-fun mapNonEmpty!1039 () Bool)

(declare-fun mapRes!1039 () Bool)

(declare-fun tp!3546 () Bool)

(declare-fun e!16245 () Bool)

(assert (=> mapNonEmpty!1039 (= mapRes!1039 (and tp!3546 e!16245))))

(declare-fun mapKey!1039 () (_ BitVec 32))

(declare-fun mapValue!1039 () ValueCell!315)

(declare-fun mapRest!1039 () (Array (_ BitVec 32) ValueCell!315))

(assert (=> mapNonEmpty!1039 (= (arr!609 (_values!1750 (v!1620 (underlying!119 thiss!938)))) (store mapRest!1039 mapKey!1039 mapValue!1039))))

(declare-fun b!25121 () Bool)

(declare-fun e!16255 () tuple2!956)

(assert (=> b!25121 (= e!16255 e!16246)))

(declare-fun c!3461 () Bool)

(declare-fun lt!9716 () Bool)

(assert (=> b!25121 (= c!3461 (and (not lt!9716) (= (bvand (extraKeys!1658 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!25122 () Bool)

(declare-fun c!3462 () Bool)

(assert (=> b!25122 (= c!3462 (and (not (= (bvand (extraKeys!1658 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!9716))))

(declare-fun e!16244 () tuple2!956)

(assert (=> b!25122 (= e!16246 e!16244)))

(declare-fun b!25123 () Bool)

(declare-fun e!16250 () Bool)

(assert (=> b!25123 (= e!16250 e!16247)))

(declare-fun res!15189 () Bool)

(assert (=> b!25123 (=> (not res!15189) (not e!16247))))

(assert (=> b!25123 (= res!15189 (_1!485 e!16255))))

(declare-fun c!3463 () Bool)

(assert (=> b!25123 (= c!3463 (and (not lt!9716) (not (= (bvand (extraKeys!1658 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!25123 (= lt!9716 (= (bvand (extraKeys!1658 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!9714 () LongMapFixedSize!216)

(declare-fun getNewLongMapFixedSize!32 ((_ BitVec 32) Int) LongMapFixedSize!216)

(declare-fun computeNewMask!29 (LongMap!216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!25123 (= lt!9714 (getNewLongMapFixedSize!32 (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) (defaultEntry!1765 (v!1620 (underlying!119 thiss!938)))))))

(declare-fun b!25124 () Bool)

(assert (=> b!25124 (= e!16247 (and (= (size!711 (_keys!3191 (v!1620 (underlying!119 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4764 (v!1620 (underlying!119 thiss!938))))) (bvslt (bvsub (size!711 (_keys!3191 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!16248 () Bool)

(declare-fun e!16252 () Bool)

(declare-fun array_inv!429 (array!1291) Bool)

(declare-fun array_inv!430 (array!1289) Bool)

(assert (=> b!25125 (= e!16252 (and tp!3547 tp_is_empty!1029 (array_inv!429 (_keys!3191 (v!1620 (underlying!119 thiss!938)))) (array_inv!430 (_values!1750 (v!1620 (underlying!119 thiss!938)))) e!16248))))

(declare-fun b!25126 () Bool)

(assert (=> b!25126 (= e!16245 tp_is_empty!1029)))

(declare-fun b!25127 () Bool)

(assert (=> b!25127 (= e!16254 e!16252)))

(declare-fun b!25128 () Bool)

(assert (=> b!25128 (= e!16248 (and e!16251 mapRes!1039))))

(declare-fun condMapEmpty!1039 () Bool)

(declare-fun mapDefault!1039 () ValueCell!315)

(assert (=> b!25128 (= condMapEmpty!1039 (= (arr!609 (_values!1750 (v!1620 (underlying!119 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!315)) mapDefault!1039)))))

(declare-fun res!15188 () Bool)

(assert (=> start!3632 (=> (not res!15188) (not e!16250))))

(declare-fun valid!111 (LongMap!216) Bool)

(assert (=> start!3632 (= res!15188 (valid!111 thiss!938))))

(assert (=> start!3632 e!16250))

(assert (=> start!3632 e!16249))

(declare-fun b!25129 () Bool)

(declare-fun lt!9715 () tuple2!954)

(assert (=> b!25129 (= e!16244 (tuple2!957 (_1!484 lt!9715) (Cell!217 (_2!484 lt!9715))))))

(assert (=> b!25129 (= lt!9715 call!2234)))

(declare-fun mapIsEmpty!1039 () Bool)

(assert (=> mapIsEmpty!1039 mapRes!1039))

(declare-fun call!2233 () tuple2!954)

(declare-fun bm!2230 () Bool)

(declare-fun update!37 (LongMapFixedSize!216 (_ BitVec 64) V!1197) tuple2!954)

(assert (=> bm!2230 (= call!2233 (update!37 lt!9714 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))))))

(declare-fun b!25130 () Bool)

(declare-fun lt!9719 () tuple2!954)

(declare-fun lt!9717 () tuple2!954)

(assert (=> b!25130 (= e!16255 (tuple2!957 (and (_1!484 lt!9719) (_1!484 lt!9717)) (Cell!217 (_2!484 lt!9717))))))

(assert (=> b!25130 (= lt!9719 call!2233)))

(assert (=> b!25130 (= lt!9717 (update!37 (_2!484 lt!9719) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938)))))))

(declare-fun b!25131 () Bool)

(assert (=> b!25131 (= e!16244 (tuple2!957 true (Cell!217 lt!9714)))))

(declare-fun bm!2231 () Bool)

(assert (=> bm!2231 (= call!2234 call!2233)))

(assert (= (and start!3632 res!15188) b!25123))

(assert (= (and b!25123 c!3463) b!25130))

(assert (= (and b!25123 (not c!3463)) b!25121))

(assert (= (and b!25121 c!3461) b!25119))

(assert (= (and b!25121 (not c!3461)) b!25122))

(assert (= (and b!25122 c!3462) b!25129))

(assert (= (and b!25122 (not c!3462)) b!25131))

(assert (= (or b!25119 b!25129) bm!2231))

(assert (= (or b!25130 bm!2231) bm!2230))

(assert (= (and b!25123 res!15189) b!25120))

(assert (= (and b!25120 res!15190) b!25124))

(assert (= (and b!25128 condMapEmpty!1039) mapIsEmpty!1039))

(assert (= (and b!25128 (not condMapEmpty!1039)) mapNonEmpty!1039))

(get-info :version)

(assert (= (and mapNonEmpty!1039 ((_ is ValueCellFull!315) mapValue!1039)) b!25126))

(assert (= (and b!25128 ((_ is ValueCellFull!315) mapDefault!1039)) b!25118))

(assert (= b!25125 b!25128))

(assert (= b!25127 b!25125))

(assert (= b!25117 b!25127))

(assert (= start!3632 b!25117))

(declare-fun m!20327 () Bool)

(assert (=> b!25120 m!20327))

(declare-fun m!20329 () Bool)

(assert (=> b!25130 m!20329))

(declare-fun m!20331 () Bool)

(assert (=> mapNonEmpty!1039 m!20331))

(declare-fun m!20333 () Bool)

(assert (=> b!25125 m!20333))

(declare-fun m!20335 () Bool)

(assert (=> b!25125 m!20335))

(declare-fun m!20337 () Bool)

(assert (=> bm!2230 m!20337))

(declare-fun m!20339 () Bool)

(assert (=> start!3632 m!20339))

(declare-fun m!20341 () Bool)

(assert (=> b!25123 m!20341))

(assert (=> b!25123 m!20341))

(declare-fun m!20343 () Bool)

(assert (=> b!25123 m!20343))

(check-sat (not bm!2230) b_and!1561 tp_is_empty!1029 (not b!25123) (not b!25120) (not b!25130) (not b_next!765) (not b!25125) (not mapNonEmpty!1039) (not start!3632))
(check-sat b_and!1561 (not b_next!765))
(get-model)

(declare-fun b!25190 () Bool)

(declare-fun res!15205 () Bool)

(declare-fun e!16299 () Bool)

(assert (=> b!25190 (=> (not res!15205) (not e!16299))))

(declare-fun lt!9803 () LongMapFixedSize!216)

(assert (=> b!25190 (= res!15205 (= (mask!4764 lt!9803) (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938))))))))

(declare-fun b!25191 () Bool)

(declare-datatypes ((Unit!597 0))(
  ( (Unit!598) )
))
(declare-fun e!16300 () Unit!597)

(declare-fun Unit!599 () Unit!597)

(assert (=> b!25191 (= e!16300 Unit!599)))

(declare-fun b!25192 () Bool)

(declare-datatypes ((tuple2!958 0))(
  ( (tuple2!959 (_1!486 (_ BitVec 64)) (_2!486 V!1197)) )
))
(declare-datatypes ((List!567 0))(
  ( (Nil!564) (Cons!563 (h!1130 tuple2!958) (t!3254 List!567)) )
))
(declare-datatypes ((ListLongMap!555 0))(
  ( (ListLongMap!556 (toList!293 List!567)) )
))
(declare-fun map!413 (LongMapFixedSize!216) ListLongMap!555)

(assert (=> b!25192 (= e!16299 (= (map!413 lt!9803) (ListLongMap!556 Nil!564)))))

(declare-fun b!25193 () Bool)

(declare-fun e!16298 () Bool)

(declare-fun lt!9804 () array!1291)

(declare-fun lt!9787 () tuple2!958)

(declare-fun arrayContainsKey!0 (array!1291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!25193 (= e!16298 (arrayContainsKey!0 lt!9804 (_1!486 lt!9787) #b00000000000000000000000000000000))))

(declare-fun b!25194 () Bool)

(declare-fun Unit!600 () Unit!597)

(assert (=> b!25194 (= e!16300 Unit!600)))

(declare-fun lt!9792 () LongMapFixedSize!216)

(declare-fun head!831 (List!567) tuple2!958)

(assert (=> b!25194 (= lt!9787 (head!831 (toList!293 (map!413 lt!9792))))))

(assert (=> b!25194 (= lt!9804 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!9798 () (_ BitVec 32))

(assert (=> b!25194 (= lt!9798 #b00000000000000000000000000000000)))

(declare-fun lt!9790 () Unit!597)

(declare-fun lemmaKeyInListMapIsInArray!94 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 64) Int) Unit!597)

(declare-fun dynLambda!145 (Int (_ BitVec 64)) V!1197)

(assert (=> b!25194 (= lt!9790 (lemmaKeyInListMapIsInArray!94 lt!9804 (array!1290 ((as const (Array (_ BitVec 32) ValueCell!315)) EmptyCell!315) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) lt!9798 (dynLambda!145 (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!145 (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!486 lt!9787) (defaultEntry!1765 (v!1620 (underlying!119 thiss!938)))))))

(declare-fun c!3478 () Bool)

(assert (=> b!25194 (= c!3478 (and (not (= (_1!486 lt!9787) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!486 lt!9787) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!25194 e!16298))

(declare-fun lt!9794 () Unit!597)

(assert (=> b!25194 (= lt!9794 lt!9790)))

(declare-fun lt!9785 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1291 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!25194 (= lt!9785 (arrayScanForKey!0 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)) (_1!486 lt!9787) #b00000000000000000000000000000000))))

(assert (=> b!25194 false))

(declare-fun d!4787 () Bool)

(assert (=> d!4787 e!16299))

(declare-fun res!15204 () Bool)

(assert (=> d!4787 (=> (not res!15204) (not e!16299))))

(declare-fun valid!112 (LongMapFixedSize!216) Bool)

(assert (=> d!4787 (= res!15204 (valid!112 lt!9803))))

(assert (=> d!4787 (= lt!9803 lt!9792)))

(declare-fun lt!9797 () Unit!597)

(assert (=> d!4787 (= lt!9797 e!16300)))

(declare-fun c!3477 () Bool)

(assert (=> d!4787 (= c!3477 (not (= (map!413 lt!9792) (ListLongMap!556 Nil!564))))))

(declare-fun lt!9789 () Unit!597)

(declare-fun lt!9791 () Unit!597)

(assert (=> d!4787 (= lt!9789 lt!9791)))

(declare-fun lt!9805 () array!1291)

(declare-fun lt!9793 () (_ BitVec 32))

(declare-datatypes ((List!568 0))(
  ( (Nil!565) (Cons!564 (h!1131 (_ BitVec 64)) (t!3255 List!568)) )
))
(declare-fun lt!9788 () List!568)

(declare-fun arrayNoDuplicates!0 (array!1291 (_ BitVec 32) List!568) Bool)

(assert (=> d!4787 (arrayNoDuplicates!0 lt!9805 lt!9793 lt!9788)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1291 (_ BitVec 32) (_ BitVec 32) List!568) Unit!597)

(assert (=> d!4787 (= lt!9791 (lemmaArrayNoDuplicatesInAll0Array!0 lt!9805 lt!9793 (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001) lt!9788))))

(assert (=> d!4787 (= lt!9788 Nil!565)))

(assert (=> d!4787 (= lt!9793 #b00000000000000000000000000000000)))

(assert (=> d!4787 (= lt!9805 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!9802 () Unit!597)

(declare-fun lt!9806 () Unit!597)

(assert (=> d!4787 (= lt!9802 lt!9806)))

(declare-fun lt!9784 () (_ BitVec 32))

(declare-fun lt!9799 () array!1291)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1291 (_ BitVec 32)) Bool)

(assert (=> d!4787 (arrayForallSeekEntryOrOpenFound!0 lt!9784 lt!9799 (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1291 (_ BitVec 32) (_ BitVec 32)) Unit!597)

(assert (=> d!4787 (= lt!9806 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!9799 (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) lt!9784))))

(assert (=> d!4787 (= lt!9784 #b00000000000000000000000000000000)))

(assert (=> d!4787 (= lt!9799 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!9801 () Unit!597)

(declare-fun lt!9800 () Unit!597)

(assert (=> d!4787 (= lt!9801 lt!9800)))

(declare-fun lt!9796 () array!1291)

(declare-fun lt!9795 () (_ BitVec 32))

(declare-fun lt!9786 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1291 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!4787 (= (arrayCountValidKeys!0 lt!9796 lt!9795 lt!9786) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1291 (_ BitVec 32) (_ BitVec 32)) Unit!597)

(assert (=> d!4787 (= lt!9800 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!9796 lt!9795 lt!9786))))

(assert (=> d!4787 (= lt!9786 (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!4787 (= lt!9795 #b00000000000000000000000000000000)))

(assert (=> d!4787 (= lt!9796 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!4787 (= lt!9792 (LongMapFixedSize!217 (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!145 (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!145 (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1292 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)) (array!1290 ((as const (Array (_ BitVec 32) ValueCell!315)) EmptyCell!315) (bvadd (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!4787 (validMask!0 (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))))))

(assert (=> d!4787 (= (getNewLongMapFixedSize!32 (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) (defaultEntry!1765 (v!1620 (underlying!119 thiss!938)))) lt!9803)))

(declare-fun b!25189 () Bool)

(assert (=> b!25189 (= e!16298 (ite (= (_1!486 lt!9787) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!9798 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!9798 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!4787 c!3477) b!25194))

(assert (= (and d!4787 (not c!3477)) b!25191))

(assert (= (and b!25194 c!3478) b!25193))

(assert (= (and b!25194 (not c!3478)) b!25189))

(assert (= (and d!4787 res!15204) b!25190))

(assert (= (and b!25190 res!15205) b!25192))

(declare-fun b_lambda!1667 () Bool)

(assert (=> (not b_lambda!1667) (not b!25194)))

(declare-fun t!3253 () Bool)

(declare-fun tb!673 () Bool)

(assert (=> (and b!25125 (= (defaultEntry!1765 (v!1620 (underlying!119 thiss!938))) (defaultEntry!1765 (v!1620 (underlying!119 thiss!938)))) t!3253) tb!673))

(declare-fun result!1113 () Bool)

(assert (=> tb!673 (= result!1113 tp_is_empty!1029)))

(assert (=> b!25194 t!3253))

(declare-fun b_and!1565 () Bool)

(assert (= b_and!1561 (and (=> t!3253 result!1113) b_and!1565)))

(declare-fun b_lambda!1669 () Bool)

(assert (=> (not b_lambda!1669) (not d!4787)))

(assert (=> d!4787 t!3253))

(declare-fun b_and!1567 () Bool)

(assert (= b_and!1565 (and (=> t!3253 result!1113) b_and!1567)))

(declare-fun m!20363 () Bool)

(assert (=> b!25192 m!20363))

(declare-fun m!20365 () Bool)

(assert (=> b!25193 m!20365))

(assert (=> b!25194 m!20341))

(declare-fun m!20367 () Bool)

(assert (=> b!25194 m!20367))

(assert (=> b!25194 m!20367))

(declare-fun m!20369 () Bool)

(assert (=> b!25194 m!20369))

(declare-fun m!20371 () Bool)

(assert (=> b!25194 m!20371))

(declare-fun m!20373 () Bool)

(assert (=> b!25194 m!20373))

(assert (=> b!25194 m!20367))

(declare-fun m!20375 () Bool)

(assert (=> b!25194 m!20375))

(declare-fun m!20377 () Bool)

(assert (=> d!4787 m!20377))

(declare-fun m!20379 () Bool)

(assert (=> d!4787 m!20379))

(assert (=> d!4787 m!20371))

(assert (=> d!4787 m!20341))

(declare-fun m!20381 () Bool)

(assert (=> d!4787 m!20381))

(assert (=> d!4787 m!20341))

(declare-fun m!20383 () Bool)

(assert (=> d!4787 m!20383))

(assert (=> d!4787 m!20367))

(assert (=> d!4787 m!20341))

(declare-fun m!20385 () Bool)

(assert (=> d!4787 m!20385))

(declare-fun m!20387 () Bool)

(assert (=> d!4787 m!20387))

(declare-fun m!20389 () Bool)

(assert (=> d!4787 m!20389))

(declare-fun m!20391 () Bool)

(assert (=> d!4787 m!20391))

(assert (=> b!25123 d!4787))

(declare-fun d!4789 () Bool)

(declare-fun e!16305 () Bool)

(assert (=> d!4789 e!16305))

(declare-fun res!15208 () Bool)

(assert (=> d!4789 (=> (not res!15208) (not e!16305))))

(declare-fun lt!9811 () (_ BitVec 32))

(assert (=> d!4789 (= res!15208 (validMask!0 lt!9811))))

(declare-datatypes ((tuple2!960 0))(
  ( (tuple2!961 (_1!487 Unit!597) (_2!487 (_ BitVec 32))) )
))
(declare-fun e!16306 () tuple2!960)

(assert (=> d!4789 (= lt!9811 (_2!487 e!16306))))

(declare-fun c!3481 () Bool)

(declare-fun lt!9812 () tuple2!960)

(assert (=> d!4789 (= c!3481 (and (bvsgt (_2!487 lt!9812) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!155 (v!1620 (underlying!119 thiss!938)))) (_2!487 lt!9812)) (bvsge (bvadd (bvand (bvashr (_2!487 lt!9812) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!155 (v!1620 (underlying!119 thiss!938))))))))

(declare-fun Unit!601 () Unit!597)

(declare-fun Unit!602 () Unit!597)

(assert (=> d!4789 (= lt!9812 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!155 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))))) (mask!4764 (v!1620 (underlying!119 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!155 (v!1620 (underlying!119 thiss!938)))) (mask!4764 (v!1620 (underlying!119 thiss!938))))) (tuple2!961 Unit!601 (bvand (bvadd (bvshl (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!961 Unit!602 (mask!4764 (v!1620 (underlying!119 thiss!938))))))))

(assert (=> d!4789 (validMask!0 (mask!4764 (v!1620 (underlying!119 thiss!938))))))

(assert (=> d!4789 (= (computeNewMask!29 thiss!938 (mask!4764 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (_size!155 (v!1620 (underlying!119 thiss!938)))) lt!9811)))

(declare-fun b!25203 () Bool)

(declare-fun computeNewMaskWhile!15 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!960)

(assert (=> b!25203 (= e!16306 (computeNewMaskWhile!15 (_size!155 (v!1620 (underlying!119 thiss!938))) (_vacant!155 (v!1620 (underlying!119 thiss!938))) (mask!4764 (v!1620 (underlying!119 thiss!938))) (_2!487 lt!9812)))))

(declare-fun b!25204 () Bool)

(declare-fun Unit!603 () Unit!597)

(assert (=> b!25204 (= e!16306 (tuple2!961 Unit!603 (_2!487 lt!9812)))))

(declare-fun b!25205 () Bool)

(assert (=> b!25205 (= e!16305 (bvsle (_size!155 (v!1620 (underlying!119 thiss!938))) (bvadd lt!9811 #b00000000000000000000000000000001)))))

(assert (= (and d!4789 c!3481) b!25203))

(assert (= (and d!4789 (not c!3481)) b!25204))

(assert (= (and d!4789 res!15208) b!25205))

(declare-fun m!20393 () Bool)

(assert (=> d!4789 m!20393))

(assert (=> d!4789 m!20327))

(declare-fun m!20395 () Bool)

(assert (=> b!25203 m!20395))

(assert (=> b!25123 d!4789))

(declare-fun d!4791 () Bool)

(assert (=> d!4791 (= (valid!111 thiss!938) (valid!112 (v!1620 (underlying!119 thiss!938))))))

(declare-fun bs!1049 () Bool)

(assert (= bs!1049 d!4791))

(declare-fun m!20397 () Bool)

(assert (=> bs!1049 m!20397))

(assert (=> start!3632 d!4791))

(declare-fun bm!2286 () Bool)

(declare-datatypes ((SeekEntryResult!60 0))(
  ( (MissingZero!60 (index!2362 (_ BitVec 32))) (Found!60 (index!2363 (_ BitVec 32))) (Intermediate!60 (undefined!872 Bool) (index!2364 (_ BitVec 32)) (x!5914 (_ BitVec 32))) (Undefined!60) (MissingVacant!60 (index!2365 (_ BitVec 32))) )
))
(declare-fun call!2295 () SeekEntryResult!60)

(declare-fun call!2299 () SeekEntryResult!60)

(assert (=> bm!2286 (= call!2295 call!2299)))

(declare-fun bm!2287 () Bool)

(declare-fun call!2297 () ListLongMap!555)

(declare-fun call!2311 () ListLongMap!555)

(assert (=> bm!2287 (= call!2297 call!2311)))

(declare-fun b!25286 () Bool)

(declare-fun res!15245 () Bool)

(declare-fun call!2307 () Bool)

(assert (=> b!25286 (= res!15245 call!2307)))

(declare-fun e!16353 () Bool)

(assert (=> b!25286 (=> (not res!15245) (not e!16353))))

(declare-fun bm!2288 () Bool)

(declare-fun call!2294 () Bool)

(declare-fun call!2310 () Bool)

(assert (=> bm!2288 (= call!2294 call!2310)))

(declare-fun b!25287 () Bool)

(declare-fun lt!9884 () SeekEntryResult!60)

(assert (=> b!25287 (= e!16353 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2363 lt!9884)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25288 () Bool)

(declare-fun res!15248 () Bool)

(declare-fun lt!9883 () SeekEntryResult!60)

(assert (=> b!25288 (= res!15248 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2365 lt!9883)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!16364 () Bool)

(assert (=> b!25288 (=> (not res!15248) (not e!16364))))

(declare-fun bm!2289 () Bool)

(assert (=> bm!2289 (= call!2310 (arrayContainsKey!0 (_keys!3191 (_2!484 lt!9719)) #b1000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!25289 () Bool)

(declare-fun c!3509 () Bool)

(declare-fun lt!9875 () SeekEntryResult!60)

(assert (=> b!25289 (= c!3509 ((_ is MissingVacant!60) lt!9875))))

(declare-fun e!16356 () Bool)

(declare-fun e!16359 () Bool)

(assert (=> b!25289 (= e!16356 e!16359)))

(declare-fun bm!2290 () Bool)

(declare-fun call!2300 () Bool)

(assert (=> bm!2290 (= call!2300 call!2307)))

(declare-fun b!25290 () Bool)

(declare-fun e!16349 () Bool)

(assert (=> b!25290 (= e!16349 e!16364)))

(declare-fun res!15247 () Bool)

(declare-fun call!2293 () Bool)

(assert (=> b!25290 (= res!15247 call!2293)))

(assert (=> b!25290 (=> (not res!15247) (not e!16364))))

(declare-fun bm!2291 () Bool)

(declare-fun call!2290 () SeekEntryResult!60)

(assert (=> bm!2291 (= call!2290 call!2299)))

(declare-fun bm!2292 () Bool)

(declare-fun call!2304 () ListLongMap!555)

(declare-fun call!2291 () ListLongMap!555)

(assert (=> bm!2292 (= call!2304 call!2291)))

(declare-fun b!25291 () Bool)

(declare-fun lt!9891 () Unit!597)

(declare-fun lt!9871 () Unit!597)

(assert (=> b!25291 (= lt!9891 lt!9871)))

(declare-fun call!2292 () ListLongMap!555)

(assert (=> b!25291 (= call!2292 call!2297)))

(declare-fun lt!9889 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 V!1197 Int) Unit!597)

(assert (=> b!25291 (= lt!9871 (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) lt!9889 (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) (minValue!1685 (v!1620 (underlying!119 thiss!938))) (defaultEntry!1765 (_2!484 lt!9719))))))

(assert (=> b!25291 (= lt!9889 (bvor (extraKeys!1658 (_2!484 lt!9719)) #b00000000000000000000000000000010))))

(declare-fun e!16355 () tuple2!954)

(assert (=> b!25291 (= e!16355 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (bvor (extraKeys!1658 (_2!484 lt!9719)) #b00000000000000000000000000000010) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (v!1620 (underlying!119 thiss!938))) (_size!155 (_2!484 lt!9719)) (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (_vacant!155 (_2!484 lt!9719)))))))

(declare-fun b!25292 () Bool)

(declare-fun e!16363 () Bool)

(declare-fun e!16350 () Bool)

(assert (=> b!25292 (= e!16363 e!16350)))

(declare-fun res!15242 () Bool)

(declare-fun call!2308 () ListLongMap!555)

(declare-fun contains!223 (ListLongMap!555 (_ BitVec 64)) Bool)

(assert (=> b!25292 (= res!15242 (contains!223 call!2308 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25292 (=> (not res!15242) (not e!16350))))

(declare-fun bm!2293 () Bool)

(declare-fun call!2298 () ListLongMap!555)

(assert (=> bm!2293 (= call!2298 (map!413 (_2!484 lt!9719)))))

(declare-fun b!25293 () Bool)

(declare-fun e!16352 () Bool)

(assert (=> b!25293 (= e!16359 e!16352)))

(declare-fun res!15246 () Bool)

(assert (=> b!25293 (= res!15246 call!2300)))

(assert (=> b!25293 (=> (not res!15246) (not e!16352))))

(declare-fun b!25294 () Bool)

(declare-fun e!16362 () ListLongMap!555)

(declare-fun call!2301 () ListLongMap!555)

(assert (=> b!25294 (= e!16362 call!2301)))

(declare-fun bm!2294 () Bool)

(declare-fun call!2306 () Unit!597)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 64) Int) Unit!597)

(assert (=> bm!2294 (= call!2306 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun b!25295 () Bool)

(assert (=> b!25295 (= e!16352 (not call!2294))))

(declare-fun bm!2295 () Bool)

(declare-fun lt!9881 () tuple2!954)

(assert (=> bm!2295 (= call!2308 (map!413 (_2!484 lt!9881)))))

(declare-fun c!3516 () Bool)

(declare-fun c!3512 () Bool)

(declare-fun call!2296 () ListLongMap!555)

(declare-fun bm!2296 () Bool)

(declare-fun +!46 (ListLongMap!555 tuple2!958) ListLongMap!555)

(assert (=> bm!2296 (= call!2296 (+!46 (ite c!3516 call!2304 call!2301) (ite c!3516 (ite c!3512 (tuple2!959 #b0000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (tuple2!959 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (tuple2!959 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938)))))))))

(declare-fun b!25296 () Bool)

(declare-fun res!15249 () Bool)

(declare-fun e!16354 () Bool)

(assert (=> b!25296 (=> (not res!15249) (not e!16354))))

(assert (=> b!25296 (= res!15249 call!2300)))

(assert (=> b!25296 (= e!16356 e!16354)))

(declare-fun b!25297 () Bool)

(assert (=> b!25297 (= e!16349 ((_ is Undefined!60) lt!9883))))

(declare-fun lt!9877 () SeekEntryResult!60)

(declare-fun c!3518 () Bool)

(declare-fun c!3515 () Bool)

(declare-fun c!3513 () Bool)

(declare-fun c!3517 () Bool)

(declare-fun bm!2297 () Bool)

(declare-fun c!3514 () Bool)

(declare-fun call!2289 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!2297 (= call!2289 (inRange!0 (ite c!3515 (ite c!3514 (index!2363 lt!9877) (ite c!3513 (index!2362 lt!9883) (index!2365 lt!9883))) (ite c!3518 (index!2363 lt!9884) (ite c!3517 (index!2362 lt!9875) (index!2365 lt!9875)))) (mask!4764 (_2!484 lt!9719))))))

(declare-fun bm!2298 () Bool)

(assert (=> bm!2298 (= call!2301 call!2291)))

(declare-fun b!25298 () Bool)

(declare-fun call!2312 () Bool)

(assert (=> b!25298 (= e!16364 (not call!2312))))

(declare-fun b!25299 () Bool)

(assert (=> b!25299 (= e!16354 (not call!2294))))

(declare-fun b!25300 () Bool)

(declare-fun lt!9878 () Unit!597)

(declare-fun lt!9868 () Unit!597)

(assert (=> b!25300 (= lt!9878 lt!9868)))

(declare-fun call!2305 () Bool)

(assert (=> b!25300 call!2305))

(declare-fun lt!9882 () SeekEntryResult!60)

(declare-fun lt!9869 () array!1289)

(declare-fun lemmaValidKeyInArrayIsInListMap!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 32) Int) Unit!597)

(assert (=> b!25300 (= lt!9868 (lemmaValidKeyInArrayIsInListMap!11 (_keys!3191 (_2!484 lt!9719)) lt!9869 (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) (index!2363 lt!9882) (defaultEntry!1765 (_2!484 lt!9719))))))

(assert (=> b!25300 (= lt!9869 (array!1290 (store (arr!609 (_values!1750 (_2!484 lt!9719))) (index!2363 lt!9882) (ValueCellFull!315 (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (size!710 (_values!1750 (_2!484 lt!9719)))))))

(declare-fun lt!9874 () Unit!597)

(declare-fun lt!9867 () Unit!597)

(assert (=> b!25300 (= lt!9874 lt!9867)))

(assert (=> b!25300 (= call!2296 call!2311)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 32) (_ BitVec 64) V!1197 Int) Unit!597)

(assert (=> b!25300 (= lt!9867 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) (index!2363 lt!9882) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938))) (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun lt!9887 () Unit!597)

(declare-fun e!16358 () Unit!597)

(assert (=> b!25300 (= lt!9887 e!16358)))

(assert (=> b!25300 (= c!3518 (contains!223 call!2301 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!16366 () tuple2!954)

(assert (=> b!25300 (= e!16366 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) (_size!155 (_2!484 lt!9719)) (_keys!3191 (_2!484 lt!9719)) (array!1290 (store (arr!609 (_values!1750 (_2!484 lt!9719))) (index!2363 lt!9882) (ValueCellFull!315 (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (size!710 (_values!1750 (_2!484 lt!9719)))) (_vacant!155 (_2!484 lt!9719)))))))

(declare-fun b!25301 () Bool)

(declare-fun getCurrentListMap!122 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 32) Int) ListLongMap!555)

(assert (=> b!25301 (= e!16362 (getCurrentListMap!122 (_keys!3191 (_2!484 lt!9719)) lt!9869 (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) #b00000000000000000000000000000000 (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun bm!2299 () Bool)

(assert (=> bm!2299 (= call!2312 call!2310)))

(declare-fun lt!9870 () (_ BitVec 32))

(declare-fun bm!2300 () Bool)

(assert (=> bm!2300 (= call!2311 (getCurrentListMap!122 (_keys!3191 (_2!484 lt!9719)) (ite c!3516 (_values!1750 (_2!484 lt!9719)) (array!1290 (store (arr!609 (_values!1750 (_2!484 lt!9719))) (index!2363 lt!9882) (ValueCellFull!315 (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (size!710 (_values!1750 (_2!484 lt!9719))))) (mask!4764 (_2!484 lt!9719)) (ite c!3516 (ite c!3512 lt!9870 lt!9889) (extraKeys!1658 (_2!484 lt!9719))) (ite (and c!3516 c!3512) (minValue!1685 (v!1620 (underlying!119 thiss!938))) (zeroValue!1685 (_2!484 lt!9719))) (ite c!3516 (ite c!3512 (minValue!1685 (_2!484 lt!9719)) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (minValue!1685 (_2!484 lt!9719))) #b00000000000000000000000000000000 (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun b!25302 () Bool)

(declare-fun res!15241 () Bool)

(assert (=> b!25302 (=> (not res!15241) (not e!16354))))

(assert (=> b!25302 (= res!15241 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2362 lt!9875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25303 () Bool)

(assert (=> b!25303 (= e!16363 (= call!2308 call!2298))))

(declare-fun bm!2301 () Bool)

(assert (=> bm!2301 (= call!2291 (getCurrentListMap!122 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) #b00000000000000000000000000000000 (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun b!25304 () Bool)

(declare-fun e!16369 () Bool)

(assert (=> b!25304 (= e!16369 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2363 lt!9877)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25305 () Bool)

(declare-fun lt!9873 () Unit!597)

(declare-fun lt!9886 () Unit!597)

(assert (=> b!25305 (= lt!9873 lt!9886)))

(assert (=> b!25305 (= call!2292 call!2297)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 V!1197 Int) Unit!597)

(assert (=> b!25305 (= lt!9886 (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) lt!9870 (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (_2!484 lt!9719)) (defaultEntry!1765 (_2!484 lt!9719))))))

(assert (=> b!25305 (= lt!9870 (bvor (extraKeys!1658 (_2!484 lt!9719)) #b00000000000000000000000000000001))))

(assert (=> b!25305 (= e!16355 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (bvor (extraKeys!1658 (_2!484 lt!9719)) #b00000000000000000000000000000001) (minValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (_2!484 lt!9719)) (_size!155 (_2!484 lt!9719)) (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (_vacant!155 (_2!484 lt!9719)))))))

(declare-fun bm!2302 () Bool)

(declare-fun c!3519 () Bool)

(assert (=> bm!2302 (= c!3519 c!3515)))

(assert (=> bm!2302 (= call!2305 (contains!223 e!16362 (ite c!3515 #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2363 lt!9882)))))))

(declare-fun b!25306 () Bool)

(assert (=> b!25306 (= e!16359 ((_ is Undefined!60) lt!9875))))

(declare-fun b!25307 () Bool)

(declare-fun e!16360 () Bool)

(assert (=> b!25307 (= e!16360 e!16363)))

(declare-fun c!3511 () Bool)

(assert (=> b!25307 (= c!3511 (_1!484 lt!9881))))

(declare-fun bm!2303 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1291 (_ BitVec 32)) SeekEntryResult!60)

(assert (=> bm!2303 (= call!2299 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3191 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719))))))

(declare-fun b!25308 () Bool)

(declare-fun Unit!604 () Unit!597)

(assert (=> b!25308 (= e!16358 Unit!604)))

(declare-fun lt!9893 () Unit!597)

(assert (=> b!25308 (= lt!9893 call!2306)))

(assert (=> b!25308 (= lt!9875 call!2290)))

(assert (=> b!25308 (= c!3517 ((_ is MissingZero!60) lt!9875))))

(assert (=> b!25308 e!16356))

(declare-fun lt!9892 () Unit!597)

(assert (=> b!25308 (= lt!9892 lt!9893)))

(assert (=> b!25308 false))

(declare-fun b!25309 () Bool)

(declare-fun e!16357 () tuple2!954)

(assert (=> b!25309 (= e!16357 e!16355)))

(assert (=> b!25309 (= c!3512 (= #b1000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2304 () Bool)

(declare-fun call!2302 () Bool)

(assert (=> bm!2304 (= call!2302 call!2289)))

(declare-fun b!25310 () Bool)

(assert (=> b!25310 (= e!16350 (= call!2308 (+!46 call!2298 (tuple2!959 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938)))))))))

(declare-fun b!25311 () Bool)

(declare-fun c!3510 () Bool)

(assert (=> b!25311 (= c!3510 ((_ is MissingVacant!60) lt!9882))))

(declare-fun e!16365 () tuple2!954)

(declare-fun e!16368 () tuple2!954)

(assert (=> b!25311 (= e!16365 e!16368)))

(declare-fun b!25312 () Bool)

(declare-fun res!15250 () Bool)

(assert (=> b!25312 (= res!15250 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2365 lt!9875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25312 (=> (not res!15250) (not e!16352))))

(declare-fun b!25313 () Bool)

(declare-fun res!15244 () Bool)

(declare-fun e!16351 () Bool)

(assert (=> b!25313 (=> (not res!15244) (not e!16351))))

(assert (=> b!25313 (= res!15244 (= (select (arr!610 (_keys!3191 (_2!484 lt!9719))) (index!2362 lt!9883)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25314 () Bool)

(declare-fun lt!9879 () Unit!597)

(assert (=> b!25314 (= e!16358 lt!9879)))

(declare-fun call!2309 () Unit!597)

(assert (=> b!25314 (= lt!9879 call!2309)))

(assert (=> b!25314 (= lt!9884 call!2290)))

(declare-fun res!15238 () Bool)

(assert (=> b!25314 (= res!15238 ((_ is Found!60) lt!9884))))

(assert (=> b!25314 (=> (not res!15238) (not e!16353))))

(assert (=> b!25314 e!16353))

(declare-fun bm!2305 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (array!1291 array!1289 (_ BitVec 32) (_ BitVec 32) V!1197 V!1197 (_ BitVec 64) Int) Unit!597)

(assert (=> bm!2305 (= call!2309 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!3191 (_2!484 lt!9719)) (_values!1750 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719)) (extraKeys!1658 (_2!484 lt!9719)) (zeroValue!1685 (_2!484 lt!9719)) (minValue!1685 (_2!484 lt!9719)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1765 (_2!484 lt!9719))))))

(declare-fun d!4793 () Bool)

(assert (=> d!4793 e!16360))

(declare-fun res!15240 () Bool)

(assert (=> d!4793 (=> (not res!15240) (not e!16360))))

(assert (=> d!4793 (= res!15240 (valid!112 (_2!484 lt!9881)))))

(assert (=> d!4793 (= lt!9881 e!16357)))

(assert (=> d!4793 (= c!3516 (= #b1000000000000000000000000000000000000000000000000000000000000000 (bvneg #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!4793 (valid!112 (_2!484 lt!9719))))

(assert (=> d!4793 (= (update!37 (_2!484 lt!9719) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938)))) lt!9881)))

(declare-fun b!25315 () Bool)

(assert (=> b!25315 (= e!16351 (not call!2312))))

(declare-fun bm!2306 () Bool)

(assert (=> bm!2306 (= call!2292 call!2296)))

(declare-fun call!2303 () tuple2!954)

(declare-fun bm!2307 () Bool)

(declare-fun updateHelperNewKey!11 (LongMapFixedSize!216 (_ BitVec 64) V!1197 (_ BitVec 32)) tuple2!954)

(assert (=> bm!2307 (= call!2303 (updateHelperNewKey!11 (_2!484 lt!9719) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1685 (v!1620 (underlying!119 thiss!938))) (ite c!3510 (index!2365 lt!9882) (index!2362 lt!9882))))))

(declare-fun b!25316 () Bool)

(declare-fun res!15237 () Bool)

(assert (=> b!25316 (= res!15237 call!2302)))

(assert (=> b!25316 (=> (not res!15237) (not e!16369))))

(declare-fun b!25317 () Bool)

(declare-fun e!16361 () Unit!597)

(declare-fun lt!9876 () Unit!597)

(assert (=> b!25317 (= e!16361 lt!9876)))

(assert (=> b!25317 (= lt!9876 call!2306)))

(assert (=> b!25317 (= lt!9883 call!2295)))

(assert (=> b!25317 (= c!3513 ((_ is MissingZero!60) lt!9883))))

(declare-fun e!16367 () Bool)

(assert (=> b!25317 e!16367))

(declare-fun bm!2308 () Bool)

(assert (=> bm!2308 (= call!2293 call!2302)))

(declare-fun b!25318 () Bool)

(declare-fun lt!9885 () tuple2!954)

(assert (=> b!25318 (= lt!9885 call!2303)))

(assert (=> b!25318 (= e!16366 (tuple2!955 (_1!484 lt!9885) (_2!484 lt!9885)))))

(declare-fun b!25319 () Bool)

(declare-fun c!3520 () Bool)

(assert (=> b!25319 (= c!3520 ((_ is MissingVacant!60) lt!9883))))

(assert (=> b!25319 (= e!16367 e!16349)))

(declare-fun bm!2309 () Bool)

(assert (=> bm!2309 (= call!2307 call!2289)))

(declare-fun b!25320 () Bool)

(declare-fun lt!9872 () Unit!597)

(assert (=> b!25320 (= lt!9872 e!16361)))

(assert (=> b!25320 (= c!3514 call!2305)))

(assert (=> b!25320 (= e!16365 (tuple2!955 false (_2!484 lt!9719)))))

(declare-fun b!25321 () Bool)

(assert (=> b!25321 (= e!16357 e!16365)))

(assert (=> b!25321 (= lt!9882 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3191 (_2!484 lt!9719)) (mask!4764 (_2!484 lt!9719))))))

(assert (=> b!25321 (= c!3515 ((_ is Undefined!60) lt!9882))))

(declare-fun b!25322 () Bool)

(declare-fun lt!9888 () tuple2!954)

(assert (=> b!25322 (= e!16368 (tuple2!955 (_1!484 lt!9888) (_2!484 lt!9888)))))

(assert (=> b!25322 (= lt!9888 call!2303)))

(declare-fun b!25323 () Bool)

(declare-fun res!15239 () Bool)

(assert (=> b!25323 (=> (not res!15239) (not e!16351))))

(assert (=> b!25323 (= res!15239 call!2293)))

(assert (=> b!25323 (= e!16367 e!16351)))

(declare-fun b!25324 () Bool)

(declare-fun Unit!605 () Unit!597)

(assert (=> b!25324 (= e!16361 Unit!605)))

(declare-fun lt!9890 () Unit!597)

(assert (=> b!25324 (= lt!9890 call!2309)))

(assert (=> b!25324 (= lt!9877 call!2295)))

(declare-fun res!15243 () Bool)

(assert (=> b!25324 (= res!15243 ((_ is Found!60) lt!9877))))

(assert (=> b!25324 (=> (not res!15243) (not e!16369))))

(assert (=> b!25324 e!16369))

(declare-fun lt!9880 () Unit!597)

(assert (=> b!25324 (= lt!9880 lt!9890)))

(assert (=> b!25324 false))

(declare-fun b!25325 () Bool)

(assert (=> b!25325 (= e!16368 e!16366)))

(declare-fun c!3508 () Bool)

(assert (=> b!25325 (= c!3508 ((_ is MissingZero!60) lt!9882))))

(assert (= (and d!4793 c!3516) b!25309))

(assert (= (and d!4793 (not c!3516)) b!25321))

(assert (= (and b!25309 c!3512) b!25305))

(assert (= (and b!25309 (not c!3512)) b!25291))

(assert (= (or b!25305 b!25291) bm!2287))

(assert (= (or b!25305 b!25291) bm!2292))

(assert (= (or b!25305 b!25291) bm!2306))

(assert (= (and b!25321 c!3515) b!25320))

(assert (= (and b!25321 (not c!3515)) b!25311))

(assert (= (and b!25320 c!3514) b!25324))

(assert (= (and b!25320 (not c!3514)) b!25317))

(assert (= (and b!25324 res!15243) b!25316))

(assert (= (and b!25316 res!15237) b!25304))

(assert (= (and b!25317 c!3513) b!25323))

(assert (= (and b!25317 (not c!3513)) b!25319))

(assert (= (and b!25323 res!15239) b!25313))

(assert (= (and b!25313 res!15244) b!25315))

(assert (= (and b!25319 c!3520) b!25290))

(assert (= (and b!25319 (not c!3520)) b!25297))

(assert (= (and b!25290 res!15247) b!25288))

(assert (= (and b!25288 res!15248) b!25298))

(assert (= (or b!25323 b!25290) bm!2308))

(assert (= (or b!25315 b!25298) bm!2299))

(assert (= (or b!25316 bm!2308) bm!2304))

(assert (= (or b!25324 b!25317) bm!2286))

(assert (= (and b!25311 c!3510) b!25322))

(assert (= (and b!25311 (not c!3510)) b!25325))

(assert (= (and b!25325 c!3508) b!25318))

(assert (= (and b!25325 (not c!3508)) b!25300))

(assert (= (and b!25300 c!3518) b!25314))

(assert (= (and b!25300 (not c!3518)) b!25308))

(assert (= (and b!25314 res!15238) b!25286))

(assert (= (and b!25286 res!15245) b!25287))

(assert (= (and b!25308 c!3517) b!25296))

(assert (= (and b!25308 (not c!3517)) b!25289))

(assert (= (and b!25296 res!15249) b!25302))

(assert (= (and b!25302 res!15241) b!25299))

(assert (= (and b!25289 c!3509) b!25293))

(assert (= (and b!25289 (not c!3509)) b!25306))

(assert (= (and b!25293 res!15246) b!25312))

(assert (= (and b!25312 res!15250) b!25295))

(assert (= (or b!25296 b!25293) bm!2290))

(assert (= (or b!25299 b!25295) bm!2288))

(assert (= (or b!25286 bm!2290) bm!2309))

(assert (= (or b!25314 b!25308) bm!2291))

(assert (= (or b!25322 b!25318) bm!2307))

(assert (= (or b!25324 b!25314) bm!2305))

(assert (= (or b!25317 b!25308) bm!2294))

(assert (= (or bm!2286 bm!2291) bm!2303))

(assert (= (or b!25320 b!25300) bm!2298))

(assert (= (or bm!2299 bm!2288) bm!2289))

(assert (= (or bm!2304 bm!2309) bm!2297))

(assert (= (or b!25320 b!25300) bm!2302))

(assert (= (and bm!2302 c!3519) b!25294))

(assert (= (and bm!2302 (not c!3519)) b!25301))

(assert (= (or bm!2292 bm!2298) bm!2301))

(assert (= (or bm!2287 b!25300) bm!2300))

(assert (= (or bm!2306 b!25300) bm!2296))

(assert (= (and d!4793 res!15240) b!25307))

(assert (= (and b!25307 c!3511) b!25292))

(assert (= (and b!25307 (not c!3511)) b!25303))

(assert (= (and b!25292 res!15242) b!25310))

(assert (= (or b!25292 b!25310 b!25303) bm!2295))

(assert (= (or b!25310 b!25303) bm!2293))

(declare-fun m!20399 () Bool)

(assert (=> bm!2293 m!20399))

(declare-fun m!20401 () Bool)

(assert (=> b!25301 m!20401))

(declare-fun m!20403 () Bool)

(assert (=> b!25302 m!20403))

(declare-fun m!20405 () Bool)

(assert (=> b!25321 m!20405))

(declare-fun m!20407 () Bool)

(assert (=> b!25288 m!20407))

(declare-fun m!20409 () Bool)

(assert (=> b!25312 m!20409))

(declare-fun m!20411 () Bool)

(assert (=> bm!2295 m!20411))

(declare-fun m!20413 () Bool)

(assert (=> bm!2307 m!20413))

(declare-fun m!20415 () Bool)

(assert (=> b!25305 m!20415))

(declare-fun m!20417 () Bool)

(assert (=> d!4793 m!20417))

(declare-fun m!20419 () Bool)

(assert (=> d!4793 m!20419))

(declare-fun m!20421 () Bool)

(assert (=> bm!2302 m!20421))

(declare-fun m!20423 () Bool)

(assert (=> bm!2302 m!20423))

(declare-fun m!20425 () Bool)

(assert (=> b!25313 m!20425))

(declare-fun m!20427 () Bool)

(assert (=> bm!2294 m!20427))

(declare-fun m!20429 () Bool)

(assert (=> bm!2296 m!20429))

(declare-fun m!20431 () Bool)

(assert (=> bm!2301 m!20431))

(declare-fun m!20433 () Bool)

(assert (=> bm!2300 m!20433))

(declare-fun m!20435 () Bool)

(assert (=> bm!2300 m!20435))

(declare-fun m!20437 () Bool)

(assert (=> b!25304 m!20437))

(declare-fun m!20439 () Bool)

(assert (=> b!25287 m!20439))

(declare-fun m!20441 () Bool)

(assert (=> b!25291 m!20441))

(assert (=> bm!2303 m!20405))

(declare-fun m!20443 () Bool)

(assert (=> bm!2297 m!20443))

(declare-fun m!20445 () Bool)

(assert (=> b!25310 m!20445))

(declare-fun m!20447 () Bool)

(assert (=> b!25300 m!20447))

(assert (=> b!25300 m!20433))

(declare-fun m!20449 () Bool)

(assert (=> b!25300 m!20449))

(declare-fun m!20451 () Bool)

(assert (=> b!25300 m!20451))

(declare-fun m!20453 () Bool)

(assert (=> b!25292 m!20453))

(declare-fun m!20455 () Bool)

(assert (=> bm!2305 m!20455))

(declare-fun m!20457 () Bool)

(assert (=> bm!2289 m!20457))

(assert (=> b!25130 d!4793))

(declare-fun bm!2310 () Bool)

(declare-fun call!2319 () SeekEntryResult!60)

(declare-fun call!2323 () SeekEntryResult!60)

(assert (=> bm!2310 (= call!2319 call!2323)))

(declare-fun bm!2311 () Bool)

(declare-fun call!2321 () ListLongMap!555)

(declare-fun call!2335 () ListLongMap!555)

(assert (=> bm!2311 (= call!2321 call!2335)))

(declare-fun b!25326 () Bool)

(declare-fun res!15259 () Bool)

(declare-fun call!2331 () Bool)

(assert (=> b!25326 (= res!15259 call!2331)))

(declare-fun e!16374 () Bool)

(assert (=> b!25326 (=> (not res!15259) (not e!16374))))

(declare-fun bm!2312 () Bool)

(declare-fun call!2318 () Bool)

(declare-fun call!2334 () Bool)

(assert (=> bm!2312 (= call!2318 call!2334)))

(declare-fun b!25327 () Bool)

(declare-fun lt!9911 () SeekEntryResult!60)

(assert (=> b!25327 (= e!16374 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2363 lt!9911)) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!25328 () Bool)

(declare-fun res!15262 () Bool)

(declare-fun lt!9910 () SeekEntryResult!60)

(assert (=> b!25328 (= res!15262 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2365 lt!9910)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!16385 () Bool)

(assert (=> b!25328 (=> (not res!15262) (not e!16385))))

(declare-fun bm!2313 () Bool)

(assert (=> bm!2313 (= call!2334 (arrayContainsKey!0 (_keys!3191 lt!9714) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!25329 () Bool)

(declare-fun c!3522 () Bool)

(declare-fun lt!9902 () SeekEntryResult!60)

(assert (=> b!25329 (= c!3522 ((_ is MissingVacant!60) lt!9902))))

(declare-fun e!16377 () Bool)

(declare-fun e!16380 () Bool)

(assert (=> b!25329 (= e!16377 e!16380)))

(declare-fun bm!2314 () Bool)

(declare-fun call!2324 () Bool)

(assert (=> bm!2314 (= call!2324 call!2331)))

(declare-fun b!25330 () Bool)

(declare-fun e!16370 () Bool)

(assert (=> b!25330 (= e!16370 e!16385)))

(declare-fun res!15261 () Bool)

(declare-fun call!2317 () Bool)

(assert (=> b!25330 (= res!15261 call!2317)))

(assert (=> b!25330 (=> (not res!15261) (not e!16385))))

(declare-fun bm!2315 () Bool)

(declare-fun call!2314 () SeekEntryResult!60)

(assert (=> bm!2315 (= call!2314 call!2323)))

(declare-fun bm!2316 () Bool)

(declare-fun call!2328 () ListLongMap!555)

(declare-fun call!2315 () ListLongMap!555)

(assert (=> bm!2316 (= call!2328 call!2315)))

(declare-fun b!25331 () Bool)

(declare-fun lt!9918 () Unit!597)

(declare-fun lt!9898 () Unit!597)

(assert (=> b!25331 (= lt!9918 lt!9898)))

(declare-fun call!2316 () ListLongMap!555)

(assert (=> b!25331 (= call!2316 call!2321)))

(declare-fun lt!9916 () (_ BitVec 32))

(assert (=> b!25331 (= lt!9898 (lemmaChangeLongMinValueKeyThenAddPairToListMap!11 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) lt!9916 (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (defaultEntry!1765 lt!9714)))))

(assert (=> b!25331 (= lt!9916 (bvor (extraKeys!1658 lt!9714) #b00000000000000000000000000000010))))

(declare-fun e!16376 () tuple2!954)

(assert (=> b!25331 (= e!16376 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 lt!9714) (mask!4764 lt!9714) (bvor (extraKeys!1658 lt!9714) #b00000000000000000000000000000010) (zeroValue!1685 lt!9714) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (_size!155 lt!9714) (_keys!3191 lt!9714) (_values!1750 lt!9714) (_vacant!155 lt!9714))))))

(declare-fun b!25332 () Bool)

(declare-fun e!16384 () Bool)

(declare-fun e!16371 () Bool)

(assert (=> b!25332 (= e!16384 e!16371)))

(declare-fun res!15256 () Bool)

(declare-fun call!2332 () ListLongMap!555)

(assert (=> b!25332 (= res!15256 (contains!223 call!2332 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!25332 (=> (not res!15256) (not e!16371))))

(declare-fun bm!2317 () Bool)

(declare-fun call!2322 () ListLongMap!555)

(assert (=> bm!2317 (= call!2322 (map!413 lt!9714))))

(declare-fun b!25333 () Bool)

(declare-fun e!16373 () Bool)

(assert (=> b!25333 (= e!16380 e!16373)))

(declare-fun res!15260 () Bool)

(assert (=> b!25333 (= res!15260 call!2324)))

(assert (=> b!25333 (=> (not res!15260) (not e!16373))))

(declare-fun b!25334 () Bool)

(declare-fun e!16383 () ListLongMap!555)

(declare-fun call!2325 () ListLongMap!555)

(assert (=> b!25334 (= e!16383 call!2325)))

(declare-fun call!2330 () Unit!597)

(declare-fun bm!2318 () Bool)

(assert (=> bm!2318 (= call!2330 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!11 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1765 lt!9714)))))

(declare-fun b!25335 () Bool)

(assert (=> b!25335 (= e!16373 (not call!2318))))

(declare-fun bm!2319 () Bool)

(declare-fun lt!9908 () tuple2!954)

(assert (=> bm!2319 (= call!2332 (map!413 (_2!484 lt!9908)))))

(declare-fun c!3529 () Bool)

(declare-fun call!2320 () ListLongMap!555)

(declare-fun c!3525 () Bool)

(declare-fun bm!2320 () Bool)

(assert (=> bm!2320 (= call!2320 (+!46 (ite c!3529 call!2328 call!2325) (ite c!3529 (ite c!3525 (tuple2!959 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (tuple2!959 #b1000000000000000000000000000000000000000000000000000000000000000 (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))))) (tuple2!959 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))))))))

(declare-fun b!25336 () Bool)

(declare-fun res!15263 () Bool)

(declare-fun e!16375 () Bool)

(assert (=> b!25336 (=> (not res!15263) (not e!16375))))

(assert (=> b!25336 (= res!15263 call!2324)))

(assert (=> b!25336 (= e!16377 e!16375)))

(declare-fun b!25337 () Bool)

(assert (=> b!25337 (= e!16370 ((_ is Undefined!60) lt!9910))))

(declare-fun call!2313 () Bool)

(declare-fun c!3531 () Bool)

(declare-fun lt!9904 () SeekEntryResult!60)

(declare-fun c!3528 () Bool)

(declare-fun c!3526 () Bool)

(declare-fun c!3530 () Bool)

(declare-fun c!3527 () Bool)

(declare-fun bm!2321 () Bool)

(assert (=> bm!2321 (= call!2313 (inRange!0 (ite c!3528 (ite c!3527 (index!2363 lt!9904) (ite c!3526 (index!2362 lt!9910) (index!2365 lt!9910))) (ite c!3531 (index!2363 lt!9911) (ite c!3530 (index!2362 lt!9902) (index!2365 lt!9902)))) (mask!4764 lt!9714)))))

(declare-fun bm!2322 () Bool)

(assert (=> bm!2322 (= call!2325 call!2315)))

(declare-fun b!25338 () Bool)

(declare-fun call!2336 () Bool)

(assert (=> b!25338 (= e!16385 (not call!2336))))

(declare-fun b!25339 () Bool)

(assert (=> b!25339 (= e!16375 (not call!2318))))

(declare-fun b!25340 () Bool)

(declare-fun lt!9905 () Unit!597)

(declare-fun lt!9895 () Unit!597)

(assert (=> b!25340 (= lt!9905 lt!9895)))

(declare-fun call!2329 () Bool)

(assert (=> b!25340 call!2329))

(declare-fun lt!9909 () SeekEntryResult!60)

(declare-fun lt!9896 () array!1289)

(assert (=> b!25340 (= lt!9895 (lemmaValidKeyInArrayIsInListMap!11 (_keys!3191 lt!9714) lt!9896 (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (index!2363 lt!9909) (defaultEntry!1765 lt!9714)))))

(assert (=> b!25340 (= lt!9896 (array!1290 (store (arr!609 (_values!1750 lt!9714)) (index!2363 lt!9909) (ValueCellFull!315 (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))))) (size!710 (_values!1750 lt!9714))))))

(declare-fun lt!9901 () Unit!597)

(declare-fun lt!9894 () Unit!597)

(assert (=> b!25340 (= lt!9901 lt!9894)))

(assert (=> b!25340 (= call!2320 call!2335)))

(assert (=> b!25340 (= lt!9894 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!11 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (index!2363 lt!9909) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (defaultEntry!1765 lt!9714)))))

(declare-fun lt!9914 () Unit!597)

(declare-fun e!16379 () Unit!597)

(assert (=> b!25340 (= lt!9914 e!16379)))

(assert (=> b!25340 (= c!3531 (contains!223 call!2325 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!16387 () tuple2!954)

(assert (=> b!25340 (= e!16387 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (_size!155 lt!9714) (_keys!3191 lt!9714) (array!1290 (store (arr!609 (_values!1750 lt!9714)) (index!2363 lt!9909) (ValueCellFull!315 (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))))) (size!710 (_values!1750 lt!9714))) (_vacant!155 lt!9714))))))

(declare-fun b!25341 () Bool)

(assert (=> b!25341 (= e!16383 (getCurrentListMap!122 (_keys!3191 lt!9714) lt!9896 (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) #b00000000000000000000000000000000 (defaultEntry!1765 lt!9714)))))

(declare-fun bm!2323 () Bool)

(assert (=> bm!2323 (= call!2336 call!2334)))

(declare-fun bm!2324 () Bool)

(declare-fun lt!9897 () (_ BitVec 32))

(assert (=> bm!2324 (= call!2335 (getCurrentListMap!122 (_keys!3191 lt!9714) (ite c!3529 (_values!1750 lt!9714) (array!1290 (store (arr!609 (_values!1750 lt!9714)) (index!2363 lt!9909) (ValueCellFull!315 (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))))) (size!710 (_values!1750 lt!9714)))) (mask!4764 lt!9714) (ite c!3529 (ite c!3525 lt!9897 lt!9916) (extraKeys!1658 lt!9714)) (ite (and c!3529 c!3525) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (zeroValue!1685 lt!9714)) (ite c!3529 (ite c!3525 (minValue!1685 lt!9714) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))) (minValue!1685 lt!9714)) #b00000000000000000000000000000000 (defaultEntry!1765 lt!9714)))))

(declare-fun b!25342 () Bool)

(declare-fun res!15255 () Bool)

(assert (=> b!25342 (=> (not res!15255) (not e!16375))))

(assert (=> b!25342 (= res!15255 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2362 lt!9902)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25343 () Bool)

(assert (=> b!25343 (= e!16384 (= call!2332 call!2322))))

(declare-fun bm!2325 () Bool)

(assert (=> bm!2325 (= call!2315 (getCurrentListMap!122 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) #b00000000000000000000000000000000 (defaultEntry!1765 lt!9714)))))

(declare-fun e!16390 () Bool)

(declare-fun b!25344 () Bool)

(assert (=> b!25344 (= e!16390 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2363 lt!9904)) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!25345 () Bool)

(declare-fun lt!9900 () Unit!597)

(declare-fun lt!9913 () Unit!597)

(assert (=> b!25345 (= lt!9900 lt!9913)))

(assert (=> b!25345 (= call!2316 call!2321)))

(assert (=> b!25345 (= lt!9913 (lemmaChangeZeroKeyThenAddPairToListMap!11 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) lt!9897 (zeroValue!1685 lt!9714) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (minValue!1685 lt!9714) (defaultEntry!1765 lt!9714)))))

(assert (=> b!25345 (= lt!9897 (bvor (extraKeys!1658 lt!9714) #b00000000000000000000000000000001))))

(assert (=> b!25345 (= e!16376 (tuple2!955 true (LongMapFixedSize!217 (defaultEntry!1765 lt!9714) (mask!4764 lt!9714) (bvor (extraKeys!1658 lt!9714) #b00000000000000000000000000000001) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (minValue!1685 lt!9714) (_size!155 lt!9714) (_keys!3191 lt!9714) (_values!1750 lt!9714) (_vacant!155 lt!9714))))))

(declare-fun bm!2326 () Bool)

(declare-fun c!3532 () Bool)

(assert (=> bm!2326 (= c!3532 c!3528)))

(assert (=> bm!2326 (= call!2329 (contains!223 e!16383 (ite c!3528 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (select (arr!610 (_keys!3191 lt!9714)) (index!2363 lt!9909)))))))

(declare-fun b!25346 () Bool)

(assert (=> b!25346 (= e!16380 ((_ is Undefined!60) lt!9902))))

(declare-fun b!25347 () Bool)

(declare-fun e!16381 () Bool)

(assert (=> b!25347 (= e!16381 e!16384)))

(declare-fun c!3524 () Bool)

(assert (=> b!25347 (= c!3524 (_1!484 lt!9908))))

(declare-fun bm!2327 () Bool)

(assert (=> bm!2327 (= call!2323 (seekEntryOrOpen!0 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3191 lt!9714) (mask!4764 lt!9714)))))

(declare-fun b!25348 () Bool)

(declare-fun Unit!606 () Unit!597)

(assert (=> b!25348 (= e!16379 Unit!606)))

(declare-fun lt!9920 () Unit!597)

(assert (=> b!25348 (= lt!9920 call!2330)))

(assert (=> b!25348 (= lt!9902 call!2314)))

(assert (=> b!25348 (= c!3530 ((_ is MissingZero!60) lt!9902))))

(assert (=> b!25348 e!16377))

(declare-fun lt!9919 () Unit!597)

(assert (=> b!25348 (= lt!9919 lt!9920)))

(assert (=> b!25348 false))

(declare-fun b!25349 () Bool)

(declare-fun e!16378 () tuple2!954)

(assert (=> b!25349 (= e!16378 e!16376)))

(assert (=> b!25349 (= c!3525 (= (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2328 () Bool)

(declare-fun call!2326 () Bool)

(assert (=> bm!2328 (= call!2326 call!2313)))

(declare-fun b!25350 () Bool)

(assert (=> b!25350 (= e!16371 (= call!2332 (+!46 call!2322 (tuple2!959 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))))))))

(declare-fun b!25351 () Bool)

(declare-fun c!3523 () Bool)

(assert (=> b!25351 (= c!3523 ((_ is MissingVacant!60) lt!9909))))

(declare-fun e!16386 () tuple2!954)

(declare-fun e!16389 () tuple2!954)

(assert (=> b!25351 (= e!16386 e!16389)))

(declare-fun b!25352 () Bool)

(declare-fun res!15264 () Bool)

(assert (=> b!25352 (= res!15264 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2365 lt!9902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!25352 (=> (not res!15264) (not e!16373))))

(declare-fun b!25353 () Bool)

(declare-fun res!15258 () Bool)

(declare-fun e!16372 () Bool)

(assert (=> b!25353 (=> (not res!15258) (not e!16372))))

(assert (=> b!25353 (= res!15258 (= (select (arr!610 (_keys!3191 lt!9714)) (index!2362 lt!9910)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!25354 () Bool)

(declare-fun lt!9906 () Unit!597)

(assert (=> b!25354 (= e!16379 lt!9906)))

(declare-fun call!2333 () Unit!597)

(assert (=> b!25354 (= lt!9906 call!2333)))

(assert (=> b!25354 (= lt!9911 call!2314)))

(declare-fun res!15252 () Bool)

(assert (=> b!25354 (= res!15252 ((_ is Found!60) lt!9911))))

(assert (=> b!25354 (=> (not res!15252) (not e!16374))))

(assert (=> b!25354 e!16374))

(declare-fun bm!2329 () Bool)

(assert (=> bm!2329 (= call!2333 (lemmaInListMapThenSeekEntryOrOpenFindsIt!11 (_keys!3191 lt!9714) (_values!1750 lt!9714) (mask!4764 lt!9714) (extraKeys!1658 lt!9714) (zeroValue!1685 lt!9714) (minValue!1685 lt!9714) (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1765 lt!9714)))))

(declare-fun d!4795 () Bool)

(assert (=> d!4795 e!16381))

(declare-fun res!15254 () Bool)

(assert (=> d!4795 (=> (not res!15254) (not e!16381))))

(assert (=> d!4795 (= res!15254 (valid!112 (_2!484 lt!9908)))))

(assert (=> d!4795 (= lt!9908 e!16378)))

(assert (=> d!4795 (= c!3529 (= (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (bvneg (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!4795 (valid!112 lt!9714)))

(assert (=> d!4795 (= (update!37 lt!9714 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938))))) lt!9908)))

(declare-fun b!25355 () Bool)

(assert (=> b!25355 (= e!16372 (not call!2336))))

(declare-fun bm!2330 () Bool)

(assert (=> bm!2330 (= call!2316 call!2320)))

(declare-fun call!2327 () tuple2!954)

(declare-fun bm!2331 () Bool)

(assert (=> bm!2331 (= call!2327 (updateHelperNewKey!11 lt!9714 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!3463 c!3461) (zeroValue!1685 (v!1620 (underlying!119 thiss!938))) (minValue!1685 (v!1620 (underlying!119 thiss!938)))) (ite c!3523 (index!2365 lt!9909) (index!2362 lt!9909))))))

(declare-fun b!25356 () Bool)

(declare-fun res!15251 () Bool)

(assert (=> b!25356 (= res!15251 call!2326)))

(assert (=> b!25356 (=> (not res!15251) (not e!16390))))

(declare-fun b!25357 () Bool)

(declare-fun e!16382 () Unit!597)

(declare-fun lt!9903 () Unit!597)

(assert (=> b!25357 (= e!16382 lt!9903)))

(assert (=> b!25357 (= lt!9903 call!2330)))

(assert (=> b!25357 (= lt!9910 call!2319)))

(assert (=> b!25357 (= c!3526 ((_ is MissingZero!60) lt!9910))))

(declare-fun e!16388 () Bool)

(assert (=> b!25357 e!16388))

(declare-fun bm!2332 () Bool)

(assert (=> bm!2332 (= call!2317 call!2326)))

(declare-fun b!25358 () Bool)

(declare-fun lt!9912 () tuple2!954)

(assert (=> b!25358 (= lt!9912 call!2327)))

(assert (=> b!25358 (= e!16387 (tuple2!955 (_1!484 lt!9912) (_2!484 lt!9912)))))

(declare-fun b!25359 () Bool)

(declare-fun c!3533 () Bool)

(assert (=> b!25359 (= c!3533 ((_ is MissingVacant!60) lt!9910))))

(assert (=> b!25359 (= e!16388 e!16370)))

(declare-fun bm!2333 () Bool)

(assert (=> bm!2333 (= call!2331 call!2313)))

(declare-fun b!25360 () Bool)

(declare-fun lt!9899 () Unit!597)

(assert (=> b!25360 (= lt!9899 e!16382)))

(assert (=> b!25360 (= c!3527 call!2329)))

(assert (=> b!25360 (= e!16386 (tuple2!955 false lt!9714))))

(declare-fun b!25361 () Bool)

(assert (=> b!25361 (= e!16378 e!16386)))

(assert (=> b!25361 (= lt!9909 (seekEntryOrOpen!0 (ite (or c!3463 c!3461) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3191 lt!9714) (mask!4764 lt!9714)))))

(assert (=> b!25361 (= c!3528 ((_ is Undefined!60) lt!9909))))

(declare-fun b!25362 () Bool)

(declare-fun lt!9915 () tuple2!954)

(assert (=> b!25362 (= e!16389 (tuple2!955 (_1!484 lt!9915) (_2!484 lt!9915)))))

(assert (=> b!25362 (= lt!9915 call!2327)))

(declare-fun b!25363 () Bool)

(declare-fun res!15253 () Bool)

(assert (=> b!25363 (=> (not res!15253) (not e!16372))))

(assert (=> b!25363 (= res!15253 call!2317)))

(assert (=> b!25363 (= e!16388 e!16372)))

(declare-fun b!25364 () Bool)

(declare-fun Unit!607 () Unit!597)

(assert (=> b!25364 (= e!16382 Unit!607)))

(declare-fun lt!9917 () Unit!597)

(assert (=> b!25364 (= lt!9917 call!2333)))

(assert (=> b!25364 (= lt!9904 call!2319)))

(declare-fun res!15257 () Bool)

(assert (=> b!25364 (= res!15257 ((_ is Found!60) lt!9904))))

(assert (=> b!25364 (=> (not res!15257) (not e!16390))))

(assert (=> b!25364 e!16390))

(declare-fun lt!9907 () Unit!597)

(assert (=> b!25364 (= lt!9907 lt!9917)))

(assert (=> b!25364 false))

(declare-fun b!25365 () Bool)

(assert (=> b!25365 (= e!16389 e!16387)))

(declare-fun c!3521 () Bool)

(assert (=> b!25365 (= c!3521 ((_ is MissingZero!60) lt!9909))))

(assert (= (and d!4795 c!3529) b!25349))

(assert (= (and d!4795 (not c!3529)) b!25361))

(assert (= (and b!25349 c!3525) b!25345))

(assert (= (and b!25349 (not c!3525)) b!25331))

(assert (= (or b!25345 b!25331) bm!2311))

(assert (= (or b!25345 b!25331) bm!2316))

(assert (= (or b!25345 b!25331) bm!2330))

(assert (= (and b!25361 c!3528) b!25360))

(assert (= (and b!25361 (not c!3528)) b!25351))

(assert (= (and b!25360 c!3527) b!25364))

(assert (= (and b!25360 (not c!3527)) b!25357))

(assert (= (and b!25364 res!15257) b!25356))

(assert (= (and b!25356 res!15251) b!25344))

(assert (= (and b!25357 c!3526) b!25363))

(assert (= (and b!25357 (not c!3526)) b!25359))

(assert (= (and b!25363 res!15253) b!25353))

(assert (= (and b!25353 res!15258) b!25355))

(assert (= (and b!25359 c!3533) b!25330))

(assert (= (and b!25359 (not c!3533)) b!25337))

(assert (= (and b!25330 res!15261) b!25328))

(assert (= (and b!25328 res!15262) b!25338))

(assert (= (or b!25363 b!25330) bm!2332))

(assert (= (or b!25355 b!25338) bm!2323))

(assert (= (or b!25356 bm!2332) bm!2328))

(assert (= (or b!25364 b!25357) bm!2310))

(assert (= (and b!25351 c!3523) b!25362))

(assert (= (and b!25351 (not c!3523)) b!25365))

(assert (= (and b!25365 c!3521) b!25358))

(assert (= (and b!25365 (not c!3521)) b!25340))

(assert (= (and b!25340 c!3531) b!25354))

(assert (= (and b!25340 (not c!3531)) b!25348))

(assert (= (and b!25354 res!15252) b!25326))

(assert (= (and b!25326 res!15259) b!25327))

(assert (= (and b!25348 c!3530) b!25336))

(assert (= (and b!25348 (not c!3530)) b!25329))

(assert (= (and b!25336 res!15263) b!25342))

(assert (= (and b!25342 res!15255) b!25339))

(assert (= (and b!25329 c!3522) b!25333))

(assert (= (and b!25329 (not c!3522)) b!25346))

(assert (= (and b!25333 res!15260) b!25352))

(assert (= (and b!25352 res!15264) b!25335))

(assert (= (or b!25336 b!25333) bm!2314))

(assert (= (or b!25339 b!25335) bm!2312))

(assert (= (or b!25326 bm!2314) bm!2333))

(assert (= (or b!25354 b!25348) bm!2315))

(assert (= (or b!25362 b!25358) bm!2331))

(assert (= (or b!25364 b!25354) bm!2329))

(assert (= (or b!25357 b!25348) bm!2318))

(assert (= (or bm!2310 bm!2315) bm!2327))

(assert (= (or b!25360 b!25340) bm!2322))

(assert (= (or bm!2323 bm!2312) bm!2313))

(assert (= (or bm!2328 bm!2333) bm!2321))

(assert (= (or b!25360 b!25340) bm!2326))

(assert (= (and bm!2326 c!3532) b!25334))

(assert (= (and bm!2326 (not c!3532)) b!25341))

(assert (= (or bm!2316 bm!2322) bm!2325))

(assert (= (or bm!2311 b!25340) bm!2324))

(assert (= (or bm!2330 b!25340) bm!2320))

(assert (= (and d!4795 res!15254) b!25347))

(assert (= (and b!25347 c!3524) b!25332))

(assert (= (and b!25347 (not c!3524)) b!25343))

(assert (= (and b!25332 res!15256) b!25350))

(assert (= (or b!25332 b!25350 b!25343) bm!2319))

(assert (= (or b!25350 b!25343) bm!2317))

(declare-fun m!20459 () Bool)

(assert (=> bm!2317 m!20459))

(declare-fun m!20461 () Bool)

(assert (=> b!25341 m!20461))

(declare-fun m!20463 () Bool)

(assert (=> b!25342 m!20463))

(declare-fun m!20465 () Bool)

(assert (=> b!25361 m!20465))

(declare-fun m!20467 () Bool)

(assert (=> b!25328 m!20467))

(declare-fun m!20469 () Bool)

(assert (=> b!25352 m!20469))

(declare-fun m!20471 () Bool)

(assert (=> bm!2319 m!20471))

(declare-fun m!20473 () Bool)

(assert (=> bm!2331 m!20473))

(declare-fun m!20475 () Bool)

(assert (=> b!25345 m!20475))

(declare-fun m!20477 () Bool)

(assert (=> d!4795 m!20477))

(declare-fun m!20479 () Bool)

(assert (=> d!4795 m!20479))

(declare-fun m!20481 () Bool)

(assert (=> bm!2326 m!20481))

(declare-fun m!20483 () Bool)

(assert (=> bm!2326 m!20483))

(declare-fun m!20485 () Bool)

(assert (=> b!25353 m!20485))

(declare-fun m!20487 () Bool)

(assert (=> bm!2318 m!20487))

(declare-fun m!20489 () Bool)

(assert (=> bm!2320 m!20489))

(declare-fun m!20491 () Bool)

(assert (=> bm!2325 m!20491))

(declare-fun m!20493 () Bool)

(assert (=> bm!2324 m!20493))

(declare-fun m!20495 () Bool)

(assert (=> bm!2324 m!20495))

(declare-fun m!20497 () Bool)

(assert (=> b!25344 m!20497))

(declare-fun m!20499 () Bool)

(assert (=> b!25327 m!20499))

(declare-fun m!20501 () Bool)

(assert (=> b!25331 m!20501))

(assert (=> bm!2327 m!20465))

(declare-fun m!20503 () Bool)

(assert (=> bm!2321 m!20503))

(declare-fun m!20505 () Bool)

(assert (=> b!25350 m!20505))

(declare-fun m!20507 () Bool)

(assert (=> b!25340 m!20507))

(assert (=> b!25340 m!20493))

(declare-fun m!20509 () Bool)

(assert (=> b!25340 m!20509))

(declare-fun m!20511 () Bool)

(assert (=> b!25340 m!20511))

(declare-fun m!20513 () Bool)

(assert (=> b!25332 m!20513))

(declare-fun m!20515 () Bool)

(assert (=> bm!2329 m!20515))

(declare-fun m!20517 () Bool)

(assert (=> bm!2313 m!20517))

(assert (=> bm!2230 d!4795))

(declare-fun d!4797 () Bool)

(assert (=> d!4797 (= (array_inv!429 (_keys!3191 (v!1620 (underlying!119 thiss!938)))) (bvsge (size!711 (_keys!3191 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!25125 d!4797))

(declare-fun d!4799 () Bool)

(assert (=> d!4799 (= (array_inv!430 (_values!1750 (v!1620 (underlying!119 thiss!938)))) (bvsge (size!710 (_values!1750 (v!1620 (underlying!119 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!25125 d!4799))

(declare-fun d!4801 () Bool)

(assert (=> d!4801 (= (validMask!0 (mask!4764 (v!1620 (underlying!119 thiss!938)))) (and (or (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000000111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000001111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000011111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000000111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000001111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000011111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000000111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000001111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000011111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000000111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000001111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000011111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000000111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000001111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000011111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000000111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000001111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000011111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000000111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000001111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000011111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000000111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000001111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000011111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00000111111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00001111111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00011111111111111111111111111111) (= (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4764 (v!1620 (underlying!119 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!25120 d!4801))

(declare-fun b!25373 () Bool)

(declare-fun e!16395 () Bool)

(assert (=> b!25373 (= e!16395 tp_is_empty!1029)))

(declare-fun mapNonEmpty!1045 () Bool)

(declare-fun mapRes!1045 () Bool)

(declare-fun tp!3556 () Bool)

(declare-fun e!16396 () Bool)

(assert (=> mapNonEmpty!1045 (= mapRes!1045 (and tp!3556 e!16396))))

(declare-fun mapValue!1045 () ValueCell!315)

(declare-fun mapRest!1045 () (Array (_ BitVec 32) ValueCell!315))

(declare-fun mapKey!1045 () (_ BitVec 32))

(assert (=> mapNonEmpty!1045 (= mapRest!1039 (store mapRest!1045 mapKey!1045 mapValue!1045))))

(declare-fun condMapEmpty!1045 () Bool)

(declare-fun mapDefault!1045 () ValueCell!315)

(assert (=> mapNonEmpty!1039 (= condMapEmpty!1045 (= mapRest!1039 ((as const (Array (_ BitVec 32) ValueCell!315)) mapDefault!1045)))))

(assert (=> mapNonEmpty!1039 (= tp!3546 (and e!16395 mapRes!1045))))

(declare-fun mapIsEmpty!1045 () Bool)

(assert (=> mapIsEmpty!1045 mapRes!1045))

(declare-fun b!25372 () Bool)

(assert (=> b!25372 (= e!16396 tp_is_empty!1029)))

(assert (= (and mapNonEmpty!1039 condMapEmpty!1045) mapIsEmpty!1045))

(assert (= (and mapNonEmpty!1039 (not condMapEmpty!1045)) mapNonEmpty!1045))

(assert (= (and mapNonEmpty!1045 ((_ is ValueCellFull!315) mapValue!1045)) b!25372))

(assert (= (and mapNonEmpty!1039 ((_ is ValueCellFull!315) mapDefault!1045)) b!25373))

(declare-fun m!20519 () Bool)

(assert (=> mapNonEmpty!1045 m!20519))

(declare-fun b_lambda!1671 () Bool)

(assert (= b_lambda!1667 (or (and b!25125 b_free!765) b_lambda!1671)))

(declare-fun b_lambda!1673 () Bool)

(assert (= b_lambda!1669 (or (and b!25125 b_free!765) b_lambda!1673)))

(check-sat (not b!25305) (not b!25193) (not bm!2329) tp_is_empty!1029 (not bm!2321) (not b!25340) (not d!4793) (not mapNonEmpty!1045) (not bm!2317) (not bm!2295) (not bm!2324) (not b!25291) (not b!25301) (not bm!2326) b_and!1567 (not b!25341) (not bm!2318) (not bm!2331) (not bm!2302) (not b!25321) (not bm!2300) (not b_lambda!1671) (not bm!2313) (not bm!2307) (not b!25203) (not bm!2297) (not b!25300) (not b!25292) (not b!25345) (not b!25332) (not bm!2319) (not b_lambda!1673) (not bm!2301) (not bm!2303) (not bm!2294) (not b!25361) (not d!4789) (not bm!2320) (not b!25192) (not bm!2305) (not b!25350) (not bm!2293) (not bm!2296) (not bm!2327) (not bm!2289) (not b!25331) (not d!4795) (not b!25194) (not bm!2325) (not b!25310) (not d!4791) (not d!4787) (not b_next!765))
(check-sat b_and!1567 (not b_next!765))
