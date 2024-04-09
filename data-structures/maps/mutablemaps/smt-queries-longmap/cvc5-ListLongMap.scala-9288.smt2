; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111112 () Bool)

(assert start!111112)

(declare-fun b_free!29911 () Bool)

(declare-fun b_next!29911 () Bool)

(assert (=> start!111112 (= b_free!29911 (not b_next!29911))))

(declare-fun tp!105055 () Bool)

(declare-fun b_and!48129 () Bool)

(assert (=> start!111112 (= tp!105055 b_and!48129)))

(declare-fun mapIsEmpty!55090 () Bool)

(declare-fun mapRes!55090 () Bool)

(assert (=> mapIsEmpty!55090 mapRes!55090))

(declare-fun res!873073 () Bool)

(declare-fun e!750170 () Bool)

(assert (=> start!111112 (=> (not res!873073) (not e!750170))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111112 (= res!873073 (validMask!0 mask!2040))))

(assert (=> start!111112 e!750170))

(assert (=> start!111112 tp!105055))

(declare-datatypes ((array!88211 0))(
  ( (array!88212 (arr!42581 (Array (_ BitVec 32) (_ BitVec 64))) (size!43132 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88211)

(declare-fun array_inv!32135 (array!88211) Bool)

(assert (=> start!111112 (array_inv!32135 _keys!1628)))

(assert (=> start!111112 true))

(declare-fun tp_is_empty!35641 () Bool)

(assert (=> start!111112 tp_is_empty!35641))

(declare-datatypes ((V!52625 0))(
  ( (V!52626 (val!17895 Int)) )
))
(declare-datatypes ((ValueCell!16922 0))(
  ( (ValueCellFull!16922 (v!20520 V!52625)) (EmptyCell!16922) )
))
(declare-datatypes ((array!88213 0))(
  ( (array!88214 (arr!42582 (Array (_ BitVec 32) ValueCell!16922)) (size!43133 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88213)

(declare-fun e!750168 () Bool)

(declare-fun array_inv!32136 (array!88213) Bool)

(assert (=> start!111112 (and (array_inv!32136 _values!1354) e!750168)))

(declare-fun b!1315005 () Bool)

(declare-fun res!873074 () Bool)

(assert (=> b!1315005 (=> (not res!873074) (not e!750170))))

(declare-datatypes ((List!30406 0))(
  ( (Nil!30403) (Cons!30402 (h!31611 (_ BitVec 64)) (t!44019 List!30406)) )
))
(declare-fun arrayNoDuplicates!0 (array!88211 (_ BitVec 32) List!30406) Bool)

(assert (=> b!1315005 (= res!873074 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30403))))

(declare-fun b!1315006 () Bool)

(declare-fun res!873071 () Bool)

(assert (=> b!1315006 (=> (not res!873071) (not e!750170))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315006 (= res!873071 (and (= (size!43133 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43132 _keys!1628) (size!43133 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315007 () Bool)

(declare-fun res!873070 () Bool)

(assert (=> b!1315007 (=> (not res!873070) (not e!750170))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315007 (= res!873070 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43132 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315008 () Bool)

(declare-fun res!873072 () Bool)

(assert (=> b!1315008 (=> (not res!873072) (not e!750170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88211 (_ BitVec 32)) Bool)

(assert (=> b!1315008 (= res!873072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315009 () Bool)

(declare-fun e!750169 () Bool)

(assert (=> b!1315009 (= e!750168 (and e!750169 mapRes!55090))))

(declare-fun condMapEmpty!55090 () Bool)

(declare-fun mapDefault!55090 () ValueCell!16922)

