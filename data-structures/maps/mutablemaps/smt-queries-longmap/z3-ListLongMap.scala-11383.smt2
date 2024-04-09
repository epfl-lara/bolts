; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132322 () Bool)

(assert start!132322)

(declare-fun b_free!31917 () Bool)

(declare-fun b_next!31917 () Bool)

(assert (=> start!132322 (= b_free!31917 (not b_next!31917))))

(declare-fun tp!112016 () Bool)

(declare-fun b_and!51365 () Bool)

(assert (=> start!132322 (= tp!112016 b_and!51365)))

(declare-fun bm!71144 () Bool)

(declare-datatypes ((V!59367 0))(
  ( (V!59368 (val!19174 Int)) )
))
(declare-datatypes ((tuple2!24864 0))(
  ( (tuple2!24865 (_1!12442 (_ BitVec 64)) (_2!12442 V!59367)) )
))
(declare-datatypes ((List!36344 0))(
  ( (Nil!36341) (Cons!36340 (h!37786 tuple2!24864) (t!51065 List!36344)) )
))
(declare-datatypes ((ListLongMap!22485 0))(
  ( (ListLongMap!22486 (toList!11258 List!36344)) )
))
(declare-fun call!71150 () ListLongMap!22485)

(declare-fun call!71148 () ListLongMap!22485)

(assert (=> bm!71144 (= call!71150 call!71148)))

(declare-fun zeroValue!436 () V!59367)

(declare-fun call!71151 () ListLongMap!22485)

(declare-fun c!142829 () Bool)

(declare-fun minValue!436 () V!59367)

(declare-fun bm!71145 () Bool)

(declare-fun call!71147 () ListLongMap!22485)

(declare-fun c!142826 () Bool)

(declare-fun +!4964 (ListLongMap!22485 tuple2!24864) ListLongMap!22485)

