; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15650 () Bool)

(assert start!15650)

(declare-fun b!155776 () Bool)

(declare-fun b_free!3305 () Bool)

(declare-fun b_next!3305 () Bool)

(assert (=> b!155776 (= b_free!3305 (not b_next!3305))))

(declare-fun tp!12440 () Bool)

(declare-fun b_and!9737 () Bool)

(assert (=> b!155776 (= tp!12440 b_and!9737)))

(declare-fun b!155773 () Bool)

(declare-fun e!101803 () Bool)

(assert (=> b!155773 (= e!101803 (not true))))

(declare-fun lt!81439 () Bool)

(declare-datatypes ((V!3789 0))(
  ( (V!3790 (val!1598 Int)) )
))
(declare-datatypes ((ValueCell!1210 0))(
  ( (ValueCellFull!1210 (v!3459 V!3789)) (EmptyCell!1210) )
))
(declare-datatypes ((array!5266 0))(
  ( (array!5267 (arr!2490 (Array (_ BitVec 32) (_ BitVec 64))) (size!2768 (_ BitVec 32))) )
))
(declare-datatypes ((array!5268 0))(
  ( (array!5269 (arr!2491 (Array (_ BitVec 32) ValueCell!1210)) (size!2769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1328 0))(
  ( (LongMapFixedSize!1329 (defaultEntry!3106 Int) (mask!7539 (_ BitVec 32)) (extraKeys!2847 (_ BitVec 32)) (zeroValue!2949 V!3789) (minValue!2949 V!3789) (_size!713 (_ BitVec 32)) (_keys!4881 array!5266) (_values!3089 array!5268) (_vacant!713 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1328)

(declare-fun v!309 () V!3789)

(declare-fun valid!641 (LongMapFixedSize!1328) Bool)

(assert (=> b!155773 (= lt!81439 (valid!641 (LongMapFixedSize!1329 (defaultEntry!3106 thiss!1248) (mask!7539 thiss!1248) (bvor (extraKeys!2847 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2949 thiss!1248) (_size!713 thiss!1248) (_keys!4881 thiss!1248) (_values!3089 thiss!1248) (_vacant!713 thiss!1248))))))

(declare-datatypes ((tuple2!2812 0))(
  ( (tuple2!2813 (_1!1416 (_ BitVec 64)) (_2!1416 V!3789)) )
))
(declare-datatypes ((List!1851 0))(
  ( (Nil!1848) (Cons!1847 (h!2456 tuple2!2812) (t!6661 List!1851)) )
))
(declare-datatypes ((ListLongMap!1821 0))(
  ( (ListLongMap!1822 (toList!926 List!1851)) )
))
(declare-fun +!190 (ListLongMap!1821 tuple2!2812) ListLongMap!1821)

(declare-fun getCurrentListMap!587 (array!5266 array!5268 (_ BitVec 32) (_ BitVec 32) V!3789 V!3789 (_ BitVec 32) Int) ListLongMap!1821)

(assert (=> b!155773 (= (+!190 (getCurrentListMap!587 (_keys!4881 thiss!1248) (_values!3089 thiss!1248) (mask!7539 thiss!1248) (extraKeys!2847 thiss!1248) (zeroValue!2949 thiss!1248) (minValue!2949 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3106 thiss!1248)) (tuple2!2813 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!587 (_keys!4881 thiss!1248) (_values!3089 thiss!1248) (mask!7539 thiss!1248) (bvor (extraKeys!2847 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2949 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3106 thiss!1248)))))

(declare-datatypes ((Unit!4932 0))(
  ( (Unit!4933) )
))
(declare-fun lt!81440 () Unit!4932)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!74 (array!5266 array!5268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3789 V!3789 V!3789 Int) Unit!4932)

(assert (=> b!155773 (= lt!81440 (lemmaChangeZeroKeyThenAddPairToListMap!74 (_keys!4881 thiss!1248) (_values!3089 thiss!1248) (mask!7539 thiss!1248) (extraKeys!2847 thiss!1248) (bvor (extraKeys!2847 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2949 thiss!1248) v!309 (minValue!2949 thiss!1248) (defaultEntry!3106 thiss!1248)))))

(declare-fun mapIsEmpty!5303 () Bool)

(declare-fun mapRes!5303 () Bool)

(assert (=> mapIsEmpty!5303 mapRes!5303))

(declare-fun b!155775 () Bool)

(declare-fun res!73605 () Bool)

(assert (=> b!155775 (=> (not res!73605) (not e!101803))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155775 (= res!73605 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!101800 () Bool)

(declare-fun e!101802 () Bool)

(declare-fun tp_is_empty!3107 () Bool)

(declare-fun array_inv!1563 (array!5266) Bool)

(declare-fun array_inv!1564 (array!5268) Bool)

(assert (=> b!155776 (= e!101802 (and tp!12440 tp_is_empty!3107 (array_inv!1563 (_keys!4881 thiss!1248)) (array_inv!1564 (_values!3089 thiss!1248)) e!101800))))

(declare-fun res!73606 () Bool)

(assert (=> start!15650 (=> (not res!73606) (not e!101803))))

(assert (=> start!15650 (= res!73606 (valid!641 thiss!1248))))

(assert (=> start!15650 e!101803))

(assert (=> start!15650 e!101802))

(assert (=> start!15650 true))

(assert (=> start!15650 tp_is_empty!3107))

(declare-fun b!155774 () Bool)

(declare-fun e!101799 () Bool)

(assert (=> b!155774 (= e!101800 (and e!101799 mapRes!5303))))

(declare-fun condMapEmpty!5303 () Bool)

(declare-fun mapDefault!5303 () ValueCell!1210)

