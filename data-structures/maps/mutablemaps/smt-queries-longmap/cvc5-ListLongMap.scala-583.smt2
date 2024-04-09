; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15652 () Bool)

(assert start!15652)

(declare-fun b!155798 () Bool)

(declare-fun b_free!3307 () Bool)

(declare-fun b_next!3307 () Bool)

(assert (=> b!155798 (= b_free!3307 (not b_next!3307))))

(declare-fun tp!12446 () Bool)

(declare-fun b_and!9739 () Bool)

(assert (=> b!155798 (= tp!12446 b_and!9739)))

(declare-fun b!155793 () Bool)

(declare-fun e!101822 () Bool)

(declare-fun tp_is_empty!3109 () Bool)

(assert (=> b!155793 (= e!101822 tp_is_empty!3109)))

(declare-fun mapIsEmpty!5306 () Bool)

(declare-fun mapRes!5306 () Bool)

(assert (=> mapIsEmpty!5306 mapRes!5306))

(declare-fun b!155795 () Bool)

(declare-fun e!101825 () Bool)

(declare-fun e!101819 () Bool)

(assert (=> b!155795 (= e!101825 (not e!101819))))

(declare-fun res!73615 () Bool)

(assert (=> b!155795 (=> res!73615 e!101819)))

(declare-datatypes ((V!3793 0))(
  ( (V!3794 (val!1599 Int)) )
))
(declare-datatypes ((ValueCell!1211 0))(
  ( (ValueCellFull!1211 (v!3460 V!3793)) (EmptyCell!1211) )
))
(declare-datatypes ((array!5270 0))(
  ( (array!5271 (arr!2492 (Array (_ BitVec 32) (_ BitVec 64))) (size!2770 (_ BitVec 32))) )
))
(declare-datatypes ((array!5272 0))(
  ( (array!5273 (arr!2493 (Array (_ BitVec 32) ValueCell!1211)) (size!2771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1330 0))(
  ( (LongMapFixedSize!1331 (defaultEntry!3107 Int) (mask!7542 (_ BitVec 32)) (extraKeys!2848 (_ BitVec 32)) (zeroValue!2950 V!3793) (minValue!2950 V!3793) (_size!714 (_ BitVec 32)) (_keys!4882 array!5270) (_values!3090 array!5272) (_vacant!714 (_ BitVec 32))) )
))
(declare-fun lt!81449 () LongMapFixedSize!1330)

(declare-fun valid!642 (LongMapFixedSize!1330) Bool)

(assert (=> b!155795 (= res!73615 (not (valid!642 lt!81449)))))

(declare-fun thiss!1248 () LongMapFixedSize!1330)

(declare-fun v!309 () V!3793)

(assert (=> b!155795 (= lt!81449 (LongMapFixedSize!1331 (defaultEntry!3107 thiss!1248) (mask!7542 thiss!1248) (bvor (extraKeys!2848 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2950 thiss!1248) (_size!714 thiss!1248) (_keys!4882 thiss!1248) (_values!3090 thiss!1248) (_vacant!714 thiss!1248)))))

(declare-datatypes ((tuple2!2814 0))(
  ( (tuple2!2815 (_1!1417 (_ BitVec 64)) (_2!1417 V!3793)) )
))
(declare-datatypes ((List!1852 0))(
  ( (Nil!1849) (Cons!1848 (h!2457 tuple2!2814) (t!6662 List!1852)) )
))
(declare-datatypes ((ListLongMap!1823 0))(
  ( (ListLongMap!1824 (toList!927 List!1852)) )
))
(declare-fun +!191 (ListLongMap!1823 tuple2!2814) ListLongMap!1823)

(declare-fun getCurrentListMap!588 (array!5270 array!5272 (_ BitVec 32) (_ BitVec 32) V!3793 V!3793 (_ BitVec 32) Int) ListLongMap!1823)

(assert (=> b!155795 (= (+!191 (getCurrentListMap!588 (_keys!4882 thiss!1248) (_values!3090 thiss!1248) (mask!7542 thiss!1248) (extraKeys!2848 thiss!1248) (zeroValue!2950 thiss!1248) (minValue!2950 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3107 thiss!1248)) (tuple2!2815 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!588 (_keys!4882 thiss!1248) (_values!3090 thiss!1248) (mask!7542 thiss!1248) (bvor (extraKeys!2848 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2950 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3107 thiss!1248)))))

(declare-datatypes ((Unit!4934 0))(
  ( (Unit!4935) )
))
(declare-fun lt!81447 () Unit!4934)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!75 (array!5270 array!5272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3793 V!3793 V!3793 Int) Unit!4934)

(assert (=> b!155795 (= lt!81447 (lemmaChangeZeroKeyThenAddPairToListMap!75 (_keys!4882 thiss!1248) (_values!3090 thiss!1248) (mask!7542 thiss!1248) (extraKeys!2848 thiss!1248) (bvor (extraKeys!2848 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2950 thiss!1248) v!309 (minValue!2950 thiss!1248) (defaultEntry!3107 thiss!1248)))))

(declare-fun b!155794 () Bool)

(declare-fun e!101820 () Bool)

(declare-fun e!101821 () Bool)

(assert (=> b!155794 (= e!101820 (and e!101821 mapRes!5306))))

(declare-fun condMapEmpty!5306 () Bool)

(declare-fun mapDefault!5306 () ValueCell!1211)

