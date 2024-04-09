; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3494 () Bool)

(assert start!3494)

(declare-fun b!23214 () Bool)

(declare-fun b_free!761 () Bool)

(declare-fun b_next!761 () Bool)

(assert (=> b!23214 (= b_free!761 (not b_next!761))))

(declare-fun tp!3529 () Bool)

(declare-fun b_and!1485 () Bool)

(assert (=> b!23214 (= tp!3529 b_and!1485)))

(declare-fun b!23212 () Bool)

(declare-datatypes ((V!1191 0))(
  ( (V!1192 (val!539 Int)) )
))
(declare-datatypes ((array!1279 0))(
  ( (array!1280 (arr!605 (Array (_ BitVec 32) (_ BitVec 64))) (size!701 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!313 0))(
  ( (ValueCellFull!313 (v!1605 V!1191)) (EmptyCell!313) )
))
(declare-datatypes ((array!1281 0))(
  ( (array!1282 (arr!606 (Array (_ BitVec 32) ValueCell!313)) (size!702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!212 0))(
  ( (LongMapFixedSize!213 (defaultEntry!1744 Int) (mask!4731 (_ BitVec 32)) (extraKeys!1642 (_ BitVec 32)) (zeroValue!1667 V!1191) (minValue!1667 V!1191) (_size!151 (_ BitVec 32)) (_keys!3165 array!1279) (_values!1730 array!1281) (_vacant!151 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!212 0))(
  ( (Cell!213 (v!1606 LongMapFixedSize!212)) )
))
(declare-datatypes ((tuple2!942 0))(
  ( (tuple2!943 (_1!478 Bool) (_2!478 Cell!212)) )
))
(declare-fun e!15097 () tuple2!942)

(declare-fun e!15099 () tuple2!942)

(assert (=> b!23212 (= e!15097 e!15099)))

(declare-fun c!2959 () Bool)

(declare-fun lt!8179 () Bool)

(declare-datatypes ((LongMap!212 0))(
  ( (LongMap!213 (underlying!117 Cell!212)) )
))
(declare-fun thiss!938 () LongMap!212)

(assert (=> b!23212 (= c!2959 (and (not lt!8179) (= (bvand (extraKeys!1642 (v!1606 (underlying!117 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!23213 () Bool)

(declare-fun res!14339 () Bool)

(declare-fun e!15098 () Bool)

(assert (=> b!23213 (=> (not res!14339) (not e!15098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!23213 (= res!14339 (validMask!0 (mask!4731 (v!1606 (underlying!117 thiss!938)))))))

(declare-fun bm!1858 () Bool)

(declare-datatypes ((tuple2!944 0))(
  ( (tuple2!945 (_1!479 Bool) (_2!479 LongMapFixedSize!212)) )
))
(declare-fun call!1861 () tuple2!944)

(declare-fun call!1862 () tuple2!944)

(assert (=> bm!1858 (= call!1861 call!1862)))

(declare-fun e!15105 () Bool)

(declare-fun tp_is_empty!1025 () Bool)

(declare-fun e!15101 () Bool)

(declare-fun array_inv!427 (array!1279) Bool)

(declare-fun array_inv!428 (array!1281) Bool)

(assert (=> b!23214 (= e!15101 (and tp!3529 tp_is_empty!1025 (array_inv!427 (_keys!3165 (v!1606 (underlying!117 thiss!938)))) (array_inv!428 (_values!1730 (v!1606 (underlying!117 thiss!938)))) e!15105))))

(declare-fun b!23215 () Bool)

(declare-fun e!15103 () Bool)

(assert (=> b!23215 (= e!15103 e!15101)))

(declare-fun b!23216 () Bool)

(assert (=> b!23216 (= e!15098 (not (= (size!701 (_keys!3165 (v!1606 (underlying!117 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4731 (v!1606 (underlying!117 thiss!938)))))))))

(declare-fun mapIsEmpty!1028 () Bool)

(declare-fun mapRes!1028 () Bool)

(assert (=> mapIsEmpty!1028 mapRes!1028))

(declare-fun b!23218 () Bool)

(declare-fun e!15100 () tuple2!942)

(declare-fun lt!8180 () tuple2!944)

(assert (=> b!23218 (= e!15100 (tuple2!943 (_1!479 lt!8180) (Cell!213 (_2!479 lt!8180))))))

(assert (=> b!23218 (= lt!8180 call!1861)))

(declare-fun b!23219 () Bool)

(declare-fun lt!8178 () tuple2!944)

(declare-fun lt!8182 () tuple2!944)

(assert (=> b!23219 (= e!15097 (tuple2!943 (and (_1!479 lt!8178) (_1!479 lt!8182)) (Cell!213 (_2!479 lt!8182))))))

(assert (=> b!23219 (= lt!8178 call!1862)))

(declare-fun update!35 (LongMapFixedSize!212 (_ BitVec 64) V!1191) tuple2!944)

(assert (=> b!23219 (= lt!8182 (update!35 (_2!479 lt!8178) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1667 (v!1606 (underlying!117 thiss!938)))))))

(declare-fun mapNonEmpty!1028 () Bool)

(declare-fun tp!3530 () Bool)

(declare-fun e!15107 () Bool)

(assert (=> mapNonEmpty!1028 (= mapRes!1028 (and tp!3530 e!15107))))

(declare-fun mapKey!1028 () (_ BitVec 32))

(declare-fun mapRest!1028 () (Array (_ BitVec 32) ValueCell!313))

(declare-fun mapValue!1028 () ValueCell!313)

(assert (=> mapNonEmpty!1028 (= (arr!606 (_values!1730 (v!1606 (underlying!117 thiss!938)))) (store mapRest!1028 mapKey!1028 mapValue!1028))))

(declare-fun b!23220 () Bool)

(declare-fun e!15106 () Bool)

(assert (=> b!23220 (= e!15105 (and e!15106 mapRes!1028))))

(declare-fun condMapEmpty!1028 () Bool)

(declare-fun mapDefault!1028 () ValueCell!313)

