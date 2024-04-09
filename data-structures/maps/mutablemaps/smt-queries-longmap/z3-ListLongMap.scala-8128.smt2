; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99672 () Bool)

(assert start!99672)

(declare-fun b_free!25215 () Bool)

(declare-fun b_next!25215 () Bool)

(assert (=> start!99672 (= b_free!25215 (not b_next!25215))))

(declare-fun tp!88359 () Bool)

(declare-fun b_and!41311 () Bool)

(assert (=> start!99672 (= tp!88359 b_and!41311)))

(declare-fun b!1180825 () Bool)

(declare-fun res!784722 () Bool)

(declare-fun e!671381 () Bool)

(assert (=> b!1180825 (=> (not res!784722) (not e!671381))))

(declare-datatypes ((array!76258 0))(
  ( (array!76259 (arr!36775 (Array (_ BitVec 32) (_ BitVec 64))) (size!37312 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76258)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1180825 (= res!784722 (= (select (arr!36775 _keys!1208) i!673) k0!934))))

(declare-fun b!1180827 () Bool)

(declare-fun e!671383 () Bool)

(assert (=> b!1180827 (= e!671383 true)))

(declare-fun e!671373 () Bool)

(assert (=> b!1180827 e!671373))

(declare-fun res!784730 () Bool)

(assert (=> b!1180827 (=> (not res!784730) (not e!671373))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1180827 (= res!784730 (not (= (select (arr!36775 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38964 0))(
  ( (Unit!38965) )
))
(declare-fun lt!533953 () Unit!38964)

(declare-fun e!671374 () Unit!38964)

(assert (=> b!1180827 (= lt!533953 e!671374)))

(declare-fun c!116894 () Bool)

(assert (=> b!1180827 (= c!116894 (= (select (arr!36775 _keys!1208) from!1455) k0!934))))

(declare-fun e!671378 () Bool)

(assert (=> b!1180827 e!671378))

(declare-fun res!784728 () Bool)

(assert (=> b!1180827 (=> (not res!784728) (not e!671378))))

(declare-datatypes ((V!44787 0))(
  ( (V!44788 (val!14929 Int)) )
))
(declare-datatypes ((tuple2!19242 0))(
  ( (tuple2!19243 (_1!9631 (_ BitVec 64)) (_2!9631 V!44787)) )
))
(declare-datatypes ((List!26003 0))(
  ( (Nil!26000) (Cons!25999 (h!27208 tuple2!19242) (t!38217 List!26003)) )
))
(declare-datatypes ((ListLongMap!17223 0))(
  ( (ListLongMap!17224 (toList!8627 List!26003)) )
))
(declare-fun lt!533957 () ListLongMap!17223)

(declare-fun lt!533959 () tuple2!19242)

(declare-fun lt!533961 () ListLongMap!17223)

(declare-fun +!3846 (ListLongMap!17223 tuple2!19242) ListLongMap!17223)

(assert (=> b!1180827 (= res!784728 (= lt!533961 (+!3846 lt!533957 lt!533959)))))

(declare-fun lt!533956 () V!44787)

(declare-datatypes ((ValueCell!14163 0))(
  ( (ValueCellFull!14163 (v!17568 V!44787)) (EmptyCell!14163) )
))
(declare-datatypes ((array!76260 0))(
  ( (array!76261 (arr!36776 (Array (_ BitVec 32) ValueCell!14163)) (size!37313 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76260)

(declare-fun get!18841 (ValueCell!14163 V!44787) V!44787)

(assert (=> b!1180827 (= lt!533959 (tuple2!19243 (select (arr!36775 _keys!1208) from!1455) (get!18841 (select (arr!36776 _values!996) from!1455) lt!533956)))))

(declare-fun b!1180828 () Bool)

(declare-fun res!784736 () Bool)

(assert (=> b!1180828 (=> (not res!784736) (not e!671381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180828 (= res!784736 (validKeyInArray!0 k0!934))))

(declare-fun b!1180829 () Bool)

(declare-fun lt!533960 () ListLongMap!17223)

(assert (=> b!1180829 (= e!671373 (= lt!533957 lt!533960))))

(declare-fun b!1180830 () Bool)

(declare-fun Unit!38966 () Unit!38964)

(assert (=> b!1180830 (= e!671374 Unit!38966)))

(declare-fun e!671377 () Bool)

(declare-fun b!1180831 () Bool)

(declare-fun arrayContainsKey!0 (array!76258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180831 (= e!671377 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180832 () Bool)

(declare-fun e!671371 () Bool)

(declare-fun tp_is_empty!29745 () Bool)

(assert (=> b!1180832 (= e!671371 tp_is_empty!29745)))

(declare-fun b!1180833 () Bool)

(declare-fun res!784731 () Bool)

(assert (=> b!1180833 (=> (not res!784731) (not e!671381))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180833 (= res!784731 (validMask!0 mask!1564))))

(declare-fun b!1180834 () Bool)

(declare-fun e!671380 () Bool)

(declare-fun e!671376 () Bool)

(assert (=> b!1180834 (= e!671380 (not e!671376))))

(declare-fun res!784726 () Bool)

(assert (=> b!1180834 (=> res!784726 e!671376)))

(assert (=> b!1180834 (= res!784726 (bvsgt from!1455 i!673))))

(assert (=> b!1180834 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533950 () Unit!38964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76258 (_ BitVec 64) (_ BitVec 32)) Unit!38964)

(assert (=> b!1180834 (= lt!533950 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180835 () Bool)

(declare-fun e!671375 () Bool)

(declare-fun mapRes!46445 () Bool)

(assert (=> b!1180835 (= e!671375 (and e!671371 mapRes!46445))))

(declare-fun condMapEmpty!46445 () Bool)

(declare-fun mapDefault!46445 () ValueCell!14163)

(assert (=> b!1180835 (= condMapEmpty!46445 (= (arr!36776 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14163)) mapDefault!46445)))))

(declare-fun b!1180836 () Bool)

(declare-fun res!784738 () Bool)

(assert (=> b!1180836 (=> (not res!784738) (not e!671381))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1180836 (= res!784738 (and (= (size!37313 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37312 _keys!1208) (size!37313 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180837 () Bool)

(assert (=> b!1180837 (= e!671378 e!671377)))

(declare-fun res!784724 () Bool)

(assert (=> b!1180837 (=> res!784724 e!671377)))

(assert (=> b!1180837 (= res!784724 (not (= (select (arr!36775 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!46445 () Bool)

(declare-fun tp!88360 () Bool)

(declare-fun e!671382 () Bool)

(assert (=> mapNonEmpty!46445 (= mapRes!46445 (and tp!88360 e!671382))))

(declare-fun mapRest!46445 () (Array (_ BitVec 32) ValueCell!14163))

(declare-fun mapValue!46445 () ValueCell!14163)

(declare-fun mapKey!46445 () (_ BitVec 32))

(assert (=> mapNonEmpty!46445 (= (arr!36776 _values!996) (store mapRest!46445 mapKey!46445 mapValue!46445))))

(declare-fun res!784725 () Bool)

(assert (=> start!99672 (=> (not res!784725) (not e!671381))))

(assert (=> start!99672 (= res!784725 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37312 _keys!1208))))))

(assert (=> start!99672 e!671381))

(assert (=> start!99672 tp_is_empty!29745))

(declare-fun array_inv!27958 (array!76258) Bool)

(assert (=> start!99672 (array_inv!27958 _keys!1208)))

(assert (=> start!99672 true))

(assert (=> start!99672 tp!88359))

(declare-fun array_inv!27959 (array!76260) Bool)

(assert (=> start!99672 (and (array_inv!27959 _values!996) e!671375)))

(declare-fun b!1180826 () Bool)

(assert (=> b!1180826 (= e!671381 e!671380)))

(declare-fun res!784737 () Bool)

(assert (=> b!1180826 (=> (not res!784737) (not e!671380))))

(declare-fun lt!533964 () array!76258)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76258 (_ BitVec 32)) Bool)

(assert (=> b!1180826 (= res!784737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533964 mask!1564))))

(assert (=> b!1180826 (= lt!533964 (array!76259 (store (arr!36775 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37312 _keys!1208)))))

(declare-fun b!1180838 () Bool)

(declare-fun e!671372 () Bool)

(assert (=> b!1180838 (= e!671376 e!671372)))

(declare-fun res!784732 () Bool)

(assert (=> b!1180838 (=> res!784732 e!671372)))

(assert (=> b!1180838 (= res!784732 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44787)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533963 () array!76260)

(declare-fun minValue!944 () V!44787)

(declare-fun getCurrentListMapNoExtraKeys!5052 (array!76258 array!76260 (_ BitVec 32) (_ BitVec 32) V!44787 V!44787 (_ BitVec 32) Int) ListLongMap!17223)

(assert (=> b!1180838 (= lt!533961 (getCurrentListMapNoExtraKeys!5052 lt!533964 lt!533963 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1180838 (= lt!533963 (array!76261 (store (arr!36776 _values!996) i!673 (ValueCellFull!14163 lt!533956)) (size!37313 _values!996)))))

(declare-fun dynLambda!3021 (Int (_ BitVec 64)) V!44787)

(assert (=> b!1180838 (= lt!533956 (dynLambda!3021 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533958 () ListLongMap!17223)

(assert (=> b!1180838 (= lt!533958 (getCurrentListMapNoExtraKeys!5052 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1180839 () Bool)

(declare-fun res!784729 () Bool)

(assert (=> b!1180839 (=> (not res!784729) (not e!671381))))

(declare-datatypes ((List!26004 0))(
  ( (Nil!26001) (Cons!26000 (h!27209 (_ BitVec 64)) (t!38218 List!26004)) )
))
(declare-fun arrayNoDuplicates!0 (array!76258 (_ BitVec 32) List!26004) Bool)

(assert (=> b!1180839 (= res!784729 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26001))))

(declare-fun b!1180840 () Bool)

(assert (=> b!1180840 (= e!671382 tp_is_empty!29745)))

(declare-fun b!1180841 () Bool)

(assert (=> b!1180841 (= e!671372 e!671383)))

(declare-fun res!784727 () Bool)

(assert (=> b!1180841 (=> res!784727 e!671383)))

(assert (=> b!1180841 (= res!784727 (not (validKeyInArray!0 (select (arr!36775 _keys!1208) from!1455))))))

(assert (=> b!1180841 (= lt!533960 lt!533957)))

(declare-fun lt!533955 () ListLongMap!17223)

(declare-fun -!1617 (ListLongMap!17223 (_ BitVec 64)) ListLongMap!17223)

(assert (=> b!1180841 (= lt!533957 (-!1617 lt!533955 k0!934))))

(assert (=> b!1180841 (= lt!533960 (getCurrentListMapNoExtraKeys!5052 lt!533964 lt!533963 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1180841 (= lt!533955 (getCurrentListMapNoExtraKeys!5052 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533962 () Unit!38964)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!841 (array!76258 array!76260 (_ BitVec 32) (_ BitVec 32) V!44787 V!44787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38964)

(assert (=> b!1180841 (= lt!533962 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!841 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180842 () Bool)

(declare-fun res!784723 () Bool)

(assert (=> b!1180842 (=> (not res!784723) (not e!671381))))

(assert (=> b!1180842 (= res!784723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180843 () Bool)

(declare-fun res!784735 () Bool)

(assert (=> b!1180843 (=> (not res!784735) (not e!671380))))

(assert (=> b!1180843 (= res!784735 (arrayNoDuplicates!0 lt!533964 #b00000000000000000000000000000000 Nil!26001))))

(declare-fun b!1180844 () Bool)

(declare-fun res!784733 () Bool)

(assert (=> b!1180844 (=> (not res!784733) (not e!671381))))

(assert (=> b!1180844 (= res!784733 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37312 _keys!1208))))))

(declare-fun mapIsEmpty!46445 () Bool)

(assert (=> mapIsEmpty!46445 mapRes!46445))

(declare-fun b!1180845 () Bool)

(declare-fun res!784734 () Bool)

(assert (=> b!1180845 (=> (not res!784734) (not e!671373))))

(assert (=> b!1180845 (= res!784734 (= lt!533958 (+!3846 lt!533955 lt!533959)))))

(declare-fun b!1180846 () Bool)

(declare-fun Unit!38967 () Unit!38964)

(assert (=> b!1180846 (= e!671374 Unit!38967)))

(declare-fun lt!533954 () Unit!38964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76258 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38964)

(assert (=> b!1180846 (= lt!533954 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180846 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533951 () Unit!38964)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76258 (_ BitVec 32) (_ BitVec 32)) Unit!38964)

(assert (=> b!1180846 (= lt!533951 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180846 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26001)))

(declare-fun lt!533952 () Unit!38964)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76258 (_ BitVec 64) (_ BitVec 32) List!26004) Unit!38964)

(assert (=> b!1180846 (= lt!533952 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26001))))

(assert (=> b!1180846 false))

(assert (= (and start!99672 res!784725) b!1180833))

(assert (= (and b!1180833 res!784731) b!1180836))

(assert (= (and b!1180836 res!784738) b!1180842))

(assert (= (and b!1180842 res!784723) b!1180839))

(assert (= (and b!1180839 res!784729) b!1180844))

(assert (= (and b!1180844 res!784733) b!1180828))

(assert (= (and b!1180828 res!784736) b!1180825))

(assert (= (and b!1180825 res!784722) b!1180826))

(assert (= (and b!1180826 res!784737) b!1180843))

(assert (= (and b!1180843 res!784735) b!1180834))

(assert (= (and b!1180834 (not res!784726)) b!1180838))

(assert (= (and b!1180838 (not res!784732)) b!1180841))

(assert (= (and b!1180841 (not res!784727)) b!1180827))

(assert (= (and b!1180827 res!784728) b!1180837))

(assert (= (and b!1180837 (not res!784724)) b!1180831))

(assert (= (and b!1180827 c!116894) b!1180846))

(assert (= (and b!1180827 (not c!116894)) b!1180830))

(assert (= (and b!1180827 res!784730) b!1180845))

(assert (= (and b!1180845 res!784734) b!1180829))

(assert (= (and b!1180835 condMapEmpty!46445) mapIsEmpty!46445))

(assert (= (and b!1180835 (not condMapEmpty!46445)) mapNonEmpty!46445))

(get-info :version)

(assert (= (and mapNonEmpty!46445 ((_ is ValueCellFull!14163) mapValue!46445)) b!1180840))

(assert (= (and b!1180835 ((_ is ValueCellFull!14163) mapDefault!46445)) b!1180832))

(assert (= start!99672 b!1180835))

(declare-fun b_lambda!20377 () Bool)

(assert (=> (not b_lambda!20377) (not b!1180838)))

(declare-fun t!38216 () Bool)

(declare-fun tb!10035 () Bool)

(assert (=> (and start!99672 (= defaultEntry!1004 defaultEntry!1004) t!38216) tb!10035))

(declare-fun result!20629 () Bool)

(assert (=> tb!10035 (= result!20629 tp_is_empty!29745)))

(assert (=> b!1180838 t!38216))

(declare-fun b_and!41313 () Bool)

(assert (= b_and!41311 (and (=> t!38216 result!20629) b_and!41313)))

(declare-fun m!1088819 () Bool)

(assert (=> b!1180827 m!1088819))

(declare-fun m!1088821 () Bool)

(assert (=> b!1180827 m!1088821))

(declare-fun m!1088823 () Bool)

(assert (=> b!1180827 m!1088823))

(assert (=> b!1180827 m!1088823))

(declare-fun m!1088825 () Bool)

(assert (=> b!1180827 m!1088825))

(declare-fun m!1088827 () Bool)

(assert (=> b!1180839 m!1088827))

(declare-fun m!1088829 () Bool)

(assert (=> b!1180833 m!1088829))

(declare-fun m!1088831 () Bool)

(assert (=> b!1180831 m!1088831))

(declare-fun m!1088833 () Bool)

(assert (=> b!1180838 m!1088833))

(declare-fun m!1088835 () Bool)

(assert (=> b!1180838 m!1088835))

(declare-fun m!1088837 () Bool)

(assert (=> b!1180838 m!1088837))

(declare-fun m!1088839 () Bool)

(assert (=> b!1180838 m!1088839))

(declare-fun m!1088841 () Bool)

(assert (=> b!1180828 m!1088841))

(declare-fun m!1088843 () Bool)

(assert (=> b!1180843 m!1088843))

(declare-fun m!1088845 () Bool)

(assert (=> b!1180846 m!1088845))

(declare-fun m!1088847 () Bool)

(assert (=> b!1180846 m!1088847))

(declare-fun m!1088849 () Bool)

(assert (=> b!1180846 m!1088849))

(declare-fun m!1088851 () Bool)

(assert (=> b!1180846 m!1088851))

(declare-fun m!1088853 () Bool)

(assert (=> b!1180846 m!1088853))

(declare-fun m!1088855 () Bool)

(assert (=> b!1180845 m!1088855))

(declare-fun m!1088857 () Bool)

(assert (=> mapNonEmpty!46445 m!1088857))

(declare-fun m!1088859 () Bool)

(assert (=> b!1180826 m!1088859))

(declare-fun m!1088861 () Bool)

(assert (=> b!1180826 m!1088861))

(assert (=> b!1180837 m!1088819))

(declare-fun m!1088863 () Bool)

(assert (=> b!1180842 m!1088863))

(declare-fun m!1088865 () Bool)

(assert (=> start!99672 m!1088865))

(declare-fun m!1088867 () Bool)

(assert (=> start!99672 m!1088867))

(declare-fun m!1088869 () Bool)

(assert (=> b!1180834 m!1088869))

(declare-fun m!1088871 () Bool)

(assert (=> b!1180834 m!1088871))

(declare-fun m!1088873 () Bool)

(assert (=> b!1180825 m!1088873))

(declare-fun m!1088875 () Bool)

(assert (=> b!1180841 m!1088875))

(declare-fun m!1088877 () Bool)

(assert (=> b!1180841 m!1088877))

(declare-fun m!1088879 () Bool)

(assert (=> b!1180841 m!1088879))

(assert (=> b!1180841 m!1088819))

(declare-fun m!1088881 () Bool)

(assert (=> b!1180841 m!1088881))

(assert (=> b!1180841 m!1088819))

(declare-fun m!1088883 () Bool)

(assert (=> b!1180841 m!1088883))

(check-sat (not b!1180841) (not b!1180838) (not b!1180833) (not b!1180845) (not b!1180846) (not b!1180843) (not b_next!25215) tp_is_empty!29745 (not b!1180827) (not start!99672) (not b!1180831) (not b!1180828) (not b!1180839) (not b!1180834) (not b_lambda!20377) b_and!41313 (not mapNonEmpty!46445) (not b!1180842) (not b!1180826))
(check-sat b_and!41313 (not b_next!25215))
