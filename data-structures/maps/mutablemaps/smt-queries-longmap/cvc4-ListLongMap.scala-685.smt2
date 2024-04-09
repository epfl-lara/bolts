; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16630 () Bool)

(assert start!16630)

(declare-fun b!165825 () Bool)

(declare-fun b_free!3923 () Bool)

(declare-fun b_next!3923 () Bool)

(assert (=> b!165825 (= b_free!3923 (not b_next!3923))))

(declare-fun tp!14370 () Bool)

(declare-fun b_and!10355 () Bool)

(assert (=> b!165825 (= tp!14370 b_and!10355)))

(declare-fun mapIsEmpty!6306 () Bool)

(declare-fun mapRes!6306 () Bool)

(assert (=> mapIsEmpty!6306 mapRes!6306))

(declare-fun b!165822 () Bool)

(declare-fun e!108778 () Bool)

(declare-fun e!108776 () Bool)

(assert (=> b!165822 (= e!108778 e!108776)))

(declare-fun res!78761 () Bool)

(assert (=> b!165822 (=> (not res!78761) (not e!108776))))

(declare-datatypes ((SeekEntryResult!454 0))(
  ( (MissingZero!454 (index!3984 (_ BitVec 32))) (Found!454 (index!3985 (_ BitVec 32))) (Intermediate!454 (undefined!1266 Bool) (index!3986 (_ BitVec 32)) (x!18386 (_ BitVec 32))) (Undefined!454) (MissingVacant!454 (index!3987 (_ BitVec 32))) )
))
(declare-fun lt!83171 () SeekEntryResult!454)

(assert (=> b!165822 (= res!78761 (and (not (is-Undefined!454 lt!83171)) (not (is-MissingVacant!454 lt!83171)) (not (is-MissingZero!454 lt!83171)) (is-Found!454 lt!83171)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4613 0))(
  ( (V!4614 (val!1907 Int)) )
))
(declare-datatypes ((ValueCell!1519 0))(
  ( (ValueCellFull!1519 (v!3768 V!4613)) (EmptyCell!1519) )
))
(declare-datatypes ((array!6546 0))(
  ( (array!6547 (arr!3108 (Array (_ BitVec 32) (_ BitVec 64))) (size!3396 (_ BitVec 32))) )
))
(declare-datatypes ((array!6548 0))(
  ( (array!6549 (arr!3109 (Array (_ BitVec 32) ValueCell!1519)) (size!3397 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1946 0))(
  ( (LongMapFixedSize!1947 (defaultEntry!3415 Int) (mask!8134 (_ BitVec 32)) (extraKeys!3156 (_ BitVec 32)) (zeroValue!3258 V!4613) (minValue!3258 V!4613) (_size!1022 (_ BitVec 32)) (_keys!5240 array!6546) (_values!3398 array!6548) (_vacant!1022 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1946)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6546 (_ BitVec 32)) SeekEntryResult!454)

(assert (=> b!165822 (= lt!83171 (seekEntryOrOpen!0 key!828 (_keys!5240 thiss!1248) (mask!8134 thiss!1248)))))

(declare-fun b!165823 () Bool)

(declare-fun res!78759 () Bool)

(assert (=> b!165823 (=> (not res!78759) (not e!108776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165823 (= res!78759 (validMask!0 (mask!8134 thiss!1248)))))

(declare-fun mapNonEmpty!6306 () Bool)

(declare-fun tp!14369 () Bool)

(declare-fun e!108781 () Bool)

(assert (=> mapNonEmpty!6306 (= mapRes!6306 (and tp!14369 e!108781))))

(declare-fun mapRest!6306 () (Array (_ BitVec 32) ValueCell!1519))

(declare-fun mapValue!6306 () ValueCell!1519)

(declare-fun mapKey!6306 () (_ BitVec 32))

(assert (=> mapNonEmpty!6306 (= (arr!3109 (_values!3398 thiss!1248)) (store mapRest!6306 mapKey!6306 mapValue!6306))))

(declare-fun b!165824 () Bool)

(declare-fun res!78757 () Bool)

(assert (=> b!165824 (=> (not res!78757) (not e!108776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6546 (_ BitVec 32)) Bool)

(assert (=> b!165824 (= res!78757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5240 thiss!1248) (mask!8134 thiss!1248)))))

(declare-fun tp_is_empty!3725 () Bool)

(declare-fun e!108777 () Bool)

(declare-fun e!108775 () Bool)

(declare-fun array_inv!1985 (array!6546) Bool)

(declare-fun array_inv!1986 (array!6548) Bool)

(assert (=> b!165825 (= e!108775 (and tp!14370 tp_is_empty!3725 (array_inv!1985 (_keys!5240 thiss!1248)) (array_inv!1986 (_values!3398 thiss!1248)) e!108777))))

(declare-fun b!165826 () Bool)

(assert (=> b!165826 (= e!108781 tp_is_empty!3725)))

(declare-fun b!165827 () Bool)

(declare-fun res!78756 () Bool)

(assert (=> b!165827 (=> (not res!78756) (not e!108778))))

(assert (=> b!165827 (= res!78756 (not (= key!828 (bvneg key!828))))))

(declare-fun res!78762 () Bool)

(assert (=> start!16630 (=> (not res!78762) (not e!108778))))

(declare-fun valid!851 (LongMapFixedSize!1946) Bool)

(assert (=> start!16630 (= res!78762 (valid!851 thiss!1248))))

(assert (=> start!16630 e!108778))

(assert (=> start!16630 e!108775))

(assert (=> start!16630 true))

(declare-fun b!165828 () Bool)

(declare-fun res!78760 () Bool)

(assert (=> b!165828 (=> (not res!78760) (not e!108776))))

(declare-datatypes ((tuple2!3082 0))(
  ( (tuple2!3083 (_1!1551 (_ BitVec 64)) (_2!1551 V!4613)) )
))
(declare-datatypes ((List!2092 0))(
  ( (Nil!2089) (Cons!2088 (h!2705 tuple2!3082) (t!6902 List!2092)) )
))
(declare-datatypes ((ListLongMap!2051 0))(
  ( (ListLongMap!2052 (toList!1041 List!2092)) )
))
(declare-fun contains!1077 (ListLongMap!2051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!694 (array!6546 array!6548 (_ BitVec 32) (_ BitVec 32) V!4613 V!4613 (_ BitVec 32) Int) ListLongMap!2051)

(assert (=> b!165828 (= res!78760 (not (contains!1077 (getCurrentListMap!694 (_keys!5240 thiss!1248) (_values!3398 thiss!1248) (mask!8134 thiss!1248) (extraKeys!3156 thiss!1248) (zeroValue!3258 thiss!1248) (minValue!3258 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3415 thiss!1248)) key!828)))))

(declare-fun b!165829 () Bool)

(declare-fun e!108779 () Bool)

(assert (=> b!165829 (= e!108777 (and e!108779 mapRes!6306))))

(declare-fun condMapEmpty!6306 () Bool)

(declare-fun mapDefault!6306 () ValueCell!1519)

