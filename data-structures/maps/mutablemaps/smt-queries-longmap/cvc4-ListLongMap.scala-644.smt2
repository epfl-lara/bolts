; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16228 () Bool)

(assert start!16228)

(declare-fun b!161707 () Bool)

(declare-fun b_free!3677 () Bool)

(declare-fun b_next!3677 () Bool)

(assert (=> b!161707 (= b_free!3677 (not b_next!3677))))

(declare-fun tp!13600 () Bool)

(declare-fun b_and!10109 () Bool)

(assert (=> b!161707 (= tp!13600 b_and!10109)))

(declare-fun b!161706 () Bool)

(declare-fun e!105765 () Bool)

(declare-fun tp_is_empty!3479 () Bool)

(assert (=> b!161706 (= e!105765 tp_is_empty!3479)))

(declare-fun e!105768 () Bool)

(declare-fun e!105769 () Bool)

(declare-datatypes ((V!4285 0))(
  ( (V!4286 (val!1784 Int)) )
))
(declare-datatypes ((ValueCell!1396 0))(
  ( (ValueCellFull!1396 (v!3645 V!4285)) (EmptyCell!1396) )
))
(declare-datatypes ((array!6036 0))(
  ( (array!6037 (arr!2862 (Array (_ BitVec 32) (_ BitVec 64))) (size!3146 (_ BitVec 32))) )
))
(declare-datatypes ((array!6038 0))(
  ( (array!6039 (arr!2863 (Array (_ BitVec 32) ValueCell!1396)) (size!3147 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1700 0))(
  ( (LongMapFixedSize!1701 (defaultEntry!3292 Int) (mask!7892 (_ BitVec 32)) (extraKeys!3033 (_ BitVec 32)) (zeroValue!3135 V!4285) (minValue!3135 V!4285) (_size!899 (_ BitVec 32)) (_keys!5093 array!6036) (_values!3275 array!6038) (_vacant!899 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1700)

(declare-fun array_inv!1819 (array!6036) Bool)

(declare-fun array_inv!1820 (array!6038) Bool)

(assert (=> b!161707 (= e!105769 (and tp!13600 tp_is_empty!3479 (array_inv!1819 (_keys!5093 thiss!1248)) (array_inv!1820 (_values!3275 thiss!1248)) e!105768))))

(declare-fun b!161708 () Bool)

(declare-fun e!105766 () Bool)

(assert (=> b!161708 (= e!105766 tp_is_empty!3479)))

(declare-fun b!161709 () Bool)

(declare-fun e!105767 () Bool)

(declare-datatypes ((SeekEntryResult!370 0))(
  ( (MissingZero!370 (index!3648 (_ BitVec 32))) (Found!370 (index!3649 (_ BitVec 32))) (Intermediate!370 (undefined!1182 Bool) (index!3650 (_ BitVec 32)) (x!17866 (_ BitVec 32))) (Undefined!370) (MissingVacant!370 (index!3651 (_ BitVec 32))) )
))
(declare-fun lt!82295 () SeekEntryResult!370)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161709 (= e!105767 (and (not (is-Undefined!370 lt!82295)) (is-MissingVacant!370 lt!82295) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6036 (_ BitVec 32)) SeekEntryResult!370)

(assert (=> b!161709 (= lt!82295 (seekEntryOrOpen!0 key!828 (_keys!5093 thiss!1248) (mask!7892 thiss!1248)))))

(declare-fun mapIsEmpty!5906 () Bool)

(declare-fun mapRes!5906 () Bool)

(assert (=> mapIsEmpty!5906 mapRes!5906))

(declare-fun mapNonEmpty!5906 () Bool)

(declare-fun tp!13601 () Bool)

(assert (=> mapNonEmpty!5906 (= mapRes!5906 (and tp!13601 e!105765))))

(declare-fun mapKey!5906 () (_ BitVec 32))

(declare-fun mapRest!5906 () (Array (_ BitVec 32) ValueCell!1396))

(declare-fun mapValue!5906 () ValueCell!1396)

(assert (=> mapNonEmpty!5906 (= (arr!2863 (_values!3275 thiss!1248)) (store mapRest!5906 mapKey!5906 mapValue!5906))))

(declare-fun res!76624 () Bool)

(assert (=> start!16228 (=> (not res!76624) (not e!105767))))

(declare-fun valid!769 (LongMapFixedSize!1700) Bool)

(assert (=> start!16228 (= res!76624 (valid!769 thiss!1248))))

(assert (=> start!16228 e!105767))

(assert (=> start!16228 e!105769))

(assert (=> start!16228 true))

(declare-fun b!161710 () Bool)

(assert (=> b!161710 (= e!105768 (and e!105766 mapRes!5906))))

(declare-fun condMapEmpty!5906 () Bool)

(declare-fun mapDefault!5906 () ValueCell!1396)

