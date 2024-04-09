; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110552 () Bool)

(assert start!110552)

(declare-fun b_free!29351 () Bool)

(declare-fun b_next!29351 () Bool)

(assert (=> start!110552 (= b_free!29351 (not b_next!29351))))

(declare-fun tp!103376 () Bool)

(declare-fun b_and!47569 () Bool)

(assert (=> start!110552 (= tp!103376 b_and!47569)))

(declare-fun b!1307250 () Bool)

(declare-fun res!867836 () Bool)

(declare-fun e!745970 () Bool)

(assert (=> b!1307250 (=> (not res!867836) (not e!745970))))

(declare-datatypes ((array!87137 0))(
  ( (array!87138 (arr!42044 (Array (_ BitVec 32) (_ BitVec 64))) (size!42595 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87137)

(declare-datatypes ((List!30012 0))(
  ( (Nil!30009) (Cons!30008 (h!31217 (_ BitVec 64)) (t!43625 List!30012)) )
))
(declare-fun arrayNoDuplicates!0 (array!87137 (_ BitVec 32) List!30012) Bool)

(assert (=> b!1307250 (= res!867836 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30009))))

(declare-fun b!1307251 () Bool)

(declare-fun res!867838 () Bool)

(assert (=> b!1307251 (=> (not res!867838) (not e!745970))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87137 (_ BitVec 32)) Bool)

(assert (=> b!1307251 (= res!867838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54250 () Bool)

(declare-fun mapRes!54250 () Bool)

(assert (=> mapIsEmpty!54250 mapRes!54250))

(declare-fun b!1307253 () Bool)

(declare-fun e!745968 () Bool)

(declare-fun tp_is_empty!35081 () Bool)

(assert (=> b!1307253 (= e!745968 tp_is_empty!35081)))

(declare-fun b!1307254 () Bool)

(assert (=> b!1307254 (= e!745970 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51877 0))(
  ( (V!51878 (val!17615 Int)) )
))
(declare-fun minValue!1296 () V!51877)

(declare-datatypes ((ValueCell!16642 0))(
  ( (ValueCellFull!16642 (v!20240 V!51877)) (EmptyCell!16642) )
))
(declare-datatypes ((array!87139 0))(
  ( (array!87140 (arr!42045 (Array (_ BitVec 32) ValueCell!16642)) (size!42596 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87139)

(declare-fun lt!584977 () Bool)

(declare-fun zeroValue!1296 () V!51877)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22840 0))(
  ( (tuple2!22841 (_1!11430 (_ BitVec 64)) (_2!11430 V!51877)) )
))
(declare-datatypes ((List!30013 0))(
  ( (Nil!30010) (Cons!30009 (h!31218 tuple2!22840) (t!43626 List!30013)) )
))
(declare-datatypes ((ListLongMap!20509 0))(
  ( (ListLongMap!20510 (toList!10270 List!30013)) )
))
(declare-fun contains!8356 (ListLongMap!20509 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5226 (array!87137 array!87139 (_ BitVec 32) (_ BitVec 32) V!51877 V!51877 (_ BitVec 32) Int) ListLongMap!20509)

(assert (=> b!1307254 (= lt!584977 (contains!8356 (getCurrentListMap!5226 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307255 () Bool)

(declare-fun e!745966 () Bool)

(assert (=> b!1307255 (= e!745966 (and e!745968 mapRes!54250))))

(declare-fun condMapEmpty!54250 () Bool)

(declare-fun mapDefault!54250 () ValueCell!16642)

