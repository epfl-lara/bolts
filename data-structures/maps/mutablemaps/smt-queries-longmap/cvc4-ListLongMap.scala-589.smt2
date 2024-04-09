; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15692 () Bool)

(assert start!15692)

(declare-fun b!156252 () Bool)

(declare-fun b_free!3347 () Bool)

(declare-fun b_next!3347 () Bool)

(assert (=> b!156252 (= b_free!3347 (not b_next!3347))))

(declare-fun tp!12566 () Bool)

(declare-fun b_and!9779 () Bool)

(assert (=> b!156252 (= tp!12566 b_and!9779)))

(declare-fun b!156247 () Bool)

(declare-fun res!73827 () Bool)

(declare-fun e!102200 () Bool)

(assert (=> b!156247 (=> (not res!73827) (not e!102200))))

(declare-datatypes ((V!3845 0))(
  ( (V!3846 (val!1619 Int)) )
))
(declare-datatypes ((ValueCell!1231 0))(
  ( (ValueCellFull!1231 (v!3480 V!3845)) (EmptyCell!1231) )
))
(declare-datatypes ((array!5350 0))(
  ( (array!5351 (arr!2532 (Array (_ BitVec 32) (_ BitVec 64))) (size!2810 (_ BitVec 32))) )
))
(declare-datatypes ((array!5352 0))(
  ( (array!5353 (arr!2533 (Array (_ BitVec 32) ValueCell!1231)) (size!2811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1370 0))(
  ( (LongMapFixedSize!1371 (defaultEntry!3127 Int) (mask!7574 (_ BitVec 32)) (extraKeys!2868 (_ BitVec 32)) (zeroValue!2970 V!3845) (minValue!2970 V!3845) (_size!734 (_ BitVec 32)) (_keys!4902 array!5350) (_values!3110 array!5352) (_vacant!734 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1370)

(assert (=> b!156247 (= res!73827 (and (= (size!2811 (_values!3110 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7574 thiss!1248))) (= (size!2810 (_keys!4902 thiss!1248)) (size!2811 (_values!3110 thiss!1248))) (bvsge (mask!7574 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2868 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2868 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2868 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2868 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2868 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2868 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2868 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5366 () Bool)

(declare-fun mapRes!5366 () Bool)

(assert (=> mapIsEmpty!5366 mapRes!5366))

(declare-fun b!156248 () Bool)

(declare-fun e!102196 () Bool)

(declare-fun e!102199 () Bool)

(assert (=> b!156248 (= e!102196 (and e!102199 mapRes!5366))))

(declare-fun condMapEmpty!5366 () Bool)

(declare-fun mapDefault!5366 () ValueCell!1231)

