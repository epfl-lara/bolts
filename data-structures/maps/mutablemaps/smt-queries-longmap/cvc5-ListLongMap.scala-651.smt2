; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16266 () Bool)

(assert start!16266)

(declare-fun b!162131 () Bool)

(declare-fun b_free!3715 () Bool)

(declare-fun b_next!3715 () Bool)

(assert (=> b!162131 (= b_free!3715 (not b_next!3715))))

(declare-fun tp!13715 () Bool)

(declare-fun b_and!10147 () Bool)

(assert (=> b!162131 (= tp!13715 b_and!10147)))

(declare-fun b!162129 () Bool)

(declare-fun e!106171 () Bool)

(assert (=> b!162129 (= e!106171 false)))

(declare-datatypes ((SeekEntryResult!384 0))(
  ( (MissingZero!384 (index!3704 (_ BitVec 32))) (Found!384 (index!3705 (_ BitVec 32))) (Intermediate!384 (undefined!1196 Bool) (index!3706 (_ BitVec 32)) (x!17936 (_ BitVec 32))) (Undefined!384) (MissingVacant!384 (index!3707 (_ BitVec 32))) )
))
(declare-fun lt!82415 () SeekEntryResult!384)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4337 0))(
  ( (V!4338 (val!1803 Int)) )
))
(declare-datatypes ((ValueCell!1415 0))(
  ( (ValueCellFull!1415 (v!3664 V!4337)) (EmptyCell!1415) )
))
(declare-datatypes ((array!6112 0))(
  ( (array!6113 (arr!2900 (Array (_ BitVec 32) (_ BitVec 64))) (size!3184 (_ BitVec 32))) )
))
(declare-datatypes ((array!6114 0))(
  ( (array!6115 (arr!2901 (Array (_ BitVec 32) ValueCell!1415)) (size!3185 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1738 0))(
  ( (LongMapFixedSize!1739 (defaultEntry!3311 Int) (mask!7925 (_ BitVec 32)) (extraKeys!3052 (_ BitVec 32)) (zeroValue!3154 V!4337) (minValue!3154 V!4337) (_size!918 (_ BitVec 32)) (_keys!5112 array!6112) (_values!3294 array!6114) (_vacant!918 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1738)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6112 (_ BitVec 32)) SeekEntryResult!384)

(assert (=> b!162129 (= lt!82415 (seekEntryOrOpen!0 key!828 (_keys!5112 thiss!1248) (mask!7925 thiss!1248)))))

(declare-fun b!162130 () Bool)

(declare-fun e!106170 () Bool)

(declare-fun e!106174 () Bool)

(declare-fun mapRes!5963 () Bool)

(assert (=> b!162130 (= e!106170 (and e!106174 mapRes!5963))))

(declare-fun condMapEmpty!5963 () Bool)

(declare-fun mapDefault!5963 () ValueCell!1415)

