; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3650 () Bool)

(assert start!3650)

(declare-fun b!25413 () Bool)

(declare-fun b_free!769 () Bool)

(declare-fun b_next!769 () Bool)

(assert (=> b!25413 (= b_free!769 (not b_next!769))))

(declare-fun tp!3562 () Bool)

(declare-fun b_and!1569 () Bool)

(assert (=> b!25413 (= tp!3562 b_and!1569)))

(declare-fun mapIsEmpty!1048 () Bool)

(declare-fun mapRes!1048 () Bool)

(assert (=> mapIsEmpty!1048 mapRes!1048))

(declare-fun b!25406 () Bool)

(declare-datatypes ((V!1203 0))(
  ( (V!1204 (val!543 Int)) )
))
(declare-datatypes ((ValueCell!317 0))(
  ( (ValueCellFull!317 (v!1624 V!1203)) (EmptyCell!317) )
))
(declare-datatypes ((array!1299 0))(
  ( (array!1300 (arr!613 (Array (_ BitVec 32) ValueCell!317)) (size!714 (_ BitVec 32))) )
))
(declare-datatypes ((array!1301 0))(
  ( (array!1302 (arr!614 (Array (_ BitVec 32) (_ BitVec 64))) (size!715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!220 0))(
  ( (LongMapFixedSize!221 (defaultEntry!1768 Int) (mask!4770 (_ BitVec 32)) (extraKeys!1660 (_ BitVec 32)) (zeroValue!1687 V!1203) (minValue!1687 V!1203) (_size!158 (_ BitVec 32)) (_keys!3193 array!1301) (_values!1752 array!1299) (_vacant!158 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!220 0))(
  ( (Cell!221 (v!1625 LongMapFixedSize!220)) )
))
(declare-datatypes ((LongMap!220 0))(
  ( (LongMap!221 (underlying!121 Cell!220)) )
))
(declare-datatypes ((tuple3!14 0))(
  ( (tuple3!15 (_1!488 Bool) (_2!488 Cell!220) (_3!7 LongMap!220)) )
))
(declare-fun e!16430 () tuple3!14)

(declare-datatypes ((tuple2!962 0))(
  ( (tuple2!963 (_1!489 Bool) (_2!489 Cell!220)) )
))
(declare-fun lt!9949 () tuple2!962)

(declare-fun thiss!938 () LongMap!220)

(assert (=> b!25406 (= e!16430 (tuple3!15 false (_2!489 lt!9949) thiss!938))))

(declare-fun b!25407 () Bool)

(declare-fun e!16434 () Bool)

(declare-fun tp_is_empty!1033 () Bool)

(assert (=> b!25407 (= e!16434 tp_is_empty!1033)))

(declare-fun b!25408 () Bool)

(declare-fun e!16433 () Bool)

(declare-fun e!16425 () Bool)

(assert (=> b!25408 (= e!16433 e!16425)))

(declare-fun b!25409 () Bool)

(declare-fun e!16424 () Bool)

(assert (=> b!25409 (= e!16424 tp_is_empty!1033)))

(declare-fun b!25410 () Bool)

(declare-fun e!16429 () tuple2!962)

(declare-fun e!16423 () tuple2!962)

(assert (=> b!25410 (= e!16429 e!16423)))

(declare-fun c!3544 () Bool)

(declare-fun lt!9945 () Bool)

(assert (=> b!25410 (= c!3544 (and (not lt!9945) (= (bvand (extraKeys!1660 (v!1625 (underlying!121 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!25411 () Bool)

(declare-datatypes ((tuple2!964 0))(
  ( (tuple2!965 (_1!490 Bool) (_2!490 LongMapFixedSize!220)) )
))
(declare-fun lt!9944 () tuple2!964)

(declare-fun lt!9950 () Cell!220)

(assert (=> b!25411 (= e!16430 (ite (_1!490 lt!9944) (tuple3!15 true (underlying!121 thiss!938) (LongMap!221 lt!9950)) (tuple3!15 false lt!9950 thiss!938)))))

(declare-fun repackFrom!7 (LongMap!220 LongMapFixedSize!220 (_ BitVec 32)) tuple2!964)

(assert (=> b!25411 (= lt!9944 (repackFrom!7 thiss!938 (v!1625 (_2!489 lt!9949)) (bvsub (size!715 (_keys!3193 (v!1625 (underlying!121 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!25411 (= lt!9950 (Cell!221 (_2!490 lt!9944)))))

(declare-fun b!25412 () Bool)

(declare-fun lt!9942 () tuple2!964)

(declare-fun lt!9948 () tuple2!964)

(assert (=> b!25412 (= e!16429 (tuple2!963 (and (_1!490 lt!9942) (_1!490 lt!9948)) (Cell!221 (_2!490 lt!9948))))))

(declare-fun lt!9947 () LongMapFixedSize!220)

(declare-fun update!38 (LongMapFixedSize!220 (_ BitVec 64) V!1203) tuple2!964)

(assert (=> b!25412 (= lt!9942 (update!38 lt!9947 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1687 (v!1625 (underlying!121 thiss!938)))))))

(declare-fun call!2341 () tuple2!964)

(assert (=> b!25412 (= lt!9948 call!2341)))

(declare-fun res!15270 () Bool)

(declare-fun e!16435 () Bool)

(assert (=> start!3650 (=> (not res!15270) (not e!16435))))

(declare-fun valid!113 (LongMap!220) Bool)

(assert (=> start!3650 (= res!15270 (valid!113 thiss!938))))

(assert (=> start!3650 e!16435))

(assert (=> start!3650 e!16433))

(declare-fun bm!2338 () Bool)

(declare-fun call!2342 () tuple2!964)

(assert (=> bm!2338 (= call!2342 call!2341)))

(declare-fun e!16426 () Bool)

(declare-fun e!16428 () Bool)

(declare-fun array_inv!431 (array!1301) Bool)

(declare-fun array_inv!432 (array!1299) Bool)

(assert (=> b!25413 (= e!16426 (and tp!3562 tp_is_empty!1033 (array_inv!431 (_keys!3193 (v!1625 (underlying!121 thiss!938)))) (array_inv!432 (_values!1752 (v!1625 (underlying!121 thiss!938)))) e!16428))))

(declare-fun b!25414 () Bool)

(assert (=> b!25414 (= e!16428 (and e!16434 mapRes!1048))))

(declare-fun condMapEmpty!1048 () Bool)

(declare-fun mapDefault!1048 () ValueCell!317)

