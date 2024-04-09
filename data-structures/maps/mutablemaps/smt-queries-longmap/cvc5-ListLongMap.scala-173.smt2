; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3296 () Bool)

(assert start!3296)

(declare-fun b!20311 () Bool)

(declare-fun b_free!715 () Bool)

(declare-fun b_next!715 () Bool)

(assert (=> b!20311 (= b_free!715 (not b_next!715))))

(declare-fun tp!3372 () Bool)

(declare-fun b_and!1393 () Bool)

(assert (=> b!20311 (= tp!3372 b_and!1393)))

(declare-fun b!20301 () Bool)

(declare-fun e!13270 () Bool)

(declare-fun e!13264 () Bool)

(assert (=> b!20301 (= e!13270 e!13264)))

(declare-fun b!20302 () Bool)

(declare-datatypes ((V!1131 0))(
  ( (V!1132 (val!516 Int)) )
))
(declare-datatypes ((array!1175 0))(
  ( (array!1176 (arr!559 (Array (_ BitVec 32) (_ BitVec 64))) (size!652 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!290 0))(
  ( (ValueCellFull!290 (v!1549 V!1131)) (EmptyCell!290) )
))
(declare-datatypes ((array!1177 0))(
  ( (array!1178 (arr!560 (Array (_ BitVec 32) ValueCell!290)) (size!653 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!166 0))(
  ( (LongMapFixedSize!167 (defaultEntry!1706 Int) (mask!4670 (_ BitVec 32)) (extraKeys!1612 (_ BitVec 32)) (zeroValue!1636 V!1131) (minValue!1636 V!1131) (_size!121 (_ BitVec 32)) (_keys!3130 array!1175) (_values!1698 array!1177) (_vacant!121 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!166 0))(
  ( (Cell!167 (v!1550 LongMapFixedSize!166)) )
))
(declare-datatypes ((tuple2!834 0))(
  ( (tuple2!835 (_1!420 Bool) (_2!420 Cell!166)) )
))
(declare-fun e!13266 () tuple2!834)

(declare-fun e!13273 () tuple2!834)

(assert (=> b!20302 (= e!13266 e!13273)))

(declare-fun c!2202 () Bool)

(declare-fun lt!5928 () Bool)

(declare-datatypes ((LongMap!166 0))(
  ( (LongMap!167 (underlying!94 Cell!166)) )
))
(declare-fun thiss!938 () LongMap!166)

(assert (=> b!20302 (= c!2202 (and (not lt!5928) (= (bvand (extraKeys!1612 (v!1550 (underlying!94 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20303 () Bool)

(declare-datatypes ((tuple2!836 0))(
  ( (tuple2!837 (_1!421 Bool) (_2!421 LongMapFixedSize!166)) )
))
(declare-fun lt!5927 () tuple2!836)

(declare-fun lt!5926 () tuple2!836)

(assert (=> b!20303 (= e!13266 (tuple2!835 (and (_1!421 lt!5927) (_1!421 lt!5926)) (Cell!167 (_2!421 lt!5926))))))

(declare-fun lt!5930 () LongMapFixedSize!166)

(declare-fun update!17 (LongMapFixedSize!166 (_ BitVec 64) V!1131) tuple2!836)

(assert (=> b!20303 (= lt!5927 (update!17 lt!5930 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1636 (v!1550 (underlying!94 thiss!938)))))))

(declare-fun call!1000 () tuple2!836)

(assert (=> b!20303 (= lt!5926 call!1000)))

(declare-fun mapIsEmpty!940 () Bool)

(declare-fun mapRes!940 () Bool)

(assert (=> mapIsEmpty!940 mapRes!940))

(declare-fun b!20304 () Bool)

(declare-fun res!13420 () Bool)

(declare-fun e!13265 () Bool)

(assert (=> b!20304 (=> (not res!13420) (not e!13265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!20304 (= res!13420 (validMask!0 (mask!4670 (v!1550 (underlying!94 thiss!938)))))))

(declare-fun b!20305 () Bool)

(declare-fun e!13271 () tuple2!834)

(declare-fun lt!5925 () tuple2!836)

(assert (=> b!20305 (= e!13271 (tuple2!835 (_1!421 lt!5925) (Cell!167 (_2!421 lt!5925))))))

(declare-fun call!999 () tuple2!836)

(assert (=> b!20305 (= lt!5925 call!999)))

(declare-fun mapNonEmpty!940 () Bool)

(declare-fun tp!3373 () Bool)

(declare-fun e!13275 () Bool)

(assert (=> mapNonEmpty!940 (= mapRes!940 (and tp!3373 e!13275))))

(declare-fun mapKey!940 () (_ BitVec 32))

(declare-fun mapValue!940 () ValueCell!290)

(declare-fun mapRest!940 () (Array (_ BitVec 32) ValueCell!290))

(assert (=> mapNonEmpty!940 (= (arr!560 (_values!1698 (v!1550 (underlying!94 thiss!938)))) (store mapRest!940 mapKey!940 mapValue!940))))

(declare-fun c!2200 () Bool)

(declare-fun bm!996 () Bool)

(assert (=> bm!996 (= call!1000 (update!17 (ite c!2200 (_2!421 lt!5927) lt!5930) (ite c!2200 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2202 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2200 (minValue!1636 (v!1550 (underlying!94 thiss!938))) (ite c!2202 (zeroValue!1636 (v!1550 (underlying!94 thiss!938))) (minValue!1636 (v!1550 (underlying!94 thiss!938)))))))))

(declare-fun res!13421 () Bool)

(declare-fun e!13272 () Bool)

(assert (=> start!3296 (=> (not res!13421) (not e!13272))))

(declare-fun valid!85 (LongMap!166) Bool)

(assert (=> start!3296 (= res!13421 (valid!85 thiss!938))))

(assert (=> start!3296 e!13272))

(assert (=> start!3296 e!13270))

(declare-fun b!20306 () Bool)

(assert (=> b!20306 (= e!13272 e!13265)))

(declare-fun res!13422 () Bool)

(assert (=> b!20306 (=> (not res!13422) (not e!13265))))

(assert (=> b!20306 (= res!13422 (_1!420 e!13266))))

(assert (=> b!20306 (= c!2200 (and (not lt!5928) (not (= (bvand (extraKeys!1612 (v!1550 (underlying!94 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!20306 (= lt!5928 (= (bvand (extraKeys!1612 (v!1550 (underlying!94 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!19 ((_ BitVec 32) Int) LongMapFixedSize!166)

(declare-fun computeNewMask!16 (LongMap!166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20306 (= lt!5930 (getNewLongMapFixedSize!19 (computeNewMask!16 thiss!938 (mask!4670 (v!1550 (underlying!94 thiss!938))) (_vacant!121 (v!1550 (underlying!94 thiss!938))) (_size!121 (v!1550 (underlying!94 thiss!938)))) (defaultEntry!1706 (v!1550 (underlying!94 thiss!938)))))))

(declare-fun b!20307 () Bool)

(declare-fun e!13268 () Bool)

(declare-fun tp_is_empty!979 () Bool)

(assert (=> b!20307 (= e!13268 tp_is_empty!979)))

(declare-fun b!20308 () Bool)

(assert (=> b!20308 (= e!13265 (and (= (size!652 (_keys!3130 (v!1550 (underlying!94 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4670 (v!1550 (underlying!94 thiss!938))))) (bvsge (bvsub (size!652 (_keys!3130 (v!1550 (underlying!94 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub (size!652 (_keys!3130 (v!1550 (underlying!94 thiss!938)))) #b00000000000000000000000000000001) (size!652 (_keys!3130 (v!1550 (underlying!94 thiss!938)))))))))

(declare-fun b!20309 () Bool)

(declare-fun e!13274 () Bool)

(assert (=> b!20309 (= e!13264 e!13274)))

(declare-fun b!20310 () Bool)

(declare-fun c!2201 () Bool)

(assert (=> b!20310 (= c!2201 (and (not (= (bvand (extraKeys!1612 (v!1550 (underlying!94 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!5928))))

(assert (=> b!20310 (= e!13273 e!13271)))

(declare-fun e!13269 () Bool)

(declare-fun array_inv!395 (array!1175) Bool)

(declare-fun array_inv!396 (array!1177) Bool)

(assert (=> b!20311 (= e!13274 (and tp!3372 tp_is_empty!979 (array_inv!395 (_keys!3130 (v!1550 (underlying!94 thiss!938)))) (array_inv!396 (_values!1698 (v!1550 (underlying!94 thiss!938)))) e!13269))))

(declare-fun b!20312 () Bool)

(assert (=> b!20312 (= e!13269 (and e!13268 mapRes!940))))

(declare-fun condMapEmpty!940 () Bool)

(declare-fun mapDefault!940 () ValueCell!290)

