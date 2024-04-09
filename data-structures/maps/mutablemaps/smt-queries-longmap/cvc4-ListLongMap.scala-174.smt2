; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3320 () Bool)

(assert start!3320)

(declare-fun b!20732 () Bool)

(declare-fun b_free!725 () Bool)

(declare-fun b_next!725 () Bool)

(assert (=> b!20732 (= b_free!725 (not b_next!725))))

(declare-fun tp!3405 () Bool)

(declare-fun b_and!1407 () Bool)

(assert (=> b!20732 (= tp!3405 b_and!1407)))

(declare-fun mapNonEmpty!958 () Bool)

(declare-fun mapRes!958 () Bool)

(declare-fun tp!3406 () Bool)

(declare-fun e!13558 () Bool)

(assert (=> mapNonEmpty!958 (= mapRes!958 (and tp!3406 e!13558))))

(declare-datatypes ((V!1143 0))(
  ( (V!1144 (val!521 Int)) )
))
(declare-datatypes ((ValueCell!295 0))(
  ( (ValueCellFull!295 (v!1560 V!1143)) (EmptyCell!295) )
))
(declare-fun mapValue!958 () ValueCell!295)

(declare-fun mapKey!958 () (_ BitVec 32))

(declare-datatypes ((array!1197 0))(
  ( (array!1198 (arr!569 (Array (_ BitVec 32) ValueCell!295)) (size!662 (_ BitVec 32))) )
))
(declare-datatypes ((array!1199 0))(
  ( (array!1200 (arr!570 (Array (_ BitVec 32) (_ BitVec 64))) (size!663 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!176 0))(
  ( (LongMapFixedSize!177 (defaultEntry!1712 Int) (mask!4679 (_ BitVec 32)) (extraKeys!1617 (_ BitVec 32)) (zeroValue!1641 V!1143) (minValue!1641 V!1143) (_size!127 (_ BitVec 32)) (_keys!3135 array!1199) (_values!1703 array!1197) (_vacant!127 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!176 0))(
  ( (Cell!177 (v!1561 LongMapFixedSize!176)) )
))
(declare-datatypes ((LongMap!176 0))(
  ( (LongMap!177 (underlying!99 Cell!176)) )
))
(declare-fun thiss!938 () LongMap!176)

(declare-fun mapRest!958 () (Array (_ BitVec 32) ValueCell!295))

(assert (=> mapNonEmpty!958 (= (arr!569 (_values!1703 (v!1561 (underlying!99 thiss!938)))) (store mapRest!958 mapKey!958 mapValue!958))))

(declare-fun b!20731 () Bool)

(declare-fun e!13555 () Bool)

(declare-fun e!13553 () Bool)

(assert (=> b!20731 (= e!13555 e!13553)))

(declare-datatypes ((tuple2!856 0))(
  ( (tuple2!857 (_1!431 Bool) (_2!431 LongMapFixedSize!176)) )
))
(declare-fun lt!6209 () tuple2!856)

(declare-fun call!1125 () tuple2!856)

(declare-fun bm!1122 () Bool)

(declare-fun c!2308 () Bool)

(declare-fun c!2306 () Bool)

(declare-fun lt!6210 () LongMapFixedSize!176)

(declare-fun update!21 (LongMapFixedSize!176 (_ BitVec 64) V!1143) tuple2!856)

(assert (=> bm!1122 (= call!1125 (update!21 (ite c!2306 (_2!431 lt!6209) lt!6210) (ite c!2306 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2308 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2306 (minValue!1641 (v!1561 (underlying!99 thiss!938))) (ite c!2308 (zeroValue!1641 (v!1561 (underlying!99 thiss!938))) (minValue!1641 (v!1561 (underlying!99 thiss!938)))))))))

(declare-fun e!13560 () Bool)

(declare-fun e!13550 () Bool)

(declare-fun tp_is_empty!989 () Bool)

(declare-fun array_inv!403 (array!1199) Bool)

(declare-fun array_inv!404 (array!1197) Bool)

(assert (=> b!20732 (= e!13550 (and tp!3405 tp_is_empty!989 (array_inv!403 (_keys!3135 (v!1561 (underlying!99 thiss!938)))) (array_inv!404 (_values!1703 (v!1561 (underlying!99 thiss!938)))) e!13560))))

(declare-fun b!20733 () Bool)

(assert (=> b!20733 (= e!13558 tp_is_empty!989)))

(declare-fun b!20734 () Bool)

(declare-datatypes ((tuple2!858 0))(
  ( (tuple2!859 (_1!432 Bool) (_2!432 Cell!176)) )
))
(declare-fun e!13554 () tuple2!858)

(declare-fun lt!6207 () tuple2!856)

(assert (=> b!20734 (= e!13554 (tuple2!859 (_1!431 lt!6207) (Cell!177 (_2!431 lt!6207))))))

(declare-fun call!1126 () tuple2!856)

(assert (=> b!20734 (= lt!6207 call!1126)))

(declare-fun bm!1123 () Bool)

(assert (=> bm!1123 (= call!1126 call!1125)))

(declare-fun b!20735 () Bool)

(declare-fun e!13559 () Bool)

(declare-fun lt!6206 () tuple2!858)

(declare-fun valid!90 (LongMapFixedSize!176) Bool)

(assert (=> b!20735 (= e!13559 (not (valid!90 (v!1561 (_2!432 lt!6206)))))))

(declare-fun b!20736 () Bool)

(declare-fun lt!6212 () tuple2!856)

(assert (=> b!20736 (= lt!6212 call!1126)))

(declare-fun e!13552 () tuple2!858)

(assert (=> b!20736 (= e!13552 (tuple2!859 (_1!431 lt!6212) (Cell!177 (_2!431 lt!6212))))))

(declare-fun b!20737 () Bool)

(declare-fun c!2307 () Bool)

(declare-fun lt!6208 () Bool)

(assert (=> b!20737 (= c!2307 (and (not (= (bvand (extraKeys!1617 (v!1561 (underlying!99 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6208))))

(assert (=> b!20737 (= e!13552 e!13554)))

(declare-fun b!20738 () Bool)

(assert (=> b!20738 (= e!13553 e!13550)))

(declare-fun res!13540 () Bool)

(declare-fun e!13557 () Bool)

(assert (=> start!3320 (=> (not res!13540) (not e!13557))))

(declare-fun valid!91 (LongMap!176) Bool)

(assert (=> start!3320 (= res!13540 (valid!91 thiss!938))))

(assert (=> start!3320 e!13557))

(assert (=> start!3320 e!13555))

(declare-fun b!20739 () Bool)

(declare-fun e!13551 () Bool)

(assert (=> b!20739 (= e!13551 tp_is_empty!989)))

(declare-fun b!20740 () Bool)

(declare-fun e!13556 () tuple2!858)

(declare-fun lt!6211 () tuple2!856)

(assert (=> b!20740 (= e!13556 (tuple2!859 (and (_1!431 lt!6209) (_1!431 lt!6211)) (Cell!177 (_2!431 lt!6211))))))

(assert (=> b!20740 (= lt!6209 (update!21 lt!6210 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1641 (v!1561 (underlying!99 thiss!938)))))))

(assert (=> b!20740 (= lt!6211 call!1125)))

(declare-fun b!20741 () Bool)

(assert (=> b!20741 (= e!13560 (and e!13551 mapRes!958))))

(declare-fun condMapEmpty!958 () Bool)

(declare-fun mapDefault!958 () ValueCell!295)

