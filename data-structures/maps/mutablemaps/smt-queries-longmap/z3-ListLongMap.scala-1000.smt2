; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21600 () Bool)

(assert start!21600)

(declare-fun b!216301 () Bool)

(declare-fun b_free!5751 () Bool)

(declare-fun b_next!5751 () Bool)

(assert (=> b!216301 (= b_free!5751 (not b_next!5751))))

(declare-fun tp!20384 () Bool)

(declare-fun b_and!12659 () Bool)

(assert (=> b!216301 (= tp!20384 b_and!12659)))

(declare-fun b!216297 () Bool)

(declare-fun res!105786 () Bool)

(declare-fun e!140736 () Bool)

(assert (=> b!216297 (=> (not res!105786) (not e!140736))))

(declare-datatypes ((V!7131 0))(
  ( (V!7132 (val!2851 Int)) )
))
(declare-datatypes ((ValueCell!2463 0))(
  ( (ValueCellFull!2463 (v!4865 V!7131)) (EmptyCell!2463) )
))
(declare-datatypes ((array!10462 0))(
  ( (array!10463 (arr!4953 (Array (_ BitVec 32) ValueCell!2463)) (size!5285 (_ BitVec 32))) )
))
(declare-datatypes ((array!10464 0))(
  ( (array!10465 (arr!4954 (Array (_ BitVec 32) (_ BitVec 64))) (size!5286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2826 0))(
  ( (LongMapFixedSize!2827 (defaultEntry!4063 Int) (mask!9795 (_ BitVec 32)) (extraKeys!3800 (_ BitVec 32)) (zeroValue!3904 V!7131) (minValue!3904 V!7131) (_size!1462 (_ BitVec 32)) (_keys!6110 array!10464) (_values!4046 array!10462) (_vacant!1462 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2826)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10464 (_ BitVec 32)) Bool)

(assert (=> b!216297 (= res!105786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(declare-fun b!216298 () Bool)

(declare-fun e!140740 () Bool)

(assert (=> b!216298 (= e!140740 e!140736)))

(declare-fun res!105785 () Bool)

(assert (=> b!216298 (=> (not res!105785) (not e!140736))))

(declare-datatypes ((SeekEntryResult!753 0))(
  ( (MissingZero!753 (index!5182 (_ BitVec 32))) (Found!753 (index!5183 (_ BitVec 32))) (Intermediate!753 (undefined!1565 Bool) (index!5184 (_ BitVec 32)) (x!22633 (_ BitVec 32))) (Undefined!753) (MissingVacant!753 (index!5185 (_ BitVec 32))) )
))
(declare-fun lt!111166 () SeekEntryResult!753)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216298 (= res!105785 (or (= lt!111166 (MissingZero!753 index!297)) (= lt!111166 (MissingVacant!753 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10464 (_ BitVec 32)) SeekEntryResult!753)

(assert (=> b!216298 (= lt!111166 (seekEntryOrOpen!0 key!932 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(declare-fun b!216300 () Bool)

(declare-fun res!105780 () Bool)

(assert (=> b!216300 (=> (not res!105780) (not e!140740))))

(assert (=> b!216300 (= res!105780 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!140738 () Bool)

(declare-fun e!140742 () Bool)

(declare-fun tp_is_empty!5613 () Bool)

(declare-fun array_inv!3267 (array!10464) Bool)

(declare-fun array_inv!3268 (array!10462) Bool)

(assert (=> b!216301 (= e!140738 (and tp!20384 tp_is_empty!5613 (array_inv!3267 (_keys!6110 thiss!1504)) (array_inv!3268 (_values!4046 thiss!1504)) e!140742))))

(declare-fun b!216302 () Bool)

(declare-fun e!140741 () Bool)

(assert (=> b!216302 (= e!140741 tp_is_empty!5613)))

(declare-fun b!216303 () Bool)

(declare-fun e!140737 () Bool)

(assert (=> b!216303 (= e!140737 tp_is_empty!5613)))

(declare-fun mapIsEmpty!9579 () Bool)

(declare-fun mapRes!9579 () Bool)

(assert (=> mapIsEmpty!9579 mapRes!9579))

(declare-fun mapNonEmpty!9579 () Bool)

(declare-fun tp!20385 () Bool)

(assert (=> mapNonEmpty!9579 (= mapRes!9579 (and tp!20385 e!140737))))

(declare-fun mapValue!9579 () ValueCell!2463)

(declare-fun mapKey!9579 () (_ BitVec 32))

(declare-fun mapRest!9579 () (Array (_ BitVec 32) ValueCell!2463))

(assert (=> mapNonEmpty!9579 (= (arr!4953 (_values!4046 thiss!1504)) (store mapRest!9579 mapKey!9579 mapValue!9579))))

(declare-fun b!216304 () Bool)

(assert (=> b!216304 (= e!140742 (and e!140741 mapRes!9579))))

(declare-fun condMapEmpty!9579 () Bool)

(declare-fun mapDefault!9579 () ValueCell!2463)

(assert (=> b!216304 (= condMapEmpty!9579 (= (arr!4953 (_values!4046 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2463)) mapDefault!9579)))))

(declare-fun b!216299 () Bool)

(declare-fun res!105783 () Bool)

(assert (=> b!216299 (=> (not res!105783) (not e!140736))))

(assert (=> b!216299 (= res!105783 (and (= (size!5285 (_values!4046 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9795 thiss!1504))) (= (size!5286 (_keys!6110 thiss!1504)) (size!5285 (_values!4046 thiss!1504))) (bvsge (mask!9795 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3800 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3800 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!105784 () Bool)

(assert (=> start!21600 (=> (not res!105784) (not e!140740))))

(declare-fun valid!1140 (LongMapFixedSize!2826) Bool)

(assert (=> start!21600 (= res!105784 (valid!1140 thiss!1504))))

(assert (=> start!21600 e!140740))

(assert (=> start!21600 e!140738))

(assert (=> start!21600 true))

(declare-fun b!216305 () Bool)

(declare-fun res!105782 () Bool)

(assert (=> b!216305 (=> (not res!105782) (not e!140736))))

(declare-datatypes ((List!3165 0))(
  ( (Nil!3162) (Cons!3161 (h!3808 (_ BitVec 64)) (t!8128 List!3165)) )
))
(declare-fun arrayNoDuplicates!0 (array!10464 (_ BitVec 32) List!3165) Bool)

(assert (=> b!216305 (= res!105782 (arrayNoDuplicates!0 (_keys!6110 thiss!1504) #b00000000000000000000000000000000 Nil!3162))))

(declare-fun b!216306 () Bool)

(declare-fun res!105781 () Bool)

(assert (=> b!216306 (=> (not res!105781) (not e!140736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216306 (= res!105781 (validMask!0 (mask!9795 thiss!1504)))))

(declare-fun b!216307 () Bool)

(assert (=> b!216307 (= e!140736 (bvsgt #b00000000000000000000000000000000 (size!5286 (_keys!6110 thiss!1504))))))

(assert (= (and start!21600 res!105784) b!216300))

(assert (= (and b!216300 res!105780) b!216298))

(assert (= (and b!216298 res!105785) b!216306))

(assert (= (and b!216306 res!105781) b!216299))

(assert (= (and b!216299 res!105783) b!216297))

(assert (= (and b!216297 res!105786) b!216305))

(assert (= (and b!216305 res!105782) b!216307))

(assert (= (and b!216304 condMapEmpty!9579) mapIsEmpty!9579))

(assert (= (and b!216304 (not condMapEmpty!9579)) mapNonEmpty!9579))

(get-info :version)

(assert (= (and mapNonEmpty!9579 ((_ is ValueCellFull!2463) mapValue!9579)) b!216303))

(assert (= (and b!216304 ((_ is ValueCellFull!2463) mapDefault!9579)) b!216302))

(assert (= b!216301 b!216304))

(assert (= start!21600 b!216301))

(declare-fun m!243079 () Bool)

(assert (=> b!216305 m!243079))

(declare-fun m!243081 () Bool)

(assert (=> b!216297 m!243081))

(declare-fun m!243083 () Bool)

(assert (=> b!216301 m!243083))

(declare-fun m!243085 () Bool)

(assert (=> b!216301 m!243085))

(declare-fun m!243087 () Bool)

(assert (=> mapNonEmpty!9579 m!243087))

(declare-fun m!243089 () Bool)

(assert (=> b!216298 m!243089))

(declare-fun m!243091 () Bool)

(assert (=> b!216306 m!243091))

(declare-fun m!243093 () Bool)

(assert (=> start!21600 m!243093))

(check-sat (not b!216301) (not mapNonEmpty!9579) (not b!216298) (not b_next!5751) tp_is_empty!5613 (not b!216297) (not b!216305) (not start!21600) (not b!216306) b_and!12659)
(check-sat b_and!12659 (not b_next!5751))
(get-model)

(declare-fun d!58457 () Bool)

(declare-fun res!105814 () Bool)

(declare-fun e!140766 () Bool)

(assert (=> d!58457 (=> (not res!105814) (not e!140766))))

(declare-fun simpleValid!222 (LongMapFixedSize!2826) Bool)

(assert (=> d!58457 (= res!105814 (simpleValid!222 thiss!1504))))

(assert (=> d!58457 (= (valid!1140 thiss!1504) e!140766)))

(declare-fun b!216347 () Bool)

(declare-fun res!105815 () Bool)

(assert (=> b!216347 (=> (not res!105815) (not e!140766))))

(declare-fun arrayCountValidKeys!0 (array!10464 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!216347 (= res!105815 (= (arrayCountValidKeys!0 (_keys!6110 thiss!1504) #b00000000000000000000000000000000 (size!5286 (_keys!6110 thiss!1504))) (_size!1462 thiss!1504)))))

(declare-fun b!216348 () Bool)

(declare-fun res!105816 () Bool)

(assert (=> b!216348 (=> (not res!105816) (not e!140766))))

(assert (=> b!216348 (= res!105816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(declare-fun b!216349 () Bool)

(assert (=> b!216349 (= e!140766 (arrayNoDuplicates!0 (_keys!6110 thiss!1504) #b00000000000000000000000000000000 Nil!3162))))

(assert (= (and d!58457 res!105814) b!216347))

(assert (= (and b!216347 res!105815) b!216348))

(assert (= (and b!216348 res!105816) b!216349))

(declare-fun m!243111 () Bool)

(assert (=> d!58457 m!243111))

(declare-fun m!243113 () Bool)

(assert (=> b!216347 m!243113))

(assert (=> b!216348 m!243081))

(assert (=> b!216349 m!243079))

(assert (=> start!21600 d!58457))

(declare-fun d!58459 () Bool)

(declare-fun lt!111176 () SeekEntryResult!753)

(assert (=> d!58459 (and (or ((_ is Undefined!753) lt!111176) (not ((_ is Found!753) lt!111176)) (and (bvsge (index!5183 lt!111176) #b00000000000000000000000000000000) (bvslt (index!5183 lt!111176) (size!5286 (_keys!6110 thiss!1504))))) (or ((_ is Undefined!753) lt!111176) ((_ is Found!753) lt!111176) (not ((_ is MissingZero!753) lt!111176)) (and (bvsge (index!5182 lt!111176) #b00000000000000000000000000000000) (bvslt (index!5182 lt!111176) (size!5286 (_keys!6110 thiss!1504))))) (or ((_ is Undefined!753) lt!111176) ((_ is Found!753) lt!111176) ((_ is MissingZero!753) lt!111176) (not ((_ is MissingVacant!753) lt!111176)) (and (bvsge (index!5185 lt!111176) #b00000000000000000000000000000000) (bvslt (index!5185 lt!111176) (size!5286 (_keys!6110 thiss!1504))))) (or ((_ is Undefined!753) lt!111176) (ite ((_ is Found!753) lt!111176) (= (select (arr!4954 (_keys!6110 thiss!1504)) (index!5183 lt!111176)) key!932) (ite ((_ is MissingZero!753) lt!111176) (= (select (arr!4954 (_keys!6110 thiss!1504)) (index!5182 lt!111176)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!753) lt!111176) (= (select (arr!4954 (_keys!6110 thiss!1504)) (index!5185 lt!111176)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!140773 () SeekEntryResult!753)

(assert (=> d!58459 (= lt!111176 e!140773)))

(declare-fun c!36304 () Bool)

(declare-fun lt!111177 () SeekEntryResult!753)

(assert (=> d!58459 (= c!36304 (and ((_ is Intermediate!753) lt!111177) (undefined!1565 lt!111177)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10464 (_ BitVec 32)) SeekEntryResult!753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58459 (= lt!111177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9795 thiss!1504)) key!932 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(assert (=> d!58459 (validMask!0 (mask!9795 thiss!1504))))

(assert (=> d!58459 (= (seekEntryOrOpen!0 key!932 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)) lt!111176)))

(declare-fun b!216362 () Bool)

(declare-fun c!36303 () Bool)

(declare-fun lt!111178 () (_ BitVec 64))

(assert (=> b!216362 (= c!36303 (= lt!111178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!140775 () SeekEntryResult!753)

(declare-fun e!140774 () SeekEntryResult!753)

(assert (=> b!216362 (= e!140775 e!140774)))

(declare-fun b!216363 () Bool)

(assert (=> b!216363 (= e!140775 (Found!753 (index!5184 lt!111177)))))

(declare-fun b!216364 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10464 (_ BitVec 32)) SeekEntryResult!753)

(assert (=> b!216364 (= e!140774 (seekKeyOrZeroReturnVacant!0 (x!22633 lt!111177) (index!5184 lt!111177) (index!5184 lt!111177) key!932 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(declare-fun b!216365 () Bool)

(assert (=> b!216365 (= e!140774 (MissingZero!753 (index!5184 lt!111177)))))

(declare-fun b!216366 () Bool)

(assert (=> b!216366 (= e!140773 e!140775)))

(assert (=> b!216366 (= lt!111178 (select (arr!4954 (_keys!6110 thiss!1504)) (index!5184 lt!111177)))))

(declare-fun c!36302 () Bool)

(assert (=> b!216366 (= c!36302 (= lt!111178 key!932))))

(declare-fun b!216367 () Bool)

(assert (=> b!216367 (= e!140773 Undefined!753)))

(assert (= (and d!58459 c!36304) b!216367))

(assert (= (and d!58459 (not c!36304)) b!216366))

(assert (= (and b!216366 c!36302) b!216363))

(assert (= (and b!216366 (not c!36302)) b!216362))

(assert (= (and b!216362 c!36303) b!216365))

(assert (= (and b!216362 (not c!36303)) b!216364))

(declare-fun m!243115 () Bool)

(assert (=> d!58459 m!243115))

(declare-fun m!243117 () Bool)

(assert (=> d!58459 m!243117))

(declare-fun m!243119 () Bool)

(assert (=> d!58459 m!243119))

(declare-fun m!243121 () Bool)

(assert (=> d!58459 m!243121))

(declare-fun m!243123 () Bool)

(assert (=> d!58459 m!243123))

(assert (=> d!58459 m!243091))

(assert (=> d!58459 m!243115))

(declare-fun m!243125 () Bool)

(assert (=> b!216364 m!243125))

(declare-fun m!243127 () Bool)

(assert (=> b!216366 m!243127))

(assert (=> b!216298 d!58459))

(declare-fun b!216376 () Bool)

(declare-fun e!140784 () Bool)

(declare-fun e!140782 () Bool)

(assert (=> b!216376 (= e!140784 e!140782)))

(declare-fun lt!111187 () (_ BitVec 64))

(assert (=> b!216376 (= lt!111187 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!6503 0))(
  ( (Unit!6504) )
))
(declare-fun lt!111186 () Unit!6503)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10464 (_ BitVec 64) (_ BitVec 32)) Unit!6503)

(assert (=> b!216376 (= lt!111186 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6110 thiss!1504) lt!111187 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!216376 (arrayContainsKey!0 (_keys!6110 thiss!1504) lt!111187 #b00000000000000000000000000000000)))

(declare-fun lt!111185 () Unit!6503)

(assert (=> b!216376 (= lt!111185 lt!111186)))

(declare-fun res!105822 () Bool)

(assert (=> b!216376 (= res!105822 (= (seekEntryOrOpen!0 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000) (_keys!6110 thiss!1504) (mask!9795 thiss!1504)) (Found!753 #b00000000000000000000000000000000)))))

(assert (=> b!216376 (=> (not res!105822) (not e!140782))))

(declare-fun b!216377 () Bool)

(declare-fun e!140783 () Bool)

(assert (=> b!216377 (= e!140783 e!140784)))

(declare-fun c!36307 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!216377 (= c!36307 (validKeyInArray!0 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!20374 () Bool)

(declare-fun call!20377 () Bool)

(assert (=> bm!20374 (= call!20377 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6110 thiss!1504) (mask!9795 thiss!1504)))))

(declare-fun b!216378 () Bool)

(assert (=> b!216378 (= e!140784 call!20377)))

(declare-fun b!216379 () Bool)

(assert (=> b!216379 (= e!140782 call!20377)))

(declare-fun d!58461 () Bool)

(declare-fun res!105821 () Bool)

(assert (=> d!58461 (=> res!105821 e!140783)))

(assert (=> d!58461 (= res!105821 (bvsge #b00000000000000000000000000000000 (size!5286 (_keys!6110 thiss!1504))))))

(assert (=> d!58461 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6110 thiss!1504) (mask!9795 thiss!1504)) e!140783)))

(assert (= (and d!58461 (not res!105821)) b!216377))

(assert (= (and b!216377 c!36307) b!216376))

(assert (= (and b!216377 (not c!36307)) b!216378))

(assert (= (and b!216376 res!105822) b!216379))

(assert (= (or b!216379 b!216378) bm!20374))

(declare-fun m!243129 () Bool)

(assert (=> b!216376 m!243129))

(declare-fun m!243131 () Bool)

(assert (=> b!216376 m!243131))

(declare-fun m!243133 () Bool)

(assert (=> b!216376 m!243133))

(assert (=> b!216376 m!243129))

(declare-fun m!243135 () Bool)

(assert (=> b!216376 m!243135))

(assert (=> b!216377 m!243129))

(assert (=> b!216377 m!243129))

(declare-fun m!243137 () Bool)

(assert (=> b!216377 m!243137))

(declare-fun m!243139 () Bool)

(assert (=> bm!20374 m!243139))

(assert (=> b!216297 d!58461))

(declare-fun d!58463 () Bool)

(assert (=> d!58463 (= (validMask!0 (mask!9795 thiss!1504)) (and (or (= (mask!9795 thiss!1504) #b00000000000000000000000000000111) (= (mask!9795 thiss!1504) #b00000000000000000000000000001111) (= (mask!9795 thiss!1504) #b00000000000000000000000000011111) (= (mask!9795 thiss!1504) #b00000000000000000000000000111111) (= (mask!9795 thiss!1504) #b00000000000000000000000001111111) (= (mask!9795 thiss!1504) #b00000000000000000000000011111111) (= (mask!9795 thiss!1504) #b00000000000000000000000111111111) (= (mask!9795 thiss!1504) #b00000000000000000000001111111111) (= (mask!9795 thiss!1504) #b00000000000000000000011111111111) (= (mask!9795 thiss!1504) #b00000000000000000000111111111111) (= (mask!9795 thiss!1504) #b00000000000000000001111111111111) (= (mask!9795 thiss!1504) #b00000000000000000011111111111111) (= (mask!9795 thiss!1504) #b00000000000000000111111111111111) (= (mask!9795 thiss!1504) #b00000000000000001111111111111111) (= (mask!9795 thiss!1504) #b00000000000000011111111111111111) (= (mask!9795 thiss!1504) #b00000000000000111111111111111111) (= (mask!9795 thiss!1504) #b00000000000001111111111111111111) (= (mask!9795 thiss!1504) #b00000000000011111111111111111111) (= (mask!9795 thiss!1504) #b00000000000111111111111111111111) (= (mask!9795 thiss!1504) #b00000000001111111111111111111111) (= (mask!9795 thiss!1504) #b00000000011111111111111111111111) (= (mask!9795 thiss!1504) #b00000000111111111111111111111111) (= (mask!9795 thiss!1504) #b00000001111111111111111111111111) (= (mask!9795 thiss!1504) #b00000011111111111111111111111111) (= (mask!9795 thiss!1504) #b00000111111111111111111111111111) (= (mask!9795 thiss!1504) #b00001111111111111111111111111111) (= (mask!9795 thiss!1504) #b00011111111111111111111111111111) (= (mask!9795 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9795 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!216306 d!58463))

(declare-fun d!58465 () Bool)

(assert (=> d!58465 (= (array_inv!3267 (_keys!6110 thiss!1504)) (bvsge (size!5286 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216301 d!58465))

(declare-fun d!58467 () Bool)

(assert (=> d!58467 (= (array_inv!3268 (_values!4046 thiss!1504)) (bvsge (size!5285 (_values!4046 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!216301 d!58467))

(declare-fun b!216390 () Bool)

(declare-fun e!140794 () Bool)

(declare-fun contains!1432 (List!3165 (_ BitVec 64)) Bool)

(assert (=> b!216390 (= e!140794 (contains!1432 Nil!3162 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!216391 () Bool)

(declare-fun e!140793 () Bool)

(declare-fun e!140795 () Bool)

(assert (=> b!216391 (= e!140793 e!140795)))

(declare-fun c!36310 () Bool)

(assert (=> b!216391 (= c!36310 (validKeyInArray!0 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!216392 () Bool)

(declare-fun call!20380 () Bool)

(assert (=> b!216392 (= e!140795 call!20380)))

(declare-fun b!216393 () Bool)

(assert (=> b!216393 (= e!140795 call!20380)))

(declare-fun bm!20377 () Bool)

(assert (=> bm!20377 (= call!20380 (arrayNoDuplicates!0 (_keys!6110 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36310 (Cons!3161 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000) Nil!3162) Nil!3162)))))

(declare-fun b!216394 () Bool)

(declare-fun e!140796 () Bool)

(assert (=> b!216394 (= e!140796 e!140793)))

(declare-fun res!105831 () Bool)

(assert (=> b!216394 (=> (not res!105831) (not e!140793))))

(assert (=> b!216394 (= res!105831 (not e!140794))))

(declare-fun res!105830 () Bool)

(assert (=> b!216394 (=> (not res!105830) (not e!140794))))

(assert (=> b!216394 (= res!105830 (validKeyInArray!0 (select (arr!4954 (_keys!6110 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58469 () Bool)

(declare-fun res!105829 () Bool)

(assert (=> d!58469 (=> res!105829 e!140796)))

(assert (=> d!58469 (= res!105829 (bvsge #b00000000000000000000000000000000 (size!5286 (_keys!6110 thiss!1504))))))

(assert (=> d!58469 (= (arrayNoDuplicates!0 (_keys!6110 thiss!1504) #b00000000000000000000000000000000 Nil!3162) e!140796)))

(assert (= (and d!58469 (not res!105829)) b!216394))

(assert (= (and b!216394 res!105830) b!216390))

(assert (= (and b!216394 res!105831) b!216391))

(assert (= (and b!216391 c!36310) b!216393))

(assert (= (and b!216391 (not c!36310)) b!216392))

(assert (= (or b!216393 b!216392) bm!20377))

(assert (=> b!216390 m!243129))

(assert (=> b!216390 m!243129))

(declare-fun m!243141 () Bool)

(assert (=> b!216390 m!243141))

(assert (=> b!216391 m!243129))

(assert (=> b!216391 m!243129))

(assert (=> b!216391 m!243137))

(assert (=> bm!20377 m!243129))

(declare-fun m!243143 () Bool)

(assert (=> bm!20377 m!243143))

(assert (=> b!216394 m!243129))

(assert (=> b!216394 m!243129))

(assert (=> b!216394 m!243137))

(assert (=> b!216305 d!58469))

(declare-fun condMapEmpty!9585 () Bool)

(declare-fun mapDefault!9585 () ValueCell!2463)

(assert (=> mapNonEmpty!9579 (= condMapEmpty!9585 (= mapRest!9579 ((as const (Array (_ BitVec 32) ValueCell!2463)) mapDefault!9585)))))

(declare-fun e!140801 () Bool)

(declare-fun mapRes!9585 () Bool)

(assert (=> mapNonEmpty!9579 (= tp!20385 (and e!140801 mapRes!9585))))

(declare-fun mapIsEmpty!9585 () Bool)

(assert (=> mapIsEmpty!9585 mapRes!9585))

(declare-fun b!216402 () Bool)

(assert (=> b!216402 (= e!140801 tp_is_empty!5613)))

(declare-fun b!216401 () Bool)

(declare-fun e!140802 () Bool)

(assert (=> b!216401 (= e!140802 tp_is_empty!5613)))

(declare-fun mapNonEmpty!9585 () Bool)

(declare-fun tp!20394 () Bool)

(assert (=> mapNonEmpty!9585 (= mapRes!9585 (and tp!20394 e!140802))))

(declare-fun mapRest!9585 () (Array (_ BitVec 32) ValueCell!2463))

(declare-fun mapKey!9585 () (_ BitVec 32))

(declare-fun mapValue!9585 () ValueCell!2463)

(assert (=> mapNonEmpty!9585 (= mapRest!9579 (store mapRest!9585 mapKey!9585 mapValue!9585))))

(assert (= (and mapNonEmpty!9579 condMapEmpty!9585) mapIsEmpty!9585))

(assert (= (and mapNonEmpty!9579 (not condMapEmpty!9585)) mapNonEmpty!9585))

(assert (= (and mapNonEmpty!9585 ((_ is ValueCellFull!2463) mapValue!9585)) b!216401))

(assert (= (and mapNonEmpty!9579 ((_ is ValueCellFull!2463) mapDefault!9585)) b!216402))

(declare-fun m!243145 () Bool)

(assert (=> mapNonEmpty!9585 m!243145))

(check-sat (not d!58459) (not b!216376) (not mapNonEmpty!9585) (not b!216391) (not b!216349) (not d!58457) (not b!216377) (not b!216348) b_and!12659 (not bm!20374) (not b_next!5751) (not b!216394) tp_is_empty!5613 (not b!216364) (not b!216347) (not bm!20377) (not b!216390))
(check-sat b_and!12659 (not b_next!5751))
