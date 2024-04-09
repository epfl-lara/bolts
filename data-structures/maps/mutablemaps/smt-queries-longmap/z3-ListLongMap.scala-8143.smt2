; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99762 () Bool)

(assert start!99762)

(declare-fun b_free!25305 () Bool)

(declare-fun b_next!25305 () Bool)

(assert (=> start!99762 (= b_free!25305 (not b_next!25305))))

(declare-fun tp!88629 () Bool)

(declare-fun b_and!41491 () Bool)

(assert (=> start!99762 (= tp!88629 b_and!41491)))

(declare-fun b!1183677 () Bool)

(declare-fun e!673028 () Bool)

(declare-fun e!673029 () Bool)

(assert (=> b!1183677 (= e!673028 e!673029)))

(declare-fun res!786814 () Bool)

(assert (=> b!1183677 (=> res!786814 e!673029)))

(declare-datatypes ((array!76438 0))(
  ( (array!76439 (arr!36865 (Array (_ BitVec 32) (_ BitVec 64))) (size!37402 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76438)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1183677 (= res!786814 (not (= (select (arr!36865 _keys!1208) from!1455) k0!934)))))

(declare-fun mapIsEmpty!46580 () Bool)

(declare-fun mapRes!46580 () Bool)

(assert (=> mapIsEmpty!46580 mapRes!46580))

(declare-fun b!1183678 () Bool)

(declare-fun res!786820 () Bool)

(declare-fun e!673031 () Bool)

(assert (=> b!1183678 (=> (not res!786820) (not e!673031))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76438 (_ BitVec 32)) Bool)

(assert (=> b!1183678 (= res!786820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183679 () Bool)

(declare-fun res!786809 () Bool)

(assert (=> b!1183679 (=> (not res!786809) (not e!673031))))

(declare-datatypes ((List!26079 0))(
  ( (Nil!26076) (Cons!26075 (h!27284 (_ BitVec 64)) (t!38383 List!26079)) )
))
(declare-fun arrayNoDuplicates!0 (array!76438 (_ BitVec 32) List!26079) Bool)

(assert (=> b!1183679 (= res!786809 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26076))))

(declare-fun b!1183680 () Bool)

(declare-fun res!786812 () Bool)

(declare-fun e!673025 () Bool)

(assert (=> b!1183680 (=> (not res!786812) (not e!673025))))

(declare-fun lt!536409 () array!76438)

(assert (=> b!1183680 (= res!786812 (arrayNoDuplicates!0 lt!536409 #b00000000000000000000000000000000 Nil!26076))))

(declare-fun b!1183681 () Bool)

(declare-fun e!673026 () Bool)

(assert (=> b!1183681 (= e!673025 (not e!673026))))

(declare-fun res!786810 () Bool)

(assert (=> b!1183681 (=> res!786810 e!673026)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183681 (= res!786810 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183681 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39105 0))(
  ( (Unit!39106) )
))
(declare-fun lt!536407 () Unit!39105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76438 (_ BitVec 64) (_ BitVec 32)) Unit!39105)

(assert (=> b!1183681 (= lt!536407 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183682 () Bool)

(declare-fun e!673030 () Bool)

(assert (=> b!1183682 (= e!673030 true)))

(declare-datatypes ((V!44907 0))(
  ( (V!44908 (val!14974 Int)) )
))
(declare-datatypes ((tuple2!19316 0))(
  ( (tuple2!19317 (_1!9668 (_ BitVec 64)) (_2!9668 V!44907)) )
))
(declare-datatypes ((List!26080 0))(
  ( (Nil!26077) (Cons!26076 (h!27285 tuple2!19316) (t!38384 List!26080)) )
))
(declare-datatypes ((ListLongMap!17297 0))(
  ( (ListLongMap!17298 (toList!8664 List!26080)) )
))
(declare-fun lt!536394 () ListLongMap!17297)

(declare-fun lt!536400 () ListLongMap!17297)

(declare-fun -!1652 (ListLongMap!17297 (_ BitVec 64)) ListLongMap!17297)

(assert (=> b!1183682 (= (-!1652 lt!536394 k0!934) lt!536400)))

(declare-fun lt!536401 () Unit!39105)

(declare-fun lt!536408 () ListLongMap!17297)

(declare-fun lt!536392 () V!44907)

(declare-fun addRemoveCommutativeForDiffKeys!169 (ListLongMap!17297 (_ BitVec 64) V!44907 (_ BitVec 64)) Unit!39105)

(assert (=> b!1183682 (= lt!536401 (addRemoveCommutativeForDiffKeys!169 lt!536408 (select (arr!36865 _keys!1208) from!1455) lt!536392 k0!934))))

(declare-fun lt!536396 () ListLongMap!17297)

(declare-fun lt!536402 () ListLongMap!17297)

(declare-fun lt!536404 () ListLongMap!17297)

(assert (=> b!1183682 (and (= lt!536404 lt!536394) (= lt!536402 lt!536396))))

(declare-fun lt!536405 () tuple2!19316)

(declare-fun +!3879 (ListLongMap!17297 tuple2!19316) ListLongMap!17297)

(assert (=> b!1183682 (= lt!536394 (+!3879 lt!536408 lt!536405))))

(assert (=> b!1183682 (not (= (select (arr!36865 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536391 () Unit!39105)

(declare-fun e!673033 () Unit!39105)

(assert (=> b!1183682 (= lt!536391 e!673033)))

(declare-fun c!117029 () Bool)

(assert (=> b!1183682 (= c!117029 (= (select (arr!36865 _keys!1208) from!1455) k0!934))))

(assert (=> b!1183682 e!673028))

(declare-fun res!786818 () Bool)

(assert (=> b!1183682 (=> (not res!786818) (not e!673028))))

(declare-fun lt!536399 () ListLongMap!17297)

(assert (=> b!1183682 (= res!786818 (= lt!536399 lt!536400))))

(assert (=> b!1183682 (= lt!536400 (+!3879 lt!536402 lt!536405))))

(assert (=> b!1183682 (= lt!536405 (tuple2!19317 (select (arr!36865 _keys!1208) from!1455) lt!536392))))

(declare-datatypes ((ValueCell!14208 0))(
  ( (ValueCellFull!14208 (v!17613 V!44907)) (EmptyCell!14208) )
))
(declare-datatypes ((array!76440 0))(
  ( (array!76441 (arr!36866 (Array (_ BitVec 32) ValueCell!14208)) (size!37403 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76440)

(declare-fun lt!536393 () V!44907)

(declare-fun get!18903 (ValueCell!14208 V!44907) V!44907)

(assert (=> b!1183682 (= lt!536392 (get!18903 (select (arr!36866 _values!996) from!1455) lt!536393))))

(declare-fun b!1183683 () Bool)

(declare-fun res!786815 () Bool)

(assert (=> b!1183683 (=> (not res!786815) (not e!673031))))

(assert (=> b!1183683 (= res!786815 (= (select (arr!36865 _keys!1208) i!673) k0!934))))

(declare-fun b!1183684 () Bool)

(declare-fun Unit!39107 () Unit!39105)

(assert (=> b!1183684 (= e!673033 Unit!39107)))

(declare-fun lt!536398 () Unit!39105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39105)

(assert (=> b!1183684 (= lt!536398 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183684 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536406 () Unit!39105)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76438 (_ BitVec 32) (_ BitVec 32)) Unit!39105)

(assert (=> b!1183684 (= lt!536406 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183684 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26076)))

(declare-fun lt!536403 () Unit!39105)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76438 (_ BitVec 64) (_ BitVec 32) List!26079) Unit!39105)

(assert (=> b!1183684 (= lt!536403 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26076))))

(assert (=> b!1183684 false))

(declare-fun res!786821 () Bool)

(assert (=> start!99762 (=> (not res!786821) (not e!673031))))

(assert (=> start!99762 (= res!786821 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37402 _keys!1208))))))

(assert (=> start!99762 e!673031))

(declare-fun tp_is_empty!29835 () Bool)

(assert (=> start!99762 tp_is_empty!29835))

(declare-fun array_inv!28018 (array!76438) Bool)

(assert (=> start!99762 (array_inv!28018 _keys!1208)))

(assert (=> start!99762 true))

(assert (=> start!99762 tp!88629))

(declare-fun e!673024 () Bool)

(declare-fun array_inv!28019 (array!76440) Bool)

(assert (=> start!99762 (and (array_inv!28019 _values!996) e!673024)))

(declare-fun b!1183685 () Bool)

(declare-fun e!673022 () Bool)

(assert (=> b!1183685 (= e!673022 tp_is_empty!29835)))

(declare-fun b!1183686 () Bool)

(declare-fun res!786823 () Bool)

(assert (=> b!1183686 (=> (not res!786823) (not e!673031))))

(assert (=> b!1183686 (= res!786823 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37402 _keys!1208))))))

(declare-fun b!1183687 () Bool)

(assert (=> b!1183687 (= e!673029 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183688 () Bool)

(declare-fun e!673023 () Bool)

(assert (=> b!1183688 (= e!673026 e!673023)))

(declare-fun res!786816 () Bool)

(assert (=> b!1183688 (=> res!786816 e!673023)))

(assert (=> b!1183688 (= res!786816 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44907)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!536395 () array!76440)

(declare-fun minValue!944 () V!44907)

(declare-fun getCurrentListMapNoExtraKeys!5085 (array!76438 array!76440 (_ BitVec 32) (_ BitVec 32) V!44907 V!44907 (_ BitVec 32) Int) ListLongMap!17297)

(assert (=> b!1183688 (= lt!536399 (getCurrentListMapNoExtraKeys!5085 lt!536409 lt!536395 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1183688 (= lt!536395 (array!76441 (store (arr!36866 _values!996) i!673 (ValueCellFull!14208 lt!536393)) (size!37403 _values!996)))))

(declare-fun dynLambda!3051 (Int (_ BitVec 64)) V!44907)

(assert (=> b!1183688 (= lt!536393 (dynLambda!3051 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1183688 (= lt!536404 (getCurrentListMapNoExtraKeys!5085 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46580 () Bool)

(declare-fun tp!88630 () Bool)

(assert (=> mapNonEmpty!46580 (= mapRes!46580 (and tp!88630 e!673022))))

(declare-fun mapValue!46580 () ValueCell!14208)

(declare-fun mapKey!46580 () (_ BitVec 32))

(declare-fun mapRest!46580 () (Array (_ BitVec 32) ValueCell!14208))

(assert (=> mapNonEmpty!46580 (= (arr!36866 _values!996) (store mapRest!46580 mapKey!46580 mapValue!46580))))

(declare-fun b!1183689 () Bool)

(declare-fun e!673027 () Bool)

(assert (=> b!1183689 (= e!673027 tp_is_empty!29835)))

(declare-fun b!1183690 () Bool)

(declare-fun res!786813 () Bool)

(assert (=> b!1183690 (=> (not res!786813) (not e!673031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183690 (= res!786813 (validKeyInArray!0 k0!934))))

(declare-fun b!1183691 () Bool)

(declare-fun res!786819 () Bool)

(assert (=> b!1183691 (=> (not res!786819) (not e!673031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183691 (= res!786819 (validMask!0 mask!1564))))

(declare-fun b!1183692 () Bool)

(assert (=> b!1183692 (= e!673023 e!673030)))

(declare-fun res!786822 () Bool)

(assert (=> b!1183692 (=> res!786822 e!673030)))

(assert (=> b!1183692 (= res!786822 (not (validKeyInArray!0 (select (arr!36865 _keys!1208) from!1455))))))

(assert (=> b!1183692 (= lt!536396 lt!536402)))

(assert (=> b!1183692 (= lt!536402 (-!1652 lt!536408 k0!934))))

(assert (=> b!1183692 (= lt!536396 (getCurrentListMapNoExtraKeys!5085 lt!536409 lt!536395 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183692 (= lt!536408 (getCurrentListMapNoExtraKeys!5085 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536397 () Unit!39105)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!869 (array!76438 array!76440 (_ BitVec 32) (_ BitVec 32) V!44907 V!44907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39105)

(assert (=> b!1183692 (= lt!536397 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!869 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183693 () Bool)

(declare-fun Unit!39108 () Unit!39105)

(assert (=> b!1183693 (= e!673033 Unit!39108)))

(declare-fun b!1183694 () Bool)

(assert (=> b!1183694 (= e!673024 (and e!673027 mapRes!46580))))

(declare-fun condMapEmpty!46580 () Bool)

(declare-fun mapDefault!46580 () ValueCell!14208)

(assert (=> b!1183694 (= condMapEmpty!46580 (= (arr!36866 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14208)) mapDefault!46580)))))

(declare-fun b!1183695 () Bool)

(declare-fun res!786817 () Bool)

(assert (=> b!1183695 (=> (not res!786817) (not e!673031))))

(assert (=> b!1183695 (= res!786817 (and (= (size!37403 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37402 _keys!1208) (size!37403 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183696 () Bool)

(assert (=> b!1183696 (= e!673031 e!673025)))

(declare-fun res!786811 () Bool)

(assert (=> b!1183696 (=> (not res!786811) (not e!673025))))

(assert (=> b!1183696 (= res!786811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536409 mask!1564))))

(assert (=> b!1183696 (= lt!536409 (array!76439 (store (arr!36865 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37402 _keys!1208)))))

(assert (= (and start!99762 res!786821) b!1183691))

(assert (= (and b!1183691 res!786819) b!1183695))

(assert (= (and b!1183695 res!786817) b!1183678))

(assert (= (and b!1183678 res!786820) b!1183679))

(assert (= (and b!1183679 res!786809) b!1183686))

(assert (= (and b!1183686 res!786823) b!1183690))

(assert (= (and b!1183690 res!786813) b!1183683))

(assert (= (and b!1183683 res!786815) b!1183696))

(assert (= (and b!1183696 res!786811) b!1183680))

(assert (= (and b!1183680 res!786812) b!1183681))

(assert (= (and b!1183681 (not res!786810)) b!1183688))

(assert (= (and b!1183688 (not res!786816)) b!1183692))

(assert (= (and b!1183692 (not res!786822)) b!1183682))

(assert (= (and b!1183682 res!786818) b!1183677))

(assert (= (and b!1183677 (not res!786814)) b!1183687))

(assert (= (and b!1183682 c!117029) b!1183684))

(assert (= (and b!1183682 (not c!117029)) b!1183693))

(assert (= (and b!1183694 condMapEmpty!46580) mapIsEmpty!46580))

(assert (= (and b!1183694 (not condMapEmpty!46580)) mapNonEmpty!46580))

(get-info :version)

(assert (= (and mapNonEmpty!46580 ((_ is ValueCellFull!14208) mapValue!46580)) b!1183685))

(assert (= (and b!1183694 ((_ is ValueCellFull!14208) mapDefault!46580)) b!1183689))

(assert (= start!99762 b!1183694))

(declare-fun b_lambda!20467 () Bool)

(assert (=> (not b_lambda!20467) (not b!1183688)))

(declare-fun t!38382 () Bool)

(declare-fun tb!10125 () Bool)

(assert (=> (and start!99762 (= defaultEntry!1004 defaultEntry!1004) t!38382) tb!10125))

(declare-fun result!20809 () Bool)

(assert (=> tb!10125 (= result!20809 tp_is_empty!29835)))

(assert (=> b!1183688 t!38382))

(declare-fun b_and!41493 () Bool)

(assert (= b_and!41491 (and (=> t!38382 result!20809) b_and!41493)))

(declare-fun m!1091925 () Bool)

(assert (=> b!1183682 m!1091925))

(declare-fun m!1091927 () Bool)

(assert (=> b!1183682 m!1091927))

(assert (=> b!1183682 m!1091925))

(declare-fun m!1091929 () Bool)

(assert (=> b!1183682 m!1091929))

(declare-fun m!1091931 () Bool)

(assert (=> b!1183682 m!1091931))

(declare-fun m!1091933 () Bool)

(assert (=> b!1183682 m!1091933))

(declare-fun m!1091935 () Bool)

(assert (=> b!1183682 m!1091935))

(assert (=> b!1183682 m!1091935))

(declare-fun m!1091937 () Bool)

(assert (=> b!1183682 m!1091937))

(declare-fun m!1091939 () Bool)

(assert (=> start!99762 m!1091939))

(declare-fun m!1091941 () Bool)

(assert (=> start!99762 m!1091941))

(declare-fun m!1091943 () Bool)

(assert (=> b!1183680 m!1091943))

(declare-fun m!1091945 () Bool)

(assert (=> b!1183696 m!1091945))

(declare-fun m!1091947 () Bool)

(assert (=> b!1183696 m!1091947))

(declare-fun m!1091949 () Bool)

(assert (=> b!1183681 m!1091949))

(declare-fun m!1091951 () Bool)

(assert (=> b!1183681 m!1091951))

(assert (=> b!1183677 m!1091935))

(declare-fun m!1091953 () Bool)

(assert (=> b!1183684 m!1091953))

(declare-fun m!1091955 () Bool)

(assert (=> b!1183684 m!1091955))

(declare-fun m!1091957 () Bool)

(assert (=> b!1183684 m!1091957))

(declare-fun m!1091959 () Bool)

(assert (=> b!1183684 m!1091959))

(declare-fun m!1091961 () Bool)

(assert (=> b!1183684 m!1091961))

(declare-fun m!1091963 () Bool)

(assert (=> b!1183687 m!1091963))

(declare-fun m!1091965 () Bool)

(assert (=> b!1183691 m!1091965))

(declare-fun m!1091967 () Bool)

(assert (=> b!1183692 m!1091967))

(declare-fun m!1091969 () Bool)

(assert (=> b!1183692 m!1091969))

(assert (=> b!1183692 m!1091935))

(declare-fun m!1091971 () Bool)

(assert (=> b!1183692 m!1091971))

(declare-fun m!1091973 () Bool)

(assert (=> b!1183692 m!1091973))

(assert (=> b!1183692 m!1091935))

(declare-fun m!1091975 () Bool)

(assert (=> b!1183692 m!1091975))

(declare-fun m!1091977 () Bool)

(assert (=> b!1183688 m!1091977))

(declare-fun m!1091979 () Bool)

(assert (=> b!1183688 m!1091979))

(declare-fun m!1091981 () Bool)

(assert (=> b!1183688 m!1091981))

(declare-fun m!1091983 () Bool)

(assert (=> b!1183688 m!1091983))

(declare-fun m!1091985 () Bool)

(assert (=> b!1183690 m!1091985))

(declare-fun m!1091987 () Bool)

(assert (=> b!1183679 m!1091987))

(declare-fun m!1091989 () Bool)

(assert (=> b!1183678 m!1091989))

(declare-fun m!1091991 () Bool)

(assert (=> b!1183683 m!1091991))

(declare-fun m!1091993 () Bool)

(assert (=> mapNonEmpty!46580 m!1091993))

(check-sat (not b!1183681) (not b!1183682) (not b!1183692) (not b!1183688) b_and!41493 tp_is_empty!29835 (not b!1183691) (not b!1183687) (not b!1183680) (not b!1183696) (not b!1183684) (not b!1183690) (not b!1183679) (not b_next!25305) (not start!99762) (not b_lambda!20467) (not b!1183678) (not mapNonEmpty!46580))
(check-sat b_and!41493 (not b_next!25305))
