; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97882 () Bool)

(assert start!97882)

(declare-fun b_free!23547 () Bool)

(declare-fun b_next!23547 () Bool)

(assert (=> start!97882 (= b_free!23547 (not b_next!23547))))

(declare-fun tp!83346 () Bool)

(declare-fun b_and!37899 () Bool)

(assert (=> start!97882 (= tp!83346 b_and!37899)))

(declare-fun mapNonEmpty!43933 () Bool)

(declare-fun mapRes!43933 () Bool)

(declare-fun tp!83345 () Bool)

(declare-fun e!637807 () Bool)

(assert (=> mapNonEmpty!43933 (= mapRes!43933 (and tp!83345 e!637807))))

(declare-datatypes ((V!42563 0))(
  ( (V!42564 (val!14095 Int)) )
))
(declare-datatypes ((ValueCell!13329 0))(
  ( (ValueCellFull!13329 (v!16729 V!42563)) (EmptyCell!13329) )
))
(declare-fun mapValue!43933 () ValueCell!13329)

(declare-datatypes ((array!72980 0))(
  ( (array!72981 (arr!35139 (Array (_ BitVec 32) ValueCell!13329)) (size!35676 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72980)

(declare-fun mapKey!43933 () (_ BitVec 32))

(declare-fun mapRest!43933 () (Array (_ BitVec 32) ValueCell!13329))

(assert (=> mapNonEmpty!43933 (= (arr!35139 _values!996) (store mapRest!43933 mapKey!43933 mapValue!43933))))

(declare-fun mapIsEmpty!43933 () Bool)

(assert (=> mapIsEmpty!43933 mapRes!43933))

(declare-fun b!1119932 () Bool)

(declare-fun tp_is_empty!28077 () Bool)

(assert (=> b!1119932 (= e!637807 tp_is_empty!28077)))

(declare-fun b!1119933 () Bool)

(declare-fun res!748206 () Bool)

(declare-fun e!637811 () Bool)

(assert (=> b!1119933 (=> (not res!748206) (not e!637811))))

(declare-datatypes ((array!72982 0))(
  ( (array!72983 (arr!35140 (Array (_ BitVec 32) (_ BitVec 64))) (size!35677 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72982)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1119933 (= res!748206 (and (= (size!35676 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35677 _keys!1208) (size!35676 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119934 () Bool)

(declare-fun res!748205 () Bool)

(assert (=> b!1119934 (=> (not res!748205) (not e!637811))))

(declare-datatypes ((List!24579 0))(
  ( (Nil!24576) (Cons!24575 (h!25784 (_ BitVec 64)) (t!35125 List!24579)) )
))
(declare-fun arrayNoDuplicates!0 (array!72982 (_ BitVec 32) List!24579) Bool)

(assert (=> b!1119934 (= res!748205 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24576))))

(declare-fun res!748207 () Bool)

(assert (=> start!97882 (=> (not res!748207) (not e!637811))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97882 (= res!748207 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35677 _keys!1208))))))

(assert (=> start!97882 e!637811))

(assert (=> start!97882 tp_is_empty!28077))

(declare-fun array_inv!26858 (array!72982) Bool)

(assert (=> start!97882 (array_inv!26858 _keys!1208)))

(assert (=> start!97882 true))

(assert (=> start!97882 tp!83346))

(declare-fun e!637808 () Bool)

(declare-fun array_inv!26859 (array!72980) Bool)

(assert (=> start!97882 (and (array_inv!26859 _values!996) e!637808)))

(declare-fun b!1119935 () Bool)

(declare-fun res!748199 () Bool)

(declare-fun e!637805 () Bool)

(assert (=> b!1119935 (=> (not res!748199) (not e!637805))))

(declare-fun lt!497874 () array!72982)

(assert (=> b!1119935 (= res!748199 (arrayNoDuplicates!0 lt!497874 #b00000000000000000000000000000000 Nil!24576))))

(declare-fun b!1119936 () Bool)

(declare-fun res!748208 () Bool)

(assert (=> b!1119936 (=> (not res!748208) (not e!637811))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1119936 (= res!748208 (= (select (arr!35140 _keys!1208) i!673) k0!934))))

(declare-fun b!1119937 () Bool)

(declare-fun res!748200 () Bool)

(assert (=> b!1119937 (=> (not res!748200) (not e!637811))))

(assert (=> b!1119937 (= res!748200 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35677 _keys!1208))))))

(declare-fun b!1119938 () Bool)

(declare-fun e!637806 () Bool)

(assert (=> b!1119938 (= e!637806 tp_is_empty!28077)))

(declare-fun b!1119939 () Bool)

(declare-fun e!637809 () Bool)

(assert (=> b!1119939 (= e!637805 (not e!637809))))

(declare-fun res!748203 () Bool)

(assert (=> b!1119939 (=> res!748203 e!637809)))

(assert (=> b!1119939 (= res!748203 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119939 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36669 0))(
  ( (Unit!36670) )
))
(declare-fun lt!497873 () Unit!36669)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72982 (_ BitVec 64) (_ BitVec 32)) Unit!36669)

(assert (=> b!1119939 (= lt!497873 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1119940 () Bool)

(assert (=> b!1119940 (= e!637811 e!637805)))

(declare-fun res!748209 () Bool)

(assert (=> b!1119940 (=> (not res!748209) (not e!637805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72982 (_ BitVec 32)) Bool)

(assert (=> b!1119940 (= res!748209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497874 mask!1564))))

(assert (=> b!1119940 (= lt!497874 (array!72983 (store (arr!35140 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35677 _keys!1208)))))

(declare-fun b!1119941 () Bool)

(declare-fun res!748202 () Bool)

(assert (=> b!1119941 (=> (not res!748202) (not e!637811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119941 (= res!748202 (validMask!0 mask!1564))))

(declare-fun b!1119942 () Bool)

(declare-fun res!748201 () Bool)

(assert (=> b!1119942 (=> (not res!748201) (not e!637811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119942 (= res!748201 (validKeyInArray!0 k0!934))))

(declare-fun b!1119943 () Bool)

(assert (=> b!1119943 (= e!637809 true)))

(declare-fun zeroValue!944 () V!42563)

(declare-datatypes ((tuple2!17742 0))(
  ( (tuple2!17743 (_1!8881 (_ BitVec 64)) (_2!8881 V!42563)) )
))
(declare-datatypes ((List!24580 0))(
  ( (Nil!24577) (Cons!24576 (h!25785 tuple2!17742) (t!35126 List!24580)) )
))
(declare-datatypes ((ListLongMap!15723 0))(
  ( (ListLongMap!15724 (toList!7877 List!24580)) )
))
(declare-fun lt!497872 () ListLongMap!15723)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42563)

(declare-fun getCurrentListMapNoExtraKeys!4338 (array!72982 array!72980 (_ BitVec 32) (_ BitVec 32) V!42563 V!42563 (_ BitVec 32) Int) ListLongMap!15723)

(declare-fun dynLambda!2440 (Int (_ BitVec 64)) V!42563)

(assert (=> b!1119943 (= lt!497872 (getCurrentListMapNoExtraKeys!4338 lt!497874 (array!72981 (store (arr!35139 _values!996) i!673 (ValueCellFull!13329 (dynLambda!2440 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35676 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497871 () ListLongMap!15723)

(assert (=> b!1119943 (= lt!497871 (getCurrentListMapNoExtraKeys!4338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119944 () Bool)

(assert (=> b!1119944 (= e!637808 (and e!637806 mapRes!43933))))

(declare-fun condMapEmpty!43933 () Bool)

(declare-fun mapDefault!43933 () ValueCell!13329)

(assert (=> b!1119944 (= condMapEmpty!43933 (= (arr!35139 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13329)) mapDefault!43933)))))

(declare-fun b!1119945 () Bool)

(declare-fun res!748204 () Bool)

(assert (=> b!1119945 (=> (not res!748204) (not e!637811))))

(assert (=> b!1119945 (= res!748204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97882 res!748207) b!1119941))

(assert (= (and b!1119941 res!748202) b!1119933))

(assert (= (and b!1119933 res!748206) b!1119945))

(assert (= (and b!1119945 res!748204) b!1119934))

(assert (= (and b!1119934 res!748205) b!1119937))

(assert (= (and b!1119937 res!748200) b!1119942))

(assert (= (and b!1119942 res!748201) b!1119936))

(assert (= (and b!1119936 res!748208) b!1119940))

(assert (= (and b!1119940 res!748209) b!1119935))

(assert (= (and b!1119935 res!748199) b!1119939))

(assert (= (and b!1119939 (not res!748203)) b!1119943))

(assert (= (and b!1119944 condMapEmpty!43933) mapIsEmpty!43933))

(assert (= (and b!1119944 (not condMapEmpty!43933)) mapNonEmpty!43933))

(get-info :version)

(assert (= (and mapNonEmpty!43933 ((_ is ValueCellFull!13329) mapValue!43933)) b!1119932))

(assert (= (and b!1119944 ((_ is ValueCellFull!13329) mapDefault!43933)) b!1119938))

(assert (= start!97882 b!1119944))

(declare-fun b_lambda!18551 () Bool)

(assert (=> (not b_lambda!18551) (not b!1119943)))

(declare-fun t!35124 () Bool)

(declare-fun tb!8367 () Bool)

(assert (=> (and start!97882 (= defaultEntry!1004 defaultEntry!1004) t!35124) tb!8367))

(declare-fun result!17287 () Bool)

(assert (=> tb!8367 (= result!17287 tp_is_empty!28077)))

(assert (=> b!1119943 t!35124))

(declare-fun b_and!37901 () Bool)

(assert (= b_and!37899 (and (=> t!35124 result!17287) b_and!37901)))

(declare-fun m!1035209 () Bool)

(assert (=> start!97882 m!1035209))

(declare-fun m!1035211 () Bool)

(assert (=> start!97882 m!1035211))

(declare-fun m!1035213 () Bool)

(assert (=> b!1119943 m!1035213))

(declare-fun m!1035215 () Bool)

(assert (=> b!1119943 m!1035215))

(declare-fun m!1035217 () Bool)

(assert (=> b!1119943 m!1035217))

(declare-fun m!1035219 () Bool)

(assert (=> b!1119943 m!1035219))

(declare-fun m!1035221 () Bool)

(assert (=> b!1119936 m!1035221))

(declare-fun m!1035223 () Bool)

(assert (=> b!1119945 m!1035223))

(declare-fun m!1035225 () Bool)

(assert (=> b!1119940 m!1035225))

(declare-fun m!1035227 () Bool)

(assert (=> b!1119940 m!1035227))

(declare-fun m!1035229 () Bool)

(assert (=> b!1119939 m!1035229))

(declare-fun m!1035231 () Bool)

(assert (=> b!1119939 m!1035231))

(declare-fun m!1035233 () Bool)

(assert (=> b!1119935 m!1035233))

(declare-fun m!1035235 () Bool)

(assert (=> b!1119934 m!1035235))

(declare-fun m!1035237 () Bool)

(assert (=> b!1119942 m!1035237))

(declare-fun m!1035239 () Bool)

(assert (=> b!1119941 m!1035239))

(declare-fun m!1035241 () Bool)

(assert (=> mapNonEmpty!43933 m!1035241))

(check-sat (not b!1119941) (not start!97882) (not b_lambda!18551) (not b!1119939) (not b!1119934) (not b!1119935) b_and!37901 (not b!1119945) tp_is_empty!28077 (not b!1119940) (not b_next!23547) (not b!1119943) (not mapNonEmpty!43933) (not b!1119942))
(check-sat b_and!37901 (not b_next!23547))
