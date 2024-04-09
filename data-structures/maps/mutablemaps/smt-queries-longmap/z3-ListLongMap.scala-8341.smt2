; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101568 () Bool)

(assert start!101568)

(declare-fun b_free!26319 () Bool)

(declare-fun b_next!26319 () Bool)

(assert (=> start!101568 (= b_free!26319 (not b_next!26319))))

(declare-fun tp!91994 () Bool)

(declare-fun b_and!43855 () Bool)

(assert (=> start!101568 (= tp!91994 b_and!43855)))

(declare-fun b!1220684 () Bool)

(declare-fun res!810980 () Bool)

(declare-fun e!693200 () Bool)

(assert (=> b!1220684 (=> (not res!810980) (not e!693200))))

(declare-datatypes ((array!78800 0))(
  ( (array!78801 (arr!38026 (Array (_ BitVec 32) (_ BitVec 64))) (size!38563 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78800)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1220684 (= res!810980 (= (select (arr!38026 _keys!1208) i!673) k0!934))))

(declare-fun b!1220685 () Bool)

(declare-fun e!693201 () Bool)

(declare-fun tp_is_empty!31023 () Bool)

(assert (=> b!1220685 (= e!693201 tp_is_empty!31023)))

(declare-fun b!1220686 () Bool)

(declare-fun e!693204 () Bool)

(declare-fun e!693202 () Bool)

(assert (=> b!1220686 (= e!693204 e!693202)))

(declare-fun res!810987 () Bool)

(assert (=> b!1220686 (=> res!810987 e!693202)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220686 (= res!810987 (not (validKeyInArray!0 (select (arr!38026 _keys!1208) from!1455))))))

(declare-datatypes ((V!46491 0))(
  ( (V!46492 (val!15568 Int)) )
))
(declare-datatypes ((tuple2!20180 0))(
  ( (tuple2!20181 (_1!10100 (_ BitVec 64)) (_2!10100 V!46491)) )
))
(declare-datatypes ((List!26996 0))(
  ( (Nil!26993) (Cons!26992 (h!28201 tuple2!20180) (t!40302 List!26996)) )
))
(declare-datatypes ((ListLongMap!18161 0))(
  ( (ListLongMap!18162 (toList!9096 List!26996)) )
))
(declare-fun lt!555143 () ListLongMap!18161)

(declare-fun lt!555142 () ListLongMap!18161)

(assert (=> b!1220686 (= lt!555143 lt!555142)))

(declare-fun lt!555136 () ListLongMap!18161)

(declare-fun -!1942 (ListLongMap!18161 (_ BitVec 64)) ListLongMap!18161)

(assert (=> b!1220686 (= lt!555142 (-!1942 lt!555136 k0!934))))

(declare-fun zeroValue!944 () V!46491)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!555145 () array!78800)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14802 0))(
  ( (ValueCellFull!14802 (v!18227 V!46491)) (EmptyCell!14802) )
))
(declare-datatypes ((array!78802 0))(
  ( (array!78803 (arr!38027 (Array (_ BitVec 32) ValueCell!14802)) (size!38564 (_ BitVec 32))) )
))
(declare-fun lt!555135 () array!78802)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46491)

(declare-fun getCurrentListMapNoExtraKeys!5494 (array!78800 array!78802 (_ BitVec 32) (_ BitVec 32) V!46491 V!46491 (_ BitVec 32) Int) ListLongMap!18161)

