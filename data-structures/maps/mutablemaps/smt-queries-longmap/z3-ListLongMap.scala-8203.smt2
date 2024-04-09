; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100122 () Bool)

(assert start!100122)

(declare-fun b_free!25665 () Bool)

(declare-fun b_next!25665 () Bool)

(assert (=> start!100122 (= b_free!25665 (not b_next!25665))))

(declare-fun tp!89710 () Bool)

(declare-fun b_and!42211 () Bool)

(assert (=> start!100122 (= tp!89710 b_and!42211)))

(declare-fun b!1193237 () Bool)

(declare-fun e!678225 () Bool)

(declare-fun tp_is_empty!30195 () Bool)

(assert (=> b!1193237 (= e!678225 tp_is_empty!30195)))

(declare-fun b!1193238 () Bool)

(declare-fun res!793955 () Bool)

(declare-fun e!678224 () Bool)

(assert (=> b!1193238 (=> (not res!793955) (not e!678224))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193238 (= res!793955 (validKeyInArray!0 k0!934))))

(declare-fun b!1193239 () Bool)

(declare-fun res!793954 () Bool)

(assert (=> b!1193239 (=> (not res!793954) (not e!678224))))

(declare-datatypes ((array!77154 0))(
  ( (array!77155 (arr!37223 (Array (_ BitVec 32) (_ BitVec 64))) (size!37760 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77154)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45387 0))(
  ( (V!45388 (val!15154 Int)) )
))
(declare-datatypes ((ValueCell!14388 0))(
  ( (ValueCellFull!14388 (v!17793 V!45387)) (EmptyCell!14388) )
))
(declare-datatypes ((array!77156 0))(
  ( (array!77157 (arr!37224 (Array (_ BitVec 32) ValueCell!14388)) (size!37761 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77156)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1193239 (= res!793954 (and (= (size!37761 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37760 _keys!1208) (size!37761 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!793951 () Bool)

(assert (=> start!100122 (=> (not res!793951) (not e!678224))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100122 (= res!793951 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37760 _keys!1208))))))

(assert (=> start!100122 e!678224))

(assert (=> start!100122 tp_is_empty!30195))

(declare-fun array_inv!28276 (array!77154) Bool)

(assert (=> start!100122 (array_inv!28276 _keys!1208)))

(assert (=> start!100122 true))

(assert (=> start!100122 tp!89710))

(declare-fun e!678229 () Bool)

(declare-fun array_inv!28277 (array!77156) Bool)

(assert (=> start!100122 (and (array_inv!28277 _values!996) e!678229)))

(declare-fun b!1193240 () Bool)

(declare-fun res!793959 () Bool)

(assert (=> b!1193240 (=> (not res!793959) (not e!678224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193240 (= res!793959 (validMask!0 mask!1564))))

(declare-fun b!1193241 () Bool)

(declare-fun res!793949 () Bool)

(assert (=> b!1193241 (=> (not res!793949) (not e!678224))))

(declare-datatypes ((List!26388 0))(
  ( (Nil!26385) (Cons!26384 (h!27593 (_ BitVec 64)) (t!39052 List!26388)) )
))
(declare-fun arrayNoDuplicates!0 (array!77154 (_ BitVec 32) List!26388) Bool)

(assert (=> b!1193241 (= res!793949 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26385))))

(declare-fun b!1193242 () Bool)

(declare-fun e!678226 () Bool)

(declare-fun mapRes!47120 () Bool)

(assert (=> b!1193242 (= e!678229 (and e!678226 mapRes!47120))))

(declare-fun condMapEmpty!47120 () Bool)

(declare-fun mapDefault!47120 () ValueCell!14388)

(assert (=> b!1193242 (= condMapEmpty!47120 (= (arr!37224 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14388)) mapDefault!47120)))))

(declare-fun b!1193243 () Bool)

(declare-fun res!793957 () Bool)

(assert (=> b!1193243 (=> (not res!793957) (not e!678224))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193243 (= res!793957 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37760 _keys!1208))))))

(declare-fun b!1193244 () Bool)

(declare-fun e!678228 () Bool)

(assert (=> b!1193244 (= e!678228 true)))

(declare-fun zeroValue!944 () V!45387)

(declare-fun lt!542492 () array!77154)

(declare-fun minValue!944 () V!45387)

(declare-fun lt!542495 () array!77156)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19632 0))(
  ( (tuple2!19633 (_1!9826 (_ BitVec 64)) (_2!9826 V!45387)) )
))
(declare-datatypes ((List!26389 0))(
  ( (Nil!26386) (Cons!26385 (h!27594 tuple2!19632) (t!39053 List!26389)) )
))
(declare-datatypes ((ListLongMap!17613 0))(
  ( (ListLongMap!17614 (toList!8822 List!26389)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5236 (array!77154 array!77156 (_ BitVec 32) (_ BitVec 32) V!45387 V!45387 (_ BitVec 32) Int) ListLongMap!17613)

(declare-fun -!1795 (ListLongMap!17613 (_ BitVec 64)) ListLongMap!17613)

(assert (=> b!1193244 (= (getCurrentListMapNoExtraKeys!5236 lt!542492 lt!542495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1795 (getCurrentListMapNoExtraKeys!5236 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39528 0))(
  ( (Unit!39529) )
))
(declare-fun lt!542493 () Unit!39528)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1001 (array!77154 array!77156 (_ BitVec 32) (_ BitVec 32) V!45387 V!45387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39528)

(assert (=> b!1193244 (= lt!542493 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1001 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47120 () Bool)

(declare-fun tp!89709 () Bool)

(assert (=> mapNonEmpty!47120 (= mapRes!47120 (and tp!89709 e!678225))))

(declare-fun mapKey!47120 () (_ BitVec 32))

(declare-fun mapRest!47120 () (Array (_ BitVec 32) ValueCell!14388))

(declare-fun mapValue!47120 () ValueCell!14388)

(assert (=> mapNonEmpty!47120 (= (arr!37224 _values!996) (store mapRest!47120 mapKey!47120 mapValue!47120))))

(declare-fun b!1193245 () Bool)

(declare-fun res!793956 () Bool)

(declare-fun e!678222 () Bool)

(assert (=> b!1193245 (=> (not res!793956) (not e!678222))))

(assert (=> b!1193245 (= res!793956 (arrayNoDuplicates!0 lt!542492 #b00000000000000000000000000000000 Nil!26385))))

(declare-fun b!1193246 () Bool)

(declare-fun e!678223 () Bool)

(assert (=> b!1193246 (= e!678222 (not e!678223))))

(declare-fun res!793960 () Bool)

(assert (=> b!1193246 (=> res!793960 e!678223)))

(assert (=> b!1193246 (= res!793960 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193246 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542494 () Unit!39528)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77154 (_ BitVec 64) (_ BitVec 32)) Unit!39528)

(assert (=> b!1193246 (= lt!542494 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1193247 () Bool)

(assert (=> b!1193247 (= e!678223 e!678228)))

(declare-fun res!793952 () Bool)

(assert (=> b!1193247 (=> res!793952 e!678228)))

(assert (=> b!1193247 (= res!793952 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542496 () ListLongMap!17613)

(assert (=> b!1193247 (= lt!542496 (getCurrentListMapNoExtraKeys!5236 lt!542492 lt!542495 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3174 (Int (_ BitVec 64)) V!45387)

(assert (=> b!1193247 (= lt!542495 (array!77157 (store (arr!37224 _values!996) i!673 (ValueCellFull!14388 (dynLambda!3174 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37761 _values!996)))))

(declare-fun lt!542491 () ListLongMap!17613)

(assert (=> b!1193247 (= lt!542491 (getCurrentListMapNoExtraKeys!5236 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47120 () Bool)

(assert (=> mapIsEmpty!47120 mapRes!47120))

(declare-fun b!1193248 () Bool)

(assert (=> b!1193248 (= e!678226 tp_is_empty!30195)))

(declare-fun b!1193249 () Bool)

(declare-fun res!793950 () Bool)

(assert (=> b!1193249 (=> (not res!793950) (not e!678224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77154 (_ BitVec 32)) Bool)

(assert (=> b!1193249 (= res!793950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193250 () Bool)

(assert (=> b!1193250 (= e!678224 e!678222)))

(declare-fun res!793958 () Bool)

(assert (=> b!1193250 (=> (not res!793958) (not e!678222))))

(assert (=> b!1193250 (= res!793958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542492 mask!1564))))

(assert (=> b!1193250 (= lt!542492 (array!77155 (store (arr!37223 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37760 _keys!1208)))))

(declare-fun b!1193251 () Bool)

(declare-fun res!793953 () Bool)

(assert (=> b!1193251 (=> (not res!793953) (not e!678224))))

(assert (=> b!1193251 (= res!793953 (= (select (arr!37223 _keys!1208) i!673) k0!934))))

(assert (= (and start!100122 res!793951) b!1193240))

(assert (= (and b!1193240 res!793959) b!1193239))

(assert (= (and b!1193239 res!793954) b!1193249))

(assert (= (and b!1193249 res!793950) b!1193241))

(assert (= (and b!1193241 res!793949) b!1193243))

(assert (= (and b!1193243 res!793957) b!1193238))

(assert (= (and b!1193238 res!793955) b!1193251))

(assert (= (and b!1193251 res!793953) b!1193250))

(assert (= (and b!1193250 res!793958) b!1193245))

(assert (= (and b!1193245 res!793956) b!1193246))

(assert (= (and b!1193246 (not res!793960)) b!1193247))

(assert (= (and b!1193247 (not res!793952)) b!1193244))

(assert (= (and b!1193242 condMapEmpty!47120) mapIsEmpty!47120))

(assert (= (and b!1193242 (not condMapEmpty!47120)) mapNonEmpty!47120))

(get-info :version)

(assert (= (and mapNonEmpty!47120 ((_ is ValueCellFull!14388) mapValue!47120)) b!1193237))

(assert (= (and b!1193242 ((_ is ValueCellFull!14388) mapDefault!47120)) b!1193248))

(assert (= start!100122 b!1193242))

(declare-fun b_lambda!20827 () Bool)

(assert (=> (not b_lambda!20827) (not b!1193247)))

(declare-fun t!39051 () Bool)

(declare-fun tb!10485 () Bool)

(assert (=> (and start!100122 (= defaultEntry!1004 defaultEntry!1004) t!39051) tb!10485))

(declare-fun result!21529 () Bool)

(assert (=> tb!10485 (= result!21529 tp_is_empty!30195)))

(assert (=> b!1193247 t!39051))

(declare-fun b_and!42213 () Bool)

(assert (= b_and!42211 (and (=> t!39051 result!21529) b_and!42213)))

(declare-fun m!1101557 () Bool)

(assert (=> b!1193238 m!1101557))

(declare-fun m!1101559 () Bool)

(assert (=> b!1193251 m!1101559))

(declare-fun m!1101561 () Bool)

(assert (=> b!1193240 m!1101561))

(declare-fun m!1101563 () Bool)

(assert (=> b!1193246 m!1101563))

(declare-fun m!1101565 () Bool)

(assert (=> b!1193246 m!1101565))

(declare-fun m!1101567 () Bool)

(assert (=> start!100122 m!1101567))

(declare-fun m!1101569 () Bool)

(assert (=> start!100122 m!1101569))

(declare-fun m!1101571 () Bool)

(assert (=> b!1193247 m!1101571))

(declare-fun m!1101573 () Bool)

(assert (=> b!1193247 m!1101573))

(declare-fun m!1101575 () Bool)

(assert (=> b!1193247 m!1101575))

(declare-fun m!1101577 () Bool)

(assert (=> b!1193247 m!1101577))

(declare-fun m!1101579 () Bool)

(assert (=> b!1193250 m!1101579))

(declare-fun m!1101581 () Bool)

(assert (=> b!1193250 m!1101581))

(declare-fun m!1101583 () Bool)

(assert (=> b!1193245 m!1101583))

(declare-fun m!1101585 () Bool)

(assert (=> b!1193249 m!1101585))

(declare-fun m!1101587 () Bool)

(assert (=> b!1193241 m!1101587))

(declare-fun m!1101589 () Bool)

(assert (=> mapNonEmpty!47120 m!1101589))

(declare-fun m!1101591 () Bool)

(assert (=> b!1193244 m!1101591))

(declare-fun m!1101593 () Bool)

(assert (=> b!1193244 m!1101593))

(assert (=> b!1193244 m!1101593))

(declare-fun m!1101595 () Bool)

(assert (=> b!1193244 m!1101595))

(declare-fun m!1101597 () Bool)

(assert (=> b!1193244 m!1101597))

(check-sat (not b!1193247) (not b!1193245) (not b!1193240) (not b!1193244) (not b!1193249) tp_is_empty!30195 (not b!1193241) (not mapNonEmpty!47120) (not b!1193250) (not b!1193246) (not b_lambda!20827) (not start!100122) (not b!1193238) (not b_next!25665) b_and!42213)
(check-sat b_and!42213 (not b_next!25665))
