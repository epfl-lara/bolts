; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6048 () Bool)

(assert start!6048)

(declare-fun b_free!1449 () Bool)

(declare-fun b_next!1449 () Bool)

(assert (=> start!6048 (= b_free!1449 (not b_next!1449))))

(declare-fun tp!5861 () Bool)

(declare-fun b_and!2557 () Bool)

(assert (=> start!6048 (= tp!5861 b_and!2557)))

(declare-fun res!25054 () Bool)

(declare-fun e!26607 () Bool)

(assert (=> start!6048 (=> (not res!25054) (not e!26607))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6048 (= res!25054 (validMask!0 mask!853))))

(assert (=> start!6048 e!26607))

(assert (=> start!6048 true))

(assert (=> start!6048 tp!5861))

(declare-fun b!42079 () Bool)

(declare-fun e!26606 () Bool)

(assert (=> b!42079 (= e!26607 (not e!26606))))

(declare-fun res!25053 () Bool)

(assert (=> b!42079 (=> res!25053 e!26606)))

(declare-datatypes ((V!2211 0))(
  ( (V!2212 (val!958 Int)) )
))
(declare-datatypes ((tuple2!1574 0))(
  ( (tuple2!1575 (_1!797 (_ BitVec 64)) (_2!797 V!2211)) )
))
(declare-datatypes ((List!1154 0))(
  ( (Nil!1151) (Cons!1150 (h!1727 tuple2!1574) (t!4107 List!1154)) )
))
(declare-datatypes ((ListLongMap!1155 0))(
  ( (ListLongMap!1156 (toList!593 List!1154)) )
))
(declare-fun lt!17279 () ListLongMap!1155)

(assert (=> b!42079 (= res!25053 (= lt!17279 (ListLongMap!1156 Nil!1151)))))

(declare-fun lt!17276 () V!2211)

