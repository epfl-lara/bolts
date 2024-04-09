; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70482 () Bool)

(assert start!70482)

(declare-fun b_free!12801 () Bool)

(declare-fun b_next!12801 () Bool)

(assert (=> start!70482 (= b_free!12801 (not b_next!12801))))

(declare-fun tp!45132 () Bool)

(declare-fun b_and!21639 () Bool)

(assert (=> start!70482 (= tp!45132 b_and!21639)))

(declare-fun b!818268 () Bool)

(declare-fun e!454259 () Bool)

(declare-datatypes ((array!45194 0))(
  ( (array!45195 (arr!21648 (Array (_ BitVec 32) (_ BitVec 64))) (size!22069 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45194)

(assert (=> b!818268 (= e!454259 (bvsle #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-datatypes ((V!24349 0))(
  ( (V!24350 (val!7303 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24349)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24349)

(declare-datatypes ((ValueCell!6840 0))(
  ( (ValueCellFull!6840 (v!9728 V!24349)) (EmptyCell!6840) )
))
(declare-datatypes ((array!45196 0))(
  ( (array!45197 (arr!21649 (Array (_ BitVec 32) ValueCell!6840)) (size!22070 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45196)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9612 0))(
  ( (tuple2!9613 (_1!4816 (_ BitVec 64)) (_2!4816 V!24349)) )
))
(declare-datatypes ((List!15477 0))(
  ( (Nil!15474) (Cons!15473 (h!16602 tuple2!9612) (t!21812 List!15477)) )
))
(declare-datatypes ((ListLongMap!8449 0))(
  ( (ListLongMap!8450 (toList!4240 List!15477)) )
))
(declare-fun lt!366666 () ListLongMap!8449)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2400 (array!45194 array!45196 (_ BitVec 32) (_ BitVec 32) V!24349 V!24349 (_ BitVec 32) Int) ListLongMap!8449)

(assert (=> b!818268 (= lt!366666 (getCurrentListMap!2400 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818270 () Bool)

(declare-fun res!558574 () Bool)

(declare-fun e!454260 () Bool)

(assert (=> b!818270 (=> (not res!558574) (not e!454260))))

(declare-datatypes ((List!15478 0))(
  ( (Nil!15475) (Cons!15474 (h!16603 (_ BitVec 64)) (t!21813 List!15478)) )
))
(declare-fun arrayNoDuplicates!0 (array!45194 (_ BitVec 32) List!15478) Bool)

(assert (=> b!818270 (= res!558574 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15475))))

(declare-fun mapNonEmpty!23362 () Bool)

(declare-fun mapRes!23362 () Bool)

(declare-fun tp!45133 () Bool)

(declare-fun e!454255 () Bool)

(assert (=> mapNonEmpty!23362 (= mapRes!23362 (and tp!45133 e!454255))))

(declare-fun mapValue!23362 () ValueCell!6840)

(declare-fun mapKey!23362 () (_ BitVec 32))

(declare-fun mapRest!23362 () (Array (_ BitVec 32) ValueCell!6840))

(assert (=> mapNonEmpty!23362 (= (arr!21649 _values!788) (store mapRest!23362 mapKey!23362 mapValue!23362))))

(declare-fun b!818271 () Bool)

(declare-fun tp_is_empty!14511 () Bool)

(assert (=> b!818271 (= e!454255 tp_is_empty!14511)))

(declare-fun b!818272 () Bool)

(assert (=> b!818272 (= e!454260 (not e!454259))))

(declare-fun res!558570 () Bool)

(assert (=> b!818272 (=> res!558570 e!454259)))

(assert (=> b!818272 (= res!558570 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366667 () ListLongMap!8449)

(declare-fun lt!366669 () ListLongMap!8449)

(assert (=> b!818272 (= lt!366667 lt!366669)))

(declare-fun zeroValueAfter!34 () V!24349)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27928 0))(
  ( (Unit!27929) )
))
(declare-fun lt!366668 () Unit!27928)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!399 (array!45194 array!45196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24349 V!24349 V!24349 V!24349 (_ BitVec 32) Int) Unit!27928)

(assert (=> b!818272 (= lt!366668 (lemmaNoChangeToArrayThenSameMapNoExtras!399 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2283 (array!45194 array!45196 (_ BitVec 32) (_ BitVec 32) V!24349 V!24349 (_ BitVec 32) Int) ListLongMap!8449)

(assert (=> b!818272 (= lt!366669 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818272 (= lt!366667 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23362 () Bool)

(assert (=> mapIsEmpty!23362 mapRes!23362))

(declare-fun b!818273 () Bool)

(declare-fun res!558573 () Bool)

(assert (=> b!818273 (=> (not res!558573) (not e!454260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45194 (_ BitVec 32)) Bool)

(assert (=> b!818273 (= res!558573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818274 () Bool)

(declare-fun res!558571 () Bool)

(assert (=> b!818274 (=> (not res!558571) (not e!454260))))

(assert (=> b!818274 (= res!558571 (and (= (size!22070 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22069 _keys!976) (size!22070 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818275 () Bool)

(declare-fun e!454257 () Bool)

(declare-fun e!454256 () Bool)

(assert (=> b!818275 (= e!454257 (and e!454256 mapRes!23362))))

(declare-fun condMapEmpty!23362 () Bool)

(declare-fun mapDefault!23362 () ValueCell!6840)

(assert (=> b!818275 (= condMapEmpty!23362 (= (arr!21649 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6840)) mapDefault!23362)))))

(declare-fun b!818269 () Bool)

(assert (=> b!818269 (= e!454256 tp_is_empty!14511)))

(declare-fun res!558572 () Bool)

(assert (=> start!70482 (=> (not res!558572) (not e!454260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70482 (= res!558572 (validMask!0 mask!1312))))

(assert (=> start!70482 e!454260))

(assert (=> start!70482 tp_is_empty!14511))

(declare-fun array_inv!17281 (array!45194) Bool)

(assert (=> start!70482 (array_inv!17281 _keys!976)))

(assert (=> start!70482 true))

(declare-fun array_inv!17282 (array!45196) Bool)

(assert (=> start!70482 (and (array_inv!17282 _values!788) e!454257)))

(assert (=> start!70482 tp!45132))

(assert (= (and start!70482 res!558572) b!818274))

(assert (= (and b!818274 res!558571) b!818273))

(assert (= (and b!818273 res!558573) b!818270))

(assert (= (and b!818270 res!558574) b!818272))

(assert (= (and b!818272 (not res!558570)) b!818268))

(assert (= (and b!818275 condMapEmpty!23362) mapIsEmpty!23362))

(assert (= (and b!818275 (not condMapEmpty!23362)) mapNonEmpty!23362))

(get-info :version)

(assert (= (and mapNonEmpty!23362 ((_ is ValueCellFull!6840) mapValue!23362)) b!818271))

(assert (= (and b!818275 ((_ is ValueCellFull!6840) mapDefault!23362)) b!818269))

(assert (= start!70482 b!818275))

(declare-fun m!759779 () Bool)

(assert (=> b!818268 m!759779))

(declare-fun m!759781 () Bool)

(assert (=> b!818273 m!759781))

(declare-fun m!759783 () Bool)

(assert (=> start!70482 m!759783))

(declare-fun m!759785 () Bool)

(assert (=> start!70482 m!759785))

(declare-fun m!759787 () Bool)

(assert (=> start!70482 m!759787))

(declare-fun m!759789 () Bool)

(assert (=> mapNonEmpty!23362 m!759789))

(declare-fun m!759791 () Bool)

(assert (=> b!818270 m!759791))

(declare-fun m!759793 () Bool)

(assert (=> b!818272 m!759793))

(declare-fun m!759795 () Bool)

(assert (=> b!818272 m!759795))

(declare-fun m!759797 () Bool)

(assert (=> b!818272 m!759797))

(check-sat (not b_next!12801) (not b!818270) (not start!70482) tp_is_empty!14511 (not b!818272) b_and!21639 (not b!818273) (not mapNonEmpty!23362) (not b!818268))
(check-sat b_and!21639 (not b_next!12801))
(get-model)

(declare-fun b!818342 () Bool)

(declare-fun e!454312 () ListLongMap!8449)

(declare-fun call!35621 () ListLongMap!8449)

(assert (=> b!818342 (= e!454312 call!35621)))

(declare-fun b!818343 () Bool)

(declare-fun e!454317 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!818343 (= e!454317 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818344 () Bool)

(declare-fun e!454309 () Bool)

(declare-fun e!454306 () Bool)

(assert (=> b!818344 (= e!454309 e!454306)))

(declare-fun c!89014 () Bool)

(assert (=> b!818344 (= c!89014 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!818345 () Bool)

(declare-fun c!89015 () Bool)

(assert (=> b!818345 (= c!89015 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!454313 () ListLongMap!8449)

(assert (=> b!818345 (= e!454313 e!454312)))

(declare-fun b!818346 () Bool)

(declare-fun e!454316 () ListLongMap!8449)

(assert (=> b!818346 (= e!454316 e!454313)))

(declare-fun c!89012 () Bool)

(assert (=> b!818346 (= c!89012 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35617 () Bool)

(declare-fun call!35626 () ListLongMap!8449)

(declare-fun call!35624 () ListLongMap!8449)

(assert (=> bm!35617 (= call!35626 call!35624)))

(declare-fun b!818347 () Bool)

(declare-fun e!454308 () Bool)

(declare-fun lt!366736 () ListLongMap!8449)

(declare-fun apply!353 (ListLongMap!8449 (_ BitVec 64)) V!24349)

(assert (=> b!818347 (= e!454308 (= (apply!353 lt!366736 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!818348 () Bool)

(declare-fun res!558613 () Bool)

(assert (=> b!818348 (=> (not res!558613) (not e!454309))))

(declare-fun e!454311 () Bool)

(assert (=> b!818348 (= res!558613 e!454311)))

(declare-fun res!558611 () Bool)

(assert (=> b!818348 (=> res!558611 e!454311)))

(declare-fun e!454305 () Bool)

(assert (=> b!818348 (= res!558611 (not e!454305))))

(declare-fun res!558609 () Bool)

(assert (=> b!818348 (=> (not res!558609) (not e!454305))))

(assert (=> b!818348 (= res!558609 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun b!818349 () Bool)

(declare-fun +!1785 (ListLongMap!8449 tuple2!9612) ListLongMap!8449)

(assert (=> b!818349 (= e!454316 (+!1785 call!35624 (tuple2!9613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!818350 () Bool)

(declare-fun e!454314 () Bool)

(assert (=> b!818350 (= e!454306 e!454314)))

(declare-fun res!558614 () Bool)

(declare-fun call!35623 () Bool)

(assert (=> b!818350 (= res!558614 call!35623)))

(assert (=> b!818350 (=> (not res!558614) (not e!454314))))

(declare-fun bm!35618 () Bool)

(declare-fun call!35625 () Bool)

(declare-fun contains!4157 (ListLongMap!8449 (_ BitVec 64)) Bool)

(assert (=> bm!35618 (= call!35625 (contains!4157 lt!366736 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!818351 () Bool)

(declare-fun res!558608 () Bool)

(assert (=> b!818351 (=> (not res!558608) (not e!454309))))

(declare-fun e!454310 () Bool)

(assert (=> b!818351 (= res!558608 e!454310)))

(declare-fun c!89011 () Bool)

(assert (=> b!818351 (= c!89011 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!818352 () Bool)

(declare-fun e!454307 () Bool)

(assert (=> b!818352 (= e!454311 e!454307)))

(declare-fun res!558616 () Bool)

(assert (=> b!818352 (=> (not res!558616) (not e!454307))))

(assert (=> b!818352 (= res!558616 (contains!4157 lt!366736 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!818352 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun b!818353 () Bool)

(assert (=> b!818353 (= e!454313 call!35626)))

(declare-fun b!818354 () Bool)

(assert (=> b!818354 (= e!454306 (not call!35623))))

(declare-fun c!89013 () Bool)

(declare-fun bm!35619 () Bool)

(declare-fun call!35622 () ListLongMap!8449)

(declare-fun call!35620 () ListLongMap!8449)

(assert (=> bm!35619 (= call!35624 (+!1785 (ite c!89013 call!35620 (ite c!89012 call!35622 call!35621)) (ite (or c!89013 c!89012) (tuple2!9613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9613 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!818355 () Bool)

(declare-fun e!454315 () Unit!27928)

(declare-fun lt!366743 () Unit!27928)

(assert (=> b!818355 (= e!454315 lt!366743)))

(declare-fun lt!366734 () ListLongMap!8449)

(assert (=> b!818355 (= lt!366734 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366746 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366726 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366726 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366745 () Unit!27928)

(declare-fun addStillContains!307 (ListLongMap!8449 (_ BitVec 64) V!24349 (_ BitVec 64)) Unit!27928)

(assert (=> b!818355 (= lt!366745 (addStillContains!307 lt!366734 lt!366746 zeroValueBefore!34 lt!366726))))

(assert (=> b!818355 (contains!4157 (+!1785 lt!366734 (tuple2!9613 lt!366746 zeroValueBefore!34)) lt!366726)))

(declare-fun lt!366731 () Unit!27928)

(assert (=> b!818355 (= lt!366731 lt!366745)))

(declare-fun lt!366739 () ListLongMap!8449)

(assert (=> b!818355 (= lt!366739 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366730 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366730 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366733 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366733 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366729 () Unit!27928)

(declare-fun addApplyDifferent!307 (ListLongMap!8449 (_ BitVec 64) V!24349 (_ BitVec 64)) Unit!27928)

(assert (=> b!818355 (= lt!366729 (addApplyDifferent!307 lt!366739 lt!366730 minValue!754 lt!366733))))

(assert (=> b!818355 (= (apply!353 (+!1785 lt!366739 (tuple2!9613 lt!366730 minValue!754)) lt!366733) (apply!353 lt!366739 lt!366733))))

(declare-fun lt!366744 () Unit!27928)

(assert (=> b!818355 (= lt!366744 lt!366729)))

(declare-fun lt!366737 () ListLongMap!8449)

(assert (=> b!818355 (= lt!366737 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366742 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366742 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366735 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366735 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366727 () Unit!27928)

(assert (=> b!818355 (= lt!366727 (addApplyDifferent!307 lt!366737 lt!366742 zeroValueBefore!34 lt!366735))))

(assert (=> b!818355 (= (apply!353 (+!1785 lt!366737 (tuple2!9613 lt!366742 zeroValueBefore!34)) lt!366735) (apply!353 lt!366737 lt!366735))))

(declare-fun lt!366738 () Unit!27928)

(assert (=> b!818355 (= lt!366738 lt!366727)))

(declare-fun lt!366728 () ListLongMap!8449)

(assert (=> b!818355 (= lt!366728 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366747 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366747 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366740 () (_ BitVec 64))

(assert (=> b!818355 (= lt!366740 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!818355 (= lt!366743 (addApplyDifferent!307 lt!366728 lt!366747 minValue!754 lt!366740))))

(assert (=> b!818355 (= (apply!353 (+!1785 lt!366728 (tuple2!9613 lt!366747 minValue!754)) lt!366740) (apply!353 lt!366728 lt!366740))))

(declare-fun d!104539 () Bool)

(assert (=> d!104539 e!454309))

(declare-fun res!558615 () Bool)

(assert (=> d!104539 (=> (not res!558615) (not e!454309))))

(assert (=> d!104539 (= res!558615 (or (bvsge #b00000000000000000000000000000000 (size!22069 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))))

(declare-fun lt!366732 () ListLongMap!8449)

(assert (=> d!104539 (= lt!366736 lt!366732)))

(declare-fun lt!366741 () Unit!27928)

(assert (=> d!104539 (= lt!366741 e!454315)))

(declare-fun c!89010 () Bool)

(assert (=> d!104539 (= c!89010 e!454317)))

(declare-fun res!558612 () Bool)

(assert (=> d!104539 (=> (not res!558612) (not e!454317))))

(assert (=> d!104539 (= res!558612 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> d!104539 (= lt!366732 e!454316)))

(assert (=> d!104539 (= c!89013 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104539 (validMask!0 mask!1312)))

(assert (=> d!104539 (= (getCurrentListMap!2400 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366736)))

(declare-fun bm!35620 () Bool)

(assert (=> bm!35620 (= call!35622 call!35620)))

(declare-fun b!818356 () Bool)

(assert (=> b!818356 (= e!454310 e!454308)))

(declare-fun res!558610 () Bool)

(assert (=> b!818356 (= res!558610 call!35625)))

(assert (=> b!818356 (=> (not res!558610) (not e!454308))))

(declare-fun b!818357 () Bool)

(declare-fun get!11571 (ValueCell!6840 V!24349) V!24349)

(declare-fun dynLambda!963 (Int (_ BitVec 64)) V!24349)

(assert (=> b!818357 (= e!454307 (= (apply!353 lt!366736 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)) (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!818357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22070 _values!788)))))

(assert (=> b!818357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun b!818358 () Bool)

(assert (=> b!818358 (= e!454314 (= (apply!353 lt!366736 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!818359 () Bool)

(assert (=> b!818359 (= e!454310 (not call!35625))))

(declare-fun b!818360 () Bool)

(assert (=> b!818360 (= e!454305 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818361 () Bool)

(assert (=> b!818361 (= e!454312 call!35626)))

(declare-fun bm!35621 () Bool)

(assert (=> bm!35621 (= call!35623 (contains!4157 lt!366736 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35622 () Bool)

(assert (=> bm!35622 (= call!35620 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!35623 () Bool)

(assert (=> bm!35623 (= call!35621 call!35622)))

(declare-fun b!818362 () Bool)

(declare-fun Unit!27930 () Unit!27928)

(assert (=> b!818362 (= e!454315 Unit!27930)))

(assert (= (and d!104539 c!89013) b!818349))

(assert (= (and d!104539 (not c!89013)) b!818346))

(assert (= (and b!818346 c!89012) b!818353))

(assert (= (and b!818346 (not c!89012)) b!818345))

(assert (= (and b!818345 c!89015) b!818361))

(assert (= (and b!818345 (not c!89015)) b!818342))

(assert (= (or b!818361 b!818342) bm!35623))

(assert (= (or b!818353 bm!35623) bm!35620))

(assert (= (or b!818353 b!818361) bm!35617))

(assert (= (or b!818349 bm!35620) bm!35622))

(assert (= (or b!818349 bm!35617) bm!35619))

(assert (= (and d!104539 res!558612) b!818343))

(assert (= (and d!104539 c!89010) b!818355))

(assert (= (and d!104539 (not c!89010)) b!818362))

(assert (= (and d!104539 res!558615) b!818348))

(assert (= (and b!818348 res!558609) b!818360))

(assert (= (and b!818348 (not res!558611)) b!818352))

(assert (= (and b!818352 res!558616) b!818357))

(assert (= (and b!818348 res!558613) b!818351))

(assert (= (and b!818351 c!89011) b!818356))

(assert (= (and b!818351 (not c!89011)) b!818359))

(assert (= (and b!818356 res!558610) b!818347))

(assert (= (or b!818356 b!818359) bm!35618))

(assert (= (and b!818351 res!558608) b!818344))

(assert (= (and b!818344 c!89014) b!818350))

(assert (= (and b!818344 (not c!89014)) b!818354))

(assert (= (and b!818350 res!558614) b!818358))

(assert (= (or b!818350 b!818354) bm!35621))

(declare-fun b_lambda!10957 () Bool)

(assert (=> (not b_lambda!10957) (not b!818357)))

(declare-fun t!21815 () Bool)

(declare-fun tb!4195 () Bool)

(assert (=> (and start!70482 (= defaultEntry!796 defaultEntry!796) t!21815) tb!4195))

(declare-fun result!7909 () Bool)

(assert (=> tb!4195 (= result!7909 tp_is_empty!14511)))

(assert (=> b!818357 t!21815))

(declare-fun b_and!21643 () Bool)

(assert (= b_and!21639 (and (=> t!21815 result!7909) b_and!21643)))

(declare-fun m!759819 () Bool)

(assert (=> bm!35621 m!759819))

(declare-fun m!759821 () Bool)

(assert (=> b!818355 m!759821))

(declare-fun m!759823 () Bool)

(assert (=> b!818355 m!759823))

(declare-fun m!759825 () Bool)

(assert (=> b!818355 m!759825))

(declare-fun m!759827 () Bool)

(assert (=> b!818355 m!759827))

(declare-fun m!759829 () Bool)

(assert (=> b!818355 m!759829))

(declare-fun m!759831 () Bool)

(assert (=> b!818355 m!759831))

(declare-fun m!759833 () Bool)

(assert (=> b!818355 m!759833))

(declare-fun m!759835 () Bool)

(assert (=> b!818355 m!759835))

(assert (=> b!818355 m!759829))

(declare-fun m!759837 () Bool)

(assert (=> b!818355 m!759837))

(assert (=> b!818355 m!759833))

(declare-fun m!759839 () Bool)

(assert (=> b!818355 m!759839))

(declare-fun m!759841 () Bool)

(assert (=> b!818355 m!759841))

(assert (=> b!818355 m!759797))

(declare-fun m!759843 () Bool)

(assert (=> b!818355 m!759843))

(declare-fun m!759845 () Bool)

(assert (=> b!818355 m!759845))

(assert (=> b!818355 m!759825))

(assert (=> b!818355 m!759843))

(declare-fun m!759847 () Bool)

(assert (=> b!818355 m!759847))

(declare-fun m!759849 () Bool)

(assert (=> b!818355 m!759849))

(declare-fun m!759851 () Bool)

(assert (=> b!818355 m!759851))

(assert (=> b!818352 m!759831))

(assert (=> b!818352 m!759831))

(declare-fun m!759853 () Bool)

(assert (=> b!818352 m!759853))

(declare-fun m!759855 () Bool)

(assert (=> b!818357 m!759855))

(assert (=> b!818357 m!759855))

(declare-fun m!759857 () Bool)

(assert (=> b!818357 m!759857))

(declare-fun m!759859 () Bool)

(assert (=> b!818357 m!759859))

(assert (=> b!818357 m!759857))

(assert (=> b!818357 m!759831))

(assert (=> b!818357 m!759831))

(declare-fun m!759861 () Bool)

(assert (=> b!818357 m!759861))

(declare-fun m!759863 () Bool)

(assert (=> b!818347 m!759863))

(declare-fun m!759865 () Bool)

(assert (=> b!818349 m!759865))

(declare-fun m!759867 () Bool)

(assert (=> bm!35618 m!759867))

(declare-fun m!759869 () Bool)

(assert (=> bm!35619 m!759869))

(assert (=> bm!35622 m!759797))

(declare-fun m!759871 () Bool)

(assert (=> b!818358 m!759871))

(assert (=> d!104539 m!759783))

(assert (=> b!818343 m!759831))

(assert (=> b!818343 m!759831))

(declare-fun m!759873 () Bool)

(assert (=> b!818343 m!759873))

(assert (=> b!818360 m!759831))

(assert (=> b!818360 m!759831))

(assert (=> b!818360 m!759873))

(assert (=> b!818268 d!104539))

(declare-fun d!104541 () Bool)

(assert (=> d!104541 (= (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366750 () Unit!27928)

(declare-fun choose!1400 (array!45194 array!45196 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24349 V!24349 V!24349 V!24349 (_ BitVec 32) Int) Unit!27928)

(assert (=> d!104541 (= lt!366750 (choose!1400 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104541 (validMask!0 mask!1312)))

(assert (=> d!104541 (= (lemmaNoChangeToArrayThenSameMapNoExtras!399 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366750)))

(declare-fun bs!22803 () Bool)

(assert (= bs!22803 d!104541))

(assert (=> bs!22803 m!759797))

(assert (=> bs!22803 m!759795))

(declare-fun m!759875 () Bool)

(assert (=> bs!22803 m!759875))

(assert (=> bs!22803 m!759783))

(assert (=> b!818272 d!104541))

(declare-fun b!818389 () Bool)

(declare-fun e!454334 () Bool)

(declare-fun lt!366770 () ListLongMap!8449)

(declare-fun isEmpty!640 (ListLongMap!8449) Bool)

(assert (=> b!818389 (= e!454334 (isEmpty!640 lt!366770))))

(declare-fun b!818390 () Bool)

(declare-fun e!454333 () Bool)

(declare-fun e!454335 () Bool)

(assert (=> b!818390 (= e!454333 e!454335)))

(assert (=> b!818390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun res!558627 () Bool)

(assert (=> b!818390 (= res!558627 (contains!4157 lt!366770 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!818390 (=> (not res!558627) (not e!454335))))

(declare-fun b!818391 () Bool)

(declare-fun e!454336 () ListLongMap!8449)

(assert (=> b!818391 (= e!454336 (ListLongMap!8450 Nil!15474))))

(declare-fun b!818392 () Bool)

(declare-fun res!558628 () Bool)

(declare-fun e!454338 () Bool)

(assert (=> b!818392 (=> (not res!558628) (not e!454338))))

(assert (=> b!818392 (= res!558628 (not (contains!4157 lt!366770 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!818393 () Bool)

(declare-fun lt!366767 () Unit!27928)

(declare-fun lt!366766 () Unit!27928)

(assert (=> b!818393 (= lt!366767 lt!366766)))

(declare-fun lt!366768 () ListLongMap!8449)

(declare-fun lt!366765 () V!24349)

(declare-fun lt!366771 () (_ BitVec 64))

(declare-fun lt!366769 () (_ BitVec 64))

(assert (=> b!818393 (not (contains!4157 (+!1785 lt!366768 (tuple2!9613 lt!366771 lt!366765)) lt!366769))))

(declare-fun addStillNotContains!180 (ListLongMap!8449 (_ BitVec 64) V!24349 (_ BitVec 64)) Unit!27928)

(assert (=> b!818393 (= lt!366766 (addStillNotContains!180 lt!366768 lt!366771 lt!366765 lt!366769))))

(assert (=> b!818393 (= lt!366769 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!818393 (= lt!366765 (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!818393 (= lt!366771 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35629 () ListLongMap!8449)

(assert (=> b!818393 (= lt!366768 call!35629)))

(declare-fun e!454332 () ListLongMap!8449)

(assert (=> b!818393 (= e!454332 (+!1785 call!35629 (tuple2!9613 (select (arr!21648 _keys!976) #b00000000000000000000000000000000) (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!104543 () Bool)

(assert (=> d!104543 e!454338))

(declare-fun res!558626 () Bool)

(assert (=> d!104543 (=> (not res!558626) (not e!454338))))

(assert (=> d!104543 (= res!558626 (not (contains!4157 lt!366770 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104543 (= lt!366770 e!454336)))

(declare-fun c!89026 () Bool)

(assert (=> d!104543 (= c!89026 (bvsge #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> d!104543 (validMask!0 mask!1312)))

(assert (=> d!104543 (= (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366770)))

(declare-fun b!818394 () Bool)

(assert (=> b!818394 (= e!454336 e!454332)))

(declare-fun c!89025 () Bool)

(assert (=> b!818394 (= c!89025 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818395 () Bool)

(declare-fun e!454337 () Bool)

(assert (=> b!818395 (= e!454337 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!818395 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!818396 () Bool)

(assert (=> b!818396 (= e!454334 (= lt!366770 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!818397 () Bool)

(assert (=> b!818397 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> b!818397 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22070 _values!788)))))

(assert (=> b!818397 (= e!454335 (= (apply!353 lt!366770 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)) (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!818398 () Bool)

(assert (=> b!818398 (= e!454332 call!35629)))

(declare-fun b!818399 () Bool)

(assert (=> b!818399 (= e!454338 e!454333)))

(declare-fun c!89027 () Bool)

(assert (=> b!818399 (= c!89027 e!454337)))

(declare-fun res!558625 () Bool)

(assert (=> b!818399 (=> (not res!558625) (not e!454337))))

(assert (=> b!818399 (= res!558625 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun bm!35626 () Bool)

(assert (=> bm!35626 (= call!35629 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!818400 () Bool)

(assert (=> b!818400 (= e!454333 e!454334)))

(declare-fun c!89024 () Bool)

(assert (=> b!818400 (= c!89024 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (= (and d!104543 c!89026) b!818391))

(assert (= (and d!104543 (not c!89026)) b!818394))

(assert (= (and b!818394 c!89025) b!818393))

(assert (= (and b!818394 (not c!89025)) b!818398))

(assert (= (or b!818393 b!818398) bm!35626))

(assert (= (and d!104543 res!558626) b!818392))

(assert (= (and b!818392 res!558628) b!818399))

(assert (= (and b!818399 res!558625) b!818395))

(assert (= (and b!818399 c!89027) b!818390))

(assert (= (and b!818399 (not c!89027)) b!818400))

(assert (= (and b!818390 res!558627) b!818397))

(assert (= (and b!818400 c!89024) b!818396))

(assert (= (and b!818400 (not c!89024)) b!818389))

(declare-fun b_lambda!10959 () Bool)

(assert (=> (not b_lambda!10959) (not b!818393)))

(assert (=> b!818393 t!21815))

(declare-fun b_and!21645 () Bool)

(assert (= b_and!21643 (and (=> t!21815 result!7909) b_and!21645)))

(declare-fun b_lambda!10961 () Bool)

(assert (=> (not b_lambda!10961) (not b!818397)))

(assert (=> b!818397 t!21815))

(declare-fun b_and!21647 () Bool)

(assert (= b_and!21645 (and (=> t!21815 result!7909) b_and!21647)))

(declare-fun m!759877 () Bool)

(assert (=> b!818389 m!759877))

(assert (=> b!818397 m!759855))

(assert (=> b!818397 m!759857))

(assert (=> b!818397 m!759859))

(assert (=> b!818397 m!759855))

(assert (=> b!818397 m!759831))

(assert (=> b!818397 m!759857))

(assert (=> b!818397 m!759831))

(declare-fun m!759879 () Bool)

(assert (=> b!818397 m!759879))

(declare-fun m!759881 () Bool)

(assert (=> b!818392 m!759881))

(assert (=> b!818394 m!759831))

(assert (=> b!818394 m!759831))

(assert (=> b!818394 m!759873))

(assert (=> b!818390 m!759831))

(assert (=> b!818390 m!759831))

(declare-fun m!759883 () Bool)

(assert (=> b!818390 m!759883))

(declare-fun m!759885 () Bool)

(assert (=> b!818396 m!759885))

(declare-fun m!759887 () Bool)

(assert (=> d!104543 m!759887))

(assert (=> d!104543 m!759783))

(assert (=> b!818393 m!759855))

(assert (=> b!818393 m!759857))

(assert (=> b!818393 m!759859))

(declare-fun m!759889 () Bool)

(assert (=> b!818393 m!759889))

(assert (=> b!818393 m!759855))

(declare-fun m!759891 () Bool)

(assert (=> b!818393 m!759891))

(declare-fun m!759893 () Bool)

(assert (=> b!818393 m!759893))

(declare-fun m!759895 () Bool)

(assert (=> b!818393 m!759895))

(assert (=> b!818393 m!759831))

(assert (=> b!818393 m!759857))

(assert (=> b!818393 m!759891))

(assert (=> bm!35626 m!759885))

(assert (=> b!818395 m!759831))

(assert (=> b!818395 m!759831))

(assert (=> b!818395 m!759873))

(assert (=> b!818272 d!104543))

(declare-fun b!818401 () Bool)

(declare-fun e!454341 () Bool)

(declare-fun lt!366777 () ListLongMap!8449)

(assert (=> b!818401 (= e!454341 (isEmpty!640 lt!366777))))

(declare-fun b!818402 () Bool)

(declare-fun e!454340 () Bool)

(declare-fun e!454342 () Bool)

(assert (=> b!818402 (= e!454340 e!454342)))

(assert (=> b!818402 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun res!558631 () Bool)

(assert (=> b!818402 (= res!558631 (contains!4157 lt!366777 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!818402 (=> (not res!558631) (not e!454342))))

(declare-fun b!818403 () Bool)

(declare-fun e!454343 () ListLongMap!8449)

(assert (=> b!818403 (= e!454343 (ListLongMap!8450 Nil!15474))))

(declare-fun b!818404 () Bool)

(declare-fun res!558632 () Bool)

(declare-fun e!454345 () Bool)

(assert (=> b!818404 (=> (not res!558632) (not e!454345))))

(assert (=> b!818404 (= res!558632 (not (contains!4157 lt!366777 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!818405 () Bool)

(declare-fun lt!366774 () Unit!27928)

(declare-fun lt!366773 () Unit!27928)

(assert (=> b!818405 (= lt!366774 lt!366773)))

(declare-fun lt!366775 () ListLongMap!8449)

(declare-fun lt!366776 () (_ BitVec 64))

(declare-fun lt!366772 () V!24349)

(declare-fun lt!366778 () (_ BitVec 64))

(assert (=> b!818405 (not (contains!4157 (+!1785 lt!366775 (tuple2!9613 lt!366778 lt!366772)) lt!366776))))

(assert (=> b!818405 (= lt!366773 (addStillNotContains!180 lt!366775 lt!366778 lt!366772 lt!366776))))

(assert (=> b!818405 (= lt!366776 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!818405 (= lt!366772 (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!818405 (= lt!366778 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35630 () ListLongMap!8449)

(assert (=> b!818405 (= lt!366775 call!35630)))

(declare-fun e!454339 () ListLongMap!8449)

(assert (=> b!818405 (= e!454339 (+!1785 call!35630 (tuple2!9613 (select (arr!21648 _keys!976) #b00000000000000000000000000000000) (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!104545 () Bool)

(assert (=> d!104545 e!454345))

(declare-fun res!558630 () Bool)

(assert (=> d!104545 (=> (not res!558630) (not e!454345))))

(assert (=> d!104545 (= res!558630 (not (contains!4157 lt!366777 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104545 (= lt!366777 e!454343)))

(declare-fun c!89030 () Bool)

(assert (=> d!104545 (= c!89030 (bvsge #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> d!104545 (validMask!0 mask!1312)))

(assert (=> d!104545 (= (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366777)))

(declare-fun b!818406 () Bool)

(assert (=> b!818406 (= e!454343 e!454339)))

(declare-fun c!89029 () Bool)

(assert (=> b!818406 (= c!89029 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818407 () Bool)

(declare-fun e!454344 () Bool)

(assert (=> b!818407 (= e!454344 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!818407 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!818408 () Bool)

(assert (=> b!818408 (= e!454341 (= lt!366777 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!818409 () Bool)

(assert (=> b!818409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> b!818409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22070 _values!788)))))

(assert (=> b!818409 (= e!454342 (= (apply!353 lt!366777 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)) (get!11571 (select (arr!21649 _values!788) #b00000000000000000000000000000000) (dynLambda!963 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!818410 () Bool)

(assert (=> b!818410 (= e!454339 call!35630)))

(declare-fun b!818411 () Bool)

(assert (=> b!818411 (= e!454345 e!454340)))

(declare-fun c!89031 () Bool)

(assert (=> b!818411 (= c!89031 e!454344)))

(declare-fun res!558629 () Bool)

(assert (=> b!818411 (=> (not res!558629) (not e!454344))))

(assert (=> b!818411 (= res!558629 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(declare-fun bm!35627 () Bool)

(assert (=> bm!35627 (= call!35630 (getCurrentListMapNoExtraKeys!2283 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!818412 () Bool)

(assert (=> b!818412 (= e!454340 e!454341)))

(declare-fun c!89028 () Bool)

(assert (=> b!818412 (= c!89028 (bvslt #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (= (and d!104545 c!89030) b!818403))

(assert (= (and d!104545 (not c!89030)) b!818406))

(assert (= (and b!818406 c!89029) b!818405))

(assert (= (and b!818406 (not c!89029)) b!818410))

(assert (= (or b!818405 b!818410) bm!35627))

(assert (= (and d!104545 res!558630) b!818404))

(assert (= (and b!818404 res!558632) b!818411))

(assert (= (and b!818411 res!558629) b!818407))

(assert (= (and b!818411 c!89031) b!818402))

(assert (= (and b!818411 (not c!89031)) b!818412))

(assert (= (and b!818402 res!558631) b!818409))

(assert (= (and b!818412 c!89028) b!818408))

(assert (= (and b!818412 (not c!89028)) b!818401))

(declare-fun b_lambda!10963 () Bool)

(assert (=> (not b_lambda!10963) (not b!818405)))

(assert (=> b!818405 t!21815))

(declare-fun b_and!21649 () Bool)

(assert (= b_and!21647 (and (=> t!21815 result!7909) b_and!21649)))

(declare-fun b_lambda!10965 () Bool)

(assert (=> (not b_lambda!10965) (not b!818409)))

(assert (=> b!818409 t!21815))

(declare-fun b_and!21651 () Bool)

(assert (= b_and!21649 (and (=> t!21815 result!7909) b_and!21651)))

(declare-fun m!759897 () Bool)

(assert (=> b!818401 m!759897))

(assert (=> b!818409 m!759855))

(assert (=> b!818409 m!759857))

(assert (=> b!818409 m!759859))

(assert (=> b!818409 m!759855))

(assert (=> b!818409 m!759831))

(assert (=> b!818409 m!759857))

(assert (=> b!818409 m!759831))

(declare-fun m!759899 () Bool)

(assert (=> b!818409 m!759899))

(declare-fun m!759901 () Bool)

(assert (=> b!818404 m!759901))

(assert (=> b!818406 m!759831))

(assert (=> b!818406 m!759831))

(assert (=> b!818406 m!759873))

(assert (=> b!818402 m!759831))

(assert (=> b!818402 m!759831))

(declare-fun m!759903 () Bool)

(assert (=> b!818402 m!759903))

(declare-fun m!759905 () Bool)

(assert (=> b!818408 m!759905))

(declare-fun m!759907 () Bool)

(assert (=> d!104545 m!759907))

(assert (=> d!104545 m!759783))

(assert (=> b!818405 m!759855))

(assert (=> b!818405 m!759857))

(assert (=> b!818405 m!759859))

(declare-fun m!759909 () Bool)

(assert (=> b!818405 m!759909))

(assert (=> b!818405 m!759855))

(declare-fun m!759911 () Bool)

(assert (=> b!818405 m!759911))

(declare-fun m!759913 () Bool)

(assert (=> b!818405 m!759913))

(declare-fun m!759915 () Bool)

(assert (=> b!818405 m!759915))

(assert (=> b!818405 m!759831))

(assert (=> b!818405 m!759857))

(assert (=> b!818405 m!759911))

(assert (=> bm!35627 m!759905))

(assert (=> b!818407 m!759831))

(assert (=> b!818407 m!759831))

(assert (=> b!818407 m!759873))

(assert (=> b!818272 d!104545))

(declare-fun d!104547 () Bool)

(assert (=> d!104547 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70482 d!104547))

(declare-fun d!104549 () Bool)

(assert (=> d!104549 (= (array_inv!17281 _keys!976) (bvsge (size!22069 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70482 d!104549))

(declare-fun d!104551 () Bool)

(assert (=> d!104551 (= (array_inv!17282 _values!788) (bvsge (size!22070 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70482 d!104551))

(declare-fun d!104553 () Bool)

(declare-fun res!558640 () Bool)

(declare-fun e!454357 () Bool)

(assert (=> d!104553 (=> res!558640 e!454357)))

(assert (=> d!104553 (= res!558640 (bvsge #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> d!104553 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15475) e!454357)))

(declare-fun bm!35630 () Bool)

(declare-fun call!35633 () Bool)

(declare-fun c!89034 () Bool)

(assert (=> bm!35630 (= call!35633 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89034 (Cons!15474 (select (arr!21648 _keys!976) #b00000000000000000000000000000000) Nil!15475) Nil!15475)))))

(declare-fun b!818423 () Bool)

(declare-fun e!454356 () Bool)

(declare-fun e!454355 () Bool)

(assert (=> b!818423 (= e!454356 e!454355)))

(assert (=> b!818423 (= c!89034 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818424 () Bool)

(assert (=> b!818424 (= e!454355 call!35633)))

(declare-fun b!818425 () Bool)

(declare-fun e!454354 () Bool)

(declare-fun contains!4158 (List!15478 (_ BitVec 64)) Bool)

(assert (=> b!818425 (= e!454354 (contains!4158 Nil!15475 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!818426 () Bool)

(assert (=> b!818426 (= e!454355 call!35633)))

(declare-fun b!818427 () Bool)

(assert (=> b!818427 (= e!454357 e!454356)))

(declare-fun res!558639 () Bool)

(assert (=> b!818427 (=> (not res!558639) (not e!454356))))

(assert (=> b!818427 (= res!558639 (not e!454354))))

(declare-fun res!558641 () Bool)

(assert (=> b!818427 (=> (not res!558641) (not e!454354))))

(assert (=> b!818427 (= res!558641 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104553 (not res!558640)) b!818427))

(assert (= (and b!818427 res!558641) b!818425))

(assert (= (and b!818427 res!558639) b!818423))

(assert (= (and b!818423 c!89034) b!818424))

(assert (= (and b!818423 (not c!89034)) b!818426))

(assert (= (or b!818424 b!818426) bm!35630))

(assert (=> bm!35630 m!759831))

(declare-fun m!759917 () Bool)

(assert (=> bm!35630 m!759917))

(assert (=> b!818423 m!759831))

(assert (=> b!818423 m!759831))

(assert (=> b!818423 m!759873))

(assert (=> b!818425 m!759831))

(assert (=> b!818425 m!759831))

(declare-fun m!759919 () Bool)

(assert (=> b!818425 m!759919))

(assert (=> b!818427 m!759831))

(assert (=> b!818427 m!759831))

(assert (=> b!818427 m!759873))

(assert (=> b!818270 d!104553))

(declare-fun b!818436 () Bool)

(declare-fun e!454364 () Bool)

(declare-fun call!35636 () Bool)

(assert (=> b!818436 (= e!454364 call!35636)))

(declare-fun b!818437 () Bool)

(declare-fun e!454366 () Bool)

(assert (=> b!818437 (= e!454366 call!35636)))

(declare-fun b!818438 () Bool)

(declare-fun e!454365 () Bool)

(assert (=> b!818438 (= e!454365 e!454364)))

(declare-fun c!89037 () Bool)

(assert (=> b!818438 (= c!89037 (validKeyInArray!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104555 () Bool)

(declare-fun res!558647 () Bool)

(assert (=> d!104555 (=> res!558647 e!454365)))

(assert (=> d!104555 (= res!558647 (bvsge #b00000000000000000000000000000000 (size!22069 _keys!976)))))

(assert (=> d!104555 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!454365)))

(declare-fun b!818439 () Bool)

(assert (=> b!818439 (= e!454364 e!454366)))

(declare-fun lt!366786 () (_ BitVec 64))

(assert (=> b!818439 (= lt!366786 (select (arr!21648 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366785 () Unit!27928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45194 (_ BitVec 64) (_ BitVec 32)) Unit!27928)

(assert (=> b!818439 (= lt!366785 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!366786 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!818439 (arrayContainsKey!0 _keys!976 lt!366786 #b00000000000000000000000000000000)))

(declare-fun lt!366787 () Unit!27928)

(assert (=> b!818439 (= lt!366787 lt!366785)))

(declare-fun res!558646 () Bool)

(declare-datatypes ((SeekEntryResult!8714 0))(
  ( (MissingZero!8714 (index!37226 (_ BitVec 32))) (Found!8714 (index!37227 (_ BitVec 32))) (Intermediate!8714 (undefined!9526 Bool) (index!37228 (_ BitVec 32)) (x!68935 (_ BitVec 32))) (Undefined!8714) (MissingVacant!8714 (index!37229 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45194 (_ BitVec 32)) SeekEntryResult!8714)

(assert (=> b!818439 (= res!558646 (= (seekEntryOrOpen!0 (select (arr!21648 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8714 #b00000000000000000000000000000000)))))

(assert (=> b!818439 (=> (not res!558646) (not e!454366))))

(declare-fun bm!35633 () Bool)

(assert (=> bm!35633 (= call!35636 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104555 (not res!558647)) b!818438))

(assert (= (and b!818438 c!89037) b!818439))

(assert (= (and b!818438 (not c!89037)) b!818436))

(assert (= (and b!818439 res!558646) b!818437))

(assert (= (or b!818437 b!818436) bm!35633))

(assert (=> b!818438 m!759831))

(assert (=> b!818438 m!759831))

(assert (=> b!818438 m!759873))

(assert (=> b!818439 m!759831))

(declare-fun m!759921 () Bool)

(assert (=> b!818439 m!759921))

(declare-fun m!759923 () Bool)

(assert (=> b!818439 m!759923))

(assert (=> b!818439 m!759831))

(declare-fun m!759925 () Bool)

(assert (=> b!818439 m!759925))

(declare-fun m!759927 () Bool)

(assert (=> bm!35633 m!759927))

(assert (=> b!818273 d!104555))

(declare-fun condMapEmpty!23368 () Bool)

(declare-fun mapDefault!23368 () ValueCell!6840)

(assert (=> mapNonEmpty!23362 (= condMapEmpty!23368 (= mapRest!23362 ((as const (Array (_ BitVec 32) ValueCell!6840)) mapDefault!23368)))))

(declare-fun e!454371 () Bool)

(declare-fun mapRes!23368 () Bool)

(assert (=> mapNonEmpty!23362 (= tp!45133 (and e!454371 mapRes!23368))))

(declare-fun b!818446 () Bool)

(declare-fun e!454372 () Bool)

(assert (=> b!818446 (= e!454372 tp_is_empty!14511)))

(declare-fun mapIsEmpty!23368 () Bool)

(assert (=> mapIsEmpty!23368 mapRes!23368))

(declare-fun b!818447 () Bool)

(assert (=> b!818447 (= e!454371 tp_is_empty!14511)))

(declare-fun mapNonEmpty!23368 () Bool)

(declare-fun tp!45142 () Bool)

(assert (=> mapNonEmpty!23368 (= mapRes!23368 (and tp!45142 e!454372))))

(declare-fun mapValue!23368 () ValueCell!6840)

(declare-fun mapKey!23368 () (_ BitVec 32))

(declare-fun mapRest!23368 () (Array (_ BitVec 32) ValueCell!6840))

(assert (=> mapNonEmpty!23368 (= mapRest!23362 (store mapRest!23368 mapKey!23368 mapValue!23368))))

(assert (= (and mapNonEmpty!23362 condMapEmpty!23368) mapIsEmpty!23368))

(assert (= (and mapNonEmpty!23362 (not condMapEmpty!23368)) mapNonEmpty!23368))

(assert (= (and mapNonEmpty!23368 ((_ is ValueCellFull!6840) mapValue!23368)) b!818446))

(assert (= (and mapNonEmpty!23362 ((_ is ValueCellFull!6840) mapDefault!23368)) b!818447))

(declare-fun m!759929 () Bool)

(assert (=> mapNonEmpty!23368 m!759929))

(declare-fun b_lambda!10967 () Bool)

(assert (= b_lambda!10965 (or (and start!70482 b_free!12801) b_lambda!10967)))

(declare-fun b_lambda!10969 () Bool)

(assert (= b_lambda!10959 (or (and start!70482 b_free!12801) b_lambda!10969)))

(declare-fun b_lambda!10971 () Bool)

(assert (= b_lambda!10957 (or (and start!70482 b_free!12801) b_lambda!10971)))

(declare-fun b_lambda!10973 () Bool)

(assert (= b_lambda!10961 (or (and start!70482 b_free!12801) b_lambda!10973)))

(declare-fun b_lambda!10975 () Bool)

(assert (= b_lambda!10963 (or (and start!70482 b_free!12801) b_lambda!10975)))

(check-sat (not b!818409) (not b!818360) (not b!818406) (not b!818407) (not b_lambda!10971) (not b_next!12801) (not bm!35618) (not b!818393) (not b!818397) (not b_lambda!10969) (not bm!35621) (not b!818343) (not b!818352) (not b!818425) (not b!818396) (not b!818349) (not b_lambda!10975) (not b!818423) (not d!104539) (not mapNonEmpty!23368) (not d!104541) (not b!818355) (not b!818347) (not b!818402) (not bm!35627) (not bm!35619) tp_is_empty!14511 (not b!818392) (not b!818438) b_and!21651 (not b!818390) (not bm!35622) (not b!818427) (not b!818358) (not b!818408) (not b!818357) (not b_lambda!10973) (not b!818394) (not b!818395) (not bm!35630) (not b!818389) (not d!104545) (not bm!35633) (not b!818401) (not b!818405) (not b_lambda!10967) (not d!104543) (not b!818439) (not bm!35626) (not b!818404))
(check-sat b_and!21651 (not b_next!12801))
