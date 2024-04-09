; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111528 () Bool)

(assert start!111528)

(declare-fun b_free!30149 () Bool)

(declare-fun b_next!30149 () Bool)

(assert (=> start!111528 (= b_free!30149 (not b_next!30149))))

(declare-fun tp!105924 () Bool)

(declare-fun b_and!48467 () Bool)

(assert (=> start!111528 (= tp!105924 b_and!48467)))

(declare-fun b!1319724 () Bool)

(declare-fun e!752932 () Bool)

(declare-fun tp_is_empty!35969 () Bool)

(assert (=> b!1319724 (= e!752932 tp_is_empty!35969)))

(declare-fun b!1319725 () Bool)

(declare-fun res!875990 () Bool)

(declare-fun e!752929 () Bool)

(assert (=> b!1319725 (=> (not res!875990) (not e!752929))))

(declare-datatypes ((array!88837 0))(
  ( (array!88838 (arr!42888 (Array (_ BitVec 32) (_ BitVec 64))) (size!43439 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88837)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88837 (_ BitVec 32)) Bool)

(assert (=> b!1319725 (= res!875990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319726 () Bool)

(declare-fun res!875992 () Bool)

(assert (=> b!1319726 (=> (not res!875992) (not e!752929))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53061 0))(
  ( (V!53062 (val!18059 Int)) )
))
(declare-fun zeroValue!1279 () V!53061)

(declare-datatypes ((ValueCell!17086 0))(
  ( (ValueCellFull!17086 (v!20687 V!53061)) (EmptyCell!17086) )
))
(declare-datatypes ((array!88839 0))(
  ( (array!88840 (arr!42889 (Array (_ BitVec 32) ValueCell!17086)) (size!43440 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88839)

(declare-fun minValue!1279 () V!53061)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23410 0))(
  ( (tuple2!23411 (_1!11715 (_ BitVec 64)) (_2!11715 V!53061)) )
))
(declare-datatypes ((List!30594 0))(
  ( (Nil!30591) (Cons!30590 (h!31799 tuple2!23410) (t!44299 List!30594)) )
))
(declare-datatypes ((ListLongMap!21079 0))(
  ( (ListLongMap!21080 (toList!10555 List!30594)) )
))
(declare-fun contains!8646 (ListLongMap!21079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5499 (array!88837 array!88839 (_ BitVec 32) (_ BitVec 32) V!53061 V!53061 (_ BitVec 32) Int) ListLongMap!21079)

(assert (=> b!1319726 (= res!875992 (contains!8646 (getCurrentListMap!5499 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319727 () Bool)

(declare-fun res!875986 () Bool)

(assert (=> b!1319727 (=> (not res!875986) (not e!752929))))

(declare-datatypes ((List!30595 0))(
  ( (Nil!30592) (Cons!30591 (h!31800 (_ BitVec 64)) (t!44300 List!30595)) )
))
(declare-fun arrayNoDuplicates!0 (array!88837 (_ BitVec 32) List!30595) Bool)

(assert (=> b!1319727 (= res!875986 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30592))))

(declare-fun mapIsEmpty!55601 () Bool)

(declare-fun mapRes!55601 () Bool)

(assert (=> mapIsEmpty!55601 mapRes!55601))

(declare-fun b!1319728 () Bool)

(declare-fun res!875989 () Bool)

(assert (=> b!1319728 (=> (not res!875989) (not e!752929))))

(assert (=> b!1319728 (= res!875989 (not (= (select (arr!42888 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319729 () Bool)

(declare-fun res!875985 () Bool)

(assert (=> b!1319729 (=> (not res!875985) (not e!752929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319729 (= res!875985 (validKeyInArray!0 (select (arr!42888 _keys!1609) from!2000)))))

(declare-fun b!1319730 () Bool)

(assert (=> b!1319730 (= e!752929 (not true))))

(declare-fun lt!586672 () ListLongMap!21079)

(assert (=> b!1319730 (contains!8646 lt!586672 k!1164)))

(declare-datatypes ((Unit!43422 0))(
  ( (Unit!43423) )
))
(declare-fun lt!586673 () Unit!43422)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!126 ((_ BitVec 64) (_ BitVec 64) V!53061 ListLongMap!21079) Unit!43422)

(assert (=> b!1319730 (= lt!586673 (lemmaInListMapAfterAddingDiffThenInBefore!126 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586672))))

(declare-fun lt!586674 () ListLongMap!21079)

(assert (=> b!1319730 (contains!8646 lt!586674 k!1164)))

(declare-fun lt!586675 () Unit!43422)

(assert (=> b!1319730 (= lt!586675 (lemmaInListMapAfterAddingDiffThenInBefore!126 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586674))))

(declare-fun +!4511 (ListLongMap!21079 tuple2!23410) ListLongMap!21079)

(assert (=> b!1319730 (= lt!586674 (+!4511 lt!586672 (tuple2!23411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6226 (array!88837 array!88839 (_ BitVec 32) (_ BitVec 32) V!53061 V!53061 (_ BitVec 32) Int) ListLongMap!21079)

(declare-fun get!21607 (ValueCell!17086 V!53061) V!53061)

(declare-fun dynLambda!3548 (Int (_ BitVec 64)) V!53061)

(assert (=> b!1319730 (= lt!586672 (+!4511 (getCurrentListMapNoExtraKeys!6226 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23411 (select (arr!42888 _keys!1609) from!2000) (get!21607 (select (arr!42889 _values!1337) from!2000) (dynLambda!3548 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319731 () Bool)

(declare-fun e!752928 () Bool)

(assert (=> b!1319731 (= e!752928 tp_is_empty!35969)))

(declare-fun b!1319733 () Bool)

(declare-fun res!875987 () Bool)

(assert (=> b!1319733 (=> (not res!875987) (not e!752929))))

(assert (=> b!1319733 (= res!875987 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43439 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319734 () Bool)

(declare-fun e!752931 () Bool)

(assert (=> b!1319734 (= e!752931 (and e!752932 mapRes!55601))))

(declare-fun condMapEmpty!55601 () Bool)

(declare-fun mapDefault!55601 () ValueCell!17086)

