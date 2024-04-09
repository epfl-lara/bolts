; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111630 () Bool)

(assert start!111630)

(declare-fun b_free!30251 () Bool)

(declare-fun b_next!30251 () Bool)

(assert (=> start!111630 (= b_free!30251 (not b_next!30251))))

(declare-fun tp!106229 () Bool)

(declare-fun b_and!48671 () Bool)

(assert (=> start!111630 (= tp!106229 b_and!48671)))

(declare-fun mapIsEmpty!55754 () Bool)

(declare-fun mapRes!55754 () Bool)

(assert (=> mapIsEmpty!55754 mapRes!55754))

(declare-fun mapNonEmpty!55754 () Bool)

(declare-fun tp!106230 () Bool)

(declare-fun e!753695 () Bool)

(assert (=> mapNonEmpty!55754 (= mapRes!55754 (and tp!106230 e!753695))))

(declare-fun mapKey!55754 () (_ BitVec 32))

(declare-datatypes ((V!53197 0))(
  ( (V!53198 (val!18110 Int)) )
))
(declare-datatypes ((ValueCell!17137 0))(
  ( (ValueCellFull!17137 (v!20738 V!53197)) (EmptyCell!17137) )
))
(declare-fun mapValue!55754 () ValueCell!17137)

(declare-fun mapRest!55754 () (Array (_ BitVec 32) ValueCell!17137))

(declare-datatypes ((array!89027 0))(
  ( (array!89028 (arr!42983 (Array (_ BitVec 32) ValueCell!17137)) (size!43534 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89027)

(assert (=> mapNonEmpty!55754 (= (arr!42983 _values!1337) (store mapRest!55754 mapKey!55754 mapValue!55754))))

(declare-fun b!1321509 () Bool)

(declare-fun res!877209 () Bool)

(declare-fun e!753694 () Bool)

(assert (=> b!1321509 (=> (not res!877209) (not e!753694))))

(declare-datatypes ((array!89029 0))(
  ( (array!89030 (arr!42984 (Array (_ BitVec 32) (_ BitVec 64))) (size!43535 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89029)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89029 (_ BitVec 32)) Bool)

(assert (=> b!1321509 (= res!877209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321510 () Bool)

(declare-fun res!877216 () Bool)

(assert (=> b!1321510 (=> (not res!877216) (not e!753694))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1321510 (= res!877216 (and (= (size!43534 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43535 _keys!1609) (size!43534 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321511 () Bool)

(declare-fun res!877214 () Bool)

(assert (=> b!1321511 (=> (not res!877214) (not e!753694))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321511 (= res!877214 (validKeyInArray!0 (select (arr!42984 _keys!1609) from!2000)))))

(declare-fun b!1321512 () Bool)

(assert (=> b!1321512 (= e!753694 (not true))))

(declare-datatypes ((tuple2!23486 0))(
  ( (tuple2!23487 (_1!11753 (_ BitVec 64)) (_2!11753 V!53197)) )
))
(declare-datatypes ((List!30665 0))(
  ( (Nil!30662) (Cons!30661 (h!31870 tuple2!23486) (t!44472 List!30665)) )
))
(declare-datatypes ((ListLongMap!21155 0))(
  ( (ListLongMap!21156 (toList!10593 List!30665)) )
))
(declare-fun lt!587500 () ListLongMap!21155)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8684 (ListLongMap!21155 (_ BitVec 64)) Bool)

(assert (=> b!1321512 (contains!8684 lt!587500 k!1164)))

(declare-datatypes ((Unit!43492 0))(
  ( (Unit!43493) )
))
(declare-fun lt!587502 () Unit!43492)

(declare-fun lt!587497 () V!53197)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!161 ((_ BitVec 64) (_ BitVec 64) V!53197 ListLongMap!21155) Unit!43492)

(assert (=> b!1321512 (= lt!587502 (lemmaInListMapAfterAddingDiffThenInBefore!161 k!1164 (select (arr!42984 _keys!1609) from!2000) lt!587497 lt!587500))))

(declare-fun lt!587498 () ListLongMap!21155)

(assert (=> b!1321512 (contains!8684 lt!587498 k!1164)))

(declare-fun zeroValue!1279 () V!53197)

(declare-fun lt!587503 () Unit!43492)

(assert (=> b!1321512 (= lt!587503 (lemmaInListMapAfterAddingDiffThenInBefore!161 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587498))))

(declare-fun lt!587501 () ListLongMap!21155)

(assert (=> b!1321512 (contains!8684 lt!587501 k!1164)))

(declare-fun minValue!1279 () V!53197)

(declare-fun lt!587499 () Unit!43492)

(assert (=> b!1321512 (= lt!587499 (lemmaInListMapAfterAddingDiffThenInBefore!161 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587501))))

(declare-fun +!4546 (ListLongMap!21155 tuple2!23486) ListLongMap!21155)

(assert (=> b!1321512 (= lt!587501 (+!4546 lt!587498 (tuple2!23487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321512 (= lt!587498 (+!4546 lt!587500 (tuple2!23487 (select (arr!42984 _keys!1609) from!2000) lt!587497)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21676 (ValueCell!17137 V!53197) V!53197)

(declare-fun dynLambda!3583 (Int (_ BitVec 64)) V!53197)

(assert (=> b!1321512 (= lt!587497 (get!21676 (select (arr!42983 _values!1337) from!2000) (dynLambda!3583 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6261 (array!89029 array!89027 (_ BitVec 32) (_ BitVec 32) V!53197 V!53197 (_ BitVec 32) Int) ListLongMap!21155)

(assert (=> b!1321512 (= lt!587500 (getCurrentListMapNoExtraKeys!6261 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321513 () Bool)

(declare-fun e!753693 () Bool)

(declare-fun e!753697 () Bool)

(assert (=> b!1321513 (= e!753693 (and e!753697 mapRes!55754))))

(declare-fun condMapEmpty!55754 () Bool)

(declare-fun mapDefault!55754 () ValueCell!17137)

