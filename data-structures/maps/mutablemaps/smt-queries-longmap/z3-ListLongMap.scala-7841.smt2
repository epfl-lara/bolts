; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97828 () Bool)

(assert start!97828)

(declare-fun b_free!23493 () Bool)

(declare-fun b_next!23493 () Bool)

(assert (=> start!97828 (= b_free!23493 (not b_next!23493))))

(declare-fun tp!83184 () Bool)

(declare-fun b_and!37791 () Bool)

(assert (=> start!97828 (= tp!83184 b_and!37791)))

(declare-fun b!1118744 () Bool)

(declare-fun e!637239 () Bool)

(declare-fun e!637242 () Bool)

(assert (=> b!1118744 (= e!637239 e!637242)))

(declare-fun res!747316 () Bool)

(assert (=> b!1118744 (=> (not res!747316) (not e!637242))))

(declare-datatypes ((array!72874 0))(
  ( (array!72875 (arr!35086 (Array (_ BitVec 32) (_ BitVec 64))) (size!35623 (_ BitVec 32))) )
))
(declare-fun lt!497547 () array!72874)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72874 (_ BitVec 32)) Bool)

(assert (=> b!1118744 (= res!747316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497547 mask!1564))))

(declare-fun _keys!1208 () array!72874)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118744 (= lt!497547 (array!72875 (store (arr!35086 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35623 _keys!1208)))))

(declare-fun b!1118745 () Bool)

(declare-fun e!637241 () Bool)

(declare-fun e!637243 () Bool)

(declare-fun mapRes!43852 () Bool)

(assert (=> b!1118745 (= e!637241 (and e!637243 mapRes!43852))))

(declare-fun condMapEmpty!43852 () Bool)

(declare-datatypes ((V!42491 0))(
  ( (V!42492 (val!14068 Int)) )
))
(declare-datatypes ((ValueCell!13302 0))(
  ( (ValueCellFull!13302 (v!16702 V!42491)) (EmptyCell!13302) )
))
(declare-datatypes ((array!72876 0))(
  ( (array!72877 (arr!35087 (Array (_ BitVec 32) ValueCell!13302)) (size!35624 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72876)

(declare-fun mapDefault!43852 () ValueCell!13302)

(assert (=> b!1118745 (= condMapEmpty!43852 (= (arr!35087 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13302)) mapDefault!43852)))))

(declare-fun mapIsEmpty!43852 () Bool)

(assert (=> mapIsEmpty!43852 mapRes!43852))

(declare-fun b!1118746 () Bool)

(declare-fun tp_is_empty!28023 () Bool)

(assert (=> b!1118746 (= e!637243 tp_is_empty!28023)))

(declare-fun b!1118747 () Bool)

(declare-fun res!747317 () Bool)

(assert (=> b!1118747 (=> (not res!747317) (not e!637239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118747 (= res!747317 (validMask!0 mask!1564))))

(declare-fun b!1118748 () Bool)

(declare-fun res!747308 () Bool)

(assert (=> b!1118748 (=> (not res!747308) (not e!637239))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118748 (= res!747308 (validKeyInArray!0 k0!934))))

(declare-fun b!1118749 () Bool)

(declare-fun res!747318 () Bool)

(assert (=> b!1118749 (=> (not res!747318) (not e!637239))))

(declare-datatypes ((List!24535 0))(
  ( (Nil!24532) (Cons!24531 (h!25740 (_ BitVec 64)) (t!35027 List!24535)) )
))
(declare-fun arrayNoDuplicates!0 (array!72874 (_ BitVec 32) List!24535) Bool)

(assert (=> b!1118749 (= res!747318 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24532))))

(declare-fun b!1118751 () Bool)

(declare-fun res!747313 () Bool)

(assert (=> b!1118751 (=> (not res!747313) (not e!637239))))

(assert (=> b!1118751 (= res!747313 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35623 _keys!1208))))))

(declare-fun mapNonEmpty!43852 () Bool)

(declare-fun tp!83183 () Bool)

(declare-fun e!637240 () Bool)

