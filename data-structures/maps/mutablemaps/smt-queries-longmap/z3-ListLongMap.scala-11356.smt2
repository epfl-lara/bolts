; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132074 () Bool)

(assert start!132074)

(declare-fun b_free!31755 () Bool)

(declare-fun b_next!31755 () Bool)

(assert (=> start!132074 (= b_free!31755 (not b_next!31755))))

(declare-fun tp!111518 () Bool)

(declare-fun b_and!51175 () Bool)

(assert (=> start!132074 (= tp!111518 b_and!51175)))

(declare-fun bm!69884 () Bool)

(declare-datatypes ((V!59151 0))(
  ( (V!59152 (val!19093 Int)) )
))
(declare-datatypes ((tuple2!24710 0))(
  ( (tuple2!24711 (_1!12365 (_ BitVec 64)) (_2!12365 V!59151)) )
))
(declare-datatypes ((List!36218 0))(
  ( (Nil!36215) (Cons!36214 (h!37660 tuple2!24710) (t!50919 List!36218)) )
))
(declare-datatypes ((ListLongMap!22331 0))(
  ( (ListLongMap!22332 (toList!11181 List!36218)) )
))
(declare-fun call!69889 () ListLongMap!22331)

(declare-fun call!69891 () ListLongMap!22331)

(assert (=> bm!69884 (= call!69889 call!69891)))

(declare-fun b!1547434 () Bool)

(declare-fun e!861370 () ListLongMap!22331)

(declare-fun minValue!436 () V!59151)

(declare-fun +!4905 (ListLongMap!22331 tuple2!24710) ListLongMap!22331)

