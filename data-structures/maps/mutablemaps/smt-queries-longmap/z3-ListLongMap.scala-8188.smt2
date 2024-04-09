; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100032 () Bool)

(assert start!100032)

(declare-fun b_free!25575 () Bool)

(declare-fun b_next!25575 () Bool)

(assert (=> start!100032 (= b_free!25575 (not b_next!25575))))

(declare-fun tp!89439 () Bool)

(declare-fun b_and!42031 () Bool)

(assert (=> start!100032 (= tp!89439 b_and!42031)))

(declare-fun b!1191122 () Bool)

(declare-fun e!677148 () Bool)

(declare-fun e!677149 () Bool)

(assert (=> b!1191122 (= e!677148 e!677149)))

(declare-fun res!792333 () Bool)

(assert (=> b!1191122 (=> (not res!792333) (not e!677149))))

(declare-datatypes ((array!76976 0))(
  ( (array!76977 (arr!37134 (Array (_ BitVec 32) (_ BitVec 64))) (size!37671 (_ BitVec 32))) )
))
(declare-fun lt!541686 () array!76976)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76976 (_ BitVec 32)) Bool)

(assert (=> b!1191122 (= res!792333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541686 mask!1564))))

(declare-fun _keys!1208 () array!76976)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191122 (= lt!541686 (array!76977 (store (arr!37134 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37671 _keys!1208)))))

(declare-fun res!792338 () Bool)

(assert (=> start!100032 (=> (not res!792338) (not e!677148))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100032 (= res!792338 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37671 _keys!1208))))))

(assert (=> start!100032 e!677148))

(declare-fun tp_is_empty!30105 () Bool)

(assert (=> start!100032 tp_is_empty!30105))

(declare-fun array_inv!28218 (array!76976) Bool)

(assert (=> start!100032 (array_inv!28218 _keys!1208)))

(assert (=> start!100032 true))

(assert (=> start!100032 tp!89439))