(assert (=> bm!71145 (= call!71151 (+!4964 (ite c!142826 call!71148 (ite c!142829 call!71150 call!71147)) (ite (or c!142826 c!142829) (tuple2!24865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1551892 () Bool)

(declare-datatypes ((Unit!51616 0))(
  ( (Unit!51617) )
))
(declare-fun e!863951 () Unit!51616)

(declare-fun Unit!51618 () Unit!51616)

(assert (=> b!1551892 (= e!863951 Unit!51618)))

(declare-fun b!1551893 () Bool)

(declare-fun res!1062690 () Bool)

(declare-fun e!863950 () Bool)

(assert (=> b!1551893 (=> (not res!1062690) (not e!863950))))

(declare-datatypes ((array!103545 0))(
  ( (array!103546 (arr!49966 (Array (_ BitVec 32) (_ BitVec 64))) (size!50517 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103545)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103545 (_ BitVec 32)) Bool)

(assert (=> b!1551893 (= res!1062690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551894 () Bool)

(declare-fun e!863954 () ListLongMap!22485)

(assert (=> b!1551894 (= e!863954 call!71147)))

(declare-fun b!1551895 () Bool)

(declare-fun res!1062687 () Bool)

(assert (=> b!1551895 (=> (not res!1062687) (not e!863950))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18186 0))(
  ( (ValueCellFull!18186 (v!21976 V!59367)) (EmptyCell!18186) )
))
(declare-datatypes ((array!103547 0))(
  ( (array!103548 (arr!49967 (Array (_ BitVec 32) ValueCell!18186)) (size!50518 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103547)

(assert (=> b!1551895 (= res!1062687 (and (= (size!50518 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50517 _keys!618) (size!50518 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551896 () Bool)

(declare-fun e!863946 () ListLongMap!22485)

(declare-fun call!71149 () ListLongMap!22485)

(assert (=> b!1551896 (= e!863946 call!71149)))

(declare-fun b!1551897 () Bool)

(declare-fun e!863948 () Bool)

(declare-fun tp_is_empty!38193 () Bool)

(assert (=> b!1551897 (= e!863948 tp_is_empty!38193)))

(declare-fun mapNonEmpty!59005 () Bool)

(declare-fun mapRes!59005 () Bool)

(declare-fun tp!112015 () Bool)

(declare-fun e!863949 () Bool)

(assert (=> mapNonEmpty!59005 (= mapRes!59005 (and tp!112015 e!863949))))

(declare-fun mapRest!59005 () (Array (_ BitVec 32) ValueCell!18186))

(declare-fun mapKey!59005 () (_ BitVec 32))

(declare-fun mapValue!59005 () ValueCell!18186)

(assert (=> mapNonEmpty!59005 (= (arr!49967 _values!470) (store mapRest!59005 mapKey!59005 mapValue!59005))))

(declare-fun b!1551899 () Bool)

(declare-fun res!1062688 () Bool)

(assert (=> b!1551899 (=> (not res!1062688) (not e!863950))))

(declare-datatypes ((List!36345 0))(
  ( (Nil!36342) (Cons!36341 (h!37787 (_ BitVec 64)) (t!51066 List!36345)) )
))
(declare-fun arrayNoDuplicates!0 (array!103545 (_ BitVec 32) List!36345) Bool)

(assert (=> b!1551899 (= res!1062688 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36342))))

(declare-fun b!1551900 () Bool)

(assert (=> b!1551900 (= e!863954 call!71149)))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun bm!71146 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6681 (array!103545 array!103547 (_ BitVec 32) (_ BitVec 32) V!59367 V!59367 (_ BitVec 32) Int) ListLongMap!22485)

(assert (=> bm!71146 (= call!71148 (getCurrentListMapNoExtraKeys!6681 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!59005 () Bool)

(assert (=> mapIsEmpty!59005 mapRes!59005))

(declare-fun b!1551901 () Bool)

(assert (=> b!1551901 (= e!863949 tp_is_empty!38193)))

(declare-fun b!1551902 () Bool)

(declare-fun e!863952 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1551902 (= e!863952 (validKeyInArray!0 (select (arr!49966 _keys!618) from!762)))))

(declare-fun b!1551903 () Bool)

(assert (=> b!1551903 (= e!863950 false)))

(declare-fun lt!668958 () Unit!51616)

(assert (=> b!1551903 (= lt!668958 e!863951)))

(declare-fun c!142828 () Bool)

(assert (=> b!1551903 (= c!142828 e!863952)))

(declare-fun res!1062686 () Bool)

(assert (=> b!1551903 (=> (not res!1062686) (not e!863952))))

(assert (=> b!1551903 (= res!1062686 (bvslt from!762 (size!50517 _keys!618)))))

(declare-fun lt!668956 () ListLongMap!22485)

(declare-fun e!863953 () ListLongMap!22485)

(assert (=> b!1551903 (= lt!668956 e!863953)))

(declare-fun lt!668957 () Bool)

(assert (=> b!1551903 (= c!142826 (and (not lt!668957) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1551903 (= lt!668957 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1551904 () Bool)

(assert (=> b!1551904 (= e!863953 e!863946)))

(assert (=> b!1551904 (= c!142829 (and (not lt!668957) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!71147 () Bool)

(assert (=> bm!71147 (= call!71147 call!71150)))

(declare-fun b!1551905 () Bool)

(assert (=> b!1551905 (= e!863953 (+!4964 call!71151 (tuple2!24865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!71148 () Bool)

(assert (=> bm!71148 (= call!71149 call!71151)))

(declare-fun b!1551906 () Bool)

(declare-fun c!142827 () Bool)

(assert (=> b!1551906 (= c!142827 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668957))))

(assert (=> b!1551906 (= e!863946 e!863954)))

(declare-fun res!1062685 () Bool)

(assert (=> start!132322 (=> (not res!1062685) (not e!863950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132322 (= res!1062685 (validMask!0 mask!926))))

(assert (=> start!132322 e!863950))

(declare-fun array_inv!38765 (array!103545) Bool)

(assert (=> start!132322 (array_inv!38765 _keys!618)))

(assert (=> start!132322 tp_is_empty!38193))

(assert (=> start!132322 true))

(assert (=> start!132322 tp!112016))

(declare-fun e!863945 () Bool)

(declare-fun array_inv!38766 (array!103547) Bool)

(assert (=> start!132322 (and (array_inv!38766 _values!470) e!863945)))

(declare-fun b!1551898 () Bool)

(assert (=> b!1551898 (= e!863945 (and e!863948 mapRes!59005))))

(declare-fun condMapEmpty!59005 () Bool)

(declare-fun mapDefault!59005 () ValueCell!18186)

(assert (=> b!1551898 (= condMapEmpty!59005 (= (arr!49967 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18186)) mapDefault!59005)))))

(declare-fun b!1551907 () Bool)

(declare-fun lt!668950 () Unit!51616)

(assert (=> b!1551907 (= e!863951 lt!668950)))

(declare-fun lt!668955 () ListLongMap!22485)

(assert (=> b!1551907 (= lt!668955 (getCurrentListMapNoExtraKeys!6681 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!668953 () Unit!51616)

(declare-fun addStillContains!1299 (ListLongMap!22485 (_ BitVec 64) V!59367 (_ BitVec 64)) Unit!51616)

(assert (=> b!1551907 (= lt!668953 (addStillContains!1299 lt!668955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49966 _keys!618) from!762)))))

(declare-fun lt!668951 () ListLongMap!22485)

(assert (=> b!1551907 (= lt!668951 (+!4964 lt!668955 (tuple2!24865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10128 (ListLongMap!22485 (_ BitVec 64)) Bool)

(assert (=> b!1551907 (contains!10128 lt!668951 (select (arr!49966 _keys!618) from!762))))

(declare-fun addApplyDifferent!632 (ListLongMap!22485 (_ BitVec 64) V!59367 (_ BitVec 64)) Unit!51616)

(assert (=> b!1551907 (= lt!668950 (addApplyDifferent!632 lt!668955 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49966 _keys!618) from!762)))))

(declare-fun lt!668952 () V!59367)

(declare-fun apply!1131 (ListLongMap!22485 (_ BitVec 64)) V!59367)

(assert (=> b!1551907 (= lt!668952 (apply!1131 (+!4964 lt!668955 (tuple2!24865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49966 _keys!618) from!762)))))

(declare-fun lt!668954 () V!59367)

(assert (=> b!1551907 (= lt!668954 (apply!1131 lt!668955 (select (arr!49966 _keys!618) from!762)))))

(assert (=> b!1551907 (= lt!668952 lt!668954)))

(declare-fun lt!668949 () Unit!51616)

(assert (=> b!1551907 (= lt!668949 (addApplyDifferent!632 lt!668955 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49966 _keys!618) from!762)))))

(assert (=> b!1551907 (= (apply!1131 lt!668951 (select (arr!49966 _keys!618) from!762)) lt!668954)))

(declare-fun b!1551908 () Bool)

(declare-fun res!1062689 () Bool)

(assert (=> b!1551908 (=> (not res!1062689) (not e!863950))))

(assert (=> b!1551908 (= res!1062689 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50517 _keys!618))))))

(assert (= (and start!132322 res!1062685) b!1551895))

(assert (= (and b!1551895 res!1062687) b!1551893))

(assert (= (and b!1551893 res!1062690) b!1551899))

(assert (= (and b!1551899 res!1062688) b!1551908))

(assert (= (and b!1551908 res!1062689) b!1551903))

(assert (= (and b!1551903 c!142826) b!1551905))

(assert (= (and b!1551903 (not c!142826)) b!1551904))

(assert (= (and b!1551904 c!142829) b!1551896))

(assert (= (and b!1551904 (not c!142829)) b!1551906))

(assert (= (and b!1551906 c!142827) b!1551900))

(assert (= (and b!1551906 (not c!142827)) b!1551894))

(assert (= (or b!1551900 b!1551894) bm!71147))

(assert (= (or b!1551896 bm!71147) bm!71144))

(assert (= (or b!1551896 b!1551900) bm!71148))

(assert (= (or b!1551905 bm!71144) bm!71146))

(assert (= (or b!1551905 bm!71148) bm!71145))

(assert (= (and b!1551903 res!1062686) b!1551902))

(assert (= (and b!1551903 c!142828) b!1551907))

(assert (= (and b!1551903 (not c!142828)) b!1551892))

(assert (= (and b!1551898 condMapEmpty!59005) mapIsEmpty!59005))

(assert (= (and b!1551898 (not condMapEmpty!59005)) mapNonEmpty!59005))

(get-info :version)

(assert (= (and mapNonEmpty!59005 ((_ is ValueCellFull!18186) mapValue!59005)) b!1551901))

(assert (= (and b!1551898 ((_ is ValueCellFull!18186) mapDefault!59005)) b!1551897))

(assert (= start!132322 b!1551898))

(declare-fun m!1430541 () Bool)

(assert (=> bm!71145 m!1430541))

(declare-fun m!1430543 () Bool)

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430545 () Bool)

(assert (=> b!1551907 m!1430545))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430547 () Bool)

(assert (=> b!1551907 m!1430547))

(declare-fun m!1430549 () Bool)

(assert (=> b!1551907 m!1430549))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430551 () Bool)

(assert (=> b!1551907 m!1430551))

(declare-fun m!1430553 () Bool)

(assert (=> b!1551907 m!1430553))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430555 () Bool)

(assert (=> b!1551907 m!1430555))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430557 () Bool)

(assert (=> b!1551907 m!1430557))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430559 () Bool)

(assert (=> b!1551907 m!1430559))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430561 () Bool)

(assert (=> b!1551907 m!1430561))

(assert (=> b!1551907 m!1430553))

(assert (=> b!1551907 m!1430543))

(declare-fun m!1430563 () Bool)

(assert (=> b!1551907 m!1430563))

(declare-fun m!1430565 () Bool)

(assert (=> b!1551905 m!1430565))

(declare-fun m!1430567 () Bool)

(assert (=> mapNonEmpty!59005 m!1430567))

(assert (=> b!1551902 m!1430543))

(assert (=> b!1551902 m!1430543))

(declare-fun m!1430569 () Bool)

(assert (=> b!1551902 m!1430569))

(declare-fun m!1430571 () Bool)

(assert (=> b!1551893 m!1430571))

(assert (=> bm!71146 m!1430549))

(declare-fun m!1430573 () Bool)

(assert (=> start!132322 m!1430573))

(declare-fun m!1430575 () Bool)

(assert (=> start!132322 m!1430575))

(declare-fun m!1430577 () Bool)

(assert (=> start!132322 m!1430577))

(declare-fun m!1430579 () Bool)

(assert (=> b!1551899 m!1430579))

(check-sat (not bm!71145) b_and!51365 (not b_next!31917) (not b!1551907) (not b!1551905) (not b!1551899) (not b!1551893) (not bm!71146) (not b!1551902) (not mapNonEmpty!59005) tp_is_empty!38193 (not start!132322))
(check-sat b_and!51365 (not b_next!31917))
