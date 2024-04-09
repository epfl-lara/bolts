; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15752 () Bool)

(assert start!15752)

(declare-fun b!157036 () Bool)

(declare-fun b_free!3407 () Bool)

(declare-fun b_next!3407 () Bool)

(assert (=> b!157036 (= b_free!3407 (not b_next!3407))))

(declare-fun tp!12746 () Bool)

(declare-fun b_and!9839 () Bool)

(assert (=> b!157036 (= tp!12746 b_and!9839)))

(declare-fun b!157033 () Bool)

(declare-fun e!102739 () Bool)

(assert (=> b!157033 (= e!102739 (not true))))

(declare-fun lt!81655 () Bool)

(declare-datatypes ((V!3925 0))(
  ( (V!3926 (val!1649 Int)) )
))
(declare-datatypes ((ValueCell!1261 0))(
  ( (ValueCellFull!1261 (v!3510 V!3925)) (EmptyCell!1261) )
))
(declare-datatypes ((array!5470 0))(
  ( (array!5471 (arr!2592 (Array (_ BitVec 32) (_ BitVec 64))) (size!2870 (_ BitVec 32))) )
))
(declare-datatypes ((array!5472 0))(
  ( (array!5473 (arr!2593 (Array (_ BitVec 32) ValueCell!1261)) (size!2871 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1430 0))(
  ( (LongMapFixedSize!1431 (defaultEntry!3157 Int) (mask!7624 (_ BitVec 32)) (extraKeys!2898 (_ BitVec 32)) (zeroValue!3000 V!3925) (minValue!3000 V!3925) (_size!764 (_ BitVec 32)) (_keys!4932 array!5470) (_values!3140 array!5472) (_vacant!764 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1430)

(declare-fun v!309 () V!3925)

(declare-fun valid!679 (LongMapFixedSize!1430) Bool)

(assert (=> b!157033 (= lt!81655 (valid!679 (LongMapFixedSize!1431 (defaultEntry!3157 thiss!1248) (mask!7624 thiss!1248) (bvor (extraKeys!2898 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3000 thiss!1248) v!309 (_size!764 thiss!1248) (_keys!4932 thiss!1248) (_values!3140 thiss!1248) (_vacant!764 thiss!1248))))))

(declare-datatypes ((tuple2!2836 0))(
  ( (tuple2!2837 (_1!1428 (_ BitVec 64)) (_2!1428 V!3925)) )
))
(declare-datatypes ((List!1885 0))(
  ( (Nil!1882) (Cons!1881 (h!2490 tuple2!2836) (t!6695 List!1885)) )
))
(declare-datatypes ((ListLongMap!1845 0))(
  ( (ListLongMap!1846 (toList!938 List!1885)) )
))
(declare-fun +!201 (ListLongMap!1845 tuple2!2836) ListLongMap!1845)

(declare-fun getCurrentListMap!598 (array!5470 array!5472 (_ BitVec 32) (_ BitVec 32) V!3925 V!3925 (_ BitVec 32) Int) ListLongMap!1845)

(assert (=> b!157033 (= (+!201 (getCurrentListMap!598 (_keys!4932 thiss!1248) (_values!3140 thiss!1248) (mask!7624 thiss!1248) (extraKeys!2898 thiss!1248) (zeroValue!3000 thiss!1248) (minValue!3000 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3157 thiss!1248)) (tuple2!2837 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!598 (_keys!4932 thiss!1248) (_values!3140 thiss!1248) (mask!7624 thiss!1248) (bvor (extraKeys!2898 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3000 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3157 thiss!1248)))))

(declare-datatypes ((Unit!4954 0))(
  ( (Unit!4955) )
))
(declare-fun lt!81656 () Unit!4954)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!73 (array!5470 array!5472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3925 V!3925 V!3925 Int) Unit!4954)

(assert (=> b!157033 (= lt!81656 (lemmaChangeLongMinValueKeyThenAddPairToListMap!73 (_keys!4932 thiss!1248) (_values!3140 thiss!1248) (mask!7624 thiss!1248) (extraKeys!2898 thiss!1248) (bvor (extraKeys!2898 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3000 thiss!1248) (minValue!3000 thiss!1248) v!309 (defaultEntry!3157 thiss!1248)))))

(declare-fun mapNonEmpty!5456 () Bool)

(declare-fun mapRes!5456 () Bool)

(declare-fun tp!12745 () Bool)

(declare-fun e!102740 () Bool)

(assert (=> mapNonEmpty!5456 (= mapRes!5456 (and tp!12745 e!102740))))

(declare-fun mapRest!5456 () (Array (_ BitVec 32) ValueCell!1261))

(declare-fun mapKey!5456 () (_ BitVec 32))

(declare-fun mapValue!5456 () ValueCell!1261)

(assert (=> mapNonEmpty!5456 (= (arr!2593 (_values!3140 thiss!1248)) (store mapRest!5456 mapKey!5456 mapValue!5456))))

(declare-fun res!74253 () Bool)

(assert (=> start!15752 (=> (not res!74253) (not e!102739))))

(assert (=> start!15752 (= res!74253 (valid!679 thiss!1248))))

(assert (=> start!15752 e!102739))

(declare-fun e!102736 () Bool)

(assert (=> start!15752 e!102736))

(assert (=> start!15752 true))

(declare-fun tp_is_empty!3209 () Bool)

(assert (=> start!15752 tp_is_empty!3209))

(declare-fun b!157034 () Bool)

(declare-fun res!74254 () Bool)

(assert (=> b!157034 (=> (not res!74254) (not e!102739))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157034 (= res!74254 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157035 () Bool)

(declare-fun e!102738 () Bool)

(assert (=> b!157035 (= e!102738 tp_is_empty!3209)))

(declare-fun mapIsEmpty!5456 () Bool)

(assert (=> mapIsEmpty!5456 mapRes!5456))

(declare-fun e!102735 () Bool)

(declare-fun array_inv!1637 (array!5470) Bool)

(declare-fun array_inv!1638 (array!5472) Bool)

(assert (=> b!157036 (= e!102736 (and tp!12746 tp_is_empty!3209 (array_inv!1637 (_keys!4932 thiss!1248)) (array_inv!1638 (_values!3140 thiss!1248)) e!102735))))

(declare-fun b!157037 () Bool)

(assert (=> b!157037 (= e!102740 tp_is_empty!3209)))

(declare-fun b!157038 () Bool)

(assert (=> b!157038 (= e!102735 (and e!102738 mapRes!5456))))

(declare-fun condMapEmpty!5456 () Bool)

(declare-fun mapDefault!5456 () ValueCell!1261)

