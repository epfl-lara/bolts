; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132092 () Bool)

(assert start!132092)

(declare-fun b_free!31773 () Bool)

(declare-fun b_next!31773 () Bool)

(assert (=> start!132092 (= b_free!31773 (not b_next!31773))))

(declare-fun tp!111572 () Bool)

(declare-fun b_and!51193 () Bool)

(assert (=> start!132092 (= tp!111572 b_and!51193)))

(declare-fun b!1547866 () Bool)

(declare-fun res!1060937 () Bool)

(declare-fun e!861618 () Bool)

(assert (=> b!1547866 (=> (not res!1060937) (not e!861618))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103263 0))(
  ( (array!103264 (arr!49829 (Array (_ BitVec 32) (_ BitVec 64))) (size!50380 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103263)

(assert (=> b!1547866 (= res!1060937 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50380 _keys!618))))))

(declare-fun b!1547867 () Bool)

(declare-fun res!1060935 () Bool)

(assert (=> b!1547867 (=> (not res!1060935) (not e!861618))))

(declare-datatypes ((List!36233 0))(
  ( (Nil!36230) (Cons!36229 (h!37675 (_ BitVec 64)) (t!50934 List!36233)) )
))
(declare-fun arrayNoDuplicates!0 (array!103263 (_ BitVec 32) List!36233) Bool)

(assert (=> b!1547867 (= res!1060935 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36230))))

(declare-fun mapNonEmpty!58777 () Bool)

(declare-fun mapRes!58777 () Bool)

(declare-fun tp!111571 () Bool)

(declare-fun e!861612 () Bool)

(assert (=> mapNonEmpty!58777 (= mapRes!58777 (and tp!111571 e!861612))))

(declare-fun mapKey!58777 () (_ BitVec 32))

