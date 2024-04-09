; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110546 () Bool)

(assert start!110546)

(declare-fun b_free!29345 () Bool)

(declare-fun b_next!29345 () Bool)

(assert (=> start!110546 (= b_free!29345 (not b_next!29345))))

(declare-fun tp!103358 () Bool)

(declare-fun b_and!47563 () Bool)

(assert (=> start!110546 (= tp!103358 b_and!47563)))

(declare-fun mapNonEmpty!54241 () Bool)

(declare-fun mapRes!54241 () Bool)

(declare-fun tp!103357 () Bool)

(declare-fun e!745923 () Bool)

(assert (=> mapNonEmpty!54241 (= mapRes!54241 (and tp!103357 e!745923))))

(declare-datatypes ((V!51869 0))(
  ( (V!51870 (val!17612 Int)) )
))
(declare-datatypes ((ValueCell!16639 0))(
  ( (ValueCellFull!16639 (v!20237 V!51869)) (EmptyCell!16639) )
))
(declare-fun mapRest!54241 () (Array (_ BitVec 32) ValueCell!16639))

(declare-fun mapValue!54241 () ValueCell!16639)

(declare-datatypes ((array!87125 0))(
  ( (array!87126 (arr!42038 (Array (_ BitVec 32) ValueCell!16639)) (size!42589 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87125)

(declare-fun mapKey!54241 () (_ BitVec 32))

(assert (=> mapNonEmpty!54241 (= (arr!42038 _values!1354) (store mapRest!54241 mapKey!54241 mapValue!54241))))

(declare-fun b!1307178 () Bool)

(declare-fun res!867792 () Bool)

(declare-fun e!745924 () Bool)

(assert (=> b!1307178 (=> (not res!867792) (not e!745924))))

(declare-datatypes ((array!87127 0))(
  ( (array!87128 (arr!42039 (Array (_ BitVec 32) (_ BitVec 64))) (size!42590 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87127)

(declare-datatypes ((List!30007 0))(
  ( (Nil!30004) (Cons!30003 (h!31212 (_ BitVec 64)) (t!43620 List!30007)) )
))
(declare-fun arrayNoDuplicates!0 (array!87127 (_ BitVec 32) List!30007) Bool)

(assert (=> b!1307178 (= res!867792 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30004))))

(declare-fun b!1307179 () Bool)

(assert (=> b!1307179 (= e!745924 false)))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51869)

(declare-fun zeroValue!1296 () V!51869)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!584968 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22836 0))(
  ( (tuple2!22837 (_1!11428 (_ BitVec 64)) (_2!11428 V!51869)) )
))
(declare-datatypes ((List!30008 0))(
  ( (Nil!30005) (Cons!30004 (h!31213 tuple2!22836) (t!43621 List!30008)) )
))
(declare-datatypes ((ListLongMap!20505 0))(
  ( (ListLongMap!20506 (toList!10268 List!30008)) )
))
(declare-fun contains!8354 (ListLongMap!20505 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5224 (array!87127 array!87125 (_ BitVec 32) (_ BitVec 32) V!51869 V!51869 (_ BitVec 32) Int) ListLongMap!20505)

(assert (=> b!1307179 (= lt!584968 (contains!8354 (getCurrentListMap!5224 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!867793 () Bool)

(assert (=> start!110546 (=> (not res!867793) (not e!745924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110546 (= res!867793 (validMask!0 mask!2040))))

(assert (=> start!110546 e!745924))

(assert (=> start!110546 tp!103358))

(declare-fun array_inv!31777 (array!87127) Bool)

(assert (=> start!110546 (array_inv!31777 _keys!1628)))

(assert (=> start!110546 true))

(declare-fun tp_is_empty!35075 () Bool)

(assert (=> start!110546 tp_is_empty!35075))

(declare-fun e!745925 () Bool)

(declare-fun array_inv!31778 (array!87125) Bool)

(assert (=> start!110546 (and (array_inv!31778 _values!1354) e!745925)))

(declare-fun b!1307180 () Bool)

(declare-fun e!745922 () Bool)

(assert (=> b!1307180 (= e!745925 (and e!745922 mapRes!54241))))

(declare-fun condMapEmpty!54241 () Bool)

(declare-fun mapDefault!54241 () ValueCell!16639)

