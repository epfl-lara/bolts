; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35202 () Bool)

(assert start!35202)

(declare-fun b_free!7787 () Bool)

(declare-fun b_next!7787 () Bool)

(assert (=> start!35202 (= b_free!7787 (not b_next!7787))))

(declare-fun tp!26951 () Bool)

(declare-fun b_and!15043 () Bool)

(assert (=> start!35202 (= tp!26951 b_and!15043)))

(declare-fun b!352631 () Bool)

(declare-fun res!195615 () Bool)

(declare-fun e!215943 () Bool)

(assert (=> b!352631 (=> (not res!195615) (not e!215943))))

(declare-datatypes ((array!19027 0))(
  ( (array!19028 (arr!9012 (Array (_ BitVec 32) (_ BitVec 64))) (size!9364 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19027)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19027 (_ BitVec 32)) Bool)

(assert (=> b!352631 (= res!195615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13092 () Bool)

(declare-fun mapRes!13092 () Bool)

(assert (=> mapIsEmpty!13092 mapRes!13092))

(declare-fun res!195619 () Bool)

(assert (=> start!35202 (=> (not res!195619) (not e!215943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35202 (= res!195619 (validMask!0 mask!2385))))

(assert (=> start!35202 e!215943))

(assert (=> start!35202 true))

(declare-fun tp_is_empty!7739 () Bool)

(assert (=> start!35202 tp_is_empty!7739))

(assert (=> start!35202 tp!26951))

(declare-datatypes ((V!11295 0))(
  ( (V!11296 (val!3914 Int)) )
))
(declare-datatypes ((ValueCell!3526 0))(
  ( (ValueCellFull!3526 (v!6101 V!11295)) (EmptyCell!3526) )
))
(declare-datatypes ((array!19029 0))(
  ( (array!19030 (arr!9013 (Array (_ BitVec 32) ValueCell!3526)) (size!9365 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19029)

(declare-fun e!215945 () Bool)

(declare-fun array_inv!6640 (array!19029) Bool)

(assert (=> start!35202 (and (array_inv!6640 _values!1525) e!215945)))

(declare-fun array_inv!6641 (array!19027) Bool)

(assert (=> start!35202 (array_inv!6641 _keys!1895)))

(declare-fun mapNonEmpty!13092 () Bool)

(declare-fun tp!26952 () Bool)

(declare-fun e!215944 () Bool)

(assert (=> mapNonEmpty!13092 (= mapRes!13092 (and tp!26952 e!215944))))

(declare-fun mapRest!13092 () (Array (_ BitVec 32) ValueCell!3526))

(declare-fun mapKey!13092 () (_ BitVec 32))

(declare-fun mapValue!13092 () ValueCell!3526)

(assert (=> mapNonEmpty!13092 (= (arr!9013 _values!1525) (store mapRest!13092 mapKey!13092 mapValue!13092))))

(declare-fun b!352632 () Bool)

(declare-fun e!215942 () Bool)

(assert (=> b!352632 (= e!215945 (and e!215942 mapRes!13092))))

(declare-fun condMapEmpty!13092 () Bool)

(declare-fun mapDefault!13092 () ValueCell!3526)

