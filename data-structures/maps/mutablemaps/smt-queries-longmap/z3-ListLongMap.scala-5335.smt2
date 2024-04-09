; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71296 () Bool)

(assert start!71296)

(declare-fun b_free!13419 () Bool)

(declare-fun b_next!13419 () Bool)

(assert (=> start!71296 (= b_free!13419 (not b_next!13419))))

(declare-fun tp!47019 () Bool)

(declare-fun b_and!22375 () Bool)

(assert (=> start!71296 (= tp!47019 b_and!22375)))

(declare-fun mapIsEmpty!24322 () Bool)

(declare-fun mapRes!24322 () Bool)

(assert (=> mapIsEmpty!24322 mapRes!24322))

(declare-fun res!564221 () Bool)

(declare-fun e!461172 () Bool)

(assert (=> start!71296 (=> (not res!564221) (not e!461172))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71296 (= res!564221 (validMask!0 mask!1312))))

(assert (=> start!71296 e!461172))

(declare-fun tp_is_empty!15129 () Bool)

(assert (=> start!71296 tp_is_empty!15129))

(declare-datatypes ((array!46392 0))(
  ( (array!46393 (arr!22236 (Array (_ BitVec 32) (_ BitVec 64))) (size!22657 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46392)

(declare-fun array_inv!17699 (array!46392) Bool)

(assert (=> start!71296 (array_inv!17699 _keys!976)))

(assert (=> start!71296 true))

(declare-datatypes ((V!25173 0))(
  ( (V!25174 (val!7612 Int)) )
))
(declare-datatypes ((ValueCell!7149 0))(
  ( (ValueCellFull!7149 (v!10043 V!25173)) (EmptyCell!7149) )
))
(declare-datatypes ((array!46394 0))(
  ( (array!46395 (arr!22237 (Array (_ BitVec 32) ValueCell!7149)) (size!22658 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46394)

(declare-fun e!461173 () Bool)

(declare-fun array_inv!17700 (array!46394) Bool)

(assert (=> start!71296 (and (array_inv!17700 _values!788) e!461173)))

(assert (=> start!71296 tp!47019))

(declare-fun b!827689 () Bool)

(declare-fun res!564223 () Bool)

(assert (=> b!827689 (=> (not res!564223) (not e!461172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46392 (_ BitVec 32)) Bool)

(assert (=> b!827689 (= res!564223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827690 () Bool)

(declare-fun e!461175 () Bool)

(assert (=> b!827690 (= e!461175 tp_is_empty!15129)))

(declare-fun b!827691 () Bool)

(assert (=> b!827691 (= e!461172 (bvsgt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun zeroValueAfter!34 () V!25173)

(declare-fun minValue!754 () V!25173)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10106 0))(
  ( (tuple2!10107 (_1!5063 (_ BitVec 64)) (_2!5063 V!25173)) )
))
(declare-datatypes ((List!15943 0))(
  ( (Nil!15940) (Cons!15939 (h!17068 tuple2!10106) (t!22300 List!15943)) )
))
(declare-datatypes ((ListLongMap!8943 0))(
  ( (ListLongMap!8944 (toList!4487 List!15943)) )
))
(declare-fun lt!374967 () ListLongMap!8943)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2494 (array!46392 array!46394 (_ BitVec 32) (_ BitVec 32) V!25173 V!25173 (_ BitVec 32) Int) ListLongMap!8943)

(assert (=> b!827691 (= lt!374967 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25173)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374968 () ListLongMap!8943)

(assert (=> b!827691 (= lt!374968 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827692 () Bool)

(declare-fun res!564222 () Bool)

(assert (=> b!827692 (=> (not res!564222) (not e!461172))))

(assert (=> b!827692 (= res!564222 (and (= (size!22658 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22657 _keys!976) (size!22658 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827693 () Bool)

(declare-fun res!564220 () Bool)

(assert (=> b!827693 (=> (not res!564220) (not e!461172))))

(declare-datatypes ((List!15944 0))(
  ( (Nil!15941) (Cons!15940 (h!17069 (_ BitVec 64)) (t!22301 List!15944)) )
))
(declare-fun arrayNoDuplicates!0 (array!46392 (_ BitVec 32) List!15944) Bool)

(assert (=> b!827693 (= res!564220 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15941))))

(declare-fun b!827694 () Bool)

(assert (=> b!827694 (= e!461173 (and e!461175 mapRes!24322))))

(declare-fun condMapEmpty!24322 () Bool)

(declare-fun mapDefault!24322 () ValueCell!7149)

(assert (=> b!827694 (= condMapEmpty!24322 (= (arr!22237 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7149)) mapDefault!24322)))))

(declare-fun mapNonEmpty!24322 () Bool)

(declare-fun tp!47020 () Bool)

(declare-fun e!461176 () Bool)

(assert (=> mapNonEmpty!24322 (= mapRes!24322 (and tp!47020 e!461176))))

(declare-fun mapRest!24322 () (Array (_ BitVec 32) ValueCell!7149))

(declare-fun mapValue!24322 () ValueCell!7149)

(declare-fun mapKey!24322 () (_ BitVec 32))

(assert (=> mapNonEmpty!24322 (= (arr!22237 _values!788) (store mapRest!24322 mapKey!24322 mapValue!24322))))

(declare-fun b!827695 () Bool)

(assert (=> b!827695 (= e!461176 tp_is_empty!15129)))

(assert (= (and start!71296 res!564221) b!827692))

(assert (= (and b!827692 res!564222) b!827689))

(assert (= (and b!827689 res!564223) b!827693))

(assert (= (and b!827693 res!564220) b!827691))

(assert (= (and b!827694 condMapEmpty!24322) mapIsEmpty!24322))

(assert (= (and b!827694 (not condMapEmpty!24322)) mapNonEmpty!24322))

(get-info :version)

(assert (= (and mapNonEmpty!24322 ((_ is ValueCellFull!7149) mapValue!24322)) b!827695))

(assert (= (and b!827694 ((_ is ValueCellFull!7149) mapDefault!24322)) b!827690))

(assert (= start!71296 b!827694))

(declare-fun m!770765 () Bool)

(assert (=> b!827693 m!770765))

(declare-fun m!770767 () Bool)

(assert (=> mapNonEmpty!24322 m!770767))

(declare-fun m!770769 () Bool)

(assert (=> start!71296 m!770769))

(declare-fun m!770771 () Bool)

(assert (=> start!71296 m!770771))

(declare-fun m!770773 () Bool)

(assert (=> start!71296 m!770773))

(declare-fun m!770775 () Bool)

(assert (=> b!827689 m!770775))

(declare-fun m!770777 () Bool)

(assert (=> b!827691 m!770777))

(declare-fun m!770779 () Bool)

(assert (=> b!827691 m!770779))

(check-sat b_and!22375 tp_is_empty!15129 (not b!827693) (not mapNonEmpty!24322) (not b_next!13419) (not b!827689) (not b!827691) (not start!71296))
(check-sat b_and!22375 (not b_next!13419))
(get-model)

(declare-fun bm!35946 () Bool)

(declare-fun call!35949 () Bool)

(declare-fun c!89440 () Bool)

(assert (=> bm!35946 (= call!35949 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89440 (Cons!15940 (select (arr!22236 _keys!976) #b00000000000000000000000000000000) Nil!15941) Nil!15941)))))

(declare-fun b!827727 () Bool)

(declare-fun e!461202 () Bool)

(assert (=> b!827727 (= e!461202 call!35949)))

(declare-fun d!105051 () Bool)

(declare-fun res!564243 () Bool)

(declare-fun e!461200 () Bool)

(assert (=> d!105051 (=> res!564243 e!461200)))

(assert (=> d!105051 (= res!564243 (bvsge #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> d!105051 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15941) e!461200)))

(declare-fun b!827728 () Bool)

(assert (=> b!827728 (= e!461202 call!35949)))

(declare-fun b!827729 () Bool)

(declare-fun e!461201 () Bool)

(assert (=> b!827729 (= e!461200 e!461201)))

(declare-fun res!564244 () Bool)

(assert (=> b!827729 (=> (not res!564244) (not e!461201))))

(declare-fun e!461203 () Bool)

(assert (=> b!827729 (= res!564244 (not e!461203))))

(declare-fun res!564242 () Bool)

(assert (=> b!827729 (=> (not res!564242) (not e!461203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!827729 (= res!564242 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827730 () Bool)

(declare-fun contains!4185 (List!15944 (_ BitVec 64)) Bool)

(assert (=> b!827730 (= e!461203 (contains!4185 Nil!15941 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827731 () Bool)

(assert (=> b!827731 (= e!461201 e!461202)))

(assert (=> b!827731 (= c!89440 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105051 (not res!564243)) b!827729))

(assert (= (and b!827729 res!564242) b!827730))

(assert (= (and b!827729 res!564244) b!827731))

(assert (= (and b!827731 c!89440) b!827727))

(assert (= (and b!827731 (not c!89440)) b!827728))

(assert (= (or b!827727 b!827728) bm!35946))

(declare-fun m!770797 () Bool)

(assert (=> bm!35946 m!770797))

(declare-fun m!770799 () Bool)

(assert (=> bm!35946 m!770799))

(assert (=> b!827729 m!770797))

(assert (=> b!827729 m!770797))

(declare-fun m!770801 () Bool)

(assert (=> b!827729 m!770801))

(assert (=> b!827730 m!770797))

(assert (=> b!827730 m!770797))

(declare-fun m!770803 () Bool)

(assert (=> b!827730 m!770803))

(assert (=> b!827731 m!770797))

(assert (=> b!827731 m!770797))

(assert (=> b!827731 m!770801))

(assert (=> b!827693 d!105051))

(declare-fun b!827740 () Bool)

(declare-fun e!461210 () Bool)

(declare-fun e!461212 () Bool)

(assert (=> b!827740 (= e!461210 e!461212)))

(declare-fun c!89443 () Bool)

(assert (=> b!827740 (= c!89443 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827741 () Bool)

(declare-fun call!35952 () Bool)

(assert (=> b!827741 (= e!461212 call!35952)))

(declare-fun d!105053 () Bool)

(declare-fun res!564250 () Bool)

(assert (=> d!105053 (=> res!564250 e!461210)))

(assert (=> d!105053 (= res!564250 (bvsge #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> d!105053 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!461210)))

(declare-fun bm!35949 () Bool)

(assert (=> bm!35949 (= call!35952 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!827742 () Bool)

(declare-fun e!461211 () Bool)

(assert (=> b!827742 (= e!461211 call!35952)))

(declare-fun b!827743 () Bool)

(assert (=> b!827743 (= e!461212 e!461211)))

(declare-fun lt!374983 () (_ BitVec 64))

(assert (=> b!827743 (= lt!374983 (select (arr!22236 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!28363 0))(
  ( (Unit!28364) )
))
(declare-fun lt!374982 () Unit!28363)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46392 (_ BitVec 64) (_ BitVec 32)) Unit!28363)

(assert (=> b!827743 (= lt!374982 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!374983 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!827743 (arrayContainsKey!0 _keys!976 lt!374983 #b00000000000000000000000000000000)))

(declare-fun lt!374981 () Unit!28363)

(assert (=> b!827743 (= lt!374981 lt!374982)))

(declare-fun res!564249 () Bool)

(declare-datatypes ((SeekEntryResult!8725 0))(
  ( (MissingZero!8725 (index!37270 (_ BitVec 32))) (Found!8725 (index!37271 (_ BitVec 32))) (Intermediate!8725 (undefined!9537 Bool) (index!37272 (_ BitVec 32)) (x!69891 (_ BitVec 32))) (Undefined!8725) (MissingVacant!8725 (index!37273 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46392 (_ BitVec 32)) SeekEntryResult!8725)

(assert (=> b!827743 (= res!564249 (= (seekEntryOrOpen!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8725 #b00000000000000000000000000000000)))))

(assert (=> b!827743 (=> (not res!564249) (not e!461211))))

(assert (= (and d!105053 (not res!564250)) b!827740))

(assert (= (and b!827740 c!89443) b!827743))

(assert (= (and b!827740 (not c!89443)) b!827741))

(assert (= (and b!827743 res!564249) b!827742))

(assert (= (or b!827742 b!827741) bm!35949))

(assert (=> b!827740 m!770797))

(assert (=> b!827740 m!770797))

(assert (=> b!827740 m!770801))

(declare-fun m!770805 () Bool)

(assert (=> bm!35949 m!770805))

(assert (=> b!827743 m!770797))

(declare-fun m!770807 () Bool)

(assert (=> b!827743 m!770807))

(declare-fun m!770809 () Bool)

(assert (=> b!827743 m!770809))

(assert (=> b!827743 m!770797))

(declare-fun m!770811 () Bool)

(assert (=> b!827743 m!770811))

(assert (=> b!827689 d!105053))

(declare-fun d!105055 () Bool)

(assert (=> d!105055 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71296 d!105055))

(declare-fun d!105057 () Bool)

(assert (=> d!105057 (= (array_inv!17699 _keys!976) (bvsge (size!22657 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71296 d!105057))

(declare-fun d!105059 () Bool)

(assert (=> d!105059 (= (array_inv!17700 _values!788) (bvsge (size!22658 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71296 d!105059))

(declare-fun b!827768 () Bool)

(declare-fun e!461230 () Bool)

(declare-fun e!461228 () Bool)

(assert (=> b!827768 (= e!461230 e!461228)))

(declare-fun c!89454 () Bool)

(declare-fun e!461232 () Bool)

(assert (=> b!827768 (= c!89454 e!461232)))

(declare-fun res!564259 () Bool)

(assert (=> b!827768 (=> (not res!564259) (not e!461232))))

(assert (=> b!827768 (= res!564259 (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun b!827769 () Bool)

(declare-fun res!564262 () Bool)

(assert (=> b!827769 (=> (not res!564262) (not e!461230))))

(declare-fun lt!374998 () ListLongMap!8943)

(declare-fun contains!4186 (ListLongMap!8943 (_ BitVec 64)) Bool)

(assert (=> b!827769 (= res!564262 (not (contains!4186 lt!374998 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!827770 () Bool)

(declare-fun e!461231 () ListLongMap!8943)

(assert (=> b!827770 (= e!461231 (ListLongMap!8944 Nil!15940))))

(declare-fun b!827771 () Bool)

(declare-fun e!461233 () ListLongMap!8943)

(assert (=> b!827771 (= e!461231 e!461233)))

(declare-fun c!89452 () Bool)

(assert (=> b!827771 (= c!89452 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827772 () Bool)

(declare-fun call!35955 () ListLongMap!8943)

(assert (=> b!827772 (= e!461233 call!35955)))

(declare-fun bm!35952 () Bool)

(assert (=> bm!35952 (= call!35955 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!827773 () Bool)

(assert (=> b!827773 (= e!461232 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827773 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!105061 () Bool)

(assert (=> d!105061 e!461230))

(declare-fun res!564261 () Bool)

(assert (=> d!105061 (=> (not res!564261) (not e!461230))))

(assert (=> d!105061 (= res!564261 (not (contains!4186 lt!374998 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105061 (= lt!374998 e!461231)))

(declare-fun c!89453 () Bool)

(assert (=> d!105061 (= c!89453 (bvsge #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> d!105061 (validMask!0 mask!1312)))

(assert (=> d!105061 (= (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374998)))

(declare-fun e!461229 () Bool)

(declare-fun b!827774 () Bool)

(assert (=> b!827774 (= e!461229 (= lt!374998 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!827775 () Bool)

(declare-fun isEmpty!651 (ListLongMap!8943) Bool)

(assert (=> b!827775 (= e!461229 (isEmpty!651 lt!374998))))

(declare-fun b!827776 () Bool)

(assert (=> b!827776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> b!827776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22658 _values!788)))))

(declare-fun e!461227 () Bool)

(declare-fun apply!364 (ListLongMap!8943 (_ BitVec 64)) V!25173)

(declare-fun get!11788 (ValueCell!7149 V!25173) V!25173)

(declare-fun dynLambda!974 (Int (_ BitVec 64)) V!25173)

(assert (=> b!827776 (= e!461227 (= (apply!364 lt!374998 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)) (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!827777 () Bool)

(declare-fun lt!375003 () Unit!28363)

(declare-fun lt!375004 () Unit!28363)

(assert (=> b!827777 (= lt!375003 lt!375004)))

(declare-fun lt!375002 () V!25173)

(declare-fun lt!375001 () (_ BitVec 64))

(declare-fun lt!375000 () (_ BitVec 64))

(declare-fun lt!374999 () ListLongMap!8943)

(declare-fun +!1921 (ListLongMap!8943 tuple2!10106) ListLongMap!8943)

(assert (=> b!827777 (not (contains!4186 (+!1921 lt!374999 (tuple2!10107 lt!375000 lt!375002)) lt!375001))))

(declare-fun addStillNotContains!191 (ListLongMap!8943 (_ BitVec 64) V!25173 (_ BitVec 64)) Unit!28363)

(assert (=> b!827777 (= lt!375004 (addStillNotContains!191 lt!374999 lt!375000 lt!375002 lt!375001))))

(assert (=> b!827777 (= lt!375001 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!827777 (= lt!375002 (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!827777 (= lt!375000 (select (arr!22236 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!827777 (= lt!374999 call!35955)))

(assert (=> b!827777 (= e!461233 (+!1921 call!35955 (tuple2!10107 (select (arr!22236 _keys!976) #b00000000000000000000000000000000) (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!827778 () Bool)

(assert (=> b!827778 (= e!461228 e!461229)))

(declare-fun c!89455 () Bool)

(assert (=> b!827778 (= c!89455 (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun b!827779 () Bool)

(assert (=> b!827779 (= e!461228 e!461227)))

(assert (=> b!827779 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun res!564260 () Bool)

(assert (=> b!827779 (= res!564260 (contains!4186 lt!374998 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827779 (=> (not res!564260) (not e!461227))))

(assert (= (and d!105061 c!89453) b!827770))

(assert (= (and d!105061 (not c!89453)) b!827771))

(assert (= (and b!827771 c!89452) b!827777))

(assert (= (and b!827771 (not c!89452)) b!827772))

(assert (= (or b!827777 b!827772) bm!35952))

(assert (= (and d!105061 res!564261) b!827769))

(assert (= (and b!827769 res!564262) b!827768))

(assert (= (and b!827768 res!564259) b!827773))

(assert (= (and b!827768 c!89454) b!827779))

(assert (= (and b!827768 (not c!89454)) b!827778))

(assert (= (and b!827779 res!564260) b!827776))

(assert (= (and b!827778 c!89455) b!827774))

(assert (= (and b!827778 (not c!89455)) b!827775))

(declare-fun b_lambda!11193 () Bool)

(assert (=> (not b_lambda!11193) (not b!827776)))

(declare-fun t!22305 () Bool)

(declare-fun tb!4217 () Bool)

(assert (=> (and start!71296 (= defaultEntry!796 defaultEntry!796) t!22305) tb!4217))

(declare-fun result!7975 () Bool)

(assert (=> tb!4217 (= result!7975 tp_is_empty!15129)))

(assert (=> b!827776 t!22305))

(declare-fun b_and!22379 () Bool)

(assert (= b_and!22375 (and (=> t!22305 result!7975) b_and!22379)))

(declare-fun b_lambda!11195 () Bool)

(assert (=> (not b_lambda!11195) (not b!827777)))

(assert (=> b!827777 t!22305))

(declare-fun b_and!22381 () Bool)

(assert (= b_and!22379 (and (=> t!22305 result!7975) b_and!22381)))

(assert (=> b!827771 m!770797))

(assert (=> b!827771 m!770797))

(assert (=> b!827771 m!770801))

(assert (=> b!827779 m!770797))

(assert (=> b!827779 m!770797))

(declare-fun m!770813 () Bool)

(assert (=> b!827779 m!770813))

(declare-fun m!770815 () Bool)

(assert (=> b!827777 m!770815))

(declare-fun m!770817 () Bool)

(assert (=> b!827777 m!770817))

(declare-fun m!770819 () Bool)

(assert (=> b!827777 m!770819))

(declare-fun m!770821 () Bool)

(assert (=> b!827777 m!770821))

(assert (=> b!827777 m!770821))

(declare-fun m!770823 () Bool)

(assert (=> b!827777 m!770823))

(declare-fun m!770825 () Bool)

(assert (=> b!827777 m!770825))

(declare-fun m!770827 () Bool)

(assert (=> b!827777 m!770827))

(assert (=> b!827777 m!770797))

(assert (=> b!827777 m!770817))

(assert (=> b!827777 m!770823))

(declare-fun m!770829 () Bool)

(assert (=> d!105061 m!770829))

(assert (=> d!105061 m!770769))

(declare-fun m!770831 () Bool)

(assert (=> b!827774 m!770831))

(assert (=> b!827776 m!770797))

(declare-fun m!770833 () Bool)

(assert (=> b!827776 m!770833))

(assert (=> b!827776 m!770821))

(assert (=> b!827776 m!770821))

(assert (=> b!827776 m!770823))

(assert (=> b!827776 m!770825))

(assert (=> b!827776 m!770797))

(assert (=> b!827776 m!770823))

(assert (=> b!827773 m!770797))

(assert (=> b!827773 m!770797))

(assert (=> b!827773 m!770801))

(declare-fun m!770835 () Bool)

(assert (=> b!827769 m!770835))

(assert (=> bm!35952 m!770831))

(declare-fun m!770837 () Bool)

(assert (=> b!827775 m!770837))

(assert (=> b!827691 d!105061))

(declare-fun b!827782 () Bool)

(declare-fun e!461237 () Bool)

(declare-fun e!461235 () Bool)

(assert (=> b!827782 (= e!461237 e!461235)))

(declare-fun c!89458 () Bool)

(declare-fun e!461239 () Bool)

(assert (=> b!827782 (= c!89458 e!461239)))

(declare-fun res!564263 () Bool)

(assert (=> b!827782 (=> (not res!564263) (not e!461239))))

(assert (=> b!827782 (= res!564263 (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun b!827783 () Bool)

(declare-fun res!564266 () Bool)

(assert (=> b!827783 (=> (not res!564266) (not e!461237))))

(declare-fun lt!375005 () ListLongMap!8943)

(assert (=> b!827783 (= res!564266 (not (contains!4186 lt!375005 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!827784 () Bool)

(declare-fun e!461238 () ListLongMap!8943)

(assert (=> b!827784 (= e!461238 (ListLongMap!8944 Nil!15940))))

(declare-fun b!827785 () Bool)

(declare-fun e!461240 () ListLongMap!8943)

(assert (=> b!827785 (= e!461238 e!461240)))

(declare-fun c!89456 () Bool)

(assert (=> b!827785 (= c!89456 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!827786 () Bool)

(declare-fun call!35956 () ListLongMap!8943)

(assert (=> b!827786 (= e!461240 call!35956)))

(declare-fun bm!35953 () Bool)

(assert (=> bm!35953 (= call!35956 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!827787 () Bool)

(assert (=> b!827787 (= e!461239 (validKeyInArray!0 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827787 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!105063 () Bool)

(assert (=> d!105063 e!461237))

(declare-fun res!564265 () Bool)

(assert (=> d!105063 (=> (not res!564265) (not e!461237))))

(assert (=> d!105063 (= res!564265 (not (contains!4186 lt!375005 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105063 (= lt!375005 e!461238)))

(declare-fun c!89457 () Bool)

(assert (=> d!105063 (= c!89457 (bvsge #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> d!105063 (validMask!0 mask!1312)))

(assert (=> d!105063 (= (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375005)))

(declare-fun e!461236 () Bool)

(declare-fun b!827788 () Bool)

(assert (=> b!827788 (= e!461236 (= lt!375005 (getCurrentListMapNoExtraKeys!2494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!827789 () Bool)

(assert (=> b!827789 (= e!461236 (isEmpty!651 lt!375005))))

(declare-fun b!827790 () Bool)

(assert (=> b!827790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(assert (=> b!827790 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22658 _values!788)))))

(declare-fun e!461234 () Bool)

(assert (=> b!827790 (= e!461234 (= (apply!364 lt!375005 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)) (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!827791 () Bool)

(declare-fun lt!375010 () Unit!28363)

(declare-fun lt!375011 () Unit!28363)

(assert (=> b!827791 (= lt!375010 lt!375011)))

(declare-fun lt!375009 () V!25173)

(declare-fun lt!375007 () (_ BitVec 64))

(declare-fun lt!375006 () ListLongMap!8943)

(declare-fun lt!375008 () (_ BitVec 64))

(assert (=> b!827791 (not (contains!4186 (+!1921 lt!375006 (tuple2!10107 lt!375007 lt!375009)) lt!375008))))

(assert (=> b!827791 (= lt!375011 (addStillNotContains!191 lt!375006 lt!375007 lt!375009 lt!375008))))

(assert (=> b!827791 (= lt!375008 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!827791 (= lt!375009 (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!827791 (= lt!375007 (select (arr!22236 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!827791 (= lt!375006 call!35956)))

(assert (=> b!827791 (= e!461240 (+!1921 call!35956 (tuple2!10107 (select (arr!22236 _keys!976) #b00000000000000000000000000000000) (get!11788 (select (arr!22237 _values!788) #b00000000000000000000000000000000) (dynLambda!974 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!827792 () Bool)

(assert (=> b!827792 (= e!461235 e!461236)))

(declare-fun c!89459 () Bool)

(assert (=> b!827792 (= c!89459 (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun b!827793 () Bool)

(assert (=> b!827793 (= e!461235 e!461234)))

(assert (=> b!827793 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22657 _keys!976)))))

(declare-fun res!564264 () Bool)

(assert (=> b!827793 (= res!564264 (contains!4186 lt!375005 (select (arr!22236 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!827793 (=> (not res!564264) (not e!461234))))

(assert (= (and d!105063 c!89457) b!827784))

(assert (= (and d!105063 (not c!89457)) b!827785))

(assert (= (and b!827785 c!89456) b!827791))

(assert (= (and b!827785 (not c!89456)) b!827786))

(assert (= (or b!827791 b!827786) bm!35953))

(assert (= (and d!105063 res!564265) b!827783))

(assert (= (and b!827783 res!564266) b!827782))

(assert (= (and b!827782 res!564263) b!827787))

(assert (= (and b!827782 c!89458) b!827793))

(assert (= (and b!827782 (not c!89458)) b!827792))

(assert (= (and b!827793 res!564264) b!827790))

(assert (= (and b!827792 c!89459) b!827788))

(assert (= (and b!827792 (not c!89459)) b!827789))

(declare-fun b_lambda!11197 () Bool)

(assert (=> (not b_lambda!11197) (not b!827790)))

(assert (=> b!827790 t!22305))

(declare-fun b_and!22383 () Bool)

(assert (= b_and!22381 (and (=> t!22305 result!7975) b_and!22383)))

(declare-fun b_lambda!11199 () Bool)

(assert (=> (not b_lambda!11199) (not b!827791)))

(assert (=> b!827791 t!22305))

(declare-fun b_and!22385 () Bool)

(assert (= b_and!22383 (and (=> t!22305 result!7975) b_and!22385)))

(assert (=> b!827785 m!770797))

(assert (=> b!827785 m!770797))

(assert (=> b!827785 m!770801))

(assert (=> b!827793 m!770797))

(assert (=> b!827793 m!770797))

(declare-fun m!770839 () Bool)

(assert (=> b!827793 m!770839))

(declare-fun m!770841 () Bool)

(assert (=> b!827791 m!770841))

(declare-fun m!770843 () Bool)

(assert (=> b!827791 m!770843))

(declare-fun m!770845 () Bool)

(assert (=> b!827791 m!770845))

(assert (=> b!827791 m!770821))

(assert (=> b!827791 m!770821))

(assert (=> b!827791 m!770823))

(assert (=> b!827791 m!770825))

(declare-fun m!770847 () Bool)

(assert (=> b!827791 m!770847))

(assert (=> b!827791 m!770797))

(assert (=> b!827791 m!770843))

(assert (=> b!827791 m!770823))

(declare-fun m!770849 () Bool)

(assert (=> d!105063 m!770849))

(assert (=> d!105063 m!770769))

(declare-fun m!770851 () Bool)

(assert (=> b!827788 m!770851))

(assert (=> b!827790 m!770797))

(declare-fun m!770853 () Bool)

(assert (=> b!827790 m!770853))

(assert (=> b!827790 m!770821))

(assert (=> b!827790 m!770821))

(assert (=> b!827790 m!770823))

(assert (=> b!827790 m!770825))

(assert (=> b!827790 m!770797))

(assert (=> b!827790 m!770823))

(assert (=> b!827787 m!770797))

(assert (=> b!827787 m!770797))

(assert (=> b!827787 m!770801))

(declare-fun m!770855 () Bool)

(assert (=> b!827783 m!770855))

(assert (=> bm!35953 m!770851))

(declare-fun m!770857 () Bool)

(assert (=> b!827789 m!770857))

(assert (=> b!827691 d!105063))

(declare-fun condMapEmpty!24328 () Bool)

(declare-fun mapDefault!24328 () ValueCell!7149)

(assert (=> mapNonEmpty!24322 (= condMapEmpty!24328 (= mapRest!24322 ((as const (Array (_ BitVec 32) ValueCell!7149)) mapDefault!24328)))))

(declare-fun e!461245 () Bool)

(declare-fun mapRes!24328 () Bool)

(assert (=> mapNonEmpty!24322 (= tp!47020 (and e!461245 mapRes!24328))))

(declare-fun b!827800 () Bool)

(declare-fun e!461246 () Bool)

(assert (=> b!827800 (= e!461246 tp_is_empty!15129)))

(declare-fun mapNonEmpty!24328 () Bool)

(declare-fun tp!47029 () Bool)

(assert (=> mapNonEmpty!24328 (= mapRes!24328 (and tp!47029 e!461246))))

(declare-fun mapRest!24328 () (Array (_ BitVec 32) ValueCell!7149))

(declare-fun mapKey!24328 () (_ BitVec 32))

(declare-fun mapValue!24328 () ValueCell!7149)

(assert (=> mapNonEmpty!24328 (= mapRest!24322 (store mapRest!24328 mapKey!24328 mapValue!24328))))

(declare-fun mapIsEmpty!24328 () Bool)

(assert (=> mapIsEmpty!24328 mapRes!24328))

(declare-fun b!827801 () Bool)

(assert (=> b!827801 (= e!461245 tp_is_empty!15129)))

(assert (= (and mapNonEmpty!24322 condMapEmpty!24328) mapIsEmpty!24328))

(assert (= (and mapNonEmpty!24322 (not condMapEmpty!24328)) mapNonEmpty!24328))

(assert (= (and mapNonEmpty!24328 ((_ is ValueCellFull!7149) mapValue!24328)) b!827800))

(assert (= (and mapNonEmpty!24322 ((_ is ValueCellFull!7149) mapDefault!24328)) b!827801))

(declare-fun m!770859 () Bool)

(assert (=> mapNonEmpty!24328 m!770859))

(declare-fun b_lambda!11201 () Bool)

(assert (= b_lambda!11195 (or (and start!71296 b_free!13419) b_lambda!11201)))

(declare-fun b_lambda!11203 () Bool)

(assert (= b_lambda!11197 (or (and start!71296 b_free!13419) b_lambda!11203)))

(declare-fun b_lambda!11205 () Bool)

(assert (= b_lambda!11193 (or (and start!71296 b_free!13419) b_lambda!11205)))

(declare-fun b_lambda!11207 () Bool)

(assert (= b_lambda!11199 (or (and start!71296 b_free!13419) b_lambda!11207)))

(check-sat (not b!827775) (not b_lambda!11205) (not b!827740) (not b!827769) (not b!827730) (not bm!35952) b_and!22385 (not b!827779) (not b!827788) (not b!827771) (not b!827729) (not b_lambda!11203) (not b!827777) (not b!827790) (not d!105061) (not bm!35949) (not b!827743) (not b!827793) (not b!827783) tp_is_empty!15129 (not b!827789) (not b!827776) (not b!827731) (not b!827773) (not b_next!13419) (not bm!35953) (not mapNonEmpty!24328) (not b_lambda!11201) (not b!827774) (not b!827791) (not b_lambda!11207) (not b!827787) (not d!105063) (not bm!35946) (not b!827785))
(check-sat b_and!22385 (not b_next!13419))
