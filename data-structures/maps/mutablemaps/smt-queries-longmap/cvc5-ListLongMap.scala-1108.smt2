; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22886 () Bool)

(assert start!22886)

(declare-fun b!238250 () Bool)

(declare-fun b_free!6397 () Bool)

(declare-fun b_next!6397 () Bool)

(assert (=> b!238250 (= b_free!6397 (not b_next!6397))))

(declare-fun tp!22392 () Bool)

(declare-fun b_and!13379 () Bool)

(assert (=> b!238250 (= tp!22392 b_and!13379)))

(declare-fun b!238246 () Bool)

(declare-fun res!116763 () Bool)

(declare-fun e!154701 () Bool)

(assert (=> b!238246 (=> (not res!116763) (not e!154701))))

(declare-datatypes ((V!7993 0))(
  ( (V!7994 (val!3174 Int)) )
))
(declare-datatypes ((ValueCell!2786 0))(
  ( (ValueCellFull!2786 (v!5207 V!7993)) (EmptyCell!2786) )
))
(declare-datatypes ((array!11794 0))(
  ( (array!11795 (arr!5599 (Array (_ BitVec 32) ValueCell!2786)) (size!5940 (_ BitVec 32))) )
))
(declare-datatypes ((array!11796 0))(
  ( (array!11797 (arr!5600 (Array (_ BitVec 32) (_ BitVec 64))) (size!5941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3472 0))(
  ( (LongMapFixedSize!3473 (defaultEntry!4420 Int) (mask!10451 (_ BitVec 32)) (extraKeys!4157 (_ BitVec 32)) (zeroValue!4261 V!7993) (minValue!4261 V!7993) (_size!1785 (_ BitVec 32)) (_keys!6520 array!11796) (_values!4403 array!11794) (_vacant!1785 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3472)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4674 0))(
  ( (tuple2!4675 (_1!2347 (_ BitVec 64)) (_2!2347 V!7993)) )
))
(declare-datatypes ((List!3596 0))(
  ( (Nil!3593) (Cons!3592 (h!4248 tuple2!4674) (t!8597 List!3596)) )
))
(declare-datatypes ((ListLongMap!3601 0))(
  ( (ListLongMap!3602 (toList!1816 List!3596)) )
))
(declare-fun contains!1697 (ListLongMap!3601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1339 (array!11796 array!11794 (_ BitVec 32) (_ BitVec 32) V!7993 V!7993 (_ BitVec 32) Int) ListLongMap!3601)

(assert (=> b!238246 (= res!116763 (not (contains!1697 (getCurrentListMap!1339 (_keys!6520 thiss!1504) (_values!4403 thiss!1504) (mask!10451 thiss!1504) (extraKeys!4157 thiss!1504) (zeroValue!4261 thiss!1504) (minValue!4261 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4420 thiss!1504)) key!932)))))

(declare-fun mapNonEmpty!10617 () Bool)

(declare-fun mapRes!10617 () Bool)

(declare-fun tp!22391 () Bool)

(declare-fun e!154705 () Bool)

(assert (=> mapNonEmpty!10617 (= mapRes!10617 (and tp!22391 e!154705))))

(declare-fun mapKey!10617 () (_ BitVec 32))

(declare-fun mapValue!10617 () ValueCell!2786)

(declare-fun mapRest!10617 () (Array (_ BitVec 32) ValueCell!2786))

(assert (=> mapNonEmpty!10617 (= (arr!5599 (_values!4403 thiss!1504)) (store mapRest!10617 mapKey!10617 mapValue!10617))))

(declare-fun b!238247 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!238247 (= e!154701 (not (validKeyInArray!0 key!932)))))

(declare-fun b!238248 () Bool)

(declare-fun res!116764 () Bool)

(assert (=> b!238248 (=> (not res!116764) (not e!154701))))

(declare-datatypes ((List!3597 0))(
  ( (Nil!3594) (Cons!3593 (h!4249 (_ BitVec 64)) (t!8598 List!3597)) )
))
(declare-fun arrayNoDuplicates!0 (array!11796 (_ BitVec 32) List!3597) Bool)

(assert (=> b!238248 (= res!116764 (arrayNoDuplicates!0 (_keys!6520 thiss!1504) #b00000000000000000000000000000000 Nil!3594))))

(declare-fun b!238249 () Bool)

(declare-fun res!116759 () Bool)

(declare-fun e!154702 () Bool)

(assert (=> b!238249 (=> (not res!116759) (not e!154702))))

(assert (=> b!238249 (= res!116759 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun tp_is_empty!6259 () Bool)

(declare-fun e!154703 () Bool)

(declare-fun e!154706 () Bool)

(declare-fun array_inv!3691 (array!11796) Bool)

(declare-fun array_inv!3692 (array!11794) Bool)

(assert (=> b!238250 (= e!154706 (and tp!22392 tp_is_empty!6259 (array_inv!3691 (_keys!6520 thiss!1504)) (array_inv!3692 (_values!4403 thiss!1504)) e!154703))))

(declare-fun res!116760 () Bool)

(assert (=> start!22886 (=> (not res!116760) (not e!154702))))

(declare-fun valid!1363 (LongMapFixedSize!3472) Bool)

(assert (=> start!22886 (= res!116760 (valid!1363 thiss!1504))))

(assert (=> start!22886 e!154702))

(assert (=> start!22886 e!154706))

(assert (=> start!22886 true))

(declare-fun b!238251 () Bool)

(declare-fun res!116765 () Bool)

(assert (=> b!238251 (=> (not res!116765) (not e!154701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238251 (= res!116765 (validMask!0 (mask!10451 thiss!1504)))))

(declare-fun b!238252 () Bool)

(declare-fun res!116758 () Bool)

(assert (=> b!238252 (=> (not res!116758) (not e!154701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11796 (_ BitVec 32)) Bool)

(assert (=> b!238252 (= res!116758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6520 thiss!1504) (mask!10451 thiss!1504)))))

(declare-fun b!238253 () Bool)

(assert (=> b!238253 (= e!154705 tp_is_empty!6259)))

(declare-fun b!238254 () Bool)

(declare-fun e!154700 () Bool)

(assert (=> b!238254 (= e!154700 tp_is_empty!6259)))

(declare-fun b!238255 () Bool)

(assert (=> b!238255 (= e!154702 e!154701)))

(declare-fun res!116762 () Bool)

(assert (=> b!238255 (=> (not res!116762) (not e!154701))))

(declare-datatypes ((SeekEntryResult!1025 0))(
  ( (MissingZero!1025 (index!6270 (_ BitVec 32))) (Found!1025 (index!6271 (_ BitVec 32))) (Intermediate!1025 (undefined!1837 Bool) (index!6272 (_ BitVec 32)) (x!24039 (_ BitVec 32))) (Undefined!1025) (MissingVacant!1025 (index!6273 (_ BitVec 32))) )
))
(declare-fun lt!120523 () SeekEntryResult!1025)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238255 (= res!116762 (or (= lt!120523 (MissingZero!1025 index!297)) (= lt!120523 (MissingVacant!1025 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11796 (_ BitVec 32)) SeekEntryResult!1025)

(assert (=> b!238255 (= lt!120523 (seekEntryOrOpen!0 key!932 (_keys!6520 thiss!1504) (mask!10451 thiss!1504)))))

(declare-fun mapIsEmpty!10617 () Bool)

(assert (=> mapIsEmpty!10617 mapRes!10617))

(declare-fun b!238256 () Bool)

(assert (=> b!238256 (= e!154703 (and e!154700 mapRes!10617))))

(declare-fun condMapEmpty!10617 () Bool)

(declare-fun mapDefault!10617 () ValueCell!2786)

