; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100074 () Bool)

(assert start!100074)

(declare-fun b_free!25617 () Bool)

(declare-fun b_next!25617 () Bool)

(assert (=> start!100074 (= b_free!25617 (not b_next!25617))))

(declare-fun tp!89565 () Bool)

(declare-fun b_and!42115 () Bool)

(assert (=> start!100074 (= tp!89565 b_and!42115)))

(declare-fun res!793088 () Bool)

(declare-fun e!677648 () Bool)

(assert (=> start!100074 (=> (not res!793088) (not e!677648))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77058 0))(
  ( (array!77059 (arr!37175 (Array (_ BitVec 32) (_ BitVec 64))) (size!37712 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77058)

(assert (=> start!100074 (= res!793088 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37712 _keys!1208))))))

(assert (=> start!100074 e!677648))

(declare-fun tp_is_empty!30147 () Bool)

(assert (=> start!100074 tp_is_empty!30147))

(declare-fun array_inv!28248 (array!77058) Bool)

(assert (=> start!100074 (array_inv!28248 _keys!1208)))

(assert (=> start!100074 true))

(assert (=> start!100074 tp!89565))

(declare-datatypes ((V!45323 0))(
  ( (V!45324 (val!15130 Int)) )
))
(declare-datatypes ((ValueCell!14364 0))(
  ( (ValueCellFull!14364 (v!17769 V!45323)) (EmptyCell!14364) )
))
(declare-datatypes ((array!77060 0))(
  ( (array!77061 (arr!37176 (Array (_ BitVec 32) ValueCell!14364)) (size!37713 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77060)

(declare-fun e!677653 () Bool)

(declare-fun array_inv!28249 (array!77060) Bool)

(assert (=> start!100074 (and (array_inv!28249 _values!996) e!677653)))

(declare-fun mapNonEmpty!47048 () Bool)

(declare-fun mapRes!47048 () Bool)

(declare-fun tp!89566 () Bool)

(declare-fun e!677650 () Bool)

(assert (=> mapNonEmpty!47048 (= mapRes!47048 (and tp!89566 e!677650))))

(declare-fun mapKey!47048 () (_ BitVec 32))

(declare-fun mapRest!47048 () (Array (_ BitVec 32) ValueCell!14364))

(declare-fun mapValue!47048 () ValueCell!14364)

(assert (=> mapNonEmpty!47048 (= (arr!37176 _values!996) (store mapRest!47048 mapKey!47048 mapValue!47048))))

(declare-fun b!1192109 () Bool)

(declare-fun res!793089 () Bool)

(assert (=> b!1192109 (=> (not res!793089) (not e!677648))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77058 (_ BitVec 32)) Bool)

(assert (=> b!1192109 (= res!793089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192110 () Bool)

(declare-fun res!793090 () Bool)

(assert (=> b!1192110 (=> (not res!793090) (not e!677648))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192110 (= res!793090 (validKeyInArray!0 k0!934))))

(declare-fun b!1192111 () Bool)

(declare-fun res!793092 () Bool)

(declare-fun e!677647 () Bool)

(assert (=> b!1192111 (=> (not res!793092) (not e!677647))))

(declare-fun lt!542060 () array!77058)

(declare-datatypes ((List!26350 0))(
  ( (Nil!26347) (Cons!26346 (h!27555 (_ BitVec 64)) (t!38966 List!26350)) )
))
(declare-fun arrayNoDuplicates!0 (array!77058 (_ BitVec 32) List!26350) Bool)

(assert (=> b!1192111 (= res!793092 (arrayNoDuplicates!0 lt!542060 #b00000000000000000000000000000000 Nil!26347))))

(declare-fun b!1192112 () Bool)

(declare-fun res!793087 () Bool)

(assert (=> b!1192112 (=> (not res!793087) (not e!677648))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1192112 (= res!793087 (= (select (arr!37175 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!47048 () Bool)

(assert (=> mapIsEmpty!47048 mapRes!47048))

(declare-fun b!1192113 () Bool)

(declare-fun e!677649 () Bool)

(assert (=> b!1192113 (= e!677649 true)))

(declare-fun zeroValue!944 () V!45323)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45323)

(declare-fun lt!542059 () array!77060)

(declare-datatypes ((tuple2!19586 0))(
  ( (tuple2!19587 (_1!9803 (_ BitVec 64)) (_2!9803 V!45323)) )
))
(declare-datatypes ((List!26351 0))(
  ( (Nil!26348) (Cons!26347 (h!27556 tuple2!19586) (t!38967 List!26351)) )
))
(declare-datatypes ((ListLongMap!17567 0))(
  ( (ListLongMap!17568 (toList!8799 List!26351)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5213 (array!77058 array!77060 (_ BitVec 32) (_ BitVec 32) V!45323 V!45323 (_ BitVec 32) Int) ListLongMap!17567)

(declare-fun -!1777 (ListLongMap!17567 (_ BitVec 64)) ListLongMap!17567)

(assert (=> b!1192113 (= (getCurrentListMapNoExtraKeys!5213 lt!542060 lt!542059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1777 (getCurrentListMapNoExtraKeys!5213 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39488 0))(
  ( (Unit!39489) )
))
(declare-fun lt!542064 () Unit!39488)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!983 (array!77058 array!77060 (_ BitVec 32) (_ BitVec 32) V!45323 V!45323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39488)

(assert (=> b!1192113 (= lt!542064 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!983 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192114 () Bool)

(declare-fun e!677646 () Bool)

(assert (=> b!1192114 (= e!677647 (not e!677646))))

(declare-fun res!793096 () Bool)

(assert (=> b!1192114 (=> res!793096 e!677646)))

(assert (=> b!1192114 (= res!793096 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192114 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542063 () Unit!39488)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77058 (_ BitVec 64) (_ BitVec 32)) Unit!39488)

(assert (=> b!1192114 (= lt!542063 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1192115 () Bool)

(declare-fun res!793095 () Bool)

(assert (=> b!1192115 (=> (not res!793095) (not e!677648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192115 (= res!793095 (validMask!0 mask!1564))))

(declare-fun b!1192116 () Bool)

(declare-fun e!677652 () Bool)

(assert (=> b!1192116 (= e!677653 (and e!677652 mapRes!47048))))

(declare-fun condMapEmpty!47048 () Bool)

(declare-fun mapDefault!47048 () ValueCell!14364)

(assert (=> b!1192116 (= condMapEmpty!47048 (= (arr!37176 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14364)) mapDefault!47048)))))

(declare-fun b!1192117 () Bool)

(assert (=> b!1192117 (= e!677652 tp_is_empty!30147)))

(declare-fun b!1192118 () Bool)

(declare-fun res!793093 () Bool)

(assert (=> b!1192118 (=> (not res!793093) (not e!677648))))

(assert (=> b!1192118 (= res!793093 (and (= (size!37713 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37712 _keys!1208) (size!37713 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192119 () Bool)

(assert (=> b!1192119 (= e!677650 tp_is_empty!30147)))

(declare-fun b!1192120 () Bool)

(declare-fun res!793091 () Bool)

(assert (=> b!1192120 (=> (not res!793091) (not e!677648))))

(assert (=> b!1192120 (= res!793091 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37712 _keys!1208))))))

(declare-fun b!1192121 () Bool)

(assert (=> b!1192121 (= e!677648 e!677647)))

(declare-fun res!793086 () Bool)

(assert (=> b!1192121 (=> (not res!793086) (not e!677647))))

(assert (=> b!1192121 (= res!793086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542060 mask!1564))))

(assert (=> b!1192121 (= lt!542060 (array!77059 (store (arr!37175 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37712 _keys!1208)))))

(declare-fun b!1192122 () Bool)

(declare-fun res!793094 () Bool)

(assert (=> b!1192122 (=> (not res!793094) (not e!677648))))

(assert (=> b!1192122 (= res!793094 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26347))))

(declare-fun b!1192123 () Bool)

(assert (=> b!1192123 (= e!677646 e!677649)))

(declare-fun res!793085 () Bool)

(assert (=> b!1192123 (=> res!793085 e!677649)))

(assert (=> b!1192123 (= res!793085 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542061 () ListLongMap!17567)

(assert (=> b!1192123 (= lt!542061 (getCurrentListMapNoExtraKeys!5213 lt!542060 lt!542059 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3156 (Int (_ BitVec 64)) V!45323)

(assert (=> b!1192123 (= lt!542059 (array!77061 (store (arr!37176 _values!996) i!673 (ValueCellFull!14364 (dynLambda!3156 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37713 _values!996)))))

(declare-fun lt!542062 () ListLongMap!17567)

(assert (=> b!1192123 (= lt!542062 (getCurrentListMapNoExtraKeys!5213 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!100074 res!793088) b!1192115))

(assert (= (and b!1192115 res!793095) b!1192118))

(assert (= (and b!1192118 res!793093) b!1192109))

(assert (= (and b!1192109 res!793089) b!1192122))

(assert (= (and b!1192122 res!793094) b!1192120))

(assert (= (and b!1192120 res!793091) b!1192110))

(assert (= (and b!1192110 res!793090) b!1192112))

(assert (= (and b!1192112 res!793087) b!1192121))

(assert (= (and b!1192121 res!793086) b!1192111))

(assert (= (and b!1192111 res!793092) b!1192114))

(assert (= (and b!1192114 (not res!793096)) b!1192123))

(assert (= (and b!1192123 (not res!793085)) b!1192113))

(assert (= (and b!1192116 condMapEmpty!47048) mapIsEmpty!47048))

(assert (= (and b!1192116 (not condMapEmpty!47048)) mapNonEmpty!47048))

(get-info :version)

(assert (= (and mapNonEmpty!47048 ((_ is ValueCellFull!14364) mapValue!47048)) b!1192119))

(assert (= (and b!1192116 ((_ is ValueCellFull!14364) mapDefault!47048)) b!1192117))

(assert (= start!100074 b!1192116))

(declare-fun b_lambda!20779 () Bool)

(assert (=> (not b_lambda!20779) (not b!1192123)))

(declare-fun t!38965 () Bool)

(declare-fun tb!10437 () Bool)

(assert (=> (and start!100074 (= defaultEntry!1004 defaultEntry!1004) t!38965) tb!10437))

(declare-fun result!21433 () Bool)

(assert (=> tb!10437 (= result!21433 tp_is_empty!30147)))

(assert (=> b!1192123 t!38965))

(declare-fun b_and!42117 () Bool)

(assert (= b_and!42115 (and (=> t!38965 result!21433) b_and!42117)))

(declare-fun m!1100549 () Bool)

(assert (=> start!100074 m!1100549))

(declare-fun m!1100551 () Bool)

(assert (=> start!100074 m!1100551))

(declare-fun m!1100553 () Bool)

(assert (=> b!1192113 m!1100553))

(declare-fun m!1100555 () Bool)

(assert (=> b!1192113 m!1100555))

(assert (=> b!1192113 m!1100555))

(declare-fun m!1100557 () Bool)

(assert (=> b!1192113 m!1100557))

(declare-fun m!1100559 () Bool)

(assert (=> b!1192113 m!1100559))

(declare-fun m!1100561 () Bool)

(assert (=> b!1192112 m!1100561))

(declare-fun m!1100563 () Bool)

(assert (=> mapNonEmpty!47048 m!1100563))

(declare-fun m!1100565 () Bool)

(assert (=> b!1192110 m!1100565))

(declare-fun m!1100567 () Bool)

(assert (=> b!1192114 m!1100567))

(declare-fun m!1100569 () Bool)

(assert (=> b!1192114 m!1100569))

(declare-fun m!1100571 () Bool)

(assert (=> b!1192121 m!1100571))

(declare-fun m!1100573 () Bool)

(assert (=> b!1192121 m!1100573))

(declare-fun m!1100575 () Bool)

(assert (=> b!1192122 m!1100575))

(declare-fun m!1100577 () Bool)

(assert (=> b!1192123 m!1100577))

(declare-fun m!1100579 () Bool)

(assert (=> b!1192123 m!1100579))

(declare-fun m!1100581 () Bool)

(assert (=> b!1192123 m!1100581))

(declare-fun m!1100583 () Bool)

(assert (=> b!1192123 m!1100583))

(declare-fun m!1100585 () Bool)

(assert (=> b!1192111 m!1100585))

(declare-fun m!1100587 () Bool)

(assert (=> b!1192109 m!1100587))

(declare-fun m!1100589 () Bool)

(assert (=> b!1192115 m!1100589))

(check-sat (not b!1192113) (not b!1192123) (not b_lambda!20779) (not b!1192109) (not b!1192111) (not start!100074) b_and!42117 (not b!1192110) tp_is_empty!30147 (not b_next!25617) (not b!1192122) (not b!1192114) (not b!1192115) (not b!1192121) (not mapNonEmpty!47048))
(check-sat b_and!42117 (not b_next!25617))
