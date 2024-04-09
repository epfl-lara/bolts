; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21624 () Bool)

(assert start!21624)

(declare-fun b!216531 () Bool)

(declare-fun b_free!5761 () Bool)

(declare-fun b_next!5761 () Bool)

(assert (=> b!216531 (= b_free!5761 (not b_next!5761))))

(declare-fun tp!20417 () Bool)

(declare-fun b_and!12669 () Bool)

(assert (=> b!216531 (= tp!20417 b_and!12669)))

(declare-fun mapNonEmpty!9597 () Bool)

(declare-fun mapRes!9597 () Bool)

(declare-fun tp!20418 () Bool)

(declare-fun e!140886 () Bool)

(assert (=> mapNonEmpty!9597 (= mapRes!9597 (and tp!20418 e!140886))))

(declare-datatypes ((V!7145 0))(
  ( (V!7146 (val!2856 Int)) )
))
(declare-datatypes ((ValueCell!2468 0))(
  ( (ValueCellFull!2468 (v!4870 V!7145)) (EmptyCell!2468) )
))
(declare-fun mapRest!9597 () (Array (_ BitVec 32) ValueCell!2468))

(declare-fun mapKey!9597 () (_ BitVec 32))

(declare-datatypes ((array!10484 0))(
  ( (array!10485 (arr!4963 (Array (_ BitVec 32) ValueCell!2468)) (size!5295 (_ BitVec 32))) )
))
(declare-datatypes ((array!10486 0))(
  ( (array!10487 (arr!4964 (Array (_ BitVec 32) (_ BitVec 64))) (size!5296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2836 0))(
  ( (LongMapFixedSize!2837 (defaultEntry!4068 Int) (mask!9807 (_ BitVec 32)) (extraKeys!3805 (_ BitVec 32)) (zeroValue!3909 V!7145) (minValue!3909 V!7145) (_size!1467 (_ BitVec 32)) (_keys!6117 array!10486) (_values!4051 array!10484) (_vacant!1467 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2836)

(declare-fun mapValue!9597 () ValueCell!2468)

(assert (=> mapNonEmpty!9597 (= (arr!4963 (_values!4051 thiss!1504)) (store mapRest!9597 mapKey!9597 mapValue!9597))))

(declare-fun b!216524 () Bool)

(declare-fun tp_is_empty!5623 () Bool)

(assert (=> b!216524 (= e!140886 tp_is_empty!5623)))

(declare-fun b!216525 () Bool)

(declare-fun e!140881 () Bool)

(assert (=> b!216525 (= e!140881 false)))

(declare-fun lt!111210 () Bool)

(declare-datatypes ((List!3173 0))(
  ( (Nil!3170) (Cons!3169 (h!3816 (_ BitVec 64)) (t!8136 List!3173)) )
))
(declare-fun arrayNoDuplicates!0 (array!10486 (_ BitVec 32) List!3173) Bool)

(assert (=> b!216525 (= lt!111210 (arrayNoDuplicates!0 (_keys!6117 thiss!1504) #b00000000000000000000000000000000 Nil!3170))))

(declare-fun b!216526 () Bool)

(declare-fun e!140884 () Bool)

(assert (=> b!216526 (= e!140884 tp_is_empty!5623)))

(declare-fun b!216527 () Bool)

(declare-fun res!105915 () Bool)

(declare-fun e!140882 () Bool)

(assert (=> b!216527 (=> (not res!105915) (not e!140882))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216527 (= res!105915 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216528 () Bool)

(declare-fun res!105912 () Bool)

(assert (=> b!216528 (=> (not res!105912) (not e!140881))))

(assert (=> b!216528 (= res!105912 (and (= (size!5295 (_values!4051 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9807 thiss!1504))) (= (size!5296 (_keys!6117 thiss!1504)) (size!5295 (_values!4051 thiss!1504))) (bvsge (mask!9807 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3805 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3805 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216529 () Bool)

(declare-fun res!105913 () Bool)

(assert (=> b!216529 (=> (not res!105913) (not e!140881))))

(declare-datatypes ((tuple2!4244 0))(
  ( (tuple2!4245 (_1!2132 (_ BitVec 64)) (_2!2132 V!7145)) )
))
(declare-datatypes ((List!3174 0))(
  ( (Nil!3171) (Cons!3170 (h!3817 tuple2!4244) (t!8137 List!3174)) )
))
(declare-datatypes ((ListLongMap!3171 0))(
  ( (ListLongMap!3172 (toList!1601 List!3174)) )
))
(declare-fun contains!1436 (ListLongMap!3171 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1124 (array!10486 array!10484 (_ BitVec 32) (_ BitVec 32) V!7145 V!7145 (_ BitVec 32) Int) ListLongMap!3171)

(assert (=> b!216529 (= res!105913 (contains!1436 (getCurrentListMap!1124 (_keys!6117 thiss!1504) (_values!4051 thiss!1504) (mask!9807 thiss!1504) (extraKeys!3805 thiss!1504) (zeroValue!3909 thiss!1504) (minValue!3909 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4068 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9597 () Bool)

(assert (=> mapIsEmpty!9597 mapRes!9597))

(declare-fun res!105911 () Bool)

(assert (=> start!21624 (=> (not res!105911) (not e!140882))))

(declare-fun valid!1145 (LongMapFixedSize!2836) Bool)

(assert (=> start!21624 (= res!105911 (valid!1145 thiss!1504))))

(assert (=> start!21624 e!140882))

(declare-fun e!140883 () Bool)

(assert (=> start!21624 e!140883))

(assert (=> start!21624 true))

(declare-fun b!216530 () Bool)

(assert (=> b!216530 (= e!140882 e!140881)))

(declare-fun res!105910 () Bool)

(assert (=> b!216530 (=> (not res!105910) (not e!140881))))

(declare-datatypes ((SeekEntryResult!757 0))(
  ( (MissingZero!757 (index!5198 (_ BitVec 32))) (Found!757 (index!5199 (_ BitVec 32))) (Intermediate!757 (undefined!1569 Bool) (index!5200 (_ BitVec 32)) (x!22661 (_ BitVec 32))) (Undefined!757) (MissingVacant!757 (index!5201 (_ BitVec 32))) )
))
(declare-fun lt!111211 () SeekEntryResult!757)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216530 (= res!105910 (or (= lt!111211 (MissingZero!757 index!297)) (= lt!111211 (MissingVacant!757 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10486 (_ BitVec 32)) SeekEntryResult!757)

(assert (=> b!216530 (= lt!111211 (seekEntryOrOpen!0 key!932 (_keys!6117 thiss!1504) (mask!9807 thiss!1504)))))

(declare-fun e!140885 () Bool)

(declare-fun array_inv!3275 (array!10486) Bool)

(declare-fun array_inv!3276 (array!10484) Bool)

(assert (=> b!216531 (= e!140883 (and tp!20417 tp_is_empty!5623 (array_inv!3275 (_keys!6117 thiss!1504)) (array_inv!3276 (_values!4051 thiss!1504)) e!140885))))

(declare-fun b!216532 () Bool)

(assert (=> b!216532 (= e!140885 (and e!140884 mapRes!9597))))

(declare-fun condMapEmpty!9597 () Bool)

(declare-fun mapDefault!9597 () ValueCell!2468)