(declare-datatypes ((V!59175 0))(
  ( (V!59176 (val!19102 Int)) )
))
(declare-datatypes ((ValueCell!18114 0))(
  ( (ValueCellFull!18114 (v!21900 V!59175)) (EmptyCell!18114) )
))
(declare-datatypes ((array!103265 0))(
  ( (array!103266 (arr!49830 (Array (_ BitVec 32) ValueCell!18114)) (size!50381 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103265)

(declare-fun mapValue!58777 () ValueCell!18114)

(declare-fun mapRest!58777 () (Array (_ BitVec 32) ValueCell!18114))

(assert (=> mapNonEmpty!58777 (= (arr!49830 _values!470) (store mapRest!58777 mapKey!58777 mapValue!58777))))

(declare-fun b!1547868 () Bool)

(declare-fun tp_is_empty!38049 () Bool)

(assert (=> b!1547868 (= e!861612 tp_is_empty!38049)))

(declare-fun b!1547869 () Bool)

(declare-datatypes ((tuple2!24728 0))(
  ( (tuple2!24729 (_1!12374 (_ BitVec 64)) (_2!12374 V!59175)) )
))
(declare-datatypes ((List!36234 0))(
  ( (Nil!36231) (Cons!36230 (h!37676 tuple2!24728) (t!50935 List!36234)) )
))
(declare-datatypes ((ListLongMap!22349 0))(
  ( (ListLongMap!22350 (toList!11190 List!36234)) )
))
(declare-fun e!861614 () ListLongMap!22349)

(declare-fun call!70025 () ListLongMap!22349)

(declare-fun minValue!436 () V!59175)

(declare-fun +!4912 (ListLongMap!22349 tuple2!24728) ListLongMap!22349)

(assert (=> b!1547869 (= e!861614 (+!4912 call!70025 (tuple2!24729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547870 () Bool)

(declare-fun res!1060936 () Bool)

(assert (=> b!1547870 (=> (not res!1060936) (not e!861618))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103263 (_ BitVec 32)) Bool)

(assert (=> b!1547870 (= res!1060936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1060938 () Bool)

(assert (=> start!132092 (=> (not res!1060938) (not e!861618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132092 (= res!1060938 (validMask!0 mask!926))))

(assert (=> start!132092 e!861618))

(declare-fun array_inv!38675 (array!103263) Bool)

(assert (=> start!132092 (array_inv!38675 _keys!618)))

(assert (=> start!132092 tp_is_empty!38049))

(assert (=> start!132092 true))

(assert (=> start!132092 tp!111572))

(declare-fun e!861611 () Bool)

(declare-fun array_inv!38676 (array!103265) Bool)

(assert (=> start!132092 (and (array_inv!38676 _values!470) e!861611)))

(declare-fun b!1547871 () Bool)

(declare-fun e!861617 () Bool)

(assert (=> b!1547871 (= e!861617 tp_is_empty!38049)))

(declare-fun b!1547872 () Bool)

(declare-fun res!1060940 () Bool)

(assert (=> b!1547872 (=> (not res!1060940) (not e!861618))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1547872 (= res!1060940 (and (= (size!50381 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50380 _keys!618) (size!50381 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70019 () Bool)

(declare-fun call!70026 () ListLongMap!22349)

(declare-fun call!70023 () ListLongMap!22349)

(assert (=> bm!70019 (= call!70026 call!70023)))

(declare-fun b!1547873 () Bool)

(declare-fun e!861615 () ListLongMap!22349)

(assert (=> b!1547873 (= e!861615 call!70026)))

(declare-fun defaultEntry!478 () Int)

(declare-fun call!70022 () ListLongMap!22349)

(declare-fun zeroValue!436 () V!59175)

(declare-fun bm!70020 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6632 (array!103263 array!103265 (_ BitVec 32) (_ BitVec 32) V!59175 V!59175 (_ BitVec 32) Int) ListLongMap!22349)

(assert (=> bm!70020 (= call!70022 (getCurrentListMapNoExtraKeys!6632 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58777 () Bool)

(assert (=> mapIsEmpty!58777 mapRes!58777))

(declare-fun b!1547874 () Bool)

(declare-fun e!861613 () Bool)

(assert (=> b!1547874 (= e!861618 e!861613)))

(declare-fun res!1060934 () Bool)

(assert (=> b!1547874 (=> (not res!1060934) (not e!861613))))

(assert (=> b!1547874 (= res!1060934 (bvslt from!762 (size!50380 _keys!618)))))

(declare-fun lt!666979 () ListLongMap!22349)

(assert (=> b!1547874 (= lt!666979 e!861614)))

(declare-fun c!142041 () Bool)

(declare-fun lt!666977 () Bool)

(assert (=> b!1547874 (= c!142041 (and (not lt!666977) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547874 (= lt!666977 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547875 () Bool)

(assert (=> b!1547875 (= e!861611 (and e!861617 mapRes!58777))))

(declare-fun condMapEmpty!58777 () Bool)

(declare-fun mapDefault!58777 () ValueCell!18114)

(assert (=> b!1547875 (= condMapEmpty!58777 (= (arr!49830 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18114)) mapDefault!58777)))))

(declare-fun b!1547876 () Bool)

(declare-fun e!861616 () ListLongMap!22349)

(declare-fun call!70024 () ListLongMap!22349)

(assert (=> b!1547876 (= e!861616 call!70024)))

(declare-fun b!1547877 () Bool)

(assert (=> b!1547877 (= e!861615 call!70024)))

(declare-fun bm!70021 () Bool)

(assert (=> bm!70021 (= call!70024 call!70025)))

(declare-fun b!1547878 () Bool)

(declare-fun res!1060939 () Bool)

(assert (=> b!1547878 (=> (not res!1060939) (not e!861613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547878 (= res!1060939 (validKeyInArray!0 (select (arr!49829 _keys!618) from!762)))))

(declare-fun b!1547879 () Bool)

(assert (=> b!1547879 (= e!861613 (not true))))

(declare-fun lt!666975 () Bool)

(declare-fun lt!666980 () ListLongMap!22349)

(declare-fun contains!10079 (ListLongMap!22349 (_ BitVec 64)) Bool)

(assert (=> b!1547879 (= lt!666975 (contains!10079 lt!666980 (select (arr!49829 _keys!618) from!762)))))

(declare-fun apply!1095 (ListLongMap!22349 (_ BitVec 64)) V!59175)

(assert (=> b!1547879 (= (apply!1095 (+!4912 lt!666980 (tuple2!24729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49829 _keys!618) from!762)) (apply!1095 lt!666980 (select (arr!49829 _keys!618) from!762)))))

(declare-datatypes ((Unit!51520 0))(
  ( (Unit!51521) )
))
(declare-fun lt!666978 () Unit!51520)

(declare-fun addApplyDifferent!598 (ListLongMap!22349 (_ BitVec 64) V!59175 (_ BitVec 64)) Unit!51520)

(assert (=> b!1547879 (= lt!666978 (addApplyDifferent!598 lt!666980 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49829 _keys!618) from!762)))))

(assert (=> b!1547879 (contains!10079 (+!4912 lt!666980 (tuple2!24729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49829 _keys!618) from!762))))

(declare-fun lt!666976 () Unit!51520)

(declare-fun addStillContains!1261 (ListLongMap!22349 (_ BitVec 64) V!59175 (_ BitVec 64)) Unit!51520)

(assert (=> b!1547879 (= lt!666976 (addStillContains!1261 lt!666980 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49829 _keys!618) from!762)))))

(assert (=> b!1547879 (= lt!666980 (getCurrentListMapNoExtraKeys!6632 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547880 () Bool)

(declare-fun c!142042 () Bool)

(assert (=> b!1547880 (= c!142042 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666977))))

(assert (=> b!1547880 (= e!861616 e!861615)))

(declare-fun bm!70022 () Bool)

(declare-fun c!142043 () Bool)

(assert (=> bm!70022 (= call!70025 (+!4912 (ite c!142041 call!70022 (ite c!142043 call!70023 call!70026)) (ite (or c!142041 c!142043) (tuple2!24729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547881 () Bool)

(assert (=> b!1547881 (= e!861614 e!861616)))

(assert (=> b!1547881 (= c!142043 (and (not lt!666977) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70023 () Bool)

(assert (=> bm!70023 (= call!70023 call!70022)))

(assert (= (and start!132092 res!1060938) b!1547872))

(assert (= (and b!1547872 res!1060940) b!1547870))

(assert (= (and b!1547870 res!1060936) b!1547867))

(assert (= (and b!1547867 res!1060935) b!1547866))

(assert (= (and b!1547866 res!1060937) b!1547874))

(assert (= (and b!1547874 c!142041) b!1547869))

(assert (= (and b!1547874 (not c!142041)) b!1547881))

(assert (= (and b!1547881 c!142043) b!1547876))

(assert (= (and b!1547881 (not c!142043)) b!1547880))

(assert (= (and b!1547880 c!142042) b!1547877))

(assert (= (and b!1547880 (not c!142042)) b!1547873))

(assert (= (or b!1547877 b!1547873) bm!70019))

(assert (= (or b!1547876 bm!70019) bm!70023))

(assert (= (or b!1547876 b!1547877) bm!70021))

(assert (= (or b!1547869 bm!70023) bm!70020))

(assert (= (or b!1547869 bm!70021) bm!70022))

(assert (= (and b!1547874 res!1060934) b!1547878))

(assert (= (and b!1547878 res!1060939) b!1547879))

(assert (= (and b!1547875 condMapEmpty!58777) mapIsEmpty!58777))

(assert (= (and b!1547875 (not condMapEmpty!58777)) mapNonEmpty!58777))

(get-info :version)

(assert (= (and mapNonEmpty!58777 ((_ is ValueCellFull!18114) mapValue!58777)) b!1547868))

(assert (= (and b!1547875 ((_ is ValueCellFull!18114) mapDefault!58777)) b!1547871))

(assert (= start!132092 b!1547875))

(declare-fun m!1427397 () Bool)

(assert (=> b!1547867 m!1427397))

(declare-fun m!1427399 () Bool)

(assert (=> b!1547879 m!1427399))

(declare-fun m!1427401 () Bool)

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427403 () Bool)

(assert (=> b!1547879 m!1427403))

(assert (=> b!1547879 m!1427399))

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427405 () Bool)

(assert (=> b!1547879 m!1427405))

(declare-fun m!1427407 () Bool)

(assert (=> b!1547879 m!1427407))

(assert (=> b!1547879 m!1427401))

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427409 () Bool)

(assert (=> b!1547879 m!1427409))

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427411 () Bool)

(assert (=> b!1547879 m!1427411))

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427413 () Bool)

(assert (=> b!1547879 m!1427413))

(declare-fun m!1427415 () Bool)

(assert (=> b!1547879 m!1427415))

(assert (=> b!1547879 m!1427415))

(assert (=> b!1547879 m!1427401))

(declare-fun m!1427417 () Bool)

(assert (=> b!1547879 m!1427417))

(declare-fun m!1427419 () Bool)

(assert (=> b!1547870 m!1427419))

(declare-fun m!1427421 () Bool)

(assert (=> bm!70022 m!1427421))

(assert (=> bm!70020 m!1427407))

(declare-fun m!1427423 () Bool)

(assert (=> b!1547869 m!1427423))

(assert (=> b!1547878 m!1427401))

(assert (=> b!1547878 m!1427401))

(declare-fun m!1427425 () Bool)

(assert (=> b!1547878 m!1427425))

(declare-fun m!1427427 () Bool)

(assert (=> start!132092 m!1427427))

(declare-fun m!1427429 () Bool)

(assert (=> start!132092 m!1427429))

(declare-fun m!1427431 () Bool)

(assert (=> start!132092 m!1427431))

(declare-fun m!1427433 () Bool)

(assert (=> mapNonEmpty!58777 m!1427433))

(check-sat (not b!1547870) (not b!1547867) (not bm!70020) (not b!1547879) (not b!1547878) (not b_next!31773) (not bm!70022) (not b!1547869) b_and!51193 (not start!132092) tp_is_empty!38049 (not mapNonEmpty!58777))
(check-sat b_and!51193 (not b_next!31773))
