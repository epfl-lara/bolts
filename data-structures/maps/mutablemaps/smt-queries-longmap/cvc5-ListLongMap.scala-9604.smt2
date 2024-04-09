; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113580 () Bool)

(assert start!113580)

(declare-fun b_free!31537 () Bool)

(declare-fun b_next!31537 () Bool)

(assert (=> start!113580 (= b_free!31537 (not b_next!31537))))

(declare-fun tp!110420 () Bool)

(declare-fun b_and!50873 () Bool)

(assert (=> start!113580 (= tp!110420 b_and!50873)))

(declare-fun b!1347744 () Bool)

(declare-fun res!894323 () Bool)

(declare-fun e!766804 () Bool)

(assert (=> b!1347744 (=> (not res!894323) (not e!766804))))

(declare-datatypes ((array!91865 0))(
  ( (array!91866 (arr!44383 (Array (_ BitVec 32) (_ BitVec 64))) (size!44934 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91865)

(declare-datatypes ((List!31605 0))(
  ( (Nil!31602) (Cons!31601 (h!32810 (_ BitVec 64)) (t!46228 List!31605)) )
))
(declare-fun arrayNoDuplicates!0 (array!91865 (_ BitVec 32) List!31605) Bool)

(assert (=> b!1347744 (= res!894323 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31602))))

(declare-fun b!1347745 () Bool)

(declare-fun res!894330 () Bool)

(assert (=> b!1347745 (=> (not res!894330) (not e!766804))))

(declare-datatypes ((V!55153 0))(
  ( (V!55154 (val!18843 Int)) )
))
(declare-fun minValue!1245 () V!55153)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55153)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17870 0))(
  ( (ValueCellFull!17870 (v!21492 V!55153)) (EmptyCell!17870) )
))
(declare-datatypes ((array!91867 0))(
  ( (array!91868 (arr!44384 (Array (_ BitVec 32) ValueCell!17870)) (size!44935 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91867)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24436 0))(
  ( (tuple2!24437 (_1!12228 (_ BitVec 64)) (_2!12228 V!55153)) )
))
(declare-datatypes ((List!31606 0))(
  ( (Nil!31603) (Cons!31602 (h!32811 tuple2!24436) (t!46229 List!31606)) )
))
(declare-datatypes ((ListLongMap!22105 0))(
  ( (ListLongMap!22106 (toList!11068 List!31606)) )
))
(declare-fun contains!9181 (ListLongMap!22105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5958 (array!91865 array!91867 (_ BitVec 32) (_ BitVec 32) V!55153 V!55153 (_ BitVec 32) Int) ListLongMap!22105)

(assert (=> b!1347745 (= res!894330 (contains!9181 (getCurrentListMap!5958 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347746 () Bool)

(declare-fun res!894326 () Bool)

(assert (=> b!1347746 (=> (not res!894326) (not e!766804))))

(assert (=> b!1347746 (= res!894326 (not (= (select (arr!44383 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347747 () Bool)

(declare-fun res!894329 () Bool)

(assert (=> b!1347747 (=> (not res!894329) (not e!766804))))

(assert (=> b!1347747 (= res!894329 (and (= (size!44935 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44934 _keys!1571) (size!44935 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347748 () Bool)

(declare-fun e!766801 () Bool)

(declare-fun tp_is_empty!37537 () Bool)

(assert (=> b!1347748 (= e!766801 tp_is_empty!37537)))

(declare-fun b!1347749 () Bool)

(declare-fun e!766802 () Bool)

(assert (=> b!1347749 (= e!766802 tp_is_empty!37537)))

(declare-fun b!1347750 () Bool)

(declare-fun res!894327 () Bool)

(assert (=> b!1347750 (=> (not res!894327) (not e!766804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91865 (_ BitVec 32)) Bool)

(assert (=> b!1347750 (= res!894327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!894324 () Bool)

(assert (=> start!113580 (=> (not res!894324) (not e!766804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113580 (= res!894324 (validMask!0 mask!1977))))

(assert (=> start!113580 e!766804))

(assert (=> start!113580 tp_is_empty!37537))

(assert (=> start!113580 true))

(declare-fun array_inv!33347 (array!91865) Bool)

(assert (=> start!113580 (array_inv!33347 _keys!1571)))

(declare-fun e!766805 () Bool)

(declare-fun array_inv!33348 (array!91867) Bool)

(assert (=> start!113580 (and (array_inv!33348 _values!1303) e!766805)))

(assert (=> start!113580 tp!110420))

(declare-fun b!1347751 () Bool)

(declare-fun res!894328 () Bool)

(assert (=> b!1347751 (=> (not res!894328) (not e!766804))))

(assert (=> b!1347751 (= res!894328 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44934 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!58016 () Bool)

(declare-fun mapRes!58016 () Bool)

(assert (=> mapIsEmpty!58016 mapRes!58016))

(declare-fun b!1347752 () Bool)

(assert (=> b!1347752 (= e!766804 (not true))))

(declare-fun lt!595802 () ListLongMap!22105)

(assert (=> b!1347752 (contains!9181 lt!595802 k!1142)))

(declare-datatypes ((Unit!44102 0))(
  ( (Unit!44103) )
))
(declare-fun lt!595801 () Unit!44102)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!403 ((_ BitVec 64) (_ BitVec 64) V!55153 ListLongMap!22105) Unit!44102)

(assert (=> b!1347752 (= lt!595801 (lemmaInListMapAfterAddingDiffThenInBefore!403 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595802))))

(declare-fun +!4817 (ListLongMap!22105 tuple2!24436) ListLongMap!22105)

(declare-fun getCurrentListMapNoExtraKeys!6544 (array!91865 array!91867 (_ BitVec 32) (_ BitVec 32) V!55153 V!55153 (_ BitVec 32) Int) ListLongMap!22105)

(declare-fun get!22461 (ValueCell!17870 V!55153) V!55153)

(declare-fun dynLambda!3854 (Int (_ BitVec 64)) V!55153)

(assert (=> b!1347752 (= lt!595802 (+!4817 (getCurrentListMapNoExtraKeys!6544 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24437 (select (arr!44383 _keys!1571) from!1960) (get!22461 (select (arr!44384 _values!1303) from!1960) (dynLambda!3854 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347753 () Bool)

(declare-fun res!894331 () Bool)

(assert (=> b!1347753 (=> (not res!894331) (not e!766804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347753 (= res!894331 (validKeyInArray!0 (select (arr!44383 _keys!1571) from!1960)))))

(declare-fun b!1347754 () Bool)

(assert (=> b!1347754 (= e!766805 (and e!766801 mapRes!58016))))

(declare-fun condMapEmpty!58016 () Bool)

(declare-fun mapDefault!58016 () ValueCell!17870)

