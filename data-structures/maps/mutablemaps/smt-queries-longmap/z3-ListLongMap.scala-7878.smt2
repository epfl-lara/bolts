; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98050 () Bool)

(assert start!98050)

(declare-fun b_free!23715 () Bool)

(declare-fun b_next!23715 () Bool)

(assert (=> start!98050 (= b_free!23715 (not b_next!23715))))

(declare-fun tp!83849 () Bool)

(declare-fun b_and!38235 () Bool)

(assert (=> start!98050 (= tp!83849 b_and!38235)))

(declare-fun b!1124486 () Bool)

(declare-fun e!640169 () Bool)

(declare-datatypes ((V!42787 0))(
  ( (V!42788 (val!14179 Int)) )
))
(declare-datatypes ((tuple2!17892 0))(
  ( (tuple2!17893 (_1!8956 (_ BitVec 64)) (_2!8956 V!42787)) )
))
(declare-datatypes ((List!24723 0))(
  ( (Nil!24720) (Cons!24719 (h!25928 tuple2!17892) (t!35437 List!24723)) )
))
(declare-datatypes ((ListLongMap!15873 0))(
  ( (ListLongMap!15874 (toList!7952 List!24723)) )
))
(declare-fun call!47428 () ListLongMap!15873)

(declare-fun call!47429 () ListLongMap!15873)

(assert (=> b!1124486 (= e!640169 (= call!47428 call!47429))))

(declare-fun b!1124487 () Bool)

(declare-fun res!751407 () Bool)

(declare-fun e!640174 () Bool)

(assert (=> b!1124487 (=> (not res!751407) (not e!640174))))

