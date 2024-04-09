; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99942 () Bool)

(assert start!99942)

(declare-fun b_free!25485 () Bool)

(declare-fun b_next!25485 () Bool)

(assert (=> start!99942 (= b_free!25485 (not b_next!25485))))

(declare-fun tp!89169 () Bool)

(declare-fun b_and!41851 () Bool)

(assert (=> start!99942 (= tp!89169 b_and!41851)))

(declare-fun b!1189007 () Bool)

(declare-fun res!790712 () Bool)

(declare-fun e!676068 () Bool)

(assert (=> b!1189007 (=> (not res!790712) (not e!676068))))

(declare-datatypes ((array!76796 0))(
  ( (array!76797 (arr!37044 (Array (_ BitVec 32) (_ BitVec 64))) (size!37581 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76796)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45147 0))(
  ( (V!45148 (val!15064 Int)) )
))
(declare-datatypes ((ValueCell!14298 0))(
  ( (ValueCellFull!14298 (v!17703 V!45147)) (EmptyCell!14298) )
))
(declare-datatypes ((array!76798 0))(
  ( (array!76799 (arr!37045 (Array (_ BitVec 32) ValueCell!14298)) (size!37582 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76798)

(assert (=> b!1189007 (= res!790712 (and (= (size!37582 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37581 _keys!1208) (size!37582 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189008 () Bool)

(declare-fun res!790711 () Bool)

(declare-fun e!676062 () Bool)

(assert (=> b!1189008 (=> (not res!790711) (not e!676062))))

(declare-fun lt!540871 () array!76796)

(declare-datatypes ((List!26234 0))(
  ( (Nil!26231) (Cons!26230 (h!27439 (_ BitVec 64)) (t!38718 List!26234)) )
))
(declare-fun arrayNoDuplicates!0 (array!76796 (_ BitVec 32) List!26234) Bool)

(assert (=> b!1189008 (= res!790711 (arrayNoDuplicates!0 lt!540871 #b00000000000000000000000000000000 Nil!26231))))

(declare-fun b!1189009 () Bool)

(declare-fun res!790715 () Bool)

(assert (=> b!1189009 (=> (not res!790715) (not e!676068))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189009 (= res!790715 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37581 _keys!1208))))))

(declare-fun b!1189010 () Bool)

(declare-fun res!790710 () Bool)

(assert (=> b!1189010 (=> (not res!790710) (not e!676068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189010 (= res!790710 (validMask!0 mask!1564))))

(declare-fun res!790717 () Bool)

(assert (=> start!99942 (=> (not res!790717) (not e!676068))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99942 (= res!790717 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37581 _keys!1208))))))

(assert (=> start!99942 e!676068))

(declare-fun tp_is_empty!30015 () Bool)

(assert (=> start!99942 tp_is_empty!30015))

(declare-fun array_inv!28150 (array!76796) Bool)

(assert (=> start!99942 (array_inv!28150 _keys!1208)))

(assert (=> start!99942 true))

(assert (=> start!99942 tp!89169))

(declare-fun e!676063 () Bool)

(declare-fun array_inv!28151 (array!76798) Bool)

(assert (=> start!99942 (and (array_inv!28151 _values!996) e!676063)))

(declare-fun b!1189011 () Bool)

(declare-fun res!790713 () Bool)

(assert (=> b!1189011 (=> (not res!790713) (not e!676068))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189011 (= res!790713 (validKeyInArray!0 k0!934))))

(declare-fun b!1189012 () Bool)

(declare-fun e!676067 () Bool)

(declare-fun e!676064 () Bool)

(assert (=> b!1189012 (= e!676067 e!676064)))

(declare-fun res!790709 () Bool)

(assert (=> b!1189012 (=> res!790709 e!676064)))

(assert (=> b!1189012 (= res!790709 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45147)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!540872 () array!76798)

(declare-datatypes ((tuple2!19474 0))(
  ( (tuple2!19475 (_1!9747 (_ BitVec 64)) (_2!9747 V!45147)) )
))
(declare-datatypes ((List!26235 0))(
  ( (Nil!26232) (Cons!26231 (h!27440 tuple2!19474) (t!38719 List!26235)) )
))
(declare-datatypes ((ListLongMap!17455 0))(
  ( (ListLongMap!17456 (toList!8743 List!26235)) )
))
(declare-fun lt!540875 () ListLongMap!17455)

(declare-fun minValue!944 () V!45147)

(declare-fun getCurrentListMapNoExtraKeys!5157 (array!76796 array!76798 (_ BitVec 32) (_ BitVec 32) V!45147 V!45147 (_ BitVec 32) Int) ListLongMap!17455)

(assert (=> b!1189012 (= lt!540875 (getCurrentListMapNoExtraKeys!5157 lt!540871 lt!540872 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3111 (Int (_ BitVec 64)) V!45147)

(assert (=> b!1189012 (= lt!540872 (array!76799 (store (arr!37045 _values!996) i!673 (ValueCellFull!14298 (dynLambda!3111 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37582 _values!996)))))

(declare-fun lt!540873 () ListLongMap!17455)

(assert (=> b!1189012 (= lt!540873 (getCurrentListMapNoExtraKeys!5157 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189013 () Bool)

(declare-fun e!676066 () Bool)

(assert (=> b!1189013 (= e!676066 tp_is_empty!30015)))

(declare-fun mapNonEmpty!46850 () Bool)

(declare-fun mapRes!46850 () Bool)

(declare-fun tp!89170 () Bool)

(assert (=> mapNonEmpty!46850 (= mapRes!46850 (and tp!89170 e!676066))))

(declare-fun mapValue!46850 () ValueCell!14298)

(declare-fun mapRest!46850 () (Array (_ BitVec 32) ValueCell!14298))

(declare-fun mapKey!46850 () (_ BitVec 32))

(assert (=> mapNonEmpty!46850 (= (arr!37045 _values!996) (store mapRest!46850 mapKey!46850 mapValue!46850))))

(declare-fun b!1189014 () Bool)

(declare-fun e!676065 () Bool)

(assert (=> b!1189014 (= e!676063 (and e!676065 mapRes!46850))))

(declare-fun condMapEmpty!46850 () Bool)

(declare-fun mapDefault!46850 () ValueCell!14298)

(assert (=> b!1189014 (= condMapEmpty!46850 (= (arr!37045 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14298)) mapDefault!46850)))))

(declare-fun b!1189015 () Bool)

(declare-fun res!790716 () Bool)

(assert (=> b!1189015 (=> (not res!790716) (not e!676068))))

(assert (=> b!1189015 (= res!790716 (= (select (arr!37044 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46850 () Bool)

(assert (=> mapIsEmpty!46850 mapRes!46850))

(declare-fun b!1189016 () Bool)

(declare-fun res!790718 () Bool)

(assert (=> b!1189016 (=> (not res!790718) (not e!676068))))

(assert (=> b!1189016 (= res!790718 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26231))))

(declare-fun b!1189017 () Bool)

(assert (=> b!1189017 (= e!676062 (not e!676067))))

(declare-fun res!790720 () Bool)

(assert (=> b!1189017 (=> res!790720 e!676067)))

(assert (=> b!1189017 (= res!790720 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189017 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39378 0))(
  ( (Unit!39379) )
))
(declare-fun lt!540876 () Unit!39378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76796 (_ BitVec 64) (_ BitVec 32)) Unit!39378)

(assert (=> b!1189017 (= lt!540876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1189018 () Bool)

(declare-fun res!790714 () Bool)

(assert (=> b!1189018 (=> (not res!790714) (not e!676068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76796 (_ BitVec 32)) Bool)

(assert (=> b!1189018 (= res!790714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189019 () Bool)

(assert (=> b!1189019 (= e!676068 e!676062)))

(declare-fun res!790719 () Bool)

(assert (=> b!1189019 (=> (not res!790719) (not e!676062))))

(assert (=> b!1189019 (= res!790719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540871 mask!1564))))

(assert (=> b!1189019 (= lt!540871 (array!76797 (store (arr!37044 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37581 _keys!1208)))))

(declare-fun b!1189020 () Bool)

(assert (=> b!1189020 (= e!676065 tp_is_empty!30015)))

(declare-fun b!1189021 () Bool)

(assert (=> b!1189021 (= e!676064 true)))

(declare-fun -!1727 (ListLongMap!17455 (_ BitVec 64)) ListLongMap!17455)

(assert (=> b!1189021 (= (getCurrentListMapNoExtraKeys!5157 lt!540871 lt!540872 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1727 (getCurrentListMapNoExtraKeys!5157 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540874 () Unit!39378)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!933 (array!76796 array!76798 (_ BitVec 32) (_ BitVec 32) V!45147 V!45147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39378)

(assert (=> b!1189021 (= lt!540874 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!933 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99942 res!790717) b!1189010))

(assert (= (and b!1189010 res!790710) b!1189007))

(assert (= (and b!1189007 res!790712) b!1189018))

(assert (= (and b!1189018 res!790714) b!1189016))

(assert (= (and b!1189016 res!790718) b!1189009))

(assert (= (and b!1189009 res!790715) b!1189011))

(assert (= (and b!1189011 res!790713) b!1189015))

(assert (= (and b!1189015 res!790716) b!1189019))

(assert (= (and b!1189019 res!790719) b!1189008))

(assert (= (and b!1189008 res!790711) b!1189017))

(assert (= (and b!1189017 (not res!790720)) b!1189012))

(assert (= (and b!1189012 (not res!790709)) b!1189021))

(assert (= (and b!1189014 condMapEmpty!46850) mapIsEmpty!46850))

(assert (= (and b!1189014 (not condMapEmpty!46850)) mapNonEmpty!46850))

(get-info :version)

(assert (= (and mapNonEmpty!46850 ((_ is ValueCellFull!14298) mapValue!46850)) b!1189013))

(assert (= (and b!1189014 ((_ is ValueCellFull!14298) mapDefault!46850)) b!1189020))

(assert (= start!99942 b!1189014))

(declare-fun b_lambda!20647 () Bool)

(assert (=> (not b_lambda!20647) (not b!1189012)))

(declare-fun t!38717 () Bool)

(declare-fun tb!10305 () Bool)

(assert (=> (and start!99942 (= defaultEntry!1004 defaultEntry!1004) t!38717) tb!10305))

(declare-fun result!21169 () Bool)

(assert (=> tb!10305 (= result!21169 tp_is_empty!30015)))

(assert (=> b!1189012 t!38717))

(declare-fun b_and!41853 () Bool)

(assert (= b_and!41851 (and (=> t!38717 result!21169) b_and!41853)))

(declare-fun m!1097777 () Bool)

(assert (=> b!1189018 m!1097777))

(declare-fun m!1097779 () Bool)

(assert (=> b!1189016 m!1097779))

(declare-fun m!1097781 () Bool)

(assert (=> b!1189021 m!1097781))

(declare-fun m!1097783 () Bool)

(assert (=> b!1189021 m!1097783))

(assert (=> b!1189021 m!1097783))

(declare-fun m!1097785 () Bool)

(assert (=> b!1189021 m!1097785))

(declare-fun m!1097787 () Bool)

(assert (=> b!1189021 m!1097787))

(declare-fun m!1097789 () Bool)

(assert (=> b!1189019 m!1097789))

(declare-fun m!1097791 () Bool)

(assert (=> b!1189019 m!1097791))

(declare-fun m!1097793 () Bool)

(assert (=> b!1189015 m!1097793))

(declare-fun m!1097795 () Bool)

(assert (=> start!99942 m!1097795))

(declare-fun m!1097797 () Bool)

(assert (=> start!99942 m!1097797))

(declare-fun m!1097799 () Bool)

(assert (=> b!1189012 m!1097799))

(declare-fun m!1097801 () Bool)

(assert (=> b!1189012 m!1097801))

(declare-fun m!1097803 () Bool)

(assert (=> b!1189012 m!1097803))

(declare-fun m!1097805 () Bool)

(assert (=> b!1189012 m!1097805))

(declare-fun m!1097807 () Bool)

(assert (=> mapNonEmpty!46850 m!1097807))

(declare-fun m!1097809 () Bool)

(assert (=> b!1189017 m!1097809))

(declare-fun m!1097811 () Bool)

(assert (=> b!1189017 m!1097811))

(declare-fun m!1097813 () Bool)

(assert (=> b!1189011 m!1097813))

(declare-fun m!1097815 () Bool)

(assert (=> b!1189008 m!1097815))

(declare-fun m!1097817 () Bool)

(assert (=> b!1189010 m!1097817))

(check-sat (not b!1189016) tp_is_empty!30015 (not b_next!25485) (not b!1189012) (not mapNonEmpty!46850) (not b_lambda!20647) (not b!1189021) (not b!1189018) (not b!1189010) (not b!1189017) (not b!1189008) (not start!99942) (not b!1189019) (not b!1189011) b_and!41853)
(check-sat b_and!41853 (not b_next!25485))
