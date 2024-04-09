; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111420 () Bool)

(assert start!111420)

(declare-fun b_free!30041 () Bool)

(declare-fun b_next!30041 () Bool)

(assert (=> start!111420 (= b_free!30041 (not b_next!30041))))

(declare-fun tp!105599 () Bool)

(declare-fun b_and!48271 () Bool)

(assert (=> start!111420 (= tp!105599 b_and!48271)))

(declare-fun b!1317911 () Bool)

(declare-fun res!874747 () Bool)

(declare-fun e!752118 () Bool)

(assert (=> b!1317911 (=> (not res!874747) (not e!752118))))

(declare-datatypes ((array!88625 0))(
  ( (array!88626 (arr!42782 (Array (_ BitVec 32) (_ BitVec 64))) (size!43333 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88625)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317911 (= res!874747 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43333 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55439 () Bool)

(declare-fun mapRes!55439 () Bool)

(declare-fun tp!105600 () Bool)

(declare-fun e!752119 () Bool)

(assert (=> mapNonEmpty!55439 (= mapRes!55439 (and tp!105600 e!752119))))

(declare-fun mapKey!55439 () (_ BitVec 32))

(declare-datatypes ((V!52917 0))(
  ( (V!52918 (val!18005 Int)) )
))
(declare-datatypes ((ValueCell!17032 0))(
  ( (ValueCellFull!17032 (v!20633 V!52917)) (EmptyCell!17032) )
))
(declare-fun mapValue!55439 () ValueCell!17032)

(declare-datatypes ((array!88627 0))(
  ( (array!88628 (arr!42783 (Array (_ BitVec 32) ValueCell!17032)) (size!43334 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88627)

(declare-fun mapRest!55439 () (Array (_ BitVec 32) ValueCell!17032))

(assert (=> mapNonEmpty!55439 (= (arr!42783 _values!1337) (store mapRest!55439 mapKey!55439 mapValue!55439))))

(declare-fun b!1317912 () Bool)

(declare-fun tp_is_empty!35861 () Bool)

(assert (=> b!1317912 (= e!752119 tp_is_empty!35861)))

(declare-fun b!1317913 () Bool)

(assert (=> b!1317913 (= e!752118 false)))

(declare-fun zeroValue!1279 () V!52917)

(declare-fun minValue!1279 () V!52917)

(declare-fun lt!586369 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23320 0))(
  ( (tuple2!23321 (_1!11670 (_ BitVec 64)) (_2!11670 V!52917)) )
))
(declare-datatypes ((List!30510 0))(
  ( (Nil!30507) (Cons!30506 (h!31715 tuple2!23320) (t!44125 List!30510)) )
))
(declare-datatypes ((ListLongMap!20989 0))(
  ( (ListLongMap!20990 (toList!10510 List!30510)) )
))
(declare-fun contains!8601 (ListLongMap!20989 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5466 (array!88625 array!88627 (_ BitVec 32) (_ BitVec 32) V!52917 V!52917 (_ BitVec 32) Int) ListLongMap!20989)

(assert (=> b!1317913 (= lt!586369 (contains!8601 (getCurrentListMap!5466 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapIsEmpty!55439 () Bool)

(assert (=> mapIsEmpty!55439 mapRes!55439))

(declare-fun b!1317914 () Bool)

(declare-fun res!874746 () Bool)

(assert (=> b!1317914 (=> (not res!874746) (not e!752118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88625 (_ BitVec 32)) Bool)

(assert (=> b!1317914 (= res!874746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317915 () Bool)

(declare-fun e!752121 () Bool)

(assert (=> b!1317915 (= e!752121 tp_is_empty!35861)))

(declare-fun res!874749 () Bool)

(assert (=> start!111420 (=> (not res!874749) (not e!752118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111420 (= res!874749 (validMask!0 mask!2019))))

(assert (=> start!111420 e!752118))

(declare-fun array_inv!32263 (array!88625) Bool)

(assert (=> start!111420 (array_inv!32263 _keys!1609)))

(assert (=> start!111420 true))

(assert (=> start!111420 tp_is_empty!35861))

(declare-fun e!752122 () Bool)

(declare-fun array_inv!32264 (array!88627) Bool)

(assert (=> start!111420 (and (array_inv!32264 _values!1337) e!752122)))

(assert (=> start!111420 tp!105599))

(declare-fun b!1317916 () Bool)

(declare-fun res!874748 () Bool)

(assert (=> b!1317916 (=> (not res!874748) (not e!752118))))

(declare-datatypes ((List!30511 0))(
  ( (Nil!30508) (Cons!30507 (h!31716 (_ BitVec 64)) (t!44126 List!30511)) )
))
(declare-fun arrayNoDuplicates!0 (array!88625 (_ BitVec 32) List!30511) Bool)

(assert (=> b!1317916 (= res!874748 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30508))))

(declare-fun b!1317917 () Bool)

(assert (=> b!1317917 (= e!752122 (and e!752121 mapRes!55439))))

(declare-fun condMapEmpty!55439 () Bool)

(declare-fun mapDefault!55439 () ValueCell!17032)

