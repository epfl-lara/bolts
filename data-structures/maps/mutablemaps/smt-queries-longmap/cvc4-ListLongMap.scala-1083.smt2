; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22196 () Bool)

(assert start!22196)

(declare-fun b!232160 () Bool)

(declare-fun b_free!6251 () Bool)

(declare-fun b_next!6251 () Bool)

(assert (=> b!232160 (= b_free!6251 (not b_next!6251))))

(declare-fun tp!21894 () Bool)

(declare-fun b_and!13167 () Bool)

(assert (=> b!232160 (= tp!21894 b_and!13167)))

(declare-fun b!232156 () Bool)

(declare-fun e!150763 () Bool)

(declare-fun tp_is_empty!6113 () Bool)

(assert (=> b!232156 (= e!150763 tp_is_empty!6113)))

(declare-fun b!232157 () Bool)

(declare-fun e!150765 () Bool)

(assert (=> b!232157 (= e!150765 tp_is_empty!6113)))

(declare-fun b!232158 () Bool)

(declare-datatypes ((Unit!7164 0))(
  ( (Unit!7165) )
))
(declare-fun e!150759 () Unit!7164)

(declare-fun lt!117224 () Unit!7164)

(assert (=> b!232158 (= e!150759 lt!117224)))

(declare-datatypes ((V!7797 0))(
  ( (V!7798 (val!3101 Int)) )
))
(declare-datatypes ((ValueCell!2713 0))(
  ( (ValueCellFull!2713 (v!5117 V!7797)) (EmptyCell!2713) )
))
(declare-datatypes ((array!11468 0))(
  ( (array!11469 (arr!5453 (Array (_ BitVec 32) ValueCell!2713)) (size!5786 (_ BitVec 32))) )
))
(declare-datatypes ((array!11470 0))(
  ( (array!11471 (arr!5454 (Array (_ BitVec 32) (_ BitVec 64))) (size!5787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3326 0))(
  ( (LongMapFixedSize!3327 (defaultEntry!4322 Int) (mask!10232 (_ BitVec 32)) (extraKeys!4059 (_ BitVec 32)) (zeroValue!4163 V!7797) (minValue!4163 V!7797) (_size!1712 (_ BitVec 32)) (_keys!6376 array!11470) (_values!4305 array!11468) (_vacant!1712 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3326)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!323 (array!11470 array!11468 (_ BitVec 32) (_ BitVec 32) V!7797 V!7797 (_ BitVec 64) Int) Unit!7164)

(assert (=> b!232158 (= lt!117224 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!323 (_keys!6376 thiss!1504) (_values!4305 thiss!1504) (mask!10232 thiss!1504) (extraKeys!4059 thiss!1504) (zeroValue!4163 thiss!1504) (minValue!4163 thiss!1504) key!932 (defaultEntry!4322 thiss!1504)))))

(declare-fun c!38582 () Bool)

(declare-datatypes ((SeekEntryResult!971 0))(
  ( (MissingZero!971 (index!6054 (_ BitVec 32))) (Found!971 (index!6055 (_ BitVec 32))) (Intermediate!971 (undefined!1783 Bool) (index!6056 (_ BitVec 32)) (x!23551 (_ BitVec 32))) (Undefined!971) (MissingVacant!971 (index!6057 (_ BitVec 32))) )
))
(declare-fun lt!117225 () SeekEntryResult!971)

(assert (=> b!232158 (= c!38582 (is-MissingZero!971 lt!117225))))

(declare-fun e!150758 () Bool)

(assert (=> b!232158 e!150758))

(declare-fun b!232159 () Bool)

(declare-fun e!150756 () Bool)

(declare-fun e!150762 () Bool)

(assert (=> b!232159 (= e!150756 e!150762)))

(declare-fun res!114041 () Bool)

(assert (=> b!232159 (=> (not res!114041) (not e!150762))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!232159 (= res!114041 (inRange!0 index!297 (mask!10232 thiss!1504)))))

(declare-fun lt!117234 () Unit!7164)

(assert (=> b!232159 (= lt!117234 e!150759)))

(declare-fun c!38584 () Bool)

(declare-datatypes ((tuple2!4574 0))(
  ( (tuple2!4575 (_1!2297 (_ BitVec 64)) (_2!2297 V!7797)) )
))
(declare-datatypes ((List!3516 0))(
  ( (Nil!3513) (Cons!3512 (h!4160 tuple2!4574) (t!8483 List!3516)) )
))
(declare-datatypes ((ListLongMap!3501 0))(
  ( (ListLongMap!3502 (toList!1766 List!3516)) )
))
(declare-fun lt!117227 () ListLongMap!3501)

(declare-fun contains!1628 (ListLongMap!3501 (_ BitVec 64)) Bool)

(assert (=> b!232159 (= c!38584 (contains!1628 lt!117227 key!932))))

(declare-fun getCurrentListMap!1289 (array!11470 array!11468 (_ BitVec 32) (_ BitVec 32) V!7797 V!7797 (_ BitVec 32) Int) ListLongMap!3501)

(assert (=> b!232159 (= lt!117227 (getCurrentListMap!1289 (_keys!6376 thiss!1504) (_values!4305 thiss!1504) (mask!10232 thiss!1504) (extraKeys!4059 thiss!1504) (zeroValue!4163 thiss!1504) (minValue!4163 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4322 thiss!1504)))))

(declare-fun e!150768 () Bool)

(declare-fun e!150761 () Bool)

(declare-fun array_inv!3585 (array!11470) Bool)

(declare-fun array_inv!3586 (array!11468) Bool)

(assert (=> b!232160 (= e!150768 (and tp!21894 tp_is_empty!6113 (array_inv!3585 (_keys!6376 thiss!1504)) (array_inv!3586 (_values!4305 thiss!1504)) e!150761))))

(declare-fun b!232161 () Bool)

(declare-fun c!38585 () Bool)

(assert (=> b!232161 (= c!38585 (is-MissingVacant!971 lt!117225))))

(declare-fun e!150767 () Bool)

(assert (=> b!232161 (= e!150758 e!150767)))

(declare-fun b!232162 () Bool)

(declare-fun e!150769 () Unit!7164)

(declare-fun Unit!7166 () Unit!7164)

(assert (=> b!232162 (= e!150769 Unit!7166)))

(declare-fun b!232163 () Bool)

(declare-fun mapRes!10339 () Bool)

(assert (=> b!232163 (= e!150761 (and e!150763 mapRes!10339))))

(declare-fun condMapEmpty!10339 () Bool)

(declare-fun mapDefault!10339 () ValueCell!2713)

