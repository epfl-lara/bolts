; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17298 () Bool)

(assert start!17298)

(declare-fun b!173250 () Bool)

(declare-fun b_free!4311 () Bool)

(declare-fun b_next!4311 () Bool)

(assert (=> b!173250 (= b_free!4311 (not b_next!4311))))

(declare-fun tp!15597 () Bool)

(declare-fun b_and!10769 () Bool)

(assert (=> b!173250 (= tp!15597 b_and!10769)))

(declare-fun b!173245 () Bool)

(declare-fun e!114457 () Bool)

(declare-fun e!114462 () Bool)

(assert (=> b!173245 (= e!114457 (not e!114462))))

(declare-fun res!82280 () Bool)

(assert (=> b!173245 (=> (not res!82280) (not e!114462))))

(declare-datatypes ((V!5091 0))(
  ( (V!5092 (val!2086 Int)) )
))
(declare-datatypes ((ValueCell!1698 0))(
  ( (ValueCellFull!1698 (v!3950 V!5091)) (EmptyCell!1698) )
))
(declare-datatypes ((array!7296 0))(
  ( (array!7297 (arr!3466 (Array (_ BitVec 32) (_ BitVec 64))) (size!3765 (_ BitVec 32))) )
))
(declare-datatypes ((array!7298 0))(
  ( (array!7299 (arr!3467 (Array (_ BitVec 32) ValueCell!1698)) (size!3766 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2304 0))(
  ( (LongMapFixedSize!2305 (defaultEntry!3598 Int) (mask!8470 (_ BitVec 32)) (extraKeys!3337 (_ BitVec 32)) (zeroValue!3439 V!5091) (minValue!3441 V!5091) (_size!1201 (_ BitVec 32)) (_keys!5439 array!7296) (_values!3581 array!7298) (_vacant!1201 (_ BitVec 32))) )
))
(declare-fun lt!85751 () LongMapFixedSize!2304)

(declare-fun valid!965 (LongMapFixedSize!2304) Bool)

(assert (=> b!173245 (= res!82280 (valid!965 lt!85751))))

(declare-fun thiss!1248 () LongMapFixedSize!2304)

(declare-fun v!309 () V!5091)

(assert (=> b!173245 (= lt!85751 (LongMapFixedSize!2305 (defaultEntry!3598 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (_size!1201 thiss!1248) (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (_vacant!1201 thiss!1248)))))

(declare-datatypes ((tuple2!3236 0))(
  ( (tuple2!3237 (_1!1628 (_ BitVec 64)) (_2!1628 V!5091)) )
))
(declare-datatypes ((List!2226 0))(
  ( (Nil!2223) (Cons!2222 (h!2839 tuple2!3236) (t!7041 List!2226)) )
))
(declare-datatypes ((ListLongMap!2177 0))(
  ( (ListLongMap!2178 (toList!1104 List!2226)) )
))
(declare-fun +!241 (ListLongMap!2177 tuple2!3236) ListLongMap!2177)

(declare-fun getCurrentListMap!751 (array!7296 array!7298 (_ BitVec 32) (_ BitVec 32) V!5091 V!5091 (_ BitVec 32) Int) ListLongMap!2177)

(assert (=> b!173245 (= (+!241 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-datatypes ((Unit!5311 0))(
  ( (Unit!5312) )
))
(declare-fun lt!85749 () Unit!5311)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!84 (array!7296 array!7298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!5091 V!5091 V!5091 Int) Unit!5311)

(assert (=> b!173245 (= lt!85749 (lemmaChangeLongMinValueKeyThenAddPairToListMap!84 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) v!309 (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173246 () Bool)

(declare-fun e!114460 () Bool)

(assert (=> b!173246 (= e!114462 e!114460)))

(declare-fun res!82281 () Bool)

(assert (=> b!173246 (=> (not res!82281) (not e!114460))))

(declare-fun lt!85750 () ListLongMap!2177)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun contains!1153 (ListLongMap!2177 (_ BitVec 64)) Bool)

(assert (=> b!173246 (= res!82281 (contains!1153 lt!85750 key!828))))

(declare-fun map!1881 (LongMapFixedSize!2304) ListLongMap!2177)

(assert (=> b!173246 (= lt!85750 (map!1881 lt!85751))))

(declare-fun b!173247 () Bool)

(declare-fun res!82278 () Bool)

(assert (=> b!173247 (=> (not res!82278) (not e!114457))))

(assert (=> b!173247 (= res!82278 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173248 () Bool)

(declare-fun e!114463 () Bool)

(declare-fun e!114459 () Bool)

(declare-fun mapRes!6951 () Bool)

(assert (=> b!173248 (= e!114463 (and e!114459 mapRes!6951))))

(declare-fun condMapEmpty!6951 () Bool)

(declare-fun mapDefault!6951 () ValueCell!1698)

(assert (=> b!173248 (= condMapEmpty!6951 (= (arr!3467 (_values!3581 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1698)) mapDefault!6951)))))

(declare-fun b!173249 () Bool)

(declare-fun tp_is_empty!4083 () Bool)

(assert (=> b!173249 (= e!114459 tp_is_empty!4083)))

(declare-fun mapIsEmpty!6951 () Bool)

(assert (=> mapIsEmpty!6951 mapRes!6951))

(declare-fun e!114461 () Bool)

(declare-fun array_inv!2209 (array!7296) Bool)

(declare-fun array_inv!2210 (array!7298) Bool)

(assert (=> b!173250 (= e!114461 (and tp!15597 tp_is_empty!4083 (array_inv!2209 (_keys!5439 thiss!1248)) (array_inv!2210 (_values!3581 thiss!1248)) e!114463))))

(declare-fun b!173251 () Bool)

(assert (=> b!173251 (= e!114460 (= lt!85750 (+!241 (map!1881 thiss!1248) (tuple2!3237 key!828 v!309))))))

(declare-fun res!82279 () Bool)

(assert (=> start!17298 (=> (not res!82279) (not e!114457))))

(assert (=> start!17298 (= res!82279 (valid!965 thiss!1248))))

(assert (=> start!17298 e!114457))

(assert (=> start!17298 e!114461))

(assert (=> start!17298 true))

(assert (=> start!17298 tp_is_empty!4083))

(declare-fun mapNonEmpty!6951 () Bool)

(declare-fun tp!15596 () Bool)

(declare-fun e!114456 () Bool)

(assert (=> mapNonEmpty!6951 (= mapRes!6951 (and tp!15596 e!114456))))

(declare-fun mapValue!6951 () ValueCell!1698)

(declare-fun mapRest!6951 () (Array (_ BitVec 32) ValueCell!1698))

(declare-fun mapKey!6951 () (_ BitVec 32))

(assert (=> mapNonEmpty!6951 (= (arr!3467 (_values!3581 thiss!1248)) (store mapRest!6951 mapKey!6951 mapValue!6951))))

(declare-fun b!173252 () Bool)

(assert (=> b!173252 (= e!114456 tp_is_empty!4083)))

(assert (= (and start!17298 res!82279) b!173247))

(assert (= (and b!173247 res!82278) b!173245))

(assert (= (and b!173245 res!82280) b!173246))

(assert (= (and b!173246 res!82281) b!173251))

(assert (= (and b!173248 condMapEmpty!6951) mapIsEmpty!6951))

(assert (= (and b!173248 (not condMapEmpty!6951)) mapNonEmpty!6951))

(get-info :version)

(assert (= (and mapNonEmpty!6951 ((_ is ValueCellFull!1698) mapValue!6951)) b!173252))

(assert (= (and b!173248 ((_ is ValueCellFull!1698) mapDefault!6951)) b!173249))

(assert (= b!173250 b!173248))

(assert (= start!17298 b!173250))

(declare-fun m!201637 () Bool)

(assert (=> start!17298 m!201637))

(declare-fun m!201639 () Bool)

(assert (=> mapNonEmpty!6951 m!201639))

(declare-fun m!201641 () Bool)

(assert (=> b!173250 m!201641))

(declare-fun m!201643 () Bool)

(assert (=> b!173250 m!201643))

(declare-fun m!201645 () Bool)

(assert (=> b!173251 m!201645))

(assert (=> b!173251 m!201645))

(declare-fun m!201647 () Bool)

(assert (=> b!173251 m!201647))

(declare-fun m!201649 () Bool)

(assert (=> b!173245 m!201649))

(declare-fun m!201651 () Bool)

(assert (=> b!173245 m!201651))

(declare-fun m!201653 () Bool)

(assert (=> b!173245 m!201653))

(declare-fun m!201655 () Bool)

(assert (=> b!173245 m!201655))

(declare-fun m!201657 () Bool)

(assert (=> b!173245 m!201657))

(assert (=> b!173245 m!201649))

(declare-fun m!201659 () Bool)

(assert (=> b!173246 m!201659))

(declare-fun m!201661 () Bool)

(assert (=> b!173246 m!201661))

(check-sat (not mapNonEmpty!6951) (not start!17298) (not b!173251) (not b!173246) (not b_next!4311) tp_is_empty!4083 b_and!10769 (not b!173245) (not b!173250))
(check-sat b_and!10769 (not b_next!4311))
(get-model)

(declare-fun d!52505 () Bool)

(declare-fun res!82300 () Bool)

(declare-fun e!114490 () Bool)

(assert (=> d!52505 (=> (not res!82300) (not e!114490))))

(declare-fun simpleValid!143 (LongMapFixedSize!2304) Bool)

(assert (=> d!52505 (= res!82300 (simpleValid!143 thiss!1248))))

(assert (=> d!52505 (= (valid!965 thiss!1248) e!114490)))

(declare-fun b!173283 () Bool)

(declare-fun res!82301 () Bool)

(assert (=> b!173283 (=> (not res!82301) (not e!114490))))

(declare-fun arrayCountValidKeys!0 (array!7296 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!173283 (= res!82301 (= (arrayCountValidKeys!0 (_keys!5439 thiss!1248) #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))) (_size!1201 thiss!1248)))))

(declare-fun b!173284 () Bool)

(declare-fun res!82302 () Bool)

(assert (=> b!173284 (=> (not res!82302) (not e!114490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7296 (_ BitVec 32)) Bool)

(assert (=> b!173284 (= res!82302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5439 thiss!1248) (mask!8470 thiss!1248)))))

(declare-fun b!173285 () Bool)

(declare-datatypes ((List!2228 0))(
  ( (Nil!2225) (Cons!2224 (h!2841 (_ BitVec 64)) (t!7045 List!2228)) )
))
(declare-fun arrayNoDuplicates!0 (array!7296 (_ BitVec 32) List!2228) Bool)

(assert (=> b!173285 (= e!114490 (arrayNoDuplicates!0 (_keys!5439 thiss!1248) #b00000000000000000000000000000000 Nil!2225))))

(assert (= (and d!52505 res!82300) b!173283))

(assert (= (and b!173283 res!82301) b!173284))

(assert (= (and b!173284 res!82302) b!173285))

(declare-fun m!201689 () Bool)

(assert (=> d!52505 m!201689))

(declare-fun m!201691 () Bool)

(assert (=> b!173283 m!201691))

(declare-fun m!201693 () Bool)

(assert (=> b!173284 m!201693))

(declare-fun m!201695 () Bool)

(assert (=> b!173285 m!201695))

(assert (=> start!17298 d!52505))

(declare-fun d!52507 () Bool)

(declare-fun res!82303 () Bool)

(declare-fun e!114491 () Bool)

(assert (=> d!52507 (=> (not res!82303) (not e!114491))))

(assert (=> d!52507 (= res!82303 (simpleValid!143 lt!85751))))

(assert (=> d!52507 (= (valid!965 lt!85751) e!114491)))

(declare-fun b!173286 () Bool)

(declare-fun res!82304 () Bool)

(assert (=> b!173286 (=> (not res!82304) (not e!114491))))

(assert (=> b!173286 (= res!82304 (= (arrayCountValidKeys!0 (_keys!5439 lt!85751) #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))) (_size!1201 lt!85751)))))

(declare-fun b!173287 () Bool)

(declare-fun res!82305 () Bool)

(assert (=> b!173287 (=> (not res!82305) (not e!114491))))

(assert (=> b!173287 (= res!82305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5439 lt!85751) (mask!8470 lt!85751)))))

(declare-fun b!173288 () Bool)

(assert (=> b!173288 (= e!114491 (arrayNoDuplicates!0 (_keys!5439 lt!85751) #b00000000000000000000000000000000 Nil!2225))))

(assert (= (and d!52507 res!82303) b!173286))

(assert (= (and b!173286 res!82304) b!173287))

(assert (= (and b!173287 res!82305) b!173288))

(declare-fun m!201697 () Bool)

(assert (=> d!52507 m!201697))

(declare-fun m!201699 () Bool)

(assert (=> b!173286 m!201699))

(declare-fun m!201701 () Bool)

(assert (=> b!173287 m!201701))

(declare-fun m!201703 () Bool)

(assert (=> b!173288 m!201703))

(assert (=> b!173245 d!52507))

(declare-fun d!52509 () Bool)

(assert (=> d!52509 (= (+!241 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85763 () Unit!5311)

(declare-fun choose!936 (array!7296 array!7298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!5091 V!5091 V!5091 Int) Unit!5311)

(assert (=> d!52509 (= lt!85763 (choose!936 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) v!309 (defaultEntry!3598 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!52509 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52509 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!84 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) v!309 (defaultEntry!3598 thiss!1248)) lt!85763)))

(declare-fun bs!7149 () Bool)

(assert (= bs!7149 d!52509))

(declare-fun m!201705 () Bool)

(assert (=> bs!7149 m!201705))

(declare-fun m!201707 () Bool)

(assert (=> bs!7149 m!201707))

(assert (=> bs!7149 m!201649))

(assert (=> bs!7149 m!201651))

(assert (=> bs!7149 m!201657))

(assert (=> bs!7149 m!201649))

(assert (=> b!173245 d!52509))

(declare-fun bm!17567 () Bool)

(declare-fun call!17572 () ListLongMap!2177)

(declare-fun call!17573 () ListLongMap!2177)

(assert (=> bm!17567 (= call!17572 call!17573)))

(declare-fun b!173331 () Bool)

(declare-fun e!114520 () Bool)

(declare-fun lt!85813 () ListLongMap!2177)

(declare-fun apply!130 (ListLongMap!2177 (_ BitVec 64)) V!5091)

(assert (=> b!173331 (= e!114520 (= (apply!130 lt!85813 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3441 thiss!1248)))))

(declare-fun b!173332 () Bool)

(declare-fun res!82329 () Bool)

(declare-fun e!114529 () Bool)

(assert (=> b!173332 (=> (not res!82329) (not e!114529))))

(declare-fun e!114519 () Bool)

(assert (=> b!173332 (= res!82329 e!114519)))

(declare-fun c!30892 () Bool)

(assert (=> b!173332 (= c!30892 (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!173333 () Bool)

(declare-fun c!30894 () Bool)

(assert (=> b!173333 (= c!30894 (and (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!114524 () ListLongMap!2177)

(declare-fun e!114525 () ListLongMap!2177)

(assert (=> b!173333 (= e!114524 e!114525)))

(declare-fun b!173334 () Bool)

(declare-fun e!114523 () Bool)

(assert (=> b!173334 (= e!114523 (= (apply!130 lt!85813 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3439 thiss!1248)))))

(declare-fun b!173335 () Bool)

(declare-fun e!114526 () ListLongMap!2177)

(assert (=> b!173335 (= e!114526 e!114524)))

(declare-fun c!30893 () Bool)

(assert (=> b!173335 (= c!30893 (and (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!17576 () ListLongMap!2177)

(declare-fun c!30890 () Bool)

(declare-fun call!17574 () ListLongMap!2177)

(declare-fun bm!17568 () Bool)

(assert (=> bm!17568 (= call!17574 (+!241 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun bm!17569 () Bool)

(declare-fun call!17575 () Bool)

(assert (=> bm!17569 (= call!17575 (contains!1153 lt!85813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173336 () Bool)

(declare-fun e!114530 () Bool)

(assert (=> b!173336 (= e!114530 e!114520)))

(declare-fun res!82332 () Bool)

(declare-fun call!17570 () Bool)

(assert (=> b!173336 (= res!82332 call!17570)))

(assert (=> b!173336 (=> (not res!82332) (not e!114520))))

(declare-fun b!173337 () Bool)

(declare-fun res!82326 () Bool)

(assert (=> b!173337 (=> (not res!82326) (not e!114529))))

(declare-fun e!114528 () Bool)

(assert (=> b!173337 (= res!82326 e!114528)))

(declare-fun res!82325 () Bool)

(assert (=> b!173337 (=> res!82325 e!114528)))

(declare-fun e!114518 () Bool)

(assert (=> b!173337 (= res!82325 (not e!114518))))

(declare-fun res!82330 () Bool)

(assert (=> b!173337 (=> (not res!82330) (not e!114518))))

(assert (=> b!173337 (= res!82330 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173338 () Bool)

(assert (=> b!173338 (= e!114519 (not call!17575))))

(declare-fun b!173339 () Bool)

(declare-fun e!114522 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!173339 (= e!114522 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173340 () Bool)

(assert (=> b!173340 (= e!114519 e!114523)))

(declare-fun res!82327 () Bool)

(assert (=> b!173340 (= res!82327 call!17575)))

(assert (=> b!173340 (=> (not res!82327) (not e!114523))))

(declare-fun bm!17570 () Bool)

(assert (=> bm!17570 (= call!17576 call!17572)))

(declare-fun d!52511 () Bool)

(assert (=> d!52511 e!114529))

(declare-fun res!82328 () Bool)

(assert (=> d!52511 (=> (not res!82328) (not e!114529))))

(assert (=> d!52511 (= res!82328 (or (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))))

(declare-fun lt!85827 () ListLongMap!2177)

(assert (=> d!52511 (= lt!85813 lt!85827)))

(declare-fun lt!85819 () Unit!5311)

(declare-fun e!114527 () Unit!5311)

(assert (=> d!52511 (= lt!85819 e!114527)))

(declare-fun c!30891 () Bool)

(assert (=> d!52511 (= c!30891 e!114522)))

(declare-fun res!82331 () Bool)

(assert (=> d!52511 (=> (not res!82331) (not e!114522))))

(assert (=> d!52511 (= res!82331 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52511 (= lt!85827 e!114526)))

(assert (=> d!52511 (= c!30890 (and (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!52511 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52511 (= (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) lt!85813)))

(declare-fun bm!17571 () Bool)

(declare-fun call!17571 () ListLongMap!2177)

(assert (=> bm!17571 (= call!17571 call!17574)))

(declare-fun b!173341 () Bool)

(assert (=> b!173341 (= e!114524 call!17571)))

(declare-fun b!173342 () Bool)

(assert (=> b!173342 (= e!114525 call!17571)))

(declare-fun b!173343 () Bool)

(declare-fun e!114521 () Bool)

(assert (=> b!173343 (= e!114528 e!114521)))

(declare-fun res!82324 () Bool)

(assert (=> b!173343 (=> (not res!82324) (not e!114521))))

(assert (=> b!173343 (= res!82324 (contains!1153 lt!85813 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173343 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173344 () Bool)

(assert (=> b!173344 (= e!114530 (not call!17570))))

(declare-fun b!173345 () Bool)

(assert (=> b!173345 (= e!114529 e!114530)))

(declare-fun c!30895 () Bool)

(assert (=> b!173345 (= c!30895 (not (= (bvand (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!173346 () Bool)

(declare-fun lt!85829 () Unit!5311)

(assert (=> b!173346 (= e!114527 lt!85829)))

(declare-fun lt!85811 () ListLongMap!2177)

(declare-fun getCurrentListMapNoExtraKeys!160 (array!7296 array!7298 (_ BitVec 32) (_ BitVec 32) V!5091 V!5091 (_ BitVec 32) Int) ListLongMap!2177)

(assert (=> b!173346 (= lt!85811 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85809 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85809 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85810 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85810 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85812 () Unit!5311)

(declare-fun addStillContains!106 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> b!173346 (= lt!85812 (addStillContains!106 lt!85811 lt!85809 (zeroValue!3439 thiss!1248) lt!85810))))

(assert (=> b!173346 (contains!1153 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!85810)))

(declare-fun lt!85820 () Unit!5311)

(assert (=> b!173346 (= lt!85820 lt!85812)))

(declare-fun lt!85822 () ListLongMap!2177)

(assert (=> b!173346 (= lt!85822 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85826 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85826 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85816 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85816 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85825 () Unit!5311)

(declare-fun addApplyDifferent!106 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> b!173346 (= lt!85825 (addApplyDifferent!106 lt!85822 lt!85826 (minValue!3441 thiss!1248) lt!85816))))

(assert (=> b!173346 (= (apply!130 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!85816) (apply!130 lt!85822 lt!85816))))

(declare-fun lt!85815 () Unit!5311)

(assert (=> b!173346 (= lt!85815 lt!85825)))

(declare-fun lt!85828 () ListLongMap!2177)

(assert (=> b!173346 (= lt!85828 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85821 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85821 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85817 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85817 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85808 () Unit!5311)

(assert (=> b!173346 (= lt!85808 (addApplyDifferent!106 lt!85828 lt!85821 (zeroValue!3439 thiss!1248) lt!85817))))

(assert (=> b!173346 (= (apply!130 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!85817) (apply!130 lt!85828 lt!85817))))

(declare-fun lt!85823 () Unit!5311)

(assert (=> b!173346 (= lt!85823 lt!85808)))

(declare-fun lt!85814 () ListLongMap!2177)

(assert (=> b!173346 (= lt!85814 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85824 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85824 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85818 () (_ BitVec 64))

(assert (=> b!173346 (= lt!85818 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173346 (= lt!85829 (addApplyDifferent!106 lt!85814 lt!85824 (minValue!3441 thiss!1248) lt!85818))))

(assert (=> b!173346 (= (apply!130 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!85818) (apply!130 lt!85814 lt!85818))))

(declare-fun b!173347 () Bool)

(assert (=> b!173347 (= e!114518 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17572 () Bool)

(assert (=> bm!17572 (= call!17570 (contains!1153 lt!85813 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17573 () Bool)

(assert (=> bm!17573 (= call!17573 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173348 () Bool)

(assert (=> b!173348 (= e!114526 (+!241 call!17574 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))

(declare-fun b!173349 () Bool)

(assert (=> b!173349 (= e!114525 call!17576)))

(declare-fun b!173350 () Bool)

(declare-fun Unit!5315 () Unit!5311)

(assert (=> b!173350 (= e!114527 Unit!5315)))

(declare-fun b!173351 () Bool)

(declare-fun get!1969 (ValueCell!1698 V!5091) V!5091)

(declare-fun dynLambda!468 (Int (_ BitVec 64)) V!5091)

(assert (=> b!173351 (= e!114521 (= (apply!130 lt!85813 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!173351 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!173351 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (= (and d!52511 c!30890) b!173348))

(assert (= (and d!52511 (not c!30890)) b!173335))

(assert (= (and b!173335 c!30893) b!173341))

(assert (= (and b!173335 (not c!30893)) b!173333))

(assert (= (and b!173333 c!30894) b!173342))

(assert (= (and b!173333 (not c!30894)) b!173349))

(assert (= (or b!173342 b!173349) bm!17570))

(assert (= (or b!173341 bm!17570) bm!17567))

(assert (= (or b!173341 b!173342) bm!17571))

(assert (= (or b!173348 bm!17567) bm!17573))

(assert (= (or b!173348 bm!17571) bm!17568))

(assert (= (and d!52511 res!82331) b!173339))

(assert (= (and d!52511 c!30891) b!173346))

(assert (= (and d!52511 (not c!30891)) b!173350))

(assert (= (and d!52511 res!82328) b!173337))

(assert (= (and b!173337 res!82330) b!173347))

(assert (= (and b!173337 (not res!82325)) b!173343))

(assert (= (and b!173343 res!82324) b!173351))

(assert (= (and b!173337 res!82326) b!173332))

(assert (= (and b!173332 c!30892) b!173340))

(assert (= (and b!173332 (not c!30892)) b!173338))

(assert (= (and b!173340 res!82327) b!173334))

(assert (= (or b!173340 b!173338) bm!17569))

(assert (= (and b!173332 res!82329) b!173345))

(assert (= (and b!173345 c!30895) b!173336))

(assert (= (and b!173345 (not c!30895)) b!173344))

(assert (= (and b!173336 res!82332) b!173331))

(assert (= (or b!173336 b!173344) bm!17572))

(declare-fun b_lambda!6965 () Bool)

(assert (=> (not b_lambda!6965) (not b!173351)))

(declare-fun t!7044 () Bool)

(declare-fun tb!2777 () Bool)

(assert (=> (and b!173250 (= (defaultEntry!3598 thiss!1248) (defaultEntry!3598 thiss!1248)) t!7044) tb!2777))

(declare-fun result!4593 () Bool)

(assert (=> tb!2777 (= result!4593 tp_is_empty!4083)))

(assert (=> b!173351 t!7044))

(declare-fun b_and!10773 () Bool)

(assert (= b_and!10769 (and (=> t!7044 result!4593) b_and!10773)))

(declare-fun m!201709 () Bool)

(assert (=> bm!17573 m!201709))

(declare-fun m!201711 () Bool)

(assert (=> bm!17572 m!201711))

(declare-fun m!201713 () Bool)

(assert (=> bm!17568 m!201713))

(declare-fun m!201715 () Bool)

(assert (=> b!173347 m!201715))

(assert (=> b!173347 m!201715))

(declare-fun m!201717 () Bool)

(assert (=> b!173347 m!201717))

(assert (=> b!173343 m!201715))

(assert (=> b!173343 m!201715))

(declare-fun m!201719 () Bool)

(assert (=> b!173343 m!201719))

(declare-fun m!201721 () Bool)

(assert (=> bm!17569 m!201721))

(assert (=> b!173339 m!201715))

(assert (=> b!173339 m!201715))

(assert (=> b!173339 m!201717))

(declare-fun m!201723 () Bool)

(assert (=> b!173351 m!201723))

(declare-fun m!201725 () Bool)

(assert (=> b!173351 m!201725))

(declare-fun m!201727 () Bool)

(assert (=> b!173351 m!201727))

(assert (=> b!173351 m!201723))

(assert (=> b!173351 m!201715))

(assert (=> b!173351 m!201715))

(declare-fun m!201729 () Bool)

(assert (=> b!173351 m!201729))

(assert (=> b!173351 m!201725))

(declare-fun m!201731 () Bool)

(assert (=> b!173331 m!201731))

(declare-fun m!201733 () Bool)

(assert (=> b!173346 m!201733))

(declare-fun m!201735 () Bool)

(assert (=> b!173346 m!201735))

(declare-fun m!201737 () Bool)

(assert (=> b!173346 m!201737))

(declare-fun m!201739 () Bool)

(assert (=> b!173346 m!201739))

(declare-fun m!201741 () Bool)

(assert (=> b!173346 m!201741))

(declare-fun m!201743 () Bool)

(assert (=> b!173346 m!201743))

(declare-fun m!201745 () Bool)

(assert (=> b!173346 m!201745))

(assert (=> b!173346 m!201709))

(declare-fun m!201747 () Bool)

(assert (=> b!173346 m!201747))

(assert (=> b!173346 m!201737))

(assert (=> b!173346 m!201745))

(declare-fun m!201749 () Bool)

(assert (=> b!173346 m!201749))

(declare-fun m!201751 () Bool)

(assert (=> b!173346 m!201751))

(declare-fun m!201753 () Bool)

(assert (=> b!173346 m!201753))

(assert (=> b!173346 m!201741))

(declare-fun m!201755 () Bool)

(assert (=> b!173346 m!201755))

(declare-fun m!201757 () Bool)

(assert (=> b!173346 m!201757))

(assert (=> b!173346 m!201715))

(declare-fun m!201759 () Bool)

(assert (=> b!173346 m!201759))

(assert (=> b!173346 m!201751))

(declare-fun m!201761 () Bool)

(assert (=> b!173346 m!201761))

(declare-fun m!201763 () Bool)

(assert (=> b!173334 m!201763))

(assert (=> d!52511 m!201707))

(declare-fun m!201765 () Bool)

(assert (=> b!173348 m!201765))

(assert (=> b!173245 d!52511))

(declare-fun d!52513 () Bool)

(declare-fun e!114533 () Bool)

(assert (=> d!52513 e!114533))

(declare-fun res!82337 () Bool)

(assert (=> d!52513 (=> (not res!82337) (not e!114533))))

(declare-fun lt!85839 () ListLongMap!2177)

(assert (=> d!52513 (= res!82337 (contains!1153 lt!85839 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85840 () List!2226)

(assert (=> d!52513 (= lt!85839 (ListLongMap!2178 lt!85840))))

(declare-fun lt!85841 () Unit!5311)

(declare-fun lt!85838 () Unit!5311)

(assert (=> d!52513 (= lt!85841 lt!85838)))

(declare-datatypes ((Option!190 0))(
  ( (Some!189 (v!3952 V!5091)) (None!188) )
))
(declare-fun getValueByKey!184 (List!2226 (_ BitVec 64)) Option!190)

(assert (=> d!52513 (= (getValueByKey!184 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!99 (List!2226 (_ BitVec 64) V!5091) Unit!5311)

(assert (=> d!52513 (= lt!85838 (lemmaContainsTupThenGetReturnValue!99 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun insertStrictlySorted!101 (List!2226 (_ BitVec 64) V!5091) List!2226)

(assert (=> d!52513 (= lt!85840 (insertStrictlySorted!101 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52513 (= (+!241 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!85839)))

(declare-fun b!173358 () Bool)

(declare-fun res!82338 () Bool)

(assert (=> b!173358 (=> (not res!82338) (not e!114533))))

(assert (=> b!173358 (= res!82338 (= (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!173359 () Bool)

(declare-fun contains!1154 (List!2226 tuple2!3236) Bool)

(assert (=> b!173359 (= e!114533 (contains!1154 (toList!1104 lt!85839) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!52513 res!82337) b!173358))

(assert (= (and b!173358 res!82338) b!173359))

(declare-fun m!201767 () Bool)

(assert (=> d!52513 m!201767))

(declare-fun m!201769 () Bool)

(assert (=> d!52513 m!201769))

(declare-fun m!201771 () Bool)

(assert (=> d!52513 m!201771))

(declare-fun m!201773 () Bool)

(assert (=> d!52513 m!201773))

(declare-fun m!201775 () Bool)

(assert (=> b!173358 m!201775))

(declare-fun m!201777 () Bool)

(assert (=> b!173359 m!201777))

(assert (=> b!173245 d!52513))

(declare-fun bm!17574 () Bool)

(declare-fun call!17579 () ListLongMap!2177)

(declare-fun call!17580 () ListLongMap!2177)

(assert (=> bm!17574 (= call!17579 call!17580)))

(declare-fun b!173360 () Bool)

(declare-fun e!114536 () Bool)

(declare-fun lt!85847 () ListLongMap!2177)

(assert (=> b!173360 (= e!114536 (= (apply!130 lt!85847 #b1000000000000000000000000000000000000000000000000000000000000000) v!309))))

(declare-fun b!173361 () Bool)

(declare-fun res!82344 () Bool)

(declare-fun e!114545 () Bool)

(assert (=> b!173361 (=> (not res!82344) (not e!114545))))

(declare-fun e!114535 () Bool)

(assert (=> b!173361 (= res!82344 e!114535)))

(declare-fun c!30898 () Bool)

(assert (=> b!173361 (= c!30898 (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!173362 () Bool)

(declare-fun c!30900 () Bool)

(assert (=> b!173362 (= c!30900 (and (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!114540 () ListLongMap!2177)

(declare-fun e!114541 () ListLongMap!2177)

(assert (=> b!173362 (= e!114540 e!114541)))

(declare-fun b!173363 () Bool)

(declare-fun e!114539 () Bool)

(assert (=> b!173363 (= e!114539 (= (apply!130 lt!85847 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3439 thiss!1248)))))

(declare-fun b!173364 () Bool)

(declare-fun e!114542 () ListLongMap!2177)

(assert (=> b!173364 (= e!114542 e!114540)))

(declare-fun c!30899 () Bool)

(assert (=> b!173364 (= c!30899 (and (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!17583 () ListLongMap!2177)

(declare-fun bm!17575 () Bool)

(declare-fun call!17581 () ListLongMap!2177)

(declare-fun c!30896 () Bool)

(assert (=> bm!17575 (= call!17581 (+!241 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun bm!17576 () Bool)

(declare-fun call!17582 () Bool)

(assert (=> bm!17576 (= call!17582 (contains!1153 lt!85847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173365 () Bool)

(declare-fun e!114546 () Bool)

(assert (=> b!173365 (= e!114546 e!114536)))

(declare-fun res!82347 () Bool)

(declare-fun call!17577 () Bool)

(assert (=> b!173365 (= res!82347 call!17577)))

(assert (=> b!173365 (=> (not res!82347) (not e!114536))))

(declare-fun b!173366 () Bool)

(declare-fun res!82341 () Bool)

(assert (=> b!173366 (=> (not res!82341) (not e!114545))))

(declare-fun e!114544 () Bool)

(assert (=> b!173366 (= res!82341 e!114544)))

(declare-fun res!82340 () Bool)

(assert (=> b!173366 (=> res!82340 e!114544)))

(declare-fun e!114534 () Bool)

(assert (=> b!173366 (= res!82340 (not e!114534))))

(declare-fun res!82345 () Bool)

(assert (=> b!173366 (=> (not res!82345) (not e!114534))))

(assert (=> b!173366 (= res!82345 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173367 () Bool)

(assert (=> b!173367 (= e!114535 (not call!17582))))

(declare-fun b!173368 () Bool)

(declare-fun e!114538 () Bool)

(assert (=> b!173368 (= e!114538 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173369 () Bool)

(assert (=> b!173369 (= e!114535 e!114539)))

(declare-fun res!82342 () Bool)

(assert (=> b!173369 (= res!82342 call!17582)))

(assert (=> b!173369 (=> (not res!82342) (not e!114539))))

(declare-fun bm!17577 () Bool)

(assert (=> bm!17577 (= call!17583 call!17579)))

(declare-fun d!52515 () Bool)

(assert (=> d!52515 e!114545))

(declare-fun res!82343 () Bool)

(assert (=> d!52515 (=> (not res!82343) (not e!114545))))

(assert (=> d!52515 (= res!82343 (or (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))))

(declare-fun lt!85861 () ListLongMap!2177)

(assert (=> d!52515 (= lt!85847 lt!85861)))

(declare-fun lt!85853 () Unit!5311)

(declare-fun e!114543 () Unit!5311)

(assert (=> d!52515 (= lt!85853 e!114543)))

(declare-fun c!30897 () Bool)

(assert (=> d!52515 (= c!30897 e!114538)))

(declare-fun res!82346 () Bool)

(assert (=> d!52515 (=> (not res!82346) (not e!114538))))

(assert (=> d!52515 (= res!82346 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52515 (= lt!85861 e!114542)))

(assert (=> d!52515 (= c!30896 (and (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!52515 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52515 (= (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) lt!85847)))

(declare-fun bm!17578 () Bool)

(declare-fun call!17578 () ListLongMap!2177)

(assert (=> bm!17578 (= call!17578 call!17581)))

(declare-fun b!173370 () Bool)

(assert (=> b!173370 (= e!114540 call!17578)))

(declare-fun b!173371 () Bool)

(assert (=> b!173371 (= e!114541 call!17578)))

(declare-fun b!173372 () Bool)

(declare-fun e!114537 () Bool)

(assert (=> b!173372 (= e!114544 e!114537)))

(declare-fun res!82339 () Bool)

(assert (=> b!173372 (=> (not res!82339) (not e!114537))))

(assert (=> b!173372 (= res!82339 (contains!1153 lt!85847 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173372 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173373 () Bool)

(assert (=> b!173373 (= e!114546 (not call!17577))))

(declare-fun b!173374 () Bool)

(assert (=> b!173374 (= e!114545 e!114546)))

(declare-fun c!30901 () Bool)

(assert (=> b!173374 (= c!30901 (not (= (bvand (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!173375 () Bool)

(declare-fun lt!85863 () Unit!5311)

(assert (=> b!173375 (= e!114543 lt!85863)))

(declare-fun lt!85845 () ListLongMap!2177)

(assert (=> b!173375 (= lt!85845 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85843 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85843 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85844 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85844 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85846 () Unit!5311)

(assert (=> b!173375 (= lt!85846 (addStillContains!106 lt!85845 lt!85843 (zeroValue!3439 thiss!1248) lt!85844))))

(assert (=> b!173375 (contains!1153 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!85844)))

(declare-fun lt!85854 () Unit!5311)

(assert (=> b!173375 (= lt!85854 lt!85846)))

(declare-fun lt!85856 () ListLongMap!2177)

(assert (=> b!173375 (= lt!85856 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85860 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85860 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85850 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85850 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85859 () Unit!5311)

(assert (=> b!173375 (= lt!85859 (addApplyDifferent!106 lt!85856 lt!85860 v!309 lt!85850))))

(assert (=> b!173375 (= (apply!130 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)) lt!85850) (apply!130 lt!85856 lt!85850))))

(declare-fun lt!85849 () Unit!5311)

(assert (=> b!173375 (= lt!85849 lt!85859)))

(declare-fun lt!85862 () ListLongMap!2177)

(assert (=> b!173375 (= lt!85862 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85855 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85855 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85851 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85851 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85842 () Unit!5311)

(assert (=> b!173375 (= lt!85842 (addApplyDifferent!106 lt!85862 lt!85855 (zeroValue!3439 thiss!1248) lt!85851))))

(assert (=> b!173375 (= (apply!130 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!85851) (apply!130 lt!85862 lt!85851))))

(declare-fun lt!85857 () Unit!5311)

(assert (=> b!173375 (= lt!85857 lt!85842)))

(declare-fun lt!85848 () ListLongMap!2177)

(assert (=> b!173375 (= lt!85848 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun lt!85858 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85858 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!85852 () (_ BitVec 64))

(assert (=> b!173375 (= lt!85852 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173375 (= lt!85863 (addApplyDifferent!106 lt!85848 lt!85858 v!309 lt!85852))))

(assert (=> b!173375 (= (apply!130 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)) lt!85852) (apply!130 lt!85848 lt!85852))))

(declare-fun b!173376 () Bool)

(assert (=> b!173376 (= e!114534 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17579 () Bool)

(assert (=> bm!17579 (= call!17577 (contains!1153 lt!85847 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17580 () Bool)

(assert (=> bm!17580 (= call!17580 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173377 () Bool)

(assert (=> b!173377 (= e!114542 (+!241 call!17581 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!173378 () Bool)

(assert (=> b!173378 (= e!114541 call!17583)))

(declare-fun b!173379 () Bool)

(declare-fun Unit!5316 () Unit!5311)

(assert (=> b!173379 (= e!114543 Unit!5316)))

(declare-fun b!173380 () Bool)

(assert (=> b!173380 (= e!114537 (= (apply!130 lt!85847 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!173380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!173380 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (= (and d!52515 c!30896) b!173377))

(assert (= (and d!52515 (not c!30896)) b!173364))

(assert (= (and b!173364 c!30899) b!173370))

(assert (= (and b!173364 (not c!30899)) b!173362))

(assert (= (and b!173362 c!30900) b!173371))

(assert (= (and b!173362 (not c!30900)) b!173378))

(assert (= (or b!173371 b!173378) bm!17577))

(assert (= (or b!173370 bm!17577) bm!17574))

(assert (= (or b!173370 b!173371) bm!17578))

(assert (= (or b!173377 bm!17574) bm!17580))

(assert (= (or b!173377 bm!17578) bm!17575))

(assert (= (and d!52515 res!82346) b!173368))

(assert (= (and d!52515 c!30897) b!173375))

(assert (= (and d!52515 (not c!30897)) b!173379))

(assert (= (and d!52515 res!82343) b!173366))

(assert (= (and b!173366 res!82345) b!173376))

(assert (= (and b!173366 (not res!82340)) b!173372))

(assert (= (and b!173372 res!82339) b!173380))

(assert (= (and b!173366 res!82341) b!173361))

(assert (= (and b!173361 c!30898) b!173369))

(assert (= (and b!173361 (not c!30898)) b!173367))

(assert (= (and b!173369 res!82342) b!173363))

(assert (= (or b!173369 b!173367) bm!17576))

(assert (= (and b!173361 res!82344) b!173374))

(assert (= (and b!173374 c!30901) b!173365))

(assert (= (and b!173374 (not c!30901)) b!173373))

(assert (= (and b!173365 res!82347) b!173360))

(assert (= (or b!173365 b!173373) bm!17579))

(declare-fun b_lambda!6967 () Bool)

(assert (=> (not b_lambda!6967) (not b!173380)))

(assert (=> b!173380 t!7044))

(declare-fun b_and!10775 () Bool)

(assert (= b_and!10773 (and (=> t!7044 result!4593) b_and!10775)))

(declare-fun m!201779 () Bool)

(assert (=> bm!17580 m!201779))

(declare-fun m!201781 () Bool)

(assert (=> bm!17579 m!201781))

(declare-fun m!201783 () Bool)

(assert (=> bm!17575 m!201783))

(assert (=> b!173376 m!201715))

(assert (=> b!173376 m!201715))

(assert (=> b!173376 m!201717))

(assert (=> b!173372 m!201715))

(assert (=> b!173372 m!201715))

(declare-fun m!201785 () Bool)

(assert (=> b!173372 m!201785))

(declare-fun m!201787 () Bool)

(assert (=> bm!17576 m!201787))

(assert (=> b!173368 m!201715))

(assert (=> b!173368 m!201715))

(assert (=> b!173368 m!201717))

(assert (=> b!173380 m!201723))

(assert (=> b!173380 m!201725))

(assert (=> b!173380 m!201727))

(assert (=> b!173380 m!201723))

(assert (=> b!173380 m!201715))

(assert (=> b!173380 m!201715))

(declare-fun m!201789 () Bool)

(assert (=> b!173380 m!201789))

(assert (=> b!173380 m!201725))

(declare-fun m!201791 () Bool)

(assert (=> b!173360 m!201791))

(declare-fun m!201793 () Bool)

(assert (=> b!173375 m!201793))

(declare-fun m!201795 () Bool)

(assert (=> b!173375 m!201795))

(declare-fun m!201797 () Bool)

(assert (=> b!173375 m!201797))

(declare-fun m!201799 () Bool)

(assert (=> b!173375 m!201799))

(declare-fun m!201801 () Bool)

(assert (=> b!173375 m!201801))

(declare-fun m!201803 () Bool)

(assert (=> b!173375 m!201803))

(declare-fun m!201805 () Bool)

(assert (=> b!173375 m!201805))

(assert (=> b!173375 m!201779))

(declare-fun m!201807 () Bool)

(assert (=> b!173375 m!201807))

(assert (=> b!173375 m!201797))

(assert (=> b!173375 m!201805))

(declare-fun m!201809 () Bool)

(assert (=> b!173375 m!201809))

(declare-fun m!201811 () Bool)

(assert (=> b!173375 m!201811))

(declare-fun m!201813 () Bool)

(assert (=> b!173375 m!201813))

(assert (=> b!173375 m!201801))

(declare-fun m!201815 () Bool)

(assert (=> b!173375 m!201815))

(declare-fun m!201817 () Bool)

(assert (=> b!173375 m!201817))

(assert (=> b!173375 m!201715))

(declare-fun m!201819 () Bool)

(assert (=> b!173375 m!201819))

(assert (=> b!173375 m!201811))

(declare-fun m!201821 () Bool)

(assert (=> b!173375 m!201821))

(declare-fun m!201823 () Bool)

(assert (=> b!173363 m!201823))

(assert (=> d!52515 m!201707))

(declare-fun m!201825 () Bool)

(assert (=> b!173377 m!201825))

(assert (=> b!173245 d!52515))

(declare-fun d!52517 () Bool)

(assert (=> d!52517 (= (array_inv!2209 (_keys!5439 thiss!1248)) (bvsge (size!3765 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173250 d!52517))

(declare-fun d!52519 () Bool)

(assert (=> d!52519 (= (array_inv!2210 (_values!3581 thiss!1248)) (bvsge (size!3766 (_values!3581 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173250 d!52519))

(declare-fun d!52521 () Bool)

(declare-fun e!114551 () Bool)

(assert (=> d!52521 e!114551))

(declare-fun res!82350 () Bool)

(assert (=> d!52521 (=> res!82350 e!114551)))

(declare-fun lt!85872 () Bool)

(assert (=> d!52521 (= res!82350 (not lt!85872))))

(declare-fun lt!85874 () Bool)

(assert (=> d!52521 (= lt!85872 lt!85874)))

(declare-fun lt!85875 () Unit!5311)

(declare-fun e!114552 () Unit!5311)

(assert (=> d!52521 (= lt!85875 e!114552)))

(declare-fun c!30904 () Bool)

(assert (=> d!52521 (= c!30904 lt!85874)))

(declare-fun containsKey!188 (List!2226 (_ BitVec 64)) Bool)

(assert (=> d!52521 (= lt!85874 (containsKey!188 (toList!1104 lt!85750) key!828))))

(assert (=> d!52521 (= (contains!1153 lt!85750 key!828) lt!85872)))

(declare-fun b!173387 () Bool)

(declare-fun lt!85873 () Unit!5311)

(assert (=> b!173387 (= e!114552 lt!85873)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!137 (List!2226 (_ BitVec 64)) Unit!5311)

(assert (=> b!173387 (= lt!85873 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85750) key!828))))

(declare-fun isDefined!138 (Option!190) Bool)

(assert (=> b!173387 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85750) key!828))))

(declare-fun b!173388 () Bool)

(declare-fun Unit!5317 () Unit!5311)

(assert (=> b!173388 (= e!114552 Unit!5317)))

(declare-fun b!173389 () Bool)

(assert (=> b!173389 (= e!114551 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85750) key!828)))))

(assert (= (and d!52521 c!30904) b!173387))

(assert (= (and d!52521 (not c!30904)) b!173388))

(assert (= (and d!52521 (not res!82350)) b!173389))

(declare-fun m!201827 () Bool)

(assert (=> d!52521 m!201827))

(declare-fun m!201829 () Bool)

(assert (=> b!173387 m!201829))

(declare-fun m!201831 () Bool)

(assert (=> b!173387 m!201831))

(assert (=> b!173387 m!201831))

(declare-fun m!201833 () Bool)

(assert (=> b!173387 m!201833))

(assert (=> b!173389 m!201831))

(assert (=> b!173389 m!201831))

(assert (=> b!173389 m!201833))

(assert (=> b!173246 d!52521))

(declare-fun d!52523 () Bool)

(assert (=> d!52523 (= (map!1881 lt!85751) (getCurrentListMap!751 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun bs!7150 () Bool)

(assert (= bs!7150 d!52523))

(declare-fun m!201835 () Bool)

(assert (=> bs!7150 m!201835))

(assert (=> b!173246 d!52523))

(declare-fun d!52525 () Bool)

(declare-fun e!114553 () Bool)

(assert (=> d!52525 e!114553))

(declare-fun res!82351 () Bool)

(assert (=> d!52525 (=> (not res!82351) (not e!114553))))

(declare-fun lt!85877 () ListLongMap!2177)

(assert (=> d!52525 (= res!82351 (contains!1153 lt!85877 (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun lt!85878 () List!2226)

(assert (=> d!52525 (= lt!85877 (ListLongMap!2178 lt!85878))))

(declare-fun lt!85879 () Unit!5311)

(declare-fun lt!85876 () Unit!5311)

(assert (=> d!52525 (= lt!85879 lt!85876)))

(assert (=> d!52525 (= (getValueByKey!184 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))) (Some!189 (_2!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> d!52525 (= lt!85876 (lemmaContainsTupThenGetReturnValue!99 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> d!52525 (= lt!85878 (insertStrictlySorted!101 (toList!1104 (map!1881 thiss!1248)) (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> d!52525 (= (+!241 (map!1881 thiss!1248) (tuple2!3237 key!828 v!309)) lt!85877)))

(declare-fun b!173390 () Bool)

(declare-fun res!82352 () Bool)

(assert (=> b!173390 (=> (not res!82352) (not e!114553))))

(assert (=> b!173390 (= res!82352 (= (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))) (Some!189 (_2!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!173391 () Bool)

(assert (=> b!173391 (= e!114553 (contains!1154 (toList!1104 lt!85877) (tuple2!3237 key!828 v!309)))))

(assert (= (and d!52525 res!82351) b!173390))

(assert (= (and b!173390 res!82352) b!173391))

(declare-fun m!201837 () Bool)

(assert (=> d!52525 m!201837))

(declare-fun m!201839 () Bool)

(assert (=> d!52525 m!201839))

(declare-fun m!201841 () Bool)

(assert (=> d!52525 m!201841))

(declare-fun m!201843 () Bool)

(assert (=> d!52525 m!201843))

(declare-fun m!201845 () Bool)

(assert (=> b!173390 m!201845))

(declare-fun m!201847 () Bool)

(assert (=> b!173391 m!201847))

(assert (=> b!173251 d!52525))

(declare-fun d!52527 () Bool)

(assert (=> d!52527 (= (map!1881 thiss!1248) (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(declare-fun bs!7151 () Bool)

(assert (= bs!7151 d!52527))

(assert (=> bs!7151 m!201649))

(assert (=> b!173251 d!52527))

(declare-fun mapIsEmpty!6957 () Bool)

(declare-fun mapRes!6957 () Bool)

(assert (=> mapIsEmpty!6957 mapRes!6957))

(declare-fun mapNonEmpty!6957 () Bool)

(declare-fun tp!15606 () Bool)

(declare-fun e!114558 () Bool)

(assert (=> mapNonEmpty!6957 (= mapRes!6957 (and tp!15606 e!114558))))

(declare-fun mapRest!6957 () (Array (_ BitVec 32) ValueCell!1698))

(declare-fun mapValue!6957 () ValueCell!1698)

(declare-fun mapKey!6957 () (_ BitVec 32))

(assert (=> mapNonEmpty!6957 (= mapRest!6951 (store mapRest!6957 mapKey!6957 mapValue!6957))))

(declare-fun b!173399 () Bool)

(declare-fun e!114559 () Bool)

(assert (=> b!173399 (= e!114559 tp_is_empty!4083)))

(declare-fun b!173398 () Bool)

(assert (=> b!173398 (= e!114558 tp_is_empty!4083)))

(declare-fun condMapEmpty!6957 () Bool)

(declare-fun mapDefault!6957 () ValueCell!1698)

(assert (=> mapNonEmpty!6951 (= condMapEmpty!6957 (= mapRest!6951 ((as const (Array (_ BitVec 32) ValueCell!1698)) mapDefault!6957)))))

(assert (=> mapNonEmpty!6951 (= tp!15596 (and e!114559 mapRes!6957))))

(assert (= (and mapNonEmpty!6951 condMapEmpty!6957) mapIsEmpty!6957))

(assert (= (and mapNonEmpty!6951 (not condMapEmpty!6957)) mapNonEmpty!6957))

(assert (= (and mapNonEmpty!6957 ((_ is ValueCellFull!1698) mapValue!6957)) b!173398))

(assert (= (and mapNonEmpty!6951 ((_ is ValueCellFull!1698) mapDefault!6957)) b!173399))

(declare-fun m!201849 () Bool)

(assert (=> mapNonEmpty!6957 m!201849))

(declare-fun b_lambda!6969 () Bool)

(assert (= b_lambda!6967 (or (and b!173250 b_free!4311) b_lambda!6969)))

(declare-fun b_lambda!6971 () Bool)

(assert (= b_lambda!6965 (or (and b!173250 b_free!4311) b_lambda!6971)))

(check-sat (not d!52527) (not b_lambda!6971) (not b!173375) (not bm!17579) (not bm!17575) (not b!173377) (not d!52523) (not b!173285) (not b!173283) (not d!52525) (not d!52515) (not b!173348) (not b!173331) (not b!173288) (not b!173287) (not mapNonEmpty!6957) (not d!52509) (not d!52513) (not bm!17573) (not b!173376) (not b!173359) (not bm!17568) (not b!173380) (not bm!17572) (not bm!17576) (not d!52521) (not b!173363) (not b!173358) (not b!173351) (not bm!17580) (not b_next!4311) (not b!173284) (not b!173339) (not b!173360) (not b!173389) b_and!10775 (not b!173391) (not d!52511) (not b!173334) (not bm!17569) (not b!173368) tp_is_empty!4083 (not b!173343) (not b!173347) (not b!173372) (not b!173387) (not d!52505) (not b!173286) (not d!52507) (not b!173346) (not b!173390) (not b_lambda!6969))
(check-sat b_and!10775 (not b_next!4311))
(get-model)

(declare-fun d!52529 () Bool)

(declare-fun res!82357 () Bool)

(declare-fun e!114564 () Bool)

(assert (=> d!52529 (=> res!82357 e!114564)))

(assert (=> d!52529 (= res!82357 (and ((_ is Cons!2222) (toList!1104 lt!85750)) (= (_1!1628 (h!2839 (toList!1104 lt!85750))) key!828)))))

(assert (=> d!52529 (= (containsKey!188 (toList!1104 lt!85750) key!828) e!114564)))

(declare-fun b!173404 () Bool)

(declare-fun e!114565 () Bool)

(assert (=> b!173404 (= e!114564 e!114565)))

(declare-fun res!82358 () Bool)

(assert (=> b!173404 (=> (not res!82358) (not e!114565))))

(assert (=> b!173404 (= res!82358 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85750))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85750))) key!828)) ((_ is Cons!2222) (toList!1104 lt!85750)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85750))) key!828)))))

(declare-fun b!173405 () Bool)

(assert (=> b!173405 (= e!114565 (containsKey!188 (t!7041 (toList!1104 lt!85750)) key!828))))

(assert (= (and d!52529 (not res!82357)) b!173404))

(assert (= (and b!173404 res!82358) b!173405))

(declare-fun m!201851 () Bool)

(assert (=> b!173405 m!201851))

(assert (=> d!52521 d!52529))

(declare-fun d!52531 () Bool)

(declare-fun lt!85882 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!148 (List!2226) (InoxSet tuple2!3236))

(assert (=> d!52531 (= lt!85882 (select (content!148 (toList!1104 lt!85877)) (tuple2!3237 key!828 v!309)))))

(declare-fun e!114571 () Bool)

(assert (=> d!52531 (= lt!85882 e!114571)))

(declare-fun res!82364 () Bool)

(assert (=> d!52531 (=> (not res!82364) (not e!114571))))

(assert (=> d!52531 (= res!82364 ((_ is Cons!2222) (toList!1104 lt!85877)))))

(assert (=> d!52531 (= (contains!1154 (toList!1104 lt!85877) (tuple2!3237 key!828 v!309)) lt!85882)))

(declare-fun b!173410 () Bool)

(declare-fun e!114570 () Bool)

(assert (=> b!173410 (= e!114571 e!114570)))

(declare-fun res!82363 () Bool)

(assert (=> b!173410 (=> res!82363 e!114570)))

(assert (=> b!173410 (= res!82363 (= (h!2839 (toList!1104 lt!85877)) (tuple2!3237 key!828 v!309)))))

(declare-fun b!173411 () Bool)

(assert (=> b!173411 (= e!114570 (contains!1154 (t!7041 (toList!1104 lt!85877)) (tuple2!3237 key!828 v!309)))))

(assert (= (and d!52531 res!82364) b!173410))

(assert (= (and b!173410 (not res!82363)) b!173411))

(declare-fun m!201853 () Bool)

(assert (=> d!52531 m!201853))

(declare-fun m!201855 () Bool)

(assert (=> d!52531 m!201855))

(declare-fun m!201857 () Bool)

(assert (=> b!173411 m!201857))

(assert (=> b!173391 d!52531))

(declare-fun d!52533 () Bool)

(declare-fun get!1970 (Option!190) V!5091)

(assert (=> d!52533 (= (apply!130 lt!85847 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1970 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7152 () Bool)

(assert (= bs!7152 d!52533))

(assert (=> bs!7152 m!201715))

(declare-fun m!201859 () Bool)

(assert (=> bs!7152 m!201859))

(assert (=> bs!7152 m!201859))

(declare-fun m!201861 () Bool)

(assert (=> bs!7152 m!201861))

(assert (=> b!173380 d!52533))

(declare-fun d!52535 () Bool)

(declare-fun c!30907 () Bool)

(assert (=> d!52535 (= c!30907 ((_ is ValueCellFull!1698) (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!114574 () V!5091)

(assert (=> d!52535 (= (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!114574)))

(declare-fun b!173416 () Bool)

(declare-fun get!1971 (ValueCell!1698 V!5091) V!5091)

(assert (=> b!173416 (= e!114574 (get!1971 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!173417 () Bool)

(declare-fun get!1972 (ValueCell!1698 V!5091) V!5091)

(assert (=> b!173417 (= e!114574 (get!1972 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52535 c!30907) b!173416))

(assert (= (and d!52535 (not c!30907)) b!173417))

(assert (=> b!173416 m!201723))

(assert (=> b!173416 m!201725))

(declare-fun m!201863 () Bool)

(assert (=> b!173416 m!201863))

(assert (=> b!173417 m!201723))

(assert (=> b!173417 m!201725))

(declare-fun m!201865 () Bool)

(assert (=> b!173417 m!201865))

(assert (=> b!173380 d!52535))

(declare-fun d!52537 () Bool)

(assert (=> d!52537 (= (validMask!0 (mask!8470 thiss!1248)) (and (or (= (mask!8470 thiss!1248) #b00000000000000000000000000000111) (= (mask!8470 thiss!1248) #b00000000000000000000000000001111) (= (mask!8470 thiss!1248) #b00000000000000000000000000011111) (= (mask!8470 thiss!1248) #b00000000000000000000000000111111) (= (mask!8470 thiss!1248) #b00000000000000000000000001111111) (= (mask!8470 thiss!1248) #b00000000000000000000000011111111) (= (mask!8470 thiss!1248) #b00000000000000000000000111111111) (= (mask!8470 thiss!1248) #b00000000000000000000001111111111) (= (mask!8470 thiss!1248) #b00000000000000000000011111111111) (= (mask!8470 thiss!1248) #b00000000000000000000111111111111) (= (mask!8470 thiss!1248) #b00000000000000000001111111111111) (= (mask!8470 thiss!1248) #b00000000000000000011111111111111) (= (mask!8470 thiss!1248) #b00000000000000000111111111111111) (= (mask!8470 thiss!1248) #b00000000000000001111111111111111) (= (mask!8470 thiss!1248) #b00000000000000011111111111111111) (= (mask!8470 thiss!1248) #b00000000000000111111111111111111) (= (mask!8470 thiss!1248) #b00000000000001111111111111111111) (= (mask!8470 thiss!1248) #b00000000000011111111111111111111) (= (mask!8470 thiss!1248) #b00000000000111111111111111111111) (= (mask!8470 thiss!1248) #b00000000001111111111111111111111) (= (mask!8470 thiss!1248) #b00000000011111111111111111111111) (= (mask!8470 thiss!1248) #b00000000111111111111111111111111) (= (mask!8470 thiss!1248) #b00000001111111111111111111111111) (= (mask!8470 thiss!1248) #b00000011111111111111111111111111) (= (mask!8470 thiss!1248) #b00000111111111111111111111111111) (= (mask!8470 thiss!1248) #b00001111111111111111111111111111) (= (mask!8470 thiss!1248) #b00011111111111111111111111111111) (= (mask!8470 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8470 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> d!52515 d!52537))

(declare-fun d!52539 () Bool)

(declare-fun e!114575 () Bool)

(assert (=> d!52539 e!114575))

(declare-fun res!82365 () Bool)

(assert (=> d!52539 (=> (not res!82365) (not e!114575))))

(declare-fun lt!85884 () ListLongMap!2177)

(assert (=> d!52539 (= res!82365 (contains!1153 lt!85884 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun lt!85885 () List!2226)

(assert (=> d!52539 (= lt!85884 (ListLongMap!2178 lt!85885))))

(declare-fun lt!85886 () Unit!5311)

(declare-fun lt!85883 () Unit!5311)

(assert (=> d!52539 (= lt!85886 lt!85883)))

(assert (=> d!52539 (= (getValueByKey!184 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) (Some!189 (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52539 (= lt!85883 (lemmaContainsTupThenGetReturnValue!99 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52539 (= lt!85885 (insertStrictlySorted!101 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52539 (= (+!241 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85884)))

(declare-fun b!173418 () Bool)

(declare-fun res!82366 () Bool)

(assert (=> b!173418 (=> (not res!82366) (not e!114575))))

(assert (=> b!173418 (= res!82366 (= (getValueByKey!184 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) (Some!189 (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173419 () Bool)

(assert (=> b!173419 (= e!114575 (contains!1154 (toList!1104 lt!85884) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52539 res!82365) b!173418))

(assert (= (and b!173418 res!82366) b!173419))

(declare-fun m!201867 () Bool)

(assert (=> d!52539 m!201867))

(declare-fun m!201869 () Bool)

(assert (=> d!52539 m!201869))

(declare-fun m!201871 () Bool)

(assert (=> d!52539 m!201871))

(declare-fun m!201873 () Bool)

(assert (=> d!52539 m!201873))

(declare-fun m!201875 () Bool)

(assert (=> b!173418 m!201875))

(declare-fun m!201877 () Bool)

(assert (=> b!173419 m!201877))

(assert (=> bm!17575 d!52539))

(declare-fun d!52541 () Bool)

(declare-fun e!114576 () Bool)

(assert (=> d!52541 e!114576))

(declare-fun res!82367 () Bool)

(assert (=> d!52541 (=> (not res!82367) (not e!114576))))

(declare-fun lt!85888 () ListLongMap!2177)

(assert (=> d!52541 (= res!82367 (contains!1153 lt!85888 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun lt!85889 () List!2226)

(assert (=> d!52541 (= lt!85888 (ListLongMap!2178 lt!85889))))

(declare-fun lt!85890 () Unit!5311)

(declare-fun lt!85887 () Unit!5311)

(assert (=> d!52541 (= lt!85890 lt!85887)))

(assert (=> d!52541 (= (getValueByKey!184 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(assert (=> d!52541 (= lt!85887 (lemmaContainsTupThenGetReturnValue!99 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(assert (=> d!52541 (= lt!85889 (insertStrictlySorted!101 (toList!1104 lt!85814) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(assert (=> d!52541 (= (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!85888)))

(declare-fun b!173420 () Bool)

(declare-fun res!82368 () Bool)

(assert (=> b!173420 (=> (not res!82368) (not e!114576))))

(assert (=> b!173420 (= res!82368 (= (getValueByKey!184 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(declare-fun b!173421 () Bool)

(assert (=> b!173421 (= e!114576 (contains!1154 (toList!1104 lt!85888) (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))

(assert (= (and d!52541 res!82367) b!173420))

(assert (= (and b!173420 res!82368) b!173421))

(declare-fun m!201879 () Bool)

(assert (=> d!52541 m!201879))

(declare-fun m!201881 () Bool)

(assert (=> d!52541 m!201881))

(declare-fun m!201883 () Bool)

(assert (=> d!52541 m!201883))

(declare-fun m!201885 () Bool)

(assert (=> d!52541 m!201885))

(declare-fun m!201887 () Bool)

(assert (=> b!173420 m!201887))

(declare-fun m!201889 () Bool)

(assert (=> b!173421 m!201889))

(assert (=> b!173346 d!52541))

(declare-fun d!52543 () Bool)

(assert (=> d!52543 (= (apply!130 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!85816) (apply!130 lt!85822 lt!85816))))

(declare-fun lt!85893 () Unit!5311)

(declare-fun choose!937 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> d!52543 (= lt!85893 (choose!937 lt!85822 lt!85826 (minValue!3441 thiss!1248) lt!85816))))

(declare-fun e!114579 () Bool)

(assert (=> d!52543 e!114579))

(declare-fun res!82371 () Bool)

(assert (=> d!52543 (=> (not res!82371) (not e!114579))))

(assert (=> d!52543 (= res!82371 (contains!1153 lt!85822 lt!85816))))

(assert (=> d!52543 (= (addApplyDifferent!106 lt!85822 lt!85826 (minValue!3441 thiss!1248) lt!85816) lt!85893)))

(declare-fun b!173425 () Bool)

(assert (=> b!173425 (= e!114579 (not (= lt!85816 lt!85826)))))

(assert (= (and d!52543 res!82371) b!173425))

(assert (=> d!52543 m!201755))

(assert (=> d!52543 m!201745))

(declare-fun m!201891 () Bool)

(assert (=> d!52543 m!201891))

(assert (=> d!52543 m!201745))

(assert (=> d!52543 m!201749))

(declare-fun m!201893 () Bool)

(assert (=> d!52543 m!201893))

(assert (=> b!173346 d!52543))

(declare-fun d!52545 () Bool)

(assert (=> d!52545 (= (apply!130 lt!85822 lt!85816) (get!1970 (getValueByKey!184 (toList!1104 lt!85822) lt!85816)))))

(declare-fun bs!7153 () Bool)

(assert (= bs!7153 d!52545))

(declare-fun m!201895 () Bool)

(assert (=> bs!7153 m!201895))

(assert (=> bs!7153 m!201895))

(declare-fun m!201897 () Bool)

(assert (=> bs!7153 m!201897))

(assert (=> b!173346 d!52545))

(declare-fun d!52547 () Bool)

(assert (=> d!52547 (= (apply!130 lt!85814 lt!85818) (get!1970 (getValueByKey!184 (toList!1104 lt!85814) lt!85818)))))

(declare-fun bs!7154 () Bool)

(assert (= bs!7154 d!52547))

(declare-fun m!201899 () Bool)

(assert (=> bs!7154 m!201899))

(assert (=> bs!7154 m!201899))

(declare-fun m!201901 () Bool)

(assert (=> bs!7154 m!201901))

(assert (=> b!173346 d!52547))

(declare-fun d!52549 () Bool)

(assert (=> d!52549 (= (apply!130 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!85817) (apply!130 lt!85828 lt!85817))))

(declare-fun lt!85894 () Unit!5311)

(assert (=> d!52549 (= lt!85894 (choose!937 lt!85828 lt!85821 (zeroValue!3439 thiss!1248) lt!85817))))

(declare-fun e!114580 () Bool)

(assert (=> d!52549 e!114580))

(declare-fun res!82372 () Bool)

(assert (=> d!52549 (=> (not res!82372) (not e!114580))))

(assert (=> d!52549 (= res!82372 (contains!1153 lt!85828 lt!85817))))

(assert (=> d!52549 (= (addApplyDifferent!106 lt!85828 lt!85821 (zeroValue!3439 thiss!1248) lt!85817) lt!85894)))

(declare-fun b!173426 () Bool)

(assert (=> b!173426 (= e!114580 (not (= lt!85817 lt!85821)))))

(assert (= (and d!52549 res!82372) b!173426))

(assert (=> d!52549 m!201733))

(assert (=> d!52549 m!201741))

(declare-fun m!201903 () Bool)

(assert (=> d!52549 m!201903))

(assert (=> d!52549 m!201741))

(assert (=> d!52549 m!201743))

(declare-fun m!201905 () Bool)

(assert (=> d!52549 m!201905))

(assert (=> b!173346 d!52549))

(declare-fun b!173451 () Bool)

(declare-fun e!114595 () Bool)

(declare-fun e!114600 () Bool)

(assert (=> b!173451 (= e!114595 e!114600)))

(declare-fun c!30917 () Bool)

(assert (=> b!173451 (= c!30917 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun bm!17583 () Bool)

(declare-fun call!17586 () ListLongMap!2177)

(assert (=> bm!17583 (= call!17586 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173453 () Bool)

(declare-fun e!114598 () Bool)

(assert (=> b!173453 (= e!114595 e!114598)))

(assert (=> b!173453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun res!82382 () Bool)

(declare-fun lt!85911 () ListLongMap!2177)

(assert (=> b!173453 (= res!82382 (contains!1153 lt!85911 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173453 (=> (not res!82382) (not e!114598))))

(declare-fun b!173454 () Bool)

(declare-fun e!114596 () ListLongMap!2177)

(assert (=> b!173454 (= e!114596 (ListLongMap!2178 Nil!2223))))

(declare-fun b!173455 () Bool)

(declare-fun isEmpty!441 (ListLongMap!2177) Bool)

(assert (=> b!173455 (= e!114600 (isEmpty!441 lt!85911))))

(declare-fun b!173456 () Bool)

(assert (=> b!173456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> b!173456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!173456 (= e!114598 (= (apply!130 lt!85911 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173457 () Bool)

(declare-fun e!114599 () ListLongMap!2177)

(assert (=> b!173457 (= e!114599 call!17586)))

(declare-fun b!173458 () Bool)

(assert (=> b!173458 (= e!114600 (= lt!85911 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248))))))

(declare-fun b!173459 () Bool)

(assert (=> b!173459 (= e!114596 e!114599)))

(declare-fun c!30919 () Bool)

(assert (=> b!173459 (= c!30919 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173460 () Bool)

(declare-fun e!114597 () Bool)

(assert (=> b!173460 (= e!114597 e!114595)))

(declare-fun c!30918 () Bool)

(declare-fun e!114601 () Bool)

(assert (=> b!173460 (= c!30918 e!114601)))

(declare-fun res!82383 () Bool)

(assert (=> b!173460 (=> (not res!82383) (not e!114601))))

(assert (=> b!173460 (= res!82383 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173461 () Bool)

(declare-fun lt!85909 () Unit!5311)

(declare-fun lt!85913 () Unit!5311)

(assert (=> b!173461 (= lt!85909 lt!85913)))

(declare-fun lt!85912 () (_ BitVec 64))

(declare-fun lt!85914 () (_ BitVec 64))

(declare-fun lt!85915 () ListLongMap!2177)

(declare-fun lt!85910 () V!5091)

(assert (=> b!173461 (not (contains!1153 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910)) lt!85912))))

(declare-fun addStillNotContains!74 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> b!173461 (= lt!85913 (addStillNotContains!74 lt!85915 lt!85914 lt!85910 lt!85912))))

(assert (=> b!173461 (= lt!85912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!173461 (= lt!85910 (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!173461 (= lt!85914 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173461 (= lt!85915 call!17586)))

(assert (=> b!173461 (= e!114599 (+!241 call!17586 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!173462 () Bool)

(assert (=> b!173462 (= e!114601 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173462 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!52551 () Bool)

(assert (=> d!52551 e!114597))

(declare-fun res!82384 () Bool)

(assert (=> d!52551 (=> (not res!82384) (not e!114597))))

(assert (=> d!52551 (= res!82384 (not (contains!1153 lt!85911 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52551 (= lt!85911 e!114596)))

(declare-fun c!30916 () Bool)

(assert (=> d!52551 (= c!30916 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52551 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52551 (= (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) lt!85911)))

(declare-fun b!173452 () Bool)

(declare-fun res!82381 () Bool)

(assert (=> b!173452 (=> (not res!82381) (not e!114597))))

(assert (=> b!173452 (= res!82381 (not (contains!1153 lt!85911 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52551 c!30916) b!173454))

(assert (= (and d!52551 (not c!30916)) b!173459))

(assert (= (and b!173459 c!30919) b!173461))

(assert (= (and b!173459 (not c!30919)) b!173457))

(assert (= (or b!173461 b!173457) bm!17583))

(assert (= (and d!52551 res!82384) b!173452))

(assert (= (and b!173452 res!82381) b!173460))

(assert (= (and b!173460 res!82383) b!173462))

(assert (= (and b!173460 c!30918) b!173453))

(assert (= (and b!173460 (not c!30918)) b!173451))

(assert (= (and b!173453 res!82382) b!173456))

(assert (= (and b!173451 c!30917) b!173458))

(assert (= (and b!173451 (not c!30917)) b!173455))

(declare-fun b_lambda!6973 () Bool)

(assert (=> (not b_lambda!6973) (not b!173456)))

(assert (=> b!173456 t!7044))

(declare-fun b_and!10777 () Bool)

(assert (= b_and!10775 (and (=> t!7044 result!4593) b_and!10777)))

(declare-fun b_lambda!6975 () Bool)

(assert (=> (not b_lambda!6975) (not b!173461)))

(assert (=> b!173461 t!7044))

(declare-fun b_and!10779 () Bool)

(assert (= b_and!10777 (and (=> t!7044 result!4593) b_and!10779)))

(declare-fun m!201907 () Bool)

(assert (=> b!173458 m!201907))

(assert (=> b!173456 m!201723))

(assert (=> b!173456 m!201725))

(assert (=> b!173456 m!201727))

(assert (=> b!173456 m!201725))

(assert (=> b!173456 m!201715))

(declare-fun m!201909 () Bool)

(assert (=> b!173456 m!201909))

(assert (=> b!173456 m!201715))

(assert (=> b!173456 m!201723))

(declare-fun m!201911 () Bool)

(assert (=> d!52551 m!201911))

(assert (=> d!52551 m!201707))

(assert (=> b!173453 m!201715))

(assert (=> b!173453 m!201715))

(declare-fun m!201913 () Bool)

(assert (=> b!173453 m!201913))

(assert (=> bm!17583 m!201907))

(declare-fun m!201915 () Bool)

(assert (=> b!173455 m!201915))

(assert (=> b!173462 m!201715))

(assert (=> b!173462 m!201715))

(assert (=> b!173462 m!201717))

(declare-fun m!201917 () Bool)

(assert (=> b!173452 m!201917))

(assert (=> b!173459 m!201715))

(assert (=> b!173459 m!201715))

(assert (=> b!173459 m!201717))

(declare-fun m!201919 () Bool)

(assert (=> b!173461 m!201919))

(declare-fun m!201921 () Bool)

(assert (=> b!173461 m!201921))

(assert (=> b!173461 m!201723))

(assert (=> b!173461 m!201725))

(assert (=> b!173461 m!201727))

(assert (=> b!173461 m!201725))

(assert (=> b!173461 m!201919))

(declare-fun m!201923 () Bool)

(assert (=> b!173461 m!201923))

(assert (=> b!173461 m!201715))

(assert (=> b!173461 m!201723))

(declare-fun m!201925 () Bool)

(assert (=> b!173461 m!201925))

(assert (=> b!173346 d!52551))

(declare-fun d!52553 () Bool)

(assert (=> d!52553 (contains!1153 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!85810)))

(declare-fun lt!85918 () Unit!5311)

(declare-fun choose!938 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> d!52553 (= lt!85918 (choose!938 lt!85811 lt!85809 (zeroValue!3439 thiss!1248) lt!85810))))

(assert (=> d!52553 (contains!1153 lt!85811 lt!85810)))

(assert (=> d!52553 (= (addStillContains!106 lt!85811 lt!85809 (zeroValue!3439 thiss!1248) lt!85810) lt!85918)))

(declare-fun bs!7155 () Bool)

(assert (= bs!7155 d!52553))

(assert (=> bs!7155 m!201751))

(assert (=> bs!7155 m!201751))

(assert (=> bs!7155 m!201761))

(declare-fun m!201927 () Bool)

(assert (=> bs!7155 m!201927))

(declare-fun m!201929 () Bool)

(assert (=> bs!7155 m!201929))

(assert (=> b!173346 d!52553))

(declare-fun d!52555 () Bool)

(declare-fun e!114602 () Bool)

(assert (=> d!52555 e!114602))

(declare-fun res!82385 () Bool)

(assert (=> d!52555 (=> res!82385 e!114602)))

(declare-fun lt!85919 () Bool)

(assert (=> d!52555 (= res!82385 (not lt!85919))))

(declare-fun lt!85921 () Bool)

(assert (=> d!52555 (= lt!85919 lt!85921)))

(declare-fun lt!85922 () Unit!5311)

(declare-fun e!114603 () Unit!5311)

(assert (=> d!52555 (= lt!85922 e!114603)))

(declare-fun c!30920 () Bool)

(assert (=> d!52555 (= c!30920 lt!85921)))

(assert (=> d!52555 (= lt!85921 (containsKey!188 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(assert (=> d!52555 (= (contains!1153 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!85810) lt!85919)))

(declare-fun b!173464 () Bool)

(declare-fun lt!85920 () Unit!5311)

(assert (=> b!173464 (= e!114603 lt!85920)))

(assert (=> b!173464 (= lt!85920 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(assert (=> b!173464 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(declare-fun b!173465 () Bool)

(declare-fun Unit!5318 () Unit!5311)

(assert (=> b!173465 (= e!114603 Unit!5318)))

(declare-fun b!173466 () Bool)

(assert (=> b!173466 (= e!114602 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810)))))

(assert (= (and d!52555 c!30920) b!173464))

(assert (= (and d!52555 (not c!30920)) b!173465))

(assert (= (and d!52555 (not res!82385)) b!173466))

(declare-fun m!201931 () Bool)

(assert (=> d!52555 m!201931))

(declare-fun m!201933 () Bool)

(assert (=> b!173464 m!201933))

(declare-fun m!201935 () Bool)

(assert (=> b!173464 m!201935))

(assert (=> b!173464 m!201935))

(declare-fun m!201937 () Bool)

(assert (=> b!173464 m!201937))

(assert (=> b!173466 m!201935))

(assert (=> b!173466 m!201935))

(assert (=> b!173466 m!201937))

(assert (=> b!173346 d!52555))

(declare-fun d!52557 () Bool)

(assert (=> d!52557 (= (apply!130 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!85816) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!85816)))))

(declare-fun bs!7156 () Bool)

(assert (= bs!7156 d!52557))

(declare-fun m!201939 () Bool)

(assert (=> bs!7156 m!201939))

(assert (=> bs!7156 m!201939))

(declare-fun m!201941 () Bool)

(assert (=> bs!7156 m!201941))

(assert (=> b!173346 d!52557))

(declare-fun d!52559 () Bool)

(assert (=> d!52559 (= (apply!130 lt!85828 lt!85817) (get!1970 (getValueByKey!184 (toList!1104 lt!85828) lt!85817)))))

(declare-fun bs!7157 () Bool)

(assert (= bs!7157 d!52559))

(declare-fun m!201943 () Bool)

(assert (=> bs!7157 m!201943))

(assert (=> bs!7157 m!201943))

(declare-fun m!201945 () Bool)

(assert (=> bs!7157 m!201945))

(assert (=> b!173346 d!52559))

(declare-fun d!52561 () Bool)

(assert (=> d!52561 (= (apply!130 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!85818) (apply!130 lt!85814 lt!85818))))

(declare-fun lt!85923 () Unit!5311)

(assert (=> d!52561 (= lt!85923 (choose!937 lt!85814 lt!85824 (minValue!3441 thiss!1248) lt!85818))))

(declare-fun e!114604 () Bool)

(assert (=> d!52561 e!114604))

(declare-fun res!82386 () Bool)

(assert (=> d!52561 (=> (not res!82386) (not e!114604))))

(assert (=> d!52561 (= res!82386 (contains!1153 lt!85814 lt!85818))))

(assert (=> d!52561 (= (addApplyDifferent!106 lt!85814 lt!85824 (minValue!3441 thiss!1248) lt!85818) lt!85923)))

(declare-fun b!173467 () Bool)

(assert (=> b!173467 (= e!114604 (not (= lt!85818 lt!85824)))))

(assert (= (and d!52561 res!82386) b!173467))

(assert (=> d!52561 m!201735))

(assert (=> d!52561 m!201737))

(declare-fun m!201947 () Bool)

(assert (=> d!52561 m!201947))

(assert (=> d!52561 m!201737))

(assert (=> d!52561 m!201739))

(declare-fun m!201949 () Bool)

(assert (=> d!52561 m!201949))

(assert (=> b!173346 d!52561))

(declare-fun d!52563 () Bool)

(assert (=> d!52563 (= (apply!130 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!85818) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!85818)))))

(declare-fun bs!7158 () Bool)

(assert (= bs!7158 d!52563))

(declare-fun m!201951 () Bool)

(assert (=> bs!7158 m!201951))

(assert (=> bs!7158 m!201951))

(declare-fun m!201953 () Bool)

(assert (=> bs!7158 m!201953))

(assert (=> b!173346 d!52563))

(declare-fun d!52565 () Bool)

(declare-fun e!114605 () Bool)

(assert (=> d!52565 e!114605))

(declare-fun res!82387 () Bool)

(assert (=> d!52565 (=> (not res!82387) (not e!114605))))

(declare-fun lt!85925 () ListLongMap!2177)

(assert (=> d!52565 (= res!82387 (contains!1153 lt!85925 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun lt!85926 () List!2226)

(assert (=> d!52565 (= lt!85925 (ListLongMap!2178 lt!85926))))

(declare-fun lt!85927 () Unit!5311)

(declare-fun lt!85924 () Unit!5311)

(assert (=> d!52565 (= lt!85927 lt!85924)))

(assert (=> d!52565 (= (getValueByKey!184 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(assert (=> d!52565 (= lt!85924 (lemmaContainsTupThenGetReturnValue!99 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(assert (=> d!52565 (= lt!85926 (insertStrictlySorted!101 (toList!1104 lt!85822) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(assert (=> d!52565 (= (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!85925)))

(declare-fun b!173468 () Bool)

(declare-fun res!82388 () Bool)

(assert (=> b!173468 (=> (not res!82388) (not e!114605))))

(assert (=> b!173468 (= res!82388 (= (getValueByKey!184 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(declare-fun b!173469 () Bool)

(assert (=> b!173469 (= e!114605 (contains!1154 (toList!1104 lt!85925) (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))

(assert (= (and d!52565 res!82387) b!173468))

(assert (= (and b!173468 res!82388) b!173469))

(declare-fun m!201955 () Bool)

(assert (=> d!52565 m!201955))

(declare-fun m!201957 () Bool)

(assert (=> d!52565 m!201957))

(declare-fun m!201959 () Bool)

(assert (=> d!52565 m!201959))

(declare-fun m!201961 () Bool)

(assert (=> d!52565 m!201961))

(declare-fun m!201963 () Bool)

(assert (=> b!173468 m!201963))

(declare-fun m!201965 () Bool)

(assert (=> b!173469 m!201965))

(assert (=> b!173346 d!52565))

(declare-fun d!52567 () Bool)

(declare-fun e!114606 () Bool)

(assert (=> d!52567 e!114606))

(declare-fun res!82389 () Bool)

(assert (=> d!52567 (=> (not res!82389) (not e!114606))))

(declare-fun lt!85929 () ListLongMap!2177)

(assert (=> d!52567 (= res!82389 (contains!1153 lt!85929 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!85930 () List!2226)

(assert (=> d!52567 (= lt!85929 (ListLongMap!2178 lt!85930))))

(declare-fun lt!85931 () Unit!5311)

(declare-fun lt!85928 () Unit!5311)

(assert (=> d!52567 (= lt!85931 lt!85928)))

(assert (=> d!52567 (= (getValueByKey!184 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52567 (= lt!85928 (lemmaContainsTupThenGetReturnValue!99 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52567 (= lt!85930 (insertStrictlySorted!101 (toList!1104 lt!85811) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52567 (= (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!85929)))

(declare-fun b!173470 () Bool)

(declare-fun res!82390 () Bool)

(assert (=> b!173470 (=> (not res!82390) (not e!114606))))

(assert (=> b!173470 (= res!82390 (= (getValueByKey!184 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(declare-fun b!173471 () Bool)

(assert (=> b!173471 (= e!114606 (contains!1154 (toList!1104 lt!85929) (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52567 res!82389) b!173470))

(assert (= (and b!173470 res!82390) b!173471))

(declare-fun m!201967 () Bool)

(assert (=> d!52567 m!201967))

(declare-fun m!201969 () Bool)

(assert (=> d!52567 m!201969))

(declare-fun m!201971 () Bool)

(assert (=> d!52567 m!201971))

(declare-fun m!201973 () Bool)

(assert (=> d!52567 m!201973))

(declare-fun m!201975 () Bool)

(assert (=> b!173470 m!201975))

(declare-fun m!201977 () Bool)

(assert (=> b!173471 m!201977))

(assert (=> b!173346 d!52567))

(declare-fun d!52569 () Bool)

(declare-fun e!114607 () Bool)

(assert (=> d!52569 e!114607))

(declare-fun res!82391 () Bool)

(assert (=> d!52569 (=> (not res!82391) (not e!114607))))

(declare-fun lt!85933 () ListLongMap!2177)

(assert (=> d!52569 (= res!82391 (contains!1153 lt!85933 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!85934 () List!2226)

(assert (=> d!52569 (= lt!85933 (ListLongMap!2178 lt!85934))))

(declare-fun lt!85935 () Unit!5311)

(declare-fun lt!85932 () Unit!5311)

(assert (=> d!52569 (= lt!85935 lt!85932)))

(assert (=> d!52569 (= (getValueByKey!184 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52569 (= lt!85932 (lemmaContainsTupThenGetReturnValue!99 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52569 (= lt!85934 (insertStrictlySorted!101 (toList!1104 lt!85828) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52569 (= (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!85933)))

(declare-fun b!173472 () Bool)

(declare-fun res!82392 () Bool)

(assert (=> b!173472 (=> (not res!82392) (not e!114607))))

(assert (=> b!173472 (= res!82392 (= (getValueByKey!184 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(declare-fun b!173473 () Bool)

(assert (=> b!173473 (= e!114607 (contains!1154 (toList!1104 lt!85933) (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52569 res!82391) b!173472))

(assert (= (and b!173472 res!82392) b!173473))

(declare-fun m!201979 () Bool)

(assert (=> d!52569 m!201979))

(declare-fun m!201981 () Bool)

(assert (=> d!52569 m!201981))

(declare-fun m!201983 () Bool)

(assert (=> d!52569 m!201983))

(declare-fun m!201985 () Bool)

(assert (=> d!52569 m!201985))

(declare-fun m!201987 () Bool)

(assert (=> b!173472 m!201987))

(declare-fun m!201989 () Bool)

(assert (=> b!173473 m!201989))

(assert (=> b!173346 d!52569))

(declare-fun d!52571 () Bool)

(assert (=> d!52571 (= (apply!130 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!85817) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!85817)))))

(declare-fun bs!7159 () Bool)

(assert (= bs!7159 d!52571))

(declare-fun m!201991 () Bool)

(assert (=> bs!7159 m!201991))

(assert (=> bs!7159 m!201991))

(declare-fun m!201993 () Bool)

(assert (=> bs!7159 m!201993))

(assert (=> b!173346 d!52571))

(declare-fun d!52573 () Bool)

(declare-fun e!114608 () Bool)

(assert (=> d!52573 e!114608))

(declare-fun res!82393 () Bool)

(assert (=> d!52573 (=> res!82393 e!114608)))

(declare-fun lt!85936 () Bool)

(assert (=> d!52573 (= res!82393 (not lt!85936))))

(declare-fun lt!85938 () Bool)

(assert (=> d!52573 (= lt!85936 lt!85938)))

(declare-fun lt!85939 () Unit!5311)

(declare-fun e!114609 () Unit!5311)

(assert (=> d!52573 (= lt!85939 e!114609)))

(declare-fun c!30921 () Bool)

(assert (=> d!52573 (= c!30921 lt!85938)))

(assert (=> d!52573 (= lt!85938 (containsKey!188 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52573 (= (contains!1153 lt!85847 #b0000000000000000000000000000000000000000000000000000000000000000) lt!85936)))

(declare-fun b!173474 () Bool)

(declare-fun lt!85937 () Unit!5311)

(assert (=> b!173474 (= e!114609 lt!85937)))

(assert (=> b!173474 (= lt!85937 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173474 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173475 () Bool)

(declare-fun Unit!5319 () Unit!5311)

(assert (=> b!173475 (= e!114609 Unit!5319)))

(declare-fun b!173476 () Bool)

(assert (=> b!173476 (= e!114608 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52573 c!30921) b!173474))

(assert (= (and d!52573 (not c!30921)) b!173475))

(assert (= (and d!52573 (not res!82393)) b!173476))

(declare-fun m!201995 () Bool)

(assert (=> d!52573 m!201995))

(declare-fun m!201997 () Bool)

(assert (=> b!173474 m!201997))

(declare-fun m!201999 () Bool)

(assert (=> b!173474 m!201999))

(assert (=> b!173474 m!201999))

(declare-fun m!202001 () Bool)

(assert (=> b!173474 m!202001))

(assert (=> b!173476 m!201999))

(assert (=> b!173476 m!201999))

(assert (=> b!173476 m!202001))

(assert (=> bm!17576 d!52573))

(declare-fun d!52575 () Bool)

(assert (=> d!52575 (= (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!173347 d!52575))

(declare-fun d!52577 () Bool)

(declare-fun e!114610 () Bool)

(assert (=> d!52577 e!114610))

(declare-fun res!82394 () Bool)

(assert (=> d!52577 (=> (not res!82394) (not e!114610))))

(declare-fun lt!85941 () ListLongMap!2177)

(assert (=> d!52577 (= res!82394 (contains!1153 lt!85941 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85942 () List!2226)

(assert (=> d!52577 (= lt!85941 (ListLongMap!2178 lt!85942))))

(declare-fun lt!85943 () Unit!5311)

(declare-fun lt!85940 () Unit!5311)

(assert (=> d!52577 (= lt!85943 lt!85940)))

(assert (=> d!52577 (= (getValueByKey!184 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52577 (= lt!85940 (lemmaContainsTupThenGetReturnValue!99 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52577 (= lt!85942 (insertStrictlySorted!101 (toList!1104 call!17581) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52577 (= (+!241 call!17581 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!85941)))

(declare-fun b!173477 () Bool)

(declare-fun res!82395 () Bool)

(assert (=> b!173477 (=> (not res!82395) (not e!114610))))

(assert (=> b!173477 (= res!82395 (= (getValueByKey!184 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!173478 () Bool)

(assert (=> b!173478 (= e!114610 (contains!1154 (toList!1104 lt!85941) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!52577 res!82394) b!173477))

(assert (= (and b!173477 res!82395) b!173478))

(declare-fun m!202003 () Bool)

(assert (=> d!52577 m!202003))

(declare-fun m!202005 () Bool)

(assert (=> d!52577 m!202005))

(declare-fun m!202007 () Bool)

(assert (=> d!52577 m!202007))

(declare-fun m!202009 () Bool)

(assert (=> d!52577 m!202009))

(declare-fun m!202011 () Bool)

(assert (=> b!173477 m!202011))

(declare-fun m!202013 () Bool)

(assert (=> b!173478 m!202013))

(assert (=> b!173377 d!52577))

(declare-fun d!52579 () Bool)

(declare-fun e!114611 () Bool)

(assert (=> d!52579 e!114611))

(declare-fun res!82396 () Bool)

(assert (=> d!52579 (=> res!82396 e!114611)))

(declare-fun lt!85944 () Bool)

(assert (=> d!52579 (= res!82396 (not lt!85944))))

(declare-fun lt!85946 () Bool)

(assert (=> d!52579 (= lt!85944 lt!85946)))

(declare-fun lt!85947 () Unit!5311)

(declare-fun e!114612 () Unit!5311)

(assert (=> d!52579 (= lt!85947 e!114612)))

(declare-fun c!30922 () Bool)

(assert (=> d!52579 (= c!30922 lt!85946)))

(assert (=> d!52579 (= lt!85946 (containsKey!188 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52579 (= (contains!1153 lt!85813 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!85944)))

(declare-fun b!173479 () Bool)

(declare-fun lt!85945 () Unit!5311)

(assert (=> b!173479 (= e!114612 lt!85945)))

(assert (=> b!173479 (= lt!85945 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173479 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173480 () Bool)

(declare-fun Unit!5320 () Unit!5311)

(assert (=> b!173480 (= e!114612 Unit!5320)))

(declare-fun b!173481 () Bool)

(assert (=> b!173481 (= e!114611 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!52579 c!30922) b!173479))

(assert (= (and d!52579 (not c!30922)) b!173480))

(assert (= (and d!52579 (not res!82396)) b!173481))

(assert (=> d!52579 m!201715))

(declare-fun m!202015 () Bool)

(assert (=> d!52579 m!202015))

(assert (=> b!173479 m!201715))

(declare-fun m!202017 () Bool)

(assert (=> b!173479 m!202017))

(assert (=> b!173479 m!201715))

(declare-fun m!202019 () Bool)

(assert (=> b!173479 m!202019))

(assert (=> b!173479 m!202019))

(declare-fun m!202021 () Bool)

(assert (=> b!173479 m!202021))

(assert (=> b!173481 m!201715))

(assert (=> b!173481 m!202019))

(assert (=> b!173481 m!202019))

(assert (=> b!173481 m!202021))

(assert (=> b!173343 d!52579))

(declare-fun d!52581 () Bool)

(declare-fun e!114613 () Bool)

(assert (=> d!52581 e!114613))

(declare-fun res!82397 () Bool)

(assert (=> d!52581 (=> res!82397 e!114613)))

(declare-fun lt!85948 () Bool)

(assert (=> d!52581 (= res!82397 (not lt!85948))))

(declare-fun lt!85950 () Bool)

(assert (=> d!52581 (= lt!85948 lt!85950)))

(declare-fun lt!85951 () Unit!5311)

(declare-fun e!114614 () Unit!5311)

(assert (=> d!52581 (= lt!85951 e!114614)))

(declare-fun c!30923 () Bool)

(assert (=> d!52581 (= c!30923 lt!85950)))

(assert (=> d!52581 (= lt!85950 (containsKey!188 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52581 (= (contains!1153 lt!85839 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85948)))

(declare-fun b!173482 () Bool)

(declare-fun lt!85949 () Unit!5311)

(assert (=> b!173482 (= e!114614 lt!85949)))

(assert (=> b!173482 (= lt!85949 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> b!173482 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173483 () Bool)

(declare-fun Unit!5321 () Unit!5311)

(assert (=> b!173483 (= e!114614 Unit!5321)))

(declare-fun b!173484 () Bool)

(assert (=> b!173484 (= e!114613 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52581 c!30923) b!173482))

(assert (= (and d!52581 (not c!30923)) b!173483))

(assert (= (and d!52581 (not res!82397)) b!173484))

(declare-fun m!202023 () Bool)

(assert (=> d!52581 m!202023))

(declare-fun m!202025 () Bool)

(assert (=> b!173482 m!202025))

(assert (=> b!173482 m!201775))

(assert (=> b!173482 m!201775))

(declare-fun m!202027 () Bool)

(assert (=> b!173482 m!202027))

(assert (=> b!173484 m!201775))

(assert (=> b!173484 m!201775))

(assert (=> b!173484 m!202027))

(assert (=> d!52513 d!52581))

(declare-fun b!173493 () Bool)

(declare-fun e!114619 () Option!190)

(assert (=> b!173493 (= e!114619 (Some!189 (_2!1628 (h!2839 lt!85840))))))

(declare-fun b!173496 () Bool)

(declare-fun e!114620 () Option!190)

(assert (=> b!173496 (= e!114620 None!188)))

(declare-fun b!173494 () Bool)

(assert (=> b!173494 (= e!114619 e!114620)))

(declare-fun c!30929 () Bool)

(assert (=> b!173494 (= c!30929 (and ((_ is Cons!2222) lt!85840) (not (= (_1!1628 (h!2839 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173495 () Bool)

(assert (=> b!173495 (= e!114620 (getValueByKey!184 (t!7041 lt!85840) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!52583 () Bool)

(declare-fun c!30928 () Bool)

(assert (=> d!52583 (= c!30928 (and ((_ is Cons!2222) lt!85840) (= (_1!1628 (h!2839 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52583 (= (getValueByKey!184 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114619)))

(assert (= (and d!52583 c!30928) b!173493))

(assert (= (and d!52583 (not c!30928)) b!173494))

(assert (= (and b!173494 c!30929) b!173495))

(assert (= (and b!173494 (not c!30929)) b!173496))

(declare-fun m!202029 () Bool)

(assert (=> b!173495 m!202029))

(assert (=> d!52513 d!52583))

(declare-fun d!52585 () Bool)

(assert (=> d!52585 (= (getValueByKey!184 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!85954 () Unit!5311)

(declare-fun choose!939 (List!2226 (_ BitVec 64) V!5091) Unit!5311)

(assert (=> d!52585 (= lt!85954 (choose!939 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!114623 () Bool)

(assert (=> d!52585 e!114623))

(declare-fun res!82402 () Bool)

(assert (=> d!52585 (=> (not res!82402) (not e!114623))))

(declare-fun isStrictlySorted!327 (List!2226) Bool)

(assert (=> d!52585 (= res!82402 (isStrictlySorted!327 lt!85840))))

(assert (=> d!52585 (= (lemmaContainsTupThenGetReturnValue!99 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85954)))

(declare-fun b!173501 () Bool)

(declare-fun res!82403 () Bool)

(assert (=> b!173501 (=> (not res!82403) (not e!114623))))

(assert (=> b!173501 (= res!82403 (containsKey!188 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173502 () Bool)

(assert (=> b!173502 (= e!114623 (contains!1154 lt!85840 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52585 res!82402) b!173501))

(assert (= (and b!173501 res!82403) b!173502))

(assert (=> d!52585 m!201769))

(declare-fun m!202031 () Bool)

(assert (=> d!52585 m!202031))

(declare-fun m!202033 () Bool)

(assert (=> d!52585 m!202033))

(declare-fun m!202035 () Bool)

(assert (=> b!173501 m!202035))

(declare-fun m!202037 () Bool)

(assert (=> b!173502 m!202037))

(assert (=> d!52513 d!52585))

(declare-fun bm!17591 () Bool)

(declare-fun call!17595 () List!2226)

(declare-fun call!17593 () List!2226)

(assert (=> bm!17591 (= call!17595 call!17593)))

(declare-fun c!30941 () Bool)

(declare-fun b!173523 () Bool)

(declare-fun c!30939 () Bool)

(declare-fun e!114637 () List!2226)

(assert (=> b!173523 (= e!114637 (ite c!30939 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (ite c!30941 (Cons!2222 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) Nil!2223)))))

(declare-fun b!173524 () Bool)

(declare-fun res!82408 () Bool)

(declare-fun e!114638 () Bool)

(assert (=> b!173524 (=> (not res!82408) (not e!114638))))

(declare-fun lt!85957 () List!2226)

(assert (=> b!173524 (= res!82408 (containsKey!188 lt!85957 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173525 () Bool)

(declare-fun e!114635 () List!2226)

(assert (=> b!173525 (= e!114635 call!17593)))

(declare-fun b!173526 () Bool)

(assert (=> b!173526 (= c!30941 (and ((_ is Cons!2222) (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (bvsgt (_1!1628 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!114636 () List!2226)

(declare-fun e!114634 () List!2226)

(assert (=> b!173526 (= e!114636 e!114634)))

(declare-fun b!173527 () Bool)

(declare-fun call!17594 () List!2226)

(assert (=> b!173527 (= e!114634 call!17594)))

(declare-fun b!173528 () Bool)

(assert (=> b!173528 (= e!114634 call!17594)))

(declare-fun b!173529 () Bool)

(assert (=> b!173529 (= e!114635 e!114636)))

(assert (=> b!173529 (= c!30939 (and ((_ is Cons!2222) (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (= (_1!1628 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun bm!17590 () Bool)

(declare-fun c!30938 () Bool)

(declare-fun $colon$colon!97 (List!2226 tuple2!3236) List!2226)

(assert (=> bm!17590 (= call!17593 ($colon$colon!97 e!114637 (ite c!30938 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!30940 () Bool)

(assert (=> bm!17590 (= c!30940 c!30938)))

(declare-fun d!52587 () Bool)

(assert (=> d!52587 e!114638))

(declare-fun res!82409 () Bool)

(assert (=> d!52587 (=> (not res!82409) (not e!114638))))

(assert (=> d!52587 (= res!82409 (isStrictlySorted!327 lt!85957))))

(assert (=> d!52587 (= lt!85957 e!114635)))

(assert (=> d!52587 (= c!30938 (and ((_ is Cons!2222) (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (bvslt (_1!1628 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52587 (isStrictlySorted!327 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))))

(assert (=> d!52587 (= (insertStrictlySorted!101 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!85957)))

(declare-fun bm!17592 () Bool)

(assert (=> bm!17592 (= call!17594 call!17595)))

(declare-fun b!173530 () Bool)

(assert (=> b!173530 (= e!114636 call!17595)))

(declare-fun b!173531 () Bool)

(assert (=> b!173531 (= e!114637 (insertStrictlySorted!101 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173532 () Bool)

(assert (=> b!173532 (= e!114638 (contains!1154 lt!85957 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52587 c!30938) b!173525))

(assert (= (and d!52587 (not c!30938)) b!173529))

(assert (= (and b!173529 c!30939) b!173530))

(assert (= (and b!173529 (not c!30939)) b!173526))

(assert (= (and b!173526 c!30941) b!173527))

(assert (= (and b!173526 (not c!30941)) b!173528))

(assert (= (or b!173527 b!173528) bm!17592))

(assert (= (or b!173530 bm!17592) bm!17591))

(assert (= (or b!173525 bm!17591) bm!17590))

(assert (= (and bm!17590 c!30940) b!173531))

(assert (= (and bm!17590 (not c!30940)) b!173523))

(assert (= (and d!52587 res!82409) b!173524))

(assert (= (and b!173524 res!82408) b!173532))

(declare-fun m!202039 () Bool)

(assert (=> b!173532 m!202039))

(declare-fun m!202041 () Bool)

(assert (=> bm!17590 m!202041))

(declare-fun m!202043 () Bool)

(assert (=> b!173531 m!202043))

(declare-fun m!202045 () Bool)

(assert (=> b!173524 m!202045))

(declare-fun m!202047 () Bool)

(assert (=> d!52587 m!202047))

(declare-fun m!202049 () Bool)

(assert (=> d!52587 m!202049))

(assert (=> d!52513 d!52587))

(declare-fun d!52589 () Bool)

(assert (=> d!52589 (= (apply!130 lt!85847 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7160 () Bool)

(assert (= bs!7160 d!52589))

(assert (=> bs!7160 m!201999))

(assert (=> bs!7160 m!201999))

(declare-fun m!202051 () Bool)

(assert (=> bs!7160 m!202051))

(assert (=> b!173363 d!52589))

(assert (=> d!52511 d!52537))

(assert (=> d!52509 d!52537))

(declare-fun d!52591 () Bool)

(assert (=> d!52591 (= (+!241 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))

(assert (=> d!52591 true))

(declare-fun _$8!130 () Unit!5311)

(assert (=> d!52591 (= (choose!936 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) v!309 (defaultEntry!3598 thiss!1248)) _$8!130)))

(declare-fun bs!7161 () Bool)

(assert (= bs!7161 d!52591))

(assert (=> bs!7161 m!201649))

(assert (=> bs!7161 m!201649))

(assert (=> bs!7161 m!201651))

(assert (=> bs!7161 m!201657))

(assert (=> d!52509 d!52591))

(assert (=> d!52509 d!52511))

(assert (=> d!52509 d!52513))

(assert (=> d!52509 d!52515))

(declare-fun b!173533 () Bool)

(declare-fun e!114639 () Option!190)

(assert (=> b!173533 (= e!114639 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85877)))))))

(declare-fun b!173536 () Bool)

(declare-fun e!114640 () Option!190)

(assert (=> b!173536 (= e!114640 None!188)))

(declare-fun b!173534 () Bool)

(assert (=> b!173534 (= e!114639 e!114640)))

(declare-fun c!30943 () Bool)

(assert (=> b!173534 (= c!30943 (and ((_ is Cons!2222) (toList!1104 lt!85877)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun b!173535 () Bool)

(assert (=> b!173535 (= e!114640 (getValueByKey!184 (t!7041 (toList!1104 lt!85877)) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun d!52593 () Bool)

(declare-fun c!30942 () Bool)

(assert (=> d!52593 (= c!30942 (and ((_ is Cons!2222) (toList!1104 lt!85877)) (= (_1!1628 (h!2839 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52593 (= (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))) e!114639)))

(assert (= (and d!52593 c!30942) b!173533))

(assert (= (and d!52593 (not c!30942)) b!173534))

(assert (= (and b!173534 c!30943) b!173535))

(assert (= (and b!173534 (not c!30943)) b!173536))

(declare-fun m!202053 () Bool)

(assert (=> b!173535 m!202053))

(assert (=> b!173390 d!52593))

(assert (=> b!173376 d!52575))

(declare-fun d!52595 () Bool)

(declare-fun isEmpty!442 (Option!190) Bool)

(assert (=> d!52595 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85750) key!828)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85750) key!828))))))

(declare-fun bs!7162 () Bool)

(assert (= bs!7162 d!52595))

(assert (=> bs!7162 m!201831))

(declare-fun m!202055 () Bool)

(assert (=> bs!7162 m!202055))

(assert (=> b!173389 d!52595))

(declare-fun b!173537 () Bool)

(declare-fun e!114641 () Option!190)

(assert (=> b!173537 (= e!114641 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85750)))))))

(declare-fun b!173540 () Bool)

(declare-fun e!114642 () Option!190)

(assert (=> b!173540 (= e!114642 None!188)))

(declare-fun b!173538 () Bool)

(assert (=> b!173538 (= e!114641 e!114642)))

(declare-fun c!30945 () Bool)

(assert (=> b!173538 (= c!30945 (and ((_ is Cons!2222) (toList!1104 lt!85750)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85750))) key!828))))))

(declare-fun b!173539 () Bool)

(assert (=> b!173539 (= e!114642 (getValueByKey!184 (t!7041 (toList!1104 lt!85750)) key!828))))

(declare-fun d!52597 () Bool)

(declare-fun c!30944 () Bool)

(assert (=> d!52597 (= c!30944 (and ((_ is Cons!2222) (toList!1104 lt!85750)) (= (_1!1628 (h!2839 (toList!1104 lt!85750))) key!828)))))

(assert (=> d!52597 (= (getValueByKey!184 (toList!1104 lt!85750) key!828) e!114641)))

(assert (= (and d!52597 c!30944) b!173537))

(assert (= (and d!52597 (not c!30944)) b!173538))

(assert (= (and b!173538 c!30945) b!173539))

(assert (= (and b!173538 (not c!30945)) b!173540))

(declare-fun m!202057 () Bool)

(assert (=> b!173539 m!202057))

(assert (=> b!173389 d!52597))

(declare-fun d!52599 () Bool)

(declare-fun e!114643 () Bool)

(assert (=> d!52599 e!114643))

(declare-fun res!82410 () Bool)

(assert (=> d!52599 (=> res!82410 e!114643)))

(declare-fun lt!85958 () Bool)

(assert (=> d!52599 (= res!82410 (not lt!85958))))

(declare-fun lt!85960 () Bool)

(assert (=> d!52599 (= lt!85958 lt!85960)))

(declare-fun lt!85961 () Unit!5311)

(declare-fun e!114644 () Unit!5311)

(assert (=> d!52599 (= lt!85961 e!114644)))

(declare-fun c!30946 () Bool)

(assert (=> d!52599 (= c!30946 lt!85960)))

(assert (=> d!52599 (= lt!85960 (containsKey!188 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52599 (= (contains!1153 lt!85847 #b1000000000000000000000000000000000000000000000000000000000000000) lt!85958)))

(declare-fun b!173541 () Bool)

(declare-fun lt!85959 () Unit!5311)

(assert (=> b!173541 (= e!114644 lt!85959)))

(assert (=> b!173541 (= lt!85959 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173541 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173542 () Bool)

(declare-fun Unit!5322 () Unit!5311)

(assert (=> b!173542 (= e!114644 Unit!5322)))

(declare-fun b!173543 () Bool)

(assert (=> b!173543 (= e!114643 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52599 c!30946) b!173541))

(assert (= (and d!52599 (not c!30946)) b!173542))

(assert (= (and d!52599 (not res!82410)) b!173543))

(declare-fun m!202059 () Bool)

(assert (=> d!52599 m!202059))

(declare-fun m!202061 () Bool)

(assert (=> b!173541 m!202061))

(declare-fun m!202063 () Bool)

(assert (=> b!173541 m!202063))

(assert (=> b!173541 m!202063))

(declare-fun m!202065 () Bool)

(assert (=> b!173541 m!202065))

(assert (=> b!173543 m!202063))

(assert (=> b!173543 m!202063))

(assert (=> b!173543 m!202065))

(assert (=> bm!17579 d!52599))

(declare-fun d!52601 () Bool)

(assert (=> d!52601 (= (apply!130 lt!85847 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7163 () Bool)

(assert (= bs!7163 d!52601))

(assert (=> bs!7163 m!202063))

(assert (=> bs!7163 m!202063))

(declare-fun m!202067 () Bool)

(assert (=> bs!7163 m!202067))

(assert (=> b!173360 d!52601))

(declare-fun b!173544 () Bool)

(declare-fun e!114645 () Bool)

(declare-fun e!114650 () Bool)

(assert (=> b!173544 (= e!114645 e!114650)))

(declare-fun c!30948 () Bool)

(assert (=> b!173544 (= c!30948 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun bm!17593 () Bool)

(declare-fun call!17596 () ListLongMap!2177)

(assert (=> bm!17593 (= call!17596 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173546 () Bool)

(declare-fun e!114648 () Bool)

(assert (=> b!173546 (= e!114645 e!114648)))

(assert (=> b!173546 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun res!82412 () Bool)

(declare-fun lt!85964 () ListLongMap!2177)

(assert (=> b!173546 (= res!82412 (contains!1153 lt!85964 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173546 (=> (not res!82412) (not e!114648))))

(declare-fun b!173547 () Bool)

(declare-fun e!114646 () ListLongMap!2177)

(assert (=> b!173547 (= e!114646 (ListLongMap!2178 Nil!2223))))

(declare-fun b!173548 () Bool)

(assert (=> b!173548 (= e!114650 (isEmpty!441 lt!85964))))

(declare-fun b!173549 () Bool)

(assert (=> b!173549 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> b!173549 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!173549 (= e!114648 (= (apply!130 lt!85964 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173550 () Bool)

(declare-fun e!114649 () ListLongMap!2177)

(assert (=> b!173550 (= e!114649 call!17596)))

(declare-fun b!173551 () Bool)

(assert (=> b!173551 (= e!114650 (= lt!85964 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248))))))

(declare-fun b!173552 () Bool)

(assert (=> b!173552 (= e!114646 e!114649)))

(declare-fun c!30950 () Bool)

(assert (=> b!173552 (= c!30950 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173553 () Bool)

(declare-fun e!114647 () Bool)

(assert (=> b!173553 (= e!114647 e!114645)))

(declare-fun c!30949 () Bool)

(declare-fun e!114651 () Bool)

(assert (=> b!173553 (= c!30949 e!114651)))

(declare-fun res!82413 () Bool)

(assert (=> b!173553 (=> (not res!82413) (not e!114651))))

(assert (=> b!173553 (= res!82413 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173554 () Bool)

(declare-fun lt!85962 () Unit!5311)

(declare-fun lt!85966 () Unit!5311)

(assert (=> b!173554 (= lt!85962 lt!85966)))

(declare-fun lt!85965 () (_ BitVec 64))

(declare-fun lt!85968 () ListLongMap!2177)

(declare-fun lt!85963 () V!5091)

(declare-fun lt!85967 () (_ BitVec 64))

(assert (=> b!173554 (not (contains!1153 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963)) lt!85965))))

(assert (=> b!173554 (= lt!85966 (addStillNotContains!74 lt!85968 lt!85967 lt!85963 lt!85965))))

(assert (=> b!173554 (= lt!85965 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!173554 (= lt!85963 (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!173554 (= lt!85967 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173554 (= lt!85968 call!17596)))

(assert (=> b!173554 (= e!114649 (+!241 call!17596 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!173555 () Bool)

(assert (=> b!173555 (= e!114651 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173555 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!52603 () Bool)

(assert (=> d!52603 e!114647))

(declare-fun res!82414 () Bool)

(assert (=> d!52603 (=> (not res!82414) (not e!114647))))

(assert (=> d!52603 (= res!82414 (not (contains!1153 lt!85964 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52603 (= lt!85964 e!114646)))

(declare-fun c!30947 () Bool)

(assert (=> d!52603 (= c!30947 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52603 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52603 (= (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)) lt!85964)))

(declare-fun b!173545 () Bool)

(declare-fun res!82411 () Bool)

(assert (=> b!173545 (=> (not res!82411) (not e!114647))))

(assert (=> b!173545 (= res!82411 (not (contains!1153 lt!85964 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52603 c!30947) b!173547))

(assert (= (and d!52603 (not c!30947)) b!173552))

(assert (= (and b!173552 c!30950) b!173554))

(assert (= (and b!173552 (not c!30950)) b!173550))

(assert (= (or b!173554 b!173550) bm!17593))

(assert (= (and d!52603 res!82414) b!173545))

(assert (= (and b!173545 res!82411) b!173553))

(assert (= (and b!173553 res!82413) b!173555))

(assert (= (and b!173553 c!30949) b!173546))

(assert (= (and b!173553 (not c!30949)) b!173544))

(assert (= (and b!173546 res!82412) b!173549))

(assert (= (and b!173544 c!30948) b!173551))

(assert (= (and b!173544 (not c!30948)) b!173548))

(declare-fun b_lambda!6977 () Bool)

(assert (=> (not b_lambda!6977) (not b!173549)))

(assert (=> b!173549 t!7044))

(declare-fun b_and!10781 () Bool)

(assert (= b_and!10779 (and (=> t!7044 result!4593) b_and!10781)))

(declare-fun b_lambda!6979 () Bool)

(assert (=> (not b_lambda!6979) (not b!173554)))

(assert (=> b!173554 t!7044))

(declare-fun b_and!10783 () Bool)

(assert (= b_and!10781 (and (=> t!7044 result!4593) b_and!10783)))

(declare-fun m!202069 () Bool)

(assert (=> b!173551 m!202069))

(assert (=> b!173549 m!201723))

(assert (=> b!173549 m!201725))

(assert (=> b!173549 m!201727))

(assert (=> b!173549 m!201725))

(assert (=> b!173549 m!201715))

(declare-fun m!202071 () Bool)

(assert (=> b!173549 m!202071))

(assert (=> b!173549 m!201715))

(assert (=> b!173549 m!201723))

(declare-fun m!202073 () Bool)

(assert (=> d!52603 m!202073))

(assert (=> d!52603 m!201707))

(assert (=> b!173546 m!201715))

(assert (=> b!173546 m!201715))

(declare-fun m!202075 () Bool)

(assert (=> b!173546 m!202075))

(assert (=> bm!17593 m!202069))

(declare-fun m!202077 () Bool)

(assert (=> b!173548 m!202077))

(assert (=> b!173555 m!201715))

(assert (=> b!173555 m!201715))

(assert (=> b!173555 m!201717))

(declare-fun m!202079 () Bool)

(assert (=> b!173545 m!202079))

(assert (=> b!173552 m!201715))

(assert (=> b!173552 m!201715))

(assert (=> b!173552 m!201717))

(declare-fun m!202081 () Bool)

(assert (=> b!173554 m!202081))

(declare-fun m!202083 () Bool)

(assert (=> b!173554 m!202083))

(assert (=> b!173554 m!201723))

(assert (=> b!173554 m!201725))

(assert (=> b!173554 m!201727))

(assert (=> b!173554 m!201725))

(assert (=> b!173554 m!202081))

(declare-fun m!202085 () Bool)

(assert (=> b!173554 m!202085))

(assert (=> b!173554 m!201715))

(assert (=> b!173554 m!201723))

(declare-fun m!202087 () Bool)

(assert (=> b!173554 m!202087))

(assert (=> bm!17580 d!52603))

(assert (=> b!173339 d!52575))

(declare-fun b!173564 () Bool)

(declare-fun e!114659 () Bool)

(declare-fun call!17599 () Bool)

(assert (=> b!173564 (= e!114659 call!17599)))

(declare-fun d!52605 () Bool)

(declare-fun res!82420 () Bool)

(declare-fun e!114658 () Bool)

(assert (=> d!52605 (=> res!82420 e!114658)))

(assert (=> d!52605 (= res!82420 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52605 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5439 thiss!1248) (mask!8470 thiss!1248)) e!114658)))

(declare-fun b!173565 () Bool)

(assert (=> b!173565 (= e!114658 e!114659)))

(declare-fun c!30953 () Bool)

(assert (=> b!173565 (= c!30953 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173566 () Bool)

(declare-fun e!114660 () Bool)

(assert (=> b!173566 (= e!114660 call!17599)))

(declare-fun bm!17596 () Bool)

(assert (=> bm!17596 (= call!17599 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)))))

(declare-fun b!173567 () Bool)

(assert (=> b!173567 (= e!114659 e!114660)))

(declare-fun lt!85976 () (_ BitVec 64))

(assert (=> b!173567 (= lt!85976 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!85977 () Unit!5311)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7296 (_ BitVec 64) (_ BitVec 32)) Unit!5311)

(assert (=> b!173567 (= lt!85977 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!173567 (arrayContainsKey!0 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000)))

(declare-fun lt!85975 () Unit!5311)

(assert (=> b!173567 (= lt!85975 lt!85977)))

(declare-fun res!82419 () Bool)

(declare-datatypes ((SeekEntryResult!552 0))(
  ( (MissingZero!552 (index!4376 (_ BitVec 32))) (Found!552 (index!4377 (_ BitVec 32))) (Intermediate!552 (undefined!1364 Bool) (index!4378 (_ BitVec 32)) (x!19206 (_ BitVec 32))) (Undefined!552) (MissingVacant!552 (index!4379 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7296 (_ BitVec 32)) SeekEntryResult!552)

(assert (=> b!173567 (= res!82419 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)) (Found!552 #b00000000000000000000000000000000)))))

(assert (=> b!173567 (=> (not res!82419) (not e!114660))))

(assert (= (and d!52605 (not res!82420)) b!173565))

(assert (= (and b!173565 c!30953) b!173567))

(assert (= (and b!173565 (not c!30953)) b!173564))

(assert (= (and b!173567 res!82419) b!173566))

(assert (= (or b!173566 b!173564) bm!17596))

(assert (=> b!173565 m!201715))

(assert (=> b!173565 m!201715))

(assert (=> b!173565 m!201717))

(declare-fun m!202089 () Bool)

(assert (=> bm!17596 m!202089))

(assert (=> b!173567 m!201715))

(declare-fun m!202091 () Bool)

(assert (=> b!173567 m!202091))

(declare-fun m!202093 () Bool)

(assert (=> b!173567 m!202093))

(assert (=> b!173567 m!201715))

(declare-fun m!202095 () Bool)

(assert (=> b!173567 m!202095))

(assert (=> b!173284 d!52605))

(declare-fun d!52607 () Bool)

(assert (=> d!52607 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85750) key!828))))

(declare-fun lt!85980 () Unit!5311)

(declare-fun choose!940 (List!2226 (_ BitVec 64)) Unit!5311)

(assert (=> d!52607 (= lt!85980 (choose!940 (toList!1104 lt!85750) key!828))))

(declare-fun e!114663 () Bool)

(assert (=> d!52607 e!114663))

(declare-fun res!82423 () Bool)

(assert (=> d!52607 (=> (not res!82423) (not e!114663))))

(assert (=> d!52607 (= res!82423 (isStrictlySorted!327 (toList!1104 lt!85750)))))

(assert (=> d!52607 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85750) key!828) lt!85980)))

(declare-fun b!173570 () Bool)

(assert (=> b!173570 (= e!114663 (containsKey!188 (toList!1104 lt!85750) key!828))))

(assert (= (and d!52607 res!82423) b!173570))

(assert (=> d!52607 m!201831))

(assert (=> d!52607 m!201831))

(assert (=> d!52607 m!201833))

(declare-fun m!202097 () Bool)

(assert (=> d!52607 m!202097))

(declare-fun m!202099 () Bool)

(assert (=> d!52607 m!202099))

(assert (=> b!173570 m!201827))

(assert (=> b!173387 d!52607))

(assert (=> b!173387 d!52595))

(assert (=> b!173387 d!52597))

(assert (=> d!52527 d!52511))

(declare-fun d!52609 () Bool)

(assert (=> d!52609 (= (apply!130 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!85851) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!85851)))))

(declare-fun bs!7164 () Bool)

(assert (= bs!7164 d!52609))

(declare-fun m!202101 () Bool)

(assert (=> bs!7164 m!202101))

(assert (=> bs!7164 m!202101))

(declare-fun m!202103 () Bool)

(assert (=> bs!7164 m!202103))

(assert (=> b!173375 d!52609))

(assert (=> b!173375 d!52603))

(declare-fun d!52611 () Bool)

(declare-fun e!114664 () Bool)

(assert (=> d!52611 e!114664))

(declare-fun res!82424 () Bool)

(assert (=> d!52611 (=> (not res!82424) (not e!114664))))

(declare-fun lt!85982 () ListLongMap!2177)

(assert (=> d!52611 (= res!82424 (contains!1153 lt!85982 (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun lt!85983 () List!2226)

(assert (=> d!52611 (= lt!85982 (ListLongMap!2178 lt!85983))))

(declare-fun lt!85984 () Unit!5311)

(declare-fun lt!85981 () Unit!5311)

(assert (=> d!52611 (= lt!85984 lt!85981)))

(assert (=> d!52611 (= (getValueByKey!184 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(assert (=> d!52611 (= lt!85981 (lemmaContainsTupThenGetReturnValue!99 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(assert (=> d!52611 (= lt!85983 (insertStrictlySorted!101 (toList!1104 lt!85856) (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(assert (=> d!52611 (= (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)) lt!85982)))

(declare-fun b!173571 () Bool)

(declare-fun res!82425 () Bool)

(assert (=> b!173571 (=> (not res!82425) (not e!114664))))

(assert (=> b!173571 (= res!82425 (= (getValueByKey!184 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85860 v!309)))))))

(declare-fun b!173572 () Bool)

(assert (=> b!173572 (= e!114664 (contains!1154 (toList!1104 lt!85982) (tuple2!3237 lt!85860 v!309)))))

(assert (= (and d!52611 res!82424) b!173571))

(assert (= (and b!173571 res!82425) b!173572))

(declare-fun m!202105 () Bool)

(assert (=> d!52611 m!202105))

(declare-fun m!202107 () Bool)

(assert (=> d!52611 m!202107))

(declare-fun m!202109 () Bool)

(assert (=> d!52611 m!202109))

(declare-fun m!202111 () Bool)

(assert (=> d!52611 m!202111))

(declare-fun m!202113 () Bool)

(assert (=> b!173571 m!202113))

(declare-fun m!202115 () Bool)

(assert (=> b!173572 m!202115))

(assert (=> b!173375 d!52611))

(declare-fun d!52613 () Bool)

(assert (=> d!52613 (contains!1153 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!85844)))

(declare-fun lt!85985 () Unit!5311)

(assert (=> d!52613 (= lt!85985 (choose!938 lt!85845 lt!85843 (zeroValue!3439 thiss!1248) lt!85844))))

(assert (=> d!52613 (contains!1153 lt!85845 lt!85844)))

(assert (=> d!52613 (= (addStillContains!106 lt!85845 lt!85843 (zeroValue!3439 thiss!1248) lt!85844) lt!85985)))

(declare-fun bs!7165 () Bool)

(assert (= bs!7165 d!52613))

(assert (=> bs!7165 m!201811))

(assert (=> bs!7165 m!201811))

(assert (=> bs!7165 m!201821))

(declare-fun m!202117 () Bool)

(assert (=> bs!7165 m!202117))

(declare-fun m!202119 () Bool)

(assert (=> bs!7165 m!202119))

(assert (=> b!173375 d!52613))

(declare-fun d!52615 () Bool)

(assert (=> d!52615 (= (apply!130 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)) lt!85852) (apply!130 lt!85848 lt!85852))))

(declare-fun lt!85986 () Unit!5311)

(assert (=> d!52615 (= lt!85986 (choose!937 lt!85848 lt!85858 v!309 lt!85852))))

(declare-fun e!114665 () Bool)

(assert (=> d!52615 e!114665))

(declare-fun res!82426 () Bool)

(assert (=> d!52615 (=> (not res!82426) (not e!114665))))

(assert (=> d!52615 (= res!82426 (contains!1153 lt!85848 lt!85852))))

(assert (=> d!52615 (= (addApplyDifferent!106 lt!85848 lt!85858 v!309 lt!85852) lt!85986)))

(declare-fun b!173573 () Bool)

(assert (=> b!173573 (= e!114665 (not (= lt!85852 lt!85858)))))

(assert (= (and d!52615 res!82426) b!173573))

(assert (=> d!52615 m!201795))

(assert (=> d!52615 m!201797))

(declare-fun m!202121 () Bool)

(assert (=> d!52615 m!202121))

(assert (=> d!52615 m!201797))

(assert (=> d!52615 m!201799))

(declare-fun m!202123 () Bool)

(assert (=> d!52615 m!202123))

(assert (=> b!173375 d!52615))

(declare-fun d!52617 () Bool)

(declare-fun e!114666 () Bool)

(assert (=> d!52617 e!114666))

(declare-fun res!82427 () Bool)

(assert (=> d!52617 (=> (not res!82427) (not e!114666))))

(declare-fun lt!85988 () ListLongMap!2177)

(assert (=> d!52617 (= res!82427 (contains!1153 lt!85988 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!85989 () List!2226)

(assert (=> d!52617 (= lt!85988 (ListLongMap!2178 lt!85989))))

(declare-fun lt!85990 () Unit!5311)

(declare-fun lt!85987 () Unit!5311)

(assert (=> d!52617 (= lt!85990 lt!85987)))

(assert (=> d!52617 (= (getValueByKey!184 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52617 (= lt!85987 (lemmaContainsTupThenGetReturnValue!99 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52617 (= lt!85989 (insertStrictlySorted!101 (toList!1104 lt!85862) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52617 (= (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!85988)))

(declare-fun b!173574 () Bool)

(declare-fun res!82428 () Bool)

(assert (=> b!173574 (=> (not res!82428) (not e!114666))))

(assert (=> b!173574 (= res!82428 (= (getValueByKey!184 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(declare-fun b!173575 () Bool)

(assert (=> b!173575 (= e!114666 (contains!1154 (toList!1104 lt!85988) (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52617 res!82427) b!173574))

(assert (= (and b!173574 res!82428) b!173575))

(declare-fun m!202125 () Bool)

(assert (=> d!52617 m!202125))

(declare-fun m!202127 () Bool)

(assert (=> d!52617 m!202127))

(declare-fun m!202129 () Bool)

(assert (=> d!52617 m!202129))

(declare-fun m!202131 () Bool)

(assert (=> d!52617 m!202131))

(declare-fun m!202133 () Bool)

(assert (=> b!173574 m!202133))

(declare-fun m!202135 () Bool)

(assert (=> b!173575 m!202135))

(assert (=> b!173375 d!52617))

(declare-fun d!52619 () Bool)

(assert (=> d!52619 (= (apply!130 lt!85848 lt!85852) (get!1970 (getValueByKey!184 (toList!1104 lt!85848) lt!85852)))))

(declare-fun bs!7166 () Bool)

(assert (= bs!7166 d!52619))

(declare-fun m!202137 () Bool)

(assert (=> bs!7166 m!202137))

(assert (=> bs!7166 m!202137))

(declare-fun m!202139 () Bool)

(assert (=> bs!7166 m!202139))

(assert (=> b!173375 d!52619))

(declare-fun d!52621 () Bool)

(declare-fun e!114667 () Bool)

(assert (=> d!52621 e!114667))

(declare-fun res!82429 () Bool)

(assert (=> d!52621 (=> (not res!82429) (not e!114667))))

(declare-fun lt!85992 () ListLongMap!2177)

(assert (=> d!52621 (= res!82429 (contains!1153 lt!85992 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!85993 () List!2226)

(assert (=> d!52621 (= lt!85992 (ListLongMap!2178 lt!85993))))

(declare-fun lt!85994 () Unit!5311)

(declare-fun lt!85991 () Unit!5311)

(assert (=> d!52621 (= lt!85994 lt!85991)))

(assert (=> d!52621 (= (getValueByKey!184 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52621 (= lt!85991 (lemmaContainsTupThenGetReturnValue!99 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52621 (= lt!85993 (insertStrictlySorted!101 (toList!1104 lt!85845) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52621 (= (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!85992)))

(declare-fun b!173576 () Bool)

(declare-fun res!82430 () Bool)

(assert (=> b!173576 (=> (not res!82430) (not e!114667))))

(assert (=> b!173576 (= res!82430 (= (getValueByKey!184 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(declare-fun b!173577 () Bool)

(assert (=> b!173577 (= e!114667 (contains!1154 (toList!1104 lt!85992) (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52621 res!82429) b!173576))

(assert (= (and b!173576 res!82430) b!173577))

(declare-fun m!202141 () Bool)

(assert (=> d!52621 m!202141))

(declare-fun m!202143 () Bool)

(assert (=> d!52621 m!202143))

(declare-fun m!202145 () Bool)

(assert (=> d!52621 m!202145))

(declare-fun m!202147 () Bool)

(assert (=> d!52621 m!202147))

(declare-fun m!202149 () Bool)

(assert (=> b!173576 m!202149))

(declare-fun m!202151 () Bool)

(assert (=> b!173577 m!202151))

(assert (=> b!173375 d!52621))

(declare-fun d!52623 () Bool)

(assert (=> d!52623 (= (apply!130 lt!85856 lt!85850) (get!1970 (getValueByKey!184 (toList!1104 lt!85856) lt!85850)))))

(declare-fun bs!7167 () Bool)

(assert (= bs!7167 d!52623))

(declare-fun m!202153 () Bool)

(assert (=> bs!7167 m!202153))

(assert (=> bs!7167 m!202153))

(declare-fun m!202155 () Bool)

(assert (=> bs!7167 m!202155))

(assert (=> b!173375 d!52623))

(declare-fun d!52625 () Bool)

(assert (=> d!52625 (= (apply!130 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)) lt!85852) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))) lt!85852)))))

(declare-fun bs!7168 () Bool)

(assert (= bs!7168 d!52625))

(declare-fun m!202157 () Bool)

(assert (=> bs!7168 m!202157))

(assert (=> bs!7168 m!202157))

(declare-fun m!202159 () Bool)

(assert (=> bs!7168 m!202159))

(assert (=> b!173375 d!52625))

(declare-fun d!52627 () Bool)

(assert (=> d!52627 (= (apply!130 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)) lt!85850) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))) lt!85850)))))

(declare-fun bs!7169 () Bool)

(assert (= bs!7169 d!52627))

(declare-fun m!202161 () Bool)

(assert (=> bs!7169 m!202161))

(assert (=> bs!7169 m!202161))

(declare-fun m!202163 () Bool)

(assert (=> bs!7169 m!202163))

(assert (=> b!173375 d!52627))

(declare-fun d!52629 () Bool)

(assert (=> d!52629 (= (apply!130 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)) lt!85850) (apply!130 lt!85856 lt!85850))))

(declare-fun lt!85995 () Unit!5311)

(assert (=> d!52629 (= lt!85995 (choose!937 lt!85856 lt!85860 v!309 lt!85850))))

(declare-fun e!114668 () Bool)

(assert (=> d!52629 e!114668))

(declare-fun res!82431 () Bool)

(assert (=> d!52629 (=> (not res!82431) (not e!114668))))

(assert (=> d!52629 (= res!82431 (contains!1153 lt!85856 lt!85850))))

(assert (=> d!52629 (= (addApplyDifferent!106 lt!85856 lt!85860 v!309 lt!85850) lt!85995)))

(declare-fun b!173578 () Bool)

(assert (=> b!173578 (= e!114668 (not (= lt!85850 lt!85860)))))

(assert (= (and d!52629 res!82431) b!173578))

(assert (=> d!52629 m!201815))

(assert (=> d!52629 m!201805))

(declare-fun m!202165 () Bool)

(assert (=> d!52629 m!202165))

(assert (=> d!52629 m!201805))

(assert (=> d!52629 m!201809))

(declare-fun m!202167 () Bool)

(assert (=> d!52629 m!202167))

(assert (=> b!173375 d!52629))

(declare-fun d!52631 () Bool)

(declare-fun e!114669 () Bool)

(assert (=> d!52631 e!114669))

(declare-fun res!82432 () Bool)

(assert (=> d!52631 (=> (not res!82432) (not e!114669))))

(declare-fun lt!85997 () ListLongMap!2177)

(assert (=> d!52631 (= res!82432 (contains!1153 lt!85997 (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun lt!85998 () List!2226)

(assert (=> d!52631 (= lt!85997 (ListLongMap!2178 lt!85998))))

(declare-fun lt!85999 () Unit!5311)

(declare-fun lt!85996 () Unit!5311)

(assert (=> d!52631 (= lt!85999 lt!85996)))

(assert (=> d!52631 (= (getValueByKey!184 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(assert (=> d!52631 (= lt!85996 (lemmaContainsTupThenGetReturnValue!99 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(assert (=> d!52631 (= lt!85998 (insertStrictlySorted!101 (toList!1104 lt!85848) (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(assert (=> d!52631 (= (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)) lt!85997)))

(declare-fun b!173579 () Bool)

(declare-fun res!82433 () Bool)

(assert (=> b!173579 (=> (not res!82433) (not e!114669))))

(assert (=> b!173579 (= res!82433 (= (getValueByKey!184 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85858 v!309)))))))

(declare-fun b!173580 () Bool)

(assert (=> b!173580 (= e!114669 (contains!1154 (toList!1104 lt!85997) (tuple2!3237 lt!85858 v!309)))))

(assert (= (and d!52631 res!82432) b!173579))

(assert (= (and b!173579 res!82433) b!173580))

(declare-fun m!202169 () Bool)

(assert (=> d!52631 m!202169))

(declare-fun m!202171 () Bool)

(assert (=> d!52631 m!202171))

(declare-fun m!202173 () Bool)

(assert (=> d!52631 m!202173))

(declare-fun m!202175 () Bool)

(assert (=> d!52631 m!202175))

(declare-fun m!202177 () Bool)

(assert (=> b!173579 m!202177))

(declare-fun m!202179 () Bool)

(assert (=> b!173580 m!202179))

(assert (=> b!173375 d!52631))

(declare-fun d!52633 () Bool)

(declare-fun e!114670 () Bool)

(assert (=> d!52633 e!114670))

(declare-fun res!82434 () Bool)

(assert (=> d!52633 (=> res!82434 e!114670)))

(declare-fun lt!86000 () Bool)

(assert (=> d!52633 (= res!82434 (not lt!86000))))

(declare-fun lt!86002 () Bool)

(assert (=> d!52633 (= lt!86000 lt!86002)))

(declare-fun lt!86003 () Unit!5311)

(declare-fun e!114671 () Unit!5311)

(assert (=> d!52633 (= lt!86003 e!114671)))

(declare-fun c!30954 () Bool)

(assert (=> d!52633 (= c!30954 lt!86002)))

(assert (=> d!52633 (= lt!86002 (containsKey!188 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(assert (=> d!52633 (= (contains!1153 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!85844) lt!86000)))

(declare-fun b!173581 () Bool)

(declare-fun lt!86001 () Unit!5311)

(assert (=> b!173581 (= e!114671 lt!86001)))

(assert (=> b!173581 (= lt!86001 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(assert (=> b!173581 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(declare-fun b!173582 () Bool)

(declare-fun Unit!5323 () Unit!5311)

(assert (=> b!173582 (= e!114671 Unit!5323)))

(declare-fun b!173583 () Bool)

(assert (=> b!173583 (= e!114670 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844)))))

(assert (= (and d!52633 c!30954) b!173581))

(assert (= (and d!52633 (not c!30954)) b!173582))

(assert (= (and d!52633 (not res!82434)) b!173583))

(declare-fun m!202181 () Bool)

(assert (=> d!52633 m!202181))

(declare-fun m!202183 () Bool)

(assert (=> b!173581 m!202183))

(declare-fun m!202185 () Bool)

(assert (=> b!173581 m!202185))

(assert (=> b!173581 m!202185))

(declare-fun m!202187 () Bool)

(assert (=> b!173581 m!202187))

(assert (=> b!173583 m!202185))

(assert (=> b!173583 m!202185))

(assert (=> b!173583 m!202187))

(assert (=> b!173375 d!52633))

(declare-fun d!52635 () Bool)

(assert (=> d!52635 (= (apply!130 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!85851) (apply!130 lt!85862 lt!85851))))

(declare-fun lt!86004 () Unit!5311)

(assert (=> d!52635 (= lt!86004 (choose!937 lt!85862 lt!85855 (zeroValue!3439 thiss!1248) lt!85851))))

(declare-fun e!114672 () Bool)

(assert (=> d!52635 e!114672))

(declare-fun res!82435 () Bool)

(assert (=> d!52635 (=> (not res!82435) (not e!114672))))

(assert (=> d!52635 (= res!82435 (contains!1153 lt!85862 lt!85851))))

(assert (=> d!52635 (= (addApplyDifferent!106 lt!85862 lt!85855 (zeroValue!3439 thiss!1248) lt!85851) lt!86004)))

(declare-fun b!173584 () Bool)

(assert (=> b!173584 (= e!114672 (not (= lt!85851 lt!85855)))))

(assert (= (and d!52635 res!82435) b!173584))

(assert (=> d!52635 m!201793))

(assert (=> d!52635 m!201801))

(declare-fun m!202189 () Bool)

(assert (=> d!52635 m!202189))

(assert (=> d!52635 m!201801))

(assert (=> d!52635 m!201803))

(declare-fun m!202191 () Bool)

(assert (=> d!52635 m!202191))

(assert (=> b!173375 d!52635))

(declare-fun d!52637 () Bool)

(assert (=> d!52637 (= (apply!130 lt!85862 lt!85851) (get!1970 (getValueByKey!184 (toList!1104 lt!85862) lt!85851)))))

(declare-fun bs!7170 () Bool)

(assert (= bs!7170 d!52637))

(declare-fun m!202193 () Bool)

(assert (=> bs!7170 m!202193))

(assert (=> bs!7170 m!202193))

(declare-fun m!202195 () Bool)

(assert (=> bs!7170 m!202195))

(assert (=> b!173375 d!52637))

(declare-fun d!52639 () Bool)

(declare-fun res!82444 () Bool)

(declare-fun e!114682 () Bool)

(assert (=> d!52639 (=> res!82444 e!114682)))

(assert (=> d!52639 (= res!82444 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52639 (= (arrayNoDuplicates!0 (_keys!5439 thiss!1248) #b00000000000000000000000000000000 Nil!2225) e!114682)))

(declare-fun b!173595 () Bool)

(declare-fun e!114684 () Bool)

(declare-fun contains!1155 (List!2228 (_ BitVec 64)) Bool)

(assert (=> b!173595 (= e!114684 (contains!1155 Nil!2225 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173596 () Bool)

(declare-fun e!114683 () Bool)

(declare-fun e!114681 () Bool)

(assert (=> b!173596 (= e!114683 e!114681)))

(declare-fun c!30957 () Bool)

(assert (=> b!173596 (= c!30957 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173597 () Bool)

(declare-fun call!17602 () Bool)

(assert (=> b!173597 (= e!114681 call!17602)))

(declare-fun b!173598 () Bool)

(assert (=> b!173598 (= e!114681 call!17602)))

(declare-fun bm!17599 () Bool)

(assert (=> bm!17599 (= call!17602 (arrayNoDuplicates!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30957 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)))))

(declare-fun b!173599 () Bool)

(assert (=> b!173599 (= e!114682 e!114683)))

(declare-fun res!82442 () Bool)

(assert (=> b!173599 (=> (not res!82442) (not e!114683))))

(assert (=> b!173599 (= res!82442 (not e!114684))))

(declare-fun res!82443 () Bool)

(assert (=> b!173599 (=> (not res!82443) (not e!114684))))

(assert (=> b!173599 (= res!82443 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52639 (not res!82444)) b!173599))

(assert (= (and b!173599 res!82443) b!173595))

(assert (= (and b!173599 res!82442) b!173596))

(assert (= (and b!173596 c!30957) b!173598))

(assert (= (and b!173596 (not c!30957)) b!173597))

(assert (= (or b!173598 b!173597) bm!17599))

(assert (=> b!173595 m!201715))

(assert (=> b!173595 m!201715))

(declare-fun m!202197 () Bool)

(assert (=> b!173595 m!202197))

(assert (=> b!173596 m!201715))

(assert (=> b!173596 m!201715))

(assert (=> b!173596 m!201717))

(assert (=> bm!17599 m!201715))

(declare-fun m!202199 () Bool)

(assert (=> bm!17599 m!202199))

(assert (=> b!173599 m!201715))

(assert (=> b!173599 m!201715))

(assert (=> b!173599 m!201717))

(assert (=> b!173285 d!52639))

(declare-fun d!52641 () Bool)

(declare-fun res!82447 () Bool)

(declare-fun e!114686 () Bool)

(assert (=> d!52641 (=> res!82447 e!114686)))

(assert (=> d!52641 (= res!82447 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52641 (= (arrayNoDuplicates!0 (_keys!5439 lt!85751) #b00000000000000000000000000000000 Nil!2225) e!114686)))

(declare-fun b!173600 () Bool)

(declare-fun e!114688 () Bool)

(assert (=> b!173600 (= e!114688 (contains!1155 Nil!2225 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173601 () Bool)

(declare-fun e!114687 () Bool)

(declare-fun e!114685 () Bool)

(assert (=> b!173601 (= e!114687 e!114685)))

(declare-fun c!30958 () Bool)

(assert (=> b!173601 (= c!30958 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173602 () Bool)

(declare-fun call!17603 () Bool)

(assert (=> b!173602 (= e!114685 call!17603)))

(declare-fun b!173603 () Bool)

(assert (=> b!173603 (= e!114685 call!17603)))

(declare-fun bm!17600 () Bool)

(assert (=> bm!17600 (= call!17603 (arrayNoDuplicates!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30958 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)))))

(declare-fun b!173604 () Bool)

(assert (=> b!173604 (= e!114686 e!114687)))

(declare-fun res!82445 () Bool)

(assert (=> b!173604 (=> (not res!82445) (not e!114687))))

(assert (=> b!173604 (= res!82445 (not e!114688))))

(declare-fun res!82446 () Bool)

(assert (=> b!173604 (=> (not res!82446) (not e!114688))))

(assert (=> b!173604 (= res!82446 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (= (and d!52641 (not res!82447)) b!173604))

(assert (= (and b!173604 res!82446) b!173600))

(assert (= (and b!173604 res!82445) b!173601))

(assert (= (and b!173601 c!30958) b!173603))

(assert (= (and b!173601 (not c!30958)) b!173602))

(assert (= (or b!173603 b!173602) bm!17600))

(declare-fun m!202201 () Bool)

(assert (=> b!173600 m!202201))

(assert (=> b!173600 m!202201))

(declare-fun m!202203 () Bool)

(assert (=> b!173600 m!202203))

(assert (=> b!173601 m!202201))

(assert (=> b!173601 m!202201))

(declare-fun m!202205 () Bool)

(assert (=> b!173601 m!202205))

(assert (=> bm!17600 m!202201))

(declare-fun m!202207 () Bool)

(assert (=> bm!17600 m!202207))

(assert (=> b!173604 m!202201))

(assert (=> b!173604 m!202201))

(assert (=> b!173604 m!202205))

(assert (=> b!173288 d!52641))

(declare-fun b!173614 () Bool)

(declare-fun res!82457 () Bool)

(declare-fun e!114691 () Bool)

(assert (=> b!173614 (=> (not res!82457) (not e!114691))))

(declare-fun size!3769 (LongMapFixedSize!2304) (_ BitVec 32))

(assert (=> b!173614 (= res!82457 (bvsge (size!3769 thiss!1248) (_size!1201 thiss!1248)))))

(declare-fun d!52643 () Bool)

(declare-fun res!82459 () Bool)

(assert (=> d!52643 (=> (not res!82459) (not e!114691))))

(assert (=> d!52643 (= res!82459 (validMask!0 (mask!8470 thiss!1248)))))

(assert (=> d!52643 (= (simpleValid!143 thiss!1248) e!114691)))

(declare-fun b!173616 () Bool)

(assert (=> b!173616 (= e!114691 (and (bvsge (extraKeys!3337 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3337 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1201 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!173613 () Bool)

(declare-fun res!82456 () Bool)

(assert (=> b!173613 (=> (not res!82456) (not e!114691))))

(assert (=> b!173613 (= res!82456 (and (= (size!3766 (_values!3581 thiss!1248)) (bvadd (mask!8470 thiss!1248) #b00000000000000000000000000000001)) (= (size!3765 (_keys!5439 thiss!1248)) (size!3766 (_values!3581 thiss!1248))) (bvsge (_size!1201 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1201 thiss!1248) (bvadd (mask!8470 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!173615 () Bool)

(declare-fun res!82458 () Bool)

(assert (=> b!173615 (=> (not res!82458) (not e!114691))))

(assert (=> b!173615 (= res!82458 (= (size!3769 thiss!1248) (bvadd (_size!1201 thiss!1248) (bvsdiv (bvadd (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!52643 res!82459) b!173613))

(assert (= (and b!173613 res!82456) b!173614))

(assert (= (and b!173614 res!82457) b!173615))

(assert (= (and b!173615 res!82458) b!173616))

(declare-fun m!202209 () Bool)

(assert (=> b!173614 m!202209))

(assert (=> d!52643 m!201707))

(assert (=> b!173615 m!202209))

(assert (=> d!52505 d!52643))

(declare-fun d!52645 () Bool)

(declare-fun e!114692 () Bool)

(assert (=> d!52645 e!114692))

(declare-fun res!82460 () Bool)

(assert (=> d!52645 (=> res!82460 e!114692)))

(declare-fun lt!86005 () Bool)

(assert (=> d!52645 (= res!82460 (not lt!86005))))

(declare-fun lt!86007 () Bool)

(assert (=> d!52645 (= lt!86005 lt!86007)))

(declare-fun lt!86008 () Unit!5311)

(declare-fun e!114693 () Unit!5311)

(assert (=> d!52645 (= lt!86008 e!114693)))

(declare-fun c!30959 () Bool)

(assert (=> d!52645 (= c!30959 lt!86007)))

(assert (=> d!52645 (= lt!86007 (containsKey!188 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52645 (= (contains!1153 lt!85847 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86005)))

(declare-fun b!173617 () Bool)

(declare-fun lt!86006 () Unit!5311)

(assert (=> b!173617 (= e!114693 lt!86006)))

(assert (=> b!173617 (= lt!86006 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173617 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173618 () Bool)

(declare-fun Unit!5324 () Unit!5311)

(assert (=> b!173618 (= e!114693 Unit!5324)))

(declare-fun b!173619 () Bool)

(assert (=> b!173619 (= e!114692 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!52645 c!30959) b!173617))

(assert (= (and d!52645 (not c!30959)) b!173618))

(assert (= (and d!52645 (not res!82460)) b!173619))

(assert (=> d!52645 m!201715))

(declare-fun m!202211 () Bool)

(assert (=> d!52645 m!202211))

(assert (=> b!173617 m!201715))

(declare-fun m!202213 () Bool)

(assert (=> b!173617 m!202213))

(assert (=> b!173617 m!201715))

(assert (=> b!173617 m!201859))

(assert (=> b!173617 m!201859))

(declare-fun m!202215 () Bool)

(assert (=> b!173617 m!202215))

(assert (=> b!173619 m!201715))

(assert (=> b!173619 m!201859))

(assert (=> b!173619 m!201859))

(assert (=> b!173619 m!202215))

(assert (=> b!173372 d!52645))

(declare-fun d!52647 () Bool)

(declare-fun e!114694 () Bool)

(assert (=> d!52647 e!114694))

(declare-fun res!82461 () Bool)

(assert (=> d!52647 (=> res!82461 e!114694)))

(declare-fun lt!86009 () Bool)

(assert (=> d!52647 (= res!82461 (not lt!86009))))

(declare-fun lt!86011 () Bool)

(assert (=> d!52647 (= lt!86009 lt!86011)))

(declare-fun lt!86012 () Unit!5311)

(declare-fun e!114695 () Unit!5311)

(assert (=> d!52647 (= lt!86012 e!114695)))

(declare-fun c!30960 () Bool)

(assert (=> d!52647 (= c!30960 lt!86011)))

(assert (=> d!52647 (= lt!86011 (containsKey!188 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> d!52647 (= (contains!1153 lt!85877 (_1!1628 (tuple2!3237 key!828 v!309))) lt!86009)))

(declare-fun b!173620 () Bool)

(declare-fun lt!86010 () Unit!5311)

(assert (=> b!173620 (= e!114695 lt!86010)))

(assert (=> b!173620 (= lt!86010 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> b!173620 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!173621 () Bool)

(declare-fun Unit!5325 () Unit!5311)

(assert (=> b!173621 (= e!114695 Unit!5325)))

(declare-fun b!173622 () Bool)

(assert (=> b!173622 (= e!114694 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52647 c!30960) b!173620))

(assert (= (and d!52647 (not c!30960)) b!173621))

(assert (= (and d!52647 (not res!82461)) b!173622))

(declare-fun m!202217 () Bool)

(assert (=> d!52647 m!202217))

(declare-fun m!202219 () Bool)

(assert (=> b!173620 m!202219))

(assert (=> b!173620 m!201845))

(assert (=> b!173620 m!201845))

(declare-fun m!202221 () Bool)

(assert (=> b!173620 m!202221))

(assert (=> b!173622 m!201845))

(assert (=> b!173622 m!201845))

(assert (=> b!173622 m!202221))

(assert (=> d!52525 d!52647))

(declare-fun b!173623 () Bool)

(declare-fun e!114696 () Option!190)

(assert (=> b!173623 (= e!114696 (Some!189 (_2!1628 (h!2839 lt!85878))))))

(declare-fun b!173626 () Bool)

(declare-fun e!114697 () Option!190)

(assert (=> b!173626 (= e!114697 None!188)))

(declare-fun b!173624 () Bool)

(assert (=> b!173624 (= e!114696 e!114697)))

(declare-fun c!30962 () Bool)

(assert (=> b!173624 (= c!30962 (and ((_ is Cons!2222) lt!85878) (not (= (_1!1628 (h!2839 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun b!173625 () Bool)

(assert (=> b!173625 (= e!114697 (getValueByKey!184 (t!7041 lt!85878) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun c!30961 () Bool)

(declare-fun d!52649 () Bool)

(assert (=> d!52649 (= c!30961 (and ((_ is Cons!2222) lt!85878) (= (_1!1628 (h!2839 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52649 (= (getValueByKey!184 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))) e!114696)))

(assert (= (and d!52649 c!30961) b!173623))

(assert (= (and d!52649 (not c!30961)) b!173624))

(assert (= (and b!173624 c!30962) b!173625))

(assert (= (and b!173624 (not c!30962)) b!173626))

(declare-fun m!202223 () Bool)

(assert (=> b!173625 m!202223))

(assert (=> d!52525 d!52649))

(declare-fun d!52651 () Bool)

(assert (=> d!52651 (= (getValueByKey!184 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))) (Some!189 (_2!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun lt!86013 () Unit!5311)

(assert (=> d!52651 (= lt!86013 (choose!939 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun e!114698 () Bool)

(assert (=> d!52651 e!114698))

(declare-fun res!82462 () Bool)

(assert (=> d!52651 (=> (not res!82462) (not e!114698))))

(assert (=> d!52651 (= res!82462 (isStrictlySorted!327 lt!85878))))

(assert (=> d!52651 (= (lemmaContainsTupThenGetReturnValue!99 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))) lt!86013)))

(declare-fun b!173627 () Bool)

(declare-fun res!82463 () Bool)

(assert (=> b!173627 (=> (not res!82463) (not e!114698))))

(assert (=> b!173627 (= res!82463 (containsKey!188 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!173628 () Bool)

(assert (=> b!173628 (= e!114698 (contains!1154 lt!85878 (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52651 res!82462) b!173627))

(assert (= (and b!173627 res!82463) b!173628))

(assert (=> d!52651 m!201839))

(declare-fun m!202225 () Bool)

(assert (=> d!52651 m!202225))

(declare-fun m!202227 () Bool)

(assert (=> d!52651 m!202227))

(declare-fun m!202229 () Bool)

(assert (=> b!173627 m!202229))

(declare-fun m!202231 () Bool)

(assert (=> b!173628 m!202231))

(assert (=> d!52525 d!52651))

(declare-fun bm!17602 () Bool)

(declare-fun call!17606 () List!2226)

(declare-fun call!17604 () List!2226)

(assert (=> bm!17602 (= call!17606 call!17604)))

(declare-fun e!114702 () List!2226)

(declare-fun b!173629 () Bool)

(declare-fun c!30966 () Bool)

(declare-fun c!30964 () Bool)

(assert (=> b!173629 (= e!114702 (ite c!30964 (t!7041 (toList!1104 (map!1881 thiss!1248))) (ite c!30966 (Cons!2222 (h!2839 (toList!1104 (map!1881 thiss!1248))) (t!7041 (toList!1104 (map!1881 thiss!1248)))) Nil!2223)))))

(declare-fun b!173630 () Bool)

(declare-fun res!82464 () Bool)

(declare-fun e!114703 () Bool)

(assert (=> b!173630 (=> (not res!82464) (not e!114703))))

(declare-fun lt!86014 () List!2226)

(assert (=> b!173630 (= res!82464 (containsKey!188 lt!86014 (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!173631 () Bool)

(declare-fun e!114700 () List!2226)

(assert (=> b!173631 (= e!114700 call!17604)))

(declare-fun b!173632 () Bool)

(assert (=> b!173632 (= c!30966 (and ((_ is Cons!2222) (toList!1104 (map!1881 thiss!1248))) (bvsgt (_1!1628 (h!2839 (toList!1104 (map!1881 thiss!1248)))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun e!114701 () List!2226)

(declare-fun e!114699 () List!2226)

(assert (=> b!173632 (= e!114701 e!114699)))

(declare-fun b!173633 () Bool)

(declare-fun call!17605 () List!2226)

(assert (=> b!173633 (= e!114699 call!17605)))

(declare-fun b!173634 () Bool)

(assert (=> b!173634 (= e!114699 call!17605)))

(declare-fun b!173635 () Bool)

(assert (=> b!173635 (= e!114700 e!114701)))

(assert (=> b!173635 (= c!30964 (and ((_ is Cons!2222) (toList!1104 (map!1881 thiss!1248))) (= (_1!1628 (h!2839 (toList!1104 (map!1881 thiss!1248)))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun c!30963 () Bool)

(declare-fun bm!17601 () Bool)

(assert (=> bm!17601 (= call!17604 ($colon$colon!97 e!114702 (ite c!30963 (h!2839 (toList!1104 (map!1881 thiss!1248))) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun c!30965 () Bool)

(assert (=> bm!17601 (= c!30965 c!30963)))

(declare-fun d!52653 () Bool)

(assert (=> d!52653 e!114703))

(declare-fun res!82465 () Bool)

(assert (=> d!52653 (=> (not res!82465) (not e!114703))))

(assert (=> d!52653 (= res!82465 (isStrictlySorted!327 lt!86014))))

(assert (=> d!52653 (= lt!86014 e!114700)))

(assert (=> d!52653 (= c!30963 (and ((_ is Cons!2222) (toList!1104 (map!1881 thiss!1248))) (bvslt (_1!1628 (h!2839 (toList!1104 (map!1881 thiss!1248)))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52653 (isStrictlySorted!327 (toList!1104 (map!1881 thiss!1248)))))

(assert (=> d!52653 (= (insertStrictlySorted!101 (toList!1104 (map!1881 thiss!1248)) (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))) lt!86014)))

(declare-fun bm!17603 () Bool)

(assert (=> bm!17603 (= call!17605 call!17606)))

(declare-fun b!173636 () Bool)

(assert (=> b!173636 (= e!114701 call!17606)))

(declare-fun b!173637 () Bool)

(assert (=> b!173637 (= e!114702 (insertStrictlySorted!101 (t!7041 (toList!1104 (map!1881 thiss!1248))) (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!173638 () Bool)

(assert (=> b!173638 (= e!114703 (contains!1154 lt!86014 (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52653 c!30963) b!173631))

(assert (= (and d!52653 (not c!30963)) b!173635))

(assert (= (and b!173635 c!30964) b!173636))

(assert (= (and b!173635 (not c!30964)) b!173632))

(assert (= (and b!173632 c!30966) b!173633))

(assert (= (and b!173632 (not c!30966)) b!173634))

(assert (= (or b!173633 b!173634) bm!17603))

(assert (= (or b!173636 bm!17603) bm!17602))

(assert (= (or b!173631 bm!17602) bm!17601))

(assert (= (and bm!17601 c!30965) b!173637))

(assert (= (and bm!17601 (not c!30965)) b!173629))

(assert (= (and d!52653 res!82465) b!173630))

(assert (= (and b!173630 res!82464) b!173638))

(declare-fun m!202233 () Bool)

(assert (=> b!173638 m!202233))

(declare-fun m!202235 () Bool)

(assert (=> bm!17601 m!202235))

(declare-fun m!202237 () Bool)

(assert (=> b!173637 m!202237))

(declare-fun m!202239 () Bool)

(assert (=> b!173630 m!202239))

(declare-fun m!202241 () Bool)

(assert (=> d!52653 m!202241))

(declare-fun m!202243 () Bool)

(assert (=> d!52653 m!202243))

(assert (=> d!52525 d!52653))

(declare-fun bm!17606 () Bool)

(declare-fun call!17609 () (_ BitVec 32))

(assert (=> bm!17606 (= call!17609 (arrayCountValidKeys!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173647 () Bool)

(declare-fun e!114709 () (_ BitVec 32))

(declare-fun e!114708 () (_ BitVec 32))

(assert (=> b!173647 (= e!114709 e!114708)))

(declare-fun c!30972 () Bool)

(assert (=> b!173647 (= c!30972 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173648 () Bool)

(assert (=> b!173648 (= e!114709 #b00000000000000000000000000000000)))

(declare-fun d!52655 () Bool)

(declare-fun lt!86017 () (_ BitVec 32))

(assert (=> d!52655 (and (bvsge lt!86017 #b00000000000000000000000000000000) (bvsle lt!86017 (bvsub (size!3765 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52655 (= lt!86017 e!114709)))

(declare-fun c!30971 () Bool)

(assert (=> d!52655 (= c!30971 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52655 (and (bvsle #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3765 (_keys!5439 thiss!1248)) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52655 (= (arrayCountValidKeys!0 (_keys!5439 thiss!1248) #b00000000000000000000000000000000 (size!3765 (_keys!5439 thiss!1248))) lt!86017)))

(declare-fun b!173649 () Bool)

(assert (=> b!173649 (= e!114708 (bvadd #b00000000000000000000000000000001 call!17609))))

(declare-fun b!173650 () Bool)

(assert (=> b!173650 (= e!114708 call!17609)))

(assert (= (and d!52655 c!30971) b!173648))

(assert (= (and d!52655 (not c!30971)) b!173647))

(assert (= (and b!173647 c!30972) b!173649))

(assert (= (and b!173647 (not c!30972)) b!173650))

(assert (= (or b!173649 b!173650) bm!17606))

(declare-fun m!202245 () Bool)

(assert (=> bm!17606 m!202245))

(assert (=> b!173647 m!201715))

(assert (=> b!173647 m!201715))

(assert (=> b!173647 m!201717))

(assert (=> b!173283 d!52655))

(declare-fun d!52657 () Bool)

(assert (=> d!52657 (= (apply!130 lt!85813 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1970 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7171 () Bool)

(assert (= bs!7171 d!52657))

(assert (=> bs!7171 m!201715))

(assert (=> bs!7171 m!202019))

(assert (=> bs!7171 m!202019))

(declare-fun m!202247 () Bool)

(assert (=> bs!7171 m!202247))

(assert (=> b!173351 d!52657))

(assert (=> b!173351 d!52535))

(declare-fun d!52659 () Bool)

(declare-fun lt!86018 () Bool)

(assert (=> d!52659 (= lt!86018 (select (content!148 (toList!1104 lt!85839)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun e!114711 () Bool)

(assert (=> d!52659 (= lt!86018 e!114711)))

(declare-fun res!82467 () Bool)

(assert (=> d!52659 (=> (not res!82467) (not e!114711))))

(assert (=> d!52659 (= res!82467 ((_ is Cons!2222) (toList!1104 lt!85839)))))

(assert (=> d!52659 (= (contains!1154 (toList!1104 lt!85839) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!86018)))

(declare-fun b!173651 () Bool)

(declare-fun e!114710 () Bool)

(assert (=> b!173651 (= e!114711 e!114710)))

(declare-fun res!82466 () Bool)

(assert (=> b!173651 (=> res!82466 e!114710)))

(assert (=> b!173651 (= res!82466 (= (h!2839 (toList!1104 lt!85839)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!173652 () Bool)

(assert (=> b!173652 (= e!114710 (contains!1154 (t!7041 (toList!1104 lt!85839)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!52659 res!82467) b!173651))

(assert (= (and b!173651 (not res!82466)) b!173652))

(declare-fun m!202249 () Bool)

(assert (=> d!52659 m!202249))

(declare-fun m!202251 () Bool)

(assert (=> d!52659 m!202251))

(declare-fun m!202253 () Bool)

(assert (=> b!173652 m!202253))

(assert (=> b!173359 d!52659))

(declare-fun d!52661 () Bool)

(declare-fun e!114712 () Bool)

(assert (=> d!52661 e!114712))

(declare-fun res!82468 () Bool)

(assert (=> d!52661 (=> (not res!82468) (not e!114712))))

(declare-fun lt!86020 () ListLongMap!2177)

(assert (=> d!52661 (= res!82468 (contains!1153 lt!86020 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun lt!86021 () List!2226)

(assert (=> d!52661 (= lt!86020 (ListLongMap!2178 lt!86021))))

(declare-fun lt!86022 () Unit!5311)

(declare-fun lt!86019 () Unit!5311)

(assert (=> d!52661 (= lt!86022 lt!86019)))

(assert (=> d!52661 (= (getValueByKey!184 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) (Some!189 (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52661 (= lt!86019 (lemmaContainsTupThenGetReturnValue!99 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52661 (= lt!86021 (insertStrictlySorted!101 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52661 (= (+!241 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) lt!86020)))

(declare-fun b!173653 () Bool)

(declare-fun res!82469 () Bool)

(assert (=> b!173653 (=> (not res!82469) (not e!114712))))

(assert (=> b!173653 (= res!82469 (= (getValueByKey!184 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) (Some!189 (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun b!173654 () Bool)

(assert (=> b!173654 (= e!114712 (contains!1154 (toList!1104 lt!86020) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (= (and d!52661 res!82468) b!173653))

(assert (= (and b!173653 res!82469) b!173654))

(declare-fun m!202255 () Bool)

(assert (=> d!52661 m!202255))

(declare-fun m!202257 () Bool)

(assert (=> d!52661 m!202257))

(declare-fun m!202259 () Bool)

(assert (=> d!52661 m!202259))

(declare-fun m!202261 () Bool)

(assert (=> d!52661 m!202261))

(declare-fun m!202263 () Bool)

(assert (=> b!173653 m!202263))

(declare-fun m!202265 () Bool)

(assert (=> b!173654 m!202265))

(assert (=> bm!17568 d!52661))

(declare-fun bm!17607 () Bool)

(declare-fun call!17610 () (_ BitVec 32))

(assert (=> bm!17607 (= call!17610 (arrayCountValidKeys!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!173655 () Bool)

(declare-fun e!114714 () (_ BitVec 32))

(declare-fun e!114713 () (_ BitVec 32))

(assert (=> b!173655 (= e!114714 e!114713)))

(declare-fun c!30974 () Bool)

(assert (=> b!173655 (= c!30974 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173656 () Bool)

(assert (=> b!173656 (= e!114714 #b00000000000000000000000000000000)))

(declare-fun d!52663 () Bool)

(declare-fun lt!86023 () (_ BitVec 32))

(assert (=> d!52663 (and (bvsge lt!86023 #b00000000000000000000000000000000) (bvsle lt!86023 (bvsub (size!3765 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> d!52663 (= lt!86023 e!114714)))

(declare-fun c!30973 () Bool)

(assert (=> d!52663 (= c!30973 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52663 (and (bvsle #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3765 (_keys!5439 lt!85751)) (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52663 (= (arrayCountValidKeys!0 (_keys!5439 lt!85751) #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))) lt!86023)))

(declare-fun b!173657 () Bool)

(assert (=> b!173657 (= e!114713 (bvadd #b00000000000000000000000000000001 call!17610))))

(declare-fun b!173658 () Bool)

(assert (=> b!173658 (= e!114713 call!17610)))

(assert (= (and d!52663 c!30973) b!173656))

(assert (= (and d!52663 (not c!30973)) b!173655))

(assert (= (and b!173655 c!30974) b!173657))

(assert (= (and b!173655 (not c!30974)) b!173658))

(assert (= (or b!173657 b!173658) bm!17607))

(declare-fun m!202267 () Bool)

(assert (=> bm!17607 m!202267))

(assert (=> b!173655 m!202201))

(assert (=> b!173655 m!202201))

(assert (=> b!173655 m!202205))

(assert (=> b!173286 d!52663))

(declare-fun d!52665 () Bool)

(declare-fun e!114715 () Bool)

(assert (=> d!52665 e!114715))

(declare-fun res!82470 () Bool)

(assert (=> d!52665 (=> res!82470 e!114715)))

(declare-fun lt!86024 () Bool)

(assert (=> d!52665 (= res!82470 (not lt!86024))))

(declare-fun lt!86026 () Bool)

(assert (=> d!52665 (= lt!86024 lt!86026)))

(declare-fun lt!86027 () Unit!5311)

(declare-fun e!114716 () Unit!5311)

(assert (=> d!52665 (= lt!86027 e!114716)))

(declare-fun c!30975 () Bool)

(assert (=> d!52665 (= c!30975 lt!86026)))

(assert (=> d!52665 (= lt!86026 (containsKey!188 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52665 (= (contains!1153 lt!85813 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86024)))

(declare-fun b!173659 () Bool)

(declare-fun lt!86025 () Unit!5311)

(assert (=> b!173659 (= e!114716 lt!86025)))

(assert (=> b!173659 (= lt!86025 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173659 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173660 () Bool)

(declare-fun Unit!5326 () Unit!5311)

(assert (=> b!173660 (= e!114716 Unit!5326)))

(declare-fun b!173661 () Bool)

(assert (=> b!173661 (= e!114715 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52665 c!30975) b!173659))

(assert (= (and d!52665 (not c!30975)) b!173660))

(assert (= (and d!52665 (not res!82470)) b!173661))

(declare-fun m!202269 () Bool)

(assert (=> d!52665 m!202269))

(declare-fun m!202271 () Bool)

(assert (=> b!173659 m!202271))

(declare-fun m!202273 () Bool)

(assert (=> b!173659 m!202273))

(assert (=> b!173659 m!202273))

(declare-fun m!202275 () Bool)

(assert (=> b!173659 m!202275))

(assert (=> b!173661 m!202273))

(assert (=> b!173661 m!202273))

(assert (=> b!173661 m!202275))

(assert (=> bm!17569 d!52665))

(declare-fun b!173662 () Bool)

(declare-fun e!114718 () Bool)

(declare-fun call!17611 () Bool)

(assert (=> b!173662 (= e!114718 call!17611)))

(declare-fun d!52667 () Bool)

(declare-fun res!82472 () Bool)

(declare-fun e!114717 () Bool)

(assert (=> d!52667 (=> res!82472 e!114717)))

(assert (=> d!52667 (= res!82472 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52667 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5439 lt!85751) (mask!8470 lt!85751)) e!114717)))

(declare-fun b!173663 () Bool)

(assert (=> b!173663 (= e!114717 e!114718)))

(declare-fun c!30976 () Bool)

(assert (=> b!173663 (= c!30976 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173664 () Bool)

(declare-fun e!114719 () Bool)

(assert (=> b!173664 (= e!114719 call!17611)))

(declare-fun bm!17608 () Bool)

(assert (=> bm!17608 (= call!17611 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5439 lt!85751) (mask!8470 lt!85751)))))

(declare-fun b!173665 () Bool)

(assert (=> b!173665 (= e!114718 e!114719)))

(declare-fun lt!86029 () (_ BitVec 64))

(assert (=> b!173665 (= lt!86029 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(declare-fun lt!86030 () Unit!5311)

(assert (=> b!173665 (= lt!86030 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000))))

(assert (=> b!173665 (arrayContainsKey!0 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000)))

(declare-fun lt!86028 () Unit!5311)

(assert (=> b!173665 (= lt!86028 lt!86030)))

(declare-fun res!82471 () Bool)

(assert (=> b!173665 (= res!82471 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (_keys!5439 lt!85751) (mask!8470 lt!85751)) (Found!552 #b00000000000000000000000000000000)))))

(assert (=> b!173665 (=> (not res!82471) (not e!114719))))

(assert (= (and d!52667 (not res!82472)) b!173663))

(assert (= (and b!173663 c!30976) b!173665))

(assert (= (and b!173663 (not c!30976)) b!173662))

(assert (= (and b!173665 res!82471) b!173664))

(assert (= (or b!173664 b!173662) bm!17608))

(assert (=> b!173663 m!202201))

(assert (=> b!173663 m!202201))

(assert (=> b!173663 m!202205))

(declare-fun m!202277 () Bool)

(assert (=> bm!17608 m!202277))

(assert (=> b!173665 m!202201))

(declare-fun m!202279 () Bool)

(assert (=> b!173665 m!202279))

(declare-fun m!202281 () Bool)

(assert (=> b!173665 m!202281))

(assert (=> b!173665 m!202201))

(declare-fun m!202283 () Bool)

(assert (=> b!173665 m!202283))

(assert (=> b!173287 d!52667))

(assert (=> b!173368 d!52575))

(declare-fun d!52669 () Bool)

(assert (=> d!52669 (= (apply!130 lt!85813 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7172 () Bool)

(assert (= bs!7172 d!52669))

(assert (=> bs!7172 m!202273))

(assert (=> bs!7172 m!202273))

(declare-fun m!202285 () Bool)

(assert (=> bs!7172 m!202285))

(assert (=> b!173334 d!52669))

(declare-fun b!173666 () Bool)

(declare-fun e!114720 () Option!190)

(assert (=> b!173666 (= e!114720 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85839)))))))

(declare-fun b!173669 () Bool)

(declare-fun e!114721 () Option!190)

(assert (=> b!173669 (= e!114721 None!188)))

(declare-fun b!173667 () Bool)

(assert (=> b!173667 (= e!114720 e!114721)))

(declare-fun c!30978 () Bool)

(assert (=> b!173667 (= c!30978 (and ((_ is Cons!2222) (toList!1104 lt!85839)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173668 () Bool)

(assert (=> b!173668 (= e!114721 (getValueByKey!184 (t!7041 (toList!1104 lt!85839)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!52671 () Bool)

(declare-fun c!30977 () Bool)

(assert (=> d!52671 (= c!30977 (and ((_ is Cons!2222) (toList!1104 lt!85839)) (= (_1!1628 (h!2839 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52671 (= (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114720)))

(assert (= (and d!52671 c!30977) b!173666))

(assert (= (and d!52671 (not c!30977)) b!173667))

(assert (= (and b!173667 c!30978) b!173668))

(assert (= (and b!173667 (not c!30978)) b!173669))

(declare-fun m!202287 () Bool)

(assert (=> b!173668 m!202287))

(assert (=> b!173358 d!52671))

(declare-fun d!52673 () Bool)

(declare-fun e!114722 () Bool)

(assert (=> d!52673 e!114722))

(declare-fun res!82473 () Bool)

(assert (=> d!52673 (=> res!82473 e!114722)))

(declare-fun lt!86031 () Bool)

(assert (=> d!52673 (= res!82473 (not lt!86031))))

(declare-fun lt!86033 () Bool)

(assert (=> d!52673 (= lt!86031 lt!86033)))

(declare-fun lt!86034 () Unit!5311)

(declare-fun e!114723 () Unit!5311)

(assert (=> d!52673 (= lt!86034 e!114723)))

(declare-fun c!30979 () Bool)

(assert (=> d!52673 (= c!30979 lt!86033)))

(assert (=> d!52673 (= lt!86033 (containsKey!188 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52673 (= (contains!1153 lt!85813 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86031)))

(declare-fun b!173670 () Bool)

(declare-fun lt!86032 () Unit!5311)

(assert (=> b!173670 (= e!114723 lt!86032)))

(assert (=> b!173670 (= lt!86032 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173670 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173671 () Bool)

(declare-fun Unit!5327 () Unit!5311)

(assert (=> b!173671 (= e!114723 Unit!5327)))

(declare-fun b!173672 () Bool)

(assert (=> b!173672 (= e!114722 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52673 c!30979) b!173670))

(assert (= (and d!52673 (not c!30979)) b!173671))

(assert (= (and d!52673 (not res!82473)) b!173672))

(declare-fun m!202289 () Bool)

(assert (=> d!52673 m!202289))

(declare-fun m!202291 () Bool)

(assert (=> b!173670 m!202291))

(declare-fun m!202293 () Bool)

(assert (=> b!173670 m!202293))

(assert (=> b!173670 m!202293))

(declare-fun m!202295 () Bool)

(assert (=> b!173670 m!202295))

(assert (=> b!173672 m!202293))

(assert (=> b!173672 m!202293))

(assert (=> b!173672 m!202295))

(assert (=> bm!17572 d!52673))

(declare-fun d!52675 () Bool)

(assert (=> d!52675 (= (apply!130 lt!85813 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7173 () Bool)

(assert (= bs!7173 d!52675))

(assert (=> bs!7173 m!202293))

(assert (=> bs!7173 m!202293))

(declare-fun m!202297 () Bool)

(assert (=> bs!7173 m!202297))

(assert (=> b!173331 d!52675))

(declare-fun b!173674 () Bool)

(declare-fun res!82475 () Bool)

(declare-fun e!114724 () Bool)

(assert (=> b!173674 (=> (not res!82475) (not e!114724))))

(assert (=> b!173674 (= res!82475 (bvsge (size!3769 lt!85751) (_size!1201 lt!85751)))))

(declare-fun d!52677 () Bool)

(declare-fun res!82477 () Bool)

(assert (=> d!52677 (=> (not res!82477) (not e!114724))))

(assert (=> d!52677 (= res!82477 (validMask!0 (mask!8470 lt!85751)))))

(assert (=> d!52677 (= (simpleValid!143 lt!85751) e!114724)))

(declare-fun b!173676 () Bool)

(assert (=> b!173676 (= e!114724 (and (bvsge (extraKeys!3337 lt!85751) #b00000000000000000000000000000000) (bvsle (extraKeys!3337 lt!85751) #b00000000000000000000000000000011) (bvsge (_vacant!1201 lt!85751) #b00000000000000000000000000000000)))))

(declare-fun b!173673 () Bool)

(declare-fun res!82474 () Bool)

(assert (=> b!173673 (=> (not res!82474) (not e!114724))))

(assert (=> b!173673 (= res!82474 (and (= (size!3766 (_values!3581 lt!85751)) (bvadd (mask!8470 lt!85751) #b00000000000000000000000000000001)) (= (size!3765 (_keys!5439 lt!85751)) (size!3766 (_values!3581 lt!85751))) (bvsge (_size!1201 lt!85751) #b00000000000000000000000000000000) (bvsle (_size!1201 lt!85751) (bvadd (mask!8470 lt!85751) #b00000000000000000000000000000001))))))

(declare-fun b!173675 () Bool)

(declare-fun res!82476 () Bool)

(assert (=> b!173675 (=> (not res!82476) (not e!114724))))

(assert (=> b!173675 (= res!82476 (= (size!3769 lt!85751) (bvadd (_size!1201 lt!85751) (bvsdiv (bvadd (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!52677 res!82477) b!173673))

(assert (= (and b!173673 res!82474) b!173674))

(assert (= (and b!173674 res!82475) b!173675))

(assert (= (and b!173675 res!82476) b!173676))

(declare-fun m!202299 () Bool)

(assert (=> b!173674 m!202299))

(declare-fun m!202301 () Bool)

(assert (=> d!52677 m!202301))

(assert (=> b!173675 m!202299))

(assert (=> d!52507 d!52677))

(assert (=> bm!17573 d!52551))

(declare-fun bm!17609 () Bool)

(declare-fun call!17614 () ListLongMap!2177)

(declare-fun call!17615 () ListLongMap!2177)

(assert (=> bm!17609 (= call!17614 call!17615)))

(declare-fun b!173677 () Bool)

(declare-fun e!114727 () Bool)

(declare-fun lt!86040 () ListLongMap!2177)

(assert (=> b!173677 (= e!114727 (= (apply!130 lt!86040 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3441 lt!85751)))))

(declare-fun b!173678 () Bool)

(declare-fun res!82483 () Bool)

(declare-fun e!114736 () Bool)

(assert (=> b!173678 (=> (not res!82483) (not e!114736))))

(declare-fun e!114726 () Bool)

(assert (=> b!173678 (= res!82483 e!114726)))

(declare-fun c!30982 () Bool)

(assert (=> b!173678 (= c!30982 (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!173679 () Bool)

(declare-fun c!30984 () Bool)

(assert (=> b!173679 (= c!30984 (and (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!114731 () ListLongMap!2177)

(declare-fun e!114732 () ListLongMap!2177)

(assert (=> b!173679 (= e!114731 e!114732)))

(declare-fun b!173680 () Bool)

(declare-fun e!114730 () Bool)

(assert (=> b!173680 (= e!114730 (= (apply!130 lt!86040 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3439 lt!85751)))))

(declare-fun b!173681 () Bool)

(declare-fun e!114733 () ListLongMap!2177)

(assert (=> b!173681 (= e!114733 e!114731)))

(declare-fun c!30983 () Bool)

(assert (=> b!173681 (= c!30983 (and (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!30980 () Bool)

(declare-fun bm!17610 () Bool)

(declare-fun call!17618 () ListLongMap!2177)

(declare-fun call!17616 () ListLongMap!2177)

(assert (=> bm!17610 (= call!17616 (+!241 (ite c!30980 call!17615 (ite c!30983 call!17614 call!17618)) (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(declare-fun bm!17611 () Bool)

(declare-fun call!17617 () Bool)

(assert (=> bm!17611 (= call!17617 (contains!1153 lt!86040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173682 () Bool)

(declare-fun e!114737 () Bool)

(assert (=> b!173682 (= e!114737 e!114727)))

(declare-fun res!82486 () Bool)

(declare-fun call!17612 () Bool)

(assert (=> b!173682 (= res!82486 call!17612)))

(assert (=> b!173682 (=> (not res!82486) (not e!114727))))

(declare-fun b!173683 () Bool)

(declare-fun res!82480 () Bool)

(assert (=> b!173683 (=> (not res!82480) (not e!114736))))

(declare-fun e!114735 () Bool)

(assert (=> b!173683 (= res!82480 e!114735)))

(declare-fun res!82479 () Bool)

(assert (=> b!173683 (=> res!82479 e!114735)))

(declare-fun e!114725 () Bool)

(assert (=> b!173683 (= res!82479 (not e!114725))))

(declare-fun res!82484 () Bool)

(assert (=> b!173683 (=> (not res!82484) (not e!114725))))

(assert (=> b!173683 (= res!82484 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!173684 () Bool)

(assert (=> b!173684 (= e!114726 (not call!17617))))

(declare-fun b!173685 () Bool)

(declare-fun e!114729 () Bool)

(assert (=> b!173685 (= e!114729 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173686 () Bool)

(assert (=> b!173686 (= e!114726 e!114730)))

(declare-fun res!82481 () Bool)

(assert (=> b!173686 (= res!82481 call!17617)))

(assert (=> b!173686 (=> (not res!82481) (not e!114730))))

(declare-fun bm!17612 () Bool)

(assert (=> bm!17612 (= call!17618 call!17614)))

(declare-fun d!52679 () Bool)

(assert (=> d!52679 e!114736))

(declare-fun res!82482 () Bool)

(assert (=> d!52679 (=> (not res!82482) (not e!114736))))

(assert (=> d!52679 (= res!82482 (or (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))))

(declare-fun lt!86054 () ListLongMap!2177)

(assert (=> d!52679 (= lt!86040 lt!86054)))

(declare-fun lt!86046 () Unit!5311)

(declare-fun e!114734 () Unit!5311)

(assert (=> d!52679 (= lt!86046 e!114734)))

(declare-fun c!30981 () Bool)

(assert (=> d!52679 (= c!30981 e!114729)))

(declare-fun res!82485 () Bool)

(assert (=> d!52679 (=> (not res!82485) (not e!114729))))

(assert (=> d!52679 (= res!82485 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52679 (= lt!86054 e!114733)))

(assert (=> d!52679 (= c!30980 (and (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!52679 (validMask!0 (mask!8470 lt!85751))))

(assert (=> d!52679 (= (getCurrentListMap!751 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)) lt!86040)))

(declare-fun bm!17613 () Bool)

(declare-fun call!17613 () ListLongMap!2177)

(assert (=> bm!17613 (= call!17613 call!17616)))

(declare-fun b!173687 () Bool)

(assert (=> b!173687 (= e!114731 call!17613)))

(declare-fun b!173688 () Bool)

(assert (=> b!173688 (= e!114732 call!17613)))

(declare-fun b!173689 () Bool)

(declare-fun e!114728 () Bool)

(assert (=> b!173689 (= e!114735 e!114728)))

(declare-fun res!82478 () Bool)

(assert (=> b!173689 (=> (not res!82478) (not e!114728))))

(assert (=> b!173689 (= res!82478 (contains!1153 lt!86040 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> b!173689 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!173690 () Bool)

(assert (=> b!173690 (= e!114737 (not call!17612))))

(declare-fun b!173691 () Bool)

(assert (=> b!173691 (= e!114736 e!114737)))

(declare-fun c!30985 () Bool)

(assert (=> b!173691 (= c!30985 (not (= (bvand (extraKeys!3337 lt!85751) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!173692 () Bool)

(declare-fun lt!86056 () Unit!5311)

(assert (=> b!173692 (= e!114734 lt!86056)))

(declare-fun lt!86038 () ListLongMap!2177)

(assert (=> b!173692 (= lt!86038 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun lt!86036 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86036 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86037 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86037 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(declare-fun lt!86039 () Unit!5311)

(assert (=> b!173692 (= lt!86039 (addStillContains!106 lt!86038 lt!86036 (zeroValue!3439 lt!85751) lt!86037))))

(assert (=> b!173692 (contains!1153 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) lt!86037)))

(declare-fun lt!86047 () Unit!5311)

(assert (=> b!173692 (= lt!86047 lt!86039)))

(declare-fun lt!86049 () ListLongMap!2177)

(assert (=> b!173692 (= lt!86049 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun lt!86053 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86053 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86043 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86043 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(declare-fun lt!86052 () Unit!5311)

(assert (=> b!173692 (= lt!86052 (addApplyDifferent!106 lt!86049 lt!86053 (minValue!3441 lt!85751) lt!86043))))

(assert (=> b!173692 (= (apply!130 (+!241 lt!86049 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) lt!86043) (apply!130 lt!86049 lt!86043))))

(declare-fun lt!86042 () Unit!5311)

(assert (=> b!173692 (= lt!86042 lt!86052)))

(declare-fun lt!86055 () ListLongMap!2177)

(assert (=> b!173692 (= lt!86055 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun lt!86048 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86048 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86044 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86044 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(declare-fun lt!86035 () Unit!5311)

(assert (=> b!173692 (= lt!86035 (addApplyDifferent!106 lt!86055 lt!86048 (zeroValue!3439 lt!85751) lt!86044))))

(assert (=> b!173692 (= (apply!130 (+!241 lt!86055 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) lt!86044) (apply!130 lt!86055 lt!86044))))

(declare-fun lt!86050 () Unit!5311)

(assert (=> b!173692 (= lt!86050 lt!86035)))

(declare-fun lt!86041 () ListLongMap!2177)

(assert (=> b!173692 (= lt!86041 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun lt!86051 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86051 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86045 () (_ BitVec 64))

(assert (=> b!173692 (= lt!86045 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(assert (=> b!173692 (= lt!86056 (addApplyDifferent!106 lt!86041 lt!86051 (minValue!3441 lt!85751) lt!86045))))

(assert (=> b!173692 (= (apply!130 (+!241 lt!86041 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) lt!86045) (apply!130 lt!86041 lt!86045))))

(declare-fun b!173693 () Bool)

(assert (=> b!173693 (= e!114725 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun bm!17614 () Bool)

(assert (=> bm!17614 (= call!17612 (contains!1153 lt!86040 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17615 () Bool)

(assert (=> bm!17615 (= call!17615 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)))))

(declare-fun b!173694 () Bool)

(assert (=> b!173694 (= e!114733 (+!241 call!17616 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))

(declare-fun b!173695 () Bool)

(assert (=> b!173695 (= e!114732 call!17618)))

(declare-fun b!173696 () Bool)

(declare-fun Unit!5328 () Unit!5311)

(assert (=> b!173696 (= e!114734 Unit!5328)))

(declare-fun b!173697 () Bool)

(assert (=> b!173697 (= e!114728 (= (apply!130 lt!86040 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!173697 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 lt!85751))))))

(assert (=> b!173697 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (= (and d!52679 c!30980) b!173694))

(assert (= (and d!52679 (not c!30980)) b!173681))

(assert (= (and b!173681 c!30983) b!173687))

(assert (= (and b!173681 (not c!30983)) b!173679))

(assert (= (and b!173679 c!30984) b!173688))

(assert (= (and b!173679 (not c!30984)) b!173695))

(assert (= (or b!173688 b!173695) bm!17612))

(assert (= (or b!173687 bm!17612) bm!17609))

(assert (= (or b!173687 b!173688) bm!17613))

(assert (= (or b!173694 bm!17609) bm!17615))

(assert (= (or b!173694 bm!17613) bm!17610))

(assert (= (and d!52679 res!82485) b!173685))

(assert (= (and d!52679 c!30981) b!173692))

(assert (= (and d!52679 (not c!30981)) b!173696))

(assert (= (and d!52679 res!82482) b!173683))

(assert (= (and b!173683 res!82484) b!173693))

(assert (= (and b!173683 (not res!82479)) b!173689))

(assert (= (and b!173689 res!82478) b!173697))

(assert (= (and b!173683 res!82480) b!173678))

(assert (= (and b!173678 c!30982) b!173686))

(assert (= (and b!173678 (not c!30982)) b!173684))

(assert (= (and b!173686 res!82481) b!173680))

(assert (= (or b!173686 b!173684) bm!17611))

(assert (= (and b!173678 res!82483) b!173691))

(assert (= (and b!173691 c!30985) b!173682))

(assert (= (and b!173691 (not c!30985)) b!173690))

(assert (= (and b!173682 res!82486) b!173677))

(assert (= (or b!173682 b!173690) bm!17614))

(declare-fun b_lambda!6981 () Bool)

(assert (=> (not b_lambda!6981) (not b!173697)))

(declare-fun tb!2779 () Bool)

(declare-fun t!7047 () Bool)

(assert (=> (and b!173250 (= (defaultEntry!3598 thiss!1248) (defaultEntry!3598 lt!85751)) t!7047) tb!2779))

(declare-fun result!4599 () Bool)

(assert (=> tb!2779 (= result!4599 tp_is_empty!4083)))

(assert (=> b!173697 t!7047))

(declare-fun b_and!10785 () Bool)

(assert (= b_and!10783 (and (=> t!7047 result!4599) b_and!10785)))

(declare-fun m!202303 () Bool)

(assert (=> bm!17615 m!202303))

(declare-fun m!202305 () Bool)

(assert (=> bm!17614 m!202305))

(declare-fun m!202307 () Bool)

(assert (=> bm!17610 m!202307))

(assert (=> b!173693 m!202201))

(assert (=> b!173693 m!202201))

(assert (=> b!173693 m!202205))

(assert (=> b!173689 m!202201))

(assert (=> b!173689 m!202201))

(declare-fun m!202309 () Bool)

(assert (=> b!173689 m!202309))

(declare-fun m!202311 () Bool)

(assert (=> bm!17611 m!202311))

(assert (=> b!173685 m!202201))

(assert (=> b!173685 m!202201))

(assert (=> b!173685 m!202205))

(declare-fun m!202313 () Bool)

(assert (=> b!173697 m!202313))

(declare-fun m!202315 () Bool)

(assert (=> b!173697 m!202315))

(declare-fun m!202317 () Bool)

(assert (=> b!173697 m!202317))

(assert (=> b!173697 m!202313))

(assert (=> b!173697 m!202201))

(assert (=> b!173697 m!202201))

(declare-fun m!202319 () Bool)

(assert (=> b!173697 m!202319))

(assert (=> b!173697 m!202315))

(declare-fun m!202321 () Bool)

(assert (=> b!173677 m!202321))

(declare-fun m!202323 () Bool)

(assert (=> b!173692 m!202323))

(declare-fun m!202325 () Bool)

(assert (=> b!173692 m!202325))

(declare-fun m!202327 () Bool)

(assert (=> b!173692 m!202327))

(declare-fun m!202329 () Bool)

(assert (=> b!173692 m!202329))

(declare-fun m!202331 () Bool)

(assert (=> b!173692 m!202331))

(declare-fun m!202333 () Bool)

(assert (=> b!173692 m!202333))

(declare-fun m!202335 () Bool)

(assert (=> b!173692 m!202335))

(assert (=> b!173692 m!202303))

(declare-fun m!202337 () Bool)

(assert (=> b!173692 m!202337))

(assert (=> b!173692 m!202327))

(assert (=> b!173692 m!202335))

(declare-fun m!202339 () Bool)

(assert (=> b!173692 m!202339))

(declare-fun m!202341 () Bool)

(assert (=> b!173692 m!202341))

(declare-fun m!202343 () Bool)

(assert (=> b!173692 m!202343))

(assert (=> b!173692 m!202331))

(declare-fun m!202345 () Bool)

(assert (=> b!173692 m!202345))

(declare-fun m!202347 () Bool)

(assert (=> b!173692 m!202347))

(assert (=> b!173692 m!202201))

(declare-fun m!202349 () Bool)

(assert (=> b!173692 m!202349))

(assert (=> b!173692 m!202341))

(declare-fun m!202351 () Bool)

(assert (=> b!173692 m!202351))

(declare-fun m!202353 () Bool)

(assert (=> b!173680 m!202353))

(assert (=> d!52679 m!202301))

(declare-fun m!202355 () Bool)

(assert (=> b!173694 m!202355))

(assert (=> d!52523 d!52679))

(declare-fun d!52681 () Bool)

(declare-fun e!114738 () Bool)

(assert (=> d!52681 e!114738))

(declare-fun res!82487 () Bool)

(assert (=> d!52681 (=> (not res!82487) (not e!114738))))

(declare-fun lt!86058 () ListLongMap!2177)

(assert (=> d!52681 (= res!82487 (contains!1153 lt!86058 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun lt!86059 () List!2226)

(assert (=> d!52681 (= lt!86058 (ListLongMap!2178 lt!86059))))

(declare-fun lt!86060 () Unit!5311)

(declare-fun lt!86057 () Unit!5311)

(assert (=> d!52681 (= lt!86060 lt!86057)))

(assert (=> d!52681 (= (getValueByKey!184 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (=> d!52681 (= lt!86057 (lemmaContainsTupThenGetReturnValue!99 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (=> d!52681 (= lt!86059 (insertStrictlySorted!101 (toList!1104 call!17574) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (=> d!52681 (= (+!241 call!17574 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) lt!86058)))

(declare-fun b!173698 () Bool)

(declare-fun res!82488 () Bool)

(assert (=> b!173698 (=> (not res!82488) (not e!114738))))

(assert (=> b!173698 (= res!82488 (= (getValueByKey!184 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun b!173699 () Bool)

(assert (=> b!173699 (= e!114738 (contains!1154 (toList!1104 lt!86058) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))

(assert (= (and d!52681 res!82487) b!173698))

(assert (= (and b!173698 res!82488) b!173699))

(declare-fun m!202357 () Bool)

(assert (=> d!52681 m!202357))

(declare-fun m!202359 () Bool)

(assert (=> d!52681 m!202359))

(declare-fun m!202361 () Bool)

(assert (=> d!52681 m!202361))

(declare-fun m!202363 () Bool)

(assert (=> d!52681 m!202363))

(declare-fun m!202365 () Bool)

(assert (=> b!173698 m!202365))

(declare-fun m!202367 () Bool)

(assert (=> b!173699 m!202367))

(assert (=> b!173348 d!52681))

(declare-fun mapIsEmpty!6958 () Bool)

(declare-fun mapRes!6958 () Bool)

(assert (=> mapIsEmpty!6958 mapRes!6958))

(declare-fun mapNonEmpty!6958 () Bool)

(declare-fun tp!15607 () Bool)

(declare-fun e!114739 () Bool)

(assert (=> mapNonEmpty!6958 (= mapRes!6958 (and tp!15607 e!114739))))

(declare-fun mapValue!6958 () ValueCell!1698)

(declare-fun mapRest!6958 () (Array (_ BitVec 32) ValueCell!1698))

(declare-fun mapKey!6958 () (_ BitVec 32))

(assert (=> mapNonEmpty!6958 (= mapRest!6957 (store mapRest!6958 mapKey!6958 mapValue!6958))))

(declare-fun b!173701 () Bool)

(declare-fun e!114740 () Bool)

(assert (=> b!173701 (= e!114740 tp_is_empty!4083)))

(declare-fun b!173700 () Bool)

(assert (=> b!173700 (= e!114739 tp_is_empty!4083)))

(declare-fun condMapEmpty!6958 () Bool)

(declare-fun mapDefault!6958 () ValueCell!1698)

(assert (=> mapNonEmpty!6957 (= condMapEmpty!6958 (= mapRest!6957 ((as const (Array (_ BitVec 32) ValueCell!1698)) mapDefault!6958)))))

(assert (=> mapNonEmpty!6957 (= tp!15606 (and e!114740 mapRes!6958))))

(assert (= (and mapNonEmpty!6957 condMapEmpty!6958) mapIsEmpty!6958))

(assert (= (and mapNonEmpty!6957 (not condMapEmpty!6958)) mapNonEmpty!6958))

(assert (= (and mapNonEmpty!6958 ((_ is ValueCellFull!1698) mapValue!6958)) b!173700))

(assert (= (and mapNonEmpty!6957 ((_ is ValueCellFull!1698) mapDefault!6958)) b!173701))

(declare-fun m!202369 () Bool)

(assert (=> mapNonEmpty!6958 m!202369))

(declare-fun b_lambda!6983 () Bool)

(assert (= b_lambda!6975 (or (and b!173250 b_free!4311) b_lambda!6983)))

(declare-fun b_lambda!6985 () Bool)

(assert (= b_lambda!6973 (or (and b!173250 b_free!4311) b_lambda!6985)))

(declare-fun b_lambda!6987 () Bool)

(assert (= b_lambda!6979 (or (and b!173250 b_free!4311) b_lambda!6987)))

(declare-fun b_lambda!6989 () Bool)

(assert (= b_lambda!6977 (or (and b!173250 b_free!4311) b_lambda!6989)))

(check-sat (not bm!17611) (not d!52557) (not d!52633) (not d!52571) (not d!52601) (not b!173628) (not d!52607) (not b!173663) (not b!173619) (not b!173552) (not bm!17593) (not b_lambda!6981) (not b!173464) (not b!173674) (not b!173601) (not b!173419) (not b!173477) (not b!173694) (not d!52613) (not b!173551) (not b!173599) (not d!52677) (not d!52623) (not b_lambda!6971) (not d!52643) (not b!173580) (not b!173576) (not d!52573) (not d!52659) (not d!52625) (not d!52567) (not d!52559) (not d!52657) (not d!52653) (not bm!17610) (not b!173482) (not b!173622) (not b!173693) (not d!52599) (not b!173501) (not b!173479) (not b!173555) (not d!52545) (not b!173579) (not b!173473) (not d!52577) (not b!173617) (not b!173572) (not d!52579) (not bm!17596) (not b!173675) (not b!173565) (not b_lambda!6987) (not d!52675) (not d!52551) (not d!52555) (not b!173470) (not b!173574) (not b!173495) (not b!173620) (not b!173575) (not b!173474) (not b!173627) (not d!52637) (not b!173461) (not d!52565) (not b!173453) (not b!173655) (not d!52547) (not bm!17583) (not d!52621) (not d!52631) (not d!52539) (not b!173458) b_and!10785 (not bm!17601) (not b!173637) (not d!52629) (not b!173567) (not b!173625) (not mapNonEmpty!6958) (not d!52587) (not b!173554) (not d!52585) (not bm!17615) (not b!173548) (not b!173416) (not b!173462) (not b!173539) (not d!52543) (not d!52553) (not b!173670) (not d!52645) (not bm!17600) (not d!52569) (not d!52619) (not b!173543) (not b!173532) (not b!173524) (not b!173531) (not b!173647) (not b!173654) (not d!52561) (not bm!17614) (not d!52603) (not b!173652) (not d!52679) (not bm!17607) (not d!52531) (not d!52673) (not b!173417) (not d!52609) (not bm!17606) (not b!173478) (not b_next!4311) (not b!173420) (not b!173459) (not b!173418) (not b!173596) (not d!52541) (not d!52581) (not b!173545) (not bm!17608) (not bm!17590) (not b!173614) (not b_lambda!6989) (not d!52611) (not b!173456) (not b!173405) (not d!52589) (not b!173689) (not b!173468) (not b!173466) (not b!173661) (not b!173455) (not b!173630) (not b_lambda!6983) (not d!52635) (not d!52669) (not bm!17599) (not b!173581) (not b!173570) (not d!52617) (not d!52627) (not b!173472) (not b!173659) tp_is_empty!4083 (not d!52615) (not b!173546) (not d!52665) (not b!173541) (not d!52563) (not b!173549) (not b!173471) (not b!173692) (not b!173672) (not d!52647) (not b!173484) (not b!173677) (not b_lambda!6985) (not d!52681) (not b!173615) (not b!173476) (not d!52549) (not b!173668) (not b!173571) (not d!52661) (not d!52595) (not b!173502) (not d!52533) (not b!173421) (not b!173604) (not b!173699) (not b!173638) (not b!173698) (not d!52651) (not b!173452) (not b!173665) (not b!173685) (not b_lambda!6969) (not b!173577) (not b!173595) (not b!173481) (not b!173653) (not b!173583) (not d!52591) (not b!173680) (not b!173600) (not b!173411) (not b!173697) (not b!173469) (not b!173535))
(check-sat b_and!10785 (not b_next!4311))
(get-model)

(declare-fun d!52683 () Bool)

(assert (=> d!52683 (= (apply!130 lt!85964 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1970 (getValueByKey!184 (toList!1104 lt!85964) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7174 () Bool)

(assert (= bs!7174 d!52683))

(assert (=> bs!7174 m!201715))

(declare-fun m!202371 () Bool)

(assert (=> bs!7174 m!202371))

(assert (=> bs!7174 m!202371))

(declare-fun m!202373 () Bool)

(assert (=> bs!7174 m!202373))

(assert (=> b!173549 d!52683))

(assert (=> b!173549 d!52535))

(assert (=> b!173599 d!52575))

(declare-fun d!52685 () Bool)

(declare-fun e!114741 () Bool)

(assert (=> d!52685 e!114741))

(declare-fun res!82489 () Bool)

(assert (=> d!52685 (=> res!82489 e!114741)))

(declare-fun lt!86061 () Bool)

(assert (=> d!52685 (= res!82489 (not lt!86061))))

(declare-fun lt!86063 () Bool)

(assert (=> d!52685 (= lt!86061 lt!86063)))

(declare-fun lt!86064 () Unit!5311)

(declare-fun e!114742 () Unit!5311)

(assert (=> d!52685 (= lt!86064 e!114742)))

(declare-fun c!30986 () Bool)

(assert (=> d!52685 (= c!30986 lt!86063)))

(assert (=> d!52685 (= lt!86063 (containsKey!188 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52685 (= (contains!1153 lt!86020 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) lt!86061)))

(declare-fun b!173702 () Bool)

(declare-fun lt!86062 () Unit!5311)

(assert (=> b!173702 (= e!114742 lt!86062)))

(assert (=> b!173702 (= lt!86062 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> b!173702 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun b!173703 () Bool)

(declare-fun Unit!5329 () Unit!5311)

(assert (=> b!173703 (= e!114742 Unit!5329)))

(declare-fun b!173704 () Bool)

(assert (=> b!173704 (= e!114741 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (= (and d!52685 c!30986) b!173702))

(assert (= (and d!52685 (not c!30986)) b!173703))

(assert (= (and d!52685 (not res!82489)) b!173704))

(declare-fun m!202375 () Bool)

(assert (=> d!52685 m!202375))

(declare-fun m!202377 () Bool)

(assert (=> b!173702 m!202377))

(assert (=> b!173702 m!202263))

(assert (=> b!173702 m!202263))

(declare-fun m!202379 () Bool)

(assert (=> b!173702 m!202379))

(assert (=> b!173704 m!202263))

(assert (=> b!173704 m!202263))

(assert (=> b!173704 m!202379))

(assert (=> d!52661 d!52685))

(declare-fun b!173705 () Bool)

(declare-fun e!114743 () Option!190)

(assert (=> b!173705 (= e!114743 (Some!189 (_2!1628 (h!2839 lt!86021))))))

(declare-fun b!173708 () Bool)

(declare-fun e!114744 () Option!190)

(assert (=> b!173708 (= e!114744 None!188)))

(declare-fun b!173706 () Bool)

(assert (=> b!173706 (= e!114743 e!114744)))

(declare-fun c!30988 () Bool)

(assert (=> b!173706 (= c!30988 (and ((_ is Cons!2222) lt!86021) (not (= (_1!1628 (h!2839 lt!86021)) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))))

(declare-fun b!173707 () Bool)

(assert (=> b!173707 (= e!114744 (getValueByKey!184 (t!7041 lt!86021) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun d!52687 () Bool)

(declare-fun c!30987 () Bool)

(assert (=> d!52687 (= c!30987 (and ((_ is Cons!2222) lt!86021) (= (_1!1628 (h!2839 lt!86021)) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (=> d!52687 (= (getValueByKey!184 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) e!114743)))

(assert (= (and d!52687 c!30987) b!173705))

(assert (= (and d!52687 (not c!30987)) b!173706))

(assert (= (and b!173706 c!30988) b!173707))

(assert (= (and b!173706 (not c!30988)) b!173708))

(declare-fun m!202381 () Bool)

(assert (=> b!173707 m!202381))

(assert (=> d!52661 d!52687))

(declare-fun d!52689 () Bool)

(assert (=> d!52689 (= (getValueByKey!184 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) (Some!189 (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun lt!86065 () Unit!5311)

(assert (=> d!52689 (= lt!86065 (choose!939 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun e!114745 () Bool)

(assert (=> d!52689 e!114745))

(declare-fun res!82490 () Bool)

(assert (=> d!52689 (=> (not res!82490) (not e!114745))))

(assert (=> d!52689 (= res!82490 (isStrictlySorted!327 lt!86021))))

(assert (=> d!52689 (= (lemmaContainsTupThenGetReturnValue!99 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) lt!86065)))

(declare-fun b!173709 () Bool)

(declare-fun res!82491 () Bool)

(assert (=> b!173709 (=> (not res!82491) (not e!114745))))

(assert (=> b!173709 (= res!82491 (containsKey!188 lt!86021 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun b!173710 () Bool)

(assert (=> b!173710 (= e!114745 (contains!1154 lt!86021 (tuple2!3237 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (= (and d!52689 res!82490) b!173709))

(assert (= (and b!173709 res!82491) b!173710))

(assert (=> d!52689 m!202257))

(declare-fun m!202383 () Bool)

(assert (=> d!52689 m!202383))

(declare-fun m!202385 () Bool)

(assert (=> d!52689 m!202385))

(declare-fun m!202387 () Bool)

(assert (=> b!173709 m!202387))

(declare-fun m!202389 () Bool)

(assert (=> b!173710 m!202389))

(assert (=> d!52661 d!52689))

(declare-fun bm!17617 () Bool)

(declare-fun call!17621 () List!2226)

(declare-fun call!17619 () List!2226)

(assert (=> bm!17617 (= call!17621 call!17619)))

(declare-fun c!30990 () Bool)

(declare-fun c!30992 () Bool)

(declare-fun e!114749 () List!2226)

(declare-fun b!173711 () Bool)

(assert (=> b!173711 (= e!114749 (ite c!30990 (t!7041 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (ite c!30992 (Cons!2222 (h!2839 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (t!7041 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))))) Nil!2223)))))

(declare-fun b!173712 () Bool)

(declare-fun res!82492 () Bool)

(declare-fun e!114750 () Bool)

(assert (=> b!173712 (=> (not res!82492) (not e!114750))))

(declare-fun lt!86066 () List!2226)

(assert (=> b!173712 (= res!82492 (containsKey!188 lt!86066 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun b!173713 () Bool)

(declare-fun e!114747 () List!2226)

(assert (=> b!173713 (= e!114747 call!17619)))

(declare-fun b!173714 () Bool)

(assert (=> b!173714 (= c!30992 (and ((_ is Cons!2222) (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (bvsgt (_1!1628 (h!2839 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun e!114748 () List!2226)

(declare-fun e!114746 () List!2226)

(assert (=> b!173714 (= e!114748 e!114746)))

(declare-fun b!173715 () Bool)

(declare-fun call!17620 () List!2226)

(assert (=> b!173715 (= e!114746 call!17620)))

(declare-fun b!173716 () Bool)

(assert (=> b!173716 (= e!114746 call!17620)))

(declare-fun b!173717 () Bool)

(assert (=> b!173717 (= e!114747 e!114748)))

(assert (=> b!173717 (= c!30990 (and ((_ is Cons!2222) (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (= (_1!1628 (h!2839 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun bm!17616 () Bool)

(declare-fun c!30989 () Bool)

(assert (=> bm!17616 (= call!17619 ($colon$colon!97 e!114749 (ite c!30989 (h!2839 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (tuple2!3237 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))))

(declare-fun c!30991 () Bool)

(assert (=> bm!17616 (= c!30991 c!30989)))

(declare-fun d!52691 () Bool)

(assert (=> d!52691 e!114750))

(declare-fun res!82493 () Bool)

(assert (=> d!52691 (=> (not res!82493) (not e!114750))))

(assert (=> d!52691 (= res!82493 (isStrictlySorted!327 lt!86066))))

(assert (=> d!52691 (= lt!86066 e!114747)))

(assert (=> d!52691 (= c!30989 (and ((_ is Cons!2222) (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (bvslt (_1!1628 (h!2839 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (=> d!52691 (isStrictlySorted!327 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))))))

(assert (=> d!52691 (= (insertStrictlySorted!101 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) lt!86066)))

(declare-fun bm!17618 () Bool)

(assert (=> bm!17618 (= call!17620 call!17621)))

(declare-fun b!173718 () Bool)

(assert (=> b!173718 (= e!114748 call!17621)))

(declare-fun b!173719 () Bool)

(assert (=> b!173719 (= e!114749 (insertStrictlySorted!101 (t!7041 (toList!1104 (ite c!30890 call!17573 (ite c!30893 call!17572 call!17576)))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun b!173720 () Bool)

(assert (=> b!173720 (= e!114750 (contains!1154 lt!86066 (tuple2!3237 (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (_2!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (= (and d!52691 c!30989) b!173713))

(assert (= (and d!52691 (not c!30989)) b!173717))

(assert (= (and b!173717 c!30990) b!173718))

(assert (= (and b!173717 (not c!30990)) b!173714))

(assert (= (and b!173714 c!30992) b!173715))

(assert (= (and b!173714 (not c!30992)) b!173716))

(assert (= (or b!173715 b!173716) bm!17618))

(assert (= (or b!173718 bm!17618) bm!17617))

(assert (= (or b!173713 bm!17617) bm!17616))

(assert (= (and bm!17616 c!30991) b!173719))

(assert (= (and bm!17616 (not c!30991)) b!173711))

(assert (= (and d!52691 res!82493) b!173712))

(assert (= (and b!173712 res!82492) b!173720))

(declare-fun m!202391 () Bool)

(assert (=> b!173720 m!202391))

(declare-fun m!202393 () Bool)

(assert (=> bm!17616 m!202393))

(declare-fun m!202395 () Bool)

(assert (=> b!173719 m!202395))

(declare-fun m!202397 () Bool)

(assert (=> b!173712 m!202397))

(declare-fun m!202399 () Bool)

(assert (=> d!52691 m!202399))

(declare-fun m!202401 () Bool)

(assert (=> d!52691 m!202401))

(assert (=> d!52661 d!52691))

(declare-fun d!52693 () Bool)

(assert (=> d!52693 (= (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!173604 d!52693))

(declare-fun d!52695 () Bool)

(assert (=> d!52695 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85822) lt!85816)) (v!3952 (getValueByKey!184 (toList!1104 lt!85822) lt!85816)))))

(assert (=> d!52545 d!52695))

(declare-fun b!173721 () Bool)

(declare-fun e!114751 () Option!190)

(assert (=> b!173721 (= e!114751 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85822)))))))

(declare-fun b!173724 () Bool)

(declare-fun e!114752 () Option!190)

(assert (=> b!173724 (= e!114752 None!188)))

(declare-fun b!173722 () Bool)

(assert (=> b!173722 (= e!114751 e!114752)))

(declare-fun c!30994 () Bool)

(assert (=> b!173722 (= c!30994 (and ((_ is Cons!2222) (toList!1104 lt!85822)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85822))) lt!85816))))))

(declare-fun b!173723 () Bool)

(assert (=> b!173723 (= e!114752 (getValueByKey!184 (t!7041 (toList!1104 lt!85822)) lt!85816))))

(declare-fun d!52697 () Bool)

(declare-fun c!30993 () Bool)

(assert (=> d!52697 (= c!30993 (and ((_ is Cons!2222) (toList!1104 lt!85822)) (= (_1!1628 (h!2839 (toList!1104 lt!85822))) lt!85816)))))

(assert (=> d!52697 (= (getValueByKey!184 (toList!1104 lt!85822) lt!85816) e!114751)))

(assert (= (and d!52697 c!30993) b!173721))

(assert (= (and d!52697 (not c!30993)) b!173722))

(assert (= (and b!173722 c!30994) b!173723))

(assert (= (and b!173722 (not c!30994)) b!173724))

(declare-fun m!202403 () Bool)

(assert (=> b!173723 m!202403))

(assert (=> d!52545 d!52697))

(assert (=> d!52591 d!52513))

(assert (=> d!52591 d!52511))

(assert (=> d!52591 d!52515))

(declare-fun d!52699 () Bool)

(declare-fun lt!86067 () Bool)

(assert (=> d!52699 (= lt!86067 (select (content!148 (toList!1104 lt!86058)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))

(declare-fun e!114754 () Bool)

(assert (=> d!52699 (= lt!86067 e!114754)))

(declare-fun res!82495 () Bool)

(assert (=> d!52699 (=> (not res!82495) (not e!114754))))

(assert (=> d!52699 (= res!82495 ((_ is Cons!2222) (toList!1104 lt!86058)))))

(assert (=> d!52699 (= (contains!1154 (toList!1104 lt!86058) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) lt!86067)))

(declare-fun b!173725 () Bool)

(declare-fun e!114753 () Bool)

(assert (=> b!173725 (= e!114754 e!114753)))

(declare-fun res!82494 () Bool)

(assert (=> b!173725 (=> res!82494 e!114753)))

(assert (=> b!173725 (= res!82494 (= (h!2839 (toList!1104 lt!86058)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))

(declare-fun b!173726 () Bool)

(assert (=> b!173726 (= e!114753 (contains!1154 (t!7041 (toList!1104 lt!86058)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))

(assert (= (and d!52699 res!82495) b!173725))

(assert (= (and b!173725 (not res!82494)) b!173726))

(declare-fun m!202405 () Bool)

(assert (=> d!52699 m!202405))

(declare-fun m!202407 () Bool)

(assert (=> d!52699 m!202407))

(declare-fun m!202409 () Bool)

(assert (=> b!173726 m!202409))

(assert (=> b!173699 d!52699))

(assert (=> b!173596 d!52575))

(declare-fun lt!86068 () Bool)

(declare-fun d!52701 () Bool)

(assert (=> d!52701 (= lt!86068 (select (content!148 (toList!1104 lt!85929)) (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))

(declare-fun e!114756 () Bool)

(assert (=> d!52701 (= lt!86068 e!114756)))

(declare-fun res!82497 () Bool)

(assert (=> d!52701 (=> (not res!82497) (not e!114756))))

(assert (=> d!52701 (= res!82497 ((_ is Cons!2222) (toList!1104 lt!85929)))))

(assert (=> d!52701 (= (contains!1154 (toList!1104 lt!85929) (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!86068)))

(declare-fun b!173727 () Bool)

(declare-fun e!114755 () Bool)

(assert (=> b!173727 (= e!114756 e!114755)))

(declare-fun res!82496 () Bool)

(assert (=> b!173727 (=> res!82496 e!114755)))

(assert (=> b!173727 (= res!82496 (= (h!2839 (toList!1104 lt!85929)) (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))

(declare-fun b!173728 () Bool)

(assert (=> b!173728 (= e!114755 (contains!1154 (t!7041 (toList!1104 lt!85929)) (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52701 res!82497) b!173727))

(assert (= (and b!173727 (not res!82496)) b!173728))

(declare-fun m!202411 () Bool)

(assert (=> d!52701 m!202411))

(declare-fun m!202413 () Bool)

(assert (=> d!52701 m!202413))

(declare-fun m!202415 () Bool)

(assert (=> b!173728 m!202415))

(assert (=> b!173471 d!52701))

(assert (=> b!173601 d!52693))

(declare-fun d!52703 () Bool)

(declare-fun res!82498 () Bool)

(declare-fun e!114757 () Bool)

(assert (=> d!52703 (=> res!82498 e!114757)))

(assert (=> d!52703 (= res!82498 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52703 (= (containsKey!188 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000) e!114757)))

(declare-fun b!173729 () Bool)

(declare-fun e!114758 () Bool)

(assert (=> b!173729 (= e!114757 e!114758)))

(declare-fun res!82499 () Bool)

(assert (=> b!173729 (=> (not res!82499) (not e!114758))))

(assert (=> b!173729 (= res!82499 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85813))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85813))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2222) (toList!1104 lt!85813)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85813))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!173730 () Bool)

(assert (=> b!173730 (= e!114758 (containsKey!188 (t!7041 (toList!1104 lt!85813)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52703 (not res!82498)) b!173729))

(assert (= (and b!173729 res!82499) b!173730))

(declare-fun m!202417 () Bool)

(assert (=> b!173730 m!202417))

(assert (=> d!52665 d!52703))

(declare-fun d!52705 () Bool)

(assert (=> d!52705 (= (size!3769 thiss!1248) (bvadd (_size!1201 thiss!1248) (bvsdiv (bvadd (extraKeys!3337 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!173614 d!52705))

(declare-fun d!52707 () Bool)

(declare-fun res!82500 () Bool)

(declare-fun e!114759 () Bool)

(assert (=> d!52707 (=> res!82500 e!114759)))

(assert (=> d!52707 (= res!82500 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52707 (= (containsKey!188 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000) e!114759)))

(declare-fun b!173731 () Bool)

(declare-fun e!114760 () Bool)

(assert (=> b!173731 (= e!114759 e!114760)))

(declare-fun res!82501 () Bool)

(assert (=> b!173731 (=> (not res!82501) (not e!114760))))

(assert (=> b!173731 (= res!82501 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85813))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85813))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2222) (toList!1104 lt!85813)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85813))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!173732 () Bool)

(assert (=> b!173732 (= e!114760 (containsKey!188 (t!7041 (toList!1104 lt!85813)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52707 (not res!82500)) b!173731))

(assert (= (and b!173731 res!82501) b!173732))

(declare-fun m!202419 () Bool)

(assert (=> b!173732 m!202419))

(assert (=> d!52673 d!52707))

(declare-fun d!52709 () Bool)

(assert (=> d!52709 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3952 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52675 d!52709))

(declare-fun b!173733 () Bool)

(declare-fun e!114761 () Option!190)

(assert (=> b!173733 (= e!114761 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85813)))))))

(declare-fun b!173736 () Bool)

(declare-fun e!114762 () Option!190)

(assert (=> b!173736 (= e!114762 None!188)))

(declare-fun b!173734 () Bool)

(assert (=> b!173734 (= e!114761 e!114762)))

(declare-fun c!30996 () Bool)

(assert (=> b!173734 (= c!30996 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173735 () Bool)

(assert (=> b!173735 (= e!114762 (getValueByKey!184 (t!7041 (toList!1104 lt!85813)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!52711 () Bool)

(declare-fun c!30995 () Bool)

(assert (=> d!52711 (= c!30995 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52711 (= (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000) e!114761)))

(assert (= (and d!52711 c!30995) b!173733))

(assert (= (and d!52711 (not c!30995)) b!173734))

(assert (= (and b!173734 c!30996) b!173735))

(assert (= (and b!173734 (not c!30996)) b!173736))

(declare-fun m!202421 () Bool)

(assert (=> b!173735 m!202421))

(assert (=> d!52675 d!52711))

(assert (=> b!173462 d!52575))

(declare-fun d!52713 () Bool)

(declare-fun res!82502 () Bool)

(declare-fun e!114763 () Bool)

(assert (=> d!52713 (=> res!82502 e!114763)))

(assert (=> d!52713 (= res!82502 (and ((_ is Cons!2222) (toList!1104 lt!85877)) (= (_1!1628 (h!2839 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52713 (= (containsKey!188 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))) e!114763)))

(declare-fun b!173737 () Bool)

(declare-fun e!114764 () Bool)

(assert (=> b!173737 (= e!114763 e!114764)))

(declare-fun res!82503 () Bool)

(assert (=> b!173737 (=> (not res!82503) (not e!114764))))

(assert (=> b!173737 (= res!82503 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85877))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309)))) ((_ is Cons!2222) (toList!1104 lt!85877)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!173738 () Bool)

(assert (=> b!173738 (= e!114764 (containsKey!188 (t!7041 (toList!1104 lt!85877)) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (= (and d!52713 (not res!82502)) b!173737))

(assert (= (and b!173737 res!82503) b!173738))

(declare-fun m!202423 () Bool)

(assert (=> b!173738 m!202423))

(assert (=> d!52647 d!52713))

(declare-fun d!52715 () Bool)

(assert (=> d!52715 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85848) lt!85852)) (v!3952 (getValueByKey!184 (toList!1104 lt!85848) lt!85852)))))

(assert (=> d!52619 d!52715))

(declare-fun b!173739 () Bool)

(declare-fun e!114765 () Option!190)

(assert (=> b!173739 (= e!114765 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85848)))))))

(declare-fun b!173742 () Bool)

(declare-fun e!114766 () Option!190)

(assert (=> b!173742 (= e!114766 None!188)))

(declare-fun b!173740 () Bool)

(assert (=> b!173740 (= e!114765 e!114766)))

(declare-fun c!30998 () Bool)

(assert (=> b!173740 (= c!30998 (and ((_ is Cons!2222) (toList!1104 lt!85848)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85848))) lt!85852))))))

(declare-fun b!173741 () Bool)

(assert (=> b!173741 (= e!114766 (getValueByKey!184 (t!7041 (toList!1104 lt!85848)) lt!85852))))

(declare-fun d!52717 () Bool)

(declare-fun c!30997 () Bool)

(assert (=> d!52717 (= c!30997 (and ((_ is Cons!2222) (toList!1104 lt!85848)) (= (_1!1628 (h!2839 (toList!1104 lt!85848))) lt!85852)))))

(assert (=> d!52717 (= (getValueByKey!184 (toList!1104 lt!85848) lt!85852) e!114765)))

(assert (= (and d!52717 c!30997) b!173739))

(assert (= (and d!52717 (not c!30997)) b!173740))

(assert (= (and b!173740 c!30998) b!173741))

(assert (= (and b!173740 (not c!30998)) b!173742))

(declare-fun m!202425 () Bool)

(assert (=> b!173741 m!202425))

(assert (=> d!52619 d!52717))

(declare-fun d!52719 () Bool)

(assert (=> d!52719 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3952 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52669 d!52719))

(declare-fun b!173743 () Bool)

(declare-fun e!114767 () Option!190)

(assert (=> b!173743 (= e!114767 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85813)))))))

(declare-fun b!173746 () Bool)

(declare-fun e!114768 () Option!190)

(assert (=> b!173746 (= e!114768 None!188)))

(declare-fun b!173744 () Bool)

(assert (=> b!173744 (= e!114767 e!114768)))

(declare-fun c!31000 () Bool)

(assert (=> b!173744 (= c!31000 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173745 () Bool)

(assert (=> b!173745 (= e!114768 (getValueByKey!184 (t!7041 (toList!1104 lt!85813)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!52721 () Bool)

(declare-fun c!30999 () Bool)

(assert (=> d!52721 (= c!30999 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52721 (= (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000) e!114767)))

(assert (= (and d!52721 c!30999) b!173743))

(assert (= (and d!52721 (not c!30999)) b!173744))

(assert (= (and b!173744 c!31000) b!173745))

(assert (= (and b!173744 (not c!31000)) b!173746))

(declare-fun m!202427 () Bool)

(assert (=> b!173745 m!202427))

(assert (=> d!52669 d!52721))

(declare-fun d!52723 () Bool)

(assert (=> d!52723 (= ($colon$colon!97 e!114702 (ite c!30963 (h!2839 (toList!1104 (map!1881 thiss!1248))) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))) (Cons!2222 (ite c!30963 (h!2839 (toList!1104 (map!1881 thiss!1248))) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))) e!114702))))

(assert (=> bm!17601 d!52723))

(declare-fun b!173747 () Bool)

(declare-fun e!114769 () Bool)

(declare-fun e!114774 () Bool)

(assert (=> b!173747 (= e!114769 e!114774)))

(declare-fun c!31002 () Bool)

(assert (=> b!173747 (= c!31002 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun bm!17619 () Bool)

(declare-fun call!17622 () ListLongMap!2177)

(assert (=> bm!17619 (= call!17622 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)))))

(declare-fun b!173749 () Bool)

(declare-fun e!114772 () Bool)

(assert (=> b!173749 (= e!114769 e!114772)))

(assert (=> b!173749 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun res!82505 () Bool)

(declare-fun lt!86071 () ListLongMap!2177)

(assert (=> b!173749 (= res!82505 (contains!1153 lt!86071 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!173749 (=> (not res!82505) (not e!114772))))

(declare-fun b!173750 () Bool)

(declare-fun e!114770 () ListLongMap!2177)

(assert (=> b!173750 (= e!114770 (ListLongMap!2178 Nil!2223))))

(declare-fun b!173751 () Bool)

(assert (=> b!173751 (= e!114774 (isEmpty!441 lt!86071))))

(declare-fun b!173752 () Bool)

(assert (=> b!173752 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> b!173752 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!173752 (= e!114772 (= (apply!130 lt!86071 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173753 () Bool)

(declare-fun e!114773 () ListLongMap!2177)

(assert (=> b!173753 (= e!114773 call!17622)))

(declare-fun b!173754 () Bool)

(assert (=> b!173754 (= e!114774 (= lt!86071 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248))))))

(declare-fun b!173755 () Bool)

(assert (=> b!173755 (= e!114770 e!114773)))

(declare-fun c!31004 () Bool)

(assert (=> b!173755 (= c!31004 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!173756 () Bool)

(declare-fun e!114771 () Bool)

(assert (=> b!173756 (= e!114771 e!114769)))

(declare-fun c!31003 () Bool)

(declare-fun e!114775 () Bool)

(assert (=> b!173756 (= c!31003 e!114775)))

(declare-fun res!82506 () Bool)

(assert (=> b!173756 (=> (not res!82506) (not e!114775))))

(assert (=> b!173756 (= res!82506 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!173757 () Bool)

(declare-fun lt!86069 () Unit!5311)

(declare-fun lt!86073 () Unit!5311)

(assert (=> b!173757 (= lt!86069 lt!86073)))

(declare-fun lt!86075 () ListLongMap!2177)

(declare-fun lt!86072 () (_ BitVec 64))

(declare-fun lt!86070 () V!5091)

(declare-fun lt!86074 () (_ BitVec 64))

(assert (=> b!173757 (not (contains!1153 (+!241 lt!86075 (tuple2!3237 lt!86074 lt!86070)) lt!86072))))

(assert (=> b!173757 (= lt!86073 (addStillNotContains!74 lt!86075 lt!86074 lt!86070 lt!86072))))

(assert (=> b!173757 (= lt!86072 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!173757 (= lt!86070 (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!173757 (= lt!86074 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!173757 (= lt!86075 call!17622)))

(assert (=> b!173757 (= e!114773 (+!241 call!17622 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!173758 () Bool)

(assert (=> b!173758 (= e!114775 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!173758 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!52725 () Bool)

(assert (=> d!52725 e!114771))

(declare-fun res!82507 () Bool)

(assert (=> d!52725 (=> (not res!82507) (not e!114771))))

(assert (=> d!52725 (= res!82507 (not (contains!1153 lt!86071 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52725 (= lt!86071 e!114770)))

(declare-fun c!31001 () Bool)

(assert (=> d!52725 (= c!31001 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52725 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52725 (= (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (bvor (extraKeys!3337 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3439 thiss!1248) v!309 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)) lt!86071)))

(declare-fun b!173748 () Bool)

(declare-fun res!82504 () Bool)

(assert (=> b!173748 (=> (not res!82504) (not e!114771))))

(assert (=> b!173748 (= res!82504 (not (contains!1153 lt!86071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52725 c!31001) b!173750))

(assert (= (and d!52725 (not c!31001)) b!173755))

(assert (= (and b!173755 c!31004) b!173757))

(assert (= (and b!173755 (not c!31004)) b!173753))

(assert (= (or b!173757 b!173753) bm!17619))

(assert (= (and d!52725 res!82507) b!173748))

(assert (= (and b!173748 res!82504) b!173756))

(assert (= (and b!173756 res!82506) b!173758))

(assert (= (and b!173756 c!31003) b!173749))

(assert (= (and b!173756 (not c!31003)) b!173747))

(assert (= (and b!173749 res!82505) b!173752))

(assert (= (and b!173747 c!31002) b!173754))

(assert (= (and b!173747 (not c!31002)) b!173751))

(declare-fun b_lambda!6991 () Bool)

(assert (=> (not b_lambda!6991) (not b!173752)))

(assert (=> b!173752 t!7044))

(declare-fun b_and!10787 () Bool)

(assert (= b_and!10785 (and (=> t!7044 result!4593) b_and!10787)))

(declare-fun b_lambda!6993 () Bool)

(assert (=> (not b_lambda!6993) (not b!173757)))

(assert (=> b!173757 t!7044))

(declare-fun b_and!10789 () Bool)

(assert (= b_and!10787 (and (=> t!7044 result!4593) b_and!10789)))

(declare-fun m!202429 () Bool)

(assert (=> b!173754 m!202429))

(declare-fun m!202431 () Bool)

(assert (=> b!173752 m!202431))

(assert (=> b!173752 m!201725))

(declare-fun m!202433 () Bool)

(assert (=> b!173752 m!202433))

(assert (=> b!173752 m!201725))

(declare-fun m!202435 () Bool)

(assert (=> b!173752 m!202435))

(declare-fun m!202437 () Bool)

(assert (=> b!173752 m!202437))

(assert (=> b!173752 m!202435))

(assert (=> b!173752 m!202431))

(declare-fun m!202439 () Bool)

(assert (=> d!52725 m!202439))

(assert (=> d!52725 m!201707))

(assert (=> b!173749 m!202435))

(assert (=> b!173749 m!202435))

(declare-fun m!202441 () Bool)

(assert (=> b!173749 m!202441))

(assert (=> bm!17619 m!202429))

(declare-fun m!202443 () Bool)

(assert (=> b!173751 m!202443))

(assert (=> b!173758 m!202435))

(assert (=> b!173758 m!202435))

(declare-fun m!202445 () Bool)

(assert (=> b!173758 m!202445))

(declare-fun m!202447 () Bool)

(assert (=> b!173748 m!202447))

(assert (=> b!173755 m!202435))

(assert (=> b!173755 m!202435))

(assert (=> b!173755 m!202445))

(declare-fun m!202449 () Bool)

(assert (=> b!173757 m!202449))

(declare-fun m!202451 () Bool)

(assert (=> b!173757 m!202451))

(assert (=> b!173757 m!202431))

(assert (=> b!173757 m!201725))

(assert (=> b!173757 m!202433))

(assert (=> b!173757 m!201725))

(assert (=> b!173757 m!202449))

(declare-fun m!202453 () Bool)

(assert (=> b!173757 m!202453))

(assert (=> b!173757 m!202435))

(assert (=> b!173757 m!202431))

(declare-fun m!202455 () Bool)

(assert (=> b!173757 m!202455))

(assert (=> bm!17593 d!52725))

(declare-fun d!52727 () Bool)

(declare-fun res!82508 () Bool)

(declare-fun e!114776 () Bool)

(assert (=> d!52727 (=> res!82508 e!114776)))

(assert (=> d!52727 (= res!82508 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) lt!85844)))))

(assert (=> d!52727 (= (containsKey!188 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844) e!114776)))

(declare-fun b!173759 () Bool)

(declare-fun e!114777 () Bool)

(assert (=> b!173759 (= e!114776 e!114777)))

(declare-fun res!82509 () Bool)

(assert (=> b!173759 (=> (not res!82509) (not e!114777))))

(assert (=> b!173759 (= res!82509 (and (or (not ((_ is Cons!2222) (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) (bvsle (_1!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) lt!85844)) ((_ is Cons!2222) (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) (bvslt (_1!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) lt!85844)))))

(declare-fun b!173760 () Bool)

(assert (=> b!173760 (= e!114777 (containsKey!188 (t!7041 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) lt!85844))))

(assert (= (and d!52727 (not res!82508)) b!173759))

(assert (= (and b!173759 res!82509) b!173760))

(declare-fun m!202457 () Bool)

(assert (=> b!173760 m!202457))

(assert (=> d!52633 d!52727))

(declare-fun d!52729 () Bool)

(declare-fun res!82510 () Bool)

(declare-fun e!114778 () Bool)

(assert (=> d!52729 (=> res!82510 e!114778)))

(assert (=> d!52729 (= res!82510 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) lt!85810)))))

(assert (=> d!52729 (= (containsKey!188 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810) e!114778)))

(declare-fun b!173761 () Bool)

(declare-fun e!114779 () Bool)

(assert (=> b!173761 (= e!114778 e!114779)))

(declare-fun res!82511 () Bool)

(assert (=> b!173761 (=> (not res!82511) (not e!114779))))

(assert (=> b!173761 (= res!82511 (and (or (not ((_ is Cons!2222) (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) (bvsle (_1!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) lt!85810)) ((_ is Cons!2222) (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) (bvslt (_1!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) lt!85810)))))

(declare-fun b!173762 () Bool)

(assert (=> b!173762 (= e!114779 (containsKey!188 (t!7041 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) lt!85810))))

(assert (= (and d!52729 (not res!82510)) b!173761))

(assert (= (and b!173761 res!82511) b!173762))

(declare-fun m!202459 () Bool)

(assert (=> b!173762 m!202459))

(assert (=> d!52555 d!52729))

(assert (=> d!52635 d!52609))

(declare-fun d!52731 () Bool)

(assert (=> d!52731 (= (apply!130 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!85851) (apply!130 lt!85862 lt!85851))))

(assert (=> d!52731 true))

(declare-fun _$34!1052 () Unit!5311)

(assert (=> d!52731 (= (choose!937 lt!85862 lt!85855 (zeroValue!3439 thiss!1248) lt!85851) _$34!1052)))

(declare-fun bs!7175 () Bool)

(assert (= bs!7175 d!52731))

(assert (=> bs!7175 m!201801))

(assert (=> bs!7175 m!201801))

(assert (=> bs!7175 m!201803))

(assert (=> bs!7175 m!201793))

(assert (=> d!52635 d!52731))

(assert (=> d!52635 d!52617))

(assert (=> d!52635 d!52637))

(declare-fun d!52733 () Bool)

(declare-fun e!114780 () Bool)

(assert (=> d!52733 e!114780))

(declare-fun res!82512 () Bool)

(assert (=> d!52733 (=> res!82512 e!114780)))

(declare-fun lt!86076 () Bool)

(assert (=> d!52733 (= res!82512 (not lt!86076))))

(declare-fun lt!86078 () Bool)

(assert (=> d!52733 (= lt!86076 lt!86078)))

(declare-fun lt!86079 () Unit!5311)

(declare-fun e!114781 () Unit!5311)

(assert (=> d!52733 (= lt!86079 e!114781)))

(declare-fun c!31005 () Bool)

(assert (=> d!52733 (= c!31005 lt!86078)))

(assert (=> d!52733 (= lt!86078 (containsKey!188 (toList!1104 lt!85862) lt!85851))))

(assert (=> d!52733 (= (contains!1153 lt!85862 lt!85851) lt!86076)))

(declare-fun b!173764 () Bool)

(declare-fun lt!86077 () Unit!5311)

(assert (=> b!173764 (= e!114781 lt!86077)))

(assert (=> b!173764 (= lt!86077 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85862) lt!85851))))

(assert (=> b!173764 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85862) lt!85851))))

(declare-fun b!173765 () Bool)

(declare-fun Unit!5330 () Unit!5311)

(assert (=> b!173765 (= e!114781 Unit!5330)))

(declare-fun b!173766 () Bool)

(assert (=> b!173766 (= e!114780 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85862) lt!85851)))))

(assert (= (and d!52733 c!31005) b!173764))

(assert (= (and d!52733 (not c!31005)) b!173765))

(assert (= (and d!52733 (not res!82512)) b!173766))

(declare-fun m!202461 () Bool)

(assert (=> d!52733 m!202461))

(declare-fun m!202463 () Bool)

(assert (=> b!173764 m!202463))

(assert (=> b!173764 m!202193))

(assert (=> b!173764 m!202193))

(declare-fun m!202465 () Bool)

(assert (=> b!173764 m!202465))

(assert (=> b!173766 m!202193))

(assert (=> b!173766 m!202193))

(assert (=> b!173766 m!202465))

(assert (=> d!52635 d!52733))

(declare-fun d!52735 () Bool)

(assert (=> d!52735 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!85816)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!85816)))))

(assert (=> d!52557 d!52735))

(declare-fun e!114782 () Option!190)

(declare-fun b!173767 () Bool)

(assert (=> b!173767 (= e!114782 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))))

(declare-fun b!173770 () Bool)

(declare-fun e!114783 () Option!190)

(assert (=> b!173770 (= e!114783 None!188)))

(declare-fun b!173768 () Bool)

(assert (=> b!173768 (= e!114782 e!114783)))

(declare-fun c!31007 () Bool)

(assert (=> b!173768 (= c!31007 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))) lt!85816))))))

(declare-fun b!173769 () Bool)

(assert (=> b!173769 (= e!114783 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))) lt!85816))))

(declare-fun d!52737 () Bool)

(declare-fun c!31006 () Bool)

(assert (=> d!52737 (= c!31006 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))) lt!85816)))))

(assert (=> d!52737 (= (getValueByKey!184 (toList!1104 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!85816) e!114782)))

(assert (= (and d!52737 c!31006) b!173767))

(assert (= (and d!52737 (not c!31006)) b!173768))

(assert (= (and b!173768 c!31007) b!173769))

(assert (= (and b!173768 (not c!31007)) b!173770))

(declare-fun m!202467 () Bool)

(assert (=> b!173769 m!202467))

(assert (=> d!52557 d!52737))

(assert (=> d!52607 d!52595))

(assert (=> d!52607 d!52597))

(declare-fun d!52739 () Bool)

(assert (=> d!52739 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85750) key!828))))

(assert (=> d!52739 true))

(declare-fun _$12!446 () Unit!5311)

(assert (=> d!52739 (= (choose!940 (toList!1104 lt!85750) key!828) _$12!446)))

(declare-fun bs!7176 () Bool)

(assert (= bs!7176 d!52739))

(assert (=> bs!7176 m!201831))

(assert (=> bs!7176 m!201831))

(assert (=> bs!7176 m!201833))

(assert (=> d!52607 d!52739))

(declare-fun d!52741 () Bool)

(declare-fun res!82517 () Bool)

(declare-fun e!114788 () Bool)

(assert (=> d!52741 (=> res!82517 e!114788)))

(assert (=> d!52741 (= res!82517 (or ((_ is Nil!2223) (toList!1104 lt!85750)) ((_ is Nil!2223) (t!7041 (toList!1104 lt!85750)))))))

(assert (=> d!52741 (= (isStrictlySorted!327 (toList!1104 lt!85750)) e!114788)))

(declare-fun b!173775 () Bool)

(declare-fun e!114789 () Bool)

(assert (=> b!173775 (= e!114788 e!114789)))

(declare-fun res!82518 () Bool)

(assert (=> b!173775 (=> (not res!82518) (not e!114789))))

(assert (=> b!173775 (= res!82518 (bvslt (_1!1628 (h!2839 (toList!1104 lt!85750))) (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750))))))))

(declare-fun b!173776 () Bool)

(assert (=> b!173776 (= e!114789 (isStrictlySorted!327 (t!7041 (toList!1104 lt!85750))))))

(assert (= (and d!52741 (not res!82517)) b!173775))

(assert (= (and b!173775 res!82518) b!173776))

(declare-fun m!202469 () Bool)

(assert (=> b!173776 m!202469))

(assert (=> d!52607 d!52741))

(declare-fun d!52743 () Bool)

(assert (=> d!52743 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!85817)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!85817)))))

(assert (=> d!52571 d!52743))

(declare-fun b!173777 () Bool)

(declare-fun e!114790 () Option!190)

(assert (=> b!173777 (= e!114790 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))))

(declare-fun b!173780 () Bool)

(declare-fun e!114791 () Option!190)

(assert (=> b!173780 (= e!114791 None!188)))

(declare-fun b!173778 () Bool)

(assert (=> b!173778 (= e!114790 e!114791)))

(declare-fun c!31009 () Bool)

(assert (=> b!173778 (= c!31009 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))) lt!85817))))))

(declare-fun b!173779 () Bool)

(assert (=> b!173779 (= e!114791 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))) lt!85817))))

(declare-fun d!52745 () Bool)

(declare-fun c!31008 () Bool)

(assert (=> d!52745 (= c!31008 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))) lt!85817)))))

(assert (=> d!52745 (= (getValueByKey!184 (toList!1104 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!85817) e!114790)))

(assert (= (and d!52745 c!31008) b!173777))

(assert (= (and d!52745 (not c!31008)) b!173778))

(assert (= (and b!173778 c!31009) b!173779))

(assert (= (and b!173778 (not c!31009)) b!173780))

(declare-fun m!202471 () Bool)

(assert (=> b!173779 m!202471))

(assert (=> d!52571 d!52745))

(declare-fun d!52747 () Bool)

(assert (=> d!52747 (= (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85750) key!828)) (not ((_ is Some!189) (getValueByKey!184 (toList!1104 lt!85750) key!828))))))

(assert (=> d!52595 d!52747))

(declare-fun d!52749 () Bool)

(declare-fun lt!86080 () Bool)

(assert (=> d!52749 (= lt!86080 (select (content!148 (toList!1104 lt!85941)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun e!114793 () Bool)

(assert (=> d!52749 (= lt!86080 e!114793)))

(declare-fun res!82520 () Bool)

(assert (=> d!52749 (=> (not res!82520) (not e!114793))))

(assert (=> d!52749 (= res!82520 ((_ is Cons!2222) (toList!1104 lt!85941)))))

(assert (=> d!52749 (= (contains!1154 (toList!1104 lt!85941) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!86080)))

(declare-fun b!173781 () Bool)

(declare-fun e!114792 () Bool)

(assert (=> b!173781 (= e!114793 e!114792)))

(declare-fun res!82519 () Bool)

(assert (=> b!173781 (=> res!82519 e!114792)))

(assert (=> b!173781 (= res!82519 (= (h!2839 (toList!1104 lt!85941)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!173782 () Bool)

(assert (=> b!173782 (= e!114792 (contains!1154 (t!7041 (toList!1104 lt!85941)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!52749 res!82520) b!173781))

(assert (= (and b!173781 (not res!82519)) b!173782))

(declare-fun m!202473 () Bool)

(assert (=> d!52749 m!202473))

(declare-fun m!202475 () Bool)

(assert (=> d!52749 m!202475))

(declare-fun m!202477 () Bool)

(assert (=> b!173782 m!202477))

(assert (=> b!173478 d!52749))

(declare-fun d!52751 () Bool)

(declare-fun e!114794 () Bool)

(assert (=> d!52751 e!114794))

(declare-fun res!82521 () Bool)

(assert (=> d!52751 (=> (not res!82521) (not e!114794))))

(declare-fun lt!86082 () ListLongMap!2177)

(assert (=> d!52751 (= res!82521 (contains!1153 lt!86082 (_1!1628 (tuple2!3237 lt!85914 lt!85910))))))

(declare-fun lt!86083 () List!2226)

(assert (=> d!52751 (= lt!86082 (ListLongMap!2178 lt!86083))))

(declare-fun lt!86084 () Unit!5311)

(declare-fun lt!86081 () Unit!5311)

(assert (=> d!52751 (= lt!86084 lt!86081)))

(assert (=> d!52751 (= (getValueByKey!184 lt!86083 (_1!1628 (tuple2!3237 lt!85914 lt!85910))) (Some!189 (_2!1628 (tuple2!3237 lt!85914 lt!85910))))))

(assert (=> d!52751 (= lt!86081 (lemmaContainsTupThenGetReturnValue!99 lt!86083 (_1!1628 (tuple2!3237 lt!85914 lt!85910)) (_2!1628 (tuple2!3237 lt!85914 lt!85910))))))

(assert (=> d!52751 (= lt!86083 (insertStrictlySorted!101 (toList!1104 lt!85915) (_1!1628 (tuple2!3237 lt!85914 lt!85910)) (_2!1628 (tuple2!3237 lt!85914 lt!85910))))))

(assert (=> d!52751 (= (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910)) lt!86082)))

(declare-fun b!173783 () Bool)

(declare-fun res!82522 () Bool)

(assert (=> b!173783 (=> (not res!82522) (not e!114794))))

(assert (=> b!173783 (= res!82522 (= (getValueByKey!184 (toList!1104 lt!86082) (_1!1628 (tuple2!3237 lt!85914 lt!85910))) (Some!189 (_2!1628 (tuple2!3237 lt!85914 lt!85910)))))))

(declare-fun b!173784 () Bool)

(assert (=> b!173784 (= e!114794 (contains!1154 (toList!1104 lt!86082) (tuple2!3237 lt!85914 lt!85910)))))

(assert (= (and d!52751 res!82521) b!173783))

(assert (= (and b!173783 res!82522) b!173784))

(declare-fun m!202479 () Bool)

(assert (=> d!52751 m!202479))

(declare-fun m!202481 () Bool)

(assert (=> d!52751 m!202481))

(declare-fun m!202483 () Bool)

(assert (=> d!52751 m!202483))

(declare-fun m!202485 () Bool)

(assert (=> d!52751 m!202485))

(declare-fun m!202487 () Bool)

(assert (=> b!173783 m!202487))

(declare-fun m!202489 () Bool)

(assert (=> b!173784 m!202489))

(assert (=> b!173461 d!52751))

(declare-fun d!52753 () Bool)

(declare-fun e!114795 () Bool)

(assert (=> d!52753 e!114795))

(declare-fun res!82523 () Bool)

(assert (=> d!52753 (=> res!82523 e!114795)))

(declare-fun lt!86085 () Bool)

(assert (=> d!52753 (= res!82523 (not lt!86085))))

(declare-fun lt!86087 () Bool)

(assert (=> d!52753 (= lt!86085 lt!86087)))

(declare-fun lt!86088 () Unit!5311)

(declare-fun e!114796 () Unit!5311)

(assert (=> d!52753 (= lt!86088 e!114796)))

(declare-fun c!31010 () Bool)

(assert (=> d!52753 (= c!31010 lt!86087)))

(assert (=> d!52753 (= lt!86087 (containsKey!188 (toList!1104 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910))) lt!85912))))

(assert (=> d!52753 (= (contains!1153 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910)) lt!85912) lt!86085)))

(declare-fun b!173785 () Bool)

(declare-fun lt!86086 () Unit!5311)

(assert (=> b!173785 (= e!114796 lt!86086)))

(assert (=> b!173785 (= lt!86086 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910))) lt!85912))))

(assert (=> b!173785 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910))) lt!85912))))

(declare-fun b!173786 () Bool)

(declare-fun Unit!5331 () Unit!5311)

(assert (=> b!173786 (= e!114796 Unit!5331)))

(declare-fun b!173787 () Bool)

(assert (=> b!173787 (= e!114795 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910))) lt!85912)))))

(assert (= (and d!52753 c!31010) b!173785))

(assert (= (and d!52753 (not c!31010)) b!173786))

(assert (= (and d!52753 (not res!82523)) b!173787))

(declare-fun m!202491 () Bool)

(assert (=> d!52753 m!202491))

(declare-fun m!202493 () Bool)

(assert (=> b!173785 m!202493))

(declare-fun m!202495 () Bool)

(assert (=> b!173785 m!202495))

(assert (=> b!173785 m!202495))

(declare-fun m!202497 () Bool)

(assert (=> b!173785 m!202497))

(assert (=> b!173787 m!202495))

(assert (=> b!173787 m!202495))

(assert (=> b!173787 m!202497))

(assert (=> b!173461 d!52753))

(declare-fun d!52755 () Bool)

(assert (=> d!52755 (not (contains!1153 (+!241 lt!85915 (tuple2!3237 lt!85914 lt!85910)) lt!85912))))

(declare-fun lt!86091 () Unit!5311)

(declare-fun choose!941 (ListLongMap!2177 (_ BitVec 64) V!5091 (_ BitVec 64)) Unit!5311)

(assert (=> d!52755 (= lt!86091 (choose!941 lt!85915 lt!85914 lt!85910 lt!85912))))

(declare-fun e!114799 () Bool)

(assert (=> d!52755 e!114799))

(declare-fun res!82526 () Bool)

(assert (=> d!52755 (=> (not res!82526) (not e!114799))))

(assert (=> d!52755 (= res!82526 (not (contains!1153 lt!85915 lt!85912)))))

(assert (=> d!52755 (= (addStillNotContains!74 lt!85915 lt!85914 lt!85910 lt!85912) lt!86091)))

(declare-fun b!173791 () Bool)

(assert (=> b!173791 (= e!114799 (not (= lt!85914 lt!85912)))))

(assert (= (and d!52755 res!82526) b!173791))

(assert (=> d!52755 m!201919))

(assert (=> d!52755 m!201919))

(assert (=> d!52755 m!201921))

(declare-fun m!202499 () Bool)

(assert (=> d!52755 m!202499))

(declare-fun m!202501 () Bool)

(assert (=> d!52755 m!202501))

(assert (=> b!173461 d!52755))

(declare-fun d!52757 () Bool)

(declare-fun e!114800 () Bool)

(assert (=> d!52757 e!114800))

(declare-fun res!82527 () Bool)

(assert (=> d!52757 (=> (not res!82527) (not e!114800))))

(declare-fun lt!86093 () ListLongMap!2177)

(assert (=> d!52757 (= res!82527 (contains!1153 lt!86093 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!86094 () List!2226)

(assert (=> d!52757 (= lt!86093 (ListLongMap!2178 lt!86094))))

(declare-fun lt!86095 () Unit!5311)

(declare-fun lt!86092 () Unit!5311)

(assert (=> d!52757 (= lt!86095 lt!86092)))

(assert (=> d!52757 (= (getValueByKey!184 lt!86094 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!189 (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52757 (= lt!86092 (lemmaContainsTupThenGetReturnValue!99 lt!86094 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52757 (= lt!86094 (insertStrictlySorted!101 (toList!1104 call!17586) (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52757 (= (+!241 call!17586 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!86093)))

(declare-fun b!173792 () Bool)

(declare-fun res!82528 () Bool)

(assert (=> b!173792 (=> (not res!82528) (not e!114800))))

(assert (=> b!173792 (= res!82528 (= (getValueByKey!184 (toList!1104 lt!86093) (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!189 (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!173793 () Bool)

(assert (=> b!173793 (= e!114800 (contains!1154 (toList!1104 lt!86093) (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!52757 res!82527) b!173792))

(assert (= (and b!173792 res!82528) b!173793))

(declare-fun m!202503 () Bool)

(assert (=> d!52757 m!202503))

(declare-fun m!202505 () Bool)

(assert (=> d!52757 m!202505))

(declare-fun m!202507 () Bool)

(assert (=> d!52757 m!202507))

(declare-fun m!202509 () Bool)

(assert (=> d!52757 m!202509))

(declare-fun m!202511 () Bool)

(assert (=> b!173792 m!202511))

(declare-fun m!202513 () Bool)

(assert (=> b!173793 m!202513))

(assert (=> b!173461 d!52757))

(assert (=> b!173461 d!52535))

(declare-fun b!173794 () Bool)

(declare-fun e!114801 () Option!190)

(assert (=> b!173794 (= e!114801 (Some!189 (_2!1628 (h!2839 (t!7041 (toList!1104 lt!85839))))))))

(declare-fun b!173797 () Bool)

(declare-fun e!114802 () Option!190)

(assert (=> b!173797 (= e!114802 None!188)))

(declare-fun b!173795 () Bool)

(assert (=> b!173795 (= e!114801 e!114802)))

(declare-fun c!31012 () Bool)

(assert (=> b!173795 (= c!31012 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85839))) (not (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85839)))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173796 () Bool)

(assert (=> b!173796 (= e!114802 (getValueByKey!184 (t!7041 (t!7041 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!52759 () Bool)

(declare-fun c!31011 () Bool)

(assert (=> d!52759 (= c!31011 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85839))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85839)))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52759 (= (getValueByKey!184 (t!7041 (toList!1104 lt!85839)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114801)))

(assert (= (and d!52759 c!31011) b!173794))

(assert (= (and d!52759 (not c!31011)) b!173795))

(assert (= (and b!173795 c!31012) b!173796))

(assert (= (and b!173795 (not c!31012)) b!173797))

(declare-fun m!202515 () Bool)

(assert (=> b!173796 m!202515))

(assert (=> b!173668 d!52759))

(declare-fun lt!86096 () Bool)

(declare-fun d!52761 () Bool)

(assert (=> d!52761 (= lt!86096 (select (content!148 (toList!1104 lt!85992)) (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))

(declare-fun e!114804 () Bool)

(assert (=> d!52761 (= lt!86096 e!114804)))

(declare-fun res!82530 () Bool)

(assert (=> d!52761 (=> (not res!82530) (not e!114804))))

(assert (=> d!52761 (= res!82530 ((_ is Cons!2222) (toList!1104 lt!85992)))))

(assert (=> d!52761 (= (contains!1154 (toList!1104 lt!85992) (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!86096)))

(declare-fun b!173798 () Bool)

(declare-fun e!114803 () Bool)

(assert (=> b!173798 (= e!114804 e!114803)))

(declare-fun res!82529 () Bool)

(assert (=> b!173798 (=> res!82529 e!114803)))

(assert (=> b!173798 (= res!82529 (= (h!2839 (toList!1104 lt!85992)) (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))

(declare-fun b!173799 () Bool)

(assert (=> b!173799 (= e!114803 (contains!1154 (t!7041 (toList!1104 lt!85992)) (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52761 res!82530) b!173798))

(assert (= (and b!173798 (not res!82529)) b!173799))

(declare-fun m!202517 () Bool)

(assert (=> d!52761 m!202517))

(declare-fun m!202519 () Bool)

(assert (=> d!52761 m!202519))

(declare-fun m!202521 () Bool)

(assert (=> b!173799 m!202521))

(assert (=> b!173577 d!52761))

(declare-fun d!52763 () Bool)

(assert (=> d!52763 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7177 () Bool)

(assert (= bs!7177 d!52763))

(assert (=> bs!7177 m!202019))

(declare-fun m!202523 () Bool)

(assert (=> bs!7177 m!202523))

(assert (=> b!173481 d!52763))

(declare-fun b!173800 () Bool)

(declare-fun e!114805 () Option!190)

(assert (=> b!173800 (= e!114805 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85813)))))))

(declare-fun b!173803 () Bool)

(declare-fun e!114806 () Option!190)

(assert (=> b!173803 (= e!114806 None!188)))

(declare-fun b!173801 () Bool)

(assert (=> b!173801 (= e!114805 e!114806)))

(declare-fun c!31014 () Bool)

(assert (=> b!173801 (= c!31014 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85813))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!173802 () Bool)

(assert (=> b!173802 (= e!114806 (getValueByKey!184 (t!7041 (toList!1104 lt!85813)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52765 () Bool)

(declare-fun c!31013 () Bool)

(assert (=> d!52765 (= c!31013 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52765 (= (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) e!114805)))

(assert (= (and d!52765 c!31013) b!173800))

(assert (= (and d!52765 (not c!31013)) b!173801))

(assert (= (and b!173801 c!31014) b!173802))

(assert (= (and b!173801 (not c!31014)) b!173803))

(assert (=> b!173802 m!201715))

(declare-fun m!202525 () Bool)

(assert (=> b!173802 m!202525))

(assert (=> b!173481 d!52765))

(declare-fun lt!86097 () Bool)

(declare-fun d!52767 () Bool)

(assert (=> d!52767 (= lt!86097 (select (content!148 lt!85878) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun e!114808 () Bool)

(assert (=> d!52767 (= lt!86097 e!114808)))

(declare-fun res!82532 () Bool)

(assert (=> d!52767 (=> (not res!82532) (not e!114808))))

(assert (=> d!52767 (= res!82532 ((_ is Cons!2222) lt!85878))))

(assert (=> d!52767 (= (contains!1154 lt!85878 (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))) lt!86097)))

(declare-fun b!173804 () Bool)

(declare-fun e!114807 () Bool)

(assert (=> b!173804 (= e!114808 e!114807)))

(declare-fun res!82531 () Bool)

(assert (=> b!173804 (=> res!82531 e!114807)))

(assert (=> b!173804 (= res!82531 (= (h!2839 lt!85878) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!173805 () Bool)

(assert (=> b!173805 (= e!114807 (contains!1154 (t!7041 lt!85878) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52767 res!82532) b!173804))

(assert (= (and b!173804 (not res!82531)) b!173805))

(declare-fun m!202527 () Bool)

(assert (=> d!52767 m!202527))

(declare-fun m!202529 () Bool)

(assert (=> d!52767 m!202529))

(declare-fun m!202531 () Bool)

(assert (=> b!173805 m!202531))

(assert (=> b!173628 d!52767))

(declare-fun d!52769 () Bool)

(assert (=> d!52769 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))) lt!85852)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))) lt!85852)))))

(assert (=> d!52625 d!52769))

(declare-fun e!114809 () Option!190)

(declare-fun b!173806 () Bool)

(assert (=> b!173806 (= e!114809 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)))))))))

(declare-fun b!173809 () Bool)

(declare-fun e!114810 () Option!190)

(assert (=> b!173809 (= e!114810 None!188)))

(declare-fun b!173807 () Bool)

(assert (=> b!173807 (= e!114809 e!114810)))

(declare-fun c!31016 () Bool)

(assert (=> b!173807 (= c!31016 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))))) lt!85852))))))

(declare-fun b!173808 () Bool)

(assert (=> b!173808 (= e!114810 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)))) lt!85852))))

(declare-fun c!31015 () Bool)

(declare-fun d!52771 () Bool)

(assert (=> d!52771 (= c!31015 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))))) lt!85852)))))

(assert (=> d!52771 (= (getValueByKey!184 (toList!1104 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309))) lt!85852) e!114809)))

(assert (= (and d!52771 c!31015) b!173806))

(assert (= (and d!52771 (not c!31015)) b!173807))

(assert (= (and b!173807 c!31016) b!173808))

(assert (= (and b!173807 (not c!31016)) b!173809))

(declare-fun m!202533 () Bool)

(assert (=> b!173808 m!202533))

(assert (=> d!52625 d!52771))

(declare-fun d!52773 () Bool)

(declare-fun e!114811 () Bool)

(assert (=> d!52773 e!114811))

(declare-fun res!82533 () Bool)

(assert (=> d!52773 (=> res!82533 e!114811)))

(declare-fun lt!86098 () Bool)

(assert (=> d!52773 (= res!82533 (not lt!86098))))

(declare-fun lt!86100 () Bool)

(assert (=> d!52773 (= lt!86098 lt!86100)))

(declare-fun lt!86101 () Unit!5311)

(declare-fun e!114812 () Unit!5311)

(assert (=> d!52773 (= lt!86101 e!114812)))

(declare-fun c!31017 () Bool)

(assert (=> d!52773 (= c!31017 lt!86100)))

(assert (=> d!52773 (= lt!86100 (containsKey!188 (toList!1104 lt!85964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52773 (= (contains!1153 lt!85964 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86098)))

(declare-fun b!173810 () Bool)

(declare-fun lt!86099 () Unit!5311)

(assert (=> b!173810 (= e!114812 lt!86099)))

(assert (=> b!173810 (= lt!86099 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173810 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173811 () Bool)

(declare-fun Unit!5332 () Unit!5311)

(assert (=> b!173811 (= e!114812 Unit!5332)))

(declare-fun b!173812 () Bool)

(assert (=> b!173812 (= e!114811 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52773 c!31017) b!173810))

(assert (= (and d!52773 (not c!31017)) b!173811))

(assert (= (and d!52773 (not res!82533)) b!173812))

(declare-fun m!202535 () Bool)

(assert (=> d!52773 m!202535))

(declare-fun m!202537 () Bool)

(assert (=> b!173810 m!202537))

(declare-fun m!202539 () Bool)

(assert (=> b!173810 m!202539))

(assert (=> b!173810 m!202539))

(declare-fun m!202541 () Bool)

(assert (=> b!173810 m!202541))

(assert (=> b!173812 m!202539))

(assert (=> b!173812 m!202539))

(assert (=> b!173812 m!202541))

(assert (=> d!52603 d!52773))

(assert (=> d!52603 d!52537))

(declare-fun d!52775 () Bool)

(assert (=> d!52775 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun bs!7178 () Bool)

(assert (= bs!7178 d!52775))

(assert (=> bs!7178 m!201775))

(declare-fun m!202543 () Bool)

(assert (=> bs!7178 m!202543))

(assert (=> b!173484 d!52775))

(assert (=> b!173484 d!52671))

(declare-fun d!52777 () Bool)

(assert (=> d!52777 (= (validMask!0 (mask!8470 lt!85751)) (and (or (= (mask!8470 lt!85751) #b00000000000000000000000000000111) (= (mask!8470 lt!85751) #b00000000000000000000000000001111) (= (mask!8470 lt!85751) #b00000000000000000000000000011111) (= (mask!8470 lt!85751) #b00000000000000000000000000111111) (= (mask!8470 lt!85751) #b00000000000000000000000001111111) (= (mask!8470 lt!85751) #b00000000000000000000000011111111) (= (mask!8470 lt!85751) #b00000000000000000000000111111111) (= (mask!8470 lt!85751) #b00000000000000000000001111111111) (= (mask!8470 lt!85751) #b00000000000000000000011111111111) (= (mask!8470 lt!85751) #b00000000000000000000111111111111) (= (mask!8470 lt!85751) #b00000000000000000001111111111111) (= (mask!8470 lt!85751) #b00000000000000000011111111111111) (= (mask!8470 lt!85751) #b00000000000000000111111111111111) (= (mask!8470 lt!85751) #b00000000000000001111111111111111) (= (mask!8470 lt!85751) #b00000000000000011111111111111111) (= (mask!8470 lt!85751) #b00000000000000111111111111111111) (= (mask!8470 lt!85751) #b00000000000001111111111111111111) (= (mask!8470 lt!85751) #b00000000000011111111111111111111) (= (mask!8470 lt!85751) #b00000000000111111111111111111111) (= (mask!8470 lt!85751) #b00000000001111111111111111111111) (= (mask!8470 lt!85751) #b00000000011111111111111111111111) (= (mask!8470 lt!85751) #b00000000111111111111111111111111) (= (mask!8470 lt!85751) #b00000001111111111111111111111111) (= (mask!8470 lt!85751) #b00000011111111111111111111111111) (= (mask!8470 lt!85751) #b00000111111111111111111111111111) (= (mask!8470 lt!85751) #b00001111111111111111111111111111) (= (mask!8470 lt!85751) #b00011111111111111111111111111111) (= (mask!8470 lt!85751) #b00111111111111111111111111111111)) (bvsle (mask!8470 lt!85751) #b00111111111111111111111111111111)))))

(assert (=> d!52679 d!52777))

(declare-fun d!52779 () Bool)

(declare-fun lt!86102 () Bool)

(assert (=> d!52779 (= lt!86102 (select (content!148 lt!85840) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!114814 () Bool)

(assert (=> d!52779 (= lt!86102 e!114814)))

(declare-fun res!82535 () Bool)

(assert (=> d!52779 (=> (not res!82535) (not e!114814))))

(assert (=> d!52779 (= res!82535 ((_ is Cons!2222) lt!85840))))

(assert (=> d!52779 (= (contains!1154 lt!85840 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!86102)))

(declare-fun b!173813 () Bool)

(declare-fun e!114813 () Bool)

(assert (=> b!173813 (= e!114814 e!114813)))

(declare-fun res!82534 () Bool)

(assert (=> b!173813 (=> res!82534 e!114813)))

(assert (=> b!173813 (= res!82534 (= (h!2839 lt!85840) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!173814 () Bool)

(assert (=> b!173814 (= e!114813 (contains!1154 (t!7041 lt!85840) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52779 res!82535) b!173813))

(assert (= (and b!173813 (not res!82534)) b!173814))

(declare-fun m!202545 () Bool)

(assert (=> d!52779 m!202545))

(declare-fun m!202547 () Bool)

(assert (=> d!52779 m!202547))

(declare-fun m!202549 () Bool)

(assert (=> b!173814 m!202549))

(assert (=> b!173502 d!52779))

(declare-fun d!52781 () Bool)

(assert (=> d!52781 (= (size!3769 lt!85751) (bvadd (_size!1201 lt!85751) (bvsdiv (bvadd (extraKeys!3337 lt!85751) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!173674 d!52781))

(declare-fun d!52783 () Bool)

(declare-fun lt!86103 () Bool)

(assert (=> d!52783 (= lt!86103 (select (content!148 lt!86014) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun e!114816 () Bool)

(assert (=> d!52783 (= lt!86103 e!114816)))

(declare-fun res!82537 () Bool)

(assert (=> d!52783 (=> (not res!82537) (not e!114816))))

(assert (=> d!52783 (= res!82537 ((_ is Cons!2222) lt!86014))))

(assert (=> d!52783 (= (contains!1154 lt!86014 (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))) lt!86103)))

(declare-fun b!173815 () Bool)

(declare-fun e!114815 () Bool)

(assert (=> b!173815 (= e!114816 e!114815)))

(declare-fun res!82536 () Bool)

(assert (=> b!173815 (=> res!82536 e!114815)))

(assert (=> b!173815 (= res!82536 (= (h!2839 lt!86014) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!173816 () Bool)

(assert (=> b!173816 (= e!114815 (contains!1154 (t!7041 lt!86014) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52783 res!82537) b!173815))

(assert (= (and b!173815 (not res!82536)) b!173816))

(declare-fun m!202551 () Bool)

(assert (=> d!52783 m!202551))

(declare-fun m!202553 () Bool)

(assert (=> d!52783 m!202553))

(declare-fun m!202555 () Bool)

(assert (=> b!173816 m!202555))

(assert (=> b!173638 d!52783))

(declare-fun d!52785 () Bool)

(assert (=> d!52785 (= (apply!130 lt!86040 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!86040) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7179 () Bool)

(assert (= bs!7179 d!52785))

(declare-fun m!202557 () Bool)

(assert (=> bs!7179 m!202557))

(assert (=> bs!7179 m!202557))

(declare-fun m!202559 () Bool)

(assert (=> bs!7179 m!202559))

(assert (=> b!173677 d!52785))

(declare-fun d!52787 () Bool)

(declare-fun lt!86104 () Bool)

(assert (=> d!52787 (= lt!86104 (select (content!148 (toList!1104 lt!85888)) (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))

(declare-fun e!114818 () Bool)

(assert (=> d!52787 (= lt!86104 e!114818)))

(declare-fun res!82539 () Bool)

(assert (=> d!52787 (=> (not res!82539) (not e!114818))))

(assert (=> d!52787 (= res!82539 ((_ is Cons!2222) (toList!1104 lt!85888)))))

(assert (=> d!52787 (= (contains!1154 (toList!1104 lt!85888) (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!86104)))

(declare-fun b!173817 () Bool)

(declare-fun e!114817 () Bool)

(assert (=> b!173817 (= e!114818 e!114817)))

(declare-fun res!82538 () Bool)

(assert (=> b!173817 (=> res!82538 e!114817)))

(assert (=> b!173817 (= res!82538 (= (h!2839 (toList!1104 lt!85888)) (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))

(declare-fun b!173818 () Bool)

(assert (=> b!173818 (= e!114817 (contains!1154 (t!7041 (toList!1104 lt!85888)) (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))

(assert (= (and d!52787 res!82539) b!173817))

(assert (= (and b!173817 (not res!82538)) b!173818))

(declare-fun m!202561 () Bool)

(assert (=> d!52787 m!202561))

(declare-fun m!202563 () Bool)

(assert (=> d!52787 m!202563))

(declare-fun m!202565 () Bool)

(assert (=> b!173818 m!202565))

(assert (=> b!173421 d!52787))

(declare-fun d!52789 () Bool)

(declare-fun e!114819 () Bool)

(assert (=> d!52789 e!114819))

(declare-fun res!82540 () Bool)

(assert (=> d!52789 (=> res!82540 e!114819)))

(declare-fun lt!86105 () Bool)

(assert (=> d!52789 (= res!82540 (not lt!86105))))

(declare-fun lt!86107 () Bool)

(assert (=> d!52789 (= lt!86105 lt!86107)))

(declare-fun lt!86108 () Unit!5311)

(declare-fun e!114820 () Unit!5311)

(assert (=> d!52789 (= lt!86108 e!114820)))

(declare-fun c!31018 () Bool)

(assert (=> d!52789 (= c!31018 lt!86107)))

(assert (=> d!52789 (= lt!86107 (containsKey!188 (toList!1104 lt!86040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52789 (= (contains!1153 lt!86040 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86105)))

(declare-fun b!173819 () Bool)

(declare-fun lt!86106 () Unit!5311)

(assert (=> b!173819 (= e!114820 lt!86106)))

(assert (=> b!173819 (= lt!86106 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!86040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173819 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173820 () Bool)

(declare-fun Unit!5333 () Unit!5311)

(assert (=> b!173820 (= e!114820 Unit!5333)))

(declare-fun b!173821 () Bool)

(assert (=> b!173821 (= e!114819 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52789 c!31018) b!173819))

(assert (= (and d!52789 (not c!31018)) b!173820))

(assert (= (and d!52789 (not res!82540)) b!173821))

(declare-fun m!202567 () Bool)

(assert (=> d!52789 m!202567))

(declare-fun m!202569 () Bool)

(assert (=> b!173819 m!202569))

(assert (=> b!173819 m!202557))

(assert (=> b!173819 m!202557))

(declare-fun m!202571 () Bool)

(assert (=> b!173819 m!202571))

(assert (=> b!173821 m!202557))

(assert (=> b!173821 m!202557))

(assert (=> b!173821 m!202571))

(assert (=> bm!17614 d!52789))

(declare-fun d!52791 () Bool)

(declare-fun e!114821 () Bool)

(assert (=> d!52791 e!114821))

(declare-fun res!82541 () Bool)

(assert (=> d!52791 (=> res!82541 e!114821)))

(declare-fun lt!86109 () Bool)

(assert (=> d!52791 (= res!82541 (not lt!86109))))

(declare-fun lt!86111 () Bool)

(assert (=> d!52791 (= lt!86109 lt!86111)))

(declare-fun lt!86112 () Unit!5311)

(declare-fun e!114822 () Unit!5311)

(assert (=> d!52791 (= lt!86112 e!114822)))

(declare-fun c!31019 () Bool)

(assert (=> d!52791 (= c!31019 lt!86111)))

(assert (=> d!52791 (= lt!86111 (containsKey!188 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52791 (= (contains!1153 lt!85929 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!86109)))

(declare-fun b!173822 () Bool)

(declare-fun lt!86110 () Unit!5311)

(assert (=> b!173822 (= e!114822 lt!86110)))

(assert (=> b!173822 (= lt!86110 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(assert (=> b!173822 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!173823 () Bool)

(declare-fun Unit!5334 () Unit!5311)

(assert (=> b!173823 (= e!114822 Unit!5334)))

(declare-fun b!173824 () Bool)

(assert (=> b!173824 (= e!114821 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52791 c!31019) b!173822))

(assert (= (and d!52791 (not c!31019)) b!173823))

(assert (= (and d!52791 (not res!82541)) b!173824))

(declare-fun m!202573 () Bool)

(assert (=> d!52791 m!202573))

(declare-fun m!202575 () Bool)

(assert (=> b!173822 m!202575))

(assert (=> b!173822 m!201975))

(assert (=> b!173822 m!201975))

(declare-fun m!202577 () Bool)

(assert (=> b!173822 m!202577))

(assert (=> b!173824 m!201975))

(assert (=> b!173824 m!201975))

(assert (=> b!173824 m!202577))

(assert (=> d!52567 d!52791))

(declare-fun b!173825 () Bool)

(declare-fun e!114823 () Option!190)

(assert (=> b!173825 (= e!114823 (Some!189 (_2!1628 (h!2839 lt!85930))))))

(declare-fun b!173828 () Bool)

(declare-fun e!114824 () Option!190)

(assert (=> b!173828 (= e!114824 None!188)))

(declare-fun b!173826 () Bool)

(assert (=> b!173826 (= e!114823 e!114824)))

(declare-fun c!31021 () Bool)

(assert (=> b!173826 (= c!31021 (and ((_ is Cons!2222) lt!85930) (not (= (_1!1628 (h!2839 lt!85930)) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!173827 () Bool)

(assert (=> b!173827 (= e!114824 (getValueByKey!184 (t!7041 lt!85930) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31020 () Bool)

(declare-fun d!52793 () Bool)

(assert (=> d!52793 (= c!31020 (and ((_ is Cons!2222) lt!85930) (= (_1!1628 (h!2839 lt!85930)) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52793 (= (getValueByKey!184 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) e!114823)))

(assert (= (and d!52793 c!31020) b!173825))

(assert (= (and d!52793 (not c!31020)) b!173826))

(assert (= (and b!173826 c!31021) b!173827))

(assert (= (and b!173826 (not c!31021)) b!173828))

(declare-fun m!202579 () Bool)

(assert (=> b!173827 m!202579))

(assert (=> d!52567 d!52793))

(declare-fun d!52795 () Bool)

(assert (=> d!52795 (= (getValueByKey!184 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!86113 () Unit!5311)

(assert (=> d!52795 (= lt!86113 (choose!939 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun e!114825 () Bool)

(assert (=> d!52795 e!114825))

(declare-fun res!82542 () Bool)

(assert (=> d!52795 (=> (not res!82542) (not e!114825))))

(assert (=> d!52795 (= res!82542 (isStrictlySorted!327 lt!85930))))

(assert (=> d!52795 (= (lemmaContainsTupThenGetReturnValue!99 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!86113)))

(declare-fun b!173829 () Bool)

(declare-fun res!82543 () Bool)

(assert (=> b!173829 (=> (not res!82543) (not e!114825))))

(assert (=> b!173829 (= res!82543 (containsKey!188 lt!85930 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!173830 () Bool)

(assert (=> b!173830 (= e!114825 (contains!1154 lt!85930 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52795 res!82542) b!173829))

(assert (= (and b!173829 res!82543) b!173830))

(assert (=> d!52795 m!201969))

(declare-fun m!202581 () Bool)

(assert (=> d!52795 m!202581))

(declare-fun m!202583 () Bool)

(assert (=> d!52795 m!202583))

(declare-fun m!202585 () Bool)

(assert (=> b!173829 m!202585))

(declare-fun m!202587 () Bool)

(assert (=> b!173830 m!202587))

(assert (=> d!52567 d!52795))

(declare-fun bm!17621 () Bool)

(declare-fun call!17625 () List!2226)

(declare-fun call!17623 () List!2226)

(assert (=> bm!17621 (= call!17625 call!17623)))

(declare-fun b!173831 () Bool)

(declare-fun c!31025 () Bool)

(declare-fun e!114829 () List!2226)

(declare-fun c!31023 () Bool)

(assert (=> b!173831 (= e!114829 (ite c!31023 (t!7041 (toList!1104 lt!85811)) (ite c!31025 (Cons!2222 (h!2839 (toList!1104 lt!85811)) (t!7041 (toList!1104 lt!85811))) Nil!2223)))))

(declare-fun b!173832 () Bool)

(declare-fun res!82544 () Bool)

(declare-fun e!114830 () Bool)

(assert (=> b!173832 (=> (not res!82544) (not e!114830))))

(declare-fun lt!86114 () List!2226)

(assert (=> b!173832 (= res!82544 (containsKey!188 lt!86114 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!173833 () Bool)

(declare-fun e!114827 () List!2226)

(assert (=> b!173833 (= e!114827 call!17623)))

(declare-fun b!173834 () Bool)

(assert (=> b!173834 (= c!31025 (and ((_ is Cons!2222) (toList!1104 lt!85811)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85811))) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(declare-fun e!114828 () List!2226)

(declare-fun e!114826 () List!2226)

(assert (=> b!173834 (= e!114828 e!114826)))

(declare-fun b!173835 () Bool)

(declare-fun call!17624 () List!2226)

(assert (=> b!173835 (= e!114826 call!17624)))

(declare-fun b!173836 () Bool)

(assert (=> b!173836 (= e!114826 call!17624)))

(declare-fun b!173837 () Bool)

(assert (=> b!173837 (= e!114827 e!114828)))

(assert (=> b!173837 (= c!31023 (and ((_ is Cons!2222) (toList!1104 lt!85811)) (= (_1!1628 (h!2839 (toList!1104 lt!85811))) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(declare-fun bm!17620 () Bool)

(declare-fun c!31022 () Bool)

(assert (=> bm!17620 (= call!17623 ($colon$colon!97 e!114829 (ite c!31022 (h!2839 (toList!1104 lt!85811)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))))

(declare-fun c!31024 () Bool)

(assert (=> bm!17620 (= c!31024 c!31022)))

(declare-fun d!52797 () Bool)

(assert (=> d!52797 e!114830))

(declare-fun res!82545 () Bool)

(assert (=> d!52797 (=> (not res!82545) (not e!114830))))

(assert (=> d!52797 (= res!82545 (isStrictlySorted!327 lt!86114))))

(assert (=> d!52797 (= lt!86114 e!114827)))

(assert (=> d!52797 (= c!31022 (and ((_ is Cons!2222) (toList!1104 lt!85811)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85811))) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52797 (isStrictlySorted!327 (toList!1104 lt!85811))))

(assert (=> d!52797 (= (insertStrictlySorted!101 (toList!1104 lt!85811) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!86114)))

(declare-fun bm!17622 () Bool)

(assert (=> bm!17622 (= call!17624 call!17625)))

(declare-fun b!173838 () Bool)

(assert (=> b!173838 (= e!114828 call!17625)))

(declare-fun b!173839 () Bool)

(assert (=> b!173839 (= e!114829 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85811)) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!173840 () Bool)

(assert (=> b!173840 (= e!114830 (contains!1154 lt!86114 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52797 c!31022) b!173833))

(assert (= (and d!52797 (not c!31022)) b!173837))

(assert (= (and b!173837 c!31023) b!173838))

(assert (= (and b!173837 (not c!31023)) b!173834))

(assert (= (and b!173834 c!31025) b!173835))

(assert (= (and b!173834 (not c!31025)) b!173836))

(assert (= (or b!173835 b!173836) bm!17622))

(assert (= (or b!173838 bm!17622) bm!17621))

(assert (= (or b!173833 bm!17621) bm!17620))

(assert (= (and bm!17620 c!31024) b!173839))

(assert (= (and bm!17620 (not c!31024)) b!173831))

(assert (= (and d!52797 res!82545) b!173832))

(assert (= (and b!173832 res!82544) b!173840))

(declare-fun m!202589 () Bool)

(assert (=> b!173840 m!202589))

(declare-fun m!202591 () Bool)

(assert (=> bm!17620 m!202591))

(declare-fun m!202593 () Bool)

(assert (=> b!173839 m!202593))

(declare-fun m!202595 () Bool)

(assert (=> b!173832 m!202595))

(declare-fun m!202597 () Bool)

(assert (=> d!52797 m!202597))

(declare-fun m!202599 () Bool)

(assert (=> d!52797 m!202599))

(assert (=> d!52567 d!52797))

(declare-fun d!52799 () Bool)

(declare-fun e!114831 () Bool)

(assert (=> d!52799 e!114831))

(declare-fun res!82546 () Bool)

(assert (=> d!52799 (=> res!82546 e!114831)))

(declare-fun lt!86115 () Bool)

(assert (=> d!52799 (= res!82546 (not lt!86115))))

(declare-fun lt!86117 () Bool)

(assert (=> d!52799 (= lt!86115 lt!86117)))

(declare-fun lt!86118 () Unit!5311)

(declare-fun e!114832 () Unit!5311)

(assert (=> d!52799 (= lt!86118 e!114832)))

(declare-fun c!31026 () Bool)

(assert (=> d!52799 (= c!31026 lt!86117)))

(assert (=> d!52799 (= lt!86117 (containsKey!188 (toList!1104 lt!85911) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52799 (= (contains!1153 lt!85911 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86115)))

(declare-fun b!173841 () Bool)

(declare-fun lt!86116 () Unit!5311)

(assert (=> b!173841 (= e!114832 lt!86116)))

(assert (=> b!173841 (= lt!86116 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85911) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173841 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173842 () Bool)

(declare-fun Unit!5335 () Unit!5311)

(assert (=> b!173842 (= e!114832 Unit!5335)))

(declare-fun b!173843 () Bool)

(assert (=> b!173843 (= e!114831 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!52799 c!31026) b!173841))

(assert (= (and d!52799 (not c!31026)) b!173842))

(assert (= (and d!52799 (not res!82546)) b!173843))

(assert (=> d!52799 m!201715))

(declare-fun m!202601 () Bool)

(assert (=> d!52799 m!202601))

(assert (=> b!173841 m!201715))

(declare-fun m!202603 () Bool)

(assert (=> b!173841 m!202603))

(assert (=> b!173841 m!201715))

(declare-fun m!202605 () Bool)

(assert (=> b!173841 m!202605))

(assert (=> b!173841 m!202605))

(declare-fun m!202607 () Bool)

(assert (=> b!173841 m!202607))

(assert (=> b!173843 m!201715))

(assert (=> b!173843 m!202605))

(assert (=> b!173843 m!202605))

(assert (=> b!173843 m!202607))

(assert (=> b!173453 d!52799))

(declare-fun b!173844 () Bool)

(declare-fun e!114833 () Option!190)

(assert (=> b!173844 (= e!114833 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!86020)))))))

(declare-fun b!173847 () Bool)

(declare-fun e!114834 () Option!190)

(assert (=> b!173847 (= e!114834 None!188)))

(declare-fun b!173845 () Bool)

(assert (=> b!173845 (= e!114833 e!114834)))

(declare-fun c!31028 () Bool)

(assert (=> b!173845 (= c!31028 (and ((_ is Cons!2222) (toList!1104 lt!86020)) (not (= (_1!1628 (h!2839 (toList!1104 lt!86020))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))))

(declare-fun b!173846 () Bool)

(assert (=> b!173846 (= e!114834 (getValueByKey!184 (t!7041 (toList!1104 lt!86020)) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun c!31027 () Bool)

(declare-fun d!52801 () Bool)

(assert (=> d!52801 (= c!31027 (and ((_ is Cons!2222) (toList!1104 lt!86020)) (= (_1!1628 (h!2839 (toList!1104 lt!86020))) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(assert (=> d!52801 (= (getValueByKey!184 (toList!1104 lt!86020) (_1!1628 (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))) e!114833)))

(assert (= (and d!52801 c!31027) b!173844))

(assert (= (and d!52801 (not c!31027)) b!173845))

(assert (= (and b!173845 c!31028) b!173846))

(assert (= (and b!173845 (not c!31028)) b!173847))

(declare-fun m!202609 () Bool)

(assert (=> b!173846 m!202609))

(assert (=> b!173653 d!52801))

(declare-fun lt!86119 () Bool)

(declare-fun d!52803 () Bool)

(assert (=> d!52803 (= lt!86119 (select (content!148 (toList!1104 lt!85982)) (tuple2!3237 lt!85860 v!309)))))

(declare-fun e!114836 () Bool)

(assert (=> d!52803 (= lt!86119 e!114836)))

(declare-fun res!82548 () Bool)

(assert (=> d!52803 (=> (not res!82548) (not e!114836))))

(assert (=> d!52803 (= res!82548 ((_ is Cons!2222) (toList!1104 lt!85982)))))

(assert (=> d!52803 (= (contains!1154 (toList!1104 lt!85982) (tuple2!3237 lt!85860 v!309)) lt!86119)))

(declare-fun b!173848 () Bool)

(declare-fun e!114835 () Bool)

(assert (=> b!173848 (= e!114836 e!114835)))

(declare-fun res!82547 () Bool)

(assert (=> b!173848 (=> res!82547 e!114835)))

(assert (=> b!173848 (= res!82547 (= (h!2839 (toList!1104 lt!85982)) (tuple2!3237 lt!85860 v!309)))))

(declare-fun b!173849 () Bool)

(assert (=> b!173849 (= e!114835 (contains!1154 (t!7041 (toList!1104 lt!85982)) (tuple2!3237 lt!85860 v!309)))))

(assert (= (and d!52803 res!82548) b!173848))

(assert (= (and b!173848 (not res!82547)) b!173849))

(declare-fun m!202611 () Bool)

(assert (=> d!52803 m!202611))

(declare-fun m!202613 () Bool)

(assert (=> d!52803 m!202613))

(declare-fun m!202615 () Bool)

(assert (=> b!173849 m!202615))

(assert (=> b!173572 d!52803))

(assert (=> b!173663 d!52693))

(declare-fun d!52805 () Bool)

(declare-fun e!114837 () Bool)

(assert (=> d!52805 e!114837))

(declare-fun res!82549 () Bool)

(assert (=> d!52805 (=> res!82549 e!114837)))

(declare-fun lt!86120 () Bool)

(assert (=> d!52805 (= res!82549 (not lt!86120))))

(declare-fun lt!86122 () Bool)

(assert (=> d!52805 (= lt!86120 lt!86122)))

(declare-fun lt!86123 () Unit!5311)

(declare-fun e!114838 () Unit!5311)

(assert (=> d!52805 (= lt!86123 e!114838)))

(declare-fun c!31029 () Bool)

(assert (=> d!52805 (= c!31029 lt!86122)))

(assert (=> d!52805 (= lt!86122 (containsKey!188 (toList!1104 lt!85911) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52805 (= (contains!1153 lt!85911 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86120)))

(declare-fun b!173850 () Bool)

(declare-fun lt!86121 () Unit!5311)

(assert (=> b!173850 (= e!114838 lt!86121)))

(assert (=> b!173850 (= lt!86121 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85911) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173850 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173851 () Bool)

(declare-fun Unit!5336 () Unit!5311)

(assert (=> b!173851 (= e!114838 Unit!5336)))

(declare-fun b!173852 () Bool)

(assert (=> b!173852 (= e!114837 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52805 c!31029) b!173850))

(assert (= (and d!52805 (not c!31029)) b!173851))

(assert (= (and d!52805 (not res!82549)) b!173852))

(declare-fun m!202617 () Bool)

(assert (=> d!52805 m!202617))

(declare-fun m!202619 () Bool)

(assert (=> b!173850 m!202619))

(declare-fun m!202621 () Bool)

(assert (=> b!173850 m!202621))

(assert (=> b!173850 m!202621))

(declare-fun m!202623 () Bool)

(assert (=> b!173850 m!202623))

(assert (=> b!173852 m!202621))

(assert (=> b!173852 m!202621))

(assert (=> b!173852 m!202623))

(assert (=> d!52551 d!52805))

(assert (=> d!52551 d!52537))

(declare-fun d!52807 () Bool)

(declare-fun res!82550 () Bool)

(declare-fun e!114839 () Bool)

(assert (=> d!52807 (=> res!82550 e!114839)))

(assert (=> d!52807 (= res!82550 (and ((_ is Cons!2222) lt!86014) (= (_1!1628 (h!2839 lt!86014)) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52807 (= (containsKey!188 lt!86014 (_1!1628 (tuple2!3237 key!828 v!309))) e!114839)))

(declare-fun b!173853 () Bool)

(declare-fun e!114840 () Bool)

(assert (=> b!173853 (= e!114839 e!114840)))

(declare-fun res!82551 () Bool)

(assert (=> b!173853 (=> (not res!82551) (not e!114840))))

(assert (=> b!173853 (= res!82551 (and (or (not ((_ is Cons!2222) lt!86014)) (bvsle (_1!1628 (h!2839 lt!86014)) (_1!1628 (tuple2!3237 key!828 v!309)))) ((_ is Cons!2222) lt!86014) (bvslt (_1!1628 (h!2839 lt!86014)) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!173854 () Bool)

(assert (=> b!173854 (= e!114840 (containsKey!188 (t!7041 lt!86014) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (= (and d!52807 (not res!82550)) b!173853))

(assert (= (and b!173853 res!82551) b!173854))

(declare-fun m!202625 () Bool)

(assert (=> b!173854 m!202625))

(assert (=> b!173630 d!52807))

(declare-fun d!52809 () Bool)

(declare-fun isEmpty!443 (List!2226) Bool)

(assert (=> d!52809 (= (isEmpty!441 lt!85964) (isEmpty!443 (toList!1104 lt!85964)))))

(declare-fun bs!7180 () Bool)

(assert (= bs!7180 d!52809))

(declare-fun m!202627 () Bool)

(assert (=> bs!7180 m!202627))

(assert (=> b!173548 d!52809))

(declare-fun b!173855 () Bool)

(declare-fun e!114841 () Option!190)

(assert (=> b!173855 (= e!114841 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85888)))))))

(declare-fun b!173858 () Bool)

(declare-fun e!114842 () Option!190)

(assert (=> b!173858 (= e!114842 None!188)))

(declare-fun b!173856 () Bool)

(assert (=> b!173856 (= e!114841 e!114842)))

(declare-fun c!31031 () Bool)

(assert (=> b!173856 (= c!31031 (and ((_ is Cons!2222) (toList!1104 lt!85888)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85888))) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))))

(declare-fun b!173857 () Bool)

(assert (=> b!173857 (= e!114842 (getValueByKey!184 (t!7041 (toList!1104 lt!85888)) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun d!52811 () Bool)

(declare-fun c!31030 () Bool)

(assert (=> d!52811 (= c!31030 (and ((_ is Cons!2222) (toList!1104 lt!85888)) (= (_1!1628 (h!2839 (toList!1104 lt!85888))) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (=> d!52811 (= (getValueByKey!184 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) e!114841)))

(assert (= (and d!52811 c!31030) b!173855))

(assert (= (and d!52811 (not c!31030)) b!173856))

(assert (= (and b!173856 c!31031) b!173857))

(assert (= (and b!173856 (not c!31031)) b!173858))

(declare-fun m!202629 () Bool)

(assert (=> b!173857 m!202629))

(assert (=> b!173420 d!52811))

(declare-fun d!52813 () Bool)

(assert (=> d!52813 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!85818)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!85818)))))

(assert (=> d!52563 d!52813))

(declare-fun b!173859 () Bool)

(declare-fun e!114843 () Option!190)

(assert (=> b!173859 (= e!114843 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))))

(declare-fun b!173862 () Bool)

(declare-fun e!114844 () Option!190)

(assert (=> b!173862 (= e!114844 None!188)))

(declare-fun b!173860 () Bool)

(assert (=> b!173860 (= e!114843 e!114844)))

(declare-fun c!31033 () Bool)

(assert (=> b!173860 (= c!31033 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))) lt!85818))))))

(declare-fun b!173861 () Bool)

(assert (=> b!173861 (= e!114844 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))) lt!85818))))

(declare-fun d!52815 () Bool)

(declare-fun c!31032 () Bool)

(assert (=> d!52815 (= c!31032 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))) lt!85818)))))

(assert (=> d!52815 (= (getValueByKey!184 (toList!1104 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!85818) e!114843)))

(assert (= (and d!52815 c!31032) b!173859))

(assert (= (and d!52815 (not c!31032)) b!173860))

(assert (= (and b!173860 c!31033) b!173861))

(assert (= (and b!173860 (not c!31033)) b!173862))

(declare-fun m!202631 () Bool)

(assert (=> b!173861 m!202631))

(assert (=> d!52563 d!52815))

(assert (=> b!173565 d!52575))

(declare-fun d!52817 () Bool)

(declare-fun e!114845 () Bool)

(assert (=> d!52817 e!114845))

(declare-fun res!82552 () Bool)

(assert (=> d!52817 (=> res!82552 e!114845)))

(declare-fun lt!86124 () Bool)

(assert (=> d!52817 (= res!82552 (not lt!86124))))

(declare-fun lt!86126 () Bool)

(assert (=> d!52817 (= lt!86124 lt!86126)))

(declare-fun lt!86127 () Unit!5311)

(declare-fun e!114846 () Unit!5311)

(assert (=> d!52817 (= lt!86127 e!114846)))

(declare-fun c!31034 () Bool)

(assert (=> d!52817 (= c!31034 lt!86126)))

(assert (=> d!52817 (= lt!86126 (containsKey!188 (toList!1104 lt!86040) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> d!52817 (= (contains!1153 lt!86040 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) lt!86124)))

(declare-fun b!173863 () Bool)

(declare-fun lt!86125 () Unit!5311)

(assert (=> b!173863 (= e!114846 lt!86125)))

(assert (=> b!173863 (= lt!86125 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!86040) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> b!173863 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173864 () Bool)

(declare-fun Unit!5337 () Unit!5311)

(assert (=> b!173864 (= e!114846 Unit!5337)))

(declare-fun b!173865 () Bool)

(assert (=> b!173865 (= e!114845 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))))

(assert (= (and d!52817 c!31034) b!173863))

(assert (= (and d!52817 (not c!31034)) b!173864))

(assert (= (and d!52817 (not res!82552)) b!173865))

(assert (=> d!52817 m!202201))

(declare-fun m!202633 () Bool)

(assert (=> d!52817 m!202633))

(assert (=> b!173863 m!202201))

(declare-fun m!202635 () Bool)

(assert (=> b!173863 m!202635))

(assert (=> b!173863 m!202201))

(declare-fun m!202637 () Bool)

(assert (=> b!173863 m!202637))

(assert (=> b!173863 m!202637))

(declare-fun m!202639 () Bool)

(assert (=> b!173863 m!202639))

(assert (=> b!173865 m!202201))

(assert (=> b!173865 m!202637))

(assert (=> b!173865 m!202637))

(assert (=> b!173865 m!202639))

(assert (=> b!173689 d!52817))

(declare-fun d!52819 () Bool)

(assert (=> d!52819 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85828) lt!85817)) (v!3952 (getValueByKey!184 (toList!1104 lt!85828) lt!85817)))))

(assert (=> d!52559 d!52819))

(declare-fun b!173866 () Bool)

(declare-fun e!114847 () Option!190)

(assert (=> b!173866 (= e!114847 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85828)))))))

(declare-fun b!173869 () Bool)

(declare-fun e!114848 () Option!190)

(assert (=> b!173869 (= e!114848 None!188)))

(declare-fun b!173867 () Bool)

(assert (=> b!173867 (= e!114847 e!114848)))

(declare-fun c!31036 () Bool)

(assert (=> b!173867 (= c!31036 (and ((_ is Cons!2222) (toList!1104 lt!85828)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85828))) lt!85817))))))

(declare-fun b!173868 () Bool)

(assert (=> b!173868 (= e!114848 (getValueByKey!184 (t!7041 (toList!1104 lt!85828)) lt!85817))))

(declare-fun d!52821 () Bool)

(declare-fun c!31035 () Bool)

(assert (=> d!52821 (= c!31035 (and ((_ is Cons!2222) (toList!1104 lt!85828)) (= (_1!1628 (h!2839 (toList!1104 lt!85828))) lt!85817)))))

(assert (=> d!52821 (= (getValueByKey!184 (toList!1104 lt!85828) lt!85817) e!114847)))

(assert (= (and d!52821 c!31035) b!173866))

(assert (= (and d!52821 (not c!31035)) b!173867))

(assert (= (and b!173867 c!31036) b!173868))

(assert (= (and b!173867 (not c!31036)) b!173869))

(declare-fun m!202641 () Bool)

(assert (=> b!173868 m!202641))

(assert (=> d!52559 d!52821))

(declare-fun b!173870 () Bool)

(declare-fun e!114849 () Option!190)

(assert (=> b!173870 (= e!114849 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!86058)))))))

(declare-fun b!173873 () Bool)

(declare-fun e!114850 () Option!190)

(assert (=> b!173873 (= e!114850 None!188)))

(declare-fun b!173871 () Bool)

(assert (=> b!173871 (= e!114849 e!114850)))

(declare-fun c!31038 () Bool)

(assert (=> b!173871 (= c!31038 (and ((_ is Cons!2222) (toList!1104 lt!86058)) (not (= (_1!1628 (h!2839 (toList!1104 lt!86058))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun b!173872 () Bool)

(assert (=> b!173872 (= e!114850 (getValueByKey!184 (t!7041 (toList!1104 lt!86058)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun d!52823 () Bool)

(declare-fun c!31037 () Bool)

(assert (=> d!52823 (= c!31037 (and ((_ is Cons!2222) (toList!1104 lt!86058)) (= (_1!1628 (h!2839 (toList!1104 lt!86058))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52823 (= (getValueByKey!184 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) e!114849)))

(assert (= (and d!52823 c!31037) b!173870))

(assert (= (and d!52823 (not c!31037)) b!173871))

(assert (= (and b!173871 c!31038) b!173872))

(assert (= (and b!173871 (not c!31038)) b!173873))

(declare-fun m!202643 () Bool)

(assert (=> b!173872 m!202643))

(assert (=> b!173698 d!52823))

(declare-fun d!52825 () Bool)

(declare-fun e!114851 () Bool)

(assert (=> d!52825 e!114851))

(declare-fun res!82553 () Bool)

(assert (=> d!52825 (=> res!82553 e!114851)))

(declare-fun lt!86128 () Bool)

(assert (=> d!52825 (= res!82553 (not lt!86128))))

(declare-fun lt!86130 () Bool)

(assert (=> d!52825 (= lt!86128 lt!86130)))

(declare-fun lt!86131 () Unit!5311)

(declare-fun e!114852 () Unit!5311)

(assert (=> d!52825 (= lt!86131 e!114852)))

(declare-fun c!31039 () Bool)

(assert (=> d!52825 (= c!31039 lt!86130)))

(assert (=> d!52825 (= lt!86130 (containsKey!188 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52825 (= (contains!1153 lt!85941 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86128)))

(declare-fun b!173874 () Bool)

(declare-fun lt!86129 () Unit!5311)

(assert (=> b!173874 (= e!114852 lt!86129)))

(assert (=> b!173874 (= lt!86129 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> b!173874 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173875 () Bool)

(declare-fun Unit!5338 () Unit!5311)

(assert (=> b!173875 (= e!114852 Unit!5338)))

(declare-fun b!173876 () Bool)

(assert (=> b!173876 (= e!114851 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52825 c!31039) b!173874))

(assert (= (and d!52825 (not c!31039)) b!173875))

(assert (= (and d!52825 (not res!82553)) b!173876))

(declare-fun m!202645 () Bool)

(assert (=> d!52825 m!202645))

(declare-fun m!202647 () Bool)

(assert (=> b!173874 m!202647))

(assert (=> b!173874 m!202011))

(assert (=> b!173874 m!202011))

(declare-fun m!202649 () Bool)

(assert (=> b!173874 m!202649))

(assert (=> b!173876 m!202011))

(assert (=> b!173876 m!202011))

(assert (=> b!173876 m!202649))

(assert (=> d!52577 d!52825))

(declare-fun b!173877 () Bool)

(declare-fun e!114853 () Option!190)

(assert (=> b!173877 (= e!114853 (Some!189 (_2!1628 (h!2839 lt!85942))))))

(declare-fun b!173880 () Bool)

(declare-fun e!114854 () Option!190)

(assert (=> b!173880 (= e!114854 None!188)))

(declare-fun b!173878 () Bool)

(assert (=> b!173878 (= e!114853 e!114854)))

(declare-fun c!31041 () Bool)

(assert (=> b!173878 (= c!31041 (and ((_ is Cons!2222) lt!85942) (not (= (_1!1628 (h!2839 lt!85942)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173879 () Bool)

(assert (=> b!173879 (= e!114854 (getValueByKey!184 (t!7041 lt!85942) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!52827 () Bool)

(declare-fun c!31040 () Bool)

(assert (=> d!52827 (= c!31040 (and ((_ is Cons!2222) lt!85942) (= (_1!1628 (h!2839 lt!85942)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52827 (= (getValueByKey!184 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114853)))

(assert (= (and d!52827 c!31040) b!173877))

(assert (= (and d!52827 (not c!31040)) b!173878))

(assert (= (and b!173878 c!31041) b!173879))

(assert (= (and b!173878 (not c!31041)) b!173880))

(declare-fun m!202651 () Bool)

(assert (=> b!173879 m!202651))

(assert (=> d!52577 d!52827))

(declare-fun d!52829 () Bool)

(assert (=> d!52829 (= (getValueByKey!184 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!86132 () Unit!5311)

(assert (=> d!52829 (= lt!86132 (choose!939 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!114855 () Bool)

(assert (=> d!52829 e!114855))

(declare-fun res!82554 () Bool)

(assert (=> d!52829 (=> (not res!82554) (not e!114855))))

(assert (=> d!52829 (= res!82554 (isStrictlySorted!327 lt!85942))))

(assert (=> d!52829 (= (lemmaContainsTupThenGetReturnValue!99 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86132)))

(declare-fun b!173881 () Bool)

(declare-fun res!82555 () Bool)

(assert (=> b!173881 (=> (not res!82555) (not e!114855))))

(assert (=> b!173881 (= res!82555 (containsKey!188 lt!85942 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173882 () Bool)

(assert (=> b!173882 (= e!114855 (contains!1154 lt!85942 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52829 res!82554) b!173881))

(assert (= (and b!173881 res!82555) b!173882))

(assert (=> d!52829 m!202005))

(declare-fun m!202653 () Bool)

(assert (=> d!52829 m!202653))

(declare-fun m!202655 () Bool)

(assert (=> d!52829 m!202655))

(declare-fun m!202657 () Bool)

(assert (=> b!173881 m!202657))

(declare-fun m!202659 () Bool)

(assert (=> b!173882 m!202659))

(assert (=> d!52577 d!52829))

(declare-fun bm!17624 () Bool)

(declare-fun call!17628 () List!2226)

(declare-fun call!17626 () List!2226)

(assert (=> bm!17624 (= call!17628 call!17626)))

(declare-fun b!173883 () Bool)

(declare-fun c!31043 () Bool)

(declare-fun e!114859 () List!2226)

(declare-fun c!31045 () Bool)

(assert (=> b!173883 (= e!114859 (ite c!31043 (t!7041 (toList!1104 call!17581)) (ite c!31045 (Cons!2222 (h!2839 (toList!1104 call!17581)) (t!7041 (toList!1104 call!17581))) Nil!2223)))))

(declare-fun b!173884 () Bool)

(declare-fun res!82556 () Bool)

(declare-fun e!114860 () Bool)

(assert (=> b!173884 (=> (not res!82556) (not e!114860))))

(declare-fun lt!86133 () List!2226)

(assert (=> b!173884 (= res!82556 (containsKey!188 lt!86133 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173885 () Bool)

(declare-fun e!114857 () List!2226)

(assert (=> b!173885 (= e!114857 call!17626)))

(declare-fun b!173886 () Bool)

(assert (=> b!173886 (= c!31045 (and ((_ is Cons!2222) (toList!1104 call!17581)) (bvsgt (_1!1628 (h!2839 (toList!1104 call!17581))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!114858 () List!2226)

(declare-fun e!114856 () List!2226)

(assert (=> b!173886 (= e!114858 e!114856)))

(declare-fun b!173887 () Bool)

(declare-fun call!17627 () List!2226)

(assert (=> b!173887 (= e!114856 call!17627)))

(declare-fun b!173888 () Bool)

(assert (=> b!173888 (= e!114856 call!17627)))

(declare-fun b!173889 () Bool)

(assert (=> b!173889 (= e!114857 e!114858)))

(assert (=> b!173889 (= c!31043 (and ((_ is Cons!2222) (toList!1104 call!17581)) (= (_1!1628 (h!2839 (toList!1104 call!17581))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun c!31042 () Bool)

(declare-fun bm!17623 () Bool)

(assert (=> bm!17623 (= call!17626 ($colon$colon!97 e!114859 (ite c!31042 (h!2839 (toList!1104 call!17581)) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!31044 () Bool)

(assert (=> bm!17623 (= c!31044 c!31042)))

(declare-fun d!52831 () Bool)

(assert (=> d!52831 e!114860))

(declare-fun res!82557 () Bool)

(assert (=> d!52831 (=> (not res!82557) (not e!114860))))

(assert (=> d!52831 (= res!82557 (isStrictlySorted!327 lt!86133))))

(assert (=> d!52831 (= lt!86133 e!114857)))

(assert (=> d!52831 (= c!31042 (and ((_ is Cons!2222) (toList!1104 call!17581)) (bvslt (_1!1628 (h!2839 (toList!1104 call!17581))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52831 (isStrictlySorted!327 (toList!1104 call!17581))))

(assert (=> d!52831 (= (insertStrictlySorted!101 (toList!1104 call!17581) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86133)))

(declare-fun bm!17625 () Bool)

(assert (=> bm!17625 (= call!17627 call!17628)))

(declare-fun b!173890 () Bool)

(assert (=> b!173890 (= e!114858 call!17628)))

(declare-fun b!173891 () Bool)

(assert (=> b!173891 (= e!114859 (insertStrictlySorted!101 (t!7041 (toList!1104 call!17581)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!173892 () Bool)

(assert (=> b!173892 (= e!114860 (contains!1154 lt!86133 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!52831 c!31042) b!173885))

(assert (= (and d!52831 (not c!31042)) b!173889))

(assert (= (and b!173889 c!31043) b!173890))

(assert (= (and b!173889 (not c!31043)) b!173886))

(assert (= (and b!173886 c!31045) b!173887))

(assert (= (and b!173886 (not c!31045)) b!173888))

(assert (= (or b!173887 b!173888) bm!17625))

(assert (= (or b!173890 bm!17625) bm!17624))

(assert (= (or b!173885 bm!17624) bm!17623))

(assert (= (and bm!17623 c!31044) b!173891))

(assert (= (and bm!17623 (not c!31044)) b!173883))

(assert (= (and d!52831 res!82557) b!173884))

(assert (= (and b!173884 res!82556) b!173892))

(declare-fun m!202661 () Bool)

(assert (=> b!173892 m!202661))

(declare-fun m!202663 () Bool)

(assert (=> bm!17623 m!202663))

(declare-fun m!202665 () Bool)

(assert (=> b!173891 m!202665))

(declare-fun m!202667 () Bool)

(assert (=> b!173884 m!202667))

(declare-fun m!202669 () Bool)

(assert (=> d!52831 m!202669))

(declare-fun m!202671 () Bool)

(assert (=> d!52831 m!202671))

(assert (=> d!52577 d!52831))

(declare-fun d!52833 () Bool)

(declare-fun lt!86136 () Bool)

(declare-fun content!149 (List!2228) (InoxSet (_ BitVec 64)))

(assert (=> d!52833 (= lt!86136 (select (content!149 Nil!2225) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!114865 () Bool)

(assert (=> d!52833 (= lt!86136 e!114865)))

(declare-fun res!82563 () Bool)

(assert (=> d!52833 (=> (not res!82563) (not e!114865))))

(assert (=> d!52833 (= res!82563 ((_ is Cons!2224) Nil!2225))))

(assert (=> d!52833 (= (contains!1155 Nil!2225 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86136)))

(declare-fun b!173897 () Bool)

(declare-fun e!114866 () Bool)

(assert (=> b!173897 (= e!114865 e!114866)))

(declare-fun res!82562 () Bool)

(assert (=> b!173897 (=> res!82562 e!114866)))

(assert (=> b!173897 (= res!82562 (= (h!2841 Nil!2225) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173898 () Bool)

(assert (=> b!173898 (= e!114866 (contains!1155 (t!7045 Nil!2225) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52833 res!82563) b!173897))

(assert (= (and b!173897 (not res!82562)) b!173898))

(declare-fun m!202673 () Bool)

(assert (=> d!52833 m!202673))

(assert (=> d!52833 m!201715))

(declare-fun m!202675 () Bool)

(assert (=> d!52833 m!202675))

(assert (=> b!173898 m!201715))

(declare-fun m!202677 () Bool)

(assert (=> b!173898 m!202677))

(assert (=> b!173595 d!52833))

(declare-fun b!173899 () Bool)

(declare-fun e!114867 () Option!190)

(assert (=> b!173899 (= e!114867 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85929)))))))

(declare-fun b!173902 () Bool)

(declare-fun e!114868 () Option!190)

(assert (=> b!173902 (= e!114868 None!188)))

(declare-fun b!173900 () Bool)

(assert (=> b!173900 (= e!114867 e!114868)))

(declare-fun c!31047 () Bool)

(assert (=> b!173900 (= c!31047 (and ((_ is Cons!2222) (toList!1104 lt!85929)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85929))) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!173901 () Bool)

(assert (=> b!173901 (= e!114868 (getValueByKey!184 (t!7041 (toList!1104 lt!85929)) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31046 () Bool)

(declare-fun d!52835 () Bool)

(assert (=> d!52835 (= c!31046 (and ((_ is Cons!2222) (toList!1104 lt!85929)) (= (_1!1628 (h!2839 (toList!1104 lt!85929))) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52835 (= (getValueByKey!184 (toList!1104 lt!85929) (_1!1628 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) e!114867)))

(assert (= (and d!52835 c!31046) b!173899))

(assert (= (and d!52835 (not c!31046)) b!173900))

(assert (= (and b!173900 c!31047) b!173901))

(assert (= (and b!173900 (not c!31047)) b!173902))

(declare-fun m!202679 () Bool)

(assert (=> b!173901 m!202679))

(assert (=> b!173470 d!52835))

(declare-fun d!52837 () Bool)

(declare-fun e!114869 () Bool)

(assert (=> d!52837 e!114869))

(declare-fun res!82564 () Bool)

(assert (=> d!52837 (=> res!82564 e!114869)))

(declare-fun lt!86137 () Bool)

(assert (=> d!52837 (= res!82564 (not lt!86137))))

(declare-fun lt!86139 () Bool)

(assert (=> d!52837 (= lt!86137 lt!86139)))

(declare-fun lt!86140 () Unit!5311)

(declare-fun e!114870 () Unit!5311)

(assert (=> d!52837 (= lt!86140 e!114870)))

(declare-fun c!31048 () Bool)

(assert (=> d!52837 (= c!31048 lt!86139)))

(assert (=> d!52837 (= lt!86139 (containsKey!188 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (=> d!52837 (= (contains!1153 lt!86058 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) lt!86137)))

(declare-fun b!173903 () Bool)

(declare-fun lt!86138 () Unit!5311)

(assert (=> b!173903 (= e!114870 lt!86138)))

(assert (=> b!173903 (= lt!86138 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (=> b!173903 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun b!173904 () Bool)

(declare-fun Unit!5339 () Unit!5311)

(assert (=> b!173904 (= e!114870 Unit!5339)))

(declare-fun b!173905 () Bool)

(assert (=> b!173905 (= e!114869 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86058) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52837 c!31048) b!173903))

(assert (= (and d!52837 (not c!31048)) b!173904))

(assert (= (and d!52837 (not res!82564)) b!173905))

(declare-fun m!202681 () Bool)

(assert (=> d!52837 m!202681))

(declare-fun m!202683 () Bool)

(assert (=> b!173903 m!202683))

(assert (=> b!173903 m!202365))

(assert (=> b!173903 m!202365))

(declare-fun m!202685 () Bool)

(assert (=> b!173903 m!202685))

(assert (=> b!173905 m!202365))

(assert (=> b!173905 m!202365))

(assert (=> b!173905 m!202685))

(assert (=> d!52681 d!52837))

(declare-fun b!173906 () Bool)

(declare-fun e!114871 () Option!190)

(assert (=> b!173906 (= e!114871 (Some!189 (_2!1628 (h!2839 lt!86059))))))

(declare-fun b!173909 () Bool)

(declare-fun e!114872 () Option!190)

(assert (=> b!173909 (= e!114872 None!188)))

(declare-fun b!173907 () Bool)

(assert (=> b!173907 (= e!114871 e!114872)))

(declare-fun c!31050 () Bool)

(assert (=> b!173907 (= c!31050 (and ((_ is Cons!2222) lt!86059) (not (= (_1!1628 (h!2839 lt!86059)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun b!173908 () Bool)

(assert (=> b!173908 (= e!114872 (getValueByKey!184 (t!7041 lt!86059) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun d!52839 () Bool)

(declare-fun c!31049 () Bool)

(assert (=> d!52839 (= c!31049 (and ((_ is Cons!2222) lt!86059) (= (_1!1628 (h!2839 lt!86059)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52839 (= (getValueByKey!184 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) e!114871)))

(assert (= (and d!52839 c!31049) b!173906))

(assert (= (and d!52839 (not c!31049)) b!173907))

(assert (= (and b!173907 c!31050) b!173908))

(assert (= (and b!173907 (not c!31050)) b!173909))

(declare-fun m!202687 () Bool)

(assert (=> b!173908 m!202687))

(assert (=> d!52681 d!52839))

(declare-fun d!52841 () Bool)

(assert (=> d!52841 (= (getValueByKey!184 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun lt!86141 () Unit!5311)

(assert (=> d!52841 (= lt!86141 (choose!939 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun e!114873 () Bool)

(assert (=> d!52841 e!114873))

(declare-fun res!82565 () Bool)

(assert (=> d!52841 (=> (not res!82565) (not e!114873))))

(assert (=> d!52841 (= res!82565 (isStrictlySorted!327 lt!86059))))

(assert (=> d!52841 (= (lemmaContainsTupThenGetReturnValue!99 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) lt!86141)))

(declare-fun b!173910 () Bool)

(declare-fun res!82566 () Bool)

(assert (=> b!173910 (=> (not res!82566) (not e!114873))))

(assert (=> b!173910 (= res!82566 (containsKey!188 lt!86059 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun b!173911 () Bool)

(assert (=> b!173911 (= e!114873 (contains!1154 lt!86059 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52841 res!82565) b!173910))

(assert (= (and b!173910 res!82566) b!173911))

(assert (=> d!52841 m!202359))

(declare-fun m!202689 () Bool)

(assert (=> d!52841 m!202689))

(declare-fun m!202691 () Bool)

(assert (=> d!52841 m!202691))

(declare-fun m!202693 () Bool)

(assert (=> b!173910 m!202693))

(declare-fun m!202695 () Bool)

(assert (=> b!173911 m!202695))

(assert (=> d!52681 d!52841))

(declare-fun bm!17627 () Bool)

(declare-fun call!17631 () List!2226)

(declare-fun call!17629 () List!2226)

(assert (=> bm!17627 (= call!17631 call!17629)))

(declare-fun c!31052 () Bool)

(declare-fun b!173912 () Bool)

(declare-fun e!114877 () List!2226)

(declare-fun c!31054 () Bool)

(assert (=> b!173912 (= e!114877 (ite c!31052 (t!7041 (toList!1104 call!17574)) (ite c!31054 (Cons!2222 (h!2839 (toList!1104 call!17574)) (t!7041 (toList!1104 call!17574))) Nil!2223)))))

(declare-fun b!173913 () Bool)

(declare-fun res!82567 () Bool)

(declare-fun e!114878 () Bool)

(assert (=> b!173913 (=> (not res!82567) (not e!114878))))

(declare-fun lt!86142 () List!2226)

(assert (=> b!173913 (= res!82567 (containsKey!188 lt!86142 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun b!173914 () Bool)

(declare-fun e!114875 () List!2226)

(assert (=> b!173914 (= e!114875 call!17629)))

(declare-fun b!173915 () Bool)

(assert (=> b!173915 (= c!31054 (and ((_ is Cons!2222) (toList!1104 call!17574)) (bvsgt (_1!1628 (h!2839 (toList!1104 call!17574))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun e!114876 () List!2226)

(declare-fun e!114874 () List!2226)

(assert (=> b!173915 (= e!114876 e!114874)))

(declare-fun b!173916 () Bool)

(declare-fun call!17630 () List!2226)

(assert (=> b!173916 (= e!114874 call!17630)))

(declare-fun b!173917 () Bool)

(assert (=> b!173917 (= e!114874 call!17630)))

(declare-fun b!173918 () Bool)

(assert (=> b!173918 (= e!114875 e!114876)))

(assert (=> b!173918 (= c!31052 (and ((_ is Cons!2222) (toList!1104 call!17574)) (= (_1!1628 (h!2839 (toList!1104 call!17574))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(declare-fun bm!17626 () Bool)

(declare-fun c!31051 () Bool)

(assert (=> bm!17626 (= call!17629 ($colon$colon!97 e!114877 (ite c!31051 (h!2839 (toList!1104 call!17574)) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))))

(declare-fun c!31053 () Bool)

(assert (=> bm!17626 (= c!31053 c!31051)))

(declare-fun d!52843 () Bool)

(assert (=> d!52843 e!114878))

(declare-fun res!82568 () Bool)

(assert (=> d!52843 (=> (not res!82568) (not e!114878))))

(assert (=> d!52843 (= res!82568 (isStrictlySorted!327 lt!86142))))

(assert (=> d!52843 (= lt!86142 e!114875)))

(assert (=> d!52843 (= c!31051 (and ((_ is Cons!2222) (toList!1104 call!17574)) (bvslt (_1!1628 (h!2839 (toList!1104 call!17574))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (=> d!52843 (isStrictlySorted!327 (toList!1104 call!17574))))

(assert (=> d!52843 (= (insertStrictlySorted!101 (toList!1104 call!17574) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) lt!86142)))

(declare-fun bm!17628 () Bool)

(assert (=> bm!17628 (= call!17630 call!17631)))

(declare-fun b!173919 () Bool)

(assert (=> b!173919 (= e!114876 call!17631)))

(declare-fun b!173920 () Bool)

(assert (=> b!173920 (= e!114877 (insertStrictlySorted!101 (t!7041 (toList!1104 call!17574)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun b!173921 () Bool)

(assert (=> b!173921 (= e!114878 (contains!1154 lt!86142 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52843 c!31051) b!173914))

(assert (= (and d!52843 (not c!31051)) b!173918))

(assert (= (and b!173918 c!31052) b!173919))

(assert (= (and b!173918 (not c!31052)) b!173915))

(assert (= (and b!173915 c!31054) b!173916))

(assert (= (and b!173915 (not c!31054)) b!173917))

(assert (= (or b!173916 b!173917) bm!17628))

(assert (= (or b!173919 bm!17628) bm!17627))

(assert (= (or b!173914 bm!17627) bm!17626))

(assert (= (and bm!17626 c!31053) b!173920))

(assert (= (and bm!17626 (not c!31053)) b!173912))

(assert (= (and d!52843 res!82568) b!173913))

(assert (= (and b!173913 res!82567) b!173921))

(declare-fun m!202697 () Bool)

(assert (=> b!173921 m!202697))

(declare-fun m!202699 () Bool)

(assert (=> bm!17626 m!202699))

(declare-fun m!202701 () Bool)

(assert (=> b!173920 m!202701))

(declare-fun m!202703 () Bool)

(assert (=> b!173913 m!202703))

(declare-fun m!202705 () Bool)

(assert (=> d!52843 m!202705))

(declare-fun m!202707 () Bool)

(assert (=> d!52843 m!202707))

(assert (=> d!52681 d!52843))

(declare-fun d!52845 () Bool)

(declare-fun lt!86143 () Bool)

(assert (=> d!52845 (= lt!86143 (select (content!149 Nil!2225) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun e!114879 () Bool)

(assert (=> d!52845 (= lt!86143 e!114879)))

(declare-fun res!82570 () Bool)

(assert (=> d!52845 (=> (not res!82570) (not e!114879))))

(assert (=> d!52845 (= res!82570 ((_ is Cons!2224) Nil!2225))))

(assert (=> d!52845 (= (contains!1155 Nil!2225 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) lt!86143)))

(declare-fun b!173922 () Bool)

(declare-fun e!114880 () Bool)

(assert (=> b!173922 (= e!114879 e!114880)))

(declare-fun res!82569 () Bool)

(assert (=> b!173922 (=> res!82569 e!114880)))

(assert (=> b!173922 (= res!82569 (= (h!2841 Nil!2225) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!173923 () Bool)

(assert (=> b!173923 (= e!114880 (contains!1155 (t!7045 Nil!2225) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (= (and d!52845 res!82570) b!173922))

(assert (= (and b!173922 (not res!82569)) b!173923))

(assert (=> d!52845 m!202673))

(assert (=> d!52845 m!202201))

(declare-fun m!202709 () Bool)

(assert (=> d!52845 m!202709))

(assert (=> b!173923 m!202201))

(declare-fun m!202711 () Bool)

(assert (=> b!173923 m!202711))

(assert (=> b!173600 d!52845))

(declare-fun d!52847 () Bool)

(declare-fun res!82573 () Bool)

(declare-fun e!114882 () Bool)

(assert (=> d!52847 (=> res!82573 e!114882)))

(assert (=> d!52847 (= res!82573 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52847 (= (arrayNoDuplicates!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30957 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)) e!114882)))

(declare-fun b!173924 () Bool)

(declare-fun e!114884 () Bool)

(assert (=> b!173924 (= e!114884 (contains!1155 (ite c!30957 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) Nil!2225) Nil!2225) (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!173925 () Bool)

(declare-fun e!114883 () Bool)

(declare-fun e!114881 () Bool)

(assert (=> b!173925 (= e!114883 e!114881)))

(declare-fun c!31055 () Bool)

(assert (=> b!173925 (= c!31055 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!173926 () Bool)

(declare-fun call!17632 () Bool)

(assert (=> b!173926 (= e!114881 call!17632)))

(declare-fun b!173927 () Bool)

(assert (=> b!173927 (= e!114881 call!17632)))

(declare-fun bm!17629 () Bool)

(assert (=> bm!17629 (= call!17632 (arrayNoDuplicates!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!31055 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!30957 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)) (ite c!30957 (Cons!2224 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) Nil!2225) Nil!2225))))))

(declare-fun b!173928 () Bool)

(assert (=> b!173928 (= e!114882 e!114883)))

(declare-fun res!82571 () Bool)

(assert (=> b!173928 (=> (not res!82571) (not e!114883))))

(assert (=> b!173928 (= res!82571 (not e!114884))))

(declare-fun res!82572 () Bool)

(assert (=> b!173928 (=> (not res!82572) (not e!114884))))

(assert (=> b!173928 (= res!82572 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!52847 (not res!82573)) b!173928))

(assert (= (and b!173928 res!82572) b!173924))

(assert (= (and b!173928 res!82571) b!173925))

(assert (= (and b!173925 c!31055) b!173927))

(assert (= (and b!173925 (not c!31055)) b!173926))

(assert (= (or b!173927 b!173926) bm!17629))

(assert (=> b!173924 m!202435))

(assert (=> b!173924 m!202435))

(declare-fun m!202713 () Bool)

(assert (=> b!173924 m!202713))

(assert (=> b!173925 m!202435))

(assert (=> b!173925 m!202435))

(assert (=> b!173925 m!202445))

(assert (=> bm!17629 m!202435))

(declare-fun m!202715 () Bool)

(assert (=> bm!17629 m!202715))

(assert (=> b!173928 m!202435))

(assert (=> b!173928 m!202435))

(assert (=> b!173928 m!202445))

(assert (=> bm!17599 d!52847))

(declare-fun d!52849 () Bool)

(declare-fun res!82576 () Bool)

(declare-fun e!114886 () Bool)

(assert (=> d!52849 (=> res!82576 e!114886)))

(assert (=> d!52849 (= res!82576 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!52849 (= (arrayNoDuplicates!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30958 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)) e!114886)))

(declare-fun b!173929 () Bool)

(declare-fun e!114888 () Bool)

(assert (=> b!173929 (= e!114888 (contains!1155 (ite c!30958 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) Nil!2225) Nil!2225) (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!173930 () Bool)

(declare-fun e!114887 () Bool)

(declare-fun e!114885 () Bool)

(assert (=> b!173930 (= e!114887 e!114885)))

(declare-fun c!31056 () Bool)

(assert (=> b!173930 (= c!31056 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!173931 () Bool)

(declare-fun call!17633 () Bool)

(assert (=> b!173931 (= e!114885 call!17633)))

(declare-fun b!173932 () Bool)

(assert (=> b!173932 (= e!114885 call!17633)))

(declare-fun bm!17630 () Bool)

(assert (=> bm!17630 (= call!17633 (arrayNoDuplicates!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!31056 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!30958 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) Nil!2225) Nil!2225)) (ite c!30958 (Cons!2224 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) Nil!2225) Nil!2225))))))

(declare-fun b!173933 () Bool)

(assert (=> b!173933 (= e!114886 e!114887)))

(declare-fun res!82574 () Bool)

(assert (=> b!173933 (=> (not res!82574) (not e!114887))))

(assert (=> b!173933 (= res!82574 (not e!114888))))

(declare-fun res!82575 () Bool)

(assert (=> b!173933 (=> (not res!82575) (not e!114888))))

(assert (=> b!173933 (= res!82575 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!52849 (not res!82576)) b!173933))

(assert (= (and b!173933 res!82575) b!173929))

(assert (= (and b!173933 res!82574) b!173930))

(assert (= (and b!173930 c!31056) b!173932))

(assert (= (and b!173930 (not c!31056)) b!173931))

(assert (= (or b!173932 b!173931) bm!17630))

(declare-fun m!202717 () Bool)

(assert (=> b!173929 m!202717))

(assert (=> b!173929 m!202717))

(declare-fun m!202719 () Bool)

(assert (=> b!173929 m!202719))

(assert (=> b!173930 m!202717))

(assert (=> b!173930 m!202717))

(declare-fun m!202721 () Bool)

(assert (=> b!173930 m!202721))

(assert (=> bm!17630 m!202717))

(declare-fun m!202723 () Bool)

(assert (=> bm!17630 m!202723))

(assert (=> b!173933 m!202717))

(assert (=> b!173933 m!202717))

(assert (=> b!173933 m!202721))

(assert (=> bm!17600 d!52849))

(declare-fun d!52851 () Bool)

(declare-fun e!114889 () Bool)

(assert (=> d!52851 e!114889))

(declare-fun res!82577 () Bool)

(assert (=> d!52851 (=> res!82577 e!114889)))

(declare-fun lt!86144 () Bool)

(assert (=> d!52851 (= res!82577 (not lt!86144))))

(declare-fun lt!86146 () Bool)

(assert (=> d!52851 (= lt!86144 lt!86146)))

(declare-fun lt!86147 () Unit!5311)

(declare-fun e!114890 () Unit!5311)

(assert (=> d!52851 (= lt!86147 e!114890)))

(declare-fun c!31057 () Bool)

(assert (=> d!52851 (= c!31057 lt!86146)))

(assert (=> d!52851 (= lt!86146 (containsKey!188 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(assert (=> d!52851 (= (contains!1153 lt!85982 (_1!1628 (tuple2!3237 lt!85860 v!309))) lt!86144)))

(declare-fun b!173934 () Bool)

(declare-fun lt!86145 () Unit!5311)

(assert (=> b!173934 (= e!114890 lt!86145)))

(assert (=> b!173934 (= lt!86145 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(assert (=> b!173934 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun b!173935 () Bool)

(declare-fun Unit!5340 () Unit!5311)

(assert (=> b!173935 (= e!114890 Unit!5340)))

(declare-fun b!173936 () Bool)

(assert (=> b!173936 (= e!114889 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (= (and d!52851 c!31057) b!173934))

(assert (= (and d!52851 (not c!31057)) b!173935))

(assert (= (and d!52851 (not res!82577)) b!173936))

(declare-fun m!202725 () Bool)

(assert (=> d!52851 m!202725))

(declare-fun m!202727 () Bool)

(assert (=> b!173934 m!202727))

(assert (=> b!173934 m!202113))

(assert (=> b!173934 m!202113))

(declare-fun m!202729 () Bool)

(assert (=> b!173934 m!202729))

(assert (=> b!173936 m!202113))

(assert (=> b!173936 m!202113))

(assert (=> b!173936 m!202729))

(assert (=> d!52611 d!52851))

(declare-fun b!173937 () Bool)

(declare-fun e!114891 () Option!190)

(assert (=> b!173937 (= e!114891 (Some!189 (_2!1628 (h!2839 lt!85983))))))

(declare-fun b!173940 () Bool)

(declare-fun e!114892 () Option!190)

(assert (=> b!173940 (= e!114892 None!188)))

(declare-fun b!173938 () Bool)

(assert (=> b!173938 (= e!114891 e!114892)))

(declare-fun c!31059 () Bool)

(assert (=> b!173938 (= c!31059 (and ((_ is Cons!2222) lt!85983) (not (= (_1!1628 (h!2839 lt!85983)) (_1!1628 (tuple2!3237 lt!85860 v!309))))))))

(declare-fun b!173939 () Bool)

(assert (=> b!173939 (= e!114892 (getValueByKey!184 (t!7041 lt!85983) (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun d!52853 () Bool)

(declare-fun c!31058 () Bool)

(assert (=> d!52853 (= c!31058 (and ((_ is Cons!2222) lt!85983) (= (_1!1628 (h!2839 lt!85983)) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (=> d!52853 (= (getValueByKey!184 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309))) e!114891)))

(assert (= (and d!52853 c!31058) b!173937))

(assert (= (and d!52853 (not c!31058)) b!173938))

(assert (= (and b!173938 c!31059) b!173939))

(assert (= (and b!173938 (not c!31059)) b!173940))

(declare-fun m!202731 () Bool)

(assert (=> b!173939 m!202731))

(assert (=> d!52611 d!52853))

(declare-fun d!52855 () Bool)

(assert (=> d!52855 (= (getValueByKey!184 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun lt!86148 () Unit!5311)

(assert (=> d!52855 (= lt!86148 (choose!939 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun e!114893 () Bool)

(assert (=> d!52855 e!114893))

(declare-fun res!82578 () Bool)

(assert (=> d!52855 (=> (not res!82578) (not e!114893))))

(assert (=> d!52855 (= res!82578 (isStrictlySorted!327 lt!85983))))

(assert (=> d!52855 (= (lemmaContainsTupThenGetReturnValue!99 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))) lt!86148)))

(declare-fun b!173941 () Bool)

(declare-fun res!82579 () Bool)

(assert (=> b!173941 (=> (not res!82579) (not e!114893))))

(assert (=> b!173941 (= res!82579 (containsKey!188 lt!85983 (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun b!173942 () Bool)

(assert (=> b!173942 (= e!114893 (contains!1154 lt!85983 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (= (and d!52855 res!82578) b!173941))

(assert (= (and b!173941 res!82579) b!173942))

(assert (=> d!52855 m!202107))

(declare-fun m!202733 () Bool)

(assert (=> d!52855 m!202733))

(declare-fun m!202735 () Bool)

(assert (=> d!52855 m!202735))

(declare-fun m!202737 () Bool)

(assert (=> b!173941 m!202737))

(declare-fun m!202739 () Bool)

(assert (=> b!173942 m!202739))

(assert (=> d!52611 d!52855))

(declare-fun bm!17632 () Bool)

(declare-fun call!17636 () List!2226)

(declare-fun call!17634 () List!2226)

(assert (=> bm!17632 (= call!17636 call!17634)))

(declare-fun e!114897 () List!2226)

(declare-fun c!31063 () Bool)

(declare-fun b!173943 () Bool)

(declare-fun c!31061 () Bool)

(assert (=> b!173943 (= e!114897 (ite c!31061 (t!7041 (toList!1104 lt!85856)) (ite c!31063 (Cons!2222 (h!2839 (toList!1104 lt!85856)) (t!7041 (toList!1104 lt!85856))) Nil!2223)))))

(declare-fun b!173944 () Bool)

(declare-fun res!82580 () Bool)

(declare-fun e!114898 () Bool)

(assert (=> b!173944 (=> (not res!82580) (not e!114898))))

(declare-fun lt!86149 () List!2226)

(assert (=> b!173944 (= res!82580 (containsKey!188 lt!86149 (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun b!173945 () Bool)

(declare-fun e!114895 () List!2226)

(assert (=> b!173945 (= e!114895 call!17634)))

(declare-fun b!173946 () Bool)

(assert (=> b!173946 (= c!31063 (and ((_ is Cons!2222) (toList!1104 lt!85856)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85856))) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(declare-fun e!114896 () List!2226)

(declare-fun e!114894 () List!2226)

(assert (=> b!173946 (= e!114896 e!114894)))

(declare-fun b!173947 () Bool)

(declare-fun call!17635 () List!2226)

(assert (=> b!173947 (= e!114894 call!17635)))

(declare-fun b!173948 () Bool)

(assert (=> b!173948 (= e!114894 call!17635)))

(declare-fun b!173949 () Bool)

(assert (=> b!173949 (= e!114895 e!114896)))

(assert (=> b!173949 (= c!31061 (and ((_ is Cons!2222) (toList!1104 lt!85856)) (= (_1!1628 (h!2839 (toList!1104 lt!85856))) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(declare-fun c!31060 () Bool)

(declare-fun bm!17631 () Bool)

(assert (=> bm!17631 (= call!17634 ($colon$colon!97 e!114897 (ite c!31060 (h!2839 (toList!1104 lt!85856)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))))))))

(declare-fun c!31062 () Bool)

(assert (=> bm!17631 (= c!31062 c!31060)))

(declare-fun d!52857 () Bool)

(assert (=> d!52857 e!114898))

(declare-fun res!82581 () Bool)

(assert (=> d!52857 (=> (not res!82581) (not e!114898))))

(assert (=> d!52857 (= res!82581 (isStrictlySorted!327 lt!86149))))

(assert (=> d!52857 (= lt!86149 e!114895)))

(assert (=> d!52857 (= c!31060 (and ((_ is Cons!2222) (toList!1104 lt!85856)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85856))) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (=> d!52857 (isStrictlySorted!327 (toList!1104 lt!85856))))

(assert (=> d!52857 (= (insertStrictlySorted!101 (toList!1104 lt!85856) (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))) lt!86149)))

(declare-fun bm!17633 () Bool)

(assert (=> bm!17633 (= call!17635 call!17636)))

(declare-fun b!173950 () Bool)

(assert (=> b!173950 (= e!114896 call!17636)))

(declare-fun b!173951 () Bool)

(assert (=> b!173951 (= e!114897 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85856)) (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun b!173952 () Bool)

(assert (=> b!173952 (= e!114898 (contains!1154 lt!86149 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85860 v!309)) (_2!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (= (and d!52857 c!31060) b!173945))

(assert (= (and d!52857 (not c!31060)) b!173949))

(assert (= (and b!173949 c!31061) b!173950))

(assert (= (and b!173949 (not c!31061)) b!173946))

(assert (= (and b!173946 c!31063) b!173947))

(assert (= (and b!173946 (not c!31063)) b!173948))

(assert (= (or b!173947 b!173948) bm!17633))

(assert (= (or b!173950 bm!17633) bm!17632))

(assert (= (or b!173945 bm!17632) bm!17631))

(assert (= (and bm!17631 c!31062) b!173951))

(assert (= (and bm!17631 (not c!31062)) b!173943))

(assert (= (and d!52857 res!82581) b!173944))

(assert (= (and b!173944 res!82580) b!173952))

(declare-fun m!202741 () Bool)

(assert (=> b!173952 m!202741))

(declare-fun m!202743 () Bool)

(assert (=> bm!17631 m!202743))

(declare-fun m!202745 () Bool)

(assert (=> b!173951 m!202745))

(declare-fun m!202747 () Bool)

(assert (=> b!173944 m!202747))

(declare-fun m!202749 () Bool)

(assert (=> d!52857 m!202749))

(declare-fun m!202751 () Bool)

(assert (=> d!52857 m!202751))

(assert (=> d!52611 d!52857))

(declare-fun d!52859 () Bool)

(assert (=> d!52859 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3952 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52589 d!52859))

(declare-fun b!173953 () Bool)

(declare-fun e!114899 () Option!190)

(assert (=> b!173953 (= e!114899 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85847)))))))

(declare-fun b!173956 () Bool)

(declare-fun e!114900 () Option!190)

(assert (=> b!173956 (= e!114900 None!188)))

(declare-fun b!173954 () Bool)

(assert (=> b!173954 (= e!114899 e!114900)))

(declare-fun c!31065 () Bool)

(assert (=> b!173954 (= c!31065 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173955 () Bool)

(assert (=> b!173955 (= e!114900 (getValueByKey!184 (t!7041 (toList!1104 lt!85847)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!52861 () Bool)

(declare-fun c!31064 () Bool)

(assert (=> d!52861 (= c!31064 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52861 (= (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000) e!114899)))

(assert (= (and d!52861 c!31064) b!173953))

(assert (= (and d!52861 (not c!31064)) b!173954))

(assert (= (and b!173954 c!31065) b!173955))

(assert (= (and b!173954 (not c!31065)) b!173956))

(declare-fun m!202753 () Bool)

(assert (=> b!173955 m!202753))

(assert (=> d!52589 d!52861))

(declare-fun d!52863 () Bool)

(assert (=> d!52863 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!86150 () Unit!5311)

(assert (=> d!52863 (= lt!86150 (choose!940 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!114901 () Bool)

(assert (=> d!52863 e!114901))

(declare-fun res!82582 () Bool)

(assert (=> d!52863 (=> (not res!82582) (not e!114901))))

(assert (=> d!52863 (= res!82582 (isStrictlySorted!327 (toList!1104 lt!85847)))))

(assert (=> d!52863 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000) lt!86150)))

(declare-fun b!173957 () Bool)

(assert (=> b!173957 (= e!114901 (containsKey!188 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52863 res!82582) b!173957))

(assert (=> d!52863 m!202063))

(assert (=> d!52863 m!202063))

(assert (=> d!52863 m!202065))

(declare-fun m!202755 () Bool)

(assert (=> d!52863 m!202755))

(declare-fun m!202757 () Bool)

(assert (=> d!52863 m!202757))

(assert (=> b!173957 m!202059))

(assert (=> b!173541 d!52863))

(declare-fun d!52865 () Bool)

(assert (=> d!52865 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7181 () Bool)

(assert (= bs!7181 d!52865))

(assert (=> bs!7181 m!202063))

(declare-fun m!202759 () Bool)

(assert (=> bs!7181 m!202759))

(assert (=> b!173541 d!52865))

(declare-fun b!173958 () Bool)

(declare-fun e!114902 () Option!190)

(assert (=> b!173958 (= e!114902 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85847)))))))

(declare-fun b!173961 () Bool)

(declare-fun e!114903 () Option!190)

(assert (=> b!173961 (= e!114903 None!188)))

(declare-fun b!173959 () Bool)

(assert (=> b!173959 (= e!114902 e!114903)))

(declare-fun c!31067 () Bool)

(assert (=> b!173959 (= c!31067 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173960 () Bool)

(assert (=> b!173960 (= e!114903 (getValueByKey!184 (t!7041 (toList!1104 lt!85847)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!52867 () Bool)

(declare-fun c!31066 () Bool)

(assert (=> d!52867 (= c!31066 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52867 (= (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000) e!114902)))

(assert (= (and d!52867 c!31066) b!173958))

(assert (= (and d!52867 (not c!31066)) b!173959))

(assert (= (and b!173959 c!31067) b!173960))

(assert (= (and b!173959 (not c!31067)) b!173961))

(declare-fun m!202761 () Bool)

(assert (=> b!173960 m!202761))

(assert (=> b!173541 d!52867))

(declare-fun d!52869 () Bool)

(declare-fun e!114904 () Bool)

(assert (=> d!52869 e!114904))

(declare-fun res!82583 () Bool)

(assert (=> d!52869 (=> res!82583 e!114904)))

(declare-fun lt!86151 () Bool)

(assert (=> d!52869 (= res!82583 (not lt!86151))))

(declare-fun lt!86153 () Bool)

(assert (=> d!52869 (= lt!86151 lt!86153)))

(declare-fun lt!86154 () Unit!5311)

(declare-fun e!114905 () Unit!5311)

(assert (=> d!52869 (= lt!86154 e!114905)))

(declare-fun c!31068 () Bool)

(assert (=> d!52869 (= c!31068 lt!86153)))

(assert (=> d!52869 (= lt!86153 (containsKey!188 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(assert (=> d!52869 (= (contains!1153 lt!85888 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!86151)))

(declare-fun b!173962 () Bool)

(declare-fun lt!86152 () Unit!5311)

(assert (=> b!173962 (= e!114905 lt!86152)))

(assert (=> b!173962 (= lt!86152 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(assert (=> b!173962 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun b!173963 () Bool)

(declare-fun Unit!5341 () Unit!5311)

(assert (=> b!173963 (= e!114905 Unit!5341)))

(declare-fun b!173964 () Bool)

(assert (=> b!173964 (= e!114904 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85888) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52869 c!31068) b!173962))

(assert (= (and d!52869 (not c!31068)) b!173963))

(assert (= (and d!52869 (not res!82583)) b!173964))

(declare-fun m!202763 () Bool)

(assert (=> d!52869 m!202763))

(declare-fun m!202765 () Bool)

(assert (=> b!173962 m!202765))

(assert (=> b!173962 m!201887))

(assert (=> b!173962 m!201887))

(declare-fun m!202767 () Bool)

(assert (=> b!173962 m!202767))

(assert (=> b!173964 m!201887))

(assert (=> b!173964 m!201887))

(assert (=> b!173964 m!202767))

(assert (=> d!52541 d!52869))

(declare-fun b!173965 () Bool)

(declare-fun e!114906 () Option!190)

(assert (=> b!173965 (= e!114906 (Some!189 (_2!1628 (h!2839 lt!85889))))))

(declare-fun b!173968 () Bool)

(declare-fun e!114907 () Option!190)

(assert (=> b!173968 (= e!114907 None!188)))

(declare-fun b!173966 () Bool)

(assert (=> b!173966 (= e!114906 e!114907)))

(declare-fun c!31070 () Bool)

(assert (=> b!173966 (= c!31070 (and ((_ is Cons!2222) lt!85889) (not (= (_1!1628 (h!2839 lt!85889)) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))))

(declare-fun b!173967 () Bool)

(assert (=> b!173967 (= e!114907 (getValueByKey!184 (t!7041 lt!85889) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun d!52871 () Bool)

(declare-fun c!31069 () Bool)

(assert (=> d!52871 (= c!31069 (and ((_ is Cons!2222) lt!85889) (= (_1!1628 (h!2839 lt!85889)) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (=> d!52871 (= (getValueByKey!184 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) e!114906)))

(assert (= (and d!52871 c!31069) b!173965))

(assert (= (and d!52871 (not c!31069)) b!173966))

(assert (= (and b!173966 c!31070) b!173967))

(assert (= (and b!173966 (not c!31070)) b!173968))

(declare-fun m!202769 () Bool)

(assert (=> b!173967 m!202769))

(assert (=> d!52541 d!52871))

(declare-fun d!52873 () Bool)

(assert (=> d!52873 (= (getValueByKey!184 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun lt!86155 () Unit!5311)

(assert (=> d!52873 (= lt!86155 (choose!939 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun e!114908 () Bool)

(assert (=> d!52873 e!114908))

(declare-fun res!82584 () Bool)

(assert (=> d!52873 (=> (not res!82584) (not e!114908))))

(assert (=> d!52873 (= res!82584 (isStrictlySorted!327 lt!85889))))

(assert (=> d!52873 (= (lemmaContainsTupThenGetReturnValue!99 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!86155)))

(declare-fun b!173969 () Bool)

(declare-fun res!82585 () Bool)

(assert (=> b!173969 (=> (not res!82585) (not e!114908))))

(assert (=> b!173969 (= res!82585 (containsKey!188 lt!85889 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun b!173970 () Bool)

(assert (=> b!173970 (= e!114908 (contains!1154 lt!85889 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52873 res!82584) b!173969))

(assert (= (and b!173969 res!82585) b!173970))

(assert (=> d!52873 m!201881))

(declare-fun m!202771 () Bool)

(assert (=> d!52873 m!202771))

(declare-fun m!202773 () Bool)

(assert (=> d!52873 m!202773))

(declare-fun m!202775 () Bool)

(assert (=> b!173969 m!202775))

(declare-fun m!202777 () Bool)

(assert (=> b!173970 m!202777))

(assert (=> d!52541 d!52873))

(declare-fun bm!17635 () Bool)

(declare-fun call!17639 () List!2226)

(declare-fun call!17637 () List!2226)

(assert (=> bm!17635 (= call!17639 call!17637)))

(declare-fun c!31072 () Bool)

(declare-fun c!31074 () Bool)

(declare-fun b!173971 () Bool)

(declare-fun e!114912 () List!2226)

(assert (=> b!173971 (= e!114912 (ite c!31072 (t!7041 (toList!1104 lt!85814)) (ite c!31074 (Cons!2222 (h!2839 (toList!1104 lt!85814)) (t!7041 (toList!1104 lt!85814))) Nil!2223)))))

(declare-fun b!173972 () Bool)

(declare-fun res!82586 () Bool)

(declare-fun e!114913 () Bool)

(assert (=> b!173972 (=> (not res!82586) (not e!114913))))

(declare-fun lt!86156 () List!2226)

(assert (=> b!173972 (= res!82586 (containsKey!188 lt!86156 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun b!173973 () Bool)

(declare-fun e!114910 () List!2226)

(assert (=> b!173973 (= e!114910 call!17637)))

(declare-fun b!173974 () Bool)

(assert (=> b!173974 (= c!31074 (and ((_ is Cons!2222) (toList!1104 lt!85814)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85814))) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(declare-fun e!114911 () List!2226)

(declare-fun e!114909 () List!2226)

(assert (=> b!173974 (= e!114911 e!114909)))

(declare-fun b!173975 () Bool)

(declare-fun call!17638 () List!2226)

(assert (=> b!173975 (= e!114909 call!17638)))

(declare-fun b!173976 () Bool)

(assert (=> b!173976 (= e!114909 call!17638)))

(declare-fun b!173977 () Bool)

(assert (=> b!173977 (= e!114910 e!114911)))

(assert (=> b!173977 (= c!31072 (and ((_ is Cons!2222) (toList!1104 lt!85814)) (= (_1!1628 (h!2839 (toList!1104 lt!85814))) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(declare-fun c!31071 () Bool)

(declare-fun bm!17634 () Bool)

(assert (=> bm!17634 (= call!17637 ($colon$colon!97 e!114912 (ite c!31071 (h!2839 (toList!1104 lt!85814)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))))

(declare-fun c!31073 () Bool)

(assert (=> bm!17634 (= c!31073 c!31071)))

(declare-fun d!52875 () Bool)

(assert (=> d!52875 e!114913))

(declare-fun res!82587 () Bool)

(assert (=> d!52875 (=> (not res!82587) (not e!114913))))

(assert (=> d!52875 (= res!82587 (isStrictlySorted!327 lt!86156))))

(assert (=> d!52875 (= lt!86156 e!114910)))

(assert (=> d!52875 (= c!31071 (and ((_ is Cons!2222) (toList!1104 lt!85814)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85814))) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (=> d!52875 (isStrictlySorted!327 (toList!1104 lt!85814))))

(assert (=> d!52875 (= (insertStrictlySorted!101 (toList!1104 lt!85814) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))) lt!86156)))

(declare-fun bm!17636 () Bool)

(assert (=> bm!17636 (= call!17638 call!17639)))

(declare-fun b!173978 () Bool)

(assert (=> b!173978 (= e!114911 call!17639)))

(declare-fun b!173979 () Bool)

(assert (=> b!173979 (= e!114912 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85814)) (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248)))))))

(declare-fun b!173980 () Bool)

(assert (=> b!173980 (= e!114913 (contains!1154 lt!86156 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))))))))

(assert (= (and d!52875 c!31071) b!173973))

(assert (= (and d!52875 (not c!31071)) b!173977))

(assert (= (and b!173977 c!31072) b!173978))

(assert (= (and b!173977 (not c!31072)) b!173974))

(assert (= (and b!173974 c!31074) b!173975))

(assert (= (and b!173974 (not c!31074)) b!173976))

(assert (= (or b!173975 b!173976) bm!17636))

(assert (= (or b!173978 bm!17636) bm!17635))

(assert (= (or b!173973 bm!17635) bm!17634))

(assert (= (and bm!17634 c!31073) b!173979))

(assert (= (and bm!17634 (not c!31073)) b!173971))

(assert (= (and d!52875 res!82587) b!173972))

(assert (= (and b!173972 res!82586) b!173980))

(declare-fun m!202779 () Bool)

(assert (=> b!173980 m!202779))

(declare-fun m!202781 () Bool)

(assert (=> bm!17634 m!202781))

(declare-fun m!202783 () Bool)

(assert (=> b!173979 m!202783))

(declare-fun m!202785 () Bool)

(assert (=> b!173972 m!202785))

(declare-fun m!202787 () Bool)

(assert (=> d!52875 m!202787))

(declare-fun m!202789 () Bool)

(assert (=> d!52875 m!202789))

(assert (=> d!52541 d!52875))

(declare-fun d!52877 () Bool)

(declare-fun e!114914 () Bool)

(assert (=> d!52877 e!114914))

(declare-fun res!82588 () Bool)

(assert (=> d!52877 (=> res!82588 e!114914)))

(declare-fun lt!86157 () Bool)

(assert (=> d!52877 (= res!82588 (not lt!86157))))

(declare-fun lt!86159 () Bool)

(assert (=> d!52877 (= lt!86157 lt!86159)))

(declare-fun lt!86160 () Unit!5311)

(declare-fun e!114915 () Unit!5311)

(assert (=> d!52877 (= lt!86160 e!114915)))

(declare-fun c!31075 () Bool)

(assert (=> d!52877 (= c!31075 lt!86159)))

(assert (=> d!52877 (= lt!86159 (containsKey!188 (toList!1104 lt!85964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52877 (= (contains!1153 lt!85964 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86157)))

(declare-fun b!173981 () Bool)

(declare-fun lt!86158 () Unit!5311)

(assert (=> b!173981 (= e!114915 lt!86158)))

(assert (=> b!173981 (= lt!86158 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173981 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!173982 () Bool)

(declare-fun Unit!5342 () Unit!5311)

(assert (=> b!173982 (= e!114915 Unit!5342)))

(declare-fun b!173983 () Bool)

(assert (=> b!173983 (= e!114914 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52877 c!31075) b!173981))

(assert (= (and d!52877 (not c!31075)) b!173982))

(assert (= (and d!52877 (not res!82588)) b!173983))

(declare-fun m!202791 () Bool)

(assert (=> d!52877 m!202791))

(declare-fun m!202793 () Bool)

(assert (=> b!173981 m!202793))

(declare-fun m!202795 () Bool)

(assert (=> b!173981 m!202795))

(assert (=> b!173981 m!202795))

(declare-fun m!202797 () Bool)

(assert (=> b!173981 m!202797))

(assert (=> b!173983 m!202795))

(assert (=> b!173983 m!202795))

(assert (=> b!173983 m!202797))

(assert (=> b!173545 d!52877))

(declare-fun d!52879 () Bool)

(declare-fun res!82589 () Bool)

(declare-fun e!114916 () Bool)

(assert (=> d!52879 (=> res!82589 e!114916)))

(assert (=> d!52879 (= res!82589 (and ((_ is Cons!2222) lt!85840) (= (_1!1628 (h!2839 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52879 (= (containsKey!188 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114916)))

(declare-fun b!173984 () Bool)

(declare-fun e!114917 () Bool)

(assert (=> b!173984 (= e!114916 e!114917)))

(declare-fun res!82590 () Bool)

(assert (=> b!173984 (=> (not res!82590) (not e!114917))))

(assert (=> b!173984 (= res!82590 (and (or (not ((_ is Cons!2222) lt!85840)) (bvsle (_1!1628 (h!2839 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2222) lt!85840) (bvslt (_1!1628 (h!2839 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!173985 () Bool)

(assert (=> b!173985 (= e!114917 (containsKey!188 (t!7041 lt!85840) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52879 (not res!82589)) b!173984))

(assert (= (and b!173984 res!82590) b!173985))

(declare-fun m!202799 () Bool)

(assert (=> b!173985 m!202799))

(assert (=> b!173501 d!52879))

(declare-fun d!52881 () Bool)

(assert (=> d!52881 (= (apply!130 lt!86040 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1970 (getValueByKey!184 (toList!1104 lt!86040) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7182 () Bool)

(assert (= bs!7182 d!52881))

(declare-fun m!202801 () Bool)

(assert (=> bs!7182 m!202801))

(assert (=> bs!7182 m!202801))

(declare-fun m!202803 () Bool)

(assert (=> bs!7182 m!202803))

(assert (=> b!173680 d!52881))

(declare-fun d!52883 () Bool)

(assert (=> d!52883 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!86161 () Unit!5311)

(assert (=> d!52883 (= lt!86161 (choose!940 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!114918 () Bool)

(assert (=> d!52883 e!114918))

(declare-fun res!82591 () Bool)

(assert (=> d!52883 (=> (not res!82591) (not e!114918))))

(assert (=> d!52883 (= res!82591 (isStrictlySorted!327 (toList!1104 lt!85847)))))

(assert (=> d!52883 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86161)))

(declare-fun b!173986 () Bool)

(assert (=> b!173986 (= e!114918 (containsKey!188 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52883 res!82591) b!173986))

(assert (=> d!52883 m!201715))

(assert (=> d!52883 m!201859))

(assert (=> d!52883 m!201859))

(assert (=> d!52883 m!202215))

(assert (=> d!52883 m!201715))

(declare-fun m!202805 () Bool)

(assert (=> d!52883 m!202805))

(assert (=> d!52883 m!202757))

(assert (=> b!173986 m!201715))

(assert (=> b!173986 m!202211))

(assert (=> b!173617 d!52883))

(declare-fun d!52885 () Bool)

(assert (=> d!52885 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun bs!7183 () Bool)

(assert (= bs!7183 d!52885))

(assert (=> bs!7183 m!201859))

(declare-fun m!202807 () Bool)

(assert (=> bs!7183 m!202807))

(assert (=> b!173617 d!52885))

(declare-fun b!173987 () Bool)

(declare-fun e!114919 () Option!190)

(assert (=> b!173987 (= e!114919 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85847)))))))

(declare-fun b!173990 () Bool)

(declare-fun e!114920 () Option!190)

(assert (=> b!173990 (= e!114920 None!188)))

(declare-fun b!173988 () Bool)

(assert (=> b!173988 (= e!114919 e!114920)))

(declare-fun c!31077 () Bool)

(assert (=> b!173988 (= c!31077 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85847))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))))

(declare-fun b!173989 () Bool)

(assert (=> b!173989 (= e!114920 (getValueByKey!184 (t!7041 (toList!1104 lt!85847)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52887 () Bool)

(declare-fun c!31076 () Bool)

(assert (=> d!52887 (= c!31076 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52887 (= (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) e!114919)))

(assert (= (and d!52887 c!31076) b!173987))

(assert (= (and d!52887 (not c!31076)) b!173988))

(assert (= (and b!173988 c!31077) b!173989))

(assert (= (and b!173988 (not c!31077)) b!173990))

(assert (=> b!173989 m!201715))

(declare-fun m!202809 () Bool)

(assert (=> b!173989 m!202809))

(assert (=> b!173617 d!52887))

(declare-fun b!173991 () Bool)

(declare-fun e!114921 () Option!190)

(assert (=> b!173991 (= e!114921 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85941)))))))

(declare-fun b!173994 () Bool)

(declare-fun e!114922 () Option!190)

(assert (=> b!173994 (= e!114922 None!188)))

(declare-fun b!173992 () Bool)

(assert (=> b!173992 (= e!114921 e!114922)))

(declare-fun c!31079 () Bool)

(assert (=> b!173992 (= c!31079 (and ((_ is Cons!2222) (toList!1104 lt!85941)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85941))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!173993 () Bool)

(assert (=> b!173993 (= e!114922 (getValueByKey!184 (t!7041 (toList!1104 lt!85941)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!52889 () Bool)

(declare-fun c!31078 () Bool)

(assert (=> d!52889 (= c!31078 (and ((_ is Cons!2222) (toList!1104 lt!85941)) (= (_1!1628 (h!2839 (toList!1104 lt!85941))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!52889 (= (getValueByKey!184 (toList!1104 lt!85941) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!114921)))

(assert (= (and d!52889 c!31078) b!173991))

(assert (= (and d!52889 (not c!31078)) b!173992))

(assert (= (and b!173992 c!31079) b!173993))

(assert (= (and b!173992 (not c!31079)) b!173994))

(declare-fun m!202811 () Bool)

(assert (=> b!173993 m!202811))

(assert (=> b!173477 d!52889))

(declare-fun d!52891 () Bool)

(assert (=> d!52891 (arrayContainsKey!0 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000)))

(declare-fun lt!86164 () Unit!5311)

(declare-fun choose!13 (array!7296 (_ BitVec 64) (_ BitVec 32)) Unit!5311)

(assert (=> d!52891 (= lt!86164 (choose!13 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000))))

(assert (=> d!52891 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!52891 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000) lt!86164)))

(declare-fun bs!7184 () Bool)

(assert (= bs!7184 d!52891))

(assert (=> bs!7184 m!202281))

(declare-fun m!202813 () Bool)

(assert (=> bs!7184 m!202813))

(assert (=> b!173665 d!52891))

(declare-fun d!52893 () Bool)

(declare-fun res!82596 () Bool)

(declare-fun e!114927 () Bool)

(assert (=> d!52893 (=> res!82596 e!114927)))

(assert (=> d!52893 (= res!82596 (= (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) lt!86029))))

(assert (=> d!52893 (= (arrayContainsKey!0 (_keys!5439 lt!85751) lt!86029 #b00000000000000000000000000000000) e!114927)))

(declare-fun b!173999 () Bool)

(declare-fun e!114928 () Bool)

(assert (=> b!173999 (= e!114927 e!114928)))

(declare-fun res!82597 () Bool)

(assert (=> b!173999 (=> (not res!82597) (not e!114928))))

(assert (=> b!173999 (= res!82597 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!174000 () Bool)

(assert (=> b!174000 (= e!114928 (arrayContainsKey!0 (_keys!5439 lt!85751) lt!86029 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!52893 (not res!82596)) b!173999))

(assert (= (and b!173999 res!82597) b!174000))

(assert (=> d!52893 m!202201))

(declare-fun m!202815 () Bool)

(assert (=> b!174000 m!202815))

(assert (=> b!173665 d!52893))

(declare-fun b!174013 () Bool)

(declare-fun e!114936 () SeekEntryResult!552)

(assert (=> b!174013 (= e!114936 Undefined!552)))

(declare-fun d!52895 () Bool)

(declare-fun lt!86173 () SeekEntryResult!552)

(assert (=> d!52895 (and (or ((_ is Undefined!552) lt!86173) (not ((_ is Found!552) lt!86173)) (and (bvsge (index!4377 lt!86173) #b00000000000000000000000000000000) (bvslt (index!4377 lt!86173) (size!3765 (_keys!5439 lt!85751))))) (or ((_ is Undefined!552) lt!86173) ((_ is Found!552) lt!86173) (not ((_ is MissingZero!552) lt!86173)) (and (bvsge (index!4376 lt!86173) #b00000000000000000000000000000000) (bvslt (index!4376 lt!86173) (size!3765 (_keys!5439 lt!85751))))) (or ((_ is Undefined!552) lt!86173) ((_ is Found!552) lt!86173) ((_ is MissingZero!552) lt!86173) (not ((_ is MissingVacant!552) lt!86173)) (and (bvsge (index!4379 lt!86173) #b00000000000000000000000000000000) (bvslt (index!4379 lt!86173) (size!3765 (_keys!5439 lt!85751))))) (or ((_ is Undefined!552) lt!86173) (ite ((_ is Found!552) lt!86173) (= (select (arr!3466 (_keys!5439 lt!85751)) (index!4377 lt!86173)) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!552) lt!86173) (= (select (arr!3466 (_keys!5439 lt!85751)) (index!4376 lt!86173)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!552) lt!86173) (= (select (arr!3466 (_keys!5439 lt!85751)) (index!4379 lt!86173)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52895 (= lt!86173 e!114936)))

(declare-fun c!31086 () Bool)

(declare-fun lt!86172 () SeekEntryResult!552)

(assert (=> d!52895 (= c!31086 (and ((_ is Intermediate!552) lt!86172) (undefined!1364 lt!86172)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7296 (_ BitVec 32)) SeekEntryResult!552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!52895 (= lt!86172 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (mask!8470 lt!85751)) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (_keys!5439 lt!85751) (mask!8470 lt!85751)))))

(assert (=> d!52895 (validMask!0 (mask!8470 lt!85751))))

(assert (=> d!52895 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (_keys!5439 lt!85751) (mask!8470 lt!85751)) lt!86173)))

(declare-fun b!174014 () Bool)

(declare-fun e!114937 () SeekEntryResult!552)

(assert (=> b!174014 (= e!114936 e!114937)))

(declare-fun lt!86171 () (_ BitVec 64))

(assert (=> b!174014 (= lt!86171 (select (arr!3466 (_keys!5439 lt!85751)) (index!4378 lt!86172)))))

(declare-fun c!31087 () Bool)

(assert (=> b!174014 (= c!31087 (= lt!86171 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!174015 () Bool)

(declare-fun e!114935 () SeekEntryResult!552)

(assert (=> b!174015 (= e!114935 (MissingZero!552 (index!4378 lt!86172)))))

(declare-fun b!174016 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7296 (_ BitVec 32)) SeekEntryResult!552)

(assert (=> b!174016 (= e!114935 (seekKeyOrZeroReturnVacant!0 (x!19206 lt!86172) (index!4378 lt!86172) (index!4378 lt!86172) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (_keys!5439 lt!85751) (mask!8470 lt!85751)))))

(declare-fun b!174017 () Bool)

(declare-fun c!31088 () Bool)

(assert (=> b!174017 (= c!31088 (= lt!86171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174017 (= e!114937 e!114935)))

(declare-fun b!174018 () Bool)

(assert (=> b!174018 (= e!114937 (Found!552 (index!4378 lt!86172)))))

(assert (= (and d!52895 c!31086) b!174013))

(assert (= (and d!52895 (not c!31086)) b!174014))

(assert (= (and b!174014 c!31087) b!174018))

(assert (= (and b!174014 (not c!31087)) b!174017))

(assert (= (and b!174017 c!31088) b!174015))

(assert (= (and b!174017 (not c!31088)) b!174016))

(declare-fun m!202817 () Bool)

(assert (=> d!52895 m!202817))

(declare-fun m!202819 () Bool)

(assert (=> d!52895 m!202819))

(assert (=> d!52895 m!202201))

(declare-fun m!202821 () Bool)

(assert (=> d!52895 m!202821))

(assert (=> d!52895 m!202301))

(declare-fun m!202823 () Bool)

(assert (=> d!52895 m!202823))

(declare-fun m!202825 () Bool)

(assert (=> d!52895 m!202825))

(assert (=> d!52895 m!202201))

(assert (=> d!52895 m!202819))

(declare-fun m!202827 () Bool)

(assert (=> b!174014 m!202827))

(assert (=> b!174016 m!202201))

(declare-fun m!202829 () Bool)

(assert (=> b!174016 m!202829))

(assert (=> b!173665 d!52895))

(declare-fun d!52897 () Bool)

(assert (=> d!52897 (= ($colon$colon!97 e!114637 (ite c!30938 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))) (Cons!2222 (ite c!30938 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) e!114637))))

(assert (=> bm!17590 d!52897))

(declare-fun b!174019 () Bool)

(declare-fun e!114938 () Option!190)

(assert (=> b!174019 (= e!114938 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85992)))))))

(declare-fun b!174022 () Bool)

(declare-fun e!114939 () Option!190)

(assert (=> b!174022 (= e!114939 None!188)))

(declare-fun b!174020 () Bool)

(assert (=> b!174020 (= e!114938 e!114939)))

(declare-fun c!31090 () Bool)

(assert (=> b!174020 (= c!31090 (and ((_ is Cons!2222) (toList!1104 lt!85992)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85992))) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174021 () Bool)

(assert (=> b!174021 (= e!114939 (getValueByKey!184 (t!7041 (toList!1104 lt!85992)) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31089 () Bool)

(declare-fun d!52899 () Bool)

(assert (=> d!52899 (= c!31089 (and ((_ is Cons!2222) (toList!1104 lt!85992)) (= (_1!1628 (h!2839 (toList!1104 lt!85992))) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52899 (= (getValueByKey!184 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) e!114938)))

(assert (= (and d!52899 c!31089) b!174019))

(assert (= (and d!52899 (not c!31089)) b!174020))

(assert (= (and b!174020 c!31090) b!174021))

(assert (= (and b!174020 (not c!31090)) b!174022))

(declare-fun m!202831 () Bool)

(assert (=> b!174021 m!202831))

(assert (=> b!173576 d!52899))

(declare-fun d!52901 () Bool)

(declare-fun res!82598 () Bool)

(declare-fun e!114940 () Bool)

(assert (=> d!52901 (=> res!82598 e!114940)))

(assert (=> d!52901 (= res!82598 (and ((_ is Cons!2222) lt!85878) (= (_1!1628 (h!2839 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52901 (= (containsKey!188 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))) e!114940)))

(declare-fun b!174023 () Bool)

(declare-fun e!114941 () Bool)

(assert (=> b!174023 (= e!114940 e!114941)))

(declare-fun res!82599 () Bool)

(assert (=> b!174023 (=> (not res!82599) (not e!114941))))

(assert (=> b!174023 (= res!82599 (and (or (not ((_ is Cons!2222) lt!85878)) (bvsle (_1!1628 (h!2839 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309)))) ((_ is Cons!2222) lt!85878) (bvslt (_1!1628 (h!2839 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun b!174024 () Bool)

(assert (=> b!174024 (= e!114941 (containsKey!188 (t!7041 lt!85878) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (= (and d!52901 (not res!82598)) b!174023))

(assert (= (and b!174023 res!82599) b!174024))

(declare-fun m!202833 () Bool)

(assert (=> b!174024 m!202833))

(assert (=> b!173627 d!52901))

(declare-fun d!52903 () Bool)

(assert (=> d!52903 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85814) lt!85818)) (v!3952 (getValueByKey!184 (toList!1104 lt!85814) lt!85818)))))

(assert (=> d!52547 d!52903))

(declare-fun b!174025 () Bool)

(declare-fun e!114942 () Option!190)

(assert (=> b!174025 (= e!114942 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85814)))))))

(declare-fun b!174028 () Bool)

(declare-fun e!114943 () Option!190)

(assert (=> b!174028 (= e!114943 None!188)))

(declare-fun b!174026 () Bool)

(assert (=> b!174026 (= e!114942 e!114943)))

(declare-fun c!31092 () Bool)

(assert (=> b!174026 (= c!31092 (and ((_ is Cons!2222) (toList!1104 lt!85814)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85814))) lt!85818))))))

(declare-fun b!174027 () Bool)

(assert (=> b!174027 (= e!114943 (getValueByKey!184 (t!7041 (toList!1104 lt!85814)) lt!85818))))

(declare-fun d!52905 () Bool)

(declare-fun c!31091 () Bool)

(assert (=> d!52905 (= c!31091 (and ((_ is Cons!2222) (toList!1104 lt!85814)) (= (_1!1628 (h!2839 (toList!1104 lt!85814))) lt!85818)))))

(assert (=> d!52905 (= (getValueByKey!184 (toList!1104 lt!85814) lt!85818) e!114942)))

(assert (= (and d!52905 c!31091) b!174025))

(assert (= (and d!52905 (not c!31091)) b!174026))

(assert (= (and b!174026 c!31092) b!174027))

(assert (= (and b!174026 (not c!31092)) b!174028))

(declare-fun m!202835 () Bool)

(assert (=> b!174027 m!202835))

(assert (=> d!52547 d!52905))

(assert (=> b!173570 d!52529))

(declare-fun d!52907 () Bool)

(assert (=> d!52907 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7185 () Bool)

(assert (= bs!7185 d!52907))

(assert (=> bs!7185 m!202273))

(declare-fun m!202837 () Bool)

(assert (=> bs!7185 m!202837))

(assert (=> b!173661 d!52907))

(assert (=> b!173661 d!52721))

(declare-fun b!174029 () Bool)

(declare-fun e!114944 () Option!190)

(assert (=> b!174029 (= e!114944 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85982)))))))

(declare-fun b!174032 () Bool)

(declare-fun e!114945 () Option!190)

(assert (=> b!174032 (= e!114945 None!188)))

(declare-fun b!174030 () Bool)

(assert (=> b!174030 (= e!114944 e!114945)))

(declare-fun c!31094 () Bool)

(assert (=> b!174030 (= c!31094 (and ((_ is Cons!2222) (toList!1104 lt!85982)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85982))) (_1!1628 (tuple2!3237 lt!85860 v!309))))))))

(declare-fun b!174031 () Bool)

(assert (=> b!174031 (= e!114945 (getValueByKey!184 (t!7041 (toList!1104 lt!85982)) (_1!1628 (tuple2!3237 lt!85860 v!309))))))

(declare-fun c!31093 () Bool)

(declare-fun d!52909 () Bool)

(assert (=> d!52909 (= c!31093 (and ((_ is Cons!2222) (toList!1104 lt!85982)) (= (_1!1628 (h!2839 (toList!1104 lt!85982))) (_1!1628 (tuple2!3237 lt!85860 v!309)))))))

(assert (=> d!52909 (= (getValueByKey!184 (toList!1104 lt!85982) (_1!1628 (tuple2!3237 lt!85860 v!309))) e!114944)))

(assert (= (and d!52909 c!31093) b!174029))

(assert (= (and d!52909 (not c!31093)) b!174030))

(assert (= (and b!174030 c!31094) b!174031))

(assert (= (and b!174030 (not c!31094)) b!174032))

(declare-fun m!202839 () Bool)

(assert (=> b!174031 m!202839))

(assert (=> b!173571 d!52909))

(declare-fun d!52911 () Bool)

(assert (=> d!52911 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!86174 () Unit!5311)

(assert (=> d!52911 (= lt!86174 (choose!940 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!114946 () Bool)

(assert (=> d!52911 e!114946))

(declare-fun res!82600 () Bool)

(assert (=> d!52911 (=> (not res!82600) (not e!114946))))

(assert (=> d!52911 (= res!82600 (isStrictlySorted!327 (toList!1104 lt!85847)))))

(assert (=> d!52911 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000) lt!86174)))

(declare-fun b!174033 () Bool)

(assert (=> b!174033 (= e!114946 (containsKey!188 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52911 res!82600) b!174033))

(assert (=> d!52911 m!201999))

(assert (=> d!52911 m!201999))

(assert (=> d!52911 m!202001))

(declare-fun m!202841 () Bool)

(assert (=> d!52911 m!202841))

(assert (=> d!52911 m!202757))

(assert (=> b!174033 m!201995))

(assert (=> b!173474 d!52911))

(declare-fun d!52913 () Bool)

(assert (=> d!52913 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7186 () Bool)

(assert (= bs!7186 d!52913))

(assert (=> bs!7186 m!201999))

(declare-fun m!202843 () Bool)

(assert (=> bs!7186 m!202843))

(assert (=> b!173474 d!52913))

(assert (=> b!173474 d!52861))

(declare-fun d!52915 () Bool)

(declare-fun lt!86175 () Bool)

(assert (=> d!52915 (= lt!86175 (select (content!148 (toList!1104 lt!85988)) (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))

(declare-fun e!114948 () Bool)

(assert (=> d!52915 (= lt!86175 e!114948)))

(declare-fun res!82602 () Bool)

(assert (=> d!52915 (=> (not res!82602) (not e!114948))))

(assert (=> d!52915 (= res!82602 ((_ is Cons!2222) (toList!1104 lt!85988)))))

(assert (=> d!52915 (= (contains!1154 (toList!1104 lt!85988) (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) lt!86175)))

(declare-fun b!174034 () Bool)

(declare-fun e!114947 () Bool)

(assert (=> b!174034 (= e!114948 e!114947)))

(declare-fun res!82601 () Bool)

(assert (=> b!174034 (=> res!82601 e!114947)))

(assert (=> b!174034 (= res!82601 (= (h!2839 (toList!1104 lt!85988)) (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))

(declare-fun b!174035 () Bool)

(assert (=> b!174035 (= e!114947 (contains!1154 (t!7041 (toList!1104 lt!85988)) (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52915 res!82602) b!174034))

(assert (= (and b!174034 (not res!82601)) b!174035))

(declare-fun m!202845 () Bool)

(assert (=> d!52915 m!202845))

(declare-fun m!202847 () Bool)

(assert (=> d!52915 m!202847))

(declare-fun m!202849 () Bool)

(assert (=> b!174035 m!202849))

(assert (=> b!173575 d!52915))

(declare-fun b!174036 () Bool)

(declare-fun e!114949 () Option!190)

(assert (=> b!174036 (= e!114949 (Some!189 (_2!1628 (h!2839 (t!7041 (toList!1104 lt!85877))))))))

(declare-fun b!174039 () Bool)

(declare-fun e!114950 () Option!190)

(assert (=> b!174039 (= e!114950 None!188)))

(declare-fun b!174037 () Bool)

(assert (=> b!174037 (= e!114949 e!114950)))

(declare-fun c!31096 () Bool)

(assert (=> b!174037 (= c!31096 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85877))) (not (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85877)))) (_1!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun b!174038 () Bool)

(assert (=> b!174038 (= e!114950 (getValueByKey!184 (t!7041 (t!7041 (toList!1104 lt!85877))) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun c!31095 () Bool)

(declare-fun d!52917 () Bool)

(assert (=> d!52917 (= c!31095 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85877))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85877)))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52917 (= (getValueByKey!184 (t!7041 (toList!1104 lt!85877)) (_1!1628 (tuple2!3237 key!828 v!309))) e!114949)))

(assert (= (and d!52917 c!31095) b!174036))

(assert (= (and d!52917 (not c!31095)) b!174037))

(assert (= (and b!174037 c!31096) b!174038))

(assert (= (and b!174037 (not c!31096)) b!174039))

(declare-fun m!202851 () Bool)

(assert (=> b!174038 m!202851))

(assert (=> b!173535 d!52917))

(declare-fun d!52919 () Bool)

(declare-fun e!114951 () Bool)

(assert (=> d!52919 e!114951))

(declare-fun res!82603 () Bool)

(assert (=> d!52919 (=> res!82603 e!114951)))

(declare-fun lt!86176 () Bool)

(assert (=> d!52919 (= res!82603 (not lt!86176))))

(declare-fun lt!86178 () Bool)

(assert (=> d!52919 (= lt!86176 lt!86178)))

(declare-fun lt!86179 () Unit!5311)

(declare-fun e!114952 () Unit!5311)

(assert (=> d!52919 (= lt!86179 e!114952)))

(declare-fun c!31097 () Bool)

(assert (=> d!52919 (= c!31097 lt!86178)))

(assert (=> d!52919 (= lt!86178 (containsKey!188 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52919 (= (contains!1153 lt!85992 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!86176)))

(declare-fun b!174040 () Bool)

(declare-fun lt!86177 () Unit!5311)

(assert (=> b!174040 (= e!114952 lt!86177)))

(assert (=> b!174040 (= lt!86177 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(assert (=> b!174040 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174041 () Bool)

(declare-fun Unit!5343 () Unit!5311)

(assert (=> b!174041 (= e!114952 Unit!5343)))

(declare-fun b!174042 () Bool)

(assert (=> b!174042 (= e!114951 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85992) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52919 c!31097) b!174040))

(assert (= (and d!52919 (not c!31097)) b!174041))

(assert (= (and d!52919 (not res!82603)) b!174042))

(declare-fun m!202853 () Bool)

(assert (=> d!52919 m!202853))

(declare-fun m!202855 () Bool)

(assert (=> b!174040 m!202855))

(assert (=> b!174040 m!202149))

(assert (=> b!174040 m!202149))

(declare-fun m!202857 () Bool)

(assert (=> b!174040 m!202857))

(assert (=> b!174042 m!202149))

(assert (=> b!174042 m!202149))

(assert (=> b!174042 m!202857))

(assert (=> d!52621 d!52919))

(declare-fun b!174043 () Bool)

(declare-fun e!114953 () Option!190)

(assert (=> b!174043 (= e!114953 (Some!189 (_2!1628 (h!2839 lt!85993))))))

(declare-fun b!174046 () Bool)

(declare-fun e!114954 () Option!190)

(assert (=> b!174046 (= e!114954 None!188)))

(declare-fun b!174044 () Bool)

(assert (=> b!174044 (= e!114953 e!114954)))

(declare-fun c!31099 () Bool)

(assert (=> b!174044 (= c!31099 (and ((_ is Cons!2222) lt!85993) (not (= (_1!1628 (h!2839 lt!85993)) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174045 () Bool)

(assert (=> b!174045 (= e!114954 (getValueByKey!184 (t!7041 lt!85993) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun d!52921 () Bool)

(declare-fun c!31098 () Bool)

(assert (=> d!52921 (= c!31098 (and ((_ is Cons!2222) lt!85993) (= (_1!1628 (h!2839 lt!85993)) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52921 (= (getValueByKey!184 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) e!114953)))

(assert (= (and d!52921 c!31098) b!174043))

(assert (= (and d!52921 (not c!31098)) b!174044))

(assert (= (and b!174044 c!31099) b!174045))

(assert (= (and b!174044 (not c!31099)) b!174046))

(declare-fun m!202859 () Bool)

(assert (=> b!174045 m!202859))

(assert (=> d!52621 d!52921))

(declare-fun d!52923 () Bool)

(assert (=> d!52923 (= (getValueByKey!184 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!86180 () Unit!5311)

(assert (=> d!52923 (= lt!86180 (choose!939 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun e!114955 () Bool)

(assert (=> d!52923 e!114955))

(declare-fun res!82604 () Bool)

(assert (=> d!52923 (=> (not res!82604) (not e!114955))))

(assert (=> d!52923 (= res!82604 (isStrictlySorted!327 lt!85993))))

(assert (=> d!52923 (= (lemmaContainsTupThenGetReturnValue!99 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!86180)))

(declare-fun b!174047 () Bool)

(declare-fun res!82605 () Bool)

(assert (=> b!174047 (=> (not res!82605) (not e!114955))))

(assert (=> b!174047 (= res!82605 (containsKey!188 lt!85993 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174048 () Bool)

(assert (=> b!174048 (= e!114955 (contains!1154 lt!85993 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52923 res!82604) b!174047))

(assert (= (and b!174047 res!82605) b!174048))

(assert (=> d!52923 m!202143))

(declare-fun m!202861 () Bool)

(assert (=> d!52923 m!202861))

(declare-fun m!202863 () Bool)

(assert (=> d!52923 m!202863))

(declare-fun m!202865 () Bool)

(assert (=> b!174047 m!202865))

(declare-fun m!202867 () Bool)

(assert (=> b!174048 m!202867))

(assert (=> d!52621 d!52923))

(declare-fun bm!17638 () Bool)

(declare-fun call!17642 () List!2226)

(declare-fun call!17640 () List!2226)

(assert (=> bm!17638 (= call!17642 call!17640)))

(declare-fun c!31101 () Bool)

(declare-fun e!114959 () List!2226)

(declare-fun b!174049 () Bool)

(declare-fun c!31103 () Bool)

(assert (=> b!174049 (= e!114959 (ite c!31101 (t!7041 (toList!1104 lt!85845)) (ite c!31103 (Cons!2222 (h!2839 (toList!1104 lt!85845)) (t!7041 (toList!1104 lt!85845))) Nil!2223)))))

(declare-fun b!174050 () Bool)

(declare-fun res!82606 () Bool)

(declare-fun e!114960 () Bool)

(assert (=> b!174050 (=> (not res!82606) (not e!114960))))

(declare-fun lt!86181 () List!2226)

(assert (=> b!174050 (= res!82606 (containsKey!188 lt!86181 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174051 () Bool)

(declare-fun e!114957 () List!2226)

(assert (=> b!174051 (= e!114957 call!17640)))

(declare-fun b!174052 () Bool)

(assert (=> b!174052 (= c!31103 (and ((_ is Cons!2222) (toList!1104 lt!85845)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85845))) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(declare-fun e!114958 () List!2226)

(declare-fun e!114956 () List!2226)

(assert (=> b!174052 (= e!114958 e!114956)))

(declare-fun b!174053 () Bool)

(declare-fun call!17641 () List!2226)

(assert (=> b!174053 (= e!114956 call!17641)))

(declare-fun b!174054 () Bool)

(assert (=> b!174054 (= e!114956 call!17641)))

(declare-fun b!174055 () Bool)

(assert (=> b!174055 (= e!114957 e!114958)))

(assert (=> b!174055 (= c!31101 (and ((_ is Cons!2222) (toList!1104 lt!85845)) (= (_1!1628 (h!2839 (toList!1104 lt!85845))) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(declare-fun c!31100 () Bool)

(declare-fun bm!17637 () Bool)

(assert (=> bm!17637 (= call!17640 ($colon$colon!97 e!114959 (ite c!31100 (h!2839 (toList!1104 lt!85845)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))))

(declare-fun c!31102 () Bool)

(assert (=> bm!17637 (= c!31102 c!31100)))

(declare-fun d!52925 () Bool)

(assert (=> d!52925 e!114960))

(declare-fun res!82607 () Bool)

(assert (=> d!52925 (=> (not res!82607) (not e!114960))))

(assert (=> d!52925 (= res!82607 (isStrictlySorted!327 lt!86181))))

(assert (=> d!52925 (= lt!86181 e!114957)))

(assert (=> d!52925 (= c!31100 (and ((_ is Cons!2222) (toList!1104 lt!85845)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85845))) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52925 (isStrictlySorted!327 (toList!1104 lt!85845))))

(assert (=> d!52925 (= (insertStrictlySorted!101 (toList!1104 lt!85845) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!86181)))

(declare-fun bm!17639 () Bool)

(assert (=> bm!17639 (= call!17641 call!17642)))

(declare-fun b!174056 () Bool)

(assert (=> b!174056 (= e!114958 call!17642)))

(declare-fun b!174057 () Bool)

(assert (=> b!174057 (= e!114959 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85845)) (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174058 () Bool)

(assert (=> b!174058 (= e!114960 (contains!1154 lt!86181 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52925 c!31100) b!174051))

(assert (= (and d!52925 (not c!31100)) b!174055))

(assert (= (and b!174055 c!31101) b!174056))

(assert (= (and b!174055 (not c!31101)) b!174052))

(assert (= (and b!174052 c!31103) b!174053))

(assert (= (and b!174052 (not c!31103)) b!174054))

(assert (= (or b!174053 b!174054) bm!17639))

(assert (= (or b!174056 bm!17639) bm!17638))

(assert (= (or b!174051 bm!17638) bm!17637))

(assert (= (and bm!17637 c!31102) b!174057))

(assert (= (and bm!17637 (not c!31102)) b!174049))

(assert (= (and d!52925 res!82607) b!174050))

(assert (= (and b!174050 res!82606) b!174058))

(declare-fun m!202869 () Bool)

(assert (=> b!174058 m!202869))

(declare-fun m!202871 () Bool)

(assert (=> bm!17637 m!202871))

(declare-fun m!202873 () Bool)

(assert (=> b!174057 m!202873))

(declare-fun m!202875 () Bool)

(assert (=> b!174050 m!202875))

(declare-fun m!202877 () Bool)

(assert (=> d!52925 m!202877))

(declare-fun m!202879 () Bool)

(assert (=> d!52925 m!202879))

(assert (=> d!52621 d!52925))

(declare-fun d!52927 () Bool)

(assert (=> d!52927 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!7187 () Bool)

(assert (= bs!7187 d!52927))

(assert (=> bs!7187 m!202293))

(declare-fun m!202881 () Bool)

(assert (=> bs!7187 m!202881))

(assert (=> b!173672 d!52927))

(assert (=> b!173672 d!52711))

(declare-fun d!52929 () Bool)

(assert (=> d!52929 (= (apply!130 lt!85911 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (get!1970 (getValueByKey!184 (toList!1104 lt!85911) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7188 () Bool)

(assert (= bs!7188 d!52929))

(assert (=> bs!7188 m!201715))

(assert (=> bs!7188 m!202605))

(assert (=> bs!7188 m!202605))

(declare-fun m!202883 () Bool)

(assert (=> bs!7188 m!202883))

(assert (=> b!173456 d!52929))

(assert (=> b!173456 d!52535))

(declare-fun d!52931 () Bool)

(declare-fun lt!86182 () Bool)

(assert (=> d!52931 (= lt!86182 (select (content!148 (toList!1104 lt!85997)) (tuple2!3237 lt!85858 v!309)))))

(declare-fun e!114962 () Bool)

(assert (=> d!52931 (= lt!86182 e!114962)))

(declare-fun res!82609 () Bool)

(assert (=> d!52931 (=> (not res!82609) (not e!114962))))

(assert (=> d!52931 (= res!82609 ((_ is Cons!2222) (toList!1104 lt!85997)))))

(assert (=> d!52931 (= (contains!1154 (toList!1104 lt!85997) (tuple2!3237 lt!85858 v!309)) lt!86182)))

(declare-fun b!174059 () Bool)

(declare-fun e!114961 () Bool)

(assert (=> b!174059 (= e!114962 e!114961)))

(declare-fun res!82608 () Bool)

(assert (=> b!174059 (=> res!82608 e!114961)))

(assert (=> b!174059 (= res!82608 (= (h!2839 (toList!1104 lt!85997)) (tuple2!3237 lt!85858 v!309)))))

(declare-fun b!174060 () Bool)

(assert (=> b!174060 (= e!114961 (contains!1154 (t!7041 (toList!1104 lt!85997)) (tuple2!3237 lt!85858 v!309)))))

(assert (= (and d!52931 res!82609) b!174059))

(assert (= (and b!174059 (not res!82608)) b!174060))

(declare-fun m!202885 () Bool)

(assert (=> d!52931 m!202885))

(declare-fun m!202887 () Bool)

(assert (=> d!52931 m!202887))

(declare-fun m!202889 () Bool)

(assert (=> b!174060 m!202889))

(assert (=> b!173580 d!52931))

(assert (=> b!173552 d!52575))

(declare-fun d!52933 () Bool)

(assert (=> d!52933 (= (get!1972 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!173417 d!52933))

(declare-fun d!52935 () Bool)

(assert (=> d!52935 (= (isDefined!138 (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309)))) (not (isEmpty!442 (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun bs!7189 () Bool)

(assert (= bs!7189 d!52935))

(assert (=> bs!7189 m!201845))

(declare-fun m!202891 () Bool)

(assert (=> bs!7189 m!202891))

(assert (=> b!173622 d!52935))

(assert (=> b!173622 d!52593))

(declare-fun d!52937 () Bool)

(declare-fun res!82610 () Bool)

(declare-fun e!114963 () Bool)

(assert (=> d!52937 (=> res!82610 e!114963)))

(assert (=> d!52937 (= res!82610 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52937 (= (containsKey!188 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000) e!114963)))

(declare-fun b!174061 () Bool)

(declare-fun e!114964 () Bool)

(assert (=> b!174061 (= e!114963 e!114964)))

(declare-fun res!82611 () Bool)

(assert (=> b!174061 (=> (not res!82611) (not e!114964))))

(assert (=> b!174061 (= res!82611 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85847))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85847))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2222) (toList!1104 lt!85847)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85847))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!174062 () Bool)

(assert (=> b!174062 (= e!114964 (containsKey!188 (t!7041 (toList!1104 lt!85847)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52937 (not res!82610)) b!174061))

(assert (= (and b!174061 res!82611) b!174062))

(declare-fun m!202893 () Bool)

(assert (=> b!174062 m!202893))

(assert (=> d!52599 d!52937))

(declare-fun d!52939 () Bool)

(assert (=> d!52939 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3952 (getValueByKey!184 (toList!1104 lt!85847) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52601 d!52939))

(assert (=> d!52601 d!52867))

(declare-fun b!174063 () Bool)

(declare-fun e!114965 () Bool)

(declare-fun e!114970 () Bool)

(assert (=> b!174063 (= e!114965 e!114970)))

(declare-fun c!31105 () Bool)

(assert (=> b!174063 (= c!31105 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun bm!17640 () Bool)

(declare-fun call!17643 () ListLongMap!2177)

(assert (=> bm!17640 (= call!17643 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)))))

(declare-fun b!174065 () Bool)

(declare-fun e!114968 () Bool)

(assert (=> b!174065 (= e!114965 e!114968)))

(assert (=> b!174065 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun res!82613 () Bool)

(declare-fun lt!86185 () ListLongMap!2177)

(assert (=> b!174065 (= res!82613 (contains!1153 lt!86185 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!174065 (=> (not res!82613) (not e!114968))))

(declare-fun b!174066 () Bool)

(declare-fun e!114966 () ListLongMap!2177)

(assert (=> b!174066 (= e!114966 (ListLongMap!2178 Nil!2223))))

(declare-fun b!174067 () Bool)

(assert (=> b!174067 (= e!114970 (isEmpty!441 lt!86185))))

(declare-fun b!174068 () Bool)

(assert (=> b!174068 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> b!174068 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3766 (_values!3581 thiss!1248))))))

(assert (=> b!174068 (= e!114968 (= (apply!130 lt!86185 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!174069 () Bool)

(declare-fun e!114969 () ListLongMap!2177)

(assert (=> b!174069 (= e!114969 call!17643)))

(declare-fun b!174070 () Bool)

(assert (=> b!174070 (= e!114970 (= lt!86185 (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248))))))

(declare-fun b!174071 () Bool)

(assert (=> b!174071 (= e!114966 e!114969)))

(declare-fun c!31107 () Bool)

(assert (=> b!174071 (= c!31107 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!174072 () Bool)

(declare-fun e!114967 () Bool)

(assert (=> b!174072 (= e!114967 e!114965)))

(declare-fun c!31106 () Bool)

(declare-fun e!114971 () Bool)

(assert (=> b!174072 (= c!31106 e!114971)))

(declare-fun res!82614 () Bool)

(assert (=> b!174072 (=> (not res!82614) (not e!114971))))

(assert (=> b!174072 (= res!82614 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!174073 () Bool)

(declare-fun lt!86183 () Unit!5311)

(declare-fun lt!86187 () Unit!5311)

(assert (=> b!174073 (= lt!86183 lt!86187)))

(declare-fun lt!86186 () (_ BitVec 64))

(declare-fun lt!86188 () (_ BitVec 64))

(declare-fun lt!86184 () V!5091)

(declare-fun lt!86189 () ListLongMap!2177)

(assert (=> b!174073 (not (contains!1153 (+!241 lt!86189 (tuple2!3237 lt!86188 lt!86184)) lt!86186))))

(assert (=> b!174073 (= lt!86187 (addStillNotContains!74 lt!86189 lt!86188 lt!86184 lt!86186))))

(assert (=> b!174073 (= lt!86186 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!174073 (= lt!86184 (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!174073 (= lt!86188 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!174073 (= lt!86189 call!17643)))

(assert (=> b!174073 (= e!114969 (+!241 call!17643 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!174074 () Bool)

(assert (=> b!174074 (= e!114971 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!174074 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun d!52941 () Bool)

(assert (=> d!52941 e!114967))

(declare-fun res!82615 () Bool)

(assert (=> d!52941 (=> (not res!82615) (not e!114967))))

(assert (=> d!52941 (= res!82615 (not (contains!1153 lt!86185 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52941 (= lt!86185 e!114966)))

(declare-fun c!31104 () Bool)

(assert (=> d!52941 (= c!31104 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!52941 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52941 (= (getCurrentListMapNoExtraKeys!160 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 thiss!1248)) lt!86185)))

(declare-fun b!174064 () Bool)

(declare-fun res!82612 () Bool)

(assert (=> b!174064 (=> (not res!82612) (not e!114967))))

(assert (=> b!174064 (= res!82612 (not (contains!1153 lt!86185 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52941 c!31104) b!174066))

(assert (= (and d!52941 (not c!31104)) b!174071))

(assert (= (and b!174071 c!31107) b!174073))

(assert (= (and b!174071 (not c!31107)) b!174069))

(assert (= (or b!174073 b!174069) bm!17640))

(assert (= (and d!52941 res!82615) b!174064))

(assert (= (and b!174064 res!82612) b!174072))

(assert (= (and b!174072 res!82614) b!174074))

(assert (= (and b!174072 c!31106) b!174065))

(assert (= (and b!174072 (not c!31106)) b!174063))

(assert (= (and b!174065 res!82613) b!174068))

(assert (= (and b!174063 c!31105) b!174070))

(assert (= (and b!174063 (not c!31105)) b!174067))

(declare-fun b_lambda!6995 () Bool)

(assert (=> (not b_lambda!6995) (not b!174068)))

(assert (=> b!174068 t!7044))

(declare-fun b_and!10791 () Bool)

(assert (= b_and!10789 (and (=> t!7044 result!4593) b_and!10791)))

(declare-fun b_lambda!6997 () Bool)

(assert (=> (not b_lambda!6997) (not b!174073)))

(assert (=> b!174073 t!7044))

(declare-fun b_and!10793 () Bool)

(assert (= b_and!10791 (and (=> t!7044 result!4593) b_and!10793)))

(declare-fun m!202895 () Bool)

(assert (=> b!174070 m!202895))

(assert (=> b!174068 m!202431))

(assert (=> b!174068 m!201725))

(assert (=> b!174068 m!202433))

(assert (=> b!174068 m!201725))

(assert (=> b!174068 m!202435))

(declare-fun m!202897 () Bool)

(assert (=> b!174068 m!202897))

(assert (=> b!174068 m!202435))

(assert (=> b!174068 m!202431))

(declare-fun m!202899 () Bool)

(assert (=> d!52941 m!202899))

(assert (=> d!52941 m!201707))

(assert (=> b!174065 m!202435))

(assert (=> b!174065 m!202435))

(declare-fun m!202901 () Bool)

(assert (=> b!174065 m!202901))

(assert (=> bm!17640 m!202895))

(declare-fun m!202903 () Bool)

(assert (=> b!174067 m!202903))

(assert (=> b!174074 m!202435))

(assert (=> b!174074 m!202435))

(assert (=> b!174074 m!202445))

(declare-fun m!202905 () Bool)

(assert (=> b!174064 m!202905))

(assert (=> b!174071 m!202435))

(assert (=> b!174071 m!202435))

(assert (=> b!174071 m!202445))

(declare-fun m!202907 () Bool)

(assert (=> b!174073 m!202907))

(declare-fun m!202909 () Bool)

(assert (=> b!174073 m!202909))

(assert (=> b!174073 m!202431))

(assert (=> b!174073 m!201725))

(assert (=> b!174073 m!202433))

(assert (=> b!174073 m!201725))

(assert (=> b!174073 m!202907))

(declare-fun m!202911 () Bool)

(assert (=> b!174073 m!202911))

(assert (=> b!174073 m!202435))

(assert (=> b!174073 m!202431))

(declare-fun m!202913 () Bool)

(assert (=> b!174073 m!202913))

(assert (=> bm!17583 d!52941))

(declare-fun bm!17642 () Bool)

(declare-fun call!17646 () List!2226)

(declare-fun call!17644 () List!2226)

(assert (=> bm!17642 (= call!17646 call!17644)))

(declare-fun e!114975 () List!2226)

(declare-fun c!31111 () Bool)

(declare-fun b!174075 () Bool)

(declare-fun c!31109 () Bool)

(assert (=> b!174075 (= e!114975 (ite c!31109 (t!7041 (t!7041 (toList!1104 (map!1881 thiss!1248)))) (ite c!31111 (Cons!2222 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248)))) (t!7041 (t!7041 (toList!1104 (map!1881 thiss!1248))))) Nil!2223)))))

(declare-fun b!174076 () Bool)

(declare-fun res!82616 () Bool)

(declare-fun e!114976 () Bool)

(assert (=> b!174076 (=> (not res!82616) (not e!114976))))

(declare-fun lt!86190 () List!2226)

(assert (=> b!174076 (= res!82616 (containsKey!188 lt!86190 (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!174077 () Bool)

(declare-fun e!114973 () List!2226)

(assert (=> b!174077 (= e!114973 call!17644)))

(declare-fun b!174078 () Bool)

(assert (=> b!174078 (= c!31111 (and ((_ is Cons!2222) (t!7041 (toList!1104 (map!1881 thiss!1248)))) (bvsgt (_1!1628 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248))))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun e!114974 () List!2226)

(declare-fun e!114972 () List!2226)

(assert (=> b!174078 (= e!114974 e!114972)))

(declare-fun b!174079 () Bool)

(declare-fun call!17645 () List!2226)

(assert (=> b!174079 (= e!114972 call!17645)))

(declare-fun b!174080 () Bool)

(assert (=> b!174080 (= e!114972 call!17645)))

(declare-fun b!174081 () Bool)

(assert (=> b!174081 (= e!114973 e!114974)))

(assert (=> b!174081 (= c!31109 (and ((_ is Cons!2222) (t!7041 (toList!1104 (map!1881 thiss!1248)))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248))))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(declare-fun c!31108 () Bool)

(declare-fun bm!17641 () Bool)

(assert (=> bm!17641 (= call!17644 ($colon$colon!97 e!114975 (ite c!31108 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248)))) (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun c!31110 () Bool)

(assert (=> bm!17641 (= c!31110 c!31108)))

(declare-fun d!52943 () Bool)

(assert (=> d!52943 e!114976))

(declare-fun res!82617 () Bool)

(assert (=> d!52943 (=> (not res!82617) (not e!114976))))

(assert (=> d!52943 (= res!82617 (isStrictlySorted!327 lt!86190))))

(assert (=> d!52943 (= lt!86190 e!114973)))

(assert (=> d!52943 (= c!31108 (and ((_ is Cons!2222) (t!7041 (toList!1104 (map!1881 thiss!1248)))) (bvslt (_1!1628 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248))))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!52943 (isStrictlySorted!327 (t!7041 (toList!1104 (map!1881 thiss!1248))))))

(assert (=> d!52943 (= (insertStrictlySorted!101 (t!7041 (toList!1104 (map!1881 thiss!1248))) (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))) lt!86190)))

(declare-fun bm!17643 () Bool)

(assert (=> bm!17643 (= call!17645 call!17646)))

(declare-fun b!174082 () Bool)

(assert (=> b!174082 (= e!114974 call!17646)))

(declare-fun b!174083 () Bool)

(assert (=> b!174083 (= e!114975 (insertStrictlySorted!101 (t!7041 (t!7041 (toList!1104 (map!1881 thiss!1248)))) (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun b!174084 () Bool)

(assert (=> b!174084 (= e!114976 (contains!1154 lt!86190 (tuple2!3237 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309)))))))

(assert (= (and d!52943 c!31108) b!174077))

(assert (= (and d!52943 (not c!31108)) b!174081))

(assert (= (and b!174081 c!31109) b!174082))

(assert (= (and b!174081 (not c!31109)) b!174078))

(assert (= (and b!174078 c!31111) b!174079))

(assert (= (and b!174078 (not c!31111)) b!174080))

(assert (= (or b!174079 b!174080) bm!17643))

(assert (= (or b!174082 bm!17643) bm!17642))

(assert (= (or b!174077 bm!17642) bm!17641))

(assert (= (and bm!17641 c!31110) b!174083))

(assert (= (and bm!17641 (not c!31110)) b!174075))

(assert (= (and d!52943 res!82617) b!174076))

(assert (= (and b!174076 res!82616) b!174084))

(declare-fun m!202915 () Bool)

(assert (=> b!174084 m!202915))

(declare-fun m!202917 () Bool)

(assert (=> bm!17641 m!202917))

(declare-fun m!202919 () Bool)

(assert (=> b!174083 m!202919))

(declare-fun m!202921 () Bool)

(assert (=> b!174076 m!202921))

(declare-fun m!202923 () Bool)

(assert (=> d!52943 m!202923))

(declare-fun m!202925 () Bool)

(assert (=> d!52943 m!202925))

(assert (=> b!173637 d!52943))

(declare-fun d!52945 () Bool)

(assert (=> d!52945 (= (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))))

(declare-fun bs!7190 () Bool)

(assert (= bs!7190 d!52945))

(assert (=> bs!7190 m!202185))

(declare-fun m!202927 () Bool)

(assert (=> bs!7190 m!202927))

(assert (=> b!173583 d!52945))

(declare-fun e!114977 () Option!190)

(declare-fun b!174085 () Bool)

(assert (=> b!174085 (= e!114977 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))))

(declare-fun b!174088 () Bool)

(declare-fun e!114978 () Option!190)

(assert (=> b!174088 (= e!114978 None!188)))

(declare-fun b!174086 () Bool)

(assert (=> b!174086 (= e!114977 e!114978)))

(declare-fun c!31113 () Bool)

(assert (=> b!174086 (= c!31113 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) lt!85844))))))

(declare-fun b!174087 () Bool)

(assert (=> b!174087 (= e!114978 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) lt!85844))))

(declare-fun c!31112 () Bool)

(declare-fun d!52947 () Bool)

(assert (=> d!52947 (= c!31112 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))))) lt!85844)))))

(assert (=> d!52947 (= (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844) e!114977)))

(assert (= (and d!52947 c!31112) b!174085))

(assert (= (and d!52947 (not c!31112)) b!174086))

(assert (= (and b!174086 c!31113) b!174087))

(assert (= (and b!174086 (not c!31113)) b!174088))

(declare-fun m!202929 () Bool)

(assert (=> b!174087 m!202929))

(assert (=> b!173583 d!52947))

(declare-fun d!52949 () Bool)

(assert (=> d!52949 (= (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810)) (not (isEmpty!442 (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))))

(declare-fun bs!7191 () Bool)

(assert (= bs!7191 d!52949))

(assert (=> bs!7191 m!201935))

(declare-fun m!202931 () Bool)

(assert (=> bs!7191 m!202931))

(assert (=> b!173466 d!52949))

(declare-fun b!174089 () Bool)

(declare-fun e!114979 () Option!190)

(assert (=> b!174089 (= e!114979 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))))

(declare-fun b!174092 () Bool)

(declare-fun e!114980 () Option!190)

(assert (=> b!174092 (= e!114980 None!188)))

(declare-fun b!174090 () Bool)

(assert (=> b!174090 (= e!114979 e!114980)))

(declare-fun c!31115 () Bool)

(assert (=> b!174090 (= c!31115 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) lt!85810))))))

(declare-fun b!174091 () Bool)

(assert (=> b!174091 (= e!114980 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) lt!85810))))

(declare-fun c!31114 () Bool)

(declare-fun d!52951 () Bool)

(assert (=> d!52951 (= c!31114 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))))) lt!85810)))))

(assert (=> d!52951 (= (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810) e!114979)))

(assert (= (and d!52951 c!31114) b!174089))

(assert (= (and d!52951 (not c!31114)) b!174090))

(assert (= (and b!174090 c!31115) b!174091))

(assert (= (and b!174090 (not c!31115)) b!174092))

(declare-fun m!202933 () Bool)

(assert (=> b!174091 m!202933))

(assert (=> b!173466 d!52951))

(assert (=> b!173693 d!52693))

(declare-fun d!52953 () Bool)

(declare-fun res!82618 () Bool)

(declare-fun e!114981 () Bool)

(assert (=> d!52953 (=> res!82618 e!114981)))

(assert (=> d!52953 (= res!82618 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52953 (= (containsKey!188 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) e!114981)))

(declare-fun b!174093 () Bool)

(declare-fun e!114982 () Bool)

(assert (=> b!174093 (= e!114981 e!114982)))

(declare-fun res!82619 () Bool)

(assert (=> b!174093 (=> (not res!82619) (not e!114982))))

(assert (=> b!174093 (= res!82619 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85847))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85847))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2222) (toList!1104 lt!85847)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85847))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!174094 () Bool)

(assert (=> b!174094 (= e!114982 (containsKey!188 (t!7041 (toList!1104 lt!85847)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52953 (not res!82618)) b!174093))

(assert (= (and b!174093 res!82619) b!174094))

(assert (=> b!174094 m!201715))

(declare-fun m!202935 () Bool)

(assert (=> b!174094 m!202935))

(assert (=> d!52645 d!52953))

(declare-fun d!52955 () Bool)

(declare-fun lt!86191 () Bool)

(assert (=> d!52955 (= lt!86191 (select (content!148 (toList!1104 lt!85884)) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!114984 () Bool)

(assert (=> d!52955 (= lt!86191 e!114984)))

(declare-fun res!82621 () Bool)

(assert (=> d!52955 (=> (not res!82621) (not e!114984))))

(assert (=> d!52955 (= res!82621 ((_ is Cons!2222) (toList!1104 lt!85884)))))

(assert (=> d!52955 (= (contains!1154 (toList!1104 lt!85884) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86191)))

(declare-fun b!174095 () Bool)

(declare-fun e!114983 () Bool)

(assert (=> b!174095 (= e!114984 e!114983)))

(declare-fun res!82620 () Bool)

(assert (=> b!174095 (=> res!82620 e!114983)))

(assert (=> b!174095 (= res!82620 (= (h!2839 (toList!1104 lt!85884)) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!174096 () Bool)

(assert (=> b!174096 (= e!114983 (contains!1154 (t!7041 (toList!1104 lt!85884)) (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52955 res!82621) b!174095))

(assert (= (and b!174095 (not res!82620)) b!174096))

(declare-fun m!202937 () Bool)

(assert (=> d!52955 m!202937))

(declare-fun m!202939 () Bool)

(assert (=> d!52955 m!202939))

(declare-fun m!202941 () Bool)

(assert (=> b!174096 m!202941))

(assert (=> b!173419 d!52955))

(declare-fun d!52957 () Bool)

(assert (=> d!52957 (= (get!1971 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3950 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!173416 d!52957))

(declare-fun d!52959 () Bool)

(assert (=> d!52959 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))) lt!85850)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))) lt!85850)))))

(assert (=> d!52627 d!52959))

(declare-fun e!114985 () Option!190)

(declare-fun b!174097 () Bool)

(assert (=> b!174097 (= e!114985 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)))))))))

(declare-fun b!174100 () Bool)

(declare-fun e!114986 () Option!190)

(assert (=> b!174100 (= e!114986 None!188)))

(declare-fun b!174098 () Bool)

(assert (=> b!174098 (= e!114985 e!114986)))

(declare-fun c!31117 () Bool)

(assert (=> b!174098 (= c!31117 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))))) lt!85850))))))

(declare-fun b!174099 () Bool)

(assert (=> b!174099 (= e!114986 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)))) lt!85850))))

(declare-fun d!52961 () Bool)

(declare-fun c!31116 () Bool)

(assert (=> d!52961 (= c!31116 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))))) lt!85850)))))

(assert (=> d!52961 (= (getValueByKey!184 (toList!1104 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309))) lt!85850) e!114985)))

(assert (= (and d!52961 c!31116) b!174097))

(assert (= (and d!52961 (not c!31116)) b!174098))

(assert (= (and b!174098 c!31117) b!174099))

(assert (= (and b!174098 (not c!31117)) b!174100))

(declare-fun m!202943 () Bool)

(assert (=> b!174099 m!202943))

(assert (=> d!52627 d!52961))

(declare-fun d!52963 () Bool)

(declare-fun e!114987 () Bool)

(assert (=> d!52963 e!114987))

(declare-fun res!82622 () Bool)

(assert (=> d!52963 (=> res!82622 e!114987)))

(declare-fun lt!86192 () Bool)

(assert (=> d!52963 (= res!82622 (not lt!86192))))

(declare-fun lt!86194 () Bool)

(assert (=> d!52963 (= lt!86192 lt!86194)))

(declare-fun lt!86195 () Unit!5311)

(declare-fun e!114988 () Unit!5311)

(assert (=> d!52963 (= lt!86195 e!114988)))

(declare-fun c!31118 () Bool)

(assert (=> d!52963 (= c!31118 lt!86194)))

(assert (=> d!52963 (= lt!86194 (containsKey!188 (toList!1104 lt!85911) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!52963 (= (contains!1153 lt!85911 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86192)))

(declare-fun b!174101 () Bool)

(declare-fun lt!86193 () Unit!5311)

(assert (=> b!174101 (= e!114988 lt!86193)))

(assert (=> b!174101 (= lt!86193 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85911) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174101 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174102 () Bool)

(declare-fun Unit!5344 () Unit!5311)

(assert (=> b!174102 (= e!114988 Unit!5344)))

(declare-fun b!174103 () Bool)

(assert (=> b!174103 (= e!114987 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85911) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!52963 c!31118) b!174101))

(assert (= (and d!52963 (not c!31118)) b!174102))

(assert (= (and d!52963 (not res!82622)) b!174103))

(declare-fun m!202945 () Bool)

(assert (=> d!52963 m!202945))

(declare-fun m!202947 () Bool)

(assert (=> b!174101 m!202947))

(declare-fun m!202949 () Bool)

(assert (=> b!174101 m!202949))

(assert (=> b!174101 m!202949))

(declare-fun m!202951 () Bool)

(assert (=> b!174101 m!202951))

(assert (=> b!174103 m!202949))

(assert (=> b!174103 m!202949))

(assert (=> b!174103 m!202951))

(assert (=> b!173452 d!52963))

(declare-fun b!174104 () Bool)

(declare-fun e!114989 () Option!190)

(assert (=> b!174104 (= e!114989 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85997)))))))

(declare-fun b!174107 () Bool)

(declare-fun e!114990 () Option!190)

(assert (=> b!174107 (= e!114990 None!188)))

(declare-fun b!174105 () Bool)

(assert (=> b!174105 (= e!114989 e!114990)))

(declare-fun c!31120 () Bool)

(assert (=> b!174105 (= c!31120 (and ((_ is Cons!2222) (toList!1104 lt!85997)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85997))) (_1!1628 (tuple2!3237 lt!85858 v!309))))))))

(declare-fun b!174106 () Bool)

(assert (=> b!174106 (= e!114990 (getValueByKey!184 (t!7041 (toList!1104 lt!85997)) (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun c!31119 () Bool)

(declare-fun d!52965 () Bool)

(assert (=> d!52965 (= c!31119 (and ((_ is Cons!2222) (toList!1104 lt!85997)) (= (_1!1628 (h!2839 (toList!1104 lt!85997))) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (=> d!52965 (= (getValueByKey!184 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309))) e!114989)))

(assert (= (and d!52965 c!31119) b!174104))

(assert (= (and d!52965 (not c!31119)) b!174105))

(assert (= (and b!174105 c!31120) b!174106))

(assert (= (and b!174105 (not c!31120)) b!174107))

(declare-fun m!202953 () Bool)

(assert (=> b!174106 m!202953))

(assert (=> b!173579 d!52965))

(assert (=> b!173551 d!52725))

(declare-fun d!52967 () Bool)

(assert (=> d!52967 (arrayContainsKey!0 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000)))

(declare-fun lt!86196 () Unit!5311)

(assert (=> d!52967 (= lt!86196 (choose!13 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000))))

(assert (=> d!52967 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!52967 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000) lt!86196)))

(declare-fun bs!7192 () Bool)

(assert (= bs!7192 d!52967))

(assert (=> bs!7192 m!202093))

(declare-fun m!202955 () Bool)

(assert (=> bs!7192 m!202955))

(assert (=> b!173567 d!52967))

(declare-fun d!52969 () Bool)

(declare-fun res!82623 () Bool)

(declare-fun e!114991 () Bool)

(assert (=> d!52969 (=> res!82623 e!114991)))

(assert (=> d!52969 (= res!82623 (= (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) lt!85976))))

(assert (=> d!52969 (= (arrayContainsKey!0 (_keys!5439 thiss!1248) lt!85976 #b00000000000000000000000000000000) e!114991)))

(declare-fun b!174108 () Bool)

(declare-fun e!114992 () Bool)

(assert (=> b!174108 (= e!114991 e!114992)))

(declare-fun res!82624 () Bool)

(assert (=> b!174108 (=> (not res!82624) (not e!114992))))

(assert (=> b!174108 (= res!82624 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!174109 () Bool)

(assert (=> b!174109 (= e!114992 (arrayContainsKey!0 (_keys!5439 thiss!1248) lt!85976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!52969 (not res!82623)) b!174108))

(assert (= (and b!174108 res!82624) b!174109))

(assert (=> d!52969 m!201715))

(declare-fun m!202957 () Bool)

(assert (=> b!174109 m!202957))

(assert (=> b!173567 d!52969))

(declare-fun b!174110 () Bool)

(declare-fun e!114994 () SeekEntryResult!552)

(assert (=> b!174110 (= e!114994 Undefined!552)))

(declare-fun d!52971 () Bool)

(declare-fun lt!86199 () SeekEntryResult!552)

(assert (=> d!52971 (and (or ((_ is Undefined!552) lt!86199) (not ((_ is Found!552) lt!86199)) (and (bvsge (index!4377 lt!86199) #b00000000000000000000000000000000) (bvslt (index!4377 lt!86199) (size!3765 (_keys!5439 thiss!1248))))) (or ((_ is Undefined!552) lt!86199) ((_ is Found!552) lt!86199) (not ((_ is MissingZero!552) lt!86199)) (and (bvsge (index!4376 lt!86199) #b00000000000000000000000000000000) (bvslt (index!4376 lt!86199) (size!3765 (_keys!5439 thiss!1248))))) (or ((_ is Undefined!552) lt!86199) ((_ is Found!552) lt!86199) ((_ is MissingZero!552) lt!86199) (not ((_ is MissingVacant!552) lt!86199)) (and (bvsge (index!4379 lt!86199) #b00000000000000000000000000000000) (bvslt (index!4379 lt!86199) (size!3765 (_keys!5439 thiss!1248))))) (or ((_ is Undefined!552) lt!86199) (ite ((_ is Found!552) lt!86199) (= (select (arr!3466 (_keys!5439 thiss!1248)) (index!4377 lt!86199)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!552) lt!86199) (= (select (arr!3466 (_keys!5439 thiss!1248)) (index!4376 lt!86199)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!552) lt!86199) (= (select (arr!3466 (_keys!5439 thiss!1248)) (index!4379 lt!86199)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!52971 (= lt!86199 e!114994)))

(declare-fun c!31121 () Bool)

(declare-fun lt!86198 () SeekEntryResult!552)

(assert (=> d!52971 (= c!31121 (and ((_ is Intermediate!552) lt!86198) (undefined!1364 lt!86198)))))

(assert (=> d!52971 (= lt!86198 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (mask!8470 thiss!1248)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)))))

(assert (=> d!52971 (validMask!0 (mask!8470 thiss!1248))))

(assert (=> d!52971 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)) lt!86199)))

(declare-fun b!174111 () Bool)

(declare-fun e!114995 () SeekEntryResult!552)

(assert (=> b!174111 (= e!114994 e!114995)))

(declare-fun lt!86197 () (_ BitVec 64))

(assert (=> b!174111 (= lt!86197 (select (arr!3466 (_keys!5439 thiss!1248)) (index!4378 lt!86198)))))

(declare-fun c!31122 () Bool)

(assert (=> b!174111 (= c!31122 (= lt!86197 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174112 () Bool)

(declare-fun e!114993 () SeekEntryResult!552)

(assert (=> b!174112 (= e!114993 (MissingZero!552 (index!4378 lt!86198)))))

(declare-fun b!174113 () Bool)

(assert (=> b!174113 (= e!114993 (seekKeyOrZeroReturnVacant!0 (x!19206 lt!86198) (index!4378 lt!86198) (index!4378 lt!86198) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)))))

(declare-fun b!174114 () Bool)

(declare-fun c!31123 () Bool)

(assert (=> b!174114 (= c!31123 (= lt!86197 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174114 (= e!114995 e!114993)))

(declare-fun b!174115 () Bool)

(assert (=> b!174115 (= e!114995 (Found!552 (index!4378 lt!86198)))))

(assert (= (and d!52971 c!31121) b!174110))

(assert (= (and d!52971 (not c!31121)) b!174111))

(assert (= (and b!174111 c!31122) b!174115))

(assert (= (and b!174111 (not c!31122)) b!174114))

(assert (= (and b!174114 c!31123) b!174112))

(assert (= (and b!174114 (not c!31123)) b!174113))

(declare-fun m!202959 () Bool)

(assert (=> d!52971 m!202959))

(declare-fun m!202961 () Bool)

(assert (=> d!52971 m!202961))

(assert (=> d!52971 m!201715))

(declare-fun m!202963 () Bool)

(assert (=> d!52971 m!202963))

(assert (=> d!52971 m!201707))

(declare-fun m!202965 () Bool)

(assert (=> d!52971 m!202965))

(declare-fun m!202967 () Bool)

(assert (=> d!52971 m!202967))

(assert (=> d!52971 m!201715))

(assert (=> d!52971 m!202961))

(declare-fun m!202969 () Bool)

(assert (=> b!174111 m!202969))

(assert (=> b!174113 m!201715))

(declare-fun m!202971 () Bool)

(assert (=> b!174113 m!202971))

(assert (=> b!173567 d!52971))

(declare-fun d!52973 () Bool)

(declare-fun e!114996 () Bool)

(assert (=> d!52973 e!114996))

(declare-fun res!82625 () Bool)

(assert (=> d!52973 (=> res!82625 e!114996)))

(declare-fun lt!86200 () Bool)

(assert (=> d!52973 (= res!82625 (not lt!86200))))

(declare-fun lt!86202 () Bool)

(assert (=> d!52973 (= lt!86200 lt!86202)))

(declare-fun lt!86203 () Unit!5311)

(declare-fun e!114997 () Unit!5311)

(assert (=> d!52973 (= lt!86203 e!114997)))

(declare-fun c!31124 () Bool)

(assert (=> d!52973 (= c!31124 lt!86202)))

(assert (=> d!52973 (= lt!86202 (containsKey!188 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(assert (=> d!52973 (= (contains!1153 lt!85997 (_1!1628 (tuple2!3237 lt!85858 v!309))) lt!86200)))

(declare-fun b!174116 () Bool)

(declare-fun lt!86201 () Unit!5311)

(assert (=> b!174116 (= e!114997 lt!86201)))

(assert (=> b!174116 (= lt!86201 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(assert (=> b!174116 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun b!174117 () Bool)

(declare-fun Unit!5345 () Unit!5311)

(assert (=> b!174117 (= e!114997 Unit!5345)))

(declare-fun b!174118 () Bool)

(assert (=> b!174118 (= e!114996 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85997) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (= (and d!52973 c!31124) b!174116))

(assert (= (and d!52973 (not c!31124)) b!174117))

(assert (= (and d!52973 (not res!82625)) b!174118))

(declare-fun m!202973 () Bool)

(assert (=> d!52973 m!202973))

(declare-fun m!202975 () Bool)

(assert (=> b!174116 m!202975))

(assert (=> b!174116 m!202177))

(assert (=> b!174116 m!202177))

(declare-fun m!202977 () Bool)

(assert (=> b!174116 m!202977))

(assert (=> b!174118 m!202177))

(assert (=> b!174118 m!202177))

(assert (=> b!174118 m!202977))

(assert (=> d!52631 d!52973))

(declare-fun b!174119 () Bool)

(declare-fun e!114998 () Option!190)

(assert (=> b!174119 (= e!114998 (Some!189 (_2!1628 (h!2839 lt!85998))))))

(declare-fun b!174122 () Bool)

(declare-fun e!114999 () Option!190)

(assert (=> b!174122 (= e!114999 None!188)))

(declare-fun b!174120 () Bool)

(assert (=> b!174120 (= e!114998 e!114999)))

(declare-fun c!31126 () Bool)

(assert (=> b!174120 (= c!31126 (and ((_ is Cons!2222) lt!85998) (not (= (_1!1628 (h!2839 lt!85998)) (_1!1628 (tuple2!3237 lt!85858 v!309))))))))

(declare-fun b!174121 () Bool)

(assert (=> b!174121 (= e!114999 (getValueByKey!184 (t!7041 lt!85998) (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun d!52975 () Bool)

(declare-fun c!31125 () Bool)

(assert (=> d!52975 (= c!31125 (and ((_ is Cons!2222) lt!85998) (= (_1!1628 (h!2839 lt!85998)) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (=> d!52975 (= (getValueByKey!184 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309))) e!114998)))

(assert (= (and d!52975 c!31125) b!174119))

(assert (= (and d!52975 (not c!31125)) b!174120))

(assert (= (and b!174120 c!31126) b!174121))

(assert (= (and b!174120 (not c!31126)) b!174122))

(declare-fun m!202979 () Bool)

(assert (=> b!174121 m!202979))

(assert (=> d!52631 d!52975))

(declare-fun d!52977 () Bool)

(assert (=> d!52977 (= (getValueByKey!184 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309))) (Some!189 (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun lt!86204 () Unit!5311)

(assert (=> d!52977 (= lt!86204 (choose!939 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun e!115000 () Bool)

(assert (=> d!52977 e!115000))

(declare-fun res!82626 () Bool)

(assert (=> d!52977 (=> (not res!82626) (not e!115000))))

(assert (=> d!52977 (= res!82626 (isStrictlySorted!327 lt!85998))))

(assert (=> d!52977 (= (lemmaContainsTupThenGetReturnValue!99 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))) lt!86204)))

(declare-fun b!174123 () Bool)

(declare-fun res!82627 () Bool)

(assert (=> b!174123 (=> (not res!82627) (not e!115000))))

(assert (=> b!174123 (= res!82627 (containsKey!188 lt!85998 (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun b!174124 () Bool)

(assert (=> b!174124 (= e!115000 (contains!1154 lt!85998 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (= (and d!52977 res!82626) b!174123))

(assert (= (and b!174123 res!82627) b!174124))

(assert (=> d!52977 m!202171))

(declare-fun m!202981 () Bool)

(assert (=> d!52977 m!202981))

(declare-fun m!202983 () Bool)

(assert (=> d!52977 m!202983))

(declare-fun m!202985 () Bool)

(assert (=> b!174123 m!202985))

(declare-fun m!202987 () Bool)

(assert (=> b!174124 m!202987))

(assert (=> d!52631 d!52977))

(declare-fun bm!17645 () Bool)

(declare-fun call!17649 () List!2226)

(declare-fun call!17647 () List!2226)

(assert (=> bm!17645 (= call!17649 call!17647)))

(declare-fun c!31128 () Bool)

(declare-fun e!115004 () List!2226)

(declare-fun c!31130 () Bool)

(declare-fun b!174125 () Bool)

(assert (=> b!174125 (= e!115004 (ite c!31128 (t!7041 (toList!1104 lt!85848)) (ite c!31130 (Cons!2222 (h!2839 (toList!1104 lt!85848)) (t!7041 (toList!1104 lt!85848))) Nil!2223)))))

(declare-fun b!174126 () Bool)

(declare-fun res!82628 () Bool)

(declare-fun e!115005 () Bool)

(assert (=> b!174126 (=> (not res!82628) (not e!115005))))

(declare-fun lt!86205 () List!2226)

(assert (=> b!174126 (= res!82628 (containsKey!188 lt!86205 (_1!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun b!174127 () Bool)

(declare-fun e!115002 () List!2226)

(assert (=> b!174127 (= e!115002 call!17647)))

(declare-fun b!174128 () Bool)

(assert (=> b!174128 (= c!31130 (and ((_ is Cons!2222) (toList!1104 lt!85848)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85848))) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(declare-fun e!115003 () List!2226)

(declare-fun e!115001 () List!2226)

(assert (=> b!174128 (= e!115003 e!115001)))

(declare-fun b!174129 () Bool)

(declare-fun call!17648 () List!2226)

(assert (=> b!174129 (= e!115001 call!17648)))

(declare-fun b!174130 () Bool)

(assert (=> b!174130 (= e!115001 call!17648)))

(declare-fun b!174131 () Bool)

(assert (=> b!174131 (= e!115002 e!115003)))

(assert (=> b!174131 (= c!31128 (and ((_ is Cons!2222) (toList!1104 lt!85848)) (= (_1!1628 (h!2839 (toList!1104 lt!85848))) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(declare-fun bm!17644 () Bool)

(declare-fun c!31127 () Bool)

(assert (=> bm!17644 (= call!17647 ($colon$colon!97 e!115004 (ite c!31127 (h!2839 (toList!1104 lt!85848)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))))))))

(declare-fun c!31129 () Bool)

(assert (=> bm!17644 (= c!31129 c!31127)))

(declare-fun d!52979 () Bool)

(assert (=> d!52979 e!115005))

(declare-fun res!82629 () Bool)

(assert (=> d!52979 (=> (not res!82629) (not e!115005))))

(assert (=> d!52979 (= res!82629 (isStrictlySorted!327 lt!86205))))

(assert (=> d!52979 (= lt!86205 e!115002)))

(assert (=> d!52979 (= c!31127 (and ((_ is Cons!2222) (toList!1104 lt!85848)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85848))) (_1!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (=> d!52979 (isStrictlySorted!327 (toList!1104 lt!85848))))

(assert (=> d!52979 (= (insertStrictlySorted!101 (toList!1104 lt!85848) (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))) lt!86205)))

(declare-fun bm!17646 () Bool)

(assert (=> bm!17646 (= call!17648 call!17649)))

(declare-fun b!174132 () Bool)

(assert (=> b!174132 (= e!115003 call!17649)))

(declare-fun b!174133 () Bool)

(assert (=> b!174133 (= e!115004 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85848)) (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309))))))

(declare-fun b!174134 () Bool)

(assert (=> b!174134 (= e!115005 (contains!1154 lt!86205 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85858 v!309)) (_2!1628 (tuple2!3237 lt!85858 v!309)))))))

(assert (= (and d!52979 c!31127) b!174127))

(assert (= (and d!52979 (not c!31127)) b!174131))

(assert (= (and b!174131 c!31128) b!174132))

(assert (= (and b!174131 (not c!31128)) b!174128))

(assert (= (and b!174128 c!31130) b!174129))

(assert (= (and b!174128 (not c!31130)) b!174130))

(assert (= (or b!174129 b!174130) bm!17646))

(assert (= (or b!174132 bm!17646) bm!17645))

(assert (= (or b!174127 bm!17645) bm!17644))

(assert (= (and bm!17644 c!31129) b!174133))

(assert (= (and bm!17644 (not c!31129)) b!174125))

(assert (= (and d!52979 res!82629) b!174126))

(assert (= (and b!174126 res!82628) b!174134))

(declare-fun m!202989 () Bool)

(assert (=> b!174134 m!202989))

(declare-fun m!202991 () Bool)

(assert (=> bm!17644 m!202991))

(declare-fun m!202993 () Bool)

(assert (=> b!174133 m!202993))

(declare-fun m!202995 () Bool)

(assert (=> b!174126 m!202995))

(declare-fun m!202997 () Bool)

(assert (=> d!52979 m!202997))

(declare-fun m!202999 () Bool)

(assert (=> d!52979 m!202999))

(assert (=> d!52631 d!52979))

(assert (=> b!173647 d!52575))

(declare-fun d!52981 () Bool)

(declare-fun lt!86206 () Bool)

(assert (=> d!52981 (= lt!86206 (select (content!148 (toList!1104 lt!85925)) (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))

(declare-fun e!115007 () Bool)

(assert (=> d!52981 (= lt!86206 e!115007)))

(declare-fun res!82631 () Bool)

(assert (=> d!52981 (=> (not res!82631) (not e!115007))))

(assert (=> d!52981 (= res!82631 ((_ is Cons!2222) (toList!1104 lt!85925)))))

(assert (=> d!52981 (= (contains!1154 (toList!1104 lt!85925) (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!86206)))

(declare-fun b!174135 () Bool)

(declare-fun e!115006 () Bool)

(assert (=> b!174135 (= e!115007 e!115006)))

(declare-fun res!82630 () Bool)

(assert (=> b!174135 (=> res!82630 e!115006)))

(assert (=> b!174135 (= res!82630 (= (h!2839 (toList!1104 lt!85925)) (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))

(declare-fun b!174136 () Bool)

(assert (=> b!174136 (= e!115006 (contains!1154 (t!7041 (toList!1104 lt!85925)) (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))

(assert (= (and d!52981 res!82631) b!174135))

(assert (= (and b!174135 (not res!82630)) b!174136))

(declare-fun m!203001 () Bool)

(assert (=> d!52981 m!203001))

(declare-fun m!203003 () Bool)

(assert (=> d!52981 m!203003))

(declare-fun m!203005 () Bool)

(assert (=> b!174136 m!203005))

(assert (=> b!173469 d!52981))

(declare-fun d!52983 () Bool)

(declare-fun lt!86207 () Bool)

(assert (=> d!52983 (= lt!86207 (select (content!148 (toList!1104 lt!85933)) (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))

(declare-fun e!115009 () Bool)

(assert (=> d!52983 (= lt!86207 e!115009)))

(declare-fun res!82633 () Bool)

(assert (=> d!52983 (=> (not res!82633) (not e!115009))))

(assert (=> d!52983 (= res!82633 ((_ is Cons!2222) (toList!1104 lt!85933)))))

(assert (=> d!52983 (= (contains!1154 (toList!1104 lt!85933) (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!86207)))

(declare-fun b!174137 () Bool)

(declare-fun e!115008 () Bool)

(assert (=> b!174137 (= e!115009 e!115008)))

(declare-fun res!82632 () Bool)

(assert (=> b!174137 (=> res!82632 e!115008)))

(assert (=> b!174137 (= res!82632 (= (h!2839 (toList!1104 lt!85933)) (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))

(declare-fun b!174138 () Bool)

(assert (=> b!174138 (= e!115008 (contains!1154 (t!7041 (toList!1104 lt!85933)) (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))

(assert (= (and d!52983 res!82633) b!174137))

(assert (= (and b!174137 (not res!82632)) b!174138))

(declare-fun m!203007 () Bool)

(assert (=> d!52983 m!203007))

(declare-fun m!203009 () Bool)

(assert (=> d!52983 m!203009))

(declare-fun m!203011 () Bool)

(assert (=> b!174138 m!203011))

(assert (=> b!173473 d!52983))

(declare-fun d!52985 () Bool)

(declare-fun res!82634 () Bool)

(declare-fun e!115010 () Bool)

(assert (=> d!52985 (=> res!82634 e!115010)))

(assert (=> d!52985 (= res!82634 (and ((_ is Cons!2222) (toList!1104 lt!85847)) (= (_1!1628 (h!2839 (toList!1104 lt!85847))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!52985 (= (containsKey!188 (toList!1104 lt!85847) #b0000000000000000000000000000000000000000000000000000000000000000) e!115010)))

(declare-fun b!174139 () Bool)

(declare-fun e!115011 () Bool)

(assert (=> b!174139 (= e!115010 e!115011)))

(declare-fun res!82635 () Bool)

(assert (=> b!174139 (=> (not res!82635) (not e!115011))))

(assert (=> b!174139 (= res!82635 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85847))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85847))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!2222) (toList!1104 lt!85847)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85847))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!174140 () Bool)

(assert (=> b!174140 (= e!115011 (containsKey!188 (t!7041 (toList!1104 lt!85847)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!52985 (not res!82634)) b!174139))

(assert (= (and b!174139 res!82635) b!174140))

(declare-fun m!203013 () Bool)

(assert (=> b!174140 m!203013))

(assert (=> d!52573 d!52985))

(declare-fun d!52987 () Bool)

(declare-fun e!115012 () Bool)

(assert (=> d!52987 e!115012))

(declare-fun res!82636 () Bool)

(assert (=> d!52987 (=> res!82636 e!115012)))

(declare-fun lt!86208 () Bool)

(assert (=> d!52987 (= res!82636 (not lt!86208))))

(declare-fun lt!86210 () Bool)

(assert (=> d!52987 (= lt!86208 lt!86210)))

(declare-fun lt!86211 () Unit!5311)

(declare-fun e!115013 () Unit!5311)

(assert (=> d!52987 (= lt!86211 e!115013)))

(declare-fun c!31131 () Bool)

(assert (=> d!52987 (= c!31131 lt!86210)))

(assert (=> d!52987 (= lt!86210 (containsKey!188 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!52987 (= (contains!1153 lt!85988 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!86208)))

(declare-fun b!174141 () Bool)

(declare-fun lt!86209 () Unit!5311)

(assert (=> b!174141 (= e!115013 lt!86209)))

(assert (=> b!174141 (= lt!86209 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(assert (=> b!174141 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174142 () Bool)

(declare-fun Unit!5346 () Unit!5311)

(assert (=> b!174142 (= e!115013 Unit!5346)))

(declare-fun b!174143 () Bool)

(assert (=> b!174143 (= e!115012 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52987 c!31131) b!174141))

(assert (= (and d!52987 (not c!31131)) b!174142))

(assert (= (and d!52987 (not res!82636)) b!174143))

(declare-fun m!203015 () Bool)

(assert (=> d!52987 m!203015))

(declare-fun m!203017 () Bool)

(assert (=> b!174141 m!203017))

(assert (=> b!174141 m!202133))

(assert (=> b!174141 m!202133))

(declare-fun m!203019 () Bool)

(assert (=> b!174141 m!203019))

(assert (=> b!174143 m!202133))

(assert (=> b!174143 m!202133))

(assert (=> b!174143 m!203019))

(assert (=> d!52617 d!52987))

(declare-fun b!174144 () Bool)

(declare-fun e!115014 () Option!190)

(assert (=> b!174144 (= e!115014 (Some!189 (_2!1628 (h!2839 lt!85989))))))

(declare-fun b!174147 () Bool)

(declare-fun e!115015 () Option!190)

(assert (=> b!174147 (= e!115015 None!188)))

(declare-fun b!174145 () Bool)

(assert (=> b!174145 (= e!115014 e!115015)))

(declare-fun c!31133 () Bool)

(assert (=> b!174145 (= c!31133 (and ((_ is Cons!2222) lt!85989) (not (= (_1!1628 (h!2839 lt!85989)) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174146 () Bool)

(assert (=> b!174146 (= e!115015 (getValueByKey!184 (t!7041 lt!85989) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31132 () Bool)

(declare-fun d!52989 () Bool)

(assert (=> d!52989 (= c!31132 (and ((_ is Cons!2222) lt!85989) (= (_1!1628 (h!2839 lt!85989)) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52989 (= (getValueByKey!184 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) e!115014)))

(assert (= (and d!52989 c!31132) b!174144))

(assert (= (and d!52989 (not c!31132)) b!174145))

(assert (= (and b!174145 c!31133) b!174146))

(assert (= (and b!174145 (not c!31133)) b!174147))

(declare-fun m!203021 () Bool)

(assert (=> b!174146 m!203021))

(assert (=> d!52617 d!52989))

(declare-fun d!52991 () Bool)

(assert (=> d!52991 (= (getValueByKey!184 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!86212 () Unit!5311)

(assert (=> d!52991 (= lt!86212 (choose!939 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun e!115016 () Bool)

(assert (=> d!52991 e!115016))

(declare-fun res!82637 () Bool)

(assert (=> d!52991 (=> (not res!82637) (not e!115016))))

(assert (=> d!52991 (= res!82637 (isStrictlySorted!327 lt!85989))))

(assert (=> d!52991 (= (lemmaContainsTupThenGetReturnValue!99 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!86212)))

(declare-fun b!174148 () Bool)

(declare-fun res!82638 () Bool)

(assert (=> b!174148 (=> (not res!82638) (not e!115016))))

(assert (=> b!174148 (= res!82638 (containsKey!188 lt!85989 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174149 () Bool)

(assert (=> b!174149 (= e!115016 (contains!1154 lt!85989 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52991 res!82637) b!174148))

(assert (= (and b!174148 res!82638) b!174149))

(assert (=> d!52991 m!202127))

(declare-fun m!203023 () Bool)

(assert (=> d!52991 m!203023))

(declare-fun m!203025 () Bool)

(assert (=> d!52991 m!203025))

(declare-fun m!203027 () Bool)

(assert (=> b!174148 m!203027))

(declare-fun m!203029 () Bool)

(assert (=> b!174149 m!203029))

(assert (=> d!52617 d!52991))

(declare-fun bm!17648 () Bool)

(declare-fun call!17652 () List!2226)

(declare-fun call!17650 () List!2226)

(assert (=> bm!17648 (= call!17652 call!17650)))

(declare-fun c!31137 () Bool)

(declare-fun e!115020 () List!2226)

(declare-fun b!174150 () Bool)

(declare-fun c!31135 () Bool)

(assert (=> b!174150 (= e!115020 (ite c!31135 (t!7041 (toList!1104 lt!85862)) (ite c!31137 (Cons!2222 (h!2839 (toList!1104 lt!85862)) (t!7041 (toList!1104 lt!85862))) Nil!2223)))))

(declare-fun b!174151 () Bool)

(declare-fun res!82639 () Bool)

(declare-fun e!115021 () Bool)

(assert (=> b!174151 (=> (not res!82639) (not e!115021))))

(declare-fun lt!86213 () List!2226)

(assert (=> b!174151 (= res!82639 (containsKey!188 lt!86213 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174152 () Bool)

(declare-fun e!115018 () List!2226)

(assert (=> b!174152 (= e!115018 call!17650)))

(declare-fun b!174153 () Bool)

(assert (=> b!174153 (= c!31137 (and ((_ is Cons!2222) (toList!1104 lt!85862)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85862))) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(declare-fun e!115019 () List!2226)

(declare-fun e!115017 () List!2226)

(assert (=> b!174153 (= e!115019 e!115017)))

(declare-fun b!174154 () Bool)

(declare-fun call!17651 () List!2226)

(assert (=> b!174154 (= e!115017 call!17651)))

(declare-fun b!174155 () Bool)

(assert (=> b!174155 (= e!115017 call!17651)))

(declare-fun b!174156 () Bool)

(assert (=> b!174156 (= e!115018 e!115019)))

(assert (=> b!174156 (= c!31135 (and ((_ is Cons!2222) (toList!1104 lt!85862)) (= (_1!1628 (h!2839 (toList!1104 lt!85862))) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(declare-fun c!31134 () Bool)

(declare-fun bm!17647 () Bool)

(assert (=> bm!17647 (= call!17650 ($colon$colon!97 e!115020 (ite c!31134 (h!2839 (toList!1104 lt!85862)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))))

(declare-fun c!31136 () Bool)

(assert (=> bm!17647 (= c!31136 c!31134)))

(declare-fun d!52993 () Bool)

(assert (=> d!52993 e!115021))

(declare-fun res!82640 () Bool)

(assert (=> d!52993 (=> (not res!82640) (not e!115021))))

(assert (=> d!52993 (= res!82640 (isStrictlySorted!327 lt!86213))))

(assert (=> d!52993 (= lt!86213 e!115018)))

(assert (=> d!52993 (= c!31134 (and ((_ is Cons!2222) (toList!1104 lt!85862)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85862))) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!52993 (isStrictlySorted!327 (toList!1104 lt!85862))))

(assert (=> d!52993 (= (insertStrictlySorted!101 (toList!1104 lt!85862) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!86213)))

(declare-fun bm!17649 () Bool)

(assert (=> bm!17649 (= call!17651 call!17652)))

(declare-fun b!174157 () Bool)

(assert (=> b!174157 (= e!115019 call!17652)))

(declare-fun b!174158 () Bool)

(assert (=> b!174158 (= e!115020 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85862)) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174159 () Bool)

(assert (=> b!174159 (= e!115021 (contains!1154 lt!86213 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!52993 c!31134) b!174152))

(assert (= (and d!52993 (not c!31134)) b!174156))

(assert (= (and b!174156 c!31135) b!174157))

(assert (= (and b!174156 (not c!31135)) b!174153))

(assert (= (and b!174153 c!31137) b!174154))

(assert (= (and b!174153 (not c!31137)) b!174155))

(assert (= (or b!174154 b!174155) bm!17649))

(assert (= (or b!174157 bm!17649) bm!17648))

(assert (= (or b!174152 bm!17648) bm!17647))

(assert (= (and bm!17647 c!31136) b!174158))

(assert (= (and bm!17647 (not c!31136)) b!174150))

(assert (= (and d!52993 res!82640) b!174151))

(assert (= (and b!174151 res!82639) b!174159))

(declare-fun m!203031 () Bool)

(assert (=> b!174159 m!203031))

(declare-fun m!203033 () Bool)

(assert (=> bm!17647 m!203033))

(declare-fun m!203035 () Bool)

(assert (=> b!174158 m!203035))

(declare-fun m!203037 () Bool)

(assert (=> b!174151 m!203037))

(declare-fun m!203039 () Bool)

(assert (=> d!52993 m!203039))

(declare-fun m!203041 () Bool)

(assert (=> d!52993 m!203041))

(assert (=> d!52617 d!52993))

(declare-fun d!52995 () Bool)

(assert (=> d!52995 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun lt!86214 () Unit!5311)

(assert (=> d!52995 (= lt!86214 (choose!940 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun e!115022 () Bool)

(assert (=> d!52995 e!115022))

(declare-fun res!82641 () Bool)

(assert (=> d!52995 (=> (not res!82641) (not e!115022))))

(assert (=> d!52995 (= res!82641 (isStrictlySorted!327 (toList!1104 lt!85839)))))

(assert (=> d!52995 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86214)))

(declare-fun b!174160 () Bool)

(assert (=> b!174160 (= e!115022 (containsKey!188 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!52995 res!82641) b!174160))

(assert (=> d!52995 m!201775))

(assert (=> d!52995 m!201775))

(assert (=> d!52995 m!202027))

(declare-fun m!203043 () Bool)

(assert (=> d!52995 m!203043))

(declare-fun m!203045 () Bool)

(assert (=> d!52995 m!203045))

(assert (=> b!174160 m!202023))

(assert (=> b!173482 d!52995))

(assert (=> b!173482 d!52775))

(assert (=> b!173482 d!52671))

(assert (=> d!52585 d!52583))

(declare-fun d!52997 () Bool)

(assert (=> d!52997 (= (getValueByKey!184 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (=> d!52997 true))

(declare-fun _$22!535 () Unit!5311)

(assert (=> d!52997 (= (choose!939 lt!85840 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) _$22!535)))

(declare-fun bs!7193 () Bool)

(assert (= bs!7193 d!52997))

(assert (=> bs!7193 m!201769))

(assert (=> d!52585 d!52997))

(declare-fun d!52999 () Bool)

(declare-fun res!82642 () Bool)

(declare-fun e!115023 () Bool)

(assert (=> d!52999 (=> res!82642 e!115023)))

(assert (=> d!52999 (= res!82642 (or ((_ is Nil!2223) lt!85840) ((_ is Nil!2223) (t!7041 lt!85840))))))

(assert (=> d!52999 (= (isStrictlySorted!327 lt!85840) e!115023)))

(declare-fun b!174161 () Bool)

(declare-fun e!115024 () Bool)

(assert (=> b!174161 (= e!115023 e!115024)))

(declare-fun res!82643 () Bool)

(assert (=> b!174161 (=> (not res!82643) (not e!115024))))

(assert (=> b!174161 (= res!82643 (bvslt (_1!1628 (h!2839 lt!85840)) (_1!1628 (h!2839 (t!7041 lt!85840)))))))

(declare-fun b!174162 () Bool)

(assert (=> b!174162 (= e!115024 (isStrictlySorted!327 (t!7041 lt!85840)))))

(assert (= (and d!52999 (not res!82642)) b!174161))

(assert (= (and b!174161 res!82643) b!174162))

(declare-fun m!203047 () Bool)

(assert (=> b!174162 m!203047))

(assert (=> d!52585 d!52999))

(assert (=> d!52561 d!52541))

(declare-fun d!53001 () Bool)

(declare-fun e!115025 () Bool)

(assert (=> d!53001 e!115025))

(declare-fun res!82644 () Bool)

(assert (=> d!53001 (=> res!82644 e!115025)))

(declare-fun lt!86215 () Bool)

(assert (=> d!53001 (= res!82644 (not lt!86215))))

(declare-fun lt!86217 () Bool)

(assert (=> d!53001 (= lt!86215 lt!86217)))

(declare-fun lt!86218 () Unit!5311)

(declare-fun e!115026 () Unit!5311)

(assert (=> d!53001 (= lt!86218 e!115026)))

(declare-fun c!31138 () Bool)

(assert (=> d!53001 (= c!31138 lt!86217)))

(assert (=> d!53001 (= lt!86217 (containsKey!188 (toList!1104 lt!85814) lt!85818))))

(assert (=> d!53001 (= (contains!1153 lt!85814 lt!85818) lt!86215)))

(declare-fun b!174163 () Bool)

(declare-fun lt!86216 () Unit!5311)

(assert (=> b!174163 (= e!115026 lt!86216)))

(assert (=> b!174163 (= lt!86216 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85814) lt!85818))))

(assert (=> b!174163 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85814) lt!85818))))

(declare-fun b!174164 () Bool)

(declare-fun Unit!5347 () Unit!5311)

(assert (=> b!174164 (= e!115026 Unit!5347)))

(declare-fun b!174165 () Bool)

(assert (=> b!174165 (= e!115025 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85814) lt!85818)))))

(assert (= (and d!53001 c!31138) b!174163))

(assert (= (and d!53001 (not c!31138)) b!174164))

(assert (= (and d!53001 (not res!82644)) b!174165))

(declare-fun m!203049 () Bool)

(assert (=> d!53001 m!203049))

(declare-fun m!203051 () Bool)

(assert (=> b!174163 m!203051))

(assert (=> b!174163 m!201899))

(assert (=> b!174163 m!201899))

(declare-fun m!203053 () Bool)

(assert (=> b!174163 m!203053))

(assert (=> b!174165 m!201899))

(assert (=> b!174165 m!201899))

(assert (=> b!174165 m!203053))

(assert (=> d!52561 d!53001))

(assert (=> d!52561 d!52563))

(declare-fun d!53003 () Bool)

(assert (=> d!53003 (= (apply!130 (+!241 lt!85814 (tuple2!3237 lt!85824 (minValue!3441 thiss!1248))) lt!85818) (apply!130 lt!85814 lt!85818))))

(assert (=> d!53003 true))

(declare-fun _$34!1053 () Unit!5311)

(assert (=> d!53003 (= (choose!937 lt!85814 lt!85824 (minValue!3441 thiss!1248) lt!85818) _$34!1053)))

(declare-fun bs!7194 () Bool)

(assert (= bs!7194 d!53003))

(assert (=> bs!7194 m!201737))

(assert (=> bs!7194 m!201737))

(assert (=> bs!7194 m!201739))

(assert (=> bs!7194 m!201735))

(assert (=> d!52561 d!53003))

(assert (=> d!52561 d!52547))

(declare-fun d!53005 () Bool)

(declare-fun e!115027 () Bool)

(assert (=> d!53005 e!115027))

(declare-fun res!82645 () Bool)

(assert (=> d!53005 (=> res!82645 e!115027)))

(declare-fun lt!86219 () Bool)

(assert (=> d!53005 (= res!82645 (not lt!86219))))

(declare-fun lt!86221 () Bool)

(assert (=> d!53005 (= lt!86219 lt!86221)))

(declare-fun lt!86222 () Unit!5311)

(declare-fun e!115028 () Unit!5311)

(assert (=> d!53005 (= lt!86222 e!115028)))

(declare-fun c!31139 () Bool)

(assert (=> d!53005 (= c!31139 lt!86221)))

(assert (=> d!53005 (= lt!86221 (containsKey!188 (toList!1104 lt!85828) lt!85817))))

(assert (=> d!53005 (= (contains!1153 lt!85828 lt!85817) lt!86219)))

(declare-fun b!174166 () Bool)

(declare-fun lt!86220 () Unit!5311)

(assert (=> b!174166 (= e!115028 lt!86220)))

(assert (=> b!174166 (= lt!86220 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85828) lt!85817))))

(assert (=> b!174166 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85828) lt!85817))))

(declare-fun b!174167 () Bool)

(declare-fun Unit!5348 () Unit!5311)

(assert (=> b!174167 (= e!115028 Unit!5348)))

(declare-fun b!174168 () Bool)

(assert (=> b!174168 (= e!115027 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85828) lt!85817)))))

(assert (= (and d!53005 c!31139) b!174166))

(assert (= (and d!53005 (not c!31139)) b!174167))

(assert (= (and d!53005 (not res!82645)) b!174168))

(declare-fun m!203055 () Bool)

(assert (=> d!53005 m!203055))

(declare-fun m!203057 () Bool)

(assert (=> b!174166 m!203057))

(assert (=> b!174166 m!201943))

(assert (=> b!174166 m!201943))

(declare-fun m!203059 () Bool)

(assert (=> b!174166 m!203059))

(assert (=> b!174168 m!201943))

(assert (=> b!174168 m!201943))

(assert (=> b!174168 m!203059))

(assert (=> d!52549 d!53005))

(assert (=> d!52549 d!52559))

(declare-fun d!53007 () Bool)

(assert (=> d!53007 (= (apply!130 (+!241 lt!85828 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) lt!85817) (apply!130 lt!85828 lt!85817))))

(assert (=> d!53007 true))

(declare-fun _$34!1054 () Unit!5311)

(assert (=> d!53007 (= (choose!937 lt!85828 lt!85821 (zeroValue!3439 thiss!1248) lt!85817) _$34!1054)))

(declare-fun bs!7195 () Bool)

(assert (= bs!7195 d!53007))

(assert (=> bs!7195 m!201741))

(assert (=> bs!7195 m!201741))

(assert (=> bs!7195 m!201743))

(assert (=> bs!7195 m!201733))

(assert (=> d!52549 d!53007))

(assert (=> d!52549 d!52569))

(assert (=> d!52549 d!52571))

(declare-fun d!53009 () Bool)

(declare-fun e!115029 () Bool)

(assert (=> d!53009 e!115029))

(declare-fun res!82646 () Bool)

(assert (=> d!53009 (=> (not res!82646) (not e!115029))))

(declare-fun lt!86224 () ListLongMap!2177)

(assert (=> d!53009 (= res!82646 (contains!1153 lt!86224 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(declare-fun lt!86225 () List!2226)

(assert (=> d!53009 (= lt!86224 (ListLongMap!2178 lt!86225))))

(declare-fun lt!86226 () Unit!5311)

(declare-fun lt!86223 () Unit!5311)

(assert (=> d!53009 (= lt!86226 lt!86223)))

(assert (=> d!53009 (= (getValueByKey!184 lt!86225 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(assert (=> d!53009 (= lt!86223 (lemmaContainsTupThenGetReturnValue!99 lt!86225 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(assert (=> d!53009 (= lt!86225 (insertStrictlySorted!101 (toList!1104 call!17616) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(assert (=> d!53009 (= (+!241 call!17616 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))) lt!86224)))

(declare-fun b!174169 () Bool)

(declare-fun res!82647 () Bool)

(assert (=> b!174169 (=> (not res!82647) (not e!115029))))

(assert (=> b!174169 (= res!82647 (= (getValueByKey!184 (toList!1104 lt!86224) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))))

(declare-fun b!174170 () Bool)

(assert (=> b!174170 (= e!115029 (contains!1154 (toList!1104 lt!86224) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))

(assert (= (and d!53009 res!82646) b!174169))

(assert (= (and b!174169 res!82647) b!174170))

(declare-fun m!203061 () Bool)

(assert (=> d!53009 m!203061))

(declare-fun m!203063 () Bool)

(assert (=> d!53009 m!203063))

(declare-fun m!203065 () Bool)

(assert (=> d!53009 m!203065))

(declare-fun m!203067 () Bool)

(assert (=> d!53009 m!203067))

(declare-fun m!203069 () Bool)

(assert (=> b!174169 m!203069))

(declare-fun m!203071 () Bool)

(assert (=> b!174170 m!203071))

(assert (=> b!173694 d!53009))

(assert (=> b!173655 d!52693))

(declare-fun d!53011 () Bool)

(declare-fun e!115030 () Bool)

(assert (=> d!53011 e!115030))

(declare-fun res!82648 () Bool)

(assert (=> d!53011 (=> res!82648 e!115030)))

(declare-fun lt!86227 () Bool)

(assert (=> d!53011 (= res!82648 (not lt!86227))))

(declare-fun lt!86229 () Bool)

(assert (=> d!53011 (= lt!86227 lt!86229)))

(declare-fun lt!86230 () Unit!5311)

(declare-fun e!115031 () Unit!5311)

(assert (=> d!53011 (= lt!86230 e!115031)))

(declare-fun c!31140 () Bool)

(assert (=> d!53011 (= c!31140 lt!86229)))

(assert (=> d!53011 (= lt!86229 (containsKey!188 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(assert (=> d!53011 (= (contains!1153 lt!85933 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!86227)))

(declare-fun b!174171 () Bool)

(declare-fun lt!86228 () Unit!5311)

(assert (=> b!174171 (= e!115031 lt!86228)))

(assert (=> b!174171 (= lt!86228 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(assert (=> b!174171 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174172 () Bool)

(declare-fun Unit!5349 () Unit!5311)

(assert (=> b!174172 (= e!115031 Unit!5349)))

(declare-fun b!174173 () Bool)

(assert (=> b!174173 (= e!115030 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!53011 c!31140) b!174171))

(assert (= (and d!53011 (not c!31140)) b!174172))

(assert (= (and d!53011 (not res!82648)) b!174173))

(declare-fun m!203073 () Bool)

(assert (=> d!53011 m!203073))

(declare-fun m!203075 () Bool)

(assert (=> b!174171 m!203075))

(assert (=> b!174171 m!201987))

(assert (=> b!174171 m!201987))

(declare-fun m!203077 () Bool)

(assert (=> b!174171 m!203077))

(assert (=> b!174173 m!201987))

(assert (=> b!174173 m!201987))

(assert (=> b!174173 m!203077))

(assert (=> d!52569 d!53011))

(declare-fun b!174174 () Bool)

(declare-fun e!115032 () Option!190)

(assert (=> b!174174 (= e!115032 (Some!189 (_2!1628 (h!2839 lt!85934))))))

(declare-fun b!174177 () Bool)

(declare-fun e!115033 () Option!190)

(assert (=> b!174177 (= e!115033 None!188)))

(declare-fun b!174175 () Bool)

(assert (=> b!174175 (= e!115032 e!115033)))

(declare-fun c!31142 () Bool)

(assert (=> b!174175 (= c!31142 (and ((_ is Cons!2222) lt!85934) (not (= (_1!1628 (h!2839 lt!85934)) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174176 () Bool)

(assert (=> b!174176 (= e!115033 (getValueByKey!184 (t!7041 lt!85934) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31141 () Bool)

(declare-fun d!53013 () Bool)

(assert (=> d!53013 (= c!31141 (and ((_ is Cons!2222) lt!85934) (= (_1!1628 (h!2839 lt!85934)) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53013 (= (getValueByKey!184 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) e!115032)))

(assert (= (and d!53013 c!31141) b!174174))

(assert (= (and d!53013 (not c!31141)) b!174175))

(assert (= (and b!174175 c!31142) b!174176))

(assert (= (and b!174175 (not c!31142)) b!174177))

(declare-fun m!203079 () Bool)

(assert (=> b!174176 m!203079))

(assert (=> d!52569 d!53013))

(declare-fun d!53015 () Bool)

(assert (=> d!53015 (= (getValueByKey!184 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun lt!86231 () Unit!5311)

(assert (=> d!53015 (= lt!86231 (choose!939 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun e!115034 () Bool)

(assert (=> d!53015 e!115034))

(declare-fun res!82649 () Bool)

(assert (=> d!53015 (=> (not res!82649) (not e!115034))))

(assert (=> d!53015 (= res!82649 (isStrictlySorted!327 lt!85934))))

(assert (=> d!53015 (= (lemmaContainsTupThenGetReturnValue!99 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!86231)))

(declare-fun b!174178 () Bool)

(declare-fun res!82650 () Bool)

(assert (=> b!174178 (=> (not res!82650) (not e!115034))))

(assert (=> b!174178 (= res!82650 (containsKey!188 lt!85934 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174179 () Bool)

(assert (=> b!174179 (= e!115034 (contains!1154 lt!85934 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!53015 res!82649) b!174178))

(assert (= (and b!174178 res!82650) b!174179))

(assert (=> d!53015 m!201981))

(declare-fun m!203081 () Bool)

(assert (=> d!53015 m!203081))

(declare-fun m!203083 () Bool)

(assert (=> d!53015 m!203083))

(declare-fun m!203085 () Bool)

(assert (=> b!174178 m!203085))

(declare-fun m!203087 () Bool)

(assert (=> b!174179 m!203087))

(assert (=> d!52569 d!53015))

(declare-fun bm!17651 () Bool)

(declare-fun call!17655 () List!2226)

(declare-fun call!17653 () List!2226)

(assert (=> bm!17651 (= call!17655 call!17653)))

(declare-fun c!31146 () Bool)

(declare-fun e!115038 () List!2226)

(declare-fun c!31144 () Bool)

(declare-fun b!174180 () Bool)

(assert (=> b!174180 (= e!115038 (ite c!31144 (t!7041 (toList!1104 lt!85828)) (ite c!31146 (Cons!2222 (h!2839 (toList!1104 lt!85828)) (t!7041 (toList!1104 lt!85828))) Nil!2223)))))

(declare-fun b!174181 () Bool)

(declare-fun res!82651 () Bool)

(declare-fun e!115039 () Bool)

(assert (=> b!174181 (=> (not res!82651) (not e!115039))))

(declare-fun lt!86232 () List!2226)

(assert (=> b!174181 (= res!82651 (containsKey!188 lt!86232 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174182 () Bool)

(declare-fun e!115036 () List!2226)

(assert (=> b!174182 (= e!115036 call!17653)))

(declare-fun b!174183 () Bool)

(assert (=> b!174183 (= c!31146 (and ((_ is Cons!2222) (toList!1104 lt!85828)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85828))) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(declare-fun e!115037 () List!2226)

(declare-fun e!115035 () List!2226)

(assert (=> b!174183 (= e!115037 e!115035)))

(declare-fun b!174184 () Bool)

(declare-fun call!17654 () List!2226)

(assert (=> b!174184 (= e!115035 call!17654)))

(declare-fun b!174185 () Bool)

(assert (=> b!174185 (= e!115035 call!17654)))

(declare-fun b!174186 () Bool)

(assert (=> b!174186 (= e!115036 e!115037)))

(assert (=> b!174186 (= c!31144 (and ((_ is Cons!2222) (toList!1104 lt!85828)) (= (_1!1628 (h!2839 (toList!1104 lt!85828))) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(declare-fun c!31143 () Bool)

(declare-fun bm!17650 () Bool)

(assert (=> bm!17650 (= call!17653 ($colon$colon!97 e!115038 (ite c!31143 (h!2839 (toList!1104 lt!85828)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))))

(declare-fun c!31145 () Bool)

(assert (=> bm!17650 (= c!31145 c!31143)))

(declare-fun d!53017 () Bool)

(assert (=> d!53017 e!115039))

(declare-fun res!82652 () Bool)

(assert (=> d!53017 (=> (not res!82652) (not e!115039))))

(assert (=> d!53017 (= res!82652 (isStrictlySorted!327 lt!86232))))

(assert (=> d!53017 (= lt!86232 e!115036)))

(assert (=> d!53017 (= c!31143 (and ((_ is Cons!2222) (toList!1104 lt!85828)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85828))) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53017 (isStrictlySorted!327 (toList!1104 lt!85828))))

(assert (=> d!53017 (= (insertStrictlySorted!101 (toList!1104 lt!85828) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) lt!86232)))

(declare-fun bm!17652 () Bool)

(assert (=> bm!17652 (= call!17654 call!17655)))

(declare-fun b!174187 () Bool)

(assert (=> b!174187 (= e!115037 call!17655)))

(declare-fun b!174188 () Bool)

(assert (=> b!174188 (= e!115038 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85828)) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun b!174189 () Bool)

(assert (=> b!174189 (= e!115039 (contains!1154 lt!86232 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))) (_2!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (= (and d!53017 c!31143) b!174182))

(assert (= (and d!53017 (not c!31143)) b!174186))

(assert (= (and b!174186 c!31144) b!174187))

(assert (= (and b!174186 (not c!31144)) b!174183))

(assert (= (and b!174183 c!31146) b!174184))

(assert (= (and b!174183 (not c!31146)) b!174185))

(assert (= (or b!174184 b!174185) bm!17652))

(assert (= (or b!174187 bm!17652) bm!17651))

(assert (= (or b!174182 bm!17651) bm!17650))

(assert (= (and bm!17650 c!31145) b!174188))

(assert (= (and bm!17650 (not c!31145)) b!174180))

(assert (= (and d!53017 res!82652) b!174181))

(assert (= (and b!174181 res!82651) b!174189))

(declare-fun m!203089 () Bool)

(assert (=> b!174189 m!203089))

(declare-fun m!203091 () Bool)

(assert (=> bm!17650 m!203091))

(declare-fun m!203093 () Bool)

(assert (=> b!174188 m!203093))

(declare-fun m!203095 () Bool)

(assert (=> b!174181 m!203095))

(declare-fun m!203097 () Bool)

(assert (=> d!53017 m!203097))

(declare-fun m!203099 () Bool)

(assert (=> d!53017 m!203099))

(assert (=> d!52569 d!53017))

(declare-fun b!174190 () Bool)

(declare-fun e!115040 () Option!190)

(assert (=> b!174190 (= e!115040 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85925)))))))

(declare-fun b!174193 () Bool)

(declare-fun e!115041 () Option!190)

(assert (=> b!174193 (= e!115041 None!188)))

(declare-fun b!174191 () Bool)

(assert (=> b!174191 (= e!115040 e!115041)))

(declare-fun c!31148 () Bool)

(assert (=> b!174191 (= c!31148 (and ((_ is Cons!2222) (toList!1104 lt!85925)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85925))) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))))

(declare-fun b!174192 () Bool)

(assert (=> b!174192 (= e!115041 (getValueByKey!184 (t!7041 (toList!1104 lt!85925)) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun c!31147 () Bool)

(declare-fun d!53019 () Bool)

(assert (=> d!53019 (= c!31147 (and ((_ is Cons!2222) (toList!1104 lt!85925)) (= (_1!1628 (h!2839 (toList!1104 lt!85925))) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (=> d!53019 (= (getValueByKey!184 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) e!115040)))

(assert (= (and d!53019 c!31147) b!174190))

(assert (= (and d!53019 (not c!31147)) b!174191))

(assert (= (and b!174191 c!31148) b!174192))

(assert (= (and b!174191 (not c!31148)) b!174193))

(declare-fun m!203101 () Bool)

(assert (=> b!174192 m!203101))

(assert (=> b!173468 d!53019))

(declare-fun bm!17653 () Bool)

(declare-fun call!17656 () (_ BitVec 32))

(assert (=> bm!17653 (= call!17656 (arrayCountValidKeys!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(declare-fun b!174194 () Bool)

(declare-fun e!115043 () (_ BitVec 32))

(declare-fun e!115042 () (_ BitVec 32))

(assert (=> b!174194 (= e!115043 e!115042)))

(declare-fun c!31150 () Bool)

(assert (=> b!174194 (= c!31150 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!174195 () Bool)

(assert (=> b!174195 (= e!115043 #b00000000000000000000000000000000)))

(declare-fun d!53021 () Bool)

(declare-fun lt!86233 () (_ BitVec 32))

(assert (=> d!53021 (and (bvsge lt!86233 #b00000000000000000000000000000000) (bvsle lt!86233 (bvsub (size!3765 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!53021 (= lt!86233 e!115043)))

(declare-fun c!31149 () Bool)

(assert (=> d!53021 (= c!31149 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!53021 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!3765 (_keys!5439 thiss!1248)) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!53021 (= (arrayCountValidKeys!0 (_keys!5439 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))) lt!86233)))

(declare-fun b!174196 () Bool)

(assert (=> b!174196 (= e!115042 (bvadd #b00000000000000000000000000000001 call!17656))))

(declare-fun b!174197 () Bool)

(assert (=> b!174197 (= e!115042 call!17656)))

(assert (= (and d!53021 c!31149) b!174195))

(assert (= (and d!53021 (not c!31149)) b!174194))

(assert (= (and b!174194 c!31150) b!174196))

(assert (= (and b!174194 (not c!31150)) b!174197))

(assert (= (or b!174196 b!174197) bm!17653))

(declare-fun m!203103 () Bool)

(assert (=> bm!17653 m!203103))

(assert (=> b!174194 m!202435))

(assert (=> b!174194 m!202435))

(assert (=> b!174194 m!202445))

(assert (=> bm!17606 d!53021))

(assert (=> b!173459 d!52575))

(declare-fun d!53023 () Bool)

(declare-fun lt!86234 () Bool)

(assert (=> d!53023 (= lt!86234 (select (content!148 (t!7041 (toList!1104 lt!85877))) (tuple2!3237 key!828 v!309)))))

(declare-fun e!115045 () Bool)

(assert (=> d!53023 (= lt!86234 e!115045)))

(declare-fun res!82654 () Bool)

(assert (=> d!53023 (=> (not res!82654) (not e!115045))))

(assert (=> d!53023 (= res!82654 ((_ is Cons!2222) (t!7041 (toList!1104 lt!85877))))))

(assert (=> d!53023 (= (contains!1154 (t!7041 (toList!1104 lt!85877)) (tuple2!3237 key!828 v!309)) lt!86234)))

(declare-fun b!174198 () Bool)

(declare-fun e!115044 () Bool)

(assert (=> b!174198 (= e!115045 e!115044)))

(declare-fun res!82653 () Bool)

(assert (=> b!174198 (=> res!82653 e!115044)))

(assert (=> b!174198 (= res!82653 (= (h!2839 (t!7041 (toList!1104 lt!85877))) (tuple2!3237 key!828 v!309)))))

(declare-fun b!174199 () Bool)

(assert (=> b!174199 (= e!115044 (contains!1154 (t!7041 (t!7041 (toList!1104 lt!85877))) (tuple2!3237 key!828 v!309)))))

(assert (= (and d!53023 res!82654) b!174198))

(assert (= (and b!174198 (not res!82653)) b!174199))

(declare-fun m!203105 () Bool)

(assert (=> d!53023 m!203105))

(declare-fun m!203107 () Bool)

(assert (=> d!53023 m!203107))

(declare-fun m!203109 () Bool)

(assert (=> b!174199 m!203109))

(assert (=> b!173411 d!53023))

(declare-fun d!53025 () Bool)

(assert (=> d!53025 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun lt!86235 () Unit!5311)

(assert (=> d!53025 (= lt!86235 (choose!940 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!115046 () Bool)

(assert (=> d!53025 e!115046))

(declare-fun res!82655 () Bool)

(assert (=> d!53025 (=> (not res!82655) (not e!115046))))

(assert (=> d!53025 (= res!82655 (isStrictlySorted!327 (toList!1104 lt!85813)))))

(assert (=> d!53025 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86235)))

(declare-fun b!174200 () Bool)

(assert (=> b!174200 (= e!115046 (containsKey!188 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53025 res!82655) b!174200))

(assert (=> d!53025 m!201715))

(assert (=> d!53025 m!202019))

(assert (=> d!53025 m!202019))

(assert (=> d!53025 m!202021))

(assert (=> d!53025 m!201715))

(declare-fun m!203111 () Bool)

(assert (=> d!53025 m!203111))

(declare-fun m!203113 () Bool)

(assert (=> d!53025 m!203113))

(assert (=> b!174200 m!201715))

(assert (=> b!174200 m!202015))

(assert (=> b!173479 d!53025))

(assert (=> b!173479 d!52763))

(assert (=> b!173479 d!52765))

(declare-fun d!53027 () Bool)

(assert (=> d!53027 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85862) lt!85851)) (v!3952 (getValueByKey!184 (toList!1104 lt!85862) lt!85851)))))

(assert (=> d!52637 d!53027))

(declare-fun b!174201 () Bool)

(declare-fun e!115047 () Option!190)

(assert (=> b!174201 (= e!115047 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85862)))))))

(declare-fun b!174204 () Bool)

(declare-fun e!115048 () Option!190)

(assert (=> b!174204 (= e!115048 None!188)))

(declare-fun b!174202 () Bool)

(assert (=> b!174202 (= e!115047 e!115048)))

(declare-fun c!31152 () Bool)

(assert (=> b!174202 (= c!31152 (and ((_ is Cons!2222) (toList!1104 lt!85862)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85862))) lt!85851))))))

(declare-fun b!174203 () Bool)

(assert (=> b!174203 (= e!115048 (getValueByKey!184 (t!7041 (toList!1104 lt!85862)) lt!85851))))

(declare-fun d!53029 () Bool)

(declare-fun c!31151 () Bool)

(assert (=> d!53029 (= c!31151 (and ((_ is Cons!2222) (toList!1104 lt!85862)) (= (_1!1628 (h!2839 (toList!1104 lt!85862))) lt!85851)))))

(assert (=> d!53029 (= (getValueByKey!184 (toList!1104 lt!85862) lt!85851) e!115047)))

(assert (= (and d!53029 c!31151) b!174201))

(assert (= (and d!53029 (not c!31151)) b!174202))

(assert (= (and b!174202 c!31152) b!174203))

(assert (= (and b!174202 (not c!31152)) b!174204))

(declare-fun m!203115 () Bool)

(assert (=> b!174203 m!203115))

(assert (=> d!52637 d!53029))

(declare-fun d!53031 () Bool)

(declare-fun c!31155 () Bool)

(assert (=> d!53031 (= c!31155 ((_ is Nil!2223) (toList!1104 lt!85839)))))

(declare-fun e!115051 () (InoxSet tuple2!3236))

(assert (=> d!53031 (= (content!148 (toList!1104 lt!85839)) e!115051)))

(declare-fun b!174209 () Bool)

(assert (=> b!174209 (= e!115051 ((as const (Array tuple2!3236 Bool)) false))))

(declare-fun b!174210 () Bool)

(assert (=> b!174210 (= e!115051 ((_ map or) (store ((as const (Array tuple2!3236 Bool)) false) (h!2839 (toList!1104 lt!85839)) true) (content!148 (t!7041 (toList!1104 lt!85839)))))))

(assert (= (and d!53031 c!31155) b!174209))

(assert (= (and d!53031 (not c!31155)) b!174210))

(declare-fun m!203117 () Bool)

(assert (=> b!174210 m!203117))

(declare-fun m!203119 () Bool)

(assert (=> b!174210 m!203119))

(assert (=> d!52659 d!53031))

(declare-fun d!53033 () Bool)

(declare-fun e!115052 () Bool)

(assert (=> d!53033 e!115052))

(declare-fun res!82656 () Bool)

(assert (=> d!53033 (=> res!82656 e!115052)))

(declare-fun lt!86236 () Bool)

(assert (=> d!53033 (= res!82656 (not lt!86236))))

(declare-fun lt!86238 () Bool)

(assert (=> d!53033 (= lt!86236 lt!86238)))

(declare-fun lt!86239 () Unit!5311)

(declare-fun e!115053 () Unit!5311)

(assert (=> d!53033 (= lt!86239 e!115053)))

(declare-fun c!31156 () Bool)

(assert (=> d!53033 (= c!31156 lt!86238)))

(assert (=> d!53033 (= lt!86238 (containsKey!188 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(assert (=> d!53033 (= (contains!1153 lt!85925 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!86236)))

(declare-fun b!174211 () Bool)

(declare-fun lt!86237 () Unit!5311)

(assert (=> b!174211 (= e!115053 lt!86237)))

(assert (=> b!174211 (= lt!86237 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(assert (=> b!174211 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun b!174212 () Bool)

(declare-fun Unit!5350 () Unit!5311)

(assert (=> b!174212 (= e!115053 Unit!5350)))

(declare-fun b!174213 () Bool)

(assert (=> b!174213 (= e!115052 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85925) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (= (and d!53033 c!31156) b!174211))

(assert (= (and d!53033 (not c!31156)) b!174212))

(assert (= (and d!53033 (not res!82656)) b!174213))

(declare-fun m!203121 () Bool)

(assert (=> d!53033 m!203121))

(declare-fun m!203123 () Bool)

(assert (=> b!174211 m!203123))

(assert (=> b!174211 m!201963))

(assert (=> b!174211 m!201963))

(declare-fun m!203125 () Bool)

(assert (=> b!174211 m!203125))

(assert (=> b!174213 m!201963))

(assert (=> b!174213 m!201963))

(assert (=> b!174213 m!203125))

(assert (=> d!52565 d!53033))

(declare-fun b!174214 () Bool)

(declare-fun e!115054 () Option!190)

(assert (=> b!174214 (= e!115054 (Some!189 (_2!1628 (h!2839 lt!85926))))))

(declare-fun b!174217 () Bool)

(declare-fun e!115055 () Option!190)

(assert (=> b!174217 (= e!115055 None!188)))

(declare-fun b!174215 () Bool)

(assert (=> b!174215 (= e!115054 e!115055)))

(declare-fun c!31158 () Bool)

(assert (=> b!174215 (= c!31158 (and ((_ is Cons!2222) lt!85926) (not (= (_1!1628 (h!2839 lt!85926)) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))))

(declare-fun b!174216 () Bool)

(assert (=> b!174216 (= e!115055 (getValueByKey!184 (t!7041 lt!85926) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun d!53035 () Bool)

(declare-fun c!31157 () Bool)

(assert (=> d!53035 (= c!31157 (and ((_ is Cons!2222) lt!85926) (= (_1!1628 (h!2839 lt!85926)) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (=> d!53035 (= (getValueByKey!184 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) e!115054)))

(assert (= (and d!53035 c!31157) b!174214))

(assert (= (and d!53035 (not c!31157)) b!174215))

(assert (= (and b!174215 c!31158) b!174216))

(assert (= (and b!174215 (not c!31158)) b!174217))

(declare-fun m!203127 () Bool)

(assert (=> b!174216 m!203127))

(assert (=> d!52565 d!53035))

(declare-fun d!53037 () Bool)

(assert (=> d!53037 (= (getValueByKey!184 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) (Some!189 (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun lt!86240 () Unit!5311)

(assert (=> d!53037 (= lt!86240 (choose!939 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun e!115056 () Bool)

(assert (=> d!53037 e!115056))

(declare-fun res!82657 () Bool)

(assert (=> d!53037 (=> (not res!82657) (not e!115056))))

(assert (=> d!53037 (= res!82657 (isStrictlySorted!327 lt!85926))))

(assert (=> d!53037 (= (lemmaContainsTupThenGetReturnValue!99 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!86240)))

(declare-fun b!174218 () Bool)

(declare-fun res!82658 () Bool)

(assert (=> b!174218 (=> (not res!82658) (not e!115056))))

(assert (=> b!174218 (= res!82658 (containsKey!188 lt!85926 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun b!174219 () Bool)

(assert (=> b!174219 (= e!115056 (contains!1154 lt!85926 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (= (and d!53037 res!82657) b!174218))

(assert (= (and b!174218 res!82658) b!174219))

(assert (=> d!53037 m!201957))

(declare-fun m!203129 () Bool)

(assert (=> d!53037 m!203129))

(declare-fun m!203131 () Bool)

(assert (=> d!53037 m!203131))

(declare-fun m!203133 () Bool)

(assert (=> b!174218 m!203133))

(declare-fun m!203135 () Bool)

(assert (=> b!174219 m!203135))

(assert (=> d!52565 d!53037))

(declare-fun bm!17655 () Bool)

(declare-fun call!17659 () List!2226)

(declare-fun call!17657 () List!2226)

(assert (=> bm!17655 (= call!17659 call!17657)))

(declare-fun c!31160 () Bool)

(declare-fun b!174220 () Bool)

(declare-fun e!115060 () List!2226)

(declare-fun c!31162 () Bool)

(assert (=> b!174220 (= e!115060 (ite c!31160 (t!7041 (toList!1104 lt!85822)) (ite c!31162 (Cons!2222 (h!2839 (toList!1104 lt!85822)) (t!7041 (toList!1104 lt!85822))) Nil!2223)))))

(declare-fun b!174221 () Bool)

(declare-fun res!82659 () Bool)

(declare-fun e!115061 () Bool)

(assert (=> b!174221 (=> (not res!82659) (not e!115061))))

(declare-fun lt!86241 () List!2226)

(assert (=> b!174221 (= res!82659 (containsKey!188 lt!86241 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun b!174222 () Bool)

(declare-fun e!115058 () List!2226)

(assert (=> b!174222 (= e!115058 call!17657)))

(declare-fun b!174223 () Bool)

(assert (=> b!174223 (= c!31162 (and ((_ is Cons!2222) (toList!1104 lt!85822)) (bvsgt (_1!1628 (h!2839 (toList!1104 lt!85822))) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(declare-fun e!115059 () List!2226)

(declare-fun e!115057 () List!2226)

(assert (=> b!174223 (= e!115059 e!115057)))

(declare-fun b!174224 () Bool)

(declare-fun call!17658 () List!2226)

(assert (=> b!174224 (= e!115057 call!17658)))

(declare-fun b!174225 () Bool)

(assert (=> b!174225 (= e!115057 call!17658)))

(declare-fun b!174226 () Bool)

(assert (=> b!174226 (= e!115058 e!115059)))

(assert (=> b!174226 (= c!31160 (and ((_ is Cons!2222) (toList!1104 lt!85822)) (= (_1!1628 (h!2839 (toList!1104 lt!85822))) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(declare-fun bm!17654 () Bool)

(declare-fun c!31159 () Bool)

(assert (=> bm!17654 (= call!17657 ($colon$colon!97 e!115060 (ite c!31159 (h!2839 (toList!1104 lt!85822)) (tuple2!3237 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))))

(declare-fun c!31161 () Bool)

(assert (=> bm!17654 (= c!31161 c!31159)))

(declare-fun d!53039 () Bool)

(assert (=> d!53039 e!115061))

(declare-fun res!82660 () Bool)

(assert (=> d!53039 (=> (not res!82660) (not e!115061))))

(assert (=> d!53039 (= res!82660 (isStrictlySorted!327 lt!86241))))

(assert (=> d!53039 (= lt!86241 e!115058)))

(assert (=> d!53039 (= c!31159 (and ((_ is Cons!2222) (toList!1104 lt!85822)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85822))) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (=> d!53039 (isStrictlySorted!327 (toList!1104 lt!85822))))

(assert (=> d!53039 (= (insertStrictlySorted!101 (toList!1104 lt!85822) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))) lt!86241)))

(declare-fun bm!17656 () Bool)

(assert (=> bm!17656 (= call!17658 call!17659)))

(declare-fun b!174227 () Bool)

(assert (=> b!174227 (= e!115059 call!17659)))

(declare-fun b!174228 () Bool)

(assert (=> b!174228 (= e!115060 (insertStrictlySorted!101 (t!7041 (toList!1104 lt!85822)) (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248)))))))

(declare-fun b!174229 () Bool)

(assert (=> b!174229 (= e!115061 (contains!1154 lt!86241 (tuple2!3237 (_1!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) (_2!1628 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))))))))

(assert (= (and d!53039 c!31159) b!174222))

(assert (= (and d!53039 (not c!31159)) b!174226))

(assert (= (and b!174226 c!31160) b!174227))

(assert (= (and b!174226 (not c!31160)) b!174223))

(assert (= (and b!174223 c!31162) b!174224))

(assert (= (and b!174223 (not c!31162)) b!174225))

(assert (= (or b!174224 b!174225) bm!17656))

(assert (= (or b!174227 bm!17656) bm!17655))

(assert (= (or b!174222 bm!17655) bm!17654))

(assert (= (and bm!17654 c!31161) b!174228))

(assert (= (and bm!17654 (not c!31161)) b!174220))

(assert (= (and d!53039 res!82660) b!174221))

(assert (= (and b!174221 res!82659) b!174229))

(declare-fun m!203137 () Bool)

(assert (=> b!174229 m!203137))

(declare-fun m!203139 () Bool)

(assert (=> bm!17654 m!203139))

(declare-fun m!203141 () Bool)

(assert (=> b!174228 m!203141))

(declare-fun m!203143 () Bool)

(assert (=> b!174221 m!203143))

(declare-fun m!203145 () Bool)

(assert (=> d!53039 m!203145))

(declare-fun m!203147 () Bool)

(assert (=> d!53039 m!203147))

(assert (=> d!52565 d!53039))

(declare-fun d!53041 () Bool)

(assert (=> d!53041 (= (apply!130 (+!241 lt!86055 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) lt!86044) (apply!130 lt!86055 lt!86044))))

(declare-fun lt!86242 () Unit!5311)

(assert (=> d!53041 (= lt!86242 (choose!937 lt!86055 lt!86048 (zeroValue!3439 lt!85751) lt!86044))))

(declare-fun e!115062 () Bool)

(assert (=> d!53041 e!115062))

(declare-fun res!82661 () Bool)

(assert (=> d!53041 (=> (not res!82661) (not e!115062))))

(assert (=> d!53041 (= res!82661 (contains!1153 lt!86055 lt!86044))))

(assert (=> d!53041 (= (addApplyDifferent!106 lt!86055 lt!86048 (zeroValue!3439 lt!85751) lt!86044) lt!86242)))

(declare-fun b!174230 () Bool)

(assert (=> b!174230 (= e!115062 (not (= lt!86044 lt!86048)))))

(assert (= (and d!53041 res!82661) b!174230))

(assert (=> d!53041 m!202323))

(assert (=> d!53041 m!202331))

(declare-fun m!203149 () Bool)

(assert (=> d!53041 m!203149))

(assert (=> d!53041 m!202331))

(assert (=> d!53041 m!202333))

(declare-fun m!203151 () Bool)

(assert (=> d!53041 m!203151))

(assert (=> b!173692 d!53041))

(declare-fun d!53043 () Bool)

(assert (=> d!53043 (contains!1153 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) lt!86037)))

(declare-fun lt!86243 () Unit!5311)

(assert (=> d!53043 (= lt!86243 (choose!938 lt!86038 lt!86036 (zeroValue!3439 lt!85751) lt!86037))))

(assert (=> d!53043 (contains!1153 lt!86038 lt!86037)))

(assert (=> d!53043 (= (addStillContains!106 lt!86038 lt!86036 (zeroValue!3439 lt!85751) lt!86037) lt!86243)))

(declare-fun bs!7196 () Bool)

(assert (= bs!7196 d!53043))

(assert (=> bs!7196 m!202341))

(assert (=> bs!7196 m!202341))

(assert (=> bs!7196 m!202351))

(declare-fun m!203153 () Bool)

(assert (=> bs!7196 m!203153))

(declare-fun m!203155 () Bool)

(assert (=> bs!7196 m!203155))

(assert (=> b!173692 d!53043))

(declare-fun d!53045 () Bool)

(declare-fun e!115063 () Bool)

(assert (=> d!53045 e!115063))

(declare-fun res!82662 () Bool)

(assert (=> d!53045 (=> (not res!82662) (not e!115063))))

(declare-fun lt!86245 () ListLongMap!2177)

(assert (=> d!53045 (= res!82662 (contains!1153 lt!86245 (_1!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))))))

(declare-fun lt!86246 () List!2226)

(assert (=> d!53045 (= lt!86245 (ListLongMap!2178 lt!86246))))

(declare-fun lt!86247 () Unit!5311)

(declare-fun lt!86244 () Unit!5311)

(assert (=> d!53045 (= lt!86247 lt!86244)))

(assert (=> d!53045 (= (getValueByKey!184 lt!86246 (_1!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53045 (= lt!86244 (lemmaContainsTupThenGetReturnValue!99 lt!86246 (_1!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) (_2!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53045 (= lt!86246 (insertStrictlySorted!101 (toList!1104 lt!86055) (_1!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) (_2!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53045 (= (+!241 lt!86055 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) lt!86245)))

(declare-fun b!174231 () Bool)

(declare-fun res!82663 () Bool)

(assert (=> b!174231 (=> (not res!82663) (not e!115063))))

(assert (=> b!174231 (= res!82663 (= (getValueByKey!184 (toList!1104 lt!86245) (_1!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))))))))

(declare-fun b!174232 () Bool)

(assert (=> b!174232 (= e!115063 (contains!1154 (toList!1104 lt!86245) (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))))))

(assert (= (and d!53045 res!82662) b!174231))

(assert (= (and b!174231 res!82663) b!174232))

(declare-fun m!203157 () Bool)

(assert (=> d!53045 m!203157))

(declare-fun m!203159 () Bool)

(assert (=> d!53045 m!203159))

(declare-fun m!203161 () Bool)

(assert (=> d!53045 m!203161))

(declare-fun m!203163 () Bool)

(assert (=> d!53045 m!203163))

(declare-fun m!203165 () Bool)

(assert (=> b!174231 m!203165))

(declare-fun m!203167 () Bool)

(assert (=> b!174232 m!203167))

(assert (=> b!173692 d!53045))

(declare-fun b!174233 () Bool)

(declare-fun e!115064 () Bool)

(declare-fun e!115069 () Bool)

(assert (=> b!174233 (= e!115064 e!115069)))

(declare-fun c!31164 () Bool)

(assert (=> b!174233 (= c!31164 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(declare-fun bm!17657 () Bool)

(declare-fun call!17660 () ListLongMap!2177)

(assert (=> bm!17657 (= call!17660 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 lt!85751)))))

(declare-fun b!174235 () Bool)

(declare-fun e!115067 () Bool)

(assert (=> b!174235 (= e!115064 e!115067)))

(assert (=> b!174235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(declare-fun res!82665 () Bool)

(declare-fun lt!86250 () ListLongMap!2177)

(assert (=> b!174235 (= res!82665 (contains!1153 lt!86250 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> b!174235 (=> (not res!82665) (not e!115067))))

(declare-fun b!174236 () Bool)

(declare-fun e!115065 () ListLongMap!2177)

(assert (=> b!174236 (= e!115065 (ListLongMap!2178 Nil!2223))))

(declare-fun b!174237 () Bool)

(assert (=> b!174237 (= e!115069 (isEmpty!441 lt!86250))))

(declare-fun b!174238 () Bool)

(assert (=> b!174238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> b!174238 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3766 (_values!3581 lt!85751))))))

(assert (=> b!174238 (= e!115067 (= (apply!130 lt!86250 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) (get!1969 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!174239 () Bool)

(declare-fun e!115068 () ListLongMap!2177)

(assert (=> b!174239 (= e!115068 call!17660)))

(declare-fun b!174240 () Bool)

(assert (=> b!174240 (= e!115069 (= lt!86250 (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3598 lt!85751))))))

(declare-fun b!174241 () Bool)

(assert (=> b!174241 (= e!115065 e!115068)))

(declare-fun c!31166 () Bool)

(assert (=> b!174241 (= c!31166 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun b!174242 () Bool)

(declare-fun e!115066 () Bool)

(assert (=> b!174242 (= e!115066 e!115064)))

(declare-fun c!31165 () Bool)

(declare-fun e!115070 () Bool)

(assert (=> b!174242 (= c!31165 e!115070)))

(declare-fun res!82666 () Bool)

(assert (=> b!174242 (=> (not res!82666) (not e!115070))))

(assert (=> b!174242 (= res!82666 (bvslt #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!174243 () Bool)

(declare-fun lt!86248 () Unit!5311)

(declare-fun lt!86252 () Unit!5311)

(assert (=> b!174243 (= lt!86248 lt!86252)))

(declare-fun lt!86251 () (_ BitVec 64))

(declare-fun lt!86249 () V!5091)

(declare-fun lt!86254 () ListLongMap!2177)

(declare-fun lt!86253 () (_ BitVec 64))

(assert (=> b!174243 (not (contains!1153 (+!241 lt!86254 (tuple2!3237 lt!86253 lt!86249)) lt!86251))))

(assert (=> b!174243 (= lt!86252 (addStillNotContains!74 lt!86254 lt!86253 lt!86249 lt!86251))))

(assert (=> b!174243 (= lt!86251 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!174243 (= lt!86249 (get!1969 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!174243 (= lt!86253 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))

(assert (=> b!174243 (= lt!86254 call!17660)))

(assert (=> b!174243 (= e!115068 (+!241 call!17660 (tuple2!3237 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!174244 () Bool)

(assert (=> b!174244 (= e!115070 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)))))

(assert (=> b!174244 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!53047 () Bool)

(assert (=> d!53047 e!115066))

(declare-fun res!82667 () Bool)

(assert (=> d!53047 (=> (not res!82667) (not e!115066))))

(assert (=> d!53047 (= res!82667 (not (contains!1153 lt!86250 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53047 (= lt!86250 e!115065)))

(declare-fun c!31163 () Bool)

(assert (=> d!53047 (= c!31163 (bvsge #b00000000000000000000000000000000 (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!53047 (validMask!0 (mask!8470 lt!85751))))

(assert (=> d!53047 (= (getCurrentListMapNoExtraKeys!160 (_keys!5439 lt!85751) (_values!3581 lt!85751) (mask!8470 lt!85751) (extraKeys!3337 lt!85751) (zeroValue!3439 lt!85751) (minValue!3441 lt!85751) #b00000000000000000000000000000000 (defaultEntry!3598 lt!85751)) lt!86250)))

(declare-fun b!174234 () Bool)

(declare-fun res!82664 () Bool)

(assert (=> b!174234 (=> (not res!82664) (not e!115066))))

(assert (=> b!174234 (= res!82664 (not (contains!1153 lt!86250 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53047 c!31163) b!174236))

(assert (= (and d!53047 (not c!31163)) b!174241))

(assert (= (and b!174241 c!31166) b!174243))

(assert (= (and b!174241 (not c!31166)) b!174239))

(assert (= (or b!174243 b!174239) bm!17657))

(assert (= (and d!53047 res!82667) b!174234))

(assert (= (and b!174234 res!82664) b!174242))

(assert (= (and b!174242 res!82666) b!174244))

(assert (= (and b!174242 c!31165) b!174235))

(assert (= (and b!174242 (not c!31165)) b!174233))

(assert (= (and b!174235 res!82665) b!174238))

(assert (= (and b!174233 c!31164) b!174240))

(assert (= (and b!174233 (not c!31164)) b!174237))

(declare-fun b_lambda!6999 () Bool)

(assert (=> (not b_lambda!6999) (not b!174238)))

(assert (=> b!174238 t!7047))

(declare-fun b_and!10795 () Bool)

(assert (= b_and!10793 (and (=> t!7047 result!4599) b_and!10795)))

(declare-fun b_lambda!7001 () Bool)

(assert (=> (not b_lambda!7001) (not b!174243)))

(assert (=> b!174243 t!7047))

(declare-fun b_and!10797 () Bool)

(assert (= b_and!10795 (and (=> t!7047 result!4599) b_and!10797)))

(declare-fun m!203169 () Bool)

(assert (=> b!174240 m!203169))

(assert (=> b!174238 m!202313))

(assert (=> b!174238 m!202315))

(assert (=> b!174238 m!202317))

(assert (=> b!174238 m!202315))

(assert (=> b!174238 m!202201))

(declare-fun m!203171 () Bool)

(assert (=> b!174238 m!203171))

(assert (=> b!174238 m!202201))

(assert (=> b!174238 m!202313))

(declare-fun m!203173 () Bool)

(assert (=> d!53047 m!203173))

(assert (=> d!53047 m!202301))

(assert (=> b!174235 m!202201))

(assert (=> b!174235 m!202201))

(declare-fun m!203175 () Bool)

(assert (=> b!174235 m!203175))

(assert (=> bm!17657 m!203169))

(declare-fun m!203177 () Bool)

(assert (=> b!174237 m!203177))

(assert (=> b!174244 m!202201))

(assert (=> b!174244 m!202201))

(assert (=> b!174244 m!202205))

(declare-fun m!203179 () Bool)

(assert (=> b!174234 m!203179))

(assert (=> b!174241 m!202201))

(assert (=> b!174241 m!202201))

(assert (=> b!174241 m!202205))

(declare-fun m!203181 () Bool)

(assert (=> b!174243 m!203181))

(declare-fun m!203183 () Bool)

(assert (=> b!174243 m!203183))

(assert (=> b!174243 m!202313))

(assert (=> b!174243 m!202315))

(assert (=> b!174243 m!202317))

(assert (=> b!174243 m!202315))

(assert (=> b!174243 m!203181))

(declare-fun m!203185 () Bool)

(assert (=> b!174243 m!203185))

(assert (=> b!174243 m!202201))

(assert (=> b!174243 m!202313))

(declare-fun m!203187 () Bool)

(assert (=> b!174243 m!203187))

(assert (=> b!173692 d!53047))

(declare-fun d!53049 () Bool)

(assert (=> d!53049 (= (apply!130 (+!241 lt!86055 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751))) lt!86044) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!86055 (tuple2!3237 lt!86048 (zeroValue!3439 lt!85751)))) lt!86044)))))

(declare-fun bs!7197 () Bool)

(assert (= bs!7197 d!53049))

(declare-fun m!203189 () Bool)

(assert (=> bs!7197 m!203189))

(assert (=> bs!7197 m!203189))

(declare-fun m!203191 () Bool)

(assert (=> bs!7197 m!203191))

(assert (=> b!173692 d!53049))

(declare-fun d!53051 () Bool)

(assert (=> d!53051 (= (apply!130 (+!241 lt!86041 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) lt!86045) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!86041 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))) lt!86045)))))

(declare-fun bs!7198 () Bool)

(assert (= bs!7198 d!53051))

(declare-fun m!203193 () Bool)

(assert (=> bs!7198 m!203193))

(assert (=> bs!7198 m!203193))

(declare-fun m!203195 () Bool)

(assert (=> bs!7198 m!203195))

(assert (=> b!173692 d!53051))

(declare-fun d!53053 () Bool)

(assert (=> d!53053 (= (apply!130 lt!86055 lt!86044) (get!1970 (getValueByKey!184 (toList!1104 lt!86055) lt!86044)))))

(declare-fun bs!7199 () Bool)

(assert (= bs!7199 d!53053))

(declare-fun m!203197 () Bool)

(assert (=> bs!7199 m!203197))

(assert (=> bs!7199 m!203197))

(declare-fun m!203199 () Bool)

(assert (=> bs!7199 m!203199))

(assert (=> b!173692 d!53053))

(declare-fun d!53055 () Bool)

(assert (=> d!53055 (= (apply!130 (+!241 lt!86041 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) lt!86045) (apply!130 lt!86041 lt!86045))))

(declare-fun lt!86255 () Unit!5311)

(assert (=> d!53055 (= lt!86255 (choose!937 lt!86041 lt!86051 (minValue!3441 lt!85751) lt!86045))))

(declare-fun e!115071 () Bool)

(assert (=> d!53055 e!115071))

(declare-fun res!82668 () Bool)

(assert (=> d!53055 (=> (not res!82668) (not e!115071))))

(assert (=> d!53055 (= res!82668 (contains!1153 lt!86041 lt!86045))))

(assert (=> d!53055 (= (addApplyDifferent!106 lt!86041 lt!86051 (minValue!3441 lt!85751) lt!86045) lt!86255)))

(declare-fun b!174245 () Bool)

(assert (=> b!174245 (= e!115071 (not (= lt!86045 lt!86051)))))

(assert (= (and d!53055 res!82668) b!174245))

(assert (=> d!53055 m!202325))

(assert (=> d!53055 m!202327))

(declare-fun m!203201 () Bool)

(assert (=> d!53055 m!203201))

(assert (=> d!53055 m!202327))

(assert (=> d!53055 m!202329))

(declare-fun m!203203 () Bool)

(assert (=> d!53055 m!203203))

(assert (=> b!173692 d!53055))

(declare-fun d!53057 () Bool)

(assert (=> d!53057 (= (apply!130 lt!86049 lt!86043) (get!1970 (getValueByKey!184 (toList!1104 lt!86049) lt!86043)))))

(declare-fun bs!7200 () Bool)

(assert (= bs!7200 d!53057))

(declare-fun m!203205 () Bool)

(assert (=> bs!7200 m!203205))

(assert (=> bs!7200 m!203205))

(declare-fun m!203207 () Bool)

(assert (=> bs!7200 m!203207))

(assert (=> b!173692 d!53057))

(declare-fun d!53059 () Bool)

(declare-fun e!115072 () Bool)

(assert (=> d!53059 e!115072))

(declare-fun res!82669 () Bool)

(assert (=> d!53059 (=> (not res!82669) (not e!115072))))

(declare-fun lt!86257 () ListLongMap!2177)

(assert (=> d!53059 (= res!82669 (contains!1153 lt!86257 (_1!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))))))

(declare-fun lt!86258 () List!2226)

(assert (=> d!53059 (= lt!86257 (ListLongMap!2178 lt!86258))))

(declare-fun lt!86259 () Unit!5311)

(declare-fun lt!86256 () Unit!5311)

(assert (=> d!53059 (= lt!86259 lt!86256)))

(assert (=> d!53059 (= (getValueByKey!184 lt!86258 (_1!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53059 (= lt!86256 (lemmaContainsTupThenGetReturnValue!99 lt!86258 (_1!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) (_2!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53059 (= lt!86258 (insertStrictlySorted!101 (toList!1104 lt!86038) (_1!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) (_2!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))))))

(assert (=> d!53059 (= (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) lt!86257)))

(declare-fun b!174246 () Bool)

(declare-fun res!82670 () Bool)

(assert (=> b!174246 (=> (not res!82670) (not e!115072))))

(assert (=> b!174246 (= res!82670 (= (getValueByKey!184 (toList!1104 lt!86257) (_1!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))))))))

(declare-fun b!174247 () Bool)

(assert (=> b!174247 (= e!115072 (contains!1154 (toList!1104 lt!86257) (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))))))

(assert (= (and d!53059 res!82669) b!174246))

(assert (= (and b!174246 res!82670) b!174247))

(declare-fun m!203209 () Bool)

(assert (=> d!53059 m!203209))

(declare-fun m!203211 () Bool)

(assert (=> d!53059 m!203211))

(declare-fun m!203213 () Bool)

(assert (=> d!53059 m!203213))

(declare-fun m!203215 () Bool)

(assert (=> d!53059 m!203215))

(declare-fun m!203217 () Bool)

(assert (=> b!174246 m!203217))

(declare-fun m!203219 () Bool)

(assert (=> b!174247 m!203219))

(assert (=> b!173692 d!53059))

(declare-fun d!53061 () Bool)

(assert (=> d!53061 (= (apply!130 (+!241 lt!86049 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) lt!86043) (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!86049 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))) lt!86043)))))

(declare-fun bs!7201 () Bool)

(assert (= bs!7201 d!53061))

(declare-fun m!203221 () Bool)

(assert (=> bs!7201 m!203221))

(assert (=> bs!7201 m!203221))

(declare-fun m!203223 () Bool)

(assert (=> bs!7201 m!203223))

(assert (=> b!173692 d!53061))

(declare-fun d!53063 () Bool)

(declare-fun e!115073 () Bool)

(assert (=> d!53063 e!115073))

(declare-fun res!82671 () Bool)

(assert (=> d!53063 (=> (not res!82671) (not e!115073))))

(declare-fun lt!86261 () ListLongMap!2177)

(assert (=> d!53063 (= res!82671 (contains!1153 lt!86261 (_1!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))))))

(declare-fun lt!86262 () List!2226)

(assert (=> d!53063 (= lt!86261 (ListLongMap!2178 lt!86262))))

(declare-fun lt!86263 () Unit!5311)

(declare-fun lt!86260 () Unit!5311)

(assert (=> d!53063 (= lt!86263 lt!86260)))

(assert (=> d!53063 (= (getValueByKey!184 lt!86262 (_1!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))))))

(assert (=> d!53063 (= lt!86260 (lemmaContainsTupThenGetReturnValue!99 lt!86262 (_1!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))))))

(assert (=> d!53063 (= lt!86262 (insertStrictlySorted!101 (toList!1104 lt!86049) (_1!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))))))

(assert (=> d!53063 (= (+!241 lt!86049 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) lt!86261)))

(declare-fun b!174248 () Bool)

(declare-fun res!82672 () Bool)

(assert (=> b!174248 (=> (not res!82672) (not e!115073))))

(assert (=> b!174248 (= res!82672 (= (getValueByKey!184 (toList!1104 lt!86261) (_1!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))))))))

(declare-fun b!174249 () Bool)

(assert (=> b!174249 (= e!115073 (contains!1154 (toList!1104 lt!86261) (tuple2!3237 lt!86053 (minValue!3441 lt!85751))))))

(assert (= (and d!53063 res!82671) b!174248))

(assert (= (and b!174248 res!82672) b!174249))

(declare-fun m!203225 () Bool)

(assert (=> d!53063 m!203225))

(declare-fun m!203227 () Bool)

(assert (=> d!53063 m!203227))

(declare-fun m!203229 () Bool)

(assert (=> d!53063 m!203229))

(declare-fun m!203231 () Bool)

(assert (=> d!53063 m!203231))

(declare-fun m!203233 () Bool)

(assert (=> b!174248 m!203233))

(declare-fun m!203235 () Bool)

(assert (=> b!174249 m!203235))

(assert (=> b!173692 d!53063))

(declare-fun d!53065 () Bool)

(assert (=> d!53065 (= (apply!130 (+!241 lt!86049 (tuple2!3237 lt!86053 (minValue!3441 lt!85751))) lt!86043) (apply!130 lt!86049 lt!86043))))

(declare-fun lt!86264 () Unit!5311)

(assert (=> d!53065 (= lt!86264 (choose!937 lt!86049 lt!86053 (minValue!3441 lt!85751) lt!86043))))

(declare-fun e!115074 () Bool)

(assert (=> d!53065 e!115074))

(declare-fun res!82673 () Bool)

(assert (=> d!53065 (=> (not res!82673) (not e!115074))))

(assert (=> d!53065 (= res!82673 (contains!1153 lt!86049 lt!86043))))

(assert (=> d!53065 (= (addApplyDifferent!106 lt!86049 lt!86053 (minValue!3441 lt!85751) lt!86043) lt!86264)))

(declare-fun b!174250 () Bool)

(assert (=> b!174250 (= e!115074 (not (= lt!86043 lt!86053)))))

(assert (= (and d!53065 res!82673) b!174250))

(assert (=> d!53065 m!202345))

(assert (=> d!53065 m!202335))

(declare-fun m!203237 () Bool)

(assert (=> d!53065 m!203237))

(assert (=> d!53065 m!202335))

(assert (=> d!53065 m!202339))

(declare-fun m!203239 () Bool)

(assert (=> d!53065 m!203239))

(assert (=> b!173692 d!53065))

(declare-fun d!53067 () Bool)

(assert (=> d!53067 (= (apply!130 lt!86041 lt!86045) (get!1970 (getValueByKey!184 (toList!1104 lt!86041) lt!86045)))))

(declare-fun bs!7202 () Bool)

(assert (= bs!7202 d!53067))

(declare-fun m!203241 () Bool)

(assert (=> bs!7202 m!203241))

(assert (=> bs!7202 m!203241))

(declare-fun m!203243 () Bool)

(assert (=> bs!7202 m!203243))

(assert (=> b!173692 d!53067))

(declare-fun d!53069 () Bool)

(declare-fun e!115075 () Bool)

(assert (=> d!53069 e!115075))

(declare-fun res!82674 () Bool)

(assert (=> d!53069 (=> (not res!82674) (not e!115075))))

(declare-fun lt!86266 () ListLongMap!2177)

(assert (=> d!53069 (= res!82674 (contains!1153 lt!86266 (_1!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))))))

(declare-fun lt!86267 () List!2226)

(assert (=> d!53069 (= lt!86266 (ListLongMap!2178 lt!86267))))

(declare-fun lt!86268 () Unit!5311)

(declare-fun lt!86265 () Unit!5311)

(assert (=> d!53069 (= lt!86268 lt!86265)))

(assert (=> d!53069 (= (getValueByKey!184 lt!86267 (_1!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))))))

(assert (=> d!53069 (= lt!86265 (lemmaContainsTupThenGetReturnValue!99 lt!86267 (_1!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))))))

(assert (=> d!53069 (= lt!86267 (insertStrictlySorted!101 (toList!1104 lt!86041) (_1!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) (_2!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))))))

(assert (=> d!53069 (= (+!241 lt!86041 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))) lt!86266)))

(declare-fun b!174251 () Bool)

(declare-fun res!82675 () Bool)

(assert (=> b!174251 (=> (not res!82675) (not e!115075))))

(assert (=> b!174251 (= res!82675 (= (getValueByKey!184 (toList!1104 lt!86266) (_1!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751)))) (Some!189 (_2!1628 (tuple2!3237 lt!86051 (minValue!3441 lt!85751))))))))

(declare-fun b!174252 () Bool)

(assert (=> b!174252 (= e!115075 (contains!1154 (toList!1104 lt!86266) (tuple2!3237 lt!86051 (minValue!3441 lt!85751))))))

(assert (= (and d!53069 res!82674) b!174251))

(assert (= (and b!174251 res!82675) b!174252))

(declare-fun m!203245 () Bool)

(assert (=> d!53069 m!203245))

(declare-fun m!203247 () Bool)

(assert (=> d!53069 m!203247))

(declare-fun m!203249 () Bool)

(assert (=> d!53069 m!203249))

(declare-fun m!203251 () Bool)

(assert (=> d!53069 m!203251))

(declare-fun m!203253 () Bool)

(assert (=> b!174251 m!203253))

(declare-fun m!203255 () Bool)

(assert (=> b!174252 m!203255))

(assert (=> b!173692 d!53069))

(declare-fun d!53071 () Bool)

(declare-fun e!115076 () Bool)

(assert (=> d!53071 e!115076))

(declare-fun res!82676 () Bool)

(assert (=> d!53071 (=> res!82676 e!115076)))

(declare-fun lt!86269 () Bool)

(assert (=> d!53071 (= res!82676 (not lt!86269))))

(declare-fun lt!86271 () Bool)

(assert (=> d!53071 (= lt!86269 lt!86271)))

(declare-fun lt!86272 () Unit!5311)

(declare-fun e!115077 () Unit!5311)

(assert (=> d!53071 (= lt!86272 e!115077)))

(declare-fun c!31167 () Bool)

(assert (=> d!53071 (= c!31167 lt!86271)))

(assert (=> d!53071 (= lt!86271 (containsKey!188 (toList!1104 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) lt!86037))))

(assert (=> d!53071 (= (contains!1153 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751))) lt!86037) lt!86269)))

(declare-fun b!174253 () Bool)

(declare-fun lt!86270 () Unit!5311)

(assert (=> b!174253 (= e!115077 lt!86270)))

(assert (=> b!174253 (= lt!86270 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) lt!86037))))

(assert (=> b!174253 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) lt!86037))))

(declare-fun b!174254 () Bool)

(declare-fun Unit!5351 () Unit!5311)

(assert (=> b!174254 (= e!115077 Unit!5351)))

(declare-fun b!174255 () Bool)

(assert (=> b!174255 (= e!115076 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!86038 (tuple2!3237 lt!86036 (zeroValue!3439 lt!85751)))) lt!86037)))))

(assert (= (and d!53071 c!31167) b!174253))

(assert (= (and d!53071 (not c!31167)) b!174254))

(assert (= (and d!53071 (not res!82676)) b!174255))

(declare-fun m!203257 () Bool)

(assert (=> d!53071 m!203257))

(declare-fun m!203259 () Bool)

(assert (=> b!174253 m!203259))

(declare-fun m!203261 () Bool)

(assert (=> b!174253 m!203261))

(assert (=> b!174253 m!203261))

(declare-fun m!203263 () Bool)

(assert (=> b!174253 m!203263))

(assert (=> b!174255 m!203261))

(assert (=> b!174255 m!203261))

(assert (=> b!174255 m!203263))

(assert (=> b!173692 d!53071))

(declare-fun d!53073 () Bool)

(assert (=> d!53073 (= (isEmpty!441 lt!85911) (isEmpty!443 (toList!1104 lt!85911)))))

(declare-fun bs!7203 () Bool)

(assert (= bs!7203 d!53073))

(declare-fun m!203265 () Bool)

(assert (=> bs!7203 m!203265))

(assert (=> b!173455 d!53073))

(declare-fun d!53075 () Bool)

(declare-fun c!31168 () Bool)

(assert (=> d!53075 (= c!31168 ((_ is Nil!2223) (toList!1104 lt!85877)))))

(declare-fun e!115078 () (InoxSet tuple2!3236))

(assert (=> d!53075 (= (content!148 (toList!1104 lt!85877)) e!115078)))

(declare-fun b!174256 () Bool)

(assert (=> b!174256 (= e!115078 ((as const (Array tuple2!3236 Bool)) false))))

(declare-fun b!174257 () Bool)

(assert (=> b!174257 (= e!115078 ((_ map or) (store ((as const (Array tuple2!3236 Bool)) false) (h!2839 (toList!1104 lt!85877)) true) (content!148 (t!7041 (toList!1104 lt!85877)))))))

(assert (= (and d!53075 c!31168) b!174256))

(assert (= (and d!53075 (not c!31168)) b!174257))

(declare-fun m!203267 () Bool)

(assert (=> b!174257 m!203267))

(assert (=> b!174257 m!203105))

(assert (=> d!52531 d!53075))

(declare-fun d!53077 () Bool)

(declare-fun lt!86273 () Bool)

(assert (=> d!53077 (= lt!86273 (select (content!148 lt!85957) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!115080 () Bool)

(assert (=> d!53077 (= lt!86273 e!115080)))

(declare-fun res!82678 () Bool)

(assert (=> d!53077 (=> (not res!82678) (not e!115080))))

(assert (=> d!53077 (= res!82678 ((_ is Cons!2222) lt!85957))))

(assert (=> d!53077 (= (contains!1154 lt!85957 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!86273)))

(declare-fun b!174258 () Bool)

(declare-fun e!115079 () Bool)

(assert (=> b!174258 (= e!115080 e!115079)))

(declare-fun res!82677 () Bool)

(assert (=> b!174258 (=> res!82677 e!115079)))

(assert (=> b!174258 (= res!82677 (= (h!2839 lt!85957) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174259 () Bool)

(assert (=> b!174259 (= e!115079 (contains!1154 (t!7041 lt!85957) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!53077 res!82678) b!174258))

(assert (= (and b!174258 (not res!82677)) b!174259))

(declare-fun m!203269 () Bool)

(assert (=> d!53077 m!203269))

(declare-fun m!203271 () Bool)

(assert (=> d!53077 m!203271))

(declare-fun m!203273 () Bool)

(assert (=> b!174259 m!203273))

(assert (=> b!173532 d!53077))

(declare-fun b!174260 () Bool)

(declare-fun e!115081 () Option!190)

(assert (=> b!174260 (= e!115081 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85988)))))))

(declare-fun b!174263 () Bool)

(declare-fun e!115082 () Option!190)

(assert (=> b!174263 (= e!115082 None!188)))

(declare-fun b!174261 () Bool)

(assert (=> b!174261 (= e!115081 e!115082)))

(declare-fun c!31170 () Bool)

(assert (=> b!174261 (= c!31170 (and ((_ is Cons!2222) (toList!1104 lt!85988)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85988))) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174262 () Bool)

(assert (=> b!174262 (= e!115082 (getValueByKey!184 (t!7041 (toList!1104 lt!85988)) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31169 () Bool)

(declare-fun d!53079 () Bool)

(assert (=> d!53079 (= c!31169 (and ((_ is Cons!2222) (toList!1104 lt!85988)) (= (_1!1628 (h!2839 (toList!1104 lt!85988))) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53079 (= (getValueByKey!184 (toList!1104 lt!85988) (_1!1628 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) e!115081)))

(assert (= (and d!53079 c!31169) b!174260))

(assert (= (and d!53079 (not c!31169)) b!174261))

(assert (= (and b!174261 c!31170) b!174262))

(assert (= (and b!174261 (not c!31170)) b!174263))

(declare-fun m!203275 () Bool)

(assert (=> b!174262 m!203275))

(assert (=> b!173574 d!53079))

(declare-fun b!174264 () Bool)

(declare-fun e!115083 () Option!190)

(assert (=> b!174264 (= e!115083 (Some!189 (_2!1628 (h!2839 (t!7041 (toList!1104 lt!85750))))))))

(declare-fun b!174267 () Bool)

(declare-fun e!115084 () Option!190)

(assert (=> b!174267 (= e!115084 None!188)))

(declare-fun b!174265 () Bool)

(assert (=> b!174265 (= e!115083 e!115084)))

(declare-fun c!31172 () Bool)

(assert (=> b!174265 (= c!31172 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85750))) (not (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750)))) key!828))))))

(declare-fun b!174266 () Bool)

(assert (=> b!174266 (= e!115084 (getValueByKey!184 (t!7041 (t!7041 (toList!1104 lt!85750))) key!828))))

(declare-fun d!53081 () Bool)

(declare-fun c!31171 () Bool)

(assert (=> d!53081 (= c!31171 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85750))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750)))) key!828)))))

(assert (=> d!53081 (= (getValueByKey!184 (t!7041 (toList!1104 lt!85750)) key!828) e!115083)))

(assert (= (and d!53081 c!31171) b!174264))

(assert (= (and d!53081 (not c!31171)) b!174265))

(assert (= (and b!174265 c!31172) b!174266))

(assert (= (and b!174265 (not c!31172)) b!174267))

(declare-fun m!203277 () Bool)

(assert (=> b!174266 m!203277))

(assert (=> b!173539 d!53081))

(declare-fun d!53083 () Bool)

(declare-fun res!82679 () Bool)

(declare-fun e!115085 () Bool)

(assert (=> d!53083 (=> res!82679 e!115085)))

(assert (=> d!53083 (= res!82679 (and ((_ is Cons!2222) (t!7041 (toList!1104 lt!85750))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750)))) key!828)))))

(assert (=> d!53083 (= (containsKey!188 (t!7041 (toList!1104 lt!85750)) key!828) e!115085)))

(declare-fun b!174268 () Bool)

(declare-fun e!115086 () Bool)

(assert (=> b!174268 (= e!115085 e!115086)))

(declare-fun res!82680 () Bool)

(assert (=> b!174268 (=> (not res!82680) (not e!115086))))

(assert (=> b!174268 (= res!82680 (and (or (not ((_ is Cons!2222) (t!7041 (toList!1104 lt!85750)))) (bvsle (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750)))) key!828)) ((_ is Cons!2222) (t!7041 (toList!1104 lt!85750))) (bvslt (_1!1628 (h!2839 (t!7041 (toList!1104 lt!85750)))) key!828)))))

(declare-fun b!174269 () Bool)

(assert (=> b!174269 (= e!115086 (containsKey!188 (t!7041 (t!7041 (toList!1104 lt!85750))) key!828))))

(assert (= (and d!53083 (not res!82679)) b!174268))

(assert (= (and b!174268 res!82680) b!174269))

(declare-fun m!203279 () Bool)

(assert (=> b!174269 m!203279))

(assert (=> b!173405 d!53083))

(assert (=> d!52643 d!52537))

(declare-fun b!174270 () Bool)

(declare-fun e!115088 () Bool)

(declare-fun call!17661 () Bool)

(assert (=> b!174270 (= e!115088 call!17661)))

(declare-fun d!53085 () Bool)

(declare-fun res!82682 () Bool)

(declare-fun e!115087 () Bool)

(assert (=> d!53085 (=> res!82682 e!115087)))

(assert (=> d!53085 (= res!82682 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!53085 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5439 lt!85751) (mask!8470 lt!85751)) e!115087)))

(declare-fun b!174271 () Bool)

(assert (=> b!174271 (= e!115087 e!115088)))

(declare-fun c!31173 () Bool)

(assert (=> b!174271 (= c!31173 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!174272 () Bool)

(declare-fun e!115089 () Bool)

(assert (=> b!174272 (= e!115089 call!17661)))

(declare-fun bm!17658 () Bool)

(assert (=> bm!17658 (= call!17661 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5439 lt!85751) (mask!8470 lt!85751)))))

(declare-fun b!174273 () Bool)

(assert (=> b!174273 (= e!115088 e!115089)))

(declare-fun lt!86275 () (_ BitVec 64))

(assert (=> b!174273 (= lt!86275 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!86276 () Unit!5311)

(assert (=> b!174273 (= lt!86276 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 lt!85751) lt!86275 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!174273 (arrayContainsKey!0 (_keys!5439 lt!85751) lt!86275 #b00000000000000000000000000000000)))

(declare-fun lt!86274 () Unit!5311)

(assert (=> b!174273 (= lt!86274 lt!86276)))

(declare-fun res!82681 () Bool)

(assert (=> b!174273 (= res!82681 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5439 lt!85751) (mask!8470 lt!85751)) (Found!552 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!174273 (=> (not res!82681) (not e!115089))))

(assert (= (and d!53085 (not res!82682)) b!174271))

(assert (= (and b!174271 c!31173) b!174273))

(assert (= (and b!174271 (not c!31173)) b!174270))

(assert (= (and b!174273 res!82681) b!174272))

(assert (= (or b!174272 b!174270) bm!17658))

(assert (=> b!174271 m!202717))

(assert (=> b!174271 m!202717))

(assert (=> b!174271 m!202721))

(declare-fun m!203281 () Bool)

(assert (=> bm!17658 m!203281))

(assert (=> b!174273 m!202717))

(declare-fun m!203283 () Bool)

(assert (=> b!174273 m!203283))

(declare-fun m!203285 () Bool)

(assert (=> b!174273 m!203285))

(assert (=> b!174273 m!202717))

(declare-fun m!203287 () Bool)

(assert (=> b!174273 m!203287))

(assert (=> bm!17608 d!53085))

(assert (=> d!52651 d!52649))

(declare-fun d!53087 () Bool)

(assert (=> d!53087 (= (getValueByKey!184 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309))) (Some!189 (_2!1628 (tuple2!3237 key!828 v!309))))))

(assert (=> d!53087 true))

(declare-fun _$22!536 () Unit!5311)

(assert (=> d!53087 (= (choose!939 lt!85878 (_1!1628 (tuple2!3237 key!828 v!309)) (_2!1628 (tuple2!3237 key!828 v!309))) _$22!536)))

(declare-fun bs!7204 () Bool)

(assert (= bs!7204 d!53087))

(assert (=> bs!7204 m!201839))

(assert (=> d!52651 d!53087))

(declare-fun d!53089 () Bool)

(declare-fun res!82683 () Bool)

(declare-fun e!115090 () Bool)

(assert (=> d!53089 (=> res!82683 e!115090)))

(assert (=> d!53089 (= res!82683 (or ((_ is Nil!2223) lt!85878) ((_ is Nil!2223) (t!7041 lt!85878))))))

(assert (=> d!53089 (= (isStrictlySorted!327 lt!85878) e!115090)))

(declare-fun b!174274 () Bool)

(declare-fun e!115091 () Bool)

(assert (=> b!174274 (= e!115090 e!115091)))

(declare-fun res!82684 () Bool)

(assert (=> b!174274 (=> (not res!82684) (not e!115091))))

(assert (=> b!174274 (= res!82684 (bvslt (_1!1628 (h!2839 lt!85878)) (_1!1628 (h!2839 (t!7041 lt!85878)))))))

(declare-fun b!174275 () Bool)

(assert (=> b!174275 (= e!115091 (isStrictlySorted!327 (t!7041 lt!85878)))))

(assert (= (and d!53089 (not res!82683)) b!174274))

(assert (= (and b!174274 res!82684) b!174275))

(declare-fun m!203289 () Bool)

(assert (=> b!174275 m!203289))

(assert (=> d!52651 d!53089))

(assert (=> b!173555 d!52575))

(declare-fun b!174276 () Bool)

(declare-fun e!115092 () Option!190)

(assert (=> b!174276 (= e!115092 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85884)))))))

(declare-fun b!174279 () Bool)

(declare-fun e!115093 () Option!190)

(assert (=> b!174279 (= e!115093 None!188)))

(declare-fun b!174277 () Bool)

(assert (=> b!174277 (= e!115092 e!115093)))

(declare-fun c!31175 () Bool)

(assert (=> b!174277 (= c!31175 (and ((_ is Cons!2222) (toList!1104 lt!85884)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85884))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))))

(declare-fun b!174278 () Bool)

(assert (=> b!174278 (= e!115093 (getValueByKey!184 (t!7041 (toList!1104 lt!85884)) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun d!53091 () Bool)

(declare-fun c!31174 () Bool)

(assert (=> d!53091 (= c!31174 (and ((_ is Cons!2222) (toList!1104 lt!85884)) (= (_1!1628 (h!2839 (toList!1104 lt!85884))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (=> d!53091 (= (getValueByKey!184 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) e!115092)))

(assert (= (and d!53091 c!31174) b!174276))

(assert (= (and d!53091 (not c!31174)) b!174277))

(assert (= (and b!174277 c!31175) b!174278))

(assert (= (and b!174277 (not c!31175)) b!174279))

(declare-fun m!203291 () Bool)

(assert (=> b!174278 m!203291))

(assert (=> b!173418 d!53091))

(declare-fun b!174280 () Bool)

(declare-fun e!115095 () Bool)

(declare-fun call!17662 () Bool)

(assert (=> b!174280 (= e!115095 call!17662)))

(declare-fun d!53093 () Bool)

(declare-fun res!82686 () Bool)

(declare-fun e!115094 () Bool)

(assert (=> d!53093 (=> res!82686 e!115094)))

(assert (=> d!53093 (= res!82686 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 thiss!1248))))))

(assert (=> d!53093 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)) e!115094)))

(declare-fun b!174281 () Bool)

(assert (=> b!174281 (= e!115094 e!115095)))

(declare-fun c!31176 () Bool)

(assert (=> b!174281 (= c!31176 (validKeyInArray!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!174282 () Bool)

(declare-fun e!115096 () Bool)

(assert (=> b!174282 (= e!115096 call!17662)))

(declare-fun bm!17659 () Bool)

(assert (=> bm!17659 (= call!17662 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)))))

(declare-fun b!174283 () Bool)

(assert (=> b!174283 (= e!115095 e!115096)))

(declare-fun lt!86278 () (_ BitVec 64))

(assert (=> b!174283 (= lt!86278 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!86279 () Unit!5311)

(assert (=> b!174283 (= lt!86279 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5439 thiss!1248) lt!86278 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!174283 (arrayContainsKey!0 (_keys!5439 thiss!1248) lt!86278 #b00000000000000000000000000000000)))

(declare-fun lt!86277 () Unit!5311)

(assert (=> b!174283 (= lt!86277 lt!86279)))

(declare-fun res!82685 () Bool)

(assert (=> b!174283 (= res!82685 (= (seekEntryOrOpen!0 (select (arr!3466 (_keys!5439 thiss!1248)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!5439 thiss!1248) (mask!8470 thiss!1248)) (Found!552 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!174283 (=> (not res!82685) (not e!115096))))

(assert (= (and d!53093 (not res!82686)) b!174281))

(assert (= (and b!174281 c!31176) b!174283))

(assert (= (and b!174281 (not c!31176)) b!174280))

(assert (= (and b!174283 res!82685) b!174282))

(assert (= (or b!174282 b!174280) bm!17659))

(assert (=> b!174281 m!202435))

(assert (=> b!174281 m!202435))

(assert (=> b!174281 m!202445))

(declare-fun m!203293 () Bool)

(assert (=> bm!17659 m!203293))

(assert (=> b!174283 m!202435))

(declare-fun m!203295 () Bool)

(assert (=> b!174283 m!203295))

(declare-fun m!203297 () Bool)

(assert (=> b!174283 m!203297))

(assert (=> b!174283 m!202435))

(declare-fun m!203299 () Bool)

(assert (=> b!174283 m!203299))

(assert (=> bm!17596 d!53093))

(declare-fun d!53095 () Bool)

(assert (=> d!53095 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) (v!3952 (getValueByKey!184 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52657 d!53095))

(assert (=> d!52657 d!52765))

(assert (=> d!52613 d!52633))

(assert (=> d!52613 d!52621))

(declare-fun d!53097 () Bool)

(assert (=> d!53097 (contains!1153 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))) lt!85844)))

(assert (=> d!53097 true))

(declare-fun _$35!411 () Unit!5311)

(assert (=> d!53097 (= (choose!938 lt!85845 lt!85843 (zeroValue!3439 thiss!1248) lt!85844) _$35!411)))

(declare-fun bs!7205 () Bool)

(assert (= bs!7205 d!53097))

(assert (=> bs!7205 m!201811))

(assert (=> bs!7205 m!201811))

(assert (=> bs!7205 m!201821))

(assert (=> d!52613 d!53097))

(declare-fun d!53099 () Bool)

(declare-fun e!115097 () Bool)

(assert (=> d!53099 e!115097))

(declare-fun res!82687 () Bool)

(assert (=> d!53099 (=> res!82687 e!115097)))

(declare-fun lt!86280 () Bool)

(assert (=> d!53099 (= res!82687 (not lt!86280))))

(declare-fun lt!86282 () Bool)

(assert (=> d!53099 (= lt!86280 lt!86282)))

(declare-fun lt!86283 () Unit!5311)

(declare-fun e!115098 () Unit!5311)

(assert (=> d!53099 (= lt!86283 e!115098)))

(declare-fun c!31177 () Bool)

(assert (=> d!53099 (= c!31177 lt!86282)))

(assert (=> d!53099 (= lt!86282 (containsKey!188 (toList!1104 lt!85845) lt!85844))))

(assert (=> d!53099 (= (contains!1153 lt!85845 lt!85844) lt!86280)))

(declare-fun b!174285 () Bool)

(declare-fun lt!86281 () Unit!5311)

(assert (=> b!174285 (= e!115098 lt!86281)))

(assert (=> b!174285 (= lt!86281 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85845) lt!85844))))

(assert (=> b!174285 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85845) lt!85844))))

(declare-fun b!174286 () Bool)

(declare-fun Unit!5352 () Unit!5311)

(assert (=> b!174286 (= e!115098 Unit!5352)))

(declare-fun b!174287 () Bool)

(assert (=> b!174287 (= e!115097 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85845) lt!85844)))))

(assert (= (and d!53099 c!31177) b!174285))

(assert (= (and d!53099 (not c!31177)) b!174286))

(assert (= (and d!53099 (not res!82687)) b!174287))

(declare-fun m!203301 () Bool)

(assert (=> d!53099 m!203301))

(declare-fun m!203303 () Bool)

(assert (=> b!174285 m!203303))

(declare-fun m!203305 () Bool)

(assert (=> b!174285 m!203305))

(assert (=> b!174285 m!203305))

(declare-fun m!203307 () Bool)

(assert (=> b!174285 m!203307))

(assert (=> b!174287 m!203305))

(assert (=> b!174287 m!203305))

(assert (=> b!174287 m!203307))

(assert (=> d!52613 d!53099))

(assert (=> d!52677 d!52777))

(assert (=> b!173543 d!52865))

(assert (=> b!173543 d!52867))

(declare-fun d!53101 () Bool)

(declare-fun res!82688 () Bool)

(declare-fun e!115099 () Bool)

(assert (=> d!53101 (=> res!82688 e!115099)))

(assert (=> d!53101 (= res!82688 (and ((_ is Cons!2222) (toList!1104 lt!85813)) (= (_1!1628 (h!2839 (toList!1104 lt!85813))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!53101 (= (containsKey!188 (toList!1104 lt!85813) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) e!115099)))

(declare-fun b!174288 () Bool)

(declare-fun e!115100 () Bool)

(assert (=> b!174288 (= e!115099 e!115100)))

(declare-fun res!82689 () Bool)

(assert (=> b!174288 (=> (not res!82689) (not e!115100))))

(assert (=> b!174288 (= res!82689 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85813))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85813))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) ((_ is Cons!2222) (toList!1104 lt!85813)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85813))) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun b!174289 () Bool)

(assert (=> b!174289 (= e!115100 (containsKey!188 (t!7041 (toList!1104 lt!85813)) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53101 (not res!82688)) b!174288))

(assert (= (and b!174288 res!82689) b!174289))

(assert (=> b!174289 m!201715))

(declare-fun m!203309 () Bool)

(assert (=> b!174289 m!203309))

(assert (=> d!52579 d!53101))

(declare-fun b!174290 () Bool)

(declare-fun e!115101 () Option!190)

(assert (=> b!174290 (= e!115101 (Some!189 (_2!1628 (h!2839 (t!7041 lt!85878)))))))

(declare-fun b!174293 () Bool)

(declare-fun e!115102 () Option!190)

(assert (=> b!174293 (= e!115102 None!188)))

(declare-fun b!174291 () Bool)

(assert (=> b!174291 (= e!115101 e!115102)))

(declare-fun c!31179 () Bool)

(assert (=> b!174291 (= c!31179 (and ((_ is Cons!2222) (t!7041 lt!85878)) (not (= (_1!1628 (h!2839 (t!7041 lt!85878))) (_1!1628 (tuple2!3237 key!828 v!309))))))))

(declare-fun b!174292 () Bool)

(assert (=> b!174292 (= e!115102 (getValueByKey!184 (t!7041 (t!7041 lt!85878)) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun d!53103 () Bool)

(declare-fun c!31178 () Bool)

(assert (=> d!53103 (= c!31178 (and ((_ is Cons!2222) (t!7041 lt!85878)) (= (_1!1628 (h!2839 (t!7041 lt!85878))) (_1!1628 (tuple2!3237 key!828 v!309)))))))

(assert (=> d!53103 (= (getValueByKey!184 (t!7041 lt!85878) (_1!1628 (tuple2!3237 key!828 v!309))) e!115101)))

(assert (= (and d!53103 c!31178) b!174290))

(assert (= (and d!53103 (not c!31178)) b!174291))

(assert (= (and b!174291 c!31179) b!174292))

(assert (= (and b!174291 (not c!31179)) b!174293))

(declare-fun m!203311 () Bool)

(assert (=> b!174292 m!203311))

(assert (=> b!173625 d!53103))

(declare-fun d!53105 () Bool)

(declare-fun res!82690 () Bool)

(declare-fun e!115103 () Bool)

(assert (=> d!53105 (=> res!82690 e!115103)))

(assert (=> d!53105 (= res!82690 (and ((_ is Cons!2222) (toList!1104 lt!85839)) (= (_1!1628 (h!2839 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!53105 (= (containsKey!188 (toList!1104 lt!85839) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!115103)))

(declare-fun b!174294 () Bool)

(declare-fun e!115104 () Bool)

(assert (=> b!174294 (= e!115103 e!115104)))

(declare-fun res!82691 () Bool)

(assert (=> b!174294 (=> (not res!82691) (not e!115104))))

(assert (=> b!174294 (= res!82691 (and (or (not ((_ is Cons!2222) (toList!1104 lt!85839))) (bvsle (_1!1628 (h!2839 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2222) (toList!1104 lt!85839)) (bvslt (_1!1628 (h!2839 (toList!1104 lt!85839))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174295 () Bool)

(assert (=> b!174295 (= e!115104 (containsKey!188 (t!7041 (toList!1104 lt!85839)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!53105 (not res!82690)) b!174294))

(assert (= (and b!174294 res!82691) b!174295))

(declare-fun m!203313 () Bool)

(assert (=> b!174295 m!203313))

(assert (=> d!52581 d!53105))

(declare-fun d!53107 () Bool)

(assert (=> d!53107 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!86284 () Unit!5311)

(assert (=> d!53107 (= lt!86284 (choose!940 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115105 () Bool)

(assert (=> d!53107 e!115105))

(declare-fun res!82692 () Bool)

(assert (=> d!53107 (=> (not res!82692) (not e!115105))))

(assert (=> d!53107 (= res!82692 (isStrictlySorted!327 (toList!1104 lt!85813)))))

(assert (=> d!53107 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000) lt!86284)))

(declare-fun b!174296 () Bool)

(assert (=> b!174296 (= e!115105 (containsKey!188 (toList!1104 lt!85813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!53107 res!82692) b!174296))

(assert (=> d!53107 m!202293))

(assert (=> d!53107 m!202293))

(assert (=> d!53107 m!202295))

(declare-fun m!203315 () Bool)

(assert (=> d!53107 m!203315))

(assert (=> d!53107 m!203113))

(assert (=> b!174296 m!202289))

(assert (=> b!173670 d!53107))

(assert (=> b!173670 d!52927))

(assert (=> b!173670 d!52711))

(declare-fun d!53109 () Bool)

(declare-fun res!82693 () Bool)

(declare-fun e!115106 () Bool)

(assert (=> d!53109 (=> res!82693 e!115106)))

(assert (=> d!53109 (= res!82693 (or ((_ is Nil!2223) lt!86014) ((_ is Nil!2223) (t!7041 lt!86014))))))

(assert (=> d!53109 (= (isStrictlySorted!327 lt!86014) e!115106)))

(declare-fun b!174297 () Bool)

(declare-fun e!115107 () Bool)

(assert (=> b!174297 (= e!115106 e!115107)))

(declare-fun res!82694 () Bool)

(assert (=> b!174297 (=> (not res!82694) (not e!115107))))

(assert (=> b!174297 (= res!82694 (bvslt (_1!1628 (h!2839 lt!86014)) (_1!1628 (h!2839 (t!7041 lt!86014)))))))

(declare-fun b!174298 () Bool)

(assert (=> b!174298 (= e!115107 (isStrictlySorted!327 (t!7041 lt!86014)))))

(assert (= (and d!53109 (not res!82693)) b!174297))

(assert (= (and b!174297 res!82694) b!174298))

(declare-fun m!203317 () Bool)

(assert (=> b!174298 m!203317))

(assert (=> d!52653 d!53109))

(declare-fun d!53111 () Bool)

(declare-fun res!82695 () Bool)

(declare-fun e!115108 () Bool)

(assert (=> d!53111 (=> res!82695 e!115108)))

(assert (=> d!53111 (= res!82695 (or ((_ is Nil!2223) (toList!1104 (map!1881 thiss!1248))) ((_ is Nil!2223) (t!7041 (toList!1104 (map!1881 thiss!1248))))))))

(assert (=> d!53111 (= (isStrictlySorted!327 (toList!1104 (map!1881 thiss!1248))) e!115108)))

(declare-fun b!174299 () Bool)

(declare-fun e!115109 () Bool)

(assert (=> b!174299 (= e!115108 e!115109)))

(declare-fun res!82696 () Bool)

(assert (=> b!174299 (=> (not res!82696) (not e!115109))))

(assert (=> b!174299 (= res!82696 (bvslt (_1!1628 (h!2839 (toList!1104 (map!1881 thiss!1248)))) (_1!1628 (h!2839 (t!7041 (toList!1104 (map!1881 thiss!1248)))))))))

(declare-fun b!174300 () Bool)

(assert (=> b!174300 (= e!115109 (isStrictlySorted!327 (t!7041 (toList!1104 (map!1881 thiss!1248)))))))

(assert (= (and d!53111 (not res!82695)) b!174299))

(assert (= (and b!174299 res!82696) b!174300))

(assert (=> b!174300 m!202925))

(assert (=> d!52653 d!53111))

(assert (=> d!52553 d!52555))

(assert (=> d!52553 d!52567))

(declare-fun d!53113 () Bool)

(assert (=> d!53113 (contains!1153 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))) lt!85810)))

(assert (=> d!53113 true))

(declare-fun _$35!412 () Unit!5311)

(assert (=> d!53113 (= (choose!938 lt!85811 lt!85809 (zeroValue!3439 thiss!1248) lt!85810) _$35!412)))

(declare-fun bs!7206 () Bool)

(assert (= bs!7206 d!53113))

(assert (=> bs!7206 m!201751))

(assert (=> bs!7206 m!201751))

(assert (=> bs!7206 m!201761))

(assert (=> d!52553 d!53113))

(declare-fun d!53115 () Bool)

(declare-fun e!115110 () Bool)

(assert (=> d!53115 e!115110))

(declare-fun res!82697 () Bool)

(assert (=> d!53115 (=> res!82697 e!115110)))

(declare-fun lt!86285 () Bool)

(assert (=> d!53115 (= res!82697 (not lt!86285))))

(declare-fun lt!86287 () Bool)

(assert (=> d!53115 (= lt!86285 lt!86287)))

(declare-fun lt!86288 () Unit!5311)

(declare-fun e!115111 () Unit!5311)

(assert (=> d!53115 (= lt!86288 e!115111)))

(declare-fun c!31180 () Bool)

(assert (=> d!53115 (= c!31180 lt!86287)))

(assert (=> d!53115 (= lt!86287 (containsKey!188 (toList!1104 lt!85811) lt!85810))))

(assert (=> d!53115 (= (contains!1153 lt!85811 lt!85810) lt!86285)))

(declare-fun b!174301 () Bool)

(declare-fun lt!86286 () Unit!5311)

(assert (=> b!174301 (= e!115111 lt!86286)))

(assert (=> b!174301 (= lt!86286 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85811) lt!85810))))

(assert (=> b!174301 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85811) lt!85810))))

(declare-fun b!174302 () Bool)

(declare-fun Unit!5353 () Unit!5311)

(assert (=> b!174302 (= e!115111 Unit!5353)))

(declare-fun b!174303 () Bool)

(assert (=> b!174303 (= e!115110 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85811) lt!85810)))))

(assert (= (and d!53115 c!31180) b!174301))

(assert (= (and d!53115 (not c!31180)) b!174302))

(assert (= (and d!53115 (not res!82697)) b!174303))

(declare-fun m!203319 () Bool)

(assert (=> d!53115 m!203319))

(declare-fun m!203321 () Bool)

(assert (=> b!174301 m!203321))

(declare-fun m!203323 () Bool)

(assert (=> b!174301 m!203323))

(assert (=> b!174301 m!203323))

(declare-fun m!203325 () Bool)

(assert (=> b!174301 m!203325))

(assert (=> b!174303 m!203323))

(assert (=> b!174303 m!203323))

(assert (=> b!174303 m!203325))

(assert (=> d!52553 d!53115))

(declare-fun d!53117 () Bool)

(declare-fun res!82698 () Bool)

(declare-fun e!115112 () Bool)

(assert (=> d!53117 (=> res!82698 e!115112)))

(assert (=> d!53117 (= res!82698 (or ((_ is Nil!2223) lt!85957) ((_ is Nil!2223) (t!7041 lt!85957))))))

(assert (=> d!53117 (= (isStrictlySorted!327 lt!85957) e!115112)))

(declare-fun b!174304 () Bool)

(declare-fun e!115113 () Bool)

(assert (=> b!174304 (= e!115112 e!115113)))

(declare-fun res!82699 () Bool)

(assert (=> b!174304 (=> (not res!82699) (not e!115113))))

(assert (=> b!174304 (= res!82699 (bvslt (_1!1628 (h!2839 lt!85957)) (_1!1628 (h!2839 (t!7041 lt!85957)))))))

(declare-fun b!174305 () Bool)

(assert (=> b!174305 (= e!115113 (isStrictlySorted!327 (t!7041 lt!85957)))))

(assert (= (and d!53117 (not res!82698)) b!174304))

(assert (= (and b!174304 res!82699) b!174305))

(declare-fun m!203327 () Bool)

(assert (=> b!174305 m!203327))

(assert (=> d!52587 d!53117))

(declare-fun d!53119 () Bool)

(declare-fun res!82700 () Bool)

(declare-fun e!115114 () Bool)

(assert (=> d!53119 (=> res!82700 e!115114)))

(assert (=> d!53119 (= res!82700 (or ((_ is Nil!2223) (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) ((_ is Nil!2223) (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))))))

(assert (=> d!53119 (= (isStrictlySorted!327 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) e!115114)))

(declare-fun b!174306 () Bool)

(declare-fun e!115115 () Bool)

(assert (=> b!174306 (= e!115114 e!115115)))

(declare-fun res!82701 () Bool)

(assert (=> b!174306 (=> (not res!82701) (not e!115115))))

(assert (=> b!174306 (= res!82701 (bvslt (_1!1628 (h!2839 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (_1!1628 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))))))))

(declare-fun b!174307 () Bool)

(assert (=> b!174307 (= e!115115 (isStrictlySorted!327 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))))))

(assert (= (and d!53119 (not res!82700)) b!174306))

(assert (= (and b!174306 res!82701) b!174307))

(declare-fun m!203329 () Bool)

(assert (=> b!174307 m!203329))

(assert (=> d!52587 d!53119))

(assert (=> b!173615 d!52705))

(declare-fun d!53121 () Bool)

(declare-fun e!115116 () Bool)

(assert (=> d!53121 e!115116))

(declare-fun res!82702 () Bool)

(assert (=> d!53121 (=> res!82702 e!115116)))

(declare-fun lt!86289 () Bool)

(assert (=> d!53121 (= res!82702 (not lt!86289))))

(declare-fun lt!86291 () Bool)

(assert (=> d!53121 (= lt!86289 lt!86291)))

(declare-fun lt!86292 () Unit!5311)

(declare-fun e!115117 () Unit!5311)

(assert (=> d!53121 (= lt!86292 e!115117)))

(declare-fun c!31181 () Bool)

(assert (=> d!53121 (= c!31181 lt!86291)))

(assert (=> d!53121 (= lt!86291 (containsKey!188 (toList!1104 lt!85822) lt!85816))))

(assert (=> d!53121 (= (contains!1153 lt!85822 lt!85816) lt!86289)))

(declare-fun b!174308 () Bool)

(declare-fun lt!86290 () Unit!5311)

(assert (=> b!174308 (= e!115117 lt!86290)))

(assert (=> b!174308 (= lt!86290 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85822) lt!85816))))

(assert (=> b!174308 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85822) lt!85816))))

(declare-fun b!174309 () Bool)

(declare-fun Unit!5354 () Unit!5311)

(assert (=> b!174309 (= e!115117 Unit!5354)))

(declare-fun b!174310 () Bool)

(assert (=> b!174310 (= e!115116 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85822) lt!85816)))))

(assert (= (and d!53121 c!31181) b!174308))

(assert (= (and d!53121 (not c!31181)) b!174309))

(assert (= (and d!53121 (not res!82702)) b!174310))

(declare-fun m!203331 () Bool)

(assert (=> d!53121 m!203331))

(declare-fun m!203333 () Bool)

(assert (=> b!174308 m!203333))

(assert (=> b!174308 m!201895))

(assert (=> b!174308 m!201895))

(declare-fun m!203335 () Bool)

(assert (=> b!174308 m!203335))

(assert (=> b!174310 m!201895))

(assert (=> b!174310 m!201895))

(assert (=> b!174310 m!203335))

(assert (=> d!52543 d!53121))

(declare-fun d!53123 () Bool)

(assert (=> d!53123 (= (apply!130 (+!241 lt!85822 (tuple2!3237 lt!85826 (minValue!3441 thiss!1248))) lt!85816) (apply!130 lt!85822 lt!85816))))

(assert (=> d!53123 true))

(declare-fun _$34!1055 () Unit!5311)

(assert (=> d!53123 (= (choose!937 lt!85822 lt!85826 (minValue!3441 thiss!1248) lt!85816) _$34!1055)))

(declare-fun bs!7207 () Bool)

(assert (= bs!7207 d!53123))

(assert (=> bs!7207 m!201745))

(assert (=> bs!7207 m!201745))

(assert (=> bs!7207 m!201749))

(assert (=> bs!7207 m!201755))

(assert (=> d!52543 d!53123))

(assert (=> d!52543 d!52557))

(assert (=> d!52543 d!52545))

(assert (=> d!52543 d!52565))

(declare-fun d!53125 () Bool)

(declare-fun e!115118 () Bool)

(assert (=> d!53125 e!115118))

(declare-fun res!82703 () Bool)

(assert (=> d!53125 (=> res!82703 e!115118)))

(declare-fun lt!86293 () Bool)

(assert (=> d!53125 (= res!82703 (not lt!86293))))

(declare-fun lt!86295 () Bool)

(assert (=> d!53125 (= lt!86293 lt!86295)))

(declare-fun lt!86296 () Unit!5311)

(declare-fun e!115119 () Unit!5311)

(assert (=> d!53125 (= lt!86296 e!115119)))

(declare-fun c!31182 () Bool)

(assert (=> d!53125 (= c!31182 lt!86295)))

(assert (=> d!53125 (= lt!86295 (containsKey!188 (toList!1104 lt!86040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53125 (= (contains!1153 lt!86040 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86293)))

(declare-fun b!174311 () Bool)

(declare-fun lt!86294 () Unit!5311)

(assert (=> b!174311 (= e!115119 lt!86294)))

(assert (=> b!174311 (= lt!86294 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!86040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174311 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174312 () Bool)

(declare-fun Unit!5355 () Unit!5311)

(assert (=> b!174312 (= e!115119 Unit!5355)))

(declare-fun b!174313 () Bool)

(assert (=> b!174313 (= e!115118 (isDefined!138 (getValueByKey!184 (toList!1104 lt!86040) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53125 c!31182) b!174311))

(assert (= (and d!53125 (not c!31182)) b!174312))

(assert (= (and d!53125 (not res!82703)) b!174313))

(declare-fun m!203337 () Bool)

(assert (=> d!53125 m!203337))

(declare-fun m!203339 () Bool)

(assert (=> b!174311 m!203339))

(assert (=> b!174311 m!202801))

(assert (=> b!174311 m!202801))

(declare-fun m!203341 () Bool)

(assert (=> b!174311 m!203341))

(assert (=> b!174313 m!202801))

(assert (=> b!174313 m!202801))

(assert (=> b!174313 m!203341))

(assert (=> bm!17611 d!53125))

(declare-fun d!53127 () Bool)

(assert (=> d!53127 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))) (v!3952 (getValueByKey!184 (toList!1104 lt!85847) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (=> d!52533 d!53127))

(assert (=> d!52533 d!52887))

(declare-fun d!53129 () Bool)

(declare-fun e!115120 () Bool)

(assert (=> d!53129 e!115120))

(declare-fun res!82704 () Bool)

(assert (=> d!53129 (=> res!82704 e!115120)))

(declare-fun lt!86297 () Bool)

(assert (=> d!53129 (= res!82704 (not lt!86297))))

(declare-fun lt!86299 () Bool)

(assert (=> d!53129 (= lt!86297 lt!86299)))

(declare-fun lt!86300 () Unit!5311)

(declare-fun e!115121 () Unit!5311)

(assert (=> d!53129 (= lt!86300 e!115121)))

(declare-fun c!31183 () Bool)

(assert (=> d!53129 (= c!31183 lt!86299)))

(assert (=> d!53129 (= lt!86299 (containsKey!188 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!53129 (= (contains!1153 lt!85884 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!86297)))

(declare-fun b!174314 () Bool)

(declare-fun lt!86298 () Unit!5311)

(assert (=> b!174314 (= e!115121 lt!86298)))

(assert (=> b!174314 (= lt!86298 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> b!174314 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174315 () Bool)

(declare-fun Unit!5356 () Unit!5311)

(assert (=> b!174315 (= e!115121 Unit!5356)))

(declare-fun b!174316 () Bool)

(assert (=> b!174316 (= e!115120 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85884) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (= (and d!53129 c!31183) b!174314))

(assert (= (and d!53129 (not c!31183)) b!174315))

(assert (= (and d!53129 (not res!82704)) b!174316))

(declare-fun m!203343 () Bool)

(assert (=> d!53129 m!203343))

(declare-fun m!203345 () Bool)

(assert (=> b!174314 m!203345))

(assert (=> b!174314 m!201875))

(assert (=> b!174314 m!201875))

(declare-fun m!203347 () Bool)

(assert (=> b!174314 m!203347))

(assert (=> b!174316 m!201875))

(assert (=> b!174316 m!201875))

(assert (=> b!174316 m!203347))

(assert (=> d!52539 d!53129))

(declare-fun b!174317 () Bool)

(declare-fun e!115122 () Option!190)

(assert (=> b!174317 (= e!115122 (Some!189 (_2!1628 (h!2839 lt!85885))))))

(declare-fun b!174320 () Bool)

(declare-fun e!115123 () Option!190)

(assert (=> b!174320 (= e!115123 None!188)))

(declare-fun b!174318 () Bool)

(assert (=> b!174318 (= e!115122 e!115123)))

(declare-fun c!31185 () Bool)

(assert (=> b!174318 (= c!31185 (and ((_ is Cons!2222) lt!85885) (not (= (_1!1628 (h!2839 lt!85885)) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))))

(declare-fun b!174319 () Bool)

(assert (=> b!174319 (= e!115123 (getValueByKey!184 (t!7041 lt!85885) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun d!53131 () Bool)

(declare-fun c!31184 () Bool)

(assert (=> d!53131 (= c!31184 (and ((_ is Cons!2222) lt!85885) (= (_1!1628 (h!2839 lt!85885)) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (=> d!53131 (= (getValueByKey!184 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) e!115122)))

(assert (= (and d!53131 c!31184) b!174317))

(assert (= (and d!53131 (not c!31184)) b!174318))

(assert (= (and b!174318 c!31185) b!174319))

(assert (= (and b!174318 (not c!31185)) b!174320))

(declare-fun m!203349 () Bool)

(assert (=> b!174319 m!203349))

(assert (=> d!52539 d!53131))

(declare-fun d!53133 () Bool)

(assert (=> d!53133 (= (getValueByKey!184 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) (Some!189 (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun lt!86301 () Unit!5311)

(assert (=> d!53133 (= lt!86301 (choose!939 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!115124 () Bool)

(assert (=> d!53133 e!115124))

(declare-fun res!82705 () Bool)

(assert (=> d!53133 (=> (not res!82705) (not e!115124))))

(assert (=> d!53133 (= res!82705 (isStrictlySorted!327 lt!85885))))

(assert (=> d!53133 (= (lemmaContainsTupThenGetReturnValue!99 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!86301)))

(declare-fun b!174321 () Bool)

(declare-fun res!82706 () Bool)

(assert (=> b!174321 (=> (not res!82706) (not e!115124))))

(assert (=> b!174321 (= res!82706 (containsKey!188 lt!85885 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174322 () Bool)

(assert (=> b!174322 (= e!115124 (contains!1154 lt!85885 (tuple2!3237 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (= (and d!53133 res!82705) b!174321))

(assert (= (and b!174321 res!82706) b!174322))

(assert (=> d!53133 m!201869))

(declare-fun m!203351 () Bool)

(assert (=> d!53133 m!203351))

(declare-fun m!203353 () Bool)

(assert (=> d!53133 m!203353))

(declare-fun m!203355 () Bool)

(assert (=> b!174321 m!203355))

(declare-fun m!203357 () Bool)

(assert (=> b!174322 m!203357))

(assert (=> d!52539 d!53133))

(declare-fun bm!17661 () Bool)

(declare-fun call!17665 () List!2226)

(declare-fun call!17663 () List!2226)

(assert (=> bm!17661 (= call!17665 call!17663)))

(declare-fun b!174323 () Bool)

(declare-fun c!31189 () Bool)

(declare-fun c!31187 () Bool)

(declare-fun e!115128 () List!2226)

(assert (=> b!174323 (= e!115128 (ite c!31187 (t!7041 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (ite c!31189 (Cons!2222 (h!2839 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (t!7041 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))))) Nil!2223)))))

(declare-fun b!174324 () Bool)

(declare-fun res!82707 () Bool)

(declare-fun e!115129 () Bool)

(assert (=> b!174324 (=> (not res!82707) (not e!115129))))

(declare-fun lt!86302 () List!2226)

(assert (=> b!174324 (= res!82707 (containsKey!188 lt!86302 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174325 () Bool)

(declare-fun e!115126 () List!2226)

(assert (=> b!174325 (= e!115126 call!17663)))

(declare-fun b!174326 () Bool)

(assert (=> b!174326 (= c!31189 (and ((_ is Cons!2222) (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (bvsgt (_1!1628 (h!2839 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun e!115127 () List!2226)

(declare-fun e!115125 () List!2226)

(assert (=> b!174326 (= e!115127 e!115125)))

(declare-fun b!174327 () Bool)

(declare-fun call!17664 () List!2226)

(assert (=> b!174327 (= e!115125 call!17664)))

(declare-fun b!174328 () Bool)

(assert (=> b!174328 (= e!115125 call!17664)))

(declare-fun b!174329 () Bool)

(assert (=> b!174329 (= e!115126 e!115127)))

(assert (=> b!174329 (= c!31187 (and ((_ is Cons!2222) (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (= (_1!1628 (h!2839 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!31186 () Bool)

(declare-fun bm!17660 () Bool)

(assert (=> bm!17660 (= call!17663 ($colon$colon!97 e!115128 (ite c!31186 (h!2839 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (tuple2!3237 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))))

(declare-fun c!31188 () Bool)

(assert (=> bm!17660 (= c!31188 c!31186)))

(declare-fun d!53135 () Bool)

(assert (=> d!53135 e!115129))

(declare-fun res!82708 () Bool)

(assert (=> d!53135 (=> (not res!82708) (not e!115129))))

(assert (=> d!53135 (= res!82708 (isStrictlySorted!327 lt!86302))))

(assert (=> d!53135 (= lt!86302 e!115126)))

(assert (=> d!53135 (= c!31186 (and ((_ is Cons!2222) (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (bvslt (_1!1628 (h!2839 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (=> d!53135 (isStrictlySorted!327 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))))))

(assert (=> d!53135 (= (insertStrictlySorted!101 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) lt!86302)))

(declare-fun bm!17662 () Bool)

(assert (=> bm!17662 (= call!17664 call!17665)))

(declare-fun b!174330 () Bool)

(assert (=> b!174330 (= e!115127 call!17665)))

(declare-fun b!174331 () Bool)

(assert (=> b!174331 (= e!115128 (insertStrictlySorted!101 (t!7041 (toList!1104 (ite c!30896 call!17580 (ite c!30899 call!17579 call!17583)))) (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174332 () Bool)

(assert (=> b!174332 (= e!115129 (contains!1154 lt!86302 (tuple2!3237 (_1!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) (_2!1628 (ite (or c!30896 c!30899) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(assert (= (and d!53135 c!31186) b!174325))

(assert (= (and d!53135 (not c!31186)) b!174329))

(assert (= (and b!174329 c!31187) b!174330))

(assert (= (and b!174329 (not c!31187)) b!174326))

(assert (= (and b!174326 c!31189) b!174327))

(assert (= (and b!174326 (not c!31189)) b!174328))

(assert (= (or b!174327 b!174328) bm!17662))

(assert (= (or b!174330 bm!17662) bm!17661))

(assert (= (or b!174325 bm!17661) bm!17660))

(assert (= (and bm!17660 c!31188) b!174331))

(assert (= (and bm!17660 (not c!31188)) b!174323))

(assert (= (and d!53135 res!82708) b!174324))

(assert (= (and b!174324 res!82707) b!174332))

(declare-fun m!203359 () Bool)

(assert (=> b!174332 m!203359))

(declare-fun m!203361 () Bool)

(assert (=> bm!17660 m!203361))

(declare-fun m!203363 () Bool)

(assert (=> b!174331 m!203363))

(declare-fun m!203365 () Bool)

(assert (=> b!174324 m!203365))

(declare-fun m!203367 () Bool)

(assert (=> d!53135 m!203367))

(declare-fun m!203369 () Bool)

(assert (=> d!53135 m!203369))

(assert (=> d!52539 d!53135))

(declare-fun d!53137 () Bool)

(declare-fun e!115130 () Bool)

(assert (=> d!53137 e!115130))

(declare-fun res!82709 () Bool)

(assert (=> d!53137 (=> res!82709 e!115130)))

(declare-fun lt!86303 () Bool)

(assert (=> d!53137 (= res!82709 (not lt!86303))))

(declare-fun lt!86305 () Bool)

(assert (=> d!53137 (= lt!86303 lt!86305)))

(declare-fun lt!86306 () Unit!5311)

(declare-fun e!115131 () Unit!5311)

(assert (=> d!53137 (= lt!86306 e!115131)))

(declare-fun c!31190 () Bool)

(assert (=> d!53137 (= c!31190 lt!86305)))

(assert (=> d!53137 (= lt!86305 (containsKey!188 (toList!1104 lt!85964) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53137 (= (contains!1153 lt!85964 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)) lt!86303)))

(declare-fun b!174333 () Bool)

(declare-fun lt!86304 () Unit!5311)

(assert (=> b!174333 (= e!115131 lt!86304)))

(assert (=> b!174333 (= lt!86304 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85964) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174333 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174334 () Bool)

(declare-fun Unit!5357 () Unit!5311)

(assert (=> b!174334 (= e!115131 Unit!5357)))

(declare-fun b!174335 () Bool)

(assert (=> b!174335 (= e!115130 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85964) (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53137 c!31190) b!174333))

(assert (= (and d!53137 (not c!31190)) b!174334))

(assert (= (and d!53137 (not res!82709)) b!174335))

(assert (=> d!53137 m!201715))

(declare-fun m!203371 () Bool)

(assert (=> d!53137 m!203371))

(assert (=> b!174333 m!201715))

(declare-fun m!203373 () Bool)

(assert (=> b!174333 m!203373))

(assert (=> b!174333 m!201715))

(assert (=> b!174333 m!202371))

(assert (=> b!174333 m!202371))

(declare-fun m!203375 () Bool)

(assert (=> b!174333 m!203375))

(assert (=> b!174335 m!201715))

(assert (=> b!174335 m!202371))

(assert (=> b!174335 m!202371))

(assert (=> b!174335 m!203375))

(assert (=> b!173546 d!53137))

(assert (=> b!173685 d!52693))

(declare-fun d!53139 () Bool)

(declare-fun res!82710 () Bool)

(declare-fun e!115132 () Bool)

(assert (=> d!53139 (=> res!82710 e!115132)))

(assert (=> d!53139 (= res!82710 (and ((_ is Cons!2222) lt!85957) (= (_1!1628 (h!2839 lt!85957)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!53139 (= (containsKey!188 lt!85957 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!115132)))

(declare-fun b!174336 () Bool)

(declare-fun e!115133 () Bool)

(assert (=> b!174336 (= e!115132 e!115133)))

(declare-fun res!82711 () Bool)

(assert (=> b!174336 (=> (not res!82711) (not e!115133))))

(assert (=> b!174336 (= res!82711 (and (or (not ((_ is Cons!2222) lt!85957)) (bvsle (_1!1628 (h!2839 lt!85957)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))) ((_ is Cons!2222) lt!85957) (bvslt (_1!1628 (h!2839 lt!85957)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun b!174337 () Bool)

(assert (=> b!174337 (= e!115133 (containsKey!188 (t!7041 lt!85957) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(assert (= (and d!53139 (not res!82710)) b!174336))

(assert (= (and b!174336 res!82711) b!174337))

(declare-fun m!203377 () Bool)

(assert (=> b!174337 m!203377))

(assert (=> b!173524 d!53139))

(declare-fun b!174338 () Bool)

(declare-fun e!115134 () Option!190)

(assert (=> b!174338 (= e!115134 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85933)))))))

(declare-fun b!174341 () Bool)

(declare-fun e!115135 () Option!190)

(assert (=> b!174341 (= e!115135 None!188)))

(declare-fun b!174339 () Bool)

(assert (=> b!174339 (= e!115134 e!115135)))

(declare-fun c!31192 () Bool)

(assert (=> b!174339 (= c!31192 (and ((_ is Cons!2222) (toList!1104 lt!85933)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85933))) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))))

(declare-fun b!174340 () Bool)

(assert (=> b!174340 (= e!115135 (getValueByKey!184 (t!7041 (toList!1104 lt!85933)) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))))))

(declare-fun c!31191 () Bool)

(declare-fun d!53141 () Bool)

(assert (=> d!53141 (= c!31191 (and ((_ is Cons!2222) (toList!1104 lt!85933)) (= (_1!1628 (h!2839 (toList!1104 lt!85933))) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53141 (= (getValueByKey!184 (toList!1104 lt!85933) (_1!1628 (tuple2!3237 lt!85821 (zeroValue!3439 thiss!1248)))) e!115134)))

(assert (= (and d!53141 c!31191) b!174338))

(assert (= (and d!53141 (not c!31191)) b!174339))

(assert (= (and b!174339 c!31192) b!174340))

(assert (= (and b!174339 (not c!31192)) b!174341))

(declare-fun m!203379 () Bool)

(assert (=> b!174340 m!203379))

(assert (=> b!173472 d!53141))

(assert (=> b!173619 d!52885))

(assert (=> b!173619 d!52887))

(assert (=> bm!17615 d!53047))

(declare-fun d!53143 () Bool)

(assert (=> d!53143 (= (apply!130 lt!86040 (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000)) (get!1970 (getValueByKey!184 (toList!1104 lt!86040) (select (arr!3466 (_keys!5439 lt!85751)) #b00000000000000000000000000000000))))))

(declare-fun bs!7208 () Bool)

(assert (= bs!7208 d!53143))

(assert (=> bs!7208 m!202201))

(assert (=> bs!7208 m!202637))

(assert (=> bs!7208 m!202637))

(declare-fun m!203381 () Bool)

(assert (=> bs!7208 m!203381))

(assert (=> b!173697 d!53143))

(declare-fun d!53145 () Bool)

(declare-fun c!31193 () Bool)

(assert (=> d!53145 (= c!31193 ((_ is ValueCellFull!1698) (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000)))))

(declare-fun e!115136 () V!5091)

(assert (=> d!53145 (= (get!1969 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000)) e!115136)))

(declare-fun b!174342 () Bool)

(assert (=> b!174342 (= e!115136 (get!1971 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!174343 () Bool)

(assert (=> b!174343 (= e!115136 (get!1972 (select (arr!3467 (_values!3581 lt!85751)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 lt!85751) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53145 c!31193) b!174342))

(assert (= (and d!53145 (not c!31193)) b!174343))

(assert (=> b!174342 m!202313))

(assert (=> b!174342 m!202315))

(declare-fun m!203383 () Bool)

(assert (=> b!174342 m!203383))

(assert (=> b!174343 m!202313))

(assert (=> b!174343 m!202315))

(declare-fun m!203385 () Bool)

(assert (=> b!174343 m!203385))

(assert (=> b!173697 d!53145))

(declare-fun d!53147 () Bool)

(declare-fun e!115137 () Bool)

(assert (=> d!53147 e!115137))

(declare-fun res!82712 () Bool)

(assert (=> d!53147 (=> (not res!82712) (not e!115137))))

(declare-fun lt!86308 () ListLongMap!2177)

(assert (=> d!53147 (= res!82712 (contains!1153 lt!86308 (_1!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))))

(declare-fun lt!86309 () List!2226)

(assert (=> d!53147 (= lt!86308 (ListLongMap!2178 lt!86309))))

(declare-fun lt!86310 () Unit!5311)

(declare-fun lt!86307 () Unit!5311)

(assert (=> d!53147 (= lt!86310 lt!86307)))

(assert (=> d!53147 (= (getValueByKey!184 lt!86309 (_1!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))) (Some!189 (_2!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))))

(assert (=> d!53147 (= lt!86307 (lemmaContainsTupThenGetReturnValue!99 lt!86309 (_1!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))) (_2!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))))

(assert (=> d!53147 (= lt!86309 (insertStrictlySorted!101 (toList!1104 (ite c!30980 call!17615 (ite c!30983 call!17614 call!17618))) (_1!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))) (_2!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))))))

(assert (=> d!53147 (= (+!241 (ite c!30980 call!17615 (ite c!30983 call!17614 call!17618)) (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))) lt!86308)))

(declare-fun b!174344 () Bool)

(declare-fun res!82713 () Bool)

(assert (=> b!174344 (=> (not res!82713) (not e!115137))))

(assert (=> b!174344 (= res!82713 (= (getValueByKey!184 (toList!1104 lt!86308) (_1!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751))))) (Some!189 (_2!1628 (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))))

(declare-fun b!174345 () Bool)

(assert (=> b!174345 (= e!115137 (contains!1154 (toList!1104 lt!86308) (ite (or c!30980 c!30983) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 lt!85751)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 lt!85751)))))))

(assert (= (and d!53147 res!82712) b!174344))

(assert (= (and b!174344 res!82713) b!174345))

(declare-fun m!203387 () Bool)

(assert (=> d!53147 m!203387))

(declare-fun m!203389 () Bool)

(assert (=> d!53147 m!203389))

(declare-fun m!203391 () Bool)

(assert (=> d!53147 m!203391))

(declare-fun m!203393 () Bool)

(assert (=> d!53147 m!203393))

(declare-fun m!203395 () Bool)

(assert (=> b!174344 m!203395))

(declare-fun m!203397 () Bool)

(assert (=> b!174345 m!203397))

(assert (=> bm!17610 d!53147))

(assert (=> b!173458 d!52941))

(declare-fun d!53149 () Bool)

(declare-fun lt!86311 () Bool)

(assert (=> d!53149 (= lt!86311 (select (content!148 (t!7041 (toList!1104 lt!85839))) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun e!115139 () Bool)

(assert (=> d!53149 (= lt!86311 e!115139)))

(declare-fun res!82715 () Bool)

(assert (=> d!53149 (=> (not res!82715) (not e!115139))))

(assert (=> d!53149 (= res!82715 ((_ is Cons!2222) (t!7041 (toList!1104 lt!85839))))))

(assert (=> d!53149 (= (contains!1154 (t!7041 (toList!1104 lt!85839)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) lt!86311)))

(declare-fun b!174346 () Bool)

(declare-fun e!115138 () Bool)

(assert (=> b!174346 (= e!115139 e!115138)))

(declare-fun res!82714 () Bool)

(assert (=> b!174346 (=> res!82714 e!115138)))

(assert (=> b!174346 (= res!82714 (= (h!2839 (t!7041 (toList!1104 lt!85839))) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(declare-fun b!174347 () Bool)

(assert (=> b!174347 (= e!115138 (contains!1154 (t!7041 (t!7041 (toList!1104 lt!85839))) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))

(assert (= (and d!53149 res!82715) b!174346))

(assert (= (and b!174346 (not res!82714)) b!174347))

(assert (=> d!53149 m!203119))

(declare-fun m!203399 () Bool)

(assert (=> d!53149 m!203399))

(declare-fun m!203401 () Bool)

(assert (=> b!174347 m!203401))

(assert (=> b!173652 d!53149))

(declare-fun d!53151 () Bool)

(assert (=> d!53151 (= (get!1970 (getValueByKey!184 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!85851)) (v!3952 (getValueByKey!184 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!85851)))))

(assert (=> d!52609 d!53151))

(declare-fun b!174348 () Bool)

(declare-fun e!115140 () Option!190)

(assert (=> b!174348 (= e!115140 (Some!189 (_2!1628 (h!2839 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))))))))

(declare-fun b!174351 () Bool)

(declare-fun e!115141 () Option!190)

(assert (=> b!174351 (= e!115141 None!188)))

(declare-fun b!174349 () Bool)

(assert (=> b!174349 (= e!115140 e!115141)))

(declare-fun c!31195 () Bool)

(assert (=> b!174349 (= c!31195 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))) (not (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))) lt!85851))))))

(declare-fun b!174350 () Bool)

(assert (=> b!174350 (= e!115141 (getValueByKey!184 (t!7041 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))) lt!85851))))

(declare-fun c!31194 () Bool)

(declare-fun d!53153 () Bool)

(assert (=> d!53153 (= c!31194 (and ((_ is Cons!2222) (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248))))) (= (_1!1628 (h!2839 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))))) lt!85851)))))

(assert (=> d!53153 (= (getValueByKey!184 (toList!1104 (+!241 lt!85862 (tuple2!3237 lt!85855 (zeroValue!3439 thiss!1248)))) lt!85851) e!115140)))

(assert (= (and d!53153 c!31194) b!174348))

(assert (= (and d!53153 (not c!31194)) b!174349))

(assert (= (and b!174349 c!31195) b!174350))

(assert (= (and b!174349 (not c!31195)) b!174351))

(declare-fun m!203403 () Bool)

(assert (=> b!174350 m!203403))

(assert (=> d!52609 d!53153))

(assert (=> d!52629 d!52611))

(declare-fun d!53155 () Bool)

(declare-fun e!115142 () Bool)

(assert (=> d!53155 e!115142))

(declare-fun res!82716 () Bool)

(assert (=> d!53155 (=> res!82716 e!115142)))

(declare-fun lt!86312 () Bool)

(assert (=> d!53155 (= res!82716 (not lt!86312))))

(declare-fun lt!86314 () Bool)

(assert (=> d!53155 (= lt!86312 lt!86314)))

(declare-fun lt!86315 () Unit!5311)

(declare-fun e!115143 () Unit!5311)

(assert (=> d!53155 (= lt!86315 e!115143)))

(declare-fun c!31196 () Bool)

(assert (=> d!53155 (= c!31196 lt!86314)))

(assert (=> d!53155 (= lt!86314 (containsKey!188 (toList!1104 lt!85856) lt!85850))))

(assert (=> d!53155 (= (contains!1153 lt!85856 lt!85850) lt!86312)))

(declare-fun b!174352 () Bool)

(declare-fun lt!86313 () Unit!5311)

(assert (=> b!174352 (= e!115143 lt!86313)))

(assert (=> b!174352 (= lt!86313 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85856) lt!85850))))

(assert (=> b!174352 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85856) lt!85850))))

(declare-fun b!174353 () Bool)

(declare-fun Unit!5358 () Unit!5311)

(assert (=> b!174353 (= e!115143 Unit!5358)))

(declare-fun b!174354 () Bool)

(assert (=> b!174354 (= e!115142 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85856) lt!85850)))))

(assert (= (and d!53155 c!31196) b!174352))

(assert (= (and d!53155 (not c!31196)) b!174353))

(assert (= (and d!53155 (not res!82716)) b!174354))

(declare-fun m!203405 () Bool)

(assert (=> d!53155 m!203405))

(declare-fun m!203407 () Bool)

(assert (=> b!174352 m!203407))

(assert (=> b!174352 m!202153))

(assert (=> b!174352 m!202153))

(declare-fun m!203409 () Bool)

(assert (=> b!174352 m!203409))

(assert (=> b!174354 m!202153))

(assert (=> b!174354 m!202153))

(assert (=> b!174354 m!203409))

(assert (=> d!52629 d!53155))

(assert (=> d!52629 d!52623))

(declare-fun d!53157 () Bool)

(assert (=> d!53157 (= (apply!130 (+!241 lt!85856 (tuple2!3237 lt!85860 v!309)) lt!85850) (apply!130 lt!85856 lt!85850))))

(assert (=> d!53157 true))

(declare-fun _$34!1056 () Unit!5311)

(assert (=> d!53157 (= (choose!937 lt!85856 lt!85860 v!309 lt!85850) _$34!1056)))

(declare-fun bs!7209 () Bool)

(assert (= bs!7209 d!53157))

(assert (=> bs!7209 m!201805))

(assert (=> bs!7209 m!201805))

(assert (=> bs!7209 m!201809))

(assert (=> bs!7209 m!201815))

(assert (=> d!52629 d!53157))

(assert (=> d!52629 d!52627))

(declare-fun d!53159 () Bool)

(declare-fun e!115144 () Bool)

(assert (=> d!53159 e!115144))

(declare-fun res!82717 () Bool)

(assert (=> d!53159 (=> res!82717 e!115144)))

(declare-fun lt!86316 () Bool)

(assert (=> d!53159 (= res!82717 (not lt!86316))))

(declare-fun lt!86318 () Bool)

(assert (=> d!53159 (= lt!86316 lt!86318)))

(declare-fun lt!86319 () Unit!5311)

(declare-fun e!115145 () Unit!5311)

(assert (=> d!53159 (= lt!86319 e!115145)))

(declare-fun c!31197 () Bool)

(assert (=> d!53159 (= c!31197 lt!86318)))

(assert (=> d!53159 (= lt!86318 (containsKey!188 (toList!1104 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963))) lt!85965))))

(assert (=> d!53159 (= (contains!1153 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963)) lt!85965) lt!86316)))

(declare-fun b!174355 () Bool)

(declare-fun lt!86317 () Unit!5311)

(assert (=> b!174355 (= e!115145 lt!86317)))

(assert (=> b!174355 (= lt!86317 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963))) lt!85965))))

(assert (=> b!174355 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963))) lt!85965))))

(declare-fun b!174356 () Bool)

(declare-fun Unit!5359 () Unit!5311)

(assert (=> b!174356 (= e!115145 Unit!5359)))

(declare-fun b!174357 () Bool)

(assert (=> b!174357 (= e!115144 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963))) lt!85965)))))

(assert (= (and d!53159 c!31197) b!174355))

(assert (= (and d!53159 (not c!31197)) b!174356))

(assert (= (and d!53159 (not res!82717)) b!174357))

(declare-fun m!203411 () Bool)

(assert (=> d!53159 m!203411))

(declare-fun m!203413 () Bool)

(assert (=> b!174355 m!203413))

(declare-fun m!203415 () Bool)

(assert (=> b!174355 m!203415))

(assert (=> b!174355 m!203415))

(declare-fun m!203417 () Bool)

(assert (=> b!174355 m!203417))

(assert (=> b!174357 m!203415))

(assert (=> b!174357 m!203415))

(assert (=> b!174357 m!203417))

(assert (=> b!173554 d!53159))

(declare-fun d!53161 () Bool)

(declare-fun e!115146 () Bool)

(assert (=> d!53161 e!115146))

(declare-fun res!82718 () Bool)

(assert (=> d!53161 (=> (not res!82718) (not e!115146))))

(declare-fun lt!86321 () ListLongMap!2177)

(assert (=> d!53161 (= res!82718 (contains!1153 lt!86321 (_1!1628 (tuple2!3237 lt!85967 lt!85963))))))

(declare-fun lt!86322 () List!2226)

(assert (=> d!53161 (= lt!86321 (ListLongMap!2178 lt!86322))))

(declare-fun lt!86323 () Unit!5311)

(declare-fun lt!86320 () Unit!5311)

(assert (=> d!53161 (= lt!86323 lt!86320)))

(assert (=> d!53161 (= (getValueByKey!184 lt!86322 (_1!1628 (tuple2!3237 lt!85967 lt!85963))) (Some!189 (_2!1628 (tuple2!3237 lt!85967 lt!85963))))))

(assert (=> d!53161 (= lt!86320 (lemmaContainsTupThenGetReturnValue!99 lt!86322 (_1!1628 (tuple2!3237 lt!85967 lt!85963)) (_2!1628 (tuple2!3237 lt!85967 lt!85963))))))

(assert (=> d!53161 (= lt!86322 (insertStrictlySorted!101 (toList!1104 lt!85968) (_1!1628 (tuple2!3237 lt!85967 lt!85963)) (_2!1628 (tuple2!3237 lt!85967 lt!85963))))))

(assert (=> d!53161 (= (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963)) lt!86321)))

(declare-fun b!174358 () Bool)

(declare-fun res!82719 () Bool)

(assert (=> b!174358 (=> (not res!82719) (not e!115146))))

(assert (=> b!174358 (= res!82719 (= (getValueByKey!184 (toList!1104 lt!86321) (_1!1628 (tuple2!3237 lt!85967 lt!85963))) (Some!189 (_2!1628 (tuple2!3237 lt!85967 lt!85963)))))))

(declare-fun b!174359 () Bool)

(assert (=> b!174359 (= e!115146 (contains!1154 (toList!1104 lt!86321) (tuple2!3237 lt!85967 lt!85963)))))

(assert (= (and d!53161 res!82718) b!174358))

(assert (= (and b!174358 res!82719) b!174359))

(declare-fun m!203419 () Bool)

(assert (=> d!53161 m!203419))

(declare-fun m!203421 () Bool)

(assert (=> d!53161 m!203421))

(declare-fun m!203423 () Bool)

(assert (=> d!53161 m!203423))

(declare-fun m!203425 () Bool)

(assert (=> d!53161 m!203425))

(declare-fun m!203427 () Bool)

(assert (=> b!174358 m!203427))

(declare-fun m!203429 () Bool)

(assert (=> b!174359 m!203429))

(assert (=> b!173554 d!53161))

(declare-fun d!53163 () Bool)

(declare-fun e!115147 () Bool)

(assert (=> d!53163 e!115147))

(declare-fun res!82720 () Bool)

(assert (=> d!53163 (=> (not res!82720) (not e!115147))))

(declare-fun lt!86325 () ListLongMap!2177)

(assert (=> d!53163 (= res!82720 (contains!1153 lt!86325 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!86326 () List!2226)

(assert (=> d!53163 (= lt!86325 (ListLongMap!2178 lt!86326))))

(declare-fun lt!86327 () Unit!5311)

(declare-fun lt!86324 () Unit!5311)

(assert (=> d!53163 (= lt!86327 lt!86324)))

(assert (=> d!53163 (= (getValueByKey!184 lt!86326 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!189 (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53163 (= lt!86324 (lemmaContainsTupThenGetReturnValue!99 lt!86326 (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53163 (= lt!86326 (insertStrictlySorted!101 (toList!1104 call!17596) (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53163 (= (+!241 call!17596 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!86325)))

(declare-fun b!174360 () Bool)

(declare-fun res!82721 () Bool)

(assert (=> b!174360 (=> (not res!82721) (not e!115147))))

(assert (=> b!174360 (= res!82721 (= (getValueByKey!184 (toList!1104 lt!86325) (_1!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!189 (_2!1628 (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!174361 () Bool)

(assert (=> b!174361 (= e!115147 (contains!1154 (toList!1104 lt!86325) (tuple2!3237 (select (arr!3466 (_keys!5439 thiss!1248)) #b00000000000000000000000000000000) (get!1969 (select (arr!3467 (_values!3581 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!468 (defaultEntry!3598 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!53163 res!82720) b!174360))

(assert (= (and b!174360 res!82721) b!174361))

(declare-fun m!203431 () Bool)

(assert (=> d!53163 m!203431))

(declare-fun m!203433 () Bool)

(assert (=> d!53163 m!203433))

(declare-fun m!203435 () Bool)

(assert (=> d!53163 m!203435))

(declare-fun m!203437 () Bool)

(assert (=> d!53163 m!203437))

(declare-fun m!203439 () Bool)

(assert (=> b!174360 m!203439))

(declare-fun m!203441 () Bool)

(assert (=> b!174361 m!203441))

(assert (=> b!173554 d!53163))

(declare-fun d!53165 () Bool)

(assert (=> d!53165 (not (contains!1153 (+!241 lt!85968 (tuple2!3237 lt!85967 lt!85963)) lt!85965))))

(declare-fun lt!86328 () Unit!5311)

(assert (=> d!53165 (= lt!86328 (choose!941 lt!85968 lt!85967 lt!85963 lt!85965))))

(declare-fun e!115148 () Bool)

(assert (=> d!53165 e!115148))

(declare-fun res!82722 () Bool)

(assert (=> d!53165 (=> (not res!82722) (not e!115148))))

(assert (=> d!53165 (= res!82722 (not (contains!1153 lt!85968 lt!85965)))))

(assert (=> d!53165 (= (addStillNotContains!74 lt!85968 lt!85967 lt!85963 lt!85965) lt!86328)))

(declare-fun b!174362 () Bool)

(assert (=> b!174362 (= e!115148 (not (= lt!85967 lt!85965)))))

(assert (= (and d!53165 res!82722) b!174362))

(assert (=> d!53165 m!202081))

(assert (=> d!53165 m!202081))

(assert (=> d!53165 m!202083))

(declare-fun m!203443 () Bool)

(assert (=> d!53165 m!203443))

(declare-fun m!203445 () Bool)

(assert (=> d!53165 m!203445))

(assert (=> b!173554 d!53165))

(assert (=> b!173554 d!52535))

(declare-fun b!174363 () Bool)

(declare-fun e!115149 () Option!190)

(assert (=> b!174363 (= e!115149 (Some!189 (_2!1628 (h!2839 (t!7041 lt!85840)))))))

(declare-fun b!174366 () Bool)

(declare-fun e!115150 () Option!190)

(assert (=> b!174366 (= e!115150 None!188)))

(declare-fun b!174364 () Bool)

(assert (=> b!174364 (= e!115149 e!115150)))

(declare-fun c!31199 () Bool)

(assert (=> b!174364 (= c!31199 (and ((_ is Cons!2222) (t!7041 lt!85840)) (not (= (_1!1628 (h!2839 (t!7041 lt!85840))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun b!174365 () Bool)

(assert (=> b!174365 (= e!115150 (getValueByKey!184 (t!7041 (t!7041 lt!85840)) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun d!53167 () Bool)

(declare-fun c!31198 () Bool)

(assert (=> d!53167 (= c!31198 (and ((_ is Cons!2222) (t!7041 lt!85840)) (= (_1!1628 (h!2839 (t!7041 lt!85840))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!53167 (= (getValueByKey!184 (t!7041 lt!85840) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) e!115149)))

(assert (= (and d!53167 c!31198) b!174363))

(assert (= (and d!53167 (not c!31198)) b!174364))

(assert (= (and b!174364 c!31199) b!174365))

(assert (= (and b!174364 (not c!31199)) b!174366))

(declare-fun m!203447 () Bool)

(assert (=> b!174365 m!203447))

(assert (=> b!173495 d!53167))

(declare-fun d!53169 () Bool)

(assert (=> d!53169 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(declare-fun lt!86329 () Unit!5311)

(assert (=> d!53169 (= lt!86329 (choose!940 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(declare-fun e!115151 () Bool)

(assert (=> d!53169 e!115151))

(declare-fun res!82723 () Bool)

(assert (=> d!53169 (=> (not res!82723) (not e!115151))))

(assert (=> d!53169 (= res!82723 (isStrictlySorted!327 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53169 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844) lt!86329)))

(declare-fun b!174367 () Bool)

(assert (=> b!174367 (= e!115151 (containsKey!188 (toList!1104 (+!241 lt!85845 (tuple2!3237 lt!85843 (zeroValue!3439 thiss!1248)))) lt!85844))))

(assert (= (and d!53169 res!82723) b!174367))

(assert (=> d!53169 m!202185))

(assert (=> d!53169 m!202185))

(assert (=> d!53169 m!202187))

(declare-fun m!203449 () Bool)

(assert (=> d!53169 m!203449))

(declare-fun m!203451 () Bool)

(assert (=> d!53169 m!203451))

(assert (=> b!174367 m!202181))

(assert (=> b!173581 d!53169))

(assert (=> b!173581 d!52945))

(assert (=> b!173581 d!52947))

(declare-fun d!53171 () Bool)

(assert (=> d!53171 (isDefined!138 (getValueByKey!184 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(declare-fun lt!86330 () Unit!5311)

(assert (=> d!53171 (= lt!86330 (choose!940 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(declare-fun e!115152 () Bool)

(assert (=> d!53171 e!115152))

(declare-fun res!82724 () Bool)

(assert (=> d!53171 (=> (not res!82724) (not e!115152))))

(assert (=> d!53171 (= res!82724 (isStrictlySorted!327 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248))))))))

(assert (=> d!53171 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810) lt!86330)))

(declare-fun b!174368 () Bool)

(assert (=> b!174368 (= e!115152 (containsKey!188 (toList!1104 (+!241 lt!85811 (tuple2!3237 lt!85809 (zeroValue!3439 thiss!1248)))) lt!85810))))

(assert (= (and d!53171 res!82724) b!174368))

(assert (=> d!53171 m!201935))

(assert (=> d!53171 m!201935))

(assert (=> d!53171 m!201937))

(declare-fun m!203453 () Bool)

(assert (=> d!53171 m!203453))

(declare-fun m!203455 () Bool)

(assert (=> d!53171 m!203455))

(assert (=> b!174368 m!201931))

(assert (=> b!173464 d!53171))

(assert (=> b!173464 d!52949))

(assert (=> b!173464 d!52951))

(declare-fun d!53173 () Bool)

(assert (=> d!53173 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!86331 () Unit!5311)

(assert (=> d!53173 (= lt!86331 (choose!940 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115153 () Bool)

(assert (=> d!53173 e!115153))

(declare-fun res!82725 () Bool)

(assert (=> d!53173 (=> (not res!82725) (not e!115153))))

(assert (=> d!53173 (= res!82725 (isStrictlySorted!327 (toList!1104 lt!85813)))))

(assert (=> d!53173 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000) lt!86331)))

(declare-fun b!174369 () Bool)

(assert (=> b!174369 (= e!115153 (containsKey!188 (toList!1104 lt!85813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!53173 res!82725) b!174369))

(assert (=> d!53173 m!202273))

(assert (=> d!53173 m!202273))

(assert (=> d!53173 m!202275))

(declare-fun m!203457 () Bool)

(assert (=> d!53173 m!203457))

(assert (=> d!53173 m!203113))

(assert (=> b!174369 m!202269))

(assert (=> b!173659 d!53173))

(assert (=> b!173659 d!52907))

(assert (=> b!173659 d!52721))

(declare-fun bm!17664 () Bool)

(declare-fun call!17668 () List!2226)

(declare-fun call!17666 () List!2226)

(assert (=> bm!17664 (= call!17668 call!17666)))

(declare-fun c!31201 () Bool)

(declare-fun e!115157 () List!2226)

(declare-fun c!31203 () Bool)

(declare-fun b!174370 () Bool)

(assert (=> b!174370 (= e!115157 (ite c!31201 (t!7041 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (ite c!31203 (Cons!2222 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (t!7041 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))) Nil!2223)))))

(declare-fun b!174371 () Bool)

(declare-fun res!82726 () Bool)

(declare-fun e!115158 () Bool)

(assert (=> b!174371 (=> (not res!82726) (not e!115158))))

(declare-fun lt!86332 () List!2226)

(assert (=> b!174371 (= res!82726 (containsKey!188 lt!86332 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!174372 () Bool)

(declare-fun e!115155 () List!2226)

(assert (=> b!174372 (= e!115155 call!17666)))

(declare-fun b!174373 () Bool)

(assert (=> b!174373 (= c!31203 (and ((_ is Cons!2222) (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (bvsgt (_1!1628 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun e!115156 () List!2226)

(declare-fun e!115154 () List!2226)

(assert (=> b!174373 (= e!115156 e!115154)))

(declare-fun b!174374 () Bool)

(declare-fun call!17667 () List!2226)

(assert (=> b!174374 (= e!115154 call!17667)))

(declare-fun b!174375 () Bool)

(assert (=> b!174375 (= e!115154 call!17667)))

(declare-fun b!174376 () Bool)

(assert (=> b!174376 (= e!115155 e!115156)))

(assert (=> b!174376 (= c!31201 (and ((_ is Cons!2222) (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (= (_1!1628 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(declare-fun bm!17663 () Bool)

(declare-fun c!31200 () Bool)

(assert (=> bm!17663 (= call!17666 ($colon$colon!97 e!115157 (ite c!31200 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))))

(declare-fun c!31202 () Bool)

(assert (=> bm!17663 (= c!31202 c!31200)))

(declare-fun d!53175 () Bool)

(assert (=> d!53175 e!115158))

(declare-fun res!82727 () Bool)

(assert (=> d!53175 (=> (not res!82727) (not e!115158))))

(assert (=> d!53175 (= res!82727 (isStrictlySorted!327 lt!86332))))

(assert (=> d!53175 (= lt!86332 e!115155)))

(assert (=> d!53175 (= c!31200 (and ((_ is Cons!2222) (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (bvslt (_1!1628 (h!2839 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (=> d!53175 (isStrictlySorted!327 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))))))

(assert (=> d!53175 (= (insertStrictlySorted!101 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248)))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))) lt!86332)))

(declare-fun bm!17665 () Bool)

(assert (=> bm!17665 (= call!17667 call!17668)))

(declare-fun b!174377 () Bool)

(assert (=> b!174377 (= e!115156 call!17668)))

(declare-fun b!174378 () Bool)

(assert (=> b!174378 (= e!115157 (insertStrictlySorted!101 (t!7041 (t!7041 (toList!1104 (getCurrentListMap!751 (_keys!5439 thiss!1248) (_values!3581 thiss!1248) (mask!8470 thiss!1248) (extraKeys!3337 thiss!1248) (zeroValue!3439 thiss!1248) (minValue!3441 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3598 thiss!1248))))) (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309))))))

(declare-fun b!174379 () Bool)

(assert (=> b!174379 (= e!115158 (contains!1154 lt!86332 (tuple2!3237 (_1!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (_2!1628 (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)))))))

(assert (= (and d!53175 c!31200) b!174372))

(assert (= (and d!53175 (not c!31200)) b!174376))

(assert (= (and b!174376 c!31201) b!174377))

(assert (= (and b!174376 (not c!31201)) b!174373))

(assert (= (and b!174373 c!31203) b!174374))

(assert (= (and b!174373 (not c!31203)) b!174375))

(assert (= (or b!174374 b!174375) bm!17665))

(assert (= (or b!174377 bm!17665) bm!17664))

(assert (= (or b!174372 bm!17664) bm!17663))

(assert (= (and bm!17663 c!31202) b!174378))

(assert (= (and bm!17663 (not c!31202)) b!174370))

(assert (= (and d!53175 res!82727) b!174371))

(assert (= (and b!174371 res!82726) b!174379))

(declare-fun m!203459 () Bool)

(assert (=> b!174379 m!203459))

(declare-fun m!203461 () Bool)

(assert (=> bm!17663 m!203461))

(declare-fun m!203463 () Bool)

(assert (=> b!174378 m!203463))

(declare-fun m!203465 () Bool)

(assert (=> b!174371 m!203465))

(declare-fun m!203467 () Bool)

(assert (=> d!53175 m!203467))

(assert (=> d!53175 m!203329))

(assert (=> b!173531 d!53175))

(declare-fun d!53177 () Bool)

(declare-fun lt!86333 () Bool)

(assert (=> d!53177 (= lt!86333 (select (content!148 (toList!1104 lt!86020)) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun e!115160 () Bool)

(assert (=> d!53177 (= lt!86333 e!115160)))

(declare-fun res!82729 () Bool)

(assert (=> d!53177 (=> (not res!82729) (not e!115160))))

(assert (=> d!53177 (= res!82729 ((_ is Cons!2222) (toList!1104 lt!86020)))))

(assert (=> d!53177 (= (contains!1154 (toList!1104 lt!86020) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))) lt!86333)))

(declare-fun b!174380 () Bool)

(declare-fun e!115159 () Bool)

(assert (=> b!174380 (= e!115160 e!115159)))

(declare-fun res!82728 () Bool)

(assert (=> b!174380 (=> res!82728 e!115159)))

(assert (=> b!174380 (= res!82728 (= (h!2839 (toList!1104 lt!86020)) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(declare-fun b!174381 () Bool)

(assert (=> b!174381 (= e!115159 (contains!1154 (t!7041 (toList!1104 lt!86020)) (ite (or c!30890 c!30893) (tuple2!3237 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3439 thiss!1248)) (tuple2!3237 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3441 thiss!1248)))))))

(assert (= (and d!53177 res!82729) b!174380))

(assert (= (and b!174380 (not res!82728)) b!174381))

(declare-fun m!203469 () Bool)

(assert (=> d!53177 m!203469))

(declare-fun m!203471 () Bool)

(assert (=> d!53177 m!203471))

(declare-fun m!203473 () Bool)

(assert (=> b!174381 m!203473))

(assert (=> b!173654 d!53177))

(declare-fun bm!17666 () Bool)

(declare-fun call!17669 () (_ BitVec 32))

(assert (=> bm!17666 (= call!17669 (arrayCountValidKeys!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(declare-fun b!174382 () Bool)

(declare-fun e!115162 () (_ BitVec 32))

(declare-fun e!115161 () (_ BitVec 32))

(assert (=> b!174382 (= e!115162 e!115161)))

(declare-fun c!31205 () Bool)

(assert (=> b!174382 (= c!31205 (validKeyInArray!0 (select (arr!3466 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!174383 () Bool)

(assert (=> b!174383 (= e!115162 #b00000000000000000000000000000000)))

(declare-fun d!53179 () Bool)

(declare-fun lt!86334 () (_ BitVec 32))

(assert (=> d!53179 (and (bvsge lt!86334 #b00000000000000000000000000000000) (bvsle lt!86334 (bvsub (size!3765 (_keys!5439 lt!85751)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!53179 (= lt!86334 e!115162)))

(declare-fun c!31204 () Bool)

(assert (=> d!53179 (= c!31204 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!53179 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!3765 (_keys!5439 lt!85751)) (size!3765 (_keys!5439 lt!85751))))))

(assert (=> d!53179 (= (arrayCountValidKeys!0 (_keys!5439 lt!85751) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3765 (_keys!5439 lt!85751))) lt!86334)))

(declare-fun b!174384 () Bool)

(assert (=> b!174384 (= e!115161 (bvadd #b00000000000000000000000000000001 call!17669))))

(declare-fun b!174385 () Bool)

(assert (=> b!174385 (= e!115161 call!17669)))

(assert (= (and d!53179 c!31204) b!174383))

(assert (= (and d!53179 (not c!31204)) b!174382))

(assert (= (and b!174382 c!31205) b!174384))

(assert (= (and b!174382 (not c!31205)) b!174385))

(assert (= (or b!174384 b!174385) bm!17666))

(declare-fun m!203475 () Bool)

(assert (=> bm!17666 m!203475))

(assert (=> b!174382 m!202717))

(assert (=> b!174382 m!202717))

(assert (=> b!174382 m!202721))

(assert (=> bm!17607 d!53179))

(assert (=> d!52615 d!52631))

(assert (=> d!52615 d!52619))

(declare-fun d!53181 () Bool)

(assert (=> d!53181 (= (apply!130 (+!241 lt!85848 (tuple2!3237 lt!85858 v!309)) lt!85852) (apply!130 lt!85848 lt!85852))))

(assert (=> d!53181 true))

(declare-fun _$34!1057 () Unit!5311)

(assert (=> d!53181 (= (choose!937 lt!85848 lt!85858 v!309 lt!85852) _$34!1057)))

(declare-fun bs!7210 () Bool)

(assert (= bs!7210 d!53181))

(assert (=> bs!7210 m!201797))

(assert (=> bs!7210 m!201797))

(assert (=> bs!7210 m!201799))

(assert (=> bs!7210 m!201795))

(assert (=> d!52615 d!53181))

(declare-fun d!53183 () Bool)

(declare-fun e!115163 () Bool)

(assert (=> d!53183 e!115163))

(declare-fun res!82730 () Bool)

(assert (=> d!53183 (=> res!82730 e!115163)))

(declare-fun lt!86335 () Bool)

(assert (=> d!53183 (= res!82730 (not lt!86335))))

(declare-fun lt!86337 () Bool)

(assert (=> d!53183 (= lt!86335 lt!86337)))

(declare-fun lt!86338 () Unit!5311)

(declare-fun e!115164 () Unit!5311)

(assert (=> d!53183 (= lt!86338 e!115164)))

(declare-fun c!31206 () Bool)

(assert (=> d!53183 (= c!31206 lt!86337)))

(assert (=> d!53183 (= lt!86337 (containsKey!188 (toList!1104 lt!85848) lt!85852))))

(assert (=> d!53183 (= (contains!1153 lt!85848 lt!85852) lt!86335)))

(declare-fun b!174386 () Bool)

(declare-fun lt!86336 () Unit!5311)

(assert (=> b!174386 (= e!115164 lt!86336)))

(assert (=> b!174386 (= lt!86336 (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85848) lt!85852))))

(assert (=> b!174386 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85848) lt!85852))))

(declare-fun b!174387 () Bool)

(declare-fun Unit!5360 () Unit!5311)

(assert (=> b!174387 (= e!115164 Unit!5360)))

(declare-fun b!174388 () Bool)

(assert (=> b!174388 (= e!115163 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85848) lt!85852)))))

(assert (= (and d!53183 c!31206) b!174386))

(assert (= (and d!53183 (not c!31206)) b!174387))

(assert (= (and d!53183 (not res!82730)) b!174388))

(declare-fun m!203477 () Bool)

(assert (=> d!53183 m!203477))

(declare-fun m!203479 () Bool)

(assert (=> b!174386 m!203479))

(assert (=> b!174386 m!202137))

(assert (=> b!174386 m!202137))

(declare-fun m!203481 () Bool)

(assert (=> b!174386 m!203481))

(assert (=> b!174388 m!202137))

(assert (=> b!174388 m!202137))

(assert (=> b!174388 m!203481))

(assert (=> d!52615 d!53183))

(assert (=> d!52615 d!52625))

(assert (=> b!173476 d!52913))

(assert (=> b!173476 d!52861))

(declare-fun d!53185 () Bool)

(assert (=> d!53185 (isDefined!138 (getValueByKey!184 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun lt!86339 () Unit!5311)

(assert (=> d!53185 (= lt!86339 (choose!940 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(declare-fun e!115165 () Bool)

(assert (=> d!53185 e!115165))

(declare-fun res!82731 () Bool)

(assert (=> d!53185 (=> (not res!82731) (not e!115165))))

(assert (=> d!53185 (= res!82731 (isStrictlySorted!327 (toList!1104 lt!85877)))))

(assert (=> d!53185 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!137 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))) lt!86339)))

(declare-fun b!174389 () Bool)

(assert (=> b!174389 (= e!115165 (containsKey!188 (toList!1104 lt!85877) (_1!1628 (tuple2!3237 key!828 v!309))))))

(assert (= (and d!53185 res!82731) b!174389))

(assert (=> d!53185 m!201845))

(assert (=> d!53185 m!201845))

(assert (=> d!53185 m!202221))

(declare-fun m!203483 () Bool)

(assert (=> d!53185 m!203483))

(declare-fun m!203485 () Bool)

(assert (=> d!53185 m!203485))

(assert (=> b!174389 m!202217))

(assert (=> b!173620 d!53185))

(assert (=> b!173620 d!52935))

(assert (=> b!173620 d!52593))

(assert (=> b!173675 d!52781))

(declare-fun d!53187 () Bool)

(assert (=> d!53187 (= (get!1970 (getValueByKey!184 (toList!1104 lt!85856) lt!85850)) (v!3952 (getValueByKey!184 (toList!1104 lt!85856) lt!85850)))))

(assert (=> d!52623 d!53187))

(declare-fun b!174390 () Bool)

(declare-fun e!115166 () Option!190)

(assert (=> b!174390 (= e!115166 (Some!189 (_2!1628 (h!2839 (toList!1104 lt!85856)))))))

(declare-fun b!174393 () Bool)

(declare-fun e!115167 () Option!190)

(assert (=> b!174393 (= e!115167 None!188)))

(declare-fun b!174391 () Bool)

(assert (=> b!174391 (= e!115166 e!115167)))

(declare-fun c!31208 () Bool)

(assert (=> b!174391 (= c!31208 (and ((_ is Cons!2222) (toList!1104 lt!85856)) (not (= (_1!1628 (h!2839 (toList!1104 lt!85856))) lt!85850))))))

(declare-fun b!174392 () Bool)

(assert (=> b!174392 (= e!115167 (getValueByKey!184 (t!7041 (toList!1104 lt!85856)) lt!85850))))

(declare-fun d!53189 () Bool)

(declare-fun c!31207 () Bool)

(assert (=> d!53189 (= c!31207 (and ((_ is Cons!2222) (toList!1104 lt!85856)) (= (_1!1628 (h!2839 (toList!1104 lt!85856))) lt!85850)))))

(assert (=> d!53189 (= (getValueByKey!184 (toList!1104 lt!85856) lt!85850) e!115166)))

(assert (= (and d!53189 c!31207) b!174390))

(assert (= (and d!53189 (not c!31207)) b!174391))

(assert (= (and b!174391 c!31208) b!174392))

(assert (= (and b!174391 (not c!31208)) b!174393))

(declare-fun m!203487 () Bool)

(assert (=> b!174392 m!203487))

(assert (=> d!52623 d!53189))

(declare-fun mapIsEmpty!6959 () Bool)

(declare-fun mapRes!6959 () Bool)

(assert (=> mapIsEmpty!6959 mapRes!6959))

(declare-fun mapNonEmpty!6959 () Bool)

(declare-fun tp!15608 () Bool)

(declare-fun e!115168 () Bool)

(assert (=> mapNonEmpty!6959 (= mapRes!6959 (and tp!15608 e!115168))))

(declare-fun mapValue!6959 () ValueCell!1698)

(declare-fun mapRest!6959 () (Array (_ BitVec 32) ValueCell!1698))

(declare-fun mapKey!6959 () (_ BitVec 32))

(assert (=> mapNonEmpty!6959 (= mapRest!6958 (store mapRest!6959 mapKey!6959 mapValue!6959))))

(declare-fun b!174395 () Bool)

(declare-fun e!115169 () Bool)

(assert (=> b!174395 (= e!115169 tp_is_empty!4083)))

(declare-fun b!174394 () Bool)

(assert (=> b!174394 (= e!115168 tp_is_empty!4083)))

(declare-fun condMapEmpty!6959 () Bool)

(declare-fun mapDefault!6959 () ValueCell!1698)

(assert (=> mapNonEmpty!6958 (= condMapEmpty!6959 (= mapRest!6958 ((as const (Array (_ BitVec 32) ValueCell!1698)) mapDefault!6959)))))

(assert (=> mapNonEmpty!6958 (= tp!15607 (and e!115169 mapRes!6959))))

(assert (= (and mapNonEmpty!6958 condMapEmpty!6959) mapIsEmpty!6959))

(assert (= (and mapNonEmpty!6958 (not condMapEmpty!6959)) mapNonEmpty!6959))

(assert (= (and mapNonEmpty!6959 ((_ is ValueCellFull!1698) mapValue!6959)) b!174394))

(assert (= (and mapNonEmpty!6958 ((_ is ValueCellFull!1698) mapDefault!6959)) b!174395))

(declare-fun m!203489 () Bool)

(assert (=> mapNonEmpty!6959 m!203489))

(declare-fun b_lambda!7003 () Bool)

(assert (= b_lambda!6995 (or (and b!173250 b_free!4311) b_lambda!7003)))

(declare-fun b_lambda!7005 () Bool)

(assert (= b_lambda!6991 (or (and b!173250 b_free!4311) b_lambda!7005)))

(declare-fun b_lambda!7007 () Bool)

(assert (= b_lambda!6997 (or (and b!173250 b_free!4311) b_lambda!7007)))

(declare-fun b_lambda!7009 () Bool)

(assert (= b_lambda!6993 (or (and b!173250 b_free!4311) b_lambda!7009)))

(declare-fun b_lambda!7011 () Bool)

(assert (= b_lambda!6981 (or (and b!173250 b_free!4311 (= (defaultEntry!3598 thiss!1248) (defaultEntry!3598 lt!85751))) b_lambda!7011)))

(check-sat (not b!174133) (not b!173749) (not b!174106) (not b!174358) (not bm!17644) (not b_lambda!6999) (not b!174275) (not d!52753) (not b!174047) (not b!173901) (not b!174084) (not b!173972) (not d!52845) (not bm!17637) (not b!173898) (not d!52749) (not d!53169) (not d!52779) (not b!174165) (not b!174068) (not d!52763) (not b!174091) (not d!53073) (not d!52881) (not b!174300) (not d!53165) (not b!174050) (not b!174255) (not b!174151) (not d!52991) (not b!174166) (not d!52875) (not d!53067) (not b!174218) (not d!53159) (not d!52923) (not b!174076) (not b!174143) (not d!52945) (not d!52855) (not b!174067) (not b!174170) (not b!174031) (not d!53175) (not b!174232) (not b!174159) (not d!52755) (not d!52809) (not d!53115) (not b!173920) (not b!174094) (not b!173941) (not b!174352) (not bm!17663) (not d!52761) (not b!173839) (not b!174121) (not b!174176) (not b!174235) (not b_lambda!6971) (not b!173933) (not b!174243) (not d!52831) (not bm!17640) (not b_lambda!7005) (not b!173754) (not b!173776) (not b!174248) (not b!174354) (not b!174381) (not b!174359) (not b!174070) (not b!174016) (not b!174101) (not d!53011) (not d!52683) (not b!173863) (not b!173730) (not d!52873) (not b!174221) (not b!173969) (not d!53037) (not d!53185) (not b!173970) (not d!52787) (not d!52751) (not b!173766) (not b!174355) (not bm!17620) (not b!174237) (not b!173709) (not d!53163) (not b!174360) (not d!52773) (not d!52979) (not b!174305) (not b!174118) (not d!52805) (not b!173905) (not d!52863) (not b!174266) (not b_lambda!7001) (not b!174382) (not d!52725) (not b!174331) (not b!174087) (not bm!17647) (not b!174231) (not b!173732) (not d!52731) (not d!52955) (not b!173822) (not b!173723) (not b!173983) (not d!52817) (not d!52851) (not b!174163) (not bm!17654) (not d!52927) (not b!174238) (not b!174252) (not b!174173) (not b!173819) (not b!173930) (not b!173857) (not d!53023) (not d!53077) (not d!52983) (not d!53097) (not b!174168) (not b!173840) (not b!173738) (not b!174146) (not d!52963) (not b!173872) (not b!174332) (not d!52837) (not b_lambda!6987) (not bm!17657) (not b!174285) (not d!52799) (not b!174335) (not b!173981) (not b!173952) (not b!173748) (not d!52795) (not bm!17616) (not d!53025) (not b!174045) (not b!173784) (not b!174246) (not b!174273) (not b!174103) (not b!173802) (not bm!17658) (not d!53161) (not b!173808) (not b!174369) (not b!174199) (not b!174136) (not b!174109) (not b!174058) (not b!173913) (not b_lambda!7007) (not b!174347) (not bm!17660) (not bm!17631) (not b!173707) (not b!174035) (not d!53033) (not b!173755) (not mapNonEmpty!6959) (not b!173891) (not b!174333) (not d!53107) (not b!174303) (not b!173792) (not b!173782) (not b_lambda!7003) (not bm!17623) (not b!174289) (not d!53001) (not b!174392) (not b!173962) (not b!174211) (not d!52833) (not d!53135) (not d!52829) (not b!174344) (not b!174313) (not bm!17641) (not b!174388) (not d!52791) (not d!53149) (not b!174283) (not b!173735) (not b!174257) (not b!173785) (not d!53173) (not d!52739) (not d!52691) (not b!173824) (not d!53017) (not b!174292) (not b!173960) (not d!52841) (not b!174319) (not d!52981) (not b!173939) (not d!53005) (not b!173868) (not d!53123) (not b!173934) (not b!173830) (not d!52925) (not d!52977) (not b!174113) (not b!173921) (not d!52733) (not d!52757) (not b!174141) (not b!174099) (not b!174321) (not b!174247) (not b!173944) (not b!173925) (not b!173989) (not b!174389) (not b!173879) (not b!174074) (not d!53071) (not b!174140) (not b!174148) (not d!53183) (not b!174213) (not b!173827) (not b!174210) (not d!52825) (not b!173769) (not b!173810) (not d!52891) (not b!174021) b_and!10797 (not b!173752) (not b!173812) (not b!173955) (not d!52689) (not b!174096) (not b!173924) (not d!53137) (not d!52789) (not b!174316) (not b!173728) (not b!174188) (not b!173936) (not d!53113) (not d!53045) (not b!173745) (not b!174337) (not b!173843) (not bm!17629) (not d!53043) (not b!174367) (not b!174371) (not b!174240) (not d!52915) (not d!53061) (not b_next!4311) (not b!173793) (not d!53049) (not b!173710) (not b!174365) (not b!174203) (not b_lambda!7011) (not b!173821) (not b!173720) (not b!174083) (not b!173993) (not b!174073) (not d!53087) (not d!53177) (not b!174234) (not b!173832) (not b!174259) (not d!53055) (not d!53069) (not b!173874) (not b_lambda!6989) (not d!53051) (not b!174269) (not b!173702) (not b!173829) (not b!174343) (not b!174379) (not b!173783) (not b!173980) (not b!174162) (not d!52783) (not b!173764) (not b!173951) (not b!173967) (not bm!17626) (not b!173854) (not d!52797) (not b!173892) (not b!173741) (not b!174124) (not b!174042) (not b!173818) (not b!173799) (not b!174251) (not b!173964) (not b!173805) (not b!173985) (not b!174249) (not b!174301) (not b!174071) (not b!174178) (not b!174038) (not d!53041) (not d!53171) (not d!52987) (not b!173861) (not b!173929) (not d!52699) (not bm!17619) (not d!53047) (not d!52943) (not b!174033) (not b!174253) (not b!174340) (not d!52919) (not b!174189) (not b!173865) (not b_lambda!6983) (not bm!17653) (not d!52885) (not b!174024) (not d!53007) (not b!174057) (not b!174181) (not d!52949) (not b!173814) (not b!174386) (not d!53015) (not d!52993) (not b!173751) (not b!174158) (not d!53003) (not b!174281) tp_is_empty!4083 (not b!173884) (not b!173911) (not b!174314) (not d!52701) (not bm!17630) (not d!52995) (not b!173796) (not d!52973) (not b!174134) (not bm!17666) (not d!53059) (not b!173841) (not b!173882) (not b!173876) (not b!174116) (not b!174126) (not b!174295) (not b!173908) (not b!174048) (not b!173846) (not bm!17650) (not d!53039) (not b!174311) (not b!173923) (not b!174027) (not d!53181) (not b!174060) (not b!174040) (not b!174262) (not d!52997) (not b!174169) (not b!173903) (not d!52907) (not b_lambda!6985) (not d!52929) (not b!174298) (not b!174000) (not b!174308) (not b!173719) (not d!52883) (not b!174244) (not b!174179) (not b!173942) (not b!174271) (not b!173760) (not bm!17634) (not d!52857) (not b!173787) (not b!173816) (not b!174310) (not d!52895) (not b!174228) (not b!173928) (not d!52685) (not d!53155) (not b!174324) (not d!53053) (not b!173849) (not b!173957) (not b!174350) (not d!52775) (not b!174241) (not b!174345) (not b!174357) (not b!173758) (not d!53157) (not b!174229) (not b!174062) (not d!52877) (not b!174296) (not b!173726) (not b!174216) (not b!174307) (not b!174322) (not bm!17659) (not b!174361) (not d!53129) (not d!52785) (not d!53009) (not d!52767) (not b!173704) (not b!174278) (not b!174160) (not d!53065) (not d!52935) (not b!173757) (not d!53133) (not d!53099) (not d!53143) (not b!174149) (not b!173881) (not b!173712) (not b!174200) (not d!52865) (not b!173762) (not b!174342) (not d!52911) (not d!52843) (not d!52803) (not b!173979) (not b!174171) (not b!174138) (not d!52869) (not d!53057) (not b_lambda!6969) (not b!173910) (not b_lambda!7009) (not d!53125) (not d!52931) (not b!173986) (not b!174065) (not d!52971) (not d!53147) (not b!174123) (not b!174219) (not b!174287) (not b!173852) (not b!173779) (not d!53121) (not d!52967) (not b!174064) (not d!52941) (not b!174194) (not d!53063) (not b!174368) (not d!52913) (not b!173850) (not b!174378) (not b!174192))
(check-sat b_and!10797 (not b_next!4311))
