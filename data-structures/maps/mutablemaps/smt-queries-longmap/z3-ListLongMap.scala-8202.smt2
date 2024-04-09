; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100116 () Bool)

(assert start!100116)

(declare-fun b_free!25659 () Bool)

(declare-fun b_next!25659 () Bool)

(assert (=> start!100116 (= b_free!25659 (not b_next!25659))))

(declare-fun tp!89692 () Bool)

(declare-fun b_and!42199 () Bool)

(assert (=> start!100116 (= tp!89692 b_and!42199)))

(declare-fun b!1193096 () Bool)

(declare-fun e!678156 () Bool)

(declare-fun tp_is_empty!30189 () Bool)

(assert (=> b!1193096 (= e!678156 tp_is_empty!30189)))

(declare-fun b!1193097 () Bool)

(declare-fun res!793841 () Bool)

(declare-fun e!678157 () Bool)

(assert (=> b!1193097 (=> (not res!793841) (not e!678157))))

(declare-datatypes ((array!77142 0))(
  ( (array!77143 (arr!37217 (Array (_ BitVec 32) (_ BitVec 64))) (size!37754 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77142)

(declare-datatypes ((List!26383 0))(
  ( (Nil!26380) (Cons!26379 (h!27588 (_ BitVec 64)) (t!39041 List!26383)) )
))
(declare-fun arrayNoDuplicates!0 (array!77142 (_ BitVec 32) List!26383) Bool)

(assert (=> b!1193097 (= res!793841 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26380))))

(declare-fun b!1193098 () Bool)

(declare-fun e!678153 () Bool)

(assert (=> b!1193098 (= e!678153 tp_is_empty!30189)))

(declare-fun b!1193099 () Bool)

(declare-fun res!793843 () Bool)

(assert (=> b!1193099 (=> (not res!793843) (not e!678157))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193099 (= res!793843 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37754 _keys!1208))))))

(declare-fun b!1193100 () Bool)

(declare-fun e!678150 () Bool)

(declare-fun mapRes!47111 () Bool)

(assert (=> b!1193100 (= e!678150 (and e!678156 mapRes!47111))))

(declare-fun condMapEmpty!47111 () Bool)

