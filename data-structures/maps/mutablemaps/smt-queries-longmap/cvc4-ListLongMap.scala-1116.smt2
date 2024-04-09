; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22958 () Bool)

(assert start!22958)

(declare-fun b!239806 () Bool)

(declare-fun b_free!6449 () Bool)

(declare-fun b_next!6449 () Bool)

(assert (=> b!239806 (= b_free!6449 (not b_next!6449))))

(declare-fun tp!22551 () Bool)

(declare-fun b_and!13433 () Bool)

(assert (=> b!239806 (= tp!22551 b_and!13433)))

(declare-fun bm!22302 () Bool)

(declare-fun call!22306 () Bool)

(declare-datatypes ((V!8061 0))(
  ( (V!8062 (val!3200 Int)) )
))
(declare-datatypes ((ValueCell!2812 0))(
  ( (ValueCellFull!2812 (v!5234 V!8061)) (EmptyCell!2812) )
))
(declare-datatypes ((array!11900 0))(
  ( (array!11901 (arr!5651 (Array (_ BitVec 32) ValueCell!2812)) (size!5992 (_ BitVec 32))) )
))
(declare-datatypes ((array!11902 0))(
  ( (array!11903 (arr!5652 (Array (_ BitVec 32) (_ BitVec 64))) (size!5993 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3524 0))(
  ( (LongMapFixedSize!3525 (defaultEntry!4447 Int) (mask!10497 (_ BitVec 32)) (extraKeys!4184 (_ BitVec 32)) (zeroValue!4288 V!8061) (minValue!4288 V!8061) (_size!1811 (_ BitVec 32)) (_keys!6549 array!11902) (_values!4430 array!11900) (_vacant!1811 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3524)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22302 (= call!22306 (arrayContainsKey!0 (_keys!6549 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239804 () Bool)

(declare-fun e!155704 () Bool)

(declare-fun e!155708 () Bool)

(assert (=> b!239804 (= e!155704 e!155708)))

(declare-fun res!117559 () Bool)

(assert (=> b!239804 (=> (not res!117559) (not e!155708))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239804 (= res!117559 (inRange!0 index!297 (mask!10497 thiss!1504)))))

(declare-datatypes ((Unit!7368 0))(
  ( (Unit!7369) )
))
(declare-fun lt!120895 () Unit!7368)

(declare-fun e!155706 () Unit!7368)

(assert (=> b!239804 (= lt!120895 e!155706)))

(declare-fun c!39954 () Bool)

(declare-datatypes ((tuple2!4712 0))(
  ( (tuple2!4713 (_1!2366 (_ BitVec 64)) (_2!2366 V!8061)) )
))
(declare-datatypes ((List!3620 0))(
  ( (Nil!3617) (Cons!3616 (h!4272 tuple2!4712) (t!8623 List!3620)) )
))
(declare-datatypes ((ListLongMap!3639 0))(
  ( (ListLongMap!3640 (toList!1835 List!3620)) )
))
(declare-fun contains!1717 (ListLongMap!3639 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1358 (array!11902 array!11900 (_ BitVec 32) (_ BitVec 32) V!8061 V!8061 (_ BitVec 32) Int) ListLongMap!3639)

(assert (=> b!239804 (= c!39954 (contains!1717 (getCurrentListMap!1358 (_keys!6549 thiss!1504) (_values!4430 thiss!1504) (mask!10497 thiss!1504) (extraKeys!4184 thiss!1504) (zeroValue!4288 thiss!1504) (minValue!4288 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4447 thiss!1504)) key!932))))

(declare-fun b!239805 () Bool)

(declare-fun res!117557 () Bool)

(declare-datatypes ((SeekEntryResult!1048 0))(
  ( (MissingZero!1048 (index!6362 (_ BitVec 32))) (Found!1048 (index!6363 (_ BitVec 32))) (Intermediate!1048 (undefined!1860 Bool) (index!6364 (_ BitVec 32)) (x!24136 (_ BitVec 32))) (Undefined!1048) (MissingVacant!1048 (index!6365 (_ BitVec 32))) )
))
(declare-fun lt!120894 () SeekEntryResult!1048)

(assert (=> b!239805 (= res!117557 (= (select (arr!5652 (_keys!6549 thiss!1504)) (index!6365 lt!120894)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155712 () Bool)

(assert (=> b!239805 (=> (not res!117557) (not e!155712))))

(declare-fun tp_is_empty!6311 () Bool)

(declare-fun e!155702 () Bool)

(declare-fun e!155710 () Bool)

(declare-fun array_inv!3729 (array!11902) Bool)

(declare-fun array_inv!3730 (array!11900) Bool)

(assert (=> b!239806 (= e!155702 (and tp!22551 tp_is_empty!6311 (array_inv!3729 (_keys!6549 thiss!1504)) (array_inv!3730 (_values!4430 thiss!1504)) e!155710))))

(declare-fun b!239807 () Bool)

(declare-fun res!117558 () Bool)

(declare-fun e!155703 () Bool)

(assert (=> b!239807 (=> (not res!117558) (not e!155703))))

(declare-fun call!22305 () Bool)

(assert (=> b!239807 (= res!117558 call!22305)))

(declare-fun e!155707 () Bool)

(assert (=> b!239807 (= e!155707 e!155703)))

(declare-fun b!239808 () Bool)

(declare-fun res!117553 () Bool)

(assert (=> b!239808 (=> (not res!117553) (not e!155708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239808 (= res!117553 (validMask!0 (mask!10497 thiss!1504)))))

(declare-fun res!117555 () Bool)

(declare-fun e!155705 () Bool)

(assert (=> start!22958 (=> (not res!117555) (not e!155705))))

(declare-fun valid!1381 (LongMapFixedSize!3524) Bool)

(assert (=> start!22958 (= res!117555 (valid!1381 thiss!1504))))

(assert (=> start!22958 e!155705))

(assert (=> start!22958 e!155702))

(assert (=> start!22958 true))

(declare-fun b!239809 () Bool)

(declare-fun res!117551 () Bool)

(assert (=> b!239809 (=> (not res!117551) (not e!155708))))

(assert (=> b!239809 (= res!117551 (and (= (size!5992 (_values!4430 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10497 thiss!1504))) (= (size!5993 (_keys!6549 thiss!1504)) (size!5992 (_values!4430 thiss!1504))) (bvsge (mask!10497 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4184 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4184 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!239810 () Bool)

(declare-fun e!155714 () Bool)

(assert (=> b!239810 (= e!155714 tp_is_empty!6311)))

(declare-fun b!239811 () Bool)

(assert (=> b!239811 (= e!155712 (not call!22306))))

(declare-fun b!239812 () Bool)

(declare-fun e!155711 () Bool)

(declare-fun mapRes!10698 () Bool)

(assert (=> b!239812 (= e!155710 (and e!155711 mapRes!10698))))

(declare-fun condMapEmpty!10698 () Bool)

(declare-fun mapDefault!10698 () ValueCell!2812)

