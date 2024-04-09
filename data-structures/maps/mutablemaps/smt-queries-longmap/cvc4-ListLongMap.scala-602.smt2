; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15770 () Bool)

(assert start!15770)

(declare-fun b!157218 () Bool)

(declare-fun b_free!3425 () Bool)

(declare-fun b_next!3425 () Bool)

(assert (=> b!157218 (= b_free!3425 (not b_next!3425))))

(declare-fun tp!12799 () Bool)

(declare-fun b_and!9857 () Bool)

(assert (=> b!157218 (= tp!12799 b_and!9857)))

(declare-fun b!157213 () Bool)

(declare-fun e!102916 () Bool)

(assert (=> b!157213 (= e!102916 (not true))))

(declare-fun lt!81728 () Bool)

(declare-datatypes ((V!3949 0))(
  ( (V!3950 (val!1658 Int)) )
))
(declare-datatypes ((ValueCell!1270 0))(
  ( (ValueCellFull!1270 (v!3519 V!3949)) (EmptyCell!1270) )
))
(declare-datatypes ((array!5506 0))(
  ( (array!5507 (arr!2610 (Array (_ BitVec 32) (_ BitVec 64))) (size!2888 (_ BitVec 32))) )
))
(declare-datatypes ((array!5508 0))(
  ( (array!5509 (arr!2611 (Array (_ BitVec 32) ValueCell!1270)) (size!2889 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1448 0))(
  ( (LongMapFixedSize!1449 (defaultEntry!3166 Int) (mask!7639 (_ BitVec 32)) (extraKeys!2907 (_ BitVec 32)) (zeroValue!3009 V!3949) (minValue!3009 V!3949) (_size!773 (_ BitVec 32)) (_keys!4941 array!5506) (_values!3149 array!5508) (_vacant!773 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1448)

(declare-fun v!309 () V!3949)

(declare-fun valid!687 (LongMapFixedSize!1448) Bool)

(assert (=> b!157213 (= lt!81728 (valid!687 (LongMapFixedSize!1449 (defaultEntry!3166 thiss!1248) (mask!7639 thiss!1248) (bvor (extraKeys!2907 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3009 thiss!1248) v!309 (_size!773 thiss!1248) (_keys!4941 thiss!1248) (_values!3149 thiss!1248) (_vacant!773 thiss!1248))))))

(declare-datatypes ((tuple2!2852 0))(
  ( (tuple2!2853 (_1!1436 (_ BitVec 64)) (_2!1436 V!3949)) )
))
(declare-datatypes ((List!1893 0))(
  ( (Nil!1890) (Cons!1889 (h!2498 tuple2!2852) (t!6703 List!1893)) )
))
(declare-datatypes ((ListLongMap!1861 0))(
  ( (ListLongMap!1862 (toList!946 List!1893)) )
))
(declare-fun +!209 (ListLongMap!1861 tuple2!2852) ListLongMap!1861)

(declare-fun getCurrentListMap!606 (array!5506 array!5508 (_ BitVec 32) (_ BitVec 32) V!3949 V!3949 (_ BitVec 32) Int) ListLongMap!1861)

(assert (=> b!157213 (= (+!209 (getCurrentListMap!606 (_keys!4941 thiss!1248) (_values!3149 thiss!1248) (mask!7639 thiss!1248) (extraKeys!2907 thiss!1248) (zeroValue!3009 thiss!1248) (minValue!3009 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3166 thiss!1248)) (tuple2!2853 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!606 (_keys!4941 thiss!1248) (_values!3149 thiss!1248) (mask!7639 thiss!1248) (bvor (extraKeys!2907 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3009 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3166 thiss!1248)))))

(declare-datatypes ((Unit!4970 0))(
  ( (Unit!4971) )
))
(declare-fun lt!81727 () Unit!4970)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!81 (array!5506 array!5508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3949 V!3949 V!3949 Int) Unit!4970)

(assert (=> b!157213 (= lt!81727 (lemmaChangeLongMinValueKeyThenAddPairToListMap!81 (_keys!4941 thiss!1248) (_values!3149 thiss!1248) (mask!7639 thiss!1248) (extraKeys!2907 thiss!1248) (bvor (extraKeys!2907 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3009 thiss!1248) (minValue!3009 thiss!1248) v!309 (defaultEntry!3166 thiss!1248)))))

(declare-fun b!157214 () Bool)

(declare-fun e!102915 () Bool)

(declare-fun tp_is_empty!3227 () Bool)

(assert (=> b!157214 (= e!102915 tp_is_empty!3227)))

(declare-fun mapNonEmpty!5483 () Bool)

(declare-fun mapRes!5483 () Bool)

(declare-fun tp!12800 () Bool)

(assert (=> mapNonEmpty!5483 (= mapRes!5483 (and tp!12800 e!102915))))

(declare-fun mapValue!5483 () ValueCell!1270)

(declare-fun mapRest!5483 () (Array (_ BitVec 32) ValueCell!1270))

(declare-fun mapKey!5483 () (_ BitVec 32))

(assert (=> mapNonEmpty!5483 (= (arr!2611 (_values!3149 thiss!1248)) (store mapRest!5483 mapKey!5483 mapValue!5483))))

(declare-fun mapIsEmpty!5483 () Bool)

(assert (=> mapIsEmpty!5483 mapRes!5483))

(declare-fun res!74326 () Bool)

(assert (=> start!15770 (=> (not res!74326) (not e!102916))))

(assert (=> start!15770 (= res!74326 (valid!687 thiss!1248))))

(assert (=> start!15770 e!102916))

(declare-fun e!102917 () Bool)

(assert (=> start!15770 e!102917))

(assert (=> start!15770 true))

(assert (=> start!15770 tp_is_empty!3227))

(declare-fun b!157215 () Bool)

(declare-fun res!74325 () Bool)

(assert (=> b!157215 (=> (not res!74325) (not e!102916))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157215 (= res!74325 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157216 () Bool)

(declare-fun e!102919 () Bool)

(assert (=> b!157216 (= e!102919 tp_is_empty!3227)))

(declare-fun b!157217 () Bool)

(declare-fun e!102920 () Bool)

(assert (=> b!157217 (= e!102920 (and e!102919 mapRes!5483))))

(declare-fun condMapEmpty!5483 () Bool)

(declare-fun mapDefault!5483 () ValueCell!1270)

