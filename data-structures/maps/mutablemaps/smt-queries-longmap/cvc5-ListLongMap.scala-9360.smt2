; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111632 () Bool)

(assert start!111632)

(declare-fun b_free!30253 () Bool)

(declare-fun b_next!30253 () Bool)

(assert (=> start!111632 (= b_free!30253 (not b_next!30253))))

(declare-fun tp!106236 () Bool)

(declare-fun b_and!48675 () Bool)

(assert (=> start!111632 (= tp!106236 b_and!48675)))

(declare-fun b!1321544 () Bool)

(declare-fun e!753710 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1321544 (= e!753710 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!53201 0))(
  ( (V!53202 (val!18111 Int)) )
))
(declare-datatypes ((tuple2!23488 0))(
  ( (tuple2!23489 (_1!11754 (_ BitVec 64)) (_2!11754 V!53201)) )
))
(declare-datatypes ((List!30666 0))(
  ( (Nil!30663) (Cons!30662 (h!31871 tuple2!23488) (t!44475 List!30666)) )
))
(declare-datatypes ((ListLongMap!21157 0))(
  ( (ListLongMap!21158 (toList!10594 List!30666)) )
))
(declare-fun lt!587520 () ListLongMap!21157)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8685 (ListLongMap!21157 (_ BitVec 64)) Bool)

(assert (=> b!1321544 (contains!8685 lt!587520 k!1164)))

