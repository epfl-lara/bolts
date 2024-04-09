; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3154 () Bool)

(assert start!3154)

(declare-fun b!19228 () Bool)

(declare-fun b_free!669 () Bool)

(declare-fun b_next!669 () Bool)

(assert (=> b!19228 (= b_free!669 (not b_next!669))))

(declare-fun tp!3209 () Bool)

(declare-fun b_and!1331 () Bool)

(assert (=> b!19228 (= tp!3209 b_and!1331)))

(declare-fun e!12387 () Bool)

(declare-fun tp_is_empty!933 () Bool)

(declare-fun e!12386 () Bool)

(declare-datatypes ((V!1069 0))(
  ( (V!1070 (val!493 Int)) )
))
(declare-datatypes ((ValueCell!267 0))(
  ( (ValueCellFull!267 (v!1502 V!1069)) (EmptyCell!267) )
))
(declare-datatypes ((array!1069 0))(
  ( (array!1070 (arr!513 (Array (_ BitVec 32) ValueCell!267)) (size!604 (_ BitVec 32))) )
))
(declare-datatypes ((array!1071 0))(
  ( (array!1072 (arr!514 (Array (_ BitVec 32) (_ BitVec 64))) (size!605 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!120 0))(
  ( (LongMapFixedSize!121 (defaultEntry!1679 Int) (mask!4622 (_ BitVec 32)) (extraKeys!1589 (_ BitVec 32)) (zeroValue!1613 V!1069) (minValue!1613 V!1069) (_size!93 (_ BitVec 32)) (_keys!3105 array!1071) (_values!1675 array!1069) (_vacant!93 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!120 0))(
  ( (Cell!121 (v!1503 LongMapFixedSize!120)) )
))
(declare-datatypes ((LongMap!120 0))(
  ( (LongMap!121 (underlying!71 Cell!120)) )
))
(declare-fun thiss!938 () LongMap!120)

(declare-fun array_inv!365 (array!1071) Bool)

(declare-fun array_inv!366 (array!1069) Bool)

(assert (=> b!19228 (= e!12386 (and tp!3209 tp_is_empty!933 (array_inv!365 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) (array_inv!366 (_values!1675 (v!1503 (underlying!71 thiss!938)))) e!12387))))

(declare-fun b!19229 () Bool)

(declare-fun res!13110 () Bool)

(declare-fun e!12385 () Bool)

(assert (=> b!19229 (=> (not res!13110) (not e!12385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!19229 (= res!13110 (validMask!0 (mask!4622 (v!1503 (underlying!71 thiss!938)))))))

(declare-fun b!19230 () Bool)

(declare-fun e!12388 () Bool)

(assert (=> b!19230 (= e!12388 e!12386)))

(declare-fun mapIsEmpty!846 () Bool)

(declare-fun mapRes!846 () Bool)

(assert (=> mapIsEmpty!846 mapRes!846))

(declare-fun b!19231 () Bool)

(declare-fun e!12382 () Bool)

(assert (=> b!19231 (= e!12382 e!12388)))

(declare-fun b!19232 () Bool)

(assert (=> b!19232 (= e!12385 (or (bvslt (_size!93 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000) (bvsgt (_size!93 (v!1503 (underlying!71 thiss!938))) (bvadd #b00000000000000000000000000000001 (mask!4622 (v!1503 (underlying!71 thiss!938)))))))))

(declare-fun b!19233 () Bool)

(declare-fun e!12383 () Bool)

(assert (=> b!19233 (= e!12387 (and e!12383 mapRes!846))))

(declare-fun condMapEmpty!846 () Bool)

(declare-fun mapDefault!846 () ValueCell!267)

(assert (=> b!19233 (= condMapEmpty!846 (= (arr!513 (_values!1675 (v!1503 (underlying!71 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!267)) mapDefault!846)))))

(declare-fun b!19234 () Bool)

(declare-fun e!12384 () Bool)

(assert (=> b!19234 (= e!12384 tp_is_empty!933)))

(declare-fun mapNonEmpty!846 () Bool)

(declare-fun tp!3210 () Bool)

(assert (=> mapNonEmpty!846 (= mapRes!846 (and tp!3210 e!12384))))

(declare-fun mapRest!846 () (Array (_ BitVec 32) ValueCell!267))

(declare-fun mapValue!846 () ValueCell!267)

(declare-fun mapKey!846 () (_ BitVec 32))

(assert (=> mapNonEmpty!846 (= (arr!513 (_values!1675 (v!1503 (underlying!71 thiss!938)))) (store mapRest!846 mapKey!846 mapValue!846))))

(declare-fun b!19235 () Bool)

(assert (=> b!19235 (= e!12383 tp_is_empty!933)))

(declare-fun res!13109 () Bool)

(assert (=> start!3154 (=> (not res!13109) (not e!12385))))

(declare-fun valid!61 (LongMap!120) Bool)

(assert (=> start!3154 (= res!13109 (valid!61 thiss!938))))

(assert (=> start!3154 e!12385))

(assert (=> start!3154 e!12382))

(assert (= (and start!3154 res!13109) b!19229))

(assert (= (and b!19229 res!13110) b!19232))

(assert (= (and b!19233 condMapEmpty!846) mapIsEmpty!846))

(assert (= (and b!19233 (not condMapEmpty!846)) mapNonEmpty!846))

(get-info :version)

(assert (= (and mapNonEmpty!846 ((_ is ValueCellFull!267) mapValue!846)) b!19234))

(assert (= (and b!19233 ((_ is ValueCellFull!267) mapDefault!846)) b!19235))

(assert (= b!19228 b!19233))

(assert (= b!19230 b!19228))

(assert (= b!19231 b!19230))

(assert (= start!3154 b!19231))

(declare-fun m!13589 () Bool)

(assert (=> b!19228 m!13589))

(declare-fun m!13591 () Bool)

(assert (=> b!19228 m!13591))

(declare-fun m!13593 () Bool)

(assert (=> b!19229 m!13593))

(declare-fun m!13595 () Bool)

(assert (=> mapNonEmpty!846 m!13595))

(declare-fun m!13597 () Bool)

(assert (=> start!3154 m!13597))

(check-sat (not b_next!669) (not mapNonEmpty!846) tp_is_empty!933 (not b!19229) (not start!3154) b_and!1331 (not b!19228))
(check-sat b_and!1331 (not b_next!669))
(get-model)

(declare-fun d!3569 () Bool)

(assert (=> d!3569 (= (array_inv!365 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) (bvsge (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19228 d!3569))

(declare-fun d!3571 () Bool)

(assert (=> d!3571 (= (array_inv!366 (_values!1675 (v!1503 (underlying!71 thiss!938)))) (bvsge (size!604 (_values!1675 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19228 d!3571))

(declare-fun d!3573 () Bool)

(assert (=> d!3573 (= (validMask!0 (mask!4622 (v!1503 (underlying!71 thiss!938)))) (and (or (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000001111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000011111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000001111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000011111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000001111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000011111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000001111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000011111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000001111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000011111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000001111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000011111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000001111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000011111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000001111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000011111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000111111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00001111111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00011111111111111111111111111111) (= (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!19229 d!3573))

(declare-fun d!3575 () Bool)

(declare-fun valid!62 (LongMapFixedSize!120) Bool)

(assert (=> d!3575 (= (valid!61 thiss!938) (valid!62 (v!1503 (underlying!71 thiss!938))))))

(declare-fun bs!865 () Bool)

(assert (= bs!865 d!3575))

(declare-fun m!13609 () Bool)

(assert (=> bs!865 m!13609))

(assert (=> start!3154 d!3575))

(declare-fun condMapEmpty!852 () Bool)

(declare-fun mapDefault!852 () ValueCell!267)

(assert (=> mapNonEmpty!846 (= condMapEmpty!852 (= mapRest!846 ((as const (Array (_ BitVec 32) ValueCell!267)) mapDefault!852)))))

(declare-fun e!12417 () Bool)

(declare-fun mapRes!852 () Bool)

(assert (=> mapNonEmpty!846 (= tp!3210 (and e!12417 mapRes!852))))

(declare-fun mapIsEmpty!852 () Bool)

(assert (=> mapIsEmpty!852 mapRes!852))

(declare-fun mapNonEmpty!852 () Bool)

(declare-fun tp!3219 () Bool)

(declare-fun e!12418 () Bool)

(assert (=> mapNonEmpty!852 (= mapRes!852 (and tp!3219 e!12418))))

(declare-fun mapKey!852 () (_ BitVec 32))

(declare-fun mapValue!852 () ValueCell!267)

(declare-fun mapRest!852 () (Array (_ BitVec 32) ValueCell!267))

(assert (=> mapNonEmpty!852 (= mapRest!846 (store mapRest!852 mapKey!852 mapValue!852))))

(declare-fun b!19267 () Bool)

(assert (=> b!19267 (= e!12417 tp_is_empty!933)))

(declare-fun b!19266 () Bool)

(assert (=> b!19266 (= e!12418 tp_is_empty!933)))

(assert (= (and mapNonEmpty!846 condMapEmpty!852) mapIsEmpty!852))

(assert (= (and mapNonEmpty!846 (not condMapEmpty!852)) mapNonEmpty!852))

(assert (= (and mapNonEmpty!852 ((_ is ValueCellFull!267) mapValue!852)) b!19266))

(assert (= (and mapNonEmpty!846 ((_ is ValueCellFull!267) mapDefault!852)) b!19267))

(declare-fun m!13611 () Bool)

(assert (=> mapNonEmpty!852 m!13611))

(check-sat b_and!1331 (not b_next!669) tp_is_empty!933 (not mapNonEmpty!852) (not d!3575))
(check-sat b_and!1331 (not b_next!669))
(get-model)

(declare-fun d!3577 () Bool)

(declare-fun res!13123 () Bool)

(declare-fun e!12421 () Bool)

(assert (=> d!3577 (=> (not res!13123) (not e!12421))))

(declare-fun simpleValid!10 (LongMapFixedSize!120) Bool)

(assert (=> d!3577 (= res!13123 (simpleValid!10 (v!1503 (underlying!71 thiss!938))))))

(assert (=> d!3577 (= (valid!62 (v!1503 (underlying!71 thiss!938))) e!12421)))

(declare-fun b!19274 () Bool)

(declare-fun res!13124 () Bool)

(assert (=> b!19274 (=> (not res!13124) (not e!12421))))

(declare-fun arrayCountValidKeys!0 (array!1071 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19274 (= res!13124 (= (arrayCountValidKeys!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))) (_size!93 (v!1503 (underlying!71 thiss!938)))))))

(declare-fun b!19275 () Bool)

(declare-fun res!13125 () Bool)

(assert (=> b!19275 (=> (not res!13125) (not e!12421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1071 (_ BitVec 32)) Bool)

(assert (=> b!19275 (= res!13125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3105 (v!1503 (underlying!71 thiss!938))) (mask!4622 (v!1503 (underlying!71 thiss!938)))))))

(declare-fun b!19276 () Bool)

(declare-datatypes ((List!541 0))(
  ( (Nil!538) (Cons!537 (h!1103 (_ BitVec 64)) (t!3186 List!541)) )
))
(declare-fun arrayNoDuplicates!0 (array!1071 (_ BitVec 32) List!541) Bool)

(assert (=> b!19276 (= e!12421 (arrayNoDuplicates!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000 Nil!538))))

(assert (= (and d!3577 res!13123) b!19274))

(assert (= (and b!19274 res!13124) b!19275))

(assert (= (and b!19275 res!13125) b!19276))

(declare-fun m!13613 () Bool)

(assert (=> d!3577 m!13613))

(declare-fun m!13615 () Bool)

(assert (=> b!19274 m!13615))

(declare-fun m!13617 () Bool)

(assert (=> b!19275 m!13617))

(declare-fun m!13619 () Bool)

(assert (=> b!19276 m!13619))

(assert (=> d!3575 d!3577))

(declare-fun condMapEmpty!853 () Bool)

(declare-fun mapDefault!853 () ValueCell!267)

(assert (=> mapNonEmpty!852 (= condMapEmpty!853 (= mapRest!852 ((as const (Array (_ BitVec 32) ValueCell!267)) mapDefault!853)))))

(declare-fun e!12422 () Bool)

(declare-fun mapRes!853 () Bool)

(assert (=> mapNonEmpty!852 (= tp!3219 (and e!12422 mapRes!853))))

(declare-fun mapIsEmpty!853 () Bool)

(assert (=> mapIsEmpty!853 mapRes!853))

(declare-fun mapNonEmpty!853 () Bool)

(declare-fun tp!3220 () Bool)

(declare-fun e!12423 () Bool)

(assert (=> mapNonEmpty!853 (= mapRes!853 (and tp!3220 e!12423))))

(declare-fun mapValue!853 () ValueCell!267)

(declare-fun mapRest!853 () (Array (_ BitVec 32) ValueCell!267))

(declare-fun mapKey!853 () (_ BitVec 32))

(assert (=> mapNonEmpty!853 (= mapRest!852 (store mapRest!853 mapKey!853 mapValue!853))))

(declare-fun b!19278 () Bool)

(assert (=> b!19278 (= e!12422 tp_is_empty!933)))

(declare-fun b!19277 () Bool)

(assert (=> b!19277 (= e!12423 tp_is_empty!933)))

(assert (= (and mapNonEmpty!852 condMapEmpty!853) mapIsEmpty!853))

(assert (= (and mapNonEmpty!852 (not condMapEmpty!853)) mapNonEmpty!853))

(assert (= (and mapNonEmpty!853 ((_ is ValueCellFull!267) mapValue!853)) b!19277))

(assert (= (and mapNonEmpty!852 ((_ is ValueCellFull!267) mapDefault!853)) b!19278))

(declare-fun m!13621 () Bool)

(assert (=> mapNonEmpty!853 m!13621))

(check-sat (not d!3577) (not b_next!669) tp_is_empty!933 (not b!19275) (not mapNonEmpty!853) (not b!19276) b_and!1331 (not b!19274))
(check-sat b_and!1331 (not b_next!669))
(get-model)

(declare-fun b!19288 () Bool)

(declare-fun e!12431 () Bool)

(declare-fun e!12430 () Bool)

(assert (=> b!19288 (= e!12431 e!12430)))

(declare-fun c!2064 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!19288 (= c!2064 (validKeyInArray!0 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19289 () Bool)

(declare-fun e!12432 () Bool)

(assert (=> b!19289 (= e!12430 e!12432)))

(declare-fun lt!5409 () (_ BitVec 64))

(assert (=> b!19289 (= lt!5409 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!382 0))(
  ( (Unit!383) )
))
(declare-fun lt!5410 () Unit!382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1071 (_ BitVec 64) (_ BitVec 32)) Unit!382)

(assert (=> b!19289 (= lt!5410 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) lt!5409 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!19289 (arrayContainsKey!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) lt!5409 #b00000000000000000000000000000000)))

(declare-fun lt!5411 () Unit!382)

(assert (=> b!19289 (= lt!5411 lt!5410)))

(declare-fun res!13130 () Bool)

(declare-datatypes ((SeekEntryResult!50 0))(
  ( (MissingZero!50 (index!2320 (_ BitVec 32))) (Found!50 (index!2321 (_ BitVec 32))) (Intermediate!50 (undefined!862 Bool) (index!2322 (_ BitVec 32)) (x!4733 (_ BitVec 32))) (Undefined!50) (MissingVacant!50 (index!2323 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1071 (_ BitVec 32)) SeekEntryResult!50)

(assert (=> b!19289 (= res!13130 (= (seekEntryOrOpen!0 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000) (_keys!3105 (v!1503 (underlying!71 thiss!938))) (mask!4622 (v!1503 (underlying!71 thiss!938)))) (Found!50 #b00000000000000000000000000000000)))))

(assert (=> b!19289 (=> (not res!13130) (not e!12432))))

(declare-fun bm!886 () Bool)

(declare-fun call!889 () Bool)

(assert (=> bm!886 (= call!889 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3105 (v!1503 (underlying!71 thiss!938))) (mask!4622 (v!1503 (underlying!71 thiss!938)))))))

(declare-fun b!19290 () Bool)

(assert (=> b!19290 (= e!12430 call!889)))

(declare-fun d!3579 () Bool)

(declare-fun res!13131 () Bool)

(assert (=> d!3579 (=> res!13131 e!12431)))

(assert (=> d!3579 (= res!13131 (bvsge #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))))))

(assert (=> d!3579 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3105 (v!1503 (underlying!71 thiss!938))) (mask!4622 (v!1503 (underlying!71 thiss!938)))) e!12431)))

(declare-fun b!19287 () Bool)

(assert (=> b!19287 (= e!12432 call!889)))

(assert (= (and d!3579 (not res!13131)) b!19288))

(assert (= (and b!19288 c!2064) b!19289))

(assert (= (and b!19288 (not c!2064)) b!19290))

(assert (= (and b!19289 res!13130) b!19287))

(assert (= (or b!19287 b!19290) bm!886))

(declare-fun m!13623 () Bool)

(assert (=> b!19288 m!13623))

(assert (=> b!19288 m!13623))

(declare-fun m!13625 () Bool)

(assert (=> b!19288 m!13625))

(assert (=> b!19289 m!13623))

(declare-fun m!13627 () Bool)

(assert (=> b!19289 m!13627))

(declare-fun m!13629 () Bool)

(assert (=> b!19289 m!13629))

(assert (=> b!19289 m!13623))

(declare-fun m!13631 () Bool)

(assert (=> b!19289 m!13631))

(declare-fun m!13633 () Bool)

(assert (=> bm!886 m!13633))

(assert (=> b!19275 d!3579))

(declare-fun bm!889 () Bool)

(declare-fun call!892 () (_ BitVec 32))

(assert (=> bm!889 (= call!892 (arrayCountValidKeys!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))))))

(declare-fun b!19299 () Bool)

(declare-fun e!12437 () (_ BitVec 32))

(assert (=> b!19299 (= e!12437 (bvadd #b00000000000000000000000000000001 call!892))))

(declare-fun b!19300 () Bool)

(declare-fun e!12438 () (_ BitVec 32))

(assert (=> b!19300 (= e!12438 #b00000000000000000000000000000000)))

(declare-fun b!19301 () Bool)

(assert (=> b!19301 (= e!12438 e!12437)))

(declare-fun c!2069 () Bool)

(assert (=> b!19301 (= c!2069 (validKeyInArray!0 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19302 () Bool)

(assert (=> b!19302 (= e!12437 call!892)))

(declare-fun d!3581 () Bool)

(declare-fun lt!5414 () (_ BitVec 32))

(assert (=> d!3581 (and (bvsge lt!5414 #b00000000000000000000000000000000) (bvsle lt!5414 (bvsub (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(assert (=> d!3581 (= lt!5414 e!12438)))

(declare-fun c!2070 () Bool)

(assert (=> d!3581 (= c!2070 (bvsge #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))))))

(assert (=> d!3581 (and (bvsle #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))))))

(assert (=> d!3581 (= (arrayCountValidKeys!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))) lt!5414)))

(assert (= (and d!3581 c!2070) b!19300))

(assert (= (and d!3581 (not c!2070)) b!19301))

(assert (= (and b!19301 c!2069) b!19299))

(assert (= (and b!19301 (not c!2069)) b!19302))

(assert (= (or b!19299 b!19302) bm!889))

(declare-fun m!13635 () Bool)

(assert (=> bm!889 m!13635))

(assert (=> b!19301 m!13623))

(assert (=> b!19301 m!13623))

(assert (=> b!19301 m!13625))

(assert (=> b!19274 d!3581))

(declare-fun b!19313 () Bool)

(declare-fun e!12449 () Bool)

(declare-fun e!12447 () Bool)

(assert (=> b!19313 (= e!12449 e!12447)))

(declare-fun res!13138 () Bool)

(assert (=> b!19313 (=> (not res!13138) (not e!12447))))

(declare-fun e!12450 () Bool)

(assert (=> b!19313 (= res!13138 (not e!12450))))

(declare-fun res!13140 () Bool)

(assert (=> b!19313 (=> (not res!13140) (not e!12450))))

(assert (=> b!19313 (= res!13140 (validKeyInArray!0 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun bm!892 () Bool)

(declare-fun call!895 () Bool)

(declare-fun c!2073 () Bool)

(assert (=> bm!892 (= call!895 (arrayNoDuplicates!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!2073 (Cons!537 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000) Nil!538) Nil!538)))))

(declare-fun b!19314 () Bool)

(declare-fun e!12448 () Bool)

(assert (=> b!19314 (= e!12448 call!895)))

(declare-fun b!19315 () Bool)

(assert (=> b!19315 (= e!12447 e!12448)))

(assert (=> b!19315 (= c!2073 (validKeyInArray!0 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(declare-fun b!19316 () Bool)

(assert (=> b!19316 (= e!12448 call!895)))

(declare-fun d!3583 () Bool)

(declare-fun res!13139 () Bool)

(assert (=> d!3583 (=> res!13139 e!12449)))

(assert (=> d!3583 (= res!13139 (bvsge #b00000000000000000000000000000000 (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938))))))))

(assert (=> d!3583 (= (arrayNoDuplicates!0 (_keys!3105 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000 Nil!538) e!12449)))

(declare-fun b!19317 () Bool)

(declare-fun contains!209 (List!541 (_ BitVec 64)) Bool)

(assert (=> b!19317 (= e!12450 (contains!209 Nil!538 (select (arr!514 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) #b00000000000000000000000000000000)))))

(assert (= (and d!3583 (not res!13139)) b!19313))

(assert (= (and b!19313 res!13140) b!19317))

(assert (= (and b!19313 res!13138) b!19315))

(assert (= (and b!19315 c!2073) b!19316))

(assert (= (and b!19315 (not c!2073)) b!19314))

(assert (= (or b!19316 b!19314) bm!892))

(assert (=> b!19313 m!13623))

(assert (=> b!19313 m!13623))

(assert (=> b!19313 m!13625))

(assert (=> bm!892 m!13623))

(declare-fun m!13637 () Bool)

(assert (=> bm!892 m!13637))

(assert (=> b!19315 m!13623))

(assert (=> b!19315 m!13623))

(assert (=> b!19315 m!13625))

(assert (=> b!19317 m!13623))

(assert (=> b!19317 m!13623))

(declare-fun m!13639 () Bool)

(assert (=> b!19317 m!13639))

(assert (=> b!19276 d!3583))

(declare-fun b!19328 () Bool)

(declare-fun res!13149 () Bool)

(declare-fun e!12453 () Bool)

(assert (=> b!19328 (=> (not res!13149) (not e!12453))))

(declare-fun size!608 (LongMapFixedSize!120) (_ BitVec 32))

(assert (=> b!19328 (= res!13149 (= (size!608 (v!1503 (underlying!71 thiss!938))) (bvadd (_size!93 (v!1503 (underlying!71 thiss!938))) (bvsdiv (bvadd (extraKeys!1589 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!19326 () Bool)

(declare-fun res!13151 () Bool)

(assert (=> b!19326 (=> (not res!13151) (not e!12453))))

(assert (=> b!19326 (= res!13151 (and (= (size!604 (_values!1675 (v!1503 (underlying!71 thiss!938)))) (bvadd (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000001)) (= (size!605 (_keys!3105 (v!1503 (underlying!71 thiss!938)))) (size!604 (_values!1675 (v!1503 (underlying!71 thiss!938))))) (bvsge (_size!93 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000) (bvsle (_size!93 (v!1503 (underlying!71 thiss!938))) (bvadd (mask!4622 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000001))))))

(declare-fun d!3585 () Bool)

(declare-fun res!13150 () Bool)

(assert (=> d!3585 (=> (not res!13150) (not e!12453))))

(assert (=> d!3585 (= res!13150 (validMask!0 (mask!4622 (v!1503 (underlying!71 thiss!938)))))))

(assert (=> d!3585 (= (simpleValid!10 (v!1503 (underlying!71 thiss!938))) e!12453)))

(declare-fun b!19327 () Bool)

(declare-fun res!13152 () Bool)

(assert (=> b!19327 (=> (not res!13152) (not e!12453))))

(assert (=> b!19327 (= res!13152 (bvsge (size!608 (v!1503 (underlying!71 thiss!938))) (_size!93 (v!1503 (underlying!71 thiss!938)))))))

(declare-fun b!19329 () Bool)

(assert (=> b!19329 (= e!12453 (and (bvsge (extraKeys!1589 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000) (bvsle (extraKeys!1589 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000011) (bvsge (_vacant!93 (v!1503 (underlying!71 thiss!938))) #b00000000000000000000000000000000)))))

(assert (= (and d!3585 res!13150) b!19326))

(assert (= (and b!19326 res!13151) b!19327))

(assert (= (and b!19327 res!13152) b!19328))

(assert (= (and b!19328 res!13149) b!19329))

(declare-fun m!13641 () Bool)

(assert (=> b!19328 m!13641))

(assert (=> d!3585 m!13593))

(assert (=> b!19327 m!13641))

(assert (=> d!3577 d!3585))

(declare-fun condMapEmpty!854 () Bool)

(declare-fun mapDefault!854 () ValueCell!267)

(assert (=> mapNonEmpty!853 (= condMapEmpty!854 (= mapRest!853 ((as const (Array (_ BitVec 32) ValueCell!267)) mapDefault!854)))))

(declare-fun e!12454 () Bool)

(declare-fun mapRes!854 () Bool)

(assert (=> mapNonEmpty!853 (= tp!3220 (and e!12454 mapRes!854))))

(declare-fun mapIsEmpty!854 () Bool)

(assert (=> mapIsEmpty!854 mapRes!854))

(declare-fun mapNonEmpty!854 () Bool)

(declare-fun tp!3221 () Bool)

(declare-fun e!12455 () Bool)

(assert (=> mapNonEmpty!854 (= mapRes!854 (and tp!3221 e!12455))))

(declare-fun mapKey!854 () (_ BitVec 32))

(declare-fun mapValue!854 () ValueCell!267)

(declare-fun mapRest!854 () (Array (_ BitVec 32) ValueCell!267))

(assert (=> mapNonEmpty!854 (= mapRest!853 (store mapRest!854 mapKey!854 mapValue!854))))

(declare-fun b!19331 () Bool)

(assert (=> b!19331 (= e!12454 tp_is_empty!933)))

(declare-fun b!19330 () Bool)

(assert (=> b!19330 (= e!12455 tp_is_empty!933)))

(assert (= (and mapNonEmpty!853 condMapEmpty!854) mapIsEmpty!854))

(assert (= (and mapNonEmpty!853 (not condMapEmpty!854)) mapNonEmpty!854))

(assert (= (and mapNonEmpty!854 ((_ is ValueCellFull!267) mapValue!854)) b!19330))

(assert (= (and mapNonEmpty!853 ((_ is ValueCellFull!267) mapDefault!854)) b!19331))

(declare-fun m!13643 () Bool)

(assert (=> mapNonEmpty!854 m!13643))

(check-sat b_and!1331 (not b_next!669) (not b!19301) tp_is_empty!933 (not b!19328) (not b!19317) (not bm!892) (not bm!886) (not bm!889) (not b!19313) (not d!3585) (not b!19315) (not b!19289) (not b!19288) (not b!19327) (not mapNonEmpty!854))
(check-sat b_and!1331 (not b_next!669))
