; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133658 () Bool)

(assert start!133658)

(declare-fun b_free!32043 () Bool)

(declare-fun b_next!32043 () Bool)

(assert (=> start!133658 (= b_free!32043 (not b_next!32043))))

(declare-fun tp!113253 () Bool)

(declare-fun b_and!51607 () Bool)

(assert (=> start!133658 (= tp!113253 b_and!51607)))

(declare-fun b!1562281 () Bool)

(declare-fun res!1068241 () Bool)

(declare-fun e!870607 () Bool)

(assert (=> b!1562281 (=> (not res!1068241) (not e!870607))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104085 0))(
  ( (array!104086 (arr!50230 (Array (_ BitVec 32) (_ BitVec 64))) (size!50781 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104085)

(assert (=> b!1562281 (= res!1068241 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50781 _keys!637)) (bvslt from!782 (size!50781 _keys!637))))))

(declare-fun res!1068240 () Bool)

(assert (=> start!133658 (=> (not res!1068240) (not e!870607))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133658 (= res!1068240 (validMask!0 mask!947))))

(assert (=> start!133658 e!870607))

(assert (=> start!133658 tp!113253))

(declare-fun tp_is_empty!38709 () Bool)

(assert (=> start!133658 tp_is_empty!38709))

(assert (=> start!133658 true))

(declare-fun array_inv!38967 (array!104085) Bool)

(assert (=> start!133658 (array_inv!38967 _keys!637)))

