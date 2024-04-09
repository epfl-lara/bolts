; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113460 () Bool)

(assert start!113460)

(declare-fun b_free!31475 () Bool)

(declare-fun b_next!31475 () Bool)

(assert (=> start!113460 (= b_free!31475 (not b_next!31475))))

(declare-fun tp!110230 () Bool)

(declare-fun b_and!50773 () Bool)

(assert (=> start!113460 (= tp!110230 b_and!50773)))

(declare-fun b!1346341 () Bool)

(declare-fun res!893450 () Bool)

(declare-fun e!766093 () Bool)

(assert (=> b!1346341 (=> (not res!893450) (not e!766093))))

(declare-datatypes ((array!91743 0))(
  ( (array!91744 (arr!44323 (Array (_ BitVec 32) (_ BitVec 64))) (size!44874 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91743)

(declare-datatypes ((List!31563 0))(
  ( (Nil!31560) (Cons!31559 (h!32768 (_ BitVec 64)) (t!46160 List!31563)) )
))
(declare-fun arrayNoDuplicates!0 (array!91743 (_ BitVec 32) List!31563) Bool)

(assert (=> b!1346341 (= res!893450 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31560))))

(declare-fun b!1346342 () Bool)

(declare-fun e!766094 () Bool)

(declare-fun tp_is_empty!37475 () Bool)

(assert (=> b!1346342 (= e!766094 tp_is_empty!37475)))

(declare-fun mapNonEmpty!57919 () Bool)

(declare-fun mapRes!57919 () Bool)

(declare-fun tp!110231 () Bool)

(declare-fun e!766095 () Bool)

(assert (=> mapNonEmpty!57919 (= mapRes!57919 (and tp!110231 e!766095))))

(declare-fun mapKey!57919 () (_ BitVec 32))

(declare-datatypes ((V!55069 0))(
  ( (V!55070 (val!18812 Int)) )
))
(declare-datatypes ((ValueCell!17839 0))(
  ( (ValueCellFull!17839 (v!21458 V!55069)) (EmptyCell!17839) )
))
(declare-fun mapRest!57919 () (Array (_ BitVec 32) ValueCell!17839))

(declare-fun mapValue!57919 () ValueCell!17839)

(declare-datatypes ((array!91745 0))(
  ( (array!91746 (arr!44324 (Array (_ BitVec 32) ValueCell!17839)) (size!44875 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91745)

(assert (=> mapNonEmpty!57919 (= (arr!44324 _values!1303) (store mapRest!57919 mapKey!57919 mapValue!57919))))

(declare-fun res!893449 () Bool)

(assert (=> start!113460 (=> (not res!893449) (not e!766093))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113460 (= res!893449 (validMask!0 mask!1977))))

(assert (=> start!113460 e!766093))

(assert (=> start!113460 tp_is_empty!37475))

(assert (=> start!113460 true))

(declare-fun array_inv!33313 (array!91743) Bool)

(assert (=> start!113460 (array_inv!33313 _keys!1571)))

(declare-fun e!766097 () Bool)

(declare-fun array_inv!33314 (array!91745) Bool)

(assert (=> start!113460 (and (array_inv!33314 _values!1303) e!766097)))

(assert (=> start!113460 tp!110230))

(declare-fun b!1346343 () Bool)

(declare-fun res!893446 () Bool)

(assert (=> b!1346343 (=> (not res!893446) (not e!766093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91743 (_ BitVec 32)) Bool)

(assert (=> b!1346343 (= res!893446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346344 () Bool)

(assert (=> b!1346344 (= e!766095 tp_is_empty!37475)))

(declare-fun b!1346345 () Bool)

(assert (=> b!1346345 (= e!766093 false)))

(declare-fun minValue!1245 () V!55069)

(declare-fun lt!595447 () Bool)

(declare-fun zeroValue!1245 () V!55069)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24388 0))(
  ( (tuple2!24389 (_1!12204 (_ BitVec 64)) (_2!12204 V!55069)) )
))
(declare-datatypes ((List!31564 0))(
  ( (Nil!31561) (Cons!31560 (h!32769 tuple2!24388) (t!46161 List!31564)) )
))
(declare-datatypes ((ListLongMap!22057 0))(
  ( (ListLongMap!22058 (toList!11044 List!31564)) )
))
(declare-fun contains!9156 (ListLongMap!22057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5935 (array!91743 array!91745 (_ BitVec 32) (_ BitVec 32) V!55069 V!55069 (_ BitVec 32) Int) ListLongMap!22057)

(assert (=> b!1346345 (= lt!595447 (contains!9156 (getCurrentListMap!5935 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57919 () Bool)

(assert (=> mapIsEmpty!57919 mapRes!57919))

(declare-fun b!1346346 () Bool)

(assert (=> b!1346346 (= e!766097 (and e!766094 mapRes!57919))))

(declare-fun condMapEmpty!57919 () Bool)

(declare-fun mapDefault!57919 () ValueCell!17839)

