; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113288 () Bool)

(assert start!113288)

(declare-fun b_free!31303 () Bool)

(declare-fun b_next!31303 () Bool)

(assert (=> start!113288 (= b_free!31303 (not b_next!31303))))

(declare-fun tp!109715 () Bool)

(declare-fun b_and!50523 () Bool)

(assert (=> start!113288 (= tp!109715 b_and!50523)))

(declare-fun b!1343550 () Bool)

(declare-fun res!891513 () Bool)

(declare-fun e!764725 () Bool)

(assert (=> b!1343550 (=> (not res!891513) (not e!764725))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343550 (= res!891513 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343551 () Bool)

(declare-fun e!764726 () Bool)

(declare-fun tp_is_empty!37303 () Bool)

(assert (=> b!1343551 (= e!764726 tp_is_empty!37303)))

(declare-fun b!1343552 () Bool)

(declare-fun e!764722 () Bool)

(assert (=> b!1343552 (= e!764722 tp_is_empty!37303)))

(declare-fun b!1343553 () Bool)

(declare-fun res!891509 () Bool)

(assert (=> b!1343553 (=> (not res!891509) (not e!764725))))

(declare-datatypes ((array!91405 0))(
  ( (array!91406 (arr!44154 (Array (_ BitVec 32) (_ BitVec 64))) (size!44705 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91405)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91405 (_ BitVec 32)) Bool)

(assert (=> b!1343553 (= res!891509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343554 () Bool)

(assert (=> b!1343554 (= e!764725 (not true))))

(declare-datatypes ((V!54841 0))(
  ( (V!54842 (val!18726 Int)) )
))
(declare-datatypes ((tuple2!24276 0))(
  ( (tuple2!24277 (_1!12148 (_ BitVec 64)) (_2!12148 V!54841)) )
))
(declare-datatypes ((List!31452 0))(
  ( (Nil!31449) (Cons!31448 (h!32657 tuple2!24276) (t!45973 List!31452)) )
))
(declare-datatypes ((ListLongMap!21945 0))(
  ( (ListLongMap!21946 (toList!10988 List!31452)) )
))
(declare-fun lt!594960 () ListLongMap!21945)

(declare-fun zeroValue!1245 () V!54841)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9100 (ListLongMap!21945 (_ BitVec 64)) Bool)

(declare-fun +!4785 (ListLongMap!21945 tuple2!24276) ListLongMap!21945)

(assert (=> b!1343554 (contains!9100 (+!4785 lt!594960 (tuple2!24277 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44035 0))(
  ( (Unit!44036) )
))
(declare-fun lt!594957 () Unit!44035)

(declare-fun addStillContains!1211 (ListLongMap!21945 (_ BitVec 64) V!54841 (_ BitVec 64)) Unit!44035)

(assert (=> b!1343554 (= lt!594957 (addStillContains!1211 lt!594960 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343554 (contains!9100 lt!594960 k!1142)))

(declare-fun lt!594958 () V!54841)

(declare-fun lt!594956 () Unit!44035)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!377 ((_ BitVec 64) (_ BitVec 64) V!54841 ListLongMap!21945) Unit!44035)

(assert (=> b!1343554 (= lt!594956 (lemmaInListMapAfterAddingDiffThenInBefore!377 k!1142 (select (arr!44154 _keys!1571) from!1960) lt!594958 lt!594960))))

(declare-fun lt!594961 () ListLongMap!21945)

(assert (=> b!1343554 (contains!9100 lt!594961 k!1142)))

(declare-fun lt!594959 () Unit!44035)

(assert (=> b!1343554 (= lt!594959 (lemmaInListMapAfterAddingDiffThenInBefore!377 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594961))))

(assert (=> b!1343554 (= lt!594961 (+!4785 lt!594960 (tuple2!24277 (select (arr!44154 _keys!1571) from!1960) lt!594958)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17753 0))(
  ( (ValueCellFull!17753 (v!21372 V!54841)) (EmptyCell!17753) )
))
(declare-datatypes ((array!91407 0))(
  ( (array!91408 (arr!44155 (Array (_ BitVec 32) ValueCell!17753)) (size!44706 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91407)

(declare-fun get!22348 (ValueCell!17753 V!54841) V!54841)

(declare-fun dynLambda!3822 (Int (_ BitVec 64)) V!54841)

(assert (=> b!1343554 (= lt!594958 (get!22348 (select (arr!44155 _values!1303) from!1960) (dynLambda!3822 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54841)

(declare-fun getCurrentListMapNoExtraKeys!6508 (array!91405 array!91407 (_ BitVec 32) (_ BitVec 32) V!54841 V!54841 (_ BitVec 32) Int) ListLongMap!21945)

(assert (=> b!1343554 (= lt!594960 (getCurrentListMapNoExtraKeys!6508 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343555 () Bool)

(declare-fun res!891514 () Bool)

(assert (=> b!1343555 (=> (not res!891514) (not e!764725))))

(assert (=> b!1343555 (= res!891514 (not (= (select (arr!44154 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343556 () Bool)

(declare-fun e!764724 () Bool)

(declare-fun mapRes!57661 () Bool)

(assert (=> b!1343556 (= e!764724 (and e!764722 mapRes!57661))))

(declare-fun condMapEmpty!57661 () Bool)

(declare-fun mapDefault!57661 () ValueCell!17753)

