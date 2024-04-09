; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131972 () Bool)

(assert start!131972)

(declare-fun b_free!31653 () Bool)

(declare-fun b_next!31653 () Bool)

(assert (=> start!131972 (= b_free!31653 (not b_next!31653))))

(declare-fun tp!111211 () Bool)

(declare-fun b_and!51073 () Bool)

(assert (=> start!131972 (= tp!111211 b_and!51073)))

(declare-fun mapIsEmpty!58597 () Bool)

(declare-fun mapRes!58597 () Bool)

(assert (=> mapIsEmpty!58597 mapRes!58597))

(declare-datatypes ((array!103031 0))(
  ( (array!103032 (arr!49713 (Array (_ BitVec 32) (_ BitVec 64))) (size!50264 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103031)

(declare-datatypes ((V!59015 0))(
  ( (V!59016 (val!19042 Int)) )
))
(declare-fun zeroValue!436 () V!59015)

(declare-datatypes ((tuple2!24612 0))(
  ( (tuple2!24613 (_1!12316 (_ BitVec 64)) (_2!12316 V!59015)) )
))
(declare-datatypes ((List!36131 0))(
  ( (Nil!36128) (Cons!36127 (h!37573 tuple2!24612) (t!50832 List!36131)) )
))
(declare-datatypes ((ListLongMap!22233 0))(
  ( (ListLongMap!22234 (toList!11132 List!36131)) )
))
(declare-fun call!69125 () ListLongMap!22233)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18054 0))(
  ( (ValueCellFull!18054 (v!21840 V!59015)) (EmptyCell!18054) )
))
(declare-datatypes ((array!103033 0))(
  ( (array!103034 (arr!49714 (Array (_ BitVec 32) ValueCell!18054)) (size!50265 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103033)

(declare-fun minValue!436 () V!59015)

(declare-fun bm!69119 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6581 (array!103031 array!103033 (_ BitVec 32) (_ BitVec 32) V!59015 V!59015 (_ BitVec 32) Int) ListLongMap!22233)

(assert (=> bm!69119 (= call!69125 (getCurrentListMapNoExtraKeys!6581 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69120 () Bool)

(declare-fun call!69122 () ListLongMap!22233)

(assert (=> bm!69120 (= call!69122 call!69125)))

(declare-fun b!1544986 () Bool)

(declare-fun e!859994 () ListLongMap!22233)

(declare-fun call!69124 () ListLongMap!22233)

(assert (=> b!1544986 (= e!859994 call!69124)))

(declare-fun b!1544987 () Bool)

(declare-fun res!1059679 () Bool)

(declare-fun e!859998 () Bool)

(assert (=> b!1544987 (=> (not res!1059679) (not e!859998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103031 (_ BitVec 32)) Bool)

(assert (=> b!1544987 (= res!1059679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69121 () Bool)

(declare-fun c!141502 () Bool)

(declare-fun c!141501 () Bool)

(declare-fun call!69123 () ListLongMap!22233)

(declare-fun call!69126 () ListLongMap!22233)

(declare-fun +!4864 (ListLongMap!22233 tuple2!24612) ListLongMap!22233)

(assert (=> bm!69121 (= call!69126 (+!4864 (ite c!141501 call!69125 (ite c!141502 call!69122 call!69123)) (ite (or c!141501 c!141502) (tuple2!24613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544988 () Bool)

(declare-fun e!859991 () Bool)

(declare-fun tp_is_empty!37929 () Bool)

(assert (=> b!1544988 (= e!859991 tp_is_empty!37929)))

(declare-fun b!1544989 () Bool)

(declare-fun res!1059678 () Bool)

(declare-fun e!859993 () Bool)

(assert (=> b!1544989 (=> (not res!1059678) (not e!859993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1544989 (= res!1059678 (validKeyInArray!0 (select (arr!49713 _keys!618) from!762)))))

(declare-fun b!1544991 () Bool)

(declare-fun c!141503 () Bool)

(declare-fun lt!666159 () Bool)

(assert (=> b!1544991 (= c!141503 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666159))))

(declare-fun e!859996 () ListLongMap!22233)

(assert (=> b!1544991 (= e!859996 e!859994)))

(declare-fun b!1544992 () Bool)

(declare-fun res!1059680 () Bool)

(assert (=> b!1544992 (=> (not res!1059680) (not e!859998))))

(assert (=> b!1544992 (= res!1059680 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50264 _keys!618))))))

(declare-fun b!1544993 () Bool)

(declare-fun res!1059676 () Bool)

(assert (=> b!1544993 (=> (not res!1059676) (not e!859998))))

(assert (=> b!1544993 (= res!1059676 (and (= (size!50265 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50264 _keys!618) (size!50265 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544994 () Bool)

(assert (=> b!1544994 (= e!859998 e!859993)))

(declare-fun res!1059675 () Bool)

(assert (=> b!1544994 (=> (not res!1059675) (not e!859993))))

(assert (=> b!1544994 (= res!1059675 (bvslt from!762 (size!50264 _keys!618)))))

(declare-fun lt!666160 () ListLongMap!22233)

(declare-fun e!859992 () ListLongMap!22233)

(assert (=> b!1544994 (= lt!666160 e!859992)))

(assert (=> b!1544994 (= c!141501 (and (not lt!666159) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544994 (= lt!666159 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544995 () Bool)

(assert (=> b!1544995 (= e!859996 call!69124)))

(declare-fun b!1544996 () Bool)

(assert (=> b!1544996 (= e!859993 false)))

(declare-fun lt!666161 () Bool)

(declare-fun contains!10038 (ListLongMap!22233 (_ BitVec 64)) Bool)

(assert (=> b!1544996 (= lt!666161 (contains!10038 (getCurrentListMapNoExtraKeys!6581 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) (select (arr!49713 _keys!618) from!762)))))

(declare-fun b!1544997 () Bool)

(assert (=> b!1544997 (= e!859994 call!69123)))

(declare-fun b!1544998 () Bool)

(assert (=> b!1544998 (= e!859992 (+!4864 call!69126 (tuple2!24613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544999 () Bool)

(assert (=> b!1544999 (= e!859992 e!859996)))

(assert (=> b!1544999 (= c!141502 (and (not lt!666159) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545000 () Bool)

(declare-fun e!859995 () Bool)

(declare-fun e!859997 () Bool)

(assert (=> b!1545000 (= e!859995 (and e!859997 mapRes!58597))))

(declare-fun condMapEmpty!58597 () Bool)

(declare-fun mapDefault!58597 () ValueCell!18054)

(assert (=> b!1545000 (= condMapEmpty!58597 (= (arr!49714 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18054)) mapDefault!58597)))))

(declare-fun b!1545001 () Bool)

(assert (=> b!1545001 (= e!859997 tp_is_empty!37929)))

(declare-fun mapNonEmpty!58597 () Bool)

(declare-fun tp!111212 () Bool)

(assert (=> mapNonEmpty!58597 (= mapRes!58597 (and tp!111212 e!859991))))

(declare-fun mapRest!58597 () (Array (_ BitVec 32) ValueCell!18054))

(declare-fun mapKey!58597 () (_ BitVec 32))

(declare-fun mapValue!58597 () ValueCell!18054)

(assert (=> mapNonEmpty!58597 (= (arr!49714 _values!470) (store mapRest!58597 mapKey!58597 mapValue!58597))))

(declare-fun b!1544990 () Bool)

(declare-fun res!1059677 () Bool)

(assert (=> b!1544990 (=> (not res!1059677) (not e!859998))))

(declare-datatypes ((List!36132 0))(
  ( (Nil!36129) (Cons!36128 (h!37574 (_ BitVec 64)) (t!50833 List!36132)) )
))
(declare-fun arrayNoDuplicates!0 (array!103031 (_ BitVec 32) List!36132) Bool)

(assert (=> b!1544990 (= res!1059677 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36129))))

(declare-fun res!1059674 () Bool)

(assert (=> start!131972 (=> (not res!1059674) (not e!859998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131972 (= res!1059674 (validMask!0 mask!926))))

(assert (=> start!131972 e!859998))

(declare-fun array_inv!38591 (array!103031) Bool)

(assert (=> start!131972 (array_inv!38591 _keys!618)))

(assert (=> start!131972 tp_is_empty!37929))

(assert (=> start!131972 true))

(assert (=> start!131972 tp!111211))

(declare-fun array_inv!38592 (array!103033) Bool)

(assert (=> start!131972 (and (array_inv!38592 _values!470) e!859995)))

(declare-fun bm!69122 () Bool)

(assert (=> bm!69122 (= call!69124 call!69126)))

(declare-fun bm!69123 () Bool)

(assert (=> bm!69123 (= call!69123 call!69122)))

(assert (= (and start!131972 res!1059674) b!1544993))

(assert (= (and b!1544993 res!1059676) b!1544987))

(assert (= (and b!1544987 res!1059679) b!1544990))

(assert (= (and b!1544990 res!1059677) b!1544992))

(assert (= (and b!1544992 res!1059680) b!1544994))

(assert (= (and b!1544994 c!141501) b!1544998))

(assert (= (and b!1544994 (not c!141501)) b!1544999))

(assert (= (and b!1544999 c!141502) b!1544995))

(assert (= (and b!1544999 (not c!141502)) b!1544991))

(assert (= (and b!1544991 c!141503) b!1544986))

(assert (= (and b!1544991 (not c!141503)) b!1544997))

(assert (= (or b!1544986 b!1544997) bm!69123))

(assert (= (or b!1544995 bm!69123) bm!69120))

(assert (= (or b!1544995 b!1544986) bm!69122))

(assert (= (or b!1544998 bm!69120) bm!69119))

(assert (= (or b!1544998 bm!69122) bm!69121))

(assert (= (and b!1544994 res!1059675) b!1544989))

(assert (= (and b!1544989 res!1059678) b!1544996))

(assert (= (and b!1545000 condMapEmpty!58597) mapIsEmpty!58597))

(assert (= (and b!1545000 (not condMapEmpty!58597)) mapNonEmpty!58597))

(get-info :version)

(assert (= (and mapNonEmpty!58597 ((_ is ValueCellFull!18054) mapValue!58597)) b!1544988))

(assert (= (and b!1545000 ((_ is ValueCellFull!18054) mapDefault!58597)) b!1545001))

(assert (= start!131972 b!1545000))

(declare-fun m!1425493 () Bool)

(assert (=> mapNonEmpty!58597 m!1425493))

(declare-fun m!1425495 () Bool)

(assert (=> start!131972 m!1425495))

(declare-fun m!1425497 () Bool)

(assert (=> start!131972 m!1425497))

(declare-fun m!1425499 () Bool)

(assert (=> start!131972 m!1425499))

(declare-fun m!1425501 () Bool)

(assert (=> b!1544987 m!1425501))

(declare-fun m!1425503 () Bool)

(assert (=> b!1544989 m!1425503))

(assert (=> b!1544989 m!1425503))

(declare-fun m!1425505 () Bool)

(assert (=> b!1544989 m!1425505))

(declare-fun m!1425507 () Bool)

(assert (=> bm!69119 m!1425507))

(declare-fun m!1425509 () Bool)

(assert (=> b!1544990 m!1425509))

(declare-fun m!1425511 () Bool)

(assert (=> b!1544998 m!1425511))

(assert (=> b!1544996 m!1425507))

(assert (=> b!1544996 m!1425503))

(assert (=> b!1544996 m!1425507))

(assert (=> b!1544996 m!1425503))

(declare-fun m!1425513 () Bool)

(assert (=> b!1544996 m!1425513))

(declare-fun m!1425515 () Bool)

(assert (=> bm!69121 m!1425515))

(check-sat (not bm!69121) b_and!51073 (not mapNonEmpty!58597) (not b!1544998) (not b_next!31653) (not b!1544990) (not start!131972) tp_is_empty!37929 (not b!1544996) (not b!1544989) (not bm!69119) (not b!1544987))
(check-sat b_and!51073 (not b_next!31653))
