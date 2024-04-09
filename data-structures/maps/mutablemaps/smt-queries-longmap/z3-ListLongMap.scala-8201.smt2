; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100110 () Bool)

(assert start!100110)

(declare-fun b_free!25653 () Bool)

(declare-fun b_next!25653 () Bool)

(assert (=> start!100110 (= b_free!25653 (not b_next!25653))))

(declare-fun tp!89674 () Bool)

(declare-fun b_and!42187 () Bool)

(assert (=> start!100110 (= tp!89674 b_and!42187)))

(declare-fun b!1192955 () Bool)

(declare-fun e!678081 () Bool)

(assert (=> b!1192955 (= e!678081 true)))

(declare-datatypes ((V!45371 0))(
  ( (V!45372 (val!15148 Int)) )
))
(declare-fun zeroValue!944 () V!45371)

(declare-datatypes ((array!77130 0))(
  ( (array!77131 (arr!37211 (Array (_ BitVec 32) (_ BitVec 64))) (size!37748 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77130)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14382 0))(
  ( (ValueCellFull!14382 (v!17787 V!45371)) (EmptyCell!14382) )
))
(declare-datatypes ((array!77132 0))(
  ( (array!77133 (arr!37212 (Array (_ BitVec 32) ValueCell!14382)) (size!37749 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77132)

(declare-fun minValue!944 () V!45371)

(declare-fun lt!542386 () array!77130)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!542388 () array!77132)

(declare-datatypes ((tuple2!19620 0))(
  ( (tuple2!19621 (_1!9820 (_ BitVec 64)) (_2!9820 V!45371)) )
))
(declare-datatypes ((List!26378 0))(
  ( (Nil!26375) (Cons!26374 (h!27583 tuple2!19620) (t!39030 List!26378)) )
))
(declare-datatypes ((ListLongMap!17601 0))(
  ( (ListLongMap!17602 (toList!8816 List!26378)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5230 (array!77130 array!77132 (_ BitVec 32) (_ BitVec 32) V!45371 V!45371 (_ BitVec 32) Int) ListLongMap!17601)

(declare-fun -!1790 (ListLongMap!17601 (_ BitVec 64)) ListLongMap!17601)

(assert (=> b!1192955 (= (getCurrentListMapNoExtraKeys!5230 lt!542386 lt!542388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1790 (getCurrentListMapNoExtraKeys!5230 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39516 0))(
  ( (Unit!39517) )
))
(declare-fun lt!542387 () Unit!39516)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!996 (array!77130 array!77132 (_ BitVec 32) (_ BitVec 32) V!45371 V!45371 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39516)

(assert (=> b!1192955 (= lt!542387 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!996 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192956 () Bool)

(declare-fun e!678085 () Bool)

(declare-fun e!678082 () Bool)

(assert (=> b!1192956 (= e!678085 (not e!678082))))

(declare-fun res!793738 () Bool)

(assert (=> b!1192956 (=> res!793738 e!678082)))

(assert (=> b!1192956 (= res!793738 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192956 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542383 () Unit!39516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77130 (_ BitVec 64) (_ BitVec 32)) Unit!39516)

(assert (=> b!1192956 (= lt!542383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47102 () Bool)

(declare-fun mapRes!47102 () Bool)

(assert (=> mapIsEmpty!47102 mapRes!47102))

(declare-fun b!1192957 () Bool)

(declare-fun res!793744 () Bool)

(declare-fun e!678080 () Bool)

(assert (=> b!1192957 (=> (not res!793744) (not e!678080))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77130 (_ BitVec 32)) Bool)

(assert (=> b!1192957 (= res!793744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192958 () Bool)

(declare-fun res!793734 () Bool)

(assert (=> b!1192958 (=> (not res!793734) (not e!678080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192958 (= res!793734 (validMask!0 mask!1564))))

(declare-fun b!1192959 () Bool)

(assert (=> b!1192959 (= e!678082 e!678081)))

(declare-fun res!793733 () Bool)

(assert (=> b!1192959 (=> res!793733 e!678081)))

(assert (=> b!1192959 (= res!793733 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542384 () ListLongMap!17601)

(assert (=> b!1192959 (= lt!542384 (getCurrentListMapNoExtraKeys!5230 lt!542386 lt!542388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3169 (Int (_ BitVec 64)) V!45371)

(assert (=> b!1192959 (= lt!542388 (array!77133 (store (arr!37212 _values!996) i!673 (ValueCellFull!14382 (dynLambda!3169 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37749 _values!996)))))

(declare-fun lt!542385 () ListLongMap!17601)

(assert (=> b!1192959 (= lt!542385 (getCurrentListMapNoExtraKeys!5230 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192960 () Bool)

(declare-fun e!678084 () Bool)

(declare-fun tp_is_empty!30183 () Bool)

(assert (=> b!1192960 (= e!678084 tp_is_empty!30183)))

(declare-fun b!1192961 () Bool)

(declare-fun res!793743 () Bool)

(assert (=> b!1192961 (=> (not res!793743) (not e!678080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192961 (= res!793743 (validKeyInArray!0 k0!934))))

(declare-fun b!1192962 () Bool)

(declare-fun e!678079 () Bool)

(assert (=> b!1192962 (= e!678079 tp_is_empty!30183)))

(declare-fun b!1192963 () Bool)

(declare-fun e!678083 () Bool)

(assert (=> b!1192963 (= e!678083 (and e!678079 mapRes!47102))))

(declare-fun condMapEmpty!47102 () Bool)

(declare-fun mapDefault!47102 () ValueCell!14382)

(assert (=> b!1192963 (= condMapEmpty!47102 (= (arr!37212 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14382)) mapDefault!47102)))))

(declare-fun b!1192964 () Bool)

(assert (=> b!1192964 (= e!678080 e!678085)))

(declare-fun res!793736 () Bool)

(assert (=> b!1192964 (=> (not res!793736) (not e!678085))))

(assert (=> b!1192964 (= res!793736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542386 mask!1564))))

(assert (=> b!1192964 (= lt!542386 (array!77131 (store (arr!37211 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37748 _keys!1208)))))

(declare-fun res!793737 () Bool)

(assert (=> start!100110 (=> (not res!793737) (not e!678080))))

(assert (=> start!100110 (= res!793737 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37748 _keys!1208))))))

(assert (=> start!100110 e!678080))

(assert (=> start!100110 tp_is_empty!30183))

(declare-fun array_inv!28268 (array!77130) Bool)

(assert (=> start!100110 (array_inv!28268 _keys!1208)))

(assert (=> start!100110 true))

(assert (=> start!100110 tp!89674))

(declare-fun array_inv!28269 (array!77132) Bool)

(assert (=> start!100110 (and (array_inv!28269 _values!996) e!678083)))

(declare-fun b!1192965 () Bool)

(declare-fun res!793741 () Bool)

(assert (=> b!1192965 (=> (not res!793741) (not e!678080))))

(assert (=> b!1192965 (= res!793741 (and (= (size!37749 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37748 _keys!1208) (size!37749 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192966 () Bool)

(declare-fun res!793742 () Bool)

(assert (=> b!1192966 (=> (not res!793742) (not e!678080))))

(assert (=> b!1192966 (= res!793742 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37748 _keys!1208))))))

(declare-fun b!1192967 () Bool)

(declare-fun res!793739 () Bool)

(assert (=> b!1192967 (=> (not res!793739) (not e!678080))))

(assert (=> b!1192967 (= res!793739 (= (select (arr!37211 _keys!1208) i!673) k0!934))))

(declare-fun b!1192968 () Bool)

(declare-fun res!793740 () Bool)

(assert (=> b!1192968 (=> (not res!793740) (not e!678085))))

(declare-datatypes ((List!26379 0))(
  ( (Nil!26376) (Cons!26375 (h!27584 (_ BitVec 64)) (t!39031 List!26379)) )
))
(declare-fun arrayNoDuplicates!0 (array!77130 (_ BitVec 32) List!26379) Bool)

(assert (=> b!1192968 (= res!793740 (arrayNoDuplicates!0 lt!542386 #b00000000000000000000000000000000 Nil!26376))))

(declare-fun mapNonEmpty!47102 () Bool)

(declare-fun tp!89673 () Bool)

(assert (=> mapNonEmpty!47102 (= mapRes!47102 (and tp!89673 e!678084))))

(declare-fun mapKey!47102 () (_ BitVec 32))

(declare-fun mapValue!47102 () ValueCell!14382)

(declare-fun mapRest!47102 () (Array (_ BitVec 32) ValueCell!14382))

(assert (=> mapNonEmpty!47102 (= (arr!37212 _values!996) (store mapRest!47102 mapKey!47102 mapValue!47102))))

(declare-fun b!1192969 () Bool)

(declare-fun res!793735 () Bool)

(assert (=> b!1192969 (=> (not res!793735) (not e!678080))))

(assert (=> b!1192969 (= res!793735 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26376))))

(assert (= (and start!100110 res!793737) b!1192958))

(assert (= (and b!1192958 res!793734) b!1192965))

(assert (= (and b!1192965 res!793741) b!1192957))

(assert (= (and b!1192957 res!793744) b!1192969))

(assert (= (and b!1192969 res!793735) b!1192966))

(assert (= (and b!1192966 res!793742) b!1192961))

(assert (= (and b!1192961 res!793743) b!1192967))

(assert (= (and b!1192967 res!793739) b!1192964))

(assert (= (and b!1192964 res!793736) b!1192968))

(assert (= (and b!1192968 res!793740) b!1192956))

(assert (= (and b!1192956 (not res!793738)) b!1192959))

(assert (= (and b!1192959 (not res!793733)) b!1192955))

(assert (= (and b!1192963 condMapEmpty!47102) mapIsEmpty!47102))

(assert (= (and b!1192963 (not condMapEmpty!47102)) mapNonEmpty!47102))

(get-info :version)

(assert (= (and mapNonEmpty!47102 ((_ is ValueCellFull!14382) mapValue!47102)) b!1192960))

(assert (= (and b!1192963 ((_ is ValueCellFull!14382) mapDefault!47102)) b!1192962))

(assert (= start!100110 b!1192963))

(declare-fun b_lambda!20815 () Bool)

(assert (=> (not b_lambda!20815) (not b!1192959)))

(declare-fun t!39029 () Bool)

(declare-fun tb!10473 () Bool)

(assert (=> (and start!100110 (= defaultEntry!1004 defaultEntry!1004) t!39029) tb!10473))

(declare-fun result!21505 () Bool)

(assert (=> tb!10473 (= result!21505 tp_is_empty!30183)))

(assert (=> b!1192959 t!39029))

(declare-fun b_and!42189 () Bool)

(assert (= b_and!42187 (and (=> t!39029 result!21505) b_and!42189)))

(declare-fun m!1101305 () Bool)

(assert (=> b!1192956 m!1101305))

(declare-fun m!1101307 () Bool)

(assert (=> b!1192956 m!1101307))

(declare-fun m!1101309 () Bool)

(assert (=> b!1192955 m!1101309))

(declare-fun m!1101311 () Bool)

(assert (=> b!1192955 m!1101311))

(assert (=> b!1192955 m!1101311))

(declare-fun m!1101313 () Bool)

(assert (=> b!1192955 m!1101313))

(declare-fun m!1101315 () Bool)

(assert (=> b!1192955 m!1101315))

(declare-fun m!1101317 () Bool)

(assert (=> b!1192959 m!1101317))

(declare-fun m!1101319 () Bool)

(assert (=> b!1192959 m!1101319))

(declare-fun m!1101321 () Bool)

(assert (=> b!1192959 m!1101321))

(declare-fun m!1101323 () Bool)

(assert (=> b!1192959 m!1101323))

(declare-fun m!1101325 () Bool)

(assert (=> b!1192957 m!1101325))

(declare-fun m!1101327 () Bool)

(assert (=> b!1192969 m!1101327))

(declare-fun m!1101329 () Bool)

(assert (=> b!1192968 m!1101329))

(declare-fun m!1101331 () Bool)

(assert (=> b!1192961 m!1101331))

(declare-fun m!1101333 () Bool)

(assert (=> b!1192964 m!1101333))

(declare-fun m!1101335 () Bool)

(assert (=> b!1192964 m!1101335))

(declare-fun m!1101337 () Bool)

(assert (=> b!1192967 m!1101337))

(declare-fun m!1101339 () Bool)

(assert (=> start!100110 m!1101339))

(declare-fun m!1101341 () Bool)

(assert (=> start!100110 m!1101341))

(declare-fun m!1101343 () Bool)

(assert (=> b!1192958 m!1101343))

(declare-fun m!1101345 () Bool)

(assert (=> mapNonEmpty!47102 m!1101345))

(check-sat (not start!100110) tp_is_empty!30183 (not b!1192969) (not b!1192968) (not mapNonEmpty!47102) (not b_lambda!20815) (not b!1192961) (not b!1192958) (not b_next!25653) (not b!1192957) (not b!1192964) (not b!1192956) (not b!1192959) b_and!42189 (not b!1192955))
(check-sat b_and!42189 (not b_next!25653))
