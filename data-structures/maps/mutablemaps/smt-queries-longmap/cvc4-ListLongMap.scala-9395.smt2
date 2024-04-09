; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111904 () Bool)

(assert start!111904)

(declare-fun b_free!30467 () Bool)

(declare-fun b_next!30467 () Bool)

(assert (=> start!111904 (= b_free!30467 (not b_next!30467))))

(declare-fun tp!106882 () Bool)

(declare-fun b_and!49039 () Bool)

(assert (=> start!111904 (= tp!106882 b_and!49039)))

(declare-fun b!1325352 () Bool)

(declare-fun e!755575 () Bool)

(declare-fun tp_is_empty!36287 () Bool)

(assert (=> b!1325352 (= e!755575 tp_is_empty!36287)))

(declare-fun b!1325354 () Bool)

(declare-fun res!879702 () Bool)

(declare-fun e!755574 () Bool)

(assert (=> b!1325354 (=> (not res!879702) (not e!755574))))

(declare-datatypes ((array!89443 0))(
  ( (array!89444 (arr!43190 (Array (_ BitVec 32) (_ BitVec 64))) (size!43741 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89443)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53485 0))(
  ( (V!53486 (val!18218 Int)) )
))
(declare-datatypes ((ValueCell!17245 0))(
  ( (ValueCellFull!17245 (v!20849 V!53485)) (EmptyCell!17245) )
))
(declare-datatypes ((array!89445 0))(
  ( (array!89446 (arr!43191 (Array (_ BitVec 32) ValueCell!17245)) (size!43742 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89445)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325354 (= res!879702 (and (= (size!43742 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43741 _keys!1609) (size!43742 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1325355 () Bool)

(declare-fun e!755571 () Bool)

(assert (=> b!1325355 (= e!755571 tp_is_empty!36287)))

(declare-fun b!1325356 () Bool)

(declare-fun res!879708 () Bool)

(assert (=> b!1325356 (=> (not res!879708) (not e!755574))))

(declare-datatypes ((List!30816 0))(
  ( (Nil!30813) (Cons!30812 (h!32021 (_ BitVec 64)) (t!44761 List!30816)) )
))
(declare-fun arrayNoDuplicates!0 (array!89443 (_ BitVec 32) List!30816) Bool)

(assert (=> b!1325356 (= res!879708 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30813))))

(declare-fun b!1325357 () Bool)

(declare-fun res!879704 () Bool)

(assert (=> b!1325357 (=> (not res!879704) (not e!755574))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325357 (= res!879704 (validKeyInArray!0 (select (arr!43190 _keys!1609) from!2000)))))

(declare-fun b!1325358 () Bool)

(assert (=> b!1325358 (= e!755574 false)))

(declare-fun zeroValue!1279 () V!53485)

(declare-fun minValue!1279 () V!53485)

(declare-fun lt!589717 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23648 0))(
  ( (tuple2!23649 (_1!11834 (_ BitVec 64)) (_2!11834 V!53485)) )
))
(declare-datatypes ((List!30817 0))(
  ( (Nil!30814) (Cons!30813 (h!32022 tuple2!23648) (t!44762 List!30817)) )
))
(declare-datatypes ((ListLongMap!21317 0))(
  ( (ListLongMap!21318 (toList!10674 List!30817)) )
))
(declare-fun contains!8767 (ListLongMap!21317 (_ BitVec 64)) Bool)

(declare-fun +!4590 (ListLongMap!21317 tuple2!23648) ListLongMap!21317)

(declare-fun getCurrentListMapNoExtraKeys!6308 (array!89443 array!89445 (_ BitVec 32) (_ BitVec 32) V!53485 V!53485 (_ BitVec 32) Int) ListLongMap!21317)

(declare-fun get!21795 (ValueCell!17245 V!53485) V!53485)

(declare-fun dynLambda!3627 (Int (_ BitVec 64)) V!53485)

(assert (=> b!1325358 (= lt!589717 (contains!8767 (+!4590 (+!4590 (+!4590 (getCurrentListMapNoExtraKeys!6308 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23649 (select (arr!43190 _keys!1609) from!2000) (get!21795 (select (arr!43191 _values!1337) from!2000) (dynLambda!3627 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k!1164))))

(declare-fun mapIsEmpty!56082 () Bool)

(declare-fun mapRes!56082 () Bool)

(assert (=> mapIsEmpty!56082 mapRes!56082))

(declare-fun b!1325359 () Bool)

(declare-fun res!879706 () Bool)

(assert (=> b!1325359 (=> (not res!879706) (not e!755574))))

(assert (=> b!1325359 (= res!879706 (not (= (select (arr!43190 _keys!1609) from!2000) k!1164)))))

(declare-fun res!879707 () Bool)

(assert (=> start!111904 (=> (not res!879707) (not e!755574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111904 (= res!879707 (validMask!0 mask!2019))))

(assert (=> start!111904 e!755574))

(declare-fun array_inv!32545 (array!89443) Bool)

(assert (=> start!111904 (array_inv!32545 _keys!1609)))

(assert (=> start!111904 true))

(assert (=> start!111904 tp_is_empty!36287))

(declare-fun e!755572 () Bool)

(declare-fun array_inv!32546 (array!89445) Bool)

(assert (=> start!111904 (and (array_inv!32546 _values!1337) e!755572)))

(assert (=> start!111904 tp!106882))

(declare-fun b!1325353 () Bool)

(assert (=> b!1325353 (= e!755572 (and e!755575 mapRes!56082))))

(declare-fun condMapEmpty!56082 () Bool)

(declare-fun mapDefault!56082 () ValueCell!17245)