(assert (=> b!1547434 (= e!861370 (+!4905 call!69891 (tuple2!24711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547435 () Bool)

(declare-fun e!861374 () Bool)

(declare-fun e!861368 () Bool)

(declare-fun mapRes!58750 () Bool)

(assert (=> b!1547435 (= e!861374 (and e!861368 mapRes!58750))))

(declare-fun condMapEmpty!58750 () Bool)

(declare-datatypes ((ValueCell!18105 0))(
  ( (ValueCellFull!18105 (v!21891 V!59151)) (EmptyCell!18105) )
))
(declare-datatypes ((array!103227 0))(
  ( (array!103228 (arr!49811 (Array (_ BitVec 32) ValueCell!18105)) (size!50362 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103227)

(declare-fun mapDefault!58750 () ValueCell!18105)

(assert (=> b!1547435 (= condMapEmpty!58750 (= (arr!49811 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18105)) mapDefault!58750)))))

(declare-fun b!1547436 () Bool)

(declare-fun e!861371 () ListLongMap!22331)

(declare-fun call!69890 () ListLongMap!22331)

(assert (=> b!1547436 (= e!861371 call!69890)))

(declare-fun mapNonEmpty!58750 () Bool)

(declare-fun tp!111517 () Bool)

(declare-fun e!861376 () Bool)

(assert (=> mapNonEmpty!58750 (= mapRes!58750 (and tp!111517 e!861376))))

(declare-fun mapValue!58750 () ValueCell!18105)

(declare-fun mapKey!58750 () (_ BitVec 32))

(declare-fun mapRest!58750 () (Array (_ BitVec 32) ValueCell!18105))

(assert (=> mapNonEmpty!58750 (= (arr!49811 _values!470) (store mapRest!58750 mapKey!58750 mapValue!58750))))

(declare-fun b!1547437 () Bool)

(declare-fun res!1060745 () Bool)

(declare-fun e!861369 () Bool)

(assert (=> b!1547437 (=> (not res!1060745) (not e!861369))))

(declare-datatypes ((array!103229 0))(
  ( (array!103230 (arr!49812 (Array (_ BitVec 32) (_ BitVec 64))) (size!50363 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103229)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103229 (_ BitVec 32)) Bool)

(assert (=> b!1547437 (= res!1060745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun zeroValue!436 () V!59151)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun call!69887 () ListLongMap!22331)

(declare-fun bm!69885 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6624 (array!103229 array!103227 (_ BitVec 32) (_ BitVec 32) V!59151 V!59151 (_ BitVec 32) Int) ListLongMap!22331)

(assert (=> bm!69885 (= call!69887 (getCurrentListMapNoExtraKeys!6624 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547438 () Bool)

(assert (=> b!1547438 (= e!861371 call!69889)))

(declare-fun call!69888 () ListLongMap!22331)

(declare-fun c!141960 () Bool)

(declare-fun c!141962 () Bool)

(declare-fun bm!69886 () Bool)

(assert (=> bm!69886 (= call!69891 (+!4905 (ite c!141960 call!69887 (ite c!141962 call!69888 call!69890)) (ite (or c!141960 c!141962) (tuple2!24711 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547439 () Bool)

(declare-fun e!861372 () ListLongMap!22331)

(assert (=> b!1547439 (= e!861370 e!861372)))

(declare-fun lt!666837 () Bool)

(assert (=> b!1547439 (= c!141962 (and (not lt!666837) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547440 () Bool)

(declare-fun tp_is_empty!38031 () Bool)

(assert (=> b!1547440 (= e!861368 tp_is_empty!38031)))

(declare-fun mapIsEmpty!58750 () Bool)

(assert (=> mapIsEmpty!58750 mapRes!58750))

(declare-fun b!1547441 () Bool)

(declare-fun c!141961 () Bool)

(assert (=> b!1547441 (= c!141961 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666837))))

(assert (=> b!1547441 (= e!861372 e!861371)))

(declare-fun b!1547442 () Bool)

(declare-fun res!1060748 () Bool)

(assert (=> b!1547442 (=> (not res!1060748) (not e!861369))))

(assert (=> b!1547442 (= res!1060748 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50363 _keys!618))))))

(declare-fun b!1547443 () Bool)

(declare-fun res!1060751 () Bool)

(assert (=> b!1547443 (=> (not res!1060751) (not e!861369))))

(declare-datatypes ((List!36219 0))(
  ( (Nil!36216) (Cons!36215 (h!37661 (_ BitVec 64)) (t!50920 List!36219)) )
))
(declare-fun arrayNoDuplicates!0 (array!103229 (_ BitVec 32) List!36219) Bool)

(assert (=> b!1547443 (= res!1060751 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36216))))

(declare-fun b!1547444 () Bool)

(declare-fun res!1060747 () Bool)

(assert (=> b!1547444 (=> (not res!1060747) (not e!861369))))

(assert (=> b!1547444 (= res!1060747 (and (= (size!50362 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50363 _keys!618) (size!50362 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69887 () Bool)

(assert (=> bm!69887 (= call!69890 call!69888)))

(declare-fun b!1547445 () Bool)

(assert (=> b!1547445 (= e!861376 tp_is_empty!38031)))

(declare-fun b!1547446 () Bool)

(declare-fun res!1060750 () Bool)

(declare-fun e!861375 () Bool)

(assert (=> b!1547446 (=> (not res!1060750) (not e!861375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547446 (= res!1060750 (validKeyInArray!0 (select (arr!49812 _keys!618) from!762)))))

(declare-fun b!1547447 () Bool)

(assert (=> b!1547447 (= e!861372 call!69889)))

(declare-fun res!1060749 () Bool)

(assert (=> start!132074 (=> (not res!1060749) (not e!861369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132074 (= res!1060749 (validMask!0 mask!926))))

(assert (=> start!132074 e!861369))

(declare-fun array_inv!38663 (array!103229) Bool)

(assert (=> start!132074 (array_inv!38663 _keys!618)))

(assert (=> start!132074 tp_is_empty!38031))

(assert (=> start!132074 true))

(assert (=> start!132074 tp!111518))

(declare-fun array_inv!38664 (array!103227) Bool)

(assert (=> start!132074 (and (array_inv!38664 _values!470) e!861374)))

(declare-fun b!1547448 () Bool)

(assert (=> b!1547448 (= e!861369 e!861375)))

(declare-fun res!1060746 () Bool)

(assert (=> b!1547448 (=> (not res!1060746) (not e!861375))))

(assert (=> b!1547448 (= res!1060746 (bvslt from!762 (size!50363 _keys!618)))))

(declare-fun lt!666839 () ListLongMap!22331)

(assert (=> b!1547448 (= lt!666839 e!861370)))

(assert (=> b!1547448 (= c!141960 (and (not lt!666837) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547448 (= lt!666837 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547449 () Bool)

(assert (=> b!1547449 (= e!861375 (not true))))

(declare-fun lt!666838 () ListLongMap!22331)

(declare-fun apply!1089 (ListLongMap!22331 (_ BitVec 64)) V!59151)

(assert (=> b!1547449 (= (apply!1089 (+!4905 lt!666838 (tuple2!24711 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49812 _keys!618) from!762)) (apply!1089 lt!666838 (select (arr!49812 _keys!618) from!762)))))

(declare-datatypes ((Unit!51508 0))(
  ( (Unit!51509) )
))
(declare-fun lt!666835 () Unit!51508)

(declare-fun addApplyDifferent!592 (ListLongMap!22331 (_ BitVec 64) V!59151 (_ BitVec 64)) Unit!51508)

(assert (=> b!1547449 (= lt!666835 (addApplyDifferent!592 lt!666838 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49812 _keys!618) from!762)))))

(declare-fun contains!10073 (ListLongMap!22331 (_ BitVec 64)) Bool)

(assert (=> b!1547449 (contains!10073 (+!4905 lt!666838 (tuple2!24711 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49812 _keys!618) from!762))))

(declare-fun lt!666836 () Unit!51508)

(declare-fun addStillContains!1255 (ListLongMap!22331 (_ BitVec 64) V!59151 (_ BitVec 64)) Unit!51508)

(assert (=> b!1547449 (= lt!666836 (addStillContains!1255 lt!666838 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49812 _keys!618) from!762)))))

(assert (=> b!1547449 (= lt!666838 (getCurrentListMapNoExtraKeys!6624 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69888 () Bool)

(assert (=> bm!69888 (= call!69888 call!69887)))

(assert (= (and start!132074 res!1060749) b!1547444))

(assert (= (and b!1547444 res!1060747) b!1547437))

(assert (= (and b!1547437 res!1060745) b!1547443))

(assert (= (and b!1547443 res!1060751) b!1547442))

(assert (= (and b!1547442 res!1060748) b!1547448))

(assert (= (and b!1547448 c!141960) b!1547434))

(assert (= (and b!1547448 (not c!141960)) b!1547439))

(assert (= (and b!1547439 c!141962) b!1547447))

(assert (= (and b!1547439 (not c!141962)) b!1547441))

(assert (= (and b!1547441 c!141961) b!1547438))

(assert (= (and b!1547441 (not c!141961)) b!1547436))

(assert (= (or b!1547438 b!1547436) bm!69887))

(assert (= (or b!1547447 bm!69887) bm!69888))

(assert (= (or b!1547447 b!1547438) bm!69884))

(assert (= (or b!1547434 bm!69888) bm!69885))

(assert (= (or b!1547434 bm!69884) bm!69886))

(assert (= (and b!1547448 res!1060746) b!1547446))

(assert (= (and b!1547446 res!1060750) b!1547449))

(assert (= (and b!1547435 condMapEmpty!58750) mapIsEmpty!58750))

(assert (= (and b!1547435 (not condMapEmpty!58750)) mapNonEmpty!58750))

(get-info :version)

(assert (= (and mapNonEmpty!58750 ((_ is ValueCellFull!18105) mapValue!58750)) b!1547445))

(assert (= (and b!1547435 ((_ is ValueCellFull!18105) mapDefault!58750)) b!1547440))

(assert (= start!132074 b!1547435))

(declare-fun m!1427071 () Bool)

(assert (=> b!1547443 m!1427071))

(declare-fun m!1427073 () Bool)

(assert (=> b!1547437 m!1427073))

(declare-fun m!1427075 () Bool)

(assert (=> b!1547434 m!1427075))

(declare-fun m!1427077 () Bool)

(assert (=> start!132074 m!1427077))

(declare-fun m!1427079 () Bool)

(assert (=> start!132074 m!1427079))

(declare-fun m!1427081 () Bool)

(assert (=> start!132074 m!1427081))

(declare-fun m!1427083 () Bool)

(assert (=> bm!69885 m!1427083))

(declare-fun m!1427085 () Bool)

(assert (=> mapNonEmpty!58750 m!1427085))

(declare-fun m!1427087 () Bool)

(assert (=> bm!69886 m!1427087))

(declare-fun m!1427089 () Bool)

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427091 () Bool)

(assert (=> b!1547449 m!1427091))

(assert (=> b!1547449 m!1427083))

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427093 () Bool)

(assert (=> b!1547449 m!1427093))

(declare-fun m!1427095 () Bool)

(assert (=> b!1547449 m!1427095))

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427097 () Bool)

(assert (=> b!1547449 m!1427097))

(assert (=> b!1547449 m!1427095))

(assert (=> b!1547449 m!1427093))

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427099 () Bool)

(assert (=> b!1547449 m!1427099))

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427101 () Bool)

(assert (=> b!1547449 m!1427101))

(assert (=> b!1547449 m!1427089))

(declare-fun m!1427103 () Bool)

(assert (=> b!1547449 m!1427103))

(assert (=> b!1547446 m!1427089))

(assert (=> b!1547446 m!1427089))

(declare-fun m!1427105 () Bool)

(assert (=> b!1547446 m!1427105))

(check-sat tp_is_empty!38031 (not b!1547437) (not b!1547443) (not b!1547434) (not mapNonEmpty!58750) (not b_next!31755) (not start!132074) b_and!51175 (not bm!69886) (not b!1547446) (not b!1547449) (not bm!69885))
(check-sat b_and!51175 (not b_next!31755))
