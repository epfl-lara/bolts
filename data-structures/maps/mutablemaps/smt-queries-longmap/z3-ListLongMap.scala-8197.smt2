; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100086 () Bool)

(assert start!100086)

(declare-fun b_free!25629 () Bool)

(declare-fun b_next!25629 () Bool)

(assert (=> start!100086 (= b_free!25629 (not b_next!25629))))

(declare-fun tp!89601 () Bool)

(declare-fun b_and!42139 () Bool)

(assert (=> start!100086 (= tp!89601 b_and!42139)))

(declare-fun b!1192391 () Bool)

(declare-fun res!793305 () Bool)

(declare-fun e!677791 () Bool)

(assert (=> b!1192391 (=> (not res!793305) (not e!677791))))

(declare-datatypes ((array!77082 0))(
  ( (array!77083 (arr!37187 (Array (_ BitVec 32) (_ BitVec 64))) (size!37724 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77082)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45339 0))(
  ( (V!45340 (val!15136 Int)) )
))
(declare-datatypes ((ValueCell!14370 0))(
  ( (ValueCellFull!14370 (v!17775 V!45339)) (EmptyCell!14370) )
))
(declare-datatypes ((array!77084 0))(
  ( (array!77085 (arr!37188 (Array (_ BitVec 32) ValueCell!14370)) (size!37725 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77084)

(assert (=> b!1192391 (= res!793305 (and (= (size!37725 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37724 _keys!1208) (size!37725 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192392 () Bool)

(declare-fun e!677795 () Bool)

(assert (=> b!1192392 (= e!677795 true)))

(declare-fun zeroValue!944 () V!45339)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!542170 () array!77082)

(declare-fun minValue!944 () V!45339)

(declare-fun lt!542169 () array!77084)

(declare-datatypes ((tuple2!19598 0))(
  ( (tuple2!19599 (_1!9809 (_ BitVec 64)) (_2!9809 V!45339)) )
))
(declare-datatypes ((List!26361 0))(
  ( (Nil!26358) (Cons!26357 (h!27566 tuple2!19598) (t!38989 List!26361)) )
))
(declare-datatypes ((ListLongMap!17579 0))(
  ( (ListLongMap!17580 (toList!8805 List!26361)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5219 (array!77082 array!77084 (_ BitVec 32) (_ BitVec 32) V!45339 V!45339 (_ BitVec 32) Int) ListLongMap!17579)

(declare-fun -!1782 (ListLongMap!17579 (_ BitVec 64)) ListLongMap!17579)

(assert (=> b!1192392 (= (getCurrentListMapNoExtraKeys!5219 lt!542170 lt!542169 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1782 (getCurrentListMapNoExtraKeys!5219 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39500 0))(
  ( (Unit!39501) )
))
(declare-fun lt!542171 () Unit!39500)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!988 (array!77082 array!77084 (_ BitVec 32) (_ BitVec 32) V!45339 V!45339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39500)

(assert (=> b!1192392 (= lt!542171 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!988 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192393 () Bool)

(declare-fun e!677792 () Bool)

(declare-fun e!677790 () Bool)

(assert (=> b!1192393 (= e!677792 (not e!677790))))

(declare-fun res!793304 () Bool)

(assert (=> b!1192393 (=> res!793304 e!677790)))

(assert (=> b!1192393 (= res!793304 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192393 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542167 () Unit!39500)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77082 (_ BitVec 64) (_ BitVec 32)) Unit!39500)

(assert (=> b!1192393 (= lt!542167 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1192394 () Bool)

(declare-fun res!793308 () Bool)

(assert (=> b!1192394 (=> (not res!793308) (not e!677791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192394 (= res!793308 (validKeyInArray!0 k0!934))))

(declare-fun b!1192395 () Bool)

(assert (=> b!1192395 (= e!677791 e!677792)))

(declare-fun res!793301 () Bool)

(assert (=> b!1192395 (=> (not res!793301) (not e!677792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77082 (_ BitVec 32)) Bool)

(assert (=> b!1192395 (= res!793301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542170 mask!1564))))

(assert (=> b!1192395 (= lt!542170 (array!77083 (store (arr!37187 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37724 _keys!1208)))))

(declare-fun b!1192396 () Bool)

(declare-fun res!793303 () Bool)

(assert (=> b!1192396 (=> (not res!793303) (not e!677791))))

(assert (=> b!1192396 (= res!793303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47066 () Bool)

(declare-fun mapRes!47066 () Bool)

(assert (=> mapIsEmpty!47066 mapRes!47066))

(declare-fun res!793311 () Bool)

(assert (=> start!100086 (=> (not res!793311) (not e!677791))))

(assert (=> start!100086 (= res!793311 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37724 _keys!1208))))))

(assert (=> start!100086 e!677791))

(declare-fun tp_is_empty!30159 () Bool)

(assert (=> start!100086 tp_is_empty!30159))

(declare-fun array_inv!28256 (array!77082) Bool)

(assert (=> start!100086 (array_inv!28256 _keys!1208)))

(assert (=> start!100086 true))

(assert (=> start!100086 tp!89601))

(declare-fun e!677797 () Bool)

(declare-fun array_inv!28257 (array!77084) Bool)

(assert (=> start!100086 (and (array_inv!28257 _values!996) e!677797)))

(declare-fun b!1192397 () Bool)

(declare-fun e!677796 () Bool)

(assert (=> b!1192397 (= e!677796 tp_is_empty!30159)))

(declare-fun b!1192398 () Bool)

(assert (=> b!1192398 (= e!677797 (and e!677796 mapRes!47066))))

(declare-fun condMapEmpty!47066 () Bool)

(declare-fun mapDefault!47066 () ValueCell!14370)

(assert (=> b!1192398 (= condMapEmpty!47066 (= (arr!37188 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14370)) mapDefault!47066)))))

(declare-fun b!1192399 () Bool)

(declare-fun res!793306 () Bool)

(assert (=> b!1192399 (=> (not res!793306) (not e!677791))))

(assert (=> b!1192399 (= res!793306 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37724 _keys!1208))))))

(declare-fun b!1192400 () Bool)

(declare-fun res!793309 () Bool)

(assert (=> b!1192400 (=> (not res!793309) (not e!677791))))

(assert (=> b!1192400 (= res!793309 (= (select (arr!37187 _keys!1208) i!673) k0!934))))

(declare-fun b!1192401 () Bool)

(declare-fun res!793312 () Bool)

(assert (=> b!1192401 (=> (not res!793312) (not e!677791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192401 (= res!793312 (validMask!0 mask!1564))))

(declare-fun b!1192402 () Bool)

(declare-fun res!793307 () Bool)

(assert (=> b!1192402 (=> (not res!793307) (not e!677791))))

(declare-datatypes ((List!26362 0))(
  ( (Nil!26359) (Cons!26358 (h!27567 (_ BitVec 64)) (t!38990 List!26362)) )
))
(declare-fun arrayNoDuplicates!0 (array!77082 (_ BitVec 32) List!26362) Bool)

(assert (=> b!1192402 (= res!793307 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26359))))

(declare-fun mapNonEmpty!47066 () Bool)

(declare-fun tp!89602 () Bool)

(declare-fun e!677793 () Bool)

(assert (=> mapNonEmpty!47066 (= mapRes!47066 (and tp!89602 e!677793))))

(declare-fun mapValue!47066 () ValueCell!14370)

(declare-fun mapKey!47066 () (_ BitVec 32))

(declare-fun mapRest!47066 () (Array (_ BitVec 32) ValueCell!14370))

(assert (=> mapNonEmpty!47066 (= (arr!37188 _values!996) (store mapRest!47066 mapKey!47066 mapValue!47066))))

(declare-fun b!1192403 () Bool)

(assert (=> b!1192403 (= e!677790 e!677795)))

(declare-fun res!793302 () Bool)

(assert (=> b!1192403 (=> res!793302 e!677795)))

(assert (=> b!1192403 (= res!793302 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542172 () ListLongMap!17579)

(assert (=> b!1192403 (= lt!542172 (getCurrentListMapNoExtraKeys!5219 lt!542170 lt!542169 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3161 (Int (_ BitVec 64)) V!45339)

(assert (=> b!1192403 (= lt!542169 (array!77085 (store (arr!37188 _values!996) i!673 (ValueCellFull!14370 (dynLambda!3161 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37725 _values!996)))))

(declare-fun lt!542168 () ListLongMap!17579)

(assert (=> b!1192403 (= lt!542168 (getCurrentListMapNoExtraKeys!5219 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192404 () Bool)

(assert (=> b!1192404 (= e!677793 tp_is_empty!30159)))

(declare-fun b!1192405 () Bool)

(declare-fun res!793310 () Bool)

(assert (=> b!1192405 (=> (not res!793310) (not e!677792))))

(assert (=> b!1192405 (= res!793310 (arrayNoDuplicates!0 lt!542170 #b00000000000000000000000000000000 Nil!26359))))

(assert (= (and start!100086 res!793311) b!1192401))

(assert (= (and b!1192401 res!793312) b!1192391))

(assert (= (and b!1192391 res!793305) b!1192396))

(assert (= (and b!1192396 res!793303) b!1192402))

(assert (= (and b!1192402 res!793307) b!1192399))

(assert (= (and b!1192399 res!793306) b!1192394))

(assert (= (and b!1192394 res!793308) b!1192400))

(assert (= (and b!1192400 res!793309) b!1192395))

(assert (= (and b!1192395 res!793301) b!1192405))

(assert (= (and b!1192405 res!793310) b!1192393))

(assert (= (and b!1192393 (not res!793304)) b!1192403))

(assert (= (and b!1192403 (not res!793302)) b!1192392))

(assert (= (and b!1192398 condMapEmpty!47066) mapIsEmpty!47066))

(assert (= (and b!1192398 (not condMapEmpty!47066)) mapNonEmpty!47066))

(get-info :version)

(assert (= (and mapNonEmpty!47066 ((_ is ValueCellFull!14370) mapValue!47066)) b!1192404))

(assert (= (and b!1192398 ((_ is ValueCellFull!14370) mapDefault!47066)) b!1192397))

(assert (= start!100086 b!1192398))

(declare-fun b_lambda!20791 () Bool)

(assert (=> (not b_lambda!20791) (not b!1192403)))

(declare-fun t!38988 () Bool)

(declare-fun tb!10449 () Bool)

(assert (=> (and start!100086 (= defaultEntry!1004 defaultEntry!1004) t!38988) tb!10449))

(declare-fun result!21457 () Bool)

(assert (=> tb!10449 (= result!21457 tp_is_empty!30159)))

(assert (=> b!1192403 t!38988))

(declare-fun b_and!42141 () Bool)

(assert (= b_and!42139 (and (=> t!38988 result!21457) b_and!42141)))

(declare-fun m!1100801 () Bool)

(assert (=> mapNonEmpty!47066 m!1100801))

(declare-fun m!1100803 () Bool)

(assert (=> b!1192394 m!1100803))

(declare-fun m!1100805 () Bool)

(assert (=> b!1192395 m!1100805))

(declare-fun m!1100807 () Bool)

(assert (=> b!1192395 m!1100807))

(declare-fun m!1100809 () Bool)

(assert (=> b!1192400 m!1100809))

(declare-fun m!1100811 () Bool)

(assert (=> start!100086 m!1100811))

(declare-fun m!1100813 () Bool)

(assert (=> start!100086 m!1100813))

(declare-fun m!1100815 () Bool)

(assert (=> b!1192392 m!1100815))

(declare-fun m!1100817 () Bool)

(assert (=> b!1192392 m!1100817))

(assert (=> b!1192392 m!1100817))

(declare-fun m!1100819 () Bool)

(assert (=> b!1192392 m!1100819))

(declare-fun m!1100821 () Bool)

(assert (=> b!1192392 m!1100821))

(declare-fun m!1100823 () Bool)

(assert (=> b!1192401 m!1100823))

(declare-fun m!1100825 () Bool)

(assert (=> b!1192393 m!1100825))

(declare-fun m!1100827 () Bool)

(assert (=> b!1192393 m!1100827))

(declare-fun m!1100829 () Bool)

(assert (=> b!1192402 m!1100829))

(declare-fun m!1100831 () Bool)

(assert (=> b!1192403 m!1100831))

(declare-fun m!1100833 () Bool)

(assert (=> b!1192403 m!1100833))

(declare-fun m!1100835 () Bool)

(assert (=> b!1192403 m!1100835))

(declare-fun m!1100837 () Bool)

(assert (=> b!1192403 m!1100837))

(declare-fun m!1100839 () Bool)

(assert (=> b!1192405 m!1100839))

(declare-fun m!1100841 () Bool)

(assert (=> b!1192396 m!1100841))

(check-sat (not b!1192405) (not b!1192395) (not b!1192402) (not b!1192401) (not b_lambda!20791) (not b!1192403) (not b_next!25629) (not mapNonEmpty!47066) (not b!1192392) (not b!1192396) (not b!1192393) tp_is_empty!30159 (not b!1192394) b_and!42141 (not start!100086))
(check-sat b_and!42141 (not b_next!25629))
