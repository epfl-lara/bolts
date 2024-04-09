; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98200 () Bool)

(assert start!98200)

(declare-fun b_free!23865 () Bool)

(declare-fun b_next!23865 () Bool)

(assert (=> start!98200 (= b_free!23865 (not b_next!23865))))

(declare-fun tp!84299 () Bool)

(declare-fun b_and!38535 () Bool)

(assert (=> start!98200 (= tp!84299 b_and!38535)))

(declare-fun b!1128803 () Bool)

(declare-fun res!754454 () Bool)

(declare-fun e!642469 () Bool)

(assert (=> b!1128803 (=> (not res!754454) (not e!642469))))

(declare-datatypes ((array!73608 0))(
  ( (array!73609 (arr!35453 (Array (_ BitVec 32) (_ BitVec 64))) (size!35990 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73608)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73608 (_ BitVec 32)) Bool)

(assert (=> b!1128803 (= res!754454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128804 () Bool)

(declare-fun e!642473 () Bool)

(declare-fun tp_is_empty!28395 () Bool)

(assert (=> b!1128804 (= e!642473 tp_is_empty!28395)))

(declare-fun b!1128805 () Bool)

(declare-fun res!754446 () Bool)

(assert (=> b!1128805 (=> (not res!754446) (not e!642469))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1128805 (= res!754446 (= (select (arr!35453 _keys!1208) i!673) k0!934))))

(declare-fun b!1128806 () Bool)

(declare-fun e!642466 () Bool)

(declare-fun e!642472 () Bool)

(assert (=> b!1128806 (= e!642466 (not e!642472))))

(declare-fun res!754457 () Bool)

(assert (=> b!1128806 (=> res!754457 e!642472)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1128806 (= res!754457 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128806 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36929 0))(
  ( (Unit!36930) )
))
(declare-fun lt!501075 () Unit!36929)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73608 (_ BitVec 64) (_ BitVec 32)) Unit!36929)

(assert (=> b!1128806 (= lt!501075 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1128807 () Bool)

(declare-fun res!754453 () Bool)

(assert (=> b!1128807 (=> (not res!754453) (not e!642469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128807 (= res!754453 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!44410 () Bool)

(declare-fun mapRes!44410 () Bool)

(assert (=> mapIsEmpty!44410 mapRes!44410))

(declare-fun b!1128808 () Bool)

(assert (=> b!1128808 (= e!642469 e!642466)))

(declare-fun res!754451 () Bool)

(assert (=> b!1128808 (=> (not res!754451) (not e!642466))))

(declare-fun lt!501072 () array!73608)

(assert (=> b!1128808 (= res!754451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501072 mask!1564))))

(assert (=> b!1128808 (= lt!501072 (array!73609 (store (arr!35453 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35990 _keys!1208)))))

(declare-fun b!1128809 () Bool)

(declare-fun e!642464 () Bool)

(declare-fun e!642470 () Bool)

(assert (=> b!1128809 (= e!642464 e!642470)))

(declare-fun res!754455 () Bool)

(assert (=> b!1128809 (=> res!754455 e!642470)))

(assert (=> b!1128809 (= res!754455 (not (= (select (arr!35453 _keys!1208) from!1455) k0!934)))))

(declare-fun e!642471 () Bool)

(assert (=> b!1128809 e!642471))

(declare-fun c!109748 () Bool)

(assert (=> b!1128809 (= c!109748 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42987 0))(
  ( (V!42988 (val!14254 Int)) )
))
(declare-fun zeroValue!944 () V!42987)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!501077 () Unit!36929)

(declare-fun minValue!944 () V!42987)

(declare-datatypes ((ValueCell!13488 0))(
  ( (ValueCellFull!13488 (v!16888 V!42987)) (EmptyCell!13488) )
))
(declare-datatypes ((array!73610 0))(
  ( (array!73611 (arr!35454 (Array (_ BitVec 32) ValueCell!13488)) (size!35991 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73610)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!409 (array!73608 array!73610 (_ BitVec 32) (_ BitVec 32) V!42987 V!42987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36929)

(assert (=> b!1128809 (= lt!501077 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!409 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47875 () Bool)

(declare-fun lt!501078 () array!73610)

(declare-datatypes ((tuple2!18032 0))(
  ( (tuple2!18033 (_1!9026 (_ BitVec 64)) (_2!9026 V!42987)) )
))
(declare-datatypes ((List!24852 0))(
  ( (Nil!24849) (Cons!24848 (h!26057 tuple2!18032) (t!35716 List!24852)) )
))
(declare-datatypes ((ListLongMap!16013 0))(
  ( (ListLongMap!16014 (toList!8022 List!24852)) )
))
(declare-fun call!47879 () ListLongMap!16013)

(declare-fun getCurrentListMapNoExtraKeys!4476 (array!73608 array!73610 (_ BitVec 32) (_ BitVec 32) V!42987 V!42987 (_ BitVec 32) Int) ListLongMap!16013)

(assert (=> bm!47875 (= call!47879 (getCurrentListMapNoExtraKeys!4476 lt!501072 lt!501078 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128810 () Bool)

(declare-fun res!754448 () Bool)

(assert (=> b!1128810 (=> (not res!754448) (not e!642469))))

(assert (=> b!1128810 (= res!754448 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35990 _keys!1208))))))

(declare-fun b!1128811 () Bool)

(declare-fun e!642465 () Bool)

(assert (=> b!1128811 (= e!642465 (and e!642473 mapRes!44410))))

(declare-fun condMapEmpty!44410 () Bool)

(declare-fun mapDefault!44410 () ValueCell!13488)

(assert (=> b!1128811 (= condMapEmpty!44410 (= (arr!35454 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13488)) mapDefault!44410)))))

(declare-fun b!1128802 () Bool)

(declare-fun e!642467 () Bool)

(assert (=> b!1128802 (= e!642467 tp_is_empty!28395)))

(declare-fun res!754452 () Bool)

(assert (=> start!98200 (=> (not res!754452) (not e!642469))))

(assert (=> start!98200 (= res!754452 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35990 _keys!1208))))))

(assert (=> start!98200 e!642469))

(assert (=> start!98200 tp_is_empty!28395))

(declare-fun array_inv!27068 (array!73608) Bool)

(assert (=> start!98200 (array_inv!27068 _keys!1208)))

(assert (=> start!98200 true))

(assert (=> start!98200 tp!84299))

(declare-fun array_inv!27069 (array!73610) Bool)

(assert (=> start!98200 (and (array_inv!27069 _values!996) e!642465)))

(declare-fun b!1128812 () Bool)

(declare-fun res!754458 () Bool)

(assert (=> b!1128812 (=> (not res!754458) (not e!642469))))

(declare-datatypes ((List!24853 0))(
  ( (Nil!24850) (Cons!24849 (h!26058 (_ BitVec 64)) (t!35717 List!24853)) )
))
(declare-fun arrayNoDuplicates!0 (array!73608 (_ BitVec 32) List!24853) Bool)

(assert (=> b!1128812 (= res!754458 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24850))))

(declare-fun b!1128813 () Bool)

(assert (=> b!1128813 (= e!642470 true)))

(declare-fun lt!501074 () Bool)

(declare-fun contains!6516 (ListLongMap!16013 (_ BitVec 64)) Bool)

(assert (=> b!1128813 (= lt!501074 (contains!6516 (getCurrentListMapNoExtraKeys!4476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!47876 () Bool)

(declare-fun call!47878 () ListLongMap!16013)

(assert (=> bm!47876 (= call!47878 (getCurrentListMapNoExtraKeys!4476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128814 () Bool)

(declare-fun res!754450 () Bool)

(assert (=> b!1128814 (=> (not res!754450) (not e!642469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128814 (= res!754450 (validMask!0 mask!1564))))

(declare-fun b!1128815 () Bool)

(assert (=> b!1128815 (= e!642471 (= call!47879 call!47878))))

(declare-fun b!1128816 () Bool)

(declare-fun res!754456 () Bool)

(assert (=> b!1128816 (=> (not res!754456) (not e!642469))))

(assert (=> b!1128816 (= res!754456 (and (= (size!35991 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35990 _keys!1208) (size!35991 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128817 () Bool)

(assert (=> b!1128817 (= e!642472 e!642464)))

(declare-fun res!754447 () Bool)

(assert (=> b!1128817 (=> res!754447 e!642464)))

(assert (=> b!1128817 (= res!754447 (not (= from!1455 i!673)))))

(declare-fun lt!501073 () ListLongMap!16013)

(assert (=> b!1128817 (= lt!501073 (getCurrentListMapNoExtraKeys!4476 lt!501072 lt!501078 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2554 (Int (_ BitVec 64)) V!42987)

(assert (=> b!1128817 (= lt!501078 (array!73611 (store (arr!35454 _values!996) i!673 (ValueCellFull!13488 (dynLambda!2554 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35991 _values!996)))))

(declare-fun lt!501076 () ListLongMap!16013)

(assert (=> b!1128817 (= lt!501076 (getCurrentListMapNoExtraKeys!4476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1128818 () Bool)

(declare-fun -!1157 (ListLongMap!16013 (_ BitVec 64)) ListLongMap!16013)

(assert (=> b!1128818 (= e!642471 (= call!47879 (-!1157 call!47878 k0!934)))))

(declare-fun b!1128819 () Bool)

(declare-fun res!754449 () Bool)

(assert (=> b!1128819 (=> (not res!754449) (not e!642466))))

(assert (=> b!1128819 (= res!754449 (arrayNoDuplicates!0 lt!501072 #b00000000000000000000000000000000 Nil!24850))))

(declare-fun mapNonEmpty!44410 () Bool)

(declare-fun tp!84300 () Bool)

(assert (=> mapNonEmpty!44410 (= mapRes!44410 (and tp!84300 e!642467))))

(declare-fun mapKey!44410 () (_ BitVec 32))

(declare-fun mapRest!44410 () (Array (_ BitVec 32) ValueCell!13488))

(declare-fun mapValue!44410 () ValueCell!13488)

(assert (=> mapNonEmpty!44410 (= (arr!35454 _values!996) (store mapRest!44410 mapKey!44410 mapValue!44410))))

(assert (= (and start!98200 res!754452) b!1128814))

(assert (= (and b!1128814 res!754450) b!1128816))

(assert (= (and b!1128816 res!754456) b!1128803))

(assert (= (and b!1128803 res!754454) b!1128812))

(assert (= (and b!1128812 res!754458) b!1128810))

(assert (= (and b!1128810 res!754448) b!1128807))

(assert (= (and b!1128807 res!754453) b!1128805))

(assert (= (and b!1128805 res!754446) b!1128808))

(assert (= (and b!1128808 res!754451) b!1128819))

(assert (= (and b!1128819 res!754449) b!1128806))

(assert (= (and b!1128806 (not res!754457)) b!1128817))

(assert (= (and b!1128817 (not res!754447)) b!1128809))

(assert (= (and b!1128809 c!109748) b!1128818))

(assert (= (and b!1128809 (not c!109748)) b!1128815))

(assert (= (or b!1128818 b!1128815) bm!47875))

(assert (= (or b!1128818 b!1128815) bm!47876))

(assert (= (and b!1128809 (not res!754455)) b!1128813))

(assert (= (and b!1128811 condMapEmpty!44410) mapIsEmpty!44410))

(assert (= (and b!1128811 (not condMapEmpty!44410)) mapNonEmpty!44410))

(get-info :version)

(assert (= (and mapNonEmpty!44410 ((_ is ValueCellFull!13488) mapValue!44410)) b!1128802))

(assert (= (and b!1128811 ((_ is ValueCellFull!13488) mapDefault!44410)) b!1128804))

(assert (= start!98200 b!1128811))

(declare-fun b_lambda!18869 () Bool)

(assert (=> (not b_lambda!18869) (not b!1128817)))

(declare-fun t!35715 () Bool)

(declare-fun tb!8685 () Bool)

(assert (=> (and start!98200 (= defaultEntry!1004 defaultEntry!1004) t!35715) tb!8685))

(declare-fun result!17923 () Bool)

(assert (=> tb!8685 (= result!17923 tp_is_empty!28395)))

(assert (=> b!1128817 t!35715))

(declare-fun b_and!38537 () Bool)

(assert (= b_and!38535 (and (=> t!35715 result!17923) b_and!38537)))

(declare-fun m!1042445 () Bool)

(assert (=> b!1128809 m!1042445))

(declare-fun m!1042447 () Bool)

(assert (=> b!1128809 m!1042447))

(declare-fun m!1042449 () Bool)

(assert (=> bm!47876 m!1042449))

(declare-fun m!1042451 () Bool)

(assert (=> b!1128818 m!1042451))

(assert (=> b!1128813 m!1042449))

(assert (=> b!1128813 m!1042449))

(declare-fun m!1042453 () Bool)

(assert (=> b!1128813 m!1042453))

(declare-fun m!1042455 () Bool)

(assert (=> b!1128812 m!1042455))

(declare-fun m!1042457 () Bool)

(assert (=> b!1128807 m!1042457))

(declare-fun m!1042459 () Bool)

(assert (=> b!1128805 m!1042459))

(declare-fun m!1042461 () Bool)

(assert (=> bm!47875 m!1042461))

(declare-fun m!1042463 () Bool)

(assert (=> b!1128817 m!1042463))

(declare-fun m!1042465 () Bool)

(assert (=> b!1128817 m!1042465))

(declare-fun m!1042467 () Bool)

(assert (=> b!1128817 m!1042467))

(declare-fun m!1042469 () Bool)

(assert (=> b!1128817 m!1042469))

(declare-fun m!1042471 () Bool)

(assert (=> b!1128803 m!1042471))

(declare-fun m!1042473 () Bool)

(assert (=> b!1128808 m!1042473))

(declare-fun m!1042475 () Bool)

(assert (=> b!1128808 m!1042475))

(declare-fun m!1042477 () Bool)

(assert (=> b!1128819 m!1042477))

(declare-fun m!1042479 () Bool)

(assert (=> mapNonEmpty!44410 m!1042479))

(declare-fun m!1042481 () Bool)

(assert (=> start!98200 m!1042481))

(declare-fun m!1042483 () Bool)

(assert (=> start!98200 m!1042483))

(declare-fun m!1042485 () Bool)

(assert (=> b!1128814 m!1042485))

(declare-fun m!1042487 () Bool)

(assert (=> b!1128806 m!1042487))

(declare-fun m!1042489 () Bool)

(assert (=> b!1128806 m!1042489))

(check-sat (not b!1128808) (not b!1128814) (not b!1128807) (not b!1128818) (not start!98200) (not b!1128817) (not b_next!23865) tp_is_empty!28395 (not bm!47875) (not b!1128812) b_and!38537 (not mapNonEmpty!44410) (not b!1128809) (not b_lambda!18869) (not b!1128819) (not b!1128803) (not b!1128813) (not b!1128806) (not bm!47876))
(check-sat b_and!38537 (not b_next!23865))
