; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104566 () Bool)

(assert start!104566)

(declare-fun res!832156 () Bool)

(declare-fun e!707271 () Bool)

(assert (=> start!104566 (=> (not res!832156) (not e!707271))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104566 (= res!832156 (validMask!0 mask!1466))))

(assert (=> start!104566 e!707271))

(assert (=> start!104566 true))

(declare-datatypes ((array!80279 0))(
  ( (array!80280 (arr!38709 (Array (_ BitVec 32) (_ BitVec 64))) (size!39246 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80279)

(declare-fun array_inv!29485 (array!80279) Bool)

(assert (=> start!104566 (array_inv!29485 _keys!1118)))

(declare-datatypes ((V!47103 0))(
  ( (V!47104 (val!15714 Int)) )
))
(declare-datatypes ((ValueCell!14888 0))(
  ( (ValueCellFull!14888 (v!18409 V!47103)) (EmptyCell!14888) )
))
(declare-datatypes ((array!80281 0))(
  ( (array!80282 (arr!38710 (Array (_ BitVec 32) ValueCell!14888)) (size!39247 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80281)

(declare-fun e!707269 () Bool)

(declare-fun array_inv!29486 (array!80281) Bool)

(assert (=> start!104566 (and (array_inv!29486 _values!914) e!707269)))

(declare-fun b!1246879 () Bool)

(declare-fun e!707270 () Bool)

(declare-fun mapRes!48694 () Bool)

(assert (=> b!1246879 (= e!707269 (and e!707270 mapRes!48694))))

(declare-fun condMapEmpty!48694 () Bool)

(declare-fun mapDefault!48694 () ValueCell!14888)

