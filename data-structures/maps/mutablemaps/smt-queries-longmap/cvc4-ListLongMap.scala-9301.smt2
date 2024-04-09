; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111194 () Bool)

(assert start!111194)

(declare-fun b_free!29993 () Bool)

(declare-fun b_next!29993 () Bool)

(assert (=> start!111194 (= b_free!29993 (not b_next!29993))))

(declare-fun tp!105301 () Bool)

(declare-fun b_and!48211 () Bool)

(assert (=> start!111194 (= tp!105301 b_and!48211)))

(declare-fun b!1316025 () Bool)

(declare-fun res!873725 () Bool)

(declare-fun e!750785 () Bool)

(assert (=> b!1316025 (=> (not res!873725) (not e!750785))))

(declare-datatypes ((array!88363 0))(
  ( (array!88364 (arr!42657 (Array (_ BitVec 32) (_ BitVec 64))) (size!43208 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88363)

(declare-datatypes ((List!30455 0))(
  ( (Nil!30452) (Cons!30451 (h!31660 (_ BitVec 64)) (t!44068 List!30455)) )
))
(declare-fun arrayNoDuplicates!0 (array!88363 (_ BitVec 32) List!30455) Bool)

(assert (=> b!1316025 (= res!873725 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30452))))

(declare-fun b!1316026 () Bool)

(declare-fun res!873723 () Bool)

(assert (=> b!1316026 (=> (not res!873723) (not e!750785))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1316026 (= res!873723 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43208 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316027 () Bool)

(declare-fun e!750781 () Bool)

(declare-fun tp_is_empty!35723 () Bool)

(assert (=> b!1316027 (= e!750781 tp_is_empty!35723)))

(declare-fun b!1316028 () Bool)

(assert (=> b!1316028 (= e!750785 false)))

(declare-fun lt!585931 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52733 0))(
  ( (V!52734 (val!17936 Int)) )
))
(declare-fun minValue!1296 () V!52733)

(declare-datatypes ((ValueCell!16963 0))(
  ( (ValueCellFull!16963 (v!20561 V!52733)) (EmptyCell!16963) )
))
(declare-datatypes ((array!88365 0))(
  ( (array!88366 (arr!42658 (Array (_ BitVec 32) ValueCell!16963)) (size!43209 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88365)

(declare-fun zeroValue!1296 () V!52733)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23286 0))(
  ( (tuple2!23287 (_1!11653 (_ BitVec 64)) (_2!11653 V!52733)) )
))
(declare-datatypes ((List!30456 0))(
  ( (Nil!30453) (Cons!30452 (h!31661 tuple2!23286) (t!44069 List!30456)) )
))
(declare-datatypes ((ListLongMap!20955 0))(
  ( (ListLongMap!20956 (toList!10493 List!30456)) )
))
(declare-fun contains!8579 (ListLongMap!20955 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5449 (array!88363 array!88365 (_ BitVec 32) (_ BitVec 32) V!52733 V!52733 (_ BitVec 32) Int) ListLongMap!20955)

(assert (=> b!1316028 (= lt!585931 (contains!8579 (getCurrentListMap!5449 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!873724 () Bool)

(assert (=> start!111194 (=> (not res!873724) (not e!750785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111194 (= res!873724 (validMask!0 mask!2040))))

(assert (=> start!111194 e!750785))

(assert (=> start!111194 tp!105301))

(declare-fun array_inv!32183 (array!88363) Bool)

(assert (=> start!111194 (array_inv!32183 _keys!1628)))

(assert (=> start!111194 true))

(assert (=> start!111194 tp_is_empty!35723))

(declare-fun e!750782 () Bool)

(declare-fun array_inv!32184 (array!88365) Bool)

(assert (=> start!111194 (and (array_inv!32184 _values!1354) e!750782)))

(declare-fun b!1316029 () Bool)

(declare-fun e!750783 () Bool)

(declare-fun mapRes!55213 () Bool)

(assert (=> b!1316029 (= e!750782 (and e!750783 mapRes!55213))))

(declare-fun condMapEmpty!55213 () Bool)

(declare-fun mapDefault!55213 () ValueCell!16963)

