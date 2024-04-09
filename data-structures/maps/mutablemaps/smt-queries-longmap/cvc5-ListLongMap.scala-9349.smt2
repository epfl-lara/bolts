; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111566 () Bool)

(assert start!111566)

(declare-fun b_free!30187 () Bool)

(declare-fun b_next!30187 () Bool)

(assert (=> start!111566 (= b_free!30187 (not b_next!30187))))

(declare-fun tp!106038 () Bool)

(declare-fun b_and!48543 () Bool)

(assert (=> start!111566 (= tp!106038 b_and!48543)))

(declare-fun res!876442 () Bool)

(declare-fun e!753213 () Bool)

(assert (=> start!111566 (=> (not res!876442) (not e!753213))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111566 (= res!876442 (validMask!0 mask!2019))))

(assert (=> start!111566 e!753213))

(declare-datatypes ((array!88909 0))(
  ( (array!88910 (arr!42924 (Array (_ BitVec 32) (_ BitVec 64))) (size!43475 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88909)

(declare-fun array_inv!32361 (array!88909) Bool)

(assert (=> start!111566 (array_inv!32361 _keys!1609)))

(assert (=> start!111566 true))

(declare-fun tp_is_empty!36007 () Bool)

(assert (=> start!111566 tp_is_empty!36007))

(declare-datatypes ((V!53113 0))(
  ( (V!53114 (val!18078 Int)) )
))
(declare-datatypes ((ValueCell!17105 0))(
  ( (ValueCellFull!17105 (v!20706 V!53113)) (EmptyCell!17105) )
))
(declare-datatypes ((array!88911 0))(
  ( (array!88912 (arr!42925 (Array (_ BitVec 32) ValueCell!17105)) (size!43476 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88911)

(declare-fun e!753216 () Bool)

(declare-fun array_inv!32362 (array!88911) Bool)

(assert (=> start!111566 (and (array_inv!32362 _values!1337) e!753216)))

(assert (=> start!111566 tp!106038))

(declare-fun b!1320389 () Bool)

(declare-fun res!876441 () Bool)

(assert (=> b!1320389 (=> (not res!876441) (not e!753213))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun minValue!1279 () V!53113)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun zeroValue!1279 () V!53113)

(declare-datatypes ((tuple2!23442 0))(
  ( (tuple2!23443 (_1!11731 (_ BitVec 64)) (_2!11731 V!53113)) )
))
(declare-datatypes ((List!30624 0))(
  ( (Nil!30621) (Cons!30620 (h!31829 tuple2!23442) (t!44367 List!30624)) )
))
(declare-datatypes ((ListLongMap!21111 0))(
  ( (ListLongMap!21112 (toList!10571 List!30624)) )
))
(declare-fun contains!8662 (ListLongMap!21111 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5514 (array!88909 array!88911 (_ BitVec 32) (_ BitVec 32) V!53113 V!53113 (_ BitVec 32) Int) ListLongMap!21111)

(assert (=> b!1320389 (= res!876441 (contains!8662 (getCurrentListMap!5514 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320390 () Bool)

(declare-fun res!876446 () Bool)

(assert (=> b!1320390 (=> (not res!876446) (not e!753213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320390 (= res!876446 (validKeyInArray!0 (select (arr!42924 _keys!1609) from!2000)))))

(declare-fun b!1320391 () Bool)

(assert (=> b!1320391 (= e!753213 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-fun lt!586900 () ListLongMap!21111)

(assert (=> b!1320391 (contains!8662 lt!586900 k!1164)))

(declare-datatypes ((Unit!43450 0))(
  ( (Unit!43451) )
))
(declare-fun lt!586901 () Unit!43450)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!140 ((_ BitVec 64) (_ BitVec 64) V!53113 ListLongMap!21111) Unit!43450)

(assert (=> b!1320391 (= lt!586901 (lemmaInListMapAfterAddingDiffThenInBefore!140 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586900))))

(declare-fun lt!586903 () ListLongMap!21111)

(assert (=> b!1320391 (contains!8662 lt!586903 k!1164)))

(declare-fun lt!586902 () Unit!43450)

(assert (=> b!1320391 (= lt!586902 (lemmaInListMapAfterAddingDiffThenInBefore!140 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586903))))

(declare-fun +!4525 (ListLongMap!21111 tuple2!23442) ListLongMap!21111)

(assert (=> b!1320391 (= lt!586903 (+!4525 lt!586900 (tuple2!23443 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6240 (array!88909 array!88911 (_ BitVec 32) (_ BitVec 32) V!53113 V!53113 (_ BitVec 32) Int) ListLongMap!21111)

(declare-fun get!21635 (ValueCell!17105 V!53113) V!53113)

(declare-fun dynLambda!3562 (Int (_ BitVec 64)) V!53113)

(assert (=> b!1320391 (= lt!586900 (+!4525 (getCurrentListMapNoExtraKeys!6240 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23443 (select (arr!42924 _keys!1609) from!2000) (get!21635 (select (arr!42925 _values!1337) from!2000) (dynLambda!3562 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320392 () Bool)

(declare-fun e!753217 () Bool)

(declare-fun mapRes!55658 () Bool)

(assert (=> b!1320392 (= e!753216 (and e!753217 mapRes!55658))))

(declare-fun condMapEmpty!55658 () Bool)

(declare-fun mapDefault!55658 () ValueCell!17105)

