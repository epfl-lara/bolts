; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101664 () Bool)

(assert start!101664)

(declare-fun b_free!26349 () Bool)

(declare-fun b_next!26349 () Bool)

(assert (=> start!101664 (= b_free!26349 (not b_next!26349))))

(declare-fun tp!92090 () Bool)

(declare-fun b_and!43951 () Bool)

(assert (=> start!101664 (= tp!92090 b_and!43951)))

(declare-fun b!1221971 () Bool)

(declare-fun res!811934 () Bool)

(declare-fun e!694004 () Bool)

(assert (=> b!1221971 (=> (not res!811934) (not e!694004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78864 0))(
  ( (array!78865 (arr!38056 (Array (_ BitVec 32) (_ BitVec 64))) (size!38593 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78864)

(assert (=> b!1221971 (= res!811934 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38593 _keys!1208))))))

(declare-fun b!1221972 () Bool)

(declare-fun e!694006 () Bool)

(declare-fun e!694008 () Bool)

(assert (=> b!1221972 (= e!694006 e!694008)))

(declare-fun res!811944 () Bool)

(assert (=> b!1221972 (=> res!811944 e!694008)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1221972 (= res!811944 (or (bvsge (size!38593 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38593 _keys!1208)) (bvsge from!1455 (size!38593 _keys!1208))))))

(declare-datatypes ((List!27021 0))(
  ( (Nil!27018) (Cons!27017 (h!28226 (_ BitVec 64)) (t!40357 List!27021)) )
))
(declare-fun arrayNoDuplicates!0 (array!78864 (_ BitVec 32) List!27021) Bool)

(assert (=> b!1221972 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27018)))

(declare-datatypes ((Unit!40388 0))(
  ( (Unit!40389) )
))
(declare-fun lt!555863 () Unit!40388)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78864 (_ BitVec 32) (_ BitVec 32)) Unit!40388)

(assert (=> b!1221972 (= lt!555863 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1221972 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555857 () Unit!40388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78864 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40388)

(assert (=> b!1221972 (= lt!555857 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1221973 () Bool)

(declare-fun e!694009 () Bool)

(declare-fun e!694016 () Bool)

(assert (=> b!1221973 (= e!694009 e!694016)))

(declare-fun res!811930 () Bool)

(assert (=> b!1221973 (=> res!811930 e!694016)))

(assert (=> b!1221973 (= res!811930 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46531 0))(
  ( (V!46532 (val!15583 Int)) )
))
(declare-fun zeroValue!944 () V!46531)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!555860 () array!78864)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14817 0))(
  ( (ValueCellFull!14817 (v!18245 V!46531)) (EmptyCell!14817) )
))
(declare-datatypes ((array!78866 0))(
  ( (array!78867 (arr!38057 (Array (_ BitVec 32) ValueCell!14817)) (size!38594 (_ BitVec 32))) )
))
(declare-fun lt!555859 () array!78866)

(declare-datatypes ((tuple2!20206 0))(
  ( (tuple2!20207 (_1!10113 (_ BitVec 64)) (_2!10113 V!46531)) )
))
(declare-datatypes ((List!27022 0))(
  ( (Nil!27019) (Cons!27018 (h!28227 tuple2!20206) (t!40358 List!27022)) )
))
(declare-datatypes ((ListLongMap!18187 0))(
  ( (ListLongMap!18188 (toList!9109 List!27022)) )
))
(declare-fun lt!555856 () ListLongMap!18187)

(declare-fun minValue!944 () V!46531)

(declare-fun getCurrentListMapNoExtraKeys!5507 (array!78864 array!78866 (_ BitVec 32) (_ BitVec 32) V!46531 V!46531 (_ BitVec 32) Int) ListLongMap!18187)

