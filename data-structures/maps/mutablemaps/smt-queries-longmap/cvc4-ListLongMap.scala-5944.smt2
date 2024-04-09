; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77512 () Bool)

(assert start!77512)

(declare-fun b!902788 () Bool)

(declare-fun e!505764 () Bool)

(declare-fun tp_is_empty!18497 () Bool)

(assert (=> b!902788 (= e!505764 tp_is_empty!18497)))

(declare-fun b!902789 () Bool)

(declare-fun e!505766 () Bool)

(assert (=> b!902789 (= e!505766 false)))

(declare-fun lt!407885 () Bool)

(declare-datatypes ((array!53040 0))(
  ( (array!53041 (arr!25476 (Array (_ BitVec 32) (_ BitVec 64))) (size!25936 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53040)

(declare-datatypes ((List!17978 0))(
  ( (Nil!17975) (Cons!17974 (h!19120 (_ BitVec 64)) (t!25369 List!17978)) )
))
(declare-fun arrayNoDuplicates!0 (array!53040 (_ BitVec 32) List!17978) Bool)

(assert (=> b!902789 (= lt!407885 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17975))))

(declare-fun res!609278 () Bool)

(assert (=> start!77512 (=> (not res!609278) (not e!505766))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77512 (= res!609278 (validMask!0 mask!1756))))

(assert (=> start!77512 e!505766))

(assert (=> start!77512 true))

(declare-datatypes ((V!29627 0))(
  ( (V!29628 (val!9299 Int)) )
))
(declare-datatypes ((ValueCell!8767 0))(
  ( (ValueCellFull!8767 (v!11804 V!29627)) (EmptyCell!8767) )
))
(declare-datatypes ((array!53042 0))(
  ( (array!53043 (arr!25477 (Array (_ BitVec 32) ValueCell!8767)) (size!25937 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53042)

(declare-fun e!505762 () Bool)

(declare-fun array_inv!19946 (array!53042) Bool)

(assert (=> start!77512 (and (array_inv!19946 _values!1152) e!505762)))

(declare-fun array_inv!19947 (array!53040) Bool)

(assert (=> start!77512 (array_inv!19947 _keys!1386)))

(declare-fun b!902790 () Bool)

(declare-fun e!505765 () Bool)

(assert (=> b!902790 (= e!505765 tp_is_empty!18497)))

(declare-fun b!902791 () Bool)

(declare-fun res!609279 () Bool)

(assert (=> b!902791 (=> (not res!609279) (not e!505766))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902791 (= res!609279 (and (= (size!25937 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25936 _keys!1386) (size!25937 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902792 () Bool)

(declare-fun mapRes!29455 () Bool)

(assert (=> b!902792 (= e!505762 (and e!505765 mapRes!29455))))

(declare-fun condMapEmpty!29455 () Bool)

(declare-fun mapDefault!29455 () ValueCell!8767)

