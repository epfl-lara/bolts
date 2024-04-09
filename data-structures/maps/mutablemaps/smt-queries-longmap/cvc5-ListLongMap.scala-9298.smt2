; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111172 () Bool)

(assert start!111172)

(declare-fun b_free!29971 () Bool)

(declare-fun b_next!29971 () Bool)

(assert (=> start!111172 (= b_free!29971 (not b_next!29971))))

(declare-fun tp!105235 () Bool)

(declare-fun b_and!48189 () Bool)

(assert (=> start!111172 (= tp!105235 b_and!48189)))

(declare-fun b!1315761 () Bool)

(declare-fun e!750618 () Bool)

(declare-fun tp_is_empty!35701 () Bool)

(assert (=> b!1315761 (= e!750618 tp_is_empty!35701)))

(declare-fun b!1315762 () Bool)

(declare-fun res!873557 () Bool)

(declare-fun e!750616 () Bool)

(assert (=> b!1315762 (=> (not res!873557) (not e!750616))))

(declare-datatypes ((array!88321 0))(
  ( (array!88322 (arr!42636 (Array (_ BitVec 32) (_ BitVec 64))) (size!43187 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88321)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88321 (_ BitVec 32)) Bool)

(assert (=> b!1315762 (= res!873557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315763 () Bool)

(declare-fun res!873556 () Bool)

(assert (=> b!1315763 (=> (not res!873556) (not e!750616))))

(declare-datatypes ((V!52705 0))(
  ( (V!52706 (val!17925 Int)) )
))
(declare-datatypes ((ValueCell!16952 0))(
  ( (ValueCellFull!16952 (v!20550 V!52705)) (EmptyCell!16952) )
))
(declare-datatypes ((array!88323 0))(
  ( (array!88324 (arr!42637 (Array (_ BitVec 32) ValueCell!16952)) (size!43188 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88323)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315763 (= res!873556 (and (= (size!43188 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43187 _keys!1628) (size!43188 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315765 () Bool)

(assert (=> b!1315765 (= e!750616 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585898 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52705)

(declare-fun zeroValue!1296 () V!52705)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23270 0))(
  ( (tuple2!23271 (_1!11645 (_ BitVec 64)) (_2!11645 V!52705)) )
))
(declare-datatypes ((List!30439 0))(
  ( (Nil!30436) (Cons!30435 (h!31644 tuple2!23270) (t!44052 List!30439)) )
))
(declare-datatypes ((ListLongMap!20939 0))(
  ( (ListLongMap!20940 (toList!10485 List!30439)) )
))
(declare-fun contains!8571 (ListLongMap!20939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5441 (array!88321 array!88323 (_ BitVec 32) (_ BitVec 32) V!52705 V!52705 (_ BitVec 32) Int) ListLongMap!20939)

(assert (=> b!1315765 (= lt!585898 (contains!8571 (getCurrentListMap!5441 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315766 () Bool)

(declare-fun e!750619 () Bool)

(assert (=> b!1315766 (= e!750619 tp_is_empty!35701)))

(declare-fun b!1315767 () Bool)

(declare-fun res!873558 () Bool)

(assert (=> b!1315767 (=> (not res!873558) (not e!750616))))

(assert (=> b!1315767 (= res!873558 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43187 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315768 () Bool)

(declare-fun res!873559 () Bool)

(assert (=> b!1315768 (=> (not res!873559) (not e!750616))))

(declare-datatypes ((List!30440 0))(
  ( (Nil!30437) (Cons!30436 (h!31645 (_ BitVec 64)) (t!44053 List!30440)) )
))
(declare-fun arrayNoDuplicates!0 (array!88321 (_ BitVec 32) List!30440) Bool)

(assert (=> b!1315768 (= res!873559 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30437))))

(declare-fun mapIsEmpty!55180 () Bool)

(declare-fun mapRes!55180 () Bool)

(assert (=> mapIsEmpty!55180 mapRes!55180))

(declare-fun mapNonEmpty!55180 () Bool)

(declare-fun tp!105236 () Bool)

(assert (=> mapNonEmpty!55180 (= mapRes!55180 (and tp!105236 e!750618))))

(declare-fun mapKey!55180 () (_ BitVec 32))

(declare-fun mapRest!55180 () (Array (_ BitVec 32) ValueCell!16952))

(declare-fun mapValue!55180 () ValueCell!16952)

(assert (=> mapNonEmpty!55180 (= (arr!42637 _values!1354) (store mapRest!55180 mapKey!55180 mapValue!55180))))

(declare-fun res!873560 () Bool)

(assert (=> start!111172 (=> (not res!873560) (not e!750616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111172 (= res!873560 (validMask!0 mask!2040))))

(assert (=> start!111172 e!750616))

(assert (=> start!111172 tp!105235))

(declare-fun array_inv!32169 (array!88321) Bool)

(assert (=> start!111172 (array_inv!32169 _keys!1628)))

(assert (=> start!111172 true))

(assert (=> start!111172 tp_is_empty!35701))

(declare-fun e!750617 () Bool)

(declare-fun array_inv!32170 (array!88323) Bool)

(assert (=> start!111172 (and (array_inv!32170 _values!1354) e!750617)))

(declare-fun b!1315764 () Bool)

(assert (=> b!1315764 (= e!750617 (and e!750619 mapRes!55180))))

(declare-fun condMapEmpty!55180 () Bool)

(declare-fun mapDefault!55180 () ValueCell!16952)

