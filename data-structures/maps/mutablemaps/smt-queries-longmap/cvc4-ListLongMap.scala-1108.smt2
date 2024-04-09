; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22890 () Bool)

(assert start!22890)

(declare-fun b!238319 () Bool)

(declare-fun b_free!6401 () Bool)

(declare-fun b_next!6401 () Bool)

(assert (=> b!238319 (= b_free!6401 (not b_next!6401))))

(declare-fun tp!22404 () Bool)

(declare-fun b_and!13383 () Bool)

(assert (=> b!238319 (= tp!22404 b_and!13383)))

(declare-fun b!238318 () Bool)

(declare-fun e!154744 () Bool)

(declare-fun e!154748 () Bool)

(assert (=> b!238318 (= e!154744 e!154748)))

(declare-fun res!116808 () Bool)

(assert (=> b!238318 (=> (not res!116808) (not e!154748))))

(declare-datatypes ((SeekEntryResult!1027 0))(
  ( (MissingZero!1027 (index!6278 (_ BitVec 32))) (Found!1027 (index!6279 (_ BitVec 32))) (Intermediate!1027 (undefined!1839 Bool) (index!6280 (_ BitVec 32)) (x!24041 (_ BitVec 32))) (Undefined!1027) (MissingVacant!1027 (index!6281 (_ BitVec 32))) )
))
(declare-fun lt!120529 () SeekEntryResult!1027)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238318 (= res!116808 (or (= lt!120529 (MissingZero!1027 index!297)) (= lt!120529 (MissingVacant!1027 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7997 0))(
  ( (V!7998 (val!3176 Int)) )
))
(declare-datatypes ((ValueCell!2788 0))(
  ( (ValueCellFull!2788 (v!5209 V!7997)) (EmptyCell!2788) )
))
(declare-datatypes ((array!11802 0))(
  ( (array!11803 (arr!5603 (Array (_ BitVec 32) ValueCell!2788)) (size!5944 (_ BitVec 32))) )
))
(declare-datatypes ((array!11804 0))(
  ( (array!11805 (arr!5604 (Array (_ BitVec 32) (_ BitVec 64))) (size!5945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3476 0))(
  ( (LongMapFixedSize!3477 (defaultEntry!4422 Int) (mask!10453 (_ BitVec 32)) (extraKeys!4159 (_ BitVec 32)) (zeroValue!4263 V!7997) (minValue!4263 V!7997) (_size!1787 (_ BitVec 32)) (_keys!6522 array!11804) (_values!4405 array!11802) (_vacant!1787 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3476)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11804 (_ BitVec 32)) SeekEntryResult!1027)

(assert (=> b!238318 (= lt!120529 (seekEntryOrOpen!0 key!932 (_keys!6522 thiss!1504) (mask!10453 thiss!1504)))))

(declare-fun e!154742 () Bool)

(declare-fun e!154745 () Bool)

(declare-fun tp_is_empty!6263 () Bool)

(declare-fun array_inv!3695 (array!11804) Bool)

(declare-fun array_inv!3696 (array!11802) Bool)

(assert (=> b!238319 (= e!154742 (and tp!22404 tp_is_empty!6263 (array_inv!3695 (_keys!6522 thiss!1504)) (array_inv!3696 (_values!4405 thiss!1504)) e!154745))))

(declare-fun mapNonEmpty!10623 () Bool)

(declare-fun mapRes!10623 () Bool)

(declare-fun tp!22403 () Bool)

(declare-fun e!154747 () Bool)

(assert (=> mapNonEmpty!10623 (= mapRes!10623 (and tp!22403 e!154747))))

(declare-fun mapRest!10623 () (Array (_ BitVec 32) ValueCell!2788))

(declare-fun mapValue!10623 () ValueCell!2788)

(declare-fun mapKey!10623 () (_ BitVec 32))

(assert (=> mapNonEmpty!10623 (= (arr!5603 (_values!4405 thiss!1504)) (store mapRest!10623 mapKey!10623 mapValue!10623))))

(declare-fun b!238320 () Bool)

(declare-fun res!116810 () Bool)

(assert (=> b!238320 (=> (not res!116810) (not e!154748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238320 (= res!116810 (validMask!0 (mask!10453 thiss!1504)))))

(declare-fun b!238321 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!238321 (= e!154748 (not (validKeyInArray!0 key!932)))))

(declare-fun b!238322 () Bool)

(declare-fun res!116806 () Bool)

(assert (=> b!238322 (=> (not res!116806) (not e!154748))))

(declare-datatypes ((tuple2!4678 0))(
  ( (tuple2!4679 (_1!2349 (_ BitVec 64)) (_2!2349 V!7997)) )
))
(declare-datatypes ((List!3600 0))(
  ( (Nil!3597) (Cons!3596 (h!4252 tuple2!4678) (t!8601 List!3600)) )
))
(declare-datatypes ((ListLongMap!3605 0))(
  ( (ListLongMap!3606 (toList!1818 List!3600)) )
))
(declare-fun contains!1699 (ListLongMap!3605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1341 (array!11804 array!11802 (_ BitVec 32) (_ BitVec 32) V!7997 V!7997 (_ BitVec 32) Int) ListLongMap!3605)

(assert (=> b!238322 (= res!116806 (not (contains!1699 (getCurrentListMap!1341 (_keys!6522 thiss!1504) (_values!4405 thiss!1504) (mask!10453 thiss!1504) (extraKeys!4159 thiss!1504) (zeroValue!4263 thiss!1504) (minValue!4263 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4422 thiss!1504)) key!932)))))

(declare-fun b!238323 () Bool)

(assert (=> b!238323 (= e!154747 tp_is_empty!6263)))

(declare-fun b!238324 () Bool)

(declare-fun res!116807 () Bool)

(assert (=> b!238324 (=> (not res!116807) (not e!154748))))

(assert (=> b!238324 (= res!116807 (and (= (size!5944 (_values!4405 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10453 thiss!1504))) (= (size!5945 (_keys!6522 thiss!1504)) (size!5944 (_values!4405 thiss!1504))) (bvsge (mask!10453 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4159 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4159 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!116812 () Bool)

(assert (=> start!22890 (=> (not res!116812) (not e!154744))))

(declare-fun valid!1365 (LongMapFixedSize!3476) Bool)

(assert (=> start!22890 (= res!116812 (valid!1365 thiss!1504))))

(assert (=> start!22890 e!154744))

(assert (=> start!22890 e!154742))

(assert (=> start!22890 true))

(declare-fun mapIsEmpty!10623 () Bool)

(assert (=> mapIsEmpty!10623 mapRes!10623))

(declare-fun b!238325 () Bool)

(declare-fun e!154746 () Bool)

(assert (=> b!238325 (= e!154745 (and e!154746 mapRes!10623))))

(declare-fun condMapEmpty!10623 () Bool)

(declare-fun mapDefault!10623 () ValueCell!2788)

