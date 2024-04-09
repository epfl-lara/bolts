; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3786 () Bool)

(assert start!3786)

(declare-fun b!26515 () Bool)

(declare-fun e!17278 () Bool)

(declare-fun tp_is_empty!1109 () Bool)

(assert (=> b!26515 (= e!17278 tp_is_empty!1109)))

(declare-fun res!15720 () Bool)

(declare-fun e!17277 () Bool)

(assert (=> start!3786 (=> (not res!15720) (not e!17277))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3786 (= res!15720 (validMask!0 mask!2294))))

(assert (=> start!3786 e!17277))

(assert (=> start!3786 true))

(declare-datatypes ((V!1303 0))(
  ( (V!1304 (val!581 Int)) )
))
(declare-datatypes ((ValueCell!355 0))(
  ( (ValueCellFull!355 (v!1667 V!1303)) (EmptyCell!355) )
))
(declare-datatypes ((array!1449 0))(
  ( (array!1450 (arr!682 (Array (_ BitVec 32) ValueCell!355)) (size!783 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1449)

(declare-fun e!17281 () Bool)

(declare-fun array_inv!469 (array!1449) Bool)

(assert (=> start!3786 (and (array_inv!469 _values!1501) e!17281)))

(declare-datatypes ((array!1451 0))(
  ( (array!1452 (arr!683 (Array (_ BitVec 32) (_ BitVec 64))) (size!784 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1451)

(declare-fun array_inv!470 (array!1451) Bool)

(assert (=> start!3786 (array_inv!470 _keys!1833)))

(declare-fun mapIsEmpty!1180 () Bool)

(declare-fun mapRes!1180 () Bool)

(assert (=> mapIsEmpty!1180 mapRes!1180))

(declare-fun b!26516 () Bool)

(assert (=> b!26516 (= e!17281 (and e!17278 mapRes!1180))))

(declare-fun condMapEmpty!1180 () Bool)

(declare-fun mapDefault!1180 () ValueCell!355)

