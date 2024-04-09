; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111052 () Bool)

(assert start!111052)

(declare-fun b_free!29851 () Bool)

(declare-fun b_next!29851 () Bool)

(assert (=> start!111052 (= b_free!29851 (not b_next!29851))))

(declare-fun tp!104875 () Bool)

(declare-fun b_and!48069 () Bool)

(assert (=> start!111052 (= tp!104875 b_and!48069)))

(declare-fun b!1314285 () Bool)

(declare-fun res!872623 () Bool)

(declare-fun e!749720 () Bool)

(assert (=> b!1314285 (=> (not res!872623) (not e!749720))))

(declare-datatypes ((array!88097 0))(
  ( (array!88098 (arr!42524 (Array (_ BitVec 32) (_ BitVec 64))) (size!43075 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88097)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88097 (_ BitVec 32)) Bool)

(assert (=> b!1314285 (= res!872623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!55000 () Bool)

(declare-fun mapRes!55000 () Bool)

(declare-fun tp!104876 () Bool)

(declare-fun e!749717 () Bool)

(assert (=> mapNonEmpty!55000 (= mapRes!55000 (and tp!104876 e!749717))))

(declare-datatypes ((V!52545 0))(
  ( (V!52546 (val!17865 Int)) )
))
(declare-datatypes ((ValueCell!16892 0))(
  ( (ValueCellFull!16892 (v!20490 V!52545)) (EmptyCell!16892) )
))
(declare-fun mapValue!55000 () ValueCell!16892)

(declare-fun mapKey!55000 () (_ BitVec 32))

(declare-fun mapRest!55000 () (Array (_ BitVec 32) ValueCell!16892))

(declare-datatypes ((array!88099 0))(
  ( (array!88100 (arr!42525 (Array (_ BitVec 32) ValueCell!16892)) (size!43076 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88099)

(assert (=> mapNonEmpty!55000 (= (arr!42525 _values!1354) (store mapRest!55000 mapKey!55000 mapValue!55000))))

(declare-fun mapIsEmpty!55000 () Bool)

(assert (=> mapIsEmpty!55000 mapRes!55000))

(declare-fun b!1314287 () Bool)

(declare-fun res!872621 () Bool)

(assert (=> b!1314287 (=> (not res!872621) (not e!749720))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314287 (= res!872621 (and (= (size!43076 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43075 _keys!1628) (size!43076 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314288 () Bool)

(assert (=> b!1314288 (= e!749720 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585718 () Bool)

(declare-fun minValue!1296 () V!52545)

(declare-fun zeroValue!1296 () V!52545)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23206 0))(
  ( (tuple2!23207 (_1!11613 (_ BitVec 64)) (_2!11613 V!52545)) )
))
(declare-datatypes ((List!30369 0))(
  ( (Nil!30366) (Cons!30365 (h!31574 tuple2!23206) (t!43982 List!30369)) )
))
(declare-datatypes ((ListLongMap!20875 0))(
  ( (ListLongMap!20876 (toList!10453 List!30369)) )
))
(declare-fun contains!8539 (ListLongMap!20875 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5409 (array!88097 array!88099 (_ BitVec 32) (_ BitVec 32) V!52545 V!52545 (_ BitVec 32) Int) ListLongMap!20875)

(assert (=> b!1314288 (= lt!585718 (contains!8539 (getCurrentListMap!5409 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314286 () Bool)

(declare-fun res!872622 () Bool)

(assert (=> b!1314286 (=> (not res!872622) (not e!749720))))

(assert (=> b!1314286 (= res!872622 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43075 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!872624 () Bool)

(assert (=> start!111052 (=> (not res!872624) (not e!749720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111052 (= res!872624 (validMask!0 mask!2040))))

(assert (=> start!111052 e!749720))

(assert (=> start!111052 tp!104875))

(declare-fun array_inv!32099 (array!88097) Bool)

(assert (=> start!111052 (array_inv!32099 _keys!1628)))

(assert (=> start!111052 true))

(declare-fun tp_is_empty!35581 () Bool)

(assert (=> start!111052 tp_is_empty!35581))

(declare-fun e!749718 () Bool)

(declare-fun array_inv!32100 (array!88099) Bool)

(assert (=> start!111052 (and (array_inv!32100 _values!1354) e!749718)))

(declare-fun b!1314289 () Bool)

(declare-fun res!872620 () Bool)

(assert (=> b!1314289 (=> (not res!872620) (not e!749720))))

(declare-datatypes ((List!30370 0))(
  ( (Nil!30367) (Cons!30366 (h!31575 (_ BitVec 64)) (t!43983 List!30370)) )
))
(declare-fun arrayNoDuplicates!0 (array!88097 (_ BitVec 32) List!30370) Bool)

(assert (=> b!1314289 (= res!872620 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30367))))

(declare-fun b!1314290 () Bool)

(declare-fun e!749716 () Bool)

(assert (=> b!1314290 (= e!749718 (and e!749716 mapRes!55000))))

(declare-fun condMapEmpty!55000 () Bool)

(declare-fun mapDefault!55000 () ValueCell!16892)

