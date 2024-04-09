; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82784 () Bool)

(assert start!82784)

(declare-fun b_free!18889 () Bool)

(declare-fun b_next!18889 () Bool)

(assert (=> start!82784 (= b_free!18889 (not b_next!18889))))

(declare-fun tp!65787 () Bool)

(declare-fun b_and!30395 () Bool)

(assert (=> start!82784 (= tp!65787 b_and!30395)))

(declare-fun b!965096 () Bool)

(declare-fun e!544081 () Bool)

(declare-fun tp_is_empty!21691 () Bool)

(assert (=> b!965096 (= e!544081 tp_is_empty!21691)))

(declare-fun b!965097 () Bool)

(declare-fun e!544082 () Bool)

(declare-fun mapRes!34531 () Bool)

(assert (=> b!965097 (= e!544082 (and e!544081 mapRes!34531))))

(declare-fun condMapEmpty!34531 () Bool)

(declare-datatypes ((V!33905 0))(
  ( (V!33906 (val!10896 Int)) )
))
(declare-datatypes ((ValueCell!10364 0))(
  ( (ValueCellFull!10364 (v!13454 V!33905)) (EmptyCell!10364) )
))
(declare-datatypes ((array!59449 0))(
  ( (array!59450 (arr!28589 (Array (_ BitVec 32) ValueCell!10364)) (size!29069 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59449)

(declare-fun mapDefault!34531 () ValueCell!10364)

