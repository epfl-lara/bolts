; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111606 () Bool)

(assert start!111606)

(declare-fun b_free!30227 () Bool)

(declare-fun b_next!30227 () Bool)

(assert (=> start!111606 (= b_free!30227 (not b_next!30227))))

(declare-fun tp!106158 () Bool)

(declare-fun b_and!48623 () Bool)

(assert (=> start!111606 (= tp!106158 b_and!48623)))

(declare-fun b!1321089 () Bool)

(declare-fun e!753515 () Bool)

(declare-fun tp_is_empty!36047 () Bool)

(assert (=> b!1321089 (= e!753515 tp_is_empty!36047)))

(declare-fun b!1321090 () Bool)

(declare-fun res!876928 () Bool)

(declare-fun e!753516 () Bool)

(assert (=> b!1321090 (=> (not res!876928) (not e!753516))))

(declare-datatypes ((array!88985 0))(
  ( (array!88986 (arr!42962 (Array (_ BitVec 32) (_ BitVec 64))) (size!43513 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88985)

(declare-datatypes ((List!30651 0))(
  ( (Nil!30648) (Cons!30647 (h!31856 (_ BitVec 64)) (t!44434 List!30651)) )
))
(declare-fun arrayNoDuplicates!0 (array!88985 (_ BitVec 32) List!30651) Bool)

(assert (=> b!1321090 (= res!876928 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30648))))

(declare-fun b!1321091 () Bool)

(declare-fun res!876923 () Bool)

(assert (=> b!1321091 (=> (not res!876923) (not e!753516))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53165 0))(
  ( (V!53166 (val!18098 Int)) )
))
(declare-datatypes ((ValueCell!17125 0))(
  ( (ValueCellFull!17125 (v!20726 V!53165)) (EmptyCell!17125) )
))
(declare-datatypes ((array!88987 0))(
  ( (array!88988 (arr!42963 (Array (_ BitVec 32) ValueCell!17125)) (size!43514 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88987)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1321091 (= res!876923 (and (= (size!43514 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43513 _keys!1609) (size!43514 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321092 () Bool)

(declare-fun res!876926 () Bool)

(assert (=> b!1321092 (=> (not res!876926) (not e!753516))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321092 (= res!876926 (validKeyInArray!0 (select (arr!42962 _keys!1609) from!2000)))))

(declare-fun mapNonEmpty!55718 () Bool)

(declare-fun mapRes!55718 () Bool)

(declare-fun tp!106157 () Bool)

(declare-fun e!753514 () Bool)

(assert (=> mapNonEmpty!55718 (= mapRes!55718 (and tp!106157 e!753514))))

(declare-fun mapRest!55718 () (Array (_ BitVec 32) ValueCell!17125))

(declare-fun mapValue!55718 () ValueCell!17125)

(declare-fun mapKey!55718 () (_ BitVec 32))

(assert (=> mapNonEmpty!55718 (= (arr!42963 _values!1337) (store mapRest!55718 mapKey!55718 mapValue!55718))))

(declare-fun b!1321093 () Bool)

(declare-fun res!876922 () Bool)

(assert (=> b!1321093 (=> (not res!876922) (not e!753516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88985 (_ BitVec 32)) Bool)

(assert (=> b!1321093 (= res!876922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321094 () Bool)

(declare-fun res!876921 () Bool)

(assert (=> b!1321094 (=> (not res!876921) (not e!753516))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321094 (= res!876921 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43513 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!876925 () Bool)

(assert (=> start!111606 (=> (not res!876925) (not e!753516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111606 (= res!876925 (validMask!0 mask!2019))))

(assert (=> start!111606 e!753516))

(declare-fun array_inv!32391 (array!88985) Bool)

(assert (=> start!111606 (array_inv!32391 _keys!1609)))

(assert (=> start!111606 true))

(assert (=> start!111606 tp_is_empty!36047))

(declare-fun e!753517 () Bool)

(declare-fun array_inv!32392 (array!88987) Bool)

(assert (=> start!111606 (and (array_inv!32392 _values!1337) e!753517)))

(assert (=> start!111606 tp!106158))

(declare-fun b!1321095 () Bool)

(assert (=> b!1321095 (= e!753516 (not true))))

(declare-datatypes ((tuple2!23470 0))(
  ( (tuple2!23471 (_1!11745 (_ BitVec 64)) (_2!11745 V!53165)) )
))
(declare-datatypes ((List!30652 0))(
  ( (Nil!30649) (Cons!30648 (h!31857 tuple2!23470) (t!44435 List!30652)) )
))
(declare-datatypes ((ListLongMap!21139 0))(
  ( (ListLongMap!21140 (toList!10585 List!30652)) )
))
(declare-fun lt!587249 () ListLongMap!21139)

(declare-fun contains!8676 (ListLongMap!21139 (_ BitVec 64)) Bool)

(assert (=> b!1321095 (contains!8676 lt!587249 k!1164)))

(declare-datatypes ((Unit!43478 0))(
  ( (Unit!43479) )
))
(declare-fun lt!587248 () Unit!43478)

(declare-fun lt!587251 () V!53165)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!154 ((_ BitVec 64) (_ BitVec 64) V!53165 ListLongMap!21139) Unit!43478)

(assert (=> b!1321095 (= lt!587248 (lemmaInListMapAfterAddingDiffThenInBefore!154 k!1164 (select (arr!42962 _keys!1609) from!2000) lt!587251 lt!587249))))

(declare-fun lt!587250 () ListLongMap!21139)

(assert (=> b!1321095 (contains!8676 lt!587250 k!1164)))

(declare-fun zeroValue!1279 () V!53165)

(declare-fun lt!587245 () Unit!43478)

(assert (=> b!1321095 (= lt!587245 (lemmaInListMapAfterAddingDiffThenInBefore!154 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587250))))

(declare-fun lt!587246 () ListLongMap!21139)

(assert (=> b!1321095 (contains!8676 lt!587246 k!1164)))

(declare-fun lt!587247 () Unit!43478)

(declare-fun minValue!1279 () V!53165)

(assert (=> b!1321095 (= lt!587247 (lemmaInListMapAfterAddingDiffThenInBefore!154 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587246))))

(declare-fun +!4539 (ListLongMap!21139 tuple2!23470) ListLongMap!21139)

(assert (=> b!1321095 (= lt!587246 (+!4539 lt!587250 (tuple2!23471 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321095 (= lt!587250 (+!4539 lt!587249 (tuple2!23471 (select (arr!42962 _keys!1609) from!2000) lt!587251)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21661 (ValueCell!17125 V!53165) V!53165)

(declare-fun dynLambda!3576 (Int (_ BitVec 64)) V!53165)

(assert (=> b!1321095 (= lt!587251 (get!21661 (select (arr!42963 _values!1337) from!2000) (dynLambda!3576 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6254 (array!88985 array!88987 (_ BitVec 32) (_ BitVec 32) V!53165 V!53165 (_ BitVec 32) Int) ListLongMap!21139)

(assert (=> b!1321095 (= lt!587249 (getCurrentListMapNoExtraKeys!6254 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321096 () Bool)

(assert (=> b!1321096 (= e!753514 tp_is_empty!36047)))

(declare-fun b!1321097 () Bool)

(declare-fun res!876924 () Bool)

(assert (=> b!1321097 (=> (not res!876924) (not e!753516))))

(assert (=> b!1321097 (= res!876924 (not (= (select (arr!42962 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55718 () Bool)

(assert (=> mapIsEmpty!55718 mapRes!55718))

(declare-fun b!1321098 () Bool)

(assert (=> b!1321098 (= e!753517 (and e!753515 mapRes!55718))))

(declare-fun condMapEmpty!55718 () Bool)

(declare-fun mapDefault!55718 () ValueCell!17125)

