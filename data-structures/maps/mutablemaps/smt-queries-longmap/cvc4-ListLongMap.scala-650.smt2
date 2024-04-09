; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16264 () Bool)

(assert start!16264)

(declare-fun b!162112 () Bool)

(declare-fun b_free!3713 () Bool)

(declare-fun b_next!3713 () Bool)

(assert (=> b!162112 (= b_free!3713 (not b_next!3713))))

(declare-fun tp!13709 () Bool)

(declare-fun b_and!10145 () Bool)

(assert (=> b!162112 (= tp!13709 b_and!10145)))

(declare-fun b!162110 () Bool)

(declare-fun e!106152 () Bool)

(assert (=> b!162110 (= e!106152 false)))

(declare-fun lt!82411 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4333 0))(
  ( (V!4334 (val!1802 Int)) )
))
(declare-fun v!309 () V!4333)

(declare-datatypes ((ValueCell!1414 0))(
  ( (ValueCellFull!1414 (v!3663 V!4333)) (EmptyCell!1414) )
))
(declare-datatypes ((array!6108 0))(
  ( (array!6109 (arr!2898 (Array (_ BitVec 32) (_ BitVec 64))) (size!3182 (_ BitVec 32))) )
))
(declare-datatypes ((array!6110 0))(
  ( (array!6111 (arr!2899 (Array (_ BitVec 32) ValueCell!1414)) (size!3183 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1736 0))(
  ( (LongMapFixedSize!1737 (defaultEntry!3310 Int) (mask!7922 (_ BitVec 32)) (extraKeys!3051 (_ BitVec 32)) (zeroValue!3153 V!4333) (minValue!3153 V!4333) (_size!917 (_ BitVec 32)) (_keys!5111 array!6108) (_values!3293 array!6110) (_vacant!917 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1736)

(declare-datatypes ((SeekEntryResult!383 0))(
  ( (MissingZero!383 (index!3700 (_ BitVec 32))) (Found!383 (index!3701 (_ BitVec 32))) (Intermediate!383 (undefined!1195 Bool) (index!3702 (_ BitVec 32)) (x!17927 (_ BitVec 32))) (Undefined!383) (MissingVacant!383 (index!3703 (_ BitVec 32))) )
))
(declare-fun lt!82412 () SeekEntryResult!383)

(declare-fun valid!780 (LongMapFixedSize!1736) Bool)

(declare-datatypes ((tuple2!2986 0))(
  ( (tuple2!2987 (_1!1503 Bool) (_2!1503 LongMapFixedSize!1736)) )
))
(declare-fun updateHelperNewKey!81 (LongMapFixedSize!1736 (_ BitVec 64) V!4333 (_ BitVec 32)) tuple2!2986)

(assert (=> b!162110 (= lt!82411 (valid!780 (_2!1503 (updateHelperNewKey!81 thiss!1248 key!828 v!309 (index!3703 lt!82412)))))))

(declare-fun b!162111 () Bool)

(declare-fun e!106153 () Bool)

(declare-fun tp_is_empty!3515 () Bool)

(assert (=> b!162111 (= e!106153 tp_is_empty!3515)))

(declare-fun mapNonEmpty!5960 () Bool)

(declare-fun mapRes!5960 () Bool)

(declare-fun tp!13708 () Bool)

(assert (=> mapNonEmpty!5960 (= mapRes!5960 (and tp!13708 e!106153))))

(declare-fun mapRest!5960 () (Array (_ BitVec 32) ValueCell!1414))

(declare-fun mapKey!5960 () (_ BitVec 32))

(declare-fun mapValue!5960 () ValueCell!1414)

(assert (=> mapNonEmpty!5960 (= (arr!2899 (_values!3293 thiss!1248)) (store mapRest!5960 mapKey!5960 mapValue!5960))))

(declare-fun b!162113 () Bool)

(declare-fun e!106151 () Bool)

(assert (=> b!162113 (= e!106151 e!106152)))

(declare-fun res!76812 () Bool)

(assert (=> b!162113 (=> (not res!76812) (not e!106152))))

(assert (=> b!162113 (= res!76812 (and (not (is-Undefined!383 lt!82412)) (is-MissingVacant!383 lt!82412)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6108 (_ BitVec 32)) SeekEntryResult!383)

(assert (=> b!162113 (= lt!82412 (seekEntryOrOpen!0 key!828 (_keys!5111 thiss!1248) (mask!7922 thiss!1248)))))

(declare-fun mapIsEmpty!5960 () Bool)

(assert (=> mapIsEmpty!5960 mapRes!5960))

(declare-fun b!162114 () Bool)

(declare-fun res!76813 () Bool)

(assert (=> b!162114 (=> (not res!76813) (not e!106151))))

(assert (=> b!162114 (= res!76813 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162115 () Bool)

(declare-fun e!106156 () Bool)

(declare-fun e!106157 () Bool)

(assert (=> b!162115 (= e!106156 (and e!106157 mapRes!5960))))

(declare-fun condMapEmpty!5960 () Bool)

(declare-fun mapDefault!5960 () ValueCell!1414)

