; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15664 () Bool)

(assert start!15664)

(declare-fun b!155918 () Bool)

(declare-fun b_free!3319 () Bool)

(declare-fun b_next!3319 () Bool)

(assert (=> b!155918 (= b_free!3319 (not b_next!3319))))

(declare-fun tp!12482 () Bool)

(declare-fun b_and!9751 () Bool)

(assert (=> b!155918 (= tp!12482 b_and!9751)))

(declare-fun b!155917 () Bool)

(declare-fun e!101948 () Bool)

(declare-fun tp_is_empty!3121 () Bool)

(assert (=> b!155917 (= e!101948 tp_is_empty!3121)))

(declare-fun e!101947 () Bool)

(declare-fun e!101945 () Bool)

(declare-datatypes ((V!3809 0))(
  ( (V!3810 (val!1605 Int)) )
))
(declare-datatypes ((ValueCell!1217 0))(
  ( (ValueCellFull!1217 (v!3466 V!3809)) (EmptyCell!1217) )
))
(declare-datatypes ((array!5294 0))(
  ( (array!5295 (arr!2504 (Array (_ BitVec 32) (_ BitVec 64))) (size!2782 (_ BitVec 32))) )
))
(declare-datatypes ((array!5296 0))(
  ( (array!5297 (arr!2505 (Array (_ BitVec 32) ValueCell!1217)) (size!2783 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1342 0))(
  ( (LongMapFixedSize!1343 (defaultEntry!3113 Int) (mask!7552 (_ BitVec 32)) (extraKeys!2854 (_ BitVec 32)) (zeroValue!2956 V!3809) (minValue!2956 V!3809) (_size!720 (_ BitVec 32)) (_keys!4888 array!5294) (_values!3096 array!5296) (_vacant!720 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1342)

(declare-fun array_inv!1573 (array!5294) Bool)

(declare-fun array_inv!1574 (array!5296) Bool)

(assert (=> b!155918 (= e!101947 (and tp!12482 tp_is_empty!3121 (array_inv!1573 (_keys!4888 thiss!1248)) (array_inv!1574 (_values!3096 thiss!1248)) e!101945))))

(declare-fun b!155919 () Bool)

(declare-fun res!73666 () Bool)

(declare-fun e!101944 () Bool)

(assert (=> b!155919 (=> (not res!73666) (not e!101944))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155919 (= res!73666 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155920 () Bool)

(declare-fun e!101943 () Bool)

(assert (=> b!155920 (= e!101943 tp_is_empty!3121)))

(declare-fun b!155921 () Bool)

(assert (=> b!155921 (= e!101944 (not true))))

(declare-fun lt!81500 () Bool)

(declare-fun v!309 () V!3809)

(declare-fun valid!648 (LongMapFixedSize!1342) Bool)

(assert (=> b!155921 (= lt!81500 (valid!648 (LongMapFixedSize!1343 (defaultEntry!3113 thiss!1248) (mask!7552 thiss!1248) (bvor (extraKeys!2854 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2956 thiss!1248) (_size!720 thiss!1248) (_keys!4888 thiss!1248) (_values!3096 thiss!1248) (_vacant!720 thiss!1248))))))

(declare-datatypes ((tuple2!2826 0))(
  ( (tuple2!2827 (_1!1423 (_ BitVec 64)) (_2!1423 V!3809)) )
))
(declare-datatypes ((List!1858 0))(
  ( (Nil!1855) (Cons!1854 (h!2463 tuple2!2826) (t!6668 List!1858)) )
))
(declare-datatypes ((ListLongMap!1835 0))(
  ( (ListLongMap!1836 (toList!933 List!1858)) )
))
(declare-fun +!196 (ListLongMap!1835 tuple2!2826) ListLongMap!1835)

(declare-fun getCurrentListMap!593 (array!5294 array!5296 (_ BitVec 32) (_ BitVec 32) V!3809 V!3809 (_ BitVec 32) Int) ListLongMap!1835)

(assert (=> b!155921 (= (+!196 (getCurrentListMap!593 (_keys!4888 thiss!1248) (_values!3096 thiss!1248) (mask!7552 thiss!1248) (extraKeys!2854 thiss!1248) (zeroValue!2956 thiss!1248) (minValue!2956 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3113 thiss!1248)) (tuple2!2827 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!593 (_keys!4888 thiss!1248) (_values!3096 thiss!1248) (mask!7552 thiss!1248) (bvor (extraKeys!2854 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2956 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3113 thiss!1248)))))

(declare-datatypes ((Unit!4944 0))(
  ( (Unit!4945) )
))
(declare-fun lt!81499 () Unit!4944)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!80 (array!5294 array!5296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3809 V!3809 V!3809 Int) Unit!4944)

(assert (=> b!155921 (= lt!81499 (lemmaChangeZeroKeyThenAddPairToListMap!80 (_keys!4888 thiss!1248) (_values!3096 thiss!1248) (mask!7552 thiss!1248) (extraKeys!2854 thiss!1248) (bvor (extraKeys!2854 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2956 thiss!1248) v!309 (minValue!2956 thiss!1248) (defaultEntry!3113 thiss!1248)))))

(declare-fun mapNonEmpty!5324 () Bool)

(declare-fun mapRes!5324 () Bool)

(declare-fun tp!12481 () Bool)

(assert (=> mapNonEmpty!5324 (= mapRes!5324 (and tp!12481 e!101943))))

(declare-fun mapValue!5324 () ValueCell!1217)

(declare-fun mapRest!5324 () (Array (_ BitVec 32) ValueCell!1217))

(declare-fun mapKey!5324 () (_ BitVec 32))

(assert (=> mapNonEmpty!5324 (= (arr!2505 (_values!3096 thiss!1248)) (store mapRest!5324 mapKey!5324 mapValue!5324))))

(declare-fun b!155922 () Bool)

(assert (=> b!155922 (= e!101945 (and e!101948 mapRes!5324))))

(declare-fun condMapEmpty!5324 () Bool)

(declare-fun mapDefault!5324 () ValueCell!1217)

