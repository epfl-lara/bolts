; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16336 () Bool)

(assert start!16336)

(declare-fun b!162802 () Bool)

(declare-fun b_free!3775 () Bool)

(declare-fun b_next!3775 () Bool)

(assert (=> b!162802 (= b_free!3775 (not b_next!3775))))

(declare-fun tp!13897 () Bool)

(declare-fun b_and!10207 () Bool)

(assert (=> b!162802 (= tp!13897 b_and!10207)))

(declare-fun b!162798 () Bool)

(declare-fun e!106808 () Bool)

(declare-fun tp_is_empty!3577 () Bool)

(assert (=> b!162798 (= e!106808 tp_is_empty!3577)))

(declare-fun b!162799 () Bool)

(declare-fun res!77105 () Bool)

(declare-fun e!106805 () Bool)

(assert (=> b!162799 (=> (not res!77105) (not e!106805))))

(declare-datatypes ((V!4417 0))(
  ( (V!4418 (val!1833 Int)) )
))
(declare-datatypes ((ValueCell!1445 0))(
  ( (ValueCellFull!1445 (v!3694 V!4417)) (EmptyCell!1445) )
))
(declare-datatypes ((array!6234 0))(
  ( (array!6235 (arr!2960 (Array (_ BitVec 32) (_ BitVec 64))) (size!3244 (_ BitVec 32))) )
))
(declare-datatypes ((array!6236 0))(
  ( (array!6237 (arr!2961 (Array (_ BitVec 32) ValueCell!1445)) (size!3245 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1798 0))(
  ( (LongMapFixedSize!1799 (defaultEntry!3341 Int) (mask!7977 (_ BitVec 32)) (extraKeys!3082 (_ BitVec 32)) (zeroValue!3184 V!4417) (minValue!3184 V!4417) (_size!948 (_ BitVec 32)) (_keys!5143 array!6234) (_values!3324 array!6236) (_vacant!948 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1798)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!162799 (= res!77105 (validMask!0 (mask!7977 thiss!1248)))))

(declare-fun res!77102 () Bool)

(declare-fun e!106804 () Bool)

(assert (=> start!16336 (=> (not res!77102) (not e!106804))))

(declare-fun valid!800 (LongMapFixedSize!1798) Bool)

(assert (=> start!16336 (= res!77102 (valid!800 thiss!1248))))

(assert (=> start!16336 e!106804))

(declare-fun e!106802 () Bool)

(assert (=> start!16336 e!106802))

(assert (=> start!16336 true))

(declare-fun b!162800 () Bool)

(assert (=> b!162800 (= e!106804 e!106805)))

(declare-fun res!77103 () Bool)

(assert (=> b!162800 (=> (not res!77103) (not e!106805))))

(declare-datatypes ((SeekEntryResult!402 0))(
  ( (MissingZero!402 (index!3776 (_ BitVec 32))) (Found!402 (index!3777 (_ BitVec 32))) (Intermediate!402 (undefined!1214 Bool) (index!3778 (_ BitVec 32)) (x!18042 (_ BitVec 32))) (Undefined!402) (MissingVacant!402 (index!3779 (_ BitVec 32))) )
))
(declare-fun lt!82577 () SeekEntryResult!402)

(assert (=> b!162800 (= res!77103 (and (not (is-Undefined!402 lt!82577)) (not (is-MissingVacant!402 lt!82577)) (not (is-MissingZero!402 lt!82577)) (is-Found!402 lt!82577)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6234 (_ BitVec 32)) SeekEntryResult!402)

(assert (=> b!162800 (= lt!82577 (seekEntryOrOpen!0 key!828 (_keys!5143 thiss!1248) (mask!7977 thiss!1248)))))

(declare-fun mapNonEmpty!6056 () Bool)

(declare-fun mapRes!6056 () Bool)

(declare-fun tp!13898 () Bool)

(assert (=> mapNonEmpty!6056 (= mapRes!6056 (and tp!13898 e!106808))))

(declare-fun mapValue!6056 () ValueCell!1445)

(declare-fun mapRest!6056 () (Array (_ BitVec 32) ValueCell!1445))

(declare-fun mapKey!6056 () (_ BitVec 32))

(assert (=> mapNonEmpty!6056 (= (arr!2961 (_values!3324 thiss!1248)) (store mapRest!6056 mapKey!6056 mapValue!6056))))

(declare-fun mapIsEmpty!6056 () Bool)

(assert (=> mapIsEmpty!6056 mapRes!6056))

(declare-fun b!162801 () Bool)

(declare-fun e!106803 () Bool)

(assert (=> b!162801 (= e!106803 tp_is_empty!3577)))

(declare-fun e!106806 () Bool)

(declare-fun array_inv!1881 (array!6234) Bool)

(declare-fun array_inv!1882 (array!6236) Bool)

(assert (=> b!162802 (= e!106802 (and tp!13897 tp_is_empty!3577 (array_inv!1881 (_keys!5143 thiss!1248)) (array_inv!1882 (_values!3324 thiss!1248)) e!106806))))

(declare-fun b!162803 () Bool)

(assert (=> b!162803 (= e!106806 (and e!106803 mapRes!6056))))

(declare-fun condMapEmpty!6056 () Bool)

(declare-fun mapDefault!6056 () ValueCell!1445)

