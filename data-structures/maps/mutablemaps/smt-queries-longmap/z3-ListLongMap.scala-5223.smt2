; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70414 () Bool)

(assert start!70414)

(declare-fun b_free!12747 () Bool)

(declare-fun b_next!12747 () Bool)

(assert (=> start!70414 (= b_free!12747 (not b_next!12747))))

(declare-fun tp!44967 () Bool)

(declare-fun b_and!21577 () Bool)

(assert (=> start!70414 (= tp!44967 b_and!21577)))

(declare-fun res!558138 () Bool)

(declare-fun e!453720 () Bool)

(assert (=> start!70414 (=> (not res!558138) (not e!453720))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70414 (= res!558138 (validMask!0 mask!1312))))

(assert (=> start!70414 e!453720))

(declare-fun tp_is_empty!14457 () Bool)

(assert (=> start!70414 tp_is_empty!14457))

(declare-datatypes ((array!45088 0))(
  ( (array!45089 (arr!21596 (Array (_ BitVec 32) (_ BitVec 64))) (size!22017 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45088)

(declare-fun array_inv!17247 (array!45088) Bool)

(assert (=> start!70414 (array_inv!17247 _keys!976)))

(assert (=> start!70414 true))

(declare-datatypes ((V!24277 0))(
  ( (V!24278 (val!7276 Int)) )
))
(declare-datatypes ((ValueCell!6813 0))(
  ( (ValueCellFull!6813 (v!9701 V!24277)) (EmptyCell!6813) )
))
(declare-datatypes ((array!45090 0))(
  ( (array!45091 (arr!21597 (Array (_ BitVec 32) ValueCell!6813)) (size!22018 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45090)

(declare-fun e!453719 () Bool)

(declare-fun array_inv!17248 (array!45090) Bool)

(assert (=> start!70414 (and (array_inv!17248 _values!788) e!453719)))

(assert (=> start!70414 tp!44967))

(declare-fun b!817539 () Bool)

(declare-fun res!558140 () Bool)

(assert (=> b!817539 (=> (not res!558140) (not e!453720))))

(declare-datatypes ((List!15437 0))(
  ( (Nil!15434) (Cons!15433 (h!16562 (_ BitVec 64)) (t!21770 List!15437)) )
))
(declare-fun arrayNoDuplicates!0 (array!45088 (_ BitVec 32) List!15437) Bool)

(assert (=> b!817539 (= res!558140 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15434))))

(declare-fun b!817540 () Bool)

(declare-fun e!453718 () Bool)

(assert (=> b!817540 (= e!453718 tp_is_empty!14457)))

(declare-fun b!817541 () Bool)

(declare-fun e!453722 () Bool)

(assert (=> b!817541 (= e!453722 tp_is_empty!14457)))

(declare-fun mapIsEmpty!23278 () Bool)

(declare-fun mapRes!23278 () Bool)

(assert (=> mapIsEmpty!23278 mapRes!23278))

(declare-fun b!817542 () Bool)

(declare-fun res!558139 () Bool)

(assert (=> b!817542 (=> (not res!558139) (not e!453720))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817542 (= res!558139 (and (= (size!22018 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22017 _keys!976) (size!22018 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23278 () Bool)

(declare-fun tp!44968 () Bool)

(assert (=> mapNonEmpty!23278 (= mapRes!23278 (and tp!44968 e!453722))))

(declare-fun mapKey!23278 () (_ BitVec 32))

(declare-fun mapValue!23278 () ValueCell!6813)

(declare-fun mapRest!23278 () (Array (_ BitVec 32) ValueCell!6813))

(assert (=> mapNonEmpty!23278 (= (arr!21597 _values!788) (store mapRest!23278 mapKey!23278 mapValue!23278))))

(declare-fun b!817543 () Bool)

(declare-fun res!558141 () Bool)

(assert (=> b!817543 (=> (not res!558141) (not e!453720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45088 (_ BitVec 32)) Bool)

(assert (=> b!817543 (= res!558141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817544 () Bool)

(assert (=> b!817544 (= e!453720 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!22017 _keys!976)))))))

(declare-datatypes ((tuple2!9568 0))(
  ( (tuple2!9569 (_1!4794 (_ BitVec 64)) (_2!4794 V!24277)) )
))
(declare-datatypes ((List!15438 0))(
  ( (Nil!15435) (Cons!15434 (h!16563 tuple2!9568) (t!21771 List!15438)) )
))
(declare-datatypes ((ListLongMap!8405 0))(
  ( (ListLongMap!8406 (toList!4218 List!15438)) )
))
(declare-fun lt!366306 () ListLongMap!8405)

(declare-fun lt!366307 () ListLongMap!8405)

(assert (=> b!817544 (= lt!366306 lt!366307)))

(declare-fun zeroValueBefore!34 () V!24277)

(declare-fun zeroValueAfter!34 () V!24277)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24277)

(declare-datatypes ((Unit!27890 0))(
  ( (Unit!27891) )
))
(declare-fun lt!366308 () Unit!27890)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!380 (array!45088 array!45090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24277 V!24277 V!24277 V!24277 (_ BitVec 32) Int) Unit!27890)

(assert (=> b!817544 (= lt!366308 (lemmaNoChangeToArrayThenSameMapNoExtras!380 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2264 (array!45088 array!45090 (_ BitVec 32) (_ BitVec 32) V!24277 V!24277 (_ BitVec 32) Int) ListLongMap!8405)

(assert (=> b!817544 (= lt!366307 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817544 (= lt!366306 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817545 () Bool)

(assert (=> b!817545 (= e!453719 (and e!453718 mapRes!23278))))

(declare-fun condMapEmpty!23278 () Bool)

(declare-fun mapDefault!23278 () ValueCell!6813)

(assert (=> b!817545 (= condMapEmpty!23278 (= (arr!21597 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6813)) mapDefault!23278)))))

(assert (= (and start!70414 res!558138) b!817542))

(assert (= (and b!817542 res!558139) b!817543))

(assert (= (and b!817543 res!558141) b!817539))

(assert (= (and b!817539 res!558140) b!817544))

(assert (= (and b!817545 condMapEmpty!23278) mapIsEmpty!23278))

(assert (= (and b!817545 (not condMapEmpty!23278)) mapNonEmpty!23278))

(get-info :version)

(assert (= (and mapNonEmpty!23278 ((_ is ValueCellFull!6813) mapValue!23278)) b!817541))

(assert (= (and b!817545 ((_ is ValueCellFull!6813) mapDefault!23278)) b!817540))

(assert (= start!70414 b!817545))

(declare-fun m!759177 () Bool)

(assert (=> b!817544 m!759177))

(declare-fun m!759179 () Bool)

(assert (=> b!817544 m!759179))

(declare-fun m!759181 () Bool)

(assert (=> b!817544 m!759181))

(declare-fun m!759183 () Bool)

(assert (=> b!817543 m!759183))

(declare-fun m!759185 () Bool)

(assert (=> mapNonEmpty!23278 m!759185))

(declare-fun m!759187 () Bool)

(assert (=> b!817539 m!759187))

(declare-fun m!759189 () Bool)

(assert (=> start!70414 m!759189))

(declare-fun m!759191 () Bool)

(assert (=> start!70414 m!759191))

(declare-fun m!759193 () Bool)

(assert (=> start!70414 m!759193))

(check-sat (not b!817539) (not b_next!12747) b_and!21577 (not start!70414) (not b!817543) tp_is_empty!14457 (not mapNonEmpty!23278) (not b!817544))
(check-sat b_and!21577 (not b_next!12747))
(get-model)

(declare-fun d!104505 () Bool)

(assert (=> d!104505 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70414 d!104505))

(declare-fun d!104507 () Bool)

(assert (=> d!104507 (= (array_inv!17247 _keys!976) (bvsge (size!22017 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70414 d!104507))

(declare-fun d!104509 () Bool)

(assert (=> d!104509 (= (array_inv!17248 _values!788) (bvsge (size!22018 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70414 d!104509))

(declare-fun bm!35595 () Bool)

(declare-fun call!35598 () Bool)

(declare-fun c!88978 () Bool)

(assert (=> bm!35595 (= call!35598 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88978 (Cons!15433 (select (arr!21596 _keys!976) #b00000000000000000000000000000000) Nil!15434) Nil!15434)))))

(declare-fun d!104511 () Bool)

(declare-fun res!558162 () Bool)

(declare-fun e!453748 () Bool)

(assert (=> d!104511 (=> res!558162 e!453748)))

(assert (=> d!104511 (= res!558162 (bvsge #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> d!104511 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15434) e!453748)))

(declare-fun b!817577 () Bool)

(declare-fun e!453746 () Bool)

(assert (=> b!817577 (= e!453746 call!35598)))

(declare-fun b!817578 () Bool)

(declare-fun e!453749 () Bool)

(assert (=> b!817578 (= e!453748 e!453749)))

(declare-fun res!558160 () Bool)

(assert (=> b!817578 (=> (not res!558160) (not e!453749))))

(declare-fun e!453747 () Bool)

(assert (=> b!817578 (= res!558160 (not e!453747))))

(declare-fun res!558161 () Bool)

(assert (=> b!817578 (=> (not res!558161) (not e!453747))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!817578 (= res!558161 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817579 () Bool)

(declare-fun contains!4155 (List!15437 (_ BitVec 64)) Bool)

(assert (=> b!817579 (= e!453747 (contains!4155 Nil!15434 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817580 () Bool)

(assert (=> b!817580 (= e!453749 e!453746)))

(assert (=> b!817580 (= c!88978 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817581 () Bool)

(assert (=> b!817581 (= e!453746 call!35598)))

(assert (= (and d!104511 (not res!558162)) b!817578))

(assert (= (and b!817578 res!558161) b!817579))

(assert (= (and b!817578 res!558160) b!817580))

(assert (= (and b!817580 c!88978) b!817581))

(assert (= (and b!817580 (not c!88978)) b!817577))

(assert (= (or b!817581 b!817577) bm!35595))

(declare-fun m!759213 () Bool)

(assert (=> bm!35595 m!759213))

(declare-fun m!759215 () Bool)

(assert (=> bm!35595 m!759215))

(assert (=> b!817578 m!759213))

(assert (=> b!817578 m!759213))

(declare-fun m!759217 () Bool)

(assert (=> b!817578 m!759217))

(assert (=> b!817579 m!759213))

(assert (=> b!817579 m!759213))

(declare-fun m!759219 () Bool)

(assert (=> b!817579 m!759219))

(assert (=> b!817580 m!759213))

(assert (=> b!817580 m!759213))

(assert (=> b!817580 m!759217))

(assert (=> b!817539 d!104511))

(declare-fun d!104513 () Bool)

(assert (=> d!104513 (= (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366320 () Unit!27890)

(declare-fun choose!1399 (array!45088 array!45090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24277 V!24277 V!24277 V!24277 (_ BitVec 32) Int) Unit!27890)

(assert (=> d!104513 (= lt!366320 (choose!1399 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104513 (validMask!0 mask!1312)))

(assert (=> d!104513 (= (lemmaNoChangeToArrayThenSameMapNoExtras!380 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366320)))

(declare-fun bs!22775 () Bool)

(assert (= bs!22775 d!104513))

(assert (=> bs!22775 m!759181))

(assert (=> bs!22775 m!759179))

(declare-fun m!759221 () Bool)

(assert (=> bs!22775 m!759221))

(assert (=> bs!22775 m!759189))

(assert (=> b!817544 d!104513))

(declare-fun d!104515 () Bool)

(declare-fun e!453765 () Bool)

(assert (=> d!104515 e!453765))

(declare-fun res!558174 () Bool)

(assert (=> d!104515 (=> (not res!558174) (not e!453765))))

(declare-fun lt!366340 () ListLongMap!8405)

(declare-fun contains!4156 (ListLongMap!8405 (_ BitVec 64)) Bool)

(assert (=> d!104515 (= res!558174 (not (contains!4156 lt!366340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!453768 () ListLongMap!8405)

(assert (=> d!104515 (= lt!366340 e!453768)))

(declare-fun c!88987 () Bool)

(assert (=> d!104515 (= c!88987 (bvsge #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> d!104515 (validMask!0 mask!1312)))

(assert (=> d!104515 (= (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366340)))

(declare-fun b!817606 () Bool)

(declare-fun e!453769 () ListLongMap!8405)

(declare-fun call!35601 () ListLongMap!8405)

(assert (=> b!817606 (= e!453769 call!35601)))

(declare-fun b!817607 () Bool)

(declare-fun e!453766 () Bool)

(assert (=> b!817607 (= e!453766 (= lt!366340 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!817608 () Bool)

(declare-fun e!453764 () Bool)

(declare-fun e!453770 () Bool)

(assert (=> b!817608 (= e!453764 e!453770)))

(assert (=> b!817608 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun res!558171 () Bool)

(assert (=> b!817608 (= res!558171 (contains!4156 lt!366340 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!817608 (=> (not res!558171) (not e!453770))))

(declare-fun b!817609 () Bool)

(assert (=> b!817609 (= e!453768 (ListLongMap!8406 Nil!15435))))

(declare-fun bm!35598 () Bool)

(assert (=> bm!35598 (= call!35601 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!817610 () Bool)

(declare-fun isEmpty!639 (ListLongMap!8405) Bool)

(assert (=> b!817610 (= e!453766 (isEmpty!639 lt!366340))))

(declare-fun b!817611 () Bool)

(declare-fun e!453767 () Bool)

(assert (=> b!817611 (= e!453767 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!817611 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!817612 () Bool)

(assert (=> b!817612 (= e!453764 e!453766)))

(declare-fun c!88990 () Bool)

(assert (=> b!817612 (= c!88990 (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun b!817613 () Bool)

(assert (=> b!817613 (= e!453768 e!453769)))

(declare-fun c!88988 () Bool)

(assert (=> b!817613 (= c!88988 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817614 () Bool)

(declare-fun res!558172 () Bool)

(assert (=> b!817614 (=> (not res!558172) (not e!453765))))

(assert (=> b!817614 (= res!558172 (not (contains!4156 lt!366340 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!817615 () Bool)

(declare-fun lt!366338 () Unit!27890)

(declare-fun lt!366339 () Unit!27890)

(assert (=> b!817615 (= lt!366338 lt!366339)))

(declare-fun lt!366336 () (_ BitVec 64))

(declare-fun lt!366335 () ListLongMap!8405)

(declare-fun lt!366337 () V!24277)

(declare-fun lt!366341 () (_ BitVec 64))

(declare-fun +!1784 (ListLongMap!8405 tuple2!9568) ListLongMap!8405)

(assert (=> b!817615 (not (contains!4156 (+!1784 lt!366335 (tuple2!9569 lt!366336 lt!366337)) lt!366341))))

(declare-fun addStillNotContains!179 (ListLongMap!8405 (_ BitVec 64) V!24277 (_ BitVec 64)) Unit!27890)

(assert (=> b!817615 (= lt!366339 (addStillNotContains!179 lt!366335 lt!366336 lt!366337 lt!366341))))

(assert (=> b!817615 (= lt!366341 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11552 (ValueCell!6813 V!24277) V!24277)

(declare-fun dynLambda!962 (Int (_ BitVec 64)) V!24277)

(assert (=> b!817615 (= lt!366337 (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!817615 (= lt!366336 (select (arr!21596 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!817615 (= lt!366335 call!35601)))

(assert (=> b!817615 (= e!453769 (+!1784 call!35601 (tuple2!9569 (select (arr!21596 _keys!976) #b00000000000000000000000000000000) (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!817616 () Bool)

(assert (=> b!817616 (= e!453765 e!453764)))

(declare-fun c!88989 () Bool)

(assert (=> b!817616 (= c!88989 e!453767)))

(declare-fun res!558173 () Bool)

(assert (=> b!817616 (=> (not res!558173) (not e!453767))))

(assert (=> b!817616 (= res!558173 (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun b!817617 () Bool)

(assert (=> b!817617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> b!817617 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22018 _values!788)))))

(declare-fun apply!352 (ListLongMap!8405 (_ BitVec 64)) V!24277)

(assert (=> b!817617 (= e!453770 (= (apply!352 lt!366340 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)) (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!104515 c!88987) b!817609))

(assert (= (and d!104515 (not c!88987)) b!817613))

(assert (= (and b!817613 c!88988) b!817615))

(assert (= (and b!817613 (not c!88988)) b!817606))

(assert (= (or b!817615 b!817606) bm!35598))

(assert (= (and d!104515 res!558174) b!817614))

(assert (= (and b!817614 res!558172) b!817616))

(assert (= (and b!817616 res!558173) b!817611))

(assert (= (and b!817616 c!88989) b!817608))

(assert (= (and b!817616 (not c!88989)) b!817612))

(assert (= (and b!817608 res!558171) b!817617))

(assert (= (and b!817612 c!88990) b!817607))

(assert (= (and b!817612 (not c!88990)) b!817610))

(declare-fun b_lambda!10941 () Bool)

(assert (=> (not b_lambda!10941) (not b!817615)))

(declare-fun t!21775 () Bool)

(declare-fun tb!4193 () Bool)

(assert (=> (and start!70414 (= defaultEntry!796 defaultEntry!796) t!21775) tb!4193))

(declare-fun result!7903 () Bool)

(assert (=> tb!4193 (= result!7903 tp_is_empty!14457)))

(assert (=> b!817615 t!21775))

(declare-fun b_and!21581 () Bool)

(assert (= b_and!21577 (and (=> t!21775 result!7903) b_and!21581)))

(declare-fun b_lambda!10943 () Bool)

(assert (=> (not b_lambda!10943) (not b!817617)))

(assert (=> b!817617 t!21775))

(declare-fun b_and!21583 () Bool)

(assert (= b_and!21581 (and (=> t!21775 result!7903) b_and!21583)))

(assert (=> b!817611 m!759213))

(assert (=> b!817611 m!759213))

(assert (=> b!817611 m!759217))

(assert (=> b!817617 m!759213))

(declare-fun m!759223 () Bool)

(assert (=> b!817617 m!759223))

(declare-fun m!759225 () Bool)

(assert (=> b!817617 m!759225))

(declare-fun m!759227 () Bool)

(assert (=> b!817617 m!759227))

(assert (=> b!817617 m!759227))

(assert (=> b!817617 m!759225))

(declare-fun m!759229 () Bool)

(assert (=> b!817617 m!759229))

(assert (=> b!817617 m!759213))

(declare-fun m!759231 () Bool)

(assert (=> b!817614 m!759231))

(assert (=> b!817608 m!759213))

(assert (=> b!817608 m!759213))

(declare-fun m!759233 () Bool)

(assert (=> b!817608 m!759233))

(declare-fun m!759235 () Bool)

(assert (=> b!817615 m!759235))

(assert (=> b!817615 m!759235))

(declare-fun m!759237 () Bool)

(assert (=> b!817615 m!759237))

(assert (=> b!817615 m!759227))

(declare-fun m!759239 () Bool)

(assert (=> b!817615 m!759239))

(assert (=> b!817615 m!759227))

(assert (=> b!817615 m!759225))

(assert (=> b!817615 m!759229))

(assert (=> b!817615 m!759213))

(assert (=> b!817615 m!759225))

(declare-fun m!759241 () Bool)

(assert (=> b!817615 m!759241))

(declare-fun m!759243 () Bool)

(assert (=> d!104515 m!759243))

(assert (=> d!104515 m!759189))

(assert (=> b!817613 m!759213))

(assert (=> b!817613 m!759213))

(assert (=> b!817613 m!759217))

(declare-fun m!759245 () Bool)

(assert (=> b!817610 m!759245))

(declare-fun m!759247 () Bool)

(assert (=> b!817607 m!759247))

(assert (=> bm!35598 m!759247))

(assert (=> b!817544 d!104515))

(declare-fun d!104517 () Bool)

(declare-fun e!453772 () Bool)

(assert (=> d!104517 e!453772))

(declare-fun res!558178 () Bool)

(assert (=> d!104517 (=> (not res!558178) (not e!453772))))

(declare-fun lt!366347 () ListLongMap!8405)

(assert (=> d!104517 (= res!558178 (not (contains!4156 lt!366347 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!453775 () ListLongMap!8405)

(assert (=> d!104517 (= lt!366347 e!453775)))

(declare-fun c!88991 () Bool)

(assert (=> d!104517 (= c!88991 (bvsge #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> d!104517 (validMask!0 mask!1312)))

(assert (=> d!104517 (= (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366347)))

(declare-fun b!817620 () Bool)

(declare-fun e!453776 () ListLongMap!8405)

(declare-fun call!35602 () ListLongMap!8405)

(assert (=> b!817620 (= e!453776 call!35602)))

(declare-fun b!817621 () Bool)

(declare-fun e!453773 () Bool)

(assert (=> b!817621 (= e!453773 (= lt!366347 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!817622 () Bool)

(declare-fun e!453771 () Bool)

(declare-fun e!453777 () Bool)

(assert (=> b!817622 (= e!453771 e!453777)))

(assert (=> b!817622 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun res!558175 () Bool)

(assert (=> b!817622 (= res!558175 (contains!4156 lt!366347 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!817622 (=> (not res!558175) (not e!453777))))

(declare-fun b!817623 () Bool)

(assert (=> b!817623 (= e!453775 (ListLongMap!8406 Nil!15435))))

(declare-fun bm!35599 () Bool)

(assert (=> bm!35599 (= call!35602 (getCurrentListMapNoExtraKeys!2264 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!817624 () Bool)

(assert (=> b!817624 (= e!453773 (isEmpty!639 lt!366347))))

(declare-fun b!817625 () Bool)

(declare-fun e!453774 () Bool)

(assert (=> b!817625 (= e!453774 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!817625 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!817626 () Bool)

(assert (=> b!817626 (= e!453771 e!453773)))

(declare-fun c!88994 () Bool)

(assert (=> b!817626 (= c!88994 (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun b!817627 () Bool)

(assert (=> b!817627 (= e!453775 e!453776)))

(declare-fun c!88992 () Bool)

(assert (=> b!817627 (= c!88992 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817628 () Bool)

(declare-fun res!558176 () Bool)

(assert (=> b!817628 (=> (not res!558176) (not e!453772))))

(assert (=> b!817628 (= res!558176 (not (contains!4156 lt!366347 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!817629 () Bool)

(declare-fun lt!366345 () Unit!27890)

(declare-fun lt!366346 () Unit!27890)

(assert (=> b!817629 (= lt!366345 lt!366346)))

(declare-fun lt!366343 () (_ BitVec 64))

(declare-fun lt!366344 () V!24277)

(declare-fun lt!366342 () ListLongMap!8405)

(declare-fun lt!366348 () (_ BitVec 64))

(assert (=> b!817629 (not (contains!4156 (+!1784 lt!366342 (tuple2!9569 lt!366343 lt!366344)) lt!366348))))

(assert (=> b!817629 (= lt!366346 (addStillNotContains!179 lt!366342 lt!366343 lt!366344 lt!366348))))

(assert (=> b!817629 (= lt!366348 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!817629 (= lt!366344 (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!817629 (= lt!366343 (select (arr!21596 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!817629 (= lt!366342 call!35602)))

(assert (=> b!817629 (= e!453776 (+!1784 call!35602 (tuple2!9569 (select (arr!21596 _keys!976) #b00000000000000000000000000000000) (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!817630 () Bool)

(assert (=> b!817630 (= e!453772 e!453771)))

(declare-fun c!88993 () Bool)

(assert (=> b!817630 (= c!88993 e!453774)))

(declare-fun res!558177 () Bool)

(assert (=> b!817630 (=> (not res!558177) (not e!453774))))

(assert (=> b!817630 (= res!558177 (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(declare-fun b!817631 () Bool)

(assert (=> b!817631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> b!817631 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22018 _values!788)))))

(assert (=> b!817631 (= e!453777 (= (apply!352 lt!366347 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)) (get!11552 (select (arr!21597 _values!788) #b00000000000000000000000000000000) (dynLambda!962 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!104517 c!88991) b!817623))

(assert (= (and d!104517 (not c!88991)) b!817627))

(assert (= (and b!817627 c!88992) b!817629))

(assert (= (and b!817627 (not c!88992)) b!817620))

(assert (= (or b!817629 b!817620) bm!35599))

(assert (= (and d!104517 res!558178) b!817628))

(assert (= (and b!817628 res!558176) b!817630))

(assert (= (and b!817630 res!558177) b!817625))

(assert (= (and b!817630 c!88993) b!817622))

(assert (= (and b!817630 (not c!88993)) b!817626))

(assert (= (and b!817622 res!558175) b!817631))

(assert (= (and b!817626 c!88994) b!817621))

(assert (= (and b!817626 (not c!88994)) b!817624))

(declare-fun b_lambda!10945 () Bool)

(assert (=> (not b_lambda!10945) (not b!817629)))

(assert (=> b!817629 t!21775))

(declare-fun b_and!21585 () Bool)

(assert (= b_and!21583 (and (=> t!21775 result!7903) b_and!21585)))

(declare-fun b_lambda!10947 () Bool)

(assert (=> (not b_lambda!10947) (not b!817631)))

(assert (=> b!817631 t!21775))

(declare-fun b_and!21587 () Bool)

(assert (= b_and!21585 (and (=> t!21775 result!7903) b_and!21587)))

(assert (=> b!817625 m!759213))

(assert (=> b!817625 m!759213))

(assert (=> b!817625 m!759217))

(assert (=> b!817631 m!759213))

(declare-fun m!759249 () Bool)

(assert (=> b!817631 m!759249))

(assert (=> b!817631 m!759225))

(assert (=> b!817631 m!759227))

(assert (=> b!817631 m!759227))

(assert (=> b!817631 m!759225))

(assert (=> b!817631 m!759229))

(assert (=> b!817631 m!759213))

(declare-fun m!759251 () Bool)

(assert (=> b!817628 m!759251))

(assert (=> b!817622 m!759213))

(assert (=> b!817622 m!759213))

(declare-fun m!759253 () Bool)

(assert (=> b!817622 m!759253))

(declare-fun m!759255 () Bool)

(assert (=> b!817629 m!759255))

(assert (=> b!817629 m!759255))

(declare-fun m!759257 () Bool)

(assert (=> b!817629 m!759257))

(assert (=> b!817629 m!759227))

(declare-fun m!759259 () Bool)

(assert (=> b!817629 m!759259))

(assert (=> b!817629 m!759227))

(assert (=> b!817629 m!759225))

(assert (=> b!817629 m!759229))

(assert (=> b!817629 m!759213))

(assert (=> b!817629 m!759225))

(declare-fun m!759261 () Bool)

(assert (=> b!817629 m!759261))

(declare-fun m!759263 () Bool)

(assert (=> d!104517 m!759263))

(assert (=> d!104517 m!759189))

(assert (=> b!817627 m!759213))

(assert (=> b!817627 m!759213))

(assert (=> b!817627 m!759217))

(declare-fun m!759265 () Bool)

(assert (=> b!817624 m!759265))

(declare-fun m!759267 () Bool)

(assert (=> b!817621 m!759267))

(assert (=> bm!35599 m!759267))

(assert (=> b!817544 d!104517))

(declare-fun b!817640 () Bool)

(declare-fun e!453784 () Bool)

(declare-fun e!453785 () Bool)

(assert (=> b!817640 (= e!453784 e!453785)))

(declare-fun c!88997 () Bool)

(assert (=> b!817640 (= c!88997 (validKeyInArray!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!817641 () Bool)

(declare-fun call!35605 () Bool)

(assert (=> b!817641 (= e!453785 call!35605)))

(declare-fun b!817643 () Bool)

(declare-fun e!453786 () Bool)

(assert (=> b!817643 (= e!453785 e!453786)))

(declare-fun lt!366355 () (_ BitVec 64))

(assert (=> b!817643 (= lt!366355 (select (arr!21596 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366356 () Unit!27890)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45088 (_ BitVec 64) (_ BitVec 32)) Unit!27890)

(assert (=> b!817643 (= lt!366356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!366355 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!817643 (arrayContainsKey!0 _keys!976 lt!366355 #b00000000000000000000000000000000)))

(declare-fun lt!366357 () Unit!27890)

(assert (=> b!817643 (= lt!366357 lt!366356)))

(declare-fun res!558183 () Bool)

(declare-datatypes ((SeekEntryResult!8713 0))(
  ( (MissingZero!8713 (index!37222 (_ BitVec 32))) (Found!8713 (index!37223 (_ BitVec 32))) (Intermediate!8713 (undefined!9525 Bool) (index!37224 (_ BitVec 32)) (x!68851 (_ BitVec 32))) (Undefined!8713) (MissingVacant!8713 (index!37225 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45088 (_ BitVec 32)) SeekEntryResult!8713)

(assert (=> b!817643 (= res!558183 (= (seekEntryOrOpen!0 (select (arr!21596 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8713 #b00000000000000000000000000000000)))))

(assert (=> b!817643 (=> (not res!558183) (not e!453786))))

(declare-fun bm!35602 () Bool)

(assert (=> bm!35602 (= call!35605 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!104519 () Bool)

(declare-fun res!558184 () Bool)

(assert (=> d!104519 (=> res!558184 e!453784)))

(assert (=> d!104519 (= res!558184 (bvsge #b00000000000000000000000000000000 (size!22017 _keys!976)))))

(assert (=> d!104519 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!453784)))

(declare-fun b!817642 () Bool)

(assert (=> b!817642 (= e!453786 call!35605)))

(assert (= (and d!104519 (not res!558184)) b!817640))

(assert (= (and b!817640 c!88997) b!817643))

(assert (= (and b!817640 (not c!88997)) b!817641))

(assert (= (and b!817643 res!558183) b!817642))

(assert (= (or b!817642 b!817641) bm!35602))

(assert (=> b!817640 m!759213))

(assert (=> b!817640 m!759213))

(assert (=> b!817640 m!759217))

(assert (=> b!817643 m!759213))

(declare-fun m!759269 () Bool)

(assert (=> b!817643 m!759269))

(declare-fun m!759271 () Bool)

(assert (=> b!817643 m!759271))

(assert (=> b!817643 m!759213))

(declare-fun m!759273 () Bool)

(assert (=> b!817643 m!759273))

(declare-fun m!759275 () Bool)

(assert (=> bm!35602 m!759275))

(assert (=> b!817543 d!104519))

(declare-fun mapIsEmpty!23284 () Bool)

(declare-fun mapRes!23284 () Bool)

(assert (=> mapIsEmpty!23284 mapRes!23284))

(declare-fun b!817651 () Bool)

(declare-fun e!453792 () Bool)

(assert (=> b!817651 (= e!453792 tp_is_empty!14457)))

(declare-fun mapNonEmpty!23284 () Bool)

(declare-fun tp!44977 () Bool)

(declare-fun e!453791 () Bool)

(assert (=> mapNonEmpty!23284 (= mapRes!23284 (and tp!44977 e!453791))))

(declare-fun mapValue!23284 () ValueCell!6813)

(declare-fun mapRest!23284 () (Array (_ BitVec 32) ValueCell!6813))

(declare-fun mapKey!23284 () (_ BitVec 32))

(assert (=> mapNonEmpty!23284 (= mapRest!23278 (store mapRest!23284 mapKey!23284 mapValue!23284))))

(declare-fun condMapEmpty!23284 () Bool)

(declare-fun mapDefault!23284 () ValueCell!6813)

(assert (=> mapNonEmpty!23278 (= condMapEmpty!23284 (= mapRest!23278 ((as const (Array (_ BitVec 32) ValueCell!6813)) mapDefault!23284)))))

(assert (=> mapNonEmpty!23278 (= tp!44968 (and e!453792 mapRes!23284))))

(declare-fun b!817650 () Bool)

(assert (=> b!817650 (= e!453791 tp_is_empty!14457)))

(assert (= (and mapNonEmpty!23278 condMapEmpty!23284) mapIsEmpty!23284))

(assert (= (and mapNonEmpty!23278 (not condMapEmpty!23284)) mapNonEmpty!23284))

(assert (= (and mapNonEmpty!23284 ((_ is ValueCellFull!6813) mapValue!23284)) b!817650))

(assert (= (and mapNonEmpty!23278 ((_ is ValueCellFull!6813) mapDefault!23284)) b!817651))

(declare-fun m!759277 () Bool)

(assert (=> mapNonEmpty!23284 m!759277))

(declare-fun b_lambda!10949 () Bool)

(assert (= b_lambda!10945 (or (and start!70414 b_free!12747) b_lambda!10949)))

(declare-fun b_lambda!10951 () Bool)

(assert (= b_lambda!10943 (or (and start!70414 b_free!12747) b_lambda!10951)))

(declare-fun b_lambda!10953 () Bool)

(assert (= b_lambda!10947 (or (and start!70414 b_free!12747) b_lambda!10953)))

(declare-fun b_lambda!10955 () Bool)

(assert (= b_lambda!10941 (or (and start!70414 b_free!12747) b_lambda!10955)))

(check-sat (not bm!35602) (not b_next!12747) (not bm!35595) (not b!817640) (not b!817607) (not b!817617) (not b!817643) tp_is_empty!14457 (not bm!35598) (not b!817613) (not b!817611) (not b!817621) (not b!817629) (not b!817615) (not b!817614) (not b!817610) (not mapNonEmpty!23284) (not b_lambda!10951) (not b_lambda!10955) (not d!104517) (not b!817608) (not b!817627) b_and!21587 (not b!817622) (not b!817631) (not b_lambda!10953) (not b!817580) (not b!817628) (not b!817579) (not b!817625) (not b_lambda!10949) (not b!817624) (not b!817578) (not d!104515) (not bm!35599) (not d!104513))
(check-sat b_and!21587 (not b_next!12747))
