; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15856 () Bool)

(assert start!15856)

(declare-fun b!157761 () Bool)

(declare-fun b_free!3461 () Bool)

(declare-fun b_next!3461 () Bool)

(assert (=> b!157761 (= b_free!3461 (not b_next!3461))))

(declare-fun tp!12921 () Bool)

(declare-fun b_and!9893 () Bool)

(assert (=> b!157761 (= tp!12921 b_and!9893)))

(declare-fun mapNonEmpty!5551 () Bool)

(declare-fun mapRes!5551 () Bool)

(declare-fun tp!12922 () Bool)

(declare-fun e!103341 () Bool)

(assert (=> mapNonEmpty!5551 (= mapRes!5551 (and tp!12922 e!103341))))

(declare-fun mapKey!5551 () (_ BitVec 32))

(declare-datatypes ((V!3997 0))(
  ( (V!3998 (val!1676 Int)) )
))
(declare-datatypes ((ValueCell!1288 0))(
  ( (ValueCellFull!1288 (v!3537 V!3997)) (EmptyCell!1288) )
))
(declare-fun mapValue!5551 () ValueCell!1288)

(declare-datatypes ((array!5586 0))(
  ( (array!5587 (arr!2646 (Array (_ BitVec 32) (_ BitVec 64))) (size!2926 (_ BitVec 32))) )
))
(declare-datatypes ((array!5588 0))(
  ( (array!5589 (arr!2647 (Array (_ BitVec 32) ValueCell!1288)) (size!2927 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1484 0))(
  ( (LongMapFixedSize!1485 (defaultEntry!3184 Int) (mask!7675 (_ BitVec 32)) (extraKeys!2925 (_ BitVec 32)) (zeroValue!3027 V!3997) (minValue!3027 V!3997) (_size!791 (_ BitVec 32)) (_keys!4961 array!5586) (_values!3167 array!5588) (_vacant!791 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1484)

(declare-fun mapRest!5551 () (Array (_ BitVec 32) ValueCell!1288))

(assert (=> mapNonEmpty!5551 (= (arr!2647 (_values!3167 thiss!1248)) (store mapRest!5551 mapKey!5551 mapValue!5551))))

(declare-fun res!74567 () Bool)

(declare-fun e!103339 () Bool)

(assert (=> start!15856 (=> (not res!74567) (not e!103339))))

(declare-fun valid!700 (LongMapFixedSize!1484) Bool)

(assert (=> start!15856 (= res!74567 (valid!700 thiss!1248))))

(assert (=> start!15856 e!103339))

(declare-fun e!103344 () Bool)

(assert (=> start!15856 e!103344))

(assert (=> start!15856 true))

(declare-fun mapIsEmpty!5551 () Bool)

(assert (=> mapIsEmpty!5551 mapRes!5551))

(declare-fun b!157755 () Bool)

(declare-fun tp_is_empty!3263 () Bool)

(assert (=> b!157755 (= e!103341 tp_is_empty!3263)))

(declare-fun b!157756 () Bool)

(declare-fun res!74569 () Bool)

(assert (=> b!157756 (=> (not res!74569) (not e!103339))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!301 0))(
  ( (MissingZero!301 (index!3372 (_ BitVec 32))) (Found!301 (index!3373 (_ BitVec 32))) (Intermediate!301 (undefined!1113 Bool) (index!3374 (_ BitVec 32)) (x!17401 (_ BitVec 32))) (Undefined!301) (MissingVacant!301 (index!3375 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5586 (_ BitVec 32)) SeekEntryResult!301)

(assert (=> b!157756 (= res!74569 (is-Undefined!301 (seekEntryOrOpen!0 key!828 (_keys!4961 thiss!1248) (mask!7675 thiss!1248))))))

(declare-fun b!157757 () Bool)

(declare-fun e!103340 () Bool)

(declare-fun e!103343 () Bool)

(assert (=> b!157757 (= e!103340 (and e!103343 mapRes!5551))))

(declare-fun condMapEmpty!5551 () Bool)

(declare-fun mapDefault!5551 () ValueCell!1288)

