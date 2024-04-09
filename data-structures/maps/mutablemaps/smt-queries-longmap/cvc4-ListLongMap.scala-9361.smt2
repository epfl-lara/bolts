; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111642 () Bool)

(assert start!111642)

(declare-fun b_free!30263 () Bool)

(declare-fun b_next!30263 () Bool)

(assert (=> start!111642 (= b_free!30263 (not b_next!30263))))

(declare-fun tp!106265 () Bool)

(declare-fun b_and!48695 () Bool)

(assert (=> start!111642 (= tp!106265 b_and!48695)))

(declare-fun mapIsEmpty!55772 () Bool)

(declare-fun mapRes!55772 () Bool)

(assert (=> mapIsEmpty!55772 mapRes!55772))

(declare-fun b!1321719 () Bool)

(declare-fun res!877359 () Bool)

(declare-fun e!753785 () Bool)

(assert (=> b!1321719 (=> (not res!877359) (not e!753785))))

(declare-datatypes ((array!89049 0))(
  ( (array!89050 (arr!42994 (Array (_ BitVec 32) (_ BitVec 64))) (size!43545 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89049)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53213 0))(
  ( (V!53214 (val!18116 Int)) )
))
(declare-fun zeroValue!1279 () V!53213)

(declare-fun minValue!1279 () V!53213)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17143 0))(
  ( (ValueCellFull!17143 (v!20744 V!53213)) (EmptyCell!17143) )
))
(declare-datatypes ((array!89051 0))(
  ( (array!89052 (arr!42995 (Array (_ BitVec 32) ValueCell!17143)) (size!43546 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89051)

(declare-datatypes ((tuple2!23496 0))(
  ( (tuple2!23497 (_1!11758 (_ BitVec 64)) (_2!11758 V!53213)) )
))
(declare-datatypes ((List!30674 0))(
  ( (Nil!30671) (Cons!30670 (h!31879 tuple2!23496) (t!44493 List!30674)) )
))
(declare-datatypes ((ListLongMap!21165 0))(
  ( (ListLongMap!21166 (toList!10598 List!30674)) )
))
(declare-fun contains!8689 (ListLongMap!21165 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5538 (array!89049 array!89051 (_ BitVec 32) (_ BitVec 32) V!53213 V!53213 (_ BitVec 32) Int) ListLongMap!21165)

(assert (=> b!1321719 (= res!877359 (contains!8689 (getCurrentListMap!5538 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321720 () Bool)

(assert (=> b!1321720 (= e!753785 (not true))))

(declare-fun lt!587626 () ListLongMap!21165)

(assert (=> b!1321720 (contains!8689 lt!587626 k!1164)))

(declare-fun lt!587623 () V!53213)

(declare-datatypes ((Unit!43502 0))(
  ( (Unit!43503) )
))
(declare-fun lt!587627 () Unit!43502)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!166 ((_ BitVec 64) (_ BitVec 64) V!53213 ListLongMap!21165) Unit!43502)

(assert (=> b!1321720 (= lt!587627 (lemmaInListMapAfterAddingDiffThenInBefore!166 k!1164 (select (arr!42994 _keys!1609) from!2000) lt!587623 lt!587626))))

(declare-fun lt!587628 () ListLongMap!21165)

(assert (=> b!1321720 (contains!8689 lt!587628 k!1164)))

(declare-fun lt!587625 () Unit!43502)

(assert (=> b!1321720 (= lt!587625 (lemmaInListMapAfterAddingDiffThenInBefore!166 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587628))))

(declare-fun lt!587629 () ListLongMap!21165)

(assert (=> b!1321720 (contains!8689 lt!587629 k!1164)))

(declare-fun lt!587624 () Unit!43502)

(assert (=> b!1321720 (= lt!587624 (lemmaInListMapAfterAddingDiffThenInBefore!166 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587629))))

(declare-fun +!4551 (ListLongMap!21165 tuple2!23496) ListLongMap!21165)

(assert (=> b!1321720 (= lt!587629 (+!4551 lt!587628 (tuple2!23497 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321720 (= lt!587628 (+!4551 lt!587626 (tuple2!23497 (select (arr!42994 _keys!1609) from!2000) lt!587623)))))

(declare-fun get!21685 (ValueCell!17143 V!53213) V!53213)

(declare-fun dynLambda!3588 (Int (_ BitVec 64)) V!53213)

(assert (=> b!1321720 (= lt!587623 (get!21685 (select (arr!42995 _values!1337) from!2000) (dynLambda!3588 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6266 (array!89049 array!89051 (_ BitVec 32) (_ BitVec 32) V!53213 V!53213 (_ BitVec 32) Int) ListLongMap!21165)

(assert (=> b!1321720 (= lt!587626 (getCurrentListMapNoExtraKeys!6266 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1321721 () Bool)

(declare-fun res!877355 () Bool)

(assert (=> b!1321721 (=> (not res!877355) (not e!753785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321721 (= res!877355 (validKeyInArray!0 (select (arr!42994 _keys!1609) from!2000)))))

(declare-fun b!1321722 () Bool)

(declare-fun e!753786 () Bool)

(declare-fun tp_is_empty!36083 () Bool)

(assert (=> b!1321722 (= e!753786 tp_is_empty!36083)))

(declare-fun b!1321723 () Bool)

(declare-fun res!877356 () Bool)

(assert (=> b!1321723 (=> (not res!877356) (not e!753785))))

(assert (=> b!1321723 (= res!877356 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43545 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321724 () Bool)

(declare-fun e!753784 () Bool)

(declare-fun e!753783 () Bool)

(assert (=> b!1321724 (= e!753784 (and e!753783 mapRes!55772))))

(declare-fun condMapEmpty!55772 () Bool)

(declare-fun mapDefault!55772 () ValueCell!17143)