(assert (=> mapNonEmpty!43852 (= mapRes!43852 (and tp!83183 e!637240))))

(declare-fun mapKey!43852 () (_ BitVec 32))

(declare-fun mapRest!43852 () (Array (_ BitVec 32) ValueCell!13302))

(declare-fun mapValue!43852 () ValueCell!13302)

(assert (=> mapNonEmpty!43852 (= (arr!35087 _values!996) (store mapRest!43852 mapKey!43852 mapValue!43852))))

(declare-fun b!1118752 () Bool)

(declare-fun res!747314 () Bool)

(assert (=> b!1118752 (=> (not res!747314) (not e!637239))))

(assert (=> b!1118752 (= res!747314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118753 () Bool)

(declare-fun e!637238 () Bool)

(assert (=> b!1118753 (= e!637242 (not e!637238))))

(declare-fun res!747310 () Bool)

(assert (=> b!1118753 (=> res!747310 e!637238)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1118753 (= res!747310 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118753 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36623 0))(
  ( (Unit!36624) )
))
(declare-fun lt!497548 () Unit!36623)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72874 (_ BitVec 64) (_ BitVec 32)) Unit!36623)

(assert (=> b!1118753 (= lt!497548 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118754 () Bool)

(assert (=> b!1118754 (= e!637238 true)))

(declare-fun zeroValue!944 () V!42491)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17698 0))(
  ( (tuple2!17699 (_1!8859 (_ BitVec 64)) (_2!8859 V!42491)) )
))
(declare-datatypes ((List!24536 0))(
  ( (Nil!24533) (Cons!24532 (h!25741 tuple2!17698) (t!35028 List!24536)) )
))
(declare-datatypes ((ListLongMap!15679 0))(
  ( (ListLongMap!15680 (toList!7855 List!24536)) )
))
(declare-fun lt!497550 () ListLongMap!15679)

(declare-fun minValue!944 () V!42491)

(declare-fun getCurrentListMapNoExtraKeys!4316 (array!72874 array!72876 (_ BitVec 32) (_ BitVec 32) V!42491 V!42491 (_ BitVec 32) Int) ListLongMap!15679)

(declare-fun dynLambda!2418 (Int (_ BitVec 64)) V!42491)

