; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17244 () Bool)

(assert start!17244)

(declare-fun b!172810 () Bool)

(declare-fun b_free!4279 () Bool)

(declare-fun b_next!4279 () Bool)

(assert (=> b!172810 (= b_free!4279 (not b_next!4279))))

(declare-fun tp!15495 () Bool)

(declare-fun b_and!10737 () Bool)

(assert (=> b!172810 (= tp!15495 b_and!10737)))

(declare-fun b!172804 () Bool)

(declare-fun res!82064 () Bool)

(declare-fun e!114113 () Bool)

(assert (=> b!172804 (=> (not res!82064) (not e!114113))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172804 (= res!82064 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172805 () Bool)

(declare-fun e!114115 () Bool)

(declare-fun tp_is_empty!4051 () Bool)

(assert (=> b!172805 (= e!114115 tp_is_empty!4051)))

(declare-fun b!172806 () Bool)

(declare-fun e!114110 () Bool)

(assert (=> b!172806 (= e!114110 tp_is_empty!4051)))

(declare-fun res!82065 () Bool)

(assert (=> start!17244 (=> (not res!82065) (not e!114113))))

(declare-datatypes ((V!5049 0))(
  ( (V!5050 (val!2070 Int)) )
))
(declare-datatypes ((ValueCell!1682 0))(
  ( (ValueCellFull!1682 (v!3934 V!5049)) (EmptyCell!1682) )
))
(declare-datatypes ((array!7228 0))(
  ( (array!7229 (arr!3434 (Array (_ BitVec 32) (_ BitVec 64))) (size!3733 (_ BitVec 32))) )
))
(declare-datatypes ((array!7230 0))(
  ( (array!7231 (arr!3435 (Array (_ BitVec 32) ValueCell!1682)) (size!3734 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2272 0))(
  ( (LongMapFixedSize!2273 (defaultEntry!3582 Int) (mask!8440 (_ BitVec 32)) (extraKeys!3321 (_ BitVec 32)) (zeroValue!3423 V!5049) (minValue!3425 V!5049) (_size!1185 (_ BitVec 32)) (_keys!5421 array!7228) (_values!3565 array!7230) (_vacant!1185 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2272)

(declare-fun valid!955 (LongMapFixedSize!2272) Bool)

(assert (=> start!17244 (= res!82065 (valid!955 thiss!1248))))

(assert (=> start!17244 e!114113))

(declare-fun e!114114 () Bool)

(assert (=> start!17244 e!114114))

(assert (=> start!17244 true))

(declare-fun b!172807 () Bool)

(declare-fun e!114111 () Bool)

(declare-fun mapRes!6897 () Bool)

(assert (=> b!172807 (= e!114111 (and e!114110 mapRes!6897))))

(declare-fun condMapEmpty!6897 () Bool)

(declare-fun mapDefault!6897 () ValueCell!1682)

