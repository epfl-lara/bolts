; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111586 () Bool)

(assert start!111586)

(declare-fun b_free!30207 () Bool)

(declare-fun b_next!30207 () Bool)

(assert (=> start!111586 (= b_free!30207 (not b_next!30207))))

(declare-fun tp!106098 () Bool)

(declare-fun b_and!48583 () Bool)

(assert (=> start!111586 (= tp!106098 b_and!48583)))

(declare-fun b!1320739 () Bool)

(declare-fun res!876685 () Bool)

(declare-fun e!753363 () Bool)

(assert (=> b!1320739 (=> (not res!876685) (not e!753363))))

(declare-datatypes ((array!88947 0))(
  ( (array!88948 (arr!42943 (Array (_ BitVec 32) (_ BitVec 64))) (size!43494 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88947)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1320739 (= res!876685 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43494 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320740 () Bool)

(declare-fun e!753365 () Bool)

(declare-fun tp_is_empty!36027 () Bool)

(assert (=> b!1320740 (= e!753365 tp_is_empty!36027)))

(declare-fun b!1320742 () Bool)

(declare-fun res!876681 () Bool)

(assert (=> b!1320742 (=> (not res!876681) (not e!753363))))

(assert (=> b!1320742 (= res!876681 (not (= (select (arr!42943 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55688 () Bool)

(declare-fun mapRes!55688 () Bool)

(assert (=> mapIsEmpty!55688 mapRes!55688))

(declare-fun b!1320743 () Bool)

(declare-fun e!753364 () Bool)

(assert (=> b!1320743 (= e!753364 (and e!753365 mapRes!55688))))

(declare-fun condMapEmpty!55688 () Bool)

(declare-datatypes ((V!53139 0))(
  ( (V!53140 (val!18088 Int)) )
))
(declare-datatypes ((ValueCell!17115 0))(
  ( (ValueCellFull!17115 (v!20716 V!53139)) (EmptyCell!17115) )
))
(declare-datatypes ((array!88949 0))(
  ( (array!88950 (arr!42944 (Array (_ BitVec 32) ValueCell!17115)) (size!43495 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88949)

(declare-fun mapDefault!55688 () ValueCell!17115)

(assert (=> b!1320743 (= condMapEmpty!55688 (= (arr!42944 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17115)) mapDefault!55688)))))

(declare-fun mapNonEmpty!55688 () Bool)

(declare-fun tp!106097 () Bool)

(declare-fun e!753366 () Bool)

(assert (=> mapNonEmpty!55688 (= mapRes!55688 (and tp!106097 e!753366))))

(declare-fun mapValue!55688 () ValueCell!17115)

(declare-fun mapKey!55688 () (_ BitVec 32))

(declare-fun mapRest!55688 () (Array (_ BitVec 32) ValueCell!17115))

(assert (=> mapNonEmpty!55688 (= (arr!42944 _values!1337) (store mapRest!55688 mapKey!55688 mapValue!55688))))

(declare-fun b!1320741 () Bool)

(assert (=> b!1320741 (= e!753366 tp_is_empty!36027)))

(declare-fun res!876687 () Bool)

(assert (=> start!111586 (=> (not res!876687) (not e!753363))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111586 (= res!876687 (validMask!0 mask!2019))))

(assert (=> start!111586 e!753363))

(declare-fun array_inv!32375 (array!88947) Bool)

(assert (=> start!111586 (array_inv!32375 _keys!1609)))

(assert (=> start!111586 true))

(assert (=> start!111586 tp_is_empty!36027))

(declare-fun array_inv!32376 (array!88949) Bool)

(assert (=> start!111586 (and (array_inv!32376 _values!1337) e!753364)))

(assert (=> start!111586 tp!106098))

(declare-fun b!1320744 () Bool)

(declare-fun res!876688 () Bool)

(assert (=> b!1320744 (=> (not res!876688) (not e!753363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320744 (= res!876688 (validKeyInArray!0 (select (arr!42943 _keys!1609) from!2000)))))

(declare-fun b!1320745 () Bool)

(declare-fun res!876686 () Bool)

(assert (=> b!1320745 (=> (not res!876686) (not e!753363))))

(declare-datatypes ((List!30637 0))(
  ( (Nil!30634) (Cons!30633 (h!31842 (_ BitVec 64)) (t!44400 List!30637)) )
))
(declare-fun arrayNoDuplicates!0 (array!88947 (_ BitVec 32) List!30637) Bool)

(assert (=> b!1320745 (= res!876686 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30634))))

(declare-fun b!1320746 () Bool)

(declare-fun res!876684 () Bool)

(assert (=> b!1320746 (=> (not res!876684) (not e!753363))))

(declare-fun zeroValue!1279 () V!53139)

(declare-fun minValue!1279 () V!53139)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23456 0))(
  ( (tuple2!23457 (_1!11738 (_ BitVec 64)) (_2!11738 V!53139)) )
))
(declare-datatypes ((List!30638 0))(
  ( (Nil!30635) (Cons!30634 (h!31843 tuple2!23456) (t!44401 List!30638)) )
))
(declare-datatypes ((ListLongMap!21125 0))(
  ( (ListLongMap!21126 (toList!10578 List!30638)) )
))
(declare-fun contains!8669 (ListLongMap!21125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5521 (array!88947 array!88949 (_ BitVec 32) (_ BitVec 32) V!53139 V!53139 (_ BitVec 32) Int) ListLongMap!21125)

(assert (=> b!1320746 (= res!876684 (contains!8669 (getCurrentListMap!5521 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320747 () Bool)

(declare-fun res!876682 () Bool)

(assert (=> b!1320747 (=> (not res!876682) (not e!753363))))

(assert (=> b!1320747 (= res!876682 (and (= (size!43495 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43494 _keys!1609) (size!43495 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320748 () Bool)

(declare-fun res!876683 () Bool)

(assert (=> b!1320748 (=> (not res!876683) (not e!753363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88947 (_ BitVec 32)) Bool)

(assert (=> b!1320748 (= res!876683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320749 () Bool)

(assert (=> b!1320749 (= e!753363 (not true))))

(declare-fun lt!587038 () ListLongMap!21125)

(assert (=> b!1320749 (contains!8669 lt!587038 k0!1164)))

(declare-datatypes ((Unit!43464 0))(
  ( (Unit!43465) )
))
(declare-fun lt!587040 () Unit!43464)

(declare-fun lt!587039 () V!53139)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!147 ((_ BitVec 64) (_ BitVec 64) V!53139 ListLongMap!21125) Unit!43464)

(assert (=> b!1320749 (= lt!587040 (lemmaInListMapAfterAddingDiffThenInBefore!147 k0!1164 (select (arr!42943 _keys!1609) from!2000) lt!587039 lt!587038))))

(declare-fun lt!587041 () ListLongMap!21125)

(assert (=> b!1320749 (contains!8669 lt!587041 k0!1164)))

(declare-fun lt!587035 () Unit!43464)

(assert (=> b!1320749 (= lt!587035 (lemmaInListMapAfterAddingDiffThenInBefore!147 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587041))))

(declare-fun lt!587036 () ListLongMap!21125)

(assert (=> b!1320749 (contains!8669 lt!587036 k0!1164)))

(declare-fun lt!587037 () Unit!43464)

(assert (=> b!1320749 (= lt!587037 (lemmaInListMapAfterAddingDiffThenInBefore!147 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587036))))

(declare-fun +!4532 (ListLongMap!21125 tuple2!23456) ListLongMap!21125)

(assert (=> b!1320749 (= lt!587036 (+!4532 lt!587041 (tuple2!23457 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320749 (= lt!587041 (+!4532 lt!587038 (tuple2!23457 (select (arr!42943 _keys!1609) from!2000) lt!587039)))))

(declare-fun get!21648 (ValueCell!17115 V!53139) V!53139)

(declare-fun dynLambda!3569 (Int (_ BitVec 64)) V!53139)

(assert (=> b!1320749 (= lt!587039 (get!21648 (select (arr!42944 _values!1337) from!2000) (dynLambda!3569 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6247 (array!88947 array!88949 (_ BitVec 32) (_ BitVec 32) V!53139 V!53139 (_ BitVec 32) Int) ListLongMap!21125)

(assert (=> b!1320749 (= lt!587038 (getCurrentListMapNoExtraKeys!6247 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(assert (= (and start!111586 res!876687) b!1320747))

(assert (= (and b!1320747 res!876682) b!1320748))

(assert (= (and b!1320748 res!876683) b!1320745))

(assert (= (and b!1320745 res!876686) b!1320739))

(assert (= (and b!1320739 res!876685) b!1320746))

(assert (= (and b!1320746 res!876684) b!1320742))

(assert (= (and b!1320742 res!876681) b!1320744))

(assert (= (and b!1320744 res!876688) b!1320749))

(assert (= (and b!1320743 condMapEmpty!55688) mapIsEmpty!55688))

(assert (= (and b!1320743 (not condMapEmpty!55688)) mapNonEmpty!55688))

(get-info :version)

(assert (= (and mapNonEmpty!55688 ((_ is ValueCellFull!17115) mapValue!55688)) b!1320741))

(assert (= (and b!1320743 ((_ is ValueCellFull!17115) mapDefault!55688)) b!1320740))

(assert (= start!111586 b!1320743))

(declare-fun b_lambda!23543 () Bool)

(assert (=> (not b_lambda!23543) (not b!1320749)))

(declare-fun t!44399 () Bool)

(declare-fun tb!11567 () Bool)

(assert (=> (and start!111586 (= defaultEntry!1340 defaultEntry!1340) t!44399) tb!11567))

(declare-fun result!24181 () Bool)

(assert (=> tb!11567 (= result!24181 tp_is_empty!36027)))

(assert (=> b!1320749 t!44399))

(declare-fun b_and!48585 () Bool)

(assert (= b_and!48583 (and (=> t!44399 result!24181) b_and!48585)))

(declare-fun m!1208555 () Bool)

(assert (=> b!1320744 m!1208555))

(assert (=> b!1320744 m!1208555))

(declare-fun m!1208557 () Bool)

(assert (=> b!1320744 m!1208557))

(declare-fun m!1208559 () Bool)

(assert (=> b!1320749 m!1208559))

(declare-fun m!1208561 () Bool)

(assert (=> b!1320749 m!1208561))

(declare-fun m!1208563 () Bool)

(assert (=> b!1320749 m!1208563))

(declare-fun m!1208565 () Bool)

(assert (=> b!1320749 m!1208565))

(assert (=> b!1320749 m!1208555))

(declare-fun m!1208567 () Bool)

(assert (=> b!1320749 m!1208567))

(declare-fun m!1208569 () Bool)

(assert (=> b!1320749 m!1208569))

(declare-fun m!1208571 () Bool)

(assert (=> b!1320749 m!1208571))

(declare-fun m!1208573 () Bool)

(assert (=> b!1320749 m!1208573))

(declare-fun m!1208575 () Bool)

(assert (=> b!1320749 m!1208575))

(declare-fun m!1208577 () Bool)

(assert (=> b!1320749 m!1208577))

(declare-fun m!1208579 () Bool)

(assert (=> b!1320749 m!1208579))

(assert (=> b!1320749 m!1208573))

(assert (=> b!1320749 m!1208565))

(declare-fun m!1208581 () Bool)

(assert (=> b!1320749 m!1208581))

(assert (=> b!1320749 m!1208555))

(declare-fun m!1208583 () Bool)

(assert (=> start!111586 m!1208583))

(declare-fun m!1208585 () Bool)

(assert (=> start!111586 m!1208585))

(declare-fun m!1208587 () Bool)

(assert (=> start!111586 m!1208587))

(declare-fun m!1208589 () Bool)

(assert (=> mapNonEmpty!55688 m!1208589))

(declare-fun m!1208591 () Bool)

(assert (=> b!1320748 m!1208591))

(declare-fun m!1208593 () Bool)

(assert (=> b!1320745 m!1208593))

(declare-fun m!1208595 () Bool)

(assert (=> b!1320746 m!1208595))

(assert (=> b!1320746 m!1208595))

(declare-fun m!1208597 () Bool)

(assert (=> b!1320746 m!1208597))

(assert (=> b!1320742 m!1208555))

(check-sat (not b_lambda!23543) (not b!1320745) tp_is_empty!36027 (not mapNonEmpty!55688) b_and!48585 (not b!1320746) (not b!1320749) (not b!1320744) (not b_next!30207) (not start!111586) (not b!1320748))
(check-sat b_and!48585 (not b_next!30207))
