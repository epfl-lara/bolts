; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3764 () Bool)

(assert start!3764)

(declare-fun b!26317 () Bool)

(declare-fun e!17115 () Bool)

(declare-fun tp_is_empty!1087 () Bool)

(assert (=> b!26317 (= e!17115 tp_is_empty!1087)))

(declare-fun res!15620 () Bool)

(declare-fun e!17113 () Bool)

(assert (=> start!3764 (=> (not res!15620) (not e!17113))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3764 (= res!15620 (validMask!0 mask!2294))))

(assert (=> start!3764 e!17113))

(assert (=> start!3764 true))

(declare-datatypes ((V!1275 0))(
  ( (V!1276 (val!570 Int)) )
))
(declare-datatypes ((ValueCell!344 0))(
  ( (ValueCellFull!344 (v!1656 V!1275)) (EmptyCell!344) )
))
(declare-datatypes ((array!1405 0))(
  ( (array!1406 (arr!660 (Array (_ BitVec 32) ValueCell!344)) (size!761 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1405)

(declare-fun e!17112 () Bool)

(declare-fun array_inv!455 (array!1405) Bool)

(assert (=> start!3764 (and (array_inv!455 _values!1501) e!17112)))

(declare-datatypes ((array!1407 0))(
  ( (array!1408 (arr!661 (Array (_ BitVec 32) (_ BitVec 64))) (size!762 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1407)

(declare-fun array_inv!456 (array!1407) Bool)

(assert (=> start!3764 (array_inv!456 _keys!1833)))

(declare-fun b!26318 () Bool)

(declare-fun mapRes!1147 () Bool)

(assert (=> b!26318 (= e!17112 (and e!17115 mapRes!1147))))

(declare-fun condMapEmpty!1147 () Bool)

(declare-fun mapDefault!1147 () ValueCell!344)

