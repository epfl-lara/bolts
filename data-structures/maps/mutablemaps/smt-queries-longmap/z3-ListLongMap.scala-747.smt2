; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17414 () Bool)

(assert start!17414)

(declare-fun b!174627 () Bool)

(declare-fun b_free!4323 () Bool)

(declare-fun b_next!4323 () Bool)

(assert (=> b!174627 (= b_free!4323 (not b_next!4323))))

(declare-fun tp!15641 () Bool)

(declare-fun b_and!10809 () Bool)

(assert (=> b!174627 (= tp!15641 b_and!10809)))

(declare-fun b!174622 () Bool)

(declare-fun res!82835 () Bool)

(declare-fun e!115319 () Bool)

(assert (=> b!174622 (=> (not res!82835) (not e!115319))))

(declare-datatypes ((V!5107 0))(
  ( (V!5108 (val!2092 Int)) )
))
(declare-datatypes ((ValueCell!1704 0))(
  ( (ValueCellFull!1704 (v!3960 V!5107)) (EmptyCell!1704) )
))
(declare-datatypes ((array!7324 0))(
  ( (array!7325 (arr!3478 (Array (_ BitVec 32) (_ BitVec 64))) (size!3778 (_ BitVec 32))) )
))
(declare-datatypes ((array!7326 0))(
  ( (array!7327 (arr!3479 (Array (_ BitVec 32) ValueCell!1704)) (size!3779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2316 0))(
  ( (LongMapFixedSize!2317 (defaultEntry!3609 Int) (mask!8490 (_ BitVec 32)) (extraKeys!3346 (_ BitVec 32)) (zeroValue!3450 V!5107) (minValue!3450 V!5107) (_size!1207 (_ BitVec 32)) (_keys!5453 array!7324) (_values!3592 array!7326) (_vacant!1207 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2316)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3248 0))(
  ( (tuple2!3249 (_1!1634 (_ BitVec 64)) (_2!1634 V!5107)) )
))
(declare-datatypes ((List!2234 0))(
  ( (Nil!2231) (Cons!2230 (h!2847 tuple2!3248) (t!7056 List!2234)) )
))
(declare-datatypes ((ListLongMap!2189 0))(
  ( (ListLongMap!2190 (toList!1110 List!2234)) )
))
(declare-fun contains!1160 (ListLongMap!2189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!757 (array!7324 array!7326 (_ BitVec 32) (_ BitVec 32) V!5107 V!5107 (_ BitVec 32) Int) ListLongMap!2189)

(assert (=> b!174622 (= res!82835 (contains!1160 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)) key!828))))

(declare-fun b!174623 () Bool)

(declare-fun e!115322 () Bool)

(declare-fun tp_is_empty!4095 () Bool)

(assert (=> b!174623 (= e!115322 tp_is_empty!4095)))

(declare-fun b!174624 () Bool)

(assert (=> b!174624 (= e!115319 (not (= (size!3779 (_values!3592 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8490 thiss!1248)))))))

(declare-fun mapNonEmpty!6977 () Bool)

(declare-fun mapRes!6977 () Bool)

(declare-fun tp!15640 () Bool)

(declare-fun e!115320 () Bool)

(assert (=> mapNonEmpty!6977 (= mapRes!6977 (and tp!15640 e!115320))))

(declare-fun mapRest!6977 () (Array (_ BitVec 32) ValueCell!1704))

(declare-fun mapKey!6977 () (_ BitVec 32))

(declare-fun mapValue!6977 () ValueCell!1704)

(assert (=> mapNonEmpty!6977 (= (arr!3479 (_values!3592 thiss!1248)) (store mapRest!6977 mapKey!6977 mapValue!6977))))

(declare-fun b!174625 () Bool)

(declare-fun res!82836 () Bool)

(assert (=> b!174625 (=> (not res!82836) (not e!115319))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!556 0))(
  ( (MissingZero!556 (index!4392 (_ BitVec 32))) (Found!556 (index!4393 (_ BitVec 32))) (Intermediate!556 (undefined!1368 Bool) (index!4394 (_ BitVec 32)) (x!19244 (_ BitVec 32))) (Undefined!556) (MissingVacant!556 (index!4395 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7324 (_ BitVec 32)) SeekEntryResult!556)

(assert (=> b!174625 (= res!82836 ((_ is Undefined!556) (seekEntryOrOpen!0 key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248))))))

(declare-fun b!174626 () Bool)

(assert (=> b!174626 (= e!115320 tp_is_empty!4095)))

(declare-fun mapIsEmpty!6977 () Bool)

(assert (=> mapIsEmpty!6977 mapRes!6977))

(declare-fun b!174628 () Bool)

(declare-fun res!82834 () Bool)

(assert (=> b!174628 (=> (not res!82834) (not e!115319))))

(assert (=> b!174628 (= res!82834 (not (= key!828 (bvneg key!828))))))

(declare-fun b!174629 () Bool)

(declare-fun e!115321 () Bool)

(assert (=> b!174629 (= e!115321 (and e!115322 mapRes!6977))))

(declare-fun condMapEmpty!6977 () Bool)

(declare-fun mapDefault!6977 () ValueCell!1704)

(assert (=> b!174629 (= condMapEmpty!6977 (= (arr!3479 (_values!3592 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1704)) mapDefault!6977)))))

(declare-fun b!174630 () Bool)

(declare-fun res!82833 () Bool)

(assert (=> b!174630 (=> (not res!82833) (not e!115319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174630 (= res!82833 (validMask!0 (mask!8490 thiss!1248)))))

(declare-fun e!115318 () Bool)

(declare-fun array_inv!2217 (array!7324) Bool)

(declare-fun array_inv!2218 (array!7326) Bool)

(assert (=> b!174627 (= e!115318 (and tp!15641 tp_is_empty!4095 (array_inv!2217 (_keys!5453 thiss!1248)) (array_inv!2218 (_values!3592 thiss!1248)) e!115321))))

(declare-fun res!82832 () Bool)

(assert (=> start!17414 (=> (not res!82832) (not e!115319))))

(declare-fun valid!970 (LongMapFixedSize!2316) Bool)

(assert (=> start!17414 (= res!82832 (valid!970 thiss!1248))))

(assert (=> start!17414 e!115319))

(assert (=> start!17414 e!115318))

(assert (=> start!17414 true))

(assert (= (and start!17414 res!82832) b!174628))

(assert (= (and b!174628 res!82834) b!174625))

(assert (= (and b!174625 res!82836) b!174622))

(assert (= (and b!174622 res!82835) b!174630))

(assert (= (and b!174630 res!82833) b!174624))

(assert (= (and b!174629 condMapEmpty!6977) mapIsEmpty!6977))

(assert (= (and b!174629 (not condMapEmpty!6977)) mapNonEmpty!6977))

(assert (= (and mapNonEmpty!6977 ((_ is ValueCellFull!1704) mapValue!6977)) b!174626))

(assert (= (and b!174629 ((_ is ValueCellFull!1704) mapDefault!6977)) b!174623))

(assert (= b!174627 b!174629))

(assert (= start!17414 b!174627))

(declare-fun m!203645 () Bool)

(assert (=> b!174622 m!203645))

(assert (=> b!174622 m!203645))

(declare-fun m!203647 () Bool)

(assert (=> b!174622 m!203647))

(declare-fun m!203649 () Bool)

(assert (=> start!17414 m!203649))

(declare-fun m!203651 () Bool)

(assert (=> b!174625 m!203651))

(declare-fun m!203653 () Bool)

(assert (=> mapNonEmpty!6977 m!203653))

(declare-fun m!203655 () Bool)

(assert (=> b!174627 m!203655))

(declare-fun m!203657 () Bool)

(assert (=> b!174627 m!203657))

(declare-fun m!203659 () Bool)

(assert (=> b!174630 m!203659))

(check-sat (not b!174630) tp_is_empty!4095 (not b_next!4323) (not b!174622) (not mapNonEmpty!6977) b_and!10809 (not b!174627) (not b!174625) (not start!17414))
(check-sat b_and!10809 (not b_next!4323))
(get-model)

(declare-fun d!53209 () Bool)

(assert (=> d!53209 (= (array_inv!2217 (_keys!5453 thiss!1248)) (bvsge (size!3778 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174627 d!53209))

(declare-fun d!53211 () Bool)

(assert (=> d!53211 (= (array_inv!2218 (_values!3592 thiss!1248)) (bvsge (size!3779 (_values!3592 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174627 d!53211))

(declare-fun d!53213 () Bool)

(declare-fun res!82858 () Bool)

(declare-fun e!115343 () Bool)

(assert (=> d!53213 (=> (not res!82858) (not e!115343))))

(declare-fun simpleValid!145 (LongMapFixedSize!2316) Bool)

(assert (=> d!53213 (= res!82858 (simpleValid!145 thiss!1248))))

(assert (=> d!53213 (= (valid!970 thiss!1248) e!115343)))

(declare-fun b!174664 () Bool)

(declare-fun res!82859 () Bool)

(assert (=> b!174664 (=> (not res!82859) (not e!115343))))

(declare-fun arrayCountValidKeys!0 (array!7324 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!174664 (= res!82859 (= (arrayCountValidKeys!0 (_keys!5453 thiss!1248) #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))) (_size!1207 thiss!1248)))))

(declare-fun b!174665 () Bool)

(declare-fun res!82860 () Bool)

(assert (=> b!174665 (=> (not res!82860) (not e!115343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7324 (_ BitVec 32)) Bool)

(assert (=> b!174665 (= res!82860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(declare-fun b!174666 () Bool)

(declare-datatypes ((List!2236 0))(
  ( (Nil!2233) (Cons!2232 (h!2849 (_ BitVec 64)) (t!7060 List!2236)) )
))
(declare-fun arrayNoDuplicates!0 (array!7324 (_ BitVec 32) List!2236) Bool)

(assert (=> b!174666 (= e!115343 (arrayNoDuplicates!0 (_keys!5453 thiss!1248) #b00000000000000000000000000000000 Nil!2233))))

(assert (= (and d!53213 res!82858) b!174664))

(assert (= (and b!174664 res!82859) b!174665))

(assert (= (and b!174665 res!82860) b!174666))

(declare-fun m!203677 () Bool)

(assert (=> d!53213 m!203677))

(declare-fun m!203679 () Bool)

(assert (=> b!174664 m!203679))

(declare-fun m!203681 () Bool)

(assert (=> b!174665 m!203681))

(declare-fun m!203683 () Bool)

(assert (=> b!174666 m!203683))

(assert (=> start!17414 d!53213))

(declare-fun b!174679 () Bool)

(declare-fun e!115352 () SeekEntryResult!556)

(assert (=> b!174679 (= e!115352 Undefined!556)))

(declare-fun b!174680 () Bool)

(declare-fun e!115350 () SeekEntryResult!556)

(declare-fun lt!86433 () SeekEntryResult!556)

(assert (=> b!174680 (= e!115350 (MissingZero!556 (index!4394 lt!86433)))))

(declare-fun b!174681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7324 (_ BitVec 32)) SeekEntryResult!556)

(assert (=> b!174681 (= e!115350 (seekKeyOrZeroReturnVacant!0 (x!19244 lt!86433) (index!4394 lt!86433) (index!4394 lt!86433) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(declare-fun b!174682 () Bool)

(declare-fun c!31246 () Bool)

(declare-fun lt!86434 () (_ BitVec 64))

(assert (=> b!174682 (= c!31246 (= lt!86434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115351 () SeekEntryResult!556)

(assert (=> b!174682 (= e!115351 e!115350)))

(declare-fun b!174683 () Bool)

(assert (=> b!174683 (= e!115351 (Found!556 (index!4394 lt!86433)))))

(declare-fun d!53215 () Bool)

(declare-fun lt!86435 () SeekEntryResult!556)

(assert (=> d!53215 (and (or ((_ is Undefined!556) lt!86435) (not ((_ is Found!556) lt!86435)) (and (bvsge (index!4393 lt!86435) #b00000000000000000000000000000000) (bvslt (index!4393 lt!86435) (size!3778 (_keys!5453 thiss!1248))))) (or ((_ is Undefined!556) lt!86435) ((_ is Found!556) lt!86435) (not ((_ is MissingZero!556) lt!86435)) (and (bvsge (index!4392 lt!86435) #b00000000000000000000000000000000) (bvslt (index!4392 lt!86435) (size!3778 (_keys!5453 thiss!1248))))) (or ((_ is Undefined!556) lt!86435) ((_ is Found!556) lt!86435) ((_ is MissingZero!556) lt!86435) (not ((_ is MissingVacant!556) lt!86435)) (and (bvsge (index!4395 lt!86435) #b00000000000000000000000000000000) (bvslt (index!4395 lt!86435) (size!3778 (_keys!5453 thiss!1248))))) (or ((_ is Undefined!556) lt!86435) (ite ((_ is Found!556) lt!86435) (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4393 lt!86435)) key!828) (ite ((_ is MissingZero!556) lt!86435) (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4392 lt!86435)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!556) lt!86435) (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4395 lt!86435)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53215 (= lt!86435 e!115352)))

(declare-fun c!31245 () Bool)

(assert (=> d!53215 (= c!31245 (and ((_ is Intermediate!556) lt!86433) (undefined!1368 lt!86433)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7324 (_ BitVec 32)) SeekEntryResult!556)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53215 (= lt!86433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8490 thiss!1248)) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(assert (=> d!53215 (validMask!0 (mask!8490 thiss!1248))))

(assert (=> d!53215 (= (seekEntryOrOpen!0 key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)) lt!86435)))

(declare-fun b!174684 () Bool)

(assert (=> b!174684 (= e!115352 e!115351)))

(assert (=> b!174684 (= lt!86434 (select (arr!3478 (_keys!5453 thiss!1248)) (index!4394 lt!86433)))))

(declare-fun c!31247 () Bool)

(assert (=> b!174684 (= c!31247 (= lt!86434 key!828))))

(assert (= (and d!53215 c!31245) b!174679))

(assert (= (and d!53215 (not c!31245)) b!174684))

(assert (= (and b!174684 c!31247) b!174683))

(assert (= (and b!174684 (not c!31247)) b!174682))

(assert (= (and b!174682 c!31246) b!174680))

(assert (= (and b!174682 (not c!31246)) b!174681))

(declare-fun m!203685 () Bool)

(assert (=> b!174681 m!203685))

(declare-fun m!203687 () Bool)

(assert (=> d!53215 m!203687))

(assert (=> d!53215 m!203659))

(declare-fun m!203689 () Bool)

(assert (=> d!53215 m!203689))

(declare-fun m!203691 () Bool)

(assert (=> d!53215 m!203691))

(declare-fun m!203693 () Bool)

(assert (=> d!53215 m!203693))

(assert (=> d!53215 m!203691))

(declare-fun m!203695 () Bool)

(assert (=> d!53215 m!203695))

(declare-fun m!203697 () Bool)

(assert (=> b!174684 m!203697))

(assert (=> b!174625 d!53215))

(declare-fun d!53217 () Bool)

(assert (=> d!53217 (= (validMask!0 (mask!8490 thiss!1248)) (and (or (= (mask!8490 thiss!1248) #b00000000000000000000000000000111) (= (mask!8490 thiss!1248) #b00000000000000000000000000001111) (= (mask!8490 thiss!1248) #b00000000000000000000000000011111) (= (mask!8490 thiss!1248) #b00000000000000000000000000111111) (= (mask!8490 thiss!1248) #b00000000000000000000000001111111) (= (mask!8490 thiss!1248) #b00000000000000000000000011111111) (= (mask!8490 thiss!1248) #b00000000000000000000000111111111) (= (mask!8490 thiss!1248) #b00000000000000000000001111111111) (= (mask!8490 thiss!1248) #b00000000000000000000011111111111) (= (mask!8490 thiss!1248) #b00000000000000000000111111111111) (= (mask!8490 thiss!1248) #b00000000000000000001111111111111) (= (mask!8490 thiss!1248) #b00000000000000000011111111111111) (= (mask!8490 thiss!1248) #b00000000000000000111111111111111) (= (mask!8490 thiss!1248) #b00000000000000001111111111111111) (= (mask!8490 thiss!1248) #b00000000000000011111111111111111) (= (mask!8490 thiss!1248) #b00000000000000111111111111111111) (= (mask!8490 thiss!1248) #b00000000000001111111111111111111) (= (mask!8490 thiss!1248) #b00000000000011111111111111111111) (= (mask!8490 thiss!1248) #b00000000000111111111111111111111) (= (mask!8490 thiss!1248) #b00000000001111111111111111111111) (= (mask!8490 thiss!1248) #b00000000011111111111111111111111) (= (mask!8490 thiss!1248) #b00000000111111111111111111111111) (= (mask!8490 thiss!1248) #b00000001111111111111111111111111) (= (mask!8490 thiss!1248) #b00000011111111111111111111111111) (= (mask!8490 thiss!1248) #b00000111111111111111111111111111) (= (mask!8490 thiss!1248) #b00001111111111111111111111111111) (= (mask!8490 thiss!1248) #b00011111111111111111111111111111) (= (mask!8490 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8490 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!174630 d!53217))

(declare-fun d!53219 () Bool)

(declare-fun e!115357 () Bool)

(assert (=> d!53219 e!115357))

(declare-fun res!82863 () Bool)

(assert (=> d!53219 (=> res!82863 e!115357)))

(declare-fun lt!86445 () Bool)

(assert (=> d!53219 (= res!82863 (not lt!86445))))

(declare-fun lt!86447 () Bool)

(assert (=> d!53219 (= lt!86445 lt!86447)))

(declare-datatypes ((Unit!5365 0))(
  ( (Unit!5366) )
))
(declare-fun lt!86446 () Unit!5365)

(declare-fun e!115358 () Unit!5365)

(assert (=> d!53219 (= lt!86446 e!115358)))

(declare-fun c!31250 () Bool)

(assert (=> d!53219 (= c!31250 lt!86447)))

(declare-fun containsKey!190 (List!2234 (_ BitVec 64)) Bool)

(assert (=> d!53219 (= lt!86447 (containsKey!190 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(assert (=> d!53219 (= (contains!1160 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)) key!828) lt!86445)))

(declare-fun b!174691 () Bool)

(declare-fun lt!86444 () Unit!5365)

(assert (=> b!174691 (= e!115358 lt!86444)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!139 (List!2234 (_ BitVec 64)) Unit!5365)

(assert (=> b!174691 (= lt!86444 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(declare-datatypes ((Option!192 0))(
  ( (Some!191 (v!3962 V!5107)) (None!190) )
))
(declare-fun isDefined!140 (Option!192) Bool)

(declare-fun getValueByKey!186 (List!2234 (_ BitVec 64)) Option!192)

(assert (=> b!174691 (isDefined!140 (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(declare-fun b!174692 () Bool)

(declare-fun Unit!5367 () Unit!5365)

(assert (=> b!174692 (= e!115358 Unit!5367)))

(declare-fun b!174693 () Bool)

(assert (=> b!174693 (= e!115357 (isDefined!140 (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828)))))

(assert (= (and d!53219 c!31250) b!174691))

(assert (= (and d!53219 (not c!31250)) b!174692))

(assert (= (and d!53219 (not res!82863)) b!174693))

(declare-fun m!203699 () Bool)

(assert (=> d!53219 m!203699))

(declare-fun m!203701 () Bool)

(assert (=> b!174691 m!203701))

(declare-fun m!203703 () Bool)

(assert (=> b!174691 m!203703))

(assert (=> b!174691 m!203703))

(declare-fun m!203705 () Bool)

(assert (=> b!174691 m!203705))

(assert (=> b!174693 m!203703))

(assert (=> b!174693 m!203703))

(assert (=> b!174693 m!203705))

(assert (=> b!174622 d!53219))

(declare-fun bm!17702 () Bool)

(declare-fun call!17707 () Bool)

(declare-fun lt!86513 () ListLongMap!2189)

(assert (=> bm!17702 (= call!17707 (contains!1160 lt!86513 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174736 () Bool)

(declare-fun e!115389 () Bool)

(declare-fun e!115386 () Bool)

(assert (=> b!174736 (= e!115389 e!115386)))

(declare-fun res!82882 () Bool)

(assert (=> b!174736 (=> (not res!82882) (not e!115386))))

(assert (=> b!174736 (= res!82882 (contains!1160 lt!86513 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174736 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun bm!17703 () Bool)

(declare-fun call!17708 () ListLongMap!2189)

(declare-fun call!17710 () ListLongMap!2189)

(assert (=> bm!17703 (= call!17708 call!17710)))

(declare-fun b!174737 () Bool)

(declare-fun e!115387 () Unit!5365)

(declare-fun Unit!5368 () Unit!5365)

(assert (=> b!174737 (= e!115387 Unit!5368)))

(declare-fun b!174738 () Bool)

(declare-fun e!115388 () ListLongMap!2189)

(assert (=> b!174738 (= e!115388 call!17708)))

(declare-fun b!174739 () Bool)

(declare-fun e!115395 () Bool)

(declare-fun call!17705 () Bool)

(assert (=> b!174739 (= e!115395 (not call!17705))))

(declare-fun bm!17704 () Bool)

(assert (=> bm!17704 (= call!17705 (contains!1160 lt!86513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174740 () Bool)

(declare-fun e!115393 () ListLongMap!2189)

(declare-fun +!244 (ListLongMap!2189 tuple2!3248) ListLongMap!2189)

(assert (=> b!174740 (= e!115393 (+!244 call!17710 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))

(declare-fun b!174741 () Bool)

(declare-fun lt!86497 () Unit!5365)

(assert (=> b!174741 (= e!115387 lt!86497)))

(declare-fun lt!86511 () ListLongMap!2189)

(declare-fun getCurrentListMapNoExtraKeys!162 (array!7324 array!7326 (_ BitVec 32) (_ BitVec 32) V!5107 V!5107 (_ BitVec 32) Int) ListLongMap!2189)

(assert (=> b!174741 (= lt!86511 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))

(declare-fun lt!86496 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86496 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86501 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86501 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86509 () Unit!5365)

(declare-fun addStillContains!108 (ListLongMap!2189 (_ BitVec 64) V!5107 (_ BitVec 64)) Unit!5365)

(assert (=> b!174741 (= lt!86509 (addStillContains!108 lt!86511 lt!86496 (zeroValue!3450 thiss!1248) lt!86501))))

(assert (=> b!174741 (contains!1160 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) lt!86501)))

(declare-fun lt!86495 () Unit!5365)

(assert (=> b!174741 (= lt!86495 lt!86509)))

(declare-fun lt!86506 () ListLongMap!2189)

(assert (=> b!174741 (= lt!86506 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))

(declare-fun lt!86502 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86502 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86499 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86499 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86500 () Unit!5365)

(declare-fun addApplyDifferent!108 (ListLongMap!2189 (_ BitVec 64) V!5107 (_ BitVec 64)) Unit!5365)

(assert (=> b!174741 (= lt!86500 (addApplyDifferent!108 lt!86506 lt!86502 (minValue!3450 thiss!1248) lt!86499))))

(declare-fun apply!132 (ListLongMap!2189 (_ BitVec 64)) V!5107)

(assert (=> b!174741 (= (apply!132 (+!244 lt!86506 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) lt!86499) (apply!132 lt!86506 lt!86499))))

(declare-fun lt!86494 () Unit!5365)

(assert (=> b!174741 (= lt!86494 lt!86500)))

(declare-fun lt!86510 () ListLongMap!2189)

(assert (=> b!174741 (= lt!86510 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))

(declare-fun lt!86507 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86507 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86493 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86493 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86504 () Unit!5365)

(assert (=> b!174741 (= lt!86504 (addApplyDifferent!108 lt!86510 lt!86507 (zeroValue!3450 thiss!1248) lt!86493))))

(assert (=> b!174741 (= (apply!132 (+!244 lt!86510 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) lt!86493) (apply!132 lt!86510 lt!86493))))

(declare-fun lt!86498 () Unit!5365)

(assert (=> b!174741 (= lt!86498 lt!86504)))

(declare-fun lt!86505 () ListLongMap!2189)

(assert (=> b!174741 (= lt!86505 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))

(declare-fun lt!86492 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86492 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86503 () (_ BitVec 64))

(assert (=> b!174741 (= lt!86503 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174741 (= lt!86497 (addApplyDifferent!108 lt!86505 lt!86492 (minValue!3450 thiss!1248) lt!86503))))

(assert (=> b!174741 (= (apply!132 (+!244 lt!86505 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) lt!86503) (apply!132 lt!86505 lt!86503))))

(declare-fun b!174742 () Bool)

(declare-fun e!115394 () ListLongMap!2189)

(declare-fun call!17709 () ListLongMap!2189)

(assert (=> b!174742 (= e!115394 call!17709)))

(declare-fun c!31266 () Bool)

(declare-fun bm!17705 () Bool)

(declare-fun call!17706 () ListLongMap!2189)

(declare-fun c!31264 () Bool)

(declare-fun call!17711 () ListLongMap!2189)

(assert (=> bm!17705 (= call!17710 (+!244 (ite c!31266 call!17706 (ite c!31264 call!17711 call!17709)) (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(declare-fun b!174743 () Bool)

(declare-fun res!82884 () Bool)

(declare-fun e!115390 () Bool)

(assert (=> b!174743 (=> (not res!82884) (not e!115390))))

(assert (=> b!174743 (= res!82884 e!115395)))

(declare-fun c!31268 () Bool)

(assert (=> b!174743 (= c!31268 (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!17706 () Bool)

(assert (=> bm!17706 (= call!17711 call!17706)))

(declare-fun b!174744 () Bool)

(declare-fun e!115385 () Bool)

(assert (=> b!174744 (= e!115385 (= (apply!132 lt!86513 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3450 thiss!1248)))))

(declare-fun bm!17707 () Bool)

(assert (=> bm!17707 (= call!17709 call!17711)))

(declare-fun b!174745 () Bool)

(assert (=> b!174745 (= e!115395 e!115385)))

(declare-fun res!82887 () Bool)

(assert (=> b!174745 (= res!82887 call!17705)))

(assert (=> b!174745 (=> (not res!82887) (not e!115385))))

(declare-fun b!174746 () Bool)

(declare-fun e!115391 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!174746 (= e!115391 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174747 () Bool)

(declare-fun e!115396 () Bool)

(assert (=> b!174747 (= e!115396 (= (apply!132 lt!86513 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3450 thiss!1248)))))

(declare-fun b!174748 () Bool)

(declare-fun c!31263 () Bool)

(assert (=> b!174748 (= c!31263 (and (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!174748 (= e!115388 e!115394)))

(declare-fun b!174749 () Bool)

(assert (=> b!174749 (= e!115394 call!17708)))

(declare-fun b!174750 () Bool)

(declare-fun get!1978 (ValueCell!1704 V!5107) V!5107)

(declare-fun dynLambda!470 (Int (_ BitVec 64)) V!5107)

(assert (=> b!174750 (= e!115386 (= (apply!132 lt!86513 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)) (get!1978 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!174750 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3779 (_values!3592 thiss!1248))))))

(assert (=> b!174750 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun b!174751 () Bool)

(declare-fun e!115397 () Bool)

(assert (=> b!174751 (= e!115397 e!115396)))

(declare-fun res!82886 () Bool)

(assert (=> b!174751 (= res!82886 call!17707)))

(assert (=> b!174751 (=> (not res!82886) (not e!115396))))

(declare-fun b!174752 () Bool)

(declare-fun e!115392 () Bool)

(assert (=> b!174752 (= e!115392 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174753 () Bool)

(assert (=> b!174753 (= e!115393 e!115388)))

(assert (=> b!174753 (= c!31264 (and (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!174754 () Bool)

(assert (=> b!174754 (= e!115397 (not call!17707))))

(declare-fun b!174755 () Bool)

(assert (=> b!174755 (= e!115390 e!115397)))

(declare-fun c!31265 () Bool)

(assert (=> b!174755 (= c!31265 (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17708 () Bool)

(assert (=> bm!17708 (= call!17706 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))

(declare-fun b!174756 () Bool)

(declare-fun res!82890 () Bool)

(assert (=> b!174756 (=> (not res!82890) (not e!115390))))

(assert (=> b!174756 (= res!82890 e!115389)))

(declare-fun res!82883 () Bool)

(assert (=> b!174756 (=> res!82883 e!115389)))

(assert (=> b!174756 (= res!82883 (not e!115392))))

(declare-fun res!82885 () Bool)

(assert (=> b!174756 (=> (not res!82885) (not e!115392))))

(assert (=> b!174756 (= res!82885 (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun d!53221 () Bool)

(assert (=> d!53221 e!115390))

(declare-fun res!82889 () Bool)

(assert (=> d!53221 (=> (not res!82889) (not e!115390))))

(assert (=> d!53221 (= res!82889 (or (bvsge #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))))

(declare-fun lt!86512 () ListLongMap!2189)

(assert (=> d!53221 (= lt!86513 lt!86512)))

(declare-fun lt!86508 () Unit!5365)

(assert (=> d!53221 (= lt!86508 e!115387)))

(declare-fun c!31267 () Bool)

(assert (=> d!53221 (= c!31267 e!115391)))

(declare-fun res!82888 () Bool)

(assert (=> d!53221 (=> (not res!82888) (not e!115391))))

(assert (=> d!53221 (= res!82888 (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53221 (= lt!86512 e!115393)))

(assert (=> d!53221 (= c!31266 (and (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3346 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53221 (validMask!0 (mask!8490 thiss!1248))))

(assert (=> d!53221 (= (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)) lt!86513)))

(assert (= (and d!53221 c!31266) b!174740))

(assert (= (and d!53221 (not c!31266)) b!174753))

(assert (= (and b!174753 c!31264) b!174738))

(assert (= (and b!174753 (not c!31264)) b!174748))

(assert (= (and b!174748 c!31263) b!174749))

(assert (= (and b!174748 (not c!31263)) b!174742))

(assert (= (or b!174749 b!174742) bm!17707))

(assert (= (or b!174738 bm!17707) bm!17706))

(assert (= (or b!174738 b!174749) bm!17703))

(assert (= (or b!174740 bm!17706) bm!17708))

(assert (= (or b!174740 bm!17703) bm!17705))

(assert (= (and d!53221 res!82888) b!174746))

(assert (= (and d!53221 c!31267) b!174741))

(assert (= (and d!53221 (not c!31267)) b!174737))

(assert (= (and d!53221 res!82889) b!174756))

(assert (= (and b!174756 res!82885) b!174752))

(assert (= (and b!174756 (not res!82883)) b!174736))

(assert (= (and b!174736 res!82882) b!174750))

(assert (= (and b!174756 res!82890) b!174743))

(assert (= (and b!174743 c!31268) b!174745))

(assert (= (and b!174743 (not c!31268)) b!174739))

(assert (= (and b!174745 res!82887) b!174744))

(assert (= (or b!174745 b!174739) bm!17704))

(assert (= (and b!174743 res!82884) b!174755))

(assert (= (and b!174755 c!31265) b!174751))

(assert (= (and b!174755 (not c!31265)) b!174754))

(assert (= (and b!174751 res!82886) b!174747))

(assert (= (or b!174751 b!174754) bm!17702))

(declare-fun b_lambda!7017 () Bool)

(assert (=> (not b_lambda!7017) (not b!174750)))

(declare-fun t!7059 () Bool)

(declare-fun tb!2783 () Bool)

(assert (=> (and b!174627 (= (defaultEntry!3609 thiss!1248) (defaultEntry!3609 thiss!1248)) t!7059) tb!2783))

(declare-fun result!4607 () Bool)

(assert (=> tb!2783 (= result!4607 tp_is_empty!4095)))

(assert (=> b!174750 t!7059))

(declare-fun b_and!10813 () Bool)

(assert (= b_and!10809 (and (=> t!7059 result!4607) b_and!10813)))

(declare-fun m!203707 () Bool)

(assert (=> b!174744 m!203707))

(declare-fun m!203709 () Bool)

(assert (=> b!174747 m!203709))

(declare-fun m!203711 () Bool)

(assert (=> bm!17708 m!203711))

(assert (=> d!53221 m!203659))

(declare-fun m!203713 () Bool)

(assert (=> b!174736 m!203713))

(assert (=> b!174736 m!203713))

(declare-fun m!203715 () Bool)

(assert (=> b!174736 m!203715))

(declare-fun m!203717 () Bool)

(assert (=> b!174750 m!203717))

(assert (=> b!174750 m!203717))

(declare-fun m!203719 () Bool)

(assert (=> b!174750 m!203719))

(declare-fun m!203721 () Bool)

(assert (=> b!174750 m!203721))

(assert (=> b!174750 m!203713))

(declare-fun m!203723 () Bool)

(assert (=> b!174750 m!203723))

(assert (=> b!174750 m!203719))

(assert (=> b!174750 m!203713))

(declare-fun m!203725 () Bool)

(assert (=> bm!17704 m!203725))

(assert (=> b!174752 m!203713))

(assert (=> b!174752 m!203713))

(declare-fun m!203727 () Bool)

(assert (=> b!174752 m!203727))

(declare-fun m!203729 () Bool)

(assert (=> bm!17705 m!203729))

(declare-fun m!203731 () Bool)

(assert (=> bm!17702 m!203731))

(declare-fun m!203733 () Bool)

(assert (=> b!174740 m!203733))

(assert (=> b!174746 m!203713))

(assert (=> b!174746 m!203713))

(assert (=> b!174746 m!203727))

(declare-fun m!203735 () Bool)

(assert (=> b!174741 m!203735))

(declare-fun m!203737 () Bool)

(assert (=> b!174741 m!203737))

(declare-fun m!203739 () Bool)

(assert (=> b!174741 m!203739))

(declare-fun m!203741 () Bool)

(assert (=> b!174741 m!203741))

(declare-fun m!203743 () Bool)

(assert (=> b!174741 m!203743))

(declare-fun m!203745 () Bool)

(assert (=> b!174741 m!203745))

(declare-fun m!203747 () Bool)

(assert (=> b!174741 m!203747))

(assert (=> b!174741 m!203739))

(assert (=> b!174741 m!203713))

(declare-fun m!203749 () Bool)

(assert (=> b!174741 m!203749))

(declare-fun m!203751 () Bool)

(assert (=> b!174741 m!203751))

(declare-fun m!203753 () Bool)

(assert (=> b!174741 m!203753))

(declare-fun m!203755 () Bool)

(assert (=> b!174741 m!203755))

(declare-fun m!203757 () Bool)

(assert (=> b!174741 m!203757))

(declare-fun m!203759 () Bool)

(assert (=> b!174741 m!203759))

(assert (=> b!174741 m!203711))

(declare-fun m!203761 () Bool)

(assert (=> b!174741 m!203761))

(assert (=> b!174741 m!203735))

(assert (=> b!174741 m!203761))

(declare-fun m!203763 () Bool)

(assert (=> b!174741 m!203763))

(assert (=> b!174741 m!203755))

(assert (=> b!174622 d!53221))

(declare-fun mapIsEmpty!6983 () Bool)

(declare-fun mapRes!6983 () Bool)

(assert (=> mapIsEmpty!6983 mapRes!6983))

(declare-fun b!174765 () Bool)

(declare-fun e!115402 () Bool)

(assert (=> b!174765 (= e!115402 tp_is_empty!4095)))

(declare-fun mapNonEmpty!6983 () Bool)

(declare-fun tp!15650 () Bool)

(assert (=> mapNonEmpty!6983 (= mapRes!6983 (and tp!15650 e!115402))))

(declare-fun mapValue!6983 () ValueCell!1704)

(declare-fun mapRest!6983 () (Array (_ BitVec 32) ValueCell!1704))

(declare-fun mapKey!6983 () (_ BitVec 32))

(assert (=> mapNonEmpty!6983 (= mapRest!6977 (store mapRest!6983 mapKey!6983 mapValue!6983))))

(declare-fun b!174766 () Bool)

(declare-fun e!115403 () Bool)

(assert (=> b!174766 (= e!115403 tp_is_empty!4095)))

(declare-fun condMapEmpty!6983 () Bool)

(declare-fun mapDefault!6983 () ValueCell!1704)

(assert (=> mapNonEmpty!6977 (= condMapEmpty!6983 (= mapRest!6977 ((as const (Array (_ BitVec 32) ValueCell!1704)) mapDefault!6983)))))

(assert (=> mapNonEmpty!6977 (= tp!15640 (and e!115403 mapRes!6983))))

(assert (= (and mapNonEmpty!6977 condMapEmpty!6983) mapIsEmpty!6983))

(assert (= (and mapNonEmpty!6977 (not condMapEmpty!6983)) mapNonEmpty!6983))

(assert (= (and mapNonEmpty!6983 ((_ is ValueCellFull!1704) mapValue!6983)) b!174765))

(assert (= (and mapNonEmpty!6977 ((_ is ValueCellFull!1704) mapDefault!6983)) b!174766))

(declare-fun m!203765 () Bool)

(assert (=> mapNonEmpty!6983 m!203765))

(declare-fun b_lambda!7019 () Bool)

(assert (= b_lambda!7017 (or (and b!174627 b_free!4323) b_lambda!7019)))

(check-sat (not b!174752) (not bm!17704) (not b!174664) (not b_next!4323) (not bm!17705) b_and!10813 (not b!174747) (not b!174665) (not b!174681) (not b!174736) (not b_lambda!7019) (not b!174741) (not d!53213) (not b!174740) (not b!174691) tp_is_empty!4095 (not b!174666) (not b!174746) (not b!174693) (not d!53221) (not bm!17708) (not mapNonEmpty!6983) (not bm!17702) (not b!174750) (not d!53215) (not b!174744) (not d!53219))
(check-sat b_and!10813 (not b_next!4323))
(get-model)

(declare-fun d!53223 () Bool)

(declare-fun isEmpty!444 (Option!192) Bool)

(assert (=> d!53223 (= (isDefined!140 (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828)) (not (isEmpty!444 (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))))

(declare-fun bs!7217 () Bool)

(assert (= bs!7217 d!53223))

(assert (=> bs!7217 m!203703))

(declare-fun m!203767 () Bool)

(assert (=> bs!7217 m!203767))

(assert (=> b!174693 d!53223))

(declare-fun d!53225 () Bool)

(declare-fun c!31273 () Bool)

(assert (=> d!53225 (= c!31273 (and ((_ is Cons!2230) (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) (= (_1!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) key!828)))))

(declare-fun e!115408 () Option!192)

(assert (=> d!53225 (= (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828) e!115408)))

(declare-fun b!174777 () Bool)

(declare-fun e!115409 () Option!192)

(assert (=> b!174777 (= e!115409 (getValueByKey!186 (t!7056 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) key!828))))

(declare-fun b!174776 () Bool)

(assert (=> b!174776 (= e!115408 e!115409)))

(declare-fun c!31274 () Bool)

(assert (=> b!174776 (= c!31274 (and ((_ is Cons!2230) (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) (not (= (_1!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) key!828))))))

(declare-fun b!174775 () Bool)

(assert (=> b!174775 (= e!115408 (Some!191 (_2!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))))))

(declare-fun b!174778 () Bool)

(assert (=> b!174778 (= e!115409 None!190)))

(assert (= (and d!53225 c!31273) b!174775))

(assert (= (and d!53225 (not c!31273)) b!174776))

(assert (= (and b!174776 c!31274) b!174777))

(assert (= (and b!174776 (not c!31274)) b!174778))

(declare-fun m!203769 () Bool)

(assert (=> b!174777 m!203769))

(assert (=> b!174693 d!53225))

(declare-fun d!53227 () Bool)

(assert (=> d!53227 (contains!1160 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) lt!86501)))

(declare-fun lt!86516 () Unit!5365)

(declare-fun choose!942 (ListLongMap!2189 (_ BitVec 64) V!5107 (_ BitVec 64)) Unit!5365)

(assert (=> d!53227 (= lt!86516 (choose!942 lt!86511 lt!86496 (zeroValue!3450 thiss!1248) lt!86501))))

(assert (=> d!53227 (contains!1160 lt!86511 lt!86501)))

(assert (=> d!53227 (= (addStillContains!108 lt!86511 lt!86496 (zeroValue!3450 thiss!1248) lt!86501) lt!86516)))

(declare-fun bs!7218 () Bool)

(assert (= bs!7218 d!53227))

(assert (=> bs!7218 m!203761))

(assert (=> bs!7218 m!203761))

(assert (=> bs!7218 m!203763))

(declare-fun m!203771 () Bool)

(assert (=> bs!7218 m!203771))

(declare-fun m!203773 () Bool)

(assert (=> bs!7218 m!203773))

(assert (=> b!174741 d!53227))

(declare-fun b!174804 () Bool)

(declare-fun e!115430 () Bool)

(declare-fun e!115425 () Bool)

(assert (=> b!174804 (= e!115430 e!115425)))

(declare-fun c!31286 () Bool)

(assert (=> b!174804 (= c!31286 (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun b!174805 () Bool)

(declare-fun lt!86536 () ListLongMap!2189)

(assert (=> b!174805 (= e!115425 (= lt!86536 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3609 thiss!1248))))))

(declare-fun b!174806 () Bool)

(declare-fun isEmpty!445 (ListLongMap!2189) Bool)

(assert (=> b!174806 (= e!115425 (isEmpty!445 lt!86536))))

(declare-fun b!174807 () Bool)

(declare-fun res!82901 () Bool)

(declare-fun e!115429 () Bool)

(assert (=> b!174807 (=> (not res!82901) (not e!115429))))

(assert (=> b!174807 (= res!82901 (not (contains!1160 lt!86536 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!174808 () Bool)

(declare-fun lt!86532 () Unit!5365)

(declare-fun lt!86534 () Unit!5365)

(assert (=> b!174808 (= lt!86532 lt!86534)))

(declare-fun lt!86537 () (_ BitVec 64))

(declare-fun lt!86535 () ListLongMap!2189)

(declare-fun lt!86533 () (_ BitVec 64))

(declare-fun lt!86531 () V!5107)

(assert (=> b!174808 (not (contains!1160 (+!244 lt!86535 (tuple2!3249 lt!86533 lt!86531)) lt!86537))))

(declare-fun addStillNotContains!75 (ListLongMap!2189 (_ BitVec 64) V!5107 (_ BitVec 64)) Unit!5365)

(assert (=> b!174808 (= lt!86534 (addStillNotContains!75 lt!86535 lt!86533 lt!86531 lt!86537))))

(assert (=> b!174808 (= lt!86537 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!174808 (= lt!86531 (get!1978 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!174808 (= lt!86533 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!17714 () ListLongMap!2189)

(assert (=> b!174808 (= lt!86535 call!17714)))

(declare-fun e!115428 () ListLongMap!2189)

(assert (=> b!174808 (= e!115428 (+!244 call!17714 (tuple2!3249 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000) (get!1978 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!174809 () Bool)

(declare-fun e!115426 () Bool)

(assert (=> b!174809 (= e!115430 e!115426)))

(assert (=> b!174809 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun res!82902 () Bool)

(assert (=> b!174809 (= res!82902 (contains!1160 lt!86536 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174809 (=> (not res!82902) (not e!115426))))

(declare-fun bm!17711 () Bool)

(assert (=> bm!17711 (= call!17714 (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3609 thiss!1248)))))

(declare-fun b!174810 () Bool)

(declare-fun e!115427 () ListLongMap!2189)

(assert (=> b!174810 (= e!115427 e!115428)))

(declare-fun c!31283 () Bool)

(assert (=> b!174810 (= c!31283 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174811 () Bool)

(assert (=> b!174811 (= e!115429 e!115430)))

(declare-fun c!31285 () Bool)

(declare-fun e!115424 () Bool)

(assert (=> b!174811 (= c!31285 e!115424)))

(declare-fun res!82900 () Bool)

(assert (=> b!174811 (=> (not res!82900) (not e!115424))))

(assert (=> b!174811 (= res!82900 (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun b!174812 () Bool)

(assert (=> b!174812 (= e!115427 (ListLongMap!2190 Nil!2231))))

(declare-fun d!53229 () Bool)

(assert (=> d!53229 e!115429))

(declare-fun res!82899 () Bool)

(assert (=> d!53229 (=> (not res!82899) (not e!115429))))

(assert (=> d!53229 (= res!82899 (not (contains!1160 lt!86536 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53229 (= lt!86536 e!115427)))

(declare-fun c!31284 () Bool)

(assert (=> d!53229 (= c!31284 (bvsge #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53229 (validMask!0 (mask!8490 thiss!1248))))

(assert (=> d!53229 (= (getCurrentListMapNoExtraKeys!162 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)) lt!86536)))

(declare-fun b!174813 () Bool)

(assert (=> b!174813 (= e!115428 call!17714)))

(declare-fun b!174814 () Bool)

(assert (=> b!174814 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> b!174814 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3779 (_values!3592 thiss!1248))))))

(assert (=> b!174814 (= e!115426 (= (apply!132 lt!86536 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)) (get!1978 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!174815 () Bool)

(assert (=> b!174815 (= e!115424 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174815 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!53229 c!31284) b!174812))

(assert (= (and d!53229 (not c!31284)) b!174810))

(assert (= (and b!174810 c!31283) b!174808))

(assert (= (and b!174810 (not c!31283)) b!174813))

(assert (= (or b!174808 b!174813) bm!17711))

(assert (= (and d!53229 res!82899) b!174807))

(assert (= (and b!174807 res!82901) b!174811))

(assert (= (and b!174811 res!82900) b!174815))

(assert (= (and b!174811 c!31285) b!174809))

(assert (= (and b!174811 (not c!31285)) b!174804))

(assert (= (and b!174809 res!82902) b!174814))

(assert (= (and b!174804 c!31286) b!174805))

(assert (= (and b!174804 (not c!31286)) b!174806))

(declare-fun b_lambda!7021 () Bool)

(assert (=> (not b_lambda!7021) (not b!174808)))

(assert (=> b!174808 t!7059))

(declare-fun b_and!10815 () Bool)

(assert (= b_and!10813 (and (=> t!7059 result!4607) b_and!10815)))

(declare-fun b_lambda!7023 () Bool)

(assert (=> (not b_lambda!7023) (not b!174814)))

(assert (=> b!174814 t!7059))

(declare-fun b_and!10817 () Bool)

(assert (= b_and!10815 (and (=> t!7059 result!4607) b_and!10817)))

(assert (=> b!174809 m!203713))

(assert (=> b!174809 m!203713))

(declare-fun m!203775 () Bool)

(assert (=> b!174809 m!203775))

(assert (=> b!174815 m!203713))

(assert (=> b!174815 m!203713))

(assert (=> b!174815 m!203727))

(declare-fun m!203777 () Bool)

(assert (=> b!174806 m!203777))

(declare-fun m!203779 () Bool)

(assert (=> b!174805 m!203779))

(assert (=> bm!17711 m!203779))

(declare-fun m!203781 () Bool)

(assert (=> b!174807 m!203781))

(assert (=> b!174810 m!203713))

(assert (=> b!174810 m!203713))

(assert (=> b!174810 m!203727))

(declare-fun m!203783 () Bool)

(assert (=> d!53229 m!203783))

(assert (=> d!53229 m!203659))

(assert (=> b!174814 m!203713))

(declare-fun m!203785 () Bool)

(assert (=> b!174814 m!203785))

(assert (=> b!174814 m!203717))

(assert (=> b!174814 m!203717))

(assert (=> b!174814 m!203719))

(assert (=> b!174814 m!203721))

(assert (=> b!174814 m!203713))

(assert (=> b!174814 m!203719))

(declare-fun m!203787 () Bool)

(assert (=> b!174808 m!203787))

(assert (=> b!174808 m!203717))

(assert (=> b!174808 m!203717))

(assert (=> b!174808 m!203719))

(assert (=> b!174808 m!203721))

(declare-fun m!203789 () Bool)

(assert (=> b!174808 m!203789))

(assert (=> b!174808 m!203713))

(assert (=> b!174808 m!203719))

(assert (=> b!174808 m!203789))

(declare-fun m!203791 () Bool)

(assert (=> b!174808 m!203791))

(declare-fun m!203793 () Bool)

(assert (=> b!174808 m!203793))

(assert (=> b!174741 d!53229))

(declare-fun d!53231 () Bool)

(declare-fun get!1979 (Option!192) V!5107)

(assert (=> d!53231 (= (apply!132 lt!86505 lt!86503) (get!1979 (getValueByKey!186 (toList!1110 lt!86505) lt!86503)))))

(declare-fun bs!7219 () Bool)

(assert (= bs!7219 d!53231))

(declare-fun m!203795 () Bool)

(assert (=> bs!7219 m!203795))

(assert (=> bs!7219 m!203795))

(declare-fun m!203797 () Bool)

(assert (=> bs!7219 m!203797))

(assert (=> b!174741 d!53231))

(declare-fun d!53233 () Bool)

(assert (=> d!53233 (= (apply!132 (+!244 lt!86505 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) lt!86503) (get!1979 (getValueByKey!186 (toList!1110 (+!244 lt!86505 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))) lt!86503)))))

(declare-fun bs!7220 () Bool)

(assert (= bs!7220 d!53233))

(declare-fun m!203799 () Bool)

(assert (=> bs!7220 m!203799))

(assert (=> bs!7220 m!203799))

(declare-fun m!203801 () Bool)

(assert (=> bs!7220 m!203801))

(assert (=> b!174741 d!53233))

(declare-fun d!53235 () Bool)

(assert (=> d!53235 (= (apply!132 (+!244 lt!86510 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) lt!86493) (get!1979 (getValueByKey!186 (toList!1110 (+!244 lt!86510 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))) lt!86493)))))

(declare-fun bs!7221 () Bool)

(assert (= bs!7221 d!53235))

(declare-fun m!203803 () Bool)

(assert (=> bs!7221 m!203803))

(assert (=> bs!7221 m!203803))

(declare-fun m!203805 () Bool)

(assert (=> bs!7221 m!203805))

(assert (=> b!174741 d!53235))

(declare-fun d!53237 () Bool)

(assert (=> d!53237 (= (apply!132 (+!244 lt!86510 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) lt!86493) (apply!132 lt!86510 lt!86493))))

(declare-fun lt!86540 () Unit!5365)

(declare-fun choose!943 (ListLongMap!2189 (_ BitVec 64) V!5107 (_ BitVec 64)) Unit!5365)

(assert (=> d!53237 (= lt!86540 (choose!943 lt!86510 lt!86507 (zeroValue!3450 thiss!1248) lt!86493))))

(declare-fun e!115433 () Bool)

(assert (=> d!53237 e!115433))

(declare-fun res!82905 () Bool)

(assert (=> d!53237 (=> (not res!82905) (not e!115433))))

(assert (=> d!53237 (= res!82905 (contains!1160 lt!86510 lt!86493))))

(assert (=> d!53237 (= (addApplyDifferent!108 lt!86510 lt!86507 (zeroValue!3450 thiss!1248) lt!86493) lt!86540)))

(declare-fun b!174819 () Bool)

(assert (=> b!174819 (= e!115433 (not (= lt!86493 lt!86507)))))

(assert (= (and d!53237 res!82905) b!174819))

(assert (=> d!53237 m!203755))

(assert (=> d!53237 m!203757))

(assert (=> d!53237 m!203755))

(declare-fun m!203807 () Bool)

(assert (=> d!53237 m!203807))

(assert (=> d!53237 m!203751))

(declare-fun m!203809 () Bool)

(assert (=> d!53237 m!203809))

(assert (=> b!174741 d!53237))

(declare-fun d!53239 () Bool)

(assert (=> d!53239 (= (apply!132 lt!86506 lt!86499) (get!1979 (getValueByKey!186 (toList!1110 lt!86506) lt!86499)))))

(declare-fun bs!7222 () Bool)

(assert (= bs!7222 d!53239))

(declare-fun m!203811 () Bool)

(assert (=> bs!7222 m!203811))

(assert (=> bs!7222 m!203811))

(declare-fun m!203813 () Bool)

(assert (=> bs!7222 m!203813))

(assert (=> b!174741 d!53239))

(declare-fun d!53241 () Bool)

(assert (=> d!53241 (= (apply!132 lt!86510 lt!86493) (get!1979 (getValueByKey!186 (toList!1110 lt!86510) lt!86493)))))

(declare-fun bs!7223 () Bool)

(assert (= bs!7223 d!53241))

(declare-fun m!203815 () Bool)

(assert (=> bs!7223 m!203815))

(assert (=> bs!7223 m!203815))

(declare-fun m!203817 () Bool)

(assert (=> bs!7223 m!203817))

(assert (=> b!174741 d!53241))

(declare-fun d!53243 () Bool)

(declare-fun e!115436 () Bool)

(assert (=> d!53243 e!115436))

(declare-fun res!82910 () Bool)

(assert (=> d!53243 (=> (not res!82910) (not e!115436))))

(declare-fun lt!86551 () ListLongMap!2189)

(assert (=> d!53243 (= res!82910 (contains!1160 lt!86551 (_1!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))))))

(declare-fun lt!86549 () List!2234)

(assert (=> d!53243 (= lt!86551 (ListLongMap!2190 lt!86549))))

(declare-fun lt!86550 () Unit!5365)

(declare-fun lt!86552 () Unit!5365)

(assert (=> d!53243 (= lt!86550 lt!86552)))

(assert (=> d!53243 (= (getValueByKey!186 lt!86549 (_1!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!100 (List!2234 (_ BitVec 64) V!5107) Unit!5365)

(assert (=> d!53243 (= lt!86552 (lemmaContainsTupThenGetReturnValue!100 lt!86549 (_1!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))))))

(declare-fun insertStrictlySorted!102 (List!2234 (_ BitVec 64) V!5107) List!2234)

(assert (=> d!53243 (= lt!86549 (insertStrictlySorted!102 (toList!1110 lt!86510) (_1!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))))))

(assert (=> d!53243 (= (+!244 lt!86510 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))) lt!86551)))

(declare-fun b!174824 () Bool)

(declare-fun res!82911 () Bool)

(assert (=> b!174824 (=> (not res!82911) (not e!115436))))

(assert (=> b!174824 (= res!82911 (= (getValueByKey!186 (toList!1110 lt!86551) (_1!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))))))))

(declare-fun b!174825 () Bool)

(declare-fun contains!1162 (List!2234 tuple2!3248) Bool)

(assert (=> b!174825 (= e!115436 (contains!1162 (toList!1110 lt!86551) (tuple2!3249 lt!86507 (zeroValue!3450 thiss!1248))))))

(assert (= (and d!53243 res!82910) b!174824))

(assert (= (and b!174824 res!82911) b!174825))

(declare-fun m!203819 () Bool)

(assert (=> d!53243 m!203819))

(declare-fun m!203821 () Bool)

(assert (=> d!53243 m!203821))

(declare-fun m!203823 () Bool)

(assert (=> d!53243 m!203823))

(declare-fun m!203825 () Bool)

(assert (=> d!53243 m!203825))

(declare-fun m!203827 () Bool)

(assert (=> b!174824 m!203827))

(declare-fun m!203829 () Bool)

(assert (=> b!174825 m!203829))

(assert (=> b!174741 d!53243))

(declare-fun d!53245 () Bool)

(assert (=> d!53245 (= (apply!132 (+!244 lt!86506 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) lt!86499) (apply!132 lt!86506 lt!86499))))

(declare-fun lt!86553 () Unit!5365)

(assert (=> d!53245 (= lt!86553 (choose!943 lt!86506 lt!86502 (minValue!3450 thiss!1248) lt!86499))))

(declare-fun e!115437 () Bool)

(assert (=> d!53245 e!115437))

(declare-fun res!82912 () Bool)

(assert (=> d!53245 (=> (not res!82912) (not e!115437))))

(assert (=> d!53245 (= res!82912 (contains!1160 lt!86506 lt!86499))))

(assert (=> d!53245 (= (addApplyDifferent!108 lt!86506 lt!86502 (minValue!3450 thiss!1248) lt!86499) lt!86553)))

(declare-fun b!174826 () Bool)

(assert (=> b!174826 (= e!115437 (not (= lt!86499 lt!86502)))))

(assert (= (and d!53245 res!82912) b!174826))

(assert (=> d!53245 m!203739))

(assert (=> d!53245 m!203741))

(assert (=> d!53245 m!203739))

(declare-fun m!203831 () Bool)

(assert (=> d!53245 m!203831))

(assert (=> d!53245 m!203747))

(declare-fun m!203833 () Bool)

(assert (=> d!53245 m!203833))

(assert (=> b!174741 d!53245))

(declare-fun d!53247 () Bool)

(declare-fun e!115438 () Bool)

(assert (=> d!53247 e!115438))

(declare-fun res!82913 () Bool)

(assert (=> d!53247 (=> (not res!82913) (not e!115438))))

(declare-fun lt!86556 () ListLongMap!2189)

(assert (=> d!53247 (= res!82913 (contains!1160 lt!86556 (_1!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))))))

(declare-fun lt!86554 () List!2234)

(assert (=> d!53247 (= lt!86556 (ListLongMap!2190 lt!86554))))

(declare-fun lt!86555 () Unit!5365)

(declare-fun lt!86557 () Unit!5365)

(assert (=> d!53247 (= lt!86555 lt!86557)))

(assert (=> d!53247 (= (getValueByKey!186 lt!86554 (_1!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))))))

(assert (=> d!53247 (= lt!86557 (lemmaContainsTupThenGetReturnValue!100 lt!86554 (_1!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))))))

(assert (=> d!53247 (= lt!86554 (insertStrictlySorted!102 (toList!1110 lt!86505) (_1!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))))))

(assert (=> d!53247 (= (+!244 lt!86505 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) lt!86556)))

(declare-fun b!174827 () Bool)

(declare-fun res!82914 () Bool)

(assert (=> b!174827 (=> (not res!82914) (not e!115438))))

(assert (=> b!174827 (= res!82914 (= (getValueByKey!186 (toList!1110 lt!86556) (_1!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))))))))

(declare-fun b!174828 () Bool)

(assert (=> b!174828 (= e!115438 (contains!1162 (toList!1110 lt!86556) (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))))))

(assert (= (and d!53247 res!82913) b!174827))

(assert (= (and b!174827 res!82914) b!174828))

(declare-fun m!203835 () Bool)

(assert (=> d!53247 m!203835))

(declare-fun m!203837 () Bool)

(assert (=> d!53247 m!203837))

(declare-fun m!203839 () Bool)

(assert (=> d!53247 m!203839))

(declare-fun m!203841 () Bool)

(assert (=> d!53247 m!203841))

(declare-fun m!203843 () Bool)

(assert (=> b!174827 m!203843))

(declare-fun m!203845 () Bool)

(assert (=> b!174828 m!203845))

(assert (=> b!174741 d!53247))

(declare-fun d!53249 () Bool)

(assert (=> d!53249 (= (apply!132 (+!244 lt!86505 (tuple2!3249 lt!86492 (minValue!3450 thiss!1248))) lt!86503) (apply!132 lt!86505 lt!86503))))

(declare-fun lt!86558 () Unit!5365)

(assert (=> d!53249 (= lt!86558 (choose!943 lt!86505 lt!86492 (minValue!3450 thiss!1248) lt!86503))))

(declare-fun e!115439 () Bool)

(assert (=> d!53249 e!115439))

(declare-fun res!82915 () Bool)

(assert (=> d!53249 (=> (not res!82915) (not e!115439))))

(assert (=> d!53249 (= res!82915 (contains!1160 lt!86505 lt!86503))))

(assert (=> d!53249 (= (addApplyDifferent!108 lt!86505 lt!86492 (minValue!3450 thiss!1248) lt!86503) lt!86558)))

(declare-fun b!174829 () Bool)

(assert (=> b!174829 (= e!115439 (not (= lt!86503 lt!86492)))))

(assert (= (and d!53249 res!82915) b!174829))

(assert (=> d!53249 m!203735))

(assert (=> d!53249 m!203737))

(assert (=> d!53249 m!203735))

(declare-fun m!203847 () Bool)

(assert (=> d!53249 m!203847))

(assert (=> d!53249 m!203759))

(declare-fun m!203849 () Bool)

(assert (=> d!53249 m!203849))

(assert (=> b!174741 d!53249))

(declare-fun d!53251 () Bool)

(declare-fun e!115440 () Bool)

(assert (=> d!53251 e!115440))

(declare-fun res!82916 () Bool)

(assert (=> d!53251 (=> res!82916 e!115440)))

(declare-fun lt!86560 () Bool)

(assert (=> d!53251 (= res!82916 (not lt!86560))))

(declare-fun lt!86562 () Bool)

(assert (=> d!53251 (= lt!86560 lt!86562)))

(declare-fun lt!86561 () Unit!5365)

(declare-fun e!115441 () Unit!5365)

(assert (=> d!53251 (= lt!86561 e!115441)))

(declare-fun c!31287 () Bool)

(assert (=> d!53251 (= c!31287 lt!86562)))

(assert (=> d!53251 (= lt!86562 (containsKey!190 (toList!1110 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) lt!86501))))

(assert (=> d!53251 (= (contains!1160 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) lt!86501) lt!86560)))

(declare-fun b!174830 () Bool)

(declare-fun lt!86559 () Unit!5365)

(assert (=> b!174830 (= e!115441 lt!86559)))

(assert (=> b!174830 (= lt!86559 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) lt!86501))))

(assert (=> b!174830 (isDefined!140 (getValueByKey!186 (toList!1110 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) lt!86501))))

(declare-fun b!174831 () Bool)

(declare-fun Unit!5369 () Unit!5365)

(assert (=> b!174831 (= e!115441 Unit!5369)))

(declare-fun b!174832 () Bool)

(assert (=> b!174832 (= e!115440 (isDefined!140 (getValueByKey!186 (toList!1110 (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) lt!86501)))))

(assert (= (and d!53251 c!31287) b!174830))

(assert (= (and d!53251 (not c!31287)) b!174831))

(assert (= (and d!53251 (not res!82916)) b!174832))

(declare-fun m!203851 () Bool)

(assert (=> d!53251 m!203851))

(declare-fun m!203853 () Bool)

(assert (=> b!174830 m!203853))

(declare-fun m!203855 () Bool)

(assert (=> b!174830 m!203855))

(assert (=> b!174830 m!203855))

(declare-fun m!203857 () Bool)

(assert (=> b!174830 m!203857))

(assert (=> b!174832 m!203855))

(assert (=> b!174832 m!203855))

(assert (=> b!174832 m!203857))

(assert (=> b!174741 d!53251))

(declare-fun d!53253 () Bool)

(assert (=> d!53253 (= (apply!132 (+!244 lt!86506 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) lt!86499) (get!1979 (getValueByKey!186 (toList!1110 (+!244 lt!86506 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))) lt!86499)))))

(declare-fun bs!7224 () Bool)

(assert (= bs!7224 d!53253))

(declare-fun m!203859 () Bool)

(assert (=> bs!7224 m!203859))

(assert (=> bs!7224 m!203859))

(declare-fun m!203861 () Bool)

(assert (=> bs!7224 m!203861))

(assert (=> b!174741 d!53253))

(declare-fun d!53255 () Bool)

(declare-fun e!115442 () Bool)

(assert (=> d!53255 e!115442))

(declare-fun res!82917 () Bool)

(assert (=> d!53255 (=> (not res!82917) (not e!115442))))

(declare-fun lt!86565 () ListLongMap!2189)

(assert (=> d!53255 (= res!82917 (contains!1160 lt!86565 (_1!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))))))

(declare-fun lt!86563 () List!2234)

(assert (=> d!53255 (= lt!86565 (ListLongMap!2190 lt!86563))))

(declare-fun lt!86564 () Unit!5365)

(declare-fun lt!86566 () Unit!5365)

(assert (=> d!53255 (= lt!86564 lt!86566)))

(assert (=> d!53255 (= (getValueByKey!186 lt!86563 (_1!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))))))

(assert (=> d!53255 (= lt!86566 (lemmaContainsTupThenGetReturnValue!100 lt!86563 (_1!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))))))

(assert (=> d!53255 (= lt!86563 (insertStrictlySorted!102 (toList!1110 lt!86511) (_1!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))))))

(assert (=> d!53255 (= (+!244 lt!86511 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))) lt!86565)))

(declare-fun b!174833 () Bool)

(declare-fun res!82918 () Bool)

(assert (=> b!174833 (=> (not res!82918) (not e!115442))))

(assert (=> b!174833 (= res!82918 (= (getValueByKey!186 (toList!1110 lt!86565) (_1!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))))))))

(declare-fun b!174834 () Bool)

(assert (=> b!174834 (= e!115442 (contains!1162 (toList!1110 lt!86565) (tuple2!3249 lt!86496 (zeroValue!3450 thiss!1248))))))

(assert (= (and d!53255 res!82917) b!174833))

(assert (= (and b!174833 res!82918) b!174834))

(declare-fun m!203863 () Bool)

(assert (=> d!53255 m!203863))

(declare-fun m!203865 () Bool)

(assert (=> d!53255 m!203865))

(declare-fun m!203867 () Bool)

(assert (=> d!53255 m!203867))

(declare-fun m!203869 () Bool)

(assert (=> d!53255 m!203869))

(declare-fun m!203871 () Bool)

(assert (=> b!174833 m!203871))

(declare-fun m!203873 () Bool)

(assert (=> b!174834 m!203873))

(assert (=> b!174741 d!53255))

(declare-fun d!53257 () Bool)

(declare-fun e!115443 () Bool)

(assert (=> d!53257 e!115443))

(declare-fun res!82919 () Bool)

(assert (=> d!53257 (=> (not res!82919) (not e!115443))))

(declare-fun lt!86569 () ListLongMap!2189)

(assert (=> d!53257 (= res!82919 (contains!1160 lt!86569 (_1!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))))))

(declare-fun lt!86567 () List!2234)

(assert (=> d!53257 (= lt!86569 (ListLongMap!2190 lt!86567))))

(declare-fun lt!86568 () Unit!5365)

(declare-fun lt!86570 () Unit!5365)

(assert (=> d!53257 (= lt!86568 lt!86570)))

(assert (=> d!53257 (= (getValueByKey!186 lt!86567 (_1!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))))))

(assert (=> d!53257 (= lt!86570 (lemmaContainsTupThenGetReturnValue!100 lt!86567 (_1!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))))))

(assert (=> d!53257 (= lt!86567 (insertStrictlySorted!102 (toList!1110 lt!86506) (_1!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))))))

(assert (=> d!53257 (= (+!244 lt!86506 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))) lt!86569)))

(declare-fun b!174835 () Bool)

(declare-fun res!82920 () Bool)

(assert (=> b!174835 (=> (not res!82920) (not e!115443))))

(assert (=> b!174835 (= res!82920 (= (getValueByKey!186 (toList!1110 lt!86569) (_1!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))))))))

(declare-fun b!174836 () Bool)

(assert (=> b!174836 (= e!115443 (contains!1162 (toList!1110 lt!86569) (tuple2!3249 lt!86502 (minValue!3450 thiss!1248))))))

(assert (= (and d!53257 res!82919) b!174835))

(assert (= (and b!174835 res!82920) b!174836))

(declare-fun m!203875 () Bool)

(assert (=> d!53257 m!203875))

(declare-fun m!203877 () Bool)

(assert (=> d!53257 m!203877))

(declare-fun m!203879 () Bool)

(assert (=> d!53257 m!203879))

(declare-fun m!203881 () Bool)

(assert (=> d!53257 m!203881))

(declare-fun m!203883 () Bool)

(assert (=> b!174835 m!203883))

(declare-fun m!203885 () Bool)

(assert (=> b!174836 m!203885))

(assert (=> b!174741 d!53257))

(declare-fun d!53259 () Bool)

(assert (=> d!53259 (= (apply!132 lt!86513 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)) (get!1979 (getValueByKey!186 (toList!1110 lt!86513) (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7225 () Bool)

(assert (= bs!7225 d!53259))

(assert (=> bs!7225 m!203713))

(declare-fun m!203887 () Bool)

(assert (=> bs!7225 m!203887))

(assert (=> bs!7225 m!203887))

(declare-fun m!203889 () Bool)

(assert (=> bs!7225 m!203889))

(assert (=> b!174750 d!53259))

(declare-fun d!53261 () Bool)

(declare-fun c!31290 () Bool)

(assert (=> d!53261 (= c!31290 ((_ is ValueCellFull!1704) (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!115446 () V!5107)

(assert (=> d!53261 (= (get!1978 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!115446)))

(declare-fun b!174841 () Bool)

(declare-fun get!1980 (ValueCell!1704 V!5107) V!5107)

(assert (=> b!174841 (= e!115446 (get!1980 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!174842 () Bool)

(declare-fun get!1981 (ValueCell!1704 V!5107) V!5107)

(assert (=> b!174842 (= e!115446 (get!1981 (select (arr!3479 (_values!3592 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!470 (defaultEntry!3609 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53261 c!31290) b!174841))

(assert (= (and d!53261 (not c!31290)) b!174842))

(assert (=> b!174841 m!203717))

(assert (=> b!174841 m!203719))

(declare-fun m!203891 () Bool)

(assert (=> b!174841 m!203891))

(assert (=> b!174842 m!203717))

(assert (=> b!174842 m!203719))

(declare-fun m!203893 () Bool)

(assert (=> b!174842 m!203893))

(assert (=> b!174750 d!53261))

(declare-fun d!53263 () Bool)

(declare-fun e!115447 () Bool)

(assert (=> d!53263 e!115447))

(declare-fun res!82921 () Bool)

(assert (=> d!53263 (=> (not res!82921) (not e!115447))))

(declare-fun lt!86573 () ListLongMap!2189)

(assert (=> d!53263 (= res!82921 (contains!1160 lt!86573 (_1!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))))

(declare-fun lt!86571 () List!2234)

(assert (=> d!53263 (= lt!86573 (ListLongMap!2190 lt!86571))))

(declare-fun lt!86572 () Unit!5365)

(declare-fun lt!86574 () Unit!5365)

(assert (=> d!53263 (= lt!86572 lt!86574)))

(assert (=> d!53263 (= (getValueByKey!186 lt!86571 (_1!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))) (Some!191 (_2!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))))

(assert (=> d!53263 (= lt!86574 (lemmaContainsTupThenGetReturnValue!100 lt!86571 (_1!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))) (_2!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))))

(assert (=> d!53263 (= lt!86571 (insertStrictlySorted!102 (toList!1110 (ite c!31266 call!17706 (ite c!31264 call!17711 call!17709))) (_1!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))) (_2!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))))

(assert (=> d!53263 (= (+!244 (ite c!31266 call!17706 (ite c!31264 call!17711 call!17709)) (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))) lt!86573)))

(declare-fun b!174843 () Bool)

(declare-fun res!82922 () Bool)

(assert (=> b!174843 (=> (not res!82922) (not e!115447))))

(assert (=> b!174843 (= res!82922 (= (getValueByKey!186 (toList!1110 lt!86573) (_1!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))) (Some!191 (_2!1634 (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))))

(declare-fun b!174844 () Bool)

(assert (=> b!174844 (= e!115447 (contains!1162 (toList!1110 lt!86573) (ite (or c!31266 c!31264) (tuple2!3249 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3450 thiss!1248)) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(assert (= (and d!53263 res!82921) b!174843))

(assert (= (and b!174843 res!82922) b!174844))

(declare-fun m!203895 () Bool)

(assert (=> d!53263 m!203895))

(declare-fun m!203897 () Bool)

(assert (=> d!53263 m!203897))

(declare-fun m!203899 () Bool)

(assert (=> d!53263 m!203899))

(declare-fun m!203901 () Bool)

(assert (=> d!53263 m!203901))

(declare-fun m!203903 () Bool)

(assert (=> b!174843 m!203903))

(declare-fun m!203905 () Bool)

(assert (=> b!174844 m!203905))

(assert (=> bm!17705 d!53263))

(declare-fun d!53265 () Bool)

(declare-fun e!115448 () Bool)

(assert (=> d!53265 e!115448))

(declare-fun res!82923 () Bool)

(assert (=> d!53265 (=> res!82923 e!115448)))

(declare-fun lt!86576 () Bool)

(assert (=> d!53265 (= res!82923 (not lt!86576))))

(declare-fun lt!86578 () Bool)

(assert (=> d!53265 (= lt!86576 lt!86578)))

(declare-fun lt!86577 () Unit!5365)

(declare-fun e!115449 () Unit!5365)

(assert (=> d!53265 (= lt!86577 e!115449)))

(declare-fun c!31291 () Bool)

(assert (=> d!53265 (= c!31291 lt!86578)))

(assert (=> d!53265 (= lt!86578 (containsKey!190 (toList!1110 lt!86513) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53265 (= (contains!1160 lt!86513 #b1000000000000000000000000000000000000000000000000000000000000000) lt!86576)))

(declare-fun b!174845 () Bool)

(declare-fun lt!86575 () Unit!5365)

(assert (=> b!174845 (= e!115449 lt!86575)))

(assert (=> b!174845 (= lt!86575 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 lt!86513) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174845 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174846 () Bool)

(declare-fun Unit!5370 () Unit!5365)

(assert (=> b!174846 (= e!115449 Unit!5370)))

(declare-fun b!174847 () Bool)

(assert (=> b!174847 (= e!115448 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53265 c!31291) b!174845))

(assert (= (and d!53265 (not c!31291)) b!174846))

(assert (= (and d!53265 (not res!82923)) b!174847))

(declare-fun m!203907 () Bool)

(assert (=> d!53265 m!203907))

(declare-fun m!203909 () Bool)

(assert (=> b!174845 m!203909))

(declare-fun m!203911 () Bool)

(assert (=> b!174845 m!203911))

(assert (=> b!174845 m!203911))

(declare-fun m!203913 () Bool)

(assert (=> b!174845 m!203913))

(assert (=> b!174847 m!203911))

(assert (=> b!174847 m!203911))

(assert (=> b!174847 m!203913))

(assert (=> bm!17702 d!53265))

(declare-fun b!174860 () Bool)

(declare-fun c!31299 () Bool)

(declare-fun lt!86583 () (_ BitVec 64))

(assert (=> b!174860 (= c!31299 (= lt!86583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!115458 () SeekEntryResult!556)

(declare-fun e!115456 () SeekEntryResult!556)

(assert (=> b!174860 (= e!115458 e!115456)))

(declare-fun b!174861 () Bool)

(declare-fun e!115457 () SeekEntryResult!556)

(assert (=> b!174861 (= e!115457 Undefined!556)))

(declare-fun b!174862 () Bool)

(assert (=> b!174862 (= e!115458 (Found!556 (index!4394 lt!86433)))))

(declare-fun b!174863 () Bool)

(assert (=> b!174863 (= e!115457 e!115458)))

(declare-fun c!31300 () Bool)

(assert (=> b!174863 (= c!31300 (= lt!86583 key!828))))

(declare-fun d!53267 () Bool)

(declare-fun lt!86584 () SeekEntryResult!556)

(assert (=> d!53267 (and (or ((_ is Undefined!556) lt!86584) (not ((_ is Found!556) lt!86584)) (and (bvsge (index!4393 lt!86584) #b00000000000000000000000000000000) (bvslt (index!4393 lt!86584) (size!3778 (_keys!5453 thiss!1248))))) (or ((_ is Undefined!556) lt!86584) ((_ is Found!556) lt!86584) (not ((_ is MissingVacant!556) lt!86584)) (not (= (index!4395 lt!86584) (index!4394 lt!86433))) (and (bvsge (index!4395 lt!86584) #b00000000000000000000000000000000) (bvslt (index!4395 lt!86584) (size!3778 (_keys!5453 thiss!1248))))) (or ((_ is Undefined!556) lt!86584) (ite ((_ is Found!556) lt!86584) (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4393 lt!86584)) key!828) (and ((_ is MissingVacant!556) lt!86584) (= (index!4395 lt!86584) (index!4394 lt!86433)) (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4395 lt!86584)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53267 (= lt!86584 e!115457)))

(declare-fun c!31298 () Bool)

(assert (=> d!53267 (= c!31298 (bvsge (x!19244 lt!86433) #b01111111111111111111111111111110))))

(assert (=> d!53267 (= lt!86583 (select (arr!3478 (_keys!5453 thiss!1248)) (index!4394 lt!86433)))))

(assert (=> d!53267 (validMask!0 (mask!8490 thiss!1248))))

(assert (=> d!53267 (= (seekKeyOrZeroReturnVacant!0 (x!19244 lt!86433) (index!4394 lt!86433) (index!4394 lt!86433) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)) lt!86584)))

(declare-fun b!174864 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!174864 (= e!115456 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19244 lt!86433) #b00000000000000000000000000000001) (nextIndex!0 (index!4394 lt!86433) (x!19244 lt!86433) (mask!8490 thiss!1248)) (index!4394 lt!86433) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(declare-fun b!174865 () Bool)

(assert (=> b!174865 (= e!115456 (MissingVacant!556 (index!4394 lt!86433)))))

(assert (= (and d!53267 c!31298) b!174861))

(assert (= (and d!53267 (not c!31298)) b!174863))

(assert (= (and b!174863 c!31300) b!174862))

(assert (= (and b!174863 (not c!31300)) b!174860))

(assert (= (and b!174860 c!31299) b!174865))

(assert (= (and b!174860 (not c!31299)) b!174864))

(declare-fun m!203915 () Bool)

(assert (=> d!53267 m!203915))

(declare-fun m!203917 () Bool)

(assert (=> d!53267 m!203917))

(assert (=> d!53267 m!203697))

(assert (=> d!53267 m!203659))

(declare-fun m!203919 () Bool)

(assert (=> b!174864 m!203919))

(assert (=> b!174864 m!203919))

(declare-fun m!203921 () Bool)

(assert (=> b!174864 m!203921))

(assert (=> b!174681 d!53267))

(declare-fun d!53269 () Bool)

(assert (=> d!53269 (= (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!174752 d!53269))

(declare-fun d!53271 () Bool)

(declare-fun e!115459 () Bool)

(assert (=> d!53271 e!115459))

(declare-fun res!82924 () Bool)

(assert (=> d!53271 (=> res!82924 e!115459)))

(declare-fun lt!86586 () Bool)

(assert (=> d!53271 (= res!82924 (not lt!86586))))

(declare-fun lt!86588 () Bool)

(assert (=> d!53271 (= lt!86586 lt!86588)))

(declare-fun lt!86587 () Unit!5365)

(declare-fun e!115460 () Unit!5365)

(assert (=> d!53271 (= lt!86587 e!115460)))

(declare-fun c!31301 () Bool)

(assert (=> d!53271 (= c!31301 lt!86588)))

(assert (=> d!53271 (= lt!86588 (containsKey!190 (toList!1110 lt!86513) (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53271 (= (contains!1160 lt!86513 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)) lt!86586)))

(declare-fun b!174866 () Bool)

(declare-fun lt!86585 () Unit!5365)

(assert (=> b!174866 (= e!115460 lt!86585)))

(assert (=> b!174866 (= lt!86585 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 lt!86513) (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174866 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174867 () Bool)

(declare-fun Unit!5371 () Unit!5365)

(assert (=> b!174867 (= e!115460 Unit!5371)))

(declare-fun b!174868 () Bool)

(assert (=> b!174868 (= e!115459 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53271 c!31301) b!174866))

(assert (= (and d!53271 (not c!31301)) b!174867))

(assert (= (and d!53271 (not res!82924)) b!174868))

(assert (=> d!53271 m!203713))

(declare-fun m!203923 () Bool)

(assert (=> d!53271 m!203923))

(assert (=> b!174866 m!203713))

(declare-fun m!203925 () Bool)

(assert (=> b!174866 m!203925))

(assert (=> b!174866 m!203713))

(assert (=> b!174866 m!203887))

(assert (=> b!174866 m!203887))

(declare-fun m!203927 () Bool)

(assert (=> b!174866 m!203927))

(assert (=> b!174868 m!203713))

(assert (=> b!174868 m!203887))

(assert (=> b!174868 m!203887))

(assert (=> b!174868 m!203927))

(assert (=> b!174736 d!53271))

(declare-fun b!174879 () Bool)

(declare-fun res!82933 () Bool)

(declare-fun e!115463 () Bool)

(assert (=> b!174879 (=> (not res!82933) (not e!115463))))

(declare-fun size!3782 (LongMapFixedSize!2316) (_ BitVec 32))

(assert (=> b!174879 (= res!82933 (= (size!3782 thiss!1248) (bvadd (_size!1207 thiss!1248) (bvsdiv (bvadd (extraKeys!3346 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!53273 () Bool)

(declare-fun res!82935 () Bool)

(assert (=> d!53273 (=> (not res!82935) (not e!115463))))

(assert (=> d!53273 (= res!82935 (validMask!0 (mask!8490 thiss!1248)))))

(assert (=> d!53273 (= (simpleValid!145 thiss!1248) e!115463)))

(declare-fun b!174880 () Bool)

(assert (=> b!174880 (= e!115463 (and (bvsge (extraKeys!3346 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3346 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1207 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!174877 () Bool)

(declare-fun res!82936 () Bool)

(assert (=> b!174877 (=> (not res!82936) (not e!115463))))

(assert (=> b!174877 (= res!82936 (and (= (size!3779 (_values!3592 thiss!1248)) (bvadd (mask!8490 thiss!1248) #b00000000000000000000000000000001)) (= (size!3778 (_keys!5453 thiss!1248)) (size!3779 (_values!3592 thiss!1248))) (bvsge (_size!1207 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1207 thiss!1248) (bvadd (mask!8490 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!174878 () Bool)

(declare-fun res!82934 () Bool)

(assert (=> b!174878 (=> (not res!82934) (not e!115463))))

(assert (=> b!174878 (= res!82934 (bvsge (size!3782 thiss!1248) (_size!1207 thiss!1248)))))

(assert (= (and d!53273 res!82935) b!174877))

(assert (= (and b!174877 res!82936) b!174878))

(assert (= (and b!174878 res!82934) b!174879))

(assert (= (and b!174879 res!82933) b!174880))

(declare-fun m!203929 () Bool)

(assert (=> b!174879 m!203929))

(assert (=> d!53273 m!203659))

(assert (=> b!174878 m!203929))

(assert (=> d!53213 d!53273))

(declare-fun d!53275 () Bool)

(assert (=> d!53275 (= (apply!132 lt!86513 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1979 (getValueByKey!186 (toList!1110 lt!86513) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7226 () Bool)

(assert (= bs!7226 d!53275))

(declare-fun m!203931 () Bool)

(assert (=> bs!7226 m!203931))

(assert (=> bs!7226 m!203931))

(declare-fun m!203933 () Bool)

(assert (=> bs!7226 m!203933))

(assert (=> b!174744 d!53275))

(declare-fun b!174889 () Bool)

(declare-fun e!115469 () (_ BitVec 32))

(assert (=> b!174889 (= e!115469 #b00000000000000000000000000000000)))

(declare-fun bm!17714 () Bool)

(declare-fun call!17717 () (_ BitVec 32))

(assert (=> bm!17714 (= call!17717 (arrayCountValidKeys!0 (_keys!5453 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun b!174890 () Bool)

(declare-fun e!115468 () (_ BitVec 32))

(assert (=> b!174890 (= e!115468 (bvadd #b00000000000000000000000000000001 call!17717))))

(declare-fun b!174891 () Bool)

(assert (=> b!174891 (= e!115469 e!115468)))

(declare-fun c!31306 () Bool)

(assert (=> b!174891 (= c!31306 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53277 () Bool)

(declare-fun lt!86591 () (_ BitVec 32))

(assert (=> d!53277 (and (bvsge lt!86591 #b00000000000000000000000000000000) (bvsle lt!86591 (bvsub (size!3778 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53277 (= lt!86591 e!115469)))

(declare-fun c!31307 () Bool)

(assert (=> d!53277 (= c!31307 (bvsge #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53277 (and (bvsle #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3778 (_keys!5453 thiss!1248)) (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53277 (= (arrayCountValidKeys!0 (_keys!5453 thiss!1248) #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))) lt!86591)))

(declare-fun b!174892 () Bool)

(assert (=> b!174892 (= e!115468 call!17717)))

(assert (= (and d!53277 c!31307) b!174889))

(assert (= (and d!53277 (not c!31307)) b!174891))

(assert (= (and b!174891 c!31306) b!174890))

(assert (= (and b!174891 (not c!31306)) b!174892))

(assert (= (or b!174890 b!174892) bm!17714))

(declare-fun m!203935 () Bool)

(assert (=> bm!17714 m!203935))

(assert (=> b!174891 m!203713))

(assert (=> b!174891 m!203713))

(assert (=> b!174891 m!203727))

(assert (=> b!174664 d!53277))

(declare-fun b!174901 () Bool)

(declare-fun e!115478 () Bool)

(declare-fun call!17720 () Bool)

(assert (=> b!174901 (= e!115478 call!17720)))

(declare-fun b!174902 () Bool)

(declare-fun e!115476 () Bool)

(declare-fun e!115477 () Bool)

(assert (=> b!174902 (= e!115476 e!115477)))

(declare-fun c!31310 () Bool)

(assert (=> b!174902 (= c!31310 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53279 () Bool)

(declare-fun res!82942 () Bool)

(assert (=> d!53279 (=> res!82942 e!115476)))

(assert (=> d!53279 (= res!82942 (bvsge #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)) e!115476)))

(declare-fun b!174903 () Bool)

(assert (=> b!174903 (= e!115477 e!115478)))

(declare-fun lt!86598 () (_ BitVec 64))

(assert (=> b!174903 (= lt!86598 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86599 () Unit!5365)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7324 (_ BitVec 64) (_ BitVec 32)) Unit!5365)

(assert (=> b!174903 (= lt!86599 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5453 thiss!1248) lt!86598 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!174903 (arrayContainsKey!0 (_keys!5453 thiss!1248) lt!86598 #b00000000000000000000000000000000)))

(declare-fun lt!86600 () Unit!5365)

(assert (=> b!174903 (= lt!86600 lt!86599)))

(declare-fun res!82941 () Bool)

(assert (=> b!174903 (= res!82941 (= (seekEntryOrOpen!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000) (_keys!5453 thiss!1248) (mask!8490 thiss!1248)) (Found!556 #b00000000000000000000000000000000)))))

(assert (=> b!174903 (=> (not res!82941) (not e!115478))))

(declare-fun b!174904 () Bool)

(assert (=> b!174904 (= e!115477 call!17720)))

(declare-fun bm!17717 () Bool)

(assert (=> bm!17717 (= call!17720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(assert (= (and d!53279 (not res!82942)) b!174902))

(assert (= (and b!174902 c!31310) b!174903))

(assert (= (and b!174902 (not c!31310)) b!174904))

(assert (= (and b!174903 res!82941) b!174901))

(assert (= (or b!174901 b!174904) bm!17717))

(assert (=> b!174902 m!203713))

(assert (=> b!174902 m!203713))

(assert (=> b!174902 m!203727))

(assert (=> b!174903 m!203713))

(declare-fun m!203937 () Bool)

(assert (=> b!174903 m!203937))

(declare-fun m!203939 () Bool)

(assert (=> b!174903 m!203939))

(assert (=> b!174903 m!203713))

(declare-fun m!203941 () Bool)

(assert (=> b!174903 m!203941))

(declare-fun m!203943 () Bool)

(assert (=> bm!17717 m!203943))

(assert (=> b!174665 d!53279))

(declare-fun d!53281 () Bool)

(declare-fun res!82947 () Bool)

(declare-fun e!115483 () Bool)

(assert (=> d!53281 (=> res!82947 e!115483)))

(assert (=> d!53281 (= res!82947 (and ((_ is Cons!2230) (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) (= (_1!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) key!828)))))

(assert (=> d!53281 (= (containsKey!190 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828) e!115483)))

(declare-fun b!174909 () Bool)

(declare-fun e!115484 () Bool)

(assert (=> b!174909 (= e!115483 e!115484)))

(declare-fun res!82948 () Bool)

(assert (=> b!174909 (=> (not res!82948) (not e!115484))))

(assert (=> b!174909 (= res!82948 (and (or (not ((_ is Cons!2230) (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) (bvsle (_1!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) key!828)) ((_ is Cons!2230) (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) (bvslt (_1!1634 (h!2847 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))))) key!828)))))

(declare-fun b!174910 () Bool)

(assert (=> b!174910 (= e!115484 (containsKey!190 (t!7056 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))) key!828))))

(assert (= (and d!53281 (not res!82947)) b!174909))

(assert (= (and b!174909 res!82948) b!174910))

(declare-fun m!203945 () Bool)

(assert (=> b!174910 m!203945))

(assert (=> d!53219 d!53281))

(declare-fun b!174929 () Bool)

(declare-fun e!115497 () SeekEntryResult!556)

(assert (=> b!174929 (= e!115497 (Intermediate!556 true (toIndex!0 key!828 (mask!8490 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!174930 () Bool)

(declare-fun e!115499 () Bool)

(declare-fun lt!86606 () SeekEntryResult!556)

(assert (=> b!174930 (= e!115499 (bvsge (x!19244 lt!86606) #b01111111111111111111111111111110))))

(declare-fun b!174931 () Bool)

(assert (=> b!174931 (and (bvsge (index!4394 lt!86606) #b00000000000000000000000000000000) (bvslt (index!4394 lt!86606) (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun e!115496 () Bool)

(assert (=> b!174931 (= e!115496 (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4394 lt!86606)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174932 () Bool)

(declare-fun e!115498 () Bool)

(assert (=> b!174932 (= e!115499 e!115498)))

(declare-fun res!82955 () Bool)

(assert (=> b!174932 (= res!82955 (and ((_ is Intermediate!556) lt!86606) (not (undefined!1368 lt!86606)) (bvslt (x!19244 lt!86606) #b01111111111111111111111111111110) (bvsge (x!19244 lt!86606) #b00000000000000000000000000000000) (bvsge (x!19244 lt!86606) #b00000000000000000000000000000000)))))

(assert (=> b!174932 (=> (not res!82955) (not e!115498))))

(declare-fun d!53283 () Bool)

(assert (=> d!53283 e!115499))

(declare-fun c!31318 () Bool)

(assert (=> d!53283 (= c!31318 (and ((_ is Intermediate!556) lt!86606) (undefined!1368 lt!86606)))))

(assert (=> d!53283 (= lt!86606 e!115497)))

(declare-fun c!31319 () Bool)

(assert (=> d!53283 (= c!31319 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!86605 () (_ BitVec 64))

(assert (=> d!53283 (= lt!86605 (select (arr!3478 (_keys!5453 thiss!1248)) (toIndex!0 key!828 (mask!8490 thiss!1248))))))

(assert (=> d!53283 (validMask!0 (mask!8490 thiss!1248))))

(assert (=> d!53283 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8490 thiss!1248)) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)) lt!86606)))

(declare-fun b!174933 () Bool)

(declare-fun e!115495 () SeekEntryResult!556)

(assert (=> b!174933 (= e!115495 (Intermediate!556 false (toIndex!0 key!828 (mask!8490 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!174934 () Bool)

(assert (=> b!174934 (and (bvsge (index!4394 lt!86606) #b00000000000000000000000000000000) (bvslt (index!4394 lt!86606) (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun res!82956 () Bool)

(assert (=> b!174934 (= res!82956 (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4394 lt!86606)) key!828))))

(assert (=> b!174934 (=> res!82956 e!115496)))

(assert (=> b!174934 (= e!115498 e!115496)))

(declare-fun b!174935 () Bool)

(assert (=> b!174935 (= e!115495 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8490 thiss!1248)) #b00000000000000000000000000000000 (mask!8490 thiss!1248)) key!828 (_keys!5453 thiss!1248) (mask!8490 thiss!1248)))))

(declare-fun b!174936 () Bool)

(assert (=> b!174936 (and (bvsge (index!4394 lt!86606) #b00000000000000000000000000000000) (bvslt (index!4394 lt!86606) (size!3778 (_keys!5453 thiss!1248))))))

(declare-fun res!82957 () Bool)

(assert (=> b!174936 (= res!82957 (= (select (arr!3478 (_keys!5453 thiss!1248)) (index!4394 lt!86606)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174936 (=> res!82957 e!115496)))

(declare-fun b!174937 () Bool)

(assert (=> b!174937 (= e!115497 e!115495)))

(declare-fun c!31317 () Bool)

(assert (=> b!174937 (= c!31317 (or (= lt!86605 key!828) (= (bvadd lt!86605 lt!86605) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53283 c!31319) b!174929))

(assert (= (and d!53283 (not c!31319)) b!174937))

(assert (= (and b!174937 c!31317) b!174933))

(assert (= (and b!174937 (not c!31317)) b!174935))

(assert (= (and d!53283 c!31318) b!174930))

(assert (= (and d!53283 (not c!31318)) b!174932))

(assert (= (and b!174932 res!82955) b!174934))

(assert (= (and b!174934 (not res!82956)) b!174936))

(assert (= (and b!174936 (not res!82957)) b!174931))

(declare-fun m!203947 () Bool)

(assert (=> b!174936 m!203947))

(assert (=> b!174935 m!203691))

(declare-fun m!203949 () Bool)

(assert (=> b!174935 m!203949))

(assert (=> b!174935 m!203949))

(declare-fun m!203951 () Bool)

(assert (=> b!174935 m!203951))

(assert (=> b!174931 m!203947))

(assert (=> b!174934 m!203947))

(assert (=> d!53283 m!203691))

(declare-fun m!203953 () Bool)

(assert (=> d!53283 m!203953))

(assert (=> d!53283 m!203659))

(assert (=> d!53215 d!53283))

(declare-fun d!53285 () Bool)

(declare-fun lt!86612 () (_ BitVec 32))

(declare-fun lt!86611 () (_ BitVec 32))

(assert (=> d!53285 (= lt!86612 (bvmul (bvxor lt!86611 (bvlshr lt!86611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53285 (= lt!86611 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53285 (and (bvsge (mask!8490 thiss!1248) #b00000000000000000000000000000000) (let ((res!82958 (let ((h!2850 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19263 (bvmul (bvxor h!2850 (bvlshr h!2850 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19263 (bvlshr x!19263 #b00000000000000000000000000001101)) (mask!8490 thiss!1248)))))) (and (bvslt res!82958 (bvadd (mask!8490 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!82958 #b00000000000000000000000000000000))))))

(assert (=> d!53285 (= (toIndex!0 key!828 (mask!8490 thiss!1248)) (bvand (bvxor lt!86612 (bvlshr lt!86612 #b00000000000000000000000000001101)) (mask!8490 thiss!1248)))))

(assert (=> d!53215 d!53285))

(assert (=> d!53215 d!53217))

(declare-fun bm!17720 () Bool)

(declare-fun call!17723 () Bool)

(declare-fun c!31322 () Bool)

(assert (=> bm!17720 (= call!17723 (arrayNoDuplicates!0 (_keys!5453 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31322 (Cons!2232 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000) Nil!2233) Nil!2233)))))

(declare-fun b!174948 () Bool)

(declare-fun e!115509 () Bool)

(assert (=> b!174948 (= e!115509 call!17723)))

(declare-fun d!53287 () Bool)

(declare-fun res!82966 () Bool)

(declare-fun e!115511 () Bool)

(assert (=> d!53287 (=> res!82966 e!115511)))

(assert (=> d!53287 (= res!82966 (bvsge #b00000000000000000000000000000000 (size!3778 (_keys!5453 thiss!1248))))))

(assert (=> d!53287 (= (arrayNoDuplicates!0 (_keys!5453 thiss!1248) #b00000000000000000000000000000000 Nil!2233) e!115511)))

(declare-fun b!174949 () Bool)

(declare-fun e!115510 () Bool)

(assert (=> b!174949 (= e!115510 e!115509)))

(assert (=> b!174949 (= c!31322 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174950 () Bool)

(assert (=> b!174950 (= e!115511 e!115510)))

(declare-fun res!82965 () Bool)

(assert (=> b!174950 (=> (not res!82965) (not e!115510))))

(declare-fun e!115508 () Bool)

(assert (=> b!174950 (= res!82965 (not e!115508))))

(declare-fun res!82967 () Bool)

(assert (=> b!174950 (=> (not res!82967) (not e!115508))))

(assert (=> b!174950 (= res!82967 (validKeyInArray!0 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174951 () Bool)

(assert (=> b!174951 (= e!115509 call!17723)))

(declare-fun b!174952 () Bool)

(declare-fun contains!1163 (List!2236 (_ BitVec 64)) Bool)

(assert (=> b!174952 (= e!115508 (contains!1163 Nil!2233 (select (arr!3478 (_keys!5453 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53287 (not res!82966)) b!174950))

(assert (= (and b!174950 res!82967) b!174952))

(assert (= (and b!174950 res!82965) b!174949))

(assert (= (and b!174949 c!31322) b!174948))

(assert (= (and b!174949 (not c!31322)) b!174951))

(assert (= (or b!174948 b!174951) bm!17720))

(assert (=> bm!17720 m!203713))

(declare-fun m!203955 () Bool)

(assert (=> bm!17720 m!203955))

(assert (=> b!174949 m!203713))

(assert (=> b!174949 m!203713))

(assert (=> b!174949 m!203727))

(assert (=> b!174950 m!203713))

(assert (=> b!174950 m!203713))

(assert (=> b!174950 m!203727))

(assert (=> b!174952 m!203713))

(assert (=> b!174952 m!203713))

(declare-fun m!203957 () Bool)

(assert (=> b!174952 m!203957))

(assert (=> b!174666 d!53287))

(assert (=> bm!17708 d!53229))

(assert (=> b!174746 d!53269))

(declare-fun d!53289 () Bool)

(assert (=> d!53289 (isDefined!140 (getValueByKey!186 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(declare-fun lt!86615 () Unit!5365)

(declare-fun choose!944 (List!2234 (_ BitVec 64)) Unit!5365)

(assert (=> d!53289 (= lt!86615 (choose!944 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(declare-fun e!115514 () Bool)

(assert (=> d!53289 e!115514))

(declare-fun res!82970 () Bool)

(assert (=> d!53289 (=> (not res!82970) (not e!115514))))

(declare-fun isStrictlySorted!328 (List!2234) Bool)

(assert (=> d!53289 (= res!82970 (isStrictlySorted!328 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248)))))))

(assert (=> d!53289 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828) lt!86615)))

(declare-fun b!174955 () Bool)

(assert (=> b!174955 (= e!115514 (containsKey!190 (toList!1110 (getCurrentListMap!757 (_keys!5453 thiss!1248) (_values!3592 thiss!1248) (mask!8490 thiss!1248) (extraKeys!3346 thiss!1248) (zeroValue!3450 thiss!1248) (minValue!3450 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3609 thiss!1248))) key!828))))

(assert (= (and d!53289 res!82970) b!174955))

(assert (=> d!53289 m!203703))

(assert (=> d!53289 m!203703))

(assert (=> d!53289 m!203705))

(declare-fun m!203959 () Bool)

(assert (=> d!53289 m!203959))

(declare-fun m!203961 () Bool)

(assert (=> d!53289 m!203961))

(assert (=> b!174955 m!203699))

(assert (=> b!174691 d!53289))

(assert (=> b!174691 d!53223))

(assert (=> b!174691 d!53225))

(declare-fun d!53291 () Bool)

(declare-fun e!115515 () Bool)

(assert (=> d!53291 e!115515))

(declare-fun res!82971 () Bool)

(assert (=> d!53291 (=> res!82971 e!115515)))

(declare-fun lt!86617 () Bool)

(assert (=> d!53291 (= res!82971 (not lt!86617))))

(declare-fun lt!86619 () Bool)

(assert (=> d!53291 (= lt!86617 lt!86619)))

(declare-fun lt!86618 () Unit!5365)

(declare-fun e!115516 () Unit!5365)

(assert (=> d!53291 (= lt!86618 e!115516)))

(declare-fun c!31323 () Bool)

(assert (=> d!53291 (= c!31323 lt!86619)))

(assert (=> d!53291 (= lt!86619 (containsKey!190 (toList!1110 lt!86513) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53291 (= (contains!1160 lt!86513 #b0000000000000000000000000000000000000000000000000000000000000000) lt!86617)))

(declare-fun b!174956 () Bool)

(declare-fun lt!86616 () Unit!5365)

(assert (=> b!174956 (= e!115516 lt!86616)))

(assert (=> b!174956 (= lt!86616 (lemmaContainsKeyImpliesGetValueByKeyDefined!139 (toList!1110 lt!86513) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174956 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174957 () Bool)

(declare-fun Unit!5372 () Unit!5365)

(assert (=> b!174957 (= e!115516 Unit!5372)))

(declare-fun b!174958 () Bool)

(assert (=> b!174958 (= e!115515 (isDefined!140 (getValueByKey!186 (toList!1110 lt!86513) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53291 c!31323) b!174956))

(assert (= (and d!53291 (not c!31323)) b!174957))

(assert (= (and d!53291 (not res!82971)) b!174958))

(declare-fun m!203963 () Bool)

(assert (=> d!53291 m!203963))

(declare-fun m!203965 () Bool)

(assert (=> b!174956 m!203965))

(assert (=> b!174956 m!203931))

(assert (=> b!174956 m!203931))

(declare-fun m!203967 () Bool)

(assert (=> b!174956 m!203967))

(assert (=> b!174958 m!203931))

(assert (=> b!174958 m!203931))

(assert (=> b!174958 m!203967))

(assert (=> bm!17704 d!53291))

(declare-fun d!53293 () Bool)

(assert (=> d!53293 (= (apply!132 lt!86513 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1979 (getValueByKey!186 (toList!1110 lt!86513) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7227 () Bool)

(assert (= bs!7227 d!53293))

(assert (=> bs!7227 m!203911))

(assert (=> bs!7227 m!203911))

(declare-fun m!203969 () Bool)

(assert (=> bs!7227 m!203969))

(assert (=> b!174747 d!53293))

(assert (=> d!53221 d!53217))

(declare-fun d!53295 () Bool)

(declare-fun e!115517 () Bool)

(assert (=> d!53295 e!115517))

(declare-fun res!82972 () Bool)

(assert (=> d!53295 (=> (not res!82972) (not e!115517))))

(declare-fun lt!86622 () ListLongMap!2189)

(assert (=> d!53295 (= res!82972 (contains!1160 lt!86622 (_1!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(declare-fun lt!86620 () List!2234)

(assert (=> d!53295 (= lt!86622 (ListLongMap!2190 lt!86620))))

(declare-fun lt!86621 () Unit!5365)

(declare-fun lt!86623 () Unit!5365)

(assert (=> d!53295 (= lt!86621 lt!86623)))

(assert (=> d!53295 (= (getValueByKey!186 lt!86620 (_1!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(assert (=> d!53295 (= lt!86623 (lemmaContainsTupThenGetReturnValue!100 lt!86620 (_1!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(assert (=> d!53295 (= lt!86620 (insertStrictlySorted!102 (toList!1110 call!17710) (_1!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))) (_2!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))))))

(assert (=> d!53295 (= (+!244 call!17710 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))) lt!86622)))

(declare-fun b!174959 () Bool)

(declare-fun res!82973 () Bool)

(assert (=> b!174959 (=> (not res!82973) (not e!115517))))

(assert (=> b!174959 (= res!82973 (= (getValueByKey!186 (toList!1110 lt!86622) (_1!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248)))) (Some!191 (_2!1634 (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))))

(declare-fun b!174960 () Bool)

(assert (=> b!174960 (= e!115517 (contains!1162 (toList!1110 lt!86622) (tuple2!3249 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3450 thiss!1248))))))

(assert (= (and d!53295 res!82972) b!174959))

(assert (= (and b!174959 res!82973) b!174960))

(declare-fun m!203971 () Bool)

(assert (=> d!53295 m!203971))

(declare-fun m!203973 () Bool)

(assert (=> d!53295 m!203973))

(declare-fun m!203975 () Bool)

(assert (=> d!53295 m!203975))

(declare-fun m!203977 () Bool)

(assert (=> d!53295 m!203977))

(declare-fun m!203979 () Bool)

(assert (=> b!174959 m!203979))

(declare-fun m!203981 () Bool)

(assert (=> b!174960 m!203981))

(assert (=> b!174740 d!53295))

(declare-fun mapIsEmpty!6984 () Bool)

(declare-fun mapRes!6984 () Bool)

(assert (=> mapIsEmpty!6984 mapRes!6984))

(declare-fun b!174961 () Bool)

(declare-fun e!115518 () Bool)

(assert (=> b!174961 (= e!115518 tp_is_empty!4095)))

(declare-fun mapNonEmpty!6984 () Bool)

(declare-fun tp!15651 () Bool)

(assert (=> mapNonEmpty!6984 (= mapRes!6984 (and tp!15651 e!115518))))

(declare-fun mapKey!6984 () (_ BitVec 32))

(declare-fun mapValue!6984 () ValueCell!1704)

(declare-fun mapRest!6984 () (Array (_ BitVec 32) ValueCell!1704))

(assert (=> mapNonEmpty!6984 (= mapRest!6983 (store mapRest!6984 mapKey!6984 mapValue!6984))))

(declare-fun b!174962 () Bool)

(declare-fun e!115519 () Bool)

(assert (=> b!174962 (= e!115519 tp_is_empty!4095)))

(declare-fun condMapEmpty!6984 () Bool)

(declare-fun mapDefault!6984 () ValueCell!1704)

(assert (=> mapNonEmpty!6983 (= condMapEmpty!6984 (= mapRest!6983 ((as const (Array (_ BitVec 32) ValueCell!1704)) mapDefault!6984)))))

(assert (=> mapNonEmpty!6983 (= tp!15650 (and e!115519 mapRes!6984))))

(assert (= (and mapNonEmpty!6983 condMapEmpty!6984) mapIsEmpty!6984))

(assert (= (and mapNonEmpty!6983 (not condMapEmpty!6984)) mapNonEmpty!6984))

(assert (= (and mapNonEmpty!6984 ((_ is ValueCellFull!1704) mapValue!6984)) b!174961))

(assert (= (and mapNonEmpty!6983 ((_ is ValueCellFull!1704) mapDefault!6984)) b!174962))

(declare-fun m!203983 () Bool)

(assert (=> mapNonEmpty!6984 m!203983))

(declare-fun b_lambda!7025 () Bool)

(assert (= b_lambda!7023 (or (and b!174627 b_free!4323) b_lambda!7025)))

(declare-fun b_lambda!7027 () Bool)

(assert (= b_lambda!7021 (or (and b!174627 b_free!4323) b_lambda!7027)))

(check-sat (not b!174825) (not d!53239) (not b!174842) (not b!174902) (not d!53265) (not b!174777) (not d!53255) (not d!53227) (not b!174835) (not d!53293) (not b!174949) (not d!53275) (not b!174805) tp_is_empty!4095 (not b!174891) (not d!53259) (not b!174847) (not d!53267) (not d!53271) (not b!174845) (not d!53295) (not d!53241) (not d!53251) (not d!53223) (not b_next!4323) (not b!174806) (not d!53231) (not d!53233) (not d!53249) (not b!174827) (not b!174824) (not b_lambda!7027) (not b!174808) (not d!53253) (not b!174814) (not d!53291) (not d!53229) (not b!174868) (not d!53243) b_and!10817 (not b!174832) (not b_lambda!7025) (not b!174843) (not b!174866) (not b!174878) (not b!174935) (not b!174950) (not b!174952) (not d!53245) (not b!174810) (not d!53237) (not b!174879) (not b!174955) (not d!53273) (not b!174809) (not bm!17714) (not d!53283) (not b!174836) (not b!174841) (not b!174960) (not d!53247) (not d!53257) (not b!174864) (not mapNonEmpty!6984) (not d!53289) (not b!174958) (not bm!17720) (not bm!17711) (not b!174833) (not b_lambda!7019) (not b!174844) (not b!174910) (not b!174815) (not d!53235) (not d!53263) (not b!174807) (not bm!17717) (not b!174834) (not b!174828) (not b!174903) (not b!174956) (not b!174830) (not b!174959))
(check-sat b_and!10817 (not b_next!4323))
