; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78464 () Bool)

(assert start!78464)

(declare-fun b!914672 () Bool)

(declare-fun res!616902 () Bool)

(declare-fun e!513234 () Bool)

(assert (=> b!914672 (=> (not res!616902) (not e!513234))))

(declare-datatypes ((array!54396 0))(
  ( (array!54397 (arr!26143 (Array (_ BitVec 32) (_ BitVec 64))) (size!26603 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54396)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54396 (_ BitVec 32)) Bool)

(assert (=> b!914672 (= res!616902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!616900 () Bool)

(assert (=> start!78464 (=> (not res!616900) (not e!513234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78464 (= res!616900 (validMask!0 mask!1881))))

(assert (=> start!78464 e!513234))

(assert (=> start!78464 true))

(declare-datatypes ((V!30559 0))(
  ( (V!30560 (val!9648 Int)) )
))
(declare-datatypes ((ValueCell!9116 0))(
  ( (ValueCellFull!9116 (v!12165 V!30559)) (EmptyCell!9116) )
))
(declare-datatypes ((array!54398 0))(
  ( (array!54399 (arr!26144 (Array (_ BitVec 32) ValueCell!9116)) (size!26604 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54398)

(declare-fun e!513231 () Bool)

(declare-fun array_inv!20400 (array!54398) Bool)

(assert (=> start!78464 (and (array_inv!20400 _values!1231) e!513231)))

(declare-fun array_inv!20401 (array!54396) Bool)

(assert (=> start!78464 (array_inv!20401 _keys!1487)))

(declare-fun b!914673 () Bool)

(declare-fun e!513232 () Bool)

(declare-fun tp_is_empty!19195 () Bool)

(assert (=> b!914673 (= e!513232 tp_is_empty!19195)))

(declare-fun b!914674 () Bool)

(assert (=> b!914674 (= e!513234 (bvsgt #b00000000000000000000000000000000 (size!26603 _keys!1487)))))

(declare-fun b!914675 () Bool)

(declare-fun e!513235 () Bool)

(declare-fun mapRes!30537 () Bool)

(assert (=> b!914675 (= e!513231 (and e!513235 mapRes!30537))))

(declare-fun condMapEmpty!30537 () Bool)

(declare-fun mapDefault!30537 () ValueCell!9116)

