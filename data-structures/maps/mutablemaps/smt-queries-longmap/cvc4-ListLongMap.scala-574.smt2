; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15602 () Bool)

(assert start!15602)

(declare-fun b!155149 () Bool)

(declare-fun b_free!3257 () Bool)

(declare-fun b_next!3257 () Bool)

(assert (=> b!155149 (= b_free!3257 (not b_next!3257))))

(declare-fun tp!12295 () Bool)

(declare-fun b_and!9689 () Bool)

(assert (=> b!155149 (= tp!12295 b_and!9689)))

(declare-fun mapNonEmpty!5231 () Bool)

(declare-fun mapRes!5231 () Bool)

(declare-fun tp!12296 () Bool)

(declare-fun e!101368 () Bool)

(assert (=> mapNonEmpty!5231 (= mapRes!5231 (and tp!12296 e!101368))))

(declare-fun mapKey!5231 () (_ BitVec 32))

(declare-datatypes ((V!3725 0))(
  ( (V!3726 (val!1574 Int)) )
))
(declare-datatypes ((ValueCell!1186 0))(
  ( (ValueCellFull!1186 (v!3435 V!3725)) (EmptyCell!1186) )
))
(declare-fun mapRest!5231 () (Array (_ BitVec 32) ValueCell!1186))

(declare-fun mapValue!5231 () ValueCell!1186)

(declare-datatypes ((array!5170 0))(
  ( (array!5171 (arr!2442 (Array (_ BitVec 32) (_ BitVec 64))) (size!2720 (_ BitVec 32))) )
))
(declare-datatypes ((array!5172 0))(
  ( (array!5173 (arr!2443 (Array (_ BitVec 32) ValueCell!1186)) (size!2721 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1280 0))(
  ( (LongMapFixedSize!1281 (defaultEntry!3082 Int) (mask!7499 (_ BitVec 32)) (extraKeys!2823 (_ BitVec 32)) (zeroValue!2925 V!3725) (minValue!2925 V!3725) (_size!689 (_ BitVec 32)) (_keys!4857 array!5170) (_values!3065 array!5172) (_vacant!689 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1280)

(assert (=> mapNonEmpty!5231 (= (arr!2443 (_values!3065 thiss!1248)) (store mapRest!5231 mapKey!5231 mapValue!5231))))

(declare-fun res!73273 () Bool)

(declare-fun e!101372 () Bool)

(assert (=> start!15602 (=> (not res!73273) (not e!101372))))

(declare-fun valid!623 (LongMapFixedSize!1280) Bool)

(assert (=> start!15602 (= res!73273 (valid!623 thiss!1248))))

(assert (=> start!15602 e!101372))

(declare-fun e!101367 () Bool)

(assert (=> start!15602 e!101367))

(assert (=> start!15602 true))

(declare-fun e!101371 () Bool)

(declare-fun tp_is_empty!3059 () Bool)

(declare-fun array_inv!1521 (array!5170) Bool)

(declare-fun array_inv!1522 (array!5172) Bool)

(assert (=> b!155149 (= e!101367 (and tp!12295 tp_is_empty!3059 (array_inv!1521 (_keys!4857 thiss!1248)) (array_inv!1522 (_values!3065 thiss!1248)) e!101371))))

(declare-fun b!155150 () Bool)

(declare-fun res!73272 () Bool)

(assert (=> b!155150 (=> (not res!73272) (not e!101372))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155150 (= res!73272 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155151 () Bool)

(declare-fun e!101369 () Bool)

(assert (=> b!155151 (= e!101371 (and e!101369 mapRes!5231))))

(declare-fun condMapEmpty!5231 () Bool)

(declare-fun mapDefault!5231 () ValueCell!1186)

