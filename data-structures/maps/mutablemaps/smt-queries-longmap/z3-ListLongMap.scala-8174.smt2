; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99948 () Bool)

(assert start!99948)

(declare-fun b_free!25491 () Bool)

(declare-fun b_next!25491 () Bool)

(assert (=> start!99948 (= b_free!25491 (not b_next!25491))))

(declare-fun tp!89188 () Bool)

(declare-fun b_and!41863 () Bool)

(assert (=> start!99948 (= tp!89188 b_and!41863)))

(declare-fun mapIsEmpty!46859 () Bool)

(declare-fun mapRes!46859 () Bool)

(assert (=> mapIsEmpty!46859 mapRes!46859))

(declare-fun b!1189148 () Bool)

(declare-fun res!790827 () Bool)

(declare-fun e!676136 () Bool)

(assert (=> b!1189148 (=> (not res!790827) (not e!676136))))

(declare-datatypes ((array!76808 0))(
  ( (array!76809 (arr!37050 (Array (_ BitVec 32) (_ BitVec 64))) (size!37587 (_ BitVec 32))) )
))
(declare-fun lt!540926 () array!76808)

(declare-datatypes ((List!26238 0))(
  ( (Nil!26235) (Cons!26234 (h!27443 (_ BitVec 64)) (t!38728 List!26238)) )
))
(declare-fun arrayNoDuplicates!0 (array!76808 (_ BitVec 32) List!26238) Bool)

