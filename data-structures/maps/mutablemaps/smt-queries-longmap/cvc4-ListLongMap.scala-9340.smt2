; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111516 () Bool)

(assert start!111516)

(declare-fun b_free!30137 () Bool)

(declare-fun b_next!30137 () Bool)

(assert (=> start!111516 (= b_free!30137 (not b_next!30137))))

(declare-fun tp!105888 () Bool)

(declare-fun b_and!48443 () Bool)

(assert (=> start!111516 (= tp!105888 b_and!48443)))

(declare-fun b!1319514 () Bool)

(declare-fun res!875846 () Bool)

(declare-fun e!752841 () Bool)

(assert (=> b!1319514 (=> (not res!875846) (not e!752841))))

(declare-datatypes ((array!88813 0))(
  ( (array!88814 (arr!42876 (Array (_ BitVec 32) (_ BitVec 64))) (size!43427 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88813)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319514 (= res!875846 (not (= (select (arr!42876 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319515 () Bool)

(declare-fun res!875843 () Bool)

(assert (=> b!1319515 (=> (not res!875843) (not e!752841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319515 (= res!875843 (validKeyInArray!0 (select (arr!42876 _keys!1609) from!2000)))))

(declare-fun b!1319516 () Bool)

(assert (=> b!1319516 (= e!752841 (not true))))

(declare-datatypes ((V!53045 0))(
  ( (V!53046 (val!18053 Int)) )
))
(declare-datatypes ((tuple2!23398 0))(
  ( (tuple2!23399 (_1!11709 (_ BitVec 64)) (_2!11709 V!53045)) )
))
(declare-datatypes ((List!30585 0))(
  ( (Nil!30582) (Cons!30581 (h!31790 tuple2!23398) (t!44278 List!30585)) )
))
(declare-datatypes ((ListLongMap!21067 0))(
  ( (ListLongMap!21068 (toList!10549 List!30585)) )
))
(declare-fun lt!586602 () ListLongMap!21067)

(declare-fun contains!8640 (ListLongMap!21067 (_ BitVec 64)) Bool)

(assert (=> b!1319516 (contains!8640 lt!586602 k!1164)))

(declare-fun minValue!1279 () V!53045)

(declare-datatypes ((Unit!43412 0))(
  ( (Unit!43413) )
))
(declare-fun lt!586603 () Unit!43412)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!121 ((_ BitVec 64) (_ BitVec 64) V!53045 ListLongMap!21067) Unit!43412)

(assert (=> b!1319516 (= lt!586603 (lemmaInListMapAfterAddingDiffThenInBefore!121 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586602))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53045)

(declare-datatypes ((ValueCell!17080 0))(
  ( (ValueCellFull!17080 (v!20681 V!53045)) (EmptyCell!17080) )
))
(declare-datatypes ((array!88815 0))(
  ( (array!88816 (arr!42877 (Array (_ BitVec 32) ValueCell!17080)) (size!43428 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88815)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4506 (ListLongMap!21067 tuple2!23398) ListLongMap!21067)

(declare-fun getCurrentListMapNoExtraKeys!6221 (array!88813 array!88815 (_ BitVec 32) (_ BitVec 32) V!53045 V!53045 (_ BitVec 32) Int) ListLongMap!21067)

(declare-fun get!21598 (ValueCell!17080 V!53045) V!53045)

(declare-fun dynLambda!3543 (Int (_ BitVec 64)) V!53045)

(assert (=> b!1319516 (= lt!586602 (+!4506 (+!4506 (getCurrentListMapNoExtraKeys!6221 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23399 (select (arr!42876 _keys!1609) from!2000) (get!21598 (select (arr!42877 _values!1337) from!2000) (dynLambda!3543 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319517 () Bool)

(declare-fun res!875845 () Bool)

(assert (=> b!1319517 (=> (not res!875845) (not e!752841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88813 (_ BitVec 32)) Bool)

(assert (=> b!1319517 (= res!875845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!875841 () Bool)

(assert (=> start!111516 (=> (not res!875841) (not e!752841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111516 (= res!875841 (validMask!0 mask!2019))))

(assert (=> start!111516 e!752841))

(declare-fun array_inv!32325 (array!88813) Bool)

(assert (=> start!111516 (array_inv!32325 _keys!1609)))

(assert (=> start!111516 true))

(declare-fun tp_is_empty!35957 () Bool)

(assert (=> start!111516 tp_is_empty!35957))

(declare-fun e!752838 () Bool)

(declare-fun array_inv!32326 (array!88815) Bool)

(assert (=> start!111516 (and (array_inv!32326 _values!1337) e!752838)))

(assert (=> start!111516 tp!105888))

(declare-fun b!1319518 () Bool)

(declare-fun e!752840 () Bool)

(assert (=> b!1319518 (= e!752840 tp_is_empty!35957)))

(declare-fun mapNonEmpty!55583 () Bool)

(declare-fun mapRes!55583 () Bool)

(declare-fun tp!105887 () Bool)

(assert (=> mapNonEmpty!55583 (= mapRes!55583 (and tp!105887 e!752840))))

(declare-fun mapRest!55583 () (Array (_ BitVec 32) ValueCell!17080))

(declare-fun mapKey!55583 () (_ BitVec 32))

(declare-fun mapValue!55583 () ValueCell!17080)

(assert (=> mapNonEmpty!55583 (= (arr!42877 _values!1337) (store mapRest!55583 mapKey!55583 mapValue!55583))))

(declare-fun b!1319519 () Bool)

(declare-fun e!752839 () Bool)

(assert (=> b!1319519 (= e!752838 (and e!752839 mapRes!55583))))

(declare-fun condMapEmpty!55583 () Bool)

(declare-fun mapDefault!55583 () ValueCell!17080)

