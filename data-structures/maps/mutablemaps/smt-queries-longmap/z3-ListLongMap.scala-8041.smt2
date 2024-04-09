; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99124 () Bool)

(assert start!99124)

(declare-fun b_free!24693 () Bool)

(declare-fun b_next!24693 () Bool)

(assert (=> start!99124 (= b_free!24693 (not b_next!24693))))

(declare-fun tp!86790 () Bool)

(declare-fun b_and!40249 () Bool)

(assert (=> start!99124 (= tp!86790 b_and!40249)))

(declare-fun b!1165306 () Bool)

(declare-fun res!772926 () Bool)

(declare-fun e!662512 () Bool)

(assert (=> b!1165306 (=> (not res!772926) (not e!662512))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165306 (= res!772926 (validMask!0 mask!1564))))

(declare-fun b!1165307 () Bool)

(declare-fun e!662513 () Bool)

(declare-fun e!662511 () Bool)

(assert (=> b!1165307 (= e!662513 (not e!662511))))

(declare-fun res!772928 () Bool)

(assert (=> b!1165307 (=> res!772928 e!662511)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165307 (= res!772928 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75230 0))(
  ( (array!75231 (arr!36262 (Array (_ BitVec 32) (_ BitVec 64))) (size!36799 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75230)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165307 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38350 0))(
  ( (Unit!38351) )
))
(declare-fun lt!524838 () Unit!38350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75230 (_ BitVec 64) (_ BitVec 32)) Unit!38350)

(assert (=> b!1165307 (= lt!524838 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165308 () Bool)

(declare-fun res!772925 () Bool)

(assert (=> b!1165308 (=> (not res!772925) (not e!662512))))

(assert (=> b!1165308 (= res!772925 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36799 _keys!1208))))))

(declare-fun res!772933 () Bool)

(assert (=> start!99124 (=> (not res!772933) (not e!662512))))

(assert (=> start!99124 (= res!772933 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36799 _keys!1208))))))

(assert (=> start!99124 e!662512))

(declare-fun tp_is_empty!29223 () Bool)

(assert (=> start!99124 tp_is_empty!29223))

(declare-fun array_inv!27608 (array!75230) Bool)

(assert (=> start!99124 (array_inv!27608 _keys!1208)))

(assert (=> start!99124 true))

(assert (=> start!99124 tp!86790))

