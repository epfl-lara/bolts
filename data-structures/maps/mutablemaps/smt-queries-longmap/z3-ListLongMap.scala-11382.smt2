; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132316 () Bool)

(assert start!132316)

(declare-fun b_free!31911 () Bool)

(declare-fun b_next!31911 () Bool)

(assert (=> start!132316 (= b_free!31911 (not b_next!31911))))

(declare-fun tp!111997 () Bool)

(declare-fun b_and!51359 () Bool)

(assert (=> start!132316 (= tp!111997 b_and!51359)))

(declare-fun c!142792 () Bool)

(declare-datatypes ((V!59359 0))(
  ( (V!59360 (val!19171 Int)) )
))
(declare-fun zeroValue!436 () V!59359)

(declare-datatypes ((tuple2!24858 0))(
  ( (tuple2!24859 (_1!12439 (_ BitVec 64)) (_2!12439 V!59359)) )
))
(declare-datatypes ((List!36339 0))(
  ( (Nil!36336) (Cons!36335 (h!37781 tuple2!24858) (t!51060 List!36339)) )
))
(declare-datatypes ((ListLongMap!22479 0))(
  ( (ListLongMap!22480 (toList!11255 List!36339)) )
))
(declare-fun call!71102 () ListLongMap!22479)

(declare-fun call!71105 () ListLongMap!22479)

(declare-fun minValue!436 () V!59359)

(declare-fun call!71104 () ListLongMap!22479)

(declare-fun call!71103 () ListLongMap!22479)

(declare-fun bm!71099 () Bool)

(declare-fun c!142790 () Bool)

(declare-fun +!4962 (ListLongMap!22479 tuple2!24858) ListLongMap!22479)

