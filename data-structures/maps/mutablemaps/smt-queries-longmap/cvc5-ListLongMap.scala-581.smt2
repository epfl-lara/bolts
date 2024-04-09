; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15640 () Bool)

(assert start!15640)

(declare-fun b!155664 () Bool)

(declare-fun b_free!3295 () Bool)

(declare-fun b_next!3295 () Bool)

(assert (=> b!155664 (= b_free!3295 (not b_next!3295))))

(declare-fun tp!12409 () Bool)

(declare-fun b_and!9727 () Bool)

(assert (=> b!155664 (= tp!12409 b_and!9727)))

(declare-fun mapIsEmpty!5288 () Bool)

(declare-fun mapRes!5288 () Bool)

(assert (=> mapIsEmpty!5288 mapRes!5288))

(declare-fun b!155662 () Bool)

(declare-fun res!73558 () Bool)

(declare-fun e!101709 () Bool)

(assert (=> b!155662 (=> (not res!73558) (not e!101709))))

(declare-datatypes ((V!3777 0))(
  ( (V!3778 (val!1593 Int)) )
))
(declare-datatypes ((ValueCell!1205 0))(
  ( (ValueCellFull!1205 (v!3454 V!3777)) (EmptyCell!1205) )
))
(declare-datatypes ((array!5246 0))(
  ( (array!5247 (arr!2480 (Array (_ BitVec 32) (_ BitVec 64))) (size!2758 (_ BitVec 32))) )
))
(declare-datatypes ((array!5248 0))(
  ( (array!5249 (arr!2481 (Array (_ BitVec 32) ValueCell!1205)) (size!2759 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1318 0))(
  ( (LongMapFixedSize!1319 (defaultEntry!3101 Int) (mask!7532 (_ BitVec 32)) (extraKeys!2842 (_ BitVec 32)) (zeroValue!2944 V!3777) (minValue!2944 V!3777) (_size!708 (_ BitVec 32)) (_keys!4876 array!5246) (_values!3084 array!5248) (_vacant!708 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1318)

(assert (=> b!155662 (= res!73558 (and (= (size!2759 (_values!3084 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7532 thiss!1248))) (= (size!2758 (_keys!4876 thiss!1248)) (size!2759 (_values!3084 thiss!1248))) (bvsge (mask!7532 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2842 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2842 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2842 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2842 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2842 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2842 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2842 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!73555 () Bool)

(assert (=> start!15640 (=> (not res!73555) (not e!101709))))

(declare-fun valid!636 (LongMapFixedSize!1318) Bool)

(assert (=> start!15640 (= res!73555 (valid!636 thiss!1248))))

(assert (=> start!15640 e!101709))

(declare-fun e!101712 () Bool)

(assert (=> start!15640 e!101712))

(assert (=> start!15640 true))

(declare-fun b!155663 () Bool)

(declare-fun e!101711 () Bool)

(declare-fun tp_is_empty!3097 () Bool)

(assert (=> b!155663 (= e!101711 tp_is_empty!3097)))

(declare-fun e!101713 () Bool)

(declare-fun array_inv!1553 (array!5246) Bool)

(declare-fun array_inv!1554 (array!5248) Bool)

(assert (=> b!155664 (= e!101712 (and tp!12409 tp_is_empty!3097 (array_inv!1553 (_keys!4876 thiss!1248)) (array_inv!1554 (_values!3084 thiss!1248)) e!101713))))

(declare-fun b!155665 () Bool)

(declare-fun e!101710 () Bool)

(assert (=> b!155665 (= e!101710 tp_is_empty!3097)))

(declare-fun b!155666 () Bool)

(declare-fun res!73556 () Bool)

(assert (=> b!155666 (=> (not res!73556) (not e!101709))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155666 (= res!73556 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!5288 () Bool)

(declare-fun tp!12410 () Bool)

(assert (=> mapNonEmpty!5288 (= mapRes!5288 (and tp!12410 e!101711))))

(declare-fun mapRest!5288 () (Array (_ BitVec 32) ValueCell!1205))

(declare-fun mapValue!5288 () ValueCell!1205)

(declare-fun mapKey!5288 () (_ BitVec 32))

(assert (=> mapNonEmpty!5288 (= (arr!2481 (_values!3084 thiss!1248)) (store mapRest!5288 mapKey!5288 mapValue!5288))))

(declare-fun b!155667 () Bool)

(assert (=> b!155667 (= e!101713 (and e!101710 mapRes!5288))))

(declare-fun condMapEmpty!5288 () Bool)

(declare-fun mapDefault!5288 () ValueCell!1205)

