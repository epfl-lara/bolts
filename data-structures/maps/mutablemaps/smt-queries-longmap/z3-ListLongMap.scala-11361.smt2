; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132104 () Bool)

(assert start!132104)

(declare-fun b_free!31785 () Bool)

(declare-fun b_next!31785 () Bool)

(assert (=> start!132104 (= b_free!31785 (not b_next!31785))))

(declare-fun tp!111608 () Bool)

(declare-fun b_and!51205 () Bool)

(assert (=> start!132104 (= tp!111608 b_and!51205)))

(declare-fun b!1548154 () Bool)

(declare-fun res!1061060 () Bool)

(declare-fun e!861781 () Bool)

(assert (=> b!1548154 (=> (not res!1061060) (not e!861781))))

(declare-datatypes ((array!103287 0))(
  ( (array!103288 (arr!49841 (Array (_ BitVec 32) (_ BitVec 64))) (size!50392 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103287)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59191 0))(
  ( (V!59192 (val!19108 Int)) )
))
(declare-datatypes ((ValueCell!18120 0))(
  ( (ValueCellFull!18120 (v!21906 V!59191)) (EmptyCell!18120) )
))
(declare-datatypes ((array!103289 0))(
  ( (array!103290 (arr!49842 (Array (_ BitVec 32) ValueCell!18120)) (size!50393 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103289)

(assert (=> b!1548154 (= res!1061060 (and (= (size!50393 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50392 _keys!618) (size!50393 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548155 () Bool)

(declare-fun res!1061064 () Bool)

(assert (=> b!1548155 (=> (not res!1061064) (not e!861781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103287 (_ BitVec 32)) Bool)

(assert (=> b!1548155 (= res!1061064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548156 () Bool)

(declare-fun res!1061066 () Bool)

(assert (=> b!1548156 (=> (not res!1061066) (not e!861781))))

(declare-datatypes ((List!36244 0))(
  ( (Nil!36241) (Cons!36240 (h!37686 (_ BitVec 64)) (t!50945 List!36244)) )
))
(declare-fun arrayNoDuplicates!0 (array!103287 (_ BitVec 32) List!36244) Bool)

(assert (=> b!1548156 (= res!1061066 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36241))))

(declare-fun b!1548157 () Bool)

(declare-fun e!861776 () Bool)

(declare-fun tp_is_empty!38061 () Bool)

(assert (=> b!1548157 (= e!861776 tp_is_empty!38061)))

(declare-fun b!1548158 () Bool)

(declare-datatypes ((tuple2!24740 0))(
  ( (tuple2!24741 (_1!12380 (_ BitVec 64)) (_2!12380 V!59191)) )
))
(declare-datatypes ((List!36245 0))(
  ( (Nil!36242) (Cons!36241 (h!37687 tuple2!24740) (t!50946 List!36245)) )
))
(declare-datatypes ((ListLongMap!22361 0))(
  ( (ListLongMap!22362 (toList!11196 List!36245)) )
))
(declare-fun e!861773 () ListLongMap!22361)

(declare-fun call!70115 () ListLongMap!22361)

(assert (=> b!1548158 (= e!861773 call!70115)))

(declare-fun b!1548159 () Bool)

(declare-fun res!1061063 () Bool)

(assert (=> b!1548159 (=> (not res!1061063) (not e!861781))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1548159 (= res!1061063 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50392 _keys!618))))))

(declare-fun b!1548160 () Bool)

(declare-fun e!861779 () ListLongMap!22361)

(declare-fun call!70113 () ListLongMap!22361)

(assert (=> b!1548160 (= e!861779 call!70113)))

(declare-fun mapNonEmpty!58795 () Bool)

(declare-fun mapRes!58795 () Bool)

(declare-fun tp!111607 () Bool)

(declare-fun e!861780 () Bool)

(assert (=> mapNonEmpty!58795 (= mapRes!58795 (and tp!111607 e!861780))))

(declare-fun mapValue!58795 () ValueCell!18120)

(declare-fun mapRest!58795 () (Array (_ BitVec 32) ValueCell!18120))

(declare-fun mapKey!58795 () (_ BitVec 32))

(assert (=> mapNonEmpty!58795 (= (arr!49842 _values!470) (store mapRest!58795 mapKey!58795 mapValue!58795))))

(declare-fun res!1061065 () Bool)

(assert (=> start!132104 (=> (not res!1061065) (not e!861781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132104 (= res!1061065 (validMask!0 mask!926))))

(assert (=> start!132104 e!861781))

(declare-fun array_inv!38683 (array!103287) Bool)

(assert (=> start!132104 (array_inv!38683 _keys!618)))

(assert (=> start!132104 tp_is_empty!38061))

(assert (=> start!132104 true))

(assert (=> start!132104 tp!111608))

(declare-fun e!861777 () Bool)

(declare-fun array_inv!38684 (array!103289) Bool)

(assert (=> start!132104 (and (array_inv!38684 _values!470) e!861777)))

(declare-fun b!1548161 () Bool)

(declare-fun c!142095 () Bool)

(declare-fun lt!667130 () Bool)

(assert (=> b!1548161 (= c!142095 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667130))))

(assert (=> b!1548161 (= e!861779 e!861773)))

(declare-fun bm!70109 () Bool)

(declare-fun call!70116 () ListLongMap!22361)

(assert (=> bm!70109 (= call!70115 call!70116)))

(declare-fun mapIsEmpty!58795 () Bool)

(assert (=> mapIsEmpty!58795 mapRes!58795))

(declare-fun b!1548162 () Bool)

(assert (=> b!1548162 (= e!861777 (and e!861776 mapRes!58795))))

(declare-fun condMapEmpty!58795 () Bool)

(declare-fun mapDefault!58795 () ValueCell!18120)

(assert (=> b!1548162 (= condMapEmpty!58795 (= (arr!49842 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18120)) mapDefault!58795)))))

(declare-fun b!1548163 () Bool)

(declare-fun res!1061061 () Bool)

(declare-fun e!861775 () Bool)

(assert (=> b!1548163 (=> (not res!1061061) (not e!861775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548163 (= res!1061061 (validKeyInArray!0 (select (arr!49841 _keys!618) from!762)))))

(declare-fun b!1548164 () Bool)

(assert (=> b!1548164 (= e!861781 e!861775)))

(declare-fun res!1061062 () Bool)

(assert (=> b!1548164 (=> (not res!1061062) (not e!861775))))

(assert (=> b!1548164 (= res!1061062 (bvslt from!762 (size!50392 _keys!618)))))

(declare-fun lt!667126 () ListLongMap!22361)

(declare-fun e!861778 () ListLongMap!22361)

(assert (=> b!1548164 (= lt!667126 e!861778)))

(declare-fun c!142097 () Bool)

(assert (=> b!1548164 (= c!142097 (and (not lt!667130) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548164 (= lt!667130 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548165 () Bool)

(assert (=> b!1548165 (= e!861775 (not true))))

(declare-fun lt!667131 () V!59191)

(declare-fun lt!667128 () ListLongMap!22361)

(declare-fun apply!1100 (ListLongMap!22361 (_ BitVec 64)) V!59191)

(assert (=> b!1548165 (= (apply!1100 lt!667128 (select (arr!49841 _keys!618) from!762)) lt!667131)))

(declare-fun zeroValue!436 () V!59191)

(declare-datatypes ((Unit!51530 0))(
  ( (Unit!51531) )
))
(declare-fun lt!667127 () Unit!51530)

(declare-fun lt!667133 () ListLongMap!22361)

(declare-fun addApplyDifferent!603 (ListLongMap!22361 (_ BitVec 64) V!59191 (_ BitVec 64)) Unit!51530)

(assert (=> b!1548165 (= lt!667127 (addApplyDifferent!603 lt!667133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49841 _keys!618) from!762)))))

(declare-fun lt!667129 () V!59191)

(assert (=> b!1548165 (= lt!667129 lt!667131)))

(assert (=> b!1548165 (= lt!667131 (apply!1100 lt!667133 (select (arr!49841 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59191)

(declare-fun +!4917 (ListLongMap!22361 tuple2!24740) ListLongMap!22361)

(assert (=> b!1548165 (= lt!667129 (apply!1100 (+!4917 lt!667133 (tuple2!24741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49841 _keys!618) from!762)))))

(declare-fun lt!667125 () Unit!51530)

(assert (=> b!1548165 (= lt!667125 (addApplyDifferent!603 lt!667133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49841 _keys!618) from!762)))))

(declare-fun contains!10084 (ListLongMap!22361 (_ BitVec 64)) Bool)

(assert (=> b!1548165 (contains!10084 lt!667128 (select (arr!49841 _keys!618) from!762))))

(assert (=> b!1548165 (= lt!667128 (+!4917 lt!667133 (tuple2!24741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667132 () Unit!51530)

(declare-fun addStillContains!1266 (ListLongMap!22361 (_ BitVec 64) V!59191 (_ BitVec 64)) Unit!51530)

(assert (=> b!1548165 (= lt!667132 (addStillContains!1266 lt!667133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49841 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6637 (array!103287 array!103289 (_ BitVec 32) (_ BitVec 32) V!59191 V!59191 (_ BitVec 32) Int) ListLongMap!22361)

(assert (=> b!1548165 (= lt!667133 (getCurrentListMapNoExtraKeys!6637 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70110 () Bool)

(declare-fun call!70112 () ListLongMap!22361)

(declare-fun call!70114 () ListLongMap!22361)

(declare-fun c!142096 () Bool)

(assert (=> bm!70110 (= call!70112 (+!4917 (ite c!142097 call!70114 (ite c!142096 call!70116 call!70115)) (ite (or c!142097 c!142096) (tuple2!24741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70111 () Bool)

(assert (=> bm!70111 (= call!70113 call!70112)))

(declare-fun b!1548166 () Bool)

(assert (=> b!1548166 (= e!861780 tp_is_empty!38061)))

(declare-fun bm!70112 () Bool)

(assert (=> bm!70112 (= call!70116 call!70114)))

(declare-fun b!1548167 () Bool)

(assert (=> b!1548167 (= e!861778 (+!4917 call!70112 (tuple2!24741 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70113 () Bool)

(assert (=> bm!70113 (= call!70114 (getCurrentListMapNoExtraKeys!6637 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548168 () Bool)

(assert (=> b!1548168 (= e!861778 e!861779)))

(assert (=> b!1548168 (= c!142096 (and (not lt!667130) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548169 () Bool)

(assert (=> b!1548169 (= e!861773 call!70113)))

(assert (= (and start!132104 res!1061065) b!1548154))

(assert (= (and b!1548154 res!1061060) b!1548155))

(assert (= (and b!1548155 res!1061064) b!1548156))

(assert (= (and b!1548156 res!1061066) b!1548159))

(assert (= (and b!1548159 res!1061063) b!1548164))

(assert (= (and b!1548164 c!142097) b!1548167))

(assert (= (and b!1548164 (not c!142097)) b!1548168))

(assert (= (and b!1548168 c!142096) b!1548160))

(assert (= (and b!1548168 (not c!142096)) b!1548161))

(assert (= (and b!1548161 c!142095) b!1548169))

(assert (= (and b!1548161 (not c!142095)) b!1548158))

(assert (= (or b!1548169 b!1548158) bm!70109))

(assert (= (or b!1548160 bm!70109) bm!70112))

(assert (= (or b!1548160 b!1548169) bm!70111))

(assert (= (or b!1548167 bm!70112) bm!70113))

(assert (= (or b!1548167 bm!70111) bm!70110))

(assert (= (and b!1548164 res!1061062) b!1548163))

(assert (= (and b!1548163 res!1061061) b!1548165))

(assert (= (and b!1548162 condMapEmpty!58795) mapIsEmpty!58795))

(assert (= (and b!1548162 (not condMapEmpty!58795)) mapNonEmpty!58795))

(get-info :version)

(assert (= (and mapNonEmpty!58795 ((_ is ValueCellFull!18120) mapValue!58795)) b!1548166))

(assert (= (and b!1548162 ((_ is ValueCellFull!18120) mapDefault!58795)) b!1548157))

(assert (= start!132104 b!1548162))

(declare-fun m!1427633 () Bool)

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427635 () Bool)

(assert (=> b!1548165 m!1427635))

(declare-fun m!1427637 () Bool)

(assert (=> b!1548165 m!1427637))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427639 () Bool)

(assert (=> b!1548165 m!1427639))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427641 () Bool)

(assert (=> b!1548165 m!1427641))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427643 () Bool)

(assert (=> b!1548165 m!1427643))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427645 () Bool)

(assert (=> b!1548165 m!1427645))

(declare-fun m!1427647 () Bool)

(assert (=> b!1548165 m!1427647))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427649 () Bool)

(assert (=> b!1548165 m!1427649))

(assert (=> b!1548165 m!1427639))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427651 () Bool)

(assert (=> b!1548165 m!1427651))

(assert (=> b!1548165 m!1427633))

(declare-fun m!1427653 () Bool)

(assert (=> b!1548165 m!1427653))

(assert (=> bm!70113 m!1427637))

(declare-fun m!1427655 () Bool)

(assert (=> b!1548156 m!1427655))

(declare-fun m!1427657 () Bool)

(assert (=> start!132104 m!1427657))

(declare-fun m!1427659 () Bool)

(assert (=> start!132104 m!1427659))

(declare-fun m!1427661 () Bool)

(assert (=> start!132104 m!1427661))

(declare-fun m!1427663 () Bool)

(assert (=> b!1548155 m!1427663))

(declare-fun m!1427665 () Bool)

(assert (=> bm!70110 m!1427665))

(assert (=> b!1548163 m!1427633))

(assert (=> b!1548163 m!1427633))

(declare-fun m!1427667 () Bool)

(assert (=> b!1548163 m!1427667))

(declare-fun m!1427669 () Bool)

(assert (=> mapNonEmpty!58795 m!1427669))

(declare-fun m!1427671 () Bool)

(assert (=> b!1548167 m!1427671))

(check-sat (not b_next!31785) (not b!1548167) (not bm!70110) (not b!1548163) (not mapNonEmpty!58795) tp_is_empty!38061 (not b!1548156) b_and!51205 (not b!1548155) (not start!132104) (not b!1548165) (not bm!70113))
(check-sat b_and!51205 (not b_next!31785))
