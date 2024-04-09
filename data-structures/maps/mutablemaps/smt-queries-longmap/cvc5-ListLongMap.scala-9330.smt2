; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111452 () Bool)

(assert start!111452)

(declare-fun b_free!30073 () Bool)

(declare-fun b_next!30073 () Bool)

(assert (=> start!111452 (= b_free!30073 (not b_next!30073))))

(declare-fun tp!105696 () Bool)

(declare-fun b_and!48315 () Bool)

(assert (=> start!111452 (= tp!105696 b_and!48315)))

(declare-fun mapNonEmpty!55487 () Bool)

(declare-fun mapRes!55487 () Bool)

(declare-fun tp!105695 () Bool)

(declare-fun e!752361 () Bool)

(assert (=> mapNonEmpty!55487 (= mapRes!55487 (and tp!105695 e!752361))))

(declare-datatypes ((V!52961 0))(
  ( (V!52962 (val!18021 Int)) )
))
(declare-datatypes ((ValueCell!17048 0))(
  ( (ValueCellFull!17048 (v!20649 V!52961)) (EmptyCell!17048) )
))
(declare-fun mapRest!55487 () (Array (_ BitVec 32) ValueCell!17048))

(declare-datatypes ((array!88687 0))(
  ( (array!88688 (arr!42813 (Array (_ BitVec 32) ValueCell!17048)) (size!43364 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88687)

(declare-fun mapKey!55487 () (_ BitVec 32))

(declare-fun mapValue!55487 () ValueCell!17048)

(assert (=> mapNonEmpty!55487 (= (arr!42813 _values!1337) (store mapRest!55487 mapKey!55487 mapValue!55487))))

(declare-fun b!1318394 () Bool)

(declare-fun res!875079 () Bool)

(declare-fun e!752362 () Bool)

(assert (=> b!1318394 (=> (not res!875079) (not e!752362))))

(declare-datatypes ((array!88689 0))(
  ( (array!88690 (arr!42814 (Array (_ BitVec 32) (_ BitVec 64))) (size!43365 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88689)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318394 (= res!875079 (and (= (size!43364 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43365 _keys!1609) (size!43364 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318395 () Bool)

(declare-fun res!875078 () Bool)

(assert (=> b!1318395 (=> (not res!875078) (not e!752362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88689 (_ BitVec 32)) Bool)

(assert (=> b!1318395 (= res!875078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318396 () Bool)

(declare-fun tp_is_empty!35893 () Bool)

(assert (=> b!1318396 (= e!752361 tp_is_empty!35893)))

(declare-fun b!1318397 () Bool)

(assert (=> b!1318397 (= e!752362 (not true))))

(declare-datatypes ((tuple2!23344 0))(
  ( (tuple2!23345 (_1!11682 (_ BitVec 64)) (_2!11682 V!52961)) )
))
(declare-datatypes ((List!30536 0))(
  ( (Nil!30533) (Cons!30532 (h!31741 tuple2!23344) (t!44165 List!30536)) )
))
(declare-datatypes ((ListLongMap!21013 0))(
  ( (ListLongMap!21014 (toList!10522 List!30536)) )
))
(declare-fun lt!586411 () ListLongMap!21013)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8613 (ListLongMap!21013 (_ BitVec 64)) Bool)

(assert (=> b!1318397 (contains!8613 lt!586411 k!1164)))

(declare-fun minValue!1279 () V!52961)

(declare-datatypes ((Unit!43364 0))(
  ( (Unit!43365) )
))
(declare-fun lt!586410 () Unit!43364)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!97 ((_ BitVec 64) (_ BitVec 64) V!52961 ListLongMap!21013) Unit!43364)

(assert (=> b!1318397 (= lt!586410 (lemmaInListMapAfterAddingDiffThenInBefore!97 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586411))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52961)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4482 (ListLongMap!21013 tuple2!23344) ListLongMap!21013)

(declare-fun getCurrentListMapNoExtraKeys!6197 (array!88689 array!88687 (_ BitVec 32) (_ BitVec 32) V!52961 V!52961 (_ BitVec 32) Int) ListLongMap!21013)

(declare-fun get!21554 (ValueCell!17048 V!52961) V!52961)

(declare-fun dynLambda!3519 (Int (_ BitVec 64)) V!52961)

(assert (=> b!1318397 (= lt!586411 (+!4482 (+!4482 (getCurrentListMapNoExtraKeys!6197 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23345 (select (arr!42814 _keys!1609) from!2000) (get!21554 (select (arr!42813 _values!1337) from!2000) (dynLambda!3519 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23345 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318398 () Bool)

(declare-fun e!752358 () Bool)

(declare-fun e!752359 () Bool)

(assert (=> b!1318398 (= e!752358 (and e!752359 mapRes!55487))))

(declare-fun condMapEmpty!55487 () Bool)

(declare-fun mapDefault!55487 () ValueCell!17048)

