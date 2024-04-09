; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17744 () Bool)

(assert start!17744)

(declare-fun b!177236 () Bool)

(declare-fun b_free!4385 () Bool)

(declare-fun b_next!4385 () Bool)

(assert (=> b!177236 (= b_free!4385 (not b_next!4385))))

(declare-fun tp!15854 () Bool)

(declare-fun b_and!10903 () Bool)

(assert (=> b!177236 (= tp!15854 b_and!10903)))

(declare-fun tp_is_empty!4157 () Bool)

(declare-datatypes ((V!5189 0))(
  ( (V!5190 (val!2123 Int)) )
))
(declare-datatypes ((ValueCell!1735 0))(
  ( (ValueCellFull!1735 (v!3999 V!5189)) (EmptyCell!1735) )
))
(declare-datatypes ((array!7464 0))(
  ( (array!7465 (arr!3540 (Array (_ BitVec 32) (_ BitVec 64))) (size!3844 (_ BitVec 32))) )
))
(declare-datatypes ((array!7466 0))(
  ( (array!7467 (arr!3541 (Array (_ BitVec 32) ValueCell!1735)) (size!3845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2378 0))(
  ( (LongMapFixedSize!2379 (defaultEntry!3652 Int) (mask!8588 (_ BitVec 32)) (extraKeys!3389 (_ BitVec 32)) (zeroValue!3493 V!5189) (minValue!3493 V!5189) (_size!1238 (_ BitVec 32)) (_keys!5519 array!7464) (_values!3635 array!7466) (_vacant!1238 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2378)

(declare-fun e!116898 () Bool)

(declare-fun e!116894 () Bool)

(declare-fun array_inv!2261 (array!7464) Bool)

(declare-fun array_inv!2262 (array!7466) Bool)

(assert (=> b!177236 (= e!116898 (and tp!15854 tp_is_empty!4157 (array_inv!2261 (_keys!5519 thiss!1248)) (array_inv!2262 (_values!3635 thiss!1248)) e!116894))))

(declare-fun b!177237 () Bool)

(declare-fun e!116899 () Bool)

(assert (=> b!177237 (= e!116899 tp_is_empty!4157)))

(declare-fun b!177238 () Bool)

(declare-fun e!116897 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177238 (= e!116897 (not (validMask!0 (mask!8588 thiss!1248))))))

(declare-fun res!84035 () Bool)

(assert (=> start!17744 (=> (not res!84035) (not e!116897))))

(declare-fun valid!989 (LongMapFixedSize!2378) Bool)

(assert (=> start!17744 (= res!84035 (valid!989 thiss!1248))))

(assert (=> start!17744 e!116897))

(assert (=> start!17744 e!116898))

(assert (=> start!17744 true))

(declare-fun mapIsEmpty!7098 () Bool)

(declare-fun mapRes!7098 () Bool)

(assert (=> mapIsEmpty!7098 mapRes!7098))

(declare-fun b!177239 () Bool)

(declare-fun e!116895 () Bool)

(assert (=> b!177239 (= e!116894 (and e!116895 mapRes!7098))))

(declare-fun condMapEmpty!7098 () Bool)

(declare-fun mapDefault!7098 () ValueCell!1735)

