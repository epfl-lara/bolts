; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113228 () Bool)

(assert start!113228)

(declare-fun b_free!31243 () Bool)

(declare-fun b_next!31243 () Bool)

(assert (=> start!113228 (= b_free!31243 (not b_next!31243))))

(declare-fun tp!109535 () Bool)

(declare-fun b_and!50403 () Bool)

(assert (=> start!113228 (= tp!109535 b_and!50403)))

(declare-fun b!1342410 () Bool)

(declare-fun e!764273 () Bool)

(assert (=> b!1342410 (= e!764273 (not true))))

(declare-datatypes ((V!54761 0))(
  ( (V!54762 (val!18696 Int)) )
))
(declare-datatypes ((tuple2!24230 0))(
  ( (tuple2!24231 (_1!12125 (_ BitVec 64)) (_2!12125 V!54761)) )
))
(declare-datatypes ((List!31411 0))(
  ( (Nil!31408) (Cons!31407 (h!32616 tuple2!24230) (t!45872 List!31411)) )
))
(declare-datatypes ((ListLongMap!21899 0))(
  ( (ListLongMap!21900 (toList!10965 List!31411)) )
))
(declare-fun lt!594445 () ListLongMap!21899)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9077 (ListLongMap!21899 (_ BitVec 64)) Bool)

(assert (=> b!1342410 (contains!9077 lt!594445 k!1142)))

(declare-fun lt!594444 () V!54761)

(declare-datatypes ((array!91293 0))(
  ( (array!91294 (arr!44098 (Array (_ BitVec 32) (_ BitVec 64))) (size!44649 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91293)

(declare-datatypes ((Unit!43997 0))(
  ( (Unit!43998) )
))
(declare-fun lt!594442 () Unit!43997)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!358 ((_ BitVec 64) (_ BitVec 64) V!54761 ListLongMap!21899) Unit!43997)

(assert (=> b!1342410 (= lt!594442 (lemmaInListMapAfterAddingDiffThenInBefore!358 k!1142 (select (arr!44098 _keys!1571) from!1960) lt!594444 lt!594445))))

(declare-fun lt!594443 () ListLongMap!21899)

(assert (=> b!1342410 (contains!9077 lt!594443 k!1142)))

(declare-fun lt!594441 () Unit!43997)

(declare-fun zeroValue!1245 () V!54761)

(assert (=> b!1342410 (= lt!594441 (lemmaInListMapAfterAddingDiffThenInBefore!358 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594443))))

(declare-fun +!4766 (ListLongMap!21899 tuple2!24230) ListLongMap!21899)

(assert (=> b!1342410 (= lt!594443 (+!4766 lt!594445 (tuple2!24231 (select (arr!44098 _keys!1571) from!1960) lt!594444)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17723 0))(
  ( (ValueCellFull!17723 (v!21342 V!54761)) (EmptyCell!17723) )
))
(declare-datatypes ((array!91295 0))(
  ( (array!91296 (arr!44099 (Array (_ BitVec 32) ValueCell!17723)) (size!44650 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91295)

(declare-fun get!22309 (ValueCell!17723 V!54761) V!54761)

(declare-fun dynLambda!3803 (Int (_ BitVec 64)) V!54761)

(assert (=> b!1342410 (= lt!594444 (get!22309 (select (arr!44099 _values!1303) from!1960) (dynLambda!3803 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54761)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6489 (array!91293 array!91295 (_ BitVec 32) (_ BitVec 32) V!54761 V!54761 (_ BitVec 32) Int) ListLongMap!21899)

(assert (=> b!1342410 (= lt!594445 (getCurrentListMapNoExtraKeys!6489 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342411 () Bool)

(declare-fun res!890700 () Bool)

(assert (=> b!1342411 (=> (not res!890700) (not e!764273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342411 (= res!890700 (validKeyInArray!0 (select (arr!44098 _keys!1571) from!1960)))))

(declare-fun b!1342412 () Bool)

(declare-fun e!764274 () Bool)

(declare-fun e!764275 () Bool)

(declare-fun mapRes!57571 () Bool)

(assert (=> b!1342412 (= e!764274 (and e!764275 mapRes!57571))))

(declare-fun condMapEmpty!57571 () Bool)

(declare-fun mapDefault!57571 () ValueCell!17723)

