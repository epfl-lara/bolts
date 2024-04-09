; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111584 () Bool)

(assert start!111584)

(declare-fun b_free!30205 () Bool)

(declare-fun b_next!30205 () Bool)

(assert (=> start!111584 (= b_free!30205 (not b_next!30205))))

(declare-fun tp!106092 () Bool)

(declare-fun b_and!48579 () Bool)

(assert (=> start!111584 (= tp!106092 b_and!48579)))

(declare-fun b!1320704 () Bool)

(declare-fun res!876662 () Bool)

(declare-fun e!753349 () Bool)

(assert (=> b!1320704 (=> (not res!876662) (not e!753349))))

(declare-datatypes ((array!88943 0))(
  ( (array!88944 (arr!42941 (Array (_ BitVec 32) (_ BitVec 64))) (size!43492 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88943)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53137 0))(
  ( (V!53138 (val!18087 Int)) )
))
(declare-fun zeroValue!1279 () V!53137)

(declare-datatypes ((ValueCell!17114 0))(
  ( (ValueCellFull!17114 (v!20715 V!53137)) (EmptyCell!17114) )
))
(declare-datatypes ((array!88945 0))(
  ( (array!88946 (arr!42942 (Array (_ BitVec 32) ValueCell!17114)) (size!43493 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88945)

(declare-fun minValue!1279 () V!53137)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23454 0))(
  ( (tuple2!23455 (_1!11737 (_ BitVec 64)) (_2!11737 V!53137)) )
))
(declare-datatypes ((List!30636 0))(
  ( (Nil!30633) (Cons!30632 (h!31841 tuple2!23454) (t!44397 List!30636)) )
))
(declare-datatypes ((ListLongMap!21123 0))(
  ( (ListLongMap!21124 (toList!10577 List!30636)) )
))
(declare-fun contains!8668 (ListLongMap!21123 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5520 (array!88943 array!88945 (_ BitVec 32) (_ BitVec 32) V!53137 V!53137 (_ BitVec 32) Int) ListLongMap!21123)

(assert (=> b!1320704 (= res!876662 (contains!8668 (getCurrentListMap!5520 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320705 () Bool)

(assert (=> b!1320705 (= e!753349 (not true))))

(declare-fun lt!587017 () ListLongMap!21123)

(assert (=> b!1320705 (contains!8668 lt!587017 k!1164)))

(declare-datatypes ((Unit!43462 0))(
  ( (Unit!43463) )
))
(declare-fun lt!587020 () Unit!43462)

(declare-fun lt!587014 () V!53137)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!146 ((_ BitVec 64) (_ BitVec 64) V!53137 ListLongMap!21123) Unit!43462)

(assert (=> b!1320705 (= lt!587020 (lemmaInListMapAfterAddingDiffThenInBefore!146 k!1164 (select (arr!42941 _keys!1609) from!2000) lt!587014 lt!587017))))

(declare-fun lt!587015 () ListLongMap!21123)

(assert (=> b!1320705 (contains!8668 lt!587015 k!1164)))

(declare-fun lt!587019 () Unit!43462)

(assert (=> b!1320705 (= lt!587019 (lemmaInListMapAfterAddingDiffThenInBefore!146 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587015))))

(declare-fun lt!587018 () ListLongMap!21123)

(assert (=> b!1320705 (contains!8668 lt!587018 k!1164)))

(declare-fun lt!587016 () Unit!43462)

(assert (=> b!1320705 (= lt!587016 (lemmaInListMapAfterAddingDiffThenInBefore!146 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587018))))

(declare-fun +!4531 (ListLongMap!21123 tuple2!23454) ListLongMap!21123)

(assert (=> b!1320705 (= lt!587018 (+!4531 lt!587015 (tuple2!23455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320705 (= lt!587015 (+!4531 lt!587017 (tuple2!23455 (select (arr!42941 _keys!1609) from!2000) lt!587014)))))

(declare-fun get!21647 (ValueCell!17114 V!53137) V!53137)

(declare-fun dynLambda!3568 (Int (_ BitVec 64)) V!53137)

(assert (=> b!1320705 (= lt!587014 (get!21647 (select (arr!42942 _values!1337) from!2000) (dynLambda!3568 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6246 (array!88943 array!88945 (_ BitVec 32) (_ BitVec 32) V!53137 V!53137 (_ BitVec 32) Int) ListLongMap!21123)

(assert (=> b!1320705 (= lt!587017 (getCurrentListMapNoExtraKeys!6246 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1320706 () Bool)

(declare-fun e!753350 () Bool)

(declare-fun e!753351 () Bool)

(declare-fun mapRes!55685 () Bool)

(assert (=> b!1320706 (= e!753350 (and e!753351 mapRes!55685))))

(declare-fun condMapEmpty!55685 () Bool)

(declare-fun mapDefault!55685 () ValueCell!17114)

