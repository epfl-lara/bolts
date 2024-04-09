; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15578 () Bool)

(assert start!15578)

(declare-fun b!154829 () Bool)

(declare-fun b_free!3233 () Bool)

(declare-fun b_next!3233 () Bool)

(assert (=> b!154829 (= b_free!3233 (not b_next!3233))))

(declare-fun tp!12224 () Bool)

(declare-fun b_and!9665 () Bool)

(assert (=> b!154829 (= tp!12224 b_and!9665)))

(declare-fun b!154825 () Bool)

(declare-fun e!101155 () Bool)

(declare-fun tp_is_empty!3035 () Bool)

(assert (=> b!154825 (= e!101155 tp_is_empty!3035)))

(declare-fun b!154826 () Bool)

(declare-fun res!73093 () Bool)

(declare-fun e!101156 () Bool)

(assert (=> b!154826 (=> (not res!73093) (not e!101156))))

(declare-datatypes ((V!3693 0))(
  ( (V!3694 (val!1562 Int)) )
))
(declare-datatypes ((ValueCell!1174 0))(
  ( (ValueCellFull!1174 (v!3423 V!3693)) (EmptyCell!1174) )
))
(declare-datatypes ((array!5122 0))(
  ( (array!5123 (arr!2418 (Array (_ BitVec 32) (_ BitVec 64))) (size!2696 (_ BitVec 32))) )
))
(declare-datatypes ((array!5124 0))(
  ( (array!5125 (arr!2419 (Array (_ BitVec 32) ValueCell!1174)) (size!2697 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1256 0))(
  ( (LongMapFixedSize!1257 (defaultEntry!3070 Int) (mask!7479 (_ BitVec 32)) (extraKeys!2811 (_ BitVec 32)) (zeroValue!2913 V!3693) (minValue!2913 V!3693) (_size!677 (_ BitVec 32)) (_keys!4845 array!5122) (_values!3053 array!5124) (_vacant!677 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1256)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!154826 (= res!73093 (validMask!0 (mask!7479 thiss!1248)))))

(declare-fun b!154827 () Bool)

(declare-fun res!73090 () Bool)

(assert (=> b!154827 (=> (not res!73090) (not e!101156))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154827 (= res!73090 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!5195 () Bool)

(declare-fun mapRes!5195 () Bool)

(assert (=> mapIsEmpty!5195 mapRes!5195))

(declare-fun b!154828 () Bool)

(declare-fun res!73089 () Bool)

(assert (=> b!154828 (=> (not res!73089) (not e!101156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5122 (_ BitVec 32)) Bool)

(assert (=> b!154828 (= res!73089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4845 thiss!1248) (mask!7479 thiss!1248)))))

(declare-fun res!73092 () Bool)

(assert (=> start!15578 (=> (not res!73092) (not e!101156))))

(declare-fun valid!613 (LongMapFixedSize!1256) Bool)

(assert (=> start!15578 (= res!73092 (valid!613 thiss!1248))))

(assert (=> start!15578 e!101156))

(declare-fun e!101154 () Bool)

(assert (=> start!15578 e!101154))

(assert (=> start!15578 true))

(declare-fun e!101151 () Bool)

(declare-fun array_inv!1503 (array!5122) Bool)

(declare-fun array_inv!1504 (array!5124) Bool)

(assert (=> b!154829 (= e!101154 (and tp!12224 tp_is_empty!3035 (array_inv!1503 (_keys!4845 thiss!1248)) (array_inv!1504 (_values!3053 thiss!1248)) e!101151))))

(declare-fun b!154830 () Bool)

(declare-fun e!101153 () Bool)

(assert (=> b!154830 (= e!101153 tp_is_empty!3035)))

(declare-fun b!154831 () Bool)

(assert (=> b!154831 (= e!101151 (and e!101155 mapRes!5195))))

(declare-fun condMapEmpty!5195 () Bool)

(declare-fun mapDefault!5195 () ValueCell!1174)

