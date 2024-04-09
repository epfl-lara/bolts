; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111922 () Bool)

(assert start!111922)

(declare-fun b_free!30485 () Bool)

(declare-fun b_next!30485 () Bool)

(assert (=> start!111922 (= b_free!30485 (not b_next!30485))))

(declare-fun tp!106936 () Bool)

(declare-fun b_and!49075 () Bool)

(assert (=> start!111922 (= tp!106936 b_and!49075)))

(declare-fun b!1325667 () Bool)

(declare-fun e!755710 () Bool)

(declare-fun tp_is_empty!36305 () Bool)

(assert (=> b!1325667 (= e!755710 tp_is_empty!36305)))

(declare-fun b!1325668 () Bool)

(declare-fun e!755707 () Bool)

(assert (=> b!1325668 (= e!755707 (not true))))

(declare-datatypes ((V!53509 0))(
  ( (V!53510 (val!18227 Int)) )
))
(declare-datatypes ((tuple2!23662 0))(
  ( (tuple2!23663 (_1!11841 (_ BitVec 64)) (_2!11841 V!53509)) )
))
(declare-datatypes ((List!30830 0))(
  ( (Nil!30827) (Cons!30826 (h!32035 tuple2!23662) (t!44793 List!30830)) )
))
(declare-datatypes ((ListLongMap!21331 0))(
  ( (ListLongMap!21332 (toList!10681 List!30830)) )
))
(declare-fun lt!589770 () ListLongMap!21331)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8774 (ListLongMap!21331 (_ BitVec 64)) Bool)

(assert (=> b!1325668 (contains!8774 lt!589770 k!1164)))

(declare-fun minValue!1279 () V!53509)

(declare-datatypes ((Unit!43598 0))(
  ( (Unit!43599) )
))
(declare-fun lt!589771 () Unit!43598)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!206 ((_ BitVec 64) (_ BitVec 64) V!53509 ListLongMap!21331) Unit!43598)

(assert (=> b!1325668 (= lt!589771 (lemmaInListMapAfterAddingDiffThenInBefore!206 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589770))))

(declare-datatypes ((array!89479 0))(
  ( (array!89480 (arr!43208 (Array (_ BitVec 32) (_ BitVec 64))) (size!43759 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89479)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53509)

(declare-datatypes ((ValueCell!17254 0))(
  ( (ValueCellFull!17254 (v!20858 V!53509)) (EmptyCell!17254) )
))
(declare-datatypes ((array!89481 0))(
  ( (array!89482 (arr!43209 (Array (_ BitVec 32) ValueCell!17254)) (size!43760 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89481)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun +!4596 (ListLongMap!21331 tuple2!23662) ListLongMap!21331)

(declare-fun getCurrentListMapNoExtraKeys!6314 (array!89479 array!89481 (_ BitVec 32) (_ BitVec 32) V!53509 V!53509 (_ BitVec 32) Int) ListLongMap!21331)

(declare-fun get!21807 (ValueCell!17254 V!53509) V!53509)

(declare-fun dynLambda!3633 (Int (_ BitVec 64)) V!53509)

(assert (=> b!1325668 (= lt!589770 (+!4596 (+!4596 (getCurrentListMapNoExtraKeys!6314 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23663 (select (arr!43208 _keys!1609) from!2000) (get!21807 (select (arr!43209 _values!1337) from!2000) (dynLambda!3633 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325669 () Bool)

(declare-fun res!879921 () Bool)

(assert (=> b!1325669 (=> (not res!879921) (not e!755707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89479 (_ BitVec 32)) Bool)

(assert (=> b!1325669 (= res!879921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!56109 () Bool)

(declare-fun mapRes!56109 () Bool)

(assert (=> mapIsEmpty!56109 mapRes!56109))

(declare-fun b!1325670 () Bool)

(declare-fun res!879924 () Bool)

(assert (=> b!1325670 (=> (not res!879924) (not e!755707))))

(declare-fun getCurrentListMap!5615 (array!89479 array!89481 (_ BitVec 32) (_ BitVec 32) V!53509 V!53509 (_ BitVec 32) Int) ListLongMap!21331)

(assert (=> b!1325670 (= res!879924 (contains!8774 (getCurrentListMap!5615 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325671 () Bool)

(declare-fun res!879923 () Bool)

(assert (=> b!1325671 (=> (not res!879923) (not e!755707))))

(assert (=> b!1325671 (= res!879923 (and (= (size!43760 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43759 _keys!1609) (size!43760 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!879917 () Bool)

(assert (=> start!111922 (=> (not res!879917) (not e!755707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111922 (= res!879917 (validMask!0 mask!2019))))

(assert (=> start!111922 e!755707))

(declare-fun array_inv!32557 (array!89479) Bool)

(assert (=> start!111922 (array_inv!32557 _keys!1609)))

(assert (=> start!111922 true))

(assert (=> start!111922 tp_is_empty!36305))

(declare-fun e!755708 () Bool)

(declare-fun array_inv!32558 (array!89481) Bool)

(assert (=> start!111922 (and (array_inv!32558 _values!1337) e!755708)))

(assert (=> start!111922 tp!106936))

(declare-fun b!1325672 () Bool)

(declare-fun res!879919 () Bool)

(assert (=> b!1325672 (=> (not res!879919) (not e!755707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325672 (= res!879919 (validKeyInArray!0 (select (arr!43208 _keys!1609) from!2000)))))

(declare-fun b!1325673 () Bool)

(declare-fun res!879918 () Bool)

(assert (=> b!1325673 (=> (not res!879918) (not e!755707))))

(assert (=> b!1325673 (= res!879918 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43759 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325674 () Bool)

(declare-fun res!879922 () Bool)

(assert (=> b!1325674 (=> (not res!879922) (not e!755707))))

(assert (=> b!1325674 (= res!879922 (not (= (select (arr!43208 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1325675 () Bool)

(declare-fun res!879920 () Bool)

(assert (=> b!1325675 (=> (not res!879920) (not e!755707))))

(declare-datatypes ((List!30831 0))(
  ( (Nil!30828) (Cons!30827 (h!32036 (_ BitVec 64)) (t!44794 List!30831)) )
))
(declare-fun arrayNoDuplicates!0 (array!89479 (_ BitVec 32) List!30831) Bool)

(assert (=> b!1325675 (= res!879920 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30828))))

(declare-fun b!1325676 () Bool)

(assert (=> b!1325676 (= e!755708 (and e!755710 mapRes!56109))))

(declare-fun condMapEmpty!56109 () Bool)

(declare-fun mapDefault!56109 () ValueCell!17254)

