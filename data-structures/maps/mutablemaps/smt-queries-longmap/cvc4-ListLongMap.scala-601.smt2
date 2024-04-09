; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15764 () Bool)

(assert start!15764)

(declare-fun b!157160 () Bool)

(declare-fun b_free!3419 () Bool)

(declare-fun b_next!3419 () Bool)

(assert (=> b!157160 (= b_free!3419 (not b_next!3419))))

(declare-fun tp!12782 () Bool)

(declare-fun b_and!9851 () Bool)

(assert (=> b!157160 (= tp!12782 b_and!9851)))

(declare-fun mapIsEmpty!5474 () Bool)

(declare-fun mapRes!5474 () Bool)

(assert (=> mapIsEmpty!5474 mapRes!5474))

(declare-fun b!157159 () Bool)

(declare-fun e!102865 () Bool)

(declare-fun tp_is_empty!3221 () Bool)

(assert (=> b!157159 (= e!102865 tp_is_empty!3221)))

(declare-fun e!102860 () Bool)

(declare-datatypes ((V!3941 0))(
  ( (V!3942 (val!1655 Int)) )
))
(declare-datatypes ((ValueCell!1267 0))(
  ( (ValueCellFull!1267 (v!3516 V!3941)) (EmptyCell!1267) )
))
(declare-datatypes ((array!5494 0))(
  ( (array!5495 (arr!2604 (Array (_ BitVec 32) (_ BitVec 64))) (size!2882 (_ BitVec 32))) )
))
(declare-datatypes ((array!5496 0))(
  ( (array!5497 (arr!2605 (Array (_ BitVec 32) ValueCell!1267)) (size!2883 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1442 0))(
  ( (LongMapFixedSize!1443 (defaultEntry!3163 Int) (mask!7634 (_ BitVec 32)) (extraKeys!2904 (_ BitVec 32)) (zeroValue!3006 V!3941) (minValue!3006 V!3941) (_size!770 (_ BitVec 32)) (_keys!4938 array!5494) (_values!3146 array!5496) (_vacant!770 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1442)

(declare-fun e!102863 () Bool)

(declare-fun array_inv!1647 (array!5494) Bool)

(declare-fun array_inv!1648 (array!5496) Bool)

(assert (=> b!157160 (= e!102863 (and tp!12782 tp_is_empty!3221 (array_inv!1647 (_keys!4938 thiss!1248)) (array_inv!1648 (_values!3146 thiss!1248)) e!102860))))

(declare-fun b!157161 () Bool)

(declare-fun e!102864 () Bool)

(assert (=> b!157161 (= e!102864 tp_is_empty!3221)))

(declare-fun b!157162 () Bool)

(declare-fun e!102861 () Bool)

(declare-fun e!102862 () Bool)

(assert (=> b!157162 (= e!102861 (not e!102862))))

(declare-fun res!74306 () Bool)

(assert (=> b!157162 (=> res!74306 e!102862)))

(declare-fun lt!81709 () LongMapFixedSize!1442)

(declare-fun valid!685 (LongMapFixedSize!1442) Bool)

(assert (=> b!157162 (= res!74306 (not (valid!685 lt!81709)))))

(declare-fun v!309 () V!3941)

(assert (=> b!157162 (= lt!81709 (LongMapFixedSize!1443 (defaultEntry!3163 thiss!1248) (mask!7634 thiss!1248) (bvor (extraKeys!2904 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3006 thiss!1248) v!309 (_size!770 thiss!1248) (_keys!4938 thiss!1248) (_values!3146 thiss!1248) (_vacant!770 thiss!1248)))))

(declare-datatypes ((tuple2!2848 0))(
  ( (tuple2!2849 (_1!1434 (_ BitVec 64)) (_2!1434 V!3941)) )
))
(declare-datatypes ((List!1891 0))(
  ( (Nil!1888) (Cons!1887 (h!2496 tuple2!2848) (t!6701 List!1891)) )
))
(declare-datatypes ((ListLongMap!1857 0))(
  ( (ListLongMap!1858 (toList!944 List!1891)) )
))
(declare-fun +!207 (ListLongMap!1857 tuple2!2848) ListLongMap!1857)

(declare-fun getCurrentListMap!604 (array!5494 array!5496 (_ BitVec 32) (_ BitVec 32) V!3941 V!3941 (_ BitVec 32) Int) ListLongMap!1857)

(assert (=> b!157162 (= (+!207 (getCurrentListMap!604 (_keys!4938 thiss!1248) (_values!3146 thiss!1248) (mask!7634 thiss!1248) (extraKeys!2904 thiss!1248) (zeroValue!3006 thiss!1248) (minValue!3006 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3163 thiss!1248)) (tuple2!2849 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!604 (_keys!4938 thiss!1248) (_values!3146 thiss!1248) (mask!7634 thiss!1248) (bvor (extraKeys!2904 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3006 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3163 thiss!1248)))))

(declare-datatypes ((Unit!4966 0))(
  ( (Unit!4967) )
))
(declare-fun lt!81710 () Unit!4966)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!79 (array!5494 array!5496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3941 V!3941 V!3941 Int) Unit!4966)

(assert (=> b!157162 (= lt!81710 (lemmaChangeLongMinValueKeyThenAddPairToListMap!79 (_keys!4938 thiss!1248) (_values!3146 thiss!1248) (mask!7634 thiss!1248) (extraKeys!2904 thiss!1248) (bvor (extraKeys!2904 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3006 thiss!1248) (minValue!3006 thiss!1248) v!309 (defaultEntry!3163 thiss!1248)))))

(declare-fun mapNonEmpty!5474 () Bool)

(declare-fun tp!12781 () Bool)

(assert (=> mapNonEmpty!5474 (= mapRes!5474 (and tp!12781 e!102865))))

(declare-fun mapValue!5474 () ValueCell!1267)

(declare-fun mapRest!5474 () (Array (_ BitVec 32) ValueCell!1267))

(declare-fun mapKey!5474 () (_ BitVec 32))

(assert (=> mapNonEmpty!5474 (= (arr!2605 (_values!3146 thiss!1248)) (store mapRest!5474 mapKey!5474 mapValue!5474))))

(declare-fun res!74307 () Bool)

(assert (=> start!15764 (=> (not res!74307) (not e!102861))))

(assert (=> start!15764 (= res!74307 (valid!685 thiss!1248))))

(assert (=> start!15764 e!102861))

(assert (=> start!15764 e!102863))

(assert (=> start!15764 true))

(assert (=> start!15764 tp_is_empty!3221))

(declare-fun b!157158 () Bool)

(assert (=> b!157158 (= e!102860 (and e!102864 mapRes!5474))))

(declare-fun condMapEmpty!5474 () Bool)

(declare-fun mapDefault!5474 () ValueCell!1267)

