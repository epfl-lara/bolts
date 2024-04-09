; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132146 () Bool)

(assert start!132146)

(declare-fun b_free!31827 () Bool)

(declare-fun b_next!31827 () Bool)

(assert (=> start!132146 (= b_free!31827 (not b_next!31827))))

(declare-fun tp!111733 () Bool)

(declare-fun b_and!51247 () Bool)

(assert (=> start!132146 (= tp!111733 b_and!51247)))

(declare-fun b!1549162 () Bool)

(declare-fun e!862347 () Bool)

(declare-fun tp_is_empty!38103 () Bool)

(assert (=> b!1549162 (= e!862347 tp_is_empty!38103)))

(declare-datatypes ((array!103367 0))(
  ( (array!103368 (arr!49881 (Array (_ BitVec 32) (_ BitVec 64))) (size!50432 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103367)

(declare-datatypes ((V!59247 0))(
  ( (V!59248 (val!19129 Int)) )
))
(declare-fun zeroValue!436 () V!59247)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18141 0))(
  ( (ValueCellFull!18141 (v!21927 V!59247)) (EmptyCell!18141) )
))
(declare-datatypes ((array!103369 0))(
  ( (array!103370 (arr!49882 (Array (_ BitVec 32) ValueCell!18141)) (size!50433 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103369)

(declare-fun minValue!436 () V!59247)

(declare-fun bm!70424 () Bool)

(declare-datatypes ((tuple2!24780 0))(
  ( (tuple2!24781 (_1!12400 (_ BitVec 64)) (_2!12400 V!59247)) )
))
(declare-datatypes ((List!36279 0))(
  ( (Nil!36276) (Cons!36275 (h!37721 tuple2!24780) (t!50980 List!36279)) )
))
(declare-datatypes ((ListLongMap!22401 0))(
  ( (ListLongMap!22402 (toList!11216 List!36279)) )
))
(declare-fun call!70427 () ListLongMap!22401)

(declare-fun getCurrentListMapNoExtraKeys!6653 (array!103367 array!103369 (_ BitVec 32) (_ BitVec 32) V!59247 V!59247 (_ BitVec 32) Int) ListLongMap!22401)

(assert (=> bm!70424 (= call!70427 (getCurrentListMapNoExtraKeys!6653 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549164 () Bool)

(declare-fun res!1061501 () Bool)

(declare-fun e!862346 () Bool)

(assert (=> b!1549164 (=> (not res!1061501) (not e!862346))))

(assert (=> b!1549164 (= res!1061501 (and (= (size!50433 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50432 _keys!618) (size!50433 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549165 () Bool)

(declare-fun e!862342 () ListLongMap!22401)

(declare-fun call!70428 () ListLongMap!22401)

(declare-fun +!4933 (ListLongMap!22401 tuple2!24780) ListLongMap!22401)

(assert (=> b!1549165 (= e!862342 (+!4933 call!70428 (tuple2!24781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1549166 () Bool)

(declare-fun e!862345 () ListLongMap!22401)

(declare-fun call!70431 () ListLongMap!22401)

(assert (=> b!1549166 (= e!862345 call!70431)))

(declare-fun b!1549167 () Bool)

(declare-fun res!1061506 () Bool)

(declare-fun e!862343 () Bool)

(assert (=> b!1549167 (=> (not res!1061506) (not e!862343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549167 (= res!1061506 (validKeyInArray!0 (select (arr!49881 _keys!618) from!762)))))

(declare-fun b!1549168 () Bool)

(declare-fun e!862341 () ListLongMap!22401)

(assert (=> b!1549168 (= e!862342 e!862341)))

(declare-fun c!142286 () Bool)

(declare-fun lt!667694 () Bool)

(assert (=> b!1549168 (= c!142286 (and (not lt!667694) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70425 () Bool)

(declare-fun call!70430 () ListLongMap!22401)

(assert (=> bm!70425 (= call!70430 call!70427)))

(declare-fun b!1549169 () Bool)

(declare-fun c!142284 () Bool)

(assert (=> b!1549169 (= c!142284 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667694))))

(assert (=> b!1549169 (= e!862341 e!862345)))

(declare-fun b!1549170 () Bool)

(assert (=> b!1549170 (= e!862343 (not true))))

(declare-fun lt!667695 () ListLongMap!22401)

(declare-fun lt!667692 () V!59247)

(declare-fun apply!1113 (ListLongMap!22401 (_ BitVec 64)) V!59247)

(assert (=> b!1549170 (= (apply!1113 lt!667695 (select (arr!49881 _keys!618) from!762)) lt!667692)))

(declare-datatypes ((Unit!51556 0))(
  ( (Unit!51557) )
))
(declare-fun lt!667697 () Unit!51556)

(declare-fun lt!667693 () ListLongMap!22401)

(declare-fun addApplyDifferent!616 (ListLongMap!22401 (_ BitVec 64) V!59247 (_ BitVec 64)) Unit!51556)

(assert (=> b!1549170 (= lt!667697 (addApplyDifferent!616 lt!667693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49881 _keys!618) from!762)))))

(declare-fun lt!667698 () V!59247)

(assert (=> b!1549170 (= lt!667698 lt!667692)))

(assert (=> b!1549170 (= lt!667692 (apply!1113 lt!667693 (select (arr!49881 _keys!618) from!762)))))

(assert (=> b!1549170 (= lt!667698 (apply!1113 (+!4933 lt!667693 (tuple2!24781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49881 _keys!618) from!762)))))

(declare-fun lt!667700 () Unit!51556)

(assert (=> b!1549170 (= lt!667700 (addApplyDifferent!616 lt!667693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49881 _keys!618) from!762)))))

(declare-fun contains!10097 (ListLongMap!22401 (_ BitVec 64)) Bool)

(assert (=> b!1549170 (contains!10097 lt!667695 (select (arr!49881 _keys!618) from!762))))

(assert (=> b!1549170 (= lt!667695 (+!4933 lt!667693 (tuple2!24781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667696 () Unit!51556)

(declare-fun addStillContains!1279 (ListLongMap!22401 (_ BitVec 64) V!59247 (_ BitVec 64)) Unit!51556)

(assert (=> b!1549170 (= lt!667696 (addStillContains!1279 lt!667693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49881 _keys!618) from!762)))))

(assert (=> b!1549170 (= lt!667693 (getCurrentListMapNoExtraKeys!6653 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58858 () Bool)

(declare-fun mapRes!58858 () Bool)

(declare-fun tp!111734 () Bool)

(declare-fun e!862340 () Bool)

(assert (=> mapNonEmpty!58858 (= mapRes!58858 (and tp!111734 e!862340))))

(declare-fun mapKey!58858 () (_ BitVec 32))

(declare-fun mapValue!58858 () ValueCell!18141)

(declare-fun mapRest!58858 () (Array (_ BitVec 32) ValueCell!18141))

(assert (=> mapNonEmpty!58858 (= (arr!49882 _values!470) (store mapRest!58858 mapKey!58858 mapValue!58858))))

(declare-fun res!1061503 () Bool)

(assert (=> start!132146 (=> (not res!1061503) (not e!862346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132146 (= res!1061503 (validMask!0 mask!926))))

(assert (=> start!132146 e!862346))

(declare-fun array_inv!38713 (array!103367) Bool)

(assert (=> start!132146 (array_inv!38713 _keys!618)))

(assert (=> start!132146 tp_is_empty!38103))

(assert (=> start!132146 true))

(assert (=> start!132146 tp!111733))

(declare-fun e!862348 () Bool)

(declare-fun array_inv!38714 (array!103369) Bool)

(assert (=> start!132146 (and (array_inv!38714 _values!470) e!862348)))

(declare-fun b!1549163 () Bool)

(declare-fun res!1061502 () Bool)

(assert (=> b!1549163 (=> (not res!1061502) (not e!862346))))

(declare-datatypes ((List!36280 0))(
  ( (Nil!36277) (Cons!36276 (h!37722 (_ BitVec 64)) (t!50981 List!36280)) )
))
(declare-fun arrayNoDuplicates!0 (array!103367 (_ BitVec 32) List!36280) Bool)

(assert (=> b!1549163 (= res!1061502 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36277))))

(declare-fun b!1549171 () Bool)

(assert (=> b!1549171 (= e!862341 call!70431)))

(declare-fun b!1549172 () Bool)

(assert (=> b!1549172 (= e!862340 tp_is_empty!38103)))

(declare-fun c!142285 () Bool)

(declare-fun call!70429 () ListLongMap!22401)

(declare-fun bm!70426 () Bool)

(assert (=> bm!70426 (= call!70428 (+!4933 (ite c!142285 call!70427 (ite c!142286 call!70430 call!70429)) (ite (or c!142285 c!142286) (tuple2!24781 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24781 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58858 () Bool)

(assert (=> mapIsEmpty!58858 mapRes!58858))

(declare-fun b!1549173 () Bool)

(assert (=> b!1549173 (= e!862345 call!70429)))

(declare-fun b!1549174 () Bool)

(declare-fun res!1061504 () Bool)

(assert (=> b!1549174 (=> (not res!1061504) (not e!862346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103367 (_ BitVec 32)) Bool)

(assert (=> b!1549174 (= res!1061504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!70427 () Bool)

(assert (=> bm!70427 (= call!70429 call!70430)))

(declare-fun b!1549175 () Bool)

(assert (=> b!1549175 (= e!862346 e!862343)))

(declare-fun res!1061505 () Bool)

(assert (=> b!1549175 (=> (not res!1061505) (not e!862343))))

(assert (=> b!1549175 (= res!1061505 (bvslt from!762 (size!50432 _keys!618)))))

(declare-fun lt!667699 () ListLongMap!22401)

(assert (=> b!1549175 (= lt!667699 e!862342)))

(assert (=> b!1549175 (= c!142285 (and (not lt!667694) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549175 (= lt!667694 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549176 () Bool)

(assert (=> b!1549176 (= e!862348 (and e!862347 mapRes!58858))))

(declare-fun condMapEmpty!58858 () Bool)

(declare-fun mapDefault!58858 () ValueCell!18141)

(assert (=> b!1549176 (= condMapEmpty!58858 (= (arr!49882 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18141)) mapDefault!58858)))))

(declare-fun bm!70428 () Bool)

(assert (=> bm!70428 (= call!70431 call!70428)))

(declare-fun b!1549177 () Bool)

(declare-fun res!1061507 () Bool)

(assert (=> b!1549177 (=> (not res!1061507) (not e!862346))))

(assert (=> b!1549177 (= res!1061507 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50432 _keys!618))))))

(assert (= (and start!132146 res!1061503) b!1549164))

(assert (= (and b!1549164 res!1061501) b!1549174))

(assert (= (and b!1549174 res!1061504) b!1549163))

(assert (= (and b!1549163 res!1061502) b!1549177))

(assert (= (and b!1549177 res!1061507) b!1549175))

(assert (= (and b!1549175 c!142285) b!1549165))

(assert (= (and b!1549175 (not c!142285)) b!1549168))

(assert (= (and b!1549168 c!142286) b!1549171))

(assert (= (and b!1549168 (not c!142286)) b!1549169))

(assert (= (and b!1549169 c!142284) b!1549166))

(assert (= (and b!1549169 (not c!142284)) b!1549173))

(assert (= (or b!1549166 b!1549173) bm!70427))

(assert (= (or b!1549171 bm!70427) bm!70425))

(assert (= (or b!1549171 b!1549166) bm!70428))

(assert (= (or b!1549165 bm!70425) bm!70424))

(assert (= (or b!1549165 bm!70428) bm!70426))

(assert (= (and b!1549175 res!1061505) b!1549167))

(assert (= (and b!1549167 res!1061506) b!1549170))

(assert (= (and b!1549176 condMapEmpty!58858) mapIsEmpty!58858))

(assert (= (and b!1549176 (not condMapEmpty!58858)) mapNonEmpty!58858))

(get-info :version)

(assert (= (and mapNonEmpty!58858 ((_ is ValueCellFull!18141) mapValue!58858)) b!1549172))

(assert (= (and b!1549176 ((_ is ValueCellFull!18141) mapDefault!58858)) b!1549162))

(assert (= start!132146 b!1549176))

(declare-fun m!1428473 () Bool)

(assert (=> b!1549165 m!1428473))

(declare-fun m!1428475 () Bool)

(assert (=> b!1549170 m!1428475))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428477 () Bool)

(assert (=> b!1549170 m!1428477))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428479 () Bool)

(assert (=> b!1549170 m!1428479))

(declare-fun m!1428481 () Bool)

(assert (=> b!1549170 m!1428481))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428483 () Bool)

(assert (=> b!1549170 m!1428483))

(assert (=> b!1549170 m!1428481))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428485 () Bool)

(assert (=> b!1549170 m!1428485))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428487 () Bool)

(assert (=> b!1549170 m!1428487))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428489 () Bool)

(assert (=> b!1549170 m!1428489))

(assert (=> b!1549170 m!1428475))

(declare-fun m!1428491 () Bool)

(assert (=> b!1549170 m!1428491))

(declare-fun m!1428493 () Bool)

(assert (=> b!1549170 m!1428493))

(declare-fun m!1428495 () Bool)

(assert (=> b!1549170 m!1428495))

(declare-fun m!1428497 () Bool)

(assert (=> bm!70426 m!1428497))

(declare-fun m!1428499 () Bool)

(assert (=> b!1549163 m!1428499))

(declare-fun m!1428501 () Bool)

(assert (=> start!132146 m!1428501))

(declare-fun m!1428503 () Bool)

(assert (=> start!132146 m!1428503))

(declare-fun m!1428505 () Bool)

(assert (=> start!132146 m!1428505))

(assert (=> b!1549167 m!1428475))

(assert (=> b!1549167 m!1428475))

(declare-fun m!1428507 () Bool)

(assert (=> b!1549167 m!1428507))

(declare-fun m!1428509 () Bool)

(assert (=> mapNonEmpty!58858 m!1428509))

(assert (=> bm!70424 m!1428493))

(declare-fun m!1428511 () Bool)

(assert (=> b!1549174 m!1428511))

(check-sat (not b!1549165) (not start!132146) (not b!1549163) b_and!51247 (not b!1549170) (not b_next!31827) (not mapNonEmpty!58858) (not bm!70424) (not b!1549167) (not b!1549174) (not bm!70426) tp_is_empty!38103)
(check-sat b_and!51247 (not b_next!31827))
