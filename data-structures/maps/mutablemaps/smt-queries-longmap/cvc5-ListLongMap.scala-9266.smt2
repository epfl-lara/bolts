; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110980 () Bool)

(assert start!110980)

(declare-fun b_free!29779 () Bool)

(declare-fun b_next!29779 () Bool)

(assert (=> start!110980 (= b_free!29779 (not b_next!29779))))

(declare-fun tp!104659 () Bool)

(declare-fun b_and!47997 () Bool)

(assert (=> start!110980 (= tp!104659 b_and!47997)))

(declare-fun mapIsEmpty!54892 () Bool)

(declare-fun mapRes!54892 () Bool)

(assert (=> mapIsEmpty!54892 mapRes!54892))

(declare-fun b!1313385 () Bool)

(declare-fun e!749178 () Bool)

(declare-fun tp_is_empty!35509 () Bool)

(assert (=> b!1313385 (= e!749178 tp_is_empty!35509)))

(declare-fun res!872047 () Bool)

(declare-fun e!749180 () Bool)

(assert (=> start!110980 (=> (not res!872047) (not e!749180))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110980 (= res!872047 (validMask!0 mask!2040))))

(assert (=> start!110980 e!749180))

(assert (=> start!110980 tp!104659))

(declare-datatypes ((array!87961 0))(
  ( (array!87962 (arr!42456 (Array (_ BitVec 32) (_ BitVec 64))) (size!43007 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87961)

(declare-fun array_inv!32053 (array!87961) Bool)

(assert (=> start!110980 (array_inv!32053 _keys!1628)))

(assert (=> start!110980 true))

(assert (=> start!110980 tp_is_empty!35509))

(declare-datatypes ((V!52449 0))(
  ( (V!52450 (val!17829 Int)) )
))
(declare-datatypes ((ValueCell!16856 0))(
  ( (ValueCellFull!16856 (v!20454 V!52449)) (EmptyCell!16856) )
))
(declare-datatypes ((array!87963 0))(
  ( (array!87964 (arr!42457 (Array (_ BitVec 32) ValueCell!16856)) (size!43008 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87963)

(declare-fun e!749177 () Bool)

(declare-fun array_inv!32054 (array!87963) Bool)

(assert (=> start!110980 (and (array_inv!32054 _values!1354) e!749177)))

(declare-fun b!1313386 () Bool)

(assert (=> b!1313386 (= e!749177 (and e!749178 mapRes!54892))))

(declare-fun condMapEmpty!54892 () Bool)

(declare-fun mapDefault!54892 () ValueCell!16856)

