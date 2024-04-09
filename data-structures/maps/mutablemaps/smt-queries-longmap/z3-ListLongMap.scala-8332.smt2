; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101456 () Bool)

(assert start!101456)

(declare-fun b_free!26265 () Bool)

(declare-fun b_next!26265 () Bool)

(assert (=> start!101456 (= b_free!26265 (not b_next!26265))))

(declare-fun tp!91826 () Bool)

(declare-fun b_and!43711 () Bool)

(assert (=> start!101456 (= tp!91826 b_and!43711)))

(declare-fun b!1218796 () Bool)

(declare-fun e!692033 () Bool)

(declare-fun tp_is_empty!30969 () Bool)

(assert (=> b!1218796 (= e!692033 tp_is_empty!30969)))

(declare-fun b!1218797 () Bool)

(declare-fun e!692035 () Bool)

(declare-fun e!692040 () Bool)

(assert (=> b!1218797 (= e!692035 e!692040)))

(declare-fun res!809565 () Bool)

(assert (=> b!1218797 (=> res!809565 e!692040)))

(declare-datatypes ((array!78688 0))(
  ( (array!78689 (arr!37972 (Array (_ BitVec 32) (_ BitVec 64))) (size!38509 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78688)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1218797 (= res!809565 (not (= (select (arr!37972 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1218798 () Bool)

(declare-fun e!692037 () Bool)

(assert (=> b!1218798 (= e!692037 true)))

(assert (=> b!1218798 e!692035))

(declare-fun res!809560 () Bool)

(assert (=> b!1218798 (=> (not res!809560) (not e!692035))))

(declare-datatypes ((V!46419 0))(
  ( (V!46420 (val!15541 Int)) )
))
(declare-fun lt!554064 () V!46419)

(declare-datatypes ((tuple2!20126 0))(
  ( (tuple2!20127 (_1!10073 (_ BitVec 64)) (_2!10073 V!46419)) )
))
(declare-datatypes ((List!26946 0))(
  ( (Nil!26943) (Cons!26942 (h!28151 tuple2!20126) (t!40198 List!26946)) )
))
(declare-datatypes ((ListLongMap!18107 0))(
  ( (ListLongMap!18108 (toList!9069 List!26946)) )
))
(declare-fun lt!554066 () ListLongMap!18107)

(declare-datatypes ((ValueCell!14775 0))(
  ( (ValueCellFull!14775 (v!18198 V!46419)) (EmptyCell!14775) )
))
(declare-datatypes ((array!78690 0))(
  ( (array!78691 (arr!37973 (Array (_ BitVec 32) ValueCell!14775)) (size!38510 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78690)

(declare-fun lt!554061 () ListLongMap!18107)

(declare-fun +!4049 (ListLongMap!18107 tuple2!20126) ListLongMap!18107)

(declare-fun get!19401 (ValueCell!14775 V!46419) V!46419)

(assert (=> b!1218798 (= res!809560 (= lt!554061 (+!4049 lt!554066 (tuple2!20127 (select (arr!37972 _keys!1208) from!1455) (get!19401 (select (arr!37973 _values!996) from!1455) lt!554064)))))))

(declare-fun mapIsEmpty!48337 () Bool)

(declare-fun mapRes!48337 () Bool)

(assert (=> mapIsEmpty!48337 mapRes!48337))

(declare-fun b!1218799 () Bool)

(declare-fun res!809562 () Bool)

(declare-fun e!692038 () Bool)

(assert (=> b!1218799 (=> (not res!809562) (not e!692038))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78688 (_ BitVec 32)) Bool)

(assert (=> b!1218799 (= res!809562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218800 () Bool)

(declare-fun e!692039 () Bool)

(declare-fun e!692041 () Bool)

(assert (=> b!1218800 (= e!692039 e!692041)))

(declare-fun res!809561 () Bool)

(assert (=> b!1218800 (=> res!809561 e!692041)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218800 (= res!809561 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46419)

(declare-fun lt!554060 () array!78688)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46419)

(declare-fun lt!554059 () array!78690)

(declare-fun getCurrentListMapNoExtraKeys!5473 (array!78688 array!78690 (_ BitVec 32) (_ BitVec 32) V!46419 V!46419 (_ BitVec 32) Int) ListLongMap!18107)

(assert (=> b!1218800 (= lt!554061 (getCurrentListMapNoExtraKeys!5473 lt!554060 lt!554059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218800 (= lt!554059 (array!78691 (store (arr!37973 _values!996) i!673 (ValueCellFull!14775 lt!554064)) (size!38510 _values!996)))))

(declare-fun dynLambda!3377 (Int (_ BitVec 64)) V!46419)

(assert (=> b!1218800 (= lt!554064 (dynLambda!3377 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554065 () ListLongMap!18107)

(assert (=> b!1218800 (= lt!554065 (getCurrentListMapNoExtraKeys!5473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218801 () Bool)

(declare-fun res!809569 () Bool)

(assert (=> b!1218801 (=> (not res!809569) (not e!692038))))

(declare-datatypes ((List!26947 0))(
  ( (Nil!26944) (Cons!26943 (h!28152 (_ BitVec 64)) (t!40199 List!26947)) )
))
(declare-fun arrayNoDuplicates!0 (array!78688 (_ BitVec 32) List!26947) Bool)

(assert (=> b!1218801 (= res!809569 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26944))))

(declare-fun mapNonEmpty!48337 () Bool)

(declare-fun tp!91827 () Bool)

(declare-fun e!692031 () Bool)

(assert (=> mapNonEmpty!48337 (= mapRes!48337 (and tp!91827 e!692031))))

(declare-fun mapValue!48337 () ValueCell!14775)

(declare-fun mapRest!48337 () (Array (_ BitVec 32) ValueCell!14775))

(declare-fun mapKey!48337 () (_ BitVec 32))

(assert (=> mapNonEmpty!48337 (= (arr!37973 _values!996) (store mapRest!48337 mapKey!48337 mapValue!48337))))

(declare-fun b!1218802 () Bool)

(declare-fun e!692034 () Bool)

(assert (=> b!1218802 (= e!692034 (not e!692039))))

(declare-fun res!809567 () Bool)

(assert (=> b!1218802 (=> res!809567 e!692039)))

(assert (=> b!1218802 (= res!809567 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218802 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40320 0))(
  ( (Unit!40321) )
))
(declare-fun lt!554062 () Unit!40320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78688 (_ BitVec 64) (_ BitVec 32)) Unit!40320)

(assert (=> b!1218802 (= lt!554062 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218803 () Bool)

(declare-fun res!809571 () Bool)

(assert (=> b!1218803 (=> (not res!809571) (not e!692038))))

(assert (=> b!1218803 (= res!809571 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38509 _keys!1208))))))

(declare-fun b!1218804 () Bool)

(assert (=> b!1218804 (= e!692038 e!692034)))

(declare-fun res!809563 () Bool)

(assert (=> b!1218804 (=> (not res!809563) (not e!692034))))

(assert (=> b!1218804 (= res!809563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554060 mask!1564))))

(assert (=> b!1218804 (= lt!554060 (array!78689 (store (arr!37972 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38509 _keys!1208)))))

(declare-fun b!1218805 () Bool)

(declare-fun e!692036 () Bool)

(assert (=> b!1218805 (= e!692036 (and e!692033 mapRes!48337))))

(declare-fun condMapEmpty!48337 () Bool)

(declare-fun mapDefault!48337 () ValueCell!14775)

(assert (=> b!1218805 (= condMapEmpty!48337 (= (arr!37973 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14775)) mapDefault!48337)))))

(declare-fun b!1218806 () Bool)

(declare-fun res!809564 () Bool)

(assert (=> b!1218806 (=> (not res!809564) (not e!692038))))

(assert (=> b!1218806 (= res!809564 (and (= (size!38510 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38509 _keys!1208) (size!38510 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218807 () Bool)

(assert (=> b!1218807 (= e!692041 e!692037)))

(declare-fun res!809570 () Bool)

(assert (=> b!1218807 (=> res!809570 e!692037)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218807 (= res!809570 (not (validKeyInArray!0 (select (arr!37972 _keys!1208) from!1455))))))

(declare-fun lt!554063 () ListLongMap!18107)

(assert (=> b!1218807 (= lt!554063 lt!554066)))

(declare-fun lt!554058 () ListLongMap!18107)

(declare-fun -!1927 (ListLongMap!18107 (_ BitVec 64)) ListLongMap!18107)

(assert (=> b!1218807 (= lt!554066 (-!1927 lt!554058 k0!934))))

(assert (=> b!1218807 (= lt!554063 (getCurrentListMapNoExtraKeys!5473 lt!554060 lt!554059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218807 (= lt!554058 (getCurrentListMapNoExtraKeys!5473 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!554057 () Unit!40320)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1129 (array!78688 array!78690 (_ BitVec 32) (_ BitVec 32) V!46419 V!46419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40320)

(assert (=> b!1218807 (= lt!554057 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1129 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218808 () Bool)

(declare-fun res!809572 () Bool)

(assert (=> b!1218808 (=> (not res!809572) (not e!692038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218808 (= res!809572 (validMask!0 mask!1564))))

(declare-fun res!809566 () Bool)

(assert (=> start!101456 (=> (not res!809566) (not e!692038))))

(assert (=> start!101456 (= res!809566 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38509 _keys!1208))))))

(assert (=> start!101456 e!692038))

(assert (=> start!101456 tp_is_empty!30969))

(declare-fun array_inv!28812 (array!78688) Bool)

(assert (=> start!101456 (array_inv!28812 _keys!1208)))

(assert (=> start!101456 true))

(assert (=> start!101456 tp!91826))

(declare-fun array_inv!28813 (array!78690) Bool)

(assert (=> start!101456 (and (array_inv!28813 _values!996) e!692036)))

(declare-fun b!1218809 () Bool)

(declare-fun res!809568 () Bool)

(assert (=> b!1218809 (=> (not res!809568) (not e!692038))))

(assert (=> b!1218809 (= res!809568 (= (select (arr!37972 _keys!1208) i!673) k0!934))))

(declare-fun b!1218810 () Bool)

(assert (=> b!1218810 (= e!692031 tp_is_empty!30969)))

(declare-fun b!1218811 () Bool)

(declare-fun res!809573 () Bool)

(assert (=> b!1218811 (=> (not res!809573) (not e!692034))))

(assert (=> b!1218811 (= res!809573 (arrayNoDuplicates!0 lt!554060 #b00000000000000000000000000000000 Nil!26944))))

(declare-fun b!1218812 () Bool)

(declare-fun res!809559 () Bool)

(assert (=> b!1218812 (=> (not res!809559) (not e!692038))))

(assert (=> b!1218812 (= res!809559 (validKeyInArray!0 k0!934))))

(declare-fun b!1218813 () Bool)

(assert (=> b!1218813 (= e!692040 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101456 res!809566) b!1218808))

(assert (= (and b!1218808 res!809572) b!1218806))

(assert (= (and b!1218806 res!809564) b!1218799))

(assert (= (and b!1218799 res!809562) b!1218801))

(assert (= (and b!1218801 res!809569) b!1218803))

(assert (= (and b!1218803 res!809571) b!1218812))

(assert (= (and b!1218812 res!809559) b!1218809))

(assert (= (and b!1218809 res!809568) b!1218804))

(assert (= (and b!1218804 res!809563) b!1218811))

(assert (= (and b!1218811 res!809573) b!1218802))

(assert (= (and b!1218802 (not res!809567)) b!1218800))

(assert (= (and b!1218800 (not res!809561)) b!1218807))

(assert (= (and b!1218807 (not res!809570)) b!1218798))

(assert (= (and b!1218798 res!809560) b!1218797))

(assert (= (and b!1218797 (not res!809565)) b!1218813))

(assert (= (and b!1218805 condMapEmpty!48337) mapIsEmpty!48337))

(assert (= (and b!1218805 (not condMapEmpty!48337)) mapNonEmpty!48337))

(get-info :version)

(assert (= (and mapNonEmpty!48337 ((_ is ValueCellFull!14775) mapValue!48337)) b!1218810))

(assert (= (and b!1218805 ((_ is ValueCellFull!14775) mapDefault!48337)) b!1218796))

(assert (= start!101456 b!1218805))

(declare-fun b_lambda!22065 () Bool)

(assert (=> (not b_lambda!22065) (not b!1218800)))

(declare-fun t!40197 () Bool)

(declare-fun tb!11073 () Bool)

(assert (=> (and start!101456 (= defaultEntry!1004 defaultEntry!1004) t!40197) tb!11073))

(declare-fun result!22741 () Bool)

(assert (=> tb!11073 (= result!22741 tp_is_empty!30969)))

(assert (=> b!1218800 t!40197))

(declare-fun b_and!43713 () Bool)

(assert (= b_and!43711 (and (=> t!40197 result!22741) b_and!43713)))

(declare-fun m!1123599 () Bool)

(assert (=> mapNonEmpty!48337 m!1123599))

(declare-fun m!1123601 () Bool)

(assert (=> b!1218809 m!1123601))

(declare-fun m!1123603 () Bool)

(assert (=> b!1218797 m!1123603))

(declare-fun m!1123605 () Bool)

(assert (=> b!1218800 m!1123605))

(declare-fun m!1123607 () Bool)

(assert (=> b!1218800 m!1123607))

(declare-fun m!1123609 () Bool)

(assert (=> b!1218800 m!1123609))

(declare-fun m!1123611 () Bool)

(assert (=> b!1218800 m!1123611))

(declare-fun m!1123613 () Bool)

(assert (=> b!1218807 m!1123613))

(declare-fun m!1123615 () Bool)

(assert (=> b!1218807 m!1123615))

(declare-fun m!1123617 () Bool)

(assert (=> b!1218807 m!1123617))

(assert (=> b!1218807 m!1123603))

(declare-fun m!1123619 () Bool)

(assert (=> b!1218807 m!1123619))

(declare-fun m!1123621 () Bool)

(assert (=> b!1218807 m!1123621))

(assert (=> b!1218807 m!1123603))

(declare-fun m!1123623 () Bool)

(assert (=> b!1218804 m!1123623))

(declare-fun m!1123625 () Bool)

(assert (=> b!1218804 m!1123625))

(declare-fun m!1123627 () Bool)

(assert (=> b!1218808 m!1123627))

(declare-fun m!1123629 () Bool)

(assert (=> b!1218813 m!1123629))

(declare-fun m!1123631 () Bool)

(assert (=> b!1218811 m!1123631))

(declare-fun m!1123633 () Bool)

(assert (=> b!1218801 m!1123633))

(declare-fun m!1123635 () Bool)

(assert (=> start!101456 m!1123635))

(declare-fun m!1123637 () Bool)

(assert (=> start!101456 m!1123637))

(declare-fun m!1123639 () Bool)

(assert (=> b!1218812 m!1123639))

(assert (=> b!1218798 m!1123603))

(declare-fun m!1123641 () Bool)

(assert (=> b!1218798 m!1123641))

(assert (=> b!1218798 m!1123641))

(declare-fun m!1123643 () Bool)

(assert (=> b!1218798 m!1123643))

(declare-fun m!1123645 () Bool)

(assert (=> b!1218798 m!1123645))

(declare-fun m!1123647 () Bool)

(assert (=> b!1218802 m!1123647))

(declare-fun m!1123649 () Bool)

(assert (=> b!1218802 m!1123649))

(declare-fun m!1123651 () Bool)

(assert (=> b!1218799 m!1123651))

(check-sat (not b!1218811) (not b_next!26265) (not b_lambda!22065) b_and!43713 (not b!1218802) (not b!1218801) (not start!101456) (not b!1218799) (not b!1218807) tp_is_empty!30969 (not b!1218800) (not b!1218808) (not b!1218813) (not mapNonEmpty!48337) (not b!1218798) (not b!1218804) (not b!1218812))
(check-sat b_and!43713 (not b_next!26265))
