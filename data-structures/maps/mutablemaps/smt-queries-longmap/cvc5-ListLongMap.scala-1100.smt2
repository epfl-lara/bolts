; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22576 () Bool)

(assert start!22576)

(declare-fun b!235881 () Bool)

(declare-fun b_free!6349 () Bool)

(declare-fun b_next!6349 () Bool)

(assert (=> b!235881 (= b_free!6349 (not b_next!6349))))

(declare-fun tp!22220 () Bool)

(declare-fun b_and!13299 () Bool)

(assert (=> b!235881 (= tp!22220 b_and!13299)))

(declare-fun res!115708 () Bool)

(declare-fun e!153202 () Bool)

(assert (=> start!22576 (=> (not res!115708) (not e!153202))))

(declare-datatypes ((V!7929 0))(
  ( (V!7930 (val!3150 Int)) )
))
(declare-datatypes ((ValueCell!2762 0))(
  ( (ValueCellFull!2762 (v!5175 V!7929)) (EmptyCell!2762) )
))
(declare-datatypes ((array!11682 0))(
  ( (array!11683 (arr!5551 (Array (_ BitVec 32) ValueCell!2762)) (size!5888 (_ BitVec 32))) )
))
(declare-datatypes ((array!11684 0))(
  ( (array!11685 (arr!5552 (Array (_ BitVec 32) (_ BitVec 64))) (size!5889 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3424 0))(
  ( (LongMapFixedSize!3425 (defaultEntry!4384 Int) (mask!10365 (_ BitVec 32)) (extraKeys!4121 (_ BitVec 32)) (zeroValue!4225 V!7929) (minValue!4225 V!7929) (_size!1761 (_ BitVec 32)) (_keys!6462 array!11684) (_values!4367 array!11682) (_vacant!1761 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3424)

(declare-fun valid!1345 (LongMapFixedSize!3424) Bool)

(assert (=> start!22576 (= res!115708 (valid!1345 thiss!1504))))

(assert (=> start!22576 e!153202))

(declare-fun e!153199 () Bool)

(assert (=> start!22576 e!153199))

(assert (=> start!22576 true))

(declare-fun b!235877 () Bool)

(declare-fun e!153198 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235877 (= e!153198 (not (validMask!0 (mask!10365 thiss!1504))))))

(declare-fun b!235878 () Bool)

(declare-fun res!115707 () Bool)

(assert (=> b!235878 (=> (not res!115707) (not e!153198))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4638 0))(
  ( (tuple2!4639 (_1!2329 (_ BitVec 64)) (_2!2329 V!7929)) )
))
(declare-datatypes ((List!3569 0))(
  ( (Nil!3566) (Cons!3565 (h!4217 tuple2!4638) (t!8554 List!3569)) )
))
(declare-datatypes ((ListLongMap!3565 0))(
  ( (ListLongMap!3566 (toList!1798 List!3569)) )
))
(declare-fun contains!1670 (ListLongMap!3565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1321 (array!11684 array!11682 (_ BitVec 32) (_ BitVec 32) V!7929 V!7929 (_ BitVec 32) Int) ListLongMap!3565)

(assert (=> b!235878 (= res!115707 (not (contains!1670 (getCurrentListMap!1321 (_keys!6462 thiss!1504) (_values!4367 thiss!1504) (mask!10365 thiss!1504) (extraKeys!4121 thiss!1504) (zeroValue!4225 thiss!1504) (minValue!4225 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4384 thiss!1504)) key!932)))))

(declare-fun b!235879 () Bool)

(assert (=> b!235879 (= e!153202 e!153198)))

(declare-fun res!115709 () Bool)

(assert (=> b!235879 (=> (not res!115709) (not e!153198))))

(declare-datatypes ((SeekEntryResult!1007 0))(
  ( (MissingZero!1007 (index!6198 (_ BitVec 32))) (Found!1007 (index!6199 (_ BitVec 32))) (Intermediate!1007 (undefined!1819 Bool) (index!6200 (_ BitVec 32)) (x!23845 (_ BitVec 32))) (Undefined!1007) (MissingVacant!1007 (index!6201 (_ BitVec 32))) )
))
(declare-fun lt!119297 () SeekEntryResult!1007)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235879 (= res!115709 (or (= lt!119297 (MissingZero!1007 index!297)) (= lt!119297 (MissingVacant!1007 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11684 (_ BitVec 32)) SeekEntryResult!1007)

(assert (=> b!235879 (= lt!119297 (seekEntryOrOpen!0 key!932 (_keys!6462 thiss!1504) (mask!10365 thiss!1504)))))

(declare-fun mapIsEmpty!10517 () Bool)

(declare-fun mapRes!10517 () Bool)

(assert (=> mapIsEmpty!10517 mapRes!10517))

(declare-fun b!235880 () Bool)

(declare-fun e!153204 () Bool)

(declare-fun tp_is_empty!6211 () Bool)

(assert (=> b!235880 (= e!153204 tp_is_empty!6211)))

(declare-fun mapNonEmpty!10517 () Bool)

(declare-fun tp!22219 () Bool)

(declare-fun e!153201 () Bool)

(assert (=> mapNonEmpty!10517 (= mapRes!10517 (and tp!22219 e!153201))))

(declare-fun mapValue!10517 () ValueCell!2762)

(declare-fun mapKey!10517 () (_ BitVec 32))

(declare-fun mapRest!10517 () (Array (_ BitVec 32) ValueCell!2762))

(assert (=> mapNonEmpty!10517 (= (arr!5551 (_values!4367 thiss!1504)) (store mapRest!10517 mapKey!10517 mapValue!10517))))

(declare-fun e!153203 () Bool)

(declare-fun array_inv!3653 (array!11684) Bool)

(declare-fun array_inv!3654 (array!11682) Bool)

(assert (=> b!235881 (= e!153199 (and tp!22220 tp_is_empty!6211 (array_inv!3653 (_keys!6462 thiss!1504)) (array_inv!3654 (_values!4367 thiss!1504)) e!153203))))

(declare-fun b!235882 () Bool)

(assert (=> b!235882 (= e!153201 tp_is_empty!6211)))

(declare-fun b!235883 () Bool)

(declare-fun res!115710 () Bool)

(assert (=> b!235883 (=> (not res!115710) (not e!153202))))

(assert (=> b!235883 (= res!115710 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235884 () Bool)

(assert (=> b!235884 (= e!153203 (and e!153204 mapRes!10517))))

(declare-fun condMapEmpty!10517 () Bool)

(declare-fun mapDefault!10517 () ValueCell!2762)

