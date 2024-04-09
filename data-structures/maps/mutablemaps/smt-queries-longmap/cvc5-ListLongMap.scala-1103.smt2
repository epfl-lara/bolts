; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22708 () Bool)

(assert start!22708)

(declare-fun b!236833 () Bool)

(declare-fun b_free!6367 () Bool)

(declare-fun b_next!6367 () Bool)

(assert (=> b!236833 (= b_free!6367 (not b_next!6367))))

(declare-fun tp!22285 () Bool)

(declare-fun b_and!13331 () Bool)

(assert (=> b!236833 (= tp!22285 b_and!13331)))

(declare-fun mapIsEmpty!10555 () Bool)

(declare-fun mapRes!10555 () Bool)

(assert (=> mapIsEmpty!10555 mapRes!10555))

(declare-fun b!236832 () Bool)

(declare-fun res!116121 () Bool)

(declare-fun e!153811 () Bool)

(assert (=> b!236832 (=> (not res!116121) (not e!153811))))

(declare-datatypes ((V!7953 0))(
  ( (V!7954 (val!3159 Int)) )
))
(declare-datatypes ((ValueCell!2771 0))(
  ( (ValueCellFull!2771 (v!5187 V!7953)) (EmptyCell!2771) )
))
(declare-datatypes ((array!11724 0))(
  ( (array!11725 (arr!5569 (Array (_ BitVec 32) ValueCell!2771)) (size!5908 (_ BitVec 32))) )
))
(declare-datatypes ((array!11726 0))(
  ( (array!11727 (arr!5570 (Array (_ BitVec 32) (_ BitVec 64))) (size!5909 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3442 0))(
  ( (LongMapFixedSize!3443 (defaultEntry!4398 Int) (mask!10399 (_ BitVec 32)) (extraKeys!4135 (_ BitVec 32)) (zeroValue!4239 V!7953) (minValue!4239 V!7953) (_size!1770 (_ BitVec 32)) (_keys!6485 array!11726) (_values!4381 array!11724) (_vacant!1770 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3442)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236832 (= res!116121 (validMask!0 (mask!10399 thiss!1504)))))

(declare-fun mapNonEmpty!10555 () Bool)

(declare-fun tp!22284 () Bool)

(declare-fun e!153810 () Bool)

(assert (=> mapNonEmpty!10555 (= mapRes!10555 (and tp!22284 e!153810))))

(declare-fun mapKey!10555 () (_ BitVec 32))

(declare-fun mapRest!10555 () (Array (_ BitVec 32) ValueCell!2771))

(declare-fun mapValue!10555 () ValueCell!2771)

(assert (=> mapNonEmpty!10555 (= (arr!5569 (_values!4381 thiss!1504)) (store mapRest!10555 mapKey!10555 mapValue!10555))))

(declare-fun e!153814 () Bool)

(declare-fun e!153809 () Bool)

(declare-fun tp_is_empty!6229 () Bool)

(declare-fun array_inv!3665 (array!11726) Bool)

(declare-fun array_inv!3666 (array!11724) Bool)

(assert (=> b!236833 (= e!153814 (and tp!22285 tp_is_empty!6229 (array_inv!3665 (_keys!6485 thiss!1504)) (array_inv!3666 (_values!4381 thiss!1504)) e!153809))))

(declare-fun b!236834 () Bool)

(declare-fun e!153812 () Bool)

(assert (=> b!236834 (= e!153812 e!153811)))

(declare-fun res!116118 () Bool)

(assert (=> b!236834 (=> (not res!116118) (not e!153811))))

(declare-datatypes ((SeekEntryResult!1014 0))(
  ( (MissingZero!1014 (index!6226 (_ BitVec 32))) (Found!1014 (index!6227 (_ BitVec 32))) (Intermediate!1014 (undefined!1826 Bool) (index!6228 (_ BitVec 32)) (x!23922 (_ BitVec 32))) (Undefined!1014) (MissingVacant!1014 (index!6229 (_ BitVec 32))) )
))
(declare-fun lt!119805 () SeekEntryResult!1014)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236834 (= res!116118 (or (= lt!119805 (MissingZero!1014 index!297)) (= lt!119805 (MissingVacant!1014 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11726 (_ BitVec 32)) SeekEntryResult!1014)

(assert (=> b!236834 (= lt!119805 (seekEntryOrOpen!0 key!932 (_keys!6485 thiss!1504) (mask!10399 thiss!1504)))))

(declare-fun b!236835 () Bool)

(assert (=> b!236835 (= e!153810 tp_is_empty!6229)))

(declare-fun res!116122 () Bool)

(assert (=> start!22708 (=> (not res!116122) (not e!153812))))

(declare-fun valid!1349 (LongMapFixedSize!3442) Bool)

(assert (=> start!22708 (= res!116122 (valid!1349 thiss!1504))))

(assert (=> start!22708 e!153812))

(assert (=> start!22708 e!153814))

(assert (=> start!22708 true))

(declare-fun b!236836 () Bool)

(declare-fun e!153813 () Bool)

(assert (=> b!236836 (= e!153809 (and e!153813 mapRes!10555))))

(declare-fun condMapEmpty!10555 () Bool)

(declare-fun mapDefault!10555 () ValueCell!2771)

