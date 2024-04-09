; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132158 () Bool)

(assert start!132158)

(declare-fun b_free!31839 () Bool)

(declare-fun b_next!31839 () Bool)

(assert (=> start!132158 (= b_free!31839 (not b_next!31839))))

(declare-fun tp!111770 () Bool)

(declare-fun b_and!51259 () Bool)

(assert (=> start!132158 (= tp!111770 b_and!51259)))

(declare-fun b!1549460 () Bool)

(declare-datatypes ((V!59263 0))(
  ( (V!59264 (val!19135 Int)) )
))
(declare-datatypes ((tuple2!24792 0))(
  ( (tuple2!24793 (_1!12406 (_ BitVec 64)) (_2!12406 V!59263)) )
))
(declare-datatypes ((List!36289 0))(
  ( (Nil!36286) (Cons!36285 (h!37731 tuple2!24792) (t!50990 List!36289)) )
))
(declare-datatypes ((ListLongMap!22413 0))(
  ( (ListLongMap!22414 (toList!11222 List!36289)) )
))
(declare-fun e!862516 () ListLongMap!22413)

(declare-fun call!70520 () ListLongMap!22413)

(assert (=> b!1549460 (= e!862516 call!70520)))

(declare-fun b!1549461 () Bool)

(declare-fun res!1061627 () Bool)

(declare-fun e!862521 () Bool)

(assert (=> b!1549461 (=> (not res!1061627) (not e!862521))))

