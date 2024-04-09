; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17894 () Bool)

(assert start!17894)

(declare-fun b!178361 () Bool)

(declare-fun b_free!4407 () Bool)

(declare-fun b_next!4407 () Bool)

(assert (=> b!178361 (= b_free!4407 (not b_next!4407))))

(declare-fun tp!15934 () Bool)

(declare-fun b_and!10941 () Bool)

(assert (=> b!178361 (= tp!15934 b_and!10941)))

(declare-fun b!178360 () Bool)

(declare-fun e!117579 () Bool)

(declare-datatypes ((V!5219 0))(
  ( (V!5220 (val!2134 Int)) )
))
(declare-datatypes ((ValueCell!1746 0))(
  ( (ValueCellFull!1746 (v!4014 V!5219)) (EmptyCell!1746) )
))
(declare-datatypes ((array!7516 0))(
  ( (array!7517 (arr!3562 (Array (_ BitVec 32) (_ BitVec 64))) (size!3868 (_ BitVec 32))) )
))
(declare-datatypes ((array!7518 0))(
  ( (array!7519 (arr!3563 (Array (_ BitVec 32) ValueCell!1746)) (size!3869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2400 0))(
  ( (LongMapFixedSize!2401 (defaultEntry!3669 Int) (mask!8629 (_ BitVec 32)) (extraKeys!3406 (_ BitVec 32)) (zeroValue!3510 V!5219) (minValue!3510 V!5219) (_size!1249 (_ BitVec 32)) (_keys!5546 array!7516) (_values!3652 array!7518) (_vacant!1249 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2400)

(assert (=> b!178360 (= e!117579 (and (= (size!3869 (_values!3652 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8629 thiss!1248))) (= (size!3868 (_keys!5546 thiss!1248)) (size!3869 (_values!3652 thiss!1248))) (bvsge (mask!8629 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3406 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun e!117578 () Bool)

(declare-fun tp_is_empty!4179 () Bool)

(declare-fun e!117576 () Bool)

(declare-fun array_inv!2279 (array!7516) Bool)

(declare-fun array_inv!2280 (array!7518) Bool)

(assert (=> b!178361 (= e!117578 (and tp!15934 tp_is_empty!4179 (array_inv!2279 (_keys!5546 thiss!1248)) (array_inv!2280 (_values!3652 thiss!1248)) e!117576))))

(declare-fun b!178362 () Bool)

(declare-fun e!117580 () Bool)

(assert (=> b!178362 (= e!117580 tp_is_empty!4179)))

(declare-fun mapIsEmpty!7145 () Bool)

(declare-fun mapRes!7145 () Bool)

(assert (=> mapIsEmpty!7145 mapRes!7145))

(declare-fun b!178363 () Bool)

(declare-fun res!84518 () Bool)

(assert (=> b!178363 (=> (not res!84518) (not e!117579))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3314 0))(
  ( (tuple2!3315 (_1!1667 (_ BitVec 64)) (_2!1667 V!5219)) )
))
(declare-datatypes ((List!2284 0))(
  ( (Nil!2281) (Cons!2280 (h!2903 tuple2!3314) (t!7130 List!2284)) )
))
(declare-datatypes ((ListLongMap!2255 0))(
  ( (ListLongMap!2256 (toList!1143 List!2284)) )
))
(declare-fun contains!1207 (ListLongMap!2255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!790 (array!7516 array!7518 (_ BitVec 32) (_ BitVec 32) V!5219 V!5219 (_ BitVec 32) Int) ListLongMap!2255)

(assert (=> b!178363 (= res!84518 (not (contains!1207 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)) key!828)))))

(declare-fun b!178364 () Bool)

(declare-fun res!84522 () Bool)

(assert (=> b!178364 (=> (not res!84522) (not e!117579))))

(assert (=> b!178364 (= res!84522 (not (= key!828 (bvneg key!828))))))

(declare-fun b!178365 () Bool)

(declare-fun res!84520 () Bool)

(assert (=> b!178365 (=> (not res!84520) (not e!117579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178365 (= res!84520 (validMask!0 (mask!8629 thiss!1248)))))

(declare-fun b!178366 () Bool)

(declare-fun e!117577 () Bool)

(assert (=> b!178366 (= e!117577 tp_is_empty!4179)))

(declare-fun mapNonEmpty!7145 () Bool)

(declare-fun tp!15935 () Bool)

(assert (=> mapNonEmpty!7145 (= mapRes!7145 (and tp!15935 e!117580))))

(declare-fun mapRest!7145 () (Array (_ BitVec 32) ValueCell!1746))

(declare-fun mapValue!7145 () ValueCell!1746)

(declare-fun mapKey!7145 () (_ BitVec 32))

(assert (=> mapNonEmpty!7145 (= (arr!3563 (_values!3652 thiss!1248)) (store mapRest!7145 mapKey!7145 mapValue!7145))))

(declare-fun res!84519 () Bool)

(assert (=> start!17894 (=> (not res!84519) (not e!117579))))

(declare-fun valid!997 (LongMapFixedSize!2400) Bool)

(assert (=> start!17894 (= res!84519 (valid!997 thiss!1248))))

(assert (=> start!17894 e!117579))

(assert (=> start!17894 e!117578))

(assert (=> start!17894 true))

(declare-fun b!178367 () Bool)

(assert (=> b!178367 (= e!117576 (and e!117577 mapRes!7145))))

(declare-fun condMapEmpty!7145 () Bool)

(declare-fun mapDefault!7145 () ValueCell!1746)

(assert (=> b!178367 (= condMapEmpty!7145 (= (arr!3563 (_values!3652 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1746)) mapDefault!7145)))))

(declare-fun b!178368 () Bool)

(declare-fun res!84521 () Bool)

(assert (=> b!178368 (=> (not res!84521) (not e!117579))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!585 0))(
  ( (MissingZero!585 (index!4508 (_ BitVec 32))) (Found!585 (index!4509 (_ BitVec 32))) (Intermediate!585 (undefined!1397 Bool) (index!4510 (_ BitVec 32)) (x!19553 (_ BitVec 32))) (Undefined!585) (MissingVacant!585 (index!4511 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7516 (_ BitVec 32)) SeekEntryResult!585)

(assert (=> b!178368 (= res!84521 ((_ is Undefined!585) (seekEntryOrOpen!0 key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248))))))

(assert (= (and start!17894 res!84519) b!178364))

(assert (= (and b!178364 res!84522) b!178368))

(assert (= (and b!178368 res!84521) b!178363))

(assert (= (and b!178363 res!84518) b!178365))

(assert (= (and b!178365 res!84520) b!178360))

(assert (= (and b!178367 condMapEmpty!7145) mapIsEmpty!7145))

(assert (= (and b!178367 (not condMapEmpty!7145)) mapNonEmpty!7145))

(assert (= (and mapNonEmpty!7145 ((_ is ValueCellFull!1746) mapValue!7145)) b!178362))

(assert (= (and b!178367 ((_ is ValueCellFull!1746) mapDefault!7145)) b!178366))

(assert (= b!178361 b!178367))

(assert (= start!17894 b!178361))

(declare-fun m!206775 () Bool)

(assert (=> mapNonEmpty!7145 m!206775))

(declare-fun m!206777 () Bool)

(assert (=> b!178368 m!206777))

(declare-fun m!206779 () Bool)

(assert (=> b!178365 m!206779))

(declare-fun m!206781 () Bool)

(assert (=> b!178363 m!206781))

(assert (=> b!178363 m!206781))

(declare-fun m!206783 () Bool)

(assert (=> b!178363 m!206783))

(declare-fun m!206785 () Bool)

(assert (=> start!17894 m!206785))

(declare-fun m!206787 () Bool)

(assert (=> b!178361 m!206787))

(declare-fun m!206789 () Bool)

(assert (=> b!178361 m!206789))

(check-sat b_and!10941 (not b!178361) (not mapNonEmpty!7145) tp_is_empty!4179 (not start!17894) (not b!178368) (not b!178363) (not b_next!4407) (not b!178365))
(check-sat b_and!10941 (not b_next!4407))
(get-model)

(declare-fun d!53861 () Bool)

(declare-fun res!84544 () Bool)

(declare-fun e!117602 () Bool)

(assert (=> d!53861 (=> (not res!84544) (not e!117602))))

(declare-fun simpleValid!157 (LongMapFixedSize!2400) Bool)

(assert (=> d!53861 (= res!84544 (simpleValid!157 thiss!1248))))

(assert (=> d!53861 (= (valid!997 thiss!1248) e!117602)))

(declare-fun b!178402 () Bool)

(declare-fun res!84545 () Bool)

(assert (=> b!178402 (=> (not res!84545) (not e!117602))))

(declare-fun arrayCountValidKeys!0 (array!7516 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!178402 (= res!84545 (= (arrayCountValidKeys!0 (_keys!5546 thiss!1248) #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))) (_size!1249 thiss!1248)))))

(declare-fun b!178403 () Bool)

(declare-fun res!84546 () Bool)

(assert (=> b!178403 (=> (not res!84546) (not e!117602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7516 (_ BitVec 32)) Bool)

(assert (=> b!178403 (= res!84546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(declare-fun b!178404 () Bool)

(declare-datatypes ((List!2285 0))(
  ( (Nil!2282) (Cons!2281 (h!2904 (_ BitVec 64)) (t!7133 List!2285)) )
))
(declare-fun arrayNoDuplicates!0 (array!7516 (_ BitVec 32) List!2285) Bool)

(assert (=> b!178404 (= e!117602 (arrayNoDuplicates!0 (_keys!5546 thiss!1248) #b00000000000000000000000000000000 Nil!2282))))

(assert (= (and d!53861 res!84544) b!178402))

(assert (= (and b!178402 res!84545) b!178403))

(assert (= (and b!178403 res!84546) b!178404))

(declare-fun m!206807 () Bool)

(assert (=> d!53861 m!206807))

(declare-fun m!206809 () Bool)

(assert (=> b!178402 m!206809))

(declare-fun m!206811 () Bool)

(assert (=> b!178403 m!206811))

(declare-fun m!206813 () Bool)

(assert (=> b!178404 m!206813))

(assert (=> start!17894 d!53861))

(declare-fun d!53863 () Bool)

(assert (=> d!53863 (= (validMask!0 (mask!8629 thiss!1248)) (and (or (= (mask!8629 thiss!1248) #b00000000000000000000000000000111) (= (mask!8629 thiss!1248) #b00000000000000000000000000001111) (= (mask!8629 thiss!1248) #b00000000000000000000000000011111) (= (mask!8629 thiss!1248) #b00000000000000000000000000111111) (= (mask!8629 thiss!1248) #b00000000000000000000000001111111) (= (mask!8629 thiss!1248) #b00000000000000000000000011111111) (= (mask!8629 thiss!1248) #b00000000000000000000000111111111) (= (mask!8629 thiss!1248) #b00000000000000000000001111111111) (= (mask!8629 thiss!1248) #b00000000000000000000011111111111) (= (mask!8629 thiss!1248) #b00000000000000000000111111111111) (= (mask!8629 thiss!1248) #b00000000000000000001111111111111) (= (mask!8629 thiss!1248) #b00000000000000000011111111111111) (= (mask!8629 thiss!1248) #b00000000000000000111111111111111) (= (mask!8629 thiss!1248) #b00000000000000001111111111111111) (= (mask!8629 thiss!1248) #b00000000000000011111111111111111) (= (mask!8629 thiss!1248) #b00000000000000111111111111111111) (= (mask!8629 thiss!1248) #b00000000000001111111111111111111) (= (mask!8629 thiss!1248) #b00000000000011111111111111111111) (= (mask!8629 thiss!1248) #b00000000000111111111111111111111) (= (mask!8629 thiss!1248) #b00000000001111111111111111111111) (= (mask!8629 thiss!1248) #b00000000011111111111111111111111) (= (mask!8629 thiss!1248) #b00000000111111111111111111111111) (= (mask!8629 thiss!1248) #b00000001111111111111111111111111) (= (mask!8629 thiss!1248) #b00000011111111111111111111111111) (= (mask!8629 thiss!1248) #b00000111111111111111111111111111) (= (mask!8629 thiss!1248) #b00001111111111111111111111111111) (= (mask!8629 thiss!1248) #b00011111111111111111111111111111) (= (mask!8629 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8629 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!178365 d!53863))

(declare-fun d!53865 () Bool)

(assert (=> d!53865 (= (array_inv!2279 (_keys!5546 thiss!1248)) (bvsge (size!3868 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178361 d!53865))

(declare-fun d!53867 () Bool)

(assert (=> d!53867 (= (array_inv!2280 (_values!3652 thiss!1248)) (bvsge (size!3869 (_values!3652 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178361 d!53867))

(declare-fun d!53869 () Bool)

(declare-fun e!117607 () Bool)

(assert (=> d!53869 e!117607))

(declare-fun res!84549 () Bool)

(assert (=> d!53869 (=> res!84549 e!117607)))

(declare-fun lt!88184 () Bool)

(assert (=> d!53869 (= res!84549 (not lt!88184))))

(declare-fun lt!88185 () Bool)

(assert (=> d!53869 (= lt!88184 lt!88185)))

(declare-datatypes ((Unit!5441 0))(
  ( (Unit!5442) )
))
(declare-fun lt!88187 () Unit!5441)

(declare-fun e!117608 () Unit!5441)

(assert (=> d!53869 (= lt!88187 e!117608)))

(declare-fun c!31946 () Bool)

(assert (=> d!53869 (= c!31946 lt!88185)))

(declare-fun containsKey!202 (List!2284 (_ BitVec 64)) Bool)

(assert (=> d!53869 (= lt!88185 (containsKey!202 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(assert (=> d!53869 (= (contains!1207 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)) key!828) lt!88184)))

(declare-fun b!178411 () Bool)

(declare-fun lt!88186 () Unit!5441)

(assert (=> b!178411 (= e!117608 lt!88186)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!151 (List!2284 (_ BitVec 64)) Unit!5441)

(assert (=> b!178411 (= lt!88186 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(declare-datatypes ((Option!204 0))(
  ( (Some!203 (v!4016 V!5219)) (None!202) )
))
(declare-fun isDefined!152 (Option!204) Bool)

(declare-fun getValueByKey!198 (List!2284 (_ BitVec 64)) Option!204)

(assert (=> b!178411 (isDefined!152 (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(declare-fun b!178412 () Bool)

(declare-fun Unit!5443 () Unit!5441)

(assert (=> b!178412 (= e!117608 Unit!5443)))

(declare-fun b!178413 () Bool)

(assert (=> b!178413 (= e!117607 (isDefined!152 (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828)))))

(assert (= (and d!53869 c!31946) b!178411))

(assert (= (and d!53869 (not c!31946)) b!178412))

(assert (= (and d!53869 (not res!84549)) b!178413))

(declare-fun m!206815 () Bool)

(assert (=> d!53869 m!206815))

(declare-fun m!206817 () Bool)

(assert (=> b!178411 m!206817))

(declare-fun m!206819 () Bool)

(assert (=> b!178411 m!206819))

(assert (=> b!178411 m!206819))

(declare-fun m!206821 () Bool)

(assert (=> b!178411 m!206821))

(assert (=> b!178413 m!206819))

(assert (=> b!178413 m!206819))

(assert (=> b!178413 m!206821))

(assert (=> b!178363 d!53869))

(declare-fun b!178456 () Bool)

(declare-fun e!117645 () Bool)

(declare-fun lt!88250 () ListLongMap!2255)

(declare-fun apply!144 (ListLongMap!2255 (_ BitVec 64)) V!5219)

(assert (=> b!178456 (= e!117645 (= (apply!144 lt!88250 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3510 thiss!1248)))))

(declare-fun bm!18041 () Bool)

(declare-fun call!18047 () ListLongMap!2255)

(declare-fun call!18048 () ListLongMap!2255)

(assert (=> bm!18041 (= call!18047 call!18048)))

(declare-fun bm!18042 () Bool)

(declare-fun call!18050 () Bool)

(assert (=> bm!18042 (= call!18050 (contains!1207 lt!88250 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178457 () Bool)

(declare-fun e!117639 () Bool)

(declare-fun call!18045 () Bool)

(assert (=> b!178457 (= e!117639 (not call!18045))))

(declare-fun b!178458 () Bool)

(declare-fun e!117644 () ListLongMap!2255)

(assert (=> b!178458 (= e!117644 call!18047)))

(declare-fun d!53871 () Bool)

(declare-fun e!117635 () Bool)

(assert (=> d!53871 e!117635))

(declare-fun res!84568 () Bool)

(assert (=> d!53871 (=> (not res!84568) (not e!117635))))

(assert (=> d!53871 (= res!84568 (or (bvsge #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))))

(declare-fun lt!88244 () ListLongMap!2255)

(assert (=> d!53871 (= lt!88250 lt!88244)))

(declare-fun lt!88235 () Unit!5441)

(declare-fun e!117647 () Unit!5441)

(assert (=> d!53871 (= lt!88235 e!117647)))

(declare-fun c!31961 () Bool)

(declare-fun e!117637 () Bool)

(assert (=> d!53871 (= c!31961 e!117637)))

(declare-fun res!84572 () Bool)

(assert (=> d!53871 (=> (not res!84572) (not e!117637))))

(assert (=> d!53871 (= res!84572 (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun e!117646 () ListLongMap!2255)

(assert (=> d!53871 (= lt!88244 e!117646)))

(declare-fun c!31962 () Bool)

(assert (=> d!53871 (= c!31962 (and (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53871 (validMask!0 (mask!8629 thiss!1248))))

(assert (=> d!53871 (= (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)) lt!88250)))

(declare-fun b!178459 () Bool)

(declare-fun e!117642 () Bool)

(assert (=> b!178459 (= e!117642 (not call!18050))))

(declare-fun b!178460 () Bool)

(declare-fun res!84569 () Bool)

(assert (=> b!178460 (=> (not res!84569) (not e!117635))))

(declare-fun e!117641 () Bool)

(assert (=> b!178460 (= res!84569 e!117641)))

(declare-fun res!84575 () Bool)

(assert (=> b!178460 (=> res!84575 e!117641)))

(declare-fun e!117643 () Bool)

(assert (=> b!178460 (= res!84575 (not e!117643))))

(declare-fun res!84571 () Bool)

(assert (=> b!178460 (=> (not res!84571) (not e!117643))))

(assert (=> b!178460 (= res!84571 (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun b!178461 () Bool)

(declare-fun e!117640 () Bool)

(assert (=> b!178461 (= e!117642 e!117640)))

(declare-fun res!84576 () Bool)

(assert (=> b!178461 (= res!84576 call!18050)))

(assert (=> b!178461 (=> (not res!84576) (not e!117640))))

(declare-fun b!178462 () Bool)

(declare-fun e!117636 () Bool)

(declare-fun get!2036 (ValueCell!1746 V!5219) V!5219)

(declare-fun dynLambda!482 (Int (_ BitVec 64)) V!5219)

(assert (=> b!178462 (= e!117636 (= (apply!144 lt!88250 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)) (get!2036 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!178462 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3869 (_values!3652 thiss!1248))))))

(assert (=> b!178462 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun bm!18043 () Bool)

(declare-fun call!18046 () ListLongMap!2255)

(declare-fun call!18049 () ListLongMap!2255)

(assert (=> bm!18043 (= call!18046 call!18049)))

(declare-fun b!178463 () Bool)

(assert (=> b!178463 (= e!117641 e!117636)))

(declare-fun res!84570 () Bool)

(assert (=> b!178463 (=> (not res!84570) (not e!117636))))

(assert (=> b!178463 (= res!84570 (contains!1207 lt!88250 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178463 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun bm!18044 () Bool)

(declare-fun call!18044 () ListLongMap!2255)

(declare-fun getCurrentListMapNoExtraKeys!174 (array!7516 array!7518 (_ BitVec 32) (_ BitVec 32) V!5219 V!5219 (_ BitVec 32) Int) ListLongMap!2255)

(assert (=> bm!18044 (= call!18044 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))

(declare-fun bm!18045 () Bool)

(assert (=> bm!18045 (= call!18045 (contains!1207 lt!88250 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18046 () Bool)

(assert (=> bm!18046 (= call!18049 call!18044)))

(declare-fun b!178464 () Bool)

(declare-fun lt!88240 () Unit!5441)

(assert (=> b!178464 (= e!117647 lt!88240)))

(declare-fun lt!88232 () ListLongMap!2255)

(assert (=> b!178464 (= lt!88232 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))

(declare-fun lt!88252 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88252 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88233 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88233 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88236 () Unit!5441)

(declare-fun addStillContains!120 (ListLongMap!2255 (_ BitVec 64) V!5219 (_ BitVec 64)) Unit!5441)

(assert (=> b!178464 (= lt!88236 (addStillContains!120 lt!88232 lt!88252 (zeroValue!3510 thiss!1248) lt!88233))))

(declare-fun +!256 (ListLongMap!2255 tuple2!3314) ListLongMap!2255)

(assert (=> b!178464 (contains!1207 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) lt!88233)))

(declare-fun lt!88251 () Unit!5441)

(assert (=> b!178464 (= lt!88251 lt!88236)))

(declare-fun lt!88247 () ListLongMap!2255)

(assert (=> b!178464 (= lt!88247 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))

(declare-fun lt!88246 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88246 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88239 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88239 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88234 () Unit!5441)

(declare-fun addApplyDifferent!120 (ListLongMap!2255 (_ BitVec 64) V!5219 (_ BitVec 64)) Unit!5441)

(assert (=> b!178464 (= lt!88234 (addApplyDifferent!120 lt!88247 lt!88246 (minValue!3510 thiss!1248) lt!88239))))

(assert (=> b!178464 (= (apply!144 (+!256 lt!88247 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) lt!88239) (apply!144 lt!88247 lt!88239))))

(declare-fun lt!88242 () Unit!5441)

(assert (=> b!178464 (= lt!88242 lt!88234)))

(declare-fun lt!88249 () ListLongMap!2255)

(assert (=> b!178464 (= lt!88249 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))

(declare-fun lt!88243 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88243 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88241 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88241 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88248 () Unit!5441)

(assert (=> b!178464 (= lt!88248 (addApplyDifferent!120 lt!88249 lt!88243 (zeroValue!3510 thiss!1248) lt!88241))))

(assert (=> b!178464 (= (apply!144 (+!256 lt!88249 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) lt!88241) (apply!144 lt!88249 lt!88241))))

(declare-fun lt!88245 () Unit!5441)

(assert (=> b!178464 (= lt!88245 lt!88248)))

(declare-fun lt!88253 () ListLongMap!2255)

(assert (=> b!178464 (= lt!88253 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))

(declare-fun lt!88238 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88238 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88237 () (_ BitVec 64))

(assert (=> b!178464 (= lt!88237 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178464 (= lt!88240 (addApplyDifferent!120 lt!88253 lt!88238 (minValue!3510 thiss!1248) lt!88237))))

(assert (=> b!178464 (= (apply!144 (+!256 lt!88253 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) lt!88237) (apply!144 lt!88253 lt!88237))))

(declare-fun b!178465 () Bool)

(assert (=> b!178465 (= e!117646 (+!256 call!18048 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))

(declare-fun b!178466 () Bool)

(declare-fun c!31959 () Bool)

(assert (=> b!178466 (= c!31959 (and (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!117638 () ListLongMap!2255)

(assert (=> b!178466 (= e!117638 e!117644)))

(declare-fun c!31964 () Bool)

(declare-fun bm!18047 () Bool)

(assert (=> bm!18047 (= call!18048 (+!256 (ite c!31962 call!18044 (ite c!31964 call!18049 call!18046)) (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(declare-fun b!178467 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!178467 (= e!117637 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178468 () Bool)

(assert (=> b!178468 (= e!117643 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178469 () Bool)

(assert (=> b!178469 (= e!117635 e!117639)))

(declare-fun c!31963 () Bool)

(assert (=> b!178469 (= c!31963 (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!178470 () Bool)

(declare-fun res!84574 () Bool)

(assert (=> b!178470 (=> (not res!84574) (not e!117635))))

(assert (=> b!178470 (= res!84574 e!117642)))

(declare-fun c!31960 () Bool)

(assert (=> b!178470 (= c!31960 (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!178471 () Bool)

(declare-fun Unit!5444 () Unit!5441)

(assert (=> b!178471 (= e!117647 Unit!5444)))

(declare-fun b!178472 () Bool)

(assert (=> b!178472 (= e!117646 e!117638)))

(assert (=> b!178472 (= c!31964 (and (not (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3406 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!178473 () Bool)

(assert (=> b!178473 (= e!117638 call!18047)))

(declare-fun b!178474 () Bool)

(assert (=> b!178474 (= e!117644 call!18046)))

(declare-fun b!178475 () Bool)

(assert (=> b!178475 (= e!117639 e!117645)))

(declare-fun res!84573 () Bool)

(assert (=> b!178475 (= res!84573 call!18045)))

(assert (=> b!178475 (=> (not res!84573) (not e!117645))))

(declare-fun b!178476 () Bool)

(assert (=> b!178476 (= e!117640 (= (apply!144 lt!88250 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3510 thiss!1248)))))

(assert (= (and d!53871 c!31962) b!178465))

(assert (= (and d!53871 (not c!31962)) b!178472))

(assert (= (and b!178472 c!31964) b!178473))

(assert (= (and b!178472 (not c!31964)) b!178466))

(assert (= (and b!178466 c!31959) b!178458))

(assert (= (and b!178466 (not c!31959)) b!178474))

(assert (= (or b!178458 b!178474) bm!18043))

(assert (= (or b!178473 bm!18043) bm!18046))

(assert (= (or b!178473 b!178458) bm!18041))

(assert (= (or b!178465 bm!18046) bm!18044))

(assert (= (or b!178465 bm!18041) bm!18047))

(assert (= (and d!53871 res!84572) b!178467))

(assert (= (and d!53871 c!31961) b!178464))

(assert (= (and d!53871 (not c!31961)) b!178471))

(assert (= (and d!53871 res!84568) b!178460))

(assert (= (and b!178460 res!84571) b!178468))

(assert (= (and b!178460 (not res!84575)) b!178463))

(assert (= (and b!178463 res!84570) b!178462))

(assert (= (and b!178460 res!84569) b!178470))

(assert (= (and b!178470 c!31960) b!178461))

(assert (= (and b!178470 (not c!31960)) b!178459))

(assert (= (and b!178461 res!84576) b!178476))

(assert (= (or b!178461 b!178459) bm!18042))

(assert (= (and b!178470 res!84574) b!178469))

(assert (= (and b!178469 c!31963) b!178475))

(assert (= (and b!178469 (not c!31963)) b!178457))

(assert (= (and b!178475 res!84573) b!178456))

(assert (= (or b!178475 b!178457) bm!18045))

(declare-fun b_lambda!7113 () Bool)

(assert (=> (not b_lambda!7113) (not b!178462)))

(declare-fun t!7132 () Bool)

(declare-fun tb!2807 () Bool)

(assert (=> (and b!178361 (= (defaultEntry!3669 thiss!1248) (defaultEntry!3669 thiss!1248)) t!7132) tb!2807))

(declare-fun result!4679 () Bool)

(assert (=> tb!2807 (= result!4679 tp_is_empty!4179)))

(assert (=> b!178462 t!7132))

(declare-fun b_and!10945 () Bool)

(assert (= b_and!10941 (and (=> t!7132 result!4679) b_and!10945)))

(declare-fun m!206823 () Bool)

(assert (=> b!178468 m!206823))

(assert (=> b!178468 m!206823))

(declare-fun m!206825 () Bool)

(assert (=> b!178468 m!206825))

(declare-fun m!206827 () Bool)

(assert (=> bm!18042 m!206827))

(declare-fun m!206829 () Bool)

(assert (=> bm!18045 m!206829))

(declare-fun m!206831 () Bool)

(assert (=> b!178456 m!206831))

(declare-fun m!206833 () Bool)

(assert (=> b!178465 m!206833))

(assert (=> b!178467 m!206823))

(assert (=> b!178467 m!206823))

(assert (=> b!178467 m!206825))

(declare-fun m!206835 () Bool)

(assert (=> b!178464 m!206835))

(declare-fun m!206837 () Bool)

(assert (=> b!178464 m!206837))

(declare-fun m!206839 () Bool)

(assert (=> b!178464 m!206839))

(declare-fun m!206841 () Bool)

(assert (=> b!178464 m!206841))

(declare-fun m!206843 () Bool)

(assert (=> b!178464 m!206843))

(declare-fun m!206845 () Bool)

(assert (=> b!178464 m!206845))

(assert (=> b!178464 m!206837))

(declare-fun m!206847 () Bool)

(assert (=> b!178464 m!206847))

(declare-fun m!206849 () Bool)

(assert (=> b!178464 m!206849))

(declare-fun m!206851 () Bool)

(assert (=> b!178464 m!206851))

(declare-fun m!206853 () Bool)

(assert (=> b!178464 m!206853))

(assert (=> b!178464 m!206841))

(declare-fun m!206855 () Bool)

(assert (=> b!178464 m!206855))

(assert (=> b!178464 m!206851))

(declare-fun m!206857 () Bool)

(assert (=> b!178464 m!206857))

(declare-fun m!206859 () Bool)

(assert (=> b!178464 m!206859))

(declare-fun m!206861 () Bool)

(assert (=> b!178464 m!206861))

(assert (=> b!178464 m!206845))

(declare-fun m!206863 () Bool)

(assert (=> b!178464 m!206863))

(declare-fun m!206865 () Bool)

(assert (=> b!178464 m!206865))

(assert (=> b!178464 m!206823))

(assert (=> b!178462 m!206823))

(declare-fun m!206867 () Bool)

(assert (=> b!178462 m!206867))

(declare-fun m!206869 () Bool)

(assert (=> b!178462 m!206869))

(declare-fun m!206871 () Bool)

(assert (=> b!178462 m!206871))

(assert (=> b!178462 m!206869))

(assert (=> b!178462 m!206871))

(declare-fun m!206873 () Bool)

(assert (=> b!178462 m!206873))

(assert (=> b!178462 m!206823))

(assert (=> b!178463 m!206823))

(assert (=> b!178463 m!206823))

(declare-fun m!206875 () Bool)

(assert (=> b!178463 m!206875))

(declare-fun m!206877 () Bool)

(assert (=> bm!18047 m!206877))

(declare-fun m!206879 () Bool)

(assert (=> b!178476 m!206879))

(assert (=> bm!18044 m!206847))

(assert (=> d!53871 m!206779))

(assert (=> b!178363 d!53871))

(declare-fun b!178491 () Bool)

(declare-fun e!117656 () SeekEntryResult!585)

(assert (=> b!178491 (= e!117656 Undefined!585)))

(declare-fun lt!88262 () SeekEntryResult!585)

(declare-fun b!178492 () Bool)

(declare-fun e!117654 () SeekEntryResult!585)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7516 (_ BitVec 32)) SeekEntryResult!585)

(assert (=> b!178492 (= e!117654 (seekKeyOrZeroReturnVacant!0 (x!19553 lt!88262) (index!4510 lt!88262) (index!4510 lt!88262) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(declare-fun b!178493 () Bool)

(declare-fun e!117655 () SeekEntryResult!585)

(assert (=> b!178493 (= e!117655 (Found!585 (index!4510 lt!88262)))))

(declare-fun d!53873 () Bool)

(declare-fun lt!88260 () SeekEntryResult!585)

(assert (=> d!53873 (and (or ((_ is Undefined!585) lt!88260) (not ((_ is Found!585) lt!88260)) (and (bvsge (index!4509 lt!88260) #b00000000000000000000000000000000) (bvslt (index!4509 lt!88260) (size!3868 (_keys!5546 thiss!1248))))) (or ((_ is Undefined!585) lt!88260) ((_ is Found!585) lt!88260) (not ((_ is MissingZero!585) lt!88260)) (and (bvsge (index!4508 lt!88260) #b00000000000000000000000000000000) (bvslt (index!4508 lt!88260) (size!3868 (_keys!5546 thiss!1248))))) (or ((_ is Undefined!585) lt!88260) ((_ is Found!585) lt!88260) ((_ is MissingZero!585) lt!88260) (not ((_ is MissingVacant!585) lt!88260)) (and (bvsge (index!4511 lt!88260) #b00000000000000000000000000000000) (bvslt (index!4511 lt!88260) (size!3868 (_keys!5546 thiss!1248))))) (or ((_ is Undefined!585) lt!88260) (ite ((_ is Found!585) lt!88260) (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4509 lt!88260)) key!828) (ite ((_ is MissingZero!585) lt!88260) (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4508 lt!88260)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!585) lt!88260) (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4511 lt!88260)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53873 (= lt!88260 e!117656)))

(declare-fun c!31972 () Bool)

(assert (=> d!53873 (= c!31972 (and ((_ is Intermediate!585) lt!88262) (undefined!1397 lt!88262)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7516 (_ BitVec 32)) SeekEntryResult!585)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53873 (= lt!88262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8629 thiss!1248)) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(assert (=> d!53873 (validMask!0 (mask!8629 thiss!1248))))

(assert (=> d!53873 (= (seekEntryOrOpen!0 key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)) lt!88260)))

(declare-fun b!178494 () Bool)

(declare-fun c!31971 () Bool)

(declare-fun lt!88261 () (_ BitVec 64))

(assert (=> b!178494 (= c!31971 (= lt!88261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178494 (= e!117655 e!117654)))

(declare-fun b!178495 () Bool)

(assert (=> b!178495 (= e!117654 (MissingZero!585 (index!4510 lt!88262)))))

(declare-fun b!178496 () Bool)

(assert (=> b!178496 (= e!117656 e!117655)))

(assert (=> b!178496 (= lt!88261 (select (arr!3562 (_keys!5546 thiss!1248)) (index!4510 lt!88262)))))

(declare-fun c!31973 () Bool)

(assert (=> b!178496 (= c!31973 (= lt!88261 key!828))))

(assert (= (and d!53873 c!31972) b!178491))

(assert (= (and d!53873 (not c!31972)) b!178496))

(assert (= (and b!178496 c!31973) b!178493))

(assert (= (and b!178496 (not c!31973)) b!178494))

(assert (= (and b!178494 c!31971) b!178495))

(assert (= (and b!178494 (not c!31971)) b!178492))

(declare-fun m!206881 () Bool)

(assert (=> b!178492 m!206881))

(declare-fun m!206883 () Bool)

(assert (=> d!53873 m!206883))

(declare-fun m!206885 () Bool)

(assert (=> d!53873 m!206885))

(declare-fun m!206887 () Bool)

(assert (=> d!53873 m!206887))

(assert (=> d!53873 m!206883))

(declare-fun m!206889 () Bool)

(assert (=> d!53873 m!206889))

(declare-fun m!206891 () Bool)

(assert (=> d!53873 m!206891))

(assert (=> d!53873 m!206779))

(declare-fun m!206893 () Bool)

(assert (=> b!178496 m!206893))

(assert (=> b!178368 d!53873))

(declare-fun condMapEmpty!7151 () Bool)

(declare-fun mapDefault!7151 () ValueCell!1746)

(assert (=> mapNonEmpty!7145 (= condMapEmpty!7151 (= mapRest!7145 ((as const (Array (_ BitVec 32) ValueCell!1746)) mapDefault!7151)))))

(declare-fun e!117662 () Bool)

(declare-fun mapRes!7151 () Bool)

(assert (=> mapNonEmpty!7145 (= tp!15935 (and e!117662 mapRes!7151))))

(declare-fun b!178503 () Bool)

(declare-fun e!117661 () Bool)

(assert (=> b!178503 (= e!117661 tp_is_empty!4179)))

(declare-fun mapNonEmpty!7151 () Bool)

(declare-fun tp!15944 () Bool)

(assert (=> mapNonEmpty!7151 (= mapRes!7151 (and tp!15944 e!117661))))

(declare-fun mapValue!7151 () ValueCell!1746)

(declare-fun mapKey!7151 () (_ BitVec 32))

(declare-fun mapRest!7151 () (Array (_ BitVec 32) ValueCell!1746))

(assert (=> mapNonEmpty!7151 (= mapRest!7145 (store mapRest!7151 mapKey!7151 mapValue!7151))))

(declare-fun mapIsEmpty!7151 () Bool)

(assert (=> mapIsEmpty!7151 mapRes!7151))

(declare-fun b!178504 () Bool)

(assert (=> b!178504 (= e!117662 tp_is_empty!4179)))

(assert (= (and mapNonEmpty!7145 condMapEmpty!7151) mapIsEmpty!7151))

(assert (= (and mapNonEmpty!7145 (not condMapEmpty!7151)) mapNonEmpty!7151))

(assert (= (and mapNonEmpty!7151 ((_ is ValueCellFull!1746) mapValue!7151)) b!178503))

(assert (= (and mapNonEmpty!7145 ((_ is ValueCellFull!1746) mapDefault!7151)) b!178504))

(declare-fun m!206895 () Bool)

(assert (=> mapNonEmpty!7151 m!206895))

(declare-fun b_lambda!7115 () Bool)

(assert (= b_lambda!7113 (or (and b!178361 b_free!4407) b_lambda!7115)))

(check-sat (not bm!18045) (not b!178402) (not b!178467) (not d!53871) (not bm!18047) (not bm!18044) tp_is_empty!4179 (not b!178476) (not b_next!4407) (not b!178468) (not b!178404) (not b!178413) b_and!10945 (not b!178464) (not b!178462) (not b!178463) (not b!178411) (not b!178492) (not b!178456) (not b!178403) (not mapNonEmpty!7151) (not d!53873) (not d!53869) (not b!178465) (not b_lambda!7115) (not d!53861) (not bm!18042))
(check-sat b_and!10945 (not b_next!4407))
(get-model)

(declare-fun d!53875 () Bool)

(declare-fun e!117663 () Bool)

(assert (=> d!53875 e!117663))

(declare-fun res!84577 () Bool)

(assert (=> d!53875 (=> res!84577 e!117663)))

(declare-fun lt!88263 () Bool)

(assert (=> d!53875 (= res!84577 (not lt!88263))))

(declare-fun lt!88264 () Bool)

(assert (=> d!53875 (= lt!88263 lt!88264)))

(declare-fun lt!88266 () Unit!5441)

(declare-fun e!117664 () Unit!5441)

(assert (=> d!53875 (= lt!88266 e!117664)))

(declare-fun c!31974 () Bool)

(assert (=> d!53875 (= c!31974 lt!88264)))

(assert (=> d!53875 (= lt!88264 (containsKey!202 (toList!1143 lt!88250) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53875 (= (contains!1207 lt!88250 #b0000000000000000000000000000000000000000000000000000000000000000) lt!88263)))

(declare-fun b!178505 () Bool)

(declare-fun lt!88265 () Unit!5441)

(assert (=> b!178505 (= e!117664 lt!88265)))

(assert (=> b!178505 (= lt!88265 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 lt!88250) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178505 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178506 () Bool)

(declare-fun Unit!5445 () Unit!5441)

(assert (=> b!178506 (= e!117664 Unit!5445)))

(declare-fun b!178507 () Bool)

(assert (=> b!178507 (= e!117663 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53875 c!31974) b!178505))

(assert (= (and d!53875 (not c!31974)) b!178506))

(assert (= (and d!53875 (not res!84577)) b!178507))

(declare-fun m!206897 () Bool)

(assert (=> d!53875 m!206897))

(declare-fun m!206899 () Bool)

(assert (=> b!178505 m!206899))

(declare-fun m!206901 () Bool)

(assert (=> b!178505 m!206901))

(assert (=> b!178505 m!206901))

(declare-fun m!206903 () Bool)

(assert (=> b!178505 m!206903))

(assert (=> b!178507 m!206901))

(assert (=> b!178507 m!206901))

(assert (=> b!178507 m!206903))

(assert (=> bm!18042 d!53875))

(declare-fun d!53877 () Bool)

(declare-fun res!84582 () Bool)

(declare-fun e!117669 () Bool)

(assert (=> d!53877 (=> res!84582 e!117669)))

(assert (=> d!53877 (= res!84582 (and ((_ is Cons!2280) (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) (= (_1!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) key!828)))))

(assert (=> d!53877 (= (containsKey!202 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828) e!117669)))

(declare-fun b!178512 () Bool)

(declare-fun e!117670 () Bool)

(assert (=> b!178512 (= e!117669 e!117670)))

(declare-fun res!84583 () Bool)

(assert (=> b!178512 (=> (not res!84583) (not e!117670))))

(assert (=> b!178512 (= res!84583 (and (or (not ((_ is Cons!2280) (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) (bvsle (_1!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) key!828)) ((_ is Cons!2280) (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) (bvslt (_1!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) key!828)))))

(declare-fun b!178513 () Bool)

(assert (=> b!178513 (= e!117670 (containsKey!202 (t!7130 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) key!828))))

(assert (= (and d!53877 (not res!84582)) b!178512))

(assert (= (and b!178512 res!84583) b!178513))

(declare-fun m!206905 () Bool)

(assert (=> b!178513 m!206905))

(assert (=> d!53869 d!53877))

(declare-fun b!178526 () Bool)

(declare-fun e!117679 () SeekEntryResult!585)

(assert (=> b!178526 (= e!117679 Undefined!585)))

(declare-fun e!117678 () SeekEntryResult!585)

(declare-fun b!178527 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!178527 (= e!117678 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19553 lt!88262) #b00000000000000000000000000000001) (nextIndex!0 (index!4510 lt!88262) (x!19553 lt!88262) (mask!8629 thiss!1248)) (index!4510 lt!88262) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(declare-fun b!178528 () Bool)

(assert (=> b!178528 (= e!117678 (MissingVacant!585 (index!4510 lt!88262)))))

(declare-fun lt!88272 () SeekEntryResult!585)

(declare-fun d!53879 () Bool)

(assert (=> d!53879 (and (or ((_ is Undefined!585) lt!88272) (not ((_ is Found!585) lt!88272)) (and (bvsge (index!4509 lt!88272) #b00000000000000000000000000000000) (bvslt (index!4509 lt!88272) (size!3868 (_keys!5546 thiss!1248))))) (or ((_ is Undefined!585) lt!88272) ((_ is Found!585) lt!88272) (not ((_ is MissingVacant!585) lt!88272)) (not (= (index!4511 lt!88272) (index!4510 lt!88262))) (and (bvsge (index!4511 lt!88272) #b00000000000000000000000000000000) (bvslt (index!4511 lt!88272) (size!3868 (_keys!5546 thiss!1248))))) (or ((_ is Undefined!585) lt!88272) (ite ((_ is Found!585) lt!88272) (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4509 lt!88272)) key!828) (and ((_ is MissingVacant!585) lt!88272) (= (index!4511 lt!88272) (index!4510 lt!88262)) (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4511 lt!88272)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53879 (= lt!88272 e!117679)))

(declare-fun c!31982 () Bool)

(assert (=> d!53879 (= c!31982 (bvsge (x!19553 lt!88262) #b01111111111111111111111111111110))))

(declare-fun lt!88271 () (_ BitVec 64))

(assert (=> d!53879 (= lt!88271 (select (arr!3562 (_keys!5546 thiss!1248)) (index!4510 lt!88262)))))

(assert (=> d!53879 (validMask!0 (mask!8629 thiss!1248))))

(assert (=> d!53879 (= (seekKeyOrZeroReturnVacant!0 (x!19553 lt!88262) (index!4510 lt!88262) (index!4510 lt!88262) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)) lt!88272)))

(declare-fun b!178529 () Bool)

(declare-fun e!117677 () SeekEntryResult!585)

(assert (=> b!178529 (= e!117679 e!117677)))

(declare-fun c!31981 () Bool)

(assert (=> b!178529 (= c!31981 (= lt!88271 key!828))))

(declare-fun b!178530 () Bool)

(assert (=> b!178530 (= e!117677 (Found!585 (index!4510 lt!88262)))))

(declare-fun b!178531 () Bool)

(declare-fun c!31983 () Bool)

(assert (=> b!178531 (= c!31983 (= lt!88271 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178531 (= e!117677 e!117678)))

(assert (= (and d!53879 c!31982) b!178526))

(assert (= (and d!53879 (not c!31982)) b!178529))

(assert (= (and b!178529 c!31981) b!178530))

(assert (= (and b!178529 (not c!31981)) b!178531))

(assert (= (and b!178531 c!31983) b!178528))

(assert (= (and b!178531 (not c!31983)) b!178527))

(declare-fun m!206907 () Bool)

(assert (=> b!178527 m!206907))

(assert (=> b!178527 m!206907))

(declare-fun m!206909 () Bool)

(assert (=> b!178527 m!206909))

(declare-fun m!206911 () Bool)

(assert (=> d!53879 m!206911))

(declare-fun m!206913 () Bool)

(assert (=> d!53879 m!206913))

(assert (=> d!53879 m!206893))

(assert (=> d!53879 m!206779))

(assert (=> b!178492 d!53879))

(declare-fun d!53881 () Bool)

(declare-fun e!117680 () Bool)

(assert (=> d!53881 e!117680))

(declare-fun res!84584 () Bool)

(assert (=> d!53881 (=> res!84584 e!117680)))

(declare-fun lt!88273 () Bool)

(assert (=> d!53881 (= res!84584 (not lt!88273))))

(declare-fun lt!88274 () Bool)

(assert (=> d!53881 (= lt!88273 lt!88274)))

(declare-fun lt!88276 () Unit!5441)

(declare-fun e!117681 () Unit!5441)

(assert (=> d!53881 (= lt!88276 e!117681)))

(declare-fun c!31984 () Bool)

(assert (=> d!53881 (= c!31984 lt!88274)))

(assert (=> d!53881 (= lt!88274 (containsKey!202 (toList!1143 lt!88250) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53881 (= (contains!1207 lt!88250 #b1000000000000000000000000000000000000000000000000000000000000000) lt!88273)))

(declare-fun b!178532 () Bool)

(declare-fun lt!88275 () Unit!5441)

(assert (=> b!178532 (= e!117681 lt!88275)))

(assert (=> b!178532 (= lt!88275 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 lt!88250) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178532 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178533 () Bool)

(declare-fun Unit!5446 () Unit!5441)

(assert (=> b!178533 (= e!117681 Unit!5446)))

(declare-fun b!178534 () Bool)

(assert (=> b!178534 (= e!117680 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53881 c!31984) b!178532))

(assert (= (and d!53881 (not c!31984)) b!178533))

(assert (= (and d!53881 (not res!84584)) b!178534))

(declare-fun m!206915 () Bool)

(assert (=> d!53881 m!206915))

(declare-fun m!206917 () Bool)

(assert (=> b!178532 m!206917))

(declare-fun m!206919 () Bool)

(assert (=> b!178532 m!206919))

(assert (=> b!178532 m!206919))

(declare-fun m!206921 () Bool)

(assert (=> b!178532 m!206921))

(assert (=> b!178534 m!206919))

(assert (=> b!178534 m!206919))

(assert (=> b!178534 m!206921))

(assert (=> bm!18045 d!53881))

(declare-fun d!53883 () Bool)

(declare-fun e!117682 () Bool)

(assert (=> d!53883 e!117682))

(declare-fun res!84585 () Bool)

(assert (=> d!53883 (=> res!84585 e!117682)))

(declare-fun lt!88277 () Bool)

(assert (=> d!53883 (= res!84585 (not lt!88277))))

(declare-fun lt!88278 () Bool)

(assert (=> d!53883 (= lt!88277 lt!88278)))

(declare-fun lt!88280 () Unit!5441)

(declare-fun e!117683 () Unit!5441)

(assert (=> d!53883 (= lt!88280 e!117683)))

(declare-fun c!31985 () Bool)

(assert (=> d!53883 (= c!31985 lt!88278)))

(assert (=> d!53883 (= lt!88278 (containsKey!202 (toList!1143 lt!88250) (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53883 (= (contains!1207 lt!88250 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)) lt!88277)))

(declare-fun b!178535 () Bool)

(declare-fun lt!88279 () Unit!5441)

(assert (=> b!178535 (= e!117683 lt!88279)))

(assert (=> b!178535 (= lt!88279 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 lt!88250) (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178535 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178536 () Bool)

(declare-fun Unit!5447 () Unit!5441)

(assert (=> b!178536 (= e!117683 Unit!5447)))

(declare-fun b!178537 () Bool)

(assert (=> b!178537 (= e!117682 (isDefined!152 (getValueByKey!198 (toList!1143 lt!88250) (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53883 c!31985) b!178535))

(assert (= (and d!53883 (not c!31985)) b!178536))

(assert (= (and d!53883 (not res!84585)) b!178537))

(assert (=> d!53883 m!206823))

(declare-fun m!206923 () Bool)

(assert (=> d!53883 m!206923))

(assert (=> b!178535 m!206823))

(declare-fun m!206925 () Bool)

(assert (=> b!178535 m!206925))

(assert (=> b!178535 m!206823))

(declare-fun m!206927 () Bool)

(assert (=> b!178535 m!206927))

(assert (=> b!178535 m!206927))

(declare-fun m!206929 () Bool)

(assert (=> b!178535 m!206929))

(assert (=> b!178537 m!206823))

(assert (=> b!178537 m!206927))

(assert (=> b!178537 m!206927))

(assert (=> b!178537 m!206929))

(assert (=> b!178463 d!53883))

(declare-fun b!178548 () Bool)

(declare-fun e!117693 () Bool)

(declare-fun e!117692 () Bool)

(assert (=> b!178548 (= e!117693 e!117692)))

(declare-fun c!31988 () Bool)

(assert (=> b!178548 (= c!31988 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53885 () Bool)

(declare-fun res!84594 () Bool)

(declare-fun e!117694 () Bool)

(assert (=> d!53885 (=> res!84594 e!117694)))

(assert (=> d!53885 (= res!84594 (bvsge #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> d!53885 (= (arrayNoDuplicates!0 (_keys!5546 thiss!1248) #b00000000000000000000000000000000 Nil!2282) e!117694)))

(declare-fun b!178549 () Bool)

(declare-fun call!18053 () Bool)

(assert (=> b!178549 (= e!117692 call!18053)))

(declare-fun b!178550 () Bool)

(assert (=> b!178550 (= e!117692 call!18053)))

(declare-fun bm!18050 () Bool)

(assert (=> bm!18050 (= call!18053 (arrayNoDuplicates!0 (_keys!5546 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31988 (Cons!2281 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000) Nil!2282) Nil!2282)))))

(declare-fun b!178551 () Bool)

(declare-fun e!117695 () Bool)

(declare-fun contains!1208 (List!2285 (_ BitVec 64)) Bool)

(assert (=> b!178551 (= e!117695 (contains!1208 Nil!2282 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178552 () Bool)

(assert (=> b!178552 (= e!117694 e!117693)))

(declare-fun res!84592 () Bool)

(assert (=> b!178552 (=> (not res!84592) (not e!117693))))

(assert (=> b!178552 (= res!84592 (not e!117695))))

(declare-fun res!84593 () Bool)

(assert (=> b!178552 (=> (not res!84593) (not e!117695))))

(assert (=> b!178552 (= res!84593 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53885 (not res!84594)) b!178552))

(assert (= (and b!178552 res!84593) b!178551))

(assert (= (and b!178552 res!84592) b!178548))

(assert (= (and b!178548 c!31988) b!178550))

(assert (= (and b!178548 (not c!31988)) b!178549))

(assert (= (or b!178550 b!178549) bm!18050))

(assert (=> b!178548 m!206823))

(assert (=> b!178548 m!206823))

(assert (=> b!178548 m!206825))

(assert (=> bm!18050 m!206823))

(declare-fun m!206931 () Bool)

(assert (=> bm!18050 m!206931))

(assert (=> b!178551 m!206823))

(assert (=> b!178551 m!206823))

(declare-fun m!206933 () Bool)

(assert (=> b!178551 m!206933))

(assert (=> b!178552 m!206823))

(assert (=> b!178552 m!206823))

(assert (=> b!178552 m!206825))

(assert (=> b!178404 d!53885))

(declare-fun d!53887 () Bool)

(declare-fun get!2037 (Option!204) V!5219)

(assert (=> d!53887 (= (apply!144 lt!88250 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2037 (getValueByKey!198 (toList!1143 lt!88250) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7325 () Bool)

(assert (= bs!7325 d!53887))

(assert (=> bs!7325 m!206919))

(assert (=> bs!7325 m!206919))

(declare-fun m!206935 () Bool)

(assert (=> bs!7325 m!206935))

(assert (=> b!178456 d!53887))

(declare-fun b!178577 () Bool)

(declare-fun e!117711 () ListLongMap!2255)

(declare-fun call!18056 () ListLongMap!2255)

(assert (=> b!178577 (= e!117711 call!18056)))

(declare-fun d!53889 () Bool)

(declare-fun e!117712 () Bool)

(assert (=> d!53889 e!117712))

(declare-fun res!84603 () Bool)

(assert (=> d!53889 (=> (not res!84603) (not e!117712))))

(declare-fun lt!88299 () ListLongMap!2255)

(assert (=> d!53889 (= res!84603 (not (contains!1207 lt!88299 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!117714 () ListLongMap!2255)

(assert (=> d!53889 (= lt!88299 e!117714)))

(declare-fun c!32000 () Bool)

(assert (=> d!53889 (= c!32000 (bvsge #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> d!53889 (validMask!0 (mask!8629 thiss!1248))))

(assert (=> d!53889 (= (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)) lt!88299)))

(declare-fun b!178578 () Bool)

(declare-fun e!117713 () Bool)

(declare-fun e!117710 () Bool)

(assert (=> b!178578 (= e!117713 e!117710)))

(assert (=> b!178578 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun res!84606 () Bool)

(assert (=> b!178578 (= res!84606 (contains!1207 lt!88299 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178578 (=> (not res!84606) (not e!117710))))

(declare-fun b!178579 () Bool)

(declare-fun e!117716 () Bool)

(assert (=> b!178579 (= e!117713 e!117716)))

(declare-fun c!31998 () Bool)

(assert (=> b!178579 (= c!31998 (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun b!178580 () Bool)

(assert (=> b!178580 (= e!117714 e!117711)))

(declare-fun c!31999 () Bool)

(assert (=> b!178580 (= c!31999 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178581 () Bool)

(assert (=> b!178581 (= e!117712 e!117713)))

(declare-fun c!31997 () Bool)

(declare-fun e!117715 () Bool)

(assert (=> b!178581 (= c!31997 e!117715)))

(declare-fun res!84605 () Bool)

(assert (=> b!178581 (=> (not res!84605) (not e!117715))))

(assert (=> b!178581 (= res!84605 (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun b!178582 () Bool)

(assert (=> b!178582 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> b!178582 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3869 (_values!3652 thiss!1248))))))

(assert (=> b!178582 (= e!117710 (= (apply!144 lt!88299 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)) (get!2036 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!178583 () Bool)

(declare-fun isEmpty!456 (ListLongMap!2255) Bool)

(assert (=> b!178583 (= e!117716 (isEmpty!456 lt!88299))))

(declare-fun b!178584 () Bool)

(assert (=> b!178584 (= e!117714 (ListLongMap!2256 Nil!2281))))

(declare-fun b!178585 () Bool)

(assert (=> b!178585 (= e!117716 (= lt!88299 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3669 thiss!1248))))))

(declare-fun b!178586 () Bool)

(assert (=> b!178586 (= e!117715 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178586 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!178587 () Bool)

(declare-fun lt!88300 () Unit!5441)

(declare-fun lt!88295 () Unit!5441)

(assert (=> b!178587 (= lt!88300 lt!88295)))

(declare-fun lt!88297 () (_ BitVec 64))

(declare-fun lt!88296 () (_ BitVec 64))

(declare-fun lt!88301 () ListLongMap!2255)

(declare-fun lt!88298 () V!5219)

(assert (=> b!178587 (not (contains!1207 (+!256 lt!88301 (tuple2!3315 lt!88297 lt!88298)) lt!88296))))

(declare-fun addStillNotContains!81 (ListLongMap!2255 (_ BitVec 64) V!5219 (_ BitVec 64)) Unit!5441)

(assert (=> b!178587 (= lt!88295 (addStillNotContains!81 lt!88301 lt!88297 lt!88298 lt!88296))))

(assert (=> b!178587 (= lt!88296 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!178587 (= lt!88298 (get!2036 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!178587 (= lt!88297 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178587 (= lt!88301 call!18056)))

(assert (=> b!178587 (= e!117711 (+!256 call!18056 (tuple2!3315 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000) (get!2036 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!18053 () Bool)

(assert (=> bm!18053 (= call!18056 (getCurrentListMapNoExtraKeys!174 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3669 thiss!1248)))))

(declare-fun b!178588 () Bool)

(declare-fun res!84604 () Bool)

(assert (=> b!178588 (=> (not res!84604) (not e!117712))))

(assert (=> b!178588 (= res!84604 (not (contains!1207 lt!88299 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53889 c!32000) b!178584))

(assert (= (and d!53889 (not c!32000)) b!178580))

(assert (= (and b!178580 c!31999) b!178587))

(assert (= (and b!178580 (not c!31999)) b!178577))

(assert (= (or b!178587 b!178577) bm!18053))

(assert (= (and d!53889 res!84603) b!178588))

(assert (= (and b!178588 res!84604) b!178581))

(assert (= (and b!178581 res!84605) b!178586))

(assert (= (and b!178581 c!31997) b!178578))

(assert (= (and b!178581 (not c!31997)) b!178579))

(assert (= (and b!178578 res!84606) b!178582))

(assert (= (and b!178579 c!31998) b!178585))

(assert (= (and b!178579 (not c!31998)) b!178583))

(declare-fun b_lambda!7117 () Bool)

(assert (=> (not b_lambda!7117) (not b!178582)))

(assert (=> b!178582 t!7132))

(declare-fun b_and!10947 () Bool)

(assert (= b_and!10945 (and (=> t!7132 result!4679) b_and!10947)))

(declare-fun b_lambda!7119 () Bool)

(assert (=> (not b_lambda!7119) (not b!178587)))

(assert (=> b!178587 t!7132))

(declare-fun b_and!10949 () Bool)

(assert (= b_and!10947 (and (=> t!7132 result!4679) b_and!10949)))

(assert (=> b!178580 m!206823))

(assert (=> b!178580 m!206823))

(assert (=> b!178580 m!206825))

(assert (=> b!178578 m!206823))

(assert (=> b!178578 m!206823))

(declare-fun m!206937 () Bool)

(assert (=> b!178578 m!206937))

(declare-fun m!206939 () Bool)

(assert (=> b!178583 m!206939))

(assert (=> b!178587 m!206869))

(assert (=> b!178587 m!206871))

(assert (=> b!178587 m!206873))

(declare-fun m!206941 () Bool)

(assert (=> b!178587 m!206941))

(assert (=> b!178587 m!206823))

(assert (=> b!178587 m!206869))

(declare-fun m!206943 () Bool)

(assert (=> b!178587 m!206943))

(declare-fun m!206945 () Bool)

(assert (=> b!178587 m!206945))

(assert (=> b!178587 m!206941))

(declare-fun m!206947 () Bool)

(assert (=> b!178587 m!206947))

(assert (=> b!178587 m!206871))

(assert (=> b!178586 m!206823))

(assert (=> b!178586 m!206823))

(assert (=> b!178586 m!206825))

(declare-fun m!206949 () Bool)

(assert (=> bm!18053 m!206949))

(declare-fun m!206951 () Bool)

(assert (=> d!53889 m!206951))

(assert (=> d!53889 m!206779))

(assert (=> b!178582 m!206869))

(assert (=> b!178582 m!206871))

(assert (=> b!178582 m!206873))

(assert (=> b!178582 m!206823))

(assert (=> b!178582 m!206823))

(declare-fun m!206953 () Bool)

(assert (=> b!178582 m!206953))

(assert (=> b!178582 m!206869))

(assert (=> b!178582 m!206871))

(assert (=> b!178585 m!206949))

(declare-fun m!206955 () Bool)

(assert (=> b!178588 m!206955))

(assert (=> bm!18044 d!53889))

(declare-fun b!178597 () Bool)

(declare-fun e!117725 () Bool)

(declare-fun e!117723 () Bool)

(assert (=> b!178597 (= e!117725 e!117723)))

(declare-fun lt!88308 () (_ BitVec 64))

(assert (=> b!178597 (= lt!88308 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88309 () Unit!5441)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7516 (_ BitVec 64) (_ BitVec 32)) Unit!5441)

(assert (=> b!178597 (= lt!88309 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5546 thiss!1248) lt!88308 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!178597 (arrayContainsKey!0 (_keys!5546 thiss!1248) lt!88308 #b00000000000000000000000000000000)))

(declare-fun lt!88310 () Unit!5441)

(assert (=> b!178597 (= lt!88310 lt!88309)))

(declare-fun res!84612 () Bool)

(assert (=> b!178597 (= res!84612 (= (seekEntryOrOpen!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000) (_keys!5546 thiss!1248) (mask!8629 thiss!1248)) (Found!585 #b00000000000000000000000000000000)))))

(assert (=> b!178597 (=> (not res!84612) (not e!117723))))

(declare-fun d!53891 () Bool)

(declare-fun res!84611 () Bool)

(declare-fun e!117724 () Bool)

(assert (=> d!53891 (=> res!84611 e!117724)))

(assert (=> d!53891 (= res!84611 (bvsge #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> d!53891 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)) e!117724)))

(declare-fun b!178598 () Bool)

(assert (=> b!178598 (= e!117724 e!117725)))

(declare-fun c!32003 () Bool)

(assert (=> b!178598 (= c!32003 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178599 () Bool)

(declare-fun call!18059 () Bool)

(assert (=> b!178599 (= e!117723 call!18059)))

(declare-fun bm!18056 () Bool)

(assert (=> bm!18056 (= call!18059 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(declare-fun b!178600 () Bool)

(assert (=> b!178600 (= e!117725 call!18059)))

(assert (= (and d!53891 (not res!84611)) b!178598))

(assert (= (and b!178598 c!32003) b!178597))

(assert (= (and b!178598 (not c!32003)) b!178600))

(assert (= (and b!178597 res!84612) b!178599))

(assert (= (or b!178599 b!178600) bm!18056))

(assert (=> b!178597 m!206823))

(declare-fun m!206957 () Bool)

(assert (=> b!178597 m!206957))

(declare-fun m!206959 () Bool)

(assert (=> b!178597 m!206959))

(assert (=> b!178597 m!206823))

(declare-fun m!206961 () Bool)

(assert (=> b!178597 m!206961))

(assert (=> b!178598 m!206823))

(assert (=> b!178598 m!206823))

(assert (=> b!178598 m!206825))

(declare-fun m!206963 () Bool)

(assert (=> bm!18056 m!206963))

(assert (=> b!178403 d!53891))

(declare-fun d!53893 () Bool)

(assert (=> d!53893 (= (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!178467 d!53893))

(declare-fun b!178611 () Bool)

(declare-fun res!84623 () Bool)

(declare-fun e!117728 () Bool)

(assert (=> b!178611 (=> (not res!84623) (not e!117728))))

(declare-fun size!3872 (LongMapFixedSize!2400) (_ BitVec 32))

(assert (=> b!178611 (= res!84623 (= (size!3872 thiss!1248) (bvadd (_size!1249 thiss!1248) (bvsdiv (bvadd (extraKeys!3406 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!178609 () Bool)

(declare-fun res!84621 () Bool)

(assert (=> b!178609 (=> (not res!84621) (not e!117728))))

(assert (=> b!178609 (= res!84621 (and (= (size!3869 (_values!3652 thiss!1248)) (bvadd (mask!8629 thiss!1248) #b00000000000000000000000000000001)) (= (size!3868 (_keys!5546 thiss!1248)) (size!3869 (_values!3652 thiss!1248))) (bvsge (_size!1249 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1249 thiss!1248) (bvadd (mask!8629 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!178612 () Bool)

(assert (=> b!178612 (= e!117728 (and (bvsge (extraKeys!3406 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3406 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1249 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!53895 () Bool)

(declare-fun res!84624 () Bool)

(assert (=> d!53895 (=> (not res!84624) (not e!117728))))

(assert (=> d!53895 (= res!84624 (validMask!0 (mask!8629 thiss!1248)))))

(assert (=> d!53895 (= (simpleValid!157 thiss!1248) e!117728)))

(declare-fun b!178610 () Bool)

(declare-fun res!84622 () Bool)

(assert (=> b!178610 (=> (not res!84622) (not e!117728))))

(assert (=> b!178610 (= res!84622 (bvsge (size!3872 thiss!1248) (_size!1249 thiss!1248)))))

(assert (= (and d!53895 res!84624) b!178609))

(assert (= (and b!178609 res!84621) b!178610))

(assert (= (and b!178610 res!84622) b!178611))

(assert (= (and b!178611 res!84623) b!178612))

(declare-fun m!206965 () Bool)

(assert (=> b!178611 m!206965))

(assert (=> d!53895 m!206779))

(assert (=> b!178610 m!206965))

(assert (=> d!53861 d!53895))

(assert (=> d!53871 d!53863))

(declare-fun b!178631 () Bool)

(declare-fun e!117743 () Bool)

(declare-fun e!117739 () Bool)

(assert (=> b!178631 (= e!117743 e!117739)))

(declare-fun res!84633 () Bool)

(declare-fun lt!88315 () SeekEntryResult!585)

(assert (=> b!178631 (= res!84633 (and ((_ is Intermediate!585) lt!88315) (not (undefined!1397 lt!88315)) (bvslt (x!19553 lt!88315) #b01111111111111111111111111111110) (bvsge (x!19553 lt!88315) #b00000000000000000000000000000000) (bvsge (x!19553 lt!88315) #b00000000000000000000000000000000)))))

(assert (=> b!178631 (=> (not res!84633) (not e!117739))))

(declare-fun b!178632 () Bool)

(assert (=> b!178632 (and (bvsge (index!4510 lt!88315) #b00000000000000000000000000000000) (bvslt (index!4510 lt!88315) (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun res!84631 () Bool)

(assert (=> b!178632 (= res!84631 (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4510 lt!88315)) key!828))))

(declare-fun e!117740 () Bool)

(assert (=> b!178632 (=> res!84631 e!117740)))

(assert (=> b!178632 (= e!117739 e!117740)))

(declare-fun b!178634 () Bool)

(declare-fun e!117742 () SeekEntryResult!585)

(assert (=> b!178634 (= e!117742 (Intermediate!585 true (toIndex!0 key!828 (mask!8629 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!178635 () Bool)

(assert (=> b!178635 (and (bvsge (index!4510 lt!88315) #b00000000000000000000000000000000) (bvslt (index!4510 lt!88315) (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun res!84632 () Bool)

(assert (=> b!178635 (= res!84632 (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4510 lt!88315)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178635 (=> res!84632 e!117740)))

(declare-fun b!178636 () Bool)

(declare-fun e!117741 () SeekEntryResult!585)

(assert (=> b!178636 (= e!117741 (Intermediate!585 false (toIndex!0 key!828 (mask!8629 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!178637 () Bool)

(assert (=> b!178637 (= e!117742 e!117741)))

(declare-fun c!32012 () Bool)

(declare-fun lt!88316 () (_ BitVec 64))

(assert (=> b!178637 (= c!32012 (or (= lt!88316 key!828) (= (bvadd lt!88316 lt!88316) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!178638 () Bool)

(assert (=> b!178638 (= e!117741 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8629 thiss!1248)) #b00000000000000000000000000000000 (mask!8629 thiss!1248)) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)))))

(declare-fun b!178639 () Bool)

(assert (=> b!178639 (and (bvsge (index!4510 lt!88315) #b00000000000000000000000000000000) (bvslt (index!4510 lt!88315) (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> b!178639 (= e!117740 (= (select (arr!3562 (_keys!5546 thiss!1248)) (index!4510 lt!88315)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53897 () Bool)

(assert (=> d!53897 e!117743))

(declare-fun c!32011 () Bool)

(assert (=> d!53897 (= c!32011 (and ((_ is Intermediate!585) lt!88315) (undefined!1397 lt!88315)))))

(assert (=> d!53897 (= lt!88315 e!117742)))

(declare-fun c!32010 () Bool)

(assert (=> d!53897 (= c!32010 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!53897 (= lt!88316 (select (arr!3562 (_keys!5546 thiss!1248)) (toIndex!0 key!828 (mask!8629 thiss!1248))))))

(assert (=> d!53897 (validMask!0 (mask!8629 thiss!1248))))

(assert (=> d!53897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8629 thiss!1248)) key!828 (_keys!5546 thiss!1248) (mask!8629 thiss!1248)) lt!88315)))

(declare-fun b!178633 () Bool)

(assert (=> b!178633 (= e!117743 (bvsge (x!19553 lt!88315) #b01111111111111111111111111111110))))

(assert (= (and d!53897 c!32010) b!178634))

(assert (= (and d!53897 (not c!32010)) b!178637))

(assert (= (and b!178637 c!32012) b!178636))

(assert (= (and b!178637 (not c!32012)) b!178638))

(assert (= (and d!53897 c!32011) b!178633))

(assert (= (and d!53897 (not c!32011)) b!178631))

(assert (= (and b!178631 res!84633) b!178632))

(assert (= (and b!178632 (not res!84631)) b!178635))

(assert (= (and b!178635 (not res!84632)) b!178639))

(assert (=> b!178638 m!206883))

(declare-fun m!206967 () Bool)

(assert (=> b!178638 m!206967))

(assert (=> b!178638 m!206967))

(declare-fun m!206969 () Bool)

(assert (=> b!178638 m!206969))

(declare-fun m!206971 () Bool)

(assert (=> b!178639 m!206971))

(assert (=> b!178635 m!206971))

(assert (=> d!53897 m!206883))

(declare-fun m!206973 () Bool)

(assert (=> d!53897 m!206973))

(assert (=> d!53897 m!206779))

(assert (=> b!178632 m!206971))

(assert (=> d!53873 d!53897))

(declare-fun d!53899 () Bool)

(declare-fun lt!88322 () (_ BitVec 32))

(declare-fun lt!88321 () (_ BitVec 32))

(assert (=> d!53899 (= lt!88322 (bvmul (bvxor lt!88321 (bvlshr lt!88321 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53899 (= lt!88321 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53899 (and (bvsge (mask!8629 thiss!1248) #b00000000000000000000000000000000) (let ((res!84634 (let ((h!2905 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19572 (bvmul (bvxor h!2905 (bvlshr h!2905 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19572 (bvlshr x!19572 #b00000000000000000000000000001101)) (mask!8629 thiss!1248)))))) (and (bvslt res!84634 (bvadd (mask!8629 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!84634 #b00000000000000000000000000000000))))))

(assert (=> d!53899 (= (toIndex!0 key!828 (mask!8629 thiss!1248)) (bvand (bvxor lt!88322 (bvlshr lt!88322 #b00000000000000000000000000001101)) (mask!8629 thiss!1248)))))

(assert (=> d!53873 d!53899))

(assert (=> d!53873 d!53863))

(declare-fun d!53901 () Bool)

(assert (=> d!53901 (= (apply!144 lt!88250 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)) (get!2037 (getValueByKey!198 (toList!1143 lt!88250) (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7326 () Bool)

(assert (= bs!7326 d!53901))

(assert (=> bs!7326 m!206823))

(assert (=> bs!7326 m!206927))

(assert (=> bs!7326 m!206927))

(declare-fun m!206975 () Bool)

(assert (=> bs!7326 m!206975))

(assert (=> b!178462 d!53901))

(declare-fun d!53903 () Bool)

(declare-fun c!32015 () Bool)

(assert (=> d!53903 (= c!32015 ((_ is ValueCellFull!1746) (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!117746 () V!5219)

(assert (=> d!53903 (= (get!2036 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!117746)))

(declare-fun b!178644 () Bool)

(declare-fun get!2038 (ValueCell!1746 V!5219) V!5219)

(assert (=> b!178644 (= e!117746 (get!2038 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!178645 () Bool)

(declare-fun get!2039 (ValueCell!1746 V!5219) V!5219)

(assert (=> b!178645 (= e!117746 (get!2039 (select (arr!3563 (_values!3652 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!482 (defaultEntry!3669 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53903 c!32015) b!178644))

(assert (= (and d!53903 (not c!32015)) b!178645))

(assert (=> b!178644 m!206869))

(assert (=> b!178644 m!206871))

(declare-fun m!206977 () Bool)

(assert (=> b!178644 m!206977))

(assert (=> b!178645 m!206869))

(assert (=> b!178645 m!206871))

(declare-fun m!206979 () Bool)

(assert (=> b!178645 m!206979))

(assert (=> b!178462 d!53903))

(declare-fun b!178654 () Bool)

(declare-fun e!117751 () (_ BitVec 32))

(declare-fun call!18062 () (_ BitVec 32))

(assert (=> b!178654 (= e!117751 call!18062)))

(declare-fun b!178655 () Bool)

(declare-fun e!117752 () (_ BitVec 32))

(assert (=> b!178655 (= e!117752 e!117751)))

(declare-fun c!32021 () Bool)

(assert (=> b!178655 (= c!32021 (validKeyInArray!0 (select (arr!3562 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18059 () Bool)

(assert (=> bm!18059 (= call!18062 (arrayCountValidKeys!0 (_keys!5546 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3868 (_keys!5546 thiss!1248))))))

(declare-fun b!178656 () Bool)

(assert (=> b!178656 (= e!117751 (bvadd #b00000000000000000000000000000001 call!18062))))

(declare-fun d!53905 () Bool)

(declare-fun lt!88325 () (_ BitVec 32))

(assert (=> d!53905 (and (bvsge lt!88325 #b00000000000000000000000000000000) (bvsle lt!88325 (bvsub (size!3868 (_keys!5546 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53905 (= lt!88325 e!117752)))

(declare-fun c!32020 () Bool)

(assert (=> d!53905 (= c!32020 (bvsge #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> d!53905 (and (bvsle #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3868 (_keys!5546 thiss!1248)) (size!3868 (_keys!5546 thiss!1248))))))

(assert (=> d!53905 (= (arrayCountValidKeys!0 (_keys!5546 thiss!1248) #b00000000000000000000000000000000 (size!3868 (_keys!5546 thiss!1248))) lt!88325)))

(declare-fun b!178657 () Bool)

(assert (=> b!178657 (= e!117752 #b00000000000000000000000000000000)))

(assert (= (and d!53905 c!32020) b!178657))

(assert (= (and d!53905 (not c!32020)) b!178655))

(assert (= (and b!178655 c!32021) b!178656))

(assert (= (and b!178655 (not c!32021)) b!178654))

(assert (= (or b!178656 b!178654) bm!18059))

(assert (=> b!178655 m!206823))

(assert (=> b!178655 m!206823))

(assert (=> b!178655 m!206825))

(declare-fun m!206981 () Bool)

(assert (=> bm!18059 m!206981))

(assert (=> b!178402 d!53905))

(declare-fun d!53907 () Bool)

(declare-fun isEmpty!457 (Option!204) Bool)

(assert (=> d!53907 (= (isDefined!152 (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828)) (not (isEmpty!457 (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))))

(declare-fun bs!7327 () Bool)

(assert (= bs!7327 d!53907))

(assert (=> bs!7327 m!206819))

(declare-fun m!206983 () Bool)

(assert (=> bs!7327 m!206983))

(assert (=> b!178413 d!53907))

(declare-fun b!178666 () Bool)

(declare-fun e!117757 () Option!204)

(assert (=> b!178666 (= e!117757 (Some!203 (_2!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))))))

(declare-fun b!178668 () Bool)

(declare-fun e!117758 () Option!204)

(assert (=> b!178668 (= e!117758 (getValueByKey!198 (t!7130 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) key!828))))

(declare-fun d!53909 () Bool)

(declare-fun c!32026 () Bool)

(assert (=> d!53909 (= c!32026 (and ((_ is Cons!2280) (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) (= (_1!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) key!828)))))

(assert (=> d!53909 (= (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828) e!117757)))

(declare-fun b!178667 () Bool)

(assert (=> b!178667 (= e!117757 e!117758)))

(declare-fun c!32027 () Bool)

(assert (=> b!178667 (= c!32027 (and ((_ is Cons!2280) (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))) (not (= (_1!1667 (h!2903 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))))) key!828))))))

(declare-fun b!178669 () Bool)

(assert (=> b!178669 (= e!117758 None!202)))

(assert (= (and d!53909 c!32026) b!178666))

(assert (= (and d!53909 (not c!32026)) b!178667))

(assert (= (and b!178667 c!32027) b!178668))

(assert (= (and b!178667 (not c!32027)) b!178669))

(declare-fun m!206985 () Bool)

(assert (=> b!178668 m!206985))

(assert (=> b!178413 d!53909))

(assert (=> b!178468 d!53893))

(declare-fun d!53911 () Bool)

(assert (=> d!53911 (isDefined!152 (getValueByKey!198 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(declare-fun lt!88328 () Unit!5441)

(declare-fun choose!960 (List!2284 (_ BitVec 64)) Unit!5441)

(assert (=> d!53911 (= lt!88328 (choose!960 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(declare-fun e!117761 () Bool)

(assert (=> d!53911 e!117761))

(declare-fun res!84637 () Bool)

(assert (=> d!53911 (=> (not res!84637) (not e!117761))))

(declare-fun isStrictlySorted!334 (List!2284) Bool)

(assert (=> d!53911 (= res!84637 (isStrictlySorted!334 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248)))))))

(assert (=> d!53911 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828) lt!88328)))

(declare-fun b!178672 () Bool)

(assert (=> b!178672 (= e!117761 (containsKey!202 (toList!1143 (getCurrentListMap!790 (_keys!5546 thiss!1248) (_values!3652 thiss!1248) (mask!8629 thiss!1248) (extraKeys!3406 thiss!1248) (zeroValue!3510 thiss!1248) (minValue!3510 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3669 thiss!1248))) key!828))))

(assert (= (and d!53911 res!84637) b!178672))

(assert (=> d!53911 m!206819))

(assert (=> d!53911 m!206819))

(assert (=> d!53911 m!206821))

(declare-fun m!206987 () Bool)

(assert (=> d!53911 m!206987))

(declare-fun m!206989 () Bool)

(assert (=> d!53911 m!206989))

(assert (=> b!178672 m!206815))

(assert (=> b!178411 d!53911))

(assert (=> b!178411 d!53907))

(assert (=> b!178411 d!53909))

(declare-fun d!53913 () Bool)

(declare-fun e!117764 () Bool)

(assert (=> d!53913 e!117764))

(declare-fun res!84642 () Bool)

(assert (=> d!53913 (=> (not res!84642) (not e!117764))))

(declare-fun lt!88338 () ListLongMap!2255)

(assert (=> d!53913 (= res!84642 (contains!1207 lt!88338 (_1!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))))

(declare-fun lt!88340 () List!2284)

(assert (=> d!53913 (= lt!88338 (ListLongMap!2256 lt!88340))))

(declare-fun lt!88339 () Unit!5441)

(declare-fun lt!88337 () Unit!5441)

(assert (=> d!53913 (= lt!88339 lt!88337)))

(assert (=> d!53913 (= (getValueByKey!198 lt!88340 (_1!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))) (Some!203 (_2!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!106 (List!2284 (_ BitVec 64) V!5219) Unit!5441)

(assert (=> d!53913 (= lt!88337 (lemmaContainsTupThenGetReturnValue!106 lt!88340 (_1!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))) (_2!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))))

(declare-fun insertStrictlySorted!108 (List!2284 (_ BitVec 64) V!5219) List!2284)

(assert (=> d!53913 (= lt!88340 (insertStrictlySorted!108 (toList!1143 (ite c!31962 call!18044 (ite c!31964 call!18049 call!18046))) (_1!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))) (_2!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))))

(assert (=> d!53913 (= (+!256 (ite c!31962 call!18044 (ite c!31964 call!18049 call!18046)) (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))) lt!88338)))

(declare-fun b!178677 () Bool)

(declare-fun res!84643 () Bool)

(assert (=> b!178677 (=> (not res!84643) (not e!117764))))

(assert (=> b!178677 (= res!84643 (= (getValueByKey!198 (toList!1143 lt!88338) (_1!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))) (Some!203 (_2!1667 (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))))

(declare-fun b!178678 () Bool)

(declare-fun contains!1209 (List!2284 tuple2!3314) Bool)

(assert (=> b!178678 (= e!117764 (contains!1209 (toList!1143 lt!88338) (ite (or c!31962 c!31964) (tuple2!3315 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3510 thiss!1248)) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(assert (= (and d!53913 res!84642) b!178677))

(assert (= (and b!178677 res!84643) b!178678))

(declare-fun m!206991 () Bool)

(assert (=> d!53913 m!206991))

(declare-fun m!206993 () Bool)

(assert (=> d!53913 m!206993))

(declare-fun m!206995 () Bool)

(assert (=> d!53913 m!206995))

(declare-fun m!206997 () Bool)

(assert (=> d!53913 m!206997))

(declare-fun m!206999 () Bool)

(assert (=> b!178677 m!206999))

(declare-fun m!207001 () Bool)

(assert (=> b!178678 m!207001))

(assert (=> bm!18047 d!53913))

(declare-fun d!53915 () Bool)

(assert (=> d!53915 (= (apply!144 lt!88250 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2037 (getValueByKey!198 (toList!1143 lt!88250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7328 () Bool)

(assert (= bs!7328 d!53915))

(assert (=> bs!7328 m!206901))

(assert (=> bs!7328 m!206901))

(declare-fun m!207003 () Bool)

(assert (=> bs!7328 m!207003))

(assert (=> b!178476 d!53915))

(declare-fun d!53917 () Bool)

(assert (=> d!53917 (= (apply!144 lt!88253 lt!88237) (get!2037 (getValueByKey!198 (toList!1143 lt!88253) lt!88237)))))

(declare-fun bs!7329 () Bool)

(assert (= bs!7329 d!53917))

(declare-fun m!207005 () Bool)

(assert (=> bs!7329 m!207005))

(assert (=> bs!7329 m!207005))

(declare-fun m!207007 () Bool)

(assert (=> bs!7329 m!207007))

(assert (=> b!178464 d!53917))

(assert (=> b!178464 d!53889))

(declare-fun d!53919 () Bool)

(declare-fun e!117765 () Bool)

(assert (=> d!53919 e!117765))

(declare-fun res!84644 () Bool)

(assert (=> d!53919 (=> (not res!84644) (not e!117765))))

(declare-fun lt!88342 () ListLongMap!2255)

(assert (=> d!53919 (= res!84644 (contains!1207 lt!88342 (_1!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))))))

(declare-fun lt!88344 () List!2284)

(assert (=> d!53919 (= lt!88342 (ListLongMap!2256 lt!88344))))

(declare-fun lt!88343 () Unit!5441)

(declare-fun lt!88341 () Unit!5441)

(assert (=> d!53919 (= lt!88343 lt!88341)))

(assert (=> d!53919 (= (getValueByKey!198 lt!88344 (_1!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53919 (= lt!88341 (lemmaContainsTupThenGetReturnValue!106 lt!88344 (_1!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53919 (= lt!88344 (insertStrictlySorted!108 (toList!1143 lt!88249) (_1!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53919 (= (+!256 lt!88249 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) lt!88342)))

(declare-fun b!178679 () Bool)

(declare-fun res!84645 () Bool)

(assert (=> b!178679 (=> (not res!84645) (not e!117765))))

(assert (=> b!178679 (= res!84645 (= (getValueByKey!198 (toList!1143 lt!88342) (_1!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))))))))

(declare-fun b!178680 () Bool)

(assert (=> b!178680 (= e!117765 (contains!1209 (toList!1143 lt!88342) (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))))))

(assert (= (and d!53919 res!84644) b!178679))

(assert (= (and b!178679 res!84645) b!178680))

(declare-fun m!207009 () Bool)

(assert (=> d!53919 m!207009))

(declare-fun m!207011 () Bool)

(assert (=> d!53919 m!207011))

(declare-fun m!207013 () Bool)

(assert (=> d!53919 m!207013))

(declare-fun m!207015 () Bool)

(assert (=> d!53919 m!207015))

(declare-fun m!207017 () Bool)

(assert (=> b!178679 m!207017))

(declare-fun m!207019 () Bool)

(assert (=> b!178680 m!207019))

(assert (=> b!178464 d!53919))

(declare-fun d!53921 () Bool)

(declare-fun e!117766 () Bool)

(assert (=> d!53921 e!117766))

(declare-fun res!84646 () Bool)

(assert (=> d!53921 (=> (not res!84646) (not e!117766))))

(declare-fun lt!88346 () ListLongMap!2255)

(assert (=> d!53921 (= res!84646 (contains!1207 lt!88346 (_1!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))))))

(declare-fun lt!88348 () List!2284)

(assert (=> d!53921 (= lt!88346 (ListLongMap!2256 lt!88348))))

(declare-fun lt!88347 () Unit!5441)

(declare-fun lt!88345 () Unit!5441)

(assert (=> d!53921 (= lt!88347 lt!88345)))

(assert (=> d!53921 (= (getValueByKey!198 lt!88348 (_1!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))))))

(assert (=> d!53921 (= lt!88345 (lemmaContainsTupThenGetReturnValue!106 lt!88348 (_1!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))))))

(assert (=> d!53921 (= lt!88348 (insertStrictlySorted!108 (toList!1143 lt!88253) (_1!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))))))

(assert (=> d!53921 (= (+!256 lt!88253 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) lt!88346)))

(declare-fun b!178681 () Bool)

(declare-fun res!84647 () Bool)

(assert (=> b!178681 (=> (not res!84647) (not e!117766))))

(assert (=> b!178681 (= res!84647 (= (getValueByKey!198 (toList!1143 lt!88346) (_1!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))))))))

(declare-fun b!178682 () Bool)

(assert (=> b!178682 (= e!117766 (contains!1209 (toList!1143 lt!88346) (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))))))

(assert (= (and d!53921 res!84646) b!178681))

(assert (= (and b!178681 res!84647) b!178682))

(declare-fun m!207021 () Bool)

(assert (=> d!53921 m!207021))

(declare-fun m!207023 () Bool)

(assert (=> d!53921 m!207023))

(declare-fun m!207025 () Bool)

(assert (=> d!53921 m!207025))

(declare-fun m!207027 () Bool)

(assert (=> d!53921 m!207027))

(declare-fun m!207029 () Bool)

(assert (=> b!178681 m!207029))

(declare-fun m!207031 () Bool)

(assert (=> b!178682 m!207031))

(assert (=> b!178464 d!53921))

(declare-fun d!53923 () Bool)

(assert (=> d!53923 (= (apply!144 (+!256 lt!88249 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) lt!88241) (get!2037 (getValueByKey!198 (toList!1143 (+!256 lt!88249 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248)))) lt!88241)))))

(declare-fun bs!7330 () Bool)

(assert (= bs!7330 d!53923))

(declare-fun m!207033 () Bool)

(assert (=> bs!7330 m!207033))

(assert (=> bs!7330 m!207033))

(declare-fun m!207035 () Bool)

(assert (=> bs!7330 m!207035))

(assert (=> b!178464 d!53923))

(declare-fun d!53925 () Bool)

(declare-fun e!117767 () Bool)

(assert (=> d!53925 e!117767))

(declare-fun res!84648 () Bool)

(assert (=> d!53925 (=> (not res!84648) (not e!117767))))

(declare-fun lt!88350 () ListLongMap!2255)

(assert (=> d!53925 (= res!84648 (contains!1207 lt!88350 (_1!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))))))

(declare-fun lt!88352 () List!2284)

(assert (=> d!53925 (= lt!88350 (ListLongMap!2256 lt!88352))))

(declare-fun lt!88351 () Unit!5441)

(declare-fun lt!88349 () Unit!5441)

(assert (=> d!53925 (= lt!88351 lt!88349)))

(assert (=> d!53925 (= (getValueByKey!198 lt!88352 (_1!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))))))

(assert (=> d!53925 (= lt!88349 (lemmaContainsTupThenGetReturnValue!106 lt!88352 (_1!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))))))

(assert (=> d!53925 (= lt!88352 (insertStrictlySorted!108 (toList!1143 lt!88247) (_1!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))))))

(assert (=> d!53925 (= (+!256 lt!88247 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) lt!88350)))

(declare-fun b!178683 () Bool)

(declare-fun res!84649 () Bool)

(assert (=> b!178683 (=> (not res!84649) (not e!117767))))

(assert (=> b!178683 (= res!84649 (= (getValueByKey!198 (toList!1143 lt!88350) (_1!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))))))))

(declare-fun b!178684 () Bool)

(assert (=> b!178684 (= e!117767 (contains!1209 (toList!1143 lt!88350) (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))))))

(assert (= (and d!53925 res!84648) b!178683))

(assert (= (and b!178683 res!84649) b!178684))

(declare-fun m!207037 () Bool)

(assert (=> d!53925 m!207037))

(declare-fun m!207039 () Bool)

(assert (=> d!53925 m!207039))

(declare-fun m!207041 () Bool)

(assert (=> d!53925 m!207041))

(declare-fun m!207043 () Bool)

(assert (=> d!53925 m!207043))

(declare-fun m!207045 () Bool)

(assert (=> b!178683 m!207045))

(declare-fun m!207047 () Bool)

(assert (=> b!178684 m!207047))

(assert (=> b!178464 d!53925))

(declare-fun d!53927 () Bool)

(assert (=> d!53927 (= (apply!144 (+!256 lt!88249 (tuple2!3315 lt!88243 (zeroValue!3510 thiss!1248))) lt!88241) (apply!144 lt!88249 lt!88241))))

(declare-fun lt!88355 () Unit!5441)

(declare-fun choose!961 (ListLongMap!2255 (_ BitVec 64) V!5219 (_ BitVec 64)) Unit!5441)

(assert (=> d!53927 (= lt!88355 (choose!961 lt!88249 lt!88243 (zeroValue!3510 thiss!1248) lt!88241))))

(declare-fun e!117770 () Bool)

(assert (=> d!53927 e!117770))

(declare-fun res!84652 () Bool)

(assert (=> d!53927 (=> (not res!84652) (not e!117770))))

(assert (=> d!53927 (= res!84652 (contains!1207 lt!88249 lt!88241))))

(assert (=> d!53927 (= (addApplyDifferent!120 lt!88249 lt!88243 (zeroValue!3510 thiss!1248) lt!88241) lt!88355)))

(declare-fun b!178688 () Bool)

(assert (=> b!178688 (= e!117770 (not (= lt!88241 lt!88243)))))

(assert (= (and d!53927 res!84652) b!178688))

(assert (=> d!53927 m!206841))

(declare-fun m!207049 () Bool)

(assert (=> d!53927 m!207049))

(assert (=> d!53927 m!206841))

(assert (=> d!53927 m!206855))

(assert (=> d!53927 m!206843))

(declare-fun m!207051 () Bool)

(assert (=> d!53927 m!207051))

(assert (=> b!178464 d!53927))

(declare-fun d!53929 () Bool)

(assert (=> d!53929 (= (apply!144 (+!256 lt!88247 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) lt!88239) (get!2037 (getValueByKey!198 (toList!1143 (+!256 lt!88247 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248)))) lt!88239)))))

(declare-fun bs!7331 () Bool)

(assert (= bs!7331 d!53929))

(declare-fun m!207053 () Bool)

(assert (=> bs!7331 m!207053))

(assert (=> bs!7331 m!207053))

(declare-fun m!207055 () Bool)

(assert (=> bs!7331 m!207055))

(assert (=> b!178464 d!53929))

(declare-fun d!53931 () Bool)

(declare-fun e!117771 () Bool)

(assert (=> d!53931 e!117771))

(declare-fun res!84653 () Bool)

(assert (=> d!53931 (=> res!84653 e!117771)))

(declare-fun lt!88356 () Bool)

(assert (=> d!53931 (= res!84653 (not lt!88356))))

(declare-fun lt!88357 () Bool)

(assert (=> d!53931 (= lt!88356 lt!88357)))

(declare-fun lt!88359 () Unit!5441)

(declare-fun e!117772 () Unit!5441)

(assert (=> d!53931 (= lt!88359 e!117772)))

(declare-fun c!32028 () Bool)

(assert (=> d!53931 (= c!32028 lt!88357)))

(assert (=> d!53931 (= lt!88357 (containsKey!202 (toList!1143 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) lt!88233))))

(assert (=> d!53931 (= (contains!1207 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) lt!88233) lt!88356)))

(declare-fun b!178689 () Bool)

(declare-fun lt!88358 () Unit!5441)

(assert (=> b!178689 (= e!117772 lt!88358)))

(assert (=> b!178689 (= lt!88358 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!1143 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) lt!88233))))

(assert (=> b!178689 (isDefined!152 (getValueByKey!198 (toList!1143 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) lt!88233))))

(declare-fun b!178690 () Bool)

(declare-fun Unit!5448 () Unit!5441)

(assert (=> b!178690 (= e!117772 Unit!5448)))

(declare-fun b!178691 () Bool)

(assert (=> b!178691 (= e!117771 (isDefined!152 (getValueByKey!198 (toList!1143 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) lt!88233)))))

(assert (= (and d!53931 c!32028) b!178689))

(assert (= (and d!53931 (not c!32028)) b!178690))

(assert (= (and d!53931 (not res!84653)) b!178691))

(declare-fun m!207057 () Bool)

(assert (=> d!53931 m!207057))

(declare-fun m!207059 () Bool)

(assert (=> b!178689 m!207059))

(declare-fun m!207061 () Bool)

(assert (=> b!178689 m!207061))

(assert (=> b!178689 m!207061))

(declare-fun m!207063 () Bool)

(assert (=> b!178689 m!207063))

(assert (=> b!178691 m!207061))

(assert (=> b!178691 m!207061))

(assert (=> b!178691 m!207063))

(assert (=> b!178464 d!53931))

(declare-fun d!53933 () Bool)

(assert (=> d!53933 (= (apply!144 lt!88249 lt!88241) (get!2037 (getValueByKey!198 (toList!1143 lt!88249) lt!88241)))))

(declare-fun bs!7332 () Bool)

(assert (= bs!7332 d!53933))

(declare-fun m!207065 () Bool)

(assert (=> bs!7332 m!207065))

(assert (=> bs!7332 m!207065))

(declare-fun m!207067 () Bool)

(assert (=> bs!7332 m!207067))

(assert (=> b!178464 d!53933))

(declare-fun d!53935 () Bool)

(assert (=> d!53935 (= (apply!144 lt!88247 lt!88239) (get!2037 (getValueByKey!198 (toList!1143 lt!88247) lt!88239)))))

(declare-fun bs!7333 () Bool)

(assert (= bs!7333 d!53935))

(declare-fun m!207069 () Bool)

(assert (=> bs!7333 m!207069))

(assert (=> bs!7333 m!207069))

(declare-fun m!207071 () Bool)

(assert (=> bs!7333 m!207071))

(assert (=> b!178464 d!53935))

(declare-fun d!53937 () Bool)

(assert (=> d!53937 (contains!1207 (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) lt!88233)))

(declare-fun lt!88362 () Unit!5441)

(declare-fun choose!962 (ListLongMap!2255 (_ BitVec 64) V!5219 (_ BitVec 64)) Unit!5441)

(assert (=> d!53937 (= lt!88362 (choose!962 lt!88232 lt!88252 (zeroValue!3510 thiss!1248) lt!88233))))

(assert (=> d!53937 (contains!1207 lt!88232 lt!88233)))

(assert (=> d!53937 (= (addStillContains!120 lt!88232 lt!88252 (zeroValue!3510 thiss!1248) lt!88233) lt!88362)))

(declare-fun bs!7334 () Bool)

(assert (= bs!7334 d!53937))

(assert (=> bs!7334 m!206845))

(assert (=> bs!7334 m!206845))

(assert (=> bs!7334 m!206863))

(declare-fun m!207073 () Bool)

(assert (=> bs!7334 m!207073))

(declare-fun m!207075 () Bool)

(assert (=> bs!7334 m!207075))

(assert (=> b!178464 d!53937))

(declare-fun d!53939 () Bool)

(assert (=> d!53939 (= (apply!144 (+!256 lt!88253 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) lt!88237) (apply!144 lt!88253 lt!88237))))

(declare-fun lt!88363 () Unit!5441)

(assert (=> d!53939 (= lt!88363 (choose!961 lt!88253 lt!88238 (minValue!3510 thiss!1248) lt!88237))))

(declare-fun e!117773 () Bool)

(assert (=> d!53939 e!117773))

(declare-fun res!84654 () Bool)

(assert (=> d!53939 (=> (not res!84654) (not e!117773))))

(assert (=> d!53939 (= res!84654 (contains!1207 lt!88253 lt!88237))))

(assert (=> d!53939 (= (addApplyDifferent!120 lt!88253 lt!88238 (minValue!3510 thiss!1248) lt!88237) lt!88363)))

(declare-fun b!178693 () Bool)

(assert (=> b!178693 (= e!117773 (not (= lt!88237 lt!88238)))))

(assert (= (and d!53939 res!84654) b!178693))

(assert (=> d!53939 m!206851))

(declare-fun m!207077 () Bool)

(assert (=> d!53939 m!207077))

(assert (=> d!53939 m!206851))

(assert (=> d!53939 m!206853))

(assert (=> d!53939 m!206859))

(declare-fun m!207079 () Bool)

(assert (=> d!53939 m!207079))

(assert (=> b!178464 d!53939))

(declare-fun d!53941 () Bool)

(assert (=> d!53941 (= (apply!144 (+!256 lt!88247 (tuple2!3315 lt!88246 (minValue!3510 thiss!1248))) lt!88239) (apply!144 lt!88247 lt!88239))))

(declare-fun lt!88364 () Unit!5441)

(assert (=> d!53941 (= lt!88364 (choose!961 lt!88247 lt!88246 (minValue!3510 thiss!1248) lt!88239))))

(declare-fun e!117774 () Bool)

(assert (=> d!53941 e!117774))

(declare-fun res!84655 () Bool)

(assert (=> d!53941 (=> (not res!84655) (not e!117774))))

(assert (=> d!53941 (= res!84655 (contains!1207 lt!88247 lt!88239))))

(assert (=> d!53941 (= (addApplyDifferent!120 lt!88247 lt!88246 (minValue!3510 thiss!1248) lt!88239) lt!88364)))

(declare-fun b!178694 () Bool)

(assert (=> b!178694 (= e!117774 (not (= lt!88239 lt!88246)))))

(assert (= (and d!53941 res!84655) b!178694))

(assert (=> d!53941 m!206837))

(declare-fun m!207081 () Bool)

(assert (=> d!53941 m!207081))

(assert (=> d!53941 m!206837))

(assert (=> d!53941 m!206839))

(assert (=> d!53941 m!206865))

(declare-fun m!207083 () Bool)

(assert (=> d!53941 m!207083))

(assert (=> b!178464 d!53941))

(declare-fun d!53943 () Bool)

(assert (=> d!53943 (= (apply!144 (+!256 lt!88253 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248))) lt!88237) (get!2037 (getValueByKey!198 (toList!1143 (+!256 lt!88253 (tuple2!3315 lt!88238 (minValue!3510 thiss!1248)))) lt!88237)))))

(declare-fun bs!7335 () Bool)

(assert (= bs!7335 d!53943))

(declare-fun m!207085 () Bool)

(assert (=> bs!7335 m!207085))

(assert (=> bs!7335 m!207085))

(declare-fun m!207087 () Bool)

(assert (=> bs!7335 m!207087))

(assert (=> b!178464 d!53943))

(declare-fun d!53945 () Bool)

(declare-fun e!117775 () Bool)

(assert (=> d!53945 e!117775))

(declare-fun res!84656 () Bool)

(assert (=> d!53945 (=> (not res!84656) (not e!117775))))

(declare-fun lt!88366 () ListLongMap!2255)

(assert (=> d!53945 (= res!84656 (contains!1207 lt!88366 (_1!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))))))

(declare-fun lt!88368 () List!2284)

(assert (=> d!53945 (= lt!88366 (ListLongMap!2256 lt!88368))))

(declare-fun lt!88367 () Unit!5441)

(declare-fun lt!88365 () Unit!5441)

(assert (=> d!53945 (= lt!88367 lt!88365)))

(assert (=> d!53945 (= (getValueByKey!198 lt!88368 (_1!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53945 (= lt!88365 (lemmaContainsTupThenGetReturnValue!106 lt!88368 (_1!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53945 (= lt!88368 (insertStrictlySorted!108 (toList!1143 lt!88232) (_1!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))))))

(assert (=> d!53945 (= (+!256 lt!88232 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))) lt!88366)))

(declare-fun b!178695 () Bool)

(declare-fun res!84657 () Bool)

(assert (=> b!178695 (=> (not res!84657) (not e!117775))))

(assert (=> b!178695 (= res!84657 (= (getValueByKey!198 (toList!1143 lt!88366) (_1!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))))))))

(declare-fun b!178696 () Bool)

(assert (=> b!178696 (= e!117775 (contains!1209 (toList!1143 lt!88366) (tuple2!3315 lt!88252 (zeroValue!3510 thiss!1248))))))

(assert (= (and d!53945 res!84656) b!178695))

(assert (= (and b!178695 res!84657) b!178696))

(declare-fun m!207089 () Bool)

(assert (=> d!53945 m!207089))

(declare-fun m!207091 () Bool)

(assert (=> d!53945 m!207091))

(declare-fun m!207093 () Bool)

(assert (=> d!53945 m!207093))

(declare-fun m!207095 () Bool)

(assert (=> d!53945 m!207095))

(declare-fun m!207097 () Bool)

(assert (=> b!178695 m!207097))

(declare-fun m!207099 () Bool)

(assert (=> b!178696 m!207099))

(assert (=> b!178464 d!53945))

(declare-fun d!53947 () Bool)

(declare-fun e!117776 () Bool)

(assert (=> d!53947 e!117776))

(declare-fun res!84658 () Bool)

(assert (=> d!53947 (=> (not res!84658) (not e!117776))))

(declare-fun lt!88370 () ListLongMap!2255)

(assert (=> d!53947 (= res!84658 (contains!1207 lt!88370 (_1!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(declare-fun lt!88372 () List!2284)

(assert (=> d!53947 (= lt!88370 (ListLongMap!2256 lt!88372))))

(declare-fun lt!88371 () Unit!5441)

(declare-fun lt!88369 () Unit!5441)

(assert (=> d!53947 (= lt!88371 lt!88369)))

(assert (=> d!53947 (= (getValueByKey!198 lt!88372 (_1!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(assert (=> d!53947 (= lt!88369 (lemmaContainsTupThenGetReturnValue!106 lt!88372 (_1!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(assert (=> d!53947 (= lt!88372 (insertStrictlySorted!108 (toList!1143 call!18048) (_1!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))) (_2!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))))))

(assert (=> d!53947 (= (+!256 call!18048 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))) lt!88370)))

(declare-fun b!178697 () Bool)

(declare-fun res!84659 () Bool)

(assert (=> b!178697 (=> (not res!84659) (not e!117776))))

(assert (=> b!178697 (= res!84659 (= (getValueByKey!198 (toList!1143 lt!88370) (_1!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248)))) (Some!203 (_2!1667 (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))))

(declare-fun b!178698 () Bool)

(assert (=> b!178698 (= e!117776 (contains!1209 (toList!1143 lt!88370) (tuple2!3315 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3510 thiss!1248))))))

(assert (= (and d!53947 res!84658) b!178697))

(assert (= (and b!178697 res!84659) b!178698))

(declare-fun m!207101 () Bool)

(assert (=> d!53947 m!207101))

(declare-fun m!207103 () Bool)

(assert (=> d!53947 m!207103))

(declare-fun m!207105 () Bool)

(assert (=> d!53947 m!207105))

(declare-fun m!207107 () Bool)

(assert (=> d!53947 m!207107))

(declare-fun m!207109 () Bool)

(assert (=> b!178697 m!207109))

(declare-fun m!207111 () Bool)

(assert (=> b!178698 m!207111))

(assert (=> b!178465 d!53947))

(declare-fun condMapEmpty!7152 () Bool)

(declare-fun mapDefault!7152 () ValueCell!1746)

(assert (=> mapNonEmpty!7151 (= condMapEmpty!7152 (= mapRest!7151 ((as const (Array (_ BitVec 32) ValueCell!1746)) mapDefault!7152)))))

(declare-fun e!117778 () Bool)

(declare-fun mapRes!7152 () Bool)

(assert (=> mapNonEmpty!7151 (= tp!15944 (and e!117778 mapRes!7152))))

(declare-fun b!178699 () Bool)

(declare-fun e!117777 () Bool)

(assert (=> b!178699 (= e!117777 tp_is_empty!4179)))

(declare-fun mapNonEmpty!7152 () Bool)

(declare-fun tp!15945 () Bool)

(assert (=> mapNonEmpty!7152 (= mapRes!7152 (and tp!15945 e!117777))))

(declare-fun mapValue!7152 () ValueCell!1746)

(declare-fun mapRest!7152 () (Array (_ BitVec 32) ValueCell!1746))

(declare-fun mapKey!7152 () (_ BitVec 32))

(assert (=> mapNonEmpty!7152 (= mapRest!7151 (store mapRest!7152 mapKey!7152 mapValue!7152))))

(declare-fun mapIsEmpty!7152 () Bool)

(assert (=> mapIsEmpty!7152 mapRes!7152))

(declare-fun b!178700 () Bool)

(assert (=> b!178700 (= e!117778 tp_is_empty!4179)))

(assert (= (and mapNonEmpty!7151 condMapEmpty!7152) mapIsEmpty!7152))

(assert (= (and mapNonEmpty!7151 (not condMapEmpty!7152)) mapNonEmpty!7152))

(assert (= (and mapNonEmpty!7152 ((_ is ValueCellFull!1746) mapValue!7152)) b!178699))

(assert (= (and mapNonEmpty!7151 ((_ is ValueCellFull!1746) mapDefault!7152)) b!178700))

(declare-fun m!207113 () Bool)

(assert (=> mapNonEmpty!7152 m!207113))

(declare-fun b_lambda!7121 () Bool)

(assert (= b_lambda!7119 (or (and b!178361 b_free!4407) b_lambda!7121)))

(declare-fun b_lambda!7123 () Bool)

(assert (= b_lambda!7117 (or (and b!178361 b_free!4407) b_lambda!7123)))

(check-sat (not b!178580) (not b_lambda!7123) (not d!53881) (not b!178598) (not b!178684) (not b!178552) (not d!53917) (not b!178583) (not b!178683) (not b!178588) (not b!178586) (not b!178678) (not b!178681) (not d!53919) (not b!178513) (not d!53879) (not d!53923) (not d!53945) (not d!53887) (not bm!18059) (not b!178689) (not d!53937) (not d!53927) (not b!178611) (not b!178505) (not d!53929) (not b!178585) (not d!53895) (not d!53875) (not b!178697) (not b!178535) (not b!178695) (not b!178696) (not b_lambda!7121) (not b!178537) (not bm!18053) (not d!53947) (not d!53889) (not b!178548) (not b!178597) (not b!178644) (not d!53915) (not bm!18056) (not b!178655) (not d!53901) (not b!178672) (not b!178582) (not d!53883) (not b!178677) (not b!178668) b_and!10949 (not d!53933) (not b!178587) (not b!178691) (not d!53925) (not b!178679) (not b!178638) (not d!53939) tp_is_empty!4179 (not d!53931) (not b!178527) (not b!178645) (not d!53943) (not b!178534) (not b!178680) (not b!178551) (not b!178507) (not bm!18050) (not d!53921) (not d!53907) (not b_next!4407) (not mapNonEmpty!7152) (not d!53911) (not b_lambda!7115) (not d!53941) (not d!53935) (not d!53897) (not d!53913) (not b!178698) (not b!178532) (not b!178578) (not b!178610) (not b!178682))
(check-sat b_and!10949 (not b_next!4407))
