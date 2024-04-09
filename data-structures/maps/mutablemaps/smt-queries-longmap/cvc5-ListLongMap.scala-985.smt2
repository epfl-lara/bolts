; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21276 () Bool)

(assert start!21276)

(declare-fun b!214126 () Bool)

(declare-fun b_free!5659 () Bool)

(declare-fun b_next!5659 () Bool)

(assert (=> b!214126 (= b_free!5659 (not b_next!5659))))

(declare-fun tp!20057 () Bool)

(declare-fun b_and!12567 () Bool)

(assert (=> b!214126 (= tp!20057 b_and!12567)))

(declare-fun b!214123 () Bool)

(declare-fun res!104845 () Bool)

(declare-fun e!139250 () Bool)

(assert (=> b!214123 (=> (not res!104845) (not e!139250))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!214123 (= res!104845 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214124 () Bool)

(declare-fun res!104844 () Bool)

(assert (=> b!214124 (=> (not res!104844) (not e!139250))))

(declare-datatypes ((V!7009 0))(
  ( (V!7010 (val!2805 Int)) )
))
(declare-datatypes ((ValueCell!2417 0))(
  ( (ValueCellFull!2417 (v!4819 V!7009)) (EmptyCell!2417) )
))
(declare-datatypes ((array!10248 0))(
  ( (array!10249 (arr!4861 (Array (_ BitVec 32) ValueCell!2417)) (size!5187 (_ BitVec 32))) )
))
(declare-datatypes ((array!10250 0))(
  ( (array!10251 (arr!4862 (Array (_ BitVec 32) (_ BitVec 64))) (size!5188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2734 0))(
  ( (LongMapFixedSize!2735 (defaultEntry!4017 Int) (mask!9669 (_ BitVec 32)) (extraKeys!3754 (_ BitVec 32)) (zeroValue!3858 V!7009) (minValue!3858 V!7009) (_size!1416 (_ BitVec 32)) (_keys!6034 array!10250) (_values!4000 array!10248) (_vacant!1416 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2734)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214124 (= res!104844 (validMask!0 (mask!9669 thiss!1504)))))

(declare-fun b!214125 () Bool)

(declare-fun e!139249 () Bool)

(declare-fun tp_is_empty!5521 () Bool)

(assert (=> b!214125 (= e!139249 tp_is_empty!5521)))

(declare-fun e!139247 () Bool)

(declare-fun e!139251 () Bool)

(declare-fun array_inv!3205 (array!10250) Bool)

(declare-fun array_inv!3206 (array!10248) Bool)

(assert (=> b!214126 (= e!139251 (and tp!20057 tp_is_empty!5521 (array_inv!3205 (_keys!6034 thiss!1504)) (array_inv!3206 (_values!4000 thiss!1504)) e!139247))))

(declare-fun mapIsEmpty!9390 () Bool)

(declare-fun mapRes!9390 () Bool)

(assert (=> mapIsEmpty!9390 mapRes!9390))

(declare-fun b!214127 () Bool)

(declare-fun e!139246 () Bool)

(assert (=> b!214127 (= e!139246 tp_is_empty!5521)))

(declare-fun res!104843 () Bool)

(assert (=> start!21276 (=> (not res!104843) (not e!139250))))

(declare-fun valid!1112 (LongMapFixedSize!2734) Bool)

(assert (=> start!21276 (= res!104843 (valid!1112 thiss!1504))))

(assert (=> start!21276 e!139250))

(assert (=> start!21276 e!139251))

(assert (=> start!21276 true))

(declare-fun b!214128 () Bool)

(assert (=> b!214128 (= e!139247 (and e!139246 mapRes!9390))))

(declare-fun condMapEmpty!9390 () Bool)

(declare-fun mapDefault!9390 () ValueCell!2417)