(declare-datatypes ((array!103391 0))(
  ( (array!103392 (arr!49893 (Array (_ BitVec 32) (_ BitVec 64))) (size!50444 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103391)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18147 0))(
  ( (ValueCellFull!18147 (v!21933 V!59263)) (EmptyCell!18147) )
))
(declare-datatypes ((array!103393 0))(
  ( (array!103394 (arr!49894 (Array (_ BitVec 32) ValueCell!18147)) (size!50445 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103393)

(assert (=> b!1549461 (= res!1061627 (and (= (size!50445 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50444 _keys!618) (size!50445 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549462 () Bool)

(declare-datatypes ((Unit!51564 0))(
  ( (Unit!51565) )
))
(declare-fun e!862518 () Unit!51564)

(declare-fun Unit!51566 () Unit!51564)

(assert (=> b!1549462 (= e!862518 Unit!51566)))

(declare-fun b!1549463 () Bool)

(declare-fun e!862517 () Bool)

(declare-fun tp_is_empty!38115 () Bool)

(assert (=> b!1549463 (= e!862517 tp_is_empty!38115)))

(declare-fun b!1549464 () Bool)

(declare-fun res!1061629 () Bool)

(assert (=> b!1549464 (=> (not res!1061629) (not e!862521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103391 (_ BitVec 32)) Bool)

(assert (=> b!1549464 (= res!1061629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549465 () Bool)

(declare-fun e!862512 () Bool)

(assert (=> b!1549465 (= e!862521 e!862512)))

(declare-fun res!1061631 () Bool)

(assert (=> b!1549465 (=> (not res!1061631) (not e!862512))))

(declare-fun lt!667881 () Bool)

(assert (=> b!1549465 (= res!1061631 (not lt!667881))))

(declare-fun lt!667879 () Unit!51564)

(assert (=> b!1549465 (= lt!667879 e!862518)))

(declare-fun c!142344 () Bool)

(assert (=> b!1549465 (= c!142344 (not lt!667881))))

(declare-fun e!862522 () Bool)

(assert (=> b!1549465 (= lt!667881 e!862522)))

(declare-fun res!1061628 () Bool)

(assert (=> b!1549465 (=> res!1061628 e!862522)))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1549465 (= res!1061628 (bvsge from!762 (size!50444 _keys!618)))))

(declare-fun lt!667888 () ListLongMap!22413)

(declare-fun e!862515 () ListLongMap!22413)

(assert (=> b!1549465 (= lt!667888 e!862515)))

(declare-fun c!142343 () Bool)

(declare-fun lt!667889 () Bool)

(assert (=> b!1549465 (= c!142343 (and (not lt!667889) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549465 (= lt!667889 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549466 () Bool)

(declare-fun lt!667886 () Unit!51564)

(assert (=> b!1549466 (= e!862518 lt!667886)))

(declare-fun zeroValue!436 () V!59263)

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59263)

(declare-fun lt!667885 () ListLongMap!22413)

(declare-fun getCurrentListMapNoExtraKeys!6657 (array!103391 array!103393 (_ BitVec 32) (_ BitVec 32) V!59263 V!59263 (_ BitVec 32) Int) ListLongMap!22413)

(assert (=> b!1549466 (= lt!667885 (getCurrentListMapNoExtraKeys!6657 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!667882 () Unit!51564)

(declare-fun addStillContains!1282 (ListLongMap!22413 (_ BitVec 64) V!59263 (_ BitVec 64)) Unit!51564)

(assert (=> b!1549466 (= lt!667882 (addStillContains!1282 lt!667885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49893 _keys!618) from!762)))))

(declare-fun lt!667884 () ListLongMap!22413)

(declare-fun +!4936 (ListLongMap!22413 tuple2!24792) ListLongMap!22413)

(assert (=> b!1549466 (= lt!667884 (+!4936 lt!667885 (tuple2!24793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10101 (ListLongMap!22413 (_ BitVec 64)) Bool)

(assert (=> b!1549466 (contains!10101 lt!667884 (select (arr!49893 _keys!618) from!762))))

(declare-fun addApplyDifferent!619 (ListLongMap!22413 (_ BitVec 64) V!59263 (_ BitVec 64)) Unit!51564)

(assert (=> b!1549466 (= lt!667886 (addApplyDifferent!619 lt!667885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49893 _keys!618) from!762)))))

(declare-fun lt!667883 () V!59263)

(declare-fun apply!1116 (ListLongMap!22413 (_ BitVec 64)) V!59263)

(assert (=> b!1549466 (= lt!667883 (apply!1116 (+!4936 lt!667885 (tuple2!24793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49893 _keys!618) from!762)))))

(declare-fun lt!667887 () V!59263)

(assert (=> b!1549466 (= lt!667887 (apply!1116 lt!667885 (select (arr!49893 _keys!618) from!762)))))

(assert (=> b!1549466 (= lt!667883 lt!667887)))

(declare-fun lt!667880 () Unit!51564)

(assert (=> b!1549466 (= lt!667880 (addApplyDifferent!619 lt!667885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49893 _keys!618) from!762)))))

(assert (=> b!1549466 (= (apply!1116 lt!667884 (select (arr!49893 _keys!618) from!762)) lt!667887)))

(declare-fun b!1549467 () Bool)

(assert (=> b!1549467 (= e!862512 false)))

(declare-fun lt!667878 () Bool)

(assert (=> b!1549467 (= lt!667878 (contains!10101 lt!667888 (select (arr!49893 _keys!618) from!762)))))

(declare-fun b!1549468 () Bool)

(declare-fun e!862519 () Bool)

(declare-fun e!862513 () Bool)

(declare-fun mapRes!58876 () Bool)

(assert (=> b!1549468 (= e!862519 (and e!862513 mapRes!58876))))

(declare-fun condMapEmpty!58876 () Bool)

(declare-fun mapDefault!58876 () ValueCell!18147)

(assert (=> b!1549468 (= condMapEmpty!58876 (= (arr!49894 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18147)) mapDefault!58876)))))

(declare-fun mapNonEmpty!58876 () Bool)

(declare-fun tp!111769 () Bool)

(assert (=> mapNonEmpty!58876 (= mapRes!58876 (and tp!111769 e!862517))))

(declare-fun mapValue!58876 () ValueCell!18147)

(declare-fun mapKey!58876 () (_ BitVec 32))

(declare-fun mapRest!58876 () (Array (_ BitVec 32) ValueCell!18147))

(assert (=> mapNonEmpty!58876 (= (arr!49894 _values!470) (store mapRest!58876 mapKey!58876 mapValue!58876))))

(declare-fun bm!70514 () Bool)

(declare-fun call!70517 () ListLongMap!22413)

(assert (=> bm!70514 (= call!70520 call!70517)))

(declare-fun b!1549469 () Bool)

(declare-fun call!70521 () ListLongMap!22413)

(assert (=> b!1549469 (= e!862515 (+!4936 call!70521 (tuple2!24793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70515 () Bool)

(declare-fun call!70518 () ListLongMap!22413)

(assert (=> bm!70515 (= call!70518 call!70521)))

(declare-fun res!1061630 () Bool)

(assert (=> start!132158 (=> (not res!1061630) (not e!862521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132158 (= res!1061630 (validMask!0 mask!926))))

(assert (=> start!132158 e!862521))

(declare-fun array_inv!38721 (array!103391) Bool)

(assert (=> start!132158 (array_inv!38721 _keys!618)))

(assert (=> start!132158 tp_is_empty!38115))

(assert (=> start!132158 true))

(assert (=> start!132158 tp!111770))

(declare-fun array_inv!38722 (array!103393) Bool)

(assert (=> start!132158 (and (array_inv!38722 _values!470) e!862519)))

(declare-fun bm!70516 () Bool)

(declare-fun call!70519 () ListLongMap!22413)

(assert (=> bm!70516 (= call!70517 call!70519)))

(declare-fun b!1549470 () Bool)

(assert (=> b!1549470 (= e!862513 tp_is_empty!38115)))

(declare-fun b!1549471 () Bool)

(declare-fun e!862520 () ListLongMap!22413)

(assert (=> b!1549471 (= e!862515 e!862520)))

(declare-fun c!142345 () Bool)

(assert (=> b!1549471 (= c!142345 (and (not lt!667889) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70517 () Bool)

(assert (=> bm!70517 (= call!70519 (getCurrentListMapNoExtraKeys!6657 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549472 () Bool)

(assert (=> b!1549472 (= e!862520 call!70518)))

(declare-fun b!1549473 () Bool)

(assert (=> b!1549473 (= e!862516 call!70518)))

(declare-fun bm!70518 () Bool)

(assert (=> bm!70518 (= call!70521 (+!4936 (ite c!142343 call!70519 (ite c!142345 call!70517 call!70520)) (ite (or c!142343 c!142345) (tuple2!24793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549474 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549474 (= e!862522 (not (validKeyInArray!0 (select (arr!49893 _keys!618) from!762))))))

(declare-fun mapIsEmpty!58876 () Bool)

(assert (=> mapIsEmpty!58876 mapRes!58876))

(declare-fun b!1549475 () Bool)

(declare-fun res!1061633 () Bool)

(assert (=> b!1549475 (=> (not res!1061633) (not e!862521))))

(assert (=> b!1549475 (= res!1061633 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50444 _keys!618))))))

(declare-fun b!1549476 () Bool)

(declare-fun res!1061632 () Bool)

(assert (=> b!1549476 (=> (not res!1061632) (not e!862521))))

(declare-datatypes ((List!36290 0))(
  ( (Nil!36287) (Cons!36286 (h!37732 (_ BitVec 64)) (t!50991 List!36290)) )
))
(declare-fun arrayNoDuplicates!0 (array!103391 (_ BitVec 32) List!36290) Bool)

(assert (=> b!1549476 (= res!1061632 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36287))))

(declare-fun b!1549477 () Bool)

(declare-fun c!142346 () Bool)

(assert (=> b!1549477 (= c!142346 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667889))))

(assert (=> b!1549477 (= e!862520 e!862516)))

(assert (= (and start!132158 res!1061630) b!1549461))

(assert (= (and b!1549461 res!1061627) b!1549464))

(assert (= (and b!1549464 res!1061629) b!1549476))

(assert (= (and b!1549476 res!1061632) b!1549475))

(assert (= (and b!1549475 res!1061633) b!1549465))

(assert (= (and b!1549465 c!142343) b!1549469))

(assert (= (and b!1549465 (not c!142343)) b!1549471))

(assert (= (and b!1549471 c!142345) b!1549472))

(assert (= (and b!1549471 (not c!142345)) b!1549477))

(assert (= (and b!1549477 c!142346) b!1549473))

(assert (= (and b!1549477 (not c!142346)) b!1549460))

(assert (= (or b!1549473 b!1549460) bm!70514))

(assert (= (or b!1549472 bm!70514) bm!70516))

(assert (= (or b!1549472 b!1549473) bm!70515))

(assert (= (or b!1549469 bm!70516) bm!70517))

(assert (= (or b!1549469 bm!70515) bm!70518))

(assert (= (and b!1549465 (not res!1061628)) b!1549474))

(assert (= (and b!1549465 c!142344) b!1549466))

(assert (= (and b!1549465 (not c!142344)) b!1549462))

(assert (= (and b!1549465 res!1061631) b!1549467))

(assert (= (and b!1549468 condMapEmpty!58876) mapIsEmpty!58876))

(assert (= (and b!1549468 (not condMapEmpty!58876)) mapNonEmpty!58876))

(get-info :version)

(assert (= (and mapNonEmpty!58876 ((_ is ValueCellFull!18147) mapValue!58876)) b!1549463))

(assert (= (and b!1549468 ((_ is ValueCellFull!18147) mapDefault!58876)) b!1549470))

(assert (= start!132158 b!1549468))

(declare-fun m!1428721 () Bool)

(assert (=> mapNonEmpty!58876 m!1428721))

(declare-fun m!1428723 () Bool)

(assert (=> b!1549467 m!1428723))

(assert (=> b!1549467 m!1428723))

(declare-fun m!1428725 () Bool)

(assert (=> b!1549467 m!1428725))

(assert (=> b!1549474 m!1428723))

(assert (=> b!1549474 m!1428723))

(declare-fun m!1428727 () Bool)

(assert (=> b!1549474 m!1428727))

(declare-fun m!1428729 () Bool)

(assert (=> b!1549466 m!1428729))

(declare-fun m!1428731 () Bool)

(assert (=> b!1549466 m!1428731))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428733 () Bool)

(assert (=> b!1549466 m!1428733))

(declare-fun m!1428735 () Bool)

(assert (=> b!1549466 m!1428735))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428737 () Bool)

(assert (=> b!1549466 m!1428737))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428739 () Bool)

(assert (=> b!1549466 m!1428739))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428741 () Bool)

(assert (=> b!1549466 m!1428741))

(assert (=> b!1549466 m!1428731))

(assert (=> b!1549466 m!1428723))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428743 () Bool)

(assert (=> b!1549466 m!1428743))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428745 () Bool)

(assert (=> b!1549466 m!1428745))

(assert (=> b!1549466 m!1428723))

(declare-fun m!1428747 () Bool)

(assert (=> b!1549466 m!1428747))

(declare-fun m!1428749 () Bool)

(assert (=> start!132158 m!1428749))

(declare-fun m!1428751 () Bool)

(assert (=> start!132158 m!1428751))

(declare-fun m!1428753 () Bool)

(assert (=> start!132158 m!1428753))

(declare-fun m!1428755 () Bool)

(assert (=> b!1549469 m!1428755))

(assert (=> bm!70517 m!1428735))

(declare-fun m!1428757 () Bool)

(assert (=> bm!70518 m!1428757))

(declare-fun m!1428759 () Bool)

(assert (=> b!1549464 m!1428759))

(declare-fun m!1428761 () Bool)

(assert (=> b!1549476 m!1428761))

(check-sat (not b!1549474) (not bm!70517) b_and!51259 (not b!1549467) (not bm!70518) (not b!1549469) tp_is_empty!38115 (not b!1549464) (not mapNonEmpty!58876) (not b!1549466) (not b!1549476) (not start!132158) (not b_next!31839))
(check-sat b_and!51259 (not b_next!31839))