(declare-datatypes ((V!59819 0))(
  ( (V!59820 (val!19438 Int)) )
))
(declare-datatypes ((ValueCell!18324 0))(
  ( (ValueCellFull!18324 (v!22187 V!59819)) (EmptyCell!18324) )
))
(declare-datatypes ((array!104087 0))(
  ( (array!104088 (arr!50231 (Array (_ BitVec 32) ValueCell!18324)) (size!50782 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104087)

(declare-fun e!870609 () Bool)

(declare-fun array_inv!38968 (array!104087) Bool)

(assert (=> start!133658 (and (array_inv!38968 _values!487) e!870609)))

(declare-fun b!1562282 () Bool)

(assert (=> b!1562282 (= e!870607 (not true))))

(declare-fun lt!671568 () Bool)

(declare-datatypes ((tuple2!25264 0))(
  ( (tuple2!25265 (_1!12642 (_ BitVec 64)) (_2!12642 V!59819)) )
))
(declare-datatypes ((List!36638 0))(
  ( (Nil!36635) (Cons!36634 (h!38081 tuple2!25264) (t!51478 List!36638)) )
))
(declare-datatypes ((ListLongMap!22711 0))(
  ( (ListLongMap!22712 (toList!11371 List!36638)) )
))
(declare-fun lt!671567 () ListLongMap!22711)

(declare-fun contains!10291 (ListLongMap!22711 (_ BitVec 64)) Bool)

(assert (=> b!1562282 (= lt!671568 (contains!10291 lt!671567 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562282 (not (contains!10291 lt!671567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671570 () V!59819)

(declare-fun lt!671569 () ListLongMap!22711)

(declare-fun +!5025 (ListLongMap!22711 tuple2!25264) ListLongMap!22711)

(assert (=> b!1562282 (= lt!671567 (+!5025 lt!671569 (tuple2!25265 (select (arr!50230 _keys!637) from!782) lt!671570)))))

(declare-datatypes ((Unit!51914 0))(
  ( (Unit!51915) )
))
(declare-fun lt!671571 () Unit!51914)

(declare-fun addStillNotContains!561 (ListLongMap!22711 (_ BitVec 64) V!59819 (_ BitVec 64)) Unit!51914)

(assert (=> b!1562282 (= lt!671571 (addStillNotContains!561 lt!671569 (select (arr!50230 _keys!637) from!782) lt!671570 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26279 (ValueCell!18324 V!59819) V!59819)

(declare-fun dynLambda!3914 (Int (_ BitVec 64)) V!59819)

(assert (=> b!1562282 (= lt!671570 (get!26279 (select (arr!50231 _values!487) from!782) (dynLambda!3914 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59819)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59819)

(declare-fun getCurrentListMapNoExtraKeys!6731 (array!104085 array!104087 (_ BitVec 32) (_ BitVec 32) V!59819 V!59819 (_ BitVec 32) Int) ListLongMap!22711)

(assert (=> b!1562282 (= lt!671569 (getCurrentListMapNoExtraKeys!6731 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1562283 () Bool)

(declare-fun res!1068243 () Bool)

(assert (=> b!1562283 (=> (not res!1068243) (not e!870607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104085 (_ BitVec 32)) Bool)

(assert (=> b!1562283 (= res!1068243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562284 () Bool)

(declare-fun e!870608 () Bool)

(declare-fun mapRes!59439 () Bool)

(assert (=> b!1562284 (= e!870609 (and e!870608 mapRes!59439))))

(declare-fun condMapEmpty!59439 () Bool)

(declare-fun mapDefault!59439 () ValueCell!18324)

(assert (=> b!1562284 (= condMapEmpty!59439 (= (arr!50231 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18324)) mapDefault!59439)))))

(declare-fun b!1562285 () Bool)

(declare-fun res!1068244 () Bool)

(assert (=> b!1562285 (=> (not res!1068244) (not e!870607))))

(assert (=> b!1562285 (= res!1068244 (and (= (size!50782 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50781 _keys!637) (size!50782 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562286 () Bool)

(declare-fun res!1068242 () Bool)

(assert (=> b!1562286 (=> (not res!1068242) (not e!870607))))

(declare-datatypes ((List!36639 0))(
  ( (Nil!36636) (Cons!36635 (h!38082 (_ BitVec 64)) (t!51479 List!36639)) )
))
(declare-fun arrayNoDuplicates!0 (array!104085 (_ BitVec 32) List!36639) Bool)

(assert (=> b!1562286 (= res!1068242 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36636))))

(declare-fun mapIsEmpty!59439 () Bool)

(assert (=> mapIsEmpty!59439 mapRes!59439))

(declare-fun b!1562287 () Bool)

(declare-fun res!1068245 () Bool)

(assert (=> b!1562287 (=> (not res!1068245) (not e!870607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562287 (= res!1068245 (validKeyInArray!0 (select (arr!50230 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59439 () Bool)

(declare-fun tp!113254 () Bool)

(declare-fun e!870611 () Bool)

(assert (=> mapNonEmpty!59439 (= mapRes!59439 (and tp!113254 e!870611))))

(declare-fun mapKey!59439 () (_ BitVec 32))

(declare-fun mapValue!59439 () ValueCell!18324)

(declare-fun mapRest!59439 () (Array (_ BitVec 32) ValueCell!18324))

(assert (=> mapNonEmpty!59439 (= (arr!50231 _values!487) (store mapRest!59439 mapKey!59439 mapValue!59439))))

(declare-fun b!1562288 () Bool)

(assert (=> b!1562288 (= e!870611 tp_is_empty!38709)))

(declare-fun b!1562289 () Bool)

(assert (=> b!1562289 (= e!870608 tp_is_empty!38709)))

(assert (= (and start!133658 res!1068240) b!1562285))

(assert (= (and b!1562285 res!1068244) b!1562283))

(assert (= (and b!1562283 res!1068243) b!1562286))

(assert (= (and b!1562286 res!1068242) b!1562281))

(assert (= (and b!1562281 res!1068241) b!1562287))

(assert (= (and b!1562287 res!1068245) b!1562282))

(assert (= (and b!1562284 condMapEmpty!59439) mapIsEmpty!59439))

(assert (= (and b!1562284 (not condMapEmpty!59439)) mapNonEmpty!59439))

(get-info :version)

(assert (= (and mapNonEmpty!59439 ((_ is ValueCellFull!18324) mapValue!59439)) b!1562288))

(assert (= (and b!1562284 ((_ is ValueCellFull!18324) mapDefault!59439)) b!1562289))

(assert (= start!133658 b!1562284))

(declare-fun b_lambda!24927 () Bool)

(assert (=> (not b_lambda!24927) (not b!1562282)))

(declare-fun t!51477 () Bool)

(declare-fun tb!12595 () Bool)

(assert (=> (and start!133658 (= defaultEntry!495 defaultEntry!495) t!51477) tb!12595))

(declare-fun result!26463 () Bool)

(assert (=> tb!12595 (= result!26463 tp_is_empty!38709)))

(assert (=> b!1562282 t!51477))

(declare-fun b_and!51609 () Bool)

(assert (= b_and!51607 (and (=> t!51477 result!26463) b_and!51609)))

(declare-fun m!1438083 () Bool)

(assert (=> b!1562283 m!1438083))

(declare-fun m!1438085 () Bool)

(assert (=> b!1562287 m!1438085))

(assert (=> b!1562287 m!1438085))

(declare-fun m!1438087 () Bool)

(assert (=> b!1562287 m!1438087))

(declare-fun m!1438089 () Bool)

(assert (=> b!1562286 m!1438089))

(declare-fun m!1438091 () Bool)

(assert (=> start!133658 m!1438091))

(declare-fun m!1438093 () Bool)

(assert (=> start!133658 m!1438093))

(declare-fun m!1438095 () Bool)

(assert (=> start!133658 m!1438095))

(declare-fun m!1438097 () Bool)

(assert (=> mapNonEmpty!59439 m!1438097))

(declare-fun m!1438099 () Bool)

(assert (=> b!1562282 m!1438099))

(declare-fun m!1438101 () Bool)

(assert (=> b!1562282 m!1438101))

(declare-fun m!1438103 () Bool)

(assert (=> b!1562282 m!1438103))

(declare-fun m!1438105 () Bool)

(assert (=> b!1562282 m!1438105))

(declare-fun m!1438107 () Bool)

(assert (=> b!1562282 m!1438107))

(assert (=> b!1562282 m!1438085))

(assert (=> b!1562282 m!1438085))

(declare-fun m!1438109 () Bool)

(assert (=> b!1562282 m!1438109))

(assert (=> b!1562282 m!1438101))

(declare-fun m!1438111 () Bool)

(assert (=> b!1562282 m!1438111))

(assert (=> b!1562282 m!1438099))

(declare-fun m!1438113 () Bool)

(assert (=> b!1562282 m!1438113))

(check-sat (not b!1562286) (not b_next!32043) (not b!1562283) b_and!51609 tp_is_empty!38709 (not b!1562287) (not b!1562282) (not mapNonEmpty!59439) (not start!133658) (not b_lambda!24927))
(check-sat b_and!51609 (not b_next!32043))