(declare-datatypes ((V!45267 0))(
  ( (V!45268 (val!15109 Int)) )
))
(declare-datatypes ((ValueCell!14343 0))(
  ( (ValueCellFull!14343 (v!17748 V!45267)) (EmptyCell!14343) )
))
(declare-datatypes ((array!76978 0))(
  ( (array!76979 (arr!37135 (Array (_ BitVec 32) ValueCell!14343)) (size!37672 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76978)

(declare-fun e!677143 () Bool)

(declare-fun array_inv!28219 (array!76978) Bool)

(assert (=> start!100032 (and (array_inv!28219 _values!996) e!677143)))

(declare-fun b!1191123 () Bool)

(declare-fun e!677147 () Bool)

(declare-fun e!677145 () Bool)

(assert (=> b!1191123 (= e!677147 e!677145)))

(declare-fun res!792340 () Bool)

(assert (=> b!1191123 (=> res!792340 e!677145)))

(assert (=> b!1191123 (= res!792340 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45267)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541685 () array!76978)

(declare-fun minValue!944 () V!45267)

(declare-datatypes ((tuple2!19554 0))(
  ( (tuple2!19555 (_1!9787 (_ BitVec 64)) (_2!9787 V!45267)) )
))
(declare-datatypes ((List!26315 0))(
  ( (Nil!26312) (Cons!26311 (h!27520 tuple2!19554) (t!38889 List!26315)) )
))
(declare-datatypes ((ListLongMap!17535 0))(
  ( (ListLongMap!17536 (toList!8783 List!26315)) )
))
(declare-fun lt!541682 () ListLongMap!17535)

(declare-fun getCurrentListMapNoExtraKeys!5197 (array!76976 array!76978 (_ BitVec 32) (_ BitVec 32) V!45267 V!45267 (_ BitVec 32) Int) ListLongMap!17535)

(assert (=> b!1191123 (= lt!541682 (getCurrentListMapNoExtraKeys!5197 lt!541686 lt!541685 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3142 (Int (_ BitVec 64)) V!45267)

(assert (=> b!1191123 (= lt!541685 (array!76979 (store (arr!37135 _values!996) i!673 (ValueCellFull!14343 (dynLambda!3142 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37672 _values!996)))))

(declare-fun lt!541681 () ListLongMap!17535)

(assert (=> b!1191123 (= lt!541681 (getCurrentListMapNoExtraKeys!5197 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191124 () Bool)

(declare-fun res!792329 () Bool)

(assert (=> b!1191124 (=> (not res!792329) (not e!677148))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1191124 (= res!792329 (= (select (arr!37134 _keys!1208) i!673) k0!934))))

(declare-fun b!1191125 () Bool)

(declare-fun res!792331 () Bool)

(assert (=> b!1191125 (=> (not res!792331) (not e!677148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191125 (= res!792331 (validMask!0 mask!1564))))

(declare-fun b!1191126 () Bool)

(declare-fun res!792330 () Bool)

(assert (=> b!1191126 (=> (not res!792330) (not e!677148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191126 (= res!792330 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46985 () Bool)

(declare-fun mapRes!46985 () Bool)

(declare-fun tp!89440 () Bool)

(declare-fun e!677142 () Bool)

(assert (=> mapNonEmpty!46985 (= mapRes!46985 (and tp!89440 e!677142))))

(declare-fun mapValue!46985 () ValueCell!14343)

(declare-fun mapKey!46985 () (_ BitVec 32))

(declare-fun mapRest!46985 () (Array (_ BitVec 32) ValueCell!14343))

(assert (=> mapNonEmpty!46985 (= (arr!37135 _values!996) (store mapRest!46985 mapKey!46985 mapValue!46985))))

(declare-fun b!1191127 () Bool)

(assert (=> b!1191127 (= e!677145 true)))

(declare-fun -!1764 (ListLongMap!17535 (_ BitVec 64)) ListLongMap!17535)

(assert (=> b!1191127 (= (getCurrentListMapNoExtraKeys!5197 lt!541686 lt!541685 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1764 (getCurrentListMapNoExtraKeys!5197 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39460 0))(
  ( (Unit!39461) )
))
(declare-fun lt!541684 () Unit!39460)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!970 (array!76976 array!76978 (_ BitVec 32) (_ BitVec 32) V!45267 V!45267 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39460)

(assert (=> b!1191127 (= lt!541684 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!970 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191128 () Bool)

(declare-fun res!792334 () Bool)

(assert (=> b!1191128 (=> (not res!792334) (not e!677148))))

(declare-datatypes ((List!26316 0))(
  ( (Nil!26313) (Cons!26312 (h!27521 (_ BitVec 64)) (t!38890 List!26316)) )
))
(declare-fun arrayNoDuplicates!0 (array!76976 (_ BitVec 32) List!26316) Bool)

(assert (=> b!1191128 (= res!792334 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26313))))

(declare-fun b!1191129 () Bool)

(declare-fun res!792335 () Bool)

(assert (=> b!1191129 (=> (not res!792335) (not e!677148))))

(assert (=> b!1191129 (= res!792335 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37671 _keys!1208))))))

(declare-fun b!1191130 () Bool)

(declare-fun res!792336 () Bool)

(assert (=> b!1191130 (=> (not res!792336) (not e!677148))))

(assert (=> b!1191130 (= res!792336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191131 () Bool)

(declare-fun res!792339 () Bool)

(assert (=> b!1191131 (=> (not res!792339) (not e!677149))))

(assert (=> b!1191131 (= res!792339 (arrayNoDuplicates!0 lt!541686 #b00000000000000000000000000000000 Nil!26313))))

(declare-fun b!1191132 () Bool)

(declare-fun e!677146 () Bool)

(assert (=> b!1191132 (= e!677146 tp_is_empty!30105)))

(declare-fun b!1191133 () Bool)

(assert (=> b!1191133 (= e!677149 (not e!677147))))

(declare-fun res!792337 () Bool)

(assert (=> b!1191133 (=> res!792337 e!677147)))

(assert (=> b!1191133 (= res!792337 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191133 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541683 () Unit!39460)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76976 (_ BitVec 64) (_ BitVec 32)) Unit!39460)

(assert (=> b!1191133 (= lt!541683 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191134 () Bool)

(assert (=> b!1191134 (= e!677142 tp_is_empty!30105)))

(declare-fun mapIsEmpty!46985 () Bool)

(assert (=> mapIsEmpty!46985 mapRes!46985))

(declare-fun b!1191135 () Bool)

(assert (=> b!1191135 (= e!677143 (and e!677146 mapRes!46985))))

(declare-fun condMapEmpty!46985 () Bool)

(declare-fun mapDefault!46985 () ValueCell!14343)

(assert (=> b!1191135 (= condMapEmpty!46985 (= (arr!37135 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14343)) mapDefault!46985)))))

(declare-fun b!1191136 () Bool)

(declare-fun res!792332 () Bool)

(assert (=> b!1191136 (=> (not res!792332) (not e!677148))))

(assert (=> b!1191136 (= res!792332 (and (= (size!37672 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37671 _keys!1208) (size!37672 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!100032 res!792338) b!1191125))

(assert (= (and b!1191125 res!792331) b!1191136))

(assert (= (and b!1191136 res!792332) b!1191130))

(assert (= (and b!1191130 res!792336) b!1191128))

(assert (= (and b!1191128 res!792334) b!1191129))

(assert (= (and b!1191129 res!792335) b!1191126))

(assert (= (and b!1191126 res!792330) b!1191124))

(assert (= (and b!1191124 res!792329) b!1191122))

(assert (= (and b!1191122 res!792333) b!1191131))

(assert (= (and b!1191131 res!792339) b!1191133))

(assert (= (and b!1191133 (not res!792337)) b!1191123))

(assert (= (and b!1191123 (not res!792340)) b!1191127))

(assert (= (and b!1191135 condMapEmpty!46985) mapIsEmpty!46985))

(assert (= (and b!1191135 (not condMapEmpty!46985)) mapNonEmpty!46985))

(get-info :version)

(assert (= (and mapNonEmpty!46985 ((_ is ValueCellFull!14343) mapValue!46985)) b!1191134))

(assert (= (and b!1191135 ((_ is ValueCellFull!14343) mapDefault!46985)) b!1191132))

(assert (= start!100032 b!1191135))

(declare-fun b_lambda!20737 () Bool)

(assert (=> (not b_lambda!20737) (not b!1191123)))

(declare-fun t!38888 () Bool)

(declare-fun tb!10395 () Bool)

(assert (=> (and start!100032 (= defaultEntry!1004 defaultEntry!1004) t!38888) tb!10395))

(declare-fun result!21349 () Bool)

(assert (=> tb!10395 (= result!21349 tp_is_empty!30105)))

(assert (=> b!1191123 t!38888))

(declare-fun b_and!42033 () Bool)

(assert (= b_and!42031 (and (=> t!38888 result!21349) b_and!42033)))

(declare-fun m!1099667 () Bool)

(assert (=> b!1191126 m!1099667))

(declare-fun m!1099669 () Bool)

(assert (=> b!1191130 m!1099669))

(declare-fun m!1099671 () Bool)

(assert (=> b!1191127 m!1099671))

(declare-fun m!1099673 () Bool)

(assert (=> b!1191127 m!1099673))

(assert (=> b!1191127 m!1099673))

(declare-fun m!1099675 () Bool)

(assert (=> b!1191127 m!1099675))

(declare-fun m!1099677 () Bool)

(assert (=> b!1191127 m!1099677))

(declare-fun m!1099679 () Bool)

(assert (=> b!1191123 m!1099679))

(declare-fun m!1099681 () Bool)

(assert (=> b!1191123 m!1099681))

(declare-fun m!1099683 () Bool)

(assert (=> b!1191123 m!1099683))

(declare-fun m!1099685 () Bool)

(assert (=> b!1191123 m!1099685))

(declare-fun m!1099687 () Bool)

(assert (=> start!100032 m!1099687))

(declare-fun m!1099689 () Bool)

(assert (=> start!100032 m!1099689))

(declare-fun m!1099691 () Bool)

(assert (=> b!1191133 m!1099691))

(declare-fun m!1099693 () Bool)

(assert (=> b!1191133 m!1099693))

(declare-fun m!1099695 () Bool)

(assert (=> b!1191128 m!1099695))

(declare-fun m!1099697 () Bool)

(assert (=> b!1191124 m!1099697))

(declare-fun m!1099699 () Bool)

(assert (=> b!1191122 m!1099699))

(declare-fun m!1099701 () Bool)

(assert (=> b!1191122 m!1099701))

(declare-fun m!1099703 () Bool)

(assert (=> b!1191125 m!1099703))

(declare-fun m!1099705 () Bool)

(assert (=> mapNonEmpty!46985 m!1099705))

(declare-fun m!1099707 () Bool)

(assert (=> b!1191131 m!1099707))

(check-sat (not b!1191127) (not b!1191122) (not b_lambda!20737) (not b!1191123) (not b!1191125) (not b_next!25575) (not start!100032) tp_is_empty!30105 (not b!1191133) (not b!1191131) (not b!1191126) (not mapNonEmpty!46985) (not b!1191130) b_and!42033 (not b!1191128))
(check-sat b_and!42033 (not b_next!25575))
