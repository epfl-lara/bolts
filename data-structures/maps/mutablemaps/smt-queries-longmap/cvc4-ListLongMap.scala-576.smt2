; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15614 () Bool)

(assert start!15614)

(declare-fun b!155319 () Bool)

(declare-fun b_free!3269 () Bool)

(declare-fun b_next!3269 () Bool)

(assert (=> b!155319 (= b_free!3269 (not b_next!3269))))

(declare-fun tp!12331 () Bool)

(declare-fun b_and!9701 () Bool)

(assert (=> b!155319 (= tp!12331 b_and!9701)))

(declare-fun b!155311 () Bool)

(declare-fun e!101480 () Bool)

(declare-fun tp_is_empty!3071 () Bool)

(assert (=> b!155311 (= e!101480 tp_is_empty!3071)))

(declare-fun b!155312 () Bool)

(declare-fun res!73360 () Bool)

(declare-fun e!101475 () Bool)

(assert (=> b!155312 (=> (not res!73360) (not e!101475))))

(declare-datatypes ((V!3741 0))(
  ( (V!3742 (val!1580 Int)) )
))
(declare-datatypes ((ValueCell!1192 0))(
  ( (ValueCellFull!1192 (v!3441 V!3741)) (EmptyCell!1192) )
))
(declare-datatypes ((array!5194 0))(
  ( (array!5195 (arr!2454 (Array (_ BitVec 32) (_ BitVec 64))) (size!2732 (_ BitVec 32))) )
))
(declare-datatypes ((array!5196 0))(
  ( (array!5197 (arr!2455 (Array (_ BitVec 32) ValueCell!1192)) (size!2733 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1292 0))(
  ( (LongMapFixedSize!1293 (defaultEntry!3088 Int) (mask!7509 (_ BitVec 32)) (extraKeys!2829 (_ BitVec 32)) (zeroValue!2931 V!3741) (minValue!2931 V!3741) (_size!695 (_ BitVec 32)) (_keys!4863 array!5194) (_values!3071 array!5196) (_vacant!695 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1292)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155312 (= res!73360 (validMask!0 (mask!7509 thiss!1248)))))

(declare-fun b!155313 () Bool)

(declare-fun e!101479 () Bool)

(assert (=> b!155313 (= e!101479 tp_is_empty!3071)))

(declare-fun b!155314 () Bool)

(declare-fun res!73362 () Bool)

(assert (=> b!155314 (=> (not res!73362) (not e!101475))))

(assert (=> b!155314 (= res!73362 (and (= (size!2733 (_values!3071 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7509 thiss!1248))) (= (size!2732 (_keys!4863 thiss!1248)) (size!2733 (_values!3071 thiss!1248))) (bvsge (mask!7509 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2829 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2829 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2829 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2829 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2829 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2829 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2829 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5249 () Bool)

(declare-fun mapRes!5249 () Bool)

(assert (=> mapIsEmpty!5249 mapRes!5249))

(declare-fun b!155315 () Bool)

(declare-fun e!101478 () Bool)

(assert (=> b!155315 (= e!101478 (and e!101480 mapRes!5249))))

(declare-fun condMapEmpty!5249 () Bool)

(declare-fun mapDefault!5249 () ValueCell!1192)

