; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15818 () Bool)

(assert start!15818)

(declare-fun b!157533 () Bool)

(declare-fun b_free!3449 () Bool)

(declare-fun b_next!3449 () Bool)

(assert (=> b!157533 (= b_free!3449 (not b_next!3449))))

(declare-fun tp!12879 () Bool)

(declare-fun b_and!9881 () Bool)

(assert (=> b!157533 (= tp!12879 b_and!9881)))

(declare-fun e!103184 () Bool)

(declare-datatypes ((V!3981 0))(
  ( (V!3982 (val!1670 Int)) )
))
(declare-datatypes ((ValueCell!1282 0))(
  ( (ValueCellFull!1282 (v!3531 V!3981)) (EmptyCell!1282) )
))
(declare-datatypes ((array!5558 0))(
  ( (array!5559 (arr!2634 (Array (_ BitVec 32) (_ BitVec 64))) (size!2913 (_ BitVec 32))) )
))
(declare-datatypes ((array!5560 0))(
  ( (array!5561 (arr!2635 (Array (_ BitVec 32) ValueCell!1282)) (size!2914 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1472 0))(
  ( (LongMapFixedSize!1473 (defaultEntry!3178 Int) (mask!7662 (_ BitVec 32)) (extraKeys!2919 (_ BitVec 32)) (zeroValue!3021 V!3981) (minValue!3021 V!3981) (_size!785 (_ BitVec 32)) (_keys!4954 array!5558) (_values!3161 array!5560) (_vacant!785 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1472)

(declare-fun tp_is_empty!3251 () Bool)

(declare-fun e!103181 () Bool)

(declare-fun array_inv!1667 (array!5558) Bool)

(declare-fun array_inv!1668 (array!5560) Bool)

(assert (=> b!157533 (= e!103181 (and tp!12879 tp_is_empty!3251 (array_inv!1667 (_keys!4954 thiss!1248)) (array_inv!1668 (_values!3161 thiss!1248)) e!103184))))

(declare-fun b!157534 () Bool)

(declare-fun res!74461 () Bool)

(declare-fun e!103185 () Bool)

(assert (=> b!157534 (=> (not res!74461) (not e!103185))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157534 (= res!74461 (not (= key!828 (bvneg key!828))))))

(declare-fun b!157535 () Bool)

(declare-fun res!74459 () Bool)

(assert (=> b!157535 (=> (not res!74459) (not e!103185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157535 (= res!74459 (validMask!0 (mask!7662 thiss!1248)))))

(declare-fun b!157536 () Bool)

(declare-fun e!103186 () Bool)

(assert (=> b!157536 (= e!103186 tp_is_empty!3251)))

(declare-fun res!74460 () Bool)

(assert (=> start!15818 (=> (not res!74460) (not e!103185))))

(declare-fun valid!696 (LongMapFixedSize!1472) Bool)

(assert (=> start!15818 (= res!74460 (valid!696 thiss!1248))))

(assert (=> start!15818 e!103185))

(assert (=> start!15818 e!103181))

(assert (=> start!15818 true))

(declare-fun b!157537 () Bool)

(assert (=> b!157537 (= e!103185 (and (bvsge (mask!7662 thiss!1248) #b00000000000000000000000000000000) (not (= (size!2913 (_keys!4954 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7662 thiss!1248))))))))

(declare-fun b!157538 () Bool)

(declare-fun mapRes!5526 () Bool)

(assert (=> b!157538 (= e!103184 (and e!103186 mapRes!5526))))

(declare-fun condMapEmpty!5526 () Bool)

(declare-fun mapDefault!5526 () ValueCell!1282)