(assert (=> b!1118754 (= lt!497550 (getCurrentListMapNoExtraKeys!4316 lt!497547 (array!72877 (store (arr!35087 _values!996) i!673 (ValueCellFull!13302 (dynLambda!2418 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35624 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497549 () ListLongMap!15679)

(assert (=> b!1118754 (= lt!497549 (getCurrentListMapNoExtraKeys!4316 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118755 () Bool)

(declare-fun res!747309 () Bool)

(assert (=> b!1118755 (=> (not res!747309) (not e!637239))))

(assert (=> b!1118755 (= res!747309 (= (select (arr!35086 _keys!1208) i!673) k0!934))))

(declare-fun b!1118756 () Bool)

(declare-fun res!747315 () Bool)

(assert (=> b!1118756 (=> (not res!747315) (not e!637239))))

(assert (=> b!1118756 (= res!747315 (and (= (size!35624 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35623 _keys!1208) (size!35624 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118757 () Bool)

(declare-fun res!747312 () Bool)

(assert (=> b!1118757 (=> (not res!747312) (not e!637242))))

(assert (=> b!1118757 (= res!747312 (arrayNoDuplicates!0 lt!497547 #b00000000000000000000000000000000 Nil!24532))))

(declare-fun b!1118750 () Bool)

(assert (=> b!1118750 (= e!637240 tp_is_empty!28023)))

(declare-fun res!747311 () Bool)

(assert (=> start!97828 (=> (not res!747311) (not e!637239))))

(assert (=> start!97828 (= res!747311 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35623 _keys!1208))))))

(assert (=> start!97828 e!637239))

(assert (=> start!97828 tp_is_empty!28023))

(declare-fun array_inv!26820 (array!72874) Bool)

(assert (=> start!97828 (array_inv!26820 _keys!1208)))

(assert (=> start!97828 true))

(assert (=> start!97828 tp!83184))

(declare-fun array_inv!26821 (array!72876) Bool)

(assert (=> start!97828 (and (array_inv!26821 _values!996) e!637241)))

(assert (= (and start!97828 res!747311) b!1118747))

(assert (= (and b!1118747 res!747317) b!1118756))

(assert (= (and b!1118756 res!747315) b!1118752))

(assert (= (and b!1118752 res!747314) b!1118749))

(assert (= (and b!1118749 res!747318) b!1118751))

(assert (= (and b!1118751 res!747313) b!1118748))

(assert (= (and b!1118748 res!747308) b!1118755))

(assert (= (and b!1118755 res!747309) b!1118744))

(assert (= (and b!1118744 res!747316) b!1118757))

(assert (= (and b!1118757 res!747312) b!1118753))

(assert (= (and b!1118753 (not res!747310)) b!1118754))

(assert (= (and b!1118745 condMapEmpty!43852) mapIsEmpty!43852))

(assert (= (and b!1118745 (not condMapEmpty!43852)) mapNonEmpty!43852))

(get-info :version)

(assert (= (and mapNonEmpty!43852 ((_ is ValueCellFull!13302) mapValue!43852)) b!1118750))

(assert (= (and b!1118745 ((_ is ValueCellFull!13302) mapDefault!43852)) b!1118746))

(assert (= start!97828 b!1118745))

(declare-fun b_lambda!18497 () Bool)

(assert (=> (not b_lambda!18497) (not b!1118754)))

(declare-fun t!35026 () Bool)

(declare-fun tb!8313 () Bool)

(assert (=> (and start!97828 (= defaultEntry!1004 defaultEntry!1004) t!35026) tb!8313))

(declare-fun result!17179 () Bool)

(assert (=> tb!8313 (= result!17179 tp_is_empty!28023)))

(assert (=> b!1118754 t!35026))

(declare-fun b_and!37793 () Bool)

(assert (= b_and!37791 (and (=> t!35026 result!17179) b_and!37793)))

(declare-fun m!1034291 () Bool)

(assert (=> b!1118749 m!1034291))

(declare-fun m!1034293 () Bool)

(assert (=> b!1118757 m!1034293))

(declare-fun m!1034295 () Bool)

(assert (=> b!1118747 m!1034295))

(declare-fun m!1034297 () Bool)

(assert (=> b!1118744 m!1034297))

(declare-fun m!1034299 () Bool)

(assert (=> b!1118744 m!1034299))

(declare-fun m!1034301 () Bool)

(assert (=> mapNonEmpty!43852 m!1034301))

(declare-fun m!1034303 () Bool)

(assert (=> b!1118753 m!1034303))

(declare-fun m!1034305 () Bool)

(assert (=> b!1118753 m!1034305))

(declare-fun m!1034307 () Bool)

(assert (=> b!1118755 m!1034307))

(declare-fun m!1034309 () Bool)

(assert (=> b!1118748 m!1034309))

(declare-fun m!1034311 () Bool)

(assert (=> b!1118754 m!1034311))

(declare-fun m!1034313 () Bool)

(assert (=> b!1118754 m!1034313))

(declare-fun m!1034315 () Bool)

(assert (=> b!1118754 m!1034315))

(declare-fun m!1034317 () Bool)

(assert (=> b!1118754 m!1034317))

(declare-fun m!1034319 () Bool)

(assert (=> b!1118752 m!1034319))

(declare-fun m!1034321 () Bool)

(assert (=> start!97828 m!1034321))

(declare-fun m!1034323 () Bool)

(assert (=> start!97828 m!1034323))

(check-sat (not b!1118749) (not b!1118747) (not b!1118757) (not b!1118744) (not b!1118753) (not b!1118752) (not start!97828) (not mapNonEmpty!43852) (not b!1118748) b_and!37793 tp_is_empty!28023 (not b_lambda!18497) (not b_next!23493) (not b!1118754))
(check-sat b_and!37793 (not b_next!23493))