(assert (=> b!1220686 (= lt!555143 (getCurrentListMapNoExtraKeys!5494 lt!555145 lt!555135 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78802)

(assert (=> b!1220686 (= lt!555136 (getCurrentListMapNoExtraKeys!5494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40360 0))(
  ( (Unit!40361) )
))
(declare-fun lt!555146 () Unit!40360)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1144 (array!78800 array!78802 (_ BitVec 32) (_ BitVec 32) V!46491 V!46491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40360)

(assert (=> b!1220686 (= lt!555146 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1144 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220687 () Bool)

(declare-fun res!810993 () Bool)

(assert (=> b!1220687 (=> (not res!810993) (not e!693200))))

(declare-datatypes ((List!26997 0))(
  ( (Nil!26994) (Cons!26993 (h!28202 (_ BitVec 64)) (t!40303 List!26997)) )
))
(declare-fun arrayNoDuplicates!0 (array!78800 (_ BitVec 32) List!26997) Bool)

(assert (=> b!1220687 (= res!810993 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26994))))

(declare-fun b!1220688 () Bool)

(declare-fun e!693207 () Bool)

(assert (=> b!1220688 (= e!693207 e!693204)))

(declare-fun res!810984 () Bool)

(assert (=> b!1220688 (=> res!810984 e!693204)))

(assert (=> b!1220688 (= res!810984 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!555139 () ListLongMap!18161)

(assert (=> b!1220688 (= lt!555139 (getCurrentListMapNoExtraKeys!5494 lt!555145 lt!555135 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555140 () V!46491)

(assert (=> b!1220688 (= lt!555135 (array!78803 (store (arr!38027 _values!996) i!673 (ValueCellFull!14802 lt!555140)) (size!38564 _values!996)))))

(declare-fun dynLambda!3396 (Int (_ BitVec 64)) V!46491)

(assert (=> b!1220688 (= lt!555140 (dynLambda!3396 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555141 () ListLongMap!18161)

(assert (=> b!1220688 (= lt!555141 (getCurrentListMapNoExtraKeys!5494 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220689 () Bool)

(declare-fun res!810981 () Bool)

(assert (=> b!1220689 (=> (not res!810981) (not e!693200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220689 (= res!810981 (validMask!0 mask!1564))))

(declare-fun res!810983 () Bool)

(assert (=> start!101568 (=> (not res!810983) (not e!693200))))

(assert (=> start!101568 (= res!810983 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38563 _keys!1208))))))

(assert (=> start!101568 e!693200))

(assert (=> start!101568 tp_is_empty!31023))

(declare-fun array_inv!28850 (array!78800) Bool)

(assert (=> start!101568 (array_inv!28850 _keys!1208)))

(assert (=> start!101568 true))

(assert (=> start!101568 tp!91994))

(declare-fun e!693210 () Bool)

(declare-fun array_inv!28851 (array!78802) Bool)

(assert (=> start!101568 (and (array_inv!28851 _values!996) e!693210)))

(declare-fun b!1220690 () Bool)

(declare-fun e!693206 () Bool)

(declare-fun mapRes!48424 () Bool)

(assert (=> b!1220690 (= e!693210 (and e!693206 mapRes!48424))))

(declare-fun condMapEmpty!48424 () Bool)

(declare-fun mapDefault!48424 () ValueCell!14802)

(assert (=> b!1220690 (= condMapEmpty!48424 (= (arr!38027 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14802)) mapDefault!48424)))))

(declare-fun b!1220691 () Bool)

(declare-fun res!810985 () Bool)

(assert (=> b!1220691 (=> (not res!810985) (not e!693200))))

(assert (=> b!1220691 (= res!810985 (validKeyInArray!0 k0!934))))

(declare-fun b!1220692 () Bool)

(declare-fun e!693208 () Bool)

(assert (=> b!1220692 (= e!693208 (not e!693207))))

(declare-fun res!810994 () Bool)

(assert (=> b!1220692 (=> res!810994 e!693207)))

(assert (=> b!1220692 (= res!810994 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220692 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555144 () Unit!40360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78800 (_ BitVec 64) (_ BitVec 32)) Unit!40360)

(assert (=> b!1220692 (= lt!555144 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220693 () Bool)

(declare-fun e!693203 () Bool)

(assert (=> b!1220693 (= e!693203 (or (bvsge (size!38563 _keys!1208) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38563 _keys!1208))))))

(assert (=> b!1220693 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26994)))

(declare-fun lt!555138 () Unit!40360)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78800 (_ BitVec 32) (_ BitVec 32)) Unit!40360)

(assert (=> b!1220693 (= lt!555138 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220693 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555137 () Unit!40360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78800 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40360)

(assert (=> b!1220693 (= lt!555137 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220694 () Bool)

(declare-fun res!810991 () Bool)

(assert (=> b!1220694 (=> (not res!810991) (not e!693200))))

(assert (=> b!1220694 (= res!810991 (and (= (size!38564 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38563 _keys!1208) (size!38564 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1220695 () Bool)

(declare-fun res!810982 () Bool)

(assert (=> b!1220695 (=> (not res!810982) (not e!693208))))

(assert (=> b!1220695 (= res!810982 (arrayNoDuplicates!0 lt!555145 #b00000000000000000000000000000000 Nil!26994))))

(declare-fun mapNonEmpty!48424 () Bool)

(declare-fun tp!91995 () Bool)

(assert (=> mapNonEmpty!48424 (= mapRes!48424 (and tp!91995 e!693201))))

(declare-fun mapValue!48424 () ValueCell!14802)

(declare-fun mapKey!48424 () (_ BitVec 32))

(declare-fun mapRest!48424 () (Array (_ BitVec 32) ValueCell!14802))

(assert (=> mapNonEmpty!48424 (= (arr!38027 _values!996) (store mapRest!48424 mapKey!48424 mapValue!48424))))

(declare-fun b!1220696 () Bool)

(declare-fun e!693209 () Bool)

(declare-fun e!693205 () Bool)

(assert (=> b!1220696 (= e!693209 e!693205)))

(declare-fun res!810992 () Bool)

(assert (=> b!1220696 (=> res!810992 e!693205)))

(assert (=> b!1220696 (= res!810992 (not (= (select (arr!38026 _keys!1208) from!1455) k0!934)))))

(declare-fun mapIsEmpty!48424 () Bool)

(assert (=> mapIsEmpty!48424 mapRes!48424))

(declare-fun b!1220697 () Bool)

(declare-fun res!810990 () Bool)

(assert (=> b!1220697 (=> (not res!810990) (not e!693200))))

(assert (=> b!1220697 (= res!810990 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38563 _keys!1208))))))

(declare-fun b!1220698 () Bool)

(assert (=> b!1220698 (= e!693205 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220699 () Bool)

(declare-fun res!810989 () Bool)

(assert (=> b!1220699 (=> (not res!810989) (not e!693200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78800 (_ BitVec 32)) Bool)

(assert (=> b!1220699 (= res!810989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220700 () Bool)

(assert (=> b!1220700 (= e!693200 e!693208)))

(declare-fun res!810988 () Bool)

(assert (=> b!1220700 (=> (not res!810988) (not e!693208))))

(assert (=> b!1220700 (= res!810988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555145 mask!1564))))

(assert (=> b!1220700 (= lt!555145 (array!78801 (store (arr!38026 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38563 _keys!1208)))))

(declare-fun b!1220701 () Bool)

(assert (=> b!1220701 (= e!693206 tp_is_empty!31023)))

(declare-fun b!1220702 () Bool)

(assert (=> b!1220702 (= e!693202 e!693203)))

(declare-fun res!810986 () Bool)

(assert (=> b!1220702 (=> res!810986 e!693203)))

(assert (=> b!1220702 (= res!810986 (not (= (select (arr!38026 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1220702 e!693209))

(declare-fun res!810995 () Bool)

(assert (=> b!1220702 (=> (not res!810995) (not e!693209))))

(declare-fun +!4069 (ListLongMap!18161 tuple2!20180) ListLongMap!18161)

(declare-fun get!19443 (ValueCell!14802 V!46491) V!46491)

(assert (=> b!1220702 (= res!810995 (= lt!555139 (+!4069 lt!555142 (tuple2!20181 (select (arr!38026 _keys!1208) from!1455) (get!19443 (select (arr!38027 _values!996) from!1455) lt!555140)))))))

(assert (= (and start!101568 res!810983) b!1220689))

(assert (= (and b!1220689 res!810981) b!1220694))

(assert (= (and b!1220694 res!810991) b!1220699))

(assert (= (and b!1220699 res!810989) b!1220687))

(assert (= (and b!1220687 res!810993) b!1220697))

(assert (= (and b!1220697 res!810990) b!1220691))

(assert (= (and b!1220691 res!810985) b!1220684))

(assert (= (and b!1220684 res!810980) b!1220700))

(assert (= (and b!1220700 res!810988) b!1220695))

(assert (= (and b!1220695 res!810982) b!1220692))

(assert (= (and b!1220692 (not res!810994)) b!1220688))

(assert (= (and b!1220688 (not res!810984)) b!1220686))

(assert (= (and b!1220686 (not res!810987)) b!1220702))

(assert (= (and b!1220702 res!810995) b!1220696))

(assert (= (and b!1220696 (not res!810992)) b!1220698))

(assert (= (and b!1220702 (not res!810986)) b!1220693))

(assert (= (and b!1220690 condMapEmpty!48424) mapIsEmpty!48424))

(assert (= (and b!1220690 (not condMapEmpty!48424)) mapNonEmpty!48424))

(get-info :version)

(assert (= (and mapNonEmpty!48424 ((_ is ValueCellFull!14802) mapValue!48424)) b!1220685))

(assert (= (and b!1220690 ((_ is ValueCellFull!14802) mapDefault!48424)) b!1220701))

(assert (= start!101568 b!1220690))

(declare-fun b_lambda!22195 () Bool)

(assert (=> (not b_lambda!22195) (not b!1220688)))

(declare-fun t!40301 () Bool)

(declare-fun tb!11127 () Bool)

(assert (=> (and start!101568 (= defaultEntry!1004 defaultEntry!1004) t!40301) tb!11127))

(declare-fun result!22853 () Bool)

(assert (=> tb!11127 (= result!22853 tp_is_empty!31023)))

(assert (=> b!1220688 t!40301))

(declare-fun b_and!43857 () Bool)

(assert (= b_and!43855 (and (=> t!40301 result!22853) b_and!43857)))

(declare-fun m!1125559 () Bool)

(assert (=> b!1220691 m!1125559))

(declare-fun m!1125561 () Bool)

(assert (=> b!1220699 m!1125561))

(declare-fun m!1125563 () Bool)

(assert (=> mapNonEmpty!48424 m!1125563))

(declare-fun m!1125565 () Bool)

(assert (=> b!1220693 m!1125565))

(declare-fun m!1125567 () Bool)

(assert (=> b!1220693 m!1125567))

(declare-fun m!1125569 () Bool)

(assert (=> b!1220693 m!1125569))

(declare-fun m!1125571 () Bool)

(assert (=> b!1220693 m!1125571))

(declare-fun m!1125573 () Bool)

(assert (=> b!1220698 m!1125573))

(declare-fun m!1125575 () Bool)

(assert (=> start!101568 m!1125575))

(declare-fun m!1125577 () Bool)

(assert (=> start!101568 m!1125577))

(declare-fun m!1125579 () Bool)

(assert (=> b!1220696 m!1125579))

(assert (=> b!1220702 m!1125579))

(declare-fun m!1125581 () Bool)

(assert (=> b!1220702 m!1125581))

(assert (=> b!1220702 m!1125581))

(declare-fun m!1125583 () Bool)

(assert (=> b!1220702 m!1125583))

(declare-fun m!1125585 () Bool)

(assert (=> b!1220702 m!1125585))

(declare-fun m!1125587 () Bool)

(assert (=> b!1220692 m!1125587))

(declare-fun m!1125589 () Bool)

(assert (=> b!1220692 m!1125589))

(declare-fun m!1125591 () Bool)

(assert (=> b!1220700 m!1125591))

(declare-fun m!1125593 () Bool)

(assert (=> b!1220700 m!1125593))

(declare-fun m!1125595 () Bool)

(assert (=> b!1220689 m!1125595))

(declare-fun m!1125597 () Bool)

(assert (=> b!1220686 m!1125597))

(declare-fun m!1125599 () Bool)

(assert (=> b!1220686 m!1125599))

(declare-fun m!1125601 () Bool)

(assert (=> b!1220686 m!1125601))

(declare-fun m!1125603 () Bool)

(assert (=> b!1220686 m!1125603))

(assert (=> b!1220686 m!1125579))

(declare-fun m!1125605 () Bool)

(assert (=> b!1220686 m!1125605))

(assert (=> b!1220686 m!1125579))

(declare-fun m!1125607 () Bool)

(assert (=> b!1220688 m!1125607))

(declare-fun m!1125609 () Bool)

(assert (=> b!1220688 m!1125609))

(declare-fun m!1125611 () Bool)

(assert (=> b!1220688 m!1125611))

(declare-fun m!1125613 () Bool)

(assert (=> b!1220688 m!1125613))

(declare-fun m!1125615 () Bool)

(assert (=> b!1220695 m!1125615))

(declare-fun m!1125617 () Bool)

(assert (=> b!1220687 m!1125617))

(declare-fun m!1125619 () Bool)

(assert (=> b!1220684 m!1125619))

(check-sat (not b!1220689) (not b!1220695) (not b!1220691) (not mapNonEmpty!48424) (not b!1220686) (not start!101568) (not b_next!26319) (not b!1220702) (not b!1220699) b_and!43857 tp_is_empty!31023 (not b_lambda!22195) (not b!1220692) (not b!1220700) (not b!1220687) (not b!1220698) (not b!1220693) (not b!1220688))
(check-sat b_and!43857 (not b_next!26319))
