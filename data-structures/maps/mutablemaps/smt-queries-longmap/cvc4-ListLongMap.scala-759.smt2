; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17820 () Bool)

(assert start!17820)

(declare-fun b!177811 () Bool)

(declare-fun b_free!4397 () Bool)

(declare-fun b_next!4397 () Bool)

(assert (=> b!177811 (= b_free!4397 (not b_next!4397))))

(declare-fun tp!15898 () Bool)

(declare-fun b_and!10923 () Bool)

(assert (=> b!177811 (= tp!15898 b_and!10923)))

(declare-fun res!84283 () Bool)

(declare-fun e!117248 () Bool)

(assert (=> start!17820 (=> (not res!84283) (not e!117248))))

(declare-datatypes ((V!5205 0))(
  ( (V!5206 (val!2129 Int)) )
))
(declare-datatypes ((ValueCell!1741 0))(
  ( (ValueCellFull!1741 (v!4007 V!5205)) (EmptyCell!1741) )
))
(declare-datatypes ((array!7492 0))(
  ( (array!7493 (arr!3552 (Array (_ BitVec 32) (_ BitVec 64))) (size!3857 (_ BitVec 32))) )
))
(declare-datatypes ((array!7494 0))(
  ( (array!7495 (arr!3553 (Array (_ BitVec 32) ValueCell!1741)) (size!3858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2390 0))(
  ( (LongMapFixedSize!2391 (defaultEntry!3661 Int) (mask!8609 (_ BitVec 32)) (extraKeys!3398 (_ BitVec 32)) (zeroValue!3502 V!5205) (minValue!3502 V!5205) (_size!1244 (_ BitVec 32)) (_keys!5533 array!7492) (_values!3644 array!7494) (_vacant!1244 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2390)

(declare-fun valid!993 (LongMapFixedSize!2390) Bool)

(assert (=> start!17820 (= res!84283 (valid!993 thiss!1248))))

(assert (=> start!17820 e!117248))

(declare-fun e!117245 () Bool)

(assert (=> start!17820 e!117245))

(assert (=> start!17820 true))

(declare-fun mapNonEmpty!7123 () Bool)

(declare-fun mapRes!7123 () Bool)

(declare-fun tp!15897 () Bool)

(declare-fun e!117246 () Bool)

(assert (=> mapNonEmpty!7123 (= mapRes!7123 (and tp!15897 e!117246))))

(declare-fun mapKey!7123 () (_ BitVec 32))

(declare-fun mapValue!7123 () ValueCell!1741)

(declare-fun mapRest!7123 () (Array (_ BitVec 32) ValueCell!1741))

(assert (=> mapNonEmpty!7123 (= (arr!3553 (_values!3644 thiss!1248)) (store mapRest!7123 mapKey!7123 mapValue!7123))))

(declare-fun e!117244 () Bool)

(declare-fun tp_is_empty!4169 () Bool)

(declare-fun array_inv!2271 (array!7492) Bool)

(declare-fun array_inv!2272 (array!7494) Bool)

(assert (=> b!177811 (= e!117245 (and tp!15898 tp_is_empty!4169 (array_inv!2271 (_keys!5533 thiss!1248)) (array_inv!2272 (_values!3644 thiss!1248)) e!117244))))

(declare-fun b!177812 () Bool)

(declare-fun res!84284 () Bool)

(assert (=> b!177812 (=> (not res!84284) (not e!117248))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!177812 (= res!84284 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177813 () Bool)

(declare-fun res!84285 () Bool)

(assert (=> b!177813 (=> (not res!84285) (not e!117248))))

(declare-datatypes ((SeekEntryResult!581 0))(
  ( (MissingZero!581 (index!4492 (_ BitVec 32))) (Found!581 (index!4493 (_ BitVec 32))) (Intermediate!581 (undefined!1393 Bool) (index!4494 (_ BitVec 32)) (x!19505 (_ BitVec 32))) (Undefined!581) (MissingVacant!581 (index!4495 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7492 (_ BitVec 32)) SeekEntryResult!581)

(assert (=> b!177813 (= res!84285 (is-Undefined!581 (seekEntryOrOpen!0 key!828 (_keys!5533 thiss!1248) (mask!8609 thiss!1248))))))

(declare-fun b!177814 () Bool)

(declare-fun e!117249 () Bool)

(assert (=> b!177814 (= e!117249 tp_is_empty!4169)))

(declare-fun b!177815 () Bool)

(assert (=> b!177815 (= e!117244 (and e!117249 mapRes!7123))))

(declare-fun condMapEmpty!7123 () Bool)

(declare-fun mapDefault!7123 () ValueCell!1741)

