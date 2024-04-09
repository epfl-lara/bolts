; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15658 () Bool)

(assert start!15658)

(declare-fun b!155857 () Bool)

(declare-fun b_free!3313 () Bool)

(declare-fun b_next!3313 () Bool)

(assert (=> b!155857 (= b_free!3313 (not b_next!3313))))

(declare-fun tp!12463 () Bool)

(declare-fun b_and!9745 () Bool)

(assert (=> b!155857 (= tp!12463 b_and!9745)))

(declare-fun mapIsEmpty!5315 () Bool)

(declare-fun mapRes!5315 () Bool)

(assert (=> mapIsEmpty!5315 mapRes!5315))

(declare-fun b!155856 () Bool)

(declare-fun e!101888 () Bool)

(declare-fun e!101887 () Bool)

(assert (=> b!155856 (= e!101888 (not e!101887))))

(declare-fun res!73641 () Bool)

(assert (=> b!155856 (=> res!73641 e!101887)))

(declare-datatypes ((V!3801 0))(
  ( (V!3802 (val!1602 Int)) )
))
(declare-datatypes ((ValueCell!1214 0))(
  ( (ValueCellFull!1214 (v!3463 V!3801)) (EmptyCell!1214) )
))
(declare-datatypes ((array!5282 0))(
  ( (array!5283 (arr!2498 (Array (_ BitVec 32) (_ BitVec 64))) (size!2776 (_ BitVec 32))) )
))
(declare-datatypes ((array!5284 0))(
  ( (array!5285 (arr!2499 (Array (_ BitVec 32) ValueCell!1214)) (size!2777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1336 0))(
  ( (LongMapFixedSize!1337 (defaultEntry!3110 Int) (mask!7547 (_ BitVec 32)) (extraKeys!2851 (_ BitVec 32)) (zeroValue!2953 V!3801) (minValue!2953 V!3801) (_size!717 (_ BitVec 32)) (_keys!4885 array!5282) (_values!3093 array!5284) (_vacant!717 (_ BitVec 32))) )
))
(declare-fun lt!81475 () LongMapFixedSize!1336)

(declare-fun valid!645 (LongMapFixedSize!1336) Bool)

(assert (=> b!155856 (= res!73641 (not (valid!645 lt!81475)))))

(declare-fun thiss!1248 () LongMapFixedSize!1336)

(declare-fun v!309 () V!3801)

(assert (=> b!155856 (= lt!81475 (LongMapFixedSize!1337 (defaultEntry!3110 thiss!1248) (mask!7547 thiss!1248) (bvor (extraKeys!2851 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2953 thiss!1248) (_size!717 thiss!1248) (_keys!4885 thiss!1248) (_values!3093 thiss!1248) (_vacant!717 thiss!1248)))))

(declare-datatypes ((tuple2!2820 0))(
  ( (tuple2!2821 (_1!1420 (_ BitVec 64)) (_2!1420 V!3801)) )
))
(declare-datatypes ((List!1855 0))(
  ( (Nil!1852) (Cons!1851 (h!2460 tuple2!2820) (t!6665 List!1855)) )
))
(declare-datatypes ((ListLongMap!1829 0))(
  ( (ListLongMap!1830 (toList!930 List!1855)) )
))
(declare-fun +!194 (ListLongMap!1829 tuple2!2820) ListLongMap!1829)

(declare-fun getCurrentListMap!591 (array!5282 array!5284 (_ BitVec 32) (_ BitVec 32) V!3801 V!3801 (_ BitVec 32) Int) ListLongMap!1829)

(assert (=> b!155856 (= (+!194 (getCurrentListMap!591 (_keys!4885 thiss!1248) (_values!3093 thiss!1248) (mask!7547 thiss!1248) (extraKeys!2851 thiss!1248) (zeroValue!2953 thiss!1248) (minValue!2953 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3110 thiss!1248)) (tuple2!2821 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!591 (_keys!4885 thiss!1248) (_values!3093 thiss!1248) (mask!7547 thiss!1248) (bvor (extraKeys!2851 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2953 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3110 thiss!1248)))))

(declare-datatypes ((Unit!4940 0))(
  ( (Unit!4941) )
))
(declare-fun lt!81476 () Unit!4940)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!78 (array!5282 array!5284 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3801 V!3801 V!3801 Int) Unit!4940)

(assert (=> b!155856 (= lt!81476 (lemmaChangeZeroKeyThenAddPairToListMap!78 (_keys!4885 thiss!1248) (_values!3093 thiss!1248) (mask!7547 thiss!1248) (extraKeys!2851 thiss!1248) (bvor (extraKeys!2851 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2953 thiss!1248) v!309 (minValue!2953 thiss!1248) (defaultEntry!3110 thiss!1248)))))

(declare-fun e!101883 () Bool)

(declare-fun e!101886 () Bool)

(declare-fun tp_is_empty!3115 () Bool)

(declare-fun array_inv!1567 (array!5282) Bool)

(declare-fun array_inv!1568 (array!5284) Bool)

(assert (=> b!155857 (= e!101883 (and tp!12463 tp_is_empty!3115 (array_inv!1567 (_keys!4885 thiss!1248)) (array_inv!1568 (_values!3093 thiss!1248)) e!101886))))

(declare-fun b!155858 () Bool)

(declare-fun e!101885 () Bool)

(assert (=> b!155858 (= e!101886 (and e!101885 mapRes!5315))))

(declare-fun condMapEmpty!5315 () Bool)

(declare-fun mapDefault!5315 () ValueCell!1214)

