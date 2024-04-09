; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17160 () Bool)

(assert start!17160)

(declare-fun b!172288 () Bool)

(declare-fun b_free!4251 () Bool)

(declare-fun b_next!4251 () Bool)

(assert (=> b!172288 (= b_free!4251 (not b_next!4251))))

(declare-fun tp!15395 () Bool)

(declare-fun b_and!10709 () Bool)

(assert (=> b!172288 (= tp!15395 b_and!10709)))

(declare-fun b!172283 () Bool)

(declare-fun e!113730 () Bool)

(declare-fun tp_is_empty!4023 () Bool)

(assert (=> b!172283 (= e!113730 tp_is_empty!4023)))

(declare-fun b!172284 () Bool)

(declare-fun e!113729 () Bool)

(declare-datatypes ((V!5011 0))(
  ( (V!5012 (val!2056 Int)) )
))
(declare-datatypes ((ValueCell!1668 0))(
  ( (ValueCellFull!1668 (v!3920 V!5011)) (EmptyCell!1668) )
))
(declare-datatypes ((array!7164 0))(
  ( (array!7165 (arr!3406 (Array (_ BitVec 32) (_ BitVec 64))) (size!3702 (_ BitVec 32))) )
))
(declare-datatypes ((array!7166 0))(
  ( (array!7167 (arr!3407 (Array (_ BitVec 32) ValueCell!1668)) (size!3703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2244 0))(
  ( (LongMapFixedSize!2245 (defaultEntry!3568 Int) (mask!8409 (_ BitVec 32)) (extraKeys!3307 (_ BitVec 32)) (zeroValue!3409 V!5011) (minValue!3411 V!5011) (_size!1171 (_ BitVec 32)) (_keys!5404 array!7164) (_values!3551 array!7166) (_vacant!1171 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2244)

(assert (=> b!172284 (= e!113729 (and (= (size!3703 (_values!3551 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8409 thiss!1248))) (not (= (size!3702 (_keys!5404 thiss!1248)) (size!3703 (_values!3551 thiss!1248))))))))

(declare-fun mapNonEmpty!6840 () Bool)

(declare-fun mapRes!6840 () Bool)

(declare-fun tp!15396 () Bool)

(assert (=> mapNonEmpty!6840 (= mapRes!6840 (and tp!15396 e!113730))))

(declare-fun mapValue!6840 () ValueCell!1668)

(declare-fun mapRest!6840 () (Array (_ BitVec 32) ValueCell!1668))

(declare-fun mapKey!6840 () (_ BitVec 32))

(assert (=> mapNonEmpty!6840 (= (arr!3407 (_values!3551 thiss!1248)) (store mapRest!6840 mapKey!6840 mapValue!6840))))

(declare-fun res!81821 () Bool)

(assert (=> start!17160 (=> (not res!81821) (not e!113729))))

(declare-fun valid!945 (LongMapFixedSize!2244) Bool)

(assert (=> start!17160 (= res!81821 (valid!945 thiss!1248))))

(assert (=> start!17160 e!113729))

(declare-fun e!113731 () Bool)

(assert (=> start!17160 e!113731))

(assert (=> start!17160 true))

(declare-fun b!172285 () Bool)

(declare-fun res!81820 () Bool)

(assert (=> b!172285 (=> (not res!81820) (not e!113729))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172285 (= res!81820 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172286 () Bool)

(declare-fun res!81822 () Bool)

(assert (=> b!172286 (=> (not res!81822) (not e!113729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172286 (= res!81822 (validMask!0 (mask!8409 thiss!1248)))))

(declare-fun b!172287 () Bool)

(declare-fun e!113726 () Bool)

(declare-fun e!113728 () Bool)

(assert (=> b!172287 (= e!113726 (and e!113728 mapRes!6840))))

(declare-fun condMapEmpty!6840 () Bool)

(declare-fun mapDefault!6840 () ValueCell!1668)

(assert (=> b!172287 (= condMapEmpty!6840 (= (arr!3407 (_values!3551 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1668)) mapDefault!6840)))))

(declare-fun array_inv!2173 (array!7164) Bool)

(declare-fun array_inv!2174 (array!7166) Bool)

(assert (=> b!172288 (= e!113731 (and tp!15395 tp_is_empty!4023 (array_inv!2173 (_keys!5404 thiss!1248)) (array_inv!2174 (_values!3551 thiss!1248)) e!113726))))

(declare-fun mapIsEmpty!6840 () Bool)

(assert (=> mapIsEmpty!6840 mapRes!6840))

(declare-fun b!172289 () Bool)

(assert (=> b!172289 (= e!113728 tp_is_empty!4023)))

(assert (= (and start!17160 res!81821) b!172285))

(assert (= (and b!172285 res!81820) b!172286))

(assert (= (and b!172286 res!81822) b!172284))

(assert (= (and b!172287 condMapEmpty!6840) mapIsEmpty!6840))

(assert (= (and b!172287 (not condMapEmpty!6840)) mapNonEmpty!6840))

(get-info :version)

(assert (= (and mapNonEmpty!6840 ((_ is ValueCellFull!1668) mapValue!6840)) b!172283))

(assert (= (and b!172287 ((_ is ValueCellFull!1668) mapDefault!6840)) b!172289))

(assert (= b!172288 b!172287))

(assert (= start!17160 b!172288))

(declare-fun m!201155 () Bool)

(assert (=> mapNonEmpty!6840 m!201155))

(declare-fun m!201157 () Bool)

(assert (=> start!17160 m!201157))

(declare-fun m!201159 () Bool)

(assert (=> b!172286 m!201159))

(declare-fun m!201161 () Bool)

(assert (=> b!172288 m!201161))

(declare-fun m!201163 () Bool)

(assert (=> b!172288 m!201163))

(check-sat b_and!10709 tp_is_empty!4023 (not b!172288) (not b_next!4251) (not mapNonEmpty!6840) (not start!17160) (not b!172286))
(check-sat b_and!10709 (not b_next!4251))
(get-model)

(declare-fun d!52407 () Bool)

(assert (=> d!52407 (= (validMask!0 (mask!8409 thiss!1248)) (and (or (= (mask!8409 thiss!1248) #b00000000000000000000000000000111) (= (mask!8409 thiss!1248) #b00000000000000000000000000001111) (= (mask!8409 thiss!1248) #b00000000000000000000000000011111) (= (mask!8409 thiss!1248) #b00000000000000000000000000111111) (= (mask!8409 thiss!1248) #b00000000000000000000000001111111) (= (mask!8409 thiss!1248) #b00000000000000000000000011111111) (= (mask!8409 thiss!1248) #b00000000000000000000000111111111) (= (mask!8409 thiss!1248) #b00000000000000000000001111111111) (= (mask!8409 thiss!1248) #b00000000000000000000011111111111) (= (mask!8409 thiss!1248) #b00000000000000000000111111111111) (= (mask!8409 thiss!1248) #b00000000000000000001111111111111) (= (mask!8409 thiss!1248) #b00000000000000000011111111111111) (= (mask!8409 thiss!1248) #b00000000000000000111111111111111) (= (mask!8409 thiss!1248) #b00000000000000001111111111111111) (= (mask!8409 thiss!1248) #b00000000000000011111111111111111) (= (mask!8409 thiss!1248) #b00000000000000111111111111111111) (= (mask!8409 thiss!1248) #b00000000000001111111111111111111) (= (mask!8409 thiss!1248) #b00000000000011111111111111111111) (= (mask!8409 thiss!1248) #b00000000000111111111111111111111) (= (mask!8409 thiss!1248) #b00000000001111111111111111111111) (= (mask!8409 thiss!1248) #b00000000011111111111111111111111) (= (mask!8409 thiss!1248) #b00000000111111111111111111111111) (= (mask!8409 thiss!1248) #b00000001111111111111111111111111) (= (mask!8409 thiss!1248) #b00000011111111111111111111111111) (= (mask!8409 thiss!1248) #b00000111111111111111111111111111) (= (mask!8409 thiss!1248) #b00001111111111111111111111111111) (= (mask!8409 thiss!1248) #b00011111111111111111111111111111) (= (mask!8409 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8409 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172286 d!52407))

(declare-fun d!52409 () Bool)

(declare-fun res!81838 () Bool)

(declare-fun e!113752 () Bool)

(assert (=> d!52409 (=> (not res!81838) (not e!113752))))

(declare-fun simpleValid!137 (LongMapFixedSize!2244) Bool)

(assert (=> d!52409 (= res!81838 (simpleValid!137 thiss!1248))))

(assert (=> d!52409 (= (valid!945 thiss!1248) e!113752)))

(declare-fun b!172317 () Bool)

(declare-fun res!81839 () Bool)

(assert (=> b!172317 (=> (not res!81839) (not e!113752))))

(declare-fun arrayCountValidKeys!0 (array!7164 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172317 (= res!81839 (= (arrayCountValidKeys!0 (_keys!5404 thiss!1248) #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))) (_size!1171 thiss!1248)))))

(declare-fun b!172318 () Bool)

(declare-fun res!81840 () Bool)

(assert (=> b!172318 (=> (not res!81840) (not e!113752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7164 (_ BitVec 32)) Bool)

(assert (=> b!172318 (= res!81840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5404 thiss!1248) (mask!8409 thiss!1248)))))

(declare-fun b!172319 () Bool)

(declare-datatypes ((List!2218 0))(
  ( (Nil!2215) (Cons!2214 (h!2831 (_ BitVec 64)) (t!7033 List!2218)) )
))
(declare-fun arrayNoDuplicates!0 (array!7164 (_ BitVec 32) List!2218) Bool)

(assert (=> b!172319 (= e!113752 (arrayNoDuplicates!0 (_keys!5404 thiss!1248) #b00000000000000000000000000000000 Nil!2215))))

(assert (= (and d!52409 res!81838) b!172317))

(assert (= (and b!172317 res!81839) b!172318))

(assert (= (and b!172318 res!81840) b!172319))

(declare-fun m!201175 () Bool)

(assert (=> d!52409 m!201175))

(declare-fun m!201177 () Bool)

(assert (=> b!172317 m!201177))

(declare-fun m!201179 () Bool)

(assert (=> b!172318 m!201179))

(declare-fun m!201181 () Bool)

(assert (=> b!172319 m!201181))

(assert (=> start!17160 d!52409))

(declare-fun d!52411 () Bool)

(assert (=> d!52411 (= (array_inv!2173 (_keys!5404 thiss!1248)) (bvsge (size!3702 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172288 d!52411))

(declare-fun d!52413 () Bool)

(assert (=> d!52413 (= (array_inv!2174 (_values!3551 thiss!1248)) (bvsge (size!3703 (_values!3551 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172288 d!52413))

(declare-fun b!172327 () Bool)

(declare-fun e!113757 () Bool)

(assert (=> b!172327 (= e!113757 tp_is_empty!4023)))

(declare-fun b!172326 () Bool)

(declare-fun e!113758 () Bool)

(assert (=> b!172326 (= e!113758 tp_is_empty!4023)))

(declare-fun condMapEmpty!6846 () Bool)

(declare-fun mapDefault!6846 () ValueCell!1668)

(assert (=> mapNonEmpty!6840 (= condMapEmpty!6846 (= mapRest!6840 ((as const (Array (_ BitVec 32) ValueCell!1668)) mapDefault!6846)))))

(declare-fun mapRes!6846 () Bool)

(assert (=> mapNonEmpty!6840 (= tp!15396 (and e!113757 mapRes!6846))))

(declare-fun mapNonEmpty!6846 () Bool)

(declare-fun tp!15405 () Bool)

(assert (=> mapNonEmpty!6846 (= mapRes!6846 (and tp!15405 e!113758))))

(declare-fun mapRest!6846 () (Array (_ BitVec 32) ValueCell!1668))

(declare-fun mapValue!6846 () ValueCell!1668)

(declare-fun mapKey!6846 () (_ BitVec 32))

(assert (=> mapNonEmpty!6846 (= mapRest!6840 (store mapRest!6846 mapKey!6846 mapValue!6846))))

(declare-fun mapIsEmpty!6846 () Bool)

(assert (=> mapIsEmpty!6846 mapRes!6846))

(assert (= (and mapNonEmpty!6840 condMapEmpty!6846) mapIsEmpty!6846))

(assert (= (and mapNonEmpty!6840 (not condMapEmpty!6846)) mapNonEmpty!6846))

(assert (= (and mapNonEmpty!6846 ((_ is ValueCellFull!1668) mapValue!6846)) b!172326))

(assert (= (and mapNonEmpty!6840 ((_ is ValueCellFull!1668) mapDefault!6846)) b!172327))

(declare-fun m!201183 () Bool)

(assert (=> mapNonEmpty!6846 m!201183))

(check-sat (not b!172319) (not b!172317) b_and!10709 tp_is_empty!4023 (not b!172318) (not mapNonEmpty!6846) (not d!52409) (not b_next!4251))
(check-sat b_and!10709 (not b_next!4251))
(get-model)

(declare-fun b!172338 () Bool)

(declare-fun e!113769 () Bool)

(declare-fun e!113767 () Bool)

(assert (=> b!172338 (= e!113769 e!113767)))

(declare-fun res!81847 () Bool)

(assert (=> b!172338 (=> (not res!81847) (not e!113767))))

(declare-fun e!113770 () Bool)

(assert (=> b!172338 (= res!81847 (not e!113770))))

(declare-fun res!81848 () Bool)

(assert (=> b!172338 (=> (not res!81848) (not e!113770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!172338 (= res!81848 (validKeyInArray!0 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17519 () Bool)

(declare-fun call!17522 () Bool)

(declare-fun c!30835 () Bool)

(assert (=> bm!17519 (= call!17522 (arrayNoDuplicates!0 (_keys!5404 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30835 (Cons!2214 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000) Nil!2215) Nil!2215)))))

(declare-fun b!172339 () Bool)

(declare-fun e!113768 () Bool)

(assert (=> b!172339 (= e!113768 call!17522)))

(declare-fun b!172340 () Bool)

(assert (=> b!172340 (= e!113768 call!17522)))

(declare-fun b!172341 () Bool)

(declare-fun contains!1149 (List!2218 (_ BitVec 64)) Bool)

(assert (=> b!172341 (= e!113770 (contains!1149 Nil!2215 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172342 () Bool)

(assert (=> b!172342 (= e!113767 e!113768)))

(assert (=> b!172342 (= c!30835 (validKeyInArray!0 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52415 () Bool)

(declare-fun res!81849 () Bool)

(assert (=> d!52415 (=> res!81849 e!113769)))

(assert (=> d!52415 (= res!81849 (bvsge #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))))))

(assert (=> d!52415 (= (arrayNoDuplicates!0 (_keys!5404 thiss!1248) #b00000000000000000000000000000000 Nil!2215) e!113769)))

(assert (= (and d!52415 (not res!81849)) b!172338))

(assert (= (and b!172338 res!81848) b!172341))

(assert (= (and b!172338 res!81847) b!172342))

(assert (= (and b!172342 c!30835) b!172340))

(assert (= (and b!172342 (not c!30835)) b!172339))

(assert (= (or b!172340 b!172339) bm!17519))

(declare-fun m!201185 () Bool)

(assert (=> b!172338 m!201185))

(assert (=> b!172338 m!201185))

(declare-fun m!201187 () Bool)

(assert (=> b!172338 m!201187))

(assert (=> bm!17519 m!201185))

(declare-fun m!201189 () Bool)

(assert (=> bm!17519 m!201189))

(assert (=> b!172341 m!201185))

(assert (=> b!172341 m!201185))

(declare-fun m!201191 () Bool)

(assert (=> b!172341 m!201191))

(assert (=> b!172342 m!201185))

(assert (=> b!172342 m!201185))

(assert (=> b!172342 m!201187))

(assert (=> b!172319 d!52415))

(declare-fun b!172351 () Bool)

(declare-fun e!113778 () Bool)

(declare-fun e!113777 () Bool)

(assert (=> b!172351 (= e!113778 e!113777)))

(declare-fun lt!85688 () (_ BitVec 64))

(assert (=> b!172351 (= lt!85688 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5301 0))(
  ( (Unit!5302) )
))
(declare-fun lt!85686 () Unit!5301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7164 (_ BitVec 64) (_ BitVec 32)) Unit!5301)

(assert (=> b!172351 (= lt!85686 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5404 thiss!1248) lt!85688 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!172351 (arrayContainsKey!0 (_keys!5404 thiss!1248) lt!85688 #b00000000000000000000000000000000)))

(declare-fun lt!85687 () Unit!5301)

(assert (=> b!172351 (= lt!85687 lt!85686)))

(declare-fun res!81855 () Bool)

(declare-datatypes ((SeekEntryResult!547 0))(
  ( (MissingZero!547 (index!4356 (_ BitVec 32))) (Found!547 (index!4357 (_ BitVec 32))) (Intermediate!547 (undefined!1359 Bool) (index!4358 (_ BitVec 32)) (x!19046 (_ BitVec 32))) (Undefined!547) (MissingVacant!547 (index!4359 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7164 (_ BitVec 32)) SeekEntryResult!547)

(assert (=> b!172351 (= res!81855 (= (seekEntryOrOpen!0 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000) (_keys!5404 thiss!1248) (mask!8409 thiss!1248)) (Found!547 #b00000000000000000000000000000000)))))

(assert (=> b!172351 (=> (not res!81855) (not e!113777))))

(declare-fun b!172352 () Bool)

(declare-fun e!113779 () Bool)

(assert (=> b!172352 (= e!113779 e!113778)))

(declare-fun c!30838 () Bool)

(assert (=> b!172352 (= c!30838 (validKeyInArray!0 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17522 () Bool)

(declare-fun call!17525 () Bool)

(assert (=> bm!17522 (= call!17525 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5404 thiss!1248) (mask!8409 thiss!1248)))))

(declare-fun b!172353 () Bool)

(assert (=> b!172353 (= e!113777 call!17525)))

(declare-fun b!172354 () Bool)

(assert (=> b!172354 (= e!113778 call!17525)))

(declare-fun d!52417 () Bool)

(declare-fun res!81854 () Bool)

(assert (=> d!52417 (=> res!81854 e!113779)))

(assert (=> d!52417 (= res!81854 (bvsge #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))))))

(assert (=> d!52417 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5404 thiss!1248) (mask!8409 thiss!1248)) e!113779)))

(assert (= (and d!52417 (not res!81854)) b!172352))

(assert (= (and b!172352 c!30838) b!172351))

(assert (= (and b!172352 (not c!30838)) b!172354))

(assert (= (and b!172351 res!81855) b!172353))

(assert (= (or b!172353 b!172354) bm!17522))

(assert (=> b!172351 m!201185))

(declare-fun m!201193 () Bool)

(assert (=> b!172351 m!201193))

(declare-fun m!201195 () Bool)

(assert (=> b!172351 m!201195))

(assert (=> b!172351 m!201185))

(declare-fun m!201197 () Bool)

(assert (=> b!172351 m!201197))

(assert (=> b!172352 m!201185))

(assert (=> b!172352 m!201185))

(assert (=> b!172352 m!201187))

(declare-fun m!201199 () Bool)

(assert (=> bm!17522 m!201199))

(assert (=> b!172318 d!52417))

(declare-fun b!172363 () Bool)

(declare-fun e!113784 () (_ BitVec 32))

(declare-fun call!17528 () (_ BitVec 32))

(assert (=> b!172363 (= e!113784 call!17528)))

(declare-fun b!172364 () Bool)

(declare-fun e!113785 () (_ BitVec 32))

(assert (=> b!172364 (= e!113785 e!113784)))

(declare-fun c!30843 () Bool)

(assert (=> b!172364 (= c!30843 (validKeyInArray!0 (select (arr!3406 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172365 () Bool)

(assert (=> b!172365 (= e!113784 (bvadd #b00000000000000000000000000000001 call!17528))))

(declare-fun bm!17525 () Bool)

(assert (=> bm!17525 (= call!17528 (arrayCountValidKeys!0 (_keys!5404 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3702 (_keys!5404 thiss!1248))))))

(declare-fun b!172366 () Bool)

(assert (=> b!172366 (= e!113785 #b00000000000000000000000000000000)))

(declare-fun d!52419 () Bool)

(declare-fun lt!85691 () (_ BitVec 32))

(assert (=> d!52419 (and (bvsge lt!85691 #b00000000000000000000000000000000) (bvsle lt!85691 (bvsub (size!3702 (_keys!5404 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52419 (= lt!85691 e!113785)))

(declare-fun c!30844 () Bool)

(assert (=> d!52419 (= c!30844 (bvsge #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))))))

(assert (=> d!52419 (and (bvsle #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3702 (_keys!5404 thiss!1248)) (size!3702 (_keys!5404 thiss!1248))))))

(assert (=> d!52419 (= (arrayCountValidKeys!0 (_keys!5404 thiss!1248) #b00000000000000000000000000000000 (size!3702 (_keys!5404 thiss!1248))) lt!85691)))

(assert (= (and d!52419 c!30844) b!172366))

(assert (= (and d!52419 (not c!30844)) b!172364))

(assert (= (and b!172364 c!30843) b!172365))

(assert (= (and b!172364 (not c!30843)) b!172363))

(assert (= (or b!172365 b!172363) bm!17525))

(assert (=> b!172364 m!201185))

(assert (=> b!172364 m!201185))

(assert (=> b!172364 m!201187))

(declare-fun m!201201 () Bool)

(assert (=> bm!17525 m!201201))

(assert (=> b!172317 d!52419))

(declare-fun b!172376 () Bool)

(declare-fun res!81864 () Bool)

(declare-fun e!113788 () Bool)

(assert (=> b!172376 (=> (not res!81864) (not e!113788))))

(declare-fun size!3706 (LongMapFixedSize!2244) (_ BitVec 32))

(assert (=> b!172376 (= res!81864 (bvsge (size!3706 thiss!1248) (_size!1171 thiss!1248)))))

(declare-fun b!172378 () Bool)

(assert (=> b!172378 (= e!113788 (and (bvsge (extraKeys!3307 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3307 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1171 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!172377 () Bool)

(declare-fun res!81866 () Bool)

(assert (=> b!172377 (=> (not res!81866) (not e!113788))))

(assert (=> b!172377 (= res!81866 (= (size!3706 thiss!1248) (bvadd (_size!1171 thiss!1248) (bvsdiv (bvadd (extraKeys!3307 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!52421 () Bool)

(declare-fun res!81867 () Bool)

(assert (=> d!52421 (=> (not res!81867) (not e!113788))))

(assert (=> d!52421 (= res!81867 (validMask!0 (mask!8409 thiss!1248)))))

(assert (=> d!52421 (= (simpleValid!137 thiss!1248) e!113788)))

(declare-fun b!172375 () Bool)

(declare-fun res!81865 () Bool)

(assert (=> b!172375 (=> (not res!81865) (not e!113788))))

(assert (=> b!172375 (= res!81865 (and (= (size!3703 (_values!3551 thiss!1248)) (bvadd (mask!8409 thiss!1248) #b00000000000000000000000000000001)) (= (size!3702 (_keys!5404 thiss!1248)) (size!3703 (_values!3551 thiss!1248))) (bvsge (_size!1171 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1171 thiss!1248) (bvadd (mask!8409 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!52421 res!81867) b!172375))

(assert (= (and b!172375 res!81865) b!172376))

(assert (= (and b!172376 res!81864) b!172377))

(assert (= (and b!172377 res!81866) b!172378))

(declare-fun m!201203 () Bool)

(assert (=> b!172376 m!201203))

(assert (=> b!172377 m!201203))

(assert (=> d!52421 m!201159))

(assert (=> d!52409 d!52421))

(declare-fun b!172380 () Bool)

(declare-fun e!113789 () Bool)

(assert (=> b!172380 (= e!113789 tp_is_empty!4023)))

(declare-fun b!172379 () Bool)

(declare-fun e!113790 () Bool)

(assert (=> b!172379 (= e!113790 tp_is_empty!4023)))

(declare-fun condMapEmpty!6847 () Bool)

(declare-fun mapDefault!6847 () ValueCell!1668)

(assert (=> mapNonEmpty!6846 (= condMapEmpty!6847 (= mapRest!6846 ((as const (Array (_ BitVec 32) ValueCell!1668)) mapDefault!6847)))))

(declare-fun mapRes!6847 () Bool)

(assert (=> mapNonEmpty!6846 (= tp!15405 (and e!113789 mapRes!6847))))

(declare-fun mapNonEmpty!6847 () Bool)

(declare-fun tp!15406 () Bool)

(assert (=> mapNonEmpty!6847 (= mapRes!6847 (and tp!15406 e!113790))))

(declare-fun mapValue!6847 () ValueCell!1668)

(declare-fun mapKey!6847 () (_ BitVec 32))

(declare-fun mapRest!6847 () (Array (_ BitVec 32) ValueCell!1668))

(assert (=> mapNonEmpty!6847 (= mapRest!6846 (store mapRest!6847 mapKey!6847 mapValue!6847))))

(declare-fun mapIsEmpty!6847 () Bool)

(assert (=> mapIsEmpty!6847 mapRes!6847))

(assert (= (and mapNonEmpty!6846 condMapEmpty!6847) mapIsEmpty!6847))

(assert (= (and mapNonEmpty!6846 (not condMapEmpty!6847)) mapNonEmpty!6847))

(assert (= (and mapNonEmpty!6847 ((_ is ValueCellFull!1668) mapValue!6847)) b!172379))

(assert (= (and mapNonEmpty!6846 ((_ is ValueCellFull!1668) mapDefault!6847)) b!172380))

(declare-fun m!201205 () Bool)

(assert (=> mapNonEmpty!6847 m!201205))

(check-sat (not b!172352) (not b!172341) (not b!172351) (not b!172364) b_and!10709 tp_is_empty!4023 (not mapNonEmpty!6847) (not b_next!4251) (not bm!17519) (not b!172376) (not b!172338) (not bm!17525) (not d!52421) (not bm!17522) (not b!172342) (not b!172377))
(check-sat b_and!10709 (not b_next!4251))
