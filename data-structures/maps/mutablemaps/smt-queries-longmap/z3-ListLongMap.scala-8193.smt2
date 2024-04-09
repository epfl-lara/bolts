; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100062 () Bool)

(assert start!100062)

(declare-fun b_free!25605 () Bool)

(declare-fun b_next!25605 () Bool)

(assert (=> start!100062 (= b_free!25605 (not b_next!25605))))

(declare-fun tp!89530 () Bool)

(declare-fun b_and!42091 () Bool)

(assert (=> start!100062 (= tp!89530 b_and!42091)))

(declare-fun mapIsEmpty!47030 () Bool)

(declare-fun mapRes!47030 () Bool)

(assert (=> mapIsEmpty!47030 mapRes!47030))

(declare-fun b!1191827 () Bool)

(declare-fun res!792869 () Bool)

(declare-fun e!677506 () Bool)

(assert (=> b!1191827 (=> (not res!792869) (not e!677506))))

(declare-datatypes ((array!77034 0))(
  ( (array!77035 (arr!37163 (Array (_ BitVec 32) (_ BitVec 64))) (size!37700 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77034)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45307 0))(
  ( (V!45308 (val!15124 Int)) )
))
(declare-datatypes ((ValueCell!14358 0))(
  ( (ValueCellFull!14358 (v!17763 V!45307)) (EmptyCell!14358) )
))
(declare-datatypes ((array!77036 0))(
  ( (array!77037 (arr!37164 (Array (_ BitVec 32) ValueCell!14358)) (size!37701 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77036)

(assert (=> b!1191827 (= res!792869 (and (= (size!37701 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37700 _keys!1208) (size!37701 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!792879 () Bool)

(assert (=> start!100062 (=> (not res!792879) (not e!677506))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100062 (= res!792879 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37700 _keys!1208))))))

(assert (=> start!100062 e!677506))

(declare-fun tp_is_empty!30135 () Bool)

(assert (=> start!100062 tp_is_empty!30135))

(declare-fun array_inv!28240 (array!77034) Bool)

(assert (=> start!100062 (array_inv!28240 _keys!1208)))

(assert (=> start!100062 true))

(assert (=> start!100062 tp!89530))

(declare-fun e!677507 () Bool)

(declare-fun array_inv!28241 (array!77036) Bool)

(assert (=> start!100062 (and (array_inv!28241 _values!996) e!677507)))

(declare-fun b!1191828 () Bool)

(declare-fun res!792871 () Bool)

(assert (=> b!1191828 (=> (not res!792871) (not e!677506))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191828 (= res!792871 (validKeyInArray!0 k0!934))))

(declare-fun b!1191829 () Bool)

(declare-fun res!792877 () Bool)

(declare-fun e!677503 () Bool)

(assert (=> b!1191829 (=> (not res!792877) (not e!677503))))

(declare-fun lt!541953 () array!77034)

(declare-datatypes ((List!26340 0))(
  ( (Nil!26337) (Cons!26336 (h!27545 (_ BitVec 64)) (t!38944 List!26340)) )
))
(declare-fun arrayNoDuplicates!0 (array!77034 (_ BitVec 32) List!26340) Bool)

(assert (=> b!1191829 (= res!792877 (arrayNoDuplicates!0 lt!541953 #b00000000000000000000000000000000 Nil!26337))))

(declare-fun b!1191830 () Bool)

(declare-fun res!792873 () Bool)

(assert (=> b!1191830 (=> (not res!792873) (not e!677506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191830 (= res!792873 (validMask!0 mask!1564))))

(declare-fun b!1191831 () Bool)

(assert (=> b!1191831 (= e!677506 e!677503)))

(declare-fun res!792880 () Bool)

(assert (=> b!1191831 (=> (not res!792880) (not e!677503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77034 (_ BitVec 32)) Bool)

(assert (=> b!1191831 (= res!792880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541953 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191831 (= lt!541953 (array!77035 (store (arr!37163 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37700 _keys!1208)))))

(declare-fun b!1191832 () Bool)

(declare-fun e!677502 () Bool)

(assert (=> b!1191832 (= e!677507 (and e!677502 mapRes!47030))))

(declare-fun condMapEmpty!47030 () Bool)

(declare-fun mapDefault!47030 () ValueCell!14358)

(assert (=> b!1191832 (= condMapEmpty!47030 (= (arr!37164 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14358)) mapDefault!47030)))))

(declare-fun b!1191833 () Bool)

(declare-fun res!792876 () Bool)

(assert (=> b!1191833 (=> (not res!792876) (not e!677506))))

(assert (=> b!1191833 (= res!792876 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37700 _keys!1208))))))

(declare-fun b!1191834 () Bool)

(declare-fun res!792872 () Bool)

(assert (=> b!1191834 (=> (not res!792872) (not e!677506))))

(assert (=> b!1191834 (= res!792872 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26337))))

(declare-fun b!1191835 () Bool)

(declare-fun res!792874 () Bool)

(assert (=> b!1191835 (=> (not res!792874) (not e!677506))))

(assert (=> b!1191835 (= res!792874 (= (select (arr!37163 _keys!1208) i!673) k0!934))))

(declare-fun b!1191836 () Bool)

(declare-fun e!677508 () Bool)

(assert (=> b!1191836 (= e!677508 true)))

(declare-fun zeroValue!944 () V!45307)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45307)

(declare-fun lt!541954 () array!77036)

(declare-datatypes ((tuple2!19578 0))(
  ( (tuple2!19579 (_1!9799 (_ BitVec 64)) (_2!9799 V!45307)) )
))
(declare-datatypes ((List!26341 0))(
  ( (Nil!26338) (Cons!26337 (h!27546 tuple2!19578) (t!38945 List!26341)) )
))
(declare-datatypes ((ListLongMap!17559 0))(
  ( (ListLongMap!17560 (toList!8795 List!26341)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5209 (array!77034 array!77036 (_ BitVec 32) (_ BitVec 32) V!45307 V!45307 (_ BitVec 32) Int) ListLongMap!17559)

(declare-fun -!1774 (ListLongMap!17559 (_ BitVec 64)) ListLongMap!17559)

(assert (=> b!1191836 (= (getCurrentListMapNoExtraKeys!5209 lt!541953 lt!541954 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1774 (getCurrentListMapNoExtraKeys!5209 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39482 0))(
  ( (Unit!39483) )
))
(declare-fun lt!541955 () Unit!39482)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!980 (array!77034 array!77036 (_ BitVec 32) (_ BitVec 32) V!45307 V!45307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39482)

(assert (=> b!1191836 (= lt!541955 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!980 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191837 () Bool)

(assert (=> b!1191837 (= e!677502 tp_is_empty!30135)))

(declare-fun b!1191838 () Bool)

(declare-fun e!677505 () Bool)

(assert (=> b!1191838 (= e!677505 e!677508)))

(declare-fun res!792875 () Bool)

(assert (=> b!1191838 (=> res!792875 e!677508)))

(assert (=> b!1191838 (= res!792875 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!541956 () ListLongMap!17559)

(assert (=> b!1191838 (= lt!541956 (getCurrentListMapNoExtraKeys!5209 lt!541953 lt!541954 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3152 (Int (_ BitVec 64)) V!45307)

(assert (=> b!1191838 (= lt!541954 (array!77037 (store (arr!37164 _values!996) i!673 (ValueCellFull!14358 (dynLambda!3152 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37701 _values!996)))))

(declare-fun lt!541951 () ListLongMap!17559)

(assert (=> b!1191838 (= lt!541951 (getCurrentListMapNoExtraKeys!5209 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191839 () Bool)

(declare-fun e!677509 () Bool)

(assert (=> b!1191839 (= e!677509 tp_is_empty!30135)))

(declare-fun b!1191840 () Bool)

(declare-fun res!792878 () Bool)

(assert (=> b!1191840 (=> (not res!792878) (not e!677506))))

(assert (=> b!1191840 (= res!792878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!47030 () Bool)

(declare-fun tp!89529 () Bool)

(assert (=> mapNonEmpty!47030 (= mapRes!47030 (and tp!89529 e!677509))))

(declare-fun mapValue!47030 () ValueCell!14358)

(declare-fun mapRest!47030 () (Array (_ BitVec 32) ValueCell!14358))

(declare-fun mapKey!47030 () (_ BitVec 32))

(assert (=> mapNonEmpty!47030 (= (arr!37164 _values!996) (store mapRest!47030 mapKey!47030 mapValue!47030))))

(declare-fun b!1191841 () Bool)

(assert (=> b!1191841 (= e!677503 (not e!677505))))

(declare-fun res!792870 () Bool)

(assert (=> b!1191841 (=> res!792870 e!677505)))

(assert (=> b!1191841 (= res!792870 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191841 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541952 () Unit!39482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77034 (_ BitVec 64) (_ BitVec 32)) Unit!39482)

(assert (=> b!1191841 (= lt!541952 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100062 res!792879) b!1191830))

(assert (= (and b!1191830 res!792873) b!1191827))

(assert (= (and b!1191827 res!792869) b!1191840))

(assert (= (and b!1191840 res!792878) b!1191834))

(assert (= (and b!1191834 res!792872) b!1191833))

(assert (= (and b!1191833 res!792876) b!1191828))

(assert (= (and b!1191828 res!792871) b!1191835))

(assert (= (and b!1191835 res!792874) b!1191831))

(assert (= (and b!1191831 res!792880) b!1191829))

(assert (= (and b!1191829 res!792877) b!1191841))

(assert (= (and b!1191841 (not res!792870)) b!1191838))

(assert (= (and b!1191838 (not res!792875)) b!1191836))

(assert (= (and b!1191832 condMapEmpty!47030) mapIsEmpty!47030))

(assert (= (and b!1191832 (not condMapEmpty!47030)) mapNonEmpty!47030))

(get-info :version)

(assert (= (and mapNonEmpty!47030 ((_ is ValueCellFull!14358) mapValue!47030)) b!1191839))

(assert (= (and b!1191832 ((_ is ValueCellFull!14358) mapDefault!47030)) b!1191837))

(assert (= start!100062 b!1191832))

(declare-fun b_lambda!20767 () Bool)

(assert (=> (not b_lambda!20767) (not b!1191838)))

(declare-fun t!38943 () Bool)

(declare-fun tb!10425 () Bool)

(assert (=> (and start!100062 (= defaultEntry!1004 defaultEntry!1004) t!38943) tb!10425))

(declare-fun result!21409 () Bool)

(assert (=> tb!10425 (= result!21409 tp_is_empty!30135)))

(assert (=> b!1191838 t!38943))

(declare-fun b_and!42093 () Bool)

(assert (= b_and!42091 (and (=> t!38943 result!21409) b_and!42093)))

(declare-fun m!1100297 () Bool)

(assert (=> start!100062 m!1100297))

(declare-fun m!1100299 () Bool)

(assert (=> start!100062 m!1100299))

(declare-fun m!1100301 () Bool)

(assert (=> b!1191828 m!1100301))

(declare-fun m!1100303 () Bool)

(assert (=> b!1191841 m!1100303))

(declare-fun m!1100305 () Bool)

(assert (=> b!1191841 m!1100305))

(declare-fun m!1100307 () Bool)

(assert (=> mapNonEmpty!47030 m!1100307))

(declare-fun m!1100309 () Bool)

(assert (=> b!1191829 m!1100309))

(declare-fun m!1100311 () Bool)

(assert (=> b!1191831 m!1100311))

(declare-fun m!1100313 () Bool)

(assert (=> b!1191831 m!1100313))

(declare-fun m!1100315 () Bool)

(assert (=> b!1191836 m!1100315))

(declare-fun m!1100317 () Bool)

(assert (=> b!1191836 m!1100317))

(assert (=> b!1191836 m!1100317))

(declare-fun m!1100319 () Bool)

(assert (=> b!1191836 m!1100319))

(declare-fun m!1100321 () Bool)

(assert (=> b!1191836 m!1100321))

(declare-fun m!1100323 () Bool)

(assert (=> b!1191835 m!1100323))

(declare-fun m!1100325 () Bool)

(assert (=> b!1191840 m!1100325))

(declare-fun m!1100327 () Bool)

(assert (=> b!1191834 m!1100327))

(declare-fun m!1100329 () Bool)

(assert (=> b!1191838 m!1100329))

(declare-fun m!1100331 () Bool)

(assert (=> b!1191838 m!1100331))

(declare-fun m!1100333 () Bool)

(assert (=> b!1191838 m!1100333))

(declare-fun m!1100335 () Bool)

(assert (=> b!1191838 m!1100335))

(declare-fun m!1100337 () Bool)

(assert (=> b!1191830 m!1100337))

(check-sat (not b!1191831) (not b!1191836) (not b!1191841) (not b!1191829) (not b_lambda!20767) (not b!1191834) (not b!1191840) (not mapNonEmpty!47030) (not b_next!25605) (not start!100062) b_and!42093 (not b!1191828) (not b!1191838) (not b!1191830) tp_is_empty!30135)
(check-sat b_and!42093 (not b_next!25605))
