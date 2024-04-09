; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101216 () Bool)

(assert start!101216)

(declare-fun b_free!26103 () Bool)

(declare-fun b_next!26103 () Bool)

(assert (=> start!101216 (= b_free!26103 (not b_next!26103))))

(declare-fun tp!91331 () Bool)

(declare-fun b_and!43333 () Bool)

(assert (=> start!101216 (= tp!91331 b_and!43333)))

(declare-fun res!806374 () Bool)

(declare-fun e!689714 () Bool)

(assert (=> start!101216 (=> (not res!806374) (not e!689714))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78372 0))(
  ( (array!78373 (arr!37817 (Array (_ BitVec 32) (_ BitVec 64))) (size!38354 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78372)

(assert (=> start!101216 (= res!806374 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38354 _keys!1208))))))

(assert (=> start!101216 e!689714))

(declare-fun tp_is_empty!30807 () Bool)

(assert (=> start!101216 tp_is_empty!30807))

(declare-fun array_inv!28704 (array!78372) Bool)

(assert (=> start!101216 (array_inv!28704 _keys!1208)))

(assert (=> start!101216 true))

(assert (=> start!101216 tp!91331))

(declare-datatypes ((V!46203 0))(
  ( (V!46204 (val!15460 Int)) )
))
(declare-datatypes ((ValueCell!14694 0))(
  ( (ValueCellFull!14694 (v!18114 V!46203)) (EmptyCell!14694) )
))
(declare-datatypes ((array!78374 0))(
  ( (array!78375 (arr!37818 (Array (_ BitVec 32) ValueCell!14694)) (size!38355 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78374)

(declare-fun e!689712 () Bool)

(declare-fun array_inv!28705 (array!78374) Bool)

(assert (=> start!101216 (and (array_inv!28705 _values!996) e!689712)))

(declare-fun b!1214464 () Bool)

(declare-fun e!689713 () Bool)

(assert (=> b!1214464 (= e!689713 true)))

(declare-fun zeroValue!944 () V!46203)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46203)

(declare-fun lt!552311 () array!78372)

(declare-datatypes ((tuple2!20012 0))(
  ( (tuple2!20013 (_1!10016 (_ BitVec 64)) (_2!10016 V!46203)) )
))
(declare-datatypes ((List!26830 0))(
  ( (Nil!26827) (Cons!26826 (h!28035 tuple2!20012) (t!39920 List!26830)) )
))
(declare-datatypes ((ListLongMap!17993 0))(
  ( (ListLongMap!17994 (toList!9012 List!26830)) )
))
(declare-fun lt!552310 () ListLongMap!17993)

(declare-fun getCurrentListMapNoExtraKeys!5417 (array!78372 array!78374 (_ BitVec 32) (_ BitVec 32) V!46203 V!46203 (_ BitVec 32) Int) ListLongMap!17993)

(declare-fun dynLambda!3326 (Int (_ BitVec 64)) V!46203)

(assert (=> b!1214464 (= lt!552310 (getCurrentListMapNoExtraKeys!5417 lt!552311 (array!78375 (store (arr!37818 _values!996) i!673 (ValueCellFull!14694 (dynLambda!3326 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38355 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552309 () ListLongMap!17993)

(assert (=> b!1214464 (= lt!552309 (getCurrentListMapNoExtraKeys!5417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214465 () Bool)

(declare-fun res!806376 () Bool)

(assert (=> b!1214465 (=> (not res!806376) (not e!689714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214465 (= res!806376 (validMask!0 mask!1564))))

(declare-fun b!1214466 () Bool)

(declare-fun e!689709 () Bool)

(assert (=> b!1214466 (= e!689714 e!689709)))

(declare-fun res!806380 () Bool)

(assert (=> b!1214466 (=> (not res!806380) (not e!689709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78372 (_ BitVec 32)) Bool)

(assert (=> b!1214466 (= res!806380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552311 mask!1564))))

(assert (=> b!1214466 (= lt!552311 (array!78373 (store (arr!37817 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38354 _keys!1208)))))

(declare-fun b!1214467 () Bool)

(assert (=> b!1214467 (= e!689709 (not e!689713))))

(declare-fun res!806372 () Bool)

(assert (=> b!1214467 (=> res!806372 e!689713)))

(assert (=> b!1214467 (= res!806372 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214467 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40208 0))(
  ( (Unit!40209) )
))
(declare-fun lt!552308 () Unit!40208)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78372 (_ BitVec 64) (_ BitVec 32)) Unit!40208)

(assert (=> b!1214467 (= lt!552308 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1214468 () Bool)

(declare-fun res!806371 () Bool)

(assert (=> b!1214468 (=> (not res!806371) (not e!689714))))

(declare-datatypes ((List!26831 0))(
  ( (Nil!26828) (Cons!26827 (h!28036 (_ BitVec 64)) (t!39921 List!26831)) )
))
(declare-fun arrayNoDuplicates!0 (array!78372 (_ BitVec 32) List!26831) Bool)

(assert (=> b!1214468 (= res!806371 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26828))))

(declare-fun b!1214469 () Bool)

(declare-fun res!806375 () Bool)

(assert (=> b!1214469 (=> (not res!806375) (not e!689714))))

(assert (=> b!1214469 (= res!806375 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38354 _keys!1208))))))

(declare-fun b!1214470 () Bool)

(declare-fun e!689715 () Bool)

(assert (=> b!1214470 (= e!689715 tp_is_empty!30807)))

(declare-fun mapIsEmpty!48085 () Bool)

(declare-fun mapRes!48085 () Bool)

(assert (=> mapIsEmpty!48085 mapRes!48085))

(declare-fun b!1214471 () Bool)

(declare-fun res!806377 () Bool)

(assert (=> b!1214471 (=> (not res!806377) (not e!689714))))

(assert (=> b!1214471 (= res!806377 (and (= (size!38355 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38354 _keys!1208) (size!38355 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214472 () Bool)

(declare-fun res!806379 () Bool)

(assert (=> b!1214472 (=> (not res!806379) (not e!689714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214472 (= res!806379 (validKeyInArray!0 k0!934))))

(declare-fun b!1214473 () Bool)

(declare-fun res!806370 () Bool)

(assert (=> b!1214473 (=> (not res!806370) (not e!689714))))

(assert (=> b!1214473 (= res!806370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48085 () Bool)

(declare-fun tp!91332 () Bool)

(assert (=> mapNonEmpty!48085 (= mapRes!48085 (and tp!91332 e!689715))))

(declare-fun mapKey!48085 () (_ BitVec 32))

(declare-fun mapRest!48085 () (Array (_ BitVec 32) ValueCell!14694))

(declare-fun mapValue!48085 () ValueCell!14694)

(assert (=> mapNonEmpty!48085 (= (arr!37818 _values!996) (store mapRest!48085 mapKey!48085 mapValue!48085))))

(declare-fun b!1214474 () Bool)

(declare-fun e!689710 () Bool)

(assert (=> b!1214474 (= e!689712 (and e!689710 mapRes!48085))))

(declare-fun condMapEmpty!48085 () Bool)

(declare-fun mapDefault!48085 () ValueCell!14694)

(assert (=> b!1214474 (= condMapEmpty!48085 (= (arr!37818 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14694)) mapDefault!48085)))))

(declare-fun b!1214475 () Bool)

(declare-fun res!806378 () Bool)

(assert (=> b!1214475 (=> (not res!806378) (not e!689709))))

(assert (=> b!1214475 (= res!806378 (arrayNoDuplicates!0 lt!552311 #b00000000000000000000000000000000 Nil!26828))))

(declare-fun b!1214476 () Bool)

(assert (=> b!1214476 (= e!689710 tp_is_empty!30807)))

(declare-fun b!1214477 () Bool)

(declare-fun res!806373 () Bool)

(assert (=> b!1214477 (=> (not res!806373) (not e!689714))))

(assert (=> b!1214477 (= res!806373 (= (select (arr!37817 _keys!1208) i!673) k0!934))))

(assert (= (and start!101216 res!806374) b!1214465))

(assert (= (and b!1214465 res!806376) b!1214471))

(assert (= (and b!1214471 res!806377) b!1214473))

(assert (= (and b!1214473 res!806370) b!1214468))

(assert (= (and b!1214468 res!806371) b!1214469))

(assert (= (and b!1214469 res!806375) b!1214472))

(assert (= (and b!1214472 res!806379) b!1214477))

(assert (= (and b!1214477 res!806373) b!1214466))

(assert (= (and b!1214466 res!806380) b!1214475))

(assert (= (and b!1214475 res!806378) b!1214467))

(assert (= (and b!1214467 (not res!806372)) b!1214464))

(assert (= (and b!1214474 condMapEmpty!48085) mapIsEmpty!48085))

(assert (= (and b!1214474 (not condMapEmpty!48085)) mapNonEmpty!48085))

(get-info :version)

(assert (= (and mapNonEmpty!48085 ((_ is ValueCellFull!14694) mapValue!48085)) b!1214470))

(assert (= (and b!1214474 ((_ is ValueCellFull!14694) mapDefault!48085)) b!1214476))

(assert (= start!101216 b!1214474))

(declare-fun b_lambda!21789 () Bool)

(assert (=> (not b_lambda!21789) (not b!1214464)))

(declare-fun t!39919 () Bool)

(declare-fun tb!10911 () Bool)

(assert (=> (and start!101216 (= defaultEntry!1004 defaultEntry!1004) t!39919) tb!10911))

(declare-fun result!22411 () Bool)

(assert (=> tb!10911 (= result!22411 tp_is_empty!30807)))

(assert (=> b!1214464 t!39919))

(declare-fun b_and!43335 () Bool)

(assert (= b_and!43333 (and (=> t!39919 result!22411) b_and!43335)))

(declare-fun m!1119681 () Bool)

(assert (=> b!1214467 m!1119681))

(declare-fun m!1119683 () Bool)

(assert (=> b!1214467 m!1119683))

(declare-fun m!1119685 () Bool)

(assert (=> mapNonEmpty!48085 m!1119685))

(declare-fun m!1119687 () Bool)

(assert (=> b!1214473 m!1119687))

(declare-fun m!1119689 () Bool)

(assert (=> b!1214468 m!1119689))

(declare-fun m!1119691 () Bool)

(assert (=> b!1214475 m!1119691))

(declare-fun m!1119693 () Bool)

(assert (=> b!1214465 m!1119693))

(declare-fun m!1119695 () Bool)

(assert (=> b!1214472 m!1119695))

(declare-fun m!1119697 () Bool)

(assert (=> start!101216 m!1119697))

(declare-fun m!1119699 () Bool)

(assert (=> start!101216 m!1119699))

(declare-fun m!1119701 () Bool)

(assert (=> b!1214464 m!1119701))

(declare-fun m!1119703 () Bool)

(assert (=> b!1214464 m!1119703))

(declare-fun m!1119705 () Bool)

(assert (=> b!1214464 m!1119705))

(declare-fun m!1119707 () Bool)

(assert (=> b!1214464 m!1119707))

(declare-fun m!1119709 () Bool)

(assert (=> b!1214466 m!1119709))

(declare-fun m!1119711 () Bool)

(assert (=> b!1214466 m!1119711))

(declare-fun m!1119713 () Bool)

(assert (=> b!1214477 m!1119713))

(check-sat (not b!1214472) b_and!43335 (not start!101216) (not b!1214473) (not mapNonEmpty!48085) (not b!1214467) (not b!1214475) (not b!1214465) (not b_lambda!21789) tp_is_empty!30807 (not b!1214468) (not b!1214464) (not b_next!26103) (not b!1214466))
(check-sat b_and!43335 (not b_next!26103))