(assert (=> bm!71099 (= call!71102 (+!4962 (ite c!142792 call!71105 (ite c!142790 call!71103 call!71104)) (ite (or c!142792 c!142790) (tuple2!24859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1551739 () Bool)

(declare-fun res!1062632 () Bool)

(declare-fun e!863861 () Bool)

(assert (=> b!1551739 (=> (not res!1062632) (not e!863861))))

(declare-datatypes ((array!103533 0))(
  ( (array!103534 (arr!49960 (Array (_ BitVec 32) (_ BitVec 64))) (size!50511 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103533)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18183 0))(
  ( (ValueCellFull!18183 (v!21973 V!59359)) (EmptyCell!18183) )
))
(declare-datatypes ((array!103535 0))(
  ( (array!103536 (arr!49961 (Array (_ BitVec 32) ValueCell!18183)) (size!50512 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103535)

(assert (=> b!1551739 (= res!1062632 (and (= (size!50512 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50511 _keys!618) (size!50512 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551740 () Bool)

(declare-datatypes ((Unit!51611 0))(
  ( (Unit!51612) )
))
(declare-fun e!863860 () Unit!51611)

(declare-fun lt!668865 () Unit!51611)

(assert (=> b!1551740 (= e!863860 lt!668865)))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!668864 () ListLongMap!22479)

(declare-fun getCurrentListMapNoExtraKeys!6679 (array!103533 array!103535 (_ BitVec 32) (_ BitVec 32) V!59359 V!59359 (_ BitVec 32) Int) ListLongMap!22479)

(assert (=> b!1551740 (= lt!668864 (getCurrentListMapNoExtraKeys!6679 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668867 () Unit!51611)

(declare-fun addStillContains!1297 (ListLongMap!22479 (_ BitVec 64) V!59359 (_ BitVec 64)) Unit!51611)

(assert (=> b!1551740 (= lt!668867 (addStillContains!1297 lt!668864 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49960 _keys!618) from!762)))))

(declare-fun lt!668862 () ListLongMap!22479)

(assert (=> b!1551740 (= lt!668862 (+!4962 lt!668864 (tuple2!24859 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10126 (ListLongMap!22479 (_ BitVec 64)) Bool)

(assert (=> b!1551740 (contains!10126 lt!668862 (select (arr!49960 _keys!618) from!762))))

(declare-fun addApplyDifferent!630 (ListLongMap!22479 (_ BitVec 64) V!59359 (_ BitVec 64)) Unit!51611)

(assert (=> b!1551740 (= lt!668865 (addApplyDifferent!630 lt!668864 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49960 _keys!618) from!762)))))

(declare-fun lt!668868 () V!59359)

(declare-fun apply!1129 (ListLongMap!22479 (_ BitVec 64)) V!59359)

(assert (=> b!1551740 (= lt!668868 (apply!1129 (+!4962 lt!668864 (tuple2!24859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49960 _keys!618) from!762)))))

(declare-fun lt!668859 () V!59359)

(assert (=> b!1551740 (= lt!668859 (apply!1129 lt!668864 (select (arr!49960 _keys!618) from!762)))))

(assert (=> b!1551740 (= lt!668868 lt!668859)))

(declare-fun lt!668866 () Unit!51611)

(assert (=> b!1551740 (= lt!668866 (addApplyDifferent!630 lt!668864 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49960 _keys!618) from!762)))))

(assert (=> b!1551740 (= (apply!1129 lt!668862 (select (arr!49960 _keys!618) from!762)) lt!668859)))

(declare-fun b!1551741 () Bool)

(declare-fun e!863856 () ListLongMap!22479)

(declare-fun e!863864 () ListLongMap!22479)

(assert (=> b!1551741 (= e!863856 e!863864)))

(declare-fun lt!668863 () Bool)

(assert (=> b!1551741 (= c!142790 (and (not lt!668863) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551742 () Bool)

(declare-fun e!863859 () ListLongMap!22479)

(declare-fun call!71106 () ListLongMap!22479)

(assert (=> b!1551742 (= e!863859 call!71106)))

(declare-fun b!1551743 () Bool)

(assert (=> b!1551743 (= e!863856 (+!4962 call!71102 (tuple2!24859 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71100 () Bool)

(assert (=> bm!71100 (= call!71105 (getCurrentListMapNoExtraKeys!6679 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58996 () Bool)

(declare-fun mapRes!58996 () Bool)

(declare-fun tp!111998 () Bool)

(declare-fun e!863862 () Bool)

(assert (=> mapNonEmpty!58996 (= mapRes!58996 (and tp!111998 e!863862))))

(declare-fun mapKey!58996 () (_ BitVec 32))

(declare-fun mapValue!58996 () ValueCell!18183)

(declare-fun mapRest!58996 () (Array (_ BitVec 32) ValueCell!18183))

(assert (=> mapNonEmpty!58996 (= (arr!49961 _values!470) (store mapRest!58996 mapKey!58996 mapValue!58996))))

(declare-fun b!1551744 () Bool)

(declare-fun res!1062634 () Bool)

(assert (=> b!1551744 (=> (not res!1062634) (not e!863861))))

(declare-datatypes ((List!36340 0))(
  ( (Nil!36337) (Cons!36336 (h!37782 (_ BitVec 64)) (t!51061 List!36340)) )
))
(declare-fun arrayNoDuplicates!0 (array!103533 (_ BitVec 32) List!36340) Bool)

(assert (=> b!1551744 (= res!1062634 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36337))))

(declare-fun b!1551745 () Bool)

(declare-fun e!863858 () Bool)

(declare-fun e!863857 () Bool)

(assert (=> b!1551745 (= e!863858 (and e!863857 mapRes!58996))))

(declare-fun condMapEmpty!58996 () Bool)

(declare-fun mapDefault!58996 () ValueCell!18183)

(assert (=> b!1551745 (= condMapEmpty!58996 (= (arr!49961 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18183)) mapDefault!58996)))))

(declare-fun b!1551746 () Bool)

(assert (=> b!1551746 (= e!863861 false)))

(declare-fun lt!668861 () Unit!51611)

(assert (=> b!1551746 (= lt!668861 e!863860)))

(declare-fun c!142793 () Bool)

(declare-fun e!863863 () Bool)

(assert (=> b!1551746 (= c!142793 e!863863)))

(declare-fun res!1062636 () Bool)

(assert (=> b!1551746 (=> (not res!1062636) (not e!863863))))

(assert (=> b!1551746 (= res!1062636 (bvslt from!762 (size!50511 _keys!618)))))

(declare-fun lt!668860 () ListLongMap!22479)

(assert (=> b!1551746 (= lt!668860 e!863856)))

(assert (=> b!1551746 (= c!142792 (and (not lt!668863) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551746 (= lt!668863 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1551747 () Bool)

(declare-fun res!1062633 () Bool)

(assert (=> b!1551747 (=> (not res!1062633) (not e!863861))))

(assert (=> b!1551747 (= res!1062633 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50511 _keys!618))))))

(declare-fun bm!71101 () Bool)

(assert (=> bm!71101 (= call!71106 call!71102)))

(declare-fun b!1551748 () Bool)

(assert (=> b!1551748 (= e!863864 call!71106)))

(declare-fun b!1551749 () Bool)

(assert (=> b!1551749 (= e!863859 call!71104)))

(declare-fun b!1551750 () Bool)

(declare-fun tp_is_empty!38187 () Bool)

(assert (=> b!1551750 (= e!863862 tp_is_empty!38187)))

(declare-fun b!1551751 () Bool)

(declare-fun c!142791 () Bool)

(assert (=> b!1551751 (= c!142791 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668863))))

(assert (=> b!1551751 (= e!863864 e!863859)))

(declare-fun bm!71102 () Bool)

(assert (=> bm!71102 (= call!71104 call!71103)))

(declare-fun res!1062635 () Bool)

(assert (=> start!132316 (=> (not res!1062635) (not e!863861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132316 (= res!1062635 (validMask!0 mask!926))))

(assert (=> start!132316 e!863861))

(declare-fun array_inv!38761 (array!103533) Bool)

(assert (=> start!132316 (array_inv!38761 _keys!618)))

(assert (=> start!132316 tp_is_empty!38187))

(assert (=> start!132316 true))

(assert (=> start!132316 tp!111997))

(declare-fun array_inv!38762 (array!103535) Bool)

(assert (=> start!132316 (and (array_inv!38762 _values!470) e!863858)))

(declare-fun bm!71103 () Bool)

(assert (=> bm!71103 (= call!71103 call!71105)))

(declare-fun b!1551752 () Bool)

(assert (=> b!1551752 (= e!863857 tp_is_empty!38187)))

(declare-fun mapIsEmpty!58996 () Bool)

(assert (=> mapIsEmpty!58996 mapRes!58996))

(declare-fun b!1551753 () Bool)

(declare-fun res!1062631 () Bool)

(assert (=> b!1551753 (=> (not res!1062631) (not e!863861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103533 (_ BitVec 32)) Bool)

(assert (=> b!1551753 (= res!1062631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551754 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551754 (= e!863863 (validKeyInArray!0 (select (arr!49960 _keys!618) from!762)))))

(declare-fun b!1551755 () Bool)

(declare-fun Unit!51613 () Unit!51611)

(assert (=> b!1551755 (= e!863860 Unit!51613)))

(assert (= (and start!132316 res!1062635) b!1551739))

(assert (= (and b!1551739 res!1062632) b!1551753))

(assert (= (and b!1551753 res!1062631) b!1551744))

(assert (= (and b!1551744 res!1062634) b!1551747))

(assert (= (and b!1551747 res!1062633) b!1551746))

(assert (= (and b!1551746 c!142792) b!1551743))

(assert (= (and b!1551746 (not c!142792)) b!1551741))

(assert (= (and b!1551741 c!142790) b!1551748))

(assert (= (and b!1551741 (not c!142790)) b!1551751))

(assert (= (and b!1551751 c!142791) b!1551742))

(assert (= (and b!1551751 (not c!142791)) b!1551749))

(assert (= (or b!1551742 b!1551749) bm!71102))

(assert (= (or b!1551748 bm!71102) bm!71103))

(assert (= (or b!1551748 b!1551742) bm!71101))

(assert (= (or b!1551743 bm!71103) bm!71100))

(assert (= (or b!1551743 bm!71101) bm!71099))

(assert (= (and b!1551746 res!1062636) b!1551754))

(assert (= (and b!1551746 c!142793) b!1551740))

(assert (= (and b!1551746 (not c!142793)) b!1551755))

(assert (= (and b!1551745 condMapEmpty!58996) mapIsEmpty!58996))

(assert (= (and b!1551745 (not condMapEmpty!58996)) mapNonEmpty!58996))

(get-info :version)

(assert (= (and mapNonEmpty!58996 ((_ is ValueCellFull!18183) mapValue!58996)) b!1551750))

(assert (= (and b!1551745 ((_ is ValueCellFull!18183) mapDefault!58996)) b!1551752))

(assert (= start!132316 b!1551745))

(declare-fun m!1430421 () Bool)

(assert (=> b!1551754 m!1430421))

(assert (=> b!1551754 m!1430421))

(declare-fun m!1430423 () Bool)

(assert (=> b!1551754 m!1430423))

(declare-fun m!1430425 () Bool)

(assert (=> b!1551753 m!1430425))

(declare-fun m!1430427 () Bool)

(assert (=> b!1551743 m!1430427))

(declare-fun m!1430429 () Bool)

(assert (=> b!1551740 m!1430429))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430431 () Bool)

(assert (=> b!1551740 m!1430431))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430433 () Bool)

(assert (=> b!1551740 m!1430433))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430435 () Bool)

(assert (=> b!1551740 m!1430435))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430437 () Bool)

(assert (=> b!1551740 m!1430437))

(declare-fun m!1430439 () Bool)

(assert (=> b!1551740 m!1430439))

(declare-fun m!1430441 () Bool)

(assert (=> b!1551740 m!1430441))

(assert (=> b!1551740 m!1430421))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430443 () Bool)

(assert (=> b!1551740 m!1430443))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430445 () Bool)

(assert (=> b!1551740 m!1430445))

(assert (=> b!1551740 m!1430441))

(assert (=> b!1551740 m!1430421))

(declare-fun m!1430447 () Bool)

(assert (=> b!1551740 m!1430447))

(declare-fun m!1430449 () Bool)

(assert (=> start!132316 m!1430449))

(declare-fun m!1430451 () Bool)

(assert (=> start!132316 m!1430451))

(declare-fun m!1430453 () Bool)

(assert (=> start!132316 m!1430453))

(declare-fun m!1430455 () Bool)

(assert (=> b!1551744 m!1430455))

(declare-fun m!1430457 () Bool)

(assert (=> mapNonEmpty!58996 m!1430457))

(declare-fun m!1430459 () Bool)

(assert (=> bm!71099 m!1430459))

(assert (=> bm!71100 m!1430439))

(check-sat (not b!1551753) tp_is_empty!38187 (not b!1551740) (not bm!71099) (not b!1551754) (not b!1551744) (not b_next!31911) (not mapNonEmpty!58996) (not b!1551743) b_and!51359 (not start!132316) (not bm!71100))
(check-sat b_and!51359 (not b_next!31911))