(assert (=> b!1221973 (= lt!555856 (getCurrentListMapNoExtraKeys!5507 lt!555860 lt!555859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78866)

(declare-fun lt!555861 () V!46531)

(assert (=> b!1221973 (= lt!555859 (array!78867 (store (arr!38057 _values!996) i!673 (ValueCellFull!14817 lt!555861)) (size!38594 _values!996)))))

(declare-fun dynLambda!3406 (Int (_ BitVec 64)) V!46531)

(assert (=> b!1221973 (= lt!555861 (dynLambda!3406 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555864 () ListLongMap!18187)

(assert (=> b!1221973 (= lt!555864 (getCurrentListMapNoExtraKeys!5507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!811947 () Bool)

(assert (=> start!101664 (=> (not res!811947) (not e!694004))))

(assert (=> start!101664 (= res!811947 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38593 _keys!1208))))))

(assert (=> start!101664 e!694004))

(declare-fun tp_is_empty!31053 () Bool)

(assert (=> start!101664 tp_is_empty!31053))

(declare-fun array_inv!28872 (array!78864) Bool)

(assert (=> start!101664 (array_inv!28872 _keys!1208)))

(assert (=> start!101664 true))

(assert (=> start!101664 tp!92090))

(declare-fun e!694014 () Bool)

(declare-fun array_inv!28873 (array!78866) Bool)

(assert (=> start!101664 (and (array_inv!28873 _values!996) e!694014)))

(declare-fun e!694011 () Bool)

(declare-fun b!1221974 () Bool)

(assert (=> b!1221974 (= e!694011 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221975 () Bool)

(declare-fun e!694012 () Bool)

(assert (=> b!1221975 (= e!694012 tp_is_empty!31053)))

(declare-fun b!1221976 () Bool)

(declare-fun res!811941 () Bool)

(assert (=> b!1221976 (=> (not res!811941) (not e!694004))))

(assert (=> b!1221976 (= res!811941 (and (= (size!38594 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38593 _keys!1208) (size!38594 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48475 () Bool)

(declare-fun mapRes!48475 () Bool)

(declare-fun tp!92091 () Bool)

(declare-fun e!694010 () Bool)

(assert (=> mapNonEmpty!48475 (= mapRes!48475 (and tp!92091 e!694010))))

(declare-fun mapValue!48475 () ValueCell!14817)

(declare-fun mapKey!48475 () (_ BitVec 32))

(declare-fun mapRest!48475 () (Array (_ BitVec 32) ValueCell!14817))

(assert (=> mapNonEmpty!48475 (= (arr!38057 _values!996) (store mapRest!48475 mapKey!48475 mapValue!48475))))

(declare-fun b!1221977 () Bool)

(declare-fun res!811937 () Bool)

(declare-fun e!694015 () Bool)

(assert (=> b!1221977 (=> (not res!811937) (not e!694015))))

(assert (=> b!1221977 (= res!811937 (arrayNoDuplicates!0 lt!555860 #b00000000000000000000000000000000 Nil!27018))))

(declare-fun b!1221978 () Bool)

(declare-fun res!811932 () Bool)

(assert (=> b!1221978 (=> (not res!811932) (not e!694004))))

(assert (=> b!1221978 (= res!811932 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27018))))

(declare-fun b!1221979 () Bool)

(declare-fun res!811945 () Bool)

(assert (=> b!1221979 (=> (not res!811945) (not e!694004))))

(assert (=> b!1221979 (= res!811945 (= (select (arr!38056 _keys!1208) i!673) k0!934))))

(declare-fun b!1221980 () Bool)

(declare-fun e!694007 () Bool)

(assert (=> b!1221980 (= e!694007 e!694006)))

(declare-fun res!811946 () Bool)

(assert (=> b!1221980 (=> res!811946 e!694006)))

(assert (=> b!1221980 (= res!811946 (not (= (select (arr!38056 _keys!1208) from!1455) k0!934)))))

(declare-fun e!694013 () Bool)

(assert (=> b!1221980 e!694013))

(declare-fun res!811935 () Bool)

(assert (=> b!1221980 (=> (not res!811935) (not e!694013))))

(declare-fun lt!555855 () ListLongMap!18187)

(declare-fun +!4078 (ListLongMap!18187 tuple2!20206) ListLongMap!18187)

(declare-fun get!19466 (ValueCell!14817 V!46531) V!46531)

(assert (=> b!1221980 (= res!811935 (= lt!555856 (+!4078 lt!555855 (tuple2!20207 (select (arr!38056 _keys!1208) from!1455) (get!19466 (select (arr!38057 _values!996) from!1455) lt!555861)))))))

(declare-fun b!1221981 () Bool)

(assert (=> b!1221981 (= e!694004 e!694015)))

(declare-fun res!811933 () Bool)

(assert (=> b!1221981 (=> (not res!811933) (not e!694015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78864 (_ BitVec 32)) Bool)

(assert (=> b!1221981 (= res!811933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555860 mask!1564))))

(assert (=> b!1221981 (= lt!555860 (array!78865 (store (arr!38056 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38593 _keys!1208)))))

(declare-fun b!1221982 () Bool)

(assert (=> b!1221982 (= e!694013 e!694011)))

(declare-fun res!811939 () Bool)

(assert (=> b!1221982 (=> res!811939 e!694011)))

(assert (=> b!1221982 (= res!811939 (not (= (select (arr!38056 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1221983 () Bool)

(assert (=> b!1221983 (= e!694008 true)))

(declare-fun lt!555858 () Bool)

(declare-fun contains!7049 (List!27021 (_ BitVec 64)) Bool)

(assert (=> b!1221983 (= lt!555858 (contains!7049 Nil!27018 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221984 () Bool)

(declare-fun res!811942 () Bool)

(assert (=> b!1221984 (=> (not res!811942) (not e!694004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1221984 (= res!811942 (validMask!0 mask!1564))))

(declare-fun b!1221985 () Bool)

(declare-fun res!811943 () Bool)

(assert (=> b!1221985 (=> res!811943 e!694008)))

(declare-fun noDuplicate!1661 (List!27021) Bool)

(assert (=> b!1221985 (= res!811943 (not (noDuplicate!1661 Nil!27018)))))

(declare-fun b!1221986 () Bool)

(assert (=> b!1221986 (= e!694010 tp_is_empty!31053)))

(declare-fun mapIsEmpty!48475 () Bool)

(assert (=> mapIsEmpty!48475 mapRes!48475))

(declare-fun b!1221987 () Bool)

(assert (=> b!1221987 (= e!694015 (not e!694009))))

(declare-fun res!811931 () Bool)

(assert (=> b!1221987 (=> res!811931 e!694009)))

(assert (=> b!1221987 (= res!811931 (bvsgt from!1455 i!673))))

(assert (=> b!1221987 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555862 () Unit!40388)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78864 (_ BitVec 64) (_ BitVec 32)) Unit!40388)

(assert (=> b!1221987 (= lt!555862 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1221988 () Bool)

(declare-fun res!811948 () Bool)

(assert (=> b!1221988 (=> (not res!811948) (not e!694004))))

(assert (=> b!1221988 (= res!811948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1221989 () Bool)

(assert (=> b!1221989 (= e!694016 e!694007)))

(declare-fun res!811940 () Bool)

(assert (=> b!1221989 (=> res!811940 e!694007)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1221989 (= res!811940 (not (validKeyInArray!0 (select (arr!38056 _keys!1208) from!1455))))))

(declare-fun lt!555866 () ListLongMap!18187)

(assert (=> b!1221989 (= lt!555866 lt!555855)))

(declare-fun lt!555865 () ListLongMap!18187)

(declare-fun -!1953 (ListLongMap!18187 (_ BitVec 64)) ListLongMap!18187)

(assert (=> b!1221989 (= lt!555855 (-!1953 lt!555865 k0!934))))

(assert (=> b!1221989 (= lt!555866 (getCurrentListMapNoExtraKeys!5507 lt!555860 lt!555859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1221989 (= lt!555865 (getCurrentListMapNoExtraKeys!5507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555867 () Unit!40388)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1155 (array!78864 array!78866 (_ BitVec 32) (_ BitVec 32) V!46531 V!46531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40388)

(assert (=> b!1221989 (= lt!555867 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1155 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1221990 () Bool)

(declare-fun res!811936 () Bool)

(assert (=> b!1221990 (=> (not res!811936) (not e!694004))))

(assert (=> b!1221990 (= res!811936 (validKeyInArray!0 k0!934))))

(declare-fun b!1221991 () Bool)

(declare-fun res!811938 () Bool)

(assert (=> b!1221991 (=> res!811938 e!694008)))

(assert (=> b!1221991 (= res!811938 (contains!7049 Nil!27018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1221992 () Bool)

(assert (=> b!1221992 (= e!694014 (and e!694012 mapRes!48475))))

(declare-fun condMapEmpty!48475 () Bool)

(declare-fun mapDefault!48475 () ValueCell!14817)

(assert (=> b!1221992 (= condMapEmpty!48475 (= (arr!38057 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14817)) mapDefault!48475)))))

(assert (= (and start!101664 res!811947) b!1221984))

(assert (= (and b!1221984 res!811942) b!1221976))

(assert (= (and b!1221976 res!811941) b!1221988))

(assert (= (and b!1221988 res!811948) b!1221978))

(assert (= (and b!1221978 res!811932) b!1221971))

(assert (= (and b!1221971 res!811934) b!1221990))

(assert (= (and b!1221990 res!811936) b!1221979))

(assert (= (and b!1221979 res!811945) b!1221981))

(assert (= (and b!1221981 res!811933) b!1221977))

(assert (= (and b!1221977 res!811937) b!1221987))

(assert (= (and b!1221987 (not res!811931)) b!1221973))

(assert (= (and b!1221973 (not res!811930)) b!1221989))

(assert (= (and b!1221989 (not res!811940)) b!1221980))

(assert (= (and b!1221980 res!811935) b!1221982))

(assert (= (and b!1221982 (not res!811939)) b!1221974))

(assert (= (and b!1221980 (not res!811946)) b!1221972))

(assert (= (and b!1221972 (not res!811944)) b!1221985))

(assert (= (and b!1221985 (not res!811943)) b!1221991))

(assert (= (and b!1221991 (not res!811938)) b!1221983))

(assert (= (and b!1221992 condMapEmpty!48475) mapIsEmpty!48475))

(assert (= (and b!1221992 (not condMapEmpty!48475)) mapNonEmpty!48475))

(get-info :version)

(assert (= (and mapNonEmpty!48475 ((_ is ValueCellFull!14817) mapValue!48475)) b!1221986))

(assert (= (and b!1221992 ((_ is ValueCellFull!14817) mapDefault!48475)) b!1221975))

(assert (= start!101664 b!1221992))

(declare-fun b_lambda!22301 () Bool)

(assert (=> (not b_lambda!22301) (not b!1221973)))

(declare-fun t!40356 () Bool)

(declare-fun tb!11157 () Bool)

(assert (=> (and start!101664 (= defaultEntry!1004 defaultEntry!1004) t!40356) tb!11157))

(declare-fun result!22917 () Bool)

(assert (=> tb!11157 (= result!22917 tp_is_empty!31053)))

(assert (=> b!1221973 t!40356))

(declare-fun b_and!43953 () Bool)

(assert (= b_and!43951 (and (=> t!40356 result!22917) b_and!43953)))

(declare-fun m!1126923 () Bool)

(assert (=> b!1221985 m!1126923))

(declare-fun m!1126925 () Bool)

(assert (=> b!1221979 m!1126925))

(declare-fun m!1126927 () Bool)

(assert (=> b!1221973 m!1126927))

(declare-fun m!1126929 () Bool)

(assert (=> b!1221973 m!1126929))

(declare-fun m!1126931 () Bool)

(assert (=> b!1221973 m!1126931))

(declare-fun m!1126933 () Bool)

(assert (=> b!1221973 m!1126933))

(declare-fun m!1126935 () Bool)

(assert (=> b!1221990 m!1126935))

(declare-fun m!1126937 () Bool)

(assert (=> b!1221977 m!1126937))

(declare-fun m!1126939 () Bool)

(assert (=> b!1221981 m!1126939))

(declare-fun m!1126941 () Bool)

(assert (=> b!1221981 m!1126941))

(declare-fun m!1126943 () Bool)

(assert (=> b!1221983 m!1126943))

(declare-fun m!1126945 () Bool)

(assert (=> b!1221984 m!1126945))

(declare-fun m!1126947 () Bool)

(assert (=> b!1221980 m!1126947))

(declare-fun m!1126949 () Bool)

(assert (=> b!1221980 m!1126949))

(assert (=> b!1221980 m!1126949))

(declare-fun m!1126951 () Bool)

(assert (=> b!1221980 m!1126951))

(declare-fun m!1126953 () Bool)

(assert (=> b!1221980 m!1126953))

(assert (=> b!1221982 m!1126947))

(declare-fun m!1126955 () Bool)

(assert (=> b!1221991 m!1126955))

(declare-fun m!1126957 () Bool)

(assert (=> start!101664 m!1126957))

(declare-fun m!1126959 () Bool)

(assert (=> start!101664 m!1126959))

(declare-fun m!1126961 () Bool)

(assert (=> mapNonEmpty!48475 m!1126961))

(declare-fun m!1126963 () Bool)

(assert (=> b!1221972 m!1126963))

(declare-fun m!1126965 () Bool)

(assert (=> b!1221972 m!1126965))

(declare-fun m!1126967 () Bool)

(assert (=> b!1221972 m!1126967))

(declare-fun m!1126969 () Bool)

(assert (=> b!1221972 m!1126969))

(declare-fun m!1126971 () Bool)

(assert (=> b!1221987 m!1126971))

(declare-fun m!1126973 () Bool)

(assert (=> b!1221987 m!1126973))

(declare-fun m!1126975 () Bool)

(assert (=> b!1221988 m!1126975))

(declare-fun m!1126977 () Bool)

(assert (=> b!1221978 m!1126977))

(declare-fun m!1126979 () Bool)

(assert (=> b!1221989 m!1126979))

(declare-fun m!1126981 () Bool)

(assert (=> b!1221989 m!1126981))

(declare-fun m!1126983 () Bool)

(assert (=> b!1221989 m!1126983))

(assert (=> b!1221989 m!1126947))

(declare-fun m!1126985 () Bool)

(assert (=> b!1221989 m!1126985))

(declare-fun m!1126987 () Bool)

(assert (=> b!1221989 m!1126987))

(assert (=> b!1221989 m!1126947))

(declare-fun m!1126989 () Bool)

(assert (=> b!1221974 m!1126989))

(check-sat (not b!1221978) (not b!1221990) (not b!1221987) (not b!1221991) (not b!1221973) (not b_next!26349) (not b!1221989) (not b!1221988) b_and!43953 (not b_lambda!22301) (not mapNonEmpty!48475) (not b!1221972) (not b!1221977) (not start!101664) (not b!1221984) (not b!1221981) (not b!1221985) (not b!1221974) (not b!1221980) tp_is_empty!31053 (not b!1221983))
(check-sat b_and!43953 (not b_next!26349))
