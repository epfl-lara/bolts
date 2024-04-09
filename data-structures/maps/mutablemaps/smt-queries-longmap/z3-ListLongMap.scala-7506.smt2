; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95194 () Bool)

(assert start!95194)

(declare-fun b_free!22215 () Bool)

(declare-fun b_next!22215 () Bool)

(assert (=> start!95194 (= b_free!22215 (not b_next!22215))))

(declare-fun tp!78135 () Bool)

(declare-fun b_and!35175 () Bool)

(assert (=> start!95194 (= tp!78135 b_and!35175)))

(declare-fun b!1075573 () Bool)

(declare-fun e!614766 () Bool)

(declare-fun tp_is_empty!26025 () Bool)

(assert (=> b!1075573 (= e!614766 tp_is_empty!26025)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39835 0))(
  ( (V!39836 (val!13063 Int)) )
))
(declare-fun zeroValueBefore!47 () V!39835)

(declare-fun e!614769 () Bool)

(declare-datatypes ((ValueCell!12309 0))(
  ( (ValueCellFull!12309 (v!15689 V!39835)) (EmptyCell!12309) )
))
(declare-datatypes ((array!68982 0))(
  ( (array!68983 (arr!33173 (Array (_ BitVec 32) ValueCell!12309)) (size!33710 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68982)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39835)

(declare-datatypes ((tuple2!16712 0))(
  ( (tuple2!16713 (_1!8366 (_ BitVec 64)) (_2!8366 V!39835)) )
))
(declare-datatypes ((List!23285 0))(
  ( (Nil!23282) (Cons!23281 (h!24490 tuple2!16712) (t!32645 List!23285)) )
))
(declare-datatypes ((ListLongMap!14693 0))(
  ( (ListLongMap!14694 (toList!7362 List!23285)) )
))
(declare-fun lt!477495 () ListLongMap!14693)

(declare-fun b!1075574 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68984 0))(
  ( (array!68985 (arr!33174 (Array (_ BitVec 32) (_ BitVec 64))) (size!33711 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68984)

(declare-fun getCurrentListMap!4199 (array!68984 array!68982 (_ BitVec 32) (_ BitVec 32) V!39835 V!39835 (_ BitVec 32) Int) ListLongMap!14693)

(declare-fun +!3186 (ListLongMap!14693 tuple2!16712) ListLongMap!14693)

(assert (=> b!1075574 (= e!614769 (= (getCurrentListMap!4199 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3186 (+!3186 lt!477495 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lt!477493 () ListLongMap!14693)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39835)

(assert (=> b!1075574 (= lt!477493 (getCurrentListMap!4199 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075575 () Bool)

(declare-fun e!614768 () Bool)

(assert (=> b!1075575 (= e!614768 tp_is_empty!26025)))

(declare-fun b!1075576 () Bool)

(declare-fun res!717086 () Bool)

(declare-fun e!614771 () Bool)

(assert (=> b!1075576 (=> (not res!717086) (not e!614771))))

(declare-datatypes ((List!23286 0))(
  ( (Nil!23283) (Cons!23282 (h!24491 (_ BitVec 64)) (t!32646 List!23286)) )
))
(declare-fun arrayNoDuplicates!0 (array!68984 (_ BitVec 32) List!23286) Bool)

(assert (=> b!1075576 (= res!717086 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23283))))

(declare-fun b!1075577 () Bool)

(declare-fun e!614770 () Bool)

(declare-fun mapRes!40774 () Bool)

(assert (=> b!1075577 (= e!614770 (and e!614766 mapRes!40774))))

(declare-fun condMapEmpty!40774 () Bool)

(declare-fun mapDefault!40774 () ValueCell!12309)

(assert (=> b!1075577 (= condMapEmpty!40774 (= (arr!33173 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12309)) mapDefault!40774)))))

(declare-fun b!1075578 () Bool)

(assert (=> b!1075578 (= e!614771 (not e!614769))))

(declare-fun res!717083 () Bool)

(assert (=> b!1075578 (=> res!717083 e!614769)))

(assert (=> b!1075578 (= res!717083 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!477492 () ListLongMap!14693)

(assert (=> b!1075578 (= lt!477495 lt!477492)))

(declare-datatypes ((Unit!35358 0))(
  ( (Unit!35359) )
))
(declare-fun lt!477494 () Unit!35358)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!906 (array!68984 array!68982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39835 V!39835 V!39835 V!39835 (_ BitVec 32) Int) Unit!35358)

(assert (=> b!1075578 (= lt!477494 (lemmaNoChangeToArrayThenSameMapNoExtras!906 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3887 (array!68984 array!68982 (_ BitVec 32) (_ BitVec 32) V!39835 V!39835 (_ BitVec 32) Int) ListLongMap!14693)

(assert (=> b!1075578 (= lt!477492 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1075578 (= lt!477495 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40774 () Bool)

(assert (=> mapIsEmpty!40774 mapRes!40774))

(declare-fun b!1075579 () Bool)

(declare-fun res!717084 () Bool)

(assert (=> b!1075579 (=> (not res!717084) (not e!614771))))

(assert (=> b!1075579 (= res!717084 (and (= (size!33710 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33711 _keys!1163) (size!33710 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!717082 () Bool)

(assert (=> start!95194 (=> (not res!717082) (not e!614771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95194 (= res!717082 (validMask!0 mask!1515))))

(assert (=> start!95194 e!614771))

(assert (=> start!95194 true))

(assert (=> start!95194 tp_is_empty!26025))

(declare-fun array_inv!25488 (array!68982) Bool)

(assert (=> start!95194 (and (array_inv!25488 _values!955) e!614770)))

(assert (=> start!95194 tp!78135))

(declare-fun array_inv!25489 (array!68984) Bool)

(assert (=> start!95194 (array_inv!25489 _keys!1163)))

(declare-fun b!1075580 () Bool)

(declare-fun res!717085 () Bool)

(assert (=> b!1075580 (=> (not res!717085) (not e!614771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68984 (_ BitVec 32)) Bool)

(assert (=> b!1075580 (= res!717085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40774 () Bool)

(declare-fun tp!78134 () Bool)

(assert (=> mapNonEmpty!40774 (= mapRes!40774 (and tp!78134 e!614768))))

(declare-fun mapValue!40774 () ValueCell!12309)

(declare-fun mapKey!40774 () (_ BitVec 32))

(declare-fun mapRest!40774 () (Array (_ BitVec 32) ValueCell!12309))

(assert (=> mapNonEmpty!40774 (= (arr!33173 _values!955) (store mapRest!40774 mapKey!40774 mapValue!40774))))

(assert (= (and start!95194 res!717082) b!1075579))

(assert (= (and b!1075579 res!717084) b!1075580))

(assert (= (and b!1075580 res!717085) b!1075576))

(assert (= (and b!1075576 res!717086) b!1075578))

(assert (= (and b!1075578 (not res!717083)) b!1075574))

(assert (= (and b!1075577 condMapEmpty!40774) mapIsEmpty!40774))

(assert (= (and b!1075577 (not condMapEmpty!40774)) mapNonEmpty!40774))

(get-info :version)

(assert (= (and mapNonEmpty!40774 ((_ is ValueCellFull!12309) mapValue!40774)) b!1075575))

(assert (= (and b!1075577 ((_ is ValueCellFull!12309) mapDefault!40774)) b!1075573))

(assert (= start!95194 b!1075577))

(declare-fun m!994539 () Bool)

(assert (=> mapNonEmpty!40774 m!994539))

(declare-fun m!994541 () Bool)

(assert (=> start!95194 m!994541))

(declare-fun m!994543 () Bool)

(assert (=> start!95194 m!994543))

(declare-fun m!994545 () Bool)

(assert (=> start!95194 m!994545))

(declare-fun m!994547 () Bool)

(assert (=> b!1075574 m!994547))

(declare-fun m!994549 () Bool)

(assert (=> b!1075574 m!994549))

(assert (=> b!1075574 m!994549))

(declare-fun m!994551 () Bool)

(assert (=> b!1075574 m!994551))

(declare-fun m!994553 () Bool)

(assert (=> b!1075574 m!994553))

(declare-fun m!994555 () Bool)

(assert (=> b!1075578 m!994555))

(declare-fun m!994557 () Bool)

(assert (=> b!1075578 m!994557))

(declare-fun m!994559 () Bool)

(assert (=> b!1075578 m!994559))

(declare-fun m!994561 () Bool)

(assert (=> b!1075576 m!994561))

(declare-fun m!994563 () Bool)

(assert (=> b!1075580 m!994563))

(check-sat b_and!35175 (not start!95194) (not b!1075578) (not b!1075574) (not mapNonEmpty!40774) (not b_next!22215) (not b!1075576) (not b!1075580) tp_is_empty!26025)
(check-sat b_and!35175 (not b_next!22215))
(get-model)

(declare-fun b!1075647 () Bool)

(declare-fun e!614819 () ListLongMap!14693)

(declare-fun call!45560 () ListLongMap!14693)

(assert (=> b!1075647 (= e!614819 call!45560)))

(declare-fun b!1075648 () Bool)

(declare-fun e!614825 () Bool)

(declare-fun e!614828 () Bool)

(assert (=> b!1075648 (= e!614825 e!614828)))

(declare-fun res!717124 () Bool)

(declare-fun call!45558 () Bool)

(assert (=> b!1075648 (= res!717124 call!45558)))

(assert (=> b!1075648 (=> (not res!717124) (not e!614828))))

(declare-fun d!129569 () Bool)

(declare-fun e!614822 () Bool)

(assert (=> d!129569 e!614822))

(declare-fun res!717120 () Bool)

(assert (=> d!129569 (=> (not res!717120) (not e!614822))))

(assert (=> d!129569 (= res!717120 (or (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))))

(declare-fun lt!477562 () ListLongMap!14693)

(declare-fun lt!477560 () ListLongMap!14693)

(assert (=> d!129569 (= lt!477562 lt!477560)))

(declare-fun lt!477564 () Unit!35358)

(declare-fun e!614823 () Unit!35358)

(assert (=> d!129569 (= lt!477564 e!614823)))

(declare-fun c!108049 () Bool)

(declare-fun e!614826 () Bool)

(assert (=> d!129569 (= c!108049 e!614826)))

(declare-fun res!717125 () Bool)

(assert (=> d!129569 (=> (not res!717125) (not e!614826))))

(assert (=> d!129569 (= res!717125 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun e!614824 () ListLongMap!14693)

(assert (=> d!129569 (= lt!477560 e!614824)))

(declare-fun c!108054 () Bool)

(assert (=> d!129569 (= c!108054 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129569 (validMask!0 mask!1515)))

(assert (=> d!129569 (= (getCurrentListMap!4199 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477562)))

(declare-fun b!1075649 () Bool)

(declare-fun e!614818 () ListLongMap!14693)

(assert (=> b!1075649 (= e!614824 e!614818)))

(declare-fun c!108053 () Bool)

(assert (=> b!1075649 (= c!108053 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45552 () Bool)

(declare-fun call!45559 () Bool)

(declare-fun contains!6365 (ListLongMap!14693 (_ BitVec 64)) Bool)

(assert (=> bm!45552 (= call!45559 (contains!6365 lt!477562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075650 () Bool)

(declare-fun e!614820 () Bool)

(declare-fun apply!975 (ListLongMap!14693 (_ BitVec 64)) V!39835)

(declare-fun get!17251 (ValueCell!12309 V!39835) V!39835)

(declare-fun dynLambda!2051 (Int (_ BitVec 64)) V!39835)

(assert (=> b!1075650 (= e!614820 (= (apply!975 lt!477562 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075650 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33710 _values!955)))))

(assert (=> b!1075650 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun bm!45553 () Bool)

(declare-fun call!45556 () ListLongMap!14693)

(assert (=> bm!45553 (= call!45560 call!45556)))

(declare-fun b!1075651 () Bool)

(declare-fun call!45555 () ListLongMap!14693)

(assert (=> b!1075651 (= e!614818 call!45555)))

(declare-fun b!1075652 () Bool)

(declare-fun e!614817 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1075652 (= e!614817 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075653 () Bool)

(declare-fun Unit!35362 () Unit!35358)

(assert (=> b!1075653 (= e!614823 Unit!35362)))

(declare-fun b!1075654 () Bool)

(declare-fun e!614821 () Bool)

(declare-fun e!614827 () Bool)

(assert (=> b!1075654 (= e!614821 e!614827)))

(declare-fun res!717122 () Bool)

(assert (=> b!1075654 (= res!717122 call!45559)))

(assert (=> b!1075654 (=> (not res!717122) (not e!614827))))

(declare-fun b!1075655 () Bool)

(assert (=> b!1075655 (= e!614826 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075656 () Bool)

(assert (=> b!1075656 (= e!614821 (not call!45559))))

(declare-fun bm!45554 () Bool)

(declare-fun call!45561 () ListLongMap!14693)

(assert (=> bm!45554 (= call!45556 call!45561)))

(declare-fun b!1075657 () Bool)

(declare-fun lt!477552 () Unit!35358)

(assert (=> b!1075657 (= e!614823 lt!477552)))

(declare-fun lt!477569 () ListLongMap!14693)

(assert (=> b!1075657 (= lt!477569 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477558 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477558 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477556 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477556 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477559 () Unit!35358)

(declare-fun addStillContains!657 (ListLongMap!14693 (_ BitVec 64) V!39835 (_ BitVec 64)) Unit!35358)

(assert (=> b!1075657 (= lt!477559 (addStillContains!657 lt!477569 lt!477558 zeroValueBefore!47 lt!477556))))

(assert (=> b!1075657 (contains!6365 (+!3186 lt!477569 (tuple2!16713 lt!477558 zeroValueBefore!47)) lt!477556)))

(declare-fun lt!477568 () Unit!35358)

(assert (=> b!1075657 (= lt!477568 lt!477559)))

(declare-fun lt!477553 () ListLongMap!14693)

(assert (=> b!1075657 (= lt!477553 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477570 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477570 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477565 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477565 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477557 () Unit!35358)

(declare-fun addApplyDifferent!509 (ListLongMap!14693 (_ BitVec 64) V!39835 (_ BitVec 64)) Unit!35358)

(assert (=> b!1075657 (= lt!477557 (addApplyDifferent!509 lt!477553 lt!477570 minValue!907 lt!477565))))

(assert (=> b!1075657 (= (apply!975 (+!3186 lt!477553 (tuple2!16713 lt!477570 minValue!907)) lt!477565) (apply!975 lt!477553 lt!477565))))

(declare-fun lt!477554 () Unit!35358)

(assert (=> b!1075657 (= lt!477554 lt!477557)))

(declare-fun lt!477563 () ListLongMap!14693)

(assert (=> b!1075657 (= lt!477563 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477555 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477555 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477567 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477567 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477573 () Unit!35358)

(assert (=> b!1075657 (= lt!477573 (addApplyDifferent!509 lt!477563 lt!477555 zeroValueBefore!47 lt!477567))))

(assert (=> b!1075657 (= (apply!975 (+!3186 lt!477563 (tuple2!16713 lt!477555 zeroValueBefore!47)) lt!477567) (apply!975 lt!477563 lt!477567))))

(declare-fun lt!477566 () Unit!35358)

(assert (=> b!1075657 (= lt!477566 lt!477573)))

(declare-fun lt!477561 () ListLongMap!14693)

(assert (=> b!1075657 (= lt!477561 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477571 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477571 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477572 () (_ BitVec 64))

(assert (=> b!1075657 (= lt!477572 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075657 (= lt!477552 (addApplyDifferent!509 lt!477561 lt!477571 minValue!907 lt!477572))))

(assert (=> b!1075657 (= (apply!975 (+!3186 lt!477561 (tuple2!16713 lt!477571 minValue!907)) lt!477572) (apply!975 lt!477561 lt!477572))))

(declare-fun bm!45555 () Bool)

(declare-fun call!45557 () ListLongMap!14693)

(assert (=> bm!45555 (= call!45555 call!45557)))

(declare-fun bm!45556 () Bool)

(assert (=> bm!45556 (= call!45557 (+!3186 (ite c!108054 call!45561 (ite c!108053 call!45556 call!45560)) (ite (or c!108054 c!108053) (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075658 () Bool)

(assert (=> b!1075658 (= e!614827 (= (apply!975 lt!477562 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1075659 () Bool)

(assert (=> b!1075659 (= e!614819 call!45555)))

(declare-fun b!1075660 () Bool)

(assert (=> b!1075660 (= e!614828 (= (apply!975 lt!477562 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075661 () Bool)

(declare-fun res!717126 () Bool)

(assert (=> b!1075661 (=> (not res!717126) (not e!614822))))

(assert (=> b!1075661 (= res!717126 e!614821)))

(declare-fun c!108051 () Bool)

(assert (=> b!1075661 (= c!108051 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45557 () Bool)

(assert (=> bm!45557 (= call!45561 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075662 () Bool)

(declare-fun c!108050 () Bool)

(assert (=> b!1075662 (= c!108050 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075662 (= e!614818 e!614819)))

(declare-fun b!1075663 () Bool)

(declare-fun res!717121 () Bool)

(assert (=> b!1075663 (=> (not res!717121) (not e!614822))))

(declare-fun e!614816 () Bool)

(assert (=> b!1075663 (= res!717121 e!614816)))

(declare-fun res!717127 () Bool)

(assert (=> b!1075663 (=> res!717127 e!614816)))

(assert (=> b!1075663 (= res!717127 (not e!614817))))

(declare-fun res!717123 () Bool)

(assert (=> b!1075663 (=> (not res!717123) (not e!614817))))

(assert (=> b!1075663 (= res!717123 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075664 () Bool)

(assert (=> b!1075664 (= e!614822 e!614825)))

(declare-fun c!108052 () Bool)

(assert (=> b!1075664 (= c!108052 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45558 () Bool)

(assert (=> bm!45558 (= call!45558 (contains!6365 lt!477562 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075665 () Bool)

(assert (=> b!1075665 (= e!614816 e!614820)))

(declare-fun res!717128 () Bool)

(assert (=> b!1075665 (=> (not res!717128) (not e!614820))))

(assert (=> b!1075665 (= res!717128 (contains!6365 lt!477562 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075666 () Bool)

(assert (=> b!1075666 (= e!614824 (+!3186 call!45557 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1075667 () Bool)

(assert (=> b!1075667 (= e!614825 (not call!45558))))

(assert (= (and d!129569 c!108054) b!1075666))

(assert (= (and d!129569 (not c!108054)) b!1075649))

(assert (= (and b!1075649 c!108053) b!1075651))

(assert (= (and b!1075649 (not c!108053)) b!1075662))

(assert (= (and b!1075662 c!108050) b!1075659))

(assert (= (and b!1075662 (not c!108050)) b!1075647))

(assert (= (or b!1075659 b!1075647) bm!45553))

(assert (= (or b!1075651 bm!45553) bm!45554))

(assert (= (or b!1075651 b!1075659) bm!45555))

(assert (= (or b!1075666 bm!45554) bm!45557))

(assert (= (or b!1075666 bm!45555) bm!45556))

(assert (= (and d!129569 res!717125) b!1075655))

(assert (= (and d!129569 c!108049) b!1075657))

(assert (= (and d!129569 (not c!108049)) b!1075653))

(assert (= (and d!129569 res!717120) b!1075663))

(assert (= (and b!1075663 res!717123) b!1075652))

(assert (= (and b!1075663 (not res!717127)) b!1075665))

(assert (= (and b!1075665 res!717128) b!1075650))

(assert (= (and b!1075663 res!717121) b!1075661))

(assert (= (and b!1075661 c!108051) b!1075654))

(assert (= (and b!1075661 (not c!108051)) b!1075656))

(assert (= (and b!1075654 res!717122) b!1075658))

(assert (= (or b!1075654 b!1075656) bm!45552))

(assert (= (and b!1075661 res!717126) b!1075664))

(assert (= (and b!1075664 c!108052) b!1075648))

(assert (= (and b!1075664 (not c!108052)) b!1075667))

(assert (= (and b!1075648 res!717124) b!1075660))

(assert (= (or b!1075648 b!1075667) bm!45558))

(declare-fun b_lambda!16931 () Bool)

(assert (=> (not b_lambda!16931) (not b!1075650)))

(declare-fun t!32650 () Bool)

(declare-fun tb!7183 () Bool)

(assert (=> (and start!95194 (= defaultEntry!963 defaultEntry!963) t!32650) tb!7183))

(declare-fun result!14841 () Bool)

(assert (=> tb!7183 (= result!14841 tp_is_empty!26025)))

(assert (=> b!1075650 t!32650))

(declare-fun b_and!35179 () Bool)

(assert (= b_and!35175 (and (=> t!32650 result!14841) b_and!35179)))

(declare-fun m!994591 () Bool)

(assert (=> bm!45558 m!994591))

(assert (=> d!129569 m!994541))

(declare-fun m!994593 () Bool)

(assert (=> b!1075660 m!994593))

(declare-fun m!994595 () Bool)

(assert (=> b!1075652 m!994595))

(assert (=> b!1075652 m!994595))

(declare-fun m!994597 () Bool)

(assert (=> b!1075652 m!994597))

(declare-fun m!994599 () Bool)

(assert (=> b!1075658 m!994599))

(assert (=> b!1075655 m!994595))

(assert (=> b!1075655 m!994595))

(assert (=> b!1075655 m!994597))

(declare-fun m!994601 () Bool)

(assert (=> b!1075666 m!994601))

(declare-fun m!994603 () Bool)

(assert (=> bm!45556 m!994603))

(declare-fun m!994605 () Bool)

(assert (=> bm!45552 m!994605))

(assert (=> b!1075665 m!994595))

(assert (=> b!1075665 m!994595))

(declare-fun m!994607 () Bool)

(assert (=> b!1075665 m!994607))

(declare-fun m!994609 () Bool)

(assert (=> b!1075657 m!994609))

(declare-fun m!994611 () Bool)

(assert (=> b!1075657 m!994611))

(declare-fun m!994613 () Bool)

(assert (=> b!1075657 m!994613))

(declare-fun m!994615 () Bool)

(assert (=> b!1075657 m!994615))

(declare-fun m!994617 () Bool)

(assert (=> b!1075657 m!994617))

(declare-fun m!994619 () Bool)

(assert (=> b!1075657 m!994619))

(declare-fun m!994621 () Bool)

(assert (=> b!1075657 m!994621))

(declare-fun m!994623 () Bool)

(assert (=> b!1075657 m!994623))

(declare-fun m!994625 () Bool)

(assert (=> b!1075657 m!994625))

(assert (=> b!1075657 m!994595))

(assert (=> b!1075657 m!994611))

(assert (=> b!1075657 m!994623))

(declare-fun m!994627 () Bool)

(assert (=> b!1075657 m!994627))

(declare-fun m!994629 () Bool)

(assert (=> b!1075657 m!994629))

(assert (=> b!1075657 m!994621))

(declare-fun m!994631 () Bool)

(assert (=> b!1075657 m!994631))

(assert (=> b!1075657 m!994619))

(declare-fun m!994633 () Bool)

(assert (=> b!1075657 m!994633))

(assert (=> b!1075657 m!994559))

(declare-fun m!994635 () Bool)

(assert (=> b!1075657 m!994635))

(declare-fun m!994637 () Bool)

(assert (=> b!1075657 m!994637))

(assert (=> bm!45557 m!994559))

(declare-fun m!994639 () Bool)

(assert (=> b!1075650 m!994639))

(declare-fun m!994641 () Bool)

(assert (=> b!1075650 m!994641))

(declare-fun m!994643 () Bool)

(assert (=> b!1075650 m!994643))

(assert (=> b!1075650 m!994595))

(declare-fun m!994645 () Bool)

(assert (=> b!1075650 m!994645))

(assert (=> b!1075650 m!994595))

(assert (=> b!1075650 m!994641))

(assert (=> b!1075650 m!994639))

(assert (=> b!1075574 d!129569))

(declare-fun d!129571 () Bool)

(declare-fun e!614831 () Bool)

(assert (=> d!129571 e!614831))

(declare-fun res!717133 () Bool)

(assert (=> d!129571 (=> (not res!717133) (not e!614831))))

(declare-fun lt!477583 () ListLongMap!14693)

(assert (=> d!129571 (= res!717133 (contains!6365 lt!477583 (_1!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lt!477585 () List!23285)

(assert (=> d!129571 (= lt!477583 (ListLongMap!14694 lt!477585))))

(declare-fun lt!477584 () Unit!35358)

(declare-fun lt!477582 () Unit!35358)

(assert (=> d!129571 (= lt!477584 lt!477582)))

(declare-datatypes ((Option!666 0))(
  ( (Some!665 (v!15691 V!39835)) (None!664) )
))
(declare-fun getValueByKey!615 (List!23285 (_ BitVec 64)) Option!666)

(assert (=> d!129571 (= (getValueByKey!615 lt!477585 (_1!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!665 (_2!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun lemmaContainsTupThenGetReturnValue!290 (List!23285 (_ BitVec 64) V!39835) Unit!35358)

(assert (=> d!129571 (= lt!477582 (lemmaContainsTupThenGetReturnValue!290 lt!477585 (_1!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun insertStrictlySorted!382 (List!23285 (_ BitVec 64) V!39835) List!23285)

(assert (=> d!129571 (= lt!477585 (insertStrictlySorted!382 (toList!7362 (+!3186 lt!477495 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (_1!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (_2!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (=> d!129571 (= (+!3186 (+!3186 lt!477495 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) lt!477583)))

(declare-fun b!1075674 () Bool)

(declare-fun res!717134 () Bool)

(assert (=> b!1075674 (=> (not res!717134) (not e!614831))))

(assert (=> b!1075674 (= res!717134 (= (getValueByKey!615 (toList!7362 lt!477583) (_1!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))) (Some!665 (_2!8366 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))))

(declare-fun b!1075675 () Bool)

(declare-fun contains!6366 (List!23285 tuple2!16712) Bool)

(assert (=> b!1075675 (= e!614831 (contains!6366 (toList!7362 lt!477583) (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(assert (= (and d!129571 res!717133) b!1075674))

(assert (= (and b!1075674 res!717134) b!1075675))

(declare-fun m!994647 () Bool)

(assert (=> d!129571 m!994647))

(declare-fun m!994649 () Bool)

(assert (=> d!129571 m!994649))

(declare-fun m!994651 () Bool)

(assert (=> d!129571 m!994651))

(declare-fun m!994653 () Bool)

(assert (=> d!129571 m!994653))

(declare-fun m!994655 () Bool)

(assert (=> b!1075674 m!994655))

(declare-fun m!994657 () Bool)

(assert (=> b!1075675 m!994657))

(assert (=> b!1075574 d!129571))

(declare-fun d!129573 () Bool)

(declare-fun e!614832 () Bool)

(assert (=> d!129573 e!614832))

(declare-fun res!717135 () Bool)

(assert (=> d!129573 (=> (not res!717135) (not e!614832))))

(declare-fun lt!477587 () ListLongMap!14693)

(assert (=> d!129573 (= res!717135 (contains!6365 lt!477587 (_1!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!477589 () List!23285)

(assert (=> d!129573 (= lt!477587 (ListLongMap!14694 lt!477589))))

(declare-fun lt!477588 () Unit!35358)

(declare-fun lt!477586 () Unit!35358)

(assert (=> d!129573 (= lt!477588 lt!477586)))

(assert (=> d!129573 (= (getValueByKey!615 lt!477589 (_1!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!665 (_2!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129573 (= lt!477586 (lemmaContainsTupThenGetReturnValue!290 lt!477589 (_1!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129573 (= lt!477589 (insertStrictlySorted!382 (toList!7362 lt!477495) (_1!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129573 (= (+!3186 lt!477495 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477587)))

(declare-fun b!1075676 () Bool)

(declare-fun res!717136 () Bool)

(assert (=> b!1075676 (=> (not res!717136) (not e!614832))))

(assert (=> b!1075676 (= res!717136 (= (getValueByKey!615 (toList!7362 lt!477587) (_1!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!665 (_2!8366 (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1075677 () Bool)

(assert (=> b!1075677 (= e!614832 (contains!6366 (toList!7362 lt!477587) (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129573 res!717135) b!1075676))

(assert (= (and b!1075676 res!717136) b!1075677))

(declare-fun m!994659 () Bool)

(assert (=> d!129573 m!994659))

(declare-fun m!994661 () Bool)

(assert (=> d!129573 m!994661))

(declare-fun m!994663 () Bool)

(assert (=> d!129573 m!994663))

(declare-fun m!994665 () Bool)

(assert (=> d!129573 m!994665))

(declare-fun m!994667 () Bool)

(assert (=> b!1075676 m!994667))

(declare-fun m!994669 () Bool)

(assert (=> b!1075677 m!994669))

(assert (=> b!1075574 d!129573))

(declare-fun b!1075678 () Bool)

(declare-fun e!614836 () ListLongMap!14693)

(declare-fun call!45567 () ListLongMap!14693)

(assert (=> b!1075678 (= e!614836 call!45567)))

(declare-fun b!1075679 () Bool)

(declare-fun e!614842 () Bool)

(declare-fun e!614845 () Bool)

(assert (=> b!1075679 (= e!614842 e!614845)))

(declare-fun res!717141 () Bool)

(declare-fun call!45565 () Bool)

(assert (=> b!1075679 (= res!717141 call!45565)))

(assert (=> b!1075679 (=> (not res!717141) (not e!614845))))

(declare-fun d!129575 () Bool)

(declare-fun e!614839 () Bool)

(assert (=> d!129575 e!614839))

(declare-fun res!717137 () Bool)

(assert (=> d!129575 (=> (not res!717137) (not e!614839))))

(assert (=> d!129575 (= res!717137 (or (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))))

(declare-fun lt!477600 () ListLongMap!14693)

(declare-fun lt!477598 () ListLongMap!14693)

(assert (=> d!129575 (= lt!477600 lt!477598)))

(declare-fun lt!477602 () Unit!35358)

(declare-fun e!614840 () Unit!35358)

(assert (=> d!129575 (= lt!477602 e!614840)))

(declare-fun c!108055 () Bool)

(declare-fun e!614843 () Bool)

(assert (=> d!129575 (= c!108055 e!614843)))

(declare-fun res!717142 () Bool)

(assert (=> d!129575 (=> (not res!717142) (not e!614843))))

(assert (=> d!129575 (= res!717142 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun e!614841 () ListLongMap!14693)

(assert (=> d!129575 (= lt!477598 e!614841)))

(declare-fun c!108060 () Bool)

(assert (=> d!129575 (= c!108060 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129575 (validMask!0 mask!1515)))

(assert (=> d!129575 (= (getCurrentListMap!4199 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477600)))

(declare-fun b!1075680 () Bool)

(declare-fun e!614835 () ListLongMap!14693)

(assert (=> b!1075680 (= e!614841 e!614835)))

(declare-fun c!108059 () Bool)

(assert (=> b!1075680 (= c!108059 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45559 () Bool)

(declare-fun call!45566 () Bool)

(assert (=> bm!45559 (= call!45566 (contains!6365 lt!477600 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!614837 () Bool)

(declare-fun b!1075681 () Bool)

(assert (=> b!1075681 (= e!614837 (= (apply!975 lt!477600 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1075681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33710 _values!955)))))

(assert (=> b!1075681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun bm!45560 () Bool)

(declare-fun call!45563 () ListLongMap!14693)

(assert (=> bm!45560 (= call!45567 call!45563)))

(declare-fun b!1075682 () Bool)

(declare-fun call!45562 () ListLongMap!14693)

(assert (=> b!1075682 (= e!614835 call!45562)))

(declare-fun b!1075683 () Bool)

(declare-fun e!614834 () Bool)

(assert (=> b!1075683 (= e!614834 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075684 () Bool)

(declare-fun Unit!35363 () Unit!35358)

(assert (=> b!1075684 (= e!614840 Unit!35363)))

(declare-fun b!1075685 () Bool)

(declare-fun e!614838 () Bool)

(declare-fun e!614844 () Bool)

(assert (=> b!1075685 (= e!614838 e!614844)))

(declare-fun res!717139 () Bool)

(assert (=> b!1075685 (= res!717139 call!45566)))

(assert (=> b!1075685 (=> (not res!717139) (not e!614844))))

(declare-fun b!1075686 () Bool)

(assert (=> b!1075686 (= e!614843 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075687 () Bool)

(assert (=> b!1075687 (= e!614838 (not call!45566))))

(declare-fun bm!45561 () Bool)

(declare-fun call!45568 () ListLongMap!14693)

(assert (=> bm!45561 (= call!45563 call!45568)))

(declare-fun b!1075688 () Bool)

(declare-fun lt!477590 () Unit!35358)

(assert (=> b!1075688 (= e!614840 lt!477590)))

(declare-fun lt!477607 () ListLongMap!14693)

(assert (=> b!1075688 (= lt!477607 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477596 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477596 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477594 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477594 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477597 () Unit!35358)

(assert (=> b!1075688 (= lt!477597 (addStillContains!657 lt!477607 lt!477596 zeroValueAfter!47 lt!477594))))

(assert (=> b!1075688 (contains!6365 (+!3186 lt!477607 (tuple2!16713 lt!477596 zeroValueAfter!47)) lt!477594)))

(declare-fun lt!477606 () Unit!35358)

(assert (=> b!1075688 (= lt!477606 lt!477597)))

(declare-fun lt!477591 () ListLongMap!14693)

(assert (=> b!1075688 (= lt!477591 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477608 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477608 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477603 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477603 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477595 () Unit!35358)

(assert (=> b!1075688 (= lt!477595 (addApplyDifferent!509 lt!477591 lt!477608 minValue!907 lt!477603))))

(assert (=> b!1075688 (= (apply!975 (+!3186 lt!477591 (tuple2!16713 lt!477608 minValue!907)) lt!477603) (apply!975 lt!477591 lt!477603))))

(declare-fun lt!477592 () Unit!35358)

(assert (=> b!1075688 (= lt!477592 lt!477595)))

(declare-fun lt!477601 () ListLongMap!14693)

(assert (=> b!1075688 (= lt!477601 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477593 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477593 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477605 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477605 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477611 () Unit!35358)

(assert (=> b!1075688 (= lt!477611 (addApplyDifferent!509 lt!477601 lt!477593 zeroValueAfter!47 lt!477605))))

(assert (=> b!1075688 (= (apply!975 (+!3186 lt!477601 (tuple2!16713 lt!477593 zeroValueAfter!47)) lt!477605) (apply!975 lt!477601 lt!477605))))

(declare-fun lt!477604 () Unit!35358)

(assert (=> b!1075688 (= lt!477604 lt!477611)))

(declare-fun lt!477599 () ListLongMap!14693)

(assert (=> b!1075688 (= lt!477599 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477609 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477609 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!477610 () (_ BitVec 64))

(assert (=> b!1075688 (= lt!477610 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075688 (= lt!477590 (addApplyDifferent!509 lt!477599 lt!477609 minValue!907 lt!477610))))

(assert (=> b!1075688 (= (apply!975 (+!3186 lt!477599 (tuple2!16713 lt!477609 minValue!907)) lt!477610) (apply!975 lt!477599 lt!477610))))

(declare-fun bm!45562 () Bool)

(declare-fun call!45564 () ListLongMap!14693)

(assert (=> bm!45562 (= call!45562 call!45564)))

(declare-fun bm!45563 () Bool)

(assert (=> bm!45563 (= call!45564 (+!3186 (ite c!108060 call!45568 (ite c!108059 call!45563 call!45567)) (ite (or c!108060 c!108059) (tuple2!16713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1075689 () Bool)

(assert (=> b!1075689 (= e!614844 (= (apply!975 lt!477600 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1075690 () Bool)

(assert (=> b!1075690 (= e!614836 call!45562)))

(declare-fun b!1075691 () Bool)

(assert (=> b!1075691 (= e!614845 (= (apply!975 lt!477600 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1075692 () Bool)

(declare-fun res!717143 () Bool)

(assert (=> b!1075692 (=> (not res!717143) (not e!614839))))

(assert (=> b!1075692 (= res!717143 e!614838)))

(declare-fun c!108057 () Bool)

(assert (=> b!1075692 (= c!108057 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45564 () Bool)

(assert (=> bm!45564 (= call!45568 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1075693 () Bool)

(declare-fun c!108056 () Bool)

(assert (=> b!1075693 (= c!108056 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1075693 (= e!614835 e!614836)))

(declare-fun b!1075694 () Bool)

(declare-fun res!717138 () Bool)

(assert (=> b!1075694 (=> (not res!717138) (not e!614839))))

(declare-fun e!614833 () Bool)

(assert (=> b!1075694 (= res!717138 e!614833)))

(declare-fun res!717144 () Bool)

(assert (=> b!1075694 (=> res!717144 e!614833)))

(assert (=> b!1075694 (= res!717144 (not e!614834))))

(declare-fun res!717140 () Bool)

(assert (=> b!1075694 (=> (not res!717140) (not e!614834))))

(assert (=> b!1075694 (= res!717140 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075695 () Bool)

(assert (=> b!1075695 (= e!614839 e!614842)))

(declare-fun c!108058 () Bool)

(assert (=> b!1075695 (= c!108058 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45565 () Bool)

(assert (=> bm!45565 (= call!45565 (contains!6365 lt!477600 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1075696 () Bool)

(assert (=> b!1075696 (= e!614833 e!614837)))

(declare-fun res!717145 () Bool)

(assert (=> b!1075696 (=> (not res!717145) (not e!614837))))

(assert (=> b!1075696 (= res!717145 (contains!6365 lt!477600 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075696 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075697 () Bool)

(assert (=> b!1075697 (= e!614841 (+!3186 call!45564 (tuple2!16713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1075698 () Bool)

(assert (=> b!1075698 (= e!614842 (not call!45565))))

(assert (= (and d!129575 c!108060) b!1075697))

(assert (= (and d!129575 (not c!108060)) b!1075680))

(assert (= (and b!1075680 c!108059) b!1075682))

(assert (= (and b!1075680 (not c!108059)) b!1075693))

(assert (= (and b!1075693 c!108056) b!1075690))

(assert (= (and b!1075693 (not c!108056)) b!1075678))

(assert (= (or b!1075690 b!1075678) bm!45560))

(assert (= (or b!1075682 bm!45560) bm!45561))

(assert (= (or b!1075682 b!1075690) bm!45562))

(assert (= (or b!1075697 bm!45561) bm!45564))

(assert (= (or b!1075697 bm!45562) bm!45563))

(assert (= (and d!129575 res!717142) b!1075686))

(assert (= (and d!129575 c!108055) b!1075688))

(assert (= (and d!129575 (not c!108055)) b!1075684))

(assert (= (and d!129575 res!717137) b!1075694))

(assert (= (and b!1075694 res!717140) b!1075683))

(assert (= (and b!1075694 (not res!717144)) b!1075696))

(assert (= (and b!1075696 res!717145) b!1075681))

(assert (= (and b!1075694 res!717138) b!1075692))

(assert (= (and b!1075692 c!108057) b!1075685))

(assert (= (and b!1075692 (not c!108057)) b!1075687))

(assert (= (and b!1075685 res!717139) b!1075689))

(assert (= (or b!1075685 b!1075687) bm!45559))

(assert (= (and b!1075692 res!717143) b!1075695))

(assert (= (and b!1075695 c!108058) b!1075679))

(assert (= (and b!1075695 (not c!108058)) b!1075698))

(assert (= (and b!1075679 res!717141) b!1075691))

(assert (= (or b!1075679 b!1075698) bm!45565))

(declare-fun b_lambda!16933 () Bool)

(assert (=> (not b_lambda!16933) (not b!1075681)))

(assert (=> b!1075681 t!32650))

(declare-fun b_and!35181 () Bool)

(assert (= b_and!35179 (and (=> t!32650 result!14841) b_and!35181)))

(declare-fun m!994671 () Bool)

(assert (=> bm!45565 m!994671))

(assert (=> d!129575 m!994541))

(declare-fun m!994673 () Bool)

(assert (=> b!1075691 m!994673))

(assert (=> b!1075683 m!994595))

(assert (=> b!1075683 m!994595))

(assert (=> b!1075683 m!994597))

(declare-fun m!994675 () Bool)

(assert (=> b!1075689 m!994675))

(assert (=> b!1075686 m!994595))

(assert (=> b!1075686 m!994595))

(assert (=> b!1075686 m!994597))

(declare-fun m!994677 () Bool)

(assert (=> b!1075697 m!994677))

(declare-fun m!994679 () Bool)

(assert (=> bm!45563 m!994679))

(declare-fun m!994681 () Bool)

(assert (=> bm!45559 m!994681))

(assert (=> b!1075696 m!994595))

(assert (=> b!1075696 m!994595))

(declare-fun m!994683 () Bool)

(assert (=> b!1075696 m!994683))

(declare-fun m!994685 () Bool)

(assert (=> b!1075688 m!994685))

(declare-fun m!994687 () Bool)

(assert (=> b!1075688 m!994687))

(declare-fun m!994689 () Bool)

(assert (=> b!1075688 m!994689))

(declare-fun m!994691 () Bool)

(assert (=> b!1075688 m!994691))

(declare-fun m!994693 () Bool)

(assert (=> b!1075688 m!994693))

(declare-fun m!994695 () Bool)

(assert (=> b!1075688 m!994695))

(declare-fun m!994697 () Bool)

(assert (=> b!1075688 m!994697))

(declare-fun m!994699 () Bool)

(assert (=> b!1075688 m!994699))

(declare-fun m!994701 () Bool)

(assert (=> b!1075688 m!994701))

(assert (=> b!1075688 m!994595))

(assert (=> b!1075688 m!994687))

(assert (=> b!1075688 m!994699))

(declare-fun m!994703 () Bool)

(assert (=> b!1075688 m!994703))

(declare-fun m!994705 () Bool)

(assert (=> b!1075688 m!994705))

(assert (=> b!1075688 m!994697))

(declare-fun m!994707 () Bool)

(assert (=> b!1075688 m!994707))

(assert (=> b!1075688 m!994695))

(declare-fun m!994709 () Bool)

(assert (=> b!1075688 m!994709))

(assert (=> b!1075688 m!994557))

(declare-fun m!994711 () Bool)

(assert (=> b!1075688 m!994711))

(declare-fun m!994713 () Bool)

(assert (=> b!1075688 m!994713))

(assert (=> bm!45564 m!994557))

(assert (=> b!1075681 m!994639))

(assert (=> b!1075681 m!994641))

(assert (=> b!1075681 m!994643))

(assert (=> b!1075681 m!994595))

(declare-fun m!994715 () Bool)

(assert (=> b!1075681 m!994715))

(assert (=> b!1075681 m!994595))

(assert (=> b!1075681 m!994641))

(assert (=> b!1075681 m!994639))

(assert (=> b!1075574 d!129575))

(declare-fun b!1075709 () Bool)

(declare-fun e!614856 () Bool)

(declare-fun contains!6367 (List!23286 (_ BitVec 64)) Bool)

(assert (=> b!1075709 (= e!614856 (contains!6367 Nil!23283 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075710 () Bool)

(declare-fun e!614855 () Bool)

(declare-fun e!614857 () Bool)

(assert (=> b!1075710 (= e!614855 e!614857)))

(declare-fun c!108063 () Bool)

(assert (=> b!1075710 (= c!108063 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075711 () Bool)

(declare-fun call!45571 () Bool)

(assert (=> b!1075711 (= e!614857 call!45571)))

(declare-fun b!1075712 () Bool)

(declare-fun e!614854 () Bool)

(assert (=> b!1075712 (= e!614854 e!614855)))

(declare-fun res!717153 () Bool)

(assert (=> b!1075712 (=> (not res!717153) (not e!614855))))

(assert (=> b!1075712 (= res!717153 (not e!614856))))

(declare-fun res!717152 () Bool)

(assert (=> b!1075712 (=> (not res!717152) (not e!614856))))

(assert (=> b!1075712 (= res!717152 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129577 () Bool)

(declare-fun res!717154 () Bool)

(assert (=> d!129577 (=> res!717154 e!614854)))

(assert (=> d!129577 (= res!717154 (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> d!129577 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23283) e!614854)))

(declare-fun bm!45568 () Bool)

(assert (=> bm!45568 (= call!45571 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108063 (Cons!23282 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000) Nil!23283) Nil!23283)))))

(declare-fun b!1075713 () Bool)

(assert (=> b!1075713 (= e!614857 call!45571)))

(assert (= (and d!129577 (not res!717154)) b!1075712))

(assert (= (and b!1075712 res!717152) b!1075709))

(assert (= (and b!1075712 res!717153) b!1075710))

(assert (= (and b!1075710 c!108063) b!1075711))

(assert (= (and b!1075710 (not c!108063)) b!1075713))

(assert (= (or b!1075711 b!1075713) bm!45568))

(assert (=> b!1075709 m!994595))

(assert (=> b!1075709 m!994595))

(declare-fun m!994717 () Bool)

(assert (=> b!1075709 m!994717))

(assert (=> b!1075710 m!994595))

(assert (=> b!1075710 m!994595))

(assert (=> b!1075710 m!994597))

(assert (=> b!1075712 m!994595))

(assert (=> b!1075712 m!994595))

(assert (=> b!1075712 m!994597))

(assert (=> bm!45568 m!994595))

(declare-fun m!994719 () Bool)

(assert (=> bm!45568 m!994719))

(assert (=> b!1075576 d!129577))

(declare-fun b!1075722 () Bool)

(declare-fun e!614866 () Bool)

(declare-fun e!614865 () Bool)

(assert (=> b!1075722 (= e!614866 e!614865)))

(declare-fun lt!477620 () (_ BitVec 64))

(assert (=> b!1075722 (= lt!477620 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!477618 () Unit!35358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68984 (_ BitVec 64) (_ BitVec 32)) Unit!35358)

(assert (=> b!1075722 (= lt!477618 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!477620 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1075722 (arrayContainsKey!0 _keys!1163 lt!477620 #b00000000000000000000000000000000)))

(declare-fun lt!477619 () Unit!35358)

(assert (=> b!1075722 (= lt!477619 lt!477618)))

(declare-fun res!717160 () Bool)

(declare-datatypes ((SeekEntryResult!9890 0))(
  ( (MissingZero!9890 (index!41930 (_ BitVec 32))) (Found!9890 (index!41931 (_ BitVec 32))) (Intermediate!9890 (undefined!10702 Bool) (index!41932 (_ BitVec 32)) (x!96394 (_ BitVec 32))) (Undefined!9890) (MissingVacant!9890 (index!41933 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68984 (_ BitVec 32)) SeekEntryResult!9890)

(assert (=> b!1075722 (= res!717160 (= (seekEntryOrOpen!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9890 #b00000000000000000000000000000000)))))

(assert (=> b!1075722 (=> (not res!717160) (not e!614865))))

(declare-fun d!129579 () Bool)

(declare-fun res!717159 () Bool)

(declare-fun e!614864 () Bool)

(assert (=> d!129579 (=> res!717159 e!614864)))

(assert (=> d!129579 (= res!717159 (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> d!129579 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!614864)))

(declare-fun b!1075723 () Bool)

(declare-fun call!45574 () Bool)

(assert (=> b!1075723 (= e!614866 call!45574)))

(declare-fun b!1075724 () Bool)

(assert (=> b!1075724 (= e!614865 call!45574)))

(declare-fun b!1075725 () Bool)

(assert (=> b!1075725 (= e!614864 e!614866)))

(declare-fun c!108066 () Bool)

(assert (=> b!1075725 (= c!108066 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45571 () Bool)

(assert (=> bm!45571 (= call!45574 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(assert (= (and d!129579 (not res!717159)) b!1075725))

(assert (= (and b!1075725 c!108066) b!1075722))

(assert (= (and b!1075725 (not c!108066)) b!1075723))

(assert (= (and b!1075722 res!717160) b!1075724))

(assert (= (or b!1075724 b!1075723) bm!45571))

(assert (=> b!1075722 m!994595))

(declare-fun m!994721 () Bool)

(assert (=> b!1075722 m!994721))

(declare-fun m!994723 () Bool)

(assert (=> b!1075722 m!994723))

(assert (=> b!1075722 m!994595))

(declare-fun m!994725 () Bool)

(assert (=> b!1075722 m!994725))

(assert (=> b!1075725 m!994595))

(assert (=> b!1075725 m!994595))

(assert (=> b!1075725 m!994597))

(declare-fun m!994727 () Bool)

(assert (=> bm!45571 m!994727))

(assert (=> b!1075580 d!129579))

(declare-fun d!129581 () Bool)

(assert (=> d!129581 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95194 d!129581))

(declare-fun d!129583 () Bool)

(assert (=> d!129583 (= (array_inv!25488 _values!955) (bvsge (size!33710 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95194 d!129583))

(declare-fun d!129585 () Bool)

(assert (=> d!129585 (= (array_inv!25489 _keys!1163) (bvsge (size!33711 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95194 d!129585))

(declare-fun d!129587 () Bool)

(assert (=> d!129587 (= (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!477623 () Unit!35358)

(declare-fun choose!1762 (array!68984 array!68982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39835 V!39835 V!39835 V!39835 (_ BitVec 32) Int) Unit!35358)

(assert (=> d!129587 (= lt!477623 (choose!1762 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129587 (validMask!0 mask!1515)))

(assert (=> d!129587 (= (lemmaNoChangeToArrayThenSameMapNoExtras!906 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477623)))

(declare-fun bs!31685 () Bool)

(assert (= bs!31685 d!129587))

(assert (=> bs!31685 m!994559))

(assert (=> bs!31685 m!994557))

(declare-fun m!994729 () Bool)

(assert (=> bs!31685 m!994729))

(assert (=> bs!31685 m!994541))

(assert (=> b!1075578 d!129587))

(declare-fun bm!45574 () Bool)

(declare-fun call!45577 () ListLongMap!14693)

(assert (=> bm!45574 (= call!45577 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075750 () Bool)

(declare-fun e!614884 () ListLongMap!14693)

(assert (=> b!1075750 (= e!614884 (ListLongMap!14694 Nil!23282))))

(declare-fun b!1075751 () Bool)

(declare-fun e!614881 () ListLongMap!14693)

(assert (=> b!1075751 (= e!614884 e!614881)))

(declare-fun c!108075 () Bool)

(assert (=> b!1075751 (= c!108075 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075752 () Bool)

(declare-fun lt!477642 () Unit!35358)

(declare-fun lt!477640 () Unit!35358)

(assert (=> b!1075752 (= lt!477642 lt!477640)))

(declare-fun lt!477641 () (_ BitVec 64))

(declare-fun lt!477638 () ListLongMap!14693)

(declare-fun lt!477643 () V!39835)

(declare-fun lt!477644 () (_ BitVec 64))

(assert (=> b!1075752 (not (contains!6365 (+!3186 lt!477638 (tuple2!16713 lt!477641 lt!477643)) lt!477644))))

(declare-fun addStillNotContains!270 (ListLongMap!14693 (_ BitVec 64) V!39835 (_ BitVec 64)) Unit!35358)

(assert (=> b!1075752 (= lt!477640 (addStillNotContains!270 lt!477638 lt!477641 lt!477643 lt!477644))))

(assert (=> b!1075752 (= lt!477644 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075752 (= lt!477643 (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075752 (= lt!477641 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075752 (= lt!477638 call!45577)))

(assert (=> b!1075752 (= e!614881 (+!3186 call!45577 (tuple2!16713 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!129589 () Bool)

(declare-fun e!614882 () Bool)

(assert (=> d!129589 e!614882))

(declare-fun res!717170 () Bool)

(assert (=> d!129589 (=> (not res!717170) (not e!614882))))

(declare-fun lt!477639 () ListLongMap!14693)

(assert (=> d!129589 (= res!717170 (not (contains!6365 lt!477639 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129589 (= lt!477639 e!614884)))

(declare-fun c!108078 () Bool)

(assert (=> d!129589 (= c!108078 (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> d!129589 (validMask!0 mask!1515)))

(assert (=> d!129589 (= (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477639)))

(declare-fun b!1075753 () Bool)

(assert (=> b!1075753 (= e!614881 call!45577)))

(declare-fun b!1075754 () Bool)

(declare-fun e!614885 () Bool)

(assert (=> b!1075754 (= e!614882 e!614885)))

(declare-fun c!108076 () Bool)

(declare-fun e!614887 () Bool)

(assert (=> b!1075754 (= c!108076 e!614887)))

(declare-fun res!717172 () Bool)

(assert (=> b!1075754 (=> (not res!717172) (not e!614887))))

(assert (=> b!1075754 (= res!717172 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075755 () Bool)

(declare-fun e!614886 () Bool)

(declare-fun isEmpty!961 (ListLongMap!14693) Bool)

(assert (=> b!1075755 (= e!614886 (isEmpty!961 lt!477639))))

(declare-fun b!1075756 () Bool)

(assert (=> b!1075756 (= e!614885 e!614886)))

(declare-fun c!108077 () Bool)

(assert (=> b!1075756 (= c!108077 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075757 () Bool)

(assert (=> b!1075757 (= e!614887 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075757 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075758 () Bool)

(assert (=> b!1075758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> b!1075758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33710 _values!955)))))

(declare-fun e!614883 () Bool)

(assert (=> b!1075758 (= e!614883 (= (apply!975 lt!477639 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075759 () Bool)

(assert (=> b!1075759 (= e!614886 (= lt!477639 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075760 () Bool)

(declare-fun res!717169 () Bool)

(assert (=> b!1075760 (=> (not res!717169) (not e!614882))))

(assert (=> b!1075760 (= res!717169 (not (contains!6365 lt!477639 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075761 () Bool)

(assert (=> b!1075761 (= e!614885 e!614883)))

(assert (=> b!1075761 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun res!717171 () Bool)

(assert (=> b!1075761 (= res!717171 (contains!6365 lt!477639 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075761 (=> (not res!717171) (not e!614883))))

(assert (= (and d!129589 c!108078) b!1075750))

(assert (= (and d!129589 (not c!108078)) b!1075751))

(assert (= (and b!1075751 c!108075) b!1075752))

(assert (= (and b!1075751 (not c!108075)) b!1075753))

(assert (= (or b!1075752 b!1075753) bm!45574))

(assert (= (and d!129589 res!717170) b!1075760))

(assert (= (and b!1075760 res!717169) b!1075754))

(assert (= (and b!1075754 res!717172) b!1075757))

(assert (= (and b!1075754 c!108076) b!1075761))

(assert (= (and b!1075754 (not c!108076)) b!1075756))

(assert (= (and b!1075761 res!717171) b!1075758))

(assert (= (and b!1075756 c!108077) b!1075759))

(assert (= (and b!1075756 (not c!108077)) b!1075755))

(declare-fun b_lambda!16935 () Bool)

(assert (=> (not b_lambda!16935) (not b!1075752)))

(assert (=> b!1075752 t!32650))

(declare-fun b_and!35183 () Bool)

(assert (= b_and!35181 (and (=> t!32650 result!14841) b_and!35183)))

(declare-fun b_lambda!16937 () Bool)

(assert (=> (not b_lambda!16937) (not b!1075758)))

(assert (=> b!1075758 t!32650))

(declare-fun b_and!35185 () Bool)

(assert (= b_and!35183 (and (=> t!32650 result!14841) b_and!35185)))

(assert (=> b!1075758 m!994639))

(assert (=> b!1075758 m!994639))

(assert (=> b!1075758 m!994641))

(assert (=> b!1075758 m!994643))

(assert (=> b!1075758 m!994641))

(assert (=> b!1075758 m!994595))

(assert (=> b!1075758 m!994595))

(declare-fun m!994731 () Bool)

(assert (=> b!1075758 m!994731))

(declare-fun m!994733 () Bool)

(assert (=> bm!45574 m!994733))

(assert (=> b!1075759 m!994733))

(assert (=> b!1075757 m!994595))

(assert (=> b!1075757 m!994595))

(assert (=> b!1075757 m!994597))

(declare-fun m!994735 () Bool)

(assert (=> b!1075760 m!994735))

(assert (=> b!1075761 m!994595))

(assert (=> b!1075761 m!994595))

(declare-fun m!994737 () Bool)

(assert (=> b!1075761 m!994737))

(declare-fun m!994739 () Bool)

(assert (=> d!129589 m!994739))

(assert (=> d!129589 m!994541))

(declare-fun m!994741 () Bool)

(assert (=> b!1075755 m!994741))

(assert (=> b!1075752 m!994639))

(assert (=> b!1075752 m!994641))

(assert (=> b!1075752 m!994643))

(declare-fun m!994743 () Bool)

(assert (=> b!1075752 m!994743))

(declare-fun m!994745 () Bool)

(assert (=> b!1075752 m!994745))

(declare-fun m!994747 () Bool)

(assert (=> b!1075752 m!994747))

(assert (=> b!1075752 m!994641))

(assert (=> b!1075752 m!994595))

(declare-fun m!994749 () Bool)

(assert (=> b!1075752 m!994749))

(assert (=> b!1075752 m!994639))

(assert (=> b!1075752 m!994743))

(assert (=> b!1075751 m!994595))

(assert (=> b!1075751 m!994595))

(assert (=> b!1075751 m!994597))

(assert (=> b!1075578 d!129589))

(declare-fun call!45578 () ListLongMap!14693)

(declare-fun bm!45575 () Bool)

(assert (=> bm!45575 (= call!45578 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1075762 () Bool)

(declare-fun e!614891 () ListLongMap!14693)

(assert (=> b!1075762 (= e!614891 (ListLongMap!14694 Nil!23282))))

(declare-fun b!1075763 () Bool)

(declare-fun e!614888 () ListLongMap!14693)

(assert (=> b!1075763 (= e!614891 e!614888)))

(declare-fun c!108079 () Bool)

(assert (=> b!1075763 (= c!108079 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1075764 () Bool)

(declare-fun lt!477649 () Unit!35358)

(declare-fun lt!477647 () Unit!35358)

(assert (=> b!1075764 (= lt!477649 lt!477647)))

(declare-fun lt!477650 () V!39835)

(declare-fun lt!477648 () (_ BitVec 64))

(declare-fun lt!477645 () ListLongMap!14693)

(declare-fun lt!477651 () (_ BitVec 64))

(assert (=> b!1075764 (not (contains!6365 (+!3186 lt!477645 (tuple2!16713 lt!477648 lt!477650)) lt!477651))))

(assert (=> b!1075764 (= lt!477647 (addStillNotContains!270 lt!477645 lt!477648 lt!477650 lt!477651))))

(assert (=> b!1075764 (= lt!477651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1075764 (= lt!477650 (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1075764 (= lt!477648 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1075764 (= lt!477645 call!45578)))

(assert (=> b!1075764 (= e!614888 (+!3186 call!45578 (tuple2!16713 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!129591 () Bool)

(declare-fun e!614889 () Bool)

(assert (=> d!129591 e!614889))

(declare-fun res!717174 () Bool)

(assert (=> d!129591 (=> (not res!717174) (not e!614889))))

(declare-fun lt!477646 () ListLongMap!14693)

(assert (=> d!129591 (= res!717174 (not (contains!6365 lt!477646 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129591 (= lt!477646 e!614891)))

(declare-fun c!108082 () Bool)

(assert (=> d!129591 (= c!108082 (bvsge #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> d!129591 (validMask!0 mask!1515)))

(assert (=> d!129591 (= (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!477646)))

(declare-fun b!1075765 () Bool)

(assert (=> b!1075765 (= e!614888 call!45578)))

(declare-fun b!1075766 () Bool)

(declare-fun e!614892 () Bool)

(assert (=> b!1075766 (= e!614889 e!614892)))

(declare-fun c!108080 () Bool)

(declare-fun e!614894 () Bool)

(assert (=> b!1075766 (= c!108080 e!614894)))

(declare-fun res!717176 () Bool)

(assert (=> b!1075766 (=> (not res!717176) (not e!614894))))

(assert (=> b!1075766 (= res!717176 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075767 () Bool)

(declare-fun e!614893 () Bool)

(assert (=> b!1075767 (= e!614893 (isEmpty!961 lt!477646))))

(declare-fun b!1075768 () Bool)

(assert (=> b!1075768 (= e!614892 e!614893)))

(declare-fun c!108081 () Bool)

(assert (=> b!1075768 (= c!108081 (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun b!1075769 () Bool)

(assert (=> b!1075769 (= e!614894 (validKeyInArray!0 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075769 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1075770 () Bool)

(assert (=> b!1075770 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(assert (=> b!1075770 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33710 _values!955)))))

(declare-fun e!614890 () Bool)

(assert (=> b!1075770 (= e!614890 (= (apply!975 lt!477646 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)) (get!17251 (select (arr!33173 _values!955) #b00000000000000000000000000000000) (dynLambda!2051 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1075771 () Bool)

(assert (=> b!1075771 (= e!614893 (= lt!477646 (getCurrentListMapNoExtraKeys!3887 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1075772 () Bool)

(declare-fun res!717173 () Bool)

(assert (=> b!1075772 (=> (not res!717173) (not e!614889))))

(assert (=> b!1075772 (= res!717173 (not (contains!6365 lt!477646 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1075773 () Bool)

(assert (=> b!1075773 (= e!614892 e!614890)))

(assert (=> b!1075773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33711 _keys!1163)))))

(declare-fun res!717175 () Bool)

(assert (=> b!1075773 (= res!717175 (contains!6365 lt!477646 (select (arr!33174 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1075773 (=> (not res!717175) (not e!614890))))

(assert (= (and d!129591 c!108082) b!1075762))

(assert (= (and d!129591 (not c!108082)) b!1075763))

(assert (= (and b!1075763 c!108079) b!1075764))

(assert (= (and b!1075763 (not c!108079)) b!1075765))

(assert (= (or b!1075764 b!1075765) bm!45575))

(assert (= (and d!129591 res!717174) b!1075772))

(assert (= (and b!1075772 res!717173) b!1075766))

(assert (= (and b!1075766 res!717176) b!1075769))

(assert (= (and b!1075766 c!108080) b!1075773))

(assert (= (and b!1075766 (not c!108080)) b!1075768))

(assert (= (and b!1075773 res!717175) b!1075770))

(assert (= (and b!1075768 c!108081) b!1075771))

(assert (= (and b!1075768 (not c!108081)) b!1075767))

(declare-fun b_lambda!16939 () Bool)

(assert (=> (not b_lambda!16939) (not b!1075764)))

(assert (=> b!1075764 t!32650))

(declare-fun b_and!35187 () Bool)

(assert (= b_and!35185 (and (=> t!32650 result!14841) b_and!35187)))

(declare-fun b_lambda!16941 () Bool)

(assert (=> (not b_lambda!16941) (not b!1075770)))

(assert (=> b!1075770 t!32650))

(declare-fun b_and!35189 () Bool)

(assert (= b_and!35187 (and (=> t!32650 result!14841) b_and!35189)))

(assert (=> b!1075770 m!994639))

(assert (=> b!1075770 m!994639))

(assert (=> b!1075770 m!994641))

(assert (=> b!1075770 m!994643))

(assert (=> b!1075770 m!994641))

(assert (=> b!1075770 m!994595))

(assert (=> b!1075770 m!994595))

(declare-fun m!994751 () Bool)

(assert (=> b!1075770 m!994751))

(declare-fun m!994753 () Bool)

(assert (=> bm!45575 m!994753))

(assert (=> b!1075771 m!994753))

(assert (=> b!1075769 m!994595))

(assert (=> b!1075769 m!994595))

(assert (=> b!1075769 m!994597))

(declare-fun m!994755 () Bool)

(assert (=> b!1075772 m!994755))

(assert (=> b!1075773 m!994595))

(assert (=> b!1075773 m!994595))

(declare-fun m!994757 () Bool)

(assert (=> b!1075773 m!994757))

(declare-fun m!994759 () Bool)

(assert (=> d!129591 m!994759))

(assert (=> d!129591 m!994541))

(declare-fun m!994761 () Bool)

(assert (=> b!1075767 m!994761))

(assert (=> b!1075764 m!994639))

(assert (=> b!1075764 m!994641))

(assert (=> b!1075764 m!994643))

(declare-fun m!994763 () Bool)

(assert (=> b!1075764 m!994763))

(declare-fun m!994765 () Bool)

(assert (=> b!1075764 m!994765))

(declare-fun m!994767 () Bool)

(assert (=> b!1075764 m!994767))

(assert (=> b!1075764 m!994641))

(assert (=> b!1075764 m!994595))

(declare-fun m!994769 () Bool)

(assert (=> b!1075764 m!994769))

(assert (=> b!1075764 m!994639))

(assert (=> b!1075764 m!994763))

(assert (=> b!1075763 m!994595))

(assert (=> b!1075763 m!994595))

(assert (=> b!1075763 m!994597))

(assert (=> b!1075578 d!129591))

(declare-fun mapIsEmpty!40780 () Bool)

(declare-fun mapRes!40780 () Bool)

(assert (=> mapIsEmpty!40780 mapRes!40780))

(declare-fun condMapEmpty!40780 () Bool)

(declare-fun mapDefault!40780 () ValueCell!12309)

(assert (=> mapNonEmpty!40774 (= condMapEmpty!40780 (= mapRest!40774 ((as const (Array (_ BitVec 32) ValueCell!12309)) mapDefault!40780)))))

(declare-fun e!614899 () Bool)

(assert (=> mapNonEmpty!40774 (= tp!78134 (and e!614899 mapRes!40780))))

(declare-fun b!1075781 () Bool)

(assert (=> b!1075781 (= e!614899 tp_is_empty!26025)))

(declare-fun b!1075780 () Bool)

(declare-fun e!614900 () Bool)

(assert (=> b!1075780 (= e!614900 tp_is_empty!26025)))

(declare-fun mapNonEmpty!40780 () Bool)

(declare-fun tp!78144 () Bool)

(assert (=> mapNonEmpty!40780 (= mapRes!40780 (and tp!78144 e!614900))))

(declare-fun mapKey!40780 () (_ BitVec 32))

(declare-fun mapRest!40780 () (Array (_ BitVec 32) ValueCell!12309))

(declare-fun mapValue!40780 () ValueCell!12309)

(assert (=> mapNonEmpty!40780 (= mapRest!40774 (store mapRest!40780 mapKey!40780 mapValue!40780))))

(assert (= (and mapNonEmpty!40774 condMapEmpty!40780) mapIsEmpty!40780))

(assert (= (and mapNonEmpty!40774 (not condMapEmpty!40780)) mapNonEmpty!40780))

(assert (= (and mapNonEmpty!40780 ((_ is ValueCellFull!12309) mapValue!40780)) b!1075780))

(assert (= (and mapNonEmpty!40774 ((_ is ValueCellFull!12309) mapDefault!40780)) b!1075781))

(declare-fun m!994771 () Bool)

(assert (=> mapNonEmpty!40780 m!994771))

(declare-fun b_lambda!16943 () Bool)

(assert (= b_lambda!16931 (or (and start!95194 b_free!22215) b_lambda!16943)))

(declare-fun b_lambda!16945 () Bool)

(assert (= b_lambda!16933 (or (and start!95194 b_free!22215) b_lambda!16945)))

(declare-fun b_lambda!16947 () Bool)

(assert (= b_lambda!16935 (or (and start!95194 b_free!22215) b_lambda!16947)))

(declare-fun b_lambda!16949 () Bool)

(assert (= b_lambda!16941 (or (and start!95194 b_free!22215) b_lambda!16949)))

(declare-fun b_lambda!16951 () Bool)

(assert (= b_lambda!16937 (or (and start!95194 b_free!22215) b_lambda!16951)))

(declare-fun b_lambda!16953 () Bool)

(assert (= b_lambda!16939 (or (and start!95194 b_free!22215) b_lambda!16953)))

(check-sat (not b!1075660) (not bm!45558) (not b!1075763) (not b!1075655) (not b!1075712) (not b!1075770) (not b_lambda!16947) (not b!1075676) (not b!1075697) (not b!1075761) (not b_next!22215) (not mapNonEmpty!40780) (not b!1075677) (not bm!45556) (not b!1075751) (not bm!45563) (not b!1075689) (not b!1075760) (not b!1075709) (not d!129587) (not b!1075710) (not d!129575) (not bm!45557) (not b!1075675) (not bm!45568) (not b_lambda!16951) (not b!1075657) (not b!1075688) (not bm!45559) (not b!1075650) (not bm!45571) (not b_lambda!16943) (not b!1075725) (not b!1075769) (not b!1075658) (not b!1075683) (not d!129569) (not b!1075752) (not b!1075759) (not d!129573) (not b!1075755) (not b!1075691) (not b!1075652) (not d!129591) (not bm!45574) (not b!1075686) (not b!1075773) (not b!1075696) (not b!1075764) (not b!1075772) (not bm!45575) tp_is_empty!26025 (not b!1075722) (not b_lambda!16949) (not b!1075681) (not b!1075665) (not b!1075674) (not d!129589) (not bm!45564) (not b!1075758) (not bm!45552) (not d!129571) (not b!1075771) (not bm!45565) b_and!35189 (not b!1075767) (not b_lambda!16953) (not b!1075666) (not b_lambda!16945) (not b!1075757))
(check-sat b_and!35189 (not b_next!22215))
