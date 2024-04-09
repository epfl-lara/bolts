; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15632 () Bool)

(assert start!15632)

(declare-fun b!155555 () Bool)

(declare-fun b_free!3287 () Bool)

(declare-fun b_next!3287 () Bool)

(assert (=> b!155555 (= b_free!3287 (not b_next!3287))))

(declare-fun tp!12385 () Bool)

(declare-fun b_and!9719 () Bool)

(assert (=> b!155555 (= tp!12385 b_and!9719)))

(declare-fun b!155554 () Bool)

(declare-fun res!73494 () Bool)

(declare-fun e!101642 () Bool)

(assert (=> b!155554 (=> (not res!73494) (not e!101642))))

(declare-datatypes ((V!3765 0))(
  ( (V!3766 (val!1589 Int)) )
))
(declare-datatypes ((ValueCell!1201 0))(
  ( (ValueCellFull!1201 (v!3450 V!3765)) (EmptyCell!1201) )
))
(declare-datatypes ((array!5230 0))(
  ( (array!5231 (arr!2472 (Array (_ BitVec 32) (_ BitVec 64))) (size!2750 (_ BitVec 32))) )
))
(declare-datatypes ((array!5232 0))(
  ( (array!5233 (arr!2473 (Array (_ BitVec 32) ValueCell!1201)) (size!2751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1310 0))(
  ( (LongMapFixedSize!1311 (defaultEntry!3097 Int) (mask!7524 (_ BitVec 32)) (extraKeys!2838 (_ BitVec 32)) (zeroValue!2940 V!3765) (minValue!2940 V!3765) (_size!704 (_ BitVec 32)) (_keys!4872 array!5230) (_values!3080 array!5232) (_vacant!704 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1310)

(assert (=> b!155554 (= res!73494 (and (= (size!2751 (_values!3080 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7524 thiss!1248))) (= (size!2750 (_keys!4872 thiss!1248)) (size!2751 (_values!3080 thiss!1248))) (bvsge (mask!7524 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2838 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2838 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2838 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2838 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2838 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2838 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2838 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5276 () Bool)

(declare-fun mapRes!5276 () Bool)

(assert (=> mapIsEmpty!5276 mapRes!5276))

(declare-fun res!73498 () Bool)

(assert (=> start!15632 (=> (not res!73498) (not e!101642))))

(declare-fun valid!633 (LongMapFixedSize!1310) Bool)

(assert (=> start!15632 (= res!73498 (valid!633 thiss!1248))))

(assert (=> start!15632 e!101642))

(declare-fun e!101637 () Bool)

(assert (=> start!15632 e!101637))

(assert (=> start!15632 true))

(declare-fun tp_is_empty!3089 () Bool)

(declare-fun e!101641 () Bool)

(declare-fun array_inv!1547 (array!5230) Bool)

(declare-fun array_inv!1548 (array!5232) Bool)

(assert (=> b!155555 (= e!101637 (and tp!12385 tp_is_empty!3089 (array_inv!1547 (_keys!4872 thiss!1248)) (array_inv!1548 (_values!3080 thiss!1248)) e!101641))))

(declare-fun b!155556 () Bool)

(declare-fun e!101638 () Bool)

(assert (=> b!155556 (= e!101638 tp_is_empty!3089)))

(declare-fun b!155557 () Bool)

(declare-fun res!73495 () Bool)

(assert (=> b!155557 (=> (not res!73495) (not e!101642))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155557 (= res!73495 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155558 () Bool)

(declare-fun res!73497 () Bool)

(assert (=> b!155558 (=> (not res!73497) (not e!101642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5230 (_ BitVec 32)) Bool)

(assert (=> b!155558 (= res!73497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4872 thiss!1248) (mask!7524 thiss!1248)))))

(declare-fun b!155559 () Bool)

(assert (=> b!155559 (= e!101642 false)))

(declare-fun lt!81404 () Bool)

(declare-datatypes ((List!1844 0))(
  ( (Nil!1841) (Cons!1840 (h!2449 (_ BitVec 64)) (t!6654 List!1844)) )
))
(declare-fun arrayNoDuplicates!0 (array!5230 (_ BitVec 32) List!1844) Bool)

(assert (=> b!155559 (= lt!81404 (arrayNoDuplicates!0 (_keys!4872 thiss!1248) #b00000000000000000000000000000000 Nil!1841))))

(declare-fun b!155560 () Bool)

(declare-fun e!101639 () Bool)

(assert (=> b!155560 (= e!101641 (and e!101639 mapRes!5276))))

(declare-fun condMapEmpty!5276 () Bool)

(declare-fun mapDefault!5276 () ValueCell!1201)