(declare-datatypes ((array!2759 0))(
  ( (array!2760 (arr!1323 (Array (_ BitVec 32) (_ BitVec 64))) (size!1481 (_ BitVec 32))) )
))
(declare-fun lt!17277 () array!2759)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!672 0))(
  ( (ValueCellFull!672 (v!2041 V!2211)) (EmptyCell!672) )
))
(declare-datatypes ((array!2761 0))(
  ( (array!2762 (arr!1324 (Array (_ BitVec 32) ValueCell!672)) (size!1482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!324 0))(
  ( (LongMapFixedSize!325 (defaultEntry!1855 Int) (mask!5289 (_ BitVec 32)) (extraKeys!1746 (_ BitVec 32)) (zeroValue!1773 V!2211) (minValue!1773 V!2211) (_size!211 (_ BitVec 32)) (_keys!3368 array!2759) (_values!1838 array!2761) (_vacant!211 (_ BitVec 32))) )
))
(declare-fun map!763 (LongMapFixedSize!324) ListLongMap!1155)

(assert (=> b!42079 (= lt!17279 (map!763 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1155 0))(
  ( (Nil!1152) (Cons!1151 (h!1728 (_ BitVec 64)) (t!4108 List!1155)) )
))
(declare-fun arrayNoDuplicates!0 (array!2759 (_ BitVec 32) List!1155) Bool)

(assert (=> b!42079 (arrayNoDuplicates!0 lt!17277 #b00000000000000000000000000000000 Nil!1152)))

(declare-datatypes ((Unit!1087 0))(
  ( (Unit!1088) )
))
(declare-fun lt!17278 () Unit!1087)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2759 (_ BitVec 32) (_ BitVec 32) List!1155) Unit!1087)

(assert (=> b!42079 (= lt!17278 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2759 (_ BitVec 32)) Bool)

(assert (=> b!42079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17277 mask!853)))

(declare-fun lt!17280 () Unit!1087)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2759 (_ BitVec 32) (_ BitVec 32)) Unit!1087)

(assert (=> b!42079 (= lt!17280 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17277 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2759 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42079 (= (arrayCountValidKeys!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17281 () Unit!1087)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2759 (_ BitVec 32) (_ BitVec 32)) Unit!1087)

(assert (=> b!42079 (= lt!17281 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42079 (= lt!17277 (array!2760 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!233 (Int (_ BitVec 64)) V!2211)

(assert (=> b!42079 (= lt!17276 (dynLambda!233 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42080 () Bool)

(declare-fun isEmpty!275 (List!1154) Bool)

(assert (=> b!42080 (= e!26606 (not (isEmpty!275 (toList!593 lt!17279))))))

(assert (= (and start!6048 res!25054) b!42079))

(assert (= (and b!42079 (not res!25053)) b!42080))

(declare-fun b_lambda!2199 () Bool)

(assert (=> (not b_lambda!2199) (not b!42079)))

(declare-fun t!4106 () Bool)

(declare-fun tb!939 () Bool)

(assert (=> (and start!6048 (= defaultEntry!470 defaultEntry!470) t!4106) tb!939))

(declare-fun result!1621 () Bool)

(declare-fun tp_is_empty!1839 () Bool)

(assert (=> tb!939 (= result!1621 tp_is_empty!1839)))

(assert (=> b!42079 t!4106))

(declare-fun b_and!2559 () Bool)

(assert (= b_and!2557 (and (=> t!4106 result!1621) b_and!2559)))

(declare-fun m!35695 () Bool)

(assert (=> start!6048 m!35695))

(declare-fun m!35697 () Bool)

(assert (=> b!42079 m!35697))

(declare-fun m!35699 () Bool)

(assert (=> b!42079 m!35699))

(declare-fun m!35701 () Bool)

(assert (=> b!42079 m!35701))

(declare-fun m!35703 () Bool)

(assert (=> b!42079 m!35703))

(declare-fun m!35705 () Bool)

(assert (=> b!42079 m!35705))

(declare-fun m!35707 () Bool)

(assert (=> b!42079 m!35707))

(declare-fun m!35709 () Bool)

(assert (=> b!42079 m!35709))

(declare-fun m!35711 () Bool)

(assert (=> b!42079 m!35711))

(declare-fun m!35713 () Bool)

(assert (=> b!42080 m!35713))

(check-sat (not b!42079) tp_is_empty!1839 (not b!42080) b_and!2559 (not b_lambda!2199) (not b_next!1449) (not start!6048))
(check-sat b_and!2559 (not b_next!1449))
(get-model)

(declare-fun b_lambda!2207 () Bool)

(assert (= b_lambda!2199 (or (and start!6048 b_free!1449) b_lambda!2207)))

(check-sat (not b!42079) tp_is_empty!1839 (not b!42080) (not b_lambda!2207) b_and!2559 (not b_next!1449) (not start!6048))
(check-sat b_and!2559 (not b_next!1449))
(get-model)

(declare-fun d!7563 () Bool)

(assert (=> d!7563 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6048 d!7563))

(declare-fun d!7573 () Bool)

(assert (=> d!7573 (= (arrayCountValidKeys!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17311 () Unit!1087)

(declare-fun choose!59 (array!2759 (_ BitVec 32) (_ BitVec 32)) Unit!1087)

(assert (=> d!7573 (= lt!17311 (choose!59 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7573 (bvslt (size!1481 lt!17277) #b01111111111111111111111111111111)))

(assert (=> d!7573 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17311)))

(declare-fun bs!1812 () Bool)

(assert (= bs!1812 d!7573))

(assert (=> bs!1812 m!35697))

(declare-fun m!35747 () Bool)

(assert (=> bs!1812 m!35747))

(assert (=> b!42079 d!7573))

(declare-fun b!42136 () Bool)

(declare-fun e!26651 () Bool)

(declare-fun e!26649 () Bool)

(assert (=> b!42136 (= e!26651 e!26649)))

(declare-fun lt!17333 () (_ BitVec 64))

(assert (=> b!42136 (= lt!17333 (select (arr!1323 lt!17277) #b00000000000000000000000000000000))))

(declare-fun lt!17334 () Unit!1087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2759 (_ BitVec 64) (_ BitVec 32)) Unit!1087)

(assert (=> b!42136 (= lt!17334 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17277 lt!17333 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42136 (arrayContainsKey!0 lt!17277 lt!17333 #b00000000000000000000000000000000)))

(declare-fun lt!17335 () Unit!1087)

(assert (=> b!42136 (= lt!17335 lt!17334)))

(declare-fun res!25086 () Bool)

(declare-datatypes ((SeekEntryResult!190 0))(
  ( (MissingZero!190 (index!2882 (_ BitVec 32))) (Found!190 (index!2883 (_ BitVec 32))) (Intermediate!190 (undefined!1002 Bool) (index!2884 (_ BitVec 32)) (x!8019 (_ BitVec 32))) (Undefined!190) (MissingVacant!190 (index!2885 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2759 (_ BitVec 32)) SeekEntryResult!190)

(assert (=> b!42136 (= res!25086 (= (seekEntryOrOpen!0 (select (arr!1323 lt!17277) #b00000000000000000000000000000000) lt!17277 mask!853) (Found!190 #b00000000000000000000000000000000)))))

(assert (=> b!42136 (=> (not res!25086) (not e!26649))))

(declare-fun b!42137 () Bool)

(declare-fun call!3269 () Bool)

(assert (=> b!42137 (= e!26651 call!3269)))

(declare-fun bm!3266 () Bool)

(assert (=> bm!3266 (= call!3269 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17277 mask!853))))

(declare-fun b!42138 () Bool)

(assert (=> b!42138 (= e!26649 call!3269)))

(declare-fun d!7577 () Bool)

(declare-fun res!25087 () Bool)

(declare-fun e!26650 () Bool)

(assert (=> d!7577 (=> res!25087 e!26650)))

(assert (=> d!7577 (= res!25087 (bvsge #b00000000000000000000000000000000 (size!1481 lt!17277)))))

(assert (=> d!7577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17277 mask!853) e!26650)))

(declare-fun b!42139 () Bool)

(assert (=> b!42139 (= e!26650 e!26651)))

(declare-fun c!5274 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42139 (= c!5274 (validKeyInArray!0 (select (arr!1323 lt!17277) #b00000000000000000000000000000000)))))

(assert (= (and d!7577 (not res!25087)) b!42139))

(assert (= (and b!42139 c!5274) b!42136))

(assert (= (and b!42139 (not c!5274)) b!42137))

(assert (= (and b!42136 res!25086) b!42138))

(assert (= (or b!42138 b!42137) bm!3266))

(declare-fun m!35769 () Bool)

(assert (=> b!42136 m!35769))

(declare-fun m!35771 () Bool)

(assert (=> b!42136 m!35771))

(declare-fun m!35773 () Bool)

(assert (=> b!42136 m!35773))

(assert (=> b!42136 m!35769))

(declare-fun m!35775 () Bool)

(assert (=> b!42136 m!35775))

(declare-fun m!35777 () Bool)

(assert (=> bm!3266 m!35777))

(assert (=> b!42139 m!35769))

(assert (=> b!42139 m!35769))

(declare-fun m!35779 () Bool)

(assert (=> b!42139 m!35779))

(assert (=> b!42079 d!7577))

(declare-fun d!7589 () Bool)

(declare-fun getCurrentListMap!345 (array!2759 array!2761 (_ BitVec 32) (_ BitVec 32) V!2211 V!2211 (_ BitVec 32) Int) ListLongMap!1155)

(assert (=> d!7589 (= (map!763 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!345 (_keys!3368 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1838 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5289 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1746 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1773 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1773 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1855 (LongMapFixedSize!325 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17276 lt!17276 #b00000000000000000000000000000000 lt!17277 (array!2762 ((as const (Array (_ BitVec 32) ValueCell!672)) EmptyCell!672) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1817 () Bool)

(assert (= bs!1817 d!7589))

(declare-fun m!35785 () Bool)

(assert (=> bs!1817 m!35785))

(assert (=> b!42079 d!7589))

(declare-fun d!7593 () Bool)

(declare-fun lt!17353 () (_ BitVec 32))

(assert (=> d!7593 (and (bvsge lt!17353 #b00000000000000000000000000000000) (bvsle lt!17353 (bvsub (size!1481 lt!17277) #b00000000000000000000000000000000)))))

(declare-fun e!26675 () (_ BitVec 32))

(assert (=> d!7593 (= lt!17353 e!26675)))

(declare-fun c!5290 () Bool)

(assert (=> d!7593 (= c!5290 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7593 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1481 lt!17277)))))

(assert (=> d!7593 (= (arrayCountValidKeys!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17353)))

(declare-fun bm!3278 () Bool)

(declare-fun call!3281 () (_ BitVec 32))

(assert (=> bm!3278 (= call!3281 (arrayCountValidKeys!0 lt!17277 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42177 () Bool)

(assert (=> b!42177 (= e!26675 #b00000000000000000000000000000000)))

(declare-fun b!42178 () Bool)

(declare-fun e!26676 () (_ BitVec 32))

(assert (=> b!42178 (= e!26676 (bvadd #b00000000000000000000000000000001 call!3281))))

(declare-fun b!42179 () Bool)

(assert (=> b!42179 (= e!26675 e!26676)))

(declare-fun c!5289 () Bool)

(assert (=> b!42179 (= c!5289 (validKeyInArray!0 (select (arr!1323 lt!17277) #b00000000000000000000000000000000)))))

(declare-fun b!42180 () Bool)

(assert (=> b!42180 (= e!26676 call!3281)))

(assert (= (and d!7593 c!5290) b!42177))

(assert (= (and d!7593 (not c!5290)) b!42179))

(assert (= (and b!42179 c!5289) b!42178))

(assert (= (and b!42179 (not c!5289)) b!42180))

(assert (= (or b!42178 b!42180) bm!3278))

(declare-fun m!35799 () Bool)

(assert (=> bm!3278 m!35799))

(assert (=> b!42179 m!35769))

(assert (=> b!42179 m!35769))

(assert (=> b!42179 m!35779))

(assert (=> b!42079 d!7593))

(declare-fun b!42199 () Bool)

(declare-fun e!26692 () Bool)

(declare-fun call!3286 () Bool)

(assert (=> b!42199 (= e!26692 call!3286)))

(declare-fun b!42200 () Bool)

(declare-fun e!26689 () Bool)

(declare-fun contains!554 (List!1155 (_ BitVec 64)) Bool)

(assert (=> b!42200 (= e!26689 (contains!554 Nil!1152 (select (arr!1323 lt!17277) #b00000000000000000000000000000000)))))

(declare-fun b!42201 () Bool)

(declare-fun e!26690 () Bool)

(declare-fun e!26691 () Bool)

(assert (=> b!42201 (= e!26690 e!26691)))

(declare-fun res!25103 () Bool)

(assert (=> b!42201 (=> (not res!25103) (not e!26691))))

(assert (=> b!42201 (= res!25103 (not e!26689))))

(declare-fun res!25105 () Bool)

(assert (=> b!42201 (=> (not res!25105) (not e!26689))))

(assert (=> b!42201 (= res!25105 (validKeyInArray!0 (select (arr!1323 lt!17277) #b00000000000000000000000000000000)))))

(declare-fun b!42202 () Bool)

(assert (=> b!42202 (= e!26691 e!26692)))

(declare-fun c!5297 () Bool)

(assert (=> b!42202 (= c!5297 (validKeyInArray!0 (select (arr!1323 lt!17277) #b00000000000000000000000000000000)))))

(declare-fun d!7601 () Bool)

(declare-fun res!25104 () Bool)

(assert (=> d!7601 (=> res!25104 e!26690)))

(assert (=> d!7601 (= res!25104 (bvsge #b00000000000000000000000000000000 (size!1481 lt!17277)))))

(assert (=> d!7601 (= (arrayNoDuplicates!0 lt!17277 #b00000000000000000000000000000000 Nil!1152) e!26690)))

(declare-fun b!42203 () Bool)

(assert (=> b!42203 (= e!26692 call!3286)))

(declare-fun bm!3283 () Bool)

(assert (=> bm!3283 (= call!3286 (arrayNoDuplicates!0 lt!17277 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5297 (Cons!1151 (select (arr!1323 lt!17277) #b00000000000000000000000000000000) Nil!1152) Nil!1152)))))

(assert (= (and d!7601 (not res!25104)) b!42201))

(assert (= (and b!42201 res!25105) b!42200))

(assert (= (and b!42201 res!25103) b!42202))

(assert (= (and b!42202 c!5297) b!42203))

(assert (= (and b!42202 (not c!5297)) b!42199))

(assert (= (or b!42203 b!42199) bm!3283))

(assert (=> b!42200 m!35769))

(assert (=> b!42200 m!35769))

(declare-fun m!35803 () Bool)

(assert (=> b!42200 m!35803))

(assert (=> b!42201 m!35769))

(assert (=> b!42201 m!35769))

(assert (=> b!42201 m!35779))

(assert (=> b!42202 m!35769))

(assert (=> b!42202 m!35769))

(assert (=> b!42202 m!35779))

(assert (=> bm!3283 m!35769))

(declare-fun m!35805 () Bool)

(assert (=> bm!3283 m!35805))

(assert (=> b!42079 d!7601))

(declare-fun d!7605 () Bool)

(assert (=> d!7605 (arrayNoDuplicates!0 lt!17277 #b00000000000000000000000000000000 Nil!1152)))

(declare-fun lt!17359 () Unit!1087)

(declare-fun choose!111 (array!2759 (_ BitVec 32) (_ BitVec 32) List!1155) Unit!1087)

(assert (=> d!7605 (= lt!17359 (choose!111 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1152))))

(assert (=> d!7605 (= (size!1481 lt!17277) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7605 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!17277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1152) lt!17359)))

(declare-fun bs!1820 () Bool)

(assert (= bs!1820 d!7605))

(assert (=> bs!1820 m!35711))

(declare-fun m!35809 () Bool)

(assert (=> bs!1820 m!35809))

(assert (=> b!42079 d!7605))

(declare-fun d!7607 () Bool)

(assert (=> d!7607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17277 mask!853)))

(declare-fun lt!17362 () Unit!1087)

(declare-fun choose!34 (array!2759 (_ BitVec 32) (_ BitVec 32)) Unit!1087)

(assert (=> d!7607 (= lt!17362 (choose!34 lt!17277 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7607 (validMask!0 mask!853)))

(assert (=> d!7607 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17277 mask!853 #b00000000000000000000000000000000) lt!17362)))

(declare-fun bs!1821 () Bool)

(assert (= bs!1821 d!7607))

(assert (=> bs!1821 m!35699))

(declare-fun m!35811 () Bool)

(assert (=> bs!1821 m!35811))

(assert (=> bs!1821 m!35695))

(assert (=> b!42079 d!7607))

(declare-fun d!7609 () Bool)

(get-info :version)

(assert (=> d!7609 (= (isEmpty!275 (toList!593 lt!17279)) ((_ is Nil!1151) (toList!593 lt!17279)))))

(assert (=> b!42080 d!7609))

(check-sat tp_is_empty!1839 (not bm!3266) (not b!42201) (not d!7605) b_and!2559 (not b!42200) (not b!42139) (not b!42136) (not d!7589) (not b!42202) (not b_next!1449) (not bm!3283) (not d!7573) (not bm!3278) (not b_lambda!2207) (not b!42179) (not d!7607))
(check-sat b_and!2559 (not b_next!1449))
