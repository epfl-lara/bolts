; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111504 () Bool)

(assert start!111504)

(declare-fun b_free!30125 () Bool)

(declare-fun b_next!30125 () Bool)

(assert (=> start!111504 (= b_free!30125 (not b_next!30125))))

(declare-fun tp!105851 () Bool)

(declare-fun b_and!48419 () Bool)

(assert (=> start!111504 (= tp!105851 b_and!48419)))

(declare-fun b!1319304 () Bool)

(declare-fun res!875698 () Bool)

(declare-fun e!752749 () Bool)

(assert (=> b!1319304 (=> (not res!875698) (not e!752749))))

(declare-datatypes ((array!88789 0))(
  ( (array!88790 (arr!42864 (Array (_ BitVec 32) (_ BitVec 64))) (size!43415 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88789)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53029 0))(
  ( (V!53030 (val!18047 Int)) )
))
(declare-fun zeroValue!1279 () V!53029)

(declare-datatypes ((ValueCell!17074 0))(
  ( (ValueCellFull!17074 (v!20675 V!53029)) (EmptyCell!17074) )
))
(declare-datatypes ((array!88791 0))(
  ( (array!88792 (arr!42865 (Array (_ BitVec 32) ValueCell!17074)) (size!43416 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88791)

(declare-fun minValue!1279 () V!53029)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((tuple2!23388 0))(
  ( (tuple2!23389 (_1!11704 (_ BitVec 64)) (_2!11704 V!53029)) )
))
(declare-datatypes ((List!30574 0))(
  ( (Nil!30571) (Cons!30570 (h!31779 tuple2!23388) (t!44255 List!30574)) )
))
(declare-datatypes ((ListLongMap!21057 0))(
  ( (ListLongMap!21058 (toList!10544 List!30574)) )
))
(declare-fun contains!8635 (ListLongMap!21057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5492 (array!88789 array!88791 (_ BitVec 32) (_ BitVec 32) V!53029 V!53029 (_ BitVec 32) Int) ListLongMap!21057)

(assert (=> b!1319304 (= res!875698 (contains!8635 (getCurrentListMap!5492 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!875700 () Bool)

(assert (=> start!111504 (=> (not res!875700) (not e!752749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111504 (= res!875700 (validMask!0 mask!2019))))

(assert (=> start!111504 e!752749))

(declare-fun array_inv!32315 (array!88789) Bool)

(assert (=> start!111504 (array_inv!32315 _keys!1609)))

(assert (=> start!111504 true))

(declare-fun tp_is_empty!35945 () Bool)

(assert (=> start!111504 tp_is_empty!35945))

(declare-fun e!752748 () Bool)

(declare-fun array_inv!32316 (array!88791) Bool)

(assert (=> start!111504 (and (array_inv!32316 _values!1337) e!752748)))

(assert (=> start!111504 tp!105851))

(declare-fun mapNonEmpty!55565 () Bool)

(declare-fun mapRes!55565 () Bool)

(declare-fun tp!105852 () Bool)

(declare-fun e!752752 () Bool)

(assert (=> mapNonEmpty!55565 (= mapRes!55565 (and tp!105852 e!752752))))

(declare-fun mapRest!55565 () (Array (_ BitVec 32) ValueCell!17074))

(declare-fun mapValue!55565 () ValueCell!17074)

(declare-fun mapKey!55565 () (_ BitVec 32))

(assert (=> mapNonEmpty!55565 (= (arr!42865 _values!1337) (store mapRest!55565 mapKey!55565 mapValue!55565))))

(declare-fun b!1319305 () Bool)

(declare-fun res!875699 () Bool)

(assert (=> b!1319305 (=> (not res!875699) (not e!752749))))

(assert (=> b!1319305 (= res!875699 (and (= (size!43416 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43415 _keys!1609) (size!43416 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319306 () Bool)

(declare-fun res!875702 () Bool)

(assert (=> b!1319306 (=> (not res!875702) (not e!752749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319306 (= res!875702 (validKeyInArray!0 (select (arr!42864 _keys!1609) from!2000)))))

(declare-fun b!1319307 () Bool)

(declare-fun res!875704 () Bool)

(assert (=> b!1319307 (=> (not res!875704) (not e!752749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88789 (_ BitVec 32)) Bool)

(assert (=> b!1319307 (= res!875704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319308 () Bool)

(declare-fun res!875697 () Bool)

(assert (=> b!1319308 (=> (not res!875697) (not e!752749))))

(declare-datatypes ((List!30575 0))(
  ( (Nil!30572) (Cons!30571 (h!31780 (_ BitVec 64)) (t!44256 List!30575)) )
))
(declare-fun arrayNoDuplicates!0 (array!88789 (_ BitVec 32) List!30575) Bool)

(assert (=> b!1319308 (= res!875697 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30572))))

(declare-fun mapIsEmpty!55565 () Bool)

(assert (=> mapIsEmpty!55565 mapRes!55565))

(declare-fun b!1319309 () Bool)

(declare-fun e!752751 () Bool)

(assert (=> b!1319309 (= e!752751 tp_is_empty!35945)))

(declare-fun b!1319310 () Bool)

(declare-fun res!875703 () Bool)

(assert (=> b!1319310 (=> (not res!875703) (not e!752749))))

(assert (=> b!1319310 (= res!875703 (not (= (select (arr!42864 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319311 () Bool)

(assert (=> b!1319311 (= e!752748 (and e!752751 mapRes!55565))))

(declare-fun condMapEmpty!55565 () Bool)

(declare-fun mapDefault!55565 () ValueCell!17074)