(declare-datatypes ((V!45379 0))(
  ( (V!45380 (val!15151 Int)) )
))
(declare-datatypes ((ValueCell!14385 0))(
  ( (ValueCellFull!14385 (v!17790 V!45379)) (EmptyCell!14385) )
))
(declare-datatypes ((array!77144 0))(
  ( (array!77145 (arr!37218 (Array (_ BitVec 32) ValueCell!14385)) (size!37755 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77144)

(declare-fun mapDefault!47111 () ValueCell!14385)

(assert (=> b!1193100 (= condMapEmpty!47111 (= (arr!37218 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14385)) mapDefault!47111)))))

(declare-fun b!1193101 () Bool)

(declare-fun e!678155 () Bool)

(assert (=> b!1193101 (= e!678155 true)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45379)

(declare-fun lt!542442 () array!77142)

(declare-fun zeroValue!944 () V!45379)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!542437 () array!77144)

(declare-datatypes ((tuple2!19626 0))(
  ( (tuple2!19627 (_1!9823 (_ BitVec 64)) (_2!9823 V!45379)) )
))
(declare-datatypes ((List!26384 0))(
  ( (Nil!26381) (Cons!26380 (h!27589 tuple2!19626) (t!39042 List!26384)) )
))
(declare-datatypes ((ListLongMap!17607 0))(
  ( (ListLongMap!17608 (toList!8819 List!26384)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5233 (array!77142 array!77144 (_ BitVec 32) (_ BitVec 32) V!45379 V!45379 (_ BitVec 32) Int) ListLongMap!17607)

(declare-fun -!1792 (ListLongMap!17607 (_ BitVec 64)) ListLongMap!17607)

(assert (=> b!1193101 (= (getCurrentListMapNoExtraKeys!5233 lt!542442 lt!542437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1792 (getCurrentListMapNoExtraKeys!5233 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39522 0))(
  ( (Unit!39523) )
))
(declare-fun lt!542438 () Unit!39522)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!998 (array!77142 array!77144 (_ BitVec 32) (_ BitVec 32) V!45379 V!45379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39522)

(assert (=> b!1193101 (= lt!542438 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!998 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193102 () Bool)

(declare-fun e!678151 () Bool)

(declare-fun e!678152 () Bool)

(assert (=> b!1193102 (= e!678151 (not e!678152))))

(declare-fun res!793852 () Bool)

(assert (=> b!1193102 (=> res!793852 e!678152)))

(assert (=> b!1193102 (= res!793852 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193102 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542440 () Unit!39522)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77142 (_ BitVec 64) (_ BitVec 32)) Unit!39522)

(assert (=> b!1193102 (= lt!542440 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1193104 () Bool)

(declare-fun res!793844 () Bool)

(assert (=> b!1193104 (=> (not res!793844) (not e!678157))))

(assert (=> b!1193104 (= res!793844 (and (= (size!37755 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37754 _keys!1208) (size!37755 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193105 () Bool)

(assert (=> b!1193105 (= e!678152 e!678155)))

(declare-fun res!793842 () Bool)

(assert (=> b!1193105 (=> res!793842 e!678155)))

(assert (=> b!1193105 (= res!793842 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542441 () ListLongMap!17607)

(assert (=> b!1193105 (= lt!542441 (getCurrentListMapNoExtraKeys!5233 lt!542442 lt!542437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3172 (Int (_ BitVec 64)) V!45379)

(assert (=> b!1193105 (= lt!542437 (array!77145 (store (arr!37218 _values!996) i!673 (ValueCellFull!14385 (dynLambda!3172 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37755 _values!996)))))

(declare-fun lt!542439 () ListLongMap!17607)

(assert (=> b!1193105 (= lt!542439 (getCurrentListMapNoExtraKeys!5233 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193106 () Bool)

(declare-fun res!793848 () Bool)

(assert (=> b!1193106 (=> (not res!793848) (not e!678151))))

(assert (=> b!1193106 (= res!793848 (arrayNoDuplicates!0 lt!542442 #b00000000000000000000000000000000 Nil!26380))))

(declare-fun mapNonEmpty!47111 () Bool)

(declare-fun tp!89691 () Bool)

(assert (=> mapNonEmpty!47111 (= mapRes!47111 (and tp!89691 e!678153))))

(declare-fun mapValue!47111 () ValueCell!14385)

(declare-fun mapKey!47111 () (_ BitVec 32))

(declare-fun mapRest!47111 () (Array (_ BitVec 32) ValueCell!14385))

(assert (=> mapNonEmpty!47111 (= (arr!37218 _values!996) (store mapRest!47111 mapKey!47111 mapValue!47111))))

(declare-fun b!1193107 () Bool)

(assert (=> b!1193107 (= e!678157 e!678151)))

(declare-fun res!793847 () Bool)

(assert (=> b!1193107 (=> (not res!793847) (not e!678151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77142 (_ BitVec 32)) Bool)

(assert (=> b!1193107 (= res!793847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542442 mask!1564))))

(assert (=> b!1193107 (= lt!542442 (array!77143 (store (arr!37217 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37754 _keys!1208)))))

(declare-fun res!793851 () Bool)

(assert (=> start!100116 (=> (not res!793851) (not e!678157))))

(assert (=> start!100116 (= res!793851 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37754 _keys!1208))))))

(assert (=> start!100116 e!678157))

(assert (=> start!100116 tp_is_empty!30189))

(declare-fun array_inv!28274 (array!77142) Bool)

(assert (=> start!100116 (array_inv!28274 _keys!1208)))

(assert (=> start!100116 true))

(assert (=> start!100116 tp!89692))

(declare-fun array_inv!28275 (array!77144) Bool)

(assert (=> start!100116 (and (array_inv!28275 _values!996) e!678150)))

(declare-fun b!1193103 () Bool)

(declare-fun res!793845 () Bool)

(assert (=> b!1193103 (=> (not res!793845) (not e!678157))))

(assert (=> b!1193103 (= res!793845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193108 () Bool)

(declare-fun res!793846 () Bool)

(assert (=> b!1193108 (=> (not res!793846) (not e!678157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193108 (= res!793846 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47111 () Bool)

(assert (=> mapIsEmpty!47111 mapRes!47111))

(declare-fun b!1193109 () Bool)

(declare-fun res!793849 () Bool)

(assert (=> b!1193109 (=> (not res!793849) (not e!678157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193109 (= res!793849 (validKeyInArray!0 k0!934))))

(declare-fun b!1193110 () Bool)

(declare-fun res!793850 () Bool)

(assert (=> b!1193110 (=> (not res!793850) (not e!678157))))

(assert (=> b!1193110 (= res!793850 (= (select (arr!37217 _keys!1208) i!673) k0!934))))

(assert (= (and start!100116 res!793851) b!1193108))

(assert (= (and b!1193108 res!793846) b!1193104))

(assert (= (and b!1193104 res!793844) b!1193103))

(assert (= (and b!1193103 res!793845) b!1193097))

(assert (= (and b!1193097 res!793841) b!1193099))

(assert (= (and b!1193099 res!793843) b!1193109))

(assert (= (and b!1193109 res!793849) b!1193110))

(assert (= (and b!1193110 res!793850) b!1193107))

(assert (= (and b!1193107 res!793847) b!1193106))

(assert (= (and b!1193106 res!793848) b!1193102))

(assert (= (and b!1193102 (not res!793852)) b!1193105))

(assert (= (and b!1193105 (not res!793842)) b!1193101))

(assert (= (and b!1193100 condMapEmpty!47111) mapIsEmpty!47111))

(assert (= (and b!1193100 (not condMapEmpty!47111)) mapNonEmpty!47111))

(get-info :version)

(assert (= (and mapNonEmpty!47111 ((_ is ValueCellFull!14385) mapValue!47111)) b!1193098))

(assert (= (and b!1193100 ((_ is ValueCellFull!14385) mapDefault!47111)) b!1193096))

(assert (= start!100116 b!1193100))

(declare-fun b_lambda!20821 () Bool)

(assert (=> (not b_lambda!20821) (not b!1193105)))

(declare-fun t!39040 () Bool)

(declare-fun tb!10479 () Bool)

(assert (=> (and start!100116 (= defaultEntry!1004 defaultEntry!1004) t!39040) tb!10479))

(declare-fun result!21517 () Bool)

(assert (=> tb!10479 (= result!21517 tp_is_empty!30189)))

(assert (=> b!1193105 t!39040))

(declare-fun b_and!42201 () Bool)

(assert (= b_and!42199 (and (=> t!39040 result!21517) b_and!42201)))

(declare-fun m!1101431 () Bool)

(assert (=> b!1193110 m!1101431))

(declare-fun m!1101433 () Bool)

(assert (=> b!1193105 m!1101433))

(declare-fun m!1101435 () Bool)

(assert (=> b!1193105 m!1101435))

(declare-fun m!1101437 () Bool)

(assert (=> b!1193105 m!1101437))

(declare-fun m!1101439 () Bool)

(assert (=> b!1193105 m!1101439))

(declare-fun m!1101441 () Bool)

(assert (=> b!1193102 m!1101441))

(declare-fun m!1101443 () Bool)

(assert (=> b!1193102 m!1101443))

(declare-fun m!1101445 () Bool)

(assert (=> start!100116 m!1101445))

(declare-fun m!1101447 () Bool)

(assert (=> start!100116 m!1101447))

(declare-fun m!1101449 () Bool)

(assert (=> b!1193106 m!1101449))

(declare-fun m!1101451 () Bool)

(assert (=> b!1193101 m!1101451))

(declare-fun m!1101453 () Bool)

(assert (=> b!1193101 m!1101453))

(assert (=> b!1193101 m!1101453))

(declare-fun m!1101455 () Bool)

(assert (=> b!1193101 m!1101455))

(declare-fun m!1101457 () Bool)

(assert (=> b!1193101 m!1101457))

(declare-fun m!1101459 () Bool)

(assert (=> b!1193107 m!1101459))

(declare-fun m!1101461 () Bool)

(assert (=> b!1193107 m!1101461))

(declare-fun m!1101463 () Bool)

(assert (=> b!1193097 m!1101463))

(declare-fun m!1101465 () Bool)

(assert (=> b!1193109 m!1101465))

(declare-fun m!1101467 () Bool)

(assert (=> b!1193108 m!1101467))

(declare-fun m!1101469 () Bool)

(assert (=> b!1193103 m!1101469))

(declare-fun m!1101471 () Bool)

(assert (=> mapNonEmpty!47111 m!1101471))

(check-sat (not b!1193101) b_and!42201 (not b!1193102) (not mapNonEmpty!47111) (not start!100116) (not b!1193105) (not b_next!25659) tp_is_empty!30189 (not b!1193103) (not b_lambda!20821) (not b!1193107) (not b!1193108) (not b!1193106) (not b!1193109) (not b!1193097))
(check-sat b_and!42201 (not b_next!25659))
