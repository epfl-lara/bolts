; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15760 () Bool)

(assert start!15760)

(declare-fun b!157121 () Bool)

(declare-fun b_free!3415 () Bool)

(declare-fun b_next!3415 () Bool)

(assert (=> b!157121 (= b_free!3415 (not b_next!3415))))

(declare-fun tp!12770 () Bool)

(declare-fun b_and!9847 () Bool)

(assert (=> b!157121 (= tp!12770 b_and!9847)))

(declare-fun b!157116 () Bool)

(declare-fun e!102824 () Bool)

(assert (=> b!157116 (= e!102824 true)))

(declare-fun lt!81690 () Bool)

(declare-datatypes ((V!3937 0))(
  ( (V!3938 (val!1653 Int)) )
))
(declare-datatypes ((ValueCell!1265 0))(
  ( (ValueCellFull!1265 (v!3514 V!3937)) (EmptyCell!1265) )
))
(declare-datatypes ((array!5486 0))(
  ( (array!5487 (arr!2600 (Array (_ BitVec 32) (_ BitVec 64))) (size!2878 (_ BitVec 32))) )
))
(declare-datatypes ((array!5488 0))(
  ( (array!5489 (arr!2601 (Array (_ BitVec 32) ValueCell!1265)) (size!2879 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1438 0))(
  ( (LongMapFixedSize!1439 (defaultEntry!3161 Int) (mask!7632 (_ BitVec 32)) (extraKeys!2902 (_ BitVec 32)) (zeroValue!3004 V!3937) (minValue!3004 V!3937) (_size!768 (_ BitVec 32)) (_keys!4936 array!5486) (_values!3144 array!5488) (_vacant!768 (_ BitVec 32))) )
))
(declare-fun lt!81692 () LongMapFixedSize!1438)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2844 0))(
  ( (tuple2!2845 (_1!1432 (_ BitVec 64)) (_2!1432 V!3937)) )
))
(declare-datatypes ((List!1889 0))(
  ( (Nil!1886) (Cons!1885 (h!2494 tuple2!2844) (t!6699 List!1889)) )
))
(declare-datatypes ((ListLongMap!1853 0))(
  ( (ListLongMap!1854 (toList!942 List!1889)) )
))
(declare-fun contains!969 (ListLongMap!1853 (_ BitVec 64)) Bool)

(declare-fun map!1570 (LongMapFixedSize!1438) ListLongMap!1853)

(assert (=> b!157116 (= lt!81690 (contains!969 (map!1570 lt!81692) key!828))))

(declare-fun mapIsEmpty!5468 () Bool)

(declare-fun mapRes!5468 () Bool)

(assert (=> mapIsEmpty!5468 mapRes!5468))

(declare-fun mapNonEmpty!5468 () Bool)

(declare-fun tp!12769 () Bool)

(declare-fun e!102822 () Bool)

(assert (=> mapNonEmpty!5468 (= mapRes!5468 (and tp!12769 e!102822))))

(declare-fun mapRest!5468 () (Array (_ BitVec 32) ValueCell!1265))

(declare-fun mapValue!5468 () ValueCell!1265)

(declare-fun thiss!1248 () LongMapFixedSize!1438)

(declare-fun mapKey!5468 () (_ BitVec 32))

(assert (=> mapNonEmpty!5468 (= (arr!2601 (_values!3144 thiss!1248)) (store mapRest!5468 mapKey!5468 mapValue!5468))))

(declare-fun b!157117 () Bool)

(declare-fun e!102823 () Bool)

(declare-fun tp_is_empty!3217 () Bool)

(assert (=> b!157117 (= e!102823 tp_is_empty!3217)))

(declare-fun b!157118 () Bool)

(declare-fun e!102820 () Bool)

(assert (=> b!157118 (= e!102820 (not e!102824))))

(declare-fun res!74289 () Bool)

(assert (=> b!157118 (=> res!74289 e!102824)))

(declare-fun valid!683 (LongMapFixedSize!1438) Bool)

(assert (=> b!157118 (= res!74289 (not (valid!683 lt!81692)))))

(declare-fun v!309 () V!3937)

(assert (=> b!157118 (= lt!81692 (LongMapFixedSize!1439 (defaultEntry!3161 thiss!1248) (mask!7632 thiss!1248) (bvor (extraKeys!2902 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3004 thiss!1248) v!309 (_size!768 thiss!1248) (_keys!4936 thiss!1248) (_values!3144 thiss!1248) (_vacant!768 thiss!1248)))))

(declare-fun +!205 (ListLongMap!1853 tuple2!2844) ListLongMap!1853)

(declare-fun getCurrentListMap!602 (array!5486 array!5488 (_ BitVec 32) (_ BitVec 32) V!3937 V!3937 (_ BitVec 32) Int) ListLongMap!1853)

(assert (=> b!157118 (= (+!205 (getCurrentListMap!602 (_keys!4936 thiss!1248) (_values!3144 thiss!1248) (mask!7632 thiss!1248) (extraKeys!2902 thiss!1248) (zeroValue!3004 thiss!1248) (minValue!3004 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3161 thiss!1248)) (tuple2!2845 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!602 (_keys!4936 thiss!1248) (_values!3144 thiss!1248) (mask!7632 thiss!1248) (bvor (extraKeys!2902 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3004 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3161 thiss!1248)))))

(declare-datatypes ((Unit!4962 0))(
  ( (Unit!4963) )
))
(declare-fun lt!81691 () Unit!4962)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!77 (array!5486 array!5488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3937 V!3937 V!3937 Int) Unit!4962)

(assert (=> b!157118 (= lt!81691 (lemmaChangeLongMinValueKeyThenAddPairToListMap!77 (_keys!4936 thiss!1248) (_values!3144 thiss!1248) (mask!7632 thiss!1248) (extraKeys!2902 thiss!1248) (bvor (extraKeys!2902 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3004 thiss!1248) (minValue!3004 thiss!1248) v!309 (defaultEntry!3161 thiss!1248)))))

(declare-fun b!157119 () Bool)

(declare-fun res!74290 () Bool)

(assert (=> b!157119 (=> (not res!74290) (not e!102820))))

(assert (=> b!157119 (= res!74290 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157120 () Bool)

(declare-fun e!102819 () Bool)

(assert (=> b!157120 (= e!102819 (and e!102823 mapRes!5468))))

(declare-fun condMapEmpty!5468 () Bool)

(declare-fun mapDefault!5468 () ValueCell!1265)

