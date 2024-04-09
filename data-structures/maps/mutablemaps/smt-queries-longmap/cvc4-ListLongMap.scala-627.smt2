; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16126 () Bool)

(assert start!16126)

(declare-fun b!160243 () Bool)

(declare-fun b_free!3575 () Bool)

(declare-fun b_next!3575 () Bool)

(assert (=> b!160243 (= b_free!3575 (not b_next!3575))))

(declare-fun tp!13294 () Bool)

(declare-fun b_and!10007 () Bool)

(assert (=> b!160243 (= tp!13294 b_and!10007)))

(declare-fun tp_is_empty!3377 () Bool)

(declare-fun e!104804 () Bool)

(declare-datatypes ((V!4149 0))(
  ( (V!4150 (val!1733 Int)) )
))
(declare-datatypes ((ValueCell!1345 0))(
  ( (ValueCellFull!1345 (v!3594 V!4149)) (EmptyCell!1345) )
))
(declare-datatypes ((array!5832 0))(
  ( (array!5833 (arr!2760 (Array (_ BitVec 32) (_ BitVec 64))) (size!3044 (_ BitVec 32))) )
))
(declare-datatypes ((array!5834 0))(
  ( (array!5835 (arr!2761 (Array (_ BitVec 32) ValueCell!1345)) (size!3045 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1598 0))(
  ( (LongMapFixedSize!1599 (defaultEntry!3241 Int) (mask!7807 (_ BitVec 32)) (extraKeys!2982 (_ BitVec 32)) (zeroValue!3084 V!4149) (minValue!3084 V!4149) (_size!848 (_ BitVec 32)) (_keys!5042 array!5832) (_values!3224 array!5834) (_vacant!848 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1598)

(declare-fun e!104807 () Bool)

(declare-fun array_inv!1753 (array!5832) Bool)

(declare-fun array_inv!1754 (array!5834) Bool)

(assert (=> b!160243 (= e!104804 (and tp!13294 tp_is_empty!3377 (array_inv!1753 (_keys!5042 thiss!1248)) (array_inv!1754 (_values!3224 thiss!1248)) e!104807))))

(declare-fun mapIsEmpty!5753 () Bool)

(declare-fun mapRes!5753 () Bool)

(assert (=> mapIsEmpty!5753 mapRes!5753))

(declare-fun b!160244 () Bool)

(declare-fun res!75869 () Bool)

(declare-fun e!104802 () Bool)

(assert (=> b!160244 (=> (not res!75869) (not e!104802))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2902 0))(
  ( (tuple2!2903 (_1!1461 (_ BitVec 64)) (_2!1461 V!4149)) )
))
(declare-datatypes ((List!1958 0))(
  ( (Nil!1955) (Cons!1954 (h!2567 tuple2!2902) (t!6768 List!1958)) )
))
(declare-datatypes ((ListLongMap!1911 0))(
  ( (ListLongMap!1912 (toList!971 List!1958)) )
))
(declare-fun contains!1001 (ListLongMap!1911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!631 (array!5832 array!5834 (_ BitVec 32) (_ BitVec 32) V!4149 V!4149 (_ BitVec 32) Int) ListLongMap!1911)

(assert (=> b!160244 (= res!75869 (not (contains!1001 (getCurrentListMap!631 (_keys!5042 thiss!1248) (_values!3224 thiss!1248) (mask!7807 thiss!1248) (extraKeys!2982 thiss!1248) (zeroValue!3084 thiss!1248) (minValue!3084 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3241 thiss!1248)) key!828)))))

(declare-fun res!75868 () Bool)

(assert (=> start!16126 (=> (not res!75868) (not e!104802))))

(declare-fun valid!737 (LongMapFixedSize!1598) Bool)

(assert (=> start!16126 (= res!75868 (valid!737 thiss!1248))))

(assert (=> start!16126 e!104802))

(assert (=> start!16126 e!104804))

(assert (=> start!16126 true))

(declare-fun mapNonEmpty!5753 () Bool)

(declare-fun tp!13295 () Bool)

(declare-fun e!104806 () Bool)

(assert (=> mapNonEmpty!5753 (= mapRes!5753 (and tp!13295 e!104806))))

(declare-fun mapKey!5753 () (_ BitVec 32))

(declare-fun mapRest!5753 () (Array (_ BitVec 32) ValueCell!1345))

(declare-fun mapValue!5753 () ValueCell!1345)

(assert (=> mapNonEmpty!5753 (= (arr!2761 (_values!3224 thiss!1248)) (store mapRest!5753 mapKey!5753 mapValue!5753))))

(declare-fun b!160245 () Bool)

(declare-fun e!104803 () Bool)

(assert (=> b!160245 (= e!104803 tp_is_empty!3377)))

(declare-fun b!160246 () Bool)

(declare-fun res!75863 () Bool)

(assert (=> b!160246 (=> (not res!75863) (not e!104802))))

(declare-datatypes ((SeekEntryResult!338 0))(
  ( (MissingZero!338 (index!3520 (_ BitVec 32))) (Found!338 (index!3521 (_ BitVec 32))) (Intermediate!338 (undefined!1150 Bool) (index!3522 (_ BitVec 32)) (x!17698 (_ BitVec 32))) (Undefined!338) (MissingVacant!338 (index!3523 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5832 (_ BitVec 32)) SeekEntryResult!338)

(assert (=> b!160246 (= res!75863 (is-Undefined!338 (seekEntryOrOpen!0 key!828 (_keys!5042 thiss!1248) (mask!7807 thiss!1248))))))

(declare-fun b!160247 () Bool)

(assert (=> b!160247 (= e!104806 tp_is_empty!3377)))

(declare-fun b!160248 () Bool)

(declare-fun res!75865 () Bool)

(assert (=> b!160248 (=> (not res!75865) (not e!104802))))

(assert (=> b!160248 (= res!75865 (and (= (size!3045 (_values!3224 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7807 thiss!1248))) (= (size!3044 (_keys!5042 thiss!1248)) (size!3045 (_values!3224 thiss!1248))) (bvsge (mask!7807 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2982 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2982 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160249 () Bool)

(declare-fun res!75866 () Bool)

(assert (=> b!160249 (=> (not res!75866) (not e!104802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5832 (_ BitVec 32)) Bool)

(assert (=> b!160249 (= res!75866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5042 thiss!1248) (mask!7807 thiss!1248)))))

(declare-fun b!160250 () Bool)

(assert (=> b!160250 (= e!104802 false)))

(declare-fun lt!82097 () Bool)

(declare-datatypes ((List!1959 0))(
  ( (Nil!1956) (Cons!1955 (h!2568 (_ BitVec 64)) (t!6769 List!1959)) )
))
(declare-fun arrayNoDuplicates!0 (array!5832 (_ BitVec 32) List!1959) Bool)

(assert (=> b!160250 (= lt!82097 (arrayNoDuplicates!0 (_keys!5042 thiss!1248) #b00000000000000000000000000000000 Nil!1956))))

(declare-fun b!160251 () Bool)

(declare-fun res!75864 () Bool)

(assert (=> b!160251 (=> (not res!75864) (not e!104802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!160251 (= res!75864 (validMask!0 (mask!7807 thiss!1248)))))

(declare-fun b!160252 () Bool)

(declare-fun res!75867 () Bool)

(assert (=> b!160252 (=> (not res!75867) (not e!104802))))

(assert (=> b!160252 (= res!75867 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160253 () Bool)

(assert (=> b!160253 (= e!104807 (and e!104803 mapRes!5753))))

(declare-fun condMapEmpty!5753 () Bool)

(declare-fun mapDefault!5753 () ValueCell!1345)

