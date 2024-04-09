; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15628 () Bool)

(assert start!15628)

(declare-fun b!155501 () Bool)

(declare-fun b_free!3283 () Bool)

(declare-fun b_next!3283 () Bool)

(assert (=> b!155501 (= b_free!3283 (not b_next!3283))))

(declare-fun tp!12373 () Bool)

(declare-fun b_and!9715 () Bool)

(assert (=> b!155501 (= tp!12373 b_and!9715)))

(declare-fun b!155500 () Bool)

(declare-fun res!73465 () Bool)

(declare-fun e!101606 () Bool)

(assert (=> b!155500 (=> (not res!73465) (not e!101606))))

(declare-datatypes ((V!3761 0))(
  ( (V!3762 (val!1587 Int)) )
))
(declare-datatypes ((ValueCell!1199 0))(
  ( (ValueCellFull!1199 (v!3448 V!3761)) (EmptyCell!1199) )
))
(declare-datatypes ((array!5222 0))(
  ( (array!5223 (arr!2468 (Array (_ BitVec 32) (_ BitVec 64))) (size!2746 (_ BitVec 32))) )
))
(declare-datatypes ((array!5224 0))(
  ( (array!5225 (arr!2469 (Array (_ BitVec 32) ValueCell!1199)) (size!2747 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1306 0))(
  ( (LongMapFixedSize!1307 (defaultEntry!3095 Int) (mask!7522 (_ BitVec 32)) (extraKeys!2836 (_ BitVec 32)) (zeroValue!2938 V!3761) (minValue!2938 V!3761) (_size!702 (_ BitVec 32)) (_keys!4870 array!5222) (_values!3078 array!5224) (_vacant!702 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1306)

(assert (=> b!155500 (= res!73465 (and (= (size!2747 (_values!3078 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7522 thiss!1248))) (= (size!2746 (_keys!4870 thiss!1248)) (size!2747 (_values!3078 thiss!1248))) (bvsge (mask!7522 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2836 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2836 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2836 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2836 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2836 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2836 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2836 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5270 () Bool)

(declare-fun mapRes!5270 () Bool)

(declare-fun tp!12374 () Bool)

(declare-fun e!101604 () Bool)

(assert (=> mapNonEmpty!5270 (= mapRes!5270 (and tp!12374 e!101604))))

(declare-fun mapValue!5270 () ValueCell!1199)

(declare-fun mapRest!5270 () (Array (_ BitVec 32) ValueCell!1199))

(declare-fun mapKey!5270 () (_ BitVec 32))

(assert (=> mapNonEmpty!5270 (= (arr!2469 (_values!3078 thiss!1248)) (store mapRest!5270 mapKey!5270 mapValue!5270))))

(declare-fun res!73464 () Bool)

(assert (=> start!15628 (=> (not res!73464) (not e!101606))))

(declare-fun valid!631 (LongMapFixedSize!1306) Bool)

(assert (=> start!15628 (= res!73464 (valid!631 thiss!1248))))

(assert (=> start!15628 e!101606))

(declare-fun e!101601 () Bool)

(assert (=> start!15628 e!101601))

(assert (=> start!15628 true))

(declare-fun mapIsEmpty!5270 () Bool)

(assert (=> mapIsEmpty!5270 mapRes!5270))

(declare-fun e!101605 () Bool)

(declare-fun tp_is_empty!3085 () Bool)

(declare-fun array_inv!1543 (array!5222) Bool)

(declare-fun array_inv!1544 (array!5224) Bool)

(assert (=> b!155501 (= e!101601 (and tp!12373 tp_is_empty!3085 (array_inv!1543 (_keys!4870 thiss!1248)) (array_inv!1544 (_values!3078 thiss!1248)) e!101605))))

(declare-fun b!155502 () Bool)

(declare-fun e!101603 () Bool)

(assert (=> b!155502 (= e!101605 (and e!101603 mapRes!5270))))

(declare-fun condMapEmpty!5270 () Bool)

(declare-fun mapDefault!5270 () ValueCell!1199)

