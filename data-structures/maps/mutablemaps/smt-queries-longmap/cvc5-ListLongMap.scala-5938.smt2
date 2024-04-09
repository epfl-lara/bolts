; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77472 () Bool)

(assert start!77472)

(declare-fun b!902428 () Bool)

(declare-fun res!609098 () Bool)

(declare-fun e!505463 () Bool)

(assert (=> b!902428 (=> (not res!609098) (not e!505463))))

(declare-datatypes ((V!29575 0))(
  ( (V!29576 (val!9279 Int)) )
))
(declare-datatypes ((ValueCell!8747 0))(
  ( (ValueCellFull!8747 (v!11784 V!29575)) (EmptyCell!8747) )
))
(declare-datatypes ((array!52966 0))(
  ( (array!52967 (arr!25439 (Array (_ BitVec 32) ValueCell!8747)) (size!25899 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52966)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52968 0))(
  ( (array!52969 (arr!25440 (Array (_ BitVec 32) (_ BitVec 64))) (size!25900 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52968)

(assert (=> b!902428 (= res!609098 (and (= (size!25899 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25900 _keys!1386) (size!25899 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!609099 () Bool)

(assert (=> start!77472 (=> (not res!609099) (not e!505463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77472 (= res!609099 (validMask!0 mask!1756))))

(assert (=> start!77472 e!505463))

(assert (=> start!77472 true))

(declare-fun e!505466 () Bool)

(declare-fun array_inv!19922 (array!52966) Bool)

(assert (=> start!77472 (and (array_inv!19922 _values!1152) e!505466)))

(declare-fun array_inv!19923 (array!52968) Bool)

(assert (=> start!77472 (array_inv!19923 _keys!1386)))

(declare-fun mapNonEmpty!29395 () Bool)

(declare-fun mapRes!29395 () Bool)

(declare-fun tp!56455 () Bool)

(declare-fun e!505465 () Bool)

(assert (=> mapNonEmpty!29395 (= mapRes!29395 (and tp!56455 e!505465))))

(declare-fun mapRest!29395 () (Array (_ BitVec 32) ValueCell!8747))

(declare-fun mapKey!29395 () (_ BitVec 32))

(declare-fun mapValue!29395 () ValueCell!8747)

(assert (=> mapNonEmpty!29395 (= (arr!25439 _values!1152) (store mapRest!29395 mapKey!29395 mapValue!29395))))

(declare-fun mapIsEmpty!29395 () Bool)

(assert (=> mapIsEmpty!29395 mapRes!29395))

(declare-fun b!902429 () Bool)

(declare-fun e!505462 () Bool)

(assert (=> b!902429 (= e!505466 (and e!505462 mapRes!29395))))

(declare-fun condMapEmpty!29395 () Bool)

(declare-fun mapDefault!29395 () ValueCell!8747)

