; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22210 () Bool)

(assert start!22210)

(declare-fun b!232581 () Bool)

(declare-fun b_free!6265 () Bool)

(declare-fun b_next!6265 () Bool)

(assert (=> b!232581 (= b_free!6265 (not b_next!6265))))

(declare-fun tp!21937 () Bool)

(declare-fun b_and!13181 () Bool)

(assert (=> b!232581 (= tp!21937 b_and!13181)))

(declare-fun b!232578 () Bool)

(declare-fun res!114209 () Bool)

(declare-fun e!151057 () Bool)

(assert (=> b!232578 (=> (not res!114209) (not e!151057))))

(declare-datatypes ((V!7817 0))(
  ( (V!7818 (val!3108 Int)) )
))
(declare-datatypes ((ValueCell!2720 0))(
  ( (ValueCellFull!2720 (v!5124 V!7817)) (EmptyCell!2720) )
))
(declare-datatypes ((array!11496 0))(
  ( (array!11497 (arr!5467 (Array (_ BitVec 32) ValueCell!2720)) (size!5800 (_ BitVec 32))) )
))
(declare-datatypes ((array!11498 0))(
  ( (array!11499 (arr!5468 (Array (_ BitVec 32) (_ BitVec 64))) (size!5801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3340 0))(
  ( (LongMapFixedSize!3341 (defaultEntry!4329 Int) (mask!10245 (_ BitVec 32)) (extraKeys!4066 (_ BitVec 32)) (zeroValue!4170 V!7817) (minValue!4170 V!7817) (_size!1719 (_ BitVec 32)) (_keys!6383 array!11498) (_values!4312 array!11496) (_vacant!1719 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3340)

(declare-datatypes ((SeekEntryResult!977 0))(
  ( (MissingZero!977 (index!6078 (_ BitVec 32))) (Found!977 (index!6079 (_ BitVec 32))) (Intermediate!977 (undefined!1789 Bool) (index!6080 (_ BitVec 32)) (x!23581 (_ BitVec 32))) (Undefined!977) (MissingVacant!977 (index!6081 (_ BitVec 32))) )
))
(declare-fun lt!117582 () SeekEntryResult!977)

(assert (=> b!232578 (= res!114209 (= (select (arr!5468 (_keys!6383 thiss!1504)) (index!6078 lt!117582)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!38666 () Bool)

(declare-fun call!21627 () Bool)

(declare-fun bm!21624 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21624 (= call!21627 (inRange!0 (ite c!38666 (index!6078 lt!117582) (index!6081 lt!117582)) (mask!10245 thiss!1504)))))

(declare-fun mapNonEmpty!10360 () Bool)

(declare-fun mapRes!10360 () Bool)

(declare-fun tp!21936 () Bool)

(declare-fun e!151062 () Bool)

(assert (=> mapNonEmpty!10360 (= mapRes!10360 (and tp!21936 e!151062))))

(declare-fun mapValue!10360 () ValueCell!2720)

(declare-fun mapRest!10360 () (Array (_ BitVec 32) ValueCell!2720))

(declare-fun mapKey!10360 () (_ BitVec 32))

(assert (=> mapNonEmpty!10360 (= (arr!5467 (_values!4312 thiss!1504)) (store mapRest!10360 mapKey!10360 mapValue!10360))))

(declare-fun b!232579 () Bool)

(declare-fun e!151054 () Bool)

(declare-fun e!151053 () Bool)

(assert (=> b!232579 (= e!151054 e!151053)))

(declare-fun res!114207 () Bool)

(assert (=> b!232579 (= res!114207 call!21627)))

(assert (=> b!232579 (=> (not res!114207) (not e!151053))))

(declare-fun b!232580 () Bool)

(assert (=> b!232580 (= e!151054 (is-Undefined!977 lt!117582))))

(declare-fun e!151065 () Bool)

(declare-fun tp_is_empty!6127 () Bool)

(declare-fun e!151064 () Bool)

(declare-fun array_inv!3593 (array!11498) Bool)

(declare-fun array_inv!3594 (array!11496) Bool)

(assert (=> b!232581 (= e!151065 (and tp!21937 tp_is_empty!6127 (array_inv!3593 (_keys!6383 thiss!1504)) (array_inv!3594 (_values!4312 thiss!1504)) e!151064))))

(declare-fun b!232582 () Bool)

(declare-fun e!151059 () Bool)

(declare-fun e!151060 () Bool)

(assert (=> b!232582 (= e!151059 e!151060)))

(declare-fun res!114210 () Bool)

(assert (=> b!232582 (=> (not res!114210) (not e!151060))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!232582 (= res!114210 (inRange!0 index!297 (mask!10245 thiss!1504)))))

(declare-datatypes ((Unit!7183 0))(
  ( (Unit!7184) )
))
(declare-fun lt!117572 () Unit!7183)

(declare-fun e!151052 () Unit!7183)

(assert (=> b!232582 (= lt!117572 e!151052)))

(declare-fun c!38667 () Bool)

(declare-datatypes ((tuple2!4582 0))(
  ( (tuple2!4583 (_1!2301 (_ BitVec 64)) (_2!2301 V!7817)) )
))
(declare-datatypes ((List!3523 0))(
  ( (Nil!3520) (Cons!3519 (h!4167 tuple2!4582) (t!8490 List!3523)) )
))
(declare-datatypes ((ListLongMap!3509 0))(
  ( (ListLongMap!3510 (toList!1770 List!3523)) )
))
(declare-fun lt!117591 () ListLongMap!3509)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1632 (ListLongMap!3509 (_ BitVec 64)) Bool)

(assert (=> b!232582 (= c!38667 (contains!1632 lt!117591 key!932))))

(declare-fun getCurrentListMap!1293 (array!11498 array!11496 (_ BitVec 32) (_ BitVec 32) V!7817 V!7817 (_ BitVec 32) Int) ListLongMap!3509)

(assert (=> b!232582 (= lt!117591 (getCurrentListMap!1293 (_keys!6383 thiss!1504) (_values!4312 thiss!1504) (mask!10245 thiss!1504) (extraKeys!4066 thiss!1504) (zeroValue!4170 thiss!1504) (minValue!4170 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4329 thiss!1504)))))

(declare-fun mapIsEmpty!10360 () Bool)

(assert (=> mapIsEmpty!10360 mapRes!10360))

(declare-fun b!232583 () Bool)

(declare-fun e!151063 () Bool)

(assert (=> b!232583 (= e!151064 (and e!151063 mapRes!10360))))

(declare-fun condMapEmpty!10360 () Bool)

(declare-fun mapDefault!10360 () ValueCell!2720)

