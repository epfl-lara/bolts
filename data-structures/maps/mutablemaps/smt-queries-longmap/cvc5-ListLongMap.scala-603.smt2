; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15772 () Bool)

(assert start!15772)

(declare-fun b!157235 () Bool)

(declare-fun b_free!3427 () Bool)

(declare-fun b_next!3427 () Bool)

(assert (=> b!157235 (= b_free!3427 (not b_next!3427))))

(declare-fun tp!12806 () Bool)

(declare-fun b_and!9859 () Bool)

(assert (=> b!157235 (= tp!12806 b_and!9859)))

(declare-fun b!157231 () Bool)

(declare-fun e!102938 () Bool)

(declare-fun tp_is_empty!3229 () Bool)

(assert (=> b!157231 (= e!102938 tp_is_empty!3229)))

(declare-fun b!157232 () Bool)

(declare-fun e!102935 () Bool)

(assert (=> b!157232 (= e!102935 (not true))))

(declare-fun lt!81734 () Bool)

(declare-datatypes ((V!3953 0))(
  ( (V!3954 (val!1659 Int)) )
))
(declare-datatypes ((ValueCell!1271 0))(
  ( (ValueCellFull!1271 (v!3520 V!3953)) (EmptyCell!1271) )
))
(declare-datatypes ((array!5510 0))(
  ( (array!5511 (arr!2612 (Array (_ BitVec 32) (_ BitVec 64))) (size!2890 (_ BitVec 32))) )
))
(declare-datatypes ((array!5512 0))(
  ( (array!5513 (arr!2613 (Array (_ BitVec 32) ValueCell!1271)) (size!2891 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1450 0))(
  ( (LongMapFixedSize!1451 (defaultEntry!3167 Int) (mask!7642 (_ BitVec 32)) (extraKeys!2908 (_ BitVec 32)) (zeroValue!3010 V!3953) (minValue!3010 V!3953) (_size!774 (_ BitVec 32)) (_keys!4942 array!5510) (_values!3150 array!5512) (_vacant!774 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1450)

(declare-fun v!309 () V!3953)

(declare-fun valid!688 (LongMapFixedSize!1450) Bool)

(assert (=> b!157232 (= lt!81734 (valid!688 (LongMapFixedSize!1451 (defaultEntry!3167 thiss!1248) (mask!7642 thiss!1248) (bvor (extraKeys!2908 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3010 thiss!1248) v!309 (_size!774 thiss!1248) (_keys!4942 thiss!1248) (_values!3150 thiss!1248) (_vacant!774 thiss!1248))))))

(declare-datatypes ((tuple2!2854 0))(
  ( (tuple2!2855 (_1!1437 (_ BitVec 64)) (_2!1437 V!3953)) )
))
(declare-datatypes ((List!1894 0))(
  ( (Nil!1891) (Cons!1890 (h!2499 tuple2!2854) (t!6704 List!1894)) )
))
(declare-datatypes ((ListLongMap!1863 0))(
  ( (ListLongMap!1864 (toList!947 List!1894)) )
))
(declare-fun +!210 (ListLongMap!1863 tuple2!2854) ListLongMap!1863)

(declare-fun getCurrentListMap!607 (array!5510 array!5512 (_ BitVec 32) (_ BitVec 32) V!3953 V!3953 (_ BitVec 32) Int) ListLongMap!1863)

(assert (=> b!157232 (= (+!210 (getCurrentListMap!607 (_keys!4942 thiss!1248) (_values!3150 thiss!1248) (mask!7642 thiss!1248) (extraKeys!2908 thiss!1248) (zeroValue!3010 thiss!1248) (minValue!3010 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3167 thiss!1248)) (tuple2!2855 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!607 (_keys!4942 thiss!1248) (_values!3150 thiss!1248) (mask!7642 thiss!1248) (bvor (extraKeys!2908 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3010 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3167 thiss!1248)))))

(declare-datatypes ((Unit!4972 0))(
  ( (Unit!4973) )
))
(declare-fun lt!81733 () Unit!4972)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!82 (array!5510 array!5512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3953 V!3953 V!3953 Int) Unit!4972)

(assert (=> b!157232 (= lt!81733 (lemmaChangeLongMinValueKeyThenAddPairToListMap!82 (_keys!4942 thiss!1248) (_values!3150 thiss!1248) (mask!7642 thiss!1248) (extraKeys!2908 thiss!1248) (bvor (extraKeys!2908 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3010 thiss!1248) (minValue!3010 thiss!1248) v!309 (defaultEntry!3167 thiss!1248)))))

(declare-fun mapNonEmpty!5486 () Bool)

(declare-fun mapRes!5486 () Bool)

(declare-fun tp!12805 () Bool)

(declare-fun e!102934 () Bool)

(assert (=> mapNonEmpty!5486 (= mapRes!5486 (and tp!12805 e!102934))))

(declare-fun mapValue!5486 () ValueCell!1271)

(declare-fun mapRest!5486 () (Array (_ BitVec 32) ValueCell!1271))

(declare-fun mapKey!5486 () (_ BitVec 32))

(assert (=> mapNonEmpty!5486 (= (arr!2613 (_values!3150 thiss!1248)) (store mapRest!5486 mapKey!5486 mapValue!5486))))

(declare-fun b!157234 () Bool)

(declare-fun res!74332 () Bool)

(assert (=> b!157234 (=> (not res!74332) (not e!102935))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157234 (= res!74332 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!102936 () Bool)

(declare-fun e!102937 () Bool)

(declare-fun array_inv!1651 (array!5510) Bool)

(declare-fun array_inv!1652 (array!5512) Bool)

(assert (=> b!157235 (= e!102936 (and tp!12806 tp_is_empty!3229 (array_inv!1651 (_keys!4942 thiss!1248)) (array_inv!1652 (_values!3150 thiss!1248)) e!102937))))

(declare-fun b!157236 () Bool)

(assert (=> b!157236 (= e!102934 tp_is_empty!3229)))

(declare-fun mapIsEmpty!5486 () Bool)

(assert (=> mapIsEmpty!5486 mapRes!5486))

(declare-fun b!157233 () Bool)

(assert (=> b!157233 (= e!102937 (and e!102938 mapRes!5486))))

(declare-fun condMapEmpty!5486 () Bool)

(declare-fun mapDefault!5486 () ValueCell!1271)