(declare-datatypes ((array!73314 0))(
  ( (array!73315 (arr!35306 (Array (_ BitVec 32) (_ BitVec 64))) (size!35843 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73314)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13413 0))(
  ( (ValueCellFull!13413 (v!16813 V!42787)) (EmptyCell!13413) )
))
(declare-datatypes ((array!73316 0))(
  ( (array!73317 (arr!35307 (Array (_ BitVec 32) ValueCell!13413)) (size!35844 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73316)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1124487 (= res!751407 (and (= (size!35844 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35843 _keys!1208) (size!35844 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124488 () Bool)

(declare-fun e!640170 () Bool)

(declare-fun e!640172 () Bool)

(assert (=> b!1124488 (= e!640170 e!640172)))

(declare-fun res!751413 () Bool)

(assert (=> b!1124488 (=> res!751413 e!640172)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1124488 (= res!751413 (not (= (select (arr!35306 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1124488 e!640169))

(declare-fun c!109523 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124488 (= c!109523 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42787)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36803 0))(
  ( (Unit!36804) )
))
(declare-fun lt!499466 () Unit!36803)

(declare-fun minValue!944 () V!42787)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!356 (array!73314 array!73316 (_ BitVec 32) (_ BitVec 32) V!42787 V!42787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36803)

(assert (=> b!1124488 (= lt!499466 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!356 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124489 () Bool)

(declare-fun res!751416 () Bool)

(declare-fun e!640171 () Bool)

(assert (=> b!1124489 (=> res!751416 e!640171)))

(assert (=> b!1124489 (= res!751416 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124490 () Bool)

(declare-fun res!751419 () Bool)

(assert (=> b!1124490 (=> (not res!751419) (not e!640174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73314 (_ BitVec 32)) Bool)

(assert (=> b!1124490 (= res!751419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47425 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4411 (array!73314 array!73316 (_ BitVec 32) (_ BitVec 32) V!42787 V!42787 (_ BitVec 32) Int) ListLongMap!15873)

(assert (=> bm!47425 (= call!47429 (getCurrentListMapNoExtraKeys!4411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!751408 () Bool)

(assert (=> start!98050 (=> (not res!751408) (not e!640174))))

(assert (=> start!98050 (= res!751408 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35843 _keys!1208))))))

(assert (=> start!98050 e!640174))

(declare-fun tp_is_empty!28245 () Bool)

(assert (=> start!98050 tp_is_empty!28245))

(declare-fun array_inv!26972 (array!73314) Bool)

(assert (=> start!98050 (array_inv!26972 _keys!1208)))

(assert (=> start!98050 true))

(assert (=> start!98050 tp!83849))

(declare-fun e!640165 () Bool)

(declare-fun array_inv!26973 (array!73316) Bool)

(assert (=> start!98050 (and (array_inv!26973 _values!996) e!640165)))

(declare-fun b!1124491 () Bool)

(declare-fun res!751417 () Bool)

(assert (=> b!1124491 (=> (not res!751417) (not e!640174))))

(assert (=> b!1124491 (= res!751417 (= (select (arr!35306 _keys!1208) i!673) k0!934))))

(declare-fun b!1124492 () Bool)

(declare-fun e!640166 () Bool)

(declare-fun e!640168 () Bool)

(assert (=> b!1124492 (= e!640166 (not e!640168))))

(declare-fun res!751415 () Bool)

(assert (=> b!1124492 (=> res!751415 e!640168)))

(assert (=> b!1124492 (= res!751415 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124492 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499470 () Unit!36803)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73314 (_ BitVec 64) (_ BitVec 32)) Unit!36803)

(assert (=> b!1124492 (= lt!499470 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1124493 () Bool)

(declare-fun e!640173 () Bool)

(assert (=> b!1124493 (= e!640173 tp_is_empty!28245)))

(declare-fun b!1124494 () Bool)

(declare-fun -!1103 (ListLongMap!15873 (_ BitVec 64)) ListLongMap!15873)

(assert (=> b!1124494 (= e!640169 (= call!47428 (-!1103 call!47429 k0!934)))))

(declare-fun b!1124495 () Bool)

(declare-fun mapRes!44185 () Bool)

(assert (=> b!1124495 (= e!640165 (and e!640173 mapRes!44185))))

(declare-fun condMapEmpty!44185 () Bool)

(declare-fun mapDefault!44185 () ValueCell!13413)

(assert (=> b!1124495 (= condMapEmpty!44185 (= (arr!35307 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13413)) mapDefault!44185)))))

(declare-fun b!1124496 () Bool)

(assert (=> b!1124496 (= e!640174 e!640166)))

(declare-fun res!751418 () Bool)

(assert (=> b!1124496 (=> (not res!751418) (not e!640166))))

(declare-fun lt!499472 () array!73314)

(assert (=> b!1124496 (= res!751418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499472 mask!1564))))

(assert (=> b!1124496 (= lt!499472 (array!73315 (store (arr!35306 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35843 _keys!1208)))))

(declare-fun b!1124497 () Bool)

(assert (=> b!1124497 (= e!640172 e!640171)))

(declare-fun res!751409 () Bool)

(assert (=> b!1124497 (=> res!751409 e!640171)))

(declare-fun lt!499467 () ListLongMap!15873)

(declare-fun contains!6463 (ListLongMap!15873 (_ BitVec 64)) Bool)

(assert (=> b!1124497 (= res!751409 (not (contains!6463 lt!499467 k0!934)))))

(assert (=> b!1124497 (= lt!499467 (getCurrentListMapNoExtraKeys!4411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124498 () Bool)

(declare-fun e!640175 () Bool)

(assert (=> b!1124498 (= e!640175 tp_is_empty!28245)))

(declare-fun mapIsEmpty!44185 () Bool)

(assert (=> mapIsEmpty!44185 mapRes!44185))

(declare-fun b!1124499 () Bool)

(declare-fun res!751405 () Bool)

(assert (=> b!1124499 (=> (not res!751405) (not e!640174))))

(assert (=> b!1124499 (= res!751405 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35843 _keys!1208))))))

(declare-fun b!1124500 () Bool)

(assert (=> b!1124500 (= e!640171 true)))

(declare-fun +!3380 (ListLongMap!15873 tuple2!17892) ListLongMap!15873)

(assert (=> b!1124500 (contains!6463 (+!3380 lt!499467 (tuple2!17893 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499473 () Unit!36803)

(declare-fun addStillContains!679 (ListLongMap!15873 (_ BitVec 64) V!42787 (_ BitVec 64)) Unit!36803)

(assert (=> b!1124500 (= lt!499473 (addStillContains!679 lt!499467 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1124501 () Bool)

(declare-fun res!751411 () Bool)

(assert (=> b!1124501 (=> (not res!751411) (not e!640174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124501 (= res!751411 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!44185 () Bool)

(declare-fun tp!83850 () Bool)

(assert (=> mapNonEmpty!44185 (= mapRes!44185 (and tp!83850 e!640175))))

(declare-fun mapValue!44185 () ValueCell!13413)

(declare-fun mapKey!44185 () (_ BitVec 32))

(declare-fun mapRest!44185 () (Array (_ BitVec 32) ValueCell!13413))

(assert (=> mapNonEmpty!44185 (= (arr!35307 _values!996) (store mapRest!44185 mapKey!44185 mapValue!44185))))

(declare-fun b!1124502 () Bool)

(declare-fun res!751412 () Bool)

(assert (=> b!1124502 (=> (not res!751412) (not e!640174))))

(declare-datatypes ((List!24724 0))(
  ( (Nil!24721) (Cons!24720 (h!25929 (_ BitVec 64)) (t!35438 List!24724)) )
))
(declare-fun arrayNoDuplicates!0 (array!73314 (_ BitVec 32) List!24724) Bool)

(assert (=> b!1124502 (= res!751412 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24721))))

(declare-fun b!1124503 () Bool)

(assert (=> b!1124503 (= e!640168 e!640170)))

(declare-fun res!751410 () Bool)

(assert (=> b!1124503 (=> res!751410 e!640170)))

(assert (=> b!1124503 (= res!751410 (not (= from!1455 i!673)))))

(declare-fun lt!499469 () array!73316)

(declare-fun lt!499471 () ListLongMap!15873)

(assert (=> b!1124503 (= lt!499471 (getCurrentListMapNoExtraKeys!4411 lt!499472 lt!499469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2500 (Int (_ BitVec 64)) V!42787)

(assert (=> b!1124503 (= lt!499469 (array!73317 (store (arr!35307 _values!996) i!673 (ValueCellFull!13413 (dynLambda!2500 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35844 _values!996)))))

(declare-fun lt!499468 () ListLongMap!15873)

(assert (=> b!1124503 (= lt!499468 (getCurrentListMapNoExtraKeys!4411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124504 () Bool)

(declare-fun res!751414 () Bool)

(assert (=> b!1124504 (=> (not res!751414) (not e!640166))))

(assert (=> b!1124504 (= res!751414 (arrayNoDuplicates!0 lt!499472 #b00000000000000000000000000000000 Nil!24721))))

(declare-fun bm!47426 () Bool)

(assert (=> bm!47426 (= call!47428 (getCurrentListMapNoExtraKeys!4411 lt!499472 lt!499469 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124505 () Bool)

(declare-fun res!751406 () Bool)

(assert (=> b!1124505 (=> (not res!751406) (not e!640174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124505 (= res!751406 (validMask!0 mask!1564))))

(assert (= (and start!98050 res!751408) b!1124505))

(assert (= (and b!1124505 res!751406) b!1124487))

(assert (= (and b!1124487 res!751407) b!1124490))

(assert (= (and b!1124490 res!751419) b!1124502))

(assert (= (and b!1124502 res!751412) b!1124499))

(assert (= (and b!1124499 res!751405) b!1124501))

(assert (= (and b!1124501 res!751411) b!1124491))

(assert (= (and b!1124491 res!751417) b!1124496))

(assert (= (and b!1124496 res!751418) b!1124504))

(assert (= (and b!1124504 res!751414) b!1124492))

(assert (= (and b!1124492 (not res!751415)) b!1124503))

(assert (= (and b!1124503 (not res!751410)) b!1124488))

(assert (= (and b!1124488 c!109523) b!1124494))

(assert (= (and b!1124488 (not c!109523)) b!1124486))

(assert (= (or b!1124494 b!1124486) bm!47426))

(assert (= (or b!1124494 b!1124486) bm!47425))

(assert (= (and b!1124488 (not res!751413)) b!1124497))

(assert (= (and b!1124497 (not res!751409)) b!1124489))

(assert (= (and b!1124489 (not res!751416)) b!1124500))

(assert (= (and b!1124495 condMapEmpty!44185) mapIsEmpty!44185))

(assert (= (and b!1124495 (not condMapEmpty!44185)) mapNonEmpty!44185))

(get-info :version)

(assert (= (and mapNonEmpty!44185 ((_ is ValueCellFull!13413) mapValue!44185)) b!1124498))

(assert (= (and b!1124495 ((_ is ValueCellFull!13413) mapDefault!44185)) b!1124493))

(assert (= start!98050 b!1124495))

(declare-fun b_lambda!18719 () Bool)

(assert (=> (not b_lambda!18719) (not b!1124503)))

(declare-fun t!35436 () Bool)

(declare-fun tb!8535 () Bool)

(assert (=> (and start!98050 (= defaultEntry!1004 defaultEntry!1004) t!35436) tb!8535))

(declare-fun result!17623 () Bool)

(assert (=> tb!8535 (= result!17623 tp_is_empty!28245)))

(assert (=> b!1124503 t!35436))

(declare-fun b_and!38237 () Bool)

(assert (= b_and!38235 (and (=> t!35436 result!17623) b_and!38237)))

(declare-fun m!1038883 () Bool)

(assert (=> b!1124490 m!1038883))

(declare-fun m!1038885 () Bool)

(assert (=> bm!47425 m!1038885))

(declare-fun m!1038887 () Bool)

(assert (=> b!1124505 m!1038887))

(declare-fun m!1038889 () Bool)

(assert (=> b!1124500 m!1038889))

(assert (=> b!1124500 m!1038889))

(declare-fun m!1038891 () Bool)

(assert (=> b!1124500 m!1038891))

(declare-fun m!1038893 () Bool)

(assert (=> b!1124500 m!1038893))

(declare-fun m!1038895 () Bool)

(assert (=> b!1124492 m!1038895))

(declare-fun m!1038897 () Bool)

(assert (=> b!1124492 m!1038897))

(declare-fun m!1038899 () Bool)

(assert (=> mapNonEmpty!44185 m!1038899))

(declare-fun m!1038901 () Bool)

(assert (=> bm!47426 m!1038901))

(declare-fun m!1038903 () Bool)

(assert (=> b!1124501 m!1038903))

(declare-fun m!1038905 () Bool)

(assert (=> b!1124494 m!1038905))

(declare-fun m!1038907 () Bool)

(assert (=> start!98050 m!1038907))

(declare-fun m!1038909 () Bool)

(assert (=> start!98050 m!1038909))

(declare-fun m!1038911 () Bool)

(assert (=> b!1124497 m!1038911))

(assert (=> b!1124497 m!1038885))

(declare-fun m!1038913 () Bool)

(assert (=> b!1124496 m!1038913))

(declare-fun m!1038915 () Bool)

(assert (=> b!1124496 m!1038915))

(declare-fun m!1038917 () Bool)

(assert (=> b!1124491 m!1038917))

(declare-fun m!1038919 () Bool)

(assert (=> b!1124502 m!1038919))

(declare-fun m!1038921 () Bool)

(assert (=> b!1124504 m!1038921))

(declare-fun m!1038923 () Bool)

(assert (=> b!1124503 m!1038923))

(declare-fun m!1038925 () Bool)

(assert (=> b!1124503 m!1038925))

(declare-fun m!1038927 () Bool)

(assert (=> b!1124503 m!1038927))

(declare-fun m!1038929 () Bool)

(assert (=> b!1124503 m!1038929))

(declare-fun m!1038931 () Bool)

(assert (=> b!1124488 m!1038931))

(declare-fun m!1038933 () Bool)

(assert (=> b!1124488 m!1038933))

(check-sat (not mapNonEmpty!44185) (not b!1124505) (not b!1124494) (not b!1124501) (not start!98050) b_and!38237 (not b_next!23715) (not b!1124502) (not b!1124504) (not b!1124490) (not b_lambda!18719) (not b!1124492) (not bm!47426) (not b!1124500) (not b!1124503) (not bm!47425) tp_is_empty!28245 (not b!1124497) (not b!1124488) (not b!1124496))
(check-sat b_and!38237 (not b_next!23715))