(declare-datatypes ((array!89031 0))(
  ( (array!89032 (arr!42985 (Array (_ BitVec 32) (_ BitVec 64))) (size!43536 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89031)

(declare-fun lt!587523 () V!53201)

(declare-datatypes ((Unit!43494 0))(
  ( (Unit!43495) )
))
(declare-fun lt!587524 () Unit!43494)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!162 ((_ BitVec 64) (_ BitVec 64) V!53201 ListLongMap!21157) Unit!43494)

(assert (=> b!1321544 (= lt!587524 (lemmaInListMapAfterAddingDiffThenInBefore!162 k!1164 (select (arr!42985 _keys!1609) from!2000) lt!587523 lt!587520))))

(declare-fun lt!587518 () ListLongMap!21157)

(assert (=> b!1321544 (contains!8685 lt!587518 k!1164)))

(declare-fun zeroValue!1279 () V!53201)

(declare-fun lt!587522 () Unit!43494)

(assert (=> b!1321544 (= lt!587522 (lemmaInListMapAfterAddingDiffThenInBefore!162 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587518))))

(declare-fun lt!587521 () ListLongMap!21157)

(assert (=> b!1321544 (contains!8685 lt!587521 k!1164)))

(declare-fun minValue!1279 () V!53201)

(declare-fun lt!587519 () Unit!43494)

(assert (=> b!1321544 (= lt!587519 (lemmaInListMapAfterAddingDiffThenInBefore!162 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587521))))

(declare-fun +!4547 (ListLongMap!21157 tuple2!23488) ListLongMap!21157)

(assert (=> b!1321544 (= lt!587521 (+!4547 lt!587518 (tuple2!23489 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321544 (= lt!587518 (+!4547 lt!587520 (tuple2!23489 (select (arr!42985 _keys!1609) from!2000) lt!587523)))))

(declare-datatypes ((ValueCell!17138 0))(
  ( (ValueCellFull!17138 (v!20739 V!53201)) (EmptyCell!17138) )
))
(declare-datatypes ((array!89033 0))(
  ( (array!89034 (arr!42986 (Array (_ BitVec 32) ValueCell!17138)) (size!43537 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89033)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21679 (ValueCell!17138 V!53201) V!53201)

(declare-fun dynLambda!3584 (Int (_ BitVec 64)) V!53201)

(assert (=> b!1321544 (= lt!587523 (get!21679 (select (arr!42986 _values!1337) from!2000) (dynLambda!3584 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6262 (array!89031 array!89033 (_ BitVec 32) (_ BitVec 32) V!53201 V!53201 (_ BitVec 32) Int) ListLongMap!21157)

(assert (=> b!1321544 (= lt!587520 (getCurrentListMapNoExtraKeys!6262 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55757 () Bool)

(declare-fun mapRes!55757 () Bool)

(declare-fun tp!106235 () Bool)

(declare-fun e!753708 () Bool)

(assert (=> mapNonEmpty!55757 (= mapRes!55757 (and tp!106235 e!753708))))

(declare-fun mapRest!55757 () (Array (_ BitVec 32) ValueCell!17138))

(declare-fun mapValue!55757 () ValueCell!17138)

(declare-fun mapKey!55757 () (_ BitVec 32))

(assert (=> mapNonEmpty!55757 (= (arr!42986 _values!1337) (store mapRest!55757 mapKey!55757 mapValue!55757))))

(declare-fun b!1321545 () Bool)

(declare-fun tp_is_empty!36073 () Bool)

(assert (=> b!1321545 (= e!753708 tp_is_empty!36073)))

(declare-fun mapIsEmpty!55757 () Bool)

(assert (=> mapIsEmpty!55757 mapRes!55757))

(declare-fun res!877235 () Bool)

(assert (=> start!111632 (=> (not res!877235) (not e!753710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111632 (= res!877235 (validMask!0 mask!2019))))

(assert (=> start!111632 e!753710))

(declare-fun array_inv!32409 (array!89031) Bool)

(assert (=> start!111632 (array_inv!32409 _keys!1609)))

(assert (=> start!111632 true))

(assert (=> start!111632 tp_is_empty!36073))

(declare-fun e!753711 () Bool)

(declare-fun array_inv!32410 (array!89033) Bool)

(assert (=> start!111632 (and (array_inv!32410 _values!1337) e!753711)))

(assert (=> start!111632 tp!106236))

(declare-fun b!1321546 () Bool)

(declare-fun res!877233 () Bool)

(assert (=> b!1321546 (=> (not res!877233) (not e!753710))))

(assert (=> b!1321546 (= res!877233 (not (= (select (arr!42985 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321547 () Bool)

(declare-fun res!877234 () Bool)

(assert (=> b!1321547 (=> (not res!877234) (not e!753710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89031 (_ BitVec 32)) Bool)

(assert (=> b!1321547 (= res!877234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321548 () Bool)

(declare-fun e!753712 () Bool)

(assert (=> b!1321548 (= e!753712 tp_is_empty!36073)))

(declare-fun b!1321549 () Bool)

(declare-fun res!877236 () Bool)

(assert (=> b!1321549 (=> (not res!877236) (not e!753710))))

(assert (=> b!1321549 (= res!877236 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43536 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321550 () Bool)

(declare-fun res!877238 () Bool)

(assert (=> b!1321550 (=> (not res!877238) (not e!753710))))

(declare-datatypes ((List!30667 0))(
  ( (Nil!30664) (Cons!30663 (h!31872 (_ BitVec 64)) (t!44476 List!30667)) )
))
(declare-fun arrayNoDuplicates!0 (array!89031 (_ BitVec 32) List!30667) Bool)

(assert (=> b!1321550 (= res!877238 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30664))))

(declare-fun b!1321551 () Bool)

(declare-fun res!877240 () Bool)

(assert (=> b!1321551 (=> (not res!877240) (not e!753710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321551 (= res!877240 (validKeyInArray!0 (select (arr!42985 _keys!1609) from!2000)))))

(declare-fun b!1321552 () Bool)

(declare-fun res!877239 () Bool)

(assert (=> b!1321552 (=> (not res!877239) (not e!753710))))

(assert (=> b!1321552 (= res!877239 (and (= (size!43537 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43536 _keys!1609) (size!43537 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321553 () Bool)

(declare-fun res!877237 () Bool)

(assert (=> b!1321553 (=> (not res!877237) (not e!753710))))

(declare-fun getCurrentListMap!5534 (array!89031 array!89033 (_ BitVec 32) (_ BitVec 32) V!53201 V!53201 (_ BitVec 32) Int) ListLongMap!21157)

(assert (=> b!1321553 (= res!877237 (contains!8685 (getCurrentListMap!5534 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321554 () Bool)

(assert (=> b!1321554 (= e!753711 (and e!753712 mapRes!55757))))

(declare-fun condMapEmpty!55757 () Bool)

(declare-fun mapDefault!55757 () ValueCell!17138)

