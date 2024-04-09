; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22198 () Bool)

(assert start!22198)

(declare-fun b!232225 () Bool)

(declare-fun b_free!6253 () Bool)

(declare-fun b_next!6253 () Bool)

(assert (=> b!232225 (= b_free!6253 (not b_next!6253))))

(declare-fun tp!21900 () Bool)

(declare-fun b_and!13169 () Bool)

(assert (=> b!232225 (= tp!21900 b_and!13169)))

(declare-fun bm!21588 () Bool)

(declare-fun call!21592 () Bool)

(declare-datatypes ((V!7801 0))(
  ( (V!7802 (val!3102 Int)) )
))
(declare-datatypes ((ValueCell!2714 0))(
  ( (ValueCellFull!2714 (v!5118 V!7801)) (EmptyCell!2714) )
))
(declare-datatypes ((array!11472 0))(
  ( (array!11473 (arr!5455 (Array (_ BitVec 32) ValueCell!2714)) (size!5788 (_ BitVec 32))) )
))
(declare-datatypes ((array!11474 0))(
  ( (array!11475 (arr!5456 (Array (_ BitVec 32) (_ BitVec 64))) (size!5789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3328 0))(
  ( (LongMapFixedSize!3329 (defaultEntry!4323 Int) (mask!10235 (_ BitVec 32)) (extraKeys!4060 (_ BitVec 32)) (zeroValue!4164 V!7801) (minValue!4164 V!7801) (_size!1713 (_ BitVec 32)) (_keys!6377 array!11474) (_values!4306 array!11472) (_vacant!1713 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3328)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21588 (= call!21592 (arrayContainsKey!0 (_keys!6377 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232216 () Bool)

(declare-fun e!150803 () Bool)

(declare-fun tp_is_empty!6115 () Bool)

(assert (=> b!232216 (= e!150803 tp_is_empty!6115)))

(declare-fun res!114067 () Bool)

(declare-fun e!150809 () Bool)

(assert (=> start!22198 (=> (not res!114067) (not e!150809))))

(declare-fun valid!1310 (LongMapFixedSize!3328) Bool)

(assert (=> start!22198 (= res!114067 (valid!1310 thiss!1504))))

(assert (=> start!22198 e!150809))

(declare-fun e!150810 () Bool)

(assert (=> start!22198 e!150810))

(assert (=> start!22198 true))

(assert (=> start!22198 tp_is_empty!6115))

(declare-fun b!232217 () Bool)

(declare-datatypes ((Unit!7167 0))(
  ( (Unit!7168) )
))
(declare-fun e!150805 () Unit!7167)

(declare-fun Unit!7169 () Unit!7167)

(assert (=> b!232217 (= e!150805 Unit!7169)))

(declare-fun call!21591 () Bool)

(declare-fun bm!21589 () Bool)

(declare-datatypes ((SeekEntryResult!972 0))(
  ( (MissingZero!972 (index!6058 (_ BitVec 32))) (Found!972 (index!6059 (_ BitVec 32))) (Intermediate!972 (undefined!1784 Bool) (index!6060 (_ BitVec 32)) (x!23560 (_ BitVec 32))) (Undefined!972) (MissingVacant!972 (index!6061 (_ BitVec 32))) )
))
(declare-fun lt!117268 () SeekEntryResult!972)

(declare-fun c!38596 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21589 (= call!21591 (inRange!0 (ite c!38596 (index!6058 lt!117268) (index!6061 lt!117268)) (mask!10235 thiss!1504)))))

(declare-fun b!232218 () Bool)

(declare-fun res!114060 () Bool)

(assert (=> b!232218 (=> (not res!114060) (not e!150809))))

(assert (=> b!232218 (= res!114060 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232219 () Bool)

(declare-fun e!150799 () Bool)

(declare-fun e!150806 () Bool)

(declare-fun mapRes!10342 () Bool)

(assert (=> b!232219 (= e!150799 (and e!150806 mapRes!10342))))

(declare-fun condMapEmpty!10342 () Bool)

(declare-fun mapDefault!10342 () ValueCell!2714)

