; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15646 () Bool)

(assert start!15646)

(declare-fun b!155738 () Bool)

(declare-fun b_free!3301 () Bool)

(declare-fun b_next!3301 () Bool)

(assert (=> b!155738 (= b_free!3301 (not b_next!3301))))

(declare-fun tp!12428 () Bool)

(declare-fun b_and!9733 () Bool)

(assert (=> b!155738 (= tp!12428 b_and!9733)))

(declare-fun mapIsEmpty!5297 () Bool)

(declare-fun mapRes!5297 () Bool)

(assert (=> mapIsEmpty!5297 mapRes!5297))

(declare-fun res!73594 () Bool)

(declare-fun e!101763 () Bool)

(assert (=> start!15646 (=> (not res!73594) (not e!101763))))

(declare-datatypes ((V!3785 0))(
  ( (V!3786 (val!1596 Int)) )
))
(declare-datatypes ((ValueCell!1208 0))(
  ( (ValueCellFull!1208 (v!3457 V!3785)) (EmptyCell!1208) )
))
(declare-datatypes ((array!5258 0))(
  ( (array!5259 (arr!2486 (Array (_ BitVec 32) (_ BitVec 64))) (size!2764 (_ BitVec 32))) )
))
(declare-datatypes ((array!5260 0))(
  ( (array!5261 (arr!2487 (Array (_ BitVec 32) ValueCell!1208)) (size!2765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1324 0))(
  ( (LongMapFixedSize!1325 (defaultEntry!3104 Int) (mask!7537 (_ BitVec 32)) (extraKeys!2845 (_ BitVec 32)) (zeroValue!2947 V!3785) (minValue!2947 V!3785) (_size!711 (_ BitVec 32)) (_keys!4879 array!5258) (_values!3087 array!5260) (_vacant!711 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1324)

(declare-fun valid!639 (LongMapFixedSize!1324) Bool)

(assert (=> start!15646 (= res!73594 (valid!639 thiss!1248))))

(assert (=> start!15646 e!101763))

(declare-fun e!101767 () Bool)

(assert (=> start!15646 e!101767))

(assert (=> start!15646 true))

(declare-fun tp_is_empty!3103 () Bool)

(assert (=> start!15646 tp_is_empty!3103))

(declare-fun b!155737 () Bool)

(assert (=> b!155737 (= e!101763 (not true))))

(declare-fun lt!81427 () Bool)

(declare-fun v!309 () V!3785)

(assert (=> b!155737 (= lt!81427 (valid!639 (LongMapFixedSize!1325 (defaultEntry!3104 thiss!1248) (mask!7537 thiss!1248) (bvor (extraKeys!2845 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2947 thiss!1248) (_size!711 thiss!1248) (_keys!4879 thiss!1248) (_values!3087 thiss!1248) (_vacant!711 thiss!1248))))))

(declare-datatypes ((tuple2!2808 0))(
  ( (tuple2!2809 (_1!1414 (_ BitVec 64)) (_2!1414 V!3785)) )
))
(declare-datatypes ((List!1849 0))(
  ( (Nil!1846) (Cons!1845 (h!2454 tuple2!2808) (t!6659 List!1849)) )
))
(declare-datatypes ((ListLongMap!1817 0))(
  ( (ListLongMap!1818 (toList!924 List!1849)) )
))
(declare-fun +!188 (ListLongMap!1817 tuple2!2808) ListLongMap!1817)

(declare-fun getCurrentListMap!585 (array!5258 array!5260 (_ BitVec 32) (_ BitVec 32) V!3785 V!3785 (_ BitVec 32) Int) ListLongMap!1817)

(assert (=> b!155737 (= (+!188 (getCurrentListMap!585 (_keys!4879 thiss!1248) (_values!3087 thiss!1248) (mask!7537 thiss!1248) (extraKeys!2845 thiss!1248) (zeroValue!2947 thiss!1248) (minValue!2947 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3104 thiss!1248)) (tuple2!2809 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!585 (_keys!4879 thiss!1248) (_values!3087 thiss!1248) (mask!7537 thiss!1248) (bvor (extraKeys!2845 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2947 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3104 thiss!1248)))))

(declare-datatypes ((Unit!4928 0))(
  ( (Unit!4929) )
))
(declare-fun lt!81428 () Unit!4928)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!72 (array!5258 array!5260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3785 V!3785 V!3785 Int) Unit!4928)

(assert (=> b!155737 (= lt!81428 (lemmaChangeZeroKeyThenAddPairToListMap!72 (_keys!4879 thiss!1248) (_values!3087 thiss!1248) (mask!7537 thiss!1248) (extraKeys!2845 thiss!1248) (bvor (extraKeys!2845 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2947 thiss!1248) v!309 (minValue!2947 thiss!1248) (defaultEntry!3104 thiss!1248)))))

(declare-fun e!101768 () Bool)

(declare-fun array_inv!1559 (array!5258) Bool)

(declare-fun array_inv!1560 (array!5260) Bool)

(assert (=> b!155738 (= e!101767 (and tp!12428 tp_is_empty!3103 (array_inv!1559 (_keys!4879 thiss!1248)) (array_inv!1560 (_values!3087 thiss!1248)) e!101768))))

(declare-fun mapNonEmpty!5297 () Bool)

(declare-fun tp!12427 () Bool)

(declare-fun e!101766 () Bool)

(assert (=> mapNonEmpty!5297 (= mapRes!5297 (and tp!12427 e!101766))))

(declare-fun mapValue!5297 () ValueCell!1208)

(declare-fun mapKey!5297 () (_ BitVec 32))

(declare-fun mapRest!5297 () (Array (_ BitVec 32) ValueCell!1208))

(assert (=> mapNonEmpty!5297 (= (arr!2487 (_values!3087 thiss!1248)) (store mapRest!5297 mapKey!5297 mapValue!5297))))

(declare-fun b!155739 () Bool)

(declare-fun e!101765 () Bool)

(assert (=> b!155739 (= e!101765 tp_is_empty!3103)))

(declare-fun b!155740 () Bool)

(declare-fun res!73593 () Bool)

(assert (=> b!155740 (=> (not res!73593) (not e!101763))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155740 (= res!73593 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155741 () Bool)

(assert (=> b!155741 (= e!101768 (and e!101765 mapRes!5297))))

(declare-fun condMapEmpty!5297 () Bool)

(declare-fun mapDefault!5297 () ValueCell!1208)

