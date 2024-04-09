; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3342 () Bool)

(assert start!3342)

(declare-fun b!21106 () Bool)

(declare-fun b_free!731 () Bool)

(declare-fun b_next!731 () Bool)

(assert (=> b!21106 (= b_free!731 (not b_next!731))))

(declare-fun tp!3426 () Bool)

(declare-fun b_and!1417 () Bool)

(assert (=> b!21106 (= tp!3426 b_and!1417)))

(declare-fun b!21097 () Bool)

(declare-fun e!13774 () Bool)

(declare-fun tp_is_empty!995 () Bool)

(assert (=> b!21097 (= e!13774 tp_is_empty!995)))

(declare-datatypes ((V!1151 0))(
  ( (V!1152 (val!524 Int)) )
))
(declare-datatypes ((array!1211 0))(
  ( (array!1212 (arr!575 (Array (_ BitVec 32) (_ BitVec 64))) (size!668 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!298 0))(
  ( (ValueCellFull!298 (v!1567 V!1151)) (EmptyCell!298) )
))
(declare-datatypes ((array!1213 0))(
  ( (array!1214 (arr!576 (Array (_ BitVec 32) ValueCell!298)) (size!669 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!182 0))(
  ( (LongMapFixedSize!183 (defaultEntry!1716 Int) (mask!4686 (_ BitVec 32)) (extraKeys!1620 (_ BitVec 32)) (zeroValue!1644 V!1151) (minValue!1644 V!1151) (_size!131 (_ BitVec 32)) (_keys!3138 array!1211) (_values!1706 array!1213) (_vacant!131 (_ BitVec 32))) )
))
(declare-fun lt!6454 () LongMapFixedSize!182)

(declare-datatypes ((tuple2!872 0))(
  ( (tuple2!873 (_1!439 Bool) (_2!439 LongMapFixedSize!182)) )
))
(declare-fun call!1239 () tuple2!872)

(declare-fun lt!6452 () tuple2!872)

(declare-fun c!2399 () Bool)

(declare-fun bm!1236 () Bool)

(declare-fun c!2398 () Bool)

(declare-datatypes ((Cell!182 0))(
  ( (Cell!183 (v!1568 LongMapFixedSize!182)) )
))
(declare-datatypes ((LongMap!182 0))(
  ( (LongMap!183 (underlying!102 Cell!182)) )
))
(declare-fun thiss!938 () LongMap!182)

(declare-fun update!23 (LongMapFixedSize!182 (_ BitVec 64) V!1151) tuple2!872)

(assert (=> bm!1236 (= call!1239 (update!23 (ite c!2399 (_2!439 lt!6452) lt!6454) (ite c!2399 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2398 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2399 (minValue!1644 (v!1568 (underlying!102 thiss!938))) (ite c!2398 (zeroValue!1644 (v!1568 (underlying!102 thiss!938))) (minValue!1644 (v!1568 (underlying!102 thiss!938)))))))))

(declare-fun b!21098 () Bool)

(declare-fun lt!6456 () tuple2!872)

(declare-fun call!1240 () tuple2!872)

(assert (=> b!21098 (= lt!6456 call!1240)))

(declare-datatypes ((tuple2!874 0))(
  ( (tuple2!875 (_1!440 Bool) (_2!440 Cell!182)) )
))
(declare-fun e!13773 () tuple2!874)

(assert (=> b!21098 (= e!13773 (tuple2!875 (_1!439 lt!6456) (Cell!183 (_2!439 lt!6456))))))

(declare-fun b!21099 () Bool)

(declare-fun res!13660 () Bool)

(declare-fun e!13771 () Bool)

(assert (=> b!21099 (=> (not res!13660) (not e!13771))))

(declare-fun lt!6455 () tuple2!874)

(declare-fun valid!94 (LongMapFixedSize!182) Bool)

(assert (=> b!21099 (= res!13660 (valid!94 (v!1568 (_2!440 lt!6455))))))

(declare-fun b!21101 () Bool)

(declare-fun e!13772 () Bool)

(declare-fun e!13770 () Bool)

(assert (=> b!21101 (= e!13772 e!13770)))

(declare-fun bm!1237 () Bool)

(assert (=> bm!1237 (= call!1240 call!1239)))

(declare-fun b!21102 () Bool)

(declare-fun res!13659 () Bool)

(assert (=> b!21102 (=> (not res!13659) (not e!13771))))

(assert (=> b!21102 (= res!13659 (and (= (size!668 (_keys!3138 (v!1568 (underlying!102 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4686 (v!1568 (underlying!102 thiss!938))))) (bvsge (bvsub (size!668 (_keys!3138 (v!1568 (underlying!102 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!668 (_keys!3138 (v!1568 (underlying!102 thiss!938)))) #b00000000000000000000000000000001) (size!668 (_keys!3138 (v!1568 (underlying!102 thiss!938)))))))))

(declare-fun b!21103 () Bool)

(declare-fun c!2400 () Bool)

(declare-fun lt!6458 () Bool)

(assert (=> b!21103 (= c!2400 (and (not (= (bvand (extraKeys!1620 (v!1568 (underlying!102 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6458))))

(declare-fun e!13778 () tuple2!874)

(assert (=> b!21103 (= e!13773 e!13778)))

(declare-fun b!21104 () Bool)

(declare-fun res!13656 () Bool)

(assert (=> b!21104 (=> (not res!13656) (not e!13771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!21104 (= res!13656 (validMask!0 (mask!4686 (v!1568 (underlying!102 thiss!938)))))))

(declare-fun mapIsEmpty!970 () Bool)

(declare-fun mapRes!970 () Bool)

(assert (=> mapIsEmpty!970 mapRes!970))

(declare-fun b!21105 () Bool)

(declare-fun lt!6453 () tuple2!872)

(assert (=> b!21105 (= e!13778 (tuple2!875 (_1!439 lt!6453) (Cell!183 (_2!439 lt!6453))))))

(assert (=> b!21105 (= lt!6453 call!1240)))

(declare-fun e!13776 () Bool)

(declare-fun e!13775 () Bool)

(declare-fun array_inv!407 (array!1211) Bool)

(declare-fun array_inv!408 (array!1213) Bool)

(assert (=> b!21106 (= e!13776 (and tp!3426 tp_is_empty!995 (array_inv!407 (_keys!3138 (v!1568 (underlying!102 thiss!938)))) (array_inv!408 (_values!1706 (v!1568 (underlying!102 thiss!938)))) e!13775))))

(declare-fun mapNonEmpty!970 () Bool)

(declare-fun tp!3427 () Bool)

(declare-fun e!13769 () Bool)

(assert (=> mapNonEmpty!970 (= mapRes!970 (and tp!3427 e!13769))))

(declare-fun mapKey!970 () (_ BitVec 32))

(declare-fun mapValue!970 () ValueCell!298)

(declare-fun mapRest!970 () (Array (_ BitVec 32) ValueCell!298))

(assert (=> mapNonEmpty!970 (= (arr!576 (_values!1706 (v!1568 (underlying!102 thiss!938)))) (store mapRest!970 mapKey!970 mapValue!970))))

(declare-fun b!21107 () Bool)

(assert (=> b!21107 (= e!13769 tp_is_empty!995)))

(declare-fun b!21108 () Bool)

(assert (=> b!21108 (= e!13771 (bvslt (bvadd #b00000000000000000000000000000001 (mask!4686 (v!1568 (_2!440 lt!6455)))) (_size!131 (v!1568 (underlying!102 thiss!938)))))))

(declare-fun b!21100 () Bool)

(declare-fun e!13780 () Bool)

(assert (=> b!21100 (= e!13780 e!13771)))

(declare-fun res!13658 () Bool)

(assert (=> b!21100 (=> (not res!13658) (not e!13771))))

(assert (=> b!21100 (= res!13658 (_1!440 lt!6455))))

(declare-fun e!13777 () tuple2!874)

(assert (=> b!21100 (= lt!6455 e!13777)))

(assert (=> b!21100 (= c!2399 (and (not lt!6458) (not (= (bvand (extraKeys!1620 (v!1568 (underlying!102 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!21100 (= lt!6458 (= (bvand (extraKeys!1620 (v!1568 (underlying!102 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!23 ((_ BitVec 32) Int) LongMapFixedSize!182)

(declare-fun computeNewMask!20 (LongMap!182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21100 (= lt!6454 (getNewLongMapFixedSize!23 (computeNewMask!20 thiss!938 (mask!4686 (v!1568 (underlying!102 thiss!938))) (_vacant!131 (v!1568 (underlying!102 thiss!938))) (_size!131 (v!1568 (underlying!102 thiss!938)))) (defaultEntry!1716 (v!1568 (underlying!102 thiss!938)))))))

(declare-fun res!13657 () Bool)

(assert (=> start!3342 (=> (not res!13657) (not e!13780))))

(declare-fun valid!95 (LongMap!182) Bool)

(assert (=> start!3342 (= res!13657 (valid!95 thiss!938))))

(assert (=> start!3342 e!13780))

(assert (=> start!3342 e!13772))

(declare-fun b!21109 () Bool)

(assert (=> b!21109 (= e!13778 (tuple2!875 true (Cell!183 lt!6454)))))

(declare-fun b!21110 () Bool)

(assert (=> b!21110 (= e!13777 e!13773)))

(assert (=> b!21110 (= c!2398 (and (not lt!6458) (= (bvand (extraKeys!1620 (v!1568 (underlying!102 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21111 () Bool)

(assert (=> b!21111 (= e!13775 (and e!13774 mapRes!970))))

(declare-fun condMapEmpty!970 () Bool)

(declare-fun mapDefault!970 () ValueCell!298)

