; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97960 () Bool)

(assert start!97960)

(declare-fun b_free!23625 () Bool)

(declare-fun b_next!23625 () Bool)

(assert (=> start!97960 (= b_free!23625 (not b_next!23625))))

(declare-fun tp!83579 () Bool)

(declare-fun b_and!38055 () Bool)

(assert (=> start!97960 (= tp!83579 b_and!38055)))

(declare-datatypes ((V!42667 0))(
  ( (V!42668 (val!14134 Int)) )
))
(declare-fun zeroValue!944 () V!42667)

(declare-fun bm!47155 () Bool)

(declare-datatypes ((array!73136 0))(
  ( (array!73137 (arr!35217 (Array (_ BitVec 32) (_ BitVec 64))) (size!35754 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73136)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17808 0))(
  ( (tuple2!17809 (_1!8914 (_ BitVec 64)) (_2!8914 V!42667)) )
))
(declare-datatypes ((List!24646 0))(
  ( (Nil!24643) (Cons!24642 (h!25851 tuple2!17808) (t!35270 List!24646)) )
))
(declare-datatypes ((ListLongMap!15789 0))(
  ( (ListLongMap!15790 (toList!7910 List!24646)) )
))
(declare-fun call!47159 () ListLongMap!15789)

(declare-datatypes ((ValueCell!13368 0))(
  ( (ValueCellFull!13368 (v!16768 V!42667)) (EmptyCell!13368) )
))
(declare-datatypes ((array!73138 0))(
  ( (array!73139 (arr!35218 (Array (_ BitVec 32) ValueCell!13368)) (size!35755 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73138)

(declare-fun minValue!944 () V!42667)

(declare-fun getCurrentListMapNoExtraKeys!4371 (array!73136 array!73138 (_ BitVec 32) (_ BitVec 32) V!42667 V!42667 (_ BitVec 32) Int) ListLongMap!15789)

(assert (=> bm!47155 (= call!47159 (getCurrentListMapNoExtraKeys!4371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121879 () Bool)

(declare-fun e!638781 () Bool)

(declare-fun tp_is_empty!28155 () Bool)

(assert (=> b!1121879 (= e!638781 tp_is_empty!28155)))

(declare-fun b!1121880 () Bool)

(declare-fun res!749567 () Bool)

(declare-fun e!638783 () Bool)

(assert (=> b!1121880 (=> (not res!749567) (not e!638783))))

(declare-datatypes ((List!24647 0))(
  ( (Nil!24644) (Cons!24643 (h!25852 (_ BitVec 64)) (t!35271 List!24647)) )
))
(declare-fun arrayNoDuplicates!0 (array!73136 (_ BitVec 32) List!24647) Bool)

(assert (=> b!1121880 (= res!749567 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24644))))

(declare-fun mapNonEmpty!44050 () Bool)

(declare-fun mapRes!44050 () Bool)

(declare-fun tp!83580 () Bool)

(assert (=> mapNonEmpty!44050 (= mapRes!44050 (and tp!83580 e!638781))))

(declare-fun mapRest!44050 () (Array (_ BitVec 32) ValueCell!13368))

(declare-fun mapKey!44050 () (_ BitVec 32))

(declare-fun mapValue!44050 () ValueCell!13368)

(assert (=> mapNonEmpty!44050 (= (arr!35218 _values!996) (store mapRest!44050 mapKey!44050 mapValue!44050))))

(declare-fun call!47158 () ListLongMap!15789)

(declare-fun lt!498497 () array!73138)

(declare-fun lt!498498 () array!73136)

(declare-fun bm!47156 () Bool)

(assert (=> bm!47156 (= call!47158 (getCurrentListMapNoExtraKeys!4371 lt!498498 lt!498497 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121881 () Bool)

(declare-fun e!638778 () Bool)

(assert (=> b!1121881 (= e!638778 tp_is_empty!28155)))

(declare-fun b!1121882 () Bool)

(declare-fun e!638779 () Bool)

(declare-fun e!638785 () Bool)

(assert (=> b!1121882 (= e!638779 e!638785)))

(declare-fun res!749568 () Bool)

(assert (=> b!1121882 (=> res!749568 e!638785)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121882 (= res!749568 (not (= from!1455 i!673)))))

(declare-fun lt!498496 () ListLongMap!15789)

(assert (=> b!1121882 (= lt!498496 (getCurrentListMapNoExtraKeys!4371 lt!498498 lt!498497 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2470 (Int (_ BitVec 64)) V!42667)

(assert (=> b!1121882 (= lt!498497 (array!73139 (store (arr!35218 _values!996) i!673 (ValueCellFull!13368 (dynLambda!2470 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35755 _values!996)))))

(declare-fun lt!498495 () ListLongMap!15789)

(assert (=> b!1121882 (= lt!498495 (getCurrentListMapNoExtraKeys!4371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121884 () Bool)

(declare-fun e!638784 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1074 (ListLongMap!15789 (_ BitVec 64)) ListLongMap!15789)

(assert (=> b!1121884 (= e!638784 (= call!47158 (-!1074 call!47159 k0!934)))))

(declare-fun b!1121885 () Bool)

(declare-fun e!638780 () Bool)

(assert (=> b!1121885 (= e!638783 e!638780)))

(declare-fun res!749565 () Bool)

(assert (=> b!1121885 (=> (not res!749565) (not e!638780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73136 (_ BitVec 32)) Bool)

(assert (=> b!1121885 (= res!749565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498498 mask!1564))))

(assert (=> b!1121885 (= lt!498498 (array!73137 (store (arr!35217 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35754 _keys!1208)))))

(declare-fun b!1121886 () Bool)

(declare-fun res!749566 () Bool)

(assert (=> b!1121886 (=> (not res!749566) (not e!638783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121886 (= res!749566 (validKeyInArray!0 k0!934))))

(declare-fun b!1121887 () Bool)

(declare-fun res!749574 () Bool)

(assert (=> b!1121887 (=> (not res!749574) (not e!638783))))

(assert (=> b!1121887 (= res!749574 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35754 _keys!1208))))))

(declare-fun b!1121888 () Bool)

(declare-fun res!749563 () Bool)

(assert (=> b!1121888 (=> (not res!749563) (not e!638783))))

(assert (=> b!1121888 (= res!749563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121889 () Bool)

(declare-fun res!749570 () Bool)

(assert (=> b!1121889 (=> (not res!749570) (not e!638783))))

(assert (=> b!1121889 (= res!749570 (and (= (size!35755 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35754 _keys!1208) (size!35755 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121890 () Bool)

(declare-fun e!638786 () Bool)

(assert (=> b!1121890 (= e!638786 (and e!638778 mapRes!44050))))

(declare-fun condMapEmpty!44050 () Bool)

(declare-fun mapDefault!44050 () ValueCell!13368)

(assert (=> b!1121890 (= condMapEmpty!44050 (= (arr!35218 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13368)) mapDefault!44050)))))

(declare-fun mapIsEmpty!44050 () Bool)

(assert (=> mapIsEmpty!44050 mapRes!44050))

(declare-fun b!1121891 () Bool)

(declare-fun res!749572 () Bool)

(assert (=> b!1121891 (=> (not res!749572) (not e!638783))))

(assert (=> b!1121891 (= res!749572 (= (select (arr!35217 _keys!1208) i!673) k0!934))))

(declare-fun res!749571 () Bool)

(assert (=> start!97960 (=> (not res!749571) (not e!638783))))

(assert (=> start!97960 (= res!749571 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35754 _keys!1208))))))

(assert (=> start!97960 e!638783))

(assert (=> start!97960 tp_is_empty!28155))

(declare-fun array_inv!26920 (array!73136) Bool)

(assert (=> start!97960 (array_inv!26920 _keys!1208)))

(assert (=> start!97960 true))

(assert (=> start!97960 tp!83579))

(declare-fun array_inv!26921 (array!73138) Bool)

(assert (=> start!97960 (and (array_inv!26921 _values!996) e!638786)))

(declare-fun b!1121883 () Bool)

(declare-fun res!749573 () Bool)

(assert (=> b!1121883 (=> (not res!749573) (not e!638780))))

(assert (=> b!1121883 (= res!749573 (arrayNoDuplicates!0 lt!498498 #b00000000000000000000000000000000 Nil!24644))))

(declare-fun b!1121892 () Bool)

(assert (=> b!1121892 (= e!638780 (not e!638779))))

(declare-fun res!749569 () Bool)

(assert (=> b!1121892 (=> res!749569 e!638779)))

(assert (=> b!1121892 (= res!749569 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121892 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36733 0))(
  ( (Unit!36734) )
))
(declare-fun lt!498494 () Unit!36733)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73136 (_ BitVec 64) (_ BitVec 32)) Unit!36733)

(assert (=> b!1121892 (= lt!498494 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1121893 () Bool)

(assert (=> b!1121893 (= e!638785 (or (not (= (select (arr!35217 _keys!1208) from!1455) k0!934)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!35754 _keys!1208)))))))

(assert (=> b!1121893 e!638784))

(declare-fun c!109388 () Bool)

(assert (=> b!1121893 (= c!109388 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498493 () Unit!36733)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!328 (array!73136 array!73138 (_ BitVec 32) (_ BitVec 32) V!42667 V!42667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36733)

(assert (=> b!1121893 (= lt!498493 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!328 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121894 () Bool)

(declare-fun res!749564 () Bool)

(assert (=> b!1121894 (=> (not res!749564) (not e!638783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121894 (= res!749564 (validMask!0 mask!1564))))

(declare-fun b!1121895 () Bool)

(assert (=> b!1121895 (= e!638784 (= call!47158 call!47159))))

(assert (= (and start!97960 res!749571) b!1121894))

(assert (= (and b!1121894 res!749564) b!1121889))

(assert (= (and b!1121889 res!749570) b!1121888))

(assert (= (and b!1121888 res!749563) b!1121880))

(assert (= (and b!1121880 res!749567) b!1121887))

(assert (= (and b!1121887 res!749574) b!1121886))

(assert (= (and b!1121886 res!749566) b!1121891))

(assert (= (and b!1121891 res!749572) b!1121885))

(assert (= (and b!1121885 res!749565) b!1121883))

(assert (= (and b!1121883 res!749573) b!1121892))

(assert (= (and b!1121892 (not res!749569)) b!1121882))

(assert (= (and b!1121882 (not res!749568)) b!1121893))

(assert (= (and b!1121893 c!109388) b!1121884))

(assert (= (and b!1121893 (not c!109388)) b!1121895))

(assert (= (or b!1121884 b!1121895) bm!47156))

(assert (= (or b!1121884 b!1121895) bm!47155))

(assert (= (and b!1121890 condMapEmpty!44050) mapIsEmpty!44050))

(assert (= (and b!1121890 (not condMapEmpty!44050)) mapNonEmpty!44050))

(get-info :version)

(assert (= (and mapNonEmpty!44050 ((_ is ValueCellFull!13368) mapValue!44050)) b!1121879))

(assert (= (and b!1121890 ((_ is ValueCellFull!13368) mapDefault!44050)) b!1121881))

(assert (= start!97960 b!1121890))

(declare-fun b_lambda!18629 () Bool)

(assert (=> (not b_lambda!18629) (not b!1121882)))

(declare-fun t!35269 () Bool)

(declare-fun tb!8445 () Bool)

(assert (=> (and start!97960 (= defaultEntry!1004 defaultEntry!1004) t!35269) tb!8445))

(declare-fun result!17443 () Bool)

(assert (=> tb!8445 (= result!17443 tp_is_empty!28155)))

(assert (=> b!1121882 t!35269))

(declare-fun b_and!38057 () Bool)

(assert (= b_and!38055 (and (=> t!35269 result!17443) b_and!38057)))

(declare-fun m!1036737 () Bool)

(assert (=> start!97960 m!1036737))

(declare-fun m!1036739 () Bool)

(assert (=> start!97960 m!1036739))

(declare-fun m!1036741 () Bool)

(assert (=> b!1121883 m!1036741))

(declare-fun m!1036743 () Bool)

(assert (=> b!1121884 m!1036743))

(declare-fun m!1036745 () Bool)

(assert (=> b!1121882 m!1036745))

(declare-fun m!1036747 () Bool)

(assert (=> b!1121882 m!1036747))

(declare-fun m!1036749 () Bool)

(assert (=> b!1121882 m!1036749))

(declare-fun m!1036751 () Bool)

(assert (=> b!1121882 m!1036751))

(declare-fun m!1036753 () Bool)

(assert (=> b!1121891 m!1036753))

(declare-fun m!1036755 () Bool)

(assert (=> b!1121893 m!1036755))

(declare-fun m!1036757 () Bool)

(assert (=> b!1121893 m!1036757))

(declare-fun m!1036759 () Bool)

(assert (=> b!1121892 m!1036759))

(declare-fun m!1036761 () Bool)

(assert (=> b!1121892 m!1036761))

(declare-fun m!1036763 () Bool)

(assert (=> b!1121888 m!1036763))

(declare-fun m!1036765 () Bool)

(assert (=> b!1121894 m!1036765))

(declare-fun m!1036767 () Bool)

(assert (=> b!1121880 m!1036767))

(declare-fun m!1036769 () Bool)

(assert (=> bm!47155 m!1036769))

(declare-fun m!1036771 () Bool)

(assert (=> bm!47156 m!1036771))

(declare-fun m!1036773 () Bool)

(assert (=> b!1121885 m!1036773))

(declare-fun m!1036775 () Bool)

(assert (=> b!1121885 m!1036775))

(declare-fun m!1036777 () Bool)

(assert (=> b!1121886 m!1036777))

(declare-fun m!1036779 () Bool)

(assert (=> mapNonEmpty!44050 m!1036779))

(check-sat (not b!1121885) (not start!97960) tp_is_empty!28155 (not b!1121892) (not b!1121880) (not b_lambda!18629) (not b!1121888) (not b!1121882) (not bm!47155) (not b!1121884) (not b!1121893) b_and!38057 (not b!1121894) (not mapNonEmpty!44050) (not b!1121883) (not b_next!23625) (not b!1121886) (not bm!47156))
(check-sat b_and!38057 (not b_next!23625))