(assert (=> b!1189148 (= res!790827 (arrayNoDuplicates!0 lt!540926 #b00000000000000000000000000000000 Nil!26235))))

(declare-fun b!1189149 () Bool)

(declare-fun res!790817 () Bool)

(declare-fun e!676137 () Bool)

(assert (=> b!1189149 (=> (not res!790817) (not e!676137))))

(declare-fun _keys!1208 () array!76808)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76808 (_ BitVec 32)) Bool)

(assert (=> b!1189149 (= res!790817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189150 () Bool)

(assert (=> b!1189150 (= e!676137 e!676136)))

(declare-fun res!790821 () Bool)

(assert (=> b!1189150 (=> (not res!790821) (not e!676136))))

(assert (=> b!1189150 (= res!790821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540926 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189150 (= lt!540926 (array!76809 (store (arr!37050 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37587 _keys!1208)))))

(declare-fun b!1189151 () Bool)

(declare-fun res!790825 () Bool)

(assert (=> b!1189151 (=> (not res!790825) (not e!676137))))

(assert (=> b!1189151 (= res!790825 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37587 _keys!1208))))))

(declare-fun b!1189152 () Bool)

(declare-fun res!790826 () Bool)

(assert (=> b!1189152 (=> (not res!790826) (not e!676137))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45155 0))(
  ( (V!45156 (val!15067 Int)) )
))
(declare-datatypes ((ValueCell!14301 0))(
  ( (ValueCellFull!14301 (v!17706 V!45155)) (EmptyCell!14301) )
))
(declare-datatypes ((array!76810 0))(
  ( (array!76811 (arr!37051 (Array (_ BitVec 32) ValueCell!14301)) (size!37588 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76810)

(assert (=> b!1189152 (= res!790826 (and (= (size!37588 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37587 _keys!1208) (size!37588 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189153 () Bool)

(declare-fun e!676135 () Bool)

(declare-fun e!676134 () Bool)

(assert (=> b!1189153 (= e!676135 e!676134)))

(declare-fun res!790819 () Bool)

(assert (=> b!1189153 (=> res!790819 e!676134)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1189153 (= res!790819 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45155)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45155)

(declare-datatypes ((tuple2!19478 0))(
  ( (tuple2!19479 (_1!9749 (_ BitVec 64)) (_2!9749 V!45155)) )
))
(declare-datatypes ((List!26239 0))(
  ( (Nil!26236) (Cons!26235 (h!27444 tuple2!19478) (t!38729 List!26239)) )
))
(declare-datatypes ((ListLongMap!17459 0))(
  ( (ListLongMap!17460 (toList!8745 List!26239)) )
))
(declare-fun lt!540927 () ListLongMap!17459)

(declare-fun lt!540925 () array!76810)

(declare-fun getCurrentListMapNoExtraKeys!5159 (array!76808 array!76810 (_ BitVec 32) (_ BitVec 32) V!45155 V!45155 (_ BitVec 32) Int) ListLongMap!17459)

(assert (=> b!1189153 (= lt!540927 (getCurrentListMapNoExtraKeys!5159 lt!540926 lt!540925 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3112 (Int (_ BitVec 64)) V!45155)

(assert (=> b!1189153 (= lt!540925 (array!76811 (store (arr!37051 _values!996) i!673 (ValueCellFull!14301 (dynLambda!3112 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37588 _values!996)))))

(declare-fun lt!540929 () ListLongMap!17459)

(assert (=> b!1189153 (= lt!540929 (getCurrentListMapNoExtraKeys!5159 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1189154 () Bool)

(declare-fun e!676139 () Bool)

(declare-fun tp_is_empty!30021 () Bool)

(assert (=> b!1189154 (= e!676139 tp_is_empty!30021)))

(declare-fun b!1189155 () Bool)

(assert (=> b!1189155 (= e!676136 (not e!676135))))

(declare-fun res!790824 () Bool)

(assert (=> b!1189155 (=> res!790824 e!676135)))

(assert (=> b!1189155 (= res!790824 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189155 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39384 0))(
  ( (Unit!39385) )
))
(declare-fun lt!540930 () Unit!39384)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76808 (_ BitVec 64) (_ BitVec 32)) Unit!39384)

(assert (=> b!1189155 (= lt!540930 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1189156 () Bool)

(declare-fun e!676138 () Bool)

(assert (=> b!1189156 (= e!676138 tp_is_empty!30021)))

(declare-fun b!1189157 () Bool)

(declare-fun res!790820 () Bool)

(assert (=> b!1189157 (=> (not res!790820) (not e!676137))))

(assert (=> b!1189157 (= res!790820 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26235))))

(declare-fun res!790822 () Bool)

(assert (=> start!99948 (=> (not res!790822) (not e!676137))))

(assert (=> start!99948 (= res!790822 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37587 _keys!1208))))))

(assert (=> start!99948 e!676137))

(assert (=> start!99948 tp_is_empty!30021))

(declare-fun array_inv!28152 (array!76808) Bool)

(assert (=> start!99948 (array_inv!28152 _keys!1208)))

(assert (=> start!99948 true))

(assert (=> start!99948 tp!89188))

(declare-fun e!676141 () Bool)

(declare-fun array_inv!28153 (array!76810) Bool)

(assert (=> start!99948 (and (array_inv!28153 _values!996) e!676141)))

(declare-fun b!1189158 () Bool)

(assert (=> b!1189158 (= e!676134 true)))

(declare-fun -!1729 (ListLongMap!17459 (_ BitVec 64)) ListLongMap!17459)

(assert (=> b!1189158 (= (getCurrentListMapNoExtraKeys!5159 lt!540926 lt!540925 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1729 (getCurrentListMapNoExtraKeys!5159 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540928 () Unit!39384)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!935 (array!76808 array!76810 (_ BitVec 32) (_ BitVec 32) V!45155 V!45155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39384)

(assert (=> b!1189158 (= lt!540928 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!935 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!46859 () Bool)

(declare-fun tp!89187 () Bool)

(assert (=> mapNonEmpty!46859 (= mapRes!46859 (and tp!89187 e!676139))))

(declare-fun mapValue!46859 () ValueCell!14301)

(declare-fun mapRest!46859 () (Array (_ BitVec 32) ValueCell!14301))

(declare-fun mapKey!46859 () (_ BitVec 32))

(assert (=> mapNonEmpty!46859 (= (arr!37051 _values!996) (store mapRest!46859 mapKey!46859 mapValue!46859))))

(declare-fun b!1189159 () Bool)

(declare-fun res!790823 () Bool)

(assert (=> b!1189159 (=> (not res!790823) (not e!676137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189159 (= res!790823 (validMask!0 mask!1564))))

(declare-fun b!1189160 () Bool)

(declare-fun res!790818 () Bool)

(assert (=> b!1189160 (=> (not res!790818) (not e!676137))))

(assert (=> b!1189160 (= res!790818 (= (select (arr!37050 _keys!1208) i!673) k0!934))))

(declare-fun b!1189161 () Bool)

(declare-fun res!790828 () Bool)

(assert (=> b!1189161 (=> (not res!790828) (not e!676137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189161 (= res!790828 (validKeyInArray!0 k0!934))))

(declare-fun b!1189162 () Bool)

(assert (=> b!1189162 (= e!676141 (and e!676138 mapRes!46859))))

(declare-fun condMapEmpty!46859 () Bool)

(declare-fun mapDefault!46859 () ValueCell!14301)

(assert (=> b!1189162 (= condMapEmpty!46859 (= (arr!37051 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14301)) mapDefault!46859)))))

(assert (= (and start!99948 res!790822) b!1189159))

(assert (= (and b!1189159 res!790823) b!1189152))

(assert (= (and b!1189152 res!790826) b!1189149))

(assert (= (and b!1189149 res!790817) b!1189157))

(assert (= (and b!1189157 res!790820) b!1189151))

(assert (= (and b!1189151 res!790825) b!1189161))

(assert (= (and b!1189161 res!790828) b!1189160))

(assert (= (and b!1189160 res!790818) b!1189150))

(assert (= (and b!1189150 res!790821) b!1189148))

(assert (= (and b!1189148 res!790827) b!1189155))

(assert (= (and b!1189155 (not res!790824)) b!1189153))

(assert (= (and b!1189153 (not res!790819)) b!1189158))

(assert (= (and b!1189162 condMapEmpty!46859) mapIsEmpty!46859))

(assert (= (and b!1189162 (not condMapEmpty!46859)) mapNonEmpty!46859))

(get-info :version)

(assert (= (and mapNonEmpty!46859 ((_ is ValueCellFull!14301) mapValue!46859)) b!1189154))

(assert (= (and b!1189162 ((_ is ValueCellFull!14301) mapDefault!46859)) b!1189156))

(assert (= start!99948 b!1189162))

(declare-fun b_lambda!20653 () Bool)

(assert (=> (not b_lambda!20653) (not b!1189153)))

(declare-fun t!38727 () Bool)

(declare-fun tb!10311 () Bool)

(assert (=> (and start!99948 (= defaultEntry!1004 defaultEntry!1004) t!38727) tb!10311))

(declare-fun result!21181 () Bool)

(assert (=> tb!10311 (= result!21181 tp_is_empty!30021)))

(assert (=> b!1189153 t!38727))

(declare-fun b_and!41865 () Bool)

(assert (= b_and!41863 (and (=> t!38727 result!21181) b_and!41865)))

(declare-fun m!1097903 () Bool)

(assert (=> b!1189158 m!1097903))

(declare-fun m!1097905 () Bool)

(assert (=> b!1189158 m!1097905))

(assert (=> b!1189158 m!1097905))

(declare-fun m!1097907 () Bool)

(assert (=> b!1189158 m!1097907))

(declare-fun m!1097909 () Bool)

(assert (=> b!1189158 m!1097909))

(declare-fun m!1097911 () Bool)

(assert (=> b!1189157 m!1097911))

(declare-fun m!1097913 () Bool)

(assert (=> b!1189150 m!1097913))

(declare-fun m!1097915 () Bool)

(assert (=> b!1189150 m!1097915))

(declare-fun m!1097917 () Bool)

(assert (=> b!1189161 m!1097917))

(declare-fun m!1097919 () Bool)

(assert (=> b!1189148 m!1097919))

(declare-fun m!1097921 () Bool)

(assert (=> b!1189160 m!1097921))

(declare-fun m!1097923 () Bool)

(assert (=> b!1189159 m!1097923))

(declare-fun m!1097925 () Bool)

(assert (=> b!1189149 m!1097925))

(declare-fun m!1097927 () Bool)

(assert (=> mapNonEmpty!46859 m!1097927))

(declare-fun m!1097929 () Bool)

(assert (=> start!99948 m!1097929))

(declare-fun m!1097931 () Bool)

(assert (=> start!99948 m!1097931))

(declare-fun m!1097933 () Bool)

(assert (=> b!1189155 m!1097933))

(declare-fun m!1097935 () Bool)

(assert (=> b!1189155 m!1097935))

(declare-fun m!1097937 () Bool)

(assert (=> b!1189153 m!1097937))

(declare-fun m!1097939 () Bool)

(assert (=> b!1189153 m!1097939))

(declare-fun m!1097941 () Bool)

(assert (=> b!1189153 m!1097941))

(declare-fun m!1097943 () Bool)

(assert (=> b!1189153 m!1097943))

(check-sat (not b!1189161) (not mapNonEmpty!46859) tp_is_empty!30021 (not b!1189149) (not b!1189155) (not b!1189148) (not b!1189157) (not b_lambda!20653) (not b!1189153) (not b!1189158) (not b!1189150) (not b_next!25491) b_and!41865 (not b!1189159) (not start!99948))
(check-sat b_and!41865 (not b_next!25491))
