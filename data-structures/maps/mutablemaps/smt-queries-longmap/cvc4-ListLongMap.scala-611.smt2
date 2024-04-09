; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15932 () Bool)

(assert start!15932)

(declare-fun b!158272 () Bool)

(declare-fun b_free!3479 () Bool)

(declare-fun b_next!3479 () Bool)

(assert (=> b!158272 (= b_free!3479 (not b_next!3479))))

(declare-fun tp!12987 () Bool)

(declare-fun b_and!9911 () Bool)

(assert (=> b!158272 (= tp!12987 b_and!9911)))

(declare-fun b!158271 () Bool)

(declare-fun res!74776 () Bool)

(declare-fun e!103670 () Bool)

(assert (=> b!158271 (=> (not res!74776) (not e!103670))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!158271 (= res!74776 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3281 () Bool)

(declare-datatypes ((V!4021 0))(
  ( (V!4022 (val!1685 Int)) )
))
(declare-datatypes ((ValueCell!1297 0))(
  ( (ValueCellFull!1297 (v!3546 V!4021)) (EmptyCell!1297) )
))
(declare-datatypes ((array!5628 0))(
  ( (array!5629 (arr!2664 (Array (_ BitVec 32) (_ BitVec 64))) (size!2946 (_ BitVec 32))) )
))
(declare-datatypes ((array!5630 0))(
  ( (array!5631 (arr!2665 (Array (_ BitVec 32) ValueCell!1297)) (size!2947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1502 0))(
  ( (LongMapFixedSize!1503 (defaultEntry!3193 Int) (mask!7704 (_ BitVec 32)) (extraKeys!2934 (_ BitVec 32)) (zeroValue!3036 V!4021) (minValue!3036 V!4021) (_size!800 (_ BitVec 32)) (_keys!4979 array!5628) (_values!3176 array!5630) (_vacant!800 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1502)

(declare-fun e!103669 () Bool)

(declare-fun e!103671 () Bool)

(declare-fun array_inv!1685 (array!5628) Bool)

(declare-fun array_inv!1686 (array!5630) Bool)

(assert (=> b!158272 (= e!103671 (and tp!12987 tp_is_empty!3281 (array_inv!1685 (_keys!4979 thiss!1248)) (array_inv!1686 (_values!3176 thiss!1248)) e!103669))))

(declare-fun b!158273 () Bool)

(declare-fun e!103672 () Bool)

(assert (=> b!158273 (= e!103672 tp_is_empty!3281)))

(declare-fun mapIsEmpty!5589 () Bool)

(declare-fun mapRes!5589 () Bool)

(assert (=> mapIsEmpty!5589 mapRes!5589))

(declare-fun b!158274 () Bool)

(declare-fun res!74775 () Bool)

(assert (=> b!158274 (=> (not res!74775) (not e!103670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!158274 (= res!74775 (validMask!0 (mask!7704 thiss!1248)))))

(declare-fun b!158275 () Bool)

(assert (=> b!158275 (= e!103669 (and e!103672 mapRes!5589))))

(declare-fun condMapEmpty!5589 () Bool)

(declare-fun mapDefault!5589 () ValueCell!1297)