(declare-datatypes ((V!44091 0))(
  ( (V!44092 (val!14668 Int)) )
))
(declare-datatypes ((ValueCell!13902 0))(
  ( (ValueCellFull!13902 (v!17306 V!44091)) (EmptyCell!13902) )
))
(declare-datatypes ((array!75232 0))(
  ( (array!75233 (arr!36263 (Array (_ BitVec 32) ValueCell!13902)) (size!36800 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75232)

(declare-fun e!662510 () Bool)

(declare-fun array_inv!27609 (array!75232) Bool)

(assert (=> start!99124 (and (array_inv!27609 _values!996) e!662510)))

(declare-fun b!1165309 () Bool)

(declare-fun res!772929 () Bool)

(assert (=> b!1165309 (=> (not res!772929) (not e!662512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165309 (= res!772929 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!45659 () Bool)

(declare-fun mapRes!45659 () Bool)

(declare-fun tp!86791 () Bool)

(declare-fun e!662508 () Bool)

(assert (=> mapNonEmpty!45659 (= mapRes!45659 (and tp!86791 e!662508))))

(declare-fun mapValue!45659 () ValueCell!13902)

(declare-fun mapRest!45659 () (Array (_ BitVec 32) ValueCell!13902))

(declare-fun mapKey!45659 () (_ BitVec 32))

(assert (=> mapNonEmpty!45659 (= (arr!36263 _values!996) (store mapRest!45659 mapKey!45659 mapValue!45659))))

(declare-fun b!1165310 () Bool)

(declare-fun res!772930 () Bool)

(assert (=> b!1165310 (=> (not res!772930) (not e!662513))))

(declare-fun lt!524839 () array!75230)

(declare-datatypes ((List!25558 0))(
  ( (Nil!25555) (Cons!25554 (h!26763 (_ BitVec 64)) (t!37250 List!25558)) )
))
(declare-fun arrayNoDuplicates!0 (array!75230 (_ BitVec 32) List!25558) Bool)

(assert (=> b!1165310 (= res!772930 (arrayNoDuplicates!0 lt!524839 #b00000000000000000000000000000000 Nil!25555))))

(declare-fun b!1165311 () Bool)

(declare-fun res!772931 () Bool)

(assert (=> b!1165311 (=> (not res!772931) (not e!662512))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1165311 (= res!772931 (and (= (size!36800 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36799 _keys!1208) (size!36800 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165312 () Bool)

(declare-fun e!662509 () Bool)

(assert (=> b!1165312 (= e!662509 tp_is_empty!29223)))

(declare-fun b!1165313 () Bool)

(declare-fun res!772934 () Bool)

(assert (=> b!1165313 (=> (not res!772934) (not e!662512))))

(assert (=> b!1165313 (= res!772934 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25555))))

(declare-fun b!1165314 () Bool)

(assert (=> b!1165314 (= e!662512 e!662513)))

(declare-fun res!772932 () Bool)

(assert (=> b!1165314 (=> (not res!772932) (not e!662513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75230 (_ BitVec 32)) Bool)

(assert (=> b!1165314 (= res!772932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524839 mask!1564))))

(assert (=> b!1165314 (= lt!524839 (array!75231 (store (arr!36262 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36799 _keys!1208)))))

(declare-fun b!1165315 () Bool)

(declare-fun res!772927 () Bool)

(assert (=> b!1165315 (=> (not res!772927) (not e!662512))))

(assert (=> b!1165315 (= res!772927 (= (select (arr!36262 _keys!1208) i!673) k0!934))))

(declare-fun b!1165316 () Bool)

(assert (=> b!1165316 (= e!662511 true)))

(declare-fun zeroValue!944 () V!44091)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18782 0))(
  ( (tuple2!18783 (_1!9401 (_ BitVec 64)) (_2!9401 V!44091)) )
))
(declare-datatypes ((List!25559 0))(
  ( (Nil!25556) (Cons!25555 (h!26764 tuple2!18782) (t!37251 List!25559)) )
))
(declare-datatypes ((ListLongMap!16763 0))(
  ( (ListLongMap!16764 (toList!8397 List!25559)) )
))
(declare-fun lt!524841 () ListLongMap!16763)

(declare-fun minValue!944 () V!44091)

(declare-fun getCurrentListMapNoExtraKeys!4830 (array!75230 array!75232 (_ BitVec 32) (_ BitVec 32) V!44091 V!44091 (_ BitVec 32) Int) ListLongMap!16763)

(declare-fun dynLambda!2827 (Int (_ BitVec 64)) V!44091)

(assert (=> b!1165316 (= lt!524841 (getCurrentListMapNoExtraKeys!4830 lt!524839 (array!75233 (store (arr!36263 _values!996) i!673 (ValueCellFull!13902 (dynLambda!2827 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36800 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524840 () ListLongMap!16763)

(assert (=> b!1165316 (= lt!524840 (getCurrentListMapNoExtraKeys!4830 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165317 () Bool)

(assert (=> b!1165317 (= e!662508 tp_is_empty!29223)))

(declare-fun mapIsEmpty!45659 () Bool)

(assert (=> mapIsEmpty!45659 mapRes!45659))

(declare-fun b!1165318 () Bool)

(assert (=> b!1165318 (= e!662510 (and e!662509 mapRes!45659))))

(declare-fun condMapEmpty!45659 () Bool)

(declare-fun mapDefault!45659 () ValueCell!13902)

(assert (=> b!1165318 (= condMapEmpty!45659 (= (arr!36263 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13902)) mapDefault!45659)))))

(declare-fun b!1165319 () Bool)

(declare-fun res!772924 () Bool)

(assert (=> b!1165319 (=> (not res!772924) (not e!662512))))

(assert (=> b!1165319 (= res!772924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99124 res!772933) b!1165306))

(assert (= (and b!1165306 res!772926) b!1165311))

(assert (= (and b!1165311 res!772931) b!1165319))

(assert (= (and b!1165319 res!772924) b!1165313))

(assert (= (and b!1165313 res!772934) b!1165308))

(assert (= (and b!1165308 res!772925) b!1165309))

(assert (= (and b!1165309 res!772929) b!1165315))

(assert (= (and b!1165315 res!772927) b!1165314))

(assert (= (and b!1165314 res!772932) b!1165310))

(assert (= (and b!1165310 res!772930) b!1165307))

(assert (= (and b!1165307 (not res!772928)) b!1165316))

(assert (= (and b!1165318 condMapEmpty!45659) mapIsEmpty!45659))

(assert (= (and b!1165318 (not condMapEmpty!45659)) mapNonEmpty!45659))

(get-info :version)

(assert (= (and mapNonEmpty!45659 ((_ is ValueCellFull!13902) mapValue!45659)) b!1165317))

(assert (= (and b!1165318 ((_ is ValueCellFull!13902) mapDefault!45659)) b!1165312))

(assert (= start!99124 b!1165318))

(declare-fun b_lambda!19817 () Bool)

(assert (=> (not b_lambda!19817) (not b!1165316)))

(declare-fun t!37249 () Bool)

(declare-fun tb!9513 () Bool)

(assert (=> (and start!99124 (= defaultEntry!1004 defaultEntry!1004) t!37249) tb!9513))

(declare-fun result!19583 () Bool)

(assert (=> tb!9513 (= result!19583 tp_is_empty!29223)))

(assert (=> b!1165316 t!37249))

(declare-fun b_and!40251 () Bool)

(assert (= b_and!40249 (and (=> t!37249 result!19583) b_and!40251)))

(declare-fun m!1073573 () Bool)

(assert (=> b!1165316 m!1073573))

(declare-fun m!1073575 () Bool)

(assert (=> b!1165316 m!1073575))

(declare-fun m!1073577 () Bool)

(assert (=> b!1165316 m!1073577))

(declare-fun m!1073579 () Bool)

(assert (=> b!1165316 m!1073579))

(declare-fun m!1073581 () Bool)

(assert (=> start!99124 m!1073581))

(declare-fun m!1073583 () Bool)

(assert (=> start!99124 m!1073583))

(declare-fun m!1073585 () Bool)

(assert (=> b!1165313 m!1073585))

(declare-fun m!1073587 () Bool)

(assert (=> b!1165309 m!1073587))

(declare-fun m!1073589 () Bool)

(assert (=> mapNonEmpty!45659 m!1073589))

(declare-fun m!1073591 () Bool)

(assert (=> b!1165315 m!1073591))

(declare-fun m!1073593 () Bool)

(assert (=> b!1165307 m!1073593))

(declare-fun m!1073595 () Bool)

(assert (=> b!1165307 m!1073595))

(declare-fun m!1073597 () Bool)

(assert (=> b!1165314 m!1073597))

(declare-fun m!1073599 () Bool)

(assert (=> b!1165314 m!1073599))

(declare-fun m!1073601 () Bool)

(assert (=> b!1165310 m!1073601))

(declare-fun m!1073603 () Bool)

(assert (=> b!1165319 m!1073603))

(declare-fun m!1073605 () Bool)

(assert (=> b!1165306 m!1073605))

(check-sat b_and!40251 (not b!1165314) (not b!1165313) (not mapNonEmpty!45659) (not b!1165319) tp_is_empty!29223 (not b_next!24693) (not b!1165306) (not b!1165307) (not b!1165309) (not b_lambda!19817) (not b!1165316) (not start!99124) (not b!1165310))
(check-sat b_and!40251 (not b_next!24693))
